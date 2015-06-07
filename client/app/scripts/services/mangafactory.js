'use strict';

/**
 * @ngdoc service
 * @name mangaReaderApp.mangaFactory
 * @description
 * # mangaFactory
 * Factory in the mangaReaderApp.
 */
angular.module('mangaReaderApp')
  .factory('mangaFactory', function ($resource) {
    // Service logic
    // ...

    // Public API here
    return $resource('/api/mangas/:id.json', {}, {});
  });
