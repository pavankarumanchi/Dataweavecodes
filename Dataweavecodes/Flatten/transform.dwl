%dw 2.0
output application/json
---
"data":{
    "type":payload."type"[0],
    "attributes":{
        "items":flatten(payload ++  payload.employeeAddress) map{
            zip: $.zip,
            Address:$.Address
        }
    }
}

//Here i done the set of sub arrays into single array by using flatten and also to set the address in order. firstly here "type" field is same for three objects So i call the type":payload."type"[0] it will print the single "type" value.then i use flatten beacause in my input i have sub arrays but i want only single array so i use. then i call "payload" it will print the total payload.but in my input two objects are under "payload.employeeAddress" so i concatenate with payload because i want to set details in order.then i use map function and map the "zip" and "Address".