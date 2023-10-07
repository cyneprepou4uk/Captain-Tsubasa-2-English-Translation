.segment "BANK_07"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000
; 0x00E010-0x01000F



; тут только данные, предположительно это сцены



.export tbl_0x00E010_параметры_заднего_фона



tbl_0x00E010_параметры_заднего_фона:
    .word _off012_A0D4_00_tecmo_theater
    .word _off012_A0DF_01_поле_во_время_бега
    .word _off012_A127_02_трибуны_лестница_узкий_экран
    .word _off012_A13F_03_движение_портрета_влево_sao_paulo
    .word _off012_A150_04_серые_трибуны_1_катсцена_01
    .word _off012_A164_05_портрет_цубасы_на_месте_демо
    .word _off012_A174_06_небольшой_голубой_квадрат
    .word _off012_A190_07_портрет_хюги_движение_вправо_демо
    .word _off012_A1A1_08_поле_во_время_подката
    .word _off012_A1C9_09_черный_фон_ХЗ
    .word _off012_A1F1_0A_ворота_вакабаяши_демо
    .word _off012_A22A_0B_портрет_вакабаяши_движение_вправо_демо
    .word _off012_A23B_0C_трибуны_поле_пауза_медленное_движение_вправо
    .word _off012_A274_0D_команда_japan
    .word _off012_A284_0E_команда_nankatsu
    .word _off012_A294_0F_команда_sao_paulo
    .word _off012_A2A4_10_трибуны_на_месте_1
    .word _off012_A2BC_11_трибуны_на_месте_2
    .word _off012_A2D4_12_пустые_трибуны_на_месте_1
    .word _off012_A2EC_13_пустые_трибуны_на_месте_2
    .word _off012_A304_14_1990_presented_by_tecmo
    .word _off012_A31C_15_логотип_super_striker
    .word _off012_A337_16_красный_фон_обезьянка_проигрыш
    .word _off012_A373_17_главное_меню_с_логотипом
    .word _off012_A3AB_18_музыкальное_меню
    .word _off012_A3E3_19_трибуны_быстрое_движение_влево
    .word _off012_A40C_1A_трибуны_ворота_табло_пауза_медленное_движение_вправо
    .word _off012_A435_1B_пустые_трибуны_ворота_табло
    .word _off012_A455_1C_ворота_сидит_меон_движение_вверх
    .word _off012_A49E_1D_белый_фон_для_флага_бразилии
    .word _off012_A4B6_1E_ворота_стоит_меон_ждет_удара
    .word _off012_A4D6_1F_пустые_трибуны_небо
    .word _off012_A4FE_20_небо
    .word _off012_A526_21_зеленый_фон_для_ударов_ногой_по_мячу
    .word _off012_A536_22_цубаса_крупным_планом_движение_вправо
    .word _off012_A55F_23_цубаса_крупным_планом
    .word _off012_A577_24_сетка_крупным_планом
    .word _off012_A58F_25_трибуны_лестница_быстрое_движение_вправо
    .word _off012_A5B8_26_трибуны_ночное_небо_1
    .word _off012_A5D0_27_трибуны_ночное_небо_2
    .word _off012_A5E8_28_черный_фон_ХЗ
    .word _off012_A610_29_трибуны_очень_быстрое_движение_влево
    .word _off012_A639_2A_трибуны_ворота_табло_медленное_движение_вправо
    .word _off012_A672_2B_трибуны_ворота_табло_поле
    .word _off012_A692_2C_пустые_трибуны_ворота_табло_в_квадрате_рукопожатие
    .word _off012_A69E_2D_пустые_трибуны_ворота_табло_пауза_медленное_движение_вправо
    .word _off012_A6C7_2E_трибуны_ворота_табло_центр
    .word _off012_A6DF_2F_рука_с_флагом_небо
    .word _off012_A6F3_30_верхушка_трибун_яои_фуджисава
    .word _off012_A70B_31_парк_вечер
    .word _off012_A753_32_горы_вечер_1
    .word _off012_A773_33_горы_вечер_2
    .word _off012_A793_34_горы_вечер_3
    .word _off012_A7B3_35_горы_вечер_4
    .word _off012_A7EB_36_удар_движение_экрана_поле_сверху_представление_циклона_цубасой
    .word _off012_A82C_37_небо_самолет
    .word _off012_A864_38_синий_фон_полоска_удивление_цубасы
    .word _off012_A87D_39_рваная_сетка
    .word _off012_A891_3A_майка_арбитра_рука_вверх
    .word _off012_A8A9_3B_портрет_пьера_слева
    .word _off012_A8CD_3C_зеленый_фон_для_флагов
    .word _off012_A8E5_3D_небо_узкий_экран
    .word _off012_A8FD_3E_вмятина_на_сетке_после_циклона_катсцена
    .word _off012_A925_3F_ночное_поле_трибуны_дождь_пауза_движение_вправо
    .word _off012_A96E_40_ворота_гертис_ловит_мяч_движенме_влево
    .word _off012_A997_41_черный_экран_молния_ХЗ
    .word _off012_A9C0_42_турнирная_сетка_флаги
    .word _off012_A9D4_43_время_11_55
    .word _off012_A9E8_44_трибуны_табло_в_прямоугольнике
    .word _off012_A9F8_45_небо_цубаса_с_кубком_движение_влево
    .word _off012_AA31_46_угол_йоко_ишизаки_подглядывают
    .word _off012_AA4B_47_коридор_лестница_йоко
    .word _off012_AA63_48_трибуны_лестница_пауза_медленное_движение_вправо
    .word _off012_AA7C_49_тень_под_трибунами_коимбра
    .word _off012_AA8A_4A_под_трибунами_карлос
    .word _off012_AAA2_4B_санае_крупным_планом_смотрит_вправо
    .word _off012_AABA_4C_коридор_ишизаки
    .word _off012_AAD2_4D_цубаса_крупным_планом_рука_у_виска
    .word _off012_AAEA_4E_цубаса_с_рукой_у_виска_трибуны_движение_вверх
    .word _off012_AC63_4F_под_пустыми_трибунами_слева
    .word _off012_AC7B_50_роберто_крупный_план_очки
    .word _off012_AC93_51_трибуны_ворота_табло_поле_слева
    .word _off012_ACB3_52_под_пустыми_трибунами_справа
    .word _off012_ACCB_53_ночное_поле_трибуны_дождь
    .word _off012_ACF3_54_под_трибунами_пауза_медленное_движение_вправо
    .word _off012_AD0C_55_трибуны_лестница_полный_экран
    .word _off012_AD34_56_ворота_вблизи_слева
    .word _off012_AD5C_57_под_трибунами_слева
    .word _off012_AD74_58_нижняя_часть_ворот_где_сидит_меон
    .word _off012_AD9C_59_голубой_фон
    .word _off012_ADC4_5A_трибуны_небо
    .word _off012_ADEC_5B_сетка_крупным_планом_сетка_крупным_планом_сетка_крупным_планом_движение_вправо
    .word _off012_AE0D_5C_серое_поле_катсцена_01
    .word _off012_AE27_5D_серая_команда_japan_катсцена_01
    .word _off012_AE37_5E_серые_трибуны_2_катсцена_01
    .word _off012_AE4B_5F_тренер_на_экране_meeting
    .word _off012_AE83_60_meeting
    .word _off012_AEBB_61_halftime
    .word _off012_AEDB_62_черный_фон_ХЗ
    .word _off012_AEF3_63_тень_под_трибунами_серый_фон
    .word _off012_AF01_64_серый_фон_схема_драйв_удара_циклона
    .word _off012_AF19_65_синий_узкий_фон_ХЗ
    .word _off012_AF31_66_фон_замаха_шнайдера
    .word _off012_AF5A_67_фон_замаха_цубасы
    .word _off012_AF83_68_фон_замаха_джаиро
    .word _off012_AFD9_69_коридор_дырка_в_стене



_off012_A0D4_00_tecmo_theater:
- D 1 - I - 0x00E0E4 07:A0D4: 7C        .byte $7C
- D 1 - I - 0x00E0E5 07:A0D5: 7E        .byte $7E
- D 1 - I - 0x00E0E6 07:A0D6: 81        .byte $81
- D 1 - I - 0x00E0E7 07:A0D7: 01        .byte $01
- D 1 - I - 0x00E0E8 07:A0D8: 03        .byte $03
- D 1 - I - 0x00E0E9 07:A0D9: 1B        .byte $1B

- D 1 - I - 0x00E0EA 07:A0DA: 22        .byte $22
- D 1 - I - 0x00E0EB 07:A0DB: 23        .byte $23
- D 1 - I - 0x00E0EC 07:A0DC: 24        .byte $24

- - - - - - 0x00E0ED 07:A0DD: 00        .byte $00
- D 1 - I - 0x00E0EE 07:A0DE: A0        .byte $A0



_off012_A0DF_01_поле_во_время_бега:
- D 1 - I - 0x00E0EF 07:A0DF: 3C        .byte $3C
- D 1 - I - 0x00E0F0 07:A0E0: 3E        .byte $3E
- D 1 - I - 0x00E0F1 07:A0E1: 02        .byte $02
- D 1 - I - 0x00E0F2 07:A0E2: 04        .byte $04
- D 1 - I - 0x00E0F3 07:A0E3: 10        .byte $10
- D 1 - I - 0x00E0F4 07:A0E4: 00        .byte $00

- D 1 - I - 0x00E0F5 07:A0E5: 42        .byte $42
- D 1 - I - 0x00E0F6 07:A0E6: 42        .byte $42
- D 1 - I - 0x00E0F7 07:A0E7: 42        .byte $42
- D 1 - I - 0x00E0F8 07:A0E8: 42        .byte $42
- D 1 - I - 0x00E0F9 07:A0E9: 42        .byte $42
- D 1 - I - 0x00E0FA 07:A0EA: 42        .byte $42
- D 1 - I - 0x00E0FB 07:A0EB: 42        .byte $42
- D 1 - I - 0x00E0FC 07:A0EC: 42        .byte $42
- D 1 - I - 0x00E0FD 07:A0ED: 42        .byte $42
- D 1 - I - 0x00E0FE 07:A0EE: 42        .byte $42
- D 1 - I - 0x00E0FF 07:A0EF: 42        .byte $42
- D 1 - I - 0x00E100 07:A0F0: 42        .byte $42
- D 1 - I - 0x00E101 07:A0F1: 42        .byte $42
- D 1 - I - 0x00E102 07:A0F2: 42        .byte $42
- D 1 - I - 0x00E103 07:A0F3: 42        .byte $42
- D 1 - I - 0x00E104 07:A0F4: 42        .byte $42
- D 1 - I - 0x00E105 07:A0F5: 3D        .byte $3D
- D 1 - I - 0x00E106 07:A0F6: 01        .byte $01
- D 1 - I - 0x00E107 07:A0F7: 01        .byte $01
- D 1 - I - 0x00E108 07:A0F8: 3C        .byte $3C
- D 1 - I - 0x00E109 07:A0F9: 01        .byte $01
- D 1 - I - 0x00E10A 07:A0FA: 01        .byte $01
- D 1 - I - 0x00E10B 07:A0FB: 3D        .byte $3D
- D 1 - I - 0x00E10C 07:A0FC: 01        .byte $01
- D 1 - I - 0x00E10D 07:A0FD: 01        .byte $01
- D 1 - I - 0x00E10E 07:A0FE: 3D        .byte $3D
- D 1 - I - 0x00E10F 07:A0FF: 01        .byte $01
- D 1 - I - 0x00E110 07:A100: 01        .byte $01
- D 1 - I - 0x00E111 07:A101: 3C        .byte $3C
- D 1 - I - 0x00E112 07:A102: 01        .byte $01
- D 1 - I - 0x00E113 07:A103: 3D        .byte $3D
- D 1 - I - 0x00E114 07:A104: 01        .byte $01
- D 1 - I - 0x00E115 07:A105: 3E        .byte $3E
- D 1 - I - 0x00E116 07:A106: 3E        .byte $3E
- D 1 - I - 0x00E117 07:A107: 3E        .byte $3E
- D 1 - I - 0x00E118 07:A108: 3E        .byte $3E
- D 1 - I - 0x00E119 07:A109: 3E        .byte $3E
- D 1 - I - 0x00E11A 07:A10A: 3E        .byte $3E
- D 1 - I - 0x00E11B 07:A10B: 3E        .byte $3E
- D 1 - I - 0x00E11C 07:A10C: 3E        .byte $3E
- D 1 - I - 0x00E11D 07:A10D: 3E        .byte $3E
- D 1 - I - 0x00E11E 07:A10E: 3E        .byte $3E
- D 1 - I - 0x00E11F 07:A10F: 3E        .byte $3E
- D 1 - I - 0x00E120 07:A110: 3E        .byte $3E
- D 1 - I - 0x00E121 07:A111: 3E        .byte $3E
- D 1 - I - 0x00E122 07:A112: 3E        .byte $3E
- D 1 - I - 0x00E123 07:A113: 3E        .byte $3E
- D 1 - I - 0x00E124 07:A114: 3E        .byte $3E
- D 1 - I - 0x00E125 07:A115: 3F        .byte $3F
- D 1 - I - 0x00E126 07:A116: 3F        .byte $3F
- D 1 - I - 0x00E127 07:A117: 3F        .byte $3F
- D 1 - I - 0x00E128 07:A118: 3F        .byte $3F
- D 1 - I - 0x00E129 07:A119: 3F        .byte $3F
- D 1 - I - 0x00E12A 07:A11A: 3F        .byte $3F
- D 1 - I - 0x00E12B 07:A11B: 3F        .byte $3F
- D 1 - I - 0x00E12C 07:A11C: 3F        .byte $3F
- D 1 - I - 0x00E12D 07:A11D: 3F        .byte $3F
- D 1 - I - 0x00E12E 07:A11E: 3F        .byte $3F
- D 1 - I - 0x00E12F 07:A11F: 3F        .byte $3F
- D 1 - I - 0x00E130 07:A120: 3F        .byte $3F
- D 1 - I - 0x00E131 07:A121: 3F        .byte $3F
- D 1 - I - 0x00E132 07:A122: 3F        .byte $3F
- D 1 - I - 0x00E133 07:A123: 3F        .byte $3F
- D 1 - I - 0x00E134 07:A124: 3F        .byte $3F

- - - - - - 0x00E135 07:A125: 00        .byte $00
- D 1 - I - 0x00E136 07:A126: A0        .byte $A0



_off012_A127_02_трибуны_лестница_узкий_экран:
- D 1 - I - 0x00E137 07:A127: 5C        .byte $5C
- D 1 - I - 0x00E138 07:A128: 5E        .byte $5E
- D 1 - I - 0x00E139 07:A129: 06        .byte $06
- D 1 - I - 0x00E13A 07:A12A: 02        .byte $02
- D 1 - I - 0x00E13B 07:A12B: 08        .byte $08
- D 1 - I - 0x00E13C 07:A12C: 10        .byte $10

- D 1 - I - 0x00E13D 07:A12D: A5        .byte $A5
- D 1 - I - 0x00E13E 07:A12E: A6        .byte $A6
- D 1 - I - 0x00E13F 07:A12F: A7        .byte $A7
- D 1 - I - 0x00E140 07:A130: A7        .byte $A7
- D 1 - I - 0x00E141 07:A131: A7        .byte $A7
- D 1 - I - 0x00E142 07:A132: A7        .byte $A7
- D 1 - I - 0x00E143 07:A133: A7        .byte $A7
- D 1 - I - 0x00E144 07:A134: A8        .byte $A8
- D 1 - I - 0x00E145 07:A135: A9        .byte $A9
- D 1 - I - 0x00E146 07:A136: 4F        .byte $4F
- D 1 - I - 0x00E147 07:A137: AA        .byte $AA
- D 1 - I - 0x00E148 07:A138: FF        .byte $FF
- D 1 - I - 0x00E149 07:A139: FF        .byte $FF
- D 1 - I - 0x00E14A 07:A13A: FF        .byte $FF
- D 1 - I - 0x00E14B 07:A13B: FF        .byte $FF
- D 1 - I - 0x00E14C 07:A13C: A9        .byte $A9

- - - - - - 0x00E14D 07:A13D: 00        .byte $00
- D 1 - I - 0x00E14E 07:A13E: A0        .byte $A0



_off012_A13F_03_движение_портрета_влево_sao_paulo:
- D 1 - I - 0x00E14F 07:A13F: 3A        .byte $3A
- D 1 - I - 0x00E150 07:A140: 00        .byte $00
- D 1 - I - 0x00E151 07:A141: 04        .byte $04
- D 1 - I - 0x00E152 07:A142: 02        .byte $02
- D 1 - I - 0x00E153 07:A143: 04        .byte $04
- D 1 - I - 0x00E154 07:A144: 12        .byte $12

- D 1 - I - 0x00E155 07:A145: 93        .byte $93
- D 1 - I - 0x00E156 07:A146: 75        .byte $75
- D 1 - I - 0x00E157 07:A147: 42        .byte $42
- D 1 - I - 0x00E158 07:A148: 43        .byte $43
- D 1 - I - 0x00E159 07:A149: 94        .byte $94
- D 1 - I - 0x00E15A 07:A14A: 77        .byte $77
- D 1 - I - 0x00E15B 07:A14B: 78        .byte $78
- D 1 - I - 0x00E15C 07:A14C: 79        .byte $79
- D 1 - I - 0x00E15D 07:A14D: 00        .byte $00

- D 1 - I - 0x00E15E 07:A14E: BF        .byte $BF
- D 1 - I - 0x00E15F 07:A14F: 08        .byte $08



_off012_A150_04_серые_трибуны_1_катсцена_01:
- D 1 - I - 0x00E160 07:A150: 3C        .byte $3C
- D 1 - I - 0x00E161 07:A151: 3E        .byte $3E
- D 1 - I - 0x00E162 07:A152: 20        .byte $20
- D 1 - I - 0x00E163 07:A153: 02        .byte $02
- D 1 - I - 0x00E164 07:A154: 06        .byte $06
- D 1 - I - 0x00E165 07:A155: 11        .byte $11

- D 1 - I - 0x00E166 07:A156: 2C        .byte $2C
- D 1 - I - 0x00E167 07:A157: 2C        .byte $2C
- D 1 - I - 0x00E168 07:A158: 2C        .byte $2C
- D 1 - I - 0x00E169 07:A159: 2C        .byte $2C
- D 1 - I - 0x00E16A 07:A15A: 2D        .byte $2D
- D 1 - I - 0x00E16B 07:A15B: 2C        .byte $2C
- D 1 - I - 0x00E16C 07:A15C: 2F        .byte $2F
- D 1 - I - 0x00E16D 07:A15D: 2E        .byte $2E
- D 1 - I - 0x00E16E 07:A15E: 2F        .byte $2F
- D 1 - I - 0x00E16F 07:A15F: 2E        .byte $2E
- D 1 - I - 0x00E170 07:A160: 2F        .byte $2F
- D 1 - I - 0x00E171 07:A161: 2E        .byte $2E

- - - - - - 0x00E172 07:A162: 00        .byte $00
- D 1 - I - 0x00E173 07:A163: A0        .byte $A0



_off012_A164_05_портрет_цубасы_на_месте_демо:
- D 1 - I - 0x00E174 07:A164: 3A        .byte $3A
- D 1 - I - 0x00E175 07:A165: 00        .byte $00
- D 1 - I - 0x00E176 07:A166: 04        .byte $04
- D 1 - I - 0x00E177 07:A167: 02        .byte $02
- D 1 - I - 0x00E178 07:A168: 04        .byte $04
- D 1 - I - 0x00E179 07:A169: 12        .byte $12

- D 1 - I - 0x00E17A 07:A16A: 93        .byte $93
- D 1 - I - 0x00E17B 07:A16B: 75        .byte $75
- D 1 - I - 0x00E17C 07:A16C: 42        .byte $42
- D 1 - I - 0x00E17D 07:A16D: 43        .byte $43
- D 1 - I - 0x00E17E 07:A16E: 94        .byte $94
- D 1 - I - 0x00E17F 07:A16F: 77        .byte $77
- D 1 - I - 0x00E180 07:A170: 78        .byte $78
- D 1 - I - 0x00E181 07:A171: 79        .byte $79

- - - - - - 0x00E182 07:A172: 00        .byte $00
- D 1 - I - 0x00E183 07:A173: A0        .byte $A0



_off012_A174_06_небольшой_голубой_квадрат:
- D 1 - I - 0x00E184 07:A174: 3C        .byte $3C
- D 1 - I - 0x00E185 07:A175: 3E        .byte $3E
- D 1 - I - 0x00E186 07:A176: 00        .byte $00
- D 1 - I - 0x00E187 07:A177: 02        .byte $02
- D 1 - I - 0x00E188 07:A178: 0A        .byte $0A
- D 1 - I - 0x00E189 07:A179: 13        .byte $13

- D 1 - I - 0x00E18A 07:A17A: 01        .byte $01
- D 1 - I - 0x00E18B 07:A17B: 01        .byte $01
- D 1 - I - 0x00E18C 07:A17C: 00        .byte $00
- D 1 - I - 0x00E18D 07:A17D: 00        .byte $00
- D 1 - I - 0x00E18E 07:A17E: 00        .byte $00
- D 1 - I - 0x00E18F 07:A17F: 00        .byte $00
- D 1 - I - 0x00E190 07:A180: 00        .byte $00
- D 1 - I - 0x00E191 07:A181: 00        .byte $00
- D 1 - I - 0x00E192 07:A182: 15        .byte $15
- D 1 - I - 0x00E193 07:A183: 16        .byte $16
- D 1 - I - 0x00E194 07:A184: 01        .byte $01
- D 1 - I - 0x00E195 07:A185: 01        .byte $01
- D 1 - I - 0x00E196 07:A186: 00        .byte $00
- D 1 - I - 0x00E197 07:A187: 00        .byte $00
- D 1 - I - 0x00E198 07:A188: 00        .byte $00
- D 1 - I - 0x00E199 07:A189: 00        .byte $00
- D 1 - I - 0x00E19A 07:A18A: 00        .byte $00
- D 1 - I - 0x00E19B 07:A18B: 00        .byte $00
- D 1 - I - 0x00E19C 07:A18C: 19        .byte $19
- D 1 - I - 0x00E19D 07:A18D: 1A        .byte $1A

- - - - - - 0x00E19E 07:A18E: 00        .byte $00
- D 1 - I - 0x00E19F 07:A18F: A0        .byte $A0



_off012_A190_07_портрет_хюги_движение_вправо_демо:
- D 1 - I - 0x00E1A0 07:A190: 3A        .byte $3A
- D 1 - I - 0x00E1A1 07:A191: 00        .byte $00
- D 1 - I - 0x00E1A2 07:A192: 1B        .byte $1B
- D 1 - I - 0x00E1A3 07:A193: 02        .byte $02
- D 1 - I - 0x00E1A4 07:A194: 04        .byte $04
- D 1 - I - 0x00E1A5 07:A195: 15        .byte $15

- D 1 - I - 0x00E1A6 07:A196: 93        .byte $93
- D 1 - I - 0x00E1A7 07:A197: 42        .byte $42
- D 1 - I - 0x00E1A8 07:A198: 80        .byte $80
- D 1 - I - 0x00E1A9 07:A199: 43        .byte $43
- D 1 - I - 0x00E1AA 07:A19A: 81        .byte $81
- D 1 - I - 0x00E1AB 07:A19B: 82        .byte $82
- D 1 - I - 0x00E1AC 07:A19C: 7E        .byte $7E
- D 1 - I - 0x00E1AD 07:A19D: 44        .byte $44
- D 1 - I - 0x00E1AE 07:A19E: 00        .byte $00

- D 1 - I - 0x00E1AF 07:A19F: 3F        .byte $3F
- D 1 - I - 0x00E1B0 07:A1A0: 08        .byte $08



_off012_A1A1_08_поле_во_время_подката:
- D 1 - I - 0x00E1B1 07:A1A1: 40        .byte $40
- D 1 - I - 0x00E1B2 07:A1A2: 00        .byte $00
- D 1 - I - 0x00E1B3 07:A1A3: 8E        .byte $8E
- D 1 - I - 0x00E1B4 07:A1A4: 04        .byte $04
- D 1 - I - 0x00E1B5 07:A1A5: 08        .byte $08
- D 1 - I - 0x00E1B6 07:A1A6: 00        .byte $00

- D 1 - I - 0x00E1B7 07:A1A7: 67        .byte $67
- D 1 - I - 0x00E1B8 07:A1A8: 67        .byte $67
- D 1 - I - 0x00E1B9 07:A1A9: 67        .byte $67
- D 1 - I - 0x00E1BA 07:A1AA: 67        .byte $67
- D 1 - I - 0x00E1BB 07:A1AB: 67        .byte $67
- D 1 - I - 0x00E1BC 07:A1AC: 67        .byte $67
- D 1 - I - 0x00E1BD 07:A1AD: 67        .byte $67
- D 1 - I - 0x00E1BE 07:A1AE: 67        .byte $67
- D 1 - I - 0x00E1BF 07:A1AF: 01        .byte $01
- D 1 - I - 0x00E1C0 07:A1B0: 01        .byte $01
- D 1 - I - 0x00E1C1 07:A1B1: 01        .byte $01
- D 1 - I - 0x00E1C2 07:A1B2: 01        .byte $01
- D 1 - I - 0x00E1C3 07:A1B3: 01        .byte $01
- D 1 - I - 0x00E1C4 07:A1B4: 01        .byte $01
- D 1 - I - 0x00E1C5 07:A1B5: 01        .byte $01
- D 1 - I - 0x00E1C6 07:A1B6: 01        .byte $01
- D 1 - I - 0x00E1C7 07:A1B7: 6C        .byte $6C
- D 1 - I - 0x00E1C8 07:A1B8: 6D        .byte $6D
- D 1 - I - 0x00E1C9 07:A1B9: 6E        .byte $6E
- D 1 - I - 0x00E1CA 07:A1BA: 01        .byte $01
- D 1 - I - 0x00E1CB 07:A1BB: 01        .byte $01
- D 1 - I - 0x00E1CC 07:A1BC: 01        .byte $01
- D 1 - I - 0x00E1CD 07:A1BD: 01        .byte $01
- D 1 - I - 0x00E1CE 07:A1BE: 01        .byte $01
- D 1 - I - 0x00E1CF 07:A1BF: 68        .byte $68
- D 1 - I - 0x00E1D0 07:A1C0: 69        .byte $69
- D 1 - I - 0x00E1D1 07:A1C1: 6A        .byte $6A
- D 1 - I - 0x00E1D2 07:A1C2: 6B        .byte $6B
- D 1 - I - 0x00E1D3 07:A1C3: 6C        .byte $6C
- D 1 - I - 0x00E1D4 07:A1C4: 6D        .byte $6D
- D 1 - I - 0x00E1D5 07:A1C5: 6E        .byte $6E
- D 1 - I - 0x00E1D6 07:A1C6: 01        .byte $01

- - - - - - 0x00E1D7 07:A1C7: 00        .byte $00
- D 1 - I - 0x00E1D8 07:A1C8: A0        .byte $A0



_off012_A1C9_09_черный_фон_ХЗ:
- D 1 - I - 0x00E1D9 07:A1C9: 3C        .byte $3C
- D 1 - I - 0x00E1DA 07:A1CA: 3E        .byte $3E
- D 1 - I - 0x00E1DB 07:A1CB: 03        .byte $03
- D 1 - I - 0x00E1DC 07:A1CC: 04        .byte $04
- D 1 - I - 0x00E1DD 07:A1CD: 08        .byte $08
- D 1 - I - 0x00E1DE 07:A1CE: 00        .byte $00

- D 1 - I - 0x00E1DF 07:A1CF: 42        .byte $42
- D 1 - I - 0x00E1E0 07:A1D0: 42        .byte $42
- D 1 - I - 0x00E1E1 07:A1D1: 42        .byte $42
- D 1 - I - 0x00E1E2 07:A1D2: 42        .byte $42
- D 1 - I - 0x00E1E3 07:A1D3: 42        .byte $42
- D 1 - I - 0x00E1E4 07:A1D4: 42        .byte $42
- D 1 - I - 0x00E1E5 07:A1D5: 42        .byte $42
- D 1 - I - 0x00E1E6 07:A1D6: 42        .byte $42
- D 1 - I - 0x00E1E7 07:A1D7: 01        .byte $01
- D 1 - I - 0x00E1E8 07:A1D8: 01        .byte $01
- D 1 - I - 0x00E1E9 07:A1D9: 01        .byte $01
- D 1 - I - 0x00E1EA 07:A1DA: 01        .byte $01
- D 1 - I - 0x00E1EB 07:A1DB: 01        .byte $01
- D 1 - I - 0x00E1EC 07:A1DC: 01        .byte $01
- D 1 - I - 0x00E1ED 07:A1DD: 01        .byte $01
- D 1 - I - 0x00E1EE 07:A1DE: 01        .byte $01
- D 1 - I - 0x00E1EF 07:A1DF: 01        .byte $01
- D 1 - I - 0x00E1F0 07:A1E0: 01        .byte $01
- D 1 - I - 0x00E1F1 07:A1E1: 01        .byte $01
- D 1 - I - 0x00E1F2 07:A1E2: 01        .byte $01
- D 1 - I - 0x00E1F3 07:A1E3: 01        .byte $01
- D 1 - I - 0x00E1F4 07:A1E4: 01        .byte $01
- D 1 - I - 0x00E1F5 07:A1E5: 01        .byte $01
- D 1 - I - 0x00E1F6 07:A1E6: 01        .byte $01
- D 1 - I - 0x00E1F7 07:A1E7: 01        .byte $01
- D 1 - I - 0x00E1F8 07:A1E8: 01        .byte $01
- D 1 - I - 0x00E1F9 07:A1E9: 01        .byte $01
- D 1 - I - 0x00E1FA 07:A1EA: 01        .byte $01
- D 1 - I - 0x00E1FB 07:A1EB: 01        .byte $01
- D 1 - I - 0x00E1FC 07:A1EC: 01        .byte $01
- D 1 - I - 0x00E1FD 07:A1ED: 01        .byte $01
- D 1 - I - 0x00E1FE 07:A1EE: 01        .byte $01

- - - - - - 0x00E1FF 07:A1EF: 00        .byte $00
- D 1 - I - 0x00E200 07:A1F0: A0        .byte $A0



_off012_A1F1_0A_ворота_вакабаяши_демо:
- D 1 - I - 0x00E201 07:A1F1: 3C        .byte $3C
- D 1 - I - 0x00E202 07:A1F2: 4C        .byte $4C
- D 1 - I - 0x00E203 07:A1F3: 00        .byte $00
- D 1 - I - 0x00E204 07:A1F4: 04        .byte $04
- D 1 - I - 0x00E205 07:A1F5: 0C        .byte $0C
- D 1 - I - 0x00E206 07:A1F6: 07        .byte $07

- D 1 - I - 0x00E207 07:A1F7: 98        .byte $98
- D 1 - I - 0x00E208 07:A1F8: 99        .byte $99
- D 1 - I - 0x00E209 07:A1F9: 42        .byte $42
- D 1 - I - 0x00E20A 07:A1FA: 42        .byte $42
- D 1 - I - 0x00E20B 07:A1FB: 42        .byte $42
- D 1 - I - 0x00E20C 07:A1FC: 42        .byte $42
- D 1 - I - 0x00E20D 07:A1FD: 42        .byte $42
- D 1 - I - 0x00E20E 07:A1FE: 42        .byte $42
- D 1 - I - 0x00E20F 07:A1FF: 42        .byte $42
- D 1 - I - 0x00E210 07:A200: 42        .byte $42
- D 1 - I - 0x00E211 07:A201: 42        .byte $42
- D 1 - I - 0x00E212 07:A202: 42        .byte $42
- D 1 - I - 0x00E213 07:A203: 9A        .byte $9A
- D 1 - I - 0x00E214 07:A204: 9B        .byte $9B
- D 1 - I - 0x00E215 07:A205: 9C        .byte $9C
- D 1 - I - 0x00E216 07:A206: 01        .byte $01
- D 1 - I - 0x00E217 07:A207: 3C        .byte $3C
- D 1 - I - 0x00E218 07:A208: 01        .byte $01
- D 1 - I - 0x00E219 07:A209: 01        .byte $01
- D 1 - I - 0x00E21A 07:A20A: 01        .byte $01
- D 1 - I - 0x00E21B 07:A20B: 01        .byte $01
- D 1 - I - 0x00E21C 07:A20C: 01        .byte $01
- D 1 - I - 0x00E21D 07:A20D: 01        .byte $01
- D 1 - I - 0x00E21E 07:A20E: 01        .byte $01
- D 1 - I - 0x00E21F 07:A20F: 9D        .byte $9D
- D 1 - I - 0x00E220 07:A210: 9E        .byte $9E
- D 1 - I - 0x00E221 07:A211: 9F        .byte $9F
- D 1 - I - 0x00E222 07:A212: A0        .byte $A0
- D 1 - I - 0x00E223 07:A213: 01        .byte $01
- D 1 - I - 0x00E224 07:A214: 01        .byte $01
- D 1 - I - 0x00E225 07:A215: 01        .byte $01
- D 1 - I - 0x00E226 07:A216: 01        .byte $01
- D 1 - I - 0x00E227 07:A217: 01        .byte $01
- D 1 - I - 0x00E228 07:A218: 01        .byte $01
- D 1 - I - 0x00E229 07:A219: 3D        .byte $3D
- D 1 - I - 0x00E22A 07:A21A: 01        .byte $01
- D 1 - I - 0x00E22B 07:A21B: A1        .byte $A1
- D 1 - I - 0x00E22C 07:A21C: A2        .byte $A2
- D 1 - I - 0x00E22D 07:A21D: A3        .byte $A3
- D 1 - I - 0x00E22E 07:A21E: A4        .byte $A4
- D 1 - I - 0x00E22F 07:A21F: 01        .byte $01
- D 1 - I - 0x00E230 07:A220: 39        .byte $39
- D 1 - I - 0x00E231 07:A221: 3A        .byte $3A
- D 1 - I - 0x00E232 07:A222: 3B        .byte $3B
- D 1 - I - 0x00E233 07:A223: 01        .byte $01
- D 1 - I - 0x00E234 07:A224: 01        .byte $01
- D 1 - I - 0x00E235 07:A225: 01        .byte $01
- D 1 - I - 0x00E236 07:A226: 01        .byte $01
- D 1 - I - 0x00E237 07:A227: 00        .byte $00

- D 1 - I - 0x00E238 07:A228: 21        .byte $21
- D 1 - I - 0x00E239 07:A229: 04        .byte $04



_off012_A22A_0B_портрет_вакабаяши_движение_вправо_демо:
- D 1 - I - 0x00E23A 07:A22A: 38        .byte $38
- D 1 - I - 0x00E23B 07:A22B: 3A        .byte $3A
- D 1 - I - 0x00E23C 07:A22C: 05        .byte $05
- D 1 - I - 0x00E23D 07:A22D: 02        .byte $02
- D 1 - I - 0x00E23E 07:A22E: 04        .byte $04
- D 1 - I - 0x00E23F 07:A22F: 15        .byte $15

- D 1 - I - 0x00E240 07:A230: 8D        .byte $8D
- D 1 - I - 0x00E241 07:A231: 42        .byte $42
- D 1 - I - 0x00E242 07:A232: 42        .byte $42
- D 1 - I - 0x00E243 07:A233: 8E        .byte $8E
- D 1 - I - 0x00E244 07:A234: 8F        .byte $8F
- D 1 - I - 0x00E245 07:A235: 90        .byte $90
- D 1 - I - 0x00E246 07:A236: 91        .byte $91
- D 1 - I - 0x00E247 07:A237: 92        .byte $92
- D 1 - I - 0x00E248 07:A238: 00        .byte $00

- D 1 - I - 0x00E249 07:A239: 3F        .byte $3F
- D 1 - I - 0x00E24A 07:A23A: 08        .byte $08



_off012_A23B_0C_трибуны_поле_пауза_медленное_движение_вправо:
- D 1 - I - 0x00E24B 07:A23B: 3C        .byte $3C
- D 1 - I - 0x00E24C 07:A23C: 3E        .byte $3E
- D 1 - I - 0x00E24D 07:A23D: 00        .byte $00
- D 1 - I - 0x00E24E 07:A23E: 03        .byte $03
- D 1 - I - 0x00E24F 07:A23F: 10        .byte $10
- D 1 - I - 0x00E250 07:A240: 08        .byte $08

- D 1 - I - 0x00E251 07:A241: 42        .byte $42
- D 1 - I - 0x00E252 07:A242: 42        .byte $42
- D 1 - I - 0x00E253 07:A243: 42        .byte $42
- D 1 - I - 0x00E254 07:A244: 42        .byte $42
- D 1 - I - 0x00E255 07:A245: 42        .byte $42
- D 1 - I - 0x00E256 07:A246: 42        .byte $42
- D 1 - I - 0x00E257 07:A247: 42        .byte $42
- D 1 - I - 0x00E258 07:A248: 42        .byte $42
- D 1 - I - 0x00E259 07:A249: 42        .byte $42
- D 1 - I - 0x00E25A 07:A24A: 42        .byte $42
- D 1 - I - 0x00E25B 07:A24B: 42        .byte $42
- D 1 - I - 0x00E25C 07:A24C: 42        .byte $42
- D 1 - I - 0x00E25D 07:A24D: 42        .byte $42
- D 1 - I - 0x00E25E 07:A24E: 42        .byte $42
- D 1 - I - 0x00E25F 07:A24F: 42        .byte $42
- D 1 - I - 0x00E260 07:A250: 42        .byte $42
- D 1 - I - 0x00E261 07:A251: 12        .byte $12
- D 1 - I - 0x00E262 07:A252: 13        .byte $13
- D 1 - I - 0x00E263 07:A253: 12        .byte $12
- D 1 - I - 0x00E264 07:A254: 13        .byte $13
- D 1 - I - 0x00E265 07:A255: 12        .byte $12
- D 1 - I - 0x00E266 07:A256: 13        .byte $13
- D 1 - I - 0x00E267 07:A257: 12        .byte $12
- D 1 - I - 0x00E268 07:A258: 13        .byte $13
- D 1 - I - 0x00E269 07:A259: 12        .byte $12
- D 1 - I - 0x00E26A 07:A25A: 13        .byte $13
- D 1 - I - 0x00E26B 07:A25B: 14        .byte $14
- D 1 - I - 0x00E26C 07:A25C: 15        .byte $15
- D 1 - I - 0x00E26D 07:A25D: 16        .byte $16
- D 1 - I - 0x00E26E 07:A25E: 17        .byte $17
- D 1 - I - 0x00E26F 07:A25F: 12        .byte $12
- D 1 - I - 0x00E270 07:A260: 13        .byte $13
- D 1 - I - 0x00E271 07:A261: 18        .byte $18
- D 1 - I - 0x00E272 07:A262: 1B        .byte $1B
- D 1 - I - 0x00E273 07:A263: 18        .byte $18
- D 1 - I - 0x00E274 07:A264: 1B        .byte $1B
- D 1 - I - 0x00E275 07:A265: 18        .byte $18
- D 1 - I - 0x00E276 07:A266: 1B        .byte $1B
- D 1 - I - 0x00E277 07:A267: 18        .byte $18
- D 1 - I - 0x00E278 07:A268: 1B        .byte $1B
- D 1 - I - 0x00E279 07:A269: 18        .byte $18
- D 1 - I - 0x00E27A 07:A26A: 1B        .byte $1B
- D 1 - I - 0x00E27B 07:A26B: 18        .byte $18
- D 1 - I - 0x00E27C 07:A26C: 19        .byte $19
- D 1 - I - 0x00E27D 07:A26D: 1A        .byte $1A
- D 1 - I - 0x00E27E 07:A26E: 1B        .byte $1B
- D 1 - I - 0x00E27F 07:A26F: 18        .byte $18
- D 1 - I - 0x00E280 07:A270: 1B        .byte $1B
- D 1 - I - 0x00E281 07:A271: 5A        .byte $5A

- D 1 - I - 0x00E282 07:A272: A2        .byte $A2
- D 1 - I - 0x00E283 07:A273: 08        .byte $08



_off012_A274_0D_команда_japan:
- D 1 - I - 0x00E284 07:A274: 64        .byte $64
- D 1 - I - 0x00E285 07:A275: 66        .byte $66
- D 1 - I - 0x00E286 07:A276: 98        .byte $98
- D 1 - I - 0x00E287 07:A277: 02        .byte $02
- D 1 - I - 0x00E288 07:A278: 04        .byte $04
- D 1 - I - 0x00E289 07:A279: 12        .byte $12

- D 1 - I - 0x00E28A 07:A27A: 4F        .byte $4F
- D 1 - I - 0x00E28B 07:A27B: 50        .byte $50
- D 1 - I - 0x00E28C 07:A27C: 51        .byte $51
- D 1 - I - 0x00E28D 07:A27D: 52        .byte $52
- D 1 - I - 0x00E28E 07:A27E: 53        .byte $53
- D 1 - I - 0x00E28F 07:A27F: 54        .byte $54
- D 1 - I - 0x00E290 07:A280: 55        .byte $55
- D 1 - I - 0x00E291 07:A281: 56        .byte $56

- - - - - - 0x00E292 07:A282: 00        .byte $00
- D 1 - I - 0x00E293 07:A283: A0        .byte $A0



_off012_A284_0E_команда_nankatsu:
- D 1 - I - 0x00E294 07:A284: 64        .byte $64
- D 1 - I - 0x00E295 07:A285: 66        .byte $66
- D 1 - I - 0x00E296 07:A286: 99        .byte $99
- D 1 - I - 0x00E297 07:A287: 02        .byte $02
- D 1 - I - 0x00E298 07:A288: 04        .byte $04
- D 1 - I - 0x00E299 07:A289: 12        .byte $12

- D 1 - I - 0x00E29A 07:A28A: 4F        .byte $4F
- D 1 - I - 0x00E29B 07:A28B: 50        .byte $50
- D 1 - I - 0x00E29C 07:A28C: 51        .byte $51
- D 1 - I - 0x00E29D 07:A28D: 52        .byte $52
- D 1 - I - 0x00E29E 07:A28E: 53        .byte $53
- D 1 - I - 0x00E29F 07:A28F: 54        .byte $54
- D 1 - I - 0x00E2A0 07:A290: 55        .byte $55
- D 1 - I - 0x00E2A1 07:A291: 56        .byte $56

- - - - - - 0x00E2A2 07:A292: 00        .byte $00
- D 1 - I - 0x00E2A3 07:A293: A0        .byte $A0



_off012_A294_0F_команда_sao_paulo:
- D 1 - I - 0x00E2A4 07:A294: 64        .byte $64
- D 1 - I - 0x00E2A5 07:A295: 66        .byte $66
- D 1 - I - 0x00E2A6 07:A296: 9A        .byte $9A
- D 1 - I - 0x00E2A7 07:A297: 02        .byte $02
- D 1 - I - 0x00E2A8 07:A298: 04        .byte $04
- D 1 - I - 0x00E2A9 07:A299: 12        .byte $12

- D 1 - I - 0x00E2AA 07:A29A: 57        .byte $57
- D 1 - I - 0x00E2AB 07:A29B: 58        .byte $58
- D 1 - I - 0x00E2AC 07:A29C: 59        .byte $59
- D 1 - I - 0x00E2AD 07:A29D: 52        .byte $52
- D 1 - I - 0x00E2AE 07:A29E: 5A        .byte $5A
- D 1 - I - 0x00E2AF 07:A29F: 5B        .byte $5B
- D 1 - I - 0x00E2B0 07:A2A0: 5C        .byte $5C
- D 1 - I - 0x00E2B1 07:A2A1: 56        .byte $56

- - - - - - 0x00E2B2 07:A2A2: 00        .byte $00
- D 1 - I - 0x00E2B3 07:A2A3: A0        .byte $A0



_off012_A2A4_10_трибуны_на_месте_1:
- D 1 - I - 0x00E2B4 07:A2A4: 3C        .byte $3C
- D 1 - I - 0x00E2B5 07:A2A5: 3E        .byte $3E
- D 1 - I - 0x00E2B6 07:A2A6: 00        .byte $00
- D 1 - I - 0x00E2B7 07:A2A7: 02        .byte $02
- D 1 - I - 0x00E2B8 07:A2A8: 08        .byte $08
- D 1 - I - 0x00E2B9 07:A2A9: 10        .byte $10

- D 1 - I - 0x00E2BA 07:A2AA: 2C        .byte $2C
- D 1 - I - 0x00E2BB 07:A2AB: 2C        .byte $2C
- D 1 - I - 0x00E2BC 07:A2AC: 2C        .byte $2C
- D 1 - I - 0x00E2BD 07:A2AD: 2C        .byte $2C
- D 1 - I - 0x00E2BE 07:A2AE: 2C        .byte $2C
- D 1 - I - 0x00E2BF 07:A2AF: 2C        .byte $2C
- D 1 - I - 0x00E2C0 07:A2B0: 2D        .byte $2D
- D 1 - I - 0x00E2C1 07:A2B1: 2C        .byte $2C
- D 1 - I - 0x00E2C2 07:A2B2: 2F        .byte $2F
- D 1 - I - 0x00E2C3 07:A2B3: 2E        .byte $2E
- D 1 - I - 0x00E2C4 07:A2B4: 2F        .byte $2F
- D 1 - I - 0x00E2C5 07:A2B5: 2E        .byte $2E
- D 1 - I - 0x00E2C6 07:A2B6: 2F        .byte $2F
- D 1 - I - 0x00E2C7 07:A2B7: 2E        .byte $2E
- D 1 - I - 0x00E2C8 07:A2B8: 2F        .byte $2F
- D 1 - I - 0x00E2C9 07:A2B9: 2E        .byte $2E

- - - - - - 0x00E2CA 07:A2BA: 00        .byte $00
- D 1 - I - 0x00E2CB 07:A2BB: A0        .byte $A0



_off012_A2BC_11_трибуны_на_месте_2:
- D 1 - I - 0x00E2CC 07:A2BC: 3C        .byte $3C
- D 1 - I - 0x00E2CD 07:A2BD: 3E        .byte $3E
- D 1 - I - 0x00E2CE 07:A2BE: 00        .byte $00
- D 1 - I - 0x00E2CF 07:A2BF: 02        .byte $02
- D 1 - I - 0x00E2D0 07:A2C0: 08        .byte $08
- D 1 - I - 0x00E2D1 07:A2C1: 10        .byte $10

- D 1 - I - 0x00E2D2 07:A2C2: 2C        .byte $2C
- D 1 - I - 0x00E2D3 07:A2C3: 2D        .byte $2D
- D 1 - I - 0x00E2D4 07:A2C4: 2C        .byte $2C
- D 1 - I - 0x00E2D5 07:A2C5: 2C        .byte $2C
- D 1 - I - 0x00E2D6 07:A2C6: 2C        .byte $2C
- D 1 - I - 0x00E2D7 07:A2C7: 2C        .byte $2C
- D 1 - I - 0x00E2D8 07:A2C8: 2C        .byte $2C
- D 1 - I - 0x00E2D9 07:A2C9: 2C        .byte $2C
- D 1 - I - 0x00E2DA 07:A2CA: 2E        .byte $2E
- D 1 - I - 0x00E2DB 07:A2CB: 2F        .byte $2F
- D 1 - I - 0x00E2DC 07:A2CC: 2E        .byte $2E
- D 1 - I - 0x00E2DD 07:A2CD: 2F        .byte $2F
- D 1 - I - 0x00E2DE 07:A2CE: 2E        .byte $2E
- D 1 - I - 0x00E2DF 07:A2CF: 2F        .byte $2F
- D 1 - I - 0x00E2E0 07:A2D0: 2E        .byte $2E
- D 1 - I - 0x00E2E1 07:A2D1: 2F        .byte $2F

- - - - - - 0x00E2E2 07:A2D2: 00        .byte $00
- D 1 - I - 0x00E2E3 07:A2D3: A0        .byte $A0



_off012_A2D4_12_пустые_трибуны_на_месте_1:
- D 1 - I - 0x00E2E4 07:A2D4: 3C        .byte $3C
- D 1 - I - 0x00E2E5 07:A2D5: 3E        .byte $3E
- D 1 - I - 0x00E2E6 07:A2D6: 00        .byte $00
- D 1 - I - 0x00E2E7 07:A2D7: 02        .byte $02
- D 1 - I - 0x00E2E8 07:A2D8: 08        .byte $08
- D 1 - I - 0x00E2E9 07:A2D9: 10        .byte $10

- D 1 - I - 0x00E2EA 07:A2DA: 2C        .byte $2C
- D 1 - I - 0x00E2EB 07:A2DB: 2C        .byte $2C
- D 1 - I - 0x00E2EC 07:A2DC: 2C        .byte $2C
- D 1 - I - 0x00E2ED 07:A2DD: 2C        .byte $2C
- D 1 - I - 0x00E2EE 07:A2DE: 2C        .byte $2C
- D 1 - I - 0x00E2EF 07:A2DF: 2C        .byte $2C
- D 1 - I - 0x00E2F0 07:A2E0: 2D        .byte $2D
- D 1 - I - 0x00E2F1 07:A2E1: 2C        .byte $2C
- D 1 - I - 0x00E2F2 07:A2E2: 11        .byte $11
- D 1 - I - 0x00E2F3 07:A2E3: 10        .byte $10
- D 1 - I - 0x00E2F4 07:A2E4: 11        .byte $11
- D 1 - I - 0x00E2F5 07:A2E5: 10        .byte $10
- D 1 - I - 0x00E2F6 07:A2E6: 11        .byte $11
- D 1 - I - 0x00E2F7 07:A2E7: 10        .byte $10
- D 1 - I - 0x00E2F8 07:A2E8: 11        .byte $11
- D 1 - I - 0x00E2F9 07:A2E9: 10        .byte $10

- - - - - - 0x00E2FA 07:A2EA: 00        .byte $00
- D 1 - I - 0x00E2FB 07:A2EB: A0        .byte $A0



_off012_A2EC_13_пустые_трибуны_на_месте_2:
- D 1 - I - 0x00E2FC 07:A2EC: 3C        .byte $3C
- D 1 - I - 0x00E2FD 07:A2ED: 3E        .byte $3E
- D 1 - I - 0x00E2FE 07:A2EE: 00        .byte $00
- D 1 - I - 0x00E2FF 07:A2EF: 02        .byte $02
- D 1 - I - 0x00E300 07:A2F0: 08        .byte $08
- D 1 - I - 0x00E301 07:A2F1: 10        .byte $10

- D 1 - I - 0x00E302 07:A2F2: 2C        .byte $2C
- D 1 - I - 0x00E303 07:A2F3: 2D        .byte $2D
- D 1 - I - 0x00E304 07:A2F4: 2C        .byte $2C
- D 1 - I - 0x00E305 07:A2F5: 2C        .byte $2C
- D 1 - I - 0x00E306 07:A2F6: 2C        .byte $2C
- D 1 - I - 0x00E307 07:A2F7: 2C        .byte $2C
- D 1 - I - 0x00E308 07:A2F8: 2C        .byte $2C
- D 1 - I - 0x00E309 07:A2F9: 2C        .byte $2C
- D 1 - I - 0x00E30A 07:A2FA: 10        .byte $10
- D 1 - I - 0x00E30B 07:A2FB: 11        .byte $11
- D 1 - I - 0x00E30C 07:A2FC: 10        .byte $10
- D 1 - I - 0x00E30D 07:A2FD: 11        .byte $11
- D 1 - I - 0x00E30E 07:A2FE: 10        .byte $10
- D 1 - I - 0x00E30F 07:A2FF: 11        .byte $11
- D 1 - I - 0x00E310 07:A300: 10        .byte $10
- D 1 - I - 0x00E311 07:A301: 11        .byte $11

- - - - - - 0x00E312 07:A302: 00        .byte $00
- D 1 - I - 0x00E313 07:A303: A0        .byte $A0



_off012_A304_14_1990_presented_by_tecmo:
- D 1 - I - 0x00E314 07:A304: 7C        .byte $7C
- D 1 - I - 0x00E315 07:A305: 7E        .byte $7E
- D 1 - I - 0x00E316 07:A306: 81        .byte $81
- D 1 - I - 0x00E317 07:A307: 02        .byte $02
- D 1 - I - 0x00E318 07:A308: 08        .byte $08
- D 1 - I - 0x00E319 07:A309: 10        .byte $10

- D 1 - I - 0x00E31A 07:A30A: 00        .byte $00
- D 1 - I - 0x00E31B 07:A30B: 00        .byte $00
- D 1 - I - 0x00E31C 07:A30C: 00        .byte $00
- D 1 - I - 0x00E31D 07:A30D: 47        .byte $47
- D 1 - I - 0x00E31E 07:A30E: 48        .byte $48
- D 1 - I - 0x00E31F 07:A30F: 00        .byte $00
- D 1 - I - 0x00E320 07:A310: 00        .byte $00
- D 1 - I - 0x00E321 07:A311: 00        .byte $00
- D 1 - I - 0x00E322 07:A312: 00        .byte $00
- D 1 - I - 0x00E323 07:A313: 49        .byte $49
- D 1 - I - 0x00E324 07:A314: 4A        .byte $4A
- D 1 - I - 0x00E325 07:A315: 4B        .byte $4B
- D 1 - I - 0x00E326 07:A316: 4C        .byte $4C
- D 1 - I - 0x00E327 07:A317: 4D        .byte $4D
- D 1 - I - 0x00E328 07:A318: 4E        .byte $4E
- D 1 - I - 0x00E329 07:A319: 00        .byte $00

- - - - - - 0x00E32A 07:A31A: 00        .byte $00
- D 1 - I - 0x00E32B 07:A31B: A0        .byte $A0



_off012_A31C_15_логотип_super_striker:
- D 1 - I - 0x00E32C 07:A31C: 76        .byte $76
- D 1 - I - 0x00E32D 07:A31D: 7E        .byte $7E
- D 1 - I - 0x00E32E 07:A31E: 81        .byte $81
- D 1 - I - 0x00E32F 07:A31F: 03        .byte $03
- D 1 - I - 0x00E330 07:A320: 06        .byte $06
- D 1 - I - 0x00E331 07:A321: 19        .byte $19

- D 1 - I - 0x00E332 07:A322: 04        .byte $04
- D 1 - I - 0x00E333 07:A323: 05        .byte $05
- D 1 - I - 0x00E334 07:A324: 06        .byte $06
- D 1 - I - 0x00E335 07:A325: 07        .byte $07
- D 1 - I - 0x00E336 07:A326: 08        .byte $08
- D 1 - I - 0x00E337 07:A327: 09        .byte $09
- D 1 - I - 0x00E338 07:A328: 0A        .byte $0A
- D 1 - I - 0x00E339 07:A329: 0B        .byte $0B
- D 1 - I - 0x00E33A 07:A32A: 0C        .byte $0C
- D 1 - I - 0x00E33B 07:A32B: 0D        .byte $0D
- D 1 - I - 0x00E33C 07:A32C: 0E        .byte $0E
- D 1 - I - 0x00E33D 07:A32D: 0F        .byte $0F
- D 1 - I - 0x00E33E 07:A32E: 00        .byte $00
- D 1 - I - 0x00E33F 07:A32F: 36        .byte $36
- D 1 - I - 0x00E340 07:A330: 37        .byte $37
- D 1 - I - 0x00E341 07:A331: 38        .byte $38
- D 1 - I - 0x00E342 07:A332: 39        .byte $39
- D 1 - I - 0x00E343 07:A333: 3A        .byte $3A
- D 1 - I - 0x00E344 07:A334: 50        .byte $50

- D 1 - I - 0x00E345 07:A335: E8        .byte $E8
- D 1 - I - 0x00E346 07:A336: 01        .byte $01



_off012_A337_16_красный_фон_обезьянка_проигрыш:
- D 1 - I - 0x00E347 07:A337: 7C        .byte $7C
- D 1 - I - 0x00E348 07:A338: 72        .byte $72
- D 1 - I - 0x00E349 07:A339: 83        .byte $83
- D 1 - I - 0x00E34A 07:A33A: 03        .byte $03
- D 1 - I - 0x00E34B 07:A33B: 10        .byte $10
- D 1 - I - 0x00E34C 07:A33C: 10        .byte $10

- D 1 - I - 0x00E34D 07:A33D: 26        .byte $26
- D 1 - I - 0x00E34E 07:A33E: 26        .byte $26
- D 1 - I - 0x00E34F 07:A33F: 26        .byte $26
- D 1 - I - 0x00E350 07:A340: 26        .byte $26
- D 1 - I - 0x00E351 07:A341: 26        .byte $26
- D 1 - I - 0x00E352 07:A342: 26        .byte $26
- D 1 - I - 0x00E353 07:A343: 26        .byte $26
- D 1 - I - 0x00E354 07:A344: 26        .byte $26
- D 1 - I - 0x00E355 07:A345: 26        .byte $26
- D 1 - I - 0x00E356 07:A346: 26        .byte $26
- D 1 - I - 0x00E357 07:A347: 26        .byte $26
- D 1 - I - 0x00E358 07:A348: 26        .byte $26
- D 1 - I - 0x00E359 07:A349: 26        .byte $26
- D 1 - I - 0x00E35A 07:A34A: 26        .byte $26
- D 1 - I - 0x00E35B 07:A34B: 26        .byte $26
- D 1 - I - 0x00E35C 07:A34C: 26        .byte $26
- D 1 - I - 0x00E35D 07:A34D: 27        .byte $27
- D 1 - I - 0x00E35E 07:A34E: 27        .byte $27
- D 1 - I - 0x00E35F 07:A34F: 27        .byte $27
- D 1 - I - 0x00E360 07:A350: 27        .byte $27
- D 1 - I - 0x00E361 07:A351: 27        .byte $27
- D 1 - I - 0x00E362 07:A352: 27        .byte $27
- D 1 - I - 0x00E363 07:A353: 27        .byte $27
- D 1 - I - 0x00E364 07:A354: 27        .byte $27
- D 1 - I - 0x00E365 07:A355: 27        .byte $27
- D 1 - I - 0x00E366 07:A356: 27        .byte $27
- D 1 - I - 0x00E367 07:A357: 27        .byte $27
- D 1 - I - 0x00E368 07:A358: 27        .byte $27
- D 1 - I - 0x00E369 07:A359: 27        .byte $27
- D 1 - I - 0x00E36A 07:A35A: 27        .byte $27
- D 1 - I - 0x00E36B 07:A35B: 27        .byte $27
- D 1 - I - 0x00E36C 07:A35C: 27        .byte $27
- D 1 - I - 0x00E36D 07:A35D: 00        .byte $00
- D 1 - I - 0x00E36E 07:A35E: 00        .byte $00
- D 1 - I - 0x00E36F 07:A35F: 00        .byte $00
- D 1 - I - 0x00E370 07:A360: 00        .byte $00
- D 1 - I - 0x00E371 07:A361: 00        .byte $00
- D 1 - I - 0x00E372 07:A362: 00        .byte $00
- D 1 - I - 0x00E373 07:A363: 00        .byte $00
- D 1 - I - 0x00E374 07:A364: 00        .byte $00
- D 1 - I - 0x00E375 07:A365: 00        .byte $00
- D 1 - I - 0x00E376 07:A366: 00        .byte $00
- D 1 - I - 0x00E377 07:A367: 00        .byte $00
- D 1 - I - 0x00E378 07:A368: 00        .byte $00
- D 1 - I - 0x00E379 07:A369: 25        .byte $25
- D 1 - I - 0x00E37A 07:A36A: 12        .byte $12
- D 1 - I - 0x00E37B 07:A36B: 13        .byte $13
- D 1 - I - 0x00E37C 07:A36C: 00        .byte $00
- D 1 - I - 0x00E37D 07:A36D: 00        .byte $00
- D 1 - I - 0x00E37E 07:A36E: 1B        .byte $1B
- D 1 - I - 0x00E37F 07:A36F: 07        .byte $07
- D 1 - I - 0x00E380 07:A370: 28        .byte $28

- D 1 - I - 0x00E381 07:A371: BB        .byte $BB
- D 1 - I - 0x00E382 07:A372: 08        .byte $08



_off012_A373_17_главное_меню_с_логотипом:
- D 1 - I - 0x00E383 07:A373: 7C        .byte $7C
- D 1 - I - 0x00E384 07:A374: 7E        .byte $7E
- D 1 - I - 0x00E385 07:A375: 81        .byte $81
- D 1 - I - 0x00E386 07:A376: 06        .byte $06
- D 1 - I - 0x00E387 07:A377: 08        .byte $08
- D 1 - I - 0x00E388 07:A378: 08        .byte $08

- D 1 - I - 0x00E389 07:A379: 00        .byte $00
- D 1 - I - 0x00E38A 07:A37A: 04        .byte $04
- D 1 - I - 0x00E38B 07:A37B: 05        .byte $05
- D 1 - I - 0x00E38C 07:A37C: 06        .byte $06
- D 1 - I - 0x00E38D 07:A37D: 07        .byte $07
- D 1 - I - 0x00E38E 07:A37E: 08        .byte $08
- D 1 - I - 0x00E38F 07:A37F: 09        .byte $09
- D 1 - I - 0x00E390 07:A380: 00        .byte $00
- D 1 - I - 0x00E391 07:A381: 00        .byte $00
- D 1 - I - 0x00E392 07:A382: 0A        .byte $0A
- D 1 - I - 0x00E393 07:A383: 0B        .byte $0B
- D 1 - I - 0x00E394 07:A384: 0C        .byte $0C
- D 1 - I - 0x00E395 07:A385: 0D        .byte $0D
- D 1 - I - 0x00E396 07:A386: 0E        .byte $0E
- D 1 - I - 0x00E397 07:A387: 0F        .byte $0F
- D 1 - I - 0x00E398 07:A388: 00        .byte $00
- D 1 - I - 0x00E399 07:A389: 00        .byte $00
- D 1 - I - 0x00E39A 07:A38A: 00        .byte $00
- D 1 - I - 0x00E39B 07:A38B: 10        .byte $10
- D 1 - I - 0x00E39C 07:A38C: 11        .byte $11
- D 1 - I - 0x00E39D 07:A38D: 12        .byte $12
- D 1 - I - 0x00E39E 07:A38E: 13        .byte $13
- D 1 - I - 0x00E39F 07:A38F: 00        .byte $00
- D 1 - I - 0x00E3A0 07:A390: 00        .byte $00
- D 1 - I - 0x00E3A1 07:A391: 00        .byte $00
- D 1 - I - 0x00E3A2 07:A392: 00        .byte $00
- D 1 - I - 0x00E3A3 07:A393: 00        .byte $00
- D 1 - I - 0x00E3A4 07:A394: 14        .byte $14
- D 1 - I - 0x00E3A5 07:A395: 15        .byte $15
- D 1 - I - 0x00E3A6 07:A396: 00        .byte $00
- D 1 - I - 0x00E3A7 07:A397: 00        .byte $00
- D 1 - I - 0x00E3A8 07:A398: 00        .byte $00
- D 1 - I - 0x00E3A9 07:A399: 16        .byte $16
- D 1 - I - 0x00E3AA 07:A39A: 17        .byte $17
- D 1 - I - 0x00E3AB 07:A39B: 18        .byte $18
- D 1 - I - 0x00E3AC 07:A39C: 19        .byte $19
- D 1 - I - 0x00E3AD 07:A39D: 1A        .byte $1A
- D 1 - I - 0x00E3AE 07:A39E: 1B        .byte $1B
- D 1 - I - 0x00E3AF 07:A39F: 1C        .byte $1C
- D 1 - I - 0x00E3B0 07:A3A0: 1D        .byte $1D
- D 1 - I - 0x00E3B1 07:A3A1: 00        .byte $00
- D 1 - I - 0x00E3B2 07:A3A2: 00        .byte $00
- D 1 - I - 0x00E3B3 07:A3A3: 1E        .byte $1E
- D 1 - I - 0x00E3B4 07:A3A4: 1F        .byte $1F
- D 1 - I - 0x00E3B5 07:A3A5: 20        .byte $20
- D 1 - I - 0x00E3B6 07:A3A6: 21        .byte $21
- D 1 - I - 0x00E3B7 07:A3A7: 00        .byte $00
- D 1 - I - 0x00E3B8 07:A3A8: 00        .byte $00

- - - - - - 0x00E3B9 07:A3A9: 00        .byte $00
- D 1 - I - 0x00E3BA 07:A3AA: A0        .byte $A0



_off012_A3AB_18_музыкальное_меню:
- D 1 - I - 0x00E3BB 07:A3AB: 7C        .byte $7C
- D 1 - I - 0x00E3BC 07:A3AC: 7E        .byte $7E
- D 1 - I - 0x00E3BD 07:A3AD: AC        .byte $AC
- D 1 - I - 0x00E3BE 07:A3AE: 06        .byte $06
- D 1 - I - 0x00E3BF 07:A3AF: 08        .byte $08
- D 1 - I - 0x00E3C0 07:A3B0: 00        .byte $00

- D 1 - I - 0x00E3C1 07:A3B1: 00        .byte $00
- D 1 - I - 0x00E3C2 07:A3B2: 79        .byte $79
- D 1 - I - 0x00E3C3 07:A3B3: 7A        .byte $7A
- D 1 - I - 0x00E3C4 07:A3B4: 7B        .byte $7B
- D 1 - I - 0x00E3C5 07:A3B5: 7C        .byte $7C
- D 1 - I - 0x00E3C6 07:A3B6: 7D        .byte $7D
- D 1 - I - 0x00E3C7 07:A3B7: 35        .byte $35
- D 1 - I - 0x00E3C8 07:A3B8: 00        .byte $00
- D 1 - I - 0x00E3C9 07:A3B9: 00        .byte $00
- D 1 - I - 0x00E3CA 07:A3BA: 04        .byte $04
- D 1 - I - 0x00E3CB 07:A3BB: 05        .byte $05
- D 1 - I - 0x00E3CC 07:A3BC: 06        .byte $06
- D 1 - I - 0x00E3CD 07:A3BD: 07        .byte $07
- D 1 - I - 0x00E3CE 07:A3BE: 08        .byte $08
- D 1 - I - 0x00E3CF 07:A3BF: 09        .byte $09
- D 1 - I - 0x00E3D0 07:A3C0: 00        .byte $00
- D 1 - I - 0x00E3D1 07:A3C1: 00        .byte $00
- D 1 - I - 0x00E3D2 07:A3C2: 0A        .byte $0A
- D 1 - I - 0x00E3D3 07:A3C3: 0B        .byte $0B
- D 1 - I - 0x00E3D4 07:A3C4: 0C        .byte $0C
- D 1 - I - 0x00E3D5 07:A3C5: 0D        .byte $0D
- D 1 - I - 0x00E3D6 07:A3C6: 0E        .byte $0E
- D 1 - I - 0x00E3D7 07:A3C7: 0F        .byte $0F
- D 1 - I - 0x00E3D8 07:A3C8: 00        .byte $00
- D 1 - I - 0x00E3D9 07:A3C9: 00        .byte $00
- D 1 - I - 0x00E3DA 07:A3CA: 00        .byte $00
- D 1 - I - 0x00E3DB 07:A3CB: 00        .byte $00
- D 1 - I - 0x00E3DC 07:A3CC: 25        .byte $25
- D 1 - I - 0x00E3DD 07:A3CD: 12        .byte $12
- D 1 - I - 0x00E3DE 07:A3CE: 13        .byte $13
- D 1 - I - 0x00E3DF 07:A3CF: 00        .byte $00
- D 1 - I - 0x00E3E0 07:A3D0: 00        .byte $00
- D 1 - I - 0x00E3E1 07:A3D1: 00        .byte $00
- D 1 - I - 0x00E3E2 07:A3D2: 00        .byte $00
- D 1 - I - 0x00E3E3 07:A3D3: 00        .byte $00
- D 1 - I - 0x00E3E4 07:A3D4: 6F        .byte $6F
- D 1 - I - 0x00E3E5 07:A3D5: 70        .byte $70
- D 1 - I - 0x00E3E6 07:A3D6: 00        .byte $00
- D 1 - I - 0x00E3E7 07:A3D7: 00        .byte $00
- D 1 - I - 0x00E3E8 07:A3D8: 00        .byte $00
- D 1 - I - 0x00E3E9 07:A3D9: 00        .byte $00
- D 1 - I - 0x00E3EA 07:A3DA: 00        .byte $00
- D 1 - I - 0x00E3EB 07:A3DB: 00        .byte $00
- D 1 - I - 0x00E3EC 07:A3DC: 22        .byte $22
- D 1 - I - 0x00E3ED 07:A3DD: 23        .byte $23
- D 1 - I - 0x00E3EE 07:A3DE: 24        .byte $24
- D 1 - I - 0x00E3EF 07:A3DF: 00        .byte $00
- D 1 - I - 0x00E3F0 07:A3E0: 00        .byte $00

- - - - - - 0x00E3F1 07:A3E1: 00        .byte $00
- D 1 - I - 0x00E3F2 07:A3E2: A0        .byte $A0



_off012_A3E3_19_трибуны_быстрое_движение_влево:
- D 1 - I - 0x00E3F3 07:A3E3: 3C        .byte $3C
- D 1 - I - 0x00E3F4 07:A3E4: 3E        .byte $3E
- D 1 - I - 0x00E3F5 07:A3E5: 00        .byte $00
- D 1 - I - 0x00E3F6 07:A3E6: 02        .byte $02
- D 1 - I - 0x00E3F7 07:A3E7: 10        .byte $10
- D 1 - I - 0x00E3F8 07:A3E8: 17        .byte $17

- D 1 - I - 0x00E3F9 07:A3E9: 08        .byte $08
- D 1 - I - 0x00E3FA 07:A3EA: 09        .byte $09
- D 1 - I - 0x00E3FB 07:A3EB: 0A        .byte $0A
- D 1 - I - 0x00E3FC 07:A3EC: 0B        .byte $0B
- D 1 - I - 0x00E3FD 07:A3ED: 2C        .byte $2C
- D 1 - I - 0x00E3FE 07:A3EE: 2C        .byte $2C
- D 1 - I - 0x00E3FF 07:A3EF: 2C        .byte $2C
- D 1 - I - 0x00E400 07:A3F0: 2C        .byte $2C
- D 1 - I - 0x00E401 07:A3F1: 2C        .byte $2C
- D 1 - I - 0x00E402 07:A3F2: 2D        .byte $2D
- D 1 - I - 0x00E403 07:A3F3: 2C        .byte $2C
- D 1 - I - 0x00E404 07:A3F4: 2C        .byte $2C
- D 1 - I - 0x00E405 07:A3F5: 2C        .byte $2C
- D 1 - I - 0x00E406 07:A3F6: 2C        .byte $2C
- D 1 - I - 0x00E407 07:A3F7: 2C        .byte $2C
- D 1 - I - 0x00E408 07:A3F8: 2C        .byte $2C
- D 1 - I - 0x00E409 07:A3F9: 04        .byte $04
- D 1 - I - 0x00E40A 07:A3FA: 05        .byte $05
- D 1 - I - 0x00E40B 07:A3FB: 06        .byte $06
- D 1 - I - 0x00E40C 07:A3FC: 07        .byte $07
- D 1 - I - 0x00E40D 07:A3FD: 2E        .byte $2E
- D 1 - I - 0x00E40E 07:A3FE: 2F        .byte $2F
- D 1 - I - 0x00E40F 07:A3FF: 2E        .byte $2E
- D 1 - I - 0x00E410 07:A400: 2F        .byte $2F
- D 1 - I - 0x00E411 07:A401: 2E        .byte $2E
- D 1 - I - 0x00E412 07:A402: 2F        .byte $2F
- D 1 - I - 0x00E413 07:A403: 2E        .byte $2E
- D 1 - I - 0x00E414 07:A404: 2F        .byte $2F
- D 1 - I - 0x00E415 07:A405: 2E        .byte $2E
- D 1 - I - 0x00E416 07:A406: 2F        .byte $2F
- D 1 - I - 0x00E417 07:A407: 2E        .byte $2E
- D 1 - I - 0x00E418 07:A408: 2F        .byte $2F
- D 1 - I - 0x00E419 07:A409: 00        .byte $00

- D 1 - I - 0x00E41A 07:A40A: 24        .byte $24
- D 1 - I - 0x00E41B 07:A40B: 08        .byte $08



_off012_A40C_1A_трибуны_ворота_табло_пауза_медленное_движение_вправо:
- D 1 - I - 0x00E41C 07:A40C: 3C        .byte $3C
- D 1 - I - 0x00E41D 07:A40D: 3E        .byte $3E
- D 1 - I - 0x00E41E 07:A40E: 00        .byte $00
- D 1 - I - 0x00E41F 07:A40F: 02        .byte $02
- D 1 - I - 0x00E420 07:A410: 10        .byte $10
- D 1 - I - 0x00E421 07:A411: 10        .byte $10

- D 1 - I - 0x00E422 07:A412: 2C        .byte $2C
- D 1 - I - 0x00E423 07:A413: 2C        .byte $2C
- D 1 - I - 0x00E424 07:A414: 08        .byte $08
- D 1 - I - 0x00E425 07:A415: 09        .byte $09
- D 1 - I - 0x00E426 07:A416: 0A        .byte $0A
- D 1 - I - 0x00E427 07:A417: 0B        .byte $0B
- D 1 - I - 0x00E428 07:A418: 2C        .byte $2C
- D 1 - I - 0x00E429 07:A419: 2C        .byte $2C
- D 1 - I - 0x00E42A 07:A41A: 2C        .byte $2C
- D 1 - I - 0x00E42B 07:A41B: 2D        .byte $2D
- D 1 - I - 0x00E42C 07:A41C: 2C        .byte $2C
- D 1 - I - 0x00E42D 07:A41D: 2C        .byte $2C
- D 1 - I - 0x00E42E 07:A41E: 2C        .byte $2C
- D 1 - I - 0x00E42F 07:A41F: 2C        .byte $2C
- D 1 - I - 0x00E430 07:A420: 2C        .byte $2C
- D 1 - I - 0x00E431 07:A421: 2C        .byte $2C
- D 1 - I - 0x00E432 07:A422: 2E        .byte $2E
- D 1 - I - 0x00E433 07:A423: 2F        .byte $2F
- D 1 - I - 0x00E434 07:A424: 04        .byte $04
- D 1 - I - 0x00E435 07:A425: 05        .byte $05
- D 1 - I - 0x00E436 07:A426: 06        .byte $06
- D 1 - I - 0x00E437 07:A427: 07        .byte $07
- D 1 - I - 0x00E438 07:A428: 2E        .byte $2E
- D 1 - I - 0x00E439 07:A429: 2F        .byte $2F
- D 1 - I - 0x00E43A 07:A42A: 2E        .byte $2E
- D 1 - I - 0x00E43B 07:A42B: 2F        .byte $2F
- D 1 - I - 0x00E43C 07:A42C: 2E        .byte $2E
- D 1 - I - 0x00E43D 07:A42D: 2F        .byte $2F
- D 1 - I - 0x00E43E 07:A42E: 2E        .byte $2E
- D 1 - I - 0x00E43F 07:A42F: 2F        .byte $2F
- D 1 - I - 0x00E440 07:A430: 2E        .byte $2E
- D 1 - I - 0x00E441 07:A431: 2F        .byte $2F
- D 1 - I - 0x00E442 07:A432: 1E        .byte $1E

- D 1 - I - 0x00E443 07:A433: A2        .byte $A2
- D 1 - I - 0x00E444 07:A434: 08        .byte $08



_off012_A435_1B_пустые_трибуны_ворота_табло:
- D 1 - I - 0x00E445 07:A435: 3C        .byte $3C
- D 1 - I - 0x00E446 07:A436: 3E        .byte $3E
- D 1 - I - 0x00E447 07:A437: 00        .byte $00
- D 1 - I - 0x00E448 07:A438: 03        .byte $03
- D 1 - I - 0x00E449 07:A439: 08        .byte $08
- D 1 - I - 0x00E44A 07:A43A: 08        .byte $08

- D 1 - I - 0x00E44B 07:A43B: 42        .byte $42
- D 1 - I - 0x00E44C 07:A43C: 42        .byte $42
- D 1 - I - 0x00E44D 07:A43D: 42        .byte $42
- D 1 - I - 0x00E44E 07:A43E: 42        .byte $42
- D 1 - I - 0x00E44F 07:A43F: 42        .byte $42
- D 1 - I - 0x00E450 07:A440: 42        .byte $42
- D 1 - I - 0x00E451 07:A441: 42        .byte $42
- D 1 - I - 0x00E452 07:A442: 42        .byte $42
- D 1 - I - 0x00E453 07:A443: 22        .byte $22
- D 1 - I - 0x00E454 07:A444: 23        .byte $23
- D 1 - I - 0x00E455 07:A445: 24        .byte $24
- D 1 - I - 0x00E456 07:A446: 25        .byte $25
- D 1 - I - 0x00E457 07:A447: 26        .byte $26
- D 1 - I - 0x00E458 07:A448: 27        .byte $27
- D 1 - I - 0x00E459 07:A449: 22        .byte $22
- D 1 - I - 0x00E45A 07:A44A: 23        .byte $23
- D 1 - I - 0x00E45B 07:A44B: 1C        .byte $1C
- D 1 - I - 0x00E45C 07:A44C: 1F        .byte $1F
- D 1 - I - 0x00E45D 07:A44D: 1C        .byte $1C
- D 1 - I - 0x00E45E 07:A44E: 1D        .byte $1D
- D 1 - I - 0x00E45F 07:A44F: 1E        .byte $1E
- D 1 - I - 0x00E460 07:A450: 1F        .byte $1F
- D 1 - I - 0x00E461 07:A451: 1C        .byte $1C
- D 1 - I - 0x00E462 07:A452: 1F        .byte $1F

- - - - - - 0x00E463 07:A453: 00        .byte $00
- D 1 - I - 0x00E464 07:A454: A0        .byte $A0



_off012_A455_1C_ворота_сидит_меон_движение_вверх:
- D 1 - I - 0x00E465 07:A455: 5C        .byte $5C
- D 1 - I - 0x00E466 07:A456: 5E        .byte $5E
- D 1 - I - 0x00E467 07:A457: 17        .byte $17
- D 1 - I - 0x00E468 07:A458: 08        .byte $08
- D 1 - I - 0x00E469 07:A459: 08        .byte $08
- D 1 - I - 0x00E46A 07:A45A: 5F        .byte $5F

- D 1 - I - 0x00E46B 07:A45B: 01        .byte $01
- D 1 - I - 0x00E46C 07:A45C: 01        .byte $01
- D 1 - I - 0x00E46D 07:A45D: 01        .byte $01
- D 1 - I - 0x00E46E 07:A45E: 01        .byte $01
- D 1 - I - 0x00E46F 07:A45F: 01        .byte $01
- D 1 - I - 0x00E470 07:A460: 01        .byte $01
- D 1 - I - 0x00E471 07:A461: 01        .byte $01
- D 1 - I - 0x00E472 07:A462: 01        .byte $01
- D 1 - I - 0x00E473 07:A463: 01        .byte $01
- D 1 - I - 0x00E474 07:A464: 3D        .byte $3D
- D 1 - I - 0x00E475 07:A465: 01        .byte $01
- D 1 - I - 0x00E476 07:A466: 01        .byte $01
- D 1 - I - 0x00E477 07:A467: 01        .byte $01
- D 1 - I - 0x00E478 07:A468: 01        .byte $01
- D 1 - I - 0x00E479 07:A469: 3C        .byte $3C
- D 1 - I - 0x00E47A 07:A46A: 01        .byte $01
- D 1 - I - 0x00E47B 07:A46B: 01        .byte $01
- D 1 - I - 0x00E47C 07:A46C: 01        .byte $01
- D 1 - I - 0x00E47D 07:A46D: 01        .byte $01
- D 1 - I - 0x00E47E 07:A46E: 01        .byte $01
- D 1 - I - 0x00E47F 07:A46F: C0        .byte $C0
- D 1 - I - 0x00E480 07:A470: C1        .byte $C1
- D 1 - I - 0x00E481 07:A471: C2        .byte $C2
- D 1 - I - 0x00E482 07:A472: C2        .byte $C2
- D 1 - I - 0x00E483 07:A473: 01        .byte $01
- D 1 - I - 0x00E484 07:A474: 01        .byte $01
- D 1 - I - 0x00E485 07:A475: 83        .byte $83
- D 1 - I - 0x00E486 07:A476: 84        .byte $84
- D 1 - I - 0x00E487 07:A477: C3        .byte $C3
- D 1 - I - 0x00E488 07:A478: C4        .byte $C4
- D 1 - I - 0x00E489 07:A479: C5        .byte $C5
- D 1 - I - 0x00E48A 07:A47A: C5        .byte $C5
- D 1 - I - 0x00E48B 07:A47B: 01        .byte $01
- D 1 - I - 0x00E48C 07:A47C: 01        .byte $01
- D 1 - I - 0x00E48D 07:A47D: 01        .byte $01
- D 1 - I - 0x00E48E 07:A47E: 01        .byte $01
- D 1 - I - 0x00E48F 07:A47F: C3        .byte $C3
- D 1 - I - 0x00E490 07:A480: C6        .byte $C6
- D 1 - I - 0x00E491 07:A481: C7        .byte $C7
- D 1 - I - 0x00E492 07:A482: C7        .byte $C7
- D 1 - I - 0x00E493 07:A483: 01        .byte $01
- D 1 - I - 0x00E494 07:A484: 01        .byte $01
- D 1 - I - 0x00E495 07:A485: 01        .byte $01
- D 1 - I - 0x00E496 07:A486: 01        .byte $01
- D 1 - I - 0x00E497 07:A487: C3        .byte $C3
- D 1 - I - 0x00E498 07:A488: C8        .byte $C8
- D 1 - I - 0x00E499 07:A489: C9        .byte $C9
- D 1 - I - 0x00E49A 07:A48A: C7        .byte $C7
- D 1 - I - 0x00E49B 07:A48B: 50        .byte $50
- D 1 - I - 0x00E49C 07:A48C: BF        .byte $BF
- D 1 - I - 0x00E49D 07:A48D: 01        .byte $01
- D 1 - I - 0x00E49E 07:A48E: 01        .byte $01
- D 1 - I - 0x00E49F 07:A48F: C3        .byte $C3
- D 1 - I - 0x00E4A0 07:A490: CA        .byte $CA
- D 1 - I - 0x00E4A1 07:A491: CB        .byte $CB
- D 1 - I - 0x00E4A2 07:A492: C7        .byte $C7
- D 1 - I - 0x00E4A3 07:A493: 52        .byte $52
- D 1 - I - 0x00E4A4 07:A494: 53        .byte $53
- D 1 - I - 0x00E4A5 07:A495: 39        .byte $39
- D 1 - I - 0x00E4A6 07:A496: 3B        .byte $3B
- D 1 - I - 0x00E4A7 07:A497: C3        .byte $C3
- D 1 - I - 0x00E4A8 07:A498: CA        .byte $CA
- D 1 - I - 0x00E4A9 07:A499: CC        .byte $CC
- D 1 - I - 0x00E4AA 07:A49A: C7        .byte $C7
- - - - - - 0x00E4AB 07:A49B: 00        .byte $00

- D 1 - I - 0x00E4AC 07:A49C: 66        .byte $66
- D 1 - I - 0x00E4AD 07:A49D: 03        .byte $03



_off012_A49E_1D_белый_фон_для_флага_бразилии:
- D 1 - I - 0x00E4AE 07:A49E: 3C        .byte $3C
- D 1 - I - 0x00E4AF 07:A49F: 3E        .byte $3E
- D 1 - I - 0x00E4B0 07:A4A0: 11        .byte $11
- D 1 - I - 0x00E4B1 07:A4A1: 02        .byte $02
- D 1 - I - 0x00E4B2 07:A4A2: 08        .byte $08
- D 1 - I - 0x00E4B3 07:A4A3: 10        .byte $10

- D 1 - I - 0x00E4B4 07:A4A4: 01        .byte $01
- D 1 - I - 0x00E4B5 07:A4A5: 01        .byte $01
- D 1 - I - 0x00E4B6 07:A4A6: 01        .byte $01
- D 1 - I - 0x00E4B7 07:A4A7: 01        .byte $01
- D 1 - I - 0x00E4B8 07:A4A8: 01        .byte $01
- D 1 - I - 0x00E4B9 07:A4A9: 01        .byte $01
- D 1 - I - 0x00E4BA 07:A4AA: 01        .byte $01
- D 1 - I - 0x00E4BB 07:A4AB: 01        .byte $01
- D 1 - I - 0x00E4BC 07:A4AC: 01        .byte $01
- D 1 - I - 0x00E4BD 07:A4AD: 01        .byte $01
- D 1 - I - 0x00E4BE 07:A4AE: 01        .byte $01
- D 1 - I - 0x00E4BF 07:A4AF: 01        .byte $01
- D 1 - I - 0x00E4C0 07:A4B0: 01        .byte $01
- D 1 - I - 0x00E4C1 07:A4B1: 01        .byte $01
- D 1 - I - 0x00E4C2 07:A4B2: 01        .byte $01
- D 1 - I - 0x00E4C3 07:A4B3: 01        .byte $01

- - - - - - 0x00E4C4 07:A4B4: 00        .byte $00
- D 1 - I - 0x00E4C5 07:A4B5: A0        .byte $A0



_off012_A4B6_1E_ворота_стоит_меон_ждет_удара:
- D 1 - I - 0x00E4C6 07:A4B6: 3C        .byte $3C
- D 1 - I - 0x00E4C7 07:A4B7: 3E        .byte $3E
- D 1 - I - 0x00E4C8 07:A4B8: 00        .byte $00
- D 1 - I - 0x00E4C9 07:A4B9: 03        .byte $03
- D 1 - I - 0x00E4CA 07:A4BA: 08        .byte $08
- D 1 - I - 0x00E4CB 07:A4BB: 08        .byte $08

- D 1 - I - 0x00E4CC 07:A4BC: 42        .byte $42
- D 1 - I - 0x00E4CD 07:A4BD: 42        .byte $42
- D 1 - I - 0x00E4CE 07:A4BE: 42        .byte $42
- D 1 - I - 0x00E4CF 07:A4BF: 42        .byte $42
- D 1 - I - 0x00E4D0 07:A4C0: 42        .byte $42
- D 1 - I - 0x00E4D1 07:A4C1: 42        .byte $42
- D 1 - I - 0x00E4D2 07:A4C2: 42        .byte $42
- D 1 - I - 0x00E4D3 07:A4C3: 42        .byte $42
- D 1 - I - 0x00E4D4 07:A4C4: 22        .byte $22
- D 1 - I - 0x00E4D5 07:A4C5: 23        .byte $23
- D 1 - I - 0x00E4D6 07:A4C6: 28        .byte $28
- D 1 - I - 0x00E4D7 07:A4C7: 29        .byte $29
- D 1 - I - 0x00E4D8 07:A4C8: 2A        .byte $2A
- D 1 - I - 0x00E4D9 07:A4C9: 2B        .byte $2B
- D 1 - I - 0x00E4DA 07:A4CA: 22        .byte $22
- D 1 - I - 0x00E4DB 07:A4CB: 23        .byte $23
- D 1 - I - 0x00E4DC 07:A4CC: 1C        .byte $1C
- D 1 - I - 0x00E4DD 07:A4CD: 1F        .byte $1F
- D 1 - I - 0x00E4DE 07:A4CE: 5D        .byte $5D
- D 1 - I - 0x00E4DF 07:A4CF: 5E        .byte $5E
- D 1 - I - 0x00E4E0 07:A4D0: 5E        .byte $5E
- D 1 - I - 0x00E4E1 07:A4D1: 5F        .byte $5F
- D 1 - I - 0x00E4E2 07:A4D2: 1C        .byte $1C
- D 1 - I - 0x00E4E3 07:A4D3: 1F        .byte $1F

- - - - - - 0x00E4E4 07:A4D4: 00        .byte $00
- D 1 - I - 0x00E4E5 07:A4D5: A0        .byte $A0



_off012_A4D6_1F_пустые_трибуны_небо:
- D 1 - I - 0x00E4E6 07:A4D6: 3C        .byte $3C
- D 1 - I - 0x00E4E7 07:A4D7: 3E        .byte $3E
- D 1 - I - 0x00E4E8 07:A4D8: 00        .byte $00
- D 1 - I - 0x00E4E9 07:A4D9: 04        .byte $04
- D 1 - I - 0x00E4EA 07:A4DA: 08        .byte $08
- D 1 - I - 0x00E4EB 07:A4DB: 00        .byte $00

- D 1 - I - 0x00E4EC 07:A4DC: 42        .byte $42
- D 1 - I - 0x00E4ED 07:A4DD: 42        .byte $42
- D 1 - I - 0x00E4EE 07:A4DE: 42        .byte $42
- D 1 - I - 0x00E4EF 07:A4DF: 42        .byte $42
- D 1 - I - 0x00E4F0 07:A4E0: 42        .byte $42
- D 1 - I - 0x00E4F1 07:A4E1: 42        .byte $42
- D 1 - I - 0x00E4F2 07:A4E2: 42        .byte $42
- D 1 - I - 0x00E4F3 07:A4E3: 42        .byte $42
- D 1 - I - 0x00E4F4 07:A4E4: 3D        .byte $3D
- D 1 - I - 0x00E4F5 07:A4E5: 01        .byte $01
- D 1 - I - 0x00E4F6 07:A4E6: 01        .byte $01
- D 1 - I - 0x00E4F7 07:A4E7: 01        .byte $01
- D 1 - I - 0x00E4F8 07:A4E8: 01        .byte $01
- D 1 - I - 0x00E4F9 07:A4E9: 01        .byte $01
- D 1 - I - 0x00E4FA 07:A4EA: 3C        .byte $3C
- D 1 - I - 0x00E4FB 07:A4EB: 01        .byte $01
- D 1 - I - 0x00E4FC 07:A4EC: 01        .byte $01
- D 1 - I - 0x00E4FD 07:A4ED: 3D        .byte $3D
- D 1 - I - 0x00E4FE 07:A4EE: 01        .byte $01
- D 1 - I - 0x00E4FF 07:A4EF: 01        .byte $01
- D 1 - I - 0x00E500 07:A4F0: 3C        .byte $3C
- D 1 - I - 0x00E501 07:A4F1: 01        .byte $01
- D 1 - I - 0x00E502 07:A4F2: 01        .byte $01
- D 1 - I - 0x00E503 07:A4F3: 01        .byte $01
- D 1 - I - 0x00E504 07:A4F4: 22        .byte $22
- D 1 - I - 0x00E505 07:A4F5: 23        .byte $23
- D 1 - I - 0x00E506 07:A4F6: 22        .byte $22
- D 1 - I - 0x00E507 07:A4F7: 23        .byte $23
- D 1 - I - 0x00E508 07:A4F8: 22        .byte $22
- D 1 - I - 0x00E509 07:A4F9: 23        .byte $23
- D 1 - I - 0x00E50A 07:A4FA: 21        .byte $21
- D 1 - I - 0x00E50B 07:A4FB: 23        .byte $23

- - - - - - 0x00E50C 07:A4FC: 00        .byte $00
- D 1 - I - 0x00E50D 07:A4FD: A0        .byte $A0



_off012_A4FE_20_небо:
- D 1 - I - 0x00E50E 07:A4FE: 3C        .byte $3C
- D 1 - I - 0x00E50F 07:A4FF: 3E        .byte $3E
- D 1 - I - 0x00E510 07:A500: 00        .byte $00
- D 1 - I - 0x00E511 07:A501: 04        .byte $04
- D 1 - I - 0x00E512 07:A502: 08        .byte $08
- D 1 - I - 0x00E513 07:A503: 00        .byte $00

- D 1 - I - 0x00E514 07:A504: 42        .byte $42
- D 1 - I - 0x00E515 07:A505: 42        .byte $42
- D 1 - I - 0x00E516 07:A506: 42        .byte $42
- D 1 - I - 0x00E517 07:A507: 42        .byte $42
- D 1 - I - 0x00E518 07:A508: 42        .byte $42
- D 1 - I - 0x00E519 07:A509: 42        .byte $42
- D 1 - I - 0x00E51A 07:A50A: 42        .byte $42
- D 1 - I - 0x00E51B 07:A50B: 42        .byte $42
- D 1 - I - 0x00E51C 07:A50C: 01        .byte $01
- D 1 - I - 0x00E51D 07:A50D: 01        .byte $01
- D 1 - I - 0x00E51E 07:A50E: 83        .byte $83
- D 1 - I - 0x00E51F 07:A50F: 84        .byte $84
- D 1 - I - 0x00E520 07:A510: 01        .byte $01
- D 1 - I - 0x00E521 07:A511: 01        .byte $01
- D 1 - I - 0x00E522 07:A512: 01        .byte $01
- D 1 - I - 0x00E523 07:A513: 01        .byte $01
- D 1 - I - 0x00E524 07:A514: 3D        .byte $3D
- D 1 - I - 0x00E525 07:A515: 01        .byte $01
- D 1 - I - 0x00E526 07:A516: 01        .byte $01
- D 1 - I - 0x00E527 07:A517: 01        .byte $01
- D 1 - I - 0x00E528 07:A518: 01        .byte $01
- D 1 - I - 0x00E529 07:A519: 01        .byte $01
- D 1 - I - 0x00E52A 07:A51A: 3C        .byte $3C
- D 1 - I - 0x00E52B 07:A51B: 01        .byte $01
- D 1 - I - 0x00E52C 07:A51C: 84        .byte $84
- D 1 - I - 0x00E52D 07:A51D: 01        .byte $01
- D 1 - I - 0x00E52E 07:A51E: 01        .byte $01
- D 1 - I - 0x00E52F 07:A51F: 38        .byte $38
- D 1 - I - 0x00E530 07:A520: 01        .byte $01
- D 1 - I - 0x00E531 07:A521: 01        .byte $01
- D 1 - I - 0x00E532 07:A522: 01        .byte $01
- D 1 - I - 0x00E533 07:A523: 83        .byte $83

- - - - - - 0x00E534 07:A524: 00        .byte $00
- D 1 - I - 0x00E535 07:A525: A0        .byte $A0



_off012_A526_21_зеленый_фон_для_ударов_ногой_по_мячу:
- D 1 - I - 0x00E536 07:A526: 60        .byte $60
- D 1 - I - 0x00E537 07:A527: 62        .byte $62
- D 1 - I - 0x00E538 07:A528: 07        .byte $07
- D 1 - I - 0x00E539 07:A529: 02        .byte $02
- D 1 - I - 0x00E53A 07:A52A: 04        .byte $04
- D 1 - I - 0x00E53B 07:A52B: 12        .byte $12

- D 1 - I - 0x00E53C 07:A52C: 37        .byte $37
- D 1 - I - 0x00E53D 07:A52D: 37        .byte $37
- D 1 - I - 0x00E53E 07:A52E: 37        .byte $37
- D 1 - I - 0x00E53F 07:A52F: 37        .byte $37
- D 1 - I - 0x00E540 07:A530: 34        .byte $34
- D 1 - I - 0x00E541 07:A531: 34        .byte $34
- D 1 - I - 0x00E542 07:A532: 34        .byte $34
- D 1 - I - 0x00E543 07:A533: 34        .byte $34

- - - - - - 0x00E544 07:A534: 00        .byte $00
- D 1 - I - 0x00E545 07:A535: A0        .byte $A0



_off012_A536_22_цубаса_крупным_планом_движение_вправо:
- D 1 - I - 0x00E546 07:A536: 60        .byte $60
- D 1 - I - 0x00E547 07:A537: 62        .byte $62
- D 1 - I - 0x00E548 07:A538: 96        .byte $96
- D 1 - I - 0x00E549 07:A539: 02        .byte $02
- D 1 - I - 0x00E54A 07:A53A: 10        .byte $10
- D 1 - I - 0x00E54B 07:A53B: 17        .byte $17

- D 1 - I - 0x00E54C 07:A53C: 01        .byte $01
- D 1 - I - 0x00E54D 07:A53D: 01        .byte $01
- D 1 - I - 0x00E54E 07:A53E: 3B        .byte $3B
- D 1 - I - 0x00E54F 07:A53F: 3C        .byte $3C
- D 1 - I - 0x00E550 07:A540: 3D        .byte $3D
- D 1 - I - 0x00E551 07:A541: 3E        .byte $3E
- D 1 - I - 0x00E552 07:A542: 3F        .byte $3F
- D 1 - I - 0x00E553 07:A543: 40        .byte $40
- D 1 - I - 0x00E554 07:A544: 01        .byte $01
- D 1 - I - 0x00E555 07:A545: 01        .byte $01
- D 1 - I - 0x00E556 07:A546: 01        .byte $01
- D 1 - I - 0x00E557 07:A547: 01        .byte $01
- D 1 - I - 0x00E558 07:A548: 01        .byte $01
- D 1 - I - 0x00E559 07:A549: 01        .byte $01
- D 1 - I - 0x00E55A 07:A54A: 01        .byte $01
- D 1 - I - 0x00E55B 07:A54B: 01        .byte $01
- D 1 - I - 0x00E55C 07:A54C: 01        .byte $01
- D 1 - I - 0x00E55D 07:A54D: 01        .byte $01
- D 1 - I - 0x00E55E 07:A54E: 41        .byte $41
- D 1 - I - 0x00E55F 07:A54F: 42        .byte $42
- D 1 - I - 0x00E560 07:A550: 43        .byte $43
- D 1 - I - 0x00E561 07:A551: 44        .byte $44
- D 1 - I - 0x00E562 07:A552: 45        .byte $45
- D 1 - I - 0x00E563 07:A553: 46        .byte $46
- D 1 - I - 0x00E564 07:A554: 01        .byte $01
- D 1 - I - 0x00E565 07:A555: 01        .byte $01
- D 1 - I - 0x00E566 07:A556: 01        .byte $01
- D 1 - I - 0x00E567 07:A557: 01        .byte $01
- D 1 - I - 0x00E568 07:A558: 01        .byte $01
- D 1 - I - 0x00E569 07:A559: 01        .byte $01
- D 1 - I - 0x00E56A 07:A55A: 01        .byte $01
- D 1 - I - 0x00E56B 07:A55B: 01        .byte $01
- D 1 - I - 0x00E56C 07:A55C: 00        .byte $00

- D 1 - I - 0x00E56D 07:A55D: 22        .byte $22
- D 1 - I - 0x00E56E 07:A55E: 08        .byte $08



_off012_A55F_23_цубаса_крупным_планом:
- D 1 - I - 0x00E56F 07:A55F: 60        .byte $60
- D 1 - I - 0x00E570 07:A560: 62        .byte $62
- D 1 - I - 0x00E571 07:A561: 96        .byte $96
- D 1 - I - 0x00E572 07:A562: 02        .byte $02
- D 1 - I - 0x00E573 07:A563: 08        .byte $08
- D 1 - I - 0x00E574 07:A564: 10        .byte $10

- D 1 - I - 0x00E575 07:A565: 01        .byte $01
- D 1 - I - 0x00E576 07:A566: 3B        .byte $3B
- D 1 - I - 0x00E577 07:A567: 3C        .byte $3C
- D 1 - I - 0x00E578 07:A568: 3D        .byte $3D
- D 1 - I - 0x00E579 07:A569: 3E        .byte $3E
- D 1 - I - 0x00E57A 07:A56A: 3F        .byte $3F
- D 1 - I - 0x00E57B 07:A56B: 40        .byte $40
- D 1 - I - 0x00E57C 07:A56C: 01        .byte $01
- D 1 - I - 0x00E57D 07:A56D: 01        .byte $01
- D 1 - I - 0x00E57E 07:A56E: 41        .byte $41
- D 1 - I - 0x00E57F 07:A56F: 42        .byte $42
- D 1 - I - 0x00E580 07:A570: 43        .byte $43
- D 1 - I - 0x00E581 07:A571: 44        .byte $44
- D 1 - I - 0x00E582 07:A572: 45        .byte $45
- D 1 - I - 0x00E583 07:A573: 46        .byte $46
- D 1 - I - 0x00E584 07:A574: 01        .byte $01

- - - - - - 0x00E585 07:A575: 00        .byte $00
- D 1 - I - 0x00E586 07:A576: A0        .byte $A0



_off012_A577_24_сетка_крупным_планом:
- D 1 - I - 0x00E587 07:A577: 68        .byte $68
- D 1 - I - 0x00E588 07:A578: 6A        .byte $6A
- D 1 - I - 0x00E589 07:A579: 80        .byte $80
- D 1 - I - 0x00E58A 07:A57A: 02        .byte $02
- D 1 - I - 0x00E58B 07:A57B: 08        .byte $08
- D 1 - I - 0x00E58C 07:A57C: 10        .byte $10

- D 1 - I - 0x00E58D 07:A57D: 66        .byte $66
- D 1 - I - 0x00E58E 07:A57E: 66        .byte $66
- D 1 - I - 0x00E58F 07:A57F: 66        .byte $66
- D 1 - I - 0x00E590 07:A580: 66        .byte $66
- D 1 - I - 0x00E591 07:A581: 66        .byte $66
- D 1 - I - 0x00E592 07:A582: 66        .byte $66
- D 1 - I - 0x00E593 07:A583: 66        .byte $66
- D 1 - I - 0x00E594 07:A584: 66        .byte $66
- D 1 - I - 0x00E595 07:A585: 66        .byte $66
- D 1 - I - 0x00E596 07:A586: 66        .byte $66
- D 1 - I - 0x00E597 07:A587: 66        .byte $66
- D 1 - I - 0x00E598 07:A588: 66        .byte $66
- D 1 - I - 0x00E599 07:A589: 66        .byte $66
- D 1 - I - 0x00E59A 07:A58A: 66        .byte $66
- D 1 - I - 0x00E59B 07:A58B: 66        .byte $66
- D 1 - I - 0x00E59C 07:A58C: 66        .byte $66

- - - - - - 0x00E59D 07:A58D: 00        .byte $00
- D 1 - I - 0x00E59E 07:A58E: A0        .byte $A0



_off012_A58F_25_трибуны_лестница_быстрое_движение_вправо:
- D 1 - I - 0x00E59F 07:A58F: 5C        .byte $5C
- D 1 - I - 0x00E5A0 07:A590: 5E        .byte $5E
- D 1 - I - 0x00E5A1 07:A591: 06        .byte $06
- D 1 - I - 0x00E5A2 07:A592: 04        .byte $04
- D 1 - I - 0x00E5A3 07:A593: 08        .byte $08
- D 1 - I - 0x00E5A4 07:A594: 00        .byte $00

- D 1 - I - 0x00E5A5 07:A595: AD        .byte $AD
- D 1 - I - 0x00E5A6 07:A596: AD        .byte $AD
- D 1 - I - 0x00E5A7 07:A597: AD        .byte $AD
- D 1 - I - 0x00E5A8 07:A598: AD        .byte $AD
- D 1 - I - 0x00E5A9 07:A599: AD        .byte $AD
- D 1 - I - 0x00E5AA 07:A59A: AD        .byte $AD
- D 1 - I - 0x00E5AB 07:A59B: AD        .byte $AD
- D 1 - I - 0x00E5AC 07:A59C: AE        .byte $AE
- D 1 - I - 0x00E5AD 07:A59D: A7        .byte $A7
- D 1 - I - 0x00E5AE 07:A59E: A7        .byte $A7
- D 1 - I - 0x00E5AF 07:A59F: A7        .byte $A7
- D 1 - I - 0x00E5B0 07:A5A0: A7        .byte $A7
- D 1 - I - 0x00E5B1 07:A5A1: A7        .byte $A7
- D 1 - I - 0x00E5B2 07:A5A2: A7        .byte $A7
- D 1 - I - 0x00E5B3 07:A5A3: A7        .byte $A7
- D 1 - I - 0x00E5B4 07:A5A4: A8        .byte $A8
- D 1 - I - 0x00E5B5 07:A5A5: FF        .byte $FF
- D 1 - I - 0x00E5B6 07:A5A6: FF        .byte $FF
- D 1 - I - 0x00E5B7 07:A5A7: FF        .byte $FF
- D 1 - I - 0x00E5B8 07:A5A8: FF        .byte $FF
- D 1 - I - 0x00E5B9 07:A5A9: FF        .byte $FF
- D 1 - I - 0x00E5BA 07:A5AA: FF        .byte $FF
- D 1 - I - 0x00E5BB 07:A5AB: FF        .byte $FF
- D 1 - I - 0x00E5BC 07:A5AC: A9        .byte $A9
- D 1 - I - 0x00E5BD 07:A5AD: FF        .byte $FF
- D 1 - I - 0x00E5BE 07:A5AE: FF        .byte $FF
- D 1 - I - 0x00E5BF 07:A5AF: FF        .byte $FF
- D 1 - I - 0x00E5C0 07:A5B0: FF        .byte $FF
- D 1 - I - 0x00E5C1 07:A5B1: FF        .byte $FF
- D 1 - I - 0x00E5C2 07:A5B2: FF        .byte $FF
- D 1 - I - 0x00E5C3 07:A5B3: FF        .byte $FF
- D 1 - I - 0x00E5C4 07:A5B4: A9        .byte $A9
- D 1 - I - 0x00E5C5 07:A5B5: 00        .byte $00

- D 1 - I - 0x00E5C6 07:A5B6: B0        .byte $B0
- D 1 - I - 0x00E5C7 07:A5B7: 08        .byte $08



_off012_A5B8_26_трибуны_ночное_небо_1:
- D 1 - I - 0x00E5C8 07:A5B8: 3C        .byte $3C
- D 1 - I - 0x00E5C9 07:A5B9: 66        .byte $66
- D 1 - I - 0x00E5CA 07:A5BA: 07        .byte $07
- D 1 - I - 0x00E5CB 07:A5BB: 02        .byte $02
- D 1 - I - 0x00E5CC 07:A5BC: 08        .byte $08
- D 1 - I - 0x00E5CD 07:A5BD: 10        .byte $10

- D 1 - I - 0x00E5CE 07:A5BE: 33        .byte $33
- D 1 - I - 0x00E5CF 07:A5BF: 32        .byte $32
- D 1 - I - 0x00E5D0 07:A5C0: 33        .byte $33
- D 1 - I - 0x00E5D1 07:A5C1: 32        .byte $32
- D 1 - I - 0x00E5D2 07:A5C2: 33        .byte $33
- D 1 - I - 0x00E5D3 07:A5C3: 32        .byte $32
- D 1 - I - 0x00E5D4 07:A5C4: 33        .byte $33
- D 1 - I - 0x00E5D5 07:A5C5: 32        .byte $32
- D 1 - I - 0x00E5D6 07:A5C6: 11        .byte $11
- D 1 - I - 0x00E5D7 07:A5C7: 10        .byte $10
- D 1 - I - 0x00E5D8 07:A5C8: 11        .byte $11
- D 1 - I - 0x00E5D9 07:A5C9: 10        .byte $10
- D 1 - I - 0x00E5DA 07:A5CA: 11        .byte $11
- D 1 - I - 0x00E5DB 07:A5CB: 10        .byte $10
- D 1 - I - 0x00E5DC 07:A5CC: 11        .byte $11
- D 1 - I - 0x00E5DD 07:A5CD: 10        .byte $10

- - - - - - 0x00E5DE 07:A5CE: 00        .byte $00
- D 1 - I - 0x00E5DF 07:A5CF: A0        .byte $A0



_off012_A5D0_27_трибуны_ночное_небо_2:
- D 1 - I - 0x00E5E0 07:A5D0: 3C        .byte $3C
- D 1 - I - 0x00E5E1 07:A5D1: 66        .byte $66
- D 1 - I - 0x00E5E2 07:A5D2: 07        .byte $07
- D 1 - I - 0x00E5E3 07:A5D3: 02        .byte $02
- D 1 - I - 0x00E5E4 07:A5D4: 08        .byte $08
- D 1 - I - 0x00E5E5 07:A5D5: 10        .byte $10

- D 1 - I - 0x00E5E6 07:A5D6: 32        .byte $32
- D 1 - I - 0x00E5E7 07:A5D7: 33        .byte $33
- D 1 - I - 0x00E5E8 07:A5D8: 32        .byte $32
- D 1 - I - 0x00E5E9 07:A5D9: 33        .byte $33
- D 1 - I - 0x00E5EA 07:A5DA: 32        .byte $32
- D 1 - I - 0x00E5EB 07:A5DB: 33        .byte $33
- D 1 - I - 0x00E5EC 07:A5DC: 32        .byte $32
- D 1 - I - 0x00E5ED 07:A5DD: 33        .byte $33
- D 1 - I - 0x00E5EE 07:A5DE: 10        .byte $10
- D 1 - I - 0x00E5EF 07:A5DF: 11        .byte $11
- D 1 - I - 0x00E5F0 07:A5E0: 10        .byte $10
- D 1 - I - 0x00E5F1 07:A5E1: 11        .byte $11
- D 1 - I - 0x00E5F2 07:A5E2: 10        .byte $10
- D 1 - I - 0x00E5F3 07:A5E3: 11        .byte $11
- D 1 - I - 0x00E5F4 07:A5E4: 10        .byte $10
- D 1 - I - 0x00E5F5 07:A5E5: 11        .byte $11

- - - - - - 0x00E5F6 07:A5E6: 00        .byte $00
- D 1 - I - 0x00E5F7 07:A5E7: A0        .byte $A0



_off012_A5E8_28_черный_фон_ХЗ:
- D 1 - I - 0x00E5F8 07:A5E8: 00        .byte $00
- D 1 - I - 0x00E5F9 07:A5E9: 02        .byte $02
- D 1 - I - 0x00E5FA 07:A5EA: 00        .byte $00
- D 1 - I - 0x00E5FB 07:A5EB: 04        .byte $04
- D 1 - I - 0x00E5FC 07:A5EC: 08        .byte $08
- D 1 - I - 0x00E5FD 07:A5ED: 00        .byte $00

- D 1 - I - 0x00E5FE 07:A5EE: 00        .byte $00
- D 1 - I - 0x00E5FF 07:A5EF: 00        .byte $00
- D 1 - I - 0x00E600 07:A5F0: 00        .byte $00
- D 1 - I - 0x00E601 07:A5F1: 00        .byte $00
- D 1 - I - 0x00E602 07:A5F2: 00        .byte $00
- D 1 - I - 0x00E603 07:A5F3: 00        .byte $00
- D 1 - I - 0x00E604 07:A5F4: 00        .byte $00
- D 1 - I - 0x00E605 07:A5F5: 00        .byte $00
- D 1 - I - 0x00E606 07:A5F6: 00        .byte $00
- D 1 - I - 0x00E607 07:A5F7: 00        .byte $00
- D 1 - I - 0x00E608 07:A5F8: 00        .byte $00
- D 1 - I - 0x00E609 07:A5F9: 00        .byte $00
- D 1 - I - 0x00E60A 07:A5FA: 00        .byte $00
- D 1 - I - 0x00E60B 07:A5FB: 00        .byte $00
- D 1 - I - 0x00E60C 07:A5FC: 00        .byte $00
- D 1 - I - 0x00E60D 07:A5FD: 00        .byte $00
- D 1 - I - 0x00E60E 07:A5FE: 00        .byte $00
- D 1 - I - 0x00E60F 07:A5FF: 00        .byte $00
- D 1 - I - 0x00E610 07:A600: 00        .byte $00
- D 1 - I - 0x00E611 07:A601: 00        .byte $00
- D 1 - I - 0x00E612 07:A602: 00        .byte $00
- D 1 - I - 0x00E613 07:A603: 00        .byte $00
- D 1 - I - 0x00E614 07:A604: 00        .byte $00
- D 1 - I - 0x00E615 07:A605: 00        .byte $00
- D 1 - I - 0x00E616 07:A606: 00        .byte $00
- D 1 - I - 0x00E617 07:A607: 00        .byte $00
- D 1 - I - 0x00E618 07:A608: 00        .byte $00
- D 1 - I - 0x00E619 07:A609: 00        .byte $00
- D 1 - I - 0x00E61A 07:A60A: 00        .byte $00
- D 1 - I - 0x00E61B 07:A60B: 00        .byte $00
- D 1 - I - 0x00E61C 07:A60C: 00        .byte $00
- D 1 - I - 0x00E61D 07:A60D: 00        .byte $00

- - - - - - 0x00E61E 07:A60E: 00        .byte $00
- D 1 - I - 0x00E61F 07:A60F: A0        .byte $A0



_off012_A610_29_трибуны_очень_быстрое_движение_влево:
- D 1 - I - 0x00E620 07:A610: 3C        .byte $3C
- D 1 - I - 0x00E621 07:A611: 3E        .byte $3E
- D 1 - I - 0x00E622 07:A612: 00        .byte $00
- D 1 - I - 0x00E623 07:A613: 02        .byte $02
- D 1 - I - 0x00E624 07:A614: 10        .byte $10
- D 1 - I - 0x00E625 07:A615: 10        .byte $10

- D 1 - I - 0x00E626 07:A616: 08        .byte $08
- D 1 - I - 0x00E627 07:A617: 09        .byte $09
- D 1 - I - 0x00E628 07:A618: 0A        .byte $0A
- D 1 - I - 0x00E629 07:A619: 0B        .byte $0B
- D 1 - I - 0x00E62A 07:A61A: 2C        .byte $2C
- D 1 - I - 0x00E62B 07:A61B: 2C        .byte $2C
- D 1 - I - 0x00E62C 07:A61C: 2C        .byte $2C
- D 1 - I - 0x00E62D 07:A61D: 2C        .byte $2C
- D 1 - I - 0x00E62E 07:A61E: 2D        .byte $2D
- D 1 - I - 0x00E62F 07:A61F: 2C        .byte $2C
- D 1 - I - 0x00E630 07:A620: 2C        .byte $2C
- D 1 - I - 0x00E631 07:A621: 2C        .byte $2C
- D 1 - I - 0x00E632 07:A622: 2C        .byte $2C
- D 1 - I - 0x00E633 07:A623: 2C        .byte $2C
- D 1 - I - 0x00E634 07:A624: 2C        .byte $2C
- D 1 - I - 0x00E635 07:A625: 2C        .byte $2C
- D 1 - I - 0x00E636 07:A626: 04        .byte $04
- D 1 - I - 0x00E637 07:A627: 05        .byte $05
- D 1 - I - 0x00E638 07:A628: 06        .byte $06
- D 1 - I - 0x00E639 07:A629: 07        .byte $07
- D 1 - I - 0x00E63A 07:A62A: 2F        .byte $2F
- D 1 - I - 0x00E63B 07:A62B: 2E        .byte $2E
- D 1 - I - 0x00E63C 07:A62C: 2F        .byte $2F
- D 1 - I - 0x00E63D 07:A62D: 2E        .byte $2E
- D 1 - I - 0x00E63E 07:A62E: 2F        .byte $2F
- D 1 - I - 0x00E63F 07:A62F: 2E        .byte $2E
- D 1 - I - 0x00E640 07:A630: 2F        .byte $2F
- D 1 - I - 0x00E641 07:A631: 2E        .byte $2E
- D 1 - I - 0x00E642 07:A632: 2F        .byte $2F
- D 1 - I - 0x00E643 07:A633: 2E        .byte $2E
- D 1 - I - 0x00E644 07:A634: 2F        .byte $2F
- D 1 - I - 0x00E645 07:A635: 2E        .byte $2E
- D 1 - I - 0x00E646 07:A636: 00        .byte $00

- D 1 - I - 0x00E647 07:A637: 30        .byte $30
- D 1 - I - 0x00E648 07:A638: 08        .byte $08



_off012_A639_2A_трибуны_ворота_табло_медленное_движение_вправо:
- D 1 - I - 0x00E649 07:A639: 3C        .byte $3C
- D 1 - I - 0x00E64A 07:A63A: 3E        .byte $3E
- D 1 - I - 0x00E64B 07:A63B: 00        .byte $00
- D 1 - I - 0x00E64C 07:A63C: 03        .byte $03
- D 1 - I - 0x00E64D 07:A63D: 10        .byte $10
- D 1 - I - 0x00E64E 07:A63E: 08        .byte $08

- D 1 - I - 0x00E64F 07:A63F: 42        .byte $42
- D 1 - I - 0x00E650 07:A640: 42        .byte $42
- D 1 - I - 0x00E651 07:A641: 42        .byte $42
- D 1 - I - 0x00E652 07:A642: 42        .byte $42
- D 1 - I - 0x00E653 07:A643: 42        .byte $42
- D 1 - I - 0x00E654 07:A644: 42        .byte $42
- D 1 - I - 0x00E655 07:A645: 42        .byte $42
- D 1 - I - 0x00E656 07:A646: 42        .byte $42
- D 1 - I - 0x00E657 07:A647: 42        .byte $42
- D 1 - I - 0x00E658 07:A648: 42        .byte $42
- D 1 - I - 0x00E659 07:A649: 42        .byte $42
- D 1 - I - 0x00E65A 07:A64A: 42        .byte $42
- D 1 - I - 0x00E65B 07:A64B: 42        .byte $42
- D 1 - I - 0x00E65C 07:A64C: 42        .byte $42
- D 1 - I - 0x00E65D 07:A64D: 42        .byte $42
- D 1 - I - 0x00E65E 07:A64E: 42        .byte $42
- D 1 - I - 0x00E65F 07:A64F: 13        .byte $13
- D 1 - I - 0x00E660 07:A650: 12        .byte $12
- D 1 - I - 0x00E661 07:A651: 13        .byte $13
- D 1 - I - 0x00E662 07:A652: 12        .byte $12
- D 1 - I - 0x00E663 07:A653: 13        .byte $13
- D 1 - I - 0x00E664 07:A654: 20        .byte $20
- D 1 - I - 0x00E665 07:A655: 13        .byte $13
- D 1 - I - 0x00E666 07:A656: 12        .byte $12
- D 1 - I - 0x00E667 07:A657: 13        .byte $13
- D 1 - I - 0x00E668 07:A658: 14        .byte $14
- D 1 - I - 0x00E669 07:A659: 15        .byte $15
- D 1 - I - 0x00E66A 07:A65A: 16        .byte $16
- D 1 - I - 0x00E66B 07:A65B: 17        .byte $17
- D 1 - I - 0x00E66C 07:A65C: 12        .byte $12
- D 1 - I - 0x00E66D 07:A65D: 13        .byte $13
- D 1 - I - 0x00E66E 07:A65E: 12        .byte $12
- D 1 - I - 0x00E66F 07:A65F: 1B        .byte $1B
- D 1 - I - 0x00E670 07:A660: 18        .byte $18
- D 1 - I - 0x00E671 07:A661: 1B        .byte $1B
- D 1 - I - 0x00E672 07:A662: 18        .byte $18
- D 1 - I - 0x00E673 07:A663: 1B        .byte $1B
- D 1 - I - 0x00E674 07:A664: 18        .byte $18
- D 1 - I - 0x00E675 07:A665: 1B        .byte $1B
- D 1 - I - 0x00E676 07:A666: 18        .byte $18
- D 1 - I - 0x00E677 07:A667: 1B        .byte $1B
- D 1 - I - 0x00E678 07:A668: 18        .byte $18
- D 1 - I - 0x00E679 07:A669: 19        .byte $19
- D 1 - I - 0x00E67A 07:A66A: 1A        .byte $1A
- D 1 - I - 0x00E67B 07:A66B: 1B        .byte $1B
- D 1 - I - 0x00E67C 07:A66C: 18        .byte $18
- D 1 - I - 0x00E67D 07:A66D: 1B        .byte $1B
- D 1 - I - 0x00E67E 07:A66E: 18        .byte $18
- D 1 - I - 0x00E67F 07:A66F: 00        .byte $00

- D 1 - I - 0x00E680 07:A670: A2        .byte $A2
- D 1 - I - 0x00E681 07:A671: 08        .byte $08



_off012_A672_2B_трибуны_ворота_табло_поле:
- D 1 - I - 0x00E682 07:A672: 3C        .byte $3C
- D 1 - I - 0x00E683 07:A673: 3E        .byte $3E
- D 1 - I - 0x00E684 07:A674: 00        .byte $00
- D 1 - I - 0x00E685 07:A675: 03        .byte $03
- D 1 - I - 0x00E686 07:A676: 08        .byte $08
- D 1 - I - 0x00E687 07:A677: 08        .byte $08

- D 1 - I - 0x00E688 07:A678: 42        .byte $42
- D 1 - I - 0x00E689 07:A679: 42        .byte $42
- D 1 - I - 0x00E68A 07:A67A: 42        .byte $42
- D 1 - I - 0x00E68B 07:A67B: 42        .byte $42
- D 1 - I - 0x00E68C 07:A67C: 42        .byte $42
- D 1 - I - 0x00E68D 07:A67D: 42        .byte $42
- D 1 - I - 0x00E68E 07:A67E: 42        .byte $42
- D 1 - I - 0x00E68F 07:A67F: 42        .byte $42
- D 1 - I - 0x00E690 07:A680: 12        .byte $12
- D 1 - I - 0x00E691 07:A681: 13        .byte $13
- D 1 - I - 0x00E692 07:A682: 14        .byte $14
- D 1 - I - 0x00E693 07:A683: 15        .byte $15
- D 1 - I - 0x00E694 07:A684: 16        .byte $16
- D 1 - I - 0x00E695 07:A685: 17        .byte $17
- D 1 - I - 0x00E696 07:A686: 12        .byte $12
- D 1 - I - 0x00E697 07:A687: 13        .byte $13
- D 1 - I - 0x00E698 07:A688: 18        .byte $18
- D 1 - I - 0x00E699 07:A689: 1B        .byte $1B
- D 1 - I - 0x00E69A 07:A68A: 18        .byte $18
- D 1 - I - 0x00E69B 07:A68B: 19        .byte $19
- D 1 - I - 0x00E69C 07:A68C: 1A        .byte $1A
- D 1 - I - 0x00E69D 07:A68D: 1B        .byte $1B
- D 1 - I - 0x00E69E 07:A68E: 18        .byte $18
- D 1 - I - 0x00E69F 07:A68F: 1B        .byte $1B

- - - - - - 0x00E6A0 07:A690: 00        .byte $00
- D 1 - I - 0x00E6A1 07:A691: A0        .byte $A0



_off012_A692_2C_пустые_трибуны_ворота_табло_в_квадрате_рукопожатие:
- D 1 - I - 0x00E6A2 07:A692: 3C        .byte $3C
- D 1 - I - 0x00E6A3 07:A693: 3E        .byte $3E
- D 1 - I - 0x00E6A4 07:A694: 00        .byte $00
- D 1 - I - 0x00E6A5 07:A695: 02        .byte $02
- D 1 - I - 0x00E6A6 07:A696: 02        .byte $02
- D 1 - I - 0x00E6A7 07:A697: 13        .byte $13

- D 1 - I - 0x00E6A8 07:A698: 25        .byte $25
- D 1 - I - 0x00E6A9 07:A699: 26        .byte $26
- D 1 - I - 0x00E6AA 07:A69A: 1D        .byte $1D
- D 1 - I - 0x00E6AB 07:A69B: 1E        .byte $1E

- - - - - - 0x00E6AC 07:A69C: 00        .byte $00
- D 1 - I - 0x00E6AD 07:A69D: A0        .byte $A0



_off012_A69E_2D_пустые_трибуны_ворота_табло_пауза_медленное_движение_вправо:
- D 1 - I - 0x00E6AE 07:A69E: 3C        .byte $3C
- D 1 - I - 0x00E6AF 07:A69F: 3E        .byte $3E
- D 1 - I - 0x00E6B0 07:A6A0: 00        .byte $00
- D 1 - I - 0x00E6B1 07:A6A1: 02        .byte $02
- D 1 - I - 0x00E6B2 07:A6A2: 10        .byte $10
- D 1 - I - 0x00E6B3 07:A6A3: 10        .byte $10

- D 1 - I - 0x00E6B4 07:A6A4: 2C        .byte $2C
- D 1 - I - 0x00E6B5 07:A6A5: 2C        .byte $2C
- D 1 - I - 0x00E6B6 07:A6A6: 08        .byte $08
- D 1 - I - 0x00E6B7 07:A6A7: 09        .byte $09
- D 1 - I - 0x00E6B8 07:A6A8: 0A        .byte $0A
- D 1 - I - 0x00E6B9 07:A6A9: 0B        .byte $0B
- D 1 - I - 0x00E6BA 07:A6AA: 2C        .byte $2C
- D 1 - I - 0x00E6BB 07:A6AB: 2C        .byte $2C
- D 1 - I - 0x00E6BC 07:A6AC: 2C        .byte $2C
- D 1 - I - 0x00E6BD 07:A6AD: 2D        .byte $2D
- D 1 - I - 0x00E6BE 07:A6AE: 2C        .byte $2C
- D 1 - I - 0x00E6BF 07:A6AF: 2C        .byte $2C
- D 1 - I - 0x00E6C0 07:A6B0: 2C        .byte $2C
- D 1 - I - 0x00E6C1 07:A6B1: 2C        .byte $2C
- D 1 - I - 0x00E6C2 07:A6B2: 2C        .byte $2C
- D 1 - I - 0x00E6C3 07:A6B3: 2C        .byte $2C
- D 1 - I - 0x00E6C4 07:A6B4: 10        .byte $10
- D 1 - I - 0x00E6C5 07:A6B5: 11        .byte $11
- D 1 - I - 0x00E6C6 07:A6B6: 0C        .byte $0C
- D 1 - I - 0x00E6C7 07:A6B7: 0D        .byte $0D
- D 1 - I - 0x00E6C8 07:A6B8: 0E        .byte $0E
- D 1 - I - 0x00E6C9 07:A6B9: 0F        .byte $0F
- D 1 - I - 0x00E6CA 07:A6BA: 10        .byte $10
- D 1 - I - 0x00E6CB 07:A6BB: 11        .byte $11
- D 1 - I - 0x00E6CC 07:A6BC: 10        .byte $10
- D 1 - I - 0x00E6CD 07:A6BD: 11        .byte $11
- D 1 - I - 0x00E6CE 07:A6BE: 10        .byte $10
- D 1 - I - 0x00E6CF 07:A6BF: 11        .byte $11
- D 1 - I - 0x00E6D0 07:A6C0: 10        .byte $10
- D 1 - I - 0x00E6D1 07:A6C1: 11        .byte $11
- D 1 - I - 0x00E6D2 07:A6C2: 10        .byte $10
- D 1 - I - 0x00E6D3 07:A6C3: 11        .byte $11
- D 1 - I - 0x00E6D4 07:A6C4: 78        .byte $78

- D 1 - I - 0x00E6D5 07:A6C5: A2        .byte $A2
- D 1 - I - 0x00E6D6 07:A6C6: 08        .byte $08



_off012_A6C7_2E_трибуны_ворота_табло_центр:
- D 1 - I - 0x00E6D7 07:A6C7: 3C        .byte $3C
- D 1 - I - 0x00E6D8 07:A6C8: 3E        .byte $3E
- D 1 - I - 0x00E6D9 07:A6C9: 00        .byte $00
- D 1 - I - 0x00E6DA 07:A6CA: 02        .byte $02
- D 1 - I - 0x00E6DB 07:A6CB: 08        .byte $08
- D 1 - I - 0x00E6DC 07:A6CC: 10        .byte $10

- D 1 - I - 0x00E6DD 07:A6CD: 08        .byte $08
- D 1 - I - 0x00E6DE 07:A6CE: 09        .byte $09
- D 1 - I - 0x00E6DF 07:A6CF: 0A        .byte $0A
- D 1 - I - 0x00E6E0 07:A6D0: 0B        .byte $0B
- D 1 - I - 0x00E6E1 07:A6D1: 2C        .byte $2C
- D 1 - I - 0x00E6E2 07:A6D2: 2C        .byte $2C
- D 1 - I - 0x00E6E3 07:A6D3: 2C        .byte $2C
- D 1 - I - 0x00E6E4 07:A6D4: 2C        .byte $2C
- D 1 - I - 0x00E6E5 07:A6D5: 04        .byte $04
- D 1 - I - 0x00E6E6 07:A6D6: 05        .byte $05
- D 1 - I - 0x00E6E7 07:A6D7: 06        .byte $06
- D 1 - I - 0x00E6E8 07:A6D8: 07        .byte $07
- D 1 - I - 0x00E6E9 07:A6D9: 2E        .byte $2E
- D 1 - I - 0x00E6EA 07:A6DA: 2F        .byte $2F
- D 1 - I - 0x00E6EB 07:A6DB: 2E        .byte $2E
- D 1 - I - 0x00E6EC 07:A6DC: 2F        .byte $2F

- - - - - - 0x00E6ED 07:A6DD: 00        .byte $00
- D 1 - I - 0x00E6EE 07:A6DE: A0        .byte $A0



_off012_A6DF_2F_рука_с_флагом_небо:
- D 1 - I - 0x00E6EF 07:A6DF: 3C        .byte $3C
- D 1 - I - 0x00E6F0 07:A6E0: 62        .byte $62
- D 1 - I - 0x00E6F1 07:A6E1: 09        .byte $09
- D 1 - I - 0x00E6F2 07:A6E2: 02        .byte $02
- D 1 - I - 0x00E6F3 07:A6E3: 06        .byte $06
- D 1 - I - 0x00E6F4 07:A6E4: 11        .byte $11

- D 1 - I - 0x00E6F5 07:A6E5: F9        .byte $F9
- D 1 - I - 0x00E6F6 07:A6E6: FA        .byte $FA
- D 1 - I - 0x00E6F7 07:A6E7: FB        .byte $FB
- D 1 - I - 0x00E6F8 07:A6E8: 01        .byte $01
- D 1 - I - 0x00E6F9 07:A6E9: 01        .byte $01
- D 1 - I - 0x00E6FA 07:A6EA: 01        .byte $01
- D 1 - I - 0x00E6FB 07:A6EB: FC        .byte $FC
- D 1 - I - 0x00E6FC 07:A6EC: FD        .byte $FD
- D 1 - I - 0x00E6FD 07:A6ED: FE        .byte $FE
- D 1 - I - 0x00E6FE 07:A6EE: 01        .byte $01
- D 1 - I - 0x00E6FF 07:A6EF: 39        .byte $39
- D 1 - I - 0x00E700 07:A6F0: 3A        .byte $3A

- - - - - - 0x00E701 07:A6F1: 00        .byte $00
- D 1 - I - 0x00E702 07:A6F2: A0        .byte $A0



_off012_A6F3_30_верхушка_трибун_яои_фуджисава:
- D 1 - I - 0x00E703 07:A6F3: 3C        .byte $3C
- D 1 - I - 0x00E704 07:A6F4: 3E        .byte $3E
- D 1 - I - 0x00E705 07:A6F5: 00        .byte $00
- D 1 - I - 0x00E706 07:A6F6: 02        .byte $02
- D 1 - I - 0x00E707 07:A6F7: 08        .byte $08
- D 1 - I - 0x00E708 07:A6F8: 10        .byte $10

- D 1 - I - 0x00E709 07:A6F9: 3A        .byte $3A
- D 1 - I - 0x00E70A 07:A6FA: 3B        .byte $3B
- D 1 - I - 0x00E70B 07:A6FB: 01        .byte $01
- D 1 - I - 0x00E70C 07:A6FC: 01        .byte $01
- D 1 - I - 0x00E70D 07:A6FD: 39        .byte $39
- D 1 - I - 0x00E70E 07:A6FE: 3A        .byte $3A
- D 1 - I - 0x00E70F 07:A6FF: 3B        .byte $3B
- D 1 - I - 0x00E710 07:A700: 01        .byte $01
- D 1 - I - 0x00E711 07:A701: 41        .byte $41
- D 1 - I - 0x00E712 07:A702: 40        .byte $40
- D 1 - I - 0x00E713 07:A703: 41        .byte $41
- D 1 - I - 0x00E714 07:A704: 40        .byte $40
- D 1 - I - 0x00E715 07:A705: 41        .byte $41
- D 1 - I - 0x00E716 07:A706: 40        .byte $40
- D 1 - I - 0x00E717 07:A707: 41        .byte $41
- D 1 - I - 0x00E718 07:A708: 40        .byte $40

- - - - - - 0x00E719 07:A709: 00        .byte $00
- D 1 - I - 0x00E71A 07:A70A: A0        .byte $A0



_off012_A70B_31_парк_вечер:
- D 1 - I - 0x00E71B 07:A70B: 5C        .byte $5C
- D 1 - I - 0x00E71C 07:A70C: 5E        .byte $5E
- D 1 - I - 0x00E71D 07:A70D: 0A        .byte $0A
- D 1 - I - 0x00E71E 07:A70E: 04        .byte $04
- D 1 - I - 0x00E71F 07:A70F: 10        .byte $10
- D 1 - I - 0x00E720 07:A710: 00        .byte $00

- D 1 - I - 0x00E721 07:A711: 03        .byte $03
- D 1 - I - 0x00E722 07:A712: 03        .byte $03
- D 1 - I - 0x00E723 07:A713: 03        .byte $03
- D 1 - I - 0x00E724 07:A714: 03        .byte $03
- D 1 - I - 0x00E725 07:A715: 03        .byte $03
- D 1 - I - 0x00E726 07:A716: 03        .byte $03
- D 1 - I - 0x00E727 07:A717: 03        .byte $03
- D 1 - I - 0x00E728 07:A718: 03        .byte $03
- D 1 - I - 0x00E729 07:A719: 03        .byte $03
- D 1 - I - 0x00E72A 07:A71A: 03        .byte $03
- D 1 - I - 0x00E72B 07:A71B: 03        .byte $03
- D 1 - I - 0x00E72C 07:A71C: 03        .byte $03
- D 1 - I - 0x00E72D 07:A71D: 03        .byte $03
- D 1 - I - 0x00E72E 07:A71E: 03        .byte $03
- D 1 - I - 0x00E72F 07:A71F: 03        .byte $03
- D 1 - I - 0x00E730 07:A720: 03        .byte $03
- D 1 - I - 0x00E731 07:A721: E5        .byte $E5
- D 1 - I - 0x00E732 07:A722: E6        .byte $E6
- D 1 - I - 0x00E733 07:A723: E7        .byte $E7
- D 1 - I - 0x00E734 07:A724: E8        .byte $E8
- D 1 - I - 0x00E735 07:A725: E9        .byte $E9
- D 1 - I - 0x00E736 07:A726: EA        .byte $EA
- D 1 - I - 0x00E737 07:A727: EB        .byte $EB
- D 1 - I - 0x00E738 07:A728: EC        .byte $EC
- D 1 - I - 0x00E739 07:A729: E9        .byte $E9
- D 1 - I - 0x00E73A 07:A72A: EA        .byte $EA
- D 1 - I - 0x00E73B 07:A72B: E8        .byte $E8
- D 1 - I - 0x00E73C 07:A72C: E9        .byte $E9
- D 1 - I - 0x00E73D 07:A72D: EA        .byte $EA
- D 1 - I - 0x00E73E 07:A72E: EA        .byte $EA
- D 1 - I - 0x00E73F 07:A72F: EB        .byte $EB
- D 1 - I - 0x00E740 07:A730: EE        .byte $EE
- D 1 - I - 0x00E741 07:A731: E1        .byte $E1
- D 1 - I - 0x00E742 07:A732: E2        .byte $E2
- D 1 - I - 0x00E743 07:A733: E3        .byte $E3
- D 1 - I - 0x00E744 07:A734: E4        .byte $E4
- D 1 - I - 0x00E745 07:A735: E1        .byte $E1
- D 1 - I - 0x00E746 07:A736: E2        .byte $E2
- D 1 - I - 0x00E747 07:A737: E3        .byte $E3
- D 1 - I - 0x00E748 07:A738: E4        .byte $E4
- D 1 - I - 0x00E749 07:A739: E1        .byte $E1
- D 1 - I - 0x00E74A 07:A73A: E2        .byte $E2
- D 1 - I - 0x00E74B 07:A73B: E3        .byte $E3
- D 1 - I - 0x00E74C 07:A73C: E4        .byte $E4
- D 1 - I - 0x00E74D 07:A73D: E1        .byte $E1
- D 1 - I - 0x00E74E 07:A73E: E2        .byte $E2
- D 1 - I - 0x00E74F 07:A73F: E3        .byte $E3
- D 1 - I - 0x00E750 07:A740: E4        .byte $E4
- D 1 - I - 0x00E751 07:A741: E0        .byte $E0
- D 1 - I - 0x00E752 07:A742: E0        .byte $E0
- D 1 - I - 0x00E753 07:A743: E0        .byte $E0
- D 1 - I - 0x00E754 07:A744: E0        .byte $E0
- D 1 - I - 0x00E755 07:A745: E0        .byte $E0
- D 1 - I - 0x00E756 07:A746: E0        .byte $E0
- D 1 - I - 0x00E757 07:A747: E0        .byte $E0
- D 1 - I - 0x00E758 07:A748: E0        .byte $E0
- D 1 - I - 0x00E759 07:A749: E0        .byte $E0
- D 1 - I - 0x00E75A 07:A74A: E0        .byte $E0
- D 1 - I - 0x00E75B 07:A74B: E0        .byte $E0
- D 1 - I - 0x00E75C 07:A74C: E0        .byte $E0
- D 1 - I - 0x00E75D 07:A74D: E0        .byte $E0
- D 1 - I - 0x00E75E 07:A74E: E0        .byte $E0
- D 1 - I - 0x00E75F 07:A74F: E0        .byte $E0
- D 1 - I - 0x00E760 07:A750: E0        .byte $E0

- - - - - - 0x00E761 07:A751: 00        .byte $00
- D 1 - I - 0x00E762 07:A752: A0        .byte $A0



_off012_A753_32_горы_вечер_1:
- D 1 - I - 0x00E763 07:A753: 5C        .byte $5C
- D 1 - I - 0x00E764 07:A754: 5E        .byte $5E
- D 1 - I - 0x00E765 07:A755: 0A        .byte $0A
- D 1 - I - 0x00E766 07:A756: 03        .byte $03
- D 1 - I - 0x00E767 07:A757: 08        .byte $08
- D 1 - I - 0x00E768 07:A758: 08        .byte $08

- D 1 - I - 0x00E769 07:A759: DE        .byte $DE
- D 1 - I - 0x00E76A 07:A75A: DE        .byte $DE
- D 1 - I - 0x00E76B 07:A75B: DE        .byte $DE
- D 1 - I - 0x00E76C 07:A75C: DE        .byte $DE
- D 1 - I - 0x00E76D 07:A75D: DE        .byte $DE
- D 1 - I - 0x00E76E 07:A75E: DE        .byte $DE
- D 1 - I - 0x00E76F 07:A75F: DE        .byte $DE
- D 1 - I - 0x00E770 07:A760: DE        .byte $DE
- D 1 - I - 0x00E771 07:A761: E5        .byte $E5
- D 1 - I - 0x00E772 07:A762: E6        .byte $E6
- D 1 - I - 0x00E773 07:A763: E7        .byte $E7
- D 1 - I - 0x00E774 07:A764: E8        .byte $E8
- D 1 - I - 0x00E775 07:A765: E9        .byte $E9
- D 1 - I - 0x00E776 07:A766: EA        .byte $EA
- D 1 - I - 0x00E777 07:A767: EB        .byte $EB
- D 1 - I - 0x00E778 07:A768: EC        .byte $EC
- D 1 - I - 0x00E779 07:A769: E3        .byte $E3
- D 1 - I - 0x00E77A 07:A76A: E4        .byte $E4
- D 1 - I - 0x00E77B 07:A76B: E1        .byte $E1
- D 1 - I - 0x00E77C 07:A76C: E2        .byte $E2
- D 1 - I - 0x00E77D 07:A76D: E3        .byte $E3
- D 1 - I - 0x00E77E 07:A76E: E4        .byte $E4
- D 1 - I - 0x00E77F 07:A76F: E1        .byte $E1
- D 1 - I - 0x00E780 07:A770: E2        .byte $E2

- - - - - - 0x00E781 07:A771: 00        .byte $00
- D 1 - I - 0x00E782 07:A772: A0        .byte $A0



_off012_A773_33_горы_вечер_2:
- D 1 - I - 0x00E783 07:A773: 5C        .byte $5C
- D 1 - I - 0x00E784 07:A774: 5E        .byte $5E
- D 1 - I - 0x00E785 07:A775: 0A        .byte $0A
- D 1 - I - 0x00E786 07:A776: 03        .byte $03
- D 1 - I - 0x00E787 07:A777: 08        .byte $08
- D 1 - I - 0x00E788 07:A778: 08        .byte $08

- D 1 - I - 0x00E789 07:A779: DE        .byte $DE
- D 1 - I - 0x00E78A 07:A77A: DE        .byte $DE
- D 1 - I - 0x00E78B 07:A77B: DE        .byte $DE
- D 1 - I - 0x00E78C 07:A77C: DE        .byte $DE
- D 1 - I - 0x00E78D 07:A77D: DE        .byte $DE
- D 1 - I - 0x00E78E 07:A77E: DE        .byte $DE
- D 1 - I - 0x00E78F 07:A77F: DE        .byte $DE
- D 1 - I - 0x00E790 07:A780: DE        .byte $DE
- D 1 - I - 0x00E791 07:A781: EA        .byte $EA
- D 1 - I - 0x00E792 07:A782: EB        .byte $EB
- D 1 - I - 0x00E793 07:A783: EC        .byte $EC
- D 1 - I - 0x00E794 07:A784: E9        .byte $E9
- D 1 - I - 0x00E795 07:A785: EA        .byte $EA
- D 1 - I - 0x00E796 07:A786: E8        .byte $E8
- D 1 - I - 0x00E797 07:A787: E9        .byte $E9
- D 1 - I - 0x00E798 07:A788: EA        .byte $EA
- D 1 - I - 0x00E799 07:A789: E1        .byte $E1
- D 1 - I - 0x00E79A 07:A78A: E2        .byte $E2
- D 1 - I - 0x00E79B 07:A78B: E3        .byte $E3
- D 1 - I - 0x00E79C 07:A78C: E4        .byte $E4
- D 1 - I - 0x00E79D 07:A78D: E1        .byte $E1
- D 1 - I - 0x00E79E 07:A78E: E2        .byte $E2
- D 1 - I - 0x00E79F 07:A78F: E3        .byte $E3
- D 1 - I - 0x00E7A0 07:A790: E4        .byte $E4

- - - - - - 0x00E7A1 07:A791: 00        .byte $00
- D 1 - I - 0x00E7A2 07:A792: A0        .byte $A0



_off012_A793_34_горы_вечер_3:
- D 1 - I - 0x00E7A3 07:A793: 5C        .byte $5C
- D 1 - I - 0x00E7A4 07:A794: 5E        .byte $5E
- D 1 - I - 0x00E7A5 07:A795: 0A        .byte $0A
- D 1 - I - 0x00E7A6 07:A796: 03        .byte $03
- D 1 - I - 0x00E7A7 07:A797: 08        .byte $08
- D 1 - I - 0x00E7A8 07:A798: 08        .byte $08

- D 1 - I - 0x00E7A9 07:A799: DE        .byte $DE
- D 1 - I - 0x00E7AA 07:A79A: DE        .byte $DE
- D 1 - I - 0x00E7AB 07:A79B: DE        .byte $DE
- D 1 - I - 0x00E7AC 07:A79C: DE        .byte $DE
- D 1 - I - 0x00E7AD 07:A79D: DE        .byte $DE
- D 1 - I - 0x00E7AE 07:A79E: DE        .byte $DE
- D 1 - I - 0x00E7AF 07:A79F: DE        .byte $DE
- D 1 - I - 0x00E7B0 07:A7A0: DE        .byte $DE
- D 1 - I - 0x00E7B1 07:A7A1: E8        .byte $E8
- D 1 - I - 0x00E7B2 07:A7A2: E9        .byte $E9
- D 1 - I - 0x00E7B3 07:A7A3: EA        .byte $EA
- D 1 - I - 0x00E7B4 07:A7A4: EB        .byte $EB
- D 1 - I - 0x00E7B5 07:A7A5: EC        .byte $EC
- D 1 - I - 0x00E7B6 07:A7A6: E9        .byte $E9
- D 1 - I - 0x00E7B7 07:A7A7: EA        .byte $EA
- D 1 - I - 0x00E7B8 07:A7A8: EB        .byte $EB
- D 1 - I - 0x00E7B9 07:A7A9: E2        .byte $E2
- D 1 - I - 0x00E7BA 07:A7AA: E3        .byte $E3
- D 1 - I - 0x00E7BB 07:A7AB: E4        .byte $E4
- D 1 - I - 0x00E7BC 07:A7AC: E1        .byte $E1
- D 1 - I - 0x00E7BD 07:A7AD: E2        .byte $E2
- D 1 - I - 0x00E7BE 07:A7AE: E3        .byte $E3
- D 1 - I - 0x00E7BF 07:A7AF: E4        .byte $E4
- D 1 - I - 0x00E7C0 07:A7B0: E1        .byte $E1

- - - - - - 0x00E7C1 07:A7B1: 00        .byte $00
- D 1 - I - 0x00E7C2 07:A7B2: A0        .byte $A0



_off012_A7B3_35_горы_вечер_4:
- D 1 - I - 0x00E7C3 07:A7B3: 5C        .byte $5C
- D 1 - I - 0x00E7C4 07:A7B4: 5E        .byte $5E
- D 1 - I - 0x00E7C5 07:A7B5: 0A        .byte $0A
- D 1 - I - 0x00E7C6 07:A7B6: 03        .byte $03
- D 1 - I - 0x00E7C7 07:A7B7: 10        .byte $10
- D 1 - I - 0x00E7C8 07:A7B8: 08        .byte $08

- D 1 - I - 0x00E7C9 07:A7B9: DE        .byte $DE
- D 1 - I - 0x00E7CA 07:A7BA: DE        .byte $DE
- D 1 - I - 0x00E7CB 07:A7BB: DE        .byte $DE
- D 1 - I - 0x00E7CC 07:A7BC: DE        .byte $DE
- D 1 - I - 0x00E7CD 07:A7BD: DE        .byte $DE
- D 1 - I - 0x00E7CE 07:A7BE: DE        .byte $DE
- D 1 - I - 0x00E7CF 07:A7BF: DE        .byte $DE
- D 1 - I - 0x00E7D0 07:A7C0: DE        .byte $DE
- D 1 - I - 0x00E7D1 07:A7C1: DE        .byte $DE
- D 1 - I - 0x00E7D2 07:A7C2: DE        .byte $DE
- D 1 - I - 0x00E7D3 07:A7C3: DE        .byte $DE
- D 1 - I - 0x00E7D4 07:A7C4: DE        .byte $DE
- D 1 - I - 0x00E7D5 07:A7C5: DE        .byte $DE
- D 1 - I - 0x00E7D6 07:A7C6: DE        .byte $DE
- D 1 - I - 0x00E7D7 07:A7C7: DE        .byte $DE
- D 1 - I - 0x00E7D8 07:A7C8: DE        .byte $DE
- D 1 - I - 0x00E7D9 07:A7C9: E7        .byte $E7
- D 1 - I - 0x00E7DA 07:A7CA: E8        .byte $E8
- D 1 - I - 0x00E7DB 07:A7CB: E9        .byte $E9
- D 1 - I - 0x00E7DC 07:A7CC: EA        .byte $EA
- D 1 - I - 0x00E7DD 07:A7CD: EB        .byte $EB
- D 1 - I - 0x00E7DE 07:A7CE: EC        .byte $EC
- D 1 - I - 0x00E7DF 07:A7CF: E9        .byte $E9
- D 1 - I - 0x00E7E0 07:A7D0: EA        .byte $EA
- D 1 - I - 0x00E7E1 07:A7D1: E8        .byte $E8
- D 1 - I - 0x00E7E2 07:A7D2: E9        .byte $E9
- D 1 - I - 0x00E7E3 07:A7D3: EA        .byte $EA
- D 1 - I - 0x00E7E4 07:A7D4: EA        .byte $EA
- D 1 - I - 0x00E7E5 07:A7D5: EB        .byte $EB
- D 1 - I - 0x00E7E6 07:A7D6: EE        .byte $EE
- D 1 - I - 0x00E7E7 07:A7D7: E5        .byte $E5
- D 1 - I - 0x00E7E8 07:A7D8: E6        .byte $E6
- D 1 - I - 0x00E7E9 07:A7D9: E1        .byte $E1
- D 1 - I - 0x00E7EA 07:A7DA: E2        .byte $E2
- D 1 - I - 0x00E7EB 07:A7DB: E3        .byte $E3
- D 1 - I - 0x00E7EC 07:A7DC: E4        .byte $E4
- D 1 - I - 0x00E7ED 07:A7DD: E1        .byte $E1
- D 1 - I - 0x00E7EE 07:A7DE: E2        .byte $E2
- D 1 - I - 0x00E7EF 07:A7DF: E3        .byte $E3
- D 1 - I - 0x00E7F0 07:A7E0: E4        .byte $E4
- D 1 - I - 0x00E7F1 07:A7E1: E1        .byte $E1
- D 1 - I - 0x00E7F2 07:A7E2: E2        .byte $E2
- D 1 - I - 0x00E7F3 07:A7E3: E3        .byte $E3
- D 1 - I - 0x00E7F4 07:A7E4: E4        .byte $E4
- D 1 - I - 0x00E7F5 07:A7E5: E1        .byte $E1
- D 1 - I - 0x00E7F6 07:A7E6: E2        .byte $E2
- D 1 - I - 0x00E7F7 07:A7E7: E3        .byte $E3
- D 1 - I - 0x00E7F8 07:A7E8: E4        .byte $E4

- - - - - - 0x00E7F9 07:A7E9: 00        .byte $00
- D 1 - I - 0x00E7FA 07:A7EA: A0        .byte $A0



_off012_A7EB_36_удар_движение_экрана_поле_сверху_представление_циклона_цубасой:
- D 1 - I - 0x00E7FB 07:A7EB: 60        .byte $60
- D 1 - I - 0x00E7FC 07:A7EC: 62        .byte $62
- D 1 - I - 0x00E7FD 07:A7ED: 87        .byte $87
- D 1 - I - 0x00E7FE 07:A7EE: 04        .byte $04
- D 1 - I - 0x00E7FF 07:A7EF: 0E        .byte $0E
- D 1 - I - 0x00E800 07:A7F0: 02        .byte $02

- D 1 - I - 0x00E801 07:A7F1: 00        .byte $00
- D 1 - I - 0x00E802 07:A7F2: 00        .byte $00
- D 1 - I - 0x00E803 07:A7F3: 00        .byte $00
- D 1 - I - 0x00E804 07:A7F4: 00        .byte $00
- D 1 - I - 0x00E805 07:A7F5: 00        .byte $00
- D 1 - I - 0x00E806 07:A7F6: 00        .byte $00
- D 1 - I - 0x00E807 07:A7F7: 7E        .byte $7E
- D 1 - I - 0x00E808 07:A7F8: 80        .byte $80
- D 1 - I - 0x00E809 07:A7F9: 7E        .byte $7E
- D 1 - I - 0x00E80A 07:A7FA: 7E        .byte $7E
- D 1 - I - 0x00E80B 07:A7FB: 7E        .byte $7E
- D 1 - I - 0x00E80C 07:A7FC: 7F        .byte $7F
- D 1 - I - 0x00E80D 07:A7FD: 7E        .byte $7E
- D 1 - I - 0x00E80E 07:A7FE: 7E        .byte $7E
- D 1 - I - 0x00E80F 07:A7FF: 00        .byte $00
- D 1 - I - 0x00E810 07:A800: 00        .byte $00
- D 1 - I - 0x00E811 07:A801: 00        .byte $00
- D 1 - I - 0x00E812 07:A802: 00        .byte $00
- D 1 - I - 0x00E813 07:A803: 00        .byte $00
- D 1 - I - 0x00E814 07:A804: 00        .byte $00
- D 1 - I - 0x00E815 07:A805: 80        .byte $80
- D 1 - I - 0x00E816 07:A806: 7E        .byte $7E
- D 1 - I - 0x00E817 07:A807: 7E        .byte $7E
- D 1 - I - 0x00E818 07:A808: 7E        .byte $7E
- D 1 - I - 0x00E819 07:A809: 7E        .byte $7E
- D 1 - I - 0x00E81A 07:A80A: 7E        .byte $7E
- D 1 - I - 0x00E81B 07:A80B: 7F        .byte $7F
- D 1 - I - 0x00E81C 07:A80C: 7E        .byte $7E
- D 1 - I - 0x00E81D 07:A80D: 81        .byte $81
- D 1 - I - 0x00E81E 07:A80E: 81        .byte $81
- D 1 - I - 0x00E81F 07:A80F: 81        .byte $81
- D 1 - I - 0x00E820 07:A810: 81        .byte $81
- D 1 - I - 0x00E821 07:A811: 00        .byte $00
- D 1 - I - 0x00E822 07:A812: 00        .byte $00
- D 1 - I - 0x00E823 07:A813: 7E        .byte $7E
- D 1 - I - 0x00E824 07:A814: 7E        .byte $7E
- D 1 - I - 0x00E825 07:A815: 7E        .byte $7E
- D 1 - I - 0x00E826 07:A816: 7E        .byte $7E
- D 1 - I - 0x00E827 07:A817: 7E        .byte $7E
- D 1 - I - 0x00E828 07:A818: 7E        .byte $7E
- D 1 - I - 0x00E829 07:A819: 7E        .byte $7E
- D 1 - I - 0x00E82A 07:A81A: 7F        .byte $7F
- D 1 - I - 0x00E82B 07:A81B: 7E        .byte $7E
- D 1 - I - 0x00E82C 07:A81C: 7E        .byte $7E
- D 1 - I - 0x00E82D 07:A81D: 7E        .byte $7E
- D 1 - I - 0x00E82E 07:A81E: 7E        .byte $7E
- D 1 - I - 0x00E82F 07:A81F: 00        .byte $00
- D 1 - I - 0x00E830 07:A820: 00        .byte $00
- D 1 - I - 0x00E831 07:A821: 7E        .byte $7E
- D 1 - I - 0x00E832 07:A822: 80        .byte $80
- D 1 - I - 0x00E833 07:A823: 7F        .byte $7F
- D 1 - I - 0x00E834 07:A824: 7E        .byte $7E
- D 1 - I - 0x00E835 07:A825: 7E        .byte $7E
- D 1 - I - 0x00E836 07:A826: 7E        .byte $7E
- D 1 - I - 0x00E837 07:A827: 7E        .byte $7E
- D 1 - I - 0x00E838 07:A828: 7E        .byte $7E
- D 1 - I - 0x00E839 07:A829: 15        .byte $15

- D 1 - I - 0x00E83A 07:A82A: BF        .byte $BF
- D 1 - I - 0x00E83B 07:A82B: 08        .byte $08



_off012_A82C_37_небо_самолет:
- D 1 - I - 0x00E83C 07:A82C: 3C        .byte $3C
- D 1 - I - 0x00E83D 07:A82D: 3E        .byte $3E
- D 1 - I - 0x00E83E 07:A82E: 00        .byte $00
- D 1 - I - 0x00E83F 07:A82F: 03        .byte $03
- D 1 - I - 0x00E840 07:A830: 10        .byte $10
- D 1 - I - 0x00E841 07:A831: 08        .byte $08

- D 1 - I - 0x00E842 07:A832: 42        .byte $42
- D 1 - I - 0x00E843 07:A833: 42        .byte $42
- D 1 - I - 0x00E844 07:A834: 42        .byte $42
- D 1 - I - 0x00E845 07:A835: 42        .byte $42
- D 1 - I - 0x00E846 07:A836: 42        .byte $42
- D 1 - I - 0x00E847 07:A837: 42        .byte $42
- D 1 - I - 0x00E848 07:A838: 42        .byte $42
- D 1 - I - 0x00E849 07:A839: 42        .byte $42
- D 1 - I - 0x00E84A 07:A83A: 42        .byte $42
- D 1 - I - 0x00E84B 07:A83B: 42        .byte $42
- D 1 - I - 0x00E84C 07:A83C: 42        .byte $42
- D 1 - I - 0x00E84D 07:A83D: 42        .byte $42
- D 1 - I - 0x00E84E 07:A83E: 42        .byte $42
- D 1 - I - 0x00E84F 07:A83F: 42        .byte $42
- D 1 - I - 0x00E850 07:A840: 42        .byte $42
- D 1 - I - 0x00E851 07:A841: 42        .byte $42
- D 1 - I - 0x00E852 07:A842: 01        .byte $01
- D 1 - I - 0x00E853 07:A843: 01        .byte $01
- D 1 - I - 0x00E854 07:A844: 3C        .byte $3C
- D 1 - I - 0x00E855 07:A845: 01        .byte $01
- D 1 - I - 0x00E856 07:A846: 01        .byte $01
- D 1 - I - 0x00E857 07:A847: 3D        .byte $3D
- D 1 - I - 0x00E858 07:A848: 01        .byte $01
- D 1 - I - 0x00E859 07:A849: 01        .byte $01
- D 1 - I - 0x00E85A 07:A84A: 01        .byte $01
- D 1 - I - 0x00E85B 07:A84B: 3D        .byte $3D
- D 1 - I - 0x00E85C 07:A84C: 01        .byte $01
- D 1 - I - 0x00E85D 07:A84D: 01        .byte $01
- D 1 - I - 0x00E85E 07:A84E: 01        .byte $01
- D 1 - I - 0x00E85F 07:A84F: 3C        .byte $3C
- D 1 - I - 0x00E860 07:A850: 01        .byte $01
- D 1 - I - 0x00E861 07:A851: 01        .byte $01
- D 1 - I - 0x00E862 07:A852: 3A        .byte $3A
- D 1 - I - 0x00E863 07:A853: 3B        .byte $3B
- D 1 - I - 0x00E864 07:A854: 01        .byte $01
- D 1 - I - 0x00E865 07:A855: 01        .byte $01
- D 1 - I - 0x00E866 07:A856: 01        .byte $01
- D 1 - I - 0x00E867 07:A857: 39        .byte $39
- D 1 - I - 0x00E868 07:A858: 3A        .byte $3A
- D 1 - I - 0x00E869 07:A859: 3B        .byte $3B
- D 1 - I - 0x00E86A 07:A85A: 38        .byte $38
- D 1 - I - 0x00E86B 07:A85B: 39        .byte $39
- D 1 - I - 0x00E86C 07:A85C: 3A        .byte $3A
- D 1 - I - 0x00E86D 07:A85D: 3A        .byte $3A
- D 1 - I - 0x00E86E 07:A85E: 3B        .byte $3B
- D 1 - I - 0x00E86F 07:A85F: 01        .byte $01
- D 1 - I - 0x00E870 07:A860: 01        .byte $01
- D 1 - I - 0x00E871 07:A861: 39        .byte $39

- - - - - - 0x00E872 07:A862: 00        .byte $00
- D 1 - I - 0x00E873 07:A863: 20        .byte $20



_off012_A864_38_синий_фон_полоска_удивление_цубасы:
- D 1 - I - 0x00E874 07:A864: 0C        .byte $0C
- D 1 - I - 0x00E875 07:A865: 0E        .byte $0E
- D 1 - I - 0x00E876 07:A866: 93        .byte $93
- D 1 - I - 0x00E877 07:A867: 02        .byte $02
- D 1 - I - 0x00E878 07:A868: 08        .byte $08
- D 1 - I - 0x00E879 07:A869: 10        .byte $10

- D 1 - I - 0x00E87A 07:A86A: 65        .byte $65
- D 1 - I - 0x00E87B 07:A86B: 65        .byte $65
- D 1 - I - 0x00E87C 07:A86C: 65        .byte $65
- D 1 - I - 0x00E87D 07:A86D: 65        .byte $65
- D 1 - I - 0x00E87E 07:A86E: 65        .byte $65
- D 1 - I - 0x00E87F 07:A86F: 65        .byte $65
- D 1 - I - 0x00E880 07:A870: 65        .byte $65
- D 1 - I - 0x00E881 07:A871: 65        .byte $65
- D 1 - I - 0x00E882 07:A872: 01        .byte $01
- D 1 - I - 0x00E883 07:A873: 01        .byte $01
- D 1 - I - 0x00E884 07:A874: 01        .byte $01
- D 1 - I - 0x00E885 07:A875: 01        .byte $01
- D 1 - I - 0x00E886 07:A876: 01        .byte $01
- D 1 - I - 0x00E887 07:A877: 01        .byte $01
- D 1 - I - 0x00E888 07:A878: 01        .byte $01
- D 1 - I - 0x00E889 07:A879: 01        .byte $01
- D 1 - I - 0x00E88A 07:A87A: 00        .byte $00

- D 1 - I - 0x00E88B 07:A87B: BF        .byte $BF
- D 1 - I - 0x00E88C 07:A87C: 08        .byte $08



_off012_A87D_39_рваная_сетка:
- D 1 - I - 0x00E88D 07:A87D: 46        .byte $46
- D 1 - I - 0x00E88E 07:A87E: 3C        .byte $3C
- D 1 - I - 0x00E88F 07:A87F: 00        .byte $00
- D 1 - I - 0x00E890 07:A880: 02        .byte $02
- D 1 - I - 0x00E891 07:A881: 06        .byte $06
- D 1 - I - 0x00E892 07:A882: 11        .byte $11

- D 1 - I - 0x00E893 07:A883: 6A        .byte $6A
- D 1 - I - 0x00E894 07:A884: 6B        .byte $6B
- D 1 - I - 0x00E895 07:A885: 6B        .byte $6B
- D 1 - I - 0x00E896 07:A886: 6C        .byte $6C
- D 1 - I - 0x00E897 07:A887: 6D        .byte $6D
- D 1 - I - 0x00E898 07:A888: 6E        .byte $6E
- D 1 - I - 0x00E899 07:A889: 6F        .byte $6F
- D 1 - I - 0x00E89A 07:A88A: 70        .byte $70
- D 1 - I - 0x00E89B 07:A88B: 71        .byte $71
- D 1 - I - 0x00E89C 07:A88C: 72        .byte $72
- D 1 - I - 0x00E89D 07:A88D: 73        .byte $73
- D 1 - I - 0x00E89E 07:A88E: 74        .byte $74

- - - - - - 0x00E89F 07:A88F: 00        .byte $00
- D 1 - I - 0x00E8A0 07:A890: A0        .byte $A0



_off012_A891_3A_майка_арбитра_рука_вверх:
- D 1 - I - 0x00E8A1 07:A891: 3C        .byte $3C
- D 1 - I - 0x00E8A2 07:A892: 2C        .byte $2C
- D 1 - I - 0x00E8A3 07:A893: 1D        .byte $1D
- D 1 - I - 0x00E8A4 07:A894: 02        .byte $02
- D 1 - I - 0x00E8A5 07:A895: 08        .byte $08
- D 1 - I - 0x00E8A6 07:A896: 10        .byte $10

- D 1 - I - 0x00E8A7 07:A897: 01        .byte $01
- D 1 - I - 0x00E8A8 07:A898: 3C        .byte $3C
- D 1 - I - 0x00E8A9 07:A899: 01        .byte $01
- D 1 - I - 0x00E8AA 07:A89A: 01        .byte $01
- D 1 - I - 0x00E8AB 07:A89B: 45        .byte $45
- D 1 - I - 0x00E8AC 07:A89C: 01        .byte $01
- D 1 - I - 0x00E8AD 07:A89D: 3D        .byte $3D
- D 1 - I - 0x00E8AE 07:A89E: 01        .byte $01
- D 1 - I - 0x00E8AF 07:A89F: 12        .byte $12
- D 1 - I - 0x00E8B0 07:A8A0: 13        .byte $13
- D 1 - I - 0x00E8B1 07:A8A1: 12        .byte $12
- D 1 - I - 0x00E8B2 07:A8A2: 46        .byte $46
- D 1 - I - 0x00E8B3 07:A8A3: 47        .byte $47
- D 1 - I - 0x00E8B4 07:A8A4: 12        .byte $12
- D 1 - I - 0x00E8B5 07:A8A5: 13        .byte $13
- D 1 - I - 0x00E8B6 07:A8A6: 12        .byte $12

- - - - - - 0x00E8B7 07:A8A7: 00        .byte $00
- D 1 - I - 0x00E8B8 07:A8A8: A0        .byte $A0



_off012_A8A9_3B_портрет_пьера_слева:
- D 1 - I - 0x00E8B9 07:A8A9: 3A        .byte $3A
- D 1 - I - 0x00E8BA 07:A8AA: 00        .byte $00
- D 1 - I - 0x00E8BB 07:A8AB: 15        .byte $15
- D 1 - I - 0x00E8BC 07:A8AC: 02        .byte $02
- D 1 - I - 0x00E8BD 07:A8AD: 0E        .byte $0E
- D 1 - I - 0x00E8BE 07:A8AE: 11        .byte $11

- D 1 - I - 0x00E8BF 07:A8AF: 93        .byte $93
- D 1 - I - 0x00E8C0 07:A8B0: 76        .byte $76
- D 1 - I - 0x00E8C1 07:A8B1: 7B        .byte $7B
- D 1 - I - 0x00E8C2 07:A8B2: 43        .byte $43
- D 1 - I - 0x00E8C3 07:A8B3: 00        .byte $00
- D 1 - I - 0x00E8C4 07:A8B4: 00        .byte $00
- D 1 - I - 0x00E8C5 07:A8B5: 00        .byte $00
- D 1 - I - 0x00E8C6 07:A8B6: 00        .byte $00
- D 1 - I - 0x00E8C7 07:A8B7: 00        .byte $00
- D 1 - I - 0x00E8C8 07:A8B8: 00        .byte $00
- D 1 - I - 0x00E8C9 07:A8B9: 93        .byte $93
- D 1 - I - 0x00E8CA 07:A8BA: 75        .byte $75
- D 1 - I - 0x00E8CB 07:A8BB: 42        .byte $42
- D 1 - I - 0x00E8CC 07:A8BC: 43        .byte $43
- D 1 - I - 0x00E8CD 07:A8BD: 7C        .byte $7C
- D 1 - I - 0x00E8CE 07:A8BE: 7D        .byte $7D
- D 1 - I - 0x00E8CF 07:A8BF: 7E        .byte $7E
- D 1 - I - 0x00E8D0 07:A8C0: 44        .byte $44
- D 1 - I - 0x00E8D1 07:A8C1: 00        .byte $00
- D 1 - I - 0x00E8D2 07:A8C2: 00        .byte $00
- D 1 - I - 0x00E8D3 07:A8C3: 00        .byte $00
- D 1 - I - 0x00E8D4 07:A8C4: 00        .byte $00
- D 1 - I - 0x00E8D5 07:A8C5: 00        .byte $00
- D 1 - I - 0x00E8D6 07:A8C6: 00        .byte $00
- D 1 - I - 0x00E8D7 07:A8C7: 94        .byte $94
- D 1 - I - 0x00E8D8 07:A8C8: 77        .byte $77
- D 1 - I - 0x00E8D9 07:A8C9: 78        .byte $78
- D 1 - I - 0x00E8DA 07:A8CA: 79        .byte $79

- - - - - - 0x00E8DB 07:A8CB: 00        .byte $00
- D 1 - I - 0x00E8DC 07:A8CC: A0        .byte $A0



_off012_A8CD_3C_зеленый_фон_для_флагов:
- D 1 - I - 0x00E8DD 07:A8CD: 60        .byte $60
- D 1 - I - 0x00E8DE 07:A8CE: 62        .byte $62
- D 1 - I - 0x00E8DF 07:A8CF: 07        .byte $07
- D 1 - I - 0x00E8E0 07:A8D0: 02        .byte $02
- D 1 - I - 0x00E8E1 07:A8D1: 08        .byte $08
- D 1 - I - 0x00E8E2 07:A8D2: 10        .byte $10

- D 1 - I - 0x00E8E3 07:A8D3: 34        .byte $34
- D 1 - I - 0x00E8E4 07:A8D4: 34        .byte $34
- D 1 - I - 0x00E8E5 07:A8D5: 34        .byte $34
- D 1 - I - 0x00E8E6 07:A8D6: 34        .byte $34
- D 1 - I - 0x00E8E7 07:A8D7: 34        .byte $34
- D 1 - I - 0x00E8E8 07:A8D8: 34        .byte $34
- D 1 - I - 0x00E8E9 07:A8D9: 34        .byte $34
- D 1 - I - 0x00E8EA 07:A8DA: 34        .byte $34
- D 1 - I - 0x00E8EB 07:A8DB: 34        .byte $34
- D 1 - I - 0x00E8EC 07:A8DC: 34        .byte $34
- D 1 - I - 0x00E8ED 07:A8DD: 34        .byte $34
- D 1 - I - 0x00E8EE 07:A8DE: 34        .byte $34
- D 1 - I - 0x00E8EF 07:A8DF: 34        .byte $34
- D 1 - I - 0x00E8F0 07:A8E0: 34        .byte $34
- D 1 - I - 0x00E8F1 07:A8E1: 34        .byte $34
- D 1 - I - 0x00E8F2 07:A8E2: 34        .byte $34

- - - - - - 0x00E8F3 07:A8E3: 00        .byte $00
- D 1 - I - 0x00E8F4 07:A8E4: A0        .byte $A0



_off012_A8E5_3D_небо_узкий_экран:
- D 1 - I - 0x00E8F5 07:A8E5: 3C        .byte $3C
- D 1 - I - 0x00E8F6 07:A8E6: 3E        .byte $3E
- D 1 - I - 0x00E8F7 07:A8E7: 0B        .byte $0B
- D 1 - I - 0x00E8F8 07:A8E8: 02        .byte $02
- D 1 - I - 0x00E8F9 07:A8E9: 08        .byte $08
- D 1 - I - 0x00E8FA 07:A8EA: 10        .byte $10

- D 1 - I - 0x00E8FB 07:A8EB: 01        .byte $01
- D 1 - I - 0x00E8FC 07:A8EC: 3C        .byte $3C
- D 1 - I - 0x00E8FD 07:A8ED: 01        .byte $01
- D 1 - I - 0x00E8FE 07:A8EE: 01        .byte $01
- D 1 - I - 0x00E8FF 07:A8EF: 01        .byte $01
- D 1 - I - 0x00E900 07:A8F0: 01        .byte $01
- D 1 - I - 0x00E901 07:A8F1: 01        .byte $01
- D 1 - I - 0x00E902 07:A8F2: 01        .byte $01
- D 1 - I - 0x00E903 07:A8F3: 01        .byte $01
- D 1 - I - 0x00E904 07:A8F4: 01        .byte $01
- D 1 - I - 0x00E905 07:A8F5: 01        .byte $01
- D 1 - I - 0x00E906 07:A8F6: 01        .byte $01
- D 1 - I - 0x00E907 07:A8F7: 01        .byte $01
- D 1 - I - 0x00E908 07:A8F8: 01        .byte $01
- D 1 - I - 0x00E909 07:A8F9: 3D        .byte $3D
- D 1 - I - 0x00E90A 07:A8FA: 01        .byte $01

- - - - - - 0x00E90B 07:A8FB: 00        .byte $00
- D 1 - I - 0x00E90C 07:A8FC: A0        .byte $A0



_off012_A8FD_3E_вмятина_на_сетке_после_циклона_катсцена:
- D 1 - I - 0x00E90D 07:A8FD: 66        .byte $66
- D 1 - I - 0x00E90E 07:A8FE: 5E        .byte $5E
- D 1 - I - 0x00E90F 07:A8FF: 03        .byte $03
- D 1 - I - 0x00E910 07:A900: 04        .byte $04
- D 1 - I - 0x00E911 07:A901: 08        .byte $08
- D 1 - I - 0x00E912 07:A902: 00        .byte $00

- D 1 - I - 0x00E913 07:A903: CD        .byte $CD
- D 1 - I - 0x00E914 07:A904: CD        .byte $CD
- D 1 - I - 0x00E915 07:A905: CD        .byte $CD
- D 1 - I - 0x00E916 07:A906: D0        .byte $D0
- D 1 - I - 0x00E917 07:A907: D1        .byte $D1
- D 1 - I - 0x00E918 07:A908: D2        .byte $D2
- D 1 - I - 0x00E919 07:A909: D3        .byte $D3
- D 1 - I - 0x00E91A 07:A90A: D4        .byte $D4
- D 1 - I - 0x00E91B 07:A90B: CE        .byte $CE
- D 1 - I - 0x00E91C 07:A90C: CE        .byte $CE
- D 1 - I - 0x00E91D 07:A90D: CE        .byte $CE
- D 1 - I - 0x00E91E 07:A90E: D5        .byte $D5
- D 1 - I - 0x00E91F 07:A90F: D6        .byte $D6
- D 1 - I - 0x00E920 07:A910: D2        .byte $D2
- D 1 - I - 0x00E921 07:A911: D3        .byte $D3
- D 1 - I - 0x00E922 07:A912: D4        .byte $D4
- D 1 - I - 0x00E923 07:A913: CE        .byte $CE
- D 1 - I - 0x00E924 07:A914: CE        .byte $CE
- D 1 - I - 0x00E925 07:A915: CE        .byte $CE
- D 1 - I - 0x00E926 07:A916: D7        .byte $D7
- D 1 - I - 0x00E927 07:A917: D8        .byte $D8
- D 1 - I - 0x00E928 07:A918: D9        .byte $D9
- D 1 - I - 0x00E929 07:A919: D3        .byte $D3
- D 1 - I - 0x00E92A 07:A91A: DA        .byte $DA
- D 1 - I - 0x00E92B 07:A91B: CF        .byte $CF
- D 1 - I - 0x00E92C 07:A91C: CF        .byte $CF
- D 1 - I - 0x00E92D 07:A91D: CF        .byte $CF
- D 1 - I - 0x00E92E 07:A91E: DB        .byte $DB
- D 1 - I - 0x00E92F 07:A91F: DC        .byte $DC
- D 1 - I - 0x00E930 07:A920: D9        .byte $D9
- D 1 - I - 0x00E931 07:A921: D3        .byte $D3
- D 1 - I - 0x00E932 07:A922: DD        .byte $DD

- - - - - - 0x00E933 07:A923: 00        .byte $00
- D 1 - I - 0x00E934 07:A924: A0        .byte $A0



_off012_A925_3F_ночное_поле_трибуны_дождь_пауза_движение_вправо:
- D 1 - I - 0x00E935 07:A925: 3C        .byte $3C
- D 1 - I - 0x00E936 07:A926: 66        .byte $66
- D 1 - I - 0x00E937 07:A927: 0C        .byte $0C
- D 1 - I - 0x00E938 07:A928: 04        .byte $04
- D 1 - I - 0x00E939 07:A929: 10        .byte $10
- D 1 - I - 0x00E93A 07:A92A: 07        .byte $07

- D 1 - I - 0x00E93B 07:A92B: 01        .byte $01
- D 1 - I - 0x00E93C 07:A92C: 01        .byte $01
- D 1 - I - 0x00E93D 07:A92D: 5B        .byte $5B
- D 1 - I - 0x00E93E 07:A92E: 01        .byte $01
- D 1 - I - 0x00E93F 07:A92F: 01        .byte $01
- D 1 - I - 0x00E940 07:A930: 01        .byte $01
- D 1 - I - 0x00E941 07:A931: 5A        .byte $5A
- D 1 - I - 0x00E942 07:A932: 01        .byte $01
- D 1 - I - 0x00E943 07:A933: 01        .byte $01
- D 1 - I - 0x00E944 07:A934: 01        .byte $01
- D 1 - I - 0x00E945 07:A935: 01        .byte $01
- D 1 - I - 0x00E946 07:A936: 01        .byte $01
- D 1 - I - 0x00E947 07:A937: 5A        .byte $5A
- D 1 - I - 0x00E948 07:A938: 01        .byte $01
- D 1 - I - 0x00E949 07:A939: 01        .byte $01
- D 1 - I - 0x00E94A 07:A93A: 01        .byte $01
- D 1 - I - 0x00E94B 07:A93B: 01        .byte $01
- D 1 - I - 0x00E94C 07:A93C: 01        .byte $01
- D 1 - I - 0x00E94D 07:A93D: 96        .byte $96
- D 1 - I - 0x00E94E 07:A93E: 01        .byte $01
- D 1 - I - 0x00E94F 07:A93F: 01        .byte $01
- D 1 - I - 0x00E950 07:A940: 01        .byte $01
- D 1 - I - 0x00E951 07:A941: 5B        .byte $5B
- D 1 - I - 0x00E952 07:A942: 01        .byte $01
- D 1 - I - 0x00E953 07:A943: 01        .byte $01
- D 1 - I - 0x00E954 07:A944: 01        .byte $01
- D 1 - I - 0x00E955 07:A945: 01        .byte $01
- D 1 - I - 0x00E956 07:A946: 01        .byte $01
- D 1 - I - 0x00E957 07:A947: 5B        .byte $5B
- D 1 - I - 0x00E958 07:A948: 01        .byte $01
- D 1 - I - 0x00E959 07:A949: 01        .byte $01
- D 1 - I - 0x00E95A 07:A94A: 01        .byte $01
- D 1 - I - 0x00E95B 07:A94B: 54        .byte $54
- D 1 - I - 0x00E95C 07:A94C: 55        .byte $55
- D 1 - I - 0x00E95D 07:A94D: 56        .byte $56
- D 1 - I - 0x00E95E 07:A94E: 57        .byte $57
- D 1 - I - 0x00E95F 07:A94F: 58        .byte $58
- D 1 - I - 0x00E960 07:A950: 59        .byte $59
- D 1 - I - 0x00E961 07:A951: 54        .byte $54
- D 1 - I - 0x00E962 07:A952: 55        .byte $55
- D 1 - I - 0x00E963 07:A953: 54        .byte $54
- D 1 - I - 0x00E964 07:A954: 55        .byte $55
- D 1 - I - 0x00E965 07:A955: 54        .byte $54
- D 1 - I - 0x00E966 07:A956: 55        .byte $55
- D 1 - I - 0x00E967 07:A957: 54        .byte $54
- D 1 - I - 0x00E968 07:A958: 55        .byte $55
- D 1 - I - 0x00E969 07:A959: 54        .byte $54
- D 1 - I - 0x00E96A 07:A95A: 55        .byte $55
- D 1 - I - 0x00E96B 07:A95B: 1C        .byte $1C
- D 1 - I - 0x00E96C 07:A95C: 1F        .byte $1F
- D 1 - I - 0x00E96D 07:A95D: 1C        .byte $1C
- D 1 - I - 0x00E96E 07:A95E: 1D        .byte $1D
- D 1 - I - 0x00E96F 07:A95F: 1E        .byte $1E
- D 1 - I - 0x00E970 07:A960: 1F        .byte $1F
- D 1 - I - 0x00E971 07:A961: 1C        .byte $1C
- D 1 - I - 0x00E972 07:A962: 1F        .byte $1F
- D 1 - I - 0x00E973 07:A963: 1C        .byte $1C
- D 1 - I - 0x00E974 07:A964: 1F        .byte $1F
- D 1 - I - 0x00E975 07:A965: 1C        .byte $1C
- D 1 - I - 0x00E976 07:A966: 1F        .byte $1F
- D 1 - I - 0x00E977 07:A967: 1C        .byte $1C
- D 1 - I - 0x00E978 07:A968: 1F        .byte $1F
- D 1 - I - 0x00E979 07:A969: 1C        .byte $1C
- D 1 - I - 0x00E97A 07:A96A: 1F        .byte $1F
- D 1 - I - 0x00E97B 07:A96B: FF        .byte $FF

- D 1 - I - 0x00E97C 07:A96C: A2        .byte $A2
- D 1 - I - 0x00E97D 07:A96D: 08        .byte $08



_off012_A96E_40_ворота_гертис_ловит_мяч_движенме_влево:
- D 1 - I - 0x00E97E 07:A96E: 3C        .byte $3C
- D 1 - I - 0x00E97F 07:A96F: 4C        .byte $4C
- D 1 - I - 0x00E980 07:A970: 00        .byte $00
- D 1 - I - 0x00E981 07:A971: 04        .byte $04
- D 1 - I - 0x00E982 07:A972: 08        .byte $08
- D 1 - I - 0x00E983 07:A973: 07        .byte $07

- D 1 - I - 0x00E984 07:A974: 98        .byte $98
- D 1 - I - 0x00E985 07:A975: 99        .byte $99
- D 1 - I - 0x00E986 07:A976: 42        .byte $42
- D 1 - I - 0x00E987 07:A977: 42        .byte $42
- D 1 - I - 0x00E988 07:A978: 42        .byte $42
- D 1 - I - 0x00E989 07:A979: 42        .byte $42
- D 1 - I - 0x00E98A 07:A97A: 42        .byte $42
- D 1 - I - 0x00E98B 07:A97B: 42        .byte $42
- D 1 - I - 0x00E98C 07:A97C: 9A        .byte $9A
- D 1 - I - 0x00E98D 07:A97D: 9B        .byte $9B
- D 1 - I - 0x00E98E 07:A97E: 9C        .byte $9C
- D 1 - I - 0x00E98F 07:A97F: 01        .byte $01
- D 1 - I - 0x00E990 07:A980: 01        .byte $01
- D 1 - I - 0x00E991 07:A981: 01        .byte $01
- D 1 - I - 0x00E992 07:A982: 01        .byte $01
- D 1 - I - 0x00E993 07:A983: 01        .byte $01
- D 1 - I - 0x00E994 07:A984: 9D        .byte $9D
- D 1 - I - 0x00E995 07:A985: 9E        .byte $9E
- D 1 - I - 0x00E996 07:A986: 9F        .byte $9F
- D 1 - I - 0x00E997 07:A987: A0        .byte $A0
- D 1 - I - 0x00E998 07:A988: 3C        .byte $3C
- D 1 - I - 0x00E999 07:A989: 01        .byte $01
- D 1 - I - 0x00E99A 07:A98A: 01        .byte $01
- D 1 - I - 0x00E99B 07:A98B: 01        .byte $01
- D 1 - I - 0x00E99C 07:A98C: A1        .byte $A1
- D 1 - I - 0x00E99D 07:A98D: A2        .byte $A2
- D 1 - I - 0x00E99E 07:A98E: A3        .byte $A3
- D 1 - I - 0x00E99F 07:A98F: A4        .byte $A4
- D 1 - I - 0x00E9A0 07:A990: 01        .byte $01
- D 1 - I - 0x00E9A1 07:A991: 39        .byte $39
- D 1 - I - 0x00E9A2 07:A992: 3A        .byte $3A
- D 1 - I - 0x00E9A3 07:A993: 3B        .byte $3B
- D 1 - I - 0x00E9A4 07:A994: 00        .byte $00

- D 1 - I - 0x00E9A5 07:A995: 39        .byte $39
- D 1 - I - 0x00E9A6 07:A996: 08        .byte $08



_off012_A997_41_черный_экран_молния_ХЗ:
- D 1 - I - 0x00E9A7 07:A997: 66        .byte $66
- D 1 - I - 0x00E9A8 07:A998: 5E        .byte $5E
- D 1 - I - 0x00E9A9 07:A999: 03        .byte $03
- D 1 - I - 0x00E9AA 07:A99A: 04        .byte $04
- D 1 - I - 0x00E9AB 07:A99B: 08        .byte $08
- D 1 - I - 0x00E9AC 07:A99C: 00        .byte $00

- D 1 - I - 0x00E9AD 07:A99D: 00        .byte $00
- D 1 - I - 0x00E9AE 07:A99E: 8C        .byte $8C
- D 1 - I - 0x00E9AF 07:A99F: 00        .byte $00
- D 1 - I - 0x00E9B0 07:A9A0: 00        .byte $00
- D 1 - I - 0x00E9B1 07:A9A1: 00        .byte $00
- D 1 - I - 0x00E9B2 07:A9A2: 00        .byte $00
- D 1 - I - 0x00E9B3 07:A9A3: 00        .byte $00
- D 1 - I - 0x00E9B4 07:A9A4: 00        .byte $00
- D 1 - I - 0x00E9B5 07:A9A5: 00        .byte $00
- D 1 - I - 0x00E9B6 07:A9A6: 97        .byte $97
- D 1 - I - 0x00E9B7 07:A9A7: 00        .byte $00
- D 1 - I - 0x00E9B8 07:A9A8: 00        .byte $00
- D 1 - I - 0x00E9B9 07:A9A9: 00        .byte $00
- D 1 - I - 0x00E9BA 07:A9AA: 00        .byte $00
- D 1 - I - 0x00E9BB 07:A9AB: 00        .byte $00
- D 1 - I - 0x00E9BC 07:A9AC: 00        .byte $00
- D 1 - I - 0x00E9BD 07:A9AD: 00        .byte $00
- D 1 - I - 0x00E9BE 07:A9AE: 00        .byte $00
- D 1 - I - 0x00E9BF 07:A9AF: 00        .byte $00
- D 1 - I - 0x00E9C0 07:A9B0: 00        .byte $00
- D 1 - I - 0x00E9C1 07:A9B1: 00        .byte $00
- D 1 - I - 0x00E9C2 07:A9B2: 00        .byte $00
- D 1 - I - 0x00E9C3 07:A9B3: 00        .byte $00
- D 1 - I - 0x00E9C4 07:A9B4: 00        .byte $00
- D 1 - I - 0x00E9C5 07:A9B5: DF        .byte $DF
- D 1 - I - 0x00E9C6 07:A9B6: DF        .byte $DF
- D 1 - I - 0x00E9C7 07:A9B7: DF        .byte $DF
- D 1 - I - 0x00E9C8 07:A9B8: DF        .byte $DF
- D 1 - I - 0x00E9C9 07:A9B9: DF        .byte $DF
- D 1 - I - 0x00E9CA 07:A9BA: DF        .byte $DF
- D 1 - I - 0x00E9CB 07:A9BB: DF        .byte $DF
- D 1 - I - 0x00E9CC 07:A9BC: DF        .byte $DF
- D 1 - I - 0x00E9CD 07:A9BD: FF        .byte $FF

- D 1 - I - 0x00E9CE 07:A9BE: A3        .byte $A3
- D 1 - I - 0x00E9CF 07:A9BF: 03        .byte $03



_off012_A9C0_42_турнирная_сетка_флаги:
- D 1 - I - 0x00E9D0 07:A9C0: 6C        .byte $6C
- D 1 - I - 0x00E9D1 07:A9C1: 6E        .byte $6E
- D 1 - I - 0x00E9D2 07:A9C2: 0D        .byte $0D
- D 1 - I - 0x00E9D3 07:A9C3: 02        .byte $02
- D 1 - I - 0x00E9D4 07:A9C4: 06        .byte $06
- D 1 - I - 0x00E9D5 07:A9C5: 11        .byte $11

- D 1 - I - 0x00E9D6 07:A9C6: 85        .byte $85
- D 1 - I - 0x00E9D7 07:A9C7: 86        .byte $86
- D 1 - I - 0x00E9D8 07:A9C8: 87        .byte $87
- D 1 - I - 0x00E9D9 07:A9C9: 00        .byte $00
- D 1 - I - 0x00E9DA 07:A9CA: 00        .byte $00
- D 1 - I - 0x00E9DB 07:A9CB: 00        .byte $00
- D 1 - I - 0x00E9DC 07:A9CC: 88        .byte $88
- D 1 - I - 0x00E9DD 07:A9CD: 00        .byte $00
- D 1 - I - 0x00E9DE 07:A9CE: 00        .byte $00
- D 1 - I - 0x00E9DF 07:A9CF: 89        .byte $89
- D 1 - I - 0x00E9E0 07:A9D0: 8A        .byte $8A
- D 1 - I - 0x00E9E1 07:A9D1: 8B        .byte $8B

- - - - - - 0x00E9E2 07:A9D2: 00        .byte $00
- D 1 - I - 0x00E9E3 07:A9D3: A0        .byte $A0



_off012_A9D4_43_время_11_55:
- D 1 - I - 0x00E9E4 07:A9D4: 34        .byte $34
- D 1 - I - 0x00E9E5 07:A9D5: 36        .byte $36
- D 1 - I - 0x00E9E6 07:A9D6: 8E        .byte $8E
- D 1 - I - 0x00E9E7 07:A9D7: 02        .byte $02
- D 1 - I - 0x00E9E8 07:A9D8: 06        .byte $06
- D 1 - I - 0x00E9E9 07:A9D9: 11        .byte $11

- D 1 - I - 0x00E9EA 07:A9DA: 71        .byte $71
- D 1 - I - 0x00E9EB 07:A9DB: 72        .byte $72
- D 1 - I - 0x00E9EC 07:A9DC: 72        .byte $72
- D 1 - I - 0x00E9ED 07:A9DD: 73        .byte $73
- D 1 - I - 0x00E9EE 07:A9DE: 73        .byte $73
- D 1 - I - 0x00E9EF 07:A9DF: 74        .byte $74
- D 1 - I - 0x00E9F0 07:A9E0: 75        .byte $75
- D 1 - I - 0x00E9F1 07:A9E1: 76        .byte $76
- D 1 - I - 0x00E9F2 07:A9E2: 76        .byte $76
- D 1 - I - 0x00E9F3 07:A9E3: 77        .byte $77
- D 1 - I - 0x00E9F4 07:A9E4: 77        .byte $77
- D 1 - I - 0x00E9F5 07:A9E5: 78        .byte $78

- - - - - - 0x00E9F6 07:A9E6: 00        .byte $00
- D 1 - I - 0x00E9F7 07:A9E7: A0        .byte $A0



_off012_A9E8_44_трибуны_табло_в_прямоугольнике:
- D 1 - I - 0x00E9F8 07:A9E8: 3C        .byte $3C
- D 1 - I - 0x00E9F9 07:A9E9: 3E        .byte $3E
- D 1 - I - 0x00E9FA 07:A9EA: 00        .byte $00
- D 1 - I - 0x00E9FB 07:A9EB: 02        .byte $02
- D 1 - I - 0x00E9FC 07:A9EC: 04        .byte $04
- D 1 - I - 0x00E9FD 07:A9ED: 12        .byte $12

- D 1 - I - 0x00E9FE 07:A9EE: 01        .byte $01
- D 1 - I - 0x00E9FF 07:A9EF: 01        .byte $01
- D 1 - I - 0x00EA00 07:A9F0: 01        .byte $01
- D 1 - I - 0x00EA01 07:A9F1: 01        .byte $01
- D 1 - I - 0x00EA02 07:A9F2: 14        .byte $14
- D 1 - I - 0x00EA03 07:A9F3: 15        .byte $15
- D 1 - I - 0x00EA04 07:A9F4: 16        .byte $16
- D 1 - I - 0x00EA05 07:A9F5: 17        .byte $17

- - - - - - 0x00EA06 07:A9F6: 00        .byte $00
- D 1 - I - 0x00EA07 07:A9F7: A0        .byte $A0



_off012_A9F8_45_небо_цубаса_с_кубком_движение_влево:
- D 1 - I - 0x00EA08 07:A9F8: 5C        .byte $5C
- D 1 - I - 0x00EA09 07:A9F9: 5E        .byte $5E
- D 1 - I - 0x00EA0A 07:A9FA: 22        .byte $22
- D 1 - I - 0x00EA0B 07:A9FB: 03        .byte $03
- D 1 - I - 0x00EA0C 07:A9FC: 10        .byte $10
- D 1 - I - 0x00EA0D 07:A9FD: 08        .byte $08

- D 1 - I - 0x00EA0E 07:A9FE: 01        .byte $01
- D 1 - I - 0x00EA0F 07:A9FF: 01        .byte $01
- D 1 - I - 0x00EA10 07:AA00: 01        .byte $01
- D 1 - I - 0x00EA11 07:AA01: 01        .byte $01
- D 1 - I - 0x00EA12 07:AA02: 01        .byte $01
- D 1 - I - 0x00EA13 07:AA03: 01        .byte $01
- D 1 - I - 0x00EA14 07:AA04: 01        .byte $01
- D 1 - I - 0x00EA15 07:AA05: 01        .byte $01
- D 1 - I - 0x00EA16 07:AA06: 01        .byte $01
- D 1 - I - 0x00EA17 07:AA07: 01        .byte $01
- D 1 - I - 0x00EA18 07:AA08: 01        .byte $01
- D 1 - I - 0x00EA19 07:AA09: 01        .byte $01
- D 1 - I - 0x00EA1A 07:AA0A: 01        .byte $01
- D 1 - I - 0x00EA1B 07:AA0B: 01        .byte $01
- D 1 - I - 0x00EA1C 07:AA0C: 01        .byte $01
- D 1 - I - 0x00EA1D 07:AA0D: 01        .byte $01
- D 1 - I - 0x00EA1E 07:AA0E: 01        .byte $01
- D 1 - I - 0x00EA1F 07:AA0F: 01        .byte $01
- D 1 - I - 0x00EA20 07:AA10: 01        .byte $01
- D 1 - I - 0x00EA21 07:AA11: 01        .byte $01
- D 1 - I - 0x00EA22 07:AA12: 01        .byte $01
- D 1 - I - 0x00EA23 07:AA13: 01        .byte $01
- D 1 - I - 0x00EA24 07:AA14: 01        .byte $01
- D 1 - I - 0x00EA25 07:AA15: 01        .byte $01
- D 1 - I - 0x00EA26 07:AA16: 50        .byte $50
- D 1 - I - 0x00EA27 07:AA17: 51        .byte $51
- D 1 - I - 0x00EA28 07:AA18: 3C        .byte $3C
- D 1 - I - 0x00EA29 07:AA19: 01        .byte $01
- D 1 - I - 0x00EA2A 07:AA1A: 01        .byte $01
- D 1 - I - 0x00EA2B 07:AA1B: 01        .byte $01
- D 1 - I - 0x00EA2C 07:AA1C: 01        .byte $01
- D 1 - I - 0x00EA2D 07:AA1D: 3D        .byte $3D
- D 1 - I - 0x00EA2E 07:AA1E: 01        .byte $01
- D 1 - I - 0x00EA2F 07:AA1F: 01        .byte $01
- D 1 - I - 0x00EA30 07:AA20: 01        .byte $01
- D 1 - I - 0x00EA31 07:AA21: 01        .byte $01
- D 1 - I - 0x00EA32 07:AA22: 01        .byte $01
- D 1 - I - 0x00EA33 07:AA23: 01        .byte $01
- D 1 - I - 0x00EA34 07:AA24: 01        .byte $01
- D 1 - I - 0x00EA35 07:AA25: 01        .byte $01
- D 1 - I - 0x00EA36 07:AA26: 52        .byte $52
- D 1 - I - 0x00EA37 07:AA27: 53        .byte $53
- D 1 - I - 0x00EA38 07:AA28: 01        .byte $01
- D 1 - I - 0x00EA39 07:AA29: 01        .byte $01
- D 1 - I - 0x00EA3A 07:AA2A: 39        .byte $39
- D 1 - I - 0x00EA3B 07:AA2B: 3A        .byte $3A
- D 1 - I - 0x00EA3C 07:AA2C: 3B        .byte $3B
- D 1 - I - 0x00EA3D 07:AA2D: 01        .byte $01
- D 1 - I - 0x00EA3E 07:AA2E: 00        .byte $00

- D 1 - I - 0x00EA3F 07:AA2F: 22        .byte $22
- D 1 - I - 0x00EA40 07:AA30: 07        .byte $07



_off012_AA31_46_угол_йоко_ишизаки_подглядывают:
- D 1 - I - 0x00EA41 07:AA31: 44        .byte $44
- D 1 - I - 0x00EA42 07:AA32: 46        .byte $46
- D 1 - I - 0x00EA43 07:AA33: 10        .byte $10
- D 1 - I - 0x00EA44 07:AA34: 03        .byte $03
- D 1 - I - 0x00EA45 07:AA35: 06        .byte $06
- D 1 - I - 0x00EA46 07:AA36: 09        .byte $09

- D 1 - I - 0x00EA47 07:AA37: 00        .byte $00
- D 1 - I - 0x00EA48 07:AA38: 02        .byte $02
- D 1 - I - 0x00EA49 07:AA39: 68        .byte $68
- D 1 - I - 0x00EA4A 07:AA3A: 03        .byte $03
- D 1 - I - 0x00EA4B 07:AA3B: 03        .byte $03
- D 1 - I - 0x00EA4C 07:AA3C: 03        .byte $03
- D 1 - I - 0x00EA4D 07:AA3D: 00        .byte $00
- D 1 - I - 0x00EA4E 07:AA3E: 02        .byte $02
- D 1 - I - 0x00EA4F 07:AA3F: 60        .byte $60
- D 1 - I - 0x00EA50 07:AA40: 03        .byte $03
- D 1 - I - 0x00EA51 07:AA41: 03        .byte $03
- D 1 - I - 0x00EA52 07:AA42: 03        .byte $03
- D 1 - I - 0x00EA53 07:AA43: 61        .byte $61
- D 1 - I - 0x00EA54 07:AA44: 62        .byte $62
- D 1 - I - 0x00EA55 07:AA45: 63        .byte $63
- D 1 - I - 0x00EA56 07:AA46: 64        .byte $64
- D 1 - I - 0x00EA57 07:AA47: 64        .byte $64
- D 1 - I - 0x00EA58 07:AA48: 64        .byte $64

- - - - - - 0x00EA59 07:AA49: 00        .byte $00
- D 1 - I - 0x00EA5A 07:AA4A: A0        .byte $A0



_off012_AA4B_47_коридор_лестница_йоко:
- D 1 - I - 0x00EA5B 07:AA4B: 44        .byte $44
- D 1 - I - 0x00EA5C 07:AA4C: 46        .byte $46
- D 1 - I - 0x00EA5D 07:AA4D: 10        .byte $10
- D 1 - I - 0x00EA5E 07:AA4E: 02        .byte $02
- D 1 - I - 0x00EA5F 07:AA4F: 08        .byte $08
- D 1 - I - 0x00EA60 07:AA50: 10        .byte $10

- D 1 - I - 0x00EA61 07:AA51: 02        .byte $02
- D 1 - I - 0x00EA62 07:AA52: 02        .byte $02
- D 1 - I - 0x00EA63 07:AA53: 68        .byte $68
- D 1 - I - 0x00EA64 07:AA54: 02        .byte $02
- D 1 - I - 0x00EA65 07:AA55: 02        .byte $02
- D 1 - I - 0x00EA66 07:AA56: 02        .byte $02
- D 1 - I - 0x00EA67 07:AA57: 68        .byte $68
- D 1 - I - 0x00EA68 07:AA58: 69        .byte $69
- D 1 - I - 0x00EA69 07:AA59: 65        .byte $65
- D 1 - I - 0x00EA6A 07:AA5A: 65        .byte $65
- D 1 - I - 0x00EA6B 07:AA5B: 66        .byte $66
- D 1 - I - 0x00EA6C 07:AA5C: 65        .byte $65
- D 1 - I - 0x00EA6D 07:AA5D: 65        .byte $65
- D 1 - I - 0x00EA6E 07:AA5E: 65        .byte $65
- D 1 - I - 0x00EA6F 07:AA5F: 66        .byte $66
- D 1 - I - 0x00EA70 07:AA60: 67        .byte $67

- - - - - - 0x00EA71 07:AA61: 00        .byte $00
- D 1 - I - 0x00EA72 07:AA62: A0        .byte $A0



_off012_AA63_48_трибуны_лестница_пауза_медленное_движение_вправо:
- D 1 - I - 0x00EA73 07:AA63: 5C        .byte $5C
- D 1 - I - 0x00EA74 07:AA64: 5E        .byte $5E
- D 1 - I - 0x00EA75 07:AA65: 06        .byte $06
- D 1 - I - 0x00EA76 07:AA66: 02        .byte $02
- D 1 - I - 0x00EA77 07:AA67: 08        .byte $08
- D 1 - I - 0x00EA78 07:AA68: 10        .byte $10

- D 1 - I - 0x00EA79 07:AA69: A5        .byte $A5
- D 1 - I - 0x00EA7A 07:AA6A: A6        .byte $A6
- D 1 - I - 0x00EA7B 07:AA6B: A7        .byte $A7
- D 1 - I - 0x00EA7C 07:AA6C: A7        .byte $A7
- D 1 - I - 0x00EA7D 07:AA6D: A7        .byte $A7
- D 1 - I - 0x00EA7E 07:AA6E: A7        .byte $A7
- D 1 - I - 0x00EA7F 07:AA6F: A7        .byte $A7
- D 1 - I - 0x00EA80 07:AA70: A8        .byte $A8
- D 1 - I - 0x00EA81 07:AA71: A9        .byte $A9
- D 1 - I - 0x00EA82 07:AA72: 4F        .byte $4F
- D 1 - I - 0x00EA83 07:AA73: AA        .byte $AA
- D 1 - I - 0x00EA84 07:AA74: FF        .byte $FF
- D 1 - I - 0x00EA85 07:AA75: FF        .byte $FF
- D 1 - I - 0x00EA86 07:AA76: FF        .byte $FF
- D 1 - I - 0x00EA87 07:AA77: FF        .byte $FF
- D 1 - I - 0x00EA88 07:AA78: A9        .byte $A9
- D 1 - I - 0x00EA89 07:AA79: 3C        .byte $3C

- D 1 - I - 0x00EA8A 07:AA7A: A4        .byte $A4
- D 1 - I - 0x00EA8B 07:AA7B: 08        .byte $08



_off012_AA7C_49_тень_под_трибунами_коимбра:
- D 1 - I - 0x00EA8C 07:AA7C: 3C        .byte $3C
- D 1 - I - 0x00EA8D 07:AA7D: 6A        .byte $6A
- D 1 - I - 0x00EA8E 07:AA7E: 0B        .byte $0B
- D 1 - I - 0x00EA8F 07:AA7F: 02        .byte $02
- D 1 - I - 0x00EA90 07:AA80: 03        .byte $03
- D 1 - I - 0x00EA91 07:AA81: 15        .byte $15

- D 1 - I - 0x00EA92 07:AA82: 7A        .byte $7A
- D 1 - I - 0x00EA93 07:AA83: 01        .byte $01
- D 1 - I - 0x00EA94 07:AA84: 01        .byte $01
- D 1 - I - 0x00EA95 07:AA85: 7F        .byte $7F
- D 1 - I - 0x00EA96 07:AA86: 14        .byte $14
- D 1 - I - 0x00EA97 07:AA87: 15        .byte $15

- - - - - - 0x00EA98 07:AA88: 00        .byte $00
- D 1 - I - 0x00EA99 07:AA89: A0        .byte $A0



_off012_AA8A_4A_под_трибунами_карлос:
- D 1 - I - 0x00EA9A 07:AA8A: 3C        .byte $3C
- D 1 - I - 0x00EA9B 07:AA8B: 6A        .byte $6A
- D 1 - I - 0x00EA9C 07:AA8C: 00        .byte $00
- D 1 - I - 0x00EA9D 07:AA8D: 02        .byte $02
- D 1 - I - 0x00EA9E 07:AA8E: 08        .byte $08
- D 1 - I - 0x00EA9F 07:AA8F: 10        .byte $10

- D 1 - I - 0x00EAA0 07:AA90: 01        .byte $01
- D 1 - I - 0x00EAA1 07:AA91: 01        .byte $01
- D 1 - I - 0x00EAA2 07:AA92: 01        .byte $01
- D 1 - I - 0x00EAA3 07:AA93: 01        .byte $01
- D 1 - I - 0x00EAA4 07:AA94: 01        .byte $01
- D 1 - I - 0x00EAA5 07:AA95: 01        .byte $01
- D 1 - I - 0x00EAA6 07:AA96: 01        .byte $01
- D 1 - I - 0x00EAA7 07:AA97: 30        .byte $30
- D 1 - I - 0x00EAA8 07:AA98: 16        .byte $16
- D 1 - I - 0x00EAA9 07:AA99: 17        .byte $17
- D 1 - I - 0x00EAAA 07:AA9A: 12        .byte $12
- D 1 - I - 0x00EAAB 07:AA9B: 13        .byte $13
- D 1 - I - 0x00EAAC 07:AA9C: 12        .byte $12
- D 1 - I - 0x00EAAD 07:AA9D: 13        .byte $13
- D 1 - I - 0x00EAAE 07:AA9E: 12        .byte $12
- D 1 - I - 0x00EAAF 07:AA9F: 31        .byte $31

- - - - - - 0x00EAB0 07:AAA0: 00        .byte $00
- D 1 - I - 0x00EAB1 07:AAA1: A0        .byte $A0



_off012_AAA2_4B_санае_крупным_планом_смотрит_вправо:
- D 1 - I - 0x00EAB2 07:AAA2: 68        .byte $68
- D 1 - I - 0x00EAB3 07:AAA3: 6A        .byte $6A
- D 1 - I - 0x00EAB4 07:AAA4: 92        .byte $92
- D 1 - I - 0x00EAB5 07:AAA5: 02        .byte $02
- D 1 - I - 0x00EAB6 07:AAA6: 08        .byte $08
- D 1 - I - 0x00EAB7 07:AAA7: 10        .byte $10

- D 1 - I - 0x00EAB8 07:AAA8: 01        .byte $01
- D 1 - I - 0x00EAB9 07:AAA9: 01        .byte $01
- D 1 - I - 0x00EABA 07:AAAA: 5D        .byte $5D
- D 1 - I - 0x00EABB 07:AAAB: 5E        .byte $5E
- D 1 - I - 0x00EABC 07:AAAC: 5F        .byte $5F
- D 1 - I - 0x00EABD 07:AAAD: 60        .byte $60
- D 1 - I - 0x00EABE 07:AAAE: 01        .byte $01
- D 1 - I - 0x00EABF 07:AAAF: 01        .byte $01
- D 1 - I - 0x00EAC0 07:AAB0: 01        .byte $01
- D 1 - I - 0x00EAC1 07:AAB1: 01        .byte $01
- D 1 - I - 0x00EAC2 07:AAB2: 61        .byte $61
- D 1 - I - 0x00EAC3 07:AAB3: 62        .byte $62
- D 1 - I - 0x00EAC4 07:AAB4: 63        .byte $63
- D 1 - I - 0x00EAC5 07:AAB5: 64        .byte $64
- D 1 - I - 0x00EAC6 07:AAB6: 01        .byte $01
- D 1 - I - 0x00EAC7 07:AAB7: 01        .byte $01

- - - - - - 0x00EAC8 07:AAB8: 00        .byte $00
- D 1 - I - 0x00EAC9 07:AAB9: A0        .byte $A0



_off012_AABA_4C_коридор_ишизаки:
- D 1 - I - 0x00EACA 07:AABA: 44        .byte $44
- D 1 - I - 0x00EACB 07:AABB: 46        .byte $46
- D 1 - I - 0x00EACC 07:AABC: 10        .byte $10
- D 1 - I - 0x00EACD 07:AABD: 02        .byte $02
- D 1 - I - 0x00EACE 07:AABE: 08        .byte $08
- D 1 - I - 0x00EACF 07:AABF: 10        .byte $10

- D 1 - I - 0x00EAD0 07:AAC0: 02        .byte $02
- D 1 - I - 0x00EAD1 07:AAC1: 68        .byte $68
- D 1 - I - 0x00EAD2 07:AAC2: 02        .byte $02
- D 1 - I - 0x00EAD3 07:AAC3: 02        .byte $02
- D 1 - I - 0x00EAD4 07:AAC4: 02        .byte $02
- D 1 - I - 0x00EAD5 07:AAC5: 68        .byte $68
- D 1 - I - 0x00EAD6 07:AAC6: 02        .byte $02
- D 1 - I - 0x00EAD7 07:AAC7: 02        .byte $02
- D 1 - I - 0x00EAD8 07:AAC8: 65        .byte $65
- D 1 - I - 0x00EAD9 07:AAC9: 66        .byte $66
- D 1 - I - 0x00EADA 07:AACA: 65        .byte $65
- D 1 - I - 0x00EADB 07:AACB: 65        .byte $65
- D 1 - I - 0x00EADC 07:AACC: 65        .byte $65
- D 1 - I - 0x00EADD 07:AACD: 66        .byte $66
- D 1 - I - 0x00EADE 07:AACE: 65        .byte $65
- D 1 - I - 0x00EADF 07:AACF: 65        .byte $65

- - - - - - 0x00EAE0 07:AAD0: 00        .byte $00
- D 1 - I - 0x00EAE1 07:AAD1: A0        .byte $A0



_off012_AAD2_4D_цубаса_крупным_планом_рука_у_виска:
- D 1 - I - 0x00EAE2 07:AAD2: 60        .byte $60
- D 1 - I - 0x00EAE3 07:AAD3: 62        .byte $62
- D 1 - I - 0x00EAE4 07:AAD4: 96        .byte $96
- D 1 - I - 0x00EAE5 07:AAD5: 02        .byte $02
- D 1 - I - 0x00EAE6 07:AAD6: 08        .byte $08
- D 1 - I - 0x00EAE7 07:AAD7: 10        .byte $10

- D 1 - I - 0x00EAE8 07:AAD8: 01        .byte $01
- D 1 - I - 0x00EAE9 07:AAD9: 01        .byte $01
- D 1 - I - 0x00EAEA 07:AADA: 3B        .byte $3B
- D 1 - I - 0x00EAEB 07:AADB: 3C        .byte $3C
- D 1 - I - 0x00EAEC 07:AADC: 3D        .byte $3D
- D 1 - I - 0x00EAED 07:AADD: 3E        .byte $3E
- D 1 - I - 0x00EAEE 07:AADE: 3F        .byte $3F
- D 1 - I - 0x00EAEF 07:AADF: 40        .byte $40
- D 1 - I - 0x00EAF0 07:AAE0: 01        .byte $01
- D 1 - I - 0x00EAF1 07:AAE1: 01        .byte $01
- D 1 - I - 0x00EAF2 07:AAE2: 41        .byte $41
- D 1 - I - 0x00EAF3 07:AAE3: 42        .byte $42
- D 1 - I - 0x00EAF4 07:AAE4: 43        .byte $43
- D 1 - I - 0x00EAF5 07:AAE5: 44        .byte $44
- D 1 - I - 0x00EAF6 07:AAE6: 45        .byte $45
- D 1 - I - 0x00EAF7 07:AAE7: 46        .byte $46

- - - - - - 0x00EAF8 07:AAE8: 00        .byte $00
- D 1 - I - 0x00EAF9 07:AAE9: A0        .byte $A0



_off012_AAEA_4E_цубаса_с_рукой_у_виска_трибуны_движение_вверх:
- D 1 - I - 0x00EAFA 07:AAEA: 5C        .byte $5C
- D 1 - I - 0x00EAFB 07:AAEB: 5E        .byte $5E
- D 1 - I - 0x00EAFC 07:AAEC: 06        .byte $06
- D 1 - I - 0x00EAFD 07:AAED: 2E        .byte $2E
- D 1 - I - 0x00EAFE 07:AAEE: 08        .byte $08
- D 1 - I - 0x00EAFF 07:AAEF: 5F        .byte $5F

- D 1 - I - 0x00EB00 07:AAF0: 01        .byte $01
- D 1 - I - 0x00EB01 07:AAF1: 01        .byte $01
- D 1 - I - 0x00EB02 07:AAF2: 01        .byte $01
- D 1 - I - 0x00EB03 07:AAF3: 01        .byte $01
- D 1 - I - 0x00EB04 07:AAF4: 01        .byte $01
- D 1 - I - 0x00EB05 07:AAF5: 01        .byte $01
- D 1 - I - 0x00EB06 07:AAF6: 01        .byte $01
- D 1 - I - 0x00EB07 07:AAF7: 3C        .byte $3C
- D 1 - I - 0x00EB08 07:AAF8: 01        .byte $01
- D 1 - I - 0x00EB09 07:AAF9: 01        .byte $01
- D 1 - I - 0x00EB0A 07:AAFA: 3D        .byte $3D
- D 1 - I - 0x00EB0B 07:AAFB: 01        .byte $01
- D 1 - I - 0x00EB0C 07:AAFC: 01        .byte $01
- D 1 - I - 0x00EB0D 07:AAFD: 01        .byte $01
- D 1 - I - 0x00EB0E 07:AAFE: 01        .byte $01
- D 1 - I - 0x00EB0F 07:AAFF: 01        .byte $01
- D 1 - I - 0x00EB10 07:AB00: 01        .byte $01
- D 1 - I - 0x00EB11 07:AB01: 01        .byte $01
- D 1 - I - 0x00EB12 07:AB02: 01        .byte $01
- D 1 - I - 0x00EB13 07:AB03: 01        .byte $01
- D 1 - I - 0x00EB14 07:AB04: 01        .byte $01
- D 1 - I - 0x00EB15 07:AB05: 83        .byte $83
- D 1 - I - 0x00EB16 07:AB06: 84        .byte $84
- D 1 - I - 0x00EB17 07:AB07: 01        .byte $01
- D 1 - I - 0x00EB18 07:AB08: 01        .byte $01
- D 1 - I - 0x00EB19 07:AB09: 01        .byte $01
- D 1 - I - 0x00EB1A 07:AB0A: 01        .byte $01
- D 1 - I - 0x00EB1B 07:AB0B: 01        .byte $01
- D 1 - I - 0x00EB1C 07:AB0C: 01        .byte $01
- D 1 - I - 0x00EB1D 07:AB0D: 01        .byte $01
- D 1 - I - 0x00EB1E 07:AB0E: 01        .byte $01
- D 1 - I - 0x00EB1F 07:AB0F: 01        .byte $01
- D 1 - I - 0x00EB20 07:AB10: 01        .byte $01
- D 1 - I - 0x00EB21 07:AB11: 01        .byte $01
- D 1 - I - 0x00EB22 07:AB12: 01        .byte $01
- D 1 - I - 0x00EB23 07:AB13: 01        .byte $01
- D 1 - I - 0x00EB24 07:AB14: 01        .byte $01
- D 1 - I - 0x00EB25 07:AB15: 01        .byte $01
- D 1 - I - 0x00EB26 07:AB16: 01        .byte $01
- D 1 - I - 0x00EB27 07:AB17: 01        .byte $01
- D 1 - I - 0x00EB28 07:AB18: 83        .byte $83
- D 1 - I - 0x00EB29 07:AB19: 84        .byte $84
- D 1 - I - 0x00EB2A 07:AB1A: 01        .byte $01
- D 1 - I - 0x00EB2B 07:AB1B: 01        .byte $01
- D 1 - I - 0x00EB2C 07:AB1C: 3D        .byte $3D
- D 1 - I - 0x00EB2D 07:AB1D: 01        .byte $01
- D 1 - I - 0x00EB2E 07:AB1E: 01        .byte $01
- D 1 - I - 0x00EB2F 07:AB1F: 01        .byte $01
- D 1 - I - 0x00EB30 07:AB20: 01        .byte $01
- D 1 - I - 0x00EB31 07:AB21: 01        .byte $01
- D 1 - I - 0x00EB32 07:AB22: 01        .byte $01
- D 1 - I - 0x00EB33 07:AB23: 01        .byte $01
- D 1 - I - 0x00EB34 07:AB24: 01        .byte $01
- D 1 - I - 0x00EB35 07:AB25: 01        .byte $01
- D 1 - I - 0x00EB36 07:AB26: 01        .byte $01
- D 1 - I - 0x00EB37 07:AB27: 01        .byte $01
- D 1 - I - 0x00EB38 07:AB28: 01        .byte $01
- D 1 - I - 0x00EB39 07:AB29: 3C        .byte $3C
- D 1 - I - 0x00EB3A 07:AB2A: 01        .byte $01
- D 1 - I - 0x00EB3B 07:AB2B: 01        .byte $01
- D 1 - I - 0x00EB3C 07:AB2C: 01        .byte $01
- D 1 - I - 0x00EB3D 07:AB2D: 01        .byte $01
- D 1 - I - 0x00EB3E 07:AB2E: 01        .byte $01
- D 1 - I - 0x00EB3F 07:AB2F: 01        .byte $01
- D 1 - I - 0x00EB40 07:AB30: 01        .byte $01
- D 1 - I - 0x00EB41 07:AB31: 01        .byte $01
- D 1 - I - 0x00EB42 07:AB32: 01        .byte $01
- D 1 - I - 0x00EB43 07:AB33: 01        .byte $01
- D 1 - I - 0x00EB44 07:AB34: 01        .byte $01
- D 1 - I - 0x00EB45 07:AB35: 01        .byte $01
- D 1 - I - 0x00EB46 07:AB36: 01        .byte $01
- D 1 - I - 0x00EB47 07:AB37: 01        .byte $01
- D 1 - I - 0x00EB48 07:AB38: 01        .byte $01
- D 1 - I - 0x00EB49 07:AB39: 01        .byte $01
- D 1 - I - 0x00EB4A 07:AB3A: 01        .byte $01
- D 1 - I - 0x00EB4B 07:AB3B: 01        .byte $01
- D 1 - I - 0x00EB4C 07:AB3C: 01        .byte $01
- D 1 - I - 0x00EB4D 07:AB3D: 01        .byte $01
- D 1 - I - 0x00EB4E 07:AB3E: 01        .byte $01
- D 1 - I - 0x00EB4F 07:AB3F: 01        .byte $01
- D 1 - I - 0x00EB50 07:AB40: 01        .byte $01
- D 1 - I - 0x00EB51 07:AB41: 01        .byte $01
- D 1 - I - 0x00EB52 07:AB42: 01        .byte $01
- D 1 - I - 0x00EB53 07:AB43: 01        .byte $01
- D 1 - I - 0x00EB54 07:AB44: 01        .byte $01
- D 1 - I - 0x00EB55 07:AB45: 01        .byte $01
- D 1 - I - 0x00EB56 07:AB46: 3C        .byte $3C
- D 1 - I - 0x00EB57 07:AB47: 01        .byte $01
- D 1 - I - 0x00EB58 07:AB48: 01        .byte $01
- D 1 - I - 0x00EB59 07:AB49: 3C        .byte $3C
- D 1 - I - 0x00EB5A 07:AB4A: 01        .byte $01
- D 1 - I - 0x00EB5B 07:AB4B: 01        .byte $01
- D 1 - I - 0x00EB5C 07:AB4C: 01        .byte $01
- D 1 - I - 0x00EB5D 07:AB4D: 01        .byte $01
- D 1 - I - 0x00EB5E 07:AB4E: 01        .byte $01
- D 1 - I - 0x00EB5F 07:AB4F: 01        .byte $01
- D 1 - I - 0x00EB60 07:AB50: 01        .byte $01
- D 1 - I - 0x00EB61 07:AB51: 01        .byte $01
- D 1 - I - 0x00EB62 07:AB52: 01        .byte $01
- D 1 - I - 0x00EB63 07:AB53: 01        .byte $01
- D 1 - I - 0x00EB64 07:AB54: 3C        .byte $3C
- D 1 - I - 0x00EB65 07:AB55: 01        .byte $01
- D 1 - I - 0x00EB66 07:AB56: 01        .byte $01
- D 1 - I - 0x00EB67 07:AB57: 01        .byte $01
- D 1 - I - 0x00EB68 07:AB58: 01        .byte $01
- D 1 - I - 0x00EB69 07:AB59: 01        .byte $01
- D 1 - I - 0x00EB6A 07:AB5A: 01        .byte $01
- D 1 - I - 0x00EB6B 07:AB5B: 01        .byte $01
- D 1 - I - 0x00EB6C 07:AB5C: 01        .byte $01
- D 1 - I - 0x00EB6D 07:AB5D: 01        .byte $01
- D 1 - I - 0x00EB6E 07:AB5E: 01        .byte $01
- D 1 - I - 0x00EB6F 07:AB5F: 01        .byte $01
- D 1 - I - 0x00EB70 07:AB60: 01        .byte $01
- D 1 - I - 0x00EB71 07:AB61: 3C        .byte $3C
- D 1 - I - 0x00EB72 07:AB62: 01        .byte $01
- D 1 - I - 0x00EB73 07:AB63: 01        .byte $01
- D 1 - I - 0x00EB74 07:AB64: 01        .byte $01
- D 1 - I - 0x00EB75 07:AB65: 01        .byte $01
- D 1 - I - 0x00EB76 07:AB66: 01        .byte $01
- D 1 - I - 0x00EB77 07:AB67: 3C        .byte $3C
- D 1 - I - 0x00EB78 07:AB68: 01        .byte $01
- D 1 - I - 0x00EB79 07:AB69: 01        .byte $01
- D 1 - I - 0x00EB7A 07:AB6A: 01        .byte $01
- D 1 - I - 0x00EB7B 07:AB6B: 83        .byte $83
- D 1 - I - 0x00EB7C 07:AB6C: 84        .byte $84
- D 1 - I - 0x00EB7D 07:AB6D: 01        .byte $01
- D 1 - I - 0x00EB7E 07:AB6E: 01        .byte $01
- D 1 - I - 0x00EB7F 07:AB6F: 01        .byte $01
- D 1 - I - 0x00EB80 07:AB70: 3C        .byte $3C
- D 1 - I - 0x00EB81 07:AB71: 01        .byte $01
- D 1 - I - 0x00EB82 07:AB72: 01        .byte $01
- D 1 - I - 0x00EB83 07:AB73: 01        .byte $01
- D 1 - I - 0x00EB84 07:AB74: 01        .byte $01
- D 1 - I - 0x00EB85 07:AB75: 01        .byte $01
- D 1 - I - 0x00EB86 07:AB76: 01        .byte $01
- D 1 - I - 0x00EB87 07:AB77: 01        .byte $01
- D 1 - I - 0x00EB88 07:AB78: 01        .byte $01
- D 1 - I - 0x00EB89 07:AB79: 01        .byte $01
- D 1 - I - 0x00EB8A 07:AB7A: 01        .byte $01
- D 1 - I - 0x00EB8B 07:AB7B: 01        .byte $01
- D 1 - I - 0x00EB8C 07:AB7C: 01        .byte $01
- D 1 - I - 0x00EB8D 07:AB7D: 01        .byte $01
- D 1 - I - 0x00EB8E 07:AB7E: 01        .byte $01
- D 1 - I - 0x00EB8F 07:AB7F: 3D        .byte $3D
- D 1 - I - 0x00EB90 07:AB80: 01        .byte $01
- D 1 - I - 0x00EB91 07:AB81: 01        .byte $01
- D 1 - I - 0x00EB92 07:AB82: 01        .byte $01
- D 1 - I - 0x00EB93 07:AB83: 01        .byte $01
- D 1 - I - 0x00EB94 07:AB84: 01        .byte $01
- D 1 - I - 0x00EB95 07:AB85: 01        .byte $01
- D 1 - I - 0x00EB96 07:AB86: 01        .byte $01
- D 1 - I - 0x00EB97 07:AB87: 01        .byte $01
- D 1 - I - 0x00EB98 07:AB88: 01        .byte $01
- D 1 - I - 0x00EB99 07:AB89: 01        .byte $01
- D 1 - I - 0x00EB9A 07:AB8A: 01        .byte $01
- D 1 - I - 0x00EB9B 07:AB8B: 01        .byte $01
- D 1 - I - 0x00EB9C 07:AB8C: 01        .byte $01
- D 1 - I - 0x00EB9D 07:AB8D: 01        .byte $01
- D 1 - I - 0x00EB9E 07:AB8E: 3D        .byte $3D
- D 1 - I - 0x00EB9F 07:AB8F: 01        .byte $01
- D 1 - I - 0x00EBA0 07:AB90: 01        .byte $01
- D 1 - I - 0x00EBA1 07:AB91: 3D        .byte $3D
- D 1 - I - 0x00EBA2 07:AB92: 01        .byte $01
- D 1 - I - 0x00EBA3 07:AB93: 01        .byte $01
- D 1 - I - 0x00EBA4 07:AB94: 01        .byte $01
- D 1 - I - 0x00EBA5 07:AB95: 01        .byte $01
- D 1 - I - 0x00EBA6 07:AB96: 01        .byte $01
- D 1 - I - 0x00EBA7 07:AB97: 01        .byte $01
- D 1 - I - 0x00EBA8 07:AB98: 01        .byte $01
- D 1 - I - 0x00EBA9 07:AB99: 01        .byte $01
- D 1 - I - 0x00EBAA 07:AB9A: 01        .byte $01
- D 1 - I - 0x00EBAB 07:AB9B: 01        .byte $01
- D 1 - I - 0x00EBAC 07:AB9C: 01        .byte $01
- D 1 - I - 0x00EBAD 07:AB9D: 01        .byte $01
- D 1 - I - 0x00EBAE 07:AB9E: 01        .byte $01
- D 1 - I - 0x00EBAF 07:AB9F: 01        .byte $01
- D 1 - I - 0x00EBB0 07:ABA0: 01        .byte $01
- D 1 - I - 0x00EBB1 07:ABA1: 01        .byte $01
- D 1 - I - 0x00EBB2 07:ABA2: 01        .byte $01
- D 1 - I - 0x00EBB3 07:ABA3: 01        .byte $01
- D 1 - I - 0x00EBB4 07:ABA4: 01        .byte $01
- D 1 - I - 0x00EBB5 07:ABA5: 01        .byte $01
- D 1 - I - 0x00EBB6 07:ABA6: 01        .byte $01
- D 1 - I - 0x00EBB7 07:ABA7: 01        .byte $01
- D 1 - I - 0x00EBB8 07:ABA8: 01        .byte $01
- D 1 - I - 0x00EBB9 07:ABA9: 01        .byte $01
- D 1 - I - 0x00EBBA 07:ABAA: 01        .byte $01
- D 1 - I - 0x00EBBB 07:ABAB: 01        .byte $01
- D 1 - I - 0x00EBBC 07:ABAC: 01        .byte $01
- D 1 - I - 0x00EBBD 07:ABAD: 01        .byte $01
- D 1 - I - 0x00EBBE 07:ABAE: 01        .byte $01
- D 1 - I - 0x00EBBF 07:ABAF: 01        .byte $01
- D 1 - I - 0x00EBC0 07:ABB0: 01        .byte $01
- D 1 - I - 0x00EBC1 07:ABB1: 01        .byte $01
- D 1 - I - 0x00EBC2 07:ABB2: 01        .byte $01
- D 1 - I - 0x00EBC3 07:ABB3: 01        .byte $01
- D 1 - I - 0x00EBC4 07:ABB4: 01        .byte $01
- D 1 - I - 0x00EBC5 07:ABB5: 01        .byte $01
- D 1 - I - 0x00EBC6 07:ABB6: 01        .byte $01
- D 1 - I - 0x00EBC7 07:ABB7: 01        .byte $01
- D 1 - I - 0x00EBC8 07:ABB8: 01        .byte $01
- D 1 - I - 0x00EBC9 07:ABB9: 01        .byte $01
- D 1 - I - 0x00EBCA 07:ABBA: 01        .byte $01
- D 1 - I - 0x00EBCB 07:ABBB: 01        .byte $01
- D 1 - I - 0x00EBCC 07:ABBC: 01        .byte $01
- D 1 - I - 0x00EBCD 07:ABBD: 01        .byte $01
- D 1 - I - 0x00EBCE 07:ABBE: 01        .byte $01
- D 1 - I - 0x00EBCF 07:ABBF: 01        .byte $01
- D 1 - I - 0x00EBD0 07:ABC0: 01        .byte $01
- D 1 - I - 0x00EBD1 07:ABC1: 01        .byte $01
- D 1 - I - 0x00EBD2 07:ABC2: 01        .byte $01
- D 1 - I - 0x00EBD3 07:ABC3: 01        .byte $01
- D 1 - I - 0x00EBD4 07:ABC4: 01        .byte $01
- D 1 - I - 0x00EBD5 07:ABC5: 01        .byte $01
- D 1 - I - 0x00EBD6 07:ABC6: 01        .byte $01
- D 1 - I - 0x00EBD7 07:ABC7: 01        .byte $01
- D 1 - I - 0x00EBD8 07:ABC8: 01        .byte $01
- D 1 - I - 0x00EBD9 07:ABC9: 01        .byte $01
- D 1 - I - 0x00EBDA 07:ABCA: 01        .byte $01
- D 1 - I - 0x00EBDB 07:ABCB: 01        .byte $01
- D 1 - I - 0x00EBDC 07:ABCC: 01        .byte $01
- D 1 - I - 0x00EBDD 07:ABCD: 01        .byte $01
- D 1 - I - 0x00EBDE 07:ABCE: 01        .byte $01
- D 1 - I - 0x00EBDF 07:ABCF: 01        .byte $01
- D 1 - I - 0x00EBE0 07:ABD0: BB        .byte $BB
- D 1 - I - 0x00EBE1 07:ABD1: BC        .byte $BC
- D 1 - I - 0x00EBE2 07:ABD2: BC        .byte $BC
- D 1 - I - 0x00EBE3 07:ABD3: BC        .byte $BC
- D 1 - I - 0x00EBE4 07:ABD4: BC        .byte $BC
- D 1 - I - 0x00EBE5 07:ABD5: BC        .byte $BC
- D 1 - I - 0x00EBE6 07:ABD6: BB        .byte $BB
- D 1 - I - 0x00EBE7 07:ABD7: BC        .byte $BC
- D 1 - I - 0x00EBE8 07:ABD8: B9        .byte $B9
- D 1 - I - 0x00EBE9 07:ABD9: BA        .byte $BA
- D 1 - I - 0x00EBEA 07:ABDA: BA        .byte $BA
- D 1 - I - 0x00EBEB 07:ABDB: BA        .byte $BA
- D 1 - I - 0x00EBEC 07:ABDC: BA        .byte $BA
- D 1 - I - 0x00EBED 07:ABDD: BA        .byte $BA
- D 1 - I - 0x00EBEE 07:ABDE: B9        .byte $B9
- D 1 - I - 0x00EBEF 07:ABDF: BA        .byte $BA
- D 1 - I - 0x00EBF0 07:ABE0: B7        .byte $B7
- D 1 - I - 0x00EBF1 07:ABE1: B8        .byte $B8
- D 1 - I - 0x00EBF2 07:ABE2: B7        .byte $B7
- D 1 - I - 0x00EBF3 07:ABE3: B7        .byte $B7
- D 1 - I - 0x00EBF4 07:ABE4: B7        .byte $B7
- D 1 - I - 0x00EBF5 07:ABE5: B7        .byte $B7
- D 1 - I - 0x00EBF6 07:ABE6: B7        .byte $B7
- D 1 - I - 0x00EBF7 07:ABE7: B8        .byte $B8
- D 1 - I - 0x00EBF8 07:ABE8: B6        .byte $B6
- D 1 - I - 0x00EBF9 07:ABE9: B6        .byte $B6
- D 1 - I - 0x00EBFA 07:ABEA: B6        .byte $B6
- D 1 - I - 0x00EBFB 07:ABEB: B6        .byte $B6
- D 1 - I - 0x00EBFC 07:ABEC: B6        .byte $B6
- D 1 - I - 0x00EBFD 07:ABED: B6        .byte $B6
- D 1 - I - 0x00EBFE 07:ABEE: B6        .byte $B6
- D 1 - I - 0x00EBFF 07:ABEF: B6        .byte $B6
- D 1 - I - 0x00EC00 07:ABF0: AF        .byte $AF
- D 1 - I - 0x00EC01 07:ABF1: AF        .byte $AF
- D 1 - I - 0x00EC02 07:ABF2: AF        .byte $AF
- D 1 - I - 0x00EC03 07:ABF3: AF        .byte $AF
- D 1 - I - 0x00EC04 07:ABF4: AF        .byte $AF
- D 1 - I - 0x00EC05 07:ABF5: AF        .byte $AF
- D 1 - I - 0x00EC06 07:ABF6: AF        .byte $AF
- D 1 - I - 0x00EC07 07:ABF7: B0        .byte $B0
- D 1 - I - 0x00EC08 07:ABF8: AF        .byte $AF
- D 1 - I - 0x00EC09 07:ABF9: AF        .byte $AF
- D 1 - I - 0x00EC0A 07:ABFA: AF        .byte $AF
- D 1 - I - 0x00EC0B 07:ABFB: AF        .byte $AF
- D 1 - I - 0x00EC0C 07:ABFC: AF        .byte $AF
- D 1 - I - 0x00EC0D 07:ABFD: AF        .byte $AF
- D 1 - I - 0x00EC0E 07:ABFE: B0        .byte $B0
- D 1 - I - 0x00EC0F 07:ABFF: B1        .byte $B1
- D 1 - I - 0x00EC10 07:AC00: AF        .byte $AF
- D 1 - I - 0x00EC11 07:AC01: AF        .byte $AF
- D 1 - I - 0x00EC12 07:AC02: AF        .byte $AF
- D 1 - I - 0x00EC13 07:AC03: AF        .byte $AF
- D 1 - I - 0x00EC14 07:AC04: AF        .byte $AF
- D 1 - I - 0x00EC15 07:AC05: B0        .byte $B0
- D 1 - I - 0x00EC16 07:AC06: B1        .byte $B1
- D 1 - I - 0x00EC17 07:AC07: B2        .byte $B2
- D 1 - I - 0x00EC18 07:AC08: AF        .byte $AF
- D 1 - I - 0x00EC19 07:AC09: AF        .byte $AF
- D 1 - I - 0x00EC1A 07:AC0A: AF        .byte $AF
- D 1 - I - 0x00EC1B 07:AC0B: AF        .byte $AF
- D 1 - I - 0x00EC1C 07:AC0C: B0        .byte $B0
- D 1 - I - 0x00EC1D 07:AC0D: B1        .byte $B1
- D 1 - I - 0x00EC1E 07:AC0E: B2        .byte $B2
- D 1 - I - 0x00EC1F 07:AC0F: AF        .byte $AF
- D 1 - I - 0x00EC20 07:AC10: AF        .byte $AF
- D 1 - I - 0x00EC21 07:AC11: AF        .byte $AF
- D 1 - I - 0x00EC22 07:AC12: AF        .byte $AF
- D 1 - I - 0x00EC23 07:AC13: B0        .byte $B0
- D 1 - I - 0x00EC24 07:AC14: B1        .byte $B1
- D 1 - I - 0x00EC25 07:AC15: B2        .byte $B2
- D 1 - I - 0x00EC26 07:AC16: AF        .byte $AF
- D 1 - I - 0x00EC27 07:AC17: AF        .byte $AF
- D 1 - I - 0x00EC28 07:AC18: AF        .byte $AF
- D 1 - I - 0x00EC29 07:AC19: AF        .byte $AF
- D 1 - I - 0x00EC2A 07:AC1A: B0        .byte $B0
- D 1 - I - 0x00EC2B 07:AC1B: B1        .byte $B1
- D 1 - I - 0x00EC2C 07:AC1C: B2        .byte $B2
- D 1 - I - 0x00EC2D 07:AC1D: AF        .byte $AF
- D 1 - I - 0x00EC2E 07:AC1E: AF        .byte $AF
- D 1 - I - 0x00EC2F 07:AC1F: AF        .byte $AF
- D 1 - I - 0x00EC30 07:AC20: AF        .byte $AF
- D 1 - I - 0x00EC31 07:AC21: B0        .byte $B0
- D 1 - I - 0x00EC32 07:AC22: B1        .byte $B1
- D 1 - I - 0x00EC33 07:AC23: B3        .byte $B3
- D 1 - I - 0x00EC34 07:AC24: B4        .byte $B4
- D 1 - I - 0x00EC35 07:AC25: B4        .byte $B4
- D 1 - I - 0x00EC36 07:AC26: B4        .byte $B4
- D 1 - I - 0x00EC37 07:AC27: B4        .byte $B4
- D 1 - I - 0x00EC38 07:AC28: B0        .byte $B0
- D 1 - I - 0x00EC39 07:AC29: B1        .byte $B1
- D 1 - I - 0x00EC3A 07:AC2A: B2        .byte $B2
- D 1 - I - 0x00EC3B 07:AC2B: B5        .byte $B5
- D 1 - I - 0x00EC3C 07:AC2C: B5        .byte $B5
- D 1 - I - 0x00EC3D 07:AC2D: B5        .byte $B5
- D 1 - I - 0x00EC3E 07:AC2E: B5        .byte $B5
- D 1 - I - 0x00EC3F 07:AC2F: B5        .byte $B5
- D 1 - I - 0x00EC40 07:AC30: B1        .byte $B1
- D 1 - I - 0x00EC41 07:AC31: B2        .byte $B2
- D 1 - I - 0x00EC42 07:AC32: AF        .byte $AF
- D 1 - I - 0x00EC43 07:AC33: AF        .byte $AF
- D 1 - I - 0x00EC44 07:AC34: AF        .byte $AF
- D 1 - I - 0x00EC45 07:AC35: AF        .byte $AF
- D 1 - I - 0x00EC46 07:AC36: AF        .byte $AF
- D 1 - I - 0x00EC47 07:AC37: AF        .byte $AF
- D 1 - I - 0x00EC48 07:AC38: B2        .byte $B2
- D 1 - I - 0x00EC49 07:AC39: AF        .byte $AF
- D 1 - I - 0x00EC4A 07:AC3A: AF        .byte $AF
- D 1 - I - 0x00EC4B 07:AC3B: AF        .byte $AF
- D 1 - I - 0x00EC4C 07:AC3C: AF        .byte $AF
- D 1 - I - 0x00EC4D 07:AC3D: AF        .byte $AF
- D 1 - I - 0x00EC4E 07:AC3E: AF        .byte $AF
- D 1 - I - 0x00EC4F 07:AC3F: AF        .byte $AF
- D 1 - I - 0x00EC50 07:AC40: AB        .byte $AB
- D 1 - I - 0x00EC51 07:AC41: AC        .byte $AC
- D 1 - I - 0x00EC52 07:AC42: AD        .byte $AD
- D 1 - I - 0x00EC53 07:AC43: AD        .byte $AD
- D 1 - I - 0x00EC54 07:AC44: AD        .byte $AD
- D 1 - I - 0x00EC55 07:AC45: AD        .byte $AD
- D 1 - I - 0x00EC56 07:AC46: AD        .byte $AD
- D 1 - I - 0x00EC57 07:AC47: AE        .byte $AE
- D 1 - I - 0x00EC58 07:AC48: A5        .byte $A5
- D 1 - I - 0x00EC59 07:AC49: A6        .byte $A6
- D 1 - I - 0x00EC5A 07:AC4A: A7        .byte $A7
- D 1 - I - 0x00EC5B 07:AC4B: A7        .byte $A7
- D 1 - I - 0x00EC5C 07:AC4C: A7        .byte $A7
- D 1 - I - 0x00EC5D 07:AC4D: A7        .byte $A7
- D 1 - I - 0x00EC5E 07:AC4E: A7        .byte $A7
- D 1 - I - 0x00EC5F 07:AC4F: A8        .byte $A8
- D 1 - I - 0x00EC60 07:AC50: A9        .byte $A9
- D 1 - I - 0x00EC61 07:AC51: 4F        .byte $4F
- D 1 - I - 0x00EC62 07:AC52: AA        .byte $AA
- D 1 - I - 0x00EC63 07:AC53: BD        .byte $BD
- D 1 - I - 0x00EC64 07:AC54: FF        .byte $FF
- D 1 - I - 0x00EC65 07:AC55: FF        .byte $FF
- D 1 - I - 0x00EC66 07:AC56: FF        .byte $FF
- D 1 - I - 0x00EC67 07:AC57: A9        .byte $A9
- D 1 - I - 0x00EC68 07:AC58: A9        .byte $A9
- D 1 - I - 0x00EC69 07:AC59: 4F        .byte $4F
- D 1 - I - 0x00EC6A 07:AC5A: 4F        .byte $4F
- D 1 - I - 0x00EC6B 07:AC5B: BE        .byte $BE
- D 1 - I - 0x00EC6C 07:AC5C: FF        .byte $FF
- D 1 - I - 0x00EC6D 07:AC5D: FF        .byte $FF
- D 1 - I - 0x00EC6E 07:AC5E: FF        .byte $FF
- D 1 - I - 0x00EC6F 07:AC5F: A9        .byte $A9
- - - - - - 0x00EC70 07:AC60: 00        .byte $00

- D 1 - I - 0x00EC71 07:AC61: 63        .byte $63
- D 1 - I - 0x00EC72 07:AC62: 7F        .byte $7F



_off012_AC63_4F_под_пустыми_трибунами_слева:
- D 1 - I - 0x00EC73 07:AC63: 3C        .byte $3C
- D 1 - I - 0x00EC74 07:AC64: 6A        .byte $6A
- D 1 - I - 0x00EC75 07:AC65: 0B        .byte $0B
- D 1 - I - 0x00EC76 07:AC66: 02        .byte $02
- D 1 - I - 0x00EC77 07:AC67: 08        .byte $08
- D 1 - I - 0x00EC78 07:AC68: 10        .byte $10

- D 1 - I - 0x00EC79 07:AC69: 7A        .byte $7A
- D 1 - I - 0x00EC7A 07:AC6A: 01        .byte $01
- D 1 - I - 0x00EC7B 07:AC6B: 01        .byte $01
- D 1 - I - 0x00EC7C 07:AC6C: 01        .byte $01
- D 1 - I - 0x00EC7D 07:AC6D: 01        .byte $01
- D 1 - I - 0x00EC7E 07:AC6E: 01        .byte $01
- D 1 - I - 0x00EC7F 07:AC6F: 01        .byte $01
- D 1 - I - 0x00EC80 07:AC70: 01        .byte $01
- D 1 - I - 0x00EC81 07:AC71: 7F        .byte $7F
- D 1 - I - 0x00EC82 07:AC72: 23        .byte $23
- D 1 - I - 0x00EC83 07:AC73: 22        .byte $22
- D 1 - I - 0x00EC84 07:AC74: 23        .byte $23
- D 1 - I - 0x00EC85 07:AC75: 22        .byte $22
- D 1 - I - 0x00EC86 07:AC76: 23        .byte $23
- D 1 - I - 0x00EC87 07:AC77: 24        .byte $24
- D 1 - I - 0x00EC88 07:AC78: 25        .byte $25

- - - - - - 0x00EC89 07:AC79: 00        .byte $00
- D 1 - I - 0x00EC8A 07:AC7A: A0        .byte $A0



_off012_AC7B_50_роберто_крупный_план_очки:
- D 1 - I - 0x00EC8B 07:AC7B: 5C        .byte $5C
- D 1 - I - 0x00EC8C 07:AC7C: 5E        .byte $5E
- D 1 - I - 0x00EC8D 07:AC7D: 0F        .byte $0F
- D 1 - I - 0x00EC8E 07:AC7E: 02        .byte $02
- D 1 - I - 0x00EC8F 07:AC7F: 08        .byte $08
- D 1 - I - 0x00EC90 07:AC80: 10        .byte $10

- D 1 - I - 0x00EC91 07:AC81: 42        .byte $42
- D 1 - I - 0x00EC92 07:AC82: EF        .byte $EF
- D 1 - I - 0x00EC93 07:AC83: F0        .byte $F0
- D 1 - I - 0x00EC94 07:AC84: F1        .byte $F1
- D 1 - I - 0x00EC95 07:AC85: F2        .byte $F2
- D 1 - I - 0x00EC96 07:AC86: F3        .byte $F3
- D 1 - I - 0x00EC97 07:AC87: 42        .byte $42
- D 1 - I - 0x00EC98 07:AC88: 42        .byte $42
- D 1 - I - 0x00EC99 07:AC89: 01        .byte $01
- D 1 - I - 0x00EC9A 07:AC8A: F4        .byte $F4
- D 1 - I - 0x00EC9B 07:AC8B: F5        .byte $F5
- D 1 - I - 0x00EC9C 07:AC8C: F6        .byte $F6
- D 1 - I - 0x00EC9D 07:AC8D: F7        .byte $F7
- D 1 - I - 0x00EC9E 07:AC8E: F8        .byte $F8
- D 1 - I - 0x00EC9F 07:AC8F: 01        .byte $01
- D 1 - I - 0x00ECA0 07:AC90: 01        .byte $01

- - - - - - 0x00ECA1 07:AC91: 00        .byte $00
- D 1 - I - 0x00ECA2 07:AC92: A0        .byte $A0



_off012_AC93_51_трибуны_ворота_табло_поле_слева:
- D 1 - I - 0x00ECA3 07:AC93: 3C        .byte $3C
- D 1 - I - 0x00ECA4 07:AC94: 3E        .byte $3E
- D 1 - I - 0x00ECA5 07:AC95: 00        .byte $00
- D 1 - I - 0x00ECA6 07:AC96: 03        .byte $03
- D 1 - I - 0x00ECA7 07:AC97: 08        .byte $08
- D 1 - I - 0x00ECA8 07:AC98: 08        .byte $08

- D 1 - I - 0x00ECA9 07:AC99: 42        .byte $42
- D 1 - I - 0x00ECAA 07:AC9A: 42        .byte $42
- D 1 - I - 0x00ECAB 07:AC9B: 42        .byte $42
- D 1 - I - 0x00ECAC 07:AC9C: 42        .byte $42
- D 1 - I - 0x00ECAD 07:AC9D: 42        .byte $42
- D 1 - I - 0x00ECAE 07:AC9E: 42        .byte $42
- D 1 - I - 0x00ECAF 07:AC9F: 42        .byte $42
- D 1 - I - 0x00ECB0 07:ACA0: 42        .byte $42
- D 1 - I - 0x00ECB1 07:ACA1: 14        .byte $14
- D 1 - I - 0x00ECB2 07:ACA2: 15        .byte $15
- D 1 - I - 0x00ECB3 07:ACA3: 16        .byte $16
- D 1 - I - 0x00ECB4 07:ACA4: 17        .byte $17
- D 1 - I - 0x00ECB5 07:ACA5: 12        .byte $12
- D 1 - I - 0x00ECB6 07:ACA6: 13        .byte $13
- D 1 - I - 0x00ECB7 07:ACA7: 12        .byte $12
- D 1 - I - 0x00ECB8 07:ACA8: 13        .byte $13
- D 1 - I - 0x00ECB9 07:ACA9: 18        .byte $18
- D 1 - I - 0x00ECBA 07:ACAA: 19        .byte $19
- D 1 - I - 0x00ECBB 07:ACAB: 1A        .byte $1A
- D 1 - I - 0x00ECBC 07:ACAC: 1B        .byte $1B
- D 1 - I - 0x00ECBD 07:ACAD: 18        .byte $18
- D 1 - I - 0x00ECBE 07:ACAE: 1B        .byte $1B
- D 1 - I - 0x00ECBF 07:ACAF: 18        .byte $18
- D 1 - I - 0x00ECC0 07:ACB0: 1B        .byte $1B

- - - - - - 0x00ECC1 07:ACB1: 00        .byte $00
- D 1 - I - 0x00ECC2 07:ACB2: A0        .byte $A0



_off012_ACB3_52_под_пустыми_трибунами_справа:
- D 1 - I - 0x00ECC3 07:ACB3: 3C        .byte $3C
- D 1 - I - 0x00ECC4 07:ACB4: 6A        .byte $6A
- D 1 - I - 0x00ECC5 07:ACB5: 00        .byte $00
- D 1 - I - 0x00ECC6 07:ACB6: 02        .byte $02
- D 1 - I - 0x00ECC7 07:ACB7: 08        .byte $08
- D 1 - I - 0x00ECC8 07:ACB8: 10        .byte $10

- D 1 - I - 0x00ECC9 07:ACB9: 01        .byte $01
- D 1 - I - 0x00ECCA 07:ACBA: 01        .byte $01
- D 1 - I - 0x00ECCB 07:ACBB: 01        .byte $01
- D 1 - I - 0x00ECCC 07:ACBC: 01        .byte $01
- D 1 - I - 0x00ECCD 07:ACBD: 01        .byte $01
- D 1 - I - 0x00ECCE 07:ACBE: 01        .byte $01
- D 1 - I - 0x00ECCF 07:ACBF: 01        .byte $01
- D 1 - I - 0x00ECD0 07:ACC0: 30        .byte $30
- D 1 - I - 0x00ECD1 07:ACC1: 26        .byte $26
- D 1 - I - 0x00ECD2 07:ACC2: 27        .byte $27
- D 1 - I - 0x00ECD3 07:ACC3: 22        .byte $22
- D 1 - I - 0x00ECD4 07:ACC4: 23        .byte $23
- D 1 - I - 0x00ECD5 07:ACC5: 22        .byte $22
- D 1 - I - 0x00ECD6 07:ACC6: 23        .byte $23
- D 1 - I - 0x00ECD7 07:ACC7: 22        .byte $22
- D 1 - I - 0x00ECD8 07:ACC8: 31        .byte $31

- - - - - - 0x00ECD9 07:ACC9: 00        .byte $00
- D 1 - I - 0x00ECDA 07:ACCA: A0        .byte $A0



_off012_ACCB_53_ночное_поле_трибуны_дождь:
- D 1 - I - 0x00ECDB 07:ACCB: 3C        .byte $3C
- D 1 - I - 0x00ECDC 07:ACCC: 66        .byte $66
- D 1 - I - 0x00ECDD 07:ACCD: 0C        .byte $0C
- D 1 - I - 0x00ECDE 07:ACCE: 04        .byte $04
- D 1 - I - 0x00ECDF 07:ACCF: 08        .byte $08
- D 1 - I - 0x00ECE0 07:ACD0: 00        .byte $00

- D 1 - I - 0x00ECE1 07:ACD1: 01        .byte $01
- D 1 - I - 0x00ECE2 07:ACD2: 01        .byte $01
- D 1 - I - 0x00ECE3 07:ACD3: 5B        .byte $5B
- D 1 - I - 0x00ECE4 07:ACD4: 01        .byte $01
- D 1 - I - 0x00ECE5 07:ACD5: 01        .byte $01
- D 1 - I - 0x00ECE6 07:ACD6: 01        .byte $01
- D 1 - I - 0x00ECE7 07:ACD7: 5A        .byte $5A
- D 1 - I - 0x00ECE8 07:ACD8: 01        .byte $01
- D 1 - I - 0x00ECE9 07:ACD9: 01        .byte $01
- D 1 - I - 0x00ECEA 07:ACDA: 01        .byte $01
- D 1 - I - 0x00ECEB 07:ACDB: 96        .byte $96
- D 1 - I - 0x00ECEC 07:ACDC: 01        .byte $01
- D 1 - I - 0x00ECED 07:ACDD: 01        .byte $01
- D 1 - I - 0x00ECEE 07:ACDE: 01        .byte $01
- D 1 - I - 0x00ECEF 07:ACDF: 5B        .byte $5B
- D 1 - I - 0x00ECF0 07:ACE0: 01        .byte $01
- D 1 - I - 0x00ECF1 07:ACE1: 55        .byte $55
- D 1 - I - 0x00ECF2 07:ACE2: 56        .byte $56
- D 1 - I - 0x00ECF3 07:ACE3: 57        .byte $57
- D 1 - I - 0x00ECF4 07:ACE4: 58        .byte $58
- D 1 - I - 0x00ECF5 07:ACE5: 59        .byte $59
- D 1 - I - 0x00ECF6 07:ACE6: 54        .byte $54
- D 1 - I - 0x00ECF7 07:ACE7: 55        .byte $55
- D 1 - I - 0x00ECF8 07:ACE8: 54        .byte $54
- D 1 - I - 0x00ECF9 07:ACE9: 1F        .byte $1F
- D 1 - I - 0x00ECFA 07:ACEA: 1C        .byte $1C
- D 1 - I - 0x00ECFB 07:ACEB: 1D        .byte $1D
- D 1 - I - 0x00ECFC 07:ACEC: 1E        .byte $1E
- D 1 - I - 0x00ECFD 07:ACED: 1F        .byte $1F
- D 1 - I - 0x00ECFE 07:ACEE: 1C        .byte $1C
- D 1 - I - 0x00ECFF 07:ACEF: 1F        .byte $1F
- D 1 - I - 0x00ED00 07:ACF0: 1C        .byte $1C

- - - - - - 0x00ED01 07:ACF1: 00        .byte $00
- D 1 - I - 0x00ED02 07:ACF2: A0        .byte $A0



_off012_ACF3_54_под_трибунами_пауза_медленное_движение_вправо:
- D 1 - I - 0x00ED03 07:ACF3: 3C        .byte $3C
- D 1 - I - 0x00ED04 07:ACF4: 6A        .byte $6A
- D 1 - I - 0x00ED05 07:ACF5: 00        .byte $00
- D 1 - I - 0x00ED06 07:ACF6: 02        .byte $02
- D 1 - I - 0x00ED07 07:ACF7: 08        .byte $08
- D 1 - I - 0x00ED08 07:ACF8: 10        .byte $10

- D 1 - I - 0x00ED09 07:ACF9: 01        .byte $01
- D 1 - I - 0x00ED0A 07:ACFA: 01        .byte $01
- D 1 - I - 0x00ED0B 07:ACFB: 01        .byte $01
- D 1 - I - 0x00ED0C 07:ACFC: 01        .byte $01
- D 1 - I - 0x00ED0D 07:ACFD: 01        .byte $01
- D 1 - I - 0x00ED0E 07:ACFE: 01        .byte $01
- D 1 - I - 0x00ED0F 07:ACFF: 01        .byte $01
- D 1 - I - 0x00ED10 07:AD00: 30        .byte $30
- D 1 - I - 0x00ED11 07:AD01: 16        .byte $16
- D 1 - I - 0x00ED12 07:AD02: 17        .byte $17
- D 1 - I - 0x00ED13 07:AD03: 12        .byte $12
- D 1 - I - 0x00ED14 07:AD04: 13        .byte $13
- D 1 - I - 0x00ED15 07:AD05: 12        .byte $12
- D 1 - I - 0x00ED16 07:AD06: 13        .byte $13
- D 1 - I - 0x00ED17 07:AD07: 12        .byte $12
- D 1 - I - 0x00ED18 07:AD08: 31        .byte $31
- D 1 - I - 0x00ED19 07:AD09: 1E        .byte $1E

- D 1 - I - 0x00ED1A 07:AD0A: A3        .byte $A3
- D 1 - I - 0x00ED1B 07:AD0B: 08        .byte $08



_off012_AD0C_55_трибуны_лестница_полный_экран:
- D 1 - I - 0x00ED1C 07:AD0C: 5C        .byte $5C
- D 1 - I - 0x00ED1D 07:AD0D: 5E        .byte $5E
- D 1 - I - 0x00ED1E 07:AD0E: 06        .byte $06
- D 1 - I - 0x00ED1F 07:AD0F: 04        .byte $04
- D 1 - I - 0x00ED20 07:AD10: 08        .byte $08
- D 1 - I - 0x00ED21 07:AD11: 00        .byte $00

- D 1 - I - 0x00ED22 07:AD12: AB        .byte $AB
- D 1 - I - 0x00ED23 07:AD13: AC        .byte $AC
- D 1 - I - 0x00ED24 07:AD14: AD        .byte $AD
- D 1 - I - 0x00ED25 07:AD15: AD        .byte $AD
- D 1 - I - 0x00ED26 07:AD16: AD        .byte $AD
- D 1 - I - 0x00ED27 07:AD17: AD        .byte $AD
- D 1 - I - 0x00ED28 07:AD18: AD        .byte $AD
- D 1 - I - 0x00ED29 07:AD19: AD        .byte $AD
- D 1 - I - 0x00ED2A 07:AD1A: A5        .byte $A5
- D 1 - I - 0x00ED2B 07:AD1B: A6        .byte $A6
- D 1 - I - 0x00ED2C 07:AD1C: A7        .byte $A7
- D 1 - I - 0x00ED2D 07:AD1D: A7        .byte $A7
- D 1 - I - 0x00ED2E 07:AD1E: A7        .byte $A7
- D 1 - I - 0x00ED2F 07:AD1F: A7        .byte $A7
- D 1 - I - 0x00ED30 07:AD20: A7        .byte $A7
- D 1 - I - 0x00ED31 07:AD21: A7        .byte $A7
- D 1 - I - 0x00ED32 07:AD22: A9        .byte $A9
- D 1 - I - 0x00ED33 07:AD23: 4F        .byte $4F
- D 1 - I - 0x00ED34 07:AD24: AA        .byte $AA
- D 1 - I - 0x00ED35 07:AD25: FF        .byte $FF
- D 1 - I - 0x00ED36 07:AD26: FF        .byte $FF
- D 1 - I - 0x00ED37 07:AD27: FF        .byte $FF
- D 1 - I - 0x00ED38 07:AD28: FF        .byte $FF
- D 1 - I - 0x00ED39 07:AD29: FF        .byte $FF
- D 1 - I - 0x00ED3A 07:AD2A: A9        .byte $A9
- D 1 - I - 0x00ED3B 07:AD2B: 4F        .byte $4F
- D 1 - I - 0x00ED3C 07:AD2C: 4F        .byte $4F
- D 1 - I - 0x00ED3D 07:AD2D: AA        .byte $AA
- D 1 - I - 0x00ED3E 07:AD2E: FF        .byte $FF
- D 1 - I - 0x00ED3F 07:AD2F: FF        .byte $FF
- D 1 - I - 0x00ED40 07:AD30: FF        .byte $FF
- D 1 - I - 0x00ED41 07:AD31: FF        .byte $FF

- - - - - - 0x00ED42 07:AD32: 00        .byte $00
- D 1 - I - 0x00ED43 07:AD33: A0        .byte $A0



_off012_AD34_56_ворота_вблизи_слева:
- D 1 - I - 0x00ED44 07:AD34: 3C        .byte $3C
- D 1 - I - 0x00ED45 07:AD35: 4C        .byte $4C
- D 1 - I - 0x00ED46 07:AD36: 00        .byte $00
- D 1 - I - 0x00ED47 07:AD37: 04        .byte $04
- D 1 - I - 0x00ED48 07:AD38: 08        .byte $08
- D 1 - I - 0x00ED49 07:AD39: 00        .byte $00

- D 1 - I - 0x00ED4A 07:AD3A: 98        .byte $98
- D 1 - I - 0x00ED4B 07:AD3B: 99        .byte $99
- D 1 - I - 0x00ED4C 07:AD3C: 42        .byte $42
- D 1 - I - 0x00ED4D 07:AD3D: 42        .byte $42
- D 1 - I - 0x00ED4E 07:AD3E: 42        .byte $42
- D 1 - I - 0x00ED4F 07:AD3F: 42        .byte $42
- D 1 - I - 0x00ED50 07:AD40: 42        .byte $42
- D 1 - I - 0x00ED51 07:AD41: 42        .byte $42
- D 1 - I - 0x00ED52 07:AD42: 9A        .byte $9A
- D 1 - I - 0x00ED53 07:AD43: 9B        .byte $9B
- D 1 - I - 0x00ED54 07:AD44: 9C        .byte $9C
- D 1 - I - 0x00ED55 07:AD45: 01        .byte $01
- D 1 - I - 0x00ED56 07:AD46: 01        .byte $01
- D 1 - I - 0x00ED57 07:AD47: 01        .byte $01
- D 1 - I - 0x00ED58 07:AD48: 01        .byte $01
- D 1 - I - 0x00ED59 07:AD49: 01        .byte $01
- D 1 - I - 0x00ED5A 07:AD4A: 9D        .byte $9D
- D 1 - I - 0x00ED5B 07:AD4B: 9E        .byte $9E
- D 1 - I - 0x00ED5C 07:AD4C: 9F        .byte $9F
- D 1 - I - 0x00ED5D 07:AD4D: A0        .byte $A0
- D 1 - I - 0x00ED5E 07:AD4E: 3C        .byte $3C
- D 1 - I - 0x00ED5F 07:AD4F: 01        .byte $01
- D 1 - I - 0x00ED60 07:AD50: 01        .byte $01
- D 1 - I - 0x00ED61 07:AD51: 01        .byte $01
- D 1 - I - 0x00ED62 07:AD52: A1        .byte $A1
- D 1 - I - 0x00ED63 07:AD53: A2        .byte $A2
- D 1 - I - 0x00ED64 07:AD54: A3        .byte $A3
- D 1 - I - 0x00ED65 07:AD55: A4        .byte $A4
- D 1 - I - 0x00ED66 07:AD56: 01        .byte $01
- D 1 - I - 0x00ED67 07:AD57: 39        .byte $39
- D 1 - I - 0x00ED68 07:AD58: 3A        .byte $3A
- D 1 - I - 0x00ED69 07:AD59: 3B        .byte $3B

- - - - - - 0x00ED6A 07:AD5A: 00        .byte $00
- D 1 - I - 0x00ED6B 07:AD5B: A0        .byte $A0



_off012_AD5C_57_под_трибунами_слева:
- D 1 - I - 0x00ED6C 07:AD5C: 3C        .byte $3C
- D 1 - I - 0x00ED6D 07:AD5D: 6A        .byte $6A
- D 1 - I - 0x00ED6E 07:AD5E: 0B        .byte $0B
- D 1 - I - 0x00ED6F 07:AD5F: 02        .byte $02
- D 1 - I - 0x00ED70 07:AD60: 08        .byte $08
- D 1 - I - 0x00ED71 07:AD61: 10        .byte $10

- D 1 - I - 0x00ED72 07:AD62: 7A        .byte $7A
- D 1 - I - 0x00ED73 07:AD63: 01        .byte $01
- D 1 - I - 0x00ED74 07:AD64: 01        .byte $01
- D 1 - I - 0x00ED75 07:AD65: 01        .byte $01
- D 1 - I - 0x00ED76 07:AD66: 01        .byte $01
- D 1 - I - 0x00ED77 07:AD67: 01        .byte $01
- D 1 - I - 0x00ED78 07:AD68: 01        .byte $01
- D 1 - I - 0x00ED79 07:AD69: 01        .byte $01
- D 1 - I - 0x00ED7A 07:AD6A: 7F        .byte $7F
- D 1 - I - 0x00ED7B 07:AD6B: 13        .byte $13
- D 1 - I - 0x00ED7C 07:AD6C: 12        .byte $12
- D 1 - I - 0x00ED7D 07:AD6D: 13        .byte $13
- D 1 - I - 0x00ED7E 07:AD6E: 12        .byte $12
- D 1 - I - 0x00ED7F 07:AD6F: 13        .byte $13
- D 1 - I - 0x00ED80 07:AD70: 14        .byte $14
- D 1 - I - 0x00ED81 07:AD71: 15        .byte $15

- - - - - - 0x00ED82 07:AD72: 00        .byte $00
- D 1 - I - 0x00ED83 07:AD73: A0        .byte $A0



_off012_AD74_58_нижняя_часть_ворот_где_сидит_меон:
- D 1 - I - 0x00ED84 07:AD74: 5C        .byte $5C
- D 1 - I - 0x00ED85 07:AD75: 5E        .byte $5E
- D 1 - I - 0x00ED86 07:AD76: 17        .byte $17
- D 1 - I - 0x00ED87 07:AD77: 04        .byte $04
- D 1 - I - 0x00ED88 07:AD78: 08        .byte $08
- D 1 - I - 0x00ED89 07:AD79: 00        .byte $00

- D 1 - I - 0x00ED8A 07:AD7A: 01        .byte $01
- D 1 - I - 0x00ED8B 07:AD7B: 01        .byte $01
- D 1 - I - 0x00ED8C 07:AD7C: 01        .byte $01
- D 1 - I - 0x00ED8D 07:AD7D: 01        .byte $01
- D 1 - I - 0x00ED8E 07:AD7E: C3        .byte $C3
- D 1 - I - 0x00ED8F 07:AD7F: C6        .byte $C6
- D 1 - I - 0x00ED90 07:AD80: C7        .byte $C7
- D 1 - I - 0x00ED91 07:AD81: C7        .byte $C7
- D 1 - I - 0x00ED92 07:AD82: 01        .byte $01
- D 1 - I - 0x00ED93 07:AD83: 01        .byte $01
- D 1 - I - 0x00ED94 07:AD84: 01        .byte $01
- D 1 - I - 0x00ED95 07:AD85: 01        .byte $01
- D 1 - I - 0x00ED96 07:AD86: C3        .byte $C3
- D 1 - I - 0x00ED97 07:AD87: C8        .byte $C8
- D 1 - I - 0x00ED98 07:AD88: C9        .byte $C9
- D 1 - I - 0x00ED99 07:AD89: C7        .byte $C7
- D 1 - I - 0x00ED9A 07:AD8A: 50        .byte $50
- D 1 - I - 0x00ED9B 07:AD8B: BF        .byte $BF
- D 1 - I - 0x00ED9C 07:AD8C: 01        .byte $01
- D 1 - I - 0x00ED9D 07:AD8D: 01        .byte $01
- D 1 - I - 0x00ED9E 07:AD8E: C3        .byte $C3
- D 1 - I - 0x00ED9F 07:AD8F: CA        .byte $CA
- D 1 - I - 0x00EDA0 07:AD90: CB        .byte $CB
- D 1 - I - 0x00EDA1 07:AD91: C7        .byte $C7
- D 1 - I - 0x00EDA2 07:AD92: 52        .byte $52
- D 1 - I - 0x00EDA3 07:AD93: 53        .byte $53
- D 1 - I - 0x00EDA4 07:AD94: 39        .byte $39
- D 1 - I - 0x00EDA5 07:AD95: 3B        .byte $3B
- D 1 - I - 0x00EDA6 07:AD96: C3        .byte $C3
- D 1 - I - 0x00EDA7 07:AD97: CA        .byte $CA
- D 1 - I - 0x00EDA8 07:AD98: CC        .byte $CC
- D 1 - I - 0x00EDA9 07:AD99: C7        .byte $C7

- - - - - - 0x00EDAA 07:AD9A: 00        .byte $00
- D 1 - I - 0x00EDAB 07:AD9B: A0        .byte $A0



_off012_AD9C_59_голубой_фон:
- D 1 - I - 0x00EDAC 07:AD9C: 3C        .byte $3C
- D 1 - I - 0x00EDAD 07:AD9D: 4C        .byte $4C
- D 1 - I - 0x00EDAE 07:AD9E: 00        .byte $00
- D 1 - I - 0x00EDAF 07:AD9F: 04        .byte $04
- D 1 - I - 0x00EDB0 07:ADA0: 08        .byte $08
- D 1 - I - 0x00EDB1 07:ADA1: 07        .byte $07

- D 1 - I - 0x00EDB2 07:ADA2: 42        .byte $42
- D 1 - I - 0x00EDB3 07:ADA3: 42        .byte $42
- D 1 - I - 0x00EDB4 07:ADA4: 42        .byte $42
- D 1 - I - 0x00EDB5 07:ADA5: 42        .byte $42
- D 1 - I - 0x00EDB6 07:ADA6: 42        .byte $42
- D 1 - I - 0x00EDB7 07:ADA7: 42        .byte $42
- D 1 - I - 0x00EDB8 07:ADA8: 42        .byte $42
- D 1 - I - 0x00EDB9 07:ADA9: 42        .byte $42
- D 1 - I - 0x00EDBA 07:ADAA: 01        .byte $01
- D 1 - I - 0x00EDBB 07:ADAB: 01        .byte $01
- D 1 - I - 0x00EDBC 07:ADAC: 01        .byte $01
- D 1 - I - 0x00EDBD 07:ADAD: 01        .byte $01
- D 1 - I - 0x00EDBE 07:ADAE: 01        .byte $01
- D 1 - I - 0x00EDBF 07:ADAF: 01        .byte $01
- D 1 - I - 0x00EDC0 07:ADB0: 01        .byte $01
- D 1 - I - 0x00EDC1 07:ADB1: 01        .byte $01
- D 1 - I - 0x00EDC2 07:ADB2: 01        .byte $01
- D 1 - I - 0x00EDC3 07:ADB3: 01        .byte $01
- D 1 - I - 0x00EDC4 07:ADB4: 01        .byte $01
- D 1 - I - 0x00EDC5 07:ADB5: 01        .byte $01
- D 1 - I - 0x00EDC6 07:ADB6: 01        .byte $01
- D 1 - I - 0x00EDC7 07:ADB7: 01        .byte $01
- D 1 - I - 0x00EDC8 07:ADB8: 01        .byte $01
- D 1 - I - 0x00EDC9 07:ADB9: 01        .byte $01
- D 1 - I - 0x00EDCA 07:ADBA: 01        .byte $01
- D 1 - I - 0x00EDCB 07:ADBB: 01        .byte $01
- D 1 - I - 0x00EDCC 07:ADBC: 01        .byte $01
- D 1 - I - 0x00EDCD 07:ADBD: 01        .byte $01
- D 1 - I - 0x00EDCE 07:ADBE: 01        .byte $01
- D 1 - I - 0x00EDCF 07:ADBF: 01        .byte $01
- D 1 - I - 0x00EDD0 07:ADC0: 01        .byte $01
- D 1 - I - 0x00EDD1 07:ADC1: 01        .byte $01

- - - - - - 0x00EDD2 07:ADC2: 00        .byte $00
- D 1 - I - 0x00EDD3 07:ADC3: 20        .byte $20



_off012_ADC4_5A_трибуны_небо:
- D 1 - I - 0x00EDD4 07:ADC4: 3C        .byte $3C
- D 1 - I - 0x00EDD5 07:ADC5: 3E        .byte $3E
- D 1 - I - 0x00EDD6 07:ADC6: 00        .byte $00
- D 1 - I - 0x00EDD7 07:ADC7: 04        .byte $04
- D 1 - I - 0x00EDD8 07:ADC8: 08        .byte $08
- D 1 - I - 0x00EDD9 07:ADC9: 00        .byte $00

- D 1 - I - 0x00EDDA 07:ADCA: 42        .byte $42
- D 1 - I - 0x00EDDB 07:ADCB: 42        .byte $42
- D 1 - I - 0x00EDDC 07:ADCC: 42        .byte $42
- D 1 - I - 0x00EDDD 07:ADCD: 42        .byte $42
- D 1 - I - 0x00EDDE 07:ADCE: 42        .byte $42
- D 1 - I - 0x00EDDF 07:ADCF: 42        .byte $42
- D 1 - I - 0x00EDE0 07:ADD0: 42        .byte $42
- D 1 - I - 0x00EDE1 07:ADD1: 42        .byte $42
- D 1 - I - 0x00EDE2 07:ADD2: 3D        .byte $3D
- D 1 - I - 0x00EDE3 07:ADD3: 01        .byte $01
- D 1 - I - 0x00EDE4 07:ADD4: 01        .byte $01
- D 1 - I - 0x00EDE5 07:ADD5: 01        .byte $01
- D 1 - I - 0x00EDE6 07:ADD6: 01        .byte $01
- D 1 - I - 0x00EDE7 07:ADD7: 01        .byte $01
- D 1 - I - 0x00EDE8 07:ADD8: 3C        .byte $3C
- D 1 - I - 0x00EDE9 07:ADD9: 01        .byte $01
- D 1 - I - 0x00EDEA 07:ADDA: 01        .byte $01
- D 1 - I - 0x00EDEB 07:ADDB: 3D        .byte $3D
- D 1 - I - 0x00EDEC 07:ADDC: 01        .byte $01
- D 1 - I - 0x00EDED 07:ADDD: 01        .byte $01
- D 1 - I - 0x00EDEE 07:ADDE: 3C        .byte $3C
- D 1 - I - 0x00EDEF 07:ADDF: 01        .byte $01
- D 1 - I - 0x00EDF0 07:ADE0: 01        .byte $01
- D 1 - I - 0x00EDF1 07:ADE1: 01        .byte $01
- D 1 - I - 0x00EDF2 07:ADE2: 12        .byte $12
- D 1 - I - 0x00EDF3 07:ADE3: 13        .byte $13
- D 1 - I - 0x00EDF4 07:ADE4: 20        .byte $20
- D 1 - I - 0x00EDF5 07:ADE5: 13        .byte $13
- D 1 - I - 0x00EDF6 07:ADE6: 12        .byte $12
- D 1 - I - 0x00EDF7 07:ADE7: 13        .byte $13
- D 1 - I - 0x00EDF8 07:ADE8: 12        .byte $12
- D 1 - I - 0x00EDF9 07:ADE9: 13        .byte $13

- - - - - - 0x00EDFA 07:ADEA: 00        .byte $00
- D 1 - I - 0x00EDFB 07:ADEB: A0        .byte $A0



_off012_ADEC_5B_сетка_крупным_планом_сетка_крупным_планом_сетка_крупным_планом_движение_вправо:
- D 1 - I - 0x00EDFC 07:ADEC: 68        .byte $68
- D 1 - I - 0x00EDFD 07:ADED: 6A        .byte $6A
- D 1 - I - 0x00EDFE 07:ADEE: 80        .byte $80
- D 1 - I - 0x00EDFF 07:ADEF: 02        .byte $02
- D 1 - I - 0x00EE00 07:ADF0: 0C        .byte $0C
- D 1 - I - 0x00EE01 07:ADF1: 10        .byte $10

- D 1 - I - 0x00EE02 07:ADF2: 66        .byte $66
- D 1 - I - 0x00EE03 07:ADF3: 66        .byte $66
- D 1 - I - 0x00EE04 07:ADF4: 66        .byte $66
- D 1 - I - 0x00EE05 07:ADF5: 66        .byte $66
- D 1 - I - 0x00EE06 07:ADF6: 66        .byte $66
- D 1 - I - 0x00EE07 07:ADF7: 66        .byte $66
- D 1 - I - 0x00EE08 07:ADF8: 66        .byte $66
- D 1 - I - 0x00EE09 07:ADF9: 66        .byte $66
- D 1 - I - 0x00EE0A 07:ADFA: 66        .byte $66
- D 1 - I - 0x00EE0B 07:ADFB: 66        .byte $66
- D 1 - I - 0x00EE0C 07:ADFC: 66        .byte $66
- D 1 - I - 0x00EE0D 07:ADFD: 66        .byte $66
- D 1 - I - 0x00EE0E 07:ADFE: 66        .byte $66
- D 1 - I - 0x00EE0F 07:ADFF: 66        .byte $66
- D 1 - I - 0x00EE10 07:AE00: 66        .byte $66
- D 1 - I - 0x00EE11 07:AE01: 66        .byte $66
- D 1 - I - 0x00EE12 07:AE02: 66        .byte $66
- D 1 - I - 0x00EE13 07:AE03: 66        .byte $66
- D 1 - I - 0x00EE14 07:AE04: 66        .byte $66
- D 1 - I - 0x00EE15 07:AE05: 66        .byte $66
- D 1 - I - 0x00EE16 07:AE06: 66        .byte $66
- D 1 - I - 0x00EE17 07:AE07: 66        .byte $66
- D 1 - I - 0x00EE18 07:AE08: 66        .byte $66
- D 1 - I - 0x00EE19 07:AE09: 66        .byte $66
- D 1 - I - 0x00EE1A 07:AE0A: 00        .byte $00

- D 1 - I - 0x00EE1B 07:AE0B: A2        .byte $A2
- D 1 - I - 0x00EE1C 07:AE0C: 04        .byte $04



_off012_AE0D_5C_серое_поле_катсцена_01:
- D 1 - I - 0x00EE1D 07:AE0D: 3C        .byte $3C
- D 1 - I - 0x00EE1E 07:AE0E: 3E        .byte $3E
- D 1 - I - 0x00EE1F 07:AE0F: 1E        .byte $1E
- D 1 - I - 0x00EE20 07:AE10: 03        .byte $03
- D 1 - I - 0x00EE21 07:AE11: 06        .byte $06
- D 1 - I - 0x00EE22 07:AE12: 09        .byte $09

- D 1 - I - 0x00EE23 07:AE13: 01        .byte $01
- D 1 - I - 0x00EE24 07:AE14: 3D        .byte $3D
- D 1 - I - 0x00EE25 07:AE15: 01        .byte $01
- D 1 - I - 0x00EE26 07:AE16: 01        .byte $01
- D 1 - I - 0x00EE27 07:AE17: 3C        .byte $3C
- D 1 - I - 0x00EE28 07:AE18: 01        .byte $01
- D 1 - I - 0x00EE29 07:AE19: 3E        .byte $3E
- D 1 - I - 0x00EE2A 07:AE1A: 3E        .byte $3E
- D 1 - I - 0x00EE2B 07:AE1B: 3E        .byte $3E
- D 1 - I - 0x00EE2C 07:AE1C: 3E        .byte $3E
- D 1 - I - 0x00EE2D 07:AE1D: 3E        .byte $3E
- D 1 - I - 0x00EE2E 07:AE1E: 3E        .byte $3E
- D 1 - I - 0x00EE2F 07:AE1F: 3F        .byte $3F
- D 1 - I - 0x00EE30 07:AE20: 3F        .byte $3F
- D 1 - I - 0x00EE31 07:AE21: 3F        .byte $3F
- D 1 - I - 0x00EE32 07:AE22: 3F        .byte $3F
- D 1 - I - 0x00EE33 07:AE23: 3F        .byte $3F
- D 1 - I - 0x00EE34 07:AE24: 3F        .byte $3F

- - - - - - 0x00EE35 07:AE25: 00        .byte $00
- D 1 - I - 0x00EE36 07:AE26: A0        .byte $A0



_off012_AE27_5D_серая_команда_japan_катсцена_01:
- D 1 - I - 0x00EE37 07:AE27: 64        .byte $64
- D 1 - I - 0x00EE38 07:AE28: 66        .byte $66
- D 1 - I - 0x00EE39 07:AE29: 9F        .byte $9F
- D 1 - I - 0x00EE3A 07:AE2A: 02        .byte $02
- D 1 - I - 0x00EE3B 07:AE2B: 04        .byte $04
- D 1 - I - 0x00EE3C 07:AE2C: 12        .byte $12

- D 1 - I - 0x00EE3D 07:AE2D: 4F        .byte $4F
- D 1 - I - 0x00EE3E 07:AE2E: 50        .byte $50
- D 1 - I - 0x00EE3F 07:AE2F: 51        .byte $51
- D 1 - I - 0x00EE40 07:AE30: 52        .byte $52
- D 1 - I - 0x00EE41 07:AE31: 53        .byte $53
- D 1 - I - 0x00EE42 07:AE32: 54        .byte $54
- D 1 - I - 0x00EE43 07:AE33: 55        .byte $55
- D 1 - I - 0x00EE44 07:AE34: 56        .byte $56

- - - - - - 0x00EE45 07:AE35: 00        .byte $00
- D 1 - I - 0x00EE46 07:AE36: A0        .byte $A0



_off012_AE37_5E_серые_трибуны_2_катсцена_01:
- D 1 - I - 0x00EE47 07:AE37: 3C        .byte $3C
- D 1 - I - 0x00EE48 07:AE38: 3E        .byte $3E
- D 1 - I - 0x00EE49 07:AE39: 20        .byte $20
- D 1 - I - 0x00EE4A 07:AE3A: 02        .byte $02
- D 1 - I - 0x00EE4B 07:AE3B: 06        .byte $06
- D 1 - I - 0x00EE4C 07:AE3C: 11        .byte $11

- D 1 - I - 0x00EE4D 07:AE3D: 2C        .byte $2C
- D 1 - I - 0x00EE4E 07:AE3E: 2D        .byte $2D
- D 1 - I - 0x00EE4F 07:AE3F: 2C        .byte $2C
- D 1 - I - 0x00EE50 07:AE40: 2C        .byte $2C
- D 1 - I - 0x00EE51 07:AE41: 2C        .byte $2C
- D 1 - I - 0x00EE52 07:AE42: 2C        .byte $2C
- D 1 - I - 0x00EE53 07:AE43: 2E        .byte $2E
- D 1 - I - 0x00EE54 07:AE44: 2F        .byte $2F
- D 1 - I - 0x00EE55 07:AE45: 2E        .byte $2E
- D 1 - I - 0x00EE56 07:AE46: 2F        .byte $2F
- D 1 - I - 0x00EE57 07:AE47: 2E        .byte $2E
- D 1 - I - 0x00EE58 07:AE48: 2F        .byte $2F

- - - - - - 0x00EE59 07:AE49: 00        .byte $00
- D 1 - I - 0x00EE5A 07:AE4A: A0        .byte $A0



_off012_AE4B_5F_тренер_на_экране_meeting:
; комменты в 0x000B4B
- D 1 - I - 0x00EE5B 07:AE4B: 3C        .byte $3C     ; номер банка chr 1
- D 1 - I - 0x00EE5C 07:AE4C: 02        .byte $C2     ; номер банка chr 2
- D 1 - I - 0x00EE5D 07:AE4D: 00        .byte $00     ; палитра
- D 1 - I - 0x00EE5E 07:AE4E: 03        .byte $03     ; множитель счетчика количества байтов для чтения
- D 1 - I - 0x00EE5F 07:AE4F: 10        .byte $10     ; счетчик количества байтов для чтения
- D 1 - I - 0x00EE60 07:AE50: 08        .byte $08     ; смещение для адреса записи ppu
; дальше идут байты, которые являются поинтерами на блоки с тайлами размером 4x4 тайла
- D 1 - I - 0x00EE61 07:AE51: 48        .byte $48
- D 1 - I - 0x00EE62 07:AE52: 5C        .byte $5C
- D 1 - I - 0x00EE63 07:AE53: 5C        .byte $5C
- D 1 - I - 0x00EE64 07:AE54: 4D        .byte $5C     ; MEETING 1
- D 1 - I - 0x00EE65 07:AE55: 4E        .byte $5C     ; MEETING 2
- D 1 - I - 0x00EE66 07:AE56: 5C        .byte $5C
- D 1 - I - 0x00EE67 07:AE57: 5C        .byte $5C
- D 1 - I - 0x00EE68 07:AE58: 49        .byte $49
- D 1 - I - 0x00EE69 07:AE59: 48        .byte $48
- D 1 - I - 0x00EE6A 07:AE5A: 5C        .byte $5C
- D 1 - I - 0x00EE6B 07:AE5B: 5C        .byte $5C
- D 1 - I - 0x00EE6C 07:AE5C: 4D        .byte $4D
- D 1 - I - 0x00EE6D 07:AE5D: 4E        .byte $4E
- D 1 - I - 0x00EE6E 07:AE5E: 5C        .byte $5C
- D 1 - I - 0x00EE6F 07:AE5F: 5C        .byte $5C
- D 1 - I - 0x00EE70 07:AE60: 49        .byte $49
- D 1 - I - 0x00EE71 07:AE61: 2C        .byte $2C
- D 1 - I - 0x00EE72 07:AE62: 2D        .byte $2D
- D 1 - I - 0x00EE73 07:AE63: 2C        .byte $2C
- D 1 - I - 0x00EE74 07:AE64: 2C        .byte $2C
- D 1 - I - 0x00EE75 07:AE65: 2C        .byte $2C
- D 1 - I - 0x00EE76 07:AE66: 2C        .byte $2C
- D 1 - I - 0x00EE77 07:AE67: 2C        .byte $2C
- D 1 - I - 0x00EE78 07:AE68: 2C        .byte $2C
- D 1 - I - 0x00EE79 07:AE69: 09        .byte $09
- D 1 - I - 0x00EE7A 07:AE6A: 0A        .byte $0A
- D 1 - I - 0x00EE7B 07:AE6B: 0B        .byte $0B
- D 1 - I - 0x00EE7C 07:AE6C: 2C        .byte $2C
- D 1 - I - 0x00EE7D 07:AE6D: 2C        .byte $2C
- D 1 - I - 0x00EE7E 07:AE6E: 2C        .byte $2C
- D 1 - I - 0x00EE7F 07:AE6F: 2D        .byte $2D
- D 1 - I - 0x00EE80 07:AE70: 2C        .byte $2C
- D 1 - I - 0x00EE81 07:AE71: 2E        .byte $2E
- D 1 - I - 0x00EE82 07:AE72: 2F        .byte $2F
- D 1 - I - 0x00EE83 07:AE73: 2E        .byte $2E
- D 1 - I - 0x00EE84 07:AE74: 2F        .byte $2F
- D 1 - I - 0x00EE85 07:AE75: 2E        .byte $2E
- D 1 - I - 0x00EE86 07:AE76: 2F        .byte $2F
- D 1 - I - 0x00EE87 07:AE77: 2E        .byte $2E
- D 1 - I - 0x00EE88 07:AE78: 2F        .byte $2F
- D 1 - I - 0x00EE89 07:AE79: 05        .byte $05
- D 1 - I - 0x00EE8A 07:AE7A: 06        .byte $06
- D 1 - I - 0x00EE8B 07:AE7B: 07        .byte $07
- D 1 - I - 0x00EE8C 07:AE7C: 2E        .byte $2E
- D 1 - I - 0x00EE8D 07:AE7D: 2F        .byte $2F
- D 1 - I - 0x00EE8E 07:AE7E: 2E        .byte $2E
- D 1 - I - 0x00EE8F 07:AE7F: 2F        .byte $2F
- D 1 - I - 0x00EE90 07:AE80: 2E        .byte $2E
; эти 2 байта отвечают за что-то типа базовой позиции скроллинга
; и предположительно за скорость движения фона
; также выше может быть еще один байт, который является таймером перед движением фона
    ; видимо он зависит от самого последнего байта
- - - - - - 0x00EE91 07:AE81: 00        .byte $00
- D 1 - I - 0x00EE92 07:AE82: A0        .byte $A0



_off012_AE83_60_meeting:
- D 1 - I - 0x00EE93 07:AE83: 3C        .byte $3C
- D 1 - I - 0x00EE94 07:AE84: 02        .byte $C2
- D 1 - I - 0x00EE95 07:AE85: 00        .byte $00
- D 1 - I - 0x00EE96 07:AE86: 03        .byte $03
- D 1 - I - 0x00EE97 07:AE87: 10        .byte $10
- D 1 - I - 0x00EE98 07:AE88: 08        .byte $08

- D 1 - I - 0x00EE99 07:AE89: 48        .byte $48
- D 1 - I - 0x00EE9A 07:AE8A: 5C        .byte $5C
- D 1 - I - 0x00EE9B 07:AE8B: 5C        .byte $5C
- D 1 - I - 0x00EE9C 07:AE8C: 4D        .byte $5C
- D 1 - I - 0x00EE9D 07:AE8D: 4E        .byte $5C
- D 1 - I - 0x00EE9E 07:AE8E: 5C        .byte $5C
- D 1 - I - 0x00EE9F 07:AE8F: 5C        .byte $5C
- D 1 - I - 0x00EEA0 07:AE90: 49        .byte $49
- D 1 - I - 0x00EEA1 07:AE91: 48        .byte $48
- D 1 - I - 0x00EEA2 07:AE92: 5C        .byte $5C
- D 1 - I - 0x00EEA3 07:AE93: 5C        .byte $5C
- D 1 - I - 0x00EEA4 07:AE94: 4D        .byte $4D
- D 1 - I - 0x00EEA5 07:AE95: 4E        .byte $4E
- D 1 - I - 0x00EEA6 07:AE96: 5C        .byte $5C
- D 1 - I - 0x00EEA7 07:AE97: 5C        .byte $5C
- D 1 - I - 0x00EEA8 07:AE98: 49        .byte $49
- D 1 - I - 0x00EEA9 07:AE99: 2C        .byte $2C
- D 1 - I - 0x00EEAA 07:AE9A: 2C        .byte $2C
- D 1 - I - 0x00EEAB 07:AE9B: 2C        .byte $2C
- D 1 - I - 0x00EEAC 07:AE9C: 2C        .byte $2C
- D 1 - I - 0x00EEAD 07:AE9D: 2C        .byte $2C
- D 1 - I - 0x00EEAE 07:AE9E: 2C        .byte $2C
- D 1 - I - 0x00EEAF 07:AE9F: 2D        .byte $2D
- D 1 - I - 0x00EEB0 07:AEA0: 2C        .byte $2C
- D 1 - I - 0x00EEB1 07:AEA1: 2C        .byte $2C
- D 1 - I - 0x00EEB2 07:AEA2: 2D        .byte $2D
- D 1 - I - 0x00EEB3 07:AEA3: 2C        .byte $2C
- D 1 - I - 0x00EEB4 07:AEA4: 2C        .byte $2C
- D 1 - I - 0x00EEB5 07:AEA5: 2C        .byte $2C
- D 1 - I - 0x00EEB6 07:AEA6: 2C        .byte $2C
- D 1 - I - 0x00EEB7 07:AEA7: 2C        .byte $2C
- D 1 - I - 0x00EEB8 07:AEA8: 2C        .byte $2C
- D 1 - I - 0x00EEB9 07:AEA9: 2F        .byte $2F
- D 1 - I - 0x00EEBA 07:AEAA: 2E        .byte $2E
- D 1 - I - 0x00EEBB 07:AEAB: 2F        .byte $2F
- D 1 - I - 0x00EEBC 07:AEAC: 2E        .byte $2E
- D 1 - I - 0x00EEBD 07:AEAD: 2F        .byte $2F
- D 1 - I - 0x00EEBE 07:AEAE: 2E        .byte $2E
- D 1 - I - 0x00EEBF 07:AEAF: 2F        .byte $2F
- D 1 - I - 0x00EEC0 07:AEB0: 2E        .byte $2E
- D 1 - I - 0x00EEC1 07:AEB1: 2E        .byte $2E
- D 1 - I - 0x00EEC2 07:AEB2: 2F        .byte $2F
- D 1 - I - 0x00EEC3 07:AEB3: 2E        .byte $2E
- D 1 - I - 0x00EEC4 07:AEB4: 2F        .byte $2F
- D 1 - I - 0x00EEC5 07:AEB5: 2E        .byte $2E
- D 1 - I - 0x00EEC6 07:AEB6: 2F        .byte $2F
- D 1 - I - 0x00EEC7 07:AEB7: 2E        .byte $2E
- D 1 - I - 0x00EEC8 07:AEB8: 2F        .byte $2F

- - - - - - 0x00EEC9 07:AEB9: 00        .byte $00
- D 1 - I - 0x00EECA 07:AEBA: A0        .byte $A0



_off012_AEBB_61_halftime:
- D 1 - I - 0x00EECB 07:AEBB: 3C        .byte $3C
- D 1 - I - 0x00EECC 07:AEBC: 02        .byte $C2
- D 1 - I - 0x00EECD 07:AEBD: 00        .byte $00
- D 1 - I - 0x00EECE 07:AEBE: 03        .byte $03
- D 1 - I - 0x00EECF 07:AEBF: 08        .byte $08
- D 1 - I - 0x00EED0 07:AEC0: 08        .byte $08

- D 1 - I - 0x00EED1 07:AEC1: 48        .byte $48
- D 1 - I - 0x00EED2 07:AEC2: 5C        .byte $5C
- D 1 - I - 0x00EED3 07:AEC3: 4A        .byte $5C
- D 1 - I - 0x00EED4 07:AEC4: 4B        .byte $5C
- D 1 - I - 0x00EED5 07:AEC5: 4C        .byte $5C
- D 1 - I - 0x00EED6 07:AEC6: 5C        .byte $5C
- D 1 - I - 0x00EED7 07:AEC7: 5C        .byte $5C
- D 1 - I - 0x00EED8 07:AEC8: 49        .byte $49
- D 1 - I - 0x00EED9 07:AEC9: 2C        .byte $2C
- D 1 - I - 0x00EEDA 07:AECA: 2D        .byte $2D
- D 1 - I - 0x00EEDB 07:AECB: 2C        .byte $2C
- D 1 - I - 0x00EEDC 07:AECC: 2C        .byte $2C
- D 1 - I - 0x00EEDD 07:AECD: 2C        .byte $2C
- D 1 - I - 0x00EEDE 07:AECE: 2C        .byte $2C
- D 1 - I - 0x00EEDF 07:AECF: 2C        .byte $2C
- D 1 - I - 0x00EEE0 07:AED0: 2C        .byte $2C
- D 1 - I - 0x00EEE1 07:AED1: 2E        .byte $2E
- D 1 - I - 0x00EEE2 07:AED2: 2F        .byte $2F
- D 1 - I - 0x00EEE3 07:AED3: 2E        .byte $2E
- D 1 - I - 0x00EEE4 07:AED4: 2F        .byte $2F
- D 1 - I - 0x00EEE5 07:AED5: 2E        .byte $2E
- D 1 - I - 0x00EEE6 07:AED6: 2F        .byte $2F
- D 1 - I - 0x00EEE7 07:AED7: 2E        .byte $2E
- D 1 - I - 0x00EEE8 07:AED8: 2F        .byte $2F

- - - - - - 0x00EEE9 07:AED9: 00        .byte $00
- D 1 - I - 0x00EEEA 07:AEDA: A0        .byte $A0



_off012_AEDB_62_черный_фон_ХЗ:
- D 1 - I - 0x00EEEB 07:AEDB: 56        .byte $56
- D 1 - I - 0x00EEEC 07:AEDC: 46        .byte $46
- D 1 - I - 0x00EEED 07:AEDD: 0C        .byte $0C
- D 1 - I - 0x00EEEE 07:AEDE: 02        .byte $02
- D 1 - I - 0x00EEEF 07:AEDF: 08        .byte $08
- D 1 - I - 0x00EEF0 07:AEE0: 10        .byte $10

- D 1 - I - 0x00EEF1 07:AEE1: 00        .byte $00
- D 1 - I - 0x00EEF2 07:AEE2: 01        .byte $01
- D 1 - I - 0x00EEF3 07:AEE3: 01        .byte $01
- D 1 - I - 0x00EEF4 07:AEE4: 01        .byte $01
- D 1 - I - 0x00EEF5 07:AEE5: 01        .byte $01
- D 1 - I - 0x00EEF6 07:AEE6: 01        .byte $01
- D 1 - I - 0x00EEF7 07:AEE7: 01        .byte $01
- D 1 - I - 0x00EEF8 07:AEE8: 00        .byte $00
- D 1 - I - 0x00EEF9 07:AEE9: 00        .byte $00
- D 1 - I - 0x00EEFA 07:AEEA: 01        .byte $01
- D 1 - I - 0x00EEFB 07:AEEB: 01        .byte $01
- D 1 - I - 0x00EEFC 07:AEEC: 01        .byte $01
- D 1 - I - 0x00EEFD 07:AEED: 01        .byte $01
- D 1 - I - 0x00EEFE 07:AEEE: 01        .byte $01
- D 1 - I - 0x00EEFF 07:AEEF: 01        .byte $01
- D 1 - I - 0x00EF00 07:AEF0: 00        .byte $00

- - - - - - 0x00EF01 07:AEF1: 00        .byte $00
- D 1 - I - 0x00EF02 07:AEF2: A0        .byte $A0



_off012_AEF3_63_тень_под_трибунами_серый_фон:
- D 1 - I - 0x00EF03 07:AEF3: 3C        .byte $3C
- D 1 - I - 0x00EF04 07:AEF4: 6A        .byte $6A
- D 1 - I - 0x00EF05 07:AEF5: 21        .byte $21
- D 1 - I - 0x00EF06 07:AEF6: 02        .byte $02
- D 1 - I - 0x00EF07 07:AEF7: 03        .byte $03
- D 1 - I - 0x00EF08 07:AEF8: 15        .byte $15

- D 1 - I - 0x00EF09 07:AEF9: 7A        .byte $7A
- D 1 - I - 0x00EF0A 07:AEFA: 01        .byte $01
- D 1 - I - 0x00EF0B 07:AEFB: 01        .byte $01
- D 1 - I - 0x00EF0C 07:AEFC: 7F        .byte $7F
- D 1 - I - 0x00EF0D 07:AEFD: 14        .byte $14
- D 1 - I - 0x00EF0E 07:AEFE: 15        .byte $15

- - - - - - 0x00EF0F 07:AEFF: 00        .byte $00
- D 1 - I - 0x00EF10 07:AF00: A0        .byte $A0



_off012_AF01_64_серый_фон_схема_драйв_удара_циклона:
- D 1 - I - 0x00EF11 07:AF01: 3C        .byte $3C
- D 1 - I - 0x00EF12 07:AF02: 3E        .byte $3E
- D 1 - I - 0x00EF13 07:AF03: 10        .byte $10
- D 1 - I - 0x00EF14 07:AF04: 02        .byte $02
- D 1 - I - 0x00EF15 07:AF05: 08        .byte $08
- D 1 - I - 0x00EF16 07:AF06: 10        .byte $10

- D 1 - I - 0x00EF17 07:AF07: 01        .byte $01
- D 1 - I - 0x00EF18 07:AF08: 01        .byte $01
- D 1 - I - 0x00EF19 07:AF09: 01        .byte $01
- D 1 - I - 0x00EF1A 07:AF0A: 01        .byte $01
- D 1 - I - 0x00EF1B 07:AF0B: 01        .byte $01
- D 1 - I - 0x00EF1C 07:AF0C: 01        .byte $01
- D 1 - I - 0x00EF1D 07:AF0D: 01        .byte $01
- D 1 - I - 0x00EF1E 07:AF0E: 01        .byte $01
- D 1 - I - 0x00EF1F 07:AF0F: 01        .byte $01
- D 1 - I - 0x00EF20 07:AF10: 01        .byte $01
- D 1 - I - 0x00EF21 07:AF11: 01        .byte $01
- D 1 - I - 0x00EF22 07:AF12: 01        .byte $01
- D 1 - I - 0x00EF23 07:AF13: 01        .byte $01
- D 1 - I - 0x00EF24 07:AF14: 01        .byte $01
- D 1 - I - 0x00EF25 07:AF15: 01        .byte $01
- D 1 - I - 0x00EF26 07:AF16: 01        .byte $01

- - - - - - 0x00EF27 07:AF17: 00        .byte $00
- D 1 - I - 0x00EF28 07:AF18: A0        .byte $A0



_off012_AF19_65_синий_узкий_фон_ХЗ:
- D 1 - I - 0x00EF29 07:AF19: 3C        .byte $3C
- D 1 - I - 0x00EF2A 07:AF1A: 3E        .byte $3E
- D 1 - I - 0x00EF2B 07:AF1B: 07        .byte $07
- D 1 - I - 0x00EF2C 07:AF1C: 02        .byte $02
- D 1 - I - 0x00EF2D 07:AF1D: 08        .byte $08
- D 1 - I - 0x00EF2E 07:AF1E: 10        .byte $10

- D 1 - I - 0x00EF2F 07:AF1F: 01        .byte $01
- D 1 - I - 0x00EF30 07:AF20: 01        .byte $01
- D 1 - I - 0x00EF31 07:AF21: 01        .byte $01
- D 1 - I - 0x00EF32 07:AF22: 01        .byte $01
- D 1 - I - 0x00EF33 07:AF23: 01        .byte $01
- D 1 - I - 0x00EF34 07:AF24: 01        .byte $01
- D 1 - I - 0x00EF35 07:AF25: 01        .byte $01
- D 1 - I - 0x00EF36 07:AF26: 01        .byte $01
- D 1 - I - 0x00EF37 07:AF27: 01        .byte $01
- D 1 - I - 0x00EF38 07:AF28: 01        .byte $01
- D 1 - I - 0x00EF39 07:AF29: 01        .byte $01
- D 1 - I - 0x00EF3A 07:AF2A: 01        .byte $01
- D 1 - I - 0x00EF3B 07:AF2B: 01        .byte $01
- D 1 - I - 0x00EF3C 07:AF2C: 01        .byte $01
- D 1 - I - 0x00EF3D 07:AF2D: 01        .byte $01
- D 1 - I - 0x00EF3E 07:AF2E: 01        .byte $01

- - - - - - 0x00EF3F 07:AF2F: 00        .byte $00
- D 1 - I - 0x00EF40 07:AF30: A0        .byte $A0



_off012_AF31_66_фон_замаха_шнайдера:
- D 1 - I - 0x00EF41 07:AF31: 06        .byte $06
- D 1 - I - 0x00EF42 07:AF32: 00        .byte $00
- D 1 - I - 0x00EF43 07:AF33: 8E        .byte $8E
- D 1 - I - 0x00EF44 07:AF34: 08        .byte $08
- D 1 - I - 0x00EF45 07:AF35: 04        .byte $04
- D 1 - I - 0x00EF46 07:AF36: 42        .byte $42

- D 1 - I - 0x00EF47 07:AF37: 28        .byte $28
- D 1 - I - 0x00EF48 07:AF38: 29        .byte $29
- D 1 - I - 0x00EF49 07:AF39: 2A        .byte $2A
- D 1 - I - 0x00EF4A 07:AF3A: 2B        .byte $2B
- D 1 - I - 0x00EF4B 07:AF3B: 2C        .byte $2C
- D 1 - I - 0x00EF4C 07:AF3C: 2D        .byte $2D
- D 1 - I - 0x00EF4D 07:AF3D: 2E        .byte $2E
- D 1 - I - 0x00EF4E 07:AF3E: 2F        .byte $2F
- D 1 - I - 0x00EF4F 07:AF3F: 30        .byte $30
- D 1 - I - 0x00EF50 07:AF40: 31        .byte $31
- D 1 - I - 0x00EF51 07:AF41: 32        .byte $32
- D 1 - I - 0x00EF52 07:AF42: 33        .byte $33
- D 1 - I - 0x00EF53 07:AF43: 34        .byte $34
- D 1 - I - 0x00EF54 07:AF44: 29        .byte $29
- D 1 - I - 0x00EF55 07:AF45: 2A        .byte $2A
- D 1 - I - 0x00EF56 07:AF46: 2F        .byte $2F
- D 1 - I - 0x00EF57 07:AF47: 28        .byte $28
- D 1 - I - 0x00EF58 07:AF48: 29        .byte $29
- D 1 - I - 0x00EF59 07:AF49: 2A        .byte $2A
- D 1 - I - 0x00EF5A 07:AF4A: 2B        .byte $2B
- D 1 - I - 0x00EF5B 07:AF4B: 2C        .byte $2C
- D 1 - I - 0x00EF5C 07:AF4C: 2D        .byte $2D
- D 1 - I - 0x00EF5D 07:AF4D: 2E        .byte $2E
- D 1 - I - 0x00EF5E 07:AF4E: 2F        .byte $2F
- D 1 - I - 0x00EF5F 07:AF4F: 30        .byte $30
- D 1 - I - 0x00EF60 07:AF50: 31        .byte $31
- D 1 - I - 0x00EF61 07:AF51: 32        .byte $32
- D 1 - I - 0x00EF62 07:AF52: 33        .byte $33
- D 1 - I - 0x00EF63 07:AF53: 34        .byte $34
- D 1 - I - 0x00EF64 07:AF54: 29        .byte $29
- D 1 - I - 0x00EF65 07:AF55: 2A        .byte $2A
- D 1 - I - 0x00EF66 07:AF56: 2F        .byte $2F
- - - - - - 0x00EF67 07:AF57: 00        .byte $00

- D 1 - I - 0x00EF68 07:AF58: FF        .byte $FF
- D 1 - I - 0x00EF69 07:AF59: 7F        .byte $7F



_off012_AF5A_67_фон_замаха_цубасы:
- D 1 - I - 0x00EF6A 07:AF5A: 06        .byte $06
- D 1 - I - 0x00EF6B 07:AF5B: 00        .byte $00
- D 1 - I - 0x00EF6C 07:AF5C: 8D        .byte $8D
- D 1 - I - 0x00EF6D 07:AF5D: 08        .byte $08
- D 1 - I - 0x00EF6E 07:AF5E: 04        .byte $04
- D 1 - I - 0x00EF6F 07:AF5F: 42        .byte $42

- D 1 - I - 0x00EF70 07:AF60: 28        .byte $28
- D 1 - I - 0x00EF71 07:AF61: 29        .byte $29
- D 1 - I - 0x00EF72 07:AF62: 2A        .byte $2A
- D 1 - I - 0x00EF73 07:AF63: 2B        .byte $2B
- D 1 - I - 0x00EF74 07:AF64: 2C        .byte $2C
- D 1 - I - 0x00EF75 07:AF65: 2D        .byte $2D
- D 1 - I - 0x00EF76 07:AF66: 2E        .byte $2E
- D 1 - I - 0x00EF77 07:AF67: 2F        .byte $2F
- D 1 - I - 0x00EF78 07:AF68: 30        .byte $30
- D 1 - I - 0x00EF79 07:AF69: 31        .byte $31
- D 1 - I - 0x00EF7A 07:AF6A: 32        .byte $32
- D 1 - I - 0x00EF7B 07:AF6B: 33        .byte $33
- D 1 - I - 0x00EF7C 07:AF6C: 34        .byte $34
- D 1 - I - 0x00EF7D 07:AF6D: 29        .byte $29
- D 1 - I - 0x00EF7E 07:AF6E: 2A        .byte $2A
- D 1 - I - 0x00EF7F 07:AF6F: 2F        .byte $2F
- D 1 - I - 0x00EF80 07:AF70: 28        .byte $28
- D 1 - I - 0x00EF81 07:AF71: 29        .byte $29
- D 1 - I - 0x00EF82 07:AF72: 2A        .byte $2A
- D 1 - I - 0x00EF83 07:AF73: 2B        .byte $2B
- D 1 - I - 0x00EF84 07:AF74: 2C        .byte $2C
- D 1 - I - 0x00EF85 07:AF75: 2D        .byte $2D
- D 1 - I - 0x00EF86 07:AF76: 2E        .byte $2E
- D 1 - I - 0x00EF87 07:AF77: 2F        .byte $2F
- D 1 - I - 0x00EF88 07:AF78: 30        .byte $30
- D 1 - I - 0x00EF89 07:AF79: 31        .byte $31
- D 1 - I - 0x00EF8A 07:AF7A: 32        .byte $32
- D 1 - I - 0x00EF8B 07:AF7B: 33        .byte $33
- D 1 - I - 0x00EF8C 07:AF7C: 34        .byte $34
- D 1 - I - 0x00EF8D 07:AF7D: 29        .byte $29
- D 1 - I - 0x00EF8E 07:AF7E: 2A        .byte $2A
- D 1 - I - 0x00EF8F 07:AF7F: 2F        .byte $2F
- - - - - - 0x00EF90 07:AF80: 00        .byte $00

- D 1 - I - 0x00EF91 07:AF81: FF        .byte $FF
- D 1 - I - 0x00EF92 07:AF82: 7F        .byte $7F



_off012_AF83_68_фон_замаха_джаиро:
- D 1 - I - 0x00EF93 07:AF83: 06        .byte $06
- D 1 - I - 0x00EF94 07:AF84: 00        .byte $00
- D 1 - I - 0x00EF95 07:AF85: 8F        .byte $8F
- D 1 - I - 0x00EF96 07:AF86: 08        .byte $08
- D 1 - I - 0x00EF97 07:AF87: 04        .byte $04
- D 1 - I - 0x00EF98 07:AF88: 42        .byte $42

- D 1 - I - 0x00EF99 07:AF89: 28        .byte $28
- D 1 - I - 0x00EF9A 07:AF8A: 29        .byte $29
- D 1 - I - 0x00EF9B 07:AF8B: 2A        .byte $2A
- D 1 - I - 0x00EF9C 07:AF8C: 2B        .byte $2B
- D 1 - I - 0x00EF9D 07:AF8D: 2C        .byte $2C
- D 1 - I - 0x00EF9E 07:AF8E: 2D        .byte $2D
- D 1 - I - 0x00EF9F 07:AF8F: 2E        .byte $2E
- D 1 - I - 0x00EFA0 07:AF90: 2F        .byte $2F
- D 1 - I - 0x00EFA1 07:AF91: 30        .byte $30
- D 1 - I - 0x00EFA2 07:AF92: 31        .byte $31
- D 1 - I - 0x00EFA3 07:AF93: 32        .byte $32
- D 1 - I - 0x00EFA4 07:AF94: 33        .byte $33
- D 1 - I - 0x00EFA5 07:AF95: 34        .byte $34
- D 1 - I - 0x00EFA6 07:AF96: 29        .byte $29
- D 1 - I - 0x00EFA7 07:AF97: 2A        .byte $2A
- D 1 - I - 0x00EFA8 07:AF98: 2F        .byte $2F
- D 1 - I - 0x00EFA9 07:AF99: 28        .byte $28
- D 1 - I - 0x00EFAA 07:AF9A: 29        .byte $29
- D 1 - I - 0x00EFAB 07:AF9B: 2A        .byte $2A
- D 1 - I - 0x00EFAC 07:AF9C: 2B        .byte $2B
- D 1 - I - 0x00EFAD 07:AF9D: 2C        .byte $2C
- D 1 - I - 0x00EFAE 07:AF9E: 2D        .byte $2D
- D 1 - I - 0x00EFAF 07:AF9F: 2E        .byte $2E
- D 1 - I - 0x00EFB0 07:AFA0: 2F        .byte $2F
- D 1 - I - 0x00EFB1 07:AFA1: 30        .byte $30
- D 1 - I - 0x00EFB2 07:AFA2: 31        .byte $31
- D 1 - I - 0x00EFB3 07:AFA3: 32        .byte $32
- D 1 - I - 0x00EFB4 07:AFA4: 33        .byte $33
- D 1 - I - 0x00EFB5 07:AFA5: 34        .byte $34
- D 1 - I - 0x00EFB6 07:AFA6: 29        .byte $29
- D 1 - I - 0x00EFB7 07:AFA7: 2A        .byte $2A
- D 1 - I - 0x00EFB8 07:AFA8: 2F        .byte $2F
- - - - - - 0x00EFB9 07:AFA9: 00        .byte $00
- D 1 - I - 0x00EFBA 07:AFAA: DF        .byte $DF
- D 1 - I - 0x00EFBB 07:AFAB: 7F        .byte $7F
- D 1 - I - 0x00EFBC 07:AFAC: 00        .byte $00
- D 1 - I - 0x00EFBD 07:AFAD: DF        .byte $DF
- D 1 - I - 0x00EFBE 07:AFAE: 7F        .byte $7F
- D 1 - I - 0x00EFBF 07:AFAF: 00        .byte $00
- D 1 - I - 0x00EFC0 07:AFB0: DF        .byte $DF
- D 1 - I - 0x00EFC1 07:AFB1: 7F        .byte $7F
- D 1 - I - 0x00EFC2 07:AFB2: 00        .byte $00
- D 1 - I - 0x00EFC3 07:AFB3: DF        .byte $DF
- D 1 - I - 0x00EFC4 07:AFB4: 7F        .byte $7F
- D 1 - I - 0x00EFC5 07:AFB5: 00        .byte $00
- D 1 - I - 0x00EFC6 07:AFB6: DF        .byte $DF
- D 1 - I - 0x00EFC7 07:AFB7: 7F        .byte $7F
- D 1 - I - 0x00EFC8 07:AFB8: 00        .byte $00
- D 1 - I - 0x00EFC9 07:AFB9: DF        .byte $DF
- D 1 - I - 0x00EFCA 07:AFBA: 7F        .byte $7F
- D 1 - I - 0x00EFCB 07:AFBB: 00        .byte $00
- D 1 - I - 0x00EFCC 07:AFBC: DF        .byte $DF
- D 1 - I - 0x00EFCD 07:AFBD: 7F        .byte $7F
- D 1 - I - 0x00EFCE 07:AFBE: 00        .byte $00
- D 1 - I - 0x00EFCF 07:AFBF: DF        .byte $DF
- D 1 - I - 0x00EFD0 07:AFC0: 7F        .byte $7F
- D 1 - I - 0x00EFD1 07:AFC1: 00        .byte $00
- D 1 - I - 0x00EFD2 07:AFC2: DF        .byte $DF
- D 1 - I - 0x00EFD3 07:AFC3: 7F        .byte $7F
- D 1 - I - 0x00EFD4 07:AFC4: 00        .byte $00
- D 1 - I - 0x00EFD5 07:AFC5: DF        .byte $DF
- D 1 - I - 0x00EFD6 07:AFC6: 7F        .byte $7F
- D 1 - I - 0x00EFD7 07:AFC7: 00        .byte $00
- D 1 - I - 0x00EFD8 07:AFC8: DF        .byte $DF
- D 1 - I - 0x00EFD9 07:AFC9: 7F        .byte $7F
- D 1 - I - 0x00EFDA 07:AFCA: 00        .byte $00
- D 1 - I - 0x00EFDB 07:AFCB: DF        .byte $DF
- D 1 - I - 0x00EFDC 07:AFCC: 7F        .byte $7F
- D 1 - I - 0x00EFDD 07:AFCD: 00        .byte $00
- D 1 - I - 0x00EFDE 07:AFCE: DF        .byte $DF
- D 1 - I - 0x00EFDF 07:AFCF: 7F        .byte $7F
- D 1 - I - 0x00EFE0 07:AFD0: 00        .byte $00
- D 1 - I - 0x00EFE1 07:AFD1: DF        .byte $DF
- D 1 - I - 0x00EFE2 07:AFD2: 7F        .byte $7F
- D 1 - I - 0x00EFE3 07:AFD3: 00        .byte $00
- D 1 - I - 0x00EFE4 07:AFD4: DF        .byte $DF
- D 1 - I - 0x00EFE5 07:AFD5: 7F        .byte $7F
- D 1 - I - 0x00EFE6 07:AFD6: 00        .byte $00

- D 1 - I - 0x00EFE7 07:AFD7: FF        .byte $FF
- D 1 - I - 0x00EFE8 07:AFD8: 7F        .byte $7F



_off012_AFD9_69_коридор_дырка_в_стене:
- D 1 - I - 0x00EFE9 07:AFD9: 56        .byte $56
- D 1 - I - 0x00EFEA 07:AFDA: 46        .byte $46
- D 1 - I - 0x00EFEB 07:AFDB: 10        .byte $10
- D 1 - I - 0x00EFEC 07:AFDC: 02        .byte $02
- D 1 - I - 0x00EFED 07:AFDD: 08        .byte $08
- D 1 - I - 0x00EFEE 07:AFDE: 10        .byte $10

- D 1 - I - 0x00EFEF 07:AFDF: 02        .byte $02
- D 1 - I - 0x00EFF0 07:AFE0: 68        .byte $68
- D 1 - I - 0x00EFF1 07:AFE1: 02        .byte $02
- D 1 - I - 0x00EFF2 07:AFE2: 02        .byte $02
- D 1 - I - 0x00EFF3 07:AFE3: 35        .byte $35
- D 1 - I - 0x00EFF4 07:AFE4: 68        .byte $68
- D 1 - I - 0x00EFF5 07:AFE5: 02        .byte $02
- D 1 - I - 0x00EFF6 07:AFE6: 02        .byte $02
- D 1 - I - 0x00EFF7 07:AFE7: 65        .byte $65
- D 1 - I - 0x00EFF8 07:AFE8: 66        .byte $66
- D 1 - I - 0x00EFF9 07:AFE9: 65        .byte $65
- D 1 - I - 0x00EFFA 07:AFEA: 65        .byte $65
- D 1 - I - 0x00EFFB 07:AFEB: 36        .byte $36
- D 1 - I - 0x00EFFC 07:AFEC: 66        .byte $66
- D 1 - I - 0x00EFFD 07:AFED: 65        .byte $65
- D 1 - I - 0x00EFFE 07:AFEE: 65        .byte $65

- - - - - - 0x00EFFF 07:AFEF: 00        .byte $00
- D 1 - I - 0x00F000 07:AFF0: A0        .byte $A0



.out .sprintf("Free bytes in bank 07: %04X [%d]", ($C000 - *), ($C000 - *))
