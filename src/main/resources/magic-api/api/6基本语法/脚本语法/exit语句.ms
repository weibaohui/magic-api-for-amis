{
  "id" : "fe3147eb81cd48089a635f7a94758009",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "exit语句",
  "createTime" : 1615983896777,
  "updateTime" : 1615983896777,
  "method" : "GET",
  "path" : "/exit",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
if(true){
    exit 400,'参数填写有误'
}
// 第一个参数为code，第二个为message，第三个为data，至少要填写一个参数。
exit 200,'success','ok'