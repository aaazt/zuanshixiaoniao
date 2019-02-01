const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.post("/signin",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var sql="select * from xz_user where uname=? and upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) console.log(err);
    if(result.length==1){
      req.session.uid=result[0]["uid"]
      console.log(req.session.uid);
      res.send({
        ok:1,uname:result[0]["uname"]
      });
    }else{
      res.send({ok:0,msg:"用户名或密码错误！"})
    }
  })
})
router.get("/islogin",(req,res)=>{
  if(req.session.uid===undefined)
    res.send({ok:0});
  else
    res.send({ok:1});
})
router.get("/signout",(req,res)=>{
  req.session.uid=undefined;
  res.end();
})
module.exports=router;