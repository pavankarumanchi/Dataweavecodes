%dw 2.0
output application/json
import * from dw::core::Strings
var x ="Violation de la contrainte PRIMARY KEY « PK_ENVOI ». Impossible d'insérer une clé en double dans l'objet « DWH.DSN_S10_G00_00_ENVOI ». Valeur de clé dupliquée : (00000000000000000000000000000000A1F-ehjS.glO61Edmdns7.v1)"
---
substringAfterLast(x, ":")[2 to -2]

//retreive value here by using substringAfter  i can retrive the data (substringAfterLast(x, ":")[2 to -2])