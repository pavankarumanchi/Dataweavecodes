%dw 2.0
output application/json
---
valuesOf(payload  groupBy $.Unique_ID) map (
    {($)} distinctBy $$
)

//Here to merge objects inside an array based on a condition

/*
[
  {
    "countHouses": 1,
    "countFlats": 4,
    "countStadiums": 1,
    "Name": "Bob",
    "Unique_ID": "12345"
  },
  {
    "countHouses": 245,
    "countFlats": 1,
    "countStadiums": 5,
    "Name": "Efac",
    "Unique_ID": "31124"
  },
  {
    "countHouses": 300,
    "Name": "Pox",
    "Unique_ID": "18110"
  }
]
*/