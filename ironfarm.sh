# This script will generate a fully functional iron farm 
# Farm front faces west, supplied coordinate is the point in front of the chest when constructed

echo "Screenname:"
read screen
echo "x: "
read x
echo "y: "
read y
echo "z: "
read z
echo "Building Blocks: "
read block
echo "Walls: "
read wall

#screen=mc_server_java
#x=-1135
#y=63
#z=1538
#block=deepslate_bricks
#wall=deepslate_brick_wall

sign=oak_wall_sign
bed=white_bed

## Villager Chamber LR
screen -S $screen -X stuff "fill $((x+4)) $((y)) $((z-9)) $((x+6)) $((y+11)) $((z+1)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+12)) $((z-9)) $((x+6)) $((y+13)) $((z+1)) glass$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z-8)) $((x+5)) $((y+13)) $((z)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+12)) $((z-9)) $((x+4)) $((y+13)) $((z-9)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+6)) $((y+12)) $((z-9)) $((x+6)) $((y+13)) $((z-9)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+12)) $((z+1)) $((x+4)) $((y+13)) $((z+1)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+6)) $((y+12)) $((z+1)) $((x+6)) $((y+13)) $((z+1)) $block$(printf '\r')"
# Villager Chamber Rear
screen -S $screen -X stuff "fill $((x+7)) $((y)) $((z-5)) $((x+10)) $((y+11)) $((z-3)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+7)) $((y+12)) $((z-5)) $((x+10)) $((y+13)) $((z-3)) glass$(printf '\r')"
screen -S $screen -X stuff "fill $((x+7)) $((y+11)) $((z-4)) $((x+9)) $((y+13)) $((z-4)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+10)) $((y+12)) $((z-3)) $((x+10)) $((y+13)) $((z-3)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+10)) $((y+12)) $((z-5)) $((x+10)) $((y+13)) $((z-5)) $block$(printf '\r')"
# Villager Window to Zombie
screen -S $screen -X stuff "fill $((x+4)) $((y)) $((z-5)) $((x+4)) $((y+13)) $((z-5)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y)) $((z-3)) $((x+4)) $((y+13)) $((z-3)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+6)) $((y+12)) $((z-4)) $((x+6)) $((y+12)) $((z-4)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+6)) $((y+13)) $((z-4)) $((x+6)) $((y+13)) $((z-4)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z-5)) $((x+5)) $((y+11)) $((z-5)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z-3)) $((x+5)) $((y+11)) $((z-3)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+13)) $((z-5)) $((x+5)) $((y+13)) $((z-5)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+13)) $((z-3)) $((x+5)) $((y+13)) $((z-3)) $block$(printf '\r')"
# Stairs up to Zombie Chamber
screen -S $screen -X stuff "fill $((x+3)) $((y)) $((z-4)) $((x+3)) $((y+10)) $((z-4)) ladder[facing=west]$(printf '\r')"
# Villager Beds
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z-7)) $((x+5)) $((y+11)) $((z-7)) white_bed[facing=north,part=foot]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z-8)) $((x+5)) $((y+11)) $((z-8)) white_bed[facing=north,part=head]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z-1)) $((x+5)) $((y+11)) $((z-1)) white_bed[facing=south,part=foot]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $((y+11)) $((z)) $((x+5)) $((y+11)) $((z)) white_bed[facing=south,part=head]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+8)) $((y+11)) $((z-4)) $((x+8)) $((y+11)) $((z-4)) white_bed[facing=east,part=foot]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+9)) $((y+11)) $((z-4)) $((x+9)) $((y+11)) $((z-4)) white_bed[facing=east,part=head]$(printf '\r')"
# Golem Spawning Floor
screen -S $screen -X stuff "fill $((x+4)) $((y+14)) $((z-9)) $((x+10)) $((y+14)) $((z+1)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+15)) $((z-9)) $((x+10)) $((y+15)) $((z-2)) $block$(printf '\r')"
# Golem Spawning Wall
screen -S $screen -X stuff "fill $((x+3)) $((y+16)) $((z-9)) $((x+3)) $((y+16)) $((z-2)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+3)) $((y+15)) $((z-2)) $((x+3)) $((y+15)) $((z-2)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+16)) $((z-10)) $((x+10)) $((y+16)) $((z-10)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+11)) $((y+16)) $((z-9)) $((x+11)) $((y+16)) $((z-1)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+11)) $((y+15)) $((z-1)) $((x+11)) $((y+15)) $((z+1)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+10)) $((y+15)) $((z+2)) $((x+3)) $((y+15)) $((z+2)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+3)) $((y+15)) $((z-1)) $((x+3)) $((y+15)) $((z+1)) $sign[facing=north]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+16)) $((z-9)) $((x+10)) $((y+16)) $((z-9)) water$(printf '\r')"
screen -S $screen -X stuff "fill $((x+10)) $((y+15)) $((z-1)) $((x+10)) $((y+15)) $((z+1)) water$(printf '\r')"
## Kill Chamber
screen -S $screen -X stuff "fill $((x+1)) $y $((z-2)) $((x+5)) $((y+9)) $((z+2)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $((y+1)) $((z-1)) $((x+4)) $((y+9)) $((z+1)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+1)) $((y+6)) $((z-2)) $((x+2)) $((y+9)) $((z+2)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+3)) $((y+10)) $((z-2)) $((x+3)) $((y+14)) $((z-2)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+3)) $((y+10)) $((z+2)) $((x+5)) $((y+14)) $((z+2)) $wall$(printf '\r')"
screen -S $screen -X stuff "fill $((x+4)) $((y+11)) $((z+2)) $((x+5)) $((y+14)) $((z+2)) air$(printf '\r')"
screen -S $screen -X stuff "fill $((x+5)) $y $((z-2)) $((x+5)) $((y+9)) $((z+1)) $block$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $y $((z)) $((x+4)) $y $((z)) hopper[facing=west]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $y $((z-1)) $((x+4)) $y $((z-1)) hopper[facing=south]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $y $((z+1)) $((x+4)) $y $((z+1)) hopper[facing=north]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $((y+2)) $((z-2)) $((x+4)) $((y+4)) $((z-2)) glass_pane$(printf '\r')"
screen -S $screen -X stuff "fill $((x+1)) $((y+2)) $((z-1)) $((x+1)) $((y+4)) $((z+1)) glass_pane$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $((y+2)) $((z+2)) $((x+4)) $((y+4)) $((z+2)) glass_pane$(printf '\r')"
screen -S $screen -X stuff "fill $((x+2)) $((y+2)) $((z-1)) $((x+4)) $((y+2)) $((z+1)) $sign[facing=north]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+3)) $((y+3)) $((z)) $((x+3)) $((y+3)) $((z)) lava$(printf '\r')"
screen -S $screen -X stuff "fill $((x)) $y $z $((x)) $y $z chest[facing=north,type=left]$(printf '\r')"
screen -S $screen -X stuff "fill $((x+1)) $y $z $((x+1)) $y $z chest[facing=north,type=right]$(printf '\r')"
# Spawn in villagers and zombie
screen -S $screen -X stuff "summon villager $((x+5)) $((y+11)) $((z-6))$(printf '\r')"
screen -S $screen -X stuff "summon villager $((x+5)) $((y+11)) $((z-2))$(printf '\r')"
screen -S $screen -X stuff "summon villager $((x+7)) $((y+11)) $((z-4))$(printf '\r')"
screen -S $screen -X stuff "summon zombie $((x+5)) $((y+11)) $((z-4)) {PersistenceRequired:1b}$(printf '\r')"

