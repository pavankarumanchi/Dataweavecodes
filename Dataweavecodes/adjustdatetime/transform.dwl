%dw 2.0
import * from dw::core::Strings
output application/json
---
"attendance":payload.attendance map ((item, index) -> 
 item mapObject ((value, key, index1) -> 
 (key):substringBeforeLast(value, "Z") ++ "-04:00"
 )
)

//Adjust DateTime Format Output so i import strings and use map function then mapobject in mapobjects i use "substringBeforeLast" and concatenation with "-04:00".


/*{
 "attendance": [{
   "leaveTime": "2022–11–02T22:29:07–04:00",
   "joinTime": "2022–11–02T21:00:39–04:00"
  },
  {
   "leaveTime": "2022–11–02T20:59:39–04:00",
   "joinTime": "2022–11–02T20:54:51–04:00"
  }
 ]
}*/