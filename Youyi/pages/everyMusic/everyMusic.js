// pages/everyMusic/everyMusic.js
const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
     musicDetailList:[],
     title:'', 
     author:''
  },
  getMusicDetail(id){
    var that=this;
     wx.request({
       url: app.globalData.baseUrl+'musicDetail',
      //  data:{id},
       data:{id:id},
       success:(res)=>{
         var obj=res.data.detail
        //  console.log(obj)
        that.setData({
          title:obj.title, 
          author:obj.author
        })
        console.log(that.data.article) 
       }
     })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
   var id=options.id;
   this.getMusicDetail(id);
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