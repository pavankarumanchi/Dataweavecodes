%dw 2.0
output application/json
---
payload filterObject ((value, key, index) -> value."input"? )

//Here I want to filter and get only the objects which have the "input" field.