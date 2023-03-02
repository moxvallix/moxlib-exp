data modify storage moxlib:api/verify/exp output set value false

execute in moxlib:state run data modify storage moxlib:api/verify/exp output set value true

execute if data storage moxlib:api/verify/exp {output:false} run tellraw @a [{"text":"Moxlib Exp: Failed to load moxlib:state, meaning experimental features will not work. ", "color": "red"}, {"text": "Try quitting and re-entering the world", "color": "yellow"}]

function moxlib:api/verify
execute unless data storage moxlib:api/verify {output:true} run data modify storage moxlib:api/verify/exp output set value false
execute unless data storage moxlib:api/verify {output:true} run tellraw @a [{"text":"Moxlib Exp: The following dependencies were not resolved: ", "color": "red"},{"text": "Moxlib", "color": "yellow"}]

schedule function moxlib:verify/exp/cleanup 1t
