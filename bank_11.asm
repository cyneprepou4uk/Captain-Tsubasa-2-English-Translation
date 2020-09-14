.segment "BANK_11"
.include "copy_bank_ram.inc"
; тут только данные

; основные данные анимации
con_повторы             = $E0
con_повторить           = $F0
con_координаты_Y_X      = $F1
con_F5                  = $F5
con_F6                  = $F6
con_физика              = $F7   ; 1й байт = скорость + угол + направление (00/80), 2й = разгон X, 3й = разгон Y
con_F9                  = $F9
con_развилка            = $FA
con_выход               = $FF

; данные спрайтов
con_jsr                 = $FA
con_jmp                 = $FB
con_FE                  = $FE
con_FF                  = $FF

; поинтер находится в 0x0010DF, начало таблицы в банке 10
- D - I - 0x014010 11:A000: BE A0     .word off_A0BE_6D_цубаса_с_мячом_серый
- D - I - 0x014012 11:A002: C6 A0     .word off_A0C6_6E_цубаса_появляется_и_бежит_с_мячом
- D - I - 0x014014 11:A004: F0 A0     .word off_A0F0_6F_пьер_появляется_и_бежит_с_мячом
- D - I - 0x014016 11:A006: 1A A1     .word off_A11A_70_цубаса_замах_по_мячу_белый
- D - I - 0x014018 11:A008: 26 A1     .word off_A126_71_анимация_замаха_по_мячу_цубаса_драйв_удар
- D - I - 0x01401A 11:A00A: 4C A1     .word off_A14C_72_джаиро_вид_сверху
- D - I - 0x01401C 11:A00C: 58 A1     .word off_A158_73_нога_перед_ударом_по_мячу
- D - I - 0x01401E 11:A00E: 65 A1     .word off_A165_74_нога_и_мяч_во_время_удара
- D - I - 0x014020 11:A010: 86 A1     .word off_A186_75
- D - I - 0x014022 11:A012: 8F A1     .word off_A18F_76
- D - I - 0x014024 11:A014: 99 A1     .word off_A199_77
- D - I - 0x014026 11:A016: A2 A1     .word off_A1A2_78
- D - I - 0x014028 11:A018: AB A1     .word off_A1AB_79_лицо_шнайдера
- D - I - 0x01402A 11:A01A: B2 A1     .word off_A1B2_7A_лицо_пьера_слева
- D - I - 0x01402C 11:A01C: BA A1     .word off_A1BA_7B_лицо_наполеона_справа
- D - I - 0x01402E 11:A01E: C1 A1     .word off_A1C1_7C
- D - I - 0x014030 11:A020: CA A1     .word off_A1CA_7D_вакабаяши_ловит_мяч
- D - I - 0x014032 11:A022: FC A1     .word off_A1FC_7E_гертис_ловит_мяч
- D - I - 0x014034 11:A024: 1C A2     .word off_A21C_7F_меон_ловит_мяч
- D - I - 0x014036 11:A026: 3E A2     .word off_A23E_80_черный_голкипер_пропускает_мяч
- D - I - 0x014038 11:A028: 4A A2     .word off_A24A_81_громкоговоритель_медленно_движется_влево
- D - I - 0x01403A 11:A02A: 5F A2     .word off_A25F_82_хюга_подкатом_забирает_мяч
- D - I - 0x01403C 11:A02C: 9E A2     .word off_A29E_83_удар_пьера_и_наполеона
- D - I - 0x01403E 11:A02E: CB A2     .word off_A2CB_84_удар_мисаки_и_цубасы
- D - I - 0x014040 11:A030: F8 A2     .word off_A2F8_85_мяч_в_сетке
- D - I - 0x014042 11:A032: 05 A3     .word off_A305_86_мяч_рвет_сетку
- D - I - 0x014044 11:A034: 18 A3     .word off_A318_87_мяч_подброшенный_джаиро_вид_сверху
- D - I - 0x014046 11:A036: 66 A3     .word off_A366_88
- D - I - 0x014048 11:A038: 6F A3     .word off_A36F_89_крученый_мяч_опускается_поднимается_для_удара
- D - I - 0x01404A 11:A03A: B8 A3     .word off_A3B8_8A_письмо_в_руке
- D - I - 0x01404C 11:A03C: C5 A3     .word off_A3C5_8B_арбитр_свисток_рука
- D - I - 0x01404E 11:A03E: CC A3     .word off_A3CC_8C_меон_в_воротах
- D - I - 0x014050 11:A040: D3 A3     .word off_A3D3_8D_заяц
- D - I - 0x014052 11:A042: DA A3     .word off_A3DA_8E_ХЗ_какой_то_желтый_шар_вверху
- D - I - 0x014054 11:A044: E1 A3     .word off_A3E1_8F_часть_сетки_кубка
- D - I - 0x014056 11:A046: E8 A3     .word off_A3E8_90_ХЗ_белый_прямоугольник
- D - I - 0x014058 11:A048: EF A3     .word off_A3EF_91
- D - I - 0x01405A 11:A04A: F6 A3     .word off_A3F6_92
- D - I - 0x01405C 11:A04C: 0C A4     .word off_A40C_93_анимация_замаха_по_мячу_нога_джаиро_история_роберто
- D - I - 0x01405E 11:A04E: 34 A4     .word off_A434_94_полет_мяча_справа_налево
- D - I - 0x014060 11:A050: 49 A4     .word off_A449_95_флаг_аргентины
- D - I - 0x014062 11:A052: 56 A4     .word off_A456_96_флаг_франции
- D - I - 0x014064 11:A054: 63 A4     .word off_A463_97_флаг_германии
- D - I - 0x014066 11:A056: 70 A4     .word off_A470_98_флаг_бразилии_на_месте
- D - I - 0x014068 11:A058: 77 A4     .word off_A477_99_флаг_бразилии_в_движении
- D - I - 0x01406A 11:A05A: 84 A4     .word off_A484_9A_мяч_опускается_без_кручения
- D - I - 0x01406C 11:A05C: 90 A4     .word off_A490_9B_мелкие_игроки_в_воображении_цубасы
- D - I - 0x01406E 11:A05E: 97 A4     .word off_A497_9C_цубаса_и_санае_со_спины_в_парке_черные
- D - I - 0x014070 11:A060: AA A4     .word off_A4AA_9D_ишизаки_и_йоко_прячутся_за_стеной
- D - I - 0x014072 11:A062: B7 A4     .word off_A4B7_9E_шнайдер_или_джаиро_замах_по_мячу
- D - I - 0x014074 11:A064: C3 A4     .word off_A4C3_9F_анимация_замаха_по_мячу_нога_белая
- D - I - 0x014076 11:A066: EB A4     .word off_A4EB_A0_полет_мяча_справа_налево_и_остановка
- D - I - 0x014078 11:A068: F7 A4     .word off_A4F7_A1_джаиро_бежит_с_мячом
- D - I - 0x01407A 11:A06A: 0E A5     .word off_A50E_A2_медленный_полет_мяча_справа_налево
- D - I - 0x01407C 11:A06C: 2A A5     .word off_A52A_A3_рукопожатие
- D - I - 0x01407E 11:A06E: 46 A5     .word off_A546_A4_лицо_цубасы
- D - I - 0x014080 11:A070: 4D A5     .word off_A54D_A5_мяч_опускается_без_кручения_джаиро_история_роберто
- D - I - 0x014082 11:A072: 59 A5     .word off_A559_A6_тройной_полет_мяча_справа_налево
- D - I - 0x014084 11:A074: 70 A5     .word off_A570_A7_мяч_застрял_в_сетке_и_опускается
- D - I - 0x014086 11:A076: D5 A5     .word off_A5D5_A8_цубаса_стоит_после_удара_циклоном
- D - I - 0x014088 11:A078: ED A5     .word off_A5ED_A9_самолет_летит_справа_налево
- D - I - 0x01408A 11:A07A: 02 A6     .word off_A602_AA
- D - I - 0x01408C 11:A07C: 20 A6     .word off_A620_AB_цубаса_со_спины_в_полный_рост_стоит
- D - I - 0x01408E 11:A07E: 27 A6     .word off_A627_AC
- D - I - 0x014090 11:A080: 37 A6     .word off_A637_AD_глаза_цубасы_злой_крупным_планом_слева
- D - I - 0x014092 11:A082: 3E A6     .word off_A63E_AE_глаза_цубасы_в_шоке_крупным_планом
- D - I - 0x014094 11:A084: 45 A6     .word off_A645_AF
- D - I - 0x014096 11:A086: 50 A6     .word off_A650_B0
- D - I - 0x014098 11:A088: 5C A6     .word off_A65C_B1_тикание_часов_на_табло_1
- D - I - 0x01409A 11:A08A: 68 A6     .word off_A668_B2_тикание_часов_на_табло_2
- D - I - 0x01409C 11:A08C: 74 A6     .word off_A674_B3_часы_на_табло_меняются_на_12
- D - I - 0x01409E 11:A08E: 81 A6     .word off_A681_B4_самолет_на_месте_опускается
- D - I - 0x0140A0 11:A090: 95 A6     .word off_A695_B5_цубаса_со_спины_в_полный_рост_движется_влево
- D - I - 0x0140A2 11:A092: A3 A6     .word off_A6A3_B6_ХЗ_черный_прямоугольник
- D - I - 0x0140A4 11:A094: AA A6     .word off_A6AA_B7_глаза_и_рот_санае_крупным_планом_разговор
- D - I - 0x0140A6 11:A096: B4 A6     .word off_A6B4_B8_глаза_и_рот_санае_крупным_планом_в_шоке
- D - I - 0x0140A8 11:A098: BB A6     .word off_A6BB_B9_глаза_цубасы_злой_крупным_планом_справа
- D - I - 0x0140AA 11:A09A: C2 A6     .word off_A6C2_BA_ишизаки_барабаны_обезьянка
- D - I - 0x0140AC 11:A09C: DD A6     .word off_A6DD_BB_логотип_японский_быстрое_движение_влево_потом_вправо
- D - I - 0x0140AE 11:A09E: F3 A6     .word off_A6F3_BC_заяц
- D - I - 0x0140B0 11:A0A0: FA A6     .word off_A6FA_BD
- D - I - 0x0140B2 11:A0A2: 01 A7     .word off_A701_BE_мяч_подброшенный_джаиро_опускается_вид_сверху
- D - I - 0x0140B4 11:A0A4: 3E A7     .word off_A73E_BF_джаиро_замахивается_и_опускается
- D - I - 0x0140B6 11:A0A6: 50 A7     .word off_A750_C0
- D - I - 0x0140B8 11:A0A8: 57 A7     .word off_A757_C1
- D - I - 0x0140BA 11:A0AA: 65 A7     .word off_A765_C2_джек_выходит_и_поздравляет
- D - I - 0x0140BC 11:A0AC: 84 A7     .word off_A784_C3_джек_уходит_с_поля
- D - I - 0x0140BE 11:A0AE: 9E A7     .word off_A79E_C4_джек_улетает_и_появляется_и_садится_на_голову
- D - I - 0x0140C0 11:A0B0: D8 A7     .word off_A7D8_C5_объект_для_скрытия_прыгающего_джека
- D - I - 0x0140C2 11:A0B2: ED A7     .word off_A7ED_C6_полоска_для_логотипа_движется_вправо
- D - I - 0x0140C4 11:A0B4: FA A7     .word off_A7FA_C7_мерцание_звездой_на_полоске_логотипа
- D - I - 0x0140C6 11:A0B6: 11 A8     .word off_A811_C8
- D - I - 0x0140C8 11:A0B8: 18 A8     .word off_A818_C9
- D - I - 0x0140CA 11:A0BA: 1F A8     .word off_A81F_CA_движение_надписи_VOL_II_влево_вверху
- D - I - 0x0140CC 11:A0BC: 2B A8     .word off_A82B_CB_движение_надписи_VOL_II_влево_внизу



off_A0BE_6D_цубаса_с_мячом_серый:
- D - I - 0x0140CE 11:A0BE: 3D        .byte $3D

- D - I - 0x0140CF 11:A0BF: F5        .byte con_F5

- D - I - 0x0140D0 11:A0C0: F1        .byte con_координаты_Y_X
- D - I - 0x0140D1 11:A0C1: 1E        .byte $1E
- D - I - 0x0140D2 11:A0C2: 36        .byte $36

- D - I - 0x0140D3 11:A0C3: 88 37     .dbyt off_A837 - $2000

- D - I - 0x0140D5 11:A0C5: FF        .byte con_выход



off_A0C6_6E_цубаса_появляется_и_бежит_с_мячом:
- D - I - 0x0140D6 11:A0C6: 00        .byte $00

- D - I - 0x0140D7 11:A0C7: F1        .byte con_координаты_Y_X
- D - I - 0x0140D8 11:A0C8: 1E        .byte $1E
- D - I - 0x0140D9 11:A0C9: F6        .byte $F6

- D - I - 0x0140DA 11:A0CA: F7        .byte con_физика
- D - I - 0x0140DB 11:A0CB: 05        .byte $05
- D - I - 0x0140DC 11:A0CC: 00        .byte $00
- D - I - 0x0140DD 11:A0CD: 00        .byte $00

- D - I - 0x0140DE 11:A0CE: E2        .byte con_повторы + $02

- D - I - 0x0140DF 11:A0CF: F5        .byte con_F5

- D - I - 0x0140E0 11:A0D0: 88 37     .dbyt off_A837 - $2000
- D - I - 0x0140E2 11:A0D2: 01        .byte $01

- D - I - 0x0140E3 11:A0D3: 88 6F     .dbyt off_A86F - $2000
- D - I - 0x0140E5 11:A0D5: 01        .byte $01

- D - I - 0x0140E6 11:A0D6: 88 BA     .dbyt off_A8BA - $2000
- D - I - 0x0140E8 11:A0D8: 01        .byte $01

- D - I - 0x0140E9 11:A0D9: 89 08     .dbyt off_A908 - $2000
- D - I - 0x0140EB 11:A0DB: 01        .byte $01

- D - I - 0x0140EC 11:A0DC: F0        .byte con_повторить

@бесконечный_цикл:
- D - I - 0x0140ED 11:A0DD: F5        .byte con_F5

- D - I - 0x0140EE 11:A0DE: 88 37     .dbyt off_A837 - $2000

- D - I - 0x0140F0 11:A0E0: F7        .byte con_физика
- D - I - 0x0140F1 11:A0E1: 00        .byte $00
- D - I - 0x0140F2 11:A0E2: 00        .byte $00
- D - I - 0x0140F3 11:A0E3: 02        .byte $02

- D - I - 0x0140F4 11:A0E4: 03        .byte $03

- D - I - 0x0140F5 11:A0E5: 88 6F     .dbyt off_A86F - $2000
- D - I - 0x0140F7 11:A0E7: 03        .byte $03

- D - I - 0x0140F8 11:A0E8: 88 BA     .dbyt off_A8BA - $2000
- D - I - 0x0140FA 11:A0EA: 03        .byte $03

- D - I - 0x0140FB 11:A0EB: 89 08     .dbyt off_A908 - $2000
- D - I - 0x0140FD 11:A0ED: 03        .byte $03

- D - I - 0x0140FE 11:A0EE: A0 DD     .dbyt @бесконечный_цикл



off_A0F0_6F_пьер_появляется_и_бежит_с_мячом:
- D - I - 0x014100 11:A0F0: 2D        .byte $2D

- D - I - 0x014101 11:A0F1: F1        .byte con_координаты_Y_X
- D - I - 0x014102 11:A0F2: 1E        .byte $1E
- D - I - 0x014103 11:A0F3: F6        .byte $F6

- D - I - 0x014104 11:A0F4: F7        .byte con_физика
- D - I - 0x014105 11:A0F5: 05        .byte $05
- D - I - 0x014106 11:A0F6: 00        .byte $00
- D - I - 0x014107 11:A0F7: 00        .byte $00

- D - I - 0x014108 11:A0F8: E2        .byte con_повторы + $02

- D - I - 0x014109 11:A0F9: F5        .byte con_F5

- D - I - 0x01410A 11:A0FA: 88 52     .dbyt off_A852 - $2000
- D - I - 0x01410C 11:A0FC: 01        .byte $01

- D - I - 0x01410D 11:A0FD: 88 93     .dbyt off_A893 - $2000
- D - I - 0x01410F 11:A0FF: 01        .byte $01

- D - I - 0x014110 11:A100: 88 DF     .dbyt off_A8DF - $2000
- D - I - 0x014112 11:A102: 01        .byte $01

- D - I - 0x014113 11:A103: 89 2F     .dbyt off_A92F - $2000
- D - I - 0x014115 11:A105: 01        .byte $01

- D - I - 0x014116 11:A106: F0        .byte con_повторить

@бесконечный_цикл:
- D - I - 0x014117 11:A107: F5        .byte con_F5

- D - I - 0x014118 11:A108: 88 52     .dbyt off_A852 - $2000

- D - I - 0x01411A 11:A10A: F7        .byte con_физика
- D - I - 0x01411B 11:A10B: 00        .byte $00
- D - I - 0x01411C 11:A10C: 00        .byte $00
- D - I - 0x01411D 11:A10D: 02        .byte $02

- D - I - 0x01411E 11:A10E: 03        .byte $03

- D - I - 0x01411F 11:A10F: 88 93     .dbyt off_A893 - $2000
- D - I - 0x014121 11:A111: 03        .byte $03

- D - I - 0x014122 11:A112: 88 DF     .dbyt off_A8DF - $2000
- D - I - 0x014124 11:A114: 03        .byte $03

- D - I - 0x014125 11:A115: 89 2F     .dbyt off_A92F - $2000
- D - I - 0x014127 11:A117: 03        .byte $03

- D - I - 0x014128 11:A118: A1 07     .dbyt @бесконечный_цикл



off_A11A_70_цубаса_замах_по_мячу_белый:
- D - I - 0x01412A 11:A11A: 3C        .byte $3C

- D - I - 0x01412B 11:A11B: F1        .byte con_координаты_Y_X
- D - I - 0x01412C 11:A11C: AE        .byte $AE
- D - I - 0x01412D 11:A11D: 44        .byte $44

- D - I - 0x01412E 11:A11E: 89 59     .dbyt off_A959 - $2000

- D - I - 0x014130 11:A120: F7        .byte con_физика
- D - I - 0x014131 11:A121: 20        .byte $20
- D - I - 0x014132 11:A122: FF        .byte $FF
- D - I - 0x014133 11:A123: 00        .byte $00

- D - I - 0x014134 11:A124: 50        .byte $50

- D - I - 0x014135 11:A125: FF        .byte con_выход



off_A126_71_анимация_замаха_по_мячу_цубаса_драйв_удар:
- D - I - 0x014136 11:A126: 3C        .byte $3C

- D - I - 0x014137 11:A127: F1        .byte con_координаты_Y_X
- D - I - 0x014138 11:A128: AB        .byte $AB
- D - I - 0x014139 11:A129: 44        .byte $44

- D - I - 0x01413A 11:A12A: 89 73     .dbyt off_A973 - $2000

- D - I - 0x01413C 11:A12C: F7        .byte con_физика
- D - I - 0x01413D 11:A12D: 20        .byte $20
- D - I - 0x01413E 11:A12E: FF        .byte $FF
- D - I - 0x01413F 11:A12F: 00        .byte $00

- D - I - 0x014140 11:A130: 50        .byte $50

- D - I - 0x014141 11:A131: EA        .byte con_повторы + $0A

- D - I - 0x014142 11:A132: F7        .byte con_физика
- D - I - 0x014143 11:A133: 2E        .byte $2E
- D - I - 0x014144 11:A134: 00        .byte $00
- D - I - 0x014145 11:A135: 00        .byte $00

- D - I - 0x014146 11:A136: 89 73     .dbyt off_A973 - $2000
- D - I - 0x014148 11:A138: 01        .byte $01

- D - I - 0x014149 11:A139: F7        .byte con_физика
- D - I - 0x01414A 11:A13A: E2        .byte $E2
- D - I - 0x01414B 11:A13B: 00        .byte $00
- D - I - 0x01414C 11:A13C: 00        .byte $00

- D - I - 0x01414D 11:A13D: 89 73     .dbyt off_A973 - $2000
- D - I - 0x01414F 11:A13F: 01        .byte $01

- D - I - 0x014150 11:A140: F0        .byte con_повторить

- D - I - 0x014151 11:A141: F7        .byte con_физика
- D - I - 0x014152 11:A142: 79        .byte $79
- D - I - 0x014153 11:A143: 00        .byte $00
- D - I - 0x014154 11:A144: 00        .byte $00

- D - I - 0x014155 11:A145: 03        .byte $03

- D - I - 0x014156 11:A146: F1        .byte con_координаты_Y_X
- D - I - 0x014157 11:A147: 3E        .byte $3E
- D - I - 0x014158 11:A148: BE        .byte $BE

- D - I - 0x014159 11:A149: 89 73     .dbyt off_A973 - $2000

- D - I - 0x01415B 11:A14B: FF        .byte con_выход



off_A14C_72_джаиро_вид_сверху:
- D - I - 0x01415C 11:A14C: 14        .byte $14

- D - I - 0x01415D 11:A14D: F1        .byte con_координаты_Y_X
- D - I - 0x01415E 11:A14E: 1E        .byte $1E
- D - I - 0x01415F 11:A14F: 4E        .byte $4E

- D - I - 0x014160 11:A150: 90 6B     .dbyt off_B06B - $2000

- D - I - 0x014162 11:A152: F7        .byte con_физика
- D - I - 0x014163 11:A153: 2E        .byte $2E
- D - I - 0x014164 11:A154: 00        .byte $00
- D - I - 0x014165 11:A155: 00        .byte $00

- D - I - 0x014166 11:A156: 07        .byte $07

- D - I - 0x014167 11:A157: FF        .byte con_выход



off_A158_73_нога_перед_ударом_по_мячу:
- D - I - 0x014168 11:A158: 37        .byte $37

- D - I - 0x014169 11:A159: F1        .byte con_координаты_Y_X
- D - I - 0x01416A 11:A15A: 30        .byte $30
- D - I - 0x01416B 11:A15B: 54        .byte $54

- D - I - 0x01416C 11:A15C: 8A 19     .dbyt off_AA19 - $2000
- D - I - 0x01416E 11:A15E: 01        .byte $01

- D - I - 0x01416F 11:A15F: F1        .byte con_координаты_Y_X
- D - I - 0x014170 11:A160: 30        .byte $30
- D - I - 0x014171 11:A161: BE        .byte $BE

- D - I - 0x014172 11:A162: 8A 19     .dbyt off_AA19 - $2000

- D - I - 0x014174 11:A164: FF        .byte con_выход



off_A165_74_нога_и_мяч_во_время_удара:
- D - I - 0x014175 11:A165: 37        .byte $37

- D - I - 0x014176 11:A166: F1        .byte con_координаты_Y_X
- D - I - 0x014177 11:A167: 30        .byte $30
- D - I - 0x014178 11:A168: 44        .byte $44

- D - I - 0x014179 11:A169: 89 DD     .dbyt off_A9DD - $2000
- D - I - 0x01417B 11:A16B: 01        .byte $01

- D - I - 0x01417C 11:A16C: E9        .byte con_повторы + $09

- D - I - 0x01417D 11:A16D: F1        .byte con_координаты_Y_X
- D - I - 0x01417E 11:A16E: 30        .byte $30
- D - I - 0x01417F 11:A16F: 3C        .byte $3C

- D - I - 0x014180 11:A170: 8A 3E     .dbyt off_AA3E - $2000
- D - I - 0x014182 11:A172: 01        .byte $01

- D - I - 0x014183 11:A173: F1        .byte con_координаты_Y_X
- D - I - 0x014184 11:A174: 30        .byte $30
- D - I - 0x014185 11:A175: 3B        .byte $3B

- D - I - 0x014186 11:A176: 8A 3E     .dbyt off_AA3E - $2000
- D - I - 0x014188 11:A178: 01        .byte $01

- D - I - 0x014189 11:A179: F0        .byte con_повторить

- D - I - 0x01418A 11:A17A: F1        .byte con_координаты_Y_X
- D - I - 0x01418B 11:A17B: 30        .byte $30
- D - I - 0x01418C 11:A17C: 20        .byte $20

- D - I - 0x01418D 11:A17D: 8A 80     .dbyt off_AA80 - $2000
- D - I - 0x01418F 11:A17F: 01        .byte $01

- D - I - 0x014190 11:A180: F1        .byte con_координаты_Y_X
- D - I - 0x014191 11:A181: 30        .byte $30
- D - I - 0x014192 11:A182: A0        .byte $A0

- D - I - 0x014193 11:A183: 8A 80     .dbyt off_AA80 - $2000

- D - I - 0x014195 11:A185: FF        .byte con_выход



off_A186_75:
- D - I - 0x014196 11:A186: 01        .byte $01

- D - I - 0x014197 11:A187: F1        .byte con_координаты_Y_X
- D - I - 0x014198 11:A188: 30        .byte $30
- D - I - 0x014199 11:A189: BC        .byte $BC

- D - I - 0x01419A 11:A18A: 8A 8C     .dbyt off_AA8C - $2000

- D - I - 0x01419C 11:A18C: F9        .byte con_F9

- D - I - 0x01419D 11:A18D: 1E        .byte $1E

- D - I - 0x01419E 11:A18E: FF        .byte con_выход



off_A18F_76:
- D - I - 0x01419F 11:A18F: 01        .byte $01

- D - I - 0x0141A0 11:A190: F1        .byte con_координаты_Y_X
- D - I - 0x0141A1 11:A191: 30        .byte $30
- D - I - 0x0141A2 11:A192: C0        .byte $C0

- D - I - 0x0141A3 11:A193: F5        .byte con_F5

- D - I - 0x0141A4 11:A194: 8A E7     .dbyt off_AAE7 - $2000

- D - I - 0x0141A6 11:A196: F9        .byte con_F9

- D - I - 0x0141A7 11:A197: 1E        .byte $1E

- D - I - 0x0141A8 11:A198: FF        .byte con_выход



off_A199_77:
- D - I - 0x0141A9 11:A199: 06        .byte $06

- D - I - 0x0141AA 11:A19A: F1        .byte con_координаты_Y_X
- D - I - 0x0141AB 11:A19B: 30        .byte $30
- D - I - 0x0141AC 11:A19C: BC        .byte $BC

- D - I - 0x0141AD 11:A19D: 8B 4A     .dbyt off_AB4A - $2000

- D - I - 0x0141AF 11:A19F: F9        .byte con_F9

- D - I - 0x0141B0 11:A1A0: 1E        .byte $1E

- D - I - 0x0141B1 11:A1A1: FF        .byte con_выход



off_A1A2_78:
- D - I - 0x0141B2 11:A1A2: 22        .byte $22

- D - I - 0x0141B3 11:A1A3: F1        .byte con_координаты_Y_X
- D - I - 0x0141B4 11:A1A4: 30        .byte $30
- D - I - 0x0141B5 11:A1A5: BC        .byte $BC

- D - I - 0x0141B6 11:A1A6: 8B A8     .dbyt off_ABA8 - $2000

- D - I - 0x0141B8 11:A1A8: F9        .byte con_F9

- D - I - 0x0141B9 11:A1A9: 1E        .byte $1E

- D - I - 0x0141BA 11:A1AA: FF        .byte con_выход



off_A1AB_79_лицо_шнайдера:
- D - I - 0x0141BB 11:A1AB: 30        .byte $30

- D - I - 0x0141BC 11:A1AC: F1        .byte con_координаты_Y_X
- D - I - 0x0141BD 11:A1AD: 30        .byte $30
- D - I - 0x0141BE 11:A1AE: 3C        .byte $3C

- D - I - 0x0141BF 11:A1AF: 8B F9     .dbyt off_ABF9 - $2000

- D - I - 0x0141C1 11:A1B1: FF        .byte con_выход



off_A1B2_7A_лицо_пьера_слева:
- D - I - 0x0141C2 11:A1B2: 2E        .byte $2E

- D - I - 0x0141C3 11:A1B3: F1        .byte con_координаты_Y_X
- D - I - 0x0141C4 11:A1B4: 30        .byte $30
- D - I - 0x0141C5 11:A1B5: 30        .byte $30

- D - I - 0x0141C6 11:A1B6: F5        .byte con_F5

- D - I - 0x0141C7 11:A1B7: 8C 5A     .dbyt off_AC5A - $2000

- D - I - 0x0141C9 11:A1B9: FF        .byte con_выход



off_A1BA_7B_лицо_наполеона_справа:
- D - I - 0x0141CA 11:A1BA: 2F        .byte $2F

- D - I - 0x0141CB 11:A1BB: F1        .byte con_координаты_Y_X
- D - I - 0x0141CC 11:A1BC: 30        .byte $30
- D - I - 0x0141CD 11:A1BD: 4C        .byte $4C

- D - I - 0x0141CE 11:A1BE: 8C BD     .dbyt off_ACBD - $2000

- D - I - 0x0141D0 11:A1C0: FF        .byte con_выход



off_A1C1_7C:
- D - I - 0x0141D1 11:A1C1: 08        .byte $08

- D - I - 0x0141D2 11:A1C2: F1        .byte con_координаты_Y_X
- D - I - 0x0141D3 11:A1C3: 30        .byte $30
- D - I - 0x0141D4 11:A1C4: C4        .byte $C4

- D - I - 0x0141D5 11:A1C5: 8D 14     .dbyt off_AD14 - $2000

- D - I - 0x0141D7 11:A1C7: F9        .byte con_F9

- D - I - 0x0141D8 11:A1C8: 1E        .byte $1E

- D - I - 0x0141D9 11:A1C9: FF        .byte con_выход



off_A1CA_7D_вакабаяши_ловит_мяч:
- D - I - 0x0141DA 11:A1CA: 07        .byte $07

- D - I - 0x0141DB 11:A1CB: F1        .byte con_координаты_Y_X
- D - I - 0x0141DC 11:A1CC: 06        .byte $06
- D - I - 0x0141DD 11:A1CD: 4E        .byte $4E

- D - I - 0x0141DE 11:A1CE: EC        .byte con_повторы + $0C

- D - I - 0x0141DF 11:A1CF: F7        .byte con_физика
- D - I - 0x0141E0 11:A1D0: 2F        .byte $2F
- D - I - 0x0141E1 11:A1D1: 00        .byte $00
- D - I - 0x0141E2 11:A1D2: 00        .byte $00

- D - I - 0x0141E3 11:A1D3: 8D 72     .dbyt off_AD72 - $2000
- D - I - 0x0141E5 11:A1D5: 01        .byte $01

- D - I - 0x0141E6 11:A1D6: F7        .byte con_физика
- D - I - 0x0141E7 11:A1D7: 00        .byte $00
- D - I - 0x0141E8 11:A1D8: 00        .byte $00
- D - I - 0x0141E9 11:A1D9: 00        .byte $00

- D - I - 0x0141EA 11:A1DA: 8D 72     .dbyt off_AD72 - $2000
- D - I - 0x0141EC 11:A1DC: 01        .byte $01

- D - I - 0x0141ED 11:A1DD: F0        .byte con_повторить

- D - I - 0x0141EE 11:A1DE: E6        .byte con_повторы + $06

- D - I - 0x0141EF 11:A1DF: F7        .byte con_физика
- D - I - 0x0141F0 11:A1E0: 00        .byte $00
- D - I - 0x0141F1 11:A1E1: 01        .byte $01
- D - I - 0x0141F2 11:A1E2: FF        .byte $FF

- D - I - 0x0141F3 11:A1E3: 8D C2     .dbyt off_ADC2 - $2000
- D - I - 0x0141F5 11:A1E5: 01        .byte $01

- D - I - 0x0141F6 11:A1E6: 92 58     .dbyt off_B258 - $2000
- D - I - 0x0141F8 11:A1E8: 01        .byte $01

- D - I - 0x0141F9 11:A1E9: 92 97     .dbyt off_B297 - $2000
- D - I - 0x0141FB 11:A1EB: 01        .byte $01

- D - I - 0x0141FC 11:A1EC: 92 DA     .dbyt off_B2DA - $2000
- D - I - 0x0141FE 11:A1EE: 01        .byte $01

- D - I - 0x0141FF 11:A1EF: F0        .byte con_повторить

@бесконечный_цикл:
- D - I - 0x014200 11:A1F0: F7        .byte con_физика
- D - I - 0x014201 11:A1F1: 00        .byte $00
- D - I - 0x014202 11:A1F2: 01        .byte $01
- D - I - 0x014203 11:A1F3: FF        .byte $FF

- D - I - 0x014204 11:A1F4: 8D 9A     .dbyt off_AD9A - $2000
- D - I - 0x014206 11:A1F6: 01        .byte $01

- D - I - 0x014207 11:A1F7: 8D 9A     .dbyt off_AD9A - $2000
- D - I - 0x014209 11:A1F9: 01        .byte $01

- D - I - 0x01420A 11:A1FA: A1 F0     .dbyt @бесконечный_цикл



off_A1FC_7E_гертис_ловит_мяч:
- D - I - 0x01420C 11:A1FC: 31        .byte $31

- D - I - 0x01420D 11:A1FD: F1        .byte con_координаты_Y_X
- D - I - 0x01420E 11:A1FE: D6        .byte $D6
- D - I - 0x01420F 11:A1FF: 56        .byte $56

- D - I - 0x014210 11:A200: 8D 7C     .dbyt off_AD7C - $2000

- D - I - 0x014212 11:A202: F7        .byte con_физика
- D - I - 0x014213 11:A203: 4E        .byte $4E
- D - I - 0x014214 11:A204: 00        .byte $00
- D - I - 0x014215 11:A205: 00        .byte $00

- D - I - 0x014216 11:A206: 12        .byte $12

- D - I - 0x014217 11:A207: F7        .byte con_физика
- D - I - 0x014218 11:A208: 00        .byte $00
- D - I - 0x014219 11:A209: 00        .byte $00
- D - I - 0x01421A 11:A20A: 00        .byte $00

- D - I - 0x01421B 11:A20B: E6        .byte con_повторы + $06

- D - I - 0x01421C 11:A20C: 8D CC     .dbyt off_ADCC - $2000
- D - I - 0x01421E 11:A20E: 01        .byte $01

- D - I - 0x01421F 11:A20F: 92 62     .dbyt off_B262 - $2000
- D - I - 0x014221 11:A211: 01        .byte $01

- D - I - 0x014222 11:A212: 92 A1     .dbyt off_B2A1 - $2000
- D - I - 0x014224 11:A214: 01        .byte $01

- D - I - 0x014225 11:A215: 92 E4     .dbyt off_B2E4 - $2000
- D - I - 0x014227 11:A217: 01        .byte $01

- D - I - 0x014228 11:A218: F0        .byte con_повторить

- D - I - 0x014229 11:A219: 8D A4     .dbyt off_ADA4 - $2000

- D - I - 0x01422B 11:A21B: FF        .byte con_выход



off_A21C_7F_меон_ловит_мяч:
- D - I - 0x01422C 11:A21C: 12        .byte $12

- D - I - 0x01422D 11:A21D: E3        .byte con_повторы + $03

- D - I - 0x01422E 11:A21E: F1        .byte con_координаты_Y_X
- D - I - 0x01422F 11:A21F: 06        .byte $06
- D - I - 0x014230 11:A220: 4E        .byte $4E

- D - I - 0x014231 11:A221: 8D 86     .dbyt off_AD86 - $2000

- D - I - 0x014233 11:A223: F7        .byte con_физика
- D - I - 0x014234 11:A224: 2E        .byte $2E
- D - I - 0x014235 11:A225: 00        .byte $00
- D - I - 0x014236 11:A226: 00        .byte $00

- D - I - 0x014237 11:A227: 0E        .byte $0E

- D - I - 0x014238 11:A228: F0        .byte con_повторить

- D - I - 0x014239 11:A229: F7        .byte con_физика
- D - I - 0x01423A 11:A22A: 00        .byte $00
- D - I - 0x01423B 11:A22B: 00        .byte $00
- D - I - 0x01423C 11:A22C: 00        .byte $00

- D - I - 0x01423D 11:A22D: E6        .byte con_повторы + $06

- D - I - 0x01423E 11:A22E: 92 2D     .dbyt off_B22D - $2000
- D - I - 0x014240 11:A230: 01        .byte $01

- D - I - 0x014241 11:A231: 92 6C     .dbyt off_B26C - $2000
- D - I - 0x014243 11:A233: 01        .byte $01

- D - I - 0x014244 11:A234: 92 AB     .dbyt off_B2AB - $2000
- D - I - 0x014246 11:A236: 01        .byte $01

- D - I - 0x014247 11:A237: 92 EE     .dbyt off_B2EE - $2000
- D - I - 0x014249 11:A239: 01        .byte $01

- D - I - 0x01424A 11:A23A: F0        .byte con_повторить

- D - I - 0x01424B 11:A23B: 8D AE     .dbyt off_ADAE - $2000

- D - I - 0x01424D 11:A23D: FF        .byte con_выход



off_A23E_80_черный_голкипер_пропускает_мяч:
- D - I - 0x01424E 11:A23E: 38        .byte $38

- D - I - 0x01424F 11:A23F: F1        .byte con_координаты_Y_X
- D - I - 0x014250 11:A240: 06        .byte $06
- D - I - 0x014251 11:A241: 3A        .byte $3A

- D - I - 0x014252 11:A242: F7        .byte con_физика
- D - I - 0x014253 11:A243: 21        .byte $21
- D - I - 0x014254 11:A244: 00        .byte $00
- D - I - 0x014255 11:A245: 00        .byte $00

- D - I - 0x014256 11:A246: 8D 90     .dbyt off_AD90 - $2000
- D - I - 0x014258 11:A248: 0B        .byte $0B

- D - I - 0x014259 11:A249: FF        .byte con_выход



off_A24A_81_громкоговоритель_медленно_движется_влево:
- D - I - 0x01425A 11:A24A: 13        .byte $13

- D - I - 0x01425B 11:A24B: F1        .byte con_координаты_Y_X
- D - I - 0x01425C 11:A24C: 24        .byte $24
- D - I - 0x01425D 11:A24D: 4E        .byte $4E

- D - I - 0x01425E 11:A24E: EF        .byte con_повторы + $0F

- D - I - 0x01425F 11:A24F: F7        .byte con_физика
- D - I - 0x014260 11:A250: 0F        .byte $0F
- D - I - 0x014261 11:A251: 00        .byte $00
- D - I - 0x014262 11:A252: 00        .byte $00

- D - I - 0x014263 11:A253: 96 D1     .dbyt off_B6D1 - $2000
- D - I - 0x014265 11:A255: 01        .byte $01

- D - I - 0x014266 11:A256: F7        .byte con_физика
- D - I - 0x014267 11:A257: 00        .byte $00
- D - I - 0x014268 11:A258: 00        .byte $00
- D - I - 0x014269 11:A259: 00        .byte $00

- D - I - 0x01426A 11:A25A: 96 D1     .dbyt off_B6D1 - $2000
- D - I - 0x01426C 11:A25C: 01        .byte $01

- D - I - 0x01426D 11:A25D: F0        .byte con_повторить

- D - I - 0x01426E 11:A25E: FF        .byte con_выход



off_A25F_82_хюга_подкатом_забирает_мяч:
- D - I - 0x01426F 11:A25F: 02        .byte $02

- D - I - 0x014270 11:A260: E3        .byte con_повторы + $03

- D - I - 0x014271 11:A261: F1        .byte con_координаты_Y_X
- D - I - 0x014272 11:A262: 0E        .byte $0E
- D - I - 0x014273 11:A263: FE        .byte $FE

- D - I - 0x014274 11:A264: 8D F0     .dbyt off_ADF0 - $2000

- D - I - 0x014276 11:A266: F7        .byte con_физика
- D - I - 0x014277 11:A267: 26        .byte $26
- D - I - 0x014278 11:A268: 00        .byte $00
- D - I - 0x014279 11:A269: 00        .byte $00

- D - I - 0x01427A 11:A26A: 0A        .byte $0A

- D - I - 0x01427B 11:A26B: F0        .byte con_повторить

- D - I - 0x01427C 11:A26C: F7        .byte con_физика
- D - I - 0x01427D 11:A26D: 00        .byte $00
- D - I - 0x01427E 11:A26E: 00        .byte $00
- D - I - 0x01427F 11:A26F: 00        .byte $00

- D - I - 0x014280 11:A270: E6        .byte con_повторы + $06

- D - I - 0x014281 11:A271: 8E 12     .dbyt off_AE12 - $2000

- D - I - 0x014283 11:A273: F7        .byte con_физика
- D - I - 0x014284 11:A274: E0        .byte $E0
- D - I - 0x014285 11:A275: 00        .byte $00
- D - I - 0x014286 11:A276: 00        .byte $00

- D - I - 0x014287 11:A277: 01        .byte $01

- D - I - 0x014288 11:A278: 8E 29     .dbyt off_AE29 - $2000

- D - I - 0x01428A 11:A27A: F7        .byte con_физика
- D - I - 0x01428B 11:A27B: 20        .byte $20
- D - I - 0x01428C 11:A27C: 00        .byte $00
- D - I - 0x01428D 11:A27D: 00        .byte $00

- D - I - 0x01428E 11:A27E: 01        .byte $01

- D - I - 0x01428F 11:A27F: 8E 38     .dbyt off_AE38 - $2000

- D - I - 0x014291 11:A281: F7        .byte con_физика
- D - I - 0x014292 11:A282: E0        .byte $E0
- D - I - 0x014293 11:A283: 00        .byte $00
- D - I - 0x014294 11:A284: 00        .byte $00

- D - I - 0x014295 11:A285: 01        .byte $01

- D - I - 0x014296 11:A286: 8E 4C     .dbyt off_AE4C - $2000

- D - I - 0x014298 11:A288: F7        .byte con_физика
- D - I - 0x014299 11:A289: 20        .byte $20
- D - I - 0x01429A 11:A28A: 00        .byte $00
- D - I - 0x01429B 11:A28B: 00        .byte $00

- D - I - 0x01429C 11:A28C: 01        .byte $01

- D - I - 0x01429D 11:A28D: F0        .byte con_повторить

@бесконечный_цикл:
- D - I - 0x01429E 11:A28E: F7        .byte con_физика
- D - I - 0x01429F 11:A28F: F0        .byte $F0
- D - I - 0x0142A0 11:A290: 00        .byte $00
- D - I - 0x0142A1 11:A291: 00        .byte $00

- D - I - 0x0142A2 11:A292: 8E 08     .dbyt off_AE08 - $2000
- D - I - 0x0142A4 11:A294: 01        .byte $01

- D - I - 0x0142A5 11:A295: F7        .byte con_физика
- D - I - 0x0142A6 11:A296: 10        .byte $10
- D - I - 0x0142A7 11:A297: 00        .byte $00
- D - I - 0x0142A8 11:A298: 00        .byte $00

- D - I - 0x0142A9 11:A299: 8E 08     .dbyt off_AE08 - $2000
- D - I - 0x0142AB 11:A29B: 01        .byte $01

- D - I - 0x0142AC 11:A29C: A2 8E     .dbyt @бесконечный_цикл



off_A29E_83_удар_пьера_и_наполеона:
- D - I - 0x0142AE 11:A29E: 2D        .byte $2D

@бесконечный_цикл:
- D - I - 0x0142AF 11:A29F: F1        .byte con_координаты_Y_X
- D - I - 0x0142B0 11:A2A0: 22        .byte $22
- D - I - 0x0142B1 11:A2A1: 38        .byte $38

- D - I - 0x0142B2 11:A2A2: F6        .byte con_F6

- D - I - 0x0142B3 11:A2A3: 8E A6     .dbyt off_AEA6 - $2000
- D - I - 0x0142B5 11:A2A5: 01        .byte $01

- D - I - 0x0142B6 11:A2A6: F1        .byte con_координаты_Y_X
- D - I - 0x0142B7 11:A2A7: 22        .byte $22
- D - I - 0x0142B8 11:A2A8: 3E        .byte $3E

- D - I - 0x0142B9 11:A2A9: F5        .byte con_F5

- D - I - 0x0142BA 11:A2AA: 8E B6     .dbyt off_AEB6 - $2000
- D - I - 0x0142BC 11:A2AC: 01        .byte $01

- D - I - 0x0142BD 11:A2AD: F1        .byte con_координаты_Y_X
- D - I - 0x0142BE 11:A2AE: 22        .byte $22
- D - I - 0x0142BF 11:A2AF: 38        .byte $38

- D - I - 0x0142C0 11:A2B0: F6        .byte con_F6

- D - I - 0x0142C1 11:A2B1: 93 1B     .dbyt off_B31B - $2000
- D - I - 0x0142C3 11:A2B3: 01        .byte $01

- D - I - 0x0142C4 11:A2B4: F1        .byte con_координаты_Y_X
- D - I - 0x0142C5 11:A2B5: 22        .byte $22
- D - I - 0x0142C6 11:A2B6: 3E        .byte $3E

- D - I - 0x0142C7 11:A2B7: F5        .byte con_F5

- D - I - 0x0142C8 11:A2B8: 93 2F     .dbyt off_B32F - $2000
- D - I - 0x0142CA 11:A2BA: 01        .byte $01

- D - I - 0x0142CB 11:A2BB: F1        .byte con_координаты_Y_X
- D - I - 0x0142CC 11:A2BC: 22        .byte $22
- D - I - 0x0142CD 11:A2BD: 38        .byte $38

- D - I - 0x0142CE 11:A2BE: F6        .byte con_F6

- D - I - 0x0142CF 11:A2BF: 93 43     .dbyt off_B343 - $2000
- D - I - 0x0142D1 11:A2C1: 01        .byte $01

- D - I - 0x0142D2 11:A2C2: F1        .byte con_координаты_Y_X
- D - I - 0x0142D3 11:A2C3: 22        .byte $22
- D - I - 0x0142D4 11:A2C4: 3E        .byte $3E

- D - I - 0x0142D5 11:A2C5: F5        .byte con_F5

- D - I - 0x0142D6 11:A2C6: 93 7C     .dbyt off_B37C - $2000
- D - I - 0x0142D8 11:A2C8: 01        .byte $01

- D - I - 0x0142D9 11:A2C9: A2 9F     .dbyt @бесконечный_цикл



off_A2CB_84_удар_мисаки_и_цубасы:
- D - I - 0x0142DB 11:A2CB: 00        .byte $00

@бесконечный_цикл:
- D - I - 0x0142DC 11:A2CC: F1        .byte con_координаты_Y_X
- D - I - 0x0142DD 11:A2CD: 22        .byte $22
- D - I - 0x0142DE 11:A2CE: 38        .byte $38

- D - I - 0x0142DF 11:A2CF: F6        .byte con_F6

- D - I - 0x0142E0 11:A2D0: 8E 9E     .dbyt off_AE9E - $2000
- D - I - 0x0142E2 11:A2D2: 01        .byte $01

- D - I - 0x0142E3 11:A2D3: F1        .byte con_координаты_Y_X
- D - I - 0x0142E4 11:A2D4: 22        .byte $22
- D - I - 0x0142E5 11:A2D5: 3E        .byte $3E

- D - I - 0x0142E6 11:A2D6: F5        .byte con_F5

- D - I - 0x0142E7 11:A2D7: 8E AE     .dbyt off_AEAE - $2000
- D - I - 0x0142E9 11:A2D9: 01        .byte $01

- D - I - 0x0142EA 11:A2DA: F1        .byte con_координаты_Y_X
- D - I - 0x0142EB 11:A2DB: 22        .byte $22
- D - I - 0x0142EC 11:A2DC: 38        .byte $38

- D - I - 0x0142ED 11:A2DD: F6        .byte con_F6

- D - I - 0x0142EE 11:A2DE: 93 11     .dbyt off_B311 - $2000
- D - I - 0x0142F0 11:A2E0: 01        .byte $01

- D - I - 0x0142F1 11:A2E1: F1        .byte con_координаты_Y_X
- D - I - 0x0142F2 11:A2E2: 22        .byte $22
- D - I - 0x0142F3 11:A2E3: 3E        .byte $3E

- D - I - 0x0142F4 11:A2E4: F5        .byte con_F5

- D - I - 0x0142F5 11:A2E5: 93 25     .dbyt off_B325 - $2000
- D - I - 0x0142F7 11:A2E7: 01        .byte $01

- D - I - 0x0142F8 11:A2E8: F1        .byte con_координаты_Y_X
- D - I - 0x0142F9 11:A2E9: 22        .byte $22
- D - I - 0x0142FA 11:A2EA: 38        .byte $38

- D - I - 0x0142FB 11:A2EB: F6        .byte con_F6

- D - I - 0x0142FC 11:A2EC: 93 39     .dbyt off_B339 - $2000
- D - I - 0x0142FE 11:A2EE: 01        .byte $01

- D - I - 0x0142FF 11:A2EF: F1        .byte con_координаты_Y_X
- D - I - 0x014300 11:A2F0: 22        .byte $22
- D - I - 0x014301 11:A2F1: 3E        .byte $3E

- D - I - 0x014302 11:A2F2: F5        .byte con_F5

- D - I - 0x014303 11:A2F3: 8D B8     .dbyt off_ADB8 - $2000
- D - I - 0x014305 11:A2F5: 01        .byte $01

- D - I - 0x014306 11:A2F6: A2 CC     .dbyt @бесконечный_цикл



off_A2F8_85_мяч_в_сетке:
- D - I - 0x014308 11:A2F8: 35        .byte $35

- D - I - 0x014309 11:A2F9: F1        .byte con_координаты_Y_X
- D - I - 0x01430A 11:A2FA: 30        .byte $30
- D - I - 0x01430B 11:A2FB: 3C        .byte $3C

@бесконечный_цикл:
- D - I - 0x01430C 11:A2FC: F5        .byte con_F5

- D - I - 0x01430D 11:A2FD: 8E BE     .dbyt off_AEBE - $2000
- D - I - 0x01430F 11:A2FF: 01        .byte $01

- D - I - 0x014310 11:A300: 8F 1C     .dbyt off_AF1C - $2000
- D - I - 0x014312 11:A302: 01        .byte $01

- D - I - 0x014313 11:A303: A2 FC     .dbyt @бесконечный_цикл



off_A305_86_мяч_рвет_сетку:
- D - I - 0x014315 11:A305: 35        .byte $35

- D - I - 0x014316 11:A306: F1        .byte con_координаты_Y_X
- D - I - 0x014317 11:A307: 30        .byte $30
- D - I - 0x014318 11:A308: 3C        .byte $3C

- D - I - 0x014319 11:A309: E2        .byte con_повторы + $02

- D - I - 0x01431A 11:A30A: F5        .byte con_F5

- D - I - 0x01431B 11:A30B: 8F 1C     .dbyt off_AF1C - $2000
- D - I - 0x01431D 11:A30D: 01        .byte $01

- D - I - 0x01431E 11:A30E: 8E BE     .dbyt off_AEBE - $2000
- D - I - 0x014320 11:A310: 01        .byte $01

- D - I - 0x014321 11:A311: F0        .byte con_повторить

- D - I - 0x014322 11:A312: F1        .byte con_координаты_Y_X
- D - I - 0x014323 11:A313: 30        .byte $30
- D - I - 0x014324 11:A314: 3C        .byte $3C

- D - I - 0x014325 11:A315: 8F 7A     .dbyt off_AF7A - $2000

- D - I - 0x014327 11:A317: FF        .byte con_выход



off_A318_87_мяч_подброшенный_джаиро_вид_сверху:
- D - I - 0x014328 11:A318: 26        .byte $26

- D - I - 0x014329 11:A319: F1        .byte con_координаты_Y_X
- D - I - 0x01432A 11:A31A: 22        .byte $22
- D - I - 0x01432B 11:A31B: C4        .byte $C4

- D - I - 0x01432C 11:A31C: 90 63     .dbyt off_B063 - $2000

- D - I - 0x01432E 11:A31E: F9        .byte con_F9

- D - I - 0x01432F 11:A31F: 11        .byte $11

- D - I - 0x014330 11:A320: F1        .byte con_координаты_Y_X
- D - I - 0x014331 11:A321: 22        .byte $22
- D - I - 0x014332 11:A322: 44        .byte $44

- D - I - 0x014333 11:A323: 90 63     .dbyt off_B063 - $2000
- D - I - 0x014335 11:A325: 01        .byte $01

- D - I - 0x014336 11:A326: F1        .byte con_координаты_Y_X
- D - I - 0x014337 11:A327: 24        .byte $24
- D - I - 0x014338 11:A328: 42        .byte $42

- D - I - 0x014339 11:A329: 90 5B     .dbyt off_B05B - $2000
- D - I - 0x01433B 11:A32B: 01        .byte $01

- D - I - 0x01433C 11:A32C: F1        .byte con_координаты_Y_X
- D - I - 0x01433D 11:A32D: 26        .byte $26
- D - I - 0x01433E 11:A32E: 40        .byte $40

- D - I - 0x01433F 11:A32F: 90 53     .dbyt off_B053 - $2000
- D - I - 0x014341 11:A331: 01        .byte $01

- D - I - 0x014342 11:A332: F1        .byte con_координаты_Y_X
- D - I - 0x014343 11:A333: 26        .byte $26
- D - I - 0x014344 11:A334: 3C        .byte $3C

- D - I - 0x014345 11:A335: 90 44     .dbyt off_B044 - $2000
- D - I - 0x014347 11:A337: 01        .byte $01

- D - I - 0x014348 11:A338: F1        .byte con_координаты_Y_X
- D - I - 0x014349 11:A339: 28        .byte $28
- D - I - 0x01434A 11:A33A: 3A        .byte $3A

- D - I - 0x01434B 11:A33B: 90 35     .dbyt off_B035 - $2000
- D - I - 0x01434D 11:A33D: 01        .byte $01

- D - I - 0x01434E 11:A33E: F1        .byte con_координаты_Y_X
- D - I - 0x01434F 11:A33F: 28        .byte $28
- D - I - 0x014350 11:A340: 39        .byte $39

- D - I - 0x014351 11:A341: 90 26     .dbyt off_B026 - $2000
- D - I - 0x014353 11:A343: 01        .byte $01

- D - I - 0x014354 11:A344: F1        .byte con_координаты_Y_X
- D - I - 0x014355 11:A345: 26        .byte $26
- D - I - 0x014356 11:A346: 39        .byte $39

- D - I - 0x014357 11:A347: 90 17     .dbyt off_B017 - $2000
- D - I - 0x014359 11:A349: 01        .byte $01

- D - I - 0x01435A 11:A34A: F1        .byte con_координаты_Y_X
- D - I - 0x01435B 11:A34B: 22        .byte $22
- D - I - 0x01435C 11:A34C: 39        .byte $39

- D - I - 0x01435D 11:A34D: 8F FF     .dbyt off_AFFF - $2000
- D - I - 0x01435F 11:A34F: 01        .byte $01

- D - I - 0x014360 11:A350: F1        .byte con_координаты_Y_X
- D - I - 0x014361 11:A351: 1E        .byte $1E
- D - I - 0x014362 11:A352: 39        .byte $39

- D - I - 0x014363 11:A353: 8F E4     .dbyt off_AFE4 - $2000
- D - I - 0x014365 11:A355: 01        .byte $01

@бесконечный_цикл:
- D - I - 0x014366 11:A356: F1        .byte con_координаты_Y_X
- D - I - 0x014367 11:A357: 16        .byte $16
- D - I - 0x014368 11:A358: 39        .byte $39

- D - I - 0x014369 11:A359: F6        .byte con_F6

- D - I - 0x01436A 11:A35A: 8F C3     .dbyt off_AFC3 - $2000
- D - I - 0x01436C 11:A35C: 01        .byte $01

- D - I - 0x01436D 11:A35D: F1        .byte con_координаты_Y_X
- D - I - 0x01436E 11:A35E: 16        .byte $16
- D - I - 0x01436F 11:A35F: 3D        .byte $3D

- D - I - 0x014370 11:A360: F5        .byte con_F5

- D - I - 0x014371 11:A361: 8F C3     .dbyt off_AFC3 - $2000
- D - I - 0x014373 11:A363: 01        .byte $01

- D - I - 0x014374 11:A364: A3 56     .dbyt @бесконечный_цикл



off_A366_88:
- D - I - 0x014376 11:A366: 26        .byte $26

- D - I - 0x014377 11:A367: F1        .byte con_координаты_Y_X
- D - I - 0x014378 11:A368: 1E        .byte $1E
- D - I - 0x014379 11:A369: CE        .byte $CE

- D - I - 0x01437A 11:A36A: 90 6B     .dbyt off_B06B - $2000

- D - I - 0x01437C 11:A36C: F9        .byte con_F9

- D - I - 0x01437D 11:A36D: 14        .byte $14

- D - I - 0x01437E 11:A36E: FF        .byte con_выход



off_A36F_89_крученый_мяч_опускается_поднимается_для_удара:
- D - I - 0x01437F 11:A36F: 14        .byte $14

- D - I - 0x014380 11:A370: F1        .byte con_координаты_Y_X
- D - I - 0x014381 11:A371: EE        .byte $EE
- D - I - 0x014382 11:A372: 3C        .byte $3C

- D - I - 0x014383 11:A373: F7        .byte con_физика
- D - I - 0x014384 11:A374: 20        .byte $20
- D - I - 0x014385 11:A375: FE        .byte $FE
- D - I - 0x014386 11:A376: 00        .byte $00

- D - I - 0x014387 11:A377: E3        .byte con_повторы + $03

- D - I - 0x014388 11:A378: EF        .byte con_повторы + $0F

- D - I - 0x014389 11:A379: 90 7D     .dbyt off_B07D - $2000
- D - I - 0x01438B 11:A37B: 01        .byte $01

- D - I - 0x01438C 11:A37C: 90 94     .dbyt off_B094 - $2000
- D - I - 0x01438E 11:A37E: 01        .byte $01

- D - I - 0x01438F 11:A37F: F0        .byte con_повторить

- D - I - 0x014390 11:A380: F0        .byte con_повторить

- D - I - 0x014391 11:A381: F7        .byte con_физика
- D - I - 0x014392 11:A382: 00        .byte $00
- D - I - 0x014393 11:A383: 00        .byte $00
- D - I - 0x014394 11:A384: 00        .byte $00

- D - I - 0x014395 11:A385: E4        .byte con_повторы + $04

- D - I - 0x014396 11:A386: EF        .byte con_повторы + $0F

- D - I - 0x014397 11:A387: 90 7D     .dbyt off_B07D - $2000
- D - I - 0x014399 11:A389: 01        .byte $01

- D - I - 0x01439A 11:A38A: 90 94     .dbyt off_B094 - $2000
- D - I - 0x01439C 11:A38C: 01        .byte $01

- D - I - 0x01439D 11:A38D: F0        .byte con_повторить

- D - I - 0x01439E 11:A38E: F0        .byte con_повторить

- D - I - 0x01439F 11:A38F: F7        .byte con_физика
- D - I - 0x0143A0 11:A390: F0        .byte $F0
- D - I - 0x0143A1 11:A391: 00        .byte $00
- D - I - 0x0143A2 11:A392: 00        .byte $00

- D - I - 0x0143A3 11:A393: EF        .byte con_повторы + $0F

- D - I - 0x0143A4 11:A394: 90 7D     .dbyt off_B07D - $2000
- D - I - 0x0143A6 11:A396: 01        .byte $01

- D - I - 0x0143A7 11:A397: 90 94     .dbyt off_B094 - $2000
- D - I - 0x0143A9 11:A399: 01        .byte $01

- D - I - 0x0143AA 11:A39A: F0        .byte con_повторить

- D - I - 0x0143AB 11:A39B: F1        .byte con_координаты_Y_X
- D - I - 0x0143AC 11:A39C: B0        .byte $B0
- D - I - 0x0143AD 11:A39D: 30        .byte $30

- D - I - 0x0143AE 11:A39E: F7        .byte con_физика
- D - I - 0x0143AF 11:A39F: 20        .byte $20
- D - I - 0x0143B0 11:A3A0: FF        .byte $FF
- D - I - 0x0143B1 11:A3A1: 00        .byte $00

- D - I - 0x0143B2 11:A3A2: E4        .byte con_повторы + $04

- D - I - 0x0143B3 11:A3A3: EF        .byte con_повторы + $0F

- D - I - 0x0143B4 11:A3A4: 90 7D     .dbyt off_B07D - $2000
- D - I - 0x0143B6 11:A3A6: 01        .byte $01

- D - I - 0x0143B7 11:A3A7: 90 94     .dbyt off_B094 - $2000
- D - I - 0x0143B9 11:A3A9: 01        .byte $01

- D - I - 0x0143BA 11:A3AA: F0        .byte con_повторить

- D - I - 0x0143BB 11:A3AB: F0        .byte con_повторить

@бесконечный_цикл:
- D - I - 0x0143BC 11:A3AC: F7        .byte con_физика
- D - I - 0x0143BD 11:A3AD: 00        .byte $00
- D - I - 0x0143BE 11:A3AE: 00        .byte $00
- D - I - 0x0143BF 11:A3AF: 00        .byte $00

- D - I - 0x0143C0 11:A3B0: 90 7D     .dbyt off_B07D - $2000
- D - I - 0x0143C2 11:A3B2: 01        .byte $01

- D - I - 0x0143C3 11:A3B3: 90 94     .dbyt off_B094 - $2000
- D - I - 0x0143C5 11:A3B5: 01        .byte $01

- D - I - 0x0143C6 11:A3B6: A3 AC     .dbyt @бесконечный_цикл



off_A3B8_8A_письмо_в_руке:
- D - I - 0x0143C8 11:A3B8: 15        .byte $15

- D - I - 0x0143C9 11:A3B9: F1        .byte con_координаты_Y_X
- D - I - 0x0143CA 11:A3BA: 2A        .byte $2A
- D - I - 0x0143CB 11:A3BB: 44        .byte $44

- D - I - 0x0143CC 11:A3BC: 90 B9     .dbyt off_B0B9 - $2000
- D - I - 0x0143CE 11:A3BE: 0F        .byte $0F

- D - I - 0x0143CF 11:A3BF: F7        .byte con_физика
- D - I - 0x0143D0 11:A3C0: 00        .byte $00
- D - I - 0x0143D1 11:A3C1: 04        .byte $04
- D - I - 0x0143D2 11:A3C2: FE        .byte $FE

- D - I - 0x0143D3 11:A3C3: 0F        .byte $0F

- D - I - 0x0143D4 11:A3C4: FF        .byte con_выход



off_A3C5_8B_арбитр_свисток_рука:
- D - I - 0x0143D5 11:A3C5: 24        .byte $24

- D - I - 0x0143D6 11:A3C6: F1        .byte con_координаты_Y_X
- D - I - 0x0143D7 11:A3C7: 2C        .byte $2C
- D - I - 0x0143D8 11:A3C8: 44        .byte $44

- D - I - 0x0143D9 11:A3C9: 90 F0     .dbyt off_B0F0 - $2000

- D - I - 0x0143DB 11:A3CB: FF        .byte con_выход



off_A3CC_8C_меон_в_воротах:
- D - I - 0x0143DC 11:A3CC: 12        .byte $12

- D - I - 0x0143DD 11:A3CD: F1        .byte con_координаты_Y_X
- D - I - 0x0143DE 11:A3CE: 35        .byte $35
- D - I - 0x0143DF 11:A3CF: 3E        .byte $3E

- D - I - 0x0143E0 11:A3D0: 91 37     .dbyt off_B137 - $2000

- D - I - 0x0143E2 11:A3D2: FF        .byte con_выход



off_A3D3_8D_заяц:
- D - I - 0x0143E3 11:A3D3: 36        .byte $36

- D - I - 0x0143E4 11:A3D4: F1        .byte con_координаты_Y_X
- D - I - 0x0143E5 11:A3D5: 30        .byte $30
- D - I - 0x0143E6 11:A3D6: 28        .byte $28

- D - I - 0x0143E7 11:A3D7: 91 5B     .dbyt off_B15B - $2000

- D - I - 0x0143E9 11:A3D9: FF        .byte con_выход



off_A3DA_8E_ХЗ_какой_то_желтый_шар_вверху:
- D - I - 0x0143EA 11:A3DA: 24        .byte $24

- D - I - 0x0143EB 11:A3DB: F1        .byte con_координаты_Y_X
- D - I - 0x0143EC 11:A3DC: 0A        .byte $0A
- D - I - 0x0143ED 11:A3DD: 36        .byte $36

- D - I - 0x0143EE 11:A3DE: 91 CB     .dbyt off_B1CB - $2000

- D - I - 0x0143F0 11:A3E0: FF        .byte con_выход



off_A3E1_8F_часть_сетки_кубка:
- D - I - 0x0143F1 11:A3E1: 21        .byte $21

- D - I - 0x0143F2 11:A3E2: F1        .byte con_координаты_Y_X
- D - I - 0x0143F3 11:A3E3: 28        .byte $28
- D - I - 0x0143F4 11:A3E4: 50        .byte $50

- D - I - 0x0143F5 11:A3E5: 91 DA     .dbyt off_B1DA - $2000

- D - I - 0x0143F7 11:A3E7: FF        .byte con_выход



off_A3E8_90_ХЗ_белый_прямоугольник:
- D - I - 0x0143F8 11:A3E8: 18        .byte $18

- D - I - 0x0143F9 11:A3E9: F1        .byte con_координаты_Y_X
- D - I - 0x0143FA 11:A3EA: 1C        .byte $1C
- D - I - 0x0143FB 11:A3EB: 44        .byte $44

- D - I - 0x0143FC 11:A3EC: 92 18     .dbyt off_B218 - $2000

- D - I - 0x0143FE 11:A3EE: FF        .byte con_выход



off_A3EF_91:
- D - I - 0x0143FF 11:A3EF: 21        .byte $21

- D - I - 0x014400 11:A3F0: F1        .byte con_координаты_Y_X
- D - I - 0x014401 11:A3F1: 1C        .byte $1C
- D - I - 0x014402 11:A3F2: 00        .byte $00

- D - I - 0x014403 11:A3F3: 96 8B     .dbyt off_B68B - $2000

- D - I - 0x014405 11:A3F5: FF        .byte con_выход



off_A3F6_92:
- D - I - 0x014406 11:A3F6: 0C        .byte $0C

- D - I - 0x014407 11:A3F7: F1        .byte con_координаты_Y_X
- D - I - 0x014408 11:A3F8: 1F        .byte $1F
- D - I - 0x014409 11:A3F9: 5E        .byte $5E

- D - I - 0x01440A 11:A3FA: 64        .byte $64

- D - I - 0x01440B 11:A3FB: 97 B3     .dbyt off_B7B3 - $2000

- D - I - 0x01440D 11:A3FD: F7        .byte con_физика
- D - I - 0x01440E 11:A3FE: 19        .byte $19
- D - I - 0x01440F 11:A3FF: 00        .byte $00
- D - I - 0x014410 11:A400: F9        .byte $F9

- D - I - 0x014411 11:A401: 0B        .byte $0B

- D - I - 0x014412 11:A402: F7        .byte con_физика
- D - I - 0x014413 11:A403: 00        .byte $00
- D - I - 0x014414 11:A404: 00        .byte $00
- D - I - 0x014415 11:A405: 00        .byte $00

- D - I - 0x014416 11:A406: F1        .byte con_координаты_Y_X
- D - I - 0x014417 11:A407: 3E        .byte $3E
- D - I - 0x014418 11:A408: BE        .byte $BE

- D - I - 0x014419 11:A409: 97 B3     .dbyt off_B7B3 - $2000

- D - I - 0x01441B 11:A40B: FF        .byte con_выход



off_A40C_93_анимация_замаха_по_мячу_нога_джаиро_история_роберто:
- D - I - 0x01441C 11:A40C: 14        .byte $14

- D - I - 0x01441D 11:A40D: F1        .byte con_координаты_Y_X
- D - I - 0x01441E 11:A40E: 9F        .byte $9F
- D - I - 0x01441F 11:A40F: 44        .byte $44

- D - I - 0x014420 11:A410: 89 73     .dbyt off_A973 - $2000

- D - I - 0x014422 11:A412: F7        .byte con_физика
- D - I - 0x014423 11:A413: 20        .byte $20
- D - I - 0x014424 11:A414: FF        .byte $FF
- D - I - 0x014425 11:A415: 00        .byte $00

- D - I - 0x014426 11:A416: 64        .byte $64
; таймер замаха джаиро сразу перед ударом
- D - I - 0x014427 11:A417: E5        .byte con_повторы + $09

- D - I - 0x014428 11:A418: ED        .byte con_повторы + $0D

- D - I - 0x014429 11:A419: F7        .byte con_физика
- D - I - 0x01442A 11:A41A: 1F        .byte $1F
- D - I - 0x01442B 11:A41B: 00        .byte $00
- D - I - 0x01442C 11:A41C: 00        .byte $00

- D - I - 0x01442D 11:A41D: 89 73     .dbyt off_A973 - $2000
- D - I - 0x01442F 11:A41F: 01        .byte $01

- D - I - 0x014430 11:A420: F7        .byte con_физика
- D - I - 0x014431 11:A421: F1        .byte $F1
- D - I - 0x014432 11:A422: 00        .byte $00
- D - I - 0x014433 11:A423: 00        .byte $00

- D - I - 0x014434 11:A424: 89 73     .dbyt off_A973 - $2000
- D - I - 0x014436 11:A426: 01        .byte $01

- D - I - 0x014437 11:A427: F0        .byte con_повторить

- D - I - 0x014438 11:A428: F0        .byte con_повторить

- D - I - 0x014439 11:A429: F7        .byte con_физика
- D - I - 0x01443A 11:A42A: 79        .byte $79
- D - I - 0x01443B 11:A42B: 00        .byte $00
- D - I - 0x01443C 11:A42C: 00        .byte $00

- D - I - 0x01443D 11:A42D: 03        .byte $03

- D - I - 0x01443E 11:A42E: F1        .byte con_координаты_Y_X
- D - I - 0x01443F 11:A42F: 3E        .byte $3E
- D - I - 0x014440 11:A430: BE        .byte $BE

- D - I - 0x014441 11:A431: 89 73     .dbyt off_A973 - $2000

- D - I - 0x014443 11:A433: FF        .byte con_выход



off_A434_94_полет_мяча_справа_налево:
- D - I - 0x014444 11:A434: 31        .byte $31

- D - I - 0x014445 11:A435: F1        .byte con_координаты_Y_X
- D - I - 0x014446 11:A436: 06        .byte $06
- D - I - 0x014447 11:A437: A8        .byte $A8

- D - I - 0x014448 11:A438: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x01444A 11:A43A: F7        .byte con_физика
- D - I - 0x01444B 11:A43B: 29        .byte $29
- D - I - 0x01444C 11:A43C: 00        .byte $00
- D - I - 0x01444D 11:A43D: 00        .byte $00

- D - I - 0x01444E 11:A43E: 12        .byte $12

- D - I - 0x01444F 11:A43F: F1        .byte con_координаты_Y_X
- D - I - 0x014450 11:A440: 3E        .byte $3E
- D - I - 0x014451 11:A441: BE        .byte $BE

- D - I - 0x014452 11:A442: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x014454 11:A444: F7        .byte con_физика
- D - I - 0x014455 11:A445: 00        .byte $00
- D - I - 0x014456 11:A446: 00        .byte $00
- D - I - 0x014457 11:A447: 00        .byte $00

- D - I - 0x014458 11:A448: FF        .byte con_выход



off_A449_95_флаг_аргентины:
- D - I - 0x014459 11:A449: 21        .byte $21

- D - I - 0x01445A 11:A44A: F1        .byte con_координаты_Y_X
- D - I - 0x01445B 11:A44B: 30        .byte $30
- D - I - 0x01445C 11:A44C: EF        .byte $EF

- D - I - 0x01445D 11:A44D: 94 3D     .dbyt off_B43D - $2000
- D - I - 0x01445F 11:A44F: 0A        .byte $0A

- D - I - 0x014460 11:A450: F7        .byte con_физика
- D - I - 0x014461 11:A451: 07        .byte $07
- D - I - 0x014462 11:A452: 00        .byte $00
- D - I - 0x014463 11:A453: 00        .byte $00

- D - I - 0x014464 11:A454: 0B        .byte $0B

- D - I - 0x014465 11:A455: FF        .byte con_выход



off_A456_96_флаг_франции:
- D - I - 0x014466 11:A456: 21        .byte $21

- D - I - 0x014467 11:A457: F1        .byte con_координаты_Y_X
- D - I - 0x014468 11:A458: 30        .byte $30
- D - I - 0x014469 11:A459: 89        .byte $89

- D - I - 0x01446A 11:A45A: 92 37     .dbyt off_B237 - $2000
- D - I - 0x01446C 11:A45C: 0A        .byte $0A

- D - I - 0x01446D 11:A45D: F7        .byte con_физика
- D - I - 0x01446E 11:A45E: 09        .byte $09
- D - I - 0x01446F 11:A45F: 00        .byte $00
- D - I - 0x014470 11:A460: 00        .byte $00

- D - I - 0x014471 11:A461: 0B        .byte $0B

- D - I - 0x014472 11:A462: FF        .byte con_выход



off_A463_97_флаг_германии:
- D - I - 0x014473 11:A463: 21        .byte $21

- D - I - 0x014474 11:A464: F1        .byte con_координаты_Y_X
- D - I - 0x014475 11:A465: 44        .byte $44
- D - I - 0x014476 11:A466: 3C        .byte $3C

- D - I - 0x014477 11:A467: 92 76     .dbyt off_B276 - $2000
- D - I - 0x014479 11:A469: 0F        .byte $0F

- D - I - 0x01447A 11:A46A: F7        .byte con_физика
- D - I - 0x01447B 11:A46B: B0        .byte $B0
- D - I - 0x01447C 11:A46C: 00        .byte $00
- D - I - 0x01447D 11:A46D: 00        .byte $00

- D - I - 0x01447E 11:A46E: 04        .byte $04

- D - I - 0x01447F 11:A46F: FF        .byte con_выход



off_A470_98_флаг_бразилии_на_месте:
- D - I - 0x014480 11:A470: 21        .byte $21

- D - I - 0x014481 11:A471: F1        .byte con_координаты_Y_X
- D - I - 0x014482 11:A472: 34        .byte $34
- D - I - 0x014483 11:A473: 2C        .byte $2C

- D - I - 0x014484 11:A474: 92 B5     .dbyt off_B2B5 - $2000

- D - I - 0x014486 11:A476: FF        .byte con_выход



off_A477_99_флаг_бразилии_в_движении:
- D - I - 0x014487 11:A477: 21        .byte $21

- D - I - 0x014488 11:A478: F1        .byte con_координаты_Y_X
- D - I - 0x014489 11:A479: 18        .byte $18
- D - I - 0x01448A 11:A47A: 3C        .byte $3C

- D - I - 0x01448B 11:A47B: 92 B5     .dbyt off_B2B5 - $2000
- D - I - 0x01448D 11:A47D: 1E        .byte $1E

- D - I - 0x01448E 11:A47E: F7        .byte con_физика
- D - I - 0x01448F 11:A47F: 10        .byte $10
- D - I - 0x014490 11:A480: 00        .byte $00
- D - I - 0x014491 11:A481: 00        .byte $00

- D - I - 0x014492 11:A482: 18        .byte $18

- D - I - 0x014493 11:A483: FF        .byte con_выход



off_A484_9A_мяч_опускается_без_кручения:
- D - I - 0x014494 11:A484: 3C        .byte $3C

- D - I - 0x014495 11:A485: F1        .byte con_координаты_Y_X
- D - I - 0x014496 11:A486: AE        .byte $AE
- D - I - 0x014497 11:A487: 2E        .byte $2E

- D - I - 0x014498 11:A488: 93 AB     .dbyt off_B3AB - $2000

- D - I - 0x01449A 11:A48A: F7        .byte con_физика
- D - I - 0x01449B 11:A48B: 20        .byte $20
- D - I - 0x01449C 11:A48C: FF        .byte $FF
- D - I - 0x01449D 11:A48D: 00        .byte $00

- D - I - 0x01449E 11:A48E: 50        .byte $50

- D - I - 0x01449F 11:A48F: FF        .byte con_выход



off_A490_9B_мелкие_игроки_в_воображении_цубасы:
- D - I - 0x0144A0 11:A490: 25        .byte $25

- D - I - 0x0144A1 11:A491: F1        .byte con_координаты_Y_X
- D - I - 0x0144A2 11:A492: 38        .byte $38
- D - I - 0x0144A3 11:A493: 3C        .byte $3C

- D - I - 0x0144A4 11:A494: 92 F8     .dbyt off_B2F8 - $2000

- D - I - 0x0144A6 11:A496: FF        .byte con_выход



off_A497_9C_цубаса_и_санае_со_спины_в_парке_черные:
- D - I - 0x0144A7 11:A497: 24        .byte $24

- D - I - 0x0144A8 11:A498: F1        .byte con_координаты_Y_X
- D - I - 0x0144A9 11:A499: 30        .byte $30
- D - I - 0x0144AA 11:A49A: C3        .byte $C3

- D - I - 0x0144AB 11:A49B: 93 4D     .dbyt off_B34D - $2000

@бесконечный_цикл:
- D - I - 0x0144AD 11:A49D: F7        .byte con_физика
- D - I - 0x0144AE 11:A49E: 0F        .byte $0F
- D - I - 0x0144AF 11:A49F: 00        .byte $00
- D - I - 0x0144B0 11:A4A0: 00        .byte $00

- D - I - 0x0144B1 11:A4A1: 01        .byte $01

- D - I - 0x0144B2 11:A4A2: F7        .byte con_физика
- D - I - 0x0144B3 11:A4A3: 00        .byte $00
- D - I - 0x0144B4 11:A4A4: 00        .byte $00
- D - I - 0x0144B5 11:A4A5: 00        .byte $00

- D - I - 0x0144B6 11:A4A6: 01        .byte $01

- D - I - 0x0144B7 11:A4A7: A4 9D     .dbyt @бесконечный_цикл



off_A4AA_9D_ишизаки_и_йоко_прячутся_за_стеной:
- D - I - 0x0144BA 11:A4AA: 18        .byte $18

- D - I - 0x0144BB 11:A4AB: F1        .byte con_координаты_Y_X
- D - I - 0x0144BC 11:A4AC: 1C        .byte $1C
- D - I - 0x0144BD 11:A4AD: 38        .byte $38

- D - I - 0x0144BE 11:A4AE: 93 BA     .dbyt off_B3BA - $2000
- D - I - 0x0144C0 11:A4B0: 28        .byte $28

- D - I - 0x0144C1 11:A4B1: F7        .byte con_физика
- D - I - 0x0144C2 11:A4B2: 00        .byte $00
- D - I - 0x0144C3 11:A4B3: 00        .byte $00
- D - I - 0x0144C4 11:A4B4: 01        .byte $01

- D - I - 0x0144C5 11:A4B5: 2C        .byte $2C

- D - I - 0x0144C6 11:A4B6: FF        .byte con_выход



off_A4B7_9E_шнайдер_или_джаиро_замах_по_мячу:
- D - I - 0x0144C7 11:A4B7: 3B        .byte $3B

- D - I - 0x0144C8 11:A4B8: F1        .byte con_координаты_Y_X
- D - I - 0x0144C9 11:A4B9: A2        .byte $A2
- D - I - 0x0144CA 11:A4BA: 44        .byte $44

- D - I - 0x0144CB 11:A4BB: 89 59     .dbyt off_A959 - $2000

- D - I - 0x0144CD 11:A4BD: F7        .byte con_физика
- D - I - 0x0144CE 11:A4BE: 20        .byte $20
- D - I - 0x0144CF 11:A4BF: FF        .byte $FF
- D - I - 0x0144D0 11:A4C0: 00        .byte $00

- D - I - 0x0144D1 11:A4C1: 64        .byte $64

- D - I - 0x0144D2 11:A4C2: FF        .byte con_выход



off_A4C3_9F_анимация_замаха_по_мячу_нога_белая:
- D - I - 0x0144D3 11:A4C3: 3B        .byte $3B

- D - I - 0x0144D4 11:A4C4: F1        .byte con_координаты_Y_X
- D - I - 0x0144D5 11:A4C5: 9F        .byte $9F
- D - I - 0x0144D6 11:A4C6: 44        .byte $44

- D - I - 0x0144D7 11:A4C7: 89 73     .dbyt off_A973 - $2000

- D - I - 0x0144D9 11:A4C9: F7        .byte con_физика
- D - I - 0x0144DA 11:A4CA: 20        .byte $20
- D - I - 0x0144DB 11:A4CB: FF        .byte $FF
- D - I - 0x0144DC 11:A4CC: 00        .byte $00

- D - I - 0x0144DD 11:A4CD: 64        .byte $64
; таймер удара Шнайдера
- D - I - 0x0144DE 11:A4CE: E2        .byte con_повторы + $04

- D - I - 0x0144DF 11:A4CF: EE        .byte con_повторы + $0F

- D - I - 0x0144E0 11:A4D0: F7        .byte con_физика
- D - I - 0x0144E1 11:A4D1: 2E        .byte $2E
- D - I - 0x0144E2 11:A4D2: 00        .byte $00
- D - I - 0x0144E3 11:A4D3: 00        .byte $00

- D - I - 0x0144E4 11:A4D4: 89 73     .dbyt off_A973 - $2000
- D - I - 0x0144E6 11:A4D6: 01        .byte $01

- D - I - 0x0144E7 11:A4D7: F7        .byte con_физика
- D - I - 0x0144E8 11:A4D8: E2        .byte $E2
- D - I - 0x0144E9 11:A4D9: 00        .byte $00
- D - I - 0x0144EA 11:A4DA: 00        .byte $00

- D - I - 0x0144EB 11:A4DB: 89 73     .dbyt off_A973 - $2000
- D - I - 0x0144ED 11:A4DD: 01        .byte $01

- D - I - 0x0144EE 11:A4DE: F0        .byte con_повторить

- D - I - 0x0144EF 11:A4DF: F0        .byte con_повторить

- D - I - 0x0144F0 11:A4E0: F7        .byte con_физика
- D - I - 0x0144F1 11:A4E1: 79        .byte $79
- D - I - 0x0144F2 11:A4E2: 00        .byte $00
- D - I - 0x0144F3 11:A4E3: 00        .byte $00

- D - I - 0x0144F4 11:A4E4: 03        .byte $03

- D - I - 0x0144F5 11:A4E5: F1        .byte con_координаты_Y_X
- D - I - 0x0144F6 11:A4E6: 3E        .byte $3E
- D - I - 0x0144F7 11:A4E7: BE        .byte $BE

- D - I - 0x0144F8 11:A4E8: 89 73     .dbyt off_A973 - $2000

- D - I - 0x0144FA 11:A4EA: FF        .byte con_выход



off_A4EB_A0_полет_мяча_справа_налево_и_остановка:
- D - I - 0x0144FB 11:A4EB: 38        .byte $38

- D - I - 0x0144FC 11:A4EC: F1        .byte con_координаты_Y_X
- D - I - 0x0144FD 11:A4ED: 16        .byte $16
- D - I - 0x0144FE 11:A4EE: 8E        .byte $8E

- D - I - 0x0144FF 11:A4EF: F7        .byte con_физика
- D - I - 0x014500 11:A4F0: 29        .byte $29
- D - I - 0x014501 11:A4F1: 00        .byte $00
- D - I - 0x014502 11:A4F2: 07        .byte $07

- D - I - 0x014503 11:A4F3: 8D D6     .dbyt off_ADD6 - $2000
- D - I - 0x014505 11:A4F5: 0B        .byte $0B

- D - I - 0x014506 11:A4F6: FF        .byte con_выход



off_A4F7_A1_джаиро_бежит_с_мячом:
- D - I - 0x014507 11:A4F7: 14        .byte $14

- D - I - 0x014508 11:A4F8: F1        .byte con_координаты_Y_X
- D - I - 0x014509 11:A4F9: 1E        .byte $1E
- D - I - 0x01450A 11:A4FA: 36        .byte $36

- D - I - 0x01450B 11:A4FB: F7        .byte con_физика
- D - I - 0x01450C 11:A4FC: 00        .byte $00
- D - I - 0x01450D 11:A4FD: 00        .byte $00
- D - I - 0x01450E 11:A4FE: 00        .byte $00

@бесконечный_цикл:
- D - I - 0x01450F 11:A4FF: F5        .byte con_F5

- D - I - 0x014510 11:A500: 88 37     .dbyt off_A837 - $2000
- D - I - 0x014512 11:A502: 03        .byte $03

- D - I - 0x014513 11:A503: 88 6F     .dbyt off_A86F - $2000
- D - I - 0x014515 11:A505: 03        .byte $03

- D - I - 0x014516 11:A506: 88 BA     .dbyt off_A8BA - $2000
- D - I - 0x014518 11:A508: 03        .byte $03

- D - I - 0x014519 11:A509: 89 08     .dbyt off_A908 - $2000
- D - I - 0x01451B 11:A50B: 03        .byte $03

- D - I - 0x01451C 11:A50C: A4 FF     .dbyt @бесконечный_цикл



off_A50E_A2_медленный_полет_мяча_справа_налево:
- D - I - 0x01451E 11:A50E: 07        .byte $07

- D - I - 0x01451F 11:A50F: F1        .byte con_координаты_Y_X
- D - I - 0x014520 11:A510: 12        .byte $12
- D - I - 0x014521 11:A511: 8E        .byte $8E

- D - I - 0x014522 11:A512: EC        .byte con_повторы + $0C

- D - I - 0x014523 11:A513: F7        .byte con_физика
- D - I - 0x014524 11:A514: 29        .byte $29
- D - I - 0x014525 11:A515: 00        .byte $00
- D - I - 0x014526 11:A516: 00        .byte $00

- D - I - 0x014527 11:A517: 8D D6     .dbyt off_ADD6 - $2000
- D - I - 0x014529 11:A519: 01        .byte $01

- D - I - 0x01452A 11:A51A: F7        .byte con_физика
- D - I - 0x01452B 11:A51B: 00        .byte $00
- D - I - 0x01452C 11:A51C: 00        .byte $00
- D - I - 0x01452D 11:A51D: 00        .byte $00

- D - I - 0x01452E 11:A51E: 01        .byte $01

- D - I - 0x01452F 11:A51F: F0        .byte con_повторить

- D - I - 0x014530 11:A520: F7        .byte con_физика
- D - I - 0x014531 11:A521: 00        .byte $00
- D - I - 0x014532 11:A522: 00        .byte $00
- D - I - 0x014533 11:A523: 00        .byte $00

- D - I - 0x014534 11:A524: F1        .byte con_координаты_Y_X
- D - I - 0x014535 11:A525: 3E        .byte $3E
- D - I - 0x014536 11:A526: BE        .byte $BE

- D - I - 0x014537 11:A527: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x014539 11:A529: FF        .byte con_выход



off_A52A_A3_рукопожатие:
- D - I - 0x01453A 11:A52A: 15        .byte $15

- D - I - 0x01453B 11:A52B: F1        .byte con_координаты_Y_X
- D - I - 0x01453C 11:A52C: 34        .byte $34
- D - I - 0x01453D 11:A52D: 3C        .byte $3C

- D - I - 0x01453E 11:A52E: 8E 5D     .dbyt off_AE5D - $2000

- D - I - 0x014540 11:A530: E5        .byte con_повторы + $05

- D - I - 0x014541 11:A531: F7        .byte con_физика
- D - I - 0x014542 11:A532: 20        .byte $20
- D - I - 0x014543 11:A533: 00        .byte $00
- D - I - 0x014544 11:A534: 00        .byte $00

- D - I - 0x014545 11:A535: 01        .byte $01

- D - I - 0x014546 11:A536: F7        .byte con_физика
- D - I - 0x014547 11:A537: E0        .byte $E0
- D - I - 0x014548 11:A538: 00        .byte $00
- D - I - 0x014549 11:A539: 00        .byte $00

- D - I - 0x01454A 11:A53A: 01        .byte $01

- D - I - 0x01454B 11:A53B: F0        .byte con_повторить

- D - I - 0x01454C 11:A53C: F7        .byte con_физика
- D - I - 0x01454D 11:A53D: 10        .byte $10
- D - I - 0x01454E 11:A53E: 00        .byte $00
- D - I - 0x01454F 11:A53F: 00        .byte $00

- D - I - 0x014550 11:A540: 02        .byte $02

- D - I - 0x014551 11:A541: F7        .byte con_физика
- D - I - 0x014552 11:A542: 00        .byte $00
- D - I - 0x014553 11:A543: 00        .byte $00
- D - I - 0x014554 11:A544: 00        .byte $00

- D - I - 0x014555 11:A545: FF        .byte con_выход



off_A546_A4_лицо_цубасы:
- D - I - 0x014556 11:A546: 01        .byte $01

- D - I - 0x014557 11:A547: F1        .byte con_координаты_Y_X
- D - I - 0x014558 11:A548: 30        .byte $30
- D - I - 0x014559 11:A549: 3C        .byte $3C

- D - I - 0x01455A 11:A54A: 8A 8C     .dbyt off_AA8C - $2000

- D - I - 0x01455C 11:A54C: FF        .byte con_выход



off_A54D_A5_мяч_опускается_без_кручения_джаиро_история_роберто:
- D - I - 0x01455D 11:A54D: 3B        .byte $3B

- D - I - 0x01455E 11:A54E: F1        .byte con_координаты_Y_X
- D - I - 0x01455F 11:A54F: A2        .byte $A2
- D - I - 0x014560 11:A550: 2E        .byte $2E

- D - I - 0x014561 11:A551: 93 AB     .dbyt off_B3AB - $2000

- D - I - 0x014563 11:A553: F7        .byte con_физика
- D - I - 0x014564 11:A554: 20        .byte $20
- D - I - 0x014565 11:A555: FF        .byte $FF
- D - I - 0x014566 11:A556: 00        .byte $00

- D - I - 0x014567 11:A557: 64        .byte $64

- D - I - 0x014568 11:A558: FF        .byte con_выход



off_A559_A6_тройной_полет_мяча_справа_налево:
- D - I - 0x014569 11:A559: 12        .byte $12

- D - I - 0x01456A 11:A55A: E3        .byte con_повторы + $03

- D - I - 0x01456B 11:A55B: F1        .byte con_координаты_Y_X
- D - I - 0x01456C 11:A55C: 12        .byte $12
- D - I - 0x01456D 11:A55D: 8E        .byte $8E

- D - I - 0x01456E 11:A55E: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x014570 11:A560: F7        .byte con_физика
- D - I - 0x014571 11:A561: 29        .byte $29
- D - I - 0x014572 11:A562: 00        .byte $00
- D - I - 0x014573 11:A563: 00        .byte $00

- D - I - 0x014574 11:A564: 0E        .byte $0E

- D - I - 0x014575 11:A565: F0        .byte con_повторить

- D - I - 0x014576 11:A566: F1        .byte con_координаты_Y_X
- D - I - 0x014577 11:A567: 3E        .byte $3E
- D - I - 0x014578 11:A568: BE        .byte $BE

- D - I - 0x014579 11:A569: F7        .byte con_физика
- D - I - 0x01457A 11:A56A: 00        .byte $00
- D - I - 0x01457B 11:A56B: 00        .byte $00
- D - I - 0x01457C 11:A56C: 00        .byte $00

- D - I - 0x01457D 11:A56D: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x01457F 11:A56F: FF        .byte con_выход



off_A570_A7_мяч_застрял_в_сетке_и_опускается:
- D - I - 0x014580 11:A570: 1E        .byte $1E

- D - I - 0x014581 11:A571: F1        .byte con_координаты_Y_X
- D - I - 0x014582 11:A572: 1C        .byte $1C
- D - I - 0x014583 11:A573: 3C        .byte $3C

- D - I - 0x014584 11:A574: 94 5E     .dbyt off_B45E - $2000

- D - I - 0x014586 11:A576: F7        .byte con_физика
- D - I - 0x014587 11:A577: 00        .byte $00
- D - I - 0x014588 11:A578: 00        .byte $00
- D - I - 0x014589 11:A579: 00        .byte $00

- D - I - 0x01458A 11:A57A: 7F        .byte $7F
- D - I - 0x01458B 11:A57B: 21        .byte $21

- D - I - 0x01458C 11:A57C: F7        .byte con_физика
- D - I - 0x01458D 11:A57D: 00        .byte $00
- D - I - 0x01458E 11:A57E: 04        .byte $04
- D - I - 0x01458F 11:A57F: 00        .byte $00

- D - I - 0x014590 11:A580: 07        .byte $07

- D - I - 0x014591 11:A581: F7        .byte con_физика
- D - I - 0x014592 11:A582: 00        .byte $00
- D - I - 0x014593 11:A583: 00        .byte $00
- D - I - 0x014594 11:A584: 00        .byte $00

- D - I - 0x014595 11:A585: 02        .byte $02

- D - I - 0x014596 11:A586: F7        .byte con_физика
- D - I - 0x014597 11:A587: 00        .byte $00
- D - I - 0x014598 11:A588: 04        .byte $04
- D - I - 0x014599 11:A589: 00        .byte $00

- D - I - 0x01459A 11:A58A: 1B        .byte $1B

- D - I - 0x01459B 11:A58B: F7        .byte con_физика
- D - I - 0x01459C 11:A58C: 00        .byte $00
- D - I - 0x01459D 11:A58D: 00        .byte $00
- D - I - 0x01459E 11:A58E: 00        .byte $00

- D - I - 0x01459F 11:A58F: F7        .byte con_физика
- D - I - 0x0145A0 11:A590: F0        .byte $F0
- D - I - 0x0145A1 11:A591: 00        .byte $00
- D - I - 0x0145A2 11:A592: 00        .byte $00

- D - I - 0x0145A3 11:A593: 05        .byte $05

- D - I - 0x0145A4 11:A594: F7        .byte con_физика
- D - I - 0x0145A5 11:A595: 10        .byte $10
- D - I - 0x0145A6 11:A596: 00        .byte $00
- D - I - 0x0145A7 11:A597: 00        .byte $00

- D - I - 0x0145A8 11:A598: 05        .byte $05

- D - I - 0x0145A9 11:A599: F7        .byte con_физика
- D - I - 0x0145AA 11:A59A: F0        .byte $F0
- D - I - 0x0145AB 11:A59B: 00        .byte $00
- D - I - 0x0145AC 11:A59C: 00        .byte $00

- D - I - 0x0145AD 11:A59D: 04        .byte $04

- D - I - 0x0145AE 11:A59E: F7        .byte con_физика
- D - I - 0x0145AF 11:A59F: 10        .byte $10
- D - I - 0x0145B0 11:A5A0: 00        .byte $00
- D - I - 0x0145B1 11:A5A1: 00        .byte $00

- D - I - 0x0145B2 11:A5A2: 04        .byte $04

- D - I - 0x0145B3 11:A5A3: F7        .byte con_физика
- D - I - 0x0145B4 11:A5A4: F0        .byte $F0
- D - I - 0x0145B5 11:A5A5: 00        .byte $00
- D - I - 0x0145B6 11:A5A6: 00        .byte $00

- D - I - 0x0145B7 11:A5A7: 03        .byte $03

- D - I - 0x0145B8 11:A5A8: F7        .byte con_физика
- D - I - 0x0145B9 11:A5A9: 10        .byte $10
- D - I - 0x0145BA 11:A5AA: 00        .byte $00
- D - I - 0x0145BB 11:A5AB: 00        .byte $00

- D - I - 0x0145BC 11:A5AC: 03        .byte $03

- D - I - 0x0145BD 11:A5AD: F7        .byte con_физика
- D - I - 0x0145BE 11:A5AE: F0        .byte $F0
- D - I - 0x0145BF 11:A5AF: 00        .byte $00
- D - I - 0x0145C0 11:A5B0: 00        .byte $00

- D - I - 0x0145C1 11:A5B1: 02        .byte $02

- D - I - 0x0145C2 11:A5B2: F7        .byte con_физика
- D - I - 0x0145C3 11:A5B3: 10        .byte $10
- D - I - 0x0145C4 11:A5B4: 00        .byte $00
- D - I - 0x0145C5 11:A5B5: 00        .byte $00

- D - I - 0x0145C6 11:A5B6: 02        .byte $02

- D - I - 0x0145C7 11:A5B7: F7        .byte con_физика
- D - I - 0x0145C8 11:A5B8: F0        .byte $F0
- D - I - 0x0145C9 11:A5B9: 00        .byte $00
- D - I - 0x0145CA 11:A5BA: 00        .byte $00

- D - I - 0x0145CB 11:A5BB: 01        .byte $01

- D - I - 0x0145CC 11:A5BC: F7        .byte con_физика
- D - I - 0x0145CD 11:A5BD: 10        .byte $10
- D - I - 0x0145CE 11:A5BE: 00        .byte $00
- D - I - 0x0145CF 11:A5BF: 00        .byte $00

- D - I - 0x0145D0 11:A5C0: 01        .byte $01

- D - I - 0x0145D1 11:A5C1: F7        .byte con_физика
- D - I - 0x0145D2 11:A5C2: 00        .byte $00
- D - I - 0x0145D3 11:A5C3: 00        .byte $00
- D - I - 0x0145D4 11:A5C4: 00        .byte $00

- D - I - 0x0145D5 11:A5C5: 2D        .byte $2D

- D - I - 0x0145D6 11:A5C6: E3        .byte con_повторы + $03

- D - I - 0x0145D7 11:A5C7: EB        .byte con_повторы + $0B

- D - I - 0x0145D8 11:A5C8: F7        .byte con_физика
- D - I - 0x0145D9 11:A5C9: 0F        .byte $0F
- D - I - 0x0145DA 11:A5CA: 00        .byte $00
- D - I - 0x0145DB 11:A5CB: 00        .byte $00

- D - I - 0x0145DC 11:A5CC: 01        .byte $01

- D - I - 0x0145DD 11:A5CD: F7        .byte con_физика
- D - I - 0x0145DE 11:A5CE: 00        .byte $00
- D - I - 0x0145DF 11:A5CF: 00        .byte $00
- D - I - 0x0145E0 11:A5D0: 00        .byte $00

- D - I - 0x0145E1 11:A5D1: 01        .byte $01

- D - I - 0x0145E2 11:A5D2: F0        .byte con_повторить

- D - I - 0x0145E3 11:A5D3: F0        .byte con_повторить

- D - I - 0x0145E4 11:A5D4: FF        .byte con_выход



off_A5D5_A8_цубаса_стоит_после_удара_циклоном:
- D - I - 0x0145E5 11:A5D5: 1E        .byte $1E

- D - I - 0x0145E6 11:A5D6: F1        .byte con_координаты_Y_X
- D - I - 0x0145E7 11:A5D7: 2C        .byte $2C
- D - I - 0x0145E8 11:A5D8: 3C        .byte $3C

- D - I - 0x0145E9 11:A5D9: 94 87     .dbyt off_B487 - $2000
- D - I - 0x0145EB 11:A5DB: 7F        .byte $7F
- D - I - 0x0145EC 11:A5DC: 7F        .byte $7F
- D - I - 0x0145ED 11:A5DD: 12        .byte $12

- D - I - 0x0145EE 11:A5DE: E3        .byte con_повторы + $03

- D - I - 0x0145EF 11:A5DF: EB        .byte con_повторы + $0B

- D - I - 0x0145F0 11:A5E0: F7        .byte con_физика
- D - I - 0x0145F1 11:A5E1: 01        .byte $01
- D - I - 0x0145F2 11:A5E2: 00        .byte $00
- D - I - 0x0145F3 11:A5E3: 00        .byte $00

- D - I - 0x0145F4 11:A5E4: 01        .byte $01

- D - I - 0x0145F5 11:A5E5: F7        .byte con_физика
- D - I - 0x0145F6 11:A5E6: 00        .byte $00
- D - I - 0x0145F7 11:A5E7: 00        .byte $00
- D - I - 0x0145F8 11:A5E8: 00        .byte $00

- D - I - 0x0145F9 11:A5E9: 01        .byte $01

- D - I - 0x0145FA 11:A5EA: F0        .byte con_повторить

- D - I - 0x0145FB 11:A5EB: F0        .byte con_повторить

- D - I - 0x0145FC 11:A5EC: FF        .byte con_выход



off_A5ED_A9_самолет_летит_справа_налево:
- D - I - 0x0145FD 11:A5ED: 27        .byte $27

- D - I - 0x0145FE 11:A5EE: F1        .byte con_координаты_Y_X
- D - I - 0x0145FF 11:A5EF: 2E        .byte $2E
- D - I - 0x014600 11:A5F0: 9E        .byte $9E

@бесконечный_цикл:
- D - I - 0x014601 11:A5F1: F7        .byte con_физика
- D - I - 0x014602 11:A5F2: 0F        .byte $0F
- D - I - 0x014603 11:A5F3: FE        .byte $FE
- D - I - 0x014604 11:A5F4: 00        .byte $00

- D - I - 0x014605 11:A5F5: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x014607 11:A5F7: 01        .byte $01

- D - I - 0x014608 11:A5F8: F7        .byte con_физика
- D - I - 0x014609 11:A5F9: 00        .byte $00
- D - I - 0x01460A 11:A5FA: FE        .byte $FE
- D - I - 0x01460B 11:A5FB: 00        .byte $00

- D - I - 0x01460C 11:A5FC: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x01460E 11:A5FE: 01        .byte $01

- D - I - 0x01460F 11:A5FF: A5 F1     .dbyt @бесконечный_цикл



off_A602_AA:
- D - I - 0x014612 11:A602: 14        .byte $14

- D - I - 0x014613 11:A603: F1        .byte con_координаты_Y_X
- D - I - 0x014614 11:A604: 9B        .byte $9B
- D - I - 0x014615 11:A605: 48        .byte $48
; ???
- D - I - 0x014616 11:A606: 78        .byte $78
- D - I - 0x014617 11:A607: 78        .byte $78

- D - I - 0x014618 11:A608: 89 73     .dbyt off_A973 - $2000

- D - I - 0x01461A 11:A60A: F7        .byte con_физика
- D - I - 0x01461B 11:A60B: 20        .byte $20
- D - I - 0x01461C 11:A60C: FF        .byte $FF
- D - I - 0x01461D 11:A60D: 00        .byte $00

- D - I - 0x01461E 11:A60E: 78        .byte $78

- D - I - 0x01461F 11:A60F: F7        .byte con_физика
- D - I - 0x014620 11:A610: 00        .byte $00
- D - I - 0x014621 11:A611: 00        .byte $00
- D - I - 0x014622 11:A612: 00        .byte $00

- D - I - 0x014623 11:A613: 01        .byte $01

@бесконечный_цикл:
- D - I - 0x014624 11:A614: F7        .byte con_физика
- D - I - 0x014625 11:A615: 2E        .byte $2E
- D - I - 0x014626 11:A616: 00        .byte $00
- D - I - 0x014627 11:A617: 00        .byte $00

- D - I - 0x014628 11:A618: 01        .byte $01

- D - I - 0x014629 11:A619: F7        .byte con_физика
- D - I - 0x01462A 11:A61A: E2        .byte $E2
- D - I - 0x01462B 11:A61B: 00        .byte $00
- D - I - 0x01462C 11:A61C: 00        .byte $00

- D - I - 0x01462D 11:A61D: 01        .byte $01

- D - I - 0x01462E 11:A61E: A6 14     .dbyt @бесконечный_цикл



off_A620_AB_цубаса_со_спины_в_полный_рост_стоит:
- D - I - 0x014630 11:A620: 32        .byte $32

- D - I - 0x014631 11:A621: F1        .byte con_координаты_Y_X
- D - I - 0x014632 11:A622: 30        .byte $30
- D - I - 0x014633 11:A623: 4E        .byte $4E

- D - I - 0x014634 11:A624: 94 F8     .dbyt off_B4F8 - $2000

- D - I - 0x014636 11:A626: FF        .byte con_выход



off_A627_AC:
- D - I - 0x014637 11:A627: 32        .byte $32

- D - I - 0x014638 11:A628: F1        .byte con_координаты_Y_X
- D - I - 0x014639 11:A629: 30        .byte $30
- D - I - 0x01463A 11:A62A: 92        .byte $92

- D - I - 0x01463B 11:A62B: 94 F8     .dbyt off_B4F8 - $2000
- D - I - 0x01463D 11:A62D: 7F        .byte $7F
- D - I - 0x01463E 11:A62E: 7F        .byte $7F
- D - I - 0x01463F 11:A62F: 7F        .byte $7F
- D - I - 0x014640 11:A630: 3D        .byte $3D

- D - I - 0x014641 11:A631: F7        .byte con_физика
- D - I - 0x014642 11:A632: 0F        .byte $0F
- D - I - 0x014643 11:A633: 00        .byte $00
- D - I - 0x014644 11:A634: 00        .byte $00

- D - I - 0x014645 11:A635: 44        .byte $44

- D - I - 0x014646 11:A636: FF        .byte con_выход



off_A637_AD_глаза_цубасы_злой_крупным_планом_слева:
- D - I - 0x014647 11:A637: 3A        .byte $3A

- D - I - 0x014648 11:A638: F1        .byte con_координаты_Y_X
- D - I - 0x014649 11:A639: 28        .byte $28
- D - I - 0x01464A 11:A63A: 3C        .byte $3C

- D - I - 0x01464B 11:A63B: 95 7C     .dbyt off_B57C - $2000

- D - I - 0x01464D 11:A63D: FF        .byte con_выход



off_A63E_AE_глаза_цубасы_в_шоке_крупным_планом:
- D - I - 0x01464E 11:A63E: 3A        .byte $3A

- D - I - 0x01464F 11:A63F: F1        .byte con_координаты_Y_X
- D - I - 0x014650 11:A640: 28        .byte $28
- D - I - 0x014651 11:A641: 3C        .byte $3C

- D - I - 0x014652 11:A642: 95 47     .dbyt off_B547 - $2000

- D - I - 0x014654 11:A644: FF        .byte con_выход



off_A645_AF:
- D - I - 0x014655 11:A645: 3A        .byte $3A

- D - I - 0x014656 11:A646: F1        .byte con_координаты_Y_X
- D - I - 0x014657 11:A647: 28        .byte $28
- D - I - 0x014658 11:A648: CC        .byte $CC

- D - I - 0x014659 11:A649: 95 7C     .dbyt off_B57C - $2000

- D - I - 0x01465B 11:A64B: F9        .byte con_F9

- D - I - 0x01465C 11:A64C: 7F        .byte $7F
- D - I - 0x01465D 11:A64D: 7F        .byte $7F
- D - I - 0x01465E 11:A64E: 7F        .byte $7F

- D - I - 0x01465F 11:A64F: FF        .byte con_выход



off_A650_B0:
- D - I - 0x014660 11:A650: 3A        .byte $3A

- D - I - 0x014661 11:A651: F1        .byte con_координаты_Y_X
- D - I - 0x014662 11:A652: 48        .byte $48
- D - I - 0x014663 11:A653: A6        .byte $A6

- D - I - 0x014664 11:A654: 95 AC     .dbyt off_B5AC - $2000

- D - I - 0x014666 11:A656: F7        .byte con_физика
- D - I - 0x014667 11:A657: F0        .byte $F0
- D - I - 0x014668 11:A658: 00        .byte $00
- D - I - 0x014669 11:A659: FD        .byte $FD

- D - I - 0x01466A 11:A65A: 14        .byte $14

- D - I - 0x01466B 11:A65B: FF        .byte con_выход



off_A65C_B1_тикание_часов_на_табло_1:
- D - I - 0x01466C 11:A65C: 15        .byte $15

- D - I - 0x01466D 11:A65D: F1        .byte con_координаты_Y_X
- D - I - 0x01466E 11:A65E: 30        .byte $30
- D - I - 0x01466F 11:A65F: 28        .byte $28

@бесконечный_цикл:
- D - I - 0x014670 11:A660: 95 DC     .dbyt off_B5DC - $2000
- D - I - 0x014672 11:A662: 0F        .byte $0F

- D - I - 0x014673 11:A663: 95 E3     .dbyt off_B5E3 - $2000
- D - I - 0x014675 11:A665: 0F        .byte $0F

- D - I - 0x014676 11:A666: A6 60     .dbyt @бесконечный_цикл



off_A668_B2_тикание_часов_на_табло_2:
- D - I - 0x014678 11:A668: 15        .byte $15

- D - I - 0x014679 11:A669: F1        .byte con_координаты_Y_X
- D - I - 0x01467A 11:A66A: 30        .byte $30
- D - I - 0x01467B 11:A66B: 28        .byte $28

@бесконечный_цикл:
- D - I - 0x01467C 11:A66C: 95 EA     .dbyt off_B5EA - $2000
- D - I - 0x01467E 11:A66E: 0F        .byte $0F

- D - I - 0x01467F 11:A66F: 95 F4     .dbyt off_B5F4 - $2000
- D - I - 0x014681 11:A671: 0F        .byte $0F

- D - I - 0x014682 11:A672: A6 6C     .dbyt @бесконечный_цикл



off_A674_B3_часы_на_табло_меняются_на_12:
- D - I - 0x014684 11:A674: 15        .byte $15

- D - I - 0x014685 11:A675: F1        .byte con_координаты_Y_X
- D - I - 0x014686 11:A676: 30        .byte $30
- D - I - 0x014687 11:A677: 28        .byte $28

- D - I - 0x014688 11:A678: 95 EA     .dbyt off_B5EA - $2000
- D - I - 0x01468A 11:A67A: 0F        .byte $0F

- D - I - 0x01468B 11:A67B: 95 F4     .dbyt off_B5F4 - $2000
- D - I - 0x01468D 11:A67D: 0F        .byte $0F

- D - I - 0x01468E 11:A67E: 95 FE     .dbyt off_B5FE - $2000

- D - I - 0x014690 11:A680: FF        .byte con_выход



off_A681_B4_самолет_на_месте_опускается:
- D - I - 0x014691 11:A681: 27        .byte $27

- D - I - 0x014692 11:A682: F1        .byte con_координаты_Y_X
- D - I - 0x014693 11:A683: F3        .byte $F3
- D - I - 0x014694 11:A684: 3E        .byte $3E

@бесконечный_цикл:
- D - I - 0x014695 11:A685: F7        .byte con_физика
- D - I - 0x014696 11:A686: 10        .byte $10
- D - I - 0x014697 11:A687: 00        .byte $00
- D - I - 0x014698 11:A688: 00        .byte $00

- D - I - 0x014699 11:A689: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x01469B 11:A68B: 01        .byte $01

- D - I - 0x01469C 11:A68C: F7        .byte con_физика
- D - I - 0x01469D 11:A68D: 00        .byte $00
- D - I - 0x01469E 11:A68E: 00        .byte $00
- D - I - 0x01469F 11:A68F: 00        .byte $00

- D - I - 0x0146A0 11:A690: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x0146A2 11:A692: 01        .byte $01

- D - I - 0x0146A3 11:A693: A6 85     .dbyt @бесконечный_цикл



off_A695_B5_цубаса_со_спины_в_полный_рост_движется_влево:
- D - I - 0x0146A5 11:A695: 32        .byte $32

- D - I - 0x0146A6 11:A696: F1        .byte con_координаты_Y_X
- D - I - 0x0146A7 11:A697: 30        .byte $30
- D - I - 0x0146A8 11:A698: 92        .byte $92

- D - I - 0x0146A9 11:A699: 94 F8     .dbyt off_B4F8 - $2000
- D - I - 0x0146AB 11:A69B: 7F        .byte $7F
- D - I - 0x0146AC 11:A69C: 3E        .byte $3E

- D - I - 0x0146AD 11:A69D: F7        .byte con_физика
- D - I - 0x0146AE 11:A69E: 0F        .byte $0F
- D - I - 0x0146AF 11:A69F: 00        .byte $00
- D - I - 0x0146B0 11:A6A0: 00        .byte $00

- D - I - 0x0146B1 11:A6A1: 44        .byte $44

- D - I - 0x0146B2 11:A6A2: FF        .byte con_выход



off_A6A3_B6_ХЗ_черный_прямоугольник:
- D - I - 0x0146B3 11:A6A3: 15        .byte $15

- D - I - 0x0146B4 11:A6A4: F1        .byte con_координаты_Y_X
- D - I - 0x0146B5 11:A6A5: 30        .byte $30
- D - I - 0x0146B6 11:A6A6: 50        .byte $50

- D - I - 0x0146B7 11:A6A7: 94 E6     .dbyt off_B4E6 - $2000

- D - I - 0x0146B9 11:A6A9: FF        .byte con_выход



off_A6AA_B7_глаза_и_рот_санае_крупным_планом_разговор:
- D - I - 0x0146BA 11:A6AA: 35        .byte $35

- D - I - 0x0146BB 11:A6AB: F1        .byte con_координаты_Y_X
- D - I - 0x0146BC 11:A6AC: 3C        .byte $3C
- D - I - 0x0146BD 11:A6AD: 44        .byte $44

- D - I - 0x0146BE 11:A6AE: FA        .byte con_развилка
- D - I - 0x0146BF 11:A6AF: 2B B6     .word off_B62B
- D - I - 0x0146C1 11:A6B1: A0 B6     .word off_B6A0



off_A6B4_B8_глаза_и_рот_санае_крупным_планом_в_шоке:
- D - I - 0x0146C4 11:A6B4: 35        .byte $35

- D - I - 0x0146C5 11:A6B5: F1        .byte con_координаты_Y_X
- D - I - 0x0146C6 11:A6B6: 3C        .byte $3C
- D - I - 0x0146C7 11:A6B7: 44        .byte $44

- D - I - 0x0146C8 11:A6B8: 96 58     .dbyt off_B658 - $2000

- D - I - 0x0146CA 11:A6BA: FF        .byte con_выход



off_A6BB_B9_глаза_цубасы_злой_крупным_планом_справа:
- D - I - 0x0146CB 11:A6BB: 3A        .byte $3A

- D - I - 0x0146CC 11:A6BC: F1        .byte con_координаты_Y_X
- D - I - 0x0146CD 11:A6BD: 28        .byte $28
- D - I - 0x0146CE 11:A6BE: 4C        .byte $4C

- D - I - 0x0146CF 11:A6BF: 95 7C     .dbyt off_B57C - $2000

- D - I - 0x0146D1 11:A6C1: FF        .byte con_выход



off_A6C2_BA_ишизаки_барабаны_обезьянка:
- D - I - 0x0146D2 11:A6C2: 37        .byte $37

- D - I - 0x0146D3 11:A6C3: E4        .byte con_повторы + $04

- D - I - 0x0146D4 11:A6C4: F1        .byte con_координаты_Y_X
- D - I - 0x0146D5 11:A6C5: 2C        .byte $2C
- D - I - 0x0146D6 11:A6C6: 3C        .byte $3C

- D - I - 0x0146D7 11:A6C7: 94 0E     .dbyt off_B40E - $2000
- D - I - 0x0146D9 11:A6C9: 04        .byte $04

- D - I - 0x0146DA 11:A6CA: F1        .byte con_координаты_Y_X
- D - I - 0x0146DB 11:A6CB: 2B        .byte $2B
- D - I - 0x0146DC 11:A6CC: 3C        .byte $3C

- D - I - 0x0146DD 11:A6CD: 89 8F     .dbyt off_A98F - $2000
- D - I - 0x0146DF 11:A6CF: 04        .byte $04

- D - I - 0x0146E0 11:A6D0: F0        .byte con_повторить

- D - I - 0x0146E1 11:A6D1: E3        .byte con_повторы + $03

- D - I - 0x0146E2 11:A6D2: F1        .byte con_координаты_Y_X
- D - I - 0x0146E3 11:A6D3: 2C        .byte $2C
- D - I - 0x0146E4 11:A6D4: 3C        .byte $3C

- D - I - 0x0146E5 11:A6D5: 94 0E     .dbyt off_B40E - $2000
- D - I - 0x0146E7 11:A6D7: 04        .byte $04

- D - I - 0x0146E8 11:A6D8: 89 BE     .dbyt off_A9BE - $2000
- D - I - 0x0146EA 11:A6DA: 04        .byte $04

- D - I - 0x0146EB 11:A6DB: F0        .byte con_повторить

- D - I - 0x0146EC 11:A6DC: FF        .byte con_выход



off_A6DD_BB_логотип_японский_быстрое_движение_влево_потом_вправо:
- D - I - 0x0146ED 11:A6DD: 37        .byte $37

- D - I - 0x0146EE 11:A6DE: F1        .byte con_координаты_Y_X
- D - I - 0x0146EF 11:A6DF: 16        .byte $16
- D - I - 0x0146F0 11:A6E0: 94        .byte $94

- D - I - 0x0146F1 11:A6E1: 93 E9     .dbyt off_B3E9 - $2000

- D - I - 0x0146F3 11:A6E3: F7        .byte con_физика
- D - I - 0x0146F4 11:A6E4: 09        .byte $09
- D - I - 0x0146F5 11:A6E5: 00        .byte $00
- D - I - 0x0146F6 11:A6E6: 00        .byte $00

- D - I - 0x0146F7 11:A6E7: 12        .byte $12

- D - I - 0x0146F8 11:A6E8: F7        .byte con_физика
- D - I - 0x0146F9 11:A6E9: 00        .byte $00
- D - I - 0x0146FA 11:A6EA: 00        .byte $00
- D - I - 0x0146FB 11:A6EB: 00        .byte $00

- D - I - 0x0146FC 11:A6EC: 28        .byte $28

- D - I - 0x0146FD 11:A6ED: F7        .byte con_физика
- D - I - 0x0146FE 11:A6EE: 07        .byte $07
- D - I - 0x0146FF 11:A6EF: 00        .byte $00
- D - I - 0x014700 11:A6F0: 00        .byte $00

- D - I - 0x014701 11:A6F1: 12        .byte $12

- D - I - 0x014702 11:A6F2: FF        .byte con_выход



off_A6F3_BC_заяц:
- D - I - 0x014703 11:A6F3: 36        .byte $36

- D - I - 0x014704 11:A6F4: F1        .byte con_координаты_Y_X
- D - I - 0x014705 11:A6F5: 50        .byte $50
- D - I - 0x014706 11:A6F6: 28        .byte $28

- D - I - 0x014707 11:A6F7: 91 5B     .dbyt off_B15B - $2000

- D - I - 0x014709 11:A6F9: FF        .byte con_выход



off_A6FA_BD:
- D - I - 0x01470A 11:A6FA: 0C        .byte $0C

- D - I - 0x01470B 11:A6FB: F1        .byte con_координаты_Y_X
- D - I - 0x01470C 11:A6FC: 40        .byte $40
- D - I - 0x01470D 11:A6FD: FE        .byte $FE

- D - I - 0x01470E 11:A6FE: 96 8B     .dbyt off_B68B - $2000

- D - I - 0x014710 11:A700: FF        .byte con_выход



off_A701_BE_мяч_подброшенный_джаиро_опускается_вид_сверху:
- D - I - 0x014711 11:A701: 26        .byte $26

- D - I - 0x014712 11:A702: F1        .byte con_координаты_Y_X
- D - I - 0x014713 11:A703: 12        .byte $12
- D - I - 0x014714 11:A704: 39        .byte $39

- D - I - 0x014715 11:A705: 8F C3     .dbyt off_AFC3 - $2000
- D - I - 0x014717 11:A707: 01        .byte $01

- D - I - 0x014718 11:A708: F1        .byte con_координаты_Y_X
- D - I - 0x014719 11:A709: 1A        .byte $1A
- D - I - 0x01471A 11:A70A: 39        .byte $39

- D - I - 0x01471B 11:A70B: 8F E4     .dbyt off_AFE4 - $2000
- D - I - 0x01471D 11:A70D: 01        .byte $01

- D - I - 0x01471E 11:A70E: F1        .byte con_координаты_Y_X
- D - I - 0x01471F 11:A70F: 1E        .byte $1E
- D - I - 0x014720 11:A710: 39        .byte $39

- D - I - 0x014721 11:A711: 8F FF     .dbyt off_AFFF - $2000
- D - I - 0x014723 11:A713: 01        .byte $01

- D - I - 0x014724 11:A714: F1        .byte con_координаты_Y_X
- D - I - 0x014725 11:A715: 22        .byte $22
- D - I - 0x014726 11:A716: 39        .byte $39

- D - I - 0x014727 11:A717: 90 17     .dbyt off_B017 - $2000
- D - I - 0x014729 11:A719: 01        .byte $01

- D - I - 0x01472A 11:A71A: F1        .byte con_координаты_Y_X
- D - I - 0x01472B 11:A71B: 24        .byte $24
- D - I - 0x01472C 11:A71C: 39        .byte $39

- D - I - 0x01472D 11:A71D: 90 26     .dbyt off_B026 - $2000
- D - I - 0x01472F 11:A71F: 01        .byte $01

- D - I - 0x014730 11:A720: F1        .byte con_координаты_Y_X
- D - I - 0x014731 11:A721: 26        .byte $26
- D - I - 0x014732 11:A722: 39        .byte $39

- D - I - 0x014733 11:A723: 90 35     .dbyt off_B035 - $2000
- D - I - 0x014735 11:A725: 01        .byte $01

- D - I - 0x014736 11:A726: F1        .byte con_координаты_Y_X
- D - I - 0x014737 11:A727: 28        .byte $28
- D - I - 0x014738 11:A728: 39        .byte $39

- D - I - 0x014739 11:A729: 90 44     .dbyt off_B044 - $2000
- D - I - 0x01473B 11:A72B: 01        .byte $01

- D - I - 0x01473C 11:A72C: F1        .byte con_координаты_Y_X
- D - I - 0x01473D 11:A72D: 2B        .byte $2B
- D - I - 0x01473E 11:A72E: 3B        .byte $3B

- D - I - 0x01473F 11:A72F: 90 53     .dbyt off_B053 - $2000
- D - I - 0x014741 11:A731: 01        .byte $01

- - - - - 0x014742 11:A732: F1        .byte con_координаты_Y_X
- - - - - 0x014743 11:A733: 2C        .byte $2C
- - - - - 0x014744 11:A734: 3B        .byte $3B

- - - - - 0x014745 11:A735: 90 5B     .dbyt off_B05B - $2000
- - - - - 0x014747 11:A737: 01        .byte $01

- - - - - 0x014748 11:A738: F1        .byte con_координаты_Y_X
- - - - - 0x014749 11:A739: 2D        .byte $2D
- - - - - 0x01474A 11:A73A: 3B        .byte $3B

- - - - - 0x01474B 11:A73B: 90 63     .dbyt off_B063 - $2000

- - - - - 0x01474D 11:A73D: FF        .byte con_выход



off_A73E_BF_джаиро_замахивается_и_опускается:
- D - I - 0x01474E 11:A73E: 14        .byte $14

- D - I - 0x01474F 11:A73F: F1        .byte con_координаты_Y_X
- D - I - 0x014750 11:A740: 9E        .byte $9E
- D - I - 0x014751 11:A741: 48        .byte $48

- D - I - 0x014752 11:A742: 89 59     .dbyt off_A959 - $2000
- D - I - 0x014754 11:A744: 78        .byte $78
- D - I - 0x014755 11:A745: 78        .byte $78

- D - I - 0x014756 11:A746: F7        .byte con_физика
- D - I - 0x014757 11:A747: 20        .byte $20
- D - I - 0x014758 11:A748: FF        .byte $FF
- D - I - 0x014759 11:A749: 00        .byte $00

- D - I - 0x01475A 11:A74A: 78        .byte $78

- D - I - 0x01475B 11:A74B: F7        .byte con_физика
- D - I - 0x01475C 11:A74C: 00        .byte $00
- D - I - 0x01475D 11:A74D: 00        .byte $00
- D - I - 0x01475E 11:A74E: 00        .byte $00

- D - I - 0x01475F 11:A74F: FF        .byte con_выход



off_A750_C0:
- D - I - 0x014760 11:A750: 07        .byte $07

- D - I - 0x014761 11:A751: F1        .byte con_координаты_Y_X
- D - I - 0x014762 11:A752: 04        .byte $04
- D - I - 0x014763 11:A753: 04        .byte $04

- D - I - 0x014764 11:A754: 96 EB     .dbyt off_B6EB - $2000

- D - I - 0x014766 11:A756: FF        .byte con_выход



off_A757_C1:
- D - I - 0x014767 11:A757: 02        .byte $02

- D - I - 0x014768 11:A758: E3        .byte con_повторы + $03

- D - I - 0x014769 11:A759: F1        .byte con_координаты_Y_X
- D - I - 0x01476A 11:A75A: 04        .byte $04
- D - I - 0x01476B 11:A75B: FC        .byte $FC

- D - I - 0x01476C 11:A75C: 97 11     .dbyt off_B711 - $2000

- D - I - 0x01476E 11:A75E: F7        .byte con_физика
- D - I - 0x01476F 11:A75F: 05        .byte $05
- D - I - 0x014770 11:A760: 00        .byte $00
- D - I - 0x014771 11:A761: 00        .byte $00

- D - I - 0x014772 11:A762: 0A        .byte $0A

- D - I - 0x014773 11:A763: F0        .byte con_повторить

- D - I - 0x014774 11:A764: FF        .byte con_выход



off_A765_C2_джек_выходит_и_поздравляет:
- D - I - 0x014775 11:A765: 15        .byte $15

- D - I - 0x014776 11:A766: F1        .byte con_координаты_Y_X
- D - I - 0x014777 11:A767: 38        .byte $38
- D - I - 0x014778 11:A768: 78        .byte $78

- D - I - 0x014779 11:A769: F7        .byte con_физика
- D - I - 0x01477A 11:A76A: 0F        .byte $0F
- D - I - 0x01477B 11:A76B: 00        .byte $00
- D - I - 0x01477C 11:A76C: 00        .byte $00

- D - I - 0x01477D 11:A76D: EF        .byte con_повторы + $0F

- D - I - 0x01477E 11:A76E: 97 39     .dbyt off_B739 - $2000
- D - I - 0x014780 11:A770: 02        .byte $02

- D - I - 0x014781 11:A771: 97 46     .dbyt off_B746 - $2000
- D - I - 0x014783 11:A773: 02        .byte $02

- D - I - 0x014784 11:A774: F0        .byte con_повторить

- D - I - 0x014785 11:A775: F7        .byte con_физика
- D - I - 0x014786 11:A776: 00        .byte $00
- D - I - 0x014787 11:A777: 00        .byte $00
- D - I - 0x014788 11:A778: 00        .byte $00

- D - I - 0x014789 11:A779: 97 53     .dbyt off_B753 - $2000
- D - I - 0x01478B 11:A77B: 2A        .byte $2A

@бесконечный_цикл:
- D - I - 0x01478C 11:A77C: 97 62     .dbyt off_B762 - $2000
- D - I - 0x01478E 11:A77E: 0F        .byte $0F

- D - I - 0x01478F 11:A77F: 97 53     .dbyt off_B753 - $2000
- D - I - 0x014791 11:A781: 0F        .byte $0F

- D - I - 0x014792 11:A782: A7 7C     .dbyt @бесконечный_цикл



off_A784_C3_джек_уходит_с_поля:
- D - I - 0x014794 11:A784: 15        .byte $15

- D - I - 0x014795 11:A785: F1        .byte con_координаты_Y_X
- D - I - 0x014796 11:A786: 38        .byte $38
- D - I - 0x014797 11:A787: 3C        .byte $3C

- D - I - 0x014798 11:A788: F7        .byte con_физика
- D - I - 0x014799 11:A789: 00        .byte $00
- D - I - 0x01479A 11:A78A: 00        .byte $00
- D - I - 0x01479B 11:A78B: 00        .byte $00

- D - I - 0x01479C 11:A78C: 97 53     .dbyt off_B753 - $2000
; таймер джека перед движением влево когда он покидает поле
- D - I - 0x01479E 11:A78E: 3C        .byte $1E

- D - I - 0x01479F 11:A78F: F7        .byte con_физика
- D - I - 0x0147A0 11:A790: 0F        .byte $0F
- D - I - 0x0147A1 11:A791: 00        .byte $00
- D - I - 0x0147A2 11:A792: 00        .byte $00

- D - I - 0x0147A3 11:A793: E2        .byte con_повторы + $02

- D - I - 0x0147A4 11:A794: EF        .byte con_повторы + $0F

- D - I - 0x0147A5 11:A795: 97 39     .dbyt off_B739 - $2000
- D - I - 0x0147A7 11:A797: 02        .byte $02

- D - I - 0x0147A8 11:A798: 97 46     .dbyt off_B746 - $2000
- D - I - 0x0147AA 11:A79A: 02        .byte $02

- D - I - 0x0147AB 11:A79B: F0        .byte con_повторить

- D - I - 0x0147AC 11:A79C: F0        .byte con_повторить

- D - I - 0x0147AD 11:A79D: FF        .byte con_выход



off_A79E_C4_джек_улетает_и_появляется_и_садится_на_голову:
- D - I - 0x0147AE 11:A79E: 15        .byte $15

- D - I - 0x0147AF 11:A79F: F1        .byte con_координаты_Y_X
- D - I - 0x0147B0 11:A7A0: 38        .byte $38
- D - I - 0x0147B1 11:A7A1: 3C        .byte $3C

- D - I - 0x0147B2 11:A7A2: F7        .byte con_физика
- D - I - 0x0147B3 11:A7A3: E0        .byte $E0
- D - I - 0x0147B4 11:A7A4: 00        .byte $00
- D - I - 0x0147B5 11:A7A5: 00        .byte $00
; полет
- D - I - 0x0147B6 11:A7A6: 97 62     .dbyt off_B762 - $2000
- D - I - 0x0147B8 11:A7A8: 12        .byte $12

- D - I - 0x0147B9 11:A7A9: F7        .byte con_физика
- D - I - 0x0147BA 11:A7AA: 00        .byte $00
- D - I - 0x0147BB 11:A7AB: 00        .byte $00
- D - I - 0x0147BC 11:A7AC: 00        .byte $00
; невидимость
- D - I - 0x0147BD 11:A7AD: 7F        .byte $7F
- D - I - 0x0147BE 11:A7AE: 11        .byte $50

- D - I - 0x0147BF 11:A7AF: F1        .byte con_координаты_Y_X
- D - I - 0x0147C0 11:A7B0: 1C        .byte $1C
- D - I - 0x0147C1 11:A7B1: 0A        .byte $0A

- D - I - 0x0147C2 11:A7B2: 97 53     .dbyt off_B753 - $2000
; появление из фона
- D - I - 0x0147C4 11:A7B4: F7        .byte con_физика
- D - I - 0x0147C5 11:A7B5: F0        .byte $F0
- D - I - 0x0147C6 11:A7B6: 00        .byte $00
- D - I - 0x0147C7 11:A7B7: 00        .byte $00

- D - I - 0x0147C8 11:A7B8: 04        .byte $04
; остановить появление
- D - I - 0x0147C9 11:A7B9: F7        .byte con_физика
- D - I - 0x0147CA 11:A7BA: 00        .byte $00
- D - I - 0x0147CB 11:A7BB: 00        .byte $00
- D - I - 0x0147CC 11:A7BC: 00        .byte $00

- D - I - 0x0147CD 11:A7BD: 7F        .byte $7F
; прыжок из фона
- D - I - 0x0147B2 11:A7A2: F7        .byte con_физика
- D - I - 0x0147B3 11:A7A3: E0        .byte $F0
- D - I - 0x0147B4 11:A7A4: 00        .byte $FB
- D - I - 0x0147B5 11:A7A5: 00        .byte $00

- D - I - 0x0147B6 11:A7A6: 97 62     .dbyt off_B762 - $2000
- D - I - 0x0147B8 11:A7A8: 12        .byte $10
; смена анимации перед приземлением на границу фона
- D - I - 0x0147C2 11:A7B2: 97 53     .dbyt off_B753 - $2000
- D - I - 0x0147B8 11:A7A8: 12        .byte $04

- D - I - 0x0147C9 11:A7B9: F7        .byte con_физика
- D - I - 0x0147CA 11:A7BA: 00        .byte $00
- D - I - 0x0147CB 11:A7BB: 00        .byte $00
- D - I - 0x0147CC 11:A7BC: 00        .byte $00
; ожидание падения
- D - I - 0x0147CD 11:A7BD: 7F        .byte $7F
; падение
- D - I - 0x0147CF 11:A7BF: F7        .byte con_физика
- D - I - 0x0147D0 11:A7C0: 20        .byte $10
- D - I - 0x0147D1 11:A7C1: 00        .byte $08
- D - I - 0x0147D2 11:A7C2: 00        .byte $00

- D - I - 0x0147D3 11:A7C3: 97 71     .dbyt off_B771 - $2000
- D - I - 0x0147D5 11:A7C5: 21        .byte $1A

- D - I - 0x0147D6 11:A7C6: F1        .byte con_координаты_Y_X
- D - I - 0x0147D7 11:A7C7: 5B        .byte $5B
- D - I - 0x0147D8 11:A7C8: 0A        .byte $0A
; приземление
- D - I - 0x0147D9 11:A7C9: F7        .byte con_физика
- D - I - 0x0147DA 11:A7CA: 00        .byte $00
- D - I - 0x0147DB 11:A7CB: 00        .byte $00
- D - I - 0x0147DC 11:A7CC: 00        .byte $00

- D - I - 0x0147DD 11:A7CD: 97 53     .dbyt off_B753 - $2000
- D - I - 0x0147DF 11:A7CF: 1E        .byte $1E

@бесконечный_цикл:
- D - I - 0x0147E0 11:A7D0: 97 62     .dbyt off_B762 - $2000
- D - I - 0x0147E2 11:A7D2: 0F        .byte $0F

- D - I - 0x0147E3 11:A7D3: 97 53     .dbyt off_B753 - $2000
- D - I - 0x0147E5 11:A7D5: 0F        .byte $0F

- D - I - 0x0147E6 11:A7D6: A7 D0     .dbyt @бесконечный_цикл



off_A7D8_C5_объект_для_скрытия_прыгающего_джека:
- D - I - 0x0147E8 11:A7D8: 15        .byte $15

- D - I - 0x0147E9 11:A7D9: F1        .byte con_координаты_Y_X
- D - I - 0x0147EA 11:A7DA: 14        .byte $14
- D - I - 0x0147EB 11:A7DB: 00        .byte $00

- D - I - 0x0147EC 11:A7DC: 96 EB     .dbyt off_B6EB - $2000
- D - I - 0x0147EE 11:A7DE: 7F        .byte $7F
- D - I - 0x0147EF 11:A7DF: 23        .byte $62

- D - I - 0x0147F0 11:A7E0: F1        .byte con_координаты_Y_X
- D - I - 0x0147F1 11:A7E1: 1C        .byte $1C
- D - I - 0x0147F2 11:A7E2: 00        .byte $00

- D - I - 0x0147F3 11:A7E3: 96 EB     .dbyt off_B6EB - $2000
- D - I - 0x0147F2 11:A7E2: 00        .byte $7F
- D - I - 0x0147F2 11:A7E2: 00        .byte $30

- D - I - 0x0147B9 11:A7A9: F7        .byte con_физика
- D - I - 0x0147BA 11:A7AA: 00        .byte $10
- D - I - 0x0147BB 11:A7AB: 00        .byte $00
- D - I - 0x0147BC 11:A7AC: 00        .byte $00

- D - I - 0x0147F2 11:A7E2: 00        .byte $7F

- D - I - 0x0147FC 11:A7EC: FF        .byte con_выход



off_A7ED_C6_полоска_для_логотипа_движется_вправо:
- D - I - 0x0147FD 11:A7ED: 00        .byte $00

- D - I - 0x0147FE 11:A7EE: F1        .byte con_координаты_Y_X
- D - I - 0x0147FF 11:A7EF: 44        .byte $44
- D - I - 0x014800 11:A7F0: 80        .byte $80

- D - I - 0x014801 11:A7F1: 97 80     .dbyt off_B780 - $2000
- D - I - 0x014803 11:A7F3: 45        .byte $45

- D - I - 0x014804 11:A7F4: F7        .byte con_физика
- D - I - 0x014805 11:A7F5: 07        .byte $07
- D - I - 0x014806 11:A7F6: 00        .byte $00
- D - I - 0x014807 11:A7F7: 07        .byte $07

- D - I - 0x014808 11:A7F8: 1D        .byte $1D

- D - I - 0x014809 11:A7F9: FF        .byte con_выход



off_A7FA_C7_мерцание_звездой_на_полоске_логотипа:
- D - I - 0x01480A 11:A7FA: 00        .byte $00

- D - I - 0x01480B 11:A7FB: F1        .byte con_координаты_Y_X
- D - I - 0x01480C 11:A7FC: 44        .byte $44
- D - I - 0x01480D 11:A7FD: BE        .byte $BE

- D - I - 0x01480E 11:A7FE: 5A        .byte $5A

- D - I - 0x01480F 11:A7FF: F1        .byte con_координаты_Y_X
- D - I - 0x014810 11:A800: 44        .byte $44
- D - I - 0x014811 11:A801: 3C        .byte $3C

- D - I - 0x014812 11:A802: 97 97     .dbyt off_B797 - $2000
- D - I - 0x014814 11:A804: 01        .byte $01

- D - I - 0x014815 11:A805: 97 A6     .dbyt off_B7A6 - $2000
- D - I - 0x014817 11:A807: 01        .byte $01

- D - I - 0x014818 11:A808: 97 97     .dbyt off_B797 - $2000
- D - I - 0x01481A 11:A80A: 01        .byte $01

- D - I - 0x01481B 11:A80B: F1        .byte con_координаты_Y_X
- D - I - 0x01481C 11:A80C: 44        .byte $44
- D - I - 0x01481D 11:A80D: BE        .byte $BE

- D - I - 0x01481E 11:A80E: 97 97     .dbyt off_B797 - $2000

- D - I - 0x014820 11:A810: FF        .byte con_выход



off_A811_C8:
- D - I - 0x014821 11:A811: 21        .byte $21

- D - I - 0x014822 11:A812: F1        .byte con_координаты_Y_X
- D - I - 0x014823 11:A813: 48        .byte $48
- D - I - 0x014824 11:A814: 00        .byte $00

- D - I - 0x014825 11:A815: 96 EB     .dbyt off_B6EB - $2000

- D - I - 0x014827 11:A817: FF        .byte con_выход



off_A818_C9:
- D - I - 0x014828 11:A818: 21        .byte $21

- D - I - 0x014829 11:A819: F1        .byte con_координаты_Y_X
- D - I - 0x01482A 11:A81A: 18        .byte $18
- D - I - 0x01482B 11:A81B: 00        .byte $00

- D - I - 0x01482C 11:A81C: 96 EB     .dbyt off_B6EB - $2000

- D - I - 0x01482E 11:A81E: FF        .byte con_выход



off_A81F_CA_движение_надписи_VOL_II_влево_вверху:
- D - I - 0x01482F 11:A81F: 36        .byte $36

- D - I - 0x014830 11:A820: F1        .byte con_координаты_Y_X
- D - I - 0x014831 11:A821: 34        .byte $34
- D - I - 0x014832 11:A822: 85        .byte $85

- D - I - 0x014833 11:A823: 97 BB     .dbyt off_B7BB - $2000

- D - I - 0x014835 11:A825: F7        .byte con_физика
- D - I - 0x014836 11:A826: 09        .byte $09
- D - I - 0x014837 11:A827: 00        .byte $00
- D - I - 0x014838 11:A828: 07        .byte $07

- D - I - 0x014839 11:A829: 0D        .byte $0D

- D - I - 0x01483A 11:A82A: FF        .byte con_выход



off_A82B_CB_движение_надписи_VOL_II_влево_внизу:
- D - I - 0x01483B 11:A82B: 36        .byte $36

- D - I - 0x01483C 11:A82C: F1        .byte con_координаты_Y_X
- D - I - 0x01483D 11:A82D: 48        .byte $48
- D - I - 0x01483E 11:A82E: 86        .byte $86

- D - I - 0x01483F 11:A82F: 97 BB     .dbyt off_B7BB - $2000

- D - I - 0x014841 11:A831: F7        .byte con_физика
- D - I - 0x014842 11:A832: 09        .byte $09
- D - I - 0x014843 11:A833: 00        .byte $00
- D - I - 0x014844 11:A834: 07        .byte $07

- D - I - 0x014845 11:A835: 0E        .byte $0E

- D - I - 0x014846 11:A836: FF        .byte con_выход









; данные спрайтов
; сначала 4 банка спрайтов
; затем если A0-BF, это смещение на + 8 относительно базовых координат
    ; следующий байт это номер палитры + зеркало
    ; и еще один байт это номер тайла
        ; если следующий байт меньше 80, то это смещение вниз * 2 относительно предыдущей координаты, и потом номер тайла
off_A837:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x01484B 11:A83B: FA        .byte con_jsr
- D - I - 0x01484C 11:A83C: 10 B9     .word off_B910

- D - I - 0x01484E 11:A83E: BF        .byte $BF
                                      .byte $34, $2C
                                      .byte $38, $28
                                      .byte $3C, $2A

- D - I - 0x014855 11:A845: A0        .byte $A0
                                      .byte $34, $2D
                                      .byte $38, $29
                                      .byte $3C, $2B

- D - I - 0x01485C 11:A84C: A1        .byte $A1
                                      .byte $38, $2E

- D - I - 0x01485F 11:A84F: FB        .byte con_jmp
- D - I - 0x014860 11:A850: CF B7     .word off_B7CF



off_A852:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x014866 11:A856: FA        .byte con_jsr
- D - I - 0x014867 11:A857: 10 B9     .word off_B910

- D - I - 0x014869 11:A859: BF        .byte $BF
                                      .byte $34, $2F
                                      .byte $38, $38
                                      .byte $3C, $3A

- D - I - 0x014870 11:A860: A0        .byte $A0
                                      .byte $34, $39
                                      .byte $38, $3B
                                      .byte $3C, $2B

- D - I - 0x014877 11:A867: A1        .byte $A1
                                      .byte $34, $3C
                                      .byte $38, $3E

- D - I - 0x01487C 11:A86C: FB        .byte con_jmp
- D - I - 0x01487D 11:A86D: CF B7     .word off_B7CF



off_A86F:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x014883 11:A873: FA        .byte con_jsr
- D - I - 0x014884 11:A874: 1B B9     .word off_B91B

- D - I - 0x014886 11:A876: BF        .byte $BF

- D - I - 0x014887 11:A877: 9D        .byte $9D

                                      .byte $CE, $3C, $2C
                                      .byte $C6, $3C, $2D
                                      .byte $CE, $1C, $28
                                      .byte $C6, $1C, $29
                                      
- D - I - 0x014894 11:A884: 9F        .byte $9F

                                      .byte $CE, $3C, $2A
                                      .byte $C6, $3C, $2B

- D - I - 0x01489B 11:A88B: A1        .byte $A1
                                      .byte $9E, $CE
                                      .byte $3C, $2E

- D - I - 0x0148A0 11:A890: FB        .byte con_jmp
- D - I - 0x0148A1 11:A891: 21 B8     .word off_B821



off_A893:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x0148A7 11:A897: FA        .byte con_jsr
- D - I - 0x0148A8 11:A898: 1B B9     .word off_B91B

- D - I - 0x0148AA 11:A89A: BF        .byte $BF

- D - I - 0x0148AB 11:A89B: 9D        .byte $9D

                                      .byte $CE, $3C, $2F
                                      .byte $C6, $3C, $39
                                      .byte $CE, $1C, $38
                                      .byte $C6, $1C, $3B
                                      
- D - I - 0x0148B8 11:A8A8: 9F        .byte $9F

                                      .byte $CE, $3C, $3A
                                      .byte $C6, $3C, $2B
                                      
- D - I - 0x0148BF 11:A8AF: A1        .byte $A1
                                      .byte $9D, $CE
                                      .byte $3C, $3C
                                      
                                      .byte $CE, $1C, $3E

- D - I - 0x0148C7 11:A8B7: FB        .byte con_jmp
- D - I - 0x0148C8 11:A8B8: 21 B8     .word off_B821



off_A8BA:
                                      .byte $08, $09, $0A, $0B
                                      
- D - I - 0x0148CE 11:A8BE: FA        .byte con_jsr
- D - I - 0x0148CF 11:A8BF: 30 B9     .word off_B930

- D - I - 0x0148D1 11:A8C1: BF        .byte $BF

- D - I - 0x0148D2 11:A8C2: 9D        .byte $9D

                                      .byte $CE, $00, $2C
                                      .byte $C6, $00, $2D
                                      
- D - I - 0x0148D9 11:A8C9: 9E        .byte $9E

                                      .byte $CE, $00, $28
                                      .byte $C6, $00, $29
                                      
- D - I - 0x0148E0 11:A8D0: 9F        .byte $9F

                                      .byte $CE, $00, $2A
                                      .byte $C6, $00, $2B

- D - I - 0x0148E7 11:A8D7: A1        .byte $A1
                                      .byte $9E, $CE
                                      .byte $00, $2E

- D - I - 0x0148EC 11:A8DC: FB        .byte con_jmp
- D - I - 0x0148ED 11:A8DD: 6D B8     .word off_B86D



off_A8DF:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x0148F3 11:A8E3: FA        .byte con_jsr
- D - I - 0x0148F4 11:A8E4: 30 B9     .word off_B930

- D - I - 0x0148F6 11:A8E6: BF        .byte $BF

- D - I - 0x0148F7 11:A8E7: 9D        .byte $9D

                                      .byte $CE, $00, $2F
                                      .byte $C6, $00, $39
                                      
- D - I - 0x0148FE 11:A8EE: 9E        .byte $9E

                                      .byte $CE, $00, $38
                                      .byte $C6, $00, $3B
                                      
- D - I - 0x014905 11:A8F5: 9F        .byte $9F

                                      .byte $CE, $00, $3A
                                      .byte $C6, $00, $2B
                                      
- D - I - 0x01490C 11:A8FC: A1        .byte $A1

- D - I - 0x01490D 11:A8FD: 9D        .byte $9D

                                      .byte $CE, $00, $3C
                                      
- D - I - 0x014911 11:A901: 9E        .byte $9E

                                      .byte $CE, $00, $3E
                                      
- D - I - 0x014915 11:A905: FB        .byte con_jmp
- D - I - 0x014916 11:A906: 6D B8     .word off_B86D



off_A908:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x01491C 11:A90C: FA        .byte con_jsr
- D - I - 0x01491D 11:A90D: 3B B9     .word off_B93B

- D - I - 0x01491F 11:A90F: BF        .byte $BF

- D - I - 0x014920 11:A910: 9D        .byte $9D

                                      .byte $C0, $3C, $2C
                                      .byte $C0, $1C, $28
                                      
- D - I - 0x014927 11:A917: 9F        .byte $9F

                                      .byte $C0, $3C, $2A
                                      
- D - I - 0x01492B 11:A91B: A0        .byte $A0

- D - I - 0x01492C 11:A91C: 9D        .byte $9D

                                      .byte $C0, $3C, $2D
                                      .byte $C0, $1C, $29
                                      
- D - I - 0x014933 11:A923: 9F        .byte $9F

                                      .byte $C0, $3C, $2B
                                      
- D - I - 0x014937 11:A927: A1        .byte $A1

- D - I - 0x014938 11:A928: 9E        .byte $9E

                                      .byte $C0, $3C, $2E
- D - I - 0x01493C 11:A92C: FB        .byte con_jmp
- D - I - 0x01493D 11:A92D: C3 B8     .word off_B8C3



off_A92F:
                                      .byte $08, $09, $0A, $0B

- D - I - 0x014943 11:A933: FA        .byte con_jsr
- D - I - 0x014944 11:A934: 3B B9     .word off_B93B

- D - I - 0x014946 11:A936: BF        .byte $BF

- D - I - 0x014947 11:A937: 9D        .byte $9D

                                      .byte $C0, $3C, $2F
                                      .byte $C0, $1C, $38
                                      
- D - I - 0x01494E 11:A93E: 9F        .byte $9F

                                      .byte $C0, $3C, $3A
                                      
- D - I - 0x014952 11:A942: A0        .byte $A0

- D - I - 0x014953 11:A943: 9D        .byte $9D

                                      .byte $C0, $3C, $39
                                      .byte $C0, $1C, $3B
                                      
- D - I - 0x01495A 11:A94A: 9F        .byte $9F

                                      .byte $C0, $3C, $2B
                                      
- D - I - 0x01495E 11:A94E: A1        .byte $A1

- D - I - 0x01495F 11:A94F: 9D        .byte $9D

                                      .byte $C0, $3C, $3C
                                      .byte $C0, $1C, $3E
                                      
- D - I - 0x014966 11:A956: FB        .byte con_jmp
- D - I - 0x014967 11:A957: C3 B8     .word off_B8C3



off_A959:
                                      .byte $10, $11, $12, $5F

- D - I - 0x01496D 11:A95D: BE        .byte $BE
                                      .byte $38, $11
                                      .byte $3C, $13
                                      
- D - I - 0x014972 11:A962: BF        .byte $BF
                                      .byte $38, $14
                                      .byte $3C, $16
                                      .byte $00, $19
                                      
- D - I - 0x014979 11:A969: A0        .byte $A0
                                      .byte $38, $15
                                      .byte $3C, $17
                                      .byte $00, $1C
                                      
- D - I - 0x014980 11:A970: FB        .byte con_jmp
- D - I - 0x014981 11:A971: 4C B9     .word off_B94C



off_A973:
                                      .byte $10, $11, $12, $5F

- D - I - 0x014987 11:A977: BE        .byte $BE
                                      .byte $08, $86
                                      
- D - I - 0x01498A 11:A97A: BF        .byte $BF
                                      .byte $04, $84
                                      .byte $08, $87
                                      
- D - I - 0x01498F 11:A97F: A0        .byte $A0
                                      .byte $00, $82
                                      .byte $04, $85
                                      
- D - I - 0x014994 11:A984: A1        .byte $A1
                                      .byte $3D, $88
                                      .byte $01, $83
                                      
- D - I - 0x014999 11:A989: A2        .byte $A2
                                      .byte $39, $8C
                                      .byte $3D, $89
                                      
- D - I - 0x01499E 11:A98E: FF        .byte con_FF



off_A98F:
                                      .byte $6A, $6B, $7A, $7B

- D - I - 0x0149A3 11:A993: BF        .byte $BF
                                      .byte $03, $52
                                      .byte $07, $58
                                      .byte $0B, $5A

- D - I - 0x0149AA 11:A99A: A0        .byte $A0
                                      .byte $03, $5C
                                      .byte $03, $53
                                      .byte $07, $5E
                                      .byte $07, $59
                                      .byte $0B, $74
                                      .byte $0B, $5B

- D - I - 0x0149B7 11:A9A7: A1        .byte $A1
                                      .byte $43, $5C
                                      .byte $43, $53
                                      .byte $47, $5E
                                      .byte $47, $59
                                      .byte $4B, $74
                                      .byte $4B, $5B

- D - I - 0x0149C4 11:A9B4: A2        .byte $A2
                                      .byte $43, $52
                                      .byte $47, $58
                                      .byte $4B, $5A

- D - I - 0x0149CB 11:A9BB: FB        .byte con_jmp
- D - I - 0x0149CC 11:A9BC: 90 BC     .word off_BC90



off_A9BE:
                                      .byte $6A, $6B, $7A, $7B

- D - I - 0x0149D2 11:A9C2: BF        .byte $BF
                                      .byte $3F, $54

- D - I - 0x0149D5 11:A9C5: A0        .byte $A0
                                      .byte $3B, $5F
                                      .byte $3F, $55
                                      .byte $03, $57
                                      .byte $07, $5D

- D - I - 0x0149DE 11:A9CE: A1        .byte $A1
                                      .byte $7B, $5F
                                      .byte $7F, $55
                                      .byte $43, $57
                                      .byte $47, $5D

- D - I - 0x0149E7 11:A9D7: A2        .byte $A2
                                      .byte $7F, $54

- D - I - 0x0149EA 11:A9DA: FB        .byte con_jmp
- D - I - 0x0149EB 11:A9DB: AA B9     .word off_B9AA



off_A9DD:
                                      .byte $06, $07, $5E, $5F

- D - I - 0x0149F1 11:A9E1: BF        .byte $BF
                                      .byte $39, $4F
                                      .byte $3D, $65
                                      .byte $01, $67
                                      .byte $05, $6D
                                      .byte $09, $6F

- D - I - 0x0149FC 11:A9EC: A0        .byte $A0
                                      .byte $39, $5A
                                      .byte $3D, $70
                                      .byte $01, $72
                                      .byte $05, $78
                                      .byte $09, $7A

- D - I - 0x014A07 11:A9F7: A1        .byte $A1
                                      .byte $39, $5B
                                      .byte $3D, $71
                                      .byte $01, $73
                                      .byte $05, $79
                                      .byte $09, $7B

- D - I - 0x014A12 11:AA02: A2        .byte $A2
                                      .byte $39, $5E
                                      .byte $3D, $74
                                      .byte $01, $76
                                      .byte $05, $7C
                                      .byte $09, $7E

- D - I - 0x014A1D 11:AA0D: A3        .byte $A3
                                      .byte $39, $5F
                                      .byte $3D, $75
                                      .byte $01, $77
                                      .byte $05, $7D
                                      .byte $09, $7F

- D - I - 0x014A28 11:AA18: FF        .byte con_FF



off_AA19:
                                      .byte $06, $07, $5E, $5F

- D - I - 0x014A2D 11:AA1D: BF        .byte $BF
                                      .byte $38, $42

- D - I - 0x014A30 11:AA20: A0        .byte $A0
                                      .byte $38, $43
                                      
- D - I - 0x014A33 11:AA23: 9F        .byte $9F

                                      .byte $CC, $00, $44
                                      .byte $C4, $00, $45
                                      .byte $01, $47
                                      .byte $05, $51
                                      .byte $09, $53

- D - I - 0x014A40 11:AA30: A1        .byte $A1
                                      .byte $38, $41
                                      .byte $3D, $50
                                      .byte $00, $46
                                      .byte $01, $52
                                      .byte $05, $54
                                      .byte $09, $56

- D - I - 0x014A4D 11:AA3D: FF        .byte con_FF



off_AA3E:
                                      .byte $06, $07, $5E, $5F

- D - I - 0x014A52 11:AA42: BF        .byte $BF
                                      .byte $39, $4A
                                      .byte $3D, $60
                                      .byte $01, $62
                                      .byte $05, $68
                                      .byte $09, $6A

- D - I - 0x014A5D 11:AA4D: A0        .byte $A0
                                      .byte $39, $4B
                                      .byte $3D, $61
                                      .byte $01, $63
                                      .byte $05, $69
                                      .byte $09, $6B

- D - I - 0x014A68 11:AA58: A1        .byte $A1
                                      .byte $3D, $64
                                      .byte $01, $66
                                      .byte $05, $6C
                                      .byte $09, $6E

- D - I - 0x014A71 11:AA61: A2        .byte $A2
                                      .byte $01, $4D
                                      .byte $05, $4C
                                      .byte $09, $4E

- D - I - 0x014A78 11:AA68: A3        .byte $A3
                                      .byte $01, $58
                                      .byte $05, $59
                                      .byte $09, $5C

- D - I - 0x014A7F 11:AA6F: A1        .byte $A1
                                      .byte $38, $55
                                      .byte $3C, $57
                                      .byte $0D, $53

- D - I - 0x014A86 11:AA76: A2        .byte $A2
                                      .byte $38, $48
                                      .byte $3C, $49
                                      .byte $00, $40
                                      .byte $0D, $56

- D - I - 0x014A8F 11:AA7F: FF        .byte con_FF



off_AA80:
                                      .byte $06, $07, $5E, $5F

- D - I - 0x014A94 11:AA84: A0        .byte $A0
                                      .byte $39, $58
                                      .byte $3D, $59
                                      .byte $01, $5C

- D - I - 0x014A9B 11:AA8B: FF        .byte con_FF



off_AA8C:
                                      .byte $33, $5D, $5E, $5F

- D - I - 0x014AA0 11:AA90: BD        .byte $BD
                                      .byte $3C, $28

- D - I - 0x014AA3 11:AA93: BE        .byte $BE
                                      .byte $38, $02
                                      .byte $3C, $08
                                      .byte $00, $0A
                                      .byte $04, $20
                                      .byte $08, $22

- D - I - 0x014AAE 11:AA9E: BF        .byte $BF
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $0B
                                      .byte $04, $21
                                      .byte $09, $23
                                      .byte $0C, $29

- D - I - 0x014ABB 11:AAAB: A0        .byte $A0
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $06, $24
                                      .byte $09, $26
                                      .byte $0C, $2C

- D - I - 0x014AC8 11:AAB8: A1        .byte $A1
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $06, $25
                                      .byte $09, $27
                                      .byte $0C, $2D

- D - I - 0x014AD5 11:AAC5: A2        .byte $A2
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $04, $30
                                      .byte $08, $32
                                      .byte $0C, $38

- D - I - 0x014AE2 11:AAD2: A3        .byte $A3
                                      .byte $38, $0E
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $04, $31
                                      .byte $08, $33

- D - I - 0x014AED 11:AADD: A4        .byte $A4
                                      .byte $38, $0F
                                      .byte $3C, $03
                                      .byte $00, $09
                                      .byte $04, $39

- D - I - 0x014AF6 11:AAE6: FF        .byte con_FF



off_AAE7:
                                      .byte $30, $31, $32, $5F

- D - I - 0x014AFB 11:AAEB: BD        .byte $BD
                                      .byte $38, $81

- D - I - 0x014AFE 11:AAEE: BE        .byte $BE
                                      .byte $38, $80
                                      .byte $3C, $82
                                      .byte $00, $88
                                      .byte $04, $8A
                                      .byte $08, $22

- D - I - 0x014B09 11:AAF9: BF        .byte $BF
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $02, $89
                                      .byte $04, $8B
                                      .byte $05, $83
                                      .byte $09, $A1
                                      .byte $0C, $46

- D - I - 0x014B18 11:AB08: A0        .byte $A0
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $04, $8C
                                      .byte $09, $8E
                                      .byte $0C, $A4

- D - I - 0x014B25 11:AB15: A1        .byte $A1
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $04, $8D
                                      .byte $08, $8F
                                      .byte $0C, $2D

- D - I - 0x014B32 11:AB22: A2        .byte $A2
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $04, $98
                                      .byte $08, $9A
                                      .byte $0C, $53

- D - I - 0x014B3F 11:AB2F: A3        .byte $A3
                                      .byte $38, $84
                                      .byte $3C, $01
                                      .byte $00, $90
                                      .byte $04, $92
                                      .byte $08, $86

- D - I - 0x014B4A 11:AB3A: A4        .byte $A4
                                      .byte $38, $85
                                      .byte $3C, $87
                                      .byte $00, $91
                                      .byte $04, $93

- D - I - 0x014B53 11:AB43: A5        .byte $A5
                                      .byte $0C, $A5

- D - I - 0x014B56 11:AB46: A6        .byte $A6
                                      .byte $0C, $B0

- D - I - 0x014B59 11:AB49: FF        .byte con_FF



off_AB4A:
                                      .byte $36, $37, $5E, $5F

- D - I - 0x014B5E 11:AB4E: BE        .byte $BE
                                      .byte $39, $04
                                      .byte $3D, $02
                                      .byte $01, $08
                                      .byte $04, $0A
                                      .byte $08, $20

- D - I - 0x014B69 11:AB59: BF        .byte $BF
                                      .byte $39, $33
                                      .byte $3D, $03
                                      .byte $01, $09
                                      .byte $02, $05
                                      .byte $04, $0B
                                      .byte $06, $07
                                      .byte $0A, $21
                                      .byte $0C, $23

- D - I - 0x014B7A 11:AB6A: A0        .byte $A0
                                      .byte $39, $33
                                      .byte $3D, $06
                                      .byte $01, $0C
                                      .byte $05, $0E
                                      .byte $0A, $24
                                      .byte $0C, $26

- D - I - 0x014B87 11:AB77: A1        .byte $A1
                                      .byte $39, $33
                                      .byte $3D, $33
                                      .byte $01, $0D
                                      .byte $05, $0F
                                      .byte $08, $25
                                      .byte $0A, $22
                                      .byte $0C, $27

- D - I - 0x014B96 11:AB86: A2        .byte $A2
                                      .byte $39, $33
                                      .byte $3D, $33
                                      .byte $01, $33
                                      .byte $05, $1A
                                      .byte $09, $30
                                      .byte $0C, $32

- D - I - 0x014BA3 11:AB93: A3        .byte $A3
                                      .byte $39, $11
                                      .byte $3D, $33
                                      .byte $01, $10
                                      .byte $05, $12
                                      .byte $09, $18

- D - I - 0x014BAE 11:AB9E: A4        .byte $A4
                                      .byte $39, $13
                                      .byte $3D, $19
                                      .byte $01, $1B
                                      .byte $05, $31

- D - I - 0x014BB7 11:ABA7: FF        .byte con_FF



off_ABA8:
                                      .byte $30, $31, $32, $5F

- D - I - 0x014BBC 11:ABAC: BE        .byte $BE
                                      .byte $39, $3C
                                      .byte $3D, $3E
                                      .byte $01, $04
                                      .byte $04, $06
                                      .byte $08, $22

- D - I - 0x014BC7 11:ABB7: BF        .byte $BF
                                      .byte $39, $3D
                                      .byte $3D, $3F
                                      .byte $01, $05
                                      .byte $04, $07
                                      .byte $0A, $1D
                                      .byte $0C, $1F

- D - I - 0x014BD4 11:ABC4: A0        .byte $A0
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $10
                                      .byte $04, $12
                                      .byte $05, $14
                                      .byte $0A, $35
                                      .byte $0C, $37

- D - I - 0x014BE3 11:ABD3: A1        .byte $A1
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $11
                                      .byte $05, $13
                                      .byte $0A, $2E
                                      .byte $0C, $3B

- D - I - 0x014BF0 11:ABE0: A2        .byte $A2
                                      .byte $39, $2B
                                      .byte $3D, $02
                                      .byte $01, $02
                                      .byte $05, $16
                                      .byte $09, $2F
                                      .byte $0F, $1B

- D - I - 0x014BFD 11:ABED: A3        .byte $A3
                                      .byte $39, $28
                                      .byte $3D, $2A
                                      .byte $01, $15
                                      .byte $05, $17
                                      .byte $09, $3A

- D - I - 0x014C08 11:ABF8: FF        .byte con_FF



off_ABF9:
                                      .byte $30, $31, $32, $5F

- D - I - 0x014C0D 11:ABFD: BE        .byte $BE
                                      .byte $39, $09
                                      .byte $3D, $08
                                      .byte $01, $0A
                                      .byte $04, $20
                                      .byte $08, $22

- D - I - 0x014C18 11:AC08: BF        .byte $BF
                                      .byte $39, $0C
                                      .byte $3D, $02
                                      .byte $01, $0B
                                      .byte $04, $21
                                      .byte $0A, $23
                                      .byte $0C, $29

- D - I - 0x014C25 11:AC15: A0        .byte $A0
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $0E
                                      .byte $05, $24
                                      .byte $0A, $26
                                      .byte $0C, $2C

- D - I - 0x014C32 11:AC22: A1        .byte $A1
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $02
                                      .byte $05, $25
                                      .byte $07, $18
                                      .byte $0A, $27
                                      .byte $0B, $1A
                                      .byte $0C, $2D

- D - I - 0x014C43 11:AC33: A2        .byte $A2
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $02
                                      .byte $05, $30
                                      .byte $09, $32
                                      .byte $0C, $38

- D - I - 0x014C50 11:AC40: A3        .byte $A3
                                      .byte $39, $19
                                      .byte $3D, $02
                                      .byte $01, $31
                                      .byte $05, $33
                                      .byte $09, $39

- D - I - 0x014C5B 11:AC4B: A4        .byte $A4
                                      .byte $39, $1C
                                      .byte $3D, $1E
                                      .byte $01, $34
                                      .byte $05, $36

- D - I - 0x014C64 11:AC54: A5        .byte $A5
                                      .byte $39, $0D
                                      .byte $3D, $0F

- D - I - 0x014C69 11:AC59: FF        .byte con_FF



off_AC5A:
                                      .byte $30, $31, $32, $5F

- D - I - 0x014C6E 11:AC5E: BD        .byte $BD
                                      .byte $39, $40
                                      .byte $3D, $42
                                      .byte $01, $48

- D - I - 0x014C75 11:AC65: BE        .byte $BE
                                      .byte $39, $41
                                      .byte $3D, $43
                                      .byte $01, $49
                                      .byte $04, $4B
                                      .byte $08, $22

- D - I - 0x014C80 11:AC70: BF        .byte $BF
                                      .byte $39, $02
                                      .byte $01, $4C
                                      .byte $04, $4E
                                      .byte $0A, $44
                                      .byte $0C, $46

- D - I - 0x014C8B 11:AC7B: A0        .byte $A0
                                      .byte $01, $4D
                                      .byte $04, $4F
                                      .byte $0A, $45
                                      .byte $0C, $47

- D - I - 0x014C94 11:AC84: A1        .byte $A1
                                      .byte $07, $5A
                                      .byte $08, $50
                                      .byte $0A, $4A
                                      .byte $0C, $2D

- D - I - 0x014C9D 11:AC8D: A2        .byte $A2
                                      .byte $39, $02
                                      .byte $05, $5B
                                      .byte $09, $51
                                      .byte $0C, $53

- D - I - 0x014CA6 11:AC96: A3        .byte $A3
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $02
                                      .byte $05, $5E
                                      .byte $09, $54

- D - I - 0x014CB1 11:ACA1: A4        .byte $A4
                                      .byte $39, $02
                                      .byte $3D, $56
                                      .byte $01, $02
                                      .byte $05, $5F
                                      .byte $09, $55

- D - I - 0x014CBC 11:ACAC: A5        .byte $A5
                                      .byte $39, $02
                                      .byte $3D, $5C
                                      .byte $01, $52
                                      .byte $05, $58

- D - I - 0x014CC5 11:ACB5: A6        .byte $A6
                                      .byte $39, $57
                                      .byte $3D, $5D
                                      .byte $01, $59

- D - I - 0x014CCC 11:ACBC: FF        .byte con_FF



off_ACBD:
                                      .byte $30, $31, $32, $5F

- D - I - 0x014CD1 11:ACC1: BC        .byte $BC
                                      .byte $39, $A0

- D - I - 0x014CD4 11:ACC4: BD        .byte $BD
                                      .byte $39, $A2
                                      .byte $3D, $A8

- D - I - 0x014CD9 11:ACC9: BE        .byte $BE
                                      .byte $39, $A3
                                      .byte $3D, $A9
                                      .byte $01, $A6
                                      .byte $04, $AC
                                      .byte $08, $22

- D - I - 0x014CE4 11:ACD4: BF        .byte $BF
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $A7
                                      .byte $04, $AD
                                      .byte $0A, $AF
                                      .byte $0C, $B1

- D - I - 0x014CF1 11:ACE1: A0        .byte $A0
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $B2
                                      .byte $04, $B8
                                      .byte $0A, $BA
                                      .byte $0C, $9B

- D - I - 0x014CFE 11:ACEE: A1        .byte $A1
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $B3
                                      .byte $04, $B9
                                      .byte $07, $AE
                                      .byte $08, $BB
                                      .byte $0C, $2D

- D - I - 0x014D0D 11:ACFD: A2        .byte $A2
                                      .byte $39, $02
                                      .byte $3D, $02
                                      .byte $01, $94
                                      .byte $05, $96
                                      .byte $09, $99
                                      .byte $0C, $53

- D - I - 0x014D1A 11:AD0A: A3        .byte $A3
                                      .byte $39, $AA
                                      .byte $3D, $AB
                                      .byte $01, $95
                                      .byte $05, $97

- D - I - 0x014D23 11:AD13: FF        .byte con_FF



off_AD14:
                                      .byte $38, $39, $3A, $3B

- D - I - 0x014D28 11:AD18: BD        .byte $BD
                                      .byte $81, $C0
                                      .byte $0E, $20
                                      .byte $0E, $04

- D - I - 0x014D2F 11:AD1F: BE        .byte $BE
                                      .byte $3A, $02
                                      .byte $3E, $08
                                      .byte $02, $0A
                                      .byte $05, $21
                                      .byte $0E, $05

- D - I - 0x014D3A 11:AD2A: BF        .byte $BF
                                      .byte $3A, $03
                                      .byte $3E, $09
                                      .byte $02, $0B
                                      .byte $05, $24
                                      .byte $08, $26
                                      .byte $0C, $2C
                                      .byte $0E, $10

- D - I - 0x014D49 11:AD39: A0        .byte $A0
                                      .byte $3A, $06
                                      .byte $3E, $0C
                                      .byte $01, $0E
                                      .byte $05, $25
                                      .byte $0B, $27
                                      .byte $0C, $2D

- D - I - 0x014D56 11:AD46: A1        .byte $A1
                                      .byte $3A, $07
                                      .byte $3E, $0D
                                      .byte $01, $0F
                                      .byte $05, $30
                                      .byte $0B, $32
                                      .byte $0C, $38

- D - I - 0x014D63 11:AD53: A2        .byte $A2
                                      .byte $3A, $12
                                      .byte $3E, $18
                                      .byte $01, $1A
                                      .byte $05, $1E
                                      .byte $04, $31
                                      .byte $08, $33
                                      .byte $0C, $39

- D - I - 0x014D72 11:AD62: A3        .byte $A3
                                      .byte $3A, $13
                                      .byte $3C, $19
                                      .byte $3E, $1C
                                      .byte $00, $1B
                                      .byte $04, $34
                                      .byte $08, $36
                                      .byte $0C, $3C

- D - I - 0x014D81 11:AD71: FF        .byte con_FF



off_AD72:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014D86 11:AD76: FA        .byte con_jsr
- D - I - 0x014D87 11:AD77: 88 BB     .word off_BB88

- D - I - 0x014D89 11:AD79: FB        .byte con_jmp
- D - I - 0x014D8A 11:AD7A: FC BA     .word off_BAFC



off_AD7C:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014D90 11:AD80: FA        .byte con_jsr
- D - I - 0x014D91 11:AD81: 88 BB     .word off_BB88

- D - I - 0x014D93 11:AD83: FB        .byte con_jmp
- D - I - 0x014D94 11:AD84: 14 BB     .word off_BB14



off_AD86:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014D9A 11:AD8A: FA        .byte con_jsr
- D - I - 0x014D9B 11:AD8B: 88 BB     .word off_BB88

- D - I - 0x014D9D 11:AD8D: FB        .byte con_jmp
- D - I - 0x014D9E 11:AD8E: 56 BB     .word off_BB56



off_AD90:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DA4 11:AD94: FA        .byte con_jsr
- D - I - 0x014DA5 11:AD95: 88 BB     .word off_BB88

- D - I - 0x014DA7 11:AD97: FB        .byte con_jmp
- D - I - 0x014DA8 11:AD98: 6E BB     .word off_BB6E



off_AD9A:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DAE 11:AD9E: FA        .byte con_jsr
- D - I - 0x014DAF 11:AD9F: 9C BB     .word off_BB9C

- D - I - 0x014DB1 11:ADA1: FB        .byte con_jmp
- D - I - 0x014DB2 11:ADA2: FC BA     .word off_BAFC



off_ADA4:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DB8 11:ADA8: FA        .byte con_jsr
- D - I - 0x014DB9 11:ADA9: 9C BB     .word off_BB9C

- D - I - 0x014DBB 11:ADAB: FB        .byte con_jmp
- D - I - 0x014DBC 11:ADAC: 14 BB     .word off_BB14



off_ADAE:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DC2 11:ADB2: FA        .byte con_jsr
- D - I - 0x014DC3 11:ADB3: 9C BB     .word off_BB9C

- D - I - 0x014DC5 11:ADB5: FB        .byte con_jmp
- D - I - 0x014DC6 11:ADB6: 56 BB     .word off_BB56



off_ADB8:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x014DCC 11:ADBC: FA        .byte con_jsr
- D - I - 0x014DCD 11:ADBD: 03 BC     .word off_BC03

- D - I - 0x014DCF 11:ADBF: FB        .byte con_jmp
- D - I - 0x014DD0 11:ADC0: 3D BC     .word off_BC3D



off_ADC2:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DD6 11:ADC6: FA        .byte con_jsr
- D - I - 0x014DD7 11:ADC7: A2 BB     .word off_BBA2

- D - I - 0x014DD9 11:ADC9: FB        .byte con_jmp
- D - I - 0x014DDA 11:ADCA: FC BA     .word off_BAFC



off_ADCC:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DE0 11:ADD0: FA        .byte con_jsr
- D - I - 0x014DE1 11:ADD1: A2 BB     .word off_BBA2

- D - I - 0x014DE3 11:ADD3: FB        .byte con_jmp
- D - I - 0x014DE4 11:ADD4: 14 BB     .word off_BB14



off_ADD6:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x014DEA 11:ADDA: BF        .byte $BF
                                      .byte $3F, $48
                                      .byte $03, $4A
                                      .byte $07, $60

- D - I - 0x014DF1 11:ADE1: A0        .byte $A0
                                      .byte $3F, $49
                                      .byte $03, $4B
                                      .byte $07, $61

- D - I - 0x014DF8 11:ADE8: A1        .byte $A1
                                      .byte $3F, $FD
                                      .byte $03, $FF
                                      .byte $07, $FE

- D - I - 0x014DFF 11:ADEF: FF        .byte con_FF



off_ADF0:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x014E04 11:ADF4: BF        .byte $BF
                                      .byte $07, $50
                                      .byte $0B, $52

- D - I - 0x014E09 11:ADF9: A0        .byte $A0
                                      .byte $07, $51
                                      .byte $0B, $53

- D - I - 0x014E0E 11:ADFE: A1        .byte $A1
                                      .byte $07, $54
                                      .byte $09, $56
                                      .byte $0B, $2E

- D - I - 0x014E15 11:AE05: FB        .byte con_jmp
- D - I - 0x014E16 11:AE06: 06 BA     .word off_BA06



off_AE08:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x014E1C 11:AE0C: FA        .byte con_jsr
- D - I - 0x014E1D 11:AE0D: 65 BA     .word off_BA65

- D - I - 0x014E1F 11:AE0F: FB        .byte con_jmp
- D - I - 0x014E20 11:AE10: 71 BA     .word off_BA71



off_AE12:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x014E26 11:AE16: A1        .byte $A1
                                      .byte $03, $70
                                      
- D - I - 0x014E29 11:AE19: A2        .byte $A2
                                      .byte $03, $75
                                      .byte $07, $77
off_AE1E:
                                      .byte $0B, $4F

- D - I - 0x014E30 11:AE20: A0        .byte $A0
                                      .byte $03, $65

- D - I - 0x014E33 11:AE23: FA        .byte con_jsr
- D - I - 0x014E34 11:AE24: 65 BA     .word off_BA65

- D - I - 0x014E36 11:AE26: FB        .byte con_jmp
- D - I - 0x014E37 11:AE27: 7C BA     .word off_BA7C



off_AE29:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x014E3D 11:AE2D: A1        .byte $A1
                                      .byte $03, $67

- D - I - 0x014E40 11:AE30: A2        .byte $A2
                                      .byte $03, $72
                                      .byte $07, $73

- D - I - 0x014E45 11:AE35: FB        .byte con_jmp
- D - I - 0x014E46 11:AE36: 1E AE     .word off_AE1E



off_AE38:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x014E4C 11:AE3C: BF        .byte $BF
                                      .byte $07, $76
                                      .byte $0B, $6D
                                      .byte $0F, $6F

- D - I - 0x014E53 11:AE43: A0        .byte $A0
                                      .byte $0F, $7A
off_AE46:
- D - I - 0x014E56 11:AE46: A1        .byte $A1
                                      .byte $0F, $74

- D - I - 0x014E59 11:AE49: FB        .byte con_jmp
- D - I - 0x014E5A 11:AE4A: 71 BA     .word off_BA71



off_AE4C:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x014E60 11:AE50: BF        .byte $BF
                                      .byte $07, $78
                                      .byte $0B, $79
                                      .byte $0F, $7B

- D - I - 0x014E67 11:AE57: A0        .byte $A0
                                      .byte $0F, $7C

- D - I - 0x014E6A 11:AE5A: FB        .byte con_jmp
- D - I - 0x014E6B 11:AE5B: 46 AE     .word off_AE46



off_AE5D:
                                      .byte $74, $75, $76, $77

- D - I - 0x014E71 11:AE61: BD        .byte $BD
                                      .byte $30, $1F
                                      .byte $34, $08
                                      .byte $38, $0A

- D - I - 0x014E78 11:AE68: BE        .byte $BE
                                      .byte $34, $09
                                      .byte $38, $0B
                                      .byte $3C, $13

- D - I - 0x014E7F 11:AE6F: BF        .byte $BF
                                      .byte $34, $0C
                                      .byte $38, $0E
                                      .byte $3C, $04
                                      .byte $00, $06

- D - I - 0x014E88 11:AE78: A0        .byte $A0
                                      .byte $34, $0D
                                      .byte $38, $0F
                                      .byte $3C, $05
                                      .byte $00, $07

- D - I - 0x014E91 11:AE81: A1        .byte $A1
                                      .byte $34, $18
                                      .byte $38, $1A
                                      .byte $3C, $10
                                      .byte $00, $12

- D - I - 0x014E9A 11:AE8A: A2        .byte $A2
                                      .byte $34, $19
                                      .byte $38, $1B
                                      .byte $3C, $11

- D - I - 0x014EA1 11:AE91: A3        .byte $A3
                                      .byte $34, $14
                                      .byte $38, $16

- D - I - 0x014EA6 11:AE96: A4        .byte $A4
                                      .byte $30, $03
                                      .byte $34, $5B
                                      .byte $38, $17

- D - I - 0x014EAD 11:AE9D: FF        .byte con_FF



off_AE9E:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x014EB2 11:AEA2: FA        .byte con_jsr
- D - I - 0x014EB3 11:AEA3: D4 BB     .word off_BBD4
; bzk заменить jsr на jmp и удалить FF
- D - I - 0x014EB5 11:AEA5: FF        .byte con_FF



off_AEA6:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x014EBA 11:AEAA: FA        .byte con_jsr
- D - I - 0x014EBB 11:AEAB: E8 BB     .word off_BBE8
; bzk заменить jsr на jmp и удалить FF
- D - I - 0x014EBD 11:AEAD: FF        .byte con_FF



off_AEAE:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x014EC2 11:AEB2: FA        .byte con_jsr
- D - I - 0x014EC3 11:AEB3: 03 BC     .word off_BC03
; bzk заменить jsr на jmp и удалить FF
- D - I - 0x014EC5 11:AEB5: FF        .byte con_FF



off_AEB6:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x014ECA 11:AEBA: FA        .byte con_jsr
- D - I - 0x014ECB 11:AEBB: 1A BC     .word off_BC1A
; bzk заменить jsr на jmp и удалить FF
- D - I - 0x014ECD 11:AEBD: FF        .byte con_FF



off_AEBE:
                                      .byte $3B, $47, $5E, $5F

- D - I - 0x014ED2 11:AEC2: A0        .byte $A0
                                      .byte $30, $04
                                      .byte $34, $06
                                      .byte $38, $12
                                      .byte $3C, $0A
                                      .byte $00, $20
                                      .byte $04, $1C
                                      .byte $08, $05
                                      .byte $0C, $02

- D - I - 0x014EE3 11:AED3: A1        .byte $A1
                                      .byte $34, $07
                                      .byte $38, $09
                                      .byte $3C, $0B
                                      .byte $00, $21
                                      .byte $04, $1D
                                      .byte $08, $10
                                      .byte $0C, $03

- D - I - 0x014EF2 11:AEE2: A2        .byte $A2
                                      .byte $34, $12
                                      .byte $38, $0C
                                      .byte $3C, $0E
                                      .byte $00, $24
                                      .byte $04, $1E
                                      .byte $08, $11

- D - I - 0x014EFF 11:AEEF: A3        .byte $A3
                                      .byte $34, $13
                                      .byte $38, $0D
                                      .byte $3C, $0F
                                      .byte $00, $25
                                      .byte $04, $1F
                                      .byte $08, $14

- D - I - 0x014F0C 11:AEFC: A4        .byte $A4
                                      .byte $34, $16
                                      .byte $38, $18
                                      .byte $3C, $1A
                                      .byte $00, $30
                                      .byte $04, $35
                                      .byte $08, $15

- D - I - 0x014F19 11:AF09: A5        .byte $A5
                                      .byte $38, $19
                                      .byte $3C, $1B
                                      .byte $00, $31
                                      .byte $04, $22

- D - I - 0x014F22 11:AF12: A6        .byte $A6
                                      .byte $38, $17
                                      .byte $3C, $08
                                      .byte $00, $34
                                      .byte $04, $36

- D - I - 0x014F2B 11:AF1B: FF        .byte con_FF



off_AF1C:
                                      .byte $3B, $47, $5E, $5F

- D - I - 0x014F30 11:AF20: A0        .byte $A0
                                      .byte $30, $04
                                      .byte $34, $06
                                      .byte $38, $12
                                      .byte $3C, $28
                                      .byte $00, $2A
                                      .byte $04, $1C
                                      .byte $08, $05
                                      .byte $0C, $02

- D - I - 0x014F41 11:AF31: A1        .byte $A1
                                      .byte $34, $07
                                      .byte $38, $23
                                      .byte $3C, $29
                                      .byte $00, $2B
                                      .byte $04, $37
                                      .byte $08, $10
                                      .byte $0C, $03

- D - I - 0x014F50 11:AF40: A2        .byte $A2
                                      .byte $34, $12
                                      .byte $38, $26
                                      .byte $3C, $2C
                                      .byte $00, $2E
                                      .byte $04, $3D
                                      .byte $08, $11

- D - I - 0x014F5D 11:AF4D: A3        .byte $A3
                                      .byte $34, $13
                                      .byte $38, $27
                                      .byte $3C, $2D
                                      .byte $00, $2F
                                      .byte $04, $3F
                                      .byte $08, $14

- D - I - 0x014F6A 11:AF5A: A4        .byte $A4
                                      .byte $34, $16
                                      .byte $38, $32
                                      .byte $3C, $38
                                      .byte $00, $3A
                                      .byte $04, $58
                                      .byte $08, $15

- D - I - 0x014F77 11:AF67: A5        .byte $A5
                                      .byte $38, $33
                                      .byte $3C, $39
                                      .byte $00, $3B
                                      .byte $04, $59

- D - I - 0x014F80 11:AF70: A6        .byte $A6
                                      .byte $38, $17
                                      .byte $3C, $3C
                                      .byte $00, $3E
                                      .byte $04, $36

- D - I - 0x014F89 11:AF79: FF        .byte con_FF



off_AF7A:
                                      .byte $3B, $47, $5E, $5F

- D - I - 0x014F8E 11:AF7E: A0        .byte $A0
                                      .byte $30, $04
                                      .byte $34, $06
                                      .byte $38, $4E
                                      .byte $04, $53
                                      .byte $08, $05
                                      .byte $0C, $02

- D - I - 0x014F9B 11:AF8B: A1        .byte $A1
                                      .byte $34, $07
                                      .byte $38, $4F
                                      .byte $3C, $64
                                      .byte $00, $66
                                      .byte $04, $56
                                      .byte $08, $10
                                      .byte $0C, $03

- D - I - 0x014FAA 11:AF9A: A2        .byte $A2
                                      .byte $34, $12
                                      .byte $38, $5A
                                      .byte $3C, $65
                                      .byte $00, $67
                                      .byte $04, $57
                                      .byte $08, $11

- D - I - 0x014FB7 11:AFA7: A3        .byte $A3
                                      .byte $34, $13
                                      .byte $38, $5B
                                      .byte $3C, $51
                                      .byte $04, $5C
                                      .byte $08, $14

- D - I - 0x014FC2 11:AFB2: A4        .byte $A4
                                      .byte $34, $16
                                      .byte $38, $5E
                                      .byte $3C, $54
                                      .byte $04, $5D
                                      .byte $08, $15

- D - I - 0x014FCD 11:AFBD: A5        .byte $A5
                                      .byte $38, $5F
                                      .byte $3C, $55

- D - I - 0x014FD2 11:AFC2: FF        .byte con_FF



off_AFC3:
                                      .byte $06, $26, $21, $5F

- D - I - 0x014FD7 11:AFC7: BF        .byte $BF
                                      .byte $03, $08
                                      .byte $07, $0A

- D - I - 0x014FDC 11:AFCC: A0        .byte $A0
                                      .byte $3F, $02
                                      .byte $03, $09
                                      .byte $07, $0B
                                      .byte $0B, $20

- D - I - 0x014FE5 11:AFD5: A1        .byte $A1
                                      .byte $3F, $03
                                      .byte $03, $0C
                                      .byte $07, $0E
                                      .byte $0B, $21

- D - I - 0x014FEE 11:AFDE: A2        .byte $A2
                                      .byte $03, $0D
                                      .byte $07, $0F

- D - I - 0x014FF3 11:AFE3: FF        .byte con_FF



off_AFE4:
                                      .byte $06, $26, $21, $5F

- D - I - 0x014FF8 11:AFE8: BF        .byte $BF
                                      .byte $03, $22
                                      .byte $07, $28

- D - I - 0x014FFD 11:AFED: A0        .byte $A0
                                      .byte $3F, $24
                                      .byte $03, $23
                                      .byte $07, $29

- D - I - 0x015004 11:AFF4: A1        .byte $A1
                                      .byte $3F, $25
                                      .byte $03, $26
                                      .byte $07, $2C

- D - I - 0x01500B 11:AFFB: A2        .byte $A2
                                      .byte $03, $27

- D - I - 0x01500E 11:AFFE: FF        .byte con_FF



off_AFFF:
                                      .byte $06, $26, $21, $5F

- D - I - 0x015013 11:B003: BF        .byte $BF
                                      .byte $03, $06
                                      .byte $07, $28

- D - I - 0x015018 11:B008: A0        .byte $A0
                                      .byte $3F, $04
                                      .byte $03, $07
                                      .byte $07, $18

- D - I - 0x01501F 11:B00F: A1        .byte $A1
                                      .byte $3F, $05
                                      .byte $03, $12
                                      .byte $07, $19

- D - I - 0x015026 11:B016: FF        .byte con_FF



off_B017:
                                      .byte $06, $26, $21, $5F

- D - I - 0x01502B 11:B01B: A0        .byte $A0
                                      .byte $03, $10
                                      .byte $07, $2D

- D - I - 0x015030 11:B020: A1        .byte $A1
                                      .byte $03, $11
                                      .byte $07, $13

- D - I - 0x015035 11:B025: FF        .byte con_FF



off_B026:
                                      .byte $06, $26, $21, $5F

- D - I - 0x01503A 11:B02A: A0        .byte $A0
                                      .byte $03, $1A
                                      .byte $07, $30

- D - I - 0x01503F 11:B02F: A1        .byte $A1
                                      .byte $03, $1B
                                      .byte $07, $31

- D - I - 0x015044 11:B034: FF        .byte con_FF



off_B035:
                                      .byte $06, $26, $21, $5F

- D - I - 0x015049 11:B039: A0        .byte $A0
                                      .byte $03, $32
                                      .byte $07, $38

- D - I - 0x01504E 11:B03E: A1        .byte $A1
                                      .byte $03, $33
                                      .byte $07, $39

- D - I - 0x015053 11:B043: FF        .byte con_FF



off_B044:
                                      .byte $06, $26, $21, $5F

- D - I - 0x015058 11:B048: A0        .byte $A0
                                      .byte $03, $2A
                                      .byte $07, $2E

- D - I - 0x01505D 11:B04D: A1        .byte $A1
                                      .byte $03, $2B
                                      .byte $07, $2F

- D - I - 0x015062 11:B052: FF        .byte con_FF



off_B053:
                                      .byte $06, $26, $21, $5F

- D - I - 0x015067 11:B057: A0        .byte $A0
                                      .byte $03, $3A

- D - I - 0x01506A 11:B05A: FF        .byte con_FF



off_B05B:
                                      .byte $06, $26, $21, $5F

- D - I - 0x01506F 11:B05F: A0        .byte $A0
                                      .byte $03, $3B

- D - I - 0x015072 11:B062: FF        .byte con_FF



off_B063:
                                      .byte $06, $26, $21, $5F

- D - I - 0x015077 11:B067: A0        .byte $A0
                                      .byte $03, $14

- D - I - 0x01507A 11:B06A: FF        .byte con_FF



off_B06B:
                                      .byte $06, $26, $21, $5F

- D - I - 0x01507F 11:B06F: BF        .byte $BF
                                      .byte $01, $7C

- D - I - 0x015082 11:B072: A0        .byte $A0
                                      .byte $3F, $B4
                                      .byte $01, $7D
                                      .byte $05, $7E

- D - I - 0x015089 11:B079: A1        .byte $A1
                                      .byte $05, $7F

- D - I - 0x01508C 11:B07C: FF        .byte con_FF



off_B07D:
                                      .byte $10, $11, $12, $5F

- D - I - 0x015091 11:B081: A0        .byte $A0
                                      .byte $3B, $B8
                                      .byte $7F, $BB
                                      .byte $03, $BC
                                      .byte $47, $BF

- D - I - 0x01509A 11:B08A: A1        .byte $A1
                                      .byte $3B, $B9
                                      .byte $3F, $BB
                                      .byte $43, $BC
                                      .byte $07, $BF

- D - I - 0x0150A3 11:B093: FF        .byte con_FF



off_B094:
                                      .byte $10, $11, $12, $5F

- D - I - 0x0150A8 11:B098: A0        .byte $A0

- D - I - 0x0150A9 11:B099: 9E        .byte $9E

                                      .byte $C0, $73, $B6

- D - I - 0x0150AD 11:B09D: 9F        .byte $9F

                                      .byte $C0, $73, $BB
                                      .byte $C0, $13, $BC

- D - I - 0x0150B4 11:B0A4: 80        .byte $80

                                      .byte $C0, $53, $BF

- D - I - 0x0150B8 11:B0A8: A1        .byte $A1
                                      .byte $9E, $C0
                                      .byte $33, $B6

- D - I - 0x0150BD 11:B0AD: 9F        .byte $9F

                                      .byte $C0, $33, $BB
                                      .byte $C0, $53, $BC

- D - I - 0x0150C4 11:B0B4: 80        .byte $80

                                      .byte $C0, $13, $BF

- D - I - 0x0150C8 11:B0B8: FF        .byte con_FF



off_B0B9:
                                      .byte $74, $75, $76, $77

- D - I - 0x0150CD 11:B0BD: BE        .byte $BE
                                      .byte $3B, $20
                                      .byte $3F, $22
                                      .byte $03, $24

- D - I - 0x0150D4 11:B0C4: BF        .byte $BF
                                      .byte $38, $1C
                                      .byte $3B, $21
                                      .byte $3C, $1E
                                      .byte $3F, $23
                                      .byte $03, $25
                                      .byte $07, $27

- D - I - 0x0150E1 11:B0D1: A0        .byte $A0
                                      .byte $38, $18
                                      .byte $3C, $1A
                                      .byte $00, $1D
                                      .byte $03, $26
                                      .byte $07, $28

- D - I - 0x0150EC 11:B0DC: A1        .byte $A1
                                      .byte $38, $19
                                      .byte $3C, $1B
                                      .byte $00, $11

- D - I - 0x0150F3 11:B0E3: A2        .byte $A2
                                      .byte $38, $14
                                      .byte $3C, $16

- D - I - 0x0150F8 11:B0E8: A3        .byte $A3
                                      .byte $34, $03
                                      .byte $38, $5B
                                      .byte $3C, $17

- D - I - 0x0150FF 11:B0EF: FF        .byte con_FF



off_B0F0:
                                      .byte $2C, $2D, $5E, $5F

- D - I - 0x015104 11:B0F4: BC        .byte $BC
                                      .byte $08, $22
                                      .byte $0C, $28

- D - I - 0x015109 11:B0F9: BD        .byte $BD
                                      .byte $04, $24
                                      .byte $08, $23
                                      .byte $0C, $29

- D - I - 0x015110 11:B100: BE        .byte $BE
                                      .byte $39, $02

- D - I - 0x015113 11:B103: 9F        .byte $9F

                                      .byte $CC, $01, $08
                                      .byte $C4, $01, $09
                                      .byte $00, $0A
                                      .byte $04, $20
                                      .byte $08, $26

- D - I - 0x015120 11:B110: BF        .byte $BF
                                      .byte $39, $03

- D - I - 0x015123 11:B113: 9F        .byte $9F

                                      .byte $C4, $01, $0C
                                      .byte $00, $0B
                                      .byte $04, $21

- D - I - 0x01512B 11:B11B: A0        .byte $A0
                                      .byte $00, $0E

- D - I - 0x01512E 11:B11E: A1        .byte $A1
                                      .byte $00, $2A
                                      .byte $04, $2F

- D - I - 0x015133 11:B123: A2        .byte $A2
                                      .byte $3C, $2C
                                      .byte $00, $2B
                                      .byte $04, $3A

- D - I - 0x01513A 11:B12A: A3        .byte $A3
                                      .byte $38, $27
                                      .byte $3C, $2D
                                      .byte $00, $2E

- D - I - 0x015141 11:B131: A4        .byte $A4
                                      .byte $38, $32
                                      .byte $3C, $38

- D - I - 0x015146 11:B136: FF        .byte con_FF



off_B137:
                                      .byte $04, $05, $1E, $1F

- D - I - 0x01514B 11:B13B: BF        .byte $BF
                                      .byte $3C, $82
                                      .byte $02, $88
                                      .byte $06, $8A
                                      .byte $0A, $A0

- D - I - 0x015154 11:B144: A0        .byte $A0
                                      .byte $3C, $B9
                                      .byte $02, $84
                                      .byte $01, $89
                                      .byte $06, $85
                                      .byte $05, $8B
                                      .byte $0A, $A1

- D - I - 0x015161 11:B151: A1        .byte $A1
                                      .byte $3C, $86
                                      .byte $02, $8C
                                      .byte $06, $8E
                                      .byte $0A, $A4

- D - I - 0x01516A 11:B15A: FF        .byte con_FF



off_B15B:
                                      .byte $7C, $71, $52, $53

- D - I - 0x01516F 11:B15F: BF        .byte $BF
                                      .byte $34, $50
                                      .byte $0A, $F6
                                      .byte $0E, $FC
                                      .byte $11, $EA
                                      .byte $12, $FE

- D - I - 0x01517A 11:B16A: A0        .byte $A0
                                      .byte $9D, $CE
                                      .byte $01, $E6

- D - I - 0x01517F 11:B16F: 9E        .byte $9E

                                      .byte $CE, $00, $52
                                      .byte $CE, $01, $FA
                                      .byte $C6, $00, $53
                                      .byte $C6, $01, $FB
                                      .byte $3C, $58
                                      .byte $3D, $E5
                                      .byte $00, $5A
                                      .byte $01, $E7

- D - I - 0x015194 11:B184: 81        .byte $81

                                      .byte $CC, $00, $56
                                      .byte $C4, $00, $57
                                      .byte $05, $ED

- D - I - 0x01519D 11:B18D: 82        .byte $82

                                      .byte $CC, $00, $5C
                                      .byte $C4, $00, $5D
                                      .byte $CA, $01, $EE
                                      .byte $C2, $01, $EF

- D - I - 0x0151AA 11:B19A: 83        .byte $83

                                      .byte $CC, $00, $5E
                                      .byte $C4, $00, $5F
                                      .byte $CA, $01, $E8
                                      .byte $C2, $01, $E9
                                      .byte $10, $55
                                      .byte $11, $EB
                                      .byte $12, $FF

- D - I - 0x0151BD 11:B1AD: A1        .byte $A1
                                      .byte $3C, $59
                                      .byte $3D, $F0
                                      .byte $00, $5B
                                      .byte $01, $F2

- D - I - 0x0151C6 11:B1B6: 81        .byte $81

                                      .byte $C4, $00, $54
                                      .byte $05, $F8

- D - I - 0x0151CC 11:B1BC: A2        .byte $A2
                                      .byte $02, $F7
                                      .byte $00, $51
                                      .byte $01, $F3
                                      .byte $05, $F9
                                      .byte $06, $FD

- D - I - 0x0151D7 11:B1C7: BF        .byte $BF
                                      .byte $05, $EC

- D - I - 0x0151DA 11:B1CA: FF        .byte con_FF



off_B1CB:
                                      .byte $70, $71, $72, $73

- D - I - 0x0151DF 11:B1CF: A0        .byte $A0
                                      .byte $02, $ED
                                      .byte $06, $EF

- D - I - 0x0151E4 11:B1D4: A1        .byte $A1
                                      .byte $42, $ED
                                      .byte $46, $EF

- D - I - 0x0151E9 11:B1D9: FF        .byte con_FF



off_B1DA:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x0151EE 11:B1DE: BC        .byte $BC
                                      .byte $38, $F3

- D - I - 0x0151F1 11:B1E1: BD        .byte $BD
                                      .byte $38, $F6

- D - I - 0x0151F4 11:B1E4: BE        .byte $BE
                                      .byte $38, $F6

- D - I - 0x0151F7 11:B1E7: BF        .byte $BF
                                      .byte $38, $F6

- D - I - 0x0151FA 11:B1EA: 83        .byte $83

                                      .byte $C0, $32, $5D
                                      .byte $C0, $12, $5F

- D - I - 0x015201 11:B1F1: A0        .byte $A0
                                      .byte $38, $F6
                                      .byte $00, $F6
                                      .byte $04, $F7

- D - I - 0x015208 11:B1F8: 83        .byte $83

                                      .byte $C0, $72, $5D
                                      .byte $C0, $52, $5F

- D - I - 0x01520F 11:B1FF: A1        .byte $A1
                                      .byte $38, $F6
                                      .byte $00, $F6

- D - I - 0x015214 11:B204: A2        .byte $A2
                                      .byte $38, $F6
                                      .byte $00, $F6

- D - I - 0x015219 11:B209: A3        .byte $A3
                                      .byte $3C, $F7
                                      .byte $00, $F3

- D - I - 0x01521E 11:B20E: A4        .byte $A4
                                      .byte $00, $F6

- D - I - 0x015221 11:B211: A5        .byte $A5
                                      .byte $00, $F6

- D - I - 0x015224 11:B214: A6        .byte $A6
                                      .byte $04, $F7

- D - I - 0x015227 11:B217: FF        .byte con_FF



off_B218:
                                      .byte $60, $61, $62, $63

- D - I - 0x01522C 11:B21C: BF        .byte $BF
- D - I - 0x01522D 11:B21D: FA        .byte con_jsr
- D - I - 0x01522E 11:B21E: ED BA     .word off_BAED

- D - I - 0x015230 11:B220: A0        .byte $A0
- D - I - 0x015231 11:B221: FA        .byte con_jsr
- D - I - 0x015232 11:B222: ED BA     .word off_BAED

- D - I - 0x015234 11:B224: A1        .byte $A1
- D - I - 0x015235 11:B225: FA        .byte con_jsr
- D - I - 0x015236 11:B226: ED BA     .word off_BAED

- D - I - 0x015238 11:B228: A2        .byte $A2
- D - I - 0x015239 11:B229: FA        .byte con_jsr
- D - I - 0x01523A 11:B22A: ED BA     .word off_BAED
; bzk заменить jsr на jmp и удалить FF
- D - I - 0x01523C 11:B22C: FF        .byte con_FF



off_B22D:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x015241 11:B231: FA        .byte con_jsr
- D - I - 0x015242 11:B232: A2 BB     .word off_BBA2

- D - I - 0x015244 11:B234: FB        .byte con_jmp
- D - I - 0x015245 11:B235: 56 BB     .word off_BB56



off_B237:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x01524B 11:B23B: BF        .byte $BF
                                      .byte $3F, $01
                                      .byte $03, $01
                                      .byte $07, $01

- D - I - 0x015252 11:B242: A0        .byte $A0
                                      .byte $3F, $4F
                                      .byte $03, $4F
                                      .byte $07, $4F

- D - I - 0x015259 11:B249: A1        .byte $A1
                                      .byte $3F, $58
                                      .byte $03, $58
                                      .byte $07, $58

- D - I - 0x015260 11:B250: A2        .byte $A2
                                      .byte $3F, $03
                                      .byte $03, $03
                                      .byte $07, $03

- D - I - 0x015267 11:B257: FF        .byte con_FF



off_B258:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x01526C 11:B25C: FA        .byte con_jsr
- D - I - 0x01526D 11:B25D: B0 BB     .word off_BBB0

- D - I - 0x01526F 11:B25F: FB        .byte con_jmp
- D - I - 0x015270 11:B260: FC BA     .word off_BAFC



off_B262:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x015276 11:B266: FA        .byte con_jsr
- D - I - 0x015277 11:B267: B0 BB     .word off_BBB0

- D - I - 0x015279 11:B269: FB        .byte con_jmp
- D - I - 0x01527A 11:B26A: 14 BB     .word off_BB14



off_B26C:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x015280 11:B270: FA        .byte con_jsr
- D - I - 0x015281 11:B271: B0 BB     .word off_BBB0

- D - I - 0x015283 11:B273: FB        .byte con_jmp
- D - I - 0x015284 11:B274: 56 BB     .word off_BB56



off_B276:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x01528A 11:B27A: BF        .byte $BF
                                      .byte $3E, $01
                                      .byte $02, $02
                                      .byte $06, $03

- D - I - 0x015291 11:B281: A0        .byte $A0
                                      .byte $3E, $01
                                      .byte $02, $02
                                      .byte $06, $03

- D - I - 0x015298 11:B288: A1        .byte $A1
                                      .byte $3E, $01
                                      .byte $02, $02
                                      .byte $06, $03

- D - I - 0x01529F 11:B28F: A2        .byte $A2
                                      .byte $3E, $01
                                      .byte $02, $02
                                      .byte $06, $03

- D - I - 0x0152A6 11:B296: FF        .byte con_FF



off_B297:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x0152AB 11:B29B: FA        .byte con_jsr
- D - I - 0x0152AC 11:B29C: BE BB     .word off_BBBE

- D - I - 0x0152AE 11:B29E: FB        .byte con_jmp
- D - I - 0x0152AF 11:B29F: FC BA     .word off_BAFC



off_B2A1:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x0152B5 11:B2A5: FA        .byte con_jsr
- D - I - 0x0152B6 11:B2A6: BE BB     .word off_BBBE

- D - I - 0x0152B8 11:B2A8: FB        .byte con_jmp
- D - I - 0x0152B9 11:B2A9: 14 BB     .word off_BB14



off_B2AB:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x0152BF 11:B2AF: FA        .byte con_jsr
- D - I - 0x0152C0 11:B2B0: BE BB     .word off_BBBE

- D - I - 0x0152C2 11:B2B2: FB        .byte con_jmp
- D - I - 0x0152C3 11:B2B3: 56 BB     .word off_BB56



off_B2B5:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x0152C9 11:B2B9: BF        .byte $BF
                                      .byte $3D, $01
                                      .byte $41, $FE
                                      .byte $05, $01

- D - I - 0x0152D0 11:B2C0: A0        .byte $A0
                                      .byte $7D, $D8

- D - I - 0x0152D3 11:B2C3: 80        .byte $80

                                      .byte $C4, $00, $51
                                      .byte $41, $B4
                                      .byte $45, $FC

- D - I - 0x0152DB 11:B2CB: A1        .byte $A1
                                      .byte $3D, $D8
                                      .byte $01, $B4
                                      .byte $05, $FC

- D - I - 0x0152E2 11:B2D2: A2        .byte $A2
                                      .byte $3D, $01
                                      .byte $01, $FE
                                      .byte $05, $01

- D - I - 0x0152E9 11:B2D9: FF        .byte con_FF



off_B2DA:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x0152EE 11:B2DE: FA        .byte con_jsr
- D - I - 0x0152EF 11:B2DF: C9 BB     .word off_BBC9

- D - I - 0x0152F1 11:B2E1: FB        .byte con_jmp
- D - I - 0x0152F2 11:B2E2: FC BA     .word off_BAFC



off_B2E4:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x0152F8 11:B2E8: FA        .byte con_jsr
- D - I - 0x0152F9 11:B2E9: C9 BB     .word off_BBC9

- D - I - 0x0152FB 11:B2EB: FB        .byte con_jmp
- D - I - 0x0152FC 11:B2EC: 14 BB     .word off_BB14



off_B2EE:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x015302 11:B2F2: FA        .byte con_jsr
- D - I - 0x015303 11:B2F3: C9 BB     .word off_BBC9

- D - I - 0x015305 11:B2F5: FB        .byte con_jmp
- D - I - 0x015306 11:B2F6: 56 BB     .word off_BB56



off_B2F8:
                                      .byte $70, $71, $72, $73

- D - I - 0x01530C 11:B2FC: B7        .byte $B7
                                      .byte $03, $DE
                                      .byte $07, $F4

- D - I - 0x015311 11:B301: B8        .byte $B8
                                      .byte $03, $DF
                                      .byte $07, $F5

- D - I - 0x015316 11:B306: BA        .byte $BA
                                      .byte $43, $F8
                                      .byte $47, $FA

- D - I - 0x01531B 11:B30B: AA        .byte $AA
                                      .byte $01, $F8
                                      .byte $05, $FA

- D - I - 0x015320 11:B310: FF        .byte con_FF



off_B311:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x015325 11:B315: FA        .byte con_jsr
- D - I - 0x015326 11:B316: D4 BB     .word off_BBD4

- D - I - 0x015328 11:B318: FB        .byte con_jmp
- D - I - 0x015329 11:B319: 2C BC     .word off_BC2C



off_B31B:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x01532F 11:B31F: FA        .byte con_jsr
- D - I - 0x015330 11:B320: E8 BB     .word off_BBE8

- D - I - 0x015332 11:B322: FB        .byte con_jmp
- D - I - 0x015333 11:B323: 2C BC     .word off_BC2C



off_B325:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x015339 11:B329: FA        .byte con_jsr
- D - I - 0x01533A 11:B32A: 03 BC     .word off_BC03

- D - I - 0x01533C 11:B32C: FB        .byte con_jmp
- D - I - 0x01533D 11:B32D: 2C BC     .word off_BC2C



off_B32F:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x015343 11:B333: FA        .byte con_jsr
- D - I - 0x015344 11:B334: 1A BC     .word off_BC1A

- D - I - 0x015346 11:B336: FB        .byte con_jmp
- D - I - 0x015347 11:B337: 2C BC     .word off_BC2C



off_B339:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x01534D 11:B33D: FA        .byte con_jsr
- D - I - 0x01534E 11:B33E: D4 BB     .word off_BBD4

- D - I - 0x015350 11:B340: FB        .byte con_jmp
- D - I - 0x015351 11:B341: 3D BC     .word off_BC3D



off_B343:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x015357 11:B347: FA        .byte con_jsr
- D - I - 0x015358 11:B348: E8 BB     .word off_BBE8

- D - I - 0x01535A 11:B34A: FB        .byte con_jmp
- D - I - 0x01535B 11:B34B: 3D BC     .word off_BC3D



off_B34D:
                                      .byte $70, $71, $72, $73

- D - I - 0x015361 11:B351: BF        .byte $BF
                                      .byte $3A, $E0
                                      .byte $3E, $E2
                                      .byte $02, $E8
                                      .byte $06, $EA
                                      .byte $0A, $E5
                                      .byte $0E, $E7

- D - I - 0x01536E 11:B35E: A0        .byte $A0
                                      .byte $3A, $E1
                                      .byte $3E, $E3
                                      .byte $02, $E9
                                      .byte $06, $EB
                                      .byte $0A, $F0
                                      .byte $0E, $F2

- D - I - 0x01537B 11:B36B: A1        .byte $A1
                                      .byte $3A, $E4
                                      .byte $3E, $E6
                                      .byte $02, $EC
                                      .byte $06, $EE
                                      .byte $0A, $F1
                                      .byte $0E, $F3

- D - I - 0x015388 11:B378: A2        .byte $A2
                                      .byte $0E, $DD

- D - I - 0x01538B 11:B37B: FF        .byte con_FF



off_B37C:
                                      .byte $16, $17, $2D, $5F

- D - I - 0x015390 11:B380: FA        .byte con_jsr
- D - I - 0x015391 11:B381: 1A BC     .word off_BC1A

- D - I - 0x015393 11:B383: FB        .byte con_jmp
- D - I - 0x015394 11:B384: 3D BC     .word off_BC3D



off_B3AB:
                                      .byte $10, $11, $12, $5F

- D - I - 0x0153BF 11:B3AF: BF        .byte $BF
                                      .byte $1B, $7C
                                      .byte $1F, $7E

- D - I - 0x0153C4 11:B3B4: A0        .byte $A0
                                      .byte $1B, $7D
                                      .byte $1F, $7F

- D - I - 0x0153C9 11:B3B9: FF        .byte con_FF



off_B3BA:
                                      .byte $60, $61, $62, $63

- D - I - 0x0153CE 11:B3BE: BF        .byte $BF
                                      .byte $3A, $F9
                                      .byte $3E, $FB

- D - I - 0x0153D3 11:B3C3: 81        .byte $81

                                      .byte $C0, $38, $EF
                                      .byte $C0, $18, $FA

- D - I - 0x0153DA 11:B3CA: A0        .byte $A0
                                      .byte $36, $74
                                      .byte $3A, $76
                                      .byte $3F, $7C
                                      .byte $02, $7E
                                      .byte $07, $72
                                      .byte $0B, $78
                                      .byte $0F, $7A

- D - I - 0x0153E9 11:B3D9: A1        .byte $A1
                                      .byte $36, $75
                                      .byte $3A, $77
                                      .byte $3F, $7D
                                      .byte $00, $7F
                                      .byte $07, $73
                                      .byte $0B, $79
                                      .byte $0F, $7B

- D - I - 0x0153F8 11:B3E8: FF        .byte con_FF



off_B3E9:
                                      .byte $6A, $6B, $7A, $7B

- D - I - 0x0153FD 11:B3ED: BD        .byte $BD
                                      .byte $02, $F1
                                      .byte $06, $F3

- D - I - 0x015402 11:B3F2: BE        .byte $BE
                                      .byte $02, $F4
                                      .byte $06, $F6

- D - I - 0x015407 11:B3F7: BF        .byte $BF
                                      .byte $3E, $DF
                                      .byte $02, $F5
                                      .byte $06, $F7

- D - I - 0x01540E 11:B3FE: A0        .byte $A0
                                      .byte $02, $F8
                                      .byte $06, $FA

- D - I - 0x015413 11:B403: A1        .byte $A1
                                      .byte $02, $F9
                                      .byte $06, $FB

- D - I - 0x015418 11:B408: A2        .byte $A2
                                      .byte $02, $FC
                                      .byte $06, $FE

- D - I - 0x01541D 11:B40D: FF        .byte con_FF



off_B40E:
                                      .byte $6A, $6B, $7A, $7B

- D - I - 0x015422 11:B412: BF        .byte $BF
                                      .byte $03, $5C
                                      .byte $03, $56
                                      .byte $07, $5E
                                      .byte $07, $70
                                      .byte $0B, $74
                                      .byte $0B, $5A

- D - I - 0x01542F 11:B41F: A0        .byte $A0
                                      .byte $03, $53
                                      .byte $07, $71
                                      .byte $0B, $5B

- D - I - 0x015436 11:B426: A1        .byte $A1
                                      .byte $43, $53
                                      .byte $47, $71
                                      .byte $4B, $5B

- D - I - 0x01543D 11:B42D: A2        .byte $A2
                                      .byte $43, $5C
                                      .byte $43, $56
                                      .byte $47, $5E
                                      .byte $47, $70
                                      .byte $4B, $74
                                      .byte $4B, $5A

- D - I - 0x01544A 11:B43A: FB        .byte con_jmp
- D - I - 0x01544B 11:B43B: 90 BC     .word off_BC90



off_B43D:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x015451 11:B441: BF        .byte $BF
                                      .byte $3C, $02
                                      .byte $00, $03
                                      .byte $04, $02

- D - I - 0x015458 11:B448: A0        .byte $A0
                                      .byte $3C, $02
                                      .byte $40, $FD
                                      .byte $04, $02

- D - I - 0x01545F 11:B44F: A1        .byte $A1
                                      .byte $3C, $02
                                      .byte $00, $FD
                                      .byte $04, $02

- D - I - 0x015466 11:B456: A2        .byte $A2
                                      .byte $3C, $02
                                      .byte $00, $03
                                      .byte $04, $02

- D - I - 0x01546D 11:B45D: FF        .byte con_FF



off_B45E:
                                      .byte $74, $75, $7B, $67

- D - I - 0x015472 11:B462: BF        .byte $BF
                                      .byte $3E, $E0
                                      .byte $02, $E2
                                      .byte $06, $E8
                                      .byte $0A, $EA

- D - I - 0x01547B 11:B46B: A0        .byte $A0
                                      .byte $3E, $E1
                                      .byte $02, $E3
                                      .byte $06, $E9
                                      .byte $0A, $EB

- D - I - 0x015484 11:B474: A1        .byte $A1
                                      .byte $3E, $E4
                                      .byte $02, $E6
                                      .byte $06, $EC
                                      .byte $0A, $EE

- D - I - 0x01548D 11:B47D: A2        .byte $A2
                                      .byte $3E, $E5
                                      .byte $02, $E7
                                      .byte $06, $ED
                                      .byte $0A, $EF

- D - I - 0x015496 11:B486: FF        .byte con_FF



off_B487:
                                      .byte $74, $75, $7B, $67

- D - I - 0x01549B 11:B48B: BF        .byte $BF
                                      .byte $81, $C4
                                      .byte $01, $AE
                                      .byte $09, $AF

- D - I - 0x0154A2 11:B492: A0        .byte $A0
                                      .byte $39, $A4
                                      .byte $3D, $A6
                                      .byte $03, $AC

- D - I - 0x0154A9 11:B499: A1        .byte $A1
                                      .byte $3D, $A7
                                      .byte $03, $AD
                                      .byte $05, $A5

- D - I - 0x0154B0 11:B4A0: A2        .byte $A2
                                      .byte $05, $B0
                                      .byte $09, $B2

- D - I - 0x0154B5 11:B4A5: FF        .byte con_FF



off_B4A6:
                                      .byte $70, $71, $72, $73

- D - I - 0x0154BA 11:B4AA: BC        .byte $BC
                                      .byte $3F, $40

- D - I - 0x0154BD 11:B4AD: BD        .byte $BD
                                      .byte $3F, $41
                                      .byte $03, $43

- D - I - 0x0154C2 11:B4B2: BE        .byte $BE
                                      .byte $3F, $44
                                      .byte $03, $46

- D - I - 0x0154C7 11:B4B7: BF        .byte $BF
                                      .byte $3F, $45
                                      .byte $03, $47

- D - I - 0x0154CC 11:B4BC: A0        .byte $A0
                                      .byte $3F, $48
                                      .byte $03, $4A
                                      .byte $07, $70

- D - I - 0x0154D3 11:B4C3: A1        .byte $A1
                                      .byte $3F, $49
                                      .byte $03, $4B
                                      .byte $07, $71

- D - I - 0x0154DA 11:B4CA: A2        .byte $A2
                                      .byte $3F, $4C
                                      .byte $03, $4E
                                      .byte $07, $74

- D - I - 0x0154E1 11:B4D1: A3        .byte $A3
                                      .byte $3B, $72
                                      .byte $3F, $4D
                                      .byte $03, $4F
                                      .byte $07, $75
                                      .byte $0B, $76

- D - I - 0x0154EC 11:B4DC: A4        .byte $A4
                                      .byte $3B, $73
                                      .byte $03, $42
                                      .byte $07, $14
                                      .byte $0B, $77

- D - I - 0x0154F5 11:B4E5: FF        .byte con_FF



off_B4E6:
                                      .byte $74, $75, $76, $77

- D - I - 0x0154FA 11:B4EA: A0        .byte $A0
                                      .byte $30, $01
                                      .byte $34, $01
                                      .byte $38, $01
                                      .byte $3C, $01
                                      .byte $00, $01
                                      .byte $04, $01

- D - I - 0x015507 11:B4F7: FF        .byte con_FF



off_B4F8:
                                      .byte $74, $75, $7B, $67

- D - I - 0x01550C 11:B4FC: BE        .byte $BE
                                      .byte $3C, $2D
                                      .byte $0F, $3E

- D - I - 0x015511 11:B501: BF        .byte $BF
                                      .byte $35, $30
                                      .byte $3B, $32
                                      .byte $3A, $44
                                      .byte $3C, $38
                                      .byte $00, $3A
                                      .byte $05, $34
                                      .byte $09, $36
                                      .byte $0F, $3F
                                      .byte $0D, $45

- D - I - 0x015524 11:B514: A0        .byte $A0

- D - I - 0x015525 11:B515: 9C        .byte $9C

                                      .byte $CA, $03, $2E
                                      .byte $C2, $03, $2F
                                      .byte $37, $31
                                      .byte $35, $46
                                      .byte $39, $33
                                      .byte $3B, $02
                                      .byte $3C, $39
                                      .byte $00, $3B
                                      .byte $05, $35

- D - I - 0x01553A 11:B52A: A1        .byte $A1
                                      .byte $35, $40
                                      .byte $3A, $42
                                      .byte $3C, $41
                                      .byte $00, $43
                                      .byte $05, $37

- D - I - 0x015545 11:B535: 82        .byte $82

                                      .byte $CF, $01, $3D
                                      .byte $0F, $3C
                                      .byte $C1, $01, $45

- D - I - 0x01554E 11:B53E: A0        .byte $A0

- D - I - 0x01554F 11:B53F: 9F        .byte $9F

                                      .byte $CC, $03, $02
                                      .byte $C4, $03, $02

- D - I - 0x015556 11:B546: FF        .byte con_FF



off_B547:
                                      .byte $60, $61, $62, $63

- D - I - 0x01555B 11:B54B: B9        .byte $B9
                                      .byte $3D, $1A

- D - I - 0x01555E 11:B54E: BA        .byte $BA
                                      .byte $3D, $1B
                                      .byte $01, $30
                                      .byte $05, $32

- D - I - 0x015565 11:B555: BB        .byte $BB
                                      .byte $3D, $1E
                                      .byte $01, $31
                                      .byte $05, $33

- D - I - 0x01556C 11:B55C: BC        .byte $BC
                                      .byte $3D, $1F
                                      .byte $05, $36

- D - I - 0x015571 11:B561: A0        .byte $A0
                                      .byte $3D, $18
                                      .byte $01, $34

- D - I - 0x015576 11:B566: A1        .byte $A1
                                      .byte $3D, $19
                                      .byte $01, $35
                                      .byte $05, $2B

- D - I - 0x01557D 11:B56D: A2        .byte $A2
                                      .byte $3D, $1C
                                      .byte $01, $37
                                      .byte $05, $2E

- D - I - 0x015584 11:B574: A3        .byte $A3
                                      .byte $3D, $1D
                                      .byte $01, $22
                                      .byte $05, $2F

- D - I - 0x01558B 11:B57B: FF        .byte con_FF



off_B57C:
                                      .byte $60, $61, $62, $63

- D - I - 0x015590 11:B580: B9        .byte $B9
                                      .byte $01, $20

- D - I - 0x015593 11:B583: BA        .byte $BA
                                      .byte $01, $21
                                      .byte $05, $23

- D - I - 0x015598 11:B588: BB        .byte $BB
                                      .byte $01, $24
                                      .byte $05, $26

- D - I - 0x01559D 11:B58D: BC        .byte $BC
                                      .byte $01, $25
                                      .byte $05, $36

- D - I - 0x0155A2 11:B592: BF        .byte $BF
                                      .byte $01, $28

- D - I - 0x0155A5 11:B595: A0        .byte $A0
                                      .byte $01, $29

- D - I - 0x0155A8 11:B598: A1        .byte $A1
                                      .byte $3D, $2A
                                      .byte $01, $2C
                                      .byte $05, $2B

- D - I - 0x0155AF 11:B59F: A2        .byte $A2
                                      .byte $3D, $14
                                      .byte $01, $2D
                                      .byte $05, $2E

- D - I - 0x0155B6 11:B5A6: A3        .byte $A3
                                      .byte $3D, $15
                                      .byte $05, $2F

- D - I - 0x0155BB 11:B5AB: FF        .byte con_FF



off_B5AC:
                                      .byte $60, $61, $62, $63

- D - I - 0x0155C0 11:B5B0: BE        .byte $BE
                                      .byte $04, $08
                                      .byte $08, $0A

- D - I - 0x0155C5 11:B5B5: BF        .byte $BF
                                      .byte $00, $27
                                      .byte $04, $09
                                      .byte $08, $0B

- D - I - 0x0155CC 11:B5BC: A0        .byte $A0
                                      .byte $3C, $04
                                      .byte $00, $06
                                      .byte $04, $0C
                                      .byte $08, $0E

- D - I - 0x0155D5 11:B5C5: A1        .byte $A1
                                      .byte $38, $16
                                      .byte $3C, $05
                                      .byte $00, $07
                                      .byte $04, $0D
                                      .byte $08, $0F

- D - I - 0x0155E0 11:B5D0: A2        .byte $A2
                                      .byte $38, $17
                                      .byte $3C, $10
                                      .byte $00, $12
                                      .byte $04, $11
                                      .byte $08, $13

- D - I - 0x0155EB 11:B5DB: FF        .byte con_FF



off_B5DC:
                                      .byte $36, $37, $5E, $5F

- D - I - 0x0155F0 11:B5E0: FB        .byte con_jmp
- D - I - 0x0155F1 11:B5E1: 4E BC     .word off_BC4E



off_B5E3:
                                      .byte $36, $37, $5E, $5F

- D - I - 0x0155F7 11:B5E7: FB        .byte con_jmp
- D - I - 0x0155F8 11:B5E8: 5A BC     .word off_BC5A



off_B5EA:
                                      .byte $36, $37, $5E, $5F

- D - I - 0x0155FE 11:B5EE: FA        .byte con_jsr
- D - I - 0x0155FF 11:B5EF: 70 BC     .word off_BC70

- D - I - 0x015601 11:B5F1: FB        .byte con_jmp
- D - I - 0x015602 11:B5F2: 4E BC     .word off_BC4E



off_B5F4:
                                      .byte $36, $37, $5E, $5F

- D - I - 0x015608 11:B5F8: FA        .byte con_jsr
- D - I - 0x015609 11:B5F9: 70 BC     .word off_BC70
- D - I - 0x01560B 11:B5FB: FB        .byte con_jmp
- D - I - 0x01560C 11:B5FC: 5A BC     .word off_BC5A



off_B5FE:
                                      .byte $36, $37, $5E, $5F

- D - I - 0x015612 11:B602: FA        .byte con_jsr
- D - I - 0x015613 11:B603: 70 BC     .word off_BC70

- D - I - 0x015615 11:B605: A0        .byte $A0
                                      .byte $02, $7F

- D - I - 0x015618 11:B608: A2        .byte $A2
                                      .byte $36, $7F
                                      .byte $3E, $7F
                                      .byte $02, $7F
                                      .byte $06, $7F

- D - I - 0x015621 11:B611: A3        .byte $A3
                                      .byte $36, $7F
                                      .byte $3E, $7F
                                      .byte $06, $7F

- D - I - 0x015628 11:B618: A5        .byte $A5

- D - I - 0x015629 11:B619: 9E        .byte $9E

                                      .byte $C4, $02, $7F

- D - I - 0x01562D 11:B61D: 80        .byte $80

                                      .byte $C4, $02, $7F

- D - I - 0x015631 11:B621: A7        .byte $A7
                                      .byte $02, $7F

- D - I - 0x015634 11:B624: A9        .byte $A9
                                      .byte $3A, $7F

- D - I - 0x015637 11:B627: AB        .byte $AB
                                      .byte $02, $7F

- D - I - 0x01563A 11:B62A: FF        .byte con_FF



off_B62B:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x01563F 11:B62F: BC        .byte $BC
                                      .byte $2B, $C0
                                      .byte $2F, $FE

- D - I - 0x015644 11:B634: BD        .byte $BD
                                      .byte $2B, $C1
                                      .byte $2F, $E0

- D - I - 0x015649 11:B639: BE        .byte $BE
                                      .byte $2B, $C4
                                      .byte $2F, $E1

- D - I - 0x01564E 11:B63E: BF        .byte $BF
                                      .byte $2B, $C5

- D - I - 0x015651 11:B641: A0        .byte $A0
                                      .byte $9F, $C4
                                      .byte $01, $F9

- D - I - 0x015656 11:B646: A0        .byte $A0
                                      .byte $80, $C4
                                      .byte $01, $FB

- D - I - 0x01565B 11:B64B: A2        .byte $A2
                                      .byte $2B, $C6
                                      .byte $2F, $E4

- D - I - 0x015660 11:B650: A3        .byte $A3
                                      .byte $2B, $C7
                                      .byte $2F, $E5

- D - I - 0x015665 11:B655: FB        .byte con_jmp
- D - I - 0x015666 11:B656: 74 BC     .word off_BC74



off_B658:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x01566C 11:B65C: BC        .byte $BC
                                      .byte $2B, $C8
                                      .byte $2F, $CA

- D - I - 0x015671 11:B661: BD        .byte $BD
                                      .byte $2B, $C9
                                      .byte $2F, $CB

- D - I - 0x015676 11:B666: BE        .byte $BE
                                      .byte $27, $C2
                                      .byte $2B, $CC
                                      .byte $2F, $CE

- D - I - 0x01567D 11:B66D: BF        .byte $BF
                                      .byte $27, $C3

- D - I - 0x015680 11:B670: A0        .byte $A0
                                      .byte $3E, $BC
                                      .byte $02, $BE
                                      .byte $03, $03

- D - I - 0x015687 11:B677: A1        .byte $A1
                                      .byte $3E, $BD
                                      .byte $02, $BF
                                      .byte $03, $03

- D - I - 0x01568E 11:B67E: A2        .byte $A2
                                      .byte $2B, $CD
                                      .byte $2F, $CF

- D - I - 0x015693 11:B683: A3        .byte $A3
                                      .byte $2B, $F8
                                      .byte $2F, $FA

- D - I - 0x015698 11:B688: FB        .byte con_jmp
- D - I - 0x015699 11:B689: 74 BC     .word off_BC74



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

- D - I - 0x0156AF 11:B69F: FF        .byte con_FF



off_B6A0:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0156B4 11:B6A4: BC        .byte $BC
                                      .byte $2B, $C0
                                      .byte $2F, $FE

- D - I - 0x0156B9 11:B6A9: BD        .byte $BD
                                      .byte $2B, $C1
                                      .byte $2F, $E0

- D - I - 0x0156BE 11:B6AE: BE        .byte $BE
                                      .byte $2B, $C4
                                      .byte $2F, $E1

- D - I - 0x0156C3 11:B6B3: BF        .byte $BF
                                      .byte $2B, $C5

- D - I - 0x0156C6 11:B6B6: A0        .byte $A0
                                      .byte $3E, $BC
                                      .byte $02, $BE
                                      .byte $03, $03

- D - I - 0x0156CD 11:B6BD: A1        .byte $A1
                                      .byte $3E, $BD
                                      .byte $02, $BF
                                      .byte $03, $03

- D - I - 0x0156D4 11:B6C4: A2        .byte $A2
                                      .byte $2B, $C6
                                      .byte $2F, $E4

- D - I - 0x0156D9 11:B6C9: A3        .byte $A3
                                      .byte $2B, $C7
                                      .byte $2F, $E5

- D - I - 0x0156DE 11:B6CE: FB        .byte con_jmp
- D - I - 0x0156DF 11:B6CF: 74 BC     .word off_BC74



off_B6D1:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0156E5 11:B6D5: BF        .byte $BF
                                      .byte $3F, $71
                                      .byte $03, $73
                                      .byte $07, $79

- D - I - 0x0156EC 11:B6DC: A0        .byte $A0
                                      .byte $3F, $74
                                      .byte $03, $76
                                      .byte $07, $7C

- D - I - 0x0156F3 11:B6E3: A1        .byte $A1
                                      .byte $3F, $75
                                      .byte $03, $77
                                      .byte $07, $7D

- D - I - 0x0156FA 11:B6EA: FF        .byte con_FF



off_B6EB:
                                      .byte $18, $19, $1A, $1B

- D - I - 0x0156FF 11:B6EF: A0        .byte $A0
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

- D - I - 0x015720 11:B710: FF        .byte con_FF



off_B711:
                                      .byte $28, $29, $2A, $2B

- D - I - 0x015725 11:B715: A0        .byte $A0
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x01572A 11:B71A: A1        .byte $A1
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x01572F 11:B71F: A2        .byte $A2
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x015734 11:B724: A3        .byte $A3
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x015739 11:B729: A4        .byte $A4
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x01573E 11:B72E: A5        .byte $A5
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x015743 11:B733: A6        .byte $A6
                                      .byte $3C, $01
                                      .byte $00, $01

- D - I - 0x015748 11:B738: FF        .byte con_FF



off_B739:
                                      .byte $6F, $69, $67, $7B

- D - I - 0x01574D 11:B73D: A0        .byte $A0
                                      .byte $01, $BB

- D - I - 0x015750 11:B740: A1        .byte $A1
                                      .byte $01, $BE

- D - I - 0x015753 11:B743: FB        .byte con_jmp
- D - I - 0x015754 11:B744: A1 BC     .word off_BCA1



off_B746:
                                      .byte $6F, $69, $67, $7B

- D - I - 0x01575A 11:B74A: A0        .byte $A0
                                      .byte $01, $7E

- D - I - 0x01575D 11:B74D: A1        .byte $A1
                                      .byte $01, $7F

- D - I - 0x015760 11:B750: FB        .byte con_jmp
- D - I - 0x015761 11:B751: A1 BC     .word off_BCA1



off_B753:
                                      .byte $6F, $69, $67, $7B

- D - I - 0x015767 11:B757: A0        .byte $A0
                                      .byte $3D, $C0
                                      .byte $01, $C2

- D - I - 0x01576C 11:B75C: A1        .byte $A1
                                      .byte $7D, $C0
                                      .byte $41, $C2

- D - I - 0x015771 11:B761: FF        .byte con_FF



off_B762:
                                      .byte $6F, $69, $67, $7B

- D - I - 0x015776 11:B766: A0        .byte $A0
                                      .byte $3D, $C1
                                      .byte $01, $C3

- D - I - 0x01577B 11:B76B: A1        .byte $A1
                                      .byte $7D, $C1
                                      .byte $41, $C3

- D - I - 0x015780 11:B770: FF        .byte con_FF



off_B771:
                                      .byte $6F, $69, $67, $7B

- D - I - 0x015785 11:B775: A0        .byte $A0
                                      .byte $3D, $28
                                      .byte $01, $2A

- D - I - 0x01578A 11:B77A: A1        .byte $A1
                                      .byte $7D, $28
                                      .byte $41, $2A

- D - I - 0x01578F 11:B77F: FF        .byte con_FF



off_B780:
                                      .byte $60, $61, $62, $63

- D - I - 0x015794 11:B784: A0        .byte $A0
                                      .byte $03, $4F

- D - I - 0x015797 11:B787: A1        .byte $A1
                                      .byte $03, $4F

- D - I - 0x01579A 11:B78A: A2        .byte $A2
                                      .byte $03, $4F

- D - I - 0x01579D 11:B78D: A3        .byte $A3
                                      .byte $03, $4F

- D - I - 0x0157A0 11:B790: A4        .byte $A4
                                      .byte $03, $4F

- D - I - 0x0157A3 11:B793: A5        .byte $A5
                                      .byte $03, $4F

- D - I - 0x0157A6 11:B796: FF        .byte con_FF



off_B797:
                                      .byte $60, $61, $76, $77

- D - I - 0x0157AB 11:B79B: A0        .byte $A0
                                      .byte $03, $44
                                      .byte $07, $48

- D - I - 0x0157B0 11:B7A0: A1        .byte $A1
                                      .byte $03, $47
                                      .byte $07, $49

- D - I - 0x0157B5 11:B7A5: FF        .byte con_FF



off_B7A6:
                                      .byte $60, $61, $76, $77

- D - I - 0x0157BA 11:B7AA: A0        .byte $A0
                                      .byte $03, $F8

- D - I - 0x0157BD 11:B7AD: A1        .byte $A1
                                      .byte $03, $F9
                                      .byte $07, $FC

- D - I - 0x0157C2 11:B7B2: FF        .byte con_FF



off_B7B3:
                                      .byte $70, $71, $72, $73

- D - I - 0x0157C7 11:B7B7: A0        .byte $A0
                                      .byte $03, $08

- D - I - 0x0157CA 11:B7BA: FF        .byte con_FF



off_B7BB:
                                      .byte $7C, $71, $52, $53

- D - I - 0x0157CF 11:B7BF: A0        .byte $A0
                                      .byte $03, $16

- D - I - 0x0157D2 11:B7C2: A1        .byte $A1
                                      .byte $03, $10

- D - I - 0x0157D5 11:B7C5: A2        .byte $A2
                                      .byte $03, $0D

- D - I - 0x0157D8 11:B7C8: A3        .byte $A3
                                      .byte $03, $30

- D - I - 0x0157DB 11:B7CB: A4        .byte $A4
                                      .byte $03, $31

- D - I - 0x0157DE 11:B7CE: FF        .byte con_FF









; общие куски данных спрайтов
off_B7CF:
- D - I - 0x0157DF 11:B7CF: BD        .byte $BD

- D - I - 0x0157E0 11:B7D0: 9D        .byte $9D

                                      .byte $C0, $11, $04
                                      .byte $11, $1A
                                      .byte $15, $30
                                      .byte $1B, $32

- D - I - 0x0157EA 11:B7DA: BE        .byte $BE

- D - I - 0x0157EB 11:B7DB: 9E        .byte $9E

                                      .byte $C0, $35, $05
                                      .byte $C0, $15, $02
                                      .byte $09, $20

- D - I - 0x0157F4 11:B7E4: 83        .byte $83

                                      .byte $CF, $01, $22
                                      .byte $C7, $01, $23
                                      .byte $11, $1B
                                      .byte $15, $31

- D - I - 0x0157FF 11:B7EF: BF        .byte $BF
                                      .byte $39, $10
                                      .byte $3D, $03
                                      .byte $01, $09
                                      .byte $02, $0A

- D - I - 0x015808 11:B7F8: 81        .byte $81

                                      .byte $CD, $02, $0B
                                      .byte $C5, $02, $0E
                                      .byte $09, $21

- D - I - 0x015811 11:B801: A0        .byte $A0
                                      .byte $3D, $06
                                      .byte $01, $0C
                                      .byte $09, $24
                                      .byte $0D, $26

- D - I - 0x01581A 11:B80A: A1        .byte $A1
                                      .byte $3D, $07
                                      .byte $01, $0D

- D - I - 0x01581F 11:B80F: 81        .byte $81

                                      .byte $CD, $02, $0F
                                      .byte $09, $25
                                      .byte $0D, $27
                                      .byte $0F, $0A
                                      .byte $11, $08

- D - I - 0x01582B 11:B81B: A2        .byte $A2
                                      .byte $3D, $12
                                      .byte $01, $18

- D - I - 0x015830 11:B820: FF        .byte con_FF



off_B821:
- D - I - 0x015831 11:B821: BD        .byte $BD
                                      .byte $7D, $47
                                      .byte $41, $4D

- D - I - 0x015836 11:B826: BE        .byte $BE
                                      .byte $7D, $46
                                      .byte $41, $4C
                                      .byte $06, $11

- D - I - 0x01583D 11:B82D: BF        .byte $BF
                                      .byte $7D, $43
                                      .byte $41, $49
                                      .byte $06, $44

- D - I - 0x015844 11:B834: 82        .byte $82

                                      .byte $CE, $01, $34
                                      .byte $C6, $01, $35

- D - I - 0x01584B 11:B83B: 83        .byte $83

                                      .byte $CE, $01, $36
                                      .byte $C6, $01, $37
                                      .byte $C7, $3B, $0A
                                      .byte $09, $60
                                      .byte $0D, $62
                                      .byte $11, $1C
                                      .byte $1B, $1E

- D - I - 0x01585D 11:B84D: A0        .byte $A0
                                      .byte $79, $40
                                      .byte $7D, $42
                                      .byte $01, $64
                                      .byte $02, $41
                                      .byte $06, $45
                                      .byte $0D, $63
                                      .byte $11, $1D

- D - I - 0x01586C 11:B85C: 85        .byte $85

                                      .byte $CE, $01, $48
                                      .byte $1B, $1F

- D - I - 0x015872 11:B862: A1        .byte $A1
                                      .byte $79, $15
                                      .byte $7D, $17

- D - I - 0x015877 11:B867: A2        .byte $A2
                                      .byte $79, $14
                                      .byte $7D, $16

- D - I - 0x01587C 11:B86C: FF        .byte con_FF



off_B86D:
- D - I - 0x01587D 11:B86D: BD        .byte $BD
                                      .byte $7D, $12
                                      .byte $41, $18

- D - I - 0x015882 11:B872: BE        .byte $BE
                                      .byte $7D, $07
                                      .byte $41, $0D
                                      .byte $06, $11

- D - I - 0x015889 11:B879: 84        .byte $84

                                      .byte $CC, $01, $1A
                                      .byte $C4, $01, $1B

- D - I - 0x015890 11:B880: 85        .byte $85

                                      .byte $CC, $01, $30
                                      .byte $C4, $01, $31

- D - I - 0x015897 11:B887: 86        .byte $86

                                      .byte $CC, $03, $32

- D - I - 0x01589B 11:B88B: BF        .byte $BF
                                      .byte $7D, $06
                                      .byte $41, $0C
                                      .byte $06, $13

- D - I - 0x0158A2 11:B892: 82        .byte $82

                                      .byte $CC, $01, $20
                                      .byte $C4, $01, $21

- D - I - 0x0158A9 11:B899: 83        .byte $83

                                      .byte $CB, $01, $22
                                      .byte $C3, $01, $23
                                      .byte $0D, $26

- D - I - 0x0158B2 11:B8A2: A0        .byte $A0
                                      .byte $79, $10
                                      .byte $7D, $03
                                      .byte $41, $09
                                      .byte $42, $0A
                                      .byte $06, $19
                                      .byte $09, $25
                                      .byte $0D, $27
                                      .byte $0F, $0A
                                      .byte $11, $08

- D - I - 0x0158C5 11:B8B5: A1        .byte $A1

- D - I - 0x0158C6 11:B8B6: 9E        .byte $9E

                                      .byte $C0, $75, $05
                                      .byte $C0, $55, $02

- D - I - 0x0158CD 11:B8BD: A2        .byte $A2

- D - I - 0x0158CE 11:B8BE: 9D        .byte $9D

                                      .byte $C0, $51, $04

- D - I - 0x0158D2 11:B8C2: FF        .byte con_FF



off_B8C3:
- D - I - 0x0158D3 11:B8C3: BD        .byte $BD
                                      .byte $39, $14
                                      .byte $3D, $16

- D - I - 0x0158D8 11:B8C8: BE        .byte $BE
                                      .byte $39, $15
                                      .byte $3D, $17
                                      .byte $09, $34
                                      .byte $0D, $36

- D - I - 0x0158E1 11:B8D1: BF        .byte $BF
                                      .byte $39, $40
                                      .byte $3D, $42
                                      .byte $01, $09
                                      .byte $02, $0A
                                      .byte $09, $35
                                      .byte $0D, $37

- D - I - 0x0158EE 11:B8DE: 81        .byte $81

                                      .byte $CA, $02, $4A
                                      .byte $C2, $02, $4B

- D - I - 0x0158F5 11:B8E5: A0        .byte $A0
                                      .byte $3D, $43
                                      .byte $01, $49

- D - I - 0x0158FA 11:B8EA: 81        .byte $81

                                      .byte $C2, $02, $4E
                                      .byte $09, $60
                                      .byte $0D, $62
                                      .byte $C9, $3B, $0A
                                      .byte $11, $1C
                                      .byte $1B, $1E

- D - I - 0x015909 11:B8F9: A1        .byte $A1
                                      .byte $3D, $46
                                      .byte $01, $4C
                                      .byte $09, $61
                                      .byte $0D, $63
                                      .byte $11, $1D

- D - I - 0x015914 11:B904: 85        .byte $85

                                      .byte $CE, $01, $48
                                      .byte $1B, $1F

- D - I - 0x01591A 11:B90A: A2        .byte $A2
                                      .byte $3D, $47
                                      .byte $01, $4D

- D - I - 0x01591F 11:B90F: FF        .byte con_FF



off_B910:
- D - I - 0x015920 11:B910: BC        .byte $BC
                                      .byte $17, $5C
                                      .byte $1B, $5E

- D - I - 0x015925 11:B915: BD        .byte $BD
                                      .byte $17, $5D
                                      .byte $1B, $5F

- D - I - 0x01592A 11:B91A: FE        .byte con_FE



off_B91B:
- D - I - 0x01592B 11:B91B: BB        .byte $BB

- D - I - 0x01592C 11:B91C: 85        .byte $85

                                      .byte $C0, $3B, $F2
                                      .byte $C0, $1B, $F4

- D - I - 0x015933 11:B923: BC        .byte $BC

- D - I - 0x015934 11:B924: 85        .byte $85

                                      .byte $C0, $3B, $F3
                                      .byte $C0, $1B, $F5

- D - I - 0x01593B 11:B92B: 86        .byte $86
                                      .byte $CC, $03, $66

- D - I - 0x01593F 11:B92F: FE        .byte con_FE



off_B930:
- D - I - 0x015940 11:B930: BC        .byte $BC
                                      .byte $17, $5C
                                      .byte $1B, $5E

- D - I - 0x015945 11:B935: BD        .byte $BD
                                      .byte $17, $5D
                                      .byte $1B, $5F

- D - I - 0x01594A 11:B93A: FE        .byte con_FE



off_B93B:
- D - I - 0x01594B 11:B93B: BD        .byte $BD

- D - I - 0x01594C 11:B93C: 85        .byte $85

                                      .byte $CC, $3B, $F2
                                      .byte $CC, $1B, $F4
                                      .byte $C4, $3B, $F3
                                      .byte $C4, $1B, $F5
                                      .byte $1B, $66

- D - I - 0x01595B 11:B94B: FE        .byte con_FE



off_B94C:
- D - I - 0x01595C 11:B94C: BD        .byte $BD

- D - I - 0x01595D 11:B94D: 86        .byte $86

                                      .byte $CC, $03, $0E
                                      .byte $C4, $01, $0F

- D - I - 0x015964 11:B954: 87        .byte $87

                                      .byte $CC, $03, $25
                                      .byte $C4, $03, $30

- D - I - 0x01596B 11:B95B: BE        .byte $BE

- D - I - 0x01596C 11:B95C: 9C        .byte $9C

                                      .byte $C0, $10, $2A
                                      .byte $11, $0C

- D - I - 0x015972 11:B962: 85        .byte $85

                                      .byte $CC, $01, $12
                                      .byte $C4, $01, $18

- D - I - 0x015979 11:B969: 86        .byte $86

                                      .byte $C4, $00, $1A

- D - I - 0x01597D 11:B96D: BF        .byte $BF
                                      .byte $33, $02
                                      .byte $37, $08
                                      .byte $39, $0A
                                      .byte $3D, $20
                                      .byte $01, $22
                                      .byte $05, $28
                                      .byte $06, $03
                                      .byte $0A, $04

- D - I - 0x01598E 11:B97E: 83        .byte $83

                                      .byte $CD, $01, $06
                                      .byte $C5, $00, $07
                                      .byte $11, $0D

- D - I - 0x015997 11:B987: A0        .byte $A0
                                      .byte $34, $09
                                      .byte $39, $0B
                                      .byte $3D, $21
                                      .byte $01, $23
                                      .byte $05, $29
                                      .byte $0A, $05

- D - I - 0x0159A4 11:B994: A1        .byte $A1
                                      .byte $3D, $24
                                      .byte $01, $26
                                      .byte $05, $2C
                                      .byte $0A, $10

- D - I - 0x0159AD 11:B99D: A2        .byte $A2
                                      .byte $00, $27
                                      .byte $07, $2D
                                      .byte $0B, $2B

- D - I - 0x0159B4 11:B9A4: A3        .byte $A3
                                      .byte $08, $2E
                                      .byte $0C, $2F

- D - I - 0x0159B9 11:B9A9: FF        .byte con_FF



off_B9AA:
- D - I - 0x0159BA 11:B9AA: BF        .byte $BF
                                      .byte $03, $5C
                                      .byte $03, $56
                                      .byte $07, $5E
                                      .byte $07, $70
                                      .byte $0B, $74
                                      .byte $0B, $5A

- D - I - 0x0159C7 11:B9B7: A0        .byte $A0
                                      .byte $0B, $5B

- D - I - 0x0159CA 11:B9BA: A1        .byte $A1
                                      .byte $4B, $5B

- D - I - 0x0159CD 11:B9BD: A2        .byte $A2
                                      .byte $43, $5C
                                      .byte $43, $56
                                      .byte $47, $5E
                                      .byte $47, $70
                                      .byte $4B, $74
                                      .byte $4B, $5A

- D - I - 0x0159DA 11:B9CA: FF        .byte con_FF



off_B9CB:
                                      .byte $3A, $03

- D - I - 0x0159DD 11:B9CD: A0        .byte $A0
                                      .byte $36, $04
                                      .byte $3A, $06
                                      .byte $3E, $0C
                                      .byte $01, $0E
                                      .byte $05, $24
                                      .byte $09, $26
                                      .byte $0A, $2A
                                      .byte $0E, $2C

- D - I - 0x0159EE 11:B9DE: A1        .byte $A1
                                      .byte $36, $05
                                      .byte $3A, $07
                                      .byte $02, $0F
                                      .byte $06, $25

- D - I - 0x0159F7 11:B9E7: A2        .byte $A2
                                      .byte $37, $10
                                      .byte $02, $1A

- D - I - 0x0159FC 11:B9EC: A3        .byte $A3
                                      .byte $03, $1B

- D - I - 0x0159FF 11:B9EF: FF        .byte con_FF



off_B9F0:
- D - I - 0x015A00 11:B9F0: BD        .byte $BD
                                      .byte $13, $B1
off_B9F3:
                                      .byte $0F, $9B
                                      .byte $0A, $99

- D - I - 0x015A07 11:B9F7: BE        .byte $BE
                                      .byte $0B, $9C
                                      .byte $0F, $4B
                                      .byte $13, $B4

- D - I - 0x015A0E 11:B9FE: BF        .byte $BF
                                      .byte $0B, $9D
                                      .byte $09, $02
                                      .byte $0F, $9F

- D - I - 0x015A15 11:BA05: FE        .byte con_FE



off_BA06:
- D - I - 0x015A16 11:BA06: BD        .byte $BD
                                      .byte $17, $29

- D - I - 0x015A19 11:BA09: BE        .byte $BE
                                      .byte $15, $2B
                                      .byte $19, $0E

- D - I - 0x015A1E 11:BA0E: BF        .byte $BF
                                      .byte $0E, $04
                                      .byte $12, $06
                                      .byte $15, $0C
                                      .byte $19, $0F

- D - I - 0x015A27 11:BA17: A0        .byte $A0
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

- D - I - 0x015A3C 11:BA2C: A1        .byte $A1
                                      .byte $2F, $03
                                      .byte $33, $09
                                      .byte $37, $0B
                                      .byte $38, $41
                                      .byte $3D, $43
                                      .byte $01, $49
                                      .byte $0E, $10
                                      .byte $13, $12
                                      .byte $17, $18

- D - I - 0x015A4F 11:BA3F: A2        .byte $A2
                                      .byte $38, $44
                                      .byte $3C, $46
                                      .byte $3D, $27
                                      .byte $01, $4C
                                      .byte $05, $2F
                                      .byte $07, $2E
                                      .byte $09, $2A
                                      .byte $0F, $23

- D - I - 0x015A60 11:BA50: A3        .byte $A3
                                      .byte $38, $30
                                      .byte $3C, $32
                                      .byte $00, $4B
                                      .byte $04, $61
                                      .byte $08, $11
                                      .byte $0F, $21

- D - I - 0x015A6D 11:BA5D: A4        .byte $A4
                                      .byte $3C, $13
                                      .byte $00, $19
                                      .byte $04, $1B
- D - I - 0x015A74 11:BA64: FF        .byte con_FF



off_BA65:
- D - I - 0x015A75 11:BA65: BF        .byte $BF
                                      .byte $07, $58
                                      .byte $0B, $5A

- D - I - 0x015A7A 11:BA6A: A1        .byte $A1
                                      .byte $0F, $74

- D - I - 0x015A7D 11:BA6D: A0        .byte $A0
                                      .byte $0F, $71

- D - I - 0x015A80 11:BA70: FE        .byte con_FE



off_BA71:
- D - I - 0x015A81 11:BA71: A2        .byte $A2
                                      .byte $07, $5D
                                      .byte $0B, $5F

- D - I - 0x015A86 11:BA76: A1        .byte $A1
                                      .byte $03, $57

- D - I - 0x015A89 11:BA79: A0        .byte $A0
                                      .byte $03, $55
off_BA7C:
                                      .byte $07, $59
                                      .byte $0B, $5B

- D - I - 0x015A90 11:BA80: A1        .byte $A1
                                      .byte $07, $5C
                                      .byte $0B, $5E

- D - I - 0x015A95 11:BA85: FB        .byte con_jmp
- D - I - 0x015A96 11:BA86: 06 BA     .word off_BA06



off_BA88:
- D - I - 0x015A98 11:BA88: A0        .byte $A0
                                      .byte $0F, $37
                                      .byte $13, $3D
                                      .byte $17, $3F

- D - I - 0x015A9F 11:BA8F: A1        .byte $A1
                                      .byte $0F, $62
                                      .byte $13, $68
                                      .byte $17, $6A

- D - I - 0x015AA6 11:BA96: A2        .byte $A2
                                      .byte $09, $61
                                      .byte $0D, $63
                                      .byte $13, $69

- D - I - 0x015AAD 11:BA9D: A3        .byte $A3
                                      .byte $05, $1D
                                      .byte $09, $1F
                                      .byte $0D, $35

- D - I - 0x015AB4 11:BAA4: A4        .byte $A4
                                      .byte $05, $48
                                      .byte $09, $4A

- D - I - 0x015AB9 11:BAA9: A5        .byte $A5
                                      .byte $2F, $66
                                      .byte $03, $43
                                      .byte $07, $49

- D - I - 0x015AC0 11:BAB0: A6        .byte $A6
                                      .byte $2E, $67
                                      .byte $33, $6D
                                      .byte $37, $6F
                                      .byte $3E, $44
                                      .byte $02, $46
                                      .byte $07, $4C

- D - I - 0x015ACD 11:BABD: A7        .byte $A7
                                      .byte $33, $78
                                      .byte $35, $40
                                      .byte $39, $42
                                      .byte $3D, $45
                                      .byte $01, $47
                                      .byte $02, $50
                                      .byte $06, $4D
                                      .byte $0B, $4F
                                      .byte $0F, $65

- D - I - 0x015AE0 11:BAD0: A8        .byte $A8
                                      .byte $35, $41
                                      .byte $3D, $50
                                      .byte $01, $52
                                      .byte $06, $58
                                      .byte $0B, $5A

- D - I - 0x015AEB 11:BADB: A9        .byte $A9
                                      .byte $3D, $51
                                      .byte $01, $53
                                      .byte $06, $59

- D - I - 0x015AF2 11:BAE2: AA        .byte $AA
                                      .byte $3D, $54
                                      .byte $03, $56

- D - I - 0x015AF7 11:BAE7: AB        .byte $AB
                                      .byte $3F, $55
                                      .byte $03, $57

- D - I - 0x015AFC 11:BAEC: FE        .byte con_FE



off_BAED:
                                      .byte $37, $02
                                      .byte $3B, $02
                                      .byte $3F, $02
                                      .byte $03, $02
                                      .byte $07, $02
                                      .byte $0B, $02
                                      .byte $0F, $02

- D - I - 0x015B0B 11:BAFB: FE        .byte con_FE



off_BAFC:
- D - I - 0x015B0C 11:BAFC: BD        .byte $BD
                                      .byte $03, $22
                                      .byte $06, $28

- D - I - 0x015B11 11:BB01: BE        .byte $BE
                                      .byte $3F, $08
                                      .byte $03, $0A
                                      .byte $07, $20

- D - I - 0x015B18 11:BB08: BF        .byte $BF
                                      .byte $3F, $09
                                      .byte $3E, $02
                                      .byte $03, $0B
                                      .byte $07, $21

- D - I - 0x015B21 11:BB11: FB        .byte con_jmp
- D - I - 0x015B22 11:BB12: CB B9     .word off_B9CB



off_BB14:
- D - I - 0x015B24 11:BB14: BD        .byte $BD
                                      .byte $38, $30
                                      .byte $3C, $32
                                      .byte $00, $38
                                      .byte $06, $3A

- D - I - 0x015B2D 11:BB1D: BE        .byte $BE
                                      .byte $38, $31
                                      .byte $3C, $01
                                      .byte $00, $3C
                                      .byte $07, $3B

- D - I - 0x015B36 11:BB26: BF        .byte $BF
                                      .byte $3A, $34
                                      .byte $3C, $01
                                      .byte $00, $3C
                                      .byte $07, $3E

- D - I - 0x015B3F 11:BB2F: A0        .byte $A0
                                      .byte $37, $1F
                                      .byte $3A, $35
                                      .byte $3E, $37
                                      .byte $01, $3D
                                      .byte $05, $3F
                                      .byte $09, $26
                                      .byte $0A, $2A
                                      .byte $0E, $2C

- D - I - 0x015B50 11:BB40: A1        .byte $A1
                                      .byte $37, $27
                                      .byte $3B, $2D
                                      .byte $03, $33
                                      .byte $02, $1E
                                      .byte $07, $39
                                      .byte $06, $2F

- D - I - 0x015B5D 11:BB4D: A2        .byte $A2
                                      .byte $37, $10
                                      .byte $03, $36

- D - I - 0x015B62 11:BB52: A3        .byte $A3
                                      .byte $03, $1B

- D - I - 0x015B65 11:BB55: FF        .byte con_FF



off_BB56:
- D - I - 0x015B66 11:BB56: BD        .byte $BD
                                      .byte $00, $15
                                      .byte $04, $44

- D - I - 0x015B6B 11:BB5B: BE        .byte $BE
                                      .byte $3C, $11
                                      .byte $00, $29
                                      .byte $04, $2B

- D - I - 0x015B72 11:BB62: BF        .byte $BF
                                      .byte $3C, $14
                                      .byte $3E, $02
                                      .byte $00, $23
                                      .byte $07, $2E

- D - I - 0x015B7B 11:BB6B: FB        .byte con_jmp
- D - I - 0x015B7C 11:BB6C: CB B9     .word off_B9CB



off_BB6E:
- D - I - 0x015B7E 11:BB6E: BD        .byte $BD
                                      .byte $00, $15
                                      .byte $04, $17
                                      .byte $06, $1D

- D - I - 0x015B85 11:BB75: BE        .byte $BE
                                      .byte $3C, $11
                                      .byte $00, $29
                                      .byte $04, $46

- D - I - 0x015B8C 11:BB7C: BF        .byte $BF
                                      .byte $3C, $14
                                      .byte $3E, $02
                                      .byte $00, $45
                                      .byte $07, $3E

- D - I - 0x015B95 11:BB85: FB        .byte con_jmp
- D - I - 0x015B96 11:BB86: CB B9     .word off_B9CB



off_BB88:
- D - I - 0x015B98 11:BB88: BD        .byte $BD
                                      .byte $0A, $90
                                      .byte $0E, $92
                                      .byte $12, $98

- D - I - 0x015B9F 11:BB8F: BE        .byte $BE
                                      .byte $09, $91
                                      .byte $0A, $02
                                      .byte $0E, $93

- D - I - 0x015BA6 11:BB96: BF        .byte $BF
                                      .byte $09, $94
                                      .byte $0E, $96

- D - I - 0x015BAB 11:BB9B: FE        .byte con_FE



off_BB9C:
- D - I - 0x015BAC 11:BB9C: FA        .byte con_jsr
- D - I - 0x015BAD 11:BB9D: F0 B9     .word off_B9F0

                                      .byte $13, $B5

- D - I - 0x015BB1 11:BBA1: FE        .byte con_FE



off_BBA2:
- D - I - 0x015BB2 11:BBA2: BC        .byte $BC
                                      .byte $0F, $8D
                                      .byte $13, $8F

- D - I - 0x015BB7 11:BBA7: BD        .byte $BD
                                      .byte $13, $9A

- D - I - 0x015BBA 11:BBAA: FA        .byte con_jsr
- D - I - 0x015BBB 11:BBAB: F3 B9     .word off_B9F3

                                      .byte $13, $B5

- D - I - 0x015BBF 11:BBAF: FE        .byte con_FE



off_BBB0:
- D - I - 0x015BC0 11:BBB0: BC        .byte $BC
                                      .byte $0F, $AC
                                      .byte $13, $AE

- D - I - 0x015BC5 11:BBB5: BD        .byte $BD
                                      .byte $13, $AF

- D - I - 0x015BC8 11:BBB8: FA        .byte con_jsr
- D - I - 0x015BC9 11:BBB9: F3 B9     .word off_B9F3

                                      .byte $13, $B5

- D - I - 0x015BCD 11:BBBD: FE        .byte con_FE



off_BBBE:
- D - I - 0x015BCE 11:BBBE: BE        .byte $BE
                                      .byte $17, $A5

- D - I - 0x015BD1 11:BBC1: FA        .byte con_jsr
- D - I - 0x015BD2 11:BBC2: F0 B9     .word off_B9F0
                                      .byte $13, $B0
                                      .byte $17, $B2

- D - I - 0x015BD8 11:BBC8: FE        .byte con_FE



off_BBC9:
- D - I - 0x015BD9 11:BBC9: BE        .byte $BE
                                      .byte $17, $AA

- D - I - 0x015BDC 11:BBCC: FA        .byte con_jsr
- D - I - 0x015BDD 11:BBCD: F0 B9     .word off_B9F0

                                      .byte $13, $B8
                                      .byte $17, $AB

- D - I - 0x015BE3 11:BBD3: FE        .byte con_FE



off_BBD4:
- D - I - 0x015BE4 11:BBD4: A7        .byte $A7
                                      .byte $38, $0C

- D - I - 0x015BE7 11:BBD7: A8        .byte $A8
                                      .byte $34, $07
                                      .byte $38, $0D
                                      .byte $3F, $0F

- D - I - 0x015BEE 11:BBDE: A9        .byte $A9
                                      .byte $34, $12
                                      .byte $38, $18
                                      .byte $3C, $1A

- D - I - 0x015BF5 11:BBE5: FB        .byte con_jmp
- D - I - 0x015BF6 11:BBE6: 88 BA     .word off_BA88



off_BBE8:
- D - I - 0x015BF8 11:BBE8: A7        .byte $A7
                                      .byte $38, $0C

- D - I - 0x015BFB 11:BBEB: A8        .byte $A8
                                      .byte $34, $11
                                      .byte $38, $13
                                      .byte $3F, $19

- D - I - 0x015C02 11:BBF2: A9        .byte $A9
                                      .byte $34, $14
                                      .byte $38, $16
                                      .byte $3C, $1C

- D - I - 0x015C09 11:BBF9: AA        .byte $AA
                                      .byte $30, $10
                                      .byte $34, $15
                                      .byte $38, $17

- D - I - 0x015C10 11:BC00: FB        .byte con_jmp
- D - I - 0x015C11 11:BC01: 88 BA     .word off_BA88



off_BC03:
- D - I - 0x015C13 11:BC03: A7        .byte $A7
                                      .byte $38, $0E

- D - I - 0x015C16 11:BC06: A8        .byte $A8
                                      .byte $34, $20
                                      .byte $38, $22
                                      .byte $3F, $0F

- D - I - 0x015C1D 11:BC0D: A9        .byte $A9
                                      .byte $34, $21
                                      .byte $38, $23
                                      .byte $3C, $1A

- D - I - 0x015C24 11:BC14: AA        .byte $AA
                                      .byte $38, $26

- D - I - 0x015C27 11:BC17: FB        .byte con_jmp
- D - I - 0x015C28 11:BC18: 88 BA     .word off_BA88



off_BC1A:
- D - I - 0x015C2A 11:BC1A: A7        .byte $A7
                                      .byte $38, $38

- D - I - 0x015C2D 11:BC1D: A8        .byte $A8
                                      .byte $34, $3A
                                      .byte $38, $2C
                                      .byte $3F, $2E

- D - I - 0x015C34 11:BC24: A9        .byte $A9
                                      .byte $38, $2D
                                      .byte $3C, $2F

- D - I - 0x015C39 11:BC29: FB        .byte con_jmp
- D - I - 0x015C3A 11:BC2A: 88 BA     .word off_BA88



off_BC2C:
- D - I - 0x015C3C 11:BC2C: BF        .byte $BF
                                      .byte $13, $7D
                                      .byte $17, $BE

- D - I - 0x015C41 11:BC31: A0        .byte $A0
                                      .byte $17, $BF

- D - I - 0x015C44 11:BC34: A1        .byte $A1
                                      .byte $17, $6B

- D - I - 0x015C47 11:BC37: A2        .byte $A2
                                      .byte $13, $6C
                                      .byte $17, $6E

- D - I - 0x015C4C 11:BC3C: FF        .byte con_FF



off_BC3D:
- D - I - 0x015C4D 11:BC3D: BF        .byte $BF
                                      .byte $13, $7C
                                      .byte $17, $7E

- D - I - 0x015C52 11:BC42: A0        .byte $A0
                                      .byte $17, $7F

- D - I - 0x015C55 11:BC45: A1        .byte $A1
                                      .byte $17, $7A

- D - I - 0x015C58 11:BC48: A2        .byte $A2
                                      .byte $13, $79
                                      .byte $17, $7B

- D - I - 0x015C5D 11:BC4D: FF        .byte con_FF



off_BC4E:
- D - I - 0x015C5E 11:BC4E: A5        .byte $A5
                                      .byte $9E, $C4
                                      .byte $02, $7F

- D - I - 0x015C63 11:BC53: 80        .byte $80
                                      .byte $C4, $02, $7F

- D - I - 0x015C67 11:BC57: FB        .byte con_jmp
- D - I - 0x015C68 11:BC58: 63 BC     .word off_BC63



off_BC5A:
- D - I - 0x015C6A 11:BC5A: A5        .byte $A5
                                      .byte $9E, $C4
                                      .byte $02, $7D

- D - I - 0x015C6F 11:BC5F: 80        .byte $80

                                      .byte $C4, $02, $7D
off_BC63:
- D - I - 0x015C73 11:BC63: A0        .byte $A0
                                      .byte $02, $7F

- D - I - 0x015C76 11:BC66: A4        .byte $A4
                                      .byte $02, $7F

- D - I - 0x015C79 11:BC69: A8        .byte $A8
                                      .byte $3E, $7F

- D - I - 0x015C7C 11:BC6C: AC        .byte $AC
                                      .byte $3E, $7F

- D - I - 0x015C7F 11:BC6F: FF        .byte con_FF



off_BC70:
- D - I - 0x015C80 11:BC70: AD        .byte $AD
                                      .byte $3A, $7F

- D - I - 0x015C83 11:BC73: FE        .byte con_FE



off_BC74:
                                      .byte $33, $E7
                                      .byte $37, $ED
                                      .byte $3B, $EF

- D - I - 0x015C8A 11:BC7A: BD        .byte $BD
                                      .byte $33, $E2
                                      .byte $37, $E8
                                      .byte $3B, $EA

- D - I - 0x015C91 11:BC81: BE        .byte $BE
                                      .byte $33, $E3
                                      .byte $37, $E9
                                      .byte $3B, $EB

- D - I - 0x015C98 11:BC88: A2        .byte $A2
                                      .byte $33, $E6
                                      .byte $37, $EC
                                      .byte $3B, $EE

- D - I - 0x015C9F 11:BC8F: FF        .byte con_FF



off_BC90:
- D - I - 0x015CA0 11:BC90: BF        .byte $BF
                                      .byte $3F, $50

- D - I - 0x015CA3 11:BC93: A0        .byte $A0
                                      .byte $3B, $75
                                      .byte $3F, $51

- D - I - 0x015CA8 11:BC98: A1        .byte $A1
                                      .byte $7B, $75
                                      .byte $7F, $51

- D - I - 0x015CAD 11:BC9D: A2        .byte $A2
                                      .byte $7F, $50

- D - I - 0x015CB0 11:BCA0: FF        .byte con_FF



off_BCA1:
- D - I - 0x015CB1 11:BCA1: A0        .byte $A0
                                      .byte $3D, $B9

- D - I - 0x015CB4 11:BCA4: A1        .byte $A1
                                      .byte $3D, $BC
- D - I - 0x015CB7 11:BCA7: FF        .byte con_FF
