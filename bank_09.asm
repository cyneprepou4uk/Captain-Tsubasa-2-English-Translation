.segment "BANK_09"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000
; тут только данные

; основные данные анимации
con_повторы             = $E0
con_повторить           = $F0
con_координаты_Y_X      = $F1
con_F5_зеркало          = $F5
con_F6                  = $F6
con_физика              = $F7   ; 1й байт = скорость + угол + направление (00/80), 2й = разгон X, 3й = разгон Y
con_F9                  = $F9
con_разговор            = $FA   ; развилка, первый прыжоок если персонаж молчит, второй если говорит
con_выход               = $FF

; данные спрайтов
con_jsr                 = $FA
con_jmp                 = $FB
con_rts                 = $FE
con_FF                  = $FF

; поинтер находится в 0x0010DF, продолжение таблицы в банке 11
    .word off_A0DA_00_полет_мяча_шнайдера
    .word off_A167_01_полет_мяча_диаза
    .word off_A1F1_02_цубаса_резкий_поворот_красный
    .word off_A201_03
    .word off_A218_04_цубаса_злой_молчит_красный_справа
    .word off_A223_05_карлос_злой_молчит_движение_влево_красный
    .word off_A231_06_хюга_обычный_красный
    .word off_A23B_07_цубаса_движение_спиной_влево_поворот_вбок_красный
    .word off_A251_08_цубаса_в_шоке_красный_слева
    .word off_A25C_09_цубаса_злой_белый_справа
    .word off_A266_0A_карлос_злой_желтый_справа
    .word off_A270_0B
    .word off_A287_0C_цубаса_на_фоне_сан_паулу
    .word off_A28E_0D_кубок
    .word off_A295_0E_цубаса_на_фоне_японии
    .word off_A29C_0F_мисаки_на_фоне_нанкацу
    .word off_A2A3_10_цубаса_обычный_белый_справа
    .word off_A2AD_11_цубаса_злой_белый_слева
    .word off_A2B8_12_цубаса_в_шоке_белый_слева
    .word off_A2C3_13_цубаса_молчит_поворот_вбок_белый_слева
    .word off_A2CD_14_цубаса_молчит_движение_направо_смотрит_влево_белый
    .word off_A2DA_15_карлос_злой_молчит_красный_справа
    .word off_A2E1_16_цубаса_молчит_поворот_вбок_красный_слева
    .word off_A2EB_17_цубаса_на_фоне_сан_паулу_серый
    .word off_A2F2_18_мисуги_молчит_движение_направо_смотрит_влево_белый
    .word off_A2FF_19_мисаки_обычный_белый_слева
    .word off_A30A_1A_йоко_медленное_движение_налево
    .word off_A31E_1B_мисаки_злой_белый_слева
    .word off_A329_1C_мацуяма_злой_желтый_слева
    .word off_A334_1D_мацуяма_злой_желтый_справа
    .word off_A33E_1E_мисаки_злой_молчит_белый_слева
    .word off_A346_1F_мисаки_обычный_молчит_белый_справа
    .word off_A34D_20_мисуги_злой_белый_справа
    .word off_A357_21_шнайдер_справа
    .word off_A361_22_китаец_обычный_справа
    .word off_A36B_23
    .word off_A380_24_ишизаки_моргает
    .word off_A392_25_ишизаки_злой_слева
    .word off_A3A2_26_санае_обычная_справа
    .word off_A3AC_27_санае_закрытые_глаза_справа
    .word off_A3B6_28_санае_в_шоке_справа
    .word off_A3BD_29_санае_расстроена_справа
    .word off_A3C4_2A_йоко_обычная_справа
    .word off_A3CE_2B_йоко_закрытые_глаза_справа
    .word off_A3D8_2C_йоко_подмигивает_справа
    .word off_A3DF_2D_йоко_злая_резко_движется_влево
    .word off_A3F4_2E_яои_молчит_справа
    .word off_A3FB_2F_фуджисава_молчит_справа
    .word off_A402_30_хюга_злой_черный_справа     ; unused
    .word off_A40C_31_хюга_обычный_черный_справа_поднимает_брови
    .word off_A419_32_хюга_злой_красный_справа
    .word off_A423_33_хюга_обычный_красный_слева_поднимает_брови
    .word off_A431_34_вакабаяши_справа
    .word off_A43B_35
    .word off_A445_36_роберто_очки_молчит_справа
    .word off_A44C_37_меон_слева
    .word off_A457_38_меон_справа
    .word off_A461_39_вакабаяши_слева
    .word off_A46C_3A_гертис_справа
    .word off_A476_3B_роберто_обычный_справа
    .word off_A480_3C_роберто_злой_справа
    .word off_A48A_3D_роберто_очки_справа
    .word off_A494_3E_роберто_очки_скрещены_руки
    .word off_A49B_3F_мисаки_обычный_красный_справа
    .word off_A4A5_40_катагири_черные_очки_слева
    .word off_A4B0_41_катагири_прозрачные_очки_справа
    .word off_A4BA_42_миками_справа
    .word off_A4C4_43_сан_паулу_без_цубасы
    .word off_A4CD_44_ишизаки_закрытые_глаза_справа
    .word off_A4D7_45_коимбра_тень_справа
    .word off_A4E1_46_менеджер_бразилии_закрытые_глаза_справа
    .word off_A4EB_47_цубаса_обычный_красный_справа
    .word off_A4F5_48_карлос_в_шоке_желтый_слева
    .word off_A4FD_49_хюга_злой_молчит_черный_справа
    .word off_A504_4A_гертиз_в_тени_движение_направо
    .word off_A511_4B_цубаса_злой_красный_справа
    .word off_A51B_4C_карлос_в_шоке_желтый_справа
    .word off_A522_4D_роберто_обычный_слева
    .word off_A52D_4E_цубаса_обычный_белый_слева
    .word off_A538_4F_санае_расстроена_поднимает_брови_слева
    .word off_A546_50_роберто_молчит_серый_слева
    .word off_A54E_51_цубаса_молчит_серый_справа
    .word off_A555_52_цубаса_злой_молчит_красный_справа
    .word off_A55C_53_цубаса_с_кубком_медленно_движется_влево
    .word off_A573_54_цубаса_красный_движется_влево_и_поворачивается
    .word off_A58C_55_цубаса_со_спины_красный
    .word off_A593_56_санае_в_шоке_слева
    .word off_A59B_57_цубаса_злой_красный_слева
    .word off_A5A6_58_цубаса_злой_молчит_белый_слева
    .word off_A5AE_59
    .word off_A5C5_5A_карлос_злой_молчит_желтый_слева
    .word off_A5CD_5B_вакабаяши_в_шоке
    .word off_A5D9_5C_пьер_молчит_справа
    .word off_A5E0_5D_пьер_в_шоке_слева
    .word off_A5E8_5E_коимбра_тень_серый_слева
    .word off_A5F3_5F_коимбра_злой_слева
    .word off_A5FE_60_коимбра_злой_тень_слева
    .word off_A609_61_карлос_злой_красный_справа
    .word off_A613_62_роберто_очки_молчит_слева
    .word off_A61B_63_карлос_обычный_красный_справа
    .word off_A625_64_карлос_в_шоке_красный_справа
    .word off_A62E_65_цубаса_со_спины_красный
    .word off_A635_66_цубаса_обычный_красный_слева
    .word off_A640_67_цубаса_обычный_молчит_красный_слева
    .word off_A648_68_ишизаки_закрытые_глаза_слева
    .word off_A653_69_цубаса_резко_поворачивается_спиной_красный_справа
    .word off_A65D_6A_цубаса_злой_молчит_красный_слева
    .word off_A665_6B_ишизаки_надутые_губы
    .word off_A674_6C_движение_блеска_очков_роберто



off_A0DA_00_полет_мяча_шнайдера:
    .byte $00

    .byte con_координаты_Y_X
    .byte $2E
    .byte $6A

    .byte $05

    .byte con_физика
    .byte $E9
    .byte $00
    .byte $00

    .dbyt off_A681 - $2000
    .byte $01

    .dbyt off_A6C2 - $2000
    .byte $01

    .dbyt off_A6F3 - $2000
    .byte $01

    .dbyt off_A718 - $2000
    .byte $01

    .dbyt off_A749 - $2000
    .byte $01

    .dbyt off_A75D - $2000
    .byte $01

    .dbyt off_A771 - $2000
    .byte $01

    .dbyt off_A780 - $2000
    .byte $01

    .dbyt off_A78F - $2000
    .byte $01

    .dbyt off_A79E - $2000
    .byte $01

    .dbyt off_A7AD - $2000
    .byte $01

    .dbyt off_A7B7 - $2000
    .byte $01

    .dbyt off_A7C1 - $2000

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_повторы + $02

    .dbyt off_A7C1 - $2000
    .byte $01

    .dbyt off_A7B7 - $2000
    .byte $01

    .dbyt off_A7AD - $2000
    .byte $01

    .dbyt off_A79E - $2000
    .byte $01

    .dbyt off_A78F - $2000
    .byte $01

    .dbyt off_A780 - $2000
    .byte $01

    .dbyt off_A771 - $2000
    .byte $01

    .dbyt off_A75D - $2000
    .byte $01

    .dbyt off_A749 - $2000
    .byte $01

    .dbyt off_A718 - $2000
    .byte $01

    .dbyt off_A6F3 - $2000
    .byte $01

    .dbyt off_A6C2 - $2000
    .byte $01

    .dbyt off_A681 - $2000
    .byte $01

    .byte con_повторить

    .byte con_координаты_Y_X
    .byte $26
    .byte $62

    .byte con_физика
    .byte $1A
    .byte $00
    .byte $00

    .dbyt off_A7C1 - $2000
    .byte $01

    .dbyt off_A7B7 - $2000
    .byte $01

    .dbyt off_A7AD - $2000
    .byte $01

    .dbyt off_A79E - $2000
    .byte $01

    .dbyt off_A78F - $2000
    .byte $01

    .dbyt off_A780 - $2000
    .byte $01

    .dbyt off_A771 - $2000
    .byte $01

    .dbyt off_A75D - $2000
    .byte $01

    .dbyt off_A749 - $2000
    .byte $01

    .dbyt off_A718 - $2000
    .byte $01

    .dbyt off_A6F3 - $2000
    .byte $01

    .dbyt off_A6C2 - $2000
    .byte $01

    .dbyt off_A681 - $2000

    .byte con_выход



off_A167_01_полет_мяча_диаза:
    .byte $00

    .byte con_координаты_Y_X
    .byte $36
    .byte $5A

    .byte $05

    .byte con_физика
    .byte $DF
    .byte $00
    .byte $00

    .dbyt off_A7C1 - $2000
    .byte $02

    .dbyt off_A7B7 - $2000
    .byte $02

    .dbyt off_A7AD - $2000
    .byte $02

    .dbyt off_A79E - $2000
    .byte $01

    .dbyt off_A78F - $2000
    .byte $01

    .dbyt off_A780 - $2000
    .byte $01

    .dbyt off_A771 - $2000
    .byte $01

    .dbyt off_A75D - $2000
    .byte $01

    .dbyt off_A749 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $2E
    .byte $6A

    .byte con_физика
    .byte $EE
    .byte $00
    .byte $00

    .dbyt off_A7C1 - $2000
    .byte $02

    .dbyt off_A7B7 - $2000
    .byte $02

    .dbyt off_A7AD - $2000
    .byte $03

    .dbyt off_A79E - $2000
    .byte $03

    .dbyt off_A78F - $2000
    .byte $04

    .dbyt off_A780 - $2000
    .byte $03

    .dbyt off_A771 - $2000
    .byte $01

    .byte con_физика
    .byte $0E
    .byte $00
    .byte $00

    .dbyt off_A771 - $2000
    .byte $02

    .dbyt off_A75D - $2000
    .byte $02

    .byte con_F5_зеркало

    .byte con_физика
    .byte $49
    .byte $07
    .byte $07

    .dbyt off_A749 - $2000
    .byte $02

    .dbyt off_A718 - $2000
    .byte $01

    .dbyt off_A6F3 - $2000
    .byte $01

    .dbyt off_A6C2 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $0A
    .byte $3E

    .byte con_F5_зеркало

    .byte con_физика
    .byte $2F
    .byte $04
    .byte $07

    .dbyt off_A7C1 - $2000
    .byte $01

    .dbyt off_A7B7 - $2000
    .byte $01

    .dbyt off_A7AD - $2000
    .byte $02

    .dbyt off_A79E - $2000
    .byte $02

    .dbyt off_A78F - $2000
    .byte $01

    .dbyt off_A780 - $2000
    .byte $01

    .dbyt off_A771 - $2000
    .byte $01

    .dbyt off_A75D - $2000
    .byte $01

    .dbyt off_A749 - $2000
    .byte $01

    .dbyt off_A718 - $2000
    .byte $01

    .dbyt off_A6F3 - $2000
    .byte $01

    .dbyt off_A6C2 - $2000
    .byte $01

    .dbyt off_A681 - $2000

    .byte con_выход



off_A1F1_02_цубаса_резкий_поворот_красный:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $3E

    .dbyt off_A916 - $2000
    .byte $58

    .dbyt off_A9E3 - $2000
    .byte $02

    .byte con_разговор
    .word off_A8EA
    .word off_B40D



off_A201_03:
    .byte $16

    .byte con_координаты_Y_X
    .byte $30
    .byte $97

    .dbyt off_AC8E - $2000
    .byte $7F
    .byte $52

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $4D

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_разговор
    .word off_AC8E
    .word off_B219



off_A218_04_цубаса_злой_молчит_красный_справа:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $48

    .dbyt off_A8EA - $2000

    .byte con_F9

    .byte $7F
    .byte $7F
    .byte $23

    .byte con_выход



off_A223_05_карлос_злой_молчит_движение_влево_красный:
    .byte $0E

    .byte con_координаты_Y_X
    .byte $30
    .byte $8B

    .dbyt off_B1D0 - $2000
    .byte $7F
    .byte $05

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $45

    .byte con_выход



off_A231_06_хюга_обычный_красный:
    .byte $03

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .byte con_разговор
    .word off_B0B4
    .word off_ACAC



off_A23B_07_цубаса_движение_спиной_влево_поворот_вбок_красный:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $4C

    .dbyt off_A916 - $2000

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $19

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $32

    .byte con_разговор
    .word off_A9E3
    .word off_A9F6



off_A251_08_цубаса_в_шоке_красный_слева:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

;   .dbyt off_A8EA - $2000
;   .byte $0A

    .dbyt off_A8FE - $2000

    .byte con_выход



off_A25C_09_цубаса_злой_белый_справа:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_A8EA
    .word off_B40D



off_A266_0A_карлос_злой_желтый_справа:
    .byte $0F

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_B1D0
    .word off_B1E7



off_A270_0B:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $BE

    .dbyt off_B310 - $2000
    .byte $7F
    .byte $7F

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $7A

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_разговор
    .word off_B310
    .word off_AD8A



off_A287_0C_цубаса_на_фоне_сан_паулу:
    .byte $23

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_A852 - $2000

    .byte con_выход



off_A28E_0D_кубок:
    .byte $09

    .byte con_координаты_Y_X
    .byte $26
    .byte $3E

    .dbyt off_A7CB - $2000

    .byte con_выход



off_A295_0E_цубаса_на_фоне_японии:
    .byte $33

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_A852 - $2000

    .byte con_выход



off_A29C_0F_мисаки_на_фоне_нанкацу:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_A895 - $2000

    .byte con_выход



off_A2A3_10_цубаса_обычный_белый_справа:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_B364
    .word off_A8D6



off_A2AD_11_цубаса_злой_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_A8EA
    .word off_B40D



off_A2B8_12_цубаса_в_шоке_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

;   .dbyt off_B364 - $2000
;   .byte $0A

    .dbyt off_A8FE - $2000

    .byte con_выход



off_A2C3_13_цубаса_молчит_поворот_вбок_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .dbyt off_A916 - $2000
    .byte $23

    .dbyt off_A9E3 - $2000

    .byte con_выход



off_A2CD_14_цубаса_молчит_движение_направо_смотрит_влево_белый:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $EE

    .dbyt off_A96D - $2000
    .byte $41

    .byte con_физика
    .byte $02
    .byte $00
    .byte $FF

    .byte $40

    .byte con_выход



off_A2DA_15_карлос_злой_молчит_красный_справа:
    .byte $0E

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_B1D0 - $2000

    .byte con_выход



off_A2E1_16_цубаса_молчит_поворот_вбок_красный_слева:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .dbyt off_A916 - $2000
    .byte $23

    .dbyt off_A9E3 - $2000

    .byte con_выход



off_A2EB_17_цубаса_на_фоне_сан_паулу_серый:
    .byte $3E

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_A852 - $2000

    .byte con_выход



off_A2F2_18_мисуги_молчит_движение_направо_смотрит_влево_белый:
    .byte $19

    .byte con_координаты_Y_X
    .byte $30
    .byte $EE

    .dbyt off_AA0F - $2000
    .byte $41

    .byte con_физика
    .byte $02
    .byte $00
    .byte $FF

    .byte $40

    .byte con_выход



off_A2FF_19_мисаки_обычный_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_AA4A
    .word off_AA5E



off_A30A_1A_йоко_медленное_движение_налево:
    .byte $18

    .byte con_координаты_Y_X
    .byte $30
    .byte $BC

@бесконечный_цикл:
    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .dbyt off_B3D9 - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B3D9 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A31E_1B_мисаки_злой_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_AA72
    .word off_B0F0



off_A329_1C_мацуяма_злой_желтый_слева:
    .byte $0B

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_разговор
    .word off_AA86
    .word off_AA92



off_A334_1D_мацуяма_злой_желтый_справа:
    .byte $0B

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .byte con_разговор
    .word off_AA86
    .word off_AA92



off_A33E_1E_мисаки_злой_молчит_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_AA72 - $2000

    .byte con_выход



off_A346_1F_мисаки_обычный_молчит_белый_справа:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .dbyt off_AA4A - $2000

    .byte con_выход



off_A34D_20_мисуги_злой_белый_справа:
    .byte $19

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .byte con_разговор
    .word off_AAB2
    .word off_AABE



off_A357_21_шнайдер_справа:
    .byte $28

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_AACA
    .word off_B4A2



off_A361_22_китаец_обычный_справа:
    .byte $20

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_AF84
    .word off_AAD4



off_A36B_23:
    .byte $1F

    .byte con_координаты_Y_X
    .byte $50
    .byte $C6

    .dbyt off_AAFD - $2000

    .byte con_физика
    .byte $E0
    .byte $00
    .byte $00

    .byte $10

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_разговор
    .word off_AAFD
    .word off_B0C9



off_A380_24_ишизаки_моргает:
    .byte $1F

    .byte con_координаты_Y_X
    .byte $30
    .byte $42

    .byte con_повторы + $02

    .dbyt off_AB1C - $2000
    .byte $04

    .dbyt off_AAFD - $2000
    .byte $04

    .byte con_повторить

    .byte con_разговор
    .word off_AB1C
    .word off_AFAB



off_A392_25_ишизаки_злой_слева:
    .byte $1F

@бесконечный_цикл:
    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_AB3B - $2000
    .byte $02

    .byte con_координаты_Y_X
    .byte $30
    .byte $2F

    .dbyt off_AB3B - $2000
    .byte $02

    .dbyt @бесконечный_цикл



off_A3A2_26_санае_обычная_справа:
    .byte $1D

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .byte con_разговор
    .word off_B421
    .word off_AB68



off_A3AC_27_санае_закрытые_глаза_справа:
    .byte $1D

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .byte con_разговор
    .word off_AB80
    .word off_AFD2



off_A3B6_28_санае_в_шоке_справа:
    .byte $1D

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .dbyt off_AB96 - $2000

    .byte con_выход



off_A3BD_29_санае_расстроена_справа:
    .byte $1D

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .dbyt off_ABAE - $2000

    .byte con_выход



off_A3C4_2A_йоко_обычная_справа:
    .byte $18

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .byte con_разговор
    .word off_B3D9
    .word off_ABC6



off_A3CE_2B_йоко_закрытые_глаза_справа:
    .byte $18

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .byte con_разговор
    .word off_ABDE
    .word off_B264



off_A3D8_2C_йоко_подмигивает_справа:
    .byte $18

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .dbyt off_ABF4 - $2000

    .byte con_выход



off_A3DF_2D_йоко_злая_резко_движется_влево:
    .byte $18

    .byte con_координаты_Y_X
    .byte $30
    .byte $A9

    .dbyt off_B27A - $2000

    .byte con_физика
    .byte $09
    .byte $00
    .byte $00

    .byte $0F

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_разговор
    .word off_B27A
    .word off_AC0A



off_A3F4_2E_яои_молчит_справа:
    .byte $1A

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .dbyt off_AC22 - $2000

    .byte con_выход



off_A3FB_2F_фуджисава_молчит_справа:
    .byte $1B

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .dbyt off_AC58 - $2000

    .byte con_выход



off_A402_30_хюга_злой_черный_справа:     ; unused
    .byte $16

    .byte con_координаты_Y_X
    .byte $30
    .byte $4A

    .byte con_разговор
    .word off_AC8E
    .word off_B219



off_A40C_31_хюга_обычный_черный_справа_поднимает_брови:
    .byte $16

    .byte con_координаты_Y_X
    .byte $30
    .byte $4A

    .dbyt off_AC8E - $2000
    .byte $07

    .byte con_разговор
    .word off_AFFF
    .word off_AC98



off_A419_32_хюга_злой_красный_справа:
    .byte $03

    .byte con_координаты_Y_X
    .byte $30
    .byte $4A

    .byte con_разговор
    .word off_ACA2
    .word off_B439



off_A423_33_хюга_обычный_красный_слева_поднимает_брови:
    .byte $03

    .byte con_координаты_Y_X
    .byte $30
    .byte $2C

    .byte con_F5_зеркало

    .dbyt off_ACA2 - $2000
    .byte $0A

    .byte con_разговор
    .word off_B0B4
    .word off_ACAC



off_A431_34_вакабаяши_справа:
    .byte $1C

    .byte con_координаты_Y_X
    .byte $30
    .byte $40

    .byte con_разговор
    .word off_AF24
    .word off_ACB6



off_A43B_35:
    .byte $46

    .byte con_координаты_Y_X
    .byte $30
    .byte $C8

    .byte con_F9

    .dbyt off_ACC8 - $2000
    .byte $7F
    .byte $7F

    .byte con_выход



off_A445_36_роберто_очки_молчит_справа:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .dbyt off_ADBA - $2000

    .byte con_выход



off_A44C_37_меон_слева:
    .byte $10

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $32

    .byte con_разговор
    .word off_B3F1
    .word off_ACEC



off_A457_38_меон_справа:
    .byte $10

    .byte con_координаты_Y_X
    .byte $30
    .byte $42

    .byte con_разговор
    .word off_AD20
    .word off_AD06



off_A461_39_вакабаяши_слева:
    .byte $46

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_AF24
    .word off_ACB6



off_A46C_3A_гертис_справа:
    .byte $2A

    .byte con_координаты_Y_X
    .byte $30
    .byte $3E

    .byte con_разговор
    .word off_AF36
    .word off_AD3C     ; unused



off_A476_3B_роберто_обычный_справа:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $44

    .byte con_разговор
    .word off_B310
    .word off_AD8A



off_A480_3C_роберто_злой_справа:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $44

    .byte con_разговор
    .word off_ADA2
    .word off_A9CA



off_A48A_3D_роберто_очки_справа:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $44

    .byte con_разговор
    .word off_ADBA
    .word off_B340



off_A494_3E_роберто_очки_скрещены_руки:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $42

    .dbyt off_ADF7 - $2000

    .byte con_выход



off_A49B_3F_мисаки_обычный_красный_справа:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $4A

    .byte con_разговор
    .word off_AA4A
    .word off_AA5E



off_A4A5_40_катагири_черные_очки_слева:
    .byte $0D

    .byte con_координаты_Y_X
    .byte $30
    .byte $2C

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_B016
    .word off_AE4B



off_A4B0_41_катагири_прозрачные_очки_справа:
    .byte $0D

    .byte con_координаты_Y_X
    .byte $30
    .byte $42

    .byte con_разговор
    .word off_B378
    .word off_AE75     ; unused



off_A4BA_42_миками_справа:
    .byte $0D

    .byte con_координаты_Y_X
    .byte $30
    .byte $42

    .byte con_разговор
    .word off_B399
    .word off_AE96



off_A4C4_43_сан_паулу_без_цубасы:
    .byte $11

    .byte con_координаты_Y_X
    .byte $DC
    .byte $50

    .dbyt off_AED6 - $2000

    .byte con_F9

    .byte $7F

    .byte con_выход



off_A4CD_44_ишизаки_закрытые_глаза_справа:
    .byte $1F

    .byte con_координаты_Y_X
    .byte $30
    .byte $42

    .byte con_разговор
    .word off_AAFD
    .word off_B0C9



off_A4D7_45_коимбра_тень_справа:
    .byte $05

    .byte con_координаты_Y_X
    .byte $30
    .byte $3E

    .byte con_разговор
    .word off_B22E
    .word off_B2DA



off_A4E1_46_менеджер_бразилии_закрытые_глаза_справа:
    .byte $2C

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_B378
    .word off_AE75



off_A4EB_47_цубаса_обычный_красный_справа:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_B364
    .word off_A8D6



off_A4F5_48_карлос_в_шоке_желтый_слева:
    .byte $0F

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_ADDE - $2000

    .byte con_выход



off_A4FD_49_хюга_злой_молчит_черный_справа:
    .byte $16

    .byte con_координаты_Y_X
    .byte $30
    .byte $4A

    .dbyt off_AC8E - $2000

    .byte con_выход



off_A504_4A_гертиз_в_тени_движение_направо:
    .byte $29

    .byte con_координаты_Y_X
    .byte $30
    .byte $BF

    .dbyt off_AF36 - $2000
    .byte $02

    .byte con_физика
    .byte $01
    .byte $00
    .byte $00

    .byte $7F

    .byte con_выход



off_A511_4B_цубаса_злой_красный_справа:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_A8EA
    .word off_B40D



off_A51B_4C_карлос_в_шоке_желтый_справа:
    .byte $0F

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_ADDE - $2000

    .byte con_выход



off_A522_4D_роберто_обычный_слева:
    .byte $0A

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_разговор
    .word off_B310
    .word off_AD8A



off_A52D_4E_цубаса_обычный_белый_слева:
    .byte $17

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_разговор
    .word off_B364
    .word off_A8D6



off_A538_4F_санае_расстроена_поднимает_брови_слева:
    .byte $1D

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .dbyt off_ABAE - $2000
    .byte $60

    .byte con_разговор
    .word off_B421
    .word off_AB68



off_A546_50_роберто_молчит_серый_слева:
    .byte $3F

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .dbyt off_B310 - $2000

    .byte con_выход



off_A54E_51_цубаса_молчит_серый_справа:
    .byte $3F

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_B364 - $2000

    .byte con_выход



off_A555_52_цубаса_злой_молчит_красный_справа:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_A8EA - $2000

    .byte con_выход



off_A55C_53_цубаса_с_кубком_медленно_движется_влево:
    .byte $2B

    .byte con_координаты_Y_X
    .byte $28
    .byte $AA

    .byte con_повторы + $08

    .byte con_повторы + $0E

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .dbyt off_B11D - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B11D - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_выход



off_A573_54_цубаса_красный_движется_влево_и_поворачивается:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $66

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .dbyt off_A916 - $2000
    .byte $0C

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .dbyt off_A9E3 - $2000
    .byte $14

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_A8EA - $2000

    .byte con_выход



off_A58C_55_цубаса_со_спины_красный:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $3E

    .dbyt off_A916 - $2000

    .byte con_выход



off_A593_56_санае_в_шоке_слева:
    .byte $1D

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_AB96 - $2000

    .byte con_выход



off_A59B_57_цубаса_злой_красный_слева:
    .byte $0C

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_разговор
    .word off_A8EA
    .word off_B40D



off_A5A6_58_цубаса_злой_молчит_белый_слева:
    .byte $17

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_A8EA - $2000

    .byte con_выход



off_A5AE_59:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $BE

    .dbyt off_B310 - $2000
    .byte $7F
    .byte $25

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $7A

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_разговор
    .word off_B310
    .word off_AD8A



off_A5C5_5A_карлос_злой_молчит_желтый_слева:
    .byte $0F

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_B1D0 - $2000

    .byte con_выход



off_A5CD_5B_вакабаяши_в_шоке:
    .byte $46

    .byte con_координаты_Y_X
    .byte $30
    .byte $48

    .byte con_физика
    .byte $0C
    .byte $00
    .byte $00

    .dbyt off_ACDA - $2000
    .byte $05

    .byte con_выход



off_A5D9_5C_пьер_молчит_справа:
    .byte $34

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .dbyt off_B292 - $2000

    .byte con_выход



off_A5E0_5D_пьер_в_шоке_слева:
    .byte $34

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_B2A8 - $2000

    .byte con_выход



off_A5E8_5E_коимбра_тень_серый_слева:
    .byte $40

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_B22E
    .word off_B2DA



off_A5F3_5F_коимбра_злой_слева:
    .byte $13

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_B2C0
    .word off_B2CD



off_A5FE_60_коимбра_злой_тень_слева:
    .byte $05

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_B22E
    .word off_B2DA



off_A609_61_карлос_злой_красный_справа:
    .byte $0E

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_B1D0
    .word off_B1E7



off_A613_62_роберто_очки_молчит_слева:
    .byte $0A

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_ADBA - $2000

    .byte con_выход



off_A61B_63_карлос_обычный_красный_справа:
    .byte $0E

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .byte con_разговор
    .word off_AFE8
    .word off_B200



off_A625_64_карлос_в_шоке_красный_справа:
    .byte $0E

    .byte con_координаты_Y_X
    .byte $30
    .byte $46

    .dbyt off_B104 - $2000

    .byte con_F9

    .byte $78

    .byte con_выход



off_A62E_65_цубаса_со_спины_красный:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $32

    .dbyt off_A916 - $2000

    .byte con_выход



off_A635_66_цубаса_обычный_красный_слева:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_B364
    .word off_A8D6



off_A640_67_цубаса_обычный_молчит_красный_слева:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .dbyt off_B364 - $2000

    .byte con_выход



off_A648_68_ишизаки_закрытые_глаза_слева:
    .byte $1F

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .byte con_F5_зеркало

    .byte con_разговор
    .word off_AAFD
    .word off_B0C9



off_A653_69_цубаса_резко_поворачивается_спиной_красный_справа:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $30
    .byte $3E

    .dbyt off_A9E3 - $2000
    .byte $03

    .dbyt off_A916 - $2000

    .byte con_выход



off_A65D_6A_цубаса_злой_молчит_красный_слева:
    .byte $0C

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $30
    .byte $2E

    .dbyt off_A8EA - $2000

    .byte con_выход



off_A665_6B_ишизаки_надутые_губы:
    .byte $27

    .byte con_координаты_Y_X
    .byte $30
    .byte $3E

    .byte con_повторы + $02

    .byte con_F6

    .dbyt off_B44E - $2000
    .byte $0A

    .byte con_F5_зеркало

    .dbyt off_B44E - $2000
    .byte $0A

    .byte con_повторить

    .byte con_выход



off_A674_6C_движение_блеска_очков_роберто:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $34
    .byte $38

    .dbyt off_B040 - $2000
    .byte $1B

    .dbyt off_B05F - $2000
    .byte $02

    .dbyt off_B096 - $2000

    .byte con_выход









; данные спрайтов
off_A681:
    .byte $04, $05, $23, $5F

    .byte $BD
    .byte $3B, $08
    .byte $3F, $20
    .byte $03, $21

    .byte $BE
    .byte $37, $02
    .byte $3B, $09
    .byte $3F, $0A
    .byte $03, $24
    .byte $07, $26

    .byte $BF
    .byte $37, $03
    .byte $3B, $0C
    .byte $3F, $0B
    .byte $03, $25
    .byte $07, $27

    .byte $A0
    .byte $37, $06
    .byte $3B, $0D
    .byte $3F, $0E
    .byte $03, $30
    .byte $07, $32
    .byte $0B, $22

    .byte $A1
    .byte $3B, $18
    .byte $3F, $0F
    .byte $03, $31
    .byte $07, $33
    .byte $0B, $23

    .byte $A2
    .byte $3F, $1A
    .byte $03, $34
    .byte $07, $36

    .byte con_FF



off_A6C2:
    .byte $04, $05, $23, $5F

    .byte $BD
    .byte $3B, $04
    .byte $3F, $07

    .byte $BE
    .byte $3B, $05
    .byte $3F, $12
    .byte $03, $19
    .byte $07, $1B

    .byte $BF
    .byte $3B, $10
    .byte $3F, $13
    .byte $03, $1C
    .byte $07, $1E

    .byte $A0
    .byte $3B, $11
    .byte $3F, $16
    .byte $03, $1D
    .byte $07, $1F

    .byte $A1
    .byte $3F, $17
    .byte $03, $48
    .byte $07, $4A

    .byte $A2
    .byte $03, $49
    .byte $07, $4B

    .byte con_FF



off_A6F3:
    .byte $04, $05, $23, $5F

    .byte $BE
    .byte $3B, $35
    .byte $3F, $37
    .byte $03, $3D

    .byte $BF
    .byte $3B, $60
    .byte $3F, $62
    .byte $03, $68
    .byte $07, $6A

    .byte $A0
    .byte $3B, $61
    .byte $3F, $63
    .byte $03, $69
    .byte $07, $6B

    .byte $A1
    .byte $3F, $66
    .byte $03, $6C
    .byte $07, $6E

    .byte con_FF



off_A718:
    .byte $04, $05, $23, $5F

    .byte $BE

    .byte $9F

    .byte $C0, $33, $14
    .byte $C0, $13, $42

    .byte $80

    .byte $C0, $13, $4C

    .byte $BF

    .byte $9F

    .byte $C0, $33, $15
    .byte $C0, $13, $43

    .byte $80

    .byte $C0, $13, $4D

    .byte $A0

    .byte $9F

    .byte $C0, $33, $40
    .byte $C0, $13, $46

    .byte $80

    .byte $C0, $13, $58

    .byte $A1

    .byte $80

    .byte $C0, $33, $47
    .byte $C0, $13, $59

    .byte con_FF



off_A749:
    .byte $04, $05, $23, $5F

    .byte $BF
    .byte $3F, $28
    .byte $03, $2A

    .byte $A0
    .byte $3F, $29
    .byte $03, $2B

    .byte $A1
    .byte $3F, $2C
    .byte $03, $2E

    .byte con_FF



off_A75D:
    .byte $04, $05, $23, $5F

    .byte $BF
    .byte $3F, $2D
    .byte $03, $2F

    .byte $A0
    .byte $3F, $38
    .byte $03, $3A

    .byte $A1
    .byte $3F, $39
    .byte $03, $3B

    .byte con_FF



off_A771:
    .byte $04, $05, $23, $5F

    .byte $BF
    .byte $3F, $4E
    .byte $03, $64

    .byte $A0
    .byte $3F, $4F
    .byte $03, $65

    .byte con_FF



off_A780:
    .byte $04, $05, $23, $5F

    .byte $BF
    .byte $3F, $41
    .byte $03, $45

    .byte $A0
    .byte $3F, $44
    .byte $03, $50

    .byte con_FF



off_A78F:
    .byte $04, $05, $23, $5F

    .byte $BF
    .byte $3F, $51
    .byte $03, $52

    .byte $A0
    .byte $3F, $54
    .byte $03, $53

    .byte con_FF



off_A79E:
    .byte $04, $05, $23, $5F

    .byte $BF
    .byte $3F, $3C
    .byte $03, $3E

    .byte $A0
    .byte $3F, $55
    .byte $03, $3F

    .byte con_FF



off_A7AD:
    .byte $04, $05, $23, $5F

    .byte $A0

    .byte $80

    .byte $CC, $33, $67

    .byte con_FF



off_A7B7:
    .byte $04, $05, $23, $5F

    .byte $A0

    .byte $80

    .byte $CC, $33, $6D

    .byte con_FF



off_A7C1:
    .byte $04, $05, $23, $5F

    .byte $A0

    .byte $80

    .byte $CC, $33, $6F

    .byte con_FF



off_A7CB:
    .byte $7C, $7D, $7E, $7F

    .byte $BF
    .byte $30, $40
    .byte $31, $5F
    .byte $34, $44
    .byte $35, $63
    .byte $38, $48
    .byte $39, $67
    .byte $3C, $4C
    .byte $3E, $6B
    .byte $03, $50
    .byte $02, $6F
    .byte $05, $73
    .byte $0F, $58
    .byte $0E, $78
    .byte $13, $5B
    .byte $12, $7B

    .byte $A0
    .byte $30, $41
    .byte $31, $60
    .byte $37, $45
    .byte $36, $64
    .byte $3B, $49
    .byte $3A, $68
    .byte $3F, $4D
    .byte $3E, $6C
    .byte $00, $51
    .byte $02, $70
    .byte $04, $54
    .byte $05, $74
    .byte $08, $56
    .byte $09, $76
    .byte $0F, $59
    .byte $0E, $79
    .byte $13, $5C
    .byte $12, $7C

    .byte $A1
    .byte $33, $42
    .byte $32, $61
    .byte $37, $46
    .byte $36, $65
    .byte $3B, $4A
    .byte $3A, $69
    .byte $3F, $4E
    .byte $3E, $6D
    .byte $00, $52
    .byte $02, $71
    .byte $04, $55
    .byte $06, $75
    .byte $08, $57
    .byte $0A, $77
    .byte $0F, $5A
    .byte $0E, $7A
    .byte $13, $5D
    .byte $12, $7D

    .byte $A2
    .byte $30, $43
    .byte $32, $62
    .byte $34, $47
    .byte $36, $66
    .byte $3B, $4B
    .byte $3A, $6A
    .byte $3F, $4F
    .byte $3E, $6E
    .byte $03, $53
    .byte $02, $72
    .byte $13, $5E
    .byte $12, $7E

    .byte con_FF



off_A852:
    .byte $64, $65, $66, $67

    .byte $BE
    .byte $30, $8A
    .byte $34, $A0
    .byte $0A, $92

    .byte $BF
    .byte $30, $8B
    .byte $34, $A1
    .byte $3B, $A3
    .byte $02, $AB
    .byte $06, $91
    .byte $0A, $93
    .byte $0E, $99

    .byte $A0
    .byte $30, $8E
    .byte $34, $A4
    .byte $38, $A6
    .byte $3C, $AC
    .byte $02, $AE
    .byte $06, $94
    .byte $0A, $96

    .byte $A1
    .byte $30, $8F
    .byte $34, $A5
    .byte $38, $01
    .byte $3D, $AD
    .byte $02, $AF
    .byte $0A, $9D
    .byte $0E, $96

    .byte $A2
    .byte $38, $A7
    .byte $0E, $9D

    .byte $A3
    .byte $06, $B7

    .byte con_jmp
    .word off_B4AC



off_A895:
    .byte $64, $65, $66, $67

    .byte $BE
    .byte $32, $9A
    .byte $36, $B0
    .byte $0B, $92

    .byte $BF
    .byte $32, $9B
    .byte $36, $B1
    .byte $3B, $B2
    .byte $03, $AB
    .byte $07, $91
    .byte $0B, $93
    .byte $0F, $99

    .byte $A0
    .byte $32, $9E
    .byte $36, $B4
    .byte $3A, $B3
    .byte $3E, $B9
    .byte $03, $AE
    .byte $07, $94
    .byte $0B, $96

    .byte $A1
    .byte $32, $9F
    .byte $36, $B5
    .byte $3A, $B6
    .byte $3D, $BC
    .byte $03, $AF
    .byte $0B, $9D
    .byte $0F, $96

    .byte $A2
    .byte $0F, $9D

    .byte $A3
    .byte $07, $B7

    .byte con_jmp
    .word off_B4AC



off_A8D6:
    .byte $70, $71, $66, $67

    .byte $BE
    .byte $3F, $06

    .byte $BF
    .byte $3C, $07
    .byte $00, $0D
    .byte $07, $0F

    .byte $A0
    .byte $3F, $12

    .byte con_jmp
    .word off_B4D4



off_A8EA:
    .byte $70, $71, $72, $73

    .byte $BE
    .byte $3F, $28

    .byte $BF
    .byte $3C, $29
    .byte $00, $0D
    .byte $04, $0A

    .byte $A0
    .byte $3F, $2C

    .byte con_jmp
    .word off_B4D4



off_A8FE:
    .byte $70, $71, $72, $73

    .byte $BE
    .byte $3F, $2A
    .byte $03, $D1

    .byte $BF
    .byte $3C, $07
    .byte $00, $0D
    .byte $07, $20

    .byte $A0
    .byte $3F, $2E
    .byte $03, $D4

    .byte con_jmp
    .word off_B4D4



off_A916:
    .byte $6C, $6D, $6E, $6F

    .byte $BC
    .byte $0D, $2A

    .byte $BD
    .byte $3B, $80
    .byte $3C, $82
    .byte $03, $28
    .byte $09, $29
    .byte $0D, $2B

    .byte $BE
    .byte $37, $81
    .byte $3B, $01
    .byte $3C, $83
    .byte $00, $91
    .byte $04, $93
    .byte $09, $2C
    .byte $0D, $2E

    .byte $BF
    .byte $37, $84
    .byte $3B, $01
    .byte $3C, $86
    .byte $00, $94
    .byte $04, $96
    .byte $09, $2D

    .byte $A0
    .byte $37, $85
    .byte $3B, $01
    .byte $3F, $01
    .byte $03, $01
    .byte $04, $97
    .byte $09, $38

    .byte $A1
    .byte $37, $90
    .byte $3B, $87
    .byte $3F, $01
    .byte $03, $95
    .byte $07, $C2
    .byte $09, $39

    .byte $A2
    .byte $3B, $92
    .byte $3F, $57
    .byte $03, $3D
    .byte $09, $3C

    .byte $A3
    .byte $0D, $3F

    .byte con_jmp
    .word off_B525



off_A96D:
    .byte $6C, $6D, $6E, $6F

    .byte $BC
    .byte $3B, $99
    .byte $3F, $9B
    .byte $09, $68
    .byte $0D, $6A

    .byte $BD
    .byte $37, $C3
    .byte $3B, $9C
    .byte $3C, $9E
    .byte $00, $6F
    .byte $04, $63
    .byte $09, $69
    .byte $0D, $6B

    .byte $BE
    .byte $37, $C6
    .byte $38, $9D
    .byte $3F, $9F
    .byte $00, $7A
    .byte $04, $66
    .byte $09, $6C
    .byte $0D, $6E

    .byte $BF
    .byte $37, $C7
    .byte $38, $C8
    .byte $3F, $CA
    .byte $00, $7B
    .byte $04, $67
    .byte $09, $6D

    .byte $A0
    .byte $37, $D2
    .byte $3B, $01
    .byte $3C, $CB
    .byte $00, $7E
    .byte $04, $72
    .byte $09, $78

    .byte $A1
    .byte $3B, $CE
    .byte $3F, $C9
    .byte $03, $7F
    .byte $07, $73
    .byte $09, $79

    .byte $A2
    .byte $3F, $77
    .byte $03, $7D
    .byte $09, $7C

    .byte $A3
    .byte $0D, $76

    .byte con_jmp
    .word off_B525



off_A9CA:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $4E
    .byte $3F, $6A

    .byte $BF
    .byte $38, $44
    .byte $3C, $6B
    .byte $03, $71

    .byte $A0
    .byte $3B, $4F
    .byte $3F, $6E

    .byte con_jmp
    .word off_B88D



off_A9E3:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $3F, $8E
    .byte $03, $A1

    .byte $A0
    .byte $3F, $8F
    .byte $00, $A4
    .byte $03, $02

    .byte con_jmp
    .word off_B532



off_A9F6:
    .byte $6C, $6D, $6E, $6F

    .byte $BE
    .byte $07, $27

    .byte $BF
    .byte $3F, $8E
    .byte $03, $A1

    .byte $BF
    .byte $07, $60

    .byte $A0
    .byte $3F, $8F
    .byte $00, $A4
    .byte $03, $02

    .byte con_jmp
    .word off_B532



off_AA0F:
    .byte $6C, $6D, $6E, $6F

    .byte $BD
    .byte $3A, $D1
    .byte $3E, $D3

    .byte $BE
    .byte $36, $C1
    .byte $3A, $D4
    .byte $3E, $D6
    .byte $00, $A0

    .byte $BF
    .byte $36, $C4
    .byte $3A, $D5
    .byte $3F, $D7
    .byte $03, $BB

    .byte $A0
    .byte $36, $C5
    .byte $3A, $CC
    .byte $3F, $B5
    .byte $3E, $02
    .byte $00, $BE
    .byte $03, $02

    .byte $A1
    .byte $36, $D0
    .byte $3A, $CD
    .byte $3E, $CF
    .byte $02, $BD
    .byte $06, $BF

    .byte $A2
    .byte $3E, $DA
    .byte $02, $B7

    .byte con_jmp
    .word off_B561



off_AA4A:
    .byte $6C, $6D, $6E, $6F

    .byte $BE
    .byte $3A, $0B

    .byte $BF
    .byte $3C, $24
    .byte $00, $1D
    .byte $04, $1E

    .byte $A0
    .byte $3A, $0F

    .byte con_jmp
    .word off_B583



off_AA5E:
    .byte $6C, $6D, $6E, $6F

    .byte $BE
    .byte $3A, $0B

    .byte $BF
    .byte $3C, $24
    .byte $03, $34
    .byte $04, $0C

    .byte $A0
    .byte $3A, $0F

    .byte con_jmp
    .word off_B583



off_AA72:
    .byte $6C, $6D, $6E, $6F

    .byte $BE
    .byte $3A, $1F

    .byte $BF
    .byte $3C, $35
    .byte $00, $1D
    .byte $04, $1E

    .byte $A0
    .byte $3A, $4A

    .byte con_jmp
    .word off_B583



off_AA86:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $00, $1D
    .byte $04, $1E

    .byte con_jmp
    .word off_B5E4



off_AA92:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $03, $34
    .byte $04, $0C

    .byte con_jmp
    .word off_B5E4



off_AAB2:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $00, $1D
    .byte $04, $1E

    .byte con_jmp
    .word off_B61B



off_AABE:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $03, $34
    .byte $04, $0C

    .byte con_jmp
    .word off_B61B



off_AACA:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $01, $DC

    .byte con_jmp
    .word off_BAA9



off_AAD4:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $88
    .byte $3C, $8A
    .byte $00, $A0
    .byte $04, $5A

    .byte $BF
    .byte $3A, $89
    .byte $3C, $8B
    .byte $00, $A1
    .byte $07, $86
    .byte $04, $5B

    .byte $A0
    .byte $3A, $8C
    .byte $3C, $8E
    .byte $00, $A4
    .byte $07, $87
    .byte $04, $5E

    .byte $A1
    .byte $3A, $8D

    .byte con_jmp
    .word off_B65D



off_AAFD:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $85
    .byte $3C, $92
    .byte $00, $98

    .byte $BF
    .byte $3A, $89
    .byte $3C, $93
    .byte $00, $99

    .byte $A0
    .byte $3A, $90
    .byte $3C, $96
    .byte $00, $9C

    .byte $A1
    .byte $3A, $91

    .byte con_jmp
    .word off_B64E



off_AB1C:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $88
    .byte $3C, $8A
    .byte $00, $A0

    .byte $BF
    .byte $3A, $94
    .byte $3C, $9E
    .byte $00, $97

    .byte $A0
    .byte $3A, $95
    .byte $3C, $9F
    .byte $00, $9D

    .byte $A1
    .byte $3A, $8D

    .byte con_jmp
    .word off_B64E



off_AB3B:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $85
    .byte $3C, $A2
    .byte $03, $A5
    .byte $00, $A8
    .byte $07, $AB
    .byte $04, $5A

    .byte $BF
    .byte $3A, $89
    .byte $3C, $A3
    .byte $00, $A9
    .byte $04, $AA

    .byte $A0
    .byte $3A, $90
    .byte $3C, $A6
    .byte $03, $A5
    .byte $00, $AC
    .byte $07, $AE
    .byte $04, $5E

    .byte $A1
    .byte $3A, $91

    .byte con_jmp
    .word off_B65D



off_AB68:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $8B
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $8E
    .byte $07, $A6

    .byte $A1
    .byte $3F, $8F
    .byte $03, $A5

    .byte con_jmp
    .word off_B69A



off_AB80:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3C, $94
    .byte $02, $96

    .byte $A0
    .byte $3C, $98
    .byte $04, $A2

    .byte $A1
    .byte $3C, $95
    .byte $02, $97

    .byte con_jmp
    .word off_B69A



off_AB96:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $9C
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $8E
    .byte $07, $B3

    .byte $A1
    .byte $3F, $9D
    .byte $03, $A5

    .byte con_jmp
    .word off_B69A



off_ABAE:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $86
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $8E
    .byte $04, $A2

    .byte $A1
    .byte $3F, $87
    .byte $03, $A5

    .byte con_jmp
    .word off_B69A



off_ABC6:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $8B
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $B6
    .byte $07, $A6

    .byte $A1
    .byte $3F, $8F
    .byte $03, $A5

    .byte con_jmp
    .word off_B6F6



off_ABDE:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3C, $94
    .byte $02, $96

    .byte $A0
    .byte $3C, $C8
    .byte $04, $A2

    .byte $A1
    .byte $3C, $95
    .byte $02, $97

    .byte con_jmp
    .word off_B6F6



off_ABF4:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3C, $94
    .byte $02, $96

    .byte $A0
    .byte $3C, $B6
    .byte $07, $A6

    .byte $A1
    .byte $3F, $8F
    .byte $03, $A5

    .byte con_jmp
    .word off_B6F6



off_AC0A:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $9E
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $B6
    .byte $07, $B3

    .byte $A1
    .byte $3F, $9F
    .byte $03, $A5

    .byte con_jmp
    .word off_B6F6



off_AC22:
    .byte $70, $71, $72, $73

    .byte $BE
    .byte $09, $81
    .byte $0D, $7D

    .byte $BF
    .byte $03, $C9
    .byte $09, $D0
    .byte $0A, $91
    .byte $0D, $D2

    .byte $A0
    .byte $04, $A2
    .byte $08, $C0
    .byte $0D, $D3

    .byte $A1
    .byte $03, $A5
    .byte $0B, $2B
    .byte $0D, $D6

    .byte $A2
    .byte $3E, $CC
    .byte $02, $CE
    .byte $09, $D5
    .byte $0A, $91
    .byte $0D, $D7

    .byte $A3
    .byte $09, $7C
    .byte $0D, $7E

    .byte $A4
    .byte $0D, $7F

    .byte con_jmp
    .word off_B724



off_AC58:
    .byte $70, $71, $72, $73

    .byte $BE
    .byte $09, $A8
    .byte $0D, $AA

    .byte $BF
    .byte $03, $D8
    .byte $09, $DA
    .byte $0A, $91
    .byte $0D, $AB

    .byte $A0
    .byte $04, $A2
    .byte $08, $AC
    .byte $0F, $AE

    .byte $A1
    .byte $03, $D9
    .byte $0B, $AD
    .byte $0F, $AF

    .byte $A2
    .byte $3E, $9A
    .byte $02, $B0
    .byte $09, $DB
    .byte $0A, $91
    .byte $0D, $BA

    .byte $A3
    .byte $09, $B9
    .byte $0D, $BB

    .byte $A4
    .byte $0D, $7F

    .byte con_jmp
    .word off_B724



off_AC8E:
    .byte $74, $75, $76, $77

    .byte con_jsr
    .word off_B7BD

    .byte con_jmp
    .word off_B75F



off_AC98:
    .byte $74, $75, $76, $77

    .byte con_jsr
    .word off_B7BD

    .byte con_jmp
    .word off_B7AF



off_ACA2:
    .byte $74, $75, $76, $77

    .byte con_jsr
    .word off_B7DE

    .byte con_jmp
    .word off_B75F



off_ACAC:
    .byte $74, $75, $76, $77

    .byte con_jsr
    .word off_B7DE

    .byte con_jmp
    .word off_B7AF



off_ACB6:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3F, $8B

    .byte $A0
    .byte $03, $A4
    .byte $04, $A6

    .byte $A1
    .byte $3F, $8F

    .byte con_jmp
    .word off_B7FF



off_ACC8:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3F, $C4

    .byte $A0
    .byte $00, $E0
    .byte $04, $E2

    .byte $A1
    .byte $3F, $C6

    .byte con_jmp
    .word off_B7FF



off_ACDA:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3F, $C4

    .byte $A0
    .byte $03, $E1
    .byte $04, $E3

    .byte $A1
    .byte $3F, $C6

    .byte con_jmp
    .word off_B7FF



off_ACEC:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3A, $93
    .byte $3F, $99
    .byte $3C, $3C

    .byte $A0
    .byte $3C, $9C
    .byte $03, $9E

    .byte $A1
    .byte $3A, $97
    .byte $3F, $9D
    .byte $3C, $3C

    .byte con_jmp
    .word off_B85B



off_AD06:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3A, $93
    .byte $3F, $BE
    .byte $3C, $3C

    .byte $A0
    .byte $3C, $9C
    .byte $03, $9E

    .byte $A1
    .byte $3A, $97
    .byte $3F, $BF
    .byte $3C, $3C

    .byte con_jmp
    .word off_B85B



off_AD20:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3A, $93
    .byte $3F, $BE
    .byte $3C, $3C

    .byte $A0
    .byte $3C, $9C
    .byte $03, $E9
    .byte $04, $EB

    .byte $A1
    .byte $3A, $97
    .byte $3F, $BF
    .byte $3C, $3C

    .byte con_jmp
    .word off_B85B



off_AD3C:     ; unused
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $37, $CA
    .byte $3B, $C5
    .byte $3F, $C7
    .byte $03, $CD
    .byte $07, $CF

    .byte $BF
    .byte $33, $C8
    .byte $37, $01
    .byte $38, $D0
    .byte $3F, $D2
    .byte $3C, $3C
    .byte $00, $D8
    .byte $04, $DA
    .byte $09, $A9

    .byte $A0
    .byte $33, $C9
    .byte $34, $CB
    .byte $38, $D1
    .byte $3C, $D3
    .byte $03, $D9
    .byte $04, $DB
    .byte $0A, $AC

    .byte $A1
    .byte $33, $CC
    .byte $37, $01
    .byte $38, $D4
    .byte $3F, $D6
    .byte $3C, $3C
    .byte $00, $DC
    .byte $04, $DE
    .byte $0A, $AD

    .byte $A2
    .byte $37, $CE
    .byte $3B, $D5
    .byte $3F, $D7
    .byte $03, $D7
    .byte $05, $DD

    .byte con_jmp
    .word off_B839



off_AD8A:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $68
    .byte $3F, $6A

    .byte $BF
    .byte $38, $69
    .byte $3C, $6B
    .byte $03, $71

    .byte $A0
    .byte $3B, $6C
    .byte $3F, $6E

    .byte con_jmp
    .word off_B88D



off_ADA2:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $4E
    .byte $3F, $6A

    .byte $BF
    .byte $38, $44
    .byte $3C, $6B
    .byte $00, $6F

    .byte $A0
    .byte $3B, $4F
    .byte $3F, $6E

    .byte con_jmp
    .word off_B88D



off_ADBA:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $0E
    .byte $3B, $4E
    .byte $3F, $26
    .byte $3F, $6A

    .byte $BF
    .byte $3B, $0F
    .byte $38, $44
    .byte $3F, $27
    .byte $3C, $6B
    .byte $00, $6F

    .byte $A0
    .byte $3B, $25
    .byte $3B, $4F
    .byte $3F, $13
    .byte $3F, $6E

    .byte con_jmp
    .word off_B88D



off_ADDE:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $60

    .byte $A0
    .byte $3E, $61
    .byte $06, $2B
    .byte $07, $02
    .byte $0A, $1A

    .byte $A1
    .byte $3E, $64

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9F4



off_ADF7:
    .byte $74, $75, $76, $77

    .byte $BD
    .byte $05, $50
    .byte $08, $52
    .byte $0C, $58

    .byte $BE
    .byte $3A, $48
    .byte $03, $60
    .byte $05, $62
    .byte $08, $68
    .byte $0C, $6A

    .byte $BF
    .byte $36, $29
    .byte $3A, $49
    .byte $3F, $4B
    .byte $00, $61
    .byte $07, $63
    .byte $0B, $01
    .byte $0C, $6B

    .byte $A0
    .byte $36, $2A
    .byte $3A, $4C
    .byte $3F, $4E
    .byte $03, $64
    .byte $07, $66
    .byte $0B, $6C
    .byte $0C, $6E

    .byte $A1
    .byte $36, $2B
    .byte $3B, $4D
    .byte $3C, $4F
    .byte $01, $65
    .byte $05, $67
    .byte $09, $01
    .byte $0C, $6F

    .byte $A2
    .byte $01, $69
    .byte $05, $51
    .byte $0B, $53
    .byte $0C, $59

    .byte $A3
    .byte $05, $54
    .byte $09, $56
    .byte $0F, $5C

    .byte con_FF



off_AE4B:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3A, $08
    .byte $3F, $18
    .byte $02, $1A
    .byte $06, $30

    .byte $BF
    .byte $3B, $09
    .byte $3F, $19
    .byte $03, $1B

    .byte $A0
    .byte $3A, $0C
    .byte $3F, $0A
    .byte $00, $20

    .byte $A1
    .byte $3F, $01
    .byte $02, $01
    .byte $06, $23

    .byte $A2
    .byte $3F, $0B
    .byte $02, $24

    .byte con_jmp
    .word off_B8DC



off_AE75:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $15
    .byte $3F, $1D
    .byte $03, $35

    .byte $BF
    .byte $3B, $16
    .byte $3F, $1E
    .byte $03, $1C

    .byte $A0
    .byte $3B, $17
    .byte $3F, $1F
    .byte $00, $40

    .byte $A1
    .byte $3C, $34
    .byte $00, $41

    .byte con_jmp
    .word off_B8DC



off_AE96:
    .byte $78, $79, $7A, $7B

    .byte $BD
    .byte $36, $55
    .byte $3A, $52

    .byte $BE
    .byte $32, $45
    .byte $36, $42
    .byte $3B, $53
    .byte $3F, $49
    .byte $03, $59

    .byte $BF
    .byte $32, $50
    .byte $36, $43
    .byte $3B, $56
    .byte $3F, $4C
    .byte $03, $5C
    .byte $04, $4B
    .byte $05, $33

    .byte $A0
    .byte $32, $51
    .byte $36, $46
    .byte $3B, $57
    .byte $3F, $4D
    .byte $00, $5D
    .byte $04, $3F
    .byte $05, $28

    .byte $A1
    .byte $32, $54
    .byte $37, $47
    .byte $38, $48
    .byte $3C, $58
    .byte $00, $4A

    .byte con_jmp
    .word off_B8FF



off_AED6:
    .byte $70, $71, $66, $67

    .byte $BD
    .byte $14, $DE

    .byte $BE
    .byte $0C, $DA
    .byte $10, $DC
    .byte $14, $DF

    .byte $BF
    .byte $05, $CA
    .byte $04, $BF
    .byte $08, $D8
    .byte $0C, $DB
    .byte $10, $DD

    .byte $A0
    .byte $32, $C0
    .byte $36, $C2
    .byte $01, $D0
    .byte $05, $D2
    .byte $08, $D9

    .byte $A1
    .byte $32, $C1
    .byte $37, $C3
    .byte $3B, $C9
    .byte $3D, $CB
    .byte $01, $D1
    .byte $05, $D3

    .byte $A2
    .byte $31, $C4
    .byte $35, $C6
    .byte $39, $CC
    .byte $38, $BF
    .byte $3C, $CE
    .byte $00, $D4
    .byte $04, $D6

    .byte $A3
    .byte $31, $C5
    .byte $35, $C7
    .byte $39, $CD
    .byte $3D, $CF
    .byte $01, $D5
    .byte $05, $D7

    .byte con_FF



off_AF24:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3F, $8B

    .byte $A0
    .byte $00, $E0
    .byte $04, $E2

    .byte $A1
    .byte $3F, $8F

    .byte con_jmp
    .word off_B7FF



off_AF36:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $37, $CA
    .byte $3B, $C5
    .byte $3F, $C7
    .byte $03, $CD
    .byte $07, $CF

    .byte $BF
    .byte $33, $C8
    .byte $37, $01
    .byte $38, $D0
    .byte $3F, $D2
    .byte $3C, $3C
    .byte $00, $D8
    .byte $04, $DA
    .byte $09, $A9

    .byte $A0
    .byte $33, $C9
    .byte $34, $CB
    .byte $38, $D1
    .byte $3C, $D3
    .byte $00, $EA
    .byte $04, $DB
    .byte $0A, $AC

    .byte $A1
    .byte $33, $CC
    .byte $37, $01
    .byte $38, $D4
    .byte $3F, $D6
    .byte $3C, $3C
    .byte $00, $DC
    .byte $04, $DE
    .byte $0A, $AD

    .byte $A2
    .byte $37, $CE
    .byte $3B, $D5
    .byte $3F, $D7
    .byte $03, $D7
    .byte $05, $DD

    .byte con_jmp
    .word off_B839



off_AF84:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $88
    .byte $3C, $8A
    .byte $00, $A0
    .byte $04, $5A

    .byte $BF
    .byte $3A, $89
    .byte $3C, $8B
    .byte $00, $A1
    .byte $04, $15
    .byte $08, $FE

    .byte $A0
    .byte $3A, $8C
    .byte $3C, $8E
    .byte $00, $A4
    .byte $04, $81

    .byte $A1
    .byte $3A, $8D

    .byte con_jmp
    .word off_BA31



off_AFAB:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $88
    .byte $3C, $8A
    .byte $00, $A0
    .byte $04, $5A

    .byte $BF
    .byte $3A, $94
    .byte $3C, $9E
    .byte $00, $97
    .byte $04, $15
    .byte $08, $FE

    .byte $A0
    .byte $3A, $95
    .byte $3C, $9F
    .byte $00, $9D
    .byte $04, $81

    .byte $A1
    .byte $3A, $8D

    .byte con_jmp
    .word off_BA31



off_AFD2:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3C, $94
    .byte $02, $96

    .byte $A0
    .byte $3C, $98
    .byte $07, $A6

    .byte $A1
    .byte $3C, $95
    .byte $02, $97

    .byte con_jmp
    .word off_B69A



off_AFE8:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $5A

    .byte $A0
    .byte $3E, $5B
    .byte $06, $18
    .byte $0A, $1A

    .byte $A1
    .byte $3E, $5E

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9F4



off_AFFF:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $38, $D4

    .byte $BF
    .byte $00, $C1
    .byte $3C, $D6
    .byte $03, $D7

    .byte $A0
    .byte $38, $D5

    .byte con_jsr
    .word off_B7BD

    .byte con_jmp
    .word off_B76A



off_B016:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3A, $08
    .byte $3F, $18
    .byte $02, $1A
    .byte $06, $30

    .byte $BF
    .byte $3B, $09
    .byte $3F, $19
    .byte $00, $E8

    .byte $A0
    .byte $3A, $0C
    .byte $3F, $0A
    .byte $00, $20

    .byte $A1
    .byte $3F, $01
    .byte $03, $01
    .byte $06, $23

    .byte $A2
    .byte $3F, $0B
    .byte $02, $24

    .byte con_jmp
    .word off_B8DC



off_B040:
    .byte $70, $71, $72, $73

    .byte $BA
    .byte $3F, $32
    .byte $03, $38
    .byte $07, $3A

    .byte $BB
    .byte $3F, $33
    .byte $03, $39

    .byte $A0
    .byte $3B, $31
    .byte $3F, $02
    .byte $03, $3C
    .byte $07, $3B

    .byte $A1
    .byte $3B, $34
    .byte $3F, $39

    .byte con_FF



off_B05F:
    .byte $70, $71, $72, $73

    .byte $BB
    .byte $3F, $35
    .byte $03, $37
    .byte $0B, $3E

    .byte $BC
    .byte $3F, $60
    .byte $03, $02
    .byte $07, $02
    .byte $0B, $3F

    .byte $BD
    .byte $03, $62
    .byte $07, $02
    .byte $0B, $6A

    .byte $A1
    .byte $03, $79
    .byte $07, $7B

    .byte $A2
    .byte $3B, $61
    .byte $3F, $02
    .byte $03, $02
    .byte $07, $02
    .byte $0B, $6B

    .byte $A3
    .byte $3B, $64
    .byte $3F, $63
    .byte $03, $02
    .byte $07, $3D
    .byte $0B, $6E

    .byte con_FF



off_B096:
    .byte $70, $71, $72, $73

    .byte $BE
    .byte $3F, $78
    .byte $03, $7A
    .byte $07, $36

    .byte $A3
    .byte $3B, $68
    .byte $03, $66
    .byte $07, $6C
    .byte $0B, $6F

    .byte $A4
    .byte $3B, $69
    .byte $3F, $65
    .byte $03, $67
    .byte $07, $6D

    .byte con_FF



off_B0B4:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $38, $D4

    .byte $BF
    .byte $3C, $D6
    .byte $00, $C1

    .byte $A0
    .byte $38, $D5

    .byte con_jsr
    .word off_B7DE

    .byte con_jmp
    .word off_B7AF



off_B0C9:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3A, $85
    .byte $3C, $92
    .byte $00, $98
    .byte $04, $5A

    .byte $BF
    .byte $3A, $89
    .byte $3C, $93
    .byte $00, $99
    .byte $04, $15
    .byte $08, $FE

    .byte $A0
    .byte $3A, $90
    .byte $3C, $96
    .byte $00, $9C
    .byte $04, $81

    .byte $A1
    .byte $3A, $91

    .byte con_jmp
    .word off_BA31



off_B0F0:
    .byte $6C, $6D, $6E, $6F

    .byte $BE
    .byte $3A, $1F

    .byte $BF
    .byte $3C, $35
    .byte $03, $34
    .byte $04, $0C

    .byte $A0
    .byte $3A, $4A

    .byte con_jmp
    .word off_B583



off_B104:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $60

    .byte $A0
    .byte $3E, $61
    .byte $06, $2B
    .byte $07, $02
    .byte $0A, $1A

    .byte $A1
    .byte $3E, $64

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_BA6C



off_B11D:
    .byte $60, $61, $62, $63

    .byte $BB
    .byte $35, $4C
    .byte $39, $50

    .byte $BC
    .byte $2F, $44
    .byte $2D, $45
    .byte $33, $48
    .byte $31, $4A
    .byte $35, $4D
    .byte $39, $51

    .byte $BD
    .byte $2F, $47
    .byte $2D, $46
    .byte $33, $49
    .byte $31, $4B
    .byte $35, $4E
    .byte $3B, $52
    .byte $3F, $53
    .byte $03, $5F

    .byte $BE
    .byte $3F, $54
    .byte $03, $60
    .byte $06, $67
    .byte $08, $6D

    .byte $BF
    .byte $3F, $55
    .byte $00, $61
    .byte $04, $68
    .byte $08, $6E
    .byte $0C, $3B
    .byte $10, $3E
    .byte $17, $42

    .byte $A0
    .byte $3F, $56
    .byte $03, $62
    .byte $07, $69
    .byte $0A, $6F
    .byte $0C, $02
    .byte $10, $3F
    .byte $17, $43

    .byte $A1
    .byte $3F, $57
    .byte $03, $63
    .byte $06, $6A
    .byte $0A, $38
    .byte $0C, $02
    .byte $10, $40
    .byte $17, $70

    .byte $A2
    .byte $00, $64
    .byte $04, $6B
    .byte $08, $39
    .byte $0C, $3D
    .byte $10, $41
    .byte $17, $71

    .byte $A3
    .byte $3F, $58
    .byte $03, $65
    .byte $06, $6C
    .byte $08, $3A

    .byte $A4
    .byte $37, $5D
    .byte $3B, $5B
    .byte $3F, $59
    .byte $03, $66

    .byte $A5
    .byte $37, $5E
    .byte $3B, $5C
    .byte $3F, $5A

    .byte con_FF



off_B1D0:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $60

    .byte $A0
    .byte $3E, $61
    .byte $06, $18
    .byte $0A, $1A

    .byte $A1
    .byte $3E, $64

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9F4



off_B1E7:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $60

    .byte $A0
    .byte $3E, $61
    .byte $06, $49
    .byte $07, $02
    .byte $0A, $1A

    .byte $A1
    .byte $3E, $64

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9F4



off_B200:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $5A

    .byte $A0
    .byte $3E, $5B
    .byte $06, $69
    .byte $07, $02
    .byte $0A, $6B

    .byte $A1
    .byte $3E, $5E

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9F4



off_B219:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $38, $B8

    .byte $BF
    .byte $3C, $BB
    .byte $03, $D7

    .byte $A0
    .byte $38, $BC

    .byte con_jsr
    .word off_B7BD

    .byte con_jmp
    .word off_B76A



off_B22E:
    .byte $68, $69, $6A, $6B

    .byte $BE
    .byte $36, $54
    .byte $3A, $50
    .byte $3E, $51

    .byte $BF
    .byte $36, $55
    .byte $3A, $01
    .byte $3E, $78
    .byte $3F, $02
    .byte $02, $53
    .byte $03, $5D

    .byte $A0
    .byte $36, $01
    .byte $3A, $01
    .byte $3E, $01
    .byte $02, $56
    .byte $06, $18

    .byte $A1
    .byte $36, $01
    .byte $3A, $01
    .byte $3E, $01
    .byte $02, $57

    .byte $A2
    .byte $36, $35
    .byte $3A, $37
    .byte $3E, $01

    .byte con_jmp
    .word off_B9D2



off_B264:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3C, $94
    .byte $02, $96

    .byte $A0
    .byte $3C, $C8
    .byte $07, $A6

    .byte $A1
    .byte $3C, $95
    .byte $02, $97

    .byte con_jmp
    .word off_B6F6



off_B27A:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $9E
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $B6
    .byte $04, $A2

    .byte $A1
    .byte $3F, $9F
    .byte $03, $A5

    .byte con_jmp
    .word off_B6F6



off_B292:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $05

    .byte $A0
    .byte $3E, $10
    .byte $06, $18

    .byte $A1
    .byte $3E, $11
    .byte $02, $13
    .byte $03, $31

    .byte con_jmp
    .word off_B947



off_B2A8:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3E, $29

    .byte $A0
    .byte $3E, $2C
    .byte $06, $2B
    .byte $07, $02

    .byte $A1
    .byte $3E, $2D
    .byte $02, $2E
    .byte $03, $31

    .byte con_jmp
    .word off_B947



off_B2C0:
    .byte $68, $69, $6A, $6B

    .byte $A0
    .byte $06, $18

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9AB



off_B2CD:
    .byte $68, $69, $6A, $6B

    .byte $A0
    .byte $06, $49

    .byte con_jsr
    .word off_B9A0

    .byte con_jmp
    .word off_B9AB



off_B2DA:
    .byte $68, $69, $6A, $6B

    .byte $BE
    .byte $36, $54
    .byte $3A, $50
    .byte $3E, $51

    .byte $BF
    .byte $36, $55
    .byte $3A, $01
    .byte $3E, $78
    .byte $3F, $02
    .byte $02, $53
    .byte $03, $5D

    .byte $A0
    .byte $36, $01
    .byte $3A, $01
    .byte $3E, $01
    .byte $02, $56
    .byte $06, $49

    .byte $A1
    .byte $36, $01
    .byte $3A, $01
    .byte $3E, $01
    .byte $02, $57

    .byte $A2
    .byte $36, $35
    .byte $3A, $37
    .byte $3E, $01

    .byte con_jmp
    .word off_B9D2



off_B310:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $68
    .byte $3F, $6A

    .byte $BF
    .byte $38, $69
    .byte $3C, $6B
    .byte $00, $6F

    .byte $A0
    .byte $3B, $6C
    .byte $3F, $6E

    .byte con_jmp
    .word off_B88D



off_B340:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $0E
    .byte $3B, $4E
    .byte $3F, $26
    .byte $3F, $6A

    .byte $BF
    .byte $3B, $0F
    .byte $38, $44
    .byte $3F, $27
    .byte $3C, $6B
    .byte $03, $71

    .byte $A0
    .byte $3B, $25
    .byte $3B, $4F
    .byte $3F, $13
    .byte $3F, $6E

    .byte con_jmp
    .word off_B88D



off_B364:
    .byte $70, $71, $66, $67

    .byte $BE
    .byte $3F, $06

    .byte $BF
    .byte $3C, $07
    .byte $00, $0D
    .byte $04, $0A

    .byte $A0
    .byte $3F, $12

    .byte con_jmp
    .word off_B4D4



off_B378:
    .byte $78, $79, $7A, $7B

    .byte $BE
    .byte $3B, $15
    .byte $3F, $1D
    .byte $03, $35

    .byte $BF
    .byte $3B, $16
    .byte $3F, $1E
    .byte $00, $E8

    .byte $A0
    .byte $3B, $17
    .byte $3F, $1F
    .byte $00, $40

    .byte $A1
    .byte $3C, $34
    .byte $00, $41

    .byte con_jmp
    .word off_B8DC



off_B399:
    .byte $78, $79, $7A, $7B

    .byte $BD
    .byte $36, $55
    .byte $3A, $52

    .byte $BE
    .byte $32, $45
    .byte $36, $42
    .byte $3B, $53
    .byte $3F, $49
    .byte $03, $59

    .byte $BF
    .byte $32, $50
    .byte $36, $43
    .byte $3B, $56
    .byte $3F, $4C
    .byte $00, $FD
    .byte $04, $4B
    .byte $05, $33

    .byte $A0
    .byte $32, $51
    .byte $36, $46
    .byte $3B, $57
    .byte $3F, $4D
    .byte $00, $5D
    .byte $04, $3F
    .byte $05, $28

    .byte $A1
    .byte $32, $54
    .byte $37, $47
    .byte $38, $48
    .byte $3C, $58
    .byte $00, $4A

    .byte con_jmp
    .word off_B8FF



off_B3D9:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $8B
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $B6
    .byte $04, $A2

    .byte $A1
    .byte $3F, $8F
    .byte $03, $A5

    .byte con_jmp
    .word off_B6F6



off_B3F1:
    .byte $78, $79, $7A, $7B

    .byte $BF
    .byte $3A, $93
    .byte $3F, $99
    .byte $3C, $3C

    .byte $A0
    .byte $3C, $9C
    .byte $03, $E9
    .byte $04, $EB

    .byte $A1
    .byte $3A, $97
    .byte $3F, $9D
    .byte $3C, $3C

    .byte con_jmp
    .word off_B85B



off_B40D:
    .byte $70, $71, $72, $73

    .byte $BE
    .byte $3F, $28

    .byte $BF
    .byte $3C, $29
    .byte $00, $0D
    .byte $07, $0F

    .byte $A0
    .byte $3F, $2C

    .byte con_jmp
    .word off_B4D4



off_B421:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3F, $8B
    .byte $03, $A1
    .byte $02, $93

    .byte $A0
    .byte $3C, $8E
    .byte $04, $A2

    .byte $A1
    .byte $3F, $8F
    .byte $03, $A5

    .byte con_jmp
    .word off_B69A



off_B439:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $38, $B8

    .byte $BF
    .byte $3C, $BB
    .byte $03, $D7

    .byte $A0
    .byte $38, $BC

    .byte con_jsr
    .word off_B7DE

    .byte con_jmp
    .word off_B76A



off_B44E:
    .byte $1D, $5D, $5E, $5F

    .byte $BA
    .byte $3D, $15
    .byte $01, $18
    .byte $05, $1E
    .byte $09, $27

    .byte $BB
    .byte $9F, $C3
    .byte $0A, $3B
    .byte $39, $10
    .byte $3D, $12
    .byte $01, $19
    .byte $05, $30
    .byte $09, $32

    .byte $BC
    .byte $39, $11
    .byte $3D, $13
    .byte $01, $1C
    .byte $05, $1F
    .byte $09, $33
    .byte $0D, $3F
    .byte $0C, $39

    .byte $BD
    .byte $39, $14
    .byte $3D, $16
    .byte $01, $1D
    .byte $05, $31
    .byte $09, $3E
    .byte $08, $36
    .byte $0C, $3C

    .byte $BE
    .byte $3D, $17
    .byte $01, $1A
    .byte $05, $34
    .byte $08, $37
    .byte $0C, $3D

    .byte $BF
    .byte $08, $2D
    .byte $0D, $1B
    .byte $0C, $2F

    .byte $A0
    .byte $08, $38
    .byte $0D, $35
    .byte $0C, $3A

    .byte con_FF



off_B4A2:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $03, $DD

    .byte con_jmp
    .word off_BAA9









; общие куски данных спрайтов
off_B4AC:
    .byte $BD
    .byte $0C, $8C

    .byte $BE
    .byte $38, $A2
    .byte $3D, $A8
    .byte $01, $AA
    .byte $05, $90
    .byte $0C, $98

    .byte $BF
    .byte $3F, $A9

    .byte $A0
    .byte $0D, $9C

    .byte $A1
    .byte $04, $8D

    .byte $A2
    .byte $3D, $B8
    .byte $01, $BA
    .byte $05, $95
    .byte $08, $97

    .byte $A3
    .byte $01, $BB
    .byte $08, $BD
    .byte $0C, $BE

    .byte con_FF



off_B4D4:
    .byte $BC
    .byte $0D, $22

    .byte $BD
    .byte $3B, $09
    .byte $3F, $0B
    .byte $09, $21
    .byte $0D, $23

    .byte $BE
    .byte $37, $04
    .byte $3B, $01
    .byte $03, $0C
    .byte $04, $0E
    .byte $09, $24
    .byte $0D, $26

    .byte $BF
    .byte $37, $05
    .byte $3B, $01
    .byte $08, $25
    .byte $0D, $27

    .byte $A0
    .byte $37, $10
    .byte $3B, $01
    .byte $03, $18
    .byte $04, $1A
    .byte $08, $2D
    .byte $09, $03
    .byte $0D, $2F

    .byte $A1
    .byte $37, $11
    .byte $3B, $01
    .byte $3C, $13
    .byte $00, $19
    .byte $04, $1B
    .byte $09, $30
    .byte $0D, $02

    .byte $A2
    .byte $3B, $16
    .byte $3F, $1C
    .byte $03, $1E
    .byte $09, $15
    .byte $0D, $17

    .byte $A3
    .byte $09, $1D
    .byte $0D, $1F
    .byte con_FF



off_B525:
    .byte $BF
    .byte $0D, $2F

    .byte $A0
    .byte $0D, $3A

    .byte $A1
    .byte $0D, $3B

    .byte $A2
    .byte $0D, $3E

    .byte con_FF



off_B532:
    .byte $BD
    .byte $3B, $88
    .byte $3F, $8A

    .byte $BE
    .byte $37, $89
    .byte $3B, $01
    .byte $3C, $8B
    .byte $00, $A0

    .byte $BF
    .byte $37, $8C
    .byte $3B, $01

    .byte $A0
    .byte $37, $8D
    .byte $3B, $01

    .byte $A1
    .byte $37, $98
    .byte $3B, $01
    .byte $3C, $9A
    .byte $00, $A5
    .byte $04, $A7

    .byte $A2
    .byte $3B, $B1
    .byte $3F, $B3
    .byte $03, $B0
    .byte $07, $B2

    .byte $A3
    .byte $3F, $B6
off_B561:
    .byte $BE
    .byte $04, $A2
    .byte $0D, $AA

    .byte $BF
    .byte $04, $A3
    .byte $09, $A9
    .byte $08, $A8
    .byte $0D, $AB

    .byte $A0
    .byte $04, $A6
    .byte $09, $AC
    .byte $08, $02
    .byte $0D, $AE

    .byte $A1
    .byte $09, $AD
    .byte $0D, $AF

    .byte $A2
    .byte $09, $B8
    .byte $0D, $BA

    .byte con_FF



off_B583:
    .byte $BD
    .byte $36, $22
    .byte $3A, $0A

    .byte $BE
    .byte $32, $07
    .byte $36, $23
    .byte $3F, $21

    .byte $BF
    .byte $32, $12
    .byte $36, $26
    .byte $3A, $0E

    .byte $A0
    .byte $32, $13
    .byte $36, $02
    .byte $3F, $25

    .byte $A1
    .byte $32, $16
    .byte $36, $32
    .byte $3A, $1A
    .byte $3E, $30
    .byte $02, $75
    .byte $05, $18
    .byte $06, $48

    .byte $A2
    .byte $3A, $1B
    .byte $3E, $31
off_B5B1:
    .byte $BC
    .byte $0D, $08

    .byte $BD
    .byte $3E, $20
    .byte $09, $04
    .byte $0D, $06

    .byte $BE
    .byte $00, $1C
    .byte $04, $09
    .byte $09, $05
    .byte $0D, $02

    .byte $BF
    .byte $09, $10
    .byte $08, $03
    .byte $0D, $02

    .byte $A0
    .byte $00, $03
    .byte $04, $0D
    .byte $09, $11
    .byte $0D, $02

    .byte $A1
    .byte $09, $14
    .byte $0D, $02

    .byte $A2
    .byte $09, $15
    .byte $0D, $17

    .byte $A3
    .byte $09, $40
    .byte $0D, $42
    .byte con_FF



off_B5E4:
    .byte $BD
    .byte $36, $54
    .byte $3A, $56

    .byte $BE
    .byte $32, $5C
    .byte $36, $41
    .byte $3A, $43
    .byte $3F, $49

    .byte $BF
    .byte $32, $37
    .byte $36, $44
    .byte $3A, $46
    .byte $3C, $4C

    .byte $A0
    .byte $32, $62
    .byte $36, $45
    .byte $3A, $47
    .byte $3F, $4D

    .byte $A1
    .byte $36, $50
    .byte $3A, $52
    .byte $3E, $30
    .byte $02, $55
    .byte $05, $18
    .byte $06, $48

    .byte $A2
    .byte $3A, $53
    .byte $3E, $59
    .byte $02, $31

    .byte con_jmp
    .word off_B5B1



off_B61B:
    .byte $BD
    .byte $36, $4B
    .byte $3A, $61

    .byte $BE
    .byte $32, $5C
    .byte $36, $4E
    .byte $3A, $64
    .byte $3F, $5E

    .byte $BF
    .byte $32, $33
    .byte $36, $02
    .byte $3A, $65
    .byte $3C, $24

    .byte $A0
    .byte $32, $36
    .byte $36, $5A
    .byte $3A, $70
    .byte $3F, $74

    .byte $A1
    .byte $36, $5B
    .byte $3A, $71
    .byte $3E, $30
    .byte $02, $75
    .byte $05, $18
    .byte $06, $48

    .byte $A2
    .byte $3E, $31

    .byte con_jmp
    .word off_B5B1



off_B64E:
    .byte $BE
    .byte $07, $8F
    .byte $04, $5A

    .byte $BF
    .byte $07, $9A
    .byte $04, $5B

    .byte $A0
    .byte $07, $9B
    .byte $04, $5E
off_B65D:
    .byte $BD
    .byte $0D, $55

    .byte $BE
    .byte $36, $47
    .byte $09, $70
    .byte $0D, $72

    .byte $BF
    .byte $36, $84
    .byte $08, $71
    .byte $09, $4A
    .byte $0D, $73

    .byte $A0
    .byte $36, $82
    .byte $08, $74
    .byte $0D, $76

    .byte $A1
    .byte $36, $83
    .byte $3E, $57
    .byte $00, $5D
    .byte $04, $5F
    .byte $09, $75
    .byte $CC, $00, $5B
    .byte $0D, $77

    .byte $A2
    .byte $36, $78
    .byte $3A, $7A
    .byte $3E, $79
    .byte $00, $7B
    .byte $09, $7C
    .byte $0D, $7E

    .byte $A3
    .byte $09, $7D
    .byte $0D, $7F

    .byte con_FF



off_B69A:
    .byte $BE
    .byte $09, $A8
    .byte $0D, $AA

    .byte $BF
    .byte $09, $A9
    .byte $0A, $90
    .byte $0D, $AB

    .byte $A0
    .byte $3A, $8C
    .byte $08, $AC
    .byte $0F, $AE

    .byte $A1
    .byte $0B, $AD
    .byte $0F, $AF

    .byte $A2
    .byte $02, $B0
    .byte $06, $B2
    .byte $09, $B8
    .byte $0A, $93
    .byte $0D, $BA

    .byte $A3
    .byte $3E, $9B
    .byte $02, $B1
    .byte $09, $B9
    .byte $0D, $BB

    .byte $A4
    .byte $0D, $7F
off_B6C9:
    .byte $BE
    .byte $36, $82
    .byte $3A, $88
    .byte $3E, $8A
    .byte $02, $A0

    .byte $BF
    .byte $32, $81
    .byte $36, $83
    .byte $3A, $89
    .byte $06, $A3

    .byte $A0
    .byte $32, $84
    .byte $36, $02
    .byte $00, $A4

    .byte $A1
    .byte $32, $85
    .byte $36, $02
    .byte $3A, $8D
    .byte $04, $A7

    .byte $A2
    .byte $36, $92
    .byte $3A, $02
    .byte $3E, $9A

    .byte $A3
    .byte $3A, $99

    .byte con_FF



off_B6F6:
    .byte $BE
    .byte $09, $81
    .byte $0D, $BE

    .byte $BF
    .byte $09, $BD
    .byte $0D, $BF

    .byte $A0
    .byte $3A, $B4
    .byte $08, $C0
    .byte $0D, $C2

    .byte $A1
    .byte $0B, $C1
    .byte $0D, $C3

    .byte $A2
    .byte $3D, $FD
    .byte $02, $B5
    .byte $06, $B7
    .byte $09, $C4
    .byte $0D, $C6

    .byte $A3
    .byte $3E, $B1
    .byte $09, $C5
    .byte $0D, $C7

    .byte $A4
    .byte $0D, $7F

    .byte con_jmp
    .word off_B6C9



off_B724:
    .byte $BE
    .byte $36, $82
    .byte $3A, $88
    .byte $3E, $CA
    .byte $06, $A0

    .byte $BF
    .byte $32, $81
    .byte $36, $83
    .byte $3A, $89
    .byte $3F, $8B
    .byte $06, $CB

    .byte $A0
    .byte $32, $84
    .byte $36, $02
    .byte $3A, $8C
    .byte $3C, $8E
    .byte $00, $A4

    .byte $A1
    .byte $32, $85
    .byte $36, $02
    .byte $3A, $8D
    .byte $3F, $8F
    .byte $04, $A7

    .byte $A2
    .byte $36, $92
    .byte $3A, $02
    .byte $06, $02

    .byte $A3
    .byte $3A, $99
    .byte $3E, $CD
    .byte $02, $CF
    .byte $06, $DC

    .byte con_FF



off_B75F:
    .byte $BE
    .byte $38, $B8

    .byte $BF
    .byte $3C, $BB
    .byte $00, $C1

    .byte $A0
    .byte $38, $BC
off_B76A:
    .byte $BC
    .byte $08, $C8
    .byte $0C, $CA

    .byte $BD
    .byte $36, $A7
    .byte $3A, $AD
    .byte $3E, $AF

    .byte $BE
    .byte $32, $B0
    .byte $36, $B2
    .byte $3F, $BA
    .byte $00, $C0
    .byte $04, $C2

    .byte $BF
    .byte $32, $B1
    .byte $37, $01
    .byte $38, $B9
    .byte $04, $C3

    .byte $A0
    .byte $32, $B4
    .byte $37, $01
    .byte $3F, $BE
    .byte $00, $C4
    .byte $04, $C6

    .byte $A1
    .byte $33, $B5
    .byte $36, $B7
    .byte $38, $BD
    .byte $3C, $BF
    .byte $00, $C5

    .byte $A2
    .byte $3B, $B3
    .byte $3F, $B3
    .byte $03, $B6
    .byte $05, $D8

    .byte $A3
    .byte $08, $D1
    .byte $0C, $D3
    .byte con_FF



off_B7AF:
    .byte $BE
    .byte $38, $D4

    .byte $BF
    .byte $3C, $D6
    .byte $03, $D7

    .byte $A0
    .byte $38, $D5

    .byte con_jmp
    .word off_B76A



off_B7BD:
    .byte $BD
    .byte $09, $C9
    .byte $0D, $CB

    .byte $BE
    .byte $09, $CC
    .byte $0F, $01

    .byte $BF
    .byte $0B, $CD
    .byte $0F, $01

    .byte $A0
    .byte $0B, $CE
    .byte $0F, $01

    .byte $A1
    .byte $05, $C7
    .byte $09, $CF
    .byte $0F, $01

    .byte $A2
    .byte $09, $D0
    .byte $0F, $D2

    .byte con_rts



off_B7DE:
    .byte $BD
    .byte $0A, $D9
    .byte $0E, $DC

    .byte $BE
    .byte $0A, $DA
    .byte $0D, $02

    .byte $BF
    .byte $09, $DB
    .byte $0D, $02

    .byte $A0
    .byte $09, $DE
    .byte $0D, $02

    .byte $A1
    .byte $06, $C7
    .byte $0A, $DF
    .byte $0D, $02

    .byte $A2
    .byte $0A, $D0
    .byte $0D, $DD
    .byte con_rts



off_B7FF:
    .byte $BD
    .byte $9F, $C0
    .byte $3B, $82

    .byte $BE
    .byte $3B, $88
    .byte $3C, $8A

    .byte $BF
    .byte $33, $81
    .byte $37, $83
    .byte $3B, $89
    .byte $00, $A1
    .byte $04, $A3
    .byte $09, $A9

    .byte $A0
    .byte $33, $84
    .byte $37, $86
    .byte $3B, $8C
    .byte $3C, $8E
    .byte $0A, $AC

    .byte $A1
    .byte $33, $85
    .byte $37, $3C
    .byte $3B, $8D
    .byte $00, $A5
    .byte $04, $A7
    .byte $0A, $AD

    .byte $A2
    .byte $37, $92
    .byte $3B, $98
    .byte $3C, $9A
    .byte $00, $B0
off_B837:
    .byte $05, $B2
off_B839:
    .byte $09, $B8
    .byte $0D, $3C

    .byte $BD
    .byte $09, $A0
    .byte $0D, $A2

    .byte $BE
    .byte $09, $A8
    .byte $0D, $AA

    .byte $BF
    .byte $0D, $3C

    .byte $A0
    .byte $0D, $3C

    .byte $A1
    .byte $0D, $3C

    .byte $A3
    .byte $09, $AF
    .byte $0D, $AB

    .byte $A4
    .byte $09, $BA
    .byte $0D, $AE

    .byte con_FF



off_B85B:
    .byte $BE
    .byte $36, $B9
    .byte $3A, $BB

    .byte $BF
    .byte $32, $81
    .byte $36, $91
    .byte $00, $9B
    .byte $04, $B1
    .byte $09, $B3

    .byte $A0
    .byte $32, $84
    .byte $36, $94
    .byte $3A, $96
    .byte $04, $B4
    .byte $09, $B6

    .byte $A1
    .byte $32, $90
    .byte $36, $3C
    .byte $00, $A5
    .byte $04, $A7
    .byte $09, $B7

    .byte $A2
    .byte $36, $BC
    .byte $3A, $95
    .byte $3C, $9F
    .byte $02, $B5

    .byte con_jmp
    .word off_B837



off_B88D:
    .byte $BC
    .byte $09, $78
    .byte $0D, $7A

    .byte $BD
    .byte $36, $02
    .byte $3A, $14
    .byte $09, $79
    .byte $0D, $7B

    .byte $BE
    .byte $32, $60
    .byte $36, $62
    .byte $00, $70
    .byte $07, $72
    .byte $09, $5A
    .byte $0D, $01

    .byte $BF
    .byte $32, $61
    .byte $36, $63
    .byte $04, $73
    .byte $0B, $5B
    .byte $0D, $01

    .byte $A0
    .byte $32, $64
    .byte $36, $66
    .byte $00, $74
    .byte $04, $76
    .byte $0B, $5E
    .byte $0D, $01

    .byte $A1
    .byte $32, $65
    .byte $37, $67
    .byte $3A, $6D
    .byte $3C, $34
    .byte $00, $75
    .byte $05, $77
    .byte $09, $5F
    .byte $0D, $01

    .byte $A2
    .byte $09, $7C
    .byte $0D, $7E

    .byte $A3
    .byte $09, $7D
    .byte $0D, $7F

    .byte con_FF



off_B8DC:
    .byte $BD
    .byte $36, $02
    .byte $3A, $14

    .byte $BE
    .byte $32, $04
    .byte $36, $03

    .byte $BF
    .byte $32, $05
    .byte $36, $06
    .byte $04, $31
    .byte $05, $33

    .byte $A0
    .byte $32, $10
    .byte $36, $07
    .byte $04, $22
    .byte $05, $28

    .byte $A1
    .byte $32, $11
    .byte $37, $12
    .byte $3A, $0D
off_B8FF:
    .byte $05, $29
    .byte $09, $2B
    .byte $0D, $3C

    .byte $BC
    .byte $09, $2C
    .byte $0D, $3A

    .byte $BD
    .byte $09, $2D
    .byte $0D, $3B

    .byte $BE
    .byte $05, $32
    .byte $09, $38
    .byte $0D, $36

    .byte $BF
    .byte $09, $39
    .byte $0D, $37

    .byte $A0
    .byte $09, $2A
    .byte $0D, $3C

    .byte $A2
    .byte $09, $2E
    .byte $0D, $3D

    .byte $A3
    .byte $09, $2F
    .byte $0D, $3E

    .byte con_FF



off_B947:
    .byte $BE
    .byte $3A, $0A
    .byte $3E, $04
    .byte $02, $06
    .byte $06, $0C
    .byte $0A, $0E

    .byte $BF
    .byte $36, $08
    .byte $3A, $0B
    .byte $02, $07
    .byte $03, $30
    .byte $06, $0D
    .byte $0A, $0F

    .byte $A0
    .byte $36, $09
    .byte $3A, $02
    .byte $02, $12
    .byte $0A, $1A

    .byte $A1
    .byte $36, $15
    .byte $3A, $02
    .byte $06, $19
    .byte $0A, $1B

    .byte $A2
    .byte $36, $28
    .byte $3A, $2A
    .byte $3E, $14
    .byte $02, $16
    .byte $06, $1C
    .byte $0A, $1E
    .byte $09, $2F

    .byte $A3
    .byte $02, $17
    .byte $06, $1D
    .byte $0A, $1F
off_B987:
    .byte $BD
    .byte $0D, $22

    .byte $BE
    .byte $0D, $23

    .byte $BF
    .byte $0D, $20

    .byte $A0
    .byte $0C, $21

    .byte $A1
    .byte $0C, $24

    .byte $A2
    .byte $0D, $25

    .byte $A3
    .byte $0D, $26

    .byte $A4
    .byte $0D, $27

    .byte con_FF



off_B9A0:
    .byte $BE
    .byte $36, $38
    .byte $3A, $3A
    .byte $3E, $52

    .byte $BF
    .byte $36, $39

    .byte con_rts



off_B9AB:
    .byte $3A, $3B
    .byte $3E, $40
    .byte $3F, $02
    .byte $02, $42
    .byte $03, $5D

    .byte $A0
    .byte $36, $3C
    .byte $3A, $3E
    .byte $3E, $41
    .byte $02, $43

    .byte $A1
    .byte $36, $3D
    .byte $3A, $3F
    .byte $3E, $44
    .byte $3F, $02
    .byte $02, $46
    .byte $03, $02

    .byte $A2
    .byte $36, $34
    .byte $3A, $36
    .byte $3E, $45
off_B9D2:
    .byte $BF
    .byte $06, $48
    .byte $0A, $4A

    .byte $A0
    .byte $32, $32
    .byte $07, $02
    .byte $0A, $4B

    .byte $A1
    .byte $32, $33
    .byte $06, $4C
    .byte $0A, $4E

    .byte $A2
    .byte $02, $47
    .byte $06, $4D
    .byte $0A, $4F
    .byte $09, $2F

    .byte $A3
    .byte $0A, $33

    .byte con_jmp
    .word off_B987



off_B9F4:
    .byte $3A, $6C
    .byte $3F, $03
    .byte $02, $62
    .byte $03, $30
    .byte $06, $68
    .byte $0A, $6A

    .byte $A0
    .byte $36, $58
    .byte $3A, $6F
    .byte $02, $43

    .byte $A1
    .byte $36, $59
    .byte $3A, $7A
    .byte $3F, $03
    .byte $02, $66
    .byte $03, $31
    .byte $06, $03
    .byte $0A, $6E

    .byte $A2
    .byte $36, $5C
    .byte $3A, $63
    .byte $3E, $65
    .byte $02, $67
    .byte $06, $6D
    .byte $0A, $4F
    .byte $09, $2F

    .byte $A3
    .byte $3A, $5F
    .byte $3E, $70
    .byte $02, $72
    .byte $0A, $33

    .byte con_jmp
    .word off_B987



off_BA31:
    .byte $BD
    .byte $0D, $55

    .byte $BE
    .byte $36, $47
    .byte $09, $70
    .byte $0D, $72

    .byte $BF
    .byte $36, $84
    .byte $09, $4A
    .byte $0D, $73

    .byte $A0
    .byte $36, $82
    .byte $08, $74
    .byte $0D, $76

    .byte $A1
    .byte $36, $83
    .byte $3E, $57
    .byte $00, $5D
    .byte $04, $5F
    .byte $09, $75
    .byte $CC, $00, $5B
    .byte $0D, $77

    .byte $A2
    .byte $36, $78
    .byte $3A, $7A
    .byte $3E, $79
    .byte $00, $7B
    .byte $09, $7C
    .byte $0D, $7E

    .byte $A3
    .byte $09, $7D
    .byte $0D, $7F

    .byte con_FF



off_BA6C:
    .byte $3A, $6C
    .byte $3F, $03
    .byte $02, $62
    .byte $43, $31
    .byte $06, $68
    .byte $0A, $6A

    .byte $A0
    .byte $36, $58
    .byte $3A, $6F
    .byte $02, $43

    .byte $A1
    .byte $36, $59
    .byte $3A, $7A
    .byte $3F, $03
    .byte $02, $66
    .byte $43, $30
    .byte $06, $03
    .byte $0A, $6E

    .byte $A2
    .byte $36, $5C
    .byte $3A, $63
    .byte $3E, $65
    .byte $02, $67
    .byte $06, $6D
    .byte $0A, $4F
    .byte $09, $2F

    .byte $A3
    .byte $3A, $5F
    .byte $3E, $70
    .byte $02, $72
    .byte $0A, $33

    .byte con_jmp
    .word off_B987



off_BAA9:
    .byte $BC
    .byte $0C, $08

    .byte $BD
    .byte $36, $E0
    .byte $3A, $E2
    .byte $3E, $20
    .byte $08, $04
    .byte $0C, $06

    .byte $BE
    .byte $32, $E1
    .byte $36, $E3
    .byte $3A, $E9
    .byte $3F, $EB
    .byte $3D, $02
    .byte $01, $D9
    .byte $05, $DB
    .byte $08, $05
    .byte $0C, $02

    .byte $BF
    .byte $32, $E4
    .byte $36, $02
    .byte $3A, $EC
    .byte $3F, $EE
    .byte $05, $DE
    .byte $0B, $F4
    .byte $0C, $02

    .byte $A0
    .byte $32, $E5
    .byte $36, $E6
    .byte $3A, $ED
    .byte $3F, $EF
    .byte $3D, $02
    .byte $01, $03
    .byte $05, $DF
    .byte $0B, $F5
    .byte $0F, $02

    .byte $A1
    .byte $36, $E7
    .byte $3A, $F8
    .byte $3E, $FA
    .byte $02, $F0
    .byte $04, $F2
    .byte $06, $48
    .byte $08, $14
    .byte $0C, $02

    .byte $A2
    .byte $3A, $F9
    .byte $3E, $FB
    .byte $02, $F1
    .byte $08, $15
    .byte $0C, $17

    .byte $A3
    .byte $08, $40
    .byte $0C, $42

    .byte con_FF
