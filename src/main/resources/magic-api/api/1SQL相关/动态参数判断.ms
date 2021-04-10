{
  "id" : "affaed31406c477790ded329f844a620",
  "script" : null,
  "groupId" : "08c2af4fd56543e690b14515d83d66ae",
  "name" : "动态参数判断",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/params",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"ok\",\n    \"timestamp\": 1615818676485,\n    \"executeTime\": 99\n}",
  "description" : null,
  "optionMap" : { }
}
================================
var ids = ['1','2','3'];

//具体执行的SQL请看打印的运行日志信息。

db.select('select * from magic_api_info where id in (#{ids})')  //对参数自动展开

//var id = '123';
db.select("select * from magic_api_info where id = #{id} ")  //#{} 是占位符，${} 是拼接字符串


//var name = '123';
db.select("select * from magic_api_info where id = '123' ?{name,and api_name = #{name}}")  //if 判断

return 'ok';