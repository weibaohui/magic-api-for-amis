{
  "id" : "5fd0b65310ed4c75a701fd95ce216499",
  "script" : null,
  "groupId" : "d528abe95ca74f3cb195425afd7415af",
  "name" : "json转换",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/json",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"jsonObject\": {\n            \"name\": \"李富贵\"\n        },\n        \"jsonString\": \"{\\\"name\\\":\\\"李富贵\\\"}\"\n    },\n    \"timestamp\": 1615986094038,\n    \"executeTime\": 9\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import 'com.fasterxml.jackson.databind.ObjectMapper' as mapper; // 导入Spring中的类
// 利用jackson进行转换,你也可以选择fastjson、gson进行操作
var json = {
    "name" : "李富贵"
}
var jsonString = '{"name": "李富贵"}'
return {
    'jsonObject' : mapper.readValue(jsonString,Map.class),
    'jsonString' : mapper.writeValueAsString(json)
}