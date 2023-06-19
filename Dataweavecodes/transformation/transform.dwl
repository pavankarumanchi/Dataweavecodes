%dw 2.0
output application/x-ndjson
---
payload map ((item, index) -> {
    id : item.id,
    values : item.values
})


//Transformation




/*{
	"id": "abc",
	"values": ["US"]
}, {
	"id": "abc",
	"values": ["UK"]
}, {
	"id": "abc",
	"values": ["BC"]
}*/