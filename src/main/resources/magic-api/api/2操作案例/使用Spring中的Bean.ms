{
  "id" : "83c6b79c8723457e85143f3612e6644f",
  "script" : null,
  "groupId" : "d528abe95ca74f3cb195425afd7415af",
  "name" : "使用Spring中的Bean",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/spring",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"/magic/web\",\n    \"timestamp\": 1615986308312,\n    \"executeTime\": 3\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import 'org.springframework.core.env.Environment' as env;   // 导入Spring中的bean
return env.getProperty('magic-api.web');