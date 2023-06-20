%dw 2.0
output application/json
---
{
 "Keys":keysOf(payload),
 "Values":valuesOf(payload)
}
//Filter Key & Values of Objects in Separate Array