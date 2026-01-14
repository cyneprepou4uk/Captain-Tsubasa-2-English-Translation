.segment "BANK_8B"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x016010-0x01800F



.export ofs_099_0x01601C
.export ofs_099_0x016093
.export ofs_099_0x01615C
.export sub_0x0164B1



loc_800C:
ofs_099_0x01601C:
C D 0 - - - 0x01601C 0B:800C: A9 01     LDA #$01
C - - - - - 0x01601E 0B:800E: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x016021 0B:8011: AD D4 05  LDA ram_05D4_hi
C - - - - - 0x016024 0B:8014: 2C D7 05  BIT ram_05D7_hi
C - - - - - 0x016027 0B:8017: 10 05     BPL bra_801E
C - - - - - 0x016029 0B:8019: 49 FF     EOR #$FF
C - - - - - 0x01602B 0B:801B: 18        CLC
C - - - - - 0x01602C 0B:801C: 69 11     ADC #$11
bra_801E:
C - - - - - 0x01602E 0B:801E: 29 E0     AND #$E0
C - - - - - 0x016030 0B:8020: CD D8 05  CMP ram_05D8
C - - - - - 0x016033 0B:8023: D0 03     BNE bra_8028
C - - - - - 0x016035 0B:8025: 4C 0C 80  JMP loc_800C
bra_8028:
C - - - - - 0x016038 0B:8028: 8D D8 05  STA ram_05D8
C - - - - - 0x01603B 0B:802B: 20 0C 81  JSR sub_810C
C - - - - - 0x01603E 0B:802E: A5 3B     LDA ram_003B_t02
C - - - - - 0x016040 0B:8030: 29 FE     AND #$FE
C - - - - - 0x016042 0B:8032: 20 2B 81  JSR sub_812B_вычислить_поинтер_на_блоки
C - - - - - 0x016045 0B:8035: A9 E0     LDA #$E0
C - - - - - 0x016047 0B:8037: 2C D7 05  BIT ram_05D7_hi
C - - - - - 0x01604A 0B:803A: 10 02     BPL bra_803E
C - - - - - 0x01604C 0B:803C: A9 A0     LDA #$A0
bra_803E:
C - - - - - 0x01604E 0B:803E: 18        CLC
C - - - - - 0x01604F 0B:803F: 6D D4 05  ADC ram_05D4_hi
C - - - - - 0x016052 0B:8042: 29 E0     AND #$E0
C - - - - - 0x016054 0B:8044: 4A        LSR
C - - - - - 0x016055 0B:8045: 4A        LSR
C - - - - - 0x016056 0B:8046: 09 40     ORA #$40
C - - - - - 0x016058 0B:8048: 85 5A     STA ram_005A_t02
C - - - - - 0x01605A 0B:804A: A9 04     LDA #$04
bra_804C_loop:
C - - - - - 0x01605C 0B:804C: 48        PHA
bra_804D_loop:
C - - - - - 0x01605D 0B:804D: A9 01     LDA #$01
C - - - - - 0x01605F 0B:804F: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x016062 0B:8052: AD 15 05  LDA ram_0515_buffer_flag
C - - - - - 0x016065 0B:8055: D0 F6     BNE bra_804D_loop
C - - - - - 0x016067 0B:8057: A9 01     LDA #$01
C - - - - - 0x016069 0B:8059: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x01606C 0B:805C: A2 00     LDX #$00
C - - - - - 0x01606E 0B:805E: A9 02     LDA #$02
bra_8060_loop:
C - - - - - 0x016070 0B:8060: 48        PHA
C - - - - - 0x016071 0B:8061: A5 5A     LDA ram_005A_t02
C - - - - - 0x016073 0B:8063: 29 3F     AND #$3F
C - - - - - 0x016075 0B:8065: A8        TAY
C - - - - - 0x016076 0B:8066: B1 58     LDA (ram_0058_t01_data_блоки),Y
C - - - - - 0x016078 0B:8068: A4 5A     LDY ram_005A_t02
C - - - - - 0x01607A 0B:806A: 20 C2 85  JSR sub_85C2
C - - - - - 0x01607D 0B:806D: E6 5A     INC ram_005A_t02
C - - - - - 0x01607F 0B:806F: 68        PLA
C - - - - - 0x016080 0B:8070: 38        SEC
C - - - - - 0x016081 0B:8071: E9 01     SBC #$01
C - - - - - 0x016083 0B:8073: D0 EB     BNE bra_8060_loop
C - - - - - 0x016085 0B:8075: A9 80     LDA #$80
C - - - - - 0x016087 0B:8077: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x01608A 0B:807A: 68        PLA
C - - - - - 0x01608B 0B:807B: 38        SEC
C - - - - - 0x01608C 0B:807C: E9 01     SBC #$01
C - - - - - 0x01608E 0B:807E: D0 CC     BNE bra_804C_loop
C - - - - - 0x016090 0B:8080: 4C 0C 80  JMP loc_800C



loc_8083:
ofs_099_0x016093:
C D 0 - - - 0x016093 0B:8083: A9 01     LDA #$01
C - - - - - 0x016095 0B:8085: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x016098 0B:8088: AD D4 05  LDA ram_05D4_hi
C - - - - - 0x01609B 0B:808B: 2C D7 05  BIT ram_05D7_hi
C - - - - - 0x01609E 0B:808E: 10 05     BPL bra_8095
C - - - - - 0x0160A0 0B:8090: 49 FF     EOR #$FF
C - - - - - 0x0160A2 0B:8092: 18        CLC
C - - - - - 0x0160A3 0B:8093: 69 01     ADC #$01
bra_8095:
C - - - - - 0x0160A5 0B:8095: 29 E0     AND #$E0
C - - - - - 0x0160A7 0B:8097: CD D8 05  CMP ram_05D8
C - - - - - 0x0160AA 0B:809A: D0 03     BNE bra_809F
C - - - - - 0x0160AC 0B:809C: 4C 83 80  JMP loc_8083
bra_809F:
C - - - - - 0x0160AF 0B:809F: 8D D8 05  STA ram_05D8
C - - - - - 0x0160B2 0B:80A2: 20 0C 81  JSR sub_810C
C - - - - - 0x0160B5 0B:80A5: A9 E0     LDA #$E0
C - - - - - 0x0160B7 0B:80A7: A0 FF     LDY #$FF
C - - - - - 0x0160B9 0B:80A9: 2C D7 05  BIT ram_05D7_hi
C - - - - - 0x0160BC 0B:80AC: 10 02     BPL bra_80B0
C - - - - - 0x0160BE 0B:80AE: A9 00     LDA #$00
bra_80B0:
C - - - - - 0x0160C0 0B:80B0: 18        CLC
C - - - - - 0x0160C1 0B:80B1: 6D D4 05  ADC ram_05D4_hi
C - - - - - 0x0160C4 0B:80B4: AA        TAX
C - - - - - 0x0160C5 0B:80B5: 98        TYA
C - - - - - 0x0160C6 0B:80B6: 6D D5 05  ADC ram_05D5
C - - - - - 0x0160C9 0B:80B9: A8        TAY
C - - - - - 0x0160CA 0B:80BA: 8A        TXA
C - - - - - 0x0160CB 0B:80BB: 4A        LSR
C - - - - - 0x0160CC 0B:80BC: 4A        LSR
C - - - - - 0x0160CD 0B:80BD: 4A        LSR
C - - - - - 0x0160CE 0B:80BE: 4A        LSR
C - - - - - 0x0160CF 0B:80BF: 4A        LSR
C - - - - - 0x0160D0 0B:80C0: 85 5A     STA ram_005A_t04
C - - - - - 0x0160D2 0B:80C2: 98        TYA
C - - - - - 0x0160D3 0B:80C3: 4A        LSR
C - - - - - 0x0160D4 0B:80C4: A9 00     LDA #$00
C - - - - - 0x0160D6 0B:80C6: 90 02     BCC bra_80CA
- - - - - - 0x0160D8 0B:80C8: A9 40     LDA #$40
bra_80CA:
C - - - - - 0x0160DA 0B:80CA: 05 5A     ORA ram_005A_t04
C - - - - - 0x0160DC 0B:80CC: 85 5A     STA ram_005A_t03
C - - - - - 0x0160DE 0B:80CE: A9 02     LDA #$02
bra_80D0_loop:
C - - - - - 0x0160E0 0B:80D0: 48        PHA
bra_80D1_loop:
C - - - - - 0x0160E1 0B:80D1: A9 01     LDA #$01
C - - - - - 0x0160E3 0B:80D3: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0160E6 0B:80D6: AD 15 05  LDA ram_0515_buffer_flag
C - - - - - 0x0160E9 0B:80D9: D0 F6     BNE bra_80D1_loop
C - - - - - 0x0160EB 0B:80DB: A9 01     LDA #$01
C - - - - - 0x0160ED 0B:80DD: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x0160F0 0B:80E0: A2 00     LDX #$00
C - - - - - 0x0160F2 0B:80E2: A9 02     LDA #$02
bra_80E4_loop:
C - - - - - 0x0160F4 0B:80E4: 48        PHA
C - - - - - 0x0160F5 0B:80E5: A5 5A     LDA ram_005A_t03
C - - - - - 0x0160F7 0B:80E7: 29 3F     AND #$3F
C - - - - - 0x0160F9 0B:80E9: A8        TAY
C - - - - - 0x0160FA 0B:80EA: B1 58     LDA (ram_0058_t01_data_блоки),Y
C - - - - - 0x0160FC 0B:80EC: A4 5A     LDY ram_005A_t03
C - - - - - 0x0160FE 0B:80EE: 20 C2 85  JSR sub_85C2
C - - - - - 0x016101 0B:80F1: A5 5A     LDA ram_005A_t03
C - - - - - 0x016103 0B:80F3: 18        CLC
C - - - - - 0x016104 0B:80F4: 69 08     ADC #$08
C - - - - - 0x016106 0B:80F6: 85 5A     STA ram_005A_t03
C - - - - - 0x016108 0B:80F8: 68        PLA
C - - - - - 0x016109 0B:80F9: 38        SEC
C - - - - - 0x01610A 0B:80FA: E9 01     SBC #$01
C - - - - - 0x01610C 0B:80FC: D0 E6     BNE bra_80E4_loop
C - - - - - 0x01610E 0B:80FE: A9 80     LDA #$80
C - - - - - 0x016110 0B:8100: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x016113 0B:8103: 68        PLA
C - - - - - 0x016114 0B:8104: 38        SEC
C - - - - - 0x016115 0B:8105: E9 01     SBC #$01
C - - - - - 0x016117 0B:8107: D0 C7     BNE bra_80D0_loop
C - - - - - 0x016119 0B:8109: 4C 83 80  JMP loc_8083



sub_810C:
; out
    ; ram_003B_t02
    ; ram_0058_t01_data_блоки
C - - - - - 0x01611C 0B:810C: AE D4 05  LDX ram_05D4_hi
C - - - - - 0x01611F 0B:810F: AC D5 05  LDY ram_05D5
C - - - - - 0x016122 0B:8112: 10 0C     BPL bra_8120
C - - - - - 0x016124 0B:8114: 8A        TXA
C - - - - - 0x016125 0B:8115: 49 FF     EOR #$FF
C - - - - - 0x016127 0B:8117: AA        TAX
C - - - - - 0x016128 0B:8118: 98        TYA
C - - - - - 0x016129 0B:8119: 49 FF     EOR #$FF
C - - - - - 0x01612B 0B:811B: A8        TAY
C - - - - - 0x01612C 0B:811C: E8        INX
C - - - - - 0x01612D 0B:811D: D0 01     BNE bra_8120
- - - - - - 0x01612F 0B:811F: C8        INY
bra_8120:
C - - - - - 0x016130 0B:8120: 8A        TXA
C - - - - - 0x016131 0B:8121: 18        CLC
C - - - - - 0x016132 0B:8122: 69 E0     ADC #< $01E0
; bzk optimize, useless STA
C - - - - - 0x016134 0B:8124: 85 3A     STA ram_003A_t72_useless
C - - - - - 0x016136 0B:8126: 98        TYA
C - - - - - 0x016137 0B:8127: 69 01     ADC #> $01E0
C - - - - - 0x016139 0B:8129: 85 3B     STA ram_003B_t02
sub_812B_вычислить_поинтер_на_блоки:
; in
    ; A = 
; out
    ; ram_0058_t01_data_блоки
C - - - - - 0x01613B 0B:812B: A8        TAY
C - - - - - 0x01613C 0B:812C: B1 5B     LDA (ram_005B_t01_data_фон_анимации),Y
C - - - - - 0x01613E 0B:812E: 20 D3 86  JSR sub_86D3_выбор_старших_указателей
; * 08
C - - - - - 0x016141 0B:8131: A2 00     LDX #$00
C - - - - - 0x016143 0B:8133: 86 58     STX ram_0058_t03
C - - - - - 0x016145 0B:8135: 4A        LSR
C - - - - - 0x016146 0B:8136: 66 58     ROR ram_0058_t03
C - - - - - 0x016148 0B:8138: 4A        LSR
C - - - - - 0x016149 0B:8139: 66 58     ROR ram_0058_t03
C - - - - - 0x01614B 0B:813B: 4A        LSR
C - - - - - 0x01614C 0B:813C: 66 58     ROR ram_0058_t03
; X = 00 03 0A 0B 0C 0E 10 
C - - - - - 0x01614E 0B:813E: AA        TAX
C - - - - - 0x01614F 0B:813F: A5 58     LDA ram_0058_t03
C - - - - - 0x016151 0B:8141: 18        CLC
C - - - - - 0x016152 0B:8142: 69 64     ADC #< tbl_8B64_8x4_блоков_32x32
C - - - - - 0x016154 0B:8144: 85 58     STA ram_0058_t01_data_блоки
C - - - - - 0x016156 0B:8146: 8A        TXA
C - - - - - 0x016157 0B:8147: 69 8B     ADC #> tbl_8B64_8x4_блоков_32x32
C - - - - - 0x016159 0B:8149: 85 59     STA ram_0058_t01_data_блоки + $01
C - - - - - 0x01615B 0B:814B: 60        RTS



ofs_099_0x01615C:
; bzk optimize, сначала проверить на FF у адреса, а только потом грузить поинтеры
; убедиться что эти поинтеры в дальнейшем не понадобятся
C D 0 - - - 0x01615C 0B:814C: A9 F6     LDA #< tbl_87F6_данные_фона_анимаций
C - - - - - 0x01615E 0B:814E: 85 52     STA ram_0052_t01_data_prt_фон_анимации
C - - - - - 0x016160 0B:8150: A9 87     LDA #> tbl_87F6_данные_фона_анимаций
C - - - - - 0x016162 0B:8152: 85 53     STA ram_0052_t01_data_prt_фон_анимации + $01
C - - - - - 0x016164 0B:8154: AD 24 05  LDA ram_фон_анимации
C - - - - - 0x016167 0B:8157: C9 FF     CMP #con_s_bg_FF_skip
C - - - - - 0x016169 0B:8159: F0 41     BEQ bra_819C_FF
C - - - - - 0x01616B 0B:815B: 0A        ASL
C - - - - - 0x01616C 0B:815C: 90 02     BCC bra_8160_not_overflow
- - - - - - 0x01616E 0B:815E: E6 53     INC ram_0052_t01_data_prt_фон_анимации + $01
bra_8160_not_overflow:
C - - - - - 0x016170 0B:8160: A8        TAY
C - - - - - 0x016171 0B:8161: B1 52     LDA (ram_0052_t01_data_prt_фон_анимации),Y
C - - - - - 0x016173 0B:8163: AA        TAX
C - - - - - 0x016174 0B:8164: C8        INY
C - - - - - 0x016175 0B:8165: B1 52     LDA (ram_0052_t01_data_prt_фон_анимации),Y
C - - - - - 0x016177 0B:8167: 85 53     STA ram_0052_t02_data_фон_анимации + $01
C - - - - - 0x016179 0B:8169: 86 52     STX ram_0052_t02_data_фон_анимации
C - - - - - 0x01617B 0B:816B: A9 00     LDA #$00
C - - - - - 0x01617D 0B:816D: 8D D1 05  STA ram_for_05D2
; bzk optimize, запись и чтение из того же адреса
; можно сделать LDY 00
C - - - - - 0x016180 0B:8170: 85 3A     STA ram_003A_t70
C - - - - - 0x016182 0B:8172: A4 3A     LDY ram_003A_t70
C - - - - - 0x016184 0B:8174: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x016186 0B:8176: C9 F0     CMP #$F0
C - - - - - 0x016188 0B:8178: 90 0E     BCC bra_8188_00_EF
C - - - - - 0x01618A 0B:817A: 20 BC 81  JSR sub_81BC_управляющие_байты_фона_анимаций_F0_F2
C - - - - - 0x01618D 0B:817D: A9 02     LDA #$02
C - - - - - 0x01618F 0B:817F: 8D D0 05  STA ram_05D0
C - - - - - 0x016192 0B:8182: 8D 25 05  STA ram_0525
C - - - - - 0x016195 0B:8185: 4C 9C 81  JMP loc_819C
bra_8188_00_EF:
C - - - - - 0x016198 0B:8188: 8D 25 05  STA ram_0525
C - - - - - 0x01619B 0B:818B: 98        TYA
C - - - - - 0x01619C 0B:818C: 18        CLC
C - - - - - 0x01619D 0B:818D: 65 52     ADC ram_0052_t02_data_фон_анимации
C - - - - - 0x01619F 0B:818F: 85 52     STA ram_0052_t02_data_фон_анимации
C - - - - - 0x0161A1 0B:8191: 90 02     BCC bra_8195_not_overflow
- - - - - - 0x0161A3 0B:8193: E6 53     INC ram_0052_t02_data_фон_анимации + $01
bra_8195_not_overflow:
C - - - - - 0x0161A5 0B:8195: A0 01     LDY #$01
C - - - - - 0x0161A7 0B:8197: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x0161A9 0B:8199: 20 A7 81  JSR sub_81A7_управляющие_байты
bra_819C_FF:
loc_819C:
C D 0 - - - 0x0161AC 0B:819C: AD 16 05  LDA ram_флаги_сценария_ХЗ
C - - - - - 0x0161AF 0B:819F: 09 10     ORA #$10
C - - - - - 0x0161B1 0B:81A1: 8D 16 05  STA ram_флаги_сценария_ХЗ
C - - - - - 0x0161B4 0B:81A4: 4C 12 C5  JMP loc_0x03CB07



sub_81A7_управляющие_байты:
C - - - - - 0x0161B7 0B:81A7: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x0161BA 0B:81AA: 27 83     .word ofs_009_8327_00
- D 0 - I - 0x0161BC 0B:81AC: E7 83     .word ofs_009_83E7_01
- - - - - - 0x0161BE 0B:81AE: FF 83     .word ofs_009_83FF_02
- D 0 - I - 0x0161C0 0B:81B0: 58 83     .word ofs_009_8358_03
- D 0 - I - 0x0161C2 0B:81B2: 77 83     .word ofs_009_8377_04
- D 0 - I - 0x0161C4 0B:81B4: 64 83     .word ofs_009_8364_05
- D 0 - I - 0x0161C6 0B:81B6: D2 83     .word ofs_009_83D2_06
- - - - - - 0x0161C8 0B:81B8: E7 83     .word ofs_009_83E7_07
- D 0 - I - 0x0161CA 0B:81BA: EE 83     .word ofs_009_83EE_08



sub_81BC_управляющие_байты_фона_анимаций_F0_F2:
C - - - - - 0x0161CC 0B:81BC: A2 00     LDX #$00
C - - - - - 0x0161CE 0B:81BE: 8E 25 05  STX ram_0525
C - - - - - 0x0161D1 0B:81C1: 29 0F     AND #$0F
C - - - - - 0x0161D3 0B:81C3: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D 0 - I - 0x0161D6 0B:81C6: CC 81     .word ofs_010_81CC_F0
- - - - - - 0x0161D8 0B:81C8: 76 82     .word ofs_010_8276_F1
- D 0 - I - 0x0161DA 0B:81CA: 4D 82     .word ofs_010_824D_F2



ofs_010_81CC_F0:
; con_81BC_F0
C - - J - - 0x0161DC 0B:81CC: 20 F7 82  JSR sub_82F7
C - - - - - 0x0161DF 0B:81CF: BD D5 81  LDA tbl_81D5,X
C - - - - - 0x0161E2 0B:81D2: 4C 2B 83  JMP loc_832B



tbl_81D5:
- D 0 - - - 0x0161E5 0B:81D5: 0A        .byte $0A   ; 00
- D 0 - - - 0x0161E6 0B:81D6: 0C        .byte $0C   ; 01
- D 0 - - - 0x0161E7 0B:81D7: 0E        .byte $0E   ; 02
- D 0 - - - 0x0161E8 0B:81D8: 0E        .byte $0E   ; 03
- D 0 - - - 0x0161E9 0B:81D9: 0E        .byte $0E   ; 04
- D 0 - - - 0x0161EA 0B:81DA: 12        .byte $12   ; 05
- D 0 - - - 0x0161EB 0B:81DB: 10        .byte $10   ; 06
- D 0 - - - 0x0161EC 0B:81DC: 10        .byte $10   ; 07
- D 0 - - - 0x0161ED 0B:81DD: 12        .byte $12   ; 08
- D 0 - - - 0x0161EE 0B:81DE: 12        .byte $12   ; 09
- - - - - - 0x0161EF 0B:81DF: 1E        .byte $1E   ; 0A
- - - - - - 0x0161F0 0B:81E0: 1A        .byte $1A   ; 0B
- D 0 - - - 0x0161F1 0B:81E1: 0E        .byte $0E   ; 0C
- D 0 - - - 0x0161F2 0B:81E2: 0E        .byte $0E   ; 0D
- D 0 - - - 0x0161F3 0B:81E3: 0E        .byte $0E   ; 0E
- D 0 - - - 0x0161F4 0B:81E4: 12        .byte $12   ; 0F
- D 0 - - - 0x0161F5 0B:81E5: 10        .byte $10   ; 10
- D 0 - - - 0x0161F6 0B:81E6: 10        .byte $10   ; 11
- - - - - - 0x0161F7 0B:81E7: 12        .byte $12   ; 12
- D 0 - - - 0x0161F8 0B:81E8: 12        .byte $12   ; 13
- - - - - - 0x0161F9 0B:81E9: 15        .byte $15   ; 14
- D 0 - - - 0x0161FA 0B:81EA: 1A        .byte $1A   ; 15
- D 0 - - - 0x0161FB 0B:81EB: 0E        .byte $0E   ; 16
- D 0 - - - 0x0161FC 0B:81EC: 0E        .byte $0E   ; 17
- D 0 - - - 0x0161FD 0B:81ED: 0E        .byte $0E   ; 18
- D 0 - - - 0x0161FE 0B:81EE: 12        .byte $12   ; 19
- D 0 - - - 0x0161FF 0B:81EF: 10        .byte $10   ; 1A
- D 0 - - - 0x016200 0B:81F0: 10        .byte $10   ; 1B
- D 0 - - - 0x016201 0B:81F1: 12        .byte $12   ; 1C
- D 0 - - - 0x016202 0B:81F2: 12        .byte $12   ; 1D
- - - - - - 0x016203 0B:81F3: 17        .byte $17   ; 1E
- D 0 - - - 0x016204 0B:81F4: 1B        .byte $1B   ; 1F
- D 0 - - - 0x016205 0B:81F5: 0F        .byte $0F   ; 20
- D 0 - - - 0x016206 0B:81F6: 0F        .byte $0F   ; 21
- D 0 - - - 0x016207 0B:81F7: 0F        .byte $0F   ; 22
- D 0 - - - 0x016208 0B:81F8: 13        .byte $13   ; 23
- D 0 - - - 0x016209 0B:81F9: 11        .byte $11   ; 24
- D 0 - - - 0x01620A 0B:81FA: 11        .byte $11   ; 25
- D 0 - - - 0x01620B 0B:81FB: 13        .byte $13   ; 26
- D 0 - - - 0x01620C 0B:81FC: 13        .byte $13   ; 27
- - - - - - 0x01620D 0B:81FD: 1F        .byte $1F   ; 28
- - - - - - 0x01620E 0B:81FE: 1B        .byte $1B   ; 29
- D 0 - - - 0x01620F 0B:81FF: 0F        .byte $0F   ; 2A
- D 0 - - - 0x016210 0B:8200: 0F        .byte $0F   ; 2B
- D 0 - - - 0x016211 0B:8201: 0F        .byte $0F   ; 2C
- D 0 - - - 0x016212 0B:8202: 13        .byte $13   ; 2D
- D 0 - - - 0x016213 0B:8203: 11        .byte $11   ; 2E
- D 0 - - - 0x016214 0B:8204: 11        .byte $11   ; 2F
- D 0 - - - 0x016215 0B:8205: 13        .byte $13   ; 30
- D 0 - - - 0x016216 0B:8206: 13        .byte $13   ; 31
- D 0 - - - 0x016217 0B:8207: 0B        .byte $0B   ; 32
- D 0 - - - 0x016218 0B:8208: 0D        .byte $0D   ; 33
- D 0 - - - 0x016219 0B:8209: 0F        .byte $0F   ; 34
- D 0 - - - 0x01621A 0B:820A: 0F        .byte $0F   ; 35
- D 0 - - - 0x01621B 0B:820B: 0F        .byte $0F   ; 36
- D 0 - - - 0x01621C 0B:820C: 13        .byte $13   ; 37
- D 0 - - - 0x01621D 0B:820D: 11        .byte $11   ; 38
- D 0 - - - 0x01621E 0B:820E: 11        .byte $11   ; 39
- D 0 - - - 0x01621F 0B:820F: 13        .byte $13   ; 3A
- D 0 - - - 0x016220 0B:8210: 13        .byte $13   ; 3B
- D 0 - - - 0x016221 0B:8211: 00        .byte $00   ; 3C
- D 0 - - - 0x016222 0B:8212: 00        .byte $00   ; 3D
- D 0 - - - 0x016223 0B:8213: 02        .byte $02   ; 3E
- D 0 - - - 0x016224 0B:8214: 02        .byte $02   ; 3F
- D 0 - - - 0x016225 0B:8215: 00        .byte $00   ; 40
- D 0 - - - 0x016226 0B:8216: 04        .byte $04   ; 41
- D 0 - - - 0x016227 0B:8217: 04        .byte $04   ; 42
- D 0 - - - 0x016228 0B:8218: 04        .byte $04   ; 43
- D 0 - - - 0x016229 0B:8219: 06        .byte $06   ; 44
- - - - - - 0x01622A 0B:821A: 08        .byte $08   ; 45
- D 0 - - - 0x01622B 0B:821B: 00        .byte $00   ; 46
- D 0 - - - 0x01622C 0B:821C: 00        .byte $00   ; 47
- D 0 - - - 0x01622D 0B:821D: 02        .byte $02   ; 48
- D 0 - - - 0x01622E 0B:821E: 02        .byte $02   ; 49
- D 0 - - - 0x01622F 0B:821F: 00        .byte $00   ; 4A
- D 0 - - - 0x016230 0B:8220: 04        .byte $04   ; 4B
- D 0 - - - 0x016231 0B:8221: 04        .byte $04   ; 4C
- D 0 - - - 0x016232 0B:8222: 04        .byte $04   ; 4D
- - - - - - 0x016233 0B:8223: 1B        .byte $1B   ; 4E
- - - - - - 0x016234 0B:8224: 1F        .byte $1F   ; 4F
- D 0 - - - 0x016235 0B:8225: 00        .byte $00   ; 50
- D 0 - - - 0x016236 0B:8226: 00        .byte $00   ; 51
- D 0 - - - 0x016237 0B:8227: 02        .byte $02   ; 52
- D 0 - - - 0x016238 0B:8228: 02        .byte $02   ; 53
- D 0 - - - 0x016239 0B:8229: 00        .byte $00   ; 54
- D 0 - - - 0x01623A 0B:822A: 04        .byte $04   ; 55
- D 0 - - - 0x01623B 0B:822B: 04        .byte $04   ; 56
- D 0 - - - 0x01623C 0B:822C: 04        .byte $04   ; 57
- - - - - - 0x01623D 0B:822D: 1B        .byte $1B   ; 58
- - - - - - 0x01623E 0B:822E: 17        .byte $17   ; 59
- D 0 - - - 0x01623F 0B:822F: 01        .byte $01   ; 5A
- D 0 - - - 0x016240 0B:8230: 01        .byte $01   ; 5B
- D 0 - - - 0x016241 0B:8231: 03        .byte $03   ; 5C
- D 0 - - - 0x016242 0B:8232: 03        .byte $03   ; 5D
- D 0 - - - 0x016243 0B:8233: 01        .byte $01   ; 5E
- D 0 - - - 0x016244 0B:8234: 05        .byte $05   ; 5F
- D 0 - - - 0x016245 0B:8235: 05        .byte $05   ; 60
- D 0 - - - 0x016246 0B:8236: 05        .byte $05   ; 61
- - - - - - 0x016247 0B:8237: 1A        .byte $1A   ; 62
- - - - - - 0x016248 0B:8238: 15        .byte $15   ; 63
- - - - - - 0x016249 0B:8239: 01        .byte $01   ; 64
- D 0 - - - 0x01624A 0B:823A: 01        .byte $01   ; 65
- D 0 - - - 0x01624B 0B:823B: 03        .byte $03   ; 66
- D 0 - - - 0x01624C 0B:823C: 03        .byte $03   ; 67
- D 0 - - - 0x01624D 0B:823D: 01        .byte $01   ; 68
- D 0 - - - 0x01624E 0B:823E: 05        .byte $05   ; 69
- D 0 - - - 0x01624F 0B:823F: 05        .byte $05   ; 6A
- D 0 - - - 0x016250 0B:8240: 05        .byte $05   ; 6B
- - - - - - 0x016251 0B:8241: 1A        .byte $1A   ; 6C
- - - - - - 0x016252 0B:8242: 1E        .byte $1E   ; 6D
- D 0 - - - 0x016253 0B:8243: 01        .byte $01   ; 6E
- D 0 - - - 0x016254 0B:8244: 01        .byte $01   ; 6F
- D 0 - - - 0x016255 0B:8245: 03        .byte $03   ; 70
- D 0 - - - 0x016256 0B:8246: 03        .byte $03   ; 71
- D 0 - - - 0x016257 0B:8247: 01        .byte $01   ; 72
- D 0 - - - 0x016258 0B:8248: 05        .byte $05   ; 73
- D 0 - - - 0x016259 0B:8249: 05        .byte $05   ; 74
- D 0 - - - 0x01625A 0B:824A: 05        .byte $05   ; 75
- - - - - - 0x01625B 0B:824B: 07        .byte $07   ; 76
- D 0 - - - 0x01625C 0B:824C: 09        .byte $09   ; 77



ofs_010_824D_F2:
; con_81BC_F2
C - - J - - 0x01625D 0B:824D: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x016260 0B:8250: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x016263 0B:8253: AD 38 06  LDA ram_0638
C - - - - - 0x016266 0B:8256: 20 36 C5  JSR sub_0x03CDD9_проверить_координаты_игрока
C - - - - - 0x016269 0B:8259: 8A        TXA
C - - - - - 0x01626A 0B:825A: A0 06     LDY #con_plr_pos_X_hi
C - - - - - 0x01626C 0B:825C: 38        SEC
C - - - - - 0x01626D 0B:825D: F1 34     SBC (ram_plr_data),Y    ; con_plr_pos_X_hi
C - - - - - 0x01626F 0B:825F: AC FB 05  LDY ram_команда_с_мячом
C - - - - - 0x016272 0B:8262: F0 05     BEQ bra_8269_команда_слева
; if мяч у команды справа
C - - - - - 0x016274 0B:8264: 49 FF     EOR #$FF
C - - - - - 0x016276 0B:8266: 18        CLC
C - - - - - 0x016277 0B:8267: 69 01     ADC #$01
bra_8269_команда_слева:
C - - - - - 0x016279 0B:8269: AA        TAX
C - - - - - 0x01627A 0B:826A: 10 04     BPL bra_8270
C - - - - - 0x01627C 0B:826C: 98        TYA
C - - - - - 0x01627D 0B:826D: 49 0B     EOR #$0B
C - - - - - 0x01627F 0B:826F: A8        TAY
bra_8270:
C - - - - - 0x016280 0B:8270: 20 FE 82  JSR sub_82FE
C - - - - - 0x016283 0B:8273: 4C 79 82  JMP loc_8279



ofs_010_8276_F1:
; con_81BC_F1
; bzk garbage
- - - - - - 0x016286 0B:8276: 20 F7 82  JSR sub_82F7
loc_8279:
C D 0 - - - 0x016289 0B:8279: BD 7F 82  LDA tbl_827F,X
C - - - - - 0x01628C 0B:827C: 4C 2B 83  JMP loc_832B



tbl_827F:
- D 0 - - - 0x01628F 0B:827F: 0E        .byte $0E   ; 00
- D 0 - - - 0x016290 0B:8280: 0E        .byte $0E   ; 01
- D 0 - - - 0x016291 0B:8281: 10        .byte $10   ; 02
- D 0 - - - 0x016292 0B:8282: 10        .byte $10   ; 03
- D 0 - - - 0x016293 0B:8283: 10        .byte $10   ; 04
- D 0 - - - 0x016294 0B:8284: 12        .byte $12   ; 05
- D 0 - - - 0x016295 0B:8285: 10        .byte $10   ; 06
- D 0 - - - 0x016296 0B:8286: 10        .byte $10   ; 07
- D 0 - - - 0x016297 0B:8287: 12        .byte $12   ; 08
- - - - - - 0x016298 0B:8288: 12        .byte $12   ; 09
- D 0 - - - 0x016299 0B:8289: 0C        .byte $0C   ; 0A
- D 0 - - - 0x01629A 0B:828A: 0C        .byte $0C   ; 0B
- D 0 - - - 0x01629B 0B:828B: 10        .byte $10   ; 0C
- D 0 - - - 0x01629C 0B:828C: 10        .byte $10   ; 0D
- D 0 - - - 0x01629D 0B:828D: 10        .byte $10   ; 0E
- D 0 - - - 0x01629E 0B:828E: 12        .byte $12   ; 0F
- D 0 - - - 0x01629F 0B:828F: 10        .byte $10   ; 10
- D 0 - - - 0x0162A0 0B:8290: 10        .byte $10   ; 11
- D 0 - - - 0x0162A1 0B:8291: 12        .byte $12   ; 12
- - - - - - 0x0162A2 0B:8292: 12        .byte $12   ; 13
- D 0 - - - 0x0162A3 0B:8293: 1A        .byte $1A   ; 14
- D 0 - - - 0x0162A4 0B:8294: 0C        .byte $0C   ; 15
- D 0 - - - 0x0162A5 0B:8295: 10        .byte $10   ; 16
- D 0 - - - 0x0162A6 0B:8296: 10        .byte $10   ; 17
- D 0 - - - 0x0162A7 0B:8297: 10        .byte $10   ; 18
- D 0 - - - 0x0162A8 0B:8298: 12        .byte $12   ; 19
- D 0 - - - 0x0162A9 0B:8299: 10        .byte $10   ; 1A
- D 0 - - - 0x0162AA 0B:829A: 10        .byte $10   ; 1B
- D 0 - - - 0x0162AB 0B:829B: 12        .byte $12   ; 1C
- D 0 - - - 0x0162AC 0B:829C: 12        .byte $12   ; 1D
- D 0 - - - 0x0162AD 0B:829D: 1B        .byte $1B   ; 1E
- D 0 - - - 0x0162AE 0B:829E: 0D        .byte $0D   ; 1F
- D 0 - - - 0x0162AF 0B:829F: 11        .byte $11   ; 20
- D 0 - - - 0x0162B0 0B:82A0: 11        .byte $11   ; 21
- D 0 - - - 0x0162B1 0B:82A1: 11        .byte $11   ; 22
- D 0 - - - 0x0162B2 0B:82A2: 13        .byte $13   ; 23
- D 0 - - - 0x0162B3 0B:82A3: 11        .byte $11   ; 24
- D 0 - - - 0x0162B4 0B:82A4: 11        .byte $11   ; 25
- D 0 - - - 0x0162B5 0B:82A5: 13        .byte $13   ; 26
- - - - - - 0x0162B6 0B:82A6: 13        .byte $13   ; 27
- D 0 - - - 0x0162B7 0B:82A7: 0D        .byte $0D   ; 28
- D 0 - - - 0x0162B8 0B:82A8: 0D        .byte $0D   ; 29
- D 0 - - - 0x0162B9 0B:82A9: 11        .byte $11   ; 2A
- D 0 - - - 0x0162BA 0B:82AA: 11        .byte $11   ; 2B
- D 0 - - - 0x0162BB 0B:82AB: 11        .byte $11   ; 2C
- D 0 - - - 0x0162BC 0B:82AC: 13        .byte $13   ; 2D
- D 0 - - - 0x0162BD 0B:82AD: 11        .byte $11   ; 2E
- D 0 - - - 0x0162BE 0B:82AE: 11        .byte $11   ; 2F
- D 0 - - - 0x0162BF 0B:82AF: 13        .byte $13   ; 30
- D 0 - - - 0x0162C0 0B:82B0: 13        .byte $13   ; 31
- D 0 - - - 0x0162C1 0B:82B1: 0F        .byte $0F   ; 32
- D 0 - - - 0x0162C2 0B:82B2: 0F        .byte $0F   ; 33
- D 0 - - - 0x0162C3 0B:82B3: 11        .byte $11   ; 34
- D 0 - - - 0x0162C4 0B:82B4: 11        .byte $11   ; 35
- D 0 - - - 0x0162C5 0B:82B5: 11        .byte $11   ; 36
- D 0 - - - 0x0162C6 0B:82B6: 13        .byte $13   ; 37
- D 0 - - - 0x0162C7 0B:82B7: 11        .byte $11   ; 38
- D 0 - - - 0x0162C8 0B:82B8: 11        .byte $11   ; 39
- D 0 - - - 0x0162C9 0B:82B9: 13        .byte $13   ; 3A
- - - - - - 0x0162CA 0B:82BA: 13        .byte $13   ; 3B
- D 0 - - - 0x0162CB 0B:82BB: 00        .byte $00   ; 3C
- D 0 - - - 0x0162CC 0B:82BC: 00        .byte $00   ; 3D
- D 0 - - - 0x0162CD 0B:82BD: 02        .byte $02   ; 3E
- D 0 - - - 0x0162CE 0B:82BE: 02        .byte $02   ; 3F
- D 0 - - - 0x0162CF 0B:82BF: 00        .byte $00   ; 40
- D 0 - - - 0x0162D0 0B:82C0: 02        .byte $02   ; 41
- D 0 - - - 0x0162D1 0B:82C1: 02        .byte $02   ; 42
- D 0 - - - 0x0162D2 0B:82C2: 02        .byte $02   ; 43
- D 0 - - - 0x0162D3 0B:82C3: 04        .byte $04   ; 44
- D 0 - - - 0x0162D4 0B:82C4: 04        .byte $04   ; 45
- D 0 - - - 0x0162D5 0B:82C5: 00        .byte $00   ; 46
- D 0 - - - 0x0162D6 0B:82C6: 00        .byte $00   ; 47
- D 0 - - - 0x0162D7 0B:82C7: 02        .byte $02   ; 48
- D 0 - - - 0x0162D8 0B:82C8: 02        .byte $02   ; 49
- D 0 - - - 0x0162D9 0B:82C9: 00        .byte $00   ; 4A
- D 0 - - - 0x0162DA 0B:82CA: 02        .byte $02   ; 4B
- D 0 - - - 0x0162DB 0B:82CB: 02        .byte $02   ; 4C
- D 0 - - - 0x0162DC 0B:82CC: 02        .byte $02   ; 4D
- D 0 - - - 0x0162DD 0B:82CD: 06        .byte $06   ; 4E
- D 0 - - - 0x0162DE 0B:82CE: 06        .byte $06   ; 4F
- D 0 - - - 0x0162DF 0B:82CF: 00        .byte $00   ; 50
- D 0 - - - 0x0162E0 0B:82D0: 00        .byte $00   ; 51
- D 0 - - - 0x0162E1 0B:82D1: 02        .byte $02   ; 52
- D 0 - - - 0x0162E2 0B:82D2: 02        .byte $02   ; 53
- D 0 - - - 0x0162E3 0B:82D3: 00        .byte $00   ; 54
- D 0 - - - 0x0162E4 0B:82D4: 02        .byte $02   ; 55
- D 0 - - - 0x0162E5 0B:82D5: 02        .byte $02   ; 56
- D 0 - - - 0x0162E6 0B:82D6: 02        .byte $02   ; 57
- D 0 - - - 0x0162E7 0B:82D7: 06        .byte $06   ; 58
- D 0 - - - 0x0162E8 0B:82D8: 1B        .byte $1B   ; 59
- D 0 - - - 0x0162E9 0B:82D9: 01        .byte $01   ; 5A
- D 0 - - - 0x0162EA 0B:82DA: 01        .byte $01   ; 5B
- D 0 - - - 0x0162EB 0B:82DB: 03        .byte $03   ; 5C
- D 0 - - - 0x0162EC 0B:82DC: 03        .byte $03   ; 5D
- D 0 - - - 0x0162ED 0B:82DD: 01        .byte $01   ; 5E
- D 0 - - - 0x0162EE 0B:82DE: 03        .byte $03   ; 5F
- D 0 - - - 0x0162EF 0B:82DF: 03        .byte $03   ; 60
- D 0 - - - 0x0162F0 0B:82E0: 03        .byte $03   ; 61
- D 0 - - - 0x0162F1 0B:82E1: 07        .byte $07   ; 62
- D 0 - - - 0x0162F2 0B:82E2: 1A        .byte $1A   ; 63
- D 0 - - - 0x0162F3 0B:82E3: 01        .byte $01   ; 64
- D 0 - - - 0x0162F4 0B:82E4: 01        .byte $01   ; 65
- D 0 - - - 0x0162F5 0B:82E5: 03        .byte $03   ; 66
- D 0 - - - 0x0162F6 0B:82E6: 03        .byte $03   ; 67
- D 0 - - - 0x0162F7 0B:82E7: 01        .byte $01   ; 68
- D 0 - - - 0x0162F8 0B:82E8: 03        .byte $03   ; 69
- D 0 - - - 0x0162F9 0B:82E9: 03        .byte $03   ; 6A
- D 0 - - - 0x0162FA 0B:82EA: 03        .byte $03   ; 6B
- D 0 - - - 0x0162FB 0B:82EB: 07        .byte $07   ; 6C
- D 0 - - - 0x0162FC 0B:82EC: 07        .byte $07   ; 6D
- - - - - - 0x0162FD 0B:82ED: 01        .byte $01   ; 6E
- D 0 - - - 0x0162FE 0B:82EE: 01        .byte $01   ; 6F
- D 0 - - - 0x0162FF 0B:82EF: 03        .byte $03   ; 70
- D 0 - - - 0x016300 0B:82F0: 03        .byte $03   ; 71
- D 0 - - - 0x016301 0B:82F1: 01        .byte $01   ; 72
- D 0 - - - 0x016302 0B:82F2: 03        .byte $03   ; 73
- D 0 - - - 0x016303 0B:82F3: 03        .byte $03   ; 74
- D 0 - - - 0x016304 0B:82F4: 03        .byte $03   ; 75
- D 0 - - - 0x016305 0B:82F5: 05        .byte $05   ; 76
- D 0 - - - 0x016306 0B:82F6: 05        .byte $05   ; 77



sub_82F7:
C - - - - - 0x016307 0B:82F7: AC FB 05  LDY ram_команда_с_мячом
; bzk optimize, удалить JSR и RTS
C - - - - - 0x01630A 0B:82FA: 20 FE 82  JSR sub_82FE
C - - - - - 0x01630D 0B:82FD: 60        RTS



sub_82FE:
C - - - - - 0x01630E 0B:82FE: AD 37 06  LDA ram_ball_pos_Y_hi
C - - - - - 0x016311 0B:8301: 38        SEC
C - - - - - 0x016312 0B:8302: E9 50     SBC #$50
C - - - - - 0x016314 0B:8304: 29 F0     AND #$F0
C - - - - - 0x016316 0B:8306: 4A        LSR
C - - - - - 0x016317 0B:8307: 85 3A     STA ram_003A_t17
C - - - - - 0x016319 0B:8309: 4A        LSR
C - - - - - 0x01631A 0B:830A: 4A        LSR
C - - - - - 0x01631B 0B:830B: 65 3A     ADC ram_003A_t17
C - - - - - 0x01631D 0B:830D: 85 3A     STA ram_003A_t18
C - - - - - 0x01631F 0B:830F: AD 35 06  LDA ram_ball_pos_X_hi
C - - - - - 0x016322 0B:8312: 38        SEC
C - - - - - 0x016323 0B:8313: E9 30     SBC #$30
C - - - - - 0x016325 0B:8315: 29 F0     AND #$F0
C - - - - - 0x016327 0B:8317: 4A        LSR
C - - - - - 0x016328 0B:8318: 4A        LSR
C - - - - - 0x016329 0B:8319: 4A        LSR
C - - - - - 0x01632A 0B:831A: 4A        LSR
C - - - - - 0x01632B 0B:831B: 65 3A     ADC ram_003A_t18
C - - - - - 0x01632D 0B:831D: AA        TAX
C - - - - - 0x01632E 0B:831E: 98        TYA
C - - - - - 0x01632F 0B:831F: F0 05     BEQ bra_8326
C - - - - - 0x016331 0B:8321: 8A        TXA
C - - - - - 0x016332 0B:8322: 18        CLC
C - - - - - 0x016333 0B:8323: 69 3C     ADC #$3C
C - - - - - 0x016335 0B:8325: AA        TAX
bra_8326:
C - - - - - 0x016336 0B:8326: 60        RTS



ofs_009_8327_00:
C - - J - - 0x016337 0B:8327: A0 02     LDY #$02
bra_8329:
loc_8329:
C D 0 - - - 0x016339 0B:8329: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
loc_832B:
C D 0 - - - 0x01633B 0B:832B: 8D CC 05  STA ram_05CC
C - - - - - 0x01633E 0B:832E: AC CD 05  LDY ram_05CD
C - - - - - 0x016341 0B:8331: 20 25 85  JSR sub_8525
C - - - - - 0x016344 0B:8334: A9 01     LDA #$50
C - - - - - 0x016346 0B:8336: 8D CB 05  STA ram_for_046B_mirroring
C - - - - - 0x016349 0B:8339: AD CD 05  LDA ram_05CD
C - - - - - 0x01634C 0B:833C: F0 04     BEQ bra_8342
C - - - - - 0x01634E 0B:833E: 29 20     AND #$20
C - - - - - 0x016350 0B:8340: 09 80     ORA #$80
bra_8342:
C - - - - - 0x016352 0B:8342: 8D CE 05  STA ram_05CE
C - - - - - 0x016355 0B:8345: 09 80     ORA #$80
C - - - - - 0x016357 0B:8347: 49 20     EOR #$20
C - - - - - 0x016359 0B:8349: 8D CD 05  STA ram_05CD
C - - - - - 0x01635C 0B:834C: A9 00     LDA #$00
C - - - - - 0x01635E 0B:834E: 8D DB 05  STA ram_05DB
C - - - - - 0x016361 0B:8351: 8D DC 05  STA ram_05DC
C - - - - - 0x016364 0B:8354: 8D DD 05  STA ram_05DD
C - - - - - 0x016367 0B:8357: 60        RTS



ofs_009_8358_03:
C - - J - - 0x016368 0B:8358: 20 D9 84  JSR sub_84D9
C - - - - - 0x01636B 0B:835B: A9 80     LDA #$80
C - - - - - 0x01636D 0B:835D: 8D D1 05  STA ram_for_05D2
C - - - - - 0x016370 0B:8360: A0 04     LDY #$04
C - - - - - 0x016372 0B:8362: D0 C5     BNE bra_8329    ; jmp



ofs_009_8364_05:
C - - J - - 0x016374 0B:8364: 20 D9 84  JSR sub_84D9
C - - - - - 0x016377 0B:8367: A9 80     LDA #$80
C - - - - - 0x016379 0B:8369: 8D D1 05  STA ram_for_05D2
C - - - - - 0x01637C 0B:836C: A0 04     LDY #$04
C - - - - - 0x01637E 0B:836E: 2C 2A 05  BIT ram_флаг_зеркала_анимации
C - - - - - 0x016381 0B:8371: 50 01     BVC bra_8374
C - - - - - 0x016383 0B:8373: C8        INY
bra_8374:
C - - - - - 0x016384 0B:8374: 4C 29 83  JMP loc_8329



ofs_009_8377_04:
C - - J - - 0x016387 0B:8377: 20 CF 84  JSR sub_84CF
C - - - - - 0x01638A 0B:837A: A0 04     LDY #$04
C - - - - - 0x01638C 0B:837C: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x01638E 0B:837E: 8D E2 05  STA ram_05E2_hi
C - - - - - 0x016391 0B:8381: A9 00     LDA #$00
C - - - - - 0x016393 0B:8383: 8D E1 05  STA ram_05E1_lo
loc_8386:
C D 0 - - - 0x016396 0B:8386: A9 01     LDA #$50
C - - - - - 0x016398 0B:8388: 8D 6B 04  STA ram_mirroring
C - - - - - 0x01639B 0B:838B: A0 A0     LDY #$A0
C - - - - - 0x01639D 0B:838D: AD CC 05  LDA ram_05CC
C - - - - - 0x0163A0 0B:8390: 20 25 85  JSR sub_8525
C - - - - - 0x0163A3 0B:8393: A9 A0     LDA #$A0
C - - - - - 0x0163A5 0B:8395: 20 A1 84  JSR sub_84A1
C - - - - - 0x0163A8 0B:8398: A9 01     LDA #$01
C - - - - - 0x0163AA 0B:839A: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0163AD 0B:839D: A0 05     LDY #$05
C - - - - - 0x0163AF 0B:839F: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x0163B1 0B:83A1: A0 00     LDY #$00
C - - - - - 0x0163B3 0B:83A3: 8C CE 05  STY ram_05CE
C - - - - - 0x0163B6 0B:83A6: 20 25 85  JSR sub_8525
C - - - - - 0x0163B9 0B:83A9: A0 06     LDY #$06
C - - - - - 0x0163BB 0B:83AB: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x0163BD 0B:83AD: A0 80     LDY #$80
C - - - - - 0x0163BF 0B:83AF: 20 25 85  JSR sub_8525
C - - - - - 0x0163C2 0B:83B2: A9 00     LDA #$44
C - - - - - 0x0163C4 0B:83B4: 8D CB 05  STA ram_for_046B_mirroring
C - - - - - 0x0163C7 0B:83B7: A9 60     LDA #$60
C - - - - - 0x0163C9 0B:83B9: 8D CD 05  STA ram_05CD
C - - - - - 0x0163CC 0B:83BC: A9 00     LDA #$00
C - - - - - 0x0163CE 0B:83BE: 8D DB 05  STA ram_05DB
C - - - - - 0x0163D1 0B:83C1: 8D DC 05  STA ram_05DC
C - - - - - 0x0163D4 0B:83C4: 8D DD 05  STA ram_05DD
C - - - - - 0x0163D7 0B:83C7: 8D E0 05  STA ram_05E0
C - - - - - 0x0163DA 0B:83CA: A9 82     LDA #$80 + $02
C - - - - - 0x0163DC 0B:83CC: 8D D1 05  STA ram_for_05D2
C - - - - - 0x0163DF 0B:83CF: 4C 93 84  JMP loc_8493



ofs_009_83D2_06:
C - - J - - 0x0163E2 0B:83D2: 20 D9 84  JSR sub_84D9
C - - - - - 0x0163E5 0B:83D5: A0 04     LDY #$04
C - - - - - 0x0163E7 0B:83D7: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x0163E9 0B:83D9: 8D E2 05  STA ram_05E2_hi
C - - - - - 0x0163EC 0B:83DC: A9 00     LDA #$00
C - - - - - 0x0163EE 0B:83DE: 8D E1 05  STA ram_05E1_lo
C - - - - - 0x0163F1 0B:83E1: 20 7F 84  JSR sub_847F
C - - - - - 0x0163F4 0B:83E4: 4C 86 83  JMP loc_8386



ofs_009_83E7_01:
ofs_009_83E7_07:
C - - J - - 0x0163F7 0B:83E7: A9 C0     LDA #$C0
C - - - - - 0x0163F9 0B:83E9: 8D D1 05  STA ram_for_05D2
C - - - - - 0x0163FC 0B:83EC: D0 1C     BNE bra_840A    ; jmp



ofs_009_83EE_08:
C - - J - - 0x0163FE 0B:83EE: A9 C2     LDA #$C0 + $02
C - - - - - 0x016400 0B:83F0: 8D D1 05  STA ram_for_05D2
C - - - - - 0x016403 0B:83F3: 20 CF 84  JSR sub_84CF
C - - - - - 0x016406 0B:83F6: 20 5C 84  JSR sub_845C
C - - - - - 0x016409 0B:83F9: 20 7F 84  JSR sub_847F
C - - - - - 0x01640C 0B:83FC: 4C 0D 84  JMP loc_840D



ofs_009_83FF_02:
- - - - - - 0x01640F 0B:83FF: A9 C2     LDA #$C0 + $02
- - - - - - 0x016411 0B:8401: 8D D1 05  STA ram_for_05D2
- - - - - - 0x016414 0B:8404: 20 CF 84  JSR sub_84CF
- - - - - - 0x016417 0B:8407: 20 5C 84  JSR sub_845C
bra_840A:
C - - - - - 0x01641A 0B:840A: 20 CF 84  JSR sub_84CF
loc_840D:
C D 0 - - - 0x01641D 0B:840D: A9 01     LDA #$50
C - - - - - 0x01641F 0B:840F: 8D 6B 04  STA ram_mirroring
C - - - - - 0x016422 0B:8412: A0 00     LDY #$00
C - - - - - 0x016424 0B:8414: AD CC 05  LDA ram_05CC
C - - - - - 0x016427 0B:8417: 20 25 85  JSR sub_8525
C - - - - - 0x01642A 0B:841A: A9 00     LDA #$00
C - - - - - 0x01642C 0B:841C: 20 A1 84  JSR sub_84A1
C - - - - - 0x01642F 0B:841F: A0 05     LDY #$05
C - - - - - 0x016431 0B:8421: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x016433 0B:8423: A0 80     LDY #$80
C - - - - - 0x016435 0B:8425: 20 25 85  JSR sub_8525
C - - - - - 0x016438 0B:8428: A0 06     LDY #$06
C - - - - - 0x01643A 0B:842A: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x01643C 0B:842C: A0 A0     LDY #$A0
C - - - - - 0x01643E 0B:842E: 20 25 85  JSR sub_8525
C - - - - - 0x016441 0B:8431: A9 00     LDA #$44
C - - - - - 0x016443 0B:8433: 8D CB 05  STA ram_for_046B_mirroring
C - - - - - 0x016446 0B:8436: A9 40     LDA #$40
C - - - - - 0x016448 0B:8438: 8D CE 05  STA ram_05CE
C - - - - - 0x01644B 0B:843B: A9 00     LDA #$00
C - - - - - 0x01644D 0B:843D: 8D CD 05  STA ram_05CD
C - - - - - 0x016450 0B:8440: A9 00     LDA #$00
C - - - - - 0x016452 0B:8442: 8D DB 05  STA ram_05DB
C - - - - - 0x016455 0B:8445: A9 E0     LDA #$E0
C - - - - - 0x016457 0B:8447: A2 FF     LDX #$FF
C - - - - - 0x016459 0B:8449: 8D DC 05  STA ram_05DC
C - - - - - 0x01645C 0B:844C: 8E DD 05  STX ram_05DD
C - - - - - 0x01645F 0B:844F: 2C DF 05  BIT ram_05DF_hi
C - - - - - 0x016462 0B:8452: 10 02     BPL bra_8456
C - - - - - 0x016464 0B:8454: A9 20     LDA #$20
bra_8456:
; A = 20/E0
C - - - - - 0x016466 0B:8456: 8D E0 05  STA ram_05E0
C - - - - - 0x016469 0B:8459: 4C 93 84  JMP loc_8493



sub_845C:
C - - - - - 0x01646C 0B:845C: A0 04     LDY #$04
C - - - - - 0x01646E 0B:845E: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x016470 0B:8460: 2C DF 05  BIT ram_05DF_hi
C - - - - - 0x016473 0B:8463: 30 0C     BMI bra_8471
- - - - - - 0x016475 0B:8465: 38        SEC
- - - - - - 0x016476 0B:8466: E9 01     SBC #$01
- - - - - - 0x016478 0B:8468: A2 74     LDX #$74
- - - - - - 0x01647A 0B:846A: 4A        LSR
- - - - - - 0x01647B 0B:846B: 90 0B     BCC bra_8478
- - - - - - 0x01647D 0B:846D: A2 E4     LDX #$E4
- - - - - - 0x01647F 0B:846F: D0 07     BNE bra_8478    ; jmp
bra_8471:
C - - - - - 0x016481 0B:8471: A2 1C     LDX #$1C
C - - - - - 0x016483 0B:8473: 4A        LSR
C - - - - - 0x016484 0B:8474: 90 02     BCC bra_8478
C - - - - - 0x016486 0B:8476: A2 8C     LDX #$8C
bra_8478:
C - - - - - 0x016488 0B:8478: 8E E1 05  STX ram_05E1_lo
C - - - - - 0x01648B 0B:847B: 8D E2 05  STA ram_05E2_hi
C - - - - - 0x01648E 0B:847E: 60        RTS



sub_847F:
C - - - - - 0x01648F 0B:847F: A0 05     LDY #$05
C - - - - - 0x016491 0B:8481: 2C 2A 05  BIT ram_флаг_зеркала_анимации
C - - - - - 0x016494 0B:8484: 50 02     BVC bra_8488
C - - - - - 0x016496 0B:8486: C8        INY
C - - - - - 0x016497 0B:8487: C8        INY ; 07
bra_8488:
C - - - - - 0x016498 0B:8488: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x01649A 0B:848A: AA        TAX
C - - - - - 0x01649B 0B:848B: C8        INY
C - - - - - 0x01649C 0B:848C: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x01649E 0B:848E: 85 53     STA ram_0052_t02_data_фон_анимации + $01
C - - - - - 0x0164A0 0B:8490: 86 52     STX ram_0052_t02_data_фон_анимации
C - - - - - 0x0164A2 0B:8492: 60        RTS
loc_8493:
C D 0 - - - 0x0164A3 0B:8493: A9 05     LDA #< $0005
C - - - - - 0x0164A5 0B:8495: 18        CLC
C - - - - - 0x0164A6 0B:8496: 65 52     ADC ram_0052_t02_data_фон_анимации
C - - - - - 0x0164A8 0B:8498: 85 5B     STA ram_005B_t01_data_фон_анимации
C - - - - - 0x0164AA 0B:849A: A5 53     LDA ram_0052_t02_data_фон_анимации + $01
C - - - - - 0x0164AC 0B:849C: 69 00     ADC #> $0005
C - - - - - 0x0164AE 0B:849E: 85 5C     STA ram_005B_t01_data_фон_анимации + $01
C - - - - - 0x0164B0 0B:84A0: 60        RTS



sub_84A1:
sub_0x0164B1:
C D 0 - - - 0x0164B1 0B:84A1: A2 02     LDX #$02
C - - - - - 0x0164B3 0B:84A3: C9 80     CMP #$80
C - - - - - 0x0164B5 0B:84A5: B0 06     BCS bra_84AD
C - - - - - 0x0164B7 0B:84A7: CA        DEX ; 01
C - - - - - 0x0164B8 0B:84A8: C9 40     CMP #$40
C - - - - - 0x0164BA 0B:84AA: B0 01     BCS bra_84AD
C - - - - - 0x0164BC 0B:84AC: CA        DEX ; 00
bra_84AD:
C - - - - - 0x0164BD 0B:84AD: A0 74     LDY #$74
C - - - - - 0x0164BF 0B:84AF: 29 3F     AND #$3F
C - - - - - 0x0164C1 0B:84B1: C9 20     CMP #$20
C - - - - - 0x0164C3 0B:84B3: B0 06     BCS bra_84BB
C - - - - - 0x0164C5 0B:84B5: A0 E4     LDY #$E4
C - - - - - 0x0164C7 0B:84B7: 8A        TXA
C - - - - - 0x0164C8 0B:84B8: 49 02     EOR #$02
C - - - - - 0x0164CA 0B:84BA: AA        TAX
bra_84BB:
C - - - - - 0x0164CB 0B:84BB: A5 20     LDA ram_for_2000
C - - - - - 0x0164CD 0B:84BD: 29 FC     AND #$FC
C - - - - - 0x0164CF 0B:84BF: 85 20     STA ram_for_2000
C - - - - - 0x0164D1 0B:84C1: 8A        TXA
C - - - - - 0x0164D2 0B:84C2: 05 20     ORA ram_for_2000
C - - - - - 0x0164D4 0B:84C4: 85 20     STA ram_for_2000
C - - - - - 0x0164D6 0B:84C6: 84 4B     STY ram_004B_t02_scroll_Y
C - - - - - 0x0164D8 0B:84C8: AD CB 05  LDA ram_for_046B_mirroring
C - - - - - 0x0164DB 0B:84CB: 8D 6B 04  STA ram_mirroring
C - - - - - 0x0164DE 0B:84CE: 60        RTS



sub_84CF:
C - - - - - 0x0164DF 0B:84CF: 20 F4 84  JSR sub_84F4
C - - - - - 0x0164E2 0B:84D2: 8E DE 05  STX ram_05DE_lo
C - - - - - 0x0164E5 0B:84D5: 8C DF 05  STY ram_05DF_hi
C - - - - - 0x0164E8 0B:84D8: 60        RTS



sub_84D9:
C - - - - - 0x0164E9 0B:84D9: 20 F4 84  JSR sub_84F4
C - - - - - 0x0164EC 0B:84DC: 2C 2A 05  BIT ram_флаг_зеркала_анимации
C - - - - - 0x0164EF 0B:84DF: 50 0C     BVC bra_84ED
C - - - - - 0x0164F1 0B:84E1: 8A        TXA
C - - - - - 0x0164F2 0B:84E2: 49 FF     EOR #$FF
C - - - - - 0x0164F4 0B:84E4: AA        TAX
C - - - - - 0x0164F5 0B:84E5: 98        TYA
C - - - - - 0x0164F6 0B:84E6: 49 FF     EOR #$FF
C - - - - - 0x0164F8 0B:84E8: A8        TAY
C - - - - - 0x0164F9 0B:84E9: E8        INX
C - - - - - 0x0164FA 0B:84EA: D0 01     BNE bra_84ED
C - - - - - 0x0164FC 0B:84EC: C8        INY
bra_84ED:
C - - - - - 0x0164FD 0B:84ED: 8E DE 05  STX ram_05DE_lo
C - - - - - 0x016500 0B:84F0: 8C DF 05  STY ram_05DF_hi
C - - - - - 0x016503 0B:84F3: 60        RTS



sub_84F4:
C - - - - - 0x016504 0B:84F4: A0 02     LDY #$02
C - - - - - 0x016506 0B:84F6: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x016508 0B:84F8: AA        TAX
C - - - - - 0x016509 0B:84F9: C8        INY ; 03
C - - - - - 0x01650A 0B:84FA: B1 52     LDA (ram_0052_t02_data_фон_анимации),Y
C - - - - - 0x01650C 0B:84FC: A8        TAY
C - - - - - 0x01650D 0B:84FD: C9 80     CMP #$80
C - - - - - 0x01650F 0B:84FF: F0 01     BEQ bra_8502
C - - - - - 0x016511 0B:8501: 60        RTS
bra_8502:
C - - - - - 0x016512 0B:8502: AD 1D 06  LDA ram_сила_действия_hi
C - - - - - 0x016515 0B:8505: 85 3A     STA ram_003A_t19_сила_действия_hi
C - - - - - 0x016517 0B:8507: AD 1C 06  LDA ram_сила_действия_lo
C - - - - - 0x01651A 0B:850A: 0A        ASL
C - - - - - 0x01651B 0B:850B: 26 3A     ROL ram_003A_t19_сила_действия_hi
C - - - - - 0x01651D 0B:850D: 0A        ASL
C - - - - - 0x01651E 0B:850E: 26 3A     ROL ram_003A_t19_сила_действия_hi
C - - - - - 0x016520 0B:8510: 0A        ASL
C - - - - - 0x016521 0B:8511: 26 3A     ROL ram_003A_t19_сила_действия_hi
C - - - - - 0x016523 0B:8513: E0 01     CPX #$01
C - - - - - 0x016525 0B:8515: F0 03     BEQ bra_851A
C - - - - - 0x016527 0B:8517: 0A        ASL
C - - - - - 0x016528 0B:8518: 26 3A     ROL ram_003A_t19_сила_действия_hi
bra_851A:
C - - - - - 0x01652A 0B:851A: A4 3A     LDY ram_003A_t19_сила_действия_hi
C - - - - - 0x01652C 0B:851C: 18        CLC
C - - - - - 0x01652D 0B:851D: 69 C0     ADC #< $00C0
C - - - - - 0x01652F 0B:851F: AA        TAX
C - - - - - 0x016530 0B:8520: 98        TYA
C - - - - - 0x016531 0B:8521: 69 00     ADC #> $00C0
C - - - - - 0x016533 0B:8523: A8        TAY
C - - - - - 0x016534 0B:8524: 60        RTS



sub_8525:
; in
    ; A = 
    ; Y = 00 60 80 A0 
C - - - - - 0x016535 0B:8525: 8C C8 05  STY ram_05C8
C - - - - - 0x016538 0B:8528: 48        PHA ; -> 0x016556
C - - - - - 0x016539 0B:8529: AA        TAX
C - - - - - 0x01653A 0B:852A: A9 EE     LDA #< tbl_86EE_chr_banks_pairs
C - - - - - 0x01653C 0B:852C: 85 54     STA ram_0054_t01_data_chr_banks_pair
C - - - - - 0x01653E 0B:852E: A9 86     LDA #> tbl_86EE_chr_banks_pairs
C - - - - - 0x016540 0B:8530: 85 55     STA ram_0054_t01_data_chr_banks_pair + $01
C - - - - - 0x016542 0B:8532: 8A        TXA
C - - - - - 0x016543 0B:8533: 0A        ASL
C - - - - - 0x016544 0B:8534: 90 02     BCC bra_8538_not_overflow
C - - - - - 0x016546 0B:8536: E6 55     INC ram_0054_t01_data_chr_banks_pair + $01
bra_8538_not_overflow:
C - - - - - 0x016548 0B:8538: A8        TAY
C - - - - - 0x016549 0B:8539: B1 54     LDA (ram_0054_t01_data_chr_banks_pair),Y
; bzk optimize, записывать байты в таблице заранее +80
C - - - - - 0x01654B 0B:853B: 09 80     ORA #$80
C - - - - - 0x01654D 0B:853D: 8D 26 05  STA ram_0526
C - - - - - 0x016550 0B:8540: C8        INY
C - - - - - 0x016551 0B:8541: B1 54     LDA (ram_0054_t01_data_chr_banks_pair),Y
C - - - - - 0x016553 0B:8543: 8D 27 05  STA ram_0527
C - - - - - 0x016556 0B:8546: 68        PLA ; <- 0x016538
C - - - - - 0x016557 0B:8547: 20 D3 86  JSR sub_86D3_выбор_старших_указателей
; * 08
C - - - - - 0x01655A 0B:854A: A2 00     LDX #$00
C - - - - - 0x01655C 0B:854C: 86 54     STX ram_0054_t03_ptr_lo
C - - - - - 0x01655E 0B:854E: 4A        LSR
C - - - - - 0x01655F 0B:854F: 66 54     ROR ram_0054_t03_ptr_lo
C - - - - - 0x016561 0B:8551: 4A        LSR
C - - - - - 0x016562 0B:8552: 66 54     ROR ram_0054_t03_ptr_lo
C - - - - - 0x016564 0B:8554: 4A        LSR
C - - - - - 0x016565 0B:8555: 66 54     ROR ram_0054_t03_ptr_lo
; X = 00
C - - - - - 0x016567 0B:8557: AA        TAX
C - - - - - 0x016568 0B:8558: A5 54     LDA ram_0054_t03_ptr_lo
C - - - - - 0x01656A 0B:855A: 18        CLC
C - - - - - 0x01656B 0B:855B: 69 64     ADC #< tbl_8B64_8x4_блоков_32x32
C - - - - - 0x01656D 0B:855D: 85 54     STA ram_0054_t02_data_блоки
C - - - - - 0x01656F 0B:855F: 8A        TXA
C - - - - - 0x016570 0B:8560: 69 8B     ADC #> tbl_8B64_8x4_блоков_32x32
C - - - - - 0x016572 0B:8562: 85 55     STA ram_0054_t02_data_блоки + $01
C - - - - - 0x016574 0B:8564: A9 20     LDA #$20
C - - - - - 0x016576 0B:8566: 8D C9 05  STA ram_05C9
C - - - - - 0x016579 0B:8569: AD CA 05  LDA ram_05CA
C - - - - - 0x01657C 0B:856C: 48        PHA
bra_856D_loop:
loc_856D:
C D 0 - - - 0x01657D 0B:856D: A9 01     LDA #$01
C - - - - - 0x01657F 0B:856F: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x016582 0B:8572: AD 15 05  LDA ram_0515_buffer_flag
C - - - - - 0x016585 0B:8575: D0 F6     BNE bra_856D_loop
C - - - - - 0x016587 0B:8577: A9 01     LDA #$01
C - - - - - 0x016589 0B:8579: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x01658C 0B:857C: A9 00     LDA #$00
C - - - - - 0x01658E 0B:857E: 8D C7 05  STA ram_05C7
C - - - - - 0x016591 0B:8581: A9 03     LDA #$03
bra_8583_loop:
C - - - - - 0x016593 0B:8583: AA        TAX
C - - - - - 0x016594 0B:8584: 68        PLA
C - - - - - 0x016595 0B:8585: 8D CA 05  STA ram_05CA
C - - - - - 0x016598 0B:8588: 48        PHA
C - - - - - 0x016599 0B:8589: 8A        TXA
C - - - - - 0x01659A 0B:858A: 48        PHA
C - - - - - 0x01659B 0B:858B: A9 20     LDA #$20
C - - - - - 0x01659D 0B:858D: 38        SEC
C - - - - - 0x01659E 0B:858E: ED C9 05  SBC ram_05C9
C - - - - - 0x0165A1 0B:8591: A8        TAY
C - - - - - 0x0165A2 0B:8592: B1 54     LDA (ram_0054_t02_data_блоки),Y
C - - - - - 0x0165A4 0B:8594: AE C7 05  LDX ram_05C7
C - - - - - 0x0165A7 0B:8597: AC C8 05  LDY ram_05C8
C - - - - - 0x0165AA 0B:859A: 20 C2 85  JSR sub_85C2
C - - - - - 0x0165AD 0B:859D: 8E C7 05  STX ram_05C7
C - - - - - 0x0165B0 0B:85A0: EE C8 05  INC ram_05C8
C - - - - - 0x0165B3 0B:85A3: 68        PLA
C - - - - - 0x0165B4 0B:85A4: CE C9 05  DEC ram_05C9
C - - - - - 0x0165B7 0B:85A7: F0 0D     BEQ bra_85B6
C - - - - - 0x0165B9 0B:85A9: 38        SEC
C - - - - - 0x0165BA 0B:85AA: E9 01     SBC #$01
C - - - - - 0x0165BC 0B:85AC: D0 D5     BNE bra_8583_loop
C - - - - - 0x0165BE 0B:85AE: A9 80     LDA #$80
C - - - - - 0x0165C0 0B:85B0: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x0165C3 0B:85B3: 4C 6D 85  JMP loc_856D
bra_85B6:
C - - - - - 0x0165C6 0B:85B6: 68        PLA
C - - - - - 0x0165C7 0B:85B7: A9 80     LDA #$80
C - - - - - 0x0165C9 0B:85B9: 8D 15 05  STA ram_0515_buffer_flag
C - - - - - 0x0165CC 0B:85BC: A9 01     LDA #$01
; bzk optimize, JMP
C - - - - - 0x0165CE 0B:85BE: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0165D1 0B:85C1: 60        RTS



sub_85C2:
; in
    ; A = 
C - - - - - 0x0165D2 0B:85C2: 85 56     STA ram_0056_t03_data_index
C - - - - - 0x0165D4 0B:85C4: 98        TYA
C - - - - - 0x0165D5 0B:85C5: 29 07     AND #$07
C - - - - - 0x0165D7 0B:85C7: 0A        ASL
C - - - - - 0x0165D8 0B:85C8: 0A        ASL
C - - - - - 0x0165D9 0B:85C9: 9D A6 04  STA ram_04A6,X
C - - - - - 0x0165DC 0B:85CC: A9 00     LDA #$00
C - - - - - 0x0165DE 0B:85CE: 9D A7 04  STA ram_04A7,X
C - - - - - 0x0165E1 0B:85D1: 98        TYA
C - - - - - 0x0165E2 0B:85D2: 29 38     AND #$38
C - - - - - 0x0165E4 0B:85D4: 0A        ASL
C - - - - - 0x0165E5 0B:85D5: 0A        ASL
C - - - - - 0x0165E6 0B:85D6: 0A        ASL
C - - - - - 0x0165E7 0B:85D7: 3E A7 04  ROL ram_04A7,X
C - - - - - 0x0165EA 0B:85DA: 0A        ASL
C - - - - - 0x0165EB 0B:85DB: 3E A7 04  ROL ram_04A7,X
C - - - - - 0x0165EE 0B:85DE: 1D A6 04  ORA ram_04A6,X
C - - - - - 0x0165F1 0B:85E1: 9D A6 04  STA ram_04A6,X
C - - - - - 0x0165F4 0B:85E4: 98        TYA
C - - - - - 0x0165F5 0B:85E5: 29 C0     AND #$C0
C - - - - - 0x0165F7 0B:85E7: 4A        LSR
C - - - - - 0x0165F8 0B:85E8: 4A        LSR
C - - - - - 0x0165F9 0B:85E9: 4A        LSR
C - - - - - 0x0165FA 0B:85EA: 4A        LSR
C - - - - - 0x0165FB 0B:85EB: 09 20     ORA #$20
C - - - - - 0x0165FD 0B:85ED: 1D A7 04  ORA ram_04A7,X
C - - - - - 0x016600 0B:85F0: 9D A7 04  STA ram_04A7,X
C - - - - - 0x016603 0B:85F3: 9D AE 04  STA ram_04AE,X
C - - - - - 0x016606 0B:85F6: 9D B5 04  STA ram_04B5,X
C - - - - - 0x016609 0B:85F9: 9D BC 04  STA ram_04BC,X
C - - - - - 0x01660C 0B:85FC: BD A6 04  LDA ram_04A6,X
C - - - - - 0x01660F 0B:85FF: 18        CLC
C - - - - - 0x016610 0B:8600: 69 20     ADC #$20
C - - - - - 0x016612 0B:8602: 9D AD 04  STA ram_04AD,X
C - - - - - 0x016615 0B:8605: 69 20     ADC #$20
C - - - - - 0x016617 0B:8607: 9D B4 04  STA ram_04B4,X
C - - - - - 0x01661A 0B:860A: 69 20     ADC #$20
C - - - - - 0x01661C 0B:860C: 9D BB 04  STA ram_04BB,X
C - - - - - 0x01661F 0B:860F: 98        TYA
C - - - - - 0x016620 0B:8610: 29 3F     AND #$3F
C - - - - - 0x016622 0B:8612: 09 C0     ORA #$C0
C - - - - - 0x016624 0B:8614: 9D C2 04  STA ram_04C2,X
C - - - - - 0x016627 0B:8617: 98        TYA
C - - - - - 0x016628 0B:8618: 29 C0     AND #$C0
C - - - - - 0x01662A 0B:861A: 4A        LSR
C - - - - - 0x01662B 0B:861B: 4A        LSR
C - - - - - 0x01662C 0B:861C: 4A        LSR
C - - - - - 0x01662D 0B:861D: 4A        LSR
C - - - - - 0x01662E 0B:861E: 09 23     ORA #$23
C - - - - - 0x016630 0B:8620: 9D C3 04  STA ram_04C3,X
C - - - - - 0x016633 0B:8623: A9 04     LDA #$04
C - - - - - 0x016635 0B:8625: 9D A5 04  STA ram_04A5,X
C - - - - - 0x016638 0B:8628: 9D AC 04  STA ram_04AC,X
C - - - - - 0x01663B 0B:862B: 9D B3 04  STA ram_04B3,X
C - - - - - 0x01663E 0B:862E: 9D BA 04  STA ram_04BA,X
C - - - - - 0x016641 0B:8631: A9 01     LDA #$01
C - - - - - 0x016643 0B:8633: 9D C1 04  STA ram_04C1,X
C - - - - - 0x016646 0B:8636: 98        TYA
C - - - - - 0x016647 0B:8637: 48        PHA
C - - - - - 0x016648 0B:8638: 8A        TXA
C - - - - - 0x016649 0B:8639: 48        PHA
C - - - - - 0x01664A 0B:863A: A4 56     LDY ram_0056_t03_data_index
; Y = 00-FF
C - - - - - 0x01664C 0B:863C: A9 E4     LDA #< tbl_9BE4_атрибуты_блоков_32x32
C - - - - - 0x01664E 0B:863E: 85 56     STA ram_0056_t01_data_атрибуты_блоков
C - - - - - 0x016650 0B:8640: AD CA 05  LDA ram_05CA
; A = 00 01 02 
C - - - - - 0x016653 0B:8643: 18        CLC
C - - - - - 0x016654 0B:8644: 69 9B     ADC #> tbl_9BE4_атрибуты_блоков_32x32
C - - - - - 0x016656 0B:8646: 85 57     STA ram_0056_t01_data_атрибуты_блоков + $01
C - - - - - 0x016658 0B:8648: B1 56     LDA (ram_0056_t01_data_атрибуты_блоков),Y
C - - - - - 0x01665A 0B:864A: 9D C4 04  STA ram_04C4,X ; 04C4 04D6 04E4 04E8 0504 
C - - - - - 0x01665D 0B:864D: AD CA 05  LDA ram_05CA
C - - - - - 0x016660 0B:8650: 85 3A     STA ram_003A_t20
C - - - - - 0x016662 0B:8652: A9 00     LDA #$00
C - - - - - 0x016664 0B:8654: 85 56     STA ram_0056_t02_data
C - - - - - 0x016666 0B:8656: 98        TYA
C - - - - - 0x016667 0B:8657: 46 3A     LSR ram_003A_t20
C - - - - - 0x016669 0B:8659: 6A        ROR
C - - - - - 0x01666A 0B:865A: 66 56     ROR ram_0056_t02_data
C - - - - - 0x01666C 0B:865C: 46 3A     LSR ram_003A_t20
C - - - - - 0x01666E 0B:865E: 6A        ROR
C - - - - - 0x01666F 0B:865F: 66 56     ROR ram_0056_t02_data
C - - - - - 0x016671 0B:8661: 4A        LSR
C - - - - - 0x016672 0B:8662: 66 56     ROR ram_0056_t02_data
C - - - - - 0x016674 0B:8664: 4A        LSR
C - - - - - 0x016675 0B:8665: 66 56     ROR ram_0056_t02_data
C - - - - - 0x016677 0B:8667: 48        PHA
C - - - - - 0x016678 0B:8668: 29 1F     AND #$1F
C - - - - - 0x01667A 0B:866A: 09 A0     ORA #$A0
C - - - - - 0x01667C 0B:866C: 85 57     STA ram_0056_t02_data + $01
C - - - - - 0x01667E 0B:866E: 68        PLA
C - - - - - 0x01667F 0B:866F: 29 20     AND #$20
C - - - - - 0x016681 0B:8671: 08        PHP
C - - - - - 0x016682 0B:8672: A9 12     LDA #con_prg_bank + $92
C - - - - - 0x016684 0B:8674: 28        PLP
C - - - - - 0x016685 0B:8675: F0 02     BEQ bra_8679
C - - - - - 0x016687 0B:8677: A9 13     LDA #con_prg_bank + $93
bra_8679:
C - - - - - 0x016694 0B:8684: 8D 25 00  STA ram_for_5115
C - - - - - 0x016697 0B:8687: 8D 01 80  STA $5115
C - - - - - 0x01669A 0B:868A: A9 04     LDA #$04
C - - - - - 0x01669C 0B:868C: A0 00     LDY #$00
bra_868E_loop:
C - - - - - 0x01669E 0B:868E: 48        PHA
C - - - - - 0x01669F 0B:868F: A9 04     LDA #$04
bra_8691_loop:
C - - - - - 0x0166A1 0B:8691: 48        PHA
C - - - - - 0x0166A2 0B:8692: B1 56     LDA (ram_0056_t02_data),Y
C - - - - - 0x0166A4 0B:8694: 9D A8 04  STA ram_04A8,X
C - - - - - 0x0166A7 0B:8697: E8        INX
C - - - - - 0x0166A8 0B:8698: C8        INY
C - - - - - 0x0166A9 0B:8699: 68        PLA
C - - - - - 0x0166AA 0B:869A: 38        SEC
C - - - - - 0x0166AB 0B:869B: E9 01     SBC #$01
C - - - - - 0x0166AD 0B:869D: D0 F2     BNE bra_8691_loop
C - - - - - 0x0166AF 0B:869F: E8        INX
C - - - - - 0x0166B0 0B:86A0: E8        INX
C - - - - - 0x0166B1 0B:86A1: E8        INX
C - - - - - 0x0166B2 0B:86A2: 68        PLA
C - - - - - 0x0166B3 0B:86A3: 38        SEC
C - - - - - 0x0166B4 0B:86A4: E9 01     SBC #$01
C - - - - - 0x0166B6 0B:86A6: D0 E6     BNE bra_868E_loop
C - - - - - 0x0166B8 0B:86A8: 68        PLA
C - - - - - 0x0166B9 0B:86A9: AA        TAX
C - - - - - 0x0166BA 0B:86AA: A9 00     LDA #$00
C - - - - - 0x0166BC 0B:86AC: 9D C5 04  STA ram_04C5,X
C - - - - - 0x0166BF 0B:86AF: 68        PLA
C - - - - - 0x0166C0 0B:86B0: 29 3F     AND #$3F
C - - - - - 0x0166C2 0B:86B2: C9 38     CMP #$38
C - - - - - 0x0166C4 0B:86B4: B0 06     BCS bra_86BC
C - - - - - 0x0166C6 0B:86B6: 8A        TXA
C - - - - - 0x0166C7 0B:86B7: 18        CLC
C - - - - - 0x0166C8 0B:86B8: 69 20     ADC #$20
C - - - - - 0x0166CA 0B:86BA: AA        TAX
C - - - - - 0x0166CB 0B:86BB: 60        RTS
bra_86BC:
C - - - - - 0x0166CC 0B:86BC: 8A        TXA
C - - - - - 0x0166CD 0B:86BD: A8        TAY
C - - - - - 0x0166CE 0B:86BE: 18        CLC
C - - - - - 0x0166CF 0B:86BF: 69 12     ADC #$12
C - - - - - 0x0166D1 0B:86C1: AA        TAX
C - - - - - 0x0166D2 0B:86C2: A9 05     LDA #$05
bra_86C4_loop:
C - - - - - 0x0166D4 0B:86C4: 48        PHA
C - - - - - 0x0166D5 0B:86C5: B9 C1 04  LDA ram_04C1,Y
C - - - - - 0x0166D8 0B:86C8: 99 B3 04  STA ram_04B3,Y
C - - - - - 0x0166DB 0B:86CB: C8        INY
C - - - - - 0x0166DC 0B:86CC: 68        PLA
C - - - - - 0x0166DD 0B:86CD: 38        SEC
C - - - - - 0x0166DE 0B:86CE: E9 01     SBC #$01
C - - - - - 0x0166E0 0B:86D0: D0 F2     BNE bra_86C4_loop
C - - - - - 0x0166E2 0B:86D2: 60        RTS



sub_86D3_выбор_старших_указателей:
C - - - - - 0x0166E3 0B:86D3: 48        PHA
C - - - - - 0x0166E4 0B:86D4: 29 03     AND #$03
C - - - - - 0x0166E6 0B:86D6: AA        TAX
C - - - - - 0x0166E7 0B:86D7: 68        PLA
C - - - - - 0x0166E8 0B:86D8: 48        PHA
C - - - - - 0x0166E9 0B:86D9: 4A        LSR
C - - - - - 0x0166EA 0B:86DA: 4A        LSR
C - - - - - 0x0166EB 0B:86DB: A8        TAY
C - - - - - 0x0166EC 0B:86DC: B9 42 8B  LDA tbl_8B42,Y
loc_86DF_loop:
C D 0 - - - 0x0166EF 0B:86DF: CA        DEX
C - - - - - 0x0166F0 0B:86E0: 30 05     BMI bra_86E7
C - - - - - 0x0166F2 0B:86E2: 4A        LSR
C - - - - - 0x0166F3 0B:86E3: 4A        LSR
C - - - - - 0x0166F4 0B:86E4: 4C DF 86  JMP loc_86DF_loop
bra_86E7:
C - - - - - 0x0166F7 0B:86E7: 29 03     AND #$03
C - - - - - 0x0166F9 0B:86E9: 8D CA 05  STA ram_05CA
C - - - - - 0x0166FC 0B:86EC: 68        PLA
C - - - - - 0x0166FD 0B:86ED: 60        RTS



tbl_86EE_chr_banks_pairs:
- D 0 - I - 0x0166FE 0B:86EE: 3C        .byte $3C, $4A   ; 00
- D 0 - I - 0x016700 0B:86F0: 3C        .byte $3C, $4A   ; 01
- D 0 - I - 0x016702 0B:86F2: 3C        .byte $3C, $4A   ; 02
- D 0 - I - 0x016704 0B:86F4: 3C        .byte $3C, $4A   ; 03
- D 0 - I - 0x016706 0B:86F6: 3C        .byte $3C, $4A   ; 04
- D 0 - I - 0x016708 0B:86F8: 3C        .byte $3C, $4A   ; 05
- D 0 - I - 0x01670A 0B:86FA: 3C        .byte $3C, $4A   ; 06
- D 0 - I - 0x01670C 0B:86FC: 3C        .byte $3C, $4A   ; 07
- - - - - - 0x01670E 0B:86FE: 3C        .byte $3C, $4A   ; 08 в новых логах не читалось
- D 0 - I - 0x016710 0B:8700: 3C        .byte $3C, $4A   ; 09
- D 0 - I - 0x016712 0B:8702: 3C        .byte $3C, $4A   ; 0A
- D 0 - I - 0x016714 0B:8704: 3C        .byte $3C, $4A   ; 0B
- D 0 - I - 0x016716 0B:8706: 3C        .byte $3C, $4A   ; 0C
- D 0 - I - 0x016718 0B:8708: 3C        .byte $3C, $4A   ; 0D
- D 0 - I - 0x01671A 0B:870A: 3C        .byte $3C, $4A   ; 0E
- D 0 - I - 0x01671C 0B:870C: 3C        .byte $3C, $4A   ; 0F
- D 0 - I - 0x01671E 0B:870E: 3C        .byte $3C, $4A   ; 10
- D 0 - I - 0x016720 0B:8710: 3C        .byte $3C, $4A   ; 11
- D 0 - I - 0x016722 0B:8712: 3C        .byte $3C, $4A   ; 12
- D 0 - I - 0x016724 0B:8714: 3C        .byte $3C, $4A   ; 13
- D 0 - I - 0x016726 0B:8716: 54        .byte $54, $56   ; 14
- D 0 - I - 0x016728 0B:8718: 54        .byte $54, $56   ; 15
- D 0 - I - 0x01672A 0B:871A: 50        .byte $50, $52   ; 16
- D 0 - I - 0x01672C 0B:871C: 50        .byte $50, $52   ; 17
- - - - - - 0x01672E 0B:871E: 54        .byte $54, $56   ; 18 в новых логах не читалось
- - - - - - 0x016730 0B:8720: 50        .byte $50, $52   ; 19 в новых логах не читалось
- D 0 - I - 0x016732 0B:8722: 54        .byte $54, $56   ; 1A
- D 0 - I - 0x016734 0B:8724: 50        .byte $50, $52   ; 1B
- D 0 - I - 0x016736 0B:8726: 54        .byte $54, $56   ; 1C
- D 0 - I - 0x016738 0B:8728: 50        .byte $50, $52   ; 1D
- D 0 - I - 0x01673A 0B:872A: 54        .byte $54, $56   ; 1E
- D 0 - I - 0x01673C 0B:872C: 50        .byte $50, $52   ; 1F
- D 0 - I - 0x01673E 0B:872E: 3C        .byte $3C, $3E   ; 20
- D 0 - I - 0x016740 0B:8730: 3C        .byte $3C, $3E   ; 21
- D 0 - I - 0x016742 0B:8732: 4C        .byte $4C, $2E   ; 22
- D 0 - I - 0x016744 0B:8734: 4E        .byte $4E, $2E   ; 23
- D 0 - I - 0x016746 0B:8736: 60        .byte $60, $62   ; 24
- D 0 - I - 0x016748 0B:8738: 3C        .byte $3C, $3E   ; 25
- D 0 - I - 0x01674A 0B:873A: 3A        .byte $3A, $00   ; 26
- D 0 - I - 0x01674C 0B:873C: 3A        .byte $3A, $00   ; 27
- D 0 - I - 0x01674E 0B:873E: 3A        .byte $3A, $00   ; 28
- D 0 - I - 0x016750 0B:8740: 3A        .byte $3A, $00   ; 29
- D 0 - I - 0x016752 0B:8742: 38        .byte $38, $00   ; 2A
- D 0 - I - 0x016754 0B:8744: 38        .byte $38, $00   ; 2B
- D 0 - I - 0x016756 0B:8746: 60        .byte $60, $62   ; 2C
- D 0 - I - 0x016758 0B:8748: 00        .byte $00, $02   ; 2D
- D 0 - I - 0x01675A 0B:874A: 3E        .byte $3E, $00   ; 2E
- D 0 - I - 0x01675C 0B:874C: 3C        .byte $3C, $4A   ; 2F
- D 0 - I - 0x01675E 0B:874E: 2E        .byte $2E, $3C   ; 30
- D 0 - I - 0x016760 0B:8750: 3C        .byte $3C, $46   ; 31
- D 0 - I - 0x016762 0B:8752: 3C        .byte $3C, $46   ; 32
- D 0 - I - 0x016764 0B:8754: 3C        .byte $3C, $4A   ; 33
- D 0 - I - 0x016766 0B:8756: 3C        .byte $3C, $4A   ; 34
- D 0 - I - 0x016768 0B:8758: 00        .byte $00, $3C   ; 35
- D 0 - I - 0x01676A 0B:875A: 00        .byte $00, $3C   ; 36
- D 0 - I - 0x01676C 0B:875C: 3C        .byte $3C, $4A   ; 37
- D 0 - I - 0x01676E 0B:875E: 48        .byte $48, $42   ; 38
- D 0 - I - 0x016770 0B:8760: 48        .byte $48, $42   ; 39
- D 0 - I - 0x016772 0B:8762: 48        .byte $48, $42   ; 3A
- D 0 - I - 0x016774 0B:8764: 48        .byte $48, $42   ; 3B
- D 0 - I - 0x016776 0B:8766: 48        .byte $48, $42   ; 3C
- D 0 - I - 0x016778 0B:8768: 48        .byte $48, $42   ; 3D
- D 0 - I - 0x01677A 0B:876A: 48        .byte $48, $42   ; 3E
- D 0 - I - 0x01677C 0B:876C: 48        .byte $48, $42   ; 3F
- D 0 - I - 0x01677E 0B:876E: 3C        .byte $3C, $2E   ; 40
- D 0 - I - 0x016780 0B:8770: 3C        .byte $3C, $04   ; 41
- D 0 - I - 0x016782 0B:8772: 3C        .byte $3C, $2C   ; 42
- D 0 - I - 0x016784 0B:8774: 3C        .byte $3C, $2C   ; 43
- D 0 - I - 0x016786 0B:8776: 56        .byte $56, $00   ; 44
- D 0 - I - 0x016788 0B:8778: 56        .byte $56, $00   ; 45
- D 0 - I - 0x01678A 0B:877A: 50        .byte $50, $52   ; 46
- D 0 - I - 0x01678C 0B:877C: 3C        .byte $3C, $52   ; 47
- D 0 - I - 0x01678E 0B:877E: 3C        .byte $3C, $52   ; 48
- D 0 - I - 0x016790 0B:8780: 3C        .byte $3C, $52   ; 49
- D 0 - I - 0x016792 0B:8782: 3C        .byte $3C, $44   ; 4A
- - - - - - 0x016794 0B:8784: 3C        .byte $3C, $44   ; 4B в новых логах не читалось
- D 0 - I - 0x016796 0B:8786: 3C        .byte $3C, $44   ; 4C
- - - - - - 0x016798 0B:8788: 3C        .byte $3C, $44   ; 4D в новых логах не читалось
- D 0 - I - 0x01679A 0B:878A: 3C        .byte $3C, $00   ; 4E
- D 0 - I - 0x01679C 0B:878C: 3E        .byte $3E, $00   ; 4F
- D 0 - I - 0x01679E 0B:878E: 3C        .byte $3C, $4A   ; 50
- D 0 - I - 0x0167A0 0B:8790: 3C        .byte $3C, $4A   ; 51
- D 0 - I - 0x0167A2 0B:8792: 3C        .byte $3C, $4A   ; 52
- D 0 - I - 0x0167A4 0B:8794: 4C        .byte $4C, $00   ; 53
- D 0 - I - 0x0167A6 0B:8796: 4C        .byte $4C, $00   ; 54
- D 0 - I - 0x0167A8 0B:8798: 50        .byte $50, $52   ; 55
- D 0 - I - 0x0167AA 0B:879A: 3C        .byte $3C, $2E   ; 56
- D 0 - I - 0x0167AC 0B:879C: 3C        .byte $3C, $4A   ; 57
- D 0 - I - 0x0167AE 0B:879E: 3C        .byte $3C, $4A   ; 58
- D 0 - I - 0x0167B0 0B:87A0: 3C        .byte $3C, $4A   ; 59
- D 0 - I - 0x0167B2 0B:87A2: 42        .byte $42, $44   ; 5A
- D 0 - I - 0x0167B4 0B:87A4: 42        .byte $42, $44   ; 5B
- D 0 - I - 0x0167B6 0B:87A6: 42        .byte $42, $44   ; 5C
- D 0 - I - 0x0167B8 0B:87A8: 06        .byte $06, $3D   ; 5D
- D 0 - I - 0x0167BA 0B:87AA: 06        .byte $06, $3C   ; 5E
- D 0 - I - 0x0167BC 0B:87AC: 06        .byte $06, $00   ; 5F
- D 0 - I - 0x0167BE 0B:87AE: 06        .byte $06, $3C   ; 60
- - - - - - 0x0167C0 0B:87B0: 48        .byte $48, $42   ; 61 в новых логах не читалось
- - - - - - 0x0167C2 0B:87B2: 3C        .byte $3C, $4A   ; 62 в новых логах не читалось
- - - - - - 0x0167C4 0B:87B4: 3C        .byte $3C, $4A   ; 63 в новых логах не читалось
- D 0 - I - 0x0167C6 0B:87B6: 60        .byte $60, $62   ; 64
- D 0 - I - 0x0167C8 0B:87B8: 48        .byte $48, $42   ; 65
- D 0 - I - 0x0167CA 0B:87BA: 48        .byte $48, $42   ; 66
- D 0 - I - 0x0167CC 0B:87BC: 48        .byte $48, $42   ; 67
- D 0 - I - 0x0167CE 0B:87BE: 48        .byte $48, $42   ; 68
- D 0 - I - 0x0167D0 0B:87C0: 48        .byte $48, $42   ; 69
- D 0 - I - 0x0167D2 0B:87C2: 52        .byte $52, $4A   ; 6A
- D 0 - I - 0x0167D4 0B:87C4: 3C        .byte $3C, $4A   ; 6B
- D 0 - I - 0x0167D6 0B:87C6: 40        .byte $40, $00   ; 6C
- D 0 - I - 0x0167D8 0B:87C8: 40        .byte $40, $00   ; 6D
- D 0 - I - 0x0167DA 0B:87CA: 06        .byte $06, $3C   ; 6E
- D 0 - I - 0x0167DC 0B:87CC: 40        .byte $40, $3C   ; 6F
- D 0 - I - 0x0167DE 0B:87CE: 58        .byte $58, $5A   ; 70
- D 0 - I - 0x0167E0 0B:87D0: 58        .byte $58, $5A   ; 71
- D 0 - I - 0x0167E2 0B:87D2: 58        .byte $58, $5A   ; 72
- D 0 - I - 0x0167E4 0B:87D4: 3C        .byte $3C, $4A   ; 73
- - - - - - 0x0167E6 0B:87D6: 54        .byte $54, $56   ; 74 в новых логах не читалось
- D 0 - I - 0x0167E8 0B:87D8: 3C        .byte $3C, $2E   ; 75
- D 0 - I - 0x0167EA 0B:87DA: 3C        .byte $3C, $52   ; 76
- D 0 - I - 0x0167EC 0B:87DC: 3C        .byte $3C, $52   ; 77
- - - - - - 0x0167EE 0B:87DE: 54        .byte $54, $56   ; 78 в новых логах не читалось
- - - - - - 0x0167F0 0B:87E0: 50        .byte $50, $52   ; 79 в новых логах не читалось
- D 0 - I - 0x0167F2 0B:87E2: 3C        .byte $3C, $04   ; 7A
- D 0 - I - 0x0167F4 0B:87E4: 3C        .byte $3C, $04   ; 7B
- D 0 - I - 0x0167F6 0B:87E6: 54        .byte $54, $56   ; 7C
- D 0 - I - 0x0167F8 0B:87E8: 54        .byte $54, $56   ; 7D
- D 0 - I - 0x0167FA 0B:87EA: 50        .byte $50, $52   ; 7E
- D 0 - I - 0x0167FC 0B:87EC: 56        .byte $56, $4A   ; 7F
- D 0 - I - 0x0167FE 0B:87EE: 3A        .byte $3A, $00   ; 80
- D 0 - I - 0x016800 0B:87F0: 3A        .byte $3A, $00   ; 81
- D 0 - I - 0x016802 0B:87F2: 3A        .byte $3A, $00   ; 82
- D 0 - I - 0x016804 0B:87F4: 3C        .byte $3C, $4A   ; 83



tbl_87F6_данные_фона_анимаций:
; смотреть con_s_bg
- D 0 - I - 0x016806 0B:87F6: DE 88     .word _off005_88DE_00   ; 
- D 0 - I - 0x016808 0B:87F8: E3 88     .word _off005_88E3_01   ; 
- D 0 - I - 0x01680A 0B:87FA: E4 88     .word _off005_88E4_02   ; 
- D 0 - I - 0x01680C 0B:87FC: E7 88     .word _off005_88E7_03   ; 
- D 0 - I - 0x01680E 0B:87FE: ED 88     .word _off005_88ED_04   ; 
- D 0 - I - 0x016810 0B:8800: F3 88     .word _off005_88F3_05   ; 
- D 0 - I - 0x016812 0B:8802: F6 88     .word _off005_88F6_06   ; 
- D 0 - I - 0x016814 0B:8804: FC 88     .word _off005_88FC_07   ; 
- D 0 - I - 0x016816 0B:8806: 02 89     .word _off005_8902_08   ; 
- D 0 - I - 0x016818 0B:8808: 05 89     .word _off005_8905_09   ; 
- D 0 - I - 0x01681A 0B:880A: 08 89     .word _off005_8908_0A   ; 
- D 0 - I - 0x01681C 0B:880C: 0B 89     .word _off005_890B_0B   ; 
- D 0 - I - 0x01681E 0B:880E: 11 89     .word _off005_8911_0C   ; 
- D 0 - I - 0x016820 0B:8810: 14 89     .word _off005_8914_0D   ; 
- D 0 - I - 0x016822 0B:8812: 17 89     .word _off005_8917_0E   ; 
- D 0 - I - 0x016824 0B:8814: 1D 89     .word _off005_891D_0F   ; 
- D 0 - I - 0x016826 0B:8816: 23 89     .word _off005_8923_10   ; 
- D 0 - I - 0x016828 0B:8818: 26 89     .word _off005_8926_11   ; 
- D 0 - I - 0x01682A 0B:881A: 2C 89     .word _off005_892C_12   ; 
- D 0 - I - 0x01682C 0B:881C: 2F 89     .word _off005_892F_13   ; 
- D 0 - I - 0x01682E 0B:881E: 35 89     .word _off005_8935_14   ; 
- D 0 - I - 0x016830 0B:8820: 3B 89     .word _off005_893B_15   ; 
- D 0 - I - 0x016832 0B:8822: 41 89     .word _off005_8941_16   ; 
- D 0 - I - 0x016834 0B:8824: 44 89     .word _off005_8944_17   ; 
- D 0 - I - 0x016836 0B:8826: 4A 89     .word _off005_894A_18   ; 
- D 0 - I - 0x016838 0B:8828: 50 89     .word _off005_8950_19   ; 
- - - - - - 0x01683A 0B:882A: 55 89     .word _off005_8955_1A   ; unused, индекс в сценариях не найден (и в новых логах не читалось)
- D 0 - I - 0x01683C 0B:882C: 56 89     .word _off005_8956_1B   ; 
- D 0 - I - 0x01683E 0B:882E: 5B 89     .word _off005_895B_1C   ; 
- D 0 - I - 0x016840 0B:8830: 60 89     .word _off005_8960_1D   ; 
- D 0 - I - 0x016842 0B:8832: 65 89     .word _off005_8965_1E   ; 
- D 0 - I - 0x016844 0B:8834: 6A 89     .word _off005_896A_1F   ; 
- D 0 - I - 0x016846 0B:8836: 6F 89     .word _off005_896F_20   ; 
- - - - - - 0x016848 0B:8838: 74 89     .word _off005_8974_21   ; unused, индекс в сценариях не найден (и в новых логах не читалось)
- D 0 - I - 0x01684A 0B:883A: 7B 89     .word _off005_897B_22   ; 
- D 0 - I - 0x01684C 0B:883C: 80 89     .word _off005_8980_23   ; 
- D 0 - I - 0x01684E 0B:883E: 85 89     .word _off005_8985_24   ; 
- D 0 - I - 0x016850 0B:8840: 8A 89     .word _off005_898A_25   ; 
- D 0 - I - 0x016852 0B:8842: 8F 89     .word _off005_898F_26   ; 
- D 0 - I - 0x016854 0B:8844: 95 89     .word _off005_8995_27   ; 
- D 0 - I - 0x016856 0B:8846: 9A 89     .word _off005_899A_28   ; 
- D 0 - I - 0x016858 0B:8848: 9F 89     .word _off005_899F_29   ; 
- D 0 - I - 0x01685A 0B:884A: A4 89     .word _off005_89A4_2A   ; 
- D 0 - I - 0x01685C 0B:884C: A9 89     .word _off005_89A9_2B   ; 
- D 0 - I - 0x01685E 0B:884E: AF 89     .word _off005_89AF_2C   ; 
- D 0 - I - 0x016860 0B:8850: B2 89     .word _off005_89B2_2D   ; 
- D 0 - I - 0x016862 0B:8852: B5 89     .word _off005_89B5_2E   ; 
- D 0 - I - 0x016864 0B:8854: C2 89     .word _off005_89C2_2F   ; 
- D 0 - I - 0x016866 0B:8856: CF 89     .word _off005_89CF_30   ; 
- D 0 - I - 0x016868 0B:8858: D5 89     .word _off005_89D5_31   ; 
- D 0 - I - 0x01686A 0B:885A: DB 89     .word _off005_89DB_32   ; 
- D 0 - I - 0x01686C 0B:885C: DE 89     .word _off005_89DE_33   ; 
- D 0 - I - 0x01686E 0B:885E: E1 89     .word _off005_89E1_34   ; 
- D 0 - I - 0x016870 0B:8860: E4 89     .word _off005_89E4_35   ; 
- D 0 - I - 0x016872 0B:8862: E7 89     .word _off005_89E7_36   ; 
- D 0 - I - 0x016874 0B:8864: EA 89     .word _off005_89EA_37   ; 
- D 0 - I - 0x016876 0B:8866: ED 89     .word _off005_89ED_38   ; 
- D 0 - I - 0x016878 0B:8868: F0 89     .word _off005_89F0_39   ; 
- D 0 - I - 0x01687A 0B:886A: F3 89     .word _off005_89F3_3A   ; 
- - - - - - 0x01687C 0B:886C: F6 89     .word _off005_89F6_3B   ; unused, байтов в сценариях не найдено (и в новых логах не читалось)
- D 0 - I - 0x01687E 0B:886E: FC 89     .word _off005_89FC_3C   ; 
- - - - - - 0x016880 0B:8870: FF 89     .word _off005_89FF_3D   ; unused, байтов в сценариях не найдено (и в новых логах не читалось)
- D 0 - I - 0x016882 0B:8872: 04 8A     .word _off005_8A04_3E   ; 
- D 0 - I - 0x016884 0B:8874: 0A 8A     .word _off005_8A0A_3F   ; 
- D 0 - I - 0x016886 0B:8876: 11 8A     .word _off005_8A11_40   ; 
- D 0 - I - 0x016888 0B:8878: 17 8A     .word _off005_8A17_41   ; 
- D 0 - I - 0x01688A 0B:887A: 1A 8A     .word _off005_8A1A_42   ; 
- D 0 - I - 0x01688C 0B:887C: 20 8A     .word _off005_8A20_43   ; 
- D 0 - I - 0x01688E 0B:887E: 23 8A     .word _off005_8A23_44   ; 
- D 0 - I - 0x016890 0B:8880: 2A 8A     .word _off005_8A2A_45   ; 
- D 0 - I - 0x016892 0B:8882: 2D 8A     .word _off005_8A2D_46   ; 
- D 0 - I - 0x016894 0B:8884: 30 8A     .word _off005_8A30_47   ; 
- D 0 - I - 0x016896 0B:8886: 35 8A     .word _off005_8A35_48   ; 
- D 0 - I - 0x016898 0B:8888: 3A 8A     .word _off005_8A3A_49   ; 
- D 0 - I - 0x01689A 0B:888A: 41 8A     .word _off005_8A41_4A   ; 
- D 0 - I - 0x01689C 0B:888C: 48 8A     .word _off005_8A48_4B   ; 
- D 0 - I - 0x01689E 0B:888E: 4D 8A     .word _off005_8A4D_4C   ; 
- D 0 - I - 0x0168A0 0B:8890: 5C 8A     .word _off005_8A5C_4D   ; 
- D 0 - I - 0x0168A2 0B:8892: 61 8A     .word _off005_8A61_4E   ; 
- D 0 - I - 0x0168A4 0B:8894: 66 8A     .word _off005_8A66_4F   ; 
- - - - - - 0x0168A6 0B:8896: 69 8A     .word _off005_8A69_50   ; unused, индекса в сценариях не найден (и в новых логах не читалось)
- D 0 - I - 0x0168A8 0B:8898: 6E 8A     .word _off005_8A6E_51   ; 
- D 0 - I - 0x0168AA 0B:889A: 74 8A     .word _off005_8A74_52   ; 
- D 0 - I - 0x0168AC 0B:889C: 77 8A     .word _off005_8A77_53   ; 
- D 0 - I - 0x0168AE 0B:889E: 7D 8A     .word _off005_8A7D_54   ; 
- D 0 - I - 0x0168B0 0B:88A0: 8A 8A     .word _off005_8A8A_55   ; 
- D 0 - I - 0x0168B2 0B:88A2: 8D 8A     .word _off005_8A8D_56   ; 
- D 0 - I - 0x0168B4 0B:88A4: 92 8A     .word _off005_8A92_57   ; 
- D 0 - I - 0x0168B6 0B:88A6: 98 8A     .word _off005_8A98_58   ; 
- D 0 - I - 0x0168B8 0B:88A8: 9E 8A     .word _off005_8A9E_59   ; 
- D 0 - I - 0x0168BA 0B:88AA: A1 8A     .word _off005_8AA1_5A   ; 
- D 0 - I - 0x0168BC 0B:88AC: A6 8A     .word _off005_8AA6_5B   ; 
- D 0 - I - 0x0168BE 0B:88AE: AB 8A     .word _off005_8AAB_5C   ; 
- D 0 - I - 0x0168C0 0B:88B0: B2 8A     .word _off005_8AB2_5D   ; 
- D 0 - I - 0x0168C2 0B:88B2: B7 8A     .word _off005_8AB7_5E   ; 
- D 0 - I - 0x0168C4 0B:88B4: BC 8A     .word _off005_8ABC_5F   ; 
- D 0 - I - 0x0168C6 0B:88B6: C3 8A     .word _off005_8AC3_60   ; 
- D 0 - I - 0x0168C8 0B:88B8: C8 8A     .word _off005_8AC8_61   ; 
- D 0 - I - 0x0168CA 0B:88BA: CB 8A     .word _off005_8ACB_62   ; 
- D 0 - I - 0x0168CC 0B:88BC: D8 8A     .word _off005_8AD8_63   ; 
- D 0 - I - 0x0168CE 0B:88BE: DB 8A     .word _off005_8ADB_64   ; 
- D 0 - I - 0x0168D0 0B:88C0: E0 8A     .word _off005_8AE0_65   ; 
- - - - - - 0x0168D2 0B:88C2: E6 8A     .word _off005_8AE6_66   ; unused, индекс в сценариях не найден (и в новых логах не читалось)
- D 0 - I - 0x0168D4 0B:88C4: ED 8A     .word _off005_8AED_67   ; 
- D 0 - I - 0x0168D6 0B:88C6: F3 8A     .word _off005_8AF3_68   ; 
- D 0 - I - 0x0168D8 0B:88C8: F9 8A     .word _off005_8AF9_69   ; 
- D 0 - I - 0x0168DA 0B:88CA: FF 8A     .word _off005_8AFF_6A   ; 
- D 0 - I - 0x0168DC 0B:88CC: 04 8B     .word _off005_8B04_6B   ; 
- D 0 - I - 0x0168DE 0B:88CE: 09 8B     .word _off005_8B09_6C   ; 
- D 0 - I - 0x0168E0 0B:88D0: 0F 8B     .word _off005_8B0F_6D   ; 
- D 0 - I - 0x0168E2 0B:88D2: 1C 8B     .word _off005_8B1C_6E   ; 
- - - - - - 0x0168E4 0B:88D4: 2B 8B     .word _off005_8B2B_6F   ; unused, индекс в сценариях не найден (и в новых логах не читалось)
- D 0 - I - 0x0168E6 0B:88D6: 38 8B     .word _off005_8B38_70   ; 
- D 0 - I - 0x0168E8 0B:88D8: 3B 8B     .word _off005_8B3B_71   ; 
- D 0 - I - 0x0168EA 0B:88DA: 3E 8B     .word _off005_8B3E_72   ; 
- D 0 - I - 0x0168EC 0B:88DC: 3F 8B     .word _off005_8B3F_73   ; найден 1 случай в сценариях, что-то связанное с вакашимазу (читалось в новых логах)



_off005_88DE_00:
; con_s_bg_00
- D 0 - I - 0x0168EE 0B:88DE: 02        .byte $02   ; 
- D 0 - I - 0x0168EF 0B:88DF: 03        .byte $03   ; 
- D 0 - I - 0x0168F0 0B:88E0: 00        .byte $00   ; 
- D 0 - I - 0x0168F1 0B:88E1: 06        .byte $06   ; 
- D 0 - I - 0x0168F2 0B:88E2: 50        .byte $50   ; 


_off005_88E3_01:
; con_s_bg_01
- D 0 - I - 0x0168F3 0B:88E3: F0        .byte con_81BC_F0



_off005_88E4_02:
; con_s_bg_02
- D 0 - I - 0x0168F4 0B:88E4: 02        .byte $02   ; 
- D 0 - I - 0x0168F5 0B:88E5: 00        .byte $00   ; 
- D 0 - I - 0x0168F6 0B:88E6: 52        .byte $52   ; 


_off005_88E7_03:
; con_s_bg_03
- D 0 - I - 0x0168F7 0B:88E7: 02        .byte $02   ; 
- D 0 - I - 0x0168F8 0B:88E8: 05        .byte $05   ; 
- D 0 - I - 0x0168F9 0B:88E9: 00        .byte $00   ; 
- D 0 - I - 0x0168FA 0B:88EA: 00        .byte $00   ; 
- D 0 - I - 0x0168FB 0B:88EB: 4C        .byte $4C   ; 
- D 0 - I - 0x0168FC 0B:88EC: 4A        .byte $4A   ; 


_off005_88ED_04:
; con_s_bg_04
- D 0 - I - 0x0168FD 0B:88ED: 02        .byte $02   ; 
- D 0 - I - 0x0168FE 0B:88EE: 05        .byte $05   ; 
- D 0 - I - 0x0168FF 0B:88EF: 00        .byte $00   ; 
- D 0 - I - 0x016900 0B:88F0: 00        .byte $00   ; 
- D 0 - I - 0x016901 0B:88F1: 21        .byte $21   ; 
- D 0 - I - 0x016902 0B:88F2: 20        .byte $20   ; 


_off005_88F3_05:
; con_s_bg_05
- D 0 - I - 0x016903 0B:88F3: 02        .byte $02   ; 
- D 0 - I - 0x016904 0B:88F4: 00        .byte $00   ; 
- D 0 - I - 0x016905 0B:88F5: 55        .byte $55   ; 


_off005_88F6_06:
; con_s_bg_06
- D 0 - I - 0x016906 0B:88F6: 02        .byte $02   ; 
- D 0 - I - 0x016907 0B:88F7: 05        .byte $05   ; 
- D 0 - I - 0x016908 0B:88F8: 00        .byte $00   ; 
- D 0 - I - 0x016909 0B:88F9: 00        .byte $00   ; 
- D 0 - I - 0x01690A 0B:88FA: 54        .byte $54   ; 
- D 0 - I - 0x01690B 0B:88FB: 53        .byte $53   ; 


_off005_88FC_07:
; con_s_bg_07
- D 0 - I - 0x01690C 0B:88FC: 02        .byte $02   ; 
- D 0 - I - 0x01690D 0B:88FD: 05        .byte $05   ; 
- D 0 - I - 0x01690E 0B:88FE: 00        .byte $00   ; 
- D 0 - I - 0x01690F 0B:88FF: 00        .byte $00   ; 
- D 0 - I - 0x016910 0B:8900: 31        .byte $31   ; 
- D 0 - I - 0x016911 0B:8901: 32        .byte $32   ; 


_off005_8902_08:
; con_s_bg_08
- D 0 - I - 0x016912 0B:8902: 07        .byte $07   ; 
- D 0 - I - 0x016913 0B:8903: 00        .byte $00   ; 
- D 0 - I - 0x016914 0B:8904: 70        .byte $70   ; 


_off005_8905_09:
; con_s_bg_09
- D 0 - I - 0x016915 0B:8905: 07        .byte $07   ; 
- D 0 - I - 0x016916 0B:8906: 00        .byte $00   ; 
- D 0 - I - 0x016917 0B:8907: 71        .byte $71   ; 


_off005_8908_0A:
; con_s_bg_0A
- D 0 - I - 0x016918 0B:8908: 08        .byte $08   ; 
- D 0 - I - 0x016919 0B:8909: 00        .byte $00   ; 
- D 0 - I - 0x01691A 0B:890A: 72        .byte $72   ; 


_off005_890B_0B:
; con_s_bg_0B
- D 0 - I - 0x01691B 0B:890B: 07        .byte $07   ; 
- D 0 - I - 0x01691C 0B:890C: 05        .byte $05   ; 
- D 0 - I - 0x01691D 0B:890D: 00        .byte $00   ; 
- D 0 - I - 0x01691E 0B:890E: 00        .byte $00   ; 
- D 0 - I - 0x01691F 0B:890F: 44        .byte $44   ; 
- D 0 - I - 0x016920 0B:8910: 45        .byte $45   ; 


_off005_8911_0C:
; con_s_bg_0C
- D 0 - I - 0x016921 0B:8911: 02        .byte $02   ; 
- D 0 - I - 0x016922 0B:8912: 00        .byte $00   ; 
- D 0 - I - 0x016923 0B:8913: 43        .byte $43   ; 


_off005_8914_0D:
; con_s_bg_0D
- D 0 - I - 0x016924 0B:8914: 01        .byte $01   ; 
- D 0 - I - 0x016925 0B:8915: 00        .byte $00   ; 
- D 0 - I - 0x016926 0B:8916: 4F        .byte $4F   ; 


_off005_8917_0E:
; con_s_bg_0E
- D 0 - I - 0x016927 0B:8917: 02        .byte $02   ; 
- D 0 - I - 0x016928 0B:8918: 05        .byte $05   ; 
- D 0 - I - 0x016929 0B:8919: 00        .byte $00   ; 
- D 0 - I - 0x01692A 0B:891A: 00        .byte $00   ; 
- D 0 - I - 0x01692B 0B:891B: 23        .byte $23   ; 
- D 0 - I - 0x01692C 0B:891C: 22        .byte $22   ; 


_off005_891D_0F:
; con_s_bg_0F
- D 0 - I - 0x01692D 0B:891D: 02        .byte $02   ; 
- D 0 - I - 0x01692E 0B:891E: 05        .byte $05   ; 
- D 0 - I - 0x01692F 0B:891F: 00        .byte $00   ; 
- D 0 - I - 0x016930 0B:8920: 00        .byte $00   ; 
- D 0 - I - 0x016931 0B:8921: 76        .byte $76   ; 
- D 0 - I - 0x016932 0B:8922: 77        .byte $77   ; 


_off005_8923_10:
; con_s_bg_10
- D 0 - I - 0x016933 0B:8923: 02        .byte $02   ; 
- D 0 - I - 0x016934 0B:8924: 00        .byte $00   ; 
- D 0 - I - 0x016935 0B:8925: 6F        .byte $6F   ; 


_off005_8926_11:
; con_s_bg_11
- D 0 - I - 0x016936 0B:8926: 02        .byte $02   ; 
- D 0 - I - 0x016937 0B:8927: 05        .byte $05   ; 
- D 0 - I - 0x016938 0B:8928: 00        .byte $00   ; 
- D 0 - I - 0x016939 0B:8929: 00        .byte $00   ; 
- D 0 - I - 0x01693A 0B:892A: 38        .byte $38   ; 
- D 0 - I - 0x01693B 0B:892B: 3A        .byte $3A   ; 


_off005_892C_12:
; con_s_bg_12
- D 0 - I - 0x01693C 0B:892C: 02        .byte $02   ; 
- D 0 - I - 0x01693D 0B:892D: 00        .byte $00   ; 
- D 0 - I - 0x01693E 0B:892E: 39        .byte $39   ; 


_off005_892F_13:
; con_s_bg_13
- D 0 - I - 0x01693F 0B:892F: 02        .byte $02   ; 
- D 0 - I - 0x016940 0B:8930: 05        .byte $05   ; 
- D 0 - I - 0x016941 0B:8931: 00        .byte $00   ; 
- D 0 - I - 0x016942 0B:8932: 00        .byte $00   ; 
- D 0 - I - 0x016943 0B:8933: 3A        .byte $3A   ; 
- D 0 - I - 0x016944 0B:8934: 38        .byte $38   ; 


_off005_8935_14:
; con_s_bg_14
- D 0 - I - 0x016945 0B:8935: 02        .byte $02   ; 
- D 0 - I - 0x016946 0B:8936: 05        .byte $05   ; 
- D 0 - I - 0x016947 0B:8937: 00        .byte $00   ; 
- D 0 - I - 0x016948 0B:8938: 00        .byte $00   ; 
- D 0 - I - 0x016949 0B:8939: 3B        .byte $3B   ; 
- D 0 - I - 0x01694A 0B:893A: 3F        .byte $3F   ; 


_off005_893B_15:
; con_s_bg_15
- D 0 - I - 0x01694B 0B:893B: 02        .byte $02   ; 
- D 0 - I - 0x01694C 0B:893C: 05        .byte $05   ; 
- D 0 - I - 0x01694D 0B:893D: 00        .byte $00   ; 
- D 0 - I - 0x01694E 0B:893E: 00        .byte $00   ; 
- D 0 - I - 0x01694F 0B:893F: 3C        .byte $3C   ; 
- D 0 - I - 0x016950 0B:8940: 3E        .byte $3E   ; 


_off005_8941_16:
; con_s_bg_16
- D 0 - I - 0x016951 0B:8941: 02        .byte $02   ; 
- D 0 - I - 0x016952 0B:8942: 00        .byte $00   ; 
- D 0 - I - 0x016953 0B:8943: 3D        .byte $3D   ; 


_off005_8944_17:
; con_s_bg_17
- D 0 - I - 0x016954 0B:8944: 02        .byte $02   ; 
- D 0 - I - 0x016955 0B:8945: 05        .byte $05   ; 
- D 0 - I - 0x016956 0B:8946: 00        .byte $00   ; 
- D 0 - I - 0x016957 0B:8947: 00        .byte $00   ; 
- D 0 - I - 0x016958 0B:8948: 3E        .byte $3E   ; 
- D 0 - I - 0x016959 0B:8949: 3C        .byte $3C   ; 


_off005_894A_18:
; con_s_bg_18
- D 0 - I - 0x01695A 0B:894A: 02        .byte $02   ; 
- D 0 - I - 0x01695B 0B:894B: 05        .byte $05   ; 
- D 0 - I - 0x01695C 0B:894C: 00        .byte $00   ; 
- D 0 - I - 0x01695D 0B:894D: 00        .byte $00   ; 
- D 0 - I - 0x01695E 0B:894E: 3F        .byte $3F   ; 
- D 0 - I - 0x01695F 0B:894F: 3B        .byte $3B   ; 


_off005_8950_19:
; con_s_bg_19
- D 0 - I - 0x016960 0B:8950: 02        .byte $02   ; 
- D 0 - I - 0x016961 0B:8951: 03        .byte $03   ; 
- D 0 - I - 0x016962 0B:8952: 60        .byte $60   ; 
- D 0 - I - 0x016963 0B:8953: 00        .byte $00   ; 
- D 0 - I - 0x016964 0B:8954: 04        .byte $04   ; 


_off005_8955_1A:
; con_s_bg_1A
- - - - - - 0x016965 0B:8955: F1        .byte $F1   ; 


_off005_8956_1B:
; con_s_bg_1B
- D 0 - I - 0x016966 0B:8956: 02        .byte $02   ; 
- D 0 - I - 0x016967 0B:8957: 03        .byte $03   ; 
- D 0 - I - 0x016968 0B:8958: 01        .byte $01   ; 
- D 0 - I - 0x016969 0B:8959: 80        .byte $80   ; 
- D 0 - I - 0x01696A 0B:895A: 52        .byte $52   ; 


_off005_895B_1C:
; con_s_bg_1C
- D 0 - I - 0x01696B 0B:895B: 02        .byte $02   ; 
- D 0 - I - 0x01696C 0B:895C: 03        .byte $03   ; 
- D 0 - I - 0x01696D 0B:895D: 00        .byte $00   ; 
- D 0 - I - 0x01696E 0B:895E: 80        .byte $80   ; 
- D 0 - I - 0x01696F 0B:895F: 52        .byte $52   ; 


_off005_8960_1D:
; con_s_bg_1D
- D 0 - I - 0x016970 0B:8960: 02        .byte $02   ; 
- D 0 - I - 0x016971 0B:8961: 03        .byte $03   ; 
- D 0 - I - 0x016972 0B:8962: 00        .byte $00   ; 
- D 0 - I - 0x016973 0B:8963: FC        .byte $FC   ; 
- D 0 - I - 0x016974 0B:8964: 52        .byte $52   ; 


_off005_8965_1E:
; con_s_bg_1E
- D 0 - I - 0x016975 0B:8965: 02        .byte $02   ; 
- D 0 - I - 0x016976 0B:8966: 03        .byte $03   ; 
- D 0 - I - 0x016977 0B:8967: 00        .byte $00   ; 
- D 0 - I - 0x016978 0B:8968: F9        .byte $F9   ; 
- D 0 - I - 0x016979 0B:8969: 52        .byte $52   ; 


_off005_896A_1F:
; con_s_bg_1F
- D 0 - I - 0x01697A 0B:896A: 02        .byte $02   ; 
- D 0 - I - 0x01697B 0B:896B: 03        .byte $03   ; 
- D 0 - I - 0x01697C 0B:896C: 00        .byte $00   ; 
- D 0 - I - 0x01697D 0B:896D: 04        .byte $04   ; 
- D 0 - I - 0x01697E 0B:896E: 52        .byte $52   ; 


_off005_896F_20:
; con_s_bg_20
- D 0 - I - 0x01697F 0B:896F: 02        .byte $02   ; 
- D 0 - I - 0x016980 0B:8970: 03        .byte $03   ; 
- D 0 - I - 0x016981 0B:8971: 00        .byte $00   ; 
- D 0 - I - 0x016982 0B:8972: 07        .byte $07   ; 
- D 0 - I - 0x016983 0B:8973: 52        .byte $52   ; 


_off005_8974_21:
; con_s_bg_21
- - - - - - 0x016984 0B:8974: 02        .byte $02   ; 
- - - - - - 0x016985 0B:8975: 01        .byte $01   ; 
- - - - - - 0x016986 0B:8976: 00        .byte $00   ; 
- - - - - - 0x016987 0B:8977: FF        .byte $FF   ; 
- - - - - - 0x016988 0B:8978: 00        .byte $00   ; 
- - - - - - 0x016989 0B:8979: 52        .byte $52   ; 
- - - - - - 0x01698A 0B:897A: 52        .byte $52   ; 


_off005_897B_22:
; con_s_bg_22
- D 0 - I - 0x01698B 0B:897B: 06        .byte $06   ; 
- D 0 - I - 0x01698C 0B:897C: 03        .byte $03   ; 
- D 0 - I - 0x01698D 0B:897D: 00        .byte $00   ; 
- D 0 - I - 0x01698E 0B:897E: 01        .byte $01   ; 
- D 0 - I - 0x01698F 0B:897F: 35        .byte $35   ; 


_off005_8980_23:
; con_s_bg_23
- D 0 - I - 0x016990 0B:8980: 06        .byte $06   ; 
- D 0 - I - 0x016991 0B:8981: 03        .byte $03   ; 
- D 0 - I - 0x016992 0B:8982: 00        .byte $00   ; 
- D 0 - I - 0x016993 0B:8983: FF        .byte $FF   ; 
- D 0 - I - 0x016994 0B:8984: 35        .byte $35   ; 


_off005_8985_24:
; con_s_bg_24
- D 0 - I - 0x016995 0B:8985: 06        .byte $06   ; 
- D 0 - I - 0x016996 0B:8986: 03        .byte $03   ; 
- D 0 - I - 0x016997 0B:8987: 00        .byte $00   ; 
- D 0 - I - 0x016998 0B:8988: 06        .byte $06   ; 
- D 0 - I - 0x016999 0B:8989: 35        .byte $35   ; 


_off005_898A_25:
; con_s_bg_25
- D 0 - I - 0x01699A 0B:898A: 06        .byte $06   ; 
- D 0 - I - 0x01699B 0B:898B: 03        .byte $03   ; 
- D 0 - I - 0x01699C 0B:898C: 00        .byte $00   ; 
- D 0 - I - 0x01699D 0B:898D: FA        .byte $FA   ; 
- D 0 - I - 0x01699E 0B:898E: 35        .byte $35   ; 


_off005_898F_26:
; con_s_bg_26
- D 0 - I - 0x01699F 0B:898F: 02        .byte $02   ; 
- D 0 - I - 0x0169A0 0B:8990: 05        .byte $05   ; 
- D 0 - I - 0x0169A1 0B:8991: 00        .byte $00   ; 
- D 0 - I - 0x0169A2 0B:8992: 00        .byte $00   ; 
- D 0 - I - 0x0169A3 0B:8993: 1F        .byte $1F   ; 
- D 0 - I - 0x0169A4 0B:8994: 1E        .byte $1E   ; 


_off005_8995_27:
; con_s_bg_27
- D 0 - I - 0x0169A5 0B:8995: 02        .byte $02   ; 
- D 0 - I - 0x0169A6 0B:8996: 03        .byte $03   ; 
- D 0 - I - 0x0169A7 0B:8997: 00        .byte $00   ; 
- D 0 - I - 0x0169A8 0B:8998: 0B        .byte $0B   ; 
- D 0 - I - 0x0169A9 0B:8999: 30        .byte $30   ; 


_off005_899A_28:
; con_s_bg_28
- D 0 - I - 0x0169AA 0B:899A: 02        .byte $02   ; 
- D 0 - I - 0x0169AB 0B:899B: 03        .byte $03   ; 
- D 0 - I - 0x0169AC 0B:899C: 00        .byte $00   ; 
- D 0 - I - 0x0169AD 0B:899D: 02        .byte $02   ; 
- D 0 - I - 0x0169AE 0B:899E: 50        .byte $50   ; 


_off005_899F_29:
; con_s_bg_29
- D 0 - I - 0x0169AF 0B:899F: 02        .byte $02   ; 
- D 0 - I - 0x0169B0 0B:89A0: 03        .byte $03   ; 
- D 0 - I - 0x0169B1 0B:89A1: 00        .byte $00   ; 
- D 0 - I - 0x0169B2 0B:89A2: FE        .byte $FE   ; 
- D 0 - I - 0x0169B3 0B:89A3: 50        .byte $50   ; 


_off005_89A4_2A:
; con_s_bg_2A
- D 0 - I - 0x0169B4 0B:89A4: 02        .byte $02   ; 
- D 0 - I - 0x0169B5 0B:89A5: 03        .byte $03   ; 
- D 0 - I - 0x0169B6 0B:89A6: 00        .byte $00   ; 
- D 0 - I - 0x0169B7 0B:89A7: 04        .byte $04   ; 
- D 0 - I - 0x0169B8 0B:89A8: 51        .byte $51   ; 


_off005_89A9_2B:
; con_s_bg_2B
- D 0 - I - 0x0169B9 0B:89A9: 02        .byte $02   ; 
- D 0 - I - 0x0169BA 0B:89AA: 05        .byte $05   ; 
- D 0 - I - 0x0169BB 0B:89AB: 00        .byte $00   ; 
- D 0 - I - 0x0169BC 0B:89AC: 03        .byte $03   ; 
- D 0 - I - 0x0169BD 0B:89AD: 67        .byte $67   ; 
- D 0 - I - 0x0169BE 0B:89AE: 65        .byte $65   ; 


_off005_89AF_2C:
; con_s_bg_2C
- D 0 - I - 0x0169BF 0B:89AF: 02        .byte $02   ; 
- D 0 - I - 0x0169C0 0B:89B0: 00        .byte $00   ; 
- D 0 - I - 0x0169C1 0B:89B1: 75        .byte $75   ; 


_off005_89B2_2D:
; con_s_bg_2D
- D 0 - I - 0x0169C2 0B:89B2: 05        .byte $05   ; 
- D 0 - I - 0x0169C3 0B:89B3: 00        .byte $00   ; 
- D 0 - I - 0x0169C4 0B:89B4: 64        .byte $64   ; 


_off005_89B5_2E:
; con_s_bg_2E
- D 0 - I - 0x0169C5 0B:89B5: 02        .byte $02   ; 
- D 0 - I - 0x0169C6 0B:89B6: 06        .byte $06   ; 
- D 0 - I - 0x0169C7 0B:89B7: E0        .byte $E0   ; 
- D 0 - I - 0x0169C8 0B:89B8: FF        .byte $FF   ; 
- D 0 - I - 0x0169C9 0B:89B9: 01        .byte $01   ; 
- D 0 - I - 0x0169CA 0B:89BA: B9 89     .word off_89BE - $05
- D 0 - I - 0x0169CC 0B:89BC: BB 89     .word off_89C0 - $05
off_89BE:
- D 0 - I - 0x0169CE 0B:89BE: 49        .byte $49   ; 
- D 0 - I - 0x0169CF 0B:89BF: 48        .byte $48   ; 
off_89C0:
- D 0 - I - 0x0169D0 0B:89C0: 47        .byte $47   ; 
- D 0 - I - 0x0169D1 0B:89C1: 48        .byte $48   ; 


_off005_89C2_2F:
; con_s_bg_2F
- D 0 - I - 0x0169D2 0B:89C2: 02        .byte $02   ; 
- D 0 - I - 0x0169D3 0B:89C3: 08        .byte $08   ; 
- D 0 - I - 0x0169D4 0B:89C4: B0        .byte $B0   ; 
- D 0 - I - 0x0169D5 0B:89C5: FE        .byte $FE   ; 
- D 0 - I - 0x0169D6 0B:89C6: 02        .byte $02   ; 
- D 0 - I - 0x0169D7 0B:89C7: C6 89     .word off_89CB - $05
- D 0 - I - 0x0169D9 0B:89C9: C8 89     .word off_89CD - $05
off_89CB:
- D 0 - I - 0x0169DB 0B:89CB: 68        .byte $68   ; 
- D 0 - I - 0x0169DC 0B:89CC: 67        .byte $67   ; 
off_89CD:
- D 0 - I - 0x0169DD 0B:89CD: 66        .byte $66   ; 
- D 0 - I - 0x0169DE 0B:89CE: 65        .byte $65   ; 


_off005_89CF_30:
; con_s_bg_30
- D 0 - I - 0x0169DF 0B:89CF: 03        .byte $03   ; 
- D 0 - I - 0x0169E0 0B:89D0: 05        .byte $05   ; 
- D 0 - I - 0x0169E1 0B:89D1: 00        .byte $00   ; 
- D 0 - I - 0x0169E2 0B:89D2: 00        .byte $00   ; 
- D 0 - I - 0x0169E3 0B:89D3: 26        .byte $26   ; 
- D 0 - I - 0x0169E4 0B:89D4: 27        .byte $27   ; 


_off005_89D5_31:
; con_s_bg_31
- D 0 - I - 0x0169E5 0B:89D5: 03        .byte $03   ; 
- D 0 - I - 0x0169E6 0B:89D6: 05        .byte $05   ; 
- D 0 - I - 0x0169E7 0B:89D7: 00        .byte $00   ; 
- D 0 - I - 0x0169E8 0B:89D8: 00        .byte $00   ; 
- D 0 - I - 0x0169E9 0B:89D9: 28        .byte $28   ; 
- D 0 - I - 0x0169EA 0B:89DA: 29        .byte $29   ; 


_off005_89DB_32:
; con_s_bg_32
- D 0 - I - 0x0169EB 0B:89DB: 04        .byte $04   ; 
- D 0 - I - 0x0169EC 0B:89DC: 00        .byte $00   ; 
- D 0 - I - 0x0169ED 0B:89DD: 2A        .byte $2A   ; 


_off005_89DE_33:
; con_s_bg_33
- D 0 - I - 0x0169EE 0B:89DE: 04        .byte $04   ; 
- D 0 - I - 0x0169EF 0B:89DF: 00        .byte $00   ; 
- D 0 - I - 0x0169F0 0B:89E0: 2B        .byte $2B   ; 


_off005_89E1_34:
; con_s_bg_34
- D 0 - I - 0x0169F1 0B:89E1: 02        .byte $02   ; 
- D 0 - I - 0x0169F2 0B:89E2: 00        .byte $00   ; 
- D 0 - I - 0x0169F3 0B:89E3: 2D        .byte $2D   ; 


_off005_89E4_35:
; con_s_bg_35
- D 0 - I - 0x0169F4 0B:89E4: 00        .byte $00   ; 
- D 0 - I - 0x0169F5 0B:89E5: 00        .byte $00   ; 
- D 0 - I - 0x0169F6 0B:89E6: 2E        .byte $2E   ; 


_off005_89E7_36:
; con_s_bg_36
- D 0 - I - 0x0169F7 0B:89E7: 02        .byte $02   ; 
- D 0 - I - 0x0169F8 0B:89E8: 00        .byte $00   ; 
- D 0 - I - 0x0169F9 0B:89E9: 2F        .byte $2F   ; 


_off005_89EA_37:
; con_s_bg_37
- D 0 - I - 0x0169FA 0B:89EA: 02        .byte $02   ; 
- D 0 - I - 0x0169FB 0B:89EB: 00        .byte $00   ; 
- D 0 - I - 0x0169FC 0B:89EC: 33        .byte $33   ; 


_off005_89ED_38:
; con_s_bg_38
- D 0 - I - 0x0169FD 0B:89ED: 02        .byte $02   ; 
- D 0 - I - 0x0169FE 0B:89EE: 00        .byte $00   ; 
- D 0 - I - 0x0169FF 0B:89EF: 34        .byte $34   ; 


_off005_89F0_39:
; con_s_bg_39
- D 0 - I - 0x016A00 0B:89F0: 02        .byte $02   ; 
- D 0 - I - 0x016A01 0B:89F1: 00        .byte $00   ; 
- D 0 - I - 0x016A02 0B:89F2: 41        .byte $41   ; 


_off005_89F3_3A:
; con_s_bg_3A
- D 0 - I - 0x016A03 0B:89F3: 02        .byte $02   ; 
- D 0 - I - 0x016A04 0B:89F4: 00        .byte $00   ; 
- D 0 - I - 0x016A05 0B:89F5: 42        .byte $42   ; 


_off005_89F6_3B:
; con_s_bg_3B
- - - - - - 0x016A06 0B:89F6: 02        .byte $02   ; 
- - - - - - 0x016A07 0B:89F7: 05        .byte $05   ; 
- - - - - - 0x016A08 0B:89F8: 00        .byte $00   ; 
- - - - - - 0x016A09 0B:89F9: 00        .byte $00   ; 
- - - - - - 0x016A0A 0B:89FA: 4B        .byte $4B   ; 
- - - - - - 0x016A0B 0B:89FB: 4D        .byte $4D   ; 


_off005_89FC_3C:
; con_s_bg_3C
- D 0 - I - 0x016A0C 0B:89FC: 02        .byte $02   ; 
- D 0 - I - 0x016A0D 0B:89FD: 00        .byte $00   ; 
- D 0 - I - 0x016A0E 0B:89FE: 4E        .byte $4E   ; 


_off005_89FF_3D:
; con_s_bg_3D
- - - - - - 0x016A0F 0B:89FF: 02        .byte $02   ; 
- - - - - - 0x016A10 0B:8A00: 03        .byte $03   ; 
- - - - - - 0x016A11 0B:8A01: 00        .byte $00   ; 
- - - - - - 0x016A12 0B:8A02: F9        .byte $F9   ; 
- - - - - - 0x016A13 0B:8A03: 61        .byte $61   ; 


_off005_8A04_3E:
; con_s_bg_3E
- D 0 - I - 0x016A14 0B:8A04: 02        .byte $02   ; 
- D 0 - I - 0x016A15 0B:8A05: 05        .byte $05   ; 
- D 0 - I - 0x016A16 0B:8A06: 00        .byte $00   ; 
- D 0 - I - 0x016A17 0B:8A07: 01        .byte $01   ; 
- D 0 - I - 0x016A18 0B:8A08: 7D        .byte $7D   ; 
- D 0 - I - 0x016A19 0B:8A09: 46        .byte $46   ; 


_off005_8A0A_3F:
; con_s_bg_3F
- D 0 - I - 0x016A1A 0B:8A0A: 05        .byte $05   ; 
- D 0 - I - 0x016A1B 0B:8A0B: 04        .byte $04   ; 
- D 0 - I - 0x016A1C 0B:8A0C: 80        .byte $80   ; 
- D 0 - I - 0x016A1D 0B:8A0D: 00        .byte $00   ; 
- D 0 - I - 0x016A1E 0B:8A0E: 01        .byte $01   ; 
- D 0 - I - 0x016A1F 0B:8A0F: 24        .byte $24   ; 
- D 0 - I - 0x016A20 0B:8A10: 64        .byte $64   ; 


_off005_8A11_40:
; con_s_bg_40
- D 0 - I - 0x016A21 0B:8A11: 02        .byte $02   ; 
- D 0 - I - 0x016A22 0B:8A12: 05        .byte $05   ; 
- D 0 - I - 0x016A23 0B:8A13: 00        .byte $00   ; 
- D 0 - I - 0x016A24 0B:8A14: 00        .byte $00   ; 
- D 0 - I - 0x016A25 0B:8A15: 6C        .byte $6C   ; 
- D 0 - I - 0x016A26 0B:8A16: 6D        .byte $6D   ; 


_off005_8A17_41:
; con_s_bg_41
- D 0 - I - 0x016A27 0B:8A17: 02        .byte $02   ; 
- D 0 - I - 0x016A28 0B:8A18: 00        .byte $00   ; 
- D 0 - I - 0x016A29 0B:8A19: 6E        .byte $6E   ; 


_off005_8A1A_42:
; con_s_bg_42
- D 0 - I - 0x016A2A 0B:8A1A: 02        .byte $02   ; 
- D 0 - I - 0x016A2B 0B:8A1B: 05        .byte $05   ; 
- D 0 - I - 0x016A2C 0B:8A1C: 00        .byte $00   ; 
- D 0 - I - 0x016A2D 0B:8A1D: 00        .byte $00   ; 
- D 0 - I - 0x016A2E 0B:8A1E: 7A        .byte $7A   ; 
- D 0 - I - 0x016A2F 0B:8A1F: 7B        .byte $7B   ; 


_off005_8A20_43:
; con_s_bg_43
- D 0 - I - 0x016A30 0B:8A20: 02        .byte $02   ; 
- D 0 - I - 0x016A31 0B:8A21: 00        .byte $00   ; 
- D 0 - I - 0x016A32 0B:8A22: 40        .byte $40   ; 


_off005_8A23_44:
; con_s_bg_44
- D 0 - I - 0x016A33 0B:8A23: 02        .byte $02   ; 
- D 0 - I - 0x016A34 0B:8A24: 01        .byte $01   ; 
- D 0 - I - 0x016A35 0B:8A25: 00        .byte $00   ; 
- D 0 - I - 0x016A36 0B:8A26: 0B        .byte $0B   ; 
- - - - - - 0x016A37 0B:8A27: 00        .byte $00   ; 
- D 0 - I - 0x016A38 0B:8A28: 60        .byte $60   ; 
- D 0 - I - 0x016A39 0B:8A29: 60        .byte $60   ; 


_off005_8A2A_45:
; con_s_bg_45
- D 0 - I - 0x016A3A 0B:8A2A: 06        .byte $06   ; 
- D 0 - I - 0x016A3B 0B:8A2B: 00        .byte $00   ; 
- D 0 - I - 0x016A3C 0B:8A2C: 36        .byte $36   ; 


_off005_8A2D_46:
; con_s_bg_46
- D 0 - I - 0x016A3D 0B:8A2D: 02        .byte $02   ; 
- D 0 - I - 0x016A3E 0B:8A2E: 00        .byte $00   ; 
- D 0 - I - 0x016A3F 0B:8A2F: 37        .byte $37   ; 


_off005_8A30_47:
; con_s_bg_47
- D 0 - I - 0x016A40 0B:8A30: 02        .byte $02   ; 
- D 0 - I - 0x016A41 0B:8A31: 03        .byte $03   ; 
- D 0 - I - 0x016A42 0B:8A32: 00        .byte $00   ; 
- D 0 - I - 0x016A43 0B:8A33: F5        .byte $F5   ; 
- D 0 - I - 0x016A44 0B:8A34: 5D        .byte $5D   ; 


_off005_8A35_48:
; con_s_bg_48
- D 0 - I - 0x016A45 0B:8A35: 02        .byte $02   ; 
- D 0 - I - 0x016A46 0B:8A36: 03        .byte $03   ; 
- D 0 - I - 0x016A47 0B:8A37: 00        .byte $00   ; 
- D 0 - I - 0x016A48 0B:8A38: 0B        .byte $0B   ; 
- D 0 - I - 0x016A49 0B:8A39: 5E        .byte $5E   ; 


_off005_8A3A_49:
; con_s_bg_49
- D 0 - I - 0x016A4A 0B:8A3A: 02        .byte $02   ; 
- D 0 - I - 0x016A4B 0B:8A3B: 01        .byte $01   ; 
- D 0 - I - 0x016A4C 0B:8A3C: 00        .byte $00   ; 
- D 0 - I - 0x016A4D 0B:8A3D: F5        .byte $F5   ; 
- - - - - - 0x016A4E 0B:8A3E: 00        .byte $00   ; 
- D 0 - I - 0x016A4F 0B:8A3F: 5F        .byte $5F   ; 
- D 0 - I - 0x016A50 0B:8A40: 5F        .byte $5F   ; 


_off005_8A41_4A:
; con_s_bg_4A
- D 0 - I - 0x016A51 0B:8A41: 02        .byte $02   ; 
- D 0 - I - 0x016A52 0B:8A42: 01        .byte $01   ; 
- D 0 - I - 0x016A53 0B:8A43: 00        .byte $00   ; 
- D 0 - I - 0x016A54 0B:8A44: F5        .byte $F5   ; 
- - - - - - 0x016A55 0B:8A45: 00        .byte $00   ; 
- D 0 - I - 0x016A56 0B:8A46: 60        .byte $60   ; 
- D 0 - I - 0x016A57 0B:8A47: 60        .byte $60   ; 


_off005_8A48_4B:
; con_s_bg_4B
- D 0 - I - 0x016A58 0B:8A48: 02        .byte $02   ; 
- D 0 - I - 0x016A59 0B:8A49: 03        .byte $03   ; 
- D 0 - I - 0x016A5A 0B:8A4A: 00        .byte $00   ; 
- D 0 - I - 0x016A5B 0B:8A4B: 0B        .byte $0B   ; 
- D 0 - I - 0x016A5C 0B:8A4C: 5D        .byte $5D   ; 


_off005_8A4D_4C:
; con_s_bg_4C
- D 0 - I - 0x016A5D 0B:8A4D: 02        .byte $02   ; 
- D 0 - I - 0x016A5E 0B:8A4E: 08        .byte $08   ; 
- D 0 - I - 0x016A5F 0B:8A4F: B0        .byte $B0   ; 
- D 0 - I - 0x016A60 0B:8A50: FE        .byte $FE   ; 
- D 0 - I - 0x016A61 0B:8A51: 03        .byte $03   ; 
- D 0 - I - 0x016A62 0B:8A52: 51 8A     .word off_8A56 - $05
- D 0 - I - 0x016A64 0B:8A54: 54 8A     .word off_8A59 - $05
off_8A56:
- D 0 - I - 0x016A66 0B:8A56: 57        .byte $57   ; 
- D 0 - I - 0x016A67 0B:8A57: 58        .byte $58   ; 
- D 0 - I - 0x016A68 0B:8A58: 58        .byte $58   ; 
off_8A59:
- D 0 - I - 0x016A69 0B:8A59: 59        .byte $59   ; 
- D 0 - I - 0x016A6A 0B:8A5A: 58        .byte $58   ; 
- D 0 - I - 0x016A6B 0B:8A5B: 58        .byte $58   ; 


_off005_8A5C_4D:
; con_s_bg_4D
- D 0 - I - 0x016A6C 0B:8A5C: 02        .byte $02   ; 
- D 0 - I - 0x016A6D 0B:8A5D: 03        .byte $03   ; 
- D 0 - I - 0x016A6E 0B:8A5E: 60        .byte $60   ; 
- D 0 - I - 0x016A6F 0B:8A5F: 00        .byte $00   ; 
- D 0 - I - 0x016A70 0B:8A60: 25        .byte $25   ; 


_off005_8A61_4E:
; con_s_bg_4E
- D 0 - I - 0x016A71 0B:8A61: 02        .byte $02   ; 
- D 0 - I - 0x016A72 0B:8A62: 03        .byte $03   ; 
- D 0 - I - 0x016A73 0B:8A63: 00        .byte $00   ; 
- D 0 - I - 0x016A74 0B:8A64: 07        .byte $07   ; 
- D 0 - I - 0x016A75 0B:8A65: 39        .byte $39   ; 


_off005_8A66_4F:
; con_s_bg_4F
- D 0 - I - 0x016A76 0B:8A66: 03        .byte $03   ; 
- D 0 - I - 0x016A77 0B:8A67: 00        .byte $00   ; 
- D 0 - I - 0x016A78 0B:8A68: 81        .byte $81   ; 


_off005_8A69_50:
; con_s_bg_50
- - - - - - 0x016A79 0B:8A69: 02        .byte $02   ; 
- - - - - - 0x016A7A 0B:8A6A: 03        .byte $03   ; 
- - - - - - 0x016A7B 0B:8A6B: 00        .byte $00   ; 
- - - - - - 0x016A7C 0B:8A6C: 0B        .byte $0B   ; 
- - - - - - 0x016A7D 0B:8A6D: 5D        .byte $5D   ; 


_off005_8A6E_51:
; con_s_bg_51
- D 0 - I - 0x016A7E 0B:8A6E: 02        .byte $02   ; 
- D 0 - I - 0x016A7F 0B:8A6F: 05        .byte $05   ; 
- D 0 - I - 0x016A80 0B:8A70: 00        .byte $00   ; 
- D 0 - I - 0x016A81 0B:8A71: 02        .byte $02   ; 
- D 0 - I - 0x016A82 0B:8A72: 7C        .byte $7C   ; 
- - - - - - 0x016A83 0B:8A73: 7E        .byte $7E   ; 


_off005_8A74_52:
; con_s_bg_52
- D 0 - I - 0x016A84 0B:8A74: 00        .byte $00   ; 
- D 0 - I - 0x016A85 0B:8A75: 00        .byte $00   ; 
- D 0 - I - 0x016A86 0B:8A76: 2C        .byte $2C   ; 


_off005_8A77_53:
; con_s_bg_53
- D 0 - I - 0x016A87 0B:8A77: 02        .byte $02   ; 
- D 0 - I - 0x016A88 0B:8A78: 05        .byte $05   ; 
- D 0 - I - 0x016A89 0B:8A79: 00        .byte $00   ; 
- D 0 - I - 0x016A8A 0B:8A7A: 00        .byte $00   ; 
- D 0 - I - 0x016A8B 0B:8A7B: 66        .byte $66   ; 
- D 0 - I - 0x016A8C 0B:8A7C: 68        .byte $68   ; 


_off005_8A7D_54:
; con_s_bg_54
- D 0 - I - 0x016A8D 0B:8A7D: 03        .byte $03   ; 
- D 0 - I - 0x016A8E 0B:8A7E: 06        .byte $06   ; 
- D 0 - I - 0x016A8F 0B:8A7F: 00        .byte $00   ; 
- D 0 - I - 0x016A90 0B:8A80: 08        .byte $08   ; 
- D 0 - I - 0x016A91 0B:8A81: 01        .byte $01   ; 
- D 0 - I - 0x016A92 0B:8A82: 81 8A     .word off_8A86 - $05
- D 0 - I - 0x016A94 0B:8A84: 83 8A     .word off_8A88 - $05
off_8A86:
- D 0 - I - 0x016A96 0B:8A86: 80        .byte $80   ; 
- D 0 - I - 0x016A97 0B:8A87: 26        .byte $26   ; 
off_8A88:
- D 0 - I - 0x016A98 0B:8A88: 80        .byte $80   ; 
- D 0 - I - 0x016A99 0B:8A89: 27        .byte $27   ; 


_off005_8A8A_55:
; con_s_bg_55
- D 0 - I - 0x016A9A 0B:8A8A: 03        .byte $03   ; 
- D 0 - I - 0x016A9B 0B:8A8B: 00        .byte $00   ; 
- D 0 - I - 0x016A9C 0B:8A8C: 82        .byte $82   ; 


_off005_8A8D_56:
; con_s_bg_56
- D 0 - I - 0x016A9D 0B:8A8D: 02        .byte $02   ; 
- D 0 - I - 0x016A9E 0B:8A8E: 03        .byte $03   ; 
- D 0 - I - 0x016A9F 0B:8A8F: 00        .byte $00   ; 
- D 0 - I - 0x016AA0 0B:8A90: FF        .byte $FF   ; 
- D 0 - I - 0x016AA1 0B:8A91: 51        .byte $51   ; 


_off005_8A92_57:
; con_s_bg_57
- D 0 - I - 0x016AA2 0B:8A92: 01        .byte $01   ; 
- D 0 - I - 0x016AA3 0B:8A93: 05        .byte $05   ; 
- D 0 - I - 0x016AA4 0B:8A94: 00        .byte $00   ; 
- D 0 - I - 0x016AA5 0B:8A95: 00        .byte $00   ; 
- D 0 - I - 0x016AA6 0B:8A96: 5A        .byte $5A   ; 
- D 0 - I - 0x016AA7 0B:8A97: 5C        .byte $5C   ; 


_off005_8A98_58:
; con_s_bg_58
- D 0 - I - 0x016AA8 0B:8A98: 01        .byte $01   ; 
- D 0 - I - 0x016AA9 0B:8A99: 05        .byte $05   ; 
- D 0 - I - 0x016AAA 0B:8A9A: 00        .byte $00   ; 
- D 0 - I - 0x016AAB 0B:8A9B: 00        .byte $00   ; 
- D 0 - I - 0x016AAC 0B:8A9C: 5C        .byte $5C   ; 
- D 0 - I - 0x016AAD 0B:8A9D: 5A        .byte $5A   ; 


_off005_8A9E_59:
; con_s_bg_59
- D 0 - I - 0x016AAE 0B:8A9E: 01        .byte $01   ; 
- D 0 - I - 0x016AAF 0B:8A9F: 00        .byte $00   ; 
- D 0 - I - 0x016AB0 0B:8AA0: 5B        .byte $5B   ; 


_off005_8AA1_5A:
; con_s_bg_5A
- D 0 - I - 0x016AB1 0B:8AA1: 02        .byte $02   ; 
- D 0 - I - 0x016AB2 0B:8AA2: 03        .byte $03   ; 
- D 0 - I - 0x016AB3 0B:8AA3: 00        .byte $00   ; 
- D 0 - I - 0x016AB4 0B:8AA4: 80        .byte $80   ; 
- D 0 - I - 0x016AB5 0B:8AA5: 50        .byte $50   ; 


_off005_8AA6_5B:
; con_s_bg_5B
- D 0 - I - 0x016AB6 0B:8AA6: 02        .byte $02   ; 
- D 0 - I - 0x016AB7 0B:8AA7: 03        .byte $03   ; 
- D 0 - I - 0x016AB8 0B:8AA8: 00        .byte $00   ; 
- D 0 - I - 0x016AB9 0B:8AA9: 80        .byte $80   ; 
- D 0 - I - 0x016ABA 0B:8AAA: 51        .byte $51   ; 


_off005_8AAB_5C:
; con_s_bg_5C
- D 0 - I - 0x016ABB 0B:8AAB: 02        .byte $02   ; 
- D 0 - I - 0x016ABC 0B:8AAC: 01        .byte $01   ; 
- D 0 - I - 0x016ABD 0B:8AAD: 00        .byte $00   ; 
- D 0 - I - 0x016ABE 0B:8AAE: 0B        .byte $0B   ; 
- - - - - - 0x016ABF 0B:8AAF: 00        .byte $00   ; 
- D 0 - I - 0x016AC0 0B:8AB0: 5F        .byte $5F   ; 
- D 0 - I - 0x016AC1 0B:8AB1: 5F        .byte $5F   ; 


_off005_8AB2_5D:
; con_s_bg_5D
- D 0 - I - 0x016AC2 0B:8AB2: 02        .byte $02   ; 
- D 0 - I - 0x016AC3 0B:8AB3: 03        .byte $03   ; 
- D 0 - I - 0x016AC4 0B:8AB4: 00        .byte $00   ; 
- D 0 - I - 0x016AC5 0B:8AB5: 80        .byte $80   ; 
- D 0 - I - 0x016AC6 0B:8AB6: 30        .byte $30   ; 


_off005_8AB7_5E:
; con_s_bg_5E
- D 0 - I - 0x016AC7 0B:8AB7: 06        .byte $06   ; 
- D 0 - I - 0x016AC8 0B:8AB8: 03        .byte $03   ; 
- D 0 - I - 0x016AC9 0B:8AB9: 00        .byte $00   ; 
- D 0 - I - 0x016ACA 0B:8ABA: 80        .byte $80   ; 
- D 0 - I - 0x016ACB 0B:8ABB: 35        .byte $35   ; 


_off005_8ABC_5F:
; con_s_bg_5F
- D 0 - I - 0x016ACC 0B:8ABC: 02        .byte $02   ; 
- D 0 - I - 0x016ACD 0B:8ABD: 01        .byte $01   ; 
- D 0 - I - 0x016ACE 0B:8ABE: 00        .byte $00   ; 
- D 0 - I - 0x016ACF 0B:8ABF: 01        .byte $01   ; 
- - - - - - 0x016AD0 0B:8AC0: 00        .byte $00   ; 
- D 0 - I - 0x016AD1 0B:8AC1: 52        .byte $52   ; 
- D 0 - I - 0x016AD2 0B:8AC2: 52        .byte $52   ; 


_off005_8AC3_60:
; con_s_bg_60
- D 0 - I - 0x016AD3 0B:8AC3: 02        .byte $02   ; 
- D 0 - I - 0x016AD4 0B:8AC4: 03        .byte $03   ; 
- D 0 - I - 0x016AD5 0B:8AC5: 00        .byte $00   ; 
- D 0 - I - 0x016AD6 0B:8AC6: 80        .byte $80   ; 
- D 0 - I - 0x016AD7 0B:8AC7: 5E        .byte $5E   ; 


_off005_8AC8_61:
; con_s_bg_61
- D 0 - I - 0x016AD8 0B:8AC8: 02        .byte $02   ; 
- D 0 - I - 0x016AD9 0B:8AC9: 00        .byte $00   ; 
- D 0 - I - 0x016ADA 0B:8ACA: 69        .byte $69   ; 


_off005_8ACB_62:
; con_s_bg_62
- D 0 - I - 0x016ADB 0B:8ACB: 02        .byte $02   ; 
- D 0 - I - 0x016ADC 0B:8ACC: 06        .byte $06   ; 
- D 0 - I - 0x016ADD 0B:8ACD: 00        .byte $00   ; 
- D 0 - I - 0x016ADE 0B:8ACE: 08        .byte $08   ; 
- D 0 - I - 0x016ADF 0B:8ACF: 01        .byte $01   ; 
- D 0 - I - 0x016AE0 0B:8AD0: CF 8A     .word off_8AD4 - $05
- D 0 - I - 0x016AE2 0B:8AD2: D1 8A     .word off_8AD6 - $05
off_8AD4:
- D 0 - I - 0x016AE4 0B:8AD4: 73        .byte $73   ; 
- D 0 - I - 0x016AE5 0B:8AD5: 04        .byte $04   ; 
off_8AD6:
- D 0 - I - 0x016AE6 0B:8AD6: 73        .byte $73   ; 
- D 0 - I - 0x016AE7 0B:8AD7: 05        .byte $05   ; 


_off005_8AD8_63:
; con_s_bg_63
- D 0 - I - 0x016AE8 0B:8AD8: 02        .byte $02   ; 
- D 0 - I - 0x016AE9 0B:8AD9: 00        .byte $00   ; 
- D 0 - I - 0x016AEA 0B:8ADA: 51        .byte $51   ; 


_off005_8ADB_64:
; con_s_bg_64
- D 0 - I - 0x016AEB 0B:8ADB: 02        .byte $02   ; 
- D 0 - I - 0x016AEC 0B:8ADC: 03        .byte $03   ; 
- D 0 - I - 0x016AED 0B:8ADD: 00        .byte $00   ; 
- D 0 - I - 0x016AEE 0B:8ADE: F9        .byte $F9   ; 
- D 0 - I - 0x016AEF 0B:8ADF: 39        .byte $39   ; 


_off005_8AE0_65:
; con_s_bg_65
- D 0 - I - 0x016AF0 0B:8AE0: 02        .byte $02   ; 
- D 0 - I - 0x016AF1 0B:8AE1: 05        .byte $05   ; 
- D 0 - I - 0x016AF2 0B:8AE2: 00        .byte $00   ; 
- D 0 - I - 0x016AF3 0B:8AE3: 00        .byte $00   ; 
- D 0 - I - 0x016AF4 0B:8AE4: 83        .byte $83   ; 
- D 0 - I - 0x016AF5 0B:8AE5: 6B        .byte $6B   ; 


_off005_8AE6_66:
; con_s_bg_66
- - - - - - 0x016AF6 0B:8AE6: 02        .byte $02   ; 
- - - - - - 0x016AF7 0B:8AE7: 01        .byte $01   ; 
- - - - - - 0x016AF8 0B:8AE8: 00        .byte $00   ; 
- - - - - - 0x016AF9 0B:8AE9: 80        .byte $80   ; 
- - - - - - 0x016AFA 0B:8AEA: 00        .byte $00   ; 
- - - - - - 0x016AFB 0B:8AEB: 5F        .byte $5F   ; 
- - - - - - 0x016AFC 0B:8AEC: 5F        .byte $5F   ; 


_off005_8AED_67:
; con_s_bg_67
- D 0 - I - 0x016AFD 0B:8AED: 02        .byte $02   ; 
- D 0 - I - 0x016AFE 0B:8AEE: 05        .byte $05   ; 
- D 0 - I - 0x016AFF 0B:8AEF: 00        .byte $00   ; 
- D 0 - I - 0x016B00 0B:8AF0: 00        .byte $00   ; 
- D 0 - I - 0x016B01 0B:8AF1: 7C        .byte $7C   ; 
- D 0 - I - 0x016B02 0B:8AF2: 7E        .byte $7E   ; 


_off005_8AF3_68:
; con_s_bg_68
- D 0 - I - 0x016B03 0B:8AF3: 02        .byte $02   ; 
- D 0 - I - 0x016B04 0B:8AF4: 05        .byte $05   ; 
- D 0 - I - 0x016B05 0B:8AF5: 00        .byte $00   ; 
- D 0 - I - 0x016B06 0B:8AF6: 80        .byte $80   ; 
- D 0 - I - 0x016B07 0B:8AF7: 7D        .byte $7D   ; 
- D 0 - I - 0x016B08 0B:8AF8: 46        .byte $46   ; 


_off005_8AF9_69:
; con_s_bg_69
- D 0 - I - 0x016B09 0B:8AF9: 02        .byte $02   ; 
- D 0 - I - 0x016B0A 0B:8AFA: 05        .byte $05   ; 
- D 0 - I - 0x016B0B 0B:8AFB: 00        .byte $00   ; 
- D 0 - I - 0x016B0C 0B:8AFC: 00        .byte $00   ; 
- D 0 - I - 0x016B0D 0B:8AFD: 6A        .byte $6A   ; 
- D 0 - I - 0x016B0E 0B:8AFE: 7F        .byte $7F   ; 


_off005_8AFF_6A:
; con_s_bg_6A
- D 0 - I - 0x016B0F 0B:8AFF: 02        .byte $02   ; 
- D 0 - I - 0x016B10 0B:8B00: 03        .byte $03   ; 
- D 0 - I - 0x016B11 0B:8B01: 00        .byte $00   ; 
- D 0 - I - 0x016B12 0B:8B02: F5        .byte $F5   ; 
- D 0 - I - 0x016B13 0B:8B03: 5E        .byte $5E   ; 


_off005_8B04_6B:
; con_s_bg_6B
- D 0 - I - 0x016B14 0B:8B04: 02        .byte $02   ; 
- D 0 - I - 0x016B15 0B:8B05: 03        .byte $03   ; 
- D 0 - I - 0x016B16 0B:8B06: 00        .byte $00   ; 
- D 0 - I - 0x016B17 0B:8B07: F5        .byte $F5   ; 
- D 0 - I - 0x016B18 0B:8B08: 30        .byte $30   ; 


_off005_8B09_6C:
; con_s_bg_6C
- D 0 - I - 0x016B19 0B:8B09: 02        .byte $02   ; 
- D 0 - I - 0x016B1A 0B:8B0A: 05        .byte $05   ; 
- D 0 - I - 0x016B1B 0B:8B0B: 00        .byte $00   ; 
- D 0 - I - 0x016B1C 0B:8B0C: 00        .byte $00   ; 
- D 0 - I - 0x016B1D 0B:8B0D: 68        .byte $68   ; 
- D 0 - I - 0x016B1E 0B:8B0E: 66        .byte $66   ; 


_off005_8B0F_6D:
; con_s_bg_6D
- D 0 - I - 0x016B1F 0B:8B0F: 02        .byte $02   ; 
- D 0 - I - 0x016B20 0B:8B10: 08        .byte $08   ; 
- D 0 - I - 0x016B21 0B:8B11: B0        .byte $B0   ; 
- D 0 - I - 0x016B22 0B:8B12: FE        .byte $FE   ; 
- D 0 - I - 0x016B23 0B:8B13: 02        .byte $02   ; 
- D 0 - I - 0x016B24 0B:8B14: 13 8B     .word off_8B18 - $05
- D 0 - I - 0x016B26 0B:8B16: 15 8B     .word off_8B1A - $05
off_8B18:
- D 0 - I - 0x016B28 0B:8B18: 1B        .byte $1B   ; 
- D 0 - I - 0x016B29 0B:8B19: 1D        .byte $1D   ; 
off_8B1A:
- D 0 - I - 0x016B2A 0B:8B1A: 1A        .byte $1A   ; 
- D 0 - I - 0x016B2B 0B:8B1B: 1C        .byte $1C   ; 


_off005_8B1C_6E:
; con_s_bg_6E
- D 0 - I - 0x016B2C 0B:8B1C: 02        .byte $02   ; 
- D 0 - I - 0x016B2D 0B:8B1D: 08        .byte $08   ; 
- D 0 - I - 0x016B2E 0B:8B1E: 00        .byte $00   ; 
- D 0 - I - 0x016B2F 0B:8B1F: FD        .byte $FD   ; 
- D 0 - I - 0x016B30 0B:8B20: 03        .byte $03   ; 
- D 0 - I - 0x016B31 0B:8B21: 20 8B     .word off_8B25 - $05
- D 0 - I - 0x016B33 0B:8B23: 23 8B     .word off_8B28 - $05
off_8B25:
- D 0 - I - 0x016B35 0B:8B25: 17        .byte $17   ; 
- D 0 - I - 0x016B36 0B:8B26: 16        .byte $16   ; 
- D 0 - I - 0x016B37 0B:8B27: 55        .byte $55   ; 
off_8B28:
- D 0 - I - 0x016B38 0B:8B28: 15        .byte $15   ; 
- D 0 - I - 0x016B39 0B:8B29: 14        .byte $14   ; 
- D 0 - I - 0x016B3A 0B:8B2A: 74        .byte $74   ; 


_off005_8B2B_6F:
; con_s_bg_6F
- - - - - - 0x016B3B 0B:8B2B: 02        .byte $02   ; 
- - - - - - 0x016B3C 0B:8B2C: 06        .byte $06   ; 
- - - - - - 0x016B3D 0B:8B2D: B0        .byte $B0   ; 
- - - - - - 0x016B3E 0B:8B2E: FE        .byte $FE   ; 
- - - - - - 0x016B3F 0B:8B2F: 01        .byte $01   ; 
- - - - - - 0x016B40 0B:8B30: 2F 8B     .word off_8B34 - $05
- - - - - - 0x016B42 0B:8B32: 31 8B     .word off_8B36 - $05
off_8B34:
- - - - - - 0x016B44 0B:8B34: 1B        .byte $1B   ; 
- - - - - - 0x016B45 0B:8B35: 46        .byte $46   ; 
off_8B36:
- - - - - - 0x016B46 0B:8B36: 1A        .byte $1A   ; 
- - - - - - 0x016B47 0B:8B37: 7D        .byte $7D   ; 


_off005_8B38_70:
; con_s_bg_70
- D 0 - I - 0x016B48 0B:8B38: 06        .byte $06   ; 
- D 0 - I - 0x016B49 0B:8B39: 00        .byte $00   ; 
- D 0 - I - 0x016B4A 0B:8B3A: 56        .byte $56   ; 


_off005_8B3B_71:
; con_s_bg_71
- D 0 - I - 0x016B4B 0B:8B3B: 02        .byte $02   ; 
- D 0 - I - 0x016B4C 0B:8B3C: 00        .byte $00   ; 
- D 0 - I - 0x016B4D 0B:8B3D: 80        .byte $80   ; 


_off005_8B3E_72:
; con_s_bg_72
- D 0 - I - 0x016B4E 0B:8B3E: F2        .byte con_81BC_F2



_off005_8B3F_73:
- D 0 - I - 0x016B4F 0B:8B3F: 19        .byte $19   ; 
- D 0 - I - 0x016B50 0B:8B40: 00        .byte $00   ; 
- D 0 - I - 0x016B51 0B:8B41: 2B        .byte $2B   ; 



tbl_8B42:
- D 0 - - - 0x016B52 0B:8B42: 00        .byte $00   ; 00
- D 0 - - - 0x016B53 0B:8B43: 00        .byte $00   ; 04
- D 0 - - - 0x016B54 0B:8B44: 00        .byte $00   ; 08
- D 0 - - - 0x016B55 0B:8B45: 00        .byte $00   ; 0C
- D 0 - - - 0x016B56 0B:8B46: 00        .byte $00   ; 10
- D 0 - - - 0x016B57 0B:8B47: 00        .byte $00   ; 14
- D 0 - - - 0x016B58 0B:8B48: 00        .byte $00   ; 18
- D 0 - - - 0x016B59 0B:8B49: 00        .byte $00   ; 1C
- D 0 - - - 0x016B5A 0B:8B4A: AA        .byte $AA   ; 20
- D 0 - - - 0x016B5B 0B:8B4B: AA        .byte $AA   ; 24
- D 0 - - - 0x016B5C 0B:8B4C: AA        .byte $AA   ; 28
- D 0 - - - 0x016B5D 0B:8B4D: 6A        .byte $6A   ; 2C
- D 0 - - - 0x016B5E 0B:8B4E: 29        .byte $29   ; 30
- D 0 - - - 0x016B5F 0B:8B4F: 94        .byte $94   ; 34
- D 0 - - - 0x016B60 0B:8B50: 55        .byte $55   ; 38
- D 0 - - - 0x016B61 0B:8B51: 55        .byte $55   ; 3C
- D 0 - - - 0x016B62 0B:8B52: 52        .byte $52   ; 40
- D 0 - - - 0x016B63 0B:8B53: 8A        .byte $8A   ; 44
- D 0 - - - 0x016B64 0B:8B54: AA        .byte $AA   ; 48
- D 0 - - - 0x016B65 0B:8B55: AA        .byte $AA   ; 4C
- D 0 - - - 0x016B66 0B:8B56: 80        .byte $80   ; 50
- D 0 - - - 0x016B67 0B:8B57: 22        .byte $22   ; 54
- D 0 - - - 0x016B68 0B:8B58: 50        .byte $50   ; 58
- D 0 - - - 0x016B69 0B:8B59: 55        .byte $55   ; 5C
- D 0 - - - 0x016B6A 0B:8B5A: 05        .byte $05   ; 60
- D 0 - - - 0x016B6B 0B:8B5B: 56        .byte $56   ; 64
- D 0 - - - 0x016B6C 0B:8B5C: 05        .byte $05   ; 68
- D 0 - - - 0x016B6D 0B:8B5D: 4A        .byte $4A   ; 6C
- D 0 - - - 0x016B6E 0B:8B5E: 15        .byte $15   ; 70
- D 0 - - - 0x016B6F 0B:8B5F: A4        .byte $A4   ; 74
- D 0 - - - 0x016B70 0B:8B60: 80        .byte $80   ; 78
- D 0 - - - 0x016B71 0B:8B61: 00        .byte $00   ; 7C
- D 0 - - - 0x016B72 0B:8B62: 2A        .byte $2A   ; 80
; bzk garbage? в новых логах не читался
- - - - - - 0x016B73 0B:8B63: 00        .byte $00   ; 84



tbl_8B64_8x4_блоков_32x32:
; 00 
- D 0 - I - 0x016B74 0B:8B64: 00        .byte $00, $0A, $00, $00, $09, $02, $03, $04   ; 
- D 0 - I - 0x016B7C 0B:8B6C: 0C        .byte $0C, $0D, $0C, $0D, $0E, $0F, $10, $11   ; 
- D 0 - I - 0x016B84 0B:8B74: 12        .byte $12, $12, $12, $12, $12, $12, $12, $12   ; 
- D 0 - I - 0x016B8C 0B:8B7C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 01 
- D 0 - I - 0x016B94 0B:8B84: 01        .byte $01, $02, $03, $04, $0A, $00, $00, $05   ; 
- D 0 - I - 0x016B9C 0B:8B8C: 0E        .byte $0E, $0F, $10, $11, $0C, $0D, $0C, $0D   ; 
- D 0 - I - 0x016BA4 0B:8B94: 12        .byte $12, $12, $12, $12, $12, $12, $12, $12   ; 
- D 0 - I - 0x016BAC 0B:8B9C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 02 
- D 0 - I - 0x016BB4 0B:8BA4: 00        .byte $00, $00, $00, $0A, $01, $02, $03, $04   ; 
- D 0 - I - 0x016BBC 0B:8BAC: 0C        .byte $0C, $0D, $0C, $0D, $0E, $0F, $10, $11   ; 
- D 0 - I - 0x016BC4 0B:8BB4: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016BCC 0B:8BBC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 03 
- D 0 - I - 0x016BD4 0B:8BC4: 01        .byte $01, $02, $03, $04, $05, $00, $08, $00   ; 
- D 0 - I - 0x016BDC 0B:8BCC: 0E        .byte $0E, $0F, $10, $11, $0C, $0D, $0C, $0D   ; 
- D 0 - I - 0x016BE4 0B:8BD4: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016BEC 0B:8BDC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 04 
- D 0 - I - 0x016BF4 0B:8BE4: 15        .byte $15, $16, $15, $16, $17, $18, $17, $16   ; 
- D 0 - I - 0x016BFC 0B:8BEC: 19        .byte $19, $1A, $19, $1A, $19, $1B, $1C, $1A   ; 
- D 0 - I - 0x016C04 0B:8BF4: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016C0C 0B:8BFC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 05 
- D 0 - I - 0x016C14 0B:8C04: 16        .byte $16, $17, $18, $17, $16, $15, $16, $15   ; 
- D 0 - I - 0x016C1C 0B:8C0C: 1A        .byte $1A, $19, $1B, $1C, $1A, $19, $1A, $19   ; 
- D 0 - I - 0x016C24 0B:8C14: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016C2C 0B:8C1C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 06 
- D 0 - I - 0x016C34 0B:8C24: 15        .byte $15, $16, $15, $16, $17, $18, $17, $16   ; 
- D 0 - I - 0x016C3C 0B:8C2C: 19        .byte $19, $1A, $19, $1A, $19, $1D, $1E, $2E   ; 
- D 0 - I - 0x016C44 0B:8C34: 23        .byte $23, $23, $23, $23, $23, $20, $21, $22   ; 
- D 0 - I - 0x016C4C 0B:8C3C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 07 
- D 0 - I - 0x016C54 0B:8C44: 16        .byte $16, $17, $18, $17, $16, $15, $16, $15   ; 
- D 0 - I - 0x016C5C 0B:8C4C: 1A        .byte $1A, $19, $1D, $1E, $2E, $19, $1A, $19   ; 
- D 0 - I - 0x016C64 0B:8C54: 23        .byte $23, $23, $20, $21, $22, $23, $23, $23   ; 
- D 0 - I - 0x016C6C 0B:8C5C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 08 
- - - - - - 0x016C74 0B:8C64: 15        .byte $15, $16, $15, $16, $17, $18, $17, $16   ; 
- - - - - - 0x016C7C 0B:8C6C: 19        .byte $19, $1A, $19, $1A, $19, $24, $25, $26   ; 
- - - - - - 0x016C84 0B:8C74: 2D        .byte $2D, $2D, $2D, $2D, $2D, $28, $29, $2A   ; 
- - - - - - 0x016C8C 0B:8C7C: 2C        .byte $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C   ; 
; 09 
- D 0 - I - 0x016C94 0B:8C84: 16        .byte $16, $17, $18, $17, $16, $15, $16, $15   ; 
- D 0 - I - 0x016C9C 0B:8C8C: 26        .byte $26, $25, $27, $19, $1A, $19, $1A, $19   ; 
- D 0 - I - 0x016CA4 0B:8C94: 2A        .byte $2A, $29, $2B, $2D, $2D, $2D, $2D, $2D   ; 
- D 0 - I - 0x016CAC 0B:8C9C: 2C        .byte $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C   ; 
; 0A 
- D 0 - I - 0x016CB4 0B:8CA4: 16        .byte $16, $15, $16, $15, $16, $15, $16, $15   ; 
- D 0 - I - 0x016CBC 0B:8CAC: 26        .byte $26, $25, $2E, $19, $1A, $19, $1A, $19   ; 
- D 0 - I - 0x016CC4 0B:8CB4: 2A        .byte $2A, $29, $2B, $2D, $2D, $2D, $2D, $2D   ; 
- D 0 - I - 0x016CCC 0B:8CBC: 2C        .byte $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C   ; 
; 0B 
- D 0 - I - 0x016CD4 0B:8CC4: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x016CDC 0B:8CCC: 19        .byte $19, $1A, $19, $1A, $19, $31, $25, $26   ; 
- D 0 - I - 0x016CE4 0B:8CD4: 2D        .byte $2D, $2D, $2D, $2D, $2D, $28, $29, $2A   ; 
- D 0 - I - 0x016CEC 0B:8CDC: 2C        .byte $2C, $2C, $2C, $2C, $2C, $2C, $2C, $2C   ; 
; 0C 
- D 0 - I - 0x016CF4 0B:8CE4: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x016CFC 0B:8CEC: 19        .byte $19, $2F, $1E, $2E, $19, $1A, $19, $1A   ; 
- D 0 - I - 0x016D04 0B:8CF4: 23        .byte $23, $20, $21, $22, $23, $23, $23, $23   ; 
- D 0 - I - 0x016D0C 0B:8CFC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 0D 
- D 0 - I - 0x016D14 0B:8D04: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x016D1C 0B:8D0C: 19        .byte $19, $1A, $19, $1A, $19, $2F, $1E, $2E   ; 
- D 0 - I - 0x016D24 0B:8D14: 23        .byte $23, $23, $23, $23, $23, $20, $21, $22   ; 
- D 0 - I - 0x016D2C 0B:8D1C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 0E 
- D 0 - I - 0x016D34 0B:8D24: 00        .byte $00, $05, $00, $00, $00, $0A, $06, $07   ; 
- D 0 - I - 0x016D3C 0B:8D2C: 0D        .byte $0D, $0C, $32, $33, $0D, $0C, $0D, $0C   ; 
- D 0 - I - 0x016D44 0B:8D34: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016D4C 0B:8D3C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 0F 
- D 0 - I - 0x016D54 0B:8D44: 00        .byte $00, $00, $0A, $08, $00, $00, $05, $00   ; 
- D 0 - I - 0x016D5C 0B:8D4C: 0C        .byte $0C, $0D, $0C, $0D, $0C, $32, $33, $0D   ; 
- D 0 - I - 0x016D64 0B:8D54: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016D6C 0B:8D5C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 10 
- D 0 - I - 0x016D74 0B:8D64: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x016D7C 0B:8D6C: 19        .byte $19, $30, $1C, $1A, $19, $1A, $19, $1A   ; 
- D 0 - I - 0x016D84 0B:8D74: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016D8C 0B:8D7C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 11 
- D 0 - I - 0x016D94 0B:8D84: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x016D9C 0B:8D8C: 19        .byte $19, $1A, $19, $1A, $19, $30, $1C, $1A   ; 
- D 0 - I - 0x016DA4 0B:8D94: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x016DAC 0B:8D9C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 12 
- D 0 - I - 0x016DB4 0B:8DA4: 00        .byte $00, $08, $00, $06, $07, $00, $0A, $00   ; 
- D 0 - I - 0x016DBC 0B:8DAC: 0D        .byte $0D, $0C, $32, $33, $0D, $0C, $0D, $0C   ; 
- D 0 - I - 0x016DC4 0B:8DB4: 12        .byte $12, $12, $12, $12, $12, $12, $12, $12   ; 
- D 0 - I - 0x016DCC 0B:8DBC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 13 
- D 0 - I - 0x016DD4 0B:8DC4: 0A        .byte $0A, $00, $08, $00, $06, $07, $00, $00   ; 
- D 0 - I - 0x016DDC 0B:8DCC: 0C        .byte $0C, $0D, $0C, $0D, $0C, $32, $33, $0D   ; 
- D 0 - I - 0x016DE4 0B:8DD4: 12        .byte $12, $12, $12, $12, $12, $12, $12, $12   ; 
- D 0 - I - 0x016DEC 0B:8DDC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 14 
- D 0 - I - 0x016DF4 0B:8DE4: 85        .byte $85, $86, $85, $85, $85, $86, $85, $85   ; 
- D 0 - I - 0x016DFC 0B:8DEC: 34        .byte $34, $35, $56, $56, $56, $45, $46, $56   ; 
- D 0 - I - 0x016E04 0B:8DF4: 39        .byte $39, $3A, $37, $38, $55, $55, $8F, $55   ; 
- D 0 - I - 0x016E0C 0B:8DFC: 3B        .byte $3B, $3C, $3D, $3E, $56, $56, $92, $87   ; 
; 15 
- D 0 - I - 0x016E14 0B:8E04: C5        .byte $C5, $C6, $C7, $C8, $C9, $C9, $C9, $CA   ; 
- D 0 - I - 0x016E1C 0B:8E0C: CB        .byte $CB, $CC, $CD, $CE, $CF, $CF, $CF, $CF   ; 
- D 0 - I - 0x016E24 0B:8E14: D0        .byte $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7   ; 
- D 0 - I - 0x016E2C 0B:8E1C: F4        .byte $F4, $D8, $13, $13, $13, $13, $13, $13   ; 
; 16 
- D 0 - I - 0x016E34 0B:8E24: 85        .byte $85, $85, $99, $85, $85, $85, $99, $85   ; 
- D 0 - I - 0x016E3C 0B:8E2C: 56        .byte $56, $56, $71, $72, $56, $56, $67, $68   ; 
- D 0 - I - 0x016E44 0B:8E34: 55        .byte $55, $55, $F2, $55, $63, $64, $65, $66   ; 
- D 0 - I - 0x016E4C 0B:8E3C: 9C        .byte $9C, $A1, $56, $56, $5F, $60, $61, $62   ; 
; 17 
- D 0 - I - 0x016E54 0B:8E44: D9        .byte $D9, $C9, $C9, $C9, $DA, $DB, $DC, $DD   ; 
- D 0 - I - 0x016E5C 0B:8E4C: CF        .byte $CF, $CF, $CF, $CF, $DE, $DF, $E0, $E1   ; 
- D 0 - I - 0x016E64 0B:8E54: E3        .byte $E3, $E4, $E5, $E6, $E7, $E8, $E9, $EA   ; 
- D 0 - I - 0x016E6C 0B:8E5C: 13        .byte $13, $13, $13, $13, $13, $13, $E2, $FF   ; 
; 18 
- - - - - - 0x016E74 0B:8E64: 86        .byte $86, $85, $85, $86, $85, $85, $86, $85   ; 
- - - - - - 0x016E7C 0B:8E6C: 87        .byte $87, $56, $56, $88, $89, $56, $56, $45   ; 
- - - - - - 0x016E84 0B:8E74: 8A        .byte $8A, $8A, $8A, $8B, $8E, $B2, $36, $36   ; 
- - - - - - 0x016E8C 0B:8E7C: 8C        .byte $8C, $8C, $8C, $8D, $44, $47, $44, $44   ; 
; 19 
- - - - - - 0x016E94 0B:8E84: 85        .byte $85, $99, $85, $85, $99, $85, $85, $99   ; 
- - - - - - 0x016E9C 0B:8E8C: 72        .byte $72, $56, $56, $9A, $9B, $56, $56, $9C   ; 
- - - - - - 0x016EA4 0B:8E94: 36        .byte $36, $36, $A0, $9F, $9D, $8A, $8A, $8A   ; 
- - - - - - 0x016EAC 0B:8E9C: 44        .byte $44, $44, $73, $44, $9E, $8C, $8C, $8C   ; 
; 1A 
- D 0 - I - 0x016EB4 0B:8EA4: 55        .byte $55, $F1, $55, $90, $91, $55, $55, $F1   ; 
- D 0 - I - 0x016EBC 0B:8EAC: 93        .byte $93, $93, $93, $94, $92, $87, $56, $56   ; 
- D 0 - I - 0x016EC4 0B:8EB4: 95        .byte $95, $95, $95, $96, $97, $97, $97, $97   ; 
- D 0 - I - 0x016ECC 0B:8EBC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 1B 
- D 0 - I - 0x016ED4 0B:8EC4: F2        .byte $F2, $55, $55, $BD, $BE, $55, $F2, $55   ; 
- D 0 - I - 0x016EDC 0B:8ECC: 56        .byte $56, $56, $9C, $A1, $A4, $93, $93, $93   ; 
- D 0 - I - 0x016EE4 0B:8ED4: 97        .byte $97, $97, $97, $97, $A5, $95, $95, $95   ; 
- D 0 - I - 0x016EEC 0B:8EDC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 1C 
- D 0 - I - 0x016EF4 0B:8EE4: C3        .byte $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x016EFC 0B:8EEC: C3        .byte $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x016F04 0B:8EF4: 86        .byte $86, $85, $85, $86, $85, $85, $86, $85   ; 
- D 0 - I - 0x016F0C 0B:8EFC: 92        .byte $92, $87, $56, $88, $89, $56, $92, $87   ; 
; 1D 
- D 0 - I - 0x016F14 0B:8F04: C3        .byte $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x016F1C 0B:8F0C: C3        .byte $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x016F24 0B:8F14: 85        .byte $85, $99, $85, $85, $99, $85, $85, $99   ; 
- D 0 - I - 0x016F2C 0B:8F1C: 9C        .byte $9C, $A1, $56, $9A, $9B, $56, $9C, $A1   ; 
; 1E 
- D 0 - I - 0x016F34 0B:8F24: AD        .byte $AD, $AE, $8E, $B2, $36, $36, $36, $A8   ; 
- D 0 - I - 0x016F3C 0B:8F2C: B1        .byte $B1, $B3, $55, $F1, $55, $55, $55, $A9   ; 
- D 0 - I - 0x016F44 0B:8F34: B5        .byte $B5, $B6, $AF, $AF, $AF, $AF, $AF, $AF   ; 
- D 0 - I - 0x016F4C 0B:8F3C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 1F 
- D 0 - I - 0x016F54 0B:8F44: AA        .byte $AA, $36, $36, $36, $A0, $9F, $AC, $AD   ; 
- D 0 - I - 0x016F5C 0B:8F4C: AB        .byte $AB, $55, $55, $55, $A3, $55, $B0, $B1   ; 
- D 0 - I - 0x016F64 0B:8F54: AF        .byte $AF, $AF, $AF, $AF, $AF, $AF, $B4, $B5   ; 
- D 0 - I - 0x016F6C 0B:8F5C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 20 
- D 0 - I - 0x016F74 0B:8F64: 0D        .byte $0D, $0E, $0F, $15, $16, $15, $15, $17   ; 
- D 0 - I - 0x016F7C 0B:8F6C: 1D        .byte $1D, $1E, $15, $18, $15, $1A, $18, $15   ; 
- D 0 - I - 0x016F84 0B:8F74: 1F        .byte $1F, $10, $1B, $10, $10, $10, $10, $10   ; 
- D 0 - I - 0x016F8C 0B:8F7C: 20        .byte $20, $12, $11, $12, $11, $12, $11, $12   ; 
; 21 
- D 0 - I - 0x016F94 0B:8F84: 17        .byte $17, $15, $15, $15, $15, $06, $07, $08   ; 
- D 0 - I - 0x016F9C 0B:8F8C: 15        .byte $15, $16, $15, $15, $18, $15, $09, $0A   ; 
- D 0 - I - 0x016FA4 0B:8F94: 10        .byte $10, $10, $10, $10, $10, $1B, $10, $0B   ; 
- D 0 - I - 0x016FAC 0B:8F9C: 11        .byte $11, $12, $11, $12, $11, $12, $11, $0C   ; 
; 22 
- D 0 - I - 0x016FB4 0B:8FA4: D3        .byte $D3, $D4, $D5, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x016FBC 0B:8FAC: D6        .byte $D6, $D7, $D8, $D9, $15, $15, $15, $F4   ; 
- D 0 - I - 0x016FC4 0B:8FB4: DA        .byte $DA, $DB, $DC, $DD, $15, $15, $F2, $F3   ; 
- D 0 - I - 0x016FCC 0B:8FBC: DE        .byte $DE, $DF, $E0, $E1, $3E, $3E, $EE, $F6   ; 
; 23 
- D 0 - I - 0x016FD4 0B:8FC4: 15        .byte $15, $15, $15, $15, $15, $E3, $E4, $E5   ; 
- D 0 - I - 0x016FDC 0B:8FCC: F1        .byte $F1, $15, $15, $15, $E2, $E6, $E7, $E8   ; 
- D 0 - I - 0x016FE4 0B:8FD4: F0        .byte $F0, $EF, $15, $15, $E9, $EA, $EB, $EC   ; 
- D 0 - I - 0x016FEC 0B:8FDC: F6        .byte $F6, $ED, $3E, $3E, $CE, $CF, $D0, $D1   ; 
; 24 
- D 0 - I - 0x016FF4 0B:8FE4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x016FFC 0B:8FEC: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x017004 0B:8FF4: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x01700C 0B:8FFC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
; 25 
- D 0 - I - 0x017014 0B:9004: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x01701C 0B:900C: 15        .byte $15, $15, $15, $15, $1A, $15, $18, $15   ; 
- D 0 - I - 0x017024 0B:9014: 15        .byte $15, $16, $15, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x01702C 0B:901C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
; 26 
- D 0 - I - 0x017034 0B:9024: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x01703C 0B:902C: C4        .byte $C4, $C4, $D2, $C8, $C3, $D2, $C4, $C4   ; 
- D 0 - I - 0x017044 0B:9034: C4        .byte $C4, $C4, $C2, $C5, $C6, $C7, $C4, $C4   ; 
- D 0 - I - 0x01704C 0B:903C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 27 
- D 0 - I - 0x017054 0B:9044: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x01705C 0B:904C: C4        .byte $C4, $C4, $D2, $C9, $CA, $D2, $C4, $C4   ; 
- D 0 - I - 0x017064 0B:9054: C4        .byte $C4, $C4, $CD, $CB, $CC, $C2, $C4, $C4   ; 
- D 0 - I - 0x01706C 0B:905C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 28 
- D 0 - I - 0x017074 0B:9064: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x01707C 0B:906C: C4        .byte $C4, $C4, $D2, $F8, $C3, $D2, $C4, $C4   ; 
- D 0 - I - 0x017084 0B:9074: C4        .byte $C4, $C4, $C2, $C5, $F9, $FA, $C4, $C4   ; 
- D 0 - I - 0x01708C 0B:907C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 29 
- D 0 - I - 0x017094 0B:9084: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x01709C 0B:908C: C4        .byte $C4, $C4, $D2, $C9, $FD, $D2, $C4, $C4   ; 
- D 0 - I - 0x0170A4 0B:9094: C4        .byte $C4, $C4, $FB, $FC, $CC, $C2, $C4, $C4   ; 
- D 0 - I - 0x0170AC 0B:909C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 2A 
- D 0 - I - 0x0170B4 0B:90A4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0170BC 0B:90AC: 00        .byte $00, $00, $BA, $BC, $BC, $BB, $00, $00   ; 
- D 0 - I - 0x0170C4 0B:90B4: 00        .byte $00, $00, $BD, $BE, $BF, $C0, $00, $00   ; 
- D 0 - I - 0x0170CC 0B:90BC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
; 2B 
- D 0 - I - 0x0170D4 0B:90C4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0170DC 0B:90CC: 00        .byte $00, $00, $BA, $BC, $BC, $BB, $00, $00   ; 
- D 0 - I - 0x0170E4 0B:90D4: 00        .byte $00, $00, $BD, $BE, $BF, $C1, $00, $00   ; 
- D 0 - I - 0x0170EC 0B:90DC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
; 2C 
- D 0 - I - 0x0170F4 0B:90E4: AB        .byte $AB, $AB, $AB, $AB, $AB, $AB, $AB, $AB   ; 
- D 0 - I - 0x0170FC 0B:90EC: A9        .byte $A9, $AB, $AB, $AB, $AB, $AB, $AB, $AB   ; 
- D 0 - I - 0x017104 0B:90F4: AB        .byte $AB, $A9, $AB, $AB, $AB, $AB, $AB, $AB   ; 
- D 0 - I - 0x01710C 0B:90FC: AC        .byte $AC, $AC, $AA, $AC, $AC, $AC, $AC, $AC   ; 
; 2D 
- D 0 - I - 0x017114 0B:9104: 00        .byte $00, $71, $72, $72, $73, $72, $74, $00   ; 
- D 0 - I - 0x01711C 0B:910C: 00        .byte $00, $75, $76, $77, $78, $79, $7A, $00   ; 
- D 0 - I - 0x017124 0B:9114: 00        .byte $00, $7B, $7C, $7D, $7E, $7F, $80, $00   ; 
- D 0 - I - 0x01712C 0B:911C: 00        .byte $00, $81, $82, $82, $83, $82, $84, $00   ; 
; 2E 
- D 0 - I - 0x017134 0B:9124: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; 
- D 0 - I - 0x01713C 0B:912C: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; 
- D 0 - I - 0x017144 0B:9134: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; 
- D 0 - I - 0x01714C 0B:913C: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE   ; 
; 2F 
- D 0 - I - 0x017154 0B:9144: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x01715C 0B:914C: 17        .byte $17, $18, $17, $18, $17, $18, $17, $18   ; 
- D 0 - I - 0x017164 0B:9154: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x01716C 0B:915C: 25        .byte $25, $25, $25, $25, $25, $25, $25, $25   ; 
; 30 
- D 0 - I - 0x017174 0B:9164: 61        .byte $61, $62, $63, $64, $62, $63, $65, $66   ; 
- D 0 - I - 0x01717C 0B:916C: 67        .byte $67, $68, $69, $6A, $6B, $6C, $6D, $6E   ; 
- D 0 - I - 0x017184 0B:9174: 30        .byte $30, $30, $30, $30, $30, $30, $30, $30   ; 
- D 0 - I - 0x01718C 0B:917C: 31        .byte $31, $31, $31, $31, $31, $31, $31, $31   ; 
; 31 
- D 0 - I - 0x017194 0B:9184: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x01719C 0B:918C: 15        .byte $15, $85, $86, $87, $19, $19, $8C, $15   ; 
- D 0 - I - 0x0171A4 0B:9194: 15        .byte $15, $88, $89, $8A, $13, $14, $8B, $15   ; 
- D 0 - I - 0x0171AC 0B:919C: 3E        .byte $3E, $3E, $3E, $3E, $3E, $3E, $3E, $3E   ; 
; 32 
- D 0 - I - 0x0171B4 0B:91A4: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x0171BC 0B:91AC: 15        .byte $15, $94, $19, $19, $8D, $8E, $8F, $15   ; 
- D 0 - I - 0x0171C4 0B:91B4: 15        .byte $15, $90, $13, $14, $91, $92, $93, $15   ; 
- D 0 - I - 0x0171CC 0B:91BC: 3E        .byte $3E, $3E, $3E, $3E, $3E, $3E, $3E, $3E   ; 
; 33 
- D 0 - I - 0x0171D4 0B:91C4: 00        .byte $00, $0A, $00, $00, $06, $07, $00, $00   ; 
- D 0 - I - 0x0171DC 0B:91CC: 0C        .byte $0C, $0D, $7B, $7C, $7D, $7E, $0C, $0D   ; 
- D 0 - I - 0x0171E4 0B:91D4: 2D        .byte $2D, $2D, $79, $2A, $2A, $7A, $2D, $2D   ; 
- D 0 - I - 0x0171EC 0B:91DC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 34 
- D 0 - I - 0x0171F4 0B:91E4: 06        .byte $06, $07, $01, $02, $70, $04, $00, $0A   ; 
- D 0 - I - 0x0171FC 0B:91EC: 0C        .byte $0C, $0D, $75, $76, $77, $78, $0C, $0D   ; 
- D 0 - I - 0x017204 0B:91F4: 2D        .byte $2D, $2D, $79, $2A, $2A, $7A, $2D, $2D   ; 
- D 0 - I - 0x01720C 0B:91FC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 35 
- D 0 - I - 0x017214 0B:9204: 33        .byte $33, $33, $33, $32, $33, $33, $33, $33   ; 
- D 0 - I - 0x01721C 0B:920C: 2E        .byte $2E, $2D, $2E, $2E, $2E, $2D, $2E, $2E   ; 
- D 0 - I - 0x017224 0B:9214: 30        .byte $30, $30, $30, $30, $30, $30, $30, $30   ; 
- D 0 - I - 0x01722C 0B:921C: 31        .byte $31, $31, $31, $31, $31, $31, $31, $31   ; 
; 36 
- D 0 - I - 0x017234 0B:9224: 2B        .byte $2B, $2B, $2B, $2B, $EE, $2B, $2B, $2B   ; 
- D 0 - I - 0x01723C 0B:922C: 2D        .byte $2D, $2E, $2E, $2E, $EF, $2E, $2E, $2E   ; 
- D 0 - I - 0x017244 0B:9234: 30        .byte $30, $30, $30, $30, $30, $30, $30, $30   ; 
- D 0 - I - 0x01724C 0B:923C: 31        .byte $31, $31, $31, $31, $31, $31, $31, $31   ; 
; 37 
- D 0 - I - 0x017254 0B:9244: 10        .byte $10, $10, $B0, $B1, $B2, $B3, $29, $10   ; 
- D 0 - I - 0x01725C 0B:924C: 13        .byte $13, $14, $B4, $B5, $B6, $B7, $13, $14   ; 
- D 0 - I - 0x017264 0B:9254: B8        .byte $B8, $B8, $B8, $B8, $B8, $B8, $B8, $B8   ; 
- D 0 - I - 0x01726C 0B:925C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 38 
- D 0 - I - 0x017274 0B:9264: 26        .byte $26, $E7, $E4, $E2, $33, $33, $33, $33   ; 
- D 0 - I - 0x01727C 0B:926C: 26        .byte $26, $26, $E7, $E3, $E2, $33, $33, $33   ; 
- D 0 - I - 0x017284 0B:9274: 26        .byte $26, $26, $26, $E7, $E4, $E2, $E5, $33   ; 
- D 0 - I - 0x01728C 0B:927C: 25        .byte $25, $25, $25, $25, $E8, $E9, $E1, $BD   ; 
; 39 
- D 0 - I - 0x017294 0B:9284: 33        .byte $33, $B1, $33, $33, $33, $B2, $33, $33   ; 
- D 0 - I - 0x01729C 0B:928C: B4        .byte $B4, $B5, $B4, $B5, $B4, $B5, $B4, $B5   ; 
- D 0 - I - 0x0172A4 0B:9294: B6        .byte $B6, $B6, $B6, $B6, $B6, $B6, $B6, $B6   ; 
- D 0 - I - 0x0172AC 0B:929C: 25        .byte $25, $25, $25, $25, $25, $25, $25, $25   ; 
; 3A 
- D 0 - I - 0x0172B4 0B:92A4: 33        .byte $33, $33, $33, $33, $BB, $BE, $B7, $26   ; 
- D 0 - I - 0x0172BC 0B:92AC: 33        .byte $33, $33, $33, $BB, $BF, $B7, $26, $26   ; 
- D 0 - I - 0x0172C4 0B:92B4: 33        .byte $33, $BA, $BB, $BE, $B7, $26, $26, $26   ; 
- D 0 - I - 0x0172CC 0B:92BC: BD        .byte $BD, $BC, $C0, $B8, $25, $25, $25, $25   ; 
; 3B 
- D 0 - I - 0x0172D4 0B:92C4: 33        .byte $33, $33, $33, $C2, $C5, $26, $26, $26   ; 
- D 0 - I - 0x0172DC 0B:92CC: 33        .byte $33, $33, $33, $C4, $C5, $26, $26, $26   ; 
- D 0 - I - 0x0172E4 0B:92D4: 33        .byte $33, $33, $33, $C2, $C5, $26, $26, $26   ; 
- D 0 - I - 0x0172EC 0B:92DC: BD        .byte $BD, $BD, $BD, $C3, $C6, $25, $25, $25   ; 
; 3C 
- D 0 - I - 0x0172F4 0B:92E4: 33        .byte $33, $C8, $CA, $CD, $26, $26, $26, $26   ; 
- D 0 - I - 0x0172FC 0B:92EC: 33        .byte $33, $C7, $C8, $CB, $CD, $26, $26, $26   ; 
- D 0 - I - 0x017304 0B:92F4: 33        .byte $33, $33, $33, $C8, $CA, $CD, $26, $26   ; 
- D 0 - I - 0x01730C 0B:92FC: BD        .byte $BD, $BD, $BD, $BD, $C9, $CC, $FE, $26   ; 
; 3D 
- D 0 - I - 0x017314 0B:9304: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE   ; 
- D 0 - I - 0x01731C 0B:930C: CF        .byte $CF, $D0, $CF, $D0, $CF, $D0, $CF, $D0   ; 
- D 0 - I - 0x017324 0B:9314: FF        .byte $FF, $D1, $FF, $FF, $FF, $FF, $70, $FF   ; 
- D 0 - I - 0x01732C 0B:931C: BD        .byte $BD, $BD, $BD, $BD, $BD, $BD, $6F, $BD   ; 
; 3E 
- D 0 - I - 0x017334 0B:9324: 26        .byte $26, $26, $26, $26, $D9, $D5, $D2, $33   ; 
- D 0 - I - 0x01733C 0B:932C: 26        .byte $26, $26, $26, $D9, $D5, $D3, $D8, $33   ; 
- D 0 - I - 0x017344 0B:9334: 26        .byte $26, $26, $D9, $D5, $D2, $33, $33, $33   ; 
- D 0 - I - 0x01734C 0B:933C: 25        .byte $25, $DA, $D6, $D4, $BD, $BD, $BD, $BD   ; 
; 3F 
- D 0 - I - 0x017354 0B:9344: 26        .byte $26, $26, $26, $DB, $DC, $33, $33, $33   ; 
- D 0 - I - 0x01735C 0B:934C: 26        .byte $26, $26, $26, $DD, $DC, $33, $33, $33   ; 
- D 0 - I - 0x017364 0B:9354: 26        .byte $26, $26, $26, $DB, $DC, $33, $33, $33   ; 
- D 0 - I - 0x01736C 0B:935C: 25        .byte $25, $25, $25, $DE, $DF, $BD, $BD, $BD   ; 
; 40 
- D 0 - I - 0x017374 0B:9364: A5        .byte $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5   ; 
- D 0 - I - 0x01737C 0B:936C: A6        .byte $A6, $A6, $A6, $A6, $A6, $A6, $A6, $A6   ; 
- D 0 - I - 0x017384 0B:9374: A7        .byte $A7, $A7, $A7, $A7, $A7, $A7, $A7, $A7   ; 
- D 0 - I - 0x01738C 0B:937C: A8        .byte $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8   ; 
; 41 
- D 0 - I - 0x017394 0B:9384: 05        .byte $05, $00, $C4, $00, $00, $08, $00, $0A   ; 
- D 0 - I - 0x01739C 0B:938C: 0D        .byte $0D, $0C, $0D, $0C, $0D, $0C, $0D, $0C   ; 
- D 0 - I - 0x0173A4 0B:9394: FA        .byte $FA, $FA, $FA, $FA, $FA, $FA, $FA, $FA   ; 
- D 0 - I - 0x0173AC 0B:939C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 42 
- D 0 - I - 0x0173B4 0B:93A4: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x0173BC 0B:93AC: 33        .byte $33, $33, $33, $33, $33, $33, $33, $33   ; 
- D 0 - I - 0x0173C4 0B:93B4: 15        .byte $15, $16, $15, $EA, $EB, $16, $15, $16   ; 
- D 0 - I - 0x0173CC 0B:93BC: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
; 43 
- D 0 - I - 0x0173D4 0B:93C4: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x0173DC 0B:93CC: 33        .byte $33, $33, $2F, $33, $ED, $33, $34, $33   ; 
- D 0 - I - 0x0173E4 0B:93D4: 15        .byte $15, $16, $15, $EA, $EC, $16, $15, $16   ; 
- D 0 - I - 0x0173EC 0B:93DC: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
; 44 
- D 0 - I - 0x0173F4 0B:93E4: 15        .byte $15, $15, $69, $6A, $6B, $6C, $15, $15   ; 
- D 0 - I - 0x0173FC 0B:93EC: 15        .byte $15, $15, $70, $6D, $6E, $6F, $15, $15   ; 
- D 0 - I - 0x017404 0B:93F4: 15        .byte $15, $15, $70, $6D, $6E, $6F, $15, $15   ; 
- D 0 - I - 0x01740C 0B:93FC: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 
; 45 
- D 0 - I - 0x017414 0B:9404: 15        .byte $15, $15, $61, $62, $63, $64, $15, $15   ; 
- D 0 - I - 0x01741C 0B:940C: 15        .byte $15, $15, $65, $66, $67, $68, $15, $15   ; 
- D 0 - I - 0x017424 0B:9414: 15        .byte $15, $15, $65, $66, $67, $68, $15, $15   ; 
- D 0 - I - 0x01742C 0B:941C: 15        .byte $15, $15, $15, $15, $15, $15, $15, $15   ; 
; 46 
- D 0 - I - 0x017434 0B:9424: A2        .byte $A2, $55, $55, $BD, $BE, $55, $55, $BC   ; 
- D 0 - I - 0x01743C 0B:942C: 56        .byte $56, $56, $71, $72, $56, $56, $9A, $9B   ; 
- D 0 - I - 0x017444 0B:9434: 97        .byte $97, $97, $97, $97, $97, $97, $97, $97   ; 
- D 0 - I - 0x01744C 0B:943C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 47 
- D 0 - I - 0x017454 0B:9444: 15        .byte $15, $16, $15, $15, $15, $15, $17, $15   ; 
- D 0 - I - 0x01745C 0B:944C: 49        .byte $49, $4A, $15, $18, $15, $15, $15, $15   ; 
- D 0 - I - 0x017464 0B:9454: 4C        .byte $4C, $48, $49, $4A, $15, $15, $15, $16   ; 
- D 0 - I - 0x01746C 0B:945C: 4B        .byte $4B, $4B, $4B, $46, $47, $3E, $3E, $3E   ; 
; 48 
- D 0 - I - 0x017474 0B:9464: 15        .byte $15, $16, $15, $15, $15, $17, $15, $15   ; 
- D 0 - I - 0x01747C 0B:946C: 15        .byte $15, $15, $18, $15, $15, $15, $15, $15   ; 
- D 0 - I - 0x017484 0B:9474: 16        .byte $16, $15, $15, $15, $18, $15, $15, $16   ; 
- D 0 - I - 0x01748C 0B:947C: 3E        .byte $3E, $3E, $3E, $3E, $3E, $3E, $3E, $3E   ; 
; 49 
- D 0 - I - 0x017494 0B:9484: 15        .byte $15, $17, $15, $15, $15, $15, $16, $15   ; 
- D 0 - I - 0x01749C 0B:948C: 15        .byte $15, $15, $15, $15, $18, $15, $40, $41   ; 
- D 0 - I - 0x0174A4 0B:9494: 15        .byte $15, $16, $15, $15, $40, $41, $42, $43   ; 
- D 0 - I - 0x0174AC 0B:949C: 3E        .byte $3E, $3E, $3E, $3F, $45, $44, $44, $44   ; 
; 4A 
- D 0 - I - 0x0174B4 0B:94A4: 21        .byte $21, $22, $10, $1B, $10, $10, $10, $10   ; 
- D 0 - I - 0x0174BC 0B:94AC: 2A        .byte $2A, $23, $14, $13, $14, $13, $14, $13   ; 
- D 0 - I - 0x0174C4 0B:94B4: 2B        .byte $2B, $24, $28, $27, $27, $27, $27, $27   ; 
- D 0 - I - 0x0174CC 0B:94BC: 2C        .byte $2C, $25, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 4B 
- - - - - - 0x0174D4 0B:94C4: 3A        .byte $3A, $3B, $15, $15, $15, $15, $15, $15   ; 
- - - - - - 0x0174DC 0B:94CC: 38        .byte $38, $39, $10, $10, $10, $10, $29, $10   ; 
- - - - - - 0x0174E4 0B:94D4: 2A        .byte $2A, $23, $14, $13, $14, $13, $14, $13   ; 
- - - - - - 0x0174EC 0B:94DC: 35        .byte $35, $36, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 4C 
- D 0 - I - 0x0174F4 0B:94E4: 10        .byte $10, $29, $10, $10, $10, $10, $2D, $2E   ; 
- D 0 - I - 0x0174FC 0B:94EC: 14        .byte $14, $13, $14, $13, $14, $13, $2F, $2A   ; 
- D 0 - I - 0x017504 0B:94F4: 27        .byte $27, $27, $27, $27, $27, $26, $30, $2B   ; 
- D 0 - I - 0x01750C 0B:94FC: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $31, $2C   ; 
; 4D 
- - - - - - 0x017514 0B:9504: 15        .byte $15, $16, $15, $15, $15, $15, $3C, $3D   ; 
- - - - - - 0x01751C 0B:950C: 10        .byte $10, $10, $10, $10, $10, $10, $37, $38   ; 
- - - - - - 0x017524 0B:9514: 13        .byte $13, $14, $13, $14, $13, $14, $2F, $2A   ; 
- - - - - - 0x01752C 0B:951C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $34, $35   ; 
; 4E 
- D 0 - I - 0x017534 0B:9524: 10        .byte $10, $1B, $10, $10, $10, $29, $10, $10   ; 
- D 0 - I - 0x01753C 0B:952C: 14        .byte $14, $13, $14, $13, $14, $13, $14, $13   ; 
- D 0 - I - 0x017544 0B:9534: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x01754C 0B:953C: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C   ; 
; 4F 
- D 0 - I - 0x017554 0B:9544: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; 
- D 0 - I - 0x01755C 0B:954C: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; 
- D 0 - I - 0x017564 0B:9554: F7        .byte $F7, $F7, $F7, $32, $33, $F7, $F7, $F7   ; 
- D 0 - I - 0x01756C 0B:955C: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE   ; 
; 50 
- D 0 - I - 0x017574 0B:9564: C3        .byte $C3, $C3, $C3, $48, $C3, $C3, $48, $C3   ; 
- D 0 - I - 0x01757C 0B:956C: 49        .byte $49, $4A, $C3, $C3, $48, $C3, $C3, $C3   ; 
- D 0 - I - 0x017584 0B:9574: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x01758C 0B:957C: 84        .byte $84, $83, $84, $83, $84, $83, $84, $83   ; 
; 51 
- D 0 - I - 0x017594 0B:9584: 49        .byte $49, $4A, $C3, $C3, $48, $C3, $C3, $C3   ; 
- D 0 - I - 0x01759C 0B:958C: C3        .byte $C3, $C3, $C3, $48, $C3, $C3, $C3, $48   ; 
- D 0 - I - 0x0175A4 0B:9594: 7F        .byte $7F, $80, $7F, $80, $7F, $80, $7F, $80   ; 
- D 0 - I - 0x0175AC 0B:959C: 81        .byte $81, $82, $81, $82, $81, $82, $81, $82   ; 
; 52 
- D 0 - I - 0x0175B4 0B:95A4: C3        .byte $C3, $C3, $C3, $49, $4A, $C3, $4B, $C3   ; 
- D 0 - I - 0x0175BC 0B:95AC: 4A        .byte $4A, $C3, $4B, $C3, $C3, $C3, $C3, $49   ; 
- D 0 - I - 0x0175C4 0B:95B4: C3        .byte $C3, $C3, $C3, $C3, $49, $4A, $C3, $C3   ; 
- D 0 - I - 0x0175CC 0B:95BC: C3        .byte $C3, $4B, $C3, $C3, $C3, $C3, $49, $4A   ; 
; 53 
- D 0 - I - 0x0175D4 0B:95C4: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x0175DC 0B:95CC: C4        .byte $C4, $C4, $01, $02, $03, $03, $C4, $C4   ; 
- D 0 - I - 0x0175E4 0B:95D4: C4        .byte $C4, $C4, $01, $02, $03, $03, $C4, $C4   ; 
- D 0 - I - 0x0175EC 0B:95DC: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
; 54 
- D 0 - I - 0x0175F4 0B:95E4: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x0175FC 0B:95EC: C4        .byte $C4, $C4, $04, $04, $05, $01, $C4, $C4   ; 
- D 0 - I - 0x017604 0B:95F4: C4        .byte $C4, $C4, $04, $04, $05, $01, $C4, $C4   ; 
- D 0 - I - 0x01760C 0B:95FC: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
; 55 
- D 0 - I - 0x017614 0B:9604: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x01761C 0B:960C: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x017624 0B:9614: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x01762C 0B:961C: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
; 56 
- D 0 - I - 0x017634 0B:9624: 15        .byte $15, $16, $15, $15, $1A, $16, $15, $15   ; 
- D 0 - I - 0x01763C 0B:962C: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD   ; 
- D 0 - I - 0x017644 0B:9634: AE        .byte $AE, $AE, $AE, $AE, $AE, $AE, $AE, $AE   ; 
- D 0 - I - 0x01764C 0B:963C: AF        .byte $AF, $AF, $AF, $AF, $AF, $AF, $AF, $AF   ; 
; 57 
- D 0 - I - 0x017654 0B:9644: 16        .byte $16, $17, $18, $17, $16, $15, $43, $15   ; 
- D 0 - I - 0x01765C 0B:964C: 26        .byte $26, $FD, $27, $19, $1A, $19, $1A, $19   ; 
- D 0 - I - 0x017664 0B:9654: 21        .byte $21, $21, $22, $54, $6C, $4D, $6A, $6B   ; 
- D 0 - I - 0x01766C 0B:965C: 69        .byte $69, $69, $69, $69, $69, $69, $69, $69   ; 
; 58 
- D 0 - I - 0x017674 0B:9664: C3        .byte $C3, $C3, $C3, $C3, $48, $C3, $C3, $C3   ; 
- D 0 - I - 0x01767C 0B:966C: 4B        .byte $4B, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x017684 0B:9674: C3        .byte $C3, $C3, $4C, $C3, $C3, $49, $4A, $C3   ; 
- D 0 - I - 0x01768C 0B:967C: C3        .byte $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
; 59 
- D 0 - I - 0x017694 0B:9684: 15        .byte $15, $43, $15, $16, $17, $18, $17, $16   ; 
- D 0 - I - 0x01769C 0B:968C: 19        .byte $19, $1A, $19, $1A, $19, $1F, $FD, $1E   ; 
- D 0 - I - 0x0176A4 0B:9694: 4E        .byte $4E, $4F, $4D, $53, $54, $74, $21, $21   ; 
- D 0 - I - 0x0176AC 0B:969C: 69        .byte $69, $69, $69, $69, $69, $69, $69, $69   ; 
; 5A 
- D 0 - I - 0x0176B4 0B:96A4: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x0176BC 0B:96AC: 97        .byte $97, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x0176C4 0B:96B4: A4        .byte $A4, $98, $99, $9A, $97, $26, $26, $26   ; 
- D 0 - I - 0x0176CC 0B:96BC: 9C        .byte $9C, $9D, $9E, $9F, $A1, $A0, $9B, $25   ; 
; 5B 
- D 0 - I - 0x0176D4 0B:96C4: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x0176DC 0B:96CC: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x0176E4 0B:96D4: A2        .byte $A2, $A2, $A2, $A2, $A2, $A2, $A2, $A2   ; 
- D 0 - I - 0x0176EC 0B:96DC: A3        .byte $A3, $A3, $A3, $A3, $A3, $A3, $A3, $A3   ; 
; 5C 
- D 0 - I - 0x0176F4 0B:96E4: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x0176FC 0B:96EC: 26        .byte $26, $26, $26, $26, $26, $26, $26, $A6   ; 
- D 0 - I - 0x017704 0B:96F4: 26        .byte $26, $26, $26, $A6, $A7, $A8, $A9, $A5   ; 
- D 0 - I - 0x01770C 0B:96FC: 25        .byte $25, $AA, $AB, $AC, $AD, $AE, $AF, $B0   ; 
; 5D 
- D 0 - I - 0x017714 0B:9704: 35        .byte $35, $36, $37, $38, $39, $3A, $3B, $3C   ; 
- D 0 - I - 0x01771C 0B:970C: 3D        .byte $3D, $3E, $3F, $40, $41, $42, $43, $44   ; 
- D 0 - I - 0x017724 0B:9714: 45        .byte $45, $46, $47, $48, $49, $4A, $4B, $4C   ; 
- D 0 - I - 0x01772C 0B:971C: 4D        .byte $4D, $4D, $4E, $4F, $50, $51, $4F, $50   ; 
; 5E 
- D 0 - I - 0x017734 0B:9724: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x01773C 0B:972C: 52        .byte $52, $53, $54, $55, $56, $57, $58, $59   ; 
- D 0 - I - 0x017744 0B:9734: 5A        .byte $5A, $5B, $5C, $5D, $5E, $5F, $5D, $60   ; 
- D 0 - I - 0x01774C 0B:973C: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
; 5F 
- D 0 - I - 0x017754 0B:9744: 71        .byte $71, $75, $79, $7D, $81, $85, $89, $8D   ; 
- D 0 - I - 0x01775C 0B:974C: 72        .byte $72, $76, $7A, $7E, $82, $86, $8A, $8E   ; 
- D 0 - I - 0x017764 0B:9754: 73        .byte $73, $77, $7B, $7F, $83, $87, $8B, $8F   ; 
- D 0 - I - 0x01776C 0B:975C: 74        .byte $74, $78, $7C, $80, $84, $88, $8C, $90   ; 
; 60 
- D 0 - I - 0x017774 0B:9764: 14        .byte $14, $14, $91, $7D, $81, $94, $14, $14   ; 
- D 0 - I - 0x01777C 0B:976C: 14        .byte $14, $14, $92, $7E, $82, $95, $14, $14   ; 
- D 0 - I - 0x017784 0B:9774: 14        .byte $14, $14, $91, $7F, $83, $94, $14, $14   ; 
- D 0 - I - 0x01778C 0B:977C: 14        .byte $14, $14, $91, $80, $84, $96, $14, $14   ; 
; 61 
- - - - - - 0x017794 0B:9784: 33        .byte $33, $B1, $33, $33, $33, $B2, $33, $33   ; 
- - - - - - 0x01779C 0B:978C: B4        .byte $B4, $B5, $B4, $B5, $B4, $B5, $B4, $B5   ; 
- - - - - - 0x0177A4 0B:9794: 27        .byte $27, $27, $27, $27, $27, $27, $27, $27   ; 
- - - - - - 0x0177AC 0B:979C: 25        .byte $25, $25, $25, $25, $25, $25, $25, $25   ; 
; 62 
- - - - - - 0x0177B4 0B:97A4: 6D        .byte $6D, $6E, $6D, $6D, $6D, $6D, $6D, $6D   ; 
- - - - - - 0x0177BC 0B:97AC: 16        .byte $16, $17, $18, $17, $16, $15, $43, $15   ; 
- - - - - - 0x0177C4 0B:97B4: 26        .byte $26, $FD, $27, $19, $1A, $19, $1A, $19   ; 
- - - - - - 0x0177CC 0B:97BC: 6F        .byte $6F, $6F, $6F, $6F, $6F, $6F, $6F, $6F   ; 
; 63 
- - - - - - 0x0177D4 0B:97C4: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6E, $6D   ; 
- - - - - - 0x0177DC 0B:97CC: 15        .byte $15, $43, $15, $16, $17, $18, $17, $16   ; 
- - - - - - 0x0177E4 0B:97D4: 19        .byte $19, $1A, $19, $1A, $19, $1F, $FD, $1E   ; 
- - - - - - 0x0177EC 0B:97DC: 6F        .byte $6F, $6F, $6F, $6F, $6F, $6F, $6F, $6F   ; 
; 64 
- D 0 - I - 0x0177F4 0B:97E4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x0177FC 0B:97EC: 15        .byte $15, $99, $9A, $9B, $9C, $9D, $9E, $15   ; 
- D 0 - I - 0x017804 0B:97F4: 15        .byte $15, $9F, $A0, $A1, $A2, $A3, $A4, $15   ; 
- D 0 - I - 0x01780C 0B:97FC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
; 65 
- D 0 - I - 0x017814 0B:9804: 33        .byte $33, $33, $33, $33, $33, $33, $E5, $33   ; 
- D 0 - I - 0x01781C 0B:980C: 33        .byte $33, $E5, $33, $33, $33, $33, $33, $33   ; 
- D 0 - I - 0x017824 0B:9814: 33        .byte $33, $33, $33, $E5, $33, $33, $E5, $33   ; 
- D 0 - I - 0x01782C 0B:981C: 33        .byte $33, $33, $33, $33, $33, $33, $33, $33   ; 
; 66 
- D 0 - I - 0x017834 0B:9824: E2        .byte $E2, $E5, $33, $33, $33, $33, $33, $33   ; 
- D 0 - I - 0x01783C 0B:982C: E3        .byte $E3, $E2, $33, $33, $33, $33, $33, $33   ; 
- D 0 - I - 0x017844 0B:9834: E7        .byte $E7, $E4, $E2, $33, $33, $E5, $33, $33   ; 
- D 0 - I - 0x01784C 0B:983C: 25        .byte $25, $E8, $E9, $E1, $BD, $BD, $BD, $BD   ; 
; 67 
- D 0 - I - 0x017854 0B:9844: 33        .byte $33, $33, $33, $B9, $33, $33, $33, $33   ; 
- D 0 - I - 0x01785C 0B:984C: 33        .byte $33, $33, $33, $33, $33, $33, $B9, $33   ; 
- D 0 - I - 0x017864 0B:9854: 33        .byte $33, $BA, $33, $33, $33, $33, $33, $33   ; 
- D 0 - I - 0x01786C 0B:985C: 33        .byte $33, $33, $33, $33, $33, $33, $33, $33   ; 
; 68 
- D 0 - I - 0x017874 0B:9864: 33        .byte $33, $33, $33, $33, $33, $33, $33, $BB   ; 
- D 0 - I - 0x01787C 0B:986C: 33        .byte $33, $33, $33, $33, $33, $BA, $BB, $BF   ; 
- D 0 - I - 0x017884 0B:9874: 33        .byte $33, $33, $B9, $33, $33, $BB, $BE, $B7   ; 
- D 0 - I - 0x01788C 0B:987C: BD        .byte $BD, $BD, $BD, $BD, $BC, $C0, $B8, $25   ; 
; 69 
- D 0 - I - 0x017894 0B:9884: 33        .byte $33, $33, $33, $33, $33, $BA, $33, $BB   ; 
- D 0 - I - 0x01789C 0B:988C: 33        .byte $33, $33, $33, $33, $33, $33, $BB, $29   ; 
- D 0 - I - 0x0178A4 0B:9894: 33        .byte $33, $B9, $33, $33, $33, $BB, $2A, $28   ; 
- D 0 - I - 0x0178AC 0B:989C: BD        .byte $BD, $BD, $BD, $BD, $BC, $C0, $2C, $25   ; 
; 6A 
- D 0 - I - 0x0178B4 0B:98A4: ED        .byte $ED, $ED, $98, $ED, $FB, $B8, $B8, $B8   ; 
- D 0 - I - 0x0178BC 0B:98AC: F5        .byte $F5, $F5, $F5, $F5, $FC, $EE, $EE, $EE   ; 
- D 0 - I - 0x0178C4 0B:98B4: F0        .byte $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0   ; 
- D 0 - I - 0x0178CC 0B:98BC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 6B 
- D 0 - I - 0x0178D4 0B:98C4: 51        .byte $51, $51, $51, $51, $51, $51, $51, $51   ; 
- D 0 - I - 0x0178DC 0B:98CC: 7C        .byte $7C, $7D, $7E, $0C, $0D, $0C, $0D, $0C   ; 
- D 0 - I - 0x0178E4 0B:98D4: 2A        .byte $2A, $2A, $7A, $2D, $6D, $2D, $2D, $2D   ; 
- D 0 - I - 0x0178EC 0B:98DC: 6F        .byte $6F, $6F, $6F, $6F, $6F, $6F, $6F, $6F   ; 
; 6C 
- D 0 - I - 0x0178F4 0B:98E4: 15        .byte $15, $15, $15, $53, $54, $55, $56, $56   ; 
- D 0 - I - 0x0178FC 0B:98EC: 4E        .byte $4E, $50, $15, $15, $53, $54, $55, $56   ; 
- D 0 - I - 0x017904 0B:98F4: 4D        .byte $4D, $4E, $15, $15, $15, $53, $54, $55   ; 
- D 0 - I - 0x01790C 0B:98FC: 3E        .byte $3E, $4F, $3E, $3E, $3E, $3E, $51, $52   ; 
; 6D 
- D 0 - I - 0x017914 0B:9904: 60        .byte $60, $60, $5D, $5E, $5F, $15, $15, $15   ; 
- D 0 - I - 0x01791C 0B:990C: 60        .byte $60, $5D, $5E, $5F, $15, $15, $57, $59   ; 
- D 0 - I - 0x017924 0B:9914: 5D        .byte $5D, $5E, $5F, $15, $15, $15, $59, $5A   ; 
- D 0 - I - 0x01792C 0B:991C: 5B        .byte $5B, $5C, $3E, $3E, $3E, $3E, $58, $3E   ; 
; 6E 
- D 0 - I - 0x017934 0B:9924: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x01793C 0B:992C: B7        .byte $B7, $B7, $F6, $F6, $F6, $F6, $B7, $B7   ; 
- D 0 - I - 0x017944 0B:9934: B7        .byte $B7, $B7, $C3, $C3, $C3, $C3, $B7, $B7   ; 
- D 0 - I - 0x01794C 0B:993C: F3        .byte $F3, $F3, $F3, $F3, $F3, $F3, $F3, $F3   ; 
; 6F 
- D 0 - I - 0x017954 0B:9944: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x01795C 0B:994C: 26        .byte $26, $26, $F0, $F1, $F0, $F4, $26, $26   ; 
- D 0 - I - 0x017964 0B:9954: 26        .byte $26, $26, $93, $F3, $F2, $F5, $26, $26   ; 
- D 0 - I - 0x01796C 0B:995C: 25        .byte $25, $25, $25, $25, $25, $25, $25, $25   ; 
; 70 
- D 0 - I - 0x017974 0B:9964: 26        .byte $26, $00, $F0, $01, $F0, $02, $03, $26   ; 
- D 0 - I - 0x01797C 0B:996C: 26        .byte $26, $04, $05, $06, $07, $08, $09, $26   ; 
- D 0 - I - 0x017984 0B:9974: 26        .byte $26, $0A, $0B, $0C, $0D, $0E, $0F, $26   ; 
- D 0 - I - 0x01798C 0B:997C: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
; 71 
- D 0 - I - 0x017994 0B:9984: 26        .byte $26, $00, $10, $11, $F0, $02, $03, $26   ; 
- D 0 - I - 0x01799C 0B:998C: 26        .byte $26, $12, $13, $19, $1A, $08, $09, $26   ; 
- D 0 - I - 0x0179A4 0B:9994: 26        .byte $26, $1B, $1C, $1D, $1E, $1F, $0F, $26   ; 
- D 0 - I - 0x0179AC 0B:999C: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
; 72 
- D 0 - I - 0x0179B4 0B:99A4: 26        .byte $26, $20, $F0, $F0, $F0, $21, $F4, $26   ; 
- D 0 - I - 0x0179BC 0B:99AC: 26        .byte $26, $22, $23, $93, $24, $F6, $F7, $26   ; 
- D 0 - I - 0x0179C4 0B:99B4: 26        .byte $26, $F8, $F9, $FA, $FB, $FC, $FD, $26   ; 
- D 0 - I - 0x0179CC 0B:99BC: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
; 73 
- D 0 - I - 0x0179D4 0B:99C4: 15        .byte $15, $16, $15, $16, $16, $15, $16, $15   ; 
- D 0 - I - 0x0179DC 0B:99CC: 19        .byte $19, $1A, $19, $1A, $1A, $19, $1A, $19   ; 
- D 0 - I - 0x0179E4 0B:99D4: 14        .byte $14, $14, $14, $14, $14, $14, $14, $14   ; 
- D 0 - I - 0x0179EC 0B:99DC: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 74 
- D 0 - I - 0x0179F4 0B:99E4: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x0179FC 0B:99EC: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x017A04 0B:99F4: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
- D 0 - I - 0x017A0C 0B:99FC: B7        .byte $B7, $B7, $B7, $B7, $B7, $B7, $B7, $B7   ; 
; 75 
- D 0 - I - 0x017A14 0B:9A04: 15        .byte $15, $16, $15, $16, $15, $16, $15, $16   ; 
- D 0 - I - 0x017A1C 0B:9A0C: 17        .byte $17, $18, $17, $18, $17, $18, $17, $18   ; 
- D 0 - I - 0x017A24 0B:9A14: 26        .byte $26, $26, $26, $26, $26, $26, $26, $26   ; 
- D 0 - I - 0x017A2C 0B:9A1C: 25        .byte $25, $25, $25, $25, $25, $25, $25, $25   ; 
; 76 
- D 0 - I - 0x017A34 0B:9A24: 15        .byte $15, $1A, $18, $15, $15, $17, $15, $15   ; 
- D 0 - I - 0x017A3C 0B:9A2C: 15        .byte $15, $15, $15, $15, $15, $15, $18, $40   ; 
- D 0 - I - 0x017A44 0B:9A34: 1A        .byte $1A, $15, $15, $16, $15, $40, $41, $42   ; 
- D 0 - I - 0x017A4C 0B:9A3C: 3E        .byte $3E, $3E, $3E, $3E, $3F, $45, $44, $44   ; 
; 77 
- D 0 - I - 0x017A54 0B:9A44: 15        .byte $15, $16, $15, $15, $15, $15, $17, $15   ; 
- D 0 - I - 0x017A5C 0B:9A4C: 4A        .byte $4A, $15, $15, $15, $15, $18, $15, $15   ; 
- D 0 - I - 0x017A64 0B:9A54: 48        .byte $48, $49, $4A, $16, $15, $15, $1A, $18   ; 
- D 0 - I - 0x017A6C 0B:9A5C: 4B        .byte $4B, $4B, $46, $47, $3E, $3E, $3E, $3E   ; 
; 78 
- - - - - - 0x017A74 0B:9A64: 36        .byte $36, $36, $36, $8E, $B2, $36, $36, $36   ; 
- - - - - - 0x017A7C 0B:9A6C: 55        .byte $55, $55, $55, $55, $8F, $55, $55, $55   ; 
- - - - - - 0x017A84 0B:9A74: 56        .byte $56, $56, $56, $56, $56, $45, $46, $56   ; 
- - - - - - 0x017A8C 0B:9A7C: 44        .byte $44, $44, $44, $44, $44, $44, $47, $44   ; 
; 79 
- - - - - - 0x017A94 0B:9A84: 36        .byte $36, $36, $36, $A0, $9F, $36, $36, $36   ; 
- - - - - - 0x017A9C 0B:9A8C: 55        .byte $55, $55, $55, $A3, $55, $55, $55, $55   ; 
- - - - - - 0x017AA4 0B:9A94: 56        .byte $56, $71, $72, $56, $56, $56, $56, $56   ; 
- - - - - - 0x017AAC 0B:9A9C: 44        .byte $44, $73, $44, $44, $44, $44, $44, $44   ; 
; 7A 
- D 0 - I - 0x017AB4 0B:9AA4: 00        .byte $00, $08, $00, $00, $06, $07, $00, $0A   ; 
- D 0 - I - 0x017ABC 0B:9AAC: 0C        .byte $0C, $0D, $F7, $0D, $0C, $0D, $0C, $0D   ; 
- D 0 - I - 0x017AC4 0B:9AB4: 14        .byte $14, $14, $F9, $FA, $FA, $FA, $FA, $FA   ; 
- D 0 - I - 0x017ACC 0B:9ABC: 13        .byte $13, $13, $F8, $13, $13, $13, $13, $13   ; 
; 7B 
- D 0 - I - 0x017AD4 0B:9AC4: 10        .byte $10, $1B, $10, $29, $10, $10, $10, $10   ; 
- D 0 - I - 0x017ADC 0B:9ACC: 14        .byte $14, $13, $14, $13, $14, $96, $14, $13   ; 
- D 0 - I - 0x017AE4 0B:9AD4: 98        .byte $98, $98, $98, $98, $98, $95, $C4, $C4   ; 
- D 0 - I - 0x017AEC 0B:9ADC: 1C        .byte $1C, $1C, $1C, $1C, $1C, $97, $1C, $1C   ; 
; 7C 
- D 0 - I - 0x017AF4 0B:9AE4: 86        .byte $86, $85, $86, $85, $86, $85, $86, $85   ; 
- D 0 - I - 0x017AFC 0B:9AEC: 56        .byte $56, $88, $89, $56, $56, $45, $46, $56   ; 
- D 0 - I - 0x017B04 0B:9AF4: 36        .byte $36, $36, $8E, $B2, $36, $36, $36, $A8   ; 
- D 0 - I - 0x017B0C 0B:9AFC: 44        .byte $44, $44, $44, $47, $44, $44, $44, $A9   ; 
; 7D 
- D 0 - I - 0x017B14 0B:9B04: 55        .byte $55, $55, $90, $91, $55, $55, $8F, $55   ; 
- D 0 - I - 0x017B1C 0B:9B0C: 88        .byte $88, $89, $56, $56, $92, $87, $56, $56   ; 
- D 0 - I - 0x017B24 0B:9B14: 97        .byte $97, $97, $97, $97, $97, $97, $97, $97   ; 
- D 0 - I - 0x017B2C 0B:9B1C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 7E 
- D 0 - I - 0x017B34 0B:9B24: 85        .byte $85, $99, $85, $99, $85, $99, $85, $99   ; 
- D 0 - I - 0x017B3C 0B:9B2C: 56        .byte $56, $9A, $9B, $56, $56, $56, $9C, $A1   ; 
- D 0 - I - 0x017B44 0B:9B34: A0        .byte $A0, $9F, $36, $36, $AA, $36, $36, $36   ; 
- D 0 - I - 0x017B4C 0B:9B3C: 73        .byte $73, $44, $44, $44, $AB, $44, $44, $44   ; 
; 7F 
- D 0 - I - 0x017B54 0B:9B44: B8        .byte $B8, $B8, $B8, $BF, $C0, $C1, $ED, $ED   ; 
- D 0 - I - 0x017B5C 0B:9B4C: EE        .byte $EE, $EE, $EE, $EF, $F5, $F5, $F5, $F5   ; 
- D 0 - I - 0x017B64 0B:9B54: F0        .byte $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0   ; 
- D 0 - I - 0x017B6C 0B:9B5C: 13        .byte $13, $13, $13, $13, $13, $13, $13, $13   ; 
; 80 
- D 0 - I - 0x017B74 0B:9B64: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x017B7C 0B:9B6C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x017B84 0B:9B74: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x017B8C 0B:9B7C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
; 81 
- D 0 - I - 0x017B94 0B:9B84: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x017B9C 0B:9B8C: C9        .byte $C9, $CA, $D2, $C4, $C4, $C4, $C4, $D2   ; 
- D 0 - I - 0x017BA4 0B:9B94: CB        .byte $CB, $CC, $C2, $C4, $C4, $C4, $C4, $CD   ; 
- D 0 - I - 0x017BAC 0B:9B9C: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
; 82 
- D 0 - I - 0x017BB4 0B:9BA4: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
- D 0 - I - 0x017BBC 0B:9BAC: C9        .byte $C9, $FD, $D2, $C4, $C4, $C4, $C4, $D2   ; 
- D 0 - I - 0x017BC4 0B:9BB4: FC        .byte $FC, $CC, $C2, $C4, $C4, $C4, $C4, $FB   ; 
- D 0 - I - 0x017BCC 0B:9BBC: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4   ; 
; 83 
- D 0 - I - 0x017BD4 0B:9BC4: 51        .byte $51, $51, $51, $51, $51, $51, $51, $51   ; 
- D 0 - I - 0x017BDC 0B:9BCC: 0D        .byte $0D, $0C, $0D, $0C, $0D, $7B, $7C, $7D   ; 
- D 0 - I - 0x017BE4 0B:9BD4: 2D        .byte $2D, $2D, $2D, $6E, $2D, $79, $2A, $2A   ; 
- D 0 - I - 0x017BEC 0B:9BDC: 6F        .byte $6F, $6F, $6F, $6F, $6F, $6F, $6F, $6F   ; 



tbl_9BE4_атрибуты_блоков_32x32:
; 0x017BF4
;         000  010  020  030  040  050  060  070  080  090  0A0  0B0  0C0  0D0  0E0  0F0
    .byte $AA, $EE, $FF, $FF, $BB, $AA, $AA, $AA, $AA, $EA, $AA, $BA, $FF, $FF, $FF, $FF   ; 00
    .byte $FF, $FF, $00, $00, $00, $FA, $FA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 01
    .byte $00, $00, $00, $00, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $FF, $FF   ; 02
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 03
    .byte $FF, $FF, $FF, $FA, $FF, $FF, $FF, $FF, $AA, $AA, $AA, $AA, $AA, $00, $00, $00   ; 04
    .byte $00, $AA, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 05
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00   ; 06
    .byte $FA, $FF, $FF, $FF, $00, $FF, $FF, $FF, $FF, $00, $00, $FF, $FF, $FF, $FF, $FA   ; 07
    .byte $FA, $FF, $FF, $FF, $FF, $FA, $FA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 08
    .byte $FF, $FF, $FF, $FF, $FF, $0F, $0F, $0F, $FF, $FA, $FF, $FF, $FF, $FF, $FF, $FF   ; 09
    .byte $FF, $FF, $FF, $FF, $FF, $0F, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00   ; 0A
    .byte $FF, $FF, $FF, $FF, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 0B
    .byte $FF, $FF, $AA, $AA, $AA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 0C
    .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 0D
    .byte $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $0F, $0F   ; 0E
    .byte $00, $FF, $FF, $FF, $00, $0F, $AF, $FF, $00, $00, $00, $FF, $0F, $FF, $00, $00   ; 0F

;         100  110  120  130  140  150  160  170  180  190  1A0  1B0  1C0  1D0  1E0  1F0
    .byte $C0, $F0, $F0, $30, $CC, $BF, $77, $FF, $FF, $33, $CC, $FB, $FE, $FF, $FF, $33   ; 00
    .byte $A0, $E0, $CC, $7A, $00, $FA, $FA, $0F, $0F, $FE, $FF, $CC, $FF, $FF, $FF, $FF   ; 01
    .byte $C0, $F0, $CC, $DF, $EF, $00, $00, $55, $55, $43, $43, $AA, $55, $AA, $AA, $AA   ; 02
    .byte $FF, $FF, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 03
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 04
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 05
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 06
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 07
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 08
    .byte $AA, $AA, $AA, $FF, $AA, $AA, $AA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 09
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 0A
    .byte $FF, $AA, $AA, $AA, $FA, $FA, $00, $00, $00, $AA, $AA, $EA, $AA, $AA, $03, $03   ; 0B
    .byte $03, $AA, $EE, $FE, $EE, $00, $00, $AA, $AE, $FE, $30, $30, $00, $00, $00, $F0   ; 0C
    .byte $F0, $AA, $AB, $AB, $AB, $C0, $00, $AA, $AA, $00, $00, $CC, $AA, $CC, $FC, $AA   ; 0D
    .byte $AA, $AA, $BA, $0C, $0C, $AA, $AA, $00, $00, $0C, $FF, $FF, $FF, $FF, $AA, $AA   ; 0E
    .byte $F0, $F0, $FF, $FF, $30, $33, $DD, $33, $CC, $FF, $FF, $FA, $FF, $33, $00, $AA   ; 0F

;         200  210  220  230  240  250  260  270  280  290  2A0  2B0  2C0  2D0  2E0  2F0
    .byte $00, $FF, $FF, $FF, $FF, $FF, $AA, $AA, $AA, $AA, $AA, $FF, $FF, $AA, $AA, $AA   ; 00
    .byte $AA, $FF, $FF, $FF, $FF, $AA, $AA, $AA, $AA, $FF, $AA, $AA, $00, $AA, $AA, $FF   ; 01
    .byte $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $AA, $FF, $00, $00, $FF, $FF, $FF   ; 02
    .byte $00, $00, $AA, $AA, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AA, $FF   ; 03
    .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AA, $AA, $AA   ; 04
    .byte $FF, $AA, $AA, $AA, $AA, $AA, $AA, $FF, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 05
    .byte $AA, $2A, $0A, $0A, $8A, $22, $00, $00, $88, $2A, $0A, $0A, $8A, $00, $00, $88   ; 06
    .byte $22, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 07
    .byte $00, $00, $00, $00, $00, $EE, $FF, $FF, $EE, $FF, $FF, $BB, $BB, $FF, $FF, $BB   ; 08
    .byte $EE, $FF, $FF, $BB, $EE, $00, $FF, $00, $00, $A6, $55, $55, $55, $55, $AA, $AA   ; 09
    .byte $FF, $55, $FF, $55, $AA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AA, $FF, $FF   ; 0A
    .byte $EA, $FA, $FA, $BA, $FF, $FF, $FF, $FF, $00, $00, $55, $55, $55, $55, $DD, $AA   ; 0B
    .byte $FF, $FF, $55, $70, $00, $5D, $57, $55, $90, $D0, $60, $5D, $57, $55, $AA, $AA   ; 0C
    .byte $AA, $AA, $50, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 0D
    .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 0E
    .byte $AA, $AA, $AA, $AA, $AA, $FF, $AA, $AA, $90, $57, $55, $55, $5D, $60, $AA, $CC   ; 0F


; bzk garbage
- - - - - - 0x017EF4 0B:9EE4: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 8B: 0x%04X [%d]", ($A000 - *), ($A000 - *))



