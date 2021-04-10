{
  "id" : "578b5f6bb9644ee18573f80c8321fae1",
  "script" : null,
  "groupId" : "d528abe95ca74f3cb195425afd7415af",
  "name" : "http请求",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/http",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"success\": true,\n        \"message\": \"执行成功\"\n    },\n    \"timestamp\": 1615986002116,\n    \"executeTime\": 8\n}",
  "description" : null,
  "optionMap" : { }
}
================================
// 本Demo采用Jsoup库进行请求
import 'org.jsoup.Jsoup' as Jsoup;
import 'org.jsoup.Connection$Method' as Method;
import 'org.apache.commons.io.FileUtils' as FileUtils;
import 'com.fasterxml.jackson.databind.ObjectMapper' as mapper;
var str = Jsoup.connect('http://127.0.0.1:9999/response/json')
    .method(Method.GET)
    .ignoreContentType(true)
    .execute()
    .body()
return mapper.readValue(str,Map.class)