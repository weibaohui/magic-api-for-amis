{
  "id" : "61b45eda9e0144ab89d3b65eea714f27",
  "script" : null,
  "groupId" : "fcab7c3c199b42a39d87da01c78633b3",
  "name" : "for循环",
  "createTime" : 1615982993404,
  "updateTime" : 1615982993404,
  "method" : "GET",
  "path" : "/for",
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
    测试循环
*/
var sum = 0;
for(val in range(0,100)){   //包括0 包括100
    if(val > 90){
        break;  //跳出循环
    }
    if(val % 3 == 0){
        continue;   //进入下一次循环
    }
    sum = sum + val;
}
return sum;