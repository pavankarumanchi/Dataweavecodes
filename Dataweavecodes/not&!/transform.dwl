%dw 2.0
output application/json
---
{
 "r1": not payload.x and payload.y==true,
 "r2":!payload.x and payload.y==true
}

//not operator works on the result of overall logical operation but ! works on the first result of logical operation.

/*{
 "r1": true,
 "r2": false
}*/