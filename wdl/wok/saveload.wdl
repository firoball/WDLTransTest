STRING saveerr_str,"SAVE ERROR";
STRING empty_str,"Empty Slot";
SKILL slot {TYPE LOCAL; VAL 1;}
//////////Spielstand speichern & laden//////////

ACTION save_game {
	IF_NEQUAL levelnr,90; SKIP 3;//falls man sich im Dorf befindet, kein Speichern
	SET newstring,1;
	SET info_str, nosave_str;
	END;
	CALL show_slots; 
        SET info_txt.STRING,save_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
        SET RESULT,0;
        SET info_txt.VISIBLE,0;
	SAVE "WoK0",slot;
        IF_BELOW RESULT,0;
                SKIP 1;
        END;
        SET newstring,1;
        SET info_str,saveerr_str;
        }

ACTION load_game {
	IF_EQUAL PANELS.10,title_pan;
		SET load_me,1;
	CALL show_slots;
        SET load_me,0;
	SET info_txt.STRING,load_str;
        SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	LOAD "WoK0",slot;
	SET info_txt.VISIBLE,NULL;
	IF_EQUAL slot,1;
		SET_STRING slot1_str,empty_str;
	IF_EQUAL slot,2;
		SET_STRING slot2_str,empty_str;
	IF_EQUAL slot,3;
		SET_STRING slot3_str,empty_str;
	IF_EQUAL slot,4;
		SET_STRING slot4_str,empty_str;
	IF_EQUAL slot,5;
		SET_STRING slot5_str,empty_str;
	IF_EQUAL slot,6;
		SET_STRING slot6_str,empty_str;
	IF_NEQUAL PANELS.10,title_pan;
		END;
	WAIT 1;
	CALL show_menu;
}

IF_LOAD set_clear;
ACTION set_clear {
	SET newstring,1;
	SET info_str,nix_str;	
	FADE_PAL nebel_pal,gamma;
	IF_EQUAL PANELS.10,NULL;BRANCH startlev;
	LOAD_INFO "WoK0",0;
}

//////////Levelwechsel//////////

ACTION change_level1 {
	SET levelnr,1;
	CALL changelev;
	}

ACTION change_level2 {
	SET levelnr,2;
	CALL changelev;
	}

ACTION change_level3 {
	SET levelnr,3;
	CALL changelev;
	}

ACTION change_level4 {
	SET levelnr,4;
	CALL changelev;
	}

ACTION enter_village {
	SET info_txt.STRING,load_str;
	SET info_txt.VISIBLE,1;
	SET village,1;
	CALL set_s_skills;
	WAIT 1;
	SET RESULT,0;
	SAVE_INFO "WoK0",0;
 	SAVE "WoK0",8;
	SET info_txt.VISIBLE,0;
	SET levelnr,90;
	MAP <village.wmp>;
	WAIT 1;
}

ACTION leave_village {
	SET info_txt.STRING,load_str;
	SET info_txt.VISIBLE,1;
	SET village,1;
	CALL set_s_skills;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	LOAD "WoK0",8;
	SET info_txt.VISIBLE,NULL;
	WAIT 1;
}

ACTION changelev {
	CALL reset_controls;
	FADE_PAL nebel_pal,0;
	SET info_txt.STRING,load_str;
	SET info_txt.VISIBLE,1;
	WAIT 1;
	SAVE_INFO "WoK0",0;
	IF_EQUAL levelnr,1;
		MAP <forest.wmp>;
	IF_EQUAL levelnr,2;
		MAP <forest2.wmp>;#<cave.wmp>;
	IF_EQUAL levelnr,3;
		MAP <forest3.wmp>;#<swamp.wmp>;
	IF_EQUAL levelnr,4;
		MAP <area.wmp>;
	}

ACTION startlev {
	IF (village==1) {
	CALL reset_s_skills;}
	LOAD_INFO "WoK0",0;
	SET BLUR_MODE,1;
	SET_ALL THERE.EACH_TICK,NULL;
	FADE_PAL nebel_pal,gamma;
	CALL stop_moving;
	SET last_reg,HERE;
	CALL set_moving;
	CALL set_controls;
	SET disp_txt.VISIBLE,1;
	SET LAYERS.4,NULL;
	IF_EQUAL q_item,0; SET LAYERS.5,qinv_ovr;
	IF_EQUAL a_item,0; SET LAYERS.7,ainv_ovr;
	IF_EQUAL LAYERS.1,spellbook_ovr;
		SET spell_txt.VISIBLE,1;
	IF_EQUAL LAYERS.2,character_ovr;
		SET char_txt.VISIBLE,1;
	IF_NEQUAL LAYERS.3,inventory_ovr; SKIP 2;
	SET inv_txt.VISIBLE,1;
	SET i_item_txt.VISIBLE,1;	

	IF_EQUAL levelnr,1;
	        CALL enter_forest;
	IF_EQUAL levelnr,2;
		CALL enter_forest;#cave;
	IF_EQUAL levelnr,3;
		CALL enter_forest;#swamp;
	IF_EQUAL levelnr,4;
		CALL enter_arena;
	IF_EQUAL levelnr,90;
		CALL enter_village2;
	SET info_txt.VISIBLE,0;
	SET newstring,1;
	SET info_str,nix_str;
#	IF_NEQUAL cur_wpn,0;
CALL update_weapon;
}

ACTION reset_s_skills {
	ADD PLAYER_ANGLE,PI;
	SET village,0;
	SET MP,MP_s;
	SET HP,HP_s;
	SET Magic_Arrow,Magic_Arrow_s;
	SET Nightvision,Nightvision_s;
	SET Fireball,Fireball_s;
	SET Fly,Fly_s;
	SET Shield,Shield_s;
	SET Lightning,Lightning_s;
	SET Repair,Repair_s;
	SET Explosion,Explosion_s;
	SET Town_Portal,Town_Portal_s;
	SET lvl,lvl_s;
	SET int,int_s;
	SET spd,spd_s;
	SET str,str_s;
	SET con,con_s;
	SET armor,armor_s;
	SET AC,AC_s;
	SET dmg,dmg_s;
	SET points,points_s;
	SET nextlvl,nextlvl_s;
	SET exp,exp_s;
	SET pts_left,pts_left_s;
	SET weight.MAX,weight_s.MAX;
	SET weight,weight_s;
SET free_item,free_item_s; 
SET cur_item,cur_item_s; 
SET new_amount,new_amount_s;
SET cur_weight,cur_weight_s;
SET new_weight, new_weight_s; 
SET i_amount,i_amount_s; 
SET i_weight,i_weight_s; 
SET sel_item,sel_item_s; 
SET tot_amount,tot_amount_s; 
SET q_amount,q_amount_s; 
SET a_amount,a_amount_s; 
SET cur_wpn,cur_wpn_s;
SET q_weight,q_weight_s;
SET a_weight,a_weight_s;

SET i_item1,i_item1_s; 
SET i_item2,i_item2_s; 
SET i_item3,i_item3_s; 
SET i_item4,i_item4_s; 
SET i_item5,i_item5_s; 
SET i_item6,i_item6_s; 
SET i_item7,i_item7_s; 
SET i_item8,i_item8_s;
SET i_item9,i_item9_s;
SET i_item10,i_item10_s;
SET i_item11,i_item11_s;
SET i_item12,i_item12_s;
SET i_item13,i_item13_s;
SET i_item14,i_item14_s;
SET i_item15,i_item15_s;
SET i_item16,i_item16_s;
SET i_item17,i_item17_s;
SET i_item18,i_item18_s;
SET i_item19,i_item19_s;
SET i_item20,i_item20_s;

SET h_item1,h_item1_s; 
SET h_item2,h_item2_s; 
SET h_item3,h_item3_s; 
SET h_item4,h_item4_s; 
SET h_item5,h_item5_s; 
SET a_item,a_item_s;
SET q_item,q_item_s; }

ACTION set_s_skills {
	SET MP_s,MP;
	SET HP_s,HP;
	SET Magic_Arrow_s,Magic_Arrow;
	SET Nightvision_s,Nightvision;
	SET Fireball_s,Fireball;
	SET Fly_s,Fly;
	SET Shield_s,Shield;
	SET Lightning_s,Lightning;
	SET Repair_s,Repair;
	SET Explosion_s,Explosion;
	SET Town_Portal_s,Town_Portal;
	SET lvl_s,lvl;
	SET int_s,int;
	SET spd_s,spd;
	SET str_s,str;
	SET con_s,con;
	SET armor_s,armor;
	SET AC_s,AC;
	SET dmg_s,dmg;
	SET points_s,points;
	SET nextlvl_s,nextlvl;
	SET exp_s,exp;
	SET pts_left_s,pts_left;
	SET weight_s.MAX,weight.MAX;
	SET weight_s,weight;
SET free_item_s,free_item; 
SET cur_item_s,cur_item; 
SET new_amount_s,new_amount;
SET cur_weight_s,cur_weight;
SET new_weight_s, new_weight; 
SET i_amount_s,i_amount; 
SET i_weight_s,i_weight; 
SET sel_item_s,sel_item; 
SET tot_amount_s,tot_amount; 
SET q_amount_s,q_amount; 
SET a_amount_s,a_amount; 
SET cur_wpn_s,cur_wpn;
SET q_weight_s,q_weight;
SET a_weight_s,a_weight;

SET i_item1_s,i_item1; 
SET i_item2_s,i_item2; 
SET i_item3_s,i_item3; 
SET i_item4_s,i_item4; 
SET i_item5_s,i_item5; 
SET i_item6_s,i_item6; 
SET i_item7_s,i_item7; 
SET i_item8_s,i_item8;
SET i_item9_s,i_item9;
SET i_item10_s,i_item10;
SET i_item11_s,i_item11;
SET i_item12_s,i_item12;
SET i_item13_s,i_item13;
SET i_item14_s,i_item14;
SET i_item15_s,i_item15;
SET i_item16_s,i_item16;
SET i_item17_s,i_item17;
SET i_item18_s,i_item18;
SET i_item19_s,i_item19;
SET i_item20_s,i_item20;

SET h_item1_s,h_item1; 
SET h_item2_s,h_item2; 
SET h_item3_s,h_item3; 
SET h_item4_s,h_item4; 
SET h_item5_s,h_item5; 
SET q_item_s,q_item; 
SET a_item_s,a_item; 
}
















































