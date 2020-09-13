.segment "BANK_11"
.include "copy_bank_ram.inc"
; тут только данные

; основные данные анимации
con_повторы         = $E0
con_повторить       = $F0
con_координаты_Y_X              = $F1
con_F5              = $F5
con_F6              = $F6
con_F7              = $F7
con_F9              = $F9
con_развилка        = $FA
con_выход           = $FF

; данные спрайтов
con_jsr             = $FA
con_jmp             = $FB
con_FE              = $FE

; поинтер находится в 0x0010DF, начало таблицы в банке 10
- D - I - 0x014010 11:A000: BE A0     .word off_A0BE_6D
- D - I - 0x014012 11:A002: C6 A0     .word off_A0C6_6E
- D - I - 0x014014 11:A004: F0 A0     .word off_A0F0_6F
- D - I - 0x014016 11:A006: 1A A1     .word off_A11A_70
- D - I - 0x014018 11:A008: 26 A1     .word off_A126_71
- D - I - 0x01401A 11:A00A: 4C A1     .word off_A14C_72
- D - I - 0x01401C 11:A00C: 58 A1     .word off_A158_73
- D - I - 0x01401E 11:A00E: 65 A1     .word off_A165_74
- D - I - 0x014020 11:A010: 86 A1     .word off_A186_75
- D - I - 0x014022 11:A012: 8F A1     .word off_A18F_76
- D - I - 0x014024 11:A014: 99 A1     .word off_A199_77
- D - I - 0x014026 11:A016: A2 A1     .word off_A1A2_78
- D - I - 0x014028 11:A018: AB A1     .word off_A1AB_79
- D - I - 0x01402A 11:A01A: B2 A1     .word off_A1B2_7A
- D - I - 0x01402C 11:A01C: BA A1     .word off_A1BA_7B
- D - I - 0x01402E 11:A01E: C1 A1     .word off_A1C1_7C
- D - I - 0x014030 11:A020: CA A1     .word off_A1CA_7D
- D - I - 0x014032 11:A022: FC A1     .word off_A1FC_7E
- D - I - 0x014034 11:A024: 1C A2     .word off_A21C_7F
- D - I - 0x014036 11:A026: 3E A2     .word off_A23E_80
- D - I - 0x014038 11:A028: 4A A2     .word off_A24A_81
- D - I - 0x01403A 11:A02A: 5F A2     .word off_A25F_82
- D - I - 0x01403C 11:A02C: 9E A2     .word off_A29E_83
- D - I - 0x01403E 11:A02E: CB A2     .word off_A2CB_84
- D - I - 0x014040 11:A030: F8 A2     .word off_A2F8_85
- D - I - 0x014042 11:A032: 05 A3     .word off_A305_86
- D - I - 0x014044 11:A034: 18 A3     .word off_A318_87
- D - I - 0x014046 11:A036: 66 A3     .word off_A366_88
- D - I - 0x014048 11:A038: 6F A3     .word off_A36F_89
- D - I - 0x01404A 11:A03A: B8 A3     .word off_A3B8_8A
- D - I - 0x01404C 11:A03C: C5 A3     .word off_A3C5_8B
- D - I - 0x01404E 11:A03E: CC A3     .word off_A3CC_8C
- D - I - 0x014050 11:A040: D3 A3     .word off_A3D3_8D
- D - I - 0x014052 11:A042: DA A3     .word off_A3DA_8E
- D - I - 0x014054 11:A044: E1 A3     .word off_A3E1_8F
- D - I - 0x014056 11:A046: E8 A3     .word off_A3E8_90
- D - I - 0x014058 11:A048: EF A3     .word off_A3EF_91
- D - I - 0x01405A 11:A04A: F6 A3     .word off_A3F6_92
- D - I - 0x01405C 11:A04C: 0C A4     .word off_A40C_93
- D - I - 0x01405E 11:A04E: 34 A4     .word off_A434_94
- D - I - 0x014060 11:A050: 49 A4     .word off_A449_95
- D - I - 0x014062 11:A052: 56 A4     .word off_A456_96
- D - I - 0x014064 11:A054: 63 A4     .word off_A463_97
- D - I - 0x014066 11:A056: 70 A4     .word off_A470_98
- D - I - 0x014068 11:A058: 77 A4     .word off_A477_99
- D - I - 0x01406A 11:A05A: 84 A4     .word off_A484_9A
- D - I - 0x01406C 11:A05C: 90 A4     .word off_A490_9B
- D - I - 0x01406E 11:A05E: 97 A4     .word off_A497_9C
- D - I - 0x014070 11:A060: AA A4     .word off_A4AA_9D
- D - I - 0x014072 11:A062: B7 A4     .word off_A4B7_9E
- D - I - 0x014074 11:A064: C3 A4     .word off_A4C3_9F
- D - I - 0x014076 11:A066: EB A4     .word off_A4EB_A0
- D - I - 0x014078 11:A068: F7 A4     .word off_A4F7_A1
- D - I - 0x01407A 11:A06A: 0E A5     .word off_A50E_A2
- D - I - 0x01407C 11:A06C: 2A A5     .word off_A52A_A3
- D - I - 0x01407E 11:A06E: 46 A5     .word off_A546_A4
- D - I - 0x014080 11:A070: 4D A5     .word off_A54D_A5
- D - I - 0x014082 11:A072: 59 A5     .word off_A559_A6
- D - I - 0x014084 11:A074: 70 A5     .word off_A570_A7
- D - I - 0x014086 11:A076: D5 A5     .word off_A5D5_A8
- D - I - 0x014088 11:A078: ED A5     .word off_A5ED_A9
- D - I - 0x01408A 11:A07A: 02 A6     .word off_A602_AA
- D - I - 0x01408C 11:A07C: 20 A6     .word off_A620_AB
- D - I - 0x01408E 11:A07E: 27 A6     .word off_A627_AC
- D - I - 0x014090 11:A080: 37 A6     .word off_A637_AD
- D - I - 0x014092 11:A082: 3E A6     .word off_A63E_AE
- D - I - 0x014094 11:A084: 45 A6     .word off_A645_AF
- D - I - 0x014096 11:A086: 50 A6     .word off_A650_B0
- D - I - 0x014098 11:A088: 5C A6     .word off_A65C_B1
- D - I - 0x01409A 11:A08A: 68 A6     .word off_A668_B2
- D - I - 0x01409C 11:A08C: 74 A6     .word off_A674_B3
- D - I - 0x01409E 11:A08E: 81 A6     .word off_A681_B4
- D - I - 0x0140A0 11:A090: 95 A6     .word off_A695_B5
- D - I - 0x0140A2 11:A092: A3 A6     .word off_A6A3_B6
- D - I - 0x0140A4 11:A094: AA A6     .word off_A6AA_B7
- D - I - 0x0140A6 11:A096: B4 A6     .word off_A6B4_B8
- D - I - 0x0140A8 11:A098: BB A6     .word off_A6BB_B9
- D - I - 0x0140AA 11:A09A: C2 A6     .word off_A6C2_BA
- D - I - 0x0140AC 11:A09C: DD A6     .word off_A6DD_BB
- D - I - 0x0140AE 11:A09E: F3 A6     .word off_A6F3_BC
- D - I - 0x0140B0 11:A0A0: FA A6     .word off_A6FA_BD
- D - I - 0x0140B2 11:A0A2: 01 A7     .word off_A701_BE
- D - I - 0x0140B4 11:A0A4: 3E A7     .word off_A73E_BF
- D - I - 0x0140B6 11:A0A6: 50 A7     .word off_A750_C0
- D - I - 0x0140B8 11:A0A8: 57 A7     .word off_A757_C1
- D - I - 0x0140BA 11:A0AA: 65 A7     .word off_A765_C2_джек_выходит_и_поздравляет
- D - I - 0x0140BC 11:A0AC: 84 A7     .word off_A784_C3_джек_уходит_с_поля
- D - I - 0x0140BE 11:A0AE: 9E A7     .word off_A79E_C4_джек_улетает_и_появляется_и_садится_на_голову
- D - I - 0x0140C0 11:A0B0: D8 A7     .word off_A7D8_C5_объект_для_скрытия_прыгающего_джека
- D - I - 0x0140C2 11:A0B2: ED A7     .word off_A7ED_C6
- D - I - 0x0140C4 11:A0B4: FA A7     .word off_A7FA_C7
- D - I - 0x0140C6 11:A0B6: 11 A8     .word off_A811_C8
- D - I - 0x0140C8 11:A0B8: 18 A8     .word off_A818_C9
- D - I - 0x0140CA 11:A0BA: 1F A8     .word off_A81F_CA
- D - I - 0x0140CC 11:A0BC: 2B A8     .word off_A82B_CB



off_A0BE_6D:
- D - I - 0x0140CE 11:A0BE: 3D        .byte $3D

- D - I - 0x0140CF 11:A0BF: F5        .byte con_F5

- D - I - 0x0140D0 11:A0C0: F1        .byte con_координаты_Y_X
- D - I - 0x0140D1 11:A0C1: 1E        .byte $1E
- D - I - 0x0140D2 11:A0C2: 36        .byte $36

- D - I - 0x0140D3 11:A0C3: 88 37     .dbyt off_A837 - $2000

- D - I - 0x0140D5 11:A0C5: FF        .byte con_выход



off_A0C6_6E:
- D - I - 0x0140D6 11:A0C6: 00        .byte $00

- D - I - 0x0140D7 11:A0C7: F1        .byte con_координаты_Y_X
- D - I - 0x0140D8 11:A0C8: 1E        .byte $1E
- D - I - 0x0140D9 11:A0C9: F6        .byte $F6

- D - I - 0x0140DA 11:A0CA: F7        .byte con_F7
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

- D - I - 0x0140F0 11:A0E0: F7        .byte con_F7
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



off_A0F0_6F:
- D - I - 0x014100 11:A0F0: 2D        .byte $2D

- D - I - 0x014101 11:A0F1: F1        .byte con_координаты_Y_X
- D - I - 0x014102 11:A0F2: 1E        .byte $1E
- D - I - 0x014103 11:A0F3: F6        .byte $F6

- D - I - 0x014104 11:A0F4: F7        .byte con_F7
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

- D - I - 0x01411A 11:A10A: F7        .byte con_F7
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



off_A11A_70:
- D - I - 0x01412A 11:A11A: 3C        .byte $3C

- D - I - 0x01412B 11:A11B: F1        .byte con_координаты_Y_X
- D - I - 0x01412C 11:A11C: AE        .byte $AE
- D - I - 0x01412D 11:A11D: 44        .byte $44

- D - I - 0x01412E 11:A11E: 89 59     .dbyt off_A959 - $2000

- D - I - 0x014130 11:A120: F7        .byte con_F7
- D - I - 0x014131 11:A121: 20        .byte $20
- D - I - 0x014132 11:A122: FF        .byte $FF
- D - I - 0x014133 11:A123: 00        .byte $00

- D - I - 0x014134 11:A124: 50        .byte $50

- D - I - 0x014135 11:A125: FF        .byte con_выход



off_A126_71:
- D - I - 0x014136 11:A126: 3C        .byte $3C

- D - I - 0x014137 11:A127: F1        .byte con_координаты_Y_X
- D - I - 0x014138 11:A128: AB        .byte $AB
- D - I - 0x014139 11:A129: 44        .byte $44

- D - I - 0x01413A 11:A12A: 89 73     .dbyt off_A973 - $2000

- D - I - 0x01413C 11:A12C: F7        .byte con_F7
- D - I - 0x01413D 11:A12D: 20        .byte $20
- D - I - 0x01413E 11:A12E: FF        .byte $FF
- D - I - 0x01413F 11:A12F: 00        .byte $00

- D - I - 0x014140 11:A130: 50        .byte $50

- D - I - 0x014141 11:A131: EA        .byte con_повторы + $0A

- D - I - 0x014142 11:A132: F7        .byte con_F7
- D - I - 0x014143 11:A133: 2E        .byte $2E
- D - I - 0x014144 11:A134: 00        .byte $00
- D - I - 0x014145 11:A135: 00        .byte $00

- D - I - 0x014146 11:A136: 89 73     .dbyt off_A973 - $2000
- D - I - 0x014148 11:A138: 01        .byte $01

- D - I - 0x014149 11:A139: F7        .byte con_F7
- D - I - 0x01414A 11:A13A: E2        .byte $E2
- D - I - 0x01414B 11:A13B: 00        .byte $00
- D - I - 0x01414C 11:A13C: 00        .byte $00

- D - I - 0x01414D 11:A13D: 89 73     .dbyt off_A973 - $2000
- D - I - 0x01414F 11:A13F: 01        .byte $01

- D - I - 0x014150 11:A140: F0        .byte con_повторить

- D - I - 0x014151 11:A141: F7        .byte con_F7
- D - I - 0x014152 11:A142: 79        .byte $79
- D - I - 0x014153 11:A143: 00        .byte $00
- D - I - 0x014154 11:A144: 00        .byte $00

- D - I - 0x014155 11:A145: 03        .byte $03

- D - I - 0x014156 11:A146: F1        .byte con_координаты_Y_X
- D - I - 0x014157 11:A147: 3E        .byte $3E
- D - I - 0x014158 11:A148: BE        .byte $BE

- D - I - 0x014159 11:A149: 89 73     .dbyt off_A973 - $2000

- D - I - 0x01415B 11:A14B: FF        .byte con_выход



off_A14C_72:
- D - I - 0x01415C 11:A14C: 14        .byte $14

- D - I - 0x01415D 11:A14D: F1        .byte con_координаты_Y_X
- D - I - 0x01415E 11:A14E: 1E        .byte $1E
- D - I - 0x01415F 11:A14F: 4E        .byte $4E

- D - I - 0x014160 11:A150: 90 6B     .dbyt off_B06B - $2000

- D - I - 0x014162 11:A152: F7        .byte con_F7
- D - I - 0x014163 11:A153: 2E        .byte $2E
- D - I - 0x014164 11:A154: 00        .byte $00
- D - I - 0x014165 11:A155: 00        .byte $00

- D - I - 0x014166 11:A156: 07        .byte $07

- D - I - 0x014167 11:A157: FF        .byte con_выход



off_A158_73:
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



off_A165_74:
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



off_A1AB_79:
- D - I - 0x0141BB 11:A1AB: 30        .byte $30

- D - I - 0x0141BC 11:A1AC: F1        .byte con_координаты_Y_X
- D - I - 0x0141BD 11:A1AD: 30        .byte $30
- D - I - 0x0141BE 11:A1AE: 3C        .byte $3C

- D - I - 0x0141BF 11:A1AF: 8B F9     .dbyt off_ABF9 - $2000

- D - I - 0x0141C1 11:A1B1: FF        .byte con_выход



off_A1B2_7A:
- D - I - 0x0141C2 11:A1B2: 2E        .byte $2E

- D - I - 0x0141C3 11:A1B3: F1        .byte con_координаты_Y_X
- D - I - 0x0141C4 11:A1B4: 30        .byte $30
- D - I - 0x0141C5 11:A1B5: 30        .byte $30

- D - I - 0x0141C6 11:A1B6: F5        .byte con_F5

- D - I - 0x0141C7 11:A1B7: 8C 5A     .dbyt off_AC5A - $2000

- D - I - 0x0141C9 11:A1B9: FF        .byte con_выход



off_A1BA_7B:
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



off_A1CA_7D:
- D - I - 0x0141DA 11:A1CA: 07        .byte $07

- D - I - 0x0141DB 11:A1CB: F1        .byte con_координаты_Y_X
- D - I - 0x0141DC 11:A1CC: 06        .byte $06
- D - I - 0x0141DD 11:A1CD: 4E        .byte $4E

- D - I - 0x0141DE 11:A1CE: EC        .byte con_повторы + $0C

- D - I - 0x0141DF 11:A1CF: F7        .byte con_F7
- D - I - 0x0141E0 11:A1D0: 2F        .byte $2F
- D - I - 0x0141E1 11:A1D1: 00        .byte $00
- D - I - 0x0141E2 11:A1D2: 00        .byte $00

- D - I - 0x0141E3 11:A1D3: 8D 72     .dbyt off_AD72 - $2000
- D - I - 0x0141E5 11:A1D5: 01        .byte $01

- D - I - 0x0141E6 11:A1D6: F7        .byte con_F7
- D - I - 0x0141E7 11:A1D7: 00        .byte $00
- D - I - 0x0141E8 11:A1D8: 00        .byte $00
- D - I - 0x0141E9 11:A1D9: 00        .byte $00

- D - I - 0x0141EA 11:A1DA: 8D 72     .dbyt off_AD72 - $2000
- D - I - 0x0141EC 11:A1DC: 01        .byte $01

- D - I - 0x0141ED 11:A1DD: F0        .byte con_повторить

- D - I - 0x0141EE 11:A1DE: E6        .byte con_повторы + $06

- D - I - 0x0141EF 11:A1DF: F7        .byte con_F7
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
- D - I - 0x014200 11:A1F0: F7        .byte con_F7
- D - I - 0x014201 11:A1F1: 00        .byte $00
- D - I - 0x014202 11:A1F2: 01        .byte $01
- D - I - 0x014203 11:A1F3: FF        .byte $FF

- D - I - 0x014204 11:A1F4: 8D 9A     .dbyt off_AD9A - $2000
- D - I - 0x014206 11:A1F6: 01        .byte $01

- D - I - 0x014207 11:A1F7: 8D 9A     .dbyt off_AD9A - $2000
- D - I - 0x014209 11:A1F9: 01        .byte $01

- D - I - 0x01420A 11:A1FA: A1 F0     .dbyt @бесконечный_цикл



off_A1FC_7E:
- D - I - 0x01420C 11:A1FC: 31        .byte $31

- D - I - 0x01420D 11:A1FD: F1        .byte con_координаты_Y_X
- D - I - 0x01420E 11:A1FE: D6        .byte $D6
- D - I - 0x01420F 11:A1FF: 56        .byte $56

- D - I - 0x014210 11:A200: 8D 7C     .dbyt off_AD7C - $2000

- D - I - 0x014212 11:A202: F7        .byte con_F7
- D - I - 0x014213 11:A203: 4E        .byte $4E
- D - I - 0x014214 11:A204: 00        .byte $00
- D - I - 0x014215 11:A205: 00        .byte $00

- D - I - 0x014216 11:A206: 12        .byte $12

- D - I - 0x014217 11:A207: F7        .byte con_F7
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



off_A21C_7F:
- D - I - 0x01422C 11:A21C: 12        .byte $12

- D - I - 0x01422D 11:A21D: E3        .byte con_повторы + $03

- D - I - 0x01422E 11:A21E: F1        .byte con_координаты_Y_X
- D - I - 0x01422F 11:A21F: 06        .byte $06
- D - I - 0x014230 11:A220: 4E        .byte $4E

- D - I - 0x014231 11:A221: 8D 86     .dbyt off_AD86 - $2000

- D - I - 0x014233 11:A223: F7        .byte con_F7
- D - I - 0x014234 11:A224: 2E        .byte $2E
- D - I - 0x014235 11:A225: 00        .byte $00
- D - I - 0x014236 11:A226: 00        .byte $00

- D - I - 0x014237 11:A227: 0E        .byte $0E

- D - I - 0x014238 11:A228: F0        .byte con_повторить

- D - I - 0x014239 11:A229: F7        .byte con_F7
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



off_A23E_80:
- D - I - 0x01424E 11:A23E: 38        .byte $38

- D - I - 0x01424F 11:A23F: F1        .byte con_координаты_Y_X
- D - I - 0x014250 11:A240: 06        .byte $06
- D - I - 0x014251 11:A241: 3A        .byte $3A

- D - I - 0x014252 11:A242: F7        .byte con_F7
- D - I - 0x014253 11:A243: 21        .byte $21
- D - I - 0x014254 11:A244: 00        .byte $00
- D - I - 0x014255 11:A245: 00        .byte $00

- D - I - 0x014256 11:A246: 8D 90     .dbyt off_AD90 - $2000
- D - I - 0x014258 11:A248: 0B        .byte $0B

- D - I - 0x014259 11:A249: FF        .byte con_выход



off_A24A_81:
- D - I - 0x01425A 11:A24A: 13        .byte $13

- D - I - 0x01425B 11:A24B: F1        .byte con_координаты_Y_X
- D - I - 0x01425C 11:A24C: 24        .byte $24
- D - I - 0x01425D 11:A24D: 4E        .byte $4E

- D - I - 0x01425E 11:A24E: EF        .byte con_повторы + $0F

- D - I - 0x01425F 11:A24F: F7        .byte con_F7
- D - I - 0x014260 11:A250: 0F        .byte $0F
- D - I - 0x014261 11:A251: 00        .byte $00
- D - I - 0x014262 11:A252: 00        .byte $00

- D - I - 0x014263 11:A253: 96 D1     .dbyt off_B6D1 - $2000
- D - I - 0x014265 11:A255: 01        .byte $01

- D - I - 0x014266 11:A256: F7        .byte con_F7
- D - I - 0x014267 11:A257: 00        .byte $00
- D - I - 0x014268 11:A258: 00        .byte $00
- D - I - 0x014269 11:A259: 00        .byte $00

- D - I - 0x01426A 11:A25A: 96 D1     .dbyt off_B6D1 - $2000
- D - I - 0x01426C 11:A25C: 01        .byte $01

- D - I - 0x01426D 11:A25D: F0        .byte con_повторить

- D - I - 0x01426E 11:A25E: FF        .byte con_выход



off_A25F_82:
- D - I - 0x01426F 11:A25F: 02        .byte $02

- D - I - 0x014270 11:A260: E3        .byte con_повторы + $03

- D - I - 0x014271 11:A261: F1        .byte con_координаты_Y_X
- D - I - 0x014272 11:A262: 0E        .byte $0E
- D - I - 0x014273 11:A263: FE        .byte $FE

- D - I - 0x014274 11:A264: 8D F0     .dbyt off_ADF0 - $2000

- D - I - 0x014276 11:A266: F7        .byte con_F7
- D - I - 0x014277 11:A267: 26        .byte $26
- D - I - 0x014278 11:A268: 00        .byte $00
- D - I - 0x014279 11:A269: 00        .byte $00

- D - I - 0x01427A 11:A26A: 0A        .byte $0A

- D - I - 0x01427B 11:A26B: F0        .byte con_повторить

- D - I - 0x01427C 11:A26C: F7        .byte con_F7
- D - I - 0x01427D 11:A26D: 00        .byte $00
- D - I - 0x01427E 11:A26E: 00        .byte $00
- D - I - 0x01427F 11:A26F: 00        .byte $00

- D - I - 0x014280 11:A270: E6        .byte con_повторы + $06

- D - I - 0x014281 11:A271: 8E 12     .dbyt off_AE12 - $2000

- D - I - 0x014283 11:A273: F7        .byte con_F7
- D - I - 0x014284 11:A274: E0        .byte $E0
- D - I - 0x014285 11:A275: 00        .byte $00
- D - I - 0x014286 11:A276: 00        .byte $00

- D - I - 0x014287 11:A277: 01        .byte $01

- D - I - 0x014288 11:A278: 8E 29     .dbyt off_AE29 - $2000

- D - I - 0x01428A 11:A27A: F7        .byte con_F7
- D - I - 0x01428B 11:A27B: 20        .byte $20
- D - I - 0x01428C 11:A27C: 00        .byte $00
- D - I - 0x01428D 11:A27D: 00        .byte $00

- D - I - 0x01428E 11:A27E: 01        .byte $01

- D - I - 0x01428F 11:A27F: 8E 38     .dbyt off_AE38 - $2000

- D - I - 0x014291 11:A281: F7        .byte con_F7
- D - I - 0x014292 11:A282: E0        .byte $E0
- D - I - 0x014293 11:A283: 00        .byte $00
- D - I - 0x014294 11:A284: 00        .byte $00

- D - I - 0x014295 11:A285: 01        .byte $01

- D - I - 0x014296 11:A286: 8E 4C     .dbyt off_AE4C - $2000

- D - I - 0x014298 11:A288: F7        .byte con_F7
- D - I - 0x014299 11:A289: 20        .byte $20
- D - I - 0x01429A 11:A28A: 00        .byte $00
- D - I - 0x01429B 11:A28B: 00        .byte $00

- D - I - 0x01429C 11:A28C: 01        .byte $01

- D - I - 0x01429D 11:A28D: F0        .byte con_повторить

@бесконечный_цикл:
- D - I - 0x01429E 11:A28E: F7        .byte con_F7
- D - I - 0x01429F 11:A28F: F0        .byte $F0
- D - I - 0x0142A0 11:A290: 00        .byte $00
- D - I - 0x0142A1 11:A291: 00        .byte $00

- D - I - 0x0142A2 11:A292: 8E 08     .dbyt off_AE08 - $2000
- D - I - 0x0142A4 11:A294: 01        .byte $01

- D - I - 0x0142A5 11:A295: F7        .byte con_F7
- D - I - 0x0142A6 11:A296: 10        .byte $10
- D - I - 0x0142A7 11:A297: 00        .byte $00
- D - I - 0x0142A8 11:A298: 00        .byte $00

- D - I - 0x0142A9 11:A299: 8E 08     .dbyt off_AE08 - $2000
- D - I - 0x0142AB 11:A29B: 01        .byte $01

- D - I - 0x0142AC 11:A29C: A2 8E     .dbyt @бесконечный_цикл



off_A29E_83:
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



off_A2CB_84:
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



off_A2F8_85:
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



off_A305_86:
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



off_A318_87:
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



off_A36F_89:
- D - I - 0x01437F 11:A36F: 14        .byte $14

- D - I - 0x014380 11:A370: F1        .byte con_координаты_Y_X
- D - I - 0x014381 11:A371: EE        .byte $EE
- D - I - 0x014382 11:A372: 3C        .byte $3C

- D - I - 0x014383 11:A373: F7        .byte con_F7
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

- D - I - 0x014391 11:A381: F7        .byte con_F7
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

- D - I - 0x01439F 11:A38F: F7        .byte con_F7
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

- D - I - 0x0143AE 11:A39E: F7        .byte con_F7
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
- D - I - 0x0143BC 11:A3AC: F7        .byte con_F7
- D - I - 0x0143BD 11:A3AD: 00        .byte $00
- D - I - 0x0143BE 11:A3AE: 00        .byte $00
- D - I - 0x0143BF 11:A3AF: 00        .byte $00

- D - I - 0x0143C0 11:A3B0: 90 7D     .dbyt off_B07D - $2000
- D - I - 0x0143C2 11:A3B2: 01        .byte $01

- D - I - 0x0143C3 11:A3B3: 90 94     .dbyt off_B094 - $2000
- D - I - 0x0143C5 11:A3B5: 01        .byte $01

- D - I - 0x0143C6 11:A3B6: A3 AC     .dbyt @бесконечный_цикл



off_A3B8_8A:
- D - I - 0x0143C8 11:A3B8: 15        .byte $15

- D - I - 0x0143C9 11:A3B9: F1        .byte con_координаты_Y_X
- D - I - 0x0143CA 11:A3BA: 2A        .byte $2A
- D - I - 0x0143CB 11:A3BB: 44        .byte $44

- D - I - 0x0143CC 11:A3BC: 90 B9     .dbyt off_B0B9 - $2000
- D - I - 0x0143CE 11:A3BE: 0F        .byte $0F

- D - I - 0x0143CF 11:A3BF: F7        .byte con_F7
- D - I - 0x0143D0 11:A3C0: 00        .byte $00
- D - I - 0x0143D1 11:A3C1: 04        .byte $04
- D - I - 0x0143D2 11:A3C2: FE        .byte $FE

- D - I - 0x0143D3 11:A3C3: 0F        .byte $0F

- D - I - 0x0143D4 11:A3C4: FF        .byte con_выход



off_A3C5_8B:
- D - I - 0x0143D5 11:A3C5: 24        .byte $24

- D - I - 0x0143D6 11:A3C6: F1        .byte con_координаты_Y_X
- D - I - 0x0143D7 11:A3C7: 2C        .byte $2C
- D - I - 0x0143D8 11:A3C8: 44        .byte $44

- D - I - 0x0143D9 11:A3C9: 90 F0     .dbyt off_B0F0 - $2000

- D - I - 0x0143DB 11:A3CB: FF        .byte con_выход



off_A3CC_8C:
- D - I - 0x0143DC 11:A3CC: 12        .byte $12

- D - I - 0x0143DD 11:A3CD: F1        .byte con_координаты_Y_X
- D - I - 0x0143DE 11:A3CE: 35        .byte $35
- D - I - 0x0143DF 11:A3CF: 3E        .byte $3E

- D - I - 0x0143E0 11:A3D0: 91 37     .dbyt off_B137 - $2000

- D - I - 0x0143E2 11:A3D2: FF        .byte con_выход



off_A3D3_8D:
- D - I - 0x0143E3 11:A3D3: 36        .byte $36

- D - I - 0x0143E4 11:A3D4: F1        .byte con_координаты_Y_X
- D - I - 0x0143E5 11:A3D5: 30        .byte $30
- D - I - 0x0143E6 11:A3D6: 28        .byte $28

- D - I - 0x0143E7 11:A3D7: 91 5B     .dbyt off_B15B - $2000

- D - I - 0x0143E9 11:A3D9: FF        .byte con_выход



off_A3DA_8E:
- D - I - 0x0143EA 11:A3DA: 24        .byte $24

- D - I - 0x0143EB 11:A3DB: F1        .byte con_координаты_Y_X
- D - I - 0x0143EC 11:A3DC: 0A        .byte $0A
- D - I - 0x0143ED 11:A3DD: 36        .byte $36

- D - I - 0x0143EE 11:A3DE: 91 CB     .dbyt off_B1CB - $2000

- D - I - 0x0143F0 11:A3E0: FF        .byte con_выход



off_A3E1_8F:
- D - I - 0x0143F1 11:A3E1: 21        .byte $21

- D - I - 0x0143F2 11:A3E2: F1        .byte con_координаты_Y_X
- D - I - 0x0143F3 11:A3E3: 28        .byte $28
- D - I - 0x0143F4 11:A3E4: 50        .byte $50

- D - I - 0x0143F5 11:A3E5: 91 DA     .dbyt off_B1DA - $2000

- D - I - 0x0143F7 11:A3E7: FF        .byte con_выход



off_A3E8_90:
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

- D - I - 0x01440D 11:A3FD: F7        .byte con_F7
- D - I - 0x01440E 11:A3FE: 19        .byte $19
- D - I - 0x01440F 11:A3FF: 00        .byte $00
- D - I - 0x014410 11:A400: F9        .byte $F9

- D - I - 0x014411 11:A401: 0B        .byte $0B

- D - I - 0x014412 11:A402: F7        .byte con_F7
- D - I - 0x014413 11:A403: 00        .byte $00
- D - I - 0x014414 11:A404: 00        .byte $00
- D - I - 0x014415 11:A405: 00        .byte $00

- D - I - 0x014416 11:A406: F1        .byte con_координаты_Y_X
- D - I - 0x014417 11:A407: 3E        .byte $3E
- D - I - 0x014418 11:A408: BE        .byte $BE

- D - I - 0x014419 11:A409: 97 B3     .dbyt off_B7B3 - $2000

- D - I - 0x01441B 11:A40B: FF        .byte con_выход



off_A40C_93:
- D - I - 0x01441C 11:A40C: 14        .byte $14

- D - I - 0x01441D 11:A40D: F1        .byte con_координаты_Y_X
- D - I - 0x01441E 11:A40E: 9F        .byte $9F
- D - I - 0x01441F 11:A40F: 44        .byte $44

- D - I - 0x014420 11:A410: 89 73     .dbyt off_A973 - $2000

- D - I - 0x014422 11:A412: F7        .byte con_F7
- D - I - 0x014423 11:A413: 20        .byte $20
- D - I - 0x014424 11:A414: FF        .byte $FF
- D - I - 0x014425 11:A415: 00        .byte $00

- D - I - 0x014426 11:A416: 64        .byte $64
; таймер замаха джаиро сразу перед ударом
- D - I - 0x014427 11:A417: E5        .byte con_повторы + $09

- D - I - 0x014428 11:A418: ED        .byte con_повторы + $0D

- D - I - 0x014429 11:A419: F7        .byte con_F7
- D - I - 0x01442A 11:A41A: 1F        .byte $1F
- D - I - 0x01442B 11:A41B: 00        .byte $00
- D - I - 0x01442C 11:A41C: 00        .byte $00

- D - I - 0x01442D 11:A41D: 89 73     .dbyt off_A973 - $2000
- D - I - 0x01442F 11:A41F: 01        .byte $01

- D - I - 0x014430 11:A420: F7        .byte con_F7
- D - I - 0x014431 11:A421: F1        .byte $F1
- D - I - 0x014432 11:A422: 00        .byte $00
- D - I - 0x014433 11:A423: 00        .byte $00

- D - I - 0x014434 11:A424: 89 73     .dbyt off_A973 - $2000
- D - I - 0x014436 11:A426: 01        .byte $01

- D - I - 0x014437 11:A427: F0        .byte con_повторить

- D - I - 0x014438 11:A428: F0        .byte con_повторить

- D - I - 0x014439 11:A429: F7        .byte con_F7
- D - I - 0x01443A 11:A42A: 79        .byte $79
- D - I - 0x01443B 11:A42B: 00        .byte $00
- D - I - 0x01443C 11:A42C: 00        .byte $00

- D - I - 0x01443D 11:A42D: 03        .byte $03

- D - I - 0x01443E 11:A42E: F1        .byte con_координаты_Y_X
- D - I - 0x01443F 11:A42F: 3E        .byte $3E
- D - I - 0x014440 11:A430: BE        .byte $BE

- D - I - 0x014441 11:A431: 89 73     .dbyt off_A973 - $2000

- D - I - 0x014443 11:A433: FF        .byte con_выход



off_A434_94:
- D - I - 0x014444 11:A434: 31        .byte $31

- D - I - 0x014445 11:A435: F1        .byte con_координаты_Y_X
- D - I - 0x014446 11:A436: 06        .byte $06
- D - I - 0x014447 11:A437: A8        .byte $A8

- D - I - 0x014448 11:A438: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x01444A 11:A43A: F7        .byte con_F7
- D - I - 0x01444B 11:A43B: 29        .byte $29
- D - I - 0x01444C 11:A43C: 00        .byte $00
- D - I - 0x01444D 11:A43D: 00        .byte $00

- D - I - 0x01444E 11:A43E: 12        .byte $12

- D - I - 0x01444F 11:A43F: F1        .byte con_координаты_Y_X
- D - I - 0x014450 11:A440: 3E        .byte $3E
- D - I - 0x014451 11:A441: BE        .byte $BE

- D - I - 0x014452 11:A442: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x014454 11:A444: F7        .byte con_F7
- D - I - 0x014455 11:A445: 00        .byte $00
- D - I - 0x014456 11:A446: 00        .byte $00
- D - I - 0x014457 11:A447: 00        .byte $00

- D - I - 0x014458 11:A448: FF        .byte con_выход



off_A449_95:
- D - I - 0x014459 11:A449: 21        .byte $21

- D - I - 0x01445A 11:A44A: F1        .byte con_координаты_Y_X
- D - I - 0x01445B 11:A44B: 30        .byte $30
- D - I - 0x01445C 11:A44C: EF        .byte $EF

- D - I - 0x01445D 11:A44D: 94 3D     .dbyt off_B43D - $2000
- D - I - 0x01445F 11:A44F: 0A        .byte $0A

- D - I - 0x014460 11:A450: F7        .byte con_F7
- D - I - 0x014461 11:A451: 07        .byte $07
- D - I - 0x014462 11:A452: 00        .byte $00
- D - I - 0x014463 11:A453: 00        .byte $00

- D - I - 0x014464 11:A454: 0B        .byte $0B

- D - I - 0x014465 11:A455: FF        .byte con_выход



off_A456_96:
- D - I - 0x014466 11:A456: 21        .byte $21

- D - I - 0x014467 11:A457: F1        .byte con_координаты_Y_X
- D - I - 0x014468 11:A458: 30        .byte $30
- D - I - 0x014469 11:A459: 89        .byte $89

- D - I - 0x01446A 11:A45A: 92 37     .dbyt off_B237 - $2000
- D - I - 0x01446C 11:A45C: 0A        .byte $0A

- D - I - 0x01446D 11:A45D: F7        .byte con_F7
- D - I - 0x01446E 11:A45E: 09        .byte $09
- D - I - 0x01446F 11:A45F: 00        .byte $00
- D - I - 0x014470 11:A460: 00        .byte $00

- D - I - 0x014471 11:A461: 0B        .byte $0B

- D - I - 0x014472 11:A462: FF        .byte con_выход



off_A463_97:
- D - I - 0x014473 11:A463: 21        .byte $21

- D - I - 0x014474 11:A464: F1        .byte con_координаты_Y_X
- D - I - 0x014475 11:A465: 44        .byte $44
- D - I - 0x014476 11:A466: 3C        .byte $3C

- D - I - 0x014477 11:A467: 92 76     .dbyt off_B276 - $2000
- D - I - 0x014479 11:A469: 0F        .byte $0F

- D - I - 0x01447A 11:A46A: F7        .byte con_F7
- D - I - 0x01447B 11:A46B: B0        .byte $B0
- D - I - 0x01447C 11:A46C: 00        .byte $00
- D - I - 0x01447D 11:A46D: 00        .byte $00

- D - I - 0x01447E 11:A46E: 04        .byte $04

- D - I - 0x01447F 11:A46F: FF        .byte con_выход



off_A470_98:
- D - I - 0x014480 11:A470: 21        .byte $21

- D - I - 0x014481 11:A471: F1        .byte con_координаты_Y_X
- D - I - 0x014482 11:A472: 34        .byte $34
- D - I - 0x014483 11:A473: 2C        .byte $2C

- D - I - 0x014484 11:A474: 92 B5     .dbyt off_B2B5 - $2000

- D - I - 0x014486 11:A476: FF        .byte con_выход



off_A477_99:
- D - I - 0x014487 11:A477: 21        .byte $21

- D - I - 0x014488 11:A478: F1        .byte con_координаты_Y_X
- D - I - 0x014489 11:A479: 18        .byte $18
- D - I - 0x01448A 11:A47A: 3C        .byte $3C

- D - I - 0x01448B 11:A47B: 92 B5     .dbyt off_B2B5 - $2000
- D - I - 0x01448D 11:A47D: 1E        .byte $1E

- D - I - 0x01448E 11:A47E: F7        .byte con_F7
- D - I - 0x01448F 11:A47F: 10        .byte $10
- D - I - 0x014490 11:A480: 00        .byte $00
- D - I - 0x014491 11:A481: 00        .byte $00

- D - I - 0x014492 11:A482: 18        .byte $18

- D - I - 0x014493 11:A483: FF        .byte con_выход



off_A484_9A:
- D - I - 0x014494 11:A484: 3C        .byte $3C

- D - I - 0x014495 11:A485: F1        .byte con_координаты_Y_X
- D - I - 0x014496 11:A486: AE        .byte $AE
- D - I - 0x014497 11:A487: 2E        .byte $2E

- D - I - 0x014498 11:A488: 93 AB     .dbyt off_B3AB - $2000

- D - I - 0x01449A 11:A48A: F7        .byte con_F7
- D - I - 0x01449B 11:A48B: 20        .byte $20
- D - I - 0x01449C 11:A48C: FF        .byte $FF
- D - I - 0x01449D 11:A48D: 00        .byte $00

- D - I - 0x01449E 11:A48E: 50        .byte $50

- D - I - 0x01449F 11:A48F: FF        .byte con_выход



off_A490_9B:
- D - I - 0x0144A0 11:A490: 25        .byte $25

- D - I - 0x0144A1 11:A491: F1        .byte con_координаты_Y_X
- D - I - 0x0144A2 11:A492: 38        .byte $38
- D - I - 0x0144A3 11:A493: 3C        .byte $3C

- D - I - 0x0144A4 11:A494: 92 F8     .dbyt off_B2F8 - $2000

- D - I - 0x0144A6 11:A496: FF        .byte con_выход



off_A497_9C:
- D - I - 0x0144A7 11:A497: 24        .byte $24

- D - I - 0x0144A8 11:A498: F1        .byte con_координаты_Y_X
- D - I - 0x0144A9 11:A499: 30        .byte $30
- D - I - 0x0144AA 11:A49A: C3        .byte $C3

- D - I - 0x0144AB 11:A49B: 93 4D     .dbyt off_B34D - $2000

@бесконечный_цикл:
- D - I - 0x0144AD 11:A49D: F7        .byte con_F7
- D - I - 0x0144AE 11:A49E: 0F        .byte $0F
- D - I - 0x0144AF 11:A49F: 00        .byte $00
- D - I - 0x0144B0 11:A4A0: 00        .byte $00

- D - I - 0x0144B1 11:A4A1: 01        .byte $01

- D - I - 0x0144B2 11:A4A2: F7        .byte con_F7
- D - I - 0x0144B3 11:A4A3: 00        .byte $00
- D - I - 0x0144B4 11:A4A4: 00        .byte $00
- D - I - 0x0144B5 11:A4A5: 00        .byte $00

- D - I - 0x0144B6 11:A4A6: 01        .byte $01

- D - I - 0x0144B7 11:A4A7: A4 9D     .dbyt @бесконечный_цикл

- - - - - 0x0144B9 11:A4A9: FF        .byte con_выход



off_A4AA_9D:
- D - I - 0x0144BA 11:A4AA: 18        .byte $18

- D - I - 0x0144BB 11:A4AB: F1        .byte con_координаты_Y_X
- D - I - 0x0144BC 11:A4AC: 1C        .byte $1C
- D - I - 0x0144BD 11:A4AD: 38        .byte $38

- D - I - 0x0144BE 11:A4AE: 93 BA     .dbyt off_B3BA - $2000
- D - I - 0x0144C0 11:A4B0: 28        .byte $28

- D - I - 0x0144C1 11:A4B1: F7        .byte con_F7
- D - I - 0x0144C2 11:A4B2: 00        .byte $00
- D - I - 0x0144C3 11:A4B3: 00        .byte $00
- D - I - 0x0144C4 11:A4B4: 01        .byte $01

- D - I - 0x0144C5 11:A4B5: 2C        .byte $2C

- D - I - 0x0144C6 11:A4B6: FF        .byte con_выход



off_A4B7_9E:
- D - I - 0x0144C7 11:A4B7: 3B        .byte $3B

- D - I - 0x0144C8 11:A4B8: F1        .byte con_координаты_Y_X
- D - I - 0x0144C9 11:A4B9: A2        .byte $A2
- D - I - 0x0144CA 11:A4BA: 44        .byte $44

- D - I - 0x0144CB 11:A4BB: 89 59     .dbyt off_A959 - $2000

- D - I - 0x0144CD 11:A4BD: F7        .byte con_F7
- D - I - 0x0144CE 11:A4BE: 20        .byte $20
- D - I - 0x0144CF 11:A4BF: FF        .byte $FF
- D - I - 0x0144D0 11:A4C0: 00        .byte $00

- D - I - 0x0144D1 11:A4C1: 64        .byte $64

- D - I - 0x0144D2 11:A4C2: FF        .byte con_выход



off_A4C3_9F:
- D - I - 0x0144D3 11:A4C3: 3B        .byte $3B

- D - I - 0x0144D4 11:A4C4: F1        .byte con_координаты_Y_X
- D - I - 0x0144D5 11:A4C5: 9F        .byte $9F
- D - I - 0x0144D6 11:A4C6: 44        .byte $44

- D - I - 0x0144D7 11:A4C7: 89 73     .dbyt off_A973 - $2000

- D - I - 0x0144D9 11:A4C9: F7        .byte con_F7
- D - I - 0x0144DA 11:A4CA: 20        .byte $20
- D - I - 0x0144DB 11:A4CB: FF        .byte $FF
- D - I - 0x0144DC 11:A4CC: 00        .byte $00

- D - I - 0x0144DD 11:A4CD: 64        .byte $64
; таймер удара Шнайдера
- D - I - 0x0144DE 11:A4CE: E2        .byte con_повторы + $04

- D - I - 0x0144DF 11:A4CF: EE        .byte con_повторы + $0F

- D - I - 0x0144E0 11:A4D0: F7        .byte con_F7
- D - I - 0x0144E1 11:A4D1: 2E        .byte $2E
- D - I - 0x0144E2 11:A4D2: 00        .byte $00
- D - I - 0x0144E3 11:A4D3: 00        .byte $00

- D - I - 0x0144E4 11:A4D4: 89 73     .dbyt off_A973 - $2000
- D - I - 0x0144E6 11:A4D6: 01        .byte $01

- D - I - 0x0144E7 11:A4D7: F7        .byte con_F7
- D - I - 0x0144E8 11:A4D8: E2        .byte $E2
- D - I - 0x0144E9 11:A4D9: 00        .byte $00
- D - I - 0x0144EA 11:A4DA: 00        .byte $00

- D - I - 0x0144EB 11:A4DB: 89 73     .dbyt off_A973 - $2000
- D - I - 0x0144ED 11:A4DD: 01        .byte $01

- D - I - 0x0144EE 11:A4DE: F0        .byte con_повторить

- D - I - 0x0144EF 11:A4DF: F0        .byte con_повторить

- D - I - 0x0144F0 11:A4E0: F7        .byte con_F7
- D - I - 0x0144F1 11:A4E1: 79        .byte $79
- D - I - 0x0144F2 11:A4E2: 00        .byte $00
- D - I - 0x0144F3 11:A4E3: 00        .byte $00

- D - I - 0x0144F4 11:A4E4: 03        .byte $03

- D - I - 0x0144F5 11:A4E5: F1        .byte con_координаты_Y_X
- D - I - 0x0144F6 11:A4E6: 3E        .byte $3E
- D - I - 0x0144F7 11:A4E7: BE        .byte $BE

- D - I - 0x0144F8 11:A4E8: 89 73     .dbyt off_A973 - $2000

- D - I - 0x0144FA 11:A4EA: FF        .byte con_выход



off_A4EB_A0:
- D - I - 0x0144FB 11:A4EB: 38        .byte $38

- D - I - 0x0144FC 11:A4EC: F1        .byte con_координаты_Y_X
- D - I - 0x0144FD 11:A4ED: 16        .byte $16
- D - I - 0x0144FE 11:A4EE: 8E        .byte $8E

- D - I - 0x0144FF 11:A4EF: F7        .byte con_F7
- D - I - 0x014500 11:A4F0: 29        .byte $29
- D - I - 0x014501 11:A4F1: 00        .byte $00
- D - I - 0x014502 11:A4F2: 07        .byte $07

- D - I - 0x014503 11:A4F3: 8D D6     .dbyt off_ADD6 - $2000
- D - I - 0x014505 11:A4F5: 0B        .byte $0B

- D - I - 0x014506 11:A4F6: FF        .byte con_выход



off_A4F7_A1:
- D - I - 0x014507 11:A4F7: 14        .byte $14

- D - I - 0x014508 11:A4F8: F1        .byte con_координаты_Y_X
- D - I - 0x014509 11:A4F9: 1E        .byte $1E
- D - I - 0x01450A 11:A4FA: 36        .byte $36

- D - I - 0x01450B 11:A4FB: F7        .byte con_F7
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



off_A50E_A2:
- D - I - 0x01451E 11:A50E: 07        .byte $07

- D - I - 0x01451F 11:A50F: F1        .byte con_координаты_Y_X
- D - I - 0x014520 11:A510: 12        .byte $12
- D - I - 0x014521 11:A511: 8E        .byte $8E

- D - I - 0x014522 11:A512: EC        .byte con_повторы + $0C

- D - I - 0x014523 11:A513: F7        .byte con_F7
- D - I - 0x014524 11:A514: 29        .byte $29
- D - I - 0x014525 11:A515: 00        .byte $00
- D - I - 0x014526 11:A516: 00        .byte $00

- D - I - 0x014527 11:A517: 8D D6     .dbyt off_ADD6 - $2000
- D - I - 0x014529 11:A519: 01        .byte $01

- D - I - 0x01452A 11:A51A: F7        .byte con_F7
- D - I - 0x01452B 11:A51B: 00        .byte $00
- D - I - 0x01452C 11:A51C: 00        .byte $00
- D - I - 0x01452D 11:A51D: 00        .byte $00

- D - I - 0x01452E 11:A51E: 01        .byte $01

- D - I - 0x01452F 11:A51F: F0        .byte con_повторить

- D - I - 0x014530 11:A520: F7        .byte con_F7
- D - I - 0x014531 11:A521: 00        .byte $00
- D - I - 0x014532 11:A522: 00        .byte $00
- D - I - 0x014533 11:A523: 00        .byte $00

- D - I - 0x014534 11:A524: F1        .byte con_координаты_Y_X
- D - I - 0x014535 11:A525: 3E        .byte $3E
- D - I - 0x014536 11:A526: BE        .byte $BE

- D - I - 0x014537 11:A527: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x014539 11:A529: FF        .byte con_выход



off_A52A_A3:
- D - I - 0x01453A 11:A52A: 15        .byte $15

- D - I - 0x01453B 11:A52B: F1        .byte con_координаты_Y_X
- D - I - 0x01453C 11:A52C: 34        .byte $34
- D - I - 0x01453D 11:A52D: 3C        .byte $3C

- D - I - 0x01453E 11:A52E: 8E 5D     .dbyt off_AE5D - $2000

- D - I - 0x014540 11:A530: E5        .byte con_повторы + $05

- D - I - 0x014541 11:A531: F7        .byte con_F7
- D - I - 0x014542 11:A532: 20        .byte $20
- D - I - 0x014543 11:A533: 00        .byte $00
- D - I - 0x014544 11:A534: 00        .byte $00

- D - I - 0x014545 11:A535: 01        .byte $01

- D - I - 0x014546 11:A536: F7        .byte con_F7
- D - I - 0x014547 11:A537: E0        .byte $E0
- D - I - 0x014548 11:A538: 00        .byte $00
- D - I - 0x014549 11:A539: 00        .byte $00

- D - I - 0x01454A 11:A53A: 01        .byte $01

- D - I - 0x01454B 11:A53B: F0        .byte con_повторить

- D - I - 0x01454C 11:A53C: F7        .byte con_F7
- D - I - 0x01454D 11:A53D: 10        .byte $10
- D - I - 0x01454E 11:A53E: 00        .byte $00
- D - I - 0x01454F 11:A53F: 00        .byte $00

- D - I - 0x014550 11:A540: 02        .byte $02

- D - I - 0x014551 11:A541: F7        .byte con_F7
- D - I - 0x014552 11:A542: 00        .byte $00
- D - I - 0x014553 11:A543: 00        .byte $00
- D - I - 0x014554 11:A544: 00        .byte $00

- D - I - 0x014555 11:A545: FF        .byte con_выход



off_A546_A4:
- D - I - 0x014556 11:A546: 01        .byte $01

- D - I - 0x014557 11:A547: F1        .byte con_координаты_Y_X
- D - I - 0x014558 11:A548: 30        .byte $30
- D - I - 0x014559 11:A549: 3C        .byte $3C

- D - I - 0x01455A 11:A54A: 8A 8C     .dbyt off_AA8C - $2000

- D - I - 0x01455C 11:A54C: FF        .byte con_выход



off_A54D_A5:
- D - I - 0x01455D 11:A54D: 3B        .byte $3B

- D - I - 0x01455E 11:A54E: F1        .byte con_координаты_Y_X
- D - I - 0x01455F 11:A54F: A2        .byte $A2
- D - I - 0x014560 11:A550: 2E        .byte $2E

- D - I - 0x014561 11:A551: 93 AB     .dbyt off_B3AB - $2000

- D - I - 0x014563 11:A553: F7        .byte con_F7
- D - I - 0x014564 11:A554: 20        .byte $20
- D - I - 0x014565 11:A555: FF        .byte $FF
- D - I - 0x014566 11:A556: 00        .byte $00

- D - I - 0x014567 11:A557: 64        .byte $64

- D - I - 0x014568 11:A558: FF        .byte con_выход



off_A559_A6:
- D - I - 0x014569 11:A559: 12        .byte $12

- D - I - 0x01456A 11:A55A: E3        .byte con_повторы + $03

- D - I - 0x01456B 11:A55B: F1        .byte con_координаты_Y_X
- D - I - 0x01456C 11:A55C: 12        .byte $12
- D - I - 0x01456D 11:A55D: 8E        .byte $8E

- D - I - 0x01456E 11:A55E: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x014570 11:A560: F7        .byte con_F7
- D - I - 0x014571 11:A561: 29        .byte $29
- D - I - 0x014572 11:A562: 00        .byte $00
- D - I - 0x014573 11:A563: 00        .byte $00

- D - I - 0x014574 11:A564: 0E        .byte $0E

- D - I - 0x014575 11:A565: F0        .byte con_повторить

- D - I - 0x014576 11:A566: F1        .byte con_координаты_Y_X
- D - I - 0x014577 11:A567: 3E        .byte $3E
- D - I - 0x014578 11:A568: BE        .byte $BE

- D - I - 0x014579 11:A569: F7        .byte con_F7
- D - I - 0x01457A 11:A56A: 00        .byte $00
- D - I - 0x01457B 11:A56B: 00        .byte $00
- D - I - 0x01457C 11:A56C: 00        .byte $00

- D - I - 0x01457D 11:A56D: 8D D6     .dbyt off_ADD6 - $2000

- D - I - 0x01457F 11:A56F: FF        .byte con_выход



off_A570_A7:
- D - I - 0x014580 11:A570: 1E        .byte $1E

- D - I - 0x014581 11:A571: F1        .byte con_координаты_Y_X
- D - I - 0x014582 11:A572: 1C        .byte $1C
- D - I - 0x014583 11:A573: 3C        .byte $3C

- D - I - 0x014584 11:A574: 94 5E     .dbyt off_B45E - $2000

- D - I - 0x014586 11:A576: F7        .byte con_F7
- D - I - 0x014587 11:A577: 00        .byte $00
- D - I - 0x014588 11:A578: 00        .byte $00
- D - I - 0x014589 11:A579: 00        .byte $00

- D - I - 0x01458A 11:A57A: 7F        .byte $7F
- D - I - 0x01458B 11:A57B: 21        .byte $21

- D - I - 0x01458C 11:A57C: F7        .byte con_F7
- D - I - 0x01458D 11:A57D: 00        .byte $00
- D - I - 0x01458E 11:A57E: 04        .byte $04
- D - I - 0x01458F 11:A57F: 00        .byte $00

- D - I - 0x014590 11:A580: 07        .byte $07

- D - I - 0x014591 11:A581: F7        .byte con_F7
- D - I - 0x014592 11:A582: 00        .byte $00
- D - I - 0x014593 11:A583: 00        .byte $00
- D - I - 0x014594 11:A584: 00        .byte $00

- D - I - 0x014595 11:A585: 02        .byte $02

- D - I - 0x014596 11:A586: F7        .byte con_F7
- D - I - 0x014597 11:A587: 00        .byte $00
- D - I - 0x014598 11:A588: 04        .byte $04
- D - I - 0x014599 11:A589: 00        .byte $00

- D - I - 0x01459A 11:A58A: 1B        .byte $1B

- D - I - 0x01459B 11:A58B: F7        .byte con_F7
- D - I - 0x01459C 11:A58C: 00        .byte $00
- D - I - 0x01459D 11:A58D: 00        .byte $00
- D - I - 0x01459E 11:A58E: 00        .byte $00

- D - I - 0x01459F 11:A58F: F7        .byte con_F7
- D - I - 0x0145A0 11:A590: F0        .byte $F0
- D - I - 0x0145A1 11:A591: 00        .byte $00
- D - I - 0x0145A2 11:A592: 00        .byte $00

- D - I - 0x0145A3 11:A593: 05        .byte $05

- D - I - 0x0145A4 11:A594: F7        .byte con_F7
- D - I - 0x0145A5 11:A595: 10        .byte $10
- D - I - 0x0145A6 11:A596: 00        .byte $00
- D - I - 0x0145A7 11:A597: 00        .byte $00

- D - I - 0x0145A8 11:A598: 05        .byte $05

- D - I - 0x0145A9 11:A599: F7        .byte con_F7
- D - I - 0x0145AA 11:A59A: F0        .byte $F0
- D - I - 0x0145AB 11:A59B: 00        .byte $00
- D - I - 0x0145AC 11:A59C: 00        .byte $00

- D - I - 0x0145AD 11:A59D: 04        .byte $04

- D - I - 0x0145AE 11:A59E: F7        .byte con_F7
- D - I - 0x0145AF 11:A59F: 10        .byte $10
- D - I - 0x0145B0 11:A5A0: 00        .byte $00
- D - I - 0x0145B1 11:A5A1: 00        .byte $00

- D - I - 0x0145B2 11:A5A2: 04        .byte $04

- D - I - 0x0145B3 11:A5A3: F7        .byte con_F7
- D - I - 0x0145B4 11:A5A4: F0        .byte $F0
- D - I - 0x0145B5 11:A5A5: 00        .byte $00
- D - I - 0x0145B6 11:A5A6: 00        .byte $00

- D - I - 0x0145B7 11:A5A7: 03        .byte $03

- D - I - 0x0145B8 11:A5A8: F7        .byte con_F7
- D - I - 0x0145B9 11:A5A9: 10        .byte $10
- D - I - 0x0145BA 11:A5AA: 00        .byte $00
- D - I - 0x0145BB 11:A5AB: 00        .byte $00

- D - I - 0x0145BC 11:A5AC: 03        .byte $03

- D - I - 0x0145BD 11:A5AD: F7        .byte con_F7
- D - I - 0x0145BE 11:A5AE: F0        .byte $F0
- D - I - 0x0145BF 11:A5AF: 00        .byte $00
- D - I - 0x0145C0 11:A5B0: 00        .byte $00

- D - I - 0x0145C1 11:A5B1: 02        .byte $02

- D - I - 0x0145C2 11:A5B2: F7        .byte con_F7
- D - I - 0x0145C3 11:A5B3: 10        .byte $10
- D - I - 0x0145C4 11:A5B4: 00        .byte $00
- D - I - 0x0145C5 11:A5B5: 00        .byte $00

- D - I - 0x0145C6 11:A5B6: 02        .byte $02

- D - I - 0x0145C7 11:A5B7: F7        .byte con_F7
- D - I - 0x0145C8 11:A5B8: F0        .byte $F0
- D - I - 0x0145C9 11:A5B9: 00        .byte $00
- D - I - 0x0145CA 11:A5BA: 00        .byte $00

- D - I - 0x0145CB 11:A5BB: 01        .byte $01

- D - I - 0x0145CC 11:A5BC: F7        .byte con_F7
- D - I - 0x0145CD 11:A5BD: 10        .byte $10
- D - I - 0x0145CE 11:A5BE: 00        .byte $00
- D - I - 0x0145CF 11:A5BF: 00        .byte $00

- D - I - 0x0145D0 11:A5C0: 01        .byte $01

- D - I - 0x0145D1 11:A5C1: F7        .byte con_F7
- D - I - 0x0145D2 11:A5C2: 00        .byte $00
- D - I - 0x0145D3 11:A5C3: 00        .byte $00
- D - I - 0x0145D4 11:A5C4: 00        .byte $00

- D - I - 0x0145D5 11:A5C5: 2D        .byte $2D

- D - I - 0x0145D6 11:A5C6: E3        .byte con_повторы + $03

- D - I - 0x0145D7 11:A5C7: EB        .byte con_повторы + $0B

- D - I - 0x0145D8 11:A5C8: F7        .byte con_F7
- D - I - 0x0145D9 11:A5C9: 0F        .byte $0F
- D - I - 0x0145DA 11:A5CA: 00        .byte $00
- D - I - 0x0145DB 11:A5CB: 00        .byte $00

- D - I - 0x0145DC 11:A5CC: 01        .byte $01

- D - I - 0x0145DD 11:A5CD: F7        .byte con_F7
- D - I - 0x0145DE 11:A5CE: 00        .byte $00
- D - I - 0x0145DF 11:A5CF: 00        .byte $00
- D - I - 0x0145E0 11:A5D0: 00        .byte $00

- D - I - 0x0145E1 11:A5D1: 01        .byte $01

- D - I - 0x0145E2 11:A5D2: F0        .byte con_повторить

- D - I - 0x0145E3 11:A5D3: F0        .byte con_повторить

- D - I - 0x0145E4 11:A5D4: FF        .byte con_выход



off_A5D5_A8:
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

- D - I - 0x0145F0 11:A5E0: F7        .byte con_F7
- D - I - 0x0145F1 11:A5E1: 01        .byte $01
- D - I - 0x0145F2 11:A5E2: 00        .byte $00
- D - I - 0x0145F3 11:A5E3: 00        .byte $00

- D - I - 0x0145F4 11:A5E4: 01        .byte $01

- D - I - 0x0145F5 11:A5E5: F7        .byte con_F7
- D - I - 0x0145F6 11:A5E6: 00        .byte $00
- D - I - 0x0145F7 11:A5E7: 00        .byte $00
- D - I - 0x0145F8 11:A5E8: 00        .byte $00

- D - I - 0x0145F9 11:A5E9: 01        .byte $01

- D - I - 0x0145FA 11:A5EA: F0        .byte con_повторить

- D - I - 0x0145FB 11:A5EB: F0        .byte con_повторить

- D - I - 0x0145FC 11:A5EC: FF        .byte con_выход



off_A5ED_A9:
- D - I - 0x0145FD 11:A5ED: 27        .byte $27

- D - I - 0x0145FE 11:A5EE: F1        .byte con_координаты_Y_X
- D - I - 0x0145FF 11:A5EF: 2E        .byte $2E
- D - I - 0x014600 11:A5F0: 9E        .byte $9E

@бесконечный_цикл:
- D - I - 0x014601 11:A5F1: F7        .byte con_F7
- D - I - 0x014602 11:A5F2: 0F        .byte $0F
- D - I - 0x014603 11:A5F3: FE        .byte $FE
- D - I - 0x014604 11:A5F4: 00        .byte $00

- D - I - 0x014605 11:A5F5: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x014607 11:A5F7: 01        .byte $01

- D - I - 0x014608 11:A5F8: F7        .byte con_F7
- D - I - 0x014609 11:A5F9: 00        .byte $00
- D - I - 0x01460A 11:A5FA: FE        .byte $FE
- D - I - 0x01460B 11:A5FB: 00        .byte $00

- D - I - 0x01460C 11:A5FC: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x01460E 11:A5FE: 01        .byte $01

- D - I - 0x01460F 11:A5FF: A5 F1     .dbyt @бесконечный_цикл

- - - - - 0x014611 11:A601: FF        .byte con_выход



off_A602_AA:
- D - I - 0x014612 11:A602: 14        .byte $14

- D - I - 0x014613 11:A603: F1        .byte con_координаты_Y_X
- D - I - 0x014614 11:A604: 9B        .byte $9B
- D - I - 0x014615 11:A605: 48        .byte $48
; ???
- D - I - 0x014616 11:A606: 78        .byte $78
- D - I - 0x014617 11:A607: 78        .byte $78

- D - I - 0x014618 11:A608: 89 73     .dbyt off_A973 - $2000

- D - I - 0x01461A 11:A60A: F7        .byte con_F7
- D - I - 0x01461B 11:A60B: 20        .byte $20
- D - I - 0x01461C 11:A60C: FF        .byte $FF
- D - I - 0x01461D 11:A60D: 00        .byte $00

- D - I - 0x01461E 11:A60E: 78        .byte $78

- D - I - 0x01461F 11:A60F: F7        .byte con_F7
- D - I - 0x014620 11:A610: 00        .byte $00
- D - I - 0x014621 11:A611: 00        .byte $00
- D - I - 0x014622 11:A612: 00        .byte $00

- D - I - 0x014623 11:A613: 01        .byte $01

@бесконечный_цикл:
- D - I - 0x014624 11:A614: F7        .byte con_F7
- D - I - 0x014625 11:A615: 2E        .byte $2E
- D - I - 0x014626 11:A616: 00        .byte $00
- D - I - 0x014627 11:A617: 00        .byte $00

- D - I - 0x014628 11:A618: 01        .byte $01

- D - I - 0x014629 11:A619: F7        .byte con_F7
- D - I - 0x01462A 11:A61A: E2        .byte $E2
- D - I - 0x01462B 11:A61B: 00        .byte $00
- D - I - 0x01462C 11:A61C: 00        .byte $00

- D - I - 0x01462D 11:A61D: 01        .byte $01

- D - I - 0x01462E 11:A61E: A6 14     .dbyt @бесконечный_цикл



off_A620_AB:
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

- D - I - 0x014641 11:A631: F7        .byte con_F7
- D - I - 0x014642 11:A632: 0F        .byte $0F
- D - I - 0x014643 11:A633: 00        .byte $00
- D - I - 0x014644 11:A634: 00        .byte $00

- D - I - 0x014645 11:A635: 44        .byte $44

- D - I - 0x014646 11:A636: FF        .byte con_выход



off_A637_AD:
- D - I - 0x014647 11:A637: 3A        .byte $3A

- D - I - 0x014648 11:A638: F1        .byte con_координаты_Y_X
- D - I - 0x014649 11:A639: 28        .byte $28
- D - I - 0x01464A 11:A63A: 3C        .byte $3C

- D - I - 0x01464B 11:A63B: 95 7C     .dbyt off_B57C - $2000

- D - I - 0x01464D 11:A63D: FF        .byte con_выход



off_A63E_AE:
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

- D - I - 0x014666 11:A656: F7        .byte con_F7
- D - I - 0x014667 11:A657: F0        .byte $F0
- D - I - 0x014668 11:A658: 00        .byte $00
- D - I - 0x014669 11:A659: FD        .byte $FD

- D - I - 0x01466A 11:A65A: 14        .byte $14

- D - I - 0x01466B 11:A65B: FF        .byte con_выход



off_A65C_B1:
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



off_A668_B2:
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



off_A674_B3:
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



off_A681_B4:
- D - I - 0x014691 11:A681: 27        .byte $27

- D - I - 0x014692 11:A682: F1        .byte con_координаты_Y_X
- D - I - 0x014693 11:A683: F3        .byte $F3
- D - I - 0x014694 11:A684: 3E        .byte $3E

@бесконечный_цикл:
- D - I - 0x014695 11:A685: F7        .byte con_F7
- D - I - 0x014696 11:A686: 10        .byte $10
- D - I - 0x014697 11:A687: 00        .byte $00
- D - I - 0x014698 11:A688: 00        .byte $00

- D - I - 0x014699 11:A689: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x01469B 11:A68B: 01        .byte $01

- D - I - 0x01469C 11:A68C: F7        .byte con_F7
- D - I - 0x01469D 11:A68D: 00        .byte $00
- D - I - 0x01469E 11:A68E: 00        .byte $00
- D - I - 0x01469F 11:A68F: 00        .byte $00

- D - I - 0x0146A0 11:A690: 94 A6     .dbyt off_B4A6 - $2000
- D - I - 0x0146A2 11:A692: 01        .byte $01

- D - I - 0x0146A3 11:A693: A6 85     .dbyt @бесконечный_цикл



off_A695_B5:
- D - I - 0x0146A5 11:A695: 32        .byte $32

- D - I - 0x0146A6 11:A696: F1        .byte con_координаты_Y_X
- D - I - 0x0146A7 11:A697: 30        .byte $30
- D - I - 0x0146A8 11:A698: 92        .byte $92

- D - I - 0x0146A9 11:A699: 94 F8     .dbyt off_B4F8 - $2000
- D - I - 0x0146AB 11:A69B: 7F        .byte $7F
- D - I - 0x0146AC 11:A69C: 3E        .byte $3E

- D - I - 0x0146AD 11:A69D: F7        .byte con_F7
- D - I - 0x0146AE 11:A69E: 0F        .byte $0F
- D - I - 0x0146AF 11:A69F: 00        .byte $00
- D - I - 0x0146B0 11:A6A0: 00        .byte $00

- D - I - 0x0146B1 11:A6A1: 44        .byte $44

- D - I - 0x0146B2 11:A6A2: FF        .byte con_выход



off_A6A3_B6:
- D - I - 0x0146B3 11:A6A3: 15        .byte $15

- D - I - 0x0146B4 11:A6A4: F1        .byte con_координаты_Y_X
- D - I - 0x0146B5 11:A6A5: 30        .byte $30
- D - I - 0x0146B6 11:A6A6: 50        .byte $50

- D - I - 0x0146B7 11:A6A7: 94 E6     .dbyt off_B4E6 - $2000

- D - I - 0x0146B9 11:A6A9: FF        .byte con_выход



off_A6AA_B7:
- D - I - 0x0146BA 11:A6AA: 35        .byte $35

- D - I - 0x0146BB 11:A6AB: F1        .byte con_координаты_Y_X
- D - I - 0x0146BC 11:A6AC: 3C        .byte $3C
- D - I - 0x0146BD 11:A6AD: 44        .byte $44

- D - I - 0x0146BE 11:A6AE: FA        .byte con_развилка
- D - I - 0x0146BF 11:A6AF: 2B B6     .word off_B62B
- D - I - 0x0146C1 11:A6B1: A0 B6     .word off_B6A0

- - - - - 0x0146C3 11:A6B3: FF        .byte con_выход



off_A6B4_B8:
- D - I - 0x0146C4 11:A6B4: 35        .byte $35

- D - I - 0x0146C5 11:A6B5: F1        .byte con_координаты_Y_X
- D - I - 0x0146C6 11:A6B6: 3C        .byte $3C
- D - I - 0x0146C7 11:A6B7: 44        .byte $44

- D - I - 0x0146C8 11:A6B8: 96 58     .dbyt off_B658 - $2000

- D - I - 0x0146CA 11:A6BA: FF        .byte con_выход



off_A6BB_B9:
- D - I - 0x0146CB 11:A6BB: 3A        .byte $3A

- D - I - 0x0146CC 11:A6BC: F1        .byte con_координаты_Y_X
- D - I - 0x0146CD 11:A6BD: 28        .byte $28
- D - I - 0x0146CE 11:A6BE: 4C        .byte $4C

- D - I - 0x0146CF 11:A6BF: 95 7C     .dbyt off_B57C - $2000

- D - I - 0x0146D1 11:A6C1: FF        .byte con_выход



off_A6C2_BA:
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



off_A6DD_BB:
- D - I - 0x0146ED 11:A6DD: 37        .byte $37

- D - I - 0x0146EE 11:A6DE: F1        .byte con_координаты_Y_X
- D - I - 0x0146EF 11:A6DF: 16        .byte $16
- D - I - 0x0146F0 11:A6E0: 94        .byte $94

- D - I - 0x0146F1 11:A6E1: 93 E9     .dbyt off_B3E9 - $2000

- D - I - 0x0146F3 11:A6E3: F7        .byte con_F7
- D - I - 0x0146F4 11:A6E4: 09        .byte $09
- D - I - 0x0146F5 11:A6E5: 00        .byte $00
- D - I - 0x0146F6 11:A6E6: 00        .byte $00

- D - I - 0x0146F7 11:A6E7: 12        .byte $12

- D - I - 0x0146F8 11:A6E8: F7        .byte con_F7
- D - I - 0x0146F9 11:A6E9: 00        .byte $00
- D - I - 0x0146FA 11:A6EA: 00        .byte $00
- D - I - 0x0146FB 11:A6EB: 00        .byte $00

- D - I - 0x0146FC 11:A6EC: 28        .byte $28

- D - I - 0x0146FD 11:A6ED: F7        .byte con_F7
- D - I - 0x0146FE 11:A6EE: 07        .byte $07
- D - I - 0x0146FF 11:A6EF: 00        .byte $00
- D - I - 0x014700 11:A6F0: 00        .byte $00

- D - I - 0x014701 11:A6F1: 12        .byte $12

- D - I - 0x014702 11:A6F2: FF        .byte con_выход



off_A6F3_BC:
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



off_A701_BE:
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



off_A73E_BF:
- D - I - 0x01474E 11:A73E: 14        .byte $14

- D - I - 0x01474F 11:A73F: F1        .byte con_координаты_Y_X
- D - I - 0x014750 11:A740: 9E        .byte $9E
- D - I - 0x014751 11:A741: 48        .byte $48

- D - I - 0x014752 11:A742: 89 59     .dbyt off_A959 - $2000
- D - I - 0x014754 11:A744: 78        .byte $78
- D - I - 0x014755 11:A745: 78        .byte $78

- D - I - 0x014756 11:A746: F7        .byte con_F7
- D - I - 0x014757 11:A747: 20        .byte $20
- D - I - 0x014758 11:A748: FF        .byte $FF
- D - I - 0x014759 11:A749: 00        .byte $00

- D - I - 0x01475A 11:A74A: 78        .byte $78

- D - I - 0x01475B 11:A74B: F7        .byte con_F7
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

- D - I - 0x01476E 11:A75E: F7        .byte con_F7
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

- D - I - 0x014779 11:A769: F7        .byte con_F7
- D - I - 0x01477A 11:A76A: 0F        .byte $0F
- D - I - 0x01477B 11:A76B: 00        .byte $00
- D - I - 0x01477C 11:A76C: 00        .byte $00

- D - I - 0x01477D 11:A76D: EF        .byte con_повторы + $0F

- D - I - 0x01477E 11:A76E: 97 39     .dbyt off_B739 - $2000
- D - I - 0x014780 11:A770: 02        .byte $02

- D - I - 0x014781 11:A771: 97 46     .dbyt off_B746 - $2000
- D - I - 0x014783 11:A773: 02        .byte $02

- D - I - 0x014784 11:A774: F0        .byte con_повторить

- D - I - 0x014785 11:A775: F7        .byte con_F7
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

- D - I - 0x014798 11:A788: F7        .byte con_F7
- D - I - 0x014799 11:A789: 00        .byte $00
- D - I - 0x01479A 11:A78A: 00        .byte $00
- D - I - 0x01479B 11:A78B: 00        .byte $00

- D - I - 0x01479C 11:A78C: 97 53     .dbyt off_B753 - $2000
; таймер джека перед движением влево когда он покидает поле
- D - I - 0x01479E 11:A78E: 3C        .byte $1E

- D - I - 0x01479F 11:A78F: F7        .byte con_F7
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
- D - I - 0x0147B0 11:A7A0: 38        .byte $38     ; базовая позиция анимации по вертикали
- D - I - 0x0147B1 11:A7A1: 3C        .byte $3C     ; базовая позиция анимации по горизонтали

- D - I - 0x0147B2 11:A7A2: F7        .byte con_F7
- D - I - 0x0147B3 11:A7A3: E0        .byte $E0     ; влияет на угол полета и скорость полета
- D - I - 0x0147B4 11:A7A4: 00        .byte $00
- D - I - 0x0147B5 11:A7A5: 00        .byte $00

- D - I - 0x0147B6 11:A7A6: 97 62     .dbyt off_B762 - $2000
- D - I - 0x0147B8 11:A7A8: 12        .byte $12     ; таймер полета джека вверх перед зависанием в воздухе

- D - I - 0x0147B9 11:A7A9: F7        .byte con_F7
- D - I - 0x0147BA 11:A7AA: 00        .byte $00
- D - I - 0x0147BB 11:A7AB: 00        .byte $00
- D - I - 0x0147BC 11:A7AC: 00        .byte $00

- D - I - 0x0147BD 11:A7AD: 7F        .byte $7F     ; таймер джека перед телепортом когда он висит в воздухе
- D - I - 0x0147BE 11:A7AE: 11        .byte $11

- D - I - 0x0147BF 11:A7AF: F1        .byte con_координаты_Y_X
- D - I - 0x0147C0 11:A7B0: 1C        .byte $1C
- D - I - 0x0147C1 11:A7B1: 0A        .byte $0A

- D - I - 0x0147C2 11:A7B2: 97 53     .dbyt off_B753 - $2000

- D - I - 0x0147C4 11:A7B4: F7        .byte con_F7
- D - I - 0x0147C5 11:A7B5: F0        .byte $F0
- D - I - 0x0147C6 11:A7B6: 00        .byte $00
- D - I - 0x0147C7 11:A7B7: 00        .byte $00

- D - I - 0x0147C8 11:A7B8: 04        .byte $04

- D - I - 0x0147C9 11:A7B9: F7        .byte con_F7
- D - I - 0x0147CA 11:A7BA: 00        .byte $00
- D - I - 0x0147CB 11:A7BB: 00        .byte $00
- D - I - 0x0147CC 11:A7BC: 00        .byte $00

- D - I - 0x0147CD 11:A7BD: 7F        .byte $7F     ; таймер джека перед падением после телепорта
- D - I - 0x0147CE 11:A7BE: 2B        .byte $2B

- D - I - 0x0147CF 11:A7BF: F7        .byte con_F7
- D - I - 0x0147D0 11:A7C0: 20        .byte $20
- D - I - 0x0147D1 11:A7C1: 00        .byte $00
- D - I - 0x0147D2 11:A7C2: 00        .byte $00

- D - I - 0x0147D3 11:A7C3: 97 71     .dbyt off_B771 - $2000
- D - I - 0x0147D5 11:A7C5: 21        .byte $21

- D - I - 0x0147D6 11:A7C6: F1        .byte con_координаты_Y_X
- D - I - 0x0147D7 11:A7C7: 5B        .byte $5B
- D - I - 0x0147D8 11:A7C8: 0A        .byte $0A

- D - I - 0x0147D9 11:A7C9: F7        .byte con_F7
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
- D - I - 0x0147EF 11:A7DF: 23        .byte $23

- D - I - 0x0147F0 11:A7E0: F1        .byte con_координаты_Y_X
- D - I - 0x0147F1 11:A7E1: 1C        .byte $1C
- D - I - 0x0147F2 11:A7E2: 00        .byte $00

- D - I - 0x0147F3 11:A7E3: 96 EB     .dbyt off_B6EB - $2000
- D - I - 0x0147F5 11:A7E5: 7F        .byte $7F
- D - I - 0x0147F6 11:A7E6: 31        .byte $31

- D - I - 0x0147F7 11:A7E7: F7        .byte con_F7
- D - I - 0x0147F8 11:A7E8: 20        .byte $20
- D - I - 0x0147F9 11:A7E9: 00        .byte $00
- D - I - 0x0147FA 11:A7EA: 00        .byte $00

- D - I - 0x0147FB 11:A7EB: 10        .byte $10

- D - I - 0x0147FC 11:A7EC: FF        .byte con_выход



off_A7ED_C6:
- D - I - 0x0147FD 11:A7ED: 00        .byte $00

- D - I - 0x0147FE 11:A7EE: F1        .byte con_координаты_Y_X
- D - I - 0x0147FF 11:A7EF: 44        .byte $44
- D - I - 0x014800 11:A7F0: 80        .byte $80

- D - I - 0x014801 11:A7F1: 97 80     .dbyt off_B780 - $2000
- D - I - 0x014803 11:A7F3: 45        .byte $45

- D - I - 0x014804 11:A7F4: F7        .byte con_F7
- D - I - 0x014805 11:A7F5: 07        .byte $07
- D - I - 0x014806 11:A7F6: 00        .byte $00
- D - I - 0x014807 11:A7F7: 07        .byte $07

- D - I - 0x014808 11:A7F8: 1D        .byte $1D

- D - I - 0x014809 11:A7F9: FF        .byte con_выход



off_A7FA_C7:
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



off_A81F_CA:
- D - I - 0x01482F 11:A81F: 36        .byte $36

- D - I - 0x014830 11:A820: F1        .byte con_координаты_Y_X
- D - I - 0x014831 11:A821: 34        .byte $34
- D - I - 0x014832 11:A822: 85        .byte $85

- D - I - 0x014833 11:A823: 97 BB     .dbyt off_B7BB - $2000

- D - I - 0x014835 11:A825: F7        .byte con_F7
- D - I - 0x014836 11:A826: 09        .byte $09
- D - I - 0x014837 11:A827: 00        .byte $00
- D - I - 0x014838 11:A828: 07        .byte $07

- D - I - 0x014839 11:A829: 0D        .byte $0D

- D - I - 0x01483A 11:A82A: FF        .byte con_выход



off_A82B_CB:
- D - I - 0x01483B 11:A82B: 36        .byte $36

- D - I - 0x01483C 11:A82C: F1        .byte con_координаты_Y_X
- D - I - 0x01483D 11:A82D: 48        .byte $48
- D - I - 0x01483E 11:A82E: 86        .byte $86

- D - I - 0x01483F 11:A82F: 97 BB     .dbyt off_B7BB - $2000

- D - I - 0x014841 11:A831: F7        .byte con_F7
- D - I - 0x014842 11:A832: 09        .byte $09
- D - I - 0x014843 11:A833: 00        .byte $00
- D - I - 0x014844 11:A834: 07        .byte $07

- D - I - 0x014845 11:A835: 0E        .byte $0E

- D - I - 0x014846 11:A836: FF        .byte con_выход










off_A837:
- D - I - 0x014847 11:A837: 08        .byte $08
- D - I - 0x014848 11:A838: 09        .byte $09
- D - I - 0x014849 11:A839: 0A        .byte $0A
- D - I - 0x01484A 11:A83A: 0B        .byte $0B
- D - I - 0x01484B 11:A83B: FA        .byte con_jsr
- D - I - 0x01484C 11:A83C: 10 B9     .word off_B910
- D - I - 0x01484E 11:A83E: BF        .byte $BF
- D - I - 0x01484F 11:A83F: 34        .byte $34
- D - I - 0x014850 11:A840: 2C        .byte $2C
- D - I - 0x014851 11:A841: 38        .byte $38
- D - I - 0x014852 11:A842: 28        .byte $28
- D - I - 0x014853 11:A843: 3C        .byte $3C
- D - I - 0x014854 11:A844: 2A        .byte $2A
- D - I - 0x014855 11:A845: A0        .byte $A0
- D - I - 0x014856 11:A846: 34        .byte $34
- D - I - 0x014857 11:A847: 2D        .byte $2D
- D - I - 0x014858 11:A848: 38        .byte $38
- D - I - 0x014859 11:A849: 29        .byte $29
- D - I - 0x01485A 11:A84A: 3C        .byte $3C
- D - I - 0x01485B 11:A84B: 2B        .byte $2B
- D - I - 0x01485C 11:A84C: A1        .byte $A1
- D - I - 0x01485D 11:A84D: 38        .byte $38
- D - I - 0x01485E 11:A84E: 2E        .byte $2E
- D - I - 0x01485F 11:A84F: FB        .byte con_jmp
- D - I - 0x014860 11:A850: CF B7     .word off_B7CF



off_A852:
- D - I - 0x014862 11:A852: 08        .byte $08
- D - I - 0x014863 11:A853: 09        .byte $09
- D - I - 0x014864 11:A854: 0A        .byte $0A
- D - I - 0x014865 11:A855: 0B        .byte $0B
- D - I - 0x014866 11:A856: FA        .byte con_jsr
- D - I - 0x014867 11:A857: 10 B9     .word off_B910
- D - I - 0x014869 11:A859: BF        .byte $BF
- D - I - 0x01486A 11:A85A: 34        .byte $34
- D - I - 0x01486B 11:A85B: 2F        .byte $2F
- D - I - 0x01486C 11:A85C: 38        .byte $38
- D - I - 0x01486D 11:A85D: 38        .byte $38
- D - I - 0x01486E 11:A85E: 3C        .byte $3C
- D - I - 0x01486F 11:A85F: 3A        .byte $3A
- D - I - 0x014870 11:A860: A0        .byte $A0
- D - I - 0x014871 11:A861: 34        .byte $34
- D - I - 0x014872 11:A862: 39        .byte $39
- D - I - 0x014873 11:A863: 38        .byte $38
- D - I - 0x014874 11:A864: 3B        .byte $3B
- D - I - 0x014875 11:A865: 3C        .byte $3C
- D - I - 0x014876 11:A866: 2B        .byte $2B
- D - I - 0x014877 11:A867: A1        .byte $A1
- D - I - 0x014878 11:A868: 34        .byte $34
- D - I - 0x014879 11:A869: 3C        .byte $3C
- D - I - 0x01487A 11:A86A: 38        .byte $38
- D - I - 0x01487B 11:A86B: 3E        .byte $3E
- D - I - 0x01487C 11:A86C: FB        .byte con_jmp
- D - I - 0x01487D 11:A86D: CF B7     .word off_B7CF



off_A86F:
- D - I - 0x01487F 11:A86F: 08        .byte $08
- D - I - 0x014880 11:A870: 09        .byte $09
- D - I - 0x014881 11:A871: 0A        .byte $0A
- D - I - 0x014882 11:A872: 0B        .byte $0B
- D - I - 0x014883 11:A873: FA        .byte con_jsr
- D - I - 0x014884 11:A874: 1B B9     .word off_B91B
- D - I - 0x014886 11:A876: BF        .byte $BF
- D - I - 0x014887 11:A877: 9D        .byte $9D
- D - I - 0x014888 11:A878: CE        .byte $CE
- D - I - 0x014889 11:A879: 3C        .byte $3C
- D - I - 0x01488A 11:A87A: 2C        .byte $2C
- D - I - 0x01488B 11:A87B: C6        .byte $C6
- D - I - 0x01488C 11:A87C: 3C        .byte $3C
- D - I - 0x01488D 11:A87D: 2D        .byte $2D
- D - I - 0x01488E 11:A87E: CE        .byte $CE
- D - I - 0x01488F 11:A87F: 1C        .byte $1C
- D - I - 0x014890 11:A880: 28        .byte $28
- D - I - 0x014891 11:A881: C6        .byte $C6
- D - I - 0x014892 11:A882: 1C        .byte $1C
- D - I - 0x014893 11:A883: 29        .byte $29
- D - I - 0x014894 11:A884: 9F        .byte $9F
- D - I - 0x014895 11:A885: CE        .byte $CE
- D - I - 0x014896 11:A886: 3C        .byte $3C
- D - I - 0x014897 11:A887: 2A        .byte $2A
- D - I - 0x014898 11:A888: C6        .byte $C6
- D - I - 0x014899 11:A889: 3C        .byte $3C
- D - I - 0x01489A 11:A88A: 2B        .byte $2B
- D - I - 0x01489B 11:A88B: A1        .byte $A1
- D - I - 0x01489C 11:A88C: 9E        .byte $9E
- D - I - 0x01489D 11:A88D: CE        .byte $CE
- D - I - 0x01489E 11:A88E: 3C        .byte $3C
- D - I - 0x01489F 11:A88F: 2E        .byte $2E
- D - I - 0x0148A0 11:A890: FB        .byte con_jmp
- D - I - 0x0148A1 11:A891: 21 B8     .word off_B821



off_A893:
- D - I - 0x0148A3 11:A893: 08        .byte $08
- D - I - 0x0148A4 11:A894: 09        .byte $09
- D - I - 0x0148A5 11:A895: 0A        .byte $0A
- D - I - 0x0148A6 11:A896: 0B        .byte $0B
- D - I - 0x0148A7 11:A897: FA        .byte con_jsr
- D - I - 0x0148A8 11:A898: 1B B9     .word off_B91B
- D - I - 0x0148AA 11:A89A: BF        .byte $BF
- D - I - 0x0148AB 11:A89B: 9D        .byte $9D
- D - I - 0x0148AC 11:A89C: CE        .byte $CE
- D - I - 0x0148AD 11:A89D: 3C        .byte $3C
- D - I - 0x0148AE 11:A89E: 2F        .byte $2F
- D - I - 0x0148AF 11:A89F: C6        .byte $C6
- D - I - 0x0148B0 11:A8A0: 3C        .byte $3C
- D - I - 0x0148B1 11:A8A1: 39        .byte $39
- D - I - 0x0148B2 11:A8A2: CE        .byte $CE
- D - I - 0x0148B3 11:A8A3: 1C        .byte $1C
- D - I - 0x0148B4 11:A8A4: 38        .byte $38
- D - I - 0x0148B5 11:A8A5: C6        .byte $C6
- D - I - 0x0148B6 11:A8A6: 1C        .byte $1C
- D - I - 0x0148B7 11:A8A7: 3B        .byte $3B
- D - I - 0x0148B8 11:A8A8: 9F        .byte $9F
- D - I - 0x0148B9 11:A8A9: CE        .byte $CE
- D - I - 0x0148BA 11:A8AA: 3C        .byte $3C
- D - I - 0x0148BB 11:A8AB: 3A        .byte $3A
- D - I - 0x0148BC 11:A8AC: C6        .byte $C6
- D - I - 0x0148BD 11:A8AD: 3C        .byte $3C
- D - I - 0x0148BE 11:A8AE: 2B        .byte $2B
- D - I - 0x0148BF 11:A8AF: A1        .byte $A1
- D - I - 0x0148C0 11:A8B0: 9D        .byte $9D
- D - I - 0x0148C1 11:A8B1: CE        .byte $CE
- D - I - 0x0148C2 11:A8B2: 3C        .byte $3C
- D - I - 0x0148C3 11:A8B3: 3C        .byte $3C
- D - I - 0x0148C4 11:A8B4: CE        .byte $CE
- D - I - 0x0148C5 11:A8B5: 1C        .byte $1C
- D - I - 0x0148C6 11:A8B6: 3E        .byte $3E
- D - I - 0x0148C7 11:A8B7: FB        .byte con_jmp
- D - I - 0x0148C8 11:A8B8: 21 B8     .word off_B821



off_A8BA:
- D - I - 0x0148CA 11:A8BA: 08        .byte $08
- D - I - 0x0148CB 11:A8BB: 09        .byte $09
- D - I - 0x0148CC 11:A8BC: 0A        .byte $0A
- D - I - 0x0148CD 11:A8BD: 0B        .byte $0B
- D - I - 0x0148CE 11:A8BE: FA        .byte con_jsr
- D - I - 0x0148CF 11:A8BF: 30 B9     .word off_B930
- D - I - 0x0148D1 11:A8C1: BF        .byte $BF
- D - I - 0x0148D2 11:A8C2: 9D        .byte $9D
- D - I - 0x0148D3 11:A8C3: CE        .byte $CE
- D - I - 0x0148D4 11:A8C4: 00        .byte $00
- D - I - 0x0148D5 11:A8C5: 2C        .byte $2C
- D - I - 0x0148D6 11:A8C6: C6        .byte $C6
- D - I - 0x0148D7 11:A8C7: 00        .byte $00
- D - I - 0x0148D8 11:A8C8: 2D        .byte $2D
- D - I - 0x0148D9 11:A8C9: 9E        .byte $9E
- D - I - 0x0148DA 11:A8CA: CE        .byte $CE
- D - I - 0x0148DB 11:A8CB: 00        .byte $00
- D - I - 0x0148DC 11:A8CC: 28        .byte $28
- D - I - 0x0148DD 11:A8CD: C6        .byte $C6
- D - I - 0x0148DE 11:A8CE: 00        .byte $00
- D - I - 0x0148DF 11:A8CF: 29        .byte $29
- D - I - 0x0148E0 11:A8D0: 9F        .byte $9F
- D - I - 0x0148E1 11:A8D1: CE        .byte $CE
- D - I - 0x0148E2 11:A8D2: 00        .byte $00
- D - I - 0x0148E3 11:A8D3: 2A        .byte $2A
- D - I - 0x0148E4 11:A8D4: C6        .byte $C6
- D - I - 0x0148E5 11:A8D5: 00        .byte $00
- D - I - 0x0148E6 11:A8D6: 2B        .byte $2B
- D - I - 0x0148E7 11:A8D7: A1        .byte $A1
- D - I - 0x0148E8 11:A8D8: 9E        .byte $9E
- D - I - 0x0148E9 11:A8D9: CE        .byte $CE
- D - I - 0x0148EA 11:A8DA: 00        .byte $00
- D - I - 0x0148EB 11:A8DB: 2E        .byte $2E
- D - I - 0x0148EC 11:A8DC: FB        .byte con_jmp
- D - I - 0x0148ED 11:A8DD: 6D B8     .word off_B86D



off_A8DF:
- D - I - 0x0148EF 11:A8DF: 08        .byte $08
- D - I - 0x0148F0 11:A8E0: 09        .byte $09
- D - I - 0x0148F1 11:A8E1: 0A        .byte $0A
- D - I - 0x0148F2 11:A8E2: 0B        .byte $0B
- D - I - 0x0148F3 11:A8E3: FA        .byte con_jsr
- D - I - 0x0148F4 11:A8E4: 30 B9     .word off_B930
- D - I - 0x0148F6 11:A8E6: BF        .byte $BF
- D - I - 0x0148F7 11:A8E7: 9D        .byte $9D
- D - I - 0x0148F8 11:A8E8: CE        .byte $CE
- D - I - 0x0148F9 11:A8E9: 00        .byte $00
- D - I - 0x0148FA 11:A8EA: 2F        .byte $2F
- D - I - 0x0148FB 11:A8EB: C6        .byte $C6
- D - I - 0x0148FC 11:A8EC: 00        .byte $00
- D - I - 0x0148FD 11:A8ED: 39        .byte $39
- D - I - 0x0148FE 11:A8EE: 9E        .byte $9E
- D - I - 0x0148FF 11:A8EF: CE        .byte $CE
- D - I - 0x014900 11:A8F0: 00        .byte $00
- D - I - 0x014901 11:A8F1: 38        .byte $38
- D - I - 0x014902 11:A8F2: C6        .byte $C6
- D - I - 0x014903 11:A8F3: 00        .byte $00
- D - I - 0x014904 11:A8F4: 3B        .byte $3B
- D - I - 0x014905 11:A8F5: 9F        .byte $9F
- D - I - 0x014906 11:A8F6: CE        .byte $CE
- D - I - 0x014907 11:A8F7: 00        .byte $00
- D - I - 0x014908 11:A8F8: 3A        .byte $3A
- D - I - 0x014909 11:A8F9: C6        .byte $C6
- D - I - 0x01490A 11:A8FA: 00        .byte $00
- D - I - 0x01490B 11:A8FB: 2B        .byte $2B
- D - I - 0x01490C 11:A8FC: A1        .byte $A1
- D - I - 0x01490D 11:A8FD: 9D        .byte $9D
- D - I - 0x01490E 11:A8FE: CE        .byte $CE
- D - I - 0x01490F 11:A8FF: 00        .byte $00
- D - I - 0x014910 11:A900: 3C        .byte $3C
- D - I - 0x014911 11:A901: 9E        .byte $9E
- D - I - 0x014912 11:A902: CE        .byte $CE
- D - I - 0x014913 11:A903: 00        .byte $00
- D - I - 0x014914 11:A904: 3E        .byte $3E
- D - I - 0x014915 11:A905: FB        .byte con_jmp
- D - I - 0x014916 11:A906: 6D B8     .word off_B86D



off_A908:
- D - I - 0x014918 11:A908: 08        .byte $08
- D - I - 0x014919 11:A909: 09        .byte $09
- D - I - 0x01491A 11:A90A: 0A        .byte $0A
- D - I - 0x01491B 11:A90B: 0B        .byte $0B
- D - I - 0x01491C 11:A90C: FA        .byte con_jsr
- D - I - 0x01491D 11:A90D: 3B B9     .word off_B93B
- D - I - 0x01491F 11:A90F: BF        .byte $BF
- D - I - 0x014920 11:A910: 9D        .byte $9D
- D - I - 0x014921 11:A911: C0        .byte $C0
- D - I - 0x014922 11:A912: 3C        .byte $3C
- D - I - 0x014923 11:A913: 2C        .byte $2C
- D - I - 0x014924 11:A914: C0        .byte $C0
- D - I - 0x014925 11:A915: 1C        .byte $1C
- D - I - 0x014926 11:A916: 28        .byte $28
- D - I - 0x014927 11:A917: 9F        .byte $9F
- D - I - 0x014928 11:A918: C0        .byte $C0
- D - I - 0x014929 11:A919: 3C        .byte $3C
- D - I - 0x01492A 11:A91A: 2A        .byte $2A
- D - I - 0x01492B 11:A91B: A0        .byte $A0
- D - I - 0x01492C 11:A91C: 9D        .byte $9D
- D - I - 0x01492D 11:A91D: C0        .byte $C0
- D - I - 0x01492E 11:A91E: 3C        .byte $3C
- D - I - 0x01492F 11:A91F: 2D        .byte $2D
- D - I - 0x014930 11:A920: C0        .byte $C0
- D - I - 0x014931 11:A921: 1C        .byte $1C
- D - I - 0x014932 11:A922: 29        .byte $29
- D - I - 0x014933 11:A923: 9F        .byte $9F
- D - I - 0x014934 11:A924: C0        .byte $C0
- D - I - 0x014935 11:A925: 3C        .byte $3C
- D - I - 0x014936 11:A926: 2B        .byte $2B
- D - I - 0x014937 11:A927: A1        .byte $A1
- D - I - 0x014938 11:A928: 9E        .byte $9E
- D - I - 0x014939 11:A929: C0        .byte $C0
- D - I - 0x01493A 11:A92A: 3C        .byte $3C
- D - I - 0x01493B 11:A92B: 2E        .byte $2E
- D - I - 0x01493C 11:A92C: FB        .byte con_jmp
- D - I - 0x01493D 11:A92D: C3 B8     .word off_B8C3



off_A92F:
- D - I - 0x01493F 11:A92F: 08        .byte $08
- D - I - 0x014940 11:A930: 09        .byte $09
- D - I - 0x014941 11:A931: 0A        .byte $0A
- D - I - 0x014942 11:A932: 0B        .byte $0B
- D - I - 0x014943 11:A933: FA        .byte con_jsr
- D - I - 0x014944 11:A934: 3B B9     .word off_B93B
- D - I - 0x014946 11:A936: BF        .byte $BF
- D - I - 0x014947 11:A937: 9D        .byte $9D
- D - I - 0x014948 11:A938: C0        .byte $C0
- D - I - 0x014949 11:A939: 3C        .byte $3C
- D - I - 0x01494A 11:A93A: 2F        .byte $2F
- D - I - 0x01494B 11:A93B: C0        .byte $C0
- D - I - 0x01494C 11:A93C: 1C        .byte $1C
- D - I - 0x01494D 11:A93D: 38        .byte $38
- D - I - 0x01494E 11:A93E: 9F        .byte $9F
- D - I - 0x01494F 11:A93F: C0        .byte $C0
- D - I - 0x014950 11:A940: 3C        .byte $3C
- D - I - 0x014951 11:A941: 3A        .byte $3A
- D - I - 0x014952 11:A942: A0        .byte $A0
- D - I - 0x014953 11:A943: 9D        .byte $9D
- D - I - 0x014954 11:A944: C0        .byte $C0
- D - I - 0x014955 11:A945: 3C        .byte $3C
- D - I - 0x014956 11:A946: 39        .byte $39
- D - I - 0x014957 11:A947: C0        .byte $C0
- D - I - 0x014958 11:A948: 1C        .byte $1C
- D - I - 0x014959 11:A949: 3B        .byte $3B
- D - I - 0x01495A 11:A94A: 9F        .byte $9F
- D - I - 0x01495B 11:A94B: C0        .byte $C0
- D - I - 0x01495C 11:A94C: 3C        .byte $3C
- D - I - 0x01495D 11:A94D: 2B        .byte $2B
- D - I - 0x01495E 11:A94E: A1        .byte $A1
- D - I - 0x01495F 11:A94F: 9D        .byte $9D
- D - I - 0x014960 11:A950: C0        .byte $C0
- D - I - 0x014961 11:A951: 3C        .byte $3C
- D - I - 0x014962 11:A952: 3C        .byte $3C
- D - I - 0x014963 11:A953: C0        .byte $C0
- D - I - 0x014964 11:A954: 1C        .byte $1C
- D - I - 0x014965 11:A955: 3E        .byte $3E
- D - I - 0x014966 11:A956: FB        .byte con_jmp
- D - I - 0x014967 11:A957: C3 B8     .word off_B8C3



off_A959:
- D - I - 0x014969 11:A959: 10        .byte $10
- D - I - 0x01496A 11:A95A: 11        .byte $11
- D - I - 0x01496B 11:A95B: 12        .byte $12
- D - I - 0x01496C 11:A95C: 5F        .byte $5F
- D - I - 0x01496D 11:A95D: BE        .byte $BE
- D - I - 0x01496E 11:A95E: 38        .byte $38
- D - I - 0x01496F 11:A95F: 11        .byte $11
- D - I - 0x014970 11:A960: 3C        .byte $3C
- D - I - 0x014971 11:A961: 13        .byte $13
- D - I - 0x014972 11:A962: BF        .byte $BF
- D - I - 0x014973 11:A963: 38        .byte $38
- D - I - 0x014974 11:A964: 14        .byte $14
- D - I - 0x014975 11:A965: 3C        .byte $3C
- D - I - 0x014976 11:A966: 16        .byte $16
- D - I - 0x014977 11:A967: 00        .byte $00
- D - I - 0x014978 11:A968: 19        .byte $19
- D - I - 0x014979 11:A969: A0        .byte $A0
- D - I - 0x01497A 11:A96A: 38        .byte $38
- D - I - 0x01497B 11:A96B: 15        .byte $15
- D - I - 0x01497C 11:A96C: 3C        .byte $3C
- D - I - 0x01497D 11:A96D: 17        .byte $17
- D - I - 0x01497E 11:A96E: 00        .byte $00
- D - I - 0x01497F 11:A96F: 1C        .byte $1C
- D - I - 0x014980 11:A970: FB        .byte con_jmp
- D - I - 0x014981 11:A971: 4C B9     .word off_B94C



off_A973:
- D - I - 0x014983 11:A973: 10        .byte $10
- D - I - 0x014984 11:A974: 11        .byte $11
- D - I - 0x014985 11:A975: 12        .byte $12
- D - I - 0x014986 11:A976: 5F        .byte $5F
- D - I - 0x014987 11:A977: BE        .byte $BE
- D - I - 0x014988 11:A978: 08        .byte $08
- D - I - 0x014989 11:A979: 86        .byte $86
- D - I - 0x01498A 11:A97A: BF        .byte $BF
- D - I - 0x01498B 11:A97B: 04        .byte $04
- D - I - 0x01498C 11:A97C: 84        .byte $84
- D - I - 0x01498D 11:A97D: 08        .byte $08
- D - I - 0x01498E 11:A97E: 87        .byte $87
- D - I - 0x01498F 11:A97F: A0        .byte $A0
- D - I - 0x014990 11:A980: 00        .byte $00
- D - I - 0x014991 11:A981: 82        .byte $82
- D - I - 0x014992 11:A982: 04        .byte $04
- D - I - 0x014993 11:A983: 85        .byte $85
- D - I - 0x014994 11:A984: A1        .byte $A1
- D - I - 0x014995 11:A985: 3D        .byte $3D
- D - I - 0x014996 11:A986: 88        .byte $88
- D - I - 0x014997 11:A987: 01        .byte $01
- D - I - 0x014998 11:A988: 83        .byte $83
- D - I - 0x014999 11:A989: A2        .byte $A2
- D - I - 0x01499A 11:A98A: 39        .byte $39
- D - I - 0x01499B 11:A98B: 8C        .byte $8C
- D - I - 0x01499C 11:A98C: 3D        .byte $3D
- D - I - 0x01499D 11:A98D: 89        .byte $89
- D - I - 0x01499E 11:A98E: FF        .byte $FF



off_A98F:
- D - I - 0x01499F 11:A98F: 6A        .byte $6A
- D - I - 0x0149A0 11:A990: 6B        .byte $6B
- D - I - 0x0149A1 11:A991: 7A        .byte $7A
- D - I - 0x0149A2 11:A992: 7B        .byte $7B
- D - I - 0x0149A3 11:A993: BF        .byte $BF
- D - I - 0x0149A4 11:A994: 03        .byte $03
- D - I - 0x0149A5 11:A995: 52        .byte $52
- D - I - 0x0149A6 11:A996: 07        .byte $07
- D - I - 0x0149A7 11:A997: 58        .byte $58
- D - I - 0x0149A8 11:A998: 0B        .byte $0B
- D - I - 0x0149A9 11:A999: 5A        .byte $5A
- D - I - 0x0149AA 11:A99A: A0        .byte $A0
- D - I - 0x0149AB 11:A99B: 03        .byte $03
- D - I - 0x0149AC 11:A99C: 5C        .byte $5C
- D - I - 0x0149AD 11:A99D: 03        .byte $03
- D - I - 0x0149AE 11:A99E: 53        .byte $53
- D - I - 0x0149AF 11:A99F: 07        .byte $07
- D - I - 0x0149B0 11:A9A0: 5E        .byte $5E
- D - I - 0x0149B1 11:A9A1: 07        .byte $07
- D - I - 0x0149B2 11:A9A2: 59        .byte $59
- D - I - 0x0149B3 11:A9A3: 0B        .byte $0B
- D - I - 0x0149B4 11:A9A4: 74        .byte $74
- D - I - 0x0149B5 11:A9A5: 0B        .byte $0B
- D - I - 0x0149B6 11:A9A6: 5B        .byte $5B
- D - I - 0x0149B7 11:A9A7: A1        .byte $A1
- D - I - 0x0149B8 11:A9A8: 43        .byte $43
- D - I - 0x0149B9 11:A9A9: 5C        .byte $5C
- D - I - 0x0149BA 11:A9AA: 43        .byte $43
- D - I - 0x0149BB 11:A9AB: 53        .byte $53
- D - I - 0x0149BC 11:A9AC: 47        .byte $47
- D - I - 0x0149BD 11:A9AD: 5E        .byte $5E
- D - I - 0x0149BE 11:A9AE: 47        .byte $47
- D - I - 0x0149BF 11:A9AF: 59        .byte $59
- D - I - 0x0149C0 11:A9B0: 4B        .byte $4B
- D - I - 0x0149C1 11:A9B1: 74        .byte $74
- D - I - 0x0149C2 11:A9B2: 4B        .byte $4B
- D - I - 0x0149C3 11:A9B3: 5B        .byte $5B
- D - I - 0x0149C4 11:A9B4: A2        .byte $A2
- D - I - 0x0149C5 11:A9B5: 43        .byte $43
- D - I - 0x0149C6 11:A9B6: 52        .byte $52
- D - I - 0x0149C7 11:A9B7: 47        .byte $47
- D - I - 0x0149C8 11:A9B8: 58        .byte $58
- D - I - 0x0149C9 11:A9B9: 4B        .byte $4B
- D - I - 0x0149CA 11:A9BA: 5A        .byte $5A
- D - I - 0x0149CB 11:A9BB: FB        .byte con_jmp
- D - I - 0x0149CC 11:A9BC: 90 BC     .word off_BC90



off_A9BE:
- D - I - 0x0149CE 11:A9BE: 6A        .byte $6A
- D - I - 0x0149CF 11:A9BF: 6B        .byte $6B
- D - I - 0x0149D0 11:A9C0: 7A        .byte $7A
- D - I - 0x0149D1 11:A9C1: 7B        .byte $7B
- D - I - 0x0149D2 11:A9C2: BF        .byte $BF
- D - I - 0x0149D3 11:A9C3: 3F        .byte $3F
- D - I - 0x0149D4 11:A9C4: 54        .byte $54
- D - I - 0x0149D5 11:A9C5: A0        .byte $A0
- D - I - 0x0149D6 11:A9C6: 3B        .byte $3B
- D - I - 0x0149D7 11:A9C7: 5F        .byte $5F
- D - I - 0x0149D8 11:A9C8: 3F        .byte $3F
- D - I - 0x0149D9 11:A9C9: 55        .byte $55
- D - I - 0x0149DA 11:A9CA: 03        .byte $03
- D - I - 0x0149DB 11:A9CB: 57        .byte $57
- D - I - 0x0149DC 11:A9CC: 07        .byte $07
- D - I - 0x0149DD 11:A9CD: 5D        .byte $5D
- D - I - 0x0149DE 11:A9CE: A1        .byte $A1
- D - I - 0x0149DF 11:A9CF: 7B        .byte $7B
- D - I - 0x0149E0 11:A9D0: 5F        .byte $5F
- D - I - 0x0149E1 11:A9D1: 7F        .byte $7F
- D - I - 0x0149E2 11:A9D2: 55        .byte $55
- D - I - 0x0149E3 11:A9D3: 43        .byte $43
- D - I - 0x0149E4 11:A9D4: 57        .byte $57
- D - I - 0x0149E5 11:A9D5: 47        .byte $47
- D - I - 0x0149E6 11:A9D6: 5D        .byte $5D
- D - I - 0x0149E7 11:A9D7: A2        .byte $A2
- D - I - 0x0149E8 11:A9D8: 7F        .byte $7F
- D - I - 0x0149E9 11:A9D9: 54        .byte $54
- D - I - 0x0149EA 11:A9DA: FB        .byte con_jmp
- D - I - 0x0149EB 11:A9DB: AA B9     .word off_B9AA



off_A9DD:
- D - I - 0x0149ED 11:A9DD: 06        .byte $06
- D - I - 0x0149EE 11:A9DE: 07        .byte $07
- D - I - 0x0149EF 11:A9DF: 5E        .byte $5E
- D - I - 0x0149F0 11:A9E0: 5F        .byte $5F
- D - I - 0x0149F1 11:A9E1: BF        .byte $BF
- D - I - 0x0149F2 11:A9E2: 39        .byte $39
- D - I - 0x0149F3 11:A9E3: 4F        .byte $4F
- D - I - 0x0149F4 11:A9E4: 3D        .byte $3D
- D - I - 0x0149F5 11:A9E5: 65        .byte $65
- D - I - 0x0149F6 11:A9E6: 01        .byte $01
- D - I - 0x0149F7 11:A9E7: 67        .byte $67
- D - I - 0x0149F8 11:A9E8: 05        .byte $05
- D - I - 0x0149F9 11:A9E9: 6D        .byte $6D
- D - I - 0x0149FA 11:A9EA: 09        .byte $09
- D - I - 0x0149FB 11:A9EB: 6F        .byte $6F
- D - I - 0x0149FC 11:A9EC: A0        .byte $A0
- D - I - 0x0149FD 11:A9ED: 39        .byte $39
- D - I - 0x0149FE 11:A9EE: 5A        .byte $5A
- D - I - 0x0149FF 11:A9EF: 3D        .byte $3D
- D - I - 0x014A00 11:A9F0: 70        .byte $70
- D - I - 0x014A01 11:A9F1: 01        .byte $01
- D - I - 0x014A02 11:A9F2: 72        .byte $72
- D - I - 0x014A03 11:A9F3: 05        .byte $05
- D - I - 0x014A04 11:A9F4: 78        .byte $78
- D - I - 0x014A05 11:A9F5: 09        .byte $09
- D - I - 0x014A06 11:A9F6: 7A        .byte $7A
- D - I - 0x014A07 11:A9F7: A1        .byte $A1
- D - I - 0x014A08 11:A9F8: 39        .byte $39
- D - I - 0x014A09 11:A9F9: 5B        .byte $5B
- D - I - 0x014A0A 11:A9FA: 3D        .byte $3D
- D - I - 0x014A0B 11:A9FB: 71        .byte $71
- D - I - 0x014A0C 11:A9FC: 01        .byte $01
- D - I - 0x014A0D 11:A9FD: 73        .byte $73
- D - I - 0x014A0E 11:A9FE: 05        .byte $05
- D - I - 0x014A0F 11:A9FF: 79        .byte $79
- D - I - 0x014A10 11:AA00: 09        .byte $09
- D - I - 0x014A11 11:AA01: 7B        .byte $7B
- D - I - 0x014A12 11:AA02: A2        .byte $A2
- D - I - 0x014A13 11:AA03: 39        .byte $39
- D - I - 0x014A14 11:AA04: 5E        .byte $5E
- D - I - 0x014A15 11:AA05: 3D        .byte $3D
- D - I - 0x014A16 11:AA06: 74        .byte $74
- D - I - 0x014A17 11:AA07: 01        .byte $01
- D - I - 0x014A18 11:AA08: 76        .byte $76
- D - I - 0x014A19 11:AA09: 05        .byte $05
- D - I - 0x014A1A 11:AA0A: 7C        .byte $7C
- D - I - 0x014A1B 11:AA0B: 09        .byte $09
- D - I - 0x014A1C 11:AA0C: 7E        .byte $7E
- D - I - 0x014A1D 11:AA0D: A3        .byte $A3
- D - I - 0x014A1E 11:AA0E: 39        .byte $39
- D - I - 0x014A1F 11:AA0F: 5F        .byte $5F
- D - I - 0x014A20 11:AA10: 3D        .byte $3D
- D - I - 0x014A21 11:AA11: 75        .byte $75
- D - I - 0x014A22 11:AA12: 01        .byte $01
- D - I - 0x014A23 11:AA13: 77        .byte $77
- D - I - 0x014A24 11:AA14: 05        .byte $05
- D - I - 0x014A25 11:AA15: 7D        .byte $7D
- D - I - 0x014A26 11:AA16: 09        .byte $09
- D - I - 0x014A27 11:AA17: 7F        .byte $7F
- D - I - 0x014A28 11:AA18: FF        .byte $FF



off_AA19:
- D - I - 0x014A29 11:AA19: 06        .byte $06
- D - I - 0x014A2A 11:AA1A: 07        .byte $07
- D - I - 0x014A2B 11:AA1B: 5E        .byte $5E
- D - I - 0x014A2C 11:AA1C: 5F        .byte $5F
- D - I - 0x014A2D 11:AA1D: BF        .byte $BF
- D - I - 0x014A2E 11:AA1E: 38        .byte $38
- D - I - 0x014A2F 11:AA1F: 42        .byte $42
- D - I - 0x014A30 11:AA20: A0        .byte $A0
- D - I - 0x014A31 11:AA21: 38        .byte $38
- D - I - 0x014A32 11:AA22: 43        .byte $43
- D - I - 0x014A33 11:AA23: 9F        .byte $9F
- D - I - 0x014A34 11:AA24: CC        .byte $CC
- D - I - 0x014A35 11:AA25: 00        .byte $00
- D - I - 0x014A36 11:AA26: 44        .byte $44
- D - I - 0x014A37 11:AA27: C4        .byte $C4
- D - I - 0x014A38 11:AA28: 00        .byte $00
- D - I - 0x014A39 11:AA29: 45        .byte $45
- D - I - 0x014A3A 11:AA2A: 01        .byte $01
- D - I - 0x014A3B 11:AA2B: 47        .byte $47
- D - I - 0x014A3C 11:AA2C: 05        .byte $05
- D - I - 0x014A3D 11:AA2D: 51        .byte $51
- D - I - 0x014A3E 11:AA2E: 09        .byte $09
- D - I - 0x014A3F 11:AA2F: 53        .byte $53
- D - I - 0x014A40 11:AA30: A1        .byte $A1
- D - I - 0x014A41 11:AA31: 38        .byte $38
- D - I - 0x014A42 11:AA32: 41        .byte $41
- D - I - 0x014A43 11:AA33: 3D        .byte $3D
- D - I - 0x014A44 11:AA34: 50        .byte $50
- D - I - 0x014A45 11:AA35: 00        .byte $00
- D - I - 0x014A46 11:AA36: 46        .byte $46
- D - I - 0x014A47 11:AA37: 01        .byte $01
- D - I - 0x014A48 11:AA38: 52        .byte $52
- D - I - 0x014A49 11:AA39: 05        .byte $05
- D - I - 0x014A4A 11:AA3A: 54        .byte $54
- D - I - 0x014A4B 11:AA3B: 09        .byte $09
- D - I - 0x014A4C 11:AA3C: 56        .byte $56
- D - I - 0x014A4D 11:AA3D: FF        .byte $FF



off_AA3E:
- D - I - 0x014A4E 11:AA3E: 06        .byte $06
- D - I - 0x014A4F 11:AA3F: 07        .byte $07
- D - I - 0x014A50 11:AA40: 5E        .byte $5E
- D - I - 0x014A51 11:AA41: 5F        .byte $5F
- D - I - 0x014A52 11:AA42: BF        .byte $BF
- D - I - 0x014A53 11:AA43: 39        .byte $39
- D - I - 0x014A54 11:AA44: 4A        .byte $4A
- D - I - 0x014A55 11:AA45: 3D        .byte $3D
- D - I - 0x014A56 11:AA46: 60        .byte $60
- D - I - 0x014A57 11:AA47: 01        .byte $01
- D - I - 0x014A58 11:AA48: 62        .byte $62
- D - I - 0x014A59 11:AA49: 05        .byte $05
- D - I - 0x014A5A 11:AA4A: 68        .byte $68
- D - I - 0x014A5B 11:AA4B: 09        .byte $09
- D - I - 0x014A5C 11:AA4C: 6A        .byte $6A
- D - I - 0x014A5D 11:AA4D: A0        .byte $A0
- D - I - 0x014A5E 11:AA4E: 39        .byte $39
- D - I - 0x014A5F 11:AA4F: 4B        .byte $4B
- D - I - 0x014A60 11:AA50: 3D        .byte $3D
- D - I - 0x014A61 11:AA51: 61        .byte $61
- D - I - 0x014A62 11:AA52: 01        .byte $01
- D - I - 0x014A63 11:AA53: 63        .byte $63
- D - I - 0x014A64 11:AA54: 05        .byte $05
- D - I - 0x014A65 11:AA55: 69        .byte $69
- D - I - 0x014A66 11:AA56: 09        .byte $09
- D - I - 0x014A67 11:AA57: 6B        .byte $6B
- D - I - 0x014A68 11:AA58: A1        .byte $A1
- D - I - 0x014A69 11:AA59: 3D        .byte $3D
- D - I - 0x014A6A 11:AA5A: 64        .byte $64
- D - I - 0x014A6B 11:AA5B: 01        .byte $01
- D - I - 0x014A6C 11:AA5C: 66        .byte $66
- D - I - 0x014A6D 11:AA5D: 05        .byte $05
- D - I - 0x014A6E 11:AA5E: 6C        .byte $6C
- D - I - 0x014A6F 11:AA5F: 09        .byte $09
- D - I - 0x014A70 11:AA60: 6E        .byte $6E
- D - I - 0x014A71 11:AA61: A2        .byte $A2
- D - I - 0x014A72 11:AA62: 01        .byte $01
- D - I - 0x014A73 11:AA63: 4D        .byte $4D
- D - I - 0x014A74 11:AA64: 05        .byte $05
- D - I - 0x014A75 11:AA65: 4C        .byte $4C
- D - I - 0x014A76 11:AA66: 09        .byte $09
- D - I - 0x014A77 11:AA67: 4E        .byte $4E
- D - I - 0x014A78 11:AA68: A3        .byte $A3
- D - I - 0x014A79 11:AA69: 01        .byte $01
- D - I - 0x014A7A 11:AA6A: 58        .byte $58
- D - I - 0x014A7B 11:AA6B: 05        .byte $05
- D - I - 0x014A7C 11:AA6C: 59        .byte $59
- D - I - 0x014A7D 11:AA6D: 09        .byte $09
- D - I - 0x014A7E 11:AA6E: 5C        .byte $5C
- D - I - 0x014A7F 11:AA6F: A1        .byte $A1
- D - I - 0x014A80 11:AA70: 38        .byte $38
- D - I - 0x014A81 11:AA71: 55        .byte $55
- D - I - 0x014A82 11:AA72: 3C        .byte $3C
- D - I - 0x014A83 11:AA73: 57        .byte $57
- D - I - 0x014A84 11:AA74: 0D        .byte $0D
- D - I - 0x014A85 11:AA75: 53        .byte $53
- D - I - 0x014A86 11:AA76: A2        .byte $A2
- D - I - 0x014A87 11:AA77: 38        .byte $38
- D - I - 0x014A88 11:AA78: 48        .byte $48
- D - I - 0x014A89 11:AA79: 3C        .byte $3C
- D - I - 0x014A8A 11:AA7A: 49        .byte $49
- D - I - 0x014A8B 11:AA7B: 00        .byte $00
- D - I - 0x014A8C 11:AA7C: 40        .byte $40
- D - I - 0x014A8D 11:AA7D: 0D        .byte $0D
- D - I - 0x014A8E 11:AA7E: 56        .byte $56
- D - I - 0x014A8F 11:AA7F: FF        .byte $FF



off_AA80:
- D - I - 0x014A90 11:AA80: 06        .byte $06
- D - I - 0x014A91 11:AA81: 07        .byte $07
- D - I - 0x014A92 11:AA82: 5E        .byte $5E
- D - I - 0x014A93 11:AA83: 5F        .byte $5F
- D - I - 0x014A94 11:AA84: A0        .byte $A0
- D - I - 0x014A95 11:AA85: 39        .byte $39
- D - I - 0x014A96 11:AA86: 58        .byte $58
- D - I - 0x014A97 11:AA87: 3D        .byte $3D
- D - I - 0x014A98 11:AA88: 59        .byte $59
- D - I - 0x014A99 11:AA89: 01        .byte $01
- D - I - 0x014A9A 11:AA8A: 5C        .byte $5C
- D - I - 0x014A9B 11:AA8B: FF        .byte $FF



off_AA8C:
- D - I - 0x014A9C 11:AA8C: 33        .byte $33
- D - I - 0x014A9D 11:AA8D: 5D        .byte $5D
- D - I - 0x014A9E 11:AA8E: 5E        .byte $5E
- D - I - 0x014A9F 11:AA8F: 5F        .byte $5F
- D - I - 0x014AA0 11:AA90: BD        .byte $BD
- D - I - 0x014AA1 11:AA91: 3C        .byte $3C
- D - I - 0x014AA2 11:AA92: 28        .byte $28
- D - I - 0x014AA3 11:AA93: BE        .byte $BE
- D - I - 0x014AA4 11:AA94: 38        .byte $38
- D - I - 0x014AA5 11:AA95: 02        .byte $02
- D - I - 0x014AA6 11:AA96: 3C        .byte $3C
- D - I - 0x014AA7 11:AA97: 08        .byte $08
- D - I - 0x014AA8 11:AA98: 00        .byte $00
- D - I - 0x014AA9 11:AA99: 0A        .byte $0A
- D - I - 0x014AAA 11:AA9A: 04        .byte $04
- D - I - 0x014AAB 11:AA9B: 20        .byte $20
- D - I - 0x014AAC 11:AA9C: 08        .byte $08
- D - I - 0x014AAD 11:AA9D: 22        .byte $22
- D - I - 0x014AAE 11:AA9E: BF        .byte $BF
- D - I - 0x014AAF 11:AA9F: 38        .byte $38
- D - I - 0x014AB0 11:AAA0: 01        .byte $01
- D - I - 0x014AB1 11:AAA1: 3C        .byte $3C
- D - I - 0x014AB2 11:AAA2: 01        .byte $01
- D - I - 0x014AB3 11:AAA3: 00        .byte $00
- D - I - 0x014AB4 11:AAA4: 0B        .byte $0B
- D - I - 0x014AB5 11:AAA5: 04        .byte $04
- D - I - 0x014AB6 11:AAA6: 21        .byte $21
- D - I - 0x014AB7 11:AAA7: 09        .byte $09
- D - I - 0x014AB8 11:AAA8: 23        .byte $23
- D - I - 0x014AB9 11:AAA9: 0C        .byte $0C
- D - I - 0x014ABA 11:AAAA: 29        .byte $29
- D - I - 0x014ABB 11:AAAB: A0        .byte $A0
- D - I - 0x014ABC 11:AAAC: 38        .byte $38
- D - I - 0x014ABD 11:AAAD: 01        .byte $01
- D - I - 0x014ABE 11:AAAE: 3C        .byte $3C
- D - I - 0x014ABF 11:AAAF: 01        .byte $01
- D - I - 0x014AC0 11:AAB0: 00        .byte $00
- D - I - 0x014AC1 11:AAB1: 01        .byte $01
- D - I - 0x014AC2 11:AAB2: 06        .byte $06
- D - I - 0x014AC3 11:AAB3: 24        .byte $24
- D - I - 0x014AC4 11:AAB4: 09        .byte $09
- D - I - 0x014AC5 11:AAB5: 26        .byte $26
- D - I - 0x014AC6 11:AAB6: 0C        .byte $0C
- D - I - 0x014AC7 11:AAB7: 2C        .byte $2C
- D - I - 0x014AC8 11:AAB8: A1        .byte $A1
- D - I - 0x014AC9 11:AAB9: 38        .byte $38
- D - I - 0x014ACA 11:AABA: 01        .byte $01
- D - I - 0x014ACB 11:AABB: 3C        .byte $3C
- D - I - 0x014ACC 11:AABC: 01        .byte $01
- D - I - 0x014ACD 11:AABD: 00        .byte $00
- D - I - 0x014ACE 11:AABE: 01        .byte $01
- D - I - 0x014ACF 11:AABF: 06        .byte $06
- D - I - 0x014AD0 11:AAC0: 25        .byte $25
- D - I - 0x014AD1 11:AAC1: 09        .byte $09
- D - I - 0x014AD2 11:AAC2: 27        .byte $27
- D - I - 0x014AD3 11:AAC3: 0C        .byte $0C
- D - I - 0x014AD4 11:AAC4: 2D        .byte $2D
- D - I - 0x014AD5 11:AAC5: A2        .byte $A2
- D - I - 0x014AD6 11:AAC6: 38        .byte $38
- D - I - 0x014AD7 11:AAC7: 01        .byte $01
- D - I - 0x014AD8 11:AAC8: 3C        .byte $3C
- D - I - 0x014AD9 11:AAC9: 01        .byte $01
- D - I - 0x014ADA 11:AACA: 00        .byte $00
- D - I - 0x014ADB 11:AACB: 01        .byte $01
- D - I - 0x014ADC 11:AACC: 04        .byte $04
- D - I - 0x014ADD 11:AACD: 30        .byte $30
- D - I - 0x014ADE 11:AACE: 08        .byte $08
- D - I - 0x014ADF 11:AACF: 32        .byte $32
- D - I - 0x014AE0 11:AAD0: 0C        .byte $0C
- D - I - 0x014AE1 11:AAD1: 38        .byte $38
- D - I - 0x014AE2 11:AAD2: A3        .byte $A3
- D - I - 0x014AE3 11:AAD3: 38        .byte $38
- D - I - 0x014AE4 11:AAD4: 0E        .byte $0E
- D - I - 0x014AE5 11:AAD5: 3C        .byte $3C
- D - I - 0x014AE6 11:AAD6: 01        .byte $01
- D - I - 0x014AE7 11:AAD7: 00        .byte $00
- D - I - 0x014AE8 11:AAD8: 01        .byte $01
- D - I - 0x014AE9 11:AAD9: 04        .byte $04
- D - I - 0x014AEA 11:AADA: 31        .byte $31
- D - I - 0x014AEB 11:AADB: 08        .byte $08
- D - I - 0x014AEC 11:AADC: 33        .byte $33
- D - I - 0x014AED 11:AADD: A4        .byte $A4
- D - I - 0x014AEE 11:AADE: 38        .byte $38
- D - I - 0x014AEF 11:AADF: 0F        .byte $0F
- D - I - 0x014AF0 11:AAE0: 3C        .byte $3C
- D - I - 0x014AF1 11:AAE1: 03        .byte $03
- D - I - 0x014AF2 11:AAE2: 00        .byte $00
- D - I - 0x014AF3 11:AAE3: 09        .byte $09
- D - I - 0x014AF4 11:AAE4: 04        .byte $04
- D - I - 0x014AF5 11:AAE5: 39        .byte $39
- D - I - 0x014AF6 11:AAE6: FF        .byte $FF



off_AAE7:
- D - I - 0x014AF7 11:AAE7: 30        .byte $30
- D - I - 0x014AF8 11:AAE8: 31        .byte $31
- D - I - 0x014AF9 11:AAE9: 32        .byte $32
- D - I - 0x014AFA 11:AAEA: 5F        .byte $5F
- D - I - 0x014AFB 11:AAEB: BD        .byte $BD
- D - I - 0x014AFC 11:AAEC: 38        .byte $38
- D - I - 0x014AFD 11:AAED: 81        .byte $81
- D - I - 0x014AFE 11:AAEE: BE        .byte $BE
- D - I - 0x014AFF 11:AAEF: 38        .byte $38
- D - I - 0x014B00 11:AAF0: 80        .byte $80
- D - I - 0x014B01 11:AAF1: 3C        .byte $3C
- D - I - 0x014B02 11:AAF2: 82        .byte $82
- D - I - 0x014B03 11:AAF3: 00        .byte $00
- D - I - 0x014B04 11:AAF4: 88        .byte $88
- D - I - 0x014B05 11:AAF5: 04        .byte $04
- D - I - 0x014B06 11:AAF6: 8A        .byte $8A
- D - I - 0x014B07 11:AAF7: 08        .byte $08
- D - I - 0x014B08 11:AAF8: 22        .byte $22
- D - I - 0x014B09 11:AAF9: BF        .byte $BF
- D - I - 0x014B0A 11:AAFA: 38        .byte $38
- D - I - 0x014B0B 11:AAFB: 01        .byte $01
- D - I - 0x014B0C 11:AAFC: 3C        .byte $3C
- D - I - 0x014B0D 11:AAFD: 01        .byte $01
- D - I - 0x014B0E 11:AAFE: 02        .byte $02
- D - I - 0x014B0F 11:AAFF: 89        .byte $89
- D - I - 0x014B10 11:AB00: 04        .byte $04
- D - I - 0x014B11 11:AB01: 8B        .byte $8B
- D - I - 0x014B12 11:AB02: 05        .byte $05
- D - I - 0x014B13 11:AB03: 83        .byte $83
- D - I - 0x014B14 11:AB04: 09        .byte $09
- D - I - 0x014B15 11:AB05: A1        .byte $A1
- D - I - 0x014B16 11:AB06: 0C        .byte $0C
- D - I - 0x014B17 11:AB07: 46        .byte $46
- D - I - 0x014B18 11:AB08: A0        .byte $A0
- D - I - 0x014B19 11:AB09: 38        .byte $38
- D - I - 0x014B1A 11:AB0A: 01        .byte $01
- D - I - 0x014B1B 11:AB0B: 3C        .byte $3C
- D - I - 0x014B1C 11:AB0C: 01        .byte $01
- D - I - 0x014B1D 11:AB0D: 00        .byte $00
- D - I - 0x014B1E 11:AB0E: 01        .byte $01
- D - I - 0x014B1F 11:AB0F: 04        .byte $04
- D - I - 0x014B20 11:AB10: 8C        .byte $8C
- D - I - 0x014B21 11:AB11: 09        .byte $09
- D - I - 0x014B22 11:AB12: 8E        .byte $8E
- D - I - 0x014B23 11:AB13: 0C        .byte $0C
- D - I - 0x014B24 11:AB14: A4        .byte $A4
- D - I - 0x014B25 11:AB15: A1        .byte $A1
- D - I - 0x014B26 11:AB16: 38        .byte $38
- D - I - 0x014B27 11:AB17: 01        .byte $01
- D - I - 0x014B28 11:AB18: 3C        .byte $3C
- D - I - 0x014B29 11:AB19: 01        .byte $01
- D - I - 0x014B2A 11:AB1A: 00        .byte $00
- D - I - 0x014B2B 11:AB1B: 01        .byte $01
- D - I - 0x014B2C 11:AB1C: 04        .byte $04
- D - I - 0x014B2D 11:AB1D: 8D        .byte $8D
- D - I - 0x014B2E 11:AB1E: 08        .byte $08
- D - I - 0x014B2F 11:AB1F: 8F        .byte $8F
- D - I - 0x014B30 11:AB20: 0C        .byte $0C
- D - I - 0x014B31 11:AB21: 2D        .byte $2D
- D - I - 0x014B32 11:AB22: A2        .byte $A2
- D - I - 0x014B33 11:AB23: 38        .byte $38
- D - I - 0x014B34 11:AB24: 01        .byte $01
- D - I - 0x014B35 11:AB25: 3C        .byte $3C
- D - I - 0x014B36 11:AB26: 01        .byte $01
- D - I - 0x014B37 11:AB27: 00        .byte $00
- D - I - 0x014B38 11:AB28: 01        .byte $01
- D - I - 0x014B39 11:AB29: 04        .byte $04
- D - I - 0x014B3A 11:AB2A: 98        .byte $98
- D - I - 0x014B3B 11:AB2B: 08        .byte $08
- D - I - 0x014B3C 11:AB2C: 9A        .byte $9A
- D - I - 0x014B3D 11:AB2D: 0C        .byte $0C
- D - I - 0x014B3E 11:AB2E: 53        .byte $53
- D - I - 0x014B3F 11:AB2F: A3        .byte $A3
- D - I - 0x014B40 11:AB30: 38        .byte $38
- D - I - 0x014B41 11:AB31: 84        .byte $84
- D - I - 0x014B42 11:AB32: 3C        .byte $3C
- D - I - 0x014B43 11:AB33: 01        .byte $01
- D - I - 0x014B44 11:AB34: 00        .byte $00
- D - I - 0x014B45 11:AB35: 90        .byte $90
- D - I - 0x014B46 11:AB36: 04        .byte $04
- D - I - 0x014B47 11:AB37: 92        .byte $92
- D - I - 0x014B48 11:AB38: 08        .byte $08
- D - I - 0x014B49 11:AB39: 86        .byte $86
- D - I - 0x014B4A 11:AB3A: A4        .byte $A4
- D - I - 0x014B4B 11:AB3B: 38        .byte $38
- D - I - 0x014B4C 11:AB3C: 85        .byte $85
- D - I - 0x014B4D 11:AB3D: 3C        .byte $3C
- D - I - 0x014B4E 11:AB3E: 87        .byte $87
- D - I - 0x014B4F 11:AB3F: 00        .byte $00
- D - I - 0x014B50 11:AB40: 91        .byte $91
- D - I - 0x014B51 11:AB41: 04        .byte $04
- D - I - 0x014B52 11:AB42: 93        .byte $93
- D - I - 0x014B53 11:AB43: A5        .byte $A5
- D - I - 0x014B54 11:AB44: 0C        .byte $0C
- D - I - 0x014B55 11:AB45: A5        .byte $A5
- D - I - 0x014B56 11:AB46: A6        .byte $A6
- D - I - 0x014B57 11:AB47: 0C        .byte $0C
- D - I - 0x014B58 11:AB48: B0        .byte $B0
- D - I - 0x014B59 11:AB49: FF        .byte $FF



off_AB4A:
- D - I - 0x014B5A 11:AB4A: 36        .byte $36
- D - I - 0x014B5B 11:AB4B: 37        .byte $37
- D - I - 0x014B5C 11:AB4C: 5E        .byte $5E
- D - I - 0x014B5D 11:AB4D: 5F        .byte $5F
- D - I - 0x014B5E 11:AB4E: BE        .byte $BE
- D - I - 0x014B5F 11:AB4F: 39        .byte $39
- D - I - 0x014B60 11:AB50: 04        .byte $04
- D - I - 0x014B61 11:AB51: 3D        .byte $3D
- D - I - 0x014B62 11:AB52: 02        .byte $02
- D - I - 0x014B63 11:AB53: 01        .byte $01
- D - I - 0x014B64 11:AB54: 08        .byte $08
- D - I - 0x014B65 11:AB55: 04        .byte $04
- D - I - 0x014B66 11:AB56: 0A        .byte $0A
- D - I - 0x014B67 11:AB57: 08        .byte $08
- D - I - 0x014B68 11:AB58: 20        .byte $20
- D - I - 0x014B69 11:AB59: BF        .byte $BF
- D - I - 0x014B6A 11:AB5A: 39        .byte $39
- D - I - 0x014B6B 11:AB5B: 33        .byte $33
- D - I - 0x014B6C 11:AB5C: 3D        .byte $3D
- D - I - 0x014B6D 11:AB5D: 03        .byte $03
- D - I - 0x014B6E 11:AB5E: 01        .byte $01
- D - I - 0x014B6F 11:AB5F: 09        .byte $09
- D - I - 0x014B70 11:AB60: 02        .byte $02
- D - I - 0x014B71 11:AB61: 05        .byte $05
- D - I - 0x014B72 11:AB62: 04        .byte $04
- D - I - 0x014B73 11:AB63: 0B        .byte $0B
- D - I - 0x014B74 11:AB64: 06        .byte $06
- D - I - 0x014B75 11:AB65: 07        .byte $07
- D - I - 0x014B76 11:AB66: 0A        .byte $0A
- D - I - 0x014B77 11:AB67: 21        .byte $21
- D - I - 0x014B78 11:AB68: 0C        .byte $0C
- D - I - 0x014B79 11:AB69: 23        .byte $23
- D - I - 0x014B7A 11:AB6A: A0        .byte $A0
- D - I - 0x014B7B 11:AB6B: 39        .byte $39
- D - I - 0x014B7C 11:AB6C: 33        .byte $33
- D - I - 0x014B7D 11:AB6D: 3D        .byte $3D
- D - I - 0x014B7E 11:AB6E: 06        .byte $06
- D - I - 0x014B7F 11:AB6F: 01        .byte $01
- D - I - 0x014B80 11:AB70: 0C        .byte $0C
- D - I - 0x014B81 11:AB71: 05        .byte $05
- D - I - 0x014B82 11:AB72: 0E        .byte $0E
- D - I - 0x014B83 11:AB73: 0A        .byte $0A
- D - I - 0x014B84 11:AB74: 24        .byte $24
- D - I - 0x014B85 11:AB75: 0C        .byte $0C
- D - I - 0x014B86 11:AB76: 26        .byte $26
- D - I - 0x014B87 11:AB77: A1        .byte $A1
- D - I - 0x014B88 11:AB78: 39        .byte $39
- D - I - 0x014B89 11:AB79: 33        .byte $33
- D - I - 0x014B8A 11:AB7A: 3D        .byte $3D
- D - I - 0x014B8B 11:AB7B: 33        .byte $33
- D - I - 0x014B8C 11:AB7C: 01        .byte $01
- D - I - 0x014B8D 11:AB7D: 0D        .byte $0D
- D - I - 0x014B8E 11:AB7E: 05        .byte $05
- D - I - 0x014B8F 11:AB7F: 0F        .byte $0F
- D - I - 0x014B90 11:AB80: 08        .byte $08
- D - I - 0x014B91 11:AB81: 25        .byte $25
- D - I - 0x014B92 11:AB82: 0A        .byte $0A
- D - I - 0x014B93 11:AB83: 22        .byte $22
- D - I - 0x014B94 11:AB84: 0C        .byte $0C
- D - I - 0x014B95 11:AB85: 27        .byte $27
- D - I - 0x014B96 11:AB86: A2        .byte $A2
- D - I - 0x014B97 11:AB87: 39        .byte $39
- D - I - 0x014B98 11:AB88: 33        .byte $33
- D - I - 0x014B99 11:AB89: 3D        .byte $3D
- D - I - 0x014B9A 11:AB8A: 33        .byte $33
- D - I - 0x014B9B 11:AB8B: 01        .byte $01
- D - I - 0x014B9C 11:AB8C: 33        .byte $33
- D - I - 0x014B9D 11:AB8D: 05        .byte $05
- D - I - 0x014B9E 11:AB8E: 1A        .byte $1A
- D - I - 0x014B9F 11:AB8F: 09        .byte $09
- D - I - 0x014BA0 11:AB90: 30        .byte $30
- D - I - 0x014BA1 11:AB91: 0C        .byte $0C
- D - I - 0x014BA2 11:AB92: 32        .byte $32
- D - I - 0x014BA3 11:AB93: A3        .byte $A3
- D - I - 0x014BA4 11:AB94: 39        .byte $39
- D - I - 0x014BA5 11:AB95: 11        .byte $11
- D - I - 0x014BA6 11:AB96: 3D        .byte $3D
- D - I - 0x014BA7 11:AB97: 33        .byte $33
- D - I - 0x014BA8 11:AB98: 01        .byte $01
- D - I - 0x014BA9 11:AB99: 10        .byte $10
- D - I - 0x014BAA 11:AB9A: 05        .byte $05
- D - I - 0x014BAB 11:AB9B: 12        .byte $12
- D - I - 0x014BAC 11:AB9C: 09        .byte $09
- D - I - 0x014BAD 11:AB9D: 18        .byte $18
- D - I - 0x014BAE 11:AB9E: A4        .byte $A4
- D - I - 0x014BAF 11:AB9F: 39        .byte $39
- D - I - 0x014BB0 11:ABA0: 13        .byte $13
- D - I - 0x014BB1 11:ABA1: 3D        .byte $3D
- D - I - 0x014BB2 11:ABA2: 19        .byte $19
- D - I - 0x014BB3 11:ABA3: 01        .byte $01
- D - I - 0x014BB4 11:ABA4: 1B        .byte $1B
- D - I - 0x014BB5 11:ABA5: 05        .byte $05
- D - I - 0x014BB6 11:ABA6: 31        .byte $31
- D - I - 0x014BB7 11:ABA7: FF        .byte $FF



off_ABA8:
- D - I - 0x014BB8 11:ABA8: 30        .byte $30
- D - I - 0x014BB9 11:ABA9: 31        .byte $31
- D - I - 0x014BBA 11:ABAA: 32        .byte $32
- D - I - 0x014BBB 11:ABAB: 5F        .byte $5F
- D - I - 0x014BBC 11:ABAC: BE        .byte $BE
- D - I - 0x014BBD 11:ABAD: 39        .byte $39
- D - I - 0x014BBE 11:ABAE: 3C        .byte $3C
- D - I - 0x014BBF 11:ABAF: 3D        .byte $3D
- D - I - 0x014BC0 11:ABB0: 3E        .byte $3E
- D - I - 0x014BC1 11:ABB1: 01        .byte $01
- D - I - 0x014BC2 11:ABB2: 04        .byte $04
- D - I - 0x014BC3 11:ABB3: 04        .byte $04
- D - I - 0x014BC4 11:ABB4: 06        .byte $06
- D - I - 0x014BC5 11:ABB5: 08        .byte $08
- D - I - 0x014BC6 11:ABB6: 22        .byte $22
- D - I - 0x014BC7 11:ABB7: BF        .byte $BF
- D - I - 0x014BC8 11:ABB8: 39        .byte $39
- D - I - 0x014BC9 11:ABB9: 3D        .byte $3D
- D - I - 0x014BCA 11:ABBA: 3D        .byte $3D
- D - I - 0x014BCB 11:ABBB: 3F        .byte $3F
- D - I - 0x014BCC 11:ABBC: 01        .byte $01
- D - I - 0x014BCD 11:ABBD: 05        .byte $05
- D - I - 0x014BCE 11:ABBE: 04        .byte $04
- D - I - 0x014BCF 11:ABBF: 07        .byte $07
- D - I - 0x014BD0 11:ABC0: 0A        .byte $0A
- D - I - 0x014BD1 11:ABC1: 1D        .byte $1D
- D - I - 0x014BD2 11:ABC2: 0C        .byte $0C
- D - I - 0x014BD3 11:ABC3: 1F        .byte $1F
- D - I - 0x014BD4 11:ABC4: A0        .byte $A0
- D - I - 0x014BD5 11:ABC5: 39        .byte $39
- D - I - 0x014BD6 11:ABC6: 02        .byte $02
- D - I - 0x014BD7 11:ABC7: 3D        .byte $3D
- D - I - 0x014BD8 11:ABC8: 02        .byte $02
- D - I - 0x014BD9 11:ABC9: 01        .byte $01
- D - I - 0x014BDA 11:ABCA: 10        .byte $10
- D - I - 0x014BDB 11:ABCB: 04        .byte $04
- D - I - 0x014BDC 11:ABCC: 12        .byte $12
- D - I - 0x014BDD 11:ABCD: 05        .byte $05
- D - I - 0x014BDE 11:ABCE: 14        .byte $14
- D - I - 0x014BDF 11:ABCF: 0A        .byte $0A
- D - I - 0x014BE0 11:ABD0: 35        .byte $35
- D - I - 0x014BE1 11:ABD1: 0C        .byte $0C
- D - I - 0x014BE2 11:ABD2: 37        .byte $37
- D - I - 0x014BE3 11:ABD3: A1        .byte $A1
- D - I - 0x014BE4 11:ABD4: 39        .byte $39
- D - I - 0x014BE5 11:ABD5: 02        .byte $02
- D - I - 0x014BE6 11:ABD6: 3D        .byte $3D
- D - I - 0x014BE7 11:ABD7: 02        .byte $02
- D - I - 0x014BE8 11:ABD8: 01        .byte $01
- D - I - 0x014BE9 11:ABD9: 11        .byte $11
- D - I - 0x014BEA 11:ABDA: 05        .byte $05
- D - I - 0x014BEB 11:ABDB: 13        .byte $13
- D - I - 0x014BEC 11:ABDC: 0A        .byte $0A
- D - I - 0x014BED 11:ABDD: 2E        .byte $2E
- D - I - 0x014BEE 11:ABDE: 0C        .byte $0C
- D - I - 0x014BEF 11:ABDF: 3B        .byte $3B
- D - I - 0x014BF0 11:ABE0: A2        .byte $A2
- D - I - 0x014BF1 11:ABE1: 39        .byte $39
- D - I - 0x014BF2 11:ABE2: 2B        .byte $2B
- D - I - 0x014BF3 11:ABE3: 3D        .byte $3D
- D - I - 0x014BF4 11:ABE4: 02        .byte $02
- D - I - 0x014BF5 11:ABE5: 01        .byte $01
- D - I - 0x014BF6 11:ABE6: 02        .byte $02
- D - I - 0x014BF7 11:ABE7: 05        .byte $05
- D - I - 0x014BF8 11:ABE8: 16        .byte $16
- D - I - 0x014BF9 11:ABE9: 09        .byte $09
- D - I - 0x014BFA 11:ABEA: 2F        .byte $2F
- D - I - 0x014BFB 11:ABEB: 0F        .byte $0F
- D - I - 0x014BFC 11:ABEC: 1B        .byte $1B
- D - I - 0x014BFD 11:ABED: A3        .byte $A3
- D - I - 0x014BFE 11:ABEE: 39        .byte $39
- D - I - 0x014BFF 11:ABEF: 28        .byte $28
- D - I - 0x014C00 11:ABF0: 3D        .byte $3D
- D - I - 0x014C01 11:ABF1: 2A        .byte $2A
- D - I - 0x014C02 11:ABF2: 01        .byte $01
- D - I - 0x014C03 11:ABF3: 15        .byte $15
- D - I - 0x014C04 11:ABF4: 05        .byte $05
- D - I - 0x014C05 11:ABF5: 17        .byte $17
- D - I - 0x014C06 11:ABF6: 09        .byte $09
- D - I - 0x014C07 11:ABF7: 3A        .byte $3A
- D - I - 0x014C08 11:ABF8: FF        .byte $FF



off_ABF9:
- D - I - 0x014C09 11:ABF9: 30        .byte $30
- D - I - 0x014C0A 11:ABFA: 31        .byte $31
- D - I - 0x014C0B 11:ABFB: 32        .byte $32
- D - I - 0x014C0C 11:ABFC: 5F        .byte $5F
- D - I - 0x014C0D 11:ABFD: BE        .byte $BE
- D - I - 0x014C0E 11:ABFE: 39        .byte $39
- D - I - 0x014C0F 11:ABFF: 09        .byte $09
- D - I - 0x014C10 11:AC00: 3D        .byte $3D
- D - I - 0x014C11 11:AC01: 08        .byte $08
- D - I - 0x014C12 11:AC02: 01        .byte $01
- D - I - 0x014C13 11:AC03: 0A        .byte $0A
- D - I - 0x014C14 11:AC04: 04        .byte $04
- D - I - 0x014C15 11:AC05: 20        .byte $20
- D - I - 0x014C16 11:AC06: 08        .byte $08
- D - I - 0x014C17 11:AC07: 22        .byte $22
- D - I - 0x014C18 11:AC08: BF        .byte $BF
- D - I - 0x014C19 11:AC09: 39        .byte $39
- D - I - 0x014C1A 11:AC0A: 0C        .byte $0C
- D - I - 0x014C1B 11:AC0B: 3D        .byte $3D
- D - I - 0x014C1C 11:AC0C: 02        .byte $02
- D - I - 0x014C1D 11:AC0D: 01        .byte $01
- D - I - 0x014C1E 11:AC0E: 0B        .byte $0B
- D - I - 0x014C1F 11:AC0F: 04        .byte $04
- D - I - 0x014C20 11:AC10: 21        .byte $21
- D - I - 0x014C21 11:AC11: 0A        .byte $0A
- D - I - 0x014C22 11:AC12: 23        .byte $23
- D - I - 0x014C23 11:AC13: 0C        .byte $0C
- D - I - 0x014C24 11:AC14: 29        .byte $29
- D - I - 0x014C25 11:AC15: A0        .byte $A0
- D - I - 0x014C26 11:AC16: 39        .byte $39
- D - I - 0x014C27 11:AC17: 02        .byte $02
- D - I - 0x014C28 11:AC18: 3D        .byte $3D
- D - I - 0x014C29 11:AC19: 02        .byte $02
- D - I - 0x014C2A 11:AC1A: 01        .byte $01
- D - I - 0x014C2B 11:AC1B: 0E        .byte $0E
- D - I - 0x014C2C 11:AC1C: 05        .byte $05
- D - I - 0x014C2D 11:AC1D: 24        .byte $24
- D - I - 0x014C2E 11:AC1E: 0A        .byte $0A
- D - I - 0x014C2F 11:AC1F: 26        .byte $26
- D - I - 0x014C30 11:AC20: 0C        .byte $0C
- D - I - 0x014C31 11:AC21: 2C        .byte $2C
- D - I - 0x014C32 11:AC22: A1        .byte $A1
- D - I - 0x014C33 11:AC23: 39        .byte $39
- D - I - 0x014C34 11:AC24: 02        .byte $02
- D - I - 0x014C35 11:AC25: 3D        .byte $3D
- D - I - 0x014C36 11:AC26: 02        .byte $02
- D - I - 0x014C37 11:AC27: 01        .byte $01
- D - I - 0x014C38 11:AC28: 02        .byte $02
- D - I - 0x014C39 11:AC29: 05        .byte $05
- D - I - 0x014C3A 11:AC2A: 25        .byte $25
- D - I - 0x014C3B 11:AC2B: 07        .byte $07
- D - I - 0x014C3C 11:AC2C: 18        .byte $18
- D - I - 0x014C3D 11:AC2D: 0A        .byte $0A
- D - I - 0x014C3E 11:AC2E: 27        .byte $27
- D - I - 0x014C3F 11:AC2F: 0B        .byte $0B
- D - I - 0x014C40 11:AC30: 1A        .byte $1A
- D - I - 0x014C41 11:AC31: 0C        .byte $0C
- D - I - 0x014C42 11:AC32: 2D        .byte $2D
- D - I - 0x014C43 11:AC33: A2        .byte $A2
- D - I - 0x014C44 11:AC34: 39        .byte $39
- D - I - 0x014C45 11:AC35: 02        .byte $02
- D - I - 0x014C46 11:AC36: 3D        .byte $3D
- D - I - 0x014C47 11:AC37: 02        .byte $02
- D - I - 0x014C48 11:AC38: 01        .byte $01
- D - I - 0x014C49 11:AC39: 02        .byte $02
- D - I - 0x014C4A 11:AC3A: 05        .byte $05
- D - I - 0x014C4B 11:AC3B: 30        .byte $30
- D - I - 0x014C4C 11:AC3C: 09        .byte $09
- D - I - 0x014C4D 11:AC3D: 32        .byte $32
- D - I - 0x014C4E 11:AC3E: 0C        .byte $0C
- D - I - 0x014C4F 11:AC3F: 38        .byte $38
- D - I - 0x014C50 11:AC40: A3        .byte $A3
- D - I - 0x014C51 11:AC41: 39        .byte $39
- D - I - 0x014C52 11:AC42: 19        .byte $19
- D - I - 0x014C53 11:AC43: 3D        .byte $3D
- D - I - 0x014C54 11:AC44: 02        .byte $02
- D - I - 0x014C55 11:AC45: 01        .byte $01
- D - I - 0x014C56 11:AC46: 31        .byte $31
- D - I - 0x014C57 11:AC47: 05        .byte $05
- D - I - 0x014C58 11:AC48: 33        .byte $33
- D - I - 0x014C59 11:AC49: 09        .byte $09
- D - I - 0x014C5A 11:AC4A: 39        .byte $39
- D - I - 0x014C5B 11:AC4B: A4        .byte $A4
- D - I - 0x014C5C 11:AC4C: 39        .byte $39
- D - I - 0x014C5D 11:AC4D: 1C        .byte $1C
- D - I - 0x014C5E 11:AC4E: 3D        .byte $3D
- D - I - 0x014C5F 11:AC4F: 1E        .byte $1E
- D - I - 0x014C60 11:AC50: 01        .byte $01
- D - I - 0x014C61 11:AC51: 34        .byte $34
- D - I - 0x014C62 11:AC52: 05        .byte $05
- D - I - 0x014C63 11:AC53: 36        .byte $36
- D - I - 0x014C64 11:AC54: A5        .byte $A5
- D - I - 0x014C65 11:AC55: 39        .byte $39
- D - I - 0x014C66 11:AC56: 0D        .byte $0D
- D - I - 0x014C67 11:AC57: 3D        .byte $3D
- D - I - 0x014C68 11:AC58: 0F        .byte $0F
- D - I - 0x014C69 11:AC59: FF        .byte $FF



off_AC5A:
- D - I - 0x014C6A 11:AC5A: 30        .byte $30
- D - I - 0x014C6B 11:AC5B: 31        .byte $31
- D - I - 0x014C6C 11:AC5C: 32        .byte $32
- D - I - 0x014C6D 11:AC5D: 5F        .byte $5F
- D - I - 0x014C6E 11:AC5E: BD        .byte $BD
- D - I - 0x014C6F 11:AC5F: 39        .byte $39
- D - I - 0x014C70 11:AC60: 40        .byte $40
- D - I - 0x014C71 11:AC61: 3D        .byte $3D
- D - I - 0x014C72 11:AC62: 42        .byte $42
- D - I - 0x014C73 11:AC63: 01        .byte $01
- D - I - 0x014C74 11:AC64: 48        .byte $48
- D - I - 0x014C75 11:AC65: BE        .byte $BE
- D - I - 0x014C76 11:AC66: 39        .byte $39
- D - I - 0x014C77 11:AC67: 41        .byte $41
- D - I - 0x014C78 11:AC68: 3D        .byte $3D
- D - I - 0x014C79 11:AC69: 43        .byte $43
- D - I - 0x014C7A 11:AC6A: 01        .byte $01
- D - I - 0x014C7B 11:AC6B: 49        .byte $49
- D - I - 0x014C7C 11:AC6C: 04        .byte $04
- D - I - 0x014C7D 11:AC6D: 4B        .byte $4B
- D - I - 0x014C7E 11:AC6E: 08        .byte $08
- D - I - 0x014C7F 11:AC6F: 22        .byte $22
- D - I - 0x014C80 11:AC70: BF        .byte $BF
- D - I - 0x014C81 11:AC71: 39        .byte $39
- D - I - 0x014C82 11:AC72: 02        .byte $02
- D - I - 0x014C83 11:AC73: 01        .byte $01
- D - I - 0x014C84 11:AC74: 4C        .byte $4C
- D - I - 0x014C85 11:AC75: 04        .byte $04
- D - I - 0x014C86 11:AC76: 4E        .byte $4E
- D - I - 0x014C87 11:AC77: 0A        .byte $0A
- D - I - 0x014C88 11:AC78: 44        .byte $44
- D - I - 0x014C89 11:AC79: 0C        .byte $0C
- D - I - 0x014C8A 11:AC7A: 46        .byte $46
- D - I - 0x014C8B 11:AC7B: A0        .byte $A0
- D - I - 0x014C8C 11:AC7C: 01        .byte $01
- D - I - 0x014C8D 11:AC7D: 4D        .byte $4D
- D - I - 0x014C8E 11:AC7E: 04        .byte $04
- D - I - 0x014C8F 11:AC7F: 4F        .byte $4F
- D - I - 0x014C90 11:AC80: 0A        .byte $0A
- D - I - 0x014C91 11:AC81: 45        .byte $45
- D - I - 0x014C92 11:AC82: 0C        .byte $0C
- D - I - 0x014C93 11:AC83: 47        .byte $47
- D - I - 0x014C94 11:AC84: A1        .byte $A1
- D - I - 0x014C95 11:AC85: 07        .byte $07
- D - I - 0x014C96 11:AC86: 5A        .byte $5A
- D - I - 0x014C97 11:AC87: 08        .byte $08
- D - I - 0x014C98 11:AC88: 50        .byte $50
- D - I - 0x014C99 11:AC89: 0A        .byte $0A
- D - I - 0x014C9A 11:AC8A: 4A        .byte $4A
- D - I - 0x014C9B 11:AC8B: 0C        .byte $0C
- D - I - 0x014C9C 11:AC8C: 2D        .byte $2D
- D - I - 0x014C9D 11:AC8D: A2        .byte $A2
- D - I - 0x014C9E 11:AC8E: 39        .byte $39
- D - I - 0x014C9F 11:AC8F: 02        .byte $02
- D - I - 0x014CA0 11:AC90: 05        .byte $05
- D - I - 0x014CA1 11:AC91: 5B        .byte $5B
- D - I - 0x014CA2 11:AC92: 09        .byte $09
- D - I - 0x014CA3 11:AC93: 51        .byte $51
- D - I - 0x014CA4 11:AC94: 0C        .byte $0C
- D - I - 0x014CA5 11:AC95: 53        .byte $53
- D - I - 0x014CA6 11:AC96: A3        .byte $A3
- D - I - 0x014CA7 11:AC97: 39        .byte $39
- D - I - 0x014CA8 11:AC98: 02        .byte $02
- D - I - 0x014CA9 11:AC99: 3D        .byte $3D
- D - I - 0x014CAA 11:AC9A: 02        .byte $02
- D - I - 0x014CAB 11:AC9B: 01        .byte $01
- D - I - 0x014CAC 11:AC9C: 02        .byte $02
- D - I - 0x014CAD 11:AC9D: 05        .byte $05
- D - I - 0x014CAE 11:AC9E: 5E        .byte $5E
- D - I - 0x014CAF 11:AC9F: 09        .byte $09
- D - I - 0x014CB0 11:ACA0: 54        .byte $54
- D - I - 0x014CB1 11:ACA1: A4        .byte $A4
- D - I - 0x014CB2 11:ACA2: 39        .byte $39
- D - I - 0x014CB3 11:ACA3: 02        .byte $02
- D - I - 0x014CB4 11:ACA4: 3D        .byte $3D
- D - I - 0x014CB5 11:ACA5: 56        .byte $56
- D - I - 0x014CB6 11:ACA6: 01        .byte $01
- D - I - 0x014CB7 11:ACA7: 02        .byte $02
- D - I - 0x014CB8 11:ACA8: 05        .byte $05
- D - I - 0x014CB9 11:ACA9: 5F        .byte $5F
- D - I - 0x014CBA 11:ACAA: 09        .byte $09
- D - I - 0x014CBB 11:ACAB: 55        .byte $55
- D - I - 0x014CBC 11:ACAC: A5        .byte $A5
- D - I - 0x014CBD 11:ACAD: 39        .byte $39
- D - I - 0x014CBE 11:ACAE: 02        .byte $02
- D - I - 0x014CBF 11:ACAF: 3D        .byte $3D
- D - I - 0x014CC0 11:ACB0: 5C        .byte $5C
- D - I - 0x014CC1 11:ACB1: 01        .byte $01
- D - I - 0x014CC2 11:ACB2: 52        .byte $52
- D - I - 0x014CC3 11:ACB3: 05        .byte $05
- D - I - 0x014CC4 11:ACB4: 58        .byte $58
- D - I - 0x014CC5 11:ACB5: A6        .byte $A6
- D - I - 0x014CC6 11:ACB6: 39        .byte $39
- D - I - 0x014CC7 11:ACB7: 57        .byte $57
- D - I - 0x014CC8 11:ACB8: 3D        .byte $3D
- D - I - 0x014CC9 11:ACB9: 5D        .byte $5D
- D - I - 0x014CCA 11:ACBA: 01        .byte $01
- D - I - 0x014CCB 11:ACBB: 59        .byte $59
- D - I - 0x014CCC 11:ACBC: FF        .byte $FF



off_ACBD:
- D - I - 0x014CCD 11:ACBD: 30        .byte $30
- D - I - 0x014CCE 11:ACBE: 31        .byte $31
- D - I - 0x014CCF 11:ACBF: 32        .byte $32
- D - I - 0x014CD0 11:ACC0: 5F        .byte $5F
- D - I - 0x014CD1 11:ACC1: BC        .byte $BC
- D - I - 0x014CD2 11:ACC2: 39        .byte $39
- D - I - 0x014CD3 11:ACC3: A0        .byte $A0
- D - I - 0x014CD4 11:ACC4: BD        .byte $BD
- D - I - 0x014CD5 11:ACC5: 39        .byte $39
- D - I - 0x014CD6 11:ACC6: A2        .byte $A2
- D - I - 0x014CD7 11:ACC7: 3D        .byte $3D
- D - I - 0x014CD8 11:ACC8: A8        .byte $A8
- D - I - 0x014CD9 11:ACC9: BE        .byte $BE
- D - I - 0x014CDA 11:ACCA: 39        .byte $39
- D - I - 0x014CDB 11:ACCB: A3        .byte $A3
- D - I - 0x014CDC 11:ACCC: 3D        .byte $3D
- D - I - 0x014CDD 11:ACCD: A9        .byte $A9
- D - I - 0x014CDE 11:ACCE: 01        .byte $01
- D - I - 0x014CDF 11:ACCF: A6        .byte $A6
- D - I - 0x014CE0 11:ACD0: 04        .byte $04
- D - I - 0x014CE1 11:ACD1: AC        .byte $AC
- D - I - 0x014CE2 11:ACD2: 08        .byte $08
- D - I - 0x014CE3 11:ACD3: 22        .byte $22
- D - I - 0x014CE4 11:ACD4: BF        .byte $BF
- D - I - 0x014CE5 11:ACD5: 39        .byte $39
- D - I - 0x014CE6 11:ACD6: 02        .byte $02
- D - I - 0x014CE7 11:ACD7: 3D        .byte $3D
- D - I - 0x014CE8 11:ACD8: 02        .byte $02
- D - I - 0x014CE9 11:ACD9: 01        .byte $01
- D - I - 0x014CEA 11:ACDA: A7        .byte $A7
- D - I - 0x014CEB 11:ACDB: 04        .byte $04
- D - I - 0x014CEC 11:ACDC: AD        .byte $AD
- D - I - 0x014CED 11:ACDD: 0A        .byte $0A
- D - I - 0x014CEE 11:ACDE: AF        .byte $AF
- D - I - 0x014CEF 11:ACDF: 0C        .byte $0C
- D - I - 0x014CF0 11:ACE0: B1        .byte $B1
- D - I - 0x014CF1 11:ACE1: A0        .byte $A0
- D - I - 0x014CF2 11:ACE2: 39        .byte $39
- D - I - 0x014CF3 11:ACE3: 02        .byte $02
- D - I - 0x014CF4 11:ACE4: 3D        .byte $3D
- D - I - 0x014CF5 11:ACE5: 02        .byte $02
- D - I - 0x014CF6 11:ACE6: 01        .byte $01
- D - I - 0x014CF7 11:ACE7: B2        .byte $B2
- D - I - 0x014CF8 11:ACE8: 04        .byte $04
- D - I - 0x014CF9 11:ACE9: B8        .byte $B8
- D - I - 0x014CFA 11:ACEA: 0A        .byte $0A
- D - I - 0x014CFB 11:ACEB: BA        .byte $BA
- D - I - 0x014CFC 11:ACEC: 0C        .byte $0C
- D - I - 0x014CFD 11:ACED: 9B        .byte $9B
- D - I - 0x014CFE 11:ACEE: A1        .byte $A1
- D - I - 0x014CFF 11:ACEF: 39        .byte $39
- D - I - 0x014D00 11:ACF0: 02        .byte $02
- D - I - 0x014D01 11:ACF1: 3D        .byte $3D
- D - I - 0x014D02 11:ACF2: 02        .byte $02
- D - I - 0x014D03 11:ACF3: 01        .byte $01
- D - I - 0x014D04 11:ACF4: B3        .byte $B3
- D - I - 0x014D05 11:ACF5: 04        .byte $04
- D - I - 0x014D06 11:ACF6: B9        .byte $B9
- D - I - 0x014D07 11:ACF7: 07        .byte $07
- D - I - 0x014D08 11:ACF8: AE        .byte $AE
- D - I - 0x014D09 11:ACF9: 08        .byte $08
- D - I - 0x014D0A 11:ACFA: BB        .byte $BB
- D - I - 0x014D0B 11:ACFB: 0C        .byte $0C
- D - I - 0x014D0C 11:ACFC: 2D        .byte $2D
- D - I - 0x014D0D 11:ACFD: A2        .byte $A2
- D - I - 0x014D0E 11:ACFE: 39        .byte $39
- D - I - 0x014D0F 11:ACFF: 02        .byte $02
- D - I - 0x014D10 11:AD00: 3D        .byte $3D
- D - I - 0x014D11 11:AD01: 02        .byte $02
- D - I - 0x014D12 11:AD02: 01        .byte $01
- D - I - 0x014D13 11:AD03: 94        .byte $94
- D - I - 0x014D14 11:AD04: 05        .byte $05
- D - I - 0x014D15 11:AD05: 96        .byte $96
- D - I - 0x014D16 11:AD06: 09        .byte $09
- D - I - 0x014D17 11:AD07: 99        .byte $99
- D - I - 0x014D18 11:AD08: 0C        .byte $0C
- D - I - 0x014D19 11:AD09: 53        .byte $53
- D - I - 0x014D1A 11:AD0A: A3        .byte $A3
- D - I - 0x014D1B 11:AD0B: 39        .byte $39
- D - I - 0x014D1C 11:AD0C: AA        .byte $AA
- D - I - 0x014D1D 11:AD0D: 3D        .byte $3D
- D - I - 0x014D1E 11:AD0E: AB        .byte $AB
- D - I - 0x014D1F 11:AD0F: 01        .byte $01
- D - I - 0x014D20 11:AD10: 95        .byte $95
- D - I - 0x014D21 11:AD11: 05        .byte $05
- D - I - 0x014D22 11:AD12: 97        .byte $97
- D - I - 0x014D23 11:AD13: FF        .byte $FF



off_AD14:
- D - I - 0x014D24 11:AD14: 38        .byte $38
- D - I - 0x014D25 11:AD15: 39        .byte $39
- D - I - 0x014D26 11:AD16: 3A        .byte $3A
- D - I - 0x014D27 11:AD17: 3B        .byte $3B
- D - I - 0x014D28 11:AD18: BD        .byte $BD
- D - I - 0x014D29 11:AD19: 81        .byte $81
- D - I - 0x014D2A 11:AD1A: C0        .byte $C0
- D - I - 0x014D2B 11:AD1B: 0E        .byte $0E
- D - I - 0x014D2C 11:AD1C: 20        .byte $20
- D - I - 0x014D2D 11:AD1D: 0E        .byte $0E
- D - I - 0x014D2E 11:AD1E: 04        .byte $04
- D - I - 0x014D2F 11:AD1F: BE        .byte $BE
- D - I - 0x014D30 11:AD20: 3A        .byte $3A
- D - I - 0x014D31 11:AD21: 02        .byte $02
- D - I - 0x014D32 11:AD22: 3E        .byte $3E
- D - I - 0x014D33 11:AD23: 08        .byte $08
- D - I - 0x014D34 11:AD24: 02        .byte $02
- D - I - 0x014D35 11:AD25: 0A        .byte $0A
- D - I - 0x014D36 11:AD26: 05        .byte $05
- D - I - 0x014D37 11:AD27: 21        .byte $21
- D - I - 0x014D38 11:AD28: 0E        .byte $0E
- D - I - 0x014D39 11:AD29: 05        .byte $05
- D - I - 0x014D3A 11:AD2A: BF        .byte $BF
- D - I - 0x014D3B 11:AD2B: 3A        .byte $3A
- D - I - 0x014D3C 11:AD2C: 03        .byte $03
- D - I - 0x014D3D 11:AD2D: 3E        .byte $3E
- D - I - 0x014D3E 11:AD2E: 09        .byte $09
- D - I - 0x014D3F 11:AD2F: 02        .byte $02
- D - I - 0x014D40 11:AD30: 0B        .byte $0B
- D - I - 0x014D41 11:AD31: 05        .byte $05
- D - I - 0x014D42 11:AD32: 24        .byte $24
- D - I - 0x014D43 11:AD33: 08        .byte $08
- D - I - 0x014D44 11:AD34: 26        .byte $26
- D - I - 0x014D45 11:AD35: 0C        .byte $0C
- D - I - 0x014D46 11:AD36: 2C        .byte $2C
- D - I - 0x014D47 11:AD37: 0E        .byte $0E
- D - I - 0x014D48 11:AD38: 10        .byte $10
- D - I - 0x014D49 11:AD39: A0        .byte $A0
- D - I - 0x014D4A 11:AD3A: 3A        .byte $3A
- D - I - 0x014D4B 11:AD3B: 06        .byte $06
- D - I - 0x014D4C 11:AD3C: 3E        .byte $3E
- D - I - 0x014D4D 11:AD3D: 0C        .byte $0C
- D - I - 0x014D4E 11:AD3E: 01        .byte $01
- D - I - 0x014D4F 11:AD3F: 0E        .byte $0E
- D - I - 0x014D50 11:AD40: 05        .byte $05
- D - I - 0x014D51 11:AD41: 25        .byte $25
- D - I - 0x014D52 11:AD42: 0B        .byte $0B
- D - I - 0x014D53 11:AD43: 27        .byte $27
- D - I - 0x014D54 11:AD44: 0C        .byte $0C
- D - I - 0x014D55 11:AD45: 2D        .byte $2D
- D - I - 0x014D56 11:AD46: A1        .byte $A1
- D - I - 0x014D57 11:AD47: 3A        .byte $3A
- D - I - 0x014D58 11:AD48: 07        .byte $07
- D - I - 0x014D59 11:AD49: 3E        .byte $3E
- D - I - 0x014D5A 11:AD4A: 0D        .byte $0D
- D - I - 0x014D5B 11:AD4B: 01        .byte $01
- D - I - 0x014D5C 11:AD4C: 0F        .byte $0F
- D - I - 0x014D5D 11:AD4D: 05        .byte $05
- D - I - 0x014D5E 11:AD4E: 30        .byte $30
- D - I - 0x014D5F 11:AD4F: 0B        .byte $0B
- D - I - 0x014D60 11:AD50: 32        .byte $32
- D - I - 0x014D61 11:AD51: 0C        .byte $0C
- D - I - 0x014D62 11:AD52: 38        .byte $38
- D - I - 0x014D63 11:AD53: A2        .byte $A2
- D - I - 0x014D64 11:AD54: 3A        .byte $3A
- D - I - 0x014D65 11:AD55: 12        .byte $12
- D - I - 0x014D66 11:AD56: 3E        .byte $3E
- D - I - 0x014D67 11:AD57: 18        .byte $18
- D - I - 0x014D68 11:AD58: 01        .byte $01
- D - I - 0x014D69 11:AD59: 1A        .byte $1A
- D - I - 0x014D6A 11:AD5A: 05        .byte $05
- D - I - 0x014D6B 11:AD5B: 1E        .byte $1E
- D - I - 0x014D6C 11:AD5C: 04        .byte $04
- D - I - 0x014D6D 11:AD5D: 31        .byte $31
- D - I - 0x014D6E 11:AD5E: 08        .byte $08
- D - I - 0x014D6F 11:AD5F: 33        .byte $33
- D - I - 0x014D70 11:AD60: 0C        .byte $0C
- D - I - 0x014D71 11:AD61: 39        .byte $39
- D - I - 0x014D72 11:AD62: A3        .byte $A3
- D - I - 0x014D73 11:AD63: 3A        .byte $3A
- D - I - 0x014D74 11:AD64: 13        .byte $13
- D - I - 0x014D75 11:AD65: 3C        .byte $3C
- D - I - 0x014D76 11:AD66: 19        .byte $19
- D - I - 0x014D77 11:AD67: 3E        .byte $3E
- D - I - 0x014D78 11:AD68: 1C        .byte $1C
- D - I - 0x014D79 11:AD69: 00        .byte $00
- D - I - 0x014D7A 11:AD6A: 1B        .byte $1B
- D - I - 0x014D7B 11:AD6B: 04        .byte $04
- D - I - 0x014D7C 11:AD6C: 34        .byte $34
- D - I - 0x014D7D 11:AD6D: 08        .byte $08
- D - I - 0x014D7E 11:AD6E: 36        .byte $36
- D - I - 0x014D7F 11:AD6F: 0C        .byte $0C
- D - I - 0x014D80 11:AD70: 3C        .byte $3C
- D - I - 0x014D81 11:AD71: FF        .byte $FF



off_AD72:
- D - I - 0x014D82 11:AD72: 18        .byte $18
- D - I - 0x014D83 11:AD73: 19        .byte $19
- D - I - 0x014D84 11:AD74: 1A        .byte $1A
- D - I - 0x014D85 11:AD75: 1B        .byte $1B
- D - I - 0x014D86 11:AD76: FA        .byte con_jsr
- D - I - 0x014D87 11:AD77: 88 BB     .word off_BB88
- D - I - 0x014D89 11:AD79: FB        .byte con_jmp
- D - I - 0x014D8A 11:AD7A: FC BA     .word off_BAFC



off_AD7C:
- D - I - 0x014D8C 11:AD7C: 18        .byte $18
- D - I - 0x014D8D 11:AD7D: 19        .byte $19
- D - I - 0x014D8E 11:AD7E: 1A        .byte $1A
- D - I - 0x014D8F 11:AD7F: 1B        .byte $1B
- D - I - 0x014D90 11:AD80: FA        .byte con_jsr
- D - I - 0x014D91 11:AD81: 88 BB     .word off_BB88
- D - I - 0x014D93 11:AD83: FB        .byte con_jmp
- D - I - 0x014D94 11:AD84: 14 BB     .word off_BB14



off_AD86:
- D - I - 0x014D96 11:AD86: 18        .byte $18
- D - I - 0x014D97 11:AD87: 19        .byte $19
- D - I - 0x014D98 11:AD88: 1A        .byte $1A
- D - I - 0x014D99 11:AD89: 1B        .byte $1B
- D - I - 0x014D9A 11:AD8A: FA        .byte con_jsr
- D - I - 0x014D9B 11:AD8B: 88 BB     .word off_BB88
- D - I - 0x014D9D 11:AD8D: FB        .byte con_jmp
- D - I - 0x014D9E 11:AD8E: 56 BB     .word off_BB56



off_AD90:
- D - I - 0x014DA0 11:AD90: 18        .byte $18
- D - I - 0x014DA1 11:AD91: 19        .byte $19
- D - I - 0x014DA2 11:AD92: 1A        .byte $1A
- D - I - 0x014DA3 11:AD93: 1B        .byte $1B
- D - I - 0x014DA4 11:AD94: FA        .byte con_jsr
- D - I - 0x014DA5 11:AD95: 88 BB     .word off_BB88
- D - I - 0x014DA7 11:AD97: FB        .byte con_jmp
- D - I - 0x014DA8 11:AD98: 6E BB     .word off_BB6E



off_AD9A:
- D - I - 0x014DAA 11:AD9A: 18        .byte $18
- D - I - 0x014DAB 11:AD9B: 19        .byte $19
- D - I - 0x014DAC 11:AD9C: 1A        .byte $1A
- D - I - 0x014DAD 11:AD9D: 1B        .byte $1B
- D - I - 0x014DAE 11:AD9E: FA        .byte con_jsr
- D - I - 0x014DAF 11:AD9F: 9C BB     .word off_BB9C
- D - I - 0x014DB1 11:ADA1: FB        .byte con_jmp
- D - I - 0x014DB2 11:ADA2: FC BA     .word off_BAFC



off_ADA4:
- D - I - 0x014DB4 11:ADA4: 18        .byte $18
- D - I - 0x014DB5 11:ADA5: 19        .byte $19
- D - I - 0x014DB6 11:ADA6: 1A        .byte $1A
- D - I - 0x014DB7 11:ADA7: 1B        .byte $1B
- D - I - 0x014DB8 11:ADA8: FA        .byte con_jsr
- D - I - 0x014DB9 11:ADA9: 9C BB     .word off_BB9C
- D - I - 0x014DBB 11:ADAB: FB        .byte con_jmp
- D - I - 0x014DBC 11:ADAC: 14 BB     .word off_BB14



off_ADAE:
- D - I - 0x014DBE 11:ADAE: 18        .byte $18
- D - I - 0x014DBF 11:ADAF: 19        .byte $19
- D - I - 0x014DC0 11:ADB0: 1A        .byte $1A
- D - I - 0x014DC1 11:ADB1: 1B        .byte $1B
- D - I - 0x014DC2 11:ADB2: FA        .byte con_jsr
- D - I - 0x014DC3 11:ADB3: 9C BB     .word off_BB9C
- D - I - 0x014DC5 11:ADB5: FB        .byte con_jmp
- D - I - 0x014DC6 11:ADB6: 56 BB     .word off_BB56



off_ADB8:
- D - I - 0x014DC8 11:ADB8: 16        .byte $16
- D - I - 0x014DC9 11:ADB9: 17        .byte $17
- D - I - 0x014DCA 11:ADBA: 2D        .byte $2D
- D - I - 0x014DCB 11:ADBB: 5F        .byte $5F
- D - I - 0x014DCC 11:ADBC: FA        .byte con_jsr
- D - I - 0x014DCD 11:ADBD: 03 BC     .word off_BC03
- D - I - 0x014DCF 11:ADBF: FB        .byte con_jmp
- D - I - 0x014DD0 11:ADC0: 3D BC     .word off_BC3D



off_ADC2:
- D - I - 0x014DD2 11:ADC2: 18        .byte $18
- D - I - 0x014DD3 11:ADC3: 19        .byte $19
- D - I - 0x014DD4 11:ADC4: 1A        .byte $1A
- D - I - 0x014DD5 11:ADC5: 1B        .byte $1B
- D - I - 0x014DD6 11:ADC6: FA        .byte con_jsr
- D - I - 0x014DD7 11:ADC7: A2 BB     .word off_BBA2
- D - I - 0x014DD9 11:ADC9: FB        .byte con_jmp
- D - I - 0x014DDA 11:ADCA: FC BA     .word off_BAFC



off_ADCC:
- D - I - 0x014DDC 11:ADCC: 18        .byte $18
- D - I - 0x014DDD 11:ADCD: 19        .byte $19
- D - I - 0x014DDE 11:ADCE: 1A        .byte $1A
- D - I - 0x014DDF 11:ADCF: 1B        .byte $1B
- D - I - 0x014DE0 11:ADD0: FA        .byte con_jsr
- D - I - 0x014DE1 11:ADD1: A2 BB     .word off_BBA2
- D - I - 0x014DE3 11:ADD3: FB        .byte con_jmp
- D - I - 0x014DE4 11:ADD4: 14 BB     .word off_BB14



off_ADD6:
- D - I - 0x014DE6 11:ADD6: 18        .byte $18
- D - I - 0x014DE7 11:ADD7: 19        .byte $19
- D - I - 0x014DE8 11:ADD8: 1A        .byte $1A
- D - I - 0x014DE9 11:ADD9: 1B        .byte $1B
- D - I - 0x014DEA 11:ADDA: BF        .byte $BF
- D - I - 0x014DEB 11:ADDB: 3F        .byte $3F
- D - I - 0x014DEC 11:ADDC: 48        .byte $48
- D - I - 0x014DED 11:ADDD: 03        .byte $03
- D - I - 0x014DEE 11:ADDE: 4A        .byte $4A
- D - I - 0x014DEF 11:ADDF: 07        .byte $07
- D - I - 0x014DF0 11:ADE0: 60        .byte $60
- D - I - 0x014DF1 11:ADE1: A0        .byte $A0
- D - I - 0x014DF2 11:ADE2: 3F        .byte $3F
- D - I - 0x014DF3 11:ADE3: 49        .byte $49
- D - I - 0x014DF4 11:ADE4: 03        .byte $03
- D - I - 0x014DF5 11:ADE5: 4B        .byte $4B
- D - I - 0x014DF6 11:ADE6: 07        .byte $07
- D - I - 0x014DF7 11:ADE7: 61        .byte $61
- D - I - 0x014DF8 11:ADE8: A1        .byte $A1
- D - I - 0x014DF9 11:ADE9: 3F        .byte $3F
- D - I - 0x014DFA 11:ADEA: FD        .byte $FD
- D - I - 0x014DFB 11:ADEB: 03        .byte $03
- D - I - 0x014DFC 11:ADEC: FF        .byte $FF
- D - I - 0x014DFD 11:ADED: 07        .byte $07
- D - I - 0x014DFE 11:ADEE: FE        .byte $FE
- D - I - 0x014DFF 11:ADEF: FF        .byte $FF



off_ADF0:
- D - I - 0x014E00 11:ADF0: 28        .byte $28
- D - I - 0x014E01 11:ADF1: 29        .byte $29
- D - I - 0x014E02 11:ADF2: 2A        .byte $2A
- D - I - 0x014E03 11:ADF3: 2B        .byte $2B
- D - I - 0x014E04 11:ADF4: BF        .byte $BF
- D - I - 0x014E05 11:ADF5: 07        .byte $07
- D - I - 0x014E06 11:ADF6: 50        .byte $50
- D - I - 0x014E07 11:ADF7: 0B        .byte $0B
- D - I - 0x014E08 11:ADF8: 52        .byte $52
- D - I - 0x014E09 11:ADF9: A0        .byte $A0
- D - I - 0x014E0A 11:ADFA: 07        .byte $07
- D - I - 0x014E0B 11:ADFB: 51        .byte $51
- D - I - 0x014E0C 11:ADFC: 0B        .byte $0B
- D - I - 0x014E0D 11:ADFD: 53        .byte $53
- D - I - 0x014E0E 11:ADFE: A1        .byte $A1
- D - I - 0x014E0F 11:ADFF: 07        .byte $07
- D - I - 0x014E10 11:AE00: 54        .byte $54
- D - I - 0x014E11 11:AE01: 09        .byte $09
- D - I - 0x014E12 11:AE02: 56        .byte $56
- D - I - 0x014E13 11:AE03: 0B        .byte $0B
- D - I - 0x014E14 11:AE04: 2E        .byte $2E
- D - I - 0x014E15 11:AE05: FB        .byte con_jmp
- D - I - 0x014E16 11:AE06: 06 BA     .word off_BA06



off_AE08:
- D - I - 0x014E18 11:AE08: 28        .byte $28
- D - I - 0x014E19 11:AE09: 29        .byte $29
- D - I - 0x014E1A 11:AE0A: 2A        .byte $2A
- D - I - 0x014E1B 11:AE0B: 2B        .byte $2B
- D - I - 0x014E1C 11:AE0C: FA        .byte con_jsr
- D - I - 0x014E1D 11:AE0D: 65 BA     .word off_BA65
- D - I - 0x014E1F 11:AE0F: FB        .byte con_jmp
- D - I - 0x014E20 11:AE10: 71 BA     .word off_BA71



off_AE12:
- D - I - 0x014E22 11:AE12: 28        .byte $28
- D - I - 0x014E23 11:AE13: 29        .byte $29
- D - I - 0x014E24 11:AE14: 2A        .byte $2A
- D - I - 0x014E25 11:AE15: 2B        .byte $2B
- D - I - 0x014E26 11:AE16: A1        .byte $A1
- D - I - 0x014E27 11:AE17: 03        .byte $03
- D - I - 0x014E28 11:AE18: 70        .byte $70
- D - I - 0x014E29 11:AE19: A2        .byte $A2
- D - I - 0x014E2A 11:AE1A: 03        .byte $03
- D - I - 0x014E2B 11:AE1B: 75        .byte $75
- D - I - 0x014E2C 11:AE1C: 07        .byte $07
- D - I - 0x014E2D 11:AE1D: 77        .byte $77
off_AE1E:
- D - I - 0x014E2E 11:AE1E: 0B        .byte $0B
- D - I - 0x014E2F 11:AE1F: 4F        .byte $4F
- D - I - 0x014E30 11:AE20: A0        .byte $A0
- D - I - 0x014E31 11:AE21: 03        .byte $03
- D - I - 0x014E32 11:AE22: 65        .byte $65
- D - I - 0x014E33 11:AE23: FA        .byte con_jsr
- D - I - 0x014E34 11:AE24: 65 BA     .word off_BA65
- D - I - 0x014E36 11:AE26: FB        .byte con_jmp
- D - I - 0x014E37 11:AE27: 7C BA     .word off_BA7C



off_AE29:
- D - I - 0x014E39 11:AE29: 28        .byte $28
- D - I - 0x014E3A 11:AE2A: 29        .byte $29
- D - I - 0x014E3B 11:AE2B: 2A        .byte $2A
- D - I - 0x014E3C 11:AE2C: 2B        .byte $2B
- D - I - 0x014E3D 11:AE2D: A1        .byte $A1
- D - I - 0x014E3E 11:AE2E: 03        .byte $03
- D - I - 0x014E3F 11:AE2F: 67        .byte $67
- D - I - 0x014E40 11:AE30: A2        .byte $A2
- D - I - 0x014E41 11:AE31: 03        .byte $03
- D - I - 0x014E42 11:AE32: 72        .byte $72
- D - I - 0x014E43 11:AE33: 07        .byte $07
- D - I - 0x014E44 11:AE34: 73        .byte $73
- D - I - 0x014E45 11:AE35: FB        .byte con_jmp
- D - I - 0x014E46 11:AE36: 1E AE     .word off_AE1E



off_AE38:
- D - I - 0x014E48 11:AE38: 28        .byte $28
- D - I - 0x014E49 11:AE39: 29        .byte $29
- D - I - 0x014E4A 11:AE3A: 2A        .byte $2A
- D - I - 0x014E4B 11:AE3B: 2B        .byte $2B
- D - I - 0x014E4C 11:AE3C: BF        .byte $BF
- D - I - 0x014E4D 11:AE3D: 07        .byte $07
- D - I - 0x014E4E 11:AE3E: 76        .byte $76
- D - I - 0x014E4F 11:AE3F: 0B        .byte $0B
- D - I - 0x014E50 11:AE40: 6D        .byte $6D
- D - I - 0x014E51 11:AE41: 0F        .byte $0F
- D - I - 0x014E52 11:AE42: 6F        .byte $6F
- D - I - 0x014E53 11:AE43: A0        .byte $A0
- D - I - 0x014E54 11:AE44: 0F        .byte $0F
- D - I - 0x014E55 11:AE45: 7A        .byte $7A
off_AE46:
- D - I - 0x014E56 11:AE46: A1        .byte $A1
- D - I - 0x014E57 11:AE47: 0F        .byte $0F
- D - I - 0x014E58 11:AE48: 74        .byte $74
- D - I - 0x014E59 11:AE49: FB        .byte con_jmp
- D - I - 0x014E5A 11:AE4A: 71 BA     .word off_BA71



off_AE4C:
- D - I - 0x014E5C 11:AE4C: 28        .byte $28
- D - I - 0x014E5D 11:AE4D: 29        .byte $29
- D - I - 0x014E5E 11:AE4E: 2A        .byte $2A
- D - I - 0x014E5F 11:AE4F: 2B        .byte $2B
- D - I - 0x014E60 11:AE50: BF        .byte $BF
- D - I - 0x014E61 11:AE51: 07        .byte $07
- D - I - 0x014E62 11:AE52: 78        .byte $78
- D - I - 0x014E63 11:AE53: 0B        .byte $0B
- D - I - 0x014E64 11:AE54: 79        .byte $79
- D - I - 0x014E65 11:AE55: 0F        .byte $0F
- D - I - 0x014E66 11:AE56: 7B        .byte $7B
- D - I - 0x014E67 11:AE57: A0        .byte $A0
- D - I - 0x014E68 11:AE58: 0F        .byte $0F
- D - I - 0x014E69 11:AE59: 7C        .byte $7C
- D - I - 0x014E6A 11:AE5A: FB        .byte con_jmp
- D - I - 0x014E6B 11:AE5B: 46 AE     .word off_AE46



off_AE5D:
- D - I - 0x014E6D 11:AE5D: 74        .byte $74
- D - I - 0x014E6E 11:AE5E: 75        .byte $75
- D - I - 0x014E6F 11:AE5F: 76        .byte $76
- D - I - 0x014E70 11:AE60: 77        .byte $77
- D - I - 0x014E71 11:AE61: BD        .byte $BD
- D - I - 0x014E72 11:AE62: 30        .byte $30
- D - I - 0x014E73 11:AE63: 1F        .byte $1F
- D - I - 0x014E74 11:AE64: 34        .byte $34
- D - I - 0x014E75 11:AE65: 08        .byte $08
- D - I - 0x014E76 11:AE66: 38        .byte $38
- D - I - 0x014E77 11:AE67: 0A        .byte $0A
- D - I - 0x014E78 11:AE68: BE        .byte $BE
- D - I - 0x014E79 11:AE69: 34        .byte $34
- D - I - 0x014E7A 11:AE6A: 09        .byte $09
- D - I - 0x014E7B 11:AE6B: 38        .byte $38
- D - I - 0x014E7C 11:AE6C: 0B        .byte $0B
- D - I - 0x014E7D 11:AE6D: 3C        .byte $3C
- D - I - 0x014E7E 11:AE6E: 13        .byte $13
- D - I - 0x014E7F 11:AE6F: BF        .byte $BF
- D - I - 0x014E80 11:AE70: 34        .byte $34
- D - I - 0x014E81 11:AE71: 0C        .byte $0C
- D - I - 0x014E82 11:AE72: 38        .byte $38
- D - I - 0x014E83 11:AE73: 0E        .byte $0E
- D - I - 0x014E84 11:AE74: 3C        .byte $3C
- D - I - 0x014E85 11:AE75: 04        .byte $04
- D - I - 0x014E86 11:AE76: 00        .byte $00
- D - I - 0x014E87 11:AE77: 06        .byte $06
- D - I - 0x014E88 11:AE78: A0        .byte $A0
- D - I - 0x014E89 11:AE79: 34        .byte $34
- D - I - 0x014E8A 11:AE7A: 0D        .byte $0D
- D - I - 0x014E8B 11:AE7B: 38        .byte $38
- D - I - 0x014E8C 11:AE7C: 0F        .byte $0F
- D - I - 0x014E8D 11:AE7D: 3C        .byte $3C
- D - I - 0x014E8E 11:AE7E: 05        .byte $05
- D - I - 0x014E8F 11:AE7F: 00        .byte $00
- D - I - 0x014E90 11:AE80: 07        .byte $07
- D - I - 0x014E91 11:AE81: A1        .byte $A1
- D - I - 0x014E92 11:AE82: 34        .byte $34
- D - I - 0x014E93 11:AE83: 18        .byte $18
- D - I - 0x014E94 11:AE84: 38        .byte $38
- D - I - 0x014E95 11:AE85: 1A        .byte $1A
- D - I - 0x014E96 11:AE86: 3C        .byte $3C
- D - I - 0x014E97 11:AE87: 10        .byte $10
- D - I - 0x014E98 11:AE88: 00        .byte $00
- D - I - 0x014E99 11:AE89: 12        .byte $12
- D - I - 0x014E9A 11:AE8A: A2        .byte $A2
- D - I - 0x014E9B 11:AE8B: 34        .byte $34
- D - I - 0x014E9C 11:AE8C: 19        .byte $19
- D - I - 0x014E9D 11:AE8D: 38        .byte $38
- D - I - 0x014E9E 11:AE8E: 1B        .byte $1B
- D - I - 0x014E9F 11:AE8F: 3C        .byte $3C
- D - I - 0x014EA0 11:AE90: 11        .byte $11
- D - I - 0x014EA1 11:AE91: A3        .byte $A3
- D - I - 0x014EA2 11:AE92: 34        .byte $34
- D - I - 0x014EA3 11:AE93: 14        .byte $14
- D - I - 0x014EA4 11:AE94: 38        .byte $38
- D - I - 0x014EA5 11:AE95: 16        .byte $16
- D - I - 0x014EA6 11:AE96: A4        .byte $A4
- D - I - 0x014EA7 11:AE97: 30        .byte $30
- D - I - 0x014EA8 11:AE98: 03        .byte $03
- D - I - 0x014EA9 11:AE99: 34        .byte $34
- D - I - 0x014EAA 11:AE9A: 5B        .byte $5B
- D - I - 0x014EAB 11:AE9B: 38        .byte $38
- D - I - 0x014EAC 11:AE9C: 17        .byte $17
- D - I - 0x014EAD 11:AE9D: FF        .byte $FF



off_AE9E:
- D - I - 0x014EAE 11:AE9E: 16        .byte $16
- D - I - 0x014EAF 11:AE9F: 17        .byte $17
- D - I - 0x014EB0 11:AEA0: 2D        .byte $2D
- D - I - 0x014EB1 11:AEA1: 5F        .byte $5F
- D - I - 0x014EB2 11:AEA2: FA        .byte con_jsr
- D - I - 0x014EB3 11:AEA3: D4 BB     .word off_BBD4
- D - I - 0x014EB5 11:AEA5: FF        .byte $FF



off_AEA6:
- D - I - 0x014EB6 11:AEA6: 16        .byte $16
- D - I - 0x014EB7 11:AEA7: 17        .byte $17
- D - I - 0x014EB8 11:AEA8: 2D        .byte $2D
- D - I - 0x014EB9 11:AEA9: 5F        .byte $5F
- D - I - 0x014EBA 11:AEAA: FA        .byte con_jsr
- D - I - 0x014EBB 11:AEAB: E8 BB     .word off_BBE8
- D - I - 0x014EBD 11:AEAD: FF        .byte $FF



off_AEAE:
- D - I - 0x014EBE 11:AEAE: 16        .byte $16
- D - I - 0x014EBF 11:AEAF: 17        .byte $17
- D - I - 0x014EC0 11:AEB0: 2D        .byte $2D
- D - I - 0x014EC1 11:AEB1: 5F        .byte $5F
- D - I - 0x014EC2 11:AEB2: FA        .byte con_jsr
- D - I - 0x014EC3 11:AEB3: 03 BC     .word off_BC03
- D - I - 0x014EC5 11:AEB5: FF        .byte $FF



off_AEB6:
- D - I - 0x014EC6 11:AEB6: 16        .byte $16
- D - I - 0x014EC7 11:AEB7: 17        .byte $17
- D - I - 0x014EC8 11:AEB8: 2D        .byte $2D
- D - I - 0x014EC9 11:AEB9: 5F        .byte $5F
- D - I - 0x014ECA 11:AEBA: FA        .byte con_jsr
- D - I - 0x014ECB 11:AEBB: 1A BC     .word off_BC1A
- D - I - 0x014ECD 11:AEBD: FF        .byte $FF



off_AEBE:
- D - I - 0x014ECE 11:AEBE: 3B        .byte $3B
- D - I - 0x014ECF 11:AEBF: 47        .byte $47
- D - I - 0x014ED0 11:AEC0: 5E        .byte $5E
- D - I - 0x014ED1 11:AEC1: 5F        .byte $5F
- D - I - 0x014ED2 11:AEC2: A0        .byte $A0
- D - I - 0x014ED3 11:AEC3: 30        .byte $30
- D - I - 0x014ED4 11:AEC4: 04        .byte $04
- D - I - 0x014ED5 11:AEC5: 34        .byte $34
- D - I - 0x014ED6 11:AEC6: 06        .byte $06
- D - I - 0x014ED7 11:AEC7: 38        .byte $38
- D - I - 0x014ED8 11:AEC8: 12        .byte $12
- D - I - 0x014ED9 11:AEC9: 3C        .byte $3C
- D - I - 0x014EDA 11:AECA: 0A        .byte $0A
- D - I - 0x014EDB 11:AECB: 00        .byte $00
- D - I - 0x014EDC 11:AECC: 20        .byte $20
- D - I - 0x014EDD 11:AECD: 04        .byte $04
- D - I - 0x014EDE 11:AECE: 1C        .byte $1C
- D - I - 0x014EDF 11:AECF: 08        .byte $08
- D - I - 0x014EE0 11:AED0: 05        .byte $05
- D - I - 0x014EE1 11:AED1: 0C        .byte $0C
- D - I - 0x014EE2 11:AED2: 02        .byte $02
- D - I - 0x014EE3 11:AED3: A1        .byte $A1
- D - I - 0x014EE4 11:AED4: 34        .byte $34
- D - I - 0x014EE5 11:AED5: 07        .byte $07
- D - I - 0x014EE6 11:AED6: 38        .byte $38
- D - I - 0x014EE7 11:AED7: 09        .byte $09
- D - I - 0x014EE8 11:AED8: 3C        .byte $3C
- D - I - 0x014EE9 11:AED9: 0B        .byte $0B
- D - I - 0x014EEA 11:AEDA: 00        .byte $00
- D - I - 0x014EEB 11:AEDB: 21        .byte $21
- D - I - 0x014EEC 11:AEDC: 04        .byte $04
- D - I - 0x014EED 11:AEDD: 1D        .byte $1D
- D - I - 0x014EEE 11:AEDE: 08        .byte $08
- D - I - 0x014EEF 11:AEDF: 10        .byte $10
- D - I - 0x014EF0 11:AEE0: 0C        .byte $0C
- D - I - 0x014EF1 11:AEE1: 03        .byte $03
- D - I - 0x014EF2 11:AEE2: A2        .byte $A2
- D - I - 0x014EF3 11:AEE3: 34        .byte $34
- D - I - 0x014EF4 11:AEE4: 12        .byte $12
- D - I - 0x014EF5 11:AEE5: 38        .byte $38
- D - I - 0x014EF6 11:AEE6: 0C        .byte $0C
- D - I - 0x014EF7 11:AEE7: 3C        .byte $3C
- D - I - 0x014EF8 11:AEE8: 0E        .byte $0E
- D - I - 0x014EF9 11:AEE9: 00        .byte $00
- D - I - 0x014EFA 11:AEEA: 24        .byte $24
- D - I - 0x014EFB 11:AEEB: 04        .byte $04
- D - I - 0x014EFC 11:AEEC: 1E        .byte $1E
- D - I - 0x014EFD 11:AEED: 08        .byte $08
- D - I - 0x014EFE 11:AEEE: 11        .byte $11
- D - I - 0x014EFF 11:AEEF: A3        .byte $A3
- D - I - 0x014F00 11:AEF0: 34        .byte $34
- D - I - 0x014F01 11:AEF1: 13        .byte $13
- D - I - 0x014F02 11:AEF2: 38        .byte $38
- D - I - 0x014F03 11:AEF3: 0D        .byte $0D
- D - I - 0x014F04 11:AEF4: 3C        .byte $3C
- D - I - 0x014F05 11:AEF5: 0F        .byte $0F
- D - I - 0x014F06 11:AEF6: 00        .byte $00
- D - I - 0x014F07 11:AEF7: 25        .byte $25
- D - I - 0x014F08 11:AEF8: 04        .byte $04
- D - I - 0x014F09 11:AEF9: 1F        .byte $1F
- D - I - 0x014F0A 11:AEFA: 08        .byte $08
- D - I - 0x014F0B 11:AEFB: 14        .byte $14
- D - I - 0x014F0C 11:AEFC: A4        .byte $A4
- D - I - 0x014F0D 11:AEFD: 34        .byte $34
- D - I - 0x014F0E 11:AEFE: 16        .byte $16
- D - I - 0x014F0F 11:AEFF: 38        .byte $38
- D - I - 0x014F10 11:AF00: 18        .byte $18
- D - I - 0x014F11 11:AF01: 3C        .byte $3C
- D - I - 0x014F12 11:AF02: 1A        .byte $1A
- D - I - 0x014F13 11:AF03: 00        .byte $00
- D - I - 0x014F14 11:AF04: 30        .byte $30
- D - I - 0x014F15 11:AF05: 04        .byte $04
- D - I - 0x014F16 11:AF06: 35        .byte $35
- D - I - 0x014F17 11:AF07: 08        .byte $08
- D - I - 0x014F18 11:AF08: 15        .byte $15
- D - I - 0x014F19 11:AF09: A5        .byte $A5
- D - I - 0x014F1A 11:AF0A: 38        .byte $38
- D - I - 0x014F1B 11:AF0B: 19        .byte $19
- D - I - 0x014F1C 11:AF0C: 3C        .byte $3C
- D - I - 0x014F1D 11:AF0D: 1B        .byte $1B
- D - I - 0x014F1E 11:AF0E: 00        .byte $00
- D - I - 0x014F1F 11:AF0F: 31        .byte $31
- D - I - 0x014F20 11:AF10: 04        .byte $04
- D - I - 0x014F21 11:AF11: 22        .byte $22
- D - I - 0x014F22 11:AF12: A6        .byte $A6
- D - I - 0x014F23 11:AF13: 38        .byte $38
- D - I - 0x014F24 11:AF14: 17        .byte $17
- D - I - 0x014F25 11:AF15: 3C        .byte $3C
- D - I - 0x014F26 11:AF16: 08        .byte $08
- D - I - 0x014F27 11:AF17: 00        .byte $00
- D - I - 0x014F28 11:AF18: 34        .byte $34
- D - I - 0x014F29 11:AF19: 04        .byte $04
- D - I - 0x014F2A 11:AF1A: 36        .byte $36
- D - I - 0x014F2B 11:AF1B: FF        .byte $FF



off_AF1C:
- D - I - 0x014F2C 11:AF1C: 3B        .byte $3B
- D - I - 0x014F2D 11:AF1D: 47        .byte $47
- D - I - 0x014F2E 11:AF1E: 5E        .byte $5E
- D - I - 0x014F2F 11:AF1F: 5F        .byte $5F
- D - I - 0x014F30 11:AF20: A0        .byte $A0
- D - I - 0x014F31 11:AF21: 30        .byte $30
- D - I - 0x014F32 11:AF22: 04        .byte $04
- D - I - 0x014F33 11:AF23: 34        .byte $34
- D - I - 0x014F34 11:AF24: 06        .byte $06
- D - I - 0x014F35 11:AF25: 38        .byte $38
- D - I - 0x014F36 11:AF26: 12        .byte $12
- D - I - 0x014F37 11:AF27: 3C        .byte $3C
- D - I - 0x014F38 11:AF28: 28        .byte $28
- D - I - 0x014F39 11:AF29: 00        .byte $00
- D - I - 0x014F3A 11:AF2A: 2A        .byte $2A
- D - I - 0x014F3B 11:AF2B: 04        .byte $04
- D - I - 0x014F3C 11:AF2C: 1C        .byte $1C
- D - I - 0x014F3D 11:AF2D: 08        .byte $08
- D - I - 0x014F3E 11:AF2E: 05        .byte $05
- D - I - 0x014F3F 11:AF2F: 0C        .byte $0C
- D - I - 0x014F40 11:AF30: 02        .byte $02
- D - I - 0x014F41 11:AF31: A1        .byte $A1
- D - I - 0x014F42 11:AF32: 34        .byte $34
- D - I - 0x014F43 11:AF33: 07        .byte $07
- D - I - 0x014F44 11:AF34: 38        .byte $38
- D - I - 0x014F45 11:AF35: 23        .byte $23
- D - I - 0x014F46 11:AF36: 3C        .byte $3C
- D - I - 0x014F47 11:AF37: 29        .byte $29
- D - I - 0x014F48 11:AF38: 00        .byte $00
- D - I - 0x014F49 11:AF39: 2B        .byte $2B
- D - I - 0x014F4A 11:AF3A: 04        .byte $04
- D - I - 0x014F4B 11:AF3B: 37        .byte $37
- D - I - 0x014F4C 11:AF3C: 08        .byte $08
- D - I - 0x014F4D 11:AF3D: 10        .byte $10
- D - I - 0x014F4E 11:AF3E: 0C        .byte $0C
- D - I - 0x014F4F 11:AF3F: 03        .byte $03
- D - I - 0x014F50 11:AF40: A2        .byte $A2
- D - I - 0x014F51 11:AF41: 34        .byte $34
- D - I - 0x014F52 11:AF42: 12        .byte $12
- D - I - 0x014F53 11:AF43: 38        .byte $38
- D - I - 0x014F54 11:AF44: 26        .byte $26
- D - I - 0x014F55 11:AF45: 3C        .byte $3C
- D - I - 0x014F56 11:AF46: 2C        .byte $2C
- D - I - 0x014F57 11:AF47: 00        .byte $00
- D - I - 0x014F58 11:AF48: 2E        .byte $2E
- D - I - 0x014F59 11:AF49: 04        .byte $04
- D - I - 0x014F5A 11:AF4A: 3D        .byte $3D
- D - I - 0x014F5B 11:AF4B: 08        .byte $08
- D - I - 0x014F5C 11:AF4C: 11        .byte $11
- D - I - 0x014F5D 11:AF4D: A3        .byte $A3
- D - I - 0x014F5E 11:AF4E: 34        .byte $34
- D - I - 0x014F5F 11:AF4F: 13        .byte $13
- D - I - 0x014F60 11:AF50: 38        .byte $38
- D - I - 0x014F61 11:AF51: 27        .byte $27
- D - I - 0x014F62 11:AF52: 3C        .byte $3C
- D - I - 0x014F63 11:AF53: 2D        .byte $2D
- D - I - 0x014F64 11:AF54: 00        .byte $00
- D - I - 0x014F65 11:AF55: 2F        .byte $2F
- D - I - 0x014F66 11:AF56: 04        .byte $04
- D - I - 0x014F67 11:AF57: 3F        .byte $3F
- D - I - 0x014F68 11:AF58: 08        .byte $08
- D - I - 0x014F69 11:AF59: 14        .byte $14
- D - I - 0x014F6A 11:AF5A: A4        .byte $A4
- D - I - 0x014F6B 11:AF5B: 34        .byte $34
- D - I - 0x014F6C 11:AF5C: 16        .byte $16
- D - I - 0x014F6D 11:AF5D: 38        .byte $38
- D - I - 0x014F6E 11:AF5E: 32        .byte $32
- D - I - 0x014F6F 11:AF5F: 3C        .byte $3C
- D - I - 0x014F70 11:AF60: 38        .byte $38
- D - I - 0x014F71 11:AF61: 00        .byte $00
- D - I - 0x014F72 11:AF62: 3A        .byte $3A
- D - I - 0x014F73 11:AF63: 04        .byte $04
- D - I - 0x014F74 11:AF64: 58        .byte $58
- D - I - 0x014F75 11:AF65: 08        .byte $08
- D - I - 0x014F76 11:AF66: 15        .byte $15
- D - I - 0x014F77 11:AF67: A5        .byte $A5
- D - I - 0x014F78 11:AF68: 38        .byte $38
- D - I - 0x014F79 11:AF69: 33        .byte $33
- D - I - 0x014F7A 11:AF6A: 3C        .byte $3C
- D - I - 0x014F7B 11:AF6B: 39        .byte $39
- D - I - 0x014F7C 11:AF6C: 00        .byte $00
- D - I - 0x014F7D 11:AF6D: 3B        .byte $3B
- D - I - 0x014F7E 11:AF6E: 04        .byte $04
- D - I - 0x014F7F 11:AF6F: 59        .byte $59
- D - I - 0x014F80 11:AF70: A6        .byte $A6
- D - I - 0x014F81 11:AF71: 38        .byte $38
- D - I - 0x014F82 11:AF72: 17        .byte $17
- D - I - 0x014F83 11:AF73: 3C        .byte $3C
- D - I - 0x014F84 11:AF74: 3C        .byte $3C
- D - I - 0x014F85 11:AF75: 00        .byte $00
- D - I - 0x014F86 11:AF76: 3E        .byte $3E
- D - I - 0x014F87 11:AF77: 04        .byte $04
- D - I - 0x014F88 11:AF78: 36        .byte $36
- D - I - 0x014F89 11:AF79: FF        .byte $FF



off_AF7A:
- D - I - 0x014F8A 11:AF7A: 3B        .byte $3B
- D - I - 0x014F8B 11:AF7B: 47        .byte $47
- D - I - 0x014F8C 11:AF7C: 5E        .byte $5E
- D - I - 0x014F8D 11:AF7D: 5F        .byte $5F
- D - I - 0x014F8E 11:AF7E: A0        .byte $A0
- D - I - 0x014F8F 11:AF7F: 30        .byte $30
- D - I - 0x014F90 11:AF80: 04        .byte $04
- D - I - 0x014F91 11:AF81: 34        .byte $34
- D - I - 0x014F92 11:AF82: 06        .byte $06
- D - I - 0x014F93 11:AF83: 38        .byte $38
- D - I - 0x014F94 11:AF84: 4E        .byte $4E
- D - I - 0x014F95 11:AF85: 04        .byte $04
- D - I - 0x014F96 11:AF86: 53        .byte $53
- D - I - 0x014F97 11:AF87: 08        .byte $08
- D - I - 0x014F98 11:AF88: 05        .byte $05
- D - I - 0x014F99 11:AF89: 0C        .byte $0C
- D - I - 0x014F9A 11:AF8A: 02        .byte $02
- D - I - 0x014F9B 11:AF8B: A1        .byte $A1
- D - I - 0x014F9C 11:AF8C: 34        .byte $34
- D - I - 0x014F9D 11:AF8D: 07        .byte $07
- D - I - 0x014F9E 11:AF8E: 38        .byte $38
- D - I - 0x014F9F 11:AF8F: 4F        .byte $4F
- D - I - 0x014FA0 11:AF90: 3C        .byte $3C
- D - I - 0x014FA1 11:AF91: 64        .byte $64
- D - I - 0x014FA2 11:AF92: 00        .byte $00
- D - I - 0x014FA3 11:AF93: 66        .byte $66
- D - I - 0x014FA4 11:AF94: 04        .byte $04
- D - I - 0x014FA5 11:AF95: 56        .byte $56
- D - I - 0x014FA6 11:AF96: 08        .byte $08
- D - I - 0x014FA7 11:AF97: 10        .byte $10
- D - I - 0x014FA8 11:AF98: 0C        .byte $0C
- D - I - 0x014FA9 11:AF99: 03        .byte $03
- D - I - 0x014FAA 11:AF9A: A2        .byte $A2
- D - I - 0x014FAB 11:AF9B: 34        .byte $34
- D - I - 0x014FAC 11:AF9C: 12        .byte $12
- D - I - 0x014FAD 11:AF9D: 38        .byte $38
- D - I - 0x014FAE 11:AF9E: 5A        .byte $5A
- D - I - 0x014FAF 11:AF9F: 3C        .byte $3C
- D - I - 0x014FB0 11:AFA0: 65        .byte $65
- D - I - 0x014FB1 11:AFA1: 00        .byte $00
- D - I - 0x014FB2 11:AFA2: 67        .byte $67
- D - I - 0x014FB3 11:AFA3: 04        .byte $04
- D - I - 0x014FB4 11:AFA4: 57        .byte $57
- D - I - 0x014FB5 11:AFA5: 08        .byte $08
- D - I - 0x014FB6 11:AFA6: 11        .byte $11
- D - I - 0x014FB7 11:AFA7: A3        .byte $A3
- D - I - 0x014FB8 11:AFA8: 34        .byte $34
- D - I - 0x014FB9 11:AFA9: 13        .byte $13
- D - I - 0x014FBA 11:AFAA: 38        .byte $38
- D - I - 0x014FBB 11:AFAB: 5B        .byte $5B
- D - I - 0x014FBC 11:AFAC: 3C        .byte $3C
- D - I - 0x014FBD 11:AFAD: 51        .byte $51
- D - I - 0x014FBE 11:AFAE: 04        .byte $04
- D - I - 0x014FBF 11:AFAF: 5C        .byte $5C
- D - I - 0x014FC0 11:AFB0: 08        .byte $08
- D - I - 0x014FC1 11:AFB1: 14        .byte $14
- D - I - 0x014FC2 11:AFB2: A4        .byte $A4
- D - I - 0x014FC3 11:AFB3: 34        .byte $34
- D - I - 0x014FC4 11:AFB4: 16        .byte $16
- D - I - 0x014FC5 11:AFB5: 38        .byte $38
- D - I - 0x014FC6 11:AFB6: 5E        .byte $5E
- D - I - 0x014FC7 11:AFB7: 3C        .byte $3C
- D - I - 0x014FC8 11:AFB8: 54        .byte $54
- D - I - 0x014FC9 11:AFB9: 04        .byte $04
- D - I - 0x014FCA 11:AFBA: 5D        .byte $5D
- D - I - 0x014FCB 11:AFBB: 08        .byte $08
- D - I - 0x014FCC 11:AFBC: 15        .byte $15
- D - I - 0x014FCD 11:AFBD: A5        .byte $A5
- D - I - 0x014FCE 11:AFBE: 38        .byte $38
- D - I - 0x014FCF 11:AFBF: 5F        .byte $5F
- D - I - 0x014FD0 11:AFC0: 3C        .byte $3C
- D - I - 0x014FD1 11:AFC1: 55        .byte $55
- D - I - 0x014FD2 11:AFC2: FF        .byte $FF



off_AFC3:
- D - I - 0x014FD3 11:AFC3: 06        .byte $06
- D - I - 0x014FD4 11:AFC4: 26        .byte $26
- D - I - 0x014FD5 11:AFC5: 21        .byte $21
- D - I - 0x014FD6 11:AFC6: 5F        .byte $5F
- D - I - 0x014FD7 11:AFC7: BF        .byte $BF
- D - I - 0x014FD8 11:AFC8: 03        .byte $03
- D - I - 0x014FD9 11:AFC9: 08        .byte $08
- D - I - 0x014FDA 11:AFCA: 07        .byte $07
- D - I - 0x014FDB 11:AFCB: 0A        .byte $0A
- D - I - 0x014FDC 11:AFCC: A0        .byte $A0
- D - I - 0x014FDD 11:AFCD: 3F        .byte $3F
- D - I - 0x014FDE 11:AFCE: 02        .byte $02
- D - I - 0x014FDF 11:AFCF: 03        .byte $03
- D - I - 0x014FE0 11:AFD0: 09        .byte $09
- D - I - 0x014FE1 11:AFD1: 07        .byte $07
- D - I - 0x014FE2 11:AFD2: 0B        .byte $0B
- D - I - 0x014FE3 11:AFD3: 0B        .byte $0B
- D - I - 0x014FE4 11:AFD4: 20        .byte $20
- D - I - 0x014FE5 11:AFD5: A1        .byte $A1
- D - I - 0x014FE6 11:AFD6: 3F        .byte $3F
- D - I - 0x014FE7 11:AFD7: 03        .byte $03
- D - I - 0x014FE8 11:AFD8: 03        .byte $03
- D - I - 0x014FE9 11:AFD9: 0C        .byte $0C
- D - I - 0x014FEA 11:AFDA: 07        .byte $07
- D - I - 0x014FEB 11:AFDB: 0E        .byte $0E
- D - I - 0x014FEC 11:AFDC: 0B        .byte $0B
- D - I - 0x014FED 11:AFDD: 21        .byte $21
- D - I - 0x014FEE 11:AFDE: A2        .byte $A2
- D - I - 0x014FEF 11:AFDF: 03        .byte $03
- D - I - 0x014FF0 11:AFE0: 0D        .byte $0D
- D - I - 0x014FF1 11:AFE1: 07        .byte $07
- D - I - 0x014FF2 11:AFE2: 0F        .byte $0F
- D - I - 0x014FF3 11:AFE3: FF        .byte $FF



off_AFE4:
- D - I - 0x014FF4 11:AFE4: 06        .byte $06
- D - I - 0x014FF5 11:AFE5: 26        .byte $26
- D - I - 0x014FF6 11:AFE6: 21        .byte $21
- D - I - 0x014FF7 11:AFE7: 5F        .byte $5F
- D - I - 0x014FF8 11:AFE8: BF        .byte $BF
- D - I - 0x014FF9 11:AFE9: 03        .byte $03
- D - I - 0x014FFA 11:AFEA: 22        .byte $22
- D - I - 0x014FFB 11:AFEB: 07        .byte $07
- D - I - 0x014FFC 11:AFEC: 28        .byte $28
- D - I - 0x014FFD 11:AFED: A0        .byte $A0
- D - I - 0x014FFE 11:AFEE: 3F        .byte $3F
- D - I - 0x014FFF 11:AFEF: 24        .byte $24
- D - I - 0x015000 11:AFF0: 03        .byte $03
- D - I - 0x015001 11:AFF1: 23        .byte $23
- D - I - 0x015002 11:AFF2: 07        .byte $07
- D - I - 0x015003 11:AFF3: 29        .byte $29
- D - I - 0x015004 11:AFF4: A1        .byte $A1
- D - I - 0x015005 11:AFF5: 3F        .byte $3F
- D - I - 0x015006 11:AFF6: 25        .byte $25
- D - I - 0x015007 11:AFF7: 03        .byte $03
- D - I - 0x015008 11:AFF8: 26        .byte $26
- D - I - 0x015009 11:AFF9: 07        .byte $07
- D - I - 0x01500A 11:AFFA: 2C        .byte $2C
- D - I - 0x01500B 11:AFFB: A2        .byte $A2
- D - I - 0x01500C 11:AFFC: 03        .byte $03
- D - I - 0x01500D 11:AFFD: 27        .byte $27
- D - I - 0x01500E 11:AFFE: FF        .byte $FF



off_AFFF:
- D - I - 0x01500F 11:AFFF: 06        .byte $06
- D - I - 0x015010 11:B000: 26        .byte $26
- D - I - 0x015011 11:B001: 21        .byte $21
- D - I - 0x015012 11:B002: 5F        .byte $5F
- D - I - 0x015013 11:B003: BF        .byte $BF
- D - I - 0x015014 11:B004: 03        .byte $03
- D - I - 0x015015 11:B005: 06        .byte $06
- D - I - 0x015016 11:B006: 07        .byte $07
- D - I - 0x015017 11:B007: 28        .byte $28
- D - I - 0x015018 11:B008: A0        .byte $A0
- D - I - 0x015019 11:B009: 3F        .byte $3F
- D - I - 0x01501A 11:B00A: 04        .byte $04
- D - I - 0x01501B 11:B00B: 03        .byte $03
- D - I - 0x01501C 11:B00C: 07        .byte $07
- D - I - 0x01501D 11:B00D: 07        .byte $07
- D - I - 0x01501E 11:B00E: 18        .byte $18
- D - I - 0x01501F 11:B00F: A1        .byte $A1
- D - I - 0x015020 11:B010: 3F        .byte $3F
- D - I - 0x015021 11:B011: 05        .byte $05
- D - I - 0x015022 11:B012: 03        .byte $03
- D - I - 0x015023 11:B013: 12        .byte $12
- D - I - 0x015024 11:B014: 07        .byte $07
- D - I - 0x015025 11:B015: 19        .byte $19
- D - I - 0x015026 11:B016: FF        .byte $FF



off_B017:
- D - I - 0x015027 11:B017: 06        .byte $06
- D - I - 0x015028 11:B018: 26        .byte $26
- D - I - 0x015029 11:B019: 21        .byte $21
- D - I - 0x01502A 11:B01A: 5F        .byte $5F
- D - I - 0x01502B 11:B01B: A0        .byte $A0
- D - I - 0x01502C 11:B01C: 03        .byte $03
- D - I - 0x01502D 11:B01D: 10        .byte $10
- D - I - 0x01502E 11:B01E: 07        .byte $07
- D - I - 0x01502F 11:B01F: 2D        .byte $2D
- D - I - 0x015030 11:B020: A1        .byte $A1
- D - I - 0x015031 11:B021: 03        .byte $03
- D - I - 0x015032 11:B022: 11        .byte $11
- D - I - 0x015033 11:B023: 07        .byte $07
- D - I - 0x015034 11:B024: 13        .byte $13
- D - I - 0x015035 11:B025: FF        .byte $FF



off_B026:
- D - I - 0x015036 11:B026: 06        .byte $06
- D - I - 0x015037 11:B027: 26        .byte $26
- D - I - 0x015038 11:B028: 21        .byte $21
- D - I - 0x015039 11:B029: 5F        .byte $5F
- D - I - 0x01503A 11:B02A: A0        .byte $A0
- D - I - 0x01503B 11:B02B: 03        .byte $03
- D - I - 0x01503C 11:B02C: 1A        .byte $1A
- D - I - 0x01503D 11:B02D: 07        .byte $07
- D - I - 0x01503E 11:B02E: 30        .byte $30
- D - I - 0x01503F 11:B02F: A1        .byte $A1
- D - I - 0x015040 11:B030: 03        .byte $03
- D - I - 0x015041 11:B031: 1B        .byte $1B
- D - I - 0x015042 11:B032: 07        .byte $07
- D - I - 0x015043 11:B033: 31        .byte $31
- D - I - 0x015044 11:B034: FF        .byte $FF



off_B035:
- D - I - 0x015045 11:B035: 06        .byte $06
- D - I - 0x015046 11:B036: 26        .byte $26
- D - I - 0x015047 11:B037: 21        .byte $21
- D - I - 0x015048 11:B038: 5F        .byte $5F
- D - I - 0x015049 11:B039: A0        .byte $A0
- D - I - 0x01504A 11:B03A: 03        .byte $03
- D - I - 0x01504B 11:B03B: 32        .byte $32
- D - I - 0x01504C 11:B03C: 07        .byte $07
- D - I - 0x01504D 11:B03D: 38        .byte $38
- D - I - 0x01504E 11:B03E: A1        .byte $A1
- D - I - 0x01504F 11:B03F: 03        .byte $03
- D - I - 0x015050 11:B040: 33        .byte $33
- D - I - 0x015051 11:B041: 07        .byte $07
- D - I - 0x015052 11:B042: 39        .byte $39
- D - I - 0x015053 11:B043: FF        .byte $FF



off_B044:
- D - I - 0x015054 11:B044: 06        .byte $06
- D - I - 0x015055 11:B045: 26        .byte $26
- D - I - 0x015056 11:B046: 21        .byte $21
- D - I - 0x015057 11:B047: 5F        .byte $5F
- D - I - 0x015058 11:B048: A0        .byte $A0
- D - I - 0x015059 11:B049: 03        .byte $03
- D - I - 0x01505A 11:B04A: 2A        .byte $2A
- D - I - 0x01505B 11:B04B: 07        .byte $07
- D - I - 0x01505C 11:B04C: 2E        .byte $2E
- D - I - 0x01505D 11:B04D: A1        .byte $A1
- D - I - 0x01505E 11:B04E: 03        .byte $03
- D - I - 0x01505F 11:B04F: 2B        .byte $2B
- D - I - 0x015060 11:B050: 07        .byte $07
- D - I - 0x015061 11:B051: 2F        .byte $2F
- D - I - 0x015062 11:B052: FF        .byte $FF



off_B053:
- D - I - 0x015063 11:B053: 06        .byte $06
- D - I - 0x015064 11:B054: 26        .byte $26
- D - I - 0x015065 11:B055: 21        .byte $21
- D - I - 0x015066 11:B056: 5F        .byte $5F
- D - I - 0x015067 11:B057: A0        .byte $A0
- D - I - 0x015068 11:B058: 03        .byte $03
- D - I - 0x015069 11:B059: 3A        .byte $3A
- D - I - 0x01506A 11:B05A: FF        .byte $FF



off_B05B:
- D - I - 0x01506B 11:B05B: 06        .byte $06
- D - I - 0x01506C 11:B05C: 26        .byte $26
- D - I - 0x01506D 11:B05D: 21        .byte $21
- D - I - 0x01506E 11:B05E: 5F        .byte $5F
- D - I - 0x01506F 11:B05F: A0        .byte $A0
- D - I - 0x015070 11:B060: 03        .byte $03
- D - I - 0x015071 11:B061: 3B        .byte $3B
- D - I - 0x015072 11:B062: FF        .byte $FF



off_B063:
- D - I - 0x015073 11:B063: 06        .byte $06
- D - I - 0x015074 11:B064: 26        .byte $26
- D - I - 0x015075 11:B065: 21        .byte $21
- D - I - 0x015076 11:B066: 5F        .byte $5F
- D - I - 0x015077 11:B067: A0        .byte $A0
- D - I - 0x015078 11:B068: 03        .byte $03
- D - I - 0x015079 11:B069: 14        .byte $14
- D - I - 0x01507A 11:B06A: FF        .byte $FF



off_B06B:
- D - I - 0x01507B 11:B06B: 06        .byte $06
- D - I - 0x01507C 11:B06C: 26        .byte $26
- D - I - 0x01507D 11:B06D: 21        .byte $21
- D - I - 0x01507E 11:B06E: 5F        .byte $5F
- D - I - 0x01507F 11:B06F: BF        .byte $BF
- D - I - 0x015080 11:B070: 01        .byte $01
- D - I - 0x015081 11:B071: 7C        .byte $7C
- D - I - 0x015082 11:B072: A0        .byte $A0
- D - I - 0x015083 11:B073: 3F        .byte $3F
- D - I - 0x015084 11:B074: B4        .byte $B4
- D - I - 0x015085 11:B075: 01        .byte $01
- D - I - 0x015086 11:B076: 7D        .byte $7D
- D - I - 0x015087 11:B077: 05        .byte $05
- D - I - 0x015088 11:B078: 7E        .byte $7E
- D - I - 0x015089 11:B079: A1        .byte $A1
- D - I - 0x01508A 11:B07A: 05        .byte $05
- D - I - 0x01508B 11:B07B: 7F        .byte $7F
- D - I - 0x01508C 11:B07C: FF        .byte $FF



off_B07D:
- D - I - 0x01508D 11:B07D: 10        .byte $10
- D - I - 0x01508E 11:B07E: 11        .byte $11
- D - I - 0x01508F 11:B07F: 12        .byte $12
- D - I - 0x015090 11:B080: 5F        .byte $5F
- D - I - 0x015091 11:B081: A0        .byte $A0
- D - I - 0x015092 11:B082: 3B        .byte $3B
- D - I - 0x015093 11:B083: B8        .byte $B8
- D - I - 0x015094 11:B084: 7F        .byte $7F
- D - I - 0x015095 11:B085: BB        .byte $BB
- D - I - 0x015096 11:B086: 03        .byte $03
- D - I - 0x015097 11:B087: BC        .byte $BC
- D - I - 0x015098 11:B088: 47        .byte $47
- D - I - 0x015099 11:B089: BF        .byte $BF
- D - I - 0x01509A 11:B08A: A1        .byte $A1
- D - I - 0x01509B 11:B08B: 3B        .byte $3B
- D - I - 0x01509C 11:B08C: B9        .byte $B9
- D - I - 0x01509D 11:B08D: 3F        .byte $3F
- D - I - 0x01509E 11:B08E: BB        .byte $BB
- D - I - 0x01509F 11:B08F: 43        .byte $43
- D - I - 0x0150A0 11:B090: BC        .byte $BC
- D - I - 0x0150A1 11:B091: 07        .byte $07
- D - I - 0x0150A2 11:B092: BF        .byte $BF
- D - I - 0x0150A3 11:B093: FF        .byte $FF



off_B094:
- D - I - 0x0150A4 11:B094: 10        .byte $10
- D - I - 0x0150A5 11:B095: 11        .byte $11
- D - I - 0x0150A6 11:B096: 12        .byte $12
- D - I - 0x0150A7 11:B097: 5F        .byte $5F
- D - I - 0x0150A8 11:B098: A0        .byte $A0
- D - I - 0x0150A9 11:B099: 9E        .byte $9E
- D - I - 0x0150AA 11:B09A: C0        .byte $C0
- D - I - 0x0150AB 11:B09B: 73        .byte $73
- D - I - 0x0150AC 11:B09C: B6        .byte $B6
- D - I - 0x0150AD 11:B09D: 9F        .byte $9F
- D - I - 0x0150AE 11:B09E: C0        .byte $C0
- D - I - 0x0150AF 11:B09F: 73        .byte $73
- D - I - 0x0150B0 11:B0A0: BB        .byte $BB
- D - I - 0x0150B1 11:B0A1: C0        .byte $C0
- D - I - 0x0150B2 11:B0A2: 13        .byte $13
- D - I - 0x0150B3 11:B0A3: BC        .byte $BC
- D - I - 0x0150B4 11:B0A4: 80        .byte $80
- D - I - 0x0150B5 11:B0A5: C0        .byte $C0
- D - I - 0x0150B6 11:B0A6: 53        .byte $53
- D - I - 0x0150B7 11:B0A7: BF        .byte $BF
- D - I - 0x0150B8 11:B0A8: A1        .byte $A1
- D - I - 0x0150B9 11:B0A9: 9E        .byte $9E
- D - I - 0x0150BA 11:B0AA: C0        .byte $C0
- D - I - 0x0150BB 11:B0AB: 33        .byte $33
- D - I - 0x0150BC 11:B0AC: B6        .byte $B6
- D - I - 0x0150BD 11:B0AD: 9F        .byte $9F
- D - I - 0x0150BE 11:B0AE: C0        .byte $C0
- D - I - 0x0150BF 11:B0AF: 33        .byte $33
- D - I - 0x0150C0 11:B0B0: BB        .byte $BB
- D - I - 0x0150C1 11:B0B1: C0        .byte $C0
- D - I - 0x0150C2 11:B0B2: 53        .byte $53
- D - I - 0x0150C3 11:B0B3: BC        .byte $BC
- D - I - 0x0150C4 11:B0B4: 80        .byte $80
- D - I - 0x0150C5 11:B0B5: C0        .byte $C0
- D - I - 0x0150C6 11:B0B6: 13        .byte $13
- D - I - 0x0150C7 11:B0B7: BF        .byte $BF
- D - I - 0x0150C8 11:B0B8: FF        .byte $FF



off_B0B9:
- D - I - 0x0150C9 11:B0B9: 74        .byte $74
- D - I - 0x0150CA 11:B0BA: 75        .byte $75
- D - I - 0x0150CB 11:B0BB: 76        .byte $76
- D - I - 0x0150CC 11:B0BC: 77        .byte $77
- D - I - 0x0150CD 11:B0BD: BE        .byte $BE
- D - I - 0x0150CE 11:B0BE: 3B        .byte $3B
- D - I - 0x0150CF 11:B0BF: 20        .byte $20
- D - I - 0x0150D0 11:B0C0: 3F        .byte $3F
- D - I - 0x0150D1 11:B0C1: 22        .byte $22
- D - I - 0x0150D2 11:B0C2: 03        .byte $03
- D - I - 0x0150D3 11:B0C3: 24        .byte $24
- D - I - 0x0150D4 11:B0C4: BF        .byte $BF
- D - I - 0x0150D5 11:B0C5: 38        .byte $38
- D - I - 0x0150D6 11:B0C6: 1C        .byte $1C
- D - I - 0x0150D7 11:B0C7: 3B        .byte $3B
- D - I - 0x0150D8 11:B0C8: 21        .byte $21
- D - I - 0x0150D9 11:B0C9: 3C        .byte $3C
- D - I - 0x0150DA 11:B0CA: 1E        .byte $1E
- D - I - 0x0150DB 11:B0CB: 3F        .byte $3F
- D - I - 0x0150DC 11:B0CC: 23        .byte $23
- D - I - 0x0150DD 11:B0CD: 03        .byte $03
- D - I - 0x0150DE 11:B0CE: 25        .byte $25
- D - I - 0x0150DF 11:B0CF: 07        .byte $07
- D - I - 0x0150E0 11:B0D0: 27        .byte $27
- D - I - 0x0150E1 11:B0D1: A0        .byte $A0
- D - I - 0x0150E2 11:B0D2: 38        .byte $38
- D - I - 0x0150E3 11:B0D3: 18        .byte $18
- D - I - 0x0150E4 11:B0D4: 3C        .byte $3C
- D - I - 0x0150E5 11:B0D5: 1A        .byte $1A
- D - I - 0x0150E6 11:B0D6: 00        .byte $00
- D - I - 0x0150E7 11:B0D7: 1D        .byte $1D
- D - I - 0x0150E8 11:B0D8: 03        .byte $03
- D - I - 0x0150E9 11:B0D9: 26        .byte $26
- D - I - 0x0150EA 11:B0DA: 07        .byte $07
- D - I - 0x0150EB 11:B0DB: 28        .byte $28
- D - I - 0x0150EC 11:B0DC: A1        .byte $A1
- D - I - 0x0150ED 11:B0DD: 38        .byte $38
- D - I - 0x0150EE 11:B0DE: 19        .byte $19
- D - I - 0x0150EF 11:B0DF: 3C        .byte $3C
- D - I - 0x0150F0 11:B0E0: 1B        .byte $1B
- D - I - 0x0150F1 11:B0E1: 00        .byte $00
- D - I - 0x0150F2 11:B0E2: 11        .byte $11
- D - I - 0x0150F3 11:B0E3: A2        .byte $A2
- D - I - 0x0150F4 11:B0E4: 38        .byte $38
- D - I - 0x0150F5 11:B0E5: 14        .byte $14
- D - I - 0x0150F6 11:B0E6: 3C        .byte $3C
- D - I - 0x0150F7 11:B0E7: 16        .byte $16
- D - I - 0x0150F8 11:B0E8: A3        .byte $A3
- D - I - 0x0150F9 11:B0E9: 34        .byte $34
- D - I - 0x0150FA 11:B0EA: 03        .byte $03
- D - I - 0x0150FB 11:B0EB: 38        .byte $38
- D - I - 0x0150FC 11:B0EC: 5B        .byte $5B
- D - I - 0x0150FD 11:B0ED: 3C        .byte $3C
- D - I - 0x0150FE 11:B0EE: 17        .byte $17
- D - I - 0x0150FF 11:B0EF: FF        .byte $FF



off_B0F0:
- D - I - 0x015100 11:B0F0: 2C        .byte $2C
- D - I - 0x015101 11:B0F1: 2D        .byte $2D
- D - I - 0x015102 11:B0F2: 5E        .byte $5E
- D - I - 0x015103 11:B0F3: 5F        .byte $5F
- D - I - 0x015104 11:B0F4: BC        .byte $BC
- D - I - 0x015105 11:B0F5: 08        .byte $08
- D - I - 0x015106 11:B0F6: 22        .byte $22
- D - I - 0x015107 11:B0F7: 0C        .byte $0C
- D - I - 0x015108 11:B0F8: 28        .byte $28
- D - I - 0x015109 11:B0F9: BD        .byte $BD
- D - I - 0x01510A 11:B0FA: 04        .byte $04
- D - I - 0x01510B 11:B0FB: 24        .byte $24
- D - I - 0x01510C 11:B0FC: 08        .byte $08
- D - I - 0x01510D 11:B0FD: 23        .byte $23
- D - I - 0x01510E 11:B0FE: 0C        .byte $0C
- D - I - 0x01510F 11:B0FF: 29        .byte $29
- D - I - 0x015110 11:B100: BE        .byte $BE
- D - I - 0x015111 11:B101: 39        .byte $39
- D - I - 0x015112 11:B102: 02        .byte $02
- D - I - 0x015113 11:B103: 9F        .byte $9F
- D - I - 0x015114 11:B104: CC        .byte $CC
- D - I - 0x015115 11:B105: 01        .byte $01
- D - I - 0x015116 11:B106: 08        .byte $08
- D - I - 0x015117 11:B107: C4        .byte $C4
- D - I - 0x015118 11:B108: 01        .byte $01
- D - I - 0x015119 11:B109: 09        .byte $09
- D - I - 0x01511A 11:B10A: 00        .byte $00
- D - I - 0x01511B 11:B10B: 0A        .byte $0A
- D - I - 0x01511C 11:B10C: 04        .byte $04
- D - I - 0x01511D 11:B10D: 20        .byte $20
- D - I - 0x01511E 11:B10E: 08        .byte $08
- D - I - 0x01511F 11:B10F: 26        .byte $26
- D - I - 0x015120 11:B110: BF        .byte $BF
- D - I - 0x015121 11:B111: 39        .byte $39
- D - I - 0x015122 11:B112: 03        .byte $03
- D - I - 0x015123 11:B113: 9F        .byte $9F
- D - I - 0x015124 11:B114: C4        .byte $C4
- D - I - 0x015125 11:B115: 01        .byte $01
- D - I - 0x015126 11:B116: 0C        .byte $0C
- D - I - 0x015127 11:B117: 00        .byte $00
- D - I - 0x015128 11:B118: 0B        .byte $0B
- D - I - 0x015129 11:B119: 04        .byte $04
- D - I - 0x01512A 11:B11A: 21        .byte $21
- D - I - 0x01512B 11:B11B: A0        .byte $A0
- D - I - 0x01512C 11:B11C: 00        .byte $00
- D - I - 0x01512D 11:B11D: 0E        .byte $0E
- D - I - 0x01512E 11:B11E: A1        .byte $A1
- D - I - 0x01512F 11:B11F: 00        .byte $00
- D - I - 0x015130 11:B120: 2A        .byte $2A
- D - I - 0x015131 11:B121: 04        .byte $04
- D - I - 0x015132 11:B122: 2F        .byte $2F
- D - I - 0x015133 11:B123: A2        .byte $A2
- D - I - 0x015134 11:B124: 3C        .byte $3C
- D - I - 0x015135 11:B125: 2C        .byte $2C
- D - I - 0x015136 11:B126: 00        .byte $00
- D - I - 0x015137 11:B127: 2B        .byte $2B
- D - I - 0x015138 11:B128: 04        .byte $04
- D - I - 0x015139 11:B129: 3A        .byte $3A
- D - I - 0x01513A 11:B12A: A3        .byte $A3
- D - I - 0x01513B 11:B12B: 38        .byte $38
- D - I - 0x01513C 11:B12C: 27        .byte $27
- D - I - 0x01513D 11:B12D: 3C        .byte $3C
- D - I - 0x01513E 11:B12E: 2D        .byte $2D
- D - I - 0x01513F 11:B12F: 00        .byte $00
- D - I - 0x015140 11:B130: 2E        .byte $2E
- D - I - 0x015141 11:B131: A4        .byte $A4
- D - I - 0x015142 11:B132: 38        .byte $38
- D - I - 0x015143 11:B133: 32        .byte $32
- D - I - 0x015144 11:B134: 3C        .byte $3C
- D - I - 0x015145 11:B135: 38        .byte $38
- D - I - 0x015146 11:B136: FF        .byte $FF



off_B137:
- D - I - 0x015147 11:B137: 04        .byte $04
- D - I - 0x015148 11:B138: 05        .byte $05
- D - I - 0x015149 11:B139: 1E        .byte $1E
- D - I - 0x01514A 11:B13A: 1F        .byte $1F
- D - I - 0x01514B 11:B13B: BF        .byte $BF
- D - I - 0x01514C 11:B13C: 3C        .byte $3C
- D - I - 0x01514D 11:B13D: 82        .byte $82
- D - I - 0x01514E 11:B13E: 02        .byte $02
- D - I - 0x01514F 11:B13F: 88        .byte $88
- D - I - 0x015150 11:B140: 06        .byte $06
- D - I - 0x015151 11:B141: 8A        .byte $8A
- D - I - 0x015152 11:B142: 0A        .byte $0A
- D - I - 0x015153 11:B143: A0        .byte $A0
- D - I - 0x015154 11:B144: A0        .byte $A0
- D - I - 0x015155 11:B145: 3C        .byte $3C
- D - I - 0x015156 11:B146: B9        .byte $B9
- D - I - 0x015157 11:B147: 02        .byte $02
- D - I - 0x015158 11:B148: 84        .byte $84
- D - I - 0x015159 11:B149: 01        .byte $01
- D - I - 0x01515A 11:B14A: 89        .byte $89
- D - I - 0x01515B 11:B14B: 06        .byte $06
- D - I - 0x01515C 11:B14C: 85        .byte $85
- D - I - 0x01515D 11:B14D: 05        .byte $05
- D - I - 0x01515E 11:B14E: 8B        .byte $8B
- D - I - 0x01515F 11:B14F: 0A        .byte $0A
- D - I - 0x015160 11:B150: A1        .byte $A1
- D - I - 0x015161 11:B151: A1        .byte $A1
- D - I - 0x015162 11:B152: 3C        .byte $3C
- D - I - 0x015163 11:B153: 86        .byte $86
- D - I - 0x015164 11:B154: 02        .byte $02
- D - I - 0x015165 11:B155: 8C        .byte $8C
- D - I - 0x015166 11:B156: 06        .byte $06
- D - I - 0x015167 11:B157: 8E        .byte $8E
- D - I - 0x015168 11:B158: 0A        .byte $0A
- D - I - 0x015169 11:B159: A4        .byte $A4
- D - I - 0x01516A 11:B15A: FF        .byte $FF



off_B15B:
- D - I - 0x01516B 11:B15B: 7C        .byte $7C
- D - I - 0x01516C 11:B15C: 71        .byte $71
- D - I - 0x01516D 11:B15D: 52        .byte $52
- D - I - 0x01516E 11:B15E: 53        .byte $53
- D - I - 0x01516F 11:B15F: BF        .byte $BF
- D - I - 0x015170 11:B160: 34        .byte $34
- D - I - 0x015171 11:B161: 50        .byte $50
- D - I - 0x015172 11:B162: 0A        .byte $0A
- D - I - 0x015173 11:B163: F6        .byte $F6
- D - I - 0x015174 11:B164: 0E        .byte $0E
- D - I - 0x015175 11:B165: FC        .byte $FC
- D - I - 0x015176 11:B166: 11        .byte $11
- D - I - 0x015177 11:B167: EA        .byte $EA
- D - I - 0x015178 11:B168: 12        .byte $12
- D - I - 0x015179 11:B169: FE        .byte $FE
- D - I - 0x01517A 11:B16A: A0        .byte $A0
- D - I - 0x01517B 11:B16B: 9D        .byte $9D
- D - I - 0x01517C 11:B16C: CE        .byte $CE
- D - I - 0x01517D 11:B16D: 01        .byte $01
- D - I - 0x01517E 11:B16E: E6        .byte $E6
- D - I - 0x01517F 11:B16F: 9E        .byte $9E
- D - I - 0x015180 11:B170: CE        .byte $CE
- D - I - 0x015181 11:B171: 00        .byte $00
- D - I - 0x015182 11:B172: 52        .byte $52
- D - I - 0x015183 11:B173: CE        .byte $CE
- D - I - 0x015184 11:B174: 01        .byte $01
- D - I - 0x015185 11:B175: FA        .byte $FA
- D - I - 0x015186 11:B176: C6        .byte $C6
- D - I - 0x015187 11:B177: 00        .byte $00
- D - I - 0x015188 11:B178: 53        .byte $53
- D - I - 0x015189 11:B179: C6        .byte $C6
- D - I - 0x01518A 11:B17A: 01        .byte $01
- D - I - 0x01518B 11:B17B: FB        .byte $FB
- D - I - 0x01518C 11:B17C: 3C        .byte $3C
- D - I - 0x01518D 11:B17D: 58        .byte $58
- D - I - 0x01518E 11:B17E: 3D        .byte $3D
- D - I - 0x01518F 11:B17F: E5        .byte $E5
- D - I - 0x015190 11:B180: 00        .byte $00
- D - I - 0x015191 11:B181: 5A        .byte $5A
- D - I - 0x015192 11:B182: 01        .byte $01
- D - I - 0x015193 11:B183: E7        .byte $E7
- D - I - 0x015194 11:B184: 81        .byte $81
- D - I - 0x015195 11:B185: CC        .byte $CC
- D - I - 0x015196 11:B186: 00        .byte $00
- D - I - 0x015197 11:B187: 56        .byte $56
- D - I - 0x015198 11:B188: C4        .byte $C4
- D - I - 0x015199 11:B189: 00        .byte $00
- D - I - 0x01519A 11:B18A: 57        .byte $57
- D - I - 0x01519B 11:B18B: 05        .byte $05
- D - I - 0x01519C 11:B18C: ED        .byte $ED
- D - I - 0x01519D 11:B18D: 82        .byte $82
- D - I - 0x01519E 11:B18E: CC        .byte $CC
- D - I - 0x01519F 11:B18F: 00        .byte $00
- D - I - 0x0151A0 11:B190: 5C        .byte $5C
- D - I - 0x0151A1 11:B191: C4        .byte $C4
- D - I - 0x0151A2 11:B192: 00        .byte $00
- D - I - 0x0151A3 11:B193: 5D        .byte $5D
- D - I - 0x0151A4 11:B194: CA        .byte $CA
- D - I - 0x0151A5 11:B195: 01        .byte $01
- D - I - 0x0151A6 11:B196: EE        .byte $EE
- D - I - 0x0151A7 11:B197: C2        .byte $C2
- D - I - 0x0151A8 11:B198: 01        .byte $01
- D - I - 0x0151A9 11:B199: EF        .byte $EF
- D - I - 0x0151AA 11:B19A: 83        .byte $83
- D - I - 0x0151AB 11:B19B: CC        .byte $CC
- D - I - 0x0151AC 11:B19C: 00        .byte $00
- D - I - 0x0151AD 11:B19D: 5E        .byte $5E
- D - I - 0x0151AE 11:B19E: C4        .byte $C4
- D - I - 0x0151AF 11:B19F: 00        .byte $00
- D - I - 0x0151B0 11:B1A0: 5F        .byte $5F
- D - I - 0x0151B1 11:B1A1: CA        .byte $CA
- D - I - 0x0151B2 11:B1A2: 01        .byte $01
- D - I - 0x0151B3 11:B1A3: E8        .byte $E8
- D - I - 0x0151B4 11:B1A4: C2        .byte $C2
- D - I - 0x0151B5 11:B1A5: 01        .byte $01
- D - I - 0x0151B6 11:B1A6: E9        .byte $E9
- D - I - 0x0151B7 11:B1A7: 10        .byte $10
- D - I - 0x0151B8 11:B1A8: 55        .byte $55
- D - I - 0x0151B9 11:B1A9: 11        .byte $11
- D - I - 0x0151BA 11:B1AA: EB        .byte $EB
- D - I - 0x0151BB 11:B1AB: 12        .byte $12
- D - I - 0x0151BC 11:B1AC: FF        .byte $FF
- D - I - 0x0151BD 11:B1AD: A1        .byte $A1
- D - I - 0x0151BE 11:B1AE: 3C        .byte $3C
- D - I - 0x0151BF 11:B1AF: 59        .byte $59
- D - I - 0x0151C0 11:B1B0: 3D        .byte $3D
- D - I - 0x0151C1 11:B1B1: F0        .byte $F0
- D - I - 0x0151C2 11:B1B2: 00        .byte $00
- D - I - 0x0151C3 11:B1B3: 5B        .byte $5B
- D - I - 0x0151C4 11:B1B4: 01        .byte $01
- D - I - 0x0151C5 11:B1B5: F2        .byte $F2
- D - I - 0x0151C6 11:B1B6: 81        .byte $81
- D - I - 0x0151C7 11:B1B7: C4        .byte $C4
- D - I - 0x0151C8 11:B1B8: 00        .byte $00
- D - I - 0x0151C9 11:B1B9: 54        .byte $54
- D - I - 0x0151CA 11:B1BA: 05        .byte $05
- D - I - 0x0151CB 11:B1BB: F8        .byte $F8
- D - I - 0x0151CC 11:B1BC: A2        .byte $A2
- D - I - 0x0151CD 11:B1BD: 02        .byte $02
- D - I - 0x0151CE 11:B1BE: F7        .byte $F7
- D - I - 0x0151CF 11:B1BF: 00        .byte $00
- D - I - 0x0151D0 11:B1C0: 51        .byte $51
- D - I - 0x0151D1 11:B1C1: 01        .byte $01
- D - I - 0x0151D2 11:B1C2: F3        .byte $F3
- D - I - 0x0151D3 11:B1C3: 05        .byte $05
- D - I - 0x0151D4 11:B1C4: F9        .byte $F9
- D - I - 0x0151D5 11:B1C5: 06        .byte $06
- D - I - 0x0151D6 11:B1C6: FD        .byte $FD
- D - I - 0x0151D7 11:B1C7: BF        .byte $BF
- D - I - 0x0151D8 11:B1C8: 05        .byte $05
- D - I - 0x0151D9 11:B1C9: EC        .byte $EC
- D - I - 0x0151DA 11:B1CA: FF        .byte $FF



off_B1CB:
- D - I - 0x0151DB 11:B1CB: 70        .byte $70
- D - I - 0x0151DC 11:B1CC: 71        .byte $71
- D - I - 0x0151DD 11:B1CD: 72        .byte $72
- D - I - 0x0151DE 11:B1CE: 73        .byte $73
- D - I - 0x0151DF 11:B1CF: A0        .byte $A0
- D - I - 0x0151E0 11:B1D0: 02        .byte $02
- D - I - 0x0151E1 11:B1D1: ED        .byte $ED
- D - I - 0x0151E2 11:B1D2: 06        .byte $06
- D - I - 0x0151E3 11:B1D3: EF        .byte $EF
- D - I - 0x0151E4 11:B1D4: A1        .byte $A1
- D - I - 0x0151E5 11:B1D5: 42        .byte $42
- D - I - 0x0151E6 11:B1D6: ED        .byte $ED
- D - I - 0x0151E7 11:B1D7: 46        .byte $46
- D - I - 0x0151E8 11:B1D8: EF        .byte $EF
- D - I - 0x0151E9 11:B1D9: FF        .byte $FF



off_B1DA:
- D - I - 0x0151EA 11:B1DA: 6C        .byte $6C
- D - I - 0x0151EB 11:B1DB: 6D        .byte $6D
- D - I - 0x0151EC 11:B1DC: 6E        .byte $6E
- D - I - 0x0151ED 11:B1DD: 6F        .byte $6F
- D - I - 0x0151EE 11:B1DE: BC        .byte $BC
- D - I - 0x0151EF 11:B1DF: 38        .byte $38
- D - I - 0x0151F0 11:B1E0: F3        .byte $F3
- D - I - 0x0151F1 11:B1E1: BD        .byte $BD
- D - I - 0x0151F2 11:B1E2: 38        .byte $38
- D - I - 0x0151F3 11:B1E3: F6        .byte $F6
- D - I - 0x0151F4 11:B1E4: BE        .byte $BE
- D - I - 0x0151F5 11:B1E5: 38        .byte $38
- D - I - 0x0151F6 11:B1E6: F6        .byte $F6
- D - I - 0x0151F7 11:B1E7: BF        .byte $BF
- D - I - 0x0151F8 11:B1E8: 38        .byte $38
- D - I - 0x0151F9 11:B1E9: F6        .byte $F6
- D - I - 0x0151FA 11:B1EA: 83        .byte $83
- D - I - 0x0151FB 11:B1EB: C0        .byte $C0
- D - I - 0x0151FC 11:B1EC: 32        .byte $32
- D - I - 0x0151FD 11:B1ED: 5D        .byte $5D
- D - I - 0x0151FE 11:B1EE: C0        .byte $C0
- D - I - 0x0151FF 11:B1EF: 12        .byte $12
- D - I - 0x015200 11:B1F0: 5F        .byte $5F
- D - I - 0x015201 11:B1F1: A0        .byte $A0
- D - I - 0x015202 11:B1F2: 38        .byte $38
- D - I - 0x015203 11:B1F3: F6        .byte $F6
- D - I - 0x015204 11:B1F4: 00        .byte $00
- D - I - 0x015205 11:B1F5: F6        .byte $F6
- D - I - 0x015206 11:B1F6: 04        .byte $04
- D - I - 0x015207 11:B1F7: F7        .byte $F7
- D - I - 0x015208 11:B1F8: 83        .byte $83
- D - I - 0x015209 11:B1F9: C0        .byte $C0
- D - I - 0x01520A 11:B1FA: 72        .byte $72
- D - I - 0x01520B 11:B1FB: 5D        .byte $5D
- D - I - 0x01520C 11:B1FC: C0        .byte $C0
- D - I - 0x01520D 11:B1FD: 52        .byte $52
- D - I - 0x01520E 11:B1FE: 5F        .byte $5F
- D - I - 0x01520F 11:B1FF: A1        .byte $A1
- D - I - 0x015210 11:B200: 38        .byte $38
- D - I - 0x015211 11:B201: F6        .byte $F6
- D - I - 0x015212 11:B202: 00        .byte $00
- D - I - 0x015213 11:B203: F6        .byte $F6
- D - I - 0x015214 11:B204: A2        .byte $A2
- D - I - 0x015215 11:B205: 38        .byte $38
- D - I - 0x015216 11:B206: F6        .byte $F6
- D - I - 0x015217 11:B207: 00        .byte $00
- D - I - 0x015218 11:B208: F6        .byte $F6
- D - I - 0x015219 11:B209: A3        .byte $A3
- D - I - 0x01521A 11:B20A: 3C        .byte $3C
- D - I - 0x01521B 11:B20B: F7        .byte $F7
- D - I - 0x01521C 11:B20C: 00        .byte $00
- D - I - 0x01521D 11:B20D: F3        .byte $F3
- D - I - 0x01521E 11:B20E: A4        .byte $A4
- D - I - 0x01521F 11:B20F: 00        .byte $00
- D - I - 0x015220 11:B210: F6        .byte $F6
- D - I - 0x015221 11:B211: A5        .byte $A5
- D - I - 0x015222 11:B212: 00        .byte $00
- D - I - 0x015223 11:B213: F6        .byte $F6
- D - I - 0x015224 11:B214: A6        .byte $A6
- D - I - 0x015225 11:B215: 04        .byte $04
- D - I - 0x015226 11:B216: F7        .byte $F7
- D - I - 0x015227 11:B217: FF        .byte $FF



off_B218:
- D - I - 0x015228 11:B218: 60        .byte $60
- D - I - 0x015229 11:B219: 61        .byte $61
- D - I - 0x01522A 11:B21A: 62        .byte $62
- D - I - 0x01522B 11:B21B: 63        .byte $63
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
- D - I - 0x01523C 11:B22C: FF        .byte $FF



off_B22D:
- D - I - 0x01523D 11:B22D: 18        .byte $18
- D - I - 0x01523E 11:B22E: 19        .byte $19
- D - I - 0x01523F 11:B22F: 1A        .byte $1A
- D - I - 0x015240 11:B230: 1B        .byte $1B
- D - I - 0x015241 11:B231: FA        .byte con_jsr
- D - I - 0x015242 11:B232: A2 BB     .word off_BBA2
- D - I - 0x015244 11:B234: FB        .byte con_jmp
- D - I - 0x015245 11:B235: 56 BB     .word off_BB56



off_B237:
- D - I - 0x015247 11:B237: 6C        .byte $6C
- D - I - 0x015248 11:B238: 6D        .byte $6D
- D - I - 0x015249 11:B239: 6E        .byte $6E
- D - I - 0x01524A 11:B23A: 6F        .byte $6F
- D - I - 0x01524B 11:B23B: BF        .byte $BF
- D - I - 0x01524C 11:B23C: 3F        .byte $3F
- D - I - 0x01524D 11:B23D: 01        .byte $01
- D - I - 0x01524E 11:B23E: 03        .byte $03
- D - I - 0x01524F 11:B23F: 01        .byte $01
- D - I - 0x015250 11:B240: 07        .byte $07
- D - I - 0x015251 11:B241: 01        .byte $01
- D - I - 0x015252 11:B242: A0        .byte $A0
- D - I - 0x015253 11:B243: 3F        .byte $3F
- D - I - 0x015254 11:B244: 4F        .byte $4F
- D - I - 0x015255 11:B245: 03        .byte $03
- D - I - 0x015256 11:B246: 4F        .byte $4F
- D - I - 0x015257 11:B247: 07        .byte $07
- D - I - 0x015258 11:B248: 4F        .byte $4F
- D - I - 0x015259 11:B249: A1        .byte $A1
- D - I - 0x01525A 11:B24A: 3F        .byte $3F
- D - I - 0x01525B 11:B24B: 58        .byte $58
- D - I - 0x01525C 11:B24C: 03        .byte $03
- D - I - 0x01525D 11:B24D: 58        .byte $58
- D - I - 0x01525E 11:B24E: 07        .byte $07
- D - I - 0x01525F 11:B24F: 58        .byte $58
- D - I - 0x015260 11:B250: A2        .byte $A2
- D - I - 0x015261 11:B251: 3F        .byte $3F
- D - I - 0x015262 11:B252: 03        .byte $03
- D - I - 0x015263 11:B253: 03        .byte $03
- D - I - 0x015264 11:B254: 03        .byte $03
- D - I - 0x015265 11:B255: 07        .byte $07
- D - I - 0x015266 11:B256: 03        .byte $03
- D - I - 0x015267 11:B257: FF        .byte $FF



off_B258:
- D - I - 0x015268 11:B258: 18        .byte $18
- D - I - 0x015269 11:B259: 19        .byte $19
- D - I - 0x01526A 11:B25A: 1A        .byte $1A
- D - I - 0x01526B 11:B25B: 1B        .byte $1B
- D - I - 0x01526C 11:B25C: FA        .byte con_jsr
- D - I - 0x01526D 11:B25D: B0 BB     .word off_BBB0
- D - I - 0x01526F 11:B25F: FB        .byte con_jmp
- D - I - 0x015270 11:B260: FC BA     .word off_BAFC



off_B262:
- D - I - 0x015272 11:B262: 18        .byte $18
- D - I - 0x015273 11:B263: 19        .byte $19
- D - I - 0x015274 11:B264: 1A        .byte $1A
- D - I - 0x015275 11:B265: 1B        .byte $1B
- D - I - 0x015276 11:B266: FA        .byte con_jsr
- D - I - 0x015277 11:B267: B0 BB     .word off_BBB0
- D - I - 0x015279 11:B269: FB        .byte con_jmp
- D - I - 0x01527A 11:B26A: 14 BB     .word off_BB14



off_B26C:
- D - I - 0x01527C 11:B26C: 18        .byte $18
- D - I - 0x01527D 11:B26D: 19        .byte $19
- D - I - 0x01527E 11:B26E: 1A        .byte $1A
- D - I - 0x01527F 11:B26F: 1B        .byte $1B
- D - I - 0x015280 11:B270: FA        .byte con_jsr
- D - I - 0x015281 11:B271: B0 BB     .word off_BBB0
- D - I - 0x015283 11:B273: FB        .byte con_jmp
- D - I - 0x015284 11:B274: 56 BB     .word off_BB56



off_B276:
- D - I - 0x015286 11:B276: 6C        .byte $6C
- D - I - 0x015287 11:B277: 6D        .byte $6D
- D - I - 0x015288 11:B278: 6E        .byte $6E
- D - I - 0x015289 11:B279: 6F        .byte $6F
- D - I - 0x01528A 11:B27A: BF        .byte $BF
- D - I - 0x01528B 11:B27B: 3E        .byte $3E
- D - I - 0x01528C 11:B27C: 01        .byte $01
- D - I - 0x01528D 11:B27D: 02        .byte $02
- D - I - 0x01528E 11:B27E: 02        .byte $02
- D - I - 0x01528F 11:B27F: 06        .byte $06
- D - I - 0x015290 11:B280: 03        .byte $03
- D - I - 0x015291 11:B281: A0        .byte $A0
- D - I - 0x015292 11:B282: 3E        .byte $3E
- D - I - 0x015293 11:B283: 01        .byte $01
- D - I - 0x015294 11:B284: 02        .byte $02
- D - I - 0x015295 11:B285: 02        .byte $02
- D - I - 0x015296 11:B286: 06        .byte $06
- D - I - 0x015297 11:B287: 03        .byte $03
- D - I - 0x015298 11:B288: A1        .byte $A1
- D - I - 0x015299 11:B289: 3E        .byte $3E
- D - I - 0x01529A 11:B28A: 01        .byte $01
- D - I - 0x01529B 11:B28B: 02        .byte $02
- D - I - 0x01529C 11:B28C: 02        .byte $02
- D - I - 0x01529D 11:B28D: 06        .byte $06
- D - I - 0x01529E 11:B28E: 03        .byte $03
- D - I - 0x01529F 11:B28F: A2        .byte $A2
- D - I - 0x0152A0 11:B290: 3E        .byte $3E
- D - I - 0x0152A1 11:B291: 01        .byte $01
- D - I - 0x0152A2 11:B292: 02        .byte $02
- D - I - 0x0152A3 11:B293: 02        .byte $02
- D - I - 0x0152A4 11:B294: 06        .byte $06
- D - I - 0x0152A5 11:B295: 03        .byte $03
- D - I - 0x0152A6 11:B296: FF        .byte $FF



off_B297:
- D - I - 0x0152A7 11:B297: 18        .byte $18
- D - I - 0x0152A8 11:B298: 19        .byte $19
- D - I - 0x0152A9 11:B299: 1A        .byte $1A
- D - I - 0x0152AA 11:B29A: 1B        .byte $1B
- D - I - 0x0152AB 11:B29B: FA        .byte con_jsr
- D - I - 0x0152AC 11:B29C: BE BB     .word off_BBBE
- D - I - 0x0152AE 11:B29E: FB        .byte con_jmp
- D - I - 0x0152AF 11:B29F: FC BA     .word off_BAFC



off_B2A1:
- D - I - 0x0152B1 11:B2A1: 18        .byte $18
- D - I - 0x0152B2 11:B2A2: 19        .byte $19
- D - I - 0x0152B3 11:B2A3: 1A        .byte $1A
- D - I - 0x0152B4 11:B2A4: 1B        .byte $1B
- D - I - 0x0152B5 11:B2A5: FA        .byte con_jsr
- D - I - 0x0152B6 11:B2A6: BE BB     .word off_BBBE
- D - I - 0x0152B8 11:B2A8: FB        .byte con_jmp
- D - I - 0x0152B9 11:B2A9: 14 BB     .word off_BB14



off_B2AB:
- D - I - 0x0152BB 11:B2AB: 18        .byte $18
- D - I - 0x0152BC 11:B2AC: 19        .byte $19
- D - I - 0x0152BD 11:B2AD: 1A        .byte $1A
- D - I - 0x0152BE 11:B2AE: 1B        .byte $1B
- D - I - 0x0152BF 11:B2AF: FA        .byte con_jsr
- D - I - 0x0152C0 11:B2B0: BE BB     .word off_BBBE
- D - I - 0x0152C2 11:B2B2: FB        .byte con_jmp
- D - I - 0x0152C3 11:B2B3: 56 BB     .word off_BB56



off_B2B5:
- D - I - 0x0152C5 11:B2B5: 6C        .byte $6C
- D - I - 0x0152C6 11:B2B6: 6D        .byte $6D
- D - I - 0x0152C7 11:B2B7: 6E        .byte $6E
- D - I - 0x0152C8 11:B2B8: 6F        .byte $6F
- D - I - 0x0152C9 11:B2B9: BF        .byte $BF
- D - I - 0x0152CA 11:B2BA: 3D        .byte $3D
- D - I - 0x0152CB 11:B2BB: 01        .byte $01
- D - I - 0x0152CC 11:B2BC: 41        .byte $41
- D - I - 0x0152CD 11:B2BD: FE        .byte $FE
- D - I - 0x0152CE 11:B2BE: 05        .byte $05
- D - I - 0x0152CF 11:B2BF: 01        .byte $01
- D - I - 0x0152D0 11:B2C0: A0        .byte $A0
- D - I - 0x0152D1 11:B2C1: 7D        .byte $7D
- D - I - 0x0152D2 11:B2C2: D8        .byte $D8
- D - I - 0x0152D3 11:B2C3: 80        .byte $80
- D - I - 0x0152D4 11:B2C4: C4        .byte $C4
- D - I - 0x0152D5 11:B2C5: 00        .byte $00
- D - I - 0x0152D6 11:B2C6: 51        .byte $51
- D - I - 0x0152D7 11:B2C7: 41        .byte $41
- D - I - 0x0152D8 11:B2C8: B4        .byte $B4
- D - I - 0x0152D9 11:B2C9: 45        .byte $45
- D - I - 0x0152DA 11:B2CA: FC        .byte $FC
- D - I - 0x0152DB 11:B2CB: A1        .byte $A1
- D - I - 0x0152DC 11:B2CC: 3D        .byte $3D
- D - I - 0x0152DD 11:B2CD: D8        .byte $D8
- D - I - 0x0152DE 11:B2CE: 01        .byte $01
- D - I - 0x0152DF 11:B2CF: B4        .byte $B4
- D - I - 0x0152E0 11:B2D0: 05        .byte $05
- D - I - 0x0152E1 11:B2D1: FC        .byte $FC
- D - I - 0x0152E2 11:B2D2: A2        .byte $A2
- D - I - 0x0152E3 11:B2D3: 3D        .byte $3D
- D - I - 0x0152E4 11:B2D4: 01        .byte $01
- D - I - 0x0152E5 11:B2D5: 01        .byte $01
- D - I - 0x0152E6 11:B2D6: FE        .byte $FE
- D - I - 0x0152E7 11:B2D7: 05        .byte $05
- D - I - 0x0152E8 11:B2D8: 01        .byte $01
- D - I - 0x0152E9 11:B2D9: FF        .byte $FF



off_B2DA:
- D - I - 0x0152EA 11:B2DA: 18        .byte $18
- D - I - 0x0152EB 11:B2DB: 19        .byte $19
- D - I - 0x0152EC 11:B2DC: 1A        .byte $1A
- D - I - 0x0152ED 11:B2DD: 1B        .byte $1B
- D - I - 0x0152EE 11:B2DE: FA        .byte con_jsr
- D - I - 0x0152EF 11:B2DF: C9 BB     .word off_BBC9
- D - I - 0x0152F1 11:B2E1: FB        .byte con_jmp
- D - I - 0x0152F2 11:B2E2: FC BA     .word off_BAFC



off_B2E4:
- D - I - 0x0152F4 11:B2E4: 18        .byte $18
- D - I - 0x0152F5 11:B2E5: 19        .byte $19
- D - I - 0x0152F6 11:B2E6: 1A        .byte $1A
- D - I - 0x0152F7 11:B2E7: 1B        .byte $1B
- D - I - 0x0152F8 11:B2E8: FA        .byte con_jsr
- D - I - 0x0152F9 11:B2E9: C9 BB     .word off_BBC9
- D - I - 0x0152FB 11:B2EB: FB        .byte con_jmp
- D - I - 0x0152FC 11:B2EC: 14 BB     .word off_BB14



off_B2EE:
- D - I - 0x0152FE 11:B2EE: 18        .byte $18
- D - I - 0x0152FF 11:B2EF: 19        .byte $19
- D - I - 0x015300 11:B2F0: 1A        .byte $1A
- D - I - 0x015301 11:B2F1: 1B        .byte $1B
- D - I - 0x015302 11:B2F2: FA        .byte con_jsr
- D - I - 0x015303 11:B2F3: C9 BB     .word off_BBC9
- D - I - 0x015305 11:B2F5: FB        .byte con_jmp
- D - I - 0x015306 11:B2F6: 56 BB     .word off_BB56



off_B2F8:
- D - I - 0x015308 11:B2F8: 70        .byte $70
- D - I - 0x015309 11:B2F9: 71        .byte $71
- D - I - 0x01530A 11:B2FA: 72        .byte $72
- D - I - 0x01530B 11:B2FB: 73        .byte $73
- D - I - 0x01530C 11:B2FC: B7        .byte $B7
- D - I - 0x01530D 11:B2FD: 03        .byte $03
- D - I - 0x01530E 11:B2FE: DE        .byte $DE
- D - I - 0x01530F 11:B2FF: 07        .byte $07
- D - I - 0x015310 11:B300: F4        .byte $F4
- D - I - 0x015311 11:B301: B8        .byte $B8
- D - I - 0x015312 11:B302: 03        .byte $03
- D - I - 0x015313 11:B303: DF        .byte $DF
- D - I - 0x015314 11:B304: 07        .byte $07
- D - I - 0x015315 11:B305: F5        .byte $F5
- D - I - 0x015316 11:B306: BA        .byte $BA
- D - I - 0x015317 11:B307: 43        .byte $43
- D - I - 0x015318 11:B308: F8        .byte $F8
- D - I - 0x015319 11:B309: 47        .byte $47
- D - I - 0x01531A 11:B30A: FA        .byte $FA
- D - I - 0x01531B 11:B30B: AA        .byte $AA
- D - I - 0x01531C 11:B30C: 01        .byte $01
- D - I - 0x01531D 11:B30D: F8        .byte $F8
- D - I - 0x01531E 11:B30E: 05        .byte $05
- D - I - 0x01531F 11:B30F: FA        .byte $FA
- D - I - 0x015320 11:B310: FF        .byte $FF



off_B311:
- D - I - 0x015321 11:B311: 16        .byte $16
- D - I - 0x015322 11:B312: 17        .byte $17
- D - I - 0x015323 11:B313: 2D        .byte $2D
- D - I - 0x015324 11:B314: 5F        .byte $5F
- D - I - 0x015325 11:B315: FA        .byte con_jsr
- D - I - 0x015326 11:B316: D4 BB     .word off_BBD4
- D - I - 0x015328 11:B318: FB        .byte con_jmp
- D - I - 0x015329 11:B319: 2C BC     .word off_BC2C



off_B31B:
- D - I - 0x01532B 11:B31B: 16        .byte $16
- D - I - 0x01532C 11:B31C: 17        .byte $17
- D - I - 0x01532D 11:B31D: 2D        .byte $2D
- D - I - 0x01532E 11:B31E: 5F        .byte $5F
- D - I - 0x01532F 11:B31F: FA        .byte con_jsr
- D - I - 0x015330 11:B320: E8 BB     .word off_BBE8
- D - I - 0x015332 11:B322: FB        .byte con_jmp
- D - I - 0x015333 11:B323: 2C BC     .word off_BC2C



off_B325:
- D - I - 0x015335 11:B325: 16        .byte $16
- D - I - 0x015336 11:B326: 17        .byte $17
- D - I - 0x015337 11:B327: 2D        .byte $2D
- D - I - 0x015338 11:B328: 5F        .byte $5F
- D - I - 0x015339 11:B329: FA        .byte con_jsr
- D - I - 0x01533A 11:B32A: 03 BC     .word off_BC03
- D - I - 0x01533C 11:B32C: FB        .byte con_jmp
- D - I - 0x01533D 11:B32D: 2C BC     .word off_BC2C



off_B32F:
- D - I - 0x01533F 11:B32F: 16        .byte $16
- D - I - 0x015340 11:B330: 17        .byte $17
- D - I - 0x015341 11:B331: 2D        .byte $2D
- D - I - 0x015342 11:B332: 5F        .byte $5F
- D - I - 0x015343 11:B333: FA        .byte con_jsr
- D - I - 0x015344 11:B334: 1A BC     .word off_BC1A
- D - I - 0x015346 11:B336: FB        .byte con_jmp
- D - I - 0x015347 11:B337: 2C BC     .word off_BC2C



off_B339:
- D - I - 0x015349 11:B339: 16        .byte $16
- D - I - 0x01534A 11:B33A: 17        .byte $17
- D - I - 0x01534B 11:B33B: 2D        .byte $2D
- D - I - 0x01534C 11:B33C: 5F        .byte $5F
- D - I - 0x01534D 11:B33D: FA        .byte con_jsr
- D - I - 0x01534E 11:B33E: D4 BB     .word off_BBD4
- D - I - 0x015350 11:B340: FB        .byte con_jmp
- D - I - 0x015351 11:B341: 3D BC     .word off_BC3D



off_B343:
- D - I - 0x015353 11:B343: 16        .byte $16
- D - I - 0x015354 11:B344: 17        .byte $17
- D - I - 0x015355 11:B345: 2D        .byte $2D
- D - I - 0x015356 11:B346: 5F        .byte $5F
- D - I - 0x015357 11:B347: FA        .byte con_jsr
- D - I - 0x015358 11:B348: E8 BB     .word off_BBE8
- D - I - 0x01535A 11:B34A: FB        .byte con_jmp
- D - I - 0x01535B 11:B34B: 3D BC     .word off_BC3D



off_B34D:
- D - I - 0x01535D 11:B34D: 70        .byte $70
- D - I - 0x01535E 11:B34E: 71        .byte $71
- D - I - 0x01535F 11:B34F: 72        .byte $72
- D - I - 0x015360 11:B350: 73        .byte $73
- D - I - 0x015361 11:B351: BF        .byte $BF
- D - I - 0x015362 11:B352: 3A        .byte $3A
- D - I - 0x015363 11:B353: E0        .byte $E0
- D - I - 0x015364 11:B354: 3E        .byte $3E
- D - I - 0x015365 11:B355: E2        .byte $E2
- D - I - 0x015366 11:B356: 02        .byte $02
- D - I - 0x015367 11:B357: E8        .byte $E8
- D - I - 0x015368 11:B358: 06        .byte $06
- D - I - 0x015369 11:B359: EA        .byte $EA
- D - I - 0x01536A 11:B35A: 0A        .byte $0A
- D - I - 0x01536B 11:B35B: E5        .byte $E5
- D - I - 0x01536C 11:B35C: 0E        .byte $0E
- D - I - 0x01536D 11:B35D: E7        .byte $E7
- D - I - 0x01536E 11:B35E: A0        .byte $A0
- D - I - 0x01536F 11:B35F: 3A        .byte $3A
- D - I - 0x015370 11:B360: E1        .byte $E1
- D - I - 0x015371 11:B361: 3E        .byte $3E
- D - I - 0x015372 11:B362: E3        .byte $E3
- D - I - 0x015373 11:B363: 02        .byte $02
- D - I - 0x015374 11:B364: E9        .byte $E9
- D - I - 0x015375 11:B365: 06        .byte $06
- D - I - 0x015376 11:B366: EB        .byte $EB
- D - I - 0x015377 11:B367: 0A        .byte $0A
- D - I - 0x015378 11:B368: F0        .byte $F0
- D - I - 0x015379 11:B369: 0E        .byte $0E
- D - I - 0x01537A 11:B36A: F2        .byte $F2
- D - I - 0x01537B 11:B36B: A1        .byte $A1
- D - I - 0x01537C 11:B36C: 3A        .byte $3A
- D - I - 0x01537D 11:B36D: E4        .byte $E4
- D - I - 0x01537E 11:B36E: 3E        .byte $3E
- D - I - 0x01537F 11:B36F: E6        .byte $E6
- D - I - 0x015380 11:B370: 02        .byte $02
- D - I - 0x015381 11:B371: EC        .byte $EC
- D - I - 0x015382 11:B372: 06        .byte $06
- D - I - 0x015383 11:B373: EE        .byte $EE
- D - I - 0x015384 11:B374: 0A        .byte $0A
- D - I - 0x015385 11:B375: F1        .byte $F1
- D - I - 0x015386 11:B376: 0E        .byte $0E
- D - I - 0x015387 11:B377: F3        .byte $F3
- D - I - 0x015388 11:B378: A2        .byte $A2
- D - I - 0x015389 11:B379: 0E        .byte $0E
- D - I - 0x01538A 11:B37A: DD        .byte $DD
- D - I - 0x01538B 11:B37B: FF        .byte $FF



off_B37C:
- D - I - 0x01538C 11:B37C: 16        .byte $16
- D - I - 0x01538D 11:B37D: 17        .byte $17
- D - I - 0x01538E 11:B37E: 2D        .byte $2D
- D - I - 0x01538F 11:B37F: 5F        .byte $5F
- D - I - 0x015390 11:B380: FA        .byte con_jsr
- D - I - 0x015391 11:B381: 1A BC     .word off_BC1A
- D - I - 0x015393 11:B383: FB        .byte con_jmp
- D - I - 0x015394 11:B384: 3D BC     .word off_BC3D
- - - - - 0x015396 11:B386: 06        .byte $06
- - - - - 0x015397 11:B387: 07        .byte $07
- - - - - 0x015398 11:B388: 5E        .byte $5E
- - - - - 0x015399 11:B389: 5F        .byte $5F
- - - - - 0x01539A 11:B38A: BF        .byte $BF
- - - - - 0x01539B 11:B38B: 38        .byte $38
- - - - - 0x01539C 11:B38C: 42        .byte $42
- - - - - 0x01539D 11:B38D: A0        .byte $A0
- - - - - 0x01539E 11:B38E: 38        .byte $38
- - - - - 0x01539F 11:B38F: 43        .byte $43
- - - - - 0x0153A0 11:B390: 9F        .byte $9F
- - - - - 0x0153A1 11:B391: CC        .byte $CC
- - - - - 0x0153A2 11:B392: 00        .byte $00
- - - - - 0x0153A3 11:B393: 44        .byte $44
- - - - - 0x0153A4 11:B394: C4        .byte $C4
- - - - - 0x0153A5 11:B395: 00        .byte $00
- - - - - 0x0153A6 11:B396: 45        .byte $45
- - - - - 0x0153A7 11:B397: 01        .byte $01
- - - - - 0x0153A8 11:B398: 47        .byte $47
- - - - - 0x0153A9 11:B399: 05        .byte $05
- - - - - 0x0153AA 11:B39A: 51        .byte $51
- - - - - 0x0153AB 11:B39B: 09        .byte $09
- - - - - 0x0153AC 11:B39C: 53        .byte $53
- - - - - 0x0153AD 11:B39D: A1        .byte $A1
- - - - - 0x0153AE 11:B39E: 38        .byte $38
- - - - - 0x0153AF 11:B39F: 41        .byte $41
- - - - - 0x0153B0 11:B3A0: 3D        .byte $3D
- - - - - 0x0153B1 11:B3A1: 50        .byte $50
- - - - - 0x0153B2 11:B3A2: 00        .byte $00
- - - - - 0x0153B3 11:B3A3: 46        .byte $46
- - - - - 0x0153B4 11:B3A4: 01        .byte $01
- - - - - 0x0153B5 11:B3A5: 52        .byte $52
- - - - - 0x0153B6 11:B3A6: 05        .byte $05
- - - - - 0x0153B7 11:B3A7: 54        .byte $54
- - - - - 0x0153B8 11:B3A8: 09        .byte $09
- - - - - 0x0153B9 11:B3A9: 56        .byte $56
- - - - - 0x0153BA 11:B3AA: FF        .byte $FF



off_B3AB:
- D - I - 0x0153BB 11:B3AB: 10        .byte $10
- D - I - 0x0153BC 11:B3AC: 11        .byte $11
- D - I - 0x0153BD 11:B3AD: 12        .byte $12
- D - I - 0x0153BE 11:B3AE: 5F        .byte $5F
- D - I - 0x0153BF 11:B3AF: BF        .byte $BF
- D - I - 0x0153C0 11:B3B0: 1B        .byte $1B
- D - I - 0x0153C1 11:B3B1: 7C        .byte $7C
- D - I - 0x0153C2 11:B3B2: 1F        .byte $1F
- D - I - 0x0153C3 11:B3B3: 7E        .byte $7E
- D - I - 0x0153C4 11:B3B4: A0        .byte $A0
- D - I - 0x0153C5 11:B3B5: 1B        .byte $1B
- D - I - 0x0153C6 11:B3B6: 7D        .byte $7D
- D - I - 0x0153C7 11:B3B7: 1F        .byte $1F
- D - I - 0x0153C8 11:B3B8: 7F        .byte $7F
- D - I - 0x0153C9 11:B3B9: FF        .byte $FF



off_B3BA:
- D - I - 0x0153CA 11:B3BA: 60        .byte $60
- D - I - 0x0153CB 11:B3BB: 61        .byte $61
- D - I - 0x0153CC 11:B3BC: 62        .byte $62
- D - I - 0x0153CD 11:B3BD: 63        .byte $63
- D - I - 0x0153CE 11:B3BE: BF        .byte $BF
- D - I - 0x0153CF 11:B3BF: 3A        .byte $3A
- D - I - 0x0153D0 11:B3C0: F9        .byte $F9
- D - I - 0x0153D1 11:B3C1: 3E        .byte $3E
- D - I - 0x0153D2 11:B3C2: FB        .byte $FB
- D - I - 0x0153D3 11:B3C3: 81        .byte $81
- D - I - 0x0153D4 11:B3C4: C0        .byte $C0
- D - I - 0x0153D5 11:B3C5: 38        .byte $38
- D - I - 0x0153D6 11:B3C6: EF        .byte $EF
- D - I - 0x0153D7 11:B3C7: C0        .byte $C0
- D - I - 0x0153D8 11:B3C8: 18        .byte $18
- D - I - 0x0153D9 11:B3C9: FA        .byte $FA
- D - I - 0x0153DA 11:B3CA: A0        .byte $A0
- D - I - 0x0153DB 11:B3CB: 36        .byte $36
- D - I - 0x0153DC 11:B3CC: 74        .byte $74
- D - I - 0x0153DD 11:B3CD: 3A        .byte $3A
- D - I - 0x0153DE 11:B3CE: 76        .byte $76
- D - I - 0x0153DF 11:B3CF: 3F        .byte $3F
- D - I - 0x0153E0 11:B3D0: 7C        .byte $7C
- D - I - 0x0153E1 11:B3D1: 02        .byte $02
- D - I - 0x0153E2 11:B3D2: 7E        .byte $7E
- D - I - 0x0153E3 11:B3D3: 07        .byte $07
- D - I - 0x0153E4 11:B3D4: 72        .byte $72
- D - I - 0x0153E5 11:B3D5: 0B        .byte $0B
- D - I - 0x0153E6 11:B3D6: 78        .byte $78
- D - I - 0x0153E7 11:B3D7: 0F        .byte $0F
- D - I - 0x0153E8 11:B3D8: 7A        .byte $7A
- D - I - 0x0153E9 11:B3D9: A1        .byte $A1
- D - I - 0x0153EA 11:B3DA: 36        .byte $36
- D - I - 0x0153EB 11:B3DB: 75        .byte $75
- D - I - 0x0153EC 11:B3DC: 3A        .byte $3A
- D - I - 0x0153ED 11:B3DD: 77        .byte $77
- D - I - 0x0153EE 11:B3DE: 3F        .byte $3F
- D - I - 0x0153EF 11:B3DF: 7D        .byte $7D
- D - I - 0x0153F0 11:B3E0: 00        .byte $00
- D - I - 0x0153F1 11:B3E1: 7F        .byte $7F
- D - I - 0x0153F2 11:B3E2: 07        .byte $07
- D - I - 0x0153F3 11:B3E3: 73        .byte $73
- D - I - 0x0153F4 11:B3E4: 0B        .byte $0B
- D - I - 0x0153F5 11:B3E5: 79        .byte $79
- D - I - 0x0153F6 11:B3E6: 0F        .byte $0F
- D - I - 0x0153F7 11:B3E7: 7B        .byte $7B
- D - I - 0x0153F8 11:B3E8: FF        .byte $FF



off_B3E9:
- D - I - 0x0153F9 11:B3E9: 6A        .byte $6A
- D - I - 0x0153FA 11:B3EA: 6B        .byte $6B
- D - I - 0x0153FB 11:B3EB: 7A        .byte $7A
- D - I - 0x0153FC 11:B3EC: 7B        .byte $7B
- D - I - 0x0153FD 11:B3ED: BD        .byte $BD
- D - I - 0x0153FE 11:B3EE: 02        .byte $02
- D - I - 0x0153FF 11:B3EF: F1        .byte $F1
- D - I - 0x015400 11:B3F0: 06        .byte $06
- D - I - 0x015401 11:B3F1: F3        .byte $F3
- D - I - 0x015402 11:B3F2: BE        .byte $BE
- D - I - 0x015403 11:B3F3: 02        .byte $02
- D - I - 0x015404 11:B3F4: F4        .byte $F4
- D - I - 0x015405 11:B3F5: 06        .byte $06
- D - I - 0x015406 11:B3F6: F6        .byte $F6
- D - I - 0x015407 11:B3F7: BF        .byte $BF
- D - I - 0x015408 11:B3F8: 3E        .byte $3E
- D - I - 0x015409 11:B3F9: DF        .byte $DF
- D - I - 0x01540A 11:B3FA: 02        .byte $02
- D - I - 0x01540B 11:B3FB: F5        .byte $F5
- D - I - 0x01540C 11:B3FC: 06        .byte $06
- D - I - 0x01540D 11:B3FD: F7        .byte $F7
- D - I - 0x01540E 11:B3FE: A0        .byte $A0
- D - I - 0x01540F 11:B3FF: 02        .byte $02
- D - I - 0x015410 11:B400: F8        .byte $F8
- D - I - 0x015411 11:B401: 06        .byte $06
- D - I - 0x015412 11:B402: FA        .byte $FA
- D - I - 0x015413 11:B403: A1        .byte $A1
- D - I - 0x015414 11:B404: 02        .byte $02
- D - I - 0x015415 11:B405: F9        .byte $F9
- D - I - 0x015416 11:B406: 06        .byte $06
- D - I - 0x015417 11:B407: FB        .byte $FB
- D - I - 0x015418 11:B408: A2        .byte $A2
- D - I - 0x015419 11:B409: 02        .byte $02
- D - I - 0x01541A 11:B40A: FC        .byte $FC
- D - I - 0x01541B 11:B40B: 06        .byte $06
- D - I - 0x01541C 11:B40C: FE        .byte $FE
- D - I - 0x01541D 11:B40D: FF        .byte $FF



off_B40E:
- D - I - 0x01541E 11:B40E: 6A        .byte $6A
- D - I - 0x01541F 11:B40F: 6B        .byte $6B
- D - I - 0x015420 11:B410: 7A        .byte $7A
- D - I - 0x015421 11:B411: 7B        .byte $7B
- D - I - 0x015422 11:B412: BF        .byte $BF
- D - I - 0x015423 11:B413: 03        .byte $03
- D - I - 0x015424 11:B414: 5C        .byte $5C
- D - I - 0x015425 11:B415: 03        .byte $03
- D - I - 0x015426 11:B416: 56        .byte $56
- D - I - 0x015427 11:B417: 07        .byte $07
- D - I - 0x015428 11:B418: 5E        .byte $5E
- D - I - 0x015429 11:B419: 07        .byte $07
- D - I - 0x01542A 11:B41A: 70        .byte $70
- D - I - 0x01542B 11:B41B: 0B        .byte $0B
- D - I - 0x01542C 11:B41C: 74        .byte $74
- D - I - 0x01542D 11:B41D: 0B        .byte $0B
- D - I - 0x01542E 11:B41E: 5A        .byte $5A
- D - I - 0x01542F 11:B41F: A0        .byte $A0
- D - I - 0x015430 11:B420: 03        .byte $03
- D - I - 0x015431 11:B421: 53        .byte $53
- D - I - 0x015432 11:B422: 07        .byte $07
- D - I - 0x015433 11:B423: 71        .byte $71
- D - I - 0x015434 11:B424: 0B        .byte $0B
- D - I - 0x015435 11:B425: 5B        .byte $5B
- D - I - 0x015436 11:B426: A1        .byte $A1
- D - I - 0x015437 11:B427: 43        .byte $43
- D - I - 0x015438 11:B428: 53        .byte $53
- D - I - 0x015439 11:B429: 47        .byte $47
- D - I - 0x01543A 11:B42A: 71        .byte $71
- D - I - 0x01543B 11:B42B: 4B        .byte $4B
- D - I - 0x01543C 11:B42C: 5B        .byte $5B
- D - I - 0x01543D 11:B42D: A2        .byte $A2
- D - I - 0x01543E 11:B42E: 43        .byte $43
- D - I - 0x01543F 11:B42F: 5C        .byte $5C
- D - I - 0x015440 11:B430: 43        .byte $43
- D - I - 0x015441 11:B431: 56        .byte $56
- D - I - 0x015442 11:B432: 47        .byte $47
- D - I - 0x015443 11:B433: 5E        .byte $5E
- D - I - 0x015444 11:B434: 47        .byte $47
- D - I - 0x015445 11:B435: 70        .byte $70
- D - I - 0x015446 11:B436: 4B        .byte $4B
- D - I - 0x015447 11:B437: 74        .byte $74
- D - I - 0x015448 11:B438: 4B        .byte $4B
- D - I - 0x015449 11:B439: 5A        .byte $5A
- D - I - 0x01544A 11:B43A: FB        .byte con_jmp
- D - I - 0x01544B 11:B43B: 90 BC     .word off_BC90



off_B43D:
- D - I - 0x01544D 11:B43D: 6C        .byte $6C
- D - I - 0x01544E 11:B43E: 6D        .byte $6D
- D - I - 0x01544F 11:B43F: 6E        .byte $6E
- D - I - 0x015450 11:B440: 6F        .byte $6F
- D - I - 0x015451 11:B441: BF        .byte $BF
- D - I - 0x015452 11:B442: 3C        .byte $3C
- D - I - 0x015453 11:B443: 02        .byte $02
- D - I - 0x015454 11:B444: 00        .byte $00
- D - I - 0x015455 11:B445: 03        .byte $03
- D - I - 0x015456 11:B446: 04        .byte $04
- D - I - 0x015457 11:B447: 02        .byte $02
- D - I - 0x015458 11:B448: A0        .byte $A0
- D - I - 0x015459 11:B449: 3C        .byte $3C
- D - I - 0x01545A 11:B44A: 02        .byte $02
- D - I - 0x01545B 11:B44B: 40        .byte $40
- D - I - 0x01545C 11:B44C: FD        .byte $FD
- D - I - 0x01545D 11:B44D: 04        .byte $04
- D - I - 0x01545E 11:B44E: 02        .byte $02
- D - I - 0x01545F 11:B44F: A1        .byte $A1
- D - I - 0x015460 11:B450: 3C        .byte $3C
- D - I - 0x015461 11:B451: 02        .byte $02
- D - I - 0x015462 11:B452: 00        .byte $00
- D - I - 0x015463 11:B453: FD        .byte $FD
- D - I - 0x015464 11:B454: 04        .byte $04
- D - I - 0x015465 11:B455: 02        .byte $02
- D - I - 0x015466 11:B456: A2        .byte $A2
- D - I - 0x015467 11:B457: 3C        .byte $3C
- D - I - 0x015468 11:B458: 02        .byte $02
- D - I - 0x015469 11:B459: 00        .byte $00
- D - I - 0x01546A 11:B45A: 03        .byte $03
- D - I - 0x01546B 11:B45B: 04        .byte $04
- D - I - 0x01546C 11:B45C: 02        .byte $02
- D - I - 0x01546D 11:B45D: FF        .byte $FF



off_B45E:
- D - I - 0x01546E 11:B45E: 74        .byte $74
- D - I - 0x01546F 11:B45F: 75        .byte $75
- D - I - 0x015470 11:B460: 7B        .byte $7B
- D - I - 0x015471 11:B461: 67        .byte $67
- D - I - 0x015472 11:B462: BF        .byte $BF
- D - I - 0x015473 11:B463: 3E        .byte $3E
- D - I - 0x015474 11:B464: E0        .byte $E0
- D - I - 0x015475 11:B465: 02        .byte $02
- D - I - 0x015476 11:B466: E2        .byte $E2
- D - I - 0x015477 11:B467: 06        .byte $06
- D - I - 0x015478 11:B468: E8        .byte $E8
- D - I - 0x015479 11:B469: 0A        .byte $0A
- D - I - 0x01547A 11:B46A: EA        .byte $EA
- D - I - 0x01547B 11:B46B: A0        .byte $A0
- D - I - 0x01547C 11:B46C: 3E        .byte $3E
- D - I - 0x01547D 11:B46D: E1        .byte $E1
- D - I - 0x01547E 11:B46E: 02        .byte $02
- D - I - 0x01547F 11:B46F: E3        .byte $E3
- D - I - 0x015480 11:B470: 06        .byte $06
- D - I - 0x015481 11:B471: E9        .byte $E9
- D - I - 0x015482 11:B472: 0A        .byte $0A
- D - I - 0x015483 11:B473: EB        .byte $EB
- D - I - 0x015484 11:B474: A1        .byte $A1
- D - I - 0x015485 11:B475: 3E        .byte $3E
- D - I - 0x015486 11:B476: E4        .byte $E4
- D - I - 0x015487 11:B477: 02        .byte $02
- D - I - 0x015488 11:B478: E6        .byte $E6
- D - I - 0x015489 11:B479: 06        .byte $06
- D - I - 0x01548A 11:B47A: EC        .byte $EC
- D - I - 0x01548B 11:B47B: 0A        .byte $0A
- D - I - 0x01548C 11:B47C: EE        .byte $EE
- D - I - 0x01548D 11:B47D: A2        .byte $A2
- D - I - 0x01548E 11:B47E: 3E        .byte $3E
- D - I - 0x01548F 11:B47F: E5        .byte $E5
- D - I - 0x015490 11:B480: 02        .byte $02
- D - I - 0x015491 11:B481: E7        .byte $E7
- D - I - 0x015492 11:B482: 06        .byte $06
- D - I - 0x015493 11:B483: ED        .byte $ED
- D - I - 0x015494 11:B484: 0A        .byte $0A
- D - I - 0x015495 11:B485: EF        .byte $EF
- D - I - 0x015496 11:B486: FF        .byte $FF



off_B487:
- D - I - 0x015497 11:B487: 74        .byte $74
- D - I - 0x015498 11:B488: 75        .byte $75
- D - I - 0x015499 11:B489: 7B        .byte $7B
- D - I - 0x01549A 11:B48A: 67        .byte $67
- D - I - 0x01549B 11:B48B: BF        .byte $BF
- D - I - 0x01549C 11:B48C: 81        .byte $81
- D - I - 0x01549D 11:B48D: C4        .byte $C4
- D - I - 0x01549E 11:B48E: 01        .byte $01
- D - I - 0x01549F 11:B48F: AE        .byte $AE
- D - I - 0x0154A0 11:B490: 09        .byte $09
- D - I - 0x0154A1 11:B491: AF        .byte $AF
- D - I - 0x0154A2 11:B492: A0        .byte $A0
- D - I - 0x0154A3 11:B493: 39        .byte $39
- D - I - 0x0154A4 11:B494: A4        .byte $A4
- D - I - 0x0154A5 11:B495: 3D        .byte $3D
- D - I - 0x0154A6 11:B496: A6        .byte $A6
- D - I - 0x0154A7 11:B497: 03        .byte $03
- D - I - 0x0154A8 11:B498: AC        .byte $AC
- D - I - 0x0154A9 11:B499: A1        .byte $A1
- D - I - 0x0154AA 11:B49A: 3D        .byte $3D
- D - I - 0x0154AB 11:B49B: A7        .byte $A7
- D - I - 0x0154AC 11:B49C: 03        .byte $03
- D - I - 0x0154AD 11:B49D: AD        .byte $AD
- D - I - 0x0154AE 11:B49E: 05        .byte $05
- D - I - 0x0154AF 11:B49F: A5        .byte $A5
- D - I - 0x0154B0 11:B4A0: A2        .byte $A2
- D - I - 0x0154B1 11:B4A1: 05        .byte $05
- D - I - 0x0154B2 11:B4A2: B0        .byte $B0
- D - I - 0x0154B3 11:B4A3: 09        .byte $09
- D - I - 0x0154B4 11:B4A4: B2        .byte $B2
- D - I - 0x0154B5 11:B4A5: FF        .byte $FF



off_B4A6:
- D - I - 0x0154B6 11:B4A6: 70        .byte $70
- D - I - 0x0154B7 11:B4A7: 71        .byte $71
- D - I - 0x0154B8 11:B4A8: 72        .byte $72
- D - I - 0x0154B9 11:B4A9: 73        .byte $73
- D - I - 0x0154BA 11:B4AA: BC        .byte $BC
- D - I - 0x0154BB 11:B4AB: 3F        .byte $3F
- D - I - 0x0154BC 11:B4AC: 40        .byte $40
- D - I - 0x0154BD 11:B4AD: BD        .byte $BD
- D - I - 0x0154BE 11:B4AE: 3F        .byte $3F
- D - I - 0x0154BF 11:B4AF: 41        .byte $41
- D - I - 0x0154C0 11:B4B0: 03        .byte $03
- D - I - 0x0154C1 11:B4B1: 43        .byte $43
- D - I - 0x0154C2 11:B4B2: BE        .byte $BE
- D - I - 0x0154C3 11:B4B3: 3F        .byte $3F
- D - I - 0x0154C4 11:B4B4: 44        .byte $44
- D - I - 0x0154C5 11:B4B5: 03        .byte $03
- D - I - 0x0154C6 11:B4B6: 46        .byte $46
- D - I - 0x0154C7 11:B4B7: BF        .byte $BF
- D - I - 0x0154C8 11:B4B8: 3F        .byte $3F
- D - I - 0x0154C9 11:B4B9: 45        .byte $45
- D - I - 0x0154CA 11:B4BA: 03        .byte $03
- D - I - 0x0154CB 11:B4BB: 47        .byte $47
- D - I - 0x0154CC 11:B4BC: A0        .byte $A0
- D - I - 0x0154CD 11:B4BD: 3F        .byte $3F
- D - I - 0x0154CE 11:B4BE: 48        .byte $48
- D - I - 0x0154CF 11:B4BF: 03        .byte $03
- D - I - 0x0154D0 11:B4C0: 4A        .byte $4A
- D - I - 0x0154D1 11:B4C1: 07        .byte $07
- D - I - 0x0154D2 11:B4C2: 70        .byte $70
- D - I - 0x0154D3 11:B4C3: A1        .byte $A1
- D - I - 0x0154D4 11:B4C4: 3F        .byte $3F
- D - I - 0x0154D5 11:B4C5: 49        .byte $49
- D - I - 0x0154D6 11:B4C6: 03        .byte $03
- D - I - 0x0154D7 11:B4C7: 4B        .byte $4B
- D - I - 0x0154D8 11:B4C8: 07        .byte $07
- D - I - 0x0154D9 11:B4C9: 71        .byte $71
- D - I - 0x0154DA 11:B4CA: A2        .byte $A2
- D - I - 0x0154DB 11:B4CB: 3F        .byte $3F
- D - I - 0x0154DC 11:B4CC: 4C        .byte $4C
- D - I - 0x0154DD 11:B4CD: 03        .byte $03
- D - I - 0x0154DE 11:B4CE: 4E        .byte $4E
- D - I - 0x0154DF 11:B4CF: 07        .byte $07
- D - I - 0x0154E0 11:B4D0: 74        .byte $74
- D - I - 0x0154E1 11:B4D1: A3        .byte $A3
- D - I - 0x0154E2 11:B4D2: 3B        .byte $3B
- D - I - 0x0154E3 11:B4D3: 72        .byte $72
- D - I - 0x0154E4 11:B4D4: 3F        .byte $3F
- D - I - 0x0154E5 11:B4D5: 4D        .byte $4D
- D - I - 0x0154E6 11:B4D6: 03        .byte $03
- D - I - 0x0154E7 11:B4D7: 4F        .byte $4F
- D - I - 0x0154E8 11:B4D8: 07        .byte $07
- D - I - 0x0154E9 11:B4D9: 75        .byte $75
- D - I - 0x0154EA 11:B4DA: 0B        .byte $0B
- D - I - 0x0154EB 11:B4DB: 76        .byte $76
- D - I - 0x0154EC 11:B4DC: A4        .byte $A4
- D - I - 0x0154ED 11:B4DD: 3B        .byte $3B
- D - I - 0x0154EE 11:B4DE: 73        .byte $73
- D - I - 0x0154EF 11:B4DF: 03        .byte $03
- D - I - 0x0154F0 11:B4E0: 42        .byte $42
- D - I - 0x0154F1 11:B4E1: 07        .byte $07
- D - I - 0x0154F2 11:B4E2: 14        .byte $14
- D - I - 0x0154F3 11:B4E3: 0B        .byte $0B
- D - I - 0x0154F4 11:B4E4: 77        .byte $77
- D - I - 0x0154F5 11:B4E5: FF        .byte $FF



off_B4E6:
- D - I - 0x0154F6 11:B4E6: 74        .byte $74
- D - I - 0x0154F7 11:B4E7: 75        .byte $75
- D - I - 0x0154F8 11:B4E8: 76        .byte $76
- D - I - 0x0154F9 11:B4E9: 77        .byte $77
- D - I - 0x0154FA 11:B4EA: A0        .byte $A0
- D - I - 0x0154FB 11:B4EB: 30        .byte $30
- D - I - 0x0154FC 11:B4EC: 01        .byte $01
- D - I - 0x0154FD 11:B4ED: 34        .byte $34
- D - I - 0x0154FE 11:B4EE: 01        .byte $01
- D - I - 0x0154FF 11:B4EF: 38        .byte $38
- D - I - 0x015500 11:B4F0: 01        .byte $01
- D - I - 0x015501 11:B4F1: 3C        .byte $3C
- D - I - 0x015502 11:B4F2: 01        .byte $01
- D - I - 0x015503 11:B4F3: 00        .byte $00
- D - I - 0x015504 11:B4F4: 01        .byte $01
- D - I - 0x015505 11:B4F5: 04        .byte $04
- D - I - 0x015506 11:B4F6: 01        .byte $01
- D - I - 0x015507 11:B4F7: FF        .byte $FF



off_B4F8:
- D - I - 0x015508 11:B4F8: 74        .byte $74
- D - I - 0x015509 11:B4F9: 75        .byte $75
- D - I - 0x01550A 11:B4FA: 7B        .byte $7B
- D - I - 0x01550B 11:B4FB: 67        .byte $67
- D - I - 0x01550C 11:B4FC: BE        .byte $BE
- D - I - 0x01550D 11:B4FD: 3C        .byte $3C
- D - I - 0x01550E 11:B4FE: 2D        .byte $2D
- D - I - 0x01550F 11:B4FF: 0F        .byte $0F
- D - I - 0x015510 11:B500: 3E        .byte $3E
- D - I - 0x015511 11:B501: BF        .byte $BF
- D - I - 0x015512 11:B502: 35        .byte $35
- D - I - 0x015513 11:B503: 30        .byte $30
- D - I - 0x015514 11:B504: 3B        .byte $3B
- D - I - 0x015515 11:B505: 32        .byte $32
- D - I - 0x015516 11:B506: 3A        .byte $3A
- D - I - 0x015517 11:B507: 44        .byte $44
- D - I - 0x015518 11:B508: 3C        .byte $3C
- D - I - 0x015519 11:B509: 38        .byte $38
- D - I - 0x01551A 11:B50A: 00        .byte $00
- D - I - 0x01551B 11:B50B: 3A        .byte $3A
- D - I - 0x01551C 11:B50C: 05        .byte $05
- D - I - 0x01551D 11:B50D: 34        .byte $34
- D - I - 0x01551E 11:B50E: 09        .byte $09
- D - I - 0x01551F 11:B50F: 36        .byte $36
- D - I - 0x015520 11:B510: 0F        .byte $0F
- D - I - 0x015521 11:B511: 3F        .byte $3F
- D - I - 0x015522 11:B512: 0D        .byte $0D
- D - I - 0x015523 11:B513: 45        .byte $45
- D - I - 0x015524 11:B514: A0        .byte $A0
- D - I - 0x015525 11:B515: 9C        .byte $9C
- D - I - 0x015526 11:B516: CA        .byte $CA
- D - I - 0x015527 11:B517: 03        .byte $03
- D - I - 0x015528 11:B518: 2E        .byte $2E
- D - I - 0x015529 11:B519: C2        .byte $C2
- D - I - 0x01552A 11:B51A: 03        .byte $03
- D - I - 0x01552B 11:B51B: 2F        .byte $2F
- D - I - 0x01552C 11:B51C: 37        .byte $37
- D - I - 0x01552D 11:B51D: 31        .byte $31
- D - I - 0x01552E 11:B51E: 35        .byte $35
- D - I - 0x01552F 11:B51F: 46        .byte $46
- D - I - 0x015530 11:B520: 39        .byte $39
- D - I - 0x015531 11:B521: 33        .byte $33
- D - I - 0x015532 11:B522: 3B        .byte $3B
- D - I - 0x015533 11:B523: 02        .byte $02
- D - I - 0x015534 11:B524: 3C        .byte $3C
- D - I - 0x015535 11:B525: 39        .byte $39
- D - I - 0x015536 11:B526: 00        .byte $00
- D - I - 0x015537 11:B527: 3B        .byte $3B
- D - I - 0x015538 11:B528: 05        .byte $05
- D - I - 0x015539 11:B529: 35        .byte $35
- D - I - 0x01553A 11:B52A: A1        .byte $A1
- D - I - 0x01553B 11:B52B: 35        .byte $35
- D - I - 0x01553C 11:B52C: 40        .byte $40
- D - I - 0x01553D 11:B52D: 3A        .byte $3A
- D - I - 0x01553E 11:B52E: 42        .byte $42
- D - I - 0x01553F 11:B52F: 3C        .byte $3C
- D - I - 0x015540 11:B530: 41        .byte $41
- D - I - 0x015541 11:B531: 00        .byte $00
- D - I - 0x015542 11:B532: 43        .byte $43
- D - I - 0x015543 11:B533: 05        .byte $05
- D - I - 0x015544 11:B534: 37        .byte $37
- D - I - 0x015545 11:B535: 82        .byte $82
- D - I - 0x015546 11:B536: CF        .byte $CF
- D - I - 0x015547 11:B537: 01        .byte $01
- D - I - 0x015548 11:B538: 3D        .byte $3D
- D - I - 0x015549 11:B539: 0F        .byte $0F
- D - I - 0x01554A 11:B53A: 3C        .byte $3C
- D - I - 0x01554B 11:B53B: C1        .byte $C1
- D - I - 0x01554C 11:B53C: 01        .byte $01
- D - I - 0x01554D 11:B53D: 45        .byte $45
- D - I - 0x01554E 11:B53E: A0        .byte $A0
- D - I - 0x01554F 11:B53F: 9F        .byte $9F
- D - I - 0x015550 11:B540: CC        .byte $CC
- D - I - 0x015551 11:B541: 03        .byte $03
- D - I - 0x015552 11:B542: 02        .byte $02
- D - I - 0x015553 11:B543: C4        .byte $C4
- D - I - 0x015554 11:B544: 03        .byte $03
- D - I - 0x015555 11:B545: 02        .byte $02
- D - I - 0x015556 11:B546: FF        .byte $FF



off_B547:
- D - I - 0x015557 11:B547: 60        .byte $60
- D - I - 0x015558 11:B548: 61        .byte $61
- D - I - 0x015559 11:B549: 62        .byte $62
- D - I - 0x01555A 11:B54A: 63        .byte $63
- D - I - 0x01555B 11:B54B: B9        .byte $B9
- D - I - 0x01555C 11:B54C: 3D        .byte $3D
- D - I - 0x01555D 11:B54D: 1A        .byte $1A
- D - I - 0x01555E 11:B54E: BA        .byte $BA
- D - I - 0x01555F 11:B54F: 3D        .byte $3D
- D - I - 0x015560 11:B550: 1B        .byte $1B
- D - I - 0x015561 11:B551: 01        .byte $01
- D - I - 0x015562 11:B552: 30        .byte $30
- D - I - 0x015563 11:B553: 05        .byte $05
- D - I - 0x015564 11:B554: 32        .byte $32
- D - I - 0x015565 11:B555: BB        .byte $BB
- D - I - 0x015566 11:B556: 3D        .byte $3D
- D - I - 0x015567 11:B557: 1E        .byte $1E
- D - I - 0x015568 11:B558: 01        .byte $01
- D - I - 0x015569 11:B559: 31        .byte $31
- D - I - 0x01556A 11:B55A: 05        .byte $05
- D - I - 0x01556B 11:B55B: 33        .byte $33
- D - I - 0x01556C 11:B55C: BC        .byte $BC
- D - I - 0x01556D 11:B55D: 3D        .byte $3D
- D - I - 0x01556E 11:B55E: 1F        .byte $1F
- D - I - 0x01556F 11:B55F: 05        .byte $05
- D - I - 0x015570 11:B560: 36        .byte $36
- D - I - 0x015571 11:B561: A0        .byte $A0
- D - I - 0x015572 11:B562: 3D        .byte $3D
- D - I - 0x015573 11:B563: 18        .byte $18
- D - I - 0x015574 11:B564: 01        .byte $01
- D - I - 0x015575 11:B565: 34        .byte $34
- D - I - 0x015576 11:B566: A1        .byte $A1
- D - I - 0x015577 11:B567: 3D        .byte $3D
- D - I - 0x015578 11:B568: 19        .byte $19
- D - I - 0x015579 11:B569: 01        .byte $01
- D - I - 0x01557A 11:B56A: 35        .byte $35
- D - I - 0x01557B 11:B56B: 05        .byte $05
- D - I - 0x01557C 11:B56C: 2B        .byte $2B
- D - I - 0x01557D 11:B56D: A2        .byte $A2
- D - I - 0x01557E 11:B56E: 3D        .byte $3D
- D - I - 0x01557F 11:B56F: 1C        .byte $1C
- D - I - 0x015580 11:B570: 01        .byte $01
- D - I - 0x015581 11:B571: 37        .byte $37
- D - I - 0x015582 11:B572: 05        .byte $05
- D - I - 0x015583 11:B573: 2E        .byte $2E
- D - I - 0x015584 11:B574: A3        .byte $A3
- D - I - 0x015585 11:B575: 3D        .byte $3D
- D - I - 0x015586 11:B576: 1D        .byte $1D
- D - I - 0x015587 11:B577: 01        .byte $01
- D - I - 0x015588 11:B578: 22        .byte $22
- D - I - 0x015589 11:B579: 05        .byte $05
- D - I - 0x01558A 11:B57A: 2F        .byte $2F
- D - I - 0x01558B 11:B57B: FF        .byte $FF



off_B57C:
- D - I - 0x01558C 11:B57C: 60        .byte $60
- D - I - 0x01558D 11:B57D: 61        .byte $61
- D - I - 0x01558E 11:B57E: 62        .byte $62
- D - I - 0x01558F 11:B57F: 63        .byte $63
- D - I - 0x015590 11:B580: B9        .byte $B9
- D - I - 0x015591 11:B581: 01        .byte $01
- D - I - 0x015592 11:B582: 20        .byte $20
- D - I - 0x015593 11:B583: BA        .byte $BA
- D - I - 0x015594 11:B584: 01        .byte $01
- D - I - 0x015595 11:B585: 21        .byte $21
- D - I - 0x015596 11:B586: 05        .byte $05
- D - I - 0x015597 11:B587: 23        .byte $23
- D - I - 0x015598 11:B588: BB        .byte $BB
- D - I - 0x015599 11:B589: 01        .byte $01
- D - I - 0x01559A 11:B58A: 24        .byte $24
- D - I - 0x01559B 11:B58B: 05        .byte $05
- D - I - 0x01559C 11:B58C: 26        .byte $26
- D - I - 0x01559D 11:B58D: BC        .byte $BC
- D - I - 0x01559E 11:B58E: 01        .byte $01
- D - I - 0x01559F 11:B58F: 25        .byte $25
- D - I - 0x0155A0 11:B590: 05        .byte $05
- D - I - 0x0155A1 11:B591: 36        .byte $36
- D - I - 0x0155A2 11:B592: BF        .byte $BF
- D - I - 0x0155A3 11:B593: 01        .byte $01
- D - I - 0x0155A4 11:B594: 28        .byte $28
- D - I - 0x0155A5 11:B595: A0        .byte $A0
- D - I - 0x0155A6 11:B596: 01        .byte $01
- D - I - 0x0155A7 11:B597: 29        .byte $29
- D - I - 0x0155A8 11:B598: A1        .byte $A1
- D - I - 0x0155A9 11:B599: 3D        .byte $3D
- D - I - 0x0155AA 11:B59A: 2A        .byte $2A
- D - I - 0x0155AB 11:B59B: 01        .byte $01
- D - I - 0x0155AC 11:B59C: 2C        .byte $2C
- D - I - 0x0155AD 11:B59D: 05        .byte $05
- D - I - 0x0155AE 11:B59E: 2B        .byte $2B
- D - I - 0x0155AF 11:B59F: A2        .byte $A2
- D - I - 0x0155B0 11:B5A0: 3D        .byte $3D
- D - I - 0x0155B1 11:B5A1: 14        .byte $14
- D - I - 0x0155B2 11:B5A2: 01        .byte $01
- D - I - 0x0155B3 11:B5A3: 2D        .byte $2D
- D - I - 0x0155B4 11:B5A4: 05        .byte $05
- D - I - 0x0155B5 11:B5A5: 2E        .byte $2E
- D - I - 0x0155B6 11:B5A6: A3        .byte $A3
- D - I - 0x0155B7 11:B5A7: 3D        .byte $3D
- D - I - 0x0155B8 11:B5A8: 15        .byte $15
- D - I - 0x0155B9 11:B5A9: 05        .byte $05
- D - I - 0x0155BA 11:B5AA: 2F        .byte $2F
- D - I - 0x0155BB 11:B5AB: FF        .byte $FF



off_B5AC:
- D - I - 0x0155BC 11:B5AC: 60        .byte $60
- D - I - 0x0155BD 11:B5AD: 61        .byte $61
- D - I - 0x0155BE 11:B5AE: 62        .byte $62
- D - I - 0x0155BF 11:B5AF: 63        .byte $63
- D - I - 0x0155C0 11:B5B0: BE        .byte $BE
- D - I - 0x0155C1 11:B5B1: 04        .byte $04
- D - I - 0x0155C2 11:B5B2: 08        .byte $08
- D - I - 0x0155C3 11:B5B3: 08        .byte $08
- D - I - 0x0155C4 11:B5B4: 0A        .byte $0A
- D - I - 0x0155C5 11:B5B5: BF        .byte $BF
- D - I - 0x0155C6 11:B5B6: 00        .byte $00
- D - I - 0x0155C7 11:B5B7: 27        .byte $27
- D - I - 0x0155C8 11:B5B8: 04        .byte $04
- D - I - 0x0155C9 11:B5B9: 09        .byte $09
- D - I - 0x0155CA 11:B5BA: 08        .byte $08
- D - I - 0x0155CB 11:B5BB: 0B        .byte $0B
- D - I - 0x0155CC 11:B5BC: A0        .byte $A0
- D - I - 0x0155CD 11:B5BD: 3C        .byte $3C
- D - I - 0x0155CE 11:B5BE: 04        .byte $04
- D - I - 0x0155CF 11:B5BF: 00        .byte $00
- D - I - 0x0155D0 11:B5C0: 06        .byte $06
- D - I - 0x0155D1 11:B5C1: 04        .byte $04
- D - I - 0x0155D2 11:B5C2: 0C        .byte $0C
- D - I - 0x0155D3 11:B5C3: 08        .byte $08
- D - I - 0x0155D4 11:B5C4: 0E        .byte $0E
- D - I - 0x0155D5 11:B5C5: A1        .byte $A1
- D - I - 0x0155D6 11:B5C6: 38        .byte $38
- D - I - 0x0155D7 11:B5C7: 16        .byte $16
- D - I - 0x0155D8 11:B5C8: 3C        .byte $3C
- D - I - 0x0155D9 11:B5C9: 05        .byte $05
- D - I - 0x0155DA 11:B5CA: 00        .byte $00
- D - I - 0x0155DB 11:B5CB: 07        .byte $07
- D - I - 0x0155DC 11:B5CC: 04        .byte $04
- D - I - 0x0155DD 11:B5CD: 0D        .byte $0D
- D - I - 0x0155DE 11:B5CE: 08        .byte $08
- D - I - 0x0155DF 11:B5CF: 0F        .byte $0F
- D - I - 0x0155E0 11:B5D0: A2        .byte $A2
- D - I - 0x0155E1 11:B5D1: 38        .byte $38
- D - I - 0x0155E2 11:B5D2: 17        .byte $17
- D - I - 0x0155E3 11:B5D3: 3C        .byte $3C
- D - I - 0x0155E4 11:B5D4: 10        .byte $10
- D - I - 0x0155E5 11:B5D5: 00        .byte $00
- D - I - 0x0155E6 11:B5D6: 12        .byte $12
- D - I - 0x0155E7 11:B5D7: 04        .byte $04
- D - I - 0x0155E8 11:B5D8: 11        .byte $11
- D - I - 0x0155E9 11:B5D9: 08        .byte $08
- D - I - 0x0155EA 11:B5DA: 13        .byte $13
- D - I - 0x0155EB 11:B5DB: FF        .byte $FF



off_B5DC:
- D - I - 0x0155EC 11:B5DC: 36        .byte $36
- D - I - 0x0155ED 11:B5DD: 37        .byte $37
- D - I - 0x0155EE 11:B5DE: 5E        .byte $5E
- D - I - 0x0155EF 11:B5DF: 5F        .byte $5F
- D - I - 0x0155F0 11:B5E0: FB        .byte con_jmp
- D - I - 0x0155F1 11:B5E1: 4E BC     .word off_BC4E



off_B5E3:
- D - I - 0x0155F3 11:B5E3: 36        .byte $36
- D - I - 0x0155F4 11:B5E4: 37        .byte $37
- D - I - 0x0155F5 11:B5E5: 5E        .byte $5E
- D - I - 0x0155F6 11:B5E6: 5F        .byte $5F
- D - I - 0x0155F7 11:B5E7: FB        .byte con_jmp
- D - I - 0x0155F8 11:B5E8: 5A BC     .word off_BC5A



off_B5EA:
- D - I - 0x0155FA 11:B5EA: 36        .byte $36
- D - I - 0x0155FB 11:B5EB: 37        .byte $37
- D - I - 0x0155FC 11:B5EC: 5E        .byte $5E
- D - I - 0x0155FD 11:B5ED: 5F        .byte $5F
- D - I - 0x0155FE 11:B5EE: FA        .byte con_jsr
- D - I - 0x0155FF 11:B5EF: 70 BC     .word off_BC70
- D - I - 0x015601 11:B5F1: FB        .byte con_jmp
- D - I - 0x015602 11:B5F2: 4E BC     .word off_BC4E



off_B5F4:
- D - I - 0x015604 11:B5F4: 36        .byte $36
- D - I - 0x015605 11:B5F5: 37        .byte $37
- D - I - 0x015606 11:B5F6: 5E        .byte $5E
- D - I - 0x015607 11:B5F7: 5F        .byte $5F
- D - I - 0x015608 11:B5F8: FA        .byte con_jsr
- D - I - 0x015609 11:B5F9: 70 BC     .word off_BC70
- D - I - 0x01560B 11:B5FB: FB        .byte con_jmp
- D - I - 0x01560C 11:B5FC: 5A BC     .word off_BC5A



off_B5FE:
- D - I - 0x01560E 11:B5FE: 36        .byte $36
- D - I - 0x01560F 11:B5FF: 37        .byte $37
- D - I - 0x015610 11:B600: 5E        .byte $5E
- D - I - 0x015611 11:B601: 5F        .byte $5F
- D - I - 0x015612 11:B602: FA        .byte con_jsr
- D - I - 0x015613 11:B603: 70 BC     .word off_BC70
- D - I - 0x015615 11:B605: A0        .byte $A0
- D - I - 0x015616 11:B606: 02        .byte $02
- D - I - 0x015617 11:B607: 7F        .byte $7F
- D - I - 0x015618 11:B608: A2        .byte $A2
- D - I - 0x015619 11:B609: 36        .byte $36
- D - I - 0x01561A 11:B60A: 7F        .byte $7F
- D - I - 0x01561B 11:B60B: 3E        .byte $3E
- D - I - 0x01561C 11:B60C: 7F        .byte $7F
- D - I - 0x01561D 11:B60D: 02        .byte $02
- D - I - 0x01561E 11:B60E: 7F        .byte $7F
- D - I - 0x01561F 11:B60F: 06        .byte $06
- D - I - 0x015620 11:B610: 7F        .byte $7F
- D - I - 0x015621 11:B611: A3        .byte $A3
- D - I - 0x015622 11:B612: 36        .byte $36
- D - I - 0x015623 11:B613: 7F        .byte $7F
- D - I - 0x015624 11:B614: 3E        .byte $3E
- D - I - 0x015625 11:B615: 7F        .byte $7F
- D - I - 0x015626 11:B616: 06        .byte $06
- D - I - 0x015627 11:B617: 7F        .byte $7F
- D - I - 0x015628 11:B618: A5        .byte $A5
- D - I - 0x015629 11:B619: 9E        .byte $9E
- D - I - 0x01562A 11:B61A: C4        .byte $C4
- D - I - 0x01562B 11:B61B: 02        .byte $02
- D - I - 0x01562C 11:B61C: 7F        .byte $7F
- D - I - 0x01562D 11:B61D: 80        .byte $80
- D - I - 0x01562E 11:B61E: C4        .byte $C4
- D - I - 0x01562F 11:B61F: 02        .byte $02
- D - I - 0x015630 11:B620: 7F        .byte $7F
- D - I - 0x015631 11:B621: A7        .byte $A7
- D - I - 0x015632 11:B622: 02        .byte $02
- D - I - 0x015633 11:B623: 7F        .byte $7F
- D - I - 0x015634 11:B624: A9        .byte $A9
- D - I - 0x015635 11:B625: 3A        .byte $3A
- D - I - 0x015636 11:B626: 7F        .byte $7F
- D - I - 0x015637 11:B627: AB        .byte $AB
- D - I - 0x015638 11:B628: 02        .byte $02
- D - I - 0x015639 11:B629: 7F        .byte $7F
- D - I - 0x01563A 11:B62A: FF        .byte $FF



off_B62B:
- D - I - 0x01563B 11:B62B: 68        .byte $68
- D - I - 0x01563C 11:B62C: 69        .byte $69
- D - I - 0x01563D 11:B62D: 6A        .byte $6A
- D - I - 0x01563E 11:B62E: 6B        .byte $6B
- D - I - 0x01563F 11:B62F: BC        .byte $BC
- D - I - 0x015640 11:B630: 2B        .byte $2B
- D - I - 0x015641 11:B631: C0        .byte $C0
- D - I - 0x015642 11:B632: 2F        .byte $2F
- D - I - 0x015643 11:B633: FE        .byte $FE
- D - I - 0x015644 11:B634: BD        .byte $BD
- D - I - 0x015645 11:B635: 2B        .byte $2B
- D - I - 0x015646 11:B636: C1        .byte $C1
- D - I - 0x015647 11:B637: 2F        .byte $2F
- D - I - 0x015648 11:B638: E0        .byte $E0
- D - I - 0x015649 11:B639: BE        .byte $BE
- D - I - 0x01564A 11:B63A: 2B        .byte $2B
- D - I - 0x01564B 11:B63B: C4        .byte $C4
- D - I - 0x01564C 11:B63C: 2F        .byte $2F
- D - I - 0x01564D 11:B63D: E1        .byte $E1
- D - I - 0x01564E 11:B63E: BF        .byte $BF
- D - I - 0x01564F 11:B63F: 2B        .byte $2B
- D - I - 0x015650 11:B640: C5        .byte $C5
- D - I - 0x015651 11:B641: A0        .byte $A0
- D - I - 0x015652 11:B642: 9F        .byte $9F
- D - I - 0x015653 11:B643: C4        .byte $C4
- D - I - 0x015654 11:B644: 01        .byte $01
- D - I - 0x015655 11:B645: F9        .byte $F9
- D - I - 0x015656 11:B646: A0        .byte $A0
- D - I - 0x015657 11:B647: 80        .byte $80
- D - I - 0x015658 11:B648: C4        .byte $C4
- D - I - 0x015659 11:B649: 01        .byte $01
- D - I - 0x01565A 11:B64A: FB        .byte $FB
- D - I - 0x01565B 11:B64B: A2        .byte $A2
- D - I - 0x01565C 11:B64C: 2B        .byte $2B
- D - I - 0x01565D 11:B64D: C6        .byte $C6
- D - I - 0x01565E 11:B64E: 2F        .byte $2F
- D - I - 0x01565F 11:B64F: E4        .byte $E4
- D - I - 0x015660 11:B650: A3        .byte $A3
- D - I - 0x015661 11:B651: 2B        .byte $2B
- D - I - 0x015662 11:B652: C7        .byte $C7
- D - I - 0x015663 11:B653: 2F        .byte $2F
- D - I - 0x015664 11:B654: E5        .byte $E5
- D - I - 0x015665 11:B655: FB        .byte con_jmp
- D - I - 0x015666 11:B656: 74 BC     .word off_BC74



off_B658:
- D - I - 0x015668 11:B658: 68        .byte $68
- D - I - 0x015669 11:B659: 69        .byte $69
- D - I - 0x01566A 11:B65A: 6A        .byte $6A
- D - I - 0x01566B 11:B65B: 6B        .byte $6B
- D - I - 0x01566C 11:B65C: BC        .byte $BC
- D - I - 0x01566D 11:B65D: 2B        .byte $2B
- D - I - 0x01566E 11:B65E: C8        .byte $C8
- D - I - 0x01566F 11:B65F: 2F        .byte $2F
- D - I - 0x015670 11:B660: CA        .byte $CA
- D - I - 0x015671 11:B661: BD        .byte $BD
- D - I - 0x015672 11:B662: 2B        .byte $2B
- D - I - 0x015673 11:B663: C9        .byte $C9
- D - I - 0x015674 11:B664: 2F        .byte $2F
- D - I - 0x015675 11:B665: CB        .byte $CB
- D - I - 0x015676 11:B666: BE        .byte $BE
- D - I - 0x015677 11:B667: 27        .byte $27
- D - I - 0x015678 11:B668: C2        .byte $C2
- D - I - 0x015679 11:B669: 2B        .byte $2B
- D - I - 0x01567A 11:B66A: CC        .byte $CC
- D - I - 0x01567B 11:B66B: 2F        .byte $2F
- D - I - 0x01567C 11:B66C: CE        .byte $CE
- D - I - 0x01567D 11:B66D: BF        .byte $BF
- D - I - 0x01567E 11:B66E: 27        .byte $27
- D - I - 0x01567F 11:B66F: C3        .byte $C3
- D - I - 0x015680 11:B670: A0        .byte $A0
- D - I - 0x015681 11:B671: 3E        .byte $3E
- D - I - 0x015682 11:B672: BC        .byte $BC
- D - I - 0x015683 11:B673: 02        .byte $02
- D - I - 0x015684 11:B674: BE        .byte $BE
- D - I - 0x015685 11:B675: 03        .byte $03
- D - I - 0x015686 11:B676: 03        .byte $03
- D - I - 0x015687 11:B677: A1        .byte $A1
- D - I - 0x015688 11:B678: 3E        .byte $3E
- D - I - 0x015689 11:B679: BD        .byte $BD
- D - I - 0x01568A 11:B67A: 02        .byte $02
- D - I - 0x01568B 11:B67B: BF        .byte $BF
- D - I - 0x01568C 11:B67C: 03        .byte $03
- D - I - 0x01568D 11:B67D: 03        .byte $03
- D - I - 0x01568E 11:B67E: A2        .byte $A2
- D - I - 0x01568F 11:B67F: 2B        .byte $2B
- D - I - 0x015690 11:B680: CD        .byte $CD
- D - I - 0x015691 11:B681: 2F        .byte $2F
- D - I - 0x015692 11:B682: CF        .byte $CF
- D - I - 0x015693 11:B683: A3        .byte $A3
- D - I - 0x015694 11:B684: 2B        .byte $2B
- D - I - 0x015695 11:B685: F8        .byte $F8
- D - I - 0x015696 11:B686: 2F        .byte $2F
- D - I - 0x015697 11:B687: FA        .byte $FA
- D - I - 0x015698 11:B688: FB        .byte con_jmp
- D - I - 0x015699 11:B689: 74 BC     .word off_BC74



off_B68B:
- D - I - 0x01569B 11:B68B: 00        .byte $00
- D - I - 0x01569C 11:B68C: 00        .byte $00
- D - I - 0x01569D 11:B68D: 00        .byte $00
- D - I - 0x01569E 11:B68E: 00        .byte $00
- D - I - 0x01569F 11:B68F: 00        .byte $00
- D - I - 0x0156A0 11:B690: 00        .byte $00
- D - I - 0x0156A1 11:B691: 00        .byte $00
- D - I - 0x0156A2 11:B692: 00        .byte $00
- D - I - 0x0156A3 11:B693: 00        .byte $00
- D - I - 0x0156A4 11:B694: 00        .byte $00
- D - I - 0x0156A5 11:B695: 00        .byte $00
- D - I - 0x0156A6 11:B696: 00        .byte $00
- D - I - 0x0156A7 11:B697: 00        .byte $00
- D - I - 0x0156A8 11:B698: 00        .byte $00
- D - I - 0x0156A9 11:B699: 00        .byte $00
- D - I - 0x0156AA 11:B69A: 00        .byte $00
- D - I - 0x0156AB 11:B69B: 00        .byte $00
- D - I - 0x0156AC 11:B69C: 00        .byte $00
- D - I - 0x0156AD 11:B69D: 00        .byte $00
- D - I - 0x0156AE 11:B69E: 00        .byte $00
- D - I - 0x0156AF 11:B69F: FF        .byte $FF



off_B6A0:
- D - I - 0x0156B0 11:B6A0: 68        .byte $68
- D - I - 0x0156B1 11:B6A1: 69        .byte $69
- D - I - 0x0156B2 11:B6A2: 6A        .byte $6A
- D - I - 0x0156B3 11:B6A3: 6B        .byte $6B
- D - I - 0x0156B4 11:B6A4: BC        .byte $BC
- D - I - 0x0156B5 11:B6A5: 2B        .byte $2B
- D - I - 0x0156B6 11:B6A6: C0        .byte $C0
- D - I - 0x0156B7 11:B6A7: 2F        .byte $2F
- D - I - 0x0156B8 11:B6A8: FE        .byte $FE
- D - I - 0x0156B9 11:B6A9: BD        .byte $BD
- D - I - 0x0156BA 11:B6AA: 2B        .byte $2B
- D - I - 0x0156BB 11:B6AB: C1        .byte $C1
- D - I - 0x0156BC 11:B6AC: 2F        .byte $2F
- D - I - 0x0156BD 11:B6AD: E0        .byte $E0
- D - I - 0x0156BE 11:B6AE: BE        .byte $BE
- D - I - 0x0156BF 11:B6AF: 2B        .byte $2B
- D - I - 0x0156C0 11:B6B0: C4        .byte $C4
- D - I - 0x0156C1 11:B6B1: 2F        .byte $2F
- D - I - 0x0156C2 11:B6B2: E1        .byte $E1
- D - I - 0x0156C3 11:B6B3: BF        .byte $BF
- D - I - 0x0156C4 11:B6B4: 2B        .byte $2B
- D - I - 0x0156C5 11:B6B5: C5        .byte $C5
- D - I - 0x0156C6 11:B6B6: A0        .byte $A0
- D - I - 0x0156C7 11:B6B7: 3E        .byte $3E
- D - I - 0x0156C8 11:B6B8: BC        .byte $BC
- D - I - 0x0156C9 11:B6B9: 02        .byte $02
- D - I - 0x0156CA 11:B6BA: BE        .byte $BE
- D - I - 0x0156CB 11:B6BB: 03        .byte $03
- D - I - 0x0156CC 11:B6BC: 03        .byte $03
- D - I - 0x0156CD 11:B6BD: A1        .byte $A1
- D - I - 0x0156CE 11:B6BE: 3E        .byte $3E
- D - I - 0x0156CF 11:B6BF: BD        .byte $BD
- D - I - 0x0156D0 11:B6C0: 02        .byte $02
- D - I - 0x0156D1 11:B6C1: BF        .byte $BF
- D - I - 0x0156D2 11:B6C2: 03        .byte $03
- D - I - 0x0156D3 11:B6C3: 03        .byte $03
- D - I - 0x0156D4 11:B6C4: A2        .byte $A2
- D - I - 0x0156D5 11:B6C5: 2B        .byte $2B
- D - I - 0x0156D6 11:B6C6: C6        .byte $C6
- D - I - 0x0156D7 11:B6C7: 2F        .byte $2F
- D - I - 0x0156D8 11:B6C8: E4        .byte $E4
- D - I - 0x0156D9 11:B6C9: A3        .byte $A3
- D - I - 0x0156DA 11:B6CA: 2B        .byte $2B
- D - I - 0x0156DB 11:B6CB: C7        .byte $C7
- D - I - 0x0156DC 11:B6CC: 2F        .byte $2F
- D - I - 0x0156DD 11:B6CD: E5        .byte $E5
- D - I - 0x0156DE 11:B6CE: FB        .byte con_jmp
- D - I - 0x0156DF 11:B6CF: 74 BC     .word off_BC74



off_B6D1:
- D - I - 0x0156E1 11:B6D1: 68        .byte $68
- D - I - 0x0156E2 11:B6D2: 69        .byte $69
- D - I - 0x0156E3 11:B6D3: 6A        .byte $6A
- D - I - 0x0156E4 11:B6D4: 6B        .byte $6B
- D - I - 0x0156E5 11:B6D5: BF        .byte $BF
- D - I - 0x0156E6 11:B6D6: 3F        .byte $3F
- D - I - 0x0156E7 11:B6D7: 71        .byte $71
- D - I - 0x0156E8 11:B6D8: 03        .byte $03
- D - I - 0x0156E9 11:B6D9: 73        .byte $73
- D - I - 0x0156EA 11:B6DA: 07        .byte $07
- D - I - 0x0156EB 11:B6DB: 79        .byte $79
- D - I - 0x0156EC 11:B6DC: A0        .byte $A0
- D - I - 0x0156ED 11:B6DD: 3F        .byte $3F
- D - I - 0x0156EE 11:B6DE: 74        .byte $74
- D - I - 0x0156EF 11:B6DF: 03        .byte $03
- D - I - 0x0156F0 11:B6E0: 76        .byte $76
- D - I - 0x0156F1 11:B6E1: 07        .byte $07
- D - I - 0x0156F2 11:B6E2: 7C        .byte $7C
- D - I - 0x0156F3 11:B6E3: A1        .byte $A1
- D - I - 0x0156F4 11:B6E4: 3F        .byte $3F
- D - I - 0x0156F5 11:B6E5: 75        .byte $75
- D - I - 0x0156F6 11:B6E6: 03        .byte $03
- D - I - 0x0156F7 11:B6E7: 77        .byte $77
- D - I - 0x0156F8 11:B6E8: 07        .byte $07
- D - I - 0x0156F9 11:B6E9: 7D        .byte $7D
- D - I - 0x0156FA 11:B6EA: FF        .byte $FF



off_B6EB:
- D - I - 0x0156FB 11:B6EB: 18        .byte $18
- D - I - 0x0156FC 11:B6EC: 19        .byte $19
- D - I - 0x0156FD 11:B6ED: 1A        .byte $1A
- D - I - 0x0156FE 11:B6EE: 1B        .byte $1B
- D - I - 0x0156FF 11:B6EF: A0        .byte $A0
- D - I - 0x015700 11:B6F0: 3C        .byte $3C
- D - I - 0x015701 11:B6F1: 00        .byte $00
- D - I - 0x015702 11:B6F2: 3C        .byte $3C
- D - I - 0x015703 11:B6F3: 00        .byte $00
- D - I - 0x015704 11:B6F4: 3C        .byte $3C
- D - I - 0x015705 11:B6F5: 00        .byte $00
- D - I - 0x015706 11:B6F6: 3C        .byte $3C
- D - I - 0x015707 11:B6F7: 00        .byte $00
- D - I - 0x015708 11:B6F8: 3C        .byte $3C
- D - I - 0x015709 11:B6F9: 00        .byte $00
- D - I - 0x01570A 11:B6FA: 3C        .byte $3C
- D - I - 0x01570B 11:B6FB: 00        .byte $00
- D - I - 0x01570C 11:B6FC: 3C        .byte $3C
- D - I - 0x01570D 11:B6FD: 00        .byte $00
- D - I - 0x01570E 11:B6FE: 3C        .byte $3C
- D - I - 0x01570F 11:B6FF: 00        .byte $00
- D - I - 0x015710 11:B700: 00        .byte $00
- D - I - 0x015711 11:B701: 00        .byte $00
- D - I - 0x015712 11:B702: 00        .byte $00
- D - I - 0x015713 11:B703: 00        .byte $00
- D - I - 0x015714 11:B704: 00        .byte $00
- D - I - 0x015715 11:B705: 00        .byte $00
- D - I - 0x015716 11:B706: 00        .byte $00
- D - I - 0x015717 11:B707: 00        .byte $00
- D - I - 0x015718 11:B708: 00        .byte $00
- D - I - 0x015719 11:B709: 00        .byte $00
- D - I - 0x01571A 11:B70A: 00        .byte $00
- D - I - 0x01571B 11:B70B: 00        .byte $00
- D - I - 0x01571C 11:B70C: 00        .byte $00
- D - I - 0x01571D 11:B70D: 00        .byte $00
- D - I - 0x01571E 11:B70E: 00        .byte $00
- D - I - 0x01571F 11:B70F: 00        .byte $00
- D - I - 0x015720 11:B710: FF        .byte $FF



off_B711:
- D - I - 0x015721 11:B711: 28        .byte $28
- D - I - 0x015722 11:B712: 29        .byte $29
- D - I - 0x015723 11:B713: 2A        .byte $2A
- D - I - 0x015724 11:B714: 2B        .byte $2B
- D - I - 0x015725 11:B715: A0        .byte $A0
- D - I - 0x015726 11:B716: 3C        .byte $3C
- D - I - 0x015727 11:B717: 01        .byte $01
- D - I - 0x015728 11:B718: 00        .byte $00
- D - I - 0x015729 11:B719: 01        .byte $01
- D - I - 0x01572A 11:B71A: A1        .byte $A1
- D - I - 0x01572B 11:B71B: 3C        .byte $3C
- D - I - 0x01572C 11:B71C: 01        .byte $01
- D - I - 0x01572D 11:B71D: 00        .byte $00
- D - I - 0x01572E 11:B71E: 01        .byte $01
- D - I - 0x01572F 11:B71F: A2        .byte $A2
- D - I - 0x015730 11:B720: 3C        .byte $3C
- D - I - 0x015731 11:B721: 01        .byte $01
- D - I - 0x015732 11:B722: 00        .byte $00
- D - I - 0x015733 11:B723: 01        .byte $01
- D - I - 0x015734 11:B724: A3        .byte $A3
- D - I - 0x015735 11:B725: 3C        .byte $3C
- D - I - 0x015736 11:B726: 01        .byte $01
- D - I - 0x015737 11:B727: 00        .byte $00
- D - I - 0x015738 11:B728: 01        .byte $01
- D - I - 0x015739 11:B729: A4        .byte $A4
- D - I - 0x01573A 11:B72A: 3C        .byte $3C
- D - I - 0x01573B 11:B72B: 01        .byte $01
- D - I - 0x01573C 11:B72C: 00        .byte $00
- D - I - 0x01573D 11:B72D: 01        .byte $01
- D - I - 0x01573E 11:B72E: A5        .byte $A5
- D - I - 0x01573F 11:B72F: 3C        .byte $3C
- D - I - 0x015740 11:B730: 01        .byte $01
- D - I - 0x015741 11:B731: 00        .byte $00
- D - I - 0x015742 11:B732: 01        .byte $01
- D - I - 0x015743 11:B733: A6        .byte $A6
- D - I - 0x015744 11:B734: 3C        .byte $3C
- D - I - 0x015745 11:B735: 01        .byte $01
- D - I - 0x015746 11:B736: 00        .byte $00
- D - I - 0x015747 11:B737: 01        .byte $01
- D - I - 0x015748 11:B738: FF        .byte $FF



off_B739:
- D - I - 0x015749 11:B739: 6F        .byte $6F
- D - I - 0x01574A 11:B73A: 69        .byte $69
- D - I - 0x01574B 11:B73B: 67        .byte $67
- D - I - 0x01574C 11:B73C: 7B        .byte $7B
- D - I - 0x01574D 11:B73D: A0        .byte $A0
- D - I - 0x01574E 11:B73E: 01        .byte $01
- D - I - 0x01574F 11:B73F: BB        .byte $BB
- D - I - 0x015750 11:B740: A1        .byte $A1
- D - I - 0x015751 11:B741: 01        .byte $01
- D - I - 0x015752 11:B742: BE        .byte $BE
- D - I - 0x015753 11:B743: FB        .byte con_jmp
- D - I - 0x015754 11:B744: A1 BC     .word off_BCA1



off_B746:
- D - I - 0x015756 11:B746: 6F        .byte $6F
- D - I - 0x015757 11:B747: 69        .byte $69
- D - I - 0x015758 11:B748: 67        .byte $67
- D - I - 0x015759 11:B749: 7B        .byte $7B
- D - I - 0x01575A 11:B74A: A0        .byte $A0
- D - I - 0x01575B 11:B74B: 01        .byte $01
- D - I - 0x01575C 11:B74C: 7E        .byte $7E
- D - I - 0x01575D 11:B74D: A1        .byte $A1
- D - I - 0x01575E 11:B74E: 01        .byte $01
- D - I - 0x01575F 11:B74F: 7F        .byte $7F
- D - I - 0x015760 11:B750: FB        .byte con_jmp
- D - I - 0x015761 11:B751: A1 BC     .word off_BCA1



off_B753:
- D - I - 0x015763 11:B753: 6F        .byte $6F
- D - I - 0x015764 11:B754: 69        .byte $69
- D - I - 0x015765 11:B755: 67        .byte $67
- D - I - 0x015766 11:B756: 7B        .byte $7B
- D - I - 0x015767 11:B757: A0        .byte $A0
- D - I - 0x015768 11:B758: 3D        .byte $3D
- D - I - 0x015769 11:B759: C0        .byte $C0
- D - I - 0x01576A 11:B75A: 01        .byte $01
- D - I - 0x01576B 11:B75B: C2        .byte $C2
- D - I - 0x01576C 11:B75C: A1        .byte $A1
- D - I - 0x01576D 11:B75D: 7D        .byte $7D
- D - I - 0x01576E 11:B75E: C0        .byte $C0
- D - I - 0x01576F 11:B75F: 41        .byte $41
- D - I - 0x015770 11:B760: C2        .byte $C2
- D - I - 0x015771 11:B761: FF        .byte $FF



off_B762:
- D - I - 0x015772 11:B762: 6F        .byte $6F
- D - I - 0x015773 11:B763: 69        .byte $69
- D - I - 0x015774 11:B764: 67        .byte $67
- D - I - 0x015775 11:B765: 7B        .byte $7B
- D - I - 0x015776 11:B766: A0        .byte $A0
- D - I - 0x015777 11:B767: 3D        .byte $3D
- D - I - 0x015778 11:B768: C1        .byte $C1
- D - I - 0x015779 11:B769: 01        .byte $01
- D - I - 0x01577A 11:B76A: C3        .byte $C3
- D - I - 0x01577B 11:B76B: A1        .byte $A1
- D - I - 0x01577C 11:B76C: 7D        .byte $7D
- D - I - 0x01577D 11:B76D: C1        .byte $C1
- D - I - 0x01577E 11:B76E: 41        .byte $41
- D - I - 0x01577F 11:B76F: C3        .byte $C3
- D - I - 0x015780 11:B770: FF        .byte $FF



off_B771:
- D - I - 0x015781 11:B771: 6F        .byte $6F
- D - I - 0x015782 11:B772: 69        .byte $69
- D - I - 0x015783 11:B773: 67        .byte $67
- D - I - 0x015784 11:B774: 7B        .byte $7B
- D - I - 0x015785 11:B775: A0        .byte $A0
- D - I - 0x015786 11:B776: 3D        .byte $3D
- D - I - 0x015787 11:B777: 28        .byte $28
- D - I - 0x015788 11:B778: 01        .byte $01
- D - I - 0x015789 11:B779: 2A        .byte $2A
- D - I - 0x01578A 11:B77A: A1        .byte $A1
- D - I - 0x01578B 11:B77B: 7D        .byte $7D
- D - I - 0x01578C 11:B77C: 28        .byte $28
- D - I - 0x01578D 11:B77D: 41        .byte $41
- D - I - 0x01578E 11:B77E: 2A        .byte $2A
- D - I - 0x01578F 11:B77F: FF        .byte $FF



off_B780:
- D - I - 0x015790 11:B780: 60        .byte $60
- D - I - 0x015791 11:B781: 61        .byte $61
- D - I - 0x015792 11:B782: 62        .byte $62
- D - I - 0x015793 11:B783: 63        .byte $63
- D - I - 0x015794 11:B784: A0        .byte $A0
- D - I - 0x015795 11:B785: 03        .byte $03
- D - I - 0x015796 11:B786: 4F        .byte $4F
- D - I - 0x015797 11:B787: A1        .byte $A1
- D - I - 0x015798 11:B788: 03        .byte $03
- D - I - 0x015799 11:B789: 4F        .byte $4F
- D - I - 0x01579A 11:B78A: A2        .byte $A2
- D - I - 0x01579B 11:B78B: 03        .byte $03
- D - I - 0x01579C 11:B78C: 4F        .byte $4F
- D - I - 0x01579D 11:B78D: A3        .byte $A3
- D - I - 0x01579E 11:B78E: 03        .byte $03
- D - I - 0x01579F 11:B78F: 4F        .byte $4F
- D - I - 0x0157A0 11:B790: A4        .byte $A4
- D - I - 0x0157A1 11:B791: 03        .byte $03
- D - I - 0x0157A2 11:B792: 4F        .byte $4F
- D - I - 0x0157A3 11:B793: A5        .byte $A5
- D - I - 0x0157A4 11:B794: 03        .byte $03
- D - I - 0x0157A5 11:B795: 4F        .byte $4F
- D - I - 0x0157A6 11:B796: FF        .byte $FF



off_B797:
- D - I - 0x0157A7 11:B797: 60        .byte $60
- D - I - 0x0157A8 11:B798: 61        .byte $61
- D - I - 0x0157A9 11:B799: 76        .byte $76
- D - I - 0x0157AA 11:B79A: 77        .byte $77
- D - I - 0x0157AB 11:B79B: A0        .byte $A0
- D - I - 0x0157AC 11:B79C: 03        .byte $03
- D - I - 0x0157AD 11:B79D: 44        .byte $44
- D - I - 0x0157AE 11:B79E: 07        .byte $07
- D - I - 0x0157AF 11:B79F: 48        .byte $48
- D - I - 0x0157B0 11:B7A0: A1        .byte $A1
- D - I - 0x0157B1 11:B7A1: 03        .byte $03
- D - I - 0x0157B2 11:B7A2: 47        .byte $47
- D - I - 0x0157B3 11:B7A3: 07        .byte $07
- D - I - 0x0157B4 11:B7A4: 49        .byte $49
- D - I - 0x0157B5 11:B7A5: FF        .byte $FF



off_B7A6:
- D - I - 0x0157B6 11:B7A6: 60        .byte $60
- D - I - 0x0157B7 11:B7A7: 61        .byte $61
- D - I - 0x0157B8 11:B7A8: 76        .byte $76
- D - I - 0x0157B9 11:B7A9: 77        .byte $77
- D - I - 0x0157BA 11:B7AA: A0        .byte $A0
- D - I - 0x0157BB 11:B7AB: 03        .byte $03
- D - I - 0x0157BC 11:B7AC: F8        .byte $F8
- D - I - 0x0157BD 11:B7AD: A1        .byte $A1
- D - I - 0x0157BE 11:B7AE: 03        .byte $03
- D - I - 0x0157BF 11:B7AF: F9        .byte $F9
- D - I - 0x0157C0 11:B7B0: 07        .byte $07
- D - I - 0x0157C1 11:B7B1: FC        .byte $FC
- D - I - 0x0157C2 11:B7B2: FF        .byte $FF



off_B7B3:
- D - I - 0x0157C3 11:B7B3: 70        .byte $70
- D - I - 0x0157C4 11:B7B4: 71        .byte $71
- D - I - 0x0157C5 11:B7B5: 72        .byte $72
- D - I - 0x0157C6 11:B7B6: 73        .byte $73
- D - I - 0x0157C7 11:B7B7: A0        .byte $A0
- D - I - 0x0157C8 11:B7B8: 03        .byte $03
- D - I - 0x0157C9 11:B7B9: 08        .byte $08
- D - I - 0x0157CA 11:B7BA: FF        .byte $FF



off_B7BB:
- D - I - 0x0157CB 11:B7BB: 7C        .byte $7C
- D - I - 0x0157CC 11:B7BC: 71        .byte $71
- D - I - 0x0157CD 11:B7BD: 52        .byte $52
- D - I - 0x0157CE 11:B7BE: 53        .byte $53
- D - I - 0x0157CF 11:B7BF: A0        .byte $A0
- D - I - 0x0157D0 11:B7C0: 03        .byte $03
- D - I - 0x0157D1 11:B7C1: 16        .byte $16
- D - I - 0x0157D2 11:B7C2: A1        .byte $A1
- D - I - 0x0157D3 11:B7C3: 03        .byte $03
- D - I - 0x0157D4 11:B7C4: 10        .byte $10
- D - I - 0x0157D5 11:B7C5: A2        .byte $A2
- D - I - 0x0157D6 11:B7C6: 03        .byte $03
- D - I - 0x0157D7 11:B7C7: 0D        .byte $0D
- D - I - 0x0157D8 11:B7C8: A3        .byte $A3
- D - I - 0x0157D9 11:B7C9: 03        .byte $03
- D - I - 0x0157DA 11:B7CA: 30        .byte $30
- D - I - 0x0157DB 11:B7CB: A4        .byte $A4
- D - I - 0x0157DC 11:B7CC: 03        .byte $03
- D - I - 0x0157DD 11:B7CD: 31        .byte $31
- D - I - 0x0157DE 11:B7CE: FF        .byte $FF
off_B7CF:
- D - I - 0x0157DF 11:B7CF: BD        .byte $BD
- D - I - 0x0157E0 11:B7D0: 9D        .byte $9D
- D - I - 0x0157E1 11:B7D1: C0        .byte $C0
- D - I - 0x0157E2 11:B7D2: 11        .byte $11
- D - I - 0x0157E3 11:B7D3: 04        .byte $04
- D - I - 0x0157E4 11:B7D4: 11        .byte $11
- D - I - 0x0157E5 11:B7D5: 1A        .byte $1A
- D - I - 0x0157E6 11:B7D6: 15        .byte $15
- D - I - 0x0157E7 11:B7D7: 30        .byte $30
- D - I - 0x0157E8 11:B7D8: 1B        .byte $1B
- D - I - 0x0157E9 11:B7D9: 32        .byte $32
- D - I - 0x0157EA 11:B7DA: BE        .byte $BE
- D - I - 0x0157EB 11:B7DB: 9E        .byte $9E
- D - I - 0x0157EC 11:B7DC: C0        .byte $C0
- D - I - 0x0157ED 11:B7DD: 35        .byte $35
- D - I - 0x0157EE 11:B7DE: 05        .byte $05
- D - I - 0x0157EF 11:B7DF: C0        .byte $C0
- D - I - 0x0157F0 11:B7E0: 15        .byte $15
- D - I - 0x0157F1 11:B7E1: 02        .byte $02
- D - I - 0x0157F2 11:B7E2: 09        .byte $09
- D - I - 0x0157F3 11:B7E3: 20        .byte $20
- D - I - 0x0157F4 11:B7E4: 83        .byte $83
- D - I - 0x0157F5 11:B7E5: CF        .byte $CF
- D - I - 0x0157F6 11:B7E6: 01        .byte $01
- D - I - 0x0157F7 11:B7E7: 22        .byte $22
- D - I - 0x0157F8 11:B7E8: C7        .byte $C7
- D - I - 0x0157F9 11:B7E9: 01        .byte $01
- D - I - 0x0157FA 11:B7EA: 23        .byte $23
- D - I - 0x0157FB 11:B7EB: 11        .byte $11
- D - I - 0x0157FC 11:B7EC: 1B        .byte $1B
- D - I - 0x0157FD 11:B7ED: 15        .byte $15
- D - I - 0x0157FE 11:B7EE: 31        .byte $31
- D - I - 0x0157FF 11:B7EF: BF        .byte $BF
- D - I - 0x015800 11:B7F0: 39        .byte $39
- D - I - 0x015801 11:B7F1: 10        .byte $10
- D - I - 0x015802 11:B7F2: 3D        .byte $3D
- D - I - 0x015803 11:B7F3: 03        .byte $03
- D - I - 0x015804 11:B7F4: 01        .byte $01
- D - I - 0x015805 11:B7F5: 09        .byte $09
- D - I - 0x015806 11:B7F6: 02        .byte $02
- D - I - 0x015807 11:B7F7: 0A        .byte $0A
- D - I - 0x015808 11:B7F8: 81        .byte $81
- D - I - 0x015809 11:B7F9: CD        .byte $CD
- D - I - 0x01580A 11:B7FA: 02        .byte $02
- D - I - 0x01580B 11:B7FB: 0B        .byte $0B
- D - I - 0x01580C 11:B7FC: C5        .byte $C5
- D - I - 0x01580D 11:B7FD: 02        .byte $02
- D - I - 0x01580E 11:B7FE: 0E        .byte $0E
- D - I - 0x01580F 11:B7FF: 09        .byte $09
- D - I - 0x015810 11:B800: 21        .byte $21
- D - I - 0x015811 11:B801: A0        .byte $A0
- D - I - 0x015812 11:B802: 3D        .byte $3D
- D - I - 0x015813 11:B803: 06        .byte $06
- D - I - 0x015814 11:B804: 01        .byte $01
- D - I - 0x015815 11:B805: 0C        .byte $0C
- D - I - 0x015816 11:B806: 09        .byte $09
- D - I - 0x015817 11:B807: 24        .byte $24
- D - I - 0x015818 11:B808: 0D        .byte $0D
- D - I - 0x015819 11:B809: 26        .byte $26
- D - I - 0x01581A 11:B80A: A1        .byte $A1
- D - I - 0x01581B 11:B80B: 3D        .byte $3D
- D - I - 0x01581C 11:B80C: 07        .byte $07
- D - I - 0x01581D 11:B80D: 01        .byte $01
- D - I - 0x01581E 11:B80E: 0D        .byte $0D
- D - I - 0x01581F 11:B80F: 81        .byte $81
- D - I - 0x015820 11:B810: CD        .byte $CD
- D - I - 0x015821 11:B811: 02        .byte $02
- D - I - 0x015822 11:B812: 0F        .byte $0F
- D - I - 0x015823 11:B813: 09        .byte $09
- D - I - 0x015824 11:B814: 25        .byte $25
- D - I - 0x015825 11:B815: 0D        .byte $0D
- D - I - 0x015826 11:B816: 27        .byte $27
- D - I - 0x015827 11:B817: 0F        .byte $0F
- D - I - 0x015828 11:B818: 0A        .byte $0A
- D - I - 0x015829 11:B819: 11        .byte $11
- D - I - 0x01582A 11:B81A: 08        .byte $08
- D - I - 0x01582B 11:B81B: A2        .byte $A2
- D - I - 0x01582C 11:B81C: 3D        .byte $3D
- D - I - 0x01582D 11:B81D: 12        .byte $12
- D - I - 0x01582E 11:B81E: 01        .byte $01
- D - I - 0x01582F 11:B81F: 18        .byte $18
- D - I - 0x015830 11:B820: FF        .byte $FF
off_B821:
- D - I - 0x015831 11:B821: BD        .byte $BD
- D - I - 0x015832 11:B822: 7D        .byte $7D
- D - I - 0x015833 11:B823: 47        .byte $47
- D - I - 0x015834 11:B824: 41        .byte $41
- D - I - 0x015835 11:B825: 4D        .byte $4D
- D - I - 0x015836 11:B826: BE        .byte $BE
- D - I - 0x015837 11:B827: 7D        .byte $7D
- D - I - 0x015838 11:B828: 46        .byte $46
- D - I - 0x015839 11:B829: 41        .byte $41
- D - I - 0x01583A 11:B82A: 4C        .byte $4C
- D - I - 0x01583B 11:B82B: 06        .byte $06
- D - I - 0x01583C 11:B82C: 11        .byte $11
- D - I - 0x01583D 11:B82D: BF        .byte $BF
- D - I - 0x01583E 11:B82E: 7D        .byte $7D
- D - I - 0x01583F 11:B82F: 43        .byte $43
- D - I - 0x015840 11:B830: 41        .byte $41
- D - I - 0x015841 11:B831: 49        .byte $49
- D - I - 0x015842 11:B832: 06        .byte $06
- D - I - 0x015843 11:B833: 44        .byte $44
- D - I - 0x015844 11:B834: 82        .byte $82
- D - I - 0x015845 11:B835: CE        .byte $CE
- D - I - 0x015846 11:B836: 01        .byte $01
- D - I - 0x015847 11:B837: 34        .byte $34
- D - I - 0x015848 11:B838: C6        .byte $C6
- D - I - 0x015849 11:B839: 01        .byte $01
- D - I - 0x01584A 11:B83A: 35        .byte $35
- D - I - 0x01584B 11:B83B: 83        .byte $83
- D - I - 0x01584C 11:B83C: CE        .byte $CE
- D - I - 0x01584D 11:B83D: 01        .byte $01
- D - I - 0x01584E 11:B83E: 36        .byte $36
- D - I - 0x01584F 11:B83F: C6        .byte $C6
- D - I - 0x015850 11:B840: 01        .byte $01
- D - I - 0x015851 11:B841: 37        .byte $37
- D - I - 0x015852 11:B842: C7        .byte $C7
- D - I - 0x015853 11:B843: 3B        .byte $3B
- D - I - 0x015854 11:B844: 0A        .byte $0A
- D - I - 0x015855 11:B845: 09        .byte $09
- D - I - 0x015856 11:B846: 60        .byte $60
- D - I - 0x015857 11:B847: 0D        .byte $0D
- D - I - 0x015858 11:B848: 62        .byte $62
- D - I - 0x015859 11:B849: 11        .byte $11
- D - I - 0x01585A 11:B84A: 1C        .byte $1C
- D - I - 0x01585B 11:B84B: 1B        .byte $1B
- D - I - 0x01585C 11:B84C: 1E        .byte $1E
- D - I - 0x01585D 11:B84D: A0        .byte $A0
- D - I - 0x01585E 11:B84E: 79        .byte $79
- D - I - 0x01585F 11:B84F: 40        .byte $40
- D - I - 0x015860 11:B850: 7D        .byte $7D
- D - I - 0x015861 11:B851: 42        .byte $42
- D - I - 0x015862 11:B852: 01        .byte $01
- D - I - 0x015863 11:B853: 64        .byte $64
- D - I - 0x015864 11:B854: 02        .byte $02
- D - I - 0x015865 11:B855: 41        .byte $41
- D - I - 0x015866 11:B856: 06        .byte $06
- D - I - 0x015867 11:B857: 45        .byte $45
- D - I - 0x015868 11:B858: 0D        .byte $0D
- D - I - 0x015869 11:B859: 63        .byte $63
- D - I - 0x01586A 11:B85A: 11        .byte $11
- D - I - 0x01586B 11:B85B: 1D        .byte $1D
- D - I - 0x01586C 11:B85C: 85        .byte $85
- D - I - 0x01586D 11:B85D: CE        .byte $CE
- D - I - 0x01586E 11:B85E: 01        .byte $01
- D - I - 0x01586F 11:B85F: 48        .byte $48
- D - I - 0x015870 11:B860: 1B        .byte $1B
- D - I - 0x015871 11:B861: 1F        .byte $1F
- D - I - 0x015872 11:B862: A1        .byte $A1
- D - I - 0x015873 11:B863: 79        .byte $79
- D - I - 0x015874 11:B864: 15        .byte $15
- D - I - 0x015875 11:B865: 7D        .byte $7D
- D - I - 0x015876 11:B866: 17        .byte $17
- D - I - 0x015877 11:B867: A2        .byte $A2
- D - I - 0x015878 11:B868: 79        .byte $79
- D - I - 0x015879 11:B869: 14        .byte $14
- D - I - 0x01587A 11:B86A: 7D        .byte $7D
- D - I - 0x01587B 11:B86B: 16        .byte $16
- D - I - 0x01587C 11:B86C: FF        .byte $FF
off_B86D:
- D - I - 0x01587D 11:B86D: BD        .byte $BD
- D - I - 0x01587E 11:B86E: 7D        .byte $7D
- D - I - 0x01587F 11:B86F: 12        .byte $12
- D - I - 0x015880 11:B870: 41        .byte $41
- D - I - 0x015881 11:B871: 18        .byte $18
- D - I - 0x015882 11:B872: BE        .byte $BE
- D - I - 0x015883 11:B873: 7D        .byte $7D
- D - I - 0x015884 11:B874: 07        .byte $07
- D - I - 0x015885 11:B875: 41        .byte $41
- D - I - 0x015886 11:B876: 0D        .byte $0D
- D - I - 0x015887 11:B877: 06        .byte $06
- D - I - 0x015888 11:B878: 11        .byte $11
- D - I - 0x015889 11:B879: 84        .byte $84
- D - I - 0x01588A 11:B87A: CC        .byte $CC
- D - I - 0x01588B 11:B87B: 01        .byte $01
- D - I - 0x01588C 11:B87C: 1A        .byte $1A
- D - I - 0x01588D 11:B87D: C4        .byte $C4
- D - I - 0x01588E 11:B87E: 01        .byte $01
- D - I - 0x01588F 11:B87F: 1B        .byte $1B
- D - I - 0x015890 11:B880: 85        .byte $85
- D - I - 0x015891 11:B881: CC        .byte $CC
- D - I - 0x015892 11:B882: 01        .byte $01
- D - I - 0x015893 11:B883: 30        .byte $30
- D - I - 0x015894 11:B884: C4        .byte $C4
- D - I - 0x015895 11:B885: 01        .byte $01
- D - I - 0x015896 11:B886: 31        .byte $31
- D - I - 0x015897 11:B887: 86        .byte $86
- D - I - 0x015898 11:B888: CC        .byte $CC
- D - I - 0x015899 11:B889: 03        .byte $03
- D - I - 0x01589A 11:B88A: 32        .byte $32
- D - I - 0x01589B 11:B88B: BF        .byte $BF
- D - I - 0x01589C 11:B88C: 7D        .byte $7D
- D - I - 0x01589D 11:B88D: 06        .byte $06
- D - I - 0x01589E 11:B88E: 41        .byte $41
- D - I - 0x01589F 11:B88F: 0C        .byte $0C
- D - I - 0x0158A0 11:B890: 06        .byte $06
- D - I - 0x0158A1 11:B891: 13        .byte $13
- D - I - 0x0158A2 11:B892: 82        .byte $82
- D - I - 0x0158A3 11:B893: CC        .byte $CC
- D - I - 0x0158A4 11:B894: 01        .byte $01
- D - I - 0x0158A5 11:B895: 20        .byte $20
- D - I - 0x0158A6 11:B896: C4        .byte $C4
- D - I - 0x0158A7 11:B897: 01        .byte $01
- D - I - 0x0158A8 11:B898: 21        .byte $21
- D - I - 0x0158A9 11:B899: 83        .byte $83
- D - I - 0x0158AA 11:B89A: CB        .byte $CB
- D - I - 0x0158AB 11:B89B: 01        .byte $01
- D - I - 0x0158AC 11:B89C: 22        .byte $22
- D - I - 0x0158AD 11:B89D: C3        .byte $C3
- D - I - 0x0158AE 11:B89E: 01        .byte $01
- D - I - 0x0158AF 11:B89F: 23        .byte $23
- D - I - 0x0158B0 11:B8A0: 0D        .byte $0D
- D - I - 0x0158B1 11:B8A1: 26        .byte $26
- D - I - 0x0158B2 11:B8A2: A0        .byte $A0
- D - I - 0x0158B3 11:B8A3: 79        .byte $79
- D - I - 0x0158B4 11:B8A4: 10        .byte $10
- D - I - 0x0158B5 11:B8A5: 7D        .byte $7D
- D - I - 0x0158B6 11:B8A6: 03        .byte $03
- D - I - 0x0158B7 11:B8A7: 41        .byte $41
- D - I - 0x0158B8 11:B8A8: 09        .byte $09
- D - I - 0x0158B9 11:B8A9: 42        .byte $42
- D - I - 0x0158BA 11:B8AA: 0A        .byte $0A
- D - I - 0x0158BB 11:B8AB: 06        .byte $06
- D - I - 0x0158BC 11:B8AC: 19        .byte $19
- D - I - 0x0158BD 11:B8AD: 09        .byte $09
- D - I - 0x0158BE 11:B8AE: 25        .byte $25
- D - I - 0x0158BF 11:B8AF: 0D        .byte $0D
- D - I - 0x0158C0 11:B8B0: 27        .byte $27
- D - I - 0x0158C1 11:B8B1: 0F        .byte $0F
- D - I - 0x0158C2 11:B8B2: 0A        .byte $0A
- D - I - 0x0158C3 11:B8B3: 11        .byte $11
- D - I - 0x0158C4 11:B8B4: 08        .byte $08
- D - I - 0x0158C5 11:B8B5: A1        .byte $A1
- D - I - 0x0158C6 11:B8B6: 9E        .byte $9E
- D - I - 0x0158C7 11:B8B7: C0        .byte $C0
- D - I - 0x0158C8 11:B8B8: 75        .byte $75
- D - I - 0x0158C9 11:B8B9: 05        .byte $05
- D - I - 0x0158CA 11:B8BA: C0        .byte $C0
- D - I - 0x0158CB 11:B8BB: 55        .byte $55
- D - I - 0x0158CC 11:B8BC: 02        .byte $02
- D - I - 0x0158CD 11:B8BD: A2        .byte $A2
- D - I - 0x0158CE 11:B8BE: 9D        .byte $9D
- D - I - 0x0158CF 11:B8BF: C0        .byte $C0
- D - I - 0x0158D0 11:B8C0: 51        .byte $51
- D - I - 0x0158D1 11:B8C1: 04        .byte $04
- D - I - 0x0158D2 11:B8C2: FF        .byte $FF
off_B8C3:
- D - I - 0x0158D3 11:B8C3: BD        .byte $BD
- D - I - 0x0158D4 11:B8C4: 39        .byte $39
- D - I - 0x0158D5 11:B8C5: 14        .byte $14
- D - I - 0x0158D6 11:B8C6: 3D        .byte $3D
- D - I - 0x0158D7 11:B8C7: 16        .byte $16
- D - I - 0x0158D8 11:B8C8: BE        .byte $BE
- D - I - 0x0158D9 11:B8C9: 39        .byte $39
- D - I - 0x0158DA 11:B8CA: 15        .byte $15
- D - I - 0x0158DB 11:B8CB: 3D        .byte $3D
- D - I - 0x0158DC 11:B8CC: 17        .byte $17
- D - I - 0x0158DD 11:B8CD: 09        .byte $09
- D - I - 0x0158DE 11:B8CE: 34        .byte $34
- D - I - 0x0158DF 11:B8CF: 0D        .byte $0D
- D - I - 0x0158E0 11:B8D0: 36        .byte $36
- D - I - 0x0158E1 11:B8D1: BF        .byte $BF
- D - I - 0x0158E2 11:B8D2: 39        .byte $39
- D - I - 0x0158E3 11:B8D3: 40        .byte $40
- D - I - 0x0158E4 11:B8D4: 3D        .byte $3D
- D - I - 0x0158E5 11:B8D5: 42        .byte $42
- D - I - 0x0158E6 11:B8D6: 01        .byte $01
- D - I - 0x0158E7 11:B8D7: 09        .byte $09
- D - I - 0x0158E8 11:B8D8: 02        .byte $02
- D - I - 0x0158E9 11:B8D9: 0A        .byte $0A
- D - I - 0x0158EA 11:B8DA: 09        .byte $09
- D - I - 0x0158EB 11:B8DB: 35        .byte $35
- D - I - 0x0158EC 11:B8DC: 0D        .byte $0D
- D - I - 0x0158ED 11:B8DD: 37        .byte $37
- D - I - 0x0158EE 11:B8DE: 81        .byte $81
- D - I - 0x0158EF 11:B8DF: CA        .byte $CA
- D - I - 0x0158F0 11:B8E0: 02        .byte $02
- D - I - 0x0158F1 11:B8E1: 4A        .byte $4A
- D - I - 0x0158F2 11:B8E2: C2        .byte $C2
- D - I - 0x0158F3 11:B8E3: 02        .byte $02
- D - I - 0x0158F4 11:B8E4: 4B        .byte $4B
- D - I - 0x0158F5 11:B8E5: A0        .byte $A0
- D - I - 0x0158F6 11:B8E6: 3D        .byte $3D
- D - I - 0x0158F7 11:B8E7: 43        .byte $43
- D - I - 0x0158F8 11:B8E8: 01        .byte $01
- D - I - 0x0158F9 11:B8E9: 49        .byte $49
- D - I - 0x0158FA 11:B8EA: 81        .byte $81
- D - I - 0x0158FB 11:B8EB: C2        .byte $C2
- D - I - 0x0158FC 11:B8EC: 02        .byte $02
- D - I - 0x0158FD 11:B8ED: 4E        .byte $4E
- D - I - 0x0158FE 11:B8EE: 09        .byte $09
- D - I - 0x0158FF 11:B8EF: 60        .byte $60
- D - I - 0x015900 11:B8F0: 0D        .byte $0D
- D - I - 0x015901 11:B8F1: 62        .byte $62
- D - I - 0x015902 11:B8F2: C9        .byte $C9
- D - I - 0x015903 11:B8F3: 3B        .byte $3B
- D - I - 0x015904 11:B8F4: 0A        .byte $0A
- D - I - 0x015905 11:B8F5: 11        .byte $11
- D - I - 0x015906 11:B8F6: 1C        .byte $1C
- D - I - 0x015907 11:B8F7: 1B        .byte $1B
- D - I - 0x015908 11:B8F8: 1E        .byte $1E
- D - I - 0x015909 11:B8F9: A1        .byte $A1
- D - I - 0x01590A 11:B8FA: 3D        .byte $3D
- D - I - 0x01590B 11:B8FB: 46        .byte $46
- D - I - 0x01590C 11:B8FC: 01        .byte $01
- D - I - 0x01590D 11:B8FD: 4C        .byte $4C
- D - I - 0x01590E 11:B8FE: 09        .byte $09
- D - I - 0x01590F 11:B8FF: 61        .byte $61
- D - I - 0x015910 11:B900: 0D        .byte $0D
- D - I - 0x015911 11:B901: 63        .byte $63
- D - I - 0x015912 11:B902: 11        .byte $11
- D - I - 0x015913 11:B903: 1D        .byte $1D
- D - I - 0x015914 11:B904: 85        .byte $85
- D - I - 0x015915 11:B905: CE        .byte $CE
- D - I - 0x015916 11:B906: 01        .byte $01
- D - I - 0x015917 11:B907: 48        .byte $48
- D - I - 0x015918 11:B908: 1B        .byte $1B
- D - I - 0x015919 11:B909: 1F        .byte $1F
- D - I - 0x01591A 11:B90A: A2        .byte $A2
- D - I - 0x01591B 11:B90B: 3D        .byte $3D
- D - I - 0x01591C 11:B90C: 47        .byte $47
- D - I - 0x01591D 11:B90D: 01        .byte $01
- D - I - 0x01591E 11:B90E: 4D        .byte $4D
- D - I - 0x01591F 11:B90F: FF        .byte $FF
off_B910:
- D - I - 0x015920 11:B910: BC        .byte $BC
- D - I - 0x015921 11:B911: 17        .byte $17
- D - I - 0x015922 11:B912: 5C        .byte $5C
- D - I - 0x015923 11:B913: 1B        .byte $1B
- D - I - 0x015924 11:B914: 5E        .byte $5E
- D - I - 0x015925 11:B915: BD        .byte $BD
- D - I - 0x015926 11:B916: 17        .byte $17
- D - I - 0x015927 11:B917: 5D        .byte $5D
- D - I - 0x015928 11:B918: 1B        .byte $1B
- D - I - 0x015929 11:B919: 5F        .byte $5F
- D - I - 0x01592A 11:B91A: FE        .byte $FE
off_B91B:
- D - I - 0x01592B 11:B91B: BB        .byte $BB
- D - I - 0x01592C 11:B91C: 85        .byte $85
- D - I - 0x01592D 11:B91D: C0        .byte $C0
- D - I - 0x01592E 11:B91E: 3B        .byte $3B
- D - I - 0x01592F 11:B91F: F2        .byte $F2
- D - I - 0x015930 11:B920: C0        .byte $C0
- D - I - 0x015931 11:B921: 1B        .byte $1B
- D - I - 0x015932 11:B922: F4        .byte $F4
- D - I - 0x015933 11:B923: BC        .byte $BC
- D - I - 0x015934 11:B924: 85        .byte $85
- D - I - 0x015935 11:B925: C0        .byte $C0
- D - I - 0x015936 11:B926: 3B        .byte $3B
- D - I - 0x015937 11:B927: F3        .byte $F3
- D - I - 0x015938 11:B928: C0        .byte $C0
- D - I - 0x015939 11:B929: 1B        .byte $1B
- D - I - 0x01593A 11:B92A: F5        .byte $F5
- D - I - 0x01593B 11:B92B: 86        .byte $86
- D - I - 0x01593C 11:B92C: CC        .byte $CC
- D - I - 0x01593D 11:B92D: 03        .byte $03
- D - I - 0x01593E 11:B92E: 66        .byte $66
- D - I - 0x01593F 11:B92F: FE        .byte $FE
off_B930:
- D - I - 0x015940 11:B930: BC        .byte $BC
- D - I - 0x015941 11:B931: 17        .byte $17
- D - I - 0x015942 11:B932: 5C        .byte $5C
- D - I - 0x015943 11:B933: 1B        .byte $1B
- D - I - 0x015944 11:B934: 5E        .byte $5E
- D - I - 0x015945 11:B935: BD        .byte $BD
- D - I - 0x015946 11:B936: 17        .byte $17
- D - I - 0x015947 11:B937: 5D        .byte $5D
- D - I - 0x015948 11:B938: 1B        .byte $1B
- D - I - 0x015949 11:B939: 5F        .byte $5F
- D - I - 0x01594A 11:B93A: FE        .byte $FE
off_B93B:
- D - I - 0x01594B 11:B93B: BD        .byte $BD
- D - I - 0x01594C 11:B93C: 85        .byte $85
- D - I - 0x01594D 11:B93D: CC        .byte $CC
- D - I - 0x01594E 11:B93E: 3B        .byte $3B
- D - I - 0x01594F 11:B93F: F2        .byte $F2
- D - I - 0x015950 11:B940: CC        .byte $CC
- D - I - 0x015951 11:B941: 1B        .byte $1B
- D - I - 0x015952 11:B942: F4        .byte $F4
- D - I - 0x015953 11:B943: C4        .byte $C4
- D - I - 0x015954 11:B944: 3B        .byte $3B
- D - I - 0x015955 11:B945: F3        .byte $F3
- D - I - 0x015956 11:B946: C4        .byte $C4
- D - I - 0x015957 11:B947: 1B        .byte $1B
- D - I - 0x015958 11:B948: F5        .byte $F5
- D - I - 0x015959 11:B949: 1B        .byte $1B
- D - I - 0x01595A 11:B94A: 66        .byte $66
- D - I - 0x01595B 11:B94B: FE        .byte $FE
off_B94C:
- D - I - 0x01595C 11:B94C: BD        .byte $BD
- D - I - 0x01595D 11:B94D: 86        .byte $86
- D - I - 0x01595E 11:B94E: CC        .byte $CC
- D - I - 0x01595F 11:B94F: 03        .byte $03
- D - I - 0x015960 11:B950: 0E        .byte $0E
- D - I - 0x015961 11:B951: C4        .byte $C4
- D - I - 0x015962 11:B952: 01        .byte $01
- D - I - 0x015963 11:B953: 0F        .byte $0F
- D - I - 0x015964 11:B954: 87        .byte $87
- D - I - 0x015965 11:B955: CC        .byte $CC
- D - I - 0x015966 11:B956: 03        .byte $03
- D - I - 0x015967 11:B957: 25        .byte $25
- D - I - 0x015968 11:B958: C4        .byte $C4
- D - I - 0x015969 11:B959: 03        .byte $03
- D - I - 0x01596A 11:B95A: 30        .byte $30
- D - I - 0x01596B 11:B95B: BE        .byte $BE
- D - I - 0x01596C 11:B95C: 9C        .byte $9C
- D - I - 0x01596D 11:B95D: C0        .byte $C0
- D - I - 0x01596E 11:B95E: 10        .byte $10
- D - I - 0x01596F 11:B95F: 2A        .byte $2A
- D - I - 0x015970 11:B960: 11        .byte $11
- D - I - 0x015971 11:B961: 0C        .byte $0C
- D - I - 0x015972 11:B962: 85        .byte $85
- D - I - 0x015973 11:B963: CC        .byte $CC
- D - I - 0x015974 11:B964: 01        .byte $01
- D - I - 0x015975 11:B965: 12        .byte $12
- D - I - 0x015976 11:B966: C4        .byte $C4
- D - I - 0x015977 11:B967: 01        .byte $01
- D - I - 0x015978 11:B968: 18        .byte $18
- D - I - 0x015979 11:B969: 86        .byte $86
- D - I - 0x01597A 11:B96A: C4        .byte $C4
- D - I - 0x01597B 11:B96B: 00        .byte $00
- D - I - 0x01597C 11:B96C: 1A        .byte $1A
- D - I - 0x01597D 11:B96D: BF        .byte $BF
- D - I - 0x01597E 11:B96E: 33        .byte $33
- D - I - 0x01597F 11:B96F: 02        .byte $02
- D - I - 0x015980 11:B970: 37        .byte $37
- D - I - 0x015981 11:B971: 08        .byte $08
- D - I - 0x015982 11:B972: 39        .byte $39
- D - I - 0x015983 11:B973: 0A        .byte $0A
- D - I - 0x015984 11:B974: 3D        .byte $3D
- D - I - 0x015985 11:B975: 20        .byte $20
- D - I - 0x015986 11:B976: 01        .byte $01
- D - I - 0x015987 11:B977: 22        .byte $22
- D - I - 0x015988 11:B978: 05        .byte $05
- D - I - 0x015989 11:B979: 28        .byte $28
- D - I - 0x01598A 11:B97A: 06        .byte $06
- D - I - 0x01598B 11:B97B: 03        .byte $03
- D - I - 0x01598C 11:B97C: 0A        .byte $0A
- D - I - 0x01598D 11:B97D: 04        .byte $04
- D - I - 0x01598E 11:B97E: 83        .byte $83
- D - I - 0x01598F 11:B97F: CD        .byte $CD
- D - I - 0x015990 11:B980: 01        .byte $01
- D - I - 0x015991 11:B981: 06        .byte $06
- D - I - 0x015992 11:B982: C5        .byte $C5
- D - I - 0x015993 11:B983: 00        .byte $00
- D - I - 0x015994 11:B984: 07        .byte $07
- D - I - 0x015995 11:B985: 11        .byte $11
- D - I - 0x015996 11:B986: 0D        .byte $0D
- D - I - 0x015997 11:B987: A0        .byte $A0
- D - I - 0x015998 11:B988: 34        .byte $34
- D - I - 0x015999 11:B989: 09        .byte $09
- D - I - 0x01599A 11:B98A: 39        .byte $39
- D - I - 0x01599B 11:B98B: 0B        .byte $0B
- D - I - 0x01599C 11:B98C: 3D        .byte $3D
- D - I - 0x01599D 11:B98D: 21        .byte $21
- D - I - 0x01599E 11:B98E: 01        .byte $01
- D - I - 0x01599F 11:B98F: 23        .byte $23
- D - I - 0x0159A0 11:B990: 05        .byte $05
- D - I - 0x0159A1 11:B991: 29        .byte $29
- D - I - 0x0159A2 11:B992: 0A        .byte $0A
- D - I - 0x0159A3 11:B993: 05        .byte $05
- D - I - 0x0159A4 11:B994: A1        .byte $A1
- D - I - 0x0159A5 11:B995: 3D        .byte $3D
- D - I - 0x0159A6 11:B996: 24        .byte $24
- D - I - 0x0159A7 11:B997: 01        .byte $01
- D - I - 0x0159A8 11:B998: 26        .byte $26
- D - I - 0x0159A9 11:B999: 05        .byte $05
- D - I - 0x0159AA 11:B99A: 2C        .byte $2C
- D - I - 0x0159AB 11:B99B: 0A        .byte $0A
- D - I - 0x0159AC 11:B99C: 10        .byte $10
- D - I - 0x0159AD 11:B99D: A2        .byte $A2
- D - I - 0x0159AE 11:B99E: 00        .byte $00
- D - I - 0x0159AF 11:B99F: 27        .byte $27
- D - I - 0x0159B0 11:B9A0: 07        .byte $07
- D - I - 0x0159B1 11:B9A1: 2D        .byte $2D
- D - I - 0x0159B2 11:B9A2: 0B        .byte $0B
- D - I - 0x0159B3 11:B9A3: 2B        .byte $2B
- D - I - 0x0159B4 11:B9A4: A3        .byte $A3
- D - I - 0x0159B5 11:B9A5: 08        .byte $08
- D - I - 0x0159B6 11:B9A6: 2E        .byte $2E
- D - I - 0x0159B7 11:B9A7: 0C        .byte $0C
- D - I - 0x0159B8 11:B9A8: 2F        .byte $2F
- D - I - 0x0159B9 11:B9A9: FF        .byte $FF
off_B9AA:
- D - I - 0x0159BA 11:B9AA: BF        .byte $BF
- D - I - 0x0159BB 11:B9AB: 03        .byte $03
- D - I - 0x0159BC 11:B9AC: 5C        .byte $5C
- D - I - 0x0159BD 11:B9AD: 03        .byte $03
- D - I - 0x0159BE 11:B9AE: 56        .byte $56
- D - I - 0x0159BF 11:B9AF: 07        .byte $07
- D - I - 0x0159C0 11:B9B0: 5E        .byte $5E
- D - I - 0x0159C1 11:B9B1: 07        .byte $07
- D - I - 0x0159C2 11:B9B2: 70        .byte $70
- D - I - 0x0159C3 11:B9B3: 0B        .byte $0B
- D - I - 0x0159C4 11:B9B4: 74        .byte $74
- D - I - 0x0159C5 11:B9B5: 0B        .byte $0B
- D - I - 0x0159C6 11:B9B6: 5A        .byte $5A
- D - I - 0x0159C7 11:B9B7: A0        .byte $A0
- D - I - 0x0159C8 11:B9B8: 0B        .byte $0B
- D - I - 0x0159C9 11:B9B9: 5B        .byte $5B
- D - I - 0x0159CA 11:B9BA: A1        .byte $A1
- D - I - 0x0159CB 11:B9BB: 4B        .byte $4B
- D - I - 0x0159CC 11:B9BC: 5B        .byte $5B
- D - I - 0x0159CD 11:B9BD: A2        .byte $A2
- D - I - 0x0159CE 11:B9BE: 43        .byte $43
- D - I - 0x0159CF 11:B9BF: 5C        .byte $5C
- D - I - 0x0159D0 11:B9C0: 43        .byte $43
- D - I - 0x0159D1 11:B9C1: 56        .byte $56
- D - I - 0x0159D2 11:B9C2: 47        .byte $47
- D - I - 0x0159D3 11:B9C3: 5E        .byte $5E
- D - I - 0x0159D4 11:B9C4: 47        .byte $47
- D - I - 0x0159D5 11:B9C5: 70        .byte $70
- D - I - 0x0159D6 11:B9C6: 4B        .byte $4B
- D - I - 0x0159D7 11:B9C7: 74        .byte $74
- D - I - 0x0159D8 11:B9C8: 4B        .byte $4B
- D - I - 0x0159D9 11:B9C9: 5A        .byte $5A
- D - I - 0x0159DA 11:B9CA: FF        .byte $FF
off_B9CB:
- D - I - 0x0159DB 11:B9CB: 3A        .byte $3A
- D - I - 0x0159DC 11:B9CC: 03        .byte $03
- D - I - 0x0159DD 11:B9CD: A0        .byte $A0
- D - I - 0x0159DE 11:B9CE: 36        .byte $36
- D - I - 0x0159DF 11:B9CF: 04        .byte $04
- D - I - 0x0159E0 11:B9D0: 3A        .byte $3A
- D - I - 0x0159E1 11:B9D1: 06        .byte $06
- D - I - 0x0159E2 11:B9D2: 3E        .byte $3E
- D - I - 0x0159E3 11:B9D3: 0C        .byte $0C
- D - I - 0x0159E4 11:B9D4: 01        .byte $01
- D - I - 0x0159E5 11:B9D5: 0E        .byte $0E
- D - I - 0x0159E6 11:B9D6: 05        .byte $05
- D - I - 0x0159E7 11:B9D7: 24        .byte $24
- D - I - 0x0159E8 11:B9D8: 09        .byte $09
- D - I - 0x0159E9 11:B9D9: 26        .byte $26
- D - I - 0x0159EA 11:B9DA: 0A        .byte $0A
- D - I - 0x0159EB 11:B9DB: 2A        .byte $2A
- D - I - 0x0159EC 11:B9DC: 0E        .byte $0E
- D - I - 0x0159ED 11:B9DD: 2C        .byte $2C
- D - I - 0x0159EE 11:B9DE: A1        .byte $A1
- D - I - 0x0159EF 11:B9DF: 36        .byte $36
- D - I - 0x0159F0 11:B9E0: 05        .byte $05
- D - I - 0x0159F1 11:B9E1: 3A        .byte $3A
- D - I - 0x0159F2 11:B9E2: 07        .byte $07
- D - I - 0x0159F3 11:B9E3: 02        .byte $02
- D - I - 0x0159F4 11:B9E4: 0F        .byte $0F
- D - I - 0x0159F5 11:B9E5: 06        .byte $06
- D - I - 0x0159F6 11:B9E6: 25        .byte $25
- D - I - 0x0159F7 11:B9E7: A2        .byte $A2
- D - I - 0x0159F8 11:B9E8: 37        .byte $37
- D - I - 0x0159F9 11:B9E9: 10        .byte $10
- D - I - 0x0159FA 11:B9EA: 02        .byte $02
- D - I - 0x0159FB 11:B9EB: 1A        .byte $1A
- D - I - 0x0159FC 11:B9EC: A3        .byte $A3
- D - I - 0x0159FD 11:B9ED: 03        .byte $03
- D - I - 0x0159FE 11:B9EE: 1B        .byte $1B
- D - I - 0x0159FF 11:B9EF: FF        .byte $FF
off_B9F0:
- D - I - 0x015A00 11:B9F0: BD        .byte $BD
- D - I - 0x015A01 11:B9F1: 13        .byte $13
- D - I - 0x015A02 11:B9F2: B1        .byte $B1
off_B9F3:
- D - I - 0x015A03 11:B9F3: 0F        .byte $0F
- D - I - 0x015A04 11:B9F4: 9B        .byte $9B
- D - I - 0x015A05 11:B9F5: 0A        .byte $0A
- D - I - 0x015A06 11:B9F6: 99        .byte $99
- D - I - 0x015A07 11:B9F7: BE        .byte $BE
- D - I - 0x015A08 11:B9F8: 0B        .byte $0B
- D - I - 0x015A09 11:B9F9: 9C        .byte $9C
- D - I - 0x015A0A 11:B9FA: 0F        .byte $0F
- D - I - 0x015A0B 11:B9FB: 4B        .byte $4B
- D - I - 0x015A0C 11:B9FC: 13        .byte $13
- D - I - 0x015A0D 11:B9FD: B4        .byte $B4
- D - I - 0x015A0E 11:B9FE: BF        .byte $BF
- D - I - 0x015A0F 11:B9FF: 0B        .byte $0B
- D - I - 0x015A10 11:BA00: 9D        .byte $9D
- D - I - 0x015A11 11:BA01: 09        .byte $09
- D - I - 0x015A12 11:BA02: 02        .byte $02
- D - I - 0x015A13 11:BA03: 0F        .byte $0F
- D - I - 0x015A14 11:BA04: 9F        .byte $9F
- D - I - 0x015A15 11:BA05: FE        .byte $FE
off_BA06:
- D - I - 0x015A16 11:BA06: BD        .byte $BD
- D - I - 0x015A17 11:BA07: 17        .byte $17
- D - I - 0x015A18 11:BA08: 29        .byte $29
- D - I - 0x015A19 11:BA09: BE        .byte $BE
- D - I - 0x015A1A 11:BA0A: 15        .byte $15
- D - I - 0x015A1B 11:BA0B: 2B        .byte $2B
- D - I - 0x015A1C 11:BA0C: 19        .byte $19
- D - I - 0x015A1D 11:BA0D: 0E        .byte $0E
- D - I - 0x015A1E 11:BA0E: BF        .byte $BF
- D - I - 0x015A1F 11:BA0F: 0E        .byte $0E
- D - I - 0x015A20 11:BA10: 04        .byte $04
- D - I - 0x015A21 11:BA11: 12        .byte $12
- D - I - 0x015A22 11:BA12: 06        .byte $06
- D - I - 0x015A23 11:BA13: 15        .byte $15
- D - I - 0x015A24 11:BA14: 0C        .byte $0C
- D - I - 0x015A25 11:BA15: 19        .byte $19
- D - I - 0x015A26 11:BA16: 0F        .byte $0F
- D - I - 0x015A27 11:BA17: A0        .byte $A0
- D - I - 0x015A28 11:BA18: 2F        .byte $2F
- D - I - 0x015A29 11:BA19: 02        .byte $02
- D - I - 0x015A2A 11:BA1A: 30        .byte $30
- D - I - 0x015A2B 11:BA1B: 08        .byte $08
- D - I - 0x015A2C 11:BA1C: 34        .byte $34
- D - I - 0x015A2D 11:BA1D: 0A        .byte $0A
- D - I - 0x015A2E 11:BA1E: 38        .byte $38
- D - I - 0x015A2F 11:BA1F: 20        .byte $20
- D - I - 0x015A30 11:BA20: 3D        .byte $3D
- D - I - 0x015A31 11:BA21: 22        .byte $22
- D - I - 0x015A32 11:BA22: 01        .byte $01
- D - I - 0x015A33 11:BA23: 28        .byte $28
- D - I - 0x015A34 11:BA24: 0E        .byte $0E
- D - I - 0x015A35 11:BA25: 05        .byte $05
- D - I - 0x015A36 11:BA26: 13        .byte $13
- D - I - 0x015A37 11:BA27: 07        .byte $07
- D - I - 0x015A38 11:BA28: 17        .byte $17
- D - I - 0x015A39 11:BA29: 0D        .byte $0D
- D - I - 0x015A3A 11:BA2A: 18        .byte $18
- D - I - 0x015A3B 11:BA2B: 1A        .byte $1A
- D - I - 0x015A3C 11:BA2C: A1        .byte $A1
- D - I - 0x015A3D 11:BA2D: 2F        .byte $2F
- D - I - 0x015A3E 11:BA2E: 03        .byte $03
- D - I - 0x015A3F 11:BA2F: 33        .byte $33
- D - I - 0x015A40 11:BA30: 09        .byte $09
- D - I - 0x015A41 11:BA31: 37        .byte $37
- D - I - 0x015A42 11:BA32: 0B        .byte $0B
- D - I - 0x015A43 11:BA33: 38        .byte $38
- D - I - 0x015A44 11:BA34: 41        .byte $41
- D - I - 0x015A45 11:BA35: 3D        .byte $3D
- D - I - 0x015A46 11:BA36: 43        .byte $43
- D - I - 0x015A47 11:BA37: 01        .byte $01
- D - I - 0x015A48 11:BA38: 49        .byte $49
- D - I - 0x015A49 11:BA39: 0E        .byte $0E
- D - I - 0x015A4A 11:BA3A: 10        .byte $10
- D - I - 0x015A4B 11:BA3B: 13        .byte $13
- D - I - 0x015A4C 11:BA3C: 12        .byte $12
- D - I - 0x015A4D 11:BA3D: 17        .byte $17
- D - I - 0x015A4E 11:BA3E: 18        .byte $18
- D - I - 0x015A4F 11:BA3F: A2        .byte $A2
- D - I - 0x015A50 11:BA40: 38        .byte $38
- D - I - 0x015A51 11:BA41: 44        .byte $44
- D - I - 0x015A52 11:BA42: 3C        .byte $3C
- D - I - 0x015A53 11:BA43: 46        .byte $46
- D - I - 0x015A54 11:BA44: 3D        .byte $3D
- D - I - 0x015A55 11:BA45: 27        .byte $27
- D - I - 0x015A56 11:BA46: 01        .byte $01
- D - I - 0x015A57 11:BA47: 4C        .byte $4C
- D - I - 0x015A58 11:BA48: 05        .byte $05
- D - I - 0x015A59 11:BA49: 2F        .byte $2F
- D - I - 0x015A5A 11:BA4A: 07        .byte $07
- D - I - 0x015A5B 11:BA4B: 2E        .byte $2E
- D - I - 0x015A5C 11:BA4C: 09        .byte $09
- D - I - 0x015A5D 11:BA4D: 2A        .byte $2A
- D - I - 0x015A5E 11:BA4E: 0F        .byte $0F
- D - I - 0x015A5F 11:BA4F: 23        .byte $23
- D - I - 0x015A60 11:BA50: A3        .byte $A3
- D - I - 0x015A61 11:BA51: 38        .byte $38
- D - I - 0x015A62 11:BA52: 30        .byte $30
- D - I - 0x015A63 11:BA53: 3C        .byte $3C
- D - I - 0x015A64 11:BA54: 32        .byte $32
- D - I - 0x015A65 11:BA55: 00        .byte $00
- D - I - 0x015A66 11:BA56: 4B        .byte $4B
- D - I - 0x015A67 11:BA57: 04        .byte $04
- D - I - 0x015A68 11:BA58: 61        .byte $61
- D - I - 0x015A69 11:BA59: 08        .byte $08
- D - I - 0x015A6A 11:BA5A: 11        .byte $11
- D - I - 0x015A6B 11:BA5B: 0F        .byte $0F
- D - I - 0x015A6C 11:BA5C: 21        .byte $21
- D - I - 0x015A6D 11:BA5D: A4        .byte $A4
- D - I - 0x015A6E 11:BA5E: 3C        .byte $3C
- D - I - 0x015A6F 11:BA5F: 13        .byte $13
- D - I - 0x015A70 11:BA60: 00        .byte $00
- D - I - 0x015A71 11:BA61: 19        .byte $19
- D - I - 0x015A72 11:BA62: 04        .byte $04
- D - I - 0x015A73 11:BA63: 1B        .byte $1B
- D - I - 0x015A74 11:BA64: FF        .byte $FF
off_BA65:
- D - I - 0x015A75 11:BA65: BF        .byte $BF
- D - I - 0x015A76 11:BA66: 07        .byte $07
- D - I - 0x015A77 11:BA67: 58        .byte $58
- D - I - 0x015A78 11:BA68: 0B        .byte $0B
- D - I - 0x015A79 11:BA69: 5A        .byte $5A
- D - I - 0x015A7A 11:BA6A: A1        .byte $A1
- D - I - 0x015A7B 11:BA6B: 0F        .byte $0F
- D - I - 0x015A7C 11:BA6C: 74        .byte $74
- D - I - 0x015A7D 11:BA6D: A0        .byte $A0
- D - I - 0x015A7E 11:BA6E: 0F        .byte $0F
- D - I - 0x015A7F 11:BA6F: 71        .byte $71
- D - I - 0x015A80 11:BA70: FE        .byte $FE
off_BA71:
- D - I - 0x015A81 11:BA71: A2        .byte $A2
- D - I - 0x015A82 11:BA72: 07        .byte $07
- D - I - 0x015A83 11:BA73: 5D        .byte $5D
- D - I - 0x015A84 11:BA74: 0B        .byte $0B
- D - I - 0x015A85 11:BA75: 5F        .byte $5F
- D - I - 0x015A86 11:BA76: A1        .byte $A1
- D - I - 0x015A87 11:BA77: 03        .byte $03
- D - I - 0x015A88 11:BA78: 57        .byte $57
- D - I - 0x015A89 11:BA79: A0        .byte $A0
- D - I - 0x015A8A 11:BA7A: 03        .byte $03
- D - I - 0x015A8B 11:BA7B: 55        .byte $55
off_BA7C:
- D - I - 0x015A8C 11:BA7C: 07        .byte $07
- D - I - 0x015A8D 11:BA7D: 59        .byte $59
- D - I - 0x015A8E 11:BA7E: 0B        .byte $0B
- D - I - 0x015A8F 11:BA7F: 5B        .byte $5B
- D - I - 0x015A90 11:BA80: A1        .byte $A1
- D - I - 0x015A91 11:BA81: 07        .byte $07
- D - I - 0x015A92 11:BA82: 5C        .byte $5C
- D - I - 0x015A93 11:BA83: 0B        .byte $0B
- D - I - 0x015A94 11:BA84: 5E        .byte $5E
- D - I - 0x015A95 11:BA85: FB        .byte con_jmp
- D - I - 0x015A96 11:BA86: 06 BA     .word off_BA06
off_BA88:
- D - I - 0x015A98 11:BA88: A0        .byte $A0
- D - I - 0x015A99 11:BA89: 0F        .byte $0F
- D - I - 0x015A9A 11:BA8A: 37        .byte $37
- D - I - 0x015A9B 11:BA8B: 13        .byte $13
- D - I - 0x015A9C 11:BA8C: 3D        .byte $3D
- D - I - 0x015A9D 11:BA8D: 17        .byte $17
- D - I - 0x015A9E 11:BA8E: 3F        .byte $3F
- D - I - 0x015A9F 11:BA8F: A1        .byte $A1
- D - I - 0x015AA0 11:BA90: 0F        .byte $0F
- D - I - 0x015AA1 11:BA91: 62        .byte $62
- D - I - 0x015AA2 11:BA92: 13        .byte $13
- D - I - 0x015AA3 11:BA93: 68        .byte $68
- D - I - 0x015AA4 11:BA94: 17        .byte $17
- D - I - 0x015AA5 11:BA95: 6A        .byte $6A
- D - I - 0x015AA6 11:BA96: A2        .byte $A2
- D - I - 0x015AA7 11:BA97: 09        .byte $09
- D - I - 0x015AA8 11:BA98: 61        .byte $61
- D - I - 0x015AA9 11:BA99: 0D        .byte $0D
- D - I - 0x015AAA 11:BA9A: 63        .byte $63
- D - I - 0x015AAB 11:BA9B: 13        .byte $13
- D - I - 0x015AAC 11:BA9C: 69        .byte $69
- D - I - 0x015AAD 11:BA9D: A3        .byte $A3
- D - I - 0x015AAE 11:BA9E: 05        .byte $05
- D - I - 0x015AAF 11:BA9F: 1D        .byte $1D
- D - I - 0x015AB0 11:BAA0: 09        .byte $09
- D - I - 0x015AB1 11:BAA1: 1F        .byte $1F
- D - I - 0x015AB2 11:BAA2: 0D        .byte $0D
- D - I - 0x015AB3 11:BAA3: 35        .byte $35
- D - I - 0x015AB4 11:BAA4: A4        .byte $A4
- D - I - 0x015AB5 11:BAA5: 05        .byte $05
- D - I - 0x015AB6 11:BAA6: 48        .byte $48
- D - I - 0x015AB7 11:BAA7: 09        .byte $09
- D - I - 0x015AB8 11:BAA8: 4A        .byte $4A
- D - I - 0x015AB9 11:BAA9: A5        .byte $A5
- D - I - 0x015ABA 11:BAAA: 2F        .byte $2F
- D - I - 0x015ABB 11:BAAB: 66        .byte $66
- D - I - 0x015ABC 11:BAAC: 03        .byte $03
- D - I - 0x015ABD 11:BAAD: 43        .byte $43
- D - I - 0x015ABE 11:BAAE: 07        .byte $07
- D - I - 0x015ABF 11:BAAF: 49        .byte $49
- D - I - 0x015AC0 11:BAB0: A6        .byte $A6
- D - I - 0x015AC1 11:BAB1: 2E        .byte $2E
- D - I - 0x015AC2 11:BAB2: 67        .byte $67
- D - I - 0x015AC3 11:BAB3: 33        .byte $33
- D - I - 0x015AC4 11:BAB4: 6D        .byte $6D
- D - I - 0x015AC5 11:BAB5: 37        .byte $37
- D - I - 0x015AC6 11:BAB6: 6F        .byte $6F
- D - I - 0x015AC7 11:BAB7: 3E        .byte $3E
- D - I - 0x015AC8 11:BAB8: 44        .byte $44
- D - I - 0x015AC9 11:BAB9: 02        .byte $02
- D - I - 0x015ACA 11:BABA: 46        .byte $46
- D - I - 0x015ACB 11:BABB: 07        .byte $07
- D - I - 0x015ACC 11:BABC: 4C        .byte $4C
- D - I - 0x015ACD 11:BABD: A7        .byte $A7
- D - I - 0x015ACE 11:BABE: 33        .byte $33
- D - I - 0x015ACF 11:BABF: 78        .byte $78
- D - I - 0x015AD0 11:BAC0: 35        .byte $35
- D - I - 0x015AD1 11:BAC1: 40        .byte $40
- D - I - 0x015AD2 11:BAC2: 39        .byte $39
- D - I - 0x015AD3 11:BAC3: 42        .byte $42
- D - I - 0x015AD4 11:BAC4: 3D        .byte $3D
- D - I - 0x015AD5 11:BAC5: 45        .byte $45
- D - I - 0x015AD6 11:BAC6: 01        .byte $01
- D - I - 0x015AD7 11:BAC7: 47        .byte $47
- D - I - 0x015AD8 11:BAC8: 02        .byte $02
- D - I - 0x015AD9 11:BAC9: 50        .byte $50
- D - I - 0x015ADA 11:BACA: 06        .byte $06
- D - I - 0x015ADB 11:BACB: 4D        .byte $4D
- D - I - 0x015ADC 11:BACC: 0B        .byte $0B
- D - I - 0x015ADD 11:BACD: 4F        .byte $4F
- D - I - 0x015ADE 11:BACE: 0F        .byte $0F
- D - I - 0x015ADF 11:BACF: 65        .byte $65
- D - I - 0x015AE0 11:BAD0: A8        .byte $A8
- D - I - 0x015AE1 11:BAD1: 35        .byte $35
- D - I - 0x015AE2 11:BAD2: 41        .byte $41
- D - I - 0x015AE3 11:BAD3: 3D        .byte $3D
- D - I - 0x015AE4 11:BAD4: 50        .byte $50
- D - I - 0x015AE5 11:BAD5: 01        .byte $01
- D - I - 0x015AE6 11:BAD6: 52        .byte $52
- D - I - 0x015AE7 11:BAD7: 06        .byte $06
- D - I - 0x015AE8 11:BAD8: 58        .byte $58
- D - I - 0x015AE9 11:BAD9: 0B        .byte $0B
- D - I - 0x015AEA 11:BADA: 5A        .byte $5A
- D - I - 0x015AEB 11:BADB: A9        .byte $A9
- D - I - 0x015AEC 11:BADC: 3D        .byte $3D
- D - I - 0x015AED 11:BADD: 51        .byte $51
- D - I - 0x015AEE 11:BADE: 01        .byte $01
- D - I - 0x015AEF 11:BADF: 53        .byte $53
- D - I - 0x015AF0 11:BAE0: 06        .byte $06
- D - I - 0x015AF1 11:BAE1: 59        .byte $59
- D - I - 0x015AF2 11:BAE2: AA        .byte $AA
- D - I - 0x015AF3 11:BAE3: 3D        .byte $3D
- D - I - 0x015AF4 11:BAE4: 54        .byte $54
- D - I - 0x015AF5 11:BAE5: 03        .byte $03
- D - I - 0x015AF6 11:BAE6: 56        .byte $56
- D - I - 0x015AF7 11:BAE7: AB        .byte $AB
- D - I - 0x015AF8 11:BAE8: 3F        .byte $3F
- D - I - 0x015AF9 11:BAE9: 55        .byte $55
- D - I - 0x015AFA 11:BAEA: 03        .byte $03
- D - I - 0x015AFB 11:BAEB: 57        .byte $57
- D - I - 0x015AFC 11:BAEC: FE        .byte $FE
off_BAED:
- D - I - 0x015AFD 11:BAED: 37        .byte $37
- D - I - 0x015AFE 11:BAEE: 02        .byte $02
- D - I - 0x015AFF 11:BAEF: 3B        .byte $3B
- D - I - 0x015B00 11:BAF0: 02        .byte $02
- D - I - 0x015B01 11:BAF1: 3F        .byte $3F
- D - I - 0x015B02 11:BAF2: 02        .byte $02
- D - I - 0x015B03 11:BAF3: 03        .byte $03
- D - I - 0x015B04 11:BAF4: 02        .byte $02
- D - I - 0x015B05 11:BAF5: 07        .byte $07
- D - I - 0x015B06 11:BAF6: 02        .byte $02
- D - I - 0x015B07 11:BAF7: 0B        .byte $0B
- D - I - 0x015B08 11:BAF8: 02        .byte $02
- D - I - 0x015B09 11:BAF9: 0F        .byte $0F
- D - I - 0x015B0A 11:BAFA: 02        .byte $02
- D - I - 0x015B0B 11:BAFB: FE        .byte $FE
off_BAFC:
- D - I - 0x015B0C 11:BAFC: BD        .byte $BD
- D - I - 0x015B0D 11:BAFD: 03        .byte $03
- D - I - 0x015B0E 11:BAFE: 22        .byte $22
- D - I - 0x015B0F 11:BAFF: 06        .byte $06
- D - I - 0x015B10 11:BB00: 28        .byte $28
- D - I - 0x015B11 11:BB01: BE        .byte $BE
- D - I - 0x015B12 11:BB02: 3F        .byte $3F
- D - I - 0x015B13 11:BB03: 08        .byte $08
- D - I - 0x015B14 11:BB04: 03        .byte $03
- D - I - 0x015B15 11:BB05: 0A        .byte $0A
- D - I - 0x015B16 11:BB06: 07        .byte $07
- D - I - 0x015B17 11:BB07: 20        .byte $20
- D - I - 0x015B18 11:BB08: BF        .byte $BF
- D - I - 0x015B19 11:BB09: 3F        .byte $3F
- D - I - 0x015B1A 11:BB0A: 09        .byte $09
- D - I - 0x015B1B 11:BB0B: 3E        .byte $3E
- D - I - 0x015B1C 11:BB0C: 02        .byte $02
- D - I - 0x015B1D 11:BB0D: 03        .byte $03
- D - I - 0x015B1E 11:BB0E: 0B        .byte $0B
- D - I - 0x015B1F 11:BB0F: 07        .byte $07
- D - I - 0x015B20 11:BB10: 21        .byte $21
- D - I - 0x015B21 11:BB11: FB        .byte con_jmp
- D - I - 0x015B22 11:BB12: CB B9     .word off_B9CB
off_BB14:
- D - I - 0x015B24 11:BB14: BD        .byte $BD
- D - I - 0x015B25 11:BB15: 38        .byte $38
- D - I - 0x015B26 11:BB16: 30        .byte $30
- D - I - 0x015B27 11:BB17: 3C        .byte $3C
- D - I - 0x015B28 11:BB18: 32        .byte $32
- D - I - 0x015B29 11:BB19: 00        .byte $00
- D - I - 0x015B2A 11:BB1A: 38        .byte $38
- D - I - 0x015B2B 11:BB1B: 06        .byte $06
- D - I - 0x015B2C 11:BB1C: 3A        .byte $3A
- D - I - 0x015B2D 11:BB1D: BE        .byte $BE
- D - I - 0x015B2E 11:BB1E: 38        .byte $38
- D - I - 0x015B2F 11:BB1F: 31        .byte $31
- D - I - 0x015B30 11:BB20: 3C        .byte $3C
- D - I - 0x015B31 11:BB21: 01        .byte $01
- D - I - 0x015B32 11:BB22: 00        .byte $00
- D - I - 0x015B33 11:BB23: 3C        .byte $3C
- D - I - 0x015B34 11:BB24: 07        .byte $07
- D - I - 0x015B35 11:BB25: 3B        .byte $3B
- D - I - 0x015B36 11:BB26: BF        .byte $BF
- D - I - 0x015B37 11:BB27: 3A        .byte $3A
- D - I - 0x015B38 11:BB28: 34        .byte $34
- D - I - 0x015B39 11:BB29: 3C        .byte $3C
- D - I - 0x015B3A 11:BB2A: 01        .byte $01
- D - I - 0x015B3B 11:BB2B: 00        .byte $00
- D - I - 0x015B3C 11:BB2C: 3C        .byte $3C
- D - I - 0x015B3D 11:BB2D: 07        .byte $07
- D - I - 0x015B3E 11:BB2E: 3E        .byte $3E
- D - I - 0x015B3F 11:BB2F: A0        .byte $A0
- D - I - 0x015B40 11:BB30: 37        .byte $37
- D - I - 0x015B41 11:BB31: 1F        .byte $1F
- D - I - 0x015B42 11:BB32: 3A        .byte $3A
- D - I - 0x015B43 11:BB33: 35        .byte $35
- D - I - 0x015B44 11:BB34: 3E        .byte $3E
- D - I - 0x015B45 11:BB35: 37        .byte $37
- D - I - 0x015B46 11:BB36: 01        .byte $01
- D - I - 0x015B47 11:BB37: 3D        .byte $3D
- D - I - 0x015B48 11:BB38: 05        .byte $05
- D - I - 0x015B49 11:BB39: 3F        .byte $3F
- D - I - 0x015B4A 11:BB3A: 09        .byte $09
- D - I - 0x015B4B 11:BB3B: 26        .byte $26
- D - I - 0x015B4C 11:BB3C: 0A        .byte $0A
- D - I - 0x015B4D 11:BB3D: 2A        .byte $2A
- D - I - 0x015B4E 11:BB3E: 0E        .byte $0E
- D - I - 0x015B4F 11:BB3F: 2C        .byte $2C
- D - I - 0x015B50 11:BB40: A1        .byte $A1
- D - I - 0x015B51 11:BB41: 37        .byte $37
- D - I - 0x015B52 11:BB42: 27        .byte $27
- D - I - 0x015B53 11:BB43: 3B        .byte $3B
- D - I - 0x015B54 11:BB44: 2D        .byte $2D
- D - I - 0x015B55 11:BB45: 03        .byte $03
- D - I - 0x015B56 11:BB46: 33        .byte $33
- D - I - 0x015B57 11:BB47: 02        .byte $02
- D - I - 0x015B58 11:BB48: 1E        .byte $1E
- D - I - 0x015B59 11:BB49: 07        .byte $07
- D - I - 0x015B5A 11:BB4A: 39        .byte $39
- D - I - 0x015B5B 11:BB4B: 06        .byte $06
- D - I - 0x015B5C 11:BB4C: 2F        .byte $2F
- D - I - 0x015B5D 11:BB4D: A2        .byte $A2
- D - I - 0x015B5E 11:BB4E: 37        .byte $37
- D - I - 0x015B5F 11:BB4F: 10        .byte $10
- D - I - 0x015B60 11:BB50: 03        .byte $03
- D - I - 0x015B61 11:BB51: 36        .byte $36
- D - I - 0x015B62 11:BB52: A3        .byte $A3
- D - I - 0x015B63 11:BB53: 03        .byte $03
- D - I - 0x015B64 11:BB54: 1B        .byte $1B
- D - I - 0x015B65 11:BB55: FF        .byte $FF
off_BB56:
- D - I - 0x015B66 11:BB56: BD        .byte $BD
- D - I - 0x015B67 11:BB57: 00        .byte $00
- D - I - 0x015B68 11:BB58: 15        .byte $15
- D - I - 0x015B69 11:BB59: 04        .byte $04
- D - I - 0x015B6A 11:BB5A: 44        .byte $44
- D - I - 0x015B6B 11:BB5B: BE        .byte $BE
- D - I - 0x015B6C 11:BB5C: 3C        .byte $3C
- D - I - 0x015B6D 11:BB5D: 11        .byte $11
- D - I - 0x015B6E 11:BB5E: 00        .byte $00
- D - I - 0x015B6F 11:BB5F: 29        .byte $29
- D - I - 0x015B70 11:BB60: 04        .byte $04
- D - I - 0x015B71 11:BB61: 2B        .byte $2B
- D - I - 0x015B72 11:BB62: BF        .byte $BF
- D - I - 0x015B73 11:BB63: 3C        .byte $3C
- D - I - 0x015B74 11:BB64: 14        .byte $14
- D - I - 0x015B75 11:BB65: 3E        .byte $3E
- D - I - 0x015B76 11:BB66: 02        .byte $02
- D - I - 0x015B77 11:BB67: 00        .byte $00
- D - I - 0x015B78 11:BB68: 23        .byte $23
- D - I - 0x015B79 11:BB69: 07        .byte $07
- D - I - 0x015B7A 11:BB6A: 2E        .byte $2E
- D - I - 0x015B7B 11:BB6B: FB        .byte con_jmp
- D - I - 0x015B7C 11:BB6C: CB B9     .word off_B9CB
off_BB6E:
- D - I - 0x015B7E 11:BB6E: BD        .byte $BD
- D - I - 0x015B7F 11:BB6F: 00        .byte $00
- D - I - 0x015B80 11:BB70: 15        .byte $15
- D - I - 0x015B81 11:BB71: 04        .byte $04
- D - I - 0x015B82 11:BB72: 17        .byte $17
- D - I - 0x015B83 11:BB73: 06        .byte $06
- D - I - 0x015B84 11:BB74: 1D        .byte $1D
- D - I - 0x015B85 11:BB75: BE        .byte $BE
- D - I - 0x015B86 11:BB76: 3C        .byte $3C
- D - I - 0x015B87 11:BB77: 11        .byte $11
- D - I - 0x015B88 11:BB78: 00        .byte $00
- D - I - 0x015B89 11:BB79: 29        .byte $29
- D - I - 0x015B8A 11:BB7A: 04        .byte $04
- D - I - 0x015B8B 11:BB7B: 46        .byte $46
- D - I - 0x015B8C 11:BB7C: BF        .byte $BF
- D - I - 0x015B8D 11:BB7D: 3C        .byte $3C
- D - I - 0x015B8E 11:BB7E: 14        .byte $14
- D - I - 0x015B8F 11:BB7F: 3E        .byte $3E
- D - I - 0x015B90 11:BB80: 02        .byte $02
- D - I - 0x015B91 11:BB81: 00        .byte $00
- D - I - 0x015B92 11:BB82: 45        .byte $45
- D - I - 0x015B93 11:BB83: 07        .byte $07
- D - I - 0x015B94 11:BB84: 3E        .byte $3E
- D - I - 0x015B95 11:BB85: FB        .byte con_jmp
- D - I - 0x015B96 11:BB86: CB B9     .word off_B9CB
off_BB88:
- D - I - 0x015B98 11:BB88: BD        .byte $BD
- D - I - 0x015B99 11:BB89: 0A        .byte $0A
- D - I - 0x015B9A 11:BB8A: 90        .byte $90
- D - I - 0x015B9B 11:BB8B: 0E        .byte $0E
- D - I - 0x015B9C 11:BB8C: 92        .byte $92
- D - I - 0x015B9D 11:BB8D: 12        .byte $12
- D - I - 0x015B9E 11:BB8E: 98        .byte $98
- D - I - 0x015B9F 11:BB8F: BE        .byte $BE
- D - I - 0x015BA0 11:BB90: 09        .byte $09
- D - I - 0x015BA1 11:BB91: 91        .byte $91
- D - I - 0x015BA2 11:BB92: 0A        .byte $0A
- D - I - 0x015BA3 11:BB93: 02        .byte $02
- D - I - 0x015BA4 11:BB94: 0E        .byte $0E
- D - I - 0x015BA5 11:BB95: 93        .byte $93
- D - I - 0x015BA6 11:BB96: BF        .byte $BF
- D - I - 0x015BA7 11:BB97: 09        .byte $09
- D - I - 0x015BA8 11:BB98: 94        .byte $94
- D - I - 0x015BA9 11:BB99: 0E        .byte $0E
- D - I - 0x015BAA 11:BB9A: 96        .byte $96
- D - I - 0x015BAB 11:BB9B: FE        .byte $FE
off_BB9C:
- D - I - 0x015BAC 11:BB9C: FA        .byte con_jsr
- D - I - 0x015BAD 11:BB9D: F0 B9     .word off_B9F0
- D - I - 0x015BAF 11:BB9F: 13        .byte $13
- D - I - 0x015BB0 11:BBA0: B5        .byte $B5
- D - I - 0x015BB1 11:BBA1: FE        .byte $FE
off_BBA2:
- D - I - 0x015BB2 11:BBA2: BC        .byte $BC
- D - I - 0x015BB3 11:BBA3: 0F        .byte $0F
- D - I - 0x015BB4 11:BBA4: 8D        .byte $8D
- D - I - 0x015BB5 11:BBA5: 13        .byte $13
- D - I - 0x015BB6 11:BBA6: 8F        .byte $8F
- D - I - 0x015BB7 11:BBA7: BD        .byte $BD
- D - I - 0x015BB8 11:BBA8: 13        .byte $13
- D - I - 0x015BB9 11:BBA9: 9A        .byte $9A
- D - I - 0x015BBA 11:BBAA: FA        .byte con_jsr
- D - I - 0x015BBB 11:BBAB: F3 B9     .word off_B9F3
- D - I - 0x015BBD 11:BBAD: 13        .byte $13
- D - I - 0x015BBE 11:BBAE: B5        .byte $B5
- D - I - 0x015BBF 11:BBAF: FE        .byte $FE
off_BBB0:
- D - I - 0x015BC0 11:BBB0: BC        .byte $BC
- D - I - 0x015BC1 11:BBB1: 0F        .byte $0F
- D - I - 0x015BC2 11:BBB2: AC        .byte $AC
- D - I - 0x015BC3 11:BBB3: 13        .byte $13
- D - I - 0x015BC4 11:BBB4: AE        .byte $AE
- D - I - 0x015BC5 11:BBB5: BD        .byte $BD
- D - I - 0x015BC6 11:BBB6: 13        .byte $13
- D - I - 0x015BC7 11:BBB7: AF        .byte $AF
- D - I - 0x015BC8 11:BBB8: FA        .byte con_jsr
- D - I - 0x015BC9 11:BBB9: F3 B9     .word off_B9F3
- D - I - 0x015BCB 11:BBBB: 13        .byte $13
- D - I - 0x015BCC 11:BBBC: B5        .byte $B5
- D - I - 0x015BCD 11:BBBD: FE        .byte $FE
off_BBBE:
- D - I - 0x015BCE 11:BBBE: BE        .byte $BE
- D - I - 0x015BCF 11:BBBF: 17        .byte $17
- D - I - 0x015BD0 11:BBC0: A5        .byte $A5
- D - I - 0x015BD1 11:BBC1: FA        .byte con_jsr
- D - I - 0x015BD2 11:BBC2: F0 B9     .word off_B9F0
- D - I - 0x015BD4 11:BBC4: 13        .byte $13
- D - I - 0x015BD5 11:BBC5: B0        .byte $B0
- D - I - 0x015BD6 11:BBC6: 17        .byte $17
- D - I - 0x015BD7 11:BBC7: B2        .byte $B2
- D - I - 0x015BD8 11:BBC8: FE        .byte $FE
off_BBC9:
- D - I - 0x015BD9 11:BBC9: BE        .byte $BE
- D - I - 0x015BDA 11:BBCA: 17        .byte $17
- D - I - 0x015BDB 11:BBCB: AA        .byte $AA
- D - I - 0x015BDC 11:BBCC: FA        .byte con_jsr
- D - I - 0x015BDD 11:BBCD: F0 B9     .word off_B9F0
- D - I - 0x015BDF 11:BBCF: 13        .byte $13
- D - I - 0x015BE0 11:BBD0: B8        .byte $B8
- D - I - 0x015BE1 11:BBD1: 17        .byte $17
- D - I - 0x015BE2 11:BBD2: AB        .byte $AB
- D - I - 0x015BE3 11:BBD3: FE        .byte $FE
off_BBD4:
- D - I - 0x015BE4 11:BBD4: A7        .byte $A7
- D - I - 0x015BE5 11:BBD5: 38        .byte $38
- D - I - 0x015BE6 11:BBD6: 0C        .byte $0C
- D - I - 0x015BE7 11:BBD7: A8        .byte $A8
- D - I - 0x015BE8 11:BBD8: 34        .byte $34
- D - I - 0x015BE9 11:BBD9: 07        .byte $07
- D - I - 0x015BEA 11:BBDA: 38        .byte $38
- D - I - 0x015BEB 11:BBDB: 0D        .byte $0D
- D - I - 0x015BEC 11:BBDC: 3F        .byte $3F
- D - I - 0x015BED 11:BBDD: 0F        .byte $0F
- D - I - 0x015BEE 11:BBDE: A9        .byte $A9
- D - I - 0x015BEF 11:BBDF: 34        .byte $34
- D - I - 0x015BF0 11:BBE0: 12        .byte $12
- D - I - 0x015BF1 11:BBE1: 38        .byte $38
- D - I - 0x015BF2 11:BBE2: 18        .byte $18
- D - I - 0x015BF3 11:BBE3: 3C        .byte $3C
- D - I - 0x015BF4 11:BBE4: 1A        .byte $1A
- D - I - 0x015BF5 11:BBE5: FB        .byte con_jmp
- D - I - 0x015BF6 11:BBE6: 88 BA     .word off_BA88
off_BBE8:
- D - I - 0x015BF8 11:BBE8: A7        .byte $A7
- D - I - 0x015BF9 11:BBE9: 38        .byte $38
- D - I - 0x015BFA 11:BBEA: 0C        .byte $0C
- D - I - 0x015BFB 11:BBEB: A8        .byte $A8
- D - I - 0x015BFC 11:BBEC: 34        .byte $34
- D - I - 0x015BFD 11:BBED: 11        .byte $11
- D - I - 0x015BFE 11:BBEE: 38        .byte $38
- D - I - 0x015BFF 11:BBEF: 13        .byte $13
- D - I - 0x015C00 11:BBF0: 3F        .byte $3F
- D - I - 0x015C01 11:BBF1: 19        .byte $19
- D - I - 0x015C02 11:BBF2: A9        .byte $A9
- D - I - 0x015C03 11:BBF3: 34        .byte $34
- D - I - 0x015C04 11:BBF4: 14        .byte $14
- D - I - 0x015C05 11:BBF5: 38        .byte $38
- D - I - 0x015C06 11:BBF6: 16        .byte $16
- D - I - 0x015C07 11:BBF7: 3C        .byte $3C
- D - I - 0x015C08 11:BBF8: 1C        .byte $1C
- D - I - 0x015C09 11:BBF9: AA        .byte $AA
- D - I - 0x015C0A 11:BBFA: 30        .byte $30
- D - I - 0x015C0B 11:BBFB: 10        .byte $10
- D - I - 0x015C0C 11:BBFC: 34        .byte $34
- D - I - 0x015C0D 11:BBFD: 15        .byte $15
- D - I - 0x015C0E 11:BBFE: 38        .byte $38
- D - I - 0x015C0F 11:BBFF: 17        .byte $17
- D - I - 0x015C10 11:BC00: FB        .byte con_jmp
- D - I - 0x015C11 11:BC01: 88 BA     .word off_BA88
off_BC03:
- D - I - 0x015C13 11:BC03: A7        .byte $A7
- D - I - 0x015C14 11:BC04: 38        .byte $38
- D - I - 0x015C15 11:BC05: 0E        .byte $0E
- D - I - 0x015C16 11:BC06: A8        .byte $A8
- D - I - 0x015C17 11:BC07: 34        .byte $34
- D - I - 0x015C18 11:BC08: 20        .byte $20
- D - I - 0x015C19 11:BC09: 38        .byte $38
- D - I - 0x015C1A 11:BC0A: 22        .byte $22
- D - I - 0x015C1B 11:BC0B: 3F        .byte $3F
- D - I - 0x015C1C 11:BC0C: 0F        .byte $0F
- D - I - 0x015C1D 11:BC0D: A9        .byte $A9
- D - I - 0x015C1E 11:BC0E: 34        .byte $34
- D - I - 0x015C1F 11:BC0F: 21        .byte $21
- D - I - 0x015C20 11:BC10: 38        .byte $38
- D - I - 0x015C21 11:BC11: 23        .byte $23
- D - I - 0x015C22 11:BC12: 3C        .byte $3C
- D - I - 0x015C23 11:BC13: 1A        .byte $1A
- D - I - 0x015C24 11:BC14: AA        .byte $AA
- D - I - 0x015C25 11:BC15: 38        .byte $38
- D - I - 0x015C26 11:BC16: 26        .byte $26
- D - I - 0x015C27 11:BC17: FB        .byte con_jmp
- D - I - 0x015C28 11:BC18: 88 BA     .word off_BA88
off_BC1A:
- D - I - 0x015C2A 11:BC1A: A7        .byte $A7
- D - I - 0x015C2B 11:BC1B: 38        .byte $38
- D - I - 0x015C2C 11:BC1C: 38        .byte $38
- D - I - 0x015C2D 11:BC1D: A8        .byte $A8
- D - I - 0x015C2E 11:BC1E: 34        .byte $34
- D - I - 0x015C2F 11:BC1F: 3A        .byte $3A
- D - I - 0x015C30 11:BC20: 38        .byte $38
- D - I - 0x015C31 11:BC21: 2C        .byte $2C
- D - I - 0x015C32 11:BC22: 3F        .byte $3F
- D - I - 0x015C33 11:BC23: 2E        .byte $2E
- D - I - 0x015C34 11:BC24: A9        .byte $A9
- D - I - 0x015C35 11:BC25: 38        .byte $38
- D - I - 0x015C36 11:BC26: 2D        .byte $2D
- D - I - 0x015C37 11:BC27: 3C        .byte $3C
- D - I - 0x015C38 11:BC28: 2F        .byte $2F
- D - I - 0x015C39 11:BC29: FB        .byte con_jmp
- D - I - 0x015C3A 11:BC2A: 88 BA     .word off_BA88
off_BC2C:
- D - I - 0x015C3C 11:BC2C: BF        .byte $BF
- D - I - 0x015C3D 11:BC2D: 13        .byte $13
- D - I - 0x015C3E 11:BC2E: 7D        .byte $7D
- D - I - 0x015C3F 11:BC2F: 17        .byte $17
- D - I - 0x015C40 11:BC30: BE        .byte $BE
- D - I - 0x015C41 11:BC31: A0        .byte $A0
- D - I - 0x015C42 11:BC32: 17        .byte $17
- D - I - 0x015C43 11:BC33: BF        .byte $BF
- D - I - 0x015C44 11:BC34: A1        .byte $A1
- D - I - 0x015C45 11:BC35: 17        .byte $17
- D - I - 0x015C46 11:BC36: 6B        .byte $6B
- D - I - 0x015C47 11:BC37: A2        .byte $A2
- D - I - 0x015C48 11:BC38: 13        .byte $13
- D - I - 0x015C49 11:BC39: 6C        .byte $6C
- D - I - 0x015C4A 11:BC3A: 17        .byte $17
- D - I - 0x015C4B 11:BC3B: 6E        .byte $6E
- D - I - 0x015C4C 11:BC3C: FF        .byte $FF
off_BC3D:
- D - I - 0x015C4D 11:BC3D: BF        .byte $BF
- D - I - 0x015C4E 11:BC3E: 13        .byte $13
- D - I - 0x015C4F 11:BC3F: 7C        .byte $7C
- D - I - 0x015C50 11:BC40: 17        .byte $17
- D - I - 0x015C51 11:BC41: 7E        .byte $7E
- D - I - 0x015C52 11:BC42: A0        .byte $A0
- D - I - 0x015C53 11:BC43: 17        .byte $17
- D - I - 0x015C54 11:BC44: 7F        .byte $7F
- D - I - 0x015C55 11:BC45: A1        .byte $A1
- D - I - 0x015C56 11:BC46: 17        .byte $17
- D - I - 0x015C57 11:BC47: 7A        .byte $7A
- D - I - 0x015C58 11:BC48: A2        .byte $A2
- D - I - 0x015C59 11:BC49: 13        .byte $13
- D - I - 0x015C5A 11:BC4A: 79        .byte $79
- D - I - 0x015C5B 11:BC4B: 17        .byte $17
- D - I - 0x015C5C 11:BC4C: 7B        .byte $7B
- D - I - 0x015C5D 11:BC4D: FF        .byte $FF
off_BC4E:
- D - I - 0x015C5E 11:BC4E: A5        .byte $A5
- D - I - 0x015C5F 11:BC4F: 9E        .byte $9E
- D - I - 0x015C60 11:BC50: C4        .byte $C4
- D - I - 0x015C61 11:BC51: 02        .byte $02
- D - I - 0x015C62 11:BC52: 7F        .byte $7F
- D - I - 0x015C63 11:BC53: 80        .byte $80
- D - I - 0x015C64 11:BC54: C4        .byte $C4
- D - I - 0x015C65 11:BC55: 02        .byte $02
- D - I - 0x015C66 11:BC56: 7F        .byte $7F
- D - I - 0x015C67 11:BC57: FB        .byte con_jmp
- D - I - 0x015C68 11:BC58: 63 BC     .word off_BC63
off_BC5A:
- D - I - 0x015C6A 11:BC5A: A5        .byte $A5
- D - I - 0x015C6B 11:BC5B: 9E        .byte $9E
- D - I - 0x015C6C 11:BC5C: C4        .byte $C4
- D - I - 0x015C6D 11:BC5D: 02        .byte $02
- D - I - 0x015C6E 11:BC5E: 7D        .byte $7D
- D - I - 0x015C6F 11:BC5F: 80        .byte $80
- D - I - 0x015C70 11:BC60: C4        .byte $C4
- D - I - 0x015C71 11:BC61: 02        .byte $02
- D - I - 0x015C72 11:BC62: 7D        .byte $7D
off_BC63:
- D - I - 0x015C73 11:BC63: A0        .byte $A0
- D - I - 0x015C74 11:BC64: 02        .byte $02
- D - I - 0x015C75 11:BC65: 7F        .byte $7F
- D - I - 0x015C76 11:BC66: A4        .byte $A4
- D - I - 0x015C77 11:BC67: 02        .byte $02
- D - I - 0x015C78 11:BC68: 7F        .byte $7F
- D - I - 0x015C79 11:BC69: A8        .byte $A8
- D - I - 0x015C7A 11:BC6A: 3E        .byte $3E
- D - I - 0x015C7B 11:BC6B: 7F        .byte $7F
- D - I - 0x015C7C 11:BC6C: AC        .byte $AC
- D - I - 0x015C7D 11:BC6D: 3E        .byte $3E
- D - I - 0x015C7E 11:BC6E: 7F        .byte $7F
- D - I - 0x015C7F 11:BC6F: FF        .byte $FF
off_BC70:
- D - I - 0x015C80 11:BC70: AD        .byte $AD
- D - I - 0x015C81 11:BC71: 3A        .byte $3A
- D - I - 0x015C82 11:BC72: 7F        .byte $7F
- D - I - 0x015C83 11:BC73: FE        .byte $FE
off_BC74:
- D - I - 0x015C84 11:BC74: 33        .byte $33
- D - I - 0x015C85 11:BC75: E7        .byte $E7
- D - I - 0x015C86 11:BC76: 37        .byte $37
- D - I - 0x015C87 11:BC77: ED        .byte $ED
- D - I - 0x015C88 11:BC78: 3B        .byte $3B
- D - I - 0x015C89 11:BC79: EF        .byte $EF
- D - I - 0x015C8A 11:BC7A: BD        .byte $BD
- D - I - 0x015C8B 11:BC7B: 33        .byte $33
- D - I - 0x015C8C 11:BC7C: E2        .byte $E2
- D - I - 0x015C8D 11:BC7D: 37        .byte $37
- D - I - 0x015C8E 11:BC7E: E8        .byte $E8
- D - I - 0x015C8F 11:BC7F: 3B        .byte $3B
- D - I - 0x015C90 11:BC80: EA        .byte $EA
- D - I - 0x015C91 11:BC81: BE        .byte $BE
- D - I - 0x015C92 11:BC82: 33        .byte $33
- D - I - 0x015C93 11:BC83: E3        .byte $E3
- D - I - 0x015C94 11:BC84: 37        .byte $37
- D - I - 0x015C95 11:BC85: E9        .byte $E9
- D - I - 0x015C96 11:BC86: 3B        .byte $3B
- D - I - 0x015C97 11:BC87: EB        .byte $EB
- D - I - 0x015C98 11:BC88: A2        .byte $A2
- D - I - 0x015C99 11:BC89: 33        .byte $33
- D - I - 0x015C9A 11:BC8A: E6        .byte $E6
- D - I - 0x015C9B 11:BC8B: 37        .byte $37
- D - I - 0x015C9C 11:BC8C: EC        .byte $EC
- D - I - 0x015C9D 11:BC8D: 3B        .byte $3B
- D - I - 0x015C9E 11:BC8E: EE        .byte $EE
- D - I - 0x015C9F 11:BC8F: FF        .byte $FF
off_BC90:
- D - I - 0x015CA0 11:BC90: BF        .byte $BF
- D - I - 0x015CA1 11:BC91: 3F        .byte $3F
- D - I - 0x015CA2 11:BC92: 50        .byte $50
- D - I - 0x015CA3 11:BC93: A0        .byte $A0
- D - I - 0x015CA4 11:BC94: 3B        .byte $3B
- D - I - 0x015CA5 11:BC95: 75        .byte $75
- D - I - 0x015CA6 11:BC96: 3F        .byte $3F
- D - I - 0x015CA7 11:BC97: 51        .byte $51
- D - I - 0x015CA8 11:BC98: A1        .byte $A1
- D - I - 0x015CA9 11:BC99: 7B        .byte $7B
- D - I - 0x015CAA 11:BC9A: 75        .byte $75
- D - I - 0x015CAB 11:BC9B: 7F        .byte $7F
- D - I - 0x015CAC 11:BC9C: 51        .byte $51
- D - I - 0x015CAD 11:BC9D: A2        .byte $A2
- D - I - 0x015CAE 11:BC9E: 7F        .byte $7F
- D - I - 0x015CAF 11:BC9F: 50        .byte $50
- D - I - 0x015CB0 11:BCA0: FF        .byte $FF
off_BCA1:
- D - I - 0x015CB1 11:BCA1: A0        .byte $A0
- D - I - 0x015CB2 11:BCA2: 3D        .byte $3D
- D - I - 0x015CB3 11:BCA3: B9        .byte $B9
- D - I - 0x015CB4 11:BCA4: A1        .byte $A1
- D - I - 0x015CB5 11:BCA5: 3D        .byte $3D
- D - I - 0x015CB6 11:BCA6: BC        .byte $BC
- D - I - 0x015CB7 11:BCA7: FF        .byte $FF
