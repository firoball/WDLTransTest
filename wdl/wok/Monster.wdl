SKILL hit_str {} //Hit Strength
SOUND playerhit_snd, <ouch.wav>;

BMAP guard1_map,<guard.pcx>,0,0,120,228;
BMAP guard2_map,<guard.pcx>,120,0,120,228;
BMAP guard3_map,<guard.pcx>,240,0,120,228;
BMAP guard4_map,<guard.pcx>,360,0,120,228;
BMAP guard5_map,<guard.pcx>,480,0,120,228;
BMAP guard6_map,<guard.pcx>,600,0,120,228;
BMAP guard7_map,<guard.pcx>,720,0,120,228;
BMAP guard8_map,<guard.pcx>,840,0,120,228;

BMAP guard1B_map,<guard2.pcx>,0,0,120,232;
BMAP guard2B_map,<guard2.pcx>,120,0,120,232;
BMAP guard3B_map,<guard2.pcx>,240,4,120,228;
BMAP guard4B_map,<guard2.pcx>,360,4,120,228;
BMAP guard5B_map,<guard2.pcx>,480,4,120,228;
BMAP guard6B_map,<guard2.pcx>,600,4,120,228;
BMAP guard7B_map,<guard2.pcx>,720,4,120,228;
BMAP guard8B_map,<guard2.pcx>,840,4,120,228;

BMAP guard1C_map,<guard3.pcx>,0,0,134,232;
BMAP guard2C_map,<guard3.pcx>,130,0,120,232;
BMAP guard3C_map,<guard3.pcx>,250,4,120,228;
BMAP guard4C_map,<guard3.pcx>,370,4,120,228;
BMAP guard5C_map,<guard3.pcx>,490,4,120,228;
BMAP guard6C_map,<guard3.pcx>,610,4,120,228;
BMAP guard7C_map,<guard3.pcx>,730,4,120,228;
BMAP guard8C_map,<guard3.pcx>,850,4,120,228;

BMAP guard1D_map,<guard4.pcx>,0,0,120,228;
BMAP guard2D_map,<guard4.pcx>,120,0,120,228;
BMAP guard3D_map,<guard4.pcx>,240,0,120,228;
BMAP guard8D_map,<guard4.pcx>,840,0,120,228;

TEXTURE guard_tex {
SIDES 8;
CYCLES 6;
BMAPS guard1_map,guard1B_map,guard1C_map,guard1B_map,guard1_map,guard1D_map,
	guard8_map,guard8B_map,guard8C_map,guard8B_map,guard8_map,guard8D_map,
	guard7_map,guard7B_map,guard7C_map,guard7B_map,guard7_map,guard7_map,
	guard6_map,guard6B_map,guard6C_map,guard6B_map,guard6_map,guard6_map,
	guard5_map,guard5B_map,guard5C_map,guard5B_map,guard5_map,guard5_map,
	guard4_map,guard4B_map,guard4C_map,guard4B_map,guard4_map,guard4_map,
	guard3_map,guard3B_map,guard3C_map,guard3B_map,guard3_map,guard3D_map,
	guard2_map,guard2B_map,guard2C_map,guard2B_map,guard2_map,guard2D_map; 
DELAY 20,3,3,3,20,3;
SCALE_XY 30,28;}
//////////
BMAP crg_lie1_map,<craig.pcx>,0,0,254,60;
BMAP crg_lie2_map,<craig.pcx>,0,60,254,60;
BMAP crg_lie3_map,<craig.pcx>,0,120,254,60;
BMAP crg_lie4_map,<craig.pcx>,0,180,254,60;
BMAP crg_lie5_map,<craig.pcx>,0,240,254,60;

TEXTURE craig_lie_tex {
BMAPS crg_lie3_map;
SCALE_XY 30,28;}

BMAP craigFT1_map,<craigrun.pcx>,0,230,80,230;
BMAP craigFT2_map,<craigrun.pcx>,80,230,80,230;
BMAP craigFT3_map,<craigrun.pcx>,160,230,80,230;
BMAP craigFT4_map,<craigrun.pcx>,240,230,80,230;
BMAP craigFT5_map,<craigrun.pcx>,320,230,80,230;
BMAP craigFT6_map,<craigrun.pcx>,400,230,80,230;
BMAP craigFT7_map,<craigrun.pcx>,480,230,80,230;
BMAP craigFT8_map,<craigrun.pcx>,560,230,80,230;
TEXTURE craig_tex {
SIDES 1;
CYCLES 8;
BMAPS craigFT1_map,craigFT2_map,craigFT3_map,craigFT4_map,craigFT5_map,craigFT6_map,craigFT7_map,craigFT8_map; 
DELAY 3,3,3,3,3,3,3,3;
SCALE_XY 30,28;}

BMAP mrtkFT1_map,<martek.pcx>,0,0,180,230;
BMAP mrtkFT2_map,<martek.pcx>,180,0,180,230;
BMAP mrtkFT3_map,<martek.pcx>,360,0,180,230;
BMAP mrtkFT4_map,<martek.pcx>,540,0,180,230;
BMAP mrtkFT5_map,<martek.pcx>,720,0,180,230;
BMAP mrtkFT6_map,<martek.pcx>,900,0,180,230;
BMAP mrtkFT7_map,<martek.pcx>,1080,0,180,230;
BMAP mrtkFT8_map,<martek.pcx>,1260,0,180,230;

TEXTURE martek_tex {
SIDES 1;
CYCLES 8;
BMAPS mrtkFT1_map,mrtkFT2_map,mrtkFT3_map,mrtkFT4_map,mrtkFT5_map,mrtkFT6_map,mrtkFT7_map,mrtkFT8_map; 
DELAY 2,2,2,2,2,2,2,2;
SCALE_XY 30,28;}


//////////
BMAP zombFT1_map,<zombie.pcx>,0,0,180,230;
BMAP zombFT2_map,<zombie.pcx>,180,0,180,230;
BMAP zombFT3_map,<zombie.pcx>,360,0,180,230;
BMAP zombFT4_map,<zombie.pcx>,540,0,180,230;
BMAP zombFT5_map,<zombie.pcx>,720,0,180,230;
BMAP zombFT6_map,<zombie.pcx>,900,0,180,230;
BMAP zombFT7_map,<zombie.pcx>,1080,0,180,230;
BMAP zombFT8_map,<zombie.pcx>,1260,0,180,230;
TEXTURE zombie_tex {
SIDES 1;
CYCLES 8;
BMAPS zombFT1_map,zombFT2_map,zombFT3_map,zombFT4_map,zombFT5_map,zombFT6_map,zombFT7_map,zombFT8_map; 
DELAY 2,2,2,2,2,2,2,2;
SCALE_XY 30,28;}

//////////
BMAP orcFT1_map,<orc.pcx>,0,0,180,230;
BMAP orcFT2_map,<orc.pcx>,180,0,180,230;
BMAP orcFT3_map,<orc.pcx>,360,0,180,230;
BMAP orcFT4_map,<orc.pcx>,540,0,180,230;
BMAP orcFT5_map,<orc.pcx>,720,0,180,230;
BMAP orcFT6_map,<orc.pcx>,900,0,180,230;
BMAP orcFT7_map,<orc.pcx>,1080,0,180,230;
BMAP orcFT8_map,<orc.pcx>,1260,0,180,230;
BMAP orcBK1_map,<orc.pcx>,0,230,180,230;
BMAP orcBK2_map,<orc.pcx>,180,230,180,230;
BMAP orcBK3_map,<orc.pcx>,360,230,180,230;
BMAP orcBK4_map,<orc.pcx>,540,230,180,230;
BMAP orcBK5_map,<orc.pcx>,720,230,180,230;
BMAP orcBK6_map,<orc.pcx>,900,230,180,230;
BMAP orcBK7_map,<orc.pcx>,1080,230,180,230;
BMAP orcBK8_map,<orc.pcx>,1260,230,180,230;
BMAP orcSL1_map,<orc.pcx>,0,460,180,230;
BMAP orcSL2_map,<orc.pcx>,180,460,180,230;
BMAP orcSL3_map,<orc.pcx>,360,460,180,230;
BMAP orcSL4_map,<orc.pcx>,540,460,180,230;
BMAP orcSL5_map,<orc.pcx>,720,460,180,230;
BMAP orcSL6_map,<orc.pcx>,900,460,180,230;
BMAP orcSL7_map,<orc.pcx>,1080,460,180,230;
BMAP orcSL8_map,<orc.pcx>,1260,460,180,230;
BMAP orcSR1_map,<orc.pcx>,0,690,180,230;
BMAP orcSR2_map,<orc.pcx>,180,690,180,230;
BMAP orcSR3_map,<orc.pcx>,360,690,180,230;
BMAP orcSR4_map,<orc.pcx>,540,690,180,230;
BMAP orcSR5_map,<orc.pcx>,720,690,180,230;
BMAP orcSR6_map,<orc.pcx>,900,690,180,230;
BMAP orcSR7_map,<orc.pcx>,1080,690,180,230;
BMAP orcSR8_map,<orc.pcx>,1260,690,180,230;
BMAP orc1Q1_map,<orc.pcx>,0,920,180,230;
BMAP orc1Q2_map,<orc.pcx>,180,920,180,230;
BMAP orc1Q3_map,<orc.pcx>,360,920,180,230;
BMAP orc1Q4_map,<orc.pcx>,540,920,180,230;
BMAP orc1Q5_map,<orc.pcx>,720,920,180,230;
BMAP orc1Q6_map,<orc.pcx>,900,920,180,230;
BMAP orc1Q7_map,<orc.pcx>,1080,920,180,230;
BMAP orc1Q8_map,<orc.pcx>,1260,920,180,230;
BMAP orc2Q1_map,<orc.pcx>,0,1380,180,230;
BMAP orc2Q2_map,<orc.pcx>,180,1380,180,230;
BMAP orc2Q3_map,<orc.pcx>,360,1380,180,230;
BMAP orc2Q4_map,<orc.pcx>,540,1380,180,230;
BMAP orc2Q5_map,<orc.pcx>,720,1380,180,230;
BMAP orc2Q6_map,<orc.pcx>,900,1380,180,230;
BMAP orc2Q7_map,<orc.pcx>,1080,1380,180,230;
BMAP orc2Q8_map,<orc.pcx>,1260,1380,180,230;
BMAP orc3Q1_map,<orc.pcx>,0,1610,180,230;
BMAP orc3Q2_map,<orc.pcx>,180,1610,180,230;
BMAP orc3Q3_map,<orc.pcx>,360,1610,180,230;
BMAP orc3Q4_map,<orc.pcx>,540,1610,180,230;
BMAP orc3Q5_map,<orc.pcx>,720,1610,180,230;
BMAP orc3Q6_map,<orc.pcx>,900,1610,180,230;
BMAP orc3Q7_map,<orc.pcx>,1080,1610,180,230;
BMAP orc3Q8_map,<orc.pcx>,1260,1610,180,230;
BMAP orc4Q1_map,<orc.pcx>,0,1150,180,230;
BMAP orc4Q2_map,<orc.pcx>,180,1150,180,230;
BMAP orc4Q3_map,<orc.pcx>,360,1150,180,230;
BMAP orc4Q4_map,<orc.pcx>,540,1150,180,230;
BMAP orc4Q5_map,<orc.pcx>,720,1150,180,230;
BMAP orc4Q6_map,<orc.pcx>,900,1150,180,230;
BMAP orc4Q7_map,<orc.pcx>,1080,1150,180,230;
BMAP orc4Q8_map,<orc.pcx>,1260,1150,180,230;

TEXTURE orc_tex{
SIDES 8;
CYCLES 8;
BMAPS orcFT1_map,orcFT2_map,orcFT3_map,orcFT4_map,orcFT5_map,orcFT6_map,orcFT7_map,orcFT8_map,
      orc4Q1_map,orc4Q2_map,orc4Q3_map,orc4Q4_map,orc4Q5_map,orc4Q6_map,orc4Q7_map,orc4Q8_map,
      orcSR1_map,orcSR2_map,orcSR3_map,orcSR4_map,orcSR5_map,orcSR6_map,orcSR7_map,orcSR8_map,
      orc3Q1_map,orc3Q2_map,orc3Q3_map,orc3Q4_map,orc3Q5_map,orc3Q6_map,orc3Q7_map,orc3Q8_map,
      orcBK1_map,orcBK2_map,orcBK3_map,orcBK4_map,orcBK5_map,orcBK6_map,orcBK7_map,orcBK8_map,
      orc2Q1_map,orc2Q2_map,orc2Q3_map,orc2Q4_map,orc2Q5_map,orc2Q6_map,orc2Q7_map,orc2Q8_map,
      orcSL1_map,orcSL2_map,orcSL3_map,orcSL4_map,orcSL5_map,orcSL6_map,orcSL7_map,orcSL8_map,
      orc1Q1_map,orc1Q2_map,orc1Q3_map,orc1Q4_map,orc1Q5_map,orc1Q6_map,orc1Q7_map,orc1Q8_map;
DELAY 2,2,2,2,2,2,2,2;
SCALE_XY 30,28;
}

ACTOR orc {TEXTURE orc_tex; HEIGHT -.2;} 

//////////Ghost//////////
SOUND ghosthit_snd, <ghosthit.wav>;
SOUND ghostatk_snd, <ghostatk.wav>;
SOUND ghostdie_snd, <ghostdie.wav>;

//////////Bitmaps//////////
BMAP ghostFT1_map,<ghost.pcx>,0,0,192,165;
BMAP ghost1Q1_map,<ghost.pcx>,200,0,192,165;
BMAP ghostSD1_map,<ghost.pcx>,400,0,192,165;
BMAP ghost3Q1_map,<ghost.pcx>,600,0,192,165;
BMAP ghostBK1_map,<ghost.pcx>,800,0,192,165;
BMAP ghostFT2_map,<ghost.pcx>,0,170,192,165;
BMAP ghost1Q2_map,<ghost.pcx>,200,170,192,165;
BMAP ghostSD2_map,<ghost.pcx>,400,170,192,165;
BMAP ghost3Q2_map,<ghost.pcx>,600,170,192,165;
BMAP ghostBK2_map,<ghost.pcx>,800,170,192,165;

BMAP ghostFTA_map,<ghost.pcx>,0,680,192,165;
BMAP ghost1QA_map,<ghost.pcx>,200,680,192,165;
BMAP ghostSDA_map,<ghost.pcx>,400,680,192,165;
BMAP ghost3QA_map,<ghost.pcx>,600,680,192,165;
BMAP ghostBKA_map,<ghost.pcx>,800,680,192,165;

BMAP ghostD1_map,<ghost.pcx>,0,340,250,165;
BMAP ghostD2_map,<ghost.pcx>,250,340,250,165;
BMAP ghostD3_map,<ghost.pcx>,500,340,250,165;
BMAP ghostD4_map,<ghost.pcx>,0,510,250,165;
BMAP ghostD5_map,<ghost.pcx>,250,510,250,165;
BMAP ghostD6_map,<ghost.pcx>,500,510,250,165;
BMAP ghosthit_map,<ghost.pcx>,800,340,192,165;

/////////Textures/////////
TEXTURE ghost_tex{
AMBIENT .2;
SIDES 8;
CYCLES 8;
BMAPS ghostFT2_map,ghostFT2_map,ghostFT2_map,ghostFT2_map,ghostFT1_map,ghostFT1_map,ghostFT1_map,ghostFT1_map,
      ghost1Q2_map,ghost1Q2_map,ghost1Q2_map,ghost1Q2_map,ghost1Q1_map,ghost1Q1_map,ghost1Q1_map,ghost1Q1_map,
      ghostSD2_map,ghostSD2_map,ghostSD2_map,ghostSD2_map,ghostSD1_map,ghostSD1_map,ghostSD1_map,ghostSD1_map,
      ghost3Q2_map,ghost3Q2_map,ghost3Q2_map,ghost3Q2_map,ghost3Q1_map,ghost3Q1_map,ghost3Q1_map,ghost3Q1_map,
      ghostBK2_map,ghostBK2_map,ghostBK2_map,ghostBK2_map,ghostBK1_map,ghostBK1_map,ghostBK1_map,ghostBK1_map,
      ghost3Q2_map,ghost3Q2_map,ghost3Q2_map,ghost3Q2_map,ghost3Q1_map,ghost3Q1_map,ghost3Q1_map,ghost3Q1_map,
      ghostSD2_map,ghostSD2_map,ghostSD2_map,ghostSD2_map,ghostSD1_map,ghostSD1_map,ghostSD1_map,ghostSD1_map,
      ghost1Q2_map,ghost1Q2_map,ghost1Q2_map,ghost1Q2_map,ghost1Q1_map,ghost1Q1_map,ghost1Q1_map,ghost1Q1_map;
MIRROR 0,1,1,1,0,0,0,0;
OFFSET_Y 20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24,
	20,13,6,0,6,12,28,24;	
DELAY 3,3,3,7,2,2,2,2;
SCALE_XY 34,30;
}

TEXTURE ghost_flee_tex{
AMBIENT .3;
CYCLES 8;
BMAPS ghosthit_map,ghosthit_map,ghosthit_map,ghosthit_map,ghosthit_map,ghosthit_map,ghosthit_map,ghosthit_map;
OFFSET_Y 20,13,6,0,6,12,28,24;
DELAY 2,2,2,2,2,2,2,2;
SCALE_XY 34,30;
FLAGS DIAPHANOUS;}

TEXTURE ghostdie_tex{
AMBIENT .2;
CYCLES 6;
BMAPS ghostD1_map,ghostD2_map,ghostD3_map,ghostD4_map,ghostD5_map,ghostD6_map;
DELAY 3,3,3,3,4,2;
SCALE_XY 34,30;
FLAGS ONESHOT,DIAPHANOUS;}

TEXTURE ghostatk_tex{
AMBIENT .2;
SIDES 8;
CYCLES 4;
BMAPS ghostFTA_map,ghostFTA_map,ghostFTA_map,ghostFTA_map,
	ghost1QA_map,ghost1QA_map,ghost1QA_map,ghost1QA_map,
	ghostSDA_map,ghostSDA_map,ghostSDA_map,ghostSDA_map,
	ghost3QA_map,ghost3QA_map,ghost3QA_map,ghost3QA_map,
	ghostBKA_map,ghostBKA_map,ghostBKA_map,ghostBKA_map,
	ghost3QA_map,ghost3QA_map,ghost3QA_map,ghost3QA_map,
	ghostSDA_map,ghostSDA_map,ghostSDA_map,ghostSDA_map,
	ghost1QA_map,ghost1QA_map,ghost1QA_map,ghost1QA_map;
OFFSET_Y 0,10,0,-10,0,10,0,-10,0,10,0,-10,0,10,0,-10,0,10,0,-10,0,10,0,-10,0,10,0,-10,0,10,0,-10;
DELAY 3,4,3,4;
MIRROR 0,1,1,1,0,0,0,0;
SCALE_XY 34,30;
}

//////////Ghost-Actor/////////
ACTOR ghost {TEXTURE ghost_tex; HEIGHT 2.5; IF_HIT ghost_hit;
SKILL6 1;//sneak detect (the higher, the better)
SKILL7 0;//armor
SKILL8 20;//life
EACH_CYCLE update_screen; FLAGS CAREFULLY,FRAGILE; EACH_TICK ghost_AI;}

ACTION update_screen {IF_NEQUAL MY.VISIBLE,1; END; SET RENDER_MODE,1;}

//////////Artificial Intelligence//////////
//////////Counter//////////
ACTION AI_counter {IF_EQUAL MY.SKILL3,2; FADE_PAL nebel_pal,gamma;
ADD MY.SKILL3,1; IF_BELOW MY.SKILL3,MY.SKILL4; END;
SET MY.EACH_TICK,NULL;SET MY.SKILL3,0;
BRANCH ghost_recover;}
//////////Ouch! Bad luck//////////
ACTION ghost_hit {
IF_ABOVE use,0; END;
RULE MY.SKILL1=(shotdmg-MY.SKILL7);
IF (MY.SKILL1<=0) {RULE MY.SKILL1=0.5+RANDOM(1);}
RULE MY.SKILL8-=MY.SKILL1;
IF (MY.SKILL8<=0) {BRANCH ghost_die;}
PLAY_SOUND ghosthit_snd,1,MY;
BRANCH ghost_flee;}

//////////That's enough!//////////
ACTION ghost_flee {
SET MY.EACH_TICK,NULL;
SET MY.TEXTURE, ghost_flee_tex;
SET MY.SPEED,0.7;
SET MY.TARGET,REPEL;
SET MY.IF_HIT,NULL;
SET MY.SKILL3,0;
RULE MY.SKILL4=RANDOM(10)+20;	//Time to wait
SET MY.EACH_TICK, AI_counter;
}

ACTION ghost_recover {
SET MY.TEXTURE,ghost_tex;
ADD MY.ANGLE,PI;
IF_ABOVE MY.ANGLE, 6.283; RULE MY.ANGLE=MY.ANGLE-6.283;
IF_BELOW MY.ANGLE,0; RULE MY.ANGLE=MY.ANGLE+6.283;
SET MY.SPEED,0;
SET MY.TARGET,NULL;
SET MY.TEXTURE,ghost_tex;
SET MY.IF_HIT,ghost_hit;
BRANCH ghost_AI;
}

//////////Time to say goodbye//////////
ACTION ghost_die {
FADE_PAL nebel_pal,gamma;
EXCLUSIVE;
PLAY_SOUND ghostdie_snd,0.8,MY;
RULE points+=INT(3+RANDOM(3));
SET MY.IF_HIT,NULL;
SET MY.SPEED,0.2;
SET MY.TARGET,REPEL;
SET MY.TEXTURE,ghostdie_tex;
SET MY.PASSABLE,1; SET MY.PLAY,1;
SET MY.CAREFULLY,0;
SET MY.EACH_TICK, ghost_up;
SET MY.EACH_CYCLE ghost_inv;}

ACTION ghost_up {ADDT MY.HEIGHT,0.2; SET RENDER_MODE,1;}

ACTION ghost_inv {
SET MY.SPEED,0;
SET MY.TARGET,NULL;
SET MY.INVISIBLE,1;
SET MY.IF_HIT,NULL;
SET MY.EACH_TICK,NULL;
SET MY.EACH_CYCLE,NULL;
SET RENDER_MODE,1;}

//////////Waiting for blood//////////
ACTION ghost_wait {
SET MY.IF_HIT,ghost_hit;
SET SHOOT_RANGE,300;
SHOOT MY;
IF (ABS(MY.ANGLE-SHOOT_ANGLE)<1.05) {SET MY.EACH_TICK,ghost_walk;END;}
IF (MY.DISTANCE<15) {
IF ((RANDOM(MY.SKILL6)*10)>(KEY_SHIFT*10)) {
SET MY.EACH_TICK,NULL; SET MY.ANGLE,SHOOT_ANGLE; SET MY.EACH_TICK, ghost_walk; END;}}
}

ACTION ghost_confused {
ADD MY.SKILL3,1;
IF (MY.SKILL3>=30) {SET MY.EACH_TICK,NULL; SET MY.SKILL3,0; BRANCH ghost_AI;}
}

//////////Ready for Massacre//////////
ACTION ghost_attack {
PLAY_SOUND ghostatk_snd,0.8,MY;
SET MY.TEXTURE,ghostatk_tex;
SET MY.TARGET,MOVE; 
SET MY.SPEED,1.5;
SET MY.EACH_TICK,ghost_shoot;
}

ACTION ghost_shoot {
SET SHOOT_RANGE,5;
SHOOT MY;
IF (HIT_DIST>0) {GOTO big_hit;}
IF (ABS(MY.ANGLE-SHOOT_ANGLE)>1.05) {SET MY.SKILL3,0;SET MY.TARGET,NULL; 
	SET MY.TEXTURE, ghost_tex;SET MY.EACH_TICK, ghost_confused;}
END;
big_hit:
FADE_PAL pal_red,0.5;
PLAY_SOUND playerhit_snd,0.8;
RULE hit_str=RANDOM(5)-AC;
IF (hit_str<=0) {RULE hit_str=0.5+RANDOM(1);}
RULE HP=HP-hit_str;
SET MY.SPEED,0.7;
SET MY.TEXTURE,ghost_flee_tex;
SET MY.TARGET,REPEL;
RULE MY.SKILL4=15+RANDOM(10);
SET MY.EACH_TICK,AI_counter;
}

//////////Goin' for a walk//////////
ACTION ghost_walk {
SET SHOOT_RANGE,200;
SHOOT MY;
IF (ABS(MY.ANGLE-SHOOT_ANGLE)>1.05) {BRANCH ghost_AI;}
SET MY.SKILL1,MY.ANGLE;
SET MY.ANGLE,SHOOT_ANGLE;
SHOOT MY;
IF (HIT_DIST==0) {SET MY.ANGLE,MY.SKILL1; BRANCH ghost_AI;}
IF (MY.DISTANCE<=50) {SET MY.EACH_TICK,NULL; BRANCH ghost_attack;}
SET MY.TARGET,FOLLOW;
SET MY.SPEED,0.2;}
 
//////////Heart of the system//////////
ACTION ghost_AI {
SET MY.EACH_TICK,ghost_AI;
IF_ABOVE MY.DISTANCE,150; END;
BRANCH ghost_wait;
}


//////////Minotaur//////////
SOUND minodie_snd, <die1.wav>;
SOUND minoatk_snd, <hey1.wav>;
SOUND minohit_snd, <hey2.wav>;

//////////Textures//////////
BMAP minoSD1_map,<minotaur.pcx>,0,4,134,196;
BMAP minoSD2_map,<minotaur.pcx>,0,206,143,194;
BMAP minoSD3_map,<minotaur.pcx>,0,402,117,198;
BMAP minoSD4_map,<minotaur.pcx>,0,603,122,197;
BMAP minoSD5_map,<minotaur.pcx>,0,802,127,198;
BMAP minoSD6_map,<minotaur.pcx>,0,1001,126,199;
BMAP minoSD7_map,<minotaur.pcx>,0,1202,124,198;
BMAP minoSD8_map,<minotaur.pcx>,0,1404,135,196;

BMAP minoFT1_map,<minotaur.pcx>,145,7,90,193;
BMAP minoFT2_map,<minotaur.pcx>,145,204,91,196;
BMAP minoFT3_map,<minotaur.pcx>,145,404,78,196;
BMAP minoFT4_map,<minotaur.pcx>,145,603,102,197;
BMAP minoFT5_map,<minotaur.pcx>,145,803,87,197;
BMAP minoFT6_map,<minotaur.pcx>,145,1000,84,200;
BMAP minoFT7_map,<minotaur.pcx>,145,1203,87,197;
BMAP minoFT8_map,<minotaur.pcx>,145,1402,83,198;

BMAP minoBK1_map,<minotaur.pcx>,250,6,89,194;
BMAP minoBK2_map,<minotaur.pcx>,250,202,89,198;
BMAP minoBK3_map,<minotaur.pcx>,250,403,82,197;
BMAP minoBK4_map,<minotaur.pcx>,250,600,100,200;
BMAP minoBK5_map,<minotaur.pcx>,250,803,88,197;
BMAP minoBK6_map,<minotaur.pcx>,250,1002,90,198;
BMAP minoBK7_map,<minotaur.pcx>,250,1202,86,198;
BMAP minoBK8_map,<minotaur.pcx>,250,1402,83,198;

BMAP mino3Q1_map,<minotaur.pcx>,350,5,131,195;
BMAP mino3Q2_map,<minotaur.pcx>,350,206,113,194;
BMAP mino3Q3_map,<minotaur.pcx>,350,402,95,198;
BMAP mino3Q4_map,<minotaur.pcx>,350,601,124,199;
BMAP mino3Q5_map,<minotaur.pcx>,350,804,136,196;
BMAP mino3Q6_map,<minotaur.pcx>,350,1003,119,197;
BMAP mino3Q7_map,<minotaur.pcx>,350,1200,101,200;
BMAP mino3Q8_map,<minotaur.pcx>,350,1405,109,195;

BMAP mino1Q1_map,<minotaur.pcx>,500,4,123,196;
BMAP mino1Q2_map,<minotaur.pcx>,500,207,133,193;
BMAP mino1Q3_map,<minotaur.pcx>,500,405,140,195;
BMAP mino1Q4_map,<minotaur.pcx>,500,601,131,199;
BMAP mino1Q5_map,<minotaur.pcx>,500,803,102,197;
BMAP mino1Q6_map,<minotaur.pcx>,500,1001,113,199;
BMAP mino1Q7_map,<minotaur.pcx>,500,1201,123,199;
BMAP mino1Q8_map,<minotaur.pcx>,500,1400,130,200;

BMAP minoDie1_map,<minotaur.pcx>,650,1,104,199;
BMAP minoDie2_map,<minotaur.pcx>,650,213,125,187;
BMAP minoDie3_map,<minotaur.pcx>,650,418,140,182;
BMAP minoDie4_map,<minotaur.pcx>,650,644,145,156;
BMAP minoDie5_map,<minotaur.pcx>,650,941,134,59;

BMAP minoAtk1_map,<minotaur.pcx>,800,5,80,195;
BMAP minoAtk2_map,<minotaur.pcx>,800,205,82,195;
BMAP minoAtk3_map,<minotaur.pcx>,800,406,98,194;
BMAP minoAtk4_map,<minotaur.pcx>,800,605,74,195;
BMAP minoAtk5_map,<minotaur.pcx>,800,810,72,190;
BMAP minoAtk6_map,<minotaur.pcx>,800,1003,79,197;

TEXTURE mino_tex{
SIDES 8;
CYCLES 8;
BMAPS minoFT1_map,minoFT2_map,minoFT3_map,minoFT4_map,minoFT5_map,minoFT6_map,minoFT7_map,minoFT8_map,
      mino1Q1_map,mino1Q2_map,mino1Q3_map,mino1Q4_map,mino1Q5_map,mino1Q6_map,mino1Q7_map,mino1Q8_map,
      minoSD1_map,minoSD2_map,minoSD3_map,minoSD4_map,minoSD5_map,minoSD6_map,minoSD7_map,minoSD8_map,
      mino3Q1_map,mino3Q2_map,mino3Q3_map,mino3Q4_map,mino3Q5_map,mino3Q6_map,mino3Q7_map,mino3Q8_map,
      minoBK1_map,minoBK2_map,minoBK3_map,minoBK4_map,minoBK5_map,minoBK6_map,minoBK7_map,minoBK8_map,
      mino3Q1_map,mino3Q2_map,mino3Q3_map,mino3Q4_map,mino3Q5_map,mino3Q6_map,mino3Q7_map,mino3Q8_map,
      minoSD1_map,minoSD2_map,minoSD3_map,minoSD4_map,minoSD5_map,minoSD6_map,minoSD7_map,minoSD8_map,
      mino1Q1_map,mino1Q2_map,mino1Q3_map,mino1Q4_map,mino1Q5_map,mino1Q6_map,mino1Q7_map,mino1Q8_map;
      
MIRROR 0,1,1,1,0,0,0,0;
DELAY 2,2,2,2,2,2,2,2;
SCALE_XY 26,26;
}

TEXTURE minoDie_tex{
CYCLES 5;
BMAPS minoDie1_map,minoDie2_map,minoDie3_map,minoDie4_map,minoDie5_map;
FLAGS ONESHOT;
DELAY 3,3,3,3,4;
SCALE_XY 26,26;}

TEXTURE minoAtk_tex{
CYCLES 6;
BMAPS minoAtk1_map,minoAtk2_map,minoAtk3_map,minoAtk4_map,minoAtk5_map,minoAtk6_map;
FLAGS ONESHOT;
DELAY 1,1,1,1,1,1;
SCALE_XY 26,26;}

//////////Minotaur-Actor//////////
ACTOR minotaur {TEXTURE mino_tex; HEIGHT -.01; IF_HIT mino_hit;
//Skill1,3,4 are used!!
SKILL5 0;//anger-level
SKILL6 1.5;//sneak detect (the higher, the better)
SKILL7 2;//armor
SKILL8 28;//life
FLAGS CAREFULLY,FRAGILE; 
DIST 10;
EACH_TICK mino_AI;}

//////////Artificial Intelligence/////////
//////////Counter//////////
ACTION mino_counter {
ADD MY.SKILL3,1; IF_BELOW MY.SKILL3,MY.SKILL4; END;
SET MY.EACH_TICK,NULL;SET MY.SKILL3,0;
IF (RANDOM(1)>=0.5) {BRANCH mino_look;}//choose new direction
BRANCH mino_recover;}

//////////Ohauerha//////////
ACTION mino_hit {
IF_ABOVE use,0; END;
SET MY.IF_FAR,NULL;
SET MY.EACH_TICK,NULL;
RULE MY.SKILL1=(shotdmg-MY.SKILL7);
IF (MY.SKILL1<=0) {RULE MY.SKILL1=0.5+RANDOM(1);}
RULE MY.SKILL8-=MY.SKILL1;
IF (MY.SKILL8<=0) {BRANCH mino_die;}
PLAY_SOUND minohit_snd,1,MY;
IF (MY.SKILL8<=2) {BRANCH mino_berserk;}//Fear of Death
SET SHOOT_RANGE,300; //Attacking from behind is unfair. Mino gets angry
SHOOT MY;
IF (ABS(MY.ANGLE-SHOOT_ANGLE)>1.57) {
	IF (MY.SKILL5>=2) {BRANCH mino_berserk;}
	ADD MY.SKILL5,1;}//anger-level 1 up
BRANCH mino_flee;}

//////////Running for his life//////////
ACTION mino_flee {
IF_EQUAL MY.FLAG1,1; GOTO attacko;
IF (RANDOM(1)>=0.5) {GOTO flee;}
attacko:
SET MY.FLAG1,0;
SET MY.TARGET,REPEL;
SET MY.SPEED,0.4;//only some steps back then attack again
SET MY.IF_FAR,mino_attack;
#END;
flee:
SET MY.SPEED,0.7;
SET MY.TARGET,REPEL;
SET MY.SKILL3,0;
RULE MY.SKILL4=INT(RANDOM(15)+10);	//Time to wait
SET MY.EACH_TICK, mino_counter;
}

ACTION mino_recover {
ADD MY.ANGLE,PI;
IF_ABOVE MY.ANGLE, 6.283; RULE MY.ANGLE=MY.ANGLE-6.283;
IF_BELOW MY.ANGLE,0; RULE MY.ANGLE=MY.ANGLE+6.283;
SET MY.SPEED,0;
SET MY.TARGET,NULL;
BRANCH mino_AI;
}

//////////Waiting for victims//////////
ACTION mino_wait {
SET MY.IF_FAR,NULL;
SET MY.TARGET,NULL;
SET SHOOT_RANGE,300;
SHOOT MY;
IF (ABS(MY.ANGLE-SHOOT_ANGLE)<1.05) {SET MY.EACH_TICK,mino_walk;END;}
IF (MY.DISTANCE<15) {
IF ((RANDOM(MY.SKILL6)*10)>(KEY_SHIFT*10)) {
SET MY.ANGLE,SHOOT_ANGLE; SET MY.EACH_TICK, mino_walk; END;}}
IF (RANDOM(1)>=0.6) {BRANCH mino_justlook;}//check the area around
}

//////////K.K.-Krazy Killer//////////
ACTION mino_berserk {
SET MY.SPEED,0.8;
SET MY.TARGET,FOLLOW;
PLAY_SOUND minoatk_snd,0.8,MY;
BRANCH mino_shoot;
}

ACTION mino_attack {
SET MY.IF_FAR,NULL;
SET MY.SPEED,0.8;
SET MY.TARGET,FOLLOW;
PLAY_SOUND minoatk_snd,0.8,MY;
SET MY.IF_NEAR,mino_shoot;
}

ACTION mino_shoot {
SET MY.TEXTURE,minoatk_tex;
SET MY.PLAY,1;
SET MY.EACH_CYCLE, mino_atkfinished;
SET SHOOT_RANGE,20;
SHOOT MY;
IF (HIT_DIST==0) {SET MY.TEXTURE,mino_tex;goto hit_fin;}
FADE_PAL pal_red,0.5;
PLAY_SOUND playerhit_snd,0.8;
IF (MY.SKILL5>=2) {RULE hit_str=(RANDOM(6)+3)*2-AC;}//double damage when berserk
ELSE {RULE hit_str=(RANDOM(6)+3)-AC;}
IF (hit_str<=0) {RULE hit_str=1+RANDOM(1);}
RULE HP=HP-hit_str;
SET MY.SKILL5,0;
SET MY.FLAG1,1; //only some steps back, then attack again!! (-->mino_flee)
hit_fin:
SET MY.IF_NEAR,NULL;
}

ACTION mino_atkfinished {
SET MY.EACH_CYCLE,NULL;
SET MY.TEXTURE,mino_tex;
FADE_PAL nebel_pal,gamma;
IF (MY.DISTANCE>=60) {SET MY.EACH_TICK, mino_wait;}
BRANCH mino_flee;
}

//////////Confused?//////////
ACTION mino_look {
SET MY.EACH_TICK,NULL;
RANDOMIZE MY.SKILL2,11;
IF (MY.SKILL2<3) {RULE MY.ANGLE = MY.ANGLE - 1.576; IF_BELOW MY.ANGLE,0; RULE MY.ANGLE=MY.ANGLE+6.283;}
IF (MY.SKILL2 > 8) {RULE MY.ANGLE = MY.ANGLE + 1.576;IF_ABOVE MY.ANGLE,6.283; RULE MY.ANGLE=MY.ANGLE-6.283;}
IF ((MY.SKILL2 >= 3) && (MY.SKILL2 <= 5)) {RULE MY.ANGLE = MY.ANGLE + 0.40;IF_ABOVE MY.ANGLE,6.283; RULE MY.ANGLE=MY.ANGLE-6.283;}        
IF ((MY.SKILL2 > 5) && (MY.SKILL2 <= 8)) {RULE MY.ANGLE = MY.ANGLE - 0.40; IF_BELOW MY.ANGLE,0; RULE MY.ANGLE=MY.ANGLE+6.283;}   
SET MY.SPEED,0.3;
SET MY.TARGET,MOVE;
SET MY.SKILL3,0;
SET MY.EACH_TICK,mino_confused;
}

ACTION mino_justlook {
RANDOMIZE MY.SKILL2,11;
IF (MY.SKILL2<3) {RULE MY.ANGLE = MY.ANGLE - 1.576; IF_BELOW MY.ANGLE,0; RULE MY.ANGLE=MY.ANGLE+6.283;}
IF (MY.SKILL2 > 8) {RULE MY.ANGLE = MY.ANGLE + 1.576;IF_ABOVE MY.ANGLE,6.283; RULE MY.ANGLE=MY.ANGLE-6.283;}
IF ((MY.SKILL2 >= 3) && (MY.SKILL2 <= 5)) {RULE MY.ANGLE = MY.ANGLE + 0.40;IF_ABOVE MY.ANGLE,6.283; RULE MY.ANGLE=MY.ANGLE-6.283;}        
IF ((MY.SKILL2 > 5) && (MY.SKILL2 <= 8)) {RULE MY.ANGLE = MY.ANGLE - 0.40; IF_BELOW MY.ANGLE,0; RULE MY.ANGLE=MY.ANGLE+6.283;}   
}
//////////Goin' for a walk//////////
ACTION mino_walk {
SET SHOOT_RANGE,200;
SHOOT MY;
IF (ABS(MY.ANGLE-SHOOT_ANGLE)>1.05) {BRANCH mino_AI;}
SET MY.SKILL1,MY.ANGLE;
SET MY.ANGLE,SHOOT_ANGLE;
SHOOT MY;
IF (HIT_DIST==0) {SET MY.ANGLE,MY.SKILL1; BRANCH mino_AI;}
IF (MY.DISTANCE<=50) {SET MY.EACH_TICK,NULL;BRANCH mino_attack;}
SET MY.TARGET,FOLLOW;
SET MY.SPEED,0.3;}
 
ACTION mino_confused {
ADD MY.SKILL3,1; IF (MY.SKILL3>=30) {SET MY.EACH_TICK,mino_AI; END;}
}

//////////Big Bad Mino-Baby//////////
ACTION mino_AI {
SET MY.EACH_TICK,mino_AI;
IF_ABOVE MY.DISTANCE,200; END;
BRANCH mino_wait;
}

//////////Life's over, dude!//////////
ACTION mino_die {
EXCLUSIVE;
FADE_PAL nebel_pal,gamma;
PLAY_SOUND minodie_snd,0.8,MY;
RULE points+=INT(5+RANDOM(2));
SET MY.IF_FAR,NULL;
SET MY.IF_NEAR,NULL;
SET MY.SPEED,0;
SET MY.TARGET,NULL;
SET MY.IF_HIT,NULL;
SET MY.EACH_TICK,NULL;
SET MY.TEXTURE,minoDie_tex;
SET MY.PLAY,1;
SET MY.EACH_CYCLE, mino_dead;
}

ACTION mino_dead {
SET MY.EACH_CYCLE,NULL;
SET MY.PASSABLE,1; 
}

//////////ATTACKEEEEEEEE! Auch der Spieler darf metzeln!//////////
SOUND attack_snd, <attack.wav>;

ACTION axe_swing {
IF_NEQUAL weapon_atk,axe_swing;SET EACH_TICK.3,weapon_atk;
	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET LAYERS.4,axe1_ovr;
	WAITT 2;
	SET LAYERS.4,axe2_ovr;
	WAIT 1;
	SET LAYERS.4,axe3_ovr;
	WAIT 1;
	SET SHOOT_RANGE,11;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg)+extradmg;
	SET LAYERS.4,axe4_ovr;
	WAIT 1;
	SET LAYERS.4,axe5_ovr;
	WAIT 1;
	SET LAYERS.4,axe6_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	WAITT 4;
	IF ((KEY_CTRL==1)||(MOUSE_LEFT==1)) {IF_EQUAL LAYERS.8,conversation_ovr; SKIP 2; WAITT 2; END;}

	IF_NEQUAL weapon_atk,axe_swing; SKIP 4;
	SET LAYERS.4,axe7_ovr;
	WAIT 1;
	SET LAYERS.4,axe8_ovr;
	WAIT 1;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}	

ACTION axe_un {
	WAITT 2;
	SET LAYERS.4,axe8_ovr;
	WAIT 1;
	SET LAYERS.4,axe7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}

ACTION hammer_swing {
IF_NEQUAL weapon_atk,hammer_swing;SET EACH_TICK.3,weapon_atk;
	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET LAYERS.4,hammer1_ovr;
	WAIT 1;
	SET LAYERS.4,hammer2_ovr;
	WAIT 1;
	SET SHOOT_RANGE,11;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg)+extradmg;
	SET LAYERS.4,hammer3_ovr;
	WAITT 2;
	SET LAYERS.4,hammer5_ovr;
	WAIT 1;
	SET LAYERS.4,hammer6_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 2;
	SET LAYERS.4,hammer7_ovr;
	WAIT 1;
	SET LAYERS.4,hammer8_ovr;
	WAIT 1;
	SET LAYERS.4,hammer0_ovr;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	IF_EQUAL weapon_atk,hammer_swing; SKIP 6;
	WAITT 2;
	SET LAYERS.4,hammer8_ovr;
	WAIT 1;
	SET LAYERS.4,hammer7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
	IF_EQUAL LAYERS.8,conversation_ovr; SKIP 4;
	IF_EQUAL KEY_CTRL,1; END;
	IF_EQUAL MOUSE_LEFT,1; END;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}	

ACTION hammer_un {
	WAITT 2;
	SET LAYERS.4,hammer8_ovr;
	WAIT 1;
	SET LAYERS.4,hammer7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}
/*
ACTION axe_swing {
IF_NEQUAL weapon_atk,axe_swing;SET EACH_TICK.3,weapon_atk;
	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET LAYERS.4,axe1_ovr;
	WAIT 1;
	SET LAYERS.4,axe2_ovr;
	WAIT 1;
	SET SHOOT_RANGE,11;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg)+extradmg;
	SET LAYERS.4,axe3_ovr;
	WAITT 2;
	SET LAYERS.4,axe5_ovr;
	WAIT 1;
	SET LAYERS.4,axe6_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 2;
	SET LAYERS.4,axe7_ovr;
	WAIT 1;
	SET LAYERS.4,axe8_ovr;
	WAIT 1;
	SET LAYERS.4,axe0_ovr;
#	WAITT 4;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	IF_EQUAL weapon_atk,axe_swing; SKIP 6;
	WAITT 2;
	SET LAYERS.4,axe8_ovr;
	WAIT 1;
	SET LAYERS.4,axe7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
	IF_EQUAL LAYERS.8,conversation_ovr; SKIP 4;
	IF_EQUAL KEY_CTRL,1; END;
	IF_EQUAL MOUSE_LEFT,1; END;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}	

ACTION axe_un {
	WAITT 2;
	SET LAYERS.4,axe8_ovr;
	WAIT 1;
	SET LAYERS.4,axe7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}
*/
ACTION club_swing {
IF_NEQUAL weapon_atk,club_swing;SET EACH_TICK.3,weapon_atk;
	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET LAYERS.4,club1_ovr;
	WAIT 1;
	SET LAYERS.4,club2_ovr;
	WAIT 1;
	SET LAYERS.4,club3_ovr;
	WAIT 1;	
	SET SHOOT_RANGE,10;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg)+extradmg;
	SET LAYERS.4,club4_ovr;
	WAITT 2;
	SET LAYERS.4,club5_ovr;
	WAIT 1;
	SET LAYERS.4,club6_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 2;
	SET LAYERS.4,club7_ovr;
	WAIT 1;
	SET LAYERS.4,club8_ovr;
	WAIT 1;
	SET LAYERS.4,club0_ovr;
#	WAITT 2;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	IF_EQUAL weapon_atk,club_swing; SKIP 6;
	WAITT 2;
	SET LAYERS.4,club8_ovr;
	WAIT 1;
	SET LAYERS.4,club7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
	IF_EQUAL LAYERS.8,conversation_ovr; SKIP 4;
	IF_EQUAL KEY_CTRL,1; END;
	IF_EQUAL MOUSE_LEFT,1; END;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}	

ACTION club_un {
	WAITT 2;
	SET LAYERS.4,club8_ovr;
	WAIT 1;
	SET LAYERS.4,club7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}

ACTION sword_swing {
IF_NEQUAL weapon_atk,sword_swing;SET EACH_TICK.3,weapon_atk;

	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET LAYERS.4,sword1_ovr;
	WAIT 1;
	SET LAYERS.4,sword2_ovr;
	WAIT 1;
	SET LAYERS.4,sword3_ovr;
	WAIT 1;
	SET SHOOT_RANGE,12;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg)+extradmg;
	SET LAYERS.4,sword4_ovr;
	WAITT 2;
	SET LAYERS.4,sword5_ovr;
	WAIT 1;
	SET LAYERS.4,sword6_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 2;
	SET LAYERS.4,sword7_ovr;
	WAIT 1;
	SET LAYERS.4,sword8_ovr;
	WAIT 1;
	SET LAYERS.4,sword0_ovr;
#	WAITT 4;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	IF_EQUAL weapon_atk,sword_swing; SKIP 6;
	WAITT 2;
	SET LAYERS.4,sword8_ovr;
	WAIT 1;
	SET LAYERS.4,sword7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
	IF_EQUAL LAYERS.8,conversation_ovr; SKIP 4;
	IF_EQUAL KEY_CTRL,1; END;
	IF_EQUAL MOUSE_LEFT,1; END;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}	

ACTION sword_un {
	WAITT 2;
	SET LAYERS.4,sword8_ovr;
	WAIT 1;
	SET LAYERS.4,sword7_ovr;
	WAIT 1;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}

ACTION staff_swing {
IF_NEQUAL weapon_atk,staff_swing;SET EACH_TICK.3,weapon_atk;
#	SET maxdmg,4;
	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET SHOOT_RANGE,15;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg);
	SET LAYERS.4,staff1_ovr;
	WAIT 1;
	SET LAYERS.4,staff2_ovr;
	WAITT 4;
	SET LAYERS.4,staff1_ovr;
	WAIT 1;
	SET LAYERS.4,staff0_ovr;
#	WAITT 4;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	IF_EQUAL weapon_atk,staff_swing; SKIP 4;
	WAITT 2;
	SET LAYERS.4,staff3_ovr;
	WAITT 2;
	SET LAYERS.4,NULL;
	WAITT 4;
	IF_EQUAL LAYERS.8,conversation_ovr; SKIP 4;
	IF_EQUAL KEY_CTRL,1; END;
	IF_EQUAL MOUSE_LEFT,1; END;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}

ACTION staff_un {
	WAITT 2;
	SET LAYERS.4,staff3_ovr;
	WAITT 2;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}

ACTION fist_punch {
IF_NEQUAL weapon_atk,fist_punch;SET EACH_TICK.3,weapon_atk;

	WAIT 1;
	PLAY_SOUND attack_snd,0.8;
	SET SHOOT_RANGE,4;
	SHOOT;
	RULE shotdmg=dmg+RANDOM(maxdmg);
	SET LAYERS.4,fist1_ovr;
	WAIT 1;
	SET LAYERS.4,fist2_ovr;
	WAITT 4;
	SET LAYERS.4,fist1_ovr;
	WAITT 2;
	SET LAYERS.4,fist0_ovr;
	IF (HP<0.5)  {SET LAYERS.4,NULL; SET EACH_TICK.3,NULL;END;}
	IF_EQUAL weapon_atk,fist_punch; SKIP 4;
	WAITT 2;
	SET LAYERS.4,fist3_ovr;
	WAITT 2;
	SET LAYERS.4,NULL;
	WAITT 4;
	IF_EQUAL LAYERS.8,conversation_ovr; SKIP 4;
	IF_EQUAL KEY_CTRL,1; END;
	IF_EQUAL MOUSE_LEFT,1; END;
	SET EACH_TICK.3,NULL;
	SET LAYERS.4,weapon_ovr;
}

ACTION fist_un {
	WAITT 2;
	SET LAYERS.4,fist3_ovr;
	WAITT 2;
	SET LAYERS.4,NULL;
	WAITT 4;
SET LAYERS.4,weapon_ovr;
SET EACH_TICK.4,NULL;}

