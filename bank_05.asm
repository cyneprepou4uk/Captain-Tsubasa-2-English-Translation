.segment "BANK_05"
.include "copy_bank_ram.inc"
; пустой банк, раньше тут были катсцены 10-1F



con_clear_3                 = $E5   ; для окна совета тренера, не стирает первые 2 тайла слева
con_clear_2                 = $E6   ; для окна диалога комментатора, не стирает первые 8 тайлов слева
con_offset                  = $E7   ; + количество тайлов для смещения вправо
con_E8                      = $E8   ; везде 01, кроме экрана перед Presented by Tecmo
con_screen_on               = $E9
con_screen_off              = $EA
con_ball                    = $EB
con_charlie                 = $EC   ; 00 - обычные глаза
                                    ; 01 - маленькие глаза
                                    ; 02 - обычный радостный
                                    ; 03 - радостный с пальцами
                                    ; 04 - радостный с флагом
                                    ; 05 - с микрофоном
                                    ; FF - отключить чарли (но не удаляет его с экрана)
con_sound                   = $ED   ; + номер звука
con_clear_all               = $EE   ; полностью затереть нижнюю часть экрана
con_toggle_mouth            = $EF   ; переключатель, при включении срабатывает не сразу, желательно ставить перед задержкой
con_base_offset             = $F0   ; начальное положение текста + low 2006 + high 2006
con_window                  = $F1
con_speed                   = $F2   ; + интервал между буквами, если 00 то текст выводится сразу
con_palette                 = $F3   ; если + FF, то ???, иначе ???
con_F4                      = $F4   ; 04 - скрыть текст
                                    ; 05 - показать скрытый текст
                                    ; 06 - мячик скрытой катсцены + номер катсцены
                                    ; 07 - возврат из скрытой катсцены
con_F5                      = $F5
con_pause                   = $F6   ; + доп. байт, чем больше тем дольше
con_toggle_cam              = $F7   ; мгновенно сдвигает положение камеры в ту или иную сторону
con_F8                      = $F8   ; 02 - зафризить движение рта персонажа
                                    ; 17 - в скрытой катсцене со шнайдером выводит количество забитых голов
con_bg_1                    = $F9   ; background
con_bg_2                    = $FA   ; background
con_animation               = $FB   ; количество + номера анимаций
con_line                    = $FC   ; new line
con_clear_1                 = $FD   ; очистка текста для обычных диалогов
con_jump                    = $FE   ; jump to a location
con_exit                    = $FF   ; end of the cutscene



    .word off_B16D_23_тренер_00
    .word off_B1E3_24_тренер_01
    .word off_B236_25_тренер_02
    .word off_B2A8_26_тренер_03
    .word off_B2E4_27_тренер_04
    .word off_B34F_28_тренер_05
    .word off_B3D1_29_тренер_06
    .word off_B41F_2A_тренер_07
    .word off_B46B_2B_тренер_08
    .word off_B4B4_2C_тренер_09
    .word off_B512_2D_тренер_0A
    .word off_B556_2E_тренер_0B
    .word off_B5E1_2F_тренер_0C
    .word off_B61E_30_тренер_0D
    .word off_B661_31_тренер_0E
    .word off_B6DF_32_тренер_0F
    .word off_B720_33_тренер_10
    .word off_B785_34_тренер_11
    .word off_B7C3_35_тренер_12
    .word off_B806_36_тренер_13
    .word off_B853_37_тренер_14
    .word off_B89C_38_тренер_15
    .word off_B913_39_тренер_16
    .word off_BA16_3A_тренер_17
    .word off_BAD3_3B_тренер_18
    .word off_BB12_3C_тренер_19
    .word off_BB5A_3D_тренер_1A
    .word off_BBA7_3E_тренер_1B
    .word off_BBE5_3F_тренер_1C
    .word off_BC2A_40_тренер_1D
    .word off_BCA7_41_тренер_1E
    .word off_BCF9_42_тренер_1F
    .word off_BDAD_43_тренер_20
    .word off_BE84_44_тренер_роберто
    .word off_BE9E_45_тренер_катагири
    .word off_BEBC_46_тренер_миками



off_B16D_23_тренер_00:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "The Rio Cup has a lot", con_line
    .text "of skilled players."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "If we're going to have", con_line
    .text "a chance, we need to", con_line
    .text "study our opponents."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "The key to victory is", con_line
    .text "teamwork - keep the ball", con_line
    .text "moving back and forth."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "Utilize your players", con_line
    .text "well and play to", con_line
    .text "their strengths."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B1E3_24_тренер_01:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "Ribeiro is Argentina's", con_line
    .text "playmaker in the", con_line
    .text "midfield - he's", con_line
    .text "good at set pieces."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Satrustegui scores a", con_line
    .text "lot of headers. Don't", con_line
    .text "let them cross the", con_line
    .text "ball inside our box!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B236_25_тренер_02:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "The Uruguayan Danil", con_line
    .text "Silva is playing with", con_line
    .text "the typical speed of", con_line
    .text "a South American."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "Meon can easily stop", con_line
    .text "the Drive Shot, but", con_line
    .text "that doesn't mean he", con_line
    .text "can't be beat."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "Long shots, headers", con_line
    .text "and crosses - just", con_line
    .text "keep trying!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B2A8_26_тренер_03:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "Toninho is a midfielder,", con_line
    .text "Nei is a winger -", con_line
    .text "they both specialize", con_line
    .text "in combos."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2247
    .text "Keep the pressure", con_line
    .text "tight on them!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B2E4_27_тренер_04:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2243
    .text "Zagallo, the center", con_line
    .text "forward, has a blistering", con_line
    .text "strike called the", con_line
    .text "@Double Eel@."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "Dirceu, the center back,", con_line
    .text "has a @Cannon Header@", con_line
    .text "that's honestly", con_line
    .text "frightening!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "Hey, maybe I'll treat", con_line
    .text "you guys to broiled eel", con_line
    .text "in soy sauce after we", con_line
    .text "win. It's delicious!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B34F_28_тренер_05:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "Flamengo's gotten so far", con_line
    .text "in large part due to the", con_line
    .text "center forward Carlos'", con_line
    .text "Mirage Shot,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "and the midfielder", con_line
    .text "Santamaria's Banana", con_line
    .text "Shot. Put tight markers", con_line
    .text "on both of them."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "The time to attack is", con_line
    .text "when their defender,", con_line
    .text "Jetorio, goes forward", con_line
    .text "on an overlapping run."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B3D1_29_тренер_06:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "Their defender, Jitou,", con_line
    .text "uses his physical", con_line
    .text "strength,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "and a nasty combo-play", con_line
    .text "with the forward, Sano.", con_line
    .text "Don't let them get", con_line
    .text "the best of you."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEA3



off_B41F_2A_тренер_07:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "The Tachibana twins use", con_line
    .text "their Skylab technique", con_line
    .text "as both offensive and", con_line
    .text "defensive tactics,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "so go in a wide circle", con_line
    .text "around them. Mark the", con_line
    .text "forward and midfielder,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "and keep your defenders", con_line
    .text "in front of the goal."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEA3



off_B46B_2B_тренер_08:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "Their defender, Souda,", con_line
    .text "is tough as nails. And", con_line
    .text "the goalie, Nakanishi,", con_line
    .text "is a brick wall."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "They'll look for a", con_line
    .text "gap in your offense,", con_line
    .text "and hit you on the", con_line
    .text "counterattack."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEA3



off_B4B4_2C_тренер_09:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "Musashi keeps Misugi", con_line
    .text "in reserve for the", con_line
    .text "second half, due to", con_line
    .text "his heart condition."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2243
    .text "Misugi's a quality player,", con_line
    .text "so focus on getting goals", con_line
    .text "in the first half, when", con_line
    .text "the going's easier!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEA3



off_B512_2D_тренер_0A:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "Furano has strong", con_line
    .text "teamwork, all-around.", con_line
    .text "Watch out for", con_line
    .text "Matsuyama's Eagle Shot."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Their entire side is", con_line
    .text "going on the offensive", con_line
    .text "when he calls for the", con_line
    .text "@Avalanche Attack,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "so keep an eye on them!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEA3



off_B556_2E_тренер_0B:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "Hyuga's Tiger Shot is", con_line
    .text "even more fearsome", con_line
    .text "than before."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2243
    .text "Also, put a mark on their", con_line
    .text "playmaker Sawada, so the", con_line
    .text "two don't link up and", con_line
    .text "pull of a combo."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "Wakashimazu's their", con_line
    .text "goalie, and his", con_line
    .text "Triangle Jump will", con_line
    .text "stop long shots cold."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2248
    .text "Get close with", con_line
    .text "Nitta or Misaki", con_line
    .text "and drive it in!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEA3



off_B5E1_2F_тренер_0C:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2243
    .text "Their forward's name is", con_line
    .text "Rampion - he's nicknamed", con_line
    .text "@The Hawk of Rome@ due to", con_line
    .text "his speed and shot power."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B61E_30_тренер_0D:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "The two forwards are", con_line
    .text "Victorino and Danil", con_line
    .text "Silva - the one", con_line
    .text "from Gremio."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "They'll counterattack", con_line
    .text "with speed, so keep", con_line
    .text "a strong defense."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B661_31_тренер_0E:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "Kaltz and their", con_line
    .text "midfielder, Metzer, will", con_line
    .text "dominate the midfield."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "Their forward, Kappelman,", con_line
    .text "uses his Sidewinder", con_line
    .text "shot to score."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "We all know how good", con_line
    .text "Wakabayashi is, so don't", con_line
    .text "bother with long shots."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "Get up close, and don't", con_line
    .text "waste your chances!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B6DF_32_тренер_0F:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "Japan's team this year", con_line
    .text "has no real weaknesses.", con_line
    .text "This one's for the glory,", con_line
    .text "so give it your all!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BE89



off_B720_33_тренер_10:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "If we expect to make it", con_line
    .text "to the finals in Brazil,", con_line
    .text "we cannot lose a", con_line
    .text "single game."
    .byte con_ball
    .byte con_clear_3
    
    
    .byte con_base_offset
    .word $2245
    .text "Each one of you must", con_line
    .text "firmly take charge of", con_line
    .text "his own position, and", con_line
    .text "work hard on team play."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_B785_34_тренер_11:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "China has a history", con_line
    .text "spanning 4,000 years,", con_line
    .text "and they have a", con_line
    .text "lot to prove."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Watch their movements", con_line
    .text "carefully."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_B7C3_35_тренер_12:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "Iran has a strong", con_line
    .text "and forceful - even", con_line
    .text "violent - defense."
    .byte con_ball
    .byte con_clear_3
    
    
    .byte con_base_offset
    .word $2246
    .text "They will try and", con_line
    .text "take you out of the", con_line
    .text "game, even if it", con_line
    .text "means multiple fouls."
    .byte con_ball
    .byte con_clear_3
    
    
    .byte con_base_offset
    .word $2249
    .text "Be careful in", con_line
    .text "close duels."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_B806_36_тренер_13:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "This team will", con_line
    .text "rapidly switch up", con_line
    .text "offense and defense."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "They'll drive for the", con_line
    .text "goal through both", con_line
    .text "dribbling and powerful", con_line
    .text "volley shots."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "Firm up your defense!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_B853_37_тренер_14:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "Our opponents play using", con_line
    .text "the Brazilian style,", con_line
    .text "and can make powerful", con_line
    .text "headers inside the box."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "There's also something", con_line
    .text "about their goalkeeper..."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_B89C_38_тренер_15:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2244
    .text "The Li brothers already", con_line
    .text "warned us about the", con_line
    .text "forward Sha and", con_line
    .text "midfielder Kim."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "They haven't changed", con_line
    .text "their strategy of", con_line
    .text "combo-plays and", con_line
    .text "Twin Shots."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2243
    .text "Let's not let that info go", con_line
    .text "to waste - for their sake,", con_line
    .text "we must win this game,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2248
    .text "and the right to", con_line
    .text "represent Asia.", con_line
    .text "Go get 'em!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_B913_39_тренер_16:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "We've made it through", con_line
    .text "the Asia Qualifiers -", con_line
    .text "well done, everyone."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2243
    .text "The JFO made arrangements", con_line
    .text "for us to take on some", con_line
    .text "@friendly matches@ from", con_line
    .text "now until the World Cup"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Group Stage, to keep", con_line
    .text "your skills sharp and", con_line
    .text "your minds focused."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Yoko will be returning", con_line
    .text "to Japan for a bit for", con_line
    .text "personal reasons."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Ishizaki, you're in", con_line
    .text "charge of the score", con_line
    .text "memo until she returns.", con_line
    .text "That's all."
    .byte con_ball
    
    .byte con_screen_off
    .byte con_clear_3
    .byte con_bg_1, $60
    .byte con_window, $04
    .byte con_animation, $01, $1B
    .byte con_base_offset
    .word $2246
    .text "Wow, Roberto's", con_line
    .text "coaching Brazil U-20.", con_line
    .text "What a shock..."
    .byte con_palette, $FF, $00, $0C
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $4B
    .byte con_base_offset
    .word $2243
    .text "I know. But he's a former", con_line
    .text "ace, so it's only natural", con_line
    .text "they'd want him coaching", con_line
    .text "their squad."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $47
    .byte con_base_offset
    .word $2246
    .text "No matter what, I", con_line
    .text "want Roberto to see", con_line
    .text "us at our very best.", con_line
    .text "We owe it to him..."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $4B
    .byte con_base_offset
    .word $2246
    .text "...and that means", con_line
    .text "winning this match,", con_line
    .text "and every single", con_line
    .text "one until Brazil!"
    .byte con_ball
    
    .byte con_screen_off
    .byte con_jump
    .word off_BEBC



off_BA16_3A_тренер_17:
    .byte con_window, $04
    .byte con_pause, $01    ; чтобы экран успел отрисоваться пока цубаса меняет палитру
    .byte con_speed, $00
    
    .byte con_animation, $01, $57
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_base_offset
    .word $2246
    .text "It looks like next", con_line
    .text "up we'll be playing", con_line
    .text "exhibition matches", con_line
    .text "against Poland,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "England, the Soviet", con_line
    .text "Union, and France."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $32
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_base_offset
    .word $2246
    .text "Those are some good", con_line
    .text "teams. I guess the", con_line
    .text "JFO really want us", con_line
    .text "to work for it..."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $42
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_base_offset
    .word $2244
    .text "They do. I want you to", con_line
    .text "treat these matches just", con_line
    .text "like tournament ones,", con_line
    .text "and give it your all."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2248
    .text "No slacking off."
    .byte con_ball
    
;   .byte con_base_offset
;   .word $2244
;   .text "No slacking off, we're", con_line
;   .text "up against Poland now.", con_line
;   .text "Dzajic is a highly", con_line
;   .text "agile goalkeeper."
;   .byte con_ball
;   .byte con_clear_3
;   
;   .byte con_base_offset
;   .word $2244
;   .text "Don't let their foward", con_line
;   .text "Macher break through our", con_line
;   .text "defense with his speed."
;   .byte con_ball
;   .byte con_clear_3
    
    .byte con_screen_off
    .byte con_jump
    .word off_BEBC



off_BAD3_3B_тренер_18:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "The defender, Robson,", con_line
    .text "will get behind our", con_line
    .text "special shots."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Focus on lobbing when", con_line
    .text "in front of the goal."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_BB12_3C_тренер_19:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "We're facing a team", con_line
    .text "with amazing stamina", con_line
    .text "and accurate play."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "Watch out for the speed", con_line
    .text "and persistence of their", con_line
    .text "offense and defense."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_BB5A_3D_тренер_1A:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2243
    .text "We're facing France again.", con_line
    .text "Their passing and offense", con_line
    .text "strategy hasn't changed", con_line
    .text "in three years,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "but rumors say their", con_line
    .text "midfielder, Pierre,", con_line
    .text "has a new skill."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2248
    .text "Mark him - don't", con_line
    .text "let him use it."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_BBA7_3E_тренер_1B:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2243
    .text "This team's technique is", con_line
    .text "sound - the midfielder", con_line
    .text "Espana is their playmaker."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "Focus on putting all", con_line
    .text "men forward and get", con_line
    .text "that important goal! "
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_BBE5_3F_тренер_1C:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2245
    .text "Hernandez is their", con_line
    .text "goalkeeper, and his", con_line
    .text "blood will be running", con_line
    .text "hot to shut us out."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2247
    .text "Make every finish", con_line
    .text "of the ball count! "
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_BC2A_40_тренер_1D:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "The center forward,", con_line
    .text "Islas, who appeared", con_line
    .text "all of a sudden", con_line
    .text "this season,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "is practically a", con_line
    .text "genius when it comes", con_line
    .text "to tactical awareness", con_line
    .text "and technique."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2246
    .text "He and Libuta are", con_line
    .text "considered top class", con_line
    .text "players in Europe,", con_line
    .text "alongside Schneider."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_jump
    .word off_BEC1



off_BCA7_41_тренер_1E:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "Diaz used to carry", con_line
    .text "this team, but along", con_line
    .text "with Pascal they've", con_line
    .text "added Satrustegui,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Galvan, and Babington.", con_line
    .text "Keep alert on defense!"
    .byte con_ball
    .byte con_clear_3
    .byte con_jump
    .word off_BEC1



off_BCF9_42_тренер_1F:
    .byte con_window, $04
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2247
    .text "Wakabayashi will", con_line
    .text "share his data on", con_line
    .text "West Germany."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $34
    .byte con_toggle_cam
    .byte con_palette, $C6
    .byte con_base_offset
    .word $2243
    .text "Right. Whenever Schneider", con_line
    .text "is near our goal, someone", con_line
    .text "needs to mark him so he", con_line
    .text "doesn't get the ball."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2244
    .text "Keep an eye on Kaltz and", con_line
    .text "Schester - they're the", con_line
    .text "midfield duo. We need to", con_line
    .text "set the pace on this one,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "and keep it throughout.", con_line
    .text "Tsubasa, Misaki - your", con_line
    .text "Golden Combo will win", con_line
    .text "the midfield battle."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Let's get going, guys!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $42
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_jump
    .word off_BEC1



off_BDAD_43_тренер_20:
    .byte con_window, $02
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2246
    .text "Tsubasa, playing for", con_line
    .text "Sao Paulo, Brazil", con_line
    .text "is your table."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $4B
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_base_offset
    .word $2246
    .text "Santamaria is their", con_line
    .text "playmaker in the", con_line
    .text "midfield, mark", con_line
    .text "him tight!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Don't let him pass the", con_line
    .text "ball to Zagallo, Nei,", con_line
    .text "Ribeiro, or Carlos."
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "Long shots are useless", con_line
    .text "against Gertise. If", con_line
    .text "you stand any chance", con_line
    .text "of beating him,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "get in his face and", con_line
    .text "drive it past him with", con_line
    .text "pace on the ball!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $47
    .byte con_base_offset
    .word $2245
    .text "We've made it this far.", con_line
    .text "Playing together as a", con_line
    .text "team like we always do,"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_base_offset
    .word $2245
    .text "we can bring home the", con_line
    .text "World Cup for youth", con_line
    .text "players a second time.", con_line
    .text "Let's do it!!"
    .byte con_ball
    .byte con_clear_3
    
    .byte con_animation, $01, $42
    .byte con_toggle_cam
    .byte con_palette, $00
    .byte con_jump
    .word off_BEC1



off_BE84_44_тренер_роберто:
    .byte con_bg_1, $5F
    .byte con_animation, $01, $3B
off_BE89:
    .byte con_window, $03
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2250
    .text " Roberto:"
    .byte con_line
    .text "@Okay, guys.@"
    .byte con_line
    .byte con_jump
    .word off_BED6



off_BE9E_45_тренер_катагири:
    .byte con_bg_1, $5F
    .byte con_animation, $01, $41
off_BEA3:
    .byte con_window, $03
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2250
    .text " Katagiri:"
    .byte con_line
    .text "@Right on,"
    .byte con_line
    .text " guys.@"
    .byte con_line
    .byte con_jump
    .word off_BED6



off_BEBC_46_тренер_миками:
off_BEBC:
    .byte con_bg_1, $5F
    .byte con_animation, $01, $42
off_BEC1:
    .byte con_window, $03
    .byte con_speed, $00
    
    .byte con_base_offset
    .word $2250
    .text " Mikami:"
    .byte con_line
    .text "@Alright,"
    .byte con_line
    .text " fellas.@"
    .byte con_line
off_BED6:
    .byte con_E8, $01
    .byte con_palette, $00
    .byte con_exit
