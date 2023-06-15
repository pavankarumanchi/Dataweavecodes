%dw 2.0
output application/xml
var first= payload // first xml payload
var second= payload1 // second xml payload
---
test: {(first.test ++ second.test)}