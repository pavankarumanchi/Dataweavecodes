%dw 2.0
output application/json
---
"Searchitems": {
    item:  flatten (payload.attributes.headers map ($ pluck {
    	key : $$,
    	value : $
    }))
}

//Here Change headers into JSON key value pairs so i use flatten it is used change the subarrays into single array.then i call (payload.attributes.headers)and i use here map function in map i use pluck Useful for mapping an object into an array.