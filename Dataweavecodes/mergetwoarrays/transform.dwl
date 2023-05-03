%dw 2.0
output application/json
var data = ["pavan","karumanchi","dev",2]
var add = ["fname","lname","role","exp"]
---
add map ((item, index) ->{
    (item): data [index]
} )