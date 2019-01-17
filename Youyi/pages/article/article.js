 var app=getApp()
Page({
  data:{
    isShow:true,
    title:'',
    time:'',
    content:'',
    images:[],
    location:'',
    diaryCount: 8,
    imgCount:1,
    highLightIndex:0
   
  },
  touchTab(e){
    
  },
  onLoad:function() {
 
  },
  onShow:function() {
    // let that = this;
    // let images = wx.getStorageSync("images")
    // let content = wx.getStorageSync("diaryContent")
    // let diaryTitle = wx.getStorageSync("title")
    // let time = wx.getStorageSync("date")
    // let location = wx.getStorageSync("location")
    // that.setData({
    //   images:images
    // })
    // that.setData({
    //   content:content
    // })
    // that.setData({
    //   diaryTitle:diaryTitle
    // })
    // that.setData({
    //   time:time
    // })
    // that.setData({
    //   location:location
    // })
    // if(content){
    //   that.setData({
    //     diaryCount:1
    //   })
    // }
  },
  modify: function(){
    // console.log('aaa')
    // wx.navigateTo({
    //   url:"/pages/new/index?content="+this.data.content
    // })
  },
  deleteDiary:function() {
 
  }
})
