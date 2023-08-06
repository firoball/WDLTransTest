//////////VILLAGE//////////

SYNONYM qinvdata {TYPE OVERLAY;}
SYNONYM ainvdata {TYPE OVERLAY;}
SYNONYM attack_yesno {TYPE ACTION;}

ACTION cutscene_on {
SET attack_yesno,EACH_TICK.3;
SET EACH_TICK.3,NULL;
SET newstring,1;
SET info_str,nix_str;
SET qinvdata,LAYERS.5;
SET ainvdata,LAYERS.7;
SET LAYERS.5,NULL; SET LAYERS.7,NULL;
SET disp_txt.VISIBLE,0;
SET LAYERS.14,NULL;
SET PANELS.13,NULL;
SET SCREEN_Y,37;
SET blacktop_ovr.VISIBLE,1;
SET blackbottom_ovr.VISIBLE,1;
}

ACTION cutscene_off {
SET blacktop_ovr.VISIBLE,0;
SET blackbottom_ovr.VISIBLE,0;
SET disp_txt.VISIBLE,1;
SET LAYERS.5,qinvdata; SET LAYERS.7,ainvdata;
SET LAYERS.14,display2_ovr;
SET SCREEN_Y,0;
SET PANELS.13,display_pan;
IF_NEQUAL attack_yesno,NULL; SET EACH_TICK.3,weapon_atk;
}

ACTION enter_village2 {
SET cur_wpn,0;
PLAY_SONG cave_song,1;
IF (village_pos==1) {SET PLAYER_X,village_target1.X; SET PLAYER_Y,village_target1.Y; 
SET PLAYER_ANGLE,village_target1.ANGLE; SET HERE,village_target1.REGION;}
IF (village_pos==2) {SET PLAYER_X,village_target2.X; SET PLAYER_Y,village_target2.Y;
SET PLAYER_ANGLE,village_target2.ANGLE; SET HERE,village_target2.REGION;}
IF (village_pos==3) {SET PLAYER_X,village_target3.X; SET PLAYER_Y,village_target3.Y;
SET PLAYER_ANGLE,village_target3.ANGLE; SET HERE,village_target3.REGION;}
SET RENDER_MODE,1;
SET village_pos,0;
}

ACTION change_map_area {
	SET info_txt.STRING,load_str;
	SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET levelnr,91;
	SET village_pos,0;
	MAP <area.wmp>;
}

REGION village_area {
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX sky3_tex;
	CLIP_DIST  300;
	AMBIENT 0.3;
	IF_ENTER change_map_area;
}

REGION village_chimney2b {
FLOOR_TEX walltex5_tex;
CEIL_TEX walltex5_tex;
FLOOR_HGT 2;
CEIL_HGT 6.4;
CLIP_DIST 300;
AMBIENT -.1;
}

REGION village_chimney2 {
FLOOR_TEX walltex5_tex;
CEIL_TEX woodceil_tex;
FLOOR_HGT 7;
CEIL_HGT 7;
CLIP_DIST 300;
BELOW village_chimney2b;
}

REGION village_chimney {
FLOOR_TEX walltex5_tex;
CEIL_TEX black_tex;
CLIP_DIST 300;
AMBIENT -.3;
}

REGION village_chimney_FA {
        FLOOR_TEX walltex5_tex;
        CEIL_TEX woodceil_tex;
        CLIP_DIST 300;
	FLAGS FLOOR_ASCEND;
}

REGION village_minehell {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor12_tex;
        CLIP_DIST 300;
}

REGION village_mine2hell {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor12_tex;
        CLIP_DIST 300;
	FLAGS CEIL_DESCEND;
}

REGION village_mine {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor12_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	FLAGS CEIL_DESCEND,FLOOR_DESCEND;
	AMBIENT -.1;
}

REGION village_mine2 {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX stfloor12_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	FLAGS CEIL_DESCEND,FLOOR_DESCEND;
	AMBIENT -.1;
}

REGION village_mine2_noFCD {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX stfloor12_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
}

REGION village_mine3 {
        FLOOR_TEX stfloor12_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	FLAGS FLOOR_ASCEND;
	AMBIENT .3;
}

REGION village_mineentrance {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	AMBIENT .3;
}

REGION village_inn_CD {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	FLAGS CEIL_DESCEND;
	AMBIENT -.2;
}

REGION village_inn {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	AMBIENT -.2;
}

REGION village_bed {
        FLOOR_TEX stfloor11_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 200;
}

REGION village_barroom {
        FLOOR_TEX stone8_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	AMBIENT -.1;
}

REGION village_barroom_flicker {
        FLOOR_TEX stone8_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 200;
	AMBIENT -.1;
	EACH_TICK flicker_cave;
}

REGION village_churchbalken_b {
        FLOOR_TEX stfloor2_tex;
        CEIL_TEX wood5h_tex;
        FLOOR_HGT  -7;
        CEIL_HGT  5;
        CLIP_DIST 300;
	AMBIENT .2;
}

REGION village_churchbalken {
        FLOOR_TEX wood5h_tex;
        CEIL_TEX wood5h_tex;
        FLOOR_HGT  7;
        CEIL_HGT  17;
        CLIP_DIST 300;
	BELOW village_churchbalken_b;
	AMBIENT .3;
}

REGION village_churchgrey {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX stfloor1_g2_tex;
        FLOOR_HGT  7;
        CEIL_HGT  17;
        CLIP_DIST 300;
	AMBIENT .15;
}

REGION village_churchwin_b {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX stfloor1_g2_tex;
        FLOOR_HGT  -6.5;
        CEIL_HGT  3.5;
        CLIP_DIST 300;
	AMBIENT .2;
}

REGION village_churchwin1 {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  6;
        CEIL_HGT  17;
        CLIP_DIST 300;
	BELOW village_churchwin_b;
	AMBIENT .3;
}

REGION village_churchflicker {
        FLOOR_TEX stone6_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT 0;
	EACH_TICK flicker_cave;
}

REGION village_churchcross {
        FLOOR_TEX stfloor1_r_tex;
        CEIL_TEX stfloor1_r_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT 0;
	EACH_TICK flicker_cave;
}

REGION village_churchseat {
        FLOOR_TEX wood5h_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT -.2;
}

REGION village_churchaltar {
        FLOOR_TEX stfloor1_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT 0;
}

REGION village_church {
        FLOOR_TEX stone6_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT -.2;
}

REGION village_churchred {
        FLOOR_TEX stfloor1_r_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT -.2;
}

REGION village_church_br {
        FLOOR_TEX stone6_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT .1;
}

REGION village_churchred_br {
        FLOOR_TEX stfloor1_r_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -10;
        CEIL_HGT  3;
        CLIP_DIST 300;
	AMBIENT .1;
}

REGION village_churchwall {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
}

REGION village_churchwall_FA {
        FLOOR_TEX stfloor1_g2_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
	FLAGS FLOOR_ASCEND;
}

REGION village_churchroof_b {
        FLOOR_TEX stone6_tex;
        CEIL_TEX woodceil_tex;
        FLOOR_HGT  -8;
        CEIL_HGT  4;
        CLIP_DIST 300;
	FLAGS CEIL_ASCEND;
	AMBIENT -.2;
}

REGION village_churchroof {
        FLOOR_TEX woodceil_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  7;
        CEIL_HGT  17;
        CLIP_DIST 300;
	AMBIENT 0.3;
	BELOW village_churchroof_b;
	FLAGS FLOOR_ASCEND;
}

REGION village_mageroom {
        FLOOR_TEX carpet_tex;
        CEIL_TEX wood5h_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT -0.1;
	FLAGS CEIL_ASCEND;
}

REGION village_barH {
        FLOOR_TEX wood5h_tex;
        CEIL_TEX wood5h_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 200;
	AMBIENT -0.1;
}

REGION village_barB {
        FLOOR_TEX wood5b_tex;
        CEIL_TEX wood5b_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 200;
	AMBIENT -0.1;
}

REGION village_grass {
        FLOOR_TEX stfloor2_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
}

REGION village_grass_FD {
        FLOOR_TEX stfloor2_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
	FLAGS FLOOR_DESCEND;
}

REGION village_well {
        FLOOR_TEX stfloor1_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
}

REGION village_stone {
        FLOOR_TEX stfloor12_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
}

REGION village_water {
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
}


REGION village_passageS1 {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtS1;
}

REGION village_passageS2 {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtS2;
	EACH_TICK flicker_cave_d;
}

REGION village_passageS3 {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtS3;
}

REGION village_passageN4 {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtN4;
	FLAGS FLOOR_ASCEND,CEIL_ASCEND;
}

REGION village_passageE1 {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtE1;
	FLAGS FLOOR_ASCEND,CEIL_ASCEND;
}

REGION village_passageW3 {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtW3;
	FLAGS FLOOR_ASCEND,CEIL_ASCEND;
}

REGION village_passageE2 {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
	IF_ENTER change_districtE2;
	FLAGS FLOOR_ASCEND,CEIL_ASCEND;
}

ACTION change_districtS1 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,1;
	MAP <village.wmp>;
}

ACTION change_districtE1 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,1;
	MAP <village2.wmp>;
}

ACTION change_districtN4 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,4;
	MAP <village2.wmp>;
}

ACTION change_districtS2 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,2;
	MAP <village.wmp>;
}

ACTION change_districtE2 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,2;
	MAP <village2.wmp>;
}

ACTION change_districtS3 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,3;
	MAP <village.wmp>;
}

ACTION change_districtW3 {
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	SET village_pos,3;
	MAP <village2.wmp>;
}

REGION village_passage {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  .1;
}

REGION village_passagedark {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  -.15;
}

REGION village_passageFACA {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
	AMBIENT -.15;
	FLAGS FLOOR_ASCEND,CEIL_ASCEND;
}

REGION village_passageCD {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  .1;
	FLAGS CEIL_DESCEND;
}

REGION village_passageFA {
        FLOOR_TEX stone8_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  .1;
	FLAGS FLOOR_ASCEND;
}

REGION village_waybCL {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  .1;
	FLAGS CEIL_DESCEND;
}

REGION village_wayb {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  -12.1;
        CEIL_HGT  -2;
        CLIP_DIST 300;
        AMBIENT  .1;
}

REGION village_way {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  17;
        CLIP_DIST 300;
        AMBIENT  .3;
	BELOW village_wayb;
}

REGION village_wayL {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  17;
        CLIP_DIST 300;
        AMBIENT  .3;
	BELOW village_waybCL;
}

REGION village_bridge {
        FLOOR_TEX stone8_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  17;
        CLIP_DIST 300;
        AMBIENT  .3;
	BELOW village_wayb;
}

REGION village_crate {
        FLOOR_TEX kiste_klein_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  17;
        CLIP_DIST 300;
        AMBIENT  .3;
}

REGION village_bridgeL {
        FLOOR_TEX stone8_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  17;
        CLIP_DIST 300;
        AMBIENT  .3;
	BELOW village_waybCL;
}

REGION village_bridgenb {
        FLOOR_TEX stone8_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0.5;
        CEIL_HGT  17;
        CLIP_DIST 300;
        AMBIENT  .3;
}

REGION village_market {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
        AMBIENT  .3;
}

REGION village_marketFD {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
        AMBIENT  .3;
	FLAGS FLOOR_DESCEND;
}

REGION village_street {
        FLOOR_TEX stfloor4_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
	AMBIENT 0.3;
}

REGION village_tree {
        FLOOR_TEX stfloor2_tex;
        CEIL_TEX stfloor2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  16;
        CLIP_DIST 300;
        FLAGS CEIL_ASCEND;
}

REGION village_roof1_b {
        FLOOR_TEX stfloor2_tex;
        CEIL_TEX wood5b_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
}

REGION village_roof1 {
        FLOOR_TEX wood5b_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  13.5;
        CEIL_HGT  16;
        CLIP_DIST 300;
	AMBIENT .3;
	BELOW village_roof1_b;
}

REGION village_roof1_FA {
        FLOOR_TEX wood5b_tex;
        CEIL_TEX sky3_tex;
        FLOOR_HGT  13.5;
        CEIL_HGT  16;
        CLIP_DIST 300;
	AMBIENT .3;
	FLAGS FLOOR_ASCEND;
	BELOW village_roof1_b;
}

REGION village_shop {
	FLOOR_TEX woodflr_tex;
	CEIL_TEX woodflr_tex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	CLIP_DIST 300;
}

REGION village_stairs {
	AMBIENT -.1;
	FLOOR_TEX woodflr_tex;
	CEIL_TEX woodflr_tex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	CLIP_DIST 300;
}

REGION village_window {
	FLOOR_TEX walltex3_tex;
	CEIL_TEX walltex3_tex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	CLIP_DIST 300;
}

REGION village_window2 {
	FLOOR_TEX stfloor25_tex;
	CEIL_TEX stfloor25_tex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
	CLIP_DIST 300;
}

REGION village_roof2 {
        FLOOR_TEX stfloor2_tex;
        CEIL_TEX wood5b_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST 300;
}

REGION village_counter {
	FLOOR_TEX wood5b_tex;
	CEIL_TEX woodflr_tex;
	FLOOR_HGT 0;
	CEIL_HGT 12;
}

ACTION its_a_dark_nite {
SET_ALL village_roof1.CEIL_TEX, sky1_tex;
SET_ALL village_roof1_FA.CEIL_TEX, sky1_tex;
SET_ALL village_street.CEIL_TEX,sky1_tex;
SET_ALL village_grass.CEIL_TEX,sky1_tex;
SET_ALL village_market.CEIL_TEX,sky1_tex;
SET_ALL village_marketFD.CEIL_TEX,sky1_tex;
SET_ALL village_grass_FD.CEIL_TEX,sky1_tex;
SET_ALL sky3.TEXTURE,sky1_tex;
SET PLAYER_LIGHT,0.5;
SET LIGHT_DIST,0;
SET AMBIENT,-0.1;
SET RENDER_MODE,2;}

WALL level_portal {
	DIST 0;
	TEXTURE teletex1_tex;
	IF_NEAR leave_village;
	FLAGS TRANSPARENT,FENCE;
}

WALL village_doortex1 {
	TEXTURE wooddoor_tex;
	IF_HIT set_village_door1_open;
	DIST 50;
	FLAGS SAVE,PORTCULLIS;
}

REGION village_door1 {
        FLOOR_TEX woodflr_tex;
        CEIL_TEX woodflr_tex;
        FLOOR_HGT  0;
        CEIL_HGT  0;
        CLIP_DIST  300;
	SKILL3 0.5;
	SKILL7 13;
	FLAGS SAVE;
}

ACTION set_village_door1_open {
	IF_NEQUAL use,1; END;
	PLAY_SOUND door_snd,0.8;
	SET_ALL MY.IF_HIT,NULL;
	SET_ALL MY.IF_FAR,set_village_door1_close;
	SET village_door1.EACH_TICK,slidedoor_open;
}

ACTION set_village_door1_close {
	PLAY_SOUND door_snd,0.2;
	SET_ALL MY.IF_HIT,set_village_door1_open;
	SET_ALL MY.IF_FAR,NULL;
	SET village_door1.EACH_TICK,slidedoor_close;
}

WALL village_doortex2 {
	TEXTURE wood5h_tex;
	IF_HIT set_village_door2_open;
	FLAGS SAVE,PORTCULLIS;
}

ACTION set_village_door2_open {
	IF_NEQUAL use,1; END;
	SET_ALL village_doortex2.IF_HIT,NULL;
	SET forest_door3l.EACH_TICK,swing_open;
	SET forest_door3r.EACH_TICK,swing_open;
}

STRING villagesignN_str, "\n\n\nNorth District";
WALL villagesignN {
	FLAGS TRANSPARENT,FENCE;
	TEXTURE sign_tex;
	IF_HIT read_villagesignN;
}

STRING villagesignS_str, "\n\n\nSouth District";
WALL villagesignS {
	FLAGS TRANSPARENT,FENCE;
	TEXTURE sign_tex;
	IF_HIT read_villagesignS;
}

STRING villagesignO_str, "\n\n\nEast District";
WALL villagesignO {
	FLAGS TRANSPARENT,FENCE;
	TEXTURE sign_tex;
	IF_HIT read_villagesignO;
}

STRING villagesignW_str, "\n\n\nWest District";
WALL villagesignW {
	FLAGS TRANSPARENT,FENCE;
	TEXTURE sign_tex;
	IF_HIT read_villagesignw;
}

ACTION read_villagesignN {
	IF_NEQUAL use,1; END;
	SET sign_txt.STRING,villagesignN_str;
	CALL show_sign;
}

ACTION read_villagesignS {
	IF_NEQUAL use,1; END;
	SET sign_txt.STRING,villagesignS_str;
	CALL show_sign;
}

ACTION read_villagesignO {
	IF_NEQUAL use,1; END;
	SET sign_txt.STRING,villagesignO_str;
	CALL show_sign;
}

ACTION read_villagesignW {
	IF_NEQUAL use,1; END;
	SET sign_txt.STRING,villagesignW_str;
	CALL show_sign;
}

//////////Arena//////////
ACTION enter_arena {
PLAY_SONG cave_song,1;}

//////////Arena Portals//////////
THING arena_portal {
	TEXTURE teletex2_tex;
	IF_NEAR arena_out;
}

THING circle_portal {
	TEXTURE teletex2_tex;
	IF_NEAR circle_in;
}

THING deepfear_portal {
	TEXTURE teletex2_tex;
	IF_NEAR deepfear_in;
}

THING chaosmaze_portal {
	TEXTURE teletex2_tex;
	IF_NEAR chaosmaze_in;
}

THING darkskies_portal {
	TEXTURE teletex2_tex;
	IF_NEAR darkskies_in;
}

THING village_landing {
	TEXTURE black_tex;
	FLAGS INVISIBLE;}

THING circle_landing {
	TEXTURE black_tex;
	FLAGS INVISIBLE;}

THING deepfear_landing {
	TEXTURE black_tex;
	FLAGS INVISIBLE;}

THING chaosmaze_landing {
	TEXTURE black_tex;
	FLAGS INVISIBLE;}

THING darkskies_landing {
	TEXTURE black_tex;
	FLAGS INVISIBLE;}

ACTION arena_out {
RULE PLAYER_X=village_landing.X;
RULE PLAYER_Y=village_landing.Y;
SET HERE,village_landing.REGION;
RULE PLAYER_ANGLE=village_landing.ANGLE;
SET RENDER_MODE,2;
CALL stop_moving;
WAIT 1;
CALL set_moving;
}

ACTION circle_in {
RULE PLAYER_X=circle_landing.X;
RULE PLAYER_Y=circle_landing.Y;
SET HERE,circle_landing.REGION;
RULE PLAYER_ANGLE=circle_landing.ANGLE;
SET RENDER_MODE,2;
CALL stop_moving;
WAIT 1;
CALL set_moving;
}

ACTION deepfear_in {
	RULE PLAYER_X=deepfear_landing.X;
	RULE PLAYER_Y=deepfear_landing.Y;
	SET HERE,deepfear_landing.REGION;
	RULE PLAYER_ANGLE=deepfear_landing.ANGLE;
	SET RENDER_MODE,2;
	CALL stop_moving;
	WAIT 1;
	CALL set_moving;
}

ACTION chaosmaze_in {
	RULE PLAYER_X=chaosmaze_landing.X;
	RULE PLAYER_Y=chaosmaze_landing.Y;
	SET HERE,chaosmaze_landing.REGION;
	RULE PLAYER_ANGLE=chaosmaze_landing.ANGLE;
	SET RENDER_MODE,2;
	CALL stop_moving;
	WAIT 1;
	CALL set_moving;
}

ACTION darkskies_in {
	RULE PLAYER_X=darkskies_landing.X;
	RULE PLAYER_Y=darkskies_landing.Y;
	SET HERE,darkskies_landing.REGION;
	RULE PLAYER_ANGLE=darkskies_landing.ANGLE;
	SET RENDER_MODE,2;
	CALL stop_moving;
	WAIT 1;
	CALL set_moving;
}

//////////End Arena//////////

WAY peter_way;
WAY leader_way;
ACTOR peter {TEXTURE mino_tex; IF_HIT peter_talk; TARGET peter_way; SPEED 1; FLAGS CAREFULLY;}
ACTOR leader {TEXTURE peter_tex; IF_HIT leader_talk; TARGET leader_way; SPEED 0.2; FLAGS CAREFULLY;}
ACTOR nicki {TEXTURE peter_tex; IF_HIT nicki_talk; FLAGS CAREFULLY;}
ACTOR tim {TEXTURE craig_tex; IF_HIT tim_talk; FLAGS CAREFULLY;}
ACTOR eric {TEXTURE guard_tex; IF_HIT eric_talk; FLAGS CAREFULLY;}
ACTOR gorgan {TEXTURE martek_tex;  HEIGHT -0.2; IF_HIT gorgan_talk; FLAGS CAREFULLY;}	

ACTION peter_talk {
	IF_NEQUAL use,1; END;
	SET conversation_txt.STRING,peter1_str;
	SET NPC_ovr.POS_X,0;
	CALL show_conversation;
	WAITT 4;	
	SET IF_SPACE, hide_conversation;
	SET IF_RIGHT, hide_conversation;
}

ACTION nicki_talk {
	IF_NEQUAL use,1; END;
	SET conversation_txt.STRING,nicki1_str;
	SET NPC_ovr.POS_X,0;
	CALL show_conversation;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, nicki_talk2;
	SET IF_RIGHT, nicki_talk2;}

ACTION nicki_talk2 {WAITT 4; SET conversation_txt.STRING,nicki2_str; SET IF_SPACE, nicki_talk3; SET IF_RIGHT, nicki_talk3;}
ACTION nicki_talk3 {WAITT 4; SET conversation_txt.STRING,nicki3_str; SET IF_SPACE, nicki_talk4; SET IF_RIGHT, nicki_talk4;}
ACTION nicki_talk4 {WAITT 4; SET conversation_txt.STRING,nicki4_str; SET IF_SPACE, nicki_talk5; SET IF_RIGHT, nicki_talk5;}
ACTION nicki_talk5 {WAITT 4; SET conversation_txt.STRING,nicki5_str; SET IF_SPACE, nicki_talk6; SET IF_RIGHT, nicki_talk6;}
ACTION nicki_talk6 {WAITT 4; SET conversation_txt.STRING,nicki6_str; SET IF_SPACE, hide_conversation; SET IF_RIGHT, hide_conversation;
SET PANELS.12,empty_pan;}

ACTION leader_talk {
	IF_NEQUAL use,1; END;
	SET conversation_txt.STRING,leader1_str;
	SET NPC_ovr.POS_X,0;
	CALL show_conversation;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, leader_talk2;
	SET IF_RIGHT, leader_talk2;}

ACTION leader_talk2 {WAITT 4; SET conversation_txt.STRING,leader2_str; SET IF_SPACE, hide_conversation; SET IF_RIGHT, hide_conversation;
SET PANELS.12,empty_pan;}

ACTION tim_talk {
	IF_NEQUAL use,1; END;
	SET conversation_txt.STRING,craigcut_str;
	SET NPC_ovr.POS_X,0;
	SET NPC_ovr,craig_ovr;
	CALL show_conversation;
	WAITT 4;	
	SET IF_SPACE, hide_conversation;
	SET IF_RIGHT, hide_conversation;
}

ACTION eric_talk {
	IF_NEQUAL use,1; END;
	SET conversation_txt.STRING,eric_str;
	SET NPC_ovr.POS_X,0;
	CALL show_conversation;
	WAITT 4;	
	SET IF_SPACE, hide_conversation;
	SET IF_RIGHT, hide_conversation;
}

ACTION gorgan_talk {
	IF_NEQUAL use,1; END;
	SET conversation_txt.STRING,gorgan_hi_str;
	SET NPC_ovr.POS_X,280;
	CALL show_conversation;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, show_shopping;#hide_conversation;
	SET IF_RIGHT, show_shopping;#hide_conversation;
}

ACTION gorgan_talk2 {
	SET conversation_txt.STRING,gorgan_bye_str;
	SET IF_SPACE, hide_conversation;
	SET IF_RIGHT, hide_conversation;
}

ACTION gorgan_talk3 {
	CALL unassign_shop;
	SET shopmarker_txt.VISIBLE,NULL;
	SET LAYERS.9,NULL;
	SET shopping_txt.VISIBLE,0;
	SET conversation_txt.STRING,gorgan_sell_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, sell_shop;
	SET IF_RIGHT, sell_shop;
}

ACTION gorgan_talk4 {
	SET conversation_txt.STRING,gorgan_ask_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, show_shopping;
	SET IF_RIGHT, show_shopping;
}

ACTION gorgan_talk5 {
	SET conversation_txt.STRING,gorgan_pay_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, sell_shop;
	SET IF_RIGHT, sell_shop;
}

ACTION gorgan_talk6 {
	SET conversation_txt.STRING,gorgan_gaga_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, sell_shop;
	SET IF_RIGHT, sell_shop;
}

ACTION gorgan_talk7 {
	CALL unassign_shop;
	SET shopmarker_txt.VISIBLE,NULL;
	SET LAYERS.9,NULL;
	SET shopping_txt.VISIBLE,0;
	SET conversation_txt.STRING,gorgan_buy_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, buy_shop;
	SET IF_RIGHT, buy_shop;
}

ACTION gorgan_talk8 {
	SET conversation_txt.STRING,gorgan_sold_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, buy_shop;
	SET IF_RIGHT, buy_shop;
}

ACTION gorgan_talk9 {
	SET conversation_txt.STRING,gorgan_nosell_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, sell_shop;
	SET IF_RIGHT, sell_shop;
}

ACTION gorgan_talk10 {
	SET conversation_txt.STRING,gorgan_nobuy_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, buy_shop;
	SET IF_RIGHT, buy_shop;
}

ACTION gorgan_talk11 {
	SET conversation_txt.STRING,gorgan_nogold_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, buy_shop;
	SET IF_RIGHT, buy_shop;
}

ACTION gorgan_talk12 {
	SET conversation_txt.STRING,gorgan_weight_str;
	WAIT 1; SET PANELS.12,scroll_arrow_pan;
	WAITT 4;	
	SET IF_SPACE, buy_shop;
	SET IF_RIGHT, buy_shop;
}
//////////
ACTION show_shopping {
	SET PANELS.5,buyinfo_pan;
	SET buyinfo_txt.VISIBLE,1;
	SET LAYERS.9,shopping_ovr;
	SET shopping_txt.VISIBLE,1;
	SET shopmarker_txt.POS_Y,250;
	SET shopmarker_txt.VISIBLE,1;
	SET option,1;
	SET PANELS.12,empty_pan;
	SET IF_CUU, choose_shop_up;
	SET IF_CUD, choose_shop_dn;
	SET IF_MIDDLE, choose_shop_up;
	SET IF_LEFT, choose_shop_dn;
	SET IF_SPACE, choose_shop;
	SET IF_RIGHT, choose_shop;
	SET IF_ENTER, choose_shop;
	SET IF_ESC, leave_shop;
}

ACTION leave_shop {
	SET shopmarker_txt.VISIBLE,NULL;
	SET option,1;
	SET LAYERS.9,NULL;
	SET shopping_txt.VISIBLE,0;
	SET PANELS.5,NULL;
	SET buyinfo_txt.VISIBLE,0;
	CALL unassign_shop;
	BRANCH gorgan_talk2;
}

ACTION unassign_shop {
	SET IF_ENTER,NULL;
	SET IF_CUU,NULL;
	SET IF_CUD,NULL;
	SET IF_INS,NULL;
	SET IF_DEL,NULL;
	SET IF_MIDDLE, NULL;
	SET IF_LEFT, NULL;
	SET IF_SPACE, NULL;
	SET IF_HOME, NULL;
	SET IF_RIGHT, NULL;
	SET IF_ESC,NULL;
	SET IF_J,NULL;
	SET IF_Z,NULL;
	SET IF_Y,NULL;
	SET IF_N,NULL;
}

ACTION choose_shop_up {
	RULE option=option-1;
	RULE shopmarker_txt.POS_Y=shopmarker_txt.POS_Y-15;
	IF_ABOVE option,0;
		END;
	SET option,3;
	SET shopmarker_txt.POS_Y,280;}

ACTION choose_shop_dn {
	RULE option=option+1;
	RULE shopmarker_txt.POS_Y=shopmarker_txt.POS_Y+15;
	IF_BELOW option,4;
		END;
	SET option,1;
	SET shopmarker_txt.POS_Y,250;}

ACTION choose_shop {
	IF_EQUAL option,1;
		BRANCH gorgan_talk7;
	IF_EQUAL option,2;
		BRANCH gorgan_talk3;
	IF_EQUAL option,3;
		BRANCH leave_shop;
}		

//////////
ACTION choose_shop_yesno2 {
	IF_EQUAL option,1;
		BRANCH check_buy_item;
	IF_EQUAL option,2;
		BRANCH buy_item_no;
}		

ACTION buy_item {
CALL unassign_shop;
SET LAYERS.9,shop_yesno_ovr;
SET shop_yesno_txt.VISIBLE,1;
SET shopmarker_txt.POS_X,146;
SET shopmarker_txt.POS_Y,250;
SET shopmarker_txt.VISIBLE,1;
SET option,1;
SET IF_J, check_buy_item;
SET IF_Z, check_buy_item;
SET IF_Y, check_buy_item;
SET IF_N, buy_item_no;
SET IF_ESC, buy_item_no;
SET IF_CUU, choose_shop_yesno_up;
SET IF_CUD, choose_shop_yesno_dn;
SET IF_MIDDLE, choose_shop_yesno_up;
SET IF_LEFT, choose_shop_yesno_dn;
SET IF_SPACE, choose_shop_yesno2;
SET IF_RIGHT, choose_shop_yesno2;
SET IF_ENTER, choose_shop_yesno2;
}

ACTION buy_item_yes {
#CALL check_buy_item;
CALL unassign_shop;
SET shopmarker_txt.POS_X,122;
SET LAYERS.9,NULL;
SET shop_yesno_txt.VISIBLE,0;
SET shopmarker_txt.VISIBLE,0;
CALL buy_shop;
CALL gorgan_talk8;
}

ACTION buy_item_no {
CALL unassign_shop;
SET shopmarker_txt.POS_X,122;
SET LAYERS.9,NULL;
SET shop_yesno_txt.VISIBLE,0;
SET shopmarker_txt.VISIBLE,0;
CALL buy_shop;
CALL gorgan_talk10;
}

ACTION buy_item_nogold {
CALL unassign_shop;
SET shopmarker_txt.POS_X,122;
SET LAYERS.9,NULL;
SET shop_yesno_txt.VISIBLE,0;
SET shopmarker_txt.VISIBLE,0;
CALL buy_shop;
CALL gorgan_talk11;
}

ACTION buy_item_weight {
CALL unassign_shop;
SET shopmarker_txt.POS_X,122;
SET LAYERS.9,NULL;
SET shop_yesno_txt.VISIBLE,0;
SET shopmarker_txt.VISIBLE,0;
CALL buy_shop;
CALL gorgan_talk12;
}

ACTION sell_item {
CALL unassign_shop;
IF (ID<=50) {CALL sell_shop; BRANCH gorgan_talk6;}
SET LAYERS.9,shop_yesno_ovr;
SET shop_yesno_txt.VISIBLE,1;
SET shopmarker_txt.POS_X,146;
SET shopmarker_txt.POS_Y,250;
SET shopmarker_txt.VISIBLE,1;
SET option,1;
SET IF_J, sell_item_yes;
SET IF_Z, sell_item_yes;
SET IF_Y, sell_item_yes;
SET IF_N, sell_item_no;
SET IF_ESC, sell_item_no;
SET IF_CUU, choose_shop_yesno_up;
SET IF_CUD, choose_shop_yesno_dn;
SET IF_MIDDLE, choose_shop_yesno_up;
SET IF_LEFT, choose_shop_yesno_dn;
SET IF_SPACE, choose_shop_yesno;
SET IF_RIGHT, choose_shop_yesno;
SET IF_ENTER, choose_shop_yesno;
}

ACTION choose_shop_yesno_up {
	RULE option=option-1;
	RULE shopmarker_txt.POS_Y=shopmarker_txt.POS_Y-15;
	IF_ABOVE option,0;
		END;
	SET option,2;
	SET shopmarker_txt.POS_Y,265;}

ACTION choose_shop_yesno_dn {
	RULE option=option+1;
	RULE shopmarker_txt.POS_Y=shopmarker_txt.POS_Y+15;
	IF_BELOW option,3;
		END;
	SET option,1;
	SET shopmarker_txt.POS_Y,250;}

ACTION choose_shop_yesno {
	IF_EQUAL option,1;
		BRANCH sell_item_yes;
	IF_EQUAL option,2;
		BRANCH sell_item_no;
}		

ACTION sell_item_yes{
CALL unassign_shop;
SET shopmarker_txt.POS_X,122;
SET LAYERS.9,NULL;
SET shop_yesno_txt.VISIBLE,0;
SET shopmarker_txt.VISIBLE,0;
RULE gold=gold+price;
CALL drop_item;
CALL sell_shop;
CALL gorgan_talk5;
}

ACTION sell_item_no {
CALL unassign_shop;
SET shopmarker_txt.POS_X,122;
SET LAYERS.9,NULL;
SET shop_yesno_txt.VISIBLE,0;
SET shopmarker_txt.VISIBLE,0;
CALL sell_shop;
CALL gorgan_talk9;
}

ACTION buy_shop {
	SET PANELS.12,empty_pan;
	PLAY_SOUND menu_snd,1;
	IF_EQUAL LAYERS.3,buymenu_ovr;
		GOTO no_buy;
	SET conversation_txt.STRING,gorgan_buy_str;
	SET sel_item,1;
	SET option,1;
	CALL Wset_item;
	CALL show_buymenu;
	END;
	
no_buy:
	CALL show_buymenu;
	SET sel_item,1;
}

ACTION close_buy_shop {
CALL buy_shop;
BRANCH gorgan_talk4;
}

ACTION sell_shop {
	SET PANELS.12,empty_pan;
	PLAY_SOUND menu_snd,1;
	IF_EQUAL LAYERS.3,inventory_ovr;
		GOTO no_sell;
	SET conversation_txt.STRING,gorgan_sell_str;
	RULE shop_itemA=a_item-a_amount;
	RULE shop_itemQ=q_item-q_amount;
	CALL unequip_ainv;
	CALL unequip_qinv;
	SET sel_item,1;
	SET qinvdata,qinv_ovr;
	SET option,1;
	SET LAYERS.3,inventory_ovr;
	SET sellmenu_txt.VISIBLE,1;
	SET i_item_txt.VISIBLE,1;
	SET PANELS.4,sell_pan;
	CALL update_inv;
	SET LAYERS.6,inv_item;
	SET IF_INS, inv_up;
	SET IF_CUU,inv_up;
	SET IF_MIDDLE,inv_up;
	SET IF_DEL, inv_down;
	SET IF_CUD,inv_down;
	SET IF_LEFT,inv_down;
	SET IF_HOME, sell_item;
	SET IF_SPACE, sell_item;
	SET IF_ENTER,sell_item;
	SET IF_RIGHT,sell_item;
	SET IF_ESC,close_sell_shop;
	END;
	
no_sell:
	CALL unassign_shop;
	CALL setback_ainv;
	CALL setback_qinv;
	SET LAYERS.3,NULL;
	SET hkey1_ovr.VISIBLE,0;
	SET hkey2_ovr.VISIBLE,0;
	SET hkey3_ovr.VISIBLE,0;
	SET hkey4_ovr.VISIBLE,0;
	SET hkey5_ovr.VISIBLE,0;
	SET equip_ovr.VISIBLE,0;
	SET sellmenu_txt.VISIBLE,0;
	SET i_item_txt.VISIBLE,0;
	SET PANELS.4,NULL;
	SET LAYERS.6,NULL;
	SET sel_item,1;
#	BRANCH gorgan_talk4;
}

ACTION close_sell_shop {
CALL sell_shop;
BRANCH gorgan_talk4;
}

ACTION setback_ainv {
	IF (i_item1-shop_itemA<=20)&&(i_item1-shop_itemA>0) {SET sel_item,1; GOTO setback_armor;}
	IF (i_item2-shop_itemA<=20)&&(i_item2-shop_itemA>0) {SET sel_item,2; GOTO setback_armor;}
	IF (i_item3-shop_itemA<=20)&&(i_item3-shop_itemA>0) {SET sel_item,3; GOTO setback_armor;}
	IF (i_item4-shop_itemA<=20)&&(i_item4-shop_itemA>0) {SET sel_item,4; GOTO setback_armor;}
	IF (i_item5-shop_itemA<=20)&&(i_item5-shop_itemA>0) {SET sel_item,5; GOTO setback_armor;}
	IF (i_item6-shop_itemA<=20)&&(i_item6-shop_itemA>0) {SET sel_item,6; GOTO setback_armor;}
	IF (i_item7-shop_itemA<=20)&&(i_item7-shop_itemA>0) {SET sel_item,7; GOTO setback_armor;}
	IF (i_item8-shop_itemA<=20)&&(i_item8-shop_itemA>0) {SET sel_item,8; GOTO setback_armor;}
	IF (i_item9-shop_itemA<=20)&&(i_item9-shop_itemA>0) {SET sel_item,9; GOTO setback_armor;}
	IF (i_item10-shop_itemA<=20)&&(i_item10-shop_itemA>0) {SET sel_item,10; GOTO setback_armor;}
	IF (i_item11-shop_itemA<=20)&&(i_item11-shop_itemA>0) {SET sel_item,11; GOTO setback_armor;}
	IF (i_item12-shop_itemA<=20)&&(i_item12-shop_itemA>0) {SET sel_item,12; GOTO setback_armor;}
	IF (i_item13-shop_itemA<=20)&&(i_item13-shop_itemA>0) {SET sel_item,13; GOTO setback_armor;}
	IF (i_item14-shop_itemA<=20)&&(i_item14-shop_itemA>0) {SET sel_item,14; GOTO setback_armor;}
	IF (i_item15-shop_itemA<=20)&&(i_item15-shop_itemA>0) {SET sel_item,15; GOTO setback_armor;}
	IF (i_item16-shop_itemA<=20)&&(i_item16-shop_itemA>0) {SET sel_item,16; GOTO setback_armor;}
	IF (i_item17-shop_itemA<=20)&&(i_item17-shop_itemA>0) {SET sel_item,17; GOTO setback_armor;}
	IF (i_item18-shop_itemA<=20)&&(i_item18-shop_itemA>0) {SET sel_item,18; GOTO setback_armor;}
	IF (i_item19-shop_itemA<=20)&&(i_item19-shop_itemA>0) {SET sel_item,19; GOTO setback_armor;}
	IF (i_item20-shop_itemA<=20)&&(i_item20-shop_itemA>0) {SET sel_item,20; GOTO setback_armor;}
	SET ainvdata,ainv_ovr;
	END;
setback_armor:
	CALL update_inv;
	SET ainvdata, inv_item;
	CALL set_ainv;
}

ACTION setback_qinv {
	IF (i_item1-shop_itemQ<=20)&&(i_item1-shop_itemQ>0) {SET sel_item,1; GOTO setback_item;}
	IF (i_item2-shop_itemQ<=20)&&(i_item2-shop_itemQ>0) {SET sel_item,2; GOTO setback_item;}
	IF (i_item3-shop_itemQ<=20)&&(i_item3-shop_itemQ>0) {SET sel_item,3; GOTO setback_item;}
	IF (i_item4-shop_itemQ<=20)&&(i_item4-shop_itemQ>0) {SET sel_item,4; GOTO setback_item;}
	IF (i_item5-shop_itemQ<=20)&&(i_item5-shop_itemQ>0) {SET sel_item,5; GOTO setback_item;}
	IF (i_item6-shop_itemQ<=20)&&(i_item6-shop_itemQ>0) {SET sel_item,6; GOTO setback_item;}
	IF (i_item7-shop_itemQ<=20)&&(i_item7-shop_itemQ>0) {SET sel_item,7; GOTO setback_item;}
	IF (i_item8-shop_itemQ<=20)&&(i_item8-shop_itemQ>0) {SET sel_item,8; GOTO setback_item;}
	IF (i_item9-shop_itemQ<=20)&&(i_item9-shop_itemQ>0) {SET sel_item,9; GOTO setback_item;}
	IF (i_item10-shop_itemQ<=20)&&(i_item10-shop_itemQ>0) {SET sel_item,10; GOTO setback_item;}
	IF (i_item11-shop_itemQ<=20)&&(i_item11-shop_itemQ>0) {SET sel_item,11; GOTO setback_item;}
	IF (i_item12-shop_itemQ<=20)&&(i_item12-shop_itemQ>0) {SET sel_item,12; GOTO setback_item;}
	IF (i_item13-shop_itemQ<=20)&&(i_item13-shop_itemQ>0) {SET sel_item,13; GOTO setback_item;}
	IF (i_item14-shop_itemQ<=20)&&(i_item14-shop_itemQ>0) {SET sel_item,14; GOTO setback_item;}
	IF (i_item15-shop_itemQ<=20)&&(i_item15-shop_itemQ>0) {SET sel_item,15; GOTO setback_item;}
	IF (i_item16-shop_itemQ<=20)&&(i_item16-shop_itemQ>0) {SET sel_item,16; GOTO setback_item;}
	IF (i_item17-shop_itemQ<=20)&&(i_item17-shop_itemQ>0) {SET sel_item,17; GOTO setback_item;}
	IF (i_item18-shop_itemQ<=20)&&(i_item18-shop_itemQ>0) {SET sel_item,18; GOTO setback_item;}
	IF (i_item19-shop_itemQ<=20)&&(i_item19-shop_itemQ>0) {SET sel_item,19; GOTO setback_item;}
	IF (i_item20-shop_itemQ<=20)&&(i_item20-shop_itemQ>0) {SET sel_item,20; GOTO setback_item;}
	SET qinvdata,qinv_ovr;
	END;
setback_item:
	CALL update_inv;
	SET qinvdata, inv_item;
	CALL set_qinv;
}
