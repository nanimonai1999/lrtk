const express=require("express");
var fs=require("fs");

const pool=require('../pool.js');
const multer=require('multer');
// const path=require('path');
const router=express.Router();
const uploader=multer.diskStorage({
  destination:function(req,file,cd){
    cd(null, './views/img');
  },
   filename: function (req, file,cd) {
            // 将保存文件名设置为 字段名 + 时间戳，比如 logo-1478521468943
    cd(null, file.fieldname + '-' + Date.now()+'.png');  
        }
    });
var upload= multer({ storage: uploader })
//登陆接口（如果数据库没有数据自动注册）
router.post('/login',(req,res,next)=>{
  //查看前台传值是否已到
  let obj = req.body;
  // console.log(obj);
  //执行sql查询
  pool.query('select * from userinfo where uname=? and upwd=?',[obj.uname,obj.upwd],(err,data)=>{
    //排错,处理错误
    if(err){next(err);
      return;}
    //判断是否查询到数据
    if(data.length == 0){
      //没查到数据执行自动注册
      pool.query('insert into userinfo set ?',[obj],(err,data)=>{
        if(err){next(err);
          return;
          }
          if(data.affectedRows==0){
            res.send({
              "code":0,
              "msg":"注册失败"
            })
          }else{
            res.send({
              "code":1,
              "msg":"注册成功"
            })
          }
      })
    }else {
      res.send({
        "code":1,
        "msg":"有该用户信息"
      })
    }
  })
})
//查询接口
router.get('/search/:key',(req,res,next)=>{
 var obj=req.params;
 var str=obj.key.toString()
  pool.query(`select * from p_scourse where p_title LIKE '%${str}%'`,(err,data)=>{
    if (err) {
      next(err)
    } 
    if(data.length!=0){
      res.send(
        {
          "code":1,
          "msg":"查询成功",
          "data":data
        }
      )
    }else{
      pool.query(`select * from p_scourse where p_key=?`,[obj.key],(err,data)=>{
        if (err) {
          next(err)
        } 
        if(data.length!=0){
          res.send(
            {
              "code":1,
              "msg":"查询成功",
              "data":data
              
            }
          )
        }else{
          res.send(
            {
              "code":0,
              "msg":"查询失败"
            }
          )
         
        }
      })
     
    }
  })
})
//页面动态展示
router.get('/pngsucai',(req,res,next)=>{
  pool.query('select * from p_scourse where p_sort="png"',(err,data)=>{
    // console.log(data)
    if(data.length!=0){

    res.send({
      "code":1,
      "msg":"查询成功",
      "data":data
    })}else{
      res.send({
      "code":0,
      "msg":"查询失败"
    })}
  })
})
// router.delete('/delete',(req,res,next)=>{
//   var obj=req.params;
//   pool.query('delete from userinfo where u_id=?',[obj.uid],(err,data)=>{
//     if(err){next(err);
//               return;}
//       if(data.affectedRows==0){
//         res.send({
//           "code":0,
//           "msg":"删除失败"
//         })
//       }else{
//         res.send({
//           "code":1,
//           "msg":"删除成功"
//         })
//       }
//       pool.query('ALTER TABLE userinfo AUTO_INCREMENT=?',[Number(obj.uid)],(err,data)=>{if(err){next(err);return}})
//   })
// })
// router.post('/upload',(req,res,next)=>{
//   let obj=req.body;
//   console.log(obj)
//   pool.query('insert into ? set ?',[obj],(err,data)=>{
//     if(err){next(err);
//     return;}
//   })
// })
// router.post('/uploadpic',upload.single('pfile'),(req,res)=>{
//   console.log(req.file); 
//   res.send();
// })

module.exports=router;