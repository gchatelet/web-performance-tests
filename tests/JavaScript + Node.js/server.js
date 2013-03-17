var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
      res.writeHead(200, {'Content-Type': 'text/plain'});
      var query = url.parse(req.url, true).query;
      res.end("Hello, " + query["name"]);
}).listen(8080, '0.0.0.0');
