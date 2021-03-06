 var app=getApp()
Page({
  data:{
    content:'',
    location:'',
    diaryCount: -2,
    // 分页
    contentList:[],
    pageIndex:1,
    pageSize:5,
    pageCount:0,
    // tab切换
    highLightIndex:1,
    // 用户信息
    avatar:'',
    nickname:'',
  },
  toGetDiaryList(){
    var pno=this.data.pageIndex+1;
    var ps=this.data.pageSize;
    wx.request({
      url:app.globalData.baseUrl+ 'getDiaryList',
      data:{
        isPrivacy:this.data.highLightIndex,
        openid:app.globalData.openid,
        pno:pno,
        pageSize:ps
      },
      success:(res)=> {
          console.log(res)
          // let obj=res.data.data;
          if(!res.data.data){
              this.setData({diaryCount:0})
              return;
          }
          /**
           * 处理返回的数据
           */
          if(res.data.data){
              for(var item of res.data.data){
                if(item.diaryImg){
                    item.diaryImg=item.diaryImg.split('&');
                }
              }
            var contentList=this.data.contentList.concat(res.data.data).reverse();
            console.log(contentList)
            this.setData({
                pageIndex:pno,
                pageCount:res.data.pageCount,
                contentList,
                diaryCount:2
              })
          }
      }
    })
  },
  imgPreview(e){
    var toUrl=e.target.dataset.src;
    var list=e.target.dataset.list;
    wx.previewImage({
        current:toUrl,
        urls:list
    })
  },
  /**
   * 获取公开信息
   */
  toOpen(){
    this.setData({
      diaryCount:0,
      highLightIndex:1,
      contentList:[],
      pageIndex:1,
      pageCount:0
    })
    this.toGetDiaryList();
  },
  /**
   * 获取私密信息
   */
  toPrivcy(){
    this.setData({
      diaryCount:0,
      highLightIndex:0,
      contentList:[],
      pageIndex:1,
      pageCount:0
    })
    this.toGetDiaryList();
  },
/**
 * 跳转detail详情页
 * 
 */
comment(e){
  var id=e.currentTarget.id;
  console.log(id)
    wx.navigateTo({
      url:'/pages/articleDetail/articleDetail?id='+id
    }) 
},

  onLoad:function() {
    if(app.globalData.userInfo){
      this.setData({
        avatar:app.globalData.userInfo.avatarUrl,
        nickname:app.globalData.userInfo.nickName
      })
    }
    this.toGetDiaryList();
  },
  onShow:function() {
   
  },

  onReachBottom: function () {
    if (this.data.pageCount>this.data.pageIndex) {
         this.toGetDiaryList();
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
    }
})
