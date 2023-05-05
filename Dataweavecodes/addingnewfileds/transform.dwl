%dw 2.0
output application/json
---
payload map ((item, index) -> 
  ["sales","Tax","gratuity"] map (
    {
        "owner":"JP",
        "revenueType":$,
        "amount":item."$",
        "orderStatus":"Completed"
    }
  )
)

//here i use map function and map the ["sales","Tax","gratuity"] field and values with new fields.["owner"revenueType","amount","orderStatus] for owner field i create the value,revenue type field map with sales,amount is map with sales field value,orderstatus field and value is created by me.