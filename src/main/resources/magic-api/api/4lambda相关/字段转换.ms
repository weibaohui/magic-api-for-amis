{
  "id" : "b19a109bbabb44448e2a74bf0bfd168b",
  "script" : null,
  "groupId" : "aa81e76ddfd7471a97aa423abd80b2aa",
  "name" : "字段转换",
  "createTime" : 1615983339688,
  "updateTime" : 1615983339688,
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

var getAge = (age)=>{
    return age > 18 ? '成人' : '未成年'
}
// 利用map函数对list进行过滤
return list.map((item)=>{
    age : getAge(item.age),
    sex : item.sex == 0 ? '男' : '女',
    name : item.name
});