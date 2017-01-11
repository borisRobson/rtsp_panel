var express = require('express');
var router = express.Router();
var fs = require('fs');
//var parser = require('../scripts/parser');
var parser = require('../scripts/imxParser');

const xml2js = require('xml2js')
  , numberRE = /^-?([1-9]\d*|0)(\.\d*)?$/
  , dateRE = /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(.\d+)?Z$/
  , prefixMatch = /(?!xmlns)^.*:/
  ;


Object.size = function(obj) {
    var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
};

function getData(path)
{
	var body = [];
    try {
    var fs = require('fs');
    var xml2js = require('xml2js');
    var json;
    var fileData = fs.readFileSync(path, 'utf-8');        
    body = parser.linerase(fileData);
    }catch (ex) {console.log(ex)}

    // Note: the 2 lines above could be replaced with this next one:
    // response.writeHead(200, {'Content-Type': 'application/json'})
    
    var data = JSON.stringify(body);    
    data = data.replace(/"</g,"<");
    data = data.replace(/>"/g,">");    
    data = data.replace(/(\\)/g,"");

    return data;
}

router.post('/device_service', function(req, res, next) {
	//console.log("device");		
	var body = [];
	var filePath = "";

	//assign handlers
	req.on('error',function(err){
		console.log(err.code);
		res.statusCode =500;
		res.send("Internal Error");
	});

	req.on('data', function(chunk){
		body.push(chunk);
	});

	req.on('end', function(){
		filePath = parser.parseBody(body);

		var data = getData(filePath);
	    
	    var len = Object.size(data);
	    	    
	    res.statusCode = 200;    
	    res.setHeader('Content-Type', 'application/soap+xml;charset=utf-8');    
	    res.setHeader('Content-Length', len);
	    res.setHeader('Connection','close');	    
	  
	    process.stdout.write(String(filePath) + '\n');

	    res.write(data);
	    
	    res.end();
    });
});

router.post('/media_service', function(req, res, next) {
	//console.log("media");		
	var body = [];
	var filePath = "";

	//assign handlers
	req.on('error',function(err){
		console.log(err.code);
		res.statusCode =500;
		res.send("Internal Error");
	});

	req.on('data', function(chunk){
		body.push(chunk);
	});

	req.on('end', function(){
		filePath = parser.parseBody(body);

		var data = getData(filePath);
	    
	    var len = Object.size(data);
	    	    
	    res.statusCode = 200;    
	    res.setHeader('Content-Type', 'application/soap+xml;charset=utf-8');    
	    res.setHeader('Content-Length', len);
	    res.setHeader('Connection','close');	    
	  
	    process.stdout.write(String(filePath) + '\n');

	    res.write(data);
	    
	    res.end();
    });
});

module.exports = router;
