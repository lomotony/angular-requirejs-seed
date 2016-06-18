# 'use strict';
#
# NODE_MODULES_PATH = '../../node_modules/'
#
# require.config
#   paths:
#     angular: NODE_MODULES_PATH + 'angular/angular'
#     angularUIRoute: NODE_MODULES_PATH + 'angular-ui-router/release/angular-ui-router'
#     jquery: NODE_MODULES_PATH + 'jquery/dist/jquery'
#     domReady: NODE_MODULES_PATH + 'domReady/domReady'
#     appPath: '../'
#   shim:
#     angular:
#       exports: 'angular'
#     angularUIRoute:
#       deps: 'angular'
#
# require(['domReady!', 'app', 'routes'], (document, app) ->
#   angular.bootstrap(document, app['name']);
# );
'use strict';

NODE_MODULES_PATH = '../../node_modules/'

require.config
  paths:
    angular: NODE_MODULES_PATH + 'angular/angular'
    angularRoute: NODE_MODULES_PATH + 'angular-route/angular-route'
  shim:
    'angular' : {'exports' : 'angular'}
    'angularRoute': ['angular']
  priority: [
    'angular'
  ]

# http://code.angularjs.org/1.2.1/docs/guide/bootstrap#overview_deferred-bootstrap
window.name = 'NG_DEFER_BOOTSTRAP!'

require([
  'angular',
  'app',
  'routes'
], (angular, app, routes) ->
  $html = angular.element(document.getElementsByTagName('html')[0]);

  angular.element().ready ->
    angular.resumeBootstrap([app['name']]);
);
