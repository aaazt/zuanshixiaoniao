// pages/zuanshidetail/zuanshidetail.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    zuanshidetaillist: [
      /*{ id: 1, img_url: "http://127.0.0.1:3000/img-my/banner/banner-02.jpg" },
      { id: 2, img_url: "http://127.0.0.1:3000/img-my/banner/banner-04.jpg" },
      { id: 3, img_url: "http://127.0.0.1:3000/img-my/nav/nav_show-02.jpg" },
      { id: 4, img_url: "http://127.0.0.1:3000/img-my/nav/nav_show-04.jpg" },
      { id: 5, img_url: "http://127.0.0.1:3000/img-my/nav/nav_show-05.jpg" }*/


    ]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    /*钻石详情页的图片 */
    wx.request({
      url: 'http://127.0.0.1:3000/imagexilie',
      data: '',
     
      success:(res)=>{
        console.log(res.data);
        this.setData({
          zuanshidetaillist:res.data.data 
        })
      },
     
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