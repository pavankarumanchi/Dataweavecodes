%dw 2.0
output application/json
---
payload reduce ((item, accumulator) -> accumulator mapObject ((value, key, index) -> (key): flatten(value + item[key] )))

//Here to merge the below given objects inside an array I have an input that looks like this. Here inside each object of the parent array there are elements like a, b, and so on. This repeats in multiple objects with different child elements.