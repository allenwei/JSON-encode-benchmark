fs = require('fs')
fs.readFile("/tmp/test.json", function(err, data) {
  var hash = JSON.parse(data)
  var start = new Date().getMilliseconds();
  JSON.stringify(hash)
  var end = new Date().getMilliseconds();
  var time = end - start
  console.log('Execution time: %ds' , time/1000);
})
