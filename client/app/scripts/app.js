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
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .when('/manga', {
        templateUrl: 'views/manga.html',
        controller: 'MangaCtrl'
      })
      .when('/manga/:id', {
        templateUrl: 'views/current_manga.html',
        controller: 'CurrentMangaCtrl'
      })
      .when('/tag/:tag', {
        templateUrl: 'views/manga.html',
        controller: 'MangaCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
