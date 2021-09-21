{
  "properties" : { },
  "id" : "f211d0eaf72d478e9100412577642dd1",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "扩展运算符",
  "createTime" : null,
  "updateTime" : 1632192313276,
  "lock" : null,
  "method" : "GET",
  "path" : "/spread",
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
    a : 1,
    b : 2
}
var list = [1,2,3,4,5]
return {
    ...map, //展开Map
    c : 3,
    d : [...list]   // 展开list
};;