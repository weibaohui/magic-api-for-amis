{
  "id" : "6b29727322e34ac8968cd2e51d6f0e41",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "try_catch",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/try",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"finally\",\n    \"timestamp\": 1615816823911,\n    \"executeTime\": 2\n}",
  "description" : null,
  "optionMap" : { }
}
================================
try{
    var c = 1 / 0
}catch(e){  //不用写类型，只写变量即可
    return e.getMessage();
}finally{
    return 'finally'
}
// catch 和finally 都可以不写。
return 'ok'