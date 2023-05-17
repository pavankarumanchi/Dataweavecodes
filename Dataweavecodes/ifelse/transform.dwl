%dw 2.0
output application/json
---
payload  update {
    case .CASAS -> $ flatMap ((item , index) ->
        if(item.FreeGood != null and item.FreeGood >0) 0 to 1 map
        ({
            CALLE :item.Calle
        }) else {
            CALLE :item.Calle
        }
    )
}

//Here i use update function.after that i use flatmap and if else condition. here if(item.FreeGood != null and item.FreeGood >0) and i use map for mapping purpose so if condition is satisfied it will print this(CALLE :item.Calle) other wise it will else condition (CALLE :item.Calle)