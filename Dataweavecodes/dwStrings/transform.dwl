%dw 2.0
import * from dw::core::Strings
output application/json
---
/*{
  "1" : camelize("Pavan_Karumanchi"),
  "2" : camelize("_Ravi_Karumanchi")
}*/
//Returns a string in camel case based on underscores in the string.All underscores are deleted, including any underscores at the beginning of the string.

/*{
  "1" : capitalize("pavan"),
  "2" : capitalize("pavan_first_name"),
  "3" : capitalize("pavan KARUMANCHI"),
  "4" : capitalize("pavanKarumanchi")
}*/
//Capitalizes the first letter of each word in a string.It also removes underscores between words and puts a space before each capitalized word.

collapse("A  B CABB a")

//Collapses the string into substrings of equal characters.Each substring contains a single character or identical characters that are adjacent to one another in the input string. Empty spaces are treated as characters