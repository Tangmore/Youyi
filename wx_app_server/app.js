//1:加载模块 express pool
const express = require("express");
const bodyParser=require('body-parser')
const pool = require("./pool");
//加载express-session 模块
const session=require('express-session');
//2:创建express对象
var app = express();
//2.1:加载跨域访问组件
const cors = require("cors");
//2.2:配置允许脚手架访问程序
app.use(cors({
    origin:["http://127.0.0.1:3030",
    "http://localhost:3030"],
    credentials:true
}));
app.use(bodyParser.urlencoded({
  extended:false
}))
//配置模块
app.use(session({
  secret:'128位随机字符串',  //安全字符串
  resave:false,   //请求保存
  saveUninitialized:true,  //初始化保存
  cookie:{
    maxAge:1000*60*60*24
  }
}));

//3:指定监听端口3003
app.listen(3003);
console.log('服务器启动成功，3003port')
//4:指定静态目录 public
// __dirname 当前程序所属目录绝对路径 
//app.js vue_app_server
app.use(express.static(__dirname+"/public"))
app.use(express.static(__dirname+"/upload"))
//分页显示鲜花列表
 //1:获取参数
app.get("/findshops",(req,res)=>{
 var pno = req.query.pno;          //页码
 var pageSize = req.query.pageSize;//页大小
 var kind=req.query.kind;  //查询种类
 //2:设置默认值 1 7
 if(!pno){pno = 1}
 if(!pageSize){pageSize=5}
 //3:创建正则表达式验证用户输入验证
 var reg = /^[0-9]{1,3}$/; 
 //4:如果错出停止函数运行
 if(!reg.test(pno)){
    res.send({code:-1,msg:"页编格式不正确"});
    return;
 }
 if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
 }
 var progress = 0;
 var obj = {code:1};
 obj.uname = req.session.uname;
 //5:创建sql1 查询总记录数   严格区分大小写
 var sql = "SELECT count(id) AS c FROM yy";
 pool.query(sql,(err,result)=>{
   if(err)throw err;
   var pageCount = Math.ceil(result[0].c/pageSize);
   progress+=50;
   obj.pageCount = pageCount;
   if(progress==100){
     res.send(obj);
   }
 });
 //6:创建sql2 查询当前页内容 严格区分大小写
 var sql =" SELECT id,fname,flolang,";
     sql+="star,img_url";
     sql+=" FROM yy WHERE kind=?";
     sql+=" LIMIT ?,?";
 var offset = parseInt((pno-1)*pageSize);
     pageSize = parseInt(pageSize);
 pool.query(sql,[kind,offset,pageSize],(err,result)=>{
   if(err)throw err;
   progress+=50;
   obj.data=result;
   if(progress==100){
     res.send(obj);
   }
 })
});

app.get('/getProduct',(req,res)=>{
    var pno=req.query.pno;
	var pname=req.query.pname;
	res.send({code:1,msg:'商品添加成功'});
})

// 鲜花详情
app.get("/getFloDetail",(req,res)=>{
  var id=req.query.id;
  var sql =" SELECT fname,banner,flolang,present,frange,fenviroment  FROM yy WHERE id=?";
   pool.query(sql,id,(err,result)=>{
     if(err) throw err;
     res.send(result);
   })
})

//画廊
app.get('/getPics',(req,res)=>{

    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    var keyWord=req.query.kw;

    if(!pno){pno=1}
    if(!pageSize) {pageSize=8}
   
    var reg=/^[0-9]{1,3}/;
    if(!reg.test(pno)){
      res.send({code:-1,msg:'页编码格式不正确'})
      return;
    }
    if(!reg.test(pageSize)){
      res.send({code:-2,msg:'页大小格式不正确'})
      return;
    }

    var progress=0;
    var obj={code:1};
    //查询总条数
    var allCount='SELECT count(id) AS c FROM gallery';
    pool.query(allCount,(err,result)=>{
      if(err) throw err;
      var pageCount=Math.ceil(result[0].c/pageSize);
      progress+=50;
      // obj.pageCount = pageCount;
      if(!keyWord){
        keyWord='';
        obj.pageCount = pageCount;
      }else{
        obj.pageCount = 0;
      }
      if(progress==150){
        res.send(obj);
      }
    });

    //查询关键词搜索条数
    const keyCount=`SELECT count(id) AS c FROM gallery where gallery.title like '%${keyWord}%'`;
    pool.query(keyCount,(err,result)=>{
      if(err) throw err;
      var keypageCount=Math.ceil(result[0].c/pageSize);
      progress+=50;
      obj.keypageCount = keypageCount;
      if(progress==150){
        res.send(obj);
      }
    });

    //查询当前页的内容
    const keywordStr = `select id,img_url  from gallery where gallery.title like '%${keyWord}%' LIMIT ?,?`;
    var offset = parseInt((pno-1)*pageSize);
        pageSize = parseInt(pageSize);
    pool.query(keywordStr,[offset,pageSize],(err,result)=>{
      if(err)throw err;
      progress+=50;
      obj.data=result;
      if(progress==150){
        res.send(obj);
      }
    })
});









//信息列表
app.get("/getmessage",(req,res)=>{
  var pno = req.query.pno;          //页码
  var pageSize = req.query.pageSize;//页大小
  //2:设置默认值 1 7
  if(!pno){pno = 1}
  if(!pageSize){pageSize=2}
  //3:创建正则表达式验证用户输入验证
  var reg = /^[0-9]{1,3}$/; 
  //4:如果错出停止函数运行
  if(!reg.test(pno)){
     res.send({code:-1,msg:"页编格式不正确"});
     return;
  }
  if(!reg.test(pageSize)){
     res.send({code:-2,msg:"页大小格式不正确"});
     return;
  }
  var progress = 0;
  var obj = {code:1};
  obj.uname = req.session.uname;
  //5:创建sql1 查询总记录数   严格区分大小写
  var sql = "SELECT count(id) AS c FROM yy_message";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    var pageCount = Math.ceil(result[0].c/pageSize);
    progress+=50;
    obj.pageCount = pageCount;
    if(progress==100){
      res.send(obj);
    }
  });
  //6:创建sql2 查询当前页内容 严格区分大小写
  var sql =" SELECT id,title,ctime,img_url,desc1,content FROM yy_message LIMIT ?,?";
  var offset = parseInt((pno-1)*pageSize);
      pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    progress+=50;
    obj.data=result;
    if(progress==100){
      res.send(obj);
    }
  })
 });


 //上传图片
//fs fileSystem 文件系统模块 操作文件 创建删除移动文件
const fs=require("fs");
const multer=require("multer");
const baseUrl='http://127.0.0.1:3003/';
//3 创建multer对指象定上传文件目录
var upload=multer({dest:"upload/"})
//4 创建处理上传请求 /upload 上传单个文件
//upload.single()一次上传一张图片   mypic 指定上传文件表单 name='mypic'
app.post("/upload",upload.single("mypic"),(req,res)=>{ 
    //5 获取上传文件大小 小于2MB
    var size=req.file.size/1000/1000;
        if(size>2){
            res.send({code:-1,msg:'上传图片过大，超过2M'});
        }
        
        //6 获取上传文件类型 图片
        var type=req.file.mimetype;
        var i2=type.indexOf("image");
        if(i2===-1){
            res.send({code:-2,msg:'只能上传图片'});
            return;
        }
        //7 创建新文件名 
        var src=req.file.originalname; 
        var fTime=new Date().getTime();
        var fRand=Math.floor(Math.random()*9999);
        var i3=src.lastIndexOf(".");
        var suff=src.substring(i3,src.length);  //.jpg
        var des="./upload/"+fTime+fRand+suff;
        //添加的图片地址
        var url=baseUrl+'upload/'+fTime+fRand+suff;
        console.log(url);
        //8 将临时文件移动到upload目录
        fs.renameSync(req.file.path,des);   
        //9 返回上传成功信息
        res.send({
          code:1,
          msg:'图片上传成功',
          url:url
        })
})