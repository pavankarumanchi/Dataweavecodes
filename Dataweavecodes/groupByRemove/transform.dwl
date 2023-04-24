%dw 2.0
output application/json
var emp = [
    {
        "empId" : 10,
        "desg" : "Sf",
        "age":27,
        "dept" : "jio"
    },
    {
        "empId" : 12,
        "desg" : "Sf",
        "age":27,
        "dept" : "vi"
    },
    {
        "empId" : 13,
        "desg" : "nm",
        "age":27,
        "dept" : "airtel"
    }
]
---
emp groupBy ($.dept) mapObject ((value, key, index) -> (key): value map ($)-"dept")

//This example groups the elements of an array based on the "dept" field. and i uses the ($.dept) to specify the grouping. So the resulting object uses the "dept" values ("jio","vi" and "airtel") from the input to group the output. Also notice that the output places the each input object in an array.and here i use map and remove function also because to remove the "dept" key-value pair.