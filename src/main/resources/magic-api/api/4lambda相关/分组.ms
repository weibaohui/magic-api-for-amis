{
  "id" : "1c65487a57b2457eb5d13b066889ee76",
  "script" : null,
  "groupId" : "aa81e76ddfd7471a97aa423abd80b2aa",
  "name" : "分组",
  "createTime" : 1615983368435,
  "updateTime" : 1615983368435,
  "method" : "GET",
  "path" : "/group",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
// 分组后计算每组的数量
return db.select('select api_group_id from magic_api_info')
    // 根据api_group_id 分组，分组后，值为分组结果的大小
    .group(it => it.api_group_id,list => list.size())
    // 根据value排序
    .sort((k1,k2,v1,v2) => v2 - v1)