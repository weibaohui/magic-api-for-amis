{
  "id" : "4710d409607a4b2aba00b028e8d36dad",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "字段转换",
  "createTime" : 1615983269672,
  "updateTime" : 1615983269672,
  "method" : "GET",
  "path" : "/map",
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
    name : '小明',
    age : 19
},{
    sex : 1,
    name : '小花',
    age : 18
}];
return 
    select 
        t.age > 18 ? '成人' : '未成年' age,
        t.sex == 0 ? '男' : '女' sex,
        t.name
    from list t;