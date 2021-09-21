{
  "properties" : { },
  "id" : "6ff3d4617ac24aa6b31088f919c6c6c5",
  "script" : null,
  "groupId" : "fcab7c3c199b42a39d87da01c78633b3",
  "name" : "lambda循环map",
  "createTime" : null,
  "updateTime" : 1632192402318,
  "lock" : null,
  "method" : "GET",
  "path" : "/lambda/map",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null,
  "optionMap" : { }
}
================================
var map = {
    key1 : 1,
    key2 : 2,
    key3 : 3
};
var sum = 0;
var keys = '';
map.each((key,value) => {
    keys += key;
    sum += value;

})
return keys + '-' + sum;