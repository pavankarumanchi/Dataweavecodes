%dw 2.0
output application/json
---
payload map ((item, index) -> item mapObject ((value, key, index) -> 
 if ((key ~= "Id") or (key~= "type"))
 {

 }else (key): value

 )
)distinctBy ($)

//Here I need to filter out the duplicate or repeated data from the payload.so I use if/else conditon i remove "Id" and "type" fields and then i use distinctBy function for the purpose of to remove the duplicate values.