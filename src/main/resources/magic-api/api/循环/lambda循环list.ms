{
  "id" : "62fe9e49f6f54b67a0aa351baf8d0107",
  "script" : null,
  "groupId" : "fcab7c3c199b42a39d87da01c78633b3",
  "name" : "lambda循环list",
  "createTime" : 1615983025978,
  "updateTime" : 1615983025978,
  "method" : "GET",
  "path" : "/lambda/list",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
var list = [1,2,3,4,5,6,7,8,9,10]
var sum = 0;
list.each(it => sum+= it + 1)
return sum