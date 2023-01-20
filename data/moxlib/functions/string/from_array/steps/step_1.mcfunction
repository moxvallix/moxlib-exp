execute store result score $string moxlib.string.from_array run data get block ~-1 ~ ~ LastOutput
scoreboard players remove $string moxlib.string.from_array 129

scoreboard players operation $prepend moxlib.string.from_array = $1000 moxlib.api.math.constants
scoreboard players operation $prepend moxlib.string.from_array -= $string moxlib.string.from_array

function moxlib:string/from_array/steps/prepend/iterate

data modify storage moxlib:string/from_array concat set from storage moxlib:string/from_array prepend
data modify storage moxlib:string/from_array concat append from storage moxlib:api/string/from_array target[]

data modify storage moxlib:string/from_array command set value "function moxlib:string/from_array/flatten"
data modify storage moxlib:string/from_array step set value "function moxlib:string/from_array/steps/step_2"

execute positioned ~-1 ~ ~ run function moxlib:string/from_array/block/set