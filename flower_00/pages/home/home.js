// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  handleJump(e){
      if(e.target.dataset.id==2){
        wx.navigateTo({
          url: '/pages/shoplist/shoplist',
        })
      }

    if (e.target.dataset.id == 3) {
      wx.navigateTo({
        url: '/pages/plant/plant',
      })
    }
  },
  data: {
    list: [
      { id: 1, img_url: "http://127.0.0.1:3003/img/banner/banner1.png" },
      { id: 2, img_url: "http://127.0.0.1:3003/img/banner/banner01.png" },
      { id: 3, img_url: "http://127.0.0.1:3003/img/banner/banner03.png" }
     ],

      navlist:[
      {id:1,img_url: "http://127.0.0.1:3003/icons/grid-01.png",title:'首页'},
      {id:2,img_url: "http://127.0.0.1:3003/icons/grid-02.png",title:'鲜花'},
      {id:3,img_url: "http://127.0.0.1:3003/icons/grid-03.png",title:'绿植'},
      {id:4,img_url: "http://127.0.0.1:3003/icons/grid-04.png",title:'礼品'},
      { id: 5, img_url: "http://127.0.0.1:3003/icons/grid-05.png", title:'节日鲜花'},
      {id:6,img_url: "http://127.0.0.1:3003/icons/grid-06.png",title:'花语大全'}],
      
      btnList:[{ id: 1, img_url: "http://127.0.0.1:3003/img/link-01.png" },
      { id: 2, img_url: "http://127.0.0.1:3003/img/link-02.png" }]
      },
  

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
  
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