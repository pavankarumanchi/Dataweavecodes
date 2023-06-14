%dw 2.0
output application/json
fun recursive(v: Array) = 
    v map if($ is Number) ($ +2 ) else recursive($)
---
recursive(payload)

//Here I need add (+2) for every number in the array.so i  create function that is recursive in that i write condition (v map if($ is Number) ($ +2 ) else recursive($)).so i just call recursive(payload).it will add (+2).