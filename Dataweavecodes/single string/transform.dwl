%dw 2.0
output application/json
---
payload flatMap ((item, index) ->item pluck ((value, key, index) ->key ++ " " ++ value )) joinBy " "


//"Name Shubham language Java Id 101 Name Sravan language C Id 104"

//Here i want to join keys and values in one string. so i use flatmap enter into the array and then i use pluck in pluvk i write keys concatenation with values and joinby.