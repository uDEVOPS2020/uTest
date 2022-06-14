#!/bin/sh
#
curl -X POST -H "Accept: application/text" -T ./initFiles/config.txt http://localhost:11111/configuration?filename=config.txt
curl -X POST -H "Accept: application/text" -T ./initFiles/JSONFiles_b.txt http://localhost:11111/jsonfilestxt?filename=JSONFiles.txt
curl -X POST -H "Accept: application/text" -T ./initFiles/JSONFiles_b/swagger_8082.json http://localhost:11111/specification?filename=swagger_8082.json
curl -X GET http://localhost:11111/execute?execOption=all
curl -X GET http://localhost:11111/clean