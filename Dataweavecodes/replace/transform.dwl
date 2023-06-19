%dw 2.0
output application/json
---
"langauge":payload.language map ((item, index) -> item replace  "_" with "-" )

//replace _ with - in arrary