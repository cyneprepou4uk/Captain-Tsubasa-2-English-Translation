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
con_FE                  = $FE
con_FF                  = $FF

; поинтер находится в 0x0010DF, продолжение таблицы в банке 11
- D - I - 0x012010 10:A000: DA A0     .word off_A0DA_00
- D - I - 0x012012 10:A002: 67 A1     .word off_A167_01
- D - I - 0x012014 10:A004: F1 A1     .word off_A1F1_02
- D - I - 0x012016 10:A006: 01 A2     .word off_A201_03
- D - I - 0x012018 10:A008: 18 A2     .word off_A218_04
- D - I - 0x01201A 10:A00A: 23 A2     .word off_A223_05
- D - I - 0x01201C 10:A00C: 31 A2     .word off_A231_06
- D - I - 0x01201E 10:A00E: 3B A2     .word off_A23B_07
- D - I - 0x012020 10:A010: 51 A2     .word off_A251_08
- D - I - 0x012022 10:A012: 5C A2     .word off_A25C_09
- D - I - 0x012024 10:A014: 66 A2     .word off_A266_0A
- D - I - 0x012026 10:A016: 70 A2     .word off_A270_0B
- D - I - 0x012028 10:A018: 87 A2     .word off_A287_0C
- D - I - 0x01202A 10:A01A: 8E A2     .word off_A28E_0D
- D - I - 0x01202C 10:A01C: 95 A2     .word off_A295_0E
- D - I - 0x01202E 10:A01E: 9C A2     .word off_A29C_0F
- D - I - 0x012030 10:A020: A3 A2     .word off_A2A3_10
- D - I - 0x012032 10:A022: AD A2     .word off_A2AD_11
- D - I - 0x012034 10:A024: B8 A2     .word off_A2B8_12
- D - I - 0x012036 10:A026: C3 A2     .word off_A2C3_13
- D - I - 0x012038 10:A028: CD A2     .word off_A2CD_14
- D - I - 0x01203A 10:A02A: DA A2     .word off_A2DA_15
- D - I - 0x01203C 10:A02C: E1 A2     .word off_A2E1_16
- D - I - 0x01203E 10:A02E: EB A2     .word off_A2EB_17
- D - I - 0x012040 10:A030: F2 A2     .word off_A2F2_18
- D - I - 0x012042 10:A032: FF A2     .word off_A2FF_19
- D - I - 0x012044 10:A034: 0A A3     .word off_A30A_1A
- D - I - 0x012046 10:A036: 1E A3     .word off_A31E_1B
- D - I - 0x012048 10:A038: 29 A3     .word off_A329_1C
- D - I - 0x01204A 10:A03A: 34 A3     .word off_A334_1D
- D - I - 0x01204C 10:A03C: 3E A3     .word off_A33E_1E
- D - I - 0x01204E 10:A03E: 46 A3     .word off_A346_1F
- D - I - 0x012050 10:A040: 4D A3     .word off_A34D_20
- D - I - 0x012052 10:A042: 57 A3     .word off_A357_21
- D - I - 0x012054 10:A044: 61 A3     .word off_A361_22
- D - I - 0x012056 10:A046: 6B A3     .word off_A36B_23
- D - I - 0x012058 10:A048: 80 A3     .word off_A380_24
- D - I - 0x01205A 10:A04A: 92 A3     .word off_A392_25
- D - I - 0x01205C 10:A04C: A2 A3     .word off_A3A2_26
- D - I - 0x01205E 10:A04E: AC A3     .word off_A3AC_27
- D - I - 0x012060 10:A050: B6 A3     .word off_A3B6_28
- D - I - 0x012062 10:A052: BD A3     .word off_A3BD_29
- D - I - 0x012064 10:A054: C4 A3     .word off_A3C4_2A
- D - I - 0x012066 10:A056: CE A3     .word off_A3CE_2B
- D - I - 0x012068 10:A058: D8 A3     .word off_A3D8_2C
- D - I - 0x01206A 10:A05A: DF A3     .word off_A3DF_2D
- D - I - 0x01206C 10:A05C: F4 A3     .word off_A3F4_2E
- D - I - 0x01206E 10:A05E: FB A3     .word off_A3FB_2F
- - - - - 0x012070 10:A060: 02 A4     .word off_A402_30
- D - I - 0x012072 10:A062: 0C A4     .word off_A40C_31
- D - I - 0x012074 10:A064: 19 A4     .word off_A419_32
- D - I - 0x012076 10:A066: 23 A4     .word off_A423_33
- D - I - 0x012078 10:A068: 31 A4     .word off_A431_34
- D - I - 0x01207A 10:A06A: 3B A4     .word off_A43B_35
- D - I - 0x01207C 10:A06C: 45 A4     .word off_A445_36
- D - I - 0x01207E 10:A06E: 4C A4     .word off_A44C_37
- D - I - 0x012080 10:A070: 57 A4     .word off_A457_38
- D - I - 0x012082 10:A072: 61 A4     .word off_A461_39
- D - I - 0x012084 10:A074: 6C A4     .word off_A46C_3A
- D - I - 0x012086 10:A076: 76 A4     .word off_A476_3B
- D - I - 0x012088 10:A078: 80 A4     .word off_A480_3C
- D - I - 0x01208A 10:A07A: 8A A4     .word off_A48A_3D
- D - I - 0x01208C 10:A07C: 94 A4     .word off_A494_3E
- D - I - 0x01208E 10:A07E: 9B A4     .word off_A49B_3F
- D - I - 0x012090 10:A080: A5 A4     .word off_A4A5_40
- D - I - 0x012092 10:A082: B0 A4     .word off_A4B0_41
- D - I - 0x012094 10:A084: BA A4     .word off_A4BA_42
- D - I - 0x012096 10:A086: C4 A4     .word off_A4C4_43
- D - I - 0x012098 10:A088: CD A4     .word off_A4CD_44
- D - I - 0x01209A 10:A08A: D7 A4     .word off_A4D7_45
- D - I - 0x01209C 10:A08C: E1 A4     .word off_A4E1_46
- D - I - 0x01209E 10:A08E: EB A4     .word off_A4EB_47
- D - I - 0x0120A0 10:A090: F5 A4     .word off_A4F5_48
- D - I - 0x0120A2 10:A092: FD A4     .word off_A4FD_49
- D - I - 0x0120A4 10:A094: 04 A5     .word off_A504_4A
- D - I - 0x0120A6 10:A096: 11 A5     .word off_A511_4B
- D - I - 0x0120A8 10:A098: 1B A5     .word off_A51B_4C
- D - I - 0x0120AA 10:A09A: 22 A5     .word off_A522_4D
- D - I - 0x0120AC 10:A09C: 2D A5     .word off_A52D_4E
- D - I - 0x0120AE 10:A09E: 38 A5     .word off_A538_4F
- D - I - 0x0120B0 10:A0A0: 46 A5     .word off_A546_50
- D - I - 0x0120B2 10:A0A2: 4E A5     .word off_A54E_51
- D - I - 0x0120B4 10:A0A4: 55 A5     .word off_A555_52
- D - I - 0x0120B6 10:A0A6: 5C A5     .word off_A55C_53
- D - I - 0x0120B8 10:A0A8: 73 A5     .word off_A573_54
- D - I - 0x0120BA 10:A0AA: 8C A5     .word off_A58C_55
- D - I - 0x0120BC 10:A0AC: 93 A5     .word off_A593_56
- D - I - 0x0120BE 10:A0AE: 9B A5     .word off_A59B_57
- D - I - 0x0120C0 10:A0B0: A6 A5     .word off_A5A6_58
- D - I - 0x0120C2 10:A0B2: AE A5     .word off_A5AE_59
- D - I - 0x0120C4 10:A0B4: C5 A5     .word off_A5C5_5A
- D - I - 0x0120C6 10:A0B6: CD A5     .word off_A5CD_5B
- D - I - 0x0120C8 10:A0B8: D9 A5     .word off_A5D9_5C
- D - I - 0x0120CA 10:A0BA: E0 A5     .word off_A5E0_5D
- D - I - 0x0120CC 10:A0BC: E8 A5     .word off_A5E8_5E
- D - I - 0x0120CE 10:A0BE: F3 A5     .word off_A5F3_5F
- D - I - 0x0120D0 10:A0C0: FE A5     .word off_A5FE_60
- D - I - 0x0120D2 10:A0C2: 09 A6     .word off_A609_61
- D - I - 0x0120D4 10:A0C4: 13 A6     .word off_A613_62
- D - I - 0x0120D6 10:A0C6: 1B A6     .word off_A61B_63
- D - I - 0x0120D8 10:A0C8: 25 A6     .word off_A625_64
- D - I - 0x0120DA 10:A0CA: 2E A6     .word off_A62E_65
- D - I - 0x0120DC 10:A0CC: 35 A6     .word off_A635_66
- D - I - 0x0120DE 10:A0CE: 40 A6     .word off_A640_67
- D - I - 0x0120E0 10:A0D0: 48 A6     .word off_A648_68
- D - I - 0x0120E2 10:A0D2: 53 A6     .word off_A653_69
- D - I - 0x0120E4 10:A0D4: 5D A6     .word off_A65D_6A
- D - I - 0x0120E6 10:A0D6: 65 A6     .word off_A665_6B
- D - I - 0x0120E8 10:A0D8: 74 A6     .word off_A674_6C



off_A0DA_00:
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



off_A167_01:
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



off_A1F1_02:
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



off_A218_04:
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



off_A223_05:
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



off_A231_06:
- D - I - 0x012241 10:A231: 03        .byte $03

- D - I - 0x012242 10:A232: F1        .byte con_координаты_Y_X
- D - I - 0x012243 10:A233: 30        .byte $30
- D - I - 0x012244 10:A234: 4E        .byte $4E

- D - I - 0x012245 10:A235: FA        .byte con_развилка
- D - I - 0x012246 10:A236: B4 B0     .word off_B0B4
- D - I - 0x012248 10:A238: AC AC     .word off_ACAC



off_A23B_07:
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



off_A251_08:
- D - I - 0x012261 10:A251: 0C        .byte $0C

- D - I - 0x012262 10:A252: F1        .byte con_координаты_Y_X
- D - I - 0x012263 10:A253: 30        .byte $30
- D - I - 0x012264 10:A254: 2E        .byte $2E

- D - I - 0x012265 10:A255: F5        .byte con_F5

- D - I - 0x012266 10:A256: 88 EA     .dbyt off_A8EA - $2000
- D - I - 0x012268 10:A258: 0A        .byte $0A

- D - I - 0x012269 10:A259: 88 FE     .dbyt off_A8FE - $2000

- D - I - 0x01226B 10:A25B: FF        .byte con_выход



off_A25C_09:
- D - I - 0x01226C 10:A25C: 17        .byte $17

- D - I - 0x01226D 10:A25D: F1        .byte con_координаты_Y_X
- D - I - 0x01226E 10:A25E: 30        .byte $30
- D - I - 0x01226F 10:A25F: 46        .byte $46

- D - I - 0x012270 10:A260: FA        .byte con_развилка
- D - I - 0x012271 10:A261: EA A8     .word off_A8EA
- D - I - 0x012273 10:A263: 0D B4     .word off_B40D



off_A266_0A:
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



off_A287_0C:
- D - I - 0x012297 10:A287: 23        .byte $23

- D - I - 0x012298 10:A288: F1        .byte con_координаты_Y_X
- D - I - 0x012299 10:A289: 30        .byte $30
- D - I - 0x01229A 10:A28A: 46        .byte $46

- D - I - 0x01229B 10:A28B: 88 52     .dbyt off_A852 - $2000

- D - I - 0x01229D 10:A28D: FF        .byte con_выход



off_A28E_0D:
- D - I - 0x01229E 10:A28E: 09        .byte $09

- D - I - 0x01229F 10:A28F: F1        .byte con_координаты_Y_X
- D - I - 0x0122A0 10:A290: 26        .byte $26
- D - I - 0x0122A1 10:A291: 3E        .byte $3E

- D - I - 0x0122A2 10:A292: 87 CB     .dbyt off_A7CB - $2000

- D - I - 0x0122A4 10:A294: FF        .byte con_выход



off_A295_0E:
- D - I - 0x0122A5 10:A295: 33        .byte $33

- D - I - 0x0122A6 10:A296: F1        .byte con_координаты_Y_X
- D - I - 0x0122A7 10:A297: 30        .byte $30
- D - I - 0x0122A8 10:A298: 46        .byte $46

- D - I - 0x0122A9 10:A299: 88 52     .dbyt off_A852 - $2000

- D - I - 0x0122AB 10:A29B: FF        .byte con_выход



off_A29C_0F:
- D - I - 0x0122AC 10:A29C: 17        .byte $17

- D - I - 0x0122AD 10:A29D: F1        .byte con_координаты_Y_X
- D - I - 0x0122AE 10:A29E: 30        .byte $30
- D - I - 0x0122AF 10:A29F: 46        .byte $46

- D - I - 0x0122B0 10:A2A0: 88 95     .dbyt off_A895 - $2000

- D - I - 0x0122B2 10:A2A2: FF        .byte con_выход



off_A2A3_10:
- D - I - 0x0122B3 10:A2A3: 17        .byte $17

- D - I - 0x0122B4 10:A2A4: F1        .byte con_координаты_Y_X
- D - I - 0x0122B5 10:A2A5: 30        .byte $30
- D - I - 0x0122B6 10:A2A6: 46        .byte $46

- D - I - 0x0122B7 10:A2A7: FA        .byte con_развилка
- D - I - 0x0122B8 10:A2A8: 64 B3     .word off_B364
- D - I - 0x0122BA 10:A2AA: D6 A8     .word off_A8D6



off_A2AD_11:
- D - I - 0x0122BD 10:A2AD: 17        .byte $17

- D - I - 0x0122BE 10:A2AE: F1        .byte con_координаты_Y_X
- D - I - 0x0122BF 10:A2AF: 30        .byte $30
- D - I - 0x0122C0 10:A2B0: 2E        .byte $2E

- D - I - 0x0122C1 10:A2B1: F5        .byte con_F5

- D - I - 0x0122C2 10:A2B2: FA        .byte con_развилка
- D - I - 0x0122C3 10:A2B3: EA A8     .word off_A8EA
- D - I - 0x0122C5 10:A2B5: 0D B4     .word off_B40D



off_A2B8_12:
- D - I - 0x0122C8 10:A2B8: 17        .byte $17

- D - I - 0x0122C9 10:A2B9: F1        .byte con_координаты_Y_X
- D - I - 0x0122CA 10:A2BA: 30        .byte $30
- D - I - 0x0122CB 10:A2BB: 2E        .byte $2E

- D - I - 0x0122CC 10:A2BC: F5        .byte con_F5

- D - I - 0x0122CD 10:A2BD: 93 64     .dbyt off_B364 - $2000
- D - I - 0x0122CF 10:A2BF: 0A        .byte $0A

- D - I - 0x0122D0 10:A2C0: 88 FE     .dbyt off_A8FE - $2000

- D - I - 0x0122D2 10:A2C2: FF        .byte con_выход



off_A2C3_13:
- D - I - 0x0122D3 10:A2C3: 17        .byte $17

- D - I - 0x0122D4 10:A2C4: F1        .byte con_координаты_Y_X
- D - I - 0x0122D5 10:A2C5: 30        .byte $30
- D - I - 0x0122D6 10:A2C6: 2E        .byte $2E

- D - I - 0x0122D7 10:A2C7: 89 16     .dbyt off_A916 - $2000
- D - I - 0x0122D9 10:A2C9: 23        .byte $23

- D - I - 0x0122DA 10:A2CA: 89 E3     .dbyt off_A9E3 - $2000

- D - I - 0x0122DC 10:A2CC: FF        .byte con_выход



off_A2CD_14:
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



off_A2DA_15:
- D - I - 0x0122EA 10:A2DA: 0E        .byte $0E

- D - I - 0x0122EB 10:A2DB: F1        .byte con_координаты_Y_X
- D - I - 0x0122EC 10:A2DC: 30        .byte $30
- D - I - 0x0122ED 10:A2DD: 46        .byte $46

- D - I - 0x0122EE 10:A2DE: 91 D0     .dbyt off_B1D0 - $2000

- D - I - 0x0122F0 10:A2E0: FF        .byte con_выход



off_A2E1_16:
- D - I - 0x0122F1 10:A2E1: 0C        .byte $0C

- D - I - 0x0122F2 10:A2E2: F1        .byte con_координаты_Y_X
- D - I - 0x0122F3 10:A2E3: 30        .byte $30
- D - I - 0x0122F4 10:A2E4: 2E        .byte $2E

- D - I - 0x0122F5 10:A2E5: 89 16     .dbyt off_A916 - $2000
- D - I - 0x0122F7 10:A2E7: 23        .byte $23

- D - I - 0x0122F8 10:A2E8: 89 E3     .dbyt off_A9E3 - $2000

- D - I - 0x0122FA 10:A2EA: FF        .byte con_выход



off_A2EB_17:
- D - I - 0x0122FB 10:A2EB: 3E        .byte $3E

- D - I - 0x0122FC 10:A2EC: F1        .byte con_координаты_Y_X
- D - I - 0x0122FD 10:A2ED: 30        .byte $30
- D - I - 0x0122FE 10:A2EE: 46        .byte $46

- D - I - 0x0122FF 10:A2EF: 88 52     .dbyt off_A852 - $2000

- D - I - 0x012301 10:A2F1: FF        .byte con_выход



off_A2F2_18:
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



off_A2FF_19:
- D - I - 0x01230F 10:A2FF: 17        .byte $17

- D - I - 0x012310 10:A300: F1        .byte con_координаты_Y_X
- D - I - 0x012311 10:A301: 30        .byte $30
- D - I - 0x012312 10:A302: 2E        .byte $2E

- D - I - 0x012313 10:A303: F5        .byte con_F5

- D - I - 0x012314 10:A304: FA        .byte con_развилка
- D - I - 0x012315 10:A305: 4A AA     .word off_AA4A
- D - I - 0x012317 10:A307: 5E AA     .word off_AA5E



off_A30A_1A:
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



off_A31E_1B:
- D - I - 0x01232E 10:A31E: 17        .byte $17

- D - I - 0x01232F 10:A31F: F1        .byte con_координаты_Y_X
- D - I - 0x012330 10:A320: 30        .byte $30
- D - I - 0x012331 10:A321: 2E        .byte $2E

- D - I - 0x012332 10:A322: F5        .byte con_F5

- D - I - 0x012333 10:A323: FA        .byte con_развилка
- D - I - 0x012334 10:A324: 72 AA     .word off_AA72
- D - I - 0x012336 10:A326: F0 B0     .word off_B0F0



off_A329_1C:
- D - I - 0x012339 10:A329: 0B        .byte $0B

- D - I - 0x01233A 10:A32A: F5        .byte con_F5

- D - I - 0x01233B 10:A32B: F1        .byte con_координаты_Y_X
- D - I - 0x01233C 10:A32C: 30        .byte $30
- D - I - 0x01233D 10:A32D: 2E        .byte $2E

- D - I - 0x01233E 10:A32E: FA        .byte con_развилка
- D - I - 0x01233F 10:A32F: 86 AA     .word off_AA86
- D - I - 0x012341 10:A331: 92 AA     .word off_AA92



off_A334_1D:
- D - I - 0x012344 10:A334: 0B        .byte $0B

- D - I - 0x012345 10:A335: F1        .byte con_координаты_Y_X
- D - I - 0x012346 10:A336: 30        .byte $30
- D - I - 0x012347 10:A337: 4E        .byte $4E

- D - I - 0x012348 10:A338: FA        .byte con_развилка
- D - I - 0x012349 10:A339: 86 AA     .word off_AA86
- D - I - 0x01234B 10:A33B: 92 AA     .word off_AA92



off_A33E_1E:
- D - I - 0x01234E 10:A33E: 17        .byte $17

- D - I - 0x01234F 10:A33F: F1        .byte con_координаты_Y_X
- D - I - 0x012350 10:A340: 30        .byte $30
- D - I - 0x012351 10:A341: 2E        .byte $2E

- D - I - 0x012352 10:A342: F5        .byte con_F5

- D - I - 0x012353 10:A343: 8A 72     .dbyt off_AA72 - $2000

- D - I - 0x012355 10:A345: FF        .byte con_выход



off_A346_1F:
- D - I - 0x012356 10:A346: 17        .byte $17

- D - I - 0x012357 10:A347: F1        .byte con_координаты_Y_X
- D - I - 0x012358 10:A348: 30        .byte $30
- D - I - 0x012359 10:A349: 4E        .byte $4E

- D - I - 0x01235A 10:A34A: 8A 4A     .dbyt off_AA4A - $2000

- D - I - 0x01235C 10:A34C: FF        .byte con_выход



off_A34D_20:
- D - I - 0x01235D 10:A34D: 19        .byte $19

- D - I - 0x01235E 10:A34E: F1        .byte con_координаты_Y_X
- D - I - 0x01235F 10:A34F: 30        .byte $30
- D - I - 0x012360 10:A350: 4E        .byte $4E

- D - I - 0x012361 10:A351: FA        .byte con_развилка
- D - I - 0x012362 10:A352: B2 AA     .word off_AAB2
- D - I - 0x012364 10:A354: BE AA     .word off_AABE



off_A357_21:
- D - I - 0x012367 10:A357: 28        .byte $28

- D - I - 0x012368 10:A358: F1        .byte con_координаты_Y_X
- D - I - 0x012369 10:A359: 30        .byte $30
- D - I - 0x01236A 10:A35A: 46        .byte $46

- D - I - 0x01236B 10:A35B: FA        .byte con_развилка
- D - I - 0x01236C 10:A35C: CA AA     .word off_AACA
- D - I - 0x01236E 10:A35E: A2 B4     .word off_B4A2



off_A361_22:
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



off_A380_24:
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



off_A392_25:
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



off_A3A2_26:
- D - I - 0x0123B2 10:A3A2: 1D        .byte $1D

- D - I - 0x0123B3 10:A3A3: F1        .byte con_координаты_Y_X
- D - I - 0x0123B4 10:A3A4: 30        .byte $30
- D - I - 0x0123B5 10:A3A5: 40        .byte $40

- D - I - 0x0123B6 10:A3A6: FA        .byte con_развилка
- D - I - 0x0123B7 10:A3A7: 21 B4     .word off_B421
- D - I - 0x0123B9 10:A3A9: 68 AB     .word off_AB68



off_A3AC_27:
- D - I - 0x0123BC 10:A3AC: 1D        .byte $1D

- D - I - 0x0123BD 10:A3AD: F1        .byte con_координаты_Y_X
- D - I - 0x0123BE 10:A3AE: 30        .byte $30
- D - I - 0x0123BF 10:A3AF: 40        .byte $40

- D - I - 0x0123C0 10:A3B0: FA        .byte con_развилка
- D - I - 0x0123C1 10:A3B1: 80 AB     .word off_AB80
- D - I - 0x0123C3 10:A3B3: D2 AF     .word off_AFD2



off_A3B6_28:
- D - I - 0x0123C6 10:A3B6: 1D        .byte $1D

- D - I - 0x0123C7 10:A3B7: F1        .byte con_координаты_Y_X
- D - I - 0x0123C8 10:A3B8: 30        .byte $30
- D - I - 0x0123C9 10:A3B9: 40        .byte $40

- D - I - 0x0123CA 10:A3BA: 8B 96     .dbyt off_AB96 - $2000

- D - I - 0x0123CC 10:A3BC: FF        .byte con_выход



off_A3BD_29:
- D - I - 0x0123CD 10:A3BD: 1D        .byte $1D

- D - I - 0x0123CE 10:A3BE: F1        .byte con_координаты_Y_X
- D - I - 0x0123CF 10:A3BF: 30        .byte $30
- D - I - 0x0123D0 10:A3C0: 40        .byte $40

- D - I - 0x0123D1 10:A3C1: 8B AE     .dbyt off_ABAE - $2000

- D - I - 0x0123D3 10:A3C3: FF        .byte con_выход



off_A3C4_2A:
- D - I - 0x0123D4 10:A3C4: 18        .byte $18

- D - I - 0x0123D5 10:A3C5: F1        .byte con_координаты_Y_X
- D - I - 0x0123D6 10:A3C6: 30        .byte $30
- D - I - 0x0123D7 10:A3C7: 40        .byte $40

- D - I - 0x0123D8 10:A3C8: FA        .byte con_развилка
- D - I - 0x0123D9 10:A3C9: D9 B3     .word off_B3D9
- D - I - 0x0123DB 10:A3CB: C6 AB     .word off_ABC6



off_A3CE_2B:
- D - I - 0x0123DE 10:A3CE: 18        .byte $18

- D - I - 0x0123DF 10:A3CF: F1        .byte con_координаты_Y_X
- D - I - 0x0123E0 10:A3D0: 30        .byte $30
- D - I - 0x0123E1 10:A3D1: 40        .byte $40

- D - I - 0x0123E2 10:A3D2: FA        .byte con_развилка
- D - I - 0x0123E3 10:A3D3: DE AB     .word off_ABDE
- D - I - 0x0123E5 10:A3D5: 64 B2     .word off_B264



off_A3D8_2C:
- D - I - 0x0123E8 10:A3D8: 18        .byte $18

- D - I - 0x0123E9 10:A3D9: F1        .byte con_координаты_Y_X
- D - I - 0x0123EA 10:A3DA: 30        .byte $30
- D - I - 0x0123EB 10:A3DB: 40        .byte $40

- D - I - 0x0123EC 10:A3DC: 8B F4     .dbyt off_ABF4 - $2000

- D - I - 0x0123EE 10:A3DE: FF        .byte con_выход



off_A3DF_2D:
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



off_A3F4_2E:
- D - I - 0x012404 10:A3F4: 1A        .byte $1A

- D - I - 0x012405 10:A3F5: F1        .byte con_координаты_Y_X
- D - I - 0x012406 10:A3F6: 30        .byte $30
- D - I - 0x012407 10:A3F7: 40        .byte $40

- D - I - 0x012408 10:A3F8: 8C 22     .dbyt off_AC22 - $2000

- D - I - 0x01240A 10:A3FA: FF        .byte con_выход



off_A3FB_2F:
- D - I - 0x01240B 10:A3FB: 1B        .byte $1B

- D - I - 0x01240C 10:A3FC: F1        .byte con_координаты_Y_X
- D - I - 0x01240D 10:A3FD: 30        .byte $30
- D - I - 0x01240E 10:A3FE: 40        .byte $40

- D - I - 0x01240F 10:A3FF: 8C 58     .dbyt off_AC58 - $2000

- D - I - 0x012411 10:A401: FF        .byte con_выход



off_A402_30:
- - - - - 0x012412 10:A402: 16        .byte $16

- - - - - 0x012413 10:A403: F1        .byte con_координаты_Y_X
- - - - - 0x012414 10:A404: 30        .byte $30
- - - - - 0x012415 10:A405: 4A        .byte $4A

- - - - - 0x012416 10:A406: FA        .byte con_развилка
- - - - - 0x012417 10:A407: 8E AC     .word off_AC8E
- - - - - 0x012419 10:A409: 19 B2     .word off_B219



off_A40C_31:
- D - I - 0x01241C 10:A40C: 16        .byte $16

- D - I - 0x01241D 10:A40D: F1        .byte con_координаты_Y_X
- D - I - 0x01241E 10:A40E: 30        .byte $30
- D - I - 0x01241F 10:A40F: 4A        .byte $4A

- D - I - 0x012420 10:A410: 8C 8E     .dbyt off_AC8E - $2000
- D - I - 0x012422 10:A412: 07        .byte $07

- D - I - 0x012423 10:A413: FA        .byte con_развилка
- D - I - 0x012424 10:A414: FF AF     .word off_AFFF
- D - I - 0x012426 10:A416: 98 AC     .word off_AC98



off_A419_32:
- D - I - 0x012429 10:A419: 03        .byte $03

- D - I - 0x01242A 10:A41A: F1        .byte con_координаты_Y_X
- D - I - 0x01242B 10:A41B: 30        .byte $30
- D - I - 0x01242C 10:A41C: 4A        .byte $4A

- D - I - 0x01242D 10:A41D: FA        .byte con_развилка
- D - I - 0x01242E 10:A41E: A2 AC     .word off_ACA2
- D - I - 0x012430 10:A420: 39 B4     .word off_B439



off_A423_33:
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



off_A431_34:
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



off_A445_36:
- D - I - 0x012455 10:A445: 0A        .byte $0A

- D - I - 0x012456 10:A446: F1        .byte con_координаты_Y_X
- D - I - 0x012457 10:A447: 30        .byte $30
- D - I - 0x012458 10:A448: 4E        .byte $4E

- D - I - 0x012459 10:A449: 8D BA     .dbyt off_ADBA - $2000

- D - I - 0x01245B 10:A44B: FF        .byte con_выход



off_A44C_37:
- D - I - 0x01245C 10:A44C: 10        .byte $10

- D - I - 0x01245D 10:A44D: F5        .byte con_F5

- D - I - 0x01245E 10:A44E: F1        .byte con_координаты_Y_X
- D - I - 0x01245F 10:A44F: 30        .byte $30
- D - I - 0x012460 10:A450: 32        .byte $32

- D - I - 0x012461 10:A451: FA        .byte con_развилка
- D - I - 0x012462 10:A452: F1 B3     .word off_B3F1
- D - I - 0x012464 10:A454: EC AC     .word off_ACEC



off_A457_38:
- D - I - 0x012467 10:A457: 10        .byte $10

- D - I - 0x012468 10:A458: F1        .byte con_координаты_Y_X
- D - I - 0x012469 10:A459: 30        .byte $30
- D - I - 0x01246A 10:A45A: 42        .byte $42

- D - I - 0x01246B 10:A45B: FA        .byte con_развилка
- D - I - 0x01246C 10:A45C: 20 AD     .word off_AD20
- D - I - 0x01246E 10:A45E: 06 AD     .word off_AD06



off_A461_39:
- D - I - 0x012471 10:A461: 46        .byte $46

- D - I - 0x012472 10:A462: F1        .byte con_координаты_Y_X
- D - I - 0x012473 10:A463: 30        .byte $30
- D - I - 0x012474 10:A464: 2E        .byte $2E

- D - I - 0x012475 10:A465: F5        .byte con_F5

- D - I - 0x012476 10:A466: FA        .byte con_развилка
- D - I - 0x012477 10:A467: 24 AF     .word off_AF24
- D - I - 0x012479 10:A469: B6 AC     .word off_ACB6



off_A46C_3A:
- D - I - 0x01247C 10:A46C: 2A        .byte $2A

- D - I - 0x01247D 10:A46D: F1        .byte con_координаты_Y_X
- D - I - 0x01247E 10:A46E: 30        .byte $30
- D - I - 0x01247F 10:A46F: 3E        .byte $3E

- D - I - 0x012480 10:A470: FA        .byte con_развилка
- D - I - 0x012481 10:A471: 36 AF     .word off_AF36
- - - - - 0x012483 10:A473: 3C AD     .word off_AD3C



off_A476_3B:
- D - I - 0x012486 10:A476: 0A        .byte $0A

- D - I - 0x012487 10:A477: F1        .byte con_координаты_Y_X
- D - I - 0x012488 10:A478: 30        .byte $30
- D - I - 0x012489 10:A479: 44        .byte $44

- D - I - 0x01248A 10:A47A: FA        .byte con_развилка
- D - I - 0x01248B 10:A47B: 10 B3     .word off_B310
- D - I - 0x01248D 10:A47D: 8A AD     .word off_AD8A



off_A480_3C:
- D - I - 0x012490 10:A480: 0A        .byte $0A

- D - I - 0x012491 10:A481: F1        .byte con_координаты_Y_X
- D - I - 0x012492 10:A482: 30        .byte $30
- D - I - 0x012493 10:A483: 44        .byte $44

- D - I - 0x012494 10:A484: FA        .byte con_развилка
- D - I - 0x012495 10:A485: A2 AD     .word off_ADA2
- D - I - 0x012497 10:A487: CA A9     .word off_A9CA



off_A48A_3D:
- D - I - 0x01249A 10:A48A: 0A        .byte $0A

- D - I - 0x01249B 10:A48B: F1        .byte con_координаты_Y_X
- D - I - 0x01249C 10:A48C: 30        .byte $30
- D - I - 0x01249D 10:A48D: 44        .byte $44

- D - I - 0x01249E 10:A48E: FA        .byte con_развилка
- D - I - 0x01249F 10:A48F: BA AD     .word off_ADBA
- D - I - 0x0124A1 10:A491: 40 B3     .word off_B340



off_A494_3E:
- D - I - 0x0124A4 10:A494: 0A        .byte $0A

- D - I - 0x0124A5 10:A495: F1        .byte con_координаты_Y_X
- D - I - 0x0124A6 10:A496: 30        .byte $30
- D - I - 0x0124A7 10:A497: 42        .byte $42

- D - I - 0x0124A8 10:A498: 8D F7     .dbyt off_ADF7 - $2000

- D - I - 0x0124AA 10:A49A: FF        .byte con_выход



off_A49B_3F:
- D - I - 0x0124AB 10:A49B: 0C        .byte $0C

- D - I - 0x0124AC 10:A49C: F1        .byte con_координаты_Y_X
- D - I - 0x0124AD 10:A49D: 30        .byte $30
- D - I - 0x0124AE 10:A49E: 4A        .byte $4A

- D - I - 0x0124AF 10:A49F: FA        .byte con_развилка
- D - I - 0x0124B0 10:A4A0: 4A AA     .word off_AA4A
- D - I - 0x0124B2 10:A4A2: 5E AA     .word off_AA5E



off_A4A5_40:
- D - I - 0x0124B5 10:A4A5: 0D        .byte $0D

- D - I - 0x0124B6 10:A4A6: F1        .byte con_координаты_Y_X
- D - I - 0x0124B7 10:A4A7: 30        .byte $30
- D - I - 0x0124B8 10:A4A8: 2C        .byte $2C

- D - I - 0x0124B9 10:A4A9: F5        .byte con_F5

- D - I - 0x0124BA 10:A4AA: FA        .byte con_развилка
- D - I - 0x0124BB 10:A4AB: 16 B0     .word off_B016
- D - I - 0x0124BD 10:A4AD: 4B AE     .word off_AE4B



off_A4B0_41:
- D - I - 0x0124C0 10:A4B0: 0D        .byte $0D

- D - I - 0x0124C1 10:A4B1: F1        .byte con_координаты_Y_X
- D - I - 0x0124C2 10:A4B2: 30        .byte $30
- D - I - 0x0124C3 10:A4B3: 42        .byte $42

- D - I - 0x0124C4 10:A4B4: FA        .byte con_развилка
- D - I - 0x0124C5 10:A4B5: 78 B3     .word off_B378
- - - - - 0x0124C7 10:A4B7: 75 AE     .word off_AE75



off_A4BA_42:
- D - I - 0x0124CA 10:A4BA: 0D        .byte $0D

- D - I - 0x0124CB 10:A4BB: F1        .byte con_координаты_Y_X
- D - I - 0x0124CC 10:A4BC: 30        .byte $30
- D - I - 0x0124CD 10:A4BD: 42        .byte $42

- D - I - 0x0124CE 10:A4BE: FA        .byte con_развилка
- D - I - 0x0124CF 10:A4BF: 99 B3     .word off_B399
- D - I - 0x0124D1 10:A4C1: 96 AE     .word off_AE96



off_A4C4_43:
- D - I - 0x0124D4 10:A4C4: 11        .byte $11

- D - I - 0x0124D5 10:A4C5: F1        .byte con_координаты_Y_X
- D - I - 0x0124D6 10:A4C6: DC        .byte $DC
- D - I - 0x0124D7 10:A4C7: 50        .byte $50

- D - I - 0x0124D8 10:A4C8: 8E D6     .dbyt off_AED6 - $2000

- D - I - 0x0124DA 10:A4CA: F9        .byte con_F9

- D - I - 0x0124DB 10:A4CB: 7F        .byte $7F

- D - I - 0x0124DC 10:A4CC: FF        .byte con_выход



off_A4CD_44:
- D - I - 0x0124DD 10:A4CD: 1F        .byte $1F

- D - I - 0x0124DE 10:A4CE: F1        .byte con_координаты_Y_X
- D - I - 0x0124DF 10:A4CF: 30        .byte $30
- D - I - 0x0124E0 10:A4D0: 42        .byte $42

- D - I - 0x0124E1 10:A4D1: FA        .byte con_развилка
- D - I - 0x0124E2 10:A4D2: FD AA     .word off_AAFD
- D - I - 0x0124E4 10:A4D4: C9 B0     .word off_B0C9



off_A4D7_45:
- D - I - 0x0124E7 10:A4D7: 05        .byte $05

- D - I - 0x0124E8 10:A4D8: F1        .byte con_координаты_Y_X
- D - I - 0x0124E9 10:A4D9: 30        .byte $30
- D - I - 0x0124EA 10:A4DA: 3E        .byte $3E

- D - I - 0x0124EB 10:A4DB: FA        .byte con_развилка
- D - I - 0x0124EC 10:A4DC: 2E B2     .word off_B22E
- D - I - 0x0124EE 10:A4DE: DA B2     .word off_B2DA



off_A4E1_46:
- D - I - 0x0124F1 10:A4E1: 2C        .byte $2C

- D - I - 0x0124F2 10:A4E2: F1        .byte con_координаты_Y_X
- D - I - 0x0124F3 10:A4E3: 30        .byte $30
- D - I - 0x0124F4 10:A4E4: 46        .byte $46

- D - I - 0x0124F5 10:A4E5: FA        .byte con_развилка
- D - I - 0x0124F6 10:A4E6: 78 B3     .word off_B378
- D - I - 0x0124F8 10:A4E8: 75 AE     .word off_AE75



off_A4EB_47:
- D - I - 0x0124FB 10:A4EB: 0C        .byte $0C

- D - I - 0x0124FC 10:A4EC: F1        .byte con_координаты_Y_X
- D - I - 0x0124FD 10:A4ED: 30        .byte $30
- D - I - 0x0124FE 10:A4EE: 46        .byte $46

- D - I - 0x0124FF 10:A4EF: FA        .byte con_развилка
- D - I - 0x012500 10:A4F0: 64 B3     .word off_B364
- D - I - 0x012502 10:A4F2: D6 A8     .word off_A8D6



off_A4F5_48:
- D - I - 0x012505 10:A4F5: 0F        .byte $0F

- D - I - 0x012506 10:A4F6: F1        .byte con_координаты_Y_X
- D - I - 0x012507 10:A4F7: 30        .byte $30
- D - I - 0x012508 10:A4F8: 2E        .byte $2E

- D - I - 0x012509 10:A4F9: F5        .byte con_F5

- D - I - 0x01250A 10:A4FA: 8D DE     .dbyt off_ADDE - $2000

- D - I - 0x01250C 10:A4FC: FF        .byte con_выход



off_A4FD_49:
- D - I - 0x01250D 10:A4FD: 16        .byte $16

- D - I - 0x01250E 10:A4FE: F1        .byte con_координаты_Y_X
- D - I - 0x01250F 10:A4FF: 30        .byte $30
- D - I - 0x012510 10:A500: 4A        .byte $4A

- D - I - 0x012511 10:A501: 8C 8E     .dbyt off_AC8E - $2000

- D - I - 0x012513 10:A503: FF        .byte con_выход



off_A504_4A:
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



off_A511_4B:
- D - I - 0x012521 10:A511: 0C        .byte $0C

- D - I - 0x012522 10:A512: F1        .byte con_координаты_Y_X
- D - I - 0x012523 10:A513: 30        .byte $30
- D - I - 0x012524 10:A514: 46        .byte $46

- D - I - 0x012525 10:A515: FA        .byte con_развилка
- D - I - 0x012526 10:A516: EA A8     .word off_A8EA
- D - I - 0x012528 10:A518: 0D B4     .word off_B40D



off_A51B_4C:
- D - I - 0x01252B 10:A51B: 0F        .byte $0F

- D - I - 0x01252C 10:A51C: F1        .byte con_координаты_Y_X
- D - I - 0x01252D 10:A51D: 30        .byte $30
- D - I - 0x01252E 10:A51E: 46        .byte $46

- D - I - 0x01252F 10:A51F: 8D DE     .dbyt off_ADDE - $2000

- D - I - 0x012531 10:A521: FF        .byte con_выход



off_A522_4D:
- D - I - 0x012532 10:A522: 0A        .byte $0A

- D - I - 0x012533 10:A523: F5        .byte con_F5

- D - I - 0x012534 10:A524: F1        .byte con_координаты_Y_X
- D - I - 0x012535 10:A525: 30        .byte $30
- D - I - 0x012536 10:A526: 2E        .byte $2E

- D - I - 0x012537 10:A527: FA        .byte con_развилка
- D - I - 0x012538 10:A528: 10 B3     .word off_B310
- D - I - 0x01253A 10:A52A: 8A AD     .word off_AD8A



off_A52D_4E:
- D - I - 0x01253D 10:A52D: 17        .byte $17

- D - I - 0x01253E 10:A52E: F5        .byte con_F5

- D - I - 0x01253F 10:A52F: F1        .byte con_координаты_Y_X
- D - I - 0x012540 10:A530: 30        .byte $30
- D - I - 0x012541 10:A531: 2E        .byte $2E

- D - I - 0x012542 10:A532: FA        .byte con_развилка
- D - I - 0x012543 10:A533: 64 B3     .word off_B364
- D - I - 0x012545 10:A535: D6 A8     .word off_A8D6



off_A538_4F:
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



off_A546_50:
- D - I - 0x012556 10:A546: 3F        .byte $3F

- D - I - 0x012557 10:A547: F5        .byte con_F5

- D - I - 0x012558 10:A548: F1        .byte con_координаты_Y_X
- D - I - 0x012559 10:A549: 30        .byte $30
- D - I - 0x01255A 10:A54A: 2E        .byte $2E

- D - I - 0x01255B 10:A54B: 93 10     .dbyt off_B310 - $2000

- D - I - 0x01255D 10:A54D: FF        .byte con_выход



off_A54E_51:
- D - I - 0x01255E 10:A54E: 3F        .byte $3F

- D - I - 0x01255F 10:A54F: F1        .byte con_координаты_Y_X
- D - I - 0x012560 10:A550: 30        .byte $30
- D - I - 0x012561 10:A551: 46        .byte $46

- D - I - 0x012562 10:A552: 93 64     .dbyt off_B364 - $2000

- D - I - 0x012564 10:A554: FF        .byte con_выход



off_A555_52:
- D - I - 0x012565 10:A555: 0C        .byte $0C

- D - I - 0x012566 10:A556: F1        .byte con_координаты_Y_X
- D - I - 0x012567 10:A557: 30        .byte $30
- D - I - 0x012568 10:A558: 46        .byte $46

- D - I - 0x012569 10:A559: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x01256B 10:A55B: FF        .byte con_выход



off_A55C_53:
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



off_A573_54:
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



off_A58C_55:
- D - I - 0x01259C 10:A58C: 0C        .byte $0C

- D - I - 0x01259D 10:A58D: F1        .byte con_координаты_Y_X
- D - I - 0x01259E 10:A58E: 30        .byte $30
- D - I - 0x01259F 10:A58F: 3E        .byte $3E

- D - I - 0x0125A0 10:A590: 89 16     .dbyt off_A916 - $2000

- D - I - 0x0125A2 10:A592: FF        .byte con_выход



off_A593_56:
- D - I - 0x0125A3 10:A593: 1D        .byte $1D

- D - I - 0x0125A4 10:A594: F1        .byte con_координаты_Y_X
- D - I - 0x0125A5 10:A595: 30        .byte $30
- D - I - 0x0125A6 10:A596: 2E        .byte $2E

- D - I - 0x0125A7 10:A597: F5        .byte con_F5

- D - I - 0x0125A8 10:A598: 8B 96     .dbyt off_AB96 - $2000

- D - I - 0x0125AA 10:A59A: FF        .byte con_выход



off_A59B_57:
- D - I - 0x0125AB 10:A59B: 0C        .byte $0C

- D - I - 0x0125AC 10:A59C: F5        .byte con_F5

- D - I - 0x0125AD 10:A59D: F1        .byte con_координаты_Y_X
- D - I - 0x0125AE 10:A59E: 30        .byte $30
- D - I - 0x0125AF 10:A59F: 2E        .byte $2E

- D - I - 0x0125B0 10:A5A0: FA        .byte con_развилка
- D - I - 0x0125B1 10:A5A1: EA A8     .word off_A8EA
- D - I - 0x0125B3 10:A5A3: 0D B4     .word off_B40D



off_A5A6_58:
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



off_A5C5_5A:
- D - I - 0x0125D5 10:A5C5: 0F        .byte $0F

- D - I - 0x0125D6 10:A5C6: F1        .byte con_координаты_Y_X
- D - I - 0x0125D7 10:A5C7: 30        .byte $30
- D - I - 0x0125D8 10:A5C8: 2E        .byte $2E

- D - I - 0x0125D9 10:A5C9: F5        .byte con_F5

- D - I - 0x0125DA 10:A5CA: 91 D0     .dbyt off_B1D0 - $2000

- D - I - 0x0125DC 10:A5CC: FF        .byte con_выход



off_A5CD_5B:
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



off_A5D9_5C:
- D - I - 0x0125E9 10:A5D9: 34        .byte $34

- D - I - 0x0125EA 10:A5DA: F1        .byte con_координаты_Y_X
- D - I - 0x0125EB 10:A5DB: 30        .byte $30
- D - I - 0x0125EC 10:A5DC: 4E        .byte $4E

- D - I - 0x0125ED 10:A5DD: 92 92     .dbyt off_B292 - $2000

- D - I - 0x0125EF 10:A5DF: FF        .byte con_выход



off_A5E0_5D:
- D - I - 0x0125F0 10:A5E0: 34        .byte $34

- D - I - 0x0125F1 10:A5E1: F1        .byte con_координаты_Y_X
- D - I - 0x0125F2 10:A5E2: 30        .byte $30
- D - I - 0x0125F3 10:A5E3: 2E        .byte $2E

- D - I - 0x0125F4 10:A5E4: F5        .byte con_F5

- D - I - 0x0125F5 10:A5E5: 92 A8     .dbyt off_B2A8 - $2000

- D - I - 0x0125F7 10:A5E7: FF        .byte con_выход



off_A5E8_5E:
- D - I - 0x0125F8 10:A5E8: 40        .byte $40

- D - I - 0x0125F9 10:A5E9: F1        .byte con_координаты_Y_X
- D - I - 0x0125FA 10:A5EA: 30        .byte $30
- D - I - 0x0125FB 10:A5EB: 2E        .byte $2E

- D - I - 0x0125FC 10:A5EC: F5        .byte con_F5

- D - I - 0x0125FD 10:A5ED: FA        .byte con_развилка
- D - I - 0x0125FE 10:A5EE: 2E B2     .word off_B22E
- D - I - 0x012600 10:A5F0: DA B2     .word off_B2DA



off_A5F3_5F:
- D - I - 0x012603 10:A5F3: 13        .byte $13

- D - I - 0x012604 10:A5F4: F1        .byte con_координаты_Y_X
- D - I - 0x012605 10:A5F5: 30        .byte $30
- D - I - 0x012606 10:A5F6: 2E        .byte $2E

- D - I - 0x012607 10:A5F7: F5        .byte con_F5

- D - I - 0x012608 10:A5F8: FA        .byte con_развилка
- D - I - 0x012609 10:A5F9: C0 B2     .word off_B2C0
- D - I - 0x01260B 10:A5FB: CD B2     .word off_B2CD



off_A5FE_60:
- D - I - 0x01260E 10:A5FE: 05        .byte $05

- D - I - 0x01260F 10:A5FF: F1        .byte con_координаты_Y_X
- D - I - 0x012610 10:A600: 30        .byte $30
- D - I - 0x012611 10:A601: 2E        .byte $2E

- D - I - 0x012612 10:A602: F5        .byte con_F5

- D - I - 0x012613 10:A603: FA        .byte con_развилка
- D - I - 0x012614 10:A604: 2E B2     .word off_B22E
- D - I - 0x012616 10:A606: DA B2     .word off_B2DA



off_A609_61:
- D - I - 0x012619 10:A609: 0E        .byte $0E

- D - I - 0x01261A 10:A60A: F1        .byte con_координаты_Y_X
- D - I - 0x01261B 10:A60B: 30        .byte $30
- D - I - 0x01261C 10:A60C: 46        .byte $46

- D - I - 0x01261D 10:A60D: FA        .byte con_развилка
- D - I - 0x01261E 10:A60E: D0 B1     .word off_B1D0
- D - I - 0x012620 10:A610: E7 B1     .word off_B1E7



off_A613_62:
- D - I - 0x012623 10:A613: 0A        .byte $0A

- D - I - 0x012624 10:A614: F1        .byte con_координаты_Y_X
- D - I - 0x012625 10:A615: 30        .byte $30
- D - I - 0x012626 10:A616: 2E        .byte $2E

- D - I - 0x012627 10:A617: F5        .byte con_F5

- D - I - 0x012628 10:A618: 8D BA     .dbyt off_ADBA - $2000

- D - I - 0x01262A 10:A61A: FF        .byte con_выход



off_A61B_63:
- D - I - 0x01262B 10:A61B: 0E        .byte $0E

- D - I - 0x01262C 10:A61C: F1        .byte con_координаты_Y_X
- D - I - 0x01262D 10:A61D: 30        .byte $30
- D - I - 0x01262E 10:A61E: 46        .byte $46

- D - I - 0x01262F 10:A61F: FA        .byte con_развилка
- D - I - 0x012630 10:A620: E8 AF     .word off_AFE8
- D - I - 0x012632 10:A622: 00 B2     .word off_B200



off_A625_64:
- D - I - 0x012635 10:A625: 0E        .byte $0E

- D - I - 0x012636 10:A626: F1        .byte con_координаты_Y_X
- D - I - 0x012637 10:A627: 30        .byte $30
- D - I - 0x012638 10:A628: 46        .byte $46

- D - I - 0x012639 10:A629: 91 04     .dbyt off_B104 - $2000

- D - I - 0x01263B 10:A62B: F9        .byte con_F9

- D - I - 0x01263C 10:A62C: 78        .byte $78

- D - I - 0x01263D 10:A62D: FF        .byte con_выход



off_A62E_65:
- D - I - 0x01263E 10:A62E: 0C        .byte $0C

- D - I - 0x01263F 10:A62F: F1        .byte con_координаты_Y_X
- D - I - 0x012640 10:A630: 30        .byte $30
- D - I - 0x012641 10:A631: 32        .byte $32

- D - I - 0x012642 10:A632: 89 16     .dbyt off_A916 - $2000

- D - I - 0x012644 10:A634: FF        .byte con_выход



off_A635_66:
- D - I - 0x012645 10:A635: 0C        .byte $0C

- D - I - 0x012646 10:A636: F1        .byte con_координаты_Y_X
- D - I - 0x012647 10:A637: 30        .byte $30
- D - I - 0x012648 10:A638: 2E        .byte $2E

- D - I - 0x012649 10:A639: F5        .byte con_F5

- D - I - 0x01264A 10:A63A: FA        .byte con_развилка
- D - I - 0x01264B 10:A63B: 64 B3     .word off_B364
- D - I - 0x01264D 10:A63D: D6 A8     .word off_A8D6



off_A640_67:
- D - I - 0x012650 10:A640: 0C        .byte $0C

- D - I - 0x012651 10:A641: F1        .byte con_координаты_Y_X
- D - I - 0x012652 10:A642: 30        .byte $30
- D - I - 0x012653 10:A643: 2E        .byte $2E

- D - I - 0x012654 10:A644: F5        .byte con_F5

- D - I - 0x012655 10:A645: 93 64     .dbyt off_B364 - $2000

- D - I - 0x012657 10:A647: FF        .byte con_выход



off_A648_68:
- D - I - 0x012658 10:A648: 1F        .byte $1F

- D - I - 0x012659 10:A649: F1        .byte con_координаты_Y_X
- D - I - 0x01265A 10:A64A: 30        .byte $30
- D - I - 0x01265B 10:A64B: 2E        .byte $2E

- D - I - 0x01265C 10:A64C: F5        .byte con_F5

- D - I - 0x01265D 10:A64D: FA        .byte con_развилка
- D - I - 0x01265E 10:A64E: FD AA     .word off_AAFD
- D - I - 0x012660 10:A650: C9 B0     .word off_B0C9



off_A653_69:
- D - I - 0x012663 10:A653: 0C        .byte $0C

- D - I - 0x012664 10:A654: F1        .byte con_координаты_Y_X
- D - I - 0x012665 10:A655: 30        .byte $30
- D - I - 0x012666 10:A656: 3E        .byte $3E

- D - I - 0x012667 10:A657: 89 E3     .dbyt off_A9E3 - $2000
- D - I - 0x012669 10:A659: 03        .byte $03

- D - I - 0x01266A 10:A65A: 89 16     .dbyt off_A916 - $2000

- D - I - 0x01266C 10:A65C: FF        .byte con_выход



off_A65D_6A:
- D - I - 0x01266D 10:A65D: 0C        .byte $0C

- D - I - 0x01266E 10:A65E: F5        .byte con_F5

- D - I - 0x01266F 10:A65F: F1        .byte con_координаты_Y_X
- D - I - 0x012670 10:A660: 30        .byte $30
- D - I - 0x012671 10:A661: 2E        .byte $2E

- D - I - 0x012672 10:A662: 88 EA     .dbyt off_A8EA - $2000

- D - I - 0x012674 10:A664: FF        .byte con_выход



off_A665_6B:
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



off_A674_6C:
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










off_A681:
- D - I - 0x012691 10:A681: 04        .byte $04
- D - I - 0x012692 10:A682: 05        .byte $05
- D - I - 0x012693 10:A683: 23        .byte $23
- D - I - 0x012694 10:A684: 5F        .byte $5F
- D - I - 0x012695 10:A685: BD        .byte $BD
- D - I - 0x012696 10:A686: 3B        .byte $3B
- D - I - 0x012697 10:A687: 08        .byte $08
- D - I - 0x012698 10:A688: 3F        .byte $3F
- D - I - 0x012699 10:A689: 20        .byte $20
- D - I - 0x01269A 10:A68A: 03        .byte $03
- D - I - 0x01269B 10:A68B: 21        .byte $21
- D - I - 0x01269C 10:A68C: BE        .byte $BE
- D - I - 0x01269D 10:A68D: 37        .byte $37
- D - I - 0x01269E 10:A68E: 02        .byte $02
- D - I - 0x01269F 10:A68F: 3B        .byte $3B
- D - I - 0x0126A0 10:A690: 09        .byte $09
- D - I - 0x0126A1 10:A691: 3F        .byte $3F
- D - I - 0x0126A2 10:A692: 0A        .byte $0A
- D - I - 0x0126A3 10:A693: 03        .byte $03
- D - I - 0x0126A4 10:A694: 24        .byte $24
- D - I - 0x0126A5 10:A695: 07        .byte $07
- D - I - 0x0126A6 10:A696: 26        .byte $26
- D - I - 0x0126A7 10:A697: BF        .byte $BF
- D - I - 0x0126A8 10:A698: 37        .byte $37
- D - I - 0x0126A9 10:A699: 03        .byte $03
- D - I - 0x0126AA 10:A69A: 3B        .byte $3B
- D - I - 0x0126AB 10:A69B: 0C        .byte $0C
- D - I - 0x0126AC 10:A69C: 3F        .byte $3F
- D - I - 0x0126AD 10:A69D: 0B        .byte $0B
- D - I - 0x0126AE 10:A69E: 03        .byte $03
- D - I - 0x0126AF 10:A69F: 25        .byte $25
- D - I - 0x0126B0 10:A6A0: 07        .byte $07
- D - I - 0x0126B1 10:A6A1: 27        .byte $27
- D - I - 0x0126B2 10:A6A2: A0        .byte $A0
- D - I - 0x0126B3 10:A6A3: 37        .byte $37
- D - I - 0x0126B4 10:A6A4: 06        .byte $06
- D - I - 0x0126B5 10:A6A5: 3B        .byte $3B
- D - I - 0x0126B6 10:A6A6: 0D        .byte $0D
- D - I - 0x0126B7 10:A6A7: 3F        .byte $3F
- D - I - 0x0126B8 10:A6A8: 0E        .byte $0E
- D - I - 0x0126B9 10:A6A9: 03        .byte $03
- D - I - 0x0126BA 10:A6AA: 30        .byte $30
- D - I - 0x0126BB 10:A6AB: 07        .byte $07
- D - I - 0x0126BC 10:A6AC: 32        .byte $32
- D - I - 0x0126BD 10:A6AD: 0B        .byte $0B
- D - I - 0x0126BE 10:A6AE: 22        .byte $22
- D - I - 0x0126BF 10:A6AF: A1        .byte $A1
- D - I - 0x0126C0 10:A6B0: 3B        .byte $3B
- D - I - 0x0126C1 10:A6B1: 18        .byte $18
- D - I - 0x0126C2 10:A6B2: 3F        .byte $3F
- D - I - 0x0126C3 10:A6B3: 0F        .byte $0F
- D - I - 0x0126C4 10:A6B4: 03        .byte $03
- D - I - 0x0126C5 10:A6B5: 31        .byte $31
- D - I - 0x0126C6 10:A6B6: 07        .byte $07
- D - I - 0x0126C7 10:A6B7: 33        .byte $33
- D - I - 0x0126C8 10:A6B8: 0B        .byte $0B
- D - I - 0x0126C9 10:A6B9: 23        .byte $23
- D - I - 0x0126CA 10:A6BA: A2        .byte $A2
- D - I - 0x0126CB 10:A6BB: 3F        .byte $3F
- D - I - 0x0126CC 10:A6BC: 1A        .byte $1A
- D - I - 0x0126CD 10:A6BD: 03        .byte $03
- D - I - 0x0126CE 10:A6BE: 34        .byte $34
- D - I - 0x0126CF 10:A6BF: 07        .byte $07
- D - I - 0x0126D0 10:A6C0: 36        .byte $36
- D - I - 0x0126D1 10:A6C1: FF        .byte con_FF



off_A6C2:
- D - I - 0x0126D2 10:A6C2: 04        .byte $04
- D - I - 0x0126D3 10:A6C3: 05        .byte $05
- D - I - 0x0126D4 10:A6C4: 23        .byte $23
- D - I - 0x0126D5 10:A6C5: 5F        .byte $5F
- D - I - 0x0126D6 10:A6C6: BD        .byte $BD
- D - I - 0x0126D7 10:A6C7: 3B        .byte $3B
- D - I - 0x0126D8 10:A6C8: 04        .byte $04
- D - I - 0x0126D9 10:A6C9: 3F        .byte $3F
- D - I - 0x0126DA 10:A6CA: 07        .byte $07
- D - I - 0x0126DB 10:A6CB: BE        .byte $BE
- D - I - 0x0126DC 10:A6CC: 3B        .byte $3B
- D - I - 0x0126DD 10:A6CD: 05        .byte $05
- D - I - 0x0126DE 10:A6CE: 3F        .byte $3F
- D - I - 0x0126DF 10:A6CF: 12        .byte $12
- D - I - 0x0126E0 10:A6D0: 03        .byte $03
- D - I - 0x0126E1 10:A6D1: 19        .byte $19
- D - I - 0x0126E2 10:A6D2: 07        .byte $07
- D - I - 0x0126E3 10:A6D3: 1B        .byte $1B
- D - I - 0x0126E4 10:A6D4: BF        .byte $BF
- D - I - 0x0126E5 10:A6D5: 3B        .byte $3B
- D - I - 0x0126E6 10:A6D6: 10        .byte $10
- D - I - 0x0126E7 10:A6D7: 3F        .byte $3F
- D - I - 0x0126E8 10:A6D8: 13        .byte $13
- D - I - 0x0126E9 10:A6D9: 03        .byte $03
- D - I - 0x0126EA 10:A6DA: 1C        .byte $1C
- D - I - 0x0126EB 10:A6DB: 07        .byte $07
- D - I - 0x0126EC 10:A6DC: 1E        .byte $1E
- D - I - 0x0126ED 10:A6DD: A0        .byte $A0
- D - I - 0x0126EE 10:A6DE: 3B        .byte $3B
- D - I - 0x0126EF 10:A6DF: 11        .byte $11
- D - I - 0x0126F0 10:A6E0: 3F        .byte $3F
- D - I - 0x0126F1 10:A6E1: 16        .byte $16
- D - I - 0x0126F2 10:A6E2: 03        .byte $03
- D - I - 0x0126F3 10:A6E3: 1D        .byte $1D
- D - I - 0x0126F4 10:A6E4: 07        .byte $07
- D - I - 0x0126F5 10:A6E5: 1F        .byte $1F
- D - I - 0x0126F6 10:A6E6: A1        .byte $A1
- D - I - 0x0126F7 10:A6E7: 3F        .byte $3F
- D - I - 0x0126F8 10:A6E8: 17        .byte $17
- D - I - 0x0126F9 10:A6E9: 03        .byte $03
- D - I - 0x0126FA 10:A6EA: 48        .byte $48
- D - I - 0x0126FB 10:A6EB: 07        .byte $07
- D - I - 0x0126FC 10:A6EC: 4A        .byte $4A
- D - I - 0x0126FD 10:A6ED: A2        .byte $A2
- D - I - 0x0126FE 10:A6EE: 03        .byte $03
- D - I - 0x0126FF 10:A6EF: 49        .byte $49
- D - I - 0x012700 10:A6F0: 07        .byte $07
- D - I - 0x012701 10:A6F1: 4B        .byte $4B
- D - I - 0x012702 10:A6F2: FF        .byte con_FF



off_A6F3:
- D - I - 0x012703 10:A6F3: 04        .byte $04
- D - I - 0x012704 10:A6F4: 05        .byte $05
- D - I - 0x012705 10:A6F5: 23        .byte $23
- D - I - 0x012706 10:A6F6: 5F        .byte $5F
- D - I - 0x012707 10:A6F7: BE        .byte $BE
- D - I - 0x012708 10:A6F8: 3B        .byte $3B
- D - I - 0x012709 10:A6F9: 35        .byte $35
- D - I - 0x01270A 10:A6FA: 3F        .byte $3F
- D - I - 0x01270B 10:A6FB: 37        .byte $37
- D - I - 0x01270C 10:A6FC: 03        .byte $03
- D - I - 0x01270D 10:A6FD: 3D        .byte $3D
- D - I - 0x01270E 10:A6FE: BF        .byte $BF
- D - I - 0x01270F 10:A6FF: 3B        .byte $3B
- D - I - 0x012710 10:A700: 60        .byte $60
- D - I - 0x012711 10:A701: 3F        .byte $3F
- D - I - 0x012712 10:A702: 62        .byte $62
- D - I - 0x012713 10:A703: 03        .byte $03
- D - I - 0x012714 10:A704: 68        .byte $68
- D - I - 0x012715 10:A705: 07        .byte $07
- D - I - 0x012716 10:A706: 6A        .byte $6A
- D - I - 0x012717 10:A707: A0        .byte $A0
- D - I - 0x012718 10:A708: 3B        .byte $3B
- D - I - 0x012719 10:A709: 61        .byte $61
- D - I - 0x01271A 10:A70A: 3F        .byte $3F
- D - I - 0x01271B 10:A70B: 63        .byte $63
- D - I - 0x01271C 10:A70C: 03        .byte $03
- D - I - 0x01271D 10:A70D: 69        .byte $69
- D - I - 0x01271E 10:A70E: 07        .byte $07
- D - I - 0x01271F 10:A70F: 6B        .byte $6B
- D - I - 0x012720 10:A710: A1        .byte $A1
- D - I - 0x012721 10:A711: 3F        .byte $3F
- D - I - 0x012722 10:A712: 66        .byte $66
- D - I - 0x012723 10:A713: 03        .byte $03
- D - I - 0x012724 10:A714: 6C        .byte $6C
- D - I - 0x012725 10:A715: 07        .byte $07
- D - I - 0x012726 10:A716: 6E        .byte $6E
- D - I - 0x012727 10:A717: FF        .byte con_FF



off_A718:
- D - I - 0x012728 10:A718: 04        .byte $04
- D - I - 0x012729 10:A719: 05        .byte $05
- D - I - 0x01272A 10:A71A: 23        .byte $23
- D - I - 0x01272B 10:A71B: 5F        .byte $5F
- D - I - 0x01272C 10:A71C: BE        .byte $BE
- D - I - 0x01272D 10:A71D: 9F        .byte $9F
- D - I - 0x01272E 10:A71E: C0        .byte $C0
- D - I - 0x01272F 10:A71F: 33        .byte $33
- D - I - 0x012730 10:A720: 14        .byte $14
- D - I - 0x012731 10:A721: C0        .byte $C0
- D - I - 0x012732 10:A722: 13        .byte $13
- D - I - 0x012733 10:A723: 42        .byte $42
- D - I - 0x012734 10:A724: 80        .byte $80
- D - I - 0x012735 10:A725: C0        .byte $C0
- D - I - 0x012736 10:A726: 13        .byte $13
- D - I - 0x012737 10:A727: 4C        .byte $4C
- D - I - 0x012738 10:A728: BF        .byte $BF
- D - I - 0x012739 10:A729: 9F        .byte $9F
- D - I - 0x01273A 10:A72A: C0        .byte $C0
- D - I - 0x01273B 10:A72B: 33        .byte $33
- D - I - 0x01273C 10:A72C: 15        .byte $15
- D - I - 0x01273D 10:A72D: C0        .byte $C0
- D - I - 0x01273E 10:A72E: 13        .byte $13
- D - I - 0x01273F 10:A72F: 43        .byte $43
- D - I - 0x012740 10:A730: 80        .byte $80
- D - I - 0x012741 10:A731: C0        .byte $C0
- D - I - 0x012742 10:A732: 13        .byte $13
- D - I - 0x012743 10:A733: 4D        .byte $4D
- D - I - 0x012744 10:A734: A0        .byte $A0
- D - I - 0x012745 10:A735: 9F        .byte $9F
- D - I - 0x012746 10:A736: C0        .byte $C0
- D - I - 0x012747 10:A737: 33        .byte $33
- D - I - 0x012748 10:A738: 40        .byte $40
- D - I - 0x012749 10:A739: C0        .byte $C0
- D - I - 0x01274A 10:A73A: 13        .byte $13
- D - I - 0x01274B 10:A73B: 46        .byte $46
- D - I - 0x01274C 10:A73C: 80        .byte $80
- D - I - 0x01274D 10:A73D: C0        .byte $C0
- D - I - 0x01274E 10:A73E: 13        .byte $13
- D - I - 0x01274F 10:A73F: 58        .byte $58
- D - I - 0x012750 10:A740: A1        .byte $A1
- D - I - 0x012751 10:A741: 80        .byte $80
- D - I - 0x012752 10:A742: C0        .byte $C0
- D - I - 0x012753 10:A743: 33        .byte $33
- D - I - 0x012754 10:A744: 47        .byte $47
- D - I - 0x012755 10:A745: C0        .byte $C0
- D - I - 0x012756 10:A746: 13        .byte $13
- D - I - 0x012757 10:A747: 59        .byte $59
- D - I - 0x012758 10:A748: FF        .byte con_FF



off_A749:
- D - I - 0x012759 10:A749: 04        .byte $04
- D - I - 0x01275A 10:A74A: 05        .byte $05
- D - I - 0x01275B 10:A74B: 23        .byte $23
- D - I - 0x01275C 10:A74C: 5F        .byte $5F
- D - I - 0x01275D 10:A74D: BF        .byte $BF
- D - I - 0x01275E 10:A74E: 3F        .byte $3F
- D - I - 0x01275F 10:A74F: 28        .byte $28
- D - I - 0x012760 10:A750: 03        .byte $03
- D - I - 0x012761 10:A751: 2A        .byte $2A
- D - I - 0x012762 10:A752: A0        .byte $A0
- D - I - 0x012763 10:A753: 3F        .byte $3F
- D - I - 0x012764 10:A754: 29        .byte $29
- D - I - 0x012765 10:A755: 03        .byte $03
- D - I - 0x012766 10:A756: 2B        .byte $2B
- D - I - 0x012767 10:A757: A1        .byte $A1
- D - I - 0x012768 10:A758: 3F        .byte $3F
- D - I - 0x012769 10:A759: 2C        .byte $2C
- D - I - 0x01276A 10:A75A: 03        .byte $03
- D - I - 0x01276B 10:A75B: 2E        .byte $2E
- D - I - 0x01276C 10:A75C: FF        .byte con_FF



off_A75D:
- D - I - 0x01276D 10:A75D: 04        .byte $04
- D - I - 0x01276E 10:A75E: 05        .byte $05
- D - I - 0x01276F 10:A75F: 23        .byte $23
- D - I - 0x012770 10:A760: 5F        .byte $5F
- D - I - 0x012771 10:A761: BF        .byte $BF
- D - I - 0x012772 10:A762: 3F        .byte $3F
- D - I - 0x012773 10:A763: 2D        .byte $2D
- D - I - 0x012774 10:A764: 03        .byte $03
- D - I - 0x012775 10:A765: 2F        .byte $2F
- D - I - 0x012776 10:A766: A0        .byte $A0
- D - I - 0x012777 10:A767: 3F        .byte $3F
- D - I - 0x012778 10:A768: 38        .byte $38
- D - I - 0x012779 10:A769: 03        .byte $03
- D - I - 0x01277A 10:A76A: 3A        .byte $3A
- D - I - 0x01277B 10:A76B: A1        .byte $A1
- D - I - 0x01277C 10:A76C: 3F        .byte $3F
- D - I - 0x01277D 10:A76D: 39        .byte $39
- D - I - 0x01277E 10:A76E: 03        .byte $03
- D - I - 0x01277F 10:A76F: 3B        .byte $3B
- D - I - 0x012780 10:A770: FF        .byte con_FF



off_A771:
- D - I - 0x012781 10:A771: 04        .byte $04
- D - I - 0x012782 10:A772: 05        .byte $05
- D - I - 0x012783 10:A773: 23        .byte $23
- D - I - 0x012784 10:A774: 5F        .byte $5F
- D - I - 0x012785 10:A775: BF        .byte $BF
- D - I - 0x012786 10:A776: 3F        .byte $3F
- D - I - 0x012787 10:A777: 4E        .byte $4E
- D - I - 0x012788 10:A778: 03        .byte $03
- D - I - 0x012789 10:A779: 64        .byte $64
- D - I - 0x01278A 10:A77A: A0        .byte $A0
- D - I - 0x01278B 10:A77B: 3F        .byte $3F
- D - I - 0x01278C 10:A77C: 4F        .byte $4F
- D - I - 0x01278D 10:A77D: 03        .byte $03
- D - I - 0x01278E 10:A77E: 65        .byte $65
- D - I - 0x01278F 10:A77F: FF        .byte con_FF



off_A780:
- D - I - 0x012790 10:A780: 04        .byte $04
- D - I - 0x012791 10:A781: 05        .byte $05
- D - I - 0x012792 10:A782: 23        .byte $23
- D - I - 0x012793 10:A783: 5F        .byte $5F
- D - I - 0x012794 10:A784: BF        .byte $BF
- D - I - 0x012795 10:A785: 3F        .byte $3F
- D - I - 0x012796 10:A786: 41        .byte $41
- D - I - 0x012797 10:A787: 03        .byte $03
- D - I - 0x012798 10:A788: 45        .byte $45
- D - I - 0x012799 10:A789: A0        .byte $A0
- D - I - 0x01279A 10:A78A: 3F        .byte $3F
- D - I - 0x01279B 10:A78B: 44        .byte $44
- D - I - 0x01279C 10:A78C: 03        .byte $03
- D - I - 0x01279D 10:A78D: 50        .byte $50
- D - I - 0x01279E 10:A78E: FF        .byte con_FF



off_A78F:
- D - I - 0x01279F 10:A78F: 04        .byte $04
- D - I - 0x0127A0 10:A790: 05        .byte $05
- D - I - 0x0127A1 10:A791: 23        .byte $23
- D - I - 0x0127A2 10:A792: 5F        .byte $5F
- D - I - 0x0127A3 10:A793: BF        .byte $BF
- D - I - 0x0127A4 10:A794: 3F        .byte $3F
- D - I - 0x0127A5 10:A795: 51        .byte $51
- D - I - 0x0127A6 10:A796: 03        .byte $03
- D - I - 0x0127A7 10:A797: 52        .byte $52
- D - I - 0x0127A8 10:A798: A0        .byte $A0
- D - I - 0x0127A9 10:A799: 3F        .byte $3F
- D - I - 0x0127AA 10:A79A: 54        .byte $54
- D - I - 0x0127AB 10:A79B: 03        .byte $03
- D - I - 0x0127AC 10:A79C: 53        .byte $53
- D - I - 0x0127AD 10:A79D: FF        .byte con_FF



off_A79E:
- D - I - 0x0127AE 10:A79E: 04        .byte $04
- D - I - 0x0127AF 10:A79F: 05        .byte $05
- D - I - 0x0127B0 10:A7A0: 23        .byte $23
- D - I - 0x0127B1 10:A7A1: 5F        .byte $5F
- D - I - 0x0127B2 10:A7A2: BF        .byte $BF
- D - I - 0x0127B3 10:A7A3: 3F        .byte $3F
- D - I - 0x0127B4 10:A7A4: 3C        .byte $3C
- D - I - 0x0127B5 10:A7A5: 03        .byte $03
- D - I - 0x0127B6 10:A7A6: 3E        .byte $3E
- D - I - 0x0127B7 10:A7A7: A0        .byte $A0
- D - I - 0x0127B8 10:A7A8: 3F        .byte $3F
- D - I - 0x0127B9 10:A7A9: 55        .byte $55
- D - I - 0x0127BA 10:A7AA: 03        .byte $03
- D - I - 0x0127BB 10:A7AB: 3F        .byte $3F
- D - I - 0x0127BC 10:A7AC: FF        .byte con_FF



off_A7AD:
- D - I - 0x0127BD 10:A7AD: 04        .byte $04
- D - I - 0x0127BE 10:A7AE: 05        .byte $05
- D - I - 0x0127BF 10:A7AF: 23        .byte $23
- D - I - 0x0127C0 10:A7B0: 5F        .byte $5F
- D - I - 0x0127C1 10:A7B1: A0        .byte $A0
- D - I - 0x0127C2 10:A7B2: 80        .byte $80
- D - I - 0x0127C3 10:A7B3: CC        .byte $CC
- D - I - 0x0127C4 10:A7B4: 33        .byte $33
- D - I - 0x0127C5 10:A7B5: 67        .byte $67
- D - I - 0x0127C6 10:A7B6: FF        .byte con_FF



off_A7B7:
- D - I - 0x0127C7 10:A7B7: 04        .byte $04
- D - I - 0x0127C8 10:A7B8: 05        .byte $05
- D - I - 0x0127C9 10:A7B9: 23        .byte $23
- D - I - 0x0127CA 10:A7BA: 5F        .byte $5F
- D - I - 0x0127CB 10:A7BB: A0        .byte $A0
- D - I - 0x0127CC 10:A7BC: 80        .byte $80
- D - I - 0x0127CD 10:A7BD: CC        .byte $CC
- D - I - 0x0127CE 10:A7BE: 33        .byte $33
- D - I - 0x0127CF 10:A7BF: 6D        .byte $6D
- D - I - 0x0127D0 10:A7C0: FF        .byte con_FF



off_A7C1:
- D - I - 0x0127D1 10:A7C1: 04        .byte $04
- D - I - 0x0127D2 10:A7C2: 05        .byte $05
- D - I - 0x0127D3 10:A7C3: 23        .byte $23
- D - I - 0x0127D4 10:A7C4: 5F        .byte $5F
- D - I - 0x0127D5 10:A7C5: A0        .byte $A0
- D - I - 0x0127D6 10:A7C6: 80        .byte $80
- D - I - 0x0127D7 10:A7C7: CC        .byte $CC
- D - I - 0x0127D8 10:A7C8: 33        .byte $33
- D - I - 0x0127D9 10:A7C9: 6F        .byte $6F
- D - I - 0x0127DA 10:A7CA: FF        .byte con_FF



off_A7CB:
- D - I - 0x0127DB 10:A7CB: 7C        .byte $7C
- D - I - 0x0127DC 10:A7CC: 7D        .byte $7D
- D - I - 0x0127DD 10:A7CD: 7E        .byte $7E
- D - I - 0x0127DE 10:A7CE: 7F        .byte $7F
- D - I - 0x0127DF 10:A7CF: BF        .byte $BF
- D - I - 0x0127E0 10:A7D0: 30        .byte $30
- D - I - 0x0127E1 10:A7D1: 40        .byte $40
- D - I - 0x0127E2 10:A7D2: 31        .byte $31
- D - I - 0x0127E3 10:A7D3: 5F        .byte $5F
- D - I - 0x0127E4 10:A7D4: 34        .byte $34
- D - I - 0x0127E5 10:A7D5: 44        .byte $44
- D - I - 0x0127E6 10:A7D6: 35        .byte $35
- D - I - 0x0127E7 10:A7D7: 63        .byte $63
- D - I - 0x0127E8 10:A7D8: 38        .byte $38
- D - I - 0x0127E9 10:A7D9: 48        .byte $48
- D - I - 0x0127EA 10:A7DA: 39        .byte $39
- D - I - 0x0127EB 10:A7DB: 67        .byte $67
- D - I - 0x0127EC 10:A7DC: 3C        .byte $3C
- D - I - 0x0127ED 10:A7DD: 4C        .byte $4C
- D - I - 0x0127EE 10:A7DE: 3E        .byte $3E
- D - I - 0x0127EF 10:A7DF: 6B        .byte $6B
- D - I - 0x0127F0 10:A7E0: 03        .byte $03
- D - I - 0x0127F1 10:A7E1: 50        .byte $50
- D - I - 0x0127F2 10:A7E2: 02        .byte $02
- D - I - 0x0127F3 10:A7E3: 6F        .byte $6F
- D - I - 0x0127F4 10:A7E4: 05        .byte $05
- D - I - 0x0127F5 10:A7E5: 73        .byte $73
- D - I - 0x0127F6 10:A7E6: 0F        .byte $0F
- D - I - 0x0127F7 10:A7E7: 58        .byte $58
- D - I - 0x0127F8 10:A7E8: 0E        .byte $0E
- D - I - 0x0127F9 10:A7E9: 78        .byte $78
- D - I - 0x0127FA 10:A7EA: 13        .byte $13
- D - I - 0x0127FB 10:A7EB: 5B        .byte $5B
- D - I - 0x0127FC 10:A7EC: 12        .byte $12
- D - I - 0x0127FD 10:A7ED: 7B        .byte $7B
- D - I - 0x0127FE 10:A7EE: A0        .byte $A0
- D - I - 0x0127FF 10:A7EF: 30        .byte $30
- D - I - 0x012800 10:A7F0: 41        .byte $41
- D - I - 0x012801 10:A7F1: 31        .byte $31
- D - I - 0x012802 10:A7F2: 60        .byte $60
- D - I - 0x012803 10:A7F3: 37        .byte $37
- D - I - 0x012804 10:A7F4: 45        .byte $45
- D - I - 0x012805 10:A7F5: 36        .byte $36
- D - I - 0x012806 10:A7F6: 64        .byte $64
- D - I - 0x012807 10:A7F7: 3B        .byte $3B
- D - I - 0x012808 10:A7F8: 49        .byte $49
- D - I - 0x012809 10:A7F9: 3A        .byte $3A
- D - I - 0x01280A 10:A7FA: 68        .byte $68
- D - I - 0x01280B 10:A7FB: 3F        .byte $3F
- D - I - 0x01280C 10:A7FC: 4D        .byte $4D
- D - I - 0x01280D 10:A7FD: 3E        .byte $3E
- D - I - 0x01280E 10:A7FE: 6C        .byte $6C
- D - I - 0x01280F 10:A7FF: 00        .byte $00
- D - I - 0x012810 10:A800: 51        .byte $51
- D - I - 0x012811 10:A801: 02        .byte $02
- D - I - 0x012812 10:A802: 70        .byte $70
- D - I - 0x012813 10:A803: 04        .byte $04
- D - I - 0x012814 10:A804: 54        .byte $54
- D - I - 0x012815 10:A805: 05        .byte $05
- D - I - 0x012816 10:A806: 74        .byte $74
- D - I - 0x012817 10:A807: 08        .byte $08
- D - I - 0x012818 10:A808: 56        .byte $56
- D - I - 0x012819 10:A809: 09        .byte $09
- D - I - 0x01281A 10:A80A: 76        .byte $76
- D - I - 0x01281B 10:A80B: 0F        .byte $0F
- D - I - 0x01281C 10:A80C: 59        .byte $59
- D - I - 0x01281D 10:A80D: 0E        .byte $0E
- D - I - 0x01281E 10:A80E: 79        .byte $79
- D - I - 0x01281F 10:A80F: 13        .byte $13
- D - I - 0x012820 10:A810: 5C        .byte $5C
- D - I - 0x012821 10:A811: 12        .byte $12
- D - I - 0x012822 10:A812: 7C        .byte $7C
- D - I - 0x012823 10:A813: A1        .byte $A1
- D - I - 0x012824 10:A814: 33        .byte $33
- D - I - 0x012825 10:A815: 42        .byte $42
- D - I - 0x012826 10:A816: 32        .byte $32
- D - I - 0x012827 10:A817: 61        .byte $61
- D - I - 0x012828 10:A818: 37        .byte $37
- D - I - 0x012829 10:A819: 46        .byte $46
- D - I - 0x01282A 10:A81A: 36        .byte $36
- D - I - 0x01282B 10:A81B: 65        .byte $65
- D - I - 0x01282C 10:A81C: 3B        .byte $3B
- D - I - 0x01282D 10:A81D: 4A        .byte $4A
- D - I - 0x01282E 10:A81E: 3A        .byte $3A
- D - I - 0x01282F 10:A81F: 69        .byte $69
- D - I - 0x012830 10:A820: 3F        .byte $3F
- D - I - 0x012831 10:A821: 4E        .byte $4E
- D - I - 0x012832 10:A822: 3E        .byte $3E
- D - I - 0x012833 10:A823: 6D        .byte $6D
- D - I - 0x012834 10:A824: 00        .byte $00
- D - I - 0x012835 10:A825: 52        .byte $52
- D - I - 0x012836 10:A826: 02        .byte $02
- D - I - 0x012837 10:A827: 71        .byte $71
- D - I - 0x012838 10:A828: 04        .byte $04
- D - I - 0x012839 10:A829: 55        .byte $55
- D - I - 0x01283A 10:A82A: 06        .byte $06
- D - I - 0x01283B 10:A82B: 75        .byte $75
- D - I - 0x01283C 10:A82C: 08        .byte $08
- D - I - 0x01283D 10:A82D: 57        .byte $57
- D - I - 0x01283E 10:A82E: 0A        .byte $0A
- D - I - 0x01283F 10:A82F: 77        .byte $77
- D - I - 0x012840 10:A830: 0F        .byte $0F
- D - I - 0x012841 10:A831: 5A        .byte $5A
- D - I - 0x012842 10:A832: 0E        .byte $0E
- D - I - 0x012843 10:A833: 7A        .byte $7A
- D - I - 0x012844 10:A834: 13        .byte $13
- D - I - 0x012845 10:A835: 5D        .byte $5D
- D - I - 0x012846 10:A836: 12        .byte $12
- D - I - 0x012847 10:A837: 7D        .byte $7D
- D - I - 0x012848 10:A838: A2        .byte $A2
- D - I - 0x012849 10:A839: 30        .byte $30
- D - I - 0x01284A 10:A83A: 43        .byte $43
- D - I - 0x01284B 10:A83B: 32        .byte $32
- D - I - 0x01284C 10:A83C: 62        .byte $62
- D - I - 0x01284D 10:A83D: 34        .byte $34
- D - I - 0x01284E 10:A83E: 47        .byte $47
- D - I - 0x01284F 10:A83F: 36        .byte $36
- D - I - 0x012850 10:A840: 66        .byte $66
- D - I - 0x012851 10:A841: 3B        .byte $3B
- D - I - 0x012852 10:A842: 4B        .byte $4B
- D - I - 0x012853 10:A843: 3A        .byte $3A
- D - I - 0x012854 10:A844: 6A        .byte $6A
- D - I - 0x012855 10:A845: 3F        .byte $3F
- D - I - 0x012856 10:A846: 4F        .byte $4F
- D - I - 0x012857 10:A847: 3E        .byte $3E
- D - I - 0x012858 10:A848: 6E        .byte $6E
- D - I - 0x012859 10:A849: 03        .byte $03
- D - I - 0x01285A 10:A84A: 53        .byte $53
- D - I - 0x01285B 10:A84B: 02        .byte $02
- D - I - 0x01285C 10:A84C: 72        .byte $72
- D - I - 0x01285D 10:A84D: 13        .byte $13
- D - I - 0x01285E 10:A84E: 5E        .byte $5E
- D - I - 0x01285F 10:A84F: 12        .byte $12
- D - I - 0x012860 10:A850: 7E        .byte $7E
- D - I - 0x012861 10:A851: FF        .byte con_FF



off_A852:
- D - I - 0x012862 10:A852: 64        .byte $64
- D - I - 0x012863 10:A853: 65        .byte $65
- D - I - 0x012864 10:A854: 66        .byte $66
- D - I - 0x012865 10:A855: 67        .byte $67
- D - I - 0x012866 10:A856: BE        .byte $BE
- D - I - 0x012867 10:A857: 30        .byte $30
- D - I - 0x012868 10:A858: 8A        .byte $8A
- D - I - 0x012869 10:A859: 34        .byte $34
- D - I - 0x01286A 10:A85A: A0        .byte $A0
- D - I - 0x01286B 10:A85B: 0A        .byte $0A
- D - I - 0x01286C 10:A85C: 92        .byte $92
- D - I - 0x01286D 10:A85D: BF        .byte $BF
- D - I - 0x01286E 10:A85E: 30        .byte $30
- D - I - 0x01286F 10:A85F: 8B        .byte $8B
- D - I - 0x012870 10:A860: 34        .byte $34
- D - I - 0x012871 10:A861: A1        .byte $A1
- D - I - 0x012872 10:A862: 3B        .byte $3B
- D - I - 0x012873 10:A863: A3        .byte $A3
- D - I - 0x012874 10:A864: 02        .byte $02
- D - I - 0x012875 10:A865: AB        .byte $AB
- D - I - 0x012876 10:A866: 06        .byte $06
- D - I - 0x012877 10:A867: 91        .byte $91
- D - I - 0x012878 10:A868: 0A        .byte $0A
- D - I - 0x012879 10:A869: 93        .byte $93
- D - I - 0x01287A 10:A86A: 0E        .byte $0E
- D - I - 0x01287B 10:A86B: 99        .byte $99
- D - I - 0x01287C 10:A86C: A0        .byte $A0
- D - I - 0x01287D 10:A86D: 30        .byte $30
- D - I - 0x01287E 10:A86E: 8E        .byte $8E
- D - I - 0x01287F 10:A86F: 34        .byte $34
- D - I - 0x012880 10:A870: A4        .byte $A4
- D - I - 0x012881 10:A871: 38        .byte $38
- D - I - 0x012882 10:A872: A6        .byte $A6
- D - I - 0x012883 10:A873: 3C        .byte $3C
- D - I - 0x012884 10:A874: AC        .byte $AC
- D - I - 0x012885 10:A875: 02        .byte $02
- D - I - 0x012886 10:A876: AE        .byte $AE
- D - I - 0x012887 10:A877: 06        .byte $06
- D - I - 0x012888 10:A878: 94        .byte $94
- D - I - 0x012889 10:A879: 0A        .byte $0A
- D - I - 0x01288A 10:A87A: 96        .byte $96
- D - I - 0x01288B 10:A87B: A1        .byte $A1
- D - I - 0x01288C 10:A87C: 30        .byte $30
- D - I - 0x01288D 10:A87D: 8F        .byte $8F
- D - I - 0x01288E 10:A87E: 34        .byte $34
- D - I - 0x01288F 10:A87F: A5        .byte $A5
- D - I - 0x012890 10:A880: 38        .byte $38
- D - I - 0x012891 10:A881: 01        .byte $01
- D - I - 0x012892 10:A882: 3D        .byte $3D
- D - I - 0x012893 10:A883: AD        .byte $AD
- D - I - 0x012894 10:A884: 02        .byte $02
- D - I - 0x012895 10:A885: AF        .byte $AF
- D - I - 0x012896 10:A886: 0A        .byte $0A
- D - I - 0x012897 10:A887: 9D        .byte $9D
- D - I - 0x012898 10:A888: 0E        .byte $0E
- D - I - 0x012899 10:A889: 96        .byte $96
- D - I - 0x01289A 10:A88A: A2        .byte $A2
- D - I - 0x01289B 10:A88B: 38        .byte $38
- D - I - 0x01289C 10:A88C: A7        .byte $A7
- D - I - 0x01289D 10:A88D: 0E        .byte $0E
- D - I - 0x01289E 10:A88E: 9D        .byte $9D
- D - I - 0x01289F 10:A88F: A3        .byte $A3
- D - I - 0x0128A0 10:A890: 06        .byte $06
- D - I - 0x0128A1 10:A891: B7        .byte $B7
- D - I - 0x0128A2 10:A892: FB        .byte con_jmp
- D - I - 0x0128A3 10:A893: AC B4     .word off_B4AC



off_A895:
- D - I - 0x0128A5 10:A895: 64        .byte $64
- D - I - 0x0128A6 10:A896: 65        .byte $65
- D - I - 0x0128A7 10:A897: 66        .byte $66
- D - I - 0x0128A8 10:A898: 67        .byte $67
- D - I - 0x0128A9 10:A899: BE        .byte $BE
- D - I - 0x0128AA 10:A89A: 32        .byte $32
- D - I - 0x0128AB 10:A89B: 9A        .byte $9A
- D - I - 0x0128AC 10:A89C: 36        .byte $36
- D - I - 0x0128AD 10:A89D: B0        .byte $B0
- D - I - 0x0128AE 10:A89E: 0B        .byte $0B
- D - I - 0x0128AF 10:A89F: 92        .byte $92
- D - I - 0x0128B0 10:A8A0: BF        .byte $BF
- D - I - 0x0128B1 10:A8A1: 32        .byte $32
- D - I - 0x0128B2 10:A8A2: 9B        .byte $9B
- D - I - 0x0128B3 10:A8A3: 36        .byte $36
- D - I - 0x0128B4 10:A8A4: B1        .byte $B1
- D - I - 0x0128B5 10:A8A5: 3B        .byte $3B
- D - I - 0x0128B6 10:A8A6: B2        .byte $B2
- D - I - 0x0128B7 10:A8A7: 03        .byte $03
- D - I - 0x0128B8 10:A8A8: AB        .byte $AB
- D - I - 0x0128B9 10:A8A9: 07        .byte $07
- D - I - 0x0128BA 10:A8AA: 91        .byte $91
- D - I - 0x0128BB 10:A8AB: 0B        .byte $0B
- D - I - 0x0128BC 10:A8AC: 93        .byte $93
- D - I - 0x0128BD 10:A8AD: 0F        .byte $0F
- D - I - 0x0128BE 10:A8AE: 99        .byte $99
- D - I - 0x0128BF 10:A8AF: A0        .byte $A0
- D - I - 0x0128C0 10:A8B0: 32        .byte $32
- D - I - 0x0128C1 10:A8B1: 9E        .byte $9E
- D - I - 0x0128C2 10:A8B2: 36        .byte $36
- D - I - 0x0128C3 10:A8B3: B4        .byte $B4
- D - I - 0x0128C4 10:A8B4: 3A        .byte $3A
- D - I - 0x0128C5 10:A8B5: B3        .byte $B3
- D - I - 0x0128C6 10:A8B6: 3E        .byte $3E
- D - I - 0x0128C7 10:A8B7: B9        .byte $B9
- D - I - 0x0128C8 10:A8B8: 03        .byte $03
- D - I - 0x0128C9 10:A8B9: AE        .byte $AE
- D - I - 0x0128CA 10:A8BA: 07        .byte $07
- D - I - 0x0128CB 10:A8BB: 94        .byte $94
- D - I - 0x0128CC 10:A8BC: 0B        .byte $0B
- D - I - 0x0128CD 10:A8BD: 96        .byte $96
- D - I - 0x0128CE 10:A8BE: A1        .byte $A1
- D - I - 0x0128CF 10:A8BF: 32        .byte $32
- D - I - 0x0128D0 10:A8C0: 9F        .byte $9F
- D - I - 0x0128D1 10:A8C1: 36        .byte $36
- D - I - 0x0128D2 10:A8C2: B5        .byte $B5
- D - I - 0x0128D3 10:A8C3: 3A        .byte $3A
- D - I - 0x0128D4 10:A8C4: B6        .byte $B6
- D - I - 0x0128D5 10:A8C5: 3D        .byte $3D
- D - I - 0x0128D6 10:A8C6: BC        .byte $BC
- D - I - 0x0128D7 10:A8C7: 03        .byte $03
- D - I - 0x0128D8 10:A8C8: AF        .byte $AF
- D - I - 0x0128D9 10:A8C9: 0B        .byte $0B
- D - I - 0x0128DA 10:A8CA: 9D        .byte $9D
- D - I - 0x0128DB 10:A8CB: 0F        .byte $0F
- D - I - 0x0128DC 10:A8CC: 96        .byte $96
- D - I - 0x0128DD 10:A8CD: A2        .byte $A2
- D - I - 0x0128DE 10:A8CE: 0F        .byte $0F
- D - I - 0x0128DF 10:A8CF: 9D        .byte $9D
- D - I - 0x0128E0 10:A8D0: A3        .byte $A3
- D - I - 0x0128E1 10:A8D1: 07        .byte $07
- D - I - 0x0128E2 10:A8D2: B7        .byte $B7
- D - I - 0x0128E3 10:A8D3: FB        .byte con_jmp
- D - I - 0x0128E4 10:A8D4: AC B4     .word off_B4AC



off_A8D6:
- D - I - 0x0128E6 10:A8D6: 70        .byte $70
- D - I - 0x0128E7 10:A8D7: 71        .byte $71
- D - I - 0x0128E8 10:A8D8: 66        .byte $66
- D - I - 0x0128E9 10:A8D9: 67        .byte $67
- D - I - 0x0128EA 10:A8DA: BE        .byte $BE
- D - I - 0x0128EB 10:A8DB: 3F        .byte $3F
- D - I - 0x0128EC 10:A8DC: 06        .byte $06
- D - I - 0x0128ED 10:A8DD: BF        .byte $BF
- D - I - 0x0128EE 10:A8DE: 3C        .byte $3C
- D - I - 0x0128EF 10:A8DF: 07        .byte $07
- D - I - 0x0128F0 10:A8E0: 00        .byte $00
- D - I - 0x0128F1 10:A8E1: 0D        .byte $0D
- D - I - 0x0128F2 10:A8E2: 07        .byte $07
- D - I - 0x0128F3 10:A8E3: 0F        .byte $0F
- D - I - 0x0128F4 10:A8E4: A0        .byte $A0
- D - I - 0x0128F5 10:A8E5: 3F        .byte $3F
- D - I - 0x0128F6 10:A8E6: 12        .byte $12
- D - I - 0x0128F7 10:A8E7: FB        .byte con_jmp
- D - I - 0x0128F8 10:A8E8: D4 B4     .word off_B4D4



off_A8EA:
- D - I - 0x0128FA 10:A8EA: 70        .byte $70
- D - I - 0x0128FB 10:A8EB: 71        .byte $71
- D - I - 0x0128FC 10:A8EC: 72        .byte $72
- D - I - 0x0128FD 10:A8ED: 73        .byte $73
- D - I - 0x0128FE 10:A8EE: BE        .byte $BE
- D - I - 0x0128FF 10:A8EF: 3F        .byte $3F
- D - I - 0x012900 10:A8F0: 28        .byte $28
- D - I - 0x012901 10:A8F1: BF        .byte $BF
- D - I - 0x012902 10:A8F2: 3C        .byte $3C
- D - I - 0x012903 10:A8F3: 29        .byte $29
- D - I - 0x012904 10:A8F4: 00        .byte $00
- D - I - 0x012905 10:A8F5: 0D        .byte $0D
- D - I - 0x012906 10:A8F6: 04        .byte $04
- D - I - 0x012907 10:A8F7: 0A        .byte $0A
- D - I - 0x012908 10:A8F8: A0        .byte $A0
- D - I - 0x012909 10:A8F9: 3F        .byte $3F
- D - I - 0x01290A 10:A8FA: 2C        .byte $2C
- D - I - 0x01290B 10:A8FB: FB        .byte con_jmp
- D - I - 0x01290C 10:A8FC: D4 B4     .word off_B4D4



off_A8FE:
- D - I - 0x01290E 10:A8FE: 70        .byte $70
- D - I - 0x01290F 10:A8FF: 71        .byte $71
- D - I - 0x012910 10:A900: 72        .byte $72
- D - I - 0x012911 10:A901: 73        .byte $73
- D - I - 0x012912 10:A902: BE        .byte $BE
- D - I - 0x012913 10:A903: 3F        .byte $3F
- D - I - 0x012914 10:A904: 2A        .byte $2A
- D - I - 0x012915 10:A905: 03        .byte $03
- D - I - 0x012916 10:A906: D1        .byte $D1
- D - I - 0x012917 10:A907: BF        .byte $BF
- D - I - 0x012918 10:A908: 3C        .byte $3C
- D - I - 0x012919 10:A909: 07        .byte $07
- D - I - 0x01291A 10:A90A: 00        .byte $00
- D - I - 0x01291B 10:A90B: 0D        .byte $0D
- D - I - 0x01291C 10:A90C: 07        .byte $07
- D - I - 0x01291D 10:A90D: 20        .byte $20
- D - I - 0x01291E 10:A90E: A0        .byte $A0
- D - I - 0x01291F 10:A90F: 3F        .byte $3F
- D - I - 0x012920 10:A910: 2E        .byte $2E
- D - I - 0x012921 10:A911: 03        .byte $03
- D - I - 0x012922 10:A912: D4        .byte $D4
- D - I - 0x012923 10:A913: FB        .byte con_jmp
- D - I - 0x012924 10:A914: D4 B4     .word off_B4D4



off_A916:
- D - I - 0x012926 10:A916: 6C        .byte $6C
- D - I - 0x012927 10:A917: 6D        .byte $6D
- D - I - 0x012928 10:A918: 6E        .byte $6E
- D - I - 0x012929 10:A919: 6F        .byte $6F
- D - I - 0x01292A 10:A91A: BC        .byte $BC
- D - I - 0x01292B 10:A91B: 0D        .byte $0D
- D - I - 0x01292C 10:A91C: 2A        .byte $2A
- D - I - 0x01292D 10:A91D: BD        .byte $BD
- D - I - 0x01292E 10:A91E: 3B        .byte $3B
- D - I - 0x01292F 10:A91F: 80        .byte $80
- D - I - 0x012930 10:A920: 3C        .byte $3C
- D - I - 0x012931 10:A921: 82        .byte $82
- D - I - 0x012932 10:A922: 03        .byte $03
- D - I - 0x012933 10:A923: 28        .byte $28
- D - I - 0x012934 10:A924: 09        .byte $09
- D - I - 0x012935 10:A925: 29        .byte $29
- D - I - 0x012936 10:A926: 0D        .byte $0D
- D - I - 0x012937 10:A927: 2B        .byte $2B
- D - I - 0x012938 10:A928: BE        .byte $BE
- D - I - 0x012939 10:A929: 37        .byte $37
- D - I - 0x01293A 10:A92A: 81        .byte $81
- D - I - 0x01293B 10:A92B: 3B        .byte $3B
- D - I - 0x01293C 10:A92C: 01        .byte $01
- D - I - 0x01293D 10:A92D: 3C        .byte $3C
- D - I - 0x01293E 10:A92E: 83        .byte $83
- D - I - 0x01293F 10:A92F: 00        .byte $00
- D - I - 0x012940 10:A930: 91        .byte $91
- D - I - 0x012941 10:A931: 04        .byte $04
- D - I - 0x012942 10:A932: 93        .byte $93
- D - I - 0x012943 10:A933: 09        .byte $09
- D - I - 0x012944 10:A934: 2C        .byte $2C
- D - I - 0x012945 10:A935: 0D        .byte $0D
- D - I - 0x012946 10:A936: 2E        .byte $2E
- D - I - 0x012947 10:A937: BF        .byte $BF
- D - I - 0x012948 10:A938: 37        .byte $37
- D - I - 0x012949 10:A939: 84        .byte $84
- D - I - 0x01294A 10:A93A: 3B        .byte $3B
- D - I - 0x01294B 10:A93B: 01        .byte $01
- D - I - 0x01294C 10:A93C: 3C        .byte $3C
- D - I - 0x01294D 10:A93D: 86        .byte $86
- D - I - 0x01294E 10:A93E: 00        .byte $00
- D - I - 0x01294F 10:A93F: 94        .byte $94
- D - I - 0x012950 10:A940: 04        .byte $04
- D - I - 0x012951 10:A941: 96        .byte $96
- D - I - 0x012952 10:A942: 09        .byte $09
- D - I - 0x012953 10:A943: 2D        .byte $2D
- D - I - 0x012954 10:A944: A0        .byte $A0
- D - I - 0x012955 10:A945: 37        .byte $37
- D - I - 0x012956 10:A946: 85        .byte $85
- D - I - 0x012957 10:A947: 3B        .byte $3B
- D - I - 0x012958 10:A948: 01        .byte $01
- D - I - 0x012959 10:A949: 3F        .byte $3F
- D - I - 0x01295A 10:A94A: 01        .byte $01
- D - I - 0x01295B 10:A94B: 03        .byte $03
- D - I - 0x01295C 10:A94C: 01        .byte $01
- D - I - 0x01295D 10:A94D: 04        .byte $04
- D - I - 0x01295E 10:A94E: 97        .byte $97
- D - I - 0x01295F 10:A94F: 09        .byte $09
- D - I - 0x012960 10:A950: 38        .byte $38
- D - I - 0x012961 10:A951: A1        .byte $A1
- D - I - 0x012962 10:A952: 37        .byte $37
- D - I - 0x012963 10:A953: 90        .byte $90
- D - I - 0x012964 10:A954: 3B        .byte $3B
- D - I - 0x012965 10:A955: 87        .byte $87
- D - I - 0x012966 10:A956: 3F        .byte $3F
- D - I - 0x012967 10:A957: 01        .byte $01
- D - I - 0x012968 10:A958: 03        .byte $03
- D - I - 0x012969 10:A959: 95        .byte $95
- D - I - 0x01296A 10:A95A: 07        .byte $07
- D - I - 0x01296B 10:A95B: C2        .byte $C2
- D - I - 0x01296C 10:A95C: 09        .byte $09
- D - I - 0x01296D 10:A95D: 39        .byte $39
- D - I - 0x01296E 10:A95E: A2        .byte $A2
- D - I - 0x01296F 10:A95F: 3B        .byte $3B
- D - I - 0x012970 10:A960: 92        .byte $92
- D - I - 0x012971 10:A961: 3F        .byte $3F
- D - I - 0x012972 10:A962: 57        .byte $57
- D - I - 0x012973 10:A963: 03        .byte $03
- D - I - 0x012974 10:A964: 3D        .byte $3D
- D - I - 0x012975 10:A965: 09        .byte $09
- D - I - 0x012976 10:A966: 3C        .byte $3C
- D - I - 0x012977 10:A967: A3        .byte $A3
- D - I - 0x012978 10:A968: 0D        .byte $0D
- D - I - 0x012979 10:A969: 3F        .byte $3F
- D - I - 0x01297A 10:A96A: FB        .byte con_jmp
- D - I - 0x01297B 10:A96B: 25 B5     .word off_B525



off_A96D:
- D - I - 0x01297D 10:A96D: 6C        .byte $6C
- D - I - 0x01297E 10:A96E: 6D        .byte $6D
- D - I - 0x01297F 10:A96F: 6E        .byte $6E
- D - I - 0x012980 10:A970: 6F        .byte $6F
- D - I - 0x012981 10:A971: BC        .byte $BC
- D - I - 0x012982 10:A972: 3B        .byte $3B
- D - I - 0x012983 10:A973: 99        .byte $99
- D - I - 0x012984 10:A974: 3F        .byte $3F
- D - I - 0x012985 10:A975: 9B        .byte $9B
- D - I - 0x012986 10:A976: 09        .byte $09
- D - I - 0x012987 10:A977: 68        .byte $68
- D - I - 0x012988 10:A978: 0D        .byte $0D
- D - I - 0x012989 10:A979: 6A        .byte $6A
- D - I - 0x01298A 10:A97A: BD        .byte $BD
- D - I - 0x01298B 10:A97B: 37        .byte $37
- D - I - 0x01298C 10:A97C: C3        .byte $C3
- D - I - 0x01298D 10:A97D: 3B        .byte $3B
- D - I - 0x01298E 10:A97E: 9C        .byte $9C
- D - I - 0x01298F 10:A97F: 3C        .byte $3C
- D - I - 0x012990 10:A980: 9E        .byte $9E
- D - I - 0x012991 10:A981: 00        .byte $00
- D - I - 0x012992 10:A982: 6F        .byte $6F
- D - I - 0x012993 10:A983: 04        .byte $04
- D - I - 0x012994 10:A984: 63        .byte $63
- D - I - 0x012995 10:A985: 09        .byte $09
- D - I - 0x012996 10:A986: 69        .byte $69
- D - I - 0x012997 10:A987: 0D        .byte $0D
- D - I - 0x012998 10:A988: 6B        .byte $6B
- D - I - 0x012999 10:A989: BE        .byte $BE
- D - I - 0x01299A 10:A98A: 37        .byte $37
- D - I - 0x01299B 10:A98B: C6        .byte $C6
- D - I - 0x01299C 10:A98C: 38        .byte $38
- D - I - 0x01299D 10:A98D: 9D        .byte $9D
- D - I - 0x01299E 10:A98E: 3F        .byte $3F
- D - I - 0x01299F 10:A98F: 9F        .byte $9F
- D - I - 0x0129A0 10:A990: 00        .byte $00
- D - I - 0x0129A1 10:A991: 7A        .byte $7A
- D - I - 0x0129A2 10:A992: 04        .byte $04
- D - I - 0x0129A3 10:A993: 66        .byte $66
- D - I - 0x0129A4 10:A994: 09        .byte $09
- D - I - 0x0129A5 10:A995: 6C        .byte $6C
- D - I - 0x0129A6 10:A996: 0D        .byte $0D
- D - I - 0x0129A7 10:A997: 6E        .byte $6E
- D - I - 0x0129A8 10:A998: BF        .byte $BF
- D - I - 0x0129A9 10:A999: 37        .byte $37
- D - I - 0x0129AA 10:A99A: C7        .byte $C7
- D - I - 0x0129AB 10:A99B: 38        .byte $38
- D - I - 0x0129AC 10:A99C: C8        .byte $C8
- D - I - 0x0129AD 10:A99D: 3F        .byte $3F
- D - I - 0x0129AE 10:A99E: CA        .byte $CA
- D - I - 0x0129AF 10:A99F: 00        .byte $00
- D - I - 0x0129B0 10:A9A0: 7B        .byte $7B
- D - I - 0x0129B1 10:A9A1: 04        .byte $04
- D - I - 0x0129B2 10:A9A2: 67        .byte $67
- D - I - 0x0129B3 10:A9A3: 09        .byte $09
- D - I - 0x0129B4 10:A9A4: 6D        .byte $6D
- D - I - 0x0129B5 10:A9A5: A0        .byte $A0
- D - I - 0x0129B6 10:A9A6: 37        .byte $37
- D - I - 0x0129B7 10:A9A7: D2        .byte $D2
- D - I - 0x0129B8 10:A9A8: 3B        .byte $3B
- D - I - 0x0129B9 10:A9A9: 01        .byte $01
- D - I - 0x0129BA 10:A9AA: 3C        .byte $3C
- D - I - 0x0129BB 10:A9AB: CB        .byte $CB
- D - I - 0x0129BC 10:A9AC: 00        .byte $00
- D - I - 0x0129BD 10:A9AD: 7E        .byte $7E
- D - I - 0x0129BE 10:A9AE: 04        .byte $04
- D - I - 0x0129BF 10:A9AF: 72        .byte $72
- D - I - 0x0129C0 10:A9B0: 09        .byte $09
- D - I - 0x0129C1 10:A9B1: 78        .byte $78
- D - I - 0x0129C2 10:A9B2: A1        .byte $A1
- D - I - 0x0129C3 10:A9B3: 3B        .byte $3B
- D - I - 0x0129C4 10:A9B4: CE        .byte $CE
- D - I - 0x0129C5 10:A9B5: 3F        .byte $3F
- D - I - 0x0129C6 10:A9B6: C9        .byte $C9
- D - I - 0x0129C7 10:A9B7: 03        .byte $03
- D - I - 0x0129C8 10:A9B8: 7F        .byte $7F
- D - I - 0x0129C9 10:A9B9: 07        .byte $07
- D - I - 0x0129CA 10:A9BA: 73        .byte $73
- D - I - 0x0129CB 10:A9BB: 09        .byte $09
- D - I - 0x0129CC 10:A9BC: 79        .byte $79
- D - I - 0x0129CD 10:A9BD: A2        .byte $A2
- D - I - 0x0129CE 10:A9BE: 3F        .byte $3F
- D - I - 0x0129CF 10:A9BF: 77        .byte $77
- D - I - 0x0129D0 10:A9C0: 03        .byte $03
- D - I - 0x0129D1 10:A9C1: 7D        .byte $7D
- D - I - 0x0129D2 10:A9C2: 09        .byte $09
- D - I - 0x0129D3 10:A9C3: 7C        .byte $7C
- D - I - 0x0129D4 10:A9C4: A3        .byte $A3
- D - I - 0x0129D5 10:A9C5: 0D        .byte $0D
- D - I - 0x0129D6 10:A9C6: 76        .byte $76
- D - I - 0x0129D7 10:A9C7: FB        .byte con_jmp
- D - I - 0x0129D8 10:A9C8: 25 B5     .word off_B525



off_A9CA:
- D - I - 0x0129DA 10:A9CA: 78        .byte $78
- D - I - 0x0129DB 10:A9CB: 79        .byte $79
- D - I - 0x0129DC 10:A9CC: 7A        .byte $7A
- D - I - 0x0129DD 10:A9CD: 7B        .byte $7B
- D - I - 0x0129DE 10:A9CE: BE        .byte $BE
- D - I - 0x0129DF 10:A9CF: 3B        .byte $3B
- D - I - 0x0129E0 10:A9D0: 4E        .byte $4E
- D - I - 0x0129E1 10:A9D1: 3F        .byte $3F
- D - I - 0x0129E2 10:A9D2: 6A        .byte $6A
- D - I - 0x0129E3 10:A9D3: BF        .byte $BF
- D - I - 0x0129E4 10:A9D4: 38        .byte $38
- D - I - 0x0129E5 10:A9D5: 44        .byte $44
- D - I - 0x0129E6 10:A9D6: 3C        .byte $3C
- D - I - 0x0129E7 10:A9D7: 6B        .byte $6B
- D - I - 0x0129E8 10:A9D8: 03        .byte $03
- D - I - 0x0129E9 10:A9D9: 71        .byte $71
- D - I - 0x0129EA 10:A9DA: A0        .byte $A0
- D - I - 0x0129EB 10:A9DB: 3B        .byte $3B
- D - I - 0x0129EC 10:A9DC: 4F        .byte $4F
- D - I - 0x0129ED 10:A9DD: 3F        .byte $3F
- D - I - 0x0129EE 10:A9DE: 6E        .byte $6E
- D - I - 0x0129EF 10:A9DF: FB        .byte con_jmp
- D - I - 0x0129F0 10:A9E0: 8D B8     .word off_B88D



off_A9E3:
- D - I - 0x0129F3 10:A9E3: 6C        .byte $6C
- D - I - 0x0129F4 10:A9E4: 6D        .byte $6D
- D - I - 0x0129F5 10:A9E5: 6E        .byte $6E
- D - I - 0x0129F6 10:A9E6: 6F        .byte $6F
- D - I - 0x0129F7 10:A9E7: BF        .byte $BF
- D - I - 0x0129F8 10:A9E8: 3F        .byte $3F
- D - I - 0x0129F9 10:A9E9: 8E        .byte $8E
- D - I - 0x0129FA 10:A9EA: 03        .byte $03
- D - I - 0x0129FB 10:A9EB: A1        .byte $A1
- D - I - 0x0129FC 10:A9EC: A0        .byte $A0
- D - I - 0x0129FD 10:A9ED: 3F        .byte $3F
- D - I - 0x0129FE 10:A9EE: 8F        .byte $8F
- D - I - 0x0129FF 10:A9EF: 00        .byte $00
- D - I - 0x012A00 10:A9F0: A4        .byte $A4
- D - I - 0x012A01 10:A9F1: 03        .byte $03
- D - I - 0x012A02 10:A9F2: 02        .byte $02
- D - I - 0x012A03 10:A9F3: FB        .byte con_jmp
- D - I - 0x012A04 10:A9F4: 32 B5     .word off_B532



off_A9F6:
- D - I - 0x012A06 10:A9F6: 6C        .byte $6C
- D - I - 0x012A07 10:A9F7: 6D        .byte $6D
- D - I - 0x012A08 10:A9F8: 6E        .byte $6E
- D - I - 0x012A09 10:A9F9: 6F        .byte $6F
- D - I - 0x012A0A 10:A9FA: BE        .byte $BE
- D - I - 0x012A0B 10:A9FB: 07        .byte $07
- D - I - 0x012A0C 10:A9FC: 27        .byte $27
- D - I - 0x012A0D 10:A9FD: BF        .byte $BF
- D - I - 0x012A0E 10:A9FE: 3F        .byte $3F
- D - I - 0x012A0F 10:A9FF: 8E        .byte $8E
- D - I - 0x012A10 10:AA00: 03        .byte $03
- D - I - 0x012A11 10:AA01: A1        .byte $A1
- D - I - 0x012A12 10:AA02: BF        .byte $BF
- D - I - 0x012A13 10:AA03: 07        .byte $07
- D - I - 0x012A14 10:AA04: 60        .byte $60
- D - I - 0x012A15 10:AA05: A0        .byte $A0
- D - I - 0x012A16 10:AA06: 3F        .byte $3F
- D - I - 0x012A17 10:AA07: 8F        .byte $8F
- D - I - 0x012A18 10:AA08: 00        .byte $00
- D - I - 0x012A19 10:AA09: A4        .byte $A4
- D - I - 0x012A1A 10:AA0A: 03        .byte $03
- D - I - 0x012A1B 10:AA0B: 02        .byte $02
- D - I - 0x012A1C 10:AA0C: FB        .byte con_jmp
- D - I - 0x012A1D 10:AA0D: 32 B5     .word off_B532



off_AA0F:
- D - I - 0x012A1F 10:AA0F: 6C        .byte $6C
- D - I - 0x012A20 10:AA10: 6D        .byte $6D
- D - I - 0x012A21 10:AA11: 6E        .byte $6E
- D - I - 0x012A22 10:AA12: 6F        .byte $6F
- D - I - 0x012A23 10:AA13: BD        .byte $BD
- D - I - 0x012A24 10:AA14: 3A        .byte $3A
- D - I - 0x012A25 10:AA15: D1        .byte $D1
- D - I - 0x012A26 10:AA16: 3E        .byte $3E
- D - I - 0x012A27 10:AA17: D3        .byte $D3
- D - I - 0x012A28 10:AA18: BE        .byte $BE
- D - I - 0x012A29 10:AA19: 36        .byte $36
- D - I - 0x012A2A 10:AA1A: C1        .byte $C1
- D - I - 0x012A2B 10:AA1B: 3A        .byte $3A
- D - I - 0x012A2C 10:AA1C: D4        .byte $D4
- D - I - 0x012A2D 10:AA1D: 3E        .byte $3E
- D - I - 0x012A2E 10:AA1E: D6        .byte $D6
- D - I - 0x012A2F 10:AA1F: 00        .byte $00
- D - I - 0x012A30 10:AA20: A0        .byte $A0
- D - I - 0x012A31 10:AA21: BF        .byte $BF
- D - I - 0x012A32 10:AA22: 36        .byte $36
- D - I - 0x012A33 10:AA23: C4        .byte $C4
- D - I - 0x012A34 10:AA24: 3A        .byte $3A
- D - I - 0x012A35 10:AA25: D5        .byte $D5
- D - I - 0x012A36 10:AA26: 3F        .byte $3F
- D - I - 0x012A37 10:AA27: D7        .byte $D7
- D - I - 0x012A38 10:AA28: 03        .byte $03
- D - I - 0x012A39 10:AA29: BB        .byte $BB
- D - I - 0x012A3A 10:AA2A: A0        .byte $A0
- D - I - 0x012A3B 10:AA2B: 36        .byte $36
- D - I - 0x012A3C 10:AA2C: C5        .byte $C5
- D - I - 0x012A3D 10:AA2D: 3A        .byte $3A
- D - I - 0x012A3E 10:AA2E: CC        .byte $CC
- D - I - 0x012A3F 10:AA2F: 3F        .byte $3F
- D - I - 0x012A40 10:AA30: B5        .byte $B5
- D - I - 0x012A41 10:AA31: 3E        .byte $3E
- D - I - 0x012A42 10:AA32: 02        .byte $02
- D - I - 0x012A43 10:AA33: 00        .byte $00
- D - I - 0x012A44 10:AA34: BE        .byte $BE
- D - I - 0x012A45 10:AA35: 03        .byte $03
- D - I - 0x012A46 10:AA36: 02        .byte $02
- D - I - 0x012A47 10:AA37: A1        .byte $A1
- D - I - 0x012A48 10:AA38: 36        .byte $36
- D - I - 0x012A49 10:AA39: D0        .byte $D0
- D - I - 0x012A4A 10:AA3A: 3A        .byte $3A
- D - I - 0x012A4B 10:AA3B: CD        .byte $CD
- D - I - 0x012A4C 10:AA3C: 3E        .byte $3E
- D - I - 0x012A4D 10:AA3D: CF        .byte $CF
- D - I - 0x012A4E 10:AA3E: 02        .byte $02
- D - I - 0x012A4F 10:AA3F: BD        .byte $BD
- D - I - 0x012A50 10:AA40: 06        .byte $06
- D - I - 0x012A51 10:AA41: BF        .byte $BF
- D - I - 0x012A52 10:AA42: A2        .byte $A2
- D - I - 0x012A53 10:AA43: 3E        .byte $3E
- D - I - 0x012A54 10:AA44: DA        .byte $DA
- D - I - 0x012A55 10:AA45: 02        .byte $02
- D - I - 0x012A56 10:AA46: B7        .byte $B7
- D - I - 0x012A57 10:AA47: FB        .byte con_jmp
- D - I - 0x012A58 10:AA48: 61 B5     .word off_B561



off_AA4A:
- D - I - 0x012A5A 10:AA4A: 6C        .byte $6C
- D - I - 0x012A5B 10:AA4B: 6D        .byte $6D
- D - I - 0x012A5C 10:AA4C: 6E        .byte $6E
- D - I - 0x012A5D 10:AA4D: 6F        .byte $6F
- D - I - 0x012A5E 10:AA4E: BE        .byte $BE
- D - I - 0x012A5F 10:AA4F: 3A        .byte $3A
- D - I - 0x012A60 10:AA50: 0B        .byte $0B
- D - I - 0x012A61 10:AA51: BF        .byte $BF
- D - I - 0x012A62 10:AA52: 3C        .byte $3C
- D - I - 0x012A63 10:AA53: 24        .byte $24
- D - I - 0x012A64 10:AA54: 00        .byte $00
- D - I - 0x012A65 10:AA55: 1D        .byte $1D
- D - I - 0x012A66 10:AA56: 04        .byte $04
- D - I - 0x012A67 10:AA57: 1E        .byte $1E
- D - I - 0x012A68 10:AA58: A0        .byte $A0
- D - I - 0x012A69 10:AA59: 3A        .byte $3A
- D - I - 0x012A6A 10:AA5A: 0F        .byte $0F
- D - I - 0x012A6B 10:AA5B: FB        .byte con_jmp
- D - I - 0x012A6C 10:AA5C: 83 B5     .word off_B583



off_AA5E:
- D - I - 0x012A6E 10:AA5E: 6C        .byte $6C
- D - I - 0x012A6F 10:AA5F: 6D        .byte $6D
- D - I - 0x012A70 10:AA60: 6E        .byte $6E
- D - I - 0x012A71 10:AA61: 6F        .byte $6F
- D - I - 0x012A72 10:AA62: BE        .byte $BE
- D - I - 0x012A73 10:AA63: 3A        .byte $3A
- D - I - 0x012A74 10:AA64: 0B        .byte $0B
- D - I - 0x012A75 10:AA65: BF        .byte $BF
- D - I - 0x012A76 10:AA66: 3C        .byte $3C
- D - I - 0x012A77 10:AA67: 24        .byte $24
- D - I - 0x012A78 10:AA68: 03        .byte $03
- D - I - 0x012A79 10:AA69: 34        .byte $34
- D - I - 0x012A7A 10:AA6A: 04        .byte $04
- D - I - 0x012A7B 10:AA6B: 0C        .byte $0C
- D - I - 0x012A7C 10:AA6C: A0        .byte $A0
- D - I - 0x012A7D 10:AA6D: 3A        .byte $3A
- D - I - 0x012A7E 10:AA6E: 0F        .byte $0F
- D - I - 0x012A7F 10:AA6F: FB        .byte con_jmp
- D - I - 0x012A80 10:AA70: 83 B5     .word off_B583



off_AA72:
- D - I - 0x012A82 10:AA72: 6C        .byte $6C
- D - I - 0x012A83 10:AA73: 6D        .byte $6D
- D - I - 0x012A84 10:AA74: 6E        .byte $6E
- D - I - 0x012A85 10:AA75: 6F        .byte $6F
- D - I - 0x012A86 10:AA76: BE        .byte $BE
- D - I - 0x012A87 10:AA77: 3A        .byte $3A
- D - I - 0x012A88 10:AA78: 1F        .byte $1F
- D - I - 0x012A89 10:AA79: BF        .byte $BF
- D - I - 0x012A8A 10:AA7A: 3C        .byte $3C
- D - I - 0x012A8B 10:AA7B: 35        .byte $35
- D - I - 0x012A8C 10:AA7C: 00        .byte $00
- D - I - 0x012A8D 10:AA7D: 1D        .byte $1D
- D - I - 0x012A8E 10:AA7E: 04        .byte $04
- D - I - 0x012A8F 10:AA7F: 1E        .byte $1E
- D - I - 0x012A90 10:AA80: A0        .byte $A0
- D - I - 0x012A91 10:AA81: 3A        .byte $3A
- D - I - 0x012A92 10:AA82: 4A        .byte $4A
- D - I - 0x012A93 10:AA83: FB        .byte con_jmp
- D - I - 0x012A94 10:AA84: 83 B5     .word off_B583



off_AA86:
- D - I - 0x012A96 10:AA86: 6C        .byte $6C
- D - I - 0x012A97 10:AA87: 6D        .byte $6D
- D - I - 0x012A98 10:AA88: 6E        .byte $6E
- D - I - 0x012A99 10:AA89: 6F        .byte $6F
- D - I - 0x012A9A 10:AA8A: BF        .byte $BF
- D - I - 0x012A9B 10:AA8B: 00        .byte $00
- D - I - 0x012A9C 10:AA8C: 1D        .byte $1D
- D - I - 0x012A9D 10:AA8D: 04        .byte $04
- D - I - 0x012A9E 10:AA8E: 1E        .byte $1E
- D - I - 0x012A9F 10:AA8F: FB        .byte con_jmp
- D - I - 0x012AA0 10:AA90: E4 B5     .word off_B5E4



off_AA92:
- D - I - 0x012AA2 10:AA92: 6C        .byte $6C
- D - I - 0x012AA3 10:AA93: 6D        .byte $6D
- D - I - 0x012AA4 10:AA94: 6E        .byte $6E
- D - I - 0x012AA5 10:AA95: 6F        .byte $6F
- D - I - 0x012AA6 10:AA96: BF        .byte $BF
- D - I - 0x012AA7 10:AA97: 03        .byte $03
- D - I - 0x012AA8 10:AA98: 34        .byte $34
- D - I - 0x012AA9 10:AA99: 04        .byte $04
- D - I - 0x012AAA 10:AA9A: 0C        .byte $0C
- D - I - 0x012AAB 10:AA9B: FB        .byte con_jmp
- D - I - 0x012AAC 10:AA9C: E4 B5     .word off_B5E4


; bzk
- - - - - 0x012AAE 10:AA9E: 6C        .byte $6C
- - - - - 0x012AAF 10:AA9F: 6D        .byte $6D
- - - - - 0x012AB0 10:AAA0: 6E        .byte $6E
- - - - - 0x012AB1 10:AAA1: 6F        .byte $6F
- - - - - 0x012AB2 10:AAA2: BE        .byte $BE
- - - - - 0x012AB3 10:AAA3: 3A        .byte $3A
- - - - - 0x012AB4 10:AAA4: 1F        .byte $1F
- - - - - 0x012AB5 10:AAA5: BF        .byte $BF
- - - - - 0x012AB6 10:AAA6: 3C        .byte $3C
- - - - - 0x012AB7 10:AAA7: 35        .byte $35
- - - - - 0x012AB8 10:AAA8: 03        .byte $03
- - - - - 0x012AB9 10:AAA9: 34        .byte $34
- - - - - 0x012ABA 10:AAAA: 04        .byte $04
- - - - - 0x012ABB 10:AAAB: 0C        .byte $0C
- - - - - 0x012ABC 10:AAAC: A0        .byte $A0
- - - - - 0x012ABD 10:AAAD: 3A        .byte $3A
- - - - - 0x012ABE 10:AAAE: 4A        .byte $4A
- - - - - 0x012ABF 10:AAAF: FB        .byte con_jmp
- - - - - 0x012AC0 10:AAB0: 83 B5     .word off_B583



off_AAB2:
- D - I - 0x012AC2 10:AAB2: 6C        .byte $6C
- D - I - 0x012AC3 10:AAB3: 6D        .byte $6D
- D - I - 0x012AC4 10:AAB4: 6E        .byte $6E
- D - I - 0x012AC5 10:AAB5: 6F        .byte $6F
- D - I - 0x012AC6 10:AAB6: BF        .byte $BF
- D - I - 0x012AC7 10:AAB7: 00        .byte $00
- D - I - 0x012AC8 10:AAB8: 1D        .byte $1D
- D - I - 0x012AC9 10:AAB9: 04        .byte $04
- D - I - 0x012ACA 10:AABA: 1E        .byte $1E
- D - I - 0x012ACB 10:AABB: FB        .byte con_jmp
- D - I - 0x012ACC 10:AABC: 1B B6     .word off_B61B



off_AABE:
- D - I - 0x012ACE 10:AABE: 6C        .byte $6C
- D - I - 0x012ACF 10:AABF: 6D        .byte $6D
- D - I - 0x012AD0 10:AAC0: 6E        .byte $6E
- D - I - 0x012AD1 10:AAC1: 6F        .byte $6F
- D - I - 0x012AD2 10:AAC2: BF        .byte $BF
- D - I - 0x012AD3 10:AAC3: 03        .byte $03
- D - I - 0x012AD4 10:AAC4: 34        .byte $34
- D - I - 0x012AD5 10:AAC5: 04        .byte $04
- D - I - 0x012AD6 10:AAC6: 0C        .byte $0C
- D - I - 0x012AD7 10:AAC7: FB        .byte con_jmp
- D - I - 0x012AD8 10:AAC8: 1B B6     .word off_B61B



off_AACA:
- D - I - 0x012ADA 10:AACA: 6C        .byte $6C
- D - I - 0x012ADB 10:AACB: 6D        .byte $6D
- D - I - 0x012ADC 10:AACC: 6E        .byte $6E
- D - I - 0x012ADD 10:AACD: 6F        .byte $6F
- D - I - 0x012ADE 10:AACE: BF        .byte $BF
- D - I - 0x012ADF 10:AACF: 01        .byte $01
- D - I - 0x012AE0 10:AAD0: DC        .byte $DC
- D - I - 0x012AE1 10:AAD1: FB        .byte con_jmp
- D - I - 0x012AE2 10:AAD2: A9 BA     .word off_BAA9



off_AAD4:
- D - I - 0x012AE4 10:AAD4: 74        .byte $74
- D - I - 0x012AE5 10:AAD5: 75        .byte $75
- D - I - 0x012AE6 10:AAD6: 76        .byte $76
- D - I - 0x012AE7 10:AAD7: 77        .byte $77
- D - I - 0x012AE8 10:AAD8: BE        .byte $BE
- D - I - 0x012AE9 10:AAD9: 3A        .byte $3A
- D - I - 0x012AEA 10:AADA: 88        .byte $88
- D - I - 0x012AEB 10:AADB: 3C        .byte $3C
- D - I - 0x012AEC 10:AADC: 8A        .byte $8A
- D - I - 0x012AED 10:AADD: 00        .byte $00
- D - I - 0x012AEE 10:AADE: A0        .byte $A0
- D - I - 0x012AEF 10:AADF: 04        .byte $04
- D - I - 0x012AF0 10:AAE0: 5A        .byte $5A
- D - I - 0x012AF1 10:AAE1: BF        .byte $BF
- D - I - 0x012AF2 10:AAE2: 3A        .byte $3A
- D - I - 0x012AF3 10:AAE3: 89        .byte $89
- D - I - 0x012AF4 10:AAE4: 3C        .byte $3C
- D - I - 0x012AF5 10:AAE5: 8B        .byte $8B
- D - I - 0x012AF6 10:AAE6: 00        .byte $00
- D - I - 0x012AF7 10:AAE7: A1        .byte $A1
- D - I - 0x012AF8 10:AAE8: 07        .byte $07
- D - I - 0x012AF9 10:AAE9: 86        .byte $86
- D - I - 0x012AFA 10:AAEA: 04        .byte $04
- D - I - 0x012AFB 10:AAEB: 5B        .byte $5B
- D - I - 0x012AFC 10:AAEC: A0        .byte $A0
- D - I - 0x012AFD 10:AAED: 3A        .byte $3A
- D - I - 0x012AFE 10:AAEE: 8C        .byte $8C
- D - I - 0x012AFF 10:AAEF: 3C        .byte $3C
- D - I - 0x012B00 10:AAF0: 8E        .byte $8E
- D - I - 0x012B01 10:AAF1: 00        .byte $00
- D - I - 0x012B02 10:AAF2: A4        .byte $A4
- D - I - 0x012B03 10:AAF3: 07        .byte $07
- D - I - 0x012B04 10:AAF4: 87        .byte $87
- D - I - 0x012B05 10:AAF5: 04        .byte $04
- D - I - 0x012B06 10:AAF6: 5E        .byte $5E
- D - I - 0x012B07 10:AAF7: A1        .byte $A1
- D - I - 0x012B08 10:AAF8: 3A        .byte $3A
- D - I - 0x012B09 10:AAF9: 8D        .byte $8D
- D - I - 0x012B0A 10:AAFA: FB        .byte con_jmp
- D - I - 0x012B0B 10:AAFB: 5D B6     .word off_B65D



off_AAFD:
- D - I - 0x012B0D 10:AAFD: 74        .byte $74
- D - I - 0x012B0E 10:AAFE: 75        .byte $75
- D - I - 0x012B0F 10:AAFF: 76        .byte $76
- D - I - 0x012B10 10:AB00: 77        .byte $77
- D - I - 0x012B11 10:AB01: BE        .byte $BE
- D - I - 0x012B12 10:AB02: 3A        .byte $3A
- D - I - 0x012B13 10:AB03: 85        .byte $85
- D - I - 0x012B14 10:AB04: 3C        .byte $3C
- D - I - 0x012B15 10:AB05: 92        .byte $92
- D - I - 0x012B16 10:AB06: 00        .byte $00
- D - I - 0x012B17 10:AB07: 98        .byte $98
- D - I - 0x012B18 10:AB08: BF        .byte $BF
- D - I - 0x012B19 10:AB09: 3A        .byte $3A
- D - I - 0x012B1A 10:AB0A: 89        .byte $89
- D - I - 0x012B1B 10:AB0B: 3C        .byte $3C
- D - I - 0x012B1C 10:AB0C: 93        .byte $93
- D - I - 0x012B1D 10:AB0D: 00        .byte $00
- D - I - 0x012B1E 10:AB0E: 99        .byte $99
- D - I - 0x012B1F 10:AB0F: A0        .byte $A0
- D - I - 0x012B20 10:AB10: 3A        .byte $3A
- D - I - 0x012B21 10:AB11: 90        .byte $90
- D - I - 0x012B22 10:AB12: 3C        .byte $3C
- D - I - 0x012B23 10:AB13: 96        .byte $96
- D - I - 0x012B24 10:AB14: 00        .byte $00
- D - I - 0x012B25 10:AB15: 9C        .byte $9C
- D - I - 0x012B26 10:AB16: A1        .byte $A1
- D - I - 0x012B27 10:AB17: 3A        .byte $3A
- D - I - 0x012B28 10:AB18: 91        .byte $91
- D - I - 0x012B29 10:AB19: FB        .byte con_jmp
- D - I - 0x012B2A 10:AB1A: 4E B6     .word off_B64E



off_AB1C:
- D - I - 0x012B2C 10:AB1C: 74        .byte $74
- D - I - 0x012B2D 10:AB1D: 75        .byte $75
- D - I - 0x012B2E 10:AB1E: 76        .byte $76
- D - I - 0x012B2F 10:AB1F: 77        .byte $77
- D - I - 0x012B30 10:AB20: BE        .byte $BE
- D - I - 0x012B31 10:AB21: 3A        .byte $3A
- D - I - 0x012B32 10:AB22: 88        .byte $88
- D - I - 0x012B33 10:AB23: 3C        .byte $3C
- D - I - 0x012B34 10:AB24: 8A        .byte $8A
- D - I - 0x012B35 10:AB25: 00        .byte $00
- D - I - 0x012B36 10:AB26: A0        .byte $A0
- D - I - 0x012B37 10:AB27: BF        .byte $BF
- D - I - 0x012B38 10:AB28: 3A        .byte $3A
- D - I - 0x012B39 10:AB29: 94        .byte $94
- D - I - 0x012B3A 10:AB2A: 3C        .byte $3C
- D - I - 0x012B3B 10:AB2B: 9E        .byte $9E
- D - I - 0x012B3C 10:AB2C: 00        .byte $00
- D - I - 0x012B3D 10:AB2D: 97        .byte $97
- D - I - 0x012B3E 10:AB2E: A0        .byte $A0
- D - I - 0x012B3F 10:AB2F: 3A        .byte $3A
- D - I - 0x012B40 10:AB30: 95        .byte $95
- D - I - 0x012B41 10:AB31: 3C        .byte $3C
- D - I - 0x012B42 10:AB32: 9F        .byte $9F
- D - I - 0x012B43 10:AB33: 00        .byte $00
- D - I - 0x012B44 10:AB34: 9D        .byte $9D
- D - I - 0x012B45 10:AB35: A1        .byte $A1
- D - I - 0x012B46 10:AB36: 3A        .byte $3A
- D - I - 0x012B47 10:AB37: 8D        .byte $8D
- D - I - 0x012B48 10:AB38: FB        .byte con_jmp
- D - I - 0x012B49 10:AB39: 4E B6     .word off_B64E



off_AB3B:
- D - I - 0x012B4B 10:AB3B: 74        .byte $74
- D - I - 0x012B4C 10:AB3C: 75        .byte $75
- D - I - 0x012B4D 10:AB3D: 76        .byte $76
- D - I - 0x012B4E 10:AB3E: 77        .byte $77
- D - I - 0x012B4F 10:AB3F: BE        .byte $BE
- D - I - 0x012B50 10:AB40: 3A        .byte $3A
- D - I - 0x012B51 10:AB41: 85        .byte $85
- D - I - 0x012B52 10:AB42: 3C        .byte $3C
- D - I - 0x012B53 10:AB43: A2        .byte $A2
- D - I - 0x012B54 10:AB44: 03        .byte $03
- D - I - 0x012B55 10:AB45: A5        .byte $A5
- D - I - 0x012B56 10:AB46: 00        .byte $00
- D - I - 0x012B57 10:AB47: A8        .byte $A8
- D - I - 0x012B58 10:AB48: 07        .byte $07
- D - I - 0x012B59 10:AB49: AB        .byte $AB
- D - I - 0x012B5A 10:AB4A: 04        .byte $04
- D - I - 0x012B5B 10:AB4B: 5A        .byte $5A
- D - I - 0x012B5C 10:AB4C: BF        .byte $BF
- D - I - 0x012B5D 10:AB4D: 3A        .byte $3A
- D - I - 0x012B5E 10:AB4E: 89        .byte $89
- D - I - 0x012B5F 10:AB4F: 3C        .byte $3C
- D - I - 0x012B60 10:AB50: A3        .byte $A3
- D - I - 0x012B61 10:AB51: 00        .byte $00
- D - I - 0x012B62 10:AB52: A9        .byte $A9
- D - I - 0x012B63 10:AB53: 04        .byte $04
- D - I - 0x012B64 10:AB54: AA        .byte $AA
- D - I - 0x012B65 10:AB55: A0        .byte $A0
- D - I - 0x012B66 10:AB56: 3A        .byte $3A
- D - I - 0x012B67 10:AB57: 90        .byte $90
- D - I - 0x012B68 10:AB58: 3C        .byte $3C
- D - I - 0x012B69 10:AB59: A6        .byte $A6
- D - I - 0x012B6A 10:AB5A: 03        .byte $03
- D - I - 0x012B6B 10:AB5B: A5        .byte $A5
- D - I - 0x012B6C 10:AB5C: 00        .byte $00
- D - I - 0x012B6D 10:AB5D: AC        .byte $AC
- D - I - 0x012B6E 10:AB5E: 07        .byte $07
- D - I - 0x012B6F 10:AB5F: AE        .byte $AE
- D - I - 0x012B70 10:AB60: 04        .byte $04
- D - I - 0x012B71 10:AB61: 5E        .byte $5E
- D - I - 0x012B72 10:AB62: A1        .byte $A1
- D - I - 0x012B73 10:AB63: 3A        .byte $3A
- D - I - 0x012B74 10:AB64: 91        .byte $91
- D - I - 0x012B75 10:AB65: FB        .byte con_jmp
- D - I - 0x012B76 10:AB66: 5D B6     .word off_B65D



off_AB68:
- D - I - 0x012B78 10:AB68: 70        .byte $70
- D - I - 0x012B79 10:AB69: 71        .byte $71
- D - I - 0x012B7A 10:AB6A: 72        .byte $72
- D - I - 0x012B7B 10:AB6B: 73        .byte $73
- D - I - 0x012B7C 10:AB6C: BF        .byte $BF
- D - I - 0x012B7D 10:AB6D: 3F        .byte $3F
- D - I - 0x012B7E 10:AB6E: 8B        .byte $8B
- D - I - 0x012B7F 10:AB6F: 03        .byte $03
- D - I - 0x012B80 10:AB70: A1        .byte $A1
- D - I - 0x012B81 10:AB71: 02        .byte $02
- D - I - 0x012B82 10:AB72: 93        .byte $93
- D - I - 0x012B83 10:AB73: A0        .byte $A0
- D - I - 0x012B84 10:AB74: 3C        .byte $3C
- D - I - 0x012B85 10:AB75: 8E        .byte $8E
- D - I - 0x012B86 10:AB76: 07        .byte $07
- D - I - 0x012B87 10:AB77: A6        .byte $A6
- D - I - 0x012B88 10:AB78: A1        .byte $A1
- D - I - 0x012B89 10:AB79: 3F        .byte $3F
- D - I - 0x012B8A 10:AB7A: 8F        .byte $8F
- D - I - 0x012B8B 10:AB7B: 03        .byte $03
- D - I - 0x012B8C 10:AB7C: A5        .byte $A5
- D - I - 0x012B8D 10:AB7D: FB        .byte con_jmp
- D - I - 0x012B8E 10:AB7E: 9A B6     .word off_B69A



off_AB80:
- D - I - 0x012B90 10:AB80: 70        .byte $70
- D - I - 0x012B91 10:AB81: 71        .byte $71
- D - I - 0x012B92 10:AB82: 72        .byte $72
- D - I - 0x012B93 10:AB83: 73        .byte $73
- D - I - 0x012B94 10:AB84: BF        .byte $BF
- D - I - 0x012B95 10:AB85: 3C        .byte $3C
- D - I - 0x012B96 10:AB86: 94        .byte $94
- D - I - 0x012B97 10:AB87: 02        .byte $02
- D - I - 0x012B98 10:AB88: 96        .byte $96
- D - I - 0x012B99 10:AB89: A0        .byte $A0
- D - I - 0x012B9A 10:AB8A: 3C        .byte $3C
- D - I - 0x012B9B 10:AB8B: 98        .byte $98
- D - I - 0x012B9C 10:AB8C: 04        .byte $04
- D - I - 0x012B9D 10:AB8D: A2        .byte $A2
- D - I - 0x012B9E 10:AB8E: A1        .byte $A1
- D - I - 0x012B9F 10:AB8F: 3C        .byte $3C
- D - I - 0x012BA0 10:AB90: 95        .byte $95
- D - I - 0x012BA1 10:AB91: 02        .byte $02
- D - I - 0x012BA2 10:AB92: 97        .byte $97
- D - I - 0x012BA3 10:AB93: FB        .byte con_jmp
- D - I - 0x012BA4 10:AB94: 9A B6     .word off_B69A



off_AB96:
- D - I - 0x012BA6 10:AB96: 70        .byte $70
- D - I - 0x012BA7 10:AB97: 71        .byte $71
- D - I - 0x012BA8 10:AB98: 72        .byte $72
- D - I - 0x012BA9 10:AB99: 73        .byte $73
- D - I - 0x012BAA 10:AB9A: BF        .byte $BF
- D - I - 0x012BAB 10:AB9B: 3F        .byte $3F
- D - I - 0x012BAC 10:AB9C: 9C        .byte $9C
- D - I - 0x012BAD 10:AB9D: 03        .byte $03
- D - I - 0x012BAE 10:AB9E: A1        .byte $A1
- D - I - 0x012BAF 10:AB9F: 02        .byte $02
- D - I - 0x012BB0 10:ABA0: 93        .byte $93
- D - I - 0x012BB1 10:ABA1: A0        .byte $A0
- D - I - 0x012BB2 10:ABA2: 3C        .byte $3C
- D - I - 0x012BB3 10:ABA3: 8E        .byte $8E
- D - I - 0x012BB4 10:ABA4: 07        .byte $07
- D - I - 0x012BB5 10:ABA5: B3        .byte $B3
- D - I - 0x012BB6 10:ABA6: A1        .byte $A1
- D - I - 0x012BB7 10:ABA7: 3F        .byte $3F
- D - I - 0x012BB8 10:ABA8: 9D        .byte $9D
- D - I - 0x012BB9 10:ABA9: 03        .byte $03
- D - I - 0x012BBA 10:ABAA: A5        .byte $A5
- D - I - 0x012BBB 10:ABAB: FB        .byte con_jmp
- D - I - 0x012BBC 10:ABAC: 9A B6     .word off_B69A



off_ABAE:
- D - I - 0x012BBE 10:ABAE: 70        .byte $70
- D - I - 0x012BBF 10:ABAF: 71        .byte $71
- D - I - 0x012BC0 10:ABB0: 72        .byte $72
- D - I - 0x012BC1 10:ABB1: 73        .byte $73
- D - I - 0x012BC2 10:ABB2: BF        .byte $BF
- D - I - 0x012BC3 10:ABB3: 3F        .byte $3F
- D - I - 0x012BC4 10:ABB4: 86        .byte $86
- D - I - 0x012BC5 10:ABB5: 03        .byte $03
- D - I - 0x012BC6 10:ABB6: A1        .byte $A1
- D - I - 0x012BC7 10:ABB7: 02        .byte $02
- D - I - 0x012BC8 10:ABB8: 93        .byte $93
- D - I - 0x012BC9 10:ABB9: A0        .byte $A0
- D - I - 0x012BCA 10:ABBA: 3C        .byte $3C
- D - I - 0x012BCB 10:ABBB: 8E        .byte $8E
- D - I - 0x012BCC 10:ABBC: 04        .byte $04
- D - I - 0x012BCD 10:ABBD: A2        .byte $A2
- D - I - 0x012BCE 10:ABBE: A1        .byte $A1
- D - I - 0x012BCF 10:ABBF: 3F        .byte $3F
- D - I - 0x012BD0 10:ABC0: 87        .byte $87
- D - I - 0x012BD1 10:ABC1: 03        .byte $03
- D - I - 0x012BD2 10:ABC2: A5        .byte $A5
- D - I - 0x012BD3 10:ABC3: FB        .byte con_jmp
- D - I - 0x012BD4 10:ABC4: 9A B6     .word off_B69A



off_ABC6:
- D - I - 0x012BD6 10:ABC6: 70        .byte $70
- D - I - 0x012BD7 10:ABC7: 71        .byte $71
- D - I - 0x012BD8 10:ABC8: 72        .byte $72
- D - I - 0x012BD9 10:ABC9: 73        .byte $73
- D - I - 0x012BDA 10:ABCA: BF        .byte $BF
- D - I - 0x012BDB 10:ABCB: 3F        .byte $3F
- D - I - 0x012BDC 10:ABCC: 8B        .byte $8B
- D - I - 0x012BDD 10:ABCD: 03        .byte $03
- D - I - 0x012BDE 10:ABCE: A1        .byte $A1
- D - I - 0x012BDF 10:ABCF: 02        .byte $02
- D - I - 0x012BE0 10:ABD0: 93        .byte $93
- D - I - 0x012BE1 10:ABD1: A0        .byte $A0
- D - I - 0x012BE2 10:ABD2: 3C        .byte $3C
- D - I - 0x012BE3 10:ABD3: B6        .byte $B6
- D - I - 0x012BE4 10:ABD4: 07        .byte $07
- D - I - 0x012BE5 10:ABD5: A6        .byte $A6
- D - I - 0x012BE6 10:ABD6: A1        .byte $A1
- D - I - 0x012BE7 10:ABD7: 3F        .byte $3F
- D - I - 0x012BE8 10:ABD8: 8F        .byte $8F
- D - I - 0x012BE9 10:ABD9: 03        .byte $03
- D - I - 0x012BEA 10:ABDA: A5        .byte $A5
- D - I - 0x012BEB 10:ABDB: FB        .byte con_jmp
- D - I - 0x012BEC 10:ABDC: F6 B6     .word off_B6F6



off_ABDE:
- D - I - 0x012BEE 10:ABDE: 70        .byte $70
- D - I - 0x012BEF 10:ABDF: 71        .byte $71
- D - I - 0x012BF0 10:ABE0: 72        .byte $72
- D - I - 0x012BF1 10:ABE1: 73        .byte $73
- D - I - 0x012BF2 10:ABE2: BF        .byte $BF
- D - I - 0x012BF3 10:ABE3: 3C        .byte $3C
- D - I - 0x012BF4 10:ABE4: 94        .byte $94
- D - I - 0x012BF5 10:ABE5: 02        .byte $02
- D - I - 0x012BF6 10:ABE6: 96        .byte $96
- D - I - 0x012BF7 10:ABE7: A0        .byte $A0
- D - I - 0x012BF8 10:ABE8: 3C        .byte $3C
- D - I - 0x012BF9 10:ABE9: C8        .byte $C8
- D - I - 0x012BFA 10:ABEA: 04        .byte $04
- D - I - 0x012BFB 10:ABEB: A2        .byte $A2
- D - I - 0x012BFC 10:ABEC: A1        .byte $A1
- D - I - 0x012BFD 10:ABED: 3C        .byte $3C
- D - I - 0x012BFE 10:ABEE: 95        .byte $95
- D - I - 0x012BFF 10:ABEF: 02        .byte $02
- D - I - 0x012C00 10:ABF0: 97        .byte $97
- D - I - 0x012C01 10:ABF1: FB        .byte con_jmp
- D - I - 0x012C02 10:ABF2: F6 B6     .word off_B6F6



off_ABF4:
- D - I - 0x012C04 10:ABF4: 70        .byte $70
- D - I - 0x012C05 10:ABF5: 71        .byte $71
- D - I - 0x012C06 10:ABF6: 72        .byte $72
- D - I - 0x012C07 10:ABF7: 73        .byte $73
- D - I - 0x012C08 10:ABF8: BF        .byte $BF
- D - I - 0x012C09 10:ABF9: 3C        .byte $3C
- D - I - 0x012C0A 10:ABFA: 94        .byte $94
- D - I - 0x012C0B 10:ABFB: 02        .byte $02
- D - I - 0x012C0C 10:ABFC: 96        .byte $96
- D - I - 0x012C0D 10:ABFD: A0        .byte $A0
- D - I - 0x012C0E 10:ABFE: 3C        .byte $3C
- D - I - 0x012C0F 10:ABFF: B6        .byte $B6
- D - I - 0x012C10 10:AC00: 07        .byte $07
- D - I - 0x012C11 10:AC01: A6        .byte $A6
- D - I - 0x012C12 10:AC02: A1        .byte $A1
- D - I - 0x012C13 10:AC03: 3F        .byte $3F
- D - I - 0x012C14 10:AC04: 8F        .byte $8F
- D - I - 0x012C15 10:AC05: 03        .byte $03
- D - I - 0x012C16 10:AC06: A5        .byte $A5
- D - I - 0x012C17 10:AC07: FB        .byte con_jmp
- D - I - 0x012C18 10:AC08: F6 B6     .word off_B6F6



off_AC0A:
- D - I - 0x012C1A 10:AC0A: 70        .byte $70
- D - I - 0x012C1B 10:AC0B: 71        .byte $71
- D - I - 0x012C1C 10:AC0C: 72        .byte $72
- D - I - 0x012C1D 10:AC0D: 73        .byte $73
- D - I - 0x012C1E 10:AC0E: BF        .byte $BF
- D - I - 0x012C1F 10:AC0F: 3F        .byte $3F
- D - I - 0x012C20 10:AC10: 9E        .byte $9E
- D - I - 0x012C21 10:AC11: 03        .byte $03
- D - I - 0x012C22 10:AC12: A1        .byte $A1
- D - I - 0x012C23 10:AC13: 02        .byte $02
- D - I - 0x012C24 10:AC14: 93        .byte $93
- D - I - 0x012C25 10:AC15: A0        .byte $A0
- D - I - 0x012C26 10:AC16: 3C        .byte $3C
- D - I - 0x012C27 10:AC17: B6        .byte $B6
- D - I - 0x012C28 10:AC18: 07        .byte $07
- D - I - 0x012C29 10:AC19: B3        .byte $B3
- D - I - 0x012C2A 10:AC1A: A1        .byte $A1
- D - I - 0x012C2B 10:AC1B: 3F        .byte $3F
- D - I - 0x012C2C 10:AC1C: 9F        .byte $9F
- D - I - 0x012C2D 10:AC1D: 03        .byte $03
- D - I - 0x012C2E 10:AC1E: A5        .byte $A5
- D - I - 0x012C2F 10:AC1F: FB        .byte con_jmp
- D - I - 0x012C30 10:AC20: F6 B6     .word off_B6F6



off_AC22:
- D - I - 0x012C32 10:AC22: 70        .byte $70
- D - I - 0x012C33 10:AC23: 71        .byte $71
- D - I - 0x012C34 10:AC24: 72        .byte $72
- D - I - 0x012C35 10:AC25: 73        .byte $73
- D - I - 0x012C36 10:AC26: BE        .byte $BE
- D - I - 0x012C37 10:AC27: 09        .byte $09
- D - I - 0x012C38 10:AC28: 81        .byte $81
- D - I - 0x012C39 10:AC29: 0D        .byte $0D
- D - I - 0x012C3A 10:AC2A: 7D        .byte $7D
- D - I - 0x012C3B 10:AC2B: BF        .byte $BF
- D - I - 0x012C3C 10:AC2C: 03        .byte $03
- D - I - 0x012C3D 10:AC2D: C9        .byte $C9
- D - I - 0x012C3E 10:AC2E: 09        .byte $09
- D - I - 0x012C3F 10:AC2F: D0        .byte $D0
- D - I - 0x012C40 10:AC30: 0A        .byte $0A
- D - I - 0x012C41 10:AC31: 91        .byte $91
- D - I - 0x012C42 10:AC32: 0D        .byte $0D
- D - I - 0x012C43 10:AC33: D2        .byte $D2
- D - I - 0x012C44 10:AC34: A0        .byte $A0
- D - I - 0x012C45 10:AC35: 04        .byte $04
- D - I - 0x012C46 10:AC36: A2        .byte $A2
- D - I - 0x012C47 10:AC37: 08        .byte $08
- D - I - 0x012C48 10:AC38: C0        .byte $C0
- D - I - 0x012C49 10:AC39: 0D        .byte $0D
- D - I - 0x012C4A 10:AC3A: D3        .byte $D3
- D - I - 0x012C4B 10:AC3B: A1        .byte $A1
- D - I - 0x012C4C 10:AC3C: 03        .byte $03
- D - I - 0x012C4D 10:AC3D: A5        .byte $A5
- D - I - 0x012C4E 10:AC3E: 0B        .byte $0B
- D - I - 0x012C4F 10:AC3F: 2B        .byte $2B
- D - I - 0x012C50 10:AC40: 0D        .byte $0D
- D - I - 0x012C51 10:AC41: D6        .byte $D6
- D - I - 0x012C52 10:AC42: A2        .byte $A2
- D - I - 0x012C53 10:AC43: 3E        .byte $3E
- D - I - 0x012C54 10:AC44: CC        .byte $CC
- D - I - 0x012C55 10:AC45: 02        .byte $02
- D - I - 0x012C56 10:AC46: CE        .byte $CE
- D - I - 0x012C57 10:AC47: 09        .byte $09
- D - I - 0x012C58 10:AC48: D5        .byte $D5
- D - I - 0x012C59 10:AC49: 0A        .byte $0A
- D - I - 0x012C5A 10:AC4A: 91        .byte $91
- D - I - 0x012C5B 10:AC4B: 0D        .byte $0D
- D - I - 0x012C5C 10:AC4C: D7        .byte $D7
- D - I - 0x012C5D 10:AC4D: A3        .byte $A3
- D - I - 0x012C5E 10:AC4E: 09        .byte $09
- D - I - 0x012C5F 10:AC4F: 7C        .byte $7C
- D - I - 0x012C60 10:AC50: 0D        .byte $0D
- D - I - 0x012C61 10:AC51: 7E        .byte $7E
- D - I - 0x012C62 10:AC52: A4        .byte $A4
- D - I - 0x012C63 10:AC53: 0D        .byte $0D
- D - I - 0x012C64 10:AC54: 7F        .byte $7F
- D - I - 0x012C65 10:AC55: FB        .byte con_jmp
- D - I - 0x012C66 10:AC56: 24 B7     .word off_B724



off_AC58:
- D - I - 0x012C68 10:AC58: 70        .byte $70
- D - I - 0x012C69 10:AC59: 71        .byte $71
- D - I - 0x012C6A 10:AC5A: 72        .byte $72
- D - I - 0x012C6B 10:AC5B: 73        .byte $73
- D - I - 0x012C6C 10:AC5C: BE        .byte $BE
- D - I - 0x012C6D 10:AC5D: 09        .byte $09
- D - I - 0x012C6E 10:AC5E: A8        .byte $A8
- D - I - 0x012C6F 10:AC5F: 0D        .byte $0D
- D - I - 0x012C70 10:AC60: AA        .byte $AA
- D - I - 0x012C71 10:AC61: BF        .byte $BF
- D - I - 0x012C72 10:AC62: 03        .byte $03
- D - I - 0x012C73 10:AC63: D8        .byte $D8
- D - I - 0x012C74 10:AC64: 09        .byte $09
- D - I - 0x012C75 10:AC65: DA        .byte $DA
- D - I - 0x012C76 10:AC66: 0A        .byte $0A
- D - I - 0x012C77 10:AC67: 91        .byte $91
- D - I - 0x012C78 10:AC68: 0D        .byte $0D
- D - I - 0x012C79 10:AC69: AB        .byte $AB
- D - I - 0x012C7A 10:AC6A: A0        .byte $A0
- D - I - 0x012C7B 10:AC6B: 04        .byte $04
- D - I - 0x012C7C 10:AC6C: A2        .byte $A2
- D - I - 0x012C7D 10:AC6D: 08        .byte $08
- D - I - 0x012C7E 10:AC6E: AC        .byte $AC
- D - I - 0x012C7F 10:AC6F: 0F        .byte $0F
- D - I - 0x012C80 10:AC70: AE        .byte $AE
- D - I - 0x012C81 10:AC71: A1        .byte $A1
- D - I - 0x012C82 10:AC72: 03        .byte $03
- D - I - 0x012C83 10:AC73: D9        .byte $D9
- D - I - 0x012C84 10:AC74: 0B        .byte $0B
- D - I - 0x012C85 10:AC75: AD        .byte $AD
- D - I - 0x012C86 10:AC76: 0F        .byte $0F
- D - I - 0x012C87 10:AC77: AF        .byte $AF
- D - I - 0x012C88 10:AC78: A2        .byte $A2
- D - I - 0x012C89 10:AC79: 3E        .byte $3E
- D - I - 0x012C8A 10:AC7A: 9A        .byte $9A
- D - I - 0x012C8B 10:AC7B: 02        .byte $02
- D - I - 0x012C8C 10:AC7C: B0        .byte $B0
- D - I - 0x012C8D 10:AC7D: 09        .byte $09
- D - I - 0x012C8E 10:AC7E: DB        .byte $DB
- D - I - 0x012C8F 10:AC7F: 0A        .byte $0A
- D - I - 0x012C90 10:AC80: 91        .byte $91
- D - I - 0x012C91 10:AC81: 0D        .byte $0D
- D - I - 0x012C92 10:AC82: BA        .byte $BA
- D - I - 0x012C93 10:AC83: A3        .byte $A3
- D - I - 0x012C94 10:AC84: 09        .byte $09
- D - I - 0x012C95 10:AC85: B9        .byte $B9
- D - I - 0x012C96 10:AC86: 0D        .byte $0D
- D - I - 0x012C97 10:AC87: BB        .byte $BB
- D - I - 0x012C98 10:AC88: A4        .byte $A4
- D - I - 0x012C99 10:AC89: 0D        .byte $0D
- D - I - 0x012C9A 10:AC8A: 7F        .byte $7F
- D - I - 0x012C9B 10:AC8B: FB        .byte con_jmp
- D - I - 0x012C9C 10:AC8C: 24 B7     .word off_B724



off_AC8E:
- D - I - 0x012C9E 10:AC8E: 74        .byte $74
- D - I - 0x012C9F 10:AC8F: 75        .byte $75
- D - I - 0x012CA0 10:AC90: 76        .byte $76
- D - I - 0x012CA1 10:AC91: 77        .byte $77
- D - I - 0x012CA2 10:AC92: FA        .byte con_jsr
- D - I - 0x012CA3 10:AC93: BD B7     .word off_B7BD
- D - I - 0x012CA5 10:AC95: FB        .byte con_jmp
- D - I - 0x012CA6 10:AC96: 5F B7     .word off_B75F



off_AC98:
- D - I - 0x012CA8 10:AC98: 74        .byte $74
- D - I - 0x012CA9 10:AC99: 75        .byte $75
- D - I - 0x012CAA 10:AC9A: 76        .byte $76
- D - I - 0x012CAB 10:AC9B: 77        .byte $77
- D - I - 0x012CAC 10:AC9C: FA        .byte con_jsr
- D - I - 0x012CAD 10:AC9D: BD B7     .word off_B7BD
- D - I - 0x012CAF 10:AC9F: FB        .byte con_jmp
- D - I - 0x012CB0 10:ACA0: AF B7     .word off_B7AF



off_ACA2:
- D - I - 0x012CB2 10:ACA2: 74        .byte $74
- D - I - 0x012CB3 10:ACA3: 75        .byte $75
- D - I - 0x012CB4 10:ACA4: 76        .byte $76
- D - I - 0x012CB5 10:ACA5: 77        .byte $77
- D - I - 0x012CB6 10:ACA6: FA        .byte con_jsr
- D - I - 0x012CB7 10:ACA7: DE B7     .word off_B7DE
- D - I - 0x012CB9 10:ACA9: FB        .byte con_jmp
- D - I - 0x012CBA 10:ACAA: 5F B7     .word off_B75F



off_ACAC:
- D - I - 0x012CBC 10:ACAC: 74        .byte $74
- D - I - 0x012CBD 10:ACAD: 75        .byte $75
- D - I - 0x012CBE 10:ACAE: 76        .byte $76
- D - I - 0x012CBF 10:ACAF: 77        .byte $77
- D - I - 0x012CC0 10:ACB0: FA        .byte con_jsr
- D - I - 0x012CC1 10:ACB1: DE B7     .word off_B7DE
- D - I - 0x012CC3 10:ACB3: FB        .byte con_jmp
- D - I - 0x012CC4 10:ACB4: AF B7     .word off_B7AF



off_ACB6:
- D - I - 0x012CC6 10:ACB6: 78        .byte $78
- D - I - 0x012CC7 10:ACB7: 79        .byte $79
- D - I - 0x012CC8 10:ACB8: 7A        .byte $7A
- D - I - 0x012CC9 10:ACB9: 7B        .byte $7B
- D - I - 0x012CCA 10:ACBA: BF        .byte $BF
- D - I - 0x012CCB 10:ACBB: 3F        .byte $3F
- D - I - 0x012CCC 10:ACBC: 8B        .byte $8B
- D - I - 0x012CCD 10:ACBD: A0        .byte $A0
- D - I - 0x012CCE 10:ACBE: 03        .byte $03
- D - I - 0x012CCF 10:ACBF: A4        .byte $A4
- D - I - 0x012CD0 10:ACC0: 04        .byte $04
- D - I - 0x012CD1 10:ACC1: A6        .byte $A6
- D - I - 0x012CD2 10:ACC2: A1        .byte $A1
- D - I - 0x012CD3 10:ACC3: 3F        .byte $3F
- D - I - 0x012CD4 10:ACC4: 8F        .byte $8F
- D - I - 0x012CD5 10:ACC5: FB        .byte con_jmp
- D - I - 0x012CD6 10:ACC6: FF B7     .word off_B7FF



off_ACC8:
- D - I - 0x012CD8 10:ACC8: 78        .byte $78
- D - I - 0x012CD9 10:ACC9: 79        .byte $79
- D - I - 0x012CDA 10:ACCA: 7A        .byte $7A
- D - I - 0x012CDB 10:ACCB: 7B        .byte $7B
- D - I - 0x012CDC 10:ACCC: BF        .byte $BF
- D - I - 0x012CDD 10:ACCD: 3F        .byte $3F
- D - I - 0x012CDE 10:ACCE: C4        .byte $C4
- D - I - 0x012CDF 10:ACCF: A0        .byte $A0
- D - I - 0x012CE0 10:ACD0: 00        .byte $00
- D - I - 0x012CE1 10:ACD1: E0        .byte $E0
- D - I - 0x012CE2 10:ACD2: 04        .byte $04
- D - I - 0x012CE3 10:ACD3: E2        .byte $E2
- D - I - 0x012CE4 10:ACD4: A1        .byte $A1
- D - I - 0x012CE5 10:ACD5: 3F        .byte $3F
- D - I - 0x012CE6 10:ACD6: C6        .byte $C6
- D - I - 0x012CE7 10:ACD7: FB        .byte con_jmp
- D - I - 0x012CE8 10:ACD8: FF B7     .word off_B7FF



off_ACDA:
- D - I - 0x012CEA 10:ACDA: 78        .byte $78
- D - I - 0x012CEB 10:ACDB: 79        .byte $79
- D - I - 0x012CEC 10:ACDC: 7A        .byte $7A
- D - I - 0x012CED 10:ACDD: 7B        .byte $7B
- D - I - 0x012CEE 10:ACDE: BF        .byte $BF
- D - I - 0x012CEF 10:ACDF: 3F        .byte $3F
- D - I - 0x012CF0 10:ACE0: C4        .byte $C4
- D - I - 0x012CF1 10:ACE1: A0        .byte $A0
- D - I - 0x012CF2 10:ACE2: 03        .byte $03
- D - I - 0x012CF3 10:ACE3: E1        .byte $E1
- D - I - 0x012CF4 10:ACE4: 04        .byte $04
- D - I - 0x012CF5 10:ACE5: E3        .byte $E3
- D - I - 0x012CF6 10:ACE6: A1        .byte $A1
- D - I - 0x012CF7 10:ACE7: 3F        .byte $3F
- D - I - 0x012CF8 10:ACE8: C6        .byte $C6
- D - I - 0x012CF9 10:ACE9: FB        .byte con_jmp
- D - I - 0x012CFA 10:ACEA: FF B7     .word off_B7FF



off_ACEC:
- D - I - 0x012CFC 10:ACEC: 78        .byte $78
- D - I - 0x012CFD 10:ACED: 79        .byte $79
- D - I - 0x012CFE 10:ACEE: 7A        .byte $7A
- D - I - 0x012CFF 10:ACEF: 7B        .byte $7B
- D - I - 0x012D00 10:ACF0: BF        .byte $BF
- D - I - 0x012D01 10:ACF1: 3A        .byte $3A
- D - I - 0x012D02 10:ACF2: 93        .byte $93
- D - I - 0x012D03 10:ACF3: 3F        .byte $3F
- D - I - 0x012D04 10:ACF4: 99        .byte $99
- D - I - 0x012D05 10:ACF5: 3C        .byte $3C
- D - I - 0x012D06 10:ACF6: 3C        .byte $3C
- D - I - 0x012D07 10:ACF7: A0        .byte $A0
- D - I - 0x012D08 10:ACF8: 3C        .byte $3C
- D - I - 0x012D09 10:ACF9: 9C        .byte $9C
- D - I - 0x012D0A 10:ACFA: 03        .byte $03
- D - I - 0x012D0B 10:ACFB: 9E        .byte $9E
- D - I - 0x012D0C 10:ACFC: A1        .byte $A1
- D - I - 0x012D0D 10:ACFD: 3A        .byte $3A
- D - I - 0x012D0E 10:ACFE: 97        .byte $97
- D - I - 0x012D0F 10:ACFF: 3F        .byte $3F
- D - I - 0x012D10 10:AD00: 9D        .byte $9D
- D - I - 0x012D11 10:AD01: 3C        .byte $3C
- D - I - 0x012D12 10:AD02: 3C        .byte $3C
- D - I - 0x012D13 10:AD03: FB        .byte con_jmp
- D - I - 0x012D14 10:AD04: 5B B8     .word off_B85B



off_AD06:
- D - I - 0x012D16 10:AD06: 78        .byte $78
- D - I - 0x012D17 10:AD07: 79        .byte $79
- D - I - 0x012D18 10:AD08: 7A        .byte $7A
- D - I - 0x012D19 10:AD09: 7B        .byte $7B
- D - I - 0x012D1A 10:AD0A: BF        .byte $BF
- D - I - 0x012D1B 10:AD0B: 3A        .byte $3A
- D - I - 0x012D1C 10:AD0C: 93        .byte $93
- D - I - 0x012D1D 10:AD0D: 3F        .byte $3F
- D - I - 0x012D1E 10:AD0E: BE        .byte $BE
- D - I - 0x012D1F 10:AD0F: 3C        .byte $3C
- D - I - 0x012D20 10:AD10: 3C        .byte $3C
- D - I - 0x012D21 10:AD11: A0        .byte $A0
- D - I - 0x012D22 10:AD12: 3C        .byte $3C
- D - I - 0x012D23 10:AD13: 9C        .byte $9C
- D - I - 0x012D24 10:AD14: 03        .byte $03
- D - I - 0x012D25 10:AD15: 9E        .byte $9E
- D - I - 0x012D26 10:AD16: A1        .byte $A1
- D - I - 0x012D27 10:AD17: 3A        .byte $3A
- D - I - 0x012D28 10:AD18: 97        .byte $97
- D - I - 0x012D29 10:AD19: 3F        .byte $3F
- D - I - 0x012D2A 10:AD1A: BF        .byte $BF
- D - I - 0x012D2B 10:AD1B: 3C        .byte $3C
- D - I - 0x012D2C 10:AD1C: 3C        .byte $3C
- D - I - 0x012D2D 10:AD1D: FB        .byte con_jmp
- D - I - 0x012D2E 10:AD1E: 5B B8     .word off_B85B



off_AD20:
- D - I - 0x012D30 10:AD20: 78        .byte $78
- D - I - 0x012D31 10:AD21: 79        .byte $79
- D - I - 0x012D32 10:AD22: 7A        .byte $7A
- D - I - 0x012D33 10:AD23: 7B        .byte $7B
- D - I - 0x012D34 10:AD24: BF        .byte $BF
- D - I - 0x012D35 10:AD25: 3A        .byte $3A
- D - I - 0x012D36 10:AD26: 93        .byte $93
- D - I - 0x012D37 10:AD27: 3F        .byte $3F
- D - I - 0x012D38 10:AD28: BE        .byte $BE
- D - I - 0x012D39 10:AD29: 3C        .byte $3C
- D - I - 0x012D3A 10:AD2A: 3C        .byte $3C
- D - I - 0x012D3B 10:AD2B: A0        .byte $A0
- D - I - 0x012D3C 10:AD2C: 3C        .byte $3C
- D - I - 0x012D3D 10:AD2D: 9C        .byte $9C
- D - I - 0x012D3E 10:AD2E: 03        .byte $03
- D - I - 0x012D3F 10:AD2F: E9        .byte $E9
- D - I - 0x012D40 10:AD30: 04        .byte $04
- D - I - 0x012D41 10:AD31: EB        .byte $EB
- D - I - 0x012D42 10:AD32: A1        .byte $A1
- D - I - 0x012D43 10:AD33: 3A        .byte $3A
- D - I - 0x012D44 10:AD34: 97        .byte $97
- D - I - 0x012D45 10:AD35: 3F        .byte $3F
- D - I - 0x012D46 10:AD36: BF        .byte $BF
- D - I - 0x012D47 10:AD37: 3C        .byte $3C
- D - I - 0x012D48 10:AD38: 3C        .byte $3C
- D - I - 0x012D49 10:AD39: FB        .byte con_jmp
- D - I - 0x012D4A 10:AD3A: 5B B8     .word off_B85B



off_AD3C:
- - - - - 0x012D4C 10:AD3C: 78        .byte $78
- - - - - 0x012D4D 10:AD3D: 79        .byte $79
- - - - - 0x012D4E 10:AD3E: 7A        .byte $7A
- - - - - 0x012D4F 10:AD3F: 7B        .byte $7B
- - - - - 0x012D50 10:AD40: BE        .byte $BE
- - - - - 0x012D51 10:AD41: 37        .byte $37
- - - - - 0x012D52 10:AD42: CA        .byte $CA
- - - - - 0x012D53 10:AD43: 3B        .byte $3B
- - - - - 0x012D54 10:AD44: C5        .byte $C5
- - - - - 0x012D55 10:AD45: 3F        .byte $3F
- - - - - 0x012D56 10:AD46: C7        .byte $C7
- - - - - 0x012D57 10:AD47: 03        .byte $03
- - - - - 0x012D58 10:AD48: CD        .byte $CD
- - - - - 0x012D59 10:AD49: 07        .byte $07
- - - - - 0x012D5A 10:AD4A: CF        .byte $CF
- - - - - 0x012D5B 10:AD4B: BF        .byte $BF
- - - - - 0x012D5C 10:AD4C: 33        .byte $33
- - - - - 0x012D5D 10:AD4D: C8        .byte $C8
- - - - - 0x012D5E 10:AD4E: 37        .byte $37
- - - - - 0x012D5F 10:AD4F: 01        .byte $01
- - - - - 0x012D60 10:AD50: 38        .byte $38
- - - - - 0x012D61 10:AD51: D0        .byte $D0
- - - - - 0x012D62 10:AD52: 3F        .byte $3F
- - - - - 0x012D63 10:AD53: D2        .byte $D2
- - - - - 0x012D64 10:AD54: 3C        .byte $3C
- - - - - 0x012D65 10:AD55: 3C        .byte $3C
- - - - - 0x012D66 10:AD56: 00        .byte $00
- - - - - 0x012D67 10:AD57: D8        .byte $D8
- - - - - 0x012D68 10:AD58: 04        .byte $04
- - - - - 0x012D69 10:AD59: DA        .byte $DA
- - - - - 0x012D6A 10:AD5A: 09        .byte $09
- - - - - 0x012D6B 10:AD5B: A9        .byte $A9
- - - - - 0x012D6C 10:AD5C: A0        .byte $A0
- - - - - 0x012D6D 10:AD5D: 33        .byte $33
- - - - - 0x012D6E 10:AD5E: C9        .byte $C9
- - - - - 0x012D6F 10:AD5F: 34        .byte $34
- - - - - 0x012D70 10:AD60: CB        .byte $CB
- - - - - 0x012D71 10:AD61: 38        .byte $38
- - - - - 0x012D72 10:AD62: D1        .byte $D1
- - - - - 0x012D73 10:AD63: 3C        .byte $3C
- - - - - 0x012D74 10:AD64: D3        .byte $D3
- - - - - 0x012D75 10:AD65: 03        .byte $03
- - - - - 0x012D76 10:AD66: D9        .byte $D9
- - - - - 0x012D77 10:AD67: 04        .byte $04
- - - - - 0x012D78 10:AD68: DB        .byte $DB
- - - - - 0x012D79 10:AD69: 0A        .byte $0A
- - - - - 0x012D7A 10:AD6A: AC        .byte $AC
- - - - - 0x012D7B 10:AD6B: A1        .byte $A1
- - - - - 0x012D7C 10:AD6C: 33        .byte $33
- - - - - 0x012D7D 10:AD6D: CC        .byte $CC
- - - - - 0x012D7E 10:AD6E: 37        .byte $37
- - - - - 0x012D7F 10:AD6F: 01        .byte $01
- - - - - 0x012D80 10:AD70: 38        .byte $38
- - - - - 0x012D81 10:AD71: D4        .byte $D4
- - - - - 0x012D82 10:AD72: 3F        .byte $3F
- - - - - 0x012D83 10:AD73: D6        .byte $D6
- - - - - 0x012D84 10:AD74: 3C        .byte $3C
- - - - - 0x012D85 10:AD75: 3C        .byte $3C
- - - - - 0x012D86 10:AD76: 00        .byte $00
- - - - - 0x012D87 10:AD77: DC        .byte $DC
- - - - - 0x012D88 10:AD78: 04        .byte $04
- - - - - 0x012D89 10:AD79: DE        .byte $DE
- - - - - 0x012D8A 10:AD7A: 0A        .byte $0A
- - - - - 0x012D8B 10:AD7B: AD        .byte $AD
- - - - - 0x012D8C 10:AD7C: A2        .byte $A2
- - - - - 0x012D8D 10:AD7D: 37        .byte $37
- - - - - 0x012D8E 10:AD7E: CE        .byte $CE
- - - - - 0x012D8F 10:AD7F: 3B        .byte $3B
- - - - - 0x012D90 10:AD80: D5        .byte $D5
- - - - - 0x012D91 10:AD81: 3F        .byte $3F
- - - - - 0x012D92 10:AD82: D7        .byte $D7
- - - - - 0x012D93 10:AD83: 03        .byte $03
- - - - - 0x012D94 10:AD84: D7        .byte $D7
- - - - - 0x012D95 10:AD85: 05        .byte $05
- - - - - 0x012D96 10:AD86: DD        .byte $DD
- - - - - 0x012D97 10:AD87: FB        .byte con_jmp
- - - - - 0x012D98 10:AD88: 39 B8     .word off_B839



off_AD8A:
- D - I - 0x012D9A 10:AD8A: 78        .byte $78
- D - I - 0x012D9B 10:AD8B: 79        .byte $79
- D - I - 0x012D9C 10:AD8C: 7A        .byte $7A
- D - I - 0x012D9D 10:AD8D: 7B        .byte $7B
- D - I - 0x012D9E 10:AD8E: BE        .byte $BE
- D - I - 0x012D9F 10:AD8F: 3B        .byte $3B
- D - I - 0x012DA0 10:AD90: 68        .byte $68
- D - I - 0x012DA1 10:AD91: 3F        .byte $3F
- D - I - 0x012DA2 10:AD92: 6A        .byte $6A
- D - I - 0x012DA3 10:AD93: BF        .byte $BF
- D - I - 0x012DA4 10:AD94: 38        .byte $38
- D - I - 0x012DA5 10:AD95: 69        .byte $69
- D - I - 0x012DA6 10:AD96: 3C        .byte $3C
- D - I - 0x012DA7 10:AD97: 6B        .byte $6B
- D - I - 0x012DA8 10:AD98: 03        .byte $03
- D - I - 0x012DA9 10:AD99: 71        .byte $71
- D - I - 0x012DAA 10:AD9A: A0        .byte $A0
- D - I - 0x012DAB 10:AD9B: 3B        .byte $3B
- D - I - 0x012DAC 10:AD9C: 6C        .byte $6C
- D - I - 0x012DAD 10:AD9D: 3F        .byte $3F
- D - I - 0x012DAE 10:AD9E: 6E        .byte $6E
- D - I - 0x012DAF 10:AD9F: FB        .byte con_jmp
- D - I - 0x012DB0 10:ADA0: 8D B8     .word off_B88D



off_ADA2:
- D - I - 0x012DB2 10:ADA2: 78        .byte $78
- D - I - 0x012DB3 10:ADA3: 79        .byte $79
- D - I - 0x012DB4 10:ADA4: 7A        .byte $7A
- D - I - 0x012DB5 10:ADA5: 7B        .byte $7B
- D - I - 0x012DB6 10:ADA6: BE        .byte $BE
- D - I - 0x012DB7 10:ADA7: 3B        .byte $3B
- D - I - 0x012DB8 10:ADA8: 4E        .byte $4E
- D - I - 0x012DB9 10:ADA9: 3F        .byte $3F
- D - I - 0x012DBA 10:ADAA: 6A        .byte $6A
- D - I - 0x012DBB 10:ADAB: BF        .byte $BF
- D - I - 0x012DBC 10:ADAC: 38        .byte $38
- D - I - 0x012DBD 10:ADAD: 44        .byte $44
- D - I - 0x012DBE 10:ADAE: 3C        .byte $3C
- D - I - 0x012DBF 10:ADAF: 6B        .byte $6B
- D - I - 0x012DC0 10:ADB0: 00        .byte $00
- D - I - 0x012DC1 10:ADB1: 6F        .byte $6F
- D - I - 0x012DC2 10:ADB2: A0        .byte $A0
- D - I - 0x012DC3 10:ADB3: 3B        .byte $3B
- D - I - 0x012DC4 10:ADB4: 4F        .byte $4F
- D - I - 0x012DC5 10:ADB5: 3F        .byte $3F
- D - I - 0x012DC6 10:ADB6: 6E        .byte $6E
- D - I - 0x012DC7 10:ADB7: FB        .byte con_jmp
- D - I - 0x012DC8 10:ADB8: 8D B8     .word off_B88D



off_ADBA:
- D - I - 0x012DCA 10:ADBA: 78        .byte $78
- D - I - 0x012DCB 10:ADBB: 79        .byte $79
- D - I - 0x012DCC 10:ADBC: 7A        .byte $7A
- D - I - 0x012DCD 10:ADBD: 7B        .byte $7B
- D - I - 0x012DCE 10:ADBE: BE        .byte $BE
- D - I - 0x012DCF 10:ADBF: 3B        .byte $3B
- D - I - 0x012DD0 10:ADC0: 0E        .byte $0E
- D - I - 0x012DD1 10:ADC1: 3B        .byte $3B
- D - I - 0x012DD2 10:ADC2: 4E        .byte $4E
- D - I - 0x012DD3 10:ADC3: 3F        .byte $3F
- D - I - 0x012DD4 10:ADC4: 26        .byte $26
- D - I - 0x012DD5 10:ADC5: 3F        .byte $3F
- D - I - 0x012DD6 10:ADC6: 6A        .byte $6A
- D - I - 0x012DD7 10:ADC7: BF        .byte $BF
- D - I - 0x012DD8 10:ADC8: 3B        .byte $3B
- D - I - 0x012DD9 10:ADC9: 0F        .byte $0F
- D - I - 0x012DDA 10:ADCA: 38        .byte $38
- D - I - 0x012DDB 10:ADCB: 44        .byte $44
- D - I - 0x012DDC 10:ADCC: 3F        .byte $3F
- D - I - 0x012DDD 10:ADCD: 27        .byte $27
- D - I - 0x012DDE 10:ADCE: 3C        .byte $3C
- D - I - 0x012DDF 10:ADCF: 6B        .byte $6B
- D - I - 0x012DE0 10:ADD0: 00        .byte $00
- D - I - 0x012DE1 10:ADD1: 6F        .byte $6F
- D - I - 0x012DE2 10:ADD2: A0        .byte $A0
- D - I - 0x012DE3 10:ADD3: 3B        .byte $3B
- D - I - 0x012DE4 10:ADD4: 25        .byte $25
- D - I - 0x012DE5 10:ADD5: 3B        .byte $3B
- D - I - 0x012DE6 10:ADD6: 4F        .byte $4F
- D - I - 0x012DE7 10:ADD7: 3F        .byte $3F
- D - I - 0x012DE8 10:ADD8: 13        .byte $13
- D - I - 0x012DE9 10:ADD9: 3F        .byte $3F
- D - I - 0x012DEA 10:ADDA: 6E        .byte $6E
- D - I - 0x012DEB 10:ADDB: FB        .byte con_jmp
- D - I - 0x012DEC 10:ADDC: 8D B8     .word off_B88D



off_ADDE:
- D - I - 0x012DEE 10:ADDE: 68        .byte $68
- D - I - 0x012DEF 10:ADDF: 69        .byte $69
- D - I - 0x012DF0 10:ADE0: 6A        .byte $6A
- D - I - 0x012DF1 10:ADE1: 6B        .byte $6B
- D - I - 0x012DF2 10:ADE2: BF        .byte $BF
- D - I - 0x012DF3 10:ADE3: 3E        .byte $3E
- D - I - 0x012DF4 10:ADE4: 60        .byte $60
- D - I - 0x012DF5 10:ADE5: A0        .byte $A0
- D - I - 0x012DF6 10:ADE6: 3E        .byte $3E
- D - I - 0x012DF7 10:ADE7: 61        .byte $61
- D - I - 0x012DF8 10:ADE8: 06        .byte $06
- D - I - 0x012DF9 10:ADE9: 2B        .byte $2B
- D - I - 0x012DFA 10:ADEA: 07        .byte $07
- D - I - 0x012DFB 10:ADEB: 02        .byte $02
- D - I - 0x012DFC 10:ADEC: 0A        .byte $0A
- D - I - 0x012DFD 10:ADED: 1A        .byte $1A
- D - I - 0x012DFE 10:ADEE: A1        .byte $A1
- D - I - 0x012DFF 10:ADEF: 3E        .byte $3E
- D - I - 0x012E00 10:ADF0: 64        .byte $64
- D - I - 0x012E01 10:ADF1: FA        .byte con_jsr
- D - I - 0x012E02 10:ADF2: A0 B9     .word off_B9A0
- D - I - 0x012E04 10:ADF4: FB        .byte con_jmp
- D - I - 0x012E05 10:ADF5: F4 B9     .word off_B9F4



off_ADF7:
- D - I - 0x012E07 10:ADF7: 74        .byte $74
- D - I - 0x012E08 10:ADF8: 75        .byte $75
- D - I - 0x012E09 10:ADF9: 76        .byte $76
- D - I - 0x012E0A 10:ADFA: 77        .byte $77
- D - I - 0x012E0B 10:ADFB: BD        .byte $BD
- D - I - 0x012E0C 10:ADFC: 05        .byte $05
- D - I - 0x012E0D 10:ADFD: 50        .byte $50
- D - I - 0x012E0E 10:ADFE: 08        .byte $08
- D - I - 0x012E0F 10:ADFF: 52        .byte $52
- D - I - 0x012E10 10:AE00: 0C        .byte $0C
- D - I - 0x012E11 10:AE01: 58        .byte $58
- D - I - 0x012E12 10:AE02: BE        .byte $BE
- D - I - 0x012E13 10:AE03: 3A        .byte $3A
- D - I - 0x012E14 10:AE04: 48        .byte $48
- D - I - 0x012E15 10:AE05: 03        .byte $03
- D - I - 0x012E16 10:AE06: 60        .byte $60
- D - I - 0x012E17 10:AE07: 05        .byte $05
- D - I - 0x012E18 10:AE08: 62        .byte $62
- D - I - 0x012E19 10:AE09: 08        .byte $08
- D - I - 0x012E1A 10:AE0A: 68        .byte $68
- D - I - 0x012E1B 10:AE0B: 0C        .byte $0C
- D - I - 0x012E1C 10:AE0C: 6A        .byte $6A
- D - I - 0x012E1D 10:AE0D: BF        .byte $BF
- D - I - 0x012E1E 10:AE0E: 36        .byte $36
- D - I - 0x012E1F 10:AE0F: 29        .byte $29
- D - I - 0x012E20 10:AE10: 3A        .byte $3A
- D - I - 0x012E21 10:AE11: 49        .byte $49
- D - I - 0x012E22 10:AE12: 3F        .byte $3F
- D - I - 0x012E23 10:AE13: 4B        .byte $4B
- D - I - 0x012E24 10:AE14: 00        .byte $00
- D - I - 0x012E25 10:AE15: 61        .byte $61
- D - I - 0x012E26 10:AE16: 07        .byte $07
- D - I - 0x012E27 10:AE17: 63        .byte $63
- D - I - 0x012E28 10:AE18: 0B        .byte $0B
- D - I - 0x012E29 10:AE19: 01        .byte $01
- D - I - 0x012E2A 10:AE1A: 0C        .byte $0C
- D - I - 0x012E2B 10:AE1B: 6B        .byte $6B
- D - I - 0x012E2C 10:AE1C: A0        .byte $A0
- D - I - 0x012E2D 10:AE1D: 36        .byte $36
- D - I - 0x012E2E 10:AE1E: 2A        .byte $2A
- D - I - 0x012E2F 10:AE1F: 3A        .byte $3A
- D - I - 0x012E30 10:AE20: 4C        .byte $4C
- D - I - 0x012E31 10:AE21: 3F        .byte $3F
- D - I - 0x012E32 10:AE22: 4E        .byte $4E
- D - I - 0x012E33 10:AE23: 03        .byte $03
- D - I - 0x012E34 10:AE24: 64        .byte $64
- D - I - 0x012E35 10:AE25: 07        .byte $07
- D - I - 0x012E36 10:AE26: 66        .byte $66
- D - I - 0x012E37 10:AE27: 0B        .byte $0B
- D - I - 0x012E38 10:AE28: 6C        .byte $6C
- D - I - 0x012E39 10:AE29: 0C        .byte $0C
- D - I - 0x012E3A 10:AE2A: 6E        .byte $6E
- D - I - 0x012E3B 10:AE2B: A1        .byte $A1
- D - I - 0x012E3C 10:AE2C: 36        .byte $36
- D - I - 0x012E3D 10:AE2D: 2B        .byte $2B
- D - I - 0x012E3E 10:AE2E: 3B        .byte $3B
- D - I - 0x012E3F 10:AE2F: 4D        .byte $4D
- D - I - 0x012E40 10:AE30: 3C        .byte $3C
- D - I - 0x012E41 10:AE31: 4F        .byte $4F
- D - I - 0x012E42 10:AE32: 01        .byte $01
- D - I - 0x012E43 10:AE33: 65        .byte $65
- D - I - 0x012E44 10:AE34: 05        .byte $05
- D - I - 0x012E45 10:AE35: 67        .byte $67
- D - I - 0x012E46 10:AE36: 09        .byte $09
- D - I - 0x012E47 10:AE37: 01        .byte $01
- D - I - 0x012E48 10:AE38: 0C        .byte $0C
- D - I - 0x012E49 10:AE39: 6F        .byte $6F
- D - I - 0x012E4A 10:AE3A: A2        .byte $A2
- D - I - 0x012E4B 10:AE3B: 01        .byte $01
- D - I - 0x012E4C 10:AE3C: 69        .byte $69
- D - I - 0x012E4D 10:AE3D: 05        .byte $05
- D - I - 0x012E4E 10:AE3E: 51        .byte $51
- D - I - 0x012E4F 10:AE3F: 0B        .byte $0B
- D - I - 0x012E50 10:AE40: 53        .byte $53
- D - I - 0x012E51 10:AE41: 0C        .byte $0C
- D - I - 0x012E52 10:AE42: 59        .byte $59
- D - I - 0x012E53 10:AE43: A3        .byte $A3
- D - I - 0x012E54 10:AE44: 05        .byte $05
- D - I - 0x012E55 10:AE45: 54        .byte $54
- D - I - 0x012E56 10:AE46: 09        .byte $09
- D - I - 0x012E57 10:AE47: 56        .byte $56
- D - I - 0x012E58 10:AE48: 0F        .byte $0F
- D - I - 0x012E59 10:AE49: 5C        .byte $5C
- D - I - 0x012E5A 10:AE4A: FF        .byte con_FF



off_AE4B:
- D - I - 0x012E5B 10:AE4B: 78        .byte $78
- D - I - 0x012E5C 10:AE4C: 79        .byte $79
- D - I - 0x012E5D 10:AE4D: 7A        .byte $7A
- D - I - 0x012E5E 10:AE4E: 7B        .byte $7B
- D - I - 0x012E5F 10:AE4F: BE        .byte $BE
- D - I - 0x012E60 10:AE50: 3A        .byte $3A
- D - I - 0x012E61 10:AE51: 08        .byte $08
- D - I - 0x012E62 10:AE52: 3F        .byte $3F
- D - I - 0x012E63 10:AE53: 18        .byte $18
- D - I - 0x012E64 10:AE54: 02        .byte $02
- D - I - 0x012E65 10:AE55: 1A        .byte $1A
- D - I - 0x012E66 10:AE56: 06        .byte $06
- D - I - 0x012E67 10:AE57: 30        .byte $30
- D - I - 0x012E68 10:AE58: BF        .byte $BF
- D - I - 0x012E69 10:AE59: 3B        .byte $3B
- D - I - 0x012E6A 10:AE5A: 09        .byte $09
- D - I - 0x012E6B 10:AE5B: 3F        .byte $3F
- D - I - 0x012E6C 10:AE5C: 19        .byte $19
- D - I - 0x012E6D 10:AE5D: 03        .byte $03
- D - I - 0x012E6E 10:AE5E: 1B        .byte $1B
- D - I - 0x012E6F 10:AE5F: A0        .byte $A0
- D - I - 0x012E70 10:AE60: 3A        .byte $3A
- D - I - 0x012E71 10:AE61: 0C        .byte $0C
- D - I - 0x012E72 10:AE62: 3F        .byte $3F
- D - I - 0x012E73 10:AE63: 0A        .byte $0A
- D - I - 0x012E74 10:AE64: 00        .byte $00
- D - I - 0x012E75 10:AE65: 20        .byte $20
- D - I - 0x012E76 10:AE66: A1        .byte $A1
- D - I - 0x012E77 10:AE67: 3F        .byte $3F
- D - I - 0x012E78 10:AE68: 01        .byte $01
- D - I - 0x012E79 10:AE69: 02        .byte $02
- D - I - 0x012E7A 10:AE6A: 01        .byte $01
- D - I - 0x012E7B 10:AE6B: 06        .byte $06
- D - I - 0x012E7C 10:AE6C: 23        .byte $23
- D - I - 0x012E7D 10:AE6D: A2        .byte $A2
- D - I - 0x012E7E 10:AE6E: 3F        .byte $3F
- D - I - 0x012E7F 10:AE6F: 0B        .byte $0B
- D - I - 0x012E80 10:AE70: 02        .byte $02
- D - I - 0x012E81 10:AE71: 24        .byte $24
- D - I - 0x012E82 10:AE72: FB        .byte con_jmp
- D - I - 0x012E83 10:AE73: DC B8     .word off_B8DC



off_AE75:
- D - I - 0x012E85 10:AE75: 78        .byte $78
- D - I - 0x012E86 10:AE76: 79        .byte $79
- D - I - 0x012E87 10:AE77: 7A        .byte $7A
- D - I - 0x012E88 10:AE78: 7B        .byte $7B
- D - I - 0x012E89 10:AE79: BE        .byte $BE
- D - I - 0x012E8A 10:AE7A: 3B        .byte $3B
- D - I - 0x012E8B 10:AE7B: 15        .byte $15
- D - I - 0x012E8C 10:AE7C: 3F        .byte $3F
- D - I - 0x012E8D 10:AE7D: 1D        .byte $1D
- D - I - 0x012E8E 10:AE7E: 03        .byte $03
- D - I - 0x012E8F 10:AE7F: 35        .byte $35
- D - I - 0x012E90 10:AE80: BF        .byte $BF
- D - I - 0x012E91 10:AE81: 3B        .byte $3B
- D - I - 0x012E92 10:AE82: 16        .byte $16
- D - I - 0x012E93 10:AE83: 3F        .byte $3F
- D - I - 0x012E94 10:AE84: 1E        .byte $1E
- D - I - 0x012E95 10:AE85: 03        .byte $03
- D - I - 0x012E96 10:AE86: 1C        .byte $1C
- D - I - 0x012E97 10:AE87: A0        .byte $A0
- D - I - 0x012E98 10:AE88: 3B        .byte $3B
- D - I - 0x012E99 10:AE89: 17        .byte $17
- D - I - 0x012E9A 10:AE8A: 3F        .byte $3F
- D - I - 0x012E9B 10:AE8B: 1F        .byte $1F
- D - I - 0x012E9C 10:AE8C: 00        .byte $00
- D - I - 0x012E9D 10:AE8D: 40        .byte $40
- D - I - 0x012E9E 10:AE8E: A1        .byte $A1
- D - I - 0x012E9F 10:AE8F: 3C        .byte $3C
- D - I - 0x012EA0 10:AE90: 34        .byte $34
- D - I - 0x012EA1 10:AE91: 00        .byte $00
- D - I - 0x012EA2 10:AE92: 41        .byte $41
- D - I - 0x012EA3 10:AE93: FB        .byte con_jmp
- D - I - 0x012EA4 10:AE94: DC B8     .word off_B8DC



off_AE96:
- D - I - 0x012EA6 10:AE96: 78        .byte $78
- D - I - 0x012EA7 10:AE97: 79        .byte $79
- D - I - 0x012EA8 10:AE98: 7A        .byte $7A
- D - I - 0x012EA9 10:AE99: 7B        .byte $7B
- D - I - 0x012EAA 10:AE9A: BD        .byte $BD
- D - I - 0x012EAB 10:AE9B: 36        .byte $36
- D - I - 0x012EAC 10:AE9C: 55        .byte $55
- D - I - 0x012EAD 10:AE9D: 3A        .byte $3A
- D - I - 0x012EAE 10:AE9E: 52        .byte $52
- D - I - 0x012EAF 10:AE9F: BE        .byte $BE
- D - I - 0x012EB0 10:AEA0: 32        .byte $32
- D - I - 0x012EB1 10:AEA1: 45        .byte $45
- D - I - 0x012EB2 10:AEA2: 36        .byte $36
- D - I - 0x012EB3 10:AEA3: 42        .byte $42
- D - I - 0x012EB4 10:AEA4: 3B        .byte $3B
- D - I - 0x012EB5 10:AEA5: 53        .byte $53
- D - I - 0x012EB6 10:AEA6: 3F        .byte $3F
- D - I - 0x012EB7 10:AEA7: 49        .byte $49
- D - I - 0x012EB8 10:AEA8: 03        .byte $03
- D - I - 0x012EB9 10:AEA9: 59        .byte $59
- D - I - 0x012EBA 10:AEAA: BF        .byte $BF
- D - I - 0x012EBB 10:AEAB: 32        .byte $32
- D - I - 0x012EBC 10:AEAC: 50        .byte $50
- D - I - 0x012EBD 10:AEAD: 36        .byte $36
- D - I - 0x012EBE 10:AEAE: 43        .byte $43
- D - I - 0x012EBF 10:AEAF: 3B        .byte $3B
- D - I - 0x012EC0 10:AEB0: 56        .byte $56
- D - I - 0x012EC1 10:AEB1: 3F        .byte $3F
- D - I - 0x012EC2 10:AEB2: 4C        .byte $4C
- D - I - 0x012EC3 10:AEB3: 03        .byte $03
- D - I - 0x012EC4 10:AEB4: 5C        .byte $5C
- D - I - 0x012EC5 10:AEB5: 04        .byte $04
- D - I - 0x012EC6 10:AEB6: 4B        .byte $4B
- D - I - 0x012EC7 10:AEB7: 05        .byte $05
- D - I - 0x012EC8 10:AEB8: 33        .byte $33
- D - I - 0x012EC9 10:AEB9: A0        .byte $A0
- D - I - 0x012ECA 10:AEBA: 32        .byte $32
- D - I - 0x012ECB 10:AEBB: 51        .byte $51
- D - I - 0x012ECC 10:AEBC: 36        .byte $36
- D - I - 0x012ECD 10:AEBD: 46        .byte $46
- D - I - 0x012ECE 10:AEBE: 3B        .byte $3B
- D - I - 0x012ECF 10:AEBF: 57        .byte $57
- D - I - 0x012ED0 10:AEC0: 3F        .byte $3F
- D - I - 0x012ED1 10:AEC1: 4D        .byte $4D
- D - I - 0x012ED2 10:AEC2: 00        .byte $00
- D - I - 0x012ED3 10:AEC3: 5D        .byte $5D
- D - I - 0x012ED4 10:AEC4: 04        .byte $04
- D - I - 0x012ED5 10:AEC5: 3F        .byte $3F
- D - I - 0x012ED6 10:AEC6: 05        .byte $05
- D - I - 0x012ED7 10:AEC7: 28        .byte $28
- D - I - 0x012ED8 10:AEC8: A1        .byte $A1
- D - I - 0x012ED9 10:AEC9: 32        .byte $32
- D - I - 0x012EDA 10:AECA: 54        .byte $54
- D - I - 0x012EDB 10:AECB: 37        .byte $37
- D - I - 0x012EDC 10:AECC: 47        .byte $47
- D - I - 0x012EDD 10:AECD: 38        .byte $38
- D - I - 0x012EDE 10:AECE: 48        .byte $48
- D - I - 0x012EDF 10:AECF: 3C        .byte $3C
- D - I - 0x012EE0 10:AED0: 58        .byte $58
- D - I - 0x012EE1 10:AED1: 00        .byte $00
- D - I - 0x012EE2 10:AED2: 4A        .byte $4A
- D - I - 0x012EE3 10:AED3: FB        .byte con_jmp
- D - I - 0x012EE4 10:AED4: FF B8     .word off_B8FF



off_AED6:
- D - I - 0x012EE6 10:AED6: 70        .byte $70
- D - I - 0x012EE7 10:AED7: 71        .byte $71
- D - I - 0x012EE8 10:AED8: 66        .byte $66
- D - I - 0x012EE9 10:AED9: 67        .byte $67
- D - I - 0x012EEA 10:AEDA: BD        .byte $BD
- D - I - 0x012EEB 10:AEDB: 14        .byte $14
- D - I - 0x012EEC 10:AEDC: DE        .byte $DE
- D - I - 0x012EED 10:AEDD: BE        .byte $BE
- D - I - 0x012EEE 10:AEDE: 0C        .byte $0C
- D - I - 0x012EEF 10:AEDF: DA        .byte $DA
- D - I - 0x012EF0 10:AEE0: 10        .byte $10
- D - I - 0x012EF1 10:AEE1: DC        .byte $DC
- D - I - 0x012EF2 10:AEE2: 14        .byte $14
- D - I - 0x012EF3 10:AEE3: DF        .byte $DF
- D - I - 0x012EF4 10:AEE4: BF        .byte $BF
- D - I - 0x012EF5 10:AEE5: 05        .byte $05
- D - I - 0x012EF6 10:AEE6: CA        .byte $CA
- D - I - 0x012EF7 10:AEE7: 04        .byte $04
- D - I - 0x012EF8 10:AEE8: BF        .byte $BF
- D - I - 0x012EF9 10:AEE9: 08        .byte $08
- D - I - 0x012EFA 10:AEEA: D8        .byte $D8
- D - I - 0x012EFB 10:AEEB: 0C        .byte $0C
- D - I - 0x012EFC 10:AEEC: DB        .byte $DB
- D - I - 0x012EFD 10:AEED: 10        .byte $10
- D - I - 0x012EFE 10:AEEE: DD        .byte $DD
- D - I - 0x012EFF 10:AEEF: A0        .byte $A0
- D - I - 0x012F00 10:AEF0: 32        .byte $32
- D - I - 0x012F01 10:AEF1: C0        .byte $C0
- D - I - 0x012F02 10:AEF2: 36        .byte $36
- D - I - 0x012F03 10:AEF3: C2        .byte $C2
- D - I - 0x012F04 10:AEF4: 01        .byte $01
- D - I - 0x012F05 10:AEF5: D0        .byte $D0
- D - I - 0x012F06 10:AEF6: 05        .byte $05
- D - I - 0x012F07 10:AEF7: D2        .byte $D2
- D - I - 0x012F08 10:AEF8: 08        .byte $08
- D - I - 0x012F09 10:AEF9: D9        .byte $D9
- D - I - 0x012F0A 10:AEFA: A1        .byte $A1
- D - I - 0x012F0B 10:AEFB: 32        .byte $32
- D - I - 0x012F0C 10:AEFC: C1        .byte $C1
- D - I - 0x012F0D 10:AEFD: 37        .byte $37
- D - I - 0x012F0E 10:AEFE: C3        .byte $C3
- D - I - 0x012F0F 10:AEFF: 3B        .byte $3B
- D - I - 0x012F10 10:AF00: C9        .byte $C9
- D - I - 0x012F11 10:AF01: 3D        .byte $3D
- D - I - 0x012F12 10:AF02: CB        .byte $CB
- D - I - 0x012F13 10:AF03: 01        .byte $01
- D - I - 0x012F14 10:AF04: D1        .byte $D1
- D - I - 0x012F15 10:AF05: 05        .byte $05
- D - I - 0x012F16 10:AF06: D3        .byte $D3
- D - I - 0x012F17 10:AF07: A2        .byte $A2
- D - I - 0x012F18 10:AF08: 31        .byte $31
- D - I - 0x012F19 10:AF09: C4        .byte $C4
- D - I - 0x012F1A 10:AF0A: 35        .byte $35
- D - I - 0x012F1B 10:AF0B: C6        .byte $C6
- D - I - 0x012F1C 10:AF0C: 39        .byte $39
- D - I - 0x012F1D 10:AF0D: CC        .byte $CC
- D - I - 0x012F1E 10:AF0E: 38        .byte $38
- D - I - 0x012F1F 10:AF0F: BF        .byte $BF
- D - I - 0x012F20 10:AF10: 3C        .byte $3C
- D - I - 0x012F21 10:AF11: CE        .byte $CE
- D - I - 0x012F22 10:AF12: 00        .byte $00
- D - I - 0x012F23 10:AF13: D4        .byte $D4
- D - I - 0x012F24 10:AF14: 04        .byte $04
- D - I - 0x012F25 10:AF15: D6        .byte $D6
- D - I - 0x012F26 10:AF16: A3        .byte $A3
- D - I - 0x012F27 10:AF17: 31        .byte $31
- D - I - 0x012F28 10:AF18: C5        .byte $C5
- D - I - 0x012F29 10:AF19: 35        .byte $35
- D - I - 0x012F2A 10:AF1A: C7        .byte $C7
- D - I - 0x012F2B 10:AF1B: 39        .byte $39
- D - I - 0x012F2C 10:AF1C: CD        .byte $CD
- D - I - 0x012F2D 10:AF1D: 3D        .byte $3D
- D - I - 0x012F2E 10:AF1E: CF        .byte $CF
- D - I - 0x012F2F 10:AF1F: 01        .byte $01
- D - I - 0x012F30 10:AF20: D5        .byte $D5
- D - I - 0x012F31 10:AF21: 05        .byte $05
- D - I - 0x012F32 10:AF22: D7        .byte $D7
- D - I - 0x012F33 10:AF23: FF        .byte con_FF



off_AF24:
- D - I - 0x012F34 10:AF24: 78        .byte $78
- D - I - 0x012F35 10:AF25: 79        .byte $79
- D - I - 0x012F36 10:AF26: 7A        .byte $7A
- D - I - 0x012F37 10:AF27: 7B        .byte $7B
- D - I - 0x012F38 10:AF28: BF        .byte $BF
- D - I - 0x012F39 10:AF29: 3F        .byte $3F
- D - I - 0x012F3A 10:AF2A: 8B        .byte $8B
- D - I - 0x012F3B 10:AF2B: A0        .byte $A0
- D - I - 0x012F3C 10:AF2C: 00        .byte $00
- D - I - 0x012F3D 10:AF2D: E0        .byte $E0
- D - I - 0x012F3E 10:AF2E: 04        .byte $04
- D - I - 0x012F3F 10:AF2F: E2        .byte $E2
- D - I - 0x012F40 10:AF30: A1        .byte $A1
- D - I - 0x012F41 10:AF31: 3F        .byte $3F
- D - I - 0x012F42 10:AF32: 8F        .byte $8F
- D - I - 0x012F43 10:AF33: FB        .byte con_jmp
- D - I - 0x012F44 10:AF34: FF B7     .word off_B7FF



off_AF36:
- D - I - 0x012F46 10:AF36: 78        .byte $78
- D - I - 0x012F47 10:AF37: 79        .byte $79
- D - I - 0x012F48 10:AF38: 7A        .byte $7A
- D - I - 0x012F49 10:AF39: 7B        .byte $7B
- D - I - 0x012F4A 10:AF3A: BE        .byte $BE
- D - I - 0x012F4B 10:AF3B: 37        .byte $37
- D - I - 0x012F4C 10:AF3C: CA        .byte $CA
- D - I - 0x012F4D 10:AF3D: 3B        .byte $3B
- D - I - 0x012F4E 10:AF3E: C5        .byte $C5
- D - I - 0x012F4F 10:AF3F: 3F        .byte $3F
- D - I - 0x012F50 10:AF40: C7        .byte $C7
- D - I - 0x012F51 10:AF41: 03        .byte $03
- D - I - 0x012F52 10:AF42: CD        .byte $CD
- D - I - 0x012F53 10:AF43: 07        .byte $07
- D - I - 0x012F54 10:AF44: CF        .byte $CF
- D - I - 0x012F55 10:AF45: BF        .byte $BF
- D - I - 0x012F56 10:AF46: 33        .byte $33
- D - I - 0x012F57 10:AF47: C8        .byte $C8
- D - I - 0x012F58 10:AF48: 37        .byte $37
- D - I - 0x012F59 10:AF49: 01        .byte $01
- D - I - 0x012F5A 10:AF4A: 38        .byte $38
- D - I - 0x012F5B 10:AF4B: D0        .byte $D0
- D - I - 0x012F5C 10:AF4C: 3F        .byte $3F
- D - I - 0x012F5D 10:AF4D: D2        .byte $D2
- D - I - 0x012F5E 10:AF4E: 3C        .byte $3C
- D - I - 0x012F5F 10:AF4F: 3C        .byte $3C
- D - I - 0x012F60 10:AF50: 00        .byte $00
- D - I - 0x012F61 10:AF51: D8        .byte $D8
- D - I - 0x012F62 10:AF52: 04        .byte $04
- D - I - 0x012F63 10:AF53: DA        .byte $DA
- D - I - 0x012F64 10:AF54: 09        .byte $09
- D - I - 0x012F65 10:AF55: A9        .byte $A9
- D - I - 0x012F66 10:AF56: A0        .byte $A0
- D - I - 0x012F67 10:AF57: 33        .byte $33
- D - I - 0x012F68 10:AF58: C9        .byte $C9
- D - I - 0x012F69 10:AF59: 34        .byte $34
- D - I - 0x012F6A 10:AF5A: CB        .byte $CB
- D - I - 0x012F6B 10:AF5B: 38        .byte $38
- D - I - 0x012F6C 10:AF5C: D1        .byte $D1
- D - I - 0x012F6D 10:AF5D: 3C        .byte $3C
- D - I - 0x012F6E 10:AF5E: D3        .byte $D3
- D - I - 0x012F6F 10:AF5F: 00        .byte $00
- D - I - 0x012F70 10:AF60: EA        .byte $EA
- D - I - 0x012F71 10:AF61: 04        .byte $04
- D - I - 0x012F72 10:AF62: DB        .byte $DB
- D - I - 0x012F73 10:AF63: 0A        .byte $0A
- D - I - 0x012F74 10:AF64: AC        .byte $AC
- D - I - 0x012F75 10:AF65: A1        .byte $A1
- D - I - 0x012F76 10:AF66: 33        .byte $33
- D - I - 0x012F77 10:AF67: CC        .byte $CC
- D - I - 0x012F78 10:AF68: 37        .byte $37
- D - I - 0x012F79 10:AF69: 01        .byte $01
- D - I - 0x012F7A 10:AF6A: 38        .byte $38
- D - I - 0x012F7B 10:AF6B: D4        .byte $D4
- D - I - 0x012F7C 10:AF6C: 3F        .byte $3F
- D - I - 0x012F7D 10:AF6D: D6        .byte $D6
- D - I - 0x012F7E 10:AF6E: 3C        .byte $3C
- D - I - 0x012F7F 10:AF6F: 3C        .byte $3C
- D - I - 0x012F80 10:AF70: 00        .byte $00
- D - I - 0x012F81 10:AF71: DC        .byte $DC
- D - I - 0x012F82 10:AF72: 04        .byte $04
- D - I - 0x012F83 10:AF73: DE        .byte $DE
- D - I - 0x012F84 10:AF74: 0A        .byte $0A
- D - I - 0x012F85 10:AF75: AD        .byte $AD
- D - I - 0x012F86 10:AF76: A2        .byte $A2
- D - I - 0x012F87 10:AF77: 37        .byte $37
- D - I - 0x012F88 10:AF78: CE        .byte $CE
- D - I - 0x012F89 10:AF79: 3B        .byte $3B
- D - I - 0x012F8A 10:AF7A: D5        .byte $D5
- D - I - 0x012F8B 10:AF7B: 3F        .byte $3F
- D - I - 0x012F8C 10:AF7C: D7        .byte $D7
- D - I - 0x012F8D 10:AF7D: 03        .byte $03
- D - I - 0x012F8E 10:AF7E: D7        .byte $D7
- D - I - 0x012F8F 10:AF7F: 05        .byte $05
- D - I - 0x012F90 10:AF80: DD        .byte $DD
- D - I - 0x012F91 10:AF81: FB        .byte con_jmp
- D - I - 0x012F92 10:AF82: 39 B8     .word off_B839



off_AF84:
- D - I - 0x012F94 10:AF84: 74        .byte $74
- D - I - 0x012F95 10:AF85: 75        .byte $75
- D - I - 0x012F96 10:AF86: 76        .byte $76
- D - I - 0x012F97 10:AF87: 77        .byte $77
- D - I - 0x012F98 10:AF88: BE        .byte $BE
- D - I - 0x012F99 10:AF89: 3A        .byte $3A
- D - I - 0x012F9A 10:AF8A: 88        .byte $88
- D - I - 0x012F9B 10:AF8B: 3C        .byte $3C
- D - I - 0x012F9C 10:AF8C: 8A        .byte $8A
- D - I - 0x012F9D 10:AF8D: 00        .byte $00
- D - I - 0x012F9E 10:AF8E: A0        .byte $A0
- D - I - 0x012F9F 10:AF8F: 04        .byte $04
- D - I - 0x012FA0 10:AF90: 5A        .byte $5A
- D - I - 0x012FA1 10:AF91: BF        .byte $BF
- D - I - 0x012FA2 10:AF92: 3A        .byte $3A
- D - I - 0x012FA3 10:AF93: 89        .byte $89
- D - I - 0x012FA4 10:AF94: 3C        .byte $3C
- D - I - 0x012FA5 10:AF95: 8B        .byte $8B
- D - I - 0x012FA6 10:AF96: 00        .byte $00
- D - I - 0x012FA7 10:AF97: A1        .byte $A1
- D - I - 0x012FA8 10:AF98: 04        .byte $04
- D - I - 0x012FA9 10:AF99: 15        .byte $15
- D - I - 0x012FAA 10:AF9A: 08        .byte $08
- D - I - 0x012FAB 10:AF9B: FE        .byte $FE
- D - I - 0x012FAC 10:AF9C: A0        .byte $A0
- D - I - 0x012FAD 10:AF9D: 3A        .byte $3A
- D - I - 0x012FAE 10:AF9E: 8C        .byte $8C
- D - I - 0x012FAF 10:AF9F: 3C        .byte $3C
- D - I - 0x012FB0 10:AFA0: 8E        .byte $8E
- D - I - 0x012FB1 10:AFA1: 00        .byte $00
- D - I - 0x012FB2 10:AFA2: A4        .byte $A4
- D - I - 0x012FB3 10:AFA3: 04        .byte $04
- D - I - 0x012FB4 10:AFA4: 81        .byte $81
- D - I - 0x012FB5 10:AFA5: A1        .byte $A1
- D - I - 0x012FB6 10:AFA6: 3A        .byte $3A
- D - I - 0x012FB7 10:AFA7: 8D        .byte $8D
- D - I - 0x012FB8 10:AFA8: FB        .byte con_jmp
- D - I - 0x012FB9 10:AFA9: 31 BA     .word off_BA31



off_AFAB:
- D - I - 0x012FBB 10:AFAB: 74        .byte $74
- D - I - 0x012FBC 10:AFAC: 75        .byte $75
- D - I - 0x012FBD 10:AFAD: 76        .byte $76
- D - I - 0x012FBE 10:AFAE: 77        .byte $77
- D - I - 0x012FBF 10:AFAF: BE        .byte $BE
- D - I - 0x012FC0 10:AFB0: 3A        .byte $3A
- D - I - 0x012FC1 10:AFB1: 88        .byte $88
- D - I - 0x012FC2 10:AFB2: 3C        .byte $3C
- D - I - 0x012FC3 10:AFB3: 8A        .byte $8A
- D - I - 0x012FC4 10:AFB4: 00        .byte $00
- D - I - 0x012FC5 10:AFB5: A0        .byte $A0
- D - I - 0x012FC6 10:AFB6: 04        .byte $04
- D - I - 0x012FC7 10:AFB7: 5A        .byte $5A
- D - I - 0x012FC8 10:AFB8: BF        .byte $BF
- D - I - 0x012FC9 10:AFB9: 3A        .byte $3A
- D - I - 0x012FCA 10:AFBA: 94        .byte $94
- D - I - 0x012FCB 10:AFBB: 3C        .byte $3C
- D - I - 0x012FCC 10:AFBC: 9E        .byte $9E
- D - I - 0x012FCD 10:AFBD: 00        .byte $00
- D - I - 0x012FCE 10:AFBE: 97        .byte $97
- D - I - 0x012FCF 10:AFBF: 04        .byte $04
- D - I - 0x012FD0 10:AFC0: 15        .byte $15
- D - I - 0x012FD1 10:AFC1: 08        .byte $08
- D - I - 0x012FD2 10:AFC2: FE        .byte $FE
- D - I - 0x012FD3 10:AFC3: A0        .byte $A0
- D - I - 0x012FD4 10:AFC4: 3A        .byte $3A
- D - I - 0x012FD5 10:AFC5: 95        .byte $95
- D - I - 0x012FD6 10:AFC6: 3C        .byte $3C
- D - I - 0x012FD7 10:AFC7: 9F        .byte $9F
- D - I - 0x012FD8 10:AFC8: 00        .byte $00
- D - I - 0x012FD9 10:AFC9: 9D        .byte $9D
- D - I - 0x012FDA 10:AFCA: 04        .byte $04
- D - I - 0x012FDB 10:AFCB: 81        .byte $81
- D - I - 0x012FDC 10:AFCC: A1        .byte $A1
- D - I - 0x012FDD 10:AFCD: 3A        .byte $3A
- D - I - 0x012FDE 10:AFCE: 8D        .byte $8D
- D - I - 0x012FDF 10:AFCF: FB        .byte con_jmp
- D - I - 0x012FE0 10:AFD0: 31 BA     .word off_BA31



off_AFD2:
- D - I - 0x012FE2 10:AFD2: 70        .byte $70
- D - I - 0x012FE3 10:AFD3: 71        .byte $71
- D - I - 0x012FE4 10:AFD4: 72        .byte $72
- D - I - 0x012FE5 10:AFD5: 73        .byte $73
- D - I - 0x012FE6 10:AFD6: BF        .byte $BF
- D - I - 0x012FE7 10:AFD7: 3C        .byte $3C
- D - I - 0x012FE8 10:AFD8: 94        .byte $94
- D - I - 0x012FE9 10:AFD9: 02        .byte $02
- D - I - 0x012FEA 10:AFDA: 96        .byte $96
- D - I - 0x012FEB 10:AFDB: A0        .byte $A0
- D - I - 0x012FEC 10:AFDC: 3C        .byte $3C
- D - I - 0x012FED 10:AFDD: 98        .byte $98
- D - I - 0x012FEE 10:AFDE: 07        .byte $07
- D - I - 0x012FEF 10:AFDF: A6        .byte $A6
- D - I - 0x012FF0 10:AFE0: A1        .byte $A1
- D - I - 0x012FF1 10:AFE1: 3C        .byte $3C
- D - I - 0x012FF2 10:AFE2: 95        .byte $95
- D - I - 0x012FF3 10:AFE3: 02        .byte $02
- D - I - 0x012FF4 10:AFE4: 97        .byte $97
- D - I - 0x012FF5 10:AFE5: FB        .byte con_jmp
- D - I - 0x012FF6 10:AFE6: 9A B6     .word off_B69A



off_AFE8:
- D - I - 0x012FF8 10:AFE8: 68        .byte $68
- D - I - 0x012FF9 10:AFE9: 69        .byte $69
- D - I - 0x012FFA 10:AFEA: 6A        .byte $6A
- D - I - 0x012FFB 10:AFEB: 6B        .byte $6B
- D - I - 0x012FFC 10:AFEC: BF        .byte $BF
- D - I - 0x012FFD 10:AFED: 3E        .byte $3E
- D - I - 0x012FFE 10:AFEE: 5A        .byte $5A
- D - I - 0x012FFF 10:AFEF: A0        .byte $A0
- D - I - 0x013000 10:AFF0: 3E        .byte $3E
- D - I - 0x013001 10:AFF1: 5B        .byte $5B
- D - I - 0x013002 10:AFF2: 06        .byte $06
- D - I - 0x013003 10:AFF3: 18        .byte $18
- D - I - 0x013004 10:AFF4: 0A        .byte $0A
- D - I - 0x013005 10:AFF5: 1A        .byte $1A
- D - I - 0x013006 10:AFF6: A1        .byte $A1
- D - I - 0x013007 10:AFF7: 3E        .byte $3E
- D - I - 0x013008 10:AFF8: 5E        .byte $5E
- D - I - 0x013009 10:AFF9: FA        .byte con_jsr
- D - I - 0x01300A 10:AFFA: A0 B9     .word off_B9A0
- D - I - 0x01300C 10:AFFC: FB        .byte con_jmp
- D - I - 0x01300D 10:AFFD: F4 B9     .word off_B9F4



off_AFFF:
- D - I - 0x01300F 10:AFFF: 74        .byte $74
- D - I - 0x013010 10:B000: 75        .byte $75
- D - I - 0x013011 10:B001: 76        .byte $76
- D - I - 0x013012 10:B002: 77        .byte $77
- D - I - 0x013013 10:B003: BE        .byte $BE
- D - I - 0x013014 10:B004: 38        .byte $38
- D - I - 0x013015 10:B005: D4        .byte $D4
- D - I - 0x013016 10:B006: BF        .byte $BF
- D - I - 0x013017 10:B007: 00        .byte $00
- D - I - 0x013018 10:B008: C1        .byte $C1
- D - I - 0x013019 10:B009: 3C        .byte $3C
- D - I - 0x01301A 10:B00A: D6        .byte $D6
- D - I - 0x01301B 10:B00B: 03        .byte $03
- D - I - 0x01301C 10:B00C: D7        .byte $D7
- D - I - 0x01301D 10:B00D: A0        .byte $A0
- D - I - 0x01301E 10:B00E: 38        .byte $38
- D - I - 0x01301F 10:B00F: D5        .byte $D5
- D - I - 0x013020 10:B010: FA        .byte con_jsr
- D - I - 0x013021 10:B011: BD B7     .word off_B7BD
- D - I - 0x013023 10:B013: FB        .byte con_jmp
- D - I - 0x013024 10:B014: 6A B7     .word off_B76A



off_B016:
- D - I - 0x013026 10:B016: 78        .byte $78
- D - I - 0x013027 10:B017: 79        .byte $79
- D - I - 0x013028 10:B018: 7A        .byte $7A
- D - I - 0x013029 10:B019: 7B        .byte $7B
- D - I - 0x01302A 10:B01A: BE        .byte $BE
- D - I - 0x01302B 10:B01B: 3A        .byte $3A
- D - I - 0x01302C 10:B01C: 08        .byte $08
- D - I - 0x01302D 10:B01D: 3F        .byte $3F
- D - I - 0x01302E 10:B01E: 18        .byte $18
- D - I - 0x01302F 10:B01F: 02        .byte $02
- D - I - 0x013030 10:B020: 1A        .byte $1A
- D - I - 0x013031 10:B021: 06        .byte $06
- D - I - 0x013032 10:B022: 30        .byte $30
- D - I - 0x013033 10:B023: BF        .byte $BF
- D - I - 0x013034 10:B024: 3B        .byte $3B
- D - I - 0x013035 10:B025: 09        .byte $09
- D - I - 0x013036 10:B026: 3F        .byte $3F
- D - I - 0x013037 10:B027: 19        .byte $19
- D - I - 0x013038 10:B028: 00        .byte $00
- D - I - 0x013039 10:B029: E8        .byte $E8
- D - I - 0x01303A 10:B02A: A0        .byte $A0
- D - I - 0x01303B 10:B02B: 3A        .byte $3A
- D - I - 0x01303C 10:B02C: 0C        .byte $0C
- D - I - 0x01303D 10:B02D: 3F        .byte $3F
- D - I - 0x01303E 10:B02E: 0A        .byte $0A
- D - I - 0x01303F 10:B02F: 00        .byte $00
- D - I - 0x013040 10:B030: 20        .byte $20
- D - I - 0x013041 10:B031: A1        .byte $A1
- D - I - 0x013042 10:B032: 3F        .byte $3F
- D - I - 0x013043 10:B033: 01        .byte $01
- D - I - 0x013044 10:B034: 03        .byte $03
- D - I - 0x013045 10:B035: 01        .byte $01
- D - I - 0x013046 10:B036: 06        .byte $06
- D - I - 0x013047 10:B037: 23        .byte $23
- D - I - 0x013048 10:B038: A2        .byte $A2
- D - I - 0x013049 10:B039: 3F        .byte $3F
- D - I - 0x01304A 10:B03A: 0B        .byte $0B
- D - I - 0x01304B 10:B03B: 02        .byte $02
- D - I - 0x01304C 10:B03C: 24        .byte $24
- D - I - 0x01304D 10:B03D: FB        .byte con_jmp
- D - I - 0x01304E 10:B03E: DC B8     .word off_B8DC



off_B040:
- D - I - 0x013050 10:B040: 70        .byte $70
- D - I - 0x013051 10:B041: 71        .byte $71
- D - I - 0x013052 10:B042: 72        .byte $72
- D - I - 0x013053 10:B043: 73        .byte $73
- D - I - 0x013054 10:B044: BA        .byte $BA
- D - I - 0x013055 10:B045: 3F        .byte $3F
- D - I - 0x013056 10:B046: 32        .byte $32
- D - I - 0x013057 10:B047: 03        .byte $03
- D - I - 0x013058 10:B048: 38        .byte $38
- D - I - 0x013059 10:B049: 07        .byte $07
- D - I - 0x01305A 10:B04A: 3A        .byte $3A
- D - I - 0x01305B 10:B04B: BB        .byte $BB
- D - I - 0x01305C 10:B04C: 3F        .byte $3F
- D - I - 0x01305D 10:B04D: 33        .byte $33
- D - I - 0x01305E 10:B04E: 03        .byte $03
- D - I - 0x01305F 10:B04F: 39        .byte $39
- D - I - 0x013060 10:B050: A0        .byte $A0
- D - I - 0x013061 10:B051: 3B        .byte $3B
- D - I - 0x013062 10:B052: 31        .byte $31
- D - I - 0x013063 10:B053: 3F        .byte $3F
- D - I - 0x013064 10:B054: 02        .byte $02
- D - I - 0x013065 10:B055: 03        .byte $03
- D - I - 0x013066 10:B056: 3C        .byte $3C
- D - I - 0x013067 10:B057: 07        .byte $07
- D - I - 0x013068 10:B058: 3B        .byte $3B
- D - I - 0x013069 10:B059: A1        .byte $A1
- D - I - 0x01306A 10:B05A: 3B        .byte $3B
- D - I - 0x01306B 10:B05B: 34        .byte $34
- D - I - 0x01306C 10:B05C: 3F        .byte $3F
- D - I - 0x01306D 10:B05D: 39        .byte $39
- D - I - 0x01306E 10:B05E: FF        .byte con_FF



off_B05F:
- D - I - 0x01306F 10:B05F: 70        .byte $70
- D - I - 0x013070 10:B060: 71        .byte $71
- D - I - 0x013071 10:B061: 72        .byte $72
- D - I - 0x013072 10:B062: 73        .byte $73
- D - I - 0x013073 10:B063: BB        .byte $BB
- D - I - 0x013074 10:B064: 3F        .byte $3F
- D - I - 0x013075 10:B065: 35        .byte $35
- D - I - 0x013076 10:B066: 03        .byte $03
- D - I - 0x013077 10:B067: 37        .byte $37
- D - I - 0x013078 10:B068: 0B        .byte $0B
- D - I - 0x013079 10:B069: 3E        .byte $3E
- D - I - 0x01307A 10:B06A: BC        .byte $BC
- D - I - 0x01307B 10:B06B: 3F        .byte $3F
- D - I - 0x01307C 10:B06C: 60        .byte $60
- D - I - 0x01307D 10:B06D: 03        .byte $03
- D - I - 0x01307E 10:B06E: 02        .byte $02
- D - I - 0x01307F 10:B06F: 07        .byte $07
- D - I - 0x013080 10:B070: 02        .byte $02
- D - I - 0x013081 10:B071: 0B        .byte $0B
- D - I - 0x013082 10:B072: 3F        .byte $3F
- D - I - 0x013083 10:B073: BD        .byte $BD
- D - I - 0x013084 10:B074: 03        .byte $03
- D - I - 0x013085 10:B075: 62        .byte $62
- D - I - 0x013086 10:B076: 07        .byte $07
- D - I - 0x013087 10:B077: 02        .byte $02
- D - I - 0x013088 10:B078: 0B        .byte $0B
- D - I - 0x013089 10:B079: 6A        .byte $6A
- D - I - 0x01308A 10:B07A: A1        .byte $A1
- D - I - 0x01308B 10:B07B: 03        .byte $03
- D - I - 0x01308C 10:B07C: 79        .byte $79
- D - I - 0x01308D 10:B07D: 07        .byte $07
- D - I - 0x01308E 10:B07E: 7B        .byte $7B
- D - I - 0x01308F 10:B07F: A2        .byte $A2
- D - I - 0x013090 10:B080: 3B        .byte $3B
- D - I - 0x013091 10:B081: 61        .byte $61
- D - I - 0x013092 10:B082: 3F        .byte $3F
- D - I - 0x013093 10:B083: 02        .byte $02
- D - I - 0x013094 10:B084: 03        .byte $03
- D - I - 0x013095 10:B085: 02        .byte $02
- D - I - 0x013096 10:B086: 07        .byte $07
- D - I - 0x013097 10:B087: 02        .byte $02
- D - I - 0x013098 10:B088: 0B        .byte $0B
- D - I - 0x013099 10:B089: 6B        .byte $6B
- D - I - 0x01309A 10:B08A: A3        .byte $A3
- D - I - 0x01309B 10:B08B: 3B        .byte $3B
- D - I - 0x01309C 10:B08C: 64        .byte $64
- D - I - 0x01309D 10:B08D: 3F        .byte $3F
- D - I - 0x01309E 10:B08E: 63        .byte $63
- D - I - 0x01309F 10:B08F: 03        .byte $03
- D - I - 0x0130A0 10:B090: 02        .byte $02
- D - I - 0x0130A1 10:B091: 07        .byte $07
- D - I - 0x0130A2 10:B092: 3D        .byte $3D
- D - I - 0x0130A3 10:B093: 0B        .byte $0B
- D - I - 0x0130A4 10:B094: 6E        .byte $6E
- D - I - 0x0130A5 10:B095: FF        .byte con_FF



off_B096:
- D - I - 0x0130A6 10:B096: 70        .byte $70
- D - I - 0x0130A7 10:B097: 71        .byte $71
- D - I - 0x0130A8 10:B098: 72        .byte $72
- D - I - 0x0130A9 10:B099: 73        .byte $73
- D - I - 0x0130AA 10:B09A: BE        .byte $BE
- D - I - 0x0130AB 10:B09B: 3F        .byte $3F
- D - I - 0x0130AC 10:B09C: 78        .byte $78
- D - I - 0x0130AD 10:B09D: 03        .byte $03
- D - I - 0x0130AE 10:B09E: 7A        .byte $7A
- D - I - 0x0130AF 10:B09F: 07        .byte $07
- D - I - 0x0130B0 10:B0A0: 36        .byte $36
- D - I - 0x0130B1 10:B0A1: A3        .byte $A3
- D - I - 0x0130B2 10:B0A2: 3B        .byte $3B
- D - I - 0x0130B3 10:B0A3: 68        .byte $68
- D - I - 0x0130B4 10:B0A4: 03        .byte $03
- D - I - 0x0130B5 10:B0A5: 66        .byte $66
- D - I - 0x0130B6 10:B0A6: 07        .byte $07
- D - I - 0x0130B7 10:B0A7: 6C        .byte $6C
- D - I - 0x0130B8 10:B0A8: 0B        .byte $0B
- D - I - 0x0130B9 10:B0A9: 6F        .byte $6F
- D - I - 0x0130BA 10:B0AA: A4        .byte $A4
- D - I - 0x0130BB 10:B0AB: 3B        .byte $3B
- D - I - 0x0130BC 10:B0AC: 69        .byte $69
- D - I - 0x0130BD 10:B0AD: 3F        .byte $3F
- D - I - 0x0130BE 10:B0AE: 65        .byte $65
- D - I - 0x0130BF 10:B0AF: 03        .byte $03
- D - I - 0x0130C0 10:B0B0: 67        .byte $67
- D - I - 0x0130C1 10:B0B1: 07        .byte $07
- D - I - 0x0130C2 10:B0B2: 6D        .byte $6D
- D - I - 0x0130C3 10:B0B3: FF        .byte con_FF



off_B0B4:
- D - I - 0x0130C4 10:B0B4: 74        .byte $74
- D - I - 0x0130C5 10:B0B5: 75        .byte $75
- D - I - 0x0130C6 10:B0B6: 76        .byte $76
- D - I - 0x0130C7 10:B0B7: 77        .byte $77
- D - I - 0x0130C8 10:B0B8: BE        .byte $BE
- D - I - 0x0130C9 10:B0B9: 38        .byte $38
- D - I - 0x0130CA 10:B0BA: D4        .byte $D4
- D - I - 0x0130CB 10:B0BB: BF        .byte $BF
- D - I - 0x0130CC 10:B0BC: 3C        .byte $3C
- D - I - 0x0130CD 10:B0BD: D6        .byte $D6
- D - I - 0x0130CE 10:B0BE: 00        .byte $00
- D - I - 0x0130CF 10:B0BF: C1        .byte $C1
- D - I - 0x0130D0 10:B0C0: A0        .byte $A0
- D - I - 0x0130D1 10:B0C1: 38        .byte $38
- D - I - 0x0130D2 10:B0C2: D5        .byte $D5
- D - I - 0x0130D3 10:B0C3: FA        .byte con_jsr
- D - I - 0x0130D4 10:B0C4: DE B7     .word off_B7DE
- D - I - 0x0130D6 10:B0C6: FB        .byte con_jmp
- D - I - 0x0130D7 10:B0C7: AF B7     .word off_B7AF



off_B0C9:
- D - I - 0x0130D9 10:B0C9: 74        .byte $74
- D - I - 0x0130DA 10:B0CA: 75        .byte $75
- D - I - 0x0130DB 10:B0CB: 76        .byte $76
- D - I - 0x0130DC 10:B0CC: 77        .byte $77
- D - I - 0x0130DD 10:B0CD: BE        .byte $BE
- D - I - 0x0130DE 10:B0CE: 3A        .byte $3A
- D - I - 0x0130DF 10:B0CF: 85        .byte $85
- D - I - 0x0130E0 10:B0D0: 3C        .byte $3C
- D - I - 0x0130E1 10:B0D1: 92        .byte $92
- D - I - 0x0130E2 10:B0D2: 00        .byte $00
- D - I - 0x0130E3 10:B0D3: 98        .byte $98
- D - I - 0x0130E4 10:B0D4: 04        .byte $04
- D - I - 0x0130E5 10:B0D5: 5A        .byte $5A
- D - I - 0x0130E6 10:B0D6: BF        .byte $BF
- D - I - 0x0130E7 10:B0D7: 3A        .byte $3A
- D - I - 0x0130E8 10:B0D8: 89        .byte $89
- D - I - 0x0130E9 10:B0D9: 3C        .byte $3C
- D - I - 0x0130EA 10:B0DA: 93        .byte $93
- D - I - 0x0130EB 10:B0DB: 00        .byte $00
- D - I - 0x0130EC 10:B0DC: 99        .byte $99
- D - I - 0x0130ED 10:B0DD: 04        .byte $04
- D - I - 0x0130EE 10:B0DE: 15        .byte $15
- D - I - 0x0130EF 10:B0DF: 08        .byte $08
- D - I - 0x0130F0 10:B0E0: FE        .byte $FE
- D - I - 0x0130F1 10:B0E1: A0        .byte $A0
- D - I - 0x0130F2 10:B0E2: 3A        .byte $3A
- D - I - 0x0130F3 10:B0E3: 90        .byte $90
- D - I - 0x0130F4 10:B0E4: 3C        .byte $3C
- D - I - 0x0130F5 10:B0E5: 96        .byte $96
- D - I - 0x0130F6 10:B0E6: 00        .byte $00
- D - I - 0x0130F7 10:B0E7: 9C        .byte $9C
- D - I - 0x0130F8 10:B0E8: 04        .byte $04
- D - I - 0x0130F9 10:B0E9: 81        .byte $81
- D - I - 0x0130FA 10:B0EA: A1        .byte $A1
- D - I - 0x0130FB 10:B0EB: 3A        .byte $3A
- D - I - 0x0130FC 10:B0EC: 91        .byte $91
- D - I - 0x0130FD 10:B0ED: FB        .byte con_jmp
- D - I - 0x0130FE 10:B0EE: 31 BA     .word off_BA31



off_B0F0:
- D - I - 0x013100 10:B0F0: 6C        .byte $6C
- D - I - 0x013101 10:B0F1: 6D        .byte $6D
- D - I - 0x013102 10:B0F2: 6E        .byte $6E
- D - I - 0x013103 10:B0F3: 6F        .byte $6F
- D - I - 0x013104 10:B0F4: BE        .byte $BE
- D - I - 0x013105 10:B0F5: 3A        .byte $3A
- D - I - 0x013106 10:B0F6: 1F        .byte $1F
- D - I - 0x013107 10:B0F7: BF        .byte $BF
- D - I - 0x013108 10:B0F8: 3C        .byte $3C
- D - I - 0x013109 10:B0F9: 35        .byte $35
- D - I - 0x01310A 10:B0FA: 03        .byte $03
- D - I - 0x01310B 10:B0FB: 34        .byte $34
- D - I - 0x01310C 10:B0FC: 04        .byte $04
- D - I - 0x01310D 10:B0FD: 0C        .byte $0C
- D - I - 0x01310E 10:B0FE: A0        .byte $A0
- D - I - 0x01310F 10:B0FF: 3A        .byte $3A
- D - I - 0x013110 10:B100: 4A        .byte $4A
- D - I - 0x013111 10:B101: FB        .byte con_jmp
- D - I - 0x013112 10:B102: 83 B5     .word off_B583



off_B104:
- D - I - 0x013114 10:B104: 68        .byte $68
- D - I - 0x013115 10:B105: 69        .byte $69
- D - I - 0x013116 10:B106: 6A        .byte $6A
- D - I - 0x013117 10:B107: 6B        .byte $6B
- D - I - 0x013118 10:B108: BF        .byte $BF
- D - I - 0x013119 10:B109: 3E        .byte $3E
- D - I - 0x01311A 10:B10A: 60        .byte $60
- D - I - 0x01311B 10:B10B: A0        .byte $A0
- D - I - 0x01311C 10:B10C: 3E        .byte $3E
- D - I - 0x01311D 10:B10D: 61        .byte $61
- D - I - 0x01311E 10:B10E: 06        .byte $06
- D - I - 0x01311F 10:B10F: 2B        .byte $2B
- D - I - 0x013120 10:B110: 07        .byte $07
- D - I - 0x013121 10:B111: 02        .byte $02
- D - I - 0x013122 10:B112: 0A        .byte $0A
- D - I - 0x013123 10:B113: 1A        .byte $1A
- D - I - 0x013124 10:B114: A1        .byte $A1
- D - I - 0x013125 10:B115: 3E        .byte $3E
- D - I - 0x013126 10:B116: 64        .byte $64
- D - I - 0x013127 10:B117: FA        .byte con_jsr
- D - I - 0x013128 10:B118: A0 B9     .word off_B9A0
- D - I - 0x01312A 10:B11A: FB        .byte con_jmp
- D - I - 0x01312B 10:B11B: 6C BA     .word off_BA6C



off_B11D:
- D - I - 0x01312D 10:B11D: 60        .byte $60
- D - I - 0x01312E 10:B11E: 61        .byte $61
- D - I - 0x01312F 10:B11F: 62        .byte $62
- D - I - 0x013130 10:B120: 63        .byte $63
- D - I - 0x013131 10:B121: BB        .byte $BB
- D - I - 0x013132 10:B122: 35        .byte $35
- D - I - 0x013133 10:B123: 4C        .byte $4C
- D - I - 0x013134 10:B124: 39        .byte $39
- D - I - 0x013135 10:B125: 50        .byte $50
- D - I - 0x013136 10:B126: BC        .byte $BC
- D - I - 0x013137 10:B127: 2F        .byte $2F
- D - I - 0x013138 10:B128: 44        .byte $44
- D - I - 0x013139 10:B129: 2D        .byte $2D
- D - I - 0x01313A 10:B12A: 45        .byte $45
- D - I - 0x01313B 10:B12B: 33        .byte $33
- D - I - 0x01313C 10:B12C: 48        .byte $48
- D - I - 0x01313D 10:B12D: 31        .byte $31
- D - I - 0x01313E 10:B12E: 4A        .byte $4A
- D - I - 0x01313F 10:B12F: 35        .byte $35
- D - I - 0x013140 10:B130: 4D        .byte $4D
- D - I - 0x013141 10:B131: 39        .byte $39
- D - I - 0x013142 10:B132: 51        .byte $51
- D - I - 0x013143 10:B133: BD        .byte $BD
- D - I - 0x013144 10:B134: 2F        .byte $2F
- D - I - 0x013145 10:B135: 47        .byte $47
- D - I - 0x013146 10:B136: 2D        .byte $2D
- D - I - 0x013147 10:B137: 46        .byte $46
- D - I - 0x013148 10:B138: 33        .byte $33
- D - I - 0x013149 10:B139: 49        .byte $49
- D - I - 0x01314A 10:B13A: 31        .byte $31
- D - I - 0x01314B 10:B13B: 4B        .byte $4B
- D - I - 0x01314C 10:B13C: 35        .byte $35
- D - I - 0x01314D 10:B13D: 4E        .byte $4E
- D - I - 0x01314E 10:B13E: 3B        .byte $3B
- D - I - 0x01314F 10:B13F: 52        .byte $52
- D - I - 0x013150 10:B140: 3F        .byte $3F
- D - I - 0x013151 10:B141: 53        .byte $53
- D - I - 0x013152 10:B142: 03        .byte $03
- D - I - 0x013153 10:B143: 5F        .byte $5F
- D - I - 0x013154 10:B144: BE        .byte $BE
- D - I - 0x013155 10:B145: 3F        .byte $3F
- D - I - 0x013156 10:B146: 54        .byte $54
- D - I - 0x013157 10:B147: 03        .byte $03
- D - I - 0x013158 10:B148: 60        .byte $60
- D - I - 0x013159 10:B149: 06        .byte $06
- D - I - 0x01315A 10:B14A: 67        .byte $67
- D - I - 0x01315B 10:B14B: 08        .byte $08
- D - I - 0x01315C 10:B14C: 6D        .byte $6D
- D - I - 0x01315D 10:B14D: BF        .byte $BF
- D - I - 0x01315E 10:B14E: 3F        .byte $3F
- D - I - 0x01315F 10:B14F: 55        .byte $55
- D - I - 0x013160 10:B150: 00        .byte $00
- D - I - 0x013161 10:B151: 61        .byte $61
- D - I - 0x013162 10:B152: 04        .byte $04
- D - I - 0x013163 10:B153: 68        .byte $68
- D - I - 0x013164 10:B154: 08        .byte $08
- D - I - 0x013165 10:B155: 6E        .byte $6E
- D - I - 0x013166 10:B156: 0C        .byte $0C
- D - I - 0x013167 10:B157: 3B        .byte $3B
- D - I - 0x013168 10:B158: 10        .byte $10
- D - I - 0x013169 10:B159: 3E        .byte $3E
- D - I - 0x01316A 10:B15A: 17        .byte $17
- D - I - 0x01316B 10:B15B: 42        .byte $42
- D - I - 0x01316C 10:B15C: A0        .byte $A0
- D - I - 0x01316D 10:B15D: 3F        .byte $3F
- D - I - 0x01316E 10:B15E: 56        .byte $56
- D - I - 0x01316F 10:B15F: 03        .byte $03
- D - I - 0x013170 10:B160: 62        .byte $62
- D - I - 0x013171 10:B161: 07        .byte $07
- D - I - 0x013172 10:B162: 69        .byte $69
- D - I - 0x013173 10:B163: 0A        .byte $0A
- D - I - 0x013174 10:B164: 6F        .byte $6F
- D - I - 0x013175 10:B165: 0C        .byte $0C
- D - I - 0x013176 10:B166: 02        .byte $02
- D - I - 0x013177 10:B167: 10        .byte $10
- D - I - 0x013178 10:B168: 3F        .byte $3F
- D - I - 0x013179 10:B169: 17        .byte $17
- D - I - 0x01317A 10:B16A: 43        .byte $43
- D - I - 0x01317B 10:B16B: A1        .byte $A1
- D - I - 0x01317C 10:B16C: 3F        .byte $3F
- D - I - 0x01317D 10:B16D: 57        .byte $57
- D - I - 0x01317E 10:B16E: 03        .byte $03
- D - I - 0x01317F 10:B16F: 63        .byte $63
- D - I - 0x013180 10:B170: 06        .byte $06
- D - I - 0x013181 10:B171: 6A        .byte $6A
- D - I - 0x013182 10:B172: 0A        .byte $0A
- D - I - 0x013183 10:B173: 38        .byte $38
- D - I - 0x013184 10:B174: 0C        .byte $0C
- D - I - 0x013185 10:B175: 02        .byte $02
- D - I - 0x013186 10:B176: 10        .byte $10
- D - I - 0x013187 10:B177: 40        .byte $40
- D - I - 0x013188 10:B178: 17        .byte $17
- D - I - 0x013189 10:B179: 70        .byte $70
- D - I - 0x01318A 10:B17A: A2        .byte $A2
- D - I - 0x01318B 10:B17B: 00        .byte $00
- D - I - 0x01318C 10:B17C: 64        .byte $64
- D - I - 0x01318D 10:B17D: 04        .byte $04
- D - I - 0x01318E 10:B17E: 6B        .byte $6B
- D - I - 0x01318F 10:B17F: 08        .byte $08
- D - I - 0x013190 10:B180: 39        .byte $39
- D - I - 0x013191 10:B181: 0C        .byte $0C
- D - I - 0x013192 10:B182: 3D        .byte $3D
- D - I - 0x013193 10:B183: 10        .byte $10
- D - I - 0x013194 10:B184: 41        .byte $41
- D - I - 0x013195 10:B185: 17        .byte $17
- D - I - 0x013196 10:B186: 71        .byte $71
- D - I - 0x013197 10:B187: A3        .byte $A3
- D - I - 0x013198 10:B188: 3F        .byte $3F
- D - I - 0x013199 10:B189: 58        .byte $58
- D - I - 0x01319A 10:B18A: 03        .byte $03
- D - I - 0x01319B 10:B18B: 65        .byte $65
- D - I - 0x01319C 10:B18C: 06        .byte $06
- D - I - 0x01319D 10:B18D: 6C        .byte $6C
- D - I - 0x01319E 10:B18E: 08        .byte $08
- D - I - 0x01319F 10:B18F: 3A        .byte $3A
- D - I - 0x0131A0 10:B190: A4        .byte $A4
- D - I - 0x0131A1 10:B191: 37        .byte $37
- D - I - 0x0131A2 10:B192: 5D        .byte $5D
- D - I - 0x0131A3 10:B193: 3B        .byte $3B
- D - I - 0x0131A4 10:B194: 5B        .byte $5B
- D - I - 0x0131A5 10:B195: 3F        .byte $3F
- D - I - 0x0131A6 10:B196: 59        .byte $59
- D - I - 0x0131A7 10:B197: 03        .byte $03
- D - I - 0x0131A8 10:B198: 66        .byte $66
- D - I - 0x0131A9 10:B199: A5        .byte $A5
- D - I - 0x0131AA 10:B19A: 37        .byte $37
- D - I - 0x0131AB 10:B19B: 5E        .byte $5E
- D - I - 0x0131AC 10:B19C: 3B        .byte $3B
- D - I - 0x0131AD 10:B19D: 5C        .byte $5C
- D - I - 0x0131AE 10:B19E: 3F        .byte $3F
- D - I - 0x0131AF 10:B19F: 5A        .byte $5A
- D - I - 0x0131B0 10:B1A0: FF        .byte con_FF


; bzk
- - - - - 0x0131B1 10:B1A1: 60        .byte $60
- - - - - 0x0131B2 10:B1A2: 61        .byte $61
- - - - - 0x0131B3 10:B1A3: 62        .byte $62
- - - - - 0x0131B4 10:B1A4: 63        .byte $63
- - - - - 0x0131B5 10:B1A5: BF        .byte $BF
- - - - - 0x0131B6 10:B1A6: 3A        .byte $3A
- - - - - 0x0131B7 10:B1A7: F9        .byte $F9
- - - - - 0x0131B8 10:B1A8: 3E        .byte $3E
- - - - - 0x0131B9 10:B1A9: FB        .byte $FB
- - - - - 0x0131BA 10:B1AA: 81        .byte $81
- - - - - 0x0131BB 10:B1AB: C0        .byte $C0
- - - - - 0x0131BC 10:B1AC: 38        .byte $38
- - - - - 0x0131BD 10:B1AD: EF        .byte $EF
- - - - - 0x0131BE 10:B1AE: C0        .byte $C0
- - - - - 0x0131BF 10:B1AF: 18        .byte $18
- - - - - 0x0131C0 10:B1B0: FA        .byte $FA
- - - - - 0x0131C1 10:B1B1: A0        .byte $A0
- - - - - 0x0131C2 10:B1B2: 36        .byte $36
- - - - - 0x0131C3 10:B1B3: 74        .byte $74
- - - - - 0x0131C4 10:B1B4: 3A        .byte $3A
- - - - - 0x0131C5 10:B1B5: 76        .byte $76
- - - - - 0x0131C6 10:B1B6: 3F        .byte $3F
- - - - - 0x0131C7 10:B1B7: 7C        .byte $7C
- - - - - 0x0131C8 10:B1B8: 02        .byte $02
- - - - - 0x0131C9 10:B1B9: 7E        .byte $7E
- - - - - 0x0131CA 10:B1BA: 07        .byte $07
- - - - - 0x0131CB 10:B1BB: 72        .byte $72
- - - - - 0x0131CC 10:B1BC: 0B        .byte $0B
- - - - - 0x0131CD 10:B1BD: 78        .byte $78
- - - - - 0x0131CE 10:B1BE: 0F        .byte $0F
- - - - - 0x0131CF 10:B1BF: 7A        .byte $7A
- - - - - 0x0131D0 10:B1C0: A1        .byte $A1
- - - - - 0x0131D1 10:B1C1: 36        .byte $36
- - - - - 0x0131D2 10:B1C2: 75        .byte $75
- - - - - 0x0131D3 10:B1C3: 3A        .byte $3A
- - - - - 0x0131D4 10:B1C4: 77        .byte $77
- - - - - 0x0131D5 10:B1C5: 3F        .byte $3F
- - - - - 0x0131D6 10:B1C6: 7D        .byte $7D
- - - - - 0x0131D7 10:B1C7: 00        .byte $00
- - - - - 0x0131D8 10:B1C8: 7F        .byte $7F
- - - - - 0x0131D9 10:B1C9: 07        .byte $07
- - - - - 0x0131DA 10:B1CA: 73        .byte $73
- - - - - 0x0131DB 10:B1CB: 0B        .byte $0B
- - - - - 0x0131DC 10:B1CC: 79        .byte $79
- - - - - 0x0131DD 10:B1CD: 0F        .byte $0F
- - - - - 0x0131DE 10:B1CE: 7B        .byte $7B
- - - - - 0x0131DF 10:B1CF: FF        .byte con_FF



off_B1D0:
- D - I - 0x0131E0 10:B1D0: 68        .byte $68
- D - I - 0x0131E1 10:B1D1: 69        .byte $69
- D - I - 0x0131E2 10:B1D2: 6A        .byte $6A
- D - I - 0x0131E3 10:B1D3: 6B        .byte $6B
- D - I - 0x0131E4 10:B1D4: BF        .byte $BF
- D - I - 0x0131E5 10:B1D5: 3E        .byte $3E
- D - I - 0x0131E6 10:B1D6: 60        .byte $60
- D - I - 0x0131E7 10:B1D7: A0        .byte $A0
- D - I - 0x0131E8 10:B1D8: 3E        .byte $3E
- D - I - 0x0131E9 10:B1D9: 61        .byte $61
- D - I - 0x0131EA 10:B1DA: 06        .byte $06
- D - I - 0x0131EB 10:B1DB: 18        .byte $18
- D - I - 0x0131EC 10:B1DC: 0A        .byte $0A
- D - I - 0x0131ED 10:B1DD: 1A        .byte $1A
- D - I - 0x0131EE 10:B1DE: A1        .byte $A1
- D - I - 0x0131EF 10:B1DF: 3E        .byte $3E
- D - I - 0x0131F0 10:B1E0: 64        .byte $64
- D - I - 0x0131F1 10:B1E1: FA        .byte con_jsr
- D - I - 0x0131F2 10:B1E2: A0 B9     .word off_B9A0
- D - I - 0x0131F4 10:B1E4: FB        .byte con_jmp
- D - I - 0x0131F5 10:B1E5: F4 B9     .word off_B9F4



off_B1E7:
- D - I - 0x0131F7 10:B1E7: 68        .byte $68
- D - I - 0x0131F8 10:B1E8: 69        .byte $69
- D - I - 0x0131F9 10:B1E9: 6A        .byte $6A
- D - I - 0x0131FA 10:B1EA: 6B        .byte $6B
- D - I - 0x0131FB 10:B1EB: BF        .byte $BF
- D - I - 0x0131FC 10:B1EC: 3E        .byte $3E
- D - I - 0x0131FD 10:B1ED: 60        .byte $60
- D - I - 0x0131FE 10:B1EE: A0        .byte $A0
- D - I - 0x0131FF 10:B1EF: 3E        .byte $3E
- D - I - 0x013200 10:B1F0: 61        .byte $61
- D - I - 0x013201 10:B1F1: 06        .byte $06
- D - I - 0x013202 10:B1F2: 49        .byte $49
- D - I - 0x013203 10:B1F3: 07        .byte $07
- D - I - 0x013204 10:B1F4: 02        .byte $02
- D - I - 0x013205 10:B1F5: 0A        .byte $0A
- D - I - 0x013206 10:B1F6: 1A        .byte $1A
- D - I - 0x013207 10:B1F7: A1        .byte $A1
- D - I - 0x013208 10:B1F8: 3E        .byte $3E
- D - I - 0x013209 10:B1F9: 64        .byte $64
- D - I - 0x01320A 10:B1FA: FA        .byte con_jsr
- D - I - 0x01320B 10:B1FB: A0 B9     .word off_B9A0
- D - I - 0x01320D 10:B1FD: FB        .byte con_jmp
- D - I - 0x01320E 10:B1FE: F4 B9     .word off_B9F4



off_B200:
- D - I - 0x013210 10:B200: 68        .byte $68
- D - I - 0x013211 10:B201: 69        .byte $69
- D - I - 0x013212 10:B202: 6A        .byte $6A
- D - I - 0x013213 10:B203: 6B        .byte $6B
- D - I - 0x013214 10:B204: BF        .byte $BF
- D - I - 0x013215 10:B205: 3E        .byte $3E
- D - I - 0x013216 10:B206: 5A        .byte $5A
- D - I - 0x013217 10:B207: A0        .byte $A0
- D - I - 0x013218 10:B208: 3E        .byte $3E
- D - I - 0x013219 10:B209: 5B        .byte $5B
- D - I - 0x01321A 10:B20A: 06        .byte $06
- D - I - 0x01321B 10:B20B: 69        .byte $69
- D - I - 0x01321C 10:B20C: 07        .byte $07
- D - I - 0x01321D 10:B20D: 02        .byte $02
- D - I - 0x01321E 10:B20E: 0A        .byte $0A
- D - I - 0x01321F 10:B20F: 6B        .byte $6B
- D - I - 0x013220 10:B210: A1        .byte $A1
- D - I - 0x013221 10:B211: 3E        .byte $3E
- D - I - 0x013222 10:B212: 5E        .byte $5E
- D - I - 0x013223 10:B213: FA        .byte con_jsr
- D - I - 0x013224 10:B214: A0 B9     .word off_B9A0
- D - I - 0x013226 10:B216: FB        .byte con_jmp
- D - I - 0x013227 10:B217: F4 B9     .word off_B9F4



off_B219:
- D - I - 0x013229 10:B219: 74        .byte $74
- D - I - 0x01322A 10:B21A: 75        .byte $75
- D - I - 0x01322B 10:B21B: 76        .byte $76
- D - I - 0x01322C 10:B21C: 77        .byte $77
- D - I - 0x01322D 10:B21D: BE        .byte $BE
- D - I - 0x01322E 10:B21E: 38        .byte $38
- D - I - 0x01322F 10:B21F: B8        .byte $B8
- D - I - 0x013230 10:B220: BF        .byte $BF
- D - I - 0x013231 10:B221: 3C        .byte $3C
- D - I - 0x013232 10:B222: BB        .byte $BB
- D - I - 0x013233 10:B223: 03        .byte $03
- D - I - 0x013234 10:B224: D7        .byte $D7
- D - I - 0x013235 10:B225: A0        .byte $A0
- D - I - 0x013236 10:B226: 38        .byte $38
- D - I - 0x013237 10:B227: BC        .byte $BC
- D - I - 0x013238 10:B228: FA        .byte con_jsr
- D - I - 0x013239 10:B229: BD B7     .word off_B7BD
- D - I - 0x01323B 10:B22B: FB        .byte con_jmp
- D - I - 0x01323C 10:B22C: 6A B7     .word off_B76A



off_B22E:
- D - I - 0x01323E 10:B22E: 68        .byte $68
- D - I - 0x01323F 10:B22F: 69        .byte $69
- D - I - 0x013240 10:B230: 6A        .byte $6A
- D - I - 0x013241 10:B231: 6B        .byte $6B
- D - I - 0x013242 10:B232: BE        .byte $BE
- D - I - 0x013243 10:B233: 36        .byte $36
- D - I - 0x013244 10:B234: 54        .byte $54
- D - I - 0x013245 10:B235: 3A        .byte $3A
- D - I - 0x013246 10:B236: 50        .byte $50
- D - I - 0x013247 10:B237: 3E        .byte $3E
- D - I - 0x013248 10:B238: 51        .byte $51
- D - I - 0x013249 10:B239: BF        .byte $BF
- D - I - 0x01324A 10:B23A: 36        .byte $36
- D - I - 0x01324B 10:B23B: 55        .byte $55
- D - I - 0x01324C 10:B23C: 3A        .byte $3A
- D - I - 0x01324D 10:B23D: 01        .byte $01
- D - I - 0x01324E 10:B23E: 3E        .byte $3E
- D - I - 0x01324F 10:B23F: 78        .byte $78
- D - I - 0x013250 10:B240: 3F        .byte $3F
- D - I - 0x013251 10:B241: 02        .byte $02
- D - I - 0x013252 10:B242: 02        .byte $02
- D - I - 0x013253 10:B243: 53        .byte $53
- D - I - 0x013254 10:B244: 03        .byte $03
- D - I - 0x013255 10:B245: 5D        .byte $5D
- D - I - 0x013256 10:B246: A0        .byte $A0
- D - I - 0x013257 10:B247: 36        .byte $36
- D - I - 0x013258 10:B248: 01        .byte $01
- D - I - 0x013259 10:B249: 3A        .byte $3A
- D - I - 0x01325A 10:B24A: 01        .byte $01
- D - I - 0x01325B 10:B24B: 3E        .byte $3E
- D - I - 0x01325C 10:B24C: 01        .byte $01
- D - I - 0x01325D 10:B24D: 02        .byte $02
- D - I - 0x01325E 10:B24E: 56        .byte $56
- D - I - 0x01325F 10:B24F: 06        .byte $06
- D - I - 0x013260 10:B250: 18        .byte $18
- D - I - 0x013261 10:B251: A1        .byte $A1
- D - I - 0x013262 10:B252: 36        .byte $36
- D - I - 0x013263 10:B253: 01        .byte $01
- D - I - 0x013264 10:B254: 3A        .byte $3A
- D - I - 0x013265 10:B255: 01        .byte $01
- D - I - 0x013266 10:B256: 3E        .byte $3E
- D - I - 0x013267 10:B257: 01        .byte $01
- D - I - 0x013268 10:B258: 02        .byte $02
- D - I - 0x013269 10:B259: 57        .byte $57
- D - I - 0x01326A 10:B25A: A2        .byte $A2
- D - I - 0x01326B 10:B25B: 36        .byte $36
- D - I - 0x01326C 10:B25C: 35        .byte $35
- D - I - 0x01326D 10:B25D: 3A        .byte $3A
- D - I - 0x01326E 10:B25E: 37        .byte $37
- D - I - 0x01326F 10:B25F: 3E        .byte $3E
- D - I - 0x013270 10:B260: 01        .byte $01
- D - I - 0x013271 10:B261: FB        .byte con_jmp
- D - I - 0x013272 10:B262: D2 B9     .word off_B9D2



off_B264:
- D - I - 0x013274 10:B264: 70        .byte $70
- D - I - 0x013275 10:B265: 71        .byte $71
- D - I - 0x013276 10:B266: 72        .byte $72
- D - I - 0x013277 10:B267: 73        .byte $73
- D - I - 0x013278 10:B268: BF        .byte $BF
- D - I - 0x013279 10:B269: 3C        .byte $3C
- D - I - 0x01327A 10:B26A: 94        .byte $94
- D - I - 0x01327B 10:B26B: 02        .byte $02
- D - I - 0x01327C 10:B26C: 96        .byte $96
- D - I - 0x01327D 10:B26D: A0        .byte $A0
- D - I - 0x01327E 10:B26E: 3C        .byte $3C
- D - I - 0x01327F 10:B26F: C8        .byte $C8
- D - I - 0x013280 10:B270: 07        .byte $07
- D - I - 0x013281 10:B271: A6        .byte $A6
- D - I - 0x013282 10:B272: A1        .byte $A1
- D - I - 0x013283 10:B273: 3C        .byte $3C
- D - I - 0x013284 10:B274: 95        .byte $95
- D - I - 0x013285 10:B275: 02        .byte $02
- D - I - 0x013286 10:B276: 97        .byte $97
- D - I - 0x013287 10:B277: FB        .byte con_jmp
- D - I - 0x013288 10:B278: F6 B6     .word off_B6F6



off_B27A:
- D - I - 0x01328A 10:B27A: 70        .byte $70
- D - I - 0x01328B 10:B27B: 71        .byte $71
- D - I - 0x01328C 10:B27C: 72        .byte $72
- D - I - 0x01328D 10:B27D: 73        .byte $73
- D - I - 0x01328E 10:B27E: BF        .byte $BF
- D - I - 0x01328F 10:B27F: 3F        .byte $3F
- D - I - 0x013290 10:B280: 9E        .byte $9E
- D - I - 0x013291 10:B281: 03        .byte $03
- D - I - 0x013292 10:B282: A1        .byte $A1
- D - I - 0x013293 10:B283: 02        .byte $02
- D - I - 0x013294 10:B284: 93        .byte $93
- D - I - 0x013295 10:B285: A0        .byte $A0
- D - I - 0x013296 10:B286: 3C        .byte $3C
- D - I - 0x013297 10:B287: B6        .byte $B6
- D - I - 0x013298 10:B288: 04        .byte $04
- D - I - 0x013299 10:B289: A2        .byte $A2
- D - I - 0x01329A 10:B28A: A1        .byte $A1
- D - I - 0x01329B 10:B28B: 3F        .byte $3F
- D - I - 0x01329C 10:B28C: 9F        .byte $9F
- D - I - 0x01329D 10:B28D: 03        .byte $03
- D - I - 0x01329E 10:B28E: A5        .byte $A5
- D - I - 0x01329F 10:B28F: FB        .byte con_jmp
- D - I - 0x0132A0 10:B290: F6 B6     .word off_B6F6



off_B292:
- D - I - 0x0132A2 10:B292: 68        .byte $68
- D - I - 0x0132A3 10:B293: 69        .byte $69
- D - I - 0x0132A4 10:B294: 6A        .byte $6A
- D - I - 0x0132A5 10:B295: 6B        .byte $6B
- D - I - 0x0132A6 10:B296: BF        .byte $BF
- D - I - 0x0132A7 10:B297: 3E        .byte $3E
- D - I - 0x0132A8 10:B298: 05        .byte $05
- D - I - 0x0132A9 10:B299: A0        .byte $A0
- D - I - 0x0132AA 10:B29A: 3E        .byte $3E
- D - I - 0x0132AB 10:B29B: 10        .byte $10
- D - I - 0x0132AC 10:B29C: 06        .byte $06
- D - I - 0x0132AD 10:B29D: 18        .byte $18
- D - I - 0x0132AE 10:B29E: A1        .byte $A1
- D - I - 0x0132AF 10:B29F: 3E        .byte $3E
- D - I - 0x0132B0 10:B2A0: 11        .byte $11
- D - I - 0x0132B1 10:B2A1: 02        .byte $02
- D - I - 0x0132B2 10:B2A2: 13        .byte $13
- D - I - 0x0132B3 10:B2A3: 03        .byte $03
- D - I - 0x0132B4 10:B2A4: 31        .byte $31
- D - I - 0x0132B5 10:B2A5: FB        .byte con_jmp
- D - I - 0x0132B6 10:B2A6: 47 B9     .word off_B947



off_B2A8:
- D - I - 0x0132B8 10:B2A8: 68        .byte $68
- D - I - 0x0132B9 10:B2A9: 69        .byte $69
- D - I - 0x0132BA 10:B2AA: 6A        .byte $6A
- D - I - 0x0132BB 10:B2AB: 6B        .byte $6B
- D - I - 0x0132BC 10:B2AC: BF        .byte $BF
- D - I - 0x0132BD 10:B2AD: 3E        .byte $3E
- D - I - 0x0132BE 10:B2AE: 29        .byte $29
- D - I - 0x0132BF 10:B2AF: A0        .byte $A0
- D - I - 0x0132C0 10:B2B0: 3E        .byte $3E
- D - I - 0x0132C1 10:B2B1: 2C        .byte $2C
- D - I - 0x0132C2 10:B2B2: 06        .byte $06
- D - I - 0x0132C3 10:B2B3: 2B        .byte $2B
- D - I - 0x0132C4 10:B2B4: 07        .byte $07
- D - I - 0x0132C5 10:B2B5: 02        .byte $02
- D - I - 0x0132C6 10:B2B6: A1        .byte $A1
- D - I - 0x0132C7 10:B2B7: 3E        .byte $3E
- D - I - 0x0132C8 10:B2B8: 2D        .byte $2D
- D - I - 0x0132C9 10:B2B9: 02        .byte $02
- D - I - 0x0132CA 10:B2BA: 2E        .byte $2E
- D - I - 0x0132CB 10:B2BB: 03        .byte $03
- D - I - 0x0132CC 10:B2BC: 31        .byte $31
- D - I - 0x0132CD 10:B2BD: FB        .byte con_jmp
- D - I - 0x0132CE 10:B2BE: 47 B9     .word off_B947



off_B2C0:
- D - I - 0x0132D0 10:B2C0: 68        .byte $68
- D - I - 0x0132D1 10:B2C1: 69        .byte $69
- D - I - 0x0132D2 10:B2C2: 6A        .byte $6A
- D - I - 0x0132D3 10:B2C3: 6B        .byte $6B
- D - I - 0x0132D4 10:B2C4: A0        .byte $A0
- D - I - 0x0132D5 10:B2C5: 06        .byte $06
- D - I - 0x0132D6 10:B2C6: 18        .byte $18
- D - I - 0x0132D7 10:B2C7: FA        .byte con_jsr
- D - I - 0x0132D8 10:B2C8: A0 B9     .word off_B9A0
- D - I - 0x0132DA 10:B2CA: FB        .byte con_jmp
- D - I - 0x0132DB 10:B2CB: AB B9     .word off_B9AB



off_B2CD:
- D - I - 0x0132DD 10:B2CD: 68        .byte $68
- D - I - 0x0132DE 10:B2CE: 69        .byte $69
- D - I - 0x0132DF 10:B2CF: 6A        .byte $6A
- D - I - 0x0132E0 10:B2D0: 6B        .byte $6B
- D - I - 0x0132E1 10:B2D1: A0        .byte $A0
- D - I - 0x0132E2 10:B2D2: 06        .byte $06
- D - I - 0x0132E3 10:B2D3: 49        .byte $49
- D - I - 0x0132E4 10:B2D4: FA        .byte con_jsr
- D - I - 0x0132E5 10:B2D5: A0 B9     .word off_B9A0
- D - I - 0x0132E7 10:B2D7: FB        .byte con_jmp
- D - I - 0x0132E8 10:B2D8: AB B9     .word off_B9AB



off_B2DA:
- D - I - 0x0132EA 10:B2DA: 68        .byte $68
- D - I - 0x0132EB 10:B2DB: 69        .byte $69
- D - I - 0x0132EC 10:B2DC: 6A        .byte $6A
- D - I - 0x0132ED 10:B2DD: 6B        .byte $6B
- D - I - 0x0132EE 10:B2DE: BE        .byte $BE
- D - I - 0x0132EF 10:B2DF: 36        .byte $36
- D - I - 0x0132F0 10:B2E0: 54        .byte $54
- D - I - 0x0132F1 10:B2E1: 3A        .byte $3A
- D - I - 0x0132F2 10:B2E2: 50        .byte $50
- D - I - 0x0132F3 10:B2E3: 3E        .byte $3E
- D - I - 0x0132F4 10:B2E4: 51        .byte $51
- D - I - 0x0132F5 10:B2E5: BF        .byte $BF
- D - I - 0x0132F6 10:B2E6: 36        .byte $36
- D - I - 0x0132F7 10:B2E7: 55        .byte $55
- D - I - 0x0132F8 10:B2E8: 3A        .byte $3A
- D - I - 0x0132F9 10:B2E9: 01        .byte $01
- D - I - 0x0132FA 10:B2EA: 3E        .byte $3E
- D - I - 0x0132FB 10:B2EB: 78        .byte $78
- D - I - 0x0132FC 10:B2EC: 3F        .byte $3F
- D - I - 0x0132FD 10:B2ED: 02        .byte $02
- D - I - 0x0132FE 10:B2EE: 02        .byte $02
- D - I - 0x0132FF 10:B2EF: 53        .byte $53
- D - I - 0x013300 10:B2F0: 03        .byte $03
- D - I - 0x013301 10:B2F1: 5D        .byte $5D
- D - I - 0x013302 10:B2F2: A0        .byte $A0
- D - I - 0x013303 10:B2F3: 36        .byte $36
- D - I - 0x013304 10:B2F4: 01        .byte $01
- D - I - 0x013305 10:B2F5: 3A        .byte $3A
- D - I - 0x013306 10:B2F6: 01        .byte $01
- D - I - 0x013307 10:B2F7: 3E        .byte $3E
- D - I - 0x013308 10:B2F8: 01        .byte $01
- D - I - 0x013309 10:B2F9: 02        .byte $02
- D - I - 0x01330A 10:B2FA: 56        .byte $56
- D - I - 0x01330B 10:B2FB: 06        .byte $06
- D - I - 0x01330C 10:B2FC: 49        .byte $49
- D - I - 0x01330D 10:B2FD: A1        .byte $A1
- D - I - 0x01330E 10:B2FE: 36        .byte $36
- D - I - 0x01330F 10:B2FF: 01        .byte $01
- D - I - 0x013310 10:B300: 3A        .byte $3A
- D - I - 0x013311 10:B301: 01        .byte $01
- D - I - 0x013312 10:B302: 3E        .byte $3E
- D - I - 0x013313 10:B303: 01        .byte $01
- D - I - 0x013314 10:B304: 02        .byte $02
- D - I - 0x013315 10:B305: 57        .byte $57
- D - I - 0x013316 10:B306: A2        .byte $A2
- D - I - 0x013317 10:B307: 36        .byte $36
- D - I - 0x013318 10:B308: 35        .byte $35
- D - I - 0x013319 10:B309: 3A        .byte $3A
- D - I - 0x01331A 10:B30A: 37        .byte $37
- D - I - 0x01331B 10:B30B: 3E        .byte $3E
- D - I - 0x01331C 10:B30C: 01        .byte $01
- D - I - 0x01331D 10:B30D: FB        .byte con_jmp
- D - I - 0x01331E 10:B30E: D2 B9     .word off_B9D2



off_B310:
- D - I - 0x013320 10:B310: 78        .byte $78
- D - I - 0x013321 10:B311: 79        .byte $79
- D - I - 0x013322 10:B312: 7A        .byte $7A
- D - I - 0x013323 10:B313: 7B        .byte $7B
- D - I - 0x013324 10:B314: BE        .byte $BE
- D - I - 0x013325 10:B315: 3B        .byte $3B
- D - I - 0x013326 10:B316: 68        .byte $68
- D - I - 0x013327 10:B317: 3F        .byte $3F
- D - I - 0x013328 10:B318: 6A        .byte $6A
- D - I - 0x013329 10:B319: BF        .byte $BF
- D - I - 0x01332A 10:B31A: 38        .byte $38
- D - I - 0x01332B 10:B31B: 69        .byte $69
- D - I - 0x01332C 10:B31C: 3C        .byte $3C
- D - I - 0x01332D 10:B31D: 6B        .byte $6B
- D - I - 0x01332E 10:B31E: 00        .byte $00
- D - I - 0x01332F 10:B31F: 6F        .byte $6F
- D - I - 0x013330 10:B320: A0        .byte $A0
- D - I - 0x013331 10:B321: 3B        .byte $3B
- D - I - 0x013332 10:B322: 6C        .byte $6C
- D - I - 0x013333 10:B323: 3F        .byte $3F
- D - I - 0x013334 10:B324: 6E        .byte $6E
- D - I - 0x013335 10:B325: FB        .byte con_jmp
- D - I - 0x013336 10:B326: 8D B8     .word off_B88D


; bzk
- - - - - 0x013338 10:B328: 78        .byte $78
- - - - - 0x013339 10:B329: 79        .byte $79
- - - - - 0x01333A 10:B32A: 7A        .byte $7A
- - - - - 0x01333B 10:B32B: 7B        .byte $7B
- - - - - 0x01333C 10:B32C: BE        .byte $BE
- - - - - 0x01333D 10:B32D: 3B        .byte $3B
- - - - - 0x01333E 10:B32E: 4E        .byte $4E
- - - - - 0x01333F 10:B32F: 3F        .byte $3F
- - - - - 0x013340 10:B330: 6A        .byte $6A
- - - - - 0x013341 10:B331: BF        .byte $BF
- - - - - 0x013342 10:B332: 38        .byte $38
- - - - - 0x013343 10:B333: 44        .byte $44
- - - - - 0x013344 10:B334: 3C        .byte $3C
- - - - - 0x013345 10:B335: 6B        .byte $6B
- - - - - 0x013346 10:B336: 03        .byte $03
- - - - - 0x013347 10:B337: 71        .byte $71
- - - - - 0x013348 10:B338: A0        .byte $A0
- - - - - 0x013349 10:B339: 3B        .byte $3B
- - - - - 0x01334A 10:B33A: 4F        .byte $4F
- - - - - 0x01334B 10:B33B: 3F        .byte $3F
- - - - - 0x01334C 10:B33C: 6E        .byte $6E
- - - - - 0x01334D 10:B33D: FB        .byte con_jmp
- - - - - 0x01334E 10:B33E: 8D B8     .word off_B88D



off_B340:
- D - I - 0x013350 10:B340: 78        .byte $78
- D - I - 0x013351 10:B341: 79        .byte $79
- D - I - 0x013352 10:B342: 7A        .byte $7A
- D - I - 0x013353 10:B343: 7B        .byte $7B
- D - I - 0x013354 10:B344: BE        .byte $BE
- D - I - 0x013355 10:B345: 3B        .byte $3B
- D - I - 0x013356 10:B346: 0E        .byte $0E
- D - I - 0x013357 10:B347: 3B        .byte $3B
- D - I - 0x013358 10:B348: 4E        .byte $4E
- D - I - 0x013359 10:B349: 3F        .byte $3F
- D - I - 0x01335A 10:B34A: 26        .byte $26
- D - I - 0x01335B 10:B34B: 3F        .byte $3F
- D - I - 0x01335C 10:B34C: 6A        .byte $6A
- D - I - 0x01335D 10:B34D: BF        .byte $BF
- D - I - 0x01335E 10:B34E: 3B        .byte $3B
- D - I - 0x01335F 10:B34F: 0F        .byte $0F
- D - I - 0x013360 10:B350: 38        .byte $38
- D - I - 0x013361 10:B351: 44        .byte $44
- D - I - 0x013362 10:B352: 3F        .byte $3F
- D - I - 0x013363 10:B353: 27        .byte $27
- D - I - 0x013364 10:B354: 3C        .byte $3C
- D - I - 0x013365 10:B355: 6B        .byte $6B
- D - I - 0x013366 10:B356: 03        .byte $03
- D - I - 0x013367 10:B357: 71        .byte $71
- D - I - 0x013368 10:B358: A0        .byte $A0
- D - I - 0x013369 10:B359: 3B        .byte $3B
- D - I - 0x01336A 10:B35A: 25        .byte $25
- D - I - 0x01336B 10:B35B: 3B        .byte $3B
- D - I - 0x01336C 10:B35C: 4F        .byte $4F
- D - I - 0x01336D 10:B35D: 3F        .byte $3F
- D - I - 0x01336E 10:B35E: 13        .byte $13
- D - I - 0x01336F 10:B35F: 3F        .byte $3F
- D - I - 0x013370 10:B360: 6E        .byte $6E
- D - I - 0x013371 10:B361: FB        .byte con_jmp
- D - I - 0x013372 10:B362: 8D B8     .word off_B88D



off_B364:
- D - I - 0x013374 10:B364: 70        .byte $70
- D - I - 0x013375 10:B365: 71        .byte $71
- D - I - 0x013376 10:B366: 66        .byte $66
- D - I - 0x013377 10:B367: 67        .byte $67
- D - I - 0x013378 10:B368: BE        .byte $BE
- D - I - 0x013379 10:B369: 3F        .byte $3F
- D - I - 0x01337A 10:B36A: 06        .byte $06
- D - I - 0x01337B 10:B36B: BF        .byte $BF
- D - I - 0x01337C 10:B36C: 3C        .byte $3C
- D - I - 0x01337D 10:B36D: 07        .byte $07
- D - I - 0x01337E 10:B36E: 00        .byte $00
- D - I - 0x01337F 10:B36F: 0D        .byte $0D
- D - I - 0x013380 10:B370: 04        .byte $04
- D - I - 0x013381 10:B371: 0A        .byte $0A
- D - I - 0x013382 10:B372: A0        .byte $A0
- D - I - 0x013383 10:B373: 3F        .byte $3F
- D - I - 0x013384 10:B374: 12        .byte $12
- D - I - 0x013385 10:B375: FB        .byte con_jmp
- D - I - 0x013386 10:B376: D4 B4     .word off_B4D4



off_B378:
- D - I - 0x013388 10:B378: 78        .byte $78
- D - I - 0x013389 10:B379: 79        .byte $79
- D - I - 0x01338A 10:B37A: 7A        .byte $7A
- D - I - 0x01338B 10:B37B: 7B        .byte $7B
- D - I - 0x01338C 10:B37C: BE        .byte $BE
- D - I - 0x01338D 10:B37D: 3B        .byte $3B
- D - I - 0x01338E 10:B37E: 15        .byte $15
- D - I - 0x01338F 10:B37F: 3F        .byte $3F
- D - I - 0x013390 10:B380: 1D        .byte $1D
- D - I - 0x013391 10:B381: 03        .byte $03
- D - I - 0x013392 10:B382: 35        .byte $35
- D - I - 0x013393 10:B383: BF        .byte $BF
- D - I - 0x013394 10:B384: 3B        .byte $3B
- D - I - 0x013395 10:B385: 16        .byte $16
- D - I - 0x013396 10:B386: 3F        .byte $3F
- D - I - 0x013397 10:B387: 1E        .byte $1E
- D - I - 0x013398 10:B388: 00        .byte $00
- D - I - 0x013399 10:B389: E8        .byte $E8
- D - I - 0x01339A 10:B38A: A0        .byte $A0
- D - I - 0x01339B 10:B38B: 3B        .byte $3B
- D - I - 0x01339C 10:B38C: 17        .byte $17
- D - I - 0x01339D 10:B38D: 3F        .byte $3F
- D - I - 0x01339E 10:B38E: 1F        .byte $1F
- D - I - 0x01339F 10:B38F: 00        .byte $00
- D - I - 0x0133A0 10:B390: 40        .byte $40
- D - I - 0x0133A1 10:B391: A1        .byte $A1
- D - I - 0x0133A2 10:B392: 3C        .byte $3C
- D - I - 0x0133A3 10:B393: 34        .byte $34
- D - I - 0x0133A4 10:B394: 00        .byte $00
- D - I - 0x0133A5 10:B395: 41        .byte $41
- D - I - 0x0133A6 10:B396: FB        .byte con_jmp
- D - I - 0x0133A7 10:B397: DC B8     .word off_B8DC



off_B399:
- D - I - 0x0133A9 10:B399: 78        .byte $78
- D - I - 0x0133AA 10:B39A: 79        .byte $79
- D - I - 0x0133AB 10:B39B: 7A        .byte $7A
- D - I - 0x0133AC 10:B39C: 7B        .byte $7B
- D - I - 0x0133AD 10:B39D: BD        .byte $BD
- D - I - 0x0133AE 10:B39E: 36        .byte $36
- D - I - 0x0133AF 10:B39F: 55        .byte $55
- D - I - 0x0133B0 10:B3A0: 3A        .byte $3A
- D - I - 0x0133B1 10:B3A1: 52        .byte $52
- D - I - 0x0133B2 10:B3A2: BE        .byte $BE
- D - I - 0x0133B3 10:B3A3: 32        .byte $32
- D - I - 0x0133B4 10:B3A4: 45        .byte $45
- D - I - 0x0133B5 10:B3A5: 36        .byte $36
- D - I - 0x0133B6 10:B3A6: 42        .byte $42
- D - I - 0x0133B7 10:B3A7: 3B        .byte $3B
- D - I - 0x0133B8 10:B3A8: 53        .byte $53
- D - I - 0x0133B9 10:B3A9: 3F        .byte $3F
- D - I - 0x0133BA 10:B3AA: 49        .byte $49
- D - I - 0x0133BB 10:B3AB: 03        .byte $03
- D - I - 0x0133BC 10:B3AC: 59        .byte $59
- D - I - 0x0133BD 10:B3AD: BF        .byte $BF
- D - I - 0x0133BE 10:B3AE: 32        .byte $32
- D - I - 0x0133BF 10:B3AF: 50        .byte $50
- D - I - 0x0133C0 10:B3B0: 36        .byte $36
- D - I - 0x0133C1 10:B3B1: 43        .byte $43
- D - I - 0x0133C2 10:B3B2: 3B        .byte $3B
- D - I - 0x0133C3 10:B3B3: 56        .byte $56
- D - I - 0x0133C4 10:B3B4: 3F        .byte $3F
- D - I - 0x0133C5 10:B3B5: 4C        .byte $4C
- D - I - 0x0133C6 10:B3B6: 00        .byte $00
- D - I - 0x0133C7 10:B3B7: FD        .byte $FD
- D - I - 0x0133C8 10:B3B8: 04        .byte $04
- D - I - 0x0133C9 10:B3B9: 4B        .byte $4B
- D - I - 0x0133CA 10:B3BA: 05        .byte $05
- D - I - 0x0133CB 10:B3BB: 33        .byte $33
- D - I - 0x0133CC 10:B3BC: A0        .byte $A0
- D - I - 0x0133CD 10:B3BD: 32        .byte $32
- D - I - 0x0133CE 10:B3BE: 51        .byte $51
- D - I - 0x0133CF 10:B3BF: 36        .byte $36
- D - I - 0x0133D0 10:B3C0: 46        .byte $46
- D - I - 0x0133D1 10:B3C1: 3B        .byte $3B
- D - I - 0x0133D2 10:B3C2: 57        .byte $57
- D - I - 0x0133D3 10:B3C3: 3F        .byte $3F
- D - I - 0x0133D4 10:B3C4: 4D        .byte $4D
- D - I - 0x0133D5 10:B3C5: 00        .byte $00
- D - I - 0x0133D6 10:B3C6: 5D        .byte $5D
- D - I - 0x0133D7 10:B3C7: 04        .byte $04
- D - I - 0x0133D8 10:B3C8: 3F        .byte $3F
- D - I - 0x0133D9 10:B3C9: 05        .byte $05
- D - I - 0x0133DA 10:B3CA: 28        .byte $28
- D - I - 0x0133DB 10:B3CB: A1        .byte $A1
- D - I - 0x0133DC 10:B3CC: 32        .byte $32
- D - I - 0x0133DD 10:B3CD: 54        .byte $54
- D - I - 0x0133DE 10:B3CE: 37        .byte $37
- D - I - 0x0133DF 10:B3CF: 47        .byte $47
- D - I - 0x0133E0 10:B3D0: 38        .byte $38
- D - I - 0x0133E1 10:B3D1: 48        .byte $48
- D - I - 0x0133E2 10:B3D2: 3C        .byte $3C
- D - I - 0x0133E3 10:B3D3: 58        .byte $58
- D - I - 0x0133E4 10:B3D4: 00        .byte $00
- D - I - 0x0133E5 10:B3D5: 4A        .byte $4A
- D - I - 0x0133E6 10:B3D6: FB        .byte con_jmp
- D - I - 0x0133E7 10:B3D7: FF B8     .word off_B8FF



off_B3D9:
- D - I - 0x0133E9 10:B3D9: 70        .byte $70
- D - I - 0x0133EA 10:B3DA: 71        .byte $71
- D - I - 0x0133EB 10:B3DB: 72        .byte $72
- D - I - 0x0133EC 10:B3DC: 73        .byte $73
- D - I - 0x0133ED 10:B3DD: BF        .byte $BF
- D - I - 0x0133EE 10:B3DE: 3F        .byte $3F
- D - I - 0x0133EF 10:B3DF: 8B        .byte $8B
- D - I - 0x0133F0 10:B3E0: 03        .byte $03
- D - I - 0x0133F1 10:B3E1: A1        .byte $A1
- D - I - 0x0133F2 10:B3E2: 02        .byte $02
- D - I - 0x0133F3 10:B3E3: 93        .byte $93
- D - I - 0x0133F4 10:B3E4: A0        .byte $A0
- D - I - 0x0133F5 10:B3E5: 3C        .byte $3C
- D - I - 0x0133F6 10:B3E6: B6        .byte $B6
- D - I - 0x0133F7 10:B3E7: 04        .byte $04
- D - I - 0x0133F8 10:B3E8: A2        .byte $A2
- D - I - 0x0133F9 10:B3E9: A1        .byte $A1
- D - I - 0x0133FA 10:B3EA: 3F        .byte $3F
- D - I - 0x0133FB 10:B3EB: 8F        .byte $8F
- D - I - 0x0133FC 10:B3EC: 03        .byte $03
- D - I - 0x0133FD 10:B3ED: A5        .byte $A5
- D - I - 0x0133FE 10:B3EE: FB        .byte con_jmp
- D - I - 0x0133FF 10:B3EF: F6 B6     .word off_B6F6



off_B3F1:
- D - I - 0x013401 10:B3F1: 78        .byte $78
- D - I - 0x013402 10:B3F2: 79        .byte $79
- D - I - 0x013403 10:B3F3: 7A        .byte $7A
- D - I - 0x013404 10:B3F4: 7B        .byte $7B
- D - I - 0x013405 10:B3F5: BF        .byte $BF
- D - I - 0x013406 10:B3F6: 3A        .byte $3A
- D - I - 0x013407 10:B3F7: 93        .byte $93
- D - I - 0x013408 10:B3F8: 3F        .byte $3F
- D - I - 0x013409 10:B3F9: 99        .byte $99
- D - I - 0x01340A 10:B3FA: 3C        .byte $3C
- D - I - 0x01340B 10:B3FB: 3C        .byte $3C
- D - I - 0x01340C 10:B3FC: A0        .byte $A0
- D - I - 0x01340D 10:B3FD: 3C        .byte $3C
- D - I - 0x01340E 10:B3FE: 9C        .byte $9C
- D - I - 0x01340F 10:B3FF: 03        .byte $03
- D - I - 0x013410 10:B400: E9        .byte $E9
- D - I - 0x013411 10:B401: 04        .byte $04
- D - I - 0x013412 10:B402: EB        .byte $EB
- D - I - 0x013413 10:B403: A1        .byte $A1
- D - I - 0x013414 10:B404: 3A        .byte $3A
- D - I - 0x013415 10:B405: 97        .byte $97
- D - I - 0x013416 10:B406: 3F        .byte $3F
- D - I - 0x013417 10:B407: 9D        .byte $9D
- D - I - 0x013418 10:B408: 3C        .byte $3C
- D - I - 0x013419 10:B409: 3C        .byte $3C
- D - I - 0x01341A 10:B40A: FB        .byte con_jmp
- D - I - 0x01341B 10:B40B: 5B B8     .word off_B85B



off_B40D:
- D - I - 0x01341D 10:B40D: 70        .byte $70
- D - I - 0x01341E 10:B40E: 71        .byte $71
- D - I - 0x01341F 10:B40F: 72        .byte $72
- D - I - 0x013420 10:B410: 73        .byte $73
- D - I - 0x013421 10:B411: BE        .byte $BE
- D - I - 0x013422 10:B412: 3F        .byte $3F
- D - I - 0x013423 10:B413: 28        .byte $28
- D - I - 0x013424 10:B414: BF        .byte $BF
- D - I - 0x013425 10:B415: 3C        .byte $3C
- D - I - 0x013426 10:B416: 29        .byte $29
- D - I - 0x013427 10:B417: 00        .byte $00
- D - I - 0x013428 10:B418: 0D        .byte $0D
- D - I - 0x013429 10:B419: 07        .byte $07
- D - I - 0x01342A 10:B41A: 0F        .byte $0F
- D - I - 0x01342B 10:B41B: A0        .byte $A0
- D - I - 0x01342C 10:B41C: 3F        .byte $3F
- D - I - 0x01342D 10:B41D: 2C        .byte $2C
- D - I - 0x01342E 10:B41E: FB        .byte con_jmp
- D - I - 0x01342F 10:B41F: D4 B4     .word off_B4D4



off_B421:
- D - I - 0x013431 10:B421: 70        .byte $70
- D - I - 0x013432 10:B422: 71        .byte $71
- D - I - 0x013433 10:B423: 72        .byte $72
- D - I - 0x013434 10:B424: 73        .byte $73
- D - I - 0x013435 10:B425: BF        .byte $BF
- D - I - 0x013436 10:B426: 3F        .byte $3F
- D - I - 0x013437 10:B427: 8B        .byte $8B
- D - I - 0x013438 10:B428: 03        .byte $03
- D - I - 0x013439 10:B429: A1        .byte $A1
- D - I - 0x01343A 10:B42A: 02        .byte $02
- D - I - 0x01343B 10:B42B: 93        .byte $93
- D - I - 0x01343C 10:B42C: A0        .byte $A0
- D - I - 0x01343D 10:B42D: 3C        .byte $3C
- D - I - 0x01343E 10:B42E: 8E        .byte $8E
- D - I - 0x01343F 10:B42F: 04        .byte $04
- D - I - 0x013440 10:B430: A2        .byte $A2
- D - I - 0x013441 10:B431: A1        .byte $A1
- D - I - 0x013442 10:B432: 3F        .byte $3F
- D - I - 0x013443 10:B433: 8F        .byte $8F
- D - I - 0x013444 10:B434: 03        .byte $03
- D - I - 0x013445 10:B435: A5        .byte $A5
- D - I - 0x013446 10:B436: FB        .byte con_jmp
- D - I - 0x013447 10:B437: 9A B6     .word off_B69A



off_B439:
- D - I - 0x013449 10:B439: 74        .byte $74
- D - I - 0x01344A 10:B43A: 75        .byte $75
- D - I - 0x01344B 10:B43B: 76        .byte $76
- D - I - 0x01344C 10:B43C: 77        .byte $77
- D - I - 0x01344D 10:B43D: BE        .byte $BE
- D - I - 0x01344E 10:B43E: 38        .byte $38
- D - I - 0x01344F 10:B43F: B8        .byte $B8
- D - I - 0x013450 10:B440: BF        .byte $BF
- D - I - 0x013451 10:B441: 3C        .byte $3C
- D - I - 0x013452 10:B442: BB        .byte $BB
- D - I - 0x013453 10:B443: 03        .byte $03
- D - I - 0x013454 10:B444: D7        .byte $D7
- D - I - 0x013455 10:B445: A0        .byte $A0
- D - I - 0x013456 10:B446: 38        .byte $38
- D - I - 0x013457 10:B447: BC        .byte $BC
- D - I - 0x013458 10:B448: FA        .byte con_jsr
- D - I - 0x013459 10:B449: DE B7     .word off_B7DE
- D - I - 0x01345B 10:B44B: FB        .byte con_jmp
- D - I - 0x01345C 10:B44C: 6A B7     .word off_B76A



off_B44E:
- D - I - 0x01345E 10:B44E: 1D        .byte $1D
- D - I - 0x01345F 10:B44F: 5D        .byte $5D
- D - I - 0x013460 10:B450: 5E        .byte $5E
- D - I - 0x013461 10:B451: 5F        .byte $5F
- D - I - 0x013462 10:B452: BA        .byte $BA
- D - I - 0x013463 10:B453: 3D        .byte $3D
- D - I - 0x013464 10:B454: 15        .byte $15
- D - I - 0x013465 10:B455: 01        .byte $01
- D - I - 0x013466 10:B456: 18        .byte $18
- D - I - 0x013467 10:B457: 05        .byte $05
- D - I - 0x013468 10:B458: 1E        .byte $1E
- D - I - 0x013469 10:B459: 09        .byte $09
- D - I - 0x01346A 10:B45A: 27        .byte $27
- D - I - 0x01346B 10:B45B: BB        .byte $BB
- D - I - 0x01346C 10:B45C: 9F        .byte $9F
- D - I - 0x01346D 10:B45D: C3        .byte $C3
- D - I - 0x01346E 10:B45E: 0A        .byte $0A
- D - I - 0x01346F 10:B45F: 3B        .byte $3B
- D - I - 0x013470 10:B460: 39        .byte $39
- D - I - 0x013471 10:B461: 10        .byte $10
- D - I - 0x013472 10:B462: 3D        .byte $3D
- D - I - 0x013473 10:B463: 12        .byte $12
- D - I - 0x013474 10:B464: 01        .byte $01
- D - I - 0x013475 10:B465: 19        .byte $19
- D - I - 0x013476 10:B466: 05        .byte $05
- D - I - 0x013477 10:B467: 30        .byte $30
- D - I - 0x013478 10:B468: 09        .byte $09
- D - I - 0x013479 10:B469: 32        .byte $32
- D - I - 0x01347A 10:B46A: BC        .byte $BC
- D - I - 0x01347B 10:B46B: 39        .byte $39
- D - I - 0x01347C 10:B46C: 11        .byte $11
- D - I - 0x01347D 10:B46D: 3D        .byte $3D
- D - I - 0x01347E 10:B46E: 13        .byte $13
- D - I - 0x01347F 10:B46F: 01        .byte $01
- D - I - 0x013480 10:B470: 1C        .byte $1C
- D - I - 0x013481 10:B471: 05        .byte $05
- D - I - 0x013482 10:B472: 1F        .byte $1F
- D - I - 0x013483 10:B473: 09        .byte $09
- D - I - 0x013484 10:B474: 33        .byte $33
- D - I - 0x013485 10:B475: 0D        .byte $0D
- D - I - 0x013486 10:B476: 3F        .byte $3F
- D - I - 0x013487 10:B477: 0C        .byte $0C
- D - I - 0x013488 10:B478: 39        .byte $39
- D - I - 0x013489 10:B479: BD        .byte $BD
- D - I - 0x01348A 10:B47A: 39        .byte $39
- D - I - 0x01348B 10:B47B: 14        .byte $14
- D - I - 0x01348C 10:B47C: 3D        .byte $3D
- D - I - 0x01348D 10:B47D: 16        .byte $16
- D - I - 0x01348E 10:B47E: 01        .byte $01
- D - I - 0x01348F 10:B47F: 1D        .byte $1D
- D - I - 0x013490 10:B480: 05        .byte $05
- D - I - 0x013491 10:B481: 31        .byte $31
- D - I - 0x013492 10:B482: 09        .byte $09
- D - I - 0x013493 10:B483: 3E        .byte $3E
- D - I - 0x013494 10:B484: 08        .byte $08
- D - I - 0x013495 10:B485: 36        .byte $36
- D - I - 0x013496 10:B486: 0C        .byte $0C
- D - I - 0x013497 10:B487: 3C        .byte $3C
- D - I - 0x013498 10:B488: BE        .byte $BE
- D - I - 0x013499 10:B489: 3D        .byte $3D
- D - I - 0x01349A 10:B48A: 17        .byte $17
- D - I - 0x01349B 10:B48B: 01        .byte $01
- D - I - 0x01349C 10:B48C: 1A        .byte $1A
- D - I - 0x01349D 10:B48D: 05        .byte $05
- D - I - 0x01349E 10:B48E: 34        .byte $34
- D - I - 0x01349F 10:B48F: 08        .byte $08
- D - I - 0x0134A0 10:B490: 37        .byte $37
- D - I - 0x0134A1 10:B491: 0C        .byte $0C
- D - I - 0x0134A2 10:B492: 3D        .byte $3D
- D - I - 0x0134A3 10:B493: BF        .byte $BF
- D - I - 0x0134A4 10:B494: 08        .byte $08
- D - I - 0x0134A5 10:B495: 2D        .byte $2D
- D - I - 0x0134A6 10:B496: 0D        .byte $0D
- D - I - 0x0134A7 10:B497: 1B        .byte $1B
- D - I - 0x0134A8 10:B498: 0C        .byte $0C
- D - I - 0x0134A9 10:B499: 2F        .byte $2F
- D - I - 0x0134AA 10:B49A: A0        .byte $A0
- D - I - 0x0134AB 10:B49B: 08        .byte $08
- D - I - 0x0134AC 10:B49C: 38        .byte $38
- D - I - 0x0134AD 10:B49D: 0D        .byte $0D
- D - I - 0x0134AE 10:B49E: 35        .byte $35
- D - I - 0x0134AF 10:B49F: 0C        .byte $0C
- D - I - 0x0134B0 10:B4A0: 3A        .byte $3A
- D - I - 0x0134B1 10:B4A1: FF        .byte con_FF



off_B4A2:
- D - I - 0x0134B2 10:B4A2: 6C        .byte $6C
- D - I - 0x0134B3 10:B4A3: 6D        .byte $6D
- D - I - 0x0134B4 10:B4A4: 6E        .byte $6E
- D - I - 0x0134B5 10:B4A5: 6F        .byte $6F
- D - I - 0x0134B6 10:B4A6: BF        .byte $BF
- D - I - 0x0134B7 10:B4A7: 03        .byte $03
- D - I - 0x0134B8 10:B4A8: DD        .byte $DD
- D - I - 0x0134B9 10:B4A9: FB        .byte con_jmp
- D - I - 0x0134BA 10:B4AA: A9 BA     .word off_BAA9

off_B4AC:
- D - I - 0x0134BC 10:B4AC: BD        .byte $BD
- D - I - 0x0134BD 10:B4AD: 0C        .byte $0C
- D - I - 0x0134BE 10:B4AE: 8C        .byte $8C
- D - I - 0x0134BF 10:B4AF: BE        .byte $BE
- D - I - 0x0134C0 10:B4B0: 38        .byte $38
- D - I - 0x0134C1 10:B4B1: A2        .byte $A2
- D - I - 0x0134C2 10:B4B2: 3D        .byte $3D
- D - I - 0x0134C3 10:B4B3: A8        .byte $A8
- D - I - 0x0134C4 10:B4B4: 01        .byte $01
- D - I - 0x0134C5 10:B4B5: AA        .byte $AA
- D - I - 0x0134C6 10:B4B6: 05        .byte $05
- D - I - 0x0134C7 10:B4B7: 90        .byte $90
- D - I - 0x0134C8 10:B4B8: 0C        .byte $0C
- D - I - 0x0134C9 10:B4B9: 98        .byte $98
- D - I - 0x0134CA 10:B4BA: BF        .byte $BF
- D - I - 0x0134CB 10:B4BB: 3F        .byte $3F
- D - I - 0x0134CC 10:B4BC: A9        .byte $A9
- D - I - 0x0134CD 10:B4BD: A0        .byte $A0
- D - I - 0x0134CE 10:B4BE: 0D        .byte $0D
- D - I - 0x0134CF 10:B4BF: 9C        .byte $9C
- D - I - 0x0134D0 10:B4C0: A1        .byte $A1
- D - I - 0x0134D1 10:B4C1: 04        .byte $04
- D - I - 0x0134D2 10:B4C2: 8D        .byte $8D
- D - I - 0x0134D3 10:B4C3: A2        .byte $A2
- D - I - 0x0134D4 10:B4C4: 3D        .byte $3D
- D - I - 0x0134D5 10:B4C5: B8        .byte $B8
- D - I - 0x0134D6 10:B4C6: 01        .byte $01
- D - I - 0x0134D7 10:B4C7: BA        .byte $BA
- D - I - 0x0134D8 10:B4C8: 05        .byte $05
- D - I - 0x0134D9 10:B4C9: 95        .byte $95
- D - I - 0x0134DA 10:B4CA: 08        .byte $08
- D - I - 0x0134DB 10:B4CB: 97        .byte $97
- D - I - 0x0134DC 10:B4CC: A3        .byte $A3
- D - I - 0x0134DD 10:B4CD: 01        .byte $01
- D - I - 0x0134DE 10:B4CE: BB        .byte $BB
- D - I - 0x0134DF 10:B4CF: 08        .byte $08
- D - I - 0x0134E0 10:B4D0: BD        .byte $BD
- D - I - 0x0134E1 10:B4D1: 0C        .byte $0C
- D - I - 0x0134E2 10:B4D2: BE        .byte $BE
- D - I - 0x0134E3 10:B4D3: FF        .byte con_FF

off_B4D4:
- D - I - 0x0134E4 10:B4D4: BC        .byte $BC
- D - I - 0x0134E5 10:B4D5: 0D        .byte $0D
- D - I - 0x0134E6 10:B4D6: 22        .byte $22
- D - I - 0x0134E7 10:B4D7: BD        .byte $BD
- D - I - 0x0134E8 10:B4D8: 3B        .byte $3B
- D - I - 0x0134E9 10:B4D9: 09        .byte $09
- D - I - 0x0134EA 10:B4DA: 3F        .byte $3F
- D - I - 0x0134EB 10:B4DB: 0B        .byte $0B
- D - I - 0x0134EC 10:B4DC: 09        .byte $09
- D - I - 0x0134ED 10:B4DD: 21        .byte $21
- D - I - 0x0134EE 10:B4DE: 0D        .byte $0D
- D - I - 0x0134EF 10:B4DF: 23        .byte $23
- D - I - 0x0134F0 10:B4E0: BE        .byte $BE
- D - I - 0x0134F1 10:B4E1: 37        .byte $37
- D - I - 0x0134F2 10:B4E2: 04        .byte $04
- D - I - 0x0134F3 10:B4E3: 3B        .byte $3B
- D - I - 0x0134F4 10:B4E4: 01        .byte $01
- D - I - 0x0134F5 10:B4E5: 03        .byte $03
- D - I - 0x0134F6 10:B4E6: 0C        .byte $0C
- D - I - 0x0134F7 10:B4E7: 04        .byte $04
- D - I - 0x0134F8 10:B4E8: 0E        .byte $0E
- D - I - 0x0134F9 10:B4E9: 09        .byte $09
- D - I - 0x0134FA 10:B4EA: 24        .byte $24
- D - I - 0x0134FB 10:B4EB: 0D        .byte $0D
- D - I - 0x0134FC 10:B4EC: 26        .byte $26
- D - I - 0x0134FD 10:B4ED: BF        .byte $BF
- D - I - 0x0134FE 10:B4EE: 37        .byte $37
- D - I - 0x0134FF 10:B4EF: 05        .byte $05
- D - I - 0x013500 10:B4F0: 3B        .byte $3B
- D - I - 0x013501 10:B4F1: 01        .byte $01
- D - I - 0x013502 10:B4F2: 08        .byte $08
- D - I - 0x013503 10:B4F3: 25        .byte $25
- D - I - 0x013504 10:B4F4: 0D        .byte $0D
- D - I - 0x013505 10:B4F5: 27        .byte $27
- D - I - 0x013506 10:B4F6: A0        .byte $A0
- D - I - 0x013507 10:B4F7: 37        .byte $37
- D - I - 0x013508 10:B4F8: 10        .byte $10
- D - I - 0x013509 10:B4F9: 3B        .byte $3B
- D - I - 0x01350A 10:B4FA: 01        .byte $01
- D - I - 0x01350B 10:B4FB: 03        .byte $03
- D - I - 0x01350C 10:B4FC: 18        .byte $18
- D - I - 0x01350D 10:B4FD: 04        .byte $04
- D - I - 0x01350E 10:B4FE: 1A        .byte $1A
- D - I - 0x01350F 10:B4FF: 08        .byte $08
- D - I - 0x013510 10:B500: 2D        .byte $2D
- D - I - 0x013511 10:B501: 09        .byte $09
- D - I - 0x013512 10:B502: 03        .byte $03
- D - I - 0x013513 10:B503: 0D        .byte $0D
- D - I - 0x013514 10:B504: 2F        .byte $2F
- D - I - 0x013515 10:B505: A1        .byte $A1
- D - I - 0x013516 10:B506: 37        .byte $37
- D - I - 0x013517 10:B507: 11        .byte $11
- D - I - 0x013518 10:B508: 3B        .byte $3B
- D - I - 0x013519 10:B509: 01        .byte $01
- D - I - 0x01351A 10:B50A: 3C        .byte $3C
- D - I - 0x01351B 10:B50B: 13        .byte $13
- D - I - 0x01351C 10:B50C: 00        .byte $00
- D - I - 0x01351D 10:B50D: 19        .byte $19
- D - I - 0x01351E 10:B50E: 04        .byte $04
- D - I - 0x01351F 10:B50F: 1B        .byte $1B
- D - I - 0x013520 10:B510: 09        .byte $09
- D - I - 0x013521 10:B511: 30        .byte $30
- D - I - 0x013522 10:B512: 0D        .byte $0D
- D - I - 0x013523 10:B513: 02        .byte $02
- D - I - 0x013524 10:B514: A2        .byte $A2
- D - I - 0x013525 10:B515: 3B        .byte $3B
- D - I - 0x013526 10:B516: 16        .byte $16
- D - I - 0x013527 10:B517: 3F        .byte $3F
- D - I - 0x013528 10:B518: 1C        .byte $1C
- D - I - 0x013529 10:B519: 03        .byte $03
- D - I - 0x01352A 10:B51A: 1E        .byte $1E
- D - I - 0x01352B 10:B51B: 09        .byte $09
- D - I - 0x01352C 10:B51C: 15        .byte $15
- D - I - 0x01352D 10:B51D: 0D        .byte $0D
- D - I - 0x01352E 10:B51E: 17        .byte $17
- D - I - 0x01352F 10:B51F: A3        .byte $A3
- D - I - 0x013530 10:B520: 09        .byte $09
- D - I - 0x013531 10:B521: 1D        .byte $1D
- D - I - 0x013532 10:B522: 0D        .byte $0D
- D - I - 0x013533 10:B523: 1F        .byte $1F
- D - I - 0x013534 10:B524: FF        .byte con_FF

off_B525:
- D - I - 0x013535 10:B525: BF        .byte $BF
- D - I - 0x013536 10:B526: 0D        .byte $0D
- D - I - 0x013537 10:B527: 2F        .byte $2F
- D - I - 0x013538 10:B528: A0        .byte $A0
- D - I - 0x013539 10:B529: 0D        .byte $0D
- D - I - 0x01353A 10:B52A: 3A        .byte $3A
- D - I - 0x01353B 10:B52B: A1        .byte $A1
- D - I - 0x01353C 10:B52C: 0D        .byte $0D
- D - I - 0x01353D 10:B52D: 3B        .byte $3B
- D - I - 0x01353E 10:B52E: A2        .byte $A2
- D - I - 0x01353F 10:B52F: 0D        .byte $0D
- D - I - 0x013540 10:B530: 3E        .byte $3E
- D - I - 0x013541 10:B531: FF        .byte con_FF

off_B532:
- D - I - 0x013542 10:B532: BD        .byte $BD
- D - I - 0x013543 10:B533: 3B        .byte $3B
- D - I - 0x013544 10:B534: 88        .byte $88
- D - I - 0x013545 10:B535: 3F        .byte $3F
- D - I - 0x013546 10:B536: 8A        .byte $8A
- D - I - 0x013547 10:B537: BE        .byte $BE
- D - I - 0x013548 10:B538: 37        .byte $37
- D - I - 0x013549 10:B539: 89        .byte $89
- D - I - 0x01354A 10:B53A: 3B        .byte $3B
- D - I - 0x01354B 10:B53B: 01        .byte $01
- D - I - 0x01354C 10:B53C: 3C        .byte $3C
- D - I - 0x01354D 10:B53D: 8B        .byte $8B
- D - I - 0x01354E 10:B53E: 00        .byte $00
- D - I - 0x01354F 10:B53F: A0        .byte $A0
- D - I - 0x013550 10:B540: BF        .byte $BF
- D - I - 0x013551 10:B541: 37        .byte $37
- D - I - 0x013552 10:B542: 8C        .byte $8C
- D - I - 0x013553 10:B543: 3B        .byte $3B
- D - I - 0x013554 10:B544: 01        .byte $01
- D - I - 0x013555 10:B545: A0        .byte $A0
- D - I - 0x013556 10:B546: 37        .byte $37
- D - I - 0x013557 10:B547: 8D        .byte $8D
- D - I - 0x013558 10:B548: 3B        .byte $3B
- D - I - 0x013559 10:B549: 01        .byte $01
- D - I - 0x01355A 10:B54A: A1        .byte $A1
- D - I - 0x01355B 10:B54B: 37        .byte $37
- D - I - 0x01355C 10:B54C: 98        .byte $98
- D - I - 0x01355D 10:B54D: 3B        .byte $3B
- D - I - 0x01355E 10:B54E: 01        .byte $01
- D - I - 0x01355F 10:B54F: 3C        .byte $3C
- D - I - 0x013560 10:B550: 9A        .byte $9A
- D - I - 0x013561 10:B551: 00        .byte $00
- D - I - 0x013562 10:B552: A5        .byte $A5
- D - I - 0x013563 10:B553: 04        .byte $04
- D - I - 0x013564 10:B554: A7        .byte $A7
- D - I - 0x013565 10:B555: A2        .byte $A2
- D - I - 0x013566 10:B556: 3B        .byte $3B
- D - I - 0x013567 10:B557: B1        .byte $B1
- D - I - 0x013568 10:B558: 3F        .byte $3F
- D - I - 0x013569 10:B559: B3        .byte $B3
- D - I - 0x01356A 10:B55A: 03        .byte $03
- D - I - 0x01356B 10:B55B: B0        .byte $B0
- D - I - 0x01356C 10:B55C: 07        .byte $07
- D - I - 0x01356D 10:B55D: B2        .byte $B2
- D - I - 0x01356E 10:B55E: A3        .byte $A3
- D - I - 0x01356F 10:B55F: 3F        .byte $3F
- D - I - 0x013570 10:B560: B6        .byte $B6
off_B561:
- D - I - 0x013571 10:B561: BE        .byte $BE
- D - I - 0x013572 10:B562: 04        .byte $04
- D - I - 0x013573 10:B563: A2        .byte $A2
- D - I - 0x013574 10:B564: 0D        .byte $0D
- D - I - 0x013575 10:B565: AA        .byte $AA
- D - I - 0x013576 10:B566: BF        .byte $BF
- D - I - 0x013577 10:B567: 04        .byte $04
- D - I - 0x013578 10:B568: A3        .byte $A3
- D - I - 0x013579 10:B569: 09        .byte $09
- D - I - 0x01357A 10:B56A: A9        .byte $A9
- D - I - 0x01357B 10:B56B: 08        .byte $08
- D - I - 0x01357C 10:B56C: A8        .byte $A8
- D - I - 0x01357D 10:B56D: 0D        .byte $0D
- D - I - 0x01357E 10:B56E: AB        .byte $AB
- D - I - 0x01357F 10:B56F: A0        .byte $A0
- D - I - 0x013580 10:B570: 04        .byte $04
- D - I - 0x013581 10:B571: A6        .byte $A6
- D - I - 0x013582 10:B572: 09        .byte $09
- D - I - 0x013583 10:B573: AC        .byte $AC
- D - I - 0x013584 10:B574: 08        .byte $08
- D - I - 0x013585 10:B575: 02        .byte $02
- D - I - 0x013586 10:B576: 0D        .byte $0D
- D - I - 0x013587 10:B577: AE        .byte $AE
- D - I - 0x013588 10:B578: A1        .byte $A1
- D - I - 0x013589 10:B579: 09        .byte $09
- D - I - 0x01358A 10:B57A: AD        .byte $AD
- D - I - 0x01358B 10:B57B: 0D        .byte $0D
- D - I - 0x01358C 10:B57C: AF        .byte $AF
- D - I - 0x01358D 10:B57D: A2        .byte $A2
- D - I - 0x01358E 10:B57E: 09        .byte $09
- D - I - 0x01358F 10:B57F: B8        .byte $B8
- D - I - 0x013590 10:B580: 0D        .byte $0D
- D - I - 0x013591 10:B581: BA        .byte $BA
- D - I - 0x013592 10:B582: FF        .byte con_FF

off_B583:
- D - I - 0x013593 10:B583: BD        .byte $BD
- D - I - 0x013594 10:B584: 36        .byte $36
- D - I - 0x013595 10:B585: 22        .byte $22
- D - I - 0x013596 10:B586: 3A        .byte $3A
- D - I - 0x013597 10:B587: 0A        .byte $0A
- D - I - 0x013598 10:B588: BE        .byte $BE
- D - I - 0x013599 10:B589: 32        .byte $32
- D - I - 0x01359A 10:B58A: 07        .byte $07
- D - I - 0x01359B 10:B58B: 36        .byte $36
- D - I - 0x01359C 10:B58C: 23        .byte $23
- D - I - 0x01359D 10:B58D: 3F        .byte $3F
- D - I - 0x01359E 10:B58E: 21        .byte $21
- D - I - 0x01359F 10:B58F: BF        .byte $BF
- D - I - 0x0135A0 10:B590: 32        .byte $32
- D - I - 0x0135A1 10:B591: 12        .byte $12
- D - I - 0x0135A2 10:B592: 36        .byte $36
- D - I - 0x0135A3 10:B593: 26        .byte $26
- D - I - 0x0135A4 10:B594: 3A        .byte $3A
- D - I - 0x0135A5 10:B595: 0E        .byte $0E
- D - I - 0x0135A6 10:B596: A0        .byte $A0
- D - I - 0x0135A7 10:B597: 32        .byte $32
- D - I - 0x0135A8 10:B598: 13        .byte $13
- D - I - 0x0135A9 10:B599: 36        .byte $36
- D - I - 0x0135AA 10:B59A: 02        .byte $02
- D - I - 0x0135AB 10:B59B: 3F        .byte $3F
- D - I - 0x0135AC 10:B59C: 25        .byte $25
- D - I - 0x0135AD 10:B59D: A1        .byte $A1
- D - I - 0x0135AE 10:B59E: 32        .byte $32
- D - I - 0x0135AF 10:B59F: 16        .byte $16
- D - I - 0x0135B0 10:B5A0: 36        .byte $36
- D - I - 0x0135B1 10:B5A1: 32        .byte $32
- D - I - 0x0135B2 10:B5A2: 3A        .byte $3A
- D - I - 0x0135B3 10:B5A3: 1A        .byte $1A
- D - I - 0x0135B4 10:B5A4: 3E        .byte $3E
- D - I - 0x0135B5 10:B5A5: 30        .byte $30
- D - I - 0x0135B6 10:B5A6: 02        .byte $02
- D - I - 0x0135B7 10:B5A7: 75        .byte $75
- D - I - 0x0135B8 10:B5A8: 05        .byte $05
- D - I - 0x0135B9 10:B5A9: 18        .byte $18
- D - I - 0x0135BA 10:B5AA: 06        .byte $06
- D - I - 0x0135BB 10:B5AB: 48        .byte $48
- D - I - 0x0135BC 10:B5AC: A2        .byte $A2
- D - I - 0x0135BD 10:B5AD: 3A        .byte $3A
- D - I - 0x0135BE 10:B5AE: 1B        .byte $1B
- D - I - 0x0135BF 10:B5AF: 3E        .byte $3E
- D - I - 0x0135C0 10:B5B0: 31        .byte $31
off_B5B1:
- D - I - 0x0135C1 10:B5B1: BC        .byte $BC
- D - I - 0x0135C2 10:B5B2: 0D        .byte $0D
- D - I - 0x0135C3 10:B5B3: 08        .byte $08
- D - I - 0x0135C4 10:B5B4: BD        .byte $BD
- D - I - 0x0135C5 10:B5B5: 3E        .byte $3E
- D - I - 0x0135C6 10:B5B6: 20        .byte $20
- D - I - 0x0135C7 10:B5B7: 09        .byte $09
- D - I - 0x0135C8 10:B5B8: 04        .byte $04
- D - I - 0x0135C9 10:B5B9: 0D        .byte $0D
- D - I - 0x0135CA 10:B5BA: 06        .byte $06
- D - I - 0x0135CB 10:B5BB: BE        .byte $BE
- D - I - 0x0135CC 10:B5BC: 00        .byte $00
- D - I - 0x0135CD 10:B5BD: 1C        .byte $1C
- D - I - 0x0135CE 10:B5BE: 04        .byte $04
- D - I - 0x0135CF 10:B5BF: 09        .byte $09
- D - I - 0x0135D0 10:B5C0: 09        .byte $09
- D - I - 0x0135D1 10:B5C1: 05        .byte $05
- D - I - 0x0135D2 10:B5C2: 0D        .byte $0D
- D - I - 0x0135D3 10:B5C3: 02        .byte $02
- D - I - 0x0135D4 10:B5C4: BF        .byte $BF
- D - I - 0x0135D5 10:B5C5: 09        .byte $09
- D - I - 0x0135D6 10:B5C6: 10        .byte $10
- D - I - 0x0135D7 10:B5C7: 08        .byte $08
- D - I - 0x0135D8 10:B5C8: 03        .byte $03
- D - I - 0x0135D9 10:B5C9: 0D        .byte $0D
- D - I - 0x0135DA 10:B5CA: 02        .byte $02
- D - I - 0x0135DB 10:B5CB: A0        .byte $A0
- D - I - 0x0135DC 10:B5CC: 00        .byte $00
- D - I - 0x0135DD 10:B5CD: 03        .byte $03
- D - I - 0x0135DE 10:B5CE: 04        .byte $04
- D - I - 0x0135DF 10:B5CF: 0D        .byte $0D
- D - I - 0x0135E0 10:B5D0: 09        .byte $09
- D - I - 0x0135E1 10:B5D1: 11        .byte $11
- D - I - 0x0135E2 10:B5D2: 0D        .byte $0D
- D - I - 0x0135E3 10:B5D3: 02        .byte $02
- D - I - 0x0135E4 10:B5D4: A1        .byte $A1
- D - I - 0x0135E5 10:B5D5: 09        .byte $09
- D - I - 0x0135E6 10:B5D6: 14        .byte $14
- D - I - 0x0135E7 10:B5D7: 0D        .byte $0D
- D - I - 0x0135E8 10:B5D8: 02        .byte $02
- D - I - 0x0135E9 10:B5D9: A2        .byte $A2
- D - I - 0x0135EA 10:B5DA: 09        .byte $09
- D - I - 0x0135EB 10:B5DB: 15        .byte $15
- D - I - 0x0135EC 10:B5DC: 0D        .byte $0D
- D - I - 0x0135ED 10:B5DD: 17        .byte $17
- D - I - 0x0135EE 10:B5DE: A3        .byte $A3
- D - I - 0x0135EF 10:B5DF: 09        .byte $09
- D - I - 0x0135F0 10:B5E0: 40        .byte $40
- D - I - 0x0135F1 10:B5E1: 0D        .byte $0D
- D - I - 0x0135F2 10:B5E2: 42        .byte $42
- D - I - 0x0135F3 10:B5E3: FF        .byte con_FF

off_B5E4:
- D - I - 0x0135F4 10:B5E4: BD        .byte $BD
- D - I - 0x0135F5 10:B5E5: 36        .byte $36
- D - I - 0x0135F6 10:B5E6: 54        .byte $54
- D - I - 0x0135F7 10:B5E7: 3A        .byte $3A
- D - I - 0x0135F8 10:B5E8: 56        .byte $56
- D - I - 0x0135F9 10:B5E9: BE        .byte $BE
- D - I - 0x0135FA 10:B5EA: 32        .byte $32
- D - I - 0x0135FB 10:B5EB: 5C        .byte $5C
- D - I - 0x0135FC 10:B5EC: 36        .byte $36
- D - I - 0x0135FD 10:B5ED: 41        .byte $41
- D - I - 0x0135FE 10:B5EE: 3A        .byte $3A
- D - I - 0x0135FF 10:B5EF: 43        .byte $43
- D - I - 0x013600 10:B5F0: 3F        .byte $3F
- D - I - 0x013601 10:B5F1: 49        .byte $49
- D - I - 0x013602 10:B5F2: BF        .byte $BF
- D - I - 0x013603 10:B5F3: 32        .byte $32
- D - I - 0x013604 10:B5F4: 37        .byte $37
- D - I - 0x013605 10:B5F5: 36        .byte $36
- D - I - 0x013606 10:B5F6: 44        .byte $44
- D - I - 0x013607 10:B5F7: 3A        .byte $3A
- D - I - 0x013608 10:B5F8: 46        .byte $46
- D - I - 0x013609 10:B5F9: 3C        .byte $3C
- D - I - 0x01360A 10:B5FA: 4C        .byte $4C
- D - I - 0x01360B 10:B5FB: A0        .byte $A0
- D - I - 0x01360C 10:B5FC: 32        .byte $32
- D - I - 0x01360D 10:B5FD: 62        .byte $62
- D - I - 0x01360E 10:B5FE: 36        .byte $36
- D - I - 0x01360F 10:B5FF: 45        .byte $45
- D - I - 0x013610 10:B600: 3A        .byte $3A
- D - I - 0x013611 10:B601: 47        .byte $47
- D - I - 0x013612 10:B602: 3F        .byte $3F
- D - I - 0x013613 10:B603: 4D        .byte $4D
- D - I - 0x013614 10:B604: A1        .byte $A1
- D - I - 0x013615 10:B605: 36        .byte $36
- D - I - 0x013616 10:B606: 50        .byte $50
- D - I - 0x013617 10:B607: 3A        .byte $3A
- D - I - 0x013618 10:B608: 52        .byte $52
- D - I - 0x013619 10:B609: 3E        .byte $3E
- D - I - 0x01361A 10:B60A: 30        .byte $30
- D - I - 0x01361B 10:B60B: 02        .byte $02
- D - I - 0x01361C 10:B60C: 55        .byte $55
- D - I - 0x01361D 10:B60D: 05        .byte $05
- D - I - 0x01361E 10:B60E: 18        .byte $18
- D - I - 0x01361F 10:B60F: 06        .byte $06
- D - I - 0x013620 10:B610: 48        .byte $48
- D - I - 0x013621 10:B611: A2        .byte $A2
- D - I - 0x013622 10:B612: 3A        .byte $3A
- D - I - 0x013623 10:B613: 53        .byte $53
- D - I - 0x013624 10:B614: 3E        .byte $3E
- D - I - 0x013625 10:B615: 59        .byte $59
- D - I - 0x013626 10:B616: 02        .byte $02
- D - I - 0x013627 10:B617: 31        .byte $31
- D - I - 0x013628 10:B618: FB        .byte con_jmp
- D - I - 0x013629 10:B619: B1 B5     .word off_B5B1

off_B61B:
- D - I - 0x01362B 10:B61B: BD        .byte $BD
- D - I - 0x01362C 10:B61C: 36        .byte $36
- D - I - 0x01362D 10:B61D: 4B        .byte $4B
- D - I - 0x01362E 10:B61E: 3A        .byte $3A
- D - I - 0x01362F 10:B61F: 61        .byte $61
- D - I - 0x013630 10:B620: BE        .byte $BE
- D - I - 0x013631 10:B621: 32        .byte $32
- D - I - 0x013632 10:B622: 5C        .byte $5C
- D - I - 0x013633 10:B623: 36        .byte $36
- D - I - 0x013634 10:B624: 4E        .byte $4E
- D - I - 0x013635 10:B625: 3A        .byte $3A
- D - I - 0x013636 10:B626: 64        .byte $64
- D - I - 0x013637 10:B627: 3F        .byte $3F
- D - I - 0x013638 10:B628: 5E        .byte $5E
- D - I - 0x013639 10:B629: BF        .byte $BF
- D - I - 0x01363A 10:B62A: 32        .byte $32
- D - I - 0x01363B 10:B62B: 33        .byte $33
- D - I - 0x01363C 10:B62C: 36        .byte $36
- D - I - 0x01363D 10:B62D: 02        .byte $02
- D - I - 0x01363E 10:B62E: 3A        .byte $3A
- D - I - 0x01363F 10:B62F: 65        .byte $65
- D - I - 0x013640 10:B630: 3C        .byte $3C
- D - I - 0x013641 10:B631: 24        .byte $24
- D - I - 0x013642 10:B632: A0        .byte $A0
- D - I - 0x013643 10:B633: 32        .byte $32
- D - I - 0x013644 10:B634: 36        .byte $36
- D - I - 0x013645 10:B635: 36        .byte $36
- D - I - 0x013646 10:B636: 5A        .byte $5A
- D - I - 0x013647 10:B637: 3A        .byte $3A
- D - I - 0x013648 10:B638: 70        .byte $70
- D - I - 0x013649 10:B639: 3F        .byte $3F
- D - I - 0x01364A 10:B63A: 74        .byte $74
- D - I - 0x01364B 10:B63B: A1        .byte $A1
- D - I - 0x01364C 10:B63C: 36        .byte $36
- D - I - 0x01364D 10:B63D: 5B        .byte $5B
- D - I - 0x01364E 10:B63E: 3A        .byte $3A
- D - I - 0x01364F 10:B63F: 71        .byte $71
- D - I - 0x013650 10:B640: 3E        .byte $3E
- D - I - 0x013651 10:B641: 30        .byte $30
- D - I - 0x013652 10:B642: 02        .byte $02
- D - I - 0x013653 10:B643: 75        .byte $75
- D - I - 0x013654 10:B644: 05        .byte $05
- D - I - 0x013655 10:B645: 18        .byte $18
- D - I - 0x013656 10:B646: 06        .byte $06
- D - I - 0x013657 10:B647: 48        .byte $48
- D - I - 0x013658 10:B648: A2        .byte $A2
- D - I - 0x013659 10:B649: 3E        .byte $3E
- D - I - 0x01365A 10:B64A: 31        .byte $31
- D - I - 0x01365B 10:B64B: FB        .byte con_jmp
- D - I - 0x01365C 10:B64C: B1 B5     .word off_B5B1

off_B64E:
- D - I - 0x01365E 10:B64E: BE        .byte $BE
- D - I - 0x01365F 10:B64F: 07        .byte $07
- D - I - 0x013660 10:B650: 8F        .byte $8F
- D - I - 0x013661 10:B651: 04        .byte $04
- D - I - 0x013662 10:B652: 5A        .byte $5A
- D - I - 0x013663 10:B653: BF        .byte $BF
- D - I - 0x013664 10:B654: 07        .byte $07
- D - I - 0x013665 10:B655: 9A        .byte $9A
- D - I - 0x013666 10:B656: 04        .byte $04
- D - I - 0x013667 10:B657: 5B        .byte $5B
- D - I - 0x013668 10:B658: A0        .byte $A0
- D - I - 0x013669 10:B659: 07        .byte $07
- D - I - 0x01366A 10:B65A: 9B        .byte $9B
- D - I - 0x01366B 10:B65B: 04        .byte $04
- D - I - 0x01366C 10:B65C: 5E        .byte $5E
off_B65D:
- D - I - 0x01366D 10:B65D: BD        .byte $BD
- D - I - 0x01366E 10:B65E: 0D        .byte $0D
- D - I - 0x01366F 10:B65F: 55        .byte $55
- D - I - 0x013670 10:B660: BE        .byte $BE
- D - I - 0x013671 10:B661: 36        .byte $36
- D - I - 0x013672 10:B662: 47        .byte $47
- D - I - 0x013673 10:B663: 09        .byte $09
- D - I - 0x013674 10:B664: 70        .byte $70
- D - I - 0x013675 10:B665: 0D        .byte $0D
- D - I - 0x013676 10:B666: 72        .byte $72
- D - I - 0x013677 10:B667: BF        .byte $BF
- D - I - 0x013678 10:B668: 36        .byte $36
- D - I - 0x013679 10:B669: 84        .byte $84
- D - I - 0x01367A 10:B66A: 08        .byte $08
- D - I - 0x01367B 10:B66B: 71        .byte $71
- D - I - 0x01367C 10:B66C: 09        .byte $09
- D - I - 0x01367D 10:B66D: 4A        .byte $4A
- D - I - 0x01367E 10:B66E: 0D        .byte $0D
- D - I - 0x01367F 10:B66F: 73        .byte $73
- D - I - 0x013680 10:B670: A0        .byte $A0
- D - I - 0x013681 10:B671: 36        .byte $36
- D - I - 0x013682 10:B672: 82        .byte $82
- D - I - 0x013683 10:B673: 08        .byte $08
- D - I - 0x013684 10:B674: 74        .byte $74
- D - I - 0x013685 10:B675: 0D        .byte $0D
- D - I - 0x013686 10:B676: 76        .byte $76
- D - I - 0x013687 10:B677: A1        .byte $A1
- D - I - 0x013688 10:B678: 36        .byte $36
- D - I - 0x013689 10:B679: 83        .byte $83
- D - I - 0x01368A 10:B67A: 3E        .byte $3E
- D - I - 0x01368B 10:B67B: 57        .byte $57
- D - I - 0x01368C 10:B67C: 00        .byte $00
- D - I - 0x01368D 10:B67D: 5D        .byte $5D
- D - I - 0x01368E 10:B67E: 04        .byte $04
- D - I - 0x01368F 10:B67F: 5F        .byte $5F
- D - I - 0x013690 10:B680: 09        .byte $09
- D - I - 0x013691 10:B681: 75        .byte $75
- D - I - 0x013692 10:B682: CC        .byte $CC
- D - I - 0x013693 10:B683: 00        .byte $00
- D - I - 0x013694 10:B684: 5B        .byte $5B
- D - I - 0x013695 10:B685: 0D        .byte $0D
- D - I - 0x013696 10:B686: 77        .byte $77
- D - I - 0x013697 10:B687: A2        .byte $A2
- D - I - 0x013698 10:B688: 36        .byte $36
- D - I - 0x013699 10:B689: 78        .byte $78
- D - I - 0x01369A 10:B68A: 3A        .byte $3A
- D - I - 0x01369B 10:B68B: 7A        .byte $7A
- D - I - 0x01369C 10:B68C: 3E        .byte $3E
- D - I - 0x01369D 10:B68D: 79        .byte $79
- D - I - 0x01369E 10:B68E: 00        .byte $00
- D - I - 0x01369F 10:B68F: 7B        .byte $7B
- D - I - 0x0136A0 10:B690: 09        .byte $09
- D - I - 0x0136A1 10:B691: 7C        .byte $7C
- D - I - 0x0136A2 10:B692: 0D        .byte $0D
- D - I - 0x0136A3 10:B693: 7E        .byte $7E
- D - I - 0x0136A4 10:B694: A3        .byte $A3
- D - I - 0x0136A5 10:B695: 09        .byte $09
- D - I - 0x0136A6 10:B696: 7D        .byte $7D
- D - I - 0x0136A7 10:B697: 0D        .byte $0D
- D - I - 0x0136A8 10:B698: 7F        .byte $7F
- D - I - 0x0136A9 10:B699: FF        .byte con_FF

off_B69A:
- D - I - 0x0136AA 10:B69A: BE        .byte $BE
- D - I - 0x0136AB 10:B69B: 09        .byte $09
- D - I - 0x0136AC 10:B69C: A8        .byte $A8
- D - I - 0x0136AD 10:B69D: 0D        .byte $0D
- D - I - 0x0136AE 10:B69E: AA        .byte $AA
- D - I - 0x0136AF 10:B69F: BF        .byte $BF
- D - I - 0x0136B0 10:B6A0: 09        .byte $09
- D - I - 0x0136B1 10:B6A1: A9        .byte $A9
- D - I - 0x0136B2 10:B6A2: 0A        .byte $0A
- D - I - 0x0136B3 10:B6A3: 90        .byte $90
- D - I - 0x0136B4 10:B6A4: 0D        .byte $0D
- D - I - 0x0136B5 10:B6A5: AB        .byte $AB
- D - I - 0x0136B6 10:B6A6: A0        .byte $A0
- D - I - 0x0136B7 10:B6A7: 3A        .byte $3A
- D - I - 0x0136B8 10:B6A8: 8C        .byte $8C
- D - I - 0x0136B9 10:B6A9: 08        .byte $08
- D - I - 0x0136BA 10:B6AA: AC        .byte $AC
- D - I - 0x0136BB 10:B6AB: 0F        .byte $0F
- D - I - 0x0136BC 10:B6AC: AE        .byte $AE
- D - I - 0x0136BD 10:B6AD: A1        .byte $A1
- D - I - 0x0136BE 10:B6AE: 0B        .byte $0B
- D - I - 0x0136BF 10:B6AF: AD        .byte $AD
- D - I - 0x0136C0 10:B6B0: 0F        .byte $0F
- D - I - 0x0136C1 10:B6B1: AF        .byte $AF
- D - I - 0x0136C2 10:B6B2: A2        .byte $A2
- D - I - 0x0136C3 10:B6B3: 02        .byte $02
- D - I - 0x0136C4 10:B6B4: B0        .byte $B0
- D - I - 0x0136C5 10:B6B5: 06        .byte $06
- D - I - 0x0136C6 10:B6B6: B2        .byte $B2
- D - I - 0x0136C7 10:B6B7: 09        .byte $09
- D - I - 0x0136C8 10:B6B8: B8        .byte $B8
- D - I - 0x0136C9 10:B6B9: 0A        .byte $0A
- D - I - 0x0136CA 10:B6BA: 93        .byte $93
- D - I - 0x0136CB 10:B6BB: 0D        .byte $0D
- D - I - 0x0136CC 10:B6BC: BA        .byte $BA
- D - I - 0x0136CD 10:B6BD: A3        .byte $A3
- D - I - 0x0136CE 10:B6BE: 3E        .byte $3E
- D - I - 0x0136CF 10:B6BF: 9B        .byte $9B
- D - I - 0x0136D0 10:B6C0: 02        .byte $02
- D - I - 0x0136D1 10:B6C1: B1        .byte $B1
- D - I - 0x0136D2 10:B6C2: 09        .byte $09
- D - I - 0x0136D3 10:B6C3: B9        .byte $B9
- D - I - 0x0136D4 10:B6C4: 0D        .byte $0D
- D - I - 0x0136D5 10:B6C5: BB        .byte $BB
- D - I - 0x0136D6 10:B6C6: A4        .byte $A4
- D - I - 0x0136D7 10:B6C7: 0D        .byte $0D
- D - I - 0x0136D8 10:B6C8: 7F        .byte $7F
off_B6C9:
- D - I - 0x0136D9 10:B6C9: BE        .byte $BE
- D - I - 0x0136DA 10:B6CA: 36        .byte $36
- D - I - 0x0136DB 10:B6CB: 82        .byte $82
- D - I - 0x0136DC 10:B6CC: 3A        .byte $3A
- D - I - 0x0136DD 10:B6CD: 88        .byte $88
- D - I - 0x0136DE 10:B6CE: 3E        .byte $3E
- D - I - 0x0136DF 10:B6CF: 8A        .byte $8A
- D - I - 0x0136E0 10:B6D0: 02        .byte $02
- D - I - 0x0136E1 10:B6D1: A0        .byte $A0
- D - I - 0x0136E2 10:B6D2: BF        .byte $BF
- D - I - 0x0136E3 10:B6D3: 32        .byte $32
- D - I - 0x0136E4 10:B6D4: 81        .byte $81
- D - I - 0x0136E5 10:B6D5: 36        .byte $36
- D - I - 0x0136E6 10:B6D6: 83        .byte $83
- D - I - 0x0136E7 10:B6D7: 3A        .byte $3A
- D - I - 0x0136E8 10:B6D8: 89        .byte $89
- D - I - 0x0136E9 10:B6D9: 06        .byte $06
- D - I - 0x0136EA 10:B6DA: A3        .byte $A3
- D - I - 0x0136EB 10:B6DB: A0        .byte $A0
- D - I - 0x0136EC 10:B6DC: 32        .byte $32
- D - I - 0x0136ED 10:B6DD: 84        .byte $84
- D - I - 0x0136EE 10:B6DE: 36        .byte $36
- D - I - 0x0136EF 10:B6DF: 02        .byte $02
- D - I - 0x0136F0 10:B6E0: 00        .byte $00
- D - I - 0x0136F1 10:B6E1: A4        .byte $A4
- D - I - 0x0136F2 10:B6E2: A1        .byte $A1
- D - I - 0x0136F3 10:B6E3: 32        .byte $32
- D - I - 0x0136F4 10:B6E4: 85        .byte $85
- D - I - 0x0136F5 10:B6E5: 36        .byte $36
- D - I - 0x0136F6 10:B6E6: 02        .byte $02
- D - I - 0x0136F7 10:B6E7: 3A        .byte $3A
- D - I - 0x0136F8 10:B6E8: 8D        .byte $8D
- D - I - 0x0136F9 10:B6E9: 04        .byte $04
- D - I - 0x0136FA 10:B6EA: A7        .byte $A7
- D - I - 0x0136FB 10:B6EB: A2        .byte $A2
- D - I - 0x0136FC 10:B6EC: 36        .byte $36
- D - I - 0x0136FD 10:B6ED: 92        .byte $92
- D - I - 0x0136FE 10:B6EE: 3A        .byte $3A
- D - I - 0x0136FF 10:B6EF: 02        .byte $02
- D - I - 0x013700 10:B6F0: 3E        .byte $3E
- D - I - 0x013701 10:B6F1: 9A        .byte $9A
- D - I - 0x013702 10:B6F2: A3        .byte $A3
- D - I - 0x013703 10:B6F3: 3A        .byte $3A
- D - I - 0x013704 10:B6F4: 99        .byte $99
- D - I - 0x013705 10:B6F5: FF        .byte con_FF

off_B6F6:
- D - I - 0x013706 10:B6F6: BE        .byte $BE
- D - I - 0x013707 10:B6F7: 09        .byte $09
- D - I - 0x013708 10:B6F8: 81        .byte $81
- D - I - 0x013709 10:B6F9: 0D        .byte $0D
- D - I - 0x01370A 10:B6FA: BE        .byte $BE
- D - I - 0x01370B 10:B6FB: BF        .byte $BF
- D - I - 0x01370C 10:B6FC: 09        .byte $09
- D - I - 0x01370D 10:B6FD: BD        .byte $BD
- D - I - 0x01370E 10:B6FE: 0D        .byte $0D
- D - I - 0x01370F 10:B6FF: BF        .byte $BF
- D - I - 0x013710 10:B700: A0        .byte $A0
- D - I - 0x013711 10:B701: 3A        .byte $3A
- D - I - 0x013712 10:B702: B4        .byte $B4
- D - I - 0x013713 10:B703: 08        .byte $08
- D - I - 0x013714 10:B704: C0        .byte $C0
- D - I - 0x013715 10:B705: 0D        .byte $0D
- D - I - 0x013716 10:B706: C2        .byte $C2
- D - I - 0x013717 10:B707: A1        .byte $A1
- D - I - 0x013718 10:B708: 0B        .byte $0B
- D - I - 0x013719 10:B709: C1        .byte $C1
- D - I - 0x01371A 10:B70A: 0D        .byte $0D
- D - I - 0x01371B 10:B70B: C3        .byte $C3
- D - I - 0x01371C 10:B70C: A2        .byte $A2
- D - I - 0x01371D 10:B70D: 3D        .byte $3D
- D - I - 0x01371E 10:B70E: FD        .byte $FD
- D - I - 0x01371F 10:B70F: 02        .byte $02
- D - I - 0x013720 10:B710: B5        .byte $B5
- D - I - 0x013721 10:B711: 06        .byte $06
- D - I - 0x013722 10:B712: B7        .byte $B7
- D - I - 0x013723 10:B713: 09        .byte $09
- D - I - 0x013724 10:B714: C4        .byte $C4
- D - I - 0x013725 10:B715: 0D        .byte $0D
- D - I - 0x013726 10:B716: C6        .byte $C6
- D - I - 0x013727 10:B717: A3        .byte $A3
- D - I - 0x013728 10:B718: 3E        .byte $3E
- D - I - 0x013729 10:B719: B1        .byte $B1
- D - I - 0x01372A 10:B71A: 09        .byte $09
- D - I - 0x01372B 10:B71B: C5        .byte $C5
- D - I - 0x01372C 10:B71C: 0D        .byte $0D
- D - I - 0x01372D 10:B71D: C7        .byte $C7
- D - I - 0x01372E 10:B71E: A4        .byte $A4
- D - I - 0x01372F 10:B71F: 0D        .byte $0D
- D - I - 0x013730 10:B720: 7F        .byte $7F
- D - I - 0x013731 10:B721: FB        .byte con_jmp
- D - I - 0x013732 10:B722: C9 B6     .word off_B6C9

off_B724:
- D - I - 0x013734 10:B724: BE        .byte $BE
- D - I - 0x013735 10:B725: 36        .byte $36
- D - I - 0x013736 10:B726: 82        .byte $82
- D - I - 0x013737 10:B727: 3A        .byte $3A
- D - I - 0x013738 10:B728: 88        .byte $88
- D - I - 0x013739 10:B729: 3E        .byte $3E
- D - I - 0x01373A 10:B72A: CA        .byte $CA
- D - I - 0x01373B 10:B72B: 06        .byte $06
- D - I - 0x01373C 10:B72C: A0        .byte $A0
- D - I - 0x01373D 10:B72D: BF        .byte $BF
- D - I - 0x01373E 10:B72E: 32        .byte $32
- D - I - 0x01373F 10:B72F: 81        .byte $81
- D - I - 0x013740 10:B730: 36        .byte $36
- D - I - 0x013741 10:B731: 83        .byte $83
- D - I - 0x013742 10:B732: 3A        .byte $3A
- D - I - 0x013743 10:B733: 89        .byte $89
- D - I - 0x013744 10:B734: 3F        .byte $3F
- D - I - 0x013745 10:B735: 8B        .byte $8B
- D - I - 0x013746 10:B736: 06        .byte $06
- D - I - 0x013747 10:B737: CB        .byte $CB
- D - I - 0x013748 10:B738: A0        .byte $A0
- D - I - 0x013749 10:B739: 32        .byte $32
- D - I - 0x01374A 10:B73A: 84        .byte $84
- D - I - 0x01374B 10:B73B: 36        .byte $36
- D - I - 0x01374C 10:B73C: 02        .byte $02
- D - I - 0x01374D 10:B73D: 3A        .byte $3A
- D - I - 0x01374E 10:B73E: 8C        .byte $8C
- D - I - 0x01374F 10:B73F: 3C        .byte $3C
- D - I - 0x013750 10:B740: 8E        .byte $8E
- D - I - 0x013751 10:B741: 00        .byte $00
- D - I - 0x013752 10:B742: A4        .byte $A4
- D - I - 0x013753 10:B743: A1        .byte $A1
- D - I - 0x013754 10:B744: 32        .byte $32
- D - I - 0x013755 10:B745: 85        .byte $85
- D - I - 0x013756 10:B746: 36        .byte $36
- D - I - 0x013757 10:B747: 02        .byte $02
- D - I - 0x013758 10:B748: 3A        .byte $3A
- D - I - 0x013759 10:B749: 8D        .byte $8D
- D - I - 0x01375A 10:B74A: 3F        .byte $3F
- D - I - 0x01375B 10:B74B: 8F        .byte $8F
- D - I - 0x01375C 10:B74C: 04        .byte $04
- D - I - 0x01375D 10:B74D: A7        .byte $A7
- D - I - 0x01375E 10:B74E: A2        .byte $A2
- D - I - 0x01375F 10:B74F: 36        .byte $36
- D - I - 0x013760 10:B750: 92        .byte $92
- D - I - 0x013761 10:B751: 3A        .byte $3A
- D - I - 0x013762 10:B752: 02        .byte $02
- D - I - 0x013763 10:B753: 06        .byte $06
- D - I - 0x013764 10:B754: 02        .byte $02
- D - I - 0x013765 10:B755: A3        .byte $A3
- D - I - 0x013766 10:B756: 3A        .byte $3A
- D - I - 0x013767 10:B757: 99        .byte $99
- D - I - 0x013768 10:B758: 3E        .byte $3E
- D - I - 0x013769 10:B759: CD        .byte $CD
- D - I - 0x01376A 10:B75A: 02        .byte $02
- D - I - 0x01376B 10:B75B: CF        .byte $CF
- D - I - 0x01376C 10:B75C: 06        .byte $06
- D - I - 0x01376D 10:B75D: DC        .byte $DC
- D - I - 0x01376E 10:B75E: FF        .byte con_FF

off_B75F:
- D - I - 0x01376F 10:B75F: BE        .byte $BE
- D - I - 0x013770 10:B760: 38        .byte $38
- D - I - 0x013771 10:B761: B8        .byte $B8
- D - I - 0x013772 10:B762: BF        .byte $BF
- D - I - 0x013773 10:B763: 3C        .byte $3C
- D - I - 0x013774 10:B764: BB        .byte $BB
- D - I - 0x013775 10:B765: 00        .byte $00
- D - I - 0x013776 10:B766: C1        .byte $C1
- D - I - 0x013777 10:B767: A0        .byte $A0
- D - I - 0x013778 10:B768: 38        .byte $38
- D - I - 0x013779 10:B769: BC        .byte $BC
off_B76A:
- D - I - 0x01377A 10:B76A: BC        .byte $BC
- D - I - 0x01377B 10:B76B: 08        .byte $08
- D - I - 0x01377C 10:B76C: C8        .byte $C8
- D - I - 0x01377D 10:B76D: 0C        .byte $0C
- D - I - 0x01377E 10:B76E: CA        .byte $CA
- D - I - 0x01377F 10:B76F: BD        .byte $BD
- D - I - 0x013780 10:B770: 36        .byte $36
- D - I - 0x013781 10:B771: A7        .byte $A7
- D - I - 0x013782 10:B772: 3A        .byte $3A
- D - I - 0x013783 10:B773: AD        .byte $AD
- D - I - 0x013784 10:B774: 3E        .byte $3E
- D - I - 0x013785 10:B775: AF        .byte $AF
- D - I - 0x013786 10:B776: BE        .byte $BE
- D - I - 0x013787 10:B777: 32        .byte $32
- D - I - 0x013788 10:B778: B0        .byte $B0
- D - I - 0x013789 10:B779: 36        .byte $36
- D - I - 0x01378A 10:B77A: B2        .byte $B2
- D - I - 0x01378B 10:B77B: 3F        .byte $3F
- D - I - 0x01378C 10:B77C: BA        .byte $BA
- D - I - 0x01378D 10:B77D: 00        .byte $00
- D - I - 0x01378E 10:B77E: C0        .byte $C0
- D - I - 0x01378F 10:B77F: 04        .byte $04
- D - I - 0x013790 10:B780: C2        .byte $C2
- D - I - 0x013791 10:B781: BF        .byte $BF
- D - I - 0x013792 10:B782: 32        .byte $32
- D - I - 0x013793 10:B783: B1        .byte $B1
- D - I - 0x013794 10:B784: 37        .byte $37
- D - I - 0x013795 10:B785: 01        .byte $01
- D - I - 0x013796 10:B786: 38        .byte $38
- D - I - 0x013797 10:B787: B9        .byte $B9
- D - I - 0x013798 10:B788: 04        .byte $04
- D - I - 0x013799 10:B789: C3        .byte $C3
- D - I - 0x01379A 10:B78A: A0        .byte $A0
- D - I - 0x01379B 10:B78B: 32        .byte $32
- D - I - 0x01379C 10:B78C: B4        .byte $B4
- D - I - 0x01379D 10:B78D: 37        .byte $37
- D - I - 0x01379E 10:B78E: 01        .byte $01
- D - I - 0x01379F 10:B78F: 3F        .byte $3F
- D - I - 0x0137A0 10:B790: BE        .byte $BE
- D - I - 0x0137A1 10:B791: 00        .byte $00
- D - I - 0x0137A2 10:B792: C4        .byte $C4
- D - I - 0x0137A3 10:B793: 04        .byte $04
- D - I - 0x0137A4 10:B794: C6        .byte $C6
- D - I - 0x0137A5 10:B795: A1        .byte $A1
- D - I - 0x0137A6 10:B796: 33        .byte $33
- D - I - 0x0137A7 10:B797: B5        .byte $B5
- D - I - 0x0137A8 10:B798: 36        .byte $36
- D - I - 0x0137A9 10:B799: B7        .byte $B7
- D - I - 0x0137AA 10:B79A: 38        .byte $38
- D - I - 0x0137AB 10:B79B: BD        .byte $BD
- D - I - 0x0137AC 10:B79C: 3C        .byte $3C
- D - I - 0x0137AD 10:B79D: BF        .byte $BF
- D - I - 0x0137AE 10:B79E: 00        .byte $00
- D - I - 0x0137AF 10:B79F: C5        .byte $C5
- D - I - 0x0137B0 10:B7A0: A2        .byte $A2
- D - I - 0x0137B1 10:B7A1: 3B        .byte $3B
- D - I - 0x0137B2 10:B7A2: B3        .byte $B3
- D - I - 0x0137B3 10:B7A3: 3F        .byte $3F
- D - I - 0x0137B4 10:B7A4: B3        .byte $B3
- D - I - 0x0137B5 10:B7A5: 03        .byte $03
- D - I - 0x0137B6 10:B7A6: B6        .byte $B6
- D - I - 0x0137B7 10:B7A7: 05        .byte $05
- D - I - 0x0137B8 10:B7A8: D8        .byte $D8
- D - I - 0x0137B9 10:B7A9: A3        .byte $A3
- D - I - 0x0137BA 10:B7AA: 08        .byte $08
- D - I - 0x0137BB 10:B7AB: D1        .byte $D1
- D - I - 0x0137BC 10:B7AC: 0C        .byte $0C
- D - I - 0x0137BD 10:B7AD: D3        .byte $D3
- D - I - 0x0137BE 10:B7AE: FF        .byte con_FF

off_B7AF:
- D - I - 0x0137BF 10:B7AF: BE        .byte $BE
- D - I - 0x0137C0 10:B7B0: 38        .byte $38
- D - I - 0x0137C1 10:B7B1: D4        .byte $D4
- D - I - 0x0137C2 10:B7B2: BF        .byte $BF
- D - I - 0x0137C3 10:B7B3: 3C        .byte $3C
- D - I - 0x0137C4 10:B7B4: D6        .byte $D6
- D - I - 0x0137C5 10:B7B5: 03        .byte $03
- D - I - 0x0137C6 10:B7B6: D7        .byte $D7
- D - I - 0x0137C7 10:B7B7: A0        .byte $A0
- D - I - 0x0137C8 10:B7B8: 38        .byte $38
- D - I - 0x0137C9 10:B7B9: D5        .byte $D5
- D - I - 0x0137CA 10:B7BA: FB        .byte con_jmp
- D - I - 0x0137CB 10:B7BB: 6A B7     .word off_B76A

off_B7BD:
- D - I - 0x0137CD 10:B7BD: BD        .byte $BD
- D - I - 0x0137CE 10:B7BE: 09        .byte $09
- D - I - 0x0137CF 10:B7BF: C9        .byte $C9
- D - I - 0x0137D0 10:B7C0: 0D        .byte $0D
- D - I - 0x0137D1 10:B7C1: CB        .byte $CB
- D - I - 0x0137D2 10:B7C2: BE        .byte $BE
- D - I - 0x0137D3 10:B7C3: 09        .byte $09
- D - I - 0x0137D4 10:B7C4: CC        .byte $CC
- D - I - 0x0137D5 10:B7C5: 0F        .byte $0F
- D - I - 0x0137D6 10:B7C6: 01        .byte $01
- D - I - 0x0137D7 10:B7C7: BF        .byte $BF
- D - I - 0x0137D8 10:B7C8: 0B        .byte $0B
- D - I - 0x0137D9 10:B7C9: CD        .byte $CD
- D - I - 0x0137DA 10:B7CA: 0F        .byte $0F
- D - I - 0x0137DB 10:B7CB: 01        .byte $01
- D - I - 0x0137DC 10:B7CC: A0        .byte $A0
- D - I - 0x0137DD 10:B7CD: 0B        .byte $0B
- D - I - 0x0137DE 10:B7CE: CE        .byte $CE
- D - I - 0x0137DF 10:B7CF: 0F        .byte $0F
- D - I - 0x0137E0 10:B7D0: 01        .byte $01
- D - I - 0x0137E1 10:B7D1: A1        .byte $A1
- D - I - 0x0137E2 10:B7D2: 05        .byte $05
- D - I - 0x0137E3 10:B7D3: C7        .byte $C7
- D - I - 0x0137E4 10:B7D4: 09        .byte $09
- D - I - 0x0137E5 10:B7D5: CF        .byte $CF
- D - I - 0x0137E6 10:B7D6: 0F        .byte $0F
- D - I - 0x0137E7 10:B7D7: 01        .byte $01
- D - I - 0x0137E8 10:B7D8: A2        .byte $A2
- D - I - 0x0137E9 10:B7D9: 09        .byte $09
- D - I - 0x0137EA 10:B7DA: D0        .byte $D0
- D - I - 0x0137EB 10:B7DB: 0F        .byte $0F
- D - I - 0x0137EC 10:B7DC: D2        .byte $D2
- D - I - 0x0137ED 10:B7DD: FE        .byte con_FE

off_B7DE:
- D - I - 0x0137EE 10:B7DE: BD        .byte $BD
- D - I - 0x0137EF 10:B7DF: 0A        .byte $0A
- D - I - 0x0137F0 10:B7E0: D9        .byte $D9
- D - I - 0x0137F1 10:B7E1: 0E        .byte $0E
- D - I - 0x0137F2 10:B7E2: DC        .byte $DC
- D - I - 0x0137F3 10:B7E3: BE        .byte $BE
- D - I - 0x0137F4 10:B7E4: 0A        .byte $0A
- D - I - 0x0137F5 10:B7E5: DA        .byte $DA
- D - I - 0x0137F6 10:B7E6: 0D        .byte $0D
- D - I - 0x0137F7 10:B7E7: 02        .byte $02
- D - I - 0x0137F8 10:B7E8: BF        .byte $BF
- D - I - 0x0137F9 10:B7E9: 09        .byte $09
- D - I - 0x0137FA 10:B7EA: DB        .byte $DB
- D - I - 0x0137FB 10:B7EB: 0D        .byte $0D
- D - I - 0x0137FC 10:B7EC: 02        .byte $02
- D - I - 0x0137FD 10:B7ED: A0        .byte $A0
- D - I - 0x0137FE 10:B7EE: 09        .byte $09
- D - I - 0x0137FF 10:B7EF: DE        .byte $DE
- D - I - 0x013800 10:B7F0: 0D        .byte $0D
- D - I - 0x013801 10:B7F1: 02        .byte $02
- D - I - 0x013802 10:B7F2: A1        .byte $A1
- D - I - 0x013803 10:B7F3: 06        .byte $06
- D - I - 0x013804 10:B7F4: C7        .byte $C7
- D - I - 0x013805 10:B7F5: 0A        .byte $0A
- D - I - 0x013806 10:B7F6: DF        .byte $DF
- D - I - 0x013807 10:B7F7: 0D        .byte $0D
- D - I - 0x013808 10:B7F8: 02        .byte $02
- D - I - 0x013809 10:B7F9: A2        .byte $A2
- D - I - 0x01380A 10:B7FA: 0A        .byte $0A
- D - I - 0x01380B 10:B7FB: D0        .byte $D0
- D - I - 0x01380C 10:B7FC: 0D        .byte $0D
- D - I - 0x01380D 10:B7FD: DD        .byte $DD
- D - I - 0x01380E 10:B7FE: FE        .byte con_FE

off_B7FF:
- D - I - 0x01380F 10:B7FF: BD        .byte $BD
- D - I - 0x013810 10:B800: 9F        .byte $9F
- D - I - 0x013811 10:B801: C0        .byte $C0
- D - I - 0x013812 10:B802: 3B        .byte $3B
- D - I - 0x013813 10:B803: 82        .byte $82
- D - I - 0x013814 10:B804: BE        .byte $BE
- D - I - 0x013815 10:B805: 3B        .byte $3B
- D - I - 0x013816 10:B806: 88        .byte $88
- D - I - 0x013817 10:B807: 3C        .byte $3C
- D - I - 0x013818 10:B808: 8A        .byte $8A
- D - I - 0x013819 10:B809: BF        .byte $BF
- D - I - 0x01381A 10:B80A: 33        .byte $33
- D - I - 0x01381B 10:B80B: 81        .byte $81
- D - I - 0x01381C 10:B80C: 37        .byte $37
- D - I - 0x01381D 10:B80D: 83        .byte $83
- D - I - 0x01381E 10:B80E: 3B        .byte $3B
- D - I - 0x01381F 10:B80F: 89        .byte $89
- D - I - 0x013820 10:B810: 00        .byte $00
- D - I - 0x013821 10:B811: A1        .byte $A1
- D - I - 0x013822 10:B812: 04        .byte $04
- D - I - 0x013823 10:B813: A3        .byte $A3
- D - I - 0x013824 10:B814: 09        .byte $09
- D - I - 0x013825 10:B815: A9        .byte $A9
- D - I - 0x013826 10:B816: A0        .byte $A0
- D - I - 0x013827 10:B817: 33        .byte $33
- D - I - 0x013828 10:B818: 84        .byte $84
- D - I - 0x013829 10:B819: 37        .byte $37
- D - I - 0x01382A 10:B81A: 86        .byte $86
- D - I - 0x01382B 10:B81B: 3B        .byte $3B
- D - I - 0x01382C 10:B81C: 8C        .byte $8C
- D - I - 0x01382D 10:B81D: 3C        .byte $3C
- D - I - 0x01382E 10:B81E: 8E        .byte $8E
- D - I - 0x01382F 10:B81F: 0A        .byte $0A
- D - I - 0x013830 10:B820: AC        .byte $AC
- D - I - 0x013831 10:B821: A1        .byte $A1
- D - I - 0x013832 10:B822: 33        .byte $33
- D - I - 0x013833 10:B823: 85        .byte $85
- D - I - 0x013834 10:B824: 37        .byte $37
- D - I - 0x013835 10:B825: 3C        .byte $3C
- D - I - 0x013836 10:B826: 3B        .byte $3B
- D - I - 0x013837 10:B827: 8D        .byte $8D
- D - I - 0x013838 10:B828: 00        .byte $00
- D - I - 0x013839 10:B829: A5        .byte $A5
- D - I - 0x01383A 10:B82A: 04        .byte $04
- D - I - 0x01383B 10:B82B: A7        .byte $A7
- D - I - 0x01383C 10:B82C: 0A        .byte $0A
- D - I - 0x01383D 10:B82D: AD        .byte $AD
- D - I - 0x01383E 10:B82E: A2        .byte $A2
- D - I - 0x01383F 10:B82F: 37        .byte $37
- D - I - 0x013840 10:B830: 92        .byte $92
- D - I - 0x013841 10:B831: 3B        .byte $3B
- D - I - 0x013842 10:B832: 98        .byte $98
- D - I - 0x013843 10:B833: 3C        .byte $3C
- D - I - 0x013844 10:B834: 9A        .byte $9A
- D - I - 0x013845 10:B835: 00        .byte $00
- D - I - 0x013846 10:B836: B0        .byte $B0
off_B837:
- D - I - 0x013847 10:B837: 05        .byte $05
- D - I - 0x013848 10:B838: B2        .byte $B2
off_B839:
- D - I - 0x013849 10:B839: 09        .byte $09
- D - I - 0x01384A 10:B83A: B8        .byte $B8
- D - I - 0x01384B 10:B83B: 0D        .byte $0D
- D - I - 0x01384C 10:B83C: 3C        .byte $3C
- D - I - 0x01384D 10:B83D: BD        .byte $BD
- D - I - 0x01384E 10:B83E: 09        .byte $09
- D - I - 0x01384F 10:B83F: A0        .byte $A0
- D - I - 0x013850 10:B840: 0D        .byte $0D
- D - I - 0x013851 10:B841: A2        .byte $A2
- D - I - 0x013852 10:B842: BE        .byte $BE
- D - I - 0x013853 10:B843: 09        .byte $09
- D - I - 0x013854 10:B844: A8        .byte $A8
- D - I - 0x013855 10:B845: 0D        .byte $0D
- D - I - 0x013856 10:B846: AA        .byte $AA
- D - I - 0x013857 10:B847: BF        .byte $BF
- D - I - 0x013858 10:B848: 0D        .byte $0D
- D - I - 0x013859 10:B849: 3C        .byte $3C
- D - I - 0x01385A 10:B84A: A0        .byte $A0
- D - I - 0x01385B 10:B84B: 0D        .byte $0D
- D - I - 0x01385C 10:B84C: 3C        .byte $3C
- D - I - 0x01385D 10:B84D: A1        .byte $A1
- D - I - 0x01385E 10:B84E: 0D        .byte $0D
- D - I - 0x01385F 10:B84F: 3C        .byte $3C
- D - I - 0x013860 10:B850: A3        .byte $A3
- D - I - 0x013861 10:B851: 09        .byte $09
- D - I - 0x013862 10:B852: AF        .byte $AF
- D - I - 0x013863 10:B853: 0D        .byte $0D
- D - I - 0x013864 10:B854: AB        .byte $AB
- D - I - 0x013865 10:B855: A4        .byte $A4
- D - I - 0x013866 10:B856: 09        .byte $09
- D - I - 0x013867 10:B857: BA        .byte $BA
- D - I - 0x013868 10:B858: 0D        .byte $0D
- D - I - 0x013869 10:B859: AE        .byte $AE
- D - I - 0x01386A 10:B85A: FF        .byte con_FF

off_B85B:
- D - I - 0x01386B 10:B85B: BE        .byte $BE
- D - I - 0x01386C 10:B85C: 36        .byte $36
- D - I - 0x01386D 10:B85D: B9        .byte $B9
- D - I - 0x01386E 10:B85E: 3A        .byte $3A
- D - I - 0x01386F 10:B85F: BB        .byte $BB
- D - I - 0x013870 10:B860: BF        .byte $BF
- D - I - 0x013871 10:B861: 32        .byte $32
- D - I - 0x013872 10:B862: 81        .byte $81
- D - I - 0x013873 10:B863: 36        .byte $36
- D - I - 0x013874 10:B864: 91        .byte $91
- D - I - 0x013875 10:B865: 00        .byte $00
- D - I - 0x013876 10:B866: 9B        .byte $9B
- D - I - 0x013877 10:B867: 04        .byte $04
- D - I - 0x013878 10:B868: B1        .byte $B1
- D - I - 0x013879 10:B869: 09        .byte $09
- D - I - 0x01387A 10:B86A: B3        .byte $B3
- D - I - 0x01387B 10:B86B: A0        .byte $A0
- D - I - 0x01387C 10:B86C: 32        .byte $32
- D - I - 0x01387D 10:B86D: 84        .byte $84
- D - I - 0x01387E 10:B86E: 36        .byte $36
- D - I - 0x01387F 10:B86F: 94        .byte $94
- D - I - 0x013880 10:B870: 3A        .byte $3A
- D - I - 0x013881 10:B871: 96        .byte $96
- D - I - 0x013882 10:B872: 04        .byte $04
- D - I - 0x013883 10:B873: B4        .byte $B4
- D - I - 0x013884 10:B874: 09        .byte $09
- D - I - 0x013885 10:B875: B6        .byte $B6
- D - I - 0x013886 10:B876: A1        .byte $A1
- D - I - 0x013887 10:B877: 32        .byte $32
- D - I - 0x013888 10:B878: 90        .byte $90
- D - I - 0x013889 10:B879: 36        .byte $36
- D - I - 0x01388A 10:B87A: 3C        .byte $3C
- D - I - 0x01388B 10:B87B: 00        .byte $00
- D - I - 0x01388C 10:B87C: A5        .byte $A5
- D - I - 0x01388D 10:B87D: 04        .byte $04
- D - I - 0x01388E 10:B87E: A7        .byte $A7
- D - I - 0x01388F 10:B87F: 09        .byte $09
- D - I - 0x013890 10:B880: B7        .byte $B7
- D - I - 0x013891 10:B881: A2        .byte $A2
- D - I - 0x013892 10:B882: 36        .byte $36
- D - I - 0x013893 10:B883: BC        .byte $BC
- D - I - 0x013894 10:B884: 3A        .byte $3A
- D - I - 0x013895 10:B885: 95        .byte $95
- D - I - 0x013896 10:B886: 3C        .byte $3C
- D - I - 0x013897 10:B887: 9F        .byte $9F
- D - I - 0x013898 10:B888: 02        .byte $02
- D - I - 0x013899 10:B889: B5        .byte $B5
- D - I - 0x01389A 10:B88A: FB        .byte con_jmp
- D - I - 0x01389B 10:B88B: 37 B8     .word off_B837

off_B88D:
- D - I - 0x01389D 10:B88D: BC        .byte $BC
- D - I - 0x01389E 10:B88E: 09        .byte $09
- D - I - 0x01389F 10:B88F: 78        .byte $78
- D - I - 0x0138A0 10:B890: 0D        .byte $0D
- D - I - 0x0138A1 10:B891: 7A        .byte $7A
- D - I - 0x0138A2 10:B892: BD        .byte $BD
- D - I - 0x0138A3 10:B893: 36        .byte $36
- D - I - 0x0138A4 10:B894: 02        .byte $02
- D - I - 0x0138A5 10:B895: 3A        .byte $3A
- D - I - 0x0138A6 10:B896: 14        .byte $14
- D - I - 0x0138A7 10:B897: 09        .byte $09
- D - I - 0x0138A8 10:B898: 79        .byte $79
- D - I - 0x0138A9 10:B899: 0D        .byte $0D
- D - I - 0x0138AA 10:B89A: 7B        .byte $7B
- D - I - 0x0138AB 10:B89B: BE        .byte $BE
- D - I - 0x0138AC 10:B89C: 32        .byte $32
- D - I - 0x0138AD 10:B89D: 60        .byte $60
- D - I - 0x0138AE 10:B89E: 36        .byte $36
- D - I - 0x0138AF 10:B89F: 62        .byte $62
- D - I - 0x0138B0 10:B8A0: 00        .byte $00
- D - I - 0x0138B1 10:B8A1: 70        .byte $70
- D - I - 0x0138B2 10:B8A2: 07        .byte $07
- D - I - 0x0138B3 10:B8A3: 72        .byte $72
- D - I - 0x0138B4 10:B8A4: 09        .byte $09
- D - I - 0x0138B5 10:B8A5: 5A        .byte $5A
- D - I - 0x0138B6 10:B8A6: 0D        .byte $0D
- D - I - 0x0138B7 10:B8A7: 01        .byte $01
- D - I - 0x0138B8 10:B8A8: BF        .byte $BF
- D - I - 0x0138B9 10:B8A9: 32        .byte $32
- D - I - 0x0138BA 10:B8AA: 61        .byte $61
- D - I - 0x0138BB 10:B8AB: 36        .byte $36
- D - I - 0x0138BC 10:B8AC: 63        .byte $63
- D - I - 0x0138BD 10:B8AD: 04        .byte $04
- D - I - 0x0138BE 10:B8AE: 73        .byte $73
- D - I - 0x0138BF 10:B8AF: 0B        .byte $0B
- D - I - 0x0138C0 10:B8B0: 5B        .byte $5B
- D - I - 0x0138C1 10:B8B1: 0D        .byte $0D
- D - I - 0x0138C2 10:B8B2: 01        .byte $01
- D - I - 0x0138C3 10:B8B3: A0        .byte $A0
- D - I - 0x0138C4 10:B8B4: 32        .byte $32
- D - I - 0x0138C5 10:B8B5: 64        .byte $64
- D - I - 0x0138C6 10:B8B6: 36        .byte $36
- D - I - 0x0138C7 10:B8B7: 66        .byte $66
- D - I - 0x0138C8 10:B8B8: 00        .byte $00
- D - I - 0x0138C9 10:B8B9: 74        .byte $74
- D - I - 0x0138CA 10:B8BA: 04        .byte $04
- D - I - 0x0138CB 10:B8BB: 76        .byte $76
- D - I - 0x0138CC 10:B8BC: 0B        .byte $0B
- D - I - 0x0138CD 10:B8BD: 5E        .byte $5E
- D - I - 0x0138CE 10:B8BE: 0D        .byte $0D
- D - I - 0x0138CF 10:B8BF: 01        .byte $01
- D - I - 0x0138D0 10:B8C0: A1        .byte $A1
- D - I - 0x0138D1 10:B8C1: 32        .byte $32
- D - I - 0x0138D2 10:B8C2: 65        .byte $65
- D - I - 0x0138D3 10:B8C3: 37        .byte $37
- D - I - 0x0138D4 10:B8C4: 67        .byte $67
- D - I - 0x0138D5 10:B8C5: 3A        .byte $3A
- D - I - 0x0138D6 10:B8C6: 6D        .byte $6D
- D - I - 0x0138D7 10:B8C7: 3C        .byte $3C
- D - I - 0x0138D8 10:B8C8: 34        .byte $34
- D - I - 0x0138D9 10:B8C9: 00        .byte $00
- D - I - 0x0138DA 10:B8CA: 75        .byte $75
- D - I - 0x0138DB 10:B8CB: 05        .byte $05
- D - I - 0x0138DC 10:B8CC: 77        .byte $77
- D - I - 0x0138DD 10:B8CD: 09        .byte $09
- D - I - 0x0138DE 10:B8CE: 5F        .byte $5F
- D - I - 0x0138DF 10:B8CF: 0D        .byte $0D
- D - I - 0x0138E0 10:B8D0: 01        .byte $01
- D - I - 0x0138E1 10:B8D1: A2        .byte $A2
- D - I - 0x0138E2 10:B8D2: 09        .byte $09
- D - I - 0x0138E3 10:B8D3: 7C        .byte $7C
- D - I - 0x0138E4 10:B8D4: 0D        .byte $0D
- D - I - 0x0138E5 10:B8D5: 7E        .byte $7E
- D - I - 0x0138E6 10:B8D6: A3        .byte $A3
- D - I - 0x0138E7 10:B8D7: 09        .byte $09
- D - I - 0x0138E8 10:B8D8: 7D        .byte $7D
- D - I - 0x0138E9 10:B8D9: 0D        .byte $0D
- D - I - 0x0138EA 10:B8DA: 7F        .byte $7F
- D - I - 0x0138EB 10:B8DB: FF        .byte con_FF

off_B8DC:
- D - I - 0x0138EC 10:B8DC: BD        .byte $BD
- D - I - 0x0138ED 10:B8DD: 36        .byte $36
- D - I - 0x0138EE 10:B8DE: 02        .byte $02
- D - I - 0x0138EF 10:B8DF: 3A        .byte $3A
- D - I - 0x0138F0 10:B8E0: 14        .byte $14
- D - I - 0x0138F1 10:B8E1: BE        .byte $BE
- D - I - 0x0138F2 10:B8E2: 32        .byte $32
- D - I - 0x0138F3 10:B8E3: 04        .byte $04
- D - I - 0x0138F4 10:B8E4: 36        .byte $36
- D - I - 0x0138F5 10:B8E5: 03        .byte $03
- D - I - 0x0138F6 10:B8E6: BF        .byte $BF
- D - I - 0x0138F7 10:B8E7: 32        .byte $32
- D - I - 0x0138F8 10:B8E8: 05        .byte $05
- D - I - 0x0138F9 10:B8E9: 36        .byte $36
- D - I - 0x0138FA 10:B8EA: 06        .byte $06
- D - I - 0x0138FB 10:B8EB: 04        .byte $04
- D - I - 0x0138FC 10:B8EC: 31        .byte $31
- D - I - 0x0138FD 10:B8ED: 05        .byte $05
- D - I - 0x0138FE 10:B8EE: 33        .byte $33
- D - I - 0x0138FF 10:B8EF: A0        .byte $A0
- D - I - 0x013900 10:B8F0: 32        .byte $32
- D - I - 0x013901 10:B8F1: 10        .byte $10
- D - I - 0x013902 10:B8F2: 36        .byte $36
- D - I - 0x013903 10:B8F3: 07        .byte $07
- D - I - 0x013904 10:B8F4: 04        .byte $04
- D - I - 0x013905 10:B8F5: 22        .byte $22
- D - I - 0x013906 10:B8F6: 05        .byte $05
- D - I - 0x013907 10:B8F7: 28        .byte $28
- D - I - 0x013908 10:B8F8: A1        .byte $A1
- D - I - 0x013909 10:B8F9: 32        .byte $32
- D - I - 0x01390A 10:B8FA: 11        .byte $11
- D - I - 0x01390B 10:B8FB: 37        .byte $37
- D - I - 0x01390C 10:B8FC: 12        .byte $12
- D - I - 0x01390D 10:B8FD: 3A        .byte $3A
- D - I - 0x01390E 10:B8FE: 0D        .byte $0D
off_B8FF:
- D - I - 0x01390F 10:B8FF: 05        .byte $05
- D - I - 0x013910 10:B900: 29        .byte $29
- D - I - 0x013911 10:B901: 09        .byte $09
- D - I - 0x013912 10:B902: 2B        .byte $2B
- D - I - 0x013913 10:B903: 0D        .byte $0D
- D - I - 0x013914 10:B904: 3C        .byte $3C
- D - I - 0x013915 10:B905: BC        .byte $BC
- D - I - 0x013916 10:B906: 09        .byte $09
- D - I - 0x013917 10:B907: 2C        .byte $2C
- D - I - 0x013918 10:B908: 0D        .byte $0D
- D - I - 0x013919 10:B909: 3A        .byte $3A
- D - I - 0x01391A 10:B90A: BD        .byte $BD
- D - I - 0x01391B 10:B90B: 09        .byte $09
- D - I - 0x01391C 10:B90C: 2D        .byte $2D
- D - I - 0x01391D 10:B90D: 0D        .byte $0D
- D - I - 0x01391E 10:B90E: 3B        .byte $3B
- D - I - 0x01391F 10:B90F: BE        .byte $BE
- D - I - 0x013920 10:B910: 05        .byte $05
- D - I - 0x013921 10:B911: 32        .byte $32
- D - I - 0x013922 10:B912: 09        .byte $09
- D - I - 0x013923 10:B913: 38        .byte $38
- D - I - 0x013924 10:B914: 0D        .byte $0D
- D - I - 0x013925 10:B915: 36        .byte $36
- D - I - 0x013926 10:B916: BF        .byte $BF
- D - I - 0x013927 10:B917: 09        .byte $09
- D - I - 0x013928 10:B918: 39        .byte $39
- D - I - 0x013929 10:B919: 0D        .byte $0D
- D - I - 0x01392A 10:B91A: 37        .byte $37
- D - I - 0x01392B 10:B91B: A0        .byte $A0
- D - I - 0x01392C 10:B91C: 09        .byte $09
- D - I - 0x01392D 10:B91D: 2A        .byte $2A
- D - I - 0x01392E 10:B91E: 0D        .byte $0D
- D - I - 0x01392F 10:B91F: 3C        .byte $3C
- D - I - 0x013930 10:B920: A2        .byte $A2
- D - I - 0x013931 10:B921: 09        .byte $09
- D - I - 0x013932 10:B922: 2E        .byte $2E
- D - I - 0x013933 10:B923: 0D        .byte $0D
- D - I - 0x013934 10:B924: 3D        .byte $3D
- D - I - 0x013935 10:B925: A3        .byte $A3
- D - I - 0x013936 10:B926: 09        .byte $09
- D - I - 0x013937 10:B927: 2F        .byte $2F
- D - I - 0x013938 10:B928: 0D        .byte $0D
- D - I - 0x013939 10:B929: 3E        .byte $3E
- D - I - 0x01393A 10:B92A: FF        .byte con_FF


; bzk
- - - - - 0x01393B 10:B92B: 33        .byte $33
- - - - - 0x01393C 10:B92C: E7        .byte $E7
- - - - - 0x01393D 10:B92D: 37        .byte $37
- - - - - 0x01393E 10:B92E: ED        .byte $ED
- - - - - 0x01393F 10:B92F: 3B        .byte $3B
- - - - - 0x013940 10:B930: EF        .byte $EF
- - - - - 0x013941 10:B931: BD        .byte $BD
- - - - - 0x013942 10:B932: 33        .byte $33
- - - - - 0x013943 10:B933: E2        .byte $E2
- - - - - 0x013944 10:B934: 37        .byte $37
- - - - - 0x013945 10:B935: E8        .byte $E8
- - - - - 0x013946 10:B936: 3B        .byte $3B
- - - - - 0x013947 10:B937: EA        .byte $EA
- - - - - 0x013948 10:B938: BE        .byte $BE
- - - - - 0x013949 10:B939: 33        .byte $33
- - - - - 0x01394A 10:B93A: E3        .byte $E3
- - - - - 0x01394B 10:B93B: 37        .byte $37
- - - - - 0x01394C 10:B93C: E9        .byte $E9
- - - - - 0x01394D 10:B93D: 3B        .byte $3B
- - - - - 0x01394E 10:B93E: EB        .byte $EB
- - - - - 0x01394F 10:B93F: A2        .byte $A2
- - - - - 0x013950 10:B940: 33        .byte $33
- - - - - 0x013951 10:B941: E6        .byte $E6
- - - - - 0x013952 10:B942: 37        .byte $37
- - - - - 0x013953 10:B943: EC        .byte $EC
- - - - - 0x013954 10:B944: 3B        .byte $3B
- - - - - 0x013955 10:B945: EE        .byte $EE
- - - - - 0x013956 10:B946: FF        .byte con_FF

off_B947:
- D - I - 0x013957 10:B947: BE        .byte $BE
- D - I - 0x013958 10:B948: 3A        .byte $3A
- D - I - 0x013959 10:B949: 0A        .byte $0A
- D - I - 0x01395A 10:B94A: 3E        .byte $3E
- D - I - 0x01395B 10:B94B: 04        .byte $04
- D - I - 0x01395C 10:B94C: 02        .byte $02
- D - I - 0x01395D 10:B94D: 06        .byte $06
- D - I - 0x01395E 10:B94E: 06        .byte $06
- D - I - 0x01395F 10:B94F: 0C        .byte $0C
- D - I - 0x013960 10:B950: 0A        .byte $0A
- D - I - 0x013961 10:B951: 0E        .byte $0E
- D - I - 0x013962 10:B952: BF        .byte $BF
- D - I - 0x013963 10:B953: 36        .byte $36
- D - I - 0x013964 10:B954: 08        .byte $08
- D - I - 0x013965 10:B955: 3A        .byte $3A
- D - I - 0x013966 10:B956: 0B        .byte $0B
- D - I - 0x013967 10:B957: 02        .byte $02
- D - I - 0x013968 10:B958: 07        .byte $07
- D - I - 0x013969 10:B959: 03        .byte $03
- D - I - 0x01396A 10:B95A: 30        .byte $30
- D - I - 0x01396B 10:B95B: 06        .byte $06
- D - I - 0x01396C 10:B95C: 0D        .byte $0D
- D - I - 0x01396D 10:B95D: 0A        .byte $0A
- D - I - 0x01396E 10:B95E: 0F        .byte $0F
- D - I - 0x01396F 10:B95F: A0        .byte $A0
- D - I - 0x013970 10:B960: 36        .byte $36
- D - I - 0x013971 10:B961: 09        .byte $09
- D - I - 0x013972 10:B962: 3A        .byte $3A
- D - I - 0x013973 10:B963: 02        .byte $02
- D - I - 0x013974 10:B964: 02        .byte $02
- D - I - 0x013975 10:B965: 12        .byte $12
- D - I - 0x013976 10:B966: 0A        .byte $0A
- D - I - 0x013977 10:B967: 1A        .byte $1A
- D - I - 0x013978 10:B968: A1        .byte $A1
- D - I - 0x013979 10:B969: 36        .byte $36
- D - I - 0x01397A 10:B96A: 15        .byte $15
- D - I - 0x01397B 10:B96B: 3A        .byte $3A
- D - I - 0x01397C 10:B96C: 02        .byte $02
- D - I - 0x01397D 10:B96D: 06        .byte $06
- D - I - 0x01397E 10:B96E: 19        .byte $19
- D - I - 0x01397F 10:B96F: 0A        .byte $0A
- D - I - 0x013980 10:B970: 1B        .byte $1B
- D - I - 0x013981 10:B971: A2        .byte $A2
- D - I - 0x013982 10:B972: 36        .byte $36
- D - I - 0x013983 10:B973: 28        .byte $28
- D - I - 0x013984 10:B974: 3A        .byte $3A
- D - I - 0x013985 10:B975: 2A        .byte $2A
- D - I - 0x013986 10:B976: 3E        .byte $3E
- D - I - 0x013987 10:B977: 14        .byte $14
- D - I - 0x013988 10:B978: 02        .byte $02
- D - I - 0x013989 10:B979: 16        .byte $16
- D - I - 0x01398A 10:B97A: 06        .byte $06
- D - I - 0x01398B 10:B97B: 1C        .byte $1C
- D - I - 0x01398C 10:B97C: 0A        .byte $0A
- D - I - 0x01398D 10:B97D: 1E        .byte $1E
- D - I - 0x01398E 10:B97E: 09        .byte $09
- D - I - 0x01398F 10:B97F: 2F        .byte $2F
- D - I - 0x013990 10:B980: A3        .byte $A3
- D - I - 0x013991 10:B981: 02        .byte $02
- D - I - 0x013992 10:B982: 17        .byte $17
- D - I - 0x013993 10:B983: 06        .byte $06
- D - I - 0x013994 10:B984: 1D        .byte $1D
- D - I - 0x013995 10:B985: 0A        .byte $0A
- D - I - 0x013996 10:B986: 1F        .byte $1F
off_B987:
- D - I - 0x013997 10:B987: BD        .byte $BD
- D - I - 0x013998 10:B988: 0D        .byte $0D
- D - I - 0x013999 10:B989: 22        .byte $22
- D - I - 0x01399A 10:B98A: BE        .byte $BE
- D - I - 0x01399B 10:B98B: 0D        .byte $0D
- D - I - 0x01399C 10:B98C: 23        .byte $23
- D - I - 0x01399D 10:B98D: BF        .byte $BF
- D - I - 0x01399E 10:B98E: 0D        .byte $0D
- D - I - 0x01399F 10:B98F: 20        .byte $20
- D - I - 0x0139A0 10:B990: A0        .byte $A0
- D - I - 0x0139A1 10:B991: 0C        .byte $0C
- D - I - 0x0139A2 10:B992: 21        .byte $21
- D - I - 0x0139A3 10:B993: A1        .byte $A1
- D - I - 0x0139A4 10:B994: 0C        .byte $0C
- D - I - 0x0139A5 10:B995: 24        .byte $24
- D - I - 0x0139A6 10:B996: A2        .byte $A2
- D - I - 0x0139A7 10:B997: 0D        .byte $0D
- D - I - 0x0139A8 10:B998: 25        .byte $25
- D - I - 0x0139A9 10:B999: A3        .byte $A3
- D - I - 0x0139AA 10:B99A: 0D        .byte $0D
- D - I - 0x0139AB 10:B99B: 26        .byte $26
- D - I - 0x0139AC 10:B99C: A4        .byte $A4
- D - I - 0x0139AD 10:B99D: 0D        .byte $0D
- D - I - 0x0139AE 10:B99E: 27        .byte $27
- D - I - 0x0139AF 10:B99F: FF        .byte con_FF

off_B9A0:
- D - I - 0x0139B0 10:B9A0: BE        .byte $BE
- D - I - 0x0139B1 10:B9A1: 36        .byte $36
- D - I - 0x0139B2 10:B9A2: 38        .byte $38
- D - I - 0x0139B3 10:B9A3: 3A        .byte $3A
- D - I - 0x0139B4 10:B9A4: 3A        .byte $3A
- D - I - 0x0139B5 10:B9A5: 3E        .byte $3E
- D - I - 0x0139B6 10:B9A6: 52        .byte $52
- D - I - 0x0139B7 10:B9A7: BF        .byte $BF
- D - I - 0x0139B8 10:B9A8: 36        .byte $36
- D - I - 0x0139B9 10:B9A9: 39        .byte $39
- D - I - 0x0139BA 10:B9AA: FE        .byte con_FE

off_B9AB:
- D - I - 0x0139BB 10:B9AB: 3A        .byte $3A
- D - I - 0x0139BC 10:B9AC: 3B        .byte $3B
- D - I - 0x0139BD 10:B9AD: 3E        .byte $3E
- D - I - 0x0139BE 10:B9AE: 40        .byte $40
- D - I - 0x0139BF 10:B9AF: 3F        .byte $3F
- D - I - 0x0139C0 10:B9B0: 02        .byte $02
- D - I - 0x0139C1 10:B9B1: 02        .byte $02
- D - I - 0x0139C2 10:B9B2: 42        .byte $42
- D - I - 0x0139C3 10:B9B3: 03        .byte $03
- D - I - 0x0139C4 10:B9B4: 5D        .byte $5D
- D - I - 0x0139C5 10:B9B5: A0        .byte $A0
- D - I - 0x0139C6 10:B9B6: 36        .byte $36
- D - I - 0x0139C7 10:B9B7: 3C        .byte $3C
- D - I - 0x0139C8 10:B9B8: 3A        .byte $3A
- D - I - 0x0139C9 10:B9B9: 3E        .byte $3E
- D - I - 0x0139CA 10:B9BA: 3E        .byte $3E
- D - I - 0x0139CB 10:B9BB: 41        .byte $41
- D - I - 0x0139CC 10:B9BC: 02        .byte $02
- D - I - 0x0139CD 10:B9BD: 43        .byte $43
- D - I - 0x0139CE 10:B9BE: A1        .byte $A1
- D - I - 0x0139CF 10:B9BF: 36        .byte $36
- D - I - 0x0139D0 10:B9C0: 3D        .byte $3D
- D - I - 0x0139D1 10:B9C1: 3A        .byte $3A
- D - I - 0x0139D2 10:B9C2: 3F        .byte $3F
- D - I - 0x0139D3 10:B9C3: 3E        .byte $3E
- D - I - 0x0139D4 10:B9C4: 44        .byte $44
- D - I - 0x0139D5 10:B9C5: 3F        .byte $3F
- D - I - 0x0139D6 10:B9C6: 02        .byte $02
- D - I - 0x0139D7 10:B9C7: 02        .byte $02
- D - I - 0x0139D8 10:B9C8: 46        .byte $46
- D - I - 0x0139D9 10:B9C9: 03        .byte $03
- D - I - 0x0139DA 10:B9CA: 02        .byte $02
- D - I - 0x0139DB 10:B9CB: A2        .byte $A2
- D - I - 0x0139DC 10:B9CC: 36        .byte $36
- D - I - 0x0139DD 10:B9CD: 34        .byte $34
- D - I - 0x0139DE 10:B9CE: 3A        .byte $3A
- D - I - 0x0139DF 10:B9CF: 36        .byte $36
- D - I - 0x0139E0 10:B9D0: 3E        .byte $3E
- D - I - 0x0139E1 10:B9D1: 45        .byte $45
off_B9D2:
- D - I - 0x0139E2 10:B9D2: BF        .byte $BF
- D - I - 0x0139E3 10:B9D3: 06        .byte $06
- D - I - 0x0139E4 10:B9D4: 48        .byte $48
- D - I - 0x0139E5 10:B9D5: 0A        .byte $0A
- D - I - 0x0139E6 10:B9D6: 4A        .byte $4A
- D - I - 0x0139E7 10:B9D7: A0        .byte $A0
- D - I - 0x0139E8 10:B9D8: 32        .byte $32
- D - I - 0x0139E9 10:B9D9: 32        .byte $32
- D - I - 0x0139EA 10:B9DA: 07        .byte $07
- D - I - 0x0139EB 10:B9DB: 02        .byte $02
- D - I - 0x0139EC 10:B9DC: 0A        .byte $0A
- D - I - 0x0139ED 10:B9DD: 4B        .byte $4B
- D - I - 0x0139EE 10:B9DE: A1        .byte $A1
- D - I - 0x0139EF 10:B9DF: 32        .byte $32
- D - I - 0x0139F0 10:B9E0: 33        .byte $33
- D - I - 0x0139F1 10:B9E1: 06        .byte $06
- D - I - 0x0139F2 10:B9E2: 4C        .byte $4C
- D - I - 0x0139F3 10:B9E3: 0A        .byte $0A
- D - I - 0x0139F4 10:B9E4: 4E        .byte $4E
- D - I - 0x0139F5 10:B9E5: A2        .byte $A2
- D - I - 0x0139F6 10:B9E6: 02        .byte $02
- D - I - 0x0139F7 10:B9E7: 47        .byte $47
- D - I - 0x0139F8 10:B9E8: 06        .byte $06
- D - I - 0x0139F9 10:B9E9: 4D        .byte $4D
- D - I - 0x0139FA 10:B9EA: 0A        .byte $0A
- D - I - 0x0139FB 10:B9EB: 4F        .byte $4F
- D - I - 0x0139FC 10:B9EC: 09        .byte $09
- D - I - 0x0139FD 10:B9ED: 2F        .byte $2F
- D - I - 0x0139FE 10:B9EE: A3        .byte $A3
- D - I - 0x0139FF 10:B9EF: 0A        .byte $0A
- D - I - 0x013A00 10:B9F0: 33        .byte $33
- D - I - 0x013A01 10:B9F1: FB        .byte con_jmp
- D - I - 0x013A02 10:B9F2: 87 B9     .word off_B987

off_B9F4:
- D - I - 0x013A04 10:B9F4: 3A        .byte $3A
- D - I - 0x013A05 10:B9F5: 6C        .byte $6C
- D - I - 0x013A06 10:B9F6: 3F        .byte $3F
- D - I - 0x013A07 10:B9F7: 03        .byte $03
- D - I - 0x013A08 10:B9F8: 02        .byte $02
- D - I - 0x013A09 10:B9F9: 62        .byte $62
- D - I - 0x013A0A 10:B9FA: 03        .byte $03
- D - I - 0x013A0B 10:B9FB: 30        .byte $30
- D - I - 0x013A0C 10:B9FC: 06        .byte $06
- D - I - 0x013A0D 10:B9FD: 68        .byte $68
- D - I - 0x013A0E 10:B9FE: 0A        .byte $0A
- D - I - 0x013A0F 10:B9FF: 6A        .byte $6A
- D - I - 0x013A10 10:BA00: A0        .byte $A0
- D - I - 0x013A11 10:BA01: 36        .byte $36
- D - I - 0x013A12 10:BA02: 58        .byte $58
- D - I - 0x013A13 10:BA03: 3A        .byte $3A
- D - I - 0x013A14 10:BA04: 6F        .byte $6F
- D - I - 0x013A15 10:BA05: 02        .byte $02
- D - I - 0x013A16 10:BA06: 43        .byte $43
- D - I - 0x013A17 10:BA07: A1        .byte $A1
- D - I - 0x013A18 10:BA08: 36        .byte $36
- D - I - 0x013A19 10:BA09: 59        .byte $59
- D - I - 0x013A1A 10:BA0A: 3A        .byte $3A
- D - I - 0x013A1B 10:BA0B: 7A        .byte $7A
- D - I - 0x013A1C 10:BA0C: 3F        .byte $3F
- D - I - 0x013A1D 10:BA0D: 03        .byte $03
- D - I - 0x013A1E 10:BA0E: 02        .byte $02
- D - I - 0x013A1F 10:BA0F: 66        .byte $66
- D - I - 0x013A20 10:BA10: 03        .byte $03
- D - I - 0x013A21 10:BA11: 31        .byte $31
- D - I - 0x013A22 10:BA12: 06        .byte $06
- D - I - 0x013A23 10:BA13: 03        .byte $03
- D - I - 0x013A24 10:BA14: 0A        .byte $0A
- D - I - 0x013A25 10:BA15: 6E        .byte $6E
- D - I - 0x013A26 10:BA16: A2        .byte $A2
- D - I - 0x013A27 10:BA17: 36        .byte $36
- D - I - 0x013A28 10:BA18: 5C        .byte $5C
- D - I - 0x013A29 10:BA19: 3A        .byte $3A
- D - I - 0x013A2A 10:BA1A: 63        .byte $63
- D - I - 0x013A2B 10:BA1B: 3E        .byte $3E
- D - I - 0x013A2C 10:BA1C: 65        .byte $65
- D - I - 0x013A2D 10:BA1D: 02        .byte $02
- D - I - 0x013A2E 10:BA1E: 67        .byte $67
- D - I - 0x013A2F 10:BA1F: 06        .byte $06
- D - I - 0x013A30 10:BA20: 6D        .byte $6D
- D - I - 0x013A31 10:BA21: 0A        .byte $0A
- D - I - 0x013A32 10:BA22: 4F        .byte $4F
- D - I - 0x013A33 10:BA23: 09        .byte $09
- D - I - 0x013A34 10:BA24: 2F        .byte $2F
- D - I - 0x013A35 10:BA25: A3        .byte $A3
- D - I - 0x013A36 10:BA26: 3A        .byte $3A
- D - I - 0x013A37 10:BA27: 5F        .byte $5F
- D - I - 0x013A38 10:BA28: 3E        .byte $3E
- D - I - 0x013A39 10:BA29: 70        .byte $70
- D - I - 0x013A3A 10:BA2A: 02        .byte $02
- D - I - 0x013A3B 10:BA2B: 72        .byte $72
- D - I - 0x013A3C 10:BA2C: 0A        .byte $0A
- D - I - 0x013A3D 10:BA2D: 33        .byte $33
- D - I - 0x013A3E 10:BA2E: FB        .byte con_jmp
- D - I - 0x013A3F 10:BA2F: 87 B9     .word off_B987

off_BA31:
- D - I - 0x013A41 10:BA31: BD        .byte $BD
- D - I - 0x013A42 10:BA32: 0D        .byte $0D
- D - I - 0x013A43 10:BA33: 55        .byte $55
- D - I - 0x013A44 10:BA34: BE        .byte $BE
- D - I - 0x013A45 10:BA35: 36        .byte $36
- D - I - 0x013A46 10:BA36: 47        .byte $47
- D - I - 0x013A47 10:BA37: 09        .byte $09
- D - I - 0x013A48 10:BA38: 70        .byte $70
- D - I - 0x013A49 10:BA39: 0D        .byte $0D
- D - I - 0x013A4A 10:BA3A: 72        .byte $72
- D - I - 0x013A4B 10:BA3B: BF        .byte $BF
- D - I - 0x013A4C 10:BA3C: 36        .byte $36
- D - I - 0x013A4D 10:BA3D: 84        .byte $84
- D - I - 0x013A4E 10:BA3E: 09        .byte $09
- D - I - 0x013A4F 10:BA3F: 4A        .byte $4A
- D - I - 0x013A50 10:BA40: 0D        .byte $0D
- D - I - 0x013A51 10:BA41: 73        .byte $73
- D - I - 0x013A52 10:BA42: A0        .byte $A0
- D - I - 0x013A53 10:BA43: 36        .byte $36
- D - I - 0x013A54 10:BA44: 82        .byte $82
- D - I - 0x013A55 10:BA45: 08        .byte $08
- D - I - 0x013A56 10:BA46: 74        .byte $74
- D - I - 0x013A57 10:BA47: 0D        .byte $0D
- D - I - 0x013A58 10:BA48: 76        .byte $76
- D - I - 0x013A59 10:BA49: A1        .byte $A1
- D - I - 0x013A5A 10:BA4A: 36        .byte $36
- D - I - 0x013A5B 10:BA4B: 83        .byte $83
- D - I - 0x013A5C 10:BA4C: 3E        .byte $3E
- D - I - 0x013A5D 10:BA4D: 57        .byte $57
- D - I - 0x013A5E 10:BA4E: 00        .byte $00
- D - I - 0x013A5F 10:BA4F: 5D        .byte $5D
- D - I - 0x013A60 10:BA50: 04        .byte $04
- D - I - 0x013A61 10:BA51: 5F        .byte $5F
- D - I - 0x013A62 10:BA52: 09        .byte $09
- D - I - 0x013A63 10:BA53: 75        .byte $75
- D - I - 0x013A64 10:BA54: CC        .byte $CC
- D - I - 0x013A65 10:BA55: 00        .byte $00
- D - I - 0x013A66 10:BA56: 5B        .byte $5B
- D - I - 0x013A67 10:BA57: 0D        .byte $0D
- D - I - 0x013A68 10:BA58: 77        .byte $77
- D - I - 0x013A69 10:BA59: A2        .byte $A2
- D - I - 0x013A6A 10:BA5A: 36        .byte $36
- D - I - 0x013A6B 10:BA5B: 78        .byte $78
- D - I - 0x013A6C 10:BA5C: 3A        .byte $3A
- D - I - 0x013A6D 10:BA5D: 7A        .byte $7A
- D - I - 0x013A6E 10:BA5E: 3E        .byte $3E
- D - I - 0x013A6F 10:BA5F: 79        .byte $79
- D - I - 0x013A70 10:BA60: 00        .byte $00
- D - I - 0x013A71 10:BA61: 7B        .byte $7B
- D - I - 0x013A72 10:BA62: 09        .byte $09
- D - I - 0x013A73 10:BA63: 7C        .byte $7C
- D - I - 0x013A74 10:BA64: 0D        .byte $0D
- D - I - 0x013A75 10:BA65: 7E        .byte $7E
- D - I - 0x013A76 10:BA66: A3        .byte $A3
- D - I - 0x013A77 10:BA67: 09        .byte $09
- D - I - 0x013A78 10:BA68: 7D        .byte $7D
- D - I - 0x013A79 10:BA69: 0D        .byte $0D
- D - I - 0x013A7A 10:BA6A: 7F        .byte $7F
- D - I - 0x013A7B 10:BA6B: FF        .byte con_FF

off_BA6C:
- D - I - 0x013A7C 10:BA6C: 3A        .byte $3A
- D - I - 0x013A7D 10:BA6D: 6C        .byte $6C
- D - I - 0x013A7E 10:BA6E: 3F        .byte $3F
- D - I - 0x013A7F 10:BA6F: 03        .byte $03
- D - I - 0x013A80 10:BA70: 02        .byte $02
- D - I - 0x013A81 10:BA71: 62        .byte $62
- D - I - 0x013A82 10:BA72: 43        .byte $43
- D - I - 0x013A83 10:BA73: 31        .byte $31
- D - I - 0x013A84 10:BA74: 06        .byte $06
- D - I - 0x013A85 10:BA75: 68        .byte $68
- D - I - 0x013A86 10:BA76: 0A        .byte $0A
- D - I - 0x013A87 10:BA77: 6A        .byte $6A
- D - I - 0x013A88 10:BA78: A0        .byte $A0
- D - I - 0x013A89 10:BA79: 36        .byte $36
- D - I - 0x013A8A 10:BA7A: 58        .byte $58
- D - I - 0x013A8B 10:BA7B: 3A        .byte $3A
- D - I - 0x013A8C 10:BA7C: 6F        .byte $6F
- D - I - 0x013A8D 10:BA7D: 02        .byte $02
- D - I - 0x013A8E 10:BA7E: 43        .byte $43
- D - I - 0x013A8F 10:BA7F: A1        .byte $A1
- D - I - 0x013A90 10:BA80: 36        .byte $36
- D - I - 0x013A91 10:BA81: 59        .byte $59
- D - I - 0x013A92 10:BA82: 3A        .byte $3A
- D - I - 0x013A93 10:BA83: 7A        .byte $7A
- D - I - 0x013A94 10:BA84: 3F        .byte $3F
- D - I - 0x013A95 10:BA85: 03        .byte $03
- D - I - 0x013A96 10:BA86: 02        .byte $02
- D - I - 0x013A97 10:BA87: 66        .byte $66
- D - I - 0x013A98 10:BA88: 43        .byte $43
- D - I - 0x013A99 10:BA89: 30        .byte $30
- D - I - 0x013A9A 10:BA8A: 06        .byte $06
- D - I - 0x013A9B 10:BA8B: 03        .byte $03
- D - I - 0x013A9C 10:BA8C: 0A        .byte $0A
- D - I - 0x013A9D 10:BA8D: 6E        .byte $6E
- D - I - 0x013A9E 10:BA8E: A2        .byte $A2
- D - I - 0x013A9F 10:BA8F: 36        .byte $36
- D - I - 0x013AA0 10:BA90: 5C        .byte $5C
- D - I - 0x013AA1 10:BA91: 3A        .byte $3A
- D - I - 0x013AA2 10:BA92: 63        .byte $63
- D - I - 0x013AA3 10:BA93: 3E        .byte $3E
- D - I - 0x013AA4 10:BA94: 65        .byte $65
- D - I - 0x013AA5 10:BA95: 02        .byte $02
- D - I - 0x013AA6 10:BA96: 67        .byte $67
- D - I - 0x013AA7 10:BA97: 06        .byte $06
- D - I - 0x013AA8 10:BA98: 6D        .byte $6D
- D - I - 0x013AA9 10:BA99: 0A        .byte $0A
- D - I - 0x013AAA 10:BA9A: 4F        .byte $4F
- D - I - 0x013AAB 10:BA9B: 09        .byte $09
- D - I - 0x013AAC 10:BA9C: 2F        .byte $2F
- D - I - 0x013AAD 10:BA9D: A3        .byte $A3
- D - I - 0x013AAE 10:BA9E: 3A        .byte $3A
- D - I - 0x013AAF 10:BA9F: 5F        .byte $5F
- D - I - 0x013AB0 10:BAA0: 3E        .byte $3E
- D - I - 0x013AB1 10:BAA1: 70        .byte $70
- D - I - 0x013AB2 10:BAA2: 02        .byte $02
- D - I - 0x013AB3 10:BAA3: 72        .byte $72
- D - I - 0x013AB4 10:BAA4: 0A        .byte $0A
- D - I - 0x013AB5 10:BAA5: 33        .byte $33
- D - I - 0x013AB6 10:BAA6: FB        .byte con_jmp
- D - I - 0x013AB7 10:BAA7: 87 B9     .word off_B987

off_BAA9:
- D - I - 0x013AB9 10:BAA9: BC        .byte $BC
- D - I - 0x013ABA 10:BAAA: 0C        .byte $0C
- D - I - 0x013ABB 10:BAAB: 08        .byte $08
- D - I - 0x013ABC 10:BAAC: BD        .byte $BD
- D - I - 0x013ABD 10:BAAD: 36        .byte $36
- D - I - 0x013ABE 10:BAAE: E0        .byte $E0
- D - I - 0x013ABF 10:BAAF: 3A        .byte $3A
- D - I - 0x013AC0 10:BAB0: E2        .byte $E2
- D - I - 0x013AC1 10:BAB1: 3E        .byte $3E
- D - I - 0x013AC2 10:BAB2: 20        .byte $20
- D - I - 0x013AC3 10:BAB3: 08        .byte $08
- D - I - 0x013AC4 10:BAB4: 04        .byte $04
- D - I - 0x013AC5 10:BAB5: 0C        .byte $0C
- D - I - 0x013AC6 10:BAB6: 06        .byte $06
- D - I - 0x013AC7 10:BAB7: BE        .byte $BE
- D - I - 0x013AC8 10:BAB8: 32        .byte $32
- D - I - 0x013AC9 10:BAB9: E1        .byte $E1
- D - I - 0x013ACA 10:BABA: 36        .byte $36
- D - I - 0x013ACB 10:BABB: E3        .byte $E3
- D - I - 0x013ACC 10:BABC: 3A        .byte $3A
- D - I - 0x013ACD 10:BABD: E9        .byte $E9
- D - I - 0x013ACE 10:BABE: 3F        .byte $3F
- D - I - 0x013ACF 10:BABF: EB        .byte $EB
- D - I - 0x013AD0 10:BAC0: 3D        .byte $3D
- D - I - 0x013AD1 10:BAC1: 02        .byte $02
- D - I - 0x013AD2 10:BAC2: 01        .byte $01
- D - I - 0x013AD3 10:BAC3: D9        .byte $D9
- D - I - 0x013AD4 10:BAC4: 05        .byte $05
- D - I - 0x013AD5 10:BAC5: DB        .byte $DB
- D - I - 0x013AD6 10:BAC6: 08        .byte $08
- D - I - 0x013AD7 10:BAC7: 05        .byte $05
- D - I - 0x013AD8 10:BAC8: 0C        .byte $0C
- D - I - 0x013AD9 10:BAC9: 02        .byte $02
- D - I - 0x013ADA 10:BACA: BF        .byte $BF
- D - I - 0x013ADB 10:BACB: 32        .byte $32
- D - I - 0x013ADC 10:BACC: E4        .byte $E4
- D - I - 0x013ADD 10:BACD: 36        .byte $36
- D - I - 0x013ADE 10:BACE: 02        .byte $02
- D - I - 0x013ADF 10:BACF: 3A        .byte $3A
- D - I - 0x013AE0 10:BAD0: EC        .byte $EC
- D - I - 0x013AE1 10:BAD1: 3F        .byte $3F
- D - I - 0x013AE2 10:BAD2: EE        .byte $EE
- D - I - 0x013AE3 10:BAD3: 05        .byte $05
- D - I - 0x013AE4 10:BAD4: DE        .byte $DE
- D - I - 0x013AE5 10:BAD5: 0B        .byte $0B
- D - I - 0x013AE6 10:BAD6: F4        .byte $F4
- D - I - 0x013AE7 10:BAD7: 0C        .byte $0C
- D - I - 0x013AE8 10:BAD8: 02        .byte $02
- D - I - 0x013AE9 10:BAD9: A0        .byte $A0
- D - I - 0x013AEA 10:BADA: 32        .byte $32
- D - I - 0x013AEB 10:BADB: E5        .byte $E5
- D - I - 0x013AEC 10:BADC: 36        .byte $36
- D - I - 0x013AED 10:BADD: E6        .byte $E6
- D - I - 0x013AEE 10:BADE: 3A        .byte $3A
- D - I - 0x013AEF 10:BADF: ED        .byte $ED
- D - I - 0x013AF0 10:BAE0: 3F        .byte $3F
- D - I - 0x013AF1 10:BAE1: EF        .byte $EF
- D - I - 0x013AF2 10:BAE2: 3D        .byte $3D
- D - I - 0x013AF3 10:BAE3: 02        .byte $02
- D - I - 0x013AF4 10:BAE4: 01        .byte $01
- D - I - 0x013AF5 10:BAE5: 03        .byte $03
- D - I - 0x013AF6 10:BAE6: 05        .byte $05
- D - I - 0x013AF7 10:BAE7: DF        .byte $DF
- D - I - 0x013AF8 10:BAE8: 0B        .byte $0B
- D - I - 0x013AF9 10:BAE9: F5        .byte $F5
- D - I - 0x013AFA 10:BAEA: 0F        .byte $0F
- D - I - 0x013AFB 10:BAEB: 02        .byte $02
- D - I - 0x013AFC 10:BAEC: A1        .byte $A1
- D - I - 0x013AFD 10:BAED: 36        .byte $36
- D - I - 0x013AFE 10:BAEE: E7        .byte $E7
- D - I - 0x013AFF 10:BAEF: 3A        .byte $3A
- D - I - 0x013B00 10:BAF0: F8        .byte $F8
- D - I - 0x013B01 10:BAF1: 3E        .byte $3E
- D - I - 0x013B02 10:BAF2: FA        .byte $FA
- D - I - 0x013B03 10:BAF3: 02        .byte $02
- D - I - 0x013B04 10:BAF4: F0        .byte $F0
- D - I - 0x013B05 10:BAF5: 04        .byte $04
- D - I - 0x013B06 10:BAF6: F2        .byte $F2
- D - I - 0x013B07 10:BAF7: 06        .byte $06
- D - I - 0x013B08 10:BAF8: 48        .byte $48
- D - I - 0x013B09 10:BAF9: 08        .byte $08
- D - I - 0x013B0A 10:BAFA: 14        .byte $14
- D - I - 0x013B0B 10:BAFB: 0C        .byte $0C
- D - I - 0x013B0C 10:BAFC: 02        .byte $02
- D - I - 0x013B0D 10:BAFD: A2        .byte $A2
- D - I - 0x013B0E 10:BAFE: 3A        .byte $3A
- D - I - 0x013B0F 10:BAFF: F9        .byte $F9
- D - I - 0x013B10 10:BB00: 3E        .byte $3E
- D - I - 0x013B11 10:BB01: FB        .byte $FB
- D - I - 0x013B12 10:BB02: 02        .byte $02
- D - I - 0x013B13 10:BB03: F1        .byte $F1
- D - I - 0x013B14 10:BB04: 08        .byte $08
- D - I - 0x013B15 10:BB05: 15        .byte $15
- D - I - 0x013B16 10:BB06: 0C        .byte $0C
- D - I - 0x013B17 10:BB07: 17        .byte $17
- D - I - 0x013B18 10:BB08: A3        .byte $A3
- D - I - 0x013B19 10:BB09: 08        .byte $08
- D - I - 0x013B1A 10:BB0A: 40        .byte $40
- D - I - 0x013B1B 10:BB0B: 0C        .byte $0C
- D - I - 0x013B1C 10:BB0C: 42        .byte $42
- D - I - 0x013B1D 10:BB0D: FF        .byte con_FF
