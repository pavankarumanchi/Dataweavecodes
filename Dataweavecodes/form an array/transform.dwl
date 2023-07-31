%dw 2.0
output application/json
var call = payload filter ((item, index) ->item.ID > 9001)
---
call map {
"XMLP":$.XML,
"PRIMARY_HINBAN":$.PRIMARY_HINBAN,
"HINBAN":$.HINBAN
}

// Here to form an array when data is grouped by groupBy