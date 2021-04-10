{
  "id" : "df85508a9597424394562b40f19a67ef",
  "script" : null,
  "groupId" : "18a58c0d73a14135bfca55274d4e0ffc",
  "name" : "设置Header",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/header",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "{\r\n\t\r\n}",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"请按F12在控制台中查看\",\n    \"timestamp\": 1615817099072,\n    \"executeTime\": 4\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import response;
response.setHeader('key','value');
return '请按F12在控制台中查看'