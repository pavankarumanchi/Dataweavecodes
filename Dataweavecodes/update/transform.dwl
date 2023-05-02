%dw 2.0
import * from dw::util::Values
output application/json
---
payload map ($ update {
    case firstName at .name.firstName -> "pavan"
    case lastName at .name.lastName -> "karumanchi"
} )

// I update the firstName and lastname dynamically in a For Each loop by (import * from dw::util::Values) here i use update function. The function returns object with the specified field and value. here i use map function because the input is in array.