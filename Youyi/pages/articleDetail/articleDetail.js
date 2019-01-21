// pages/articleDetail/articleDetail.js
const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    contentList:[],
    // 评论
    commentList:[],
    comment:'',
    diaryComment:0,
    /*评论分页 */
    pageIndex:0,
    pageSize:10,
    pageCount:0,
    cid:0,
    fontShow:false
  },
  /**
   * 获取当前详情
   */
  getDetail(){
    wx.request({
      url:app.globalData.baseUrl+ 'getdiaryDetail',
      data:{
        id:this.data.cid
      },
      success:(res)=> { 
          console.log(res)
          for(var item of res.data){
            if(item.diaryImg){
                item.diaryImg=item.diaryImg.split('&');
            }
          }
          this.setData({
            contentList:res.data
          })
        }
      })
  },
  /**
   * 获取评论
   */
  getComment(){
    var that=this;
    var pno=that.data.pageIndex+1;
    var ps=that.data.pageSize;
    wx.request({
      url:app.globalData.baseUrl+ 'getdiaryComment',
      data:{
        diaryId:that.data.cid,
        openid:app.globalData.openid,
        pno:pno,
        pageSize:ps
      },
      success:(res)=> {
          console.log(res)
          if(!res.data.data){
           this.setData({
            diaryComment:-1
           })
          }
          if(res.data.data){
            for(var item of res.data.data){
              var data=new Date(item.commentTime).toLocaleString();
              item.commentTime=data.split(' ');
            }
          var commentList=that.data.commentList.concat(res.data.data).reverse();
          that.setData({
            pageIndex:pno,
            pageCount:res.data.pageCount,
            commentList,
            diaryComment:10
          })
        }
          console.log(that.data.commentList)
      }
    })
  },


   /**
   * 提交评论 
  */  
 commentInput(e) {
    this.setData({
      comment:e.detail.value
    })
  },
  submitComment() {
       if (this.data.comment.trim().length>0){
          wx.request({
            url:app.globalData.baseUrl+ 'pupComment',
            data:{
              diaryId:this.data.cid,
              openid:app.globalData.openid,
              commentStr:this.data.comment
            },
            method:'POST',
            header:{
              'Content-Type':'application/x-www-form-urlencoded'
            },
            success:(res)=> {
              console.log(res)
                wx.showToast({
                  title:res.data.msg,
                  icon: 'none',
                  duration: 2000
                })
            },
            complete:()=>{  
              this.setData({
                pageIndex:0,
                pageCount:0,
                comment:'',
                commentList:[],
                diaryComment:0
              }) 
              this.getComment();
            }
          })
       } 
       else {
        this.setData({
            comment: ""
          })
          return;
       }
      
  },
  imgPreview(e){
    var toUrl=e.target.dataset.src;
    var list=e.target.dataset.list;
    wx.previewImage({
        current:toUrl,
        urls:list
    })
  },
  // modify: function(){
    
  // },
  // deleteDiary:function() {
 
  // },
  bindClick(){
    var fontShow=this.data.fontShow;
    this.setData({
      fontShow:!fontShow
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log(options.id);
    var id=options.id;
    this.setData({cid:id});
    this.getDetail();
    this.getComment();
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
    this.setData({
      fontShow:true
    })
      if (this.data.pageCount>this.data.pageIndex) {
        this.getComment();
           //加载loading动画
           wx.showToast({
             title: '数据加载中...',
             icon:'loading'
           })
             //隐藏加载动画
           setTimeout(function(){
             wx.hideToast();
           },1000)
      }else{
        wx.showToast({
          title: '别拽我了，没有啦...',
          icon:'none',
          duration:1000
        })
        return;
      }
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})