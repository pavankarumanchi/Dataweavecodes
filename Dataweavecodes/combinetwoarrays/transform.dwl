%dw 2.0
output application/json
var keys = ['Name','role','exp']
var values = ['pavan','dev','2']
---
{
    (
        keys map (
            ($): values[$$]
        )
    )
}

//here i done combine two arrays into one json object