{
  "properties" : { },
  "id" : "efffbfb85cf745d695971f6ba42d518f",
  "script" : null,
  "groupId" : "b0545c5475614b9999d8dc4fc2fa9d80",
  "name" : "批量删除",
  "createTime" : null,
  "updateTime" : 1642949904894,
  "lock" : "0",
  "method" : "POST",
  "path" : "/batch-delete/{ids}",
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
// import log;
//e
var idList=ids.split(",")
var sql = """
delete  from charts
where id in
<foreach item='item' index='index' collection='idList'
      open="(" separator="," close=")">
    #{item}
</foreach>
"""
// log.warn(sql);
return db.update(sql)
// return db.table("charts").where().in("id",idList).delete()