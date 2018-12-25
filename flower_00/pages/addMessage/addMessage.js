// pages/addMessage/addMessage.js
Page({

  /**
   * 页面的初始数据
   */
  selectImg(){
    //上传图片
    //选中一张图片
    wx.chooseImage({
      //将图片上传
      count:1,  //最多可以选择的数量
      sizeType:['compressed'],//压缩图批示
      sourceType:['camera','album'],//图片来源
      success: function(res) {
        var files=res.tempFilePaths;//选中的图片
        wx.uploadFile({
          url: 'http://127.0.0.1:3003/upload',
          filePath: files[0],
          name: 'mypic',
          header:{"Content-Type":"multipart/form-data"},//修改请求头
          formData:{pid:12,pname:'郁金香'},
          success:function(res){
            console.log(res)
          }
        })
      },
    })
    
  },
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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