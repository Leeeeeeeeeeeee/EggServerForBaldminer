'use strict';

const Controller = require('egg').Controller;

class IndexController extends Controller {
    async index() {
        var user = await this.service.user.getUserInfo();
        const username = this.ctx.cookies.get('username', {
            encrypt: true,
        });
        const password = this.ctx.cookies.get('password', {
            encrypt: true,
        });
        const userAdmin = await this.service.user.getUserInfo();
        if (user.username == username && user.password == password) {
            this.ctx.redirect('/panel');
        } else {
            const csrf = this.ctx.csrf;
            await this.ctx.render('login.tpl', {
                csrf,
            });
        }
    }
}

module.exports = IndexController;
