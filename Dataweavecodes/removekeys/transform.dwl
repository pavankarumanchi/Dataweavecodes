%dw 2.0
import divideBy from dw::core::Objects
import * from dw::core::Strings
output application/json  
---
payload map (
  IDOC: ($ divideBy 3) map ($ mapObject ((value, key, index) ->
    (substringAfter(key, "_")): value
  ))
)
//Here i remove keys oof objects and print total values under single key.so first i map the key then i use ($ divideBy 3) it will divide the single object into three objects.then import the (dw::core::Objects) and (dw::core::Strings) and use substringAfter the i remove the keys by using remove function.