//////////FONTS//////////
FONT svld_font, <savefont.pcx>,8,14;
FONT display_font, <dispfont.pcx>,14,29;
FONT big_font, <bigfont.pcx>,10,36;
FONT msg_font, <msgfont2.pcx>,8,14;
FONT italic_font, <msgfont3.pcx>,7,15;
FONT italicN_font, <buyfont.pcx>,6,15;
FONT small_font, <msgfont.pcx>,5,18;
FONT inv_font, <invfont.pcx>,4,7;
//////////STRINGS//////////

STRING load_str,"LOADING...";
STRING save_str,"SAVING...";
STRING wait_str,"PLEASE WAIT...";
STRING anykey_str,"Press any key";
STRING ld_str,"LOAD GAME";
STRING sv_str,"SAVE GAME";
STRING slot1_str,"Empty Slot    ";
STRING slot2_str,"Empty Slot    ";
STRING slot3_str,"Empty Slot    ";
STRING slot4_str,"Empty Slot    ";
STRING slot5_str,"Empty Slot    ";
STRING slot6_str,"Empty Slot    ";
#STRING pause_str,"GAME PAUSED";
STRING pause_str,"  ";
STRING lores_str,"low";
STRING hires_str,"high";
STRING inventory_str, "     BACKPACK\n\nITEM\n\n\n\n\n\n\n\n\n\nWEIGHT     /     ";
STRING buymenu_str, " ITEMS FOR SALE\n\n\n\n\n\n\n\n\n\n\n\nPRICE       GOLD";
STRING sellmenu_str, "     BACKPACK\n\nITEM\n\n\n\n\n\n\n\n\n\nVALUE       GOLD";
STRING buyinfo_str, "Gold\nWeight     /";     
STRING char_str, " MARTEK'S STATUS\n\nLEVEL\n\nSTRENGTH\nSTAMINA\nWISDOM\nAGILITY\n\nARMOR\nDAMAGE\nNEEDED EXP";
STRING spell_str, "  ARCANE POWERS\n";
STRING spell1_str, "H HEAL";
STRING spell2_str, "M MAGIC ARROW";
STRING spell3_str, "N NIGHT VISION";
STRING spell4_str, "B FIREBALL";
STRING spell5_str, "F FLY";
STRING spell6_str, "S SHIELD";
STRING spell7_str, "L LIGHTNING";
STRING spell8_str, "C CURE";
STRING spell9_str, "E EXPLOSION";
STRING spell10_str,"T TOWN PORTAL";
STRING spell0_str, " ";
STRING ready2train_str,"HMMM... I SHOULD GO TRAINING...";
STRING nomap_str,"NO AUTOMAP AVAILABLE";
STRING nosave_str,"YOU CANNOT SAVE YOUR GAME HERE";
SYNONYM resolution_str {TYPE STRING;}
STRING help_str,"HELP\n\nESC main menu\nF1  help\nF2  save game\nF3  load game\nF4  new game
F6  inventory\nF7  character\nF8  spellbook\nF10 end game
F11 brightness\nF12 options\nP   pause game\n\n\n\n
\n\n  page 1 of 4     ~";

STRING help_str2,"PLAYER CONTROLS\n\nUP    forward\nDOWN  backward\nLEFT  turn left\nRIGHT turn right\nSHIFT sneak
A     jump\nZ     crouch\nPGUP  look up\nPGDN  look down
END   center view\nSPACE activate\nTAB   automap\n&/-   zoom map
CTRL  use weapon\n\n\n\n\n^ page 2 of 4     ~";

STRING help_str3,"INVENTORY\n\nINS   page up\nDEL   page down
POS1  equip weapon\n      equip armor\nENTER use item\nD     drop item\nBKSPC unequip armor
ALT1-5 set hotkey\n1-5   use hotkey\n
ARCANE POWERS\n\nH heal\nN night vision
\n\n\n
^ page 3 of 4     ~";

STRING help_str4,"        THE\n WORLD OF KANDORIA \n  preview version\n\n
    created by\n\n   ROBERT J[GER\nTEUFELSGRABENWEG 10\n    83626 GRUB\n
      germany\n\n\nicq 12525151\nemail MASTER<AT>
        FIROBALL.DE\nweb WWW.FIROBALL.DE\nphone ON DEMAND
\n^ page 4 of 4";

#STRING help_str4,"INVENTORY\n\nINS page up\nDEL page down\n@   use item\n
#ARCANE POWERS\n\nH heal\nM magic arrow\nN night vision
#B fireball\nF fly\nS shield\nL lightning\nC cure\nE explosion
#T town portal\n\n\n^ page 4 of 4";

STRING quit_str," ARE YOU SURE YOU \nWANT TO QUIT(Y/N)?";
STRING new_str," START A NEW GAME \n      (Y/N)?      ";
STRING reload_str," LOAD SAVED GAME \n      (Y/N)?      ";
STRING nomana_str,"not enough mana";
STRING nospell_str,"i don't know this spell";
STRING noweapon_str,"better not in town";
STRING menu_str,"NEW GAME\nSAVE GAME\nLOAD GAME\nOPTIONS\nHELP\nQUIT";
STRING opt_str,"RESOLUTION\n\nSOUND VOLUME\n\nMUSIC VOLUME\n\nBRIGHTNESS";
STRING disp_str,"LIFE     INVENTORY                 ARMOR        MANA";
STRING camera_str, "CAMERA VIEW";
STRING training_str_str,"BLA...BLUBBER...SCHWALL";
#STRING training_str_str, "CHOOSE A SKILL...\n\nTHE STRONGER YOU ARE, THE\nMORE DAMAGE YOU CAUSE. ";
STRING training_int_str, "CHOOSE A SKILL...\N\NA HIGH INTELLIGENCE LETS\NYOUR SPELLS GET MORE\NPOWERFUL.";
STRING training_con_str, "CHOOSE A SKILL...\N\NINCREASES YOUR AMOUNT OF\NHITPOINTS.";
STRING training_spd_str, "CHOOSE A SKILL...\N\NINCREASES YOUR ARMOR CLASS."; 
STRING marker_str, "~";
STRING marker2_str, "^";
STRING pts_left_str, "POINTS LEFT";
STRING nix_str,"   ";

STRING contest_str, "That's the end of the
contest version.I hope
it was fun to play,feel
free to write me your
comments.The more
extensive official demo
of KANDORIA is scheduled
for spring.

12/28/99 Firoball

Press ANY KEY to quit...";

//////////INVENTORY-STRINGS//////////
STRING str_10050, "        COMMON\n        AXE\n\nDAMAGE 1-10\n\nNOTHING SPECIAL";
STRING str_10100, "        COMMON\n        SWORD\n\nDAMAGE 1-6\n\nNOTHING SPECIAL";
STRING str_10150, "        COMMON\n        CLUB\n\nDAMAGE 1-8\n\nNOTHING SPECIAL";
STRING str_10200, "        COMMON\n        STAFF\n\nDAMAGE 1-4\n\nNOTHING SPECIAL";
STRING str_250, "        HEALING\n        POTION\n\nRECOVERS 15 LIFE";
STRING str_300, "        MANA\n        POTION\n\nRECOVERS 15 MANA";
STRING str_350, "        IRON KEY\n\n\nAN OLD KEY";
STRING str_400, "        BROWN KEY\n\n\nA RUSTY KEY";
STRING str_450, "        STRENGTH\n        POTION\n\nINCREASES\nSTRENGTH";
STRING str_500, "        AGILITY\n        POTION\n\nINCREASES\nAGILITY";
STRING str_550, "        STAMINA\n        POTION\n\nINCREASES\nSTAMINA";
STRING str_600, "        WISDOM\n        POTION\n\nINCREASES\nWISDOM";
STRING str_15050, "        PLATE\n        ARMOR\n\nARMOR CLASS 5\n\nNOTHING SPECIAL";

//////////TEXTE//////////
TEXT info_txt {
        POS_X 153;
        POS_Y 162;
        FONT big_font;
        FLAGS CENTER_X,CENTER_Y,CONDENSED;
        STRING nix_str;}

TEXT menu_txt {
        POS_X 153;
        POS_Y 90;
        FONT big_font;
        FLAGS CENTER_X,CONDENSED;
        STRING menu_str;}

TEXT training_txt {
        POS_X 160;
        POS_Y 90;
        FONT msg_font;
        FLAGS CENTER_X,CONDENSED;
        STRING training_str_str;}

TEXT marker_txt {
	POS_X 65;
	POS_Y 158;
	FONT msg_font;
	STRING marker_str;}

TEXT shopmarker_txt {
	POS_X 122;
	POS_Y 265;
	FONT italic_font;
	STRING marker2_str;}

TEXT options_txt {
        POS_X 153;
        POS_Y 18;
        FONT big_font;
        FLAGS CENTER_X,CONDENSED;
        STRING opt_str;}

TEXT svld_txt {
	POS_X 153;
	POS_Y 58;
	FONT big_font;
	FLAGS CENTER_X,CONDENSED;
	STRING sv_str;}

TEXT help_txt {
        POS_X 93;
        POS_Y 27;
        FONT msg_font;
        FLAGS CONDENSED;
	STRING help_str;}

TEXT anzeige_txt {
        POS_X 142;
        POS_Y 2;
        FONT msg_font;
        FLAGS CENTER_X,CONDENSED;
        STRING nix_str;}

TEXT new_txt {
        POS_X 150;
        POS_Y 149;
        FONT msg_font;
        FLAGS CENTER_X,CONDENSED;
        STRING new_str;}

TEXT reload_txt {
        POS_X 150;
        POS_Y 149;
        FONT msg_font;
        FLAGS CENTER_X,CONDENSED;
        STRING reload_str;}

TEXT quit_txt {
        POS_X 150;
        POS_Y 149;
        FONT msg_font;
        FLAGS CENTER_X,CONDENSED;
        STRING quit_str;}

TEXT hi_lo_txt {
        POS_X 160;#128;
        POS_Y 64;
        FLAGS CENTER_X, CONDENSED;
	FONT msg_font;
        STRING nix_str;}

TEXT inv_txt {
        POS_X 3;
        POS_Y 84;
        FONT small_font;
        STRINGS 1;
	STRING inventory_str;}

TEXT buymenu_txt {
        POS_X 3;
        POS_Y 84;
        FONT small_font;
STRING buymenu_str;}

TEXT sellmenu_txt {
        POS_X 3;
        POS_Y 84;
        FONT small_font;
STRING sellmenu_str;}

TEXT buyinfo_txt {
POS_X 218;
POS_Y 91;
FONT italic_font;
FLAGS CONDENSED;
STRING buyinfo_str;}

TEXT i_item_txt {
        POS_X 3;
        POS_Y 138;
        FONT small_font;
        STRINGS 1;
	STRING nix_str;}

TEXT char_txt {
        POS_X 3;
        POS_Y 84;
        FONT small_font;
        STRINGS 2;
	STRING char_str,nix_str;}

TEXT spell_txt {
	POS_X 3;
	POS_Y 84;
	FONT small_font;
	STRINGS 11;
	STRING spell_str,spell1_str,spell2_str,spell3_str,spell4_str,spell5_str,spell6_str,spell7_str,spell8_str,spell9_str,spell10_str;}

TEXT disp_txt {
	POS_X 30;
        POS_Y 333;
	FONT small_font;
        STRING disp_str;}

TEXT camera_txt {
        POS_X 6;
        POS_Y 2;
        FONT msg_font;
        FLAGS CONDENSED;
	STRING camera_str;}

TEXT slot1_txt {
        POS_X 110;
        POS_Y 99;
        FONT svld_font;
	FLAGS CONDENSED;
        STRING slot1_str;}

TEXT slot2_txt {
        POS_X 110;
        POS_Y 135;
        FONT svld_font;
	FLAGS CONDENSED;
        STRING slot2_str;}

TEXT slot3_txt {
        POS_X 110;
        POS_Y 171;
        FONT svld_font;
	FLAGS CONDENSED;
        STRING slot3_str;}

TEXT slot4_txt {
        POS_X 110;
        POS_Y 207;
        FONT svld_font;
	FLAGS CONDENSED;
        STRING slot4_str;}

TEXT slot5_txt {
        POS_X 110;
        POS_Y 243;
        FONT svld_font;
	FLAGS CONDENSED;
        STRING slot5_str;}

TEXT slot6_txt {
        POS_X 110;
        POS_Y 279;
        FONT svld_font;
	FLAGS CONDENSED;
        STRING slot6_str;}

TEXT anykey_txt {
POS_X 160;
POS_Y 309;
FLAGS CENTER_X,CONDENSED;
FONT italic_font;
STRING anykey_str;}



STRING story_str, "
An extract of Martek's diary\n\nLife could be so easy...
But the blood of an adventurer is flowing in
my veins. It's like an addiction...
I just can't stop...
So it had to come. I packed all the necessary
things and headed towards the high mountains.
It is said that there are many great
treasures hidden in the mountains... I'd like
to find one of them.
So I just followed my sentiments and traveled
deep into the mountains. A long journey, but
also a very boring one. Nothing exciting
happened, I almost got eaten by a bear while
I was sleeping and there was a heavy
thunderstorm and I found no place to hide. I
hate boring journeys, but I can't change it.
That's life...
I was able to see a small village in the
distance...
I decided to head there first.
";
 
TEXT story_txt {
        POS_X 160;
        POS_Y 400;
        FLAGS CENTER_X, CONDENSED;
	FONT italic_font;
        STRING story_str;}

ACTION scroll_text {ADDT story_txt.POS_Y,-.8;}

STRING shopping_str, "Buy Weapon
Sell Item 
Leave      ";

TEXT shopping_txt {
	POS_X 163;
	POS_Y 250;
	FLAGS CENTER_X, CONDENSED;
	FONT italic_font;
	STRING shopping_str;}

STRING shop_yesno_str, "Yes
No ";

TEXT shop_yesno_txt {
	POS_X 163;
	POS_Y 250;
	FLAGS CENTER_X, CONDENSED;
	FONT italic_font;
	STRING shop_yesno_str;}

STRING gorgan_hi_str, "                                Gorgan\n
Hello,my friend!I have the best weapons in town.
So what are your wishes?";

STRING gorgan_bye_str, "                                Gorgan\n
Please drop by again,adventurer!";

STRING gorgan_sell_str, "                                Gorgan\n
Which items would you like to sell?";

STRING gorgan_buy_str, "                                Gorgan\n
Take a look at the weapons I sell.\nChoose the things you need.";

STRING gorgan_pay_str, "                                Gorgan\n
Many thanks.I can always need this stuff.\nWant to sell some more things?";

STRING gorgan_sold_str, "                                Gorgan\n
I'm sure you'll like it!\nWant to buy anything else?";

STRING gorgan_ask_str, "                                Gorgan\n
Anything else I could do for you?";

STRING gorgan_gaga_str, "                                Gorgan\n
Very funny.\nNow c'mon.Lets get serious again!";

STRING gorgan_nosell_str, "                                Gorgan\n
You don't want to sell it?";

STRING gorgan_nobuy_str, "                                Gorgan\n
You don't want to buy the weapon?";

STRING gorgan_nogold_str, "                                Gorgan\n
Sorry...but you don't have enough gold.";

STRING gorgan_weight_str, "                                Gorgan\n
Wait a moment...You cannot carry this weapon.";

STRING peter1_str, "Peter                                   \n
Nice hen,nice hen...I will catch you!!Oh...Hi!
I want to go to the forest,but mom doesn't allow it
because people say it is spooking there...
Stupid ghosts!Now I must spend all my time hunting
this silly hen!I WANT TO GO OUT!!!";

STRING nicki1_str, "Nicki                                   \n
Psst...I want to tell you something.This cemetery
over there is cursed.There was a big massacre on
that place a century ago.";

STRING nicki2_str, "Nicki                                   \n
The orcs attacked the village without any reason
and destroyed almost everything.A big war broke out
...blood,so much blood...all those dead bodies...";

STRING nicki3_str, "Nicki                                   \n
...weapons lying in the grass everywhere,it must
have been cruel...My grandmother told me all those
things,but I can feel that all this is true...";

STRING nicki4_str, "Nicki                                   \n
even if I have not seen it with my own eyes...Even
now this cemetery is scary...things are going from
bad to worse the nearer you come to this place...";

STRING nicki5_str, "Nicki                                   \n
I once sneaked through the gate.There were
skeletons roaming around.They had a strange glowing
in their eyes...";

STRING nicki6_str, "Nicki                                   \n
..as if they were controlled by a superior might...
...and there were also rotten zombies shuffling
between the tombs.I was so scared.";

STRING leader1_str, "Kevin                                   \n
Hi...This is the first time I meet you here in
Dexter.You must be an adventurer,right?
I am the leader of this village.It looks as";

STRING leader2_str, "Kevin                                   \n
if we all were under a bad curse.Since we had this
cave-in many strange things happened.The villagers
live in fear...and I don't know what I should do...";

STRING tim1_str, "Tim\n
Why must all those\nadventurers be so\nstupid??\nI told him not to go\ninto this creepy
forest,but he did not\nlisten to me.\nI wish I could have\nprevented him from
leaving and dying in\nsuch a terrible way.\n\nI feel guilty.";

STRING eric_str, "Eric                                    \n
Hello,stranger!Welcome to our small town Dexter.
I'm guarding the entrance.
It makes the people feel save.";

STRING timcut_str, "Tim\n
It has a reason that the forest is called The Dark\nForest. There are ghosts flying around and many
evil beings live there. It is far too dangerous\nto travel through this forest to The Gray Tower of
the old magician alone.";

STRING craigcut_str, "Craig                                   \n
HAHAHA...Just kidding,huh?
I will find this tower,and do not try to stop me!
Farewell!";
 
TEXT conversation_txt {
        POS_X 163;
        POS_Y 309;#68;
        FLAGS CENTER_X,CONDENSED;
FONT italic_font;
        STRING contest_str;}

TEXT sign_txt {
        POS_X 160;
        POS_Y 98;
        FLAGS CENTER_X,CONDENSED;
	FONT italic_font;
        STRING nix_str;}
















































