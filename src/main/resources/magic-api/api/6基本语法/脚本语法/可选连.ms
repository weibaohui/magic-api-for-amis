{
  "properties" : { },
  "id" : "64ab21bd4d7c4743a389b332af7eba72",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "可选连",
  "createTime" : null,
  "updateTime" : 1632192324973,
  "lock" : null,
  "method" : "GET",
  "path" : "/optional",
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
    a : {
        b : 'ok'
    },
    c : 1
}
// ?. 不会报错，.会报错
return map.a.bbbb?.c + '-' + map.a?.b;