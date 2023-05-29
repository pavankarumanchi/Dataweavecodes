%dw 2.0
output application/json
---
"searchitems": {
    item: flatten(payload.attributes.headers map ($ pluck {
        key: $$,
        value: $
    }))
}

//Here Change headers into JSON key value pairs here i use flatten end enter into the onject.then i use the map and i use pluck function it  iterates over an object and returns an array of keys, values.here key means($$) and value means ($).