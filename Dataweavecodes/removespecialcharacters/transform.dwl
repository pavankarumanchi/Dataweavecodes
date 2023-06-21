%dw 2.0
output application/json
---
payload map (
    read($, "applicaiton/json")
)

//Here remove specical characterss in payload