%dw 2.0
output application/json
---
0 to sizeOf(payload)/2-1 map(payload[2*$] ++  (payload[(2*$+1)] mapObject ((value, key, index) -> ("t" ++  index+1):value)))


//Here i done merge json object.so firstly i calcluate the sizeof payload.then i remove last index.then i use map and map the payload.and concatenation with (payload[(2*$+1)] so merging json objects was done here. next i use mapobject and change the key names.