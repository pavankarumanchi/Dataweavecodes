%dw 2.0
output application/json  
---
 
flatten(((payload groupBy $.AccountId) mapObject ((value, key, index) -> {
  key: 
    if (sizeOf(value) == 1)
      value
    else
      value filter $.Status == "New"
})) pluck $)


//When there are multiple records with same AccountId it should filter record with status new only if single records pass as it is.

/*[
  {
    "WorkTypeId": "08q4W000",
    "Status": "New",
    "AccountId": "0014W00002ooubUQAQ",
    "RecordTypeId": "0124W0000",
    "Id": null,
    "type": "WorkOrder"
  },
  {
    "WorkTypeId": "08q4W000000xcLsQAI",
    "Status": "New",
    "AccountId": "0014W00002opz9VQAQ",
    "RecordTypeId": "0124W000001d2huQAA",
    "Id": null,
    "type": "WorkOrder"
  },
  {
    "WorkTypeId": "08q4W000000xcLsQAI",
    "Status": "Reject",
    "AccountId": "0014W00002opz9VQAW",
    "RecordTypeId": "0124W000001d2huQAA",
    "Id": null,
    "type": "WorkOrder"
  }
]*/