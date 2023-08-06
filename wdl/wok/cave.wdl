BMAP cavekey_map,<keys.pcx>,32,0,32,32;
#BMAP ironkey_map,<keys.pcx>,64,0,32,32;
MUSIC cave_song,<faren.mid>;#<taipan.mid>;

TEXTURE cavekey_tex {
	BMAPS cavekey_map;
	AMBIENT 0.5;}
/*
TEXTURE ironkey_tex {
	BMAPS ironkey_map;
	AMBIENT 0.5;}
*/
STRING caveswitch_str,"you hear a platform moving";
STRING lava_str,"the lava has flown off in the lavacave";

SKILL tele_x {}
SKILL tele_y {}

ACTION enter_cave {
	WAIT 1;
	PLAY_SONG cave_song,1;
	SET AMBIENT,0.2;
	SET PLAYER_LIGHT,1;
	}

ACTION lava_enter_cave {
	IF_BELOW PLAYER_HGT,0;
		SUB HP,1;
	RULE my_size = my_size -2;
	SET THERE.EACH_TICK,lava_damage;
	}

ACTION lava_leave_cave {
	RULE my_size = my_size +2;
	SET THERE.EACH_TICK,NULL;
	}

ACTION lava_damage {
	IF_ABOVE PLAYER_HGT,0;
		END;
	SUB HP,0.2;
	}
/*
ACTION flicker_cave {
	SET_ALL THERE.AMBIENT,-0.1;
	RULE THERE.SKILL8=RANDOM*8;
	WAITT THERE.SKILL8;
	RULE THERE.SKILL7=RANDOM/4;
	SET_ALL THERE.AMBIENT,THERE.SKILL7;}

ACTION flicker_cave_d {
	SET_ALL THERE.AMBIENT,-0.2;
	RULE THERE.SKILL8=RANDOM*8;
	WAITT THERE.SKILL8;
	RULE THERE.SKILL7=(RANDOM-1)/4;
	SET_ALL THERE.AMBIENT,THERE.SKILL7;}
*/
//////////Regionen//////////
REGION cavelift {
	FLOOR_HGT 14;
	CEIL_HGT 24;
	FLOOR_TEX stfloor15_tex;
	CEIL_TEX stfloor15_tex;
	SKILL7,0;
	SKILL8,14;
	FLAGS SAVE;}

REGION cavedoor1 {
	FLOOR_HGT 26;
	CEIL_HGT 26;
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX stfloor1_tex;
	SKILL2,0;
	SKILL3,0.5;
	SKILL7,25;
	FLAGS SAVE;}

REGION cavedoor1_window {
	FLOOR_HGT 25;
	CEIL_HGT 27;
	FLOOR_TEX stfloor1_b2_tex;
	CEIL_TEX stfloor1_b2_tex;
	SKILL2,0;
	SKILL3,0.5;
	SKILL7,25;
	FLAGS SAVE;}

REGION cavedoor1b {
	FLOOR_HGT 26;
	CEIL_HGT 26;
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX stfloor1_tex;
	SKILL2,0;
	SKILL3,0.5;
	SKILL7,25;
	FLAGS SAVE;}

REGION cavedoor2 {
	FLOOR_HGT 4;
	CEIL_HGT 24;
	FLOOR_TEX stfloor17_tex;
	CEIL_TEX stfloor17_tex;
	SKILL7,4;
	FLAGS SAVE;}

REGION cavedoor3 {
	AMBIENT -0.3;
	FLOOR_HGT 4;
	CEIL_HGT 4;
	FLOOR_TEX stfloor14_tex;
	CEIL_TEX stfloor14_tex;
	SKILL7,13;
	FLAGS SAVE;}

REGION cavesteg1 {
	AMBIENT -0.15;
	FLOOR_HGT 3;
	CEIL_HGT 22;
	FLOOR_TEX stfloor13_tex;
	CEIL_TEX stfloor17_tex;
	SKILL7,-101;
	SKILL8,3;
	FLAGS SAVE;}

REGION cavesteg2 {
	AMBIENT -0.15;
	FLOOR_HGT -101;
	CEIL_HGT 22;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX stfloor17_tex;
	SKILL7,-101;
	SKILL8,3;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;
	FLAGS SAVE;}

REGION cavesteg3 {
	AMBIENT -0.15;
	FLOOR_HGT -101;
	CEIL_HGT 22;
	FLOOR_TEX lavaoben_tex;
	CEIL_TEX stfloor17_tex;
	SKILL7,-101;
	SKILL8,3;
	IF_ENTER lava_enter_cave;
	IF_LEAVE lava_leave_cave;
	FLAGS SAVE;}

REGION cavesteg4 {
	AMBIENT -0.15;
	FLOOR_HGT 3;
	CEIL_HGT 22;
	FLOOR_TEX stfloor13_tex;
	CEIL_TEX stfloor17_tex;
	SKILL7,-101;
	SKILL8,3;
	FLAGS SAVE;}

REGION caveswitch_nische {
	FLOOR_HGT 8.5;
	CEIL_HGT 10.5;
	FLOOR_TEX stfloor1_tex;
	CEIL_TEX stfloor1_tex;
	FLAGS SAVE;}

WALL caveswitch1 {
	TEXTURE switch1_off_tex;
	FLAGS SAVE;
	DIST 40;
	IF_HIT move_cavesteg1_2;}

WALL caveswitch2 {
	TEXTURE switch1_off_tex;
	FLAGS SAVE;
	DIST 40;
	IF_HIT move_cavesteg3_4;}

WALL caveswitch_quake {
	TEXTURE switch2_off_tex;
	FLAGS SAVE,PORTCULLIS;
	DIST 40;
	IF_HIT cave_quake;}

WALL caveswitch_lava {
	TEXTURE switch2_off_tex;
	FLAGS SAVE,PORTCULLIS;
	IF_HIT cave_lava;}

WALL cavelift_mitte {
	TEXTURE stfloor1_tex;
	POSITION 1;
	IF_HIT set_cavelift_mid;
	FLAGS SAVE;}

WALL cavelift_unten {
	TEXTURE stfloor1_tex;
	POSITION 1;
	IF_HIT set_cavelift_down;
	FLAGS SAVE;}

WALL lavateichstairs_wall {
	TEXTURE stfloor1_r_tex;
	MAP_COLOR 0;
	FLAGS SAVE;}

ACTION set_cavelift_mid {
	IF_NEQUAL cavelift.FLOOR_HGT,0;
		SKIP 3;
	SET cavelift.SKILL7,0;
	SET cavelift.SKILL8,14;
	SET cavelift.EACH_TICK,elevator_up;
	IF_NEQUAL cavelift.FLOOR_HGT,28;
		END;
	SET cavelift.SKILL7,14;
	SET cavelift.SKILL8,28;
	SET cavelift.EACH_TICK,elevator_down;}

ACTION set_cavelift_down {
	SET cavelift.SKILL7,0;
	SET cavelift.SKILL8,28;
	SET cavelift.EACH_TICK,elevator_down;}

ACTION set_cavelift_up {
	SET cavelift.SKILL7,0;
	SET cavelift.SKILL8,28;
	SET cavelift.EACH_TICK,elevator_up;}

ACTION set_cavelift_amb {
	ADD cavelift.AMBIENT,0.03;
	ADD caveregion_pulsate.AMBIENT,0.03;
	ADD caveregion_pulsate2.AMBIENT,0.03;
	SET RENDER_MODE,1;
	IF_ABOVE cavelift.AMBIENT,0.5;
	SET cavelift_oben.EACH_TICK,set_cavelift_amb2;}

ACTION set_cavelift_amb2 {
	SUB cavelift.AMBIENT,0.03;
	SUB caveregion_pulsate.AMBIENT,0.03;
	SUB caveregion_pulsate2.AMBIENT,0.03;
	SET RENDER_MODE,1;
	IF_BELOW cavelift.AMBIENT,-0.5;
	SET cavelift_oben.EACH_TICK,set_cavelift_amb;}

ACTION move_cavesteg1_2 {
	SET caveswitch1.TEXTURE,switch1_on_tex;
	SET caveswitch1.IF_HIT,NULL;
	SET newstring,1;
	SET info_str,caveswitch_str;
	CALL show_camera2;
	SET caveswitch1.EACH_TICK,check_steghgt1_2;
	SET cavesteg1.EACH_TICK,lift_down;
	SET cavesteg2.EACH_TICK,lift_up;}

ACTION check_steghgt1_2 {
	SET cavesteg2.FLOOR_TEX,stfloor13_tex;
	SET cavesteg2.IF_ENTER,NULL;
	SET cavesteg2.IF_LEAVE,NULL;
	IF_EQUAL cavesteg1.FLOOR_HGT,-50;
		BRANCH stop_camera2;
	IF_ABOVE cavesteg1.FLOOR_HGT,-101;
		END;
	SET cavesteg1.IF_ENTER,lava_enter_cave;
	SET cavesteg1.IF_LEAVE,lava_leave_cave;
	SET cavesteg1.FLOOR_TEX,lavaoben_tex;
	SET caveswitch1.EACH_TICK,NULL;
	#BRANCH stop_camera2;
	}

ACTION move_cavesteg3_4 {
	SET caveswitch2.TEXTURE,switch1_on_tex;
	SET caveswitch2.IF_HIT,NULL;
	SET newstring,1;
	SET info_str,caveswitch_str;
	CALL show_camera2;
	WAITT 8;
	SET caveswitch2.EACH_TICK,check_steghgt3_4;
	SET cavesteg4.EACH_TICK,lift_down;
	SET cavesteg3.EACH_TICK,lift_up;}

ACTION check_steghgt3_4 {
	SET cavesteg3.FLOOR_TEX,stfloor13_tex;
	SET cavesteg3.IF_ENTER,NULL;
	SET cavesteg3.IF_LEAVE,NULL;
	IF_ABOVE cavesteg4.FLOOR_HGT,-101;
		END;
	SET cavesteg4.FLOOR_TEX,lavaoben_tex;
	SET cavesteg4.IF_ENTER,lava_enter_cave;
	SET cavesteg4.IF_lEAVE,lava_leave_cave;
	SET caveswitch2.EACH_TICK,NULL;
	BRANCH stop_camera2;}

ACTION cave_quake {
	SET caveswitch_quake.IF_HIT,NULL;
	SET caveswitch_quake.TEXTURE,switch2_on_tex;
	CALL start_quake;
	SET lavateichstairs2_F.FLOOR_HGT,-10;
	SET lavateichstairs1_F.FLOOR_HGT,-14;
	SET_ALL cavewallcrack_fc.FLOOR_HGT,23;
	SET_ALL cavewallcrack_fc.CEIL_HGT,28;
	SET_ALL cavecrackfloor2.FLOOR_TEX,lavaoben_tex;
	SET_ALL cavecrackfloor2.FLOOR_HGT,-100;
	SET_ALL cavecrackfloor2.IF_ENTER,lava_enter_cave;
	SET_ALL cavecrackfloor2.IF_LEAVE,lava_leave_cave;
	SET_ALL cavecrackfloor.FLOOR_TEX,lavaoben_tex;
	SET_ALL cavecrackfloor.FLOOR_HGT,-100;
	SET_ALL cavecrackfloor.IF_ENTER,lava_enter_cave;
	SET_ALL cavecrackfloor.IF_LEAVE,lava_leave_cave;}

ACTION cave_lava {
	SET caveswitch_lava.IF_HIT,NULL;
	SET caveswitch_lava.TEXTURE,switch2_on_tex;
#        SET camera1.SKILL8,0.6;
	CALL show_camera1;
	WAITT 8;
	SET lavateich.EACH_TICK,check_cave_lava;
	}

ACTION check_cave_lava {
	CALL lift_down;
	IF_NEQUAL THERE.FLOOR_HGT,THERE.SKILL7;
		END;
	SET THERE.EACH_TICK,NULL;
	SET lavateich.IF_ENTER,NULL;
	SET lavateich.IF_LEAVE,NULL;
	SET THERE.FLOOR_TEX,stfloor1_r_tex;
	BRANCH stop_camera1;}


WALL cavedoortex1 {
	TEXTURE stfloor1_b2_tex;
	FLAGS SAVE;
	DIST 50;
	IF_HIT set_cavedoor1_open;}

WALL cavedoortex1_gitter {
	TEXTURE gitter_tex;
	FLAGS SAVE;
	IF_HIT set_cavedoor1_open;}

WALL cavedoortex2 {
	TEXTURE stone4_tex;
	DIST 20;
	FLAGS SAVE;
	IF_NEAR set_cavedoor2_close;}

WALL cavedoortex3 {
	TEXTURE stfloor1_tex;
	FLAGS SAVE,PORTCULLIS;
	POSITION 0;
	DIST 50;
	IF_HIT set_cavedoor3_open;}

WALL cavedoortex4 {
	TEXTURE texdoor_tex;
	FLAGS PORTCULLIS,IMPASSABLE,TRANSPARENT,SAVE,FLAG6;
	DIST 20;
	SKILL2,0.2;
	SKILL3,0;
	SKILL7,50;
	IF_HIT set_cavedoor4_open;}

ACTION set_cavedoor1_open {
	SET_ALL cavedoortex1.IF_HIT,NULL;
	SET_ALL cavedoortex1_gitter.IF_HIT,NULL;
	SET cavedoor1b.EACH_TICK,slidedoor_open;
	SET cavedoor1_window.EACH_TICK,slidedoor_open;
	SET cavedoor1.EACH_TICK,slidedoor_open;}

ACTION set_cavedoor2_close {
	SET cavedoortex2.IF_NEAR,NULL;
	SET cavedoor2.EACH_TICK,floordoor_close;}

ACTION set_cavedoor3_open {
	SET cavedoortex3.IF_HIT,NULL;
	SET_ALL cavedoor3.EACH_TICK,ceildoor_open;}

ACTION set_cavedoor4_open {
	IF_EQUAL cavedoortex4.FLAG1,1;
		GOTO open;
	IF_EQUAL use,350;
		SKIP 5;
	IF_NEQUAL use,1; END;
	SET newstring,1;
	SET info_str,keydoor_str;
	END;
	CALL drop_item;
	SET cavedoortex4.FLAG1,1;
	END;
open:
	IF_NEQUAL use,1; END;
	SET cavedoortex4.EACH_TICK,texdoor_open;}


/*
ACTION take_cavekey {
	SET cavekey.INVISIBLE,1;
	SET cavekey.PASSABLE,1;
	SET item_key2,1;
	SET newstring,1;
	SET info_str,cavekey_str;
	}

ACTION take_ironkey {
	SET ironkey.INVISIBLE,1;
	SET ironkey.PASSABLE,1;
	SET item_key1,1;
	SET newstring,1;
	SET info_str,ironkey_str;
	}
*/
THING cavetele1 {
	TEXTURE stalag1_klein_tex;
	DIST 10;
	IF_NEAR caveteleport1;}

THING cavetele2 {
	TEXTURE stalag1_klein_tex;
	}

THING cavetele3 {
	TEXTURE stalag1_klein_tex;
	}

THING cavetele4 {
	TEXTURE stalag1_klein_tex;
	DIST 10;
	IF_NEAR caveteleport4;}

ACTION caveteleport1 {
	RULE tele_x = PLAYER_X-cavetele1.X;
	RULE tele_y = PLAYER_Y-cavetele1.Y;
	RULE PLAYER_X = cavetele2.X+tele_x;
	RULE PLAYER_Y = cavetele2.Y+tele_y;
	SET HERE,cavetele2.REGION;
	}

ACTION caveteleport4 {
	RULE tele_x = PLAYER_X-cavetele4.X;
	RULE tele_y = PLAYER_Y-cavetele4.Y;
	RULE PLAYER_X = cavetele3.X+tele_x;
	RULE PLAYER_Y = cavetele3.Y+tele_y;
	SET HERE,cavetele3.REGION;
	}



















