{
  "id" : "8103a3a701394e52827da7433211c871",
  "script" : null,
  "groupId" : "1f1767129e1243fe91e873f62d6954d2",
  "name" : "手动验证参数",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/assert",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": -1000,\n    \"message\": \"object is not an instance of declaring class\",\n    \"data\": null,\n    \"timestamp\": 1615983817032,\n    \"executeTime\": 14586\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import assert;
assert.notNull(message, 0, 'message 不能为null');
assert.regx(id,'\d+', 0, 'id必须是数字');
return 'ok';