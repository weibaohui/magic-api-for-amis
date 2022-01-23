{
  "properties" : { },
  "id" : "5fb1a0ff6127444a863e87f9a1dee3e4",
  "script" : null,
  "groupId" : "b0545c5475614b9999d8dc4fc2fa9d80",
  "name" : "删除",
  "createTime" : null,
  "updateTime" : 1642947836187,
  "lock" : "0",
  "method" : "POST",
  "path" : "/delete/{id}",
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
import log;

log.warn(id);
return db.table('charts').where().eq("id",id).delete()