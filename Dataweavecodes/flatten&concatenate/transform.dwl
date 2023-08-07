%dw 2.0
output application/json
---
{
   "name": [flatten(valuesOf(payload)) joinBy  "-"] 
}

//concatenate the values


/*{
 "name": [
  "abc-def-hij"
 ]
}*/