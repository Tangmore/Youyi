const util=require('../../utils/util.js');
const currentdate = util.getNowFormatDate();
// var QQMapWX = require('../../lib/qqmap-wx-jssdk.js');
// var demo = new QQMapWX({
//   key: 'UNKBZ-6PORG-L4VQ3-I4OPG-IXLXO-Q4BVD'
// })
Page({
  /**
   * 页面的初始数据
   */
  data: {
    picker1Value: 0,
    dateValue: currentdate,
    isLoad: true,
    isShow: false,
    photoShow: false,
    fontShow: false,
    content:'',  //文本内容
    locationStyle: '',
    location: "点击添加位置",
    fontSize: '',
    photos: [],
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
  bindclick: function () {
    this.setData({
      isShow: false,
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
  fontShowHide: function () {
    let that = this;
    that.setData({
      isShow: false,
      photoShow: false,
      recordShow: false,
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

addPhoto: function () {
    let that = this
    wx.chooseImage({
      count: 9, // 可根据情况自由设置，默认9
      sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
      sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
      success: function (res) {
        // 返回选定照片的本地文件路径列表，tempFilePath可以作为img标签的src属性显示图片
        var tempFilePaths = res.tempFilePaths;
        console.log(tempFilePaths)
        that.setData({
          photos: tempFilePaths
        })
      }
    })
  },
 deletePhoto(e) {
    let that = this
    // console.log(e.currentTarget.id)
    let id = e.currentTarget.id
    that.data.photos.splice(id, 1);
    that.setData({
      photos: that.data.photos
    })
  },
  photoShowHide() {
    let that = this
    that.setData({
      isShow: false,
      fontShow: false,
      recordShow: false,
      photoShow: !this.data.photoShow

    })
  },
  // getLocation() {
  //   let that = this;
  //   wx.getLocation({
  //     type: 'wgs84',
  //     success: (res) => {
  //       var latitude = res.latitude
  //       var longitude = res.longitude
  //       demo.reverseGeocoder({
  //         location: {
  //           latitude,
  //           longitude
  //         },
  //         success: function (res) {
  //           console.log(res.result)
  //           var location = res.result.address_component.province 
  //           + res.result.address_component.city
  //           that.setData({
  //             location,
  //             locationStyle: 'background-image:url(./../../images/blue.png);color:#1296db;'
  //           });
  //           wx.setStorage({
  //             key: "location",
  //             data: location
  //           })

  //         },
  //         fail: function (res) {
  //           console.log(res);
  //         },
  //         complete: function (res) {
  //           console.log(res);
  //         }
  //       });
  //     }
  //   })
  // },

  //   save(event) {
//     let that = this;
//     // console.log(event.detail.value);
//     var content = event.detail.value;
//     console.log(content)
//     if (content !== '') {
//       wx.setStorage({
//         key: "diaryContent",
//         data: that.data.content
//       });
//     }
//     wx.setStorage({
//       key: 'images',
//       data: that.data.photos
//     })
//     wx.showToast({
//       title: '保存成功',
//       icon: 'success',
//       duration: 2000,
//       success: function () {

//       }
//     });
//     setTimeout(function () {
//       wx.hideLoading();
//       wx.navigateBack();
//     }, 2000)
//   },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // console.log(options)
    // this.setData({
    //   content: options.content
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
