// pages/home/home.js
const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  handleJump(e){
      if(e.target.dataset.id==1){
        wx.navigateTo({
          url: '/pages/flowers/flowers',
        })
      }

    if (e.target.dataset.id == 2) {
      wx.navigateTo({
        url: '/pages/gallery/gallery',
      })
    }

  },
  data: {
    list: [],
    navlist:[
      {id:1,img_url: app.globalData.baseUrl+"icons/grid-1.png",title:'鲜花'},
      {id:2,img_url: app.globalData.baseUrl+"icons/grid-3.png",title:'画廊'},
      {id:3,img_url: app.globalData.baseUrl+"icons/grid-4.png",title:'美文'},
      {id:4,img_url: app.globalData.baseUrl+"icons/grid-5.png", title:'网址'},
      {id:5,img_url: app.globalData.baseUrl+"icons/grid-6.png",title:'论坛'},
      {id:6,img_url: app.globalData.baseUrl+"icons/grid-2.png", title: '...' }]
    },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.navigateTo({
      url: '/pages/authorize/authorize',
    })
  
    wx.request({
      url: app.globalData.baseUrl+'banner',
      methods: 'get',
      success: (res)=> {
          // console.log(res)
          this.setData({
            list:res.data
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