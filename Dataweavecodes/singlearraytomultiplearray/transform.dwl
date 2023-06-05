%dw 2.0
output application/json
var a = payload groupBy (if($.parentId == "") $.id  else $.parentId)
---
namesOf(a) map ({
    parentId : $,
    childRecords: a[$]
})

//Here formatting from single array to multiple array based on parent record.So i create variable "a" (var a = payload groupBy (if($.parentId == "") $.id  else $.parentId)) in variable in use groupBy and if/else. if (if($.parentId == "") $.id the parentId is in String it will print the $.Id.else it will print the (else $.parentId)).after this i call the variable and i use map function in map i call parentId and childRecords.so based on the parentId it will seperate the single array into subarrays.
