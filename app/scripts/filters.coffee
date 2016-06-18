'use strict';

define(['angular', 'services'], (angular, services) ->

  # Filters

  angular.module('myApp.filters', ['myApp.services'])
    .filter('interpolate', ['version', (version) ->
      return (text) ->
        return String(text).replace(/\%VERSION\%/mg, version)
    ]);
);
