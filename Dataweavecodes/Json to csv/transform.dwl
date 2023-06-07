%dw 2.0
output csv
fun flattenObject (parentKey, val) = val mapObject ((value, key, index) ->
if (typeOf(value) == Object)
flattenObject(parentKey++ '_' ++ key,value)
else (parentKey++ '_' ++ key):value )
---
payload mapObject ((value, key, index) -> if (typeOf(value)== Object) 
flattenObject(key, value)
else (key):value)

//Here i create custom function flattenObject in that i create mapobject in that i use if/else condition.if (typeOf(value) == Object) if this condition is satisfied it will print flattenObject(parentKey++ '_' ++ key,value) else it will print this condition else (parentKey++ '_' ++ key):value) after creating the function next i write dataweave code by using mapobject i write if/else condition.if (typeOf(value)== Object) this condition is satisfied it will print object in csv format.else it will print ((key):value).