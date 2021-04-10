{
  "id" : "dd98420301264750bbf97138e206df95",
  "script" : null,
  "groupId" : "d528abe95ca74f3cb195425afd7415af",
  "name" : "数值转换",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/number/convert",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": -1000,\n    \"message\": \"Expected ',', but got 'isInt'\",\n    \"data\": null,\n    \"timestamp\": 1615984558701,\n    \"executeTime\": 7\n}",
  "description" : null,
  "optionMap" : { }
}
================================
return {
    'fixed' : 123.455.toFixed(2), //仿JS ,会返回String
    'round' : 123.452.round(2),  // 保留两位小数
    'percent': 0.456789.asPercent(2), //转为百分比，保留2位小数
    'ceil': 1.1.ceil(), //向上取整
    'floor': 1.9.floor(), // 向下取整
    '::int': '-456.789'::int   // 强制类型转换
}