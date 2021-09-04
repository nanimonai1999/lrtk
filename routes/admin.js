//1.引入第三方模块
const express = require('express');
//2.需要用到mysql，要引入连接池模块
const pool = require('../pool');
//3.创建路由对象
const router = express.Router();
//以下为处理逻辑

//(1)管理员登录
//页面地址：http://127.0.0.1:8080/login.html
//请求方式：post
//路由地址: /admin/login
//接收传参的方法：req.body
router.post('/login',(req,res,next)=>{
  //查看前台传值是否已到
  let obj = req.body;
  // console.log(obj);
  //执行sql查询
  pool.query('select * from userinfo where uname=? and upwd=?',[obj.aname,obj.apwd],(err,data)=>{
    //排错,处理错误
    if(err){next(err);
      return;}
    //查看数据库是否返回查询结果
    //[ RowDataPacket { a_id: 1, a_names: 'zhangsan', a_pwd: '123' } ]
    // console.log(data);
    //判断是否查询到数据
    if(data.length == 0){
      //没查到数据
      res.send({
        "code":0,
        "msg":"没找到数据"
      });
    }else {
      res.send({
        "code":1,
        "msg":"有该用户信息"
      })
    }
  })
})
//最后一步，导出（暴露）路由对象
module.exports = router;