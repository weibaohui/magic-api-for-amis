{
  "id" : "ad3bcec84b2740c3889cc467e39fa2d8",
  "script" : null,
  "groupId" : "aa81e76ddfd7471a97aa423abd80b2aa",
  "name" : "过滤",
  "createTime" : 1615983326607,
  "updateTime" : 1615983326607,
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
// 利用map函数对list进行过滤
return list.filter((item)=>item.sex == 0);