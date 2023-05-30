%dw 2.0
output application/json
---
payload flatMap ((firstitem, firstindex) -> (1 to firstitem."DaysBetween")
map ({
    "NAME": firstitem."NAME",
    "LAST_UPDATE": firstitem."LAST_UPDATE"
})
)

//Here Data based on a calculated Number Value.and forThis "Days Between" function calculates the amount of iterations I need to create in the expected payload for each record calculating through today:ie: the first record needs to have 3 records, 2nd record needs 2 records, the last record needs one.
