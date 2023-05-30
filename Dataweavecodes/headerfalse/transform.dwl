%dw 2.0
output application/csv header=false
---
payload.adf.prospect.customer.contact.*name map (
    key: $.@part ++"Name: " ++ $
)

//Here Extract elements from xml by attribute.so i use header=false statement then enter into object(payload.adf.prospect.customer.contact.*name) here i use map funcion call @part and concatenation with Name.  