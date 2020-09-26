.segment "BANK_06"
.include "copy_bank_ram.inc"
; тут только данные
; поинтеры в 0x000485
; перемещать код можно только после начальной таблицы поинтеров

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
    .word off_BEDB_47_первый_перерыв_йоко
    .word off_BEE1_48_перерыв_йоко
    .word off_BEEB_49_первый_перерыв_санае
    .word off_BEF1_4A_перерыв_санае
    .word off_BEFB_4B_первый_перерыв_ишизаки
    .word off_BF2A_4C_перерыв_ишизаки
    .word off_BF54_4D_пароль_йоко
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF5A_4F_пароль_санае
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF60_51_пароль_ишизаки
    .word off_BF7D_4E_удачи_после_пароля
    .word off_BF90_53_новый_уровень_йоко
    .word off_BF96_54_новый_уровень_санае
    .word off_BF9C_55_новый_уровень_ишизаки
    .word off_BFBA_56_сан_паулу_перед_матчем
    .word off_BFC4_57_нанкацу_перед_матчем
    .word off_BFCE_58_япония_перед_матчем



off_B16D_23_тренер_00:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "The Rio Cup has a lot", con_катсцена_новая_строка
    .text "of skilled players."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "If we're going to have", con_катсцена_новая_строка
    .text "a chance, we need to", con_катсцена_новая_строка
    .text "study our opponents."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "The key to victory is", con_катсцена_новая_строка
    .text "teamwork - keep the ball", con_катсцена_новая_строка
    .text "moving back and forth."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "Utilize your players", con_катсцена_новая_строка
    .text "well and play to", con_катсцена_новая_строка
    .text "their strengths."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B1E3_24_тренер_01:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "Ribeiro is Argentina's", con_катсцена_новая_строка
    .text "playmaker in the", con_катсцена_новая_строка
    .text "midfield - he's", con_катсцена_новая_строка
    .text "good at set pieces."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Satrustegui scores a", con_катсцена_новая_строка
    .text "lot of headers. Don't", con_катсцена_новая_строка
    .text "let them cross the", con_катсцена_новая_строка
    .text "ball inside our box!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B236_25_тренер_02:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "The Uruguayan Danil", con_катсцена_новая_строка
    .text "Silva is playing with", con_катсцена_новая_строка
    .text "the typical speed of", con_катсцена_новая_строка
    .text "a South American."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "Meon can easily stop", con_катсцена_новая_строка
    .text "the Drive Shot, but", con_катсцена_новая_строка
    .text "that doesn't mean he", con_катсцена_новая_строка
    .text "can't be beat."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "Long shots, headers", con_катсцена_новая_строка
    .text "and crosses - just", con_катсцена_новая_строка
    .text "keep trying!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B2A8_26_тренер_03:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "Toninho is a midfielder,", con_катсцена_новая_строка
    .text "Nei is a winger -", con_катсцена_новая_строка
    .text "they both specialize", con_катсцена_новая_строка
    .text "in combos."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2247
    .text "Keep the pressure", con_катсцена_новая_строка
    .text "tight on them!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B2E4_27_тренер_04:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2243
    .text "Zagallo, the center", con_катсцена_новая_строка
    .text "forward, has a blistering", con_катсцена_новая_строка
    .text "strike called the", con_катсцена_новая_строка
    .text "@Double Eel@."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "Dirceu, the center back,", con_катсцена_новая_строка
    .text "has a @Cannon Header@", con_катсцена_новая_строка
    .text "that's honestly", con_катсцена_новая_строка
    .text "frightening!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "Hey, maybe I'll treat", con_катсцена_новая_строка
    .text "guys you to broiled eel", con_катсцена_новая_строка
    .text "in soy sauce after we", con_катсцена_новая_строка
    .text "win. It's delicious!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B34F_28_тренер_05:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "Flamengo's gotten so far", con_катсцена_новая_строка
    .text "in large part due to the", con_катсцена_новая_строка
    .text "center forward Carlos'", con_катсцена_новая_строка
    .text "Mirage Shot,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "and the midfielder", con_катсцена_новая_строка
    .text "Santamaria's Banana Shot.", con_катсцена_новая_строка
    .text "Put tight markers on", con_катсцена_новая_строка
    .text "Carlos and Santamaria."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "The time to attack is", con_катсцена_новая_строка
    .text "when their defender,", con_катсцена_новая_строка
    .text "Jetorio, goes forward", con_катсцена_новая_строка
    .text "on an overlapping run."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B3D1_29_тренер_06:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "Their defender, Jitou,", con_катсцена_новая_строка
    .text "uses his physical", con_катсцена_новая_строка
    .text "strength,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "and a nasty combo-play", con_катсцена_новая_строка
    .text "with the forward, Sano.", con_катсцена_новая_строка
    .text "Don't let them get", con_катсцена_новая_строка
    .text "the best of you."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B41F_2A_тренер_07:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "The Tachibana twins use", con_катсцена_новая_строка
    .text "their Skylab technique", con_катсцена_новая_строка
    .text "as both offensive and", con_катсцена_новая_строка
    .text "defensive tactics,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "so go in a wide circle", con_катсцена_новая_строка
    .text "around them. Mark the", con_катсцена_новая_строка
    .text "forward and midfielder,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "and keep your defenders", con_катсцена_новая_строка
    .text "in front of the goal."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B46B_2B_тренер_08:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "Their defender, Souda,", con_катсцена_новая_строка
    .text "is tough as nails. And", con_катсцена_новая_строка
    .text "the goalie, Nakanishi,", con_катсцена_новая_строка
    .text "is a brick wall."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "They'll look for a", con_катсцена_новая_строка
    .text "gap in your offense,", con_катсцена_новая_строка
    .text "and hit you on the", con_катсцена_новая_строка
    .text "counterattack."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B4B4_2C_тренер_09:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "Musashi keeps Misugi", con_катсцена_новая_строка
    .text "in reserve for the", con_катсцена_новая_строка
    .text "second half, due to", con_катсцена_новая_строка
    .text "his heart condition."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2243
    .text "Misugi's a quality player,", con_катсцена_новая_строка
    .text "so focus on getting goals", con_катсцена_новая_строка
    .text "in the first half, when", con_катсцена_новая_строка
    .text "the going's easier!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B512_2D_тренер_0A:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "Furano has strong", con_катсцена_новая_строка
    .text "teamwork, all-around.", con_катсцена_новая_строка
    .text "Watch out for", con_катсцена_новая_строка
    .text "Matsuyama's Eagle Shot."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Their entire side is", con_катсцена_новая_строка
    .text "going on the offensive", con_катсцена_новая_строка
    .text "when he calls for the", con_катсцена_новая_строка
    .text "@Avalanche Attack,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "so keep an eye on them!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B556_2E_тренер_0B:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "Hyuga's Tiger Shot is", con_катсцена_новая_строка
    .text "even more fearsome", con_катсцена_новая_строка
    .text "than before."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2243
    .text "Also, put a mark on their", con_катсцена_новая_строка
    .text "playmaker Sawada, so the", con_катсцена_новая_строка
    .text "two don't link up and", con_катсцена_новая_строка
    .text "pull of a combo."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "Wakashimazu's their", con_катсцена_новая_строка
    .text "goalie, and his", con_катсцена_новая_строка
    .text "Triangle Jump will", con_катсцена_новая_строка
    .text "stop long shots cold."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2248
    .text "Get close with", con_катсцена_новая_строка
    .text "Nitta or Misaki", con_катсцена_новая_строка
    .text "and drive it in!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEA3



off_B5E1_2F_тренер_0C:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2243
    .text "Their forward's name is", con_катсцена_новая_строка
    .text "Rampion - he's nicknamed", con_катсцена_новая_строка
    .text "@The Hawk of Rome@ due to", con_катсцена_новая_строка
    .text "his speed and shot power."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B61E_30_тренер_0D:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "The two forwards are", con_катсцена_новая_строка
    .text "Victorino and Danil", con_катсцена_новая_строка
    .text "Silva - the one", con_катсцена_новая_строка
    .text "from Gremio."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "They'll counterattack", con_катсцена_новая_строка
    .text "with speed, so keep", con_катсцена_новая_строка
    .text "a strong defense."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B661_31_тренер_0E:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "Kaltz and their", con_катсцена_новая_строка
    .text "midfielder, Metzer, will", con_катсцена_новая_строка
    .text "dominate the midfield."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "Their forward, Kappelman,", con_катсцена_новая_строка
    .text "uses his Sidewinder", con_катсцена_новая_строка
    .text "shot to score."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "We all know how good", con_катсцена_новая_строка
    .text "Wakabayashi is, so don't", con_катсцена_новая_строка
    .text "bother with long shots."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "Get up close, and don't", con_катсцена_новая_строка
    .text "waste your chances!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B6DF_32_тренер_0F:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "Japan's team this year", con_катсцена_новая_строка
    .text "has no real weaknesses.", con_катсцена_новая_строка
    .text "This one's for the glory,", con_катсцена_новая_строка
    .text "so give it your all!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BE89



off_B720_33_тренер_10:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "If we expect to make it", con_катсцена_новая_строка
    .text "to the finals in Brazil,", con_катсцена_новая_строка
    .text "we cannot lose a", con_катсцена_новая_строка
    .text "single game."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    
    .byte con_катсцена_F0
    .word $2245
    .text "Each one of you must", con_катсцена_новая_строка
    .text "firmly take charge of", con_катсцена_новая_строка
    .text "his own position, and", con_катсцена_новая_строка
    .text "work hard on team play."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B785_34_тренер_11:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "China has a history", con_катсцена_новая_строка
    .text "spanning 4,000 years,", con_катсцена_новая_строка
    .text "and they have a", con_катсцена_новая_строка
    .text "lot to prove."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Watch their movements", con_катсцена_новая_строка
    .text "carefully."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B7C3_35_тренер_12:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "Iran has a strong", con_катсцена_новая_строка
    .text "and forceful - even", con_катсцена_новая_строка
    .text "violent - defense."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    
    .byte con_катсцена_F0
    .word $2246
    .text "They will try and", con_катсцена_новая_строка
    .text "take you out of the", con_катсцена_новая_строка
    .text "game, even if it", con_катсцена_новая_строка
    .text "means multiple fouls."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    
    .byte con_катсцена_F0
    .word $2249
    .text "Be careful in", con_катсцена_новая_строка
    .text "close duels."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B806_36_тренер_13:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "This team will", con_катсцена_новая_строка
    .text "rapidly switch up", con_катсцена_новая_строка
    .text "offence and defense."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "They'll drive for the", con_катсцена_новая_строка
    .text "goal through both", con_катсцена_новая_строка
    .text "dribbling and powerful", con_катсцена_новая_строка
    .text "volley shots."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "Firm up your defense!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B853_37_тренер_14:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "Our opponents play using", con_катсцена_новая_строка
    .text "the Brazilian style,", con_катсцена_новая_строка
    .text "and can make powerful", con_катсцена_новая_строка
    .text "headers inside the box."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "There's also something", con_катсцена_новая_строка
    .text "about their goalkeeper..."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B89C_38_тренер_15:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2244
    .text "The Li brothers already", con_катсцена_новая_строка
    .text "warned us about the", con_катсцена_новая_строка
    .text "forward Sha and", con_катсцена_новая_строка
    .text "midfielder Kim."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "They haven't changed", con_катсцена_новая_строка
    .text "their strategy of", con_катсцена_новая_строка
    .text "combo-plays and", con_катсцена_новая_строка
    .text "Twin Shots."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2243
    .text "Let's not let that info go", con_катсцена_новая_строка
    .text "to waste - for their sake,", con_катсцена_новая_строка
    .text "we must win this game,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2248
    .text "and the right to", con_катсцена_новая_строка
    .text "represent Asia.", con_катсцена_новая_строка
    .text "Go get 'em!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_B913_39_тренер_16:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "We've made it through", con_катсцена_новая_строка
    .text "the Asia Qualifiers -", con_катсцена_новая_строка
    .text "well done, everyone."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2243
    .text "The JFO made arrangements", con_катсцена_новая_строка
    .text "for us to take on some", con_катсцена_новая_строка
    .text "@friendly matches@ from", con_катсцена_новая_строка
    .text "now until the World Cup"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Group Stage, to keep", con_катсцена_новая_строка
    .text "your skills sharp and", con_катсцена_новая_строка
    .text "your minds focused."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Yoko will be returning", con_катсцена_новая_строка
    .text "to Japan for a bit for", con_катсцена_новая_строка
    .text "personal reasons."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Ishizaki, you're in", con_катсцена_новая_строка
    .text "charge of the score", con_катсцена_новая_строка
    .text "memo until she returns.", con_катсцена_новая_строка
    .text "That's all."
    .byte con_катсцена_мячик
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_задний_фон, $60
    .byte con_катсцена_FB, $01, $1B
    .byte con_катсцена_F0
    .word $2246
    .text "Wow, Roberto's", con_катсцена_новая_строка
    .text "coaching Brazil U-20.", con_катсцена_новая_строка
    .text "What a shock..."
    .byte con_катсцена_F3, $FF, $00, $0C
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $4B
    .byte con_катсцена_F0
    .word $2243
    .text "I know. But he's a former", con_катсцена_новая_строка
    .text "ace, so it's only natural", con_катсцена_новая_строка
    .text "they'd want him coaching", con_катсцена_новая_строка
    .text "their squad."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $47
    .byte con_катсцена_F0
    .word $2246
    .text "No matter what, I", con_катсцена_новая_строка
    .text "want Roberto to see", con_катсцена_новая_строка
    .text "us at our very best.", con_катсцена_новая_строка
    .text "We owe it to him..."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $4B
    .byte con_катсцена_F0
    .word $2246
    .text "...and that means", con_катсцена_новая_строка
    .text "winning this match,", con_катсцена_новая_строка
    .text "and every single", con_катсцена_новая_строка
    .text "one until Brazil!"
    .byte con_катсцена_мячик
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_прыжок
    .word off_BEBC



off_BA16_3A_тренер_17:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_FB, $01, $57
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F0
    .word $2246
    .text "It looks like next", con_катсцена_новая_строка
    .text "up we'll be playing", con_катсцена_новая_строка
    .text "exhibition matches", con_катсцена_новая_строка
    .text "against Poland,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "England, the Soviet", con_катсцена_новая_строка
    .text "Union, and France."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $32
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F0
    .word $2246
    .text "Those are some good", con_катсцена_новая_строка
    .text "teams. I guess the", con_катсцена_новая_строка
    .text "JFO really want us", con_катсцена_новая_строка
    .text "to work for it..."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F0
    .word $2244
    .text "They do. I want you to", con_катсцена_новая_строка
    .text "treat these matches just", con_катсцена_новая_строка
    .text "like tournament ones,", con_катсцена_новая_строка
    .text "and give it your all."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2248
    .text "No slacking off."
    .byte con_катсцена_мячик
    
;   .byte con_катсцена_F0
;   .word $2244
;   .text "No slacking off, we're", con_катсцена_новая_строка
;   .text "up against Poland now.", con_катсцена_новая_строка
;   .text "Dzajic is a highly", con_катсцена_новая_строка
;   .text "agile goalkeeper."
;   .byte con_катсцена_мячик
;   .byte con_катсцена_тренер_затереть_текст
;   
;   .byte con_катсцена_F0
;   .word $2244
;   .text "Don't let their foward", con_катсцена_новая_строка
;   .text "Macher break through our", con_катсцена_новая_строка
;   .text "defense with his speed."
;   .byte con_катсцена_мячик
;   .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_прыжок
    .word off_BEBC



off_BAD3_3B_тренер_18:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "The defender, Robson,", con_катсцена_новая_строка
    .text "will get behind our", con_катсцена_новая_строка
    .text "special shots."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Focus on lobbing when", con_катсцена_новая_строка
    .text "in front of the goal."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BB12_3C_тренер_19:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "We're facing a team", con_катсцена_новая_строка
    .text "with amazing stamina", con_катсцена_новая_строка
    .text "and accurate play."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "Watch out for the speed", con_катсцена_новая_строка
    .text "and persistence of their", con_катсцена_новая_строка
    .text "offense and defense."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BB5A_3D_тренер_1A:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2243
    .text "We're facing France again.", con_катсцена_новая_строка
    .text "Their passing and offense", con_катсцена_новая_строка
    .text "strategy hasn't changed", con_катсцена_новая_строка
    .text "in three years,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "but rumors say their", con_катсцена_новая_строка
    .text "midfielder, Pierre,", con_катсцена_новая_строка
    .text "has a new skill."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2248
    .text "Mark him - don't", con_катсцена_новая_строка
    .text "let him use it."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BBA7_3E_тренер_1B:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2243
    .text "This team's technique is", con_катсцена_новая_строка
    .text "sound - the midfielder", con_катсцена_новая_строка
    .text "Espana is their playmaker."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "Focus on putting all", con_катсцена_новая_строка
    .text "men forward and get", con_катсцена_новая_строка
    .text "that important goal! "
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BBE5_3F_тренер_1C:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2245
    .text "Hernandez is their", con_катсцена_новая_строка
    .text "goalkeeper, and his", con_катсцена_новая_строка
    .text "blood will be running", con_катсцена_новая_строка
    .text "hot to shut us out."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2247
    .text "Make every finish", con_катсцена_новая_строка
    .text "of the ball count! "
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BC2A_40_тренер_1D:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "The center forward,", con_катсцена_новая_строка
    .text "Islas, who appeared", con_катсцена_новая_строка
    .text "all of a sudden", con_катсцена_новая_строка
    .text "this season,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "is practically a", con_катсцена_новая_строка
    .text "genius when it comes", con_катсцена_новая_строка
    .text "to tactical awareness", con_катсцена_новая_строка
    .text "and technique."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2246
    .text "He and Libuta are", con_катсцена_новая_строка
    .text "considered top class", con_катсцена_новая_строка
    .text "players in Europe,", con_катсцена_новая_строка
    .text "alongside Schneider."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BCA7_41_тренер_1E:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "Diaz used to carry", con_катсцена_новая_строка
    .text "this team, but along", con_катсцена_новая_строка
    .text "with Pascal they've", con_катсцена_новая_строка
    .text "added Satrustegui,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Galvan, and Babington.", con_катсцена_новая_строка
    .text "Keep alert on defense!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BCF9_42_тренер_1F:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2247
    .text "Wakabayashi will", con_катсцена_новая_строка
    .text "share his data on", con_катсцена_новая_строка
    .text "West Germany."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $34
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $C6
    .byte con_катсцена_F0
    .word $2243
    .text "Right. Whenever Schneider", con_катсцена_новая_строка
    .text "is near our goal, someone", con_катсцена_новая_строка
    .text "needs to mark him so he", con_катсцена_новая_строка
    .text "doesn't get the ball."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2244
    .text "Keep an eye on Kaltz and", con_катсцена_новая_строка
    .text "Schester - they're the", con_катсцена_новая_строка
    .text "midfield duo. We need to", con_катсцена_новая_строка
    .text "set the pace on this one,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "and keep it throughout.", con_катсцена_новая_строка
    .text "Tsubasa, Misaki - your", con_катсцена_новая_строка
    .text "Golden Combo will win", con_катсцена_новая_строка
    .text "the midfield battle."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Let's get going, guys!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BDAD_43_тренер_20:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2246
    .text "Tsubasa, playing for", con_катсцена_новая_строка
    .text "Sao Paulo, Brazil", con_катсцена_новая_строка
    .text "is your table."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $4B
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_F0
    .word $2246
    .text "Santamaria is their", con_катсцена_новая_строка
    .text "playmaker in the", con_катсцена_новая_строка
    .text "midfield, mark", con_катсцена_новая_строка
    .text "him tight!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Don't let him pass the", con_катсцена_новая_строка
    .text "ball to Zagallo, Nei,", con_катсцена_новая_строка
    .text "Ribeiro, or Carlos."
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "Long shots are useless", con_катсцена_новая_строка
    .text "against Gertise. If", con_катсцена_новая_строка
    .text "you stand any chance", con_катсцена_новая_строка
    .text "of beating him,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "get in his face and", con_катсцена_новая_строка
    .text "drive it past him with", con_катсцена_новая_строка
    .text "pace on the ball!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $47
    .byte con_катсцена_F0
    .word $2245
    .text "We've made it this far.", con_катсцена_новая_строка
    .text "Playing together as a", con_катсцена_новая_строка
    .text "team like we always do,"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_F0
    .word $2245
    .text "we can bring home the", con_катсцена_новая_строка
    .text "World Cup for youth", con_катсцена_новая_строка
    .text "players a second time.", con_катсцена_новая_строка
    .text "Let's do it!!"
    .byte con_катсцена_мячик
    .byte con_катсцена_тренер_затереть_текст
    
    .byte con_катсцена_FB, $01, $42
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_прыжок
    .word off_BEC1



off_BE84_44_тренер_роберто:
    .byte con_катсцена_задний_фон, $5F
    .byte con_катсцена_FB, $01, $3B
off_BE89:
    .byte con_катсцена_вид_окна_текста, $03
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2250
    .text " Roberto:"
    .byte con_катсцена_новая_строка
    .text "@Okay, guys.@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_прыжок
    .word off_BED6



off_BE9E_45_тренер_катагири:
    .byte con_катсцена_задний_фон, $5F
    .byte con_катсцена_FB, $01, $41
off_BEA3:
    .byte con_катсцена_вид_окна_текста, $03
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2250
    .text " Katagiri:"
    .byte con_катсцена_новая_строка
    .text "@Right on,"
    .byte con_катсцена_новая_строка
    .text " guys.@"
    .byte con_катсцена_новая_строка
    .byte con_катсцена_прыжок
    .word off_BED6



off_BEBC_46_тренер_миками:
off_BEBC:
    .byte con_катсцена_задний_фон, $5F
    .byte con_катсцена_FB, $01, $42
off_BEC1:
    .byte con_катсцена_вид_окна_текста, $03
    .byte con_катсцена_скорость_текста, $00
    
    .byte con_катсцена_F0
    .word $2250
    .text " Mikami:"
    .byte con_катсцена_новая_строка
    .text "@Alright,"
    .byte con_катсцена_новая_строка
    .text " fellas.@"
    .byte con_катсцена_новая_строка
off_BED6:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_F3, $00
    .byte con_катсцена_выход



off_BEDB_47_первый_перерыв_йоко:
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_прыжок
    .word off_BEFE



off_BEE1_48_перерыв_йоко:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_задний_фон, $61
    .byte con_катсцена_FB, $01, $2A
    .byte con_катсцена_прыжок
    .word off_BF31



off_BEEB_49_первый_перерыв_санае:
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_прыжок
    .word off_BEFE



off_BEF1_4A_перерыв_санае:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_задний_фон, $61
    .byte con_катсцена_FB, $01, $26
    .byte con_катсцена_прыжок
    .word off_BF31



off_BEFB_4B_первый_перерыв_ишизаки:
    .byte con_катсцена_FB, $01, $44
off_BEFE:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_задний_фон, $61
    .byte con_катсцена_осветление_экрана
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $00
    .byte $05    ; <お>
    .byte $12    ; <つ>
    .byte $06    ; <か>
    .byte $2A    ; <れ>
    .byte $0B    ; <さ>
    .byte $1F    ; <ま>
    .byte $7A    ; <、>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte $00
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_прыжок
    .word off_BF31



off_BF2A_4C_перерыв_ишизаки:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_задний_фон, $61
    .byte con_катсцена_FB, $01, $24
off_BF31:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_скорость_текста, $00
    .byte $40    ; <「>
    .byte $AE    ; <ど>
    .byte $03    ; <う>
    .byte $0D    ; <す>
    .byte $29    ; <る>
    .byte $78    ; <?>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $51    ; <チ>
    .byte $7D    ; <ー>
    .byte $61    ; <ム>
    .byte $C1    ; <デ>
    .byte $7D    ; <ー>
    .byte $50    ; <タ>
    .byte $2D    ; <を>
    .byte $06    ; <か>
    .byte $04    ; <え>
    .byte $29    ; <る>
    .byte con_катсцена_новая_строка
    .byte $00
    .byte $0C    ; <し>
    .byte $01    ; <あ>
    .byte $02    ; <い>
    .byte $0B    ; <さ>
    .byte $02    ; <い>
    .byte $06    ; <か>
    .byte $02    ; <い>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_F3, $00
    .byte con_катсцена_выход



off_BF54_4D_пароль_йоко:
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_прыжок
    .word off_BF63



off_BF5A_4F_пароль_санае:
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_прыжок
    .word off_BF63



off_BF60_51_пароль_ишизаки:
    .byte con_катсцена_FB, $01, $44
off_BF63:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_задний_фон, $5F
    .byte con_катсцена_F3, $00
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $07    ; <き>
    .byte $32    ; <ょ>
    .byte $03    ; <う>
    .byte $19    ; <の>
    .byte $00
    .byte $4D    ; <ス>
    .byte $4A    ; <コ>
    .byte $41    ; <ア>
    .byte $62    ; <メ>
    .byte $63    ; <モ>
    .byte $26    ; <よ>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_выход



off_BF7D_4E_удачи_после_пароля:
    .byte con_катсцена_скорость_текста, $02
    .byte $40    ; <「>
    .byte $0A    ; <こ>
    .byte $19    ; <の>
    .byte $01    ; <あ>
    .byte $14    ; <と>
    .byte $23    ; <も>
    .byte $00
    .byte $A0    ; <が>
    .byte $2E    ; <ん>
    .byte $AF    ; <ば>
    .byte $2F    ; <っ>
    .byte $13    ; <て>
    .byte $18    ; <ね>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_выход



off_BF90_53_новый_уровень_йоко:
    .byte con_катсцена_FB, $01, $2B
    .byte con_катсцена_прыжок
    .word off_BF9F



off_BF96_54_новый_уровень_санае:
    .byte con_катсцена_FB, $01, $27
    .byte con_катсцена_прыжок
    .word off_BF9F



off_BF9C_55_новый_уровень_ишизаки:
    .byte con_катсцена_FB, $01, $44
off_BF9F:
    .byte con_катсцена_E8, $01
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_задний_фон, $5F
    .byte con_катсцена_F3, $00
    .byte con_катсцена_номер_звука, $6F
    .byte con_катсцена_скорость_текста, $02
    .byte con_катсцена_закрыть_рот
    .byte $40    ; <「>
    .byte $6A    ; <レ>
    .byte $C6    ; <ベ>
    .byte $69    ; <ル>
    .byte $41    ; <ア>
    .byte $6F    ; <ッ>
    .byte $CF    ; <プ>
    .byte $AD    ; <で>
    .byte $0D    ; <す>
    .byte $7B    ; <。>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_затереть_текст
    .byte con_катсцена_выход



off_BFBA_56_сан_паулу_перед_матчем:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_FA, $0F
    .byte con_катсцена_FB, $01, $0C
    .byte con_катсцена_прыжок
    .word off_BFD5



off_BFC4_57_нанкацу_перед_матчем:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_FA, $0E
    .byte con_катсцена_FB, $01, $0F
    .byte con_катсцена_прыжок
    .word off_BFD5



off_BFCE_58_япония_перед_матчем:
    .byte con_катсцена_вид_окна_текста, $02
    .byte con_катсцена_FA, $0D
    .byte con_катсцена_FB, $01, $0E
off_BFD5:
    .byte con_катсцена_номер_звука, $31
    .byte con_катсцена_F7
    .byte con_катсцена_F3, $00
    .byte con_катсцена_скорость_текста, $02
    .byte $40    ; <「>
    .byte $26    ; <よ>
    .byte $0C    ; <し>
    .byte $00
    .byte $20    ; <み>
    .byte $2E    ; <ん>
    .byte $15    ; <な>
    .byte $02    ; <い>
    .byte $08    ; <く>
    .byte $A9    ; <ぞ>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte $40    ; <「>
    .byte $05    ; <お>
    .byte $03    ; <う>
    .byte $79    ; <!>
    .byte $79    ; <!>
    .byte con_катсцена_новая_строка
    .byte con_катсцена_задержка, $14
    .byte con_катсцена_номер_звука, $01
    .byte con_катсцена_затемнение_экрана
    .byte con_катсцена_выход
