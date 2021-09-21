{
  "properties" : { },
  "id" : "e1b2f29804134742a457fd996c4137a8",
  "script" : null,
  "groupId" : "fcab7c3c199b42a39d87da01c78633b3",
  "name" : "循环map",
  "createTime" : null,
  "updateTime" : 1632192392713,
  "lock" : null,
  "method" : "GET",
  "path" : "/map",
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
/*
    测试循环Map
*/
var map = {
    key1 : 1,
    key2 : 2,
    key3 : 3
};
var sum = 0;
var keys = '';
for(key,value in map){
    sum = sum + value;
    keys = keys + key
}
return keys + '-' + sum;