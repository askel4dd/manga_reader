'use strict';

/**
 * @ngdoc function
 * @name mangaReaderApp.controller:MangaCtrl
 * @description
 * # MangaCtrl
 * Controller of the mangaReaderApp
 */
angular.module('mangaReaderApp')
  .controller('MangaCtrl', function ($scope, $location, $http, $routeParams, mangaFactory) {
    $scope.mangas = mangaFactory.query({query: $routeParams.query, tag: $routeParams.tag});
    $scope.toggle = function(){
      $scope.isShow = !$scope.isShow;
    };
    $scope.authors = function(manga){
      var authors = [];
      for(var i = 0, length = manga.authors.length; i < length; i++ ){
                      authors.push(manga.authors[i].name);}
      return authors.join(', ');
    };
  });
