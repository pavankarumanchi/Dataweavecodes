%dw 2.0
output application/json writeAttributes=true
---
(payload.Document.*Field filter ($.@name contains  "xFndVirusScanDate" ))


//Here I need to read value of "xFndVirusScanDate" without hardcoding so i use filter and contains.so firstly (payload.Document.*Field) *field means in input we have multiple field names so i use (*).then use filter function ($.@name contains  "xFndVirusScanDate" ))here ($) means value.and (@name) means in input xml we have namespaces so i use (@).contains fileld name "xFndVirusScanDate".this will read the required value.