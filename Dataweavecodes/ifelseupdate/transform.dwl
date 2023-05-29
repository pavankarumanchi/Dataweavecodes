%dw 2.0
import update from dw::util::Values
output application/json
var acc= "001"
---
payload map ((item, index) -> 
 if(item.connectionId == acc)
 item update ["Valid Mapping"]  with "Y"
 else item
)
//Here i import the dw::util::Values and create one variable var acc= "001" use map function using if/else condition and update the value with required value.