'use strict';

const Controller = require('egg').Controller;

class RoomController extends Controller {

  async defaultRoom(){
    var roomId = 2003;
    var playerNum = 8;
    var state="等待开始";
    var operationList = new Array();
    for (var i = 0; i < 5; i++) {
      var operation = {
        playerId: 100000 + i,
        operation: "进入房间",
      }
      operationList[operationList.length]=operation;
    }
    await this.ctx.render('room.tpl',{
      roomId,
      playerNum,
      state,
      operationList
    });
  }

  async gotoRoom() {
    // //获取get传值
    // room?aid=123
    // var query=this.ctx.query;
    // console.log(query);
    //获取动态路由传值
    // room/123
    var params=this.ctx.params;
    console.log(params);
    this.ctx.body="房间详情";
  }
}

module.exports = RoomController;
