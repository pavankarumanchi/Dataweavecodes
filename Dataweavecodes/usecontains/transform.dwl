%dw 2.0
output application/json
---
payload.specificSystem map (upper($) ) contains "SOURCE" 

//I want check condition and need response true.need to use contains as "SOURCE", how to get true as response.So i use first change lower to upper "source" then i write contains.

// Response:
//true