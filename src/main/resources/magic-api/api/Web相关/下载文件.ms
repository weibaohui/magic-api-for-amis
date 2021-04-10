{
  "id" : "9973ddc13e0543dc9b44595836ce4090",
  "script" : null,
  "groupId" : "18a58c0d73a14135bfca55274d4e0ffc",
  "name" : "下载文件",
  "createTime" : 1615817141026,
  "updateTime" : 1615817141026,
  "method" : "GET",
  "path" : "/download",
  "parameters" : [ ],
  "option" : "[]",
  "requestBody" : "{\r\n\t\r\n}",
  "headers" : [ ],
  "responseBody" : null,
  "description" : null,
  "optionMap" : { }
}
================================
import response;
return response.download('文件内容','test.txt');