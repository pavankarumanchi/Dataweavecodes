%dw 2.0
output application/json
---
payload  update {
    case .data ->{ "PayrollDataGroups":$."xxnr_data_group_out_tb" map({
           "HomeLaborCategory1":$[0],
           "HomeCostCenter":$[1]
    })
     }
}

//Here i want to transform the data and create keys




/*{
  "header": {
    "apiName": "Payroll_api",
    "apiVersion": "v1.0",
    "correlationId": "abc"
  },
  "data": {
    "PayrollDataGroups": [
      {
        "HomeLaborCategory1": "HomeLaborCategory1-2",
        "HomeCostCenter": "HomeCostCenter-1"
      },
      {
        "HomeLaborCategory1": "HomeLaborCategory1-1",
        "HomeCostCenter": "HomeCostCenter-2"
      },
      {
        "HomeLaborCategory1": "HomeLaborCategory1-2",
        "HomeCostCenter": "HomeCostCenter-2"
      },
      {
        "HomeLaborCategory1": "HomeLaborCategory1-1",
        "HomeCostCenter": "HomeCostCenter-1"
      }
    ]
  }
}*/