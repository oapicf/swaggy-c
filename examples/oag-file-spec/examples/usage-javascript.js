var SwaggyCExample = require('swaggy_c_example');

var api = new SwaggyCExample.DefaultApi();
var q = 'OpenAPI Generator';
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
    process.exitCode = 1;
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.search(q, callback);
