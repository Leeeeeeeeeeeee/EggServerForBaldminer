/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1639971891905_9586';

  //引入中间件
  config.middleware = ['auth'];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  //配置模板引擎
  config.view={
    defaultViewEngine:'nunjucks',
    mapping:{
      '.html':'ejs',
      '.tpl':'nunjucks',
    }
  }
  
  config.api='http://www.itying.com/api';
  
  return {
    ...config,
    ...userConfig,
  };

};
