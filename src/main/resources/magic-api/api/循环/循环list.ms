{
  "id" : "baf2ae4a01e74929a966a8226ac1618f",
  "script" : null,
  "groupId" : "fcab7c3c199b42a39d87da01c78633b3",
  "name" : "循环list",
  "createTime" : 1615982965931,
  "updateTime" : 1615982965931,
  "method" : "GET",
  "path" : "/list",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
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