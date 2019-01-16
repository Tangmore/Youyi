const util=require('../../utils/util.js');
const currentdate = util.getNowFormatDate()[0];
const formatTime=util.getNowFormatDate()[1];
var QQMapWX = require('../../lib/qqmap-wx-jssdk.js');
var demo = new QQMapWX({
  key: 'E5ZBZ-XE5KW-FWFRA-ORVB6-BEG5H-GCFFX'
});
const app=getApp();
Page({
/**
 * 页面的初始数据
 */
  data: {
    // 日期
    picker1Value: 0,
    dateValue: currentdate,
    // tabbar
    photoShow: false,
    fontShow: false,    
    
    content:'',  //文本内容
    // 位置
    locationStyle: '',
    location: "点击添加位置",
    // 图片
    photos: [],
    phCount:0,
    newPhotos:[],
    photoStr:'',
    // 文字样式
    fontSize: '',
    fontColor: '',
    //上传
    progress:0,

    sizes: [
      {index: 0,size: "12px",selected: false},
      {index: 1,size: "14px",selected: false},
      {index: 2,size: "16px",selected: false},
      {index: 3,size: "18px",selected: false},
      {index: 4,size: "20px",selected: false},
      {index: 5,size: "22px",selected: false}],
    color: [
      {index: 0,color: "#000",selected: false},
      {index: 1,color: "#fff",selected: false},
      {index: 2,color: "#f00",selected: false},
      {index: 3,color: "#00ac00",selected: false},
      {index: 4,color: "#ffa0c1",selected: false},
      {index: 5,color: "#00f",selected: false},
      {index: 6,color: "#ff0",selected: false},
      {index: 7,color: "#f0f",selected: false},
      {index: 8,color: "#E77817",selected: false},
      {index: 9,color: '#C79EFE',selected: false},
      {index: 10,color: '#36f0c1',selected: false}]
  },
/**
  * 日历
*/
  bindDateChange(event) {
    wx.setStorage({
      key: "date",
      data: event.detail.value
    })
    this.setData({
      dateValue: event.detail.value
    })
  },
/**
 * 文本
 */
  bindclick() {
    this.setData({
      photoShow: false,
      fontShow: false
    })
  },
  input: function (e) {
      let that = this
      // console.log(e.detail.value)
      let content = e.detail.value
      that.setData({
        content: e.detail.value
      })
  },
  changeFont(event) {
        // console.log(event.currentTarget);
        for (var i = 0; i < this.data.sizes.length; i++) {
          if (event.currentTarget.id == i) {
            this.data.sizes[i].selected = true
          }
          else {
            this.data.sizes[i].selected = false
          }
        }
        this.setData(this.data);
        this.setData({
          fontSize: event.target.dataset.fontsize
        })
        console.log(this.data);
  },
  fontShowHide() {
    let that = this;
    that.setData({
      photoShow: false,
      fontShow: !this.data.fontShow
    })
  },
  changeColor(event) {
        for (var i = 0; i < this.data.color.length; i++) {
          if (event.currentTarget.id == i) {
            this.data.color[i].selected = true
          }
          else {
            this.data.color[i].selected = false
          }
        }
        this.setData(this.data);
        this.setData({
          fontColor: event.target.dataset.color
        })
        console.log(this.data);
 },

  addPhoto(){
    let that = this
    wx.chooseImage({
      count: 9,  
      // 可以指定是原图还是压缩图，默认二者都有
      sizeType: ['original', 'compressed'], 
         // 可以指定来源是相册还是相机，默认二者都有
      sourceType: ['album', 'camera'], 
      success:(res)=>{
        // 返回选定照片的本地文件路径列表
        var tempFilePaths = res.tempFilePaths;
        // console.log(tempFilePaths)
        var photos=that.data.photos;
        let phCount=photos.length;
        this.setData({phCount});

        // console.log(len)
        if (phCount==9){
            wx.showToast({
              title: '最多可添加9张图片...',
              icon: 'none',
              duration: 1000
            })
            return;
        }else{
            photos.push(tempFilePaths);
            phCount++;
            that.setData({
              photos,
              phCount
            })
        }
      }
    })
  },
  deletePhoto(e) {
    let that = this;
    // console.log(e.currentTarget.id)
    let id = e.currentTarget.id;
    let phCount=that.data.phCount-1;
    that.data.photos.splice(id, 1);
    that.setData({
      phCount,
      photos: that.data.photos
    })
  },

  photoShowHide() {
    let that = this;
    that.setData({
      fontShow: false,
      photoShow: !this.data.photoShow
    })
  },
  // 定位
  getLocation() {
    let that = this;
    wx.getLocation({
      type: 'wgs84',
      success: (res) => {
        console.log(res)
        var latitude = res.latitude;
        var longitude = res.longitude;
        demo.reverseGeocoder({
          location: {
            latitude,
            longitude
          },
          success(res) {
            console.log(res.result)
            var location = res.result.address_component.province 
            + res.result.address_component.city
            that.setData({
              location,   
              locationStyle: 
              'background-image:url(http://148.70.65.234:3003/dairy/blue.png); color:#1296db;'
            });
            wx.setStorage({
              key: "location",
              data: location
            })
          },
          fail(res) {
            console.log(res);
          },
          complete(res) {
            console.log(res);
          }
        });
      }
    })
  },

/**
 * 保存/上传日记内容
 */
save() {
  let that = this;
  this.fontShowHide();
  let data=that.data;
  let photos=data.photos;
  let currentdate=data.dateValue;
  let newPhotos=data.newPhotos;
  let content=data.content;
  let location=data.location;
   
  console.log(currentdate,formatTime,newPhotos,content,location)

  let len=photos.length;
  // let progress=0; 
  if(!this.data.content&&len==0){
    wx.showToast({
      title: '内容不能为空哦！',
      icon: 'none',
      duration: 2000
    });
    return;
  }

  if(len!=0){
     this.upPic(len,photos);
  }




      //  wx.showToast({
      //     title: '文本不能为空哦',
      //     icon: 'none',
      //     duration: 2000
      //   });
        //  setTimeout(function () {
        //   wx.hideLoading();
        //   wx.navigateBack();
        // }, 2000)
 
  },
  /**
   * 上传图片
   */
  upPic(len,arr){
    let that = this;
    for(var i=0;i<len;i++){
      wx.uploadFile({
        url: app.globalData.baseUrl+'upload',
        filePath: arr[i][0],
        name: 'mypic',
        header:{"Content-Type":"multipart/form-data"},//修改请求头
        formData:{a:12,b:''},
        success:function(res){
          let json=JSON.parse(res.data);  
          // console.log(res)
          let url=json.url;
          let newPhotos=that.data.newPhotos;
          newPhotos.push(url);  
          var photoStr= newPhotos.join('&')
          that.setData({newPhotos,newPhotos})
       
          that.setData({photoStr})
          console.log('图片列表'+photoStr)
          //  if(i>=len){
          //    progress=50;
          //    return;
          //  }
        }
      })
    }
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // console.log(options)
    // this.setData({
    // })
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
