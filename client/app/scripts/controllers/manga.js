'use strict';

/**
 * @ngdoc function
 * @name mangaReaderApp.controller:MangaCtrl
 * @description
 * # MangaCtrl
 * Controller of the mangaReaderApp
 */
angular.module('mangaReaderApp')
  .controller('MangaCtrl', function ($scope, mangaFactory) {
    $scope.mangas = mangaFactory.query();
  });
