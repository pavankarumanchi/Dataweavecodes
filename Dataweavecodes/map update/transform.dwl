%dw 2.0
import * from dw::util::Values
output application/json
var c= "001"
---
payload map ((item, index) -> 
 if(item.connectionId == c)
 item update ["Valid Mapping"]  with "Y"
 else item
)

//Here i done the update the value instead of "x" in first object so first i import the (import * from dw::util::Values) the i create one variable (var c= "001").then i use map function beacause the input is in array of objects.in map i use if/else condition.if(item.connectionId == c) if this condition will satisfied it will update the "Valid Mapping" with "Y" else it will print "item".