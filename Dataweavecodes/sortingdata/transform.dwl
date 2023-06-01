%dw 2.0
output application/xml
var x = payload.CUSTOMER.*CUSTOMER_DETAIL groupBy $.ClassificationType
//Here i create the variable "x" i use groupBy function and grouping the data based on ClassificationType.
---
{
    Application:
    { (x.Primary map ({
        CUSTOMER @(Age: $.Age, "_Birth": $.Birth, Position: "Customer"): null,
        CUSTOMER @(Age: x.Secondary[$$].Age, "_Birth": x.Secondary[$$].Birth, Position: "CoCustomer"): null, 
    }))
    }
}
//Then i call the variable and use the map function and i sort the data by creating attributes.in this attribue i create "postion field.