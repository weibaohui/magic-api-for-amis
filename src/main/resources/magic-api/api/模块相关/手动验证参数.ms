{
  "properties" : { },
  "id" : "8103a3a701394e52827da7433211c871",
  "script" : null,
  "groupId" : "1f1767129e1243fe91e873f62d6954d2",
  "name" : "手动验证参数",
  "createTime" : null,
  "updateTime" : 1632190833333,
  "lock" : null,
  "method" : "GET",
  "path" : "/assert",
  "parameters" : [ {
    "name" : "message",
    "value" : "1",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "id",
    "value" : "12",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 0,\n    \"message\": \"id必须是数字\",\n    \"data\": null,\n    \"timestamp\": 1632190828226,\n    \"executeTime\": 3\n}",
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
      "name" : "message",
      "value" : "id必须是数字",
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
      "value" : "null",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1632190828226",
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
      "value" : "3",
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
assert message != null : 0, 'message 不能为null'
var regx = /^\d+$/;
assert regx.test(id) : 0, 'id必须是数字';
return 'ok';