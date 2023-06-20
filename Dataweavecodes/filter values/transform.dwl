%dw 2.0
output application/json
---
((payload filter $.city=="hyd").name) joinBy(',')


//Filter based on field value and form a String