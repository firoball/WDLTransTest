//////////////////////////////////////////////////////////////////////
//// Firoball's mouse-look and special diving actions, 04.08.1998 ////
//////////////////////////////////////////////////////////////////////

#This Actions have been optimized for the Move.WDL which came with the VRDEMO
#They also work with modified move-routines, but maybe you must change some numbers


//////////Mouse-Look//////////

#Insert a "CALL set_mouseview;"-command below the "start:"-label of your Move.WDL

SKILL mouse_mode {VAL 2;}
SKILL mousetilt_x {VAL 0;}
SKILL mousetilt_y {VAL 0;}

ACTION set_mouseview {
SET mousetilt_y,0;
SET mousetilt_x,0;	
ADDT mousetilt_y,MICKEY_Y;
ADDT mousetilt_x,MICKEY_X; 
RULE PLAYER_TILT=PLAYER_TILT+mousetilt_y/100;
RULE FORCE_ROT=FORCE_ROT-1*mousetilt_x/19;    
}


//////////Diving in the direction you look//////////

#Insert an "IF_EQUAL moving,3; CALL set_diveview;"-command and an
#"IF_EQUAL moving,2; CALL set_swimview;"-command below the 
#"start:"-label of your Move.WDL

ACTION set_diveview {
IF_EQUAL MOUSE_MIDDLE,1; #only if MOUSE_MIDDLE is used for walking
	SKIP 1;
IF_ABOVE FORCE_AHEAD,0;
	RULE FORCE_UP=FORCE_UP-PLAYER_TILT*3;
IF_BELOW FORCE_AHEAD,0;
	RULE FORCE_UP=FORCE_UP+PLAYER_TILT*3;
}

ACTION set_swimview {
IF_EQUAL MOUSE_MIDDLE,1; #only if MOUSE_MIDDLE is used for walking
	SKIP 3;
IF_ABOVE FORCE_AHEAD,0;
	SKIP 1;
END;	
IF_ABOVE PLAYER_TILT,0;
	RULE FORCE_UP=FORCE_UP-PLAYER_TILT*3;
}


#WARNING!
#This action won't work correctly with the standard-tilt action, you'll have to 
#remove some lines. But this will disable the auto-tilting when falling down from 
#a high platform...
#To disable the auto-tilting, just delete all lines which include "GOTO decr_tilt;"
#(look for the TILT-section of your Move.WDL) and the lines above...
#Now, everything should work fine!





