%dw 2.0
import * from dw::core::Arrays
output application/json
var customer = payload groupBy $.customerID pluck $
---
flatten(customer map
    (if (sizeOf($)>4)  
          [flatten($ divideBy 5 map(flatten($)))]
            else
    (customer filter (sizeOf ($)< 5) divideBy 3 map (flatten ($))) 
    ) distinctBy $)

//Here i seperate the  5 set of objects into single array.so i use flatten and then i use the map function in map function i use if/else (if (sizeOf($)>4) [flatten($ divideBy 5 map(flatten($)))] else (customer filter (sizeOf ($)< 5) divideBy 3 map (flatten ($))).after this i use flatten to convert the subarrays into single array. 