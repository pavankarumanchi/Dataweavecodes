%dw 2.0
output application/json
---
values:(payload.values splitBy  ",") map if ($ == "country")
 $ ++ "Name" 
 else $

//Here I want to data split and replace country with countryName so firstly i use splityBy it Splits a string into a string array.then i use map and if/else condition if $ == "country" it will  $ ++ "Name" means concatenation with country. else it will write country.

/*{
  "values": [
    "US",
    "countryName",
    "INDIA"
  ]
}*/