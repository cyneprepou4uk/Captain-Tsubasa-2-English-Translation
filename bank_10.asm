.segment "BANK_10"
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
con_rts                 = $FE
con_FF                  = $FF

; поинтер находится в 0x0010DF, продолжение таблицы в банке 11
- D - I - 0x012010 10:A000: DA A0     .word off_A0DA_00_полет_мяча_шнайдера
- D - I - 0x012012 10:A002: 67 A1     .word off_A167_01_полет_мяча_диаза
- D - I - 0x012014 10:A004: F1 A1     .word off_A1F1_02_цубаса_резкий_поворот_красный
- D - I - 0x012016 10:A006: 01 A2     .word off_A201_03
- D - I - 0x012018 10:A008: 18 A2     .word off_A218_04_цубаса_злой_молчит_красный_справа
- D - I - 0x01201A 10:A00A: 23 A2     .word off_A223_05_карлос_злой_молчит_движение_влево_красный
- D - I - 0x01201C 10:A00C: 31 A2     .word off_A231_06_хюга_обычный_красный
- D - I - 0x01201E 10:A00E: 3B A2     .word off_A23B_07_цубаса_движение_спиной_влево_поворот_вбок_красный
- D - I - 0x012020 10:A010: 51 A2     .word off_A251_08_цубаса_в_шоке_красный
- D - I - 0x012022 10:A012: 5C A2     .word off_A25C_09_цубаса_злой_белый_справа
- D - I - 0x012024 10:A014: 66 A2     .word off_A266_0A_карлос_злой_желтый_справа
- D - I - 0x012026 10:A016: 70 A2     .word off_A270_0B
- D - I - 0x012028 10:A018: 87 A2     .word off_A287_0C_цубаса_на_фоне_сан_паулу
- D - I - 0x01202A 10:A01A: 8E A2     .word off_A28E_0D_кубок
- D - I - 0x01202C 10:A01C: 95 A2     .word off_A295_0E_цубаса_на_фоне_японии
- D - I - 0x01202E 10:A01E: 9C A2     .word off_A29C_0F_мисаки_на_фоне_нанкацу
- D - I - 0x012030 10:A020: A3 A2     .word off_A2A3_10_цубаса_обычный_белый_справа
- D - I - 0x012032 10:A022: AD A2     .word off_A2AD_11_цубаса_злой_белый_слева
- D - I - 0x012034 10:A024: B8 A2     .word off_A2B8_12_цубаса_в_шоке_белый_слева
- D - I - 0x012036 10:A026: C3 A2     .word off_A2C3_13_цубаса_молчит_поворот_вбок_белый_слева
- D - I - 0x012038 10:A028: CD A2     .word off_A2CD_14_цубаса_молчит_движение_направо_смотрит_влево_белый
- D - I - 0x01203A 10:A02A: DA A2     .word off_A2DA_15_карлос_злой_молчит_красный_справа
- D - I - 0x01203C 10:A02C: E1 A2     .word off_A2E1_16_цубаса_молчит_поворот_вбок_красный_слева
- D - I - 0x01203E 10:A02E: EB A2     .word off_A2EB_17_цубаса_на_фоне_сан_паулу_серый
- D - I - 0x012040 10:A030: F2 A2     .word off_A2F2_18_мисуги_молчит_движение_направо_смотрит_влево_белый
- D - I - 0x012042 10:A032: FF A2     .word off_A2FF_19_мисаки_обычный_белый_слева
- D - I - 0x012044 10:A034: 0A A3     .word off_A30A_1A_йоко_медленное_движение_налево
- D - I - 0x012046 10:A036: 1E A3     .word off_A31E_1B_мисаки_злой_белый_слева
- D - I - 0x012048 10:A038: 29 A3     .word off_A329_1C_мацуяма_злой_желтый_слева
- D - I - 0x01204A 10:A03A: 34 A3     .word off_A334_1D_мацуяма_злой_желтый_справа
- D - I - 0x01204C 10:A03C: 3E A3     .word off_A33E_1E_мисаки_злой_молчит_белый_слева
- D - I - 0x01204E 10:A03E: 46 A3     .word off_A346_1F_мисаки_обычный_молчит_белый_справа
- D - I - 0x012050 10:A040: 4D A3     .word off_A34D_20_мисуги_злой_белый_справа
- D - I - 0x012052 10:A042: 57 A3     .word off_A357_21_шнайдер_справа
- D - I - 0x012054 10:A044: 61 A3     .word off_A361_22_китаец_обычный_справа
- D - I - 0x012056 10:A046: 6B A3     .word off_A36B_23
- D - I - 0x012058 10:A048: 80 A3     .word off_A380_24_ишизаки_моргает
- D - I - 0x01205A 10:A04A: 92 A3     .word off_A392_25_ишизаки_злой_слева
- D - I - 0x01205C 10:A04C: A2 A3     .word off_A3A2_26_санае_обычная_справа
- D - I - 0x01205E 10:A04E: AC A3     .word off_A3AC_27_санае_закрытые_глаза_справа
- D - I - 0x012060 10:A050: B6 A3     .word off_A3B6_28_санае_в_шоке_справа
- D - I - 0x012062 10:A052: BD A3     .word off_A3BD_29_санае_расстроена_справа
- D - I - 0x012064 10:A054: C4 A3     .word off_A3C4_2A_йоко_обычная_справа
- D - I - 0x012066 10:A056: CE A3     .word off_A3CE_2B_йоко_закрытые_глаза_справа
- D - I - 0x012068 10:A058: D8 A3     .word off_A3D8_2C_йоко_подмигивает_справа
- D - I - 0x01206A 10:A05A: DF A3     .word off_A3DF_2D_йоко_злая_резко_движется_влево
- D - I - 0x01206C 10:A05C: F4 A3     .word off_A3F4_2E_яои_молчит_справа
- D - I - 0x01206E 10:A05E: FB A3     .word off_A3FB_2F_фуджисава_молчит_справа
- - - - - 0x012070 10:A060: 02 A4     .word off_A402_30_хюга_злой_черный_справа
- D - I - 0x012072 10:A062: 0C A4     .word off_A40C_31_хюга_обычный_черный_справа_поднимает_брови
- D - I - 0x012074 10:A064: 19 A4     .word off_A419_32_хюга_злой_красный_справа
- D - I - 0x012076 10:A066: 23 A4     .word off_A423_33_хюга_обычный_красный_слева_поднимает_брови
- D - I - 0x012078 10:A068: 31 A4     .word off_A431_34_вакабаяши_справа
- D - I - 0x01207A 10:A06A: 3B A4     .word off_A43B_35
- D - I - 0x01207C 10:A06C: 45 A4     .word off_A445_36_роберто_очки_молчит_справа
- D - I - 0x01207E 10:A06E: 4C A4     .word off_A44C_37_меон_слева
- D - I - 0x012080 10:A070: 57 A4     .word off_A457_38_меон_справа
- D - I - 0x012082 10:A072: 61 A4     .word off_A461_39_вакабаяши_слева
- D - I - 0x012084 10:A074: 6C A4     .word off_A46C_3A_гертис_справа
- D - I - 0x012086 10:A076: 76 A4     .word off_A476_3B_роберто_обычный_справа
- D - I - 0x012088 10:A078: 80 A4     .word off_A480_3C_роберто_злой_справа
- D - I - 0x01208A 10:A07A: 8A A4     .word off_A48A_3D_роберто_очки_справа
- D - I - 0x01208C 10:A07C: 94 A4     .word off_A494_3E_роберто_очки_скрещены_руки
- D - I - 0x01208E 10:A07E: 9B A4     .word off_A49B_3F_мисаки_обычный_красный_справа
- D - I - 0x012090 10:A080: A5 A4     .word off_A4A5_40_катагири_слева
- D - I - 0x012092 10:A082: B0 A4     .word off_A4B0_41_очкастый_менеджер_закрытые_глаза_справа
- D - I - 0x012094 10:A084: BA A4     .word off_A4BA_42_миками_справа
- D - I - 0x012096 10:A086: C4 A4     .word off_A4C4_43_сан_паулу_без_цубасы
- D - I - 0x012098 10:A088: CD A4     .word off_A4CD_44_ишизаки_закрытые_глаза_справа
- D - I - 0x01209A 10:A08A: D7 A4     .word off_A4D7_45_коимбра_тень_справа
- D - I - 0x01209C 10:A08C: E1 A4     .word off_A4E1_46_менеджер_бразилии_закрытые_глаза_справа
- D - I - 0x01209E 10:A08E: EB A4     .word off_A4EB_47_цубаса_обычный_красный_справа
- D - I - 0x0120A0 10:A090: F5 A4     .word off_A4F5_48_карлос_в_шоке_желтый_слева
- D - I - 0x0120A2 10:A092: FD A4     .word off_A4FD_49_хюга_злой_молчит_черный_справа
- D - I - 0x0120A4 10:A094: 04 A5     .word off_A504_4A_гертиз_в_тени_движение_направо
- D - I - 0x0120A6 10:A096: 11 A5     .word off_A511_4B_цубаса_злой_красный_справа
- D - I - 0x0120A8 10:A098: 1B A5     .word off_A51B_4C_карлос_в_шоке_желтый_справа
- D - I - 0x0120AA 10:A09A: 22 A5     .word off_A522_4D_роберто_обычный_слева
- D - I - 0x0120AC 10:A09C: 2D A5     .word off_A52D_4E_цубаса_обычный_белый_слева
- D - I - 0x0120AE 10:A09E: 38 A5     .word off_A538_4F_санае_расстроена_поднимает_брови_слева
- D - I - 0x0120B0 10:A0A0: 46 A5     .word off_A546_50_роберто_молчит_серый_слева
- D - I - 0x0120B2 10:A0A2: 4E A5     .word off_A54E_51_цубаса_молчит_серый_справа
- D - I - 0x0120B4 10:A0A4: 55 A5     .word off_A555_52_цубаса_злой_молчит_красный_справа
- D - I - 0x0120B6 10:A0A6: 5C A5     .word off_A55C_53_цубаса_с_кубком_медленно_движется_влево
- D - I - 0x0120B8 10:A0A8: 73 A5     .word off_A573_54_цубаса_красный_движется_влево_и_поворачивается
- D - I - 0x0120BA 10:A0AA: 8C A5     .word off_A58C_55_цубаса_со_спины_красный
- D - I - 0x0120BC 10:A0AC: 93 A5     .word off_A593_56_санае_в_шоке_слева
- D - I - 0x0120BE 10:A0AE: 9B A5     .word off_A59B_57_цубаса_злой_красный_слева
- D - I - 0x0120C0 10:A0B0: A6 A5     .word off_A5A6_58_цубаса_злой_молчит_белый_слева
- D - I - 0x0120C2 10:A0B2: AE A5     .word off_A5AE_59
- D - I - 0x0120C4 10:A0B4: C5 A5     .word off_A5C5_5A_карлос_злой_молчит_желтый_слева
- D - I - 0x0120C6 10:A0B6: CD A5     .word off_A5CD_5B_вакабаяши_в_шоке
- D - I - 0x0120C8 10:A0B8: D9 A5     .word off_A5D9_5C_пьер_молчит_справа
- D - I - 0x0120CA 10:A0BA: E0 A5     .word off_A5E0_5D_пьер_в_шоке_слева
- D - I - 0x0120CC 10:A0BC: E8 A5     .word off_A5E8_5E_коимбра_тень_серый_слева
- D - I - 0x0120CE 10:A0BE: F3 A5     .word off_A5F3_5F_коимбра_злой_слева
- D - I - 0x0120D0 10:A0C0: FE A5     .word off_A5FE_60_коимбра_злой_тень_слева
- D - I - 0x0120D2 10:A0C2: 09 A6     .word off_A609_61_карлос_злой_красный_справа
- D - I - 0x0120D4 10:A0C4: 13 A6     .word off_A613_62_роберто_очки_молчит_слева
- D - I - 0x0120D6 10:A0C6: 1B A6     .word off_A61B_63_карлос_обычный_красный_справа
- D - I - 0x0120D8 10:A0C8: 25 A6     .word off_A625_64_карлос_в_шоке_красный_справа
- D - I - 0x0120DA 10:A0CA: 2E A6     .word off_A62E_65_цубаса_со_спины_красный
- D - I - 0x0120DC 10:A0CC: 35 A6     .word off_A635_66_цубаса_обычный_красный_слева
- D - I - 0x0120DE 10:A0CE: 40 A6     .word off_A640_67_цубаса_обычный_молчит_красный_слева
- D - I - 0x0120E0 10:A0D0: 48 A6     .word off_A648_68_ишизаки_закрытые_глаза_слева
- D - I - 0x0120E2 10:A0D2: 53 A6     .word off_A653_69_цубаса_резко_поворачивается_спиной_красный_справа
- D - I - 0x0120E4 10:A0D4: 5D A6     .word off_A65D_6A_цубаса_злой_молчит_красный_слева
- D - I - 0x0120E6 10:A0D6: 65 A6     .word off_A665_6B_ишизаки_надутые_губы
- D - I - 0x0120E8 10:A0D8: 74 A6     .word off_A674_6C_движение_блеска_очков_роберто



off_A0DA_00_полет_мяча_шнайдера:
- D - I - 0x0120EA 10:A0DA: 00        .byte $00

- D - I - 0x0120EB 10:A0DB: F1        .byte con_координаты_Y_X
- D - I - 0x0120EC 10:A0DC: 2E        .byte $2E
- D - I - 0x0120ED 10:A0DD: 6A        .byte $6A

- D - I - 0x0120EE 10:A0DE: 05        .byte $05

- D - I - 0x0120EF 10:A0DF: F7        .byte con_физика
- D - I - 0x0120F0 10:A0E0: E9        .byte $E9
- D - I - 0x0120F1 10:A0E1: 00        .byte $00
- D - I - 0x0120F2 10:A0E2: 00        .byte $00

- D - I - 0x0120F3 10:A0E3: 86 81     .dbyt off_A681 - $2000
- D - I - 0x0120F5 10:A0E5: 01        .byte $01

- D - I - 0x0120F6 10:A0E6: 86 C2     .dbyt off_A6C2 - $2000
- D - I - 0x0120F8 10:A0E8: 01        .byte $01

- D - I - 0x0120F9 10:A0E9: 86 F3     .dbyt off_A6F3 - $2000
- D - I - 0x0120FB 10:A0EB: 01        .byte $01

- D - I - 0x0120FC 10:A0EC: 87 18     .dbyt off_A718 - $2000
- D - I - 0x0120FE 10:A0EE: 01        .byte $01

- D - I - 0x0120FF 10:A0EF: 87 49     .dbyt off_A749 - $2000
- D - I - 0x012101 10:A0F1: 01        .byte $01

- D - I - 0x012102 10:A0F2: 87 5D     .dbyt off_A75D - $2000
- D - I - 0x012104 10:A0F4: 01        .byte $01

- D - I - 0x012105 10:A0F5: 87 71     .dbyt off_A771 - $2000
- D - I - 0x012107 10:A0F7: 01        .byte $01

- D - I - 0x012108 10:A0F8: 87 80     .dbyt off_A780 - $2000
- D - I - 0x01210A 10:A0FA: 01        .byte $01

- D - I - 0x01210B 10:A0FB: 87 8F     .dbyt off_A78F - $2000
- D - I - 0x01210D 10:A0FD: 01        .byte $01

- D - I - 0x01210E 10:A0FE: 87 9E     .dbyt off_A79E - $2000
- D - I - 0x012110 10:A100: 01        .byte $01

- D - I - 0x012111 10:A101: 87 AD     .dbyt off_A7AD - $2000
- D - I - 0x012113 10:A103: 01        .byte $01

- D - I - 0x012114 10:A104: 87 B7     .dbyt off_A7B7 - $2000
- D - I - 0x012116 10:A106: 01        .byte $01

- D - I - 0x012117 10:A107: 87 C1     .dbyt off_A7C1 - $2000

- D - I - 0x012119 10:A109: F1        .byte con_координаты_Y_X
- D - I - 0x01211A 10:A10A: 22        .byte $22
- D - I - 0x01211B 10:A10B: 3E        .byte $3E

- D - I - 0x01211C 10:A10C: F7        .byte con_физика
- D - I - 0x01211D 10:A10D: 00        .byte $00
- D - I - 0x01211E 10:A10E: 00        .byte $00
- D - I - 0x01211F 10:A10F: 00        .byte $00

- D - I - 0x012120 10:A110: E2        .byte con_повторы + $02

- D - I - 0x012121 10:A111: 87 C1     .dbyt off_A7C1 - $2000
- D - I - 0x012123 10:A113: 01        .byte $01

- D - I - 0x012124 10:A114: 87 B7     .dbyt off_A7B7 - $2000
- D - I - 0x012126 10:A116: 01        .byte $01

- D - I - 0x012127 10:A117: 87 AD     .dbyt off_A7AD - $2000
- D - I - 0x012129 10:A119: 01        .byte $01

- D - I - 0x01212A 10:A11A: 87 9E     .dbyt off_A79E - $2000
- D - I - 0x01212C 10:A11C: 01        .byte $01

- D - I - 0x01212D 10:A11D: 87 8F     .dbyt off_A78F - $2000
- D - I - 0x01212F 10:A11F: 01        .byte $01

- D - I - 0x012130 10:A120: 87 80     .dbyt off_A780 - $2000
- D - I - 0x012132 10:A122: 01        .byte $01

- D - I - 0x012133 10:A123: 87 71     .dbyt off_A771 - $2000
- D - I - 0x012135 10:A125: 01        .byte $01

- D - I - 0x012136 10:A126: 87 5D     .dbyt off_A75D - $2000
- D - I - 0x012138 10:A128: 01        .byte $01

- D - I - 0x012139 10:A129: 87 49     .dbyt off_A749 - $2000
- D - I - 0x01213B 10:A12B: 01        .byte $01

- D - I - 0x01213C 10:A12C: 87 18     .dbyt off_A718 - $2000
- D - I - 0x01213E 10:A12E: 01        .byte $01

- D - I - 0x01213F 10:A12F: 86 F3     .dbyt off_A6F3 - $2000
- D - I - 0x012141 10:A131: 01        .byte $01

- D - I - 0x012142 10:A132: 86 C2     .dbyt off_A6C2 - $2000
- D - I - 0x012144 10:A134: 01        .byte $01

- D - I - 0x012145 10:A135: 86 81     .dbyt off_A681 - $2000
- D - I - 0x012147 10:A137: 01        .byte $01

- D - I - 0x012148 10:A138: F0        .byte con_повторить

- D - I - 0x012149 10:A139: F1        .byte con_координаты_Y_X
- D - I - 0x01214A 10:A13A: 26        .byte $26
- D - I - 0x01214B 10:A13B: 62        .byte $62

- D - I - 0x01214C 10:A13C: F7        .byte con_физика
- D - I - 0x01214D 10:A13D: 1A        .byte $1A
- D - I - 0x01214E 10:A13E: 00        .byte $00
- D - I - 0x01214F 10:A13F: 00        .byte $00

- D - I - 0x012150 10:A140: 87 C1     .dbyt off_A7C1 - $2000
- D - I - 0x012152 10:A142: 01        .byte $01

- D - I - 0x012153 10:A143: 87 B7     .dbyt off_A7B7 - $2000
- D - I - 0x012155 10:A145: 01        .byte $01

- D - I - 0x012156 10:A146: 87 AD     .dbyt off_A7AD - $2000
- D - I - 0x012158 10:A148: 01        .byte $01

- D - I - 0x012159 10:A149: 87 9E     .dbyt off_A79E - $2000
- D - I - 0x01215B 10:A14B: 01        .byte $01

- D - I - 0x01215C 10:A14C: 87 8F     .dbyt off_A78F - $2000
- D - I - 0x01215E 10:A14E: 01        .byte $01

- D - I - 0x01215F 10:A14F: 87 80     .dbyt off_A780 - $2000
- D - I - 0x012161 10:A151: 01        .byte $01

- D - I - 0x012162 10:A152: 87 71     .dbyt off_A771 - $2000
- D - I - 0x012164 10:A154: 01        .byte $01

- D - I - 0x012165 10:A155: 87 5D     .dbyt off_A75D - $2000
- D - I - 0x012167 10:A157: 01        .byte $01

- D - I - 0x012168 10:A158: 87 49     .dbyt off_A749 - $2000
- D - I - 0x01216A 10:A15A: 01        .byte $01

- D - I - 0x01216B 10:A15B: 87 18     .dbyt off_A718 - $2000
- D - I - 0x01216D 10:A15D: 01        .byte $01

- D - I - 0x01216E 10:A15E: 86 F3     .dbyt off_A6F3 - $2000
- D - I - 0x012170 10:A160: 01        .byte $01

- D - I - 0x012171 10:A161: 86 C2     .dbyt off_A6C2 - $2000
- D - I - 0x012173 10:A163: 01        .byte $01

- D - I - 0x012174 10:A164: 86 81     .dbyt off_A681 - $2000

- D - I - 0x012176 10:A166: FF        .byte con_выход



off_A167_01_полет_мяча_диаза:
- D - I - 0x012177 10:A167: 00        .byte $00

- D - I - 0x012178 10:A168: F1        .byte con_координаты_Y_X
- D - I - 0x012179 10:A169: 36        .byte $36
- D - I - 0x01217A 10:A16A: 5A        .byte $5A

- D - I - 0x01217B 10:A16B: 05        .byte $05

- D - I - 0x01217C 10:A16C: F7        .byte con_физика
- D - I - 0x01217D 10:A16D: DF        .byte $DF
- D - I - 0x01217E 10:A16E: 00        .byte $00
- D - I - 0x01217F 10:A16F: 00        .byte $00

- D - I - 0x012180 10:A170: 87 C1     .dbyt off_A7C1 - $2000
- D - I - 0x012182 10:A172: 02        .byte $02

- D - I - 0x012183 10:A173: 87 B7     .dbyt off_A7B7 - $2000
- D - I - 0x012185 10:A175: 02        .byte $02

- D - I - 0x012186 10:A176: 87 AD     .dbyt off_A7AD - $2000
- D - I - 0x012188 10:A178: 02        .byte $02

- D - I - 0x012189 10:A179: 87 9E     .dbyt off_A79E - $2000
- D - I - 0x01218B 10:A17B: 01        .byte $01

- D - I - 0x01218C 10:A17C: 87 8F     .dbyt off_A78F - $2000
- D - I - 0x01218E 10:A17E: 01        .byte $01

- D - I - 0x01218F 10:A17F: 87 80     .dbyt off_A780 - $2000
- D - I - 0x012191 10:A181: 01        .byte $01

- D - I - 0x012192 10:A182: 87 71     .dbyt off_A771 - $2000
- D - I - 0x012194 10:A184: 01        .byte $01

- D - I - 0x012195 10:A185: 87 5D     .dbyt off_A75D - $2000
- D - I - 0x012197 10:A187: 01        .byte $01

- D - I - 0x012198 10:A188: 87 49     .dbyt off_A749 - $2000
- D - I - 0x01219A 10:A18A: 01        .byte $01

- D - I - 0x01219B 10:A18B: F1        .byte con_координаты_Y_X
- D - I - 0x01219C 10:A18C: 2E        .byte $2E
- D - I - 0x01219D 10:A18D: 6A        .byte $6A

- D - I - 0x01219E 10:A18E: F7        .byte con_физика
- D - I - 0x01219F 10:A18F: EE        .byte $EE
- D - I - 0x0121A0 10:A190: 00        .byte $00
- D - I - 0x0121A1 10:A191: 00        .byte $00

- D - I - 0x0121A2 10:A192: 87 C1     .dbyt off_A7C1 - $2000
- D - I - 0x0121A4 10:A194: 02        .byte $02

- D - I - 0x0121A5 10:A195: 87 B7     .dbyt off_A7B7 - $2000
- D - I - 0x0121A7 10:A197: 02        .byte $02

- D - I - 0x0121A8 10:A198: 87 AD     .dbyt off_A7AD - $2000
- D - I - 0x0121AA 10:A19A: 03        .byte $03

- D - I - 0x0121AB 10:A19B: 87 9E     .dbyt off_A79E - $2000
- D - I - 0x0121AD 10:A19D: 03        .byte $03

- D - I - 0x0121AE 10:A19E: 87 8F     .dbyt off_A78F - $2000
- D - I - 0x0121B0 10:A1A0: 04        .byte $04

- D - I - 0x0121B1 10:A1A1: 87 80     .dbyt off_A780 - $2000
- D - I - 0x0121B3 10:A1A3: 03        .byte $03

- D - I - 0x0121B4 10:A1A4: 87 71     .dbyt off_A771 - $2000
- D - I - 0x0121B6 10:A1A6: 01        .byte $01

- D - I - 0x0121B7 10:A1A7: F7        .byte con_физика
- D - I - 0x0121B8 10:A1A8: 0E        .byte $0E
- D - I - 0x0121B9 10:A1A9: 00        .byte $00
- D - I - 0x0121BA 10:A1AA: 00        .byte $00

- D - I - 0x0121BB 10:A1AB: 87 71     .dbyt off_A771 - $2000
- D - I - 0x0121BD 10:A1AD: 02        .byte $02

- D - I - 0x0121BE 10:A1AE: 87 5D     .dbyt off_A75D - $2000
- D - I - 0x0121C0 10:A1B0: 02        .byte $02

- D - I - 0x0121C1 10:A1B1: F5        .byte con_F5

- D - I - 0x0121C2 10:A1B2: F7        .byte con_физика
- D - I - 0x0121C3 10:A1B3: 49        .byte $49
- D - I - 0x0121C4 10:A1B4: 07        .byte $07
- D - I - 0x0121C5 10:A1B5: 07        .byte $07

- D - I - 0x0121C6 10:A1B6: 87 49     .dbyt off_A749 - $2000
- D - I - 0x0121C8 10:A1B8: 02        .byte $02

- D - I - 0x0121C9 10:A1B9: 87 18     .dbyt off_A718 - $2000
- D - I - 0x0121CB 10:A1BB: 01        .byte $01

- D - I - 0x0121CC 10:A1BC: 86 F3     .dbyt off_A6F3 - $2000
- D - I - 0x0121CE 10:A1BE: 01        .byte $01

- D - I - 0x0121CF 10:A1BF: 86 C2     .dbyt off_A6C2 - $2000
- D - I - 0x0121D1 10:A1C1: 01        .byte $01

- D - I - 0x0121D2 10:A1C2: F1        .byte con_координаты_Y_X
- D - I - 0x0121D3 10:A1C3: 0A        .byte $0A
- D - I - 0x0121D4 10:A1C4: 3E        .byte $3E

- D - I - 0x0121D5 10:A1C5: F5        .byte con_F5

- D - I - 0x0121D6 10:A1C6: F7        .byte con_физика
- D - I - 0x0121D7 10:A1C7: 2F        .byte $2F
- D - I - 0x0121D8 10:A1C8: 04        .byte $04
- D - I - 0x0121D9 10:A1C9: 07        .byte $07

- D - I - 0x0121DA 10:A1CA: 87 C1     .dbyt off_A7C1 - $2000
- D - I - 0x0121DC 10:A1CC: 01        .byte $01

- D - I - 0x0121DD 10:A1CD: 87 B7     .dbyt off_A7B7 - $2000
- D - I - 0x0121DF 10:A1CF: 01        .byte $01

- D - I - 0x0121E0 10:A1D0: 87 AD     .dbyt off_A7AD - $2000
- D - I - 0x0121E2 10:A1D2: 02        .byte $02

- D - I - 0x0121E3 10:A1D3: 87 9E     .dbyt off_A79E - $2000
- D - I - 0x0121E5 10:A1D5: 02        .byte $02

- D - I - 0x0121E6 10:A1D6: 87 8F     .dbyt off_A78F - $2000
- D - I - 0x0121E8 10:A1D8: 01        .byte $01

- D - I - 0x0121E9 10:A1D9: 87 80     .dbyt off_A780 - $2000
- D - I - 0x0121EB 10:A1DB: 01        .byte $01

- D - I - 0x0121EC 10:A1DC: 87 71     .dbyt off_A771 - $2000
- D - I - 0x0121EE 10:A1DE: 01        .byte $01

- D - I - 0x0121EF 10:A1DF: 87 5D     .dbyt off_A75D - $2000
- D - I - 0x0121F1 10:A1E1: 01        .byte $01

- D - I - 0x0121F2 10:A1E2: 87 49     .dbyt off_A749 - $2000
- D - I - 0x0121F4 10:A1E4: 01        .byte $01

- D - I - 0x0121F5 10:A1E5: 87 18     .dbyt off_A718 - $2000
- D - I - 0x0121F7 10:A1E7: 01        .byte $01

- D - I - 0x0121F8 10:A1E8: 86 F3     .dbyt off_A6F3 - $2000
- D - I - 0x0121FA 10:A1EA: 01        .byte $01

- D - I - 0x0121FB 10:A1EB: 86 C2     .dbyt off_A6C2 - $2000
- D - I - 0x0121FD 10:A1ED: 01        .byte $01

- D - I - 0x0121FE 10:A1EE: 86 81     .dbyt off_A681 - $2000

- D - I - 0x012200 10:A1F0: FF        .byte con_выход



off_A1F1_02_цубаса_резкий_поворот_красный:
- D - I - 0x012201 10:A1F1: 0C        .byte $0C

- D - I - 0x012202 10:A1F2: F1        .byte con_координаты_Y_X
- D - I - 0x012203 10:A1F3: 30        .byte $30
- D - I - 0x012204 10:A1F4: 3E        .byte $3E

- D - I - 0x012205 10:A1F5: 89 16     .dbyt off_A916 - $2000
- D - I - 0x012207 10:A1F7: 39        .byte $39

- D - I - 0x012208 10:A1F8: 89 E3     .dbyt off_A9E3 - $2000
- D - I - 0x01220A 10:A1FA: 02        .byte $02

- D - I - 0x01220B 10:A1FB: FA        .byte con_развилка
- D - I - 0x01220C 10:A1FC: EA A8     .word off_A8EA
- D - I - 0x01220E 10:A1FE: 0D B4     .word off_B40D



off_A201_03:
- D - I - 0x012211 10:A201: 16        .byte $16

- D - I - 0x012212 10:A202: F1        .byte con_координаты_Y_X
- D - I - 0x012213 10:A203: 30        .byte $30
- D - I - 0x012214 10:A204: 97        .byte $97

- D - I - 0x012215 10:A205: 8C 8E     .dbyt off_AC8E - $2000
- D - I - 0x012217 10:A207: 7F        .byte $7F
- D - I - 0x012218 10:A208: 52        .byte $52

- D - I - 0x012219 10:A209: F7        .byte con_физика
- D - I - 0x01221A 10:A20A: 0F        .byte $0F
- D - I - 0x01221B 10:A20B: 00        .byte $00
- D - I - 0x01221C 10:A20C: 00        .byte $00

- D - I - 0x01221D 10:A20D: 4D        .byte $4D

- D - I - 0x01221E 10:A20E: F7        .byte con_физика
- D - I - 0x01221F 10:A20F: 00        .byte $00
- D - I - 0x012220 10:A210: 00        .byte $00
- D - I - 0x012221 10:A211: 00        .byte $00

- D - I - 0x012222 10:A212: FA        .byte con_развилка
- D - I - 0x012223 10:A213: 8E AC     .word off_AC8E
- D - I - 0x012225 10:A215: 19 B2     .word off_B219



off_A218_04_цубаса_злой_молчит_красный_справа:
- D - I - 0x012228 10:A218: 0C        .byte $0C

- D - I - 0x012229 10:A219: F1        .byte con_координаты_Y_X
- D - I - 0x01222A 10:A21A: 30        .byte $30
- D - I - 0x01222B 10:A21B: 48        .byte $48

- D - I - 0x01222C 10:A21C: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x01222E 10:A21E: F9        .byte con_F9

- D - I - 0x01222F 10:A21F: 7F        .byte $7F
- D - I - 0x012230 10:A220: 7F        .byte $7F
- D - I - 0x012231 10:A221: 23        .byte $23

- D - I - 0x012232 10:A222: FF        .byte con_выход



off_A223_05_карлос_злой_молчит_движение_влево_красный:
- D - I - 0x012233 10:A223: 0E        .byte $0E

- D - I - 0x012234 10:A224: F1        .byte con_координаты_Y_X
- D - I - 0x012235 10:A225: 30        .byte $30
- D - I - 0x012236 10:A226: 8B        .byte $8B

- D - I - 0x012237 10:A227: 91 D0     .dbyt off_B1D0 - $2000
- D - I - 0x012239 10:A229: 7F        .byte $7F
- D - I - 0x01223A 10:A22A: 05        .byte $05

- D - I - 0x01223B 10:A22B: F7        .byte con_физика
- D - I - 0x01223C 10:A22C: 0F        .byte $0F
- D - I - 0x01223D 10:A22D: 00        .byte $00
- D - I - 0x01223E 10:A22E: 00        .byte $00

- D - I - 0x01223F 10:A22F: 45        .byte $45

- D - I - 0x012240 10:A230: FF        .byte con_выход



off_A231_06_хюга_обычный_красный:
- D - I - 0x012241 10:A231: 03        .byte $03

- D - I - 0x012242 10:A232: F1        .byte con_координаты_Y_X
- D - I - 0x012243 10:A233: 30        .byte $30
- D - I - 0x012244 10:A234: 4E        .byte $4E

- D - I - 0x012245 10:A235: FA        .byte con_развилка
- D - I - 0x012246 10:A236: B4 B0     .word off_B0B4
- D - I - 0x012248 10:A238: AC AC     .word off_ACAC



off_A23B_07_цубаса_движение_спиной_влево_поворот_вбок_красный:
- D - I - 0x01224B 10:A23B: 0C        .byte $0C

- D - I - 0x01224C 10:A23C: F1        .byte con_координаты_Y_X
- D - I - 0x01224D 10:A23D: 30        .byte $30
- D - I - 0x01224E 10:A23E: 4C        .byte $4C

- D - I - 0x01224F 10:A23F: 89 16     .dbyt off_A916 - $2000

- D - I - 0x012251 10:A241: F7        .byte con_физика
- D - I - 0x012252 10:A242: 0F        .byte $0F
- D - I - 0x012253 10:A243: 00        .byte $00
- D - I - 0x012254 10:A244: 00        .byte $00

- D - I - 0x012255 10:A245: 19        .byte $19

- D - I - 0x012256 10:A246: F7        .byte con_физика
- D - I - 0x012257 10:A247: 00        .byte $00
- D - I - 0x012258 10:A248: 00        .byte $00
- D - I - 0x012259 10:A249: 00        .byte $00

- D - I - 0x01225A 10:A24A: 32        .byte $32

- D - I - 0x01225B 10:A24B: FA        .byte con_развилка
- D - I - 0x01225C 10:A24C: E3 A9     .word off_A9E3
- D - I - 0x01225E 10:A24E: F6 A9     .word off_A9F6



off_A251_08_цубаса_в_шоке_красный:
- D - I - 0x012261 10:A251: 0C        .byte $0C

- D - I - 0x012262 10:A252: F1        .byte con_координаты_Y_X
- D - I - 0x012263 10:A253: 30        .byte $30
- D - I - 0x012264 10:A254: 2E        .byte $2E

- D - I - 0x012265 10:A255: F5        .byte con_F5

- D - I - 0x012266 10:A256: 88 EA     .dbyt off_A8EA - $2000
- D - I - 0x012268 10:A258: 0A        .byte $0A

- D - I - 0x012269 10:A259: 88 FE     .dbyt off_A8FE - $2000

- D - I - 0x01226B 10:A25B: FF        .byte con_выход



off_A25C_09_цубаса_злой_белый_справа:
- D - I - 0x01226C 10:A25C: 17        .byte $17

- D - I - 0x01226D 10:A25D: F1        .byte con_координаты_Y_X
- D - I - 0x01226E 10:A25E: 30        .byte $30
- D - I - 0x01226F 10:A25F: 46        .byte $46

- D - I - 0x012270 10:A260: FA        .byte con_развилка
- D - I - 0x012271 10:A261: EA A8     .word off_A8EA
- D - I - 0x012273 10:A263: 0D B4     .word off_B40D



off_A266_0A_карлос_злой_желтый_справа:
- D - I - 0x012276 10:A266: 0F        .byte $0F

- D - I - 0x012277 10:A267: F1        .byte con_координаты_Y_X
- D - I - 0x012278 10:A268: 30        .byte $30
- D - I - 0x012279 10:A269: 46        .byte $46

- D - I - 0x01227A 10:A26A: FA        .byte con_развилка
- D - I - 0x01227B 10:A26B: D0 B1     .word off_B1D0
- D - I - 0x01227D 10:A26D: E7 B1     .word off_B1E7



off_A270_0B:
- D - I - 0x012280 10:A270: 0A        .byte $0A

- D - I - 0x012281 10:A271: F1        .byte con_координаты_Y_X
- D - I - 0x012282 10:A272: 30        .byte $30
- D - I - 0x012283 10:A273: BE        .byte $BE

- D - I - 0x012284 10:A274: 93 10     .dbyt off_B310 - $2000
- D - I - 0x012286 10:A276: 7F        .byte $7F
- D - I - 0x012287 10:A277: 7F        .byte $7F

- D - I - 0x012288 10:A278: F7        .byte con_физика
- D - I - 0x012289 10:A279: 0F        .byte $0F
- D - I - 0x01228A 10:A27A: 00        .byte $00
- D - I - 0x01228B 10:A27B: 00        .byte $00

- D - I - 0x01228C 10:A27C: 7A        .byte $7A

- D - I - 0x01228D 10:A27D: F7        .byte con_физика
- D - I - 0x01228E 10:A27E: 00        .byte $00
- D - I - 0x01228F 10:A27F: 00        .byte $00
- D - I - 0x012290 10:A280: 00        .byte $00

- D - I - 0x012291 10:A281: FA        .byte con_развилка
- D - I - 0x012292 10:A282: 10 B3     .word off_B310
- D - I - 0x012294 10:A284: 8A AD     .word off_AD8A



off_A287_0C_цубаса_на_фоне_сан_паулу:
- D - I - 0x012297 10:A287: 23        .byte $23

- D - I - 0x012298 10:A288: F1        .byte con_координаты_Y_X
- D - I - 0x012299 10:A289: 30        .byte $30
- D - I - 0x01229A 10:A28A: 46        .byte $46

- D - I - 0x01229B 10:A28B: 88 52     .dbyt off_A852 - $2000

- D - I - 0x01229D 10:A28D: FF        .byte con_выход



off_A28E_0D_кубок:
- D - I - 0x01229E 10:A28E: 09        .byte $09

- D - I - 0x01229F 10:A28F: F1        .byte con_координаты_Y_X
- D - I - 0x0122A0 10:A290: 26        .byte $26
- D - I - 0x0122A1 10:A291: 3E        .byte $3E

- D - I - 0x0122A2 10:A292: 87 CB     .dbyt off_A7CB - $2000

- D - I - 0x0122A4 10:A294: FF        .byte con_выход



off_A295_0E_цубаса_на_фоне_японии:
- D - I - 0x0122A5 10:A295: 33        .byte $33

- D - I - 0x0122A6 10:A296: F1        .byte con_координаты_Y_X
- D - I - 0x0122A7 10:A297: 30        .byte $30
- D - I - 0x0122A8 10:A298: 46        .byte $46

- D - I - 0x0122A9 10:A299: 88 52     .dbyt off_A852 - $2000

- D - I - 0x0122AB 10:A29B: FF        .byte con_выход



off_A29C_0F_мисаки_на_фоне_нанкацу:
- D - I - 0x0122AC 10:A29C: 17        .byte $17

- D - I - 0x0122AD 10:A29D: F1        .byte con_координаты_Y_X
- D - I - 0x0122AE 10:A29E: 30        .byte $30
- D - I - 0x0122AF 10:A29F: 46        .byte $46

- D - I - 0x0122B0 10:A2A0: 88 95     .dbyt off_A895 - $2000

- D - I - 0x0122B2 10:A2A2: FF        .byte con_выход



off_A2A3_10_цубаса_обычный_белый_справа:
- D - I - 0x0122B3 10:A2A3: 17        .byte $17

- D - I - 0x0122B4 10:A2A4: F1        .byte con_координаты_Y_X
- D - I - 0x0122B5 10:A2A5: 30        .byte $30
- D - I - 0x0122B6 10:A2A6: 46        .byte $46

- D - I - 0x0122B7 10:A2A7: FA        .byte con_развилка
- D - I - 0x0122B8 10:A2A8: 64 B3     .word off_B364
- D - I - 0x0122BA 10:A2AA: D6 A8     .word off_A8D6



off_A2AD_11_цубаса_злой_белый_слева:
- D - I - 0x0122BD 10:A2AD: 17        .byte $17

- D - I - 0x0122BE 10:A2AE: F1        .byte con_координаты_Y_X
- D - I - 0x0122BF 10:A2AF: 30        .byte $30
- D - I - 0x0122C0 10:A2B0: 2E        .byte $2E

- D - I - 0x0122C1 10:A2B1: F5        .byte con_F5

- D - I - 0x0122C2 10:A2B2: FA        .byte con_развилка
- D - I - 0x0122C3 10:A2B3: EA A8     .word off_A8EA
- D - I - 0x0122C5 10:A2B5: 0D B4     .word off_B40D



off_A2B8_12_цубаса_в_шоке_белый_слева:
- D - I - 0x0122C8 10:A2B8: 17        .byte $17

- D - I - 0x0122C9 10:A2B9: F1        .byte con_координаты_Y_X
- D - I - 0x0122CA 10:A2BA: 30        .byte $30
- D - I - 0x0122CB 10:A2BB: 2E        .byte $2E

- D - I - 0x0122CC 10:A2BC: F5        .byte con_F5

- D - I - 0x0122CD 10:A2BD: 93 64     .dbyt off_B364 - $2000
- D - I - 0x0122CF 10:A2BF: 0A        .byte $0A

- D - I - 0x0122D0 10:A2C0: 88 FE     .dbyt off_A8FE - $2000

- D - I - 0x0122D2 10:A2C2: FF        .byte con_выход



off_A2C3_13_цубаса_молчит_поворот_вбок_белый_слева:
- D - I - 0x0122D3 10:A2C3: 17        .byte $17

- D - I - 0x0122D4 10:A2C4: F1        .byte con_координаты_Y_X
- D - I - 0x0122D5 10:A2C5: 30        .byte $30
- D - I - 0x0122D6 10:A2C6: 2E        .byte $2E

- D - I - 0x0122D7 10:A2C7: 89 16     .dbyt off_A916 - $2000
- D - I - 0x0122D9 10:A2C9: 23        .byte $23

- D - I - 0x0122DA 10:A2CA: 89 E3     .dbyt off_A9E3 - $2000

- D - I - 0x0122DC 10:A2CC: FF        .byte con_выход



off_A2CD_14_цубаса_молчит_движение_направо_смотрит_влево_белый:
- D - I - 0x0122DD 10:A2CD: 17        .byte $17

- D - I - 0x0122DE 10:A2CE: F1        .byte con_координаты_Y_X
- D - I - 0x0122DF 10:A2CF: 30        .byte $30
- D - I - 0x0122E0 10:A2D0: EE        .byte $EE

- D - I - 0x0122E1 10:A2D1: 89 6D     .dbyt off_A96D - $2000
- D - I - 0x0122E3 10:A2D3: 41        .byte $41

- D - I - 0x0122E4 10:A2D4: F7        .byte con_физика
- D - I - 0x0122E5 10:A2D5: 02        .byte $02
- D - I - 0x0122E6 10:A2D6: 00        .byte $00
- D - I - 0x0122E7 10:A2D7: FF        .byte $FF

- D - I - 0x0122E8 10:A2D8: 40        .byte $40

- D - I - 0x0122E9 10:A2D9: FF        .byte con_выход



off_A2DA_15_карлос_злой_молчит_красный_справа:
- D - I - 0x0122EA 10:A2DA: 0E        .byte $0E

- D - I - 0x0122EB 10:A2DB: F1        .byte con_координаты_Y_X
- D - I - 0x0122EC 10:A2DC: 30        .byte $30
- D - I - 0x0122ED 10:A2DD: 46        .byte $46

- D - I - 0x0122EE 10:A2DE: 91 D0     .dbyt off_B1D0 - $2000

- D - I - 0x0122F0 10:A2E0: FF        .byte con_выход



off_A2E1_16_цубаса_молчит_поворот_вбок_красный_слева:
- D - I - 0x0122F1 10:A2E1: 0C        .byte $0C

- D - I - 0x0122F2 10:A2E2: F1        .byte con_координаты_Y_X
- D - I - 0x0122F3 10:A2E3: 30        .byte $30
- D - I - 0x0122F4 10:A2E4: 2E        .byte $2E

- D - I - 0x0122F5 10:A2E5: 89 16     .dbyt off_A916 - $2000
- D - I - 0x0122F7 10:A2E7: 23        .byte $23

- D - I - 0x0122F8 10:A2E8: 89 E3     .dbyt off_A9E3 - $2000

- D - I - 0x0122FA 10:A2EA: FF        .byte con_выход



off_A2EB_17_цубаса_на_фоне_сан_паулу_серый:
- D - I - 0x0122FB 10:A2EB: 3E        .byte $3E

- D - I - 0x0122FC 10:A2EC: F1        .byte con_координаты_Y_X
- D - I - 0x0122FD 10:A2ED: 30        .byte $30
- D - I - 0x0122FE 10:A2EE: 46        .byte $46

- D - I - 0x0122FF 10:A2EF: 88 52     .dbyt off_A852 - $2000

- D - I - 0x012301 10:A2F1: FF        .byte con_выход



off_A2F2_18_мисуги_молчит_движение_направо_смотрит_влево_белый:
- D - I - 0x012302 10:A2F2: 19        .byte $19

- D - I - 0x012303 10:A2F3: F1        .byte con_координаты_Y_X
- D - I - 0x012304 10:A2F4: 30        .byte $30
- D - I - 0x012305 10:A2F5: EE        .byte $EE

- D - I - 0x012306 10:A2F6: 8A 0F     .dbyt off_AA0F - $2000
- D - I - 0x012308 10:A2F8: 41        .byte $41

- D - I - 0x012309 10:A2F9: F7        .byte con_физика
- D - I - 0x01230A 10:A2FA: 02        .byte $02
- D - I - 0x01230B 10:A2FB: 00        .byte $00
- D - I - 0x01230C 10:A2FC: FF        .byte $FF

- D - I - 0x01230D 10:A2FD: 40        .byte $40

- D - I - 0x01230E 10:A2FE: FF        .byte con_выход



off_A2FF_19_мисаки_обычный_белый_слева:
- D - I - 0x01230F 10:A2FF: 17        .byte $17

- D - I - 0x012310 10:A300: F1        .byte con_координаты_Y_X
- D - I - 0x012311 10:A301: 30        .byte $30
- D - I - 0x012312 10:A302: 2E        .byte $2E

- D - I - 0x012313 10:A303: F5        .byte con_F5

- D - I - 0x012314 10:A304: FA        .byte con_развилка
- D - I - 0x012315 10:A305: 4A AA     .word off_AA4A
- D - I - 0x012317 10:A307: 5E AA     .word off_AA5E



off_A30A_1A_йоко_медленное_движение_налево:
- D - I - 0x01231A 10:A30A: 18        .byte $18

- D - I - 0x01231B 10:A30B: F1        .byte con_координаты_Y_X
- D - I - 0x01231C 10:A30C: 30        .byte $30
- D - I - 0x01231D 10:A30D: BC        .byte $BC

@бесконечный_цикл:
- D - I - 0x01231E 10:A30E: F7        .byte con_физика
- D - I - 0x01231F 10:A30F: 0F        .byte $0F
- D - I - 0x012320 10:A310: 00        .byte $00
- D - I - 0x012321 10:A311: 00        .byte $00

- D - I - 0x012322 10:A312: 93 D9     .dbyt off_B3D9 - $2000
- D - I - 0x012324 10:A314: 01        .byte $01

- D - I - 0x012325 10:A315: F7        .byte con_физика
- D - I - 0x012326 10:A316: 00        .byte $00
- D - I - 0x012327 10:A317: 00        .byte $00
- D - I - 0x012328 10:A318: 00        .byte $00

- D - I - 0x012329 10:A319: 93 D9     .dbyt off_B3D9 - $2000
- D - I - 0x01232B 10:A31B: 01        .byte $01

- D - I - 0x01232C 10:A31C: A3 0E     .dbyt @бесконечный_цикл



off_A31E_1B_мисаки_злой_белый_слева:
- D - I - 0x01232E 10:A31E: 17        .byte $17

- D - I - 0x01232F 10:A31F: F1        .byte con_координаты_Y_X
- D - I - 0x012330 10:A320: 30        .byte $30
- D - I - 0x012331 10:A321: 2E        .byte $2E

- D - I - 0x012332 10:A322: F5        .byte con_F5

- D - I - 0x012333 10:A323: FA        .byte con_развилка
- D - I - 0x012334 10:A324: 72 AA     .word off_AA72
- D - I - 0x012336 10:A326: F0 B0     .word off_B0F0



off_A329_1C_мацуяма_злой_желтый_слева:
- D - I - 0x012339 10:A329: 0B        .byte $0B

- D - I - 0x01233A 10:A32A: F5        .byte con_F5

- D - I - 0x01233B 10:A32B: F1        .byte con_координаты_Y_X
- D - I - 0x01233C 10:A32C: 30        .byte $30
- D - I - 0x01233D 10:A32D: 2E        .byte $2E

- D - I - 0x01233E 10:A32E: FA        .byte con_развилка
- D - I - 0x01233F 10:A32F: 86 AA     .word off_AA86
- D - I - 0x012341 10:A331: 92 AA     .word off_AA92



off_A334_1D_мацуяма_злой_желтый_справа:
- D - I - 0x012344 10:A334: 0B        .byte $0B

- D - I - 0x012345 10:A335: F1        .byte con_координаты_Y_X
- D - I - 0x012346 10:A336: 30        .byte $30
- D - I - 0x012347 10:A337: 4E        .byte $4E

- D - I - 0x012348 10:A338: FA        .byte con_развилка
- D - I - 0x012349 10:A339: 86 AA     .word off_AA86
- D - I - 0x01234B 10:A33B: 92 AA     .word off_AA92



off_A33E_1E_мисаки_злой_молчит_белый_слева:
- D - I - 0x01234E 10:A33E: 17        .byte $17

- D - I - 0x01234F 10:A33F: F1        .byte con_координаты_Y_X
- D - I - 0x012350 10:A340: 30        .byte $30
- D - I - 0x012351 10:A341: 2E        .byte $2E

- D - I - 0x012352 10:A342: F5        .byte con_F5

- D - I - 0x012353 10:A343: 8A 72     .dbyt off_AA72 - $2000

- D - I - 0x012355 10:A345: FF        .byte con_выход



off_A346_1F_мисаки_обычный_молчит_белый_справа:
- D - I - 0x012356 10:A346: 17        .byte $17

- D - I - 0x012357 10:A347: F1        .byte con_координаты_Y_X
- D - I - 0x012358 10:A348: 30        .byte $30
- D - I - 0x012359 10:A349: 4E        .byte $4E

- D - I - 0x01235A 10:A34A: 8A 4A     .dbyt off_AA4A - $2000

- D - I - 0x01235C 10:A34C: FF        .byte con_выход



off_A34D_20_мисуги_злой_белый_справа:
- D - I - 0x01235D 10:A34D: 19        .byte $19

- D - I - 0x01235E 10:A34E: F1        .byte con_координаты_Y_X
- D - I - 0x01235F 10:A34F: 30        .byte $30
- D - I - 0x012360 10:A350: 4E        .byte $4E

- D - I - 0x012361 10:A351: FA        .byte con_развилка
- D - I - 0x012362 10:A352: B2 AA     .word off_AAB2
- D - I - 0x012364 10:A354: BE AA     .word off_AABE



off_A357_21_шнайдер_справа:
- D - I - 0x012367 10:A357: 28        .byte $28

- D - I - 0x012368 10:A358: F1        .byte con_координаты_Y_X
- D - I - 0x012369 10:A359: 30        .byte $30
- D - I - 0x01236A 10:A35A: 46        .byte $46

- D - I - 0x01236B 10:A35B: FA        .byte con_развилка
- D - I - 0x01236C 10:A35C: CA AA     .word off_AACA
- D - I - 0x01236E 10:A35E: A2 B4     .word off_B4A2



off_A361_22_китаец_обычный_справа:
- D - I - 0x012371 10:A361: 20        .byte $20

- D - I - 0x012372 10:A362: F1        .byte con_координаты_Y_X
- D - I - 0x012373 10:A363: 30        .byte $30
- D - I - 0x012374 10:A364: 46        .byte $46

- D - I - 0x012375 10:A365: FA        .byte con_развилка
- D - I - 0x012376 10:A366: 84 AF     .word off_AF84
- D - I - 0x012378 10:A368: D4 AA     .word off_AAD4



off_A36B_23:
- D - I - 0x01237B 10:A36B: 1F        .byte $1F

- D - I - 0x01237C 10:A36C: F1        .byte con_координаты_Y_X
- D - I - 0x01237D 10:A36D: 50        .byte $50
- D - I - 0x01237E 10:A36E: C6        .byte $C6

- D - I - 0x01237F 10:A36F: 8A FD     .dbyt off_AAFD - $2000

- D - I - 0x012381 10:A371: F7        .byte con_физика
- D - I - 0x012382 10:A372: E0        .byte $E0
- D - I - 0x012383 10:A373: 00        .byte $00
- D - I - 0x012384 10:A374: 00        .byte $00

- D - I - 0x012385 10:A375: 10        .byte $10

- D - I - 0x012386 10:A376: F7        .byte con_физика
- D - I - 0x012387 10:A377: 00        .byte $00
- D - I - 0x012388 10:A378: 00        .byte $00
- D - I - 0x012389 10:A379: 00        .byte $00

- D - I - 0x01238A 10:A37A: FA        .byte con_развилка
- D - I - 0x01238B 10:A37B: FD AA     .word off_AAFD
- D - I - 0x01238D 10:A37D: C9 B0     .word off_B0C9



off_A380_24_ишизаки_моргает:
- D - I - 0x012390 10:A380: 1F        .byte $1F

- D - I - 0x012391 10:A381: F1        .byte con_координаты_Y_X
- D - I - 0x012392 10:A382: 30        .byte $30
- D - I - 0x012393 10:A383: 42        .byte $42

- D - I - 0x012394 10:A384: E2        .byte con_повторы + $02

- D - I - 0x012395 10:A385: 8B 1C     .dbyt off_AB1C - $2000
- D - I - 0x012397 10:A387: 04        .byte $04

- D - I - 0x012398 10:A388: 8A FD     .dbyt off_AAFD - $2000
- D - I - 0x01239A 10:A38A: 04        .byte $04

- D - I - 0x01239B 10:A38B: F0        .byte con_повторить

- D - I - 0x01239C 10:A38C: FA        .byte con_развилка
- D - I - 0x01239D 10:A38D: 1C AB     .word off_AB1C
- D - I - 0x01239F 10:A38F: AB AF     .word off_AFAB



off_A392_25_ишизаки_злой_слева:
- D - I - 0x0123A2 10:A392: 1F        .byte $1F

@бесконечный_цикл:
- D - I - 0x0123A3 10:A393: F1        .byte con_координаты_Y_X
- D - I - 0x0123A4 10:A394: 30        .byte $30
- D - I - 0x0123A5 10:A395: 2E        .byte $2E

- D - I - 0x0123A6 10:A396: F5        .byte con_F5

- D - I - 0x0123A7 10:A397: 8B 3B     .dbyt off_AB3B - $2000
- D - I - 0x0123A9 10:A399: 02        .byte $02

- D - I - 0x0123AA 10:A39A: F1        .byte con_координаты_Y_X
- D - I - 0x0123AB 10:A39B: 30        .byte $30
- D - I - 0x0123AC 10:A39C: 2F        .byte $2F

- D - I - 0x0123AD 10:A39D: 8B 3B     .dbyt off_AB3B - $2000
- D - I - 0x0123AF 10:A39F: 02        .byte $02

- D - I - 0x0123B0 10:A3A0: A3 93     .dbyt @бесконечный_цикл



off_A3A2_26_санае_обычная_справа:
- D - I - 0x0123B2 10:A3A2: 1D        .byte $1D

- D - I - 0x0123B3 10:A3A3: F1        .byte con_координаты_Y_X
- D - I - 0x0123B4 10:A3A4: 30        .byte $30
- D - I - 0x0123B5 10:A3A5: 40        .byte $40

- D - I - 0x0123B6 10:A3A6: FA        .byte con_развилка
- D - I - 0x0123B7 10:A3A7: 21 B4     .word off_B421
- D - I - 0x0123B9 10:A3A9: 68 AB     .word off_AB68



off_A3AC_27_санае_закрытые_глаза_справа:
- D - I - 0x0123BC 10:A3AC: 1D        .byte $1D

- D - I - 0x0123BD 10:A3AD: F1        .byte con_координаты_Y_X
- D - I - 0x0123BE 10:A3AE: 30        .byte $30
- D - I - 0x0123BF 10:A3AF: 40        .byte $40

- D - I - 0x0123C0 10:A3B0: FA        .byte con_развилка
- D - I - 0x0123C1 10:A3B1: 80 AB     .word off_AB80
- D - I - 0x0123C3 10:A3B3: D2 AF     .word off_AFD2



off_A3B6_28_санае_в_шоке_справа:
- D - I - 0x0123C6 10:A3B6: 1D        .byte $1D

- D - I - 0x0123C7 10:A3B7: F1        .byte con_координаты_Y_X
- D - I - 0x0123C8 10:A3B8: 30        .byte $30
- D - I - 0x0123C9 10:A3B9: 40        .byte $40

- D - I - 0x0123CA 10:A3BA: 8B 96     .dbyt off_AB96 - $2000

- D - I - 0x0123CC 10:A3BC: FF        .byte con_выход



off_A3BD_29_санае_расстроена_справа:
- D - I - 0x0123CD 10:A3BD: 1D        .byte $1D

- D - I - 0x0123CE 10:A3BE: F1        .byte con_координаты_Y_X
- D - I - 0x0123CF 10:A3BF: 30        .byte $30
- D - I - 0x0123D0 10:A3C0: 40        .byte $40

- D - I - 0x0123D1 10:A3C1: 8B AE     .dbyt off_ABAE - $2000

- D - I - 0x0123D3 10:A3C3: FF        .byte con_выход



off_A3C4_2A_йоко_обычная_справа:
- D - I - 0x0123D4 10:A3C4: 18        .byte $18

- D - I - 0x0123D5 10:A3C5: F1        .byte con_координаты_Y_X
- D - I - 0x0123D6 10:A3C6: 30        .byte $30
- D - I - 0x0123D7 10:A3C7: 40        .byte $40

- D - I - 0x0123D8 10:A3C8: FA        .byte con_развилка
- D - I - 0x0123D9 10:A3C9: D9 B3     .word off_B3D9
- D - I - 0x0123DB 10:A3CB: C6 AB     .word off_ABC6



off_A3CE_2B_йоко_закрытые_глаза_справа:
- D - I - 0x0123DE 10:A3CE: 18        .byte $18

- D - I - 0x0123DF 10:A3CF: F1        .byte con_координаты_Y_X
- D - I - 0x0123E0 10:A3D0: 30        .byte $30
- D - I - 0x0123E1 10:A3D1: 40        .byte $40

- D - I - 0x0123E2 10:A3D2: FA        .byte con_развилка
- D - I - 0x0123E3 10:A3D3: DE AB     .word off_ABDE
- D - I - 0x0123E5 10:A3D5: 64 B2     .word off_B264



off_A3D8_2C_йоко_подмигивает_справа:
- D - I - 0x0123E8 10:A3D8: 18        .byte $18

- D - I - 0x0123E9 10:A3D9: F1        .byte con_координаты_Y_X
- D - I - 0x0123EA 10:A3DA: 30        .byte $30
- D - I - 0x0123EB 10:A3DB: 40        .byte $40

- D - I - 0x0123EC 10:A3DC: 8B F4     .dbyt off_ABF4 - $2000

- D - I - 0x0123EE 10:A3DE: FF        .byte con_выход



off_A3DF_2D_йоко_злая_резко_движется_влево:
- D - I - 0x0123EF 10:A3DF: 18        .byte $18

- D - I - 0x0123F0 10:A3E0: F1        .byte con_координаты_Y_X
- D - I - 0x0123F1 10:A3E1: 30        .byte $30
- D - I - 0x0123F2 10:A3E2: A9        .byte $A9

- D - I - 0x0123F3 10:A3E3: 92 7A     .dbyt off_B27A - $2000

- D - I - 0x0123F5 10:A3E5: F7        .byte con_физика
- D - I - 0x0123F6 10:A3E6: 09        .byte $09
- D - I - 0x0123F7 10:A3E7: 00        .byte $00
- D - I - 0x0123F8 10:A3E8: 00        .byte $00

- D - I - 0x0123F9 10:A3E9: 0F        .byte $0F

- D - I - 0x0123FA 10:A3EA: F7        .byte con_физика
- D - I - 0x0123FB 10:A3EB: 00        .byte $00
- D - I - 0x0123FC 10:A3EC: 00        .byte $00
- D - I - 0x0123FD 10:A3ED: 00        .byte $00

- D - I - 0x0123FE 10:A3EE: FA        .byte con_развилка
- D - I - 0x0123FF 10:A3EF: 7A B2     .word off_B27A
- D - I - 0x012401 10:A3F1: 0A AC     .word off_AC0A



off_A3F4_2E_яои_молчит_справа:
- D - I - 0x012404 10:A3F4: 1A        .byte $1A

- D - I - 0x012405 10:A3F5: F1        .byte con_координаты_Y_X
- D - I - 0x012406 10:A3F6: 30        .byte $30
- D - I - 0x012407 10:A3F7: 40        .byte $40

- D - I - 0x012408 10:A3F8: 8C 22     .dbyt off_AC22 - $2000

- D - I - 0x01240A 10:A3FA: FF        .byte con_выход



off_A3FB_2F_фуджисава_молчит_справа:
- D - I - 0x01240B 10:A3FB: 1B        .byte $1B

- D - I - 0x01240C 10:A3FC: F1        .byte con_координаты_Y_X
- D - I - 0x01240D 10:A3FD: 30        .byte $30
- D - I - 0x01240E 10:A3FE: 40        .byte $40

- D - I - 0x01240F 10:A3FF: 8C 58     .dbyt off_AC58 - $2000

- D - I - 0x012411 10:A401: FF        .byte con_выход



off_A402_30_хюга_злой_черный_справа:
- - - - - 0x012412 10:A402: 16        .byte $16

- - - - - 0x012413 10:A403: F1        .byte con_координаты_Y_X
- - - - - 0x012414 10:A404: 30        .byte $30
- - - - - 0x012415 10:A405: 4A        .byte $4A

- - - - - 0x012416 10:A406: FA        .byte con_развилка
- - - - - 0x012417 10:A407: 8E AC     .word off_AC8E
- - - - - 0x012419 10:A409: 19 B2     .word off_B219



off_A40C_31_хюга_обычный_черный_справа_поднимает_брови:
- D - I - 0x01241C 10:A40C: 16        .byte $16

- D - I - 0x01241D 10:A40D: F1        .byte con_координаты_Y_X
- D - I - 0x01241E 10:A40E: 30        .byte $30
- D - I - 0x01241F 10:A40F: 4A        .byte $4A

- D - I - 0x012420 10:A410: 8C 8E     .dbyt off_AC8E - $2000
- D - I - 0x012422 10:A412: 07        .byte $07

- D - I - 0x012423 10:A413: FA        .byte con_развилка
- D - I - 0x012424 10:A414: FF AF     .word off_AFFF
- D - I - 0x012426 10:A416: 98 AC     .word off_AC98



off_A419_32_хюга_злой_красный_справа:
- D - I - 0x012429 10:A419: 03        .byte $03

- D - I - 0x01242A 10:A41A: F1        .byte con_координаты_Y_X
- D - I - 0x01242B 10:A41B: 30        .byte $30
- D - I - 0x01242C 10:A41C: 4A        .byte $4A

- D - I - 0x01242D 10:A41D: FA        .byte con_развилка
- D - I - 0x01242E 10:A41E: A2 AC     .word off_ACA2
- D - I - 0x012430 10:A420: 39 B4     .word off_B439



off_A423_33_хюга_обычный_красный_слева_поднимает_брови:
- D - I - 0x012433 10:A423: 03        .byte $03

- D - I - 0x012434 10:A424: F1        .byte con_координаты_Y_X
- D - I - 0x012435 10:A425: 30        .byte $30
- D - I - 0x012436 10:A426: 2C        .byte $2C

- D - I - 0x012437 10:A427: F5        .byte con_F5

- D - I - 0x012438 10:A428: 8C A2     .dbyt off_ACA2 - $2000
- D - I - 0x01243A 10:A42A: 0A        .byte $0A

- D - I - 0x01243B 10:A42B: FA        .byte con_развилка
- D - I - 0x01243C 10:A42C: B4 B0     .word off_B0B4
- D - I - 0x01243E 10:A42E: AC AC     .word off_ACAC



off_A431_34_вакабаяши_справа:
- D - I - 0x012441 10:A431: 1C        .byte $1C

- D - I - 0x012442 10:A432: F1        .byte con_координаты_Y_X
- D - I - 0x012443 10:A433: 30        .byte $30
- D - I - 0x012444 10:A434: 40        .byte $40

- D - I - 0x012445 10:A435: FA        .byte con_развилка
- D - I - 0x012446 10:A436: 24 AF     .word off_AF24
- D - I - 0x012448 10:A438: B6 AC     .word off_ACB6



off_A43B_35:
- D - I - 0x01244B 10:A43B: 46        .byte $46

- D - I - 0x01244C 10:A43C: F1        .byte con_координаты_Y_X
- D - I - 0x01244D 10:A43D: 30        .byte $30
- D - I - 0x01244E 10:A43E: C8        .byte $C8

- D - I - 0x01244F 10:A43F: F9        .byte con_F9

- D - I - 0x012450 10:A440: 8C C8     .dbyt off_ACC8 - $2000
- D - I - 0x012452 10:A442: 7F        .byte $7F
- D - I - 0x012453 10:A443: 7F        .byte $7F

- D - I - 0x012454 10:A444: FF        .byte con_выход



off_A445_36_роберто_очки_молчит_справа:
- D - I - 0x012455 10:A445: 0A        .byte $0A

- D - I - 0x012456 10:A446: F1        .byte con_координаты_Y_X
- D - I - 0x012457 10:A447: 30        .byte $30
- D - I - 0x012458 10:A448: 4E        .byte $4E

- D - I - 0x012459 10:A449: 8D BA     .dbyt off_ADBA - $2000

- D - I - 0x01245B 10:A44B: FF        .byte con_выход



off_A44C_37_меон_слева:
- D - I - 0x01245C 10:A44C: 10        .byte $10

- D - I - 0x01245D 10:A44D: F5        .byte con_F5

- D - I - 0x01245E 10:A44E: F1        .byte con_координаты_Y_X
- D - I - 0x01245F 10:A44F: 30        .byte $30
- D - I - 0x012460 10:A450: 32        .byte $32

- D - I - 0x012461 10:A451: FA        .byte con_развилка
- D - I - 0x012462 10:A452: F1 B3     .word off_B3F1
- D - I - 0x012464 10:A454: EC AC     .word off_ACEC



off_A457_38_меон_справа:
- D - I - 0x012467 10:A457: 10        .byte $10

- D - I - 0x012468 10:A458: F1        .byte con_координаты_Y_X
- D - I - 0x012469 10:A459: 30        .byte $30
- D - I - 0x01246A 10:A45A: 42        .byte $42

- D - I - 0x01246B 10:A45B: FA        .byte con_развилка
- D - I - 0x01246C 10:A45C: 20 AD     .word off_AD20
- D - I - 0x01246E 10:A45E: 06 AD     .word off_AD06



off_A461_39_вакабаяши_слева:
- D - I - 0x012471 10:A461: 46        .byte $46

- D - I - 0x012472 10:A462: F1        .byte con_координаты_Y_X
- D - I - 0x012473 10:A463: 30        .byte $30
- D - I - 0x012474 10:A464: 2E        .byte $2E

- D - I - 0x012475 10:A465: F5        .byte con_F5

- D - I - 0x012476 10:A466: FA        .byte con_развилка
- D - I - 0x012477 10:A467: 24 AF     .word off_AF24
- D - I - 0x012479 10:A469: B6 AC     .word off_ACB6



off_A46C_3A_гертис_справа:
- D - I - 0x01247C 10:A46C: 2A        .byte $2A

- D - I - 0x01247D 10:A46D: F1        .byte con_координаты_Y_X
- D - I - 0x01247E 10:A46E: 30        .byte $30
- D - I - 0x01247F 10:A46F: 3E        .byte $3E

- D - I - 0x012480 10:A470: FA        .byte con_развилка
- D - I - 0x012481 10:A471: 36 AF     .word off_AF36
- - - - - 0x012483 10:A473: 3C AD     .word off_AD3C



off_A476_3B_роберто_обычный_справа:
- D - I - 0x012486 10:A476: 0A        .byte $0A

- D - I - 0x012487 10:A477: F1        .byte con_координаты_Y_X
- D - I - 0x012488 10:A478: 30        .byte $30
- D - I - 0x012489 10:A479: 44        .byte $44

- D - I - 0x01248A 10:A47A: FA        .byte con_развилка
- D - I - 0x01248B 10:A47B: 10 B3     .word off_B310
- D - I - 0x01248D 10:A47D: 8A AD     .word off_AD8A



off_A480_3C_роберто_злой_справа:
- D - I - 0x012490 10:A480: 0A        .byte $0A

- D - I - 0x012491 10:A481: F1        .byte con_координаты_Y_X
- D - I - 0x012492 10:A482: 30        .byte $30
- D - I - 0x012493 10:A483: 44        .byte $44

- D - I - 0x012494 10:A484: FA        .byte con_развилка
- D - I - 0x012495 10:A485: A2 AD     .word off_ADA2
- D - I - 0x012497 10:A487: CA A9     .word off_A9CA



off_A48A_3D_роберто_очки_справа:
- D - I - 0x01249A 10:A48A: 0A        .byte $0A

- D - I - 0x01249B 10:A48B: F1        .byte con_координаты_Y_X
- D - I - 0x01249C 10:A48C: 30        .byte $30
- D - I - 0x01249D 10:A48D: 44        .byte $44

- D - I - 0x01249E 10:A48E: FA        .byte con_развилка
- D - I - 0x01249F 10:A48F: BA AD     .word off_ADBA
- D - I - 0x0124A1 10:A491: 40 B3     .word off_B340



off_A494_3E_роберто_очки_скрещены_руки:
- D - I - 0x0124A4 10:A494: 0A        .byte $0A

- D - I - 0x0124A5 10:A495: F1        .byte con_координаты_Y_X
- D - I - 0x0124A6 10:A496: 30        .byte $30
- D - I - 0x0124A7 10:A497: 42        .byte $42

- D - I - 0x0124A8 10:A498: 8D F7     .dbyt off_ADF7 - $2000

- D - I - 0x0124AA 10:A49A: FF        .byte con_выход



off_A49B_3F_мисаки_обычный_красный_справа:
- D - I - 0x0124AB 10:A49B: 0C        .byte $0C

- D - I - 0x0124AC 10:A49C: F1        .byte con_координаты_Y_X
- D - I - 0x0124AD 10:A49D: 30        .byte $30
- D - I - 0x0124AE 10:A49E: 4A        .byte $4A

- D - I - 0x0124AF 10:A49F: FA        .byte con_развилка
- D - I - 0x0124B0 10:A4A0: 4A AA     .word off_AA4A
- D - I - 0x0124B2 10:A4A2: 5E AA     .word off_AA5E



off_A4A5_40_катагири_слева:
- D - I - 0x0124B5 10:A4A5: 0D        .byte $0D

- D - I - 0x0124B6 10:A4A6: F1        .byte con_координаты_Y_X
- D - I - 0x0124B7 10:A4A7: 30        .byte $30
- D - I - 0x0124B8 10:A4A8: 2C        .byte $2C

- D - I - 0x0124B9 10:A4A9: F5        .byte con_F5

- D - I - 0x0124BA 10:A4AA: FA        .byte con_развилка
- D - I - 0x0124BB 10:A4AB: 16 B0     .word off_B016
- D - I - 0x0124BD 10:A4AD: 4B AE     .word off_AE4B



off_A4B0_41_очкастый_менеджер_закрытые_глаза_справа:
- D - I - 0x0124C0 10:A4B0: 0D        .byte $0D

- D - I - 0x0124C1 10:A4B1: F1        .byte con_координаты_Y_X
- D - I - 0x0124C2 10:A4B2: 30        .byte $30
- D - I - 0x0124C3 10:A4B3: 42        .byte $42

- D - I - 0x0124C4 10:A4B4: FA        .byte con_развилка
- D - I - 0x0124C5 10:A4B5: 78 B3     .word off_B378
- - - - - 0x0124C7 10:A4B7: 75 AE     .word off_AE75



off_A4BA_42_миками_справа:
- D - I - 0x0124CA 10:A4BA: 0D        .byte $0D

- D - I - 0x0124CB 10:A4BB: F1        .byte con_координаты_Y_X
- D - I - 0x0124CC 10:A4BC: 30        .byte $30
- D - I - 0x0124CD 10:A4BD: 42        .byte $42

- D - I - 0x0124CE 10:A4BE: FA        .byte con_развилка
- D - I - 0x0124CF 10:A4BF: 99 B3     .word off_B399
- D - I - 0x0124D1 10:A4C1: 96 AE     .word off_AE96



off_A4C4_43_сан_паулу_без_цубасы:
- D - I - 0x0124D4 10:A4C4: 11        .byte $11

- D - I - 0x0124D5 10:A4C5: F1        .byte con_координаты_Y_X
- D - I - 0x0124D6 10:A4C6: DC        .byte $DC
- D - I - 0x0124D7 10:A4C7: 50        .byte $50

- D - I - 0x0124D8 10:A4C8: 8E D6     .dbyt off_AED6 - $2000

- D - I - 0x0124DA 10:A4CA: F9        .byte con_F9

- D - I - 0x0124DB 10:A4CB: 7F        .byte $7F

- D - I - 0x0124DC 10:A4CC: FF        .byte con_выход



off_A4CD_44_ишизаки_закрытые_глаза_справа:
- D - I - 0x0124DD 10:A4CD: 1F        .byte $1F

- D - I - 0x0124DE 10:A4CE: F1        .byte con_координаты_Y_X
- D - I - 0x0124DF 10:A4CF: 30        .byte $30
- D - I - 0x0124E0 10:A4D0: 42        .byte $42

- D - I - 0x0124E1 10:A4D1: FA        .byte con_развилка
- D - I - 0x0124E2 10:A4D2: FD AA     .word off_AAFD
- D - I - 0x0124E4 10:A4D4: C9 B0     .word off_B0C9



off_A4D7_45_коимбра_тень_справа:
- D - I - 0x0124E7 10:A4D7: 05        .byte $05

- D - I - 0x0124E8 10:A4D8: F1        .byte con_координаты_Y_X
- D - I - 0x0124E9 10:A4D9: 30        .byte $30
- D - I - 0x0124EA 10:A4DA: 3E        .byte $3E

- D - I - 0x0124EB 10:A4DB: FA        .byte con_развилка
- D - I - 0x0124EC 10:A4DC: 2E B2     .word off_B22E
- D - I - 0x0124EE 10:A4DE: DA B2     .word off_B2DA



off_A4E1_46_менеджер_бразилии_закрытые_глаза_справа:
- D - I - 0x0124F1 10:A4E1: 2C        .byte $2C

- D - I - 0x0124F2 10:A4E2: F1        .byte con_координаты_Y_X
- D - I - 0x0124F3 10:A4E3: 30        .byte $30
- D - I - 0x0124F4 10:A4E4: 46        .byte $46

- D - I - 0x0124F5 10:A4E5: FA        .byte con_развилка
- D - I - 0x0124F6 10:A4E6: 78 B3     .word off_B378
- D - I - 0x0124F8 10:A4E8: 75 AE     .word off_AE75



off_A4EB_47_цубаса_обычный_красный_справа:
- D - I - 0x0124FB 10:A4EB: 0C        .byte $0C

- D - I - 0x0124FC 10:A4EC: F1        .byte con_координаты_Y_X
- D - I - 0x0124FD 10:A4ED: 30        .byte $30
- D - I - 0x0124FE 10:A4EE: 46        .byte $46

- D - I - 0x0124FF 10:A4EF: FA        .byte con_развилка
- D - I - 0x012500 10:A4F0: 64 B3     .word off_B364
- D - I - 0x012502 10:A4F2: D6 A8     .word off_A8D6



off_A4F5_48_карлос_в_шоке_желтый_слева:
- D - I - 0x012505 10:A4F5: 0F        .byte $0F

- D - I - 0x012506 10:A4F6: F1        .byte con_координаты_Y_X
- D - I - 0x012507 10:A4F7: 30        .byte $30
- D - I - 0x012508 10:A4F8: 2E        .byte $2E

- D - I - 0x012509 10:A4F9: F5        .byte con_F5

- D - I - 0x01250A 10:A4FA: 8D DE     .dbyt off_ADDE - $2000

- D - I - 0x01250C 10:A4FC: FF        .byte con_выход



off_A4FD_49_хюга_злой_молчит_черный_справа:
- D - I - 0x01250D 10:A4FD: 16        .byte $16

- D - I - 0x01250E 10:A4FE: F1        .byte con_координаты_Y_X
- D - I - 0x01250F 10:A4FF: 30        .byte $30
- D - I - 0x012510 10:A500: 4A        .byte $4A

- D - I - 0x012511 10:A501: 8C 8E     .dbyt off_AC8E - $2000

- D - I - 0x012513 10:A503: FF        .byte con_выход



off_A504_4A_гертиз_в_тени_движение_направо:
- D - I - 0x012514 10:A504: 29        .byte $29

- D - I - 0x012515 10:A505: F1        .byte con_координаты_Y_X
- D - I - 0x012516 10:A506: 30        .byte $30
- D - I - 0x012517 10:A507: BF        .byte $BF

- D - I - 0x012518 10:A508: 8F 36     .dbyt off_AF36 - $2000
- D - I - 0x01251A 10:A50A: 02        .byte $02

- D - I - 0x01251B 10:A50B: F7        .byte con_физика
- D - I - 0x01251C 10:A50C: 01        .byte $01
- D - I - 0x01251D 10:A50D: 00        .byte $00
- D - I - 0x01251E 10:A50E: 00        .byte $00

- D - I - 0x01251F 10:A50F: 7F        .byte $7F

- D - I - 0x012520 10:A510: FF        .byte con_выход



off_A511_4B_цубаса_злой_красный_справа:
- D - I - 0x012521 10:A511: 0C        .byte $0C

- D - I - 0x012522 10:A512: F1        .byte con_координаты_Y_X
- D - I - 0x012523 10:A513: 30        .byte $30
- D - I - 0x012524 10:A514: 46        .byte $46

- D - I - 0x012525 10:A515: FA        .byte con_развилка
- D - I - 0x012526 10:A516: EA A8     .word off_A8EA
- D - I - 0x012528 10:A518: 0D B4     .word off_B40D



off_A51B_4C_карлос_в_шоке_желтый_справа:
- D - I - 0x01252B 10:A51B: 0F        .byte $0F

- D - I - 0x01252C 10:A51C: F1        .byte con_координаты_Y_X
- D - I - 0x01252D 10:A51D: 30        .byte $30
- D - I - 0x01252E 10:A51E: 46        .byte $46

- D - I - 0x01252F 10:A51F: 8D DE     .dbyt off_ADDE - $2000

- D - I - 0x012531 10:A521: FF        .byte con_выход



off_A522_4D_роберто_обычный_слева:
- D - I - 0x012532 10:A522: 0A        .byte $0A

- D - I - 0x012533 10:A523: F5        .byte con_F5

- D - I - 0x012534 10:A524: F1        .byte con_координаты_Y_X
- D - I - 0x012535 10:A525: 30        .byte $30
- D - I - 0x012536 10:A526: 2E        .byte $2E

- D - I - 0x012537 10:A527: FA        .byte con_развилка
- D - I - 0x012538 10:A528: 10 B3     .word off_B310
- D - I - 0x01253A 10:A52A: 8A AD     .word off_AD8A



off_A52D_4E_цубаса_обычный_белый_слева:
- D - I - 0x01253D 10:A52D: 17        .byte $17

- D - I - 0x01253E 10:A52E: F5        .byte con_F5

- D - I - 0x01253F 10:A52F: F1        .byte con_координаты_Y_X
- D - I - 0x012540 10:A530: 30        .byte $30
- D - I - 0x012541 10:A531: 2E        .byte $2E

- D - I - 0x012542 10:A532: FA        .byte con_развилка
- D - I - 0x012543 10:A533: 64 B3     .word off_B364
- D - I - 0x012545 10:A535: D6 A8     .word off_A8D6



off_A538_4F_санае_расстроена_поднимает_брови_слева:
- D - I - 0x012548 10:A538: 1D        .byte $1D

- D - I - 0x012549 10:A539: F5        .byte con_F5

- D - I - 0x01254A 10:A53A: F1        .byte con_координаты_Y_X
- D - I - 0x01254B 10:A53B: 30        .byte $30
- D - I - 0x01254C 10:A53C: 2E        .byte $2E

- D - I - 0x01254D 10:A53D: 8B AE     .dbyt off_ABAE - $2000
- D - I - 0x01254F 10:A53F: 28        .byte $28

- D - I - 0x012550 10:A540: FA        .byte con_развилка
- D - I - 0x012551 10:A541: 21 B4     .word off_B421
- D - I - 0x012553 10:A543: 68 AB     .word off_AB68



off_A546_50_роберто_молчит_серый_слева:
- D - I - 0x012556 10:A546: 3F        .byte $3F

- D - I - 0x012557 10:A547: F5        .byte con_F5

- D - I - 0x012558 10:A548: F1        .byte con_координаты_Y_X
- D - I - 0x012559 10:A549: 30        .byte $30
- D - I - 0x01255A 10:A54A: 2E        .byte $2E

- D - I - 0x01255B 10:A54B: 93 10     .dbyt off_B310 - $2000

- D - I - 0x01255D 10:A54D: FF        .byte con_выход



off_A54E_51_цубаса_молчит_серый_справа:
- D - I - 0x01255E 10:A54E: 3F        .byte $3F

- D - I - 0x01255F 10:A54F: F1        .byte con_координаты_Y_X
- D - I - 0x012560 10:A550: 30        .byte $30
- D - I - 0x012561 10:A551: 46        .byte $46

- D - I - 0x012562 10:A552: 93 64     .dbyt off_B364 - $2000

- D - I - 0x012564 10:A554: FF        .byte con_выход



off_A555_52_цубаса_злой_молчит_красный_справа:
- D - I - 0x012565 10:A555: 0C        .byte $0C

- D - I - 0x012566 10:A556: F1        .byte con_координаты_Y_X
- D - I - 0x012567 10:A557: 30        .byte $30
- D - I - 0x012568 10:A558: 46        .byte $46

- D - I - 0x012569 10:A559: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x01256B 10:A55B: FF        .byte con_выход



off_A55C_53_цубаса_с_кубком_медленно_движется_влево:
- D - I - 0x01256C 10:A55C: 2B        .byte $2B

- D - I - 0x01256D 10:A55D: F1        .byte con_координаты_Y_X
- D - I - 0x01256E 10:A55E: 28        .byte $28
- D - I - 0x01256F 10:A55F: AA        .byte $AA

- D - I - 0x012570 10:A560: E8        .byte con_повторы + $08

- D - I - 0x012571 10:A561: EE        .byte con_повторы + $0E

- D - I - 0x012572 10:A562: F7        .byte con_физика
- D - I - 0x012573 10:A563: 0F        .byte $0F
- D - I - 0x012574 10:A564: 00        .byte $00
- D - I - 0x012575 10:A565: 00        .byte $00

- D - I - 0x012576 10:A566: 91 1D     .dbyt off_B11D - $2000
- D - I - 0x012578 10:A568: 01        .byte $01

- D - I - 0x012579 10:A569: F7        .byte con_физика
- D - I - 0x01257A 10:A56A: 00        .byte $00
- D - I - 0x01257B 10:A56B: 00        .byte $00
- D - I - 0x01257C 10:A56C: 00        .byte $00

- D - I - 0x01257D 10:A56D: 91 1D     .dbyt off_B11D - $2000
- D - I - 0x01257F 10:A56F: 01        .byte $01

- D - I - 0x012580 10:A570: F0        .byte con_повторить

- D - I - 0x012581 10:A571: F0        .byte con_повторить

- D - I - 0x012582 10:A572: FF        .byte con_выход



off_A573_54_цубаса_красный_движется_влево_и_поворачивается:
- D - I - 0x012583 10:A573: 0C        .byte $0C

- D - I - 0x012584 10:A574: F1        .byte con_координаты_Y_X
- D - I - 0x012585 10:A575: 30        .byte $30
- D - I - 0x012586 10:A576: 66        .byte $66

- D - I - 0x012587 10:A577: F7        .byte con_физика
- D - I - 0x012588 10:A578: 0F        .byte $0F
- D - I - 0x012589 10:A579: 00        .byte $00
- D - I - 0x01258A 10:A57A: 00        .byte $00

- D - I - 0x01258B 10:A57B: 89 16     .dbyt off_A916 - $2000
- D - I - 0x01258D 10:A57D: 0C        .byte $0C

- D - I - 0x01258E 10:A57E: F7        .byte con_физика
- D - I - 0x01258F 10:A57F: 0F        .byte $0F
- D - I - 0x012590 10:A580: 00        .byte $00
- D - I - 0x012591 10:A581: 00        .byte $00

- D - I - 0x012592 10:A582: 89 E3     .dbyt off_A9E3 - $2000
- D - I - 0x012594 10:A584: 14        .byte $14

- D - I - 0x012595 10:A585: F7        .byte con_физика
- D - I - 0x012596 10:A586: 00        .byte $00
- D - I - 0x012597 10:A587: 00        .byte $00
- D - I - 0x012598 10:A588: 00        .byte $00

- D - I - 0x012599 10:A589: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x01259B 10:A58B: FF        .byte con_выход



off_A58C_55_цубаса_со_спины_красный:
- D - I - 0x01259C 10:A58C: 0C        .byte $0C

- D - I - 0x01259D 10:A58D: F1        .byte con_координаты_Y_X
- D - I - 0x01259E 10:A58E: 30        .byte $30
- D - I - 0x01259F 10:A58F: 3E        .byte $3E

- D - I - 0x0125A0 10:A590: 89 16     .dbyt off_A916 - $2000

- D - I - 0x0125A2 10:A592: FF        .byte con_выход



off_A593_56_санае_в_шоке_слева:
- D - I - 0x0125A3 10:A593: 1D        .byte $1D

- D - I - 0x0125A4 10:A594: F1        .byte con_координаты_Y_X
- D - I - 0x0125A5 10:A595: 30        .byte $30
- D - I - 0x0125A6 10:A596: 2E        .byte $2E

- D - I - 0x0125A7 10:A597: F5        .byte con_F5

- D - I - 0x0125A8 10:A598: 8B 96     .dbyt off_AB96 - $2000

- D - I - 0x0125AA 10:A59A: FF        .byte con_выход



off_A59B_57_цубаса_злой_красный_слева:
- D - I - 0x0125AB 10:A59B: 0C        .byte $0C

- D - I - 0x0125AC 10:A59C: F5        .byte con_F5

- D - I - 0x0125AD 10:A59D: F1        .byte con_координаты_Y_X
- D - I - 0x0125AE 10:A59E: 30        .byte $30
- D - I - 0x0125AF 10:A59F: 2E        .byte $2E

- D - I - 0x0125B0 10:A5A0: FA        .byte con_развилка
- D - I - 0x0125B1 10:A5A1: EA A8     .word off_A8EA
- D - I - 0x0125B3 10:A5A3: 0D B4     .word off_B40D



off_A5A6_58_цубаса_злой_молчит_белый_слева:
- D - I - 0x0125B6 10:A5A6: 17        .byte $17

- D - I - 0x0125B7 10:A5A7: F1        .byte con_координаты_Y_X
- D - I - 0x0125B8 10:A5A8: 30        .byte $30
- D - I - 0x0125B9 10:A5A9: 2E        .byte $2E

- D - I - 0x0125BA 10:A5AA: F5        .byte con_F5

- D - I - 0x0125BB 10:A5AB: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x0125BD 10:A5AD: FF        .byte con_выход



off_A5AE_59:
- D - I - 0x0125BE 10:A5AE: 0A        .byte $0A

- D - I - 0x0125BF 10:A5AF: F1        .byte con_координаты_Y_X
- D - I - 0x0125C0 10:A5B0: 30        .byte $30
- D - I - 0x0125C1 10:A5B1: BE        .byte $BE

- D - I - 0x0125C2 10:A5B2: 93 10     .dbyt off_B310 - $2000
- D - I - 0x0125C4 10:A5B4: 7F        .byte $7F
- D - I - 0x0125C5 10:A5B5: 25        .byte $25

- D - I - 0x0125C6 10:A5B6: F7        .byte con_физика
- D - I - 0x0125C7 10:A5B7: 0F        .byte $0F
- D - I - 0x0125C8 10:A5B8: 00        .byte $00
- D - I - 0x0125C9 10:A5B9: 00        .byte $00

- D - I - 0x0125CA 10:A5BA: 7A        .byte $7A

- D - I - 0x0125CB 10:A5BB: F7        .byte con_физика
- D - I - 0x0125CC 10:A5BC: 00        .byte $00
- D - I - 0x0125CD 10:A5BD: 00        .byte $00
- D - I - 0x0125CE 10:A5BE: 00        .byte $00

- D - I - 0x0125CF 10:A5BF: FA        .byte con_развилка
- D - I - 0x0125D0 10:A5C0: 10 B3     .word off_B310
- D - I - 0x0125D2 10:A5C2: 8A AD     .word off_AD8A



off_A5C5_5A_карлос_злой_молчит_желтый_слева:
- D - I - 0x0125D5 10:A5C5: 0F        .byte $0F

- D - I - 0x0125D6 10:A5C6: F1        .byte con_координаты_Y_X
- D - I - 0x0125D7 10:A5C7: 30        .byte $30
- D - I - 0x0125D8 10:A5C8: 2E        .byte $2E

- D - I - 0x0125D9 10:A5C9: F5        .byte con_F5

- D - I - 0x0125DA 10:A5CA: 91 D0     .dbyt off_B1D0 - $2000

- D - I - 0x0125DC 10:A5CC: FF        .byte con_выход



off_A5CD_5B_вакабаяши_в_шоке:
- D - I - 0x0125DD 10:A5CD: 46        .byte $46

- D - I - 0x0125DE 10:A5CE: F1        .byte con_координаты_Y_X
- D - I - 0x0125DF 10:A5CF: 30        .byte $30
- D - I - 0x0125E0 10:A5D0: 48        .byte $48

- D - I - 0x0125E1 10:A5D1: F7        .byte con_физика
- D - I - 0x0125E2 10:A5D2: 0C        .byte $0C
- D - I - 0x0125E3 10:A5D3: 00        .byte $00
- D - I - 0x0125E4 10:A5D4: 00        .byte $00

- D - I - 0x0125E5 10:A5D5: 8C DA     .dbyt off_ACDA - $2000
- D - I - 0x0125E7 10:A5D7: 05        .byte $05

- D - I - 0x0125E8 10:A5D8: FF        .byte con_выход



off_A5D9_5C_пьер_молчит_справа:
- D - I - 0x0125E9 10:A5D9: 34        .byte $34

- D - I - 0x0125EA 10:A5DA: F1        .byte con_координаты_Y_X
- D - I - 0x0125EB 10:A5DB: 30        .byte $30
- D - I - 0x0125EC 10:A5DC: 4E        .byte $4E

- D - I - 0x0125ED 10:A5DD: 92 92     .dbyt off_B292 - $2000

- D - I - 0x0125EF 10:A5DF: FF        .byte con_выход



off_A5E0_5D_пьер_в_шоке_слева:
- D - I - 0x0125F0 10:A5E0: 34        .byte $34

- D - I - 0x0125F1 10:A5E1: F1        .byte con_координаты_Y_X
- D - I - 0x0125F2 10:A5E2: 30        .byte $30
- D - I - 0x0125F3 10:A5E3: 2E        .byte $2E

- D - I - 0x0125F4 10:A5E4: F5        .byte con_F5

- D - I - 0x0125F5 10:A5E5: 92 A8     .dbyt off_B2A8 - $2000

- D - I - 0x0125F7 10:A5E7: FF        .byte con_выход



off_A5E8_5E_коимбра_тень_серый_слева:
- D - I - 0x0125F8 10:A5E8: 40        .byte $40

- D - I - 0x0125F9 10:A5E9: F1        .byte con_координаты_Y_X
- D - I - 0x0125FA 10:A5EA: 30        .byte $30
- D - I - 0x0125FB 10:A5EB: 2E        .byte $2E

- D - I - 0x0125FC 10:A5EC: F5        .byte con_F5

- D - I - 0x0125FD 10:A5ED: FA        .byte con_развилка
- D - I - 0x0125FE 10:A5EE: 2E B2     .word off_B22E
- D - I - 0x012600 10:A5F0: DA B2     .word off_B2DA



off_A5F3_5F_коимбра_злой_слева:
- D - I - 0x012603 10:A5F3: 13        .byte $13

- D - I - 0x012604 10:A5F4: F1        .byte con_координаты_Y_X
- D - I - 0x012605 10:A5F5: 30        .byte $30
- D - I - 0x012606 10:A5F6: 2E        .byte $2E

- D - I - 0x012607 10:A5F7: F5        .byte con_F5

- D - I - 0x012608 10:A5F8: FA        .byte con_развилка
- D - I - 0x012609 10:A5F9: C0 B2     .word off_B2C0
- D - I - 0x01260B 10:A5FB: CD B2     .word off_B2CD



off_A5FE_60_коимбра_злой_тень_слева:
- D - I - 0x01260E 10:A5FE: 05        .byte $05

- D - I - 0x01260F 10:A5FF: F1        .byte con_координаты_Y_X
- D - I - 0x012610 10:A600: 30        .byte $30
- D - I - 0x012611 10:A601: 2E        .byte $2E

- D - I - 0x012612 10:A602: F5        .byte con_F5

- D - I - 0x012613 10:A603: FA        .byte con_развилка
- D - I - 0x012614 10:A604: 2E B2     .word off_B22E
- D - I - 0x012616 10:A606: DA B2     .word off_B2DA



off_A609_61_карлос_злой_красный_справа:
- D - I - 0x012619 10:A609: 0E        .byte $0E

- D - I - 0x01261A 10:A60A: F1        .byte con_координаты_Y_X
- D - I - 0x01261B 10:A60B: 30        .byte $30
- D - I - 0x01261C 10:A60C: 46        .byte $46

- D - I - 0x01261D 10:A60D: FA        .byte con_развилка
- D - I - 0x01261E 10:A60E: D0 B1     .word off_B1D0
- D - I - 0x012620 10:A610: E7 B1     .word off_B1E7



off_A613_62_роберто_очки_молчит_слева:
- D - I - 0x012623 10:A613: 0A        .byte $0A

- D - I - 0x012624 10:A614: F1        .byte con_координаты_Y_X
- D - I - 0x012625 10:A615: 30        .byte $30
- D - I - 0x012626 10:A616: 2E        .byte $2E

- D - I - 0x012627 10:A617: F5        .byte con_F5

- D - I - 0x012628 10:A618: 8D BA     .dbyt off_ADBA - $2000

- D - I - 0x01262A 10:A61A: FF        .byte con_выход



off_A61B_63_карлос_обычный_красный_справа:
- D - I - 0x01262B 10:A61B: 0E        .byte $0E

- D - I - 0x01262C 10:A61C: F1        .byte con_координаты_Y_X
- D - I - 0x01262D 10:A61D: 30        .byte $30
- D - I - 0x01262E 10:A61E: 46        .byte $46

- D - I - 0x01262F 10:A61F: FA        .byte con_развилка
- D - I - 0x012630 10:A620: E8 AF     .word off_AFE8
- D - I - 0x012632 10:A622: 00 B2     .word off_B200



off_A625_64_карлос_в_шоке_красный_справа:
- D - I - 0x012635 10:A625: 0E        .byte $0E

- D - I - 0x012636 10:A626: F1        .byte con_координаты_Y_X
- D - I - 0x012637 10:A627: 30        .byte $30
- D - I - 0x012638 10:A628: 46        .byte $46

- D - I - 0x012639 10:A629: 91 04     .dbyt off_B104 - $2000

- D - I - 0x01263B 10:A62B: F9        .byte con_F9

- D - I - 0x01263C 10:A62C: 78        .byte $78

- D - I - 0x01263D 10:A62D: FF        .byte con_выход



off_A62E_65_цубаса_со_спины_красный:
- D - I - 0x01263E 10:A62E: 0C        .byte $0C

- D - I - 0x01263F 10:A62F: F1        .byte con_координаты_Y_X
- D - I - 0x012640 10:A630: 30        .byte $30
- D - I - 0x012641 10:A631: 32        .byte $32

- D - I - 0x012642 10:A632: 89 16     .dbyt off_A916 - $2000

- D - I - 0x012644 10:A634: FF        .byte con_выход



off_A635_66_цубаса_обычный_красный_слева:
- D - I - 0x012645 10:A635: 0C        .byte $0C

- D - I - 0x012646 10:A636: F1        .byte con_координаты_Y_X
- D - I - 0x012647 10:A637: 30        .byte $30
- D - I - 0x012648 10:A638: 2E        .byte $2E

- D - I - 0x012649 10:A639: F5        .byte con_F5

- D - I - 0x01264A 10:A63A: FA        .byte con_развилка
- D - I - 0x01264B 10:A63B: 64 B3     .word off_B364
- D - I - 0x01264D 10:A63D: D6 A8     .word off_A8D6



off_A640_67_цубаса_обычный_молчит_красный_слева:
- D - I - 0x012650 10:A640: 0C        .byte $0C

- D - I - 0x012651 10:A641: F1        .byte con_координаты_Y_X
- D - I - 0x012652 10:A642: 30        .byte $30
- D - I - 0x012653 10:A643: 2E        .byte $2E

- D - I - 0x012654 10:A644: F5        .byte con_F5

- D - I - 0x012655 10:A645: 93 64     .dbyt off_B364 - $2000

- D - I - 0x012657 10:A647: FF        .byte con_выход



off_A648_68_ишизаки_закрытые_глаза_слева:
- D - I - 0x012658 10:A648: 1F        .byte $1F

- D - I - 0x012659 10:A649: F1        .byte con_координаты_Y_X
- D - I - 0x01265A 10:A64A: 30        .byte $30
- D - I - 0x01265B 10:A64B: 2E        .byte $2E

- D - I - 0x01265C 10:A64C: F5        .byte con_F5

- D - I - 0x01265D 10:A64D: FA        .byte con_развилка
- D - I - 0x01265E 10:A64E: FD AA     .word off_AAFD
- D - I - 0x012660 10:A650: C9 B0     .word off_B0C9



off_A653_69_цубаса_резко_поворачивается_спиной_красный_справа:
- D - I - 0x012663 10:A653: 0C        .byte $0C

- D - I - 0x012664 10:A654: F1        .byte con_координаты_Y_X
- D - I - 0x012665 10:A655: 30        .byte $30
- D - I - 0x012666 10:A656: 3E        .byte $3E

- D - I - 0x012667 10:A657: 89 E3     .dbyt off_A9E3 - $2000
- D - I - 0x012669 10:A659: 03        .byte $03

- D - I - 0x01266A 10:A65A: 89 16     .dbyt off_A916 - $2000

- D - I - 0x01266C 10:A65C: FF        .byte con_выход



off_A65D_6A_цубаса_злой_молчит_красный_слева:
- D - I - 0x01266D 10:A65D: 0C        .byte $0C

- D - I - 0x01266E 10:A65E: F5        .byte con_F5

- D - I - 0x01266F 10:A65F: F1        .byte con_координаты_Y_X
- D - I - 0x012670 10:A660: 30        .byte $30
- D - I - 0x012671 10:A661: 2E        .byte $2E

- D - I - 0x012672 10:A662: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x012674 10:A664: FF        .byte con_выход



off_A665_6B_ишизаки_надутые_губы:
- D - I - 0x012675 10:A665: 27        .byte $27

- D - I - 0x012676 10:A666: F1        .byte con_координаты_Y_X
- D - I - 0x012677 10:A667: 30        .byte $30
- D - I - 0x012678 10:A668: 3E        .byte $3E

- D - I - 0x012679 10:A669: E2        .byte con_повторы + $02

- D - I - 0x01267A 10:A66A: F6        .byte con_F6

- D - I - 0x01267B 10:A66B: 94 4E     .dbyt off_B44E - $2000
- D - I - 0x01267D 10:A66D: 0A        .byte $0A

- D - I - 0x01267E 10:A66E: F5        .byte con_F5

- D - I - 0x01267F 10:A66F: 94 4E     .dbyt off_B44E - $2000
- D - I - 0x012681 10:A671: 0A        .byte $0A

- D - I - 0x012682 10:A672: F0        .byte con_повторить

- D - I - 0x012683 10:A673: FF        .byte con_выход



off_A674_6C_движение_блеска_очков_роберто:
- D - I - 0x012684 10:A674: 0C        .byte $0C

- D - I - 0x012685 10:A675: F1        .byte con_координаты_Y_X
- D - I - 0x012686 10:A676: 34        .byte $34
- D - I - 0x012687 10:A677: 38        .byte $38

- D - I - 0x012688 10:A678: 90 40     .dbyt off_B040 - $2000
- D - I - 0x01268A 10:A67A: 1B        .byte $1B

- D - I - 0x01268B 10:A67B: 90 5F     .dbyt off_B05F - $2000
- D - I - 0x01268D 10:A67D: 02        .byte $02

- D - I - 0x01268E 10:A67E: 90 96     .dbyt off_B096 - $2000

- D - I - 0x012690 10:A680: FF        .byte con_выход









; данные спрайтов
off_A681:
                                      .byte $04, $05, $23, $5F

- D - I - 0x012695 10:A685: BD        .byte $BD
                                      .byte $3B, $08
                                      .byte $3F, $20
                                      .byte $03, $21

- D - I - 0x01269C 10:A68C: BE        .byte $BE
                                      .byte $37, $02
                                      .byte $3B, $09
                                      .byte $3F, $0A
                                      .byte $03, $24
                                      .byte $07, $26

- D - I - 0x0126A7 10:A697: BF        .byte $BF
                                      .byte $37, $03
                                      .byte $3B, $0C
                                      .byte $3F, $0B
                                      .byte $03, $25
                                      .byte $07, $27

- D - I - 0x0126B2 10:A6A2: A0        .byte $A0
                                      .byte $37, $06
                                      .byte $3B, $0D
                                      .byte $3F, $0E
                                      .byte $03, $30
                                      .byte $07, $32
                                      .byte $0B, $22

- D - I - 0x0126BF 10:A6AF: A1        .byte $A1
                                      .byte $3B, $18
                                      .byte $3F, $0F
                                      .byte $03, $31
                                      .byte $07, $33
                                      .byte $0B, $23

- D - I - 0x0126CA 10:A6BA: A2        .byte $A2
                                      .byte $3F, $1A
                                      .byte $03, $34
                                      .byte $07, $36

- D - I - 0x0126D1 10:A6C1: FF        .byte con_FF



off_A6C2:
                                      .byte $04, $05, $23, $5F

- D - I - 0x0126D6 10:A6C6: BD        .byte $BD
                                      .byte $3B, $04
                                      .byte $3F, $07

- D - I - 0x0126DB 10:A6CB: BE        .byte $BE
                                      .byte $3B, $05
                                      .byte $3F, $12
                                      .byte $03, $19
                                      .byte $07, $1B

- D - I - 0x0126E4 10:A6D4: BF        .byte $BF
                                      .byte $3B, $10
                                      .byte $3F, $13
                                      .byte $03, $1C
                                      .byte $07, $1E

- D - I - 0x0126ED 10:A6DD: A0        .byte $A0
                                      .byte $3B, $11
                                      .byte $3F, $16
                                      .byte $03, $1D
                                      .byte $07, $1F

- D - I - 0x0126F6 10:A6E6: A1        .byte $A1
                                      .byte $3F, $17
                                      .byte $03, $48
                                      .byte $07, $4A

- D - I - 0x0126FD 10:A6ED: A2        .byte $A2
                                      .byte $03, $49
                                      .byte $07, $4B

- D - I - 0x012702 10:A6F2: FF        .byte con_FF



off_A6F3:
                                      .byte $04, $05, $23, $5F

- D - I - 0x012707 10:A6F7: BE        .byte $BE
                                      .byte $3B, $35
                                      .byte $3F, $37
                                      .byte $03, $3D

- D - I - 0x01270E 10:A6FE: BF        .byte $BF
                                      .byte $3B, $60
                                      .byte $3F, $62
                                      .byte $03, $68
                                      .byte $07, $6A

- D - I - 0x012717 10:A707: A0        .byte $A0
                                      .byte $3B, $61
                                      .byte $3F, $63
                                      .byte $03, $69
                                      .byte $07, $6B

- D - I - 0x012720 10:A710: A1        .byte $A1
                                      .byte $3F, $66
                                      .byte $03, $6C
                                      .byte $07, $6E

- D - I - 0x012727 10:A717: FF        .byte con_FF



off_A718:
                                      .byte $04, $05, $23, $5F

- D - I - 0x01272C 10:A71C: BE        .byte $BE

- D - I - 0x01272D 10:A71D: 9F        .byte $9F

                                      .byte $C0, $33, $14
                                      .byte $C0, $13, $42

- D - I - 0x012734 10:A724: 80        .byte $80

                                      .byte $C0, $13, $4C

- D - I - 0x012738 10:A728: BF        .byte $BF

- D - I - 0x012739 10:A729: 9F        .byte $9F

                                      .byte $C0, $33, $15
                                      .byte $C0, $13, $43

- D - I - 0x012740 10:A730: 80        .byte $80

                                      .byte $C0, $13, $4D

- D - I - 0x012744 10:A734: A0        .byte $A0

- D - I - 0x012745 10:A735: 9F        .byte $9F

                                      .byte $C0, $33, $40
                                      .byte $C0, $13, $46

- D - I - 0x01274C 10:A73C: 80        .byte $80

                                      .byte $C0, $13, $58

- D - I - 0x012750 10:A740: A1        .byte $A1

- D - I - 0x012751 10:A741: 80        .byte $80

                                      .byte $C0, $33, $47
                                      .byte $C0, $13, $59

- D - I - 0x012758 10:A748: FF        .byte con_FF



off_A749:
                                      .byte $04, $05, $23, $5F

- D - I - 0x01275D 10:A74D: BF        .byte $BF
                                      .byte $3F, $28
                                      .byte $03, $2A

- D - I - 0x012762 10:A752: A0        .byte $A0
                                      .byte $3F, $29
                                      .byte $03, $2B

- D - I - 0x012767 10:A757: A1        .byte $A1
                                      .byte $3F, $2C
                                      .byte $03, $2E

- D - I - 0x01276C 10:A75C: FF        .byte con_FF



off_A75D:
                                      .byte $04, $05, $23, $5F

- D - I - 0x012771 10:A761: BF        .byte $BF
                                      .byte $3F, $2D
                                      .byte $03, $2F

- D - I - 0x012776 10:A766: A0        .byte $A0
                                      .byte $3F, $38
                                      .byte $03, $3A

- D - I - 0x01277B 10:A76B: A1        .byte $A1
                                      .byte $3F, $39
                                      .byte $03, $3B

- D - I - 0x012780 10:A770: FF        .byte con_FF



off_A771:
                                      .byte $04, $05, $23, $5F

- D - I - 0x012785 10:A775: BF        .byte $BF
                                      .byte $3F, $4E
                                      .byte $03, $64

- D - I - 0x01278A 10:A77A: A0        .byte $A0
                                      .byte $3F, $4F
                                      .byte $03, $65

- D - I - 0x01278F 10:A77F: FF        .byte con_FF



off_A780:
                                      .byte $04, $05, $23, $5F

- D - I - 0x012794 10:A784: BF        .byte $BF
                                      .byte $3F, $41
                                      .byte $03, $45

- D - I - 0x012799 10:A789: A0        .byte $A0
                                      .byte $3F, $44
                                      .byte $03, $50

- D - I - 0x01279E 10:A78E: FF        .byte con_FF



off_A78F:
                                      .byte $04, $05, $23, $5F

- D - I - 0x0127A3 10:A793: BF        .byte $BF
                                      .byte $3F, $51
                                      .byte $03, $52

- D - I - 0x0127A8 10:A798: A0        .byte $A0
                                      .byte $3F, $54
                                      .byte $03, $53

- D - I - 0x0127AD 10:A79D: FF        .byte con_FF



off_A79E:
                                      .byte $04, $05, $23, $5F

- D - I - 0x0127B2 10:A7A2: BF        .byte $BF
                                      .byte $3F, $3C
                                      .byte $03, $3E

- D - I - 0x0127B7 10:A7A7: A0        .byte $A0
                                      .byte $3F, $55
                                      .byte $03, $3F

- D - I - 0x0127BC 10:A7AC: FF        .byte con_FF



off_A7AD:
                                      .byte $04, $05, $23, $5F

- D - I - 0x0127C1 10:A7B1: A0        .byte $A0

- D - I - 0x0127C2 10:A7B2: 80        .byte $80

                                      .byte $CC, $33, $67

- D - I - 0x0127C6 10:A7B6: FF        .byte con_FF



off_A7B7:
                                      .byte $04, $05, $23, $5F

- D - I - 0x0127CB 10:A7BB: A0        .byte $A0

- D - I - 0x0127CC 10:A7BC: 80        .byte $80

                                      .byte $CC, $33, $6D

- D - I - 0x0127D0 10:A7C0: FF        .byte con_FF



off_A7C1:
                                      .byte $04, $05, $23, $5F

- D - I - 0x0127D5 10:A7C5: A0        .byte $A0

- D - I - 0x0127D6 10:A7C6: 80        .byte $80

                                      .byte $CC, $33, $6F

- D - I - 0x0127DA 10:A7CA: FF        .byte con_FF



off_A7CB:
                                      .byte $7C, $7D, $7E, $7F

- D - I - 0x0127DF 10:A7CF: BF        .byte $BF
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

- D - I - 0x0127FE 10:A7EE: A0        .byte $A0
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

- D - I - 0x012823 10:A813: A1        .byte $A1
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

- D - I - 0x012848 10:A838: A2        .byte $A2
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

- D - I - 0x012861 10:A851: FF        .byte con_FF



off_A852:
                                      .byte $64, $65, $66, $67

- D - I - 0x012866 10:A856: BE        .byte $BE
                                      .byte $30, $8A
                                      .byte $34, $A0
                                      .byte $0A, $92

- D - I - 0x01286D 10:A85D: BF        .byte $BF
                                      .byte $30, $8B
                                      .byte $34, $A1
                                      .byte $3B, $A3
                                      .byte $02, $AB
                                      .byte $06, $91
                                      .byte $0A, $93
                                      .byte $0E, $99

- D - I - 0x01287C 10:A86C: A0        .byte $A0
                                      .byte $30, $8E
                                      .byte $34, $A4
                                      .byte $38, $A6
                                      .byte $3C, $AC
                                      .byte $02, $AE
                                      .byte $06, $94
                                      .byte $0A, $96

- D - I - 0x01288B 10:A87B: A1        .byte $A1
                                      .byte $30, $8F
                                      .byte $34, $A5
                                      .byte $38, $01
                                      .byte $3D, $AD
                                      .byte $02, $AF
                                      .byte $0A, $9D
                                      .byte $0E, $96

- D - I - 0x01289A 10:A88A: A2        .byte $A2
                                      .byte $38, $A7
                                      .byte $0E, $9D

- D - I - 0x01289F 10:A88F: A3        .byte $A3
                                      .byte $06, $B7

- D - I - 0x0128A2 10:A892: FB        .byte con_jmp
- D - I - 0x0128A3 10:A893: AC B4     .word off_B4AC



off_A895:
                                      .byte $64, $65, $66, $67

- D - I - 0x0128A9 10:A899: BE        .byte $BE
                                      .byte $32, $9A
                                      .byte $36, $B0
                                      .byte $0B, $92

- D - I - 0x0128B0 10:A8A0: BF        .byte $BF
                                      .byte $32, $9B
                                      .byte $36, $B1
                                      .byte $3B, $B2
                                      .byte $03, $AB
                                      .byte $07, $91
                                      .byte $0B, $93
                                      .byte $0F, $99

- D - I - 0x0128BF 10:A8AF: A0        .byte $A0
                                      .byte $32, $9E
                                      .byte $36, $B4
                                      .byte $3A, $B3
                                      .byte $3E, $B9
                                      .byte $03, $AE
                                      .byte $07, $94
                                      .byte $0B, $96

- D - I - 0x0128CE 10:A8BE: A1        .byte $A1
                                      .byte $32, $9F
                                      .byte $36, $B5
                                      .byte $3A, $B6
                                      .byte $3D, $BC
                                      .byte $03, $AF
                                      .byte $0B, $9D
                                      .byte $0F, $96

- D - I - 0x0128DD 10:A8CD: A2        .byte $A2
                                      .byte $0F, $9D

- D - I - 0x0128E0 10:A8D0: A3        .byte $A3
                                      .byte $07, $B7

- D - I - 0x0128E3 10:A8D3: FB        .byte con_jmp
- D - I - 0x0128E4 10:A8D4: AC B4     .word off_B4AC



off_A8D6:
                                      .byte $70, $71, $66, $67

- D - I - 0x0128EA 10:A8DA: BE        .byte $BE
                                      .byte $3F, $06

- D - I - 0x0128ED 10:A8DD: BF        .byte $BF
                                      .byte $3C, $07
                                      .byte $00, $0D
                                      .byte $07, $0F

- D - I - 0x0128F4 10:A8E4: A0        .byte $A0
                                      .byte $3F, $12

- D - I - 0x0128F7 10:A8E7: FB        .byte con_jmp
- D - I - 0x0128F8 10:A8E8: D4 B4     .word off_B4D4



off_A8EA:
                                      .byte $70, $71, $72, $73

- D - I - 0x0128FE 10:A8EE: BE        .byte $BE
                                      .byte $3F, $28

- D - I - 0x012901 10:A8F1: BF        .byte $BF
                                      .byte $3C, $29
                                      .byte $00, $0D
                                      .byte $04, $0A

- D - I - 0x012908 10:A8F8: A0        .byte $A0
                                      .byte $3F, $2C

- D - I - 0x01290B 10:A8FB: FB        .byte con_jmp
- D - I - 0x01290C 10:A8FC: D4 B4     .word off_B4D4



off_A8FE:
                                      .byte $70, $71, $72, $73

- D - I - 0x012912 10:A902: BE        .byte $BE
                                      .byte $3F, $2A
                                      .byte $03, $D1

- D - I - 0x012917 10:A907: BF        .byte $BF
                                      .byte $3C, $07
                                      .byte $00, $0D
                                      .byte $07, $20

- D - I - 0x01291E 10:A90E: A0        .byte $A0
                                      .byte $3F, $2E
                                      .byte $03, $D4

- D - I - 0x012923 10:A913: FB        .byte con_jmp
- D - I - 0x012924 10:A914: D4 B4     .word off_B4D4



off_A916:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x01292A 10:A91A: BC        .byte $BC
                                      .byte $0D, $2A

- D - I - 0x01292D 10:A91D: BD        .byte $BD
                                      .byte $3B, $80
                                      .byte $3C, $82
                                      .byte $03, $28
                                      .byte $09, $29
                                      .byte $0D, $2B

- D - I - 0x012938 10:A928: BE        .byte $BE
                                      .byte $37, $81
                                      .byte $3B, $01
                                      .byte $3C, $83
                                      .byte $00, $91
                                      .byte $04, $93
                                      .byte $09, $2C
                                      .byte $0D, $2E

- D - I - 0x012947 10:A937: BF        .byte $BF
                                      .byte $37, $84
                                      .byte $3B, $01
                                      .byte $3C, $86
                                      .byte $00, $94
                                      .byte $04, $96
                                      .byte $09, $2D

- D - I - 0x012954 10:A944: A0        .byte $A0
                                      .byte $37, $85
                                      .byte $3B, $01
                                      .byte $3F, $01
                                      .byte $03, $01
                                      .byte $04, $97
                                      .byte $09, $38

- D - I - 0x012961 10:A951: A1        .byte $A1
                                      .byte $37, $90
                                      .byte $3B, $87
                                      .byte $3F, $01
                                      .byte $03, $95
                                      .byte $07, $C2
                                      .byte $09, $39

- D - I - 0x01296E 10:A95E: A2        .byte $A2
                                      .byte $3B, $92
                                      .byte $3F, $57
                                      .byte $03, $3D
                                      .byte $09, $3C

- D - I - 0x012977 10:A967: A3        .byte $A3
                                      .byte $0D, $3F

- D - I - 0x01297A 10:A96A: FB        .byte con_jmp
- D - I - 0x01297B 10:A96B: 25 B5     .word off_B525



off_A96D:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012981 10:A971: BC        .byte $BC
                                      .byte $3B, $99
                                      .byte $3F, $9B
                                      .byte $09, $68
                                      .byte $0D, $6A

- D - I - 0x01298A 10:A97A: BD        .byte $BD
                                      .byte $37, $C3
                                      .byte $3B, $9C
                                      .byte $3C, $9E
                                      .byte $00, $6F
                                      .byte $04, $63
                                      .byte $09, $69
                                      .byte $0D, $6B

- D - I - 0x012999 10:A989: BE        .byte $BE
                                      .byte $37, $C6
                                      .byte $38, $9D
                                      .byte $3F, $9F
                                      .byte $00, $7A
                                      .byte $04, $66
                                      .byte $09, $6C
                                      .byte $0D, $6E

- D - I - 0x0129A8 10:A998: BF        .byte $BF
                                      .byte $37, $C7
                                      .byte $38, $C8
                                      .byte $3F, $CA
                                      .byte $00, $7B
                                      .byte $04, $67
                                      .byte $09, $6D

- D - I - 0x0129B5 10:A9A5: A0        .byte $A0
                                      .byte $37, $D2
                                      .byte $3B, $01
                                      .byte $3C, $CB
                                      .byte $00, $7E
                                      .byte $04, $72
                                      .byte $09, $78

- D - I - 0x0129C2 10:A9B2: A1        .byte $A1
                                      .byte $3B, $CE
                                      .byte $3F, $C9
                                      .byte $03, $7F
                                      .byte $07, $73
                                      .byte $09, $79

- D - I - 0x0129CD 10:A9BD: A2        .byte $A2
                                      .byte $3F, $77
                                      .byte $03, $7D
                                      .byte $09, $7C

- D - I - 0x0129D4 10:A9C4: A3        .byte $A3
                                      .byte $0D, $76

- D - I - 0x0129D7 10:A9C7: FB        .byte con_jmp
- D - I - 0x0129D8 10:A9C8: 25 B5     .word off_B525



off_A9CA:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x0129DE 10:A9CE: BE        .byte $BE
                                      .byte $3B, $4E
                                      .byte $3F, $6A

- D - I - 0x0129E3 10:A9D3: BF        .byte $BF
                                      .byte $38, $44
                                      .byte $3C, $6B
                                      .byte $03, $71

- D - I - 0x0129EA 10:A9DA: A0        .byte $A0
                                      .byte $3B, $4F
                                      .byte $3F, $6E

- D - I - 0x0129EF 10:A9DF: FB        .byte con_jmp
- D - I - 0x0129F0 10:A9E0: 8D B8     .word off_B88D



off_A9E3:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x0129F7 10:A9E7: BF        .byte $BF
                                      .byte $3F, $8E
                                      .byte $03, $A1

- D - I - 0x0129FC 10:A9EC: A0        .byte $A0
                                      .byte $3F, $8F
                                      .byte $00, $A4
                                      .byte $03, $02

- D - I - 0x012A03 10:A9F3: FB        .byte con_jmp
- D - I - 0x012A04 10:A9F4: 32 B5     .word off_B532



off_A9F6:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012A0A 10:A9FA: BE        .byte $BE
                                      .byte $07, $27

- D - I - 0x012A0D 10:A9FD: BF        .byte $BF
                                      .byte $3F, $8E
                                      .byte $03, $A1

- D - I - 0x012A12 10:AA02: BF        .byte $BF
                                      .byte $07, $60

- D - I - 0x012A15 10:AA05: A0        .byte $A0
                                      .byte $3F, $8F
                                      .byte $00, $A4
                                      .byte $03, $02

- D - I - 0x012A1C 10:AA0C: FB        .byte con_jmp
- D - I - 0x012A1D 10:AA0D: 32 B5     .word off_B532



off_AA0F:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012A23 10:AA13: BD        .byte $BD
                                      .byte $3A, $D1
                                      .byte $3E, $D3

- D - I - 0x012A28 10:AA18: BE        .byte $BE
                                      .byte $36, $C1
                                      .byte $3A, $D4
                                      .byte $3E, $D6
                                      .byte $00, $A0

- D - I - 0x012A31 10:AA21: BF        .byte $BF
                                      .byte $36, $C4
                                      .byte $3A, $D5
                                      .byte $3F, $D7
                                      .byte $03, $BB

- D - I - 0x012A3A 10:AA2A: A0        .byte $A0
                                      .byte $36, $C5
                                      .byte $3A, $CC
                                      .byte $3F, $B5
                                      .byte $3E, $02
                                      .byte $00, $BE
                                      .byte $03, $02

- D - I - 0x012A47 10:AA37: A1        .byte $A1
                                      .byte $36, $D0
                                      .byte $3A, $CD
                                      .byte $3E, $CF
                                      .byte $02, $BD
                                      .byte $06, $BF

- D - I - 0x012A52 10:AA42: A2        .byte $A2
                                      .byte $3E, $DA
                                      .byte $02, $B7

- D - I - 0x012A57 10:AA47: FB        .byte con_jmp
- D - I - 0x012A58 10:AA48: 61 B5     .word off_B561



off_AA4A:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012A5E 10:AA4E: BE        .byte $BE
                                      .byte $3A, $0B

- D - I - 0x012A61 10:AA51: BF        .byte $BF
                                      .byte $3C, $24
                                      .byte $00, $1D
                                      .byte $04, $1E

- D - I - 0x012A68 10:AA58: A0        .byte $A0
                                      .byte $3A, $0F

- D - I - 0x012A6B 10:AA5B: FB        .byte con_jmp
- D - I - 0x012A6C 10:AA5C: 83 B5     .word off_B583



off_AA5E:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012A72 10:AA62: BE        .byte $BE
                                      .byte $3A, $0B

- D - I - 0x012A75 10:AA65: BF        .byte $BF
                                      .byte $3C, $24
                                      .byte $03, $34
                                      .byte $04, $0C

- D - I - 0x012A7C 10:AA6C: A0        .byte $A0
                                      .byte $3A, $0F

- D - I - 0x012A7F 10:AA6F: FB        .byte con_jmp
- D - I - 0x012A80 10:AA70: 83 B5     .word off_B583



off_AA72:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012A86 10:AA76: BE        .byte $BE
                                      .byte $3A, $1F

- D - I - 0x012A89 10:AA79: BF        .byte $BF
                                      .byte $3C, $35
                                      .byte $00, $1D
                                      .byte $04, $1E

- D - I - 0x012A90 10:AA80: A0        .byte $A0
                                      .byte $3A, $4A

- D - I - 0x012A93 10:AA83: FB        .byte con_jmp
- D - I - 0x012A94 10:AA84: 83 B5     .word off_B583



off_AA86:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012A9A 10:AA8A: BF        .byte $BF
                                      .byte $00, $1D
                                      .byte $04, $1E

- D - I - 0x012A9F 10:AA8F: FB        .byte con_jmp
- D - I - 0x012AA0 10:AA90: E4 B5     .word off_B5E4



off_AA92:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012AA6 10:AA96: BF        .byte $BF
                                      .byte $03, $34
                                      .byte $04, $0C

- D - I - 0x012AAB 10:AA9B: FB        .byte con_jmp
- D - I - 0x012AAC 10:AA9C: E4 B5     .word off_B5E4



off_AAB2:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012AC6 10:AAB6: BF        .byte $BF
                                      .byte $00, $1D
                                      .byte $04, $1E

- D - I - 0x012ACB 10:AABB: FB        .byte con_jmp
- D - I - 0x012ACC 10:AABC: 1B B6     .word off_B61B



off_AABE:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012AD2 10:AAC2: BF        .byte $BF
                                      .byte $03, $34
                                      .byte $04, $0C

- D - I - 0x012AD7 10:AAC7: FB        .byte con_jmp
- D - I - 0x012AD8 10:AAC8: 1B B6     .word off_B61B



off_AACA:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x012ADE 10:AACE: BF        .byte $BF
                                      .byte $01, $DC

- D - I - 0x012AE1 10:AAD1: FB        .byte con_jmp
- D - I - 0x012AE2 10:AAD2: A9 BA     .word off_BAA9



off_AAD4:
                                      .byte $74, $75, $76, $77

- D - I - 0x012AE8 10:AAD8: BE        .byte $BE
                                      .byte $3A, $88
                                      .byte $3C, $8A
                                      .byte $00, $A0
                                      .byte $04, $5A

- D - I - 0x012AF1 10:AAE1: BF        .byte $BF
                                      .byte $3A, $89
                                      .byte $3C, $8B
                                      .byte $00, $A1
                                      .byte $07, $86
                                      .byte $04, $5B

- D - I - 0x012AFC 10:AAEC: A0        .byte $A0
                                      .byte $3A, $8C
                                      .byte $3C, $8E
                                      .byte $00, $A4
                                      .byte $07, $87
                                      .byte $04, $5E

- D - I - 0x012B07 10:AAF7: A1        .byte $A1
                                      .byte $3A, $8D

- D - I - 0x012B0A 10:AAFA: FB        .byte con_jmp
- D - I - 0x012B0B 10:AAFB: 5D B6     .word off_B65D



off_AAFD:
                                      .byte $74, $75, $76, $77

- D - I - 0x012B11 10:AB01: BE        .byte $BE
                                      .byte $3A, $85
                                      .byte $3C, $92
                                      .byte $00, $98

- D - I - 0x012B18 10:AB08: BF        .byte $BF
                                      .byte $3A, $89
                                      .byte $3C, $93
                                      .byte $00, $99

- D - I - 0x012B1F 10:AB0F: A0        .byte $A0
                                      .byte $3A, $90
                                      .byte $3C, $96
                                      .byte $00, $9C

- D - I - 0x012B26 10:AB16: A1        .byte $A1
                                      .byte $3A, $91

- D - I - 0x012B29 10:AB19: FB        .byte con_jmp
- D - I - 0x012B2A 10:AB1A: 4E B6     .word off_B64E



off_AB1C:
                                      .byte $74, $75, $76, $77

- D - I - 0x012B30 10:AB20: BE        .byte $BE
                                      .byte $3A, $88
                                      .byte $3C, $8A
                                      .byte $00, $A0

- D - I - 0x012B37 10:AB27: BF        .byte $BF
                                      .byte $3A, $94
                                      .byte $3C, $9E
                                      .byte $00, $97

- D - I - 0x012B3E 10:AB2E: A0        .byte $A0
                                      .byte $3A, $95
                                      .byte $3C, $9F
                                      .byte $00, $9D

- D - I - 0x012B45 10:AB35: A1        .byte $A1
                                      .byte $3A, $8D

- D - I - 0x012B48 10:AB38: FB        .byte con_jmp
- D - I - 0x012B49 10:AB39: 4E B6     .word off_B64E



off_AB3B:
                                      .byte $74, $75, $76, $77

- D - I - 0x012B4F 10:AB3F: BE        .byte $BE
                                      .byte $3A, $85
                                      .byte $3C, $A2
                                      .byte $03, $A5
                                      .byte $00, $A8
                                      .byte $07, $AB
                                      .byte $04, $5A

- D - I - 0x012B5C 10:AB4C: BF        .byte $BF
                                      .byte $3A, $89
                                      .byte $3C, $A3
                                      .byte $00, $A9
                                      .byte $04, $AA

- D - I - 0x012B65 10:AB55: A0        .byte $A0
                                      .byte $3A, $90
                                      .byte $3C, $A6
                                      .byte $03, $A5
                                      .byte $00, $AC
                                      .byte $07, $AE
                                      .byte $04, $5E

- D - I - 0x012B72 10:AB62: A1        .byte $A1
                                      .byte $3A, $91

- D - I - 0x012B75 10:AB65: FB        .byte con_jmp
- D - I - 0x012B76 10:AB66: 5D B6     .word off_B65D



off_AB68:
                                      .byte $70, $71, $72, $73

- D - I - 0x012B7C 10:AB6C: BF        .byte $BF
                                      .byte $3F, $8B
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x012B83 10:AB73: A0        .byte $A0
                                      .byte $3C, $8E
                                      .byte $07, $A6

- D - I - 0x012B88 10:AB78: A1        .byte $A1
                                      .byte $3F, $8F
                                      .byte $03, $A5

- D - I - 0x012B8D 10:AB7D: FB        .byte con_jmp
- D - I - 0x012B8E 10:AB7E: 9A B6     .word off_B69A



off_AB80:
                                      .byte $70, $71, $72, $73

- D - I - 0x012B94 10:AB84: BF        .byte $BF
                                      .byte $3C, $94
                                      .byte $02, $96

- D - I - 0x012B99 10:AB89: A0        .byte $A0
                                      .byte $3C, $98
                                      .byte $04, $A2

- D - I - 0x012B9E 10:AB8E: A1        .byte $A1
                                      .byte $3C, $95
                                      .byte $02, $97

- D - I - 0x012BA3 10:AB93: FB        .byte con_jmp
- D - I - 0x012BA4 10:AB94: 9A B6     .word off_B69A



off_AB96:
                                      .byte $70, $71, $72, $73

- D - I - 0x012BAA 10:AB9A: BF        .byte $BF
                                      .byte $3F, $9C
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x012BB1 10:ABA1: A0        .byte $A0
                                      .byte $3C, $8E
                                      .byte $07, $B3

- D - I - 0x012BB6 10:ABA6: A1        .byte $A1
                                      .byte $3F, $9D
                                      .byte $03, $A5

- D - I - 0x012BBB 10:ABAB: FB        .byte con_jmp
- D - I - 0x012BBC 10:ABAC: 9A B6     .word off_B69A



off_ABAE:
                                      .byte $70, $71, $72, $73

- D - I - 0x012BC2 10:ABB2: BF        .byte $BF
                                      .byte $3F, $86
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x012BC9 10:ABB9: A0        .byte $A0
                                      .byte $3C, $8E
                                      .byte $04, $A2

- D - I - 0x012BCE 10:ABBE: A1        .byte $A1
                                      .byte $3F, $87
                                      .byte $03, $A5

- D - I - 0x012BD3 10:ABC3: FB        .byte con_jmp
- D - I - 0x012BD4 10:ABC4: 9A B6     .word off_B69A



off_ABC6:
                                      .byte $70, $71, $72, $73

- D - I - 0x012BDA 10:ABCA: BF        .byte $BF
                                      .byte $3F, $8B
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x012BE1 10:ABD1: A0        .byte $A0
                                      .byte $3C, $B6
                                      .byte $07, $A6

- D - I - 0x012BE6 10:ABD6: A1        .byte $A1
                                      .byte $3F, $8F
                                      .byte $03, $A5

- D - I - 0x012BEB 10:ABDB: FB        .byte con_jmp
- D - I - 0x012BEC 10:ABDC: F6 B6     .word off_B6F6



off_ABDE:
                                      .byte $70, $71, $72, $73

- D - I - 0x012BF2 10:ABE2: BF        .byte $BF
                                      .byte $3C, $94
                                      .byte $02, $96

- D - I - 0x012BF7 10:ABE7: A0        .byte $A0
                                      .byte $3C, $C8
                                      .byte $04, $A2

- D - I - 0x012BFC 10:ABEC: A1        .byte $A1
                                      .byte $3C, $95
                                      .byte $02, $97

- D - I - 0x012C01 10:ABF1: FB        .byte con_jmp
- D - I - 0x012C02 10:ABF2: F6 B6     .word off_B6F6



off_ABF4:
                                      .byte $70, $71, $72, $73

- D - I - 0x012C08 10:ABF8: BF        .byte $BF
                                      .byte $3C, $94
                                      .byte $02, $96

- D - I - 0x012C0D 10:ABFD: A0        .byte $A0
                                      .byte $3C, $B6
                                      .byte $07, $A6

- D - I - 0x012C12 10:AC02: A1        .byte $A1
                                      .byte $3F, $8F
                                      .byte $03, $A5

- D - I - 0x012C17 10:AC07: FB        .byte con_jmp
- D - I - 0x012C18 10:AC08: F6 B6     .word off_B6F6



off_AC0A:
                                      .byte $70, $71, $72, $73

- D - I - 0x012C1E 10:AC0E: BF        .byte $BF
                                      .byte $3F, $9E
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x012C25 10:AC15: A0        .byte $A0
                                      .byte $3C, $B6
                                      .byte $07, $B3

- D - I - 0x012C2A 10:AC1A: A1        .byte $A1
                                      .byte $3F, $9F
                                      .byte $03, $A5

- D - I - 0x012C2F 10:AC1F: FB        .byte con_jmp
- D - I - 0x012C30 10:AC20: F6 B6     .word off_B6F6



off_AC22:
                                      .byte $70, $71, $72, $73

- D - I - 0x012C36 10:AC26: BE        .byte $BE
                                      .byte $09, $81
                                      .byte $0D, $7D

- D - I - 0x012C3B 10:AC2B: BF        .byte $BF
                                      .byte $03, $C9
                                      .byte $09, $D0
                                      .byte $0A, $91
                                      .byte $0D, $D2

- D - I - 0x012C44 10:AC34: A0        .byte $A0
                                      .byte $04, $A2
                                      .byte $08, $C0
                                      .byte $0D, $D3

- D - I - 0x012C4B 10:AC3B: A1        .byte $A1
                                      .byte $03, $A5
                                      .byte $0B, $2B
                                      .byte $0D, $D6

- D - I - 0x012C52 10:AC42: A2        .byte $A2
                                      .byte $3E, $CC
                                      .byte $02, $CE
                                      .byte $09, $D5
                                      .byte $0A, $91
                                      .byte $0D, $D7

- D - I - 0x012C5D 10:AC4D: A3        .byte $A3
                                      .byte $09, $7C
                                      .byte $0D, $7E

- D - I - 0x012C62 10:AC52: A4        .byte $A4
                                      .byte $0D, $7F

- D - I - 0x012C65 10:AC55: FB        .byte con_jmp
- D - I - 0x012C66 10:AC56: 24 B7     .word off_B724



off_AC58:
                                      .byte $70, $71, $72, $73

- D - I - 0x012C6C 10:AC5C: BE        .byte $BE
                                      .byte $09, $A8
                                      .byte $0D, $AA

- D - I - 0x012C71 10:AC61: BF        .byte $BF
                                      .byte $03, $D8
                                      .byte $09, $DA
                                      .byte $0A, $91
                                      .byte $0D, $AB

- D - I - 0x012C7A 10:AC6A: A0        .byte $A0
                                      .byte $04, $A2
                                      .byte $08, $AC
                                      .byte $0F, $AE

- D - I - 0x012C81 10:AC71: A1        .byte $A1
                                      .byte $03, $D9
                                      .byte $0B, $AD
                                      .byte $0F, $AF

- D - I - 0x012C88 10:AC78: A2        .byte $A2
                                      .byte $3E, $9A
                                      .byte $02, $B0
                                      .byte $09, $DB
                                      .byte $0A, $91
                                      .byte $0D, $BA

- D - I - 0x012C93 10:AC83: A3        .byte $A3
                                      .byte $09, $B9
                                      .byte $0D, $BB

- D - I - 0x012C98 10:AC88: A4        .byte $A4
                                      .byte $0D, $7F

- D - I - 0x012C9B 10:AC8B: FB        .byte con_jmp
- D - I - 0x012C9C 10:AC8C: 24 B7     .word off_B724



off_AC8E:
                                      .byte $74, $75, $76, $77

- D - I - 0x012CA2 10:AC92: FA        .byte con_jsr
- D - I - 0x012CA3 10:AC93: BD B7     .word off_B7BD

- D - I - 0x012CA5 10:AC95: FB        .byte con_jmp
- D - I - 0x012CA6 10:AC96: 5F B7     .word off_B75F



off_AC98:
                                      .byte $74, $75, $76, $77

- D - I - 0x012CAC 10:AC9C: FA        .byte con_jsr
- D - I - 0x012CAD 10:AC9D: BD B7     .word off_B7BD

- D - I - 0x012CAF 10:AC9F: FB        .byte con_jmp
- D - I - 0x012CB0 10:ACA0: AF B7     .word off_B7AF



off_ACA2:
                                      .byte $74, $75, $76, $77

- D - I - 0x012CB6 10:ACA6: FA        .byte con_jsr
- D - I - 0x012CB7 10:ACA7: DE B7     .word off_B7DE

- D - I - 0x012CB9 10:ACA9: FB        .byte con_jmp
- D - I - 0x012CBA 10:ACAA: 5F B7     .word off_B75F



off_ACAC:
                                      .byte $74, $75, $76, $77

- D - I - 0x012CC0 10:ACB0: FA        .byte con_jsr
- D - I - 0x012CC1 10:ACB1: DE B7     .word off_B7DE

- D - I - 0x012CC3 10:ACB3: FB        .byte con_jmp
- D - I - 0x012CC4 10:ACB4: AF B7     .word off_B7AF



off_ACB6:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012CCA 10:ACBA: BF        .byte $BF
                                      .byte $3F, $8B

- D - I - 0x012CCD 10:ACBD: A0        .byte $A0
                                      .byte $03, $A4
                                      .byte $04, $A6

- D - I - 0x012CD2 10:ACC2: A1        .byte $A1
                                      .byte $3F, $8F

- D - I - 0x012CD5 10:ACC5: FB        .byte con_jmp
- D - I - 0x012CD6 10:ACC6: FF B7     .word off_B7FF



off_ACC8:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012CDC 10:ACCC: BF        .byte $BF
                                      .byte $3F, $C4

- D - I - 0x012CDF 10:ACCF: A0        .byte $A0
                                      .byte $00, $E0
                                      .byte $04, $E2

- D - I - 0x012CE4 10:ACD4: A1        .byte $A1
                                      .byte $3F, $C6

- D - I - 0x012CE7 10:ACD7: FB        .byte con_jmp
- D - I - 0x012CE8 10:ACD8: FF B7     .word off_B7FF



off_ACDA:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012CEE 10:ACDE: BF        .byte $BF
                                      .byte $3F, $C4

- D - I - 0x012CF1 10:ACE1: A0        .byte $A0
                                      .byte $03, $E1
                                      .byte $04, $E3

- D - I - 0x012CF6 10:ACE6: A1        .byte $A1
                                      .byte $3F, $C6

- D - I - 0x012CF9 10:ACE9: FB        .byte con_jmp
- D - I - 0x012CFA 10:ACEA: FF B7     .word off_B7FF



off_ACEC:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012D00 10:ACF0: BF        .byte $BF
                                      .byte $3A, $93
                                      .byte $3F, $99
                                      .byte $3C, $3C

- D - I - 0x012D07 10:ACF7: A0        .byte $A0
                                      .byte $3C, $9C
                                      .byte $03, $9E

- D - I - 0x012D0C 10:ACFC: A1        .byte $A1
                                      .byte $3A, $97
                                      .byte $3F, $9D
                                      .byte $3C, $3C

- D - I - 0x012D13 10:AD03: FB        .byte con_jmp
- D - I - 0x012D14 10:AD04: 5B B8     .word off_B85B



off_AD06:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012D1A 10:AD0A: BF        .byte $BF
                                      .byte $3A, $93
                                      .byte $3F, $BE
                                      .byte $3C, $3C

- D - I - 0x012D21 10:AD11: A0        .byte $A0
                                      .byte $3C, $9C
                                      .byte $03, $9E

- D - I - 0x012D26 10:AD16: A1        .byte $A1
                                      .byte $3A, $97
                                      .byte $3F, $BF
                                      .byte $3C, $3C

- D - I - 0x012D2D 10:AD1D: FB        .byte con_jmp
- D - I - 0x012D2E 10:AD1E: 5B B8     .word off_B85B



off_AD20:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012D34 10:AD24: BF        .byte $BF
                                      .byte $3A, $93
                                      .byte $3F, $BE
                                      .byte $3C, $3C

- D - I - 0x012D3B 10:AD2B: A0        .byte $A0
                                      .byte $3C, $9C
                                      .byte $03, $E9
                                      .byte $04, $EB

- D - I - 0x012D42 10:AD32: A1        .byte $A1
                                      .byte $3A, $97
                                      .byte $3F, $BF
                                      .byte $3C, $3C

- D - I - 0x012D49 10:AD39: FB        .byte con_jmp
- D - I - 0x012D4A 10:AD3A: 5B B8     .word off_B85B



off_AD3C:
                                      .byte $78, $79, $7A, $7B

- - - - - 0x012D50 10:AD40: BE        .byte $BE
                                      .byte $37, $CA
                                      .byte $3B, $C5
                                      .byte $3F, $C7
                                      .byte $03, $CD
                                      .byte $07, $CF

- - - - - 0x012D5B 10:AD4B: BF        .byte $BF
                                      .byte $33, $C8
                                      .byte $37, $01
                                      .byte $38, $D0
                                      .byte $3F, $D2
                                      .byte $3C, $3C
                                      .byte $00, $D8
                                      .byte $04, $DA
                                      .byte $09, $A9

- - - - - 0x012D6C 10:AD5C: A0        .byte $A0
                                      .byte $33, $C9
                                      .byte $34, $CB
                                      .byte $38, $D1
                                      .byte $3C, $D3
                                      .byte $03, $D9
                                      .byte $04, $DB
                                      .byte $0A, $AC

- - - - - 0x012D7B 10:AD6B: A1        .byte $A1
                                      .byte $33, $CC
                                      .byte $37, $01
                                      .byte $38, $D4
                                      .byte $3F, $D6
                                      .byte $3C, $3C
                                      .byte $00, $DC
                                      .byte $04, $DE
                                      .byte $0A, $AD

- - - - - 0x012D8C 10:AD7C: A2        .byte $A2
                                      .byte $37, $CE
                                      .byte $3B, $D5
                                      .byte $3F, $D7
                                      .byte $03, $D7
                                      .byte $05, $DD

- - - - - 0x012D97 10:AD87: FB        .byte con_jmp
- - - - - 0x012D98 10:AD88: 39 B8     .word off_B839



off_AD8A:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012D9E 10:AD8E: BE        .byte $BE
                                      .byte $3B, $68
                                      .byte $3F, $6A

- D - I - 0x012DA3 10:AD93: BF        .byte $BF
                                      .byte $38, $69
                                      .byte $3C, $6B
                                      .byte $03, $71

- D - I - 0x012DAA 10:AD9A: A0        .byte $A0
                                      .byte $3B, $6C
                                      .byte $3F, $6E

- D - I - 0x012DAF 10:AD9F: FB        .byte con_jmp
- D - I - 0x012DB0 10:ADA0: 8D B8     .word off_B88D



off_ADA2:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012DB6 10:ADA6: BE        .byte $BE
                                      .byte $3B, $4E
                                      .byte $3F, $6A

- D - I - 0x012DBB 10:ADAB: BF        .byte $BF
                                      .byte $38, $44
                                      .byte $3C, $6B
                                      .byte $00, $6F

- D - I - 0x012DC2 10:ADB2: A0        .byte $A0
                                      .byte $3B, $4F
                                      .byte $3F, $6E

- D - I - 0x012DC7 10:ADB7: FB        .byte con_jmp
- D - I - 0x012DC8 10:ADB8: 8D B8     .word off_B88D



off_ADBA:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012DCE 10:ADBE: BE        .byte $BE
                                      .byte $3B, $0E
                                      .byte $3B, $4E
                                      .byte $3F, $26
                                      .byte $3F, $6A

- D - I - 0x012DD7 10:ADC7: BF        .byte $BF
                                      .byte $3B, $0F
                                      .byte $38, $44
                                      .byte $3F, $27
                                      .byte $3C, $6B
                                      .byte $00, $6F

- D - I - 0x012DE2 10:ADD2: A0        .byte $A0
                                      .byte $3B, $25
                                      .byte $3B, $4F
                                      .byte $3F, $13
                                      .byte $3F, $6E

- D - I - 0x012DEB 10:ADDB: FB        .byte con_jmp
- D - I - 0x012DEC 10:ADDC: 8D B8     .word off_B88D



off_ADDE:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x012DF2 10:ADE2: BF        .byte $BF
                                      .byte $3E, $60

- D - I - 0x012DF5 10:ADE5: A0        .byte $A0
                                      .byte $3E, $61
                                      .byte $06, $2B
                                      .byte $07, $02
                                      .byte $0A, $1A

- D - I - 0x012DFE 10:ADEE: A1        .byte $A1
                                      .byte $3E, $64

- D - I - 0x012E01 10:ADF1: FA        .byte con_jsr
- D - I - 0x012E02 10:ADF2: A0 B9     .word off_B9A0

- D - I - 0x012E04 10:ADF4: FB        .byte con_jmp
- D - I - 0x012E05 10:ADF5: F4 B9     .word off_B9F4



off_ADF7:
                                      .byte $74, $75, $76, $77

- D - I - 0x012E0B 10:ADFB: BD        .byte $BD
                                      .byte $05, $50
                                      .byte $08, $52
                                      .byte $0C, $58

- D - I - 0x012E12 10:AE02: BE        .byte $BE
                                      .byte $3A, $48
                                      .byte $03, $60
                                      .byte $05, $62
                                      .byte $08, $68
                                      .byte $0C, $6A

- D - I - 0x012E1D 10:AE0D: BF        .byte $BF
                                      .byte $36, $29
                                      .byte $3A, $49
                                      .byte $3F, $4B
                                      .byte $00, $61
                                      .byte $07, $63
                                      .byte $0B, $01
                                      .byte $0C, $6B

- D - I - 0x012E2C 10:AE1C: A0        .byte $A0
                                      .byte $36, $2A
                                      .byte $3A, $4C
                                      .byte $3F, $4E
                                      .byte $03, $64
                                      .byte $07, $66
                                      .byte $0B, $6C
                                      .byte $0C, $6E

- D - I - 0x012E3B 10:AE2B: A1        .byte $A1
                                      .byte $36, $2B
                                      .byte $3B, $4D
                                      .byte $3C, $4F
                                      .byte $01, $65
                                      .byte $05, $67
                                      .byte $09, $01
                                      .byte $0C, $6F

- D - I - 0x012E4A 10:AE3A: A2        .byte $A2
                                      .byte $01, $69
                                      .byte $05, $51
                                      .byte $0B, $53
                                      .byte $0C, $59

- D - I - 0x012E53 10:AE43: A3        .byte $A3
                                      .byte $05, $54
                                      .byte $09, $56
                                      .byte $0F, $5C

- D - I - 0x012E5A 10:AE4A: FF        .byte con_FF



off_AE4B:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012E5F 10:AE4F: BE        .byte $BE
                                      .byte $3A, $08
                                      .byte $3F, $18
                                      .byte $02, $1A
                                      .byte $06, $30

- D - I - 0x012E68 10:AE58: BF        .byte $BF
                                      .byte $3B, $09
                                      .byte $3F, $19
                                      .byte $03, $1B

- D - I - 0x012E6F 10:AE5F: A0        .byte $A0
                                      .byte $3A, $0C
                                      .byte $3F, $0A
                                      .byte $00, $20

- D - I - 0x012E76 10:AE66: A1        .byte $A1
                                      .byte $3F, $01
                                      .byte $02, $01
                                      .byte $06, $23

- D - I - 0x012E7D 10:AE6D: A2        .byte $A2
                                      .byte $3F, $0B
                                      .byte $02, $24

- D - I - 0x012E82 10:AE72: FB        .byte con_jmp
- D - I - 0x012E83 10:AE73: DC B8     .word off_B8DC



off_AE75:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012E89 10:AE79: BE        .byte $BE
                                      .byte $3B, $15
                                      .byte $3F, $1D
                                      .byte $03, $35

- D - I - 0x012E90 10:AE80: BF        .byte $BF
                                      .byte $3B, $16
                                      .byte $3F, $1E
                                      .byte $03, $1C

- D - I - 0x012E97 10:AE87: A0        .byte $A0
                                      .byte $3B, $17
                                      .byte $3F, $1F
                                      .byte $00, $40

- D - I - 0x012E9E 10:AE8E: A1        .byte $A1
                                      .byte $3C, $34
                                      .byte $00, $41

- D - I - 0x012EA3 10:AE93: FB        .byte con_jmp
- D - I - 0x012EA4 10:AE94: DC B8     .word off_B8DC



off_AE96:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012EAA 10:AE9A: BD        .byte $BD
                                      .byte $36, $55
                                      .byte $3A, $52

- D - I - 0x012EAF 10:AE9F: BE        .byte $BE
                                      .byte $32, $45
                                      .byte $36, $42
                                      .byte $3B, $53
                                      .byte $3F, $49
                                      .byte $03, $59

- D - I - 0x012EBA 10:AEAA: BF        .byte $BF
                                      .byte $32, $50
                                      .byte $36, $43
                                      .byte $3B, $56
                                      .byte $3F, $4C
                                      .byte $03, $5C
                                      .byte $04, $4B
                                      .byte $05, $33

- D - I - 0x012EC9 10:AEB9: A0        .byte $A0
                                      .byte $32, $51
                                      .byte $36, $46
                                      .byte $3B, $57
                                      .byte $3F, $4D
                                      .byte $00, $5D
                                      .byte $04, $3F
                                      .byte $05, $28

- D - I - 0x012ED8 10:AEC8: A1        .byte $A1
                                      .byte $32, $54
                                      .byte $37, $47
                                      .byte $38, $48
                                      .byte $3C, $58
                                      .byte $00, $4A

- D - I - 0x012EE3 10:AED3: FB        .byte con_jmp
- D - I - 0x012EE4 10:AED4: FF B8     .word off_B8FF



off_AED6:
                                      .byte $70, $71, $66, $67

- D - I - 0x012EEA 10:AEDA: BD        .byte $BD
                                      .byte $14, $DE

- D - I - 0x012EED 10:AEDD: BE        .byte $BE
                                      .byte $0C, $DA
                                      .byte $10, $DC
                                      .byte $14, $DF

- D - I - 0x012EF4 10:AEE4: BF        .byte $BF
                                      .byte $05, $CA
                                      .byte $04, $BF
                                      .byte $08, $D8
                                      .byte $0C, $DB
                                      .byte $10, $DD

- D - I - 0x012EFF 10:AEEF: A0        .byte $A0
                                      .byte $32, $C0
                                      .byte $36, $C2
                                      .byte $01, $D0
                                      .byte $05, $D2
                                      .byte $08, $D9

- D - I - 0x012F0A 10:AEFA: A1        .byte $A1
                                      .byte $32, $C1
                                      .byte $37, $C3
                                      .byte $3B, $C9
                                      .byte $3D, $CB
                                      .byte $01, $D1
                                      .byte $05, $D3

- D - I - 0x012F17 10:AF07: A2        .byte $A2
                                      .byte $31, $C4
                                      .byte $35, $C6
                                      .byte $39, $CC
                                      .byte $38, $BF
                                      .byte $3C, $CE
                                      .byte $00, $D4
                                      .byte $04, $D6

- D - I - 0x012F26 10:AF16: A3        .byte $A3
                                      .byte $31, $C5
                                      .byte $35, $C7
                                      .byte $39, $CD
                                      .byte $3D, $CF
                                      .byte $01, $D5
                                      .byte $05, $D7

- D - I - 0x012F33 10:AF23: FF        .byte con_FF



off_AF24:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012F38 10:AF28: BF        .byte $BF
                                      .byte $3F, $8B

- D - I - 0x012F3B 10:AF2B: A0        .byte $A0
                                      .byte $00, $E0
                                      .byte $04, $E2

- D - I - 0x012F40 10:AF30: A1        .byte $A1
                                      .byte $3F, $8F

- D - I - 0x012F43 10:AF33: FB        .byte con_jmp
- D - I - 0x012F44 10:AF34: FF B7     .word off_B7FF



off_AF36:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x012F4A 10:AF3A: BE        .byte $BE
                                      .byte $37, $CA
                                      .byte $3B, $C5
                                      .byte $3F, $C7
                                      .byte $03, $CD
                                      .byte $07, $CF

- D - I - 0x012F55 10:AF45: BF        .byte $BF
                                      .byte $33, $C8
                                      .byte $37, $01
                                      .byte $38, $D0
                                      .byte $3F, $D2
                                      .byte $3C, $3C
                                      .byte $00, $D8
                                      .byte $04, $DA
                                      .byte $09, $A9

- D - I - 0x012F66 10:AF56: A0        .byte $A0
                                      .byte $33, $C9
                                      .byte $34, $CB
                                      .byte $38, $D1
                                      .byte $3C, $D3
                                      .byte $00, $EA
                                      .byte $04, $DB
                                      .byte $0A, $AC

- D - I - 0x012F75 10:AF65: A1        .byte $A1
                                      .byte $33, $CC
                                      .byte $37, $01
                                      .byte $38, $D4
                                      .byte $3F, $D6
                                      .byte $3C, $3C
                                      .byte $00, $DC
                                      .byte $04, $DE
                                      .byte $0A, $AD

- D - I - 0x012F86 10:AF76: A2        .byte $A2
                                      .byte $37, $CE
                                      .byte $3B, $D5
                                      .byte $3F, $D7
                                      .byte $03, $D7
                                      .byte $05, $DD

- D - I - 0x012F91 10:AF81: FB        .byte con_jmp
- D - I - 0x012F92 10:AF82: 39 B8     .word off_B839



off_AF84:
                                      .byte $74, $75, $76, $77

- D - I - 0x012F98 10:AF88: BE        .byte $BE
                                      .byte $3A, $88
                                      .byte $3C, $8A
                                      .byte $00, $A0
                                      .byte $04, $5A

- D - I - 0x012FA1 10:AF91: BF        .byte $BF
                                      .byte $3A, $89
                                      .byte $3C, $8B
                                      .byte $00, $A1
                                      .byte $04, $15
                                      .byte $08, $FE

- D - I - 0x012FAC 10:AF9C: A0        .byte $A0
                                      .byte $3A, $8C
                                      .byte $3C, $8E
                                      .byte $00, $A4
                                      .byte $04, $81

- D - I - 0x012FB5 10:AFA5: A1        .byte $A1
                                      .byte $3A, $8D

- D - I - 0x012FB8 10:AFA8: FB        .byte con_jmp
- D - I - 0x012FB9 10:AFA9: 31 BA     .word off_BA31



off_AFAB:
                                      .byte $74, $75, $76, $77

- D - I - 0x012FBF 10:AFAF: BE        .byte $BE
                                      .byte $3A, $88
                                      .byte $3C, $8A
                                      .byte $00, $A0
                                      .byte $04, $5A

- D - I - 0x012FC8 10:AFB8: BF        .byte $BF
                                      .byte $3A, $94
                                      .byte $3C, $9E
                                      .byte $00, $97
                                      .byte $04, $15
                                      .byte $08, $FE

- D - I - 0x012FD3 10:AFC3: A0        .byte $A0
                                      .byte $3A, $95
                                      .byte $3C, $9F
                                      .byte $00, $9D
                                      .byte $04, $81

- D - I - 0x012FDC 10:AFCC: A1        .byte $A1
                                      .byte $3A, $8D

- D - I - 0x012FDF 10:AFCF: FB        .byte con_jmp
- D - I - 0x012FE0 10:AFD0: 31 BA     .word off_BA31



off_AFD2:
                                      .byte $70, $71, $72, $73

- D - I - 0x012FE6 10:AFD6: BF        .byte $BF
                                      .byte $3C, $94
                                      .byte $02, $96

- D - I - 0x012FEB 10:AFDB: A0        .byte $A0
                                      .byte $3C, $98
                                      .byte $07, $A6

- D - I - 0x012FF0 10:AFE0: A1        .byte $A1
                                      .byte $3C, $95
                                      .byte $02, $97

- D - I - 0x012FF5 10:AFE5: FB        .byte con_jmp
- D - I - 0x012FF6 10:AFE6: 9A B6     .word off_B69A



off_AFE8:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x012FFC 10:AFEC: BF        .byte $BF
                                      .byte $3E, $5A

- D - I - 0x012FFF 10:AFEF: A0        .byte $A0
                                      .byte $3E, $5B
                                      .byte $06, $18
                                      .byte $0A, $1A

- D - I - 0x013006 10:AFF6: A1        .byte $A1
                                      .byte $3E, $5E

- D - I - 0x013009 10:AFF9: FA        .byte con_jsr
- D - I - 0x01300A 10:AFFA: A0 B9     .word off_B9A0

- D - I - 0x01300C 10:AFFC: FB        .byte con_jmp
- D - I - 0x01300D 10:AFFD: F4 B9     .word off_B9F4



off_AFFF:
                                      .byte $74, $75, $76, $77

- D - I - 0x013013 10:B003: BE        .byte $BE
                                      .byte $38, $D4

- D - I - 0x013016 10:B006: BF        .byte $BF
                                      .byte $00, $C1
                                      .byte $3C, $D6
                                      .byte $03, $D7

- D - I - 0x01301D 10:B00D: A0        .byte $A0
                                      .byte $38, $D5

- D - I - 0x013020 10:B010: FA        .byte con_jsr
- D - I - 0x013021 10:B011: BD B7     .word off_B7BD

- D - I - 0x013023 10:B013: FB        .byte con_jmp
- D - I - 0x013024 10:B014: 6A B7     .word off_B76A



off_B016:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x01302A 10:B01A: BE        .byte $BE
                                      .byte $3A, $08
                                      .byte $3F, $18
                                      .byte $02, $1A
                                      .byte $06, $30

- D - I - 0x013033 10:B023: BF        .byte $BF
                                      .byte $3B, $09
                                      .byte $3F, $19
                                      .byte $00, $E8

- D - I - 0x01303A 10:B02A: A0        .byte $A0
                                      .byte $3A, $0C
                                      .byte $3F, $0A
                                      .byte $00, $20

- D - I - 0x013041 10:B031: A1        .byte $A1
                                      .byte $3F, $01
                                      .byte $03, $01
                                      .byte $06, $23

- D - I - 0x013048 10:B038: A2        .byte $A2
                                      .byte $3F, $0B
                                      .byte $02, $24

- D - I - 0x01304D 10:B03D: FB        .byte con_jmp
- D - I - 0x01304E 10:B03E: DC B8     .word off_B8DC



off_B040:
                                      .byte $70, $71, $72, $73

- D - I - 0x013054 10:B044: BA        .byte $BA
                                      .byte $3F, $32
                                      .byte $03, $38
                                      .byte $07, $3A

- D - I - 0x01305B 10:B04B: BB        .byte $BB
                                      .byte $3F, $33
                                      .byte $03, $39

- D - I - 0x013060 10:B050: A0        .byte $A0
                                      .byte $3B, $31
                                      .byte $3F, $02
                                      .byte $03, $3C
                                      .byte $07, $3B

- D - I - 0x013069 10:B059: A1        .byte $A1
                                      .byte $3B, $34
                                      .byte $3F, $39

- D - I - 0x01306E 10:B05E: FF        .byte con_FF



off_B05F:
                                      .byte $70, $71, $72, $73

- D - I - 0x013073 10:B063: BB        .byte $BB
                                      .byte $3F, $35
                                      .byte $03, $37
                                      .byte $0B, $3E

- D - I - 0x01307A 10:B06A: BC        .byte $BC
                                      .byte $3F, $60
                                      .byte $03, $02
                                      .byte $07, $02
                                      .byte $0B, $3F

- D - I - 0x013083 10:B073: BD        .byte $BD
                                      .byte $03, $62
                                      .byte $07, $02
                                      .byte $0B, $6A

- D - I - 0x01308A 10:B07A: A1        .byte $A1
                                      .byte $03, $79
                                      .byte $07, $7B

- D - I - 0x01308F 10:B07F: A2        .byte $A2
                                      .byte $3B, $61
                                      .byte $3F, $02
                                      .byte $03, $02
                                      .byte $07, $02
                                      .byte $0B, $6B

- D - I - 0x01309A 10:B08A: A3        .byte $A3
                                      .byte $3B, $64
                                      .byte $3F, $63
                                      .byte $03, $02
                                      .byte $07, $3D
                                      .byte $0B, $6E

- D - I - 0x0130A5 10:B095: FF        .byte con_FF



off_B096:
                                      .byte $70, $71, $72, $73

- D - I - 0x0130AA 10:B09A: BE        .byte $BE
                                      .byte $3F, $78
                                      .byte $03, $7A
                                      .byte $07, $36

- D - I - 0x0130B1 10:B0A1: A3        .byte $A3
                                      .byte $3B, $68
                                      .byte $03, $66
                                      .byte $07, $6C
                                      .byte $0B, $6F

- D - I - 0x0130BA 10:B0AA: A4        .byte $A4
                                      .byte $3B, $69
                                      .byte $3F, $65
                                      .byte $03, $67
                                      .byte $07, $6D

- D - I - 0x0130C3 10:B0B3: FF        .byte con_FF



off_B0B4:
                                      .byte $74, $75, $76, $77

- D - I - 0x0130C8 10:B0B8: BE        .byte $BE
                                      .byte $38, $D4

- D - I - 0x0130CB 10:B0BB: BF        .byte $BF
                                      .byte $3C, $D6
                                      .byte $00, $C1

- D - I - 0x0130D0 10:B0C0: A0        .byte $A0
                                      .byte $38, $D5

- D - I - 0x0130D3 10:B0C3: FA        .byte con_jsr
- D - I - 0x0130D4 10:B0C4: DE B7     .word off_B7DE

- D - I - 0x0130D6 10:B0C6: FB        .byte con_jmp
- D - I - 0x0130D7 10:B0C7: AF B7     .word off_B7AF



off_B0C9:
                                      .byte $74, $75, $76, $77

- D - I - 0x0130DD 10:B0CD: BE        .byte $BE
                                      .byte $3A, $85
                                      .byte $3C, $92
                                      .byte $00, $98
                                      .byte $04, $5A

- D - I - 0x0130E6 10:B0D6: BF        .byte $BF
                                      .byte $3A, $89
                                      .byte $3C, $93
                                      .byte $00, $99
                                      .byte $04, $15
                                      .byte $08, $FE

- D - I - 0x0130F1 10:B0E1: A0        .byte $A0
                                      .byte $3A, $90
                                      .byte $3C, $96
                                      .byte $00, $9C
                                      .byte $04, $81

- D - I - 0x0130FA 10:B0EA: A1        .byte $A1
                                      .byte $3A, $91

- D - I - 0x0130FD 10:B0ED: FB        .byte con_jmp
- D - I - 0x0130FE 10:B0EE: 31 BA     .word off_BA31



off_B0F0:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x013104 10:B0F4: BE        .byte $BE
                                      .byte $3A, $1F

- D - I - 0x013107 10:B0F7: BF        .byte $BF
                                      .byte $3C, $35
                                      .byte $03, $34
                                      .byte $04, $0C

- D - I - 0x01310E 10:B0FE: A0        .byte $A0
                                      .byte $3A, $4A

- D - I - 0x013111 10:B101: FB        .byte con_jmp
- D - I - 0x013112 10:B102: 83 B5     .word off_B583



off_B104:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x013118 10:B108: BF        .byte $BF
                                      .byte $3E, $60

- D - I - 0x01311B 10:B10B: A0        .byte $A0
                                      .byte $3E, $61
                                      .byte $06, $2B
                                      .byte $07, $02
                                      .byte $0A, $1A

- D - I - 0x013124 10:B114: A1        .byte $A1
                                      .byte $3E, $64

- D - I - 0x013127 10:B117: FA        .byte con_jsr
- D - I - 0x013128 10:B118: A0 B9     .word off_B9A0

- D - I - 0x01312A 10:B11A: FB        .byte con_jmp
- D - I - 0x01312B 10:B11B: 6C BA     .word off_BA6C



off_B11D:
                                      .byte $60, $61, $62, $63

- D - I - 0x013131 10:B121: BB        .byte $BB
                                      .byte $35, $4C
                                      .byte $39, $50

- D - I - 0x013136 10:B126: BC        .byte $BC
                                      .byte $2F, $44
                                      .byte $2D, $45
                                      .byte $33, $48
                                      .byte $31, $4A
                                      .byte $35, $4D
                                      .byte $39, $51

- D - I - 0x013143 10:B133: BD        .byte $BD
                                      .byte $2F, $47
                                      .byte $2D, $46
                                      .byte $33, $49
                                      .byte $31, $4B
                                      .byte $35, $4E
                                      .byte $3B, $52
                                      .byte $3F, $53
                                      .byte $03, $5F

- D - I - 0x013154 10:B144: BE        .byte $BE
                                      .byte $3F, $54
                                      .byte $03, $60
                                      .byte $06, $67
                                      .byte $08, $6D

- D - I - 0x01315D 10:B14D: BF        .byte $BF
                                      .byte $3F, $55
                                      .byte $00, $61
                                      .byte $04, $68
                                      .byte $08, $6E
                                      .byte $0C, $3B
                                      .byte $10, $3E
                                      .byte $17, $42

- D - I - 0x01316C 10:B15C: A0        .byte $A0
                                      .byte $3F, $56
                                      .byte $03, $62
                                      .byte $07, $69
                                      .byte $0A, $6F
                                      .byte $0C, $02
                                      .byte $10, $3F
                                      .byte $17, $43

- D - I - 0x01317B 10:B16B: A1        .byte $A1
                                      .byte $3F, $57
                                      .byte $03, $63
                                      .byte $06, $6A
                                      .byte $0A, $38
                                      .byte $0C, $02
                                      .byte $10, $40
                                      .byte $17, $70

- D - I - 0x01318A 10:B17A: A2        .byte $A2
                                      .byte $00, $64
                                      .byte $04, $6B
                                      .byte $08, $39
                                      .byte $0C, $3D
                                      .byte $10, $41
                                      .byte $17, $71

- D - I - 0x013197 10:B187: A3        .byte $A3
                                      .byte $3F, $58
                                      .byte $03, $65
                                      .byte $06, $6C
                                      .byte $08, $3A

- D - I - 0x0131A0 10:B190: A4        .byte $A4
                                      .byte $37, $5D
                                      .byte $3B, $5B
                                      .byte $3F, $59
                                      .byte $03, $66

- D - I - 0x0131A9 10:B199: A5        .byte $A5
                                      .byte $37, $5E
                                      .byte $3B, $5C
                                      .byte $3F, $5A

- D - I - 0x0131B0 10:B1A0: FF        .byte con_FF



off_B1D0:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0131E4 10:B1D4: BF        .byte $BF
                                      .byte $3E, $60

- D - I - 0x0131E7 10:B1D7: A0        .byte $A0
                                      .byte $3E, $61
                                      .byte $06, $18
                                      .byte $0A, $1A

- D - I - 0x0131EE 10:B1DE: A1        .byte $A1
                                      .byte $3E, $64

- D - I - 0x0131F1 10:B1E1: FA        .byte con_jsr
- D - I - 0x0131F2 10:B1E2: A0 B9     .word off_B9A0

- D - I - 0x0131F4 10:B1E4: FB        .byte con_jmp
- D - I - 0x0131F5 10:B1E5: F4 B9     .word off_B9F4



off_B1E7:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0131FB 10:B1EB: BF        .byte $BF
                                      .byte $3E, $60

- D - I - 0x0131FE 10:B1EE: A0        .byte $A0
                                      .byte $3E, $61
                                      .byte $06, $49
                                      .byte $07, $02
                                      .byte $0A, $1A

- D - I - 0x013207 10:B1F7: A1        .byte $A1
                                      .byte $3E, $64

- D - I - 0x01320A 10:B1FA: FA        .byte con_jsr
- D - I - 0x01320B 10:B1FB: A0 B9     .word off_B9A0

- D - I - 0x01320D 10:B1FD: FB        .byte con_jmp
- D - I - 0x01320E 10:B1FE: F4 B9     .word off_B9F4



off_B200:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x013214 10:B204: BF        .byte $BF
                                      .byte $3E, $5A

- D - I - 0x013217 10:B207: A0        .byte $A0
                                      .byte $3E, $5B
                                      .byte $06, $69
                                      .byte $07, $02
                                      .byte $0A, $6B

- D - I - 0x013220 10:B210: A1        .byte $A1
                                      .byte $3E, $5E

- D - I - 0x013223 10:B213: FA        .byte con_jsr
- D - I - 0x013224 10:B214: A0 B9     .word off_B9A0

- D - I - 0x013226 10:B216: FB        .byte con_jmp
- D - I - 0x013227 10:B217: F4 B9     .word off_B9F4



off_B219:
                                      .byte $74, $75, $76, $77

- D - I - 0x01322D 10:B21D: BE        .byte $BE
                                      .byte $38, $B8

- D - I - 0x013230 10:B220: BF        .byte $BF
                                      .byte $3C, $BB
                                      .byte $03, $D7

- D - I - 0x013235 10:B225: A0        .byte $A0
                                      .byte $38, $BC

- D - I - 0x013238 10:B228: FA        .byte con_jsr
- D - I - 0x013239 10:B229: BD B7     .word off_B7BD

- D - I - 0x01323B 10:B22B: FB        .byte con_jmp
- D - I - 0x01323C 10:B22C: 6A B7     .word off_B76A



off_B22E:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x013242 10:B232: BE        .byte $BE
                                      .byte $36, $54
                                      .byte $3A, $50
                                      .byte $3E, $51

- D - I - 0x013249 10:B239: BF        .byte $BF
                                      .byte $36, $55
                                      .byte $3A, $01
                                      .byte $3E, $78
                                      .byte $3F, $02
                                      .byte $02, $53
                                      .byte $03, $5D

- D - I - 0x013256 10:B246: A0        .byte $A0
                                      .byte $36, $01
                                      .byte $3A, $01
                                      .byte $3E, $01
                                      .byte $02, $56
                                      .byte $06, $18

- D - I - 0x013261 10:B251: A1        .byte $A1
                                      .byte $36, $01
                                      .byte $3A, $01
                                      .byte $3E, $01
                                      .byte $02, $57

- D - I - 0x01326A 10:B25A: A2        .byte $A2
                                      .byte $36, $35
                                      .byte $3A, $37
                                      .byte $3E, $01

- D - I - 0x013271 10:B261: FB        .byte con_jmp
- D - I - 0x013272 10:B262: D2 B9     .word off_B9D2



off_B264:
                                      .byte $70, $71, $72, $73

- D - I - 0x013278 10:B268: BF        .byte $BF
                                      .byte $3C, $94
                                      .byte $02, $96

- D - I - 0x01327D 10:B26D: A0        .byte $A0
                                      .byte $3C, $C8
                                      .byte $07, $A6

- D - I - 0x013282 10:B272: A1        .byte $A1
                                      .byte $3C, $95
                                      .byte $02, $97

- D - I - 0x013287 10:B277: FB        .byte con_jmp
- D - I - 0x013288 10:B278: F6 B6     .word off_B6F6



off_B27A:
                                      .byte $70, $71, $72, $73

- D - I - 0x01328E 10:B27E: BF        .byte $BF
                                      .byte $3F, $9E
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x013295 10:B285: A0        .byte $A0
                                      .byte $3C, $B6
                                      .byte $04, $A2

- D - I - 0x01329A 10:B28A: A1        .byte $A1
                                      .byte $3F, $9F
                                      .byte $03, $A5

- D - I - 0x01329F 10:B28F: FB        .byte con_jmp
- D - I - 0x0132A0 10:B290: F6 B6     .word off_B6F6



off_B292:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0132A6 10:B296: BF        .byte $BF
                                      .byte $3E, $05

- D - I - 0x0132A9 10:B299: A0        .byte $A0
                                      .byte $3E, $10
                                      .byte $06, $18

- D - I - 0x0132AE 10:B29E: A1        .byte $A1
                                      .byte $3E, $11
                                      .byte $02, $13
                                      .byte $03, $31

- D - I - 0x0132B5 10:B2A5: FB        .byte con_jmp
- D - I - 0x0132B6 10:B2A6: 47 B9     .word off_B947



off_B2A8:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0132BC 10:B2AC: BF        .byte $BF
                                      .byte $3E, $29

- D - I - 0x0132BF 10:B2AF: A0        .byte $A0
                                      .byte $3E, $2C
                                      .byte $06, $2B
                                      .byte $07, $02

- D - I - 0x0132C6 10:B2B6: A1        .byte $A1
                                      .byte $3E, $2D
                                      .byte $02, $2E
                                      .byte $03, $31

- D - I - 0x0132CD 10:B2BD: FB        .byte con_jmp
- D - I - 0x0132CE 10:B2BE: 47 B9     .word off_B947



off_B2C0:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0132D4 10:B2C4: A0        .byte $A0
                                      .byte $06, $18

- D - I - 0x0132D7 10:B2C7: FA        .byte con_jsr
- D - I - 0x0132D8 10:B2C8: A0 B9     .word off_B9A0

- D - I - 0x0132DA 10:B2CA: FB        .byte con_jmp
- D - I - 0x0132DB 10:B2CB: AB B9     .word off_B9AB



off_B2CD:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0132E1 10:B2D1: A0        .byte $A0
                                      .byte $06, $49

- D - I - 0x0132E4 10:B2D4: FA        .byte con_jsr
- D - I - 0x0132E5 10:B2D5: A0 B9     .word off_B9A0

- D - I - 0x0132E7 10:B2D7: FB        .byte con_jmp
- D - I - 0x0132E8 10:B2D8: AB B9     .word off_B9AB



off_B2DA:
                                      .byte $68, $69, $6A, $6B

- D - I - 0x0132EE 10:B2DE: BE        .byte $BE
                                      .byte $36, $54
                                      .byte $3A, $50
                                      .byte $3E, $51

- D - I - 0x0132F5 10:B2E5: BF        .byte $BF
                                      .byte $36, $55
                                      .byte $3A, $01
                                      .byte $3E, $78
                                      .byte $3F, $02
                                      .byte $02, $53
                                      .byte $03, $5D

- D - I - 0x013302 10:B2F2: A0        .byte $A0
                                      .byte $36, $01
                                      .byte $3A, $01
                                      .byte $3E, $01
                                      .byte $02, $56
                                      .byte $06, $49

- D - I - 0x01330D 10:B2FD: A1        .byte $A1
                                      .byte $36, $01
                                      .byte $3A, $01
                                      .byte $3E, $01
                                      .byte $02, $57

- D - I - 0x013316 10:B306: A2        .byte $A2
                                      .byte $36, $35
                                      .byte $3A, $37
                                      .byte $3E, $01

- D - I - 0x01331D 10:B30D: FB        .byte con_jmp
- D - I - 0x01331E 10:B30E: D2 B9     .word off_B9D2



off_B310:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x013324 10:B314: BE        .byte $BE
                                      .byte $3B, $68
                                      .byte $3F, $6A

- D - I - 0x013329 10:B319: BF        .byte $BF
                                      .byte $38, $69
                                      .byte $3C, $6B
                                      .byte $00, $6F

- D - I - 0x013330 10:B320: A0        .byte $A0
                                      .byte $3B, $6C
                                      .byte $3F, $6E

- D - I - 0x013335 10:B325: FB        .byte con_jmp
- D - I - 0x013336 10:B326: 8D B8     .word off_B88D



off_B340:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x013354 10:B344: BE        .byte $BE
                                      .byte $3B, $0E
                                      .byte $3B, $4E
                                      .byte $3F, $26
                                      .byte $3F, $6A

- D - I - 0x01335D 10:B34D: BF        .byte $BF
                                      .byte $3B, $0F
                                      .byte $38, $44
                                      .byte $3F, $27
                                      .byte $3C, $6B
                                      .byte $03, $71

- D - I - 0x013368 10:B358: A0        .byte $A0
                                      .byte $3B, $25
                                      .byte $3B, $4F
                                      .byte $3F, $13
                                      .byte $3F, $6E

- D - I - 0x013371 10:B361: FB        .byte con_jmp
- D - I - 0x013372 10:B362: 8D B8     .word off_B88D



off_B364:
                                      .byte $70, $71, $66, $67

- D - I - 0x013378 10:B368: BE        .byte $BE
                                      .byte $3F, $06

- D - I - 0x01337B 10:B36B: BF        .byte $BF
                                      .byte $3C, $07
                                      .byte $00, $0D
                                      .byte $04, $0A

- D - I - 0x013382 10:B372: A0        .byte $A0
                                      .byte $3F, $12

- D - I - 0x013385 10:B375: FB        .byte con_jmp
- D - I - 0x013386 10:B376: D4 B4     .word off_B4D4



off_B378:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x01338C 10:B37C: BE        .byte $BE
                                      .byte $3B, $15
                                      .byte $3F, $1D
                                      .byte $03, $35

- D - I - 0x013393 10:B383: BF        .byte $BF
                                      .byte $3B, $16
                                      .byte $3F, $1E
                                      .byte $00, $E8

- D - I - 0x01339A 10:B38A: A0        .byte $A0
                                      .byte $3B, $17
                                      .byte $3F, $1F
                                      .byte $00, $40

- D - I - 0x0133A1 10:B391: A1        .byte $A1
                                      .byte $3C, $34
                                      .byte $00, $41

- D - I - 0x0133A6 10:B396: FB        .byte con_jmp
- D - I - 0x0133A7 10:B397: DC B8     .word off_B8DC



off_B399:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x0133AD 10:B39D: BD        .byte $BD
                                      .byte $36, $55
                                      .byte $3A, $52

- D - I - 0x0133B2 10:B3A2: BE        .byte $BE
                                      .byte $32, $45
                                      .byte $36, $42
                                      .byte $3B, $53
                                      .byte $3F, $49
                                      .byte $03, $59

- D - I - 0x0133BD 10:B3AD: BF        .byte $BF
                                      .byte $32, $50
                                      .byte $36, $43
                                      .byte $3B, $56
                                      .byte $3F, $4C
                                      .byte $00, $FD
                                      .byte $04, $4B
                                      .byte $05, $33

- D - I - 0x0133CC 10:B3BC: A0        .byte $A0
                                      .byte $32, $51
                                      .byte $36, $46
                                      .byte $3B, $57
                                      .byte $3F, $4D
                                      .byte $00, $5D
                                      .byte $04, $3F
                                      .byte $05, $28

- D - I - 0x0133DB 10:B3CB: A1        .byte $A1
                                      .byte $32, $54
                                      .byte $37, $47
                                      .byte $38, $48
                                      .byte $3C, $58
                                      .byte $00, $4A

- D - I - 0x0133E6 10:B3D6: FB        .byte con_jmp
- D - I - 0x0133E7 10:B3D7: FF B8     .word off_B8FF



off_B3D9:
                                      .byte $70, $71, $72, $73

- D - I - 0x0133ED 10:B3DD: BF        .byte $BF
                                      .byte $3F, $8B
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x0133F4 10:B3E4: A0        .byte $A0
                                      .byte $3C, $B6
                                      .byte $04, $A2

- D - I - 0x0133F9 10:B3E9: A1        .byte $A1
                                      .byte $3F, $8F
                                      .byte $03, $A5

- D - I - 0x0133FE 10:B3EE: FB        .byte con_jmp
- D - I - 0x0133FF 10:B3EF: F6 B6     .word off_B6F6



off_B3F1:
                                      .byte $78, $79, $7A, $7B

- D - I - 0x013405 10:B3F5: BF        .byte $BF
                                      .byte $3A, $93
                                      .byte $3F, $99
                                      .byte $3C, $3C

- D - I - 0x01340C 10:B3FC: A0        .byte $A0
                                      .byte $3C, $9C
                                      .byte $03, $E9
                                      .byte $04, $EB

- D - I - 0x013413 10:B403: A1        .byte $A1
                                      .byte $3A, $97
                                      .byte $3F, $9D
                                      .byte $3C, $3C

- D - I - 0x01341A 10:B40A: FB        .byte con_jmp
- D - I - 0x01341B 10:B40B: 5B B8     .word off_B85B



off_B40D:
                                      .byte $70, $71, $72, $73

- D - I - 0x013421 10:B411: BE        .byte $BE
                                      .byte $3F, $28

- D - I - 0x013424 10:B414: BF        .byte $BF
                                      .byte $3C, $29
                                      .byte $00, $0D
                                      .byte $07, $0F

- D - I - 0x01342B 10:B41B: A0        .byte $A0
                                      .byte $3F, $2C

- D - I - 0x01342E 10:B41E: FB        .byte con_jmp
- D - I - 0x01342F 10:B41F: D4 B4     .word off_B4D4



off_B421:
                                      .byte $70, $71, $72, $73

- D - I - 0x013435 10:B425: BF        .byte $BF
                                      .byte $3F, $8B
                                      .byte $03, $A1
                                      .byte $02, $93

- D - I - 0x01343C 10:B42C: A0        .byte $A0
                                      .byte $3C, $8E
                                      .byte $04, $A2

- D - I - 0x013441 10:B431: A1        .byte $A1
                                      .byte $3F, $8F
                                      .byte $03, $A5

- D - I - 0x013446 10:B436: FB        .byte con_jmp
- D - I - 0x013447 10:B437: 9A B6     .word off_B69A



off_B439:
                                      .byte $74, $75, $76, $77

- D - I - 0x01344D 10:B43D: BE        .byte $BE
                                      .byte $38, $B8

- D - I - 0x013450 10:B440: BF        .byte $BF
                                      .byte $3C, $BB
                                      .byte $03, $D7

- D - I - 0x013455 10:B445: A0        .byte $A0
                                      .byte $38, $BC

- D - I - 0x013458 10:B448: FA        .byte con_jsr
- D - I - 0x013459 10:B449: DE B7     .word off_B7DE

- D - I - 0x01345B 10:B44B: FB        .byte con_jmp
- D - I - 0x01345C 10:B44C: 6A B7     .word off_B76A



off_B44E:
                                      .byte $1D, $5D, $5E, $5F

- D - I - 0x013462 10:B452: BA        .byte $BA
                                      .byte $3D, $15
                                      .byte $01, $18
                                      .byte $05, $1E
                                      .byte $09, $27

- D - I - 0x01346B 10:B45B: BB        .byte $BB
                                      .byte $9F, $C3
                                      .byte $0A, $3B
                                      .byte $39, $10
                                      .byte $3D, $12
                                      .byte $01, $19
                                      .byte $05, $30
                                      .byte $09, $32

- D - I - 0x01347A 10:B46A: BC        .byte $BC
                                      .byte $39, $11
                                      .byte $3D, $13
                                      .byte $01, $1C
                                      .byte $05, $1F
                                      .byte $09, $33
                                      .byte $0D, $3F
                                      .byte $0C, $39

- D - I - 0x013489 10:B479: BD        .byte $BD
                                      .byte $39, $14
                                      .byte $3D, $16
                                      .byte $01, $1D
                                      .byte $05, $31
                                      .byte $09, $3E
                                      .byte $08, $36
                                      .byte $0C, $3C

- D - I - 0x013498 10:B488: BE        .byte $BE
                                      .byte $3D, $17
                                      .byte $01, $1A
                                      .byte $05, $34
                                      .byte $08, $37
                                      .byte $0C, $3D

- D - I - 0x0134A3 10:B493: BF        .byte $BF
                                      .byte $08, $2D
                                      .byte $0D, $1B
                                      .byte $0C, $2F

- D - I - 0x0134AA 10:B49A: A0        .byte $A0
                                      .byte $08, $38
                                      .byte $0D, $35
                                      .byte $0C, $3A

- D - I - 0x0134B1 10:B4A1: FF        .byte con_FF



off_B4A2:
                                      .byte $6C, $6D, $6E, $6F

- D - I - 0x0134B6 10:B4A6: BF        .byte $BF
                                      .byte $03, $DD

- D - I - 0x0134B9 10:B4A9: FB        .byte con_jmp
- D - I - 0x0134BA 10:B4AA: A9 BA     .word off_BAA9









; общие куски данных спрайтов
off_B4AC:
- D - I - 0x0134BC 10:B4AC: BD        .byte $BD
                                      .byte $0C, $8C

- D - I - 0x0134BF 10:B4AF: BE        .byte $BE
                                      .byte $38, $A2
                                      .byte $3D, $A8
                                      .byte $01, $AA
                                      .byte $05, $90
                                      .byte $0C, $98

- D - I - 0x0134CA 10:B4BA: BF        .byte $BF
                                      .byte $3F, $A9

- D - I - 0x0134CD 10:B4BD: A0        .byte $A0
                                      .byte $0D, $9C

- D - I - 0x0134D0 10:B4C0: A1        .byte $A1
                                      .byte $04, $8D

- D - I - 0x0134D3 10:B4C3: A2        .byte $A2
                                      .byte $3D, $B8
                                      .byte $01, $BA
                                      .byte $05, $95
                                      .byte $08, $97

- D - I - 0x0134DC 10:B4CC: A3        .byte $A3
                                      .byte $01, $BB
                                      .byte $08, $BD
                                      .byte $0C, $BE

- D - I - 0x0134E3 10:B4D3: FF        .byte con_FF



off_B4D4:
- D - I - 0x0134E4 10:B4D4: BC        .byte $BC
                                      .byte $0D, $22

- D - I - 0x0134E7 10:B4D7: BD        .byte $BD
                                      .byte $3B, $09
                                      .byte $3F, $0B
                                      .byte $09, $21
                                      .byte $0D, $23

- D - I - 0x0134F0 10:B4E0: BE        .byte $BE
                                      .byte $37, $04
                                      .byte $3B, $01
                                      .byte $03, $0C
                                      .byte $04, $0E
                                      .byte $09, $24
                                      .byte $0D, $26

- D - I - 0x0134FD 10:B4ED: BF        .byte $BF
                                      .byte $37, $05
                                      .byte $3B, $01
                                      .byte $08, $25
                                      .byte $0D, $27

- D - I - 0x013506 10:B4F6: A0        .byte $A0
                                      .byte $37, $10
                                      .byte $3B, $01
                                      .byte $03, $18
                                      .byte $04, $1A
                                      .byte $08, $2D
                                      .byte $09, $03
                                      .byte $0D, $2F

- D - I - 0x013515 10:B505: A1        .byte $A1
                                      .byte $37, $11
                                      .byte $3B, $01
                                      .byte $3C, $13
                                      .byte $00, $19
                                      .byte $04, $1B
                                      .byte $09, $30
                                      .byte $0D, $02

- D - I - 0x013524 10:B514: A2        .byte $A2
                                      .byte $3B, $16
                                      .byte $3F, $1C
                                      .byte $03, $1E
                                      .byte $09, $15
                                      .byte $0D, $17

- D - I - 0x01352F 10:B51F: A3        .byte $A3
                                      .byte $09, $1D
                                      .byte $0D, $1F
- D - I - 0x013534 10:B524: FF        .byte con_FF



off_B525:
- D - I - 0x013535 10:B525: BF        .byte $BF
                                      .byte $0D, $2F

- D - I - 0x013538 10:B528: A0        .byte $A0
                                      .byte $0D, $3A

- D - I - 0x01353B 10:B52B: A1        .byte $A1
                                      .byte $0D, $3B

- D - I - 0x01353E 10:B52E: A2        .byte $A2
                                      .byte $0D, $3E

- D - I - 0x013541 10:B531: FF        .byte con_FF



off_B532:
- D - I - 0x013542 10:B532: BD        .byte $BD
                                      .byte $3B, $88
                                      .byte $3F, $8A

- D - I - 0x013547 10:B537: BE        .byte $BE
                                      .byte $37, $89
                                      .byte $3B, $01
                                      .byte $3C, $8B
                                      .byte $00, $A0

- D - I - 0x013550 10:B540: BF        .byte $BF
                                      .byte $37, $8C
                                      .byte $3B, $01

- D - I - 0x013555 10:B545: A0        .byte $A0
                                      .byte $37, $8D
                                      .byte $3B, $01

- D - I - 0x01355A 10:B54A: A1        .byte $A1
                                      .byte $37, $98
                                      .byte $3B, $01
                                      .byte $3C, $9A
                                      .byte $00, $A5
                                      .byte $04, $A7

- D - I - 0x013565 10:B555: A2        .byte $A2
                                      .byte $3B, $B1
                                      .byte $3F, $B3
                                      .byte $03, $B0
                                      .byte $07, $B2

- D - I - 0x01356E 10:B55E: A3        .byte $A3
                                      .byte $3F, $B6
off_B561:
- D - I - 0x013571 10:B561: BE        .byte $BE
                                      .byte $04, $A2
                                      .byte $0D, $AA

- D - I - 0x013576 10:B566: BF        .byte $BF
                                      .byte $04, $A3
                                      .byte $09, $A9
                                      .byte $08, $A8
                                      .byte $0D, $AB

- D - I - 0x01357F 10:B56F: A0        .byte $A0
                                      .byte $04, $A6
                                      .byte $09, $AC
                                      .byte $08, $02
                                      .byte $0D, $AE

- D - I - 0x013588 10:B578: A1        .byte $A1
                                      .byte $09, $AD
                                      .byte $0D, $AF

- D - I - 0x01358D 10:B57D: A2        .byte $A2
                                      .byte $09, $B8
                                      .byte $0D, $BA

- D - I - 0x013592 10:B582: FF        .byte con_FF



off_B583:
- D - I - 0x013593 10:B583: BD        .byte $BD
                                      .byte $36, $22
                                      .byte $3A, $0A

- D - I - 0x013598 10:B588: BE        .byte $BE
                                      .byte $32, $07
                                      .byte $36, $23
                                      .byte $3F, $21

- D - I - 0x01359F 10:B58F: BF        .byte $BF
                                      .byte $32, $12
                                      .byte $36, $26
                                      .byte $3A, $0E

- D - I - 0x0135A6 10:B596: A0        .byte $A0
                                      .byte $32, $13
                                      .byte $36, $02
                                      .byte $3F, $25

- D - I - 0x0135AD 10:B59D: A1        .byte $A1
                                      .byte $32, $16
                                      .byte $36, $32
                                      .byte $3A, $1A
                                      .byte $3E, $30
                                      .byte $02, $75
                                      .byte $05, $18
                                      .byte $06, $48

- D - I - 0x0135BC 10:B5AC: A2        .byte $A2
                                      .byte $3A, $1B
                                      .byte $3E, $31
off_B5B1:
- D - I - 0x0135C1 10:B5B1: BC        .byte $BC
                                      .byte $0D, $08

- D - I - 0x0135C4 10:B5B4: BD        .byte $BD
                                      .byte $3E, $20
                                      .byte $09, $04
                                      .byte $0D, $06

- D - I - 0x0135CB 10:B5BB: BE        .byte $BE
                                      .byte $00, $1C
                                      .byte $04, $09
                                      .byte $09, $05
                                      .byte $0D, $02

- D - I - 0x0135D4 10:B5C4: BF        .byte $BF
                                      .byte $09, $10
                                      .byte $08, $03
                                      .byte $0D, $02

- D - I - 0x0135DB 10:B5CB: A0        .byte $A0
                                      .byte $00, $03
                                      .byte $04, $0D
                                      .byte $09, $11
                                      .byte $0D, $02

- D - I - 0x0135E4 10:B5D4: A1        .byte $A1
                                      .byte $09, $14
                                      .byte $0D, $02

- D - I - 0x0135E9 10:B5D9: A2        .byte $A2
                                      .byte $09, $15
                                      .byte $0D, $17

- D - I - 0x0135EE 10:B5DE: A3        .byte $A3
                                      .byte $09, $40
                                      .byte $0D, $42
- D - I - 0x0135F3 10:B5E3: FF        .byte con_FF



off_B5E4:
- D - I - 0x0135F4 10:B5E4: BD        .byte $BD
                                      .byte $36, $54
                                      .byte $3A, $56

- D - I - 0x0135F9 10:B5E9: BE        .byte $BE
                                      .byte $32, $5C
                                      .byte $36, $41
                                      .byte $3A, $43
                                      .byte $3F, $49

- D - I - 0x013602 10:B5F2: BF        .byte $BF
                                      .byte $32, $37
                                      .byte $36, $44
                                      .byte $3A, $46
                                      .byte $3C, $4C

- D - I - 0x01360B 10:B5FB: A0        .byte $A0
                                      .byte $32, $62
                                      .byte $36, $45
                                      .byte $3A, $47
                                      .byte $3F, $4D

- D - I - 0x013614 10:B604: A1        .byte $A1
                                      .byte $36, $50
                                      .byte $3A, $52
                                      .byte $3E, $30
                                      .byte $02, $55
                                      .byte $05, $18
                                      .byte $06, $48

- D - I - 0x013621 10:B611: A2        .byte $A2
                                      .byte $3A, $53
                                      .byte $3E, $59
                                      .byte $02, $31

- D - I - 0x013628 10:B618: FB        .byte con_jmp
- D - I - 0x013629 10:B619: B1 B5     .word off_B5B1



off_B61B:
- D - I - 0x01362B 10:B61B: BD        .byte $BD
                                      .byte $36, $4B
                                      .byte $3A, $61

- D - I - 0x013630 10:B620: BE        .byte $BE
                                      .byte $32, $5C
                                      .byte $36, $4E
                                      .byte $3A, $64
                                      .byte $3F, $5E

- D - I - 0x013639 10:B629: BF        .byte $BF
                                      .byte $32, $33
                                      .byte $36, $02
                                      .byte $3A, $65
                                      .byte $3C, $24

- D - I - 0x013642 10:B632: A0        .byte $A0
                                      .byte $32, $36
                                      .byte $36, $5A
                                      .byte $3A, $70
                                      .byte $3F, $74

- D - I - 0x01364B 10:B63B: A1        .byte $A1
                                      .byte $36, $5B
                                      .byte $3A, $71
                                      .byte $3E, $30
                                      .byte $02, $75
                                      .byte $05, $18
                                      .byte $06, $48

- D - I - 0x013658 10:B648: A2        .byte $A2
                                      .byte $3E, $31

- D - I - 0x01365B 10:B64B: FB        .byte con_jmp
- D - I - 0x01365C 10:B64C: B1 B5     .word off_B5B1



off_B64E:
- D - I - 0x01365E 10:B64E: BE        .byte $BE
                                      .byte $07, $8F
                                      .byte $04, $5A

- D - I - 0x013663 10:B653: BF        .byte $BF
                                      .byte $07, $9A
                                      .byte $04, $5B

- D - I - 0x013668 10:B658: A0        .byte $A0
                                      .byte $07, $9B
                                      .byte $04, $5E
off_B65D:
- D - I - 0x01366D 10:B65D: BD        .byte $BD
                                      .byte $0D, $55

- D - I - 0x013670 10:B660: BE        .byte $BE
                                      .byte $36, $47
                                      .byte $09, $70
                                      .byte $0D, $72

- D - I - 0x013677 10:B667: BF        .byte $BF
                                      .byte $36, $84
                                      .byte $08, $71
                                      .byte $09, $4A
                                      .byte $0D, $73

- D - I - 0x013680 10:B670: A0        .byte $A0
                                      .byte $36, $82
                                      .byte $08, $74
                                      .byte $0D, $76

- D - I - 0x013687 10:B677: A1        .byte $A1
                                      .byte $36, $83
                                      .byte $3E, $57
                                      .byte $00, $5D
                                      .byte $04, $5F
                                      .byte $09, $75
                                      .byte $CC, $00, $5B
                                      .byte $0D, $77

- D - I - 0x013697 10:B687: A2        .byte $A2
                                      .byte $36, $78
                                      .byte $3A, $7A
                                      .byte $3E, $79
                                      .byte $00, $7B
                                      .byte $09, $7C
                                      .byte $0D, $7E

- D - I - 0x0136A4 10:B694: A3        .byte $A3
                                      .byte $09, $7D
                                      .byte $0D, $7F

- D - I - 0x0136A9 10:B699: FF        .byte con_FF



off_B69A:
- D - I - 0x0136AA 10:B69A: BE        .byte $BE
                                      .byte $09, $A8
                                      .byte $0D, $AA

- D - I - 0x0136AF 10:B69F: BF        .byte $BF
                                      .byte $09, $A9
                                      .byte $0A, $90
                                      .byte $0D, $AB

- D - I - 0x0136B6 10:B6A6: A0        .byte $A0
                                      .byte $3A, $8C
                                      .byte $08, $AC
                                      .byte $0F, $AE

- D - I - 0x0136BD 10:B6AD: A1        .byte $A1
                                      .byte $0B, $AD
                                      .byte $0F, $AF

- D - I - 0x0136C2 10:B6B2: A2        .byte $A2
                                      .byte $02, $B0
                                      .byte $06, $B2
                                      .byte $09, $B8
                                      .byte $0A, $93
                                      .byte $0D, $BA

- D - I - 0x0136CD 10:B6BD: A3        .byte $A3
                                      .byte $3E, $9B
                                      .byte $02, $B1
                                      .byte $09, $B9
                                      .byte $0D, $BB

- D - I - 0x0136D6 10:B6C6: A4        .byte $A4
                                      .byte $0D, $7F
off_B6C9:
- D - I - 0x0136D9 10:B6C9: BE        .byte $BE
                                      .byte $36, $82
                                      .byte $3A, $88
                                      .byte $3E, $8A
                                      .byte $02, $A0

- D - I - 0x0136E2 10:B6D2: BF        .byte $BF
                                      .byte $32, $81
                                      .byte $36, $83
                                      .byte $3A, $89
                                      .byte $06, $A3

- D - I - 0x0136EB 10:B6DB: A0        .byte $A0
                                      .byte $32, $84
                                      .byte $36, $02
                                      .byte $00, $A4

- D - I - 0x0136F2 10:B6E2: A1        .byte $A1
                                      .byte $32, $85
                                      .byte $36, $02
                                      .byte $3A, $8D
                                      .byte $04, $A7

- D - I - 0x0136FB 10:B6EB: A2        .byte $A2
                                      .byte $36, $92
                                      .byte $3A, $02
                                      .byte $3E, $9A

- D - I - 0x013702 10:B6F2: A3        .byte $A3
                                      .byte $3A, $99

- D - I - 0x013705 10:B6F5: FF        .byte con_FF



off_B6F6:
- D - I - 0x013706 10:B6F6: BE        .byte $BE
                                      .byte $09, $81
                                      .byte $0D, $BE

- D - I - 0x01370B 10:B6FB: BF        .byte $BF
                                      .byte $09, $BD
                                      .byte $0D, $BF

- D - I - 0x013710 10:B700: A0        .byte $A0
                                      .byte $3A, $B4
                                      .byte $08, $C0
                                      .byte $0D, $C2

- D - I - 0x013717 10:B707: A1        .byte $A1
                                      .byte $0B, $C1
                                      .byte $0D, $C3

- D - I - 0x01371C 10:B70C: A2        .byte $A2
                                      .byte $3D, $FD
                                      .byte $02, $B5
                                      .byte $06, $B7
                                      .byte $09, $C4
                                      .byte $0D, $C6

- D - I - 0x013727 10:B717: A3        .byte $A3
                                      .byte $3E, $B1
                                      .byte $09, $C5
                                      .byte $0D, $C7

- D - I - 0x01372E 10:B71E: A4        .byte $A4
                                      .byte $0D, $7F

- D - I - 0x013731 10:B721: FB        .byte con_jmp
- D - I - 0x013732 10:B722: C9 B6     .word off_B6C9



off_B724:
- D - I - 0x013734 10:B724: BE        .byte $BE
                                      .byte $36, $82
                                      .byte $3A, $88
                                      .byte $3E, $CA
                                      .byte $06, $A0

- D - I - 0x01373D 10:B72D: BF        .byte $BF
                                      .byte $32, $81
                                      .byte $36, $83
                                      .byte $3A, $89
                                      .byte $3F, $8B
                                      .byte $06, $CB

- D - I - 0x013748 10:B738: A0        .byte $A0
                                      .byte $32, $84
                                      .byte $36, $02
                                      .byte $3A, $8C
                                      .byte $3C, $8E
                                      .byte $00, $A4

- D - I - 0x013753 10:B743: A1        .byte $A1
                                      .byte $32, $85
                                      .byte $36, $02
                                      .byte $3A, $8D
                                      .byte $3F, $8F
                                      .byte $04, $A7

- D - I - 0x01375E 10:B74E: A2        .byte $A2
                                      .byte $36, $92
                                      .byte $3A, $02
                                      .byte $06, $02

- D - I - 0x013765 10:B755: A3        .byte $A3
                                      .byte $3A, $99
                                      .byte $3E, $CD
                                      .byte $02, $CF
                                      .byte $06, $DC

- D - I - 0x01376E 10:B75E: FF        .byte con_FF



off_B75F:
- D - I - 0x01376F 10:B75F: BE        .byte $BE
                                      .byte $38, $B8

- D - I - 0x013772 10:B762: BF        .byte $BF
                                      .byte $3C, $BB
                                      .byte $00, $C1

- D - I - 0x013777 10:B767: A0        .byte $A0
                                      .byte $38, $BC
off_B76A:
- D - I - 0x01377A 10:B76A: BC        .byte $BC
                                      .byte $08, $C8
                                      .byte $0C, $CA

- D - I - 0x01377F 10:B76F: BD        .byte $BD
                                      .byte $36, $A7
                                      .byte $3A, $AD
                                      .byte $3E, $AF

- D - I - 0x013786 10:B776: BE        .byte $BE
                                      .byte $32, $B0
                                      .byte $36, $B2
                                      .byte $3F, $BA
                                      .byte $00, $C0
                                      .byte $04, $C2

- D - I - 0x013791 10:B781: BF        .byte $BF
                                      .byte $32, $B1
                                      .byte $37, $01
                                      .byte $38, $B9
                                      .byte $04, $C3

- D - I - 0x01379A 10:B78A: A0        .byte $A0
                                      .byte $32, $B4
                                      .byte $37, $01
                                      .byte $3F, $BE
                                      .byte $00, $C4
                                      .byte $04, $C6

- D - I - 0x0137A5 10:B795: A1        .byte $A1
                                      .byte $33, $B5
                                      .byte $36, $B7
                                      .byte $38, $BD
                                      .byte $3C, $BF
                                      .byte $00, $C5

- D - I - 0x0137B0 10:B7A0: A2        .byte $A2
                                      .byte $3B, $B3
                                      .byte $3F, $B3
                                      .byte $03, $B6
                                      .byte $05, $D8

- D - I - 0x0137B9 10:B7A9: A3        .byte $A3
                                      .byte $08, $D1
                                      .byte $0C, $D3
- D - I - 0x0137BE 10:B7AE: FF        .byte con_FF



off_B7AF:
- D - I - 0x0137BF 10:B7AF: BE        .byte $BE
                                      .byte $38, $D4

- D - I - 0x0137C2 10:B7B2: BF        .byte $BF
                                      .byte $3C, $D6
                                      .byte $03, $D7

- D - I - 0x0137C7 10:B7B7: A0        .byte $A0
                                      .byte $38, $D5

- D - I - 0x0137CA 10:B7BA: FB        .byte con_jmp
- D - I - 0x0137CB 10:B7BB: 6A B7     .word off_B76A



off_B7BD:
- D - I - 0x0137CD 10:B7BD: BD        .byte $BD
                                      .byte $09, $C9
                                      .byte $0D, $CB

- D - I - 0x0137D2 10:B7C2: BE        .byte $BE
                                      .byte $09, $CC
                                      .byte $0F, $01

- D - I - 0x0137D7 10:B7C7: BF        .byte $BF
                                      .byte $0B, $CD
                                      .byte $0F, $01

- D - I - 0x0137DC 10:B7CC: A0        .byte $A0
                                      .byte $0B, $CE
                                      .byte $0F, $01

- D - I - 0x0137E1 10:B7D1: A1        .byte $A1
                                      .byte $05, $C7
                                      .byte $09, $CF
                                      .byte $0F, $01

- D - I - 0x0137E8 10:B7D8: A2        .byte $A2
                                      .byte $09, $D0
                                      .byte $0F, $D2

- D - I - 0x0137ED 10:B7DD: FE        .byte con_rts



off_B7DE:
- D - I - 0x0137EE 10:B7DE: BD        .byte $BD
                                      .byte $0A, $D9
                                      .byte $0E, $DC

- D - I - 0x0137F3 10:B7E3: BE        .byte $BE
                                      .byte $0A, $DA
                                      .byte $0D, $02

- D - I - 0x0137F8 10:B7E8: BF        .byte $BF
                                      .byte $09, $DB
                                      .byte $0D, $02

- D - I - 0x0137FD 10:B7ED: A0        .byte $A0
                                      .byte $09, $DE
                                      .byte $0D, $02

- D - I - 0x013802 10:B7F2: A1        .byte $A1
                                      .byte $06, $C7
                                      .byte $0A, $DF
                                      .byte $0D, $02

- D - I - 0x013809 10:B7F9: A2        .byte $A2
                                      .byte $0A, $D0
                                      .byte $0D, $DD
- D - I - 0x01380E 10:B7FE: FE        .byte con_rts



off_B7FF:
- D - I - 0x01380F 10:B7FF: BD        .byte $BD
                                      .byte $9F, $C0
                                      .byte $3B, $82

- D - I - 0x013814 10:B804: BE        .byte $BE
                                      .byte $3B, $88
                                      .byte $3C, $8A

- D - I - 0x013819 10:B809: BF        .byte $BF
                                      .byte $33, $81
                                      .byte $37, $83
                                      .byte $3B, $89
                                      .byte $00, $A1
                                      .byte $04, $A3
                                      .byte $09, $A9

- D - I - 0x013826 10:B816: A0        .byte $A0
                                      .byte $33, $84
                                      .byte $37, $86
                                      .byte $3B, $8C
                                      .byte $3C, $8E
                                      .byte $0A, $AC

- D - I - 0x013831 10:B821: A1        .byte $A1
                                      .byte $33, $85
                                      .byte $37, $3C
                                      .byte $3B, $8D
                                      .byte $00, $A5
                                      .byte $04, $A7
                                      .byte $0A, $AD

- D - I - 0x01383E 10:B82E: A2        .byte $A2
                                      .byte $37, $92
                                      .byte $3B, $98
                                      .byte $3C, $9A
                                      .byte $00, $B0
off_B837:
                                      .byte $05, $B2
off_B839:
                                      .byte $09, $B8
                                      .byte $0D, $3C

- D - I - 0x01384D 10:B83D: BD        .byte $BD
                                      .byte $09, $A0
                                      .byte $0D, $A2

- D - I - 0x013852 10:B842: BE        .byte $BE
                                      .byte $09, $A8
                                      .byte $0D, $AA

- D - I - 0x013857 10:B847: BF        .byte $BF
                                      .byte $0D, $3C

- D - I - 0x01385A 10:B84A: A0        .byte $A0
                                      .byte $0D, $3C

- D - I - 0x01385D 10:B84D: A1        .byte $A1
                                      .byte $0D, $3C

- D - I - 0x013860 10:B850: A3        .byte $A3
                                      .byte $09, $AF
                                      .byte $0D, $AB

- D - I - 0x013865 10:B855: A4        .byte $A4
                                      .byte $09, $BA
                                      .byte $0D, $AE

- D - I - 0x01386A 10:B85A: FF        .byte con_FF



off_B85B:
- D - I - 0x01386B 10:B85B: BE        .byte $BE
                                      .byte $36, $B9
                                      .byte $3A, $BB

- D - I - 0x013870 10:B860: BF        .byte $BF
                                      .byte $32, $81
                                      .byte $36, $91
                                      .byte $00, $9B
                                      .byte $04, $B1
                                      .byte $09, $B3

- D - I - 0x01387B 10:B86B: A0        .byte $A0
                                      .byte $32, $84
                                      .byte $36, $94
                                      .byte $3A, $96
                                      .byte $04, $B4
                                      .byte $09, $B6

- D - I - 0x013886 10:B876: A1        .byte $A1
                                      .byte $32, $90
                                      .byte $36, $3C
                                      .byte $00, $A5
                                      .byte $04, $A7
                                      .byte $09, $B7

- D - I - 0x013891 10:B881: A2        .byte $A2
                                      .byte $36, $BC
                                      .byte $3A, $95
                                      .byte $3C, $9F
                                      .byte $02, $B5

- D - I - 0x01389A 10:B88A: FB        .byte con_jmp
- D - I - 0x01389B 10:B88B: 37 B8     .word off_B837



off_B88D:
- D - I - 0x01389D 10:B88D: BC        .byte $BC
                                      .byte $09, $78
                                      .byte $0D, $7A

- D - I - 0x0138A2 10:B892: BD        .byte $BD
                                      .byte $36, $02
                                      .byte $3A, $14
                                      .byte $09, $79
                                      .byte $0D, $7B

- D - I - 0x0138AB 10:B89B: BE        .byte $BE
                                      .byte $32, $60
                                      .byte $36, $62
                                      .byte $00, $70
                                      .byte $07, $72
                                      .byte $09, $5A
                                      .byte $0D, $01

- D - I - 0x0138B8 10:B8A8: BF        .byte $BF
                                      .byte $32, $61
                                      .byte $36, $63
                                      .byte $04, $73
                                      .byte $0B, $5B
                                      .byte $0D, $01

- D - I - 0x0138C3 10:B8B3: A0        .byte $A0
                                      .byte $32, $64
                                      .byte $36, $66
                                      .byte $00, $74
                                      .byte $04, $76
                                      .byte $0B, $5E
                                      .byte $0D, $01

- D - I - 0x0138D0 10:B8C0: A1        .byte $A1
                                      .byte $32, $65
                                      .byte $37, $67
                                      .byte $3A, $6D
                                      .byte $3C, $34
                                      .byte $00, $75
                                      .byte $05, $77
                                      .byte $09, $5F
                                      .byte $0D, $01

- D - I - 0x0138E1 10:B8D1: A2        .byte $A2
                                      .byte $09, $7C
                                      .byte $0D, $7E

- D - I - 0x0138E6 10:B8D6: A3        .byte $A3
                                      .byte $09, $7D
                                      .byte $0D, $7F

- D - I - 0x0138EB 10:B8DB: FF        .byte con_FF



off_B8DC:
- D - I - 0x0138EC 10:B8DC: BD        .byte $BD
                                      .byte $36, $02
                                      .byte $3A, $14

- D - I - 0x0138F1 10:B8E1: BE        .byte $BE
                                      .byte $32, $04
                                      .byte $36, $03

- D - I - 0x0138F6 10:B8E6: BF        .byte $BF
                                      .byte $32, $05
                                      .byte $36, $06
                                      .byte $04, $31
                                      .byte $05, $33

- D - I - 0x0138FF 10:B8EF: A0        .byte $A0
                                      .byte $32, $10
                                      .byte $36, $07
                                      .byte $04, $22
                                      .byte $05, $28

- D - I - 0x013908 10:B8F8: A1        .byte $A1
                                      .byte $32, $11
                                      .byte $37, $12
                                      .byte $3A, $0D
off_B8FF:
                                      .byte $05, $29
                                      .byte $09, $2B
                                      .byte $0D, $3C

- D - I - 0x013915 10:B905: BC        .byte $BC
                                      .byte $09, $2C
                                      .byte $0D, $3A

- D - I - 0x01391A 10:B90A: BD        .byte $BD
                                      .byte $09, $2D
                                      .byte $0D, $3B

- D - I - 0x01391F 10:B90F: BE        .byte $BE
                                      .byte $05, $32
                                      .byte $09, $38
                                      .byte $0D, $36

- D - I - 0x013926 10:B916: BF        .byte $BF
                                      .byte $09, $39
                                      .byte $0D, $37

- D - I - 0x01392B 10:B91B: A0        .byte $A0
                                      .byte $09, $2A
                                      .byte $0D, $3C

- D - I - 0x013930 10:B920: A2        .byte $A2
                                      .byte $09, $2E
                                      .byte $0D, $3D

- D - I - 0x013935 10:B925: A3        .byte $A3
                                      .byte $09, $2F
                                      .byte $0D, $3E

- D - I - 0x01393A 10:B92A: FF        .byte con_FF



off_B947:
- D - I - 0x013957 10:B947: BE        .byte $BE
                                      .byte $3A, $0A
                                      .byte $3E, $04
                                      .byte $02, $06
                                      .byte $06, $0C
                                      .byte $0A, $0E

- D - I - 0x013962 10:B952: BF        .byte $BF
                                      .byte $36, $08
                                      .byte $3A, $0B
                                      .byte $02, $07
                                      .byte $03, $30
                                      .byte $06, $0D
                                      .byte $0A, $0F

- D - I - 0x01396F 10:B95F: A0        .byte $A0
                                      .byte $36, $09
                                      .byte $3A, $02
                                      .byte $02, $12
                                      .byte $0A, $1A

- D - I - 0x013978 10:B968: A1        .byte $A1
                                      .byte $36, $15
                                      .byte $3A, $02
                                      .byte $06, $19
                                      .byte $0A, $1B

- D - I - 0x013981 10:B971: A2        .byte $A2
                                      .byte $36, $28
                                      .byte $3A, $2A
                                      .byte $3E, $14
                                      .byte $02, $16
                                      .byte $06, $1C
                                      .byte $0A, $1E
                                      .byte $09, $2F

- D - I - 0x013990 10:B980: A3        .byte $A3
                                      .byte $02, $17
                                      .byte $06, $1D
                                      .byte $0A, $1F
off_B987:
- D - I - 0x013997 10:B987: BD        .byte $BD
                                      .byte $0D, $22

- D - I - 0x01399A 10:B98A: BE        .byte $BE
                                      .byte $0D, $23

- D - I - 0x01399D 10:B98D: BF        .byte $BF
                                      .byte $0D, $20

- D - I - 0x0139A0 10:B990: A0        .byte $A0
                                      .byte $0C, $21

- D - I - 0x0139A3 10:B993: A1        .byte $A1
                                      .byte $0C, $24

- D - I - 0x0139A6 10:B996: A2        .byte $A2
                                      .byte $0D, $25

- D - I - 0x0139A9 10:B999: A3        .byte $A3
                                      .byte $0D, $26

- D - I - 0x0139AC 10:B99C: A4        .byte $A4
                                      .byte $0D, $27

- D - I - 0x0139AF 10:B99F: FF        .byte con_FF



off_B9A0:
- D - I - 0x0139B0 10:B9A0: BE        .byte $BE
                                      .byte $36, $38
                                      .byte $3A, $3A
                                      .byte $3E, $52

- D - I - 0x0139B7 10:B9A7: BF        .byte $BF
                                      .byte $36, $39

- D - I - 0x0139BA 10:B9AA: FE        .byte con_rts



off_B9AB:
                                      .byte $3A, $3B
                                      .byte $3E, $40
                                      .byte $3F, $02
                                      .byte $02, $42
                                      .byte $03, $5D

- D - I - 0x0139C5 10:B9B5: A0        .byte $A0
                                      .byte $36, $3C
                                      .byte $3A, $3E
                                      .byte $3E, $41
                                      .byte $02, $43

- D - I - 0x0139CE 10:B9BE: A1        .byte $A1
                                      .byte $36, $3D
                                      .byte $3A, $3F
                                      .byte $3E, $44
                                      .byte $3F, $02
                                      .byte $02, $46
                                      .byte $03, $02

- D - I - 0x0139DB 10:B9CB: A2        .byte $A2
                                      .byte $36, $34
                                      .byte $3A, $36
                                      .byte $3E, $45
off_B9D2:
- D - I - 0x0139E2 10:B9D2: BF        .byte $BF
                                      .byte $06, $48
                                      .byte $0A, $4A

- D - I - 0x0139E7 10:B9D7: A0        .byte $A0
                                      .byte $32, $32
                                      .byte $07, $02
                                      .byte $0A, $4B

- D - I - 0x0139EE 10:B9DE: A1        .byte $A1
                                      .byte $32, $33
                                      .byte $06, $4C
                                      .byte $0A, $4E

- D - I - 0x0139F5 10:B9E5: A2        .byte $A2
                                      .byte $02, $47
                                      .byte $06, $4D
                                      .byte $0A, $4F
                                      .byte $09, $2F

- D - I - 0x0139FE 10:B9EE: A3        .byte $A3
                                      .byte $0A, $33

- D - I - 0x013A01 10:B9F1: FB        .byte con_jmp
- D - I - 0x013A02 10:B9F2: 87 B9     .word off_B987



off_B9F4:
                                      .byte $3A, $6C
                                      .byte $3F, $03
                                      .byte $02, $62
                                      .byte $03, $30
                                      .byte $06, $68
                                      .byte $0A, $6A

- D - I - 0x013A10 10:BA00: A0        .byte $A0
                                      .byte $36, $58
                                      .byte $3A, $6F
                                      .byte $02, $43

- D - I - 0x013A17 10:BA07: A1        .byte $A1
                                      .byte $36, $59
                                      .byte $3A, $7A
                                      .byte $3F, $03
                                      .byte $02, $66
                                      .byte $03, $31
                                      .byte $06, $03
                                      .byte $0A, $6E

- D - I - 0x013A26 10:BA16: A2        .byte $A2
                                      .byte $36, $5C
                                      .byte $3A, $63
                                      .byte $3E, $65
                                      .byte $02, $67
                                      .byte $06, $6D
                                      .byte $0A, $4F
                                      .byte $09, $2F

- D - I - 0x013A35 10:BA25: A3        .byte $A3
                                      .byte $3A, $5F
                                      .byte $3E, $70
                                      .byte $02, $72
                                      .byte $0A, $33

- D - I - 0x013A3E 10:BA2E: FB        .byte con_jmp
- D - I - 0x013A3F 10:BA2F: 87 B9     .word off_B987



off_BA31:
- D - I - 0x013A41 10:BA31: BD        .byte $BD
                                      .byte $0D, $55

- D - I - 0x013A44 10:BA34: BE        .byte $BE
                                      .byte $36, $47
                                      .byte $09, $70
                                      .byte $0D, $72

- D - I - 0x013A4B 10:BA3B: BF        .byte $BF
                                      .byte $36, $84
                                      .byte $09, $4A
                                      .byte $0D, $73

- D - I - 0x013A52 10:BA42: A0        .byte $A0
                                      .byte $36, $82
                                      .byte $08, $74
                                      .byte $0D, $76

- D - I - 0x013A59 10:BA49: A1        .byte $A1
                                      .byte $36, $83
                                      .byte $3E, $57
                                      .byte $00, $5D
                                      .byte $04, $5F
                                      .byte $09, $75
                                      .byte $CC, $00, $5B
                                      .byte $0D, $77

- D - I - 0x013A69 10:BA59: A2        .byte $A2
                                      .byte $36, $78
                                      .byte $3A, $7A
                                      .byte $3E, $79
                                      .byte $00, $7B
                                      .byte $09, $7C
                                      .byte $0D, $7E

- D - I - 0x013A76 10:BA66: A3        .byte $A3
                                      .byte $09, $7D
                                      .byte $0D, $7F

- D - I - 0x013A7B 10:BA6B: FF        .byte con_FF



off_BA6C:
                                      .byte $3A, $6C
                                      .byte $3F, $03
                                      .byte $02, $62
                                      .byte $43, $31
                                      .byte $06, $68
                                      .byte $0A, $6A

- D - I - 0x013A88 10:BA78: A0        .byte $A0
                                      .byte $36, $58
                                      .byte $3A, $6F
                                      .byte $02, $43

- D - I - 0x013A8F 10:BA7F: A1        .byte $A1
                                      .byte $36, $59
                                      .byte $3A, $7A
                                      .byte $3F, $03
                                      .byte $02, $66
                                      .byte $43, $30
                                      .byte $06, $03
                                      .byte $0A, $6E

- D - I - 0x013A9E 10:BA8E: A2        .byte $A2
                                      .byte $36, $5C
                                      .byte $3A, $63
                                      .byte $3E, $65
                                      .byte $02, $67
                                      .byte $06, $6D
                                      .byte $0A, $4F
                                      .byte $09, $2F

- D - I - 0x013AAD 10:BA9D: A3        .byte $A3
                                      .byte $3A, $5F
                                      .byte $3E, $70
                                      .byte $02, $72
                                      .byte $0A, $33

- D - I - 0x013AB6 10:BAA6: FB        .byte con_jmp
- D - I - 0x013AB7 10:BAA7: 87 B9     .word off_B987



off_BAA9:
- D - I - 0x013AB9 10:BAA9: BC        .byte $BC
                                      .byte $0C, $08

- D - I - 0x013ABC 10:BAAC: BD        .byte $BD
                                      .byte $36, $E0
                                      .byte $3A, $E2
                                      .byte $3E, $20
                                      .byte $08, $04
                                      .byte $0C, $06

- D - I - 0x013AC7 10:BAB7: BE        .byte $BE
                                      .byte $32, $E1
                                      .byte $36, $E3
                                      .byte $3A, $E9
                                      .byte $3F, $EB
                                      .byte $3D, $02
                                      .byte $01, $D9
                                      .byte $05, $DB
                                      .byte $08, $05
                                      .byte $0C, $02

- D - I - 0x013ADA 10:BACA: BF        .byte $BF
                                      .byte $32, $E4
                                      .byte $36, $02
                                      .byte $3A, $EC
                                      .byte $3F, $EE
                                      .byte $05, $DE
                                      .byte $0B, $F4
                                      .byte $0C, $02

- D - I - 0x013AE9 10:BAD9: A0        .byte $A0
                                      .byte $32, $E5
                                      .byte $36, $E6
                                      .byte $3A, $ED
                                      .byte $3F, $EF
                                      .byte $3D, $02
                                      .byte $01, $03
                                      .byte $05, $DF
                                      .byte $0B, $F5
                                      .byte $0F, $02

- D - I - 0x013AFC 10:BAEC: A1        .byte $A1
                                      .byte $36, $E7
                                      .byte $3A, $F8
                                      .byte $3E, $FA
                                      .byte $02, $F0
                                      .byte $04, $F2
                                      .byte $06, $48
                                      .byte $08, $14
                                      .byte $0C, $02

- D - I - 0x013B0D 10:BAFD: A2        .byte $A2
                                      .byte $3A, $F9
                                      .byte $3E, $FB
                                      .byte $02, $F1
                                      .byte $08, $15
                                      .byte $0C, $17

- D - I - 0x013B18 10:BB08: A3        .byte $A3
                                      .byte $08, $40
                                      .byte $0C, $42

- D - I - 0x013B1D 10:BB0D: FF        .byte con_FF
