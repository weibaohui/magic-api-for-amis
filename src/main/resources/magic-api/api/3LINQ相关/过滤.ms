{
  "id" : "112e04509b274bb8bbac347e29787e21",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "过滤",
  "createTime" : 1615983206716,
  "updateTime" : 1615983206716,
  "method" : "GET",
  "path" : "/filter",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
var list = [{
    sex : 0,
    name : '小明'
},{
    sex : 1,
    name : '小花'
}]
return select * from list t where t.sex = 0