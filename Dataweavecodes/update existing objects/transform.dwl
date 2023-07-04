%dw 2.0
output application/json
var lookup = [
    "customerContact": true,
    "reply": false,
    "history": "not available",
    "display": "144 Hz",
    "chatBot": "France",
    "promotion": true
]
var lookupObject = {(lookup)}
import * from dw::util::Tree
---
payload mapLeafValues (value, path) -> lookupObject[path[-1].selector]

//to update an existing object having multiple grouped key value pairs dynamically