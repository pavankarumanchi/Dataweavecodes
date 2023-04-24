%dw 2.0
output application/json
---
mailcity:[payload..mailCity joinBy  ","]

// Here i want to extract value based on the field name.So here i have two roots one is "address" and second one is "perminentaddress".So i want to extract "mailcity" value. for that purpose i use ".." it is used to identifies given key in entire code. Here i use "joinBy" it is helpfull Merges an array into a single string value and uses the provided string as a separator between each item in the list.