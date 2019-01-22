// pages/home/home.js
const util=require('../../utils/util.js');
const currentdate = util.getNowFormatDate()[0];
const app=getApp()
Page({
  handleJump(e){  
    if (e.target.dataset.id == 1) {
      wx.navigateTo({
        url: '/pages/gallery/gallery',
      })
    }
    if(e.target.dataset.id==2){
      wx.navigateTo({
        url:"/pages/everyStory/everyStory",
      })
    }
      if(e.target.dataset.id==3){
        wx.navigateTo({
          url: '/pages/flowers/flowers',
        })
      }
  },
  /**
   * 页面的初始数据
   */

  data: {
    list: [],
    navlist:[
      {id:1,img_url: app.globalData.baseUrl+"icons/grid-1.png",title:'壁纸'},
      {id:2,img_url: app.globalData.baseUrl+"icons/grid-3.png",title:'美文'},
      {id:3,img_url: app.globalData.baseUrl+"icons/grid-6.png",title:'鲜花'}],
      everyLangList:[],
      contentObj:[],
      musicList:[],
      dateValue:currentdate
    },
    /**
     * 注册
     */
    userLogin(){
      wx.request({
        url:app.globalData.baseUrl+'login',
        data:{
          openid:app.globalData.openid,
          nickname: ''|| app.globalData.userInfo.nickName ,
          avatar:''|| app.globalData.userInfo.avatarUrl 
        },
        method:'POST',
        header:{
          'Content-Type':'application/x-www-form-urlencoded'
        },
        success:function(res){
          // console.log(res)
        }
    })
    },
    geteveryLang(){
      var that=this;
      wx.request({
        url:'http://open.iciba.com/dsapi/',
        data:{
          date:that.data.dateValue
        },
        success:function(res){
            var obj=res.data;
            console.log(obj)
            var everyLangList= that.data.everyLangList;
            everyLangList[0]=obj;
            that.setData({everyLangList})
        }
    })
    },
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
    jumpEveryStory(){
      wx.navigateTo({
        url:'/pages/everyStory/everyStory'
      })
    },
    jumpEveryMusic(e){
      var id=e.currentTarget.id;
      wx.navigateTo({
        url:'/pages/everyMusic/everyMusic?id='+id
      })
      // console.log(id)
    },
    /**
   * 图片预览、分享、保存
   */
  soulPreView(e){
    var img=e.target.dataset.src;
    var toUrl=e.currentTarget.src;
    var newArr=[];
    newArr.push(img);
    wx.previewImage({
      current:toUrl,
      urls:newArr
    })
  },

  /**
   * 获取音乐
   */
   getEveryMusic(){
     var that=this;
    wx.request({
      url:app.globalData.baseUrl+'getEveryMusic',
      success:(res)=> { 
        var obj=res.data.data;
        var musicList= that.data.musicList;
        musicList[0]=obj;
        that.setData({musicList})    
        console.log(that.data.musicList)
      }
    })
   },
  
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.userLogin();
    this.geteveryLang();
    this.getEveryDay();
    this.getEveryMusic();
    if(!app.globalData.userInfo){
      wx.redirectTo({
        url: '/pages/authorize/authorize',
      })
    }
    wx.request({
      url: app.globalData.baseUrl+'banner',
      methods: 'get',
      success: (res)=> {
          // console.log(res)
          this.setData({
            list:res.data
          })
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