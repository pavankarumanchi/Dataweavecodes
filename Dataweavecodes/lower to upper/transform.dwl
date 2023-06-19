%dw 2.0
import * from dw::core::Strings
output application/json
---
payload pluck ((value, key, index) -> (key): value flatMap upper($) ) reduce ((item, accumulator) -> item ++ accumulator )