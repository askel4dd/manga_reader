'use strict';

/**
 * @ngdoc function
 * @name mangaReaderApp.controller:CurrentmangaCtrl
 * @description
 * # CurrentmangaCtrl
 * Controller of the mangaReaderApp
 */
angular.module('mangaReaderApp')
.controller('CurrentMangaCtrl', function ($scope, $routeParams, mangaFactory) {
    $scope.manga = mangaFactory.get({ id: $routeParams.id });
  });
