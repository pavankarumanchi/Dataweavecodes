%dw 2.0
output application/json
---
payload map ((value, index) -> {
    "LastModifiedDate" : value.LastModifiedDate,
    "Id" : value.Id,
    "Name" : value.Project__r.Name
    } )groupBy $.Name

    //I have a JSON payload, where I have to group the JSON based on Project__r.Name.so i use map and groupby.