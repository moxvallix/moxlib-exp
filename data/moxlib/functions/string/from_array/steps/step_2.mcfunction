data modify storage moxlib:string/from_array strip set from block ~-1 ~ ~ LastOutput
data modify storage moxlib:string/from_array strip set string storage moxlib:string/from_array strip 0 1091

execute store result score $strip moxlib.string.from_array run data get storage moxlib:string/from_array strip
scoreboard players operation $strip moxlib.string.from_array -= $string moxlib.string.from_array

function moxlib:string/from_array/steps/strip/iterate

function moxlib:string/from_array/wrapup