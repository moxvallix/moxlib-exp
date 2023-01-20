function moxlib:string/common/setup

data modify storage moxlib:string/from_array command set value "function moxlib:string/from_array/flatten"
data modify storage moxlib:string/from_array step set value "function moxlib:string/from_array/steps/step_1"
data modify storage moxlib:string/from_array concat set from storage moxlib:api/string/from_array target

execute in moxlib:state positioned 0 32 0 run function moxlib:string/from_array/entity/summon
execute in moxlib:state positioned 0 32 0 run function moxlib:string/from_array/block/set