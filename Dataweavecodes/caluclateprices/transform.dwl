%dw 2.0
output application/json
---
payload.Orders.*Order map(
 "totalCost": $.Price * $.Quantity
)

/*Calculate the Total Price of each individual order
output:
[{
  "totalCost": 1995
 },
 {
  "totalCost": 1495
 }
]*/

/*Calculate the Total Price of All Orders

/*"totalCost" : sum(payload.Orders.*Order map(
 $.Price * $.Quantity
))

output:
{
 "totalCost": 3490
}*/