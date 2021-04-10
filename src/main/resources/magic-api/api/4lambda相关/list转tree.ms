{
  "id" : "8c5642b3f026430db18c5e2cf223ea41",
  "script" : null,
  "groupId" : "aa81e76ddfd7471a97aa423abd80b2aa",
  "name" : "list转tree",
  "createTime" : 1615983313969,
  "updateTime" : 1615983313969,
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
//var toTree = (list,parentId)=>list.filter(it => it.parent_id == parentId).each(it=>it.children = toTree(list,it.id))
// 上面为简写
var toTree = (list,parentId)=>{
    return list.filter(it => it.parent_id == parentId) // 根据parentId 过滤当前节点
    .each(it=>{
        it.children = toTree(list,it.id)    // 过滤后循环这些节点递归添加children属性
    }) 
}
// 根节点为 0
return toTree(db.select('select id,group_name,parent_id from magic_group'),'0')