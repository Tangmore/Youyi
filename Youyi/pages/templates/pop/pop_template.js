// pages/templates/pop_template.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {

  },

  /**
   * 组件的初始数据
   */
  data: {
        /*------------模态输入框------------- */
    modalShowStyle: "", // 模态对话框样式 
    diaryTitle: "",// 待新建的日记标题
  },

  /**
   * 组件的方法列表
   */
  methods: {
       /** 
       * 新建日记
       */
      touchAddNew() {
          this.setData({modalShowStyle: ""});
          wx.navigateTo({
              url: "/pages/addArticle/addArticle?title=" + this.data.diaryTitle,
          });
      },
      /**
       * 取消标题输入
       */
      touchCancel() {
          this.setData({modalShowStyle: ""});
          this.setData({diaryTitle: ""});
      }, 
      /**
       * 标题输入事件
       */
      titleInput(event) {
          this.setData({
              diaryTitle: event.detail.value,
          })
      }
  }
})
