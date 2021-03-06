// pages/gallery/gallery.js
// http://127.0.0.1:3003/getPics 
const app = getApp();
Page({
  loadMore(){
    var pno=this.data.pageIndex+1;
    var ps=this.data.pageSize;
    var kw=this.data.kw;

    wx.request({
      url: app.globalData.baseUrl+'getPics',
      methods: 'get',
      data:{pno:pno,pageSize:ps,kw:kw},
      success: (res)=> {
          // console.log(res)
          if(res.data.data.length==0){
               wx.showToast({
                 title: '没有相关数据...',
                 icon:'none',
                 duration:2000
               })
          }
          // console.log(res.data.data.length)
          var imgList=this.data.imgList.concat(res.data.data);
          this.setData({
            imgList:imgList,
            pageIndex:pno,
            pageCount:res.data.pageCount,
            keypageCount:res.data.keypageCount
          })
      }
    })
  },
  //失去焦点 获取搜索关键词
  getKey(e){
    console.log(this.data.keypageCount)
     if(e.detail.value){
        this.setData({
          kw:e.detail.value,
          imgList:[],
          pageIndex:0,
          pageCount:0
        })
        this.loadMore();
     }
  },
  
  hanleSearch(){
    if(this.data.kw){
      this.setData({
        imgList:[],
        pageIndex:0
      })
      this.loadMore();
    }
  },
  /**
   * 图片预览、分享、保存
   */
  preView(e){
      var toUrl=e.target.dataset.url;
      var imgList=this.data.imgList;
      var newArr=[];
      if(imgList.length!=0){
        for(var item of imgList){
          newArr.push(item.img_url);
        }
        wx.previewImage({
          current:toUrl,
          urls:newArr
        })
      }else{
        return;
      }
    

  },
  /**
   * 页面的初始数据
   */
  data: {
     imgList:[],
     pageIndex:0,
     pageSize:6,
     pageCount:0,
     keypageCount:0,
     kw:''
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

   if(this.data.pageCount!=0){
      if (this.data.pageCount > this.data.pageIndex) {
        this.loadMore();
      }else if(this.data.pageCount =this.data.pageIndex){
        wx.showToast({
          title: '别拽我了，没有啦...',
          icon:'none',
          duration:1000
        })
      }
   }
  if(this.data.kw){
      if(this.data.keypageCount > this.data.pageIndex){
        this.loadMore();
      }else if(this.data.keypageCount = this.data.pageIndex){
        wx.showToast({
          title: '别拽我了，没有啦...',
          icon:'none',
          duration:1000
        })
      }
  }
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})