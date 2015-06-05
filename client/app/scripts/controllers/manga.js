'use strict';

/**
 * @ngdoc function
 * @name mangaReaderApp.controller:MangaCtrl
 * @description
 * # MangaCtrl
 * Controller of the mangaReaderApp
 */
angular.module('mangaReaderApp')
  .controller('MangaCtrl', function ($scope, $routeParams, mangaFactory) {
    if ( $routeParams.tag ) { $scope.mangas = mangaFactory.tag.query({tag: $routeParams.tag}); }
    else { $scope.mangas = mangaFactory.manga.query(); }
  });
