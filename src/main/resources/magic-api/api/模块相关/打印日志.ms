{
  "id" : "ede7d3561adb42bc8ec67d5522d38a91",
  "script" : null,
  "groupId" : "1f1767129e1243fe91e873f62d6954d2",
  "name" : "打印日志",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/log",
  "parameters" : [ {
    "name" : "message",
    "value" : "hello magic-api",
    "description" : "",
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
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"ok\",\n    \"timestamp\": 1615983462666,\n    \"executeTime\": 12\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import log;
// 切换到"运行日志"查看日志信息
log.info('info日志:{}',message);
log.warn('warn日志');
try{
    return 1 / 0;
}catch(e){
    log.error('error日志',e);
}
return 'ok';