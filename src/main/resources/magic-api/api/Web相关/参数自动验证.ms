{
  "id" : "89640999511b49a8b8f77fba690f4412",
  "script" : null,
  "groupId" : "18a58c0d73a14135bfca55274d4e0ffc",
  "name" : "参数自动验证",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/validate",
  "parameters" : [ {
    "name" : "id",
    "value" : "",
    "description" : "",
    "required" : true,
    "dataType" : null,
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : "id必填",
    "expression" : null
  }, {
    "name" : "age",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "pattern",
    "error" : "age必须为数字",
    "expression" : "^\\d+$"
  }, {
    "name" : "phone",
    "value" : "",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "expression",
    "error" : "手机号必填且必须是11位",
    "expression" : "phone.length() == 11"
  } ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 0,\n    \"message\": \"id必填\",\n    \"data\": null,\n    \"timestamp\": 1615984896144,\n    \"executeTime\": 0\n}",
  "description" : null,
  "optionMap" : { }
}
================================
return '参数验证通过' 