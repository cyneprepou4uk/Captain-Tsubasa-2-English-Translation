.segment "BANK_04"
.include "copy_bank_ram.inc"
; пустой банк, раньше тут были катсцены 00-0F


.export tbl_0x40004_вид_меню
tbl_0x40004_вид_меню:
- D - - - 0x0333DF 22:B3CF: 53 B4     .word off_B453_00_номер_тайма_и_время
- D - - - 0x0333E1 22:B3D1: 64 B4     .word off_B464_01_команды_и_счет
- D - - - 0x0333E3 22:B3D3: 7D B4     .word off_B47D_02_окно_действия_игрока_с_мячом
- D - - - 0x0333E5 22:B3D5: 8A B4     .word off_B48A_03_статы_dribble_pass_shoot
- D - - - 0x0333E7 22:B3D7: A7 B4     .word off_B4A7_04_статы_trap_pass_shot
- D - - - 0x0333E9 22:B3D9: C4 B4     .word off_B4C4_05_статы_trap_pass_clear
- D - - - 0x0333EB 22:B3DB: E1 B4     .word off_B4E1_06_кипер_punch_catch
- D - - - 0x0333ED 22:B3DD: FA B4     .word off_B4FA_07
- D - - - 0x0333EF 22:B3DF: 07 B5     .word off_B507_08_кипер_counter_drib_shot
- D - - - 0x0333F1 22:B3E1: 28 B5     .word off_B528_09_две_опции_действия
- D - - - 0x0333F3 22:B3E3: 39 B5     .word off_B539_0A_три_опции_действия
- D - - - 0x0333F5 22:B3E5: 4E B5     .word off_B54E_0B_четыре_опции_действия
- D - - - 0x0333F7 22:B3E7: 67 B5     .word off_B567_0C_две_опции_нападения
- D - - - 0x0333F9 22:B3E9: 78 B5     .word off_B578_0D_кипер_jump
- - - - - 0x0333FB 22:B3EB: 8D B5     .word off_B58D_0E_0F_пас
- D - - - 0x0333FD 22:B3ED: 8D B5     .word off_B58D_0E_0F_пас
- D - - - 0x0333FF 22:B3EF: A2 B5     .word off_B5A2_10_перепасовка
- D - - - 0x033401 22:B3F1: B7 B5     .word off_B5B7_11_не_с_кем_перепасоваться
- D - - - 0x033403 22:B3F3: C8 B5     .word off_B5C8_12_действие_одного_игрока
- D - - - 0x033405 22:B3F5: D9 B5     .word off_B5D9_13_действие_двоих_игроков
- D - - - 0x033407 22:B3F7: EE B5     .word off_B5EE_14_действие_троих_игроков
- D - - - 0x033409 22:B3F9: 07 B6     .word off_B607_15_действие_четырех_игроков
- D - - - 0x03340B 22:B3FB: 24 B6     .word off_B624_16_статы_tackle_block_cut
- D - - - 0x03340D 22:B3FD: 41 B6     .word off_B641_17_статы_compete_cut
- D - - - 0x03340F 22:B3FF: 5A B6     .word off_B65A_18_статы_clear_cut
- D - - - 0x033411 22:B401: 73 B6     .word off_B673_19_выбрать_из_двух_напарников
- - - - - 0x033413 22:B403: 88 B6     .word off_B688_1A_выбрать_из_трех_напарников
- D - - - 0x033415 22:B405: A1 B6     .word off_B6A1_1B_выбрать_из_четырех_напарников
- D - - - 0x033417 22:B407: BE B6     .word off_B6BE_1C_очистить_окно_статов_принимающего
- D - - - 0x033419 22:B409: C7 B6     .word off_B6C7_1D_отобразить_статы_принимающего_dribble_pass_shoot
- - - - - 0x03341B 22:B40B: E4 B6     .word off_B6E4_1E_соперник_trap_clear_pass
- - - - - 0x03341D 22:B40D: 01 B7     .word off_B701_1F_соперник_trap_shot_pass
- D - - - 0x03341F 22:B40F: 1E B7     .word off_B71E_20_показать_одного_соперника
- D - - - 0x033421 22:B411: 2F B7     .word off_B72F_21_показать_двух_соперников
- - - - - 0x033423 22:B413: 44 B7     .word off_B744_22_показать_трех_соперников
- - - - - 0x033425 22:B415: 5D B7     .word off_B75D_23_показать_четырех_соперников
- D - - - 0x033427 22:B417: 7A B7     .word off_B77A_24_пас_одному_из_двух
- - - - - 0x033429 22:B419: 8F B7     .word off_B78F_25_пас_одному_из_трех
- - - - - 0x03342B 22:B41B: A8 B7     .word off_B7A8_26_пас_одному_из_четырех
- D - - - 0x03342D 22:B41D: C5 B7     .word off_B7C5_27_кто_бьет_штрафной
- D - - - 0x03342F 22:B41F: FE B7     .word off_B7FE_28_переместить_игроков
- D - - - 0x033431 22:B421: 13 B8     .word off_B813_29_продолжить_перемещение_игроков
- D - - - 0x033433 22:B423: 28 B8     .word off_B828_2A_штрафной_влево_вправо
- D - - - 0x033435 22:B425: 3D B8     .word off_B83D_2B_стенка_влево_вправо
- D - - - 0x033437 22:B427: 52 B8     .word off_B852_2C_пенальти_куда_ударить
- D - - - 0x033439 22:B429: 5F B8     .word off_B85F_2D_пенальти_куда_прыгнуть
- D - - - 0x03343B 22:B42B: 6C B8     .word off_B86C_2E_кто_подает_угловой
- D - - - 0x03343D 22:B42D: A5 B8     .word off_B8A5_2F_кто_бьет_нарушение
- D - - - 0x03343F 22:B42F: DE B8     .word off_B8DE_30_отображение_имени_и_энергии_слева_верху
- D - - - 0x033441 22:B431: EF B8     .word off_B8EF_31_номер_имя_управляемого_игрока
- D - - - 0x033443 22:B433: 00 B9     .word off_B900_32_имя_соперника
- D - - - 0x033445 22:B435: 0D B9     .word off_B90D_33_продолжить_меню_команды
- D - - - 0x033447 22:B437: 22 B9     .word off_B922_34_меню_команды_миникарта
- D - - - 0x033449 22:B439: 3F B9     .word off_B93F_35_схема
- D - - - 0x03344B 22:B43B: 5C B9     .word off_B95C_36_защита
- D - - - 0x03344D 22:B43D: 75 B9     .word off_B975_37_замена
- - - - - 0x03344F 22:B43F: 8A B9     .word off_B98A_38_замены_закончились
- D - - - 0x033451 22:B441: 9B B9     .word off_B99B_39_замена_основного_состава
- D - - - 0x033453 22:B443: F8 B9     .word off_B9F8_3A_замена_запасного_состава
- D - - - 0x033455 22:B445: 39 BA     .word off_BA39_3B_кого_отправить_на_скамейку
- D - - - 0x033457 22:B447: A2 BA     .word off_BAA2_3C_энергия_основного_состава
- - - - - 0x033459 22:B449: 03 BB     .word off_BB03_3D_энергия_запасного_состава
- D - - - 0x03345B 22:B44B: 5C BB     .word off_BB5C_3E_кто_бьет_пенальти
- D - - - 0x03345D 22:B44D: 69 BB     .word off_BB69_3F_выбор_игроков_на_пенальти
- D - - - 0x03345F 22:B44F: 9E BB     .word off_BB9E_40_выбранные_игроки_на_пенальти
- D - - - 0x033461 22:B451: BF BB     .word off_BBBF_41_пенальти_после_матча



con_plr_name_pos                        = $E0           ; позиция и имя игрока
con_stats_attack                        = $E1           ; статы нападающего при владении мячом у тебя + числовая величина параметра
    con_stamina_atk                         = $00
    con_shoot_atk                           = $01
    con_pass_atk                            = $02
    con_dribble_atk                         = $03
    con_air_shot                            = $07           ; удар в воздухе (volley, header)
    con_08                                  = $08
    con_trap_atk                            = $09
    con_clear_atk                           = $0B
con_teammate_name                           = $E2
con_stats_reciever                      = $E3
    con_stamina_rec                         = $00
    con_shoot_rec                           = $01
    con_pass_rec                            = $02
    con_dribble_rec                         = $03
    con_trap_rec                            = $09           ; unused
    con_clear_rec                           = $0B           ; unused
con_E4                                  = $E4           ; + 00-03 ???
con_defender_name_action                = $E5           ; + номер 00-03
con_E6                                  = $E6           ; + 00 (???) или 01 (???)
con_defender_name_stats                 = $E7
con_stats_defense                       = $E8           ; статы защитника при владении мячом у компьютера + числовая величина параметра
    con_stamina_def                         = $00
    con_01                                  = $01
    con_02                                  = $02
    con_03                                  = $03
    con_block                               = $04
    con_tackle                              = $05
    con_passcut                             = $06
con_pass_reciever_name_temmate          = $E9           ; + номер 00-04, имя принимающего пас напарника (для списка из нескольких игроков)
con_pass_reciever_name_opponent         = $EA           ; + номер 00-04, имя принимающего пас соперника (для списка из нескольких игроков)
con_gk_name                             = $EB
con_stats_gk                            = $EC
    con_stamina_gk                         = $00
    con_catch                              = $19
    con_punch                              = $1A
    con_1B_gk                              = $1B
    con_1C_gk                              = $1C
con_team_name                           = $ED           ; + 00 (имя команды слева) или 01 (имя команды справа)
con_score                               = $EE           ; + 00 (счет команды слева) или 01 (счет команды справа)
con_period_number                       = $EF           ; номер тайма, овертайма, пк
con_time                                = $F0           ; время тайма
con_F1                                  = $F1           ; 00-0A, 16-1F
con_control_plr_name                    = $F2           ; имя управляемого игрока
con_plr_with_ball_name                  = $F4           ; имя игрока с мячом
con_F5                                  = $F5           ; 00-0A, 16-1F (unused)
con_F6                                  = $F6
con_control_plr_number                  = $F7           ; номер игрока с мячом
con_закончить                           = $FC



off_B453_00_номер_тайма_и_время:
; адрес ppu
    .word $2220
; X * Y зачищаемой области (вне этой области текст не запишется)
    .byte $07
    .byte $04
; смещение окна X, Y
    ; окно по X должно быть минимум на 01 меньше очистки чтобы увидеть нижнюю границу
    ; а также X предположительно не может быть < 03
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $07
    .byte $03
; количество поинтеров
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $01
    .word @номер_тайма
    .byte $03
    .byte $05
    .word @время_тайма

@номер_тайма:
    .byte con_period_number
    .byte con_закончить

@время_тайма:
    .byte con_time
    .byte con_закончить



off_B464_01_команды_и_счет:
    .word $22C0
; X * Y зачищаемой области
    .byte $07
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $07
    .byte $04
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $01
    .word off_BBE0_имя_команды_слева
    .byte $01
    .byte $05
    .word off_BD9C_счет_команды_слева
    .byte $03
    .byte $01
    .word off_BBE3_имя_команды_справа
    .byte $03
    .byte $05
    .word off_BD9F_счет_команды_справа



off_B47D_02_окно_действия_игрока_с_мячом:
    .word $2247
; X * Y зачищаемой области
    .byte $0A
    .byte $07
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0A
    .byte $04
; количество поинтеров
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word off_BBE6_текст_action



off_B48A_03_статы_dribble_pass_shoot:
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $09
; количество текста
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC21_позиция_и_имя_игрока
    .byte $03
    .byte $01
    .word off_BC23_stamina_attack_и_количество
    .byte $05
    .byte $01
    .word @дриблинг
    .byte $07
    .byte $01
    .word @пас
    .byte $09
    .byte $01
    .word @удар

@дриблинг:
    .text "Dribble     "
    .byte con_stats_attack, con_dribble_atk
    .byte con_закончить

@пас:
    .text "Pass        "
    .byte con_stats_attack, con_pass_atk
    .byte con_закончить

@удар:
    .text "Shoot       "
    .byte con_stats_attack, con_shoot_atk
    .byte con_закончить



off_B4A7_04_статы_trap_pass_shot:
; не зависит от низкого и высокого мяча, видимо статы вычисляются отдельно
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC21_позиция_и_имя_игрока
    .byte $03    ; <う>
    .byte $01    ; <あ>
    .word off_BC23_stamina_attack_и_количество
    .byte $05    ; <お>
    .byte $01    ; <あ>
    .word off_BC4F_trap_и_величина
    .byte $07    ; <き>
    .byte $01    ; <あ>
    .word off_BC5A_pass_и_величина
    .byte $09    ; <け>
    .byte $01    ; <あ>
    .word off_BC65_air_shot_и_величина



off_B4C4_05_статы_trap_pass_clear:
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC21_позиция_и_имя_игрока
    .byte $03
    .byte $01
    .word off_BC23_stamina_attack_и_количество
    .byte $05
    .byte $01
    .word off_BC4F_trap_и_величина
    .byte $07
    .byte $01
    .word off_BC5A_pass_и_величина
    .byte $09
    .byte $01
    .word off_BC70_clear_и_величина



off_B4E1_06_кипер_punch_catch:
    .word $2231
; X * Y зачищаемой области
    .byte $0F
    .byte $08
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0F
    .byte $07
; количество поинтеров
    .byte $04
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BD53_имя_и_позиция_кипера
    .byte $03
    .byte $01
    .word off_BD55_энергия_кипера
    .byte $05
    .byte $01
    .word off_BD60_punch
    .byte $07
    .byte $01
    .word off_BD6B_catch



off_B4FA_07:
- D - I - 0x03350A 22:B4FA: 4A 22     .word $224A

- D - I - 0x03350C 22:B4FC: 08        .byte $08    ; <く>
- D - I - 0x03350D 22:B4FD: 06        .byte $06    ; <か>

- D - I - 0x03350E 22:B4FE: 00        .byte $00
- D - I - 0x03350F 22:B4FF: 00        .byte $00

- D - I - 0x033510 22:B500: 08        .byte $08    ; <く>
- D - I - 0x033511 22:B501: 06        .byte $06    ; <か>

- D - I - 0x033512 22:B502: 01        .byte $01    ; <あ>

- D - I - 0x033513 22:B503: 02        .byte $02    ; <い>
- D - I - 0x033514 22:B504: 01        .byte $01    ; <あ>
- D - I - 0x033515 22:B505: E6 BB     .word off_BBE6_текст_action



off_B507_08_кипер_counter_drib_shot:
- D - I - 0x033517 22:B507: 32 22     .word $2232

- D - I - 0x033519 22:B509: 0C        .byte $0C    ; <し>
- D - I - 0x03351A 22:B50A: 0A        .byte $0A    ; <こ>

- D - I - 0x03351B 22:B50B: 00        .byte $00
- D - I - 0x03351C 22:B50C: 01        .byte $01    ; <あ>

- D - I - 0x03351D 22:B50D: 0C        .byte $0C    ; <し>
- D - I - 0x03351E 22:B50E: 09        .byte $09    ; <け>

- D - I - 0x03351F 22:B50F: 06        .byte $06    ; <か>

- D - I - 0x033520 22:B510: 01        .byte $01    ; <あ>
- D - I - 0x033521 22:B511: 02        .byte $02    ; <い>
- D - I - 0x033522 22:B512: 53 BD     .word off_BD53_имя_и_позиция_кипера
- D - I - 0x033524 22:B514: 03        .byte $03    ; <う>
- D - I - 0x033525 22:B515: 01        .byte $01    ; <あ>
- D - I - 0x033526 22:B516: 55 BD     .word off_BD55_энергия_кипера
- D - I - 0x033528 22:B518: 05        .byte $05    ; <お>
- D - I - 0x033529 22:B519: 01        .byte $01    ; <あ>
- D - I - 0x03352A 22:B51A: 81 BD     .word off_BD81
- D - I - 0x03352C 22:B51C: 06        .byte $06    ; <か>
- D - I - 0x03352D 22:B51D: 01        .byte $01    ; <あ>
- D - I - 0x03352E 22:B51E: 97 BD     .word off_BD97
- D - I - 0x033530 22:B520: 08        .byte $08    ; <く>
- D - I - 0x033531 22:B521: 01        .byte $01    ; <あ>
- D - I - 0x033532 22:B522: 8C BD     .word off_BD8C
- D - I - 0x033534 22:B524: 09        .byte $09    ; <け>
- D - I - 0x033535 22:B525: 01        .byte $01    ; <あ>
- D - I - 0x033536 22:B526: 97 BD     .word off_BD97



off_B528_09_две_опции_действия:
- D - I - 0x033538 22:B528: 48 22     .word $2248

- D - I - 0x03353A 22:B52A: 0F        .byte $0F    ; <そ>
- D - I - 0x03353B 22:B52B: 05        .byte $05    ; <お>

- D - I - 0x03353C 22:B52C: 00        .byte $00
- D - I - 0x03353D 22:B52D: 00        .byte $00

- D - I - 0x03353E 22:B52E: 0F        .byte $0F    ; <そ>
- D - I - 0x03353F 22:B52F: 05        .byte $05    ; <お>

- D - I - 0x033540 22:B530: 02        .byte $02    ; <い>

- D - I - 0x033541 22:B531: 02        .byte $02    ; <い>
- D - I - 0x033542 22:B532: 02        .byte $02    ; <い>
- D - I - 0x033543 22:B533: 7C BC     .word off_BC7C
- D - I - 0x033545 22:B535: 04        .byte $04    ; <え>
- D - I - 0x033546 22:B536: 02        .byte $02    ; <い>
- D - I - 0x033547 22:B537: 7F BC     .word off_BC7F



off_B539_0A_три_опции_действия:
- D - I - 0x033549 22:B539: 48 22     .word $2248

- D - I - 0x03354B 22:B53B: 0F        .byte $0F    ; <そ>
- D - I - 0x03354C 22:B53C: 07        .byte $07    ; <き>

- D - I - 0x03354D 22:B53D: 00        .byte $00
- D - I - 0x03354E 22:B53E: 00        .byte $00

- D - I - 0x03354F 22:B53F: 0F        .byte $0F    ; <そ>
- D - I - 0x033550 22:B540: 07        .byte $07    ; <き>

- D - I - 0x033551 22:B541: 03        .byte $03    ; <う>

- D - I - 0x033552 22:B542: 02        .byte $02    ; <い>
- D - I - 0x033553 22:B543: 02        .byte $02    ; <い>
- D - I - 0x033554 22:B544: 7C BC     .word off_BC7C
- D - I - 0x033556 22:B546: 04        .byte $04    ; <え>
- D - I - 0x033557 22:B547: 02        .byte $02    ; <い>
- D - I - 0x033558 22:B548: 7F BC     .word off_BC7F
- D - I - 0x03355A 22:B54A: 06        .byte $06    ; <か>
- D - I - 0x03355B 22:B54B: 02        .byte $02    ; <い>
- D - I - 0x03355C 22:B54C: 82 BC     .word off_BC82



off_B54E_0B_четыре_опции_действия:
- D - I - 0x03355E 22:B54E: 48 22     .word $2248

- D - I - 0x033560 22:B550: 0F        .byte $0F    ; <そ>
- D - I - 0x033561 22:B551: 09        .byte $09    ; <け>

- D - I - 0x033562 22:B552: 00        .byte $00
- D - I - 0x033563 22:B553: 00        .byte $00

- D - I - 0x033564 22:B554: 0F        .byte $0F    ; <そ>
- D - I - 0x033565 22:B555: 09        .byte $09    ; <け>

- D - I - 0x033566 22:B556: 04        .byte $04    ; <え>

- D - I - 0x033567 22:B557: 02        .byte $02    ; <い>
- D - I - 0x033568 22:B558: 02        .byte $02    ; <い>
- D - I - 0x033569 22:B559: 7C BC     .word off_BC7C
- D - I - 0x03356B 22:B55B: 04        .byte $04    ; <え>
- D - I - 0x03356C 22:B55C: 02        .byte $02    ; <い>
- D - I - 0x03356D 22:B55D: 7F BC     .word off_BC7F
- D - I - 0x03356F 22:B55F: 06        .byte $06    ; <か>
- D - I - 0x033570 22:B560: 02        .byte $02    ; <い>
- D - I - 0x033571 22:B561: 82 BC     .word off_BC82
- D - I - 0x033573 22:B563: 08        .byte $08    ; <く>
- D - I - 0x033574 22:B564: 02        .byte $02    ; <い>
- D - I - 0x033575 22:B565: 85 BC     .word off_BC85



off_B567_0C_две_опции_нападения:
; подкат, перехват, блок
- D - I - 0x033577 22:B567: 28 22     .word $2228

- D - I - 0x033579 22:B569: 10        .byte $10    ; <た>
- D - I - 0x03357A 22:B56A: 06        .byte $06    ; <か>

- D - I - 0x03357B 22:B56B: 00        .byte $00
- D - I - 0x03357C 22:B56C: 01        .byte $01    ; <あ>

- D - I - 0x03357D 22:B56D: 10        .byte $10    ; <た>
- D - I - 0x03357E 22:B56E: 05        .byte $05    ; <お>

- D - I - 0x03357F 22:B56F: 02        .byte $02    ; <い>

- D - I - 0x033580 22:B570: 03        .byte $03    ; <う>
- D - I - 0x033581 22:B571: 02        .byte $02    ; <い>
- D - I - 0x033582 22:B572: 94 BC     .word off_BC94
- D - I - 0x033584 22:B574: 05        .byte $05    ; <お>
- D - I - 0x033585 22:B575: 02        .byte $02    ; <い>
- D - I - 0x033586 22:B576: 97 BC     .word off_BC97



off_B578_0D_кипер_jump:
- D - I - 0x033588 22:B578: 34 22     .word $2234

- D - I - 0x03358A 22:B57A: 0C        .byte $0C    ; <し>
- D - I - 0x03358B 22:B57B: 0A        .byte $0A    ; <こ>

- D - I - 0x03358C 22:B57C: 00        .byte $00
- D - I - 0x03358D 22:B57D: 01        .byte $01    ; <あ>

- D - I - 0x03358E 22:B57E: 0C        .byte $0C    ; <し>
- D - I - 0x03358F 22:B57F: 05        .byte $05    ; <お>

- D - I - 0x033590 22:B580: 03        .byte $03    ; <う>

- D - I - 0x033591 22:B581: 01        .byte $01    ; <あ>
- D - I - 0x033592 22:B582: 02        .byte $02    ; <い>
- D - I - 0x033593 22:B583: 53 BD     .word off_BD53_имя_и_позиция_кипера
- D - I - 0x033595 22:B585: 03        .byte $03    ; <う>
- D - I - 0x033596 22:B586: 01        .byte $01    ; <あ>
- D - I - 0x033597 22:B587: 55 BD     .word off_BD55_энергия_кипера
- D - I - 0x033599 22:B589: 05        .byte $05    ; <お>
- D - I - 0x03359A 22:B58A: 01        .byte $01    ; <あ>
- D - I - 0x03359B 22:B58B: 76 BD     .word off_BD76



off_B58D_0E_0F_пас:
    .word $2227
; X * Y зачищаемой области
    .byte $19
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0B
    .byte $05
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BBED_текст_кому_пас_вопрос
    .byte $03
    .byte $01
    .word off_BBF4_текст_use_d_pad
    .byte $05
    .byte $01
    .word off_BBFA_текст_кому



off_B5A2_10_перепасовка:
- D - I - 0x0335B2 22:B5A2: 28 22     .word $2228

- D - I - 0x0335B4 22:B5A4: 0A        .byte $0A    ; <こ>
- D - I - 0x0335B5 22:B5A5: 06        .byte $06    ; <か>

- D - I - 0x0335B6 22:B5A6: 00        .byte $00
- D - I - 0x0335B7 22:B5A7: 01        .byte $01    ; <あ>

- D - I - 0x0335B8 22:B5A8: 0A        .byte $0A    ; <こ>
- D - I - 0x0335B9 22:B5A9: 05        .byte $05    ; <お>

- D - I - 0x0335BA 22:B5AA: 03        .byte $03    ; <う>

- D - I - 0x0335BB 22:B5AB: 01        .byte $01    ; <あ>
- D - I - 0x0335BC 22:B5AC: 01        .byte $01    ; <あ>
- D - I - 0x0335BD 22:B5AD: 02 BC     .word off_BC02_текст_перепасовка
- D - I - 0x0335BF 22:B5AF: 03        .byte $03    ; <う>
- D - I - 0x0335C0 22:B5B0: 01        .byte $01    ; <あ>
- D - I - 0x0335C1 22:B5B1: F4 BB     .word off_BBF4_текст_use_d_pad
- D - I - 0x0335C3 22:B5B3: 05        .byte $05    ; <お>
- D - I - 0x0335C4 22:B5B4: 01        .byte $01    ; <あ>
- D - I - 0x0335C5 22:B5B5: 0B BC     .word off_BC0B_текст_с_кем



off_B5B7_11_не_с_кем_перепасоваться:
    .word $2247
    
    .byte $09
    .byte $07
    
    .byte $00
    .byte $00
    
    .byte $09
    .byte $07
    
    .byte $03
    
    .byte $02
    .byte $01
    .word @no
    .byte $04
    .byte $01
    .word @players
    .byte $06
    .byte $01
    .word @open


@no:
    .text "No"
    .byte con_закончить
    
@players:
    .text "players"
    .byte con_закончить
    
@open:
    .text "open!"
    .byte con_закончить



off_B5C8_12_действие_одного_игрока:
- D - I - 0x0335D8 22:B5C8: 28 22     .word $2228

- D - I - 0x0335DA 22:B5CA: 0C        .byte $0C    ; <し>
- D - I - 0x0335DB 22:B5CB: 04        .byte $04    ; <え>

- D - I - 0x0335DC 22:B5CC: 00        .byte $00
- D - I - 0x0335DD 22:B5CD: 01        .byte $01    ; <あ>

- D - I - 0x0335DE 22:B5CE: 0C        .byte $0C    ; <し>
- D - I - 0x0335DF 22:B5CF: 03        .byte $03    ; <う>

- D - I - 0x0335E0 22:B5D0: 02        .byte $02    ; <い>

- D - I - 0x0335E1 22:B5D1: 01        .byte $01    ; <あ>
- D - I - 0x0335E2 22:B5D2: 03        .byte $03    ; <う>
- D - I - 0x0335E3 22:B5D3: E6 BB     .word off_BBE6_текст_action
- D - I - 0x0335E5 22:B5D5: 03        .byte $03    ; <う>
- D - I - 0x0335E6 22:B5D6: 01        .byte $01    ; <あ>
- D - I - 0x0335E7 22:B5D7: 88 BC     .word off_BC88_defender_1



off_B5D9_13_действие_двоих_игроков:
    .word $2247
; X * Y зачищаемой области
    .byte $0B
    .byte $06
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0B
    .byte $06
; количество поинтеров
    .byte $03
; смещение текста Y, X + поинтеры на текст
    .byte $00
    .byte $02
    .word off_BBE6_текст_action
    .byte $01
    .byte $01
    .word off_BC88_defender_1
    .byte $03
    .byte $01
    .word off_BC8B_defender_2



off_B5EE_14_действие_троих_игроков:
- D - I - 0x0335FE 22:B5EE: 28 22     .word $2228

- D - I - 0x033600 22:B5F0: 0C        .byte $0C    ; <し>
- D - I - 0x033601 22:B5F1: 08        .byte $08    ; <く>

- D - I - 0x033602 22:B5F2: 00        .byte $00
- D - I - 0x033603 22:B5F3: 01        .byte $01    ; <あ>

- D - I - 0x033604 22:B5F4: 0C        .byte $0C    ; <し>
- D - I - 0x033605 22:B5F5: 07        .byte $07    ; <き>

- D - I - 0x033606 22:B5F6: 04        .byte $04    ; <え>

- D - I - 0x033607 22:B5F7: 01        .byte $01    ; <あ>
- D - I - 0x033608 22:B5F8: 03        .byte $03    ; <う>
- D - I - 0x033609 22:B5F9: E6 BB     .word off_BBE6_текст_action
- D - I - 0x03360B 22:B5FB: 03        .byte $03    ; <う>
- D - I - 0x03360C 22:B5FC: 01        .byte $01    ; <あ>
- D - I - 0x03360D 22:B5FD: 88 BC     .word off_BC88_defender_1
- D - I - 0x03360F 22:B5FF: 05        .byte $05    ; <お>
- D - I - 0x033610 22:B600: 01        .byte $01    ; <あ>
- D - I - 0x033611 22:B601: 8B BC     .word off_BC8B_defender_2
- D - I - 0x033613 22:B603: 07        .byte $07    ; <き>
- D - I - 0x033614 22:B604: 01        .byte $01    ; <あ>
- D - I - 0x033615 22:B605: 8E BC     .word off_BC8E_defender_3



off_B607_15_действие_четырех_игроков:
- D - I - 0x033617 22:B607: 28 22     .word $2228

- D - I - 0x033619 22:B609: 0C        .byte $0C    ; <し>
- D - I - 0x03361A 22:B60A: 0A        .byte $0A    ; <こ>

- D - I - 0x03361B 22:B60B: 00        .byte $00
- D - I - 0x03361C 22:B60C: 01        .byte $01    ; <あ>

- D - I - 0x03361D 22:B60D: 0C        .byte $0C    ; <し>
- D - I - 0x03361E 22:B60E: 09        .byte $09    ; <け>

- D - I - 0x03361F 22:B60F: 05        .byte $05    ; <お>

- D - I - 0x033620 22:B610: 01        .byte $01    ; <あ>
- D - I - 0x033621 22:B611: 03        .byte $03    ; <う>
- D - I - 0x033622 22:B612: E6 BB     .word off_BBE6_текст_action
- D - I - 0x033624 22:B614: 03        .byte $03    ; <う>
- D - I - 0x033625 22:B615: 01        .byte $01    ; <あ>
- D - I - 0x033626 22:B616: 88 BC     .word off_BC88_defender_1
- D - I - 0x033628 22:B618: 05        .byte $05    ; <お>
- D - I - 0x033629 22:B619: 01        .byte $01    ; <あ>
- D - I - 0x03362A 22:B61A: 8B BC     .word off_BC8B_defender_2
- D - I - 0x03362C 22:B61C: 07        .byte $07    ; <き>
- D - I - 0x03362D 22:B61D: 01        .byte $01    ; <あ>
- D - I - 0x03362E 22:B61E: 8E BC     .word off_BC8E_defender_3
- D - I - 0x033630 22:B620: 09        .byte $09    ; <け>
- D - I - 0x033631 22:B621: 01        .byte $01    ; <あ>
- D - I - 0x033632 22:B622: 91 BC     .word off_BC91_defender_4



off_B624_16_статы_tackle_block_cut:
    .word $2232
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BC9A
    .byte $03
    .byte $01
    .word off_BC9C_stamina_def
    .byte $05
    .byte $01
    .word off_BCA7_tackle
    .byte $07
    .byte $01
    .word off_BCB2_block
    .byte $09
    .byte $01
    .word off_BCBD_passcut



off_B641_17_статы_compete_cut:
- D - I - 0x033651 22:B641: 34 22     .word $2234

- D - I - 0x033653 22:B643: 0C        .byte $0C    ; <し>
- D - I - 0x033654 22:B644: 0A        .byte $0A    ; <こ>

- D - I - 0x033655 22:B645: 00        .byte $00
- D - I - 0x033656 22:B646: 01        .byte $01    ; <あ>

- D - I - 0x033657 22:B647: 0C        .byte $0C    ; <し>
- D - I - 0x033658 22:B648: 07        .byte $07    ; <き>

- D - I - 0x033659 22:B649: 04        .byte $04    ; <え>

- D - I - 0x03365A 22:B64A: 01        .byte $01    ; <あ>
- D - I - 0x03365B 22:B64B: 02        .byte $02    ; <い>
- D - I - 0x03365C 22:B64C: 9A BC     .word off_BC9A
- D - I - 0x03365E 22:B64E: 03        .byte $03    ; <う>
- D - I - 0x03365F 22:B64F: 01        .byte $01    ; <あ>
- D - I - 0x033660 22:B650: 9C BC     .word off_BC9C_stamina_def
- D - I - 0x033662 22:B652: 05        .byte $05    ; <お>
- D - I - 0x033663 22:B653: 01        .byte $01    ; <あ>
- D - I - 0x033664 22:B654: C8 BC     .word off_BCC8
- D - I - 0x033666 22:B656: 07        .byte $07    ; <き>
- D - I - 0x033667 22:B657: 01        .byte $01    ; <あ>
- D - I - 0x033668 22:B658: D3 BC     .word off_BCD3



off_B65A_18_статы_clear_cut:
- D - I - 0x03366A 22:B65A: 34 22     .word $2234

- D - I - 0x03366C 22:B65C: 0C        .byte $0C    ; <し>
- D - I - 0x03366D 22:B65D: 0A        .byte $0A    ; <こ>

- D - I - 0x03366E 22:B65E: 00        .byte $00
- D - I - 0x03366F 22:B65F: 01        .byte $01    ; <あ>

- D - I - 0x033670 22:B660: 0C        .byte $0C    ; <し>
- D - I - 0x033671 22:B661: 07        .byte $07    ; <き>

- D - I - 0x033672 22:B662: 04        .byte $04    ; <え>

- D - I - 0x033673 22:B663: 01        .byte $01    ; <あ>
- D - I - 0x033674 22:B664: 02        .byte $02    ; <い>
- D - I - 0x033675 22:B665: 9A BC     .word off_BC9A
- D - I - 0x033677 22:B667: 03        .byte $03    ; <う>
- D - I - 0x033678 22:B668: 01        .byte $01    ; <あ>
- D - I - 0x033679 22:B669: 9C BC     .word off_BC9C_stamina_def
- D - I - 0x03367B 22:B66B: 05        .byte $05    ; <お>
- D - I - 0x03367C 22:B66C: 01        .byte $01    ; <あ>
- D - I - 0x03367D 22:B66D: DE BC     .word off_BCDE
- D - I - 0x03367F 22:B66F: 07        .byte $07    ; <き>
- D - I - 0x033680 22:B670: 01        .byte $01    ; <あ>
- D - I - 0x033681 22:B671: D3 BC     .word off_BCD3



off_B673_19_выбрать_из_двух_напарников:      ; потребуется затирать слева если останется, на случай если до этого был чейто список статов
- D - I - 0x033683 22:B673: 32 22     .word $2232

- D - I - 0x033685 22:B675: 0C        .byte $0C    ; <し>
- D - I - 0x033686 22:B676: 0A        .byte $0A    ; <こ>

- D - I - 0x033687 22:B677: 02        .byte $02    ; <い>
- D - I - 0x033688 22:B678: 01        .byte $01    ; <あ>

- D - I - 0x033689 22:B679: 07        .byte $07    ; <き>
- D - I - 0x03368A 22:B67A: 05        .byte $05    ; <お>

- D - I - 0x03368B 22:B67B: 03        .byte $03    ; <う>

- D - I - 0x03368C 22:B67C: 01        .byte $01    ; <あ>
- D - I - 0x03368D 22:B67D: 04        .byte $04    ; <え>
- D - I - 0x03368E 22:B67E: E9 BC     .word off_BCE9
- D - I - 0x033690 22:B680: 03        .byte $03    ; <う>
- D - I - 0x033691 22:B681: 03        .byte $03    ; <う>
- D - I - 0x033692 22:B682: ED BC     .word off_BCED
- D - I - 0x033694 22:B684: 05        .byte $05    ; <お>
- D - I - 0x033695 22:B685: 03        .byte $03    ; <う>
- D - I - 0x033696 22:B686: F0 BC     .word off_BCF0



off_B688_1A_выбрать_из_трех_напарников:
- - - - - 0x033698 22:B688: 32 22     .word $2232

- - - - - 0x03369A 22:B68A: 0C        .byte $0C    ; <し>
- - - - - 0x03369B 22:B68B: 0A        .byte $0A    ; <こ>

- - - - - 0x03369C 22:B68C: 02        .byte $02    ; <い>
- - - - - 0x03369D 22:B68D: 01        .byte $01    ; <あ>

- - - - - 0x03369E 22:B68E: 07        .byte $07    ; <き>
- - - - - 0x03369F 22:B68F: 07        .byte $07    ; <き>

- - - - - 0x0336A0 22:B690: 04        .byte $04    ; <え>

- - - - - 0x0336A1 22:B691: 01        .byte $01    ; <あ>
- - - - - 0x0336A2 22:B692: 04        .byte $04    ; <え>
- - - - - 0x0336A3 22:B693: E9 BC     .word off_BCE9
- - - - - 0x0336A5 22:B695: 03        .byte $03    ; <う>
- - - - - 0x0336A6 22:B696: 03        .byte $03    ; <う>
- - - - - 0x0336A7 22:B697: ED BC     .word off_BCED
- - - - - 0x0336A9 22:B699: 05        .byte $05    ; <お>
- - - - - 0x0336AA 22:B69A: 03        .byte $03    ; <う>
- - - - - 0x0336AB 22:B69B: F0 BC     .word off_BCF0
- - - - - 0x0336AD 22:B69D: 07        .byte $07    ; <き>
- - - - - 0x0336AE 22:B69E: 03        .byte $03    ; <う>
- - - - - 0x0336AF 22:B69F: F3 BC     .word off_BCF3



off_B6A1_1B_выбрать_из_четырех_напарников:
- D - I - 0x0336B1 22:B6A1: 32 22     .word $2232

- D - I - 0x0336B3 22:B6A3: 0C        .byte $0C    ; <し>
- D - I - 0x0336B4 22:B6A4: 0A        .byte $0A    ; <こ>

- D - I - 0x0336B5 22:B6A5: 02        .byte $02    ; <い>
- D - I - 0x0336B6 22:B6A6: 01        .byte $01    ; <あ>

- D - I - 0x0336B7 22:B6A7: 07        .byte $07    ; <き>
- D - I - 0x0336B8 22:B6A8: 09        .byte $09    ; <け>

- D - I - 0x0336B9 22:B6A9: 05        .byte $05    ; <お>

- D - I - 0x0336BA 22:B6AA: 01        .byte $01    ; <あ>
- D - I - 0x0336BB 22:B6AB: 04        .byte $04    ; <え>
- D - I - 0x0336BC 22:B6AC: E9 BC     .word off_BCE9
- D - I - 0x0336BE 22:B6AE: 03        .byte $03    ; <う>
- D - I - 0x0336BF 22:B6AF: 03        .byte $03    ; <う>
- D - I - 0x0336C0 22:B6B0: ED BC     .word off_BCED
- D - I - 0x0336C2 22:B6B2: 05        .byte $05    ; <お>
- D - I - 0x0336C3 22:B6B3: 03        .byte $03    ; <う>
- D - I - 0x0336C4 22:B6B4: F0 BC     .word off_BCF0
- D - I - 0x0336C6 22:B6B6: 07        .byte $07    ; <き>
- D - I - 0x0336C7 22:B6B7: 03        .byte $03    ; <う>
- D - I - 0x0336C8 22:B6B8: F3 BC     .word off_BCF3
- D - I - 0x0336CA 22:B6BA: 09        .byte $09    ; <け>
- D - I - 0x0336CB 22:B6BB: 03        .byte $03    ; <う>
- D - I - 0x0336CC 22:B6BC: F6 BC     .word off_BCF6



off_B6BE_1C_очистить_окно_статов_принимающего:
; требуется когда перемещаешь курсор паса по полю и в курсоре никого нету
    .word $2232
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $0A
; количество поинтеров
    .byte $00



off_B6C7_1D_отобразить_статы_принимающего_dribble_pass_shoot:
    .word $2232
; X * Y зачищаемой области
    .byte $0E
    .byte $0A
; смещение окна X, Y
    .byte $00
    .byte $01
; размер окна X, Y
    .byte $0E
    .byte $09
; количество поинтеров
    .byte $05
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word off_BCF9_позиция_и_имя_принимающего
    .byte $03
    .byte $01
    .word off_BCFB_энергия_принимающего
    .byte $05
    .byte $01
    .word off_BD11_dribble_принимающего
    .byte $07
    .byte $01
    .word off_BD1C_pass_принимающего
    .byte $09
    .byte $01
    .word off_BD06_shoot_принимающего



off_B6E4_1E_соперник_trap_clear_pass:
- - - - - 0x0336F4 22:B6E4: 32 22     .word $2232

- - - - - 0x0336F6 22:B6E6: 0C        .byte $0C    ; <し>
- - - - - 0x0336F7 22:B6E7: 0A        .byte $0A    ; <こ>

- - - - - 0x0336F8 22:B6E8: 00        .byte $00
- - - - - 0x0336F9 22:B6E9: 01        .byte $01    ; <あ>

- - - - - 0x0336FA 22:B6EA: 0C        .byte $0C    ; <し>
- - - - - 0x0336FB 22:B6EB: 09        .byte $09    ; <け>

- - - - - 0x0336FC 22:B6EC: 05        .byte $05    ; <お>

- - - - - 0x0336FD 22:B6ED: 01        .byte $01    ; <あ>
- - - - - 0x0336FE 22:B6EE: 02        .byte $02    ; <い>
- - - - - 0x0336FF 22:B6EF: F9 BC     .word off_BCF9_позиция_и_имя_принимающего
- - - - - 0x033701 22:B6F1: 03        .byte $03    ; <う>
- - - - - 0x033702 22:B6F2: 01        .byte $01    ; <あ>
- - - - - 0x033703 22:B6F3: FB BC     .word off_BCFB_энергия_принимающего
- - - - - 0x033705 22:B6F5: 05        .byte $05    ; <お>
- - - - - 0x033706 22:B6F6: 01        .byte $01    ; <あ>
- - - - - 0x033707 22:B6F7: 27 BD     .word off_BD27
- - - - - 0x033709 22:B6F9: 07        .byte $07    ; <き>
- - - - - 0x03370A 22:B6FA: 01        .byte $01    ; <あ>
- - - - - 0x03370B 22:B6FB: 32 BD     .word off_BD32
- - - - - 0x03370D 22:B6FD: 09        .byte $09    ; <け>
- - - - - 0x03370E 22:B6FE: 01        .byte $01    ; <あ>
- - - - - 0x03370F 22:B6FF: 1C BD     .word off_BD1C_pass_принимающего



off_B701_1F_соперник_trap_shot_pass:
- - - - - 0x033711 22:B701: 32 22     .word $2232

- - - - - 0x033713 22:B703: 0C        .byte $0C    ; <し>
- - - - - 0x033714 22:B704: 0A        .byte $0A    ; <こ>

- - - - - 0x033715 22:B705: 00        .byte $00
- - - - - 0x033716 22:B706: 01        .byte $01    ; <あ>

- - - - - 0x033717 22:B707: 0C        .byte $0C    ; <し>
- - - - - 0x033718 22:B708: 09        .byte $09    ; <け>

- - - - - 0x033719 22:B709: 05        .byte $05    ; <お>

- - - - - 0x03371A 22:B70A: 01        .byte $01    ; <あ>
- - - - - 0x03371B 22:B70B: 02        .byte $02    ; <い>
- - - - - 0x03371C 22:B70C: F9 BC     .word off_BCF9_позиция_и_имя_принимающего
- - - - - 0x03371E 22:B70E: 03        .byte $03    ; <う>
- - - - - 0x03371F 22:B70F: 01        .byte $01    ; <あ>
- - - - - 0x033720 22:B710: FB BC     .word off_BCFB_энергия_принимающего
- - - - - 0x033722 22:B712: 05        .byte $05    ; <お>
- - - - - 0x033723 22:B713: 01        .byte $01    ; <あ>
- - - - - 0x033724 22:B714: 27 BD     .word off_BD27
- - - - - 0x033726 22:B716: 07        .byte $07    ; <き>
- - - - - 0x033727 22:B717: 01        .byte $01    ; <あ>
- - - - - 0x033728 22:B718: 06 BD     .word off_BD06_shoot_принимающего
- - - - - 0x03372A 22:B71A: 09        .byte $09    ; <け>
- - - - - 0x03372B 22:B71B: 01        .byte $01    ; <あ>
- - - - - 0x03372C 22:B71C: 1C BD     .word off_BD1C_pass_принимающего



off_B71E_20_показать_одного_соперника:
- D - I - 0x03372E 22:B71E: 32 22     .word $2232

- D - I - 0x033730 22:B720: 0C        .byte $0C    ; <し>
- D - I - 0x033731 22:B721: 0A        .byte $0A    ; <こ>

- D - I - 0x033732 22:B722: 00        .byte $00
- D - I - 0x033733 22:B723: 01        .byte $01    ; <あ>

- D - I - 0x033734 22:B724: 0C        .byte $0C    ; <し>
- D - I - 0x033735 22:B725: 03        .byte $03    ; <う>

- D - I - 0x033736 22:B726: 02        .byte $02    ; <い>

- D - I - 0x033737 22:B727: 01        .byte $01    ; <あ>
- D - I - 0x033738 22:B728: 05        .byte $05    ; <お>
- D - I - 0x033739 22:B729: 3D BD     .word off_BD3D
- D - I - 0x03373B 22:B72B: 03        .byte $03    ; <う>
- D - I - 0x03373C 22:B72C: 01        .byte $01    ; <あ>
- D - I - 0x03373D 22:B72D: 40 BD     .word off_BD40



off_B72F_21_показать_двух_соперников:
- D - I - 0x03373F 22:B72F: 32 22     .word $2232

- D - I - 0x033741 22:B731: 0C        .byte $0C    ; <し>
- D - I - 0x033742 22:B732: 0A        .byte $0A    ; <こ>

- D - I - 0x033743 22:B733: 00        .byte $00
- D - I - 0x033744 22:B734: 01        .byte $01    ; <あ>

- D - I - 0x033745 22:B735: 0C        .byte $0C    ; <し>
- D - I - 0x033746 22:B736: 05        .byte $05    ; <お>

- D - I - 0x033747 22:B737: 03        .byte $03    ; <う>

- D - I - 0x033748 22:B738: 01        .byte $01    ; <あ>
- D - I - 0x033749 22:B739: 05        .byte $05    ; <お>
- D - I - 0x03374A 22:B73A: 3D BD     .word off_BD3D
- D - I - 0x03374C 22:B73C: 03        .byte $03    ; <う>
- D - I - 0x03374D 22:B73D: 01        .byte $01    ; <あ>
- D - I - 0x03374E 22:B73E: 40 BD     .word off_BD40
- D - I - 0x033750 22:B740: 05        .byte $05    ; <お>
- D - I - 0x033751 22:B741: 01        .byte $01    ; <あ>
- D - I - 0x033752 22:B742: 43 BD     .word off_BD43



off_B744_22_показать_трех_соперников:
- - - - - 0x033754 22:B744: 32 22     .word $2232

- - - - - 0x033756 22:B746: 0C        .byte $0C    ; <し>
- - - - - 0x033757 22:B747: 0A        .byte $0A    ; <こ>

- - - - - 0x033758 22:B748: 00        .byte $00
- - - - - 0x033759 22:B749: 01        .byte $01    ; <あ>

- - - - - 0x03375A 22:B74A: 0C        .byte $0C    ; <し>
- - - - - 0x03375B 22:B74B: 07        .byte $07    ; <き>

- - - - - 0x03375C 22:B74C: 04        .byte $04    ; <え>

- - - - - 0x03375D 22:B74D: 01        .byte $01    ; <あ>
- - - - - 0x03375E 22:B74E: 05        .byte $05    ; <お>
- - - - - 0x03375F 22:B74F: 3D BD     .word off_BD3D
- - - - - 0x033761 22:B751: 03        .byte $03    ; <う>
- - - - - 0x033762 22:B752: 01        .byte $01    ; <あ>
- - - - - 0x033763 22:B753: 40 BD     .word off_BD40
- - - - - 0x033765 22:B755: 05        .byte $05    ; <お>
- - - - - 0x033766 22:B756: 01        .byte $01    ; <あ>
- - - - - 0x033767 22:B757: 43 BD     .word off_BD43
- - - - - 0x033769 22:B759: 07        .byte $07    ; <き>
- - - - - 0x03376A 22:B75A: 01        .byte $01    ; <あ>
- - - - - 0x03376B 22:B75B: 46 BD     .word off_BD46



off_B75D_23_показать_четырех_соперников:
- - - - - 0x03376D 22:B75D: 32 22     .word $2232

- - - - - 0x03376F 22:B75F: 0C        .byte $0C    ; <し>
- - - - - 0x033770 22:B760: 0A        .byte $0A    ; <こ>

- - - - - 0x033771 22:B761: 00        .byte $00
- - - - - 0x033772 22:B762: 01        .byte $01    ; <あ>

- - - - - 0x033773 22:B763: 0C        .byte $0C    ; <し>
- - - - - 0x033774 22:B764: 09        .byte $09    ; <け>

- - - - - 0x033775 22:B765: 05        .byte $05    ; <お>

- - - - - 0x033776 22:B766: 01        .byte $01    ; <あ>
- - - - - 0x033777 22:B767: 05        .byte $05    ; <お>
- - - - - 0x033778 22:B768: 3D BD     .word off_BD3D
- - - - - 0x03377A 22:B76A: 03        .byte $03    ; <う>
- - - - - 0x03377B 22:B76B: 01        .byte $01    ; <あ>
- - - - - 0x03377C 22:B76C: 40 BD     .word off_BD40
- - - - - 0x03377E 22:B76E: 05        .byte $05    ; <お>
- - - - - 0x03377F 22:B76F: 01        .byte $01    ; <あ>
- - - - - 0x033780 22:B770: 43 BD     .word off_BD43
- - - - - 0x033782 22:B772: 07        .byte $07    ; <き>
- - - - - 0x033783 22:B773: 01        .byte $01    ; <あ>
- - - - - 0x033784 22:B774: 46 BD     .word off_BD46
- - - - - 0x033786 22:B776: 09        .byte $09    ; <け>
- - - - - 0x033787 22:B777: 01        .byte $01    ; <あ>
- - - - - 0x033788 22:B778: 49 BD     .word off_BD49



off_B77A_24_пас_одному_из_двух:
- D - I - 0x03378A 22:B77A: 28 22     .word $2228

- D - I - 0x03378C 22:B77C: 0A        .byte $0A    ; <こ>
- D - I - 0x03378D 22:B77D: 0A        .byte $0A    ; <こ>

- D - I - 0x03378E 22:B77E: 01        .byte $01    ; <あ>
- D - I - 0x03378F 22:B77F: 01        .byte $01    ; <あ>

- D - I - 0x033790 22:B780: 08        .byte $08    ; <く>
- D - I - 0x033791 22:B781: 05        .byte $05    ; <お>

- D - I - 0x033792 22:B782: 03        .byte $03    ; <う>

- D - I - 0x033793 22:B783: 01        .byte $01    ; <あ>
- D - I - 0x033794 22:B784: 02        .byte $02    ; <い>
- D - I - 0x033795 22:B785: 4C BD     .word off_BD4C
- D - I - 0x033797 22:B787: 03        .byte $03    ; <う>
- D - I - 0x033798 22:B788: 03        .byte $03    ; <う>
- D - I - 0x033799 22:B789: ED BC     .word off_BCED
- D - I - 0x03379B 22:B78B: 05        .byte $05    ; <お>
- D - I - 0x03379C 22:B78C: 03        .byte $03    ; <う>
- D - I - 0x03379D 22:B78D: F0 BC     .word off_BCF0



off_B78F_25_пас_одному_из_трех:
- - - - - 0x03379F 22:B78F: 28 22     .word $2228

- - - - - 0x0337A1 22:B791: 0A        .byte $0A    ; <こ>
- - - - - 0x0337A2 22:B792: 0A        .byte $0A    ; <こ>

- - - - - 0x0337A3 22:B793: 01        .byte $01    ; <あ>
- - - - - 0x0337A4 22:B794: 01        .byte $01    ; <あ>

- - - - - 0x0337A5 22:B795: 08        .byte $08    ; <く>
- - - - - 0x0337A6 22:B796: 07        .byte $07    ; <き>

- - - - - 0x0337A7 22:B797: 04        .byte $04    ; <え>

- - - - - 0x0337A8 22:B798: 01        .byte $01    ; <あ>
- - - - - 0x0337A9 22:B799: 02        .byte $02    ; <い>
- - - - - 0x0337AA 22:B79A: 4C BD     .word off_BD4C
- - - - - 0x0337AC 22:B79C: 03        .byte $03    ; <う>
- - - - - 0x0337AD 22:B79D: 03        .byte $03    ; <う>
- - - - - 0x0337AE 22:B79E: ED BC     .word off_BCED
- - - - - 0x0337B0 22:B7A0: 05        .byte $05    ; <お>
- - - - - 0x0337B1 22:B7A1: 03        .byte $03    ; <う>
- - - - - 0x0337B2 22:B7A2: F0 BC     .word off_BCF0
- - - - - 0x0337B4 22:B7A4: 07        .byte $07    ; <き>
- - - - - 0x0337B5 22:B7A5: 03        .byte $03    ; <う>
- - - - - 0x0337B6 22:B7A6: F3 BC     .word off_BCF3



off_B7A8_26_пас_одному_из_четырех:
- - - - - 0x0337B8 22:B7A8: 28 22     .word $2228

- - - - - 0x0337BA 22:B7AA: 0A        .byte $0A    ; <こ>
- - - - - 0x0337BB 22:B7AB: 0A        .byte $0A    ; <こ>

- - - - - 0x0337BC 22:B7AC: 01        .byte $01    ; <あ>
- - - - - 0x0337BD 22:B7AD: 01        .byte $01    ; <あ>

- - - - - 0x0337BE 22:B7AE: 08        .byte $08    ; <く>
- - - - - 0x0337BF 22:B7AF: 09        .byte $09    ; <け>

- - - - - 0x0337C0 22:B7B0: 05        .byte $05    ; <お>

- - - - - 0x0337C1 22:B7B1: 01        .byte $01    ; <あ>
- - - - - 0x0337C2 22:B7B2: 02        .byte $02    ; <い>
- - - - - 0x0337C3 22:B7B3: 4C BD     .word off_BD4C
- - - - - 0x0337C5 22:B7B5: 03        .byte $03    ; <う>
- - - - - 0x0337C6 22:B7B6: 03        .byte $03    ; <う>
- - - - - 0x0337C7 22:B7B7: ED BC     .word off_BCED
- - - - - 0x0337C9 22:B7B9: 05        .byte $05    ; <お>
- - - - - 0x0337CA 22:B7BA: 03        .byte $03    ; <う>
- - - - - 0x0337CB 22:B7BB: F0 BC     .word off_BCF0
- - - - - 0x0337CD 22:B7BD: 07        .byte $07    ; <き>
- - - - - 0x0337CE 22:B7BE: 03        .byte $03    ; <う>
- - - - - 0x0337CF 22:B7BF: F3 BC     .word off_BCF3
- - - - - 0x0337D1 22:B7C1: 09        .byte $09    ; <け>
- - - - - 0x0337D2 22:B7C2: 03        .byte $03    ; <う>
- - - - - 0x0337D3 22:B7C3: F6 BC     .word off_BCF6



off_B7C5_27_кто_бьет_штрафной:
- D - I - 0x0337D5 22:B7C5: 28 22     .word $2228

- D - I - 0x0337D7 22:B7C7: 18        .byte $18    ; <ね>
- D - I - 0x0337D8 22:B7C8: 0A        .byte $0A    ; <こ>

- D - I - 0x0337D9 22:B7C9: 00        .byte $00
- D - I - 0x0337DA 22:B7CA: 01        .byte $01    ; <あ>

- D - I - 0x0337DB 22:B7CB: 17        .byte $17    ; <ぬ>
- D - I - 0x0337DC 22:B7CC: 09        .byte $09    ; <け>

- D - I - 0x0337DD 22:B7CD: 0C        .byte $0C    ; <し>

- D - I - 0x0337DE 22:B7CE: 01        .byte $01    ; <あ>
- D - I - 0x0337DF 22:B7CF: 03        .byte $03    ; <う>
- D - I - 0x0337E0 22:B7D0: A2 BD     .word off_BDA2
- D - I - 0x0337E2 22:B7D2: 01        .byte $01    ; <あ>
- D - I - 0x0337E3 22:B7D3: 0D        .byte $0D    ; <す>
- D - I - 0x0337E4 22:B7D4: C3 BD     .word off_BDC3
- D - I - 0x0337E6 22:B7D6: 03        .byte $03    ; <う>
- D - I - 0x0337E7 22:B7D7: 03        .byte $03    ; <う>
- D - I - 0x0337E8 22:B7D8: CE BD     .word off_BDCE
- D - I - 0x0337EA 22:B7DA: 05        .byte $05    ; <お>
- D - I - 0x0337EB 22:B7DB: 03        .byte $03    ; <う>
- D - I - 0x0337EC 22:B7DC: D1 BD     .word off_BDD1
- D - I - 0x0337EE 22:B7DE: 07        .byte $07    ; <き>
- D - I - 0x0337EF 22:B7DF: 03        .byte $03    ; <う>
- D - I - 0x0337F0 22:B7E0: D4 BD     .word off_BDD4
- D - I - 0x0337F2 22:B7E2: 09        .byte $09    ; <け>
- D - I - 0x0337F3 22:B7E3: 03        .byte $03    ; <う>
- D - I - 0x0337F4 22:B7E4: D7 BD     .word off_BDD7
- D - I - 0x0337F6 22:B7E6: 03        .byte $03    ; <う>
- D - I - 0x0337F7 22:B7E7: 0A        .byte $0A    ; <こ>
- D - I - 0x0337F8 22:B7E8: DA BD     .word off_BDDA
- D - I - 0x0337FA 22:B7EA: 05        .byte $05    ; <お>
- D - I - 0x0337FB 22:B7EB: 0A        .byte $0A    ; <こ>
- D - I - 0x0337FC 22:B7EC: DD BD     .word off_BDDD
- D - I - 0x0337FE 22:B7EE: 07        .byte $07    ; <き>
- D - I - 0x0337FF 22:B7EF: 0A        .byte $0A    ; <こ>
- D - I - 0x033800 22:B7F0: E0 BD     .word off_BDE0
- D - I - 0x033802 22:B7F2: 09        .byte $09    ; <け>
- D - I - 0x033803 22:B7F3: 0A        .byte $0A    ; <こ>
- D - I - 0x033804 22:B7F4: E3 BD     .word off_BDE3
- D - I - 0x033806 22:B7F6: 03        .byte $03    ; <う>
- D - I - 0x033807 22:B7F7: 11        .byte $11    ; <ち>
- D - I - 0x033808 22:B7F8: E6 BD     .word off_BDE6
- D - I - 0x03380A 22:B7FA: 05        .byte $05    ; <お>
- D - I - 0x03380B 22:B7FB: 11        .byte $11    ; <ち>
- D - I - 0x03380C 22:B7FC: E9 BD     .word off_BDE9



off_B7FE_28_переместить_игроков:
- D - I - 0x03380E 22:B7FE: 28 22     .word $2228

- D - I - 0x033810 22:B800: 18        .byte $18    ; <ね>
- D - I - 0x033811 22:B801: 0A        .byte $0A    ; <こ>

- D - I - 0x033812 22:B802: 03        .byte $03    ; <う>
- D - I - 0x033813 22:B803: 03        .byte $03    ; <う>

- D - I - 0x033814 22:B804: 09        .byte $09    ; <け>
- D - I - 0x033815 22:B805: 05        .byte $05    ; <お>

- D - I - 0x033816 22:B806: 03        .byte $03    ; <う>

- D - I - 0x033817 22:B807: 01        .byte $01    ; <あ>
- D - I - 0x033818 22:B808: 01        .byte $01    ; <あ>
- D - I - 0x033819 22:B809: EC BD     .word off_BDEC
- D - I - 0x03381B 22:B80B: 05        .byte $05    ; <お>
- D - I - 0x03381C 22:B80C: 06        .byte $06    ; <か>
- D - I - 0x03381D 22:B80D: 01 BE     .word off_BE01
- D - I - 0x03381F 22:B80F: 07        .byte $07    ; <き>
- D - I - 0x033820 22:B810: 06        .byte $06    ; <か>
- D - I - 0x033821 22:B811: 06 BE     .word off_BE06



off_B813_29_продолжить_перемещение_игроков:
- D - I - 0x033823 22:B813: 28 22     .word $2228

- D - I - 0x033825 22:B815: 18        .byte $18    ; <ね>
- D - I - 0x033826 22:B816: 0A        .byte $0A    ; <こ>

- D - I - 0x033827 22:B817: 00        .byte $00
- D - I - 0x033828 22:B818: 01        .byte $01    ; <あ>

- D - I - 0x033829 22:B819: 0A        .byte $0A    ; <こ>
- D - I - 0x03382A 22:B81A: 05        .byte $05    ; <お>

- D - I - 0x03382B 22:B81B: 03        .byte $03    ; <う>

- D - I - 0x03382C 22:B81C: 01        .byte $01    ; <あ>
- D - I - 0x03382D 22:B81D: 01        .byte $01    ; <あ>
- D - I - 0x03382E 22:B81E: 0A BE     .word off_BE0A
- D - I - 0x033830 22:B820: 03        .byte $03    ; <う>
- D - I - 0x033831 22:B821: 03        .byte $03    ; <う>
- D - I - 0x033832 22:B822: 13 BE     .word off_BE13
- D - I - 0x033834 22:B824: 05        .byte $05    ; <お>
- D - I - 0x033835 22:B825: 03        .byte $03    ; <う>
- D - I - 0x033836 22:B826: 18 BE     .word off_BE18



off_B828_2A_штрафной_влево_вправо:
- D - I - 0x033838 22:B828: 28 22     .word $2228

- D - I - 0x03383A 22:B82A: 18        .byte $18    ; <ね>
- D - I - 0x03383B 22:B82B: 0A        .byte $0A    ; <こ>

- D - I - 0x03383C 22:B82C: 00        .byte $00
- D - I - 0x03383D 22:B82D: 03        .byte $03    ; <う>

- D - I - 0x03383E 22:B82E: 0A        .byte $0A    ; <こ>
- D - I - 0x03383F 22:B82F: 05        .byte $05    ; <お>

- D - I - 0x033840 22:B830: 03        .byte $03    ; <う>

- D - I - 0x033841 22:B831: 01        .byte $01    ; <あ>
- D - I - 0x033842 22:B832: 00        .byte $00
- D - I - 0x033843 22:B833: 1C BE     .word off_BE1C
- D - I - 0x033845 22:B835: 05        .byte $05    ; <お>
- D - I - 0x033846 22:B836: 03        .byte $03    ; <う>
- D - I - 0x033847 22:B837: 27 BE     .word off_BE27
- D - I - 0x033849 22:B839: 07        .byte $07    ; <き>
- D - I - 0x03384A 22:B83A: 03        .byte $03    ; <う>
- D - I - 0x03384B 22:B83B: 2C BE     .word off_BE2C



off_B83D_2B_стенка_влево_вправо:
- D - I - 0x03384D 22:B83D: 28 22     .word $2228

- D - I - 0x03384F 22:B83F: 18        .byte $18    ; <ね>
- D - I - 0x033850 22:B840: 0A        .byte $0A    ; <こ>

- D - I - 0x033851 22:B841: 03        .byte $03    ; <う>
- D - I - 0x033852 22:B842: 03        .byte $03    ; <う>

- D - I - 0x033853 22:B843: 09        .byte $09    ; <け>
- D - I - 0x033854 22:B844: 05        .byte $05    ; <お>

- D - I - 0x033855 22:B845: 03        .byte $03    ; <う>

- D - I - 0x033856 22:B846: 01        .byte $01    ; <あ>
- D - I - 0x033857 22:B847: 03        .byte $03    ; <う>
- D - I - 0x033858 22:B848: 32 BE     .word off_BE32
- D - I - 0x03385A 22:B84A: 05        .byte $05    ; <お>
- D - I - 0x03385B 22:B84B: 05        .byte $05    ; <お>
- D - I - 0x03385C 22:B84C: 3C BE     .word off_BE3C
- D - I - 0x03385E 22:B84E: 07        .byte $07    ; <き>
- D - I - 0x03385F 22:B84F: 05        .byte $05    ; <お>
- D - I - 0x033860 22:B850: 42 BE     .word off_BE42



off_B852_2C_пенальти_куда_ударить:
; также используется при нарушении во время игры
- D - I - 0x033862 22:B852: 28 22     .word $2228

- D - I - 0x033864 22:B854: 18        .byte $18    ; <ね>
- D - I - 0x033865 22:B855: 0A        .byte $0A    ; <こ>

- D - I - 0x033866 22:B856: 00        .byte $00
- D - I - 0x033867 22:B857: 01        .byte $01    ; <あ>

- D - I - 0x033868 22:B858: 0A        .byte $0A    ; <こ>
- D - I - 0x033869 22:B859: 05        .byte $05    ; <お>

- D - I - 0x03386A 22:B85A: 01        .byte $01    ; <あ>

- D - I - 0x03386B 22:B85B: 03        .byte $03    ; <う>
- D - I - 0x03386C 22:B85C: 01        .byte $01    ; <あ>
- D - I - 0x03386D 22:B85D: 47 BE     .word off_BE47



off_B85F_2D_пенальти_куда_прыгнуть:
- D - I - 0x03386F 22:B85F: 28 22     .word $2228

- D - I - 0x033871 22:B861: 18        .byte $18    ; <ね>
- D - I - 0x033872 22:B862: 0A        .byte $0A    ; <こ>

- D - I - 0x033873 22:B863: 00        .byte $00
- D - I - 0x033874 22:B864: 01        .byte $01    ; <あ>

- D - I - 0x033875 22:B865: 0A        .byte $0A    ; <こ>
- D - I - 0x033876 22:B866: 05        .byte $05    ; <お>

- D - I - 0x033877 22:B867: 01        .byte $01    ; <あ>

- D - I - 0x033878 22:B868: 03        .byte $03    ; <う>
- D - I - 0x033879 22:B869: 01        .byte $01    ; <あ>
- D - I - 0x03387A 22:B86A: 50 BE     .word off_BE50



off_B86C_2E_кто_подает_угловой:
- D - I - 0x03387C 22:B86C: 28 22     .word $2228

- D - I - 0x03387E 22:B86E: 18        .byte $18    ; <ね>
- D - I - 0x03387F 22:B86F: 0A        .byte $0A    ; <こ>

- D - I - 0x033880 22:B870: 00        .byte $00
- D - I - 0x033881 22:B871: 01        .byte $01    ; <あ>

- D - I - 0x033882 22:B872: 17        .byte $17    ; <ぬ>
- D - I - 0x033883 22:B873: 09        .byte $09    ; <け>

- D - I - 0x033884 22:B874: 0C        .byte $0C    ; <し>

- D - I - 0x033885 22:B875: 01        .byte $01    ; <あ>
- D - I - 0x033886 22:B876: 03        .byte $03    ; <う>
- D - I - 0x033887 22:B877: AD BD     .word off_BDAD
- D - I - 0x033889 22:B879: 01        .byte $01    ; <あ>
- D - I - 0x03388A 22:B87A: 0D        .byte $0D    ; <す>
- D - I - 0x03388B 22:B87B: C3 BD     .word off_BDC3
- D - I - 0x03388D 22:B87D: 03        .byte $03    ; <う>
- D - I - 0x03388E 22:B87E: 03        .byte $03    ; <う>
- D - I - 0x03388F 22:B87F: CE BD     .word off_BDCE
- D - I - 0x033891 22:B881: 05        .byte $05    ; <お>
- D - I - 0x033892 22:B882: 03        .byte $03    ; <う>
- D - I - 0x033893 22:B883: D1 BD     .word off_BDD1
- D - I - 0x033895 22:B885: 07        .byte $07    ; <き>
- D - I - 0x033896 22:B886: 03        .byte $03    ; <う>
- D - I - 0x033897 22:B887: D4 BD     .word off_BDD4
- D - I - 0x033899 22:B889: 09        .byte $09    ; <け>
- D - I - 0x03389A 22:B88A: 03        .byte $03    ; <う>
- D - I - 0x03389B 22:B88B: D7 BD     .word off_BDD7
- D - I - 0x03389D 22:B88D: 03        .byte $03    ; <う>
- D - I - 0x03389E 22:B88E: 0A        .byte $0A    ; <こ>
- D - I - 0x03389F 22:B88F: DA BD     .word off_BDDA
- D - I - 0x0338A1 22:B891: 05        .byte $05    ; <お>
- D - I - 0x0338A2 22:B892: 0A        .byte $0A    ; <こ>
- D - I - 0x0338A3 22:B893: DD BD     .word off_BDDD
- D - I - 0x0338A5 22:B895: 07        .byte $07    ; <き>
- D - I - 0x0338A6 22:B896: 0A        .byte $0A    ; <こ>
- D - I - 0x0338A7 22:B897: E0 BD     .word off_BDE0
- D - I - 0x0338A9 22:B899: 09        .byte $09    ; <け>
- D - I - 0x0338AA 22:B89A: 0A        .byte $0A    ; <こ>
- D - I - 0x0338AB 22:B89B: E3 BD     .word off_BDE3
- D - I - 0x0338AD 22:B89D: 03        .byte $03    ; <う>
- D - I - 0x0338AE 22:B89E: 11        .byte $11    ; <ち>
- D - I - 0x0338AF 22:B89F: E6 BD     .word off_BDE6
- D - I - 0x0338B1 22:B8A1: 05        .byte $05    ; <お>
- D - I - 0x0338B2 22:B8A2: 11        .byte $11    ; <ち>
- D - I - 0x0338B3 22:B8A3: E9 BD     .word off_BDE9



off_B8A5_2F_кто_бьет_нарушение:
- D - I - 0x0338B5 22:B8A5: 28 22     .word $2228

- D - I - 0x0338B7 22:B8A7: 18        .byte $18    ; <ね>
- D - I - 0x0338B8 22:B8A8: 0A        .byte $0A    ; <こ>

- D - I - 0x0338B9 22:B8A9: 00        .byte $00
- D - I - 0x0338BA 22:B8AA: 01        .byte $01    ; <あ>

- D - I - 0x0338BB 22:B8AB: 17        .byte $17    ; <ぬ>
- D - I - 0x0338BC 22:B8AC: 09        .byte $09    ; <け>

- D - I - 0x0338BD 22:B8AD: 0C        .byte $0C    ; <し>

- D - I - 0x0338BE 22:B8AE: 01        .byte $01    ; <あ>
- D - I - 0x0338BF 22:B8AF: 03        .byte $03    ; <う>
- D - I - 0x0338C0 22:B8B0: B8 BD     .word off_BDB8
- D - I - 0x0338C2 22:B8B2: 01        .byte $01    ; <あ>
- D - I - 0x0338C3 22:B8B3: 0D        .byte $0D    ; <す>
- D - I - 0x0338C4 22:B8B4: C3 BD     .word off_BDC3
- D - I - 0x0338C6 22:B8B6: 03        .byte $03    ; <う>
- D - I - 0x0338C7 22:B8B7: 03        .byte $03    ; <う>
- D - I - 0x0338C8 22:B8B8: CE BD     .word off_BDCE
- D - I - 0x0338CA 22:B8BA: 05        .byte $05    ; <お>
- D - I - 0x0338CB 22:B8BB: 03        .byte $03    ; <う>
- D - I - 0x0338CC 22:B8BC: D1 BD     .word off_BDD1
- D - I - 0x0338CE 22:B8BE: 07        .byte $07    ; <き>
- D - I - 0x0338CF 22:B8BF: 03        .byte $03    ; <う>
- D - I - 0x0338D0 22:B8C0: D4 BD     .word off_BDD4
- D - I - 0x0338D2 22:B8C2: 09        .byte $09    ; <け>
- D - I - 0x0338D3 22:B8C3: 03        .byte $03    ; <う>
- D - I - 0x0338D4 22:B8C4: D7 BD     .word off_BDD7
- D - I - 0x0338D6 22:B8C6: 03        .byte $03    ; <う>
- D - I - 0x0338D7 22:B8C7: 0A        .byte $0A    ; <こ>
- D - I - 0x0338D8 22:B8C8: DA BD     .word off_BDDA
- D - I - 0x0338DA 22:B8CA: 05        .byte $05    ; <お>
- D - I - 0x0338DB 22:B8CB: 0A        .byte $0A    ; <こ>
- D - I - 0x0338DC 22:B8CC: DD BD     .word off_BDDD
- D - I - 0x0338DE 22:B8CE: 07        .byte $07    ; <き>
- D - I - 0x0338DF 22:B8CF: 0A        .byte $0A    ; <こ>
- D - I - 0x0338E0 22:B8D0: E0 BD     .word off_BDE0
- D - I - 0x0338E2 22:B8D2: 09        .byte $09    ; <け>
- D - I - 0x0338E3 22:B8D3: 0A        .byte $0A    ; <こ>
- D - I - 0x0338E4 22:B8D4: E3 BD     .word off_BDE3
- D - I - 0x0338E6 22:B8D6: 03        .byte $03    ; <う>
- D - I - 0x0338E7 22:B8D7: 11        .byte $11    ; <ち>
- D - I - 0x0338E8 22:B8D8: E6 BD     .word off_BDE6
- D - I - 0x0338EA 22:B8DA: 05        .byte $05    ; <お>
- D - I - 0x0338EB 22:B8DB: 11        .byte $11    ; <ち>
- D - I - 0x0338EC 22:B8DC: E9 BD     .word off_BDE9



off_B8DE_30_отображение_имени_и_энергии_слева_верху:
    .word $2001
; X * Y зачищаемой области
    .byte $0F
    .byte $02
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0F
    .byte $02
; количество текста
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $01
    .word @имя_игрока_с_мячом
    .byte $01
    .byte $0D
    .word @энергия

@имя_игрока_с_мячом:
    .byte con_plr_with_ball_name
    .byte con_закончить

@энергия:
    .byte con_stats_attack, con_stamina_atk
    .byte con_закончить



off_B8EF_31_номер_имя_управляемого_игрока:
; когда мяч у соперника и тот бежит по полю
    .word $2001
; X * Y зачищаемой области
    .byte $0F
    .byte $02
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0F
    .byte $02
; количество текста
    .byte $02
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word @номер_управляемого_игрока
    .byte $01
    .byte $05
    .word @имя_управляемого_игрока

@номер_управляемого_игрока:
    .byte con_control_plr_number
    .byte con_закончить

@имя_управляемого_игрока:
    .byte con_control_plr_name
    .byte con_закончить



off_B900_32_имя_соперника:
; когда мяч у соперника и тот бежит по полю
    .word $2011
; X * Y зачищаемой области
    .byte $0E
    .byte $02
; смещение окна X, Y
    .byte $00
    .byte $00
; размер окна X, Y
    .byte $0E
    .byte $02
; количество текста
    .byte $01
; смещение текста Y, X + поинтеры на текст
    .byte $01
    .byte $02
    .word @имя_игрока_с_мячом

@имя_игрока_с_мячом:
    .byte con_plr_with_ball_name
    .byte con_закончить



off_B90D_33_продолжить_меню_команды:
- D - I - 0x03391D 22:B90D: 28 22     .word $2228

- D - I - 0x03391F 22:B90F: 18        .byte $18    ; <ね>
- D - I - 0x033920 22:B910: 0B        .byte $0B    ; <さ>

- D - I - 0x033921 22:B911: 00        .byte $00
- D - I - 0x033922 22:B912: 03        .byte $03    ; <う>

- D - I - 0x033923 22:B913: 0F        .byte $0F    ; <そ>
- D - I - 0x033924 22:B914: 05        .byte $05    ; <お>

- D - I - 0x033925 22:B915: 03        .byte $03    ; <う>

- D - I - 0x033926 22:B916: 03        .byte $03    ; <う>
- D - I - 0x033927 22:B917: 04        .byte $04    ; <え>
- D - I - 0x033928 22:B918: E6 BB     .word off_BBE6_текст_action
- D - I - 0x03392A 22:B91A: 05        .byte $05    ; <お>
- D - I - 0x03392B 22:B91B: 03        .byte $03    ; <う>
- D - I - 0x03392C 22:B91C: 6F BE     .word off_BE6F
- D - I - 0x03392E 22:B91E: 07        .byte $07    ; <き>
- D - I - 0x03392F 22:B91F: 03        .byte $03    ; <う>
- D - I - 0x033930 22:B920: 77 BE     .word off_BE77



off_B922_34_меню_команды_миникарта:
- D - I - 0x033932 22:B922: 27 22     .word $2227

- D - I - 0x033934 22:B924: 0D        .byte $0D    ; <す>
- D - I - 0x033935 22:B925: 0B        .byte $0B    ; <さ>

- D - I - 0x033936 22:B926: 00        .byte $00
- D - I - 0x033937 22:B927: 00        .byte $00

- D - I - 0x033938 22:B928: 0C        .byte $0C    ; <し>
- D - I - 0x033939 22:B929: 0B        .byte $0B    ; <さ>

- D - I - 0x03393A 22:B92A: 05        .byte $05    ; <お>

- D - I - 0x03393B 22:B92B: 02        .byte $02    ; <い>
- D - I - 0x03393C 22:B92C: 02        .byte $02    ; <い>
- D - I - 0x03393D 22:B92D: 83 BE     .word off_BE83
- D - I - 0x03393F 22:B92F: 04        .byte $04    ; <え>
- D - I - 0x033940 22:B930: 02        .byte $02    ; <い>
- D - I - 0x033941 22:B931: 8C BE     .word off_BE8C
- D - I - 0x033943 22:B933: 06        .byte $06    ; <か>
- D - I - 0x033944 22:B934: 02        .byte $02    ; <い>
- D - I - 0x033945 22:B935: 96 BE     .word off_BE96
- D - I - 0x033947 22:B937: 08        .byte $08    ; <く>
- D - I - 0x033948 22:B938: 02        .byte $02    ; <い>
- D - I - 0x033949 22:B939: 9B BE     .word off_BE9B
- D - I - 0x03394B 22:B93B: 0A        .byte $0A    ; <こ>
- D - I - 0x03394C 22:B93C: 02        .byte $02    ; <い>
- D - I - 0x03394D 22:B93D: A2 BE     .word off_BEA2



off_B93F_35_схема:
- D - I - 0x03394F 22:B93F: 68 22     .word $2268

- D - I - 0x033951 22:B941: 0C        .byte $0C    ; <し>
- D - I - 0x033952 22:B942: 09        .byte $09    ; <け>

- D - I - 0x033953 22:B943: 00        .byte $00
- D - I - 0x033954 22:B944: 00        .byte $00

- D - I - 0x033955 22:B945: 0C        .byte $0C    ; <し>
- D - I - 0x033956 22:B946: 09        .byte $09    ; <け>

- D - I - 0x033957 22:B947: 05        .byte $05    ; <お>

- D - I - 0x033958 22:B948: 00        .byte $00
- D - I - 0x033959 22:B949: 01        .byte $01    ; <あ>
- D - I - 0x03395A 22:B94A: 83 BE     .word off_BE83
- D - I - 0x03395C 22:B94C: 02        .byte $02    ; <い>
- D - I - 0x03395D 22:B94D: 02        .byte $02    ; <い>
- D - I - 0x03395E 22:B94E: A6 BE     .word off_BEA6
- D - I - 0x033960 22:B950: 04        .byte $04    ; <え>
- D - I - 0x033961 22:B951: 02        .byte $02    ; <い>
- D - I - 0x033962 22:B952: AC BE     .word off_BEAC
- D - I - 0x033964 22:B954: 06        .byte $06    ; <か>
- D - I - 0x033965 22:B955: 02        .byte $02    ; <い>
- D - I - 0x033966 22:B956: B2 BE     .word off_BEB2
- D - I - 0x033968 22:B958: 08        .byte $08    ; <く>
- D - I - 0x033969 22:B959: 02        .byte $02    ; <い>
- D - I - 0x03396A 22:B95A: B8 BE     .word off_BEB8



off_B95C_36_защита:
- D - I - 0x03396C 22:B95C: 88 22     .word $2288

- D - I - 0x03396E 22:B95E: 0C        .byte $0C    ; <し>
- D - I - 0x03396F 22:B95F: 08        .byte $08    ; <く>

- D - I - 0x033970 22:B960: 00        .byte $00
- D - I - 0x033971 22:B961: 01        .byte $01    ; <あ>

- D - I - 0x033972 22:B962: 0C        .byte $0C    ; <し>
- D - I - 0x033973 22:B963: 07        .byte $07    ; <き>

- D - I - 0x033974 22:B964: 04        .byte $04    ; <え>

- D - I - 0x033975 22:B965: 01        .byte $01    ; <あ>
- D - I - 0x033976 22:B966: 01        .byte $01    ; <あ>
- D - I - 0x033977 22:B967: 8C BE     .word off_BE8C
- D - I - 0x033979 22:B969: 03        .byte $03    ; <う>
- D - I - 0x03397A 22:B96A: 02        .byte $02    ; <い>
- D - I - 0x03397B 22:B96B: C0 BE     .word off_BEC0
- D - I - 0x03397D 22:B96D: 05        .byte $05    ; <お>
- D - I - 0x03397E 22:B96E: 02        .byte $02    ; <い>
- D - I - 0x03397F 22:B96F: C5 BE     .word off_BEC5
- D - I - 0x033981 22:B971: 07        .byte $07    ; <き>
- D - I - 0x033982 22:B972: 02        .byte $02    ; <い>
- D - I - 0x033983 22:B973: C9 BE     .word off_BEC9



off_B975_37_замена:
- D - I - 0x033985 22:B975: C8 22     .word $22C8

- D - I - 0x033987 22:B977: 0C        .byte $0C    ; <し>
- D - I - 0x033988 22:B978: 06        .byte $06    ; <か>

- D - I - 0x033989 22:B979: 00        .byte $00
- D - I - 0x03398A 22:B97A: 01        .byte $01    ; <あ>

- D - I - 0x03398B 22:B97B: 0C        .byte $0C    ; <し>
- D - I - 0x03398C 22:B97C: 05        .byte $05    ; <お>

- D - I - 0x03398D 22:B97D: 03        .byte $03    ; <う>

- D - I - 0x03398E 22:B97E: 01        .byte $01    ; <あ>
- D - I - 0x03398F 22:B97F: 01        .byte $01    ; <あ>
- D - I - 0x033990 22:B980: 96 BE     .word off_BE96
- D - I - 0x033992 22:B982: 03        .byte $03    ; <う>
- D - I - 0x033993 22:B983: 02        .byte $02    ; <い>
- D - I - 0x033994 22:B984: CF BE     .word off_BECF
- D - I - 0x033996 22:B986: 05        .byte $05    ; <お>
- D - I - 0x033997 22:B987: 02        .byte $02    ; <い>
- D - I - 0x033998 22:B988: D8 BE     .word off_BED8



off_B98A_38_замены_закончились:
- - - - - 0x03399A 22:B98A: E7 22     .word $22E7

- - - - - 0x03399C 22:B98C: 0D        .byte $0D    ; <す>
- - - - - 0x03399D 22:B98D: 05        .byte $05    ; <お>

- - - - - 0x03399E 22:B98E: 00        .byte $00
- - - - - 0x03399F 22:B98F: 00        .byte $00

- - - - - 0x0339A0 22:B990: 0D        .byte $0D    ; <す>
- - - - - 0x0339A1 22:B991: 05        .byte $05    ; <お>

- - - - - 0x0339A2 22:B992: 02        .byte $02    ; <い>

- - - - - 0x0339A3 22:B993: 02        .byte $02    ; <い>
- - - - - 0x0339A4 22:B994: 02        .byte $02    ; <い>
- - - - - 0x0339A5 22:B995: E2 BE     .word off_BEE2
- - - - - 0x0339A7 22:B997: 04        .byte $04    ; <え>
- - - - - 0x0339A8 22:B998: 03        .byte $03    ; <う>
- - - - - 0x0339A9 22:B999: 8C BF     .word off_BF8C



off_B99B_39_замена_основного_состава:
- D - I - 0x0339AB 22:B99B: 20 22     .word $2220

- D - I - 0x0339AD 22:B99D: 1F        .byte $1F    ; <ま>
- D - I - 0x0339AE 22:B99E: 0B        .byte $0B    ; <さ>

- D - I - 0x0339AF 22:B99F: 01        .byte $01    ; <あ>
- D - I - 0x0339B0 22:B9A0: 01        .byte $01    ; <あ>

- D - I - 0x0339B1 22:B9A1: 1D        .byte $1D    ; <へ>
- D - I - 0x0339B2 22:B9A2: 09        .byte $09    ; <け>

- D - I - 0x0339B3 22:B9A3: 15        .byte $15    ; <な>

- D - I - 0x0339B4 22:B9A4: 01        .byte $01    ; <あ>
- D - I - 0x0339B5 22:B9A5: 03        .byte $03    ; <う>
- D - I - 0x0339B6 22:B9A6: D8 BE     .word off_BED8
- D - I - 0x0339B8 22:B9A8: 03        .byte $03    ; <う>
- D - I - 0x0339B9 22:B9A9: 05        .byte $05    ; <お>
- D - I - 0x0339BA 22:B9AA: CE BD     .word off_BDCE
- D - I - 0x0339BC 22:B9AC: 05        .byte $05    ; <お>
- D - I - 0x0339BD 22:B9AD: 05        .byte $05    ; <お>
- D - I - 0x0339BE 22:B9AE: D1 BD     .word off_BDD1
- D - I - 0x0339C0 22:B9B0: 07        .byte $07    ; <き>
- D - I - 0x0339C1 22:B9B1: 05        .byte $05    ; <お>
- D - I - 0x0339C2 22:B9B2: D4 BD     .word off_BDD4
- D - I - 0x0339C4 22:B9B4: 09        .byte $09    ; <け>
- D - I - 0x0339C5 22:B9B5: 05        .byte $05    ; <お>
- D - I - 0x0339C6 22:B9B6: D7 BD     .word off_BDD7
- D - I - 0x0339C8 22:B9B8: 03        .byte $03    ; <う>
- D - I - 0x0339C9 22:B9B9: 0E        .byte $0E    ; <せ>
- D - I - 0x0339CA 22:B9BA: DA BD     .word off_BDDA
- D - I - 0x0339CC 22:B9BC: 05        .byte $05    ; <お>
- D - I - 0x0339CD 22:B9BD: 0E        .byte $0E    ; <せ>
- D - I - 0x0339CE 22:B9BE: DD BD     .word off_BDDD
- D - I - 0x0339D0 22:B9C0: 07        .byte $07    ; <き>
- D - I - 0x0339D1 22:B9C1: 0E        .byte $0E    ; <せ>
- D - I - 0x0339D2 22:B9C2: E0 BD     .word off_BDE0
- D - I - 0x0339D4 22:B9C4: 09        .byte $09    ; <け>
- D - I - 0x0339D5 22:B9C5: 0E        .byte $0E    ; <せ>
- D - I - 0x0339D6 22:B9C6: E3 BD     .word off_BDE3
- D - I - 0x0339D8 22:B9C8: 03        .byte $03    ; <う>
- D - I - 0x0339D9 22:B9C9: 17        .byte $17    ; <ぬ>
- D - I - 0x0339DA 22:B9CA: E6 BD     .word off_BDE6
- D - I - 0x0339DC 22:B9CC: 05        .byte $05    ; <お>
- D - I - 0x0339DD 22:B9CD: 17        .byte $17    ; <ぬ>
- D - I - 0x0339DE 22:B9CE: E9 BD     .word off_BDE9
- D - I - 0x0339E0 22:B9D0: 03        .byte $03    ; <う>
- D - I - 0x0339E1 22:B9D1: 03        .byte $03    ; <う>
- D - I - 0x0339E2 22:B9D2: ED BE     .word off_BEED
- D - I - 0x0339E4 22:B9D4: 05        .byte $05    ; <お>
- D - I - 0x0339E5 22:B9D5: 03        .byte $03    ; <う>
- D - I - 0x0339E6 22:B9D6: EF BE     .word off_BEEF
- D - I - 0x0339E8 22:B9D8: 07        .byte $07    ; <き>
- D - I - 0x0339E9 22:B9D9: 03        .byte $03    ; <う>
- D - I - 0x0339EA 22:B9DA: F1 BE     .word off_BEF1
- D - I - 0x0339EC 22:B9DC: 09        .byte $09    ; <け>
- D - I - 0x0339ED 22:B9DD: 03        .byte $03    ; <う>
- D - I - 0x0339EE 22:B9DE: F3 BE     .word off_BEF3
- D - I - 0x0339F0 22:B9E0: 03        .byte $03    ; <う>
- D - I - 0x0339F1 22:B9E1: 0C        .byte $0C    ; <し>
- D - I - 0x0339F2 22:B9E2: F5 BE     .word off_BEF5
- D - I - 0x0339F4 22:B9E4: 05        .byte $05    ; <お>
- D - I - 0x0339F5 22:B9E5: 0C        .byte $0C    ; <し>
- D - I - 0x0339F6 22:B9E6: F7 BE     .word off_BEF7
- D - I - 0x0339F8 22:B9E8: 07        .byte $07    ; <き>
- D - I - 0x0339F9 22:B9E9: 0C        .byte $0C    ; <し>
- D - I - 0x0339FA 22:B9EA: F9 BE     .word off_BEF9
- D - I - 0x0339FC 22:B9EC: 09        .byte $09    ; <け>
- D - I - 0x0339FD 22:B9ED: 0C        .byte $0C    ; <し>
- D - I - 0x0339FE 22:B9EE: FB BE     .word off_BEFB
- D - I - 0x033A00 22:B9F0: 03        .byte $03    ; <う>
- D - I - 0x033A01 22:B9F1: 14        .byte $14    ; <と>
- D - I - 0x033A02 22:B9F2: FD BE     .word off_BEFD
- D - I - 0x033A04 22:B9F4: 05        .byte $05    ; <お>
- D - I - 0x033A05 22:B9F5: 14        .byte $14    ; <と>
- D - I - 0x033A06 22:B9F6: 00 BF     .word off_BF00



off_B9F8_3A_замена_запасного_состава:
- D - I - 0x033A08 22:B9F8: 20 22     .word $2220

- D - I - 0x033A0A 22:B9FA: 20        .byte $20    ; <み>
- D - I - 0x033A0B 22:B9FB: 0B        .byte $0B    ; <さ>

- D - I - 0x033A0C 22:B9FC: 01        .byte $01    ; <あ>
- D - I - 0x033A0D 22:B9FD: 03        .byte $03    ; <う>

- D - I - 0x033A0E 22:B9FE: 1D        .byte $1D    ; <へ>
- D - I - 0x033A0F 22:B9FF: 07        .byte $07    ; <き>

- D - I - 0x033A10 22:BA00: 0E        .byte $0E    ; <せ>

- D - I - 0x033A11 22:BA01: 01        .byte $01    ; <あ>
- D - I - 0x033A12 22:BA02: 03        .byte $03    ; <う>
- D - I - 0x033A13 22:BA03: CF BE     .word off_BECF
- D - I - 0x033A15 22:BA05: 01        .byte $01    ; <あ>
- D - I - 0x033A16 22:BA06: 0D        .byte $0D    ; <す>
- D - I - 0x033A17 22:BA07: 03 BF     .word off_BF03
- D - I - 0x033A19 22:BA09: 03        .byte $03    ; <う>
- D - I - 0x033A1A 22:BA0A: 05        .byte $05    ; <お>
- D - I - 0x033A1B 22:BA0B: 15 BF     .word off_BF15
- D - I - 0x033A1D 22:BA0D: 05        .byte $05    ; <お>
- D - I - 0x033A1E 22:BA0E: 18        .byte $18    ; <ね>
- D - I - 0x033A1F 22:BA0F: 19 BF     .word off_BF19
- D - I - 0x033A21 22:BA11: 05        .byte $05    ; <お>
- D - I - 0x033A22 22:BA12: 03        .byte $03    ; <う>
- D - I - 0x033A23 22:BA13: 1E BF     .word off_BF1E
- D - I - 0x033A25 22:BA15: 07        .byte $07    ; <き>
- D - I - 0x033A26 22:BA16: 03        .byte $03    ; <う>
- D - I - 0x033A27 22:BA17: 21 BF     .word off_BF21
- D - I - 0x033A29 22:BA19: 09        .byte $09    ; <け>
- D - I - 0x033A2A 22:BA1A: 03        .byte $03    ; <う>
- D - I - 0x033A2B 22:BA1B: 24 BF     .word off_BF24
- D - I - 0x033A2D 22:BA1D: 05        .byte $05    ; <お>
- D - I - 0x033A2E 22:BA1E: 0A        .byte $0A    ; <こ>
- D - I - 0x033A2F 22:BA1F: 27 BF     .word off_BF27
- D - I - 0x033A31 22:BA21: 07        .byte $07    ; <き>
- D - I - 0x033A32 22:BA22: 0A        .byte $0A    ; <こ>
- D - I - 0x033A33 22:BA23: 2A BF     .word off_BF2A
- D - I - 0x033A35 22:BA25: 09        .byte $09    ; <け>
- D - I - 0x033A36 22:BA26: 0A        .byte $0A    ; <こ>
- D - I - 0x033A37 22:BA27: 2D BF     .word off_BF2D
- D - I - 0x033A39 22:BA29: 05        .byte $05    ; <お>
- D - I - 0x033A3A 22:BA2A: 11        .byte $11    ; <ち>
- D - I - 0x033A3B 22:BA2B: 30 BF     .word off_BF30
- D - I - 0x033A3D 22:BA2D: 07        .byte $07    ; <き>
- D - I - 0x033A3E 22:BA2E: 11        .byte $11    ; <ち>
- D - I - 0x033A3F 22:BA2F: 33 BF     .word off_BF33
- D - I - 0x033A41 22:BA31: 07        .byte $07    ; <き>
- D - I - 0x033A42 22:BA32: 18        .byte $18    ; <ね>
- D - I - 0x033A43 22:BA33: 36 BF     .word off_BF36
- D - I - 0x033A45 22:BA35: 09        .byte $09    ; <け>
- D - I - 0x033A46 22:BA36: 18        .byte $18    ; <ね>
- D - I - 0x033A47 22:BA37: 39 BF     .word off_BF39



off_BA39_3B_кого_отправить_на_скамейку:
- D - I - 0x033A49 22:BA39: 20 22     .word $2220

- D - I - 0x033A4B 22:BA3B: 1F        .byte $1F    ; <ま>
- D - I - 0x033A4C 22:BA3C: 0B        .byte $0B    ; <さ>

- D - I - 0x033A4D 22:BA3D: 01        .byte $01    ; <あ>
- D - I - 0x033A4E 22:BA3E: 01        .byte $01    ; <あ>

- D - I - 0x033A4F 22:BA3F: 1D        .byte $1D    ; <へ>
- D - I - 0x033A50 22:BA40: 09        .byte $09    ; <け>

- D - I - 0x033A51 22:BA41: 18        .byte $18    ; <ね>

- D - I - 0x033A52 22:BA42: 01        .byte $01    ; <あ>
- D - I - 0x033A53 22:BA43: 03        .byte $03    ; <う>
- D - I - 0x033A54 22:BA44: CF BE     .word off_BECF
- D - I - 0x033A56 22:BA46: 01        .byte $01    ; <あ>
- D - I - 0x033A57 22:BA47: 0B        .byte $0B    ; <さ>
- D - I - 0x033A58 22:BA48: 3C BF     .word off_BF3C
- D - I - 0x033A5A 22:BA4A: 07        .byte $07    ; <き>
- D - I - 0x033A5B 22:BA4B: 17        .byte $17    ; <ぬ>
- D - I - 0x033A5C 22:BA4C: CB BD     .word off_BDCB
- D - I - 0x033A5E 22:BA4E: 03        .byte $03    ; <う>
- D - I - 0x033A5F 22:BA4F: 05        .byte $05    ; <お>
- D - I - 0x033A60 22:BA50: CE BD     .word off_BDCE
- D - I - 0x033A62 22:BA52: 05        .byte $05    ; <お>
- D - I - 0x033A63 22:BA53: 05        .byte $05    ; <お>
- D - I - 0x033A64 22:BA54: D1 BD     .word off_BDD1
- D - I - 0x033A66 22:BA56: 07        .byte $07    ; <き>
- D - I - 0x033A67 22:BA57: 05        .byte $05    ; <お>
- D - I - 0x033A68 22:BA58: D4 BD     .word off_BDD4
- D - I - 0x033A6A 22:BA5A: 09        .byte $09    ; <け>
- D - I - 0x033A6B 22:BA5B: 05        .byte $05    ; <お>
- D - I - 0x033A6C 22:BA5C: D7 BD     .word off_BDD7
- D - I - 0x033A6E 22:BA5E: 03        .byte $03    ; <う>
- D - I - 0x033A6F 22:BA5F: 0E        .byte $0E    ; <せ>
- D - I - 0x033A70 22:BA60: DA BD     .word off_BDDA
- D - I - 0x033A72 22:BA62: 05        .byte $05    ; <お>
- D - I - 0x033A73 22:BA63: 0E        .byte $0E    ; <せ>
- D - I - 0x033A74 22:BA64: DD BD     .word off_BDDD
- D - I - 0x033A76 22:BA66: 07        .byte $07    ; <き>
- D - I - 0x033A77 22:BA67: 0E        .byte $0E    ; <せ>
- D - I - 0x033A78 22:BA68: E0 BD     .word off_BDE0
- D - I - 0x033A7A 22:BA6A: 09        .byte $09    ; <け>
- D - I - 0x033A7B 22:BA6B: 0E        .byte $0E    ; <せ>
- D - I - 0x033A7C 22:BA6C: E3 BD     .word off_BDE3
- D - I - 0x033A7E 22:BA6E: 03        .byte $03    ; <う>
- D - I - 0x033A7F 22:BA6F: 17        .byte $17    ; <ぬ>
- D - I - 0x033A80 22:BA70: E6 BD     .word off_BDE6
- D - I - 0x033A82 22:BA72: 05        .byte $05    ; <お>
- D - I - 0x033A83 22:BA73: 17        .byte $17    ; <ぬ>
- D - I - 0x033A84 22:BA74: E9 BD     .word off_BDE9
- D - I - 0x033A86 22:BA76: 07        .byte $07    ; <き>
- D - I - 0x033A87 22:BA77: 14        .byte $14    ; <と>
- D - I - 0x033A88 22:BA78: EA BE     .word off_BEEA
- D - I - 0x033A8A 22:BA7A: 03        .byte $03    ; <う>
- D - I - 0x033A8B 22:BA7B: 03        .byte $03    ; <う>
- D - I - 0x033A8C 22:BA7C: ED BE     .word off_BEED
- D - I - 0x033A8E 22:BA7E: 05        .byte $05    ; <お>
- D - I - 0x033A8F 22:BA7F: 03        .byte $03    ; <う>
- D - I - 0x033A90 22:BA80: EF BE     .word off_BEEF
- D - I - 0x033A92 22:BA82: 07        .byte $07    ; <き>
- D - I - 0x033A93 22:BA83: 03        .byte $03    ; <う>
- D - I - 0x033A94 22:BA84: F1 BE     .word off_BEF1
- D - I - 0x033A96 22:BA86: 09        .byte $09    ; <け>
- D - I - 0x033A97 22:BA87: 03        .byte $03    ; <う>
- D - I - 0x033A98 22:BA88: F3 BE     .word off_BEF3
- D - I - 0x033A9A 22:BA8A: 03        .byte $03    ; <う>
- D - I - 0x033A9B 22:BA8B: 0C        .byte $0C    ; <し>
- D - I - 0x033A9C 22:BA8C: F5 BE     .word off_BEF5
- D - I - 0x033A9E 22:BA8E: 05        .byte $05    ; <お>
- D - I - 0x033A9F 22:BA8F: 0C        .byte $0C    ; <し>
- D - I - 0x033AA0 22:BA90: F7 BE     .word off_BEF7
- D - I - 0x033AA2 22:BA92: 07        .byte $07    ; <き>
- D - I - 0x033AA3 22:BA93: 0C        .byte $0C    ; <し>
- D - I - 0x033AA4 22:BA94: F9 BE     .word off_BEF9
- D - I - 0x033AA6 22:BA96: 09        .byte $09    ; <け>
- D - I - 0x033AA7 22:BA97: 0C        .byte $0C    ; <し>
- D - I - 0x033AA8 22:BA98: FB BE     .word off_BEFB
- D - I - 0x033AAA 22:BA9A: 03        .byte $03    ; <う>
- D - I - 0x033AAB 22:BA9B: 14        .byte $14    ; <と>
- D - I - 0x033AAC 22:BA9C: FD BE     .word off_BEFD
- D - I - 0x033AAE 22:BA9E: 05        .byte $05    ; <お>
- D - I - 0x033AAF 22:BA9F: 14        .byte $14    ; <と>
- D - I - 0x033AB0 22:BAA0: 00 BF     .word off_BF00



off_BAA2_3C_энергия_основного_состава:
- D - I - 0x033AB2 22:BAA2: 20 22     .word $2220

- D - I - 0x033AB4 22:BAA4: 20        .byte $20    ; <み>
- D - I - 0x033AB5 22:BAA5: 0B        .byte $0B    ; <さ>

- D - I - 0x033AB6 22:BAA6: 01        .byte $01    ; <あ>
- D - I - 0x033AB7 22:BAA7: 01        .byte $01    ; <あ>

- D - I - 0x033AB8 22:BAA8: 1E        .byte $1E    ; <ほ>
- D - I - 0x033AB9 22:BAA9: 0A        .byte $0A    ; <こ>

- D - I - 0x033ABA 22:BAAA: 16        .byte $16    ; <に>

- D - I - 0x033ABB 22:BAAB: 03        .byte $03    ; <う>
- D - I - 0x033ABC 22:BAAC: 03        .byte $03    ; <う>
- D - I - 0x033ABD 22:BAAD: CB BD     .word off_BDCB
- D - I - 0x033ABF 22:BAAF: 04        .byte $04    ; <え>
- D - I - 0x033AC0 22:BAB0: 07        .byte $07    ; <き>
- D - I - 0x033AC1 22:BAB1: 4D BF     .word off_BF4D
- D - I - 0x033AC3 22:BAB3: 06        .byte $06    ; <か>
- D - I - 0x033AC4 22:BAB4: 03        .byte $03    ; <う>
- D - I - 0x033AC5 22:BAB5: CE BD     .word off_BDCE
- D - I - 0x033AC7 22:BAB7: 07        .byte $07    ; <き>
- D - I - 0x033AC8 22:BAB8: 07        .byte $07    ; <き>
- D - I - 0x033AC9 22:BAB9: 50 BF     .word off_BF50
- D - I - 0x033ACB 22:BABB: 09        .byte $09    ; <け>
- D - I - 0x033ACC 22:BABC: 03        .byte $03    ; <う>
- D - I - 0x033ACD 22:BABD: D1 BD     .word off_BDD1
- D - I - 0x033ACF 22:BABF: 0A        .byte $0A    ; <こ>
- D - I - 0x033AD0 22:BAC0: 07        .byte $07    ; <き>
- D - I - 0x033AD1 22:BAC1: 53 BF     .word off_BF53
- D - I - 0x033AD3 22:BAC3: 03        .byte $03    ; <う>
- D - I - 0x033AD4 22:BAC4: 0A        .byte $0A    ; <こ>
- D - I - 0x033AD5 22:BAC5: D4 BD     .word off_BDD4
- D - I - 0x033AD7 22:BAC7: 04        .byte $04    ; <え>
- D - I - 0x033AD8 22:BAC8: 0E        .byte $0E    ; <せ>
- D - I - 0x033AD9 22:BAC9: 56 BF     .word off_BF56
- D - I - 0x033ADB 22:BACB: 06        .byte $06    ; <か>
- D - I - 0x033ADC 22:BACC: 0A        .byte $0A    ; <こ>
- D - I - 0x033ADD 22:BACD: D7 BD     .word off_BDD7
- D - I - 0x033ADF 22:BACF: 07        .byte $07    ; <き>
- D - I - 0x033AE0 22:BAD0: 0E        .byte $0E    ; <せ>
- D - I - 0x033AE1 22:BAD1: 59 BF     .word off_BF59
- D - I - 0x033AE3 22:BAD3: 09        .byte $09    ; <け>
- D - I - 0x033AE4 22:BAD4: 0A        .byte $0A    ; <こ>
- D - I - 0x033AE5 22:BAD5: DA BD     .word off_BDDA
- D - I - 0x033AE7 22:BAD7: 0A        .byte $0A    ; <こ>
- D - I - 0x033AE8 22:BAD8: 0E        .byte $0E    ; <せ>
- D - I - 0x033AE9 22:BAD9: 5C BF     .word off_BF5C
- D - I - 0x033AEB 22:BADB: 03        .byte $03    ; <う>
- D - I - 0x033AEC 22:BADC: 11        .byte $11    ; <ち>
- D - I - 0x033AED 22:BADD: DD BD     .word off_BDDD
- D - I - 0x033AEF 22:BADF: 04        .byte $04    ; <え>
- D - I - 0x033AF0 22:BAE0: 15        .byte $15    ; <な>
- D - I - 0x033AF1 22:BAE1: 5F BF     .word off_BF5F
- D - I - 0x033AF3 22:BAE3: 06        .byte $06    ; <か>
- D - I - 0x033AF4 22:BAE4: 11        .byte $11    ; <ち>
- D - I - 0x033AF5 22:BAE5: E0 BD     .word off_BDE0
- D - I - 0x033AF7 22:BAE7: 07        .byte $07    ; <き>
- D - I - 0x033AF8 22:BAE8: 15        .byte $15    ; <な>
- D - I - 0x033AF9 22:BAE9: 62 BF     .word off_BF62
- D - I - 0x033AFB 22:BAEB: 09        .byte $09    ; <け>
- D - I - 0x033AFC 22:BAEC: 11        .byte $11    ; <ち>
- D - I - 0x033AFD 22:BAED: E3 BD     .word off_BDE3
- D - I - 0x033AFF 22:BAEF: 0A        .byte $0A    ; <こ>
- D - I - 0x033B00 22:BAF0: 15        .byte $15    ; <な>
- D - I - 0x033B01 22:BAF1: 65 BF     .word off_BF65
- D - I - 0x033B03 22:BAF3: 03        .byte $03    ; <う>
- D - I - 0x033B04 22:BAF4: 18        .byte $18    ; <ね>
- D - I - 0x033B05 22:BAF5: E6 BD     .word off_BDE6
- D - I - 0x033B07 22:BAF7: 04        .byte $04    ; <え>
- D - I - 0x033B08 22:BAF8: 1C        .byte $1C    ; <ふ>
- D - I - 0x033B09 22:BAF9: 68 BF     .word off_BF68
- D - I - 0x033B0B 22:BAFB: 06        .byte $06    ; <か>
- D - I - 0x033B0C 22:BAFC: 18        .byte $18    ; <ね>
- D - I - 0x033B0D 22:BAFD: E9 BD     .word off_BDE9
- D - I - 0x033B0F 22:BAFF: 07        .byte $07    ; <き>
- D - I - 0x033B10 22:BB00: 1C        .byte $1C    ; <ふ>
- D - I - 0x033B11 22:BB01: 6B BF     .word off_BF6B



off_BB03_3D_энергия_запасного_состава:
- - - - - 0x033B13 22:BB03: 20 22     .word $2220

- - - - - 0x033B15 22:BB05: 20        .byte $20    ; <み>
- - - - - 0x033B16 22:BB06: 0B        .byte $0B    ; <さ>

- - - - - 0x033B17 22:BB07: 01        .byte $01    ; <あ>
- - - - - 0x033B18 22:BB08: 01        .byte $01    ; <あ>

- - - - - 0x033B19 22:BB09: 1E        .byte $1E    ; <ほ>
- - - - - 0x033B1A 22:BB0A: 0A        .byte $0A    ; <こ>

- - - - - 0x033B1B 22:BB0B: 14        .byte $14    ; <と>

- - - - - 0x033B1C 22:BB0C: 03        .byte $03    ; <う>
- - - - - 0x033B1D 22:BB0D: 03        .byte $03    ; <う>
- - - - - 0x033B1E 22:BB0E: 1E BF     .word off_BF1E
- - - - - 0x033B20 22:BB10: 04        .byte $04    ; <え>
- - - - - 0x033B21 22:BB11: 07        .byte $07    ; <き>
- - - - - 0x033B22 22:BB12: 6E BF     .word off_BF6E
- - - - - 0x033B24 22:BB14: 06        .byte $06    ; <か>
- - - - - 0x033B25 22:BB15: 03        .byte $03    ; <う>
- - - - - 0x033B26 22:BB16: 21 BF     .word off_BF21
- - - - - 0x033B28 22:BB18: 07        .byte $07    ; <き>
- - - - - 0x033B29 22:BB19: 07        .byte $07    ; <き>
- - - - - 0x033B2A 22:BB1A: 71 BF     .word off_BF71
- - - - - 0x033B2C 22:BB1C: 09        .byte $09    ; <け>
- - - - - 0x033B2D 22:BB1D: 03        .byte $03    ; <う>
- - - - - 0x033B2E 22:BB1E: 24 BF     .word off_BF24
- - - - - 0x033B30 22:BB20: 0A        .byte $0A    ; <こ>
- - - - - 0x033B31 22:BB21: 07        .byte $07    ; <き>
- - - - - 0x033B32 22:BB22: 74 BF     .word off_BF74
- - - - - 0x033B34 22:BB24: 03        .byte $03    ; <う>
- - - - - 0x033B35 22:BB25: 0A        .byte $0A    ; <こ>
- - - - - 0x033B36 22:BB26: 27 BF     .word off_BF27
- - - - - 0x033B38 22:BB28: 04        .byte $04    ; <え>
- - - - - 0x033B39 22:BB29: 0E        .byte $0E    ; <せ>
- - - - - 0x033B3A 22:BB2A: 77 BF     .word off_BF77
- - - - - 0x033B3C 22:BB2C: 06        .byte $06    ; <か>
- - - - - 0x033B3D 22:BB2D: 0A        .byte $0A    ; <こ>
- - - - - 0x033B3E 22:BB2E: 2A BF     .word off_BF2A
- - - - - 0x033B40 22:BB30: 07        .byte $07    ; <き>
- - - - - 0x033B41 22:BB31: 0E        .byte $0E    ; <せ>
- - - - - 0x033B42 22:BB32: 7A BF     .word off_BF7A
- - - - - 0x033B44 22:BB34: 09        .byte $09    ; <け>
- - - - - 0x033B45 22:BB35: 0A        .byte $0A    ; <こ>
- - - - - 0x033B46 22:BB36: 2D BF     .word off_BF2D
- - - - - 0x033B48 22:BB38: 0A        .byte $0A    ; <こ>
- - - - - 0x033B49 22:BB39: 0E        .byte $0E    ; <せ>
- - - - - 0x033B4A 22:BB3A: 7D BF     .word off_BF7D
- - - - - 0x033B4C 22:BB3C: 03        .byte $03    ; <う>
- - - - - 0x033B4D 22:BB3D: 11        .byte $11    ; <ち>
- - - - - 0x033B4E 22:BB3E: 30 BF     .word off_BF30
- - - - - 0x033B50 22:BB40: 04        .byte $04    ; <え>
- - - - - 0x033B51 22:BB41: 15        .byte $15    ; <な>
- - - - - 0x033B52 22:BB42: 80 BF     .word off_BF80
- - - - - 0x033B54 22:BB44: 06        .byte $06    ; <か>
- - - - - 0x033B55 22:BB45: 11        .byte $11    ; <ち>
- - - - - 0x033B56 22:BB46: 33 BF     .word off_BF33
- - - - - 0x033B58 22:BB48: 07        .byte $07    ; <き>
- - - - - 0x033B59 22:BB49: 15        .byte $15    ; <な>
- - - - - 0x033B5A 22:BB4A: 83 BF     .word off_BF83
- - - - - 0x033B5C 22:BB4C: 09        .byte $09    ; <け>
- - - - - 0x033B5D 22:BB4D: 11        .byte $11    ; <ち>
- - - - - 0x033B5E 22:BB4E: 36 BF     .word off_BF36
- - - - - 0x033B60 22:BB50: 0A        .byte $0A    ; <こ>
- - - - - 0x033B61 22:BB51: 15        .byte $15    ; <な>
- - - - - 0x033B62 22:BB52: 86 BF     .word off_BF86
- - - - - 0x033B64 22:BB54: 03        .byte $03    ; <う>
- - - - - 0x033B65 22:BB55: 18        .byte $18    ; <ね>
- - - - - 0x033B66 22:BB56: 39 BF     .word off_BF39
- - - - - 0x033B68 22:BB58: 04        .byte $04    ; <え>
- - - - - 0x033B69 22:BB59: 1C        .byte $1C    ; <ふ>
- - - - - 0x033B6A 22:BB5A: 89 BF     .word off_BF89



off_BB5C_3E_кто_бьет_пенальти:
- D - I - 0x033B6C 22:BB5C: 00 20     .word $2000

- D - I - 0x033B6E 22:BB5E: 20        .byte $20    ; <み>
- D - I - 0x033B6F 22:BB5F: 1D        .byte $1D    ; <へ>

- D - I - 0x033B70 22:BB60: 00        .byte $00
- D - I - 0x033B71 22:BB61: 00        .byte $00

- D - I - 0x033B72 22:BB62: 03        .byte $03    ; <う>
- D - I - 0x033B73 22:BB63: 02        .byte $02    ; <い>

- D - I - 0x033B74 22:BB64: 01        .byte $01    ; <あ>

- D - I - 0x033B75 22:BB65: 04        .byte $04    ; <え>
- D - I - 0x033B76 22:BB66: 07        .byte $07    ; <き>
- D - I - 0x033B77 22:BB67: 95 BF     .word off_BF95



off_BB69_3F_выбор_игроков_на_пенальти:
- D - I - 0x033B79 22:BB69: A3 20     .word $20A3

- D - I - 0x033B7B 22:BB6B: 0B        .byte $0B    ; <さ>
- D - I - 0x033B7C 22:BB6C: 16        .byte $16    ; <に>

- D - I - 0x033B7D 22:BB6D: 00        .byte $00
- D - I - 0x033B7E 22:BB6E: 00        .byte $00

- D - I - 0x033B7F 22:BB6F: 0B        .byte $0B    ; <さ>
- D - I - 0x033B80 22:BB70: 16        .byte $16    ; <に>

- D - I - 0x033B81 22:BB71: 0B        .byte $0B    ; <さ>

- D - I - 0x033B82 22:BB72: 01        .byte $01    ; <あ>
- D - I - 0x033B83 22:BB73: 07        .byte $07    ; <き>
- D - I - 0x033B84 22:BB74: B0 BF     .word off_BFB0
- D - I - 0x033B86 22:BB76: 03        .byte $03    ; <う>
- D - I - 0x033B87 22:BB77: 01        .byte $01    ; <あ>
- D - I - 0x033B88 22:BB78: B5 BF     .word off_BFB5
- D - I - 0x033B8A 22:BB7A: 05        .byte $05    ; <お>
- D - I - 0x033B8B 22:BB7B: 01        .byte $01    ; <あ>
- D - I - 0x033B8C 22:BB7C: B5 BF     .word off_BFB5
- D - I - 0x033B8E 22:BB7E: 07        .byte $07    ; <き>
- D - I - 0x033B8F 22:BB7F: 01        .byte $01    ; <あ>
- D - I - 0x033B90 22:BB80: B5 BF     .word off_BFB5
- D - I - 0x033B92 22:BB82: 09        .byte $09    ; <け>
- D - I - 0x033B93 22:BB83: 01        .byte $01    ; <あ>
- D - I - 0x033B94 22:BB84: B5 BF     .word off_BFB5
- D - I - 0x033B96 22:BB86: 0B        .byte $0B    ; <さ>
- D - I - 0x033B97 22:BB87: 01        .byte $01    ; <あ>
- D - I - 0x033B98 22:BB88: B5 BF     .word off_BFB5
- D - I - 0x033B9A 22:BB8A: 0D        .byte $0D    ; <す>
- D - I - 0x033B9B 22:BB8B: 01        .byte $01    ; <あ>
- D - I - 0x033B9C 22:BB8C: B5 BF     .word off_BFB5
- D - I - 0x033B9E 22:BB8E: 0F        .byte $0F    ; <そ>
- D - I - 0x033B9F 22:BB8F: 01        .byte $01    ; <あ>
- D - I - 0x033BA0 22:BB90: B5 BF     .word off_BFB5
- D - I - 0x033BA2 22:BB92: 11        .byte $11    ; <ち>
- D - I - 0x033BA3 22:BB93: 01        .byte $01    ; <あ>
- D - I - 0x033BA4 22:BB94: B5 BF     .word off_BFB5
- D - I - 0x033BA6 22:BB96: 13        .byte $13    ; <て>
- D - I - 0x033BA7 22:BB97: 01        .byte $01    ; <あ>
- D - I - 0x033BA8 22:BB98: B5 BF     .word off_BFB5
- D - I - 0x033BAA 22:BB9A: 15        .byte $15    ; <な>
- D - I - 0x033BAB 22:BB9B: 01        .byte $01    ; <あ>
- D - I - 0x033BAC 22:BB9C: B5 BF     .word off_BFB5



off_BB9E_40_выбранные_игроки_на_пенальти:
- D - I - 0x033BAE 22:BB9E: 0F 21     .word $210F

- D - I - 0x033BB0 22:BBA0: 0D        .byte $0D    ; <す>
- D - I - 0x033BB1 22:BBA1: 0E        .byte $0E    ; <せ>

- D - I - 0x033BB2 22:BBA2: 00        .byte $00
- D - I - 0x033BB3 22:BBA3: 00        .byte $00

- D - I - 0x033BB4 22:BBA4: 0D        .byte $0D    ; <す>
- D - I - 0x033BB5 22:BBA5: 0E        .byte $0E    ; <せ>

- D - I - 0x033BB6 22:BBA6: 06        .byte $06    ; <か>

- D - I - 0x033BB7 22:BBA7: 02        .byte $02    ; <い>
- D - I - 0x033BB8 22:BBA8: 03        .byte $03    ; <う>
- D - I - 0x033BB9 22:BBA9: A9 BF     .word off_BFA9
- D - I - 0x033BBB 22:BBAB: 04        .byte $04    ; <え>
- D - I - 0x033BBC 22:BBAC: 03        .byte $03    ; <う>
- D - I - 0x033BBD 22:BBAD: B7 BF     .word off_BFB7
- D - I - 0x033BBF 22:BBAF: 06        .byte $06    ; <か>
- D - I - 0x033BC0 22:BBB0: 03        .byte $03    ; <う>
- D - I - 0x033BC1 22:BBB1: BC BF     .word off_BFBC
- D - I - 0x033BC3 22:BBB3: 08        .byte $08    ; <く>
- D - I - 0x033BC4 22:BBB4: 03        .byte $03    ; <う>
- D - I - 0x033BC5 22:BBB5: C1 BF     .word off_BFC1
- D - I - 0x033BC7 22:BBB7: 0A        .byte $0A    ; <こ>
- D - I - 0x033BC8 22:BBB8: 03        .byte $03    ; <う>
- D - I - 0x033BC9 22:BBB9: C6 BF     .word off_BFC6
- D - I - 0x033BCB 22:BBBB: 0C        .byte $0C    ; <し>
- D - I - 0x033BCC 22:BBBC: 03        .byte $03    ; <う>
- D - I - 0x033BCD 22:BBBD: CB BF     .word off_BFCB



off_BBBF_41_пенальти_после_матча:
- D - I - 0x033BCF 22:BBBF: 20 22     .word $2220

- D - I - 0x033BD1 22:BBC1: 08        .byte $08    ; <く>
- D - I - 0x033BD2 22:BBC2: 06        .byte $06    ; <か>

- D - I - 0x033BD3 22:BBC3: 01        .byte $01    ; <あ>
- D - I - 0x033BD4 22:BBC4: 01        .byte $01    ; <あ>

- D - I - 0x033BD5 22:BBC5: 07        .byte $07    ; <き>
- D - I - 0x033BD6 22:BBC6: 05        .byte $05    ; <お>

- D - I - 0x033BD7 22:BBC7: 05        .byte $05    ; <お>

- D - I - 0x033BD8 22:BBC8: 01        .byte $01    ; <あ>
- D - I - 0x033BD9 22:BBC9: 02        .byte $02    ; <い>
- D - I - 0x033BDA 22:BBCA: D0 BF     .word off_BFD0_надпись_PK
- D - I - 0x033BDC 22:BBCC: 03        .byte $03    ; <う>
- D - I - 0x033BDD 22:BBCD: 02        .byte $02    ; <い>
- D - I - 0x033BDE 22:BBCE: E0 BB     .word off_BBE0_имя_команды_слева
- D - I - 0x033BE0 22:BBD0: 05        .byte $05    ; <お>
- D - I - 0x033BE1 22:BBD1: 02        .byte $02    ; <い>
- D - I - 0x033BE2 22:BBD2: E3 BB     .word off_BBE3_имя_команды_справа
- D - I - 0x033BE4 22:BBD4: 03        .byte $03    ; <う>
- D - I - 0x033BE5 22:BBD5: 06        .byte $06    ; <か>
- D - I - 0x033BE6 22:BBD6: 9C BD     .word off_BD9C_счет_команды_слева
- D - I - 0x033BE8 22:BBD8: 05        .byte $05    ; <お>
- D - I - 0x033BE9 22:BBD9: 06        .byte $06    ; <か>
- D - I - 0x033BEA 22:BBDA: 9F BD     .word off_BD9F_счет_команды_справа



off_BBE0_имя_команды_слева:
    .byte con_team_name, $00
    .byte con_закончить



off_BBE3_имя_команды_справа:
    .byte con_team_name, $01
    .byte con_закончить



off_BBE6_текст_action:
    .text "Action"
    .byte con_закончить

off_BBED_текст_кому_пас_вопрос:
    .text "Where?"
    .byte con_закончить

off_BBF4_текст_use_d_pad:
    .text "Use D-Pad"
    .byte con_закончить

off_BBFA_текст_кому:
    .text "A selects"
    .byte con_закончить

off_BC02_текст_перепасовка:
- D - I - 0x033C12 22:BC02: 6C        .byte $6C    ; <ワ>
- D - I - 0x033C13 22:BC03: 6E        .byte $6E    ; <ン>
- D - I - 0x033C14 22:BC04: 52        .byte $52    ; <ツ>
- D - I - 0x033C15 22:BC05: 7D        .byte $7D    ; <ー>
- D - I - 0x033C16 22:BC06: 68        .byte $68    ; <リ>
- D - I - 0x033C17 22:BC07: 50        .byte $50    ; <タ>
- D - I - 0x033C18 22:BC08: 7D        .byte $7D    ; <ー>
- D - I - 0x033C19 22:BC09: 6E        .byte $6E    ; <ン>
- D - I - 0x033C1A 22:BC0A: FC        .byte con_закончить
off_BC0B_текст_с_кем:
- D - I - 0x033C1B 22:BC0B: 20        .byte $20    ; <み>
- D - I - 0x033C1C 22:BC0C: 06        .byte $06    ; <か>
- D - I - 0x033C1D 22:BC0D: 10        .byte $10    ; <た>
- D - I - 0x033C1E 22:BC0E: 2D        .byte $2D    ; <を>
- D - I - 0x033C1F 22:BC0F: 0E        .byte $0E    ; <せ>
- D - I - 0x033C20 22:BC10: 2E        .byte $2E    ; <ん>
- D - I - 0x033C21 22:BC11: 10        .byte $10    ; <た>
- D - I - 0x033C22 22:BC12: 08        .byte $08    ; <く>
- D - I - 0x033C23 22:BC13: FC        .byte con_закончить

off_BC21_позиция_и_имя_игрока:
    .byte con_plr_name_pos
    .byte con_закончить

off_BC23_stamina_attack_и_количество:
    .text "Stamina     "
    .byte con_stats_attack, con_stamina_atk
    .byte con_закончить

off_BC4F_trap_и_величина:
    .text "Trap        "
    .byte con_stats_attack, con_trap_atk
    .byte con_закончить

off_BC5A_pass_и_величина:
    .text "Pass        "
    .byte con_stats_attack, con_08
    .byte con_закончить

off_BC65_air_shot_и_величина:
    .text "Shoot       "
    .byte con_stats_attack, con_air_shot
    .byte con_закончить

off_BC70_clear_и_величина:
    .text "Clear       "
    .byte con_stats_attack, con_clear_atk
    .byte con_закончить

off_BC7C:
    .byte con_E4, $00
    .byte con_закончить

off_BC7F:
    .byte con_E4, $01
    .byte con_закончить

off_BC82:
    .byte con_E4, $02
    .byte con_закончить

off_BC85:
    .byte con_E4, $03
    .byte con_закончить

off_BC88_defender_1:
    .byte con_defender_name_action, $00
    .byte con_закончить

off_BC8B_defender_2:
    .byte con_defender_name_action, $01
    .byte con_закончить

off_BC8E_defender_3:
    .byte con_defender_name_action, $02
    .byte con_закончить

off_BC91_defender_4:
    .byte con_defender_name_action, $03
    .byte con_закончить

off_BC94:
    .byte con_E6, $00
    .byte con_закончить

off_BC97:
    .byte con_E6, $01
    .byte con_закончить

off_BC9A:
    .byte con_defender_name_stats
    .byte con_закончить

off_BC9C_stamina_def:
    .text "Stamina    "
    .byte con_stats_defense, con_stamina_def
    .byte con_закончить

off_BCA7_tackle:
    .text "Tackle     "
    .byte con_stats_defense, con_tackle
    .byte con_закончить

off_BCB2_block:
    .text "Block      "
    .byte con_stats_defense, con_block
    .byte con_закончить

off_BCBD_passcut:
    .text "Passcut    "
    .byte con_stats_defense, con_passcut
    .byte con_закончить

off_BCC8:
- D - I - 0x033CD8 22:BCC8: 0E        .byte $0E    ; <せ>
- D - I - 0x033CD9 22:BCC9: 28        .byte $28    ; <り>
- D - I - 0x033CDA 22:BCCA: 01        .byte $01    ; <あ>
- D - I - 0x033CDB 22:BCCB: 03        .byte $03    ; <う>
- D - I - 0x033CDC 22:BCCC: 00        .byte $00
- D - I - 0x033CDD 22:BCCD: 00        .byte $00
- D - I - 0x033CDE 22:BCCE: 00        .byte $00
- D - I - 0x033CDF 22:BCCF: 00        .byte $00
- D - I - 0x033CE0 22:BCD0: E8        .byte $E8
- D - I - 0x033CE1 22:BCD1: 0D        .byte $0D    ; <す>
- D - I - 0x033CE2 22:BCD2: FC        .byte con_закончить

off_BCD3:
- D - I - 0x033CE3 22:BCD3: CD        .byte $CD    ; <パ>
- D - I - 0x033CE4 22:BCD4: 4D        .byte $4D    ; <ス>
- D - I - 0x033CE5 22:BCD5: 46        .byte $46    ; <カ>
- D - I - 0x033CE6 22:BCD6: 6F        .byte $6F    ; <ッ>
- D - I - 0x033CE7 22:BCD7: 54        .byte $54    ; <ト>
- D - I - 0x033CE8 22:BCD8: 00        .byte $00
- D - I - 0x033CE9 22:BCD9: 00        .byte $00
- D - I - 0x033CEA 22:BCDA: 00        .byte $00
- D - I - 0x033CEB 22:BCDB: E8        .byte $E8
- D - I - 0x033CEC 22:BCDC: 0E        .byte $0E    ; <せ>
- D - I - 0x033CED 22:BCDD: FC        .byte con_закончить

off_BCDE:
- D - I - 0x033CEE 22:BCDE: 48        .byte $48    ; <ク>
- D - I - 0x033CEF 22:BCDF: 68        .byte $68    ; <リ>
- D - I - 0x033CF0 22:BCE0: 41        .byte $41    ; <ア>
- D - I - 0x033CF1 22:BCE1: 7D        .byte $7D    ; <ー>
- D - I - 0x033CF2 22:BCE2: 00        .byte $00
- D - I - 0x033CF3 22:BCE3: 00        .byte $00
- D - I - 0x033CF4 22:BCE4: 00        .byte $00
- D - I - 0x033CF5 22:BCE5: 00        .byte $00
- D - I - 0x033CF6 22:BCE6: E8        .byte $E8
- D - I - 0x033CF7 22:BCE7: 0C        .byte $0C    ; <し>
- D - I - 0x033CF8 22:BCE8: FC        .byte con_закончить

off_BCE9:
- D - I - 0x033CF9 22:BCE9: 20        .byte $20    ; <み>
- D - I - 0x033CFA 22:BCEA: 06        .byte $06    ; <か>
- D - I - 0x033CFB 22:BCEB: 10        .byte $10    ; <た>
- D - I - 0x033CFC 22:BCEC: FC        .byte con_закончить

off_BCED:
    .byte con_pass_reciever_name_temmate, $00
    .byte con_закончить

off_BCF0:
    .byte con_pass_reciever_name_temmate, $01
    .byte con_закончить

off_BCF3:
    .byte con_pass_reciever_name_temmate, $02
    .byte con_закончить

off_BCF6:
    .byte con_pass_reciever_name_temmate, $03
    .byte con_закончить

off_BCF9_позиция_и_имя_принимающего:
    .byte con_teammate_name
    .byte con_закончить

off_BCFB_энергия_принимающего:
    .text "Stamina    "
    .byte con_stats_reciever, con_stamina_rec
    .byte con_закончить

off_BD06_shoot_принимающего:
    .text "Shoot      "
    .byte con_stats_reciever, con_shoot_rec
    .byte con_закончить

off_BD11_dribble_принимающего:
    .text "Dribble    "
    .byte con_stats_reciever, con_dribble_rec
    .byte con_закончить

off_BD1C_pass_принимающего:
    .text "Pass       "
    .byte con_stats_reciever, con_pass_rec
    .byte con_закончить

off_BD27:       ; unused
- - - - - 0x033D37 22:BD27: 54        .byte $54    ; <ト>
- - - - - 0x033D38 22:BD28: 67        .byte $67    ; <ラ>
- - - - - 0x033D39 22:BD29: 6F        .byte $6F    ; <ッ>
- - - - - 0x033D3A 22:BD2A: CF        .byte $CF    ; <プ>
- - - - - 0x033D3B 22:BD2B: 00        .byte $00
- - - - - 0x033D3C 22:BD2C: 00        .byte $00
- - - - - 0x033D3D 22:BD2D: 00        .byte $00
- - - - - 0x033D3E 22:BD2E: 00        .byte $00
- - - - - 0x033D3F 22:BD2F: E3        .byte con_stats_reciever, con_trap_rec
- - - - - 0x033D41 22:BD31: FC        .byte con_закончить

off_BD32:       ; unused
- - - - - 0x033D42 22:BD32: 48        .byte $48    ; <ク>
- - - - - 0x033D43 22:BD33: 68        .byte $68    ; <リ>
- - - - - 0x033D44 22:BD34: 41        .byte $41    ; <ア>
- - - - - 0x033D45 22:BD35: 7D        .byte $7D    ; <ー>
- - - - - 0x033D46 22:BD36: 00        .byte $00
- - - - - 0x033D47 22:BD37: 00        .byte $00
- - - - - 0x033D48 22:BD38: 00        .byte $00
- - - - - 0x033D49 22:BD39: 00        .byte $00
- - - - - 0x033D4A 22:BD3A: E3        .byte con_stats_reciever, con_clear_rec
- - - - - 0x033D4C 22:BD3C: FC        .byte con_закончить

off_BD3D:
- D - I - 0x033D4D 22:BD3D: 13        .byte $13    ; <て>
- D - I - 0x033D4E 22:BD3E: 07        .byte $07    ; <き>
- D - I - 0x033D4F 22:BD3F: FC        .byte con_закончить

off_BD40:
    .byte con_pass_reciever_name_opponent, $00
    .byte con_закончить

off_BD43:
    .byte con_pass_reciever_name_opponent, $01
    .byte con_закончить

off_BD46:       ; unused
    .byte con_pass_reciever_name_opponent, $02
    .byte con_закончить

off_BD49:       ; unused
    .byte con_pass_reciever_name_opponent, $03
    .byte con_закончить

off_BD4C:
- D - I - 0x033D5C 22:BD4C: AA        .byte $AA    ; <だ>
- D - I - 0x033D5D 22:BD4D: 2A        .byte $2A    ; <れ>
- D - I - 0x033D5E 22:BD4E: 16        .byte $16    ; <に>
- D - I - 0x033D5F 22:BD4F: CD        .byte $CD    ; <パ>
- D - I - 0x033D60 22:BD50: 4D        .byte $4D    ; <ス>
- D - I - 0x033D61 22:BD51: 78        .byte $78    ; <?>
- D - I - 0x033D62 22:BD52: FC        .byte con_закончить

off_BD53_имя_и_позиция_кипера:
    .byte con_gk_name
    .byte con_закончить

off_BD55_энергия_кипера:
    .text "Stamina     "
    .byte con_stats_gk, con_stamina_gk
    .byte con_закончить

off_BD60_punch:
    .text "Punch       "
    .byte con_stats_gk, con_punch
    .byte con_закончить

off_BD6B_catch:
    .text "Catch       "
    .byte con_stats_gk, con_catch
    .byte con_закончить

off_BD76:
- D - I - 0x033D86 22:BD76: 14        .byte $14    ; <と>
- D - I - 0x033D87 22:BD77: B0        .byte $B0    ; <び>
- D - I - 0x033D88 22:BD78: AA        .byte $AA    ; <だ>
- D - I - 0x033D89 22:BD79: 0D        .byte $0D    ; <す>
- D - I - 0x033D8A 22:BD7A: 00        .byte $00
- D - I - 0x033D8B 22:BD7B: 00        .byte $00
- D - I - 0x033D8C 22:BD7C: 00        .byte $00
- D - I - 0x033D8D 22:BD7D: 00        .byte $00
- D - I - 0x033D8E 22:BD7E: EC        .byte con_stats_gk, con_catch
- D - I - 0x033D90 22:BD80: FC        .byte con_закончить

off_BD81:
- D - I - 0x033D91 22:BD81: 4C        .byte $4C    ; <シ>
- D - I - 0x033D92 22:BD82: 71        .byte $71    ; <ュ>
- D - I - 0x033D93 22:BD83: 7D        .byte $7D    ; <ー>
- D - I - 0x033D94 22:BD84: 54        .byte $54    ; <ト>
- D - I - 0x033D95 22:BD85: 16        .byte $16    ; <に>
- D - I - 0x033D96 22:BD86: 00        .byte $00
- D - I - 0x033D97 22:BD87: 00        .byte $00
- D - I - 0x033D98 22:BD88: 00        .byte $00
- D - I - 0x033D99 22:BD89: EC        .byte con_stats_gk, con_1B_gk
- D - I - 0x033D9B 22:BD8B: FC        .byte con_закончить

off_BD8C:
- D - I - 0x033D9C 22:BD8C: C2        .byte $C2    ; <ド>
- D - I - 0x033D9D 22:BD8D: 68        .byte $68    ; <リ>
- D - I - 0x033D9E 22:BD8E: C5        .byte $C5    ; <ブ>
- D - I - 0x033D9F 22:BD8F: 69        .byte $69    ; <ル>
- D - I - 0x033DA0 22:BD90: 16        .byte $16    ; <に>
- D - I - 0x033DA1 22:BD91: 00        .byte $00
- D - I - 0x033DA2 22:BD92: 00        .byte $00
- D - I - 0x033DA3 22:BD93: 00        .byte $00
- D - I - 0x033DA4 22:BD94: EC        .byte con_stats_gk, con_1C_gk
- D - I - 0x033DA6 22:BD96: FC        .byte con_закончить

off_BD97:
- D - I - 0x033DA7 22:BD97: 0F        .byte $0F    ; <そ>
- D - I - 0x033DA8 22:BD98: 15        .byte $15    ; <な>
- D - I - 0x033DA9 22:BD99: 04        .byte $04    ; <え>
- D - I - 0x033DAA 22:BD9A: 29        .byte $29    ; <る>
- D - I - 0x033DAB 22:BD9B: FC        .byte con_закончить

off_BD9C_счет_команды_слева:
    .byte con_score, $00
    .byte con_закончить

off_BD9F_счет_команды_справа:
    .byte con_score, $01
    .byte con_закончить

off_BDA2:
- D - I - 0x033DB2 22:BDA2: 5C        .byte $5C    ; <フ>
- D - I - 0x033DB3 22:BDA3: 68        .byte $68    ; <リ>
- D - I - 0x033DB4 22:BDA4: 7D        .byte $7D    ; <ー>
- D - I - 0x033DB5 22:BDA5: 47        .byte $47    ; <キ>
- D - I - 0x033DB6 22:BDA6: 6F        .byte $6F    ; <ッ>
- D - I - 0x033DB7 22:BDA7: 48        .byte $48    ; <ク>
- D - I - 0x033DB8 22:BDA8: 00        .byte $00
- D - I - 0x033DB9 22:BDA9: 00        .byte $00
- D - I - 0x033DBA 22:BDAA: 00        .byte $00
- D - I - 0x033DBB 22:BDAB: 00        .byte $00
- D - I - 0x033DBC 22:BDAC: FC        .byte con_закончить

off_BDAD:
- D - I - 0x033DBD 22:BDAD: 4A        .byte $4A    ; <コ>
- D - I - 0x033DBE 22:BDAE: 7D        .byte $7D    ; <ー>
- D - I - 0x033DBF 22:BDAF: 55        .byte $55    ; <ナ>
- D - I - 0x033DC0 22:BDB0: 7D        .byte $7D    ; <ー>
- D - I - 0x033DC1 22:BDB1: 47        .byte $47    ; <キ>
- D - I - 0x033DC2 22:BDB2: 6F        .byte $6F    ; <ッ>
- D - I - 0x033DC3 22:BDB3: 48        .byte $48    ; <ク>
- D - I - 0x033DC4 22:BDB4: 00        .byte $00
- D - I - 0x033DC5 22:BDB5: 00        .byte $00
- D - I - 0x033DC6 22:BDB6: 00        .byte $00
- D - I - 0x033DC7 22:BDB7: FC        .byte con_закончить

off_BDB8:
- D - I - 0x033DC8 22:BDB8: 8D        .byte $8D    ; <P>
- D - I - 0x033DC9 22:BDB9: 7E        .byte $7E    ; <.>
- D - I - 0x033DCA 22:BDBA: 8B        .byte $8B    ; <K>
- D - I - 0x033DCB 22:BDBB: 00        .byte $00
- D - I - 0x033DCC 22:BDBC: 00        .byte $00
- D - I - 0x033DCD 22:BDBD: 00        .byte $00
- D - I - 0x033DCE 22:BDBE: 00        .byte $00
- D - I - 0x033DCF 22:BDBF: 00        .byte $00
- D - I - 0x033DD0 22:BDC0: 00        .byte $00
- D - I - 0x033DD1 22:BDC1: 00        .byte $00
- D - I - 0x033DD2 22:BDC2: FC        .byte con_закончить

off_BDC3:
- D - I - 0x033DD3 22:BDC3: 47        .byte $47    ; <キ>
- D - I - 0x033DD4 22:BDC4: 6F        .byte $6F    ; <ッ>
- D - I - 0x033DD5 22:BDC5: 46        .byte $46    ; <カ>
- D - I - 0x033DD6 22:BDC6: 7D        .byte $7D    ; <ー>
- D - I - 0x033DD7 22:BDC7: 1A        .byte $1A    ; <は>
- D - I - 0x033DD8 22:BDC8: 00        .byte $00
- D - I - 0x033DD9 22:BDC9: 78        .byte $78    ; <?>
- D - I - 0x033DDA 22:BDCA: FC        .byte con_закончить

off_BDCB:
    .byte con_F1, $00
    .byte con_закончить

off_BDCE:
    .byte con_F1, $01
    .byte con_закончить

off_BDD1:
    .byte con_F1, $02
    .byte con_закончить

off_BDD4:
    .byte con_F1, $03
    .byte con_закончить

off_BDD7:
    .byte con_F1, $04
    .byte con_закончить

off_BDDA:
    .byte con_F1, $05
    .byte con_закончить

off_BDDD:
    .byte con_F1, $06
    .byte con_закончить

off_BDE0:
    .byte con_F1, $07
    .byte con_закончить

off_BDE3:
    .byte con_F1, $08
    .byte con_закончить

off_BDE6:
    .byte con_F1, $09
    .byte con_закончить

off_BDE9:
    .byte con_F1, $0A
    .byte con_закончить

off_BDEC:
- D - I - 0x033DFC 22:BDEC: 0E        .byte $0E    ; <せ>
- D - I - 0x033DFD 22:BDED: 2E        .byte $2E    ; <ん>
- D - I - 0x033DFE 22:BDEE: 0C        .byte $0C    ; <し>
- D - I - 0x033DFF 22:BDEF: 31        .byte $31    ; <ゅ>
- D - I - 0x033E00 22:BDF0: 19        .byte $19    ; <の>
- D - I - 0x033E01 22:BDF1: 00        .byte $00
- D - I - 0x033E02 22:BDF2: D1        .byte $D1    ; <ポ>
- D - I - 0x033E03 22:BDF3: BA        .byte $BA    ; <ジ>
- D - I - 0x033E04 22:BDF4: 4C        .byte $4C    ; <シ>
- D - I - 0x033E05 22:BDF5: 72        .byte $72    ; <ョ>
- D - I - 0x033E06 22:BDF6: 6E        .byte $6E    ; <ン>
- D - I - 0x033E07 22:BDF7: 2D        .byte $2D    ; <を>
- D - I - 0x033E08 22:BDF8: 00        .byte $00
- D - I - 0x033E09 22:BDF9: 06        .byte $06    ; <か>
- D - I - 0x033E0A 22:BDFA: 04        .byte $04    ; <え>
- D - I - 0x033E0B 22:BDFB: 1F        .byte $1F    ; <ま>
- D - I - 0x033E0C 22:BDFC: 0D        .byte $0D    ; <す>
- D - I - 0x033E0D 22:BDFD: 06        .byte $06    ; <か>
- D - I - 0x033E0E 22:BDFE: 00        .byte $00
- D - I - 0x033E0F 22:BDFF: 78        .byte $78    ; <?>
- D - I - 0x033E10 22:BE00: FC        .byte con_закончить

off_BE01:
- D - I - 0x033E11 22:BE01: 06        .byte $06    ; <か>
- D - I - 0x033E12 22:BE02: 04        .byte $04    ; <え>
- D - I - 0x033E13 22:BE03: 15        .byte $15    ; <な>
- D - I - 0x033E14 22:BE04: 02        .byte $02    ; <い>
- D - I - 0x033E15 22:BE05: FC        .byte con_закончить

off_BE06:
- D - I - 0x033E16 22:BE06: 06        .byte $06    ; <か>
- D - I - 0x033E17 22:BE07: 04        .byte $04    ; <え>
- D - I - 0x033E18 22:BE08: 29        .byte $29    ; <る>
- D - I - 0x033E19 22:BE09: FC        .byte con_закончить

off_BE0A:
- D - I - 0x033E1A 22:BE0A: D1        .byte $D1    ; <ポ>
- D - I - 0x033E1B 22:BE0B: BA        .byte $BA    ; <ジ>
- D - I - 0x033E1C 22:BE0C: 4C        .byte $4C    ; <シ>
- D - I - 0x033E1D 22:BE0D: 72        .byte $72    ; <ョ>
- D - I - 0x033E1E 22:BE0E: 6E        .byte $6E    ; <ン>
- D - I - 0x033E1F 22:BE0F: 02        .byte $02    ; <い>
- D - I - 0x033E20 22:BE10: AE        .byte $AE    ; <ど>
- D - I - 0x033E21 22:BE11: 03        .byte $03    ; <う>
- D - I - 0x033E22 22:BE12: FC        .byte con_закончить

off_BE13:
- D - I - 0x033E23 22:BE13: 51        .byte $51    ; <チ>
- D - I - 0x033E24 22:BE14: 75        .byte $75    ; <ェ>
- D - I - 0x033E25 22:BE15: 6E        .byte $6E    ; <ン>
- D - I - 0x033E26 22:BE16: BA        .byte $BA    ; <ジ>
- D - I - 0x033E27 22:BE17: FC        .byte con_закончить

off_BE18:
- D - I - 0x033E28 22:BE18: 05        .byte $05    ; <お>
- D - I - 0x033E29 22:BE19: 2C        .byte $2C    ; <わ>
- D - I - 0x033E2A 22:BE1A: 28        .byte $28    ; <り>
- D - I - 0x033E2B 22:BE1B: FC        .byte con_закончить

off_BE1C:
- D - I - 0x033E2C 22:BE1C: 4C        .byte $4C    ; <シ>
- D - I - 0x033E2D 22:BE1D: 71        .byte $71    ; <ュ>
- D - I - 0x033E2E 22:BE1E: 7D        .byte $7D    ; <ー>
- D - I - 0x033E2F 22:BE1F: 54        .byte $54    ; <ト>
- D - I - 0x033E30 22:BE20: 4A        .byte $4A    ; <コ>
- D - I - 0x033E31 22:BE21: 7D        .byte $7D    ; <ー>
- D - I - 0x033E32 22:BE22: 4D        .byte $4D    ; <ス>
- D - I - 0x033E33 22:BE23: 1A        .byte $1A    ; <は>
- D - I - 0x033E34 22:BE24: 00        .byte $00
- D - I - 0x033E35 22:BE25: 78        .byte $78    ; <?>
- D - I - 0x033E36 22:BE26: FC        .byte con_закончить

off_BE27:
- D - I - 0x033E37 22:BE27: 20        .byte $20    ; <み>
- D - I - 0x033E38 22:BE28: A1        .byte $A1    ; <ぎ>
- D - I - 0x033E39 22:BE29: 4D        .byte $4D    ; <ス>
- D - I - 0x033E3A 22:BE2A: 60        .byte $60    ; <ミ>
- D - I - 0x033E3B 22:BE2B: FC        .byte con_закончить

off_BE2C:
- D - I - 0x033E3C 22:BE2C: 1B        .byte $1B    ; <ひ>
- D - I - 0x033E3D 22:BE2D: AA        .byte $AA    ; <だ>
- D - I - 0x033E3E 22:BE2E: 28        .byte $28    ; <り>
- D - I - 0x033E3F 22:BE2F: 4D        .byte $4D    ; <ス>
- D - I - 0x033E40 22:BE30: 60        .byte $60    ; <ミ>
- D - I - 0x033E41 22:BE31: FC        .byte con_закончить

off_BE32:
- D - I - 0x033E42 22:BE32: 46        .byte $46    ; <カ>
- D - I - 0x033E43 22:BE33: C6        .byte $C6    ; <ベ>
- D - I - 0x033E44 22:BE34: 19        .byte $19    ; <の>
- D - I - 0x033E45 22:BE35: 00        .byte $00
- D - I - 0x033E46 22:BE36: 02        .byte $02    ; <い>
- D - I - 0x033E47 22:BE37: 11        .byte $11    ; <ち>
- D - I - 0x033E48 22:BE38: 1A        .byte $1A    ; <は>
- D - I - 0x033E49 22:BE39: 00        .byte $00
- D - I - 0x033E4A 22:BE3A: 78        .byte $78    ; <?>
- D - I - 0x033E4B 22:BE3B: FC        .byte con_закончить

off_BE3C:
- D - I - 0x033E4C 22:BE3C: 1B        .byte $1B    ; <ひ>
- D - I - 0x033E4D 22:BE3D: AA        .byte $AA    ; <だ>
- D - I - 0x033E4E 22:BE3E: 28        .byte $28    ; <り>
- D - I - 0x033E4F 22:BE3F: 26        .byte $26    ; <よ>
- D - I - 0x033E50 22:BE40: 28        .byte $28    ; <り>
- D - I - 0x033E51 22:BE41: FC        .byte con_закончить

off_BE42:
- D - I - 0x033E52 22:BE42: 20        .byte $20    ; <み>
- D - I - 0x033E53 22:BE43: A1        .byte $A1    ; <ぎ>
- D - I - 0x033E54 22:BE44: 26        .byte $26    ; <よ>
- D - I - 0x033E55 22:BE45: 28        .byte $28    ; <り>
- D - I - 0x033E56 22:BE46: FC        .byte con_закончить

off_BE47:
- D - I - 0x033E57 22:BE47: AE        .byte $AE    ; <ど>
- D - I - 0x033E58 22:BE48: 0A        .byte $0A    ; <こ>
- D - I - 0x033E59 22:BE49: 16        .byte $16    ; <に>
- D - I - 0x033E5A 22:BE4A: 00        .byte $00
- D - I - 0x033E5B 22:BE4B: 09        .byte $09    ; <け>
- D - I - 0x033E5C 22:BE4C: 29        .byte $29    ; <る>
- D - I - 0x033E5D 22:BE4D: 00        .byte $00
- D - I - 0x033E5E 22:BE4E: 78        .byte $78    ; <?>
- D - I - 0x033E5F 22:BE4F: FC        .byte con_закончить

off_BE50:
- D - I - 0x033E60 22:BE50: AE        .byte $AE    ; <ど>
- D - I - 0x033E61 22:BE51: 0A        .byte $0A    ; <こ>
- D - I - 0x033E62 22:BE52: 16        .byte $16    ; <に>
- D - I - 0x033E63 22:BE53: 00        .byte $00
- D - I - 0x033E64 22:BE54: 14        .byte $14    ; <と>
- D - I - 0x033E65 22:BE55: B1        .byte $B1    ; <ぶ>
- D - I - 0x033E66 22:BE56: 00        .byte $00
- D - I - 0x033E67 22:BE57: 78        .byte $78    ; <?>
- D - I - 0x033E68 22:BE58: FC        .byte con_закончить

off_BE6F:
- D - I - 0x033E7F 22:BE6F: 0C        .byte $0C    ; <し>
- D - I - 0x033E80 22:BE70: 01        .byte $01    ; <あ>
- D - I - 0x033E81 22:BE71: 02        .byte $02    ; <い>
- D - I - 0x033E82 22:BE72: 0B        .byte $0B    ; <さ>
- D - I - 0x033E83 22:BE73: 02        .byte $02    ; <い>
- D - I - 0x033E84 22:BE74: 06        .byte $06    ; <か>
- D - I - 0x033E85 22:BE75: 02        .byte $02    ; <い>
- D - I - 0x033E86 22:BE76: FC        .byte con_закончить

off_BE77:
- D - I - 0x033E87 22:BE77: 51        .byte $51    ; <チ>
- D - I - 0x033E88 22:BE78: 7D        .byte $7D    ; <ー>
- D - I - 0x033E89 22:BE79: 61        .byte $61    ; <ム>
- D - I - 0x033E8A 22:BE7A: C1        .byte $C1    ; <デ>
- D - I - 0x033E8B 22:BE7B: 7D        .byte $7D    ; <ー>
- D - I - 0x033E8C 22:BE7C: 50        .byte $50    ; <タ>
- D - I - 0x033E8D 22:BE7D: 2D        .byte $2D    ; <を>
- D - I - 0x033E8E 22:BE7E: 00        .byte $00
- D - I - 0x033E8F 22:BE7F: 06        .byte $06    ; <か>
- D - I - 0x033E90 22:BE80: 04        .byte $04    ; <え>
- D - I - 0x033E91 22:BE81: 29        .byte $29    ; <る>
- D - I - 0x033E92 22:BE82: FC        .byte con_закончить

off_BE83:
- D - I - 0x033E93 22:BE83: 5C        .byte $5C    ; <フ>
- D - I - 0x033E94 22:BE84: 76        .byte $76    ; <ォ>
- D - I - 0x033E95 22:BE85: 7D        .byte $7D    ; <ー>
- D - I - 0x033E96 22:BE86: 62        .byte $62    ; <メ>
- D - I - 0x033E97 22:BE87: 7D        .byte $7D    ; <ー>
- D - I - 0x033E98 22:BE88: 4C        .byte $4C    ; <シ>
- D - I - 0x033E99 22:BE89: 72        .byte $72    ; <ョ>
- D - I - 0x033E9A 22:BE8A: 6E        .byte $6E    ; <ン>
- D - I - 0x033E9B 22:BE8B: FC        .byte con_закончить

off_BE8C:
- D - I - 0x033E9C 22:BE8C: C1        .byte $C1    ; <デ>
- D - I - 0x033E9D 22:BE8D: 74        .byte $74    ; <ィ>
- D - I - 0x033E9E 22:BE8E: 5C        .byte $5C    ; <フ>
- D - I - 0x033E9F 22:BE8F: 75        .byte $75    ; <ェ>
- D - I - 0x033EA0 22:BE90: 6E        .byte $6E    ; <ン>
- D - I - 0x033EA1 22:BE91: 4D        .byte $4D    ; <ス>
- D - I - 0x033EA2 22:BE92: 50        .byte $50    ; <タ>
- D - I - 0x033EA3 22:BE93: 42        .byte $42    ; <イ>
- D - I - 0x033EA4 22:BE94: CF        .byte $CF    ; <プ>
- D - I - 0x033EA5 22:BE95: FC        .byte con_закончить

off_BE96:
- D - I - 0x033EA6 22:BE96: 51        .byte $51    ; <チ>
- D - I - 0x033EA7 22:BE97: 75        .byte $75    ; <ェ>
- D - I - 0x033EA8 22:BE98: 6E        .byte $6E    ; <ン>
- D - I - 0x033EA9 22:BE99: BA        .byte $BA    ; <ジ>
- D - I - 0x033EAA 22:BE9A: FC        .byte con_закончить

off_BE9B:
- D - I - 0x033EAB 22:BE9B: 19        .byte $19    ; <の>
- D - I - 0x033EAC 22:BE9C: 0A        .byte $0A    ; <こ>
- D - I - 0x033EAD 22:BE9D: 28        .byte $28    ; <り>
- D - I - 0x033EAE 22:BE9E: B4        .byte $B4    ; <ガ>
- D - I - 0x033EAF 22:BE9F: 6F        .byte $6F    ; <ッ>
- D - I - 0x033EB0 22:BEA0: 52        .byte $52    ; <ツ>
- D - I - 0x033EB1 22:BEA1: FC        .byte con_закончить

off_BEA2:
- D - I - 0x033EB2 22:BEA2: 05        .byte $05    ; <お>
- D - I - 0x033EB3 22:BEA3: 2C        .byte $2C    ; <わ>
- D - I - 0x033EB4 22:BEA4: 28        .byte $28    ; <り>
- D - I - 0x033EB5 22:BEA5: FC        .byte con_закончить

off_BEA6:
- D - I - 0x033EB6 22:BEA6: 37        .byte $37    ; <4>
- D - I - 0x033EB7 22:BEA7: 77        .byte $77    ; <:>
- D - I - 0x033EB8 22:BEA8: 36        .byte $36    ; <3>
- D - I - 0x033EB9 22:BEA9: 77        .byte $77    ; <:>
- D - I - 0x033EBA 22:BEAA: 36        .byte $36    ; <3>
- D - I - 0x033EBB 22:BEAB: FC        .byte con_закончить

off_BEAC:
- D - I - 0x033EBC 22:BEAC: 37        .byte $37    ; <4>
- D - I - 0x033EBD 22:BEAD: 77        .byte $77    ; <:>
- D - I - 0x033EBE 22:BEAE: 37        .byte $37    ; <4>
- D - I - 0x033EBF 22:BEAF: 77        .byte $77    ; <:>
- D - I - 0x033EC0 22:BEB0: 35        .byte $35    ; <2>
- D - I - 0x033EC1 22:BEB1: FC        .byte con_закончить

off_BEB2:
- D - I - 0x033EC2 22:BEB2: 36        .byte $36    ; <3>
- D - I - 0x033EC3 22:BEB3: 77        .byte $77    ; <:>
- D - I - 0x033EC4 22:BEB4: 38        .byte $38    ; <5>
- D - I - 0x033EC5 22:BEB5: 77        .byte $77    ; <:>
- D - I - 0x033EC6 22:BEB6: 35        .byte $35    ; <2>
- D - I - 0x033EC7 22:BEB7: FC        .byte con_закончить

off_BEB8:
- D - I - 0x033EC8 22:BEB8: C5        .byte $C5    ; <ブ>
- D - I - 0x033EC9 22:BEB9: 67        .byte $67    ; <ラ>
- D - I - 0x033ECA 22:BEBA: BA        .byte $BA    ; <ジ>
- D - I - 0x033ECB 22:BEBB: 69        .byte $69    ; <ル>
- D - I - 0x033ECC 22:BEBC: 50        .byte $50    ; <タ>
- D - I - 0x033ECD 22:BEBD: 42        .byte $42    ; <イ>
- D - I - 0x033ECE 22:BEBE: CF        .byte $CF    ; <プ>
- D - I - 0x033ECF 22:BEBF: FC        .byte con_закончить

off_BEC0:
- D - I - 0x033ED0 22:BEC0: 59        .byte $59    ; <ノ>
- D - I - 0x033ED1 22:BEC1: 7D        .byte $7D    ; <ー>
- D - I - 0x033ED2 22:BEC2: 5F        .byte $5F    ; <マ>
- D - I - 0x033ED3 22:BEC3: 69        .byte $69    ; <ル>
- D - I - 0x033ED4 22:BEC4: FC        .byte con_закончить

off_BEC5:
- D - I - 0x033ED5 22:BEC5: CF        .byte $CF    ; <プ>
- D - I - 0x033ED6 22:BEC6: 6A        .byte $6A    ; <レ>
- D - I - 0x033ED7 22:BEC7: 4D        .byte $4D    ; <ス>
- D - I - 0x033ED8 22:BEC8: FC        .byte con_закончить

off_BEC9:
- D - I - 0x033ED9 22:BEC9: 46        .byte $46    ; <カ>
- D - I - 0x033EDA 22:BECA: 43        .byte $43    ; <ウ>
- D - I - 0x033EDB 22:BECB: 6E        .byte $6E    ; <ン>
- D - I - 0x033EDC 22:BECC: 50        .byte $50    ; <タ>
- D - I - 0x033EDD 22:BECD: 7D        .byte $7D    ; <ー>
- D - I - 0x033EDE 22:BECE: FC        .byte con_закончить

off_BECF:
- D - I - 0x033EDF 22:BECF: 62        .byte $62    ; <メ>
- D - I - 0x033EE0 22:BED0: 6E        .byte $6E    ; <ン>
- D - I - 0x033EE1 22:BED1: C3        .byte $C3    ; <バ>
- D - I - 0x033EE2 22:BED2: 7D        .byte $7D    ; <ー>
- D - I - 0x033EE3 22:BED3: 51        .byte $51    ; <チ>
- D - I - 0x033EE4 22:BED4: 75        .byte $75    ; <ェ>
- D - I - 0x033EE5 22:BED5: 6E        .byte $6E    ; <ン>
- D - I - 0x033EE6 22:BED6: BA        .byte $BA    ; <ジ>
- D - I - 0x033EE7 22:BED7: FC        .byte con_закончить

off_BED8:
- D - I - 0x033EE8 22:BED8: D1        .byte $D1    ; <ポ>
- D - I - 0x033EE9 22:BED9: BA        .byte $BA    ; <ジ>
- D - I - 0x033EEA 22:BEDA: 4C        .byte $4C    ; <シ>
- D - I - 0x033EEB 22:BEDB: 72        .byte $72    ; <ョ>
- D - I - 0x033EEC 22:BEDC: 6E        .byte $6E    ; <ン>
- D - I - 0x033EED 22:BEDD: 51        .byte $51    ; <チ>
- D - I - 0x033EEE 22:BEDE: 75        .byte $75    ; <ェ>
- D - I - 0x033EEF 22:BEDF: 6E        .byte $6E    ; <ン>
- D - I - 0x033EF0 22:BEE0: BA        .byte $BA    ; <ジ>
- D - I - 0x033EF1 22:BEE1: FC        .byte con_закончить

off_BEE2:       ; unused
- - - - - 0x033EF2 22:BEE2: 0D        .byte $0D    ; <す>
- - - - - 0x033EF3 22:BEE3: AD        .byte $AD    ; <で>
- - - - - 0x033EF4 22:BEE4: 16        .byte $16    ; <に>
- - - - - 0x033EF5 22:BEE5: 00        .byte $00
- - - - - 0x033EF6 22:BEE6: 36        .byte $36    ; <3>
- - - - - 0x033EF7 22:BEE7: 16        .byte $16    ; <に>
- - - - - 0x033EF8 22:BEE8: 2E        .byte $2E    ; <ん>
- - - - - 0x033EF9 22:BEE9: FC        .byte con_закончить

off_BEEA:
- D - I - 0x033EFA 22:BEEA: 87        .byte $87    ; <G>
- D - I - 0x033EFB 22:BEEB: 8B        .byte $8B    ; <K>
- D - I - 0x033EFC 22:BEEC: FC        .byte con_закончить

off_BEED:
- D - I - 0x033EFD 22:BEED: 35        .byte $35    ; <2>
- D - I - 0x033EFE 22:BEEE: FC        .byte con_закончить

off_BEEF:
- D - I - 0x033EFF 22:BEEF: 36        .byte $36    ; <3>
- D - I - 0x033F00 22:BEF0: FC        .byte con_закончить

off_BEF1:
- D - I - 0x033F01 22:BEF1: 37        .byte $37    ; <4>
- D - I - 0x033F02 22:BEF2: FC        .byte con_закончить

off_BEF3:
- D - I - 0x033F03 22:BEF3: 38        .byte $38    ; <5>
- D - I - 0x033F04 22:BEF4: FC        .byte con_закончить

off_BEF5:
- D - I - 0x033F05 22:BEF5: 39        .byte $39    ; <6>
- D - I - 0x033F06 22:BEF6: FC        .byte con_закончить

off_BEF7:
- D - I - 0x033F07 22:BEF7: 3A        .byte $3A    ; <7>
- D - I - 0x033F08 22:BEF8: FC        .byte con_закончить

off_BEF9:
- D - I - 0x033F09 22:BEF9: 3B        .byte $3B    ; <8>
- D - I - 0x033F0A 22:BEFA: FC        .byte con_закончить

off_BEFB:
- D - I - 0x033F0B 22:BEFB: 3C        .byte $3C    ; <9>
- D - I - 0x033F0C 22:BEFC: FC        .byte con_закончить

off_BEFD:
- D - I - 0x033F0D 22:BEFD: 34        .byte $34    ; <1>
- D - I - 0x033F0E 22:BEFE: 33        .byte $33    ; <0>
- D - I - 0x033F0F 22:BEFF: FC        .byte con_закончить

off_BF00:
- D - I - 0x033F10 22:BF00: 34        .byte $34    ; <1>
- D - I - 0x033F11 22:BF01: 34        .byte $34    ; <1>
- D - I - 0x033F12 22:BF02: FC        .byte con_закончить

off_BF03:
- D - I - 0x033F13 22:BF03: AA        .byte $AA    ; <だ>
- D - I - 0x033F14 22:BF04: 2A        .byte $2A    ; <れ>
- D - I - 0x033F15 22:BF05: 2D        .byte $2D    ; <を>
- D - I - 0x033F16 22:BF06: 00        .byte $00
- D - I - 0x033F17 22:BF07: 0C        .byte $0C    ; <し>
- D - I - 0x033F18 22:BF08: 31        .byte $31    ; <ゅ>
- D - I - 0x033F19 22:BF09: 12        .byte $12    ; <つ>
- D - I - 0x033F1A 22:BF0A: A6        .byte $A6    ; <じ>
- D - I - 0x033F1B 22:BF0B: 32        .byte $32    ; <ょ>
- D - I - 0x033F1C 22:BF0C: 03        .byte $03    ; <う>
- D - I - 0x033F1D 22:BF0D: 0B        .byte $0B    ; <さ>
- D - I - 0x033F1E 22:BF0E: 0E        .byte $0E    ; <せ>
- D - I - 0x033F1F 22:BF0F: 1F        .byte $1F    ; <ま>
- D - I - 0x033F20 22:BF10: 0D        .byte $0D    ; <す>
- D - I - 0x033F21 22:BF11: 06        .byte $06    ; <か>
- D - I - 0x033F22 22:BF12: 00        .byte $00
- D - I - 0x033F23 22:BF13: 78        .byte $78    ; <?>
- D - I - 0x033F24 22:BF14: FC        .byte con_закончить

off_BF15:
- D - I - 0x033F25 22:BF15: C6        .byte $C6    ; <ベ>
- D - I - 0x033F26 22:BF16: 6E        .byte $6E    ; <ン>
- D - I - 0x033F27 22:BF17: 51        .byte $51    ; <チ>
- D - I - 0x033F28 22:BF18: FC        .byte con_закончить

off_BF19:
- D - I - 0x033F29 22:BF19: 7D        .byte $7D    ; <ー>
- D - I - 0x033F2A 22:BF1A: 87        .byte $87    ; <G>
- D - I - 0x033F2B 22:BF1B: 8B        .byte $8B    ; <K>
- D - I - 0x033F2C 22:BF1C: 7D        .byte $7D    ; <ー>
- D - I - 0x033F2D 22:BF1D: FC        .byte con_закончить

off_BF1E:
    .byte con_F1, $16
    .byte con_закончить

off_BF21:
    .byte con_F1, $17
    .byte con_закончить

off_BF24:
    .byte con_F1, $18
    .byte con_закончить

off_BF27:
    .byte con_F1, $19
    .byte con_закончить

off_BF2A:
    .byte con_F1, $1A
    .byte con_закончить

off_BF2D:
    .byte con_F1, $1B
    .byte con_закончить

off_BF30:
    .byte con_F1, $1C
    .byte con_закончить

off_BF33:
    .byte con_F1, $1D
    .byte con_закончить

off_BF36:
    .byte con_F1, $1E
    .byte con_закончить

off_BF39:
    .byte con_F1, $1F
    .byte con_закончить

off_BF3C:
- D - I - 0x033F4C 22:BF3C: 00        .byte $00
- D - I - 0x033F4D 22:BF3D: 00        .byte $00
- D - I - 0x033F4E 22:BF3E: AA        .byte $AA    ; <だ>
- D - I - 0x033F4F 22:BF3F: 2A        .byte $2A    ; <れ>
- D - I - 0x033F50 22:BF40: 14        .byte $14    ; <と>
- D - I - 0x033F51 22:BF41: 00        .byte $00
- D - I - 0x033F52 22:BF42: 0A        .byte $0A    ; <こ>
- D - I - 0x033F53 22:BF43: 03        .byte $03    ; <う>
- D - I - 0x033F54 22:BF44: 10        .byte $10    ; <た>
- D - I - 0x033F55 22:BF45: 02        .byte $02    ; <い>
- D - I - 0x033F56 22:BF46: 0C        .byte $0C    ; <し>
- D - I - 0x033F57 22:BF47: 1F        .byte $1F    ; <ま>
- D - I - 0x033F58 22:BF48: 0D        .byte $0D    ; <す>
- D - I - 0x033F59 22:BF49: 06        .byte $06    ; <か>
- D - I - 0x033F5A 22:BF4A: 00        .byte $00
- D - I - 0x033F5B 22:BF4B: 78        .byte $78    ; <?>
- D - I - 0x033F5C 22:BF4C: FC        .byte con_закончить

off_BF4D:
- D - I - 0x033F5D 22:BF4D: F5        .byte con_F5, $00
- D - I - 0x033F5F 22:BF4F: FC        .byte con_закончить

off_BF50:
- D - I - 0x033F60 22:BF50: F5        .byte con_F5, $01
- D - I - 0x033F62 22:BF52: FC        .byte con_закончить

off_BF53:
- D - I - 0x033F63 22:BF53: F5        .byte con_F5, $02
- D - I - 0x033F65 22:BF55: FC        .byte con_закончить

off_BF56:
- D - I - 0x033F66 22:BF56: F5        .byte con_F5, $03
- D - I - 0x033F68 22:BF58: FC        .byte con_закончить

off_BF59:
- D - I - 0x033F69 22:BF59: F5        .byte con_F5, $04
- D - I - 0x033F6B 22:BF5B: FC        .byte con_закончить

off_BF5C:
- D - I - 0x033F6C 22:BF5C: F5        .byte con_F5, $05
- D - I - 0x033F6E 22:BF5E: FC        .byte con_закончить

off_BF5F:
- D - I - 0x033F6F 22:BF5F: F5        .byte con_F5, $06
- D - I - 0x033F71 22:BF61: FC        .byte con_закончить

off_BF62:
- D - I - 0x033F72 22:BF62: F5        .byte con_F5, $07
- D - I - 0x033F74 22:BF64: FC        .byte con_закончить

off_BF65:
- D - I - 0x033F75 22:BF65: F5        .byte con_F5, $08
- D - I - 0x033F77 22:BF67: FC        .byte con_закончить

off_BF68:
- D - I - 0x033F78 22:BF68: F5        .byte con_F5, $09
- D - I - 0x033F7A 22:BF6A: FC        .byte con_закончить

off_BF6B:
- D - I - 0x033F7B 22:BF6B: F5        .byte con_F5, $0A
- D - I - 0x033F7D 22:BF6D: FC        .byte con_закончить

off_BF6E:       ; unused
- - - - - 0x033F7E 22:BF6E: F5        .byte con_F5, $16
- - - - - 0x033F80 22:BF70: FC        .byte con_закончить

off_BF71:       ; unused
- - - - - 0x033F81 22:BF71: F5        .byte con_F5, $17
- - - - - 0x033F83 22:BF73: FC        .byte con_закончить

off_BF74:       ; unused
- - - - - 0x033F84 22:BF74: F5        .byte con_F5, $18
- - - - - 0x033F86 22:BF76: FC        .byte con_закончить

off_BF77:       ; unused
- - - - - 0x033F87 22:BF77: F5        .byte con_F5, $19
- - - - - 0x033F89 22:BF79: FC        .byte con_закончить

off_BF7A:       ; unused
- - - - - 0x033F8A 22:BF7A: F5        .byte con_F5, $1A
- - - - - 0x033F8C 22:BF7C: FC        .byte con_закончить

off_BF7D:       ; unused
- - - - - 0x033F8D 22:BF7D: F5        .byte con_F5, $1B
- - - - - 0x033F8F 22:BF7F: FC        .byte con_закончить

off_BF80:       ; unused
- - - - - 0x033F90 22:BF80: F5        .byte con_F5, $1C
- - - - - 0x033F92 22:BF82: FC        .byte con_закончить

off_BF83:       ; unused
- - - - - 0x033F93 22:BF83: F5        .byte con_F5, $1D
- - - - - 0x033F95 22:BF85: FC        .byte con_закончить

off_BF86:       ; unused
- - - - - 0x033F96 22:BF86: F5        .byte con_F5, $1E
- - - - - 0x033F98 22:BF88: FC        .byte con_закончить

off_BF89:       ; unused
- - - - - 0x033F99 22:BF89: F5        .byte con_F5, $1F
- - - - - 0x033F9B 22:BF8B: FC        .byte con_закончить

off_BF8C:       ; unused
- - - - - 0x033F9C 22:BF8C: 0A        .byte $0A    ; <こ>
- - - - - 0x033F9D 22:BF8D: 03        .byte $03    ; <う>
- - - - - 0x033F9E 22:BF8E: 10        .byte $10    ; <た>
- - - - - 0x033F9F 22:BF8F: 02        .byte $02    ; <い>
- - - - - 0x033FA0 22:BF90: 0C        .byte $0C    ; <し>
- - - - - 0x033FA1 22:BF91: 13        .byte $13    ; <て>
- - - - - 0x033FA2 22:BF92: 02        .byte $02    ; <い>
- - - - - 0x033FA3 22:BF93: 29        .byte $29    ; <る>
- - - - - 0x033FA4 22:BF94: FC        .byte con_закончить

off_BF95:
- D - I - 0x033FA5 22:BF95: 8D        .byte $8D    ; <P>
- D - I - 0x033FA6 22:BF96: 8B        .byte $8B    ; <K>
- D - I - 0x033FA7 22:BF97: 0E        .byte $0E    ; <せ>
- D - I - 0x033FA8 22:BF98: 2E        .byte $2E    ; <ん>
- D - I - 0x033FA9 22:BF99: 19        .byte $19    ; <の>
- D - I - 0x033FAA 22:BF9A: 62        .byte $62    ; <メ>
- D - I - 0x033FAB 22:BF9B: 6E        .byte $6E    ; <ン>
- D - I - 0x033FAC 22:BF9C: C3        .byte $C3    ; <バ>
- D - I - 0x033FAD 22:BF9D: 7D        .byte $7D    ; <ー>
- D - I - 0x033FAE 22:BF9E: 2D        .byte $2D    ; <を>
- D - I - 0x033FAF 22:BF9F: 00        .byte $00
- D - I - 0x033FB0 22:BFA0: 04        .byte $04    ; <え>
- D - I - 0x033FB1 22:BFA1: 27        .byte $27    ; <ら>
- D - I - 0x033FB2 22:BFA2: 2E        .byte $2E    ; <ん>
- D - I - 0x033FB3 22:BFA3: AD        .byte $AD    ; <で>
- D - I - 0x033FB4 22:BFA4: 08        .byte $08    ; <く>
- D - I - 0x033FB5 22:BFA5: AA        .byte $AA    ; <だ>
- D - I - 0x033FB6 22:BFA6: 0B        .byte $0B    ; <さ>
- D - I - 0x033FB7 22:BFA7: 02        .byte $02    ; <い>
- D - I - 0x033FB8 22:BFA8: FC        .byte con_закончить

off_BFA9:
- D - I - 0x033FB9 22:BFA9: 8D        .byte $8D    ; <P>
- D - I - 0x033FBA 22:BFAA: 8B        .byte $8B    ; <K>
- D - I - 0x033FBB 22:BFAB: 62        .byte $62    ; <メ>
- D - I - 0x033FBC 22:BFAC: 6E        .byte $6E    ; <ン>
- D - I - 0x033FBD 22:BFAD: C3        .byte $C3    ; <バ>
- D - I - 0x033FBE 22:BFAE: 7D        .byte $7D    ; <ー>
- D - I - 0x033FBF 22:BFAF: FC        .byte con_закончить

off_BFB0:
- D - I - 0x033FC0 22:BFB0: 4C        .byte $4C    ; <シ>
- D - I - 0x033FC1 22:BFB1: 71        .byte $71    ; <ュ>
- D - I - 0x033FC2 22:BFB2: 7D        .byte $7D    ; <ー>
- D - I - 0x033FC3 22:BFB3: 54        .byte $54    ; <ト>
- D - I - 0x033FC4 22:BFB4: FC        .byte con_закончить

off_BFB5:
- D - I - 0x033FC5 22:BFB5: F6        .byte con_F6
- D - I - 0x033FC6 22:BFB6: FC        .byte con_закончить

off_BFB7:
- D - I - 0x033FC7 22:BFB7: 34        .byte $34    ; <1>
- D - I - 0x033FC8 22:BFB8: 00        .byte $00
- D - I - 0x033FC9 22:BFB9: E9        .byte con_pass_reciever_name_temmate, $00
- D - I - 0x033FCB 22:BFBB: FC        .byte con_закончить

off_BFBC:
- D - I - 0x033FCC 22:BFBC: 35        .byte $35    ; <2>
- D - I - 0x033FCD 22:BFBD: 00        .byte $00
- D - I - 0x033FCE 22:BFBE: E9        .byte con_pass_reciever_name_temmate, $01
- D - I - 0x033FD0 22:BFC0: FC        .byte con_закончить

off_BFC1:
- D - I - 0x033FD1 22:BFC1: 36        .byte $36    ; <3>
- D - I - 0x033FD2 22:BFC2: 00        .byte $00
- D - I - 0x033FD3 22:BFC3: E9        .byte con_pass_reciever_name_temmate, $02
- D - I - 0x033FD5 22:BFC5: FC        .byte con_закончить

off_BFC6:
- D - I - 0x033FD6 22:BFC6: 37        .byte $37    ; <4>
- D - I - 0x033FD7 22:BFC7: 00        .byte $00
- D - I - 0x033FD8 22:BFC8: E9        .byte con_pass_reciever_name_temmate, $03
- D - I - 0x033FDA 22:BFCA: FC        .byte con_закончить

off_BFCB:
- D - I - 0x033FDB 22:BFCB: 38        .byte $38    ; <5>
- D - I - 0x033FDC 22:BFCC: 00        .byte $00
- D - I - 0x033FDD 22:BFCD: E9        .byte con_pass_reciever_name_temmate, $04
- D - I - 0x033FDF 22:BFCF: FC        .byte con_закончить

off_BFD0_надпись_PK:
- D - I - 0x033FE0 22:BFD0: 8D        .byte $8D    ; <P>
- D - I - 0x033FE1 22:BFD1: 8B        .byte $8B    ; <K>
- D - I - 0x033FE2 22:BFD2: 0E        .byte $0E    ; <せ>
- D - I - 0x033FE3 22:BFD3: 2E        .byte $2E    ; <ん>
- D - I - 0x033FE4 22:BFD4: FC        .byte con_закончить
