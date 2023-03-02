data modify storage moxlib:api/verify/exp output set value false

execute in moxlib:state run data modify storage moxlib:api/verify/exp output set value true

execute if data storage moxlib:api/verify/exp {output:false} run tellraw @a {"text":"Moxlib Exp: Failed to load moxlib:state, meaning experimental features will not work. Try quitting and re-entering the world", "color": "red"}

schedule function moxlib:verify/exp/cleanup 1t
