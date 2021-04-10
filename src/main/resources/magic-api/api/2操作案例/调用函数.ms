{
  "id" : "5a47cfbd857f47b196681e66d3aaa18f",
  "script" : null,
  "groupId" : "d528abe95ca74f3cb195425afd7415af",
  "name" : "调用函数",
  "createTime" : 1615985597097,
  "updateTime" : 1615985597097,
  "method" : "GET",
  "path" : "/function",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
import '@/test/add' as add;
import '@/test/nested' as nested;
return {
    'add': add(1,2),
    'nested': nested()
}