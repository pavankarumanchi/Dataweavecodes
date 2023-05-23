%dw 2.0
import * from dw::core::Arrays
output application/json
var customer = payload groupBy $.customerID pluck $
---
flatten(customer map
(if (sizeOf($)>4)
[flatten($ divideBy  5 map(flatten($)))]
else
(customer filter (sizeOf($)<5) divideBy  3 map(flatten($)))
)distinctBy $)

//If any customer came more than 4 times then a separate array required for that customer.Also, no sizing limit if one array have 3 customers (each customer less than or eqaul to 4 time).so i create variable customer by giving in that payload.then i use flatten it used to subarrays into single array.then i use map in map i use if/else condition if (if (sizeOf($)>4) it will write this condition.else it will write (customer filter (sizeOf($)<5) divideBy  3 map(flatten($))).after i use  distinctBy $ that we have any duplicate values it will be removed.