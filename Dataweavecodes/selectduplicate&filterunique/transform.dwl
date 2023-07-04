%dw 2.0
output application/json
---
payload groupBy $.myplanBc filterObject ((value, key, index) -> sizeOf(value)>1 and sum(value.myplanQty)>0) mapObject (
    ($$) : sum($.myplanQty)
)

// I select duplicate values and filter unique values