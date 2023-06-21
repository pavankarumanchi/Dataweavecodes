%dw 2.0
output application/json
---
(payload.Contact_Data.*Email_Address_Data filter ((emailData, emailDataIndex) -> !(isEmpty(emailData.Usage_Data.Type_Data.Type_Reference.*ID filter ($.@"type"=="Communication_Usage_Type_ID") and 
$=="WORK" ))))[0].Email_Address

//Nested filtering for XML