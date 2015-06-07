'use strict';

/**
 * @ngdoc directive
 * @name mangaReaderApp.directive:search
 * @description
 * # search
 */
angular.module('mangaReaderApp')
  .directive('search', function () {
    return {
      templateUrl: 'views/search.html',
      restrict: 'E'
    };
  });
