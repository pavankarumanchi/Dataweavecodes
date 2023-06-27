%dw 2.0
import * from dw::core::Strings
output application/json
---
{
 "ASCII Value":charCode(payload."ASCII Value"),
 "Char at ASCII":fromCharCode(payload."Char at ASCII" as Number)
}

// Print ASCII/UniCode value of Character & Vice-Versa.charcode Returns the Unicode for the first character in an input string.For an empty string, the function fails and returns Unexpected empty string.


/*{
 "ASCII Value": 65,
 "Char at ASCII": "A"
}*/