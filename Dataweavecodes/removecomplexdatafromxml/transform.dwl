%dw 2.0
output application/xml
---
//Customer:payload.Customer filterObject !($$ ~= "users")
 Customer:{(payload.Customer -"users")}

//Here I can remove complex object xml element in dataweave


/*<Customer>
<Firstname>jan</Firstname>
<email>myemail@id.com</email>
<Details>
<id>123</id>
<name>me</name>
</Details>
</Customer>*/