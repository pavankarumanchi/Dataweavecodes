%dw 2.0
output application/json
var keys=["Name","Address","State","ZIP"]
---
payload map ((item, index) -> {
    (keys map ((key) -> {(key): item."$key"}))
} )

//Dynamically creating object by merging an array of fields with an array of objects.so here i create one variable and i use map function.in map i call variable keys then i use another map ((key) -> {(key): item."$key"}.