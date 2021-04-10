{
  "id" : "d875fe71d35f4bc7a418ade47d481849",
  "script" : null,
  "groupId" : "1534958e40ff4037a50bd9d3c25bceb5",
  "name" : "if判断",
  "createTime" : 1615816620872,
  "updateTime" : 1615816620872,
  "method" : "GET",
  "path" : "/if",
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
    if 测试
*/
if(a == 1){ 
    return 1;
}else if(a == 2){
    return 2;
}else{
    return 0;
}
/*
对于条件判断，特意支持了简写的方式
如 可以直接写 
1、if(a) 
2、else if(a)
3、while(a) 
4、a ? 1 : 0 

当a的值是以下情况时为false
null
空集合
空Map
数值 == 0
空字符串（length == 0）
false
其它情况一律视为true
*/
