const app=getApp()
Page({
  data: {
     //判断小程序的API，回调，参数，组件等是否在当前版本可用。
    canIUse: wx.canIUse('button.open-type.getUserInfo')
  },
  onLoad: function() {
    // 查看是否授权
    wx.getSetting({
      success: function(res){
        if (res.authSetting['scope.userInfo']) {
          wx.getUserInfo({
            success: function(res) {
              app.globalData.userInfo=res.userInfo;
              console.log( app.globalData.userInfo)
              //用户已经授权过
              wx.switchTab({
                url: '/pages/home/home'
                });
            }
          })
        }
      }
    })
  },
  bindGetUserInfo: function(e) {
    if (e.detail.userInfo){
      // 用户按了允许授权按钮
      app.globalData.userInfo=e.detail.userInfo;
              console.log(e.detail.userInfo)
              wx.switchTab({
                url: '/pages/home/home'
                }); 
    } else {
      return;
    }
  }
})