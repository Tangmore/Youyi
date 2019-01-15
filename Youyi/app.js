//app.js
App({
  onLaunch: function () {
    // 展示本地存储能力
    // var logs = wx.getStorageSync('logs') || []
    // logs.unshift(Date.now())
    // wx.setStorageSync('logs', logs)

    // 登录
    wx.login({
      success: res => {
        // 发送 res.code 到后台换取 openId, sessionKey, unionId
          console.log(res.code)
          wx.request({
            url: this.globalData.baseUrl+'getInfo',
            data:{code:res.code},
            header: {
              'Content-Type': 'application/json'
            },
            success: function(res) {
                console.log(res.data)
         
            },
            fail: function(res) {
              console.log(res)
            },
            complete: function(res) {
              console.log(res)
            }
          })
      }
    })
   
  },
  globalData: {
    userInfo: null,
    baseUrl: 'http://148.70.65.234:3003/'
    // baseUrl: 'http://127.0.0.1:3003/'
  }
})