SOUND ok_sound,<rumpel.wav>;

SKILL needakey {VAL 0;}
SKILL manapool {VAL 0;}
SKILL highlife {VAL 0;}
SKILL rambazamba {VAL 0;}
SKILL panzerschrank {VAL 0;}
SKILL clearview {VAL 0;}
SKILL spellcaster {VAL 0;}
SKILL saycheese {VAL 0;}
SKILL ctrl {VAL 0;}

SKILL shot_nr {VAL 0; MIN 0; MAX 10;}

STRING needakey_str,"YOU NEED SOME KEYS?? YOU GET SOME KEYS!!";
STRING manapool_str,"MANA HAS BEEN RESTORED TO MAXIMUM";
STRING highlife_str,"LIFE HAS BEEN RESTORED TO MAXIMUM";
STRING rambazamba_str,"RAMBA-ZAMBA";
STRING panzerschrank_str,"PANZERSCHRANK";
STRING clearview1_str,"FULL MAP GAINED";
STRING clearview2_str,"MAP IS BACK TO NORMAL";
STRING spellcaster_str,"TAKE A LOOK AT YOUR SPELLBOOK";
STRING saycheese_str,"SCREENSHOT SAVED";
STRING ctrl1_str,"control mode 1 activated!";
STRING ctrl2_str,"control mode 2 activated!";
STRING ctrl0_str,"control mode 0 activated!";

ACTION cheat_on {
        SET IF_M, cheat_m;
        SET IF_A, cheat_a;
        SET IF_N, cheat_n;
        SET IF_P, cheat_p;
        SET IF_O, cheat_o;
        SET IF_L, cheat_l;
        SET IF_H, cheat_h;
        SET IF_I, cheat_i;
        SET IF_G, cheat_g;
        SET IF_F, cheat_f;
        SET IF_E, cheat_e;
        SET IF_R, cheat_r;
        SET IF_B, cheat_b;
        SET IF_Y, cheat_y;
        SET IF_D, cheat_d;
        SET IF_K, cheat_k;
        SET IF_Z, cheat_z;
        SET IF_C, cheat_c;
        SET IF_J, reset_cheats;
        SET IF_Q, reset_cheats;
        SET IF_S, cheat_s;
        SET IF_T, cheat_t;
        SET IF_U, reset_cheats;
        SET IF_V, cheat_v;
        SET IF_W, cheat_w;
        SET IF_X, reset_cheats;
        }

ACTION cheat_off {
        SET IF_M,NULL;
        SET IF_A,NULL;
        SET IF_N,NULL;
        SET IF_P,NULL;
        SET IF_O,NULL;
        SET IF_L,NULL;
        SET IF_H,NULL;
        SET IF_I,NULL;
        SET IF_G,NULL;
        SET IF_F,NULL;
        SET IF_E,NULL;
        SET IF_R,NULL;
        SET IF_B,NULL;
        SET IF_Z,NULL;
        SET IF_D,NULL;
        SET IF_K,NULL;
        SET IF_Y,NULL;
        SET IF_C,NULL;
        SET IF_J,NULL;
        SET IF_Q,NULL;
        SET IF_S,NULL;
        SET IF_T,NULL;
        SET IF_U,NULL;
        SET IF_V,NULL;
        SET IF_W,NULL;
        SET IF_X,NULL;
        }

ACTION reset_cheats {
        SET panzerschrank,0;
        SET needakey,0;
        SET manapool,0;
        SET highlife,0;
        SET rambazamba,0;}

//////////////////////////////

ACTION cheat_n {
        IF_EQUAL manapool,2;
                BRANCH add_manapool;
        IF_EQUAL panzerschrank,11;
                BRANCH add_panzerschrank;
        IF_EQUAL panzerschrank,2;
                BRANCH add_panzerschrank;
        IF_EQUAL ctrl,4;
                BRANCH cheat_ctrl0;
        IF_EQUAL needakey,0;
                BRANCH add_needakey;
        BRANCH reset_cheats;
        }

ACTION cheat_e {
        IF_EQUAL needakey,6;
                BRANCH add_needakey;
        IF_EQUAL needakey,2;
                BRANCH add_needakey;
        IF_EQUAL needakey,1;
                BRANCH add_needakey;
        IF_EQUAL saycheese,8;
                BRANCH add_saycheese;
        IF_EQUAL saycheese,6;
                BRANCH add_saycheese;
        IF_EQUAL saycheese,5;
                BRANCH add_saycheese;
        IF_EQUAL highlife,7;
                BRANCH add_highlife;
        IF_EQUAL panzerschrank,4;
                BRANCH add_panzerschrank;
        IF_EQUAL clearview,7;
                BRANCH add_clearview;
        IF_EQUAL clearview,2;
                BRANCH add_clearview;
        IF_EQUAL spellcaster,9;
                BRANCH add_spellcaster;
        IF_EQUAL spellcaster,2;
                BRANCH add_spellcaster;
        BRANCH reset_cheats;
        }

ACTION cheat_d {
        IF_EQUAL needakey,3;
                BRANCH add_needakey;
        BRANCH reset_cheats;
        }

ACTION cheat_a {
        IF_EQUAL needakey,4;
                BRANCH add_needakey;
        IF_EQUAL manapool,3;
                BRANCH add_manapool;
        IF_EQUAL manapool,1;
                BRANCH add_manapool;
        IF_EQUAL rambazamba,9;
                BRANCH add_rambazamba;
        IF_EQUAL rambazamba,6;
                BRANCH add_rambazamba;
        IF_EQUAL rambazamba,4;
                BRANCH add_rambazamba;
        IF_EQUAL rambazamba,1;
                BRANCH add_rambazamba;
        IF_EQUAL panzerschrank,10;
                BRANCH add_panzerschrank;
        IF_EQUAL panzerschrank,1;
                BRANCH add_panzerschrank;
        IF_EQUAL clearview,3;
                BRANCH add_clearview;
        IF_EQUAL spellcaster,6;
                BRANCH add_spellcaster;
        IF_EQUAL saycheese,1;
                BRANCH add_saycheese;
        BRANCH reset_cheats;
        }

ACTION cheat_k {
        IF_EQUAL needakey,5;
                BRANCH add_needakey;
        IF_EQUAL panzerschrank,12;
                BRANCH add_panzerschrank;
        BRANCH reset_cheats;
        }

ACTION cheat_y {
        IF_EQUAL rambazamba,5;
                BRANCH add_rambazamba;
        IF_EQUAL needakey,7;
                BRANCH add_needakey;
        IF_EQUAL panzerschrank,3;
                BRANCH add_panzerschrank;
        IF_EQUAL saycheese,2;
                BRANCH add_saycheese;
        BRANCH reset_cheats;
        }

ACTION cheat_m {
        IF_EQUAL rambazamba,7;
                BRANCH add_rambazamba;
        IF_EQUAL rambazamba,2;
                BRANCH add_rambazamba;
        IF_EQUAL manapool,0;
                BRANCH add_manapool;
        BRANCH reset_cheats;
        }

ACTION cheat_p {
        IF_EQUAL manapool,4;
                BRANCH add_manapool;
        IF_EQUAL spellcaster,1;
                BRANCH add_spellcaster;
        IF_EQUAL panzerschrank,0;
                BRANCH add_panzerschrank;
        BRANCH reset_cheats;
        }

ACTION cheat_o {
        IF_EQUAL manapool,6;
                BRANCH add_manapool;
        IF_EQUAL manapool,5;
                BRANCH add_manapool;
        BRANCH reset_cheats;
        }

ACTION cheat_l {
        IF_EQUAL manapool,7;
                BRANCH add_manapool;
        IF_EQUAL highlife,4;
                BRANCH add_highlife;
        IF_EQUAL clearview,1;
                BRANCH add_clearview;
        IF_EQUAL spellcaster,4;
                BRANCH add_spellcaster;
        IF_EQUAL spellcaster,3;
                BRANCH add_spellcaster;
        IF_EQUAL ctrl,3;
                BRANCH add_ctrl;
        BRANCH reset_cheats;
        }

ACTION cheat_h {
        IF_EQUAL highlife,3;
                BRANCH add_highlife;
        IF_EQUAL panzerschrank,8;
                BRANCH add_panzerschrank;
        IF_EQUAL saycheese,4;
                BRANCH add_saycheese;
        IF_EQUAL highlife,0;
                BRANCH add_highlife;
        BRANCH reset_cheats;
        }

ACTION cheat_i {
        IF_EQUAL highlife,1;
                BRANCH add_highlife;
        IF_EQUAL highlife,5;
                BRANCH add_highlife;
        IF_EQUAL clearview,6;
                BRANCH add_clearview;
        BRANCH reset_cheats;
        }

ACTION cheat_g {
        IF_EQUAL highlife,2;
                BRANCH add_highlife;
        BRANCH reset_cheats;
        }

ACTION cheat_f {
        IF_EQUAL ctrl,4;
                BRANCH cheat_ctrl2;
        IF_EQUAL highlife,6;
                BRANCH add_highlife;
        BRANCH reset_cheats;
        }

ACTION cheat_r {
        IF_EQUAL panzerschrank,9;
                BRANCH add_panzerschrank;
        IF_EQUAL panzerschrank,5;
                BRANCH add_panzerschrank;
        IF_EQUAL clearview,4;
                BRANCH add_clearview;
        IF_EQUAL spellcaster,10;
                BRANCH add_spellcaster;
        IF_EQUAL ctrl,4;
                BRANCH cheat_ctrl1;
        IF_EQUAL ctrl,2;
                BRANCH add_ctrl;
        IF_EQUAL rambazamba,0;
                BRANCH add_rambazamba;
        BRANCH reset_cheats;
        }

ACTION cheat_b {
        IF_EQUAL rambazamba,8;
                BRANCH add_rambazamba;
        IF_EQUAL rambazamba,3;
                BRANCH add_rambazamba;
        BRANCH reset_cheats;
        }

ACTION cheat_z {
        IF_EQUAL rambazamba,5;
                BRANCH add_rambazamba;
        IF_EQUAL needakey,7;
                BRANCH add_needakey;
        IF_EQUAL panzerschrank,3;
                BRANCH add_panzerschrank;
        IF_EQUAL saycheese,2;
                BRANCH add_saycheese;
        BRANCH reset_cheats;
        }

ACTION cheat_s {
        IF_EQUAL panzerschrank,6;
                BRANCH add_panzerschrank;
        IF_EQUAL spellcaster,7;
                BRANCH add_spellcaster;
        IF_EQUAL saycheese,8;
                BRANCH add_saycheese;
        IF_EQUAL spellcaster,0;
                BRANCH add_saycheese_spellcaster;
        IF_EQUAL saycheese,0;
                BRANCH add_saycheese_spellcaster;
        BRANCH reset_cheats;
        }

ACTION cheat_c {
        IF_EQUAL panzerschrank,7;
                BRANCH add_panzerschrank;
        IF_EQUAL spellcaster,5;
                BRANCH add_spellcaster;
        IF_EQUAL saycheese,3;
                BRANCH add_saycheese;
        IF_EQUAL clearview,0;
                BRANCH add_ctrl_clearview;
        IF_EQUAL ctrl,0;
                BRANCH add_ctrl_clearview;
        BRANCH reset_cheats;
        }

ACTION cheat_v {
        IF_EQUAL clearview,5;
                BRANCH add_clearview;
        BRANCH reset_cheats;
        }

ACTION cheat_w {
        IF_EQUAL clearview,8;
                BRANCH add_clearview;
        BRANCH reset_cheats;
        }

ACTION cheat_t {
        IF_EQUAL ctrl,1;
                BRANCH add_ctrl;
        IF_EQUAL spellcaster,8;
                BRANCH add_spellcaster;
        BRANCH reset_cheats;
        }
//////////////////////////////

ACTION add_needakey {
        ADD needakey,1;
        IF_EQUAL needakey,8;
                CALL cheat_needakey;
        SET ctrl,0;
        SET saycheese,0;
        SET spellcaster,0;
        SET clearview,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET rambazamba,0;
        SET highlife,0;}

ACTION add_manapool {
        ADD manapool,1;
        IF_EQUAL manapool,8;
                CALL cheat_manapool;
        SET saycheese,0;
        SET ctrl,0;
        SET spellcaster,0;
        SET clearview,0;
        SET panzerschrank,0;
        SET needakey,0;
        SET rambazamba,0;
        SET highlife,0;}

ACTION add_highlife {
        ADD highlife,1;
        IF_EQUAL highlife,8;
                CALL cheat_highlife;
        SET ctrl,0;
        SET saycheese,0;
        SET spellcaster,0;
        SET clearview,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET rambazamba,0;
        SET needakey,0;}

ACTION add_rambazamba {
        ADD rambazamba,1;
        IF_EQUAL rambazamba,10;
                CALL cheat_rambazamba;
        SET ctrl,0;
        SET saycheese,0;
        SET spellcaster,0;
        SET clearview,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_panzerschrank {
        ADD panzerschrank,1;
        IF_EQUAL panzerschrank,13;
                CALL cheat_panzerschrank;
        SET saycheese,0;
        SET ctrl,0;
        SET spellcaster,0;
        SET clearview,0;
        SET rambazamba,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_clearview {
        ADD clearview,1;
        IF_EQUAL clearview,9;
                CALL cheat_clearview;
        SET ctrl,0;
        SET saycheese,0;
        SET spellcaster,0;
        SET rambazamba,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_spellcaster {
        ADD spellcaster,1;
        IF_EQUAL spellcaster,11;
                CALL cheat_spellcaster;
        SET ctrl,0;
        SET saycheese,0;
        SET clearview,0;
        SET rambazamba,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_saycheese {
        ADD saycheese,1;
        IF_EQUAL saycheese,9;
                CALL cheat_saycheese;
        SET ctrl,0;
        SET spellcaster,0;
        SET clearview,0;
        SET rambazamba,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_ctrl {
        ADD ctrl,1;
        SET saycheese,0;
        SET spellcaster,0;
        SET clearview,0;
        SET rambazamba,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_saycheese_spellcaster {
        ADD saycheese,1;
        ADD spellcaster,1;
        SET ctrl,0;
        SET clearview,0;
        SET rambazamba,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}

ACTION add_ctrl_clearview {
        ADD ctrl,1;
        ADD clearview,1;
        SET spellcaster,0;
        SET saycheese,0;
        SET rambazamba,0;
        SET panzerschrank,0;
        SET manapool,0;
        SET needakey,0;
        SET highlife,0;}
//////////////////////////////

ACTION cheat_needakey {
        SET newstring,1;
        SET info_str,needakey_str;
        CALL show_info;
        SET needakey,0;
#cheat not finished yet
        PLAY_SOUND ok_sound,1;
        }

ACTION cheat_manapool {
        SET newstring,1;
        SET info_str,manapool_str;
        CALL show_info;
        SET manapool,0;
        PLAY_SOUND ok_sound,1;
        SET MP,MP.MAX;
        }

ACTION cheat_highlife {
        SET newstring,1;
        SET info_str,highlife_str;
        CALL show_info;
        SET highlife,0;
        PLAY_SOUND ok_sound,1;
        SET HP,HP.MAX;
        }

ACTION cheat_rambazamba {
        SET newstring,1;
        SET info_str,rambazamba_str;
        CALL show_info;
        SET rambazamba,0;
        PLAY_SOUND ok_sound,1;
        }

ACTION cheat_panzerschrank {
        SET newstring,1;
        SET info_str,panzerschrank_str;
        CALL show_info;
        SET panzerschrank,0;
        PLAY_SOUND ok_sound,1;
        }

ACTION cheat_clearview {
        IF_EQUAL mapcheat,1;
                SKIP 6;
        SET newstring,1;
        SET info_str,clearview1_str;
        SET mapcheat,1;
        IF_ABOVE MAP_MODE,0;
                SET MAP_MODE,1;
        SKIP 5;
        SET newstring,1;
        SET info_str,clearview2_str;
        SET mapcheat,0;
        IF_ABOVE MAP_MODE,0;
                SET MAP_MODE,0.5;
        CALL show_info;
        SET clearview,0;
        PLAY_SOUND ok_sound,1;
        }

ACTION cheat_spellcaster {
        SET newstring,1;
        SET info_str,spellcaster_str;
        CALL show_info;
        SET spellcaster,0;
        PLAY_SOUND ok_sound,1;
        SET Magic_Arrow,1;
        SET Nightvision,1;
        SET Fireball,1;
        SET Fly,1;
        SET Shield,1;
        SET Lightning,1;
        SET Repair,1;
        SET Explosion,1;
	SET Town_Portal,1;
	CALL check_spells;
        }

ACTION cheat_saycheese {
        SET info_txt.VISIBLE,0;
	SET newstring,1;
        SET info_str,saycheese_str;
        CALL show_info;
        SET saycheese,0;
        SCREENSHOT "WoK0",shot_nr;
	ADD shot_nr,1;
        IF_EQUAL shot_nr,shot_nr.MAX;
                SET shot_nr,shot_nr.MIN;
        }

ACTION cheat_ctrl1 {
        IF_NEQUAL ctrl,4;
                END;
        SET newstring,1;
        SET info_str,ctrl1_str;
        CALL show_info;
        SET ctrl,0;
        PLAY_SOUND ok_sound,1;
        SET ctrl_mode,1;
        }
        
ACTION cheat_ctrl2 {
        IF_NEQUAL ctrl,4;
                END;
        SET newstring,1;
        SET info_str,ctrl2_str;
        CALL show_info;
        SET ctrl,0;
        PLAY_SOUND ok_sound,1;
        SET ctrl_mode,2;
        }
ACTION cheat_ctrl0 {
        IF_NEQUAL ctrl,4;
                END;
        SET newstring,1;
        SET info_str,ctrl0_str;
        CALL show_info;
        SET ctrl,0;
        PLAY_SOUND ok_sound,1;
        SET ctrl_mode,0;
        }



