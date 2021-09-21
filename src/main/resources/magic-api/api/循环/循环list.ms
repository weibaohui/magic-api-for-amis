{
  "properties" : { },
  "id" : "baf2ae4a01e74929a966a8226ac1618f",
  "script" : null,
  "groupId" : "fcab7c3c199b42a39d87da01c78633b3",
  "name" : "循环list",
  "createTime" : null,
  "updateTime" : 1632192389251,
  "lock" : null,
  "method" : "GET",
  "path" : "/list",
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
    测试循环List
*/
var list = [1,2,3,4,5];
var sum = 0;
for(val in list){
    sum = sum + val;
}
return sum;