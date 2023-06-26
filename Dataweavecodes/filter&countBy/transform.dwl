%dw 2.0
import * from dw::core::Arrays
output application/json
---
payload distinctBy($.department)map(item,index)->{
    "department": item.department,
    "count":payload countBy ($.department==item.department )
}
//Filter department and count


/*[
  {
    "department": "Technology",
    "count": 2
  },
  {
    "department": "Operations",
    "count": 1
  },
  {
    "department": "Finance",
    "count": 1
  }
]*/