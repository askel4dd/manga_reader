'use strict';

describe('Controller: CurrentmangaCtrl', function () {

  // load the controller's module
  beforeEach(module('mangaReaderApp'));

  var CurrentmangaCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    CurrentmangaCtrl = $controller('CurrentmangaCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
