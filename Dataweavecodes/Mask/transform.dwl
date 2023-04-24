%dw 2.0
import * from dw::util::Values
output application/json
---
payload mask  "password" with "*******" mask  "passwords" with "*******"