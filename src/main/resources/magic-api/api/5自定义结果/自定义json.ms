{
  "id" : "a35baae914f64a2784d0fa2b6a281bbb",
  "script" : null,
  "groupId" : "2b0ce800b6c543efa284ae695e14e4eb",
  "name" : "自定义json",
  "createTime" : 1615984006439,
  "updateTime" : 1615984006439,
  "method" : "GET",
  "path" : "/json",
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
// 注意，这种方式仅仅适合临时输出的格式，如果需要全局统一JSON结果，请参考文档
return response.json({
    success : true,
    message : '执行成功'
});