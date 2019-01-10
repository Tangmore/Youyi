// pages/floDetail/floDetail.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    // id:0
    dataLlist:[],
    bannerList:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
       var id=options.id;
      //  this.setDate({
      //    id:id
      //  })
      wx.request({
        url: 'http://127.0.0.1:3003/getFloDetail',
       methods:'get',
       data:{id:id},
        success: function(res) {
           var data=res.data;
           for(var item of data){
             var img=item.img.split('&');
             this.setData({
               bannerList: img
             })
           }
           
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