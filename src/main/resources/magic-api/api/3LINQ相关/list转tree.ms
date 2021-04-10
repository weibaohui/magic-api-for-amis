{
  "id" : "d6858902837a4b63b4bc9a2292dc8ee5",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "list转tree",
  "createTime" : 1615983226114,
  "updateTime" : 1615983226114,
  "method" : "GET",
  "path" : "/tree",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================

var toTree = (list,parentId) => select t.*,toTree(list,t.id) children from list t where t.parent_id = parentId

// 根节点为 0
return toTree(db.select('select id,group_name,parent_id from magic_group'),'0')