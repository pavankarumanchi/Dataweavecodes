%dw 2.0
output application/json
---
payload mapObject ((value, key, index) -> 
if (key as String == "BundleOption")
(key): value filter !($ == {})
else (key): value)



//I need to remove the blank objects from the array by using mapObject and if/else conditions.