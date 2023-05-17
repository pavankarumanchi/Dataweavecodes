%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.order.Year ++  item.order.Type )



// Here I want to grouping based on year and type.So i use groupBy function firstly i call the year
// (item.order.Year) it will print the year and use concatenate and i call type(item.order.Type) it will print the type.so the objects are grouping under year and type.