# TODO:
# - automate placement of torches at set y-value intervals
# - enable use of direction


echo "x: "
read x
echo "z: "
read z
echo "Top y: "
read y
echo "Bottom y: "
read ybottom
echo "Width: "
read width
echo "Height: "
read height
echo "Material Walls: "
read wallmat
echo 'Material Stairs: '
read stairmat
echo 'Remove Left Wall (1 for yes, 0 for no): '
read wallL
echo 'Remove Right Wall (1 for yes, 0 for no): '
read wallR
#echo 'Direction (1=N, 2=E, 3=S, 4=W): '
#read dir

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

