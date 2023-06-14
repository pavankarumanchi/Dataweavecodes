%dw 2.0
output application/json
---
[payload map ((item, index) -> 
    "test '" ++ item ++ "'"
) joinBy  " or "]

// Here add string named "test" to each individual string in the below array and add or in the middle as below.