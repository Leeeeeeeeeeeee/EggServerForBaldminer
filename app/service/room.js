'use strict';

const Service = require('egg').Service;

class RoomService extends Service {
  async getRoomQuantity(){
      //服务也可以调用服务
    var roomQuantity=3;
    return roomQuantity;
  }
}

module.exports = RoomService;
