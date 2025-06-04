print "Variable Area"
set unit @mono
print "Execution Area"
set i 0
ubind unit
sensor uid @unit @flag
jump 4 equal uid 0
ucontrol flag 0 0 0 0 0
op add i i 1
jump 1 lessThan i 64
end