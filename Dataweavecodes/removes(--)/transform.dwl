%dw 2.0
var input1 = ["ID", "text1", "text12", "text123"]
var input2 = {
  "text": "abc",
  "text1": "abcd",
  "textabc": "abc",
  "text123": "test",
  "textID": "text"
}
output application/json  
---
input2 --  (keysOf(input2) --  input1) 

//Here I create two variables input1 and input2.in the variables i have some of are same keys.so based on keys i remove the unmatching keys by using (--) removes function.this function is used to Removes specified values from an input value.