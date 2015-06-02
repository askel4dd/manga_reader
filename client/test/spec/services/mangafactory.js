'use strict';

describe('Service: mangaFactory', function () {

  // load the service's module
  beforeEach(module('mangaReaderApp'));

  // instantiate service
  var mangaFactory;
  beforeEach(inject(function (_mangaFactory_) {
    mangaFactory = _mangaFactory_;
  }));

  it('should do something', function () {
    expect(!!mangaFactory).toBe(true);
  });

});
