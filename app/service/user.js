'use strict';

const Service = require('egg').Service;

class UserService extends Service {
  async getUserInfo() {
    var user={
        username:"admin",
        password:"password",
    }
    return user;
  }
}

module.exports = UserService;
