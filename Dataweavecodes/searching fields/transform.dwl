%dw 2.0
output application/json
---
payload map(item, index)->{
"EmpName": item.name,
"BossName": (payload filter $.ID == item.bossID).name[0]
}
// Search a field in the same payload using other field values

/*[{
"EmpName": "123",
"BossName": "456"
},
{
"EmpName": "345",
"BossName": "789"
{
"EmpName": "456",
"BossName": "345"
},
{
"EmpName": "789",
"BossName": "456"
}]*/