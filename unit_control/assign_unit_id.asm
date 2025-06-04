print "Variable Area"
set unit @mono
set max_unit 24
print "Execution Area"
set i 1
ubind unit
sensor curr_uid @unit @flag
jump 9 notEqual curr_uid 0
ucontrol flag i 0 0 0 0
op add i i 1
jump 5 lessThanEq i max_unit
end