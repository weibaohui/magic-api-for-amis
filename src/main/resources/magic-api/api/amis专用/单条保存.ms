{
  "properties" : { },
  "id" : "93dec4e7d98c43adb7e25cb6fc32e8a9",
  "script" : null,
  "groupId" : "b0545c5475614b9999d8dc4fc2fa9d80",
  "name" : "单条保存",
  "createTime" : null,
  "updateTime" : 1642949741210,
  "lock" : "0",
  "method" : "POST",
  "path" : "/save",
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
return db.table('charts')
        .primary('id')
        .save({
            id:body.id, // 当id不为null时做修改，否则做插入
            email: body.email,
            userName: body.userName,
            title: body.title,
            chartData: body.chartData
        }) 