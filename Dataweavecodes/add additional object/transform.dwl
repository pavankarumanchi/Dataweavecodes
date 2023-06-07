%dw 2.0
output application/json
var ab = [
{
"a": "apple"
},
{
"b":"banana"
}
]

var c = {"c":"cat"}
---
ab ++  (c pluck ((value, key, index) ->(key):value ))

//Here i want to add an additional object to the existing Array.so first i call the variable "ab" then i use concatenation and i call another variable "c".here i use pluck beacause that "ab" variable is in array.it is Useful for mapping an object into an array, pluck iterates over an object and returns an array of keys, values.