ACTION enter_cave2 {
        SET PLAYER_LIGHT,1;
        SET AMBIENT,0.2;
        PLAY_SONG cave_song,1;
}

REGION caveregion2 {
        CLIP_DIST 200;
        FLOOR_TEX flat4_tex;
        CEIL_TEX flat4_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        AMBIENT -0.2;
        }

REGION caveregion3_b {
        CLIP_DIST 200;
        FLOOR_TEX flat4_tex;
        CEIL_TEX flat4_tex;
        FLOOR_HGT 17;
        CEIL_HGT 31;
        AMBIENT -0.2;
        }

REGION caveregion3 {
        CLIP_DIST 200;
        FLOOR_TEX flat4_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 32;
        CEIL_HGT 44;
        AMBIENT 0.3;
        BELOW caveregion3_b;
        }

REGION caveregion4 {
        CLIP_DIST 200;
        FLOOR_TEX flat4_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 17;
        CEIL_HGT 44;
        AMBIENT 0.3;
}

REGION cavestairs2 {
        CLIP_DIST 200;
        FLOOR_TEX flat1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        AMBIENT -0.3;
        }

REGION cavestairs2_flicker {
        CLIP_DIST 200;
        FLOOR_TEX flat1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        AMBIENT -0.3;
        EACH_TICK flicker_cave;
	}

REGION cavestairs2_CA {
        CLIP_DIST 200;
        FLOOR_TEX flat1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        AMBIENT -0.3;
        FLAGS CEIL_ASCEND;
        }

REGION cavestairs2a {
        CLIP_DIST 200;
        FLOOR_TEX flat1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        }

REGION cavestairs3 {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT -.3;
}

REGION cavestairs3_flicker {
        FLOOR_TEX stone8_tex;
        CEIL_TEX stone8_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT -.3;
        EACH_TICK flicker_cave;
}

REGION cavewater1_b {
        CLIP_DIST 200;
        FLOOR_TEX flat3_tex;
        CEIL_TEX wasserunten_tex;
        FLOOR_HGT -6.5;
        CEIL_HGT 7.5;
        AMBIENT 0.1;
        IF_ARISE regio_arise;
        }

REGION cavewater1 {
        CLIP_DIST 200;
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 7.5;
        CEIL_HGT 26;
        AMBIENT 0;
        IF_DIVE regio_dive;
        BELOW cavewater1_b;
        }

REGION cavewater2_b {
        CLIP_DIST 200;
        FLOOR_TEX flat4_tex;
        CEIL_TEX wasserunten_tex;
        FLOOR_HGT -11.5;
        CEIL_HGT -0.5;
        AMBIENT -0.1;
        IF_ARISE regio_arise;
        }

REGION cavewater2 {
        CLIP_DIST 200;
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX flat4_tex;
        FLOOR_HGT -0.5;
        CEIL_HGT 14;
        AMBIENT -0.2;
        IF_DIVE regio_dive;
        BELOW cavewater2_b;
        }

REGION cavewater3_b {
        CLIP_DIST 200;
        FLOOR_TEX stone3_dark_tex;
        CEIL_TEX wasserunten_tex;
        FLOOR_HGT -11.5;
        CEIL_HGT -0.5;
        AMBIENT -0.1;
        IF_ARISE regio_arise;
        }

REGION cavewater3 {
        CLIP_DIST 200;
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX flat4_tex;
        FLOOR_HGT -0.5;
        CEIL_HGT 14;
        AMBIENT -0.2;
        IF_DIVE regio_dive;
        BELOW cavewater3_b;
        }

REGION cavedive {
        CLIP_DIST 200;
        FLOOR_TEX flat1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        AMBIENT -0.2;
        }

REGION cavedive2 {
        CLIP_DIST 200;
        FLOOR_TEX stone3_dark_tex;
        CEIL_TEX stone3_dark_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        AMBIENT -0.2;
        }

REGION cave_outside {
        CLIP_DIST 200;
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        }

REGION cavebridge_b {
        FLOOR_TEX lavaoben_tex;
        CEIL_TEX wood1_tex; #stfloor1_b2_tex;
        FLOOR_HGT -100;
        CEIL_HGT -.8;
        CLIP_DIST  300;
        AMBIENT  -0.15;
        FLAGS CEIL_DESCEND;
        IF_ENTER lava_enter_cave;
        IF_LEAVE lava_leave_cave;
}

REGION cavebridge {
        FLOOR_TEX wood1_tex; 
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  40;
        CLIP_DIST 300;
        BELOW cavebridge_b;
        FLAGS FLOOR_DESCEND;
}

REGION cavebridgeB {
        FLOOR_TEX wood1_tex; 
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  40;
        CLIP_DIST 300;
        BELOW cavebridge_b;
        FLAGS FLOOR_DESCEND;
}

REGION abgrund {
        FLOOR_TEX lavaoben_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT -100;
        CEIL_HGT  40;
        CLIP_DIST 250;
        #AMBIENT  .3;
        IF_ENTER lava_enter_cave;
        IF_LEAVE lava_leave_cave;
}

REGION abgrundrand {
        FLOOR_TEX sky2_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 0;
        CEIL_HGT  40;
        CLIP_DIST 0;
        AMBIENT  -0.1;
        FLAGS FLOOR_DESCEND;
}

REGION cavebach {
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        #FLAGS FLOOR_DESCEND;
        EACH_TICK move_cavebach_N;
}

REGION cavebachs {
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        #FLAGS FLOOR_DESCEND;
        EACH_TICK move_cavebach_N;
}

REGION cavebach_FD {
        FLOOR_TEX wasseroben_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        FLAGS FLOOR_DESCEND;
        EACH_TICK move_cavebach_N;
}

ACTION move_cavebach_N {
        ADD THERE.FLOOR_OFFS_Y,-2;}

WALL fence05 {
        TEXTURE fence_tex;
        FLAGS TRANSPARENT,FENCE;
        POSITION -0.5;}

REGION abgrundrand2 {
        FLOOR_TEX flat4_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        #FLAGS FLOOR_DESCEND;
}

REGION abgrundrand2s {
        FLOOR_TEX flat4_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        #FLAGS FLOOR_DESCEND;
}

REGION abgrundrand3 {
        FLOOR_TEX flat4_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 0;
        CEIL_HGT  40;
        CLIP_DIST 300;
        AMBIENT  -0.1;
        FLAGS FLOOR_DESCEND;
}

REGION cavehouse_b {
        FLOOR_TEX wood1_tex;
        CEIL_TEX wood2_broad_tex;
        FLOOR_HGT  32;
        CEIL_HGT  44;
        FLAGS CEIL_DESCEND;
}

REGION cavehouse {
        FLOOR_TEX wood2_broad_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT 44.5;
        CEIL_HGT 50;
        FLAGS FLOOR_DESCEND;
        BELOW cavehouse_b;
}

REGION cavehousewall {
        FLOOR_TEX wood2_long_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  44;
        CEIL_HGT  50;
        FLAGS FLOOR_DESCEND;
}

REGION cavehousedoor {
        FLOOR_TEX wood1_tex;
        CEIL_TEX stfloor1_b2_tex;
        FLOOR_HGT  32;
        CEIL_HGT  32;
        SKILL7  43;
        FLAGS SAVE,FLAG6;
}

REGION cave2door1l {
        FLOOR_TEX stfloor1_b2_tex;
        CEIL_TEX stfloor1_b2_tex;
        FLOOR_HGT  32;
        CEIL_HGT  32;
        SKILL2 -0.5;
        SKILL7  12;
        FLAGS SAVE;
}

WALL cave2door1 {
        TEXTURE wood1_tex;
        FLAGS PORTCULLIS,SAVE;
        POSITION 0;
        IF_HIT set_cave2door2_open;
}

WALL cave2doortex1 {
        TEXTURE stfloor1_b2_tex;
        FLAGS PORTCULLIS,SAVE;
        IF_HIT set_cave2door1_open;
}

WALL cave2doorgitter1 {
        TEXTURE gitter_tex;
        FLAGS PORTCULLIS,SAVE,TRANSPARENT;
        IF_HIT set_cave2door1_open;
}

ACTION set_cave2door1_open {
        SET_ALL cave2door1l.EACH_TICK,slidedoor_open;
        #SET cave2door1r.EACH_TICK,slidedoor_open;
}      
 
ACTION set_cave2door2_open {
        SET cavehousedoor.EACH_TICK,ceildoor_open;}      
       
THING caveswingG1 {
       TEXTURE black_tex;
       FLAGS INVISIBLE,PASSABLE;
       }

REGION caveswing1 {
        FLOOR_TEX wood1_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        GENIUS caveswingG1;
        SKILL3 0;
        SKILL4 1.571;
        FLAGS SAVE;
}

WALL cave2doortex4 {
	TEXTURE gitter_tex;
	FLAGS SAVE,PORTCULLIS,TRANSPARENT,IMPASSABLE;
        SKILL3 0.2;
        SKILL2 0;
        SKILL7 37;
} 

WALL cave2switch1 {
	TEXTURE switch2_off_tex;
	FLAGS SAVE,PORTCULLIS;
	DIST 40;
	IF_HIT set_cave2door4_open;}

WALL cave2switch2 {
	TEXTURE switch2_off_tex;
	FLAGS SAVE,PORTCULLIS;
	DIST 40;
	IF_HIT rise_move_plat;}

ACTION c2_4texdoor_open {
        IF_EQUAL MY.SKILL1,MY.SKILL7;
                CALL stop_camera3;
        BRANCH texdoor_open;}

ACTION set_cave2door4_open {
	SET cave2switch1.IF_HIT,NULL;
        SET cave2switch1.TEXTURE switch2_on_tex;
        CALL show_camera3;
        SET cave2doortex4.EACH_TICK,c2_4texdoor_open;}

WALL cave2doortex3 {
        TEXTURE wood1_tex;
        FLAGS SAVE;
        DIST 50;
        IF_HIT set_cave2door3_open;
        }

ACTION set_cave2door3_open {
       SET_ALL cave2doortex3.IF_HIT,NULL;
       SET_ALL caveswing1.EACH_TICK,swing_open;
       }

REGION move_plat_b {
        FLOOR_TEX flat4_tex;
        CEIL_TEX stfloor1_tex;
        FLOOR_HGT -400;
        CEIL_HGT  -399.5;#16.5;
        CLIP_DIST  300;
	AMBIENT -0.4;
	SKILL8 16.5;
	FLAGS SAVE;
}

REGION move_plat {
        FLOOR_TEX stfloor1_tex;
        CEIL_TEX flat4_tex;
        BELOW move_plat_b;
        FLOOR_HGT  -398.5;#17.5;
        CEIL_HGT  34;
        CLIP_DIST  300;
        SKILL3  -0.5;
        SKILL7  96;
	SKILL8  17.5;
	AMBIENT -0.2;
        FLAGS SAVE,STICKY;
	#IF_ENTER move_plat1;
}

ACTION move_plat1 {
	IF_ABOVE PLAYER_HGT,0;
		END;
	SET move_plat.IF_ENTER,NULL;
	SET move_plat.IF_LEAVE,move_plat2;
	SET move_plat.EACH_TICK,move_plattex1;#slidedoor_open;
}

ACTION move_plat2 {
	SET move_plat.IF_LEAVE,NULL;
	SET move_plat.IF_ENTER,move_plat1;
	SET move_plat.EACH_TICK,move_plattex2;#slidedoor_close;
}

ACTION move_plattex1 {
	CALL slidedoor_open;
	IF_EQUAL THERE.EACH_TICK,NULL;
		END;
	ADD move_plat.FLOOR_OFFS_Y,8;
	ADD move_plat_b.CEIL_OFFS_Y,8;
}

ACTION move_plattex2 {
	CALL slidedoor_close;
	IF_EQUAL THERE.EACH_TICK,NULL;
		END;
	ADD move_plat.FLOOR_OFFS_Y,-8;
	ADD move_plat_b.CEIL_OFFS_Y,-8;
}

ACTION move_plat_up {
	CALL lift_up;
	IF_NEQUAL THERE.EACH_TICK,NULL;
		END;
	SET move_plat.SKILL8,0;
	SET move_plat.IF_ENTER,move_plat1;
	CALL stop_camera;
}	

ACTION rise_move_plat {
	SET cave2switch2.TEXTURE,switch2_on_tex;
	SET cave2switch2.IF_HIT,NULL;
	SET move_plat.FLOOR_HGT,2.5;
	SET move_plat_b.CEIL_HGT,1.5;
	CALL show_camera4;
	SET move_plat.EACH_TICK,move_plat_up;
	SET move_plat_b.EACH_TICK,platform_up;
}

REGION cavebridge2_b {
        FLOOR_TEX flat4_tex;
        CEIL_TEX wood2_broad_tex;
        FLOOR_HGT -11.5;
        CEIL_HGT -1;
        AMBIENT -.3;
}

REGION cavebridge2 {
        FLOOR_TEX wood2_broad_tex;
        CEIL_TEX flat4_tex;
        BELOW cavebridge2_b;
        FLOOR_HGT -.2;
        CEIL_HGT  14;
        AMBIENT -.2;
	IF_ARISE regio_arise;
}


REGION cave2_acid_b {
        FLOOR_TEX stfloor20_tex;
        CEIL_TEX acidunten_tex;
        FLOOR_HGT -2.5;
        CEIL_HGT  9.5;
        CLIP_DIST  100;
        AMBIENT -.2;
        IF_ARISE regio_arise;
}

REGION cave2_acid {
        FLOOR_TEX acidoben_tex;
        CEIL_TEX stfloor20_tex;
        BELOW cave2_acid_b;
        FLOOR_HGT  9.5;
        CEIL_HGT  22;
        CLIP_DIST  200;
        SKILL1  2;
        AMBIENT -.2;
        IF_DIVE regio_dive;
	FLAGS FLAG2;
}

REGION cave2_acidrand {
        FLOOR_TEX stfloor20_tex;
        CEIL_TEX stfloor20_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  100;
        AMBIENT -.4;
}

REGION cave2_room {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
	AMBIENT -0.3;
        CLIP_DIST  200;
}

REGION cave2_room2 {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
	AMBIENT -0.2;
        CLIP_DIST  200;
}
REGION cave2_room3 {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
	AMBIENT -0.1;
        CLIP_DIST  200;
}
REGION cave2_room_hell {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT  .15;
        EACH_TICK flicker_cave;
}

REGION cave2_aciddive {
        FLOOR_TEX stfloor20_tex;
        CEIL_TEX stfloor20_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  100;
        AMBIENT  0;
}

REGION cave2_acidgang {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT -.5;
	CLIP_DIST 100;
}

REGION cave2_acidgangflicker {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT -.5;
        EACH_TICK flicker_cave;
	CLIP_DIST 100;
}


REGION cave2_ceildoor1 {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  19;
        CEIL_HGT  19;
        CLIP_DIST  200;
        SKILL7  29;
        AMBIENT -.3;
        FLAGS SAVE,FLAG6;
}

WALL cave2_ceiltex1 {
        TEXTURE door1_tex;
        IF_HIT set_cave2_ceildoor1_open;
        POSITION 0;
	FLAGS SAVE,PORTCULLIS;
}

ACTION set_cave2_ceildoor1_open {
	SET loop_sound,doorsnd;
	SET cave2_ceildoor1.EACH_TICK, set_cave2_ceildoor1_open;
	CALL ceildoor_open;
}

REGION cave2_ceildoor2 {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  19;
        CEIL_HGT  19;
        CLIP_DIST  200;
        SKILL7  29;
        AMBIENT -.3;
        FLAGS SAVE,FLAG6;
}

WALL cave2_ceiltex2 {
        TEXTURE door1_tex;
        IF_HIT set_cave2_ceildoor2_open;
        POSITION 0;
	FLAGS SAVE,PORTCULLIS;
}

ACTION set_cave2_ceildoor2_open {
	SET loop_sound, secretsnd;
	SET cave2_ceildoor2.EACH_TICK, set_cave2_ceildoor2_open;
	CALL ceildoor_open;
}

REGION cave2_ceildoor3 {
        FLOOR_TEX stfloor14_tex;
        CEIL_TEX stfloor14_tex;
        FLOOR_HGT  19;
        CEIL_HGT  19;
        CLIP_DIST  200;
        SKILL7  29;
        AMBIENT -.3;
        FLAGS SAVE,FLAG6;
}

WALL cave2_ceiltex3 {
        TEXTURE door1_tex;
        IF_HIT set_cave2_ceildoor3_open;
        POSITION 0;
	FLAGS SAVE,PORTCULLIS;
}

ACTION set_cave2_ceildoor3_open {
	SET cave2_ceildoor3.EACH_TICK,ceildoor_open;
}


REGION cave2_floordoor1 {
        FLOOR_TEX flat4_tex;
        CEIL_TEX flat4_tex;
        FLOOR_HGT  19;
        CEIL_HGT  19;
        CLIP_DIST  200;
        SKILL7  9;
        AMBIENT -.2;
        FLAGS SAVE;
}

WALL cave2_floortex1 {
        TEXTURE switch1_off_tex;
        IF_HIT set_cave2_floordoor1_open;
        FLAGS SAVE,PORTCULLIS;
}

ACTION set_cave2_floordoor1_open {
	SET cave2_floortex1.TEXTURE,switch1_on_tex;
	SET cave2_floordoor1.EACH_TICK,floordoor_open;
}

REGION cave2gang {
        FLOOR_TEX stfloor7_tex;
        CEIL_TEX stfloor1_g2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.3;
}

REGION cave2gang_FD {
        FLOOR_TEX stfloor7_tex;
        CEIL_TEX stfloor1_g2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.3;
	FLAGS FLOOR_DESCEND;
}

REGION cave2felsen {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor1_g2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.3;
}


REGION cave2gang_flicker {
        FLOOR_TEX stfloor7_tex;
        CEIL_TEX stfloor1_g2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  200;
        AMBIENT -.8;
	EACH_TICK flicker_cave_d;
}

REGION cave2gang_hell {
        FLOOR_TEX stfloor7_tex;
        CEIL_TEX sky2_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT  0;
}

REGION cave2candle_red {
        FLOOR_TEX stone9_tex;
        CEIL_TEX stone9_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        CLIP_DIST  100;
        AMBIENT -.2;
        EACH_TICK flicker_cave;
}

WALL cave2felsen_im {
	TEXTURE stfloor15_tex;
	FLAGS IMPASSABLE;
}

REGION cave2_kriechgang {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT -.4;
	CLIP_DIST 200;
}

REGION cave2_kriechgang_FCD {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT -.319;
	CLIP_DIST 200;
	FLAGS FLOOR_DESCEND,CEIL_DESCEND;
}

THING caveswingG2 {
       TEXTURE black_tex;
       FLAGS INVISIBLE,PASSABLE;
       }

REGION caveswing2 {
        FLOOR_TEX flat1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT  27;
        CEIL_HGT  27;
        GENIUS caveswingG2;
        SKILL3 -1.571;
        SKILL4 0;
        FLAGS SAVE;
}

WALL cave2doortex5 {
        TEXTURE stfloor1_r_tex;
        FLAGS SAVE;
        DIST 50;
        IF_HIT set_cave2door5_open;
        }

ACTION set_cave2door5_open {
       SET_ALL cave2doortex5.IF_HIT,NULL;
       SET_ALL caveswing2.EACH_TICK,swing_open;
       }

REGION cave2_podest {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  0;
        CEIL_HGT  12;
        AMBIENT  -0.2;
}

REGION cave2_narrow_b {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  -16.5;
        CEIL_HGT  -7.5;
        AMBIENT  -0.3;
}

REGION cave2_narrow {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  -0.5;
        CEIL_HGT  15;
        AMBIENT  -0.2;
	BELOW cave2_narrow_b;
}

REGION caveblood_b {
        CLIP_DIST 200;
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX blutunten_tex;
        FLOOR_HGT -16.5;
        CEIL_HGT -5.5;
        AMBIENT -0.1;
        IF_ARISE regio_arise;
        }

REGION caveblood {
        CLIP_DIST 200;
        FLOOR_TEX blutoben_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT -5.5;
        CEIL_HGT 15;
        AMBIENT -0.2;
        IF_DIVE regio_dive;
        BELOW caveblood_b;
	SKILL1 3;
        }

REGION caveblood2_b {
        CLIP_DIST 200;
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX blutunten_tex;
        FLOOR_HGT -16.5;
        CEIL_HGT -5.5;
        AMBIENT -0.1;
        IF_ARISE regio_arise;
	FLAGS FLOOR_ASCEND;
        }

REGION caveblood2_FA{
        CLIP_DIST 200;
        FLOOR_TEX blutoben_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT -5.5;
        CEIL_HGT 5;
        AMBIENT -0.2;
        IF_DIVE regio_dive;
        BELOW caveblood2_b;
	SKILL1 3;
        }

REGION cave2_star {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  -0.5;
        CEIL_HGT  15;
        AMBIENT  -0.2;
	FLAGS SAVE;
}

REGION cave2_quad {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  -0.5;
        CEIL_HGT  15;
        AMBIENT  -0.2;
	FLAGS SAVE;
}

REGION cave2_circ {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  -0.5;
        CEIL_HGT  15;
        AMBIENT  -0.2;
	FLAGS SAVE;
}

REGION cave2_tria {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  -0.5;
        CEIL_HGT  15;
        AMBIENT  -0.2;
	FLAGS SAVE;
}

REGION cave2lift {
        FLOOR_TEX stfloor1_tex;
        CEIL_TEX flat1_tex;
        FLOOR_HGT  34;
        CEIL_HGT  34;
        CLIP_DIST  200;
        SKILL7  21;
        SKILL8  34;
        AMBIENT -0.3;
	FLAGS SAVE;
}

WALL cave2_liftswitch {
        TEXTURE switch1_off_tex;
        IF_HIT start_cave2lift;
        FLAGS SAVE,PORTCULLIS;
}

WALL cave2liftwall {
        TEXTURE stfloor1_tex;
        POSITION  1;
        IF_HIT set_cave2lift;
        FLAGS SAVE,PORTCULLIS;
}

ACTION set_cave2lift_down {
	SET THERE.IF_ENTER,NULL;
	SET THERE.IF_LEAVE,set_cave2lift_up;
	SET THERE.EACH_TICK,lift_down;}

ACTION set_cave2lift_up {
	SET THERE.IF_LEAVE,NULL;
	SET THERE.IF_ENTER,set_cave2lift_down;
	SET THERE.EACH_TICK,lift_up;}

ACTION cave2lift_down {
	CALL lift_down;
	IF_NEQUAL THERE.FLOOR_HGT,THERE.SKILL7;
		END;
	SET THERE.SKILL7,8;
	SET THERE.SKILL8,21;
	SET THERE.IF_ENTER,set_cave2lift_down;
	SET THERE.IF_LEAVE,set_cave2lift_up;
	SET_ALL cave2liftwall.FLAG1,1;
	SET THERE.EACH_TICK,NULL;
	CALL stop_camera;
}

ACTION start_cave2lift {
	SET_ALL cave2_liftswitch.TEXTURE,switch1_on_tex;
	SET_ALL cave2_liftswitch.IF_HIT,NULL;
	CALL show_camera5;
	SET_ALL cave2lift.EACH_TICK,cave2lift_down;}

ACTION set_cave2lift {
	IF_EQUAL cave2liftwall.FLAG1,0;
		END;
	SET_ALL cave2lift.EACH_TICK,lift_down;
	SET_ALL cave2lift.IF_ENTER,set_cave2lift_up;
}

WALL cave2_portal1 {
	TEXTURE teletex2_tex;
	IF_NEAR cave2_tele1;
	FLAGS TRANSPARENT,FENCE;
}

THING cave2_landing1 {
	TEXTURE black_tex;
	FLAGS INVISIBLE, PASSABLE;
}

ACTION cave2_tele1 {
	RULE PLAYER_X=cave2_landing1.X;
	RULE PLAYER_Y=cave2_landing1.Y;
	SET HERE,cave2_landing1.REGION;
	RULE PLAYER_ANGLE=cave2_landing1.ANGLE;
	SET RENDER_MODE,2;
	CALL stop_moving;
	WAIT 1;
	CALL set_moving;
}

REGION cave2_inside {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  3;
        CEIL_HGT  15;
        CLIP_DIST  100;
        AMBIENT  0;
}

REGION cave2_blue {
        FLOOR_TEX stfloor19_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  7;
        CEIL_HGT  15;
        CLIP_DIST  100;
        AMBIENT  .3;
}

REGION cave2_insidewall {
        FLOOR_TEX stfloor15_tex;
        CEIL_TEX stfloor15_tex;
        FLOOR_HGT  3;
        CEIL_HGT  3;
        CLIP_DIST  100;
        SKILL7  15;
        AMBIENT -.2;
        FLAGS SAVE;
}

REGION cave2_trap {
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        FLOOR_HGT  1;
        CEIL_HGT  17;
        CLIP_DIST  100;
        AMBIENT -.3;
        FLAGS SAVE;
}

WALL cave2switch3 {
	TEXTURE switch1_off_tex;
	IF_HIT set_cave2switch3;
	FLAGS SAVE,PORTCULLIS;
}

WALL cave2switchT {
	TEXTURE tswitch_tex;
	IF_HIT set_cave2switchT;
	FLAGS SAVE,PORTCULLIS;
}

WALL cave2switchQ {
	TEXTURE qswitch_tex;
	IF_HIT set_cave2switchQ;
	FLAGS SAVE,PORTCULLIS;
}

WALL cave2switchS {
	TEXTURE sswitch_tex;
	IF_HIT set_cave2switchS;
	FLAGS SAVE,PORTCULLIS;
}

WALL cave2switchC {
	TEXTURE Cswitch_tex;
	IF_HIT set_cave2switchC;
	FLAGS SAVE,PORTCULLIS;
}

ACTION set_cave2switch3 {
	SET cave2switch3.TEXTURE,switch1_on_tex;
	SET cave2switch3.IF_HIT,NULL;
	SET cave2switch3.SKILL1,RANDOM;
	IF_BELOW cave2switch3.SKILL1,0.5;
		SKIP 6;
	IF_BELOW cave2switch3.SKILL1,0.75;
		SKIP 2;
	SET cave2_circ.FLOOR_TEX,stfloor18_tex;	
	END;
	SET cave2_tria.FLOOR_TEX,stfloor18_tex;
	END;
	IF_ABOVE cave2switch3.SKILL1,0.25;
		SKIP 2;
	SET cave2_quad.FLOOR_TEX,stfloor18_tex;
	END;
	SET cave2_star.FLOOR_TEX,stfloor18_tex;
}

ACTION set_cave2switchT {
	IF_NEQUAL cave2_tria.FLOOR_TEX,stfloor18_tex;
		SKIP 2;	
	SET_ALL cave2_insidewall.EACH_TICK,ceildoor_open;
	END;
	SET cave2_trap.FLOOR_HGT,-70;
	SET cave2_trap.FLOOR_TEX,lavaoben_tex;
	SET RENDER_MODE,1;
	SET cave2_trap.IF_ENTER,lava_enter_cave;
	SET cave2_trap.IF_LEAVE,lava_leave_cave;
	IF_NEQUAL HERE,cave2_trap;
		END;
	SET THERE,cave2_trap;
	CALL lava_enter_cave;
}

ACTION set_cave2switchS {
	IF_NEQUAL cave2_star.FLOOR_TEX,stfloor18_tex;
		SKIP 2;	
	SET_ALL cave2_insidewall.EACH_TICK,ceildoor_open;
	END;
	SET cave2_trap.FLOOR_HGT,-70;
	SET cave2_trap.FLOOR_TEX,lavaoben_tex;
	SET RENDER_MODE,1;
	SET cave2_trap.IF_ENTER,lava_enter_cave;
	SET cave2_trap.IF_LEAVE,lava_leave_cave;
	IF_NEQUAL HERE,cave2_trap;
		END;
	SET THERE,cave2_trap;
	CALL lava_enter_cave;
}

ACTION set_cave2switchQ {
	IF_NEQUAL cave2_quad.FLOOR_TEX,stfloor18_tex;
		SKIP 2;	
	SET_ALL cave2_insidewall.EACH_TICK,ceildoor_open;
	END;
	SET cave2_trap.FLOOR_HGT,-70;
	SET cave2_trap.FLOOR_TEX,lavaoben_tex;
	SET RENDER_MODE,1;
	SET cave2_trap.IF_ENTER,lava_enter_cave;
	SET cave2_trap.IF_LEAVE,lava_leave_cave;
	IF_NEQUAL HERE,cave2_trap;
		END;
	SET THERE,cave2_trap;
	CALL lava_enter_cave;
}

ACTION set_cave2switchC {
	IF_NEQUAL cave2_circ.FLOOR_TEX,stfloor18_tex;
		SKIP 2;	
	SET_ALL cave2_insidewall.EACH_TICK,ceildoor_open;
	END;
	SET cave2_trap.FLOOR_HGT,-70;
	SET cave2_trap.FLOOR_TEX,lavaoben_tex;
	SET RENDER_MODE,1;
	SET cave2_trap.IF_ENTER,lava_enter_cave;
	SET cave2_trap.IF_LEAVE,lava_leave_cave;
	IF_NEQUAL HERE,cave2_trap;
		END;
	SET THERE,cave2_trap;
	CALL lava_enter_cave;
}



