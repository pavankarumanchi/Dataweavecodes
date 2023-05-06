%dw 2.0
output application/json  
---
 
  ResultBody: payload.Body map ({
    ZID: $.ID,
    ZType: $.Type,
    "ZCODES": $.Codes map ({
        "ZKEYS": keysOf($),
        "VALUES": valuesOf($)
    })
  })

  //Here i done break key from values by using map function firstly add (ZID) field with(ID) value, (ZTYPE) field with (Type) value,then i Replace (codes) feild with(ZCODES) after this i use map function.here i break key from value by use ("ZKEYS": keysOf($)) this condition ($) means item.so based on this condition it will write keys only under (ZKEYS) field, then i break values from key by using this condition ("VALUES": valuesOf($)).