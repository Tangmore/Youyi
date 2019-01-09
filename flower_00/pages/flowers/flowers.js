// pages/shoplist/shoplist.js
Page({

  handleToDetail(e){
    var id=e.target.dataset.id;
     wx.navigateTo({
       url: '/pages/floDetail/floDetail?id='+id
     })
  },
  /**
   * 页面的初始数据
   */
  loadMore() {  //加载下一页数据
    //获取数值 pno pageSize
    var pno = this.data.pageIndex + 1;
    var ps = this.data.pageSize;
    var kind = this.data.kind;
    //发送请求
    wx.request({
      url: 'http://127.0.0.1:3003/findshops',
      method: 'get',
      data: { pno: pno, pageSize: ps, kind: kind },
      success: (res) => {
        console.log(res.data.pageCount)
        var rows = this.data.imgList.concat(res.data.data);
        console.log(rows)
        this.setData({
          imgList: rows,
          pageIndex: pno,
          pageCount: res.data.pageCount
        })
        //显示加载动画
        wx.showLoading({
          title: '正在加载数据...',
        })
        //卸载加载动画
        setTimeout(() => {
          wx.hideLoading()
        }, 800)
      }
    })
  },
  data: {
    imgList: [], //当前页内容
    pageIndex: 0,   //页码
    pageSize: 5,   //页大小
    pageCount: 0,
    kind: 1
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
    //判断是否还有数据加载
    if (this.data.pageCount > this.data.pageIndex) {
      this.loadMore();
    }
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})