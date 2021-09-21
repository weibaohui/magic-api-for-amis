{
  "properties" : { },
  "id" : "d875fe71d35f4bc7a418ade47d481849",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "if判断",
  "createTime" : null,
  "updateTime" : 1632192306251,
  "lock" : null,
  "method" : "GET",
  "path" : "/if",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 0,\n    \"timestamp\": 1632190985846,\n    \"executeTime\": 6\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "1",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "message",
      "value" : "success",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "data",
      "value" : "0",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1632190985846",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "6",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  },
  "optionMap" : { }
}
================================
/*
    if 测试
*/
if(a == 1){ 
    return 1;
}else if(a == 2){
    return 2;
}else{
    return 0;
}
/*
对于条件判断，特意支持了简写的方式
如 可以直接写 
1、if(a) 
2、else if(a)
3、while(a) 
4、a ? 1 : 0 

当a的值是以下情况时为false
null
空集合
空Map
数值 == 0
空字符串（length == 0）
false
其它情况一律视为true
*/
