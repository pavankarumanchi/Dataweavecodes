%dw 2.0
import * from dw::core::Arrays
output application/json
var data= [99,88,77,66,55]
var data1= ["pavan","ravi","siva"]
---
//data countBy ($ > 77)
//for this condition we got the result as 2. beacuse if we see that array the number elements which the value greaterthan 77 is only 2 values.    
//data countBy ($ >= 77)
//for this condition we got the result as 3.because if we see that array the number of elements gretaerthan or equal to 77 is only 3 values.

//data divideBy(2)
//in that array we have total elements have five.if i put dividedBy 2 it will seperate 2 elements for seperate array.

//drop (data, 4)
//drop (data, 6)
// in this drop function we drop some specific values of an array. i put 4 it will drop 4 values in order and give the output 55. incase i drop 6 it will show empty array because i have only 5 elements in input array.

//data splitAt (4)
//this splitAt function generates arrays based we given number.The function includes the "1" and "r" keys in the output. it will takes default.

data1 splitWhere (item) -> item startsWith "s"
//in this data1 variable we have three elements i want to split into two arrays so i use splitWhere function.but where we split the array in that case i use startsWith function and i call "s" letter.the "s" letter includes in "siva" name. so it will split from "siva".