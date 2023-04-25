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
    "attribute_id_value":(input1[$.name]) reduce ($++$$)
}

//Here i want to merge two json objects into single object here i call two variables (input1) and (input2) and i use (map) function maps each item in the input to an object.Here my coming output is in Array of Arrays but i want only single Array.thats why i use (flatten,reduce etc,) reduce function to reduction the Arrays. Here ($ means item) and ($$ means accumulator).