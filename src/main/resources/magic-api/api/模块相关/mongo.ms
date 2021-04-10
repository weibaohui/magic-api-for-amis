{
  "id" : "6521572bd9334bd59d7648ac47e79c2e",
  "script" : null,
  "groupId" : "1f1767129e1243fe91e873f62d6954d2",
  "name" : "mongo",
  "createTime" : 1615983549524,
  "updateTime" : 1615983549524,
  "method" : "GET",
  "path" : "/mongo",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
/*
 !!!!!! DEMO网站未集成Mongo，以下只是作为示例，无法执行。
*/
import mongo;   //导入mongodb模块

//return mongo.test.col1.insert({name : 'magic'});
return mongo.test.col1.find({name : 'magic'}).list();