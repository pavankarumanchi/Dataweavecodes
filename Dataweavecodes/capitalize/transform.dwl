%dw 2.0
output application/json
import * from dw::core::Strings
---
message: capitalize(payload.message)

//Here i want to Space between in String.so firstly i import the dw::core::Strings.in this core function i use capitalize.Capitalizes the first letter of each word in a string.It also removes underscores between words and puts a space before each capitalized word.