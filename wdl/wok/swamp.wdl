SKILL waving {MIN 0; MAX 1; VAL 0;}
ACTION enter_swamp {
        SET PLAYER_LIGHT,1;
        SET AMBIENT,0.2;
        }

REGION swamp {
        FLOOR_HGT 0;
        CEIL_HGT 12;
        FLOOR_TEX swamp_tex;
        CEIL_TEX sky1_tex;
        FLAGS FLOOR_ASCEND;
        EACH_TICK swamp_wave;
        }

REGION swamp2 {
        FLOOR_HGT 0;
        CEIL_HGT 12;
        FLOOR_TEX swamp_tex;
        CEIL_TEX sky1_tex;
        FLAGS FLOOR_ASCEND;
        }

REGION swamprand {
        FLOOR_HGT 0;
        CEIL_HGT 12;
        FLOOR_TEX stfloor20_tex;
        CEIL_TEX sky1_tex;
        }

REGION swampwindow {
        AMBIENT -0.3;
        FLOOR_HGT 0;
        CEIL_HGT 12;
        FLOOR_TEX stfloor17_tex;
        CEIL_TEX stfloor17_tex;
        }

REGION swampdoor1 {
        AMBIENT -0.3;
        FLOOR_HGT 0;
        CEIL_HGT 0;
        FLOOR_TEX stfloor12_tex;
        CEIL_TEX stfloor12_tex;
        SKILL7,13;
        FLAGS FLAG6,SAVE;}

WALL swampdoortex1 {
        TEXTURE door1_tex;
        IF_HIT swampdoor1_activate;
        FLAGS PORTCULLIS,SAVE;
        POSITION 0;
        }

ACTION swampdoor1_activate {
        SET_ALL swampdoor1.EACH_TICK,ceildoor_open;}

ACTION swamp_wave {
        ADD waving,0.05;
        LIFT THERE,0.1;
        IF_ABOVE waving,0.95;
        SET_ALL THERE.EACH_TICK,swamp_wave2;
        }
ACTION swamp_wave2 {
        ADD waving,-0.05;
        LIFT THERE,-0.1;
        IF_BELOW waving,0.05;
        SET_ALL THERE.EACH_TICK,swamp_wave;
        }
