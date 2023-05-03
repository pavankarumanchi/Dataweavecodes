%dw 2.0
output application/xml
---
Output:item : payload.Output.*Item filter !($.Shifts.Shift.*Field.@value contains"S2")


// i remove all the item like "specific attribute value" based on the (<Field name="Value" value="S2" />) in the inbound payload. so i use filter function The FILTER function allows you to filter a range of data based on criteria you define here i define not equal to S2 !($.Shifts.Shift.*Field.@value contains"S2").so its print total <Field name="Value" value="GS"/> data.