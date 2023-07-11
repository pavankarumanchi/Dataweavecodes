%dw 2.0
output application/json
---
{
    "items":{
        "price": payload.Items.Price as String
        {
            format:"###.00"
        }
    }
}

//Here i want to change the Number to string




// {
// "Items":
// {
// "Price": "212.00"
// }
// }