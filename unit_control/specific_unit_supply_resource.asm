print "Variable Area"
set unit @mono
set select_uid 1
set source nucleus1
set target factory1
set resource @silicon
set res_amount 30
print "Execution Area"
sensor sx source @x
sensor sy source @y
sensor tx target @x
sensor ty target @y
set i 1
ubind unit
sensor uid @unit @flag
jump 26 notEqual uid select_uid
sensor res target resource
jump 21 lessThan res res_amount
ucontrol move sx sy 0 0 0
ucontrol itemDrop source 999 0 0 0
jump 26 always res res_amount
ucontrol itemTake source resource res_amount 0 0
sensor res_have @unit resource
jump 18 equal res_have false
ucontrol move tx ty 0 0 0
ucontrol itemDrop target 999 30 0 0
op add i i 1
jump 13 lessThanEq i 24
end