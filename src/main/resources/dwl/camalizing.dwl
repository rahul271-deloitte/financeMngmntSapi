%dw 2.0 
output application/json
import * from dw::core::Strings
import * from dw::core::Objects
fun mappingObject(data) = if((data is Object) == false) data else data mapObject ((value, key, index) -> value match { case value is Object -> (camelize(key)) : mappingObject(value) case value is Array -> (camelize(key)) : value map (mappingObject($)) else -> (camelize(key)) : value } )
---
mappingObject(payload)