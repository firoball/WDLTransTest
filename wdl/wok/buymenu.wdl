//////////Buymenu//////////

SKILL free_itemB {VAL 1; MAX 21;}
SKILL tempweight {}
SKILL tempprice {}

SKILL b_item1 {VAL 0; MIN 0;}
SKILL b_item2 {VAL 0; MIN 0;}
SKILL b_item3 {VAL 0; MIN 0;}
SKILL b_item4 {VAL 0; MIN 0;}
SKILL b_item5 {VAL 0; MIN 0;}
SKILL b_item6 {VAL 0; MIN 0;}
SKILL b_item7 {VAL 0; MIN 0;}
SKILL b_item8 {VAL 0; MIN 0;}
SKILL b_item9 {VAL 0; MIN 0;}
SKILL b_item10 {VAL 0; MIN 0;}
SKILL b_item11 {VAL 0; MIN 0;}
SKILL b_item12 {VAL 0; MIN 0;}
SKILL b_item13 {VAL 0; MIN 0;}
SKILL b_item14 {VAL 0; MIN 0;}
SKILL b_item15 {VAL 0; MIN 0;}
SKILL b_item16 {VAL 0; MIN 0;}
SKILL b_item17 {VAL 0; MIN 0;}
SKILL b_item18 {VAL 0; MIN 0;}
SKILL b_item19 {VAL 0; MIN 0;}
SKILL b_item20 {VAL 0; MIN 0;}

PANEL buy_pan {
	POS_X 30;
	POS_Y 78;
	FLAGS REFRESH;
	PAN_MAP inv_map;
	DIGITS -20,102,3,inv_font,1,cur_weight;
	DIGITS 3,222,5,small_font,2,price;
}

PANEL sell_pan {
	POS_X 30;
	POS_Y 78;
	FLAGS REFRESH;
	PAN_MAP inv_map;
	DIGITS 0,42,2,small_font,1,sel_item;
	DIGITS 0,102,2,inv_font,1,cur_amount;
	DIGITS -20,102,3,inv_font,1,cur_weight;
	DIGITS 3,222,5,small_font,1,price;
}

BMAP buymenu_map <buypanel.pcx>;
PANEL buyinfo_pan {
	POS_X 212;
	POS_Y 78;
	FLAGS REFRESH,TRANSPARENT;
	PAN_MAP buymenu_map;
	DIGITS 72,13,5,italicN_font,1,gold;
	DIGITS 78,28,4,italicN_font,1,weight.MAX;
	DIGITS 48,28,4,italicN_font,1,weight;
}

ACTION show_buymenu {
	PLAY_SOUND menu_snd,1;
	IF_EQUAL LAYERS.3,buymenu_ovr;
		GOTO no_buymenu;
	SET LAYERS.3,buymenu_ovr;
	SET buymenu_txt.VISIBLE,1;
	SET i_item_txt.VISIBLE,1;
	SET PANELS.4,buy_pan;
	CALL update_buymenu;
	SET LAYERS.6,inv_item;
	SET IF_MIDDLE, buymenu_up;
	SET IF_LEFT, buymenu_down;
	SET IF_CUU, buymenu_up;
	SET IF_CUD, buymenu_down;
	SET IF_INS, buymenu_up;
	SET IF_DEL, buymenu_down;
	SET IF_SPACE, buy_item;
	SET IF_ENTER, buy_item;
	SET IF_HOME, buy_item;
	SET IF_RIGHT, buy_item;
	SET IF_ESC,close_buy_shop;
	END;
	
no_buymenu:
	CALL unassign_shop;
	SET LAYERS.3,NULL;
	SET buymenu_txt.VISIBLE,0;
	SET i_item_txt.VISIBLE,0;
	SET PANELS.4,NULL;
	SET LAYERS.6,NULL;
}

ACTION update_buymenu {
	IF_EQUAL sel_item,1;
		SET ID,b_item1;
	IF_EQUAL sel_item,2;
		SET ID,b_item2;
	IF_EQUAL sel_item,3;
		SET ID,b_item3;
	IF_EQUAL sel_item,4;
		SET ID,b_item4;
	IF_EQUAL sel_item,5;
		SET ID,b_item5;
	IF_EQUAL sel_item,6;
		SET ID,b_item6;
	IF_EQUAL sel_item,7;
		SET ID,b_item7;
	IF_EQUAL sel_item,8;
		SET ID,b_item8;
	IF_EQUAL sel_item,9;
		SET ID,b_item9;
	IF_EQUAL sel_item,10;
		SET ID,b_item10;
	IF_EQUAL sel_item,11;
		SET ID,b_item11;
	IF_EQUAL sel_item,12;
		SET ID,b_item12;
	IF_EQUAL sel_item,13;
		SET ID,b_item13;
	IF_EQUAL sel_item,14;
		SET ID,b_item14;
	IF_EQUAL sel_item,15;
		SET ID,b_item15;
	IF_EQUAL sel_item,16;
		SET ID,b_item16;
	IF_EQUAL sel_item,17;
		SET ID,b_item17;
	IF_EQUAL sel_item,18;
		SET ID,b_item18;
	IF_EQUAL sel_item,19;
		SET ID,b_item19;
	IF_EQUAL sel_item,20;
		SET ID,b_item20;
	CALL check_ID2;
	SET LAYERS.6,inv_item;
}

ACTION buymenu_up {
	ADD sel_item,-1;
	IF (sel_item<1) {IF (free_itemB>1) {RULE sel_item=free_itemB-1;}
		ELSE {SET sel_item,1; END;}}
	PLAY_SOUND select_snd,1;
	BRANCH update_buymenu;
}

ACTION buymenu_down {
	ADD sel_item,1;
	IF (sel_item>=free_itemB) {IF (free_itemB==1){SET sel_item,1; END;}
		ELSE {SET sel_item,1;}}
	PLAY_SOUND select_snd,1;
	IF_ABOVE sel_item,20;
		SET sel_item,1;
	BRANCH update_buymenu;
}

ACTION check_buy_item {
	SET tot_amount,0;
	SET new_amount,1;
	SET cur_item,ID;
	CALL check_ID2;
	SET new_weight,cur_weight;
	SET tempprice,price;
	IF ((gold-tempprice*2)<0) {BRANCH buy_item_nogold;}
	RULE tempweight=weight.MAX-(weight+new_weight*new_amount);
	IF_ABOVE tempweight,0;
		SKIP 1;#5;
	BRANCH buy_item_weight;
	CALL inv_search;
	IF_EQUAL no_new_item,1;
		GOTO no_new_item;
	IF_EQUAL free_item,free_item.MAX;
		BRANCH buy_item_weight;
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
	IF (tot_amount>20) {BRANCH buy_item_weight;}
	RULE weight=weight+new_amount*new_weight;
RULE gold=gold-tempprice*2;
BRANCH buy_item_yes;
}

 
ACTION Wset_item {
SET b_item1,10200;	
SET b_item2,10050;	
SET b_item3,10100;	
SET b_item4,10150;	
SET b_item5,10250;	
SET free_itemB,6;
}

