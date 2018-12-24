// pages/message/message.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      pno:0,
      pageSize:2,
      pageCount:0,
      list:[]
  },
  loadMore(){
    //如果已经没有下一页 判断
    var hasMore=(this.pno<=this.pageCount)?'true':'false';
    if(!hasMore){return;}
    //获取两个参数
    var pno=this.data.pno+1;
    var pageSize=this.data.pageSize;
    //发送ajax请求数据
    wx.request({
      url: 'http://127.0.0.1:3003/getmessage',
      method:'get',
      data:{pno:pno,pageSize:pageSize},
        //接收返回的数据
      success:(res)=>{
         //拼接数组
        var lists=this.data.list.concat(res.data.data);
            //将数据保存于data  属性中
          this.setData({
              list:lists,
              pno:pno,
              pageCount:res.data.pageCount
          })
         //加载loading动画
          wx.showToast({
            title: '数据加载中...',
            icon:'loading'
          })
            //隐藏加载动画
          setTimeout(function(){
            wx.hideToast();
          },1000)
      }
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
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
    this.loadMore();
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})