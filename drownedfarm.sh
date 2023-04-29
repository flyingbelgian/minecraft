# Reference coordinate -1060 ~ 1638
# River bottom -50
# Water level 62 (y-level shown when in boat)

((x=-860))
((z=1550))
((water=62))
((bottom=-50))
blocks=stone_bricks
slabs=stone_brick_slab
stairs=stone_brick_stairs
signs=oak_wall_sign


screen -S mc_server_java -X stuff "fill $x $bottom $((z+1)) $((x-3)) $((water+138)) $((z+4)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-1)) $((water+1)) $z $((x-1)) $((water+138)) $z ladder[facing=north]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-1)) $((water+139)) $((z+2)) $((x-2)) $((water+139)) $((z+3)) hopper[facing=west]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $x $((water+139)) $((z+1)) $x $((water+139)) $((z+1)) torch$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-3)) $((water+139)) $((z+1)) $((x-3)) $((water+139)) $((z+1)) torch$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-3)) $((water+139)) $((z+2)) $((x-3)) $((water+139)) $((z+2)) chest[facing=west,type=right]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-3)) $((water+139)) $((z+3)) $((x-3)) $((water+139)) $((z+3)) chest[facing=west,type=left]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-1)) $((water+140)) $((z+2)) $((x-2)) $((water+140)) $((z+3)) $slabs[type=bottom]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $x $((water+141)) $((z+2)) $x $((water+159)) $((z+3)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $x $((water+140)) $((z+2)) $x $((water+140)) $((z+3)) $stairs[facing=west,half=top]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-3)) $((water+140)) $((z+2)) $((x-3)) $((water+140)) $((z+3)) $stairs[facing=east,half=top]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $x $((water+139)) $((z+4)) $((x-3)) $((water+159)) $((z+4)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-3)) $((water+141)) $((z+2)) $((x-3)) $((water+159)) $((z+3)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $x $((water+141)) $((z+1)) $((x-3)) $((water+159)) $((z+1)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+8)) $((water+160)) $((z-7)) $((x-11)) $((water+232)) $((z+12)) $blocks hollow$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-1)) $((water+160)) $((z+2)) $((x-2)) $((water+160)) $((z+3)) air$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+161)) $((z-6)) $((x-10)) $((water+161)) $((z+1)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+161)) $((z+4)) $((x-10)) $((water+161)) $((z+11)) $blocks$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+162)) $((z-6)) $((x-10)) $((water+162)) $((z-6)) water$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+162)) $((z+11)) $((x-10)) $((water+162)) $((z+11)) water$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+161)) $((z+2)) $((x+7)) $((water+161)) $((z+3)) water$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x-10)) $((water+161)) $((z+2)) $((x-10)) $((water+161)) $((z+3)) water$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+164)) $((z-6)) $((x-10)) $((water+164)) $((z+11)) $signs[facing=west]$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+7)) $((water+231)) $((z-6)) $((x-10)) $((water+231)) $((z+11)) water$(printf '\r')"
screen -S mc_server_java -X stuff "fill $((x+8)) $((water+232)) $((z-7)) $((x-11)) $((water+232)) $((z+12)) $slabs[type=bottom]$(printf '\r')"
