data modify storage moxlib:api/string/from_array output set from storage moxlib:string/from_array strip

function moxlib:string/from_array/entity/kill

data remove storage moxlib:string/from_array command
data remove storage moxlib:string/from_array concat
data remove storage moxlib:string/from_array strip
data remove storage moxlib:string/from_array prepend

fill ~-1 ~ ~ ~ ~ ~ air

function moxlib:string/common/cleanup

function #moxlib:api/string/from_array/finished