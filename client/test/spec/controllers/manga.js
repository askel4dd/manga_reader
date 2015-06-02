'use strict';

describe('Controller: MangactrlCtrl', function () {

  // load the controller's module
  beforeEach(module('mangaReaderApp'));

  var MangactrlCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    MangactrlCtrl = $controller('MangactrlCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
