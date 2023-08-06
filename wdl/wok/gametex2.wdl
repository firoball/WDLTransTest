BMAP treewall_map, <treetex.pcx>;
BMAP woodwin_map, <window.pcx>;
BMAP wooddoor_map, <wooddoor.pcx>;
BMAP web_map, <cobweb.pcx>;
BMAP gargoyle2_map, <gargoyl2.pcx>;
BMAP gargoyle3_map, <gargoyl3.pcx>;
BMAP gargoyle4_map, <gargoyl4.pcx>;
BMAP gargoyle5_map, <gargoyl5.pcx>;
BMAP sign_map, <sign.pcx>;
BMAP yellowflask_map, <flask.pcx>,0,0,45,64;
BMAP orangeflask_map, <flask.pcx>,45,0,45,64;
BMAP redflask_map, <flask.pcx>,90,0,45,64;
BMAP blueflask_map, <flask.pcx>,135,0,45,64;
BMAP greenflask_map, <flask.pcx>,180,0,45,64;
BMAP brownflask_map, <flask.pcx>,225,0,45,64;
BMAP greyflask_map, <flask.pcx>,270,0,45,64;
BMAP plate_armor_map, <armor.pcx>;
BMAP scroll_map, <scroll.pcx>;
BMAP club_map, <weapons.pcx>,0,0,89,42;
BMAP axe_map, <weapons.pcx>,0,42,88,49;
BMAP sword_map, <weapons.pcx>,0,91,89,24;
BMAP glass_map, <glass.pcx>;
BMAP fence2_map, <fence.pcx>;
BMAP walltex4_kl_map, <woodtex.pcx>,192,0,64,128;
BMAP walltex4_map, <woodtex.pcx>,256,0,128,128;
BMAP statue_map, <statue.pcx>;
BMAP statue2_map, <statue2.pcx>;
BMAP canstick1_map, <canstick.pcx>,0,0,40,128;
BMAP canstick2_map, <canstick.pcx>,40,0,40,128;
BMAP canstick3_map, <canstick.pcx>,80,0,40,128;
BMAP table_map, <table.pcx>;
BMAP chair_map, <chair.pcx>;
BMAP church_map, <church.pcx>;
BMAP books_map, <library.pcx>;
BMAP carpet_map, <magfloor.pcx>;
BMAP champ_glass_map,<bar.pcx>,0,0,19,32;
BMAP bottleB_map, <bar.pcx>,70,0,17,42;
BMAP bottleR_map, <bar.pcx>,36,0,17,42;
BMAP bottleG_map, <bar.pcx>,53,0,17,42;
BMAP bottleGR_map, <bar.pcx>,19,0,17,42;
BMAP bar_map, <bar2.pcx>;

TEXTURE treewall_tex {
	SCALE_XY 8,8;
	BMAPS treewall_map;
}

TEXTURE woodwin_tex {
	SCALE_XY 12.8,12.8;
	BMAPS woodwin_map;
}
 
TEXTURE wooddoor_tex {
	SCALE_XY 9.1,12.8;
	BMAPS wooddoor_map;
}

TEXTURE wooddoor2_tex {
	SCALE_XY 11.13,10.6;
	BMAPS wooddoor_map;
}

TEXTURE web_tex {
	SCALE_XY 8,8;
	BMAPS web_map;
	FLAGS DIAPHANOUS;
	AMBIENT .1;
}

TEXTURE gargy_anim_tex {
	SCALE_XY 30,25;
	FLAGS ONESHOT,CLIP;
	CYCLES 5;
	BMAPS gargoyle_map,gargoyle2_map,gargoyle3_map,gargoyle4_map,gargoyle5_map;
	DELAY 1,1,1,1,1;
}

TEXTURE gargy_dead_tex {
	SCALE_XY 30,25;
	FLAGS CLIP;
	BMAPS gargoyle5_map;}

TEXTURE sign_tex {
	SCALE_XY 10.66,10.66;
	BMAPS sign_map;
}

TEXTURE gitter_big_tex {
	ALBEDO 0.1;
	SCALE_XY 11.6,11.6;
	BMAPS gitter_map;}

TEXTURE wasserfall_dia_tex {
	SOUND wfall_snd; SDIST 30; 
        FLAGS DIAPHANOUS;
	ALBEDO 0.1;
        CYCLES 4;
        BMAPS wasserfall1_map,wasserfall2_map,wasserfall3_map,wasserfall4_map;
        SCALE_XY 16,16;
        DELAY 1,1,1,1;}

TEXTURE yellowflask_tex {
	SCALE_XY 32,32;
	BMAPS yellowflask_map;}

TEXTURE orangeflask_tex {
	SCALE_XY 32,32;
	BMAPS orangeflask_map;}

TEXTURE redflask_tex {
	SCALE_XY 32,32;
	BMAPS redflask_map;}

TEXTURE blueflask_tex {
	SCALE_XY 32,32;
	BMAPS blueflask_map;}

TEXTURE greenflask_tex {
	SCALE_XY 32,32;
	BMAPS greenflask_map;}

TEXTURE brownflask_tex {
	SCALE_XY 32,32;
	BMAPS brownflask_map;}

TEXTURE greyflask_tex {
	SCALE_XY 32,32;
	BMAPS greyflask_map;}

TEXTURE plate_armor_tex {
	SCALE_XY 18,18;
	BMAPS plate_armor_map;}

TEXTURE sword_tex {
	SCALE_XY 29,29;
	BMAPS sword_map;}

TEXTURE club_tex {
	SCALE_XY 29,29;
	BMAPS club_map;}

TEXTURE axe_tex {
	SCALE_XY 29,29;
	BMAPS axe_map;}

TEXTURE scroll_tex {
	SCALE_XY 35,35;
	BMAPS scroll_map;}

TEXTURE glass_tex {
	SCALE_XY 16,16;
	FLAGS DIAPHANOUS;
	BMAPS glass_map;}

TEXTURE fence2_tex {
	SCALE_XY 16,16;
	BMAPS fence2_map;}

TEXTURE walltex4_kl_tex {
	AMBIENT .2;
	SCALE_XY 10,10;
	BMAPS walltex4_kl_map;}

TEXTURE walltex4_tex {
	AMBIENT .2;
	SCALE_XY 10,10;
	BMAPS walltex4_map;}

TEXTURE statue_tex {
	BMAPS statue_map;
	SCALE_XY 32,32;
}

TEXTURE statue2_tex {
	BMAPS statue2_map;
	SCALE_XY 32,32;
}

TEXTURE canstick_tex {
	CYCLES 4;
	BMAPS canstick1_map,canstick2_map,canstick3_map,canstick2_map;
	SCALE_XY 26,20;
	DELAY 2,2,2,2;
}

TEXTURE canstick_flicker_tex {
	CYCLES 4;
	BMAPS canstick1_map,canstick2_map,canstick3_map,canstick2_map;
	SCALE_XY 26,20;
	DELAY 2,2,2,2;
}

TEXTURE table_tex {
	BMAPS table_map;
	SCALE_XY 16,16;
}

TEXTURE chair_tex {
	BMAPS chair_map;
	SCALE_XY 36,30;
}

TEXTURE church_tex {
	BMAPS church_map;
	SCALE_XY 16,16;
}

TEXTURE books_tex {
	BMAPS books_map;
	SCALE_XY 16,16;
}

TEXTURE carpet_tex {
	BMAPS carpet_map;
	SCALE_XY 16,16;
}

TEXTURE champ_glass_tex {
	BMAPS champ_glass_map;
	SCALE_XY 23,23;
	FLAGS DIAPHANOUS;
}

TEXTURE bottleB_tex {
	BMAPS bottleB_map;
	SCALE_XY 18,13;
}

TEXTURE bottleR_tex {
	BMAPS bottleR_map;
	SCALE_XY 18,13;
}

TEXTURE bottleG_tex {
	BMAPS bottleG_map;
	SCALE_XY 18,13;
}

TEXTURE bottleGR_tex {
	BMAPS bottleGR_map;
	SCALE_XY 18,13;
}

TEXTURE bar_tex {
	BMAPS bar_map;
	SCALE_XY 11.63,11.63;
}

WALL treewall {
	TEXTURE treewall_tex;
	FLAGS PORTCULLIS;}

WALL woodwin {
	TEXTURE woodwin_tex;
	FLAGS PORTCULLIS,TRANSPARENT;
}

WALL sky3_dark {
        TEXTURE sky3_dark_tex;
	MAP_COLOR 0;
	FLAGS PORTCULLIS;}
	
WALL cave1 {
	FLAGS PORTCULLIS;
	TEXTURE cave1_tex;}

WALL cave2 {
	FLAGS PORTCULLIS;
	TEXTURE cave2_tex;}

WALL stone8_far { TEXTURE stone8_tex; FLAGS FAR;}

WALL wasserfall_dia {
	TEXTURE wasserfall_dia_tex;
	FLAGS PASSABLE,CURTAIN,TRANSPARENT;
	EACH_TICK move_wasserfall;
}

WALL glass {TEXTURE glass_tex; FLAGS CURTAIN, TRANSPARENT;}
WALL churchglass {TEXTURE church_tex;}
WALL fence2 {TEXTURE fence2_tex; FLAGS FENCE, TRANSPARENT;}

WALL walltex4_klein {TEXTURE walltex4_kl_tex;}
WALL walltex4 {TEXTURE walltex4_tex;}
WALL books {TEXTURE books_tex; FLAGS PORTCULLIS;}
WALL bar {TEXTURE bar_tex; FLAGS PORTCULLIS;}
WALL contest {TEXTURE black_tex; IF_NEAR display_contest;}

ACTION display_contest {CALL reset_controls; SET conversation_txt.VISIBLE,1; WAITT 64; SET IF_ANYKEY,quit;}


MODEL peter_mdl <humanik.mdl>;
TEXTURE peter_tex {
	MODEL peter_mdl;
	CYCLES 12;
	DELAY 2;
}

