%dw 2.0
output application/json
---
payload map ((item, index) -> 
 item mapObject(value,key,index)-> {
 (value) : key
 }
)

//Interchange Key- Value in an object.so the input is in array of objects first i use map for entering into input and then mapobject.in mapobjects i write (value) : key.it means it will change the key value places.



/*[
 {
 "Hello World": "message1"
 },
 {
 "Hello Shubham": "message2"
 }
]*/