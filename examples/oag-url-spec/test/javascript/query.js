var assert = require('assert');
var SwaggyCExample = require('swaggy_c_example');

describe('google query', function() {

  it('should get search results', function(done) {

    const api = new SwaggyCExample.DefaultApi();

    var callback = function(error, data, response) {
      if (error) {
        done(error);
      } else {
        console.log('API called successfully. Returned data: ' + data);
        const searchResults = data;
        assert.equal(typeof(searchResults), 'string');
        assert.ok(searchResults.length > 0);
        done();
      }
    };
    api.search('OpenAPI Generator', callback);
  });

});
