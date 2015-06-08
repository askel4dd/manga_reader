'use strict';

/**
 * @ngdoc overview
 * @name mangaReaderApp
 * @description
 * # mangaReaderApp
 *
 * Main module of the application.
 */
angular
  .module('mangaReaderApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'Devise'
  ])
  .config(function ($routeProvider) {
    $routeProvider
    .when('/', {
        templateUrl: 'views/manga.html',
        controller: 'MangaCtrl'
      })
      .when('/manga/:id', {
        templateUrl: 'views/current_manga.html',
        controller: 'CurrentMangaCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
