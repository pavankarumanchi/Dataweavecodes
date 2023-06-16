%dw 2.0
output application/json
fun trimValue(value)= trim(value)
fun trimAllValues(obj)=
  obj mapObject {
        (if ('$$' == "STATUS") (($$): $) else ($$): trimValue($))
      }
---
"ORDERS": payload.ORDERS map ((item, index) -> 
 trimAllValues(item)
)
//here i done trim spaces in the string so i create custom function trim and i use mapobject and write if/else condition (if ('$$' == "STATUS") (($$): $) else ($$): trimValue($)).in this condition if $$ = key it will write the value.else it will trim the value spaces. 