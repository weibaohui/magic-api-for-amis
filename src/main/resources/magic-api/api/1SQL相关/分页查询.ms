{
  "id" : "a105153610374cb4a8102852542c2b7d",
  "script" : null,
  "groupId" : "08c2af4fd56543e690b14515d83d66ae",
  "name" : "分页查询",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/page",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "页码",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "1",
    "validateType" : null,
    "error" : null,
    "expression" : null
  }, {
    "name" : "size",
    "value" : "2",
    "description" : "页大小",
    "required" : false,
    "dataType" : null,
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null
  } ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"total\": 49,\n        \"list\": [\n            {\n                \"api_name\": \"文件下载\"\n            },\n            {\n                \"api_name\": \"读取配置\"\n            }\n        ]\n    },\n    \"timestamp\": 1615817365659,\n    \"executeTime\": 28\n}",
  "description" : null,
  "optionMap" : { }
}
================================
var sql = """
    select api_name from magic_api_info
"""
return db.page(sql);