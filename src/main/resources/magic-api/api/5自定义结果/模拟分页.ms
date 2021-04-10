{
  "id" : "48a3e16b86d54388a7e5571eac477d72",
  "script" : null,
  "groupId" : "2b0ce800b6c543efa284ae695e14e4eb",
  "name" : "模拟分页",
  "createTime" : 1615983958385,
  "updateTime" : 1615983958385,
  "method" : "GET",
  "path" : "/page",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
import response;
var total = 5;  //模拟一共有多少条数据
var list = [1,2];   //模拟数据项
return response.page(total,list);