%dw 2.0
output application/json
---
payload filter ($.moveType == "105") groupBy ($.id
++ $.refDoc) pluck $

//Here i want to filter and group the same objects.so i i use the filter ($.moveType == "105") then i use groupby and concatenation the ($.id++ $.refDoc) by using pluck i changed into array.