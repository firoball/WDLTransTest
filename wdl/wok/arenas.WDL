//////////Arena1: Circle of Honor//////////
REGION arena1_circle {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.15;
}

REGION arena1_circle_flicker {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.15;
	EACH_TICK flicker_cave;
}

REGION arena1_circle_b {
        FLOOR_TEX stone6_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.2;
        FLAGS CEIL_ASCEND;
}

REGION arena1_circle_a1 {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        BELOW arena1_circle_b;
        FLOOR_HGT  0;
        CEIL_HGT  10;
        CLIP_DIST  200;
        AMBIENT  -.15;
}

REGION arena1_circle_a2 {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        BELOW arena1_circle_b;
        FLOOR_HGT  0;
        CEIL_HGT  10;
        CLIP_DIST  200;
        AMBIENT  -.15;
}

REGION arena1_podest {
        FLOOR_TEX stfloor1_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.05;
}

REGION arena1_main_flicker {
FLOOR_TEX stone6_tex;
CEIL_TEX stone8_tex;
FLOOR_HGT  0;
CEIL_HGT  12;
CLIP_DIST  200;
AMBIENT -.2;
EACH_TICK flicker_cave;
}

REGION arena1_main {
FLOOR_TEX stone6_tex;
CEIL_TEX woodflr_tex;
FLOOR_HGT  0;
CEIL_HGT  12;
CLIP_DIST  200;
AMBIENT -.05;
}

REGION arena1_light {
        FLOOR_TEX stone6_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT 0.2;
}

REGION arena1_stairs {
        FLOOR_TEX woodflr_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -0.2;
}

REGION arena1_stairs_hell {
        FLOOR_TEX woodflr_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT 0.1;
}

REGION arena1_window {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT 0.1;
	FLAGS CEIL_ASCEND;
}

REGION arena1_way_CA {
        FLOOR_TEX stone6_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.2;
        FLAGS CEIL_ASCEND;
}

REGION arena1_way {
        FLOOR_TEX stone6_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.2;
}

REGION arena1_way2 {
        FLOOR_TEX woodflr_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.15;
}

//////////Arena2: Deep Fear//////////

REGION arena2_deep {
        FLOOR_TEX black_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  -100;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	EACH_TICK arena2_lightning;
}

REGION arena2_rand {
        FLOOR_TEX sky1_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  -100;
        CEIL_HGT  20;
        CLIP_DIST  0;
        AMBIENT 0;
	EACH_TICK arena2_lightning;
	FLAGS FLOOR_DESCEND;
}
REGION arena2_bridge_b {
        FLOOR_TEX black_tex;
        CEIL_TEX wood5b_tex;
        FLOOR_HGT  -100;
        CEIL_HGT  0;
        CLIP_DIST  300;
        AMBIENT -.1;
}

REGION arena2_bridge {
        FLOOR_TEX wood5b_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  1;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	BELOW arena2_bridge_b;
}

REGION arena2_bridge2_b {
        FLOOR_TEX black_tex;
        CEIL_TEX wood5h_tex;
        FLOOR_HGT  -100;
        CEIL_HGT  -15;
        CLIP_DIST  300;
        AMBIENT -.1;
}

REGION arena2_bridge2 {
        FLOOR_TEX wood5h_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  -14;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	BELOW arena2_bridge2_b;
}

REGION arena2_bridge2_bb {
        FLOOR_TEX wood5h_tex;
        CEIL_TEX wood5b_tex;
        FLOOR_HGT  -14;
        CEIL_HGT  0;
        CLIP_DIST  300;
        AMBIENT -.1;
	BELOW arena2_bridge2_b;
}

REGION arena2_bridge_cross {
        FLOOR_TEX wood5b_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  1;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	BELOW arena2_bridge2_bb;
}

REGION arena2_podest {
        FLOOR_TEX stfloor10_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
}

REGION arena2_podest_b {
        FLOOR_TEX stfloor10_tex;
        CEIL_TEX stfloor10_tex;
        FLOOR_HGT -14;
        CEIL_HGT  -1.5;
        CLIP_DIST  300;
        AMBIENT -.1;
}

REGION arena2_podest_a {
        FLOOR_TEX stfloor10_tex;
        CEIL_TEX sky1_tex;
        FLOOR_HGT  1.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	BELOW arena2_podest_b;
}
REGION arena2_cave {
        FLOOR_TEX stfloor10_tex;
        CEIL_TEX stfloor10_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT -.1;
}

REGION arena2_cave_CD {
        FLOOR_TEX stfloor10_tex;
        CEIL_TEX stfloor12_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT -.1;
	FLAGS CEIL_DESCEND;
}

REGION arena2_caveflicker {
        FLOOR_TEX stfloor10_tex;
        CEIL_TEX stfloor10_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	EACH_TICK flicker_cave;
}

REGION arena2_caveflicker_FACD {
        FLOOR_TEX stfloor12_tex;
        CEIL_TEX stfloor12_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT 0;
	EACH_TICK flicker_cave;
	FLAGS FLOOR_ASCEND, CEIL_DESCEND;
}

REGION arena2_kiste_gr {
        FLOOR_TEX kiste_gross_tex;
        CEIL_TEX stfloor10_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT -.1;
}

REGION arena2_kiste_kl {
        FLOOR_TEX kiste_klein_tex;
        CEIL_TEX stfloor10_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  20;
        CLIP_DIST  300;
        AMBIENT -.1;
}

BMAP leucht_map, <leucht.pcx>;
TEXTURE leucht_tex {
	BMAP leucht_map;
	FLAGS DIAPHANOUS,CLIP;
	SCALE_XY 15,15;
}

WAY leuchti_way;
WAY leuchti2_way;
WAY leuchti3_way;
WAY leuchti4_way;

ACTOR leuchti {
	HEIGHT 5;
	TEXTURE leucht_tex;
	TARGET leuchti_way;
	FLAGS PASSABLE, SAVE,GROUND;
	SPEED 1.5;
	MAP_COLOR 0;
}

ACTOR leuchti2 {
	HEIGHT 7;
	TEXTURE leucht_tex;
	TARGET leuchti2_way;
	FLAGS PASSABLE, SAVE,GROUND;
	SPEED 1.5;
	MAP_COLOR 0;
}

ACTOR leuchti3 {
	HEIGHT 9;
	TEXTURE leucht_tex;
	TARGET leuchti3_way;
	FLAGS PASSABLE, SAVE,GROUND;
	SPEED 1.5;
	MAP_COLOR 0;
}

ACTOR leuchti4 {
	HEIGHT 12;
	TEXTURE leucht_tex;
	TARGET leuchti4_way;
	FLAGS PASSABLE, SAVE,GROUND;
	SPEED 1.5;
	MAP_COLOR 0;
}

ACTION arena2_lightning{
RULE THERE.SKILL2=RANDOM*160+16;
WAITT THERE.SKILL2;
RULE THERE.SKILL2=RANDOM*10;
SET_ALL arena2_podest.AMBIENT,THERE.SKILL2;
SET_ALL arena2_podest_a.AMBIENT,THERE.SKILL2;
SET_ALL arena2_deep.AMBIENT,THERE.SKILL2;
SET_ALL arena2_bridge.AMBIENT,THERE.SKILL2;
SET_ALL arena2_bridge2.AMBIENT,THERE.SKILL2;
SET_ALL arena2_bridge_cross.AMBIENT,THERE.SKILL2;
RULE THERE.SKILL2=RANDOM*16;
WAITT THERE.SKILL2;
SET_ALL arena2_podest.AMBIENT,0;
SET_ALL arena2_podest_a.AMBIENT,0;
SET_ALL arena2_deep.AMBIENT,0;
SET_ALL arena2_bridge.AMBIENT,0;
SET_ALL arena2_bridge2.AMBIENT,0;
SET_ALL arena2_bridge_cross.AMBIENT,0;
}

//////////Arena3: Dark Skies//////////

REGION arena3_battlefield {
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX sky4_tex;
	FLOOR_HGT 0;
	CEIL_HGT 30;
	AMBIENT -.3;
	CLIP_DIST 200;
}

REGION arena3_battlefield_flicker {
	FLOOR_TEX stfloor7_tex;
	CEIL_TEX sky4_tex;
	FLOOR_HGT 0;
	CEIL_HGT 30;
	AMBIENT -.3;
	CLIP_DIST 200;
	EACH_TICK flicker_cave_d;
}

REGION arena3_blood {
	FLOOR_TEX blutoben_tex;
	CEIL_TEX sky4_tex;
	FLOOR_HGT -.5;
	CEIL_HGT 30;
	AMBIENT .1;
	CLIP_DIST 200;
}

REGION arena3_pfosten {
	FLOOR_TEX wood5h_tex;
	CEIL_TEX sky4_tex;
	FLOOR_HGT 20;
	CEIL_HGT 30;
	AMBIENT .2;
	CLIP_DIST 200;
}

//////////Arena4: Chaos Maze//////////

REGION arena4_maze {
	FLOOR_TEX stone8_tex;
	CEIL_TEX sky4_tex;
	FLOOR_HGT 0;
	CEIL_HGT 30;
	AMBIENT -.1;
	CLIP_DIST 200;
}

REGION arena4_maze2 {
	FLOOR_TEX stone8_tex;
	CEIL_TEX flat3_tex;
	FLOOR_HGT 0;
	CEIL_HGT 30;
	AMBIENT -.2;
	CLIP_DIST 200;
}

REGION arena4_maze2_flicker {
	FLOOR_TEX stone8_tex;
	CEIL_TEX flat3_tex;
	FLOOR_HGT 0;
	CEIL_HGT 30;
	AMBIENT -.2;
	CLIP_DIST 200;
	EACH_TICK flicker_cave;
}

REGION arena4_maze_FA {
	FLOOR_TEX stone8_tex;
	CEIL_TEX sky4_tex;
	FLOOR_HGT 0;
	CEIL_HGT 30;
	AMBIENT -.1;
	CLIP_DIST 200;
	FLAGS FLOOR_ASCEND;
}

