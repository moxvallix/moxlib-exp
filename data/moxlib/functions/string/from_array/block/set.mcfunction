setblock ~ ~ ~ air
setblock ~ ~ ~ command_block{TrackOutput:1b,auto:1b,UpdateLastExecution:0b} replace
data modify block ~ ~ ~ Command set from storage moxlib:string/from_array command