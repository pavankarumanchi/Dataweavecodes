%dw 2.0
output application/json
---
payload.products map ((item, index) ->{
    "id":item.id,
    "type":item."type",
     "price":(payload.price filter $.id == item.id).cost[0]
} )

//Add/Update values in objects from other array objects based on matching ID field




/*[
 {
 "id": "5001",
 "type": "None",
 "price": 2
 },
 {
 "id": "5002",
 "type": "Glazed",
 "price": null
 },
 {
 "id": "5005",
 "type": "Sugar",
 "price": 5
 },
 {
 "id": "5007",
 "type": "Powdered Sugar",
 "price": ""
 },
 {
 "id": "5006",
 "type": "Chocolate with Sprinkles",
 "price": null
 },
 {
 "id": "5003",
 "type": "Chocolate",
 "price": null
 },
 {
 "id": "5004",
 "type": "Maple",
 "price": 6
 }
]*/