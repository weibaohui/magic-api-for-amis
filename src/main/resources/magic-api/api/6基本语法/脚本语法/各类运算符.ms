{
  "id" : "e0d200eb516e4f4294bf8d0080d8f204",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "各类运算符",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/operator",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"+\": 579,\n        \"-\": -333,\n        \"*\": 56088,\n        \"/\": 0,\n        \"%\": 123,\n        \"++\": 123,\n        \"--\": 124,\n        \">\": false,\n        \">=\": false,\n        \"<\": true,\n        \"<=\": true,\n        \"==\": false,\n        \"===\": false,\n        \"!=\": true,\n        \"!==\": true,\n        \"&&\": 456,\n        \"||\": 123\n    },\n    \"timestamp\": 1615816208185,\n    \"executeTime\": 4\n}",
  "description" : null,
  "optionMap" : { }
}
================================
var a = 123;    // 定义int型变量，定义变量只能使用var。var可以省略
var b = 456;
return {
    '+': a + b,
    '-': a - b,
    '-a' : -a,
    '*': a * b,
    '/': a / b,
    '%': a % b,
    '++': a++,
    '--': a--,
    '>': a > b,
    '>=': a >= b,
    '<': a < b,
    '<=': a <= b,
    '>=': a >= b,
    '==': a == b,
    '===': a === b, // 与JS蕾西，需要类型一致，值一致才返回true
    '!=': a != b,
    '!==': a !== b, // 与JS类似，需类型不一致或 值不一致 才返回true 与 === 相反
    '&&': a && b,   // 与JS类似，如：true && true --> true ，123 && 456 --> 456 ， null && 123 --> 456
    '||': a || b    // 与JS类似，如：false && true --> true ，123 || 456 --> 123 ，null || 123 --> 123
}