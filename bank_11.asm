.segment "BANK_11"
.include "copy_bank_ram.inc"
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

; поинтер находится в 0x0010DF, начало таблицы в банке 10
    .word off_A0BE_6D_цубаса_с_мячом_серый
    .word off_A0C6_6E_цубаса_появляется_и_бежит_с_мячом
    .word off_A0F0_6F_пьер_появляется_и_бежит_с_мячом
    .word off_A11A_70_цубаса_замах_по_мячу_белый
    .word off_A126_71_анимация_замаха_по_мячу_цубаса_драйв_удар
    .word off_A14C_72_джаиро_вид_сверху
    .word off_A158_73_нога_перед_ударом_по_мячу
    .word off_A165_74_нога_и_мяч_во_время_удара
    .word off_A186_75
    .word off_A18F_76
    .word off_A199_77
    .word off_A1A2_78
    .word off_A1AB_79_лицо_шнайдера
    .word off_A1B2_7A_лицо_пьера_слева
    .word off_A1BA_7B_лицо_наполеона_справа
    .word off_A1C1_7C
    .word off_A1CA_7D_вакабаяши_ловит_мяч
    .word off_A1FC_7E_гертис_ловит_мяч
    .word off_A21C_7F_меон_ловит_мяч
    .word off_A23E_80_черный_голкипер_пропускает_мяч
    .word off_A24A_81_громкоговоритель_медленно_движется_влево
    .word off_A25F_82_хюга_подкатом_забирает_мяч
    .word off_A29E_83_удар_пьера_и_наполеона
    .word off_A2CB_84_удар_мисаки_и_цубасы
    .word off_A2F8_85_мяч_в_сетке
    .word off_A305_86_мяч_рвет_сетку
    .word off_A318_87_мяч_подброшенный_джаиро_вид_сверху
    .word off_A366_88
    .word off_A36F_89_крученый_мяч_опускается_поднимается_для_удара
    .word off_A3B8_8A_письмо_в_руке
    .word off_A3C5_8B_арбитр_свисток_рука
    .word off_A3CC_8C_меон_в_воротах
    .word off_A3D3_8D_заяц
    .word off_A3DA_8E_ХЗ_какой_то_желтый_шар_вверху
    .word off_A3E1_8F_часть_сетки_кубка
    .word off_A3E8_90_ХЗ_белый_прямоугольник
    .word off_A3EF_91
    .word off_A3F6_92_падающая_звезда_на_небе
    .word off_A40C_93_анимация_замаха_по_мячу_нога_джаиро_история_роберто
    .word off_A434_94_полет_мяча_справа_налево
    .word off_A449_95_флаг_аргентины
    .word off_A456_96_флаг_франции
    .word off_A463_97_флаг_германии
    .word off_A470_98_флаг_бразилии_на_месте
    .word off_A477_99_флаг_бразилии_в_движении
    .word off_A484_9A_мяч_опускается_без_кручения
    .word off_A490_9B_мелкие_игроки_в_воображении_цубасы
    .word off_A497_9C_цубаса_и_санае_со_спины_в_парке_черные
    .word off_A4AA_9D_ишизаки_и_йоко_прячутся_за_стеной
    .word off_A4B7_9E_шнайдер_или_джаиро_замах_по_мячу
    .word off_A4C3_9F_анимация_замаха_по_мячу_нога_белая
    .word off_A4EB_A0_полет_мяча_справа_налево_и_остановка
    .word off_A4F7_A1_джаиро_бежит_с_мячом
    .word off_A50E_A2_медленный_полет_мяча_справа_налево
    .word off_A52A_A3_рукопожатие
    .word off_A546_A4_лицо_цубасы
    .word off_A54D_A5_мяч_опускается_без_кручения_джаиро_история_роберто
    .word off_A559_A6_тройной_полет_мяча_справа_налево
    .word off_A570_A7_мяч_застрял_в_сетке_и_опускается
    .word off_A5D5_A8_цубаса_стоит_после_удара_циклоном
    .word off_A5ED_A9_самолет_летит_справа_налево
    .word off_A602_AA
    .word off_A620_AB_цубаса_со_спины_в_полный_рост_стоит
    .word off_A627_AC
    .word off_A637_AD_глаза_цубасы_злой_крупным_планом_слева
    .word off_A63E_AE_глаза_цубасы_в_шоке_крупным_планом
    .word off_A645_AF
    .word off_A650_B0
    .word off_A65C_B1_тикание_часов_на_табло_1
    .word off_A668_B2_тикание_часов_на_табло_2
    .word off_A674_B3_часы_на_табло_меняются_на_12
    .word off_A681_B4_самолет_на_месте_опускается
    .word off_A695_B5_цубаса_со_спины_в_полный_рост_движется_влево
    .word off_A6A3_B6_ХЗ_черный_прямоугольник
    .word off_A6AA_B7_глаза_и_рот_санае_крупным_планом_разговор
    .word off_A6B4_B8_глаза_и_рот_санае_крупным_планом_в_шоке
    .word off_A6BB_B9_глаза_цубасы_злой_крупным_планом_справа
    .word off_A6C2_BA_ишизаки_барабаны_обезьянка
    .word off_A6DD_BB_логотип_японский_быстрое_движение_влево_потом_вправо
    .word off_A6F3_BC_заяц
    .word off_A6FA_BD
    .word off_A701_BE_мяч_подброшенный_джаиро_опускается_вид_сверху
    .word off_A73E_BF_джаиро_замахивается_и_опускается
    .word off_A750_C0
    .word off_A757_C1
    .word off_A765_C2_джек_выходит_и_поздравляет
    .word off_A784_C3_джек_уходит_с_поля
    .word off_A79E_C4_джек_улетает_и_появляется_и_садится_на_голову
    .word off_A7D8_C5_объект_для_скрытия_прыгающего_джека
    .word off_A7ED_C6_полоска_для_логотипа_движется_вправо
    .word off_A7FA_C7_мерцание_звездой_на_полоске_логотипа
    .word off_A811_C8
    .word off_A818_C9
    .word off_A81F_CA_движение_надписи_VOL_II_влево_вверху
    .word off_A82B_CB_движение_надписи_VOL_II_влево_внизу



off_A0BE_6D_цубаса_с_мячом_серый:
    .byte $3D

    .byte con_F5_зеркало

    .byte con_координаты_Y_X
    .byte $1E
    .byte $36

    .dbyt off_A837 - $2000

    .byte con_выход



off_A0C6_6E_цубаса_появляется_и_бежит_с_мячом:
    .byte $00

    .byte con_координаты_Y_X
    .byte $1E
    .byte $F6

    .byte con_физика
    .byte $05
    .byte $00
    .byte $00

    .byte con_повторы + $02

    .byte con_F5_зеркало

    .dbyt off_A837 - $2000
    .byte $01

    .dbyt off_A86F - $2000
    .byte $01

    .dbyt off_A8BA - $2000
    .byte $01

    .dbyt off_A908 - $2000
    .byte $01

    .byte con_повторить

@бесконечный_цикл:
    .byte con_F5_зеркало

    .dbyt off_A837 - $2000

    .byte con_физика
    .byte $00
    .byte $00
    .byte $02

    .byte $03

    .dbyt off_A86F - $2000
    .byte $03

    .dbyt off_A8BA - $2000
    .byte $03

    .dbyt off_A908 - $2000
    .byte $03

    .dbyt @бесконечный_цикл



off_A0F0_6F_пьер_появляется_и_бежит_с_мячом:
    .byte $2D

    .byte con_координаты_Y_X
    .byte $1E
    .byte $F6

    .byte con_физика
    .byte $05
    .byte $00
    .byte $00

    .byte con_повторы + $02

    .byte con_F5_зеркало

    .dbyt off_A852 - $2000
    .byte $01

    .dbyt off_A893 - $2000
    .byte $01

    .dbyt off_A8DF - $2000
    .byte $01

    .dbyt off_A92F - $2000
    .byte $01

    .byte con_повторить

@бесконечный_цикл:
    .byte con_F5_зеркало

    .dbyt off_A852 - $2000

    .byte con_физика
    .byte $00
    .byte $00
    .byte $02

    .byte $03

    .dbyt off_A893 - $2000
    .byte $03

    .dbyt off_A8DF - $2000
    .byte $03

    .dbyt off_A92F - $2000
    .byte $03

    .dbyt @бесконечный_цикл



off_A11A_70_цубаса_замах_по_мячу_белый:
    .byte $3C

    .byte con_координаты_Y_X
    .byte $AE
    .byte $44

    .dbyt off_A959 - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $50

    .byte con_выход



off_A126_71_анимация_замаха_по_мячу_цубаса_драйв_удар:
    .byte $3C

    .byte con_координаты_Y_X
    .byte $AB
    .byte $44

    .dbyt off_A973 - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $50

    .byte con_повторы + $0A

    .byte con_физика
    .byte $2E
    .byte $00
    .byte $00

    .dbyt off_A973 - $2000
    .byte $01

    .byte con_физика
    .byte $E2
    .byte $00
    .byte $00

    .dbyt off_A973 - $2000
    .byte $01

    .byte con_повторить

    .byte con_физика
    .byte $79
    .byte $00
    .byte $00

    .byte $03

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .dbyt off_A973 - $2000

    .byte con_выход



off_A14C_72_джаиро_вид_сверху:
    .byte $14

    .byte con_координаты_Y_X
    .byte $1E
    .byte $4E

    .dbyt off_B06B - $2000

    .byte con_физика
    .byte $2E
    .byte $00
    .byte $00

    .byte $07

    .byte con_выход



off_A158_73_нога_перед_ударом_по_мячу:
    .byte $37

    .byte con_координаты_Y_X
    .byte $30
    .byte $54

    .dbyt off_AA19 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $30
    .byte $BE

    .dbyt off_AA19 - $2000

    .byte con_выход



off_A165_74_нога_и_мяч_во_время_удара:
    .byte $37

    .byte con_координаты_Y_X
    .byte $30
    .byte $44

    .dbyt off_A9DD - $2000
    .byte $01

    .byte con_повторы + $09

    .byte con_координаты_Y_X
    .byte $30
    .byte $3C

    .dbyt off_AA3E - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $30
    .byte $3B

    .dbyt off_AA3E - $2000
    .byte $01

    .byte con_повторить

    .byte con_координаты_Y_X
    .byte $30
    .byte $20

    .dbyt off_AA80 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $30
    .byte $A0

    .dbyt off_AA80 - $2000

    .byte con_выход



off_A186_75:
    .byte $01

    .byte con_координаты_Y_X
    .byte $30
    .byte $BC

    .dbyt off_AA8C - $2000

    .byte con_F9

    .byte $1E

    .byte con_выход



off_A18F_76:
    .byte $01

    .byte con_координаты_Y_X
    .byte $30
    .byte $C0

    .byte con_F5_зеркало

    .dbyt off_AAE7 - $2000

    .byte con_F9

    .byte $1E

    .byte con_выход



off_A199_77:
    .byte $06

    .byte con_координаты_Y_X
    .byte $30
    .byte $BC

    .dbyt off_AB4A - $2000

    .byte con_F9

    .byte $1E

    .byte con_выход



off_A1A2_78:
    .byte $22

    .byte con_координаты_Y_X
    .byte $30
    .byte $BC

    .dbyt off_ABA8 - $2000

    .byte con_F9

    .byte $1E

    .byte con_выход



off_A1AB_79_лицо_шнайдера:
    .byte $30

    .byte con_координаты_Y_X
    .byte $30
    .byte $3C

    .dbyt off_ABF9 - $2000

    .byte con_выход



off_A1B2_7A_лицо_пьера_слева:
    .byte $2E

    .byte con_координаты_Y_X
    .byte $30
    .byte $30

    .byte con_F5_зеркало

    .dbyt off_AC5A - $2000

    .byte con_выход



off_A1BA_7B_лицо_наполеона_справа:
    .byte $2F

    .byte con_координаты_Y_X
    .byte $30
    .byte $4C

    .dbyt off_ACBD - $2000

    .byte con_выход



off_A1C1_7C:
    .byte $08

    .byte con_координаты_Y_X
    .byte $30
    .byte $C4

    .dbyt off_AD14 - $2000

    .byte con_F9

    .byte $1E

    .byte con_выход



off_A1CA_7D_вакабаяши_ловит_мяч:
    .byte $07

    .byte con_координаты_Y_X
    .byte $06
    .byte $4E

    .byte con_повторы + $0C

    .byte con_физика
    .byte $2F
    .byte $00
    .byte $00

    .dbyt off_AD72 - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_AD72 - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторы + $06

    .byte con_физика
    .byte $00
    .byte $01
    .byte $FF

    .dbyt off_ADC2 - $2000
    .byte $01

    .dbyt off_B258 - $2000
    .byte $01

    .dbyt off_B297 - $2000
    .byte $01

    .dbyt off_B2DA - $2000
    .byte $01

    .byte con_повторить

@бесконечный_цикл:
    .byte con_физика
    .byte $00
    .byte $01
    .byte $FF

    .dbyt off_AD9A - $2000
    .byte $01

    .dbyt off_AD9A - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A1FC_7E_гертис_ловит_мяч:
    .byte $31

    .byte con_координаты_Y_X
    .byte $D6
    .byte $56

    .dbyt off_AD7C - $2000

    .byte con_физика
    .byte $4E
    .byte $00
    .byte $00

    .byte $12

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_повторы + $06

    .dbyt off_ADCC - $2000
    .byte $01

    .dbyt off_B262 - $2000
    .byte $01

    .dbyt off_B2A1 - $2000
    .byte $01

    .dbyt off_B2E4 - $2000
    .byte $01

    .byte con_повторить

    .dbyt off_ADA4 - $2000

    .byte con_выход



off_A21C_7F_меон_ловит_мяч:
    .byte $12

    .byte con_повторы + $03

    .byte con_координаты_Y_X
    .byte $06
    .byte $4E

    .dbyt off_AD86 - $2000

    .byte con_физика
    .byte $2E
    .byte $00
    .byte $00

    .byte $0E

    .byte con_повторить

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_повторы + $06

    .dbyt off_B22D - $2000
    .byte $01

    .dbyt off_B26C - $2000
    .byte $01

    .dbyt off_B2AB - $2000
    .byte $01

    .dbyt off_B2EE - $2000
    .byte $01

    .byte con_повторить

    .dbyt off_ADAE - $2000

    .byte con_выход



off_A23E_80_черный_голкипер_пропускает_мяч:
    .byte $38

    .byte con_координаты_Y_X
    .byte $06
    .byte $3A

    .byte con_физика
    .byte $21
    .byte $00
    .byte $00

    .dbyt off_AD90 - $2000
    .byte $0B

    .byte con_выход



off_A24A_81_громкоговоритель_медленно_движется_влево:
    .byte $13

    .byte con_координаты_Y_X
    .byte $24
    .byte $4E

    .byte con_повторы + $0F

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .dbyt off_B6D1 - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B6D1 - $2000
    .byte $01

    .byte con_повторить

    .byte con_выход



off_A25F_82_хюга_подкатом_забирает_мяч:
    .byte $02

    .byte con_повторы + $03

    .byte con_координаты_Y_X
    .byte $0E
    .byte $FE

    .dbyt off_ADF0 - $2000

    .byte con_физика
    .byte $26
    .byte $00
    .byte $00

    .byte $0A

    .byte con_повторить

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_повторы + $06

    .dbyt off_AE12 - $2000

    .byte con_физика
    .byte $E0
    .byte $00
    .byte $00

    .byte $01

    .dbyt off_AE29 - $2000

    .byte con_физика
    .byte $20
    .byte $00
    .byte $00

    .byte $01

    .dbyt off_AE38 - $2000

    .byte con_физика
    .byte $E0
    .byte $00
    .byte $00

    .byte $01

    .dbyt off_AE4C - $2000

    .byte con_физика
    .byte $20
    .byte $00
    .byte $00

    .byte $01

    .byte con_повторить

@бесконечный_цикл:
    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .dbyt off_AE08 - $2000
    .byte $01

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .dbyt off_AE08 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A29E_83_удар_пьера_и_наполеона:
    .byte $2D

@бесконечный_цикл:
    .byte con_координаты_Y_X
    .byte $22
    .byte $38

    .byte con_F6

    .dbyt off_AEA6 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_F5_зеркало

    .dbyt off_AEB6 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $38

    .byte con_F6

    .dbyt off_B31B - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_F5_зеркало

    .dbyt off_B32F - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $38

    .byte con_F6

    .dbyt off_B343 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_F5_зеркало

    .dbyt off_B37C - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A2CB_84_удар_мисаки_и_цубасы:
    .byte $00

@бесконечный_цикл:
    .byte con_координаты_Y_X
    .byte $22
    .byte $38

    .byte con_F6

    .dbyt off_AE9E - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_F5_зеркало

    .dbyt off_AEAE - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $38

    .byte con_F6

    .dbyt off_B311 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_F5_зеркало

    .dbyt off_B325 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $38

    .byte con_F6

    .dbyt off_B339 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $3E

    .byte con_F5_зеркало

    .dbyt off_ADB8 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A2F8_85_мяч_в_сетке:
    .byte $35

    .byte con_координаты_Y_X
    .byte $30
    .byte $3C

@бесконечный_цикл:
    .byte con_F5_зеркало

    .dbyt off_AEBE - $2000
    .byte $01

    .dbyt off_AF1C - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A305_86_мяч_рвет_сетку:
    .byte $35

    .byte con_координаты_Y_X
    .byte $30
    .byte $3C

    .byte con_повторы + $02

    .byte con_F5_зеркало

    .dbyt off_AF1C - $2000
    .byte $01

    .dbyt off_AEBE - $2000
    .byte $01

    .byte con_повторить

    .byte con_координаты_Y_X
    .byte $30
    .byte $3C

    .dbyt off_AF7A - $2000

    .byte con_выход



off_A318_87_мяч_подброшенный_джаиро_вид_сверху:
    .byte $26

    .byte con_координаты_Y_X
    .byte $22
    .byte $C4

    .dbyt off_B063 - $2000

    .byte con_F9

    .byte $11

    .byte con_координаты_Y_X
    .byte $22
    .byte $44

    .dbyt off_B063 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $24
    .byte $42

    .dbyt off_B05B - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $26
    .byte $40

    .dbyt off_B053 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $26
    .byte $3C

    .dbyt off_B044 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $28
    .byte $3A

    .dbyt off_B035 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $28
    .byte $39

    .dbyt off_B026 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $26
    .byte $39

    .dbyt off_B017 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $39

    .dbyt off_AFFF - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $1E
    .byte $39

    .dbyt off_AFE4 - $2000
    .byte $01

@бесконечный_цикл:
    .byte con_координаты_Y_X
    .byte $16
    .byte $39

    .byte con_F6

    .dbyt off_AFC3 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $16
    .byte $3D

    .byte con_F5_зеркало

    .dbyt off_AFC3 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A366_88:
    .byte $26

    .byte con_координаты_Y_X
    .byte $1E
    .byte $CE

    .dbyt off_B06B - $2000

    .byte con_F9

    .byte $14

    .byte con_выход



off_A36F_89_крученый_мяч_опускается_поднимается_для_удара:
    .byte $14

    .byte con_координаты_Y_X
    .byte $EE
    .byte $3C

    .byte con_физика
    .byte $20
    .byte $FE
    .byte $00

    .byte con_повторы + $03

    .byte con_повторы + $0F

    .dbyt off_B07D - $2000
    .byte $01

    .dbyt off_B094 - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_повторы + $04

    .byte con_повторы + $0F

    .dbyt off_B07D - $2000
    .byte $01

    .dbyt off_B094 - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte con_повторы + $0F

    .dbyt off_B07D - $2000
    .byte $01

    .dbyt off_B094 - $2000
    .byte $01

    .byte con_повторить

    .byte con_координаты_Y_X
    .byte $B0
    .byte $30

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte con_повторы + $04

    .byte con_повторы + $0F

    .dbyt off_B07D - $2000
    .byte $01

    .dbyt off_B094 - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторить

@бесконечный_цикл:
    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B07D - $2000
    .byte $01

    .dbyt off_B094 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A3B8_8A_письмо_в_руке:
    .byte $15

    .byte con_координаты_Y_X
    .byte $2A
    .byte $44

    .dbyt off_B0B9 - $2000
    .byte $0F

    .byte con_физика
    .byte $00
    .byte $04
    .byte $FE

    .byte $0F

    .byte con_выход



off_A3C5_8B_арбитр_свисток_рука:
    .byte $24

    .byte con_координаты_Y_X
    .byte $2C
    .byte $44

    .dbyt off_B0F0 - $2000

    .byte con_выход



off_A3CC_8C_меон_в_воротах:
    .byte $12

    .byte con_координаты_Y_X
    .byte $35
    .byte $3E

    .dbyt off_B137 - $2000

    .byte con_выход



off_A3D3_8D_заяц:
    .byte $36

    .byte con_координаты_Y_X
    .byte $30
    .byte $28

    .dbyt off_B15B - $2000

    .byte con_выход



off_A3DA_8E_ХЗ_какой_то_желтый_шар_вверху:
    .byte $24

    .byte con_координаты_Y_X
    .byte $0A
    .byte $36

    .dbyt off_B1CB - $2000

    .byte con_выход



off_A3E1_8F_часть_сетки_кубка:
    .byte $21

    .byte con_координаты_Y_X
    .byte $28
    .byte $50

    .dbyt off_B1DA - $2000

    .byte con_выход



off_A3E8_90_ХЗ_белый_прямоугольник:
    .byte $18

    .byte con_координаты_Y_X
    .byte $1C
    .byte $44

    .dbyt off_B218 - $2000

    .byte con_выход



off_A3EF_91:
    .byte $21

    .byte con_координаты_Y_X
    .byte $1C
    .byte $00

    .dbyt off_B68B - $2000

    .byte con_выход



off_A3F6_92_падающая_звезда_на_небе:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $1F
    .byte $5E

    .byte $20

    .dbyt off_B7B3 - $2000

    .byte con_физика
    .byte $19
    .byte $00
    .byte $F9

    .byte $0B

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .dbyt off_B7B3 - $2000

    .byte con_выход



off_A40C_93_анимация_замаха_по_мячу_нога_джаиро_история_роберто:
    .byte $14

    .byte con_координаты_Y_X
    .byte $9F
    .byte $44

    .dbyt off_A973 - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $64
; таймер замаха джаиро сразу перед ударом
    .byte con_повторы + $09

    .byte con_повторы + $0D

    .byte con_физика
    .byte $1F
    .byte $00
    .byte $00

    .dbyt off_A973 - $2000
    .byte $01

    .byte con_физика
    .byte $F1
    .byte $00
    .byte $00

    .dbyt off_A973 - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_физика
    .byte $79
    .byte $00
    .byte $00

    .byte $03

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .dbyt off_A973 - $2000

    .byte con_выход



off_A434_94_полет_мяча_справа_налево:
    .byte $31

    .byte con_координаты_Y_X
    .byte $06
    .byte $A8

    .dbyt off_ADD6 - $2000

    .byte con_физика
    .byte $29
    .byte $00
    .byte $00

    .byte $12

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .dbyt off_ADD6 - $2000

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_выход



off_A449_95_флаг_аргентины:
    .byte $21

    .byte con_координаты_Y_X
    .byte $30
    .byte $EF

    .dbyt off_B43D - $2000
    .byte $0A

    .byte con_физика
    .byte $07
    .byte $00
    .byte $00

    .byte $0B

    .byte con_выход



off_A456_96_флаг_франции:
    .byte $21

    .byte con_координаты_Y_X
    .byte $30
    .byte $89

    .dbyt off_B237 - $2000
    .byte $0A

    .byte con_физика
    .byte $09
    .byte $00
    .byte $00

    .byte $0B

    .byte con_выход



off_A463_97_флаг_германии:
    .byte $21

    .byte con_координаты_Y_X
    .byte $44
    .byte $3C

    .dbyt off_B276 - $2000
    .byte $0F

    .byte con_физика
    .byte $B0
    .byte $00
    .byte $00

    .byte $04

    .byte con_выход



off_A470_98_флаг_бразилии_на_месте:
    .byte $21

    .byte con_координаты_Y_X
    .byte $34
    .byte $2C

    .dbyt off_B2B5 - $2000

    .byte con_выход



off_A477_99_флаг_бразилии_в_движении:
    .byte $21

    .byte con_координаты_Y_X
    .byte $18
    .byte $3C

    .dbyt off_B2B5 - $2000
    .byte $1E

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $18

    .byte con_выход



off_A484_9A_мяч_опускается_без_кручения:
    .byte $3C

    .byte con_координаты_Y_X
    .byte $AE
    .byte $2E

    .dbyt off_B3AB - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $50

    .byte con_выход



off_A490_9B_мелкие_игроки_в_воображении_цубасы:
    .byte $25

    .byte con_координаты_Y_X
    .byte $38
    .byte $3C

    .dbyt off_B2F8 - $2000

    .byte con_выход



off_A497_9C_цубаса_и_санае_со_спины_в_парке_черные:
    .byte $24

    .byte con_координаты_Y_X
    .byte $30
    .byte $C3

    .dbyt off_B34D - $2000

@бесконечный_цикл:
    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $01

    .dbyt @бесконечный_цикл



off_A4AA_9D_ишизаки_и_йоко_прячутся_за_стеной:
    .byte $18

    .byte con_координаты_Y_X
    .byte $1C
    .byte $38

    .dbyt off_B3BA - $2000
    .byte $28

    .byte con_физика
    .byte $00
    .byte $00
    .byte $01

    .byte $2C

    .byte con_выход



off_A4B7_9E_шнайдер_или_джаиро_замах_по_мячу:
    .byte $3B

    .byte con_координаты_Y_X
    .byte $A2
    .byte $44

    .dbyt off_A959 - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $64

    .byte con_выход



off_A4C3_9F_анимация_замаха_по_мячу_нога_белая:
    .byte $3B

    .byte con_координаты_Y_X
    .byte $9F
    .byte $44

    .dbyt off_A973 - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $64
; таймер удара Шнайдера
    .byte con_повторы + $04

    .byte con_повторы + $0F

    .byte con_физика
    .byte $2E
    .byte $00
    .byte $00

    .dbyt off_A973 - $2000
    .byte $01

    .byte con_физика
    .byte $E2
    .byte $00
    .byte $00

    .dbyt off_A973 - $2000
    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_физика
    .byte $79
    .byte $00
    .byte $00

    .byte $03

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .dbyt off_A973 - $2000

    .byte con_выход



off_A4EB_A0_полет_мяча_справа_налево_и_остановка:
    .byte $38

    .byte con_координаты_Y_X
    .byte $16
    .byte $8E

    .byte con_физика
    .byte $29
    .byte $00
    .byte $07

    .dbyt off_ADD6 - $2000
    .byte $0B

    .byte con_выход



off_A4F7_A1_джаиро_бежит_с_мячом:
    .byte $14

    .byte con_координаты_Y_X
    .byte $1E
    .byte $36

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

@бесконечный_цикл:
    .byte con_F5_зеркало

    .dbyt off_A837 - $2000
    .byte $03

    .dbyt off_A86F - $2000
    .byte $03

    .dbyt off_A8BA - $2000
    .byte $03

    .dbyt off_A908 - $2000
    .byte $03

    .dbyt @бесконечный_цикл



off_A50E_A2_медленный_полет_мяча_справа_налево:
    .byte $07

    .byte con_координаты_Y_X
    .byte $12
    .byte $8E

    .byte con_повторы + $0C

    .byte con_физика
    .byte $29
    .byte $00
    .byte $00

    .dbyt off_ADD6 - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $01

    .byte con_повторить

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .dbyt off_ADD6 - $2000

    .byte con_выход



off_A52A_A3_рукопожатие:
    .byte $15

    .byte con_координаты_Y_X
    .byte $34
    .byte $3C

    .dbyt off_AE5D - $2000

    .byte con_повторы + $05

    .byte con_физика
    .byte $20
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $E0
    .byte $00
    .byte $00

    .byte $01

    .byte con_повторить

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $02

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_выход



off_A546_A4_лицо_цубасы:
    .byte $01

    .byte con_координаты_Y_X
    .byte $30
    .byte $3C

    .dbyt off_AA8C - $2000

    .byte con_выход



off_A54D_A5_мяч_опускается_без_кручения_джаиро_история_роберто:
    .byte $3B

    .byte con_координаты_Y_X
    .byte $A2
    .byte $2E

    .dbyt off_B3AB - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $64

    .byte con_выход



off_A559_A6_тройной_полет_мяча_справа_налево:
    .byte $12

    .byte con_повторы + $03

    .byte con_координаты_Y_X
    .byte $12
    .byte $8E

    .dbyt off_ADD6 - $2000

    .byte con_физика
    .byte $29
    .byte $00
    .byte $00

    .byte $0E

    .byte con_повторить

    .byte con_координаты_Y_X
    .byte $3E
    .byte $BE

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_ADD6 - $2000

    .byte con_выход



off_A570_A7_мяч_застрял_в_сетке_и_опускается:
    .byte $1E

    .byte con_координаты_Y_X
    .byte $1C
    .byte $3C

    .dbyt off_B45E - $2000

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $7F
    .byte $21

    .byte con_физика
    .byte $00
    .byte $04
    .byte $00

    .byte $07

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $02

    .byte con_физика
    .byte $00
    .byte $04
    .byte $00

    .byte $1B

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte $05

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $05

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte $04

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $04

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte $03

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $03

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte $02

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $02

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $2D

    .byte con_повторы + $03

    .byte con_повторы + $0B

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_выход



off_A5D5_A8_цубаса_стоит_после_удара_циклоном:
    .byte $1E

    .byte con_координаты_Y_X
    .byte $2C
    .byte $3C

    .dbyt off_B487 - $2000
    .byte $7F
    .byte $7F
    .byte $12

    .byte con_повторы + $03

    .byte con_повторы + $0B

    .byte con_физика
    .byte $01
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $01

    .byte con_повторить

    .byte con_повторить

    .byte con_выход



off_A5ED_A9_самолет_летит_справа_налево:
    .byte $27

    .byte con_координаты_Y_X
    .byte $2E
    .byte $9E

@бесконечный_цикл:
    .byte con_физика
    .byte $0F
    .byte $FE
    .byte $00

    .dbyt off_B4A6 - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $FE
    .byte $00

    .dbyt off_B4A6 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A602_AA:
    .byte $14

    .byte con_координаты_Y_X
    .byte $9B
    .byte $48
; ???
    .byte $78
    .byte $78

    .dbyt off_A973 - $2000

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $78

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $01

@бесконечный_цикл:
    .byte con_физика
    .byte $2E
    .byte $00
    .byte $00

    .byte $01

    .byte con_физика
    .byte $E2
    .byte $00
    .byte $00

    .byte $01

    .dbyt @бесконечный_цикл



off_A620_AB_цубаса_со_спины_в_полный_рост_стоит:
    .byte $32

    .byte con_координаты_Y_X
    .byte $30
    .byte $4E

    .dbyt off_B4F8 - $2000

    .byte con_выход



off_A627_AC:
    .byte $32

    .byte con_координаты_Y_X
    .byte $30
    .byte $92

    .dbyt off_B4F8 - $2000
    .byte $7F
    .byte $7F
    .byte $7F
    .byte $3D

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $44

    .byte con_выход



off_A637_AD_глаза_цубасы_злой_крупным_планом_слева:
    .byte $3A

    .byte con_координаты_Y_X
    .byte $28
    .byte $3C

    .dbyt off_B57C - $2000

    .byte con_выход



off_A63E_AE_глаза_цубасы_в_шоке_крупным_планом:
    .byte $3A

    .byte con_координаты_Y_X
    .byte $28
    .byte $3C

    .dbyt off_B547 - $2000

    .byte con_выход



off_A645_AF:
    .byte $3A

    .byte con_координаты_Y_X
    .byte $28
    .byte $CC

    .dbyt off_B57C - $2000

    .byte con_F9

    .byte $7F
    .byte $7F
    .byte $7F

    .byte con_выход



off_A650_B0:
    .byte $3A

    .byte con_координаты_Y_X
    .byte $48
    .byte $A6

    .dbyt off_B5AC - $2000

    .byte con_физика
    .byte $F0
    .byte $00
    .byte $FD

    .byte $14

    .byte con_выход



off_A65C_B1_тикание_часов_на_табло_1:
    .byte $15

    .byte con_координаты_Y_X
    .byte $30
    .byte $28

@бесконечный_цикл:
    .dbyt off_B5DC - $2000
    .byte $0F

    .dbyt off_B5E3 - $2000
    .byte $0F

    .dbyt @бесконечный_цикл



off_A668_B2_тикание_часов_на_табло_2:
    .byte $15

    .byte con_координаты_Y_X
    .byte $30
    .byte $28

@бесконечный_цикл:
    .dbyt off_B5EA - $2000
    .byte $0F

    .dbyt off_B5F4 - $2000
    .byte $0F

    .dbyt @бесконечный_цикл



off_A674_B3_часы_на_табло_меняются_на_12:
    .byte $15

    .byte con_координаты_Y_X
    .byte $30
    .byte $28

    .dbyt off_B5EA - $2000
    .byte $0F

    .dbyt off_B5F4 - $2000
    .byte $0F

    .dbyt off_B5FE - $2000

    .byte con_выход



off_A681_B4_самолет_на_месте_опускается:
    .byte $27

    .byte con_координаты_Y_X
    .byte $F3
    .byte $3E

@бесконечный_цикл:
    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .dbyt off_B4A6 - $2000
    .byte $01

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B4A6 - $2000
    .byte $01

    .dbyt @бесконечный_цикл



off_A695_B5_цубаса_со_спины_в_полный_рост_движется_влево:
    .byte $32

    .byte con_координаты_Y_X
    .byte $30
    .byte $92

    .dbyt off_B4F8 - $2000
    .byte $7F
    .byte $3E

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte $44

    .byte con_выход



off_A6A3_B6_ХЗ_черный_прямоугольник:
    .byte $15

    .byte con_координаты_Y_X
    .byte $30
    .byte $50

    .dbyt off_B4E6 - $2000

    .byte con_выход



off_A6AA_B7_глаза_и_рот_санае_крупным_планом_разговор:
    .byte $35

    .byte con_координаты_Y_X
    .byte $3C
    .byte $44

    .byte con_разговор
    .word off_B62B
    .word off_B6A0



off_A6B4_B8_глаза_и_рот_санае_крупным_планом_в_шоке:
    .byte $35

    .byte con_координаты_Y_X
    .byte $3C
    .byte $44

    .dbyt off_B658 - $2000

    .byte con_выход



off_A6BB_B9_глаза_цубасы_злой_крупным_планом_справа:
    .byte $3A

    .byte con_координаты_Y_X
    .byte $28
    .byte $4C

    .dbyt off_B57C - $2000

    .byte con_выход



off_A6C2_BA_ишизаки_барабаны_обезьянка:
    .byte $37

    .byte con_повторы + $04

    .byte con_координаты_Y_X
    .byte $2C
    .byte $3C

    .dbyt off_B40E - $2000
    .byte $04

    .byte con_координаты_Y_X
    .byte $2B
    .byte $3C

    .dbyt off_A98F - $2000
    .byte $04

    .byte con_повторить

    .byte con_повторы + $03

    .byte con_координаты_Y_X
    .byte $2C
    .byte $3C

    .dbyt off_B40E - $2000
    .byte $04

    .dbyt off_A9BE - $2000
    .byte $04

    .byte con_повторить

    .byte con_выход



off_A6DD_BB_логотип_японский_быстрое_движение_влево_потом_вправо:
    .byte $37

    .byte con_координаты_Y_X
    .byte $16
    .byte $94

    .dbyt off_B3E9 - $2000

    .byte con_физика
    .byte $09
    .byte $00
    .byte $00

    .byte $12

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $28

    .byte con_физика
    .byte $07
    .byte $00
    .byte $00

    .byte $12

    .byte con_выход



off_A6F3_BC_заяц:
    .byte $36

    .byte con_координаты_Y_X
    .byte $50
    .byte $28

    .dbyt off_B15B - $2000

    .byte con_выход



off_A6FA_BD:
    .byte $0C

    .byte con_координаты_Y_X
    .byte $40
    .byte $FE

    .dbyt off_B68B - $2000

    .byte con_выход



off_A701_BE_мяч_подброшенный_джаиро_опускается_вид_сверху:
    .byte $26

    .byte con_координаты_Y_X
    .byte $12
    .byte $39

    .dbyt off_AFC3 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $1A
    .byte $39

    .dbyt off_AFE4 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $1E
    .byte $39

    .dbyt off_AFFF - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $22
    .byte $39

    .dbyt off_B017 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $24
    .byte $39

    .dbyt off_B026 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $26
    .byte $39

    .dbyt off_B035 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $28
    .byte $39

    .dbyt off_B044 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $2B
    .byte $3B

    .dbyt off_B053 - $2000
    .byte $01
; unused до конца
    .byte con_координаты_Y_X
    .byte $2C
    .byte $3B

    .dbyt off_B05B - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $2D
    .byte $3B

    .dbyt off_B063 - $2000

    .byte con_выход



off_A73E_BF_джаиро_замахивается_и_опускается:
    .byte $14

    .byte con_координаты_Y_X
    .byte $9E
    .byte $48

    .dbyt off_A959 - $2000
    .byte $78
    .byte $78

    .byte con_физика
    .byte $20
    .byte $FF
    .byte $00

    .byte $78

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte con_выход



off_A750_C0:
    .byte $07

    .byte con_координаты_Y_X
    .byte $04
    .byte $04

    .dbyt off_B6EB - $2000

    .byte con_выход



off_A757_C1:
    .byte $02

    .byte con_повторы + $03

    .byte con_координаты_Y_X
    .byte $04
    .byte $FC

    .dbyt off_B711 - $2000

    .byte con_физика
    .byte $05
    .byte $00
    .byte $00

    .byte $0A

    .byte con_повторить

    .byte con_выход



off_A765_C2_джек_выходит_и_поздравляет:
    .byte $15

    .byte con_координаты_Y_X
    .byte $38
    .byte $78

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte con_повторы + $0F

    .dbyt off_B739 - $2000
    .byte $02

    .dbyt off_B746 - $2000
    .byte $02

    .byte con_повторить

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B753 - $2000
    .byte $2A

@бесконечный_цикл:
    .dbyt off_B762 - $2000
    .byte $0F

    .dbyt off_B753 - $2000
    .byte $0F

    .dbyt @бесконечный_цикл



off_A784_C3_джек_уходит_с_поля:
    .byte $15

    .byte con_координаты_Y_X
    .byte $38
    .byte $3C

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B753 - $2000
; таймер джека перед движением влево когда он покидает поле
    .byte $1E

    .byte con_физика
    .byte $0F
    .byte $00
    .byte $00

    .byte con_повторы + $02

    .byte con_повторы + $0F

    .dbyt off_B739 - $2000
    .byte $02

    .dbyt off_B746 - $2000
    .byte $02

    .byte con_повторить

    .byte con_повторить

    .byte con_выход



off_A79E_C4_джек_улетает_и_появляется_и_садится_на_голову:
    .byte $15

    .byte con_координаты_Y_X
    .byte $38
    .byte $3C

    .byte con_физика
    .byte $E0
    .byte $00
    .byte $00
; полет
    .dbyt off_B762 - $2000
    .byte $12

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00
; невидимость
    .byte $7F
    .byte $50

    .byte con_координаты_Y_X
    .byte $1C
    .byte $0A

    .dbyt off_B753 - $2000
; появление из фона
    .byte con_физика
    .byte $F0
    .byte $00
    .byte $00

    .byte $04
; остановить появление
    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .byte $7F
; прыжок из фона
    .byte con_физика
    .byte $F0
    .byte $FB
    .byte $00

    .dbyt off_B762 - $2000
    .byte $10
; смена анимации перед приземлением на границу фона
    .dbyt off_B753 - $2000
    .byte $04

    .byte con_физика
    .byte $00
    .byte $00
    .byte $00
; ожидание падения
    .byte $7F
; падение
    .byte con_физика
    .byte $10
    .byte $08
    .byte $00

    .dbyt off_B771 - $2000
    .byte $1A

    .byte con_координаты_Y_X
    .byte $5B
    .byte $0A
; приземление
    .byte con_физика
    .byte $00
    .byte $00
    .byte $00

    .dbyt off_B753 - $2000
    .byte $1E

@бесконечный_цикл:
    .dbyt off_B762 - $2000
    .byte $0F

    .dbyt off_B753 - $2000
    .byte $0F

    .dbyt @бесконечный_цикл



off_A7D8_C5_объект_для_скрытия_прыгающего_джека:
    .byte $15

    .byte con_координаты_Y_X
    .byte $14
    .byte $00

    .dbyt off_B6EB - $2000
    .byte $7F
    .byte $62

    .byte con_координаты_Y_X
    .byte $1C
    .byte $00

    .dbyt off_B6EB - $2000
    .byte $7F
    .byte $30

    .byte con_физика
    .byte $10
    .byte $00
    .byte $00

    .byte $7F

    .byte con_выход



off_A7ED_C6_полоска_для_логотипа_движется_вправо:
    .byte $00

    .byte con_координаты_Y_X
    .byte $44
    .byte $80

    .dbyt off_B780 - $2000
    .byte $45

    .byte con_физика
    .byte $07
    .byte $00
    .byte $07

    .byte $1D

    .byte con_выход



off_A7FA_C7_мерцание_звездой_на_полоске_логотипа:
    .byte $00

    .byte con_координаты_Y_X
    .byte $44
    .byte $BE

    .byte $5A

    .byte con_координаты_Y_X
    .byte $44
    .byte $3C

    .dbyt off_B797 - $2000
    .byte $01

    .dbyt off_B7A6 - $2000
    .byte $01

    .dbyt off_B797 - $2000
    .byte $01

    .byte con_координаты_Y_X
    .byte $44
    .byte $BE

    .dbyt off_B797 - $2000

    .byte con_выход



off_A811_C8:
    .byte $21

    .byte con_координаты_Y_X
    .byte $48
    .byte $00

    .dbyt off_B6EB - $2000

    .byte con_выход



off_A818_C9:
    .byte $21

    .byte con_координаты_Y_X
    .byte $18
    .byte $00

    .dbyt off_B6EB - $2000

    .byte con_выход



off_A81F_CA_движение_надписи_VOL_II_влево_вверху:
    .byte $36

    .byte con_координаты_Y_X
    .byte $34
    .byte $85

    .dbyt off_B7BB - $2000

    .byte con_физика
    .byte $09
    .byte $00
    .byte $07

    .byte $0D

    .byte con_выход



off_A82B_CB_движение_надписи_VOL_II_влево_внизу:
    .byte $36

    .byte con_координаты_Y_X
    .byte $48
    .byte $86

    .dbyt off_B7BB - $2000

    .byte con_физика
    .byte $09
    .byte $00
    .byte $07

    .byte $0E

    .byte con_выход









; данные спрайтов
; сначала 4 банка спрайтов
; затем если A0-BF, это смещение на + 8 относительно базовых координат
    ; следующий байт это номер палитры + зеркало
    ; и еще один байт это номер тайла
        ; если следующий байт меньше 80, то это смещение вниз * 2 относительно предыдущей координаты, и потом номер тайла
off_A837:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B910

    .byte $BF
    .byte $34, $2C
    .byte $38, $28
    .byte $3C, $2A

    .byte $A0
    .byte $34, $2D
    .byte $38, $29
    .byte $3C, $2B

    .byte $A1
    .byte $38, $2E

    .byte con_jmp
    .word off_B7CF



off_A852:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B910

    .byte $BF
    .byte $34, $2F
    .byte $38, $38
    .byte $3C, $3A

    .byte $A0
    .byte $34, $39
    .byte $38, $3B
    .byte $3C, $2B

    .byte $A1
    .byte $34, $3C
    .byte $38, $3E

    .byte con_jmp
    .word off_B7CF



off_A86F:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B91B

    .byte $BF

    .byte $9D

    .byte $CE, $3C, $2C
    .byte $C6, $3C, $2D
    .byte $CE, $1C, $28
    .byte $C6, $1C, $29
    
    .byte $9F

    .byte $CE, $3C, $2A
    .byte $C6, $3C, $2B

    .byte $A1

    .byte $9E

    .byte $CE, $3C, $2E

    .byte con_jmp
    .word off_B821



off_A893:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B91B

    .byte $BF

    .byte $9D

    .byte $CE, $3C, $2F
    .byte $C6, $3C, $39
    .byte $CE, $1C, $38
    .byte $C6, $1C, $3B
    
    .byte $9F

    .byte $CE, $3C, $3A
    .byte $C6, $3C, $2B

    .byte $A1

    .byte $9D

    .byte $CE, $3C, $3C
    .byte $CE, $1C, $3E

    .byte con_jmp
    .word off_B821



off_A8BA:
    .byte $08, $09, $0A, $0B
    
    .byte con_jsr
    .word off_B930

    .byte $BF

    .byte $9D

    .byte $CE, $00, $2C
    .byte $C6, $00, $2D
    
    .byte $9E

    .byte $CE, $00, $28
    .byte $C6, $00, $29
    
    .byte $9F

    .byte $CE, $00, $2A
    .byte $C6, $00, $2B

    .byte $A1

    .byte $9E

    .byte $CE, $00, $2E

    .byte con_jmp
    .word off_B86D



off_A8DF:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B930

    .byte $BF

    .byte $9D

    .byte $CE, $00, $2F
    .byte $C6, $00, $39
    
    .byte $9E

    .byte $CE, $00, $38
    .byte $C6, $00, $3B
    
    .byte $9F

    .byte $CE, $00, $3A
    .byte $C6, $00, $2B
    
    .byte $A1

    .byte $9D

    .byte $CE, $00, $3C
    
    .byte $9E

    .byte $CE, $00, $3E
    
    .byte con_jmp
    .word off_B86D



off_A908:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B93B

    .byte $BF

    .byte $9D

    .byte $C0, $3C, $2C
    .byte $C0, $1C, $28
    
    .byte $9F

    .byte $C0, $3C, $2A
    
    .byte $A0

    .byte $9D

    .byte $C0, $3C, $2D
    .byte $C0, $1C, $29
    
    .byte $9F

    .byte $C0, $3C, $2B
    
    .byte $A1

    .byte $9E

    .byte $C0, $3C, $2E

    .byte con_jmp
    .word off_B8C3



off_A92F:
    .byte $08, $09, $0A, $0B

    .byte con_jsr
    .word off_B93B

    .byte $BF

    .byte $9D

    .byte $C0, $3C, $2F
    .byte $C0, $1C, $38
    
    .byte $9F

    .byte $C0, $3C, $3A
    
    .byte $A0

    .byte $9D

    .byte $C0, $3C, $39
    .byte $C0, $1C, $3B
    
    .byte $9F

    .byte $C0, $3C, $2B
    
    .byte $A1

    .byte $9D

    .byte $C0, $3C, $3C
    .byte $C0, $1C, $3E
    
    .byte con_jmp
    .word off_B8C3



off_A959:
    .byte $10, $11, $12, $5F

    .byte $BE
    .byte $38, $11
    .byte $3C, $13
    
    .byte $BF
    .byte $38, $14
    .byte $3C, $16
    .byte $00, $19
    
    .byte $A0
    .byte $38, $15
    .byte $3C, $17
    .byte $00, $1C
    
    .byte con_jmp
    .word off_B94C



off_A973:
    .byte $10, $11, $12, $5F

    .byte $BE
    .byte $08, $86
    
    .byte $BF
    .byte $04, $84
    .byte $08, $87
    
    .byte $A0
    .byte $00, $82
    .byte $04, $85
    
    .byte $A1
    .byte $3D, $88
    .byte $01, $83
    
    .byte $A2
    .byte $39, $8C
    .byte $3D, $89
    
    .byte con_FF



off_A98F:
    .byte $6A, $6B, $7A, $7B

    .byte $BF
    .byte $03, $52
    .byte $07, $58
    .byte $0B, $5A

    .byte $A0
    .byte $03, $5C
    .byte $03, $53
    .byte $07, $5E
    .byte $07, $59
    .byte $0B, $74
    .byte $0B, $5B

    .byte $A1
    .byte $43, $5C
    .byte $43, $53
    .byte $47, $5E
    .byte $47, $59
    .byte $4B, $74
    .byte $4B, $5B

    .byte $A2
    .byte $43, $52
    .byte $47, $58
    .byte $4B, $5A

    .byte con_jmp
    .word off_BC90



off_A9BE:
    .byte $6A, $6B, $7A, $7B

    .byte $BF
    .byte $3F, $54

    .byte $A0
    .byte $3B, $5F
    .byte $3F, $55
    .byte $03, $57
    .byte $07, $5D

    .byte $A1
    .byte $7B, $5F
    .byte $7F, $55
    .byte $43, $57
    .byte $47, $5D

    .byte $A2
    .byte $7F, $54

    .byte con_jmp
    .word off_B9AA



off_A9DD:
    .byte $06, $07, $5E, $5F

    .byte $BF
    .byte $39, $4F
    .byte $3D, $65
    .byte $01, $67
    .byte $05, $6D
    .byte $09, $6F

    .byte $A0
    .byte $39, $5A
    .byte $3D, $70
    .byte $01, $72
    .byte $05, $78
    .byte $09, $7A

    .byte $A1
    .byte $39, $5B
    .byte $3D, $71
    .byte $01, $73
    .byte $05, $79
    .byte $09, $7B

    .byte $A2
    .byte $39, $5E
    .byte $3D, $74
    .byte $01, $76
    .byte $05, $7C
    .byte $09, $7E

    .byte $A3
    .byte $39, $5F
    .byte $3D, $75
    .byte $01, $77
    .byte $05, $7D
    .byte $09, $7F

    .byte con_FF



off_AA19:
    .byte $06, $07, $5E, $5F

    .byte $BF
    .byte $38, $42

    .byte $A0
    .byte $38, $43
    
    .byte $9F

    .byte $CC, $00, $44
    .byte $C4, $00, $45
    .byte $01, $47
    .byte $05, $51
    .byte $09, $53

    .byte $A1
    .byte $38, $41
    .byte $3D, $50
    .byte $00, $46
    .byte $01, $52
    .byte $05, $54
    .byte $09, $56

    .byte con_FF



off_AA3E:
    .byte $06, $07, $5E, $5F

    .byte $BF
    .byte $39, $4A
    .byte $3D, $60
    .byte $01, $62
    .byte $05, $68
    .byte $09, $6A

    .byte $A0
    .byte $39, $4B
    .byte $3D, $61
    .byte $01, $63
    .byte $05, $69
    .byte $09, $6B

    .byte $A1
    .byte $3D, $64
    .byte $01, $66
    .byte $05, $6C
    .byte $09, $6E

    .byte $A2
    .byte $01, $4D
    .byte $05, $4C
    .byte $09, $4E

    .byte $A3
    .byte $01, $58
    .byte $05, $59
    .byte $09, $5C

    .byte $A1
    .byte $38, $55
    .byte $3C, $57
    .byte $0D, $53

    .byte $A2
    .byte $38, $48
    .byte $3C, $49
    .byte $00, $40
    .byte $0D, $56

    .byte con_FF



off_AA80:
    .byte $06, $07, $5E, $5F

    .byte $A0
    .byte $39, $58
    .byte $3D, $59
    .byte $01, $5C

    .byte con_FF



off_AA8C:
    .byte $33, $5D, $5E, $5F

    .byte $BD
    .byte $3C, $28

    .byte $BE
    .byte $38, $02
    .byte $3C, $08
    .byte $00, $0A
    .byte $04, $20
    .byte $08, $22

    .byte $BF
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $0B
    .byte $04, $21
    .byte $09, $23
    .byte $0C, $29

    .byte $A0
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $06, $24
    .byte $09, $26
    .byte $0C, $2C

    .byte $A1
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $06, $25
    .byte $09, $27
    .byte $0C, $2D

    .byte $A2
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $04, $30
    .byte $08, $32
    .byte $0C, $38

    .byte $A3
    .byte $38, $0E
    .byte $3C, $01
    .byte $00, $01
    .byte $04, $31
    .byte $08, $33

    .byte $A4
    .byte $38, $0F
    .byte $3C, $03
    .byte $00, $09
    .byte $04, $39

    .byte con_FF



off_AAE7:
    .byte $30, $31, $32, $5F

    .byte $BD
    .byte $38, $81

    .byte $BE
    .byte $38, $80
    .byte $3C, $82
    .byte $00, $88
    .byte $04, $8A
    .byte $08, $22

    .byte $BF
    .byte $38, $01
    .byte $3C, $01
    .byte $02, $89
    .byte $04, $8B
    .byte $05, $83
    .byte $09, $A1
    .byte $0C, $46

    .byte $A0
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $04, $8C
    .byte $09, $8E
    .byte $0C, $A4

    .byte $A1
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $04, $8D
    .byte $08, $8F
    .byte $0C, $2D

    .byte $A2
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $04, $98
    .byte $08, $9A
    .byte $0C, $53

    .byte $A3
    .byte $38, $84
    .byte $3C, $01
    .byte $00, $90
    .byte $04, $92
    .byte $08, $86

    .byte $A4
    .byte $38, $85
    .byte $3C, $87
    .byte $00, $91
    .byte $04, $93

    .byte $A5
    .byte $0C, $A5

    .byte $A6
    .byte $0C, $B0

    .byte con_FF



off_AB4A:
    .byte $36, $37, $5E, $5F

    .byte $BE
    .byte $39, $04
    .byte $3D, $02
    .byte $01, $08
    .byte $04, $0A
    .byte $08, $20

    .byte $BF
    .byte $39, $33
    .byte $3D, $03
    .byte $01, $09
    .byte $02, $05
    .byte $04, $0B
    .byte $06, $07
    .byte $0A, $21
    .byte $0C, $23

    .byte $A0
    .byte $39, $33
    .byte $3D, $06
    .byte $01, $0C
    .byte $05, $0E
    .byte $0A, $24
    .byte $0C, $26

    .byte $A1
    .byte $39, $33
    .byte $3D, $33
    .byte $01, $0D
    .byte $05, $0F
    .byte $08, $25
    .byte $0A, $22
    .byte $0C, $27

    .byte $A2
    .byte $39, $33
    .byte $3D, $33
    .byte $01, $33
    .byte $05, $1A
    .byte $09, $30
    .byte $0C, $32

    .byte $A3
    .byte $39, $11
    .byte $3D, $33
    .byte $01, $10
    .byte $05, $12
    .byte $09, $18

    .byte $A4
    .byte $39, $13
    .byte $3D, $19
    .byte $01, $1B
    .byte $05, $31

    .byte con_FF



off_ABA8:
    .byte $30, $31, $32, $5F

    .byte $BE
    .byte $39, $3C
    .byte $3D, $3E
    .byte $01, $04
    .byte $04, $06
    .byte $08, $22

    .byte $BF
    .byte $39, $3D
    .byte $3D, $3F
    .byte $01, $05
    .byte $04, $07
    .byte $0A, $1D
    .byte $0C, $1F

    .byte $A0
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $10
    .byte $04, $12
    .byte $05, $14
    .byte $0A, $35
    .byte $0C, $37

    .byte $A1
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $11
    .byte $05, $13
    .byte $0A, $2E
    .byte $0C, $3B

    .byte $A2
    .byte $39, $2B
    .byte $3D, $02
    .byte $01, $02
    .byte $05, $16
    .byte $09, $2F
    .byte $0F, $1B

    .byte $A3
    .byte $39, $28
    .byte $3D, $2A
    .byte $01, $15
    .byte $05, $17
    .byte $09, $3A

    .byte con_FF



off_ABF9:
    .byte $30, $31, $32, $5F

    .byte $BE
    .byte $39, $09
    .byte $3D, $08
    .byte $01, $0A
    .byte $04, $20
    .byte $08, $22

    .byte $BF
    .byte $39, $0C
    .byte $3D, $02
    .byte $01, $0B
    .byte $04, $21
    .byte $0A, $23
    .byte $0C, $29

    .byte $A0
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $0E
    .byte $05, $24
    .byte $0A, $26
    .byte $0C, $2C

    .byte $A1
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $02
    .byte $05, $25
    .byte $07, $18
    .byte $0A, $27
    .byte $0B, $1A
    .byte $0C, $2D

    .byte $A2
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $02
    .byte $05, $30
    .byte $09, $32
    .byte $0C, $38

    .byte $A3
    .byte $39, $19
    .byte $3D, $02
    .byte $01, $31
    .byte $05, $33
    .byte $09, $39

    .byte $A4
    .byte $39, $1C
    .byte $3D, $1E
    .byte $01, $34
    .byte $05, $36

    .byte $A5
    .byte $39, $0D
    .byte $3D, $0F

    .byte con_FF



off_AC5A:
    .byte $30, $31, $32, $5F

    .byte $BD
    .byte $39, $40
    .byte $3D, $42
    .byte $01, $48

    .byte $BE
    .byte $39, $41
    .byte $3D, $43
    .byte $01, $49
    .byte $04, $4B
    .byte $08, $22

    .byte $BF
    .byte $39, $02
    .byte $01, $4C
    .byte $04, $4E
    .byte $0A, $44
    .byte $0C, $46

    .byte $A0
    .byte $01, $4D
    .byte $04, $4F
    .byte $0A, $45
    .byte $0C, $47

    .byte $A1
    .byte $07, $5A
    .byte $08, $50
    .byte $0A, $4A
    .byte $0C, $2D

    .byte $A2
    .byte $39, $02
    .byte $05, $5B
    .byte $09, $51
    .byte $0C, $53

    .byte $A3
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $02
    .byte $05, $5E
    .byte $09, $54

    .byte $A4
    .byte $39, $02
    .byte $3D, $56
    .byte $01, $02
    .byte $05, $5F
    .byte $09, $55

    .byte $A5
    .byte $39, $02
    .byte $3D, $5C
    .byte $01, $52
    .byte $05, $58

    .byte $A6
    .byte $39, $57
    .byte $3D, $5D
    .byte $01, $59

    .byte con_FF



off_ACBD:
    .byte $30, $31, $32, $5F

    .byte $BC
    .byte $39, $A0

    .byte $BD
    .byte $39, $A2
    .byte $3D, $A8

    .byte $BE
    .byte $39, $A3
    .byte $3D, $A9
    .byte $01, $A6
    .byte $04, $AC
    .byte $08, $22

    .byte $BF
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $A7
    .byte $04, $AD
    .byte $0A, $AF
    .byte $0C, $B1

    .byte $A0
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $B2
    .byte $04, $B8
    .byte $0A, $BA
    .byte $0C, $9B

    .byte $A1
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $B3
    .byte $04, $B9
    .byte $07, $AE
    .byte $08, $BB
    .byte $0C, $2D

    .byte $A2
    .byte $39, $02
    .byte $3D, $02
    .byte $01, $94
    .byte $05, $96
    .byte $09, $99
    .byte $0C, $53

    .byte $A3
    .byte $39, $AA
    .byte $3D, $AB
    .byte $01, $95
    .byte $05, $97

    .byte con_FF



off_AD14:
    .byte $38, $39, $3A, $3B

    .byte $BD
    .byte $81, $C0
    .byte $0E, $20
    .byte $0E, $04

    .byte $BE
    .byte $3A, $02
    .byte $3E, $08
    .byte $02, $0A
    .byte $05, $21
    .byte $0E, $05

    .byte $BF
    .byte $3A, $03
    .byte $3E, $09
    .byte $02, $0B
    .byte $05, $24
    .byte $08, $26
    .byte $0C, $2C
    .byte $0E, $10

    .byte $A0
    .byte $3A, $06
    .byte $3E, $0C
    .byte $01, $0E
    .byte $05, $25
    .byte $0B, $27
    .byte $0C, $2D

    .byte $A1
    .byte $3A, $07
    .byte $3E, $0D
    .byte $01, $0F
    .byte $05, $30
    .byte $0B, $32
    .byte $0C, $38

    .byte $A2
    .byte $3A, $12
    .byte $3E, $18
    .byte $01, $1A
    .byte $05, $1E
    .byte $04, $31
    .byte $08, $33
    .byte $0C, $39

    .byte $A3
    .byte $3A, $13
    .byte $3C, $19
    .byte $3E, $1C
    .byte $00, $1B
    .byte $04, $34
    .byte $08, $36
    .byte $0C, $3C

    .byte con_FF



off_AD72:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB88

    .byte con_jmp
    .word off_BAFC



off_AD7C:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB88

    .byte con_jmp
    .word off_BB14



off_AD86:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB88

    .byte con_jmp
    .word off_BB56



off_AD90:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB88

    .byte con_jmp
    .word off_BB6E



off_AD9A:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB9C

    .byte con_jmp
    .word off_BAFC



off_ADA4:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB9C

    .byte con_jmp
    .word off_BB14



off_ADAE:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BB9C

    .byte con_jmp
    .word off_BB56



off_ADB8:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BC03

    .byte con_jmp
    .word off_BC3D



off_ADC2:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBA2

    .byte con_jmp
    .word off_BAFC



off_ADCC:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBA2

    .byte con_jmp
    .word off_BB14



off_ADD6:
    .byte $18, $19, $1A, $1B

    .byte $BF
    .byte $3F, $48
    .byte $03, $4A
    .byte $07, $60

    .byte $A0
    .byte $3F, $49
    .byte $03, $4B
    .byte $07, $61

    .byte $A1
    .byte $3F, $FD
    .byte $03, $FF
    .byte $07, $FE

    .byte con_FF



off_ADF0:
    .byte $28, $29, $2A, $2B

    .byte $BF
    .byte $07, $50
    .byte $0B, $52

    .byte $A0
    .byte $07, $51
    .byte $0B, $53

    .byte $A1
    .byte $07, $54
    .byte $09, $56
    .byte $0B, $2E

    .byte con_jmp
    .word off_BA06



off_AE08:
    .byte $28, $29, $2A, $2B

    .byte con_jsr
    .word off_BA65

    .byte con_jmp
    .word off_BA71



off_AE12:
    .byte $28, $29, $2A, $2B

    .byte $A1
    .byte $03, $70
    
    .byte $A2
    .byte $03, $75
    .byte $07, $77
off_AE1E:
    .byte $0B, $4F

    .byte $A0
    .byte $03, $65

    .byte con_jsr
    .word off_BA65

    .byte con_jmp
    .word off_BA7C



off_AE29:
    .byte $28, $29, $2A, $2B

    .byte $A1
    .byte $03, $67

    .byte $A2
    .byte $03, $72
    .byte $07, $73

    .byte con_jmp
    .word off_AE1E



off_AE38:
    .byte $28, $29, $2A, $2B

    .byte $BF
    .byte $07, $76
    .byte $0B, $6D
    .byte $0F, $6F

    .byte $A0
    .byte $0F, $7A
off_AE46:
    .byte $A1
    .byte $0F, $74

    .byte con_jmp
    .word off_BA71



off_AE4C:
    .byte $28, $29, $2A, $2B

    .byte $BF
    .byte $07, $78
    .byte $0B, $79
    .byte $0F, $7B

    .byte $A0
    .byte $0F, $7C

    .byte con_jmp
    .word off_AE46



off_AE5D:
    .byte $74, $75, $76, $77

    .byte $BD
    .byte $30, $1F
    .byte $34, $08
    .byte $38, $0A

    .byte $BE
    .byte $34, $09
    .byte $38, $0B
    .byte $3C, $13

    .byte $BF
    .byte $34, $0C
    .byte $38, $0E
    .byte $3C, $04
    .byte $00, $06

    .byte $A0
    .byte $34, $0D
    .byte $38, $0F
    .byte $3C, $05
    .byte $00, $07

    .byte $A1
    .byte $34, $18
    .byte $38, $1A
    .byte $3C, $10
    .byte $00, $12

    .byte $A2
    .byte $34, $19
    .byte $38, $1B
    .byte $3C, $11

    .byte $A3
    .byte $34, $14
    .byte $38, $16

    .byte $A4
    .byte $30, $03
    .byte $34, $5B
    .byte $38, $17

    .byte con_FF



off_AE9E:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BBD4
; bzk заменить jsr на jmp и удалить FF
    .byte con_FF



off_AEA6:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BBE8
; bzk заменить jsr на jmp и удалить FF
    .byte con_FF



off_AEAE:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BC03
; bzk заменить jsr на jmp и удалить FF
    .byte con_FF



off_AEB6:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BC1A
; bzk заменить jsr на jmp и удалить FF
    .byte con_FF



off_AEBE:
    .byte $3B, $47, $5E, $5F

    .byte $A0
    .byte $30, $04
    .byte $34, $06
    .byte $38, $12
    .byte $3C, $0A
    .byte $00, $20
    .byte $04, $1C
    .byte $08, $05
    .byte $0C, $02

    .byte $A1
    .byte $34, $07
    .byte $38, $09
    .byte $3C, $0B
    .byte $00, $21
    .byte $04, $1D
    .byte $08, $10
    .byte $0C, $03

    .byte $A2
    .byte $34, $12
    .byte $38, $0C
    .byte $3C, $0E
    .byte $00, $24
    .byte $04, $1E
    .byte $08, $11

    .byte $A3
    .byte $34, $13
    .byte $38, $0D
    .byte $3C, $0F
    .byte $00, $25
    .byte $04, $1F
    .byte $08, $14

    .byte $A4
    .byte $34, $16
    .byte $38, $18
    .byte $3C, $1A
    .byte $00, $30
    .byte $04, $35
    .byte $08, $15

    .byte $A5
    .byte $38, $19
    .byte $3C, $1B
    .byte $00, $31
    .byte $04, $22

    .byte $A6
    .byte $38, $17
    .byte $3C, $08
    .byte $00, $34
    .byte $04, $36

    .byte con_FF



off_AF1C:
    .byte $3B, $47, $5E, $5F

    .byte $A0
    .byte $30, $04
    .byte $34, $06
    .byte $38, $12
    .byte $3C, $28
    .byte $00, $2A
    .byte $04, $1C
    .byte $08, $05
    .byte $0C, $02

    .byte $A1
    .byte $34, $07
    .byte $38, $23
    .byte $3C, $29
    .byte $00, $2B
    .byte $04, $37
    .byte $08, $10
    .byte $0C, $03

    .byte $A2
    .byte $34, $12
    .byte $38, $26
    .byte $3C, $2C
    .byte $00, $2E
    .byte $04, $3D
    .byte $08, $11

    .byte $A3
    .byte $34, $13
    .byte $38, $27
    .byte $3C, $2D
    .byte $00, $2F
    .byte $04, $3F
    .byte $08, $14

    .byte $A4
    .byte $34, $16
    .byte $38, $32
    .byte $3C, $38
    .byte $00, $3A
    .byte $04, $58
    .byte $08, $15

    .byte $A5
    .byte $38, $33
    .byte $3C, $39
    .byte $00, $3B
    .byte $04, $59

    .byte $A6
    .byte $38, $17
    .byte $3C, $3C
    .byte $00, $3E
    .byte $04, $36

    .byte con_FF



off_AF7A:
    .byte $3B, $47, $5E, $5F

    .byte $A0
    .byte $30, $04
    .byte $34, $06
    .byte $38, $4E
    .byte $04, $53
    .byte $08, $05
    .byte $0C, $02

    .byte $A1
    .byte $34, $07
    .byte $38, $4F
    .byte $3C, $64
    .byte $00, $66
    .byte $04, $56
    .byte $08, $10
    .byte $0C, $03

    .byte $A2
    .byte $34, $12
    .byte $38, $5A
    .byte $3C, $65
    .byte $00, $67
    .byte $04, $57
    .byte $08, $11

    .byte $A3
    .byte $34, $13
    .byte $38, $5B
    .byte $3C, $51
    .byte $04, $5C
    .byte $08, $14

    .byte $A4
    .byte $34, $16
    .byte $38, $5E
    .byte $3C, $54
    .byte $04, $5D
    .byte $08, $15

    .byte $A5
    .byte $38, $5F
    .byte $3C, $55

    .byte con_FF



off_AFC3:
    .byte $06, $26, $21, $5F

    .byte $BF
    .byte $03, $08
    .byte $07, $0A

    .byte $A0
    .byte $3F, $02
    .byte $03, $09
    .byte $07, $0B
    .byte $0B, $20

    .byte $A1
    .byte $3F, $03
    .byte $03, $0C
    .byte $07, $0E
    .byte $0B, $21

    .byte $A2
    .byte $03, $0D
    .byte $07, $0F

    .byte con_FF



off_AFE4:
    .byte $06, $26, $21, $5F

    .byte $BF
    .byte $03, $22
    .byte $07, $28

    .byte $A0
    .byte $3F, $24
    .byte $03, $23
    .byte $07, $29

    .byte $A1
    .byte $3F, $25
    .byte $03, $26
    .byte $07, $2C

    .byte $A2
    .byte $03, $27

    .byte con_FF



off_AFFF:
    .byte $06, $26, $21, $5F

    .byte $BF
    .byte $03, $06
    .byte $07, $28

    .byte $A0
    .byte $3F, $04
    .byte $03, $07
    .byte $07, $18

    .byte $A1
    .byte $3F, $05
    .byte $03, $12
    .byte $07, $19

    .byte con_FF



off_B017:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $10
    .byte $07, $2D

    .byte $A1
    .byte $03, $11
    .byte $07, $13

    .byte con_FF



off_B026:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $1A
    .byte $07, $30

    .byte $A1
    .byte $03, $1B
    .byte $07, $31

    .byte con_FF



off_B035:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $32
    .byte $07, $38

    .byte $A1
    .byte $03, $33
    .byte $07, $39

    .byte con_FF



off_B044:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $2A
    .byte $07, $2E

    .byte $A1
    .byte $03, $2B
    .byte $07, $2F

    .byte con_FF



off_B053:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $3A

    .byte con_FF



off_B05B:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $3B

    .byte con_FF



off_B063:
    .byte $06, $26, $21, $5F

    .byte $A0
    .byte $03, $14

    .byte con_FF



off_B06B:
    .byte $06, $26, $21, $5F

    .byte $BF
    .byte $01, $7C

    .byte $A0
    .byte $3F, $B4
    .byte $01, $7D
    .byte $05, $7E

    .byte $A1
    .byte $05, $7F

    .byte con_FF



off_B07D:
    .byte $10, $11, $12, $5F

    .byte $A0
    .byte $3B, $B8
    .byte $7F, $BB
    .byte $03, $BC
    .byte $47, $BF

    .byte $A1
    .byte $3B, $B9
    .byte $3F, $BB
    .byte $43, $BC
    .byte $07, $BF

    .byte con_FF



off_B094:
    .byte $10, $11, $12, $5F

    .byte $A0

    .byte $9E

    .byte $C0, $73, $B6

    .byte $9F

    .byte $C0, $73, $BB
    .byte $C0, $13, $BC

    .byte $80

    .byte $C0, $53, $BF

    .byte $A1
    .byte $9E, $C0
    .byte $33, $B6

    .byte $9F

    .byte $C0, $33, $BB
    .byte $C0, $53, $BC

    .byte $80

    .byte $C0, $13, $BF

    .byte con_FF



off_B0B9:
    .byte $74, $75, $76, $77

    .byte $BE
    .byte $3B, $20
    .byte $3F, $22
    .byte $03, $24

    .byte $BF
    .byte $38, $1C
    .byte $3B, $21
    .byte $3C, $1E
    .byte $3F, $23
    .byte $03, $25
    .byte $07, $27

    .byte $A0
    .byte $38, $18
    .byte $3C, $1A
    .byte $00, $1D
    .byte $03, $26
    .byte $07, $28

    .byte $A1
    .byte $38, $19
    .byte $3C, $1B
    .byte $00, $11

    .byte $A2
    .byte $38, $14
    .byte $3C, $16

    .byte $A3
    .byte $34, $03
    .byte $38, $5B
    .byte $3C, $17

    .byte con_FF



off_B0F0:
    .byte $2C, $2D, $5E, $5F

    .byte $BC
    .byte $08, $22
    .byte $0C, $28

    .byte $BD
    .byte $04, $24
    .byte $08, $23
    .byte $0C, $29

    .byte $BE
    .byte $39, $02

    .byte $9F

    .byte $CC, $01, $08
    .byte $C4, $01, $09
    .byte $00, $0A
    .byte $04, $20
    .byte $08, $26

    .byte $BF
    .byte $39, $03

    .byte $9F

    .byte $C4, $01, $0C
    .byte $00, $0B
    .byte $04, $21

    .byte $A0
    .byte $00, $0E

    .byte $A1
    .byte $00, $2A
    .byte $04, $2F

    .byte $A2
    .byte $3C, $2C
    .byte $00, $2B
    .byte $04, $3A

    .byte $A3
    .byte $38, $27
    .byte $3C, $2D
    .byte $00, $2E

    .byte $A4
    .byte $38, $32
    .byte $3C, $38

    .byte con_FF



off_B137:
    .byte $04, $05, $1E, $1F

    .byte $BF
    .byte $3C, $82
    .byte $02, $88
    .byte $06, $8A
    .byte $0A, $A0

    .byte $A0
    .byte $3C, $B9
    .byte $02, $84
    .byte $01, $89
    .byte $06, $85
    .byte $05, $8B
    .byte $0A, $A1

    .byte $A1
    .byte $3C, $86
    .byte $02, $8C
    .byte $06, $8E
    .byte $0A, $A4

    .byte con_FF



off_B15B:
    .byte $7C, $71, $52, $53

    .byte $BF
    .byte $34, $50
    .byte $0A, $F6
    .byte $0E, $FC
    .byte $11, $EA
    .byte $12, $FE

    .byte $A0
    .byte $9D, $CE
    .byte $01, $E6

    .byte $9E

    .byte $CE, $00, $52
    .byte $CE, $01, $FA
    .byte $C6, $00, $53
    .byte $C6, $01, $FB
    .byte $3C, $58
    .byte $3D, $E5
    .byte $00, $5A
    .byte $01, $E7

    .byte $81

    .byte $CC, $00, $56
    .byte $C4, $00, $57
    .byte $05, $ED

    .byte $82

    .byte $CC, $00, $5C
    .byte $C4, $00, $5D
    .byte $CA, $01, $EE
    .byte $C2, $01, $EF

    .byte $83

    .byte $CC, $00, $5E
    .byte $C4, $00, $5F
    .byte $CA, $01, $E8
    .byte $C2, $01, $E9
    .byte $10, $55
    .byte $11, $EB
    .byte $12, $FF

    .byte $A1
    .byte $3C, $59
    .byte $3D, $F0
    .byte $00, $5B
    .byte $01, $F2

    .byte $81

    .byte $C4, $00, $54
    .byte $05, $F8

    .byte $A2
    .byte $02, $F7
    .byte $00, $51
    .byte $01, $F3
    .byte $05, $F9
    .byte $06, $FD

    .byte $BF
    .byte $05, $EC

    .byte con_FF



off_B1CB:
    .byte $70, $71, $72, $73

    .byte $A0
    .byte $02, $ED
    .byte $06, $EF

    .byte $A1
    .byte $42, $ED
    .byte $46, $EF

    .byte con_FF



off_B1DA:
    .byte $6C, $6D, $6E, $6F

    .byte $BC
    .byte $38, $F3

    .byte $BD
    .byte $38, $F6

    .byte $BE
    .byte $38, $F6

    .byte $BF
    .byte $38, $F6

    .byte $83

    .byte $C0, $32, $5D
    .byte $C0, $12, $5F

    .byte $A0
    .byte $38, $F6
    .byte $00, $F6
    .byte $04, $F7

    .byte $83

    .byte $C0, $72, $5D
    .byte $C0, $52, $5F

    .byte $A1
    .byte $38, $F6
    .byte $00, $F6

    .byte $A2
    .byte $38, $F6
    .byte $00, $F6

    .byte $A3
    .byte $3C, $F7
    .byte $00, $F3

    .byte $A4
    .byte $00, $F6

    .byte $A5
    .byte $00, $F6

    .byte $A6
    .byte $04, $F7

    .byte con_FF



off_B218:
    .byte $60, $61, $62, $63

    .byte $BF
    .byte con_jsr
    .word off_BAED

    .byte $A0
    .byte con_jsr
    .word off_BAED

    .byte $A1
    .byte con_jsr
    .word off_BAED

    .byte $A2
    .byte con_jsr
    .word off_BAED
; bzk заменить jsr на jmp и удалить FF
    .byte con_FF



off_B22D:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBA2

    .byte con_jmp
    .word off_BB56



off_B237:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $3F, $01
    .byte $03, $01
    .byte $07, $01

    .byte $A0
    .byte $3F, $4F
    .byte $03, $4F
    .byte $07, $4F

    .byte $A1
    .byte $3F, $58
    .byte $03, $58
    .byte $07, $58

    .byte $A2
    .byte $3F, $03
    .byte $03, $03
    .byte $07, $03

    .byte con_FF



off_B258:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBB0

    .byte con_jmp
    .word off_BAFC



off_B262:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBB0

    .byte con_jmp
    .word off_BB14



off_B26C:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBB0

    .byte con_jmp
    .word off_BB56



off_B276:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $3E, $01
    .byte $02, $02
    .byte $06, $03

    .byte $A0
    .byte $3E, $01
    .byte $02, $02
    .byte $06, $03

    .byte $A1
    .byte $3E, $01
    .byte $02, $02
    .byte $06, $03

    .byte $A2
    .byte $3E, $01
    .byte $02, $02
    .byte $06, $03

    .byte con_FF



off_B297:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBBE

    .byte con_jmp
    .word off_BAFC



off_B2A1:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBBE

    .byte con_jmp
    .word off_BB14



off_B2AB:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBBE

    .byte con_jmp
    .word off_BB56



off_B2B5:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $3D, $01
    .byte $41, $FE
    .byte $05, $01

    .byte $A0
    .byte $7D, $D8

    .byte $80

    .byte $C4, $00, $51
    .byte $41, $B4
    .byte $45, $FC

    .byte $A1
    .byte $3D, $D8
    .byte $01, $B4
    .byte $05, $FC

    .byte $A2
    .byte $3D, $01
    .byte $01, $FE
    .byte $05, $01

    .byte con_FF



off_B2DA:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBC9

    .byte con_jmp
    .word off_BAFC



off_B2E4:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBC9

    .byte con_jmp
    .word off_BB14



off_B2EE:
    .byte $18, $19, $1A, $1B

    .byte con_jsr
    .word off_BBC9

    .byte con_jmp
    .word off_BB56



off_B2F8:
    .byte $70, $71, $72, $73

    .byte $B7
    .byte $03, $DE
    .byte $07, $F4

    .byte $B8
    .byte $03, $DF
    .byte $07, $F5

    .byte $BA
    .byte $43, $F8
    .byte $47, $FA

    .byte $AA
    .byte $01, $F8
    .byte $05, $FA

    .byte con_FF



off_B311:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BBD4

    .byte con_jmp
    .word off_BC2C



off_B31B:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BBE8

    .byte con_jmp
    .word off_BC2C



off_B325:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BC03

    .byte con_jmp
    .word off_BC2C



off_B32F:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BC1A

    .byte con_jmp
    .word off_BC2C



off_B339:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BBD4

    .byte con_jmp
    .word off_BC3D



off_B343:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BBE8

    .byte con_jmp
    .word off_BC3D



off_B34D:
    .byte $70, $71, $72, $73

    .byte $BF
    .byte $3A, $E0
    .byte $3E, $E2
    .byte $02, $E8
    .byte $06, $EA
    .byte $0A, $E5
    .byte $0E, $E7

    .byte $A0
    .byte $3A, $E1
    .byte $3E, $E3
    .byte $02, $E9
    .byte $06, $EB
    .byte $0A, $F0
    .byte $0E, $F2

    .byte $A1
    .byte $3A, $E4
    .byte $3E, $E6
    .byte $02, $EC
    .byte $06, $EE
    .byte $0A, $F1
    .byte $0E, $F3

    .byte $A2
    .byte $0E, $DD

    .byte con_FF



off_B37C:
    .byte $16, $17, $2D, $5F

    .byte con_jsr
    .word off_BC1A

    .byte con_jmp
    .word off_BC3D



off_B3AB:
    .byte $10, $11, $12, $5F

    .byte $BF
    .byte $1B, $7C
    .byte $1F, $7E

    .byte $A0
    .byte $1B, $7D
    .byte $1F, $7F

    .byte con_FF



off_B3BA:
    .byte $60, $61, $62, $63

    .byte $BF
    .byte $3A, $F9
    .byte $3E, $FB

    .byte $81

    .byte $C0, $38, $EF
    .byte $C0, $18, $FA

    .byte $A0
    .byte $36, $74
    .byte $3A, $76
    .byte $3F, $7C
    .byte $02, $7E
    .byte $07, $72
    .byte $0B, $78
    .byte $0F, $7A

    .byte $A1
    .byte $36, $75
    .byte $3A, $77
    .byte $3F, $7D
    .byte $00, $7F
    .byte $07, $73
    .byte $0B, $79
    .byte $0F, $7B

    .byte con_FF



off_B3E9:
    .byte $6A, $6B, $7A, $7B

    .byte $BD
    .byte $02, $F1
    .byte $06, $F3

    .byte $BE
    .byte $02, $F4
    .byte $06, $F6

    .byte $BF
    .byte $3E, $DF
    .byte $02, $F5
    .byte $06, $F7

    .byte $A0
    .byte $02, $F8
    .byte $06, $FA

    .byte $A1
    .byte $02, $F9
    .byte $06, $FB

    .byte $A2
    .byte $02, $FC
    .byte $06, $FE

    .byte con_FF



off_B40E:
    .byte $6A, $6B, $7A, $7B

    .byte $BF
    .byte $03, $5C
    .byte $03, $56
    .byte $07, $5E
    .byte $07, $70
    .byte $0B, $74
    .byte $0B, $5A

    .byte $A0
    .byte $03, $53
    .byte $07, $71
    .byte $0B, $5B

    .byte $A1
    .byte $43, $53
    .byte $47, $71
    .byte $4B, $5B

    .byte $A2
    .byte $43, $5C
    .byte $43, $56
    .byte $47, $5E
    .byte $47, $70
    .byte $4B, $74
    .byte $4B, $5A

    .byte con_jmp
    .word off_BC90



off_B43D:
    .byte $6C, $6D, $6E, $6F

    .byte $BF
    .byte $3C, $02
    .byte $00, $03
    .byte $04, $02

    .byte $A0
    .byte $3C, $02
    .byte $40, $FD
    .byte $04, $02

    .byte $A1
    .byte $3C, $02
    .byte $00, $FD
    .byte $04, $02

    .byte $A2
    .byte $3C, $02
    .byte $00, $03
    .byte $04, $02

    .byte con_FF



off_B45E:
    .byte $74, $75, $7B, $67

    .byte $BF
    .byte $3E, $E0
    .byte $02, $E2
    .byte $06, $E8
    .byte $0A, $EA

    .byte $A0
    .byte $3E, $E1
    .byte $02, $E3
    .byte $06, $E9
    .byte $0A, $EB

    .byte $A1
    .byte $3E, $E4
    .byte $02, $E6
    .byte $06, $EC
    .byte $0A, $EE

    .byte $A2
    .byte $3E, $E5
    .byte $02, $E7
    .byte $06, $ED
    .byte $0A, $EF

    .byte con_FF



off_B487:
    .byte $74, $75, $7B, $67

    .byte $BF
    .byte $81, $C4
    .byte $01, $AE
    .byte $09, $AF

    .byte $A0
    .byte $39, $A4
    .byte $3D, $A6
    .byte $03, $AC

    .byte $A1
    .byte $3D, $A7
    .byte $03, $AD
    .byte $05, $A5

    .byte $A2
    .byte $05, $B0
    .byte $09, $B2

    .byte con_FF



off_B4A6:
    .byte $70, $71, $72, $73

    .byte $BC
    .byte $3F, $40

    .byte $BD
    .byte $3F, $41
    .byte $03, $43

    .byte $BE
    .byte $3F, $44
    .byte $03, $46

    .byte $BF
    .byte $3F, $45
    .byte $03, $47

    .byte $A0
    .byte $3F, $48
    .byte $03, $4A
    .byte $07, $70

    .byte $A1
    .byte $3F, $49
    .byte $03, $4B
    .byte $07, $71

    .byte $A2
    .byte $3F, $4C
    .byte $03, $4E
    .byte $07, $74

    .byte $A3
    .byte $3B, $72
    .byte $3F, $4D
    .byte $03, $4F
    .byte $07, $75
    .byte $0B, $76

    .byte $A4
    .byte $3B, $73
    .byte $03, $42
    .byte $07, $14
    .byte $0B, $77

    .byte con_FF



off_B4E6:
    .byte $74, $75, $76, $77

    .byte $A0
    .byte $30, $01
    .byte $34, $01
    .byte $38, $01
    .byte $3C, $01
    .byte $00, $01
    .byte $04, $01

    .byte con_FF



off_B4F8:
    .byte $74, $75, $7B, $67

    .byte $BE
    .byte $3C, $2D
    .byte $0F, $3E

    .byte $BF
    .byte $35, $30
    .byte $3B, $32
    .byte $3A, $44
    .byte $3C, $38
    .byte $00, $3A
    .byte $05, $34
    .byte $09, $36
    .byte $0F, $3F
    .byte $0D, $45

    .byte $A0

    .byte $9C

    .byte $CA, $03, $2E
    .byte $C2, $03, $2F
    .byte $37, $31
    .byte $35, $46
    .byte $39, $33
    .byte $3B, $02
    .byte $3C, $39
    .byte $00, $3B
    .byte $05, $35

    .byte $A1
    .byte $35, $40
    .byte $3A, $42
    .byte $3C, $41
    .byte $00, $43
    .byte $05, $37

    .byte $82

    .byte $CF, $01, $3D
    .byte $0F, $3C
    .byte $C1, $01, $45

    .byte $A0

    .byte $9F

    .byte $CC, $03, $02
    .byte $C4, $03, $02

    .byte con_FF



off_B547:
    .byte $60, $61, $62, $63

    .byte $B9
    .byte $3D, $1A

    .byte $BA
    .byte $3D, $1B
    .byte $01, $30
    .byte $05, $32

    .byte $BB
    .byte $3D, $1E
    .byte $01, $31
    .byte $05, $33

    .byte $BC
    .byte $3D, $1F
    .byte $05, $36

    .byte $A0
    .byte $3D, $18
    .byte $01, $34

    .byte $A1
    .byte $3D, $19
    .byte $01, $35
    .byte $05, $2B

    .byte $A2
    .byte $3D, $1C
    .byte $01, $37
    .byte $05, $2E

    .byte $A3
    .byte $3D, $1D
    .byte $01, $22
    .byte $05, $2F

    .byte con_FF



off_B57C:
    .byte $60, $61, $62, $63

    .byte $B9
    .byte $01, $20

    .byte $BA
    .byte $01, $21
    .byte $05, $23

    .byte $BB
    .byte $01, $24
    .byte $05, $26

    .byte $BC
    .byte $01, $25
    .byte $05, $36

    .byte $BF
    .byte $01, $28

    .byte $A0
    .byte $01, $29

    .byte $A1
    .byte $3D, $2A
    .byte $01, $2C
    .byte $05, $2B

    .byte $A2
    .byte $3D, $14
    .byte $01, $2D
    .byte $05, $2E

    .byte $A3
    .byte $3D, $15
    .byte $05, $2F

    .byte con_FF



off_B5AC:
    .byte $60, $61, $62, $63

    .byte $BE
    .byte $04, $08
    .byte $08, $0A

    .byte $BF
    .byte $00, $27
    .byte $04, $09
    .byte $08, $0B

    .byte $A0
    .byte $3C, $04
    .byte $00, $06
    .byte $04, $0C
    .byte $08, $0E

    .byte $A1
    .byte $38, $16
    .byte $3C, $05
    .byte $00, $07
    .byte $04, $0D
    .byte $08, $0F

    .byte $A2
    .byte $38, $17
    .byte $3C, $10
    .byte $00, $12
    .byte $04, $11
    .byte $08, $13

    .byte con_FF



off_B5DC:
    .byte $36, $37, $5E, $5F

    .byte con_jmp
    .word off_BC4E



off_B5E3:
    .byte $36, $37, $5E, $5F

    .byte con_jmp
    .word off_BC5A



off_B5EA:
    .byte $36, $37, $5E, $5F

    .byte con_jsr
    .word off_BC70

    .byte con_jmp
    .word off_BC4E



off_B5F4:
    .byte $36, $37, $5E, $5F

    .byte con_jsr
    .word off_BC70
    .byte con_jmp
    .word off_BC5A



off_B5FE:
    .byte $36, $37, $5E, $5F

    .byte con_jsr
    .word off_BC70

    .byte $A0
    .byte $02, $7F

    .byte $A2
    .byte $36, $7F
    .byte $3E, $7F
    .byte $02, $7F
    .byte $06, $7F

    .byte $A3
    .byte $36, $7F
    .byte $3E, $7F
    .byte $06, $7F

    .byte $A5

    .byte $9E

    .byte $C4, $02, $7F

    .byte $80

    .byte $C4, $02, $7F

    .byte $A7
    .byte $02, $7F

    .byte $A9
    .byte $3A, $7F

    .byte $AB
    .byte $02, $7F

    .byte con_FF



off_B62B:
    .byte $68, $69, $6A, $6B

    .byte $BC
    .byte $2B, $C0
    .byte $2F, $FE

    .byte $BD
    .byte $2B, $C1
    .byte $2F, $E0

    .byte $BE
    .byte $2B, $C4
    .byte $2F, $E1

    .byte $BF
    .byte $2B, $C5

    .byte $A0
    .byte $9F, $C4
    .byte $01, $F9

    .byte $A0
    .byte $80, $C4
    .byte $01, $FB

    .byte $A2
    .byte $2B, $C6
    .byte $2F, $E4

    .byte $A3
    .byte $2B, $C7
    .byte $2F, $E5

    .byte con_jmp
    .word off_BC74



off_B658:
    .byte $68, $69, $6A, $6B

    .byte $BC
    .byte $2B, $C8
    .byte $2F, $CA

    .byte $BD
    .byte $2B, $C9
    .byte $2F, $CB

    .byte $BE
    .byte $27, $C2
    .byte $2B, $CC
    .byte $2F, $CE

    .byte $BF
    .byte $27, $C3

    .byte $A0
    .byte $3E, $BC
    .byte $02, $BE
    .byte $03, $03

    .byte $A1
    .byte $3E, $BD
    .byte $02, $BF
    .byte $03, $03

    .byte $A2
    .byte $2B, $CD
    .byte $2F, $CF

    .byte $A3
    .byte $2B, $F8
    .byte $2F, $FA

    .byte con_jmp
    .word off_BC74



off_B68B:
    .byte $00, $00, $00, $00

    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00

    .byte con_FF



off_B6A0:
    .byte $68, $69, $6A, $6B

    .byte $BC
    .byte $2B, $C0
    .byte $2F, $FE

    .byte $BD
    .byte $2B, $C1
    .byte $2F, $E0

    .byte $BE
    .byte $2B, $C4
    .byte $2F, $E1

    .byte $BF
    .byte $2B, $C5

    .byte $A0
    .byte $3E, $BC
    .byte $02, $BE
    .byte $03, $03

    .byte $A1
    .byte $3E, $BD
    .byte $02, $BF
    .byte $03, $03

    .byte $A2
    .byte $2B, $C6
    .byte $2F, $E4

    .byte $A3
    .byte $2B, $C7
    .byte $2F, $E5

    .byte con_jmp
    .word off_BC74



off_B6D1:
    .byte $68, $69, $6A, $6B

    .byte $BF
    .byte $3F, $71
    .byte $03, $73
    .byte $07, $79

    .byte $A0
    .byte $3F, $74
    .byte $03, $76
    .byte $07, $7C

    .byte $A1
    .byte $3F, $75
    .byte $03, $77
    .byte $07, $7D

    .byte con_FF



off_B6EB:
    .byte $18, $19, $1A, $1B

    .byte $A0
    .byte $3C, $00
    .byte $3C, $00
    .byte $3C, $00
    .byte $3C, $00
    .byte $3C, $00
    .byte $3C, $00
    .byte $3C, $00
    .byte $3C, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00
    .byte $00, $00

    .byte con_FF



off_B711:
    .byte $28, $29, $2A, $2B

    .byte $A0
    .byte $3C, $01
    .byte $00, $01

    .byte $A1
    .byte $3C, $01
    .byte $00, $01

    .byte $A2
    .byte $3C, $01
    .byte $00, $01

    .byte $A3
    .byte $3C, $01
    .byte $00, $01

    .byte $A4
    .byte $3C, $01
    .byte $00, $01

    .byte $A5
    .byte $3C, $01
    .byte $00, $01

    .byte $A6
    .byte $3C, $01
    .byte $00, $01

    .byte con_FF



off_B739:
    .byte $6F, $69, $67, $7B

    .byte $A0
    .byte $01, $BB

    .byte $A1
    .byte $01, $BE

    .byte con_jmp
    .word off_BCA1



off_B746:
    .byte $6F, $69, $67, $7B

    .byte $A0
    .byte $01, $7E

    .byte $A1
    .byte $01, $7F

    .byte con_jmp
    .word off_BCA1



off_B753:
    .byte $6F, $69, $67, $7B

    .byte $A0
    .byte $3D, $C0
    .byte $01, $C2

    .byte $A1
    .byte $7D, $C0
    .byte $41, $C2

    .byte con_FF



off_B762:
    .byte $6F, $69, $67, $7B

    .byte $A0
    .byte $3D, $C1
    .byte $01, $C3

    .byte $A1
    .byte $7D, $C1
    .byte $41, $C3

    .byte con_FF



off_B771:
    .byte $6F, $69, $67, $7B

    .byte $A0
    .byte $3D, $28
    .byte $01, $2A

    .byte $A1
    .byte $7D, $28
    .byte $41, $2A

    .byte con_FF



off_B780:
    .byte $60, $61, $62, $63

    .byte $A0
    .byte $03, $4F

    .byte $A1
    .byte $03, $4F

    .byte $A2
    .byte $03, $4F

    .byte $A3
    .byte $03, $4F

    .byte $A4
    .byte $03, $4F

    .byte $A5
    .byte $03, $4F

    .byte con_FF



off_B797:
    .byte $60, $61, $76, $77

    .byte $A0
    .byte $03, $44
    .byte $07, $48

    .byte $A1
    .byte $03, $47
    .byte $07, $49

    .byte con_FF



off_B7A6:
    .byte $60, $61, $76, $77

    .byte $A0
    .byte $03, $F8

    .byte $A1
    .byte $03, $F9
    .byte $07, $FC

    .byte con_FF



off_B7B3:
    .byte $70, $71, $72, $73

    .byte $A0
    .byte $03, $08

    .byte con_FF



off_B7BB:
    .byte $7C, $71, $52, $53

    .byte $A0
    .byte $03, $16

    .byte $A1
    .byte $03, $10

    .byte $A2
    .byte $03, $0D

    .byte $A3
    .byte $03, $30

    .byte $A4
    .byte $03, $31

    .byte con_FF









; общие куски данных спрайтов
off_B7CF:
    .byte $BD

    .byte $9D

    .byte $C0, $11, $04
    .byte $11, $1A
    .byte $15, $30
    .byte $1B, $32

    .byte $BE

    .byte $9E

    .byte $C0, $35, $05
    .byte $C0, $15, $02
    .byte $09, $20

    .byte $83

    .byte $CF, $01, $22
    .byte $C7, $01, $23
    .byte $11, $1B
    .byte $15, $31

    .byte $BF
    .byte $39, $10
    .byte $3D, $03
    .byte $01, $09
    .byte $02, $0A

    .byte $81

    .byte $CD, $02, $0B
    .byte $C5, $02, $0E
    .byte $09, $21

    .byte $A0
    .byte $3D, $06
    .byte $01, $0C
    .byte $09, $24
    .byte $0D, $26

    .byte $A1
    .byte $3D, $07
    .byte $01, $0D

    .byte $81

    .byte $CD, $02, $0F
    .byte $09, $25
    .byte $0D, $27
    .byte $0F, $0A
    .byte $11, $08

    .byte $A2
    .byte $3D, $12
    .byte $01, $18

    .byte con_FF



off_B821:
    .byte $BD
    .byte $7D, $47
    .byte $41, $4D

    .byte $BE
    .byte $7D, $46
    .byte $41, $4C
    .byte $06, $11

    .byte $BF
    .byte $7D, $43
    .byte $41, $49
    .byte $06, $44

    .byte $82

    .byte $CE, $01, $34
    .byte $C6, $01, $35

    .byte $83

    .byte $CE, $01, $36
    .byte $C6, $01, $37
    .byte $C7, $3B, $0A
    .byte $09, $60
    .byte $0D, $62
    .byte $11, $1C
    .byte $1B, $1E

    .byte $A0
    .byte $79, $40
    .byte $7D, $42
    .byte $01, $64
    .byte $02, $41
    .byte $06, $45
    .byte $0D, $63
    .byte $11, $1D

    .byte $85

    .byte $CE, $01, $48
    .byte $1B, $1F

    .byte $A1
    .byte $79, $15
    .byte $7D, $17

    .byte $A2
    .byte $79, $14
    .byte $7D, $16

    .byte con_FF



off_B86D:
    .byte $BD
    .byte $7D, $12
    .byte $41, $18

    .byte $BE
    .byte $7D, $07
    .byte $41, $0D
    .byte $06, $11

    .byte $84

    .byte $CC, $01, $1A
    .byte $C4, $01, $1B

    .byte $85

    .byte $CC, $01, $30
    .byte $C4, $01, $31

    .byte $86

    .byte $CC, $03, $32

    .byte $BF
    .byte $7D, $06
    .byte $41, $0C
    .byte $06, $13

    .byte $82

    .byte $CC, $01, $20
    .byte $C4, $01, $21

    .byte $83

    .byte $CB, $01, $22
    .byte $C3, $01, $23
    .byte $0D, $26

    .byte $A0
    .byte $79, $10
    .byte $7D, $03
    .byte $41, $09
    .byte $42, $0A
    .byte $06, $19
    .byte $09, $25
    .byte $0D, $27
    .byte $0F, $0A
    .byte $11, $08

    .byte $A1

    .byte $9E

    .byte $C0, $75, $05
    .byte $C0, $55, $02

    .byte $A2

    .byte $9D

    .byte $C0, $51, $04

    .byte con_FF



off_B8C3:
    .byte $BD
    .byte $39, $14
    .byte $3D, $16

    .byte $BE
    .byte $39, $15
    .byte $3D, $17
    .byte $09, $34
    .byte $0D, $36

    .byte $BF
    .byte $39, $40
    .byte $3D, $42
    .byte $01, $09
    .byte $02, $0A
    .byte $09, $35
    .byte $0D, $37

    .byte $81

    .byte $CA, $02, $4A
    .byte $C2, $02, $4B

    .byte $A0
    .byte $3D, $43
    .byte $01, $49

    .byte $81

    .byte $C2, $02, $4E
    .byte $09, $60
    .byte $0D, $62
    .byte $C9, $3B, $0A
    .byte $11, $1C
    .byte $1B, $1E

    .byte $A1
    .byte $3D, $46
    .byte $01, $4C
    .byte $09, $61
    .byte $0D, $63
    .byte $11, $1D

    .byte $85

    .byte $CE, $01, $48
    .byte $1B, $1F

    .byte $A2
    .byte $3D, $47
    .byte $01, $4D

    .byte con_FF



off_B910:
    .byte $BC
    .byte $17, $5C
    .byte $1B, $5E

    .byte $BD
    .byte $17, $5D
    .byte $1B, $5F

    .byte con_rts



off_B91B:
    .byte $BB

    .byte $85

    .byte $C0, $3B, $F2
    .byte $C0, $1B, $F4

    .byte $BC

    .byte $85

    .byte $C0, $3B, $F3
    .byte $C0, $1B, $F5

    .byte $86
    .byte $CC, $03, $66

    .byte con_rts



off_B930:
    .byte $BC
    .byte $17, $5C
    .byte $1B, $5E

    .byte $BD
    .byte $17, $5D
    .byte $1B, $5F

    .byte con_rts



off_B93B:
    .byte $BD

    .byte $85

    .byte $CC, $3B, $F2
    .byte $CC, $1B, $F4
    .byte $C4, $3B, $F3
    .byte $C4, $1B, $F5
    .byte $1B, $66

    .byte con_rts



off_B94C:
    .byte $BD

    .byte $86

    .byte $CC, $03, $0E
    .byte $C4, $01, $0F

    .byte $87

    .byte $CC, $03, $25
    .byte $C4, $03, $30

    .byte $BE

    .byte $9C

    .byte $C0, $10, $2A
    .byte $11, $0C

    .byte $85

    .byte $CC, $01, $12
    .byte $C4, $01, $18

    .byte $86

    .byte $C4, $00, $1A

    .byte $BF
    .byte $33, $02
    .byte $37, $08
    .byte $39, $0A
    .byte $3D, $20
    .byte $01, $22
    .byte $05, $28
    .byte $06, $03
    .byte $0A, $04

    .byte $83

    .byte $CD, $01, $06
    .byte $C5, $00, $07
    .byte $11, $0D

    .byte $A0
    .byte $34, $09
    .byte $39, $0B
    .byte $3D, $21
    .byte $01, $23
    .byte $05, $29
    .byte $0A, $05

    .byte $A1
    .byte $3D, $24
    .byte $01, $26
    .byte $05, $2C
    .byte $0A, $10

    .byte $A2
    .byte $00, $27
    .byte $07, $2D
    .byte $0B, $2B

    .byte $A3
    .byte $08, $2E
    .byte $0C, $2F

    .byte con_FF



off_B9AA:
    .byte $BF
    .byte $03, $5C
    .byte $03, $56
    .byte $07, $5E
    .byte $07, $70
    .byte $0B, $74
    .byte $0B, $5A

    .byte $A0
    .byte $0B, $5B

    .byte $A1
    .byte $4B, $5B

    .byte $A2
    .byte $43, $5C
    .byte $43, $56
    .byte $47, $5E
    .byte $47, $70
    .byte $4B, $74
    .byte $4B, $5A

    .byte con_FF



off_B9CB:
    .byte $3A, $03

    .byte $A0
    .byte $36, $04
    .byte $3A, $06
    .byte $3E, $0C
    .byte $01, $0E
    .byte $05, $24
    .byte $09, $26
    .byte $0A, $2A
    .byte $0E, $2C

    .byte $A1
    .byte $36, $05
    .byte $3A, $07
    .byte $02, $0F
    .byte $06, $25

    .byte $A2
    .byte $37, $10
    .byte $02, $1A

    .byte $A3
    .byte $03, $1B

    .byte con_FF



off_B9F0:
    .byte $BD
    .byte $13, $B1
off_B9F3:
    .byte $0F, $9B
    .byte $0A, $99

    .byte $BE
    .byte $0B, $9C
    .byte $0F, $4B
    .byte $13, $B4

    .byte $BF
    .byte $0B, $9D
    .byte $09, $02
    .byte $0F, $9F

    .byte con_rts



off_BA06:
    .byte $BD
    .byte $17, $29

    .byte $BE
    .byte $15, $2B
    .byte $19, $0E

    .byte $BF
    .byte $0E, $04
    .byte $12, $06
    .byte $15, $0C
    .byte $19, $0F

    .byte $A0
    .byte $2F, $02
    .byte $30, $08
    .byte $34, $0A
    .byte $38, $20
    .byte $3D, $22
    .byte $01, $28
    .byte $0E, $05
    .byte $13, $07
    .byte $17, $0D
    .byte $18, $1A

    .byte $A1
    .byte $2F, $03
    .byte $33, $09
    .byte $37, $0B
    .byte $38, $41
    .byte $3D, $43
    .byte $01, $49
    .byte $0E, $10
    .byte $13, $12
    .byte $17, $18

    .byte $A2
    .byte $38, $44
    .byte $3C, $46
    .byte $3D, $27
    .byte $01, $4C
    .byte $05, $2F
    .byte $07, $2E
    .byte $09, $2A
    .byte $0F, $23

    .byte $A3
    .byte $38, $30
    .byte $3C, $32
    .byte $00, $4B
    .byte $04, $61
    .byte $08, $11
    .byte $0F, $21

    .byte $A4
    .byte $3C, $13
    .byte $00, $19
    .byte $04, $1B
    .byte con_FF



off_BA65:
    .byte $BF
    .byte $07, $58
    .byte $0B, $5A

    .byte $A1
    .byte $0F, $74

    .byte $A0
    .byte $0F, $71

    .byte con_rts



off_BA71:
    .byte $A2
    .byte $07, $5D
    .byte $0B, $5F

    .byte $A1
    .byte $03, $57

    .byte $A0
    .byte $03, $55
off_BA7C:
    .byte $07, $59
    .byte $0B, $5B

    .byte $A1
    .byte $07, $5C
    .byte $0B, $5E

    .byte con_jmp
    .word off_BA06



off_BA88:
    .byte $A0
    .byte $0F, $37
    .byte $13, $3D
    .byte $17, $3F

    .byte $A1
    .byte $0F, $62
    .byte $13, $68
    .byte $17, $6A

    .byte $A2
    .byte $09, $61
    .byte $0D, $63
    .byte $13, $69

    .byte $A3
    .byte $05, $1D
    .byte $09, $1F
    .byte $0D, $35

    .byte $A4
    .byte $05, $48
    .byte $09, $4A

    .byte $A5
    .byte $2F, $66
    .byte $03, $43
    .byte $07, $49

    .byte $A6
    .byte $2E, $67
    .byte $33, $6D
    .byte $37, $6F
    .byte $3E, $44
    .byte $02, $46
    .byte $07, $4C

    .byte $A7
    .byte $33, $78
    .byte $35, $40
    .byte $39, $42
    .byte $3D, $45
    .byte $01, $47
    .byte $02, $50
    .byte $06, $4D
    .byte $0B, $4F
    .byte $0F, $65

    .byte $A8
    .byte $35, $41
    .byte $3D, $50
    .byte $01, $52
    .byte $06, $58
    .byte $0B, $5A

    .byte $A9
    .byte $3D, $51
    .byte $01, $53
    .byte $06, $59

    .byte $AA
    .byte $3D, $54
    .byte $03, $56

    .byte $AB
    .byte $3F, $55
    .byte $03, $57

    .byte con_rts



off_BAED:
    .byte $37, $02
    .byte $3B, $02
    .byte $3F, $02
    .byte $03, $02
    .byte $07, $02
    .byte $0B, $02
    .byte $0F, $02

    .byte con_rts



off_BAFC:
    .byte $BD
    .byte $03, $22
    .byte $06, $28

    .byte $BE
    .byte $3F, $08
    .byte $03, $0A
    .byte $07, $20

    .byte $BF
    .byte $3F, $09
    .byte $3E, $02
    .byte $03, $0B
    .byte $07, $21

    .byte con_jmp
    .word off_B9CB



off_BB14:
    .byte $BD
    .byte $38, $30
    .byte $3C, $32
    .byte $00, $38
    .byte $06, $3A

    .byte $BE
    .byte $38, $31
    .byte $3C, $01
    .byte $00, $3C
    .byte $07, $3B

    .byte $BF
    .byte $3A, $34
    .byte $3C, $01
    .byte $00, $3C
    .byte $07, $3E

    .byte $A0
    .byte $37, $1F
    .byte $3A, $35
    .byte $3E, $37
    .byte $01, $3D
    .byte $05, $3F
    .byte $09, $26
    .byte $0A, $2A
    .byte $0E, $2C

    .byte $A1
    .byte $37, $27
    .byte $3B, $2D
    .byte $03, $33
    .byte $02, $1E
    .byte $07, $39
    .byte $06, $2F

    .byte $A2
    .byte $37, $10
    .byte $03, $36

    .byte $A3
    .byte $03, $1B

    .byte con_FF



off_BB56:
    .byte $BD
    .byte $00, $15
    .byte $04, $44

    .byte $BE
    .byte $3C, $11
    .byte $00, $29
    .byte $04, $2B

    .byte $BF
    .byte $3C, $14
    .byte $3E, $02
    .byte $00, $23
    .byte $07, $2E

    .byte con_jmp
    .word off_B9CB



off_BB6E:
    .byte $BD
    .byte $00, $15
    .byte $04, $17
    .byte $06, $1D

    .byte $BE
    .byte $3C, $11
    .byte $00, $29
    .byte $04, $46

    .byte $BF
    .byte $3C, $14
    .byte $3E, $02
    .byte $00, $45
    .byte $07, $3E

    .byte con_jmp
    .word off_B9CB



off_BB88:
    .byte $BD
    .byte $0A, $90
    .byte $0E, $92
    .byte $12, $98

    .byte $BE
    .byte $09, $91
    .byte $0A, $02
    .byte $0E, $93

    .byte $BF
    .byte $09, $94
    .byte $0E, $96

    .byte con_rts



off_BB9C:
    .byte con_jsr
    .word off_B9F0

    .byte $13, $B5

    .byte con_rts



off_BBA2:
    .byte $BC
    .byte $0F, $8D
    .byte $13, $8F

    .byte $BD
    .byte $13, $9A

    .byte con_jsr
    .word off_B9F3

    .byte $13, $B5

    .byte con_rts



off_BBB0:
    .byte $BC
    .byte $0F, $AC
    .byte $13, $AE

    .byte $BD
    .byte $13, $AF

    .byte con_jsr
    .word off_B9F3

    .byte $13, $B5

    .byte con_rts



off_BBBE:
    .byte $BE
    .byte $17, $A5

    .byte con_jsr
    .word off_B9F0
    .byte $13, $B0
    .byte $17, $B2

    .byte con_rts



off_BBC9:
    .byte $BE
    .byte $17, $AA

    .byte con_jsr
    .word off_B9F0

    .byte $13, $B8
    .byte $17, $AB

    .byte con_rts



off_BBD4:
    .byte $A7
    .byte $38, $0C

    .byte $A8
    .byte $34, $07
    .byte $38, $0D
    .byte $3F, $0F

    .byte $A9
    .byte $34, $12
    .byte $38, $18
    .byte $3C, $1A

    .byte con_jmp
    .word off_BA88



off_BBE8:
    .byte $A7
    .byte $38, $0C

    .byte $A8
    .byte $34, $11
    .byte $38, $13
    .byte $3F, $19

    .byte $A9
    .byte $34, $14
    .byte $38, $16
    .byte $3C, $1C

    .byte $AA
    .byte $30, $10
    .byte $34, $15
    .byte $38, $17

    .byte con_jmp
    .word off_BA88



off_BC03:
    .byte $A7
    .byte $38, $0E

    .byte $A8
    .byte $34, $20
    .byte $38, $22
    .byte $3F, $0F

    .byte $A9
    .byte $34, $21
    .byte $38, $23
    .byte $3C, $1A

    .byte $AA
    .byte $38, $26

    .byte con_jmp
    .word off_BA88



off_BC1A:
    .byte $A7
    .byte $38, $38

    .byte $A8
    .byte $34, $3A
    .byte $38, $2C
    .byte $3F, $2E

    .byte $A9
    .byte $38, $2D
    .byte $3C, $2F

    .byte con_jmp
    .word off_BA88



off_BC2C:
    .byte $BF
    .byte $13, $7D
    .byte $17, $BE

    .byte $A0
    .byte $17, $BF

    .byte $A1
    .byte $17, $6B

    .byte $A2
    .byte $13, $6C
    .byte $17, $6E

    .byte con_FF



off_BC3D:
    .byte $BF
    .byte $13, $7C
    .byte $17, $7E

    .byte $A0
    .byte $17, $7F

    .byte $A1
    .byte $17, $7A

    .byte $A2
    .byte $13, $79
    .byte $17, $7B

    .byte con_FF



off_BC4E:
    .byte $A5
    .byte $9E, $C4
    .byte $02, $7F

    .byte $80
    .byte $C4, $02, $7F

    .byte con_jmp
    .word off_BC63



off_BC5A:
    .byte $A5
    .byte $9E, $C4
    .byte $02, $7D

    .byte $80

    .byte $C4, $02, $7D
off_BC63:
    .byte $A0
    .byte $02, $7F

    .byte $A4
    .byte $02, $7F

    .byte $A8
    .byte $3E, $7F

    .byte $AC
    .byte $3E, $7F

    .byte con_FF



off_BC70:
    .byte $AD
    .byte $3A, $7F

    .byte con_rts



off_BC74:
    .byte $33, $E7
    .byte $37, $ED
    .byte $3B, $EF

    .byte $BD
    .byte $33, $E2
    .byte $37, $E8
    .byte $3B, $EA

    .byte $BE
    .byte $33, $E3
    .byte $37, $E9
    .byte $3B, $EB

    .byte $A2
    .byte $33, $E6
    .byte $37, $EC
    .byte $3B, $EE

    .byte con_FF



off_BC90:
    .byte $BF
    .byte $3F, $50

    .byte $A0
    .byte $3B, $75
    .byte $3F, $51

    .byte $A1
    .byte $7B, $75
    .byte $7F, $51

    .byte $A2
    .byte $7F, $50

    .byte con_FF



off_BCA1:
    .byte $A0
    .byte $3D, $B9

    .byte $A1
    .byte $3D, $BC
    .byte con_FF
