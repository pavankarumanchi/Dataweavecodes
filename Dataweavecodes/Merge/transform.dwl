%dw 2.0
output application/json
var input1 = [
	{
		"origin": "Portal",
		"given": true,
		"date": "2020-11-15T14:28:20",
		"type": "express"
	}
]
 
var input2 = {
	"data": [{
			"id": 1,
			"name": "origin"
		},
		{
			"id": 2,
			"name": "given"
		},
		{
			"id": 3,
			"name": "date"
		},
		{
			"id": 4,
			"name": "type"
		}
	]
}
---
"attributes":input2.data map {
    "attribute_id":$.id,
    "attribute_id_value":input1[0][$.name]
}