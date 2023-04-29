echo "Min x: "
read x1
echo "Max x: "
read x2
echo "Min z: "
read z1
echo "Max z: "
read z2
echo "Top y: "
read ytop
echo "Bottom y: "
read ybottom
echo "Block flow z: "
read yfence
echo "Air floor z: "
read yair

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
