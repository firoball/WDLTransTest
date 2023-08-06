ACTION enter_area {
	PLAY_SONG cave_song,1;
	SET AMBIENT,0.2;
	SET PLAYER_LIGHT,1;
	}

ACTION change_map_village {
	SET info_txt.STRING,load_str;
	SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET levelnr,90;
	SET village_pos,0;
	MAP <village.wmp>;
}

REGION area_village {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  300;
	AMBIENT 0.3;
	IF_ENTER change_map_village;
}

REGION area_tunnel {
	FLOOR_TEX stone8_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  300;
	AMBIENT 0.3;
}

REGION area_tunnel_bright {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX stone11_tex;
	CLIP_DIST  400;
	AMBIENT 0;
}

REGION area_tunnel_CD {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX stone11_tex;
	CLIP_DIST  400;
	AMBIENT 0;
	FLAGS CEIL_DESCEND;
}

REGION area_tunnel_medium {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX black_tex;
	CLIP_DIST  400;
	AMBIENT -0.15;
	IF_ENTER area_must_stay;
}

STRING must_stay_str,"no```i cannot leave right now```";
ACTION area_must_stay {
	SET newstring,1;
	SET info_str, must_stay_str;
}

REGION area_tunnel_dark {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX black_tex;
	CLIP_DIST  400;
	AMBIENT -0.3;
}

REGION area_way {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_way_FD {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
	FLAGS FLOOR_DESCEND;
}

REGION area_grass {
	FLOOR_TEX stfloor2_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_grass_FD {
	FLOOR_TEX stfloor2_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
	FLAGS FLOOR_DESCEND;
}

REGION area_tree_CA {
	FLOOR_TEX stfloor2_tex;
	CEIL_TEX stfloor21_tex;
	CLIP_DIST  400;
	AMBIENT 0;
	FLAGS CEIL_ASCEND;
}

REGION area_cave_CD {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX stone11_tex;
	CLIP_DIST  300;
	AMBIENT 0;
	FLAGS CEIL_DESCEND;
}

REGION area_cave {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX stone11_tex;
	CLIP_DIST  300;
	AMBIENT 0;
}

REGION area_cave2 {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX stfloor10_tex;
	CLIP_DIST  400;
	AMBIENT 0;
}

REGION area_cave_woodV {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX wood5h_tex;
	CLIP_DIST  400;
	AMBIENT -0.15;
}

REGION area_cave_woodH {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX wood5b_tex;
	CLIP_DIST  400;
	AMBIENT -0.15;
}

REGION area_cave_dark {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX black_tex;
	CLIP_DIST  400;
	AMBIENT -0.15;
}

REGION area_cave_flicker {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX black_tex;
	CLIP_DIST  400;
	AMBIENT -0.15;
	EACH_TICK flicker_cave;
}

REGION area_cave2_CD {
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX stfloor10_tex;
	CLIP_DIST  400;
	AMBIENT 0;
	FLAGS CEIL_DESCEND;
}

REGION area_stone {
	FLOOR_TEX stfloor10_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_fence {
	FLOOR_TEX wood5b_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_sky { 
	FLOOR_TEX sky3_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  0;
	AMBIENT 0.3;
	FLAGS FLOOR_DESCEND;
}

REGION area_ruinsky {
	FLOOR_TEX stfloor26_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_ruinsky_FD {
	FLOOR_TEX stfloor26_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
	FLAGS FLOOR_DESCEND;
}

REGION area_ruinceil {
	FLOOR_TEX stfloor26_tex;
	CEIL_TEX stfloor1_tex;
	CLIP_DIST  400;
	AMBIENT 0;
}

REGION area_ruingrey {
	FLOOR_TEX stfloor1_g2_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_ruinbrightgrey {
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
}

REGION area_ruingrey_FD {
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  400;
	AMBIENT 0.3;
	FLAGS FLOOR_DESCEND;
}

REGION area_ruingrey_FDCA {
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX stfloor1_tex;
	CLIP_DIST  400;
	AMBIENT 0.1;
	FLAGS FLOOR_DESCEND, CEIL_ASCEND;
}

