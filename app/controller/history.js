'use strict';

const Controller = require('egg').Controller;

class HistoryController extends Controller {
  async index() {
    var historyList = new Array();
    for (var i = 0; i < 5; i++) {
      var history = {
        roomId: 1000 + i,
        createDate: "2021-12-21",
        playerNum: 4,
        finalState:"结束比赛",
        score: "第一名：；第二名：；"
      }
      historyList[historyList.length]=history;
    }
    await this.ctx.render('history.tpl',{
      historyList
    });
  }
}

module.exports = HistoryController;
