REGION border {
	FLAGS SAVE;
	EACH_TICK startlev;
	CLIP_DIST 0;
	FLOOR_HGT 40;
	CEIL_HGT 40;
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX stfloor1_tex;}

//////////CAVE.WDL//////////
WALL cavelift_oben {
	TEXTURE stfloor1_tex;
	POSITION 1;
	EACH_TICK set_cavelift_amb;
	IF_HIT set_cavelift_up;
	FLAGS SAVE;}

REGION lavateich {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT -8;
	CEIL_HGT 18;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX stfloor8_tex;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;
	SKILL7 -18;
	FLAGS SAVE,FLAG7;
	}
REGION entrance_cave {
	CLIP_DIST 200;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX stfloor1_tex;}

REGION entrance2_cave {
	CLIP_DIST 200;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX black_tex;}
/*
REGION caveplatform_b {
	AMBIENT -0.2;
	FLOOR_HGT -6;
	CEIL_HGT -5.5;
	SKILL7,-5.5;
	SKILL8,20;
	FLOOR_TEX stfloor8_tex;
	CEIL_TEX stfloor1_g2_tex;}

REGION caveplatform {
	AMBIENT 0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	SKILL7,-4.5;
	SKILL8,21;
	FLOOR_TEX stfloor1_g2_tex;
	CEIL_TEX stfloor1_r_tex;
	IF_ENTER set_caveplatform_up;
	IF_LEAVE set_caveplatform_down;
	BELOW caveplatform_b;}
*/
REGION cavegreen {
	CLIP_DIST 200;
	AMBIENT -0.2;
	#EACH_TICK flicker_cave;
	FLOOR_HGT -6;
	CEIL_HGT 18;
	FLOOR_TEX stfloor8_tex;
	CEIL_TEX stfloor8_tex;}

REGION cavegreen_flicker {
	CLIP_DIST 200;
	AMBIENT -0.1;
	EACH_TICK flicker_cave;
	FLOOR_HGT -6;
	CEIL_HGT 18;
	FLOOR_TEX stfloor8_tex;
	CEIL_TEX stfloor8_tex;}

REGION entrance_cave_F {
	CLIP_DIST 200;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX black_tex;
	FLAGS FLOOR_LIFTED;}

REGION cavecrackfloor {
	CLIP_DIST 200;
	FLAGS SAVE;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor5_tex;
	CEIL_TEX stfloor5_tex;}

REGION cavecrackfloor2 {
	CLIP_DIST 200;
	FLAGS SAVE;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor5_tex;
	CEIL_TEX stfloor5_tex;}

REGION cavewallcrack_FC {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX stfloor17_tex;
	FLAGS FLOOR_LIFTED,CEIL_LIFTED,SAVE;}

REGION caveway {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor5_tex;
	CEIL_TEX stfloor5_tex;}

REGION cavecircle1 {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX flat3_tex;
	CEIL_TEX stfloor17_tex;}

REGION cavecircle2 {
	CLIP_DIST 200;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor14_tex;
	CEIL_TEX stfloor17_tex;}

REGION cavecircle3 {
	CLIP_DIST 200;
	AMBIENT 0.7;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor20_tex;
	CEIL_TEX stfloor20_tex;}

REGION cavebrown {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX stfloor17_tex;}

REGION cavecircle_FA {
	AMBIENT -0.1;
	CLIP_DIST 200;
	FLAGS FLOOR_ASCEND;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor14_tex;
	CEIL_TEX stfloor17_tex;}

REGION cavebrown_dark {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT -0.2;
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX stfloor17_tex;}

REGION cavered {
	AMBIENT -0.15;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor18_tex;
	CEIL_TEX stfloor17_tex;}

REGION lavadeep_cave {
	FLAGS SAVE;
	AMBIENT -0.15;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX stfloor17_tex;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;}

REGION cavestairs {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stone9_tex;
	CEIL_TEX stone9_tex;}

REGION cavestairs_flicker {
	CLIP_DIST 200;
	EACH_TICK flicker_cave;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stone9_tex;
	CEIL_TEX stone9_tex;}

REGION caveway_L {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor5_tex;
	CEIL_TEX stfloor5_tex;
	FLAGS LIFTED;}

REGION lavafluss_cave {
	FLAGS SAVE;
	CLIP_DIST 260;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX stfloor1_tex;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;}

REGION lavafluss2_cave {
	FLAGS SAVE;
	CLIP_DIST 260;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX black_tex;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;}

REGION lavafluss_cave_F {
	CLIP_DIST 260;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX stfloor1_tex;
	FLAGS FLOOR_LIFTED,SAVE;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;}

REGION lavarinne {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX black_tex;}

REGION lavaplattform {
	CLIP_DIST 300;
	AMBIENT -0.1;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX stfloor1_tex;}

REGION cavepodest {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor5_tex;
	CEIL_TEX stfloor8_tex;}

REGION cavepodest_F {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor5_tex;
	CEIL_TEX stfloor8_tex;
	FLAGS FLOOR_LIFTED;}

REGION lavateichrand_F {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor1_r_tex;
	CEIL_TEX stfloor8_tex;
	FLAGS FLOOR_LIFTED;}

REGION lavateichstairs1_F {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT -6;
	CEIL_HGT 18;
	FLOOR_TEX stfloor1_r_tex;
	CEIL_TEX stfloor8_tex;
	SKILL7 -14;
	FLAGS FLOOR_LIFTED;}

REGION lavateichstairs2_F {
	CLIP_DIST 200;
	AMBIENT -0.2;
	FLOOR_HGT -6;
	CEIL_HGT 18;
	FLOOR_TEX stfloor1_r_tex;
	CEIL_TEX stfloor8_tex;
	SKILL7 -10;
	FLAGS FLOOR_LIFTED;}

REGION caveregion {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT -0.3;
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX stfloor7_tex;}

REGION lavagang {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT -0.2;
	FLOOR_TEX flat2_tex;
	CEIL_TEX flat2_tex;}

REGION lavagang2 {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT -0.25;
	FLOOR_TEX stfloor1_r_tex;
	CEIL_TEX stfloor16_tex;}

REGION lavagang1 {
	CLIP_DIST 200;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	AMBIENT -0.25;
	FLOOR_TEX stfloor16_tex;
	CEIL_TEX stfloor16_tex;}

REGION caveregion_hell {
	CLIP_DIST 200;
	AMBIENT -0.15;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX flatgr_tex;
	CEIL_TEX flatgr_tex;}

REGION caveregion_pulsate {
	CLIP_DIST 200;
	FLAGS SAVE;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX stfloor7_tex;}

REGION caveregion_pulsate2 {
	CLIP_DIST 200;
	FLAGS SAVE;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	FLOOR_TEX stfloor20_tex;
	CEIL_TEX stfloor20_tex;}

//////////


