'use strict';

const Controller = require('egg').Controller;

class LoginController extends Controller {
  async judgeLogin() {
    const username = this.ctx.request.body.username;// 获取页面中的username
    const password = this.ctx.request.body.password;// 获取页面中的password
    // console.log('+++++++++++++++++++++++++++++++++++++++++++++++++++');
    // console.log(username + '......' + password);
    const user = await this.service.user.getUserInfo();
    this.ctx.body += '';
    if (user.username == username && user.password == password) {
      this.ctx.cookies.set('username',username,{
        maxAge:1000*3600*24*10,
        encrypt:true,
        signed:true,
      });
      //默认情况下浏览器关闭的时候cookies就销毁，如果要保存更长时间则需要设置第三个值
      //默认情况下没法设置中文cookies，如果设置加密的话就可以设置中文cookies
      this.ctx.cookies.set('password',password,{
        maxAge:1000*3600*24*10,//默认保存10天
        encrypt:true,
        signed:true,
      });
      this.ctx.redirect('/panel');
    } else {
      this.ctx.body = '抱歉！登录失败，请重新登录';
    }
  }

  async loginOut(){
    //清理cookies
    this.ctx.cookies.set('username',null);
    this.ctx.cookies.set('password',null);
    //重定向
    this.ctx.redirect('/');
  }
}

module.exports = LoginController;
