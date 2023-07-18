%dw 2.0
output application/json
---
 payload update {
 case .text -> $ filter ((item, index) ->item.abc == 'abc2') map ((item, index) -> item update {
 case .xyz.mno -> $ filter ((item, index) ->item.key2 == 'value4')
})
 }

//Need to Filter abc : "abc2" and "mno object having "key2" = "value4" else no filter in "mno" object//