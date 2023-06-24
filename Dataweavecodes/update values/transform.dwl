%dw 2.0
import mapLeafValues from dw::util::Tree
output application/json
---
payload mapLeafValues
    if ($$[-1].selector == "thisname") $
    else upper($)


//Create a DataWeave script that will update all the values to uppercase, except the ones in which the field equals thisname.For example, the first field name with the value "a" has to be transformed to "A". However, the field thisname with the value of "def" should stay the same.