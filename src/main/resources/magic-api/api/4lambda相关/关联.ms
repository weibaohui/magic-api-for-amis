{
  "properties" : { },
  "id" : "6328b06b544d4b7a9fd95497fab1717c",
  "script" : null,
  "groupId" : "aa81e76ddfd7471a97aa423abd80b2aa",
  "name" : "关联",
  "createTime" : null,
  "updateTime" : 1632192523522,
  "lock" : null,
  "method" : "GET",
  "path" : "/join",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null,
  "optionMap" : { }
}
================================
return db.camel().select('select api_name,api_group_id from magic_api_info')
    // 关联上分组
    .join(db.camel().select('select id,group_name from magic_group'),(t1,t2) => t1.apiGroupId == t2.id)
    // 关联后转换结果
    .map(it => {
        name : it.apiName,
        groupId: it.apiGroupId,
        groupName: it.groupName
    })