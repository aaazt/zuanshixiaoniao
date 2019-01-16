// pages/car/car.js
Page({

  //选中商品功能
  select:function(e){
    var index=e.target.dataset.index;
    var sum = this.data.productList[0].price
    console.log(sum);
    this.setData({
      sum:sum
    })
     
      
      },
 


//删除商品功能
  del:function(e){
    var cid=e.target.dataset.cid;
    //console.log(cid);
    wx.showModal({
      title: '提示',
      content: '确定要删除吗？',
      success: (res) => {
        if (res.confirm) {
          wx.request({
            url: 'http://127.0.0.1:3000/delCart',
            data: { cid: cid },
            success: (res) => {
              console.log(res);
              this.setData({
                msg: res.data.msg
              });

              wx.showToast({
                title: this.data.msg,
                icon: 'success',
                duration: 1500
                });
              //删除后删除掉页面上的商品
              wx.request({
                url: 'http://127.0.0.1:3000/selectcar',
                data: {},
                success: (res) => {
                  //console.log("获取数据成功")
                 // console.log(res);
                  this.setData({
                    productList: res.data.data
                  })
                }
              })


            }
              })
          }
          }
       })

  },

  /**
   * 页面的初始数据
   */
  data: {
    sum:'',
    msg:'',
    productList:[]
  
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //根据用户uid发送请求查询该用户的购物车并渲染到页面
    wx.request({
      url: 'http://127.0.0.1:3000/selectcar',
      data:{},
      success:(res)=>{
        //console.log("获取数据成功")
        console.log(res);
        this.setData({
          productList:res.data.data
        })
      }
    })
   
  
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    wx.request({
      url: 'http://127.0.0.1:3000/selectcar',
      data: {},
      success: (res) => {
        //console.log("获取数据成功")
        console.log(res);
        this.setData({
          productList: res.data.data
        })
      }
    })

  
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  }
})