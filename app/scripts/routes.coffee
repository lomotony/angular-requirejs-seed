'use strict';

define(['angular', 'app'], (angular, app) ->

  return app.config(['$routeProvider', ($routeProvider) ->
    $routeProvider.when('/view1', {
      templateUrl: 'app/views/partial1.html',
      controller: 'MyCtrl1'
    });
    $routeProvider.when('/view2', {
      templateUrl: 'app/views/partial2.html',
      controller: 'MyCtrl2'
    });
    $routeProvider.otherwise({redirectTo: '/view1'});
  ]);
)
