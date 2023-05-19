%dw 2.0
output application/json
---
payload map {
    "FieldName":$.FullName,
    "Application":[
        {
            "App_Name":if($.FullName ~= 0)
            $.DataAPP.Field_FullName joinBy  ""  
            else
            $.FieldsAPP.APP_FullName joinBy  ""
        }
    ]
}

//Here i want change the key names and add the one key value into another key value so i use map function and if/else function.firstly ichanged the key name and next i use if/else condition if($.FullName ~= 0) it will write the ($.DataAPP.Field_FullName[0]),else it will write the ($.FieldsAPP.APP_FullName[0]).