%dw 2.0
output application/json
---
payload.Exchange_shippingGroup map write  ($, "application/json")

//Here I want to convert array of objects to string.so here i use map because the data is in array then i use write function.