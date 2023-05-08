%dw 2.0
output application/json
---
payload map (item, index) ->{
"Documentaion_title":item."content-0".document_number ++  "." ++  
item."content-0".major_version_number ++  "." ++  
item."content-0".minor_version_number ++  "-" ++  
item."content-0".title,
"Status": item."content-1".status
}


//Here i create docmentation title based on the input by using concatenate and map function.and first i create ("Documentaion_title") and enter into the ("content-0") call the (document_number) field.this field concatenate with (major_version_number) field.this field concatenate with(minor_version_number) and (title) field.and then map the status field.