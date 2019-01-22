// pages/home/home.js
const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  handleJump(e){  
    if (e.target.dataset.id == 1) {
      wx.navigateTo({
        url: '/pages/gallery/gallery',
      })
    }
    if(e.target.dataset.id==2){
      wx.navigateTo({
        url:"/pages/everyDay/everyDay",
      })
    }
      if(e.target.dataset.id==3){
        wx.navigateTo({
          url: '/pages/flowers/flowers',
        })
      }
     
  
  },
  data: {
    list: [],
    navlist:[
      {id:1,img_url: app.globalData.baseUrl+"icons/grid-1.png",title:'壁纸'},
      {id:2,img_url: app.globalData.baseUrl+"icons/grid-3.png",title:'美文'},
      {id:3,img_url: app.globalData.baseUrl+"icons/grid-6.png",title:'鲜花'}]
    },
    /**
     * 注册
     */
    userLogin(){
      wx.request({
        url:app.globalData.baseUrl+'login',
        data:{
          openid:app.globalData.openid,
          nickname:app.globalData.userInfo.nickName,
          avatar:app.globalData.userInfo.avatarUrl
        },
        method:'POST',
        header:{
          'Content-Type':'application/x-www-form-urlencoded'
        },
        success:function(res){
          console.log(res)
        }
    })
    },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.userLogin();
    if(!app.globalData.userInfo){
      wx.redirectTo({
        url: '/pages/authorize/authorize',
      })
    }
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