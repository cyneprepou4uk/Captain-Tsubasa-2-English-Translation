.segment "BANK_84"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x008010-0x00A00F






    .word _off014_B16D_23_тренер_00
    .word _off014_B1E3_24_тренер_01
    .word _off014_B236_25_тренер_02
    .word _off014_B2A8_26_тренер_03
    .word _off014_B2E4_27_тренер_04
    .word _off014_B34F_28_тренер_05
    .word _off014_B3D1_29_тренер_06
    .word _off014_B41F_2A_тренер_07
    .word _off014_B46B_2B_тренер_08
    .word _off014_B4B4_2C_тренер_09
    .word _off014_B512_2D_тренер_0A
    .word _off014_B556_2E_тренер_0B
    .word _off014_B5E1_2F_тренер_0C
    .word _off014_B61E_30_тренер_0D
    .word _off014_B661_31_тренер_0E
    .word _off014_B6DF_32_тренер_0F
    .word _off014_B720_33_тренер_10
    .word _off014_B785_34_тренер_11
    .word _off014_B7C3_35_тренер_12
    .word _off014_B806_36_тренер_13
    .word _off014_B853_37_тренер_14
    .word _off014_B89C_38_тренер_15
    .word _off014_B913_39_тренер_16
    .word _off014_BA16_3A_тренер_17
    .word _off014_BAD3_3B_тренер_18
    .word _off014_BB12_3C_тренер_19
    .word _off014_BB5A_3D_тренер_1A
    .word _off014_BBA7_3E_тренер_1B
    .word _off014_BBE5_3F_тренер_1C
    .word _off014_BC2A_40_тренер_1D
    .word _off014_BCA7_41_тренер_1E
    .word _off014_BCF9_42_тренер_1F
    .word _off014_BDAD_43_тренер_20
    .word _off014_BE84_44_тренер_роберто
    .word _off014_BE9E_45_тренер_катагири
    .word _off014_BEBC_46_тренер_миками



_off014_B16D_23_тренер_00:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@The Rio Cup has a lot", con_8545_new_line
    .text "of skilled players.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@If we're going to have", con_8545_new_line
    .text "a chance, we need to", con_8545_new_line
    .text "study our opponents.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@The key to victory is", con_8545_new_line
    .text "teamwork - keep the ball", con_8545_new_line
    .text "moving back and forth.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Utilize your players", con_8545_new_line
    .text "well and play to", con_8545_new_line
    .text "their strengths.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B1E3_24_тренер_01:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Ribeiro is Argentina's", con_8545_new_line
    .text "playmaker in the", con_8545_new_line
    .text "midfield - he's", con_8545_new_line
    .text "good at set pieces.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Satrustegui scores a", con_8545_new_line
    .text "lot of headers. Don't", con_8545_new_line
    .text "let them cross the", con_8545_new_line
    .text "ball inside our box!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B236_25_тренер_02:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@The Uruguayan Da", con_8545_new_line
    .text "Silva is playing with", con_8545_new_line
    .text "the typical speed of", con_8545_new_line
    .text "a South American.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Meon can easily stop", con_8545_new_line
    .text "the Drive Shot, but", con_8545_new_line
    .text "that doesn't mean he", con_8545_new_line
    .text "can't be beat.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Long shots, headers", con_8545_new_line
    .text "and crosses - just", con_8545_new_line
    .text "keep trying!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B2A8_26_тренер_03:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Toninho is a midfielder,", con_8545_new_line
    .text "Nei is a winger -", con_8545_new_line
    .text "they both specialize", con_8545_new_line
    .text "in combos.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2268
    .byte con_8545_offset, $81
    .text "@Keep the pressure", con_8545_new_line
    .text "tight on them!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B2E4_27_тренер_04:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Zagallo, the center", con_8545_new_line
    .text "forward, has a blistering", con_8545_new_line
    .text "strike called the", con_8545_new_line
    .text "@Double Eel@.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Dirceu, the center back,", con_8545_new_line
    .text "has a @Cannon Header@", con_8545_new_line
    .text "that's honestly", con_8545_new_line
    .text "frightening!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Hey, maybe I'll treat", con_8545_new_line
    .text "you guys to broiled eel", con_8545_new_line
    .text "in soy sauce after we", con_8545_new_line
    .text "win. It's delicious!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B34F_28_тренер_05:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Flamengo's gotten so far", con_8545_new_line
    .text "in large part due to the", con_8545_new_line
    .text "center forward Carlos'", con_8545_new_line
    .text "Mirage Shot,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .text "and the midfielder", con_8545_new_line
    .text "Santamaria's Banana", con_8545_new_line
    .text "Shot. Put tight markers", con_8545_new_line
    .text "on both of them.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@The time to attack is", con_8545_new_line
    .text "when their defender,", con_8545_new_line
    .text "Jetorio, goes forward", con_8545_new_line
    .text "on an overlapping run.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B3D1_29_тренер_06:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Their defender, Jito,", con_8545_new_line
    .text "uses his physical", con_8545_new_line
    .text "strength,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .text "and a nasty combo-play", con_8545_new_line
    .text "with the forward, Sano.", con_8545_new_line
    .text "Don't let them get", con_8545_new_line
    .text "the best of you.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEA3



_off014_B41F_2A_тренер_07:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@The Tachibana twins use", con_8545_new_line
    .text "their Skylab technique", con_8545_new_line
    .text "as both offensive and", con_8545_new_line
    .text "defensive tactics,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .text "so go in a wide circle", con_8545_new_line
    .text "around them. Mark the", con_8545_new_line
    .text "forward and midfielder,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .text "and keep your defenders", con_8545_new_line
    .text "in front of the goal.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEA3



_off014_B46B_2B_тренер_08:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Their defender, Soda,", con_8545_new_line
    .text "is tough as nails. And", con_8545_new_line
    .text "the goalie, Nakanishi,", con_8545_new_line
    .text "is a brick wall.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@They'll look for a", con_8545_new_line
    .text "gap in your offense,", con_8545_new_line
    .text "and hit you on the", con_8545_new_line
    .text "counterattack.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEA3



_off014_B4B4_2C_тренер_09:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Musashi keeps Misugi", con_8545_new_line
    .text "in reserve for the", con_8545_new_line
    .text "second half, due to", con_8545_new_line
    .text "his heart condition.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Misugi's a quality player,", con_8545_new_line
    .text "so focus on getting goals", con_8545_new_line
    .text "in the first half, when", con_8545_new_line
    .text "the going's easier!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEA3



_off014_B512_2D_тренер_0A:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Furano has strong", con_8545_new_line
    .text "teamwork, all-around.", con_8545_new_line
    .text "Watch out for", con_8545_new_line
    .text "Matsuyama's Eagle Shot.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Their entire side is", con_8545_new_line
    .text "going on the offensive", con_8545_new_line
    .text "when he calls for the", con_8545_new_line
    .text "@Avalanche Attack@,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .text "so keep an eye on them!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEA3



_off014_B556_2E_тренер_0B:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Hyuga's Tiger Shot is", con_8545_new_line
    .text "even more fearsome", con_8545_new_line
    .text "than before.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Also, put a mark on their", con_8545_new_line
    .text "playmaker Sawada, so the", con_8545_new_line
    .text "two don't link up and", con_8545_new_line
    .text "pull of a combo.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Wakashimazu's their", con_8545_new_line
    .text "goalie, and his", con_8545_new_line
    .text "Triangle Jump will", con_8545_new_line
    .text "stop long shots cold.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2268
    .byte con_8545_offset, $81
    .text "@Get close with", con_8545_new_line
    .text "Nitta or Misaki", con_8545_new_line
    .text "and drive it in!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEA3



_off014_B5E1_2F_тренер_0C:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Their forward's name is", con_8545_new_line
    .text "Rampion - he's nicknamed", con_8545_new_line
    .text "@The Hawk of Rome@ due to", con_8545_new_line
    .text "his speed and shot power.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B61E_30_тренер_0D:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@The two forwards", con_8545_new_line
    .text "are Victorino and", con_8545_new_line
    .text "Da Silva - the", con_8545_new_line
    .text "one from Gremio.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@They'll counterattack", con_8545_new_line
    .text "with speed, so keep", con_8545_new_line
    .text "a strong defense.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B661_31_тренер_0E:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Kaltz and their", con_8545_new_line
    .text "midfielder, Metzer,", con_8545_new_line
    .text "will dominate", con_8545_new_line
    .text "the midfield.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Their forward, Kappelman,", con_8545_new_line
    .text "uses his Sidewinder", con_8545_new_line
    .text "shot to score.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@We all know how good", con_8545_new_line
    .text "Wakabayashi is, so", con_8545_new_line
    .text "don't bother with", con_8545_new_line
    .text "long shots.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Get up close, and don't", con_8545_new_line
    .text "waste your chances!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B6DF_32_тренер_0F:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Japan's team this year", con_8545_new_line
    .text "has no real weaknesses.", con_8545_new_line
    .text "This one's for the glory,", con_8545_new_line
    .text "so give it your all!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BE89



_off014_B720_33_тренер_10:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@If we expect to make it", con_8545_new_line
    .text "to the finals in Brazil,", con_8545_new_line
    .text "we cannot lose a", con_8545_new_line
    .text "single game.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Each one of you must", con_8545_new_line
    .text "firmly take charge of", con_8545_new_line
    .text "his own position, and", con_8545_new_line
    .text "work hard on team play.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_B785_34_тренер_11:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@China has a history", con_8545_new_line
    .text "spanning 4,000 years,", con_8545_new_line
    .text "and they have a", con_8545_new_line
    .text "lot to prove.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Watch their movements", con_8545_new_line
    .text "carefully.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_B7C3_35_тренер_12:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Iran has a strong", con_8545_new_line
    .text "and forceful - even", con_8545_new_line
    .text "violent - defense.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@They will try and", con_8545_new_line
    .text "take you out of the", con_8545_new_line
    .text "game, even if it", con_8545_new_line
    .text "means multiple fouls.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    
    .byte con_8545_base_offset
    .word $2269
    .byte con_8545_offset, $81
    .text "@Be careful in", con_8545_new_line
    .text "close duels.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_B806_36_тренер_13:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2269
    .byte con_8545_offset, $81
    .text "@This team will", con_8545_new_line
    .text "rapidly switch", con_8545_new_line
    .text "up offense", con_8545_new_line
    .text "and defense.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@They'll drive for the", con_8545_new_line
    .text "goal through both", con_8545_new_line
    .text "dribbling and powerful", con_8545_new_line
    .text "volley shots.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .text "@Firm up your defense!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_B853_37_тренер_14:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Our opponents play using", con_8545_new_line
    .text "the Brazilian style,", con_8545_new_line
    .text "and can make powerful", con_8545_new_line
    .text "headers inside the box.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@There's also something", con_8545_new_line
    .text "about their goalkeeper...@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_B89C_38_тренер_15:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@The Li brothers already", con_8545_new_line
    .text "warned us about the", con_8545_new_line
    .text "forward Sha and", con_8545_new_line
    .text "midfielder Kim.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@They haven't changed", con_8545_new_line
    .text "their strategy of", con_8545_new_line
    .text "combo-plays and", con_8545_new_line
    .text "Twin Shots.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Let's not let that", con_8545_new_line
    .text "info go to waste -", con_8545_new_line
    .text "for their sake, we", con_8545_new_line
    .text "must win this game,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2268
    .text "and the right to", con_8545_new_line
    .text "represent Asia.", con_8545_new_line
    .text "Go get 'em!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_B913_39_тренер_16:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@We've made it through", con_8545_new_line
    .text "the Asia Qualifiers -", con_8545_new_line
    .text "well done, everyone.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@The JFO made arrangements", con_8545_new_line
    .text "for us to take on some", con_8545_new_line
    .text "@friendly matches@ from", con_8545_new_line
    .text "now until the World Cup"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .text "Group Stage, to keep", con_8545_new_line
    .text "your skills sharp and", con_8545_new_line
    .text "your minds focused.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Yoko will be returning", con_8545_new_line
    .text "to Japan for a bit for", con_8545_new_line
    .text "personal reasons.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Ishizaki, you're in", con_8545_new_line
    .text "charge of the score", con_8545_new_line
    .text "memo until she returns.", con_8545_new_line
    .text "That's all.@"
    .byte con_8545_ball
    
    .byte con_8545_screen_off
    .byte con_8545_clear_3
    .byte con_8545_bg_1, $60
    .byte con_8545_window, $04
    .byte con_8545_animation, $01, $1B
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Wow, Roberto's", con_8545_new_line
    .text "coaching Brazil U-20.", con_8545_new_line
    .text "What a shock...@"
    .byte con_8545_palette, $FF, $00, $0C
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_toggle_cam
    .byte con_8545_animation, $01, $4B
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@I know. But he's a former", con_8545_new_line
    .text "ace, so it's only natural", con_8545_new_line
    .text "they'd want him coaching", con_8545_new_line
    .text "their squad.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $47
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@No matter what, I", con_8545_new_line
    .text "want Roberto to see", con_8545_new_line
    .text "us at our very best.", con_8545_new_line
    .text "We owe it to him..."
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $4B
    .byte con_8545_base_offset
    .word $2267
    .text "...and that means", con_8545_new_line
    .text "winning this match,", con_8545_new_line
    .text "and every single", con_8545_new_line
    .text "one until Brazil!@"
    .byte con_8545_ball
    
    .byte con_8545_screen_off
    .byte con_8545_jump
    .word off_BEBC



_off014_BA16_3A_тренер_17:
    .byte con_8545_window, $04
    .byte con_8545_pause, $01    ; чтобы экран успел отрисоваться пока цубаса меняет палитру
    .byte con_8545_speed, $00
    
    .byte con_8545_animation, $01, $57
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@It looks like next", con_8545_new_line
    .text "up we'll be playing", con_8545_new_line
    .text "exhibition matches", con_8545_new_line
    .text "against Poland,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .text "England, the Soviet", con_8545_new_line
    .text "Union, and France.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $32
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Those are some good", con_8545_new_line
    .text "teams. I guess the", con_8545_new_line
    .text "JFO really want us", con_8545_new_line
    .text "to work for it...@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $42
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@They do. I want you to", con_8545_new_line
    .text "treat these matches just", con_8545_new_line
    .text "like tournament ones,", con_8545_new_line
    .text "and give it your all.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .text "@No slacking off.@"
    .byte con_8545_ball
    
;   .byte con_8545_base_offset
;   .word $2264
;   .text "No slacking off, we're", con_8545_new_line
;   .text "up against Poland now.", con_8545_new_line
;   .text "Dzajic is a highly", con_8545_new_line
;   .text "agile goalkeeper."
;   .byte con_8545_ball
;   .byte con_8545_clear_3
;   
;   .byte con_8545_base_offset
;   .word $2264
;   .text "Don't let their foward", con_8545_new_line
;   .text "Macher break through our", con_8545_new_line
;   .text "defense with his speed."
;   .byte con_8545_ball
;   .byte con_8545_clear_3
    
    .byte con_8545_screen_off
    .byte con_8545_jump
    .word off_BEBC



_off014_BAD3_3B_тренер_18:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@The defender, Robson,", con_8545_new_line
    .text "will get behind our", con_8545_new_line
    .text "special shots.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Focus on lobbing when", con_8545_new_line
    .text "in front of the goal.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_BB12_3C_тренер_19:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@We're facing a team", con_8545_new_line
    .text "with amazing stamina", con_8545_new_line
    .text "and accurate play.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Watch out for the speed", con_8545_new_line
    .text "and persistence of their", con_8545_new_line
    .text "offense and defense.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_BB5A_3D_тренер_1A:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@We're facing France again.", con_8545_new_line
    .text "Their passing and offense", con_8545_new_line
    .text "strategy hasn't changed", con_8545_new_line
    .text "in three years,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .text "but rumors say their", con_8545_new_line
    .text "midfielder, Pierre,", con_8545_new_line
    .text "has a new skill.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2268
    .byte con_8545_offset, $81
    .text "@Mark him - don't", con_8545_new_line
    .text "let him use it.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_BBA7_3E_тренер_1B:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@This team's technique", con_8545_new_line
    .text "is sound - the", con_8545_new_line
    .text "midfielder Espana", con_8545_new_line
    .text "is their playmaker.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Focus on putting all", con_8545_new_line
    .text "men forward and get", con_8545_new_line
    .text "that important goal!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_BBE5_3F_тренер_1C:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Hernandez is their", con_8545_new_line
    .text "goalkeeper, and his", con_8545_new_line
    .text "blood will be running", con_8545_new_line
    .text "hot to shut us out.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Make every finish", con_8545_new_line
    .text "of the ball count!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_BC2A_40_тренер_1D:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@The center forward,", con_8545_new_line
    .text "Islas, who appeared", con_8545_new_line
    .text "all of a sudden", con_8545_new_line
    .text "this season,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .text "is practically a", con_8545_new_line
    .text "genius when it comes", con_8545_new_line
    .text "to tactical awareness", con_8545_new_line
    .text "and technique.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@He and Libuta are", con_8545_new_line
    .text "considered top class", con_8545_new_line
    .text "players in Europe,", con_8545_new_line
    .text "alongside Schneider.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_jump
    .word off_BEC1



_off014_BCA7_41_тренер_1E:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Diaz used to carry", con_8545_new_line
    .text "this team, but along", con_8545_new_line
    .text "with Pascal they've", con_8545_new_line
    .text "added Satrustegui,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .text "Galvan, and Babington.", con_8545_new_line
    .text "Keep alert on defense!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    .byte con_8545_jump
    .word off_BEC1



_off014_BCF9_42_тренер_1F:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2268
    .byte con_8545_offset, $81
    .text "@Wakabayashi will", con_8545_new_line
    .text "share his data on", con_8545_new_line
    .text "West Germany.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $34
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $C6
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Right. Whenever Schneider", con_8545_new_line
    .text "is near our goal, someone", con_8545_new_line
    .text "needs to mark him so he", con_8545_new_line
    .text "doesn't get the ball.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .byte con_8545_offset, $81
    .text "@Keep an eye on Kaltz and", con_8545_new_line
    .text "Schester - they're the", con_8545_new_line
    .text "midfield duo. We need to", con_8545_new_line
    .text "set the pace on this one,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .text "and keep it throughout.", con_8545_new_line
    .text "Tsubasa, Misaki - your", con_8545_new_line
    .text "Golden Combo will win", con_8545_new_line
    .text "the midfield battle.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2264
    .text "@Let's get going, guys!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $42
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_jump
    .word off_BEC1



_off014_BDAD_43_тренер_20:
    .byte con_8545_window, $04
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2266
    .byte con_8545_offset, $81
    .text "@Tsubasa, since you", con_8545_new_line
    .text "played for Sao Paulo,", con_8545_new_line
    .text "Brazil's your table.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $4B
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_base_offset
    .word $2267
    .byte con_8545_offset, $81
    .text "@Santamaria is their", con_8545_new_line
    .text "playmaker in the", con_8545_new_line
    .text "midfield - mark", con_8545_new_line
    .text "him tight!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Don't let him pass the", con_8545_new_line
    .text "ball to Zagallo, Nei,", con_8545_new_line
    .text "Ribeiro, or Carlos.@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@Long shots are useless", con_8545_new_line
    .text "against Gertise. If", con_8545_new_line
    .text "you stand any chance", con_8545_new_line
    .text "of beating him,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2265
    .text "get in his face and", con_8545_new_line
    .text "drive it past him with", con_8545_new_line
    .text "pace on the ball!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $47
    .byte con_8545_base_offset
    .word $2265
    .byte con_8545_offset, $81
    .text "@We've made it this far.", con_8545_new_line
    .text "Playing together as a", con_8545_new_line
    .text "team like we always do,"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_base_offset
    .word $2266
    .text "we can bring home", con_8545_new_line
    .text "the World Cup youth", con_8545_new_line
    .text "trophy a second time.", con_8545_new_line
    .text "Let's go, everyone!!@"
    .byte con_8545_ball
    .byte con_8545_clear_3
    
    .byte con_8545_animation, $01, $42
    .byte con_8545_toggle_cam
    .byte con_8545_palette, $00
    .byte con_8545_jump
    .word off_BEC1



_off014_BE84_44_тренер_роберто:
    .byte con_8545_bg_1, $5F
    .byte con_8545_animation, $01, $3B
off_BE89:
    .byte con_8545_window, $03
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2270
    .text " Roberto:"
    .byte con_8545_new_line
    .text "@Okay, guys.@"
    .byte con_8545_new_line
    .byte con_8545_jump
    .word off_BED6



_off014_BE9E_45_тренер_катагири:
    .byte con_8545_bg_1, $5F
    .byte con_8545_animation, $01, $41
off_BEA3:
    .byte con_8545_window, $03
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2270
    .text " Katagiri:"
    .byte con_8545_new_line
    .text "@Right on,"
    .byte con_8545_new_line
    .text " guys.@"
    .byte con_8545_new_line
    .byte con_8545_jump
    .word off_BED6



_off014_BEBC_46_тренер_миками:
off_BEBC:
    .byte con_8545_bg_1, $5F
    .byte con_8545_animation, $01, $42
off_BEC1:
    .byte con_8545_window, $03
    .byte con_8545_speed, $00
    
    .byte con_8545_base_offset
    .word $2270
    .text " Mikami:"
    .byte con_8545_new_line
    .text "@Alright,"
    .byte con_8545_new_line
    .text " fellas.@"
    .byte con_8545_new_line
off_BED6:
    .byte con_8545_E8, con_BF00_01
    .byte con_8545_palette, $00
    .byte con_8545_exit



.out .sprintf("Free bytes in bank 84: 0x%04X [%d]", ($C000 - *), ($C000 - *))



