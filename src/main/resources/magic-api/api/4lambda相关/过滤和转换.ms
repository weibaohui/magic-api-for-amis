{
  "id" : "02f99c967c184fa4a7c7f360864f08dc",
  "script" : null,
  "groupId" : "aa81e76ddfd7471a97aa423abd80b2aa",
  "name" : "过滤和转换",
  "createTime" : 1615983383200,
  "updateTime" : 1615983383200,
  "method" : "GET",
  "path" : "/filter-map",
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
// 利用map函数对list进行过滤，然后进行转换
return list.filter(item=>item.sex == 0).map((item)=>{
    sex : item.sex == 0 ? '男' : '女',
    name : item.name
});