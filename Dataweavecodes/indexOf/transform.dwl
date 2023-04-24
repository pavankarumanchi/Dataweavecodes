%dw 2.0
output application/json
---
{
  present: "karumanchi" indexOf "c",
  notPresent: "pavan" indexOf "c",
  presentMoreThanOnce: "dev" indexOf "d"
}