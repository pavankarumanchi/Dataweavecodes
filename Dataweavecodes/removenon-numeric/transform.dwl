%dw 2.0
output application/json
import isNumeric from dw::core::Strings
 
---
"Transaction id":(payload."Transaction id" splitBy  ",") filter isNumeric($)

//Here I  remove a non numeric values from a string for that purpose I use SplitBy function to seperate the values with Strings(splitBy  ",") then I use filter and isNumeric functions(filter isNumeric($)) to remove the Non-numeric values.