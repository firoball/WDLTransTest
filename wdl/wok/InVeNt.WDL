//////////Inventory//////////

SOUND collect_snd, <collect.wav>;
SOUND use_snd, <invuse.wav>;
SOUND use2_snd, <invuse2.wav>;
SOUND select_snd, <invent.wav>;
STRING no_setitem_str,"i cannot carry anymore";

SYNONYM inv_item {TYPE OVERLAY;}

SKILL free_item {VAL 1; MAX 21;}
SKILL no_new_item {VAL 0;}
SKILL cur_item {VAL 0;}
SKILL new_amount {VAL 0;}
SKILL cur_weight {VAL 0;}
SKILL new_weight {VAL 0;}
SKILL ID {VAL 0;}
SKILL ID_ok {VAL 0;}
SKILL i_amount {VAL 0; MIN 0;}
SKILL i_weight {VAL 0;}
SKILL sel_item {VAL 1;}
SKILL tot_amount {VAL 0;}
SKILL no_set {VAl 0;}
SKILL q_weight {VAL 0;}
SKILL a_weight {VAL 0;}
SKILL cur_wpn {VAL 0;}
SKILL cur_amount {VAL 0;}
SKILL armAC {VAL 0;}
SKILL hk {VAL 0;}

SKILL i_item1 {VAL 0; MIN 0;}
SKILL i_item2 {VAL 0; MIN 0;}
SKILL i_item3 {VAL 0; MIN 0;}
SKILL i_item4 {VAL 0; MIN 0;}
SKILL i_item5 {VAL 0; MIN 0;}
SKILL i_item6 {VAL 0; MIN 0;}
SKILL i_item7 {VAL 0; MIN 0;}
SKILL i_item8 {VAL 0; MIN 0;}
SKILL i_item9 {VAL 0; MIN 0;}
SKILL i_item10 {VAL 0; MIN 0;}
SKILL i_item11 {VAL 0; MIN 0;}
SKILL i_item12 {VAL 0; MIN 0;}
SKILL i_item13 {VAL 0; MIN 0;}
SKILL i_item14 {VAL 0; MIN 0;}
SKILL i_item15 {VAL 0; MIN 0;}
SKILL i_item16 {VAL 0; MIN 0;}
SKILL i_item17 {VAL 0; MIN 0;}
SKILL i_item18 {VAL 0; MIN 0;}
SKILL i_item19 {VAL 0; MIN 0;}
SKILL i_item20 {VAL 0; MIN 0;}

SKILL h_item1 {VAL 0; MIN 0;}
SKILL h_item2 {VAL 0; MIN 0;}
SKILL h_item3 {VAL 0; MIN 0;}
SKILL h_item4 {VAL 0; MIN 0;}
SKILL h_item5 {VAL 0; MIN 0;}

SKILL i_itemx {VAL 0;}
SKILL q_item {VAL 0; MIN 0;}
SKILL a_item {VAL 0; MIN 0;}

//////////
OVLY hkey1_ovl <invfont.pcx>,4,0,4,7;
OVLY hkey2_ovl <invfont.pcx>,8,0,4,7;
OVLY hkey3_ovl <invfont.pcx>,12,0,4,7;
OVLY hkey4_ovl <invfont.pcx>,16,0,4,7;
OVLY hkey5_ovl <invfont.pcx>,20,0,4,7;
OVLY equip_ovl <e.pcx>,0,0,4,7;

OVERLAY hkey1_ovr {POS_X 6; POS_Y 142; OVLYS hkey1_ovl;}
OVERLAY hkey2_ovr {POS_X 6; POS_Y 142; OVLYS hkey2_ovl;}
OVERLAY hkey3_ovr {POS_X 6; POS_Y 142; OVLYS hkey3_ovl;}
OVERLAY hkey4_ovr {POS_X 6; POS_Y 142; OVLYS hkey4_ovl;}
OVERLAY hkey5_ovr {POS_X 6; POS_Y 142; OVLYS hkey5_ovl;}
OVERLAY equip_ovr {POS_X 34; POS_Y 142; OVLYS equip_ovl;}
//////////

OVLY inv0_ovl <invent.pcx>,0,0,25,38;
OVLY inv10050_ovl <invent.pcx>,25,0,25,38;
OVLY inv10100_ovl <invent.pcx>,50,0,25,38;
OVLY inv10150_ovl <invent.pcx>,75,0,25,38;
OVLY inv10200_ovl <invent.pcx>,100,0,25,38;
OVLY inv250_ovl <invent.pcx>,125,0,25,38;
OVLY inv300_ovl <invent.pcx>,150,0,25,38;
OVLY inv350_ovl <invent.pcx>,175,0,25,38;
OVLY inv400_ovl <invent.pcx>,200,0,25,38;
OVLY inv450_ovl <invent.pcx>,25,38,25,38;
OVLY inv500_ovl <invent.pcx>,75,38,25,38;
OVLY inv550_ovl <invent.pcx>,50,38,25,38;
OVLY inv600_ovl <invent.pcx>,0,38,25,38;
OVLY inv15050_ovl <invent.pcx>,100,38,25,38;

OVERLAY qinv_ovr {POS_X 83; POS_Y 353; OVLYS inv0_ovl;}
OVERLAY ainv_ovr {POS_X 210; POS_Y 353; OVLYS inv0_ovl;}
OVERLAY inv0_ovr {POS_X 9; POS_Y 142; OVLYS inv0_ovl;}
OVERLAY inv10050_ovr {POS_X 9; POS_Y 142; OVLYS inv10050_ovl;}
OVERLAY inv10100_ovr {POS_X 9; POS_Y 142; OVLYS inv10100_ovl;}
OVERLAY inv10150_ovr {POS_X 9; POS_Y 142; OVLYS inv10150_ovl;}
OVERLAY inv10200_ovr {POS_X 9; POS_Y 142; OVLYS inv10200_ovl;}
OVERLAY inv250_ovr {POS_X 9; POS_Y 142; OVLYS inv250_ovl;}
OVERLAY inv300_ovr {POS_X 9; POS_Y 142; OVLYS inv300_ovl;}
OVERLAY inv350_ovr {POS_X 9; POS_Y 142; OVLYS inv350_ovl;}
OVERLAY inv400_ovr {POS_X 9; POS_Y 142; OVLYS inv400_ovl;}
OVERLAY inv450_ovr {POS_X 9; POS_Y 142; OVLYS inv450_ovl;}
OVERLAY inv500_ovr {POS_X 9; POS_Y 142; OVLYS inv500_ovl;}
OVERLAY inv550_ovr {POS_X 9; POS_Y 142; OVLYS inv550_ovl;}
OVERLAY inv600_ovr {POS_X 9; POS_Y 142; OVLYS inv600_ovl;}
OVERLAY inv15050_ovr {POS_X 9; POS_Y 142; OVLYS inv15050_ovl;}

BMAP inv_map <inv.pcx>,30,0,60,248;
PANEL inv_pan {
	POS_X 30;
	POS_Y 78;
	FLAGS REFRESH;
	PAN_MAP inv_map;
	DIGITS 0,42,2,small_font,1,sel_item;
	DIGITS 0,102,2,inv_font,1,cur_amount;
	DIGITS -20,102,3,inv_font,1,cur_weight;
	DIGITS 35,222,4,small_font,1,weight.MAX;
	DIGITS 5,222,4,small_font,1,weight;}

//Rucksack anzeigen/verbergen

ACTION show_inventory {
	PLAY_SOUND menu_snd,1;
	IF_EQUAL LAYERS.3,inventory_ovr;
		GOTO no_inventory;
	IF_EQUAL LAYERS.1,spellbook_ovr;//falls sichtbar, Zauberbuch schliessen
		CALL show_spells;
	IF_EQUAL LAYERS.2,character_ovr;//falls sichtbar, Charakterblatt schliessen
		CALL show_character;
	SET LAYERS.3,inventory_ovr;
	SET inv_txt.VISIBLE,1;
	SET i_item_txt.VISIBLE,1;
	SET PANELS.4,inv_pan;
	CALL update_inv;
	SET LAYERS.6,inv_item;
	SET IF_INS, inv_up;
	SET IF_DEL, inv_down;
	SET IF_HOME, inv_use;
	SET EACH_TICK.8,hotkey_setup;
	END;
	
no_inventory:
	SET hkey1_ovr.VISIBLE,0;
	SET hkey2_ovr.VISIBLE,0;
	SET hkey3_ovr.VISIBLE,0;
	SET hkey4_ovr.VISIBLE,0;
	SET hkey5_ovr.VISIBLE,0;
	SET equip_ovr.VISIBLE,0;
	SET IF_INS,NULL;
	SET IF_DEL,NULL;
	SET IF_HOME,NULL;
	SET EACH_TICK.8,NULL;
	SET LAYERS.3,NULL;
	SET inv_txt.VISIBLE,0;
	SET i_item_txt.VISIBLE,0;
	SET PANELS.4,NULL;
	SET LAYERS.6,NULL;
}

//Rucksack updaten

ACTION update_inv {
	IF_EQUAL sel_item,free_item;
		SET sel_item,1;
	IF_EQUAL sel_item,1;
		CALL set_ID1;
	IF_EQUAL sel_item,2;
		CALL set_ID2;
	IF_EQUAL sel_item,3;
		CALL set_ID3;
	IF_EQUAL sel_item,4;
		CALL set_ID4;
	IF_EQUAL sel_item,5;
		CALL set_ID5;
	IF_EQUAL sel_item,6;
		CALL set_ID6;
	IF_EQUAL sel_item,7;
		CALL set_ID7;
	IF_EQUAL sel_item,8;
		CALL set_ID8;
	IF_EQUAL sel_item,9;
		CALL set_ID9;
	IF_EQUAL sel_item,10;
		CALL set_ID10;
	IF_EQUAL sel_item,11;
		CALL set_ID11;
	IF_EQUAL sel_item,12;
		CALL set_ID12;
	IF_EQUAL sel_item,13;
		CALL set_ID13;
	IF_EQUAL sel_item,14;
		CALL set_ID14;
	IF_EQUAL sel_item,15;
		CALL set_ID15;
	IF_EQUAL sel_item,16;
		CALL set_ID16;
	IF_EQUAL sel_item,17;
		CALL set_ID17;
	IF_EQUAL sel_item,18;
		CALL set_ID18;
	IF_EQUAL sel_item,19;
		CALL set_ID19;
	IF_EQUAL sel_item,20;
		CALL set_ID20;
	SET cur_amount,i_amount;
	SET LAYERS.6,inv_item;
	SET inv_item.POS_X,9;
	SET inv_item.POS_Y,142;
IF (sel_item==h_item1) {SET hkey1_ovr.VISIBLE,1;} ELSE {SET hkey1_ovr.VISIBLE,0;}
IF (sel_item==h_item2) {SET hkey2_ovr.VISIBLE,1;} ELSE {SET hkey2_ovr.VISIBLE,0;}
IF (sel_item==h_item3) {SET hkey3_ovr.VISIBLE,1;} ELSE {SET hkey3_ovr.VISIBLE,0;}
IF (sel_item==h_item4) {SET hkey4_ovr.VISIBLE,1;} ELSE {SET hkey4_ovr.VISIBLE,0;}
IF (sel_item==h_item5) {SET hkey5_ovr.VISIBLE,1;} ELSE {SET hkey5_ovr.VISIBLE,0;}
IF (sel_item==cur_wpn) {SET equip_ovr.VISIBLE,1;} ELSE {SET equip_ovr.VISIBLE,0;}
}

//Auswählen des Gegenstandes

ACTION inv_up {
#	PLAY_SOUND select_snd,1;
	ADD sel_item,-1;
	IF (sel_item<1) {IF (free_item>1) {RULE sel_item=free_item-1;}
		ELSE {SET sel_item,1; END;}}
	PLAY_SOUND select_snd,1;
	BRANCH update_inv;
}

ACTION inv_down {
#	PLAY_SOUND select_snd,1;
	ADD sel_item,1;
	IF (sel_item>=free_item) {IF (free_item==1){SET sel_item,1; END;}
		ELSE {SET sel_item,1;}}
	PLAY_SOUND select_snd,1;
	IF_ABOVE sel_item,20;
		SET sel_item,1;
	BRANCH update_inv;
}

//Und Tschüssi...weg mit dem Gegenstand!!!

ACTION drop_item {
	IF_NEQUAL LAYERS.3,inventory_ovr; BRANCH drop_qitem;
	CALL update_inv;
	IF_EQUAL sel_item,1; 
	SUB i_item1,1;//ausgewähltes Item ermitteln und 1 abziehen
	IF_EQUAL sel_item,2; 
	SUB i_item2,1;
	IF_EQUAL sel_item,3; 
	SUB i_item3,1;
	IF_EQUAL sel_item,4; 
	SUB i_item4,1;
	IF_EQUAL sel_item,5; 
	SUB i_item5,1;
	IF_EQUAL sel_item,6; 
	SUB i_item6,1;
	IF_EQUAL sel_item,7; 
	SUB i_item7,1;
	IF_EQUAL sel_item,8; 
	SUB i_item8,1;
	IF_EQUAL sel_item,9; 
	SUB i_item9,1;
	IF_EQUAL sel_item,10; 
	SUB i_item10,1;
	IF_EQUAL sel_item,11; 
	SUB i_item11,1;
	IF_EQUAL sel_item,12; 
	SUB i_item12,1;
	IF_EQUAL sel_item,13; 
	SUB i_item13,1;
	IF_EQUAL sel_item,14; 
	SUB i_item14,1;
	IF_EQUAL sel_item,15;
	SUB i_item15,1;
	IF_EQUAL sel_item,16; 
	SUB i_item16,1;
	IF_EQUAL sel_item,17; 
	SUB i_item17,1;
	IF_EQUAL sel_item,18; 
	SUB i_item18,1;
	IF_EQUAL sel_item,19; 
	SUB i_item19,1;
	IF_EQUAL sel_item,20; 
	SUB i_item20,1;
	IF_BELOW ID,50; END; //Falls Inventarplatz schon leer war, Abbruch
	CALL update_inv;
	RULE weight=weight-cur_weight;//Auch das Gewicht muß abgezogen werden
	IF_ABOVE i_amount,0; END;//wenn noch weitere Items vorhanden sind, fertig 
	CALL check_hotkeys;
	CALL replacer; //ansonsten leeren Platz mit letztem Item füllen
	IF_EQUAL sel_item,1; SET i_item1,i_itemx;//nochmal gewähltes Item ermitteln
	IF_EQUAL sel_item,2; SET i_item2,i_itemx;//und leeren Platz füllen
	IF_EQUAL sel_item,3; SET i_item3,i_itemx;
	IF_EQUAL sel_item,4; SET i_item4,i_itemx;
	IF_EQUAL sel_item,5; SET i_item5,i_itemx;
	IF_EQUAL sel_item,6; SET i_item6,i_itemx;
	IF_EQUAL sel_item,7; SET i_item7,i_itemx;
	IF_EQUAL sel_item,8; SET i_item8,i_itemx;
	IF_EQUAL sel_item,9; SET i_item9,i_itemx;
	IF_EQUAL sel_item,10; SET i_item10,i_itemx;
	IF_EQUAL sel_item,11; SET i_item11,i_itemx;
	IF_EQUAL sel_item,12; SET i_item12,i_itemx;
	IF_EQUAL sel_item,13; SET i_item13,i_itemx;
	IF_EQUAL sel_item,14; SET i_item14,i_itemx;
	IF_EQUAL sel_item,15; SET i_item15,i_itemx;
	IF_EQUAL sel_item,16; SET i_item16,i_itemx;
	IF_EQUAL sel_item,17; SET i_item17,i_itemx;
	IF_EQUAL sel_item,18; SET i_item18,i_itemx;
	IF_EQUAL sel_item,19; SET i_item19,i_itemx;
	IF_EQUAL sel_item,20; SET i_item20,i_itemx;
	CALL update_inv;}

//Dann für das Quick-Inventory...

ACTION drop_qitem {
	IF_BELOW q_item,50; END; //schon leer? Dann beenden
	SUB q_amount,1;
	SUB q_item,1;
	SUB weight,q_weight;
	IF_ABOVE q_amount,0; END;
	SET q_weight,0;
	SET q_item,0;
	SET LAYERS.5,qinv_ovr;
}
 
//Hotkeys und aktuelle Waffe überprüfen, wenn Gegenstand weggeworfen wird

ACTION check_hotkeys {
IF (sel_item==cur_wpn) {SET weapon_ovr,fist0_ovr; SET weapon_atk,fist_punch; SET weapon_hgt,115;
SET maxdmg,2; SET extradmg,0;CALL set_weapon; SET cur_wpn,0;}
IF (sel_item==h_item1) {SET h_item1,0;}
IF (sel_item==h_item2) {SET h_item2,0;}
IF (sel_item==h_item3) {SET h_item3,0;}
IF (sel_item==h_item4) {SET h_item4,0;}
IF (sel_item==h_item5) {SET h_item5,0;}
}
	
//Falls Gegenstand weggeworfen wurde, Skills neu setzen
ACTION check_hotkeys2 {
IF ((free_item-1)==cur_wpn) {SET cur_wpn,sel_item;}
IF ((free_item-1)==h_item1) {SET h_item1,sel_item;}
IF ((free_item-1)==h_item2) {SET h_item2,sel_item;}
IF ((free_item-1)==h_item3) {SET h_item3,sel_item;}
IF ((free_item-1)==h_item4) {SET h_item4,sel_item;}
IF ((free_item-1)==h_item5) {SET h_item5,sel_item;}
}
//ID+Anzahl in entsprechendem Hotkey-Skill speichern

ACTION hotkey_setup {
IF_BELOW KEY_ALT,1; END; //[ALT] muss beim Setup gedrückt sein
CALL update_inv;
IF (KEY_6==1)&&(h_item1==sel_item) {SET h_item1,0; END;}
IF (KEY_6==1)&&(h_item2==sel_item) {SET h_item2,0; END;}
IF (KEY_6==1)&&(h_item3==sel_item) {SET h_item3,0; END;}
IF (KEY_6==1)&&(h_item4==sel_item) {SET h_item4,0; END;}
IF (KEY_6==1)&&(h_item5==sel_item) {SET h_item5,0; END;}

IF_EQUAL h_item1,sel_item; END;//Jedes Item kann nur einen Hotkey haben
IF_EQUAL h_item2,sel_item; END;
IF_EQUAL h_item3,sel_item; END;
IF_EQUAL h_item4,sel_item; END;
IF_EQUAL h_item5,sel_item; END;

IF (KEY_1==1)&&(ID<15000)&&(ID>10000) {SET h_item1,sel_item;}
IF (KEY_2==1)&&(ID<15000)&&(ID>10000) {SET h_item2,sel_item;}
IF (KEY_3==1)&&(ID<15000)&&(ID>10000) {SET h_item3,sel_item;}
IF (KEY_4==1)&&(ID<15000)&&(ID>10000) {SET h_item4,sel_item;}
IF (KEY_5==1)&&(ID<15000)&&(ID>10000) {SET h_item5,sel_item;}
}
	

ACTION hotkey_use {
IF_ABOVE KEY_ALT,0; END;//Wenn [ALT] gedrückt ist, Hotkeys deaktivieren
IF (KEY_1==1) {IF ((h_item1!=0)&&(h_item1!=cur_wpn)){SET i_itemx,h_item1;GOTO update;}}
IF (KEY_2==1) {IF ((h_item2!=0)&&(h_item2!=cur_wpn)){SET i_itemx,h_item2;GOTO update;}}
IF (KEY_3==1) {IF ((h_item3!=0)&&(h_item3!=cur_wpn)){SET i_itemx,h_item3;GOTO update;}}
IF (KEY_4==1) {IF ((h_item4!=0)&&(h_item4!=cur_wpn)){SET i_itemx,h_item4;GOTO update;}}
IF (KEY_5==1) {IF ((h_item5!=0)&&(h_item5!=cur_wpn)){SET i_itemx,h_item5;GOTO update;}}
IF (KEY_6==1) {IF (cur_wpn!=0) {SET i_itemx,55; GOTO update;}}
END;
update:
SET no_set,1;
CALL updater;//Inventarplatz ermitteln
}

//Überprüfen ob Platz im Rucksack ist. Wenn Ja, Item plazieren

ACTION collect_item {
	SET tot_amount,0;
#	IF_EQUAL free_item,free_item.MAX;
#		END;
	SET cur_item,MY.SKILL3;
	SET new_amount,1;
	SET ID,cur_item;
	CALL check_ID2;
	SET new_weight,cur_weight;
	RULE MY.SKILL5=weight.MAX-(weight+new_weight*new_amount);
	IF_ABOVE MY.SKILL5,0;
		SKIP 5;
	SET newstring,1;
	SET info_str,no_setitem_str;
	IF_EQUAL LAYERS.3,inventory_ovr;
	CALL update_inv;
	END;
#	SET MY.INVISIBLE,1;
#	PLAY_SOUND collect_snd,0.3;
	CALL inv_search;
	IF_EQUAL no_new_item,1;
		GOTO no_new_item;
	IF_EQUAL free_item,free_item.MAX;
		END;
	IF_NEQUAL free_item,1;
		SKIP 1;
	RULE i_item1=cur_item+new_amount;
	IF_NEQUAL free_item,2;
		SKIP 1;
	RULE i_item2=cur_item+new_amount;
	IF_NEQUAL free_item,3;
		SKIP 1;
	RULE i_item3=cur_item+new_amount;
	IF_NEQUAL free_item,4;
		SKIP 1;
	RULE i_item4=cur_item+new_amount;
	IF_NEQUAL free_item,5;
		SKIP 1;
	RULE i_item5=cur_item+new_amount;
	IF_NEQUAL free_item,6;
		SKIP 1;
	RULE i_item6=cur_item+new_amount;
	IF_NEQUAL free_item,7;
		SKIP 1;
	RULE i_item7=cur_item+new_amount;
	IF_NEQUAL free_item,8;
		SKIP 1;
	RULE i_item8=cur_item+new_amount;
	IF_NEQUAL free_item,9;
		SKIP 1;
	RULE i_item9=cur_item+new_amount;
	IF_NEQUAL free_item,10;
		SKIP 1;
	RULE i_item10=cur_item+new_amount;
	IF_NEQUAL free_item,11;
		SKIP 1;
	RULE i_item11=cur_item+new_amount;
	IF_NEQUAL free_item,12;
		SKIP 1;
	RULE i_item12=cur_item+new_amount;
	IF_NEQUAL free_item,13;
		SKIP 1;
	RULE i_item13=cur_item+new_amount;
	IF_NEQUAL free_item,14;
		SKIP 1;
	RULE i_item14=cur_item+new_amount;
	IF_NEQUAL free_item,15;
		SKIP 1;
	RULE i_item15=cur_item+new_amount;
	IF_NEQUAL free_item,16;
		SKIP 1;
	RULE i_item16=cur_item+new_amount;
	IF_NEQUAL free_item,17;
		SKIP 1;
	RULE i_item17=cur_item+new_amount;
	IF_NEQUAL free_item,18;
		SKIP 1;
	RULE i_item18=cur_item+new_amount;
	IF_NEQUAL free_item,19;
		SKIP 1;
	RULE i_item19=cur_item+new_amount;
	IF_NEQUAL free_item,20;
		SKIP 1;
	RULE i_item20=cur_item+new_amount;
	ADD free_item,1;
no_new_item:
	SET no_new_item,0;
	IF (tot_amount>20) {SET newstring,1;SET info_str,no_setitem_str;GOTO update_inv;}
	SET MY.INVISIBLE,1;
	PLAY_SOUND collect_snd,0.3;
	RULE weight=weight+new_amount*new_weight;
update_inv:
	IF_EQUAL LAYERS.3,inventory_ovr;
	CALL update_inv;
}

//Prüfen, ob das gleiche Item bereits vorhanden ist. Wenn ja, Anzahl um 1 erhöhen

ACTION inv_search {
	CALL set_ID1;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item1,new_amount;
	SET no_new_item,1;

	CALL set_ID2;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item2,new_amount;
	SET no_new_item,1;

	CALL set_ID3;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item3,new_amount;
	SET no_new_item,1;

	CALL set_ID4;
	IF_NEQUAL cur_item,ID;
		SKIP 5;	
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item4,new_amount;
	SET no_new_item,1;

	CALL set_ID5;
	IF_NEQUAL cur_item,ID;
		SKIP 5;	
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item5,new_amount;
	SET no_new_item,1;

	CALL set_ID6;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item6,new_amount;
	SET no_new_item,1;

	CALL set_ID7;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item7,new_amount;
	SET no_new_item,1;

	CALL set_ID8;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item8,new_amount;
	SET no_new_item,1;

	CALL set_ID9;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item9,new_amount;
	SET no_new_item,1;

	CALL set_ID10;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item10,new_amount;
	SET no_new_item,1;

	CALL set_ID11;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item11,new_amount;
	SET no_new_item,1;

	CALL set_ID12;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item12,new_amount;
	SET no_new_item,1;

	CALL set_ID13;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item13,new_amount;
	SET no_new_item,1;

	CALL set_ID14;
	IF_NEQUAL cur_item,ID;
		SKIP 5;	
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item14,new_amount;
	SET no_new_item,1;

	CALL set_ID15;
	IF_NEQUAL cur_item,ID;
		SKIP 5;	
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item15,new_amount;
	SET no_new_item,1;

	CALL set_ID16;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item16,new_amount;
	SET no_new_item,1;

	CALL set_ID17;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item17,new_amount;
	SET no_new_item,1;

	CALL set_ID18;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item18,new_amount;
	SET no_new_item,1;

	CALL set_ID19;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item19,new_amount;
	SET no_new_item,1;

	CALL set_ID20;
	IF_NEQUAL cur_item,ID;
		SKIP 5;
	RULE tot_amount=i_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-i_amount;
	ADD i_item20,new_amount;
	SET no_new_item,1;

	RULE ID=q_item-q_amount;
	IF_NEQUAL cur_item,ID;
		SKIP 6;
	RULE tot_amount=q_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-q_amount;
	ADD q_item,new_amount;
	ADD q_amount,new_amount;
	SET no_new_item,1;
	END;	

	RULE ID=a_item-a_amount;
	IF_NEQUAL cur_item,ID;
		SKIP 6;
	RULE tot_amount=a_amount+new_amount;
	IF_ABOVE tot_amount,20; RULE new_amount=20-a_amount;
	ADD a_item,new_amount;
	ADD a_amount,new_amount;
	SET no_new_item,1;
	END;	

}

//Gewicht und Informationen anzeigen

ACTION check_ID2 {
	IF_EQUAL no_set,1; END;
	IF_NEQUAL ID,0; SKIP 4; 
	SET inv_item,inv0_ovr; SET cur_weight,0; SET i_item_txt.STRING,nix_str; SET price,0;
	IF_NEQUAL ID,10050; SKIP 4;
	SET inv_item,inv10050_ovr; SET cur_weight,14; SET i_item_txt.STRING,str_10050; SET price,99;
	IF_NEQUAL ID,10100; SKIP 4;
	SET inv_item,inv10100_ovr; SET cur_weight,7; SET i_item_txt.STRING,str_10100; SET price,90;
	IF_NEQUAL ID,10150; SKIP 4;
	SET inv_item,inv10150_ovr; SET cur_weight,11; SET i_item_txt.STRING,str_10150; SET price,80;
	IF_NEQUAL ID,10200; SKIP 4;
	SET inv_item,inv10200_ovr; SET cur_weight,3; SET i_item_txt.STRING,str_10200; SET price,70;
	IF_NEQUAL ID,10250; SKIP 4;
	SET inv_item,inv10050_ovr; SET cur_weight,17; SET i_item_txt.STRING,str_10050; SET price,26;
	IF_NEQUAL ID,250; SKIP 4;
	SET inv_item,inv250_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_250; SET price,10;
	IF_NEQUAL ID,300; SKIP 4;
	SET inv_item,inv300_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_300; SET price,15;
	IF_NEQUAL ID,350; SKIP 4;
	SET inv_item,inv350_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_350; SET price,20;
	IF_NEQUAL ID,400; SKIP 4;
	SET inv_item,inv400_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_400; SET price,30;
	IF_NEQUAL ID,450; SKIP 4;
	SET inv_item,inv450_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_450; SET price,45;
	IF_NEQUAL ID,500; SKIP 4;
	SET inv_item,inv500_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_500; SET price,60;
	IF_NEQUAL ID,550; SKIP 4;
	SET inv_item,inv550_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_550; SET price,67;
	IF_NEQUAL ID,600; SKIP 4;
	SET inv_item,inv600_ovr; SET cur_weight,1; SET i_item_txt.STRING,str_600; SET price,51;
	IF_NEQUAL ID,15050; SKIP 5;
	SET inv_item,inv15050_ovr; SET cur_weight,54; SET i_item_txt.STRING,str_15050; SET armAC,5; SET price,150;
}

//ID überprüfen und dann auswerten, ob Item equipped wird oder ins Quick-Inventory kommt

ACTION inv_use {
	IF_EQUAL no_new_item,1; GOTO no_backpack;//falls nichts am Rucksack selbst verändert wurde
	IF_EQUAL LAYERS.3,inventory_ovr; CALL update_inv;
	IF (sel_item==cur_wpn) {END;}
no_backpack:
	IF (ID<10050 && ID>40) {SET no_new_item,0; BRANCH set_qinv; }
	IF (ID>15000) {SET no_new_item,0; BRANCH set_ainv; }
	IF (ID<5) {SET no_new_item,0;END;}
	IF_EQUAL ID,5;GOTO fist_yes;
	IF (levelnr==90) {SET newstring,1; SET info_str,noweapon_str;END;}
fist_yes:
	PLAY_SOUND use_snd,0.8;
	IF_NEQUAL ID,5; SKIP 5; 
		SET weapon_ovr,fist0_ovr; SET weapon_atk,fist_punch; SET weapon_hgt,115;
		SET maxdmg,2;SET extradmg,0;
	IF_NEQUAL ID,10050; SKIP 5; 
		SET weapon_ovr,axe0_ovr; SET weapon_atk,axe_swing; SET weapon_hgt,5;
		SET maxdmg,10;SET extradmg,0;
	IF_NEQUAL ID,10100; SKIP 5; 
		SET weapon_ovr,sword0_ovr; SET weapon_atk,sword_swing; SET weapon_hgt,0;
		SET maxdmg,6;SET extradmg,0;
	IF_NEQUAL ID,10150; SKIP 5; 
		SET weapon_ovr,club0_ovr; SET weapon_atk,club_swing; SET weapon_hgt,0;
		SET maxdmg,8;SET extradmg,0;
	IF_NEQUAL ID,10200; SKIP 5; 
		SET weapon_ovr,staff0_ovr; SET weapon_atk,staff_swing; SET weapon_hgt,115;
		SET maxdmg,4;SET extradmg,0;
	IF_NEQUAL ID,10250; SKIP 5; 
		SET weapon_ovr,hammer0_ovr; SET weapon_atk,hammer_swing; SET weapon_hgt,5;
		SET maxdmg,5;SET extradmg,0;
	BRANCH set_weapon;
}

//Waffen-Overlay setzen

ACTION set_weapon {
	SET hk,0;
	SET cur_wpn,sel_item;
	IF_EQUAL no_new_item,1; SET cur_wpn,i_itemx;
	SET no_new_item,0;
	IF_EQUAL ID,5; SET cur_wpn,0;
	IF_EQUAL ID,0; END;
IF_NEQUAL EACH_TICK.3,NULL;GOTO no_weapon;
IF_NEQUAL KEY_CTRL,0; GOTO no_weapon;
IF_NEQUAL MOUSE_LEFT,0; GOTO no_weapon; 
IF_EQUAL LAYERS.4,axe0_ovr; SET EACH_TICK.4,axe_un;
IF_EQUAL LAYERS.4,club0_ovr; SET EACH_TICK.4,club_un;
IF_EQUAL LAYERS.4,sword0_ovr; SET EACH_TICK.4,sword_un;
IF_EQUAL LAYERS.4,staff0_ovr; SET EACH_TICK.4,staff_un;
IF_EQUAL LAYERS.4,fist0_ovr; SET EACH_TICK.4,fist_un;
IF_EQUAL LAYERS.4,hammer0_ovr; SET EACH_TICK.4,hammer_un;
IF_EQUAL LAYERS.4,NULL; SET LAYERS.4,weapon_ovr;

	SET IF_CTRL, attack;
	SET IF_LEFT, attack;
no_weapon:
	IF_NEQUAL LAYERS.3,inventory_ovr; END;
	IF (sel_item==cur_wpn) {SET equip_ovr.VISIBLE,1;} ELSE {SET equip_ovr.VISIBLE,0;}
}

//Gegenstand im Quick-Inventory plazieren durch Druck auf [HOME]

ACTION unequip_qinv {
	IF_BELOW q_item, 50; END;
	IF_ABOVE free_item,20; END;
	IF_NEQUAL LAYERS.8,conversation_ovr; PLAY_SOUND use_snd,0.8;
	SET i_itemx,q_item;
	SET qinv_ovr.POS_X,83;
	SET qinv_ovr.POS_Y,353;
	SET LAYERS.5,qinv_ovr;
	IF_EQUAL free_item,1; SET i_item1,q_item;
	IF_EQUAL free_item,2; SET i_item2,q_item;
	IF_EQUAL free_item,3; SET i_item3,q_item;
	IF_EQUAL free_item,4; SET i_item4,q_item;
	IF_EQUAL free_item,5; SET i_item5,q_item;
	IF_EQUAL free_item,6; SET i_item6,q_item;
	IF_EQUAL free_item,7; SET i_item7,q_item;
	IF_EQUAL free_item,8; SET i_item8,q_item;
	IF_EQUAL free_item,9; SET i_item9,q_item;
	IF_EQUAL free_item,10; SET i_item10,q_item;
	IF_EQUAL free_item,11; SET i_item11,q_item;
	IF_EQUAL free_item,12; SET i_item12,q_item;
	IF_EQUAL free_item,13; SET i_item13,q_item;
	IF_EQUAL free_item,14; SET i_item14,q_item;
	IF_EQUAL free_item,15; SET i_item15,q_item;
	IF_EQUAL free_item,16; SET i_item16,q_item;
	IF_EQUAL free_item,17; SET i_item17,q_item;
	IF_EQUAL free_item,18; SET i_item18,q_item;
	IF_EQUAL free_item,19; SET i_item19,q_item;
	IF_EQUAL free_item,20; SET i_item20,q_item;
	ADD free_item,1;
	RULE q_item=0;
	RULE q_amount=0;
	RULE q_weight=0;
	IF_EQUAL LAYERS.3,inventory_ovr; CALL update_inv;
}

ACTION set_qinv {
	IF_EQUAL hk,0; SKIP 2; SET hk,0; END;
	PLAY_SOUND use_snd,0.8;
	SET i_itemx,q_item;
	RULE q_item=i_amount+ID;//q_item=Anzahl+ID
	RULE q_amount=i_amount;//q_amount=Anzahl
	RULE q_weight=cur_weight;//q_weight=Einzelgewicht
	SET inv_item.POS_X,83;
	SET inv_item.POS_Y,353;
	SET LAYERS.5,inv_item;
	IF_ABOVE i_itemx,49;
		GOTO replace;
	CALL replacer; //entstandene Lücke im Rucksack schließen, falls Q-Inv leer war
replace:
	IF_EQUAL q_item,i_item1; SET i_item1,i_itemx;
	IF_EQUAL q_item,i_item2; SET i_item2,i_itemx;
	IF_EQUAL q_item,i_item3; SET i_item3,i_itemx;
	IF_EQUAL q_item,i_item4; SET i_item4,i_itemx;
	IF_EQUAL q_item,i_item5; SET i_item5,i_itemx;
	IF_EQUAL q_item,i_item6; SET i_item6,i_itemx;
	IF_EQUAL q_item,i_item7; SET i_item7,i_itemx;
	IF_EQUAL q_item,i_item8; SET i_item8,i_itemx;
	IF_EQUAL q_item,i_item9; SET i_item9,i_itemx;
	IF_EQUAL q_item,i_item10; SET i_item10,i_itemx;
	IF_EQUAL q_item,i_item11; SET i_item11,i_itemx;
	IF_EQUAL q_item,i_item12; SET i_item12,i_itemx;
	IF_EQUAL q_item,i_item13; SET i_item13,i_itemx;
	IF_EQUAL q_item,i_item14; SET i_item14,i_itemx;
	IF_EQUAL q_item,i_item15; SET i_item15,i_itemx;
	IF_EQUAL q_item,i_item16; SET i_item16,i_itemx;
	IF_EQUAL q_item,i_item17; SET i_item17,i_itemx;
	IF_EQUAL q_item,i_item18; SET i_item18,i_itemx;
	IF_EQUAL q_item,i_item19; SET i_item19,i_itemx;
	IF_EQUAL q_item,i_item20; SET i_item20,i_itemx;
	CALL update_inv;
}

//Ruestung anlegen durch Druck auf [HOME]

ACTION unequip_ainv {
	IF_BELOW a_item, 15050; END;
	IF_ABOVE free_item,20; END;
	IF_NEQUAL LAYERS.8,conversation_ovr; PLAY_SOUND use_snd,0.8;
	SET i_itemx,a_item;
	SET ainv_ovr.POS_X,210;
	SET ainv_ovr.POS_Y,353;
	SET LAYERS.7,ainv_ovr;
	IF_EQUAL free_item,1; SET i_item1,a_item;
	IF_EQUAL free_item,2; SET i_item2,a_item;
	IF_EQUAL free_item,3; SET i_item3,a_item;
	IF_EQUAL free_item,4; SET i_item4,a_item;
	IF_EQUAL free_item,5; SET i_item5,a_item;
	IF_EQUAL free_item,6; SET i_item6,a_item;
	IF_EQUAL free_item,7; SET i_item7,a_item;
	IF_EQUAL free_item,8; SET i_item8,a_item;
	IF_EQUAL free_item,9; SET i_item9,a_item;
	IF_EQUAL free_item,10; SET i_item10,a_item;
	IF_EQUAL free_item,11; SET i_item11,a_item;
	IF_EQUAL free_item,12; SET i_item12,a_item;
	IF_EQUAL free_item,13; SET i_item13,a_item;
	IF_EQUAL free_item,14; SET i_item14,a_item;
	IF_EQUAL free_item,15; SET i_item15,a_item;
	IF_EQUAL free_item,16; SET i_item16,a_item;
	IF_EQUAL free_item,17; SET i_item17,a_item;
	IF_EQUAL free_item,18; SET i_item18,a_item;
	IF_EQUAL free_item,19; SET i_item19,a_item;
	IF_EQUAL free_item,20; SET i_item20,a_item;
	ADD free_item,1;
	RULE a_item=0;
	RULE a_amount=0;
	RULE a_weight=0;
	RULE AC=0;
	IF_EQUAL LAYERS.3,inventory_ovr; CALL update_inv;
}
	
ACTION set_ainv {
	IF_EQUAL hk,0; SKIP 2; SET hk,0; END;
	PLAY_SOUND use_snd,0.8;
	SET i_itemx,a_item;
	RULE a_item=i_amount+ID;//a_item=Anzahl+ID
	RULE a_amount=i_amount;//a_amount=Anzahl
	RULE a_weight=cur_weight;//a_weight=Einzelgewicht
	RULE AC=armAC; #ADD armor,AC;
	SET inv_item.POS_X,210;
	SET inv_item.POS_Y,353;
	SET LAYERS.7,inv_item;
	IF_ABOVE i_itemx,49;
		GOTO replace;
	CALL replacer; //entstandene Lücke im Rucksack schließen, falls A-Inv leer war
replace:
IF_EQUAL a_item,i_item1; SET i_item1,i_itemx;
IF_EQUAL a_item,i_item2; SET i_item2,i_itemx;
IF_EQUAL a_item,i_item3; SET i_item3,i_itemx;
IF_EQUAL a_item,i_item4; SET i_item4,i_itemx;
IF_EQUAL a_item,i_item5; SET i_item5,i_itemx;
IF_EQUAL a_item,i_item6; SET i_item6,i_itemx;
IF_EQUAL a_item,i_item7; SET i_item7,i_itemx;
IF_EQUAL a_item,i_item8; SET i_item8,i_itemx;
IF_EQUAL a_item,i_item9; SET i_item9,i_itemx;
IF_EQUAL a_item,i_item10; SET i_item10,i_itemx;
IF_EQUAL a_item,i_item11; SET i_item11,i_itemx;
IF_EQUAL a_item,i_item12; SET i_item12,i_itemx;
IF_EQUAL a_item,i_item13; SET i_item13,i_itemx;
IF_EQUAL a_item,i_item14; SET i_item14,i_itemx;
IF_EQUAL a_item,i_item15; SET i_item15,i_itemx;
IF_EQUAL a_item,i_item16; SET i_item16,i_itemx;
IF_EQUAL a_item,i_item17; SET i_item17,i_itemx;
IF_EQUAL a_item,i_item18; SET i_item18,i_itemx;
IF_EQUAL a_item,i_item19; SET i_item19,i_itemx;
IF_EQUAL a_item,i_item20; SET i_item20,i_itemx;
	CALL update_inv;
}

//Leere Inventarplätze durch Items weiter hinten in der Liste ersetzen

ACTION replacer {
	IF_ABOVE sel_item,free_item; END;
	IF_EQUAL sel_item,free_item; END;
	CALL check_hotkeys2;
	IF_NEQUAL free_item,2; SKIP 2;
	SET i_itemx,i_item1; SET i_item1,0;
	IF_NEQUAL free_item,3; SKIP 2;
	SET i_itemx,i_item2; SET i_item2,0;
	IF_NEQUAL free_item,4; SKIP 2; 
	SET i_itemx,i_item3; SET i_item3,0;
	IF_NEQUAL free_item,5; SKIP 2;
	SET i_itemx,i_item4; SET i_item4,0;
	IF_NEQUAL free_item,6; SKIP 2;
	SET i_itemx,i_item5; SET i_item5,0;
	IF_NEQUAL free_item,7; SKIP 2;
	SET i_itemx,i_item6; SET i_item6,0;
	IF_NEQUAL free_item,8; SKIP 2;
	SET i_itemx,i_item7; SET i_item7,0;
	IF_NEQUAL free_item,9; SKIP 2;
	SET i_itemx,i_item8; SET i_item8,0;
	IF_NEQUAL free_item,10; SKIP 2;
	SET i_itemx,i_item9; SET i_item9,0;
	IF_NEQUAL free_item,11; SKIP 2;
	SET i_itemx,i_item10; SET i_item10,0;
	IF_NEQUAL free_item,12; SKIP 2;
	SET i_itemx,i_item11; SET i_item11,0;
	IF_NEQUAL free_item,13; SKIP 2;
	SET i_itemx,i_item12; SET i_item12,0;
	IF_NEQUAL free_item,14; SKIP 2; 
	SET i_itemx,i_item13; SET i_item13,0;
	IF_NEQUAL free_item,15; SKIP 2;
	SET i_itemx,i_item14; SET i_item14,0;
	IF_NEQUAL free_item,16; SKIP 2;
	SET i_itemx,i_item15; SET i_item15,0;
	IF_NEQUAL free_item,17; SKIP 2;
	SET i_itemx,i_item16; SET i_item16,0;
	IF_NEQUAL free_item,18; SKIP 2;
	SET i_itemx,i_item17; SET i_item17,0;
	IF_NEQUAL free_item,19; SKIP 2;
	SET i_itemx,i_item18; SET i_item18,0;
	IF_NEQUAL free_item,20; SKIP 2;
	SET i_itemx,i_item19; SET i_item19,0;
	IF_NEQUAL free_item,21; SKIP 2;
	SET i_itemx,i_item20; SET i_item20,0;
	ADD free_item,-1;
	IF_EQUAL free_item,sel_item; SET i_itemx,0;
}

//Routinen zum Ausrechnen von Anzahl und ID

ACTION set_ID1 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item1-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID2 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item2-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID3 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item3-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID4 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item4-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID5 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item5-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID6 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item6-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID7 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item7-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID8 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item8-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID9 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item9-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID10 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item10-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID11 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item11-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID12 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item12-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID13 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item13-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID14 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item14-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID15 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item15-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID16 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item16-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID17 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item17-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID18 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item18-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID19 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item19-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION set_ID20 {
	SET ID,0; SET ID_ok,0;
ID_loop:
	RULE i_amount=i_item20-ID;
	IF_BELOW i_amount,21;
		SET ID_ok,1;
	CALL check_ID2;
	IF_EQUAL ID_ok,1;
		END;
	ADD ID,50;
GOTO ID_loop;
}

ACTION update_weapon {
SET no_set,1;
SET i_itemx,cur_wpn; 
IF_EQUAL cur_wpn,0; SET i_itemx,55;
CALL updater;}

ACTION updater {
	IF_EQUAL i_itemx,0;
		SET ID,0;
	IF_EQUAL i_itemx,55;
		SET ID,5;
	IF_EQUAL i_itemx,1;
		CALL set_ID1;
	IF_EQUAL i_itemx,2;
		CALL set_ID2;
	IF_EQUAL i_itemx,3;
		CALL set_ID3;
	IF_EQUAL i_itemx,4;
		CALL set_ID4;
	IF_EQUAL i_itemx,5;
		CALL set_ID5;
	IF_EQUAL i_itemx,6;
		CALL set_ID6;
	IF_EQUAL i_itemx,7;
		CALL set_ID7;
	IF_EQUAL i_itemx,8;
		CALL set_ID8;
	IF_EQUAL i_itemx,9;
		CALL set_ID9;
	IF_EQUAL i_itemx,10;
		CALL set_ID10;
	IF_EQUAL i_itemx,11;
		CALL set_ID11;
	IF_EQUAL i_itemx,12;
		CALL set_ID12;
	IF_EQUAL i_itemx,13;
		CALL set_ID13;
	IF_EQUAL i_itemx,14;
		CALL set_ID14;
	IF_EQUAL i_itemx,15;
		CALL set_ID15;
	IF_EQUAL i_itemx,16;
		CALL set_ID16;
	IF_EQUAL i_itemx,17;
		CALL set_ID17;
	IF_EQUAL i_itemx,18;
		CALL set_ID18;
	IF_EQUAL i_itemx,19;
		CALL set_ID19;
	IF_EQUAL i_itemx,20;
		CALL set_ID20;
	SET no_set,0;
	SET no_new_item,1;
	SET hk,1;
	BRANCH inv_use; // Waffe anlegen
}

ACTION use_invitem {
	IF_NEQUAL LAYERS.3,inventory_ovr; GOTO q_inv;
	CALL update_inv;
	SET use,ID;
	SKIP 1;
q_inv:
	RULE use=q_item-q_amount;
IF (use<10050 && use>40) {PLAY_SOUND use2_snd,0.8; }
	PUSH 15;
	WAIT 1;
IF ( use==250) {RULE HP+=(RANDOM(4)+13); CALL drop_item;}
IF ( use==300)  {RULE MP+=(RANDOM(4)+13); CALL drop_item;}
IF ( use==450) {RULE str+=(RANDOM(1)+1); CALL drop_item;}
IF ( use==500)  {RULE spd+=(RANDOM(1)+1); CALL drop_item;}
IF ( use==550) {RULE con+=(RANDOM(1)+1); CALL drop_item;}
IF ( use==600)  {RULE int+=(RANDOM(1)+1); CALL drop_item;}
	SET use,0;
}

THING axe {
TEXTURE axe_tex;
SKILL3,10050;
DIST 5;
IF_NEAR collect_item;
FLAGS PASSABLE,SAVE;
}

THING sword {
TEXTURE sword_tex;
SKILL3,10100;
DIST 5;
IF_NEAR collect_item;
FLAGS PASSABLE,SAVE;
}

THING club {
TEXTURE club_tex;
SKILL3,10150;
DIST 5;
IF_NEAR collect_item;
FLAGS PASSABLE,SAVE;
}

THING staff {
TEXTURE black_tex;
SKILL2,1;
SKILL3,10200;
DIST 5;
IF_NEAR collect_item;
FLAGS PASSABLE,SAVE;
}


