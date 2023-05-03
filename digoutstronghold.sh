### This file is specific to my world, where I dig out a stronghold and put in stairs.

#echo "Min x: "
#read x1
x1=-967
#echo "Max x: "
#read x2
x2=-799
#echo "Min z: "
#read z1
z1=1980
#echo "Max z: "
#read z2
z2=2083
#echo "Top y: "
#read ytop
ytop=120
#echo "Bottom y: "
#read ybottom
ybottom=-50
#echo "Block flow z: "
#read yfence
yfence=74
#echo "Air floor z: "
#read yair
yair=-18

# Set coordinates for outside perimeter in which fences block off holes and flowing blocks
((yrange=ytop-ybottom+1))
((xf1=x1-1))
((xf2=x2+1))
((zf1=z1-1))
((zf2=z2+1))
((yair=yair-1))

# Do a preliminary run through to eliminate all lava blocks which create water source blocks and mess up the following steps.
for (( i=1; i<$yrange; i++))
do
	((y1=$ytop-$i))
	screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace magma_block$(printf '\r')"
done

for (( i=1; i<$yrange; i++))
do
	((y1=$ytop-$i))
	# If y is below block flow level, create outside perimeter to block holes and flows.
	if [ $y1 -lt $yfence ]
	then
#		echo $x1 $y1 $z1 $x2 $y2 $z2
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 glass replace pointed_dripstone$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 glass replace glow_lichen$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 glass replace sculk_vein$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 glass replace lava$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 glass replace water$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 glass replace air$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf1 $y1 $zf2 iron_bars replace glass$(printf '\r')"

		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 glass replace pointed_dripstone$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 glass replace sculk_vein$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 glass replace glow_lichen$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 glass replace lava$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 glass replace water$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 glass replace air$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf1 $y1 $zf1 $xf2 $y1 $zf1 iron_bars replace glass$(printf '\r')"

		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 glass replace pointed_dripstone$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 glass replace glow_lichen$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 glass replace sculk_vein$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 glass replace lava$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 glass replace water$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 glass replace air$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf2 $y1 $zf1 iron_bars replace glass$(printf '\r')"

		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 glass replace pointed_dripstone$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 glass replace glow_lichen$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 glass replace sculk_vein$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 glass replace lava$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 glass replace water$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 glass replace air$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $xf2 $y1 $zf2 $xf1 $y1 $zf2 iron_bars replace glass$(printf '\r')"
	fi
	if [ $y1 -gt $yair ]
	then
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air$(printf '\r')"
	else
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace pointed_dripstone$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace glow_lichen$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace sculk_vein$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace water$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace sculk$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace lava$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace gravel$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace tuff$(printf '\r')"
		screen -S mc_server_java -X stuff "fill $x1 $y1 $z1 $x2 $y1 $z2 air replace deepslate$(printf '\r')"
        fi
        sleep 1
#	echo $x1 $y1 $z1 $x2 $y1 $z2
done

x=-967
z=1978
y=110
ybottom=-50
width=2
height=4
wallmat=cobblestone
stairmat=cobblestone_stairs
wallL=0
wallR=1

# Set coordinates for outside perimeter in which fences block off holes and flowing blocks
((yrange=y-ybottom-1))

for i in $(seq 0 $yrange)
do
	((x1stone=x+$i))
	((y1stone=y-1-$i))
	((z1stone=z-1+wallL))
	((x2stone=x+$i))
	((y2stone=y+height-$i))
	((z2stone=z+width-wallR))
	screen -S mc_server_java -X stuff "fill $x1stone $y1stone $z1stone $x2stone $y2stone $z2stone $wallmat$(printf '\r')"
	
	((x1air=x+$i))
	((y1air=y-1-$i))
	((z1air=z))
	((x2air=x+$i))
	((y2air=y+height-1-$i))
	((z2air=z+width-1))
	screen -S mc_server_java -X stuff "fill $x1air $y1air $z1air $x2air $y2air $z2air air$(printf '\r')"
	
	((x1steplo=x+$i))
	((y1steplo=y-1-$i))
	((z1steplo=z))
	((x2steplo=x+$i))
	((y2steplo=y-1-$i))
	((z2steplo=z+width-1))
	screen -S mc_server_java -X stuff "fill $x1steplo $y1steplo $z1steplo $x2steplo $y2steplo $z2steplo $stairmat[facing=west,half=bottom]$(printf '\r')"
	((x1stephi=x+$i))
	((y1stephi=y+height-$i))
	((z1stephi=z))
	((x2stephi=x+$i))
	((y2stephi=y+height-$i))
	((z2stephi=z+width-1))
	screen -S mc_server_java -X stuff "fill $x1stephi $y1stephi $z1stephi $x2stephi $y2stephi $z2stephi $stairmat[facing=east,half=top]$(printf '\r')"
#	sleep 1
done

((x1wallend=x+y-ybottom))
((y1wallend=ybottom-1))
((z1wallend=z-1+wallL))
((x2wallend=x+y-ybottom+2))
((y2wallend=ybottom+height))
((z2wallend=z+width-wallR))
screen -S mc_server_java -X stuff "fill $x1wallend $y1wallend $z1wallend $x2wallend $y2wallend $z2wallend $wallmat$(printf '\r')"

((x1airend=x+y-ybottom))
((y1airend=ybottom))
((z1airend=z))
((x2airend=x+y-ybottom+1))
((y2airend=ybottom+height-1))
((z2airend=z+width-1))
screen -S mc_server_java -X stuff "fill $x1airend $y1airend $z1airend $x2airend $y2airend $z2airend air$(printf '\r')"

((x1stairend=x+y-ybottom))
((y1stairend=ybottom+height))
((z1stairend=z))
((x2stairend=x+y-ybottom))
((y2stairend=ybottom+height))
((z2stairend=z+width-1))
screen -S mc_server_java -X stuff "fill $x1stairend $y1stairend $z1stairend $x2stairend $y2stairend $z2stairend $stairmat[facing=east,half=top]$(printf '\r')"

