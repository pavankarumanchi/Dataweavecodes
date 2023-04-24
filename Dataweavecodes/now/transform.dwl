%dw 2.0
output application/json
---
{
    date:now(),
    dateDay:now().day,
    dateYear:now().year,
    dateMonth:now().month,
    dateEphoicTime:now() as Number,
    dateHours:now().hour,
    dateMinutes:now().minutes,
    dateSeconds:now().seconds,
    dateMilliSeconds:now().milliseconds,
    dateNanoSeconds:now().nanoseconds,
    dayofweek:now().dayOfWeek,
    dayofYear:now().dayOfYear

}