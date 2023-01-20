execute as 7875b3f7-c26b-4c86-b47f-4951874dc90d run item modify entity @s weapon.offhand moxlib:string/from_array/resolve
data modify entity 7875b3f7-c26b-4c86-b47f-4951874dc90d CustomName set from entity 7875b3f7-c26b-4c86-b47f-4951874dc90d HandItems[1].tag.display.Name

data modify storage moxlib:string/from_array command set value "enchant 7875b3f7-c26b-4c86-b47f-4951874dc90d minecraft:aqua_affinity"
execute positioned ~ ~ ~ run function moxlib:string/from_array/block/set

data modify storage moxlib:string/from_array command set from storage moxlib:string/from_array step
execute positioned ~1 ~ ~ run function moxlib:string/from_array/block/set

