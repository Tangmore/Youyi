// pages/everyDay/everyDay.js
const util=require('../../utils/util.js');
const currentdate = util.getNowFormatDate()[0];
Page({

  /**
   * 页面的初始数据
   */
  data: {
   // 日期
   dateValue:currentdate,
    contentObj:[]
  },
  /**
   * 获取当日文章
   */
  getEveryDay(){
    var that=this;
    var dateValue=that.data.dateValue.split('-').join('');
    wx.request({
      url:'https://interface.meiriyiwen.com/article/day',
      data:{
        date:dateValue
      },
      success:(res)=> { 
        var obj=res.data.data;
        //处理内容
        var content=obj.content;
        content= content.replace(/^<p>/g, '')
        content= content.replace(/<\/p>$/g, '')
        content= content.replace(/<\/p><p>/g, '\n&emsp;&emsp;')
        // console.log(content)
        obj.content=content;
        var contentObj=that.data.contentObj;
        contentObj[0]=obj;
        that.setData({contentObj})
        // console.log(this.data.contentObj)
      }
    })
  },
  bindDateChange(event) {
    this.setData({
      dateValue: event.detail.value
    })
    this.getEveryDay();
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      this.getEveryDay();
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