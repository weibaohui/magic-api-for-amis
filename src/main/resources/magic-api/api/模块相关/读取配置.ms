{
  "id" : "561a0fb12e4949f7be713207f7fc13c1",
  "script" : null,
  "groupId" : "1f1767129e1243fe91e873f62d6954d2",
  "name" : "读取配置",
  "createTime" : 1615983502669,
  "updateTime" : 1615983502669,
  "method" : "GET",
  "path" : "/env",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
import env; 
// 读取Spring中的配置
return env.get('magic-api.web')