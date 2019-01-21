const app=getApp()
Page({
  data: {
     //判断小程序的API，回调，参数，组件等是否在当前版本可用。
    canIUse: wx.canIUse('button.open-type.getUserInfo')
  },
  onLoad: function() {
    // 查看是否授权
    wx.getSetting({
      success(res){
        if (res.authSetting['scope.userInfo']) {
          //已经授权 可以直接调用getUserInfo
          wx.getUserInfo({
            success(res) { 
              //用户已经授权过
              app.globalData.userInfo=res.userInfo;
              wx.switchTab({
                url: '/pages/home/home',
              })
            }
          })
        }
      }
    })
  },
  bindGetUserInfo: function(e) {
    if (e.detail.userInfo){
     
      // 用户按了允许授权按钮   
       console.log(e.detail.userInfo)
          wx.switchTab({
            url: '/pages/home/home'
          })
    }
  }
})