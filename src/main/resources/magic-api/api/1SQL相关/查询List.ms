{
  "id" : "bbbc717be2d7434faa2364324a14c261",
  "script" : null,
  "groupId" : "08c2af4fd56543e690b14515d83d66ae",
  "name" : "查询List",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/list",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [\n        {\n            \"api_name\": \"文件下载\"\n        },\n        {\n            \"api_name\": \"读取配置\"\n        },\n        {\n            \"api_name\": \"自定义json\"\n        },\n        {\n            \"api_name\": \"日期格式化\"\n        },\n        {\n            \"api_name\": \"调用函数\"\n        },\n        {\n            \"api_name\": \"if\"\n        },\n        {\n            \"api_name\": \"空值转换\"\n        },\n        {\n            \"api_name\": \"try-catch\"\n        },\n        {\n            \"api_name\": \"自定义分页\"\n        },\n        {\n            \"api_name\": \"调用其他接口\"\n        },\n        {\n            \"api_name\": \"手动关联\"\n        },\n        {\n            \"api_name\": \"while\"\n        },\n        {\n            \"api_name\": \"生成验证码\"\n        },\n        {\n            \"api_name\": \"使用Linq动态行转列\"\n        },\n        {\n            \"api_name\": \"参数验证\"\n        },\n        {\n            \"api_name\": \"mongo\"\n        },\n        {\n            \"api_name\": \"字段转换\"\n        },\n        {\n            \"api_name\": \"循环Map\"\n        },\n        {\n            \"api_name\": \"lambda循环map\"\n        },\n        {\n            \"api_name\": \"参数测试\"\n        },\n        {\n            \"api_name\": \"list转tree\"\n        },\n        {\n            \"api_name\": \"exit\"\n        },\n        {\n            \"api_name\": \"使用Linq转Tree\"\n        },\n        {\n            \"api_name\": \"异步执行\"\n        },\n        {\n            \"api_name\": \"过滤和转换\"\n        },\n        {\n            \"api_name\": \"动态行转列\"\n        },\n        {\n            \"api_name\": \"定义变量\"\n        },\n        {\n            \"api_name\": \"测试日志\"\n        },\n        {\n            \"api_name\": \"缓存测试\"\n        },\n        {\n            \"api_name\": \"简单分组\"\n        },\n        {\n            \"api_name\": \"事务\"\n        },\n        {\n            \"api_name\": \"分页测试\"\n        },\n        {\n            \"api_name\": \"使用Linq过滤\"\n        },\n        {\n            \"api_name\": \"列名转换\"\n        },\n        {\n            \"api_name\": \"redis\"\n        },\n        {\n            \"api_name\": \"操作符\"\n        },\n        {\n            \"api_name\": \"使用Linq字段转换\"\n        },\n        {\n            \"api_name\": \"循环List\"\n        },\n        {\n            \"api_name\": \"使用Linq分组\"\n        },\n        {\n            \"api_name\": \"定义lambda\"\n        },\n        {\n            \"api_name\": \"扩展运算符\"\n        },\n        {\n            \"api_name\": \"List过滤\"\n        },\n        {\n            \"api_name\": \"与Java交互\"\n        },\n        {\n            \"api_name\": \"使用Linq关联\"\n        },\n        {\n            \"api_name\": \"for循环\"\n        },\n        {\n            \"api_name\": \"lambda循环list\"\n        },\n        {\n            \"api_name\": \"http请求\"\n        },\n        {\n            \"api_name\": \"可选链\"\n        },\n        {\n            \"api_name\": \"测试执行SQL\"\n        }\n    ],\n    \"timestamp\": 1615817287366,\n    \"executeTime\": 472\n}",
  "description" : null,
  "optionMap" : { }
}
================================
var sql = """
    select api_name from magic_api_info;
"""
return db.select(sql);