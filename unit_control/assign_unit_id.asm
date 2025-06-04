print "Variable Area"
set max_unit 24
print "Execution Area"
set i 1
ubind @mono
sensor curr_uid @unit @flag
jump 6 notEqual curr_uid 0
ucontrol flag i 0 0 0 0
op add i i 1
sensor result @unit @flag
printflush message1
jump 2 lessThanEq i max_unit
end