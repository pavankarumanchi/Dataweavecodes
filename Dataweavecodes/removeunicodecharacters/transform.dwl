%dw 2.0
import * from dw::core::Strings
output application/json
var unicode = "\u0000"
---
"Mail Add": replaceAll(payload."Mail Add",unicode," ")


//Need to remove all Unicode characters from input data on all fields

//{"Mail Add": "CLEARFIELD UT 084015"}