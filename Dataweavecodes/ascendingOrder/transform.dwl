%dw 2.0
output application/xml
---
 MotorHistoricPerformance: {((payload.motorHistoricPerformance orderBy $.periodStart) 
 map ({
    MotorHistoricPerformanceDetails: {
      PeriodStart: $.periodStart,
      PeriodEnd: $.periodEnd
    }
  }))}

  //Here I want to arrange the data in ascending order of dates so i use orderBy function The ordereBy keyword is used to sort the result-set in ascending or descending order.after this i use map funtion for mapping purpose.
