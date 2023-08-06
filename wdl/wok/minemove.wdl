//////////Bewegungsaktion fÅr Minenwagenfahrt//////////
SKILL force_x {}
SKILL force_y {}
SKILL force_z {}
SKILL speed {VAL 1; MIN 1; MAX 3;}
SKILL slope {}

ACTION minemove{
        SET FRICTION,0.2;
        #RULE PLAYER_TILT = -1*SLOPE_AHEAD;
        RULE speed.MIN = -2*SLOPE_AHEAD+1;
        RULE speed.MAX = speed.MIN+2;
        RULE speed=speed+0.2*FORCE_AHEAD;
        RULE force_x=0.1*(speed*PLAYER_COS-FORCE_ROT*PLAYER_SIN)
        +0;
        RULE force_y=0.1*(speed*PLAYER_SIN+FORCE_ROT*PLAYER_COS)
        +0;
        ACCEL PLAYER_VX,force_x;
        ACCEL PLAYER_VY,force_y;
        SET FRICTION,0.02;
        SET force_z,-0.2;
        IF_ABOVE PLAYER_HGT,0;
                GOTO fall_down;
        SET FRICTION,0.97;
        RULE force_z=-0.2-PLAYER_HGT*0.1;
fall_down:
        ACCEL PLAYER_VZ,force_z;}

ACTION set_driving {
        SET PLAYER_SIZE,4;
        SET PLAYER_CLIMB,2;
        SET INERTIA,1;
        SET EACH_TICK.16,minemove;}

ACTION set_normal_move {
        SET PLAYER_SIZE,my_size;
        CALL set_walking;}

//////////WÑnde,die Minenwagen um 45¯ drehen//////////
WALL rotator_right {
        TEXTURE black_tex;
        FLAGS TRANSPARENT;
        IF_NEAR prepare_angle_r;}

WALL rotator_left {
        TEXTURE black_tex;
        FLAGS TRANSPARENT;
        IF_NEAR prepare_angle_l;}

ACTION prepare_angle_r {
        SET MY.IF_NEAR,NULL;
        SET MY.PASSABLE,1;
        RULE MY.SKILL7= PLAYER_ANGLE-HALF_PI/2;
        SET MY.EACH_TICK,change_angle_r;}

ACTION prepare_angle_l {
        SET MY.IF_NEAR,NULL;
        SET MY.PASSABLE,1;
        RULE MY.SKILL7= PLAYER_ANGLE+HALF_PI/2;
        SET MY.EACH_TICK,change_angle_l;}

ACTION change_angle_r {
        ADD PLAYER_ANGLE,-0.1;
        IF_ABOVE PLAYER_ANGLE,MY.SKILL7;
                END;
        SET PLAYER_ANGLE,MY.SKILL7;
        SET MY.EACH_TICK,NULL;}

ACTION change_angle_l {
        ADD PLAYER_ANGLE,0.1;
        IF_BELOW PLAYER_ANGLE,MY.SKILL7;
                END;
        SET PLAYER_ANGLE,MY.SKILL7;
        SET MY.EACH_TICK,NULL;}

