print "Variable Area"
set unit @mono
set select_uid 1
set target nucleus1
set resource @copper
print "Execution Area"
sensor tx target @x
sensor ty target @y
set i 1
ubind unit
sensor uid @unit @flag
jump 28 notEqual uid select_uid
ulocate ore core true resource outx outy found building
sensor ti @unit @totalItems
jump 20 equal ti 0
sensor fi @unit @firstItem
jump 20 equal fi resource
ucontrol move tx ty 0 0 0
ucontrol itemDrop target 999 0 0 0
jump 28 always found true
sensor total @unit @totalItems
sensor capa @unit @itemCapacity
jump 26 notEqual total capa
ucontrol approach tx ty 8 0 0
ucontrol itemDrop target 999 0 0 0
jump 28 always found true
ucontrol approach outx outy 8 0 0
ucontrol mine outx outy 0 0 0
op add i i 1
jump 9 lessThanEq i 24
end