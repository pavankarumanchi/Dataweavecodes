%dw 2.0
output application/json
var data = ["pavan","karumanchi","dev",2]
var add = ["fname","lname","role","exp"]
---
add map ((item, index) ->{
    (item): data [index]
} )

//here i done merge two arrays i create two variables one is data and another one is add by using map function merge two arrays here i take item as add and index as data.
