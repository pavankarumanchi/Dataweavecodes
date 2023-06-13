%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.ParentOptionID) mapObject 
  ($$): $ map ((record) -> record.OptionName)

  //Here separate out the field and group by an element firstly i use groupby and groupnig based on "ParentOptionID" then i use mapobject after i use map and map the optionName field.


// {

// '47' : ['IBM Power Series', 'Datamatic-SPMR'] ,

// '48' : ['Ovation', 'Other SCADA Tools']

// }