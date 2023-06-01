%dw 2.0
output application/json
---
payload map ((item, index) -> {
    "CODE": item.Material,
    "Name": item."Descripción material",
    "Stock": (if (item."Total neto OL DIS Entreg.SS" endsWith "-")
                    (-1*(item."Total neto OL DIS Entreg.SS" replace "-" with "" replace"," with ".") )
                     else (item."Total neto OL DIS Entreg.SS" replace "," with ".") as Number)
})

//Here I transform a String to a negative Number with conditions.here i use map function and map the fields in map funtion i use if/else condition (if (item."Total neto OL DIS Entreg.SS" endsWith "-") if this condition will satisfy it wil replace the (replace "-" with "" replace"," with ".") else it will write the other condition  else (item."Total neto OL DIS Entreg.SS" replace "," with ".") as Number).