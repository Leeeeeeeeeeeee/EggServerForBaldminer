'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.index.index);
  router.get('/panel', controller.panel.index);
  router.get('/room',controller.room.defaultRoom);
  router.get('/history',controller.history.index);
  router.get('/room/:id', controller.room.gotoRoom);
  // router.get('/room/number/:id', controller.room.number);
  router.post('/login', controller.login.judgeLogin);
};
