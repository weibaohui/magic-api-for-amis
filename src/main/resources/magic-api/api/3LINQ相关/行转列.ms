{
  "properties" : { },
  "id" : "da433c8708c74cb3ad3482f8fdb09119",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "行转列",
  "createTime" : null,
  "updateTime" : 1632192538946,
  "lock" : null,
  "method" : "GET",
  "path" : "/pivot",
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
var result = db.select('select api_method,api_group_id from magic_api_info');
var groups = db.select('select id,group_name from magic_group');
var pivot = (list)=>list.group(it=> it.api_method,values=> values.size())
return
    select * from (
        select 
            mg.group_name,
            pivot(ma)
        from result ma 
        join groups mg on mg.id = ma.api_group_id
        group by ma.api_group_id
        having count(ma.api_method) > 5
    ) t order by t.POST desc
// 期待结果如下
/*
  -     GET    POST 
分组1    X       X
分组2    X       X
分组3    X       X
分组4    X       X
其中X为该分组对应请求方法的数量
*/
