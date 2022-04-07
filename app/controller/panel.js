'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    var playerNum = 10;
    var roomNum = 3;
    var roomList = new Array();
    for (var i = 0; i < 5; i++) {
      var room = {
        roomId: 1000 + i,
        playerNum: i,
        state: "正在比赛",
        score: "第一名：；第二名：；"
      }
      roomList[roomList.length]=room;
    }
    await this.ctx.render('panel.tpl', {
      playerNum,
      roomNum,
      roomList,
    });
  }
}

module.exports = HomeController;
