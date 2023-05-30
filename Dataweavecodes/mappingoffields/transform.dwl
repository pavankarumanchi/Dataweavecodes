%dw 2.0
output application/json
var myinput =  payload splitBy  ","
var mapping = {
	"value1" : "Avalue",
	"value2" : "Bvalue",
	"value3" : "Cvalue",
	"value26" : "Zvalue"
}
---
(mapping filterObject ((value, key, index) -> (myinput contains key as String)) pluck $) joinBy ","



//Comma-separated string to be replaced with defined mapping of fields