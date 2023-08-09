%dw 2.0
import * from dw::util::Values
output application/json
---
line_items: payload.line_items update "unit_amount" with ($/100)

//Here i want to update the unit_amount so first import * from dw::util::Values then i use the update function and update the value ($/100).
/*
{
"line_items":
[
{
"id": "12344",
"unit_amount": 59.99,
"billing_period": 1,
"billing_period_unit": "year"
},
{
"id": "8907",
"unit_amount": 6768.79,
"billing_period": 1,
"billing_period_unit": "year"
}
]
}
*/