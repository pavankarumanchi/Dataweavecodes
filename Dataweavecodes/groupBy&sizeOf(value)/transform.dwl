%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.dept) pluck ((value, key, index) ->{
     "department": key,
     "count": sizeOf(value)
} )
//Here i know the how mant departments are there and count size of departments.So i use first groupBy based on"dept" grouping the objects.and then i use pluck and map the department with key and count with sizeOf(value).
/*
[
{
"department":"IT",
"count":2
},
{
"department":"oparations",
"count":1
},
{
"department":"finace",
"count":1
}
*/