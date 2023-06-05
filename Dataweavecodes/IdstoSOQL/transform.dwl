%dw 2.0
output application/java
---
"(" ++  ((payload.Id map ("'" ++ $ ++ "'")) joinBy  ",") ++ ")"

//Here  I wanted to get Ids to SOQL So i use (output application/java) here i use map and joinBy functions.i call the payload.Id then map the field . add single code concatenation with values of Id then i use joinBy Merges an array into a single string value and uses the provided string as a separator between each item in the list. 