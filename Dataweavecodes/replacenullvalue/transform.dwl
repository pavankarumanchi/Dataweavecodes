%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> 
if((value) == null) 
    (key): ("")  else (key): value
)

//Here I done replace null value with empty in object so i use (mapObject) function in mapObject i write if/else condition.(if value == null just print the empty String ("").else print the ((key):value).