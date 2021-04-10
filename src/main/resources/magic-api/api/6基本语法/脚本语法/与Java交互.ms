{
  "id" : "08208af67848468eb6e8c1c0c22ac819",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "与Java交互",
  "createTime" : null,
  "updateTime" : null,
  "method" : "GET",
  "path" : "/java",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "",
  "headers" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"2021-03-15\",\n    \"timestamp\": 1615816582971,\n    \"executeTime\": 18\n}",
  "description" : null,
  "optionMap" : { }
}
================================
import 'java.util.Date' as Date;
import 'java.text.SimpleDateFormat' as SimpleDateFormat;
var now = new Date();   // 创建对象
var df = new SimpleDateFormat('yyyy-MM-dd');
return df.format(now);  // 调用方法