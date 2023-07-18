%dw 2.0
output application/json
---
// payload mapObject ((value, key, index) -> (key): [{(value )}] )

payload mapObject ((value, key, index) -> (key): [value reduce ((item, accumulator) -> item ++ accumulator )])
//Here I join two objects of each Array

/*
{
  "1": [
    {
      "11": "abc",
      "22": "def"
    }
  ],
  "2": [
    {
      "3": "ghi",
      "4": "jkl"
    }
  ]
}
*/