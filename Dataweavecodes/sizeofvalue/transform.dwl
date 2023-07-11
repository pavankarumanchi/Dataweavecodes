%dw 2.0
output application/json
---
payload groupBy $.myplanBc mapObject ((value, key, index) -> (key): value filter ($.myplanQty>0)) 
filterObject ((value, key, index) ->sizeOf(value)>1) mapObject ($$): true

//I need to select all myplanBC which are duplicate - and atleast two of duplicate object have their respective myPlanQty value > 0 so first i use groupBy and grouping the objects based on myplanBc field.then i use mapobjects beacuse those are in the objects.after i use filter filter ($.myplanQty>0)it wil print the (myplanQty>0) objects.then i use filterobject and i use sizeOf.here i write sizeOf(value)>1) it will seperates the array of objects.and then i want equal to true so i use mapobject.


// {
// "11123": true,
// "11126": true
// }