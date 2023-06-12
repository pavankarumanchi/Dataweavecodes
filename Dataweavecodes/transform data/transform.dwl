%dw 2.0
output application/json
---
payload map{
    Comments:$.Comments splitBy  "^~"
}.Comments reduce ((item, accumulator) -> accumulator ++ item ) map{
    Comments:[$]
}

//Here transforming data based on special characters.I want to split the input on "^~" and capture the value in separate array. so i use map functio the input is in array of objects.by using map i call the input then applay splitby (splitBy  "^~") it will split the data based on special characters.so present it is in array of arrays.i want to change into single array so i use the reduce.then i use map and call the data.and i will put [$] in array because i want value in separate array.