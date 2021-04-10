{
  "id" : "8bcd5c086d944cd08fb41e0463b7b478",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "分组",
  "createTime" : 1615983175744,
  "updateTime" : 1615983175744,
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
return 
    select 
        t.api_group_id,
        count(t.api_group_id) count
    from db.select('select api_group_id from magic_api_info') t
    group by t.api_group_id
    order by count(t.api_group_id) desc