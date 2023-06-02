%dw 2.0
input payload application/json
output application/json
---
flatten (payload map ((item0, index0) -> item0.Application.App_Name map ((item1, index1) -> item0 - "Application"-"FieldName" ++ {"App_Name": item1}))) groupBy $.App_Name
 
 mapObject (
  '$$':{
    "Security_Group": $..Security_Group joinBy  ";",
    "App_Name" : $..App_Name[0]
  }
) pluck $

//transforming based on same value.my input is in subarrays so i use flatten to convert into single array.then use map function and i call the "App_Name" then i use the map and concatenation with App name.then i grouping the "App_Name"after this i use mapobject and map the fields.