// pages/profile/profile.js
//获取应用实例
const app = getApp();
// 自定义标签
var iconPath = "../static/icons/"
var tabs = [
  {
    "icon": iconPath + "mark.png",
    "iconActive": iconPath + "markHL.png",
    "title": "日记"
  },
  {
    "icon": iconPath + "collect.png",
    "iconActive": iconPath + "collectHL.png",
    "title": "收藏"
  },
  {
    "icon": iconPath + "like.png",
    "iconActive": iconPath + "likeHL.png",
    "title": "喜欢"
  },
  {
    "icon": iconPath + "more.png",
    "iconActive": iconPath + "moreHL.png",
    "title": "更多"
  }
]

Page({

/**
* 控制背景音乐切换 
*/
// onMusicTap(){
//   var isp=this.data.isPlaying;
//   if(isp){
//     wx.pauseBackgroundAudio();
//     this.setData({
//       isPlaying:false
//     })
//   } else {
//     wx.playBackgroundAudio({
//       dataUrl: app.globalData.baseUrl+'bg.mp3'
//     })
//     this.setData({
//       isPlaying: true
//     })
//   }
// },

  /**
   * 点击tab项事件
   */ 
  touchTab(event) {
    var tabIndex = event.currentTarget.id;  
    this.setData({
        highLightIndex: tabIndex
    })
    if(tabIndex==0){
      wx.navigateTo({
        url:"/pages/article/article"
      })
    }
  },

/** 
 * 点击新建日记按钮
 */ 
touchAdd() {
  wx.switchTab({
    url: "/pages/addArticle/addArticle"
  })
},
/**
 * 跳转到我的日记
 */
toSpace(){
   wx.navigateTo({
     url: '/pages/article/article'
   }) 
},
  /**
   * 页面的初始数据
   */
  data: {
    /*------------tab---------------- */
    tabs: tabs,
    highLightIndex:0 , //默认显示第一个
    avatarImg:'',
    nickName:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function () {
      var info=app.globalData.userInfo;
        this.setData({
          avatarImg:info.avatarUrl,
          nickName:info.nickName
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
  onShow: function() {
  
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