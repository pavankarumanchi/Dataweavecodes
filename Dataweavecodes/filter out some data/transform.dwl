%dw 2.0
output application/json
---
{
    header: payload.header,
    data : orders : payload.data.orders map(
        $ mapObject ((value, key, index) -> 
            if(key as String == "orderItems") 
            (key):value filter ((item, index) -> !(item.productCode contains "FREE") ) 
            else 
            (key):value
        )
    )
 
    
}

// I would like to filter out some items from an array inside the payload so here i use mapobject and if/else condition.if(key as String == "orderItems") if condition is satisfy it will print the ((item, index) -> !(item.productCode contains "FREE") ) else it will print the (key):value.