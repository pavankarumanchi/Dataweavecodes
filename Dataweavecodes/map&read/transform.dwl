%dw 2.0
output application/json
---
response : payload.response map {
    "JSON-49916B" : read($."JSON-49916B","application/json")
}

//Here I need to removing extra characters and formatting the following json. So firstly i use map and mapping the "JSON-49916B" here i used read function this function is used to This example reads a JSON object and it uses the "application/json" argument to indicate input content type.