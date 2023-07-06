%dw 2.0
output application/json duplicateKeyAsArray=true
---
payload

//In the following example, the DataWeave script transforms the XML containing multiple XML nodes with the same key into a valid JSON creating an array instead of creating JSON nodes with the same key.