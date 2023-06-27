%dw 2.0
output application/json
---
payload filterObject ((value, key, index) ->sizeOf(value)!=0)

//Filter out blank fields from an array.

/*{
 "flightNumber": "3234"
}*/