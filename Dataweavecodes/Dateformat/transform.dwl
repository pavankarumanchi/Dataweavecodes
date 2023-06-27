%dw 2.0
output application/json
var x=(payload.placedDate splitBy(' '))[0]
---
x as Date {format: "yyyy-MM-dd"} as String {format: "MM/dd/yyyy"}


//XML DateTime to Date Format.so here i create one variable x in that variable i write splitBy.then i call that variable in script and write Dateformat syntax.


//"05/25/2022"