{
  "id" : "cc3a5c42d0e94204aca7d5e5ecca32f3",
  "script" : null,
  "groupId" : "18a58c0d73a14135bfca55274d4e0ffc",
  "name" : "设置Cookie",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/cookie",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "{\r\n\t\r\n}",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"请按F12后在控制台中查看\",\n    \"timestamp\": 1615817035547,\n    \"executeTime\": 5\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import response;
response.addCookie('name','value');
return '请按F12后在控制台中查看'