//1:加载模块 express pool
const express = require("express");
const pool = require("./pool");
//2:创建express对象
var app = express();
//2.1:加载跨域访问组件
const cors = require("cors");
//2.2:配置允许脚手架访问程序
app.use(cors({
    origin:["http://127.0.0.1:4200",
    "http://localhost:4200"],
    credentials:true
}));
//7.1:node.js app.js
//   加载第三方模块 express-session
const session = require("express-session")
//7.2:对模块配置   
app.use(session({
  secret:"128位随机字符",    //安全字符串
  resave:false,             //请求保存
  saveUninitialized:true,   //初始化保存
  cookie:{
    maxAge:1000 * 60 * 60 * 24 
  }
}));


//3:指定监听端口3000
app.listen(3000);
//4:指定静态目录 public
// __dirname 当前程序所属目录绝对路径 
//app.js vue_app_server
app.use(express.static(__dirname+"/public"))



//功能二:新闻分页显示
app.get("/newslist",(req,res)=>{
 //1:获取参数
 var pno = req.query.pno;
 var pageSize = req.query.pageSize;
 //2:设置默认值 1 7
 if(!pno){pno = 1}
 if(!pageSize){pageSize=7}
 //3:创建正则表达式验证用户输入验证
 var reg = /^[0-9]{1,3}$/;
 //4:如果错出停止函数运行
 if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
 }
 if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
 }

 var progress = 0;
 var obj = {code:1};
 //5:创建sql1 查询总记录数   严格区分大小写
 var sql = "SELECT count(id) AS c FROM xz_news";
 pool.query(sql,(err,result)=>{
   if(err)throw err;
   var pageCount = Math.ceil(result[0].c/pageSize);
   progress+=50;
   obj.pageCount = pageCount;
   if(progress==100){
     res.send(obj);
   }
 });
 //6:创建sql2 查询当前页内容 严格区分大小写
 var sql =" SELECT id,title,ctime,img_url,";
     sql+=" point,content";
     sql+=" FROM xz_news";
     sql+=" LIMIT ?,?";
 var offset = parseInt((pno-1)*pageSize);
     pageSize = parseInt(pageSize);
 pool.query(sql,[offset,pageSize],(err,result)=>{
   if(err)throw err;
   progress+=50;
   obj.data=result;
   if(progress==100){
     res.send(obj);
   }
 })
 //7:返回结果
});  


//功能三:查找一条新闻详细信息
app.get("/newsinfo",(req,res)=>{
   //1:参数 id 
   var id = req.query.id;
   var sql = " SELECT id,title,content,";
       sql +=" point,ctime";
       sql +=" FROM xz_news WHERE id = ?";
   //3:json {code:1,data:[{}]}
   pool.query(sql,[id],(err,result)=>{
       if(err)throw err;
       res.send({code:1,data:result});
   });
});


//功能四:分页查找指定新闻下评论列表
app.get("/getcomment",(req,res)=>{
 //1:获取参数
 var pno = req.query.pno;  //页码
 var pageSize = req.query.pageSize;//页大小
 var nid = req.query.nid; //新闻id
 //2:设置默认值 1 7
 if(!pno){pno = 1}
 if(!pageSize){pageSize=7}
 //3:创建正则表达式验证用户输入验证
 var reg = /^[0-9]{1,3}$/;
 //4:如果错出停止函数运行
 if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
 }
 if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
 }
 var progress = 0;
 var obj = {code:1};
 obj.uname = req.session.uname;
 //11:49
 //5:创建sql1 查询总记录数   严格区分大小写
 var sql = "SELECT count(id) AS c FROM xz_comment WHERE nid = ?";
 nid = parseInt(nid);
 pool.query(sql,[nid],(err,result)=>{
   if(err)throw err;
   var pageCount = Math.ceil(result[0].c/pageSize);
   progress+=50;
   obj.pageCount = pageCount;
   if(progress==100){
     res.send(obj);
   }
 });
 //6:创建sql2 查询当前页内容 严格区分大小写
 var sql =" SELECT id,user_name,ctime,";
     sql+=" content";
     sql+=" FROM xz_comment";
     sql+=" WHERE nid = ?";
     sql+=" ORDER BY id DESC";
     sql+=" LIMIT ?,?";
 var offset = parseInt((pno-1)*pageSize);
     pageSize = parseInt(pageSize);
 pool.query(sql,[nid,offset,pageSize],(err,result)=>{
   if(err)throw err;
   progress+=50;
   obj.data=result;
   if(progress==100){
     res.send(obj);
   }
 })
});

//功能五:发表评论
//引入第三方模块:bodyParser 处理post请求
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({
  extended:false
}));
app.post("/addComment",(req,res)=>{
  //1:获取3个参数
  //需要第三方模块支持 bodyParser
  var nid = req.body.nid;
  var content = req.body.content;
  var user_name = req.session.uname;
  //2:创建sql语句
  var sql  =" INSERT INTO `xz_comment`(`id`,";
      sql +=" `nid`, `user_name`, `ctime`,";
      sql +=" `content`) VALUES";
      sql +=" (null,?,?,now(),?)";
  nid = parseInt(nid);
  pool.query(sql,[nid,user_name,content],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:"评论发表成功"});
  });
  //3:返回添加结果
})


//功能六:查询商品列表
app.get("/goodsList",(req,res)=>{
  var obj = [];
  obj.push({id:1,title:"小辣椒",old:1999,now:99,img_url:"http://127.0.0.1:3000/img/banner1.png"});
  obj.push({id:2,title:"中辣椒",old:2999,now:99,img_url:"http://127.0.0.1:3000/img/banner2.png"});
  obj.push({id:3,title:"大辣椒",old:3999,now:99,img_url:"http://127.0.0.1:3000/img/banner3.png"});
  res.send(obj);

});


//功能七:用户登录
app.get("/login",(req,res)=>{
   //1:获取参数 uname,upwd
   var uname = req.query.uname;
   var upwd = req.query.upwd;
   //2:创建正则表达式验证
   //3:创建sql
   var sql = "SELECT count(id) as c";
   sql +=" FROM xz_login";
   sql +=" WHERE uname = ? AND upwd = md5(?)";
   pool.query(sql,[uname,upwd],(err,result)=>{
    if(err)throw err;
    var obj = result[0].c;
    if(obj == 1){
     //7.3:将用户名保存session对象中
     req.session.uname = uname;
     res.send({code:1,msg:"登录成功"});
    }else{
     res.send({code:-1,msg:"用户名或密码有误"}) 
     }  
   });
   //4:返回结果
})

//功能八:加入购物车
app.get("/addCart",(req,res)=>{
  var uid = req.query.uid;
  var pid = req.query.pid;
  var c = req.query.count;
  var sql  =" INSERT INTO `xz_shoppingcart_item`(`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES (null,?,?,?,0)"
  pool.query(sql,[uid,pid,c],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:"购物车添加成功"});
  });
})

//功能九:查询购物详细信息
app.get("/getCarts",(req,res)=>{
  var uid = req.query.uid;
  var sql =" SELECT c.iid,c.user_id,c.count";
  sql +=" ,p.price,p.lname";
  sql +=" FROM xz_laptop p,";
  sql +=" xz_shoppingcart_item c";
  sql +=" WHERE p.lid = c.product_id";
  sql +=" AND c.user_id = ?";
  uid = parseInt(uid);
  pool.query(sql,[uid],(err,result)=>{
   if(err)throw err;
   res.send({code:1,data:result});
  });
  //4:返回结果
})

//功能十:更新购物数量
app.get("/updateCart",(req,res)=>{
   //1:参数 iid/count
   var iid = req.query.iid;
   var count = req.query.count;
   var sql = " UPDATE xz_shoppingcart_item";
   sql += " SET count = ? WHERE iid = ?";
   iid = parseInt(iid);
   count = parseInt(count);
   pool.query(sql,[count,iid],(err,result)=>{
        if(err)throw err;
        if(result.affectedRows > 0){
         res.send({code:1,msg:"数量修改成功"});
        }else{
         res.send({code:-1,msg:"数量修改失败"});
        }
   })
})

//功能十一:搜索商品
app.get("/search",(req,res)=>{
   //如果搜索参数太多
   //var color = req.query.color;
   //var are = req.query.are;
   //var sql = "SELECT ....";
   //if(color != undefined){
   //sql += "AND color="+color;
   //}
   //if(are != undefined){
   //  sql+"AND are = "+color
   //}


   //商品名称关键字
   var keyword = req.query.keyword;
   var low = req.query.low;
   var high = req.query.high;
   var sql = " SELECT lid,lname,price";
   sql +=" FROM xz_laptop";
   sql +=" WHERE lname LIKE ?";
   sql +=" AND price >= ?";
   sql +=" AND price <= ?";
   low = parseFloat(low);
   high = parseFloat(high);
   pool.query(sql,[`%${keyword}%`,low,high],(err,result)=>{
       if(err)throw err;
       if(result.length == 0){
         res.send({code:-1,msg:"您搜索商品不存在噢!"});
       }else{
         res.send({code:1,data:result})
       }
   });
})
//第十二功能:返回用户信息列表
app.get("/users",(req,res)=>{
   var rows = [
      {id:1,name:"tom"},
      {id:2,name:"jerry"},
      {id:3,name:"dd"},
    ];
    var id = req.query.id;
    console.log(id);
    res.send(rows);
})
//第十三功能:删除指定用户
app.get("/delUser",(req,res)=>{
    var id = req.query.id;
    res.send({code:1,msg:"删除成功"+id});
})


//第十四功能:分页显示美食列表
//1:创建表
// xz_shop [id;img_url;name;addr;tel;mtime,star]
app.get("/findshops",(req,res)=>{
  //参数: pno 当前页码1 2 pageSize 每个大小
  //sql: 
  //  -总记录数->总页数
  //  -当前页内容
  //json
 //1:获取参数
 var pno = req.query.pno;          //页码
 var pageSize = req.query.pageSize;//页大小

 //2:设置默认值 1 7
 if(!pno){pno = 1}
 if(!pageSize){pageSize=7}
 //3:创建正则表达式验证用户输入验证
 var reg = /^[0-9]{1,3}$/;
 //4:如果错出停止函数运行
 if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
 }
 if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
 }
 var progress = 0;
 var obj = {code:1};
 obj.uname = req.session.uname;
 //5:创建sql1 查询总记录数   严格区分大小写
 var sql = "SELECT count(id) AS c FROM xz_shop";
 pool.query(sql,(err,result)=>{
   if(err)throw err;
   var pageCount = Math.ceil(result[0].c/pageSize);
   progress+=50;
   obj.pageCount = pageCount;
   if(progress==100){
     res.send(obj);
   }
 });
 //6:创建sql2 查询当前页内容 严格区分大小写
 var sql =" SELECT id,name,addr,";
     sql+=" tel,mtime,star,img_url";
     sql+=" FROM xz_shop";
     sql+=" LIMIT ?,?";
 var offset = parseInt((pno-1)*pageSize);
     pageSize = parseInt(pageSize);
 pool.query(sql,[offset,pageSize],(err,result)=>{
   if(err)throw err;
   progress+=50;
   obj.data=result;
   if(progress==100){
     res.send(obj);
   }
 })
});

//第十五个功能:添加商品
app.get("/addProduct",(req,res)=>{
  var pno = req.query.pno;
  var pname = req.query.pname;
  console.log(pno+":"+pname);
  res.send({code:1,msg:"商品添加成功"});
})

//第十六个功能:消息分页显示
app.get("/getMessage",(req,res)=>{
  var pno = req.query.pno;          //页码
  var pageSize = req.query.pageSize;//页大小

 //2:设置默认值 1 7
 if(!pno){pno = 1}
 if(!pageSize){pageSize=2}
 //3:创建正则表达式验证用户输入验证
 var reg = /^[0-9]{1,3}$/;
 //4:如果错出停止函数运行
 if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
 }
 if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
 }
 var progress = 0;
 var obj = {code:1};
 obj.uname = req.session.uname;
 //5:创建sql1 查询总记录数   严格区分大小写
 var sql = "SELECT count(id) AS c FROM xz_message";
 pool.query(sql,(err,result)=>{
   if(err)throw err;
   var pageCount = Math.ceil(result[0].c/pageSize);
   progress+=50;
   obj.pageCount = pageCount;
   if(progress==100){
     res.send(obj);
   }
 });
 //6:创建sql2 查询当前页内容 严格区分大小写
 var sql =" SELECT id,title,desc1,";
     sql+=" ctime,content,img_url";
     sql+=" FROM xz_message";
     sql+=" LIMIT ?,?";
 var offset = parseInt((pno-1)*pageSize);
     pageSize = parseInt(pageSize);
 pool.query(sql,[offset,pageSize],(err,result)=>{
   if(err)throw err;
   progress+=50;
   obj.data=result;
   if(progress==100){
     res.send(obj);
   }
 })
});

//第十七个功能：上传商品图片，名称与参数
const fs = require("fs");
const multer=require("multer");
var upload=multer({dest:"upload/"});
app.post("/upload",upload.single("mypic"),
(req,res)=>{
 //5:获取上传文件大小  拒绝超过2MB文件 (字节)
 var size = req.file.size/1000/1000;
 if(size > 2){
  res.send({code:-1,msg:"上传图片过大 超过2MB"});
  return;
 }
 //4判断上传文件类型  图片
 //image/gif image/png image/jpg  text/css 
 var type = req.file.mimetype;
 var i2 = type.indexOf("image");
 if(i2==-1){
   res.send({code:-2,msg:"上传只能是图片"});
   return;
 }
 //5:创建新文件名 1.jpg  191283874393.jpg
 var src = req.file.originalname;
 var fTime = new Date().getTime();
 var fRand = Math.floor(Math.random()*9999);
 var i3 = src.lastIndexOf(".");
 var suff = src.substring(i3,src.length);
 var des = "./upload/"+fTime+fRand+suff;
 console.log(des);
 //6:将临时文件移动upload目录下
 fs.renameSync(req.file.path,des);
 //7:返回上传成功信息
 //8:将上传图片新名称 ./upload/aaaaa.jpg
 //保存数据库
 res.send({code:1,msg:"图片上传成功"});
});



//功能一:首页轮播图
app.get("/imagelist",(req,res)=>{
   
  var sql="SELECT * FROM bird_index_carousel";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
});
//首页四张钻石图片
app.get("/imagenav",(req,res)=>{
 var sql="SELECT * FROM bird_ring_family";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })

});
//首页里写产品的5张图片接口
app.get("/imagexilie",(req,res)=>{
  var sql="SELECT * FROM bird_index_carousel";
   pool.query(sql,(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   })
 
 });
 //bird_index_product首页商品列表
 app.get("/imagehostsingle",(req,res)=>{
  var sql="SELECT * FROM bird_index_product";
   pool.query(sql,(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   })
 
 });
 //bird_ring_pic钻石页商品图片
 app.get("/imagezuanshi",(req,res)=>{
  var sql="SELECT * FROM bird_ring_pic";
   pool.query(sql,(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   })
 
 });
 //分别跳转进四张钻石图片的接口
 app.get("/imageselect",(req,res)=>{
   var cid=req.query.id;
  var sql="SELECT * FROM bird_ring_family WHERE fid=?";
   pool.query(sql,[cid],(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   })
 
 });
 //钻石页里头部图片
 app.get("/imageheader",(req,res)=>{
  var sql="SELECT * FROM bird_zuanshi_header ";
   pool.query(sql,(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   })
 
 });
 

