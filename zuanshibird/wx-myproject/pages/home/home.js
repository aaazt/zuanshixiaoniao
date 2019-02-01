// pages/home/home.js
Page({
  handle1:function(e){
    var id=e.target.dataset.id;
    wx.request({
      url: 'http://127.0.0.1:3000/imageselect',
      data: {id:id},
      
      success: function(res) {
        console.log(res.data.data);
      },
      
    })
    console.log(e.target.datadet)
    wx.navigateTo({
      url: '/pages/zuanshi/zuanshi',
      success:(res)=>{
        console.log(res.data);
      },
      
    })
  },

  /**
   * 页面的初始数据
   */
  data: {
    list: [],
      
   
    navlist: [],
     
    
    picturelist: [
      /*{ id: 1, img_url: "http://127.0.0.1:3000/img-my/banner/banner-02.jpg" },
      { id: 2, img_url: "http://127.0.0.1:3000/img-my/banner/banner-04.jpg"},
      { id: 3, img_url: "http://127.0.0.1:3000/img-my/nav/nav_show-02.jpg"}, 
      { id: 4, img_url: "http://127.0.0.1:3000/img-my/nav/nav_show-04.jpg"},
      { id: 5, img_url: "http://127.0.0.1:3000/img-my/nav/nav_show-05.jpg"}*/


    ],
    hotsinglelist: [
      /*{ id: 1, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-022.jpg",title: "复古甜心",price:"￥2090" },
      { id: 2, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-01.jpg", title: "莹雪（男）", price: "￥5399" },
      { id: 3, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-0111.jpg", title: "倾慕恋", price: "￥2480" },
      { id: 4, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-080.jpg", title: "微光镜影", price: "￥5399" },
      { id: 5, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-016.jpg", title: "流年", price: "￥7500" },
      { id: 6, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-017.jpg", title: "筑梦", price: "￥1199" },
      { id: 7, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-035.jpg", title: "爱河", price: "￥3480" },
      { id: 8, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-081.jpg", title: "梵希之恋", price: "￥2200.00" },
      { id: 9, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-021.jpg", title: "花冠", price: "￥4350.00" },
      { id: 10, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-021.jpg", title: "微光星辰", price: "￥1899" },
      { id: 12, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-048.jpg", title: "蝶翼", price: "￥5399" },
      { id: 12, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-048.jpg", title: "蝶翼", price: "￥5399" },
      { id: 13, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-049.jpg", title: "心仪", price: "￥2000" },
      { id: 14, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-0135.jpg", title: "微光萤时", price: "￥41720"},
      { id: 15, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-0134.jpg", title: "流年", price: "￥11460" },
      { id: 16, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-094.jpg", title: "恋人絮语", price: "￥980" },
      { id: 17, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-095.jpg", title: "邢云莲", price: "￥5399" },
      { id: 18, img_url: "http://127.0.0.1:3000/img-my/product/lg/clg-098.jpg", title: "雪漫", price: "￥1710" },*/


    ]
  
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
     /*向后台发送请求轮播图的图片 */
    wx.request({
      url: 'http://127.0.0.1:3000/imagelist',
      data:{},
      success:(res)=> {
        console.log(res.data);
        this.setData({
          list:res.data.data
        })
      }
    })
    /*向后台发送请求首页四张钻石的图片 */
    wx.request({
      url: 'http://127.0.0.1:3000/imagenav',
      data: {},
      success: (res) => {
        console.log(res.data);
        this.setData({
          navlist: res.data.data
        })
      }
    })
    /*向后台发送请求，请求系列产品的5张图片 */
    wx.request({
      url: 'http://127.0.0.1:3000/imagexilie',
      data: {},
      success: (res) => {
        console.log(res.data);
        this.setData({
          picturelist: res.data.data
        })
      }
    })
    /*向后台发送请求，请求热卖单品的图片 */
    wx.request({
      url: 'http://127.0.0.1:3000/imagehostsingle',
      data: {},
      success: (res) => {
        console.log(res.data);
        this.setData({
          hotsinglelist: res.data.data
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