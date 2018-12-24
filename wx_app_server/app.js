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
//4:指定静态目录 public
// __dirname 当前程序所属目录绝对路径 
//app.js vue_app_server
app.use(express.static(__dirname+"/public"))


//功能一:首页轮播图   http://127.0.0.1:3003/imagelist
app.get("/imagelist",(req,res)=>{
   var obj = [
     {id:1,img_url:"http://127.0.0.1:3003/img/banner1.png"},
     {id:2,img_url:"http://127.0.0.1:3003/img/banner01.png"},
     {id:3,img_url:"http://127.0.0.1:3003/img/banner03.png"}
   ];
   res.send(obj);
});

//第十功能:分页显示鲜花列表
//1:创建表
// xz_shop [id;img_url;name;addr;tel;mtime,star]
 //参数: pno 当前页码1 2 pageSize 每个大小
  //sql: 
  //  -总记录数->总页数
  //  -当前页内容
  //json
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
     sql+=" present,frange,star,img_url";
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