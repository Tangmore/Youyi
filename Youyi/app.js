//app.js
App({
  onLaunch: function () {
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
            success:(res)=> {
                console.log(res.data)
                var openid=res.data.openid;
                this.globalData.openid=openid;
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
  onShareAppMessage: function (options){
    var shareObj={
        title:'动态',
        path:'/pages/article/article',
        imageUrl:app.globalData.baseUrl+"img/gallery/101.jpg",
        success:(res)=>{
          if(res.errMsg=="shareAppMessage:ok"){
            wx.showToast({
              title:'转发成功',
              icon: 'none',
              duration: 1000
            })
          }
        },
        fail:()=>{
           if(res.errMsg=="shareAppMessage:fail cancel"){
            wx.showToast({
              title:'取消转发',
              icon: 'none',
              duration: 1000
            })
           }else if(res.errMsg=="shareAppMessage:fail"){
            wx.showToast({
              title:'转发失败',
              icon: 'none',
              duration: 1000
            })
           }
        }
   }
   if(options.from=='button'){
     var id=options.target.dataset.id;
     console.log(id)
     shareObj.path='/pages/articleDetail/articleDetail?id='+id
   }
    return shareObj;
  },
  globalData: {
    userInfo: null,
    openid:'',
    baseUrl: 'http://148.70.65.234:3003/'
    // baseUrl: 'http://127.0.0.1:3003/'
  }
})
