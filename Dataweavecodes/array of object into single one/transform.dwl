%dw 2.0
import * from dw::core::Objects
output application/json
var array1 = [
  {
    "Name": "Alex",
    "Surname": "Thomas"
  }
]
var array2 = [
  {
    "Address": "KyleMore Street USA",
    "Country": "United Sates"
  }
]
---
array1 map ($ mergeWith  array2[$$])

//here I want to combine two array of object into single one.so i create two variables and i import * from dw::core::Objects.then i use map function and mergewith also.