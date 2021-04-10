{
  "id" : "83d9fa7ef5a741e793dacfb0755c7535",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "异步执行",
  "createTime" : 1615983519462,
  "updateTime" : 1615983519462,
  "method" : "GET",
  "path" : "/async",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================

var list = [];
for(index in range(1,10)){
    // 执行SQL时，为了线程安全，需要把index参数放入lambda参数中。
    list.add(async (index)=>db.selectInt('select #{index}'));
}
return list.map(f => f.get())