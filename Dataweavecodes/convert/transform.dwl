%dw 2.0
output application/json
---
payload.Details flatMap ((item, index) ->item.Codes map ((item1, index1) -> {
    "Name":item.Name,
    "Codes":item.Codes[index1],
    "Descriptions":item.Descriptions[index1]

}) )

//Here Convert array of items to array of objects SO I USE FLATMAP AND THEN USE MAP



/*[
  {
    "Name": "State",
    "Codes": "ST1",
    "Descriptions": "State 1"
  },
  {
    "Name": "State",
    "Codes": "ST2",
    "Descriptions": "State 2"
  },
  {
    "Name": "Country",
    "Codes": "CNT1",
    "Descriptions": "Country 1"
  },
  {
    "Name": "Country",
    "Codes": "CNT2",
    "Descriptions": "Country 2"
  }
]*/