{
  "properties" : { },
  "id" : "8bcd5c086d944cd08fb41e0463b7b478",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "分组",
  "createTime" : null,
  "updateTime" : 1632192548427,
  "lock" : null,
  "method" : "GET",
  "path" : "/group",
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
return 
    select 
        t.api_group_id,
        count(t.api_group_id) count
    from db.select('select api_group_id from magic_api_info') t
    group by t.api_group_id
    order by count(t.api_group_id) desc