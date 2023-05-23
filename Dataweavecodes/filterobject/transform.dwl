%dw 2.0
output application/json
---
payload filter ((item, index) -> item.Name != "" ) map ((item, index) -> {
    Name:item.Name,
    "ID's" : (item - "Name") filterObject ((value, key, index) -> value != "NILL") pluck ((value, key, index) -> {
           id: value
    } )
})

//Here Need help in transforming data here i use firstly filter function i write condition ((item, index) -> item.Name != "" ) it will remove the empty string object then i use map and the name field. afetr that i use remove function and remove extra name field.then i use filterobject and write condition filterObject ((value, key, index) -> value != "NILL") it will remove the "NILL" equal values.then i use pluck and call id: value.