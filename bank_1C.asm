.segment "BANK_1C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000
; 0x038010-0x03C00F



.export sub_0x038010_вычислить_числовой_стат_скилла
.export sub_0x038013_подготовить_параметры_для_команды_соперников
.export sub_0x038619
.export sub_0x038C16
.export sub_0x038D68
.export sub_0x0381AD
.export sub_0x038234
.export sub_0x0382DA
.export ofs_062_0x0381AD_01
.export ofs_062_0x038234_02
.export ofs_062_0x03829F_03
.export ofs_062_0x03847A_05
.export ofs_062_0x0384D1_07
.export ofs_062_0x03850F_06_рандом_стороны_кипера_в_пк
.export ofs_062_0x03853E_04
.export ofs_062_0x038619_00
.export ofs_062_0x038D68_04



sub_0x038010_вычислить_числовой_стат_скилла:
; X = индекс скилла (смотреть con_skill)
C D - - - - 0x03803D 1C:802D: 20 3A 80  JSR sub_803A_вычислить_числовой_стат_скилла
C - - - - - 0x038040 1C:8030: B9 4E 9E  LDA tbl_9E4E,Y
C - - - - - 0x038043 1C:8033: 85 32     STA ram_0032
C - - - - - 0x038045 1C:8035: A9 00     LDA #$00
C - - - - - 0x038047 1C:8037: 85 33     STA ram_0033
C - - - - - 0x038049 1C:8039: 60        RTS



sub_803A_вычислить_числовой_стат_скилла:
; X = индекс скилла (смотреть con_skill)
C - - - - - 0x03804A 1C:803A: 48        PHA
C - - - - - 0x03804B 1C:803B: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x03804E 1C:803E: A0 00     LDY #con_plr_id
C - - - - - 0x038050 1C:8040: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038052 1C:8042: D0 0C     BNE bra_8050_это_не_клон
; if con_p_clone
C - - - - - 0x038054 1C:8044: 68        PLA
C - - - - - 0x038055 1C:8045: 48        PHA
C - - - - - 0x038056 1C:8046: 38        SEC
C - - - - - 0x038057 1C:8047: E9 0B     SBC #$0B
C - - - - - 0x038059 1C:8049: A8        TAY
C - - - - - 0x03805A 1C:804A: B9 8E 81  LDA tbl_818E_индекс_для_параметров_команды,Y
C - - - - - 0x03805D 1C:804D: A8        TAY
C - - - - - 0x03805E 1C:804E: B1 38     LDA (ram_enemy_data),Y
bra_8050_это_не_клон:
C - - - - - 0x038060 1C:8050: C9 23     CMP #$23      ; начиная с 23 идут компьютерные игроки
C - - - - - 0x038062 1C:8052: 08        PHP
C - - - - - 0x038063 1C:8053: 90 0F     BCC bra_8064_это_один_из_игроков_нашей_команды
C - - - - - 0x038065 1C:8055: 48        PHA
; bzk bug? в новом логе залогировано для игрока 09 нашей команды
; что очень странно, так как в логе также доказано что индексы игроков 23+, то есть соперники
C - - - - - 0x038066 1C:8056: A0 01     LDY #con_бот_флаг_1_ХЗ
C - - - - - 0x038068 1C:8058: B1 34     LDA (ram_plr_data),Y    ; con_бот_флаг_1_ХЗ
C - - - - - 0x03806A 1C:805A: 10 05     BPL bra_8061
C - - - - - 0x03806C 1C:805C: 68        PLA
C - - - - - 0x03806D 1C:805D: C8        INY ; con_бот_флаг_2_ХЗ
C - - - - - 0x03806E 1C:805E: B1 34     LDA (ram_plr_data),Y    ; con_бот_флаг_2_ХЗ
; A = C8 C9 CA CB 
C - - - - - 0x038070 1C:8060: 48        PHA
bra_8061:
C - - - - - 0x038071 1C:8061: 68        PLA
C - - - - - 0x038072 1C:8062: E9 23     SBC #$23
bra_8064_это_один_из_игроков_нашей_команды:
; * 0C
C - - - - - 0x038074 1C:8064: A0 00     LDY #$00
C - - - - - 0x038076 1C:8066: 84 33     STY ram_0033
C - - - - - 0x038078 1C:8068: 0A        ASL
C - - - - - 0x038079 1C:8069: 26 33     ROL ram_0033
C - - - - - 0x03807B 1C:806B: 0A        ASL
C - - - - - 0x03807C 1C:806C: 26 33     ROL ram_0033
C - - - - - 0x03807E 1C:806E: 85 32     STA ram_0032
C - - - - - 0x038080 1C:8070: 28        PLP
; Y = 00
C - - - - - 0x038081 1C:8071: 90 10     BCC bra_8083_это_один_из_игроков_нашей_команды
C - - - - - 0x038083 1C:8073: A4 33     LDY ram_0033
C - - - - - 0x038085 1C:8075: 0A        ASL
C - - - - - 0x038086 1C:8076: 26 33     ROL ram_0033
C - - - - - 0x038088 1C:8078: 65 32     ADC ram_0032
C - - - - - 0x03808A 1C:807A: 85 32     STA ram_0032
C - - - - - 0x03808C 1C:807C: 98        TYA
C - - - - - 0x03808D 1C:807D: 65 33     ADC ram_0033
C - - - - - 0x03808F 1C:807F: 85 33     STA ram_0033
C - - - - - 0x038091 1C:8081: A0 02     LDY #$02
bra_8083_это_один_из_игроков_нашей_команды:
C - - - - - 0x038093 1C:8083: 18        CLC
C - - - - - 0x038094 1C:8084: A5 32     LDA ram_0032
C - - - - - 0x038096 1C:8086: 79 99 81  ADC tbl_8199,Y
C - - - - - 0x038099 1C:8089: 85 32     STA ram_0032
C - - - - - 0x03809B 1C:808B: A5 33     LDA ram_0033
C - - - - - 0x03809D 1C:808D: 79 9A 81  ADC tbl_8199 + $01,Y
C - - - - - 0x0380A0 1C:8090: 85 33     STA ram_0033
C - - - - - 0x0380A2 1C:8092: 68        PLA
C - - - - - 0x0380A3 1C:8093: E0 1F     CPX #$1F
C - - - - - 0x0380A5 1C:8095: 90 03     BCC bra_809A_00_1E
C - - - - - 0x0380A7 1C:8097: 4C 3F 81  JMP loc_813F_1F_FF
bra_809A_00_1E:
C - - - - - 0x0380AA 1C:809A: 48        PHA
C - - - - - 0x0380AB 1C:809B: 68        PLA
C - - - - - 0x0380AC 1C:809C: F0 0A     BEQ bra_80A8
C - - - - - 0x0380AE 1C:809E: C9 0B     CMP #$0B
C - - - - - 0x0380B0 1C:80A0: F0 06     BEQ bra_80A8
C - - - - - 0x0380B2 1C:80A2: C9 1E     CMP #$1E
C - - - - - 0x0380B4 1C:80A4: F0 02     BEQ bra_80A8
C - - - - - 0x0380B6 1C:80A6: C9 1F     CMP #$1F
bra_80A8:
C - - - - - 0x0380B8 1C:80A8: 08        PHP
C - - - - - 0x0380B9 1C:80A9: A0 00     LDY #$00
C - - - - - 0x0380BB 1C:80AB: B1 32     LDA (ram_0032),Y
C - - - - - 0x0380BD 1C:80AD: 84 33     STY ram_0033
C - - - - - 0x0380BF 1C:80AF: 28        PLP
C - - - - - 0x0380C0 1C:80B0: D0 1F     BNE bra_80D1
; * 08
C - - - - - 0x0380C2 1C:80B2: 0A        ASL
C - - - - - 0x0380C3 1C:80B3: 26 33     ROL ram_0033
C - - - - - 0x0380C5 1C:80B5: 0A        ASL
C - - - - - 0x0380C6 1C:80B6: 26 33     ROL ram_0033
C - - - - - 0x0380C8 1C:80B8: 0A        ASL
C - - - - - 0x0380C9 1C:80B9: 26 33     ROL ram_0033
C - - - - - 0x0380CB 1C:80BB: 69 86     ADC #< tbl_AE86
C - - - - - 0x0380CD 1C:80BD: 85 32     STA ram_0032
C - - - - - 0x0380CF 1C:80BF: A5 33     LDA ram_0033
C - - - - - 0x0380D1 1C:80C1: 69 AE     ADC #> tbl_AE86
C - - - - - 0x0380D3 1C:80C3: 85 33     STA ram_0033
C - - - - - 0x0380D5 1C:80C5: 8A        TXA
C - - - - - 0x0380D6 1C:80C6: F0 03     BEQ bra_80CB_00
C - - - - - 0x0380D8 1C:80C8: 38        SEC
C - - - - - 0x0380D9 1C:80C9: E9 17     SBC #$17
bra_80CB_00:
C - - - - - 0x0380DB 1C:80CB: A8        TAY
C - - - - - 0x0380DC 1C:80CC: B1 32     LDA (ram_0032),Y
C - - - - - 0x0380DE 1C:80CE: 4C F9 80  JMP loc_80F9
bra_80D1:
; * 18
C - - - - - 0x0380E1 1C:80D1: 0A        ASL
C - - - - - 0x0380E2 1C:80D2: 26 33     ROL ram_0033
C - - - - - 0x0380E4 1C:80D4: 0A        ASL
C - - - - - 0x0380E5 1C:80D5: 26 33     ROL ram_0033
C - - - - - 0x0380E7 1C:80D7: 0A        ASL
C - - - - - 0x0380E8 1C:80D8: 26 33     ROL ram_0033
C - - - - - 0x0380EA 1C:80DA: A4 33     LDY ram_0033
C - - - - - 0x0380EC 1C:80DC: 85 32     STA ram_0032
C - - - - - 0x0380EE 1C:80DE: 0A        ASL
C - - - - - 0x0380EF 1C:80DF: 26 33     ROL ram_0033
C - - - - - 0x0380F1 1C:80E1: 65 32     ADC ram_0032
C - - - - - 0x0380F3 1C:80E3: 85 32     STA ram_0032
C - - - - - 0x0380F5 1C:80E5: 98        TYA
C - - - - - 0x0380F6 1C:80E6: 65 33     ADC ram_0033
C - - - - - 0x0380F8 1C:80E8: 85 33     STA ram_0033
C - - - - - 0x0380FA 1C:80EA: 18        CLC
C - - - - - 0x0380FB 1C:80EB: A5 32     LDA ram_0032
C - - - - - 0x0380FD 1C:80ED: 69 CE     ADC #< tbl_9FCE
C - - - - - 0x0380FF 1C:80EF: 85 32     STA ram_0032
C - - - - - 0x038101 1C:80F1: A5 33     LDA ram_0033
C - - - - - 0x038103 1C:80F3: 69 9F     ADC #> tbl_9FCE
C - - - - - 0x038105 1C:80F5: 85 33     STA ram_0033
C - - - - - 0x038107 1C:80F7: 8A        TXA
C - - - - - 0x038108 1C:80F8: A8        TAY
loc_80F9:
C D - - - - 0x038109 1C:80F9: 8A        TXA
C - - - - - 0x03810A 1C:80FA: F0 17     BEQ bra_8113
C - - - - - 0x03810C 1C:80FC: B1 32     LDA (ram_0032),Y
C - - - - - 0x03810E 1C:80FE: 48        PHA
C - - - - - 0x03810F 1C:80FF: A0 03     LDY #con_plr_lvl
C - - - - - 0x038111 1C:8101: B1 34     LDA (ram_plr_data),Y    ; con_plr_lvl
C - - - - - 0x038113 1C:8103: 0A        ASL
C - - - - - 0x038114 1C:8104: 85 32     STA ram_0032
C - - - - - 0x038116 1C:8106: 68        PLA
C - - - - - 0x038117 1C:8107: 65 32     ADC ram_0032
C - - - - - 0x038119 1C:8109: A8        TAY
C - - - - - 0x03811A 1C:810A: C0 C0     CPY #$C0
C - - - - - 0x03811C 1C:810C: 90 02     BCC bra_8110_not_overflow
- - - - - - 0x03811E 1C:810E: A0 BF     LDY #$BF
bra_8110_not_overflow:
C - - - - - 0x038122 1C:8112: 60        RTS
bra_8113:
; чтение уровня игрока и вычисление его параметров
C - - - - - 0x038123 1C:8113: B1 32     LDA (ram_0032),Y
C - - - - - 0x038125 1C:8115: 48        PHA
C - - - - - 0x038126 1C:8116: A0 03     LDY #con_plr_lvl
C - - - - - 0x038128 1C:8118: B1 34     LDA (ram_plr_data),Y    ; con_plr_lvl
C - - - - - 0x03812A 1C:811A: 85 32     STA ram_0032
C - - - - - 0x03812C 1C:811C: 68        PLA
C - - - - - 0x03812D 1C:811D: 65 32     ADC ram_0032
C - - - - - 0x03812F 1C:811F: C9 5F     CMP #$5F
C - - - - - 0x038131 1C:8121: 90 02     BCC bra_8125_not_overflow
- - - - - - 0x038133 1C:8123: A9 5F     LDA #$5F
bra_8125_not_overflow:
C - - - - - 0x038135 1C:8125: A0 9F     LDY #> tbl_9F0E
C - - - - - 0x03813B 1C:812B: 84 33     STY ram_0033
C - - - - - 0x03813D 1C:812D: A0 0E     LDY #< tbl_9F0E
C - - - - - 0x03813F 1C:812F: 84 32     STY ram_0032
                                        ASL
C - - - - - 0x038141 1C:8131: A8        TAY
C - - - - - 0x038142 1C:8132: B1 32     LDA (ram_0032),Y
C - - - - - 0x038144 1C:8134: AA        TAX
C - - - - - 0x038145 1C:8135: C8        INY
C - - - - - 0x038146 1C:8136: B1 32     LDA (ram_0032),Y
C - - - - - 0x038148 1C:8138: 85 33     STA ram_0033
C - - - - - 0x03814A 1C:813A: 86 32     STX ram_0032
C - - - - - 0x03814C 1C:813C: 4C 8B 81  PLA
                                        PLA
                                        RTS



loc_813F_1F_FF:
C D - - - - 0x03814F 1C:813F: E0 25     CPX #$25
C - - - - - 0x038151 1C:8141: B0 3B     BCS bra_817E_25_FF
; 1F-24
C - - - - - 0x038153 1C:8143: A0 01     LDY #$01
C - - - - - 0x038155 1C:8145: B1 32     LDA (ram_0032),Y
C - - - - - 0x038157 1C:8147: 88        DEY ; 00
C - - - - - 0x038158 1C:8148: 84 33     STY ram_0033
; * 0C
C - - - - - 0x03815A 1C:814A: 0A        ASL
C - - - - - 0x03815B 1C:814B: 26 33     ROL ram_0033
C - - - - - 0x03815D 1C:814D: 0A        ASL
C - - - - - 0x03815E 1C:814E: 26 33     ROL ram_0033
C - - - - - 0x038160 1C:8150: 85 32     STA ram_0032
C - - - - - 0x038162 1C:8152: A4 33     LDY ram_0033
C - - - - - 0x038164 1C:8154: 0A        ASL
C - - - - - 0x038165 1C:8155: 26 33     ROL ram_0033
C - - - - - 0x038167 1C:8157: 65 32     ADC ram_0032
C - - - - - 0x038169 1C:8159: 85 32     STA ram_0032
C - - - - - 0x03816B 1C:815B: 98        TYA
C - - - - - 0x03816C 1C:815C: 65 33     ADC ram_0033
C - - - - - 0x03816E 1C:815E: A8        TAY
C - - - - - 0x03816F 1C:815F: A5 32     LDA ram_0032
C - - - - - 0x038171 1C:8161: 18        CLC
C - - - - - 0x038172 1C:8162: 69 AE     ADC #< tbl_AFAE
C - - - - - 0x038174 1C:8164: 85 32     STA ram_0032
C - - - - - 0x038176 1C:8166: 98        TYA
C - - - - - 0x038177 1C:8167: 69 AF     ADC #> tbl_AFAE
C - - - - - 0x038179 1C:8169: 85 33     STA ram_0033
C - - - - - 0x03817B 1C:816B: 8A        TXA
C - - - - - 0x03817C 1C:816C: 38        SEC
C - - - - - 0x03817D 1C:816D: E9 1F     SBC #$1F
C - - - - - 0x03817F 1C:816F: 0A        ASL
C - - - - - 0x038180 1C:8170: A8        TAY
C - - - - - 0x038181 1C:8171: B1 32     LDA (ram_0032),Y
C - - - - - 0x038183 1C:8173: AA        TAX
C - - - - - 0x038184 1C:8174: C8        INY
C - - - - - 0x038185 1C:8175: B1 32     LDA (ram_0032),Y
C - - - - - 0x038187 1C:8177: 85 33     STA ram_0033
C - - - - - 0x038189 1C:8179: 86 32     STX ram_0032
C - - - - - 0x03818B 1C:817B: 4C 8B 81  PLA
                                        PLA
                                        RTS
bra_817E_25_FF:
C - - - - - 0x03818E 1C:817E: 8A        TXA
C - - - - - 0x03818F 1C:817F: 38        SEC
C - - - - - 0x038190 1C:8180: E9 23     SBC #$23
C - - - - - 0x038192 1C:8182: A8        TAY
C - - - - - 0x038193 1C:8183: B1 32     LDA (ram_0032),Y
C - - - - - 0x038195 1C:8185: 85 32     STA ram_0032
C - - - - - 0x038197 1C:8187: A9 00     LDA #$00
C - - - - - 0x038199 1C:8189: 85 33     STA ram_0033
C D - - - - 0x03819B 1C:818B: 68        PLA
C - - - - - 0x03819C 1C:818C: 68        PLA
C - - - - - 0x03819D 1C:818D: 60        RTS



tbl_818E_индекс_для_параметров_команды:
    .byte $02    ; GK 1
    .byte $03    ; DF 2
    .byte $03    ; DF 3
    .byte $03    ; DF 4
    .byte $03    ; DF 5
    .byte $04    ; MF 6
    .byte $05    ; FW 7
    .byte $04    ; MF 8
    .byte $05    ; FW 9
    .byte $04    ; MF 10
    .byte $05    ; FW 11



tbl_8199:
- D - - - - 0x0381A9 1C:8199: D6 95     .word off_95D6_игроки_нашей_команды
- D - - - - 0x0381AB 1C:819B: 62 96     .word off_9662_игроки_команды_соперников



sub_0x0381AD:
ofs_062_0x0381AD_01:
C D - - - - 0x0381AD 1C:819D: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x0381B0 1C:81A0: 08        PHP
C - - - - - 0x0381B1 1C:81A1: 0A        ASL
C - - - - - 0x0381B2 1C:81A2: 6D 3B 04  ADC ram_действие_атаки
C - - - - - 0x0381B5 1C:81A5: 6D 4E 04  ADC ram_высота_мяча
C - - - - - 0x0381B8 1C:81A8: A8        TAY
C - - - - - 0x0381B9 1C:81A9: 28        PLP
C - - - - - 0x0381BA 1C:81AA: D0 0F     BNE bra_81BB_пропустить_высоту
C - - - - - 0x0381BC 1C:81AC: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x0381BF 1C:81AF: 29 7F     AND #$7F
C - - - - - 0x0381C1 1C:81B1: C9 03     CMP #$03
C - - - - - 0x0381C3 1C:81B3: 90 06     BCC bra_81BB_пропустить_высоту
C - - - - - 0x0381C5 1C:81B5: 98        TYA
C - - - - - 0x0381C6 1C:81B6: 38        SEC
C - - - - - 0x0381C7 1C:81B7: ED 4E 04  SBC ram_высота_мяча
C - - - - - 0x0381CA 1C:81BA: A8        TAY
bra_81BB_пропустить_высоту:
C - - - - - 0x0381CB 1C:81BB: BE 06 82  LDX tbl_8206,Y
C - - - - - 0x0381D2 1C:81C2: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0381D5 1C:81C5: 20 3A 80  JSR sub_803A_вычислить_числовой_стат_скилла
C - - - - - 0x0381D8 1C:81C8: 98        TYA
C - - - - - 0x0381D9 1C:81C9: 48        PHA
C - - - - - 0x0381DA 1C:81CA: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x0381DD 1C:81CD: 0A        ASL
C - - - - - 0x0381DE 1C:81CE: AA        TAX
C - - - - - 0x0381DF 1C:81CF: BD 60 94  LDA tbl_9460_параметры_действий_атакующего,X
C - - - - - 0x0381E2 1C:81D2: 85 32     STA ram_0032
C - - - - - 0x0381E4 1C:81D4: BD 61 94  LDA tbl_9460_параметры_действий_атакующего + $01,X
C - - - - - 0x0381E7 1C:81D7: 85 33     STA ram_0033
C - - - - - 0x0381E9 1C:81D9: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x0381EC 1C:81DC: 0A        ASL
C - - - - - 0x0381ED 1C:81DD: 0A        ASL
C - - - - - 0x0381EE 1C:81DE: A8        TAY
C - - - - - 0x0381EF 1C:81DF: B1 32     LDA (ram_0032),Y
C - - - - - 0x0381F1 1C:81E1: 8D 44 04  STA ram_спешал_атакующего
C - - - - - 0x0381F4 1C:81E4: C8        INY
C - - - - - 0x0381F5 1C:81E5: B1 32     LDA (ram_0032),Y
C - - - - - 0x0381F7 1C:81E7: AA        TAX
C - - - - - 0x0381F8 1C:81E8: C8        INY
C - - - - - 0x0381F9 1C:81E9: B1 32     LDA (ram_0032),Y
C - - - - - 0x0381FB 1C:81EB: 8D 3F 04  STA ram_затрата_энергии_lo
C - - - - - 0x0381FE 1C:81EE: C8        INY
C - - - - - 0x0381FF 1C:81EF: B1 32     LDA (ram_0032),Y
C - - - - - 0x038201 1C:81F1: 29 03     AND #$03
C - - - - - 0x038203 1C:81F3: 8D 40 04  STA ram_затрата_энергии_hi
C - - - - - 0x038206 1C:81F6: B1 32     LDA (ram_0032),Y
C - - - - - 0x038208 1C:81F8: 29 F8     AND #$F8
C - - - - - 0x03820A 1C:81FA: 4A        LSR
C - - - - - 0x03820B 1C:81FB: 4A        LSR
C - - - - - 0x03820C 1C:81FC: 4A        LSR
C - - - - - 0x03820D 1C:81FD: 8D 43 04  STA ram_0443
C - - - - - 0x038210 1C:8200: 4C 78 82  JMP loc_8278



tbl_8206:
; 00 shoot
    .byte con_skill_prl___shoot ; 00 мяч на земле
    .byte con_skill_prl_shoot_low ; 01 низкий мяч
    .byte con_skill_prl_shoot_high ; 02 высокий мяч
; 01 pass
    .byte con_skill_prl___pass ; 00 мяч на земле
    .byte con_skill_plr_pass_low ; 01 низкий мяч
    .byte con_skill_10 ; 02 высокий мяч
; 02 dribble
    .byte con_skill_prl_dribble ; 00 мяч на земле
    .byte $FF ; 01 низкий мяч
    .byte $FF ; 02 высокий мяч
; 03 1-2 pass
    .byte con_skill_prl___pass ; 00 мяч на земле
    .byte $FF ; 01 низкий мяч
    .byte $FF ; 02 высокий мяч
; 04 trap
    .byte $FF ; 00 мяч на земле
    .byte con_skill_prl_trap_low ; 01 низкий мяч
    .byte con_skill_prl_trap_high ; 02 высокий мяч
; 05 through
    .byte $FF ; 00 мяч на земле
    .byte con_skill_prl_through_low ; 01 низкий мяч
    .byte con_skill_prl_through_high ; 02 высокий мяч
; 06 clear
    .byte $FF ; 00 мяч на земле
    .byte con_skill_0B ; 01 низкий мяч
    .byte con_skill_13 ; 02 высокий мяч
; 07 shoot left (pk)
    .byte con_skill_prl___shoot ; 00 мяч на земле
    .byte $FF ; 01 низкий мяч
    .byte $FF ; 02 высокий мяч
; 08 shoot center (pk)
    .byte con_skill_prl___shoot ; 00 мяч на земле
    .byte $FF ; 01 низкий мяч
    .byte $FF ; 02 высокий мяч
; 09 shoot right (pk)
    .byte con_skill_prl___shoot ; 00 мяч на земле
    .byte $FF ; 01 низкий мяч
    .byte $FF ; 02 высокий мяч



sub_0x038234:
ofs_062_0x038234_02:
C D - - - - 0x038234 1C:8224: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x038237 1C:8227: 0A        ASL
C - - - - - 0x038238 1C:8228: 6D 3D 04  ADC ram_действие_защиты
C - - - - - 0x03823B 1C:822B: 6D 4E 04  ADC ram_высота_мяча
C - - - - - 0x03823E 1C:822E: A8        TAY
C - - - - - 0x03823F 1C:822F: BE 4C 82  LDX tbl_824C,Y
C - - - - - 0x038242 1C:8232: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x038245 1C:8235: 20 3A 80  JSR sub_803A_вычислить_числовой_стат_скилла
C - - - - - 0x038248 1C:8238: 98        TYA
C - - - - - 0x038249 1C:8239: 48        PHA
C - - - - - 0x03824A 1C:823A: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x03824D 1C:823D: 0A        ASL
C - - - - - 0x03824E 1C:823E: AA        TAX
C - - - - - 0x03824F 1C:823F: BD 54 95  LDA tbl_9554_параметры_действий_защитника,X
C - - - - - 0x038252 1C:8242: 85 32     STA ram_0032
C - - - - - 0x038254 1C:8244: BD 55 95  LDA tbl_9554_параметры_действий_защитника + $01,X
C - - - - - 0x038257 1C:8247: 85 33     STA ram_0033
C - - - - - 0x038259 1C:8249: 4C 5B 82  JMP loc_825B



tbl_824C:
; 00 block
- D - - - - 0x03825C 1C:824C: 04        .byte con_skill_prl_block ; 00 мяч на земле
- D - - - - 0x03825D 1C:824D: 04        .byte con_skill_prl_block ; 01 низкий мяч
- D - - - - 0x03825E 1C:824E: 04        .byte con_skill_prl_block ; 02 высокий мяч
; 01 tackle
- D - - - - 0x03825F 1C:824F: 05        .byte con_skill_prl_tackle ; 00 мяч на земле
- D - - - - 0x038260 1C:8250: 05        .byte con_skill_prl_tackle ; 01 низкий мяч
- D - - - - 0x038261 1C:8251: 05        .byte con_skill_prl_tackle ; 02 высокий мяч
; 02 pass cut
- D - - - - 0x038262 1C:8252: 06        .byte con_skill_06 ; 00 мяч на земле
- D - - - - 0x038263 1C:8253: 0E        .byte con_skill_0E ; 01 низкий мяч
- D - - - - 0x038264 1C:8254: 16        .byte con_skill_16 ; 02 высокий мяч
; 03 clearance
- - - - - - 0x038265 1C:8255: FF        .byte $FF ; 00 мяч на земле
- D - - - - 0x038266 1C:8256: 0C        .byte con_skill_prl_clearance_low ; 01 низкий мяч
- D - - - - 0x038267 1C:8257: 14        .byte con_skill_prl_clearance_high ; 02 высокий мяч
; 04 interfere
- - - - - - 0x038268 1C:8258: FF        .byte $FF ; 00 мяч на земле
- D - - - - 0x038269 1C:8259: 0D        .byte con_skill_prl_interfere_low ; 01 низкий мяч
- D - - - - 0x03826A 1C:825A: 15        .byte con_skill_prl_interfere_high ; 02 высокий мяч



loc_825B:
C D - - - - 0x03826B 1C:825B: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - - 0x03826E 1C:825E: 0A        ASL
C - - - - - 0x03826F 1C:825F: 0A        ASL
C - - - - - 0x038270 1C:8260: A8        TAY
C - - - - - 0x038271 1C:8261: B1 32     LDA (ram_0032),Y
C - - - - - 0x038273 1C:8263: 8D 45 04  STA ram_спешал_защитника
C - - - - - 0x038276 1C:8266: C8        INY
C - - - - - 0x038277 1C:8267: B1 32     LDA (ram_0032),Y
C - - - - - 0x038279 1C:8269: AA        TAX
C - - - - - 0x03827A 1C:826A: C8        INY
C - - - - - 0x03827B 1C:826B: B1 32     LDA (ram_0032),Y
C - - - - - 0x03827D 1C:826D: 8D 3F 04  STA ram_затрата_энергии_lo
C - - - - - 0x038280 1C:8270: C8        INY
C - - - - - 0x038281 1C:8271: B1 32     LDA (ram_0032),Y
C - - - - - 0x038283 1C:8273: 29 03     AND #$03
C - - - - - 0x038285 1C:8275: 8D 40 04  STA ram_затрата_энергии_hi
loc_8278:
C D - - - - 0x038288 1C:8278: 86 32     STX ram_0032
C - - - - - 0x03828A 1C:827A: 68        PLA
C - - - - - 0x03828B 1C:827B: 18        CLC
C - - - - - 0x03828C 1C:827C: 65 32     ADC ram_0032
C - - - - - 0x03828E 1C:827E: C9 C0     CMP #$C0
C - - - - - 0x038290 1C:8280: 90 02     BCC bra_8284_not_overflow
- - - - - - 0x038292 1C:8282: A9 BF     LDA #$BF
bra_8284_not_overflow:
C - - - - - 0x038294 1C:8284: AA        TAX
C - - - - - 0x038295 1C:8285: BD 4E 9E  LDA tbl_9E4E,X
C - - - - - 0x038298 1C:8288: 85 32     STA ram_0032
C - - - - - 0x03829A 1C:828A: A9 00     LDA #$00
C - - - - - 0x03829C 1C:828C: 85 33     STA ram_0033
C - - - - - 0x03829E 1C:828E: 60        RTS



ofs_062_0x03829F_03:
C D - - - - 0x03829F 1C:828F: AC 3D 04  LDY ram_действие_защиты
C - - - - - 0x0382A2 1C:8292: C0 03     CPY #$03
C - - - - - 0x0382A4 1C:8294: D0 06     BNE bra_829C
; bzk optimize, а что нельзя было просто прибавить 02, вместо DEY + 03?
C - - - - - 0x0382A6 1C:8296: 88        DEY
C - - - - - 0x0382A7 1C:8297: 98        TYA
C - - - - - 0x0382A8 1C:8298: 18        CLC
C - - - - - 0x0382A9 1C:8299: 69 03     ADC #$03
C - - - - - 0x0382AB 1C:829B: A8        TAY
bra_829C:
C - - - - - 0x0382AC 1C:829C: BE C0 82  LDX tbl_82C0_gk_skill,Y
C - - - - - 0x0382AF 1C:829F: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x0382B2 1C:82A2: 49 0B     EOR #$0B
C - - - - - 0x0382B4 1C:82A4: 20 3A 80  JSR sub_803A_вычислить_числовой_стат_скилла
C - - - - - 0x0382B7 1C:82A7: 98        TYA
C - - - - - 0x0382B8 1C:82A8: 48        PHA
C - - - - - 0x0382B9 1C:82A9: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x0382BC 1C:82AC: 0A        ASL
C - - - - - 0x0382BD 1C:82AD: AA        TAX
C - - - - - 0x0382BE 1C:82AE: BD 9E 95  LDA tbl_959E,X
C - - - - - 0x0382C1 1C:82B1: 85 32     STA ram_0032
C - - - - - 0x0382C3 1C:82B3: BD 9F 95  LDA tbl_959E + $01,X
C - - - - - 0x0382C6 1C:82B6: 85 33     STA ram_0033
C - - - - - 0x0382C8 1C:82B8: A9 00     LDA #$00
C - - - - - 0x0382CA 1C:82BA: 8D 45 04  STA ram_спешал_защитника
C - - - - - 0x0382CD 1C:82BD: 4C 5B 82  JMP loc_825B



tbl_82C0_gk_skill:
- D - - - - 0x0382D0 1C:82C0: 19        .byte con_skill_gk_catch   ; 00
- D - - - - 0x0382D1 1C:82C1: 1A        .byte con_skill_gk_punch   ; 01
- D - - - - 0x0382D2 1C:82C2: 19        .byte con_skill_gk_catch   ; 02
- - - - - - 0x0382D3 1C:82C3: 1D        .byte con_skill_gk_dive_low   ; 03
- - - - - - 0x0382D4 1C:82C4: 1E        .byte con_skill_gk_dive_high   ; 04
- D - - - - 0x0382D5 1C:82C5: 1C        .byte con_skill_gk_stop_dribble   ; 05
- D - - - - 0x0382D6 1C:82C6: 1B        .byte con_skill_gk_stop_shot   ; 06
- D - - - - 0x0382D7 1C:82C7: 1A        .byte con_skill_gk_punch   ; 07
- D - - - - 0x0382D8 1C:82C8: 1A        .byte con_skill_gk_punch   ; 08
- D - - - - 0x0382D9 1C:82C9: 1A        .byte con_skill_gk_punch   ; 09



sub_0x0382DA:
; срабатывает один раз перед тем когда игрок начинает передвигаться по полю
C D - - - - 0x0382DA 1C:82CA: 20 2D C5  JSR sub_0x03CC56_очистить_нижнюю_половину_экрана
C - - - - - 0x0382E3 1C:82D3: A9 4A     LDA #< tbl_834A_тайлы_миникарты
C - - - - - 0x0382E5 1C:82D5: 85 61     STA ram_0061
C - - - - - 0x0382E7 1C:82D7: A9 83     LDA #> tbl_834A_тайлы_миникарты
C - - - - - 0x0382E9 1C:82D9: 85 62     STA ram_0062
C - - - - - 0x0382EB 1C:82DB: A9 00     LDA #$00
C - - - - - 0x0382DF 1C:82CF: 85 11     STA ram_0011
C - - - - - 0x0382E1 1C:82D1: 85 12     STA ram_0012
bra_82DD_loop:
C - - - - - 0x0382ED 1C:82DD: 48        PHA
bra_82DE_ожидание_освобождения_буфера:
C - - - - - 0x0382EE 1C:82DE: A9 01     LDA #$01
C - - - - - 0x0382F0 1C:82E0: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0382F3 1C:82E3: AD 15 05  LDA ram_0515
C - - - - - 0x0382F6 1C:82E6: D0 F6     BNE bra_82DE_ожидание_освобождения_буфера
C - - - - - 0x0382F8 1C:82E8: A9 01     LDA #$01
C - - - - - 0x0382FA 1C:82EA: 8D 15 05  STA ram_0515
C - - - - - 0x0382FD 1C:82ED: 68        PLA
C - - - - - 0x0382FE 1C:82EE: 48        PHA
C - - - - - 0x0382FF 1C:82EF: A2 00     LDX #$00
C - - - - - 0x038301 1C:82F1: 20 0A 83  JSR sub_830A_отрисовка_миникарты_перед_бегом
C - - - - - 0x038304 1C:82F4: 68        PLA
C - - - - - 0x038305 1C:82F5: 18        CLC
C - - - - - 0x038306 1C:82F6: 69 01     ADC #$01
C - - - - - 0x038308 1C:82F8: 48        PHA
C - - - - - 0x038309 1C:82F9: 20 0A 83  JSR sub_830A_отрисовка_миникарты_перед_бегом
C - - - - - 0x03830C 1C:82FC: A9 80     LDA #$80
C - - - - - 0x03830E 1C:82FE: 8D 15 05  STA ram_0515
C - - - - - 0x038311 1C:8301: 68        PLA
C - - - - - 0x038312 1C:8302: 18        CLC
C - - - - - 0x038313 1C:8303: 69 01     ADC #$01
C - - - - - 0x038315 1C:8305: C9 0C     CMP #$0C
C - - - - - 0x038317 1C:8307: D0 D4     BNE bra_82DD_loop
C - - - - - 0x038319 1C:8309: 60        RTS



sub_830A_отрисовка_миникарты_перед_бегом:
C - - - - - 0x03831A 1C:830A: 48        PHA
C - - - - - 0x03831B 1C:830B: A9 18     LDA #$18
C - - - - - 0x03831D 1C:830D: 9D A5 04  STA ram_04A5,X
C - - - - - 0x038320 1C:8310: A9 40     LDA #$40
C - - - - - 0x038322 1C:8312: 9D A6 04  STA ram_04A6,X
C - - - - - 0x038325 1C:8315: 68        PLA
C - - - - - 0x038326 1C:8316: 18        CLC
C - - - - - 0x038327 1C:8317: 69 11     ADC #$11
C - - - - - 0x038329 1C:8319: 4A        LSR
C - - - - - 0x03832A 1C:831A: 7E A6 04  ROR ram_04A6,X
C - - - - - 0x03832D 1C:831D: 4A        LSR
C - - - - - 0x03832E 1C:831E: 7E A6 04  ROR ram_04A6,X
C - - - - - 0x038331 1C:8321: 4A        LSR
C - - - - - 0x038332 1C:8322: 7E A6 04  ROR ram_04A6,X
C - - - - - 0x038335 1C:8325: 09 20     ORA #$20
C - - - - - 0x038337 1C:8327: 9D A7 04  STA ram_04A7,X
C - - - - - 0x03833A 1C:832A: E8        INX
C - - - - - 0x03833B 1C:832B: E8        INX
C - - - - - 0x03833C 1C:832C: E8        INX
C - - - - - 0x03833D 1C:832D: A0 00     LDY #$00
bra_832F_loop:
C - - - - - 0x03833F 1C:832F: B1 61     LDA (ram_0061),Y
C - - - - - 0x038341 1C:8331: 9D A5 04  STA ram_04A5,X
C - - - - - 0x038344 1C:8334: E8        INX
C - - - - - 0x038345 1C:8335: C8        INY
C - - - - - 0x038346 1C:8336: C0 18     CPY #$18
C - - - - - 0x038348 1C:8338: D0 F5     BNE bra_832F_loop
C - - - - - 0x03834A 1C:833A: A9 00     LDA #$00
C - - - - - 0x03834C 1C:833C: 9D A5 04  STA ram_04A5,X
C - - - - - 0x03834F 1C:833F: 98        TYA
C - - - - - 0x038350 1C:8340: 18        CLC
C - - - - - 0x038351 1C:8341: 65 61     ADC ram_0061
C - - - - - 0x038353 1C:8343: 85 61     STA ram_0061
C - - - - - 0x038355 1C:8345: 90 02     BCC bra_8349_RTS    ; if not overflow
; if overflow
C - - - - - 0x038357 1C:8347: E6 62     INC ram_0062
bra_8349_RTS:
C - - - - - 0x038359 1C:8349: 60        RTS



tbl_834A_тайлы_миникарты:
; 0x03835A
; графика миникарты когда игрок бежит по полю, каждые 24 байта это 1 строка
; считывается из 0x03833F
    .byte $00, $00, $C9, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $C9, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $D0, $00    ; 00
    .byte $00, $00, $CC, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $D0, $00    ; 01
    .byte $00, $00, $C9, $D2, $D2, $D2, $CC, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $C9, $D2, $D2, $D2, $D0, $00    ; 02
    .byte $00, $00, $CC, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $D0, $00    ; 03
    .byte $00, $00, $C9, $D2, $CC, $FF, $CC, $FF, $FF, $FF, $C0, $C1, $C4, $C5, $FF, $FF, $FF, $FF, $CC, $FF, $C9, $D2, $D0, $00    ; 04
    .byte $00, $C9, $CC, $FF, $CC, $FF, $CC, $FF, $FF, $FF, $C2, $FF, $CC, $C7, $FF, $FF, $FF, $FF, $CC, $FF, $CC, $FF, $C9, $D0    ; 05
    .byte $00, $C6, $CC, $FF, $CC, $FF, $CC, $FF, $FF, $FF, $C8, $FF, $CC, $CD, $FF, $FF, $FF, $FF, $CC, $FF, $CC, $FF, $C6, $D0    ; 06
    .byte $00, $00, $C6, $C3, $CC, $FF, $CC, $FF, $FF, $FF, $CA, $CB, $CE, $CF, $FF, $FF, $FF, $FF, $CC, $FF, $C6, $C3, $D0, $00    ; 07
    .byte $00, $00, $CC, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $D0, $00    ; 08
    .byte $00, $00, $C6, $C3, $C3, $C3, $CC, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $C6, $C3, $C3, $C3, $D0, $00    ; 09
    .byte $00, $00, $CC, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $CC, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $D0, $00    ; 0A
    .byte $00, $00, $C6, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C6, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $D0, $00    ; 0B



ofs_062_0x03847A_05:
C D - - - - 0x03847A 1C:846A: A9 00     LDA #$00
C - - - - - 0x03847C 1C:846C: 8D 28 06  STA ram_индекс_буфера
C - - - - - 0x03847F 1C:846F: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x038482 1C:8472: 29 3F     AND #$3F
C - - - - - 0x038484 1C:8474: D0 22     BNE bra_8498_RTS
C - - - - - 0x038486 1C:8476: AE 35 06  LDX ram_ball_pos_X_hi
C - - - - - 0x038489 1C:8479: AC 37 06  LDY ram_ball_pos_Y_hi
C - - - - - 0x03848C 1C:847C: 20 99 84  JSR sub_8499
C - - - - - 0x03848F 1C:847F: AA        TAX
C - - - - - 0x038490 1C:8480: D0 16     BNE bra_8498_RTS
C - - - - - 0x038492 1C:8482: AD 38 06  LDA ram_0638
C - - - - - 0x038495 1C:8485: 20 36 C5  JSR sub_0x03CDD9_проверить_координаты_игрока
C - - - - - 0x038498 1C:8488: 20 99 84  JSR sub_8499
C - - - - - 0x03849B 1C:848B: C9 00     CMP #$00
C - - - - - 0x03849D 1C:848D: F0 09     BEQ bra_8498_RTS
C - - - - - 0x03849F 1C:848F: C9 04     CMP #$04
C - - - - - 0x0384A1 1C:8491: F0 05     BEQ bra_8498_RTS
C - - - - - 0x0384A3 1C:8493: A9 80     LDA #$80
C - - - - - 0x0384A5 1C:8495: 8D 28 06  STA ram_индекс_буфера
bra_8498_RTS:
C - - - - - 0x0384A8 1C:8498: 60        RTS



sub_8499:
C - - - - - 0x0384A9 1C:8499: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x0384AC 1C:849C: D0 04     BNE bra_84A2_команда_слева
; if мяч у команды справа
C - - - - - 0x0384AE 1C:849E: 8A        TXA
C - - - - - 0x0384AF 1C:849F: 49 FF     EOR #$FF
C - - - - - 0x0384B1 1C:84A1: AA        TAX
bra_84A2_команда_слева:
C - - - - - 0x0384B2 1C:84A2: E0 60     CPX #$60
C - - - - - 0x0384B4 1C:84A4: B0 18     BCS bra_84BE_RTS
C - - - - - 0x0384B6 1C:84A6: 98        TYA
C - - - - - 0x0384B7 1C:84A7: 10 02     BPL bra_84AB
C - - - - - 0x0384B9 1C:84A9: 49 FF     EOR #$FF
bra_84AB:
C - - - - - 0x0384BB 1C:84AB: A8        TAY
C - - - - - 0x0384BC 1C:84AC: 20 39 C5  JSR sub_0x03CDF2
C - - - - - 0x0384BF 1C:84AF: A2 00     LDX #$00
bra_84B1_loop:
C - - - - - 0x0384C1 1C:84B1: DD BE 8B  CMP tbl_8BBE,X
C - - - - - 0x0384C4 1C:84B4: F0 04     BEQ bra_84BA
C - - - - - 0x0384C6 1C:84B6: E8        INX
C - - - - - 0x0384C7 1C:84B7: E8        INX
C - - - - - 0x0384C8 1C:84B8: D0 F7     BNE bra_84B1_loop
bra_84BA:
C - - - - - 0x0384CA 1C:84BA: BD BF 8B  LDA tbl_8BBE + $01,X
C - - - - - 0x0384CD 1C:84BD: 60        RTS
bra_84BE_RTS:
C - - - - - 0x0384CE 1C:84BE: 68        PLA
C - - - - - 0x0384CF 1C:84BF: 68        PLA
C - - - - - 0x0384D0 1C:84C0: 60        RTS



ofs_062_0x0384D1_07:
C D - - - - 0x0384D1 1C:84C1: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x0384D4 1C:84C4: F0 2D     BEQ bra_84F3_команда_слева
; if мяч у команды справа
C - - - - - 0x0384D6 1C:84C6: A9 00     LDA #$00
C - - - - - 0x0384D8 1C:84C8: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x0384DB 1C:84CB: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x0384DE 1C:84CE: A2 00     LDX #$00
C - - - - - 0x0384E0 1C:84D0: AD E2 00  LDA ram_random + $01
C - - - - - 0x0384E3 1C:84D3: C9 1F     CMP #$1F
C - - - - - 0x0384E5 1C:84D5: B0 08     BCS bra_84DF
C - - - - - 0x0384E7 1C:84D7: 20 20 8A  JSR sub_8A20
C - - - - - 0x0384EA 1C:84DA: 20 09 8A  JSR sub_8A09_запись_номера_принимающего
C - - - - - 0x0384ED 1C:84DD: A2 01     LDX #$01
bra_84DF:
C - - - - - 0x0384EF 1C:84DF: 8E 3B 04  STX ram_действие_атаки
C - - - - - 0x0384F2 1C:84E2: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x0384F5 1C:84E5: 20 06 8C  JSR sub_8C06
C - - - - - 0x0384F8 1C:84E8: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x0384FB 1C:84EB: F0 03     BEQ bra_84F0
C - - - - - 0x0384FD 1C:84ED: AD 31 04  LDA ram_список_спешалов + $01
bra_84F0:
C - - - - - 0x038500 1C:84F0: 8D 3C 04  STA ram_подтип_действия_атаки
bra_84F3_команда_слева:
C - - - - - 0x038503 1C:84F3: AD E3 00  LDA ram_random + $02
C - - - - - 0x038506 1C:84F6: 29 01     AND #$01
C - - - - - 0x038508 1C:84F8: 4D 12 06  EOR ram_результат_защитника
C - - - - - 0x03850B 1C:84FB: 8D 12 06  STA ram_результат_защитника
C - - - - - 0x03850E 1C:84FE: 60        RTS



ofs_062_0x03850F_06_рандом_стороны_кипера_в_пк:
C D - - - - 0x03850F 1C:84FF: AE FB 05  LDX ram_команда_с_мячом
C - - - - - 0x038512 1C:8502: F0 02     BEQ bra_8506_мяч_у_команда_слева
; if мяч у команды справа
C - - - - - 0x038514 1C:8504: A2 03     LDX #$03
bra_8506_мяч_у_команда_слева: ; X = 00, bzk optimize, небезопасно
C - - - - - 0x038516 1C:8506: AD E2 00  LDA ram_random + $01
C - - - - - 0x038519 1C:8509: 6D E3 00  ADC ram_random + $02
C - - - - - 0x03851C 1C:850C: A0 00     LDY #$00
bra_850E_loop:
C - - - - - 0x03851E 1C:850E: DD 28 85  CMP tbl_8528,X
C - - - - - 0x038521 1C:8511: B0 04     BCS bra_8517
C - - - - - 0x038523 1C:8513: C8        INY
C - - - - - 0x038524 1C:8514: E8        INX
C - - - - - 0x038525 1C:8515: D0 F7     BNE bra_850E_loop
bra_8517:
C - - - - - 0x038527 1C:8517: 98        TYA
C - - - - - 0x038528 1C:8518: 18        CLC
C - - - - - 0x038529 1C:8519: 69 07     ADC #$07
C - - - - - 0x03852B 1C:851B: AE FB 05  LDX ram_команда_с_мячом
C - - - - - 0x03852E 1C:851E: F0 04     BEQ bra_8524_мяч_у_команда_слева
; if мяч у команды справа
C - - - - - 0x038530 1C:8520: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038533 1C:8523: 60        RTS
bra_8524_мяч_у_команда_слева:
C - - - - - 0x038534 1C:8524: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x038537 1C:8527: 60        RTS



tbl_8528:
; 00
- D - - - - 0x038538 1C:8528: B3        .byte $B3
- D - - - - 0x038539 1C:8529: 4F        .byte $4F
- D - - - - 0x03853A 1C:852A: 00        .byte $00
; 03
- D - - - - 0x03853B 1C:852B: AA        .byte $AA
- D - - - - 0x03853C 1C:852C: 54        .byte $54
- D - - - - 0x03853D 1C:852D: 00        .byte $00



ofs_062_0x03853E_04:
C D - - - - 0x03853E 1C:852E: A0 06     LDY #$06
C - - - - - 0x038540 1C:8530: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x038542 1C:8532: 29 01     AND #$01
C - - - - - 0x038544 1C:8534: 0A        ASL
C - - - - - 0x038545 1C:8535: 6D 1E 06  ADC ram_061E
C - - - - - 0x038548 1C:8538: 8D 1E 06  STA ram_061E
C - - - - - 0x03854B 1C:853B: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x03854D 1C:853D: 4A        LSR
C - - - - - 0x03854E 1C:853E: 4A        LSR
C - - - - - 0x03854F 1C:853F: 4A        LSR
C - - - - - 0x038550 1C:8540: 4A        LSR
C - - - - - 0x038551 1C:8541: 18        CLC
C - - - - - 0x038552 1C:8542: 69 0A     ADC #$0A
C - - - - - 0x038554 1C:8544: 8D 41 04  STA ram_игрок_с_мячом
C - - - - - 0x038557 1C:8547: A9 00     LDA #$00
C - - - - - 0x038559 1C:8549: 85 3C     STA ram_003C
C - - - - - 0x03855B 1C:854B: A0 07     LDY #$07
C - - - - - 0x03855D 1C:854D: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x03855F 1C:854F: 20 EB 8A  JSR sub_8AEB_умножить_на_30h
C - - - - - 0x038562 1C:8552: 18        CLC
C - - - - - 0x038563 1C:8553: A5 3C     LDA ram_003C
C - - - - - 0x038565 1C:8555: 69 2E     ADC #< tbl_B12E
C - - - - - 0x038567 1C:8557: 85 3C     STA ram_003C
C - - - - - 0x038569 1C:8559: 8A        TXA
C - - - - - 0x03856A 1C:855A: 69 B1     ADC #> tbl_B12E
C - - - - - 0x03856C 1C:855C: 85 3D     STA ram_003D
C - - - - - 0x03856E 1C:855E: A9 00     LDA #$00
C - - - - - 0x038570 1C:8560: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x038573 1C:8563: 85 3E     STA ram_003E
C - - - - - 0x038575 1C:8565: 20 0B 8B  JSR sub_8B0B_рандом_действия
C - - - - - 0x038578 1C:8568: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03857E 1C:856E: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- - - - - - 0x038581 1C:8571: DF 87     .word ofs_049_87DF_00_shoot
- D - I - - 0x038583 1C:8573: E9 87     .word ofs_049_87E9_01_pass
- D - I - - 0x038585 1C:8575: 83 85     .word ofs_049_8583_02_dribble
; bzk optimize, наверняка куча лишнего
; а судя по 0x0387ED возможно немного неправильно закомментировано
- - - - - - 0x038587 1C:8577: 83 85     .word ofs_049_8583_03   ; 1-2 pass
- - - - - - 0x038589 1C:8579: 83 85     .word ofs_049_8583_04   ; trap
- - - - - - 0x03858B 1C:857B: 83 85     .word ofs_049_8583_05   ; through
- - - - - - 0x03858D 1C:857D: 83 85     .word ofs_049_8583_06   ; clear
- - - - - - 0x03858F 1C:857F: 83 85     .word ofs_049_8583_07   ; ???
- - - - - - 0x038591 1C:8581: 83 85     .word ofs_049_8583_08   ; ???



ofs_049_8583_02_dribble:
ofs_049_8583_03:
ofs_049_8583_04:
ofs_049_8583_05:
ofs_049_8583_06:
ofs_049_8583_07:
ofs_049_8583_08:
C - J - - - 0x038593 1C:8583: A0 08     LDY #$08
C - - - - - 0x038595 1C:8585: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x038597 1C:8587: 20 5E 89  JSR sub_895E
C - - - - - 0x03859A 1C:858A: 4A        LSR
C - - - - - 0x03859B 1C:858B: 4A        LSR
C - - - - - 0x03859C 1C:858C: C9 0F     CMP #$0F
C - - - - - 0x03859E 1C:858E: D0 06     BNE bra_8596
- - - - - - 0x0385A0 1C:8590: 20 20 8A  JSR sub_8A20
- - - - - - 0x0385A3 1C:8593: 4C 99 85  JMP loc_8599
bra_8596:
C - - - - - 0x0385A6 1C:8596: 18        CLC
C - - - - - 0x0385A7 1C:8597: 69 0A     ADC #$0A
loc_8599:
C - - - - - 0x0385A9 1C:8599: CD 41 04  CMP ram_игрок_с_мячом
C - - - - - 0x0385AC 1C:859C: D0 09     BNE bra_85A7
C - - - - - 0x0385AE 1C:859E: 18        CLC
C - - - - - 0x0385AF 1C:859F: 69 01     ADC #$01
C - - - - - 0x0385B1 1C:85A1: C9 16     CMP #$16
C - - - - - 0x0385B3 1C:85A3: 90 02     BCC bra_85A7
- - - - - - 0x0385B5 1C:85A5: A9 0C     LDA #$0C
bra_85A7:
C - - - - - 0x0385B7 1C:85A7: 20 09 8A  JSR sub_8A09_запись_номера_принимающего
C - - - - - 0x0385BA 1C:85AA: A9 01     LDA #$01
C - - - - - 0x0385BC 1C:85AC: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x0385BF 1C:85AF: A9 00     LDA #$00
C - - - - - 0x0385C1 1C:85B1: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x0385C4 1C:85B4: 60        RTS



loc_85B5:
C D - - - - 0x0385C5 1C:85B5: A9 00     LDA #$00
C - - - - - 0x0385C7 1C:85B7: 85 3D     STA ram_003D
C - - - - - 0x0385C9 1C:85B9: AE 21 06  LDX ram_0621
C - - - - - 0x0385CC 1C:85BC: BC 04 86  LDY tbl_8604,X
C - - - - - 0x0385CF 1C:85BF: 98        TYA
C - - - - - 0x0385D0 1C:85C0: 0A        ASL
C - - - - - 0x0385D1 1C:85C1: 0A        ASL
C - - - - - 0x0385D2 1C:85C2: 85 3E     STA ram_003E
C - - - - - 0x0385D4 1C:85C4: C8        INY
C - - - - - 0x0385D5 1C:85C5: C8        INY
C - - - - - 0x0385D6 1C:85C6: C8        INY
C - - - - - 0x0385D7 1C:85C7: C8        INY
C - - - - - 0x0385D8 1C:85C8: B1 3A     LDA (ram_003A),Y
; * 0C
C - - - - - 0x0385DA 1C:85CA: 0A        ASL
C - - - - - 0x0385DB 1C:85CB: 26 3D     ROL ram_003D
C - - - - - 0x0385DD 1C:85CD: 0A        ASL
C - - - - - 0x0385DE 1C:85CE: 26 3D     ROL ram_003D
C - - - - - 0x0385E0 1C:85D0: 85 3C     STA ram_003C
C - - - - - 0x0385E2 1C:85D2: A6 3D     LDX ram_003D
C - - - - - 0x0385E4 1C:85D4: 0A        ASL
C - - - - - 0x0385E5 1C:85D5: 26 3D     ROL ram_003D
C - - - - - 0x0385E7 1C:85D7: 65 3C     ADC ram_003C
C - - - - - 0x0385E9 1C:85D9: 85 3C     STA ram_003C
C - - - - - 0x0385EB 1C:85DB: 8A        TXA
C - - - - - 0x0385EC 1C:85DC: 65 3D     ADC ram_003D
C - - - - - 0x0385EE 1C:85DE: AA        TAX
C - - - - - 0x0385EF 1C:85DF: A5 3C     LDA ram_003C
C - - - - - 0x0385F1 1C:85E1: 18        CLC
C - - - - - 0x0385F2 1C:85E2: 69 2E     ADC #< tbl_BA2E
C - - - - - 0x0385F4 1C:85E4: 85 3C     STA ram_003C
C - - - - - 0x0385F6 1C:85E6: 8A        TXA
C - - - - - 0x0385F7 1C:85E7: 69 BA     ADC #> tbl_BA2E
C - - - - - 0x0385F9 1C:85E9: 85 3D     STA ram_003D
C - - - - - 0x0385FB 1C:85EB: 20 0B 8B  JSR sub_8B0B_рандом_действия
C - - - - - 0x0385FE 1C:85EE: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x038601 1C:85F1: AA        TAX
C - - - - - 0x038602 1C:85F2: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x038605 1C:85F5: 20 A6 8D  JSR sub_8DA6
C - - - - - 0x038608 1C:85F8: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x03860B 1C:85FB: F0 03     BEQ bra_8600
C - - - - - 0x03860D 1C:85FD: AD 31 04  LDA ram_список_спешалов + $01
bra_8600:
C - - - - - 0x038610 1C:8600: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x038613 1C:8603: 60        RTS



tbl_8604:
- D - - - - 0x038614 1C:8604: 00        .byte $00   ; 00
- D - - - - 0x038615 1C:8605: 01        .byte $01   ; 01
- - - - - - 0x038616 1C:8606: FF        .byte $FF   ; 02
- D - - - - 0x038617 1C:8607: 02        .byte $02   ; 03
- D - - - - 0x038618 1C:8608: 00        .byte $00   ; 04



sub_0x038619:
ofs_062_0x038619_00:
C D - - - - 0x038619 1C:8609: AD FB 05  LDA ram_команда_с_мячом
C - - - - - 0x03861C 1C:860C: F0 03     BEQ bra_8611_команда_слева
; if мяч у команды справа
C - - - - - 0x03861E 1C:860E: 4C 5D 87  JMP loc_875D
bra_8611_команда_слева:
C - - - - - 0x038621 1C:8611: AD 00 06  LDA ram_колво_защитников
C - - - - - 0x038624 1C:8614: F0 28     BEQ bra_863E_RTS
C - - - - - 0x038626 1C:8616: A9 00     LDA #$00
bra_8618_loop:
C - - - - - 0x038628 1C:8618: 48        PHA
C - - - - - 0x038629 1C:8619: A9 01     LDA #$01
C - - - - - 0x03862B 1C:861B: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x03862E 1C:861E: 68        PLA
C - - - - - 0x03862F 1C:861F: 48        PHA
C - - - - - 0x038630 1C:8620: 85 40     STA ram_0040
C - - - - - 0x038632 1C:8622: AA        TAX
C - - - - - 0x038633 1C:8623: BD 01 06  LDA ram_номер_защитника,X
C - - - - - 0x038636 1C:8626: 20 3F 86  JSR sub_863F
C - - - - - 0x038639 1C:8629: 68        PLA
C - - - - - 0x03863A 1C:862A: AA        TAX
C - - - - - 0x03863B 1C:862B: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x03863E 1C:862E: 9D 0B 06  STA ram_действие_защитника,X
C - - - - - 0x038641 1C:8631: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - - 0x038644 1C:8634: 9D 06 06  STA ram_подтип_действия_защитника,X
C - - - - - 0x038647 1C:8637: E8        INX
C - - - - - 0x038648 1C:8638: 8A        TXA
C - - - - - 0x038649 1C:8639: CD 00 06  CMP ram_колво_защитников
C - - - - - 0x03864C 1C:863C: D0 DA     BNE bra_8618_loop
bra_863E_RTS:
C - - - - - 0x03864E 1C:863E: 60        RTS



sub_863F:
C - - - - - 0x03864F 1C:863F: 8D 42 04  STA ram_игрок_без_мяча
C - - - - - 0x038652 1C:8642: 20 62 8A  JSR sub_8A62
C - - - - - 0x038655 1C:8645: A9 00     LDA #$00
C - - - - - 0x038657 1C:8647: 85 3C     STA ram_003C
C - - - - - 0x038659 1C:8649: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x03865C 1C:864C: C9 0B     CMP #$0B
C - - - - - 0x03865E 1C:864E: D0 03     BNE bra_8653
C - - - - - 0x038660 1C:8650: 4C B5 85  JMP loc_85B5
bra_8653:
C - - - - - 0x038663 1C:8653: AC 21 06  LDY ram_0621
C - - - - - 0x038666 1C:8656: B9 B5 86  LDA tbl_86B5,Y
C - - - - - 0x038669 1C:8659: 85 3C     STA ram_003C
C - - - - - 0x03866B 1C:865B: F0 06     BEQ bra_8663
C - - - - - 0x03866D 1C:865D: 20 B3 8A  JSR sub_8AB3
C - - - - - 0x038670 1C:8660: 4C 8E 86  JMP loc_868E
bra_8663:
; bzk optimize, схожий код с 0x038783
C - - - - - 0x038673 1C:8663: AD 35 06  LDA ram_ball_pos_X_hi
C - - - - - 0x038676 1C:8666: 49 FF     EOR #$FF
C - - - - - 0x038678 1C:8668: AA        TAX
C - - - - - 0x038679 1C:8669: A9 14     LDA #$14
C - - - - - 0x03867B 1C:866B: E0 A0     CPX #$A0
C - - - - - 0x03867D 1C:866D: B0 1F     BCS bra_868E
C - - - - - 0x03867F 1C:866F: A9 10     LDA #$10
C - - - - - 0x038681 1C:8671: E0 60     CPX #$60
C - - - - - 0x038683 1C:8673: B0 19     BCS bra_868E
C - - - - - 0x038685 1C:8675: AD 37 06  LDA ram_ball_pos_Y_hi
C - - - - - 0x038688 1C:8678: 10 02     BPL bra_867C
C - - - - - 0x03868A 1C:867A: 49 FF     EOR #$FF
bra_867C:
C - - - - - 0x03868C 1C:867C: A8        TAY
C - - - - - 0x03868D 1C:867D: 20 39 C5  JSR sub_0x03CDF2
C - - - - - 0x038690 1C:8680: A2 00     LDX #$00
bra_8682_loop:
C - - - - - 0x038692 1C:8682: DD BE 8B  CMP tbl_8BBE,X
C - - - - - 0x038695 1C:8685: F0 04     BEQ bra_868B
C - - - - - 0x038697 1C:8687: E8        INX
C - - - - - 0x038698 1C:8688: E8        INX
C - - - - - 0x038699 1C:8689: D0 F7     BNE bra_8682_loop
bra_868B:
C - - - - - 0x03869B 1C:868B: BD BF 8B  LDA tbl_8BBE + $01,X
bra_868E:
loc_868E:
C D - - - - 0x03869E 1C:868E: A0 07     LDY #$07
C - - - - - 0x0386A0 1C:8690: 20 DE 8A  JSR sub_8ADE
C - - - - - 0x0386A3 1C:8693: 18        CLC
C - - - - - 0x0386A4 1C:8694: A5 3C     LDA ram_003C
C - - - - - 0x0386A6 1C:8696: 69 AE     ADC #< tbl_B8AE
C - - - - - 0x0386A8 1C:8698: 85 3C     STA ram_003C
C - - - - - 0x0386AA 1C:869A: 8A        TXA
C - - - - - 0x0386AB 1C:869B: 69 B8     ADC #> tbl_B8AE
C - - - - - 0x0386AD 1C:869D: 85 3D     STA ram_003D
C - - - - - 0x0386AF 1C:869F: 20 0B 8B  JSR sub_8B0B_рандом_действия
C - - - - - 0x0386B2 1C:86A2: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x0386B5 1C:86A5: A9 00     LDA #$00
C - - - - - 0x0386B7 1C:86A7: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x0386BA 1C:86AA: A5 3F     LDA ram_003F
C - - - - - 0x0386BC 1C:86AC: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x0386BF 1C:86AF: BA 86     .word ofs_050_86BA_00
- D - I - - 0x0386C1 1C:86B1: EB 86     .word ofs_050_86EB_01
- D - I - - 0x0386C3 1C:86B3: 10 87     .word ofs_050_8710_02



tbl_86B5:
- D - - - - 0x0386C5 1C:86B5: 00        .byte $00   ; 00
- D - - - - 0x0386C6 1C:86B6: 02        .byte $02   ; 01
- D - - - - 0x0386C7 1C:86B7: 01        .byte $01   ; 02
- - - - - - 0x0386C8 1C:86B8: 00        .byte $00   ; 03
- - - - - - 0x0386C9 1C:86B9: 00        .byte $00   ; 04



ofs_050_86BA_00:
C - J - - - 0x0386CA 1C:86BA: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x0386CD 1C:86BD: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x0386D0 1C:86C0: C8 86     .word ofs_051_86C8_00
- D - I - - 0x0386D2 1C:86C2: D0 86     .word ofs_051_86D0_01
- D - I - - 0x0386D4 1C:86C4: D8 86     .word ofs_051_86D8_02
- D - I - - 0x0386D6 1C:86C6: E0 86     .word ofs_051_86E0_03



ofs_051_86C8_00:
C - J - - - 0x0386D8 1C:86C8: A9 01     LDA #$01
C - - - - - 0x0386DA 1C:86CA: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x0386DD 1C:86CD: 4C 32 87  JMP loc_8732



ofs_051_86D0_01:
ofs_052_8705_02:
ofs_053_8727_02:
C D J - - - 0x0386E0 1C:86D0: A9 02     LDA #$02
C - - - - - 0x0386E2 1C:86D2: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x0386E5 1C:86D5: 4C 32 87  JMP loc_8732



ofs_051_86D8_02:
C - J - - - 0x0386E8 1C:86D8: A9 00     LDA #$00
C - - - - - 0x0386EA 1C:86DA: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x0386ED 1C:86DD: 4C 32 87  JMP loc_8732



ofs_051_86E0_03:
C - J - - - 0x0386F0 1C:86E0: A9 01     LDA #$01
C - - - - - 0x0386F2 1C:86E2: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x0386F5 1C:86E5: A9 05     LDA #$05
C - - - - - 0x0386F7 1C:86E7: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x0386FA 1C:86EA: 60        RTS



ofs_050_86EB_01:
C - J - - - 0x0386FB 1C:86EB: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x0386FE 1C:86EE: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x038701 1C:86F1: F9 86     .word ofs_052_86F9_00
- D - I - - 0x038703 1C:86F3: FF 86     .word ofs_052_86FF_01
- D - I - - 0x038705 1C:86F5: 05 87     .word ofs_052_8705_02
- D - I - - 0x038707 1C:86F7: 08 87     .word ofs_052_8708_03



ofs_053_871E_00:
ofs_052_86F9_00:
C D - - - - 0x038709 1C:86F9: A9 05     LDA #$05
C - - - - - 0x03870B 1C:86FB: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x03870E 1C:86FE: 60        RTS



loc_86FF:
ofs_052_86FF_01:
C D J - - - 0x03870F 1C:86FF: A9 04     LDA #$04
C - - - - - 0x038711 1C:8701: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x038714 1C:8704: 60        RTS



ofs_052_8708_03:
C - J - - - 0x038718 1C:8708: A9 01     LDA #$01
C - - - - - 0x03871A 1C:870A: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x03871D 1C:870D: 4C FF 86  JMP loc_86FF    ; bzk optimize, поместить 0x03870F сюда



ofs_050_8710_02:
C - J - - - 0x038720 1C:8710: AD 3D 04  LDA ram_действие_защиты
C - - - - - 0x038723 1C:8713: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x038726 1C:8716: 1E 87     .word ofs_053_871E_00
- D - I - - 0x038728 1C:8718: 21 87     .word ofs_053_8721_01
- D - I - - 0x03872A 1C:871A: 27 87     .word ofs_053_8727_02
- D - I - - 0x03872C 1C:871C: 2A 87     .word ofs_053_872A_03



loc_8721:
ofs_053_8721_01:
C D J - - - 0x038731 1C:8721: A9 03     LDA #$03
C - - - - - 0x038733 1C:8723: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x038736 1C:8726: 60        RTS



ofs_053_872A_03:
C - J - - - 0x03873A 1C:872A: A9 01     LDA #$01
C - - - - - 0x03873C 1C:872C: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x03873F 1C:872F: 4C 21 87  JMP loc_8721    ; bzk optimize, поместить 0x038731 сюда



loc_8732:
C D - - - - 0x038742 1C:8732: AD 42 04  LDA ram_игрок_без_мяча
C - - - - - 0x038745 1C:8735: AE 3D 04  LDX ram_действие_защиты
C - - - - - 0x038748 1C:8738: 20 58 8D  JSR sub_8D58
C - - - - - 0x03874B 1C:873B: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x03874E 1C:873E: F0 03     BEQ bra_8743
C - - - - - 0x038750 1C:8740: AD 31 04  LDA ram_список_спешалов + $01
bra_8743:
C - - - - - 0x038753 1C:8743: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x038756 1C:8746: 60        RTS



loc_875D:
C D - - - - 0x03876D 1C:875D: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x038770 1C:8760: 20 62 8A  JSR sub_8A62
C - - - - - 0x038773 1C:8763: AC 21 06  LDY ram_0621
C - - - - - 0x038776 1C:8766: B9 C3 87  LDA tbl_87C3,Y
C - - - - - 0x038779 1C:8769: 85 3C     STA ram_003C
C - - - - - 0x03877B 1C:876B: F0 06     BEQ bra_8773
C - - - - - 0x03877D 1C:876D: 20 B3 8A  JSR sub_8AB3
C - - - - - 0x038780 1C:8770: 4C 9C 87  JMP loc_879C
bra_8773:
; bzk optimize, схожий код с 0x038673
C - - - - - 0x038783 1C:8773: A9 14     LDA #$14
C - - - - - 0x038785 1C:8775: AE 35 06  LDX ram_ball_pos_X_hi
C - - - - - 0x038788 1C:8778: E0 A0     CPX #$A0
C - - - - - 0x03878A 1C:877A: B0 20     BCS bra_879C
C - - - - - 0x03878C 1C:877C: A9 10     LDA #$10
C - - - - - 0x03878E 1C:877E: E0 60     CPX #$60
C - - - - - 0x038790 1C:8780: B0 1A     BCS bra_879C
C - - - - - 0x038792 1C:8782: AC 37 06  LDY ram_ball_pos_Y_hi
C - - - - - 0x038795 1C:8785: 10 04     BPL bra_878B
C - - - - - 0x038797 1C:8787: 98        TYA
C - - - - - 0x038798 1C:8788: 49 FF     EOR #$FF
C - - - - - 0x03879A 1C:878A: A8        TAY
bra_878B:
C - - - - - 0x03879B 1C:878B: 20 39 C5  JSR sub_0x03CDF2
C - - - - - 0x03879E 1C:878E: A2 00     LDX #$00
bra_8790_loop:
C - - - - - 0x0387A0 1C:8790: DD BE 8B  CMP tbl_8BBE,X
C - - - - - 0x0387A3 1C:8793: F0 04     BEQ bra_8799
C - - - - - 0x0387A5 1C:8795: E8        INX
C - - - - - 0x0387A6 1C:8796: E8        INX
C - - - - - 0x0387A7 1C:8797: D0 F7     BNE bra_8790_loop
bra_8799:
C - - - - - 0x0387A9 1C:8799: BD BF 8B  LDA tbl_8BBE + $01,X
bra_879C:
loc_879C:
C D - - - - 0x0387AC 1C:879C: A0 04     LDY #$04
C - - - - - 0x0387AE 1C:879E: 20 DE 8A  JSR sub_8ADE
C - - - - - 0x0387B1 1C:87A1: 18        CLC
C - - - - - 0x0387B2 1C:87A2: A5 3C     LDA ram_003C
C - - - - - 0x0387B4 1C:87A4: 69 2E     ADC #< tbl_B12E
C - - - - - 0x0387B6 1C:87A6: 85 3C     STA ram_003C
C - - - - - 0x0387B8 1C:87A8: 8A        TXA
C - - - - - 0x0387B9 1C:87A9: 69 B1     ADC #> tbl_B12E
C - - - - - 0x0387BB 1C:87AB: 85 3D     STA ram_003D
C - - - - - 0x0387BD 1C:87AD: 20 0B 8B  JSR sub_8B0B_рандом_действия
C - - - - - 0x0387C0 1C:87B0: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x0387C3 1C:87B3: A9 00     LDA #$00
C - - - - - 0x0387C5 1C:87B5: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x0387C8 1C:87B8: A5 3F     LDA ram_003F
C - - - - - 0x0387CA 1C:87BA: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x0387CD 1C:87BD: C7 87     .word ofs_054_87C7_00
- D - I - - 0x0387CF 1C:87BF: DA 88     .word ofs_054_88DA_01
- D - I - - 0x0387D1 1C:87C1: FD 88     .word ofs_054_88FD_02



tbl_87C3:
- D - - - - 0x0387D3 1C:87C3: 00        .byte $00   ; 00
- D - - - - 0x0387D4 1C:87C4: 01        .byte $01   ; 01
- D - - - - 0x0387D5 1C:87C5: 02        .byte $02   ; 02
- D - - - - 0x0387D6 1C:87C6: 00        .byte $00   ; 03



ofs_054_87C7_00:
C - J - - - 0x0387D7 1C:87C7: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x0387DA 1C:87CA: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- - - - - - 0x0387DD 1C:87CD: DF 87     .word ofs_049_87DF_00_shoot
- D - I - - 0x0387DF 1C:87CF: E9 87     .word ofs_049_87E9_01_pass
- D - I - - 0x0387E1 1C:87D1: EF 87     .word ofs_049_8933_02_dribble
- D - I - - 0x0387E3 1C:87D3: F2 87     .word ofs_049_87F2_03_1_2_pass
- D - I - - 0x0387E5 1C:87D5: FA 87     .word ofs_049_87FA_04_trap
- D - I - - 0x0387E7 1C:87D7: 4A 88     .word ofs_049_884A_05_through
- D - I - - 0x0387E9 1C:87D9: 55 88     .word ofs_049_8855_06_clear
- D - I - - 0x0387EB 1C:87DB: 60 88     .word ofs_049_8860_07     ; ???
- D - I - - 0x0387ED 1C:87DD: A8 88     .word ofs_049_88A8_08     ; ???



ofs_049_87DF_00_shoot:
- - - - - - 0x0387EF 1C:87DF: AD E2 00  LDA ram_random + $01
- - - - - - 0x0387F2 1C:87E2: 29 20     AND #$20
- - - - - - 0x0387F4 1C:87E4: D0 03     BNE bra_87E9
- - - - - - 0x0387F6 1C:87E6: 4C 27 89  JMP loc_8927
bra_87E9:
ofs_049_87E9_01_pass:
C - J - - - 0x0387F9 1C:87E9: 20 27 89  JSR sub_8927
C - - - - - 0x0387FC 1C:87EC: 4C 3F 8A  JMP loc_8A3F



loc_87F2_pass:
ofs_049_87F2_03_1_2_pass:
C D J - - - 0x038802 1C:87F2: A9 02     LDA #$02
C - - - - - 0x038804 1C:87F4: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038807 1C:87F7: 4C 3F 8A  JMP loc_8A3F



ofs_049_87FA_04_trap:
C - J - - - 0x03880A 1C:87FA: A9 03     LDA #$03
C - - - - - 0x03880C 1C:87FC: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03880F 1C:87FF: 20 3F 8A  JSR sub_8A3F
C - - - - - 0x038812 1C:8802: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - - 0x038815 1C:8805: D0 42     BNE bra_8849_RTS
C - - - - - 0x038817 1C:8807: A9 0C     LDA #$0C
C - - - - - 0x038819 1C:8809: 85 3A     STA ram_003A
bra_880B_loop:
C - - - - - 0x03881B 1C:880B: A5 3A     LDA ram_003A
C - - - - - 0x03881D 1C:880D: CD 41 04  CMP ram_игрок_с_мячом
C - - - - - 0x038820 1C:8810: F0 27     BEQ bra_8839
C - - - - - 0x038822 1C:8812: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038825 1C:8815: A0 06     LDY #con_plr_pos_X_hi
C - - - - - 0x038827 1C:8817: B1 34     LDA (ram_plr_data),Y    ; con_plr_pos_X_hi
C - - - - - 0x038829 1C:8819: 38        SEC
C - - - - - 0x03882A 1C:881A: ED 35 06  SBC ram_ball_pos_X_hi
C - - - - - 0x03882D 1C:881D: B0 04     BCS bra_8823
C - - - - - 0x03882F 1C:881F: 49 FF     EOR #$FF
C - - - - - 0x038831 1C:8821: 69 01     ADC #$01
bra_8823:
C - - - - - 0x038833 1C:8823: C9 14     CMP #$14
C - - - - - 0x038835 1C:8825: B0 12     BCS bra_8839
C - - - - - 0x038837 1C:8827: A0 08     LDY #con_plr_pos_Y_hi
C - - - - - 0x038839 1C:8829: B1 34     LDA (ram_plr_data),Y    ; con_plr_pos_Y_hi
C - - - - - 0x03883B 1C:882B: 38        SEC
C - - - - - 0x03883C 1C:882C: ED 37 06  SBC ram_ball_pos_Y_hi
C - - - - - 0x03883F 1C:882F: B0 04     BCS bra_8835
C - - - - - 0x038841 1C:8831: 49 FF     EOR #$FF
C - - - - - 0x038843 1C:8833: 69 01     ADC #$01
bra_8835:
C - - - - - 0x038845 1C:8835: C9 14     CMP #$14
C - - - - - 0x038847 1C:8837: 90 0B     BCC bra_8844
bra_8839:
C - - - - - 0x038849 1C:8839: E6 3A     INC ram_003A
C - - - - - 0x03884B 1C:883B: A5 3A     LDA ram_003A
C - - - - - 0x03884D 1C:883D: C9 16     CMP #$16
C - - - - - 0x03884F 1C:883F: D0 CA     BNE bra_880B_loop
C - - - - - 0x038851 1C:8841: 4C F2 87  JMP loc_87F2_pass
bra_8844:
C - - - - - 0x038854 1C:8844: A5 3A     LDA ram_003A
C - - - - - 0x038856 1C:8846: 20 09 8A  JSR sub_8A09_запись_номера_принимающего
bra_8849_RTS:
C - - - - - 0x038859 1C:8849: 60        RTS



ofs_049_884A_05_through:
C - J - - - 0x03885A 1C:884A: A9 00     LDA #$00
C - - - - - 0x03885C 1C:884C: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03885F 1C:884F: A9 0C     LDA #$0C
C - - - - - 0x038861 1C:8851: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x038864 1C:8854: 60        RTS



ofs_049_8855_06_clear:
C - J - - - 0x038865 1C:8855: A9 00     LDA #$00
C - - - - - 0x038867 1C:8857: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03886A 1C:885A: A9 0D     LDA #$0D
C - - - - - 0x03886C 1C:885C: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x03886F 1C:885F: 60        RTS



ofs_049_8860_07:
C - J - - - 0x038870 1C:8860: A9 02     LDA #$02
C - - - - - 0x038872 1C:8862: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038875 1C:8865: 2C 4B 04  BIT ram_044B
C - - - - - 0x038878 1C:8868: 30 3D     BMI bra_88A7_RTS
C - - - - - 0x03887A 1C:886A: A9 80     LDA #$80
C - - - - - 0x03887C 1C:886C: 8D 4B 04  STA ram_044B
C - - - - - 0x03887F 1C:886F: A9 0C     LDA #$0C
bra_8871_loop:
C - - - - - 0x038881 1C:8871: 48        PHA
C - - - - - 0x038882 1C:8872: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038885 1C:8875: A0 01     LDY #con_бот_флаг_1_ХЗ
C - - - - - 0x038887 1C:8877: A9 80     LDA #$80
C - - - - - 0x038889 1C:8879: 91 34     STA (ram_plr_data),Y    ; con_бот_флаг_1_ХЗ
C - - - - - 0x03888B 1C:887B: C8        INY ; con_бот_флаг_2_ХЗ
C - - - - - 0x03888C 1C:887C: A9 C8     LDA #$C8
C - - - - - 0x03888E 1C:887E: 91 34     STA (ram_plr_data),Y    ; con_бот_флаг_2_ХЗ
C - - - - - 0x038890 1C:8880: 68        PLA
C - - - - - 0x038891 1C:8881: 18        CLC
C - - - - - 0x038892 1C:8882: 69 01     ADC #$01
C - - - - - 0x038894 1C:8884: C9 16     CMP #$16
C - - - - - 0x038896 1C:8886: D0 E9     BNE bra_8871_loop
C - - - - - 0x038898 1C:8888: A9 01     LDA #$01
C - - - - - 0x03889A 1C:888A: 8D 2F 00  STA ram_защита_справа
C - - - - - 0x03889D 1C:888D: A9 00     LDA #$00
C - - - - - 0x03889F 1C:888F: 8D 2D 06  STA ram_062D
C - - - - - 0x0388A2 1C:8892: AD 15 06  LDA ram_0615
C - - - - - 0x0388A5 1C:8895: 29 BF     AND #$40 ^ $FF
C - - - - - 0x0388A7 1C:8897: 8D 15 06  STA ram_0615
C - - - - - 0x0388AA 1C:889A: A9 15     LDA #con_s_id_15
C - - - - - 0x0388AC 1C:889C: 20 4E C5  JSR sub_0x03CBC0_запись_номера_сценария
C - - - - - 0x0388AF 1C:889F: 2C 15 06  BIT ram_0615
C - - - - - 0x0388B2 1C:88A2: 10 03     BPL bra_88A7_RTS
C - - - - - 0x0388B4 1C:88A4: 20 75 C5  JSR sub_0x03E243
bra_88A7_RTS:
C - - - - - 0x0388B7 1C:88A7: 60        RTS



ofs_049_88A8_08:
C - J - - - 0x0388B8 1C:88A8: A9 02     LDA #$02
C - - - - - 0x0388BA 1C:88AA: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x0388BD 1C:88AD: 2C 4C 04  BIT ram_044C
C - - - - - 0x0388C0 1C:88B0: 30 27     BMI bra_88D9_RTS
C - - - - - 0x0388C2 1C:88B2: A9 80     LDA #$80
C - - - - - 0x0388C4 1C:88B4: 8D 4C 04  STA ram_044C
C - - - - - 0x0388C7 1C:88B7: 8D F1 03  STA ram_03F1
C - - - - - 0x0388CA 1C:88BA: A9 C9     LDA #$C9
C - - - - - 0x0388CC 1C:88BC: 8D F2 03  STA ram_03F2
C - - - - - 0x0388CF 1C:88BF: A9 00     LDA #$00
C - - - - - 0x0388D1 1C:88C1: 8D 2D 06  STA ram_062D
C - - - - - 0x0388D4 1C:88C4: AD 15 06  LDA ram_0615
C - - - - - 0x0388D7 1C:88C7: 29 BF     AND #40 ^ $FF
C - - - - - 0x0388D9 1C:88C9: 8D 15 06  STA ram_0615
C - - - - - 0x0388DC 1C:88CC: A9 16     LDA #con_s_id_16
C - - - - - 0x0388DE 1C:88CE: 20 4E C5  JSR sub_0x03CBC0_запись_номера_сценария
C - - - - - 0x0388E1 1C:88D1: 2C 15 06  BIT ram_0615
C - - - - - 0x0388E4 1C:88D4: 10 03     BPL bra_88D9_RTS
C - - - - - 0x0388E6 1C:88D6: 20 75 C5  JSR sub_0x03E243
bra_88D9_RTS:
C - - - - - 0x0388E9 1C:88D9: 60        RTS



ofs_054_88DA_01:
C - J - - - 0x0388EA 1C:88DA: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x0388ED 1C:88DD: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x0388F0 1C:88E0: E8 88     .word ofs_049_88E8_00_shoot
- D - I - - 0x0388F2 1C:88E2: EE 88     .word ofs_049_88EE_01_pass
- D - I - - 0x0388F4 1C:88E4: F4 88     .word ofs_049_8933_02_dribble
- D - I - - 0x0388F6 1C:88E6: F7 88     .word ofs_049_88F7_03_1_2_pass



ofs_049_88E8_00_shoot:
C - J - - - 0x0388F8 1C:88E8: 20 27 89  JSR sub_8927
C - - - - - 0x0388FB 1C:88EB: 4C 3F 8A  JMP loc_8A3F



ofs_049_88EE_01_pass:
C - J - - - 0x0388FE 1C:88EE: A9 05     LDA #$05
C - - - - - 0x038900 1C:88F0: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038903 1C:88F3: 60        RTS



ofs_049_88F7_03_1_2_pass:
C - J - - - 0x038907 1C:88F7: A9 04     LDA #$04
C - - - - - 0x038909 1C:88F9: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03890C 1C:88FC: 60        RTS



ofs_054_88FD_02:
C - J - - - 0x03890D 1C:88FD: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x038910 1C:8900: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x038913 1C:8903: 0B 89     .word ofs_055_890B_00
- D - I - - 0x038915 1C:8905: 11 89     .word ofs_055_8911_01
- D - I - - 0x038917 1C:8907: 17 89     .word ofs_055_8917_02
- D - I - - 0x038919 1C:8909: 1A 89     .word ofs_055_891A_03



ofs_055_890B_00:
C - J - - - 0x03891B 1C:890B: A9 04     LDA #$04
C - - - - - 0x03891D 1C:890D: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038920 1C:8910: 60        RTS



loc_8911:
ofs_055_8911_01:
C D J - - - 0x038921 1C:8911: A9 06     LDA #$06
C - - - - - 0x038923 1C:8913: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038926 1C:8916: 60        RTS



ofs_055_891A_03:
C - J - - - 0x03892A 1C:891A: A9 06     LDA #$06
C - - - - - 0x03892C 1C:891C: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03892F 1C:891F: A9 01     LDA #$01
C - - - - - 0x038931 1C:8921: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x038934 1C:8924: 4C 11 89  JMP loc_8911    ; bzk optimize, бесполезно, пишется такое же действие атаки



loc_8927:
sub_8927:
C - - - - - 0x038937 1C:8927: A9 00     LDA #$00
C - - - - - 0x038939 1C:8929: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x03893C 1C:892C: AD 4E 04  LDA ram_высота_мяча
C - - - - - 0x03893F 1C:892F: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x038942 1C:8932: 60        RTS



ofs_049_8933_02_dribble:
ofs_055_8917_02:
C D - - - - 0x038943 1C:8933: A0 0A     LDY #$0A
C - - - - - 0x038945 1C:8935: B1 3A     LDA (ram_003A),Y
C - - - - - 0x038947 1C:8937: 20 5E 89  JSR sub_895E
C - - - - - 0x03894A 1C:893A: 29 03     AND #$03
C - - - - - 0x03894C 1C:893C: 48        PHA
C - - - - - 0x03894D 1C:893D: B1 3C     LDA (ram_003C),Y
C - - - - - 0x03894F 1C:893F: 4A        LSR
C - - - - - 0x038950 1C:8940: 4A        LSR
C - - - - - 0x038951 1C:8941: C9 0F     CMP #$0F
C - - - - - 0x038953 1C:8943: F0 08     BEQ bra_894D
C - - - - - 0x038955 1C:8945: 18        CLC
C - - - - - 0x038956 1C:8946: 69 0A     ADC #$0A
C - - - - - 0x038958 1C:8948: CD 41 04  CMP ram_игрок_с_мячом
C - - - - - 0x03895B 1C:894B: D0 03     BNE bra_8950
bra_894D:
C - - - - - 0x03895D 1C:894D: 20 20 8A  JSR sub_8A20
bra_8950:
C - - - - - 0x038960 1C:8950: 85 3C     STA ram_003C
C - - - - - 0x038962 1C:8952: 68        PLA
C - - - - - 0x038963 1C:8953: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x038966 1C:8956: 7E 89     .word ofs_056_897E_00
- D - I - - 0x038968 1C:8958: 84 89     .word ofs_056_8984_01
- D - I - - 0x03896A 1C:895A: 93 89     .word ofs_056_8993_02
- D - I - - 0x03896C 1C:895C: 9C 89     .word ofs_056_899C_03



sub_895E:
C - - - - - 0x03896E 1C:895E: A2 00     LDX #$00
C - - - - - 0x038970 1C:8960: 86 3D     STX ram_003D
; * 08
C - - - - - 0x038972 1C:8962: 0A        ASL
C - - - - - 0x038973 1C:8963: 26 3D     ROL ram_003D
C - - - - - 0x038975 1C:8965: 0A        ASL
C - - - - - 0x038976 1C:8966: 26 3D     ROL ram_003D
C - - - - - 0x038978 1C:8968: 0A        ASL
C - - - - - 0x038979 1C:8969: 26 3D     ROL ram_003D
C - - - - - 0x03897B 1C:896B: 69 2E     ADC #< tbl_B72E
C - - - - - 0x03897D 1C:896D: 85 3C     STA ram_003C
C - - - - - 0x03897F 1C:896F: A5 3D     LDA ram_003D
C - - - - - 0x038981 1C:8971: 69 B7     ADC #> tbl_B72E
C - - - - - 0x038983 1C:8973: 85 3D     STA ram_003D
C - - - - - 0x038985 1C:8975: AD E2 00  LDA ram_random + $01
C - - - - - 0x038988 1C:8978: 29 07     AND #$07
C - - - - - 0x03898A 1C:897A: A8        TAY
C - - - - - 0x03898B 1C:897B: B1 3C     LDA (ram_003C),Y
C - - - - - 0x03898D 1C:897D: 60        RTS



ofs_056_897E_00:
C - J - - - 0x03898E 1C:897E: 20 B3 89  JSR sub_89B3
C - - - - - 0x038991 1C:8981: 4C A5 89  JMP loc_89A5



ofs_056_8984_01:
C - J - - - 0x038994 1C:8984: 20 B3 89  JSR sub_89B3
loc_8987:
C D - - - - 0x038997 1C:8987: 6E E2 00  ROR ram_random + $01
C - - - - - 0x03899A 1C:898A: 20 20 8A  JSR sub_8A20
C - - - - - 0x03899D 1C:898D: 20 B3 89  JSR sub_89B3
C - - - - - 0x0389A0 1C:8990: 4C A5 89  JMP loc_89A5



ofs_056_8993_02:
C - J - - - 0x0389A3 1C:8993: 20 B3 89  JSR sub_89B3
C - - - - - 0x0389A6 1C:8996: 20 DA 89  JSR sub_89DA
C - - - - - 0x0389A9 1C:8999: 4C 87 89  JMP loc_8987



ofs_056_899C_03:
C - J - - - 0x0389AC 1C:899C: 20 DA 89  JSR sub_89DA
C - - - - - 0x0389AF 1C:899F: 20 B3 89  JSR sub_89B3
C - - - - - 0x0389B2 1C:89A2: 4C 87 89  JMP loc_8987



loc_89A5:
C D - - - - 0x0389B5 1C:89A5: AE 21 06  LDX ram_0621
C - - - - - 0x0389B8 1C:89A8: BD AF 89  LDA tbl_89AF,X
C - - - - - 0x0389BB 1C:89AB: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x0389BE 1C:89AE: 60        RTS



tbl_89AF:
- D - - - - 0x0389BF 1C:89AF: 02        .byte $02   ; 00
- - - - - - 0x0389C0 1C:89B0: 04        .byte $04   ; 01
- D - - - - 0x0389C1 1C:89B1: 04        .byte $04   ; 02
- - - - - - 0x0389C2 1C:89B2: 02        .byte $02   ; 03



sub_89B3:
C - - - - - 0x0389C3 1C:89B3: A5 3C     LDA ram_003C
C - - - - - 0x0389C5 1C:89B5: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x0389C8 1C:89B8: A0 06     LDY #con_plr_pos_X_hi
C - - - - - 0x0389CA 1C:89BA: AD 35 06  LDA ram_ball_pos_X_hi
C - - - - - 0x0389CD 1C:89BD: 38        SEC
C - - - - - 0x0389CE 1C:89BE: F1 34     SBC (ram_plr_data),Y    ; con_plr_pos_X_hi
C - - - - - 0x0389D0 1C:89C0: B0 08     BCS bra_89CA
C - - - - - 0x0389D2 1C:89C2: AD 35 06  LDA ram_ball_pos_X_hi
C - - - - - 0x0389D5 1C:89C5: C9 60     CMP #$60
C - - - - - 0x0389D7 1C:89C7: 90 01     BCC bra_89CA
C - - - - - 0x0389D9 1C:89C9: 60        RTS
bra_89CA:
C - - - - - 0x0389DA 1C:89CA: A5 3C     LDA ram_003C
C - - - - - 0x0389DC 1C:89CC: 20 09 8A  JSR sub_8A09_запись_номера_принимающего
C - - - - - 0x0389DF 1C:89CF: A9 01     LDA #$01
C - - - - - 0x0389E1 1C:89D1: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x0389E4 1C:89D4: 20 3F 8A  JSR sub_8A3F
C - - - - - 0x0389E7 1C:89D7: 68        PLA
C - - - - - 0x0389E8 1C:89D8: 68        PLA
C - - - - - 0x0389E9 1C:89D9: 60        RTS



sub_89DA:
; полевые игроки команды соперника? (без учета кипера)
C - - - - - 0x0389EA 1C:89DA: A9 0C     LDA #$0C
C - - - - - 0x0389EC 1C:89DC: 85 3E     STA ram_003E
bra_89DE_loop:
C - - - - - 0x0389EE 1C:89DE: A5 3E     LDA ram_003E
C - - - - - 0x0389F0 1C:89E0: CD 41 04  CMP ram_игрок_с_мячом
C - - - - - 0x0389F3 1C:89E3: F0 0B     BEQ bra_89F0
C - - - - - 0x0389F5 1C:89E5: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x0389F8 1C:89E8: A0 06     LDY #con_plr_pos_X_hi
C - - - - - 0x0389FA 1C:89EA: B1 34     LDA (ram_plr_data),Y    ; con_plr_pos_X_hi
C - - - - - 0x0389FC 1C:89EC: C9 60     CMP #$60
C - - - - - 0x0389FE 1C:89EE: 90 09     BCC bra_89F9
bra_89F0:
C - - - - - 0x038A00 1C:89F0: E6 3E     INC ram_003E
C - - - - - 0x038A02 1C:89F2: A5 3E     LDA ram_003E
C - - - - - 0x038A04 1C:89F4: C9 16     CMP #$16
C - - - - - 0x038A06 1C:89F6: D0 E6     BNE bra_89DE_loop
C - - - - - 0x038A08 1C:89F8: 60        RTS
bra_89F9:
C - - - - - 0x038A09 1C:89F9: A5 3E     LDA ram_003E
C - - - - - 0x038A0B 1C:89FB: 20 09 8A  JSR sub_8A09_запись_номера_принимающего
C - - - - - 0x038A0E 1C:89FE: A9 01     LDA #$01
C - - - - - 0x038A10 1C:8A00: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x038A13 1C:8A03: 20 3F 8A  JSR sub_8A3F
C - - - - - 0x038A16 1C:8A06: 68        PLA
C - - - - - 0x038A17 1C:8A07: 68        PLA
C - - - - - 0x038A18 1C:8A08: 60        RTS



sub_8A09_запись_номера_принимающего:
C - - - - - 0x038A19 1C:8A09: 8D FC 05  STA ram_принимающий
C - - - - - 0x038A1C 1C:8A0C: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038A1F 1C:8A0F: A0 06     LDY #con_plr_pos_X_hi
C - - - - - 0x038A21 1C:8A11: B1 34     LDA (ram_plr_data),Y    ; con_plr_pos_X_hi
C - - - - - 0x038A23 1C:8A13: AA        TAX
C - - - - - 0x038A24 1C:8A14: A0 08     LDY #con_plr_pos_Y_hi
C - - - - - 0x038A26 1C:8A16: B1 34     LDA (ram_plr_data),Y    ; con_plr_pos_Y_hi
C - - - - - 0x038A28 1C:8A18: A8        TAY
C - - - - - 0x038A29 1C:8A19: 20 39 C5  JSR sub_0x03CDF2
C - - - - - 0x038A2C 1C:8A1C: 8D 38 06  STA ram_0638
C - - - - - 0x038A2F 1C:8A1F: 60        RTS



sub_8A20:
C - - - - - 0x038A30 1C:8A20: AD E2 00  LDA ram_random + $01
C - - - - - 0x038A33 1C:8A23: 6D E3 00  ADC ram_random + $02
C - - - - - 0x038A36 1C:8A26: 29 0F     AND #$0F
C - - - - - 0x038A38 1C:8A28: C9 0A     CMP #$0A
C - - - - - 0x038A3A 1C:8A2A: 90 02     BCC bra_8A2E
C - - - - - 0x038A3C 1C:8A2C: E9 0A     SBC #$0A
bra_8A2E:
C - - - - - 0x038A3E 1C:8A2E: 18        CLC
C - - - - - 0x038A3F 1C:8A2F: 69 0C     ADC #$0C
C - - - - - 0x038A41 1C:8A31: CD 41 04  CMP ram_игрок_с_мячом
C - - - - - 0x038A44 1C:8A34: D0 08     BNE bra_8A3E_RTS
C - - - - - 0x038A46 1C:8A36: 69 01     ADC #$01
C - - - - - 0x038A48 1C:8A38: C9 16     CMP #$16
C - - - - - 0x038A4A 1C:8A3A: 90 02     BCC bra_8A3E_RTS
C - - - - - 0x038A4C 1C:8A3C: A9 0C     LDA #$0C
bra_8A3E_RTS:
C - - - - - 0x038A4E 1C:8A3E: 60        RTS



loc_8A3F:
sub_8A3F:
C D - - - - 0x038A4F 1C:8A3F: AD 41 04  LDA ram_игрок_с_мячом
C - - - - - 0x038A52 1C:8A42: AE 3B 04  LDX ram_действие_атаки
C - - - - - 0x038A55 1C:8A45: 20 06 8C  JSR sub_8C06
C - - - - - 0x038A58 1C:8A48: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x038A5B 1C:8A4B: F0 03     BEQ bra_8A50
C - - - - - 0x038A5D 1C:8A4D: AD 31 04  LDA ram_список_спешалов + $01
bra_8A50:
C - - - - - 0x038A60 1C:8A50: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x038A63 1C:8A53: AA        TAX
C - - - - - 0x038A64 1C:8A54: D0 0B     BNE bra_8A61_RTS
C - - - - - 0x038A66 1C:8A56: AD 3B 04  LDA ram_действие_атаки
C - - - - - 0x038A69 1C:8A59: D0 06     BNE bra_8A61_RTS
C - - - - - 0x038A6B 1C:8A5B: AD 4E 04  LDA ram_высота_мяча
C - - - - - 0x038A6E 1C:8A5E: 8D 3C 04  STA ram_подтип_действия_атаки
bra_8A61_RTS:
C - - - - - 0x038A71 1C:8A61: 60        RTS



sub_8A62:
C - - - - - 0x038A72 1C:8A62: 48        PHA
C - - - - - 0x038A73 1C:8A63: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038A76 1C:8A66: A0 00     LDY #con_plr_id
C - - - - - 0x038A78 1C:8A68: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038A7A 1C:8A6A: D0 08     BNE bra_8A74_это_не_клон
; if con_p_clone
C - - - - - 0x038A7C 1C:8A6C: 68        PLA
C - - - - - 0x038A7D 1C:8A6D: 48        PHA
C - - - - - 0x038A7E 1C:8A6E: AA        TAX
C - - - - - 0x038A7F 1C:8A6F: BC 9D 8A  LDY tbl_818E_индекс_для_параметров_команды - $0B,X
C - - - - - 0x038A82 1C:8A72: B1 38     LDA (ram_enemy_data),Y
bra_8A74_это_не_клон:
C - - - - - 0x038A84 1C:8A74: AA        TAX
C - - - - - 0x038A85 1C:8A75: A0 01     LDY #con_бот_флаг_1_ХЗ
C - - - - - 0x038A87 1C:8A77: B1 34     LDA (ram_plr_data),Y    ; con_бот_флаг_1_ХЗ
C - - - - - 0x038A89 1C:8A79: 10 04     BPL bra_8A7F
C - - - - - 0x038A8B 1C:8A7B: C8        INY ; con_бот_флаг_2_ХЗ
C - - - - - 0x038A8C 1C:8A7C: B1 34     LDA (ram_plr_data),Y    ; con_бот_флаг_2_ХЗ
; A = C8 C9 CA CB 
C - - - - - 0x038A8E 1C:8A7E: AA        TAX
bra_8A7F:
C - - - - - 0x038A8F 1C:8A7F: 8A        TXA
C - - - - - 0x038A90 1C:8A80: 38        SEC
C - - - - - 0x038A91 1C:8A81: E9 23     SBC #$23
; * 0C
C - - - - - 0x038A93 1C:8A83: A2 00     LDX #$00
C - - - - - 0x038A95 1C:8A85: 86 3B     STX ram_003B
C - - - - - 0x038A97 1C:8A87: 0A        ASL
C - - - - - 0x038A98 1C:8A88: 26 3B     ROL ram_003B
C - - - - - 0x038A9A 1C:8A8A: 0A        ASL
C - - - - - 0x038A9B 1C:8A8B: 26 3B     ROL ram_003B
C - - - - - 0x038A9D 1C:8A8D: 85 3A     STA ram_003A
C - - - - - 0x038A9F 1C:8A8F: A6 3B     LDX ram_003B
C - - - - - 0x038AA1 1C:8A91: 0A        ASL
C - - - - - 0x038AA2 1C:8A92: 26 3B     ROL ram_003B
C - - - - - 0x038AA4 1C:8A94: 65 3A     ADC ram_003A
C - - - - - 0x038AA6 1C:8A96: 48        PHA
C - - - - - 0x038AA7 1C:8A97: 8A        TXA
C - - - - - 0x038AA8 1C:8A98: 65 3B     ADC ram_003B
C - - - - - 0x038AAA 1C:8A9A: AA        TAX
C - - - - - 0x038AAB 1C:8A9B: 68        PLA
C - - - - - 0x038AAC 1C:8A9C: 18        CLC
C - - - - - 0x038AAD 1C:8A9D: 69 62     ADC #< tbl_9662_игроки_команды_соперников
C - - - - - 0x038AAF 1C:8A9F: 85 3A     STA ram_003A
C - - - - - 0x038AB1 1C:8AA1: 8A        TXA
C - - - - - 0x038AB2 1C:8AA2: 69 96     ADC #> tbl_9662_игроки_команды_соперников
C - - - - - 0x038AB4 1C:8AA4: 85 3B     STA ram_003B
C - - - - - 0x038AB6 1C:8AA6: 68        PLA
C - - - - - 0x038AB7 1C:8AA7: 60        RTS



sub_8AB3:
C - - - - - 0x038AC3 1C:8AB3: AD 35 06  LDA ram_ball_pos_X_hi
C - - - - - 0x038AC6 1C:8AB6: 10 02     BPL bra_8ABA
C - - - - - 0x038AC8 1C:8AB8: 49 FF     EOR #$FF
bra_8ABA:
C - - - - - 0x038ACA 1C:8ABA: AA        TAX
C - - - - - 0x038ACB 1C:8ABB: AD 37 06  LDA ram_ball_pos_Y_hi
C - - - - - 0x038ACE 1C:8ABE: 10 02     BPL bra_8AC2
C - - - - - 0x038AD0 1C:8AC0: 49 FF     EOR #$FF
bra_8AC2:
C - - - - - 0x038AD2 1C:8AC2: A8        TAY
C - - - - - 0x038AD3 1C:8AC3: 20 39 C5  JSR sub_0x03CDF2
C - - - - - 0x038AD6 1C:8AC6: A2 00     LDX #$00
bra_8AC8_loop:
C - - - - - 0x038AD8 1C:8AC8: DD 9E 8B  CMP tbl_8B9E,X
C - - - - - 0x038ADB 1C:8ACB: F0 04     BEQ bra_8AD1
C - - - - - 0x038ADD 1C:8ACD: E8        INX
C - - - - - 0x038ADE 1C:8ACE: E8        INX
C - - - - - 0x038ADF 1C:8ACF: D0 F7     BNE bra_8AC8_loop
bra_8AD1:
C - - - - - 0x038AE1 1C:8AD1: BD 9F 8B  LDA tbl_8B9E + $01,X
C - - - - - 0x038AE4 1C:8AD4: A6 3C     LDX ram_003C
C - - - - - 0x038AE6 1C:8AD6: E0 01     CPX #$01
C - - - - - 0x038AE8 1C:8AD8: F0 03     BEQ bra_8ADD_RTS
C - - - - - 0x038AEA 1C:8ADA: 18        CLC
C - - - - - 0x038AEB 1C:8ADB: 69 0C     ADC #$0C
bra_8ADD_RTS:
C - - - - - 0x038AED 1C:8ADD: 60        RTS



sub_8ADE:
C - - - - - 0x038AEE 1C:8ADE: 85 3E     STA ram_003E
C - - - - - 0x038AF0 1C:8AE0: A5 3C     LDA ram_003C
C - - - - - 0x038AF2 1C:8AE2: 85 3F     STA ram_003F
C - - - - - 0x038AF4 1C:8AE4: 98        TYA
C - - - - - 0x038AF5 1C:8AE5: 18        CLC
C - - - - - 0x038AF6 1C:8AE6: 65 3C     ADC ram_003C
C - - - - - 0x038AF8 1C:8AE8: A8        TAY
C - - - - - 0x038AF9 1C:8AE9: B1 3A     LDA (ram_003A),Y
sub_8AEB_умножить_на_30h:
C - - - - - 0x038AFB 1C:8AEB: A0 00     LDY #$00
C - - - - - 0x038AFD 1C:8AED: 84 3D     STY ram_003D
C - - - - - 0x038AFF 1C:8AEF: 0A        ASL
C - - - - - 0x038B00 1C:8AF0: 26 3D     ROL ram_003D
C - - - - - 0x038B02 1C:8AF2: 0A        ASL
C - - - - - 0x038B03 1C:8AF3: 26 3D     ROL ram_003D
C - - - - - 0x038B05 1C:8AF5: 0A        ASL
C - - - - - 0x038B06 1C:8AF6: 26 3D     ROL ram_003D
C - - - - - 0x038B08 1C:8AF8: 0A        ASL
C - - - - - 0x038B09 1C:8AF9: 26 3D     ROL ram_003D
C - - - - - 0x038B0B 1C:8AFB: 85 3C     STA ram_003C
C - - - - - 0x038B0D 1C:8AFD: A6 3D     LDX ram_003D
C - - - - - 0x038B0F 1C:8AFF: 0A        ASL
C - - - - - 0x038B10 1C:8B00: 26 3D     ROL ram_003D
C - - - - - 0x038B12 1C:8B02: 65 3C     ADC ram_003C
C - - - - - 0x038B14 1C:8B04: 85 3C     STA ram_003C
C - - - - - 0x038B16 1C:8B06: 8A        TXA
C - - - - - 0x038B17 1C:8B07: 65 3D     ADC ram_003D
C - - - - - 0x038B19 1C:8B09: AA        TAX
C - - - - - 0x038B1A 1C:8B0A: 60        RTS



sub_8B0B_рандом_действия:
C - - - - - 0x038B1B 1C:8B0B: AD E2 00  LDA ram_random + $01
C - - - - - 0x038B1E 1C:8B0E: 29 07     AND #$07
C - - - - - 0x038B20 1C:8B10: 4A        LSR
C - - - - - 0x038B21 1C:8B11: 08        PHP
C - - - - - 0x038B22 1C:8B12: 18        CLC
C - - - - - 0x038B23 1C:8B13: 65 3E     ADC ram_003E
C - - - - - 0x038B25 1C:8B15: A8        TAY
C - - - - - 0x038B26 1C:8B16: B1 3C     LDA (ram_003C),Y
C - - - - - 0x038B28 1C:8B18: 28        PLP
C - - - - - 0x038B29 1C:8B19: B0 04     BCS bra_8B1F
C - - - - - 0x038B2B 1C:8B1B: 4A        LSR
C - - - - - 0x038B2C 1C:8B1C: 4A        LSR
C - - - - - 0x038B2D 1C:8B1D: 4A        LSR
C - - - - - 0x038B2E 1C:8B1E: 4A        LSR
bra_8B1F:
C - - - - - 0x038B2F 1C:8B1F: 29 0F     AND #$0F
C - - - - - 0x038B31 1C:8B21: 60        RTS



sub_0x038013_подготовить_параметры_для_команды_соперников:
C D - - - - 0x038B32 1C:8B22: A9 0B     LDA #$0B
bra_8B24_loop_обнуления_номеров_игроков_соперников:
C - - - - - 0x038B34 1C:8B24: 48        PHA
C - - - - - 0x038B35 1C:8B25: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038B38 1C:8B28: A0 00     LDY #con_plr_id
C - - - - - 0x038B3A 1C:8B2A: A9 00     LDA #con_p_clone
C - - - - - 0x038B3C 1C:8B2C: 91 34     STA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038B3E 1C:8B2E: C8        INY   ; con_бот_флаг_1_ХЗ
C - - - - - 0x038B3F 1C:8B2F: 91 34     STA (ram_plr_data),Y    ; con_бот_флаг_1_ХЗ
C - - - - - 0x038B41 1C:8B31: 68        PLA
C - - - - - 0x038B42 1C:8B32: 18        CLC
C - - - - - 0x038B43 1C:8B33: 69 01     ADC #$01
C - - - - - 0x038B45 1C:8B35: C9 16     CMP #$16
C - - - - - 0x038B47 1C:8B37: D0 EB     BNE bra_8B24_loop_обнуления_номеров_игроков_соперников
C - - - - - 0x038B49 1C:8B39: AD 2B 00  LDA ram_команда_соперника
C - - - - - 0x038B4C 1C:8B3C: 38        SEC
C - - - - - 0x038B4D 1C:8B3D: E9 03     SBC #$03
C - - - - - 0x038B4F 1C:8B3F: 0A        ASL
C - - - - - 0x038B50 1C:8B40: AA        TAX
C - - - - - 0x038B51 1C:8B41: BD B2 BA  LDA tbl_BAB2_параметры_команды_соперников,X
C - - - - - 0x038B54 1C:8B44: 85 38     STA ram_enemy_data
C - - - - - 0x038B56 1C:8B46: BD B3 BA  LDA tbl_BAB2_параметры_команды_соперников + $01,X
C - - - - - 0x038B59 1C:8B49: 85 39     STA ram_enemy_data + $01
C - - - - - 0x038B5B 1C:8B4B: A0 00     LDY #$00
C - - - - - 0x038B5D 1C:8B4D: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x038B61 1C:8B51: 8D 2E 00  STA ram_расстановка_справа
                                        INY
C - - - - - 0x038B64 1C:8B54: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x038B6A 1C:8B5A: 8D 2F 00  STA ram_защита_справа
C - - - - - 0x038B6D 1C:8B5D: A0 09     LDY #$09
C - - - - - 0x038B6F 1C:8B5F: 84 3A     STY ram_003A
loc_8B61_loop_чтение_таблицы:
C D - - - - 0x038B71 1C:8B61: A4 3A     LDY ram_003A
C - - - - - 0x038B73 1C:8B63: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x038B75 1C:8B65: C9 0F     CMP #$FF
C - - - - - 0x038B77 1C:8B67: F0 15     BEQ bra_8B7E_закончить_чтение_таблицы
C - - - - - 0x038B79 1C:8B69: 18        CLC
C - - - - - 0x038B7A 1C:8B6A: 69 0A     ADC #$0A
C - - - - - 0x038B7C 1C:8B6C: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038B7F 1C:8B6F: A4 3A     LDY ram_003A
C - - - - - 0x038B81 1C:8B71: C8        INY
C - - - - - 0x038B82 1C:8B72: B1 38     LDA (ram_enemy_data),Y
C - - - - - 0x038B84 1C:8B74: C8        INY
C - - - - - 0x038B85 1C:8B75: 84 3A     STY ram_003A
C - - - - - 0x038B87 1C:8B77: A0 00     LDY #con_plr_id
C - - - - - 0x038B89 1C:8B79: 91 34     STA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038B8B 1C:8B7B: 4C 61 8B  JMP loc_8B61_loop_чтение_таблицы
bra_8B7E_закончить_чтение_таблицы:
C - - - - - 0x038B8E 1C:8B7E: AE 46 04  LDX ram_флаг_драйв_оверхеда
C - - - - - 0x038B91 1C:8B81: E0 05     CPX #$05
C - - - - - 0x038B93 1C:8B83: F0 0B     BEQ bra_8B93_RTS
C - - - - - 0x038B95 1C:8B85: A2 00     LDX #$00
C - - - - - 0x038B97 1C:8B87: AD 84 03  LDA ram_opponent_GK
C - - - - - 0x038B9A 1C:8B8A: C9 26     CMP #$26      ; meon
C - - - - - 0x038B9C 1C:8B8C: D0 02     BNE bra_8B90
C - - - - - 0x038B9E 1C:8B8E: E8        INX
C - - - - - 0x038B9F 1C:8B8F: E8        INX
bra_8B90:
C - - - - - 0x038BA0 1C:8B90: 8E 46 04  STX ram_флаг_драйв_оверхеда
bra_8B93_RTS:
C - - - - - 0x038BA3 1C:8B93: 60        RTS



tbl_8B9E:
- D - - - - 0x038BAE 1C:8B9E: 02        .byte $02
- D - - - - 0x038BAF 1C:8B9F: 18        .byte $18

- D - - - - 0x038BB0 1C:8BA0: 03        .byte $03
- D - - - - 0x038BB1 1C:8BA1: 18        .byte $18

- D - - - - 0x038BB2 1C:8BA2: 0E        .byte $0E
- D - - - - 0x038BB3 1C:8BA3: 18        .byte $18

- D - - - - 0x038BB4 1C:8BA4: 0F        .byte $0F
- D - - - - 0x038BB5 1C:8BA5: 18        .byte $18

- D - - - - 0x038BB6 1C:8BA6: 1A        .byte $1A
- D - - - - 0x038BB7 1C:8BA7: 1C        .byte $1C

- D - - - - 0x038BB8 1C:8BA8: 1B        .byte $1B
- D - - - - 0x038BB9 1C:8BA9: 1C        .byte $1C

- D - - - - 0x038BBA 1C:8BAA: 1C        .byte $1C
- D - - - - 0x038BBB 1C:8BAB: 1C        .byte $1C

- D - - - - 0x038BBC 1C:8BAC: 1D        .byte $1D
- D - - - - 0x038BBD 1C:8BAD: 1C        .byte $1C

- D - - - - 0x038BBE 1C:8BAE: 26        .byte $26
- D - - - - 0x038BBF 1C:8BAF: 1C        .byte $1C

- D - - - - 0x038BC0 1C:8BB0: 27        .byte $27
- D - - - - 0x038BC1 1C:8BB1: 1C        .byte $1C

- D - - - - 0x038BC2 1C:8BB2: 28        .byte $28
- D - - - - 0x038BC3 1C:8BB3: 1C        .byte $1C

- D - - - - 0x038BC4 1C:8BB4: 29        .byte $29
- D - - - - 0x038BC5 1C:8BB5: 1C        .byte $1C

- D - - - - 0x038BC6 1C:8BB6: 04        .byte $04
- D - - - - 0x038BC7 1C:8BB7: 20        .byte $20

- D - - - - 0x038BC8 1C:8BB8: 05        .byte $05
- D - - - - 0x038BC9 1C:8BB9: 20        .byte $20

- D - - - - 0x038BCA 1C:8BBA: 10        .byte $10
- D - - - - 0x038BCB 1C:8BBB: 20        .byte $20

- D - - - - 0x038BCC 1C:8BBC: 11        .byte $11
- D - - - - 0x038BCD 1C:8BBD: 20        .byte $20



tbl_8BBE:
- D - - - - 0x038BCE 1C:8BBE: 00        .byte $00
- D - - - - 0x038BCF 1C:8BBF: 00        .byte $00

- D - - - - 0x038BD0 1C:8BC0: 0C        .byte $0C
- D - - - - 0x038BD1 1C:8BC1: 00        .byte $00

- D - - - - 0x038BD2 1C:8BC2: 18        .byte $18
- D - - - - 0x038BD3 1C:8BC3: 00        .byte $00

- D - - - - 0x038BD4 1C:8BC4: 24        .byte $24
- D - - - - 0x038BD5 1C:8BC5: 00        .byte $00

- D - - - - 0x038BD6 1C:8BC6: 30        .byte $30
- D - - - - 0x038BD7 1C:8BC7: 00        .byte $00

- D - - - - 0x038BD8 1C:8BC8: 3C        .byte $3C
- D - - - - 0x038BD9 1C:8BC9: 00        .byte $00

- D - - - - 0x038BDA 1C:8BCA: 01        .byte $01
- D - - - - 0x038BDB 1C:8BCB: 00        .byte $00

- D - - - - 0x038BDC 1C:8BCC: 0D        .byte $0D
- D - - - - 0x038BDD 1C:8BCD: 00        .byte $00

- D - - - - 0x038BDE 1C:8BCE: 19        .byte $19
- D - - - - 0x038BDF 1C:8BCF: 00        .byte $00

- D - - - - 0x038BE0 1C:8BD0: 25        .byte $25
- D - - - - 0x038BE1 1C:8BD1: 00        .byte $00

- D - - - - 0x038BE2 1C:8BD2: 31        .byte $31
- D - - - - 0x038BE3 1C:8BD3: 00        .byte $00

- D - - - - 0x038BE4 1C:8BD4: 3D        .byte $3D
- D - - - - 0x038BE5 1C:8BD5: 00        .byte $00

- D - - - - 0x038BE6 1C:8BD6: 02        .byte $02
- D - - - - 0x038BE7 1C:8BD7: 00        .byte $00

- D - - - - 0x038BE8 1C:8BD8: 0E        .byte $0E
- D - - - - 0x038BE9 1C:8BD9: 00        .byte $00

- D - - - - 0x038BEA 1C:8BDA: 03        .byte $03
- D - - - - 0x038BEB 1C:8BDB: 00        .byte $00

- D - - - - 0x038BEC 1C:8BDC: 0F        .byte $0F
- D - - - - 0x038BED 1C:8BDD: 00        .byte $00

- D - - - - 0x038BEE 1C:8BDE: 32        .byte $32
- D - - - - 0x038BEF 1C:8BDF: 04        .byte $04

- D - - - - 0x038BF0 1C:8BE0: 3E        .byte $3E
- D - - - - 0x038BF1 1C:8BE1: 04        .byte $04

- D - - - - 0x038BF2 1C:8BE2: 33        .byte $33
- D - - - - 0x038BF3 1C:8BE3: 04        .byte $04

- D - - - - 0x038BF4 1C:8BE4: 3F        .byte $3F
- D - - - - 0x038BF5 1C:8BE5: 04        .byte $04

- D - - - - 0x038BF6 1C:8BE6: 34        .byte $34
- D - - - - 0x038BF7 1C:8BE7: 04        .byte $04

- D - - - - 0x038BF8 1C:8BE8: 40        .byte $40
- D - - - - 0x038BF9 1C:8BE9: 04        .byte $04

- D - - - - 0x038BFA 1C:8BEA: 35        .byte $35
- D - - - - 0x038BFB 1C:8BEB: 04        .byte $04

- D - - - - 0x038BFC 1C:8BEC: 41        .byte $41
- D - - - - 0x038BFD 1C:8BED: 04        .byte $04

- D - - - - 0x038BFE 1C:8BEE: 1A        .byte $1A
- D - - - - 0x038BFF 1C:8BEF: 08        .byte $08

- D - - - - 0x038C00 1C:8BF0: 26        .byte $26
- D - - - - 0x038C01 1C:8BF1: 08        .byte $08

- D - - - - 0x038C02 1C:8BF2: 1B        .byte $1B
- D - - - - 0x038C03 1C:8BF3: 08        .byte $08

- D - - - - 0x038C04 1C:8BF4: 27        .byte $27
- D - - - - 0x038C05 1C:8BF5: 08        .byte $08

- D - - - - 0x038C06 1C:8BF6: 1C        .byte $1C
- D - - - - 0x038C07 1C:8BF7: 08        .byte $08

- D - - - - 0x038C08 1C:8BF8: 28        .byte $28
- D - - - - 0x038C09 1C:8BF9: 08        .byte $08

- D - - - - 0x038C0A 1C:8BFA: 1D        .byte $1D
- D - - - - 0x038C0B 1C:8BFB: 08        .byte $08

- D - - - - 0x038C0C 1C:8BFC: 29        .byte $29
- D - - - - 0x038C0D 1C:8BFD: 08        .byte $08

- D - - - - 0x038C0E 1C:8BFE: 04        .byte $04
- D - - - - 0x038C0F 1C:8BFF: 0C        .byte $0C

- D - - - - 0x038C10 1C:8C00: 10        .byte $10
- D - - - - 0x038C11 1C:8C01: 0C        .byte $0C

- D - - - - 0x038C12 1C:8C02: 05        .byte $05
- D - - - - 0x038C13 1C:8C03: 0C        .byte $0C

- D - - - - 0x038C14 1C:8C04: 11        .byte $11
- D - - - - 0x038C15 1C:8C05: 0C        .byte $0C



sub_8C06:
sub_0x038C16:
C D - - - - 0x038C16 1C:8C06: E0 04     CPX #$04
C - - - - - 0x038C18 1C:8C08: B0 1C     BCS bra_8C26
C - - - - - 0x038C1A 1C:8C0A: AC 4E 04  LDY ram_высота_мяча
C - - - - - 0x038C1D 1C:8C0D: F0 04     BEQ bra_8C13
C - - - - - 0x038C1F 1C:8C0F: E0 02     CPX #$02
C - - - - - 0x038C21 1C:8C11: B0 13     BCS bra_8C26
bra_8C13:
C - - - - - 0x038C23 1C:8C13: 20 C9 8D  JSR sub_8DC9_вычислить_адрес_спешалов_игрока
C - - - - - 0x038C26 1C:8C16: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x038C29 1C:8C19: 0A        ASL
C - - - - - 0x038C2A 1C:8C1A: A8        TAY
C - - - - - 0x038C2B 1C:8C1B: B1 48     LDA (ram_0048),Y
C - - - - - 0x038C2D 1C:8C1D: C8        INY
C - - - - - 0x038C2E 1C:8C1E: D1 48     CMP (ram_0048),Y
C - - - - - 0x038C30 1C:8C20: D0 0A     BNE bra_8C2C
C - - - - - 0x038C32 1C:8C22: C9 00     CMP #$00
C - - - - - 0x038C34 1C:8C24: D0 06     BNE bra_8C2C
bra_8C26:
C - - - - - 0x038C36 1C:8C26: A9 00     LDA #$00
C - - - - - 0x038C38 1C:8C28: 8D 30 04  STA ram_список_спешалов
C - - - - - 0x038C3B 1C:8C2B: 60        RTS
bra_8C2C:
C - - - - - 0x038C3C 1C:8C2C: AA        TAX
C - - - - - 0x038C3D 1C:8C2D: B1 48     LDA (ram_0048),Y
C - - - - - 0x038C3F 1C:8C2F: 85 49     STA ram_0049
C - - - - - 0x038C41 1C:8C31: 86 48     STX ram_0048
C - - - - - 0x038C43 1C:8C33: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x038C46 1C:8C36: A2 00     LDX #$00
C - - - - - 0x038C48 1C:8C38: 8E 30 04  STX ram_список_спешалов
C - - - - - 0x038C4B 1C:8C3B: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x038C4E 1C:8C3E: 46 8C     .word ofs_057_8C46_00
- D - I - - 0x038C50 1C:8C40: 41 8D     .word ofs_057_8D41_01
- D - I - - 0x038C52 1C:8C42: 4E 8D     .word ofs_057_8D4E_02
- D - I - - 0x038C54 1C:8C44: 55 8D     .word ofs_057_8D55_03



ofs_057_8C46_00:
C - J - - - 0x038C56 1C:8C46: A9 00     LDA #$00
C - - - - - 0x038C58 1C:8C48: 85 46     STA ram_0046
bra_8C4A_loop:
C - - - - - 0x038C5A 1C:8C4A: A4 46     LDY ram_0046
C - - - - - 0x038C5C 1C:8C4C: B1 48     LDA (ram_0048),Y
C - - - - - 0x038C5E 1C:8C4E: 4A        LSR
C - - - - - 0x038C5F 1C:8C4F: 4A        LSR
C - - - - - 0x038C60 1C:8C50: 85 47     STA ram_0047
C - - - - - 0x038C62 1C:8C52: B1 48     LDA (ram_0048),Y
C - - - - - 0x038C64 1C:8C54: 29 03     AND #$03
C - - - - - 0x038C66 1C:8C56: C9 03     CMP #$03
C - - - - - 0x038C68 1C:8C58: F0 24     BEQ bra_8C7E_RTS
C - - - - - 0x038C6A 1C:8C5A: CD 4E 04  CMP ram_высота_мяча
C - - - - - 0x038C6D 1C:8C5D: D0 03     BNE bra_8C62
C - - - - - 0x038C6F 1C:8C5F: 20 7F 8C  JSR sub_8C7F
bra_8C62:
C - - - - - 0x038C72 1C:8C62: E6 46     INC ram_0046
C - - - - - 0x038C74 1C:8C64: A5 47     LDA ram_0047
C - - - - - 0x038C76 1C:8C66: C9 08     CMP #$08
C - - - - - 0x038C78 1C:8C68: F0 10     BEQ bra_8C7A
C - - - - - 0x038C7A 1C:8C6A: C9 09     CMP #$09
C - - - - - 0x038C7C 1C:8C6C: F0 0C     BEQ bra_8C7A
C - - - - - 0x038C7E 1C:8C6E: C9 0A     CMP #$0A
C - - - - - 0x038C80 1C:8C70: F0 08     BEQ bra_8C7A
C - - - - - 0x038C82 1C:8C72: C9 11     CMP #$11
C - - - - - 0x038C84 1C:8C74: F0 04     BEQ bra_8C7A
C - - - - - 0x038C86 1C:8C76: C9 13     CMP #$13
C - - - - - 0x038C88 1C:8C78: D0 D0     BNE bra_8C4A_loop
bra_8C7A:
C - - - - - 0x038C8A 1C:8C7A: E6 46     INC ram_0046
C - - - - - 0x038C8C 1C:8C7C: D0 CC     BNE bra_8C4A_loop
bra_8C7E_RTS:
C - - - - - 0x038C8E 1C:8C7E: 60        RTS



sub_8C7F:
C - - - - - 0x038C8F 1C:8C7F: A5 47     LDA ram_0047
C - - - - - 0x038C91 1C:8C81: 38        SEC
C - - - - - 0x038C92 1C:8C82: E9 03     SBC #$03
C - - - - - 0x038C94 1C:8C84: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
- D - I - - 0x038C97 1C:8C87: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038C99 1C:8C89: CC 8C     .word ofs_058_8CCC_01_проверка_на_драйв_оверхед
- D - I - - 0x038C9B 1C:8C8B: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038C9D 1C:8C8D: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038C9F 1C:8C8F: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CA1 1C:8C91: D4 8C     .word ofs_058_8CD4_05_06_10
- D - I - - 0x038CA3 1C:8C93: D4 8C     .word ofs_058_8CD4_05_06_10
- D - I - - 0x038CA5 1C:8C95: FA 8C     .word ofs_058_8CFA_07
- D - I - - 0x038CA7 1C:8C97: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CA9 1C:8C99: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CAB 1C:8C9B: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CAD 1C:8C9D: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CAF 1C:8C9F: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CB1 1C:8CA1: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CB3 1C:8CA3: 21 8D     .word ofs_058_8D21_0E
- D - I - - 0x038CB5 1C:8CA5: 2A 8D     .word ofs_058_8D2A_0F
- D - I - - 0x038CB7 1C:8CA7: D4 8C     .word ofs_058_8CD4_05_06_10
- D - I - - 0x038CB9 1C:8CA9: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CBB 1C:8CAB: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CBD 1C:8CAD: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CBF 1C:8CAF: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CC1 1C:8CB1: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CC3 1C:8CB3: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CC5 1C:8CB5: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CC7 1C:8CB7: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CC9 1C:8CB9: C7 8C     .word ofs_058_8CC7
- - - - - - 0x038CCB 1C:8CBB: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CCD 1C:8CBD: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CCF 1C:8CBF: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CD1 1C:8CC1: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CD3 1C:8CC3: C7 8C     .word ofs_058_8CC7
- D - I - - 0x038CD5 1C:8CC5: C7 8C     .word ofs_058_8CC7



bra_8CC7:
loc_8CC7:
ofs_058_8CC7:
C D J - - - 0x038CD7 1C:8CC7: A5 47     LDA ram_0047
C - - - - - 0x038CD9 1C:8CC9: 4C 11 8E  JMP loc_8E11



ofs_058_8CCC_01_проверка_на_драйв_оверхед:
C - J - - - 0x038CDC 1C:8CCC: AD 46 04  LDA ram_флаг_драйв_оверхеда
C - - - - - 0x038CDF 1C:8CCF: C9 05     CMP #$05
C - - - - - 0x038CE1 1C:8CD1: F0 F4     BEQ bra_8CC7    ; if наличие удара
C - - - - - 0x038CE3 1C:8CD3: 60        RTS



loc_8CD4:
ofs_058_8CD4_05_06_10:
C D J - - - 0x038CE4 1C:8CD4: A4 46     LDY ram_0046
C - - - - - 0x038CE6 1C:8CD6: C8        INY
C - - - - - 0x038CE7 1C:8CD7: B1 48     LDA (ram_0048),Y
C - - - - - 0x038CE9 1C:8CD9: C9 FF     CMP #$FF
C - - - - - 0x038CEB 1C:8CDB: F0 1A     BEQ bra_8CF7
C - - - - - 0x038CED 1C:8CDD: 85 45     STA ram_0045
C - - - - - 0x038CEF 1C:8CDF: A9 01     LDA #$01
bra_8CE1_loop:
C - - - - - 0x038CF1 1C:8CE1: 48        PHA
C - - - - - 0x038CF2 1C:8CE2: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038CF5 1C:8CE5: A0 00     LDY #con_plr_id
C - - - - - 0x038CF7 1C:8CE7: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038CF9 1C:8CE9: C5 45     CMP ram_0045
C - - - - - 0x038CFB 1C:8CEB: F0 09     BEQ bra_8CF6
C - - - - - 0x038CFD 1C:8CED: 68        PLA
C - - - - - 0x038CFE 1C:8CEE: 18        CLC
C - - - - - 0x038CFF 1C:8CEF: 69 01     ADC #$01
C - - - - - 0x038D01 1C:8CF1: C9 0B     CMP #$0B
C - - - - - 0x038D03 1C:8CF3: D0 EC     BNE bra_8CE1_loop
C - - - - - 0x038D05 1C:8CF5: 60        RTS
bra_8CF6:
C - - - - - 0x038D06 1C:8CF6: 68        PLA
bra_8CF7:
C - - - - - 0x038D07 1C:8CF7: 4C C7 8C  JMP loc_8CC7



ofs_058_8CFA_07:
C - J - - - 0x038D0A 1C:8CFA: A4 46     LDY ram_0046
C - - - - - 0x038D0C 1C:8CFC: C8        INY
C - - - - - 0x038D0D 1C:8CFD: B1 48     LDA (ram_0048),Y
C - - - - - 0x038D0F 1C:8CFF: C9 FF     CMP #$FF
C - - - - - 0x038D11 1C:8D01: D0 03     BNE bra_8D06
C - - - - - 0x038D13 1C:8D03: 4C C7 8C  JMP loc_8CC7
bra_8D06:
C - - - - - 0x038D16 1C:8D06: A9 01     LDA #$01
bra_8D08_loop:
C - - - - - 0x038D18 1C:8D08: 48        PHA
C - - - - - 0x038D19 1C:8D09: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038D1C 1C:8D0C: A0 00     LDY #con_plr_id
C - - - - - 0x038D1E 1C:8D0E: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038D20 1C:8D10: C9 1C     CMP #con_p_jito_my
C - - - - - 0x038D22 1C:8D12: F0 09     BEQ bra_8D1D
C - - - - - 0x038D24 1C:8D14: 68        PLA
C - - - - - 0x038D25 1C:8D15: 18        CLC
C - - - - - 0x038D26 1C:8D16: 69 01     ADC #$01
C - - - - - 0x038D28 1C:8D18: C9 0B     CMP #$0B
C - - - - - 0x038D2A 1C:8D1A: D0 EC     BNE bra_8D08_loop
- - - - - - 0x038D2C 1C:8D1C: 60        RTS
bra_8D1D:
C - - - - - 0x038D2D 1C:8D1D: 68        PLA
C - - - - - 0x038D2E 1C:8D1E: 4C D4 8C  JMP loc_8CD4



ofs_058_8D21_0E:
C - J - - - 0x038D31 1C:8D21: 2C 49 04  BIT ram_флаг_драйв_тигра
C - - - - - 0x038D34 1C:8D24: 10 03     BPL bra_8D29_RTS
C - - - - - 0x038D36 1C:8D26: 4C D4 8C  JMP loc_8CD4
bra_8D29_RTS:
C - - - - - 0x038D39 1C:8D29: 60        RTS



ofs_058_8D2A_0F:
C - J - - - 0x038D3A 1C:8D2A: AD 21 06  LDA ram_0621
C - - - - - 0x038D3D 1C:8D2D: C9 04     CMP #$04
C - - - - - 0x038D3F 1C:8D2F: F0 0C     BEQ bra_8D3D_RTS
C - - - - - 0x038D41 1C:8D31: AD 2B 00  LDA ram_команда_соперника
C - - - - - 0x038D44 1C:8D34: C9 21     CMP #$21
C - - - - - 0x038D46 1C:8D36: B0 06     BCS bra_8D3E
C - - - - - 0x038D48 1C:8D38: AD 48 04  LDA ram_флаг_циклона
C - - - - - 0x038D4B 1C:8D3B: D0 01     BNE bra_8D3E
bra_8D3D_RTS:
C - - - - - 0x038D4D 1C:8D3D: 60        RTS
bra_8D3E:
C - - - - - 0x038D4E 1C:8D3E: 4C C7 8C  JMP loc_8CC7



ofs_057_8D41_01:
C - J - - - 0x038D51 1C:8D41: AD 4E 04  LDA ram_высота_мяча
C - - - - - 0x038D54 1C:8D44: D0 07     BNE bra_8D4D_RTS
C - - - - - 0x038D56 1C:8D46: A0 00     LDY #$00
C - - - - - 0x038D58 1C:8D48: B1 48     LDA (ram_0048),Y
C - - - - - 0x038D5A 1C:8D4A: 4C 11 8E  JMP loc_8E11
bra_8D4D_RTS:
C - - - - - 0x038D5D 1C:8D4D: 60        RTS



ofs_057_8D4E_02:
C - J - - - 0x038D5E 1C:8D4E: A0 00     LDY #$00
C - - - - - 0x038D60 1C:8D50: B1 48     LDA (ram_0048),Y
C - - - - - 0x038D62 1C:8D52: 4C 11 8E  JMP loc_8E11



sub_8D58:
sub_0x038D68:
ofs_062_0x038D68_04:
C D - - - - 0x038D68 1C:8D58: A8        TAY
C - - - - - 0x038D69 1C:8D59: D0 03     BNE bra_8D5E
C - - - - - 0x038D6B 1C:8D5B: 4C A6 8D  JMP loc_8DA6
bra_8D5E:
C - - - - - 0x038D6E 1C:8D5E: C9 0B     CMP #$0B
C - - - - - 0x038D70 1C:8D60: D0 03     BNE bra_8D65
- - - - - - 0x038D72 1C:8D62: 4C A6 8D  JMP loc_8DA6
bra_8D65:
C - - - - - 0x038D75 1C:8D65: E0 03     CPX #$03
C - - - - - 0x038D77 1C:8D67: B0 1F     BCS bra_8D88
C - - - - - 0x038D79 1C:8D69: AC 4E 04  LDY ram_высота_мяча
C - - - - - 0x038D7C 1C:8D6C: F0 04     BEQ bra_8D72
C - - - - - 0x038D7E 1C:8D6E: E0 02     CPX #$02
C - - - - - 0x038D80 1C:8D70: D0 16     BNE bra_8D88
bra_8D72:
C - - - - - 0x038D82 1C:8D72: 20 C9 8D  JSR sub_8DC9_вычислить_адрес_спешалов_игрока
C - - - - - 0x038D85 1C:8D75: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x038D88 1C:8D78: 18        CLC
C - - - - - 0x038D89 1C:8D79: 69 04     ADC #$04
C - - - - - 0x038D8B 1C:8D7B: 0A        ASL
C - - - - - 0x038D8C 1C:8D7C: A8        TAY
C - - - - - 0x038D8D 1C:8D7D: B1 48     LDA (ram_0048),Y
C - - - - - 0x038D8F 1C:8D7F: C8        INY
C - - - - - 0x038D90 1C:8D80: D1 48     CMP (ram_0048),Y
C - - - - - 0x038D92 1C:8D82: D0 0A     BNE bra_8D8E
C - - - - - 0x038D94 1C:8D84: C9 00     CMP #$00
C - - - - - 0x038D96 1C:8D86: D0 06     BNE bra_8D8E
bra_8D88:
C - - - - - 0x038D98 1C:8D88: A9 00     LDA #$00
C - - - - - 0x038D9A 1C:8D8A: 8D 30 04  STA ram_список_спешалов
C - - - - - 0x038D9D 1C:8D8D: 60        RTS
bra_8D8E:
C - - - - - 0x038D9E 1C:8D8E: AA        TAX
C - - - - - 0x038D9F 1C:8D8F: B1 48     LDA (ram_0048),Y
C - - - - - 0x038DA1 1C:8D91: 85 49     STA ram_0049
C - - - - - 0x038DA3 1C:8D93: 86 48     STX ram_0048
C - - - - - 0x038DA5 1C:8D95: AD 30 04  LDA ram_список_спешалов
C - - - - - 0x038DA8 1C:8D98: A2 00     LDX #$00
C - - - - - 0x038DAA 1C:8D9A: 8E 30 04  STX ram_список_спешалов
C - - - - - 0x038DAD 1C:8D9D: 20 09 C5  JSR sub_0x03CBA9_поинтеры_после_JSR
; bzk optimize, одинаковые прыжки
- D - I - - 0x038DB0 1C:8DA0: E2 8D     .word ofs_061_8DE2_00
- D - I - - 0x038DB2 1C:8DA2: E2 8D     .word ofs_061_8DE2_01
- D - I - - 0x038DB4 1C:8DA4: E2 8D     .word ofs_061_8DE2_02



sub_8DA6:
loc_8DA6:
C D - - - - 0x038DB6 1C:8DA6: E0 00     CPX #$00
C - - - - - 0x038DB8 1C:8DA8: D0 10     BNE bra_8DBA
C - - - - - 0x038DBA 1C:8DAA: 20 C9 8D  JSR sub_8DC9_вычислить_адрес_спешалов_игрока
C - - - - - 0x038DBD 1C:8DAD: A0 00     LDY #$00
C - - - - - 0x038DBF 1C:8DAF: B1 48     LDA (ram_0048),Y
C - - - - - 0x038DC1 1C:8DB1: C8        INY
C - - - - - 0x038DC2 1C:8DB2: D1 48     CMP (ram_0048),Y
C - - - - - 0x038DC4 1C:8DB4: D0 0A     BNE bra_8DC0
C - - - - - 0x038DC6 1C:8DB6: C9 00     CMP #$00
C - - - - - 0x038DC8 1C:8DB8: D0 06     BNE bra_8DC0
bra_8DBA:
C - - - - - 0x038DCA 1C:8DBA: A9 00     LDA #$00
C - - - - - 0x038DCC 1C:8DBC: 8D 30 04  STA ram_список_спешалов
C - - - - - 0x038DCF 1C:8DBF: 60        RTS
bra_8DC0:
C - - - - - 0x038DD0 1C:8DC0: 8D 31 04  STA ram_список_спешалов + $01
C - - - - - 0x038DD3 1C:8DC3: A9 01     LDA #$01
C - - - - - 0x038DD5 1C:8DC5: 8D 30 04  STA ram_список_спешалов
C - - - - - 0x038DD8 1C:8DC8: 60        RTS



sub_8DC9_вычислить_адрес_спешалов_игрока:
C - - - - - 0x038DD9 1C:8DC9: 8E 30 04  STX ram_список_спешалов
C - - - - - 0x038DDC 1C:8DCC: 85 47     STA ram_0047
C - - - - - 0x038DDE 1C:8DCE: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038DE1 1C:8DD1: A0 00     LDY #con_plr_id
C - - - - - 0x038DE3 1C:8DD3: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038DE5 1C:8DD5: 0A        ASL
C - - - - - 0x038DE6 1C:8DD6: AA        TAX
C - - - - - 0x038DE7 1C:8DD7: BD 1B 8E  LDA tbl_8E1B_спешалы_игроков,X
C - - - - - 0x038DEA 1C:8DDA: 85 48     STA ram_0048
C - - - - - 0x038DEC 1C:8DDC: BD 1C 8E  LDA tbl_8E1B_спешалы_игроков + $01,X
C - - - - - 0x038DEF 1C:8DDF: 85 49     STA ram_0049
C - - - - - 0x038DF1 1C:8DE1: 60        RTS



ofs_057_8D55_03:
ofs_061_8DE2_00:
ofs_061_8DE2_01:
ofs_061_8DE2_02:
C D - - - - 0x038DF2 1C:8DE2: A0 00     LDY #$00
C - - - - - 0x038DF4 1C:8DE4: B1 48     LDA (ram_0048),Y
C - - - - - 0x038DF6 1C:8DE6: 10 05     BPL bra_8DED
C - - - - - 0x038DF8 1C:8DE8: 29 7F     AND #$7F
C - - - - - 0x038DFA 1C:8DEA: 4C 11 8E  JMP loc_8E11
bra_8DED:
C - - - - - 0x038DFD 1C:8DED: C8        INY ; 01
C - - - - - 0x038DFE 1C:8DEE: B1 48     LDA (ram_0048),Y
C - - - - - 0x038E00 1C:8DF0: 85 45     STA ram_0045
C - - - - - 0x038E02 1C:8DF2: A9 01     LDA #$01
bra_8DF4_loop:
C - - - - - 0x038E04 1C:8DF4: 48        PHA
C - - - - - 0x038E05 1C:8DF5: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x038E08 1C:8DF8: A0 00     LDY #con_plr_id
C - - - - - 0x038E0A 1C:8DFA: B1 34     LDA (ram_plr_data),Y    ; con_plr_id
C - - - - - 0x038E0C 1C:8DFC: C5 45     CMP ram_0045
C - - - - - 0x038E0E 1C:8DFE: F0 09     BEQ bra_8E09
C - - - - - 0x038E10 1C:8E00: 68        PLA
C - - - - - 0x038E11 1C:8E01: 18        CLC
C - - - - - 0x038E12 1C:8E02: 69 01     ADC #$01
C - - - - - 0x038E14 1C:8E04: C9 0B     CMP #$0B
C - - - - - 0x038E16 1C:8E06: D0 EC     BNE bra_8DF4_loop
C - - - - - 0x038E18 1C:8E08: 60        RTS
bra_8E09:
C - - - - - 0x038E19 1C:8E09: 68        PLA
C - - - - - 0x038E1A 1C:8E0A: A0 00     LDY #$00
C - - - - - 0x038E1C 1C:8E0C: B1 48     LDA (ram_0048),Y
C - - - - - 0x038E1E 1C:8E0E: 4C 11 8E  JMP loc_8E11    ; bzk optimize, бесполезный прыжок



loc_8E11:
C D - - - - 0x038E21 1C:8E11: AE 30 04  LDX ram_список_спешалов
C - - - - - 0x038E24 1C:8E14: 9D 31 04  STA ram_список_спешалов + $01,X
C - - - - - 0x038E27 1C:8E17: EE 30 04  INC ram_список_спешалов
C - - - - - 0x038E2A 1C:8E1A: 60        RTS



tbl_8E1B_спешалы_игроков:
- D - - - - 0x038E2B 1C:8E1B: 07 8F     .word off_8F07_no_special_abilities ; 00 p_clone
- D - - - - 0x038E2D 1C:8E1D: 17 8F     .word _off002_8F17_01_p_tsubasa_my
- - - - - - 0x038E2F 1C:8E1F: 07 8F     .word off_8F07_no_special_abilities ; 02 p_renato_my
- D - - - - 0x038E31 1C:8E21: 07 8F     .word off_8F07_no_special_abilities ; 03 p_lima_my
- D - - - - 0x038E33 1C:8E23: 07 8F     .word off_8F07_no_special_abilities ; 04 p_marini_my
- D - - - - 0x038E35 1C:8E25: 07 8F     .word off_8F07_no_special_abilities ; 05 p_amaral_my
- D - - - - 0x038E37 1C:8E27: 07 8F     .word off_8F07_no_special_abilities ; 06 p_dotor_my
- D - - - - 0x038E39 1C:8E29: 07 8F     .word off_8F07_no_special_abilities ; 07 p_batista_my
- D - - - - 0x038E3B 1C:8E2B: 07 8F     .word off_8F07_no_special_abilities ; 08 p_tahamata_my
- D - - - - 0x038E3D 1C:8E2D: 07 8F     .word off_8F07_no_special_abilities ; 09 p_babington_my
- D - - - - 0x038E3F 1C:8E2F: 07 8F     .word off_8F07_no_special_abilities ; 0A p_gil_my
- D - - - - 0x038E41 1C:8E31: 07 8F     .word off_8F07_no_special_abilities ; 0B p_platon_my
- D - - - - 0x038E43 1C:8E33: 07 8F     .word off_8F07_no_special_abilities ; 0C p_urabe_my
- D - - - - 0x038E45 1C:8E35: 07 8F     .word off_8F07_no_special_abilities ; 0D p_kishida_my
- D - - - - 0x038E47 1C:8E37: 07 8F     .word off_8F07_no_special_abilities ; 0E p_nakayama_my
- - - - - - 0x038E49 1C:8E39: 07 8F     .word off_8F07_no_special_abilities ; 0F p_morisaki_my
- D - - - - 0x038E4B 1C:8E3B: 07 8F     .word off_8F07_no_special_abilities ; 10 p_takasugi_my
- D - - - - 0x038E4D 1C:8E3D: 25 8F     .word _off002_8F25_11_p_misaki_my
- D - - - - 0x038E4F 1C:8E3F: 07 8F     .word off_8F07_no_special_abilities ; 12 p_izawa_my
- D - - - - 0x038E51 1C:8E41: 07 8F     .word off_8F07_no_special_abilities ; 13 p_taki_my
- D - - - - 0x038E53 1C:8E43: 33 8F     .word _off002_8F33_14_p_ishizaki_my
- D - - - - 0x038E55 1C:8E45: 41 8F     .word _off002_8F41_15_p_nitta_my
- D - - - - 0x038E57 1C:8E47: 07 8F     .word off_8F07_no_special_abilities ; 16 p_kisugi_my
- D - - - - 0x038E59 1C:8E49: 4F 8F     .word _off002_8F4F_17_p_masao_my
- D - - - - 0x038E5B 1C:8E4B: 5D 8F     .word _off002_8F5D_18_p_kazuo_my
- D - - - - 0x038E5D 1C:8E4D: 6B 8F     .word _off002_8F6B_19_p_sano_my
- D - - - - 0x038E5F 1C:8E4F: 79 8F     .word _off002_8F79_1A_p_hyuga_my
- D - - - - 0x038E61 1C:8E51: 87 8F     .word _off002_8F87_1B_p_soda_my
- D - - - - 0x038E63 1C:8E53: 95 8F     .word _off002_8F95_1C_p_jito_my
- D - - - - 0x038E65 1C:8E55: A3 8F     .word _off002_8FA3_1D_p_matsuyama_my
- - - - - - 0x038E67 1C:8E57: 07 8F     .word off_8F07_no_special_abilities ; 1E p_sorimachi_my
- - - - - - 0x038E69 1C:8E59: B1 8F     .word _off002_8FB1_1F_p_sawada_my
- D - - - - 0x038E6B 1C:8E5B: BF 8F     .word _off002_8FBF_20_p_misugi_my
- - - - - - 0x038E6D 1C:8E5D: 07 8F     .word off_8F07_no_special_abilities ; 21 p_wakabayashi_my
- - - - - - 0x038E6F 1C:8E5F: 07 8F     .word off_8F07_no_special_abilities ; 22 p_wakashimazu_my
- D - - - - 0x038E71 1C:8E61: CD 8F     .word _off002_8FCD_23_p_satrustegui_corinthians
- D - - - - 0x038E73 1C:8E63: DB 8F     .word _off002_8FDB_24_p_ribeiro_corinthians
- D - - - - 0x038E75 1C:8E65: 07 8F     .word off_8F07_no_special_abilities ; 25 p_da_silva_gremio
- - - - - - 0x038E77 1C:8E67: 07 8F     .word off_8F07_no_special_abilities ; 26 p_meon_gremio
- D - - - - 0x038E79 1C:8E69: E9 8F     .word _off002_8FE9_27_p_toninho_palmeiras
- D - - - - 0x038E7B 1C:8E6B: F7 8F     .word _off002_8FF7_28_p_nei_palmeiras
- D - - - - 0x038E7D 1C:8E6D: 05 90     .word _off002_9005_29_p_zagallo_santos
- D - - - - 0x038E7F 1C:8E6F: 13 90     .word _off002_9013_2A_p_dirceu_santos
- D - - - - 0x038E81 1C:8E71: 21 90     .word _off002_9021_2B_p_carlos_flamengo
- D - - - - 0x038E83 1C:8E73: 2F 90     .word _off002_902F_2C_p_santamaria_flamengo
- D - - - - 0x038E85 1C:8E75: 3D 90     .word _off002_903D_2D_p_jetorio_flamengo
- D - - - - 0x038E87 1C:8E77: 4B 90     .word _off002_904B_2E_p_jito_kunimi
- D - - - - 0x038E89 1C:8E79: 59 90     .word _off002_9059_2F_p_sano_kunimi
- D - - - - 0x038E8B 1C:8E7B: 67 90     .word _off002_9067_30_p_masao_akita
- D - - - - 0x038E8D 1C:8E7D: 75 90     .word _off002_9075_31_p_kazuo_akita
- D - - - - 0x038E8F 1C:8E7F: 83 90     .word _off002_9083_32_p_soda_tatsunami
- D - - - - 0x038E91 1C:8E81: 07 8F     .word off_8F07_no_special_abilities ; 33 p_nakanishi_tatsunami
- D - - - - 0x038E93 1C:8E83: 91 90     .word _off002_9091_34_p_misugi_musashi
- D - - - - 0x038E95 1C:8E85: 9F 90     .word _off002_909F_35_p_matsuyama_furano
- D - - - - 0x038E97 1C:8E87: AD 90     .word _off002_90AD_36_p_hyuga_toho
- D - - - - 0x038E99 1C:8E89: 07 8F     .word off_8F07_no_special_abilities ; 37 p_sorimachi_toho
- D - - - - 0x038E9B 1C:8E8B: BB 90     .word _off002_90BB_38_p_sorimachi_toho
- - - - - - 0x038E9D 1C:8E8D: 07 8F     .word off_8F07_no_special_abilities ; 39 p_wakashimazu_toho
- D - - - - 0x038E9F 1C:8E8F: C9 90     .word _off002_90C9_3A_p_rampion_as_roma
- D - - - - 0x038EA1 1C:8E91: D7 90     .word _off002_90D7_3B_p_victorino_uruguay
- D - - - - 0x038EA3 1C:8E93: 07 8F     .word off_8F07_no_special_abilities ; 3C p_da_silva_uruguay
- D - - - - 0x038EA5 1C:8E95: E5 90     .word _off002_90E5_3D_p_kappelman_hamburger_sv
- D - - - - 0x038EA7 1C:8E97: F3 90     .word _off002_90F3_3E_p_kaltz_hamburger_sv
- D - - - - 0x038EA9 1C:8E99: 01 91     .word _off002_9101_3F_p_metza_hamburger_sv
- D - - - - 0x038EAB 1C:8E9B: 07 8F     .word off_8F07_no_special_abilities ; 40 p_wakabayashi_hamburger_sv
- D - - - - 0x038EAD 1C:8E9D: 0F 91     .word _off002_910F_41_p_hyuga_japan
- D - - - - 0x038EAF 1C:8E9F: 1D 91     .word _off002_911D_42_p_nitta_japan
- D - - - - 0x038EB1 1C:8EA1: 2B 91     .word _off002_912B_43_p_sano_japan
- D - - - - 0x038EB3 1C:8EA3: 39 91     .word _off002_9139_44_p_misaki_japan
- D - - - - 0x038EB5 1C:8EA5: 47 91     .word _off002_9147_45_p_misugi_japan
- D - - - - 0x038EB7 1C:8EA7: 55 91     .word _off002_9155_46_p_masao_japan
- D - - - - 0x038EB9 1C:8EA9: 63 91     .word _off002_9163_47_p_kazuo_japan
- D - - - - 0x038EBB 1C:8EAB: 71 91     .word _off002_9171_48_p_jito_japan
- D - - - - 0x038EBD 1C:8EAD: 7F 91     .word _off002_917F_49_p_ishizaki_japan
- D - - - - 0x038EBF 1C:8EAF: 8D 91     .word _off002_918D_4A_p_soda_japan
- D - - - - 0x038EC1 1C:8EB1: 9B 91     .word _off002_919B_4B_p_matsuyama_japan
- - - - - - 0x038EC3 1C:8EB3: 07 8F     .word off_8F07_no_special_abilities ; 4C p_wakashimazu_japan
- D - - - - 0x038EC5 1C:8EB5: A9 91     .word _off002_91A9_4D_p_li_han_ne_china
- D - - - - 0x038EC7 1C:8EB7: B7 91     .word _off002_91B7_4E_p_li_ban_kun_china
- D - - - - 0x038EC9 1C:8EB9: C5 91     .word _off002_91C5_4F_p_sha_south_korea
- D - - - - 0x038ECB 1C:8EBB: D3 91     .word _off002_91D3_50_p_kim_south_korea
- D - - - - 0x038ECD 1C:8EBD: 07 8F     .word off_8F07_no_special_abilities ; 51 p_macher_poland
- D - - - - 0x038ECF 1C:8EBF: E1 91     .word _off002_91E1_52_p_djazic_poland ; GK
- D - - - - 0x038ED1 1C:8EC1: 07 8F     .word off_8F07_no_special_abilities ; 53 p_lorimar_england
- D - - - - 0x038ED3 1C:8EC3: 07 8F     .word off_8F07_no_special_abilities ; 54 p_robson_england
- D - - - - 0x038ED5 1C:8EC5: 07 8F     .word off_8F07_no_special_abilities ; 55 p_belyaev_soviet_union
- D - - - - 0x038ED7 1C:8EC7: FD 91     .word _off002_91FD_56_p_rashin_soviet_union ; GK
- D - - - - 0x038ED9 1C:8EC9: 0B 92     .word _off002_920B_57_p_napoleon_france
- D - - - - 0x038EDB 1C:8ECB: 19 92     .word _off002_9219_58_p_pierre_france
- D - - - - 0x038EDD 1C:8ECD: 07 8F     .word off_8F07_no_special_abilities ; 59 p_espana_mexico
- D - - - - 0x038EDF 1C:8ECF: 27 92     .word _off002_9227_5A_p_rampion_italy
- - - - - - 0x038EE1 1C:8ED1: 07 8F     .word off_8F07_no_special_abilities ; 5B p_hernandez_italy
- D - - - - 0x038EE3 1C:8ED3: 35 92     .word _off002_9235_5C_p_islas_netherlands
- D - - - - 0x038EE5 1C:8ED5: 43 92     .word _off002_9243_5D_p_libuta_netherlands
- D - - - - 0x038EE7 1C:8ED7: 51 92     .word _off002_9251_5E_p_pascal_argentina
- D - - - - 0x038EE9 1C:8ED9: 5F 92     .word _off002_925F_5F_p_satrustegui_argentina
- D - - - - 0x038EEB 1C:8EDB: 6D 92     .word _off002_926D_60_p_diaz_argentina
- D - - - - 0x038EED 1C:8EDD: 07 8F     .word off_8F07_no_special_abilities ; 61 p_babington_argentina
- D - - - - 0x038EEF 1C:8EDF: 7B 92     .word _off002_927B_62_p_galvan_argentina
- D - - - - 0x038EF1 1C:8EE1: 89 92     .word _off002_9289_63_p_schneider_west_germany
- D - - - - 0x038EF3 1C:8EE3: 07 8F     .word off_8F07_no_special_abilities ; 64 p_margus_west_germany
- D - - - - 0x038EF5 1C:8EE5: 97 92     .word _off002_9297_65_p_kaltz_west_germany
- D - - - - 0x038EF7 1C:8EE7: A5 92     .word _off002_92A5_66_p_metza_west_germany
- D - - - - 0x038EF9 1C:8EE9: 07 8F     .word off_8F07_no_special_abilities ; 67 p_schester_west_germany
- D - - - - 0x038EFB 1C:8EEB: B3 92     .word _off002_92B3_68_p_kappelman_west_germany
- - - - - - 0x038EFD 1C:8EED: 07 8F     .word off_8F07_no_special_abilities ; 69 p_muller_west_germany
- D - - - - 0x038EFF 1C:8EEF: C1 92     .word _off002_92C1_6A_p_carlos_brazil
- D - - - - 0x038F01 1C:8EF1: CF 92     .word _off002_92CF_6B_p_zagallo_brazil
- D - - - - 0x038F03 1C:8EF3: DD 92     .word _off002_92DD_6C_p_ribeiro_brazil
- D - - - - 0x038F05 1C:8EF5: EB 92     .word _off002_92EB_6D_p_nei_brazil
- D - - - - 0x038F07 1C:8EF7: F9 92     .word _off002_92F9_6E_p_santamaria_brazil
- D - - - - 0x038F09 1C:8EF9: 07 93     .word _off002_9307_6F_p_toninho_brazil
- D - - - - 0x038F0B 1C:8EFB: 07 8F     .word off_8F07_no_special_abilities ; 70 p_dotor_brazil
- D - - - - 0x038F0D 1C:8EFD: 07 8F     .word off_8F07_no_special_abilities ; 71 p_amaral_brazil
- D - - - - 0x038F0F 1C:8EFF: 15 93     .word _off002_9315_72_p_dirceu_brazil
- D - - - - 0x038F11 1C:8F01: 23 93     .word _off002_9323_73_p_jetorio_brazil
- D - - - - 0x038F13 1C:8F03: 31 93     .word _off002_9331_74_p_gertise_brazil ; GK
- D - - - - 0x038F15 1C:8F05: 3F 93     .word _off002_933F_75_p_coimbra_brazil



; везде по 14 байтов
; bzk optiize, перенести все внутренние ссылки под каждого игрока,
; чтобы наглядно было видно что и где
off_8F07_no_special_abilities:
- D - I - - 0x038F17 1C:8F07: 00 00     .word $0000 ; 00 
- D - I - - 0x038F19 1C:8F09: 00 00     .word $0000 ; 01 есть только у игроков с супер пасом
- D - I - - 0x038F1B 1C:8F0B: 00 00     .word $0000 ; 02 
- D - I - - 0x038F1D 1C:8F0D: 00 00     .word $0000 ; 03 
- D - I - - 0x038F1F 1C:8F0F: 00 00     .word $0000 ; 04 
- D - I - - 0x038F21 1C:8F11: 00 00     .word $0000 ; 05 
- D - I - - 0x038F23 1C:8F13: 00 00     .word $0000 ; 06 ссылка имеется только у братьев, вероятно проверка на наличие друг друга
; bzk garbage? (placeholder?)
- - - - - - 0x038F25 1C:8F15: 00 00     .word $0000



_off002_8F17_01_p_tsubasa_my:
- D - I - - 0x038F27 1C:8F17: 4D 93     .word off_934D ; 00 
- D - I - - 0x038F29 1C:8F19: 0A 94     .word off_940A ; 01 
- D - I - - 0x038F2B 1C:8F1B: 10 94     .word off_9410 ; 02 
- D - I - - 0x038F2D 1C:8F1D: 25 94     .word off_9425 ; 03 
- D - I - - 0x038F2F 1C:8F1F: 00 00     .word $0000 ; 04 
- D - I - - 0x038F31 1C:8F21: 00 00     .word $0000 ; 05 
- D - I - - 0x038F33 1C:8F23: 00 00     .word $0000 ; 06 



_off002_8F25_11_p_misaki_my:
- D - I - - 0x038F35 1C:8F25: 58 93     .word off_9358 ; 00 
- D - I - - 0x038F37 1C:8F27: 00 00     .word $0000 ; 01 
- D - I - - 0x038F39 1C:8F29: 00 00     .word $0000 ; 02 
- D - I - - 0x038F3B 1C:8F2B: 27 94     .word off_9427 ; 03 
- D - I - - 0x038F3D 1C:8F2D: 00 00     .word $0000 ; 04 
- D - I - - 0x038F3F 1C:8F2F: 00 00     .word $0000 ; 05 
- D - I - - 0x038F41 1C:8F31: 00 00     .word $0000 ; 06 



_off002_8F33_14_p_ishizaki_my:
- D - I - - 0x038F43 1C:8F33: 00 00     .word $0000 ; 00 
- D - I - - 0x038F45 1C:8F35: 00 00     .word $0000 ; 01 
- D - I - - 0x038F47 1C:8F37: 00 00     .word $0000 ; 02 
- D - I - - 0x038F49 1C:8F39: 00 00     .word $0000 ; 03 
- D - I - - 0x038F4B 1C:8F3B: 36 94     .word off_9436 ; 04 
- D - I - - 0x038F4D 1C:8F3D: 00 00     .word $0000 ; 05 
- D - I - - 0x038F4F 1C:8F3F: 00 00     .word $0000 ; 06 



_off002_8F41_15_p_nitta_my:
- D - I - - 0x038F51 1C:8F41: 5D 93     .word off_935D ; 00 
- D - I - - 0x038F53 1C:8F43: 00 00     .word $0000 ; 01 
- D - I - - 0x038F55 1C:8F45: 00 00     .word $0000 ; 02 
- D - I - - 0x038F57 1C:8F47: 00 00     .word $0000 ; 03 
- - - - - - 0x038F59 1C:8F49: 00 00     .word $0000 ; 04 
- D - I - - 0x038F5B 1C:8F4B: 00 00     .word $0000 ; 05 
- - - - - - 0x038F5D 1C:8F4D: 00 00     .word $0000 ; 06 



_off002_8F4F_17_p_masao_my:
- D - I - - 0x038F5F 1C:8F4F: 60 93     .word off_9360 ; 00 
- D - I - - 0x038F61 1C:8F51: 00 00     .word $0000 ; 01 
- D - I - - 0x038F63 1C:8F53: 00 00     .word $0000 ; 02 
- D - I - - 0x038F65 1C:8F55: 29 94     .word off_9429 ; 03 
- - - - - - 0x038F67 1C:8F57: 37 94     .word off_9437 ; 04 
- D - I - - 0x038F69 1C:8F59: 46 94     .word off_9446 ; 05 
- D - I - - 0x038F6B 1C:8F5B: 5A 94     .word off_945A ; 06 



_off002_8F5D_18_p_kazuo_my:
- D - I - - 0x038F6D 1C:8F5D: 69 93     .word off_9369 ; 00 
- D - I - - 0x038F6F 1C:8F5F: 00 00     .word $0000 ; 01 
- D - I - - 0x038F71 1C:8F61: 00 00     .word $0000 ; 02 
- D - I - - 0x038F73 1C:8F63: 2B 94     .word off_942B ; 03 
- - - - - - 0x038F75 1C:8F65: 39 94     .word off_9439 ; 04 
- D - I - - 0x038F77 1C:8F67: 48 94     .word off_9448 ; 05 
- D - I - - 0x038F79 1C:8F69: 5C 94     .word off_945C ; 06 



_off002_8F6B_19_p_sano_my:
- D - I - - 0x038F7B 1C:8F6B: 72 93     .word off_9372 ; 00 
- D - I - - 0x038F7D 1C:8F6D: 00 00     .word $0000 ; 01 
- D - I - - 0x038F7F 1C:8F6F: 00 00     .word $0000 ; 02 
- D - I - - 0x038F81 1C:8F71: 00 00     .word $0000 ; 03 
- - - - - - 0x038F83 1C:8F73: 00 00     .word $0000 ; 04 
- D - I - - 0x038F85 1C:8F75: 00 00     .word $0000 ; 05 
- D - I - - 0x038F87 1C:8F77: 00 00     .word $0000 ; 06 



_off002_8F79_1A_p_hyuga_my:
- D - I - - 0x038F89 1C:8F79: 74 93     .word off_9374 ; 00 
- D - I - - 0x038F8B 1C:8F7B: 00 00     .word $0000 ; 01 
- D - I - - 0x038F8D 1C:8F7D: 11 94     .word off_9411 ; 02 
- D - I - - 0x038F8F 1C:8F7F: 2D 94     .word off_942D ; 03 
- - - - - - 0x038F91 1C:8F81: 00 00     .word $0000 ; 04 
- D - I - - 0x038F93 1C:8F83: 4A 94     .word off_944A ; 05 
- D - I - - 0x038F95 1C:8F85: 00 00     .word $0000 ; 06 



_off002_8F87_1B_p_soda_my:
- D - I - - 0x038F97 1C:8F87: 78 93     .word off_9378 ; 00 
- D - I - - 0x038F99 1C:8F89: 0B 94     .word off_940B ; 01 
- D - I - - 0x038F9B 1C:8F8B: 00 00     .word $0000 ; 02 
- D - I - - 0x038F9D 1C:8F8D: 00 00     .word $0000 ; 03 
- D - I - - 0x038F9F 1C:8F8F: 00 00     .word $0000 ; 04 
- D - I - - 0x038FA1 1C:8F91: 4B 94     .word off_944B ; 05 
- D - I - - 0x038FA3 1C:8F93: 00 00     .word $0000 ; 06 



_off002_8F95_1C_p_jito_my:
- D - I - - 0x038FA5 1C:8F95: 7A 93     .word off_937A ; 00 
- D - I - - 0x038FA7 1C:8F97: 00 00     .word $0000 ; 01 
- D - I - - 0x038FA9 1C:8F99: 12 94     .word off_9412 ; 02 
- D - I - - 0x038FAB 1C:8F9B: 00 00     .word $0000 ; 03 
- D - I - - 0x038FAD 1C:8F9D: 3B 94     .word off_943B ; 04 
- D - I - - 0x038FAF 1C:8F9F: 4C 94     .word off_944C ; 05 
- - - - - - 0x038FB1 1C:8FA1: 00 00     .word $0000 ; 06 



_off002_8FA3_1D_p_matsuyama_my:
- D - I - - 0x038FB3 1C:8FA3: 7D 93     .word off_937D ; 00 
- D - I - - 0x038FB5 1C:8FA5: 00 00     .word $0000 ; 01 
- D - I - - 0x038FB7 1C:8FA7: 00 00     .word $0000 ; 02 
- - - - - - 0x038FB9 1C:8FA9: 00 00     .word $0000 ; 03 
- - - - - - 0x038FBB 1C:8FAB: 00 00     .word $0000 ; 04 
- D - I - - 0x038FBD 1C:8FAD: 00 00     .word $0000 ; 05 
- D - I - - 0x038FBF 1C:8FAF: 00 00     .word $0000 ; 06 



_off002_8FB1_1F_p_sawada_my:
- - - - - - 0x038FC1 1C:8FB1: 00 00     .word $0000 ; 00 
- - - - - - 0x038FC3 1C:8FB3: 00 00     .word $0000 ; 01 
- - - - - - 0x038FC5 1C:8FB5: 00 00     .word $0000 ; 02 
- - - - - - 0x038FC7 1C:8FB7: 2F 94     .word off_942F ; 03 
- - - - - - 0x038FC9 1C:8FB9: 00 00     .word $0000 ; 04 
- - - - - - 0x038FCB 1C:8FBB: 00 00     .word $0000 ; 05 
- - - - - - 0x038FCD 1C:8FBD: 00 00     .word $0000 ; 06 



_off002_8FBF_20_p_misugi_my:
- D - I - - 0x038FCF 1C:8FBF: 80 93     .word off_9380 ; 00 
- D - I - - 0x038FD1 1C:8FC1: 00 00     .word $0000 ; 01 
- D - I - - 0x038FD3 1C:8FC3: 00 00     .word $0000 ; 02 
- D - I - - 0x038FD5 1C:8FC5: 00 00     .word $0000 ; 03 
- D - I - - 0x038FD7 1C:8FC7: 00 00     .word $0000 ; 04 
- D - I - - 0x038FD9 1C:8FC9: 00 00     .word $0000 ; 05 
- D - I - - 0x038FDB 1C:8FCB: 00 00     .word $0000 ; 06 



_off002_8FCD_23_p_satrustegui_corinthians:
- D - I - - 0x038FDD 1C:8FCD: 82 93     .word off_9382 ; 00 
- D - I - - 0x038FDF 1C:8FCF: 00 00     .word $0000 ; 01 
- D - I - - 0x038FE1 1C:8FD1: 00 00     .word $0000 ; 02 
- D - I - - 0x038FE3 1C:8FD3: 00 00     .word $0000 ; 03 
- - - - - - 0x038FE5 1C:8FD5: 00 00     .word $0000 ; 04 
- D - I - - 0x038FE7 1C:8FD7: 00 00     .word $0000 ; 05 
- D - I - - 0x038FE9 1C:8FD9: 00 00     .word $0000 ; 06 



_off002_8FDB_24_p_ribeiro_corinthians:
- D - I - - 0x038FEB 1C:8FDB: 84 93     .word off_9384 ; 00 
- D - I - - 0x038FED 1C:8FDD: 00 00     .word $0000 ; 01 
- D - I - - 0x038FEF 1C:8FDF: 00 00     .word $0000 ; 02 
- D - I - - 0x038FF1 1C:8FE1: 00 00     .word $0000 ; 03 
- - - - - - 0x038FF3 1C:8FE3: 00 00     .word $0000 ; 04 
- D - I - - 0x038FF5 1C:8FE5: 00 00     .word $0000 ; 05 
- D - I - - 0x038FF7 1C:8FE7: 00 00     .word $0000 ; 06 



_off002_8FE9_27_p_toninho_palmeiras:
- D - I - - 0x038FF9 1C:8FE9: 86 93     .word off_9386 ; 00 
- D - I - - 0x038FFB 1C:8FEB: 00 00     .word $0000 ; 01 
- D - I - - 0x038FFD 1C:8FED: 00 00     .word $0000 ; 02 
- - - - - - 0x038FFF 1C:8FEF: 00 00     .word $0000 ; 03 
- - - - - - 0x039001 1C:8FF1: 00 00     .word $0000 ; 04 
- - - - - - 0x039003 1C:8FF3: 00 00     .word $0000 ; 05 
- D - I - - 0x039005 1C:8FF5: 00 00     .word $0000 ; 06 



_off002_8FF7_28_p_nei_palmeiras:
- D - I - - 0x039007 1C:8FF7: 88 93     .word off_9388 ; 00 
- D - I - - 0x039009 1C:8FF9: 00 00     .word $0000 ; 01 
- D - I - - 0x03900B 1C:8FFB: 13 94     .word off_9413 ; 02 
- - - - - - 0x03900D 1C:8FFD: 00 00     .word $0000 ; 03 
- - - - - - 0x03900F 1C:8FFF: 00 00     .word $0000 ; 04 
- D - I - - 0x039011 1C:9001: 00 00     .word $0000 ; 05 
- D - I - - 0x039013 1C:9003: 00 00     .word $0000 ; 06 



_off002_9005_29_p_zagallo_santos:
- D - I - - 0x039015 1C:9005: 8A 93     .word off_938A ; 00 
- D - I - - 0x039017 1C:9007: 00 00     .word $0000 ; 01 
- D - I - - 0x039019 1C:9009: 14 94     .word off_9414 ; 02 
- - - - - - 0x03901B 1C:900B: 00 00     .word $0000 ; 03 
- - - - - - 0x03901D 1C:900D: 00 00     .word $0000 ; 04 
- D - I - - 0x03901F 1C:900F: 00 00     .word $0000 ; 05 
- - - - - - 0x039021 1C:9011: 00 00     .word $0000 ; 06 



_off002_9013_2A_p_dirceu_santos:
- - - - - - 0x039023 1C:9013: 8C 93     .word off_938C ; 00 
- D - I - - 0x039025 1C:9015: 00 00     .word $0000 ; 01 
- D - I - - 0x039027 1C:9017: 00 00     .word $0000 ; 02 
- D - I - - 0x039029 1C:9019: 00 00     .word $0000 ; 03 
- D - I - - 0x03902B 1C:901B: 3C 94     .word off_943C ; 04 
- D - I - - 0x03902D 1C:901D: 4D 94     .word off_944D ; 05 
- - - - - - 0x03902F 1C:901F: 00 00     .word $0000 ; 06 



_off002_9021_2B_p_carlos_flamengo:
- D - I - - 0x039031 1C:9021: 8E 93     .word off_938E ; 00 
- D - I - - 0x039033 1C:9023: 00 00     .word $0000 ; 01 
- D - I - - 0x039035 1C:9025: 15 94     .word off_9415 ; 02 
- - - - - - 0x039037 1C:9027: 00 00     .word $0000 ; 03 
- - - - - - 0x039039 1C:9029: 00 00     .word $0000 ; 04 
- D - I - - 0x03903B 1C:902B: 00 00     .word $0000 ; 05 
- D - I - - 0x03903D 1C:902D: 00 00     .word $0000 ; 06 



_off002_902F_2C_p_santamaria_flamengo:
- D - I - - 0x03903F 1C:902F: 91 93     .word off_9391 ; 00 
- D - I - - 0x039041 1C:9031: 00 00     .word $0000 ; 01 
- D - I - - 0x039043 1C:9033: 00 00     .word $0000 ; 02 
- - - - - - 0x039045 1C:9035: 00 00     .word $0000 ; 03 
- D - I - - 0x039047 1C:9037: 00 00     .word $0000 ; 04 
- - - - - - 0x039049 1C:9039: 00 00     .word $0000 ; 05 
- - - - - - 0x03904B 1C:903B: 00 00     .word $0000 ; 06 



_off002_903D_2D_p_jetorio_flamengo:
- D - I - - 0x03904D 1C:903D: 93 93     .word off_9393 ; 00 
- - - - - - 0x03904F 1C:903F: 00 00     .word $0000 ; 01 
- - - - - - 0x039051 1C:9041: 00 00     .word $0000 ; 02 
- - - - - - 0x039053 1C:9043: 00 00     .word $0000 ; 03 
- - - - - - 0x039055 1C:9045: 00 00     .word $0000 ; 04 
- - - - - - 0x039057 1C:9047: 00 00     .word $0000 ; 05 
- - - - - - 0x039059 1C:9049: 00 00     .word $0000 ; 06 



_off002_904B_2E_p_jito_kunimi:
- D - I - - 0x03905B 1C:904B: 95 93     .word off_9395 ; 00 
- D - I - - 0x03905D 1C:904D: 00 00     .word $0000 ; 01 
- D - I - - 0x03905F 1C:904F: 16 94     .word off_9416 ; 02 
- - - - - - 0x039061 1C:9051: 00 00     .word $0000 ; 03 
- D - I - - 0x039063 1C:9053: 3D 94     .word off_943D ; 04 
- D - I - - 0x039065 1C:9055: 4E 94     .word off_944E ; 05 
- - - - - - 0x039067 1C:9057: 00 00     .word $0000 ; 06 



_off002_9059_2F_p_sano_kunimi:
- D - I - - 0x039069 1C:9059: 98 93     .word off_9398 ; 00 
- D - I - - 0x03906B 1C:905B: 00 00     .word $0000 ; 01 
- D - I - - 0x03906D 1C:905D: 00 00     .word $0000 ; 02 
- D - I - - 0x03906F 1C:905F: 00 00     .word $0000 ; 03 
- - - - - - 0x039071 1C:9061: 00 00     .word $0000 ; 04 
- - - - - - 0x039073 1C:9063: 00 00     .word $0000 ; 05 
- D - I - - 0x039075 1C:9065: 00 00     .word $0000 ; 06 



_off002_9067_30_p_masao_akita:
- D - I - - 0x039077 1C:9067: 9A 93     .word off_939A ; 00 
- D - I - - 0x039079 1C:9069: 00 00     .word $0000 ; 01 
- D - I - - 0x03907B 1C:906B: 00 00     .word $0000 ; 02 
- D - I - - 0x03907D 1C:906D: 31 94     .word off_9431 ; 03 
- - - - - - 0x03907F 1C:906F: 3E 94     .word off_943E ; 04 
- D - I - - 0x039081 1C:9071: 4F 94     .word off_944F ; 05 
- D - I - - 0x039083 1C:9073: 5E 94     .word off_945E ; 06 



_off002_9075_31_p_kazuo_akita:
- D - I - - 0x039085 1C:9075: 9F 93     .word off_939F ; 00 
- D - I - - 0x039087 1C:9077: 00 00     .word $0000 ; 01 
- D - I - - 0x039089 1C:9079: 00 00     .word $0000 ; 02 
- D - I - - 0x03908B 1C:907B: 31 94     .word off_9431 ; 03 
- - - - - - 0x03908D 1C:907D: 00 00     .word $0000 ; 04 
- D - I - - 0x03908F 1C:907F: 00 00     .word $0000 ; 05 
- - - - - - 0x039091 1C:9081: 00 00     .word $0000 ; 06 



_off002_9083_32_p_soda_tatsunami:
- D - I - - 0x039093 1C:9083: A4 93     .word off_93A4 ; 00 
- D - I - - 0x039095 1C:9085: 0C 94     .word off_940C ; 01 
- D - I - - 0x039097 1C:9087: 00 00     .word $0000 ; 02 
- - - - - - 0x039099 1C:9089: 00 00     .word $0000 ; 03 
- - - - - - 0x03909B 1C:908B: 00 00     .word $0000 ; 04 
- D - I - - 0x03909D 1C:908D: 50 94     .word off_9450 ; 05 
- - - - - - 0x03909F 1C:908F: 00 00     .word $0000 ; 06 



_off002_9091_34_p_misugi_musashi:
- D - I - - 0x0390A1 1C:9091: A6 93     .word off_93A6 ; 00 
- D - I - - 0x0390A3 1C:9093: 00 00     .word $0000 ; 01 
- D - I - - 0x0390A5 1C:9095: 00 00     .word $0000 ; 02 
- D - I - - 0x0390A7 1C:9097: 00 00     .word $0000 ; 03 
- - - - - - 0x0390A9 1C:9099: 00 00     .word $0000 ; 04 
- - - - - - 0x0390AB 1C:909B: 00 00     .word $0000 ; 05 
- D - I - - 0x0390AD 1C:909D: 00 00     .word $0000 ; 06 



_off002_909F_35_p_matsuyama_furano:
- D - I - - 0x0390AF 1C:909F: A8 93     .word off_93A8 ; 00 
- D - I - - 0x0390B1 1C:90A1: 00 00     .word $0000 ; 01 
- D - I - - 0x0390B3 1C:90A3: 00 00     .word $0000 ; 02 
- D - I - - 0x0390B5 1C:90A5: 00 00     .word $0000 ; 03 
- - - - - - 0x0390B7 1C:90A7: 00 00     .word $0000 ; 04 
- D - I - - 0x0390B9 1C:90A9: 00 00     .word $0000 ; 05 
- D - I - - 0x0390BB 1C:90AB: 00 00     .word $0000 ; 06 



_off002_90AD_36_p_hyuga_toho:
- D - I - - 0x0390BD 1C:90AD: AB 93     .word off_93AB ; 00 
- D - I - - 0x0390BF 1C:90AF: 00 00     .word $0000 ; 01 
- D - I - - 0x0390C1 1C:90B1: 17 94     .word off_9417 ; 02 
- D - I - - 0x0390C3 1C:90B3: 32 94     .word off_9432 ; 03 
- - - - - - 0x0390C5 1C:90B5: 00 00     .word $0000 ; 04 
- D - I - - 0x0390C7 1C:90B7: 51 94     .word off_9451 ; 05 
- - - - - - 0x0390C9 1C:90B9: 00 00     .word $0000 ; 06 



_off002_90BB_38_p_sorimachi_toho:
- D - I - - 0x0390CB 1C:90BB: 00 00     .word $0000 ; 00 
- D - I - - 0x0390CD 1C:90BD: 00 00     .word $0000 ; 01 
- D - I - - 0x0390CF 1C:90BF: 00 00     .word $0000 ; 02 
- D - I - - 0x0390D1 1C:90C1: 32 94     .word off_9432 ; 03 
- - - - - - 0x0390D3 1C:90C3: 00 00     .word $0000 ; 04 
- - - - - - 0x0390D5 1C:90C5: 00 00     .word $0000 ; 05 
- - - - - - 0x0390D7 1C:90C7: 00 00     .word $0000 ; 06 



_off002_90C9_3A_p_rampion_as_roma:
- D - I - - 0x0390D9 1C:90C9: AF 93     .word off_93AF ; 00 
- D - I - - 0x0390DB 1C:90CB: 00 00     .word $0000 ; 01 
- D - I - - 0x0390DD 1C:90CD: 00 00     .word $0000 ; 02 
- D - I - - 0x0390DF 1C:90CF: 00 00     .word $0000 ; 03 
- D - I - - 0x0390E1 1C:90D1: 00 00     .word $0000 ; 04 
- D - I - - 0x0390E3 1C:90D3: 00 00     .word $0000 ; 05 
- D - I - - 0x0390E5 1C:90D5: 00 00     .word $0000 ; 06 



_off002_90D7_3B_p_victorino_uruguay:
- D - I - - 0x0390E7 1C:90D7: B1 93     .word off_93B1 ; 00 
- D - I - - 0x0390E9 1C:90D9: 00 00     .word $0000 ; 01 
- D - I - - 0x0390EB 1C:90DB: 00 00     .word $0000 ; 02 
- - - - - - 0x0390ED 1C:90DD: 00 00     .word $0000 ; 03 
- D - I - - 0x0390EF 1C:90DF: 00 00     .word $0000 ; 04 
- - - - - - 0x0390F1 1C:90E1: 00 00     .word $0000 ; 05 
- D - I - - 0x0390F3 1C:90E3: 00 00     .word $0000 ; 06 



_off002_90E5_3D_p_kappelman_hamburger_sv:
- D - I - - 0x0390F5 1C:90E5: B3 93     .word off_93B3 ; 00 
- D - I - - 0x0390F7 1C:90E7: 00 00     .word $0000 ; 01 
- D - I - - 0x0390F9 1C:90E9: 00 00     .word $0000 ; 02 
- - - - - - 0x0390FB 1C:90EB: 00 00     .word $0000 ; 03 
- - - - - - 0x0390FD 1C:90ED: 00 00     .word $0000 ; 04 
- D - I - - 0x0390FF 1C:90EF: 00 00     .word $0000 ; 05 
- - - - - - 0x039101 1C:90F1: 00 00     .word $0000 ; 06 



_off002_90F3_3E_p_kaltz_hamburger_sv:
- D - I - - 0x039103 1C:90F3: 00 00     .word $0000 ; 00 
- D - I - - 0x039105 1C:90F5: 00 00     .word $0000 ; 01 
- D - I - - 0x039107 1C:90F7: 18 94     .word off_9418 ; 02 
- D - I - - 0x039109 1C:90F9: 00 00     .word $0000 ; 03 
- - - - - - 0x03910B 1C:90FB: 00 00     .word $0000 ; 04 
- D - I - - 0x03910D 1C:90FD: 00 00     .word $0000 ; 05 
- D - I - - 0x03910F 1C:90FF: 00 00     .word $0000 ; 06 



_off002_9101_3F_p_metza_hamburger_sv:
- - - - - - 0x039111 1C:9101: 00 00     .word $0000 ; 00 
- D - I - - 0x039113 1C:9103: 0D 94     .word off_940D ; 01 
- D - I - - 0x039115 1C:9105: 00 00     .word $0000 ; 02 
- - - - - - 0x039117 1C:9107: 00 00     .word $0000 ; 03 
- - - - - - 0x039119 1C:9109: 00 00     .word $0000 ; 04 
- - - - - - 0x03911B 1C:910B: 00 00     .word $0000 ; 05 
- D - I - - 0x03911D 1C:910D: 00 00     .word $0000 ; 06 



_off002_910F_41_p_hyuga_japan:
- D - I - - 0x03911F 1C:910F: B5 93     .word off_93B5 ; 00 
- D - I - - 0x039121 1C:9111: 00 00     .word $0000 ; 01 
- D - I - - 0x039123 1C:9113: 19 94     .word off_9419 ; 02 
- - - - - - 0x039125 1C:9115: 00 00     .word $0000 ; 03 
- - - - - - 0x039127 1C:9117: 00 00     .word $0000 ; 04 
- D - I - - 0x039129 1C:9119: 52 94     .word off_9452 ; 05 
- - - - - - 0x03912B 1C:911B: 00 00     .word $0000 ; 06 



_off002_911D_42_p_nitta_japan:
- - - - - - 0x03912D 1C:911D: B9 93     .word off_93B9 ; 00 
- - - - - - 0x03912F 1C:911F: 00 00     .word $0000 ; 01 
- - - - - - 0x039131 1C:9121: 00 00     .word $0000 ; 02 
- - - - - - 0x039133 1C:9123: 00 00     .word $0000 ; 03 
- - - - - - 0x039135 1C:9125: 00 00     .word $0000 ; 04 
- - - - - - 0x039137 1C:9127: 00 00     .word $0000 ; 05 
- D - I - - 0x039139 1C:9129: 00 00     .word $0000 ; 06 



_off002_912B_43_p_sano_japan:
- D - I - - 0x03913B 1C:912B: BC 93     .word off_93BC ; 00 
- D - I - - 0x03913D 1C:912D: 00 00     .word $0000 ; 01 
- D - I - - 0x03913F 1C:912F: 00 00     .word $0000 ; 02 
- D - I - - 0x039141 1C:9131: 00 00     .word $0000 ; 03 
- - - - - - 0x039143 1C:9133: 00 00     .word $0000 ; 04 
- - - - - - 0x039145 1C:9135: 00 00     .word $0000 ; 05 
- D - I - - 0x039147 1C:9137: 00 00     .word $0000 ; 06 



_off002_9139_44_p_misaki_japan:
- - - - - - 0x039149 1C:9139: BE 93     .word off_93BE ; 00 
- D - I - - 0x03914B 1C:913B: 00 00     .word $0000 ; 01 
- D - I - - 0x03914D 1C:913D: 00 00     .word $0000 ; 02 
- - - - - - 0x03914F 1C:913F: 00 00     .word $0000 ; 03 
- D - I - - 0x039151 1C:9141: 00 00     .word $0000 ; 04 
- - - - - - 0x039153 1C:9143: 00 00     .word $0000 ; 05 
- D - I - - 0x039155 1C:9145: 00 00     .word $0000 ; 06 



_off002_9147_45_p_misugi_japan:
- D - I - - 0x039157 1C:9147: C1 93     .word off_93C1 ; 00 
- D - I - - 0x039159 1C:9149: 00 00     .word $0000 ; 01 
- - - - - - 0x03915B 1C:914B: 00 00     .word $0000 ; 02 
- D - I - - 0x03915D 1C:914D: 00 00     .word $0000 ; 03 
- - - - - - 0x03915F 1C:914F: 00 00     .word $0000 ; 04 
- D - I - - 0x039161 1C:9151: 00 00     .word $0000 ; 05 
- - - - - - 0x039163 1C:9153: 00 00     .word $0000 ; 06 



_off002_9155_46_p_masao_japan:
- D - I - - 0x039165 1C:9155: C3 93     .word off_93C3 ; 00 
- D - I - - 0x039167 1C:9157: 00 00     .word $0000 ; 01 
- - - - - - 0x039169 1C:9159: 00 00     .word $0000 ; 02 
- - - - - - 0x03916B 1C:915B: 33 94     .word off_9433 ; 03 
- D - I - - 0x03916D 1C:915D: 3F 94     .word off_943F ; 04 
- - - - - - 0x03916F 1C:915F: 53 94     .word off_9453 ; 05 
- - - - - - 0x039171 1C:9161: 5F 94     .word off_945F ; 06 



_off002_9163_47_p_kazuo_japan:
- D - I - - 0x039173 1C:9163: C8 93     .word off_93C8 ; 00 
- D - I - - 0x039175 1C:9165: 00 00     .word $0000 ; 01 
- D - I - - 0x039177 1C:9167: 00 00     .word $0000 ; 02 
- D - I - - 0x039179 1C:9169: 33 94     .word off_9433 ; 03 
- D - I - - 0x03917B 1C:916B: 00 00     .word $0000 ; 04 
- D - I - - 0x03917D 1C:916D: 00 00     .word $0000 ; 05 
- - - - - - 0x03917F 1C:916F: 00 00     .word $0000 ; 06 



_off002_9171_48_p_jito_japan:
- D - I - - 0x039181 1C:9171: CD 93     .word off_93CD ; 00 
- D - I - - 0x039183 1C:9173: 00 00     .word $0000 ; 01 
- - - - - - 0x039185 1C:9175: 1A 94     .word off_941A ; 02 
- - - - - - 0x039187 1C:9177: 00 00     .word $0000 ; 03 
- - - - - - 0x039189 1C:9179: 40 94     .word off_9440 ; 04 
- D - I - - 0x03918B 1C:917B: 54 94     .word off_9454 ; 05 
- - - - - - 0x03918D 1C:917D: 00 00     .word $0000 ; 06 



_off002_917F_49_p_ishizaki_japan:
- - - - - - 0x03918F 1C:917F: 00 00     .word $0000 ; 00 
- - - - - - 0x039191 1C:9181: 00 00     .word $0000 ; 01 
- - - - - - 0x039193 1C:9183: 00 00     .word $0000 ; 02 
- - - - - - 0x039195 1C:9185: 00 00     .word $0000 ; 03 
- D - I - - 0x039197 1C:9187: 41 94     .word off_9441 ; 04 
- - - - - - 0x039199 1C:9189: 00 00     .word $0000 ; 05 
- - - - - - 0x03919B 1C:918B: 00 00     .word $0000 ; 06 



_off002_918D_4A_p_soda_japan:
- - - - - - 0x03919D 1C:918D: D0 93     .word off_93D0 ; 00 
- D - I - - 0x03919F 1C:918F: 0E 94     .word off_940E ; 01 
- D - I - - 0x0391A1 1C:9191: 00 00     .word $0000 ; 02 
- - - - - - 0x0391A3 1C:9193: 00 00     .word $0000 ; 03 
- - - - - - 0x0391A5 1C:9195: 00 00     .word $0000 ; 04 
- D - I - - 0x0391A7 1C:9197: 55 94     .word off_9455 ; 05 
- - - - - - 0x0391A9 1C:9199: 00 00     .word $0000 ; 06 



_off002_919B_4B_p_matsuyama_japan:
- D - I - - 0x0391AB 1C:919B: D2 93     .word off_93D2 ; 00 
- - - - - - 0x0391AD 1C:919D: 00 00     .word $0000 ; 01 
- - - - - - 0x0391AF 1C:919F: 00 00     .word $0000 ; 02 
- - - - - - 0x0391B1 1C:91A1: 00 00     .word $0000 ; 03 
- D - I - - 0x0391B3 1C:91A3: 00 00     .word $0000 ; 04 
- D - I - - 0x0391B5 1C:91A5: 00 00     .word $0000 ; 05 
- D - I - - 0x0391B7 1C:91A7: 00 00     .word $0000 ; 06 



_off002_91A9_4D_p_li_han_ne_china:
- D - I - - 0x0391B9 1C:91A9: D5 93     .word off_93D5 ; 00 
- - - - - - 0x0391BB 1C:91AB: 00 00     .word $0000 ; 01 
- D - I - - 0x0391BD 1C:91AD: 00 00     .word $0000 ; 02 
- D - I - - 0x0391BF 1C:91AF: 00 00     .word $0000 ; 03 
- - - - - - 0x0391C1 1C:91B1: 00 00     .word $0000 ; 04 
- D - I - - 0x0391C3 1C:91B3: 00 00     .word $0000 ; 05 
- - - - - - 0x0391C5 1C:91B5: 00 00     .word $0000 ; 06 



_off002_91B7_4E_p_li_ban_kun_china:
- D - I - - 0x0391C7 1C:91B7: D7 93     .word off_93D7 ; 00 
- - - - - - 0x0391C9 1C:91B9: 00 00     .word $0000 ; 01 
- - - - - - 0x0391CB 1C:91BB: 00 00     .word $0000 ; 02 
- - - - - - 0x0391CD 1C:91BD: 00 00     .word $0000 ; 03 
- - - - - - 0x0391CF 1C:91BF: 00 00     .word $0000 ; 04 
- D - I - - 0x0391D1 1C:91C1: 00 00     .word $0000 ; 05 
- D - I - - 0x0391D3 1C:91C3: 00 00     .word $0000 ; 06 



_off002_91C5_4F_p_sha_south_korea:
- D - I - - 0x0391D5 1C:91C5: D9 93     .word off_93D9 ; 00 
- D - I - - 0x0391D7 1C:91C7: 00 00     .word $0000 ; 01 
- - - - - - 0x0391D9 1C:91C9: 1B 94     .word off_941B ; 02 
- D - I - - 0x0391DB 1C:91CB: 00 00     .word $0000 ; 03 
- - - - - - 0x0391DD 1C:91CD: 00 00     .word $0000 ; 04 
- - - - - - 0x0391DF 1C:91CF: 00 00     .word $0000 ; 05 
- - - - - - 0x0391E1 1C:91D1: 00 00     .word $0000 ; 06 



_off002_91D3_50_p_kim_south_korea:
- D - I - - 0x0391E3 1C:91D3: DC 93     .word off_93DC ; 00 
- D - I - - 0x0391E5 1C:91D5: 00 00     .word $0000 ; 01 
- D - I - - 0x0391E7 1C:91D7: 00 00     .word $0000 ; 02 
- - - - - - 0x0391E9 1C:91D9: 00 00     .word $0000 ; 03 
- - - - - - 0x0391EB 1C:91DB: 00 00     .word $0000 ; 04 
- - - - - - 0x0391ED 1C:91DD: 00 00     .word $0000 ; 05 
- - - - - - 0x0391EF 1C:91DF: 00 00     .word $0000 ; 06 



_off002_91E1_52_p_djazic_poland:
; !!! 0001 вместо ссылки
- D - I - - 0x0391F1 1C:91E1: 01 00     .word $0001 ; 00
- - - - - - 0x0391F3 1C:91E3: 00 00     .word $0000 ; 01 
- - - - - - 0x0391F5 1C:91E5: 00 00     .word $0000 ; 02 
- - - - - - 0x0391F7 1C:91E7: 00 00     .word $0000 ; 03 
- - - - - - 0x0391F9 1C:91E9: 00 00     .word $0000 ; 04 
- - - - - - 0x0391FB 1C:91EB: 00 00     .word $0000 ; 05 
- - - - - - 0x0391FD 1C:91ED: 00 00     .word $0000 ; 06 


; bzk garbage?
- - - - - - 0x0391FF 1C:91EF: 00 00     .word $0000 ; 00 
- - - - - - 0x039201 1C:91F1: 00 00     .word $0000 ; 01 
- - - - - - 0x039203 1C:91F3: 1C 94     .word off_941C ; 02 
- - - - - - 0x039205 1C:91F5: 00 00     .word $0000 ; 03 
- - - - - - 0x039207 1C:91F7: 42 94     .word off_9442 ; 04 
- - - - - - 0x039209 1C:91F9: 56 94     .word off_9456 ; 05 
- - - - - - 0x03920B 1C:91FB: 00 00     .word $0000 ; 06 



_off002_91FD_56_p_rashin_soviet_union:
; !!! 0002 вместо ссылки
- D - I - - 0x03920D 1C:91FD: 02 00     .word $0002 ; 00
- - - - - - 0x03920F 1C:91FF: 00 00     .word $0000 ; 01 
- - - - - - 0x039211 1C:9201: 00 00     .word $0000 ; 02
- - - - - - 0x039213 1C:9203: 00 00     .word $0000 ; 03
- - - - - - 0x039215 1C:9205: 00 00     .word $0000 ; 04
- - - - - - 0x039217 1C:9207: 00 00     .word $0000 ; 05
- - - - - - 0x039219 1C:9209: 00 00     .word $0000 ; 06



_off002_920B_57_p_napoleon_france:
- D - I - - 0x03921B 1C:920B: DF 93     .word off_93DF ; 00 
- D - I - - 0x03921D 1C:920D: 00 00     .word $0000 ; 01 
- D - I - - 0x03921F 1C:920F: 1D 94     .word off_941D ; 02 
- D - I - - 0x039221 1C:9211: 34 94     .word off_9434 ; 03 
- D - I - - 0x039223 1C:9213: 00 00     .word $0000 ; 04 
- D - I - - 0x039225 1C:9215: 00 00     .word $0000 ; 05 
- D - I - - 0x039227 1C:9217: 00 00     .word $0000 ; 06 



_off002_9219_58_p_pierre_france:
- D - I - - 0x039229 1C:9219: E3 93     .word off_93E3 ; 00 
- D - I - - 0x03922B 1C:921B: 00 00     .word $0000 ; 01 
- D - I - - 0x03922D 1C:921D: 00 00     .word $0000 ; 02 
- D - I - - 0x03922F 1C:921F: 34 94     .word off_9434 ; 03 
- - - - - - 0x039231 1C:9221: 00 00     .word $0000 ; 04 
- D - I - - 0x039233 1C:9223: 00 00     .word $0000 ; 05 
- D - I - - 0x039235 1C:9225: 00 00     .word $0000 ; 06 



_off002_9227_5A_p_rampion_italy:
- D - I - - 0x039237 1C:9227: E7 93     .word off_93E7 ; 00 
- D - I - - 0x039239 1C:9229: 00 00     .word $0000 ; 01 
- D - I - - 0x03923B 1C:922B: 00 00     .word $0000 ; 02 
- D - I - - 0x03923D 1C:922D: 00 00     .word $0000 ; 03 
- - - - - - 0x03923F 1C:922F: 00 00     .word $0000 ; 04 
- D - I - - 0x039241 1C:9231: 00 00     .word $0000 ; 05 
- D - I - - 0x039243 1C:9233: 00 00     .word $0000 ; 06 



_off002_9235_5C_p_islas_netherlands:
- D - I - - 0x039245 1C:9235: E9 93     .word off_93E9 ; 00 
- D - I - - 0x039247 1C:9237: 00 00     .word $0000 ; 01 
- D - I - - 0x039249 1C:9239: 1E 94     .word off_941E ; 02 
- - - - - - 0x03924B 1C:923B: 00 00     .word $0000 ; 03 
- D - I - - 0x03924D 1C:923D: 00 00     .word $0000 ; 04 
- D - I - - 0x03924F 1C:923F: 00 00     .word $0000 ; 05 
- D - I - - 0x039251 1C:9241: 00 00     .word $0000 ; 06 



_off002_9243_5D_p_libuta_netherlands:
- D - I - - 0x039253 1C:9243: 00 00     .word $0000 ; 00 
- D - I - - 0x039255 1C:9245: 00 00     .word $0000 ; 01 
- D - I - - 0x039257 1C:9247: 1F 94     .word off_941F ; 02 
- - - - - - 0x039259 1C:9249: 00 00     .word $0000 ; 03 
- D - I - - 0x03925B 1C:924B: 43 94     .word off_9443 ; 04 
- D - I - - 0x03925D 1C:924D: 57 94     .word off_9457 ; 05 
- - - - - - 0x03925F 1C:924F: 00 00     .word $0000 ; 06 



_off002_9251_5E_p_pascal_argentina:
- - - - - - 0x039261 1C:9251: 00 00     .word $0000 ; 00 
- D - I - - 0x039263 1C:9253: 00 00     .word $0000 ; 01 
- D - I - - 0x039265 1C:9255: 00 00     .word $0000 ; 02 
- - - - - - 0x039267 1C:9257: 35 94     .word off_9435 ; 03 
- D - I - - 0x039269 1C:9259: 00 00     .word $0000 ; 04 
- D - I - - 0x03926B 1C:925B: 00 00     .word $0000 ; 05 
- D - I - - 0x03926D 1C:925D: 00 00     .word $0000 ; 06 



_off002_925F_5F_p_satrustegui_argentina:
- D - I - - 0x03926F 1C:925F: EB 93     .word off_93EB ; 00 
- D - I - - 0x039271 1C:9261: 00 00     .word $0000 ; 01 
- D - I - - 0x039273 1C:9263: 00 00     .word $0000 ; 02 
- - - - - - 0x039275 1C:9265: 00 00     .word $0000 ; 03 
- - - - - - 0x039277 1C:9267: 00 00     .word $0000 ; 04 
- D - I - - 0x039279 1C:9269: 00 00     .word $0000 ; 05 
- - - - - - 0x03927B 1C:926B: 00 00     .word $0000 ; 06 



_off002_926D_60_p_diaz_argentina:
- D - I - - 0x03927D 1C:926D: ED 93     .word off_93ED ; 00 
- - - - - - 0x03927F 1C:926F: 00 00     .word $0000 ; 01 
- D - I - - 0x039281 1C:9271: 00 00     .word $0000 ; 02 
- D - I - - 0x039283 1C:9273: 35 94     .word off_9435 ; 03 
- D - I - - 0x039285 1C:9275: 00 00     .word $0000 ; 04 
- D - I - - 0x039287 1C:9277: 00 00     .word $0000 ; 05 
- D - I - - 0x039289 1C:9279: 00 00     .word $0000 ; 06 



_off002_927B_62_p_galvan_argentina:
- - - - - - 0x03928B 1C:927B: 00 00     .word $0000 ; 00 
- D - I - - 0x03928D 1C:927D: 00 00     .word $0000 ; 01 
- D - I - - 0x03928F 1C:927F: 20 94     .word off_9420 ; 02 
- - - - - - 0x039291 1C:9281: 00 00     .word $0000 ; 03 
- D - I - - 0x039293 1C:9283: 44 94     .word off_9444 ; 04 
- - - - - - 0x039295 1C:9285: 58 94     .word off_9458 ; 05 
- - - - - - 0x039297 1C:9287: 00 00     .word $0000 ; 06 



_off002_9289_63_p_schneider_west_germany:
- D - I - - 0x039299 1C:9289: F1 93     .word off_93F1 ; 00 
- D - I - - 0x03929B 1C:928B: 00 00     .word $0000 ; 01 
- D - I - - 0x03929D 1C:928D: 00 00     .word $0000 ; 02 
- - - - - - 0x03929F 1C:928F: 00 00     .word $0000 ; 03 
- - - - - - 0x0392A1 1C:9291: 00 00     .word $0000 ; 04 
- D - I - - 0x0392A3 1C:9293: 00 00     .word $0000 ; 05 
- D - I - - 0x0392A5 1C:9295: 00 00     .word $0000 ; 06 



_off002_9297_65_p_kaltz_west_germany:
- - - - - - 0x0392A7 1C:9297: 00 00     .word $0000 ; 00 
- D - I - - 0x0392A9 1C:9299: 00 00     .word $0000 ; 01 
- D - I - - 0x0392AB 1C:929B: 21 94     .word off_9421 ; 02 
- - - - - - 0x0392AD 1C:929D: 00 00     .word $0000 ; 03 
- D - I - - 0x0392AF 1C:929F: 00 00     .word $0000 ; 04 
- D - I - - 0x0392B1 1C:92A1: 00 00     .word $0000 ; 05 
- D - I - - 0x0392B3 1C:92A3: 00 00     .word $0000 ; 06 



_off002_92A5_66_p_metza_west_germany:
- - - - - - 0x0392B5 1C:92A5: 00 00     .word $0000 ; 00 
- - - - - - 0x0392B7 1C:92A7: 0F 94     .word off_940F ; 01 
- - - - - - 0x0392B9 1C:92A9: 00 00     .word $0000 ; 02 
- - - - - - 0x0392BB 1C:92AB: 00 00     .word $0000 ; 03 
- D - I - - 0x0392BD 1C:92AD: 00 00     .word $0000 ; 04 
- - - - - - 0x0392BF 1C:92AF: 00 00     .word $0000 ; 05 
- - - - - - 0x0392C1 1C:92B1: 00 00     .word $0000 ; 06 



_off002_92B3_68_p_kappelman_west_germany:
- D - I - - 0x0392C3 1C:92B3: F4 93     .word off_93F4 ; 00 
- D - I - - 0x0392C5 1C:92B5: 00 00     .word $0000 ; 01 
- D - I - - 0x0392C7 1C:92B7: 00 00     .word $0000 ; 02 
- D - I - - 0x0392C9 1C:92B9: 00 00     .word $0000 ; 03 
- - - - - - 0x0392CB 1C:92BB: 00 00     .word $0000 ; 04 
- D - I - - 0x0392CD 1C:92BD: 00 00     .word $0000 ; 05 
- D - I - - 0x0392CF 1C:92BF: 00 00     .word $0000 ; 06 



_off002_92C1_6A_p_carlos_brazil:
- D - I - - 0x0392D1 1C:92C1: F6 93     .word off_93F6 ; 00 
- D - I - - 0x0392D3 1C:92C3: 00 00     .word $0000 ; 01 
- D - I - - 0x0392D5 1C:92C5: 22 94     .word off_9422 ; 02 
- - - - - - 0x0392D7 1C:92C7: 00 00     .word $0000 ; 03 
- - - - - - 0x0392D9 1C:92C9: 00 00     .word $0000 ; 04 
- D - I - - 0x0392DB 1C:92CB: 00 00     .word $0000 ; 05 
- D - I - - 0x0392DD 1C:92CD: 00 00     .word $0000 ; 06 



_off002_92CF_6B_p_zagallo_brazil:
- D - I - - 0x0392DF 1C:92CF: F9 93     .word off_93F9 ; 00 
- D - I - - 0x0392E1 1C:92D1: 00 00     .word $0000 ; 01 
- D - I - - 0x0392E3 1C:92D3: 23 94     .word off_9423 ; 02 
- - - - - - 0x0392E5 1C:92D5: 00 00     .word $0000 ; 03 
- - - - - - 0x0392E7 1C:92D7: 00 00     .word $0000 ; 04 
- D - I - - 0x0392E9 1C:92D9: 00 00     .word $0000 ; 05 
- D - I - - 0x0392EB 1C:92DB: 00 00     .word $0000 ; 06 



_off002_92DD_6C_p_ribeiro_brazil:
- - - - - - 0x0392ED 1C:92DD: FB 93     .word off_93FB ; 00 
- D - I - - 0x0392EF 1C:92DF: 00 00     .word $0000 ; 01 
- D - I - - 0x0392F1 1C:92E1: 00 00     .word $0000 ; 02 
- - - - - - 0x0392F3 1C:92E3: 00 00     .word $0000 ; 03 
- - - - - - 0x0392F5 1C:92E5: 00 00     .word $0000 ; 04 
- D - I - - 0x0392F7 1C:92E7: 00 00     .word $0000 ; 05 
- - - - - - 0x0392F9 1C:92E9: 00 00     .word $0000 ; 06 



_off002_92EB_6D_p_nei_brazil:
- D - I - - 0x0392FB 1C:92EB: FD 93     .word off_93FD ; 00 
- D - I - - 0x0392FD 1C:92ED: 00 00     .word $0000 ; 01 
- D - I - - 0x0392FF 1C:92EF: 24 94     .word off_9424 ; 02 
- - - - - - 0x039301 1C:92F1: 00 00     .word $0000 ; 03 
- - - - - - 0x039303 1C:92F3: 00 00     .word $0000 ; 04 
- - - - - - 0x039305 1C:92F5: 00 00     .word $0000 ; 05 
- D - I - - 0x039307 1C:92F7: 00 00     .word $0000 ; 06 



_off002_92F9_6E_p_santamaria_brazil:
- D - I - - 0x039309 1C:92F9: FF 93     .word off_93FF ; 00 
- D - I - - 0x03930B 1C:92FB: 00 00     .word $0000 ; 01 
- D - I - - 0x03930D 1C:92FD: 00 00     .word $0000 ; 02 
- - - - - - 0x03930F 1C:92FF: 00 00     .word $0000 ; 03 
- D - I - - 0x039311 1C:9301: 00 00     .word $0000 ; 04 
- D - I - - 0x039313 1C:9303: 00 00     .word $0000 ; 05 
- D - I - - 0x039315 1C:9305: 00 00     .word $0000 ; 06 



_off002_9307_6F_p_toninho_brazil:
- D - I - - 0x039317 1C:9307: 01 94     .word off_9401 ; 00 
- D - I - - 0x039319 1C:9309: 00 00     .word $0000 ; 01 
- - - - - - 0x03931B 1C:930B: 00 00     .word $0000 ; 02 
- - - - - - 0x03931D 1C:930D: 00 00     .word $0000 ; 03 
- - - - - - 0x03931F 1C:930F: 00 00     .word $0000 ; 04 
- - - - - - 0x039321 1C:9311: 00 00     .word $0000 ; 05 
- - - - - - 0x039323 1C:9313: 00 00     .word $0000 ; 06 



_off002_9315_72_p_dirceu_brazil:
- - - - - - 0x039325 1C:9315: 03 94     .word off_9403 ; 00 
- - - - - - 0x039327 1C:9317: 00 00     .word $0000 ; 01 
- - - - - - 0x039329 1C:9319: 00 00     .word $0000 ; 02 
- - - - - - 0x03932B 1C:931B: 00 00     .word $0000 ; 03 
- D - I - - 0x03932D 1C:931D: 45 94     .word off_9445 ; 04 
- D - I - - 0x03932F 1C:931F: 59 94     .word off_9459 ; 05 
- - - - - - 0x039331 1C:9321: 00 00     .word $0000 ; 06 



_off002_9323_73_p_jetorio_brazil:
- - - - - - 0x039333 1C:9323: 05 94     .word off_9405 ; 00 
- D - I - - 0x039335 1C:9325: 00 00     .word $0000 ; 01 
- - - - - - 0x039337 1C:9327: 00 00     .word $0000 ; 02 
- - - - - - 0x039339 1C:9329: 00 00     .word $0000 ; 03 
- - - - - - 0x03933B 1C:932B: 00 00     .word $0000 ; 04 
- D - I - - 0x03933D 1C:932D: 00 00     .word $0000 ; 05 
- - - - - - 0x03933F 1C:932F: 00 00     .word $0000 ; 06 



_off002_9331_74_p_gertise_brazil:
; !!! 0003 вместо ссылки
- D - I - - 0x039341 1C:9331: 03 00     .word $0003 ; 00
- - - - - - 0x039343 1C:9333: 00 00     .word $0000 ; 01 
- - - - - - 0x039345 1C:9335: 00 00     .word $0000 ; 02
- - - - - - 0x039347 1C:9337: 00 00     .word $0000 ; 03
- - - - - - 0x039349 1C:9339: 00 00     .word $0000 ; 04
- - - - - - 0x03934B 1C:933B: 00 00     .word $0000 ; 05
- - - - - - 0x03934D 1C:933D: 00 00     .word $0000 ; 06



_off002_933F_75_p_coimbra_brazil:
- D - I - - 0x03934F 1C:933F: 07 94     .word off_9407 ; 00 
- D - I - - 0x039351 1C:9341: 00 00     .word $0000 ; 01 
- D - I - - 0x039353 1C:9343: 00 00     .word $0000 ; 02 
- - - - - - 0x039355 1C:9345: 00 00     .word $0000 ; 03 
- - - - - - 0x039357 1C:9347: 00 00     .word $0000 ; 04 
- D - I - - 0x039359 1C:9349: 00 00     .word $0000 ; 05 
- D - I - - 0x03935B 1C:934B: 00 00     .word $0000 ; 06 



off_934D:
- D - I - - 0x03935D 1C:934D: 0C        .byte $0C
- D - I - - 0x03935E 1C:934E: 3A        .byte $3A
- D - I - - 0x03935F 1C:934F: 12        .byte $12
- D - I - - 0x039360 1C:9350: 25        .byte $25
- D - I - - 0x039361 1C:9351: 11        .byte $11
- D - I - - 0x039362 1C:9352: 48        .byte $48
- D - I - - 0x039363 1C:9353: 4A        .byte $4A
- D - I - - 0x039364 1C:9354: 49        .byte $49
- D - I - - 0x039365 1C:9355: 44        .byte $44
- D - I - - 0x039366 1C:9356: 1A        .byte $1A
- D - I - - 0x039367 1C:9357: 03        .byte $03

off_9358:
- D - I - - 0x039368 1C:9358: 25        .byte $25
- D - I - - 0x039369 1C:9359: 01        .byte $01
- D - I - - 0x03936A 1C:935A: 3A        .byte $3A
- D - I - - 0x03936B 1C:935B: 41        .byte $41
- D - I - - 0x03936C 1C:935C: 03        .byte $03

off_935D:
- D - I - - 0x03936D 1C:935D: 14        .byte $14
- D - I - - 0x03936E 1C:935E: 19        .byte $19
- D - I - - 0x03936F 1C:935F: 03        .byte $03

off_9360:
- D - I - - 0x039370 1C:9360: 22        .byte $22
- D - I - - 0x039371 1C:9361: 18        .byte $18
- D - I - - 0x039372 1C:9362: 25        .byte $25
- D - I - - 0x039373 1C:9363: 18        .byte $18
- D - I - - 0x039374 1C:9364: 2A        .byte $2A
- D - I - - 0x039375 1C:9365: 18        .byte $18
- D - I - - 0x039376 1C:9366: 29        .byte $29
- D - I - - 0x039377 1C:9367: 18        .byte $18
- D - I - - 0x039378 1C:9368: 03        .byte $03

off_9369:
- D - I - - 0x039379 1C:9369: 22        .byte $22
- D - I - - 0x03937A 1C:936A: 17        .byte $17
- D - I - - 0x03937B 1C:936B: 25        .byte $25
- D - I - - 0x03937C 1C:936C: 17        .byte $17
- D - I - - 0x03937D 1C:936D: 2A        .byte $2A
- D - I - - 0x03937E 1C:936E: 17        .byte $17
- D - I - - 0x03937F 1C:936F: 29        .byte $29
- D - I - - 0x039380 1C:9370: 17        .byte $17
- D - I - - 0x039381 1C:9371: 03        .byte $03

off_9372:
- D - I - - 0x039382 1C:9372: 3A        .byte $3A
- D - I - - 0x039383 1C:9373: 03        .byte $03

off_9374:
- D - I - - 0x039384 1C:9374: 30        .byte $30
- D - I - - 0x039385 1C:9375: 34        .byte $34
- D - I - - 0x039386 1C:9376: 3A        .byte $3A
- D - I - - 0x039387 1C:9377: 03        .byte $03

off_9378:
- D - I - - 0x039388 1C:9378: 1C        .byte $1C
- D - I - - 0x039389 1C:9379: 03        .byte $03

off_937A:
- D - I - - 0x03938A 1C:937A: 4C        .byte $4C
- D - I - - 0x03938B 1C:937B: 19        .byte $19
- D - I - - 0x03938C 1C:937C: 03        .byte $03

off_937D:
- D - I - - 0x03938D 1C:937D: 2C        .byte $2C
- D - I - - 0x03938E 1C:937E: 3A        .byte $3A
- D - I - - 0x03938F 1C:937F: 03        .byte $03

off_9380:
- D - I - - 0x039390 1C:9380: 3E        .byte $3E
- D - I - - 0x039391 1C:9381: 03        .byte $03

off_9382:
- D - I - - 0x039392 1C:9382: 72        .byte $72
- D - I - - 0x039393 1C:9383: 03        .byte $03

off_9384:
- D - I - - 0x039394 1C:9384: 50        .byte $50
- D - I - - 0x039395 1C:9385: 03        .byte $03

off_9386:
- D - I - - 0x039396 1C:9386: 0C        .byte $0C
- D - I - - 0x039397 1C:9387: 03        .byte $03

off_9388:
- D - I - - 0x039398 1C:9388: 54        .byte $54
- D - I - - 0x039399 1C:9389: 03        .byte $03

off_938A:
- D - I - - 0x03939A 1C:938A: 88        .byte $88
- D - I - - 0x03939B 1C:938B: 03        .byte $03

off_938C:
- - - - - - 0x03939C 1C:938C: 76        .byte $76
- - - - - - 0x03939D 1C:938D: 03        .byte $03

off_938E:
- D - I - - 0x03939E 1C:938E: 58        .byte $58
- D - I - - 0x03939F 1C:938F: 3A        .byte $3A
- D - I - - 0x0393A0 1C:9390: 03        .byte $03

off_9391:
- D - I - - 0x0393A1 1C:9391: 50        .byte $50
- D - I - - 0x0393A2 1C:9392: 03        .byte $03

off_9393:
- D - I - - 0x0393A3 1C:9393: 0C        .byte $0C
- D - I - - 0x0393A4 1C:9394: 03        .byte $03

off_9395:
- D - I - - 0x0393A5 1C:9395: 4C        .byte $4C
- D - I - - 0x0393A6 1C:9396: FF        .byte $FF
- D - I - - 0x0393A7 1C:9397: 03        .byte $03

off_9398:
- D - I - - 0x0393A8 1C:9398: 3A        .byte $3A
- D - I - - 0x0393A9 1C:9399: 03        .byte $03

off_939A:
- D - I - - 0x0393AA 1C:939A: 22        .byte $22
- D - I - - 0x0393AB 1C:939B: FF        .byte $FF
- D - I - - 0x0393AC 1C:939C: 25        .byte $25
- D - I - - 0x0393AD 1C:939D: FF        .byte $FF
- D - I - - 0x0393AE 1C:939E: 03        .byte $03

off_939F:
- D - I - - 0x0393AF 1C:939F: 22        .byte $22
- D - I - - 0x0393B0 1C:93A0: FF        .byte $FF
- D - I - - 0x0393B1 1C:93A1: 25        .byte $25
- D - I - - 0x0393B2 1C:93A2: FF        .byte $FF
- D - I - - 0x0393B3 1C:93A3: 03        .byte $03

off_93A4:
- D - I - - 0x0393B4 1C:93A4: 1C        .byte $1C
- D - I - - 0x0393B5 1C:93A5: 03        .byte $03

off_93A6:
- D - I - - 0x0393B6 1C:93A6: 3E        .byte $3E
- D - I - - 0x0393B7 1C:93A7: 03        .byte $03

off_93A8:
- D - I - - 0x0393B8 1C:93A8: 2C        .byte $2C
- D - I - - 0x0393B9 1C:93A9: 3A        .byte $3A
- D - I - - 0x0393BA 1C:93AA: 03        .byte $03

off_93AB:
- D - I - - 0x0393BB 1C:93AB: 30        .byte $30
- D - I - - 0x0393BC 1C:93AC: 34        .byte $34
- D - I - - 0x0393BD 1C:93AD: 3A        .byte $3A
- D - I - - 0x0393BE 1C:93AE: 03        .byte $03

off_93AF:
- D - I - - 0x0393BF 1C:93AF: 7A        .byte $7A
- D - I - - 0x0393C0 1C:93B0: 03        .byte $03

off_93B1:
- D - I - - 0x0393C1 1C:93B1: 3A        .byte $3A
- D - I - - 0x0393C2 1C:93B2: 03        .byte $03

off_93B3:
- D - I - - 0x0393C3 1C:93B3: 60        .byte $60
- D - I - - 0x0393C4 1C:93B4: 03        .byte $03

off_93B5:
- D - I - - 0x0393C5 1C:93B5: 30        .byte $30
- D - I - - 0x0393C6 1C:93B6: 34        .byte $34
- D - I - - 0x0393C7 1C:93B7: 3A        .byte $3A
- D - I - - 0x0393C8 1C:93B8: 03        .byte $03

off_93B9:
- - - - - - 0x0393C9 1C:93B9: 14        .byte $14
- - - - - - 0x0393CA 1C:93BA: 19        .byte $19
- - - - - - 0x0393CB 1C:93BB: 03        .byte $03

off_93BC:
- D - I - - 0x0393CC 1C:93BC: 3A        .byte $3A
- D - I - - 0x0393CD 1C:93BD: 03        .byte $03

off_93BE:
- - - - - - 0x0393CE 1C:93BE: 3A        .byte $3A
- - - - - - 0x0393CF 1C:93BF: 41        .byte $41
- - - - - - 0x0393D0 1C:93C0: 03        .byte $03

off_93C1:
- D - I - - 0x0393D1 1C:93C1: 3E        .byte $3E
- D - I - - 0x0393D2 1C:93C2: 03        .byte $03

off_93C3:
- D - I - - 0x0393D3 1C:93C3: 2A        .byte $2A
- D - I - - 0x0393D4 1C:93C4: FF        .byte $FF
- D - I - - 0x0393D5 1C:93C5: 29        .byte $29
- - - - - - 0x0393D6 1C:93C6: FF        .byte $FF
- D - I - - 0x0393D7 1C:93C7: 03        .byte $03

off_93C8:
- D - I - - 0x0393D8 1C:93C8: 2A        .byte $2A
- D - I - - 0x0393D9 1C:93C9: FF        .byte $FF
- D - I - - 0x0393DA 1C:93CA: 29        .byte $29
- D - I - - 0x0393DB 1C:93CB: FF        .byte $FF
- D - I - - 0x0393DC 1C:93CC: 03        .byte $03

off_93CD:
- D - I - - 0x0393DD 1C:93CD: 4C        .byte $4C
- D - I - - 0x0393DE 1C:93CE: FF        .byte $FF
- D - I - - 0x0393DF 1C:93CF: 03        .byte $03

off_93D0:
- - - - - - 0x0393E0 1C:93D0: 1C        .byte $1C
- - - - - - 0x0393E1 1C:93D1: 03        .byte $03

off_93D2:
- D - I - - 0x0393E2 1C:93D2: 2C        .byte $2C
- D - I - - 0x0393E3 1C:93D3: 3A        .byte $3A
- D - I - - 0x0393E4 1C:93D4: 03        .byte $03

off_93D5:
- D - I - - 0x0393E5 1C:93D5: 7E        .byte $7E
- D - I - - 0x0393E6 1C:93D6: 03        .byte $03

off_93D7:
- D - I - - 0x0393E7 1C:93D7: 7E        .byte $7E
- D - I - - 0x0393E8 1C:93D8: 03        .byte $03

off_93D9:
- D - I - - 0x0393E9 1C:93D9: 25        .byte $25
- D - I - - 0x0393EA 1C:93DA: FF        .byte $FF
- D - I - - 0x0393EB 1C:93DB: 03        .byte $03

off_93DC:
- D - I - - 0x0393EC 1C:93DC: 25        .byte $25
- D - I - - 0x0393ED 1C:93DD: FF        .byte $FF
- D - I - - 0x0393EE 1C:93DE: 03        .byte $03

off_93DF:
- D - I - - 0x0393EF 1C:93DF: 68        .byte $68
- D - I - - 0x0393F0 1C:93E0: 85        .byte $85
- D - I - - 0x0393F1 1C:93E1: 86        .byte $86
- D - I - - 0x0393F2 1C:93E2: 03        .byte $03

off_93E3:
- D - I - - 0x0393F3 1C:93E3: 64        .byte $64
- D - I - - 0x0393F4 1C:93E4: 85        .byte $85
- D - I - - 0x0393F5 1C:93E5: 86        .byte $86
- D - I - - 0x0393F6 1C:93E6: 03        .byte $03

off_93E7:
- D - I - - 0x0393F7 1C:93E7: 7A        .byte $7A
- D - I - - 0x0393F8 1C:93E8: 03        .byte $03

off_93E9:
- D - I - - 0x0393F9 1C:93E9: 3A        .byte $3A
- D - I - - 0x0393FA 1C:93EA: 03        .byte $03

off_93EB:
- D - I - - 0x0393FB 1C:93EB: 72        .byte $72
- D - I - - 0x0393FC 1C:93EC: 03        .byte $03

off_93ED:
- D - I - - 0x0393FD 1C:93ED: 0C        .byte $0C
- D - I - - 0x0393FE 1C:93EE: 3A        .byte $3A
- D - I - - 0x0393FF 1C:93EF: 81        .byte $81
- D - I - - 0x039400 1C:93F0: 03        .byte $03

off_93F1:
- D - I - - 0x039401 1C:93F1: 3A        .byte $3A
- D - I - - 0x039402 1C:93F2: 6C        .byte $6C
- D - I - - 0x039403 1C:93F3: 03        .byte $03

off_93F4:
- D - I - - 0x039404 1C:93F4: 60        .byte $60
- D - I - - 0x039405 1C:93F5: 03        .byte $03

off_93F6:
- D - I - - 0x039406 1C:93F6: 58        .byte $58
- D - I - - 0x039407 1C:93F7: 3A        .byte $3A
- D - I - - 0x039408 1C:93F8: 03        .byte $03

off_93F9:
- D - I - - 0x039409 1C:93F9: 88        .byte $88
- D - I - - 0x03940A 1C:93FA: 03        .byte $03

off_93FB:
- - - - - - 0x03940B 1C:93FB: 50        .byte $50
- - - - - - 0x03940C 1C:93FC: 03        .byte $03

off_93FD:
- D - I - - 0x03940D 1C:93FD: 54        .byte $54
- D - I - - 0x03940E 1C:93FE: 03        .byte $03

off_93FF:
- D - I - - 0x03940F 1C:93FF: 50        .byte $50
- D - I - - 0x039410 1C:9400: 03        .byte $03

off_9401:
- D - I - - 0x039411 1C:9401: 0C        .byte $0C
- D - I - - 0x039412 1C:9402: 03        .byte $03

off_9403:
- - - - - - 0x039413 1C:9403: 76        .byte $76
- - - - - - 0x039414 1C:9404: 03        .byte $03

off_9405:
- - - - - - 0x039415 1C:9405: 0C        .byte $0C
- - - - - - 0x039416 1C:9406: 03        .byte $03

off_9407:
- D - I - - 0x039417 1C:9407: 3A        .byte $3A
- D - I - - 0x039418 1C:9408: 5C        .byte $5C
- D - I - - 0x039419 1C:9409: 03        .byte $03

off_940A:
- D - I - - 0x03941A 1C:940A: 01        .byte $01

off_940B:
- D - I - - 0x03941B 1C:940B: 02        .byte $02

off_940C:
- D - I - - 0x03941C 1C:940C: 02        .byte $02

off_940D:
- D - I - - 0x03941D 1C:940D: 03        .byte $03

off_940E:
- D - I - - 0x03941E 1C:940E: 02        .byte $02

off_940F:
- - - - - - 0x03941F 1C:940F: 03        .byte $03

off_9410:
- D - I - - 0x039420 1C:9410: 01        .byte $01

off_9411:
- D - I - - 0x039421 1C:9411: 02        .byte $02

off_9412:
- D - I - - 0x039422 1C:9412: 02        .byte $02

off_9413:
- D - I - - 0x039423 1C:9413: 03        .byte $03

off_9414:
- D - I - - 0x039424 1C:9414: 02        .byte $02

off_9415:
- D - I - - 0x039425 1C:9415: 04        .byte $04

off_9416:
- D - I - - 0x039426 1C:9416: 02        .byte $02

off_9417:
- D - I - - 0x039427 1C:9417: 02        .byte $02

off_9418:
- D - I - - 0x039428 1C:9418: 06        .byte $06

off_9419:
- D - I - - 0x039429 1C:9419: 02        .byte $02

off_941A:
- - - - - - 0x03942A 1C:941A: 02        .byte $02

off_941B:
- - - - - - 0x03942B 1C:941B: 02        .byte $02

off_941C:
- - - - - - 0x03942C 1C:941C: 02        .byte $02

off_941D:
- D - I - - 0x03942D 1C:941D: 02        .byte $02

off_941E:
- D - I - - 0x03942E 1C:941E: 05        .byte $05

off_941F:
- D - I - - 0x03942F 1C:941F: 02        .byte $02

off_9420:
- D - I - - 0x039430 1C:9420: 02        .byte $02

off_9421:
- D - I - - 0x039431 1C:9421: 06        .byte $06

off_9422:
- D - I - - 0x039432 1C:9422: 04        .byte $04

off_9423:
- D - I - - 0x039433 1C:9423: 02        .byte $02

off_9424:
- D - I - - 0x039434 1C:9424: 03        .byte $03

off_9425:
- D - I - - 0x039435 1C:9425: 01        .byte $01
- D - I - - 0x039436 1C:9426: 11        .byte $11

off_9427:
- D - I - - 0x039437 1C:9427: 01        .byte $01
- D - I - - 0x039438 1C:9428: 01        .byte $01

off_9429:
- D - I - - 0x039439 1C:9429: 03        .byte $03
- D - I - - 0x03943A 1C:942A: 18        .byte $18

off_942B:
- D - I - - 0x03943B 1C:942B: 03        .byte $03
- D - I - - 0x03943C 1C:942C: 17        .byte $17

off_942D:
- D - I - - 0x03943D 1C:942D: 02        .byte $02
- D - I - - 0x03943E 1C:942E: 1F        .byte $1F

off_942F:
- - - - - - 0x03943F 1C:942F: 02        .byte $02
- - - - - - 0x039440 1C:9430: 1A        .byte $1A

off_9431:
- D - I - - 0x039441 1C:9431: 83        .byte $83

off_9432:
- D - I - - 0x039442 1C:9432: 82        .byte $82

off_9433:
- D - I - - 0x039443 1C:9433: 83        .byte $83

off_9434:
- D - I - - 0x039444 1C:9434: 84        .byte $84

off_9435:
- D - I - - 0x039445 1C:9435: 81        .byte $81

off_9436:
- D - I - - 0x039446 1C:9436: 81        .byte $81

off_9437:
- - - - - - 0x039447 1C:9437: 02        .byte $02
- - - - - - 0x039448 1C:9438: 18        .byte $18

off_9439:
- - - - - - 0x039449 1C:9439: 02        .byte $02
- - - - - - 0x03944A 1C:943A: 17        .byte $17

off_943B:
- D - I - - 0x03944B 1C:943B: 83        .byte $83

off_943C:
- D - I - - 0x03944C 1C:943C: 83        .byte $83

off_943D:
- D - I - - 0x03944D 1C:943D: 83        .byte $83

off_943E:
- - - - - - 0x03944E 1C:943E: 02        .byte $02

off_943F:
- D - I - - 0x03944F 1C:943F: 02        .byte $02

off_9440:
- D - I - - 0x039450 1C:9440: 83        .byte $83

off_9441:
- D - I - - 0x039451 1C:9441: 81        .byte $81

off_9442:
- - - - - - 0x039452 1C:9442: 83        .byte $83

off_9443:
- D - I - - 0x039453 1C:9443: 83        .byte $83

off_9444:
- D - I - - 0x039454 1C:9444: 83        .byte $83

off_9445:
- D - I - - 0x039455 1C:9445: 83        .byte $83

off_9446:
- D - I - - 0x039456 1C:9446: 01        .byte $01
- D - I - - 0x039457 1C:9447: 18        .byte $18

off_9448:
- D - I - - 0x039458 1C:9448: 01        .byte $01
- D - I - - 0x039459 1C:9449: 17        .byte $17

off_944A:
- D - I - - 0x03945A 1C:944A: 84        .byte $84

off_944B:
- D - I - - 0x03945B 1C:944B: 82        .byte $82

off_944C:
- D - I - - 0x03945C 1C:944C: 83        .byte $83

off_944D:
- D - I - - 0x03945D 1C:944D: 83        .byte $83

off_944E:
- D - I - - 0x03945E 1C:944E: 83        .byte $83

off_944F:
- D - I - - 0x03945F 1C:944F: 81        .byte $81

off_9450:
- D - I - - 0x039460 1C:9450: 82        .byte $82

off_9451:
- D - I - - 0x039461 1C:9451: 84        .byte $84

off_9452:
- D - I - - 0x039462 1C:9452: 84        .byte $84

off_9453:
- - - - - - 0x039463 1C:9453: 81        .byte $81

off_9454:
- D - I - - 0x039464 1C:9454: 83        .byte $83

off_9455:
- D - I - - 0x039465 1C:9455: 82        .byte $82

off_9456:
- - - - - - 0x039466 1C:9456: 83        .byte $83

off_9457:
- D - I - - 0x039467 1C:9457: 83        .byte $83

off_9458:
- - - - - - 0x039468 1C:9458: 83        .byte $83

off_9459:
- D - I - - 0x039469 1C:9459: 83        .byte $83

off_945A:
- D - I - - 0x03946A 1C:945A: 01        .byte $01
- D - I - - 0x03946B 1C:945B: 18        .byte $18

off_945C:
- D - I - - 0x03946C 1C:945C: 01        .byte $01
- D - I - - 0x03946D 1C:945D: 17        .byte $17

off_945E:
- D - I - - 0x03946E 1C:945E: 81        .byte $81

off_945F:
- - - - - - 0x03946F 1C:945F: 81        .byte $81



tbl_9460_параметры_действий_атакующего:
; затрата энергии
- D - - - - 0x039470 1C:9460: 74 94     .word off_9474_00_shoot
- D - - - - 0x039472 1C:9462: 00 95     .word off_9500_01_pass
- D - - - - 0x039474 1C:9464: 10 95     .word off_9510_02_dribble
- D - - - - 0x039476 1C:9466: 2C 95     .word off_952C_03_1_2_pass
- D - - - - 0x039478 1C:9468: 40 95     .word off_9540_04
- D - - - - 0x03947A 1C:946A: 44 95     .word off_9544_05
- D - - - - 0x03947C 1C:946C: 48 95     .word off_9548_06
- D - - - - 0x03947E 1C:946E: 50 95     .word off_9550_07
- D - - - - 0x039480 1C:9470: 50 95     .word off_9550_08
- D - - - - 0x039482 1C:9472: 50 95     .word off_9550_09

off_9474_00_shoot:
; 00 shot
- D - I - - 0x039484 1C:9474: 00        .byte $00   ; бит0-1 высота? бит 2-7 = шанс убийства? 0x020148
- D - I - - 0x039485 1C:9475: 01        .byte $01   ; что-то связанное со множителем силы в зависимости от уровня игрока
- D - I - - 0x039486 1C:9476: 50        .byte $50   ; стоимость энергии lo
- D - I - - 0x039487 1C:9477: 00        .byte $00   ; бит0-1 = стоимость энергии hi, бит 2-7 = шанс убийства (вспомогательный)?
; 01 volley
- D - I - - 0x039488 1C:9478: 00        .byte $00
- D - I - - 0x039489 1C:9479: 05        .byte $05
- D - I - - 0x03948A 1C:947A: 5A        .byte $5A
- D - I - - 0x03948B 1C:947B: 00        .byte $00
; 02 header
- D - I - - 0x03948C 1C:947C: 00        .byte $00
- D - I - - 0x03948D 1C:947D: 05        .byte $05
- D - I - - 0x03948E 1C:947E: 5A        .byte $5A
- D - I - - 0x03948F 1C:947F: 00        .byte $00
; 03 drive shot
- D - I - - 0x039490 1C:9480: 8A        .byte $8A
- D - I - - 0x039491 1C:9481: 15        .byte $15
- D - I - - 0x039492 1C:9482: C8        .byte $C8
- D - I - - 0x039493 1C:9483: 20        .byte $20
; 04 drive overhead
- D - I - - 0x039494 1C:9484: 9A        .byte $9A
- D - I - - 0x039495 1C:9485: 22        .byte $22
- D - I - - 0x039496 1C:9486: 40        .byte $40
- D - I - - 0x039497 1C:9487: 31        .byte $31
; 05 falcon shot
- D - I - - 0x039498 1C:9488: 80        .byte $80
- D - I - - 0x039499 1C:9489: 10        .byte $10
- D - I - - 0x03949A 1C:948A: C8        .byte $C8
- D - I - - 0x03949B 1C:948B: 20        .byte $20
; 06 falcon volley
- D - I - - 0x03949C 1C:948C: 84        .byte $84
- D - I - - 0x03949D 1C:948D: 16        .byte $16
- D - I - - 0x03949E 1C:948E: F0        .byte $F0
- D - I - - 0x03949F 1C:948F: 20        .byte $20
; 07 razor shot
- D - I - - 0x0394A0 1C:9490: 84        .byte $84
- D - I - - 0x0394A1 1C:9491: 11        .byte $11
- D - I - - 0x0394A2 1C:9492: C8        .byte $C8
- D - I - - 0x0394A3 1C:9493: 00        .byte $00
; 08 skylab hurricane
- D - I - - 0x0394A4 1C:9494: 02        .byte $02
- D - I - - 0x0394A5 1C:9495: 12        .byte $12
- D - I - - 0x0394A6 1C:9496: C8        .byte $C8
- D - I - - 0x0394A7 1C:9497: 00        .byte $00
; 09 twin shot
- D - I - - 0x0394A8 1C:9498: 85        .byte $85
- D - I - - 0x0394A9 1C:9499: 13        .byte $13
- D - I - - 0x0394AA 1C:949A: B4        .byte $B4
- D - I - - 0x0394AB 1C:949B: 10        .byte $10
; 0A skylab twin shot
- D - I - - 0x0394AC 1C:949C: 8C        .byte $8C
- D - I - - 0x0394AD 1C:949D: 23        .byte $23
- D - I - - 0x0394AE 1C:949E: 7C        .byte $7C
- D - I - - 0x0394AF 1C:949F: 21        .byte $21
; 0B eagle shot
- D - I - - 0x0394B0 1C:94A0: 85        .byte $85
- D - I - - 0x0394B1 1C:94A1: 1A        .byte $1A
- D - I - - 0x0394B2 1C:94A2: C8        .byte $C8
- D - I - - 0x0394B3 1C:94A3: 20        .byte $20
; 0C tiger shot
- D - I - - 0x0394B4 1C:94A4: A0        .byte $A0
- D - I - - 0x0394B5 1C:94A5: 15        .byte $15
- D - I - - 0x0394B6 1C:94A6: F0        .byte $F0
- D - I - - 0x0394B7 1C:94A7: 20        .byte $20
; 0D neo-tiger shot
- D - I - - 0x0394B8 1C:94A8: C0        .byte $C0
- D - I - - 0x0394B9 1C:94A9: 22        .byte $22
- D - I - - 0x0394BA 1C:94AA: 72        .byte $72
- D - I - - 0x0394BB 1C:94AB: 21        .byte $21
; 0E overhead
- D - I - - 0x0394BC 1C:94AC: 02        .byte $02
- D - I - - 0x0394BD 1C:94AD: 11        .byte $11
- D - I - - 0x0394BE 1C:94AE: A0        .byte $A0
- D - I - - 0x0394BF 1C:94AF: 20        .byte $20
; 0F hyper overhead
- D - I - - 0x0394C0 1C:94B0: 86        .byte $86
- D - I - - 0x0394C1 1C:94B1: 18        .byte $18
- D - I - - 0x0394C2 1C:94B2: FA        .byte $FA
- D - I - - 0x0394C3 1C:94B3: 20        .byte $20
; 10 jumping volley
- D - I - - 0x0394C4 1C:94B4: 85        .byte $85
- D - I - - 0x0394C5 1C:94B5: 18        .byte $18
- D - I - - 0x0394C6 1C:94B6: FA        .byte $FA
- D - I - - 0x0394C7 1C:94B7: 20        .byte $20
; 11 drive tiger
- D - I - - 0x0394C8 1C:94B8: A8        .byte $A8
- D - I - - 0x0394C9 1C:94B9: 2D        .byte $2D
- D - I - - 0x0394CA 1C:94BA: C8        .byte $C8
- D - I - - 0x0394CB 1C:94BB: 30        .byte $30
; 12 cyclone
- D - I - - 0x0394CC 1C:94BC: 99        .byte $99
- D - I - - 0x0394CD 1C:94BD: 58        .byte $58
- D - I - - 0x0394CE 1C:94BE: 90        .byte $90
- D - I - - 0x0394CF 1C:94BF: 31        .byte $31
; 13 sano combo
- D - I - - 0x0394D0 1C:94C0: 92        .byte $92
- D - I - - 0x0394D1 1C:94C1: 12        .byte $12
- D - I - - 0x0394D2 1C:94C2: C8        .byte $C8
- D - I - - 0x0394D3 1C:94C3: 00        .byte $00
; 14 banana shot
- D - I - - 0x0394D4 1C:94C4: 86        .byte $86
- D - I - - 0x0394D5 1C:94C5: 13        .byte $13
- D - I - - 0x0394D6 1C:94C6: 00        .byte $00
- D - I - - 0x0394D7 1C:94C7: 00        .byte $00
; 15 booster shot
- D - I - - 0x0394D8 1C:94C8: 8A        .byte $8A
- D - I - - 0x0394D9 1C:94C9: 13        .byte $13
- D - I - - 0x0394DA 1C:94CA: 00        .byte $00
- D - I - - 0x0394DB 1C:94CB: 00        .byte $00
; 16 mirage shot
- D - I - - 0x0394DC 1C:94CC: 90        .byte $90
- D - I - - 0x0394DD 1C:94CD: 16        .byte $16
- D - I - - 0x0394DE 1C:94CE: 00        .byte $00
- D - I - - 0x0394DF 1C:94CF: 20        .byte $20
; 17 mach shot
- D - I - - 0x0394E0 1C:94D0: A0        .byte $A0
- D - I - - 0x0394E1 1C:94D1: 1A        .byte $1A
- D - I - - 0x0394E2 1C:94D2: 00        .byte $00
- D - I - - 0x0394E3 1C:94D3: 20        .byte $20
; 18 sidewinder shot
- D - I - - 0x0394E4 1C:94D4: 85        .byte $85
- D - I - - 0x0394E5 1C:94D5: 0E        .byte $0E
- D - I - - 0x0394E6 1C:94D6: 00        .byte $00
- D - I - - 0x0394E7 1C:94D7: 00        .byte $00
; 19 slider shot
- D - I - - 0x0394E8 1C:94D8: 84        .byte $84
- D - I - - 0x0394E9 1C:94D9: 0E        .byte $0E
- D - I - - 0x0394EA 1C:94DA: 00        .byte $00
- D - I - - 0x0394EB 1C:94DB: 00        .byte $00
; 1A cannon shot
- D - I - - 0x0394EC 1C:94DC: F0        .byte $F0
- D - I - - 0x0394ED 1C:94DD: 0F        .byte $0F
- D - I - - 0x0394EE 1C:94DE: 00        .byte $00
- D - I - - 0x0394EF 1C:94DF: 20        .byte $20
; 1B fire shot
- D - I - - 0x0394F0 1C:94E0: 00        .byte $00
- D - I - - 0x0394F1 1C:94E1: 15        .byte $15
- D - I - - 0x0394F2 1C:94E2: 00        .byte $00
- D - I - - 0x0394F3 1C:94E3: 20        .byte $20
; 1C dynamite header
- D - I - - 0x0394F4 1C:94E4: FA        .byte $FA
- D - I - - 0x0394F5 1C:94E5: 11        .byte $11
- D - I - - 0x0394F6 1C:94E6: 00        .byte $00
- D - I - - 0x0394F7 1C:94E7: 00        .byte $00
; 1D cannon header
- - - - - - 0x0394F8 1C:94E8: FA        .byte $FA
- - - - - - 0x0394F9 1C:94E9: 11        .byte $11
- - - - - - 0x0394FA 1C:94EA: 00        .byte $00
- - - - - - 0x0394FB 1C:94EB: 00        .byte $00
; 1E rocket header
- D - I - - 0x0394FC 1C:94EC: FA        .byte $FA
- D - I - - 0x0394FD 1C:94ED: 0D        .byte $0D
- D - I - - 0x0394FE 1C:94EE: 00        .byte $00
- D - I - - 0x0394FF 1C:94EF: 00        .byte $00
; 1F rising dragon kick
- D - I - - 0x039500 1C:94F0: 02        .byte $02
- D - I - - 0x039501 1C:94F1: 12        .byte $12
- D - I - - 0x039502 1C:94F2: 00        .byte $00
- D - I - - 0x039503 1C:94F3: 20        .byte $20
; 20 foward somersault
- D - I - - 0x039504 1C:94F4: 01        .byte $01
- D - I - - 0x039505 1C:94F5: 11        .byte $11
- D - I - - 0x039506 1C:94F6: 00        .byte $00
- D - I - - 0x039507 1C:94F7: 20        .byte $20
; 21 slider cannon
- D - I - - 0x039508 1C:94F8: 98        .byte $98
- D - I - - 0x039509 1C:94F9: 21        .byte $21
- D - I - - 0x03950A 1C:94FA: 00        .byte $00
- D - I - - 0x03950B 1C:94FB: 20        .byte $20
; 22 double eel
- D - I - - 0x03950C 1C:94FC: FC        .byte $FC
- D - I - - 0x03950D 1C:94FD: 14        .byte $14
- D - I - - 0x03950E 1C:94FE: 00        .byte $00
- D - I - - 0x03950F 1C:94FF: 20        .byte $20



off_9500_01_pass:
; 00 pass
- D - I - - 0x039510 1C:9500: 00        .byte $00
- D - I - - 0x039511 1C:9501: 02        .byte $02
- D - I - - 0x039512 1C:9502: 14        .byte $14
- D - I - - 0x039513 1C:9503: 00        .byte $00
; 01 drive pass
- D - I - - 0x039514 1C:9504: B2        .byte $B2
- D - I - - 0x039515 1C:9505: 15        .byte $15
- D - I - - 0x039516 1C:9506: 28        .byte $28
- D - I - - 0x039517 1C:9507: 00        .byte $00
; 02 razor pass
- D - I - - 0x039518 1C:9508: 00        .byte $00
- D - I - - 0x039519 1C:9509: 1A        .byte $1A
- D - I - - 0x03951A 1C:950A: 28        .byte $28
- D - I - - 0x03951B 1C:950B: 00        .byte $00
; 03 topspin pass
- D - I - - 0x03951C 1C:950C: 02        .byte $02
- D - I - - 0x03951D 1C:950D: 14        .byte $14
- D - I - - 0x03951E 1C:950E: 00        .byte $00
- D - I - - 0x03951F 1C:950F: 00        .byte $00



off_9510_02_dribble:
; 00 dribble
- D - I - - 0x039520 1C:9510: 00        .byte $00
- D - I - - 0x039521 1C:9511: 02        .byte $02
- D - I - - 0x039522 1C:9512: 28        .byte $28
- D - I - - 0x039523 1C:9513: 00        .byte $00
; 01 heel lift
- D - I - - 0x039524 1C:9514: 00        .byte $00
- D - I - - 0x039525 1C:9515: 07        .byte $07
- D - I - - 0x039526 1C:9516: 5A        .byte $5A
- D - I - - 0x039527 1C:9517: 00        .byte $00
; 02 forcible dribble
- D - I - - 0x039528 1C:9518: FC        .byte $FC
- D - I - - 0x039529 1C:9519: 0D        .byte $0D
- D - I - - 0x03952A 1C:951A: 3C        .byte $3C
- D - I - - 0x03952B 1C:951B: 00        .byte $00
; 03 vanishing feint
- D - I - - 0x03952C 1C:951C: 00        .byte $00
- D - I - - 0x03952D 1C:951D: 0C        .byte $0C
- D - I - - 0x03952E 1C:951E: 00        .byte $00
- D - I - - 0x03952F 1C:951F: 00        .byte $00
; 04 clone dribble
- D - I - - 0x039530 1C:9520: 00        .byte $00
- D - I - - 0x039531 1C:9521: 12        .byte $12
- D - I - - 0x039532 1C:9522: 00        .byte $00
- D - I - - 0x039533 1C:9523: 00        .byte $00
; 05 high speed dribble
- D - I - - 0x039534 1C:9524: 00        .byte $00
- D - I - - 0x039535 1C:9525: 0B        .byte $0B
- D - I - - 0x039536 1C:9526: 00        .byte $00
- D - I - - 0x039537 1C:9527: 00        .byte $00
; 06 hedgehog dribble
- D - I - - 0x039538 1C:9528: F0        .byte $F0
- D - I - - 0x039539 1C:9529: 0B        .byte $0B
- D - I - - 0x03953A 1C:952A: 00        .byte $00
- D - I - - 0x03953B 1C:952B: 00        .byte $00



off_952C_03_1_2_pass:
; toho combo
; golden combo (предположительно 01, судя по 2му байту)
; эйфелева башня
; еще что-то

; 00 1-2 pass
- D - I - - 0x03953C 1C:952C: 00        .byte $00
- D - I - - 0x03953D 1C:952D: 0C        .byte $0C
- D - I - - 0x03953E 1C:952E: 3C        .byte $3C
- D - I - - 0x03953F 1C:952F: 18        .byte $18
; 01 
- D - I - - 0x039540 1C:9530: 00        .byte $00
- D - I - - 0x039541 1C:9531: 20        .byte $20
- D - I - - 0x039542 1C:9532: 78        .byte $78
- D - I - - 0x039543 1C:9533: 38        .byte $38
; 02 
- D - I - - 0x039544 1C:9534: 00        .byte $00
- D - I - - 0x039545 1C:9535: 10        .byte $10
- D - I - - 0x039546 1C:9536: 50        .byte $50
- D - I - - 0x039547 1C:9537: 20        .byte $20
; 03 
- D - I - - 0x039548 1C:9538: 00        .byte $00
- D - I - - 0x039549 1C:9539: 11        .byte $11
- D - I - - 0x03954A 1C:953A: 50        .byte $50
- D - I - - 0x03954B 1C:953B: 20        .byte $20
; 04 
- D - I - - 0x03954C 1C:953C: 00        .byte $00
- D - I - - 0x03954D 1C:953D: 12        .byte $12
- D - I - - 0x03954E 1C:953E: 00        .byte $00
- D - I - - 0x03954F 1C:953F: 30        .byte $30



off_9540_04:
; 00 
- D - I - - 0x039550 1C:9540: 00        .byte $00
- D - I - - 0x039551 1C:9541: 00        .byte $00
- D - I - - 0x039552 1C:9542: 0A        .byte $0A
- D - I - - 0x039553 1C:9543: 00        .byte $00



off_9544_05:
; 00 
- D - I - - 0x039554 1C:9544: 00        .byte $00
- D - I - - 0x039555 1C:9545: 09        .byte $09
- D - I - - 0x039556 1C:9546: 28        .byte $28
- D - I - - 0x039557 1C:9547: 00        .byte $00



off_9548_06:
; 00 
- D - I - - 0x039558 1C:9548: 00        .byte $00
- D - I - - 0x039559 1C:9549: 07        .byte $07
- D - I - - 0x03955A 1C:954A: 50        .byte $50
- D - I - - 0x03955B 1C:954B: 00        .byte $00
; 01 
- D - I - - 0x03955C 1C:954C: FC        .byte $FC
- D - I - - 0x03955D 1C:954D: 0E        .byte $0E
- D - I - - 0x03955E 1C:954E: 00        .byte $00
- D - I - - 0x03955F 1C:954F: 00        .byte $00



off_9550_07:
off_9550_08:
off_9550_09:
; 00 
- D - I - - 0x039560 1C:9550: 00        .byte $00
- D - I - - 0x039561 1C:9551: 00        .byte $00
- D - I - - 0x039562 1C:9552: 00        .byte $00
- D - I - - 0x039563 1C:9553: 00        .byte $00



tbl_9554_параметры_действий_защитника:
- D - - - - 0x039564 1C:9554: 5E 95     .word off_955E_00_block
- D - - - - 0x039566 1C:9556: 6E 95     .word off_956E_01_tackle
- D - - - - 0x039568 1C:9558: 86 95     .word off_9586_02_pass_cut
- D - - - - 0x03956A 1C:955A: 8E 95     .word off_958E_03_clearance
- D - - - - 0x03956C 1C:955C: 96 95     .word off_9596_04_interfere

off_955E_00_block:
; значение байтов почти аналогично 0x039484
; 00 block
- D - I - - 0x03956E 1C:955E: 00        .byte $00
- D - I - - 0x03956F 1C:955F: 01        .byte $01
- D - I - - 0x039570 1C:9560: 46        .byte $46
- D - I - - 0x039571 1C:9561: 00        .byte $00
; 01 face block
- D - I - - 0x039572 1C:9562: 00        .byte $00
- D - I - - 0x039573 1C:9563: 82        .byte $82
- D - I - - 0x039574 1C:9564: 90        .byte $90
- D - I - - 0x039575 1C:9565: 01        .byte $01
; 02 skylab block
- D - I - - 0x039576 1C:9566: 00        .byte $00
- D - I - - 0x039577 1C:9567: 1C        .byte $1C
- D - I - - 0x039578 1C:9568: B4        .byte $B4
- D - I - - 0x039579 1C:9569: 00        .byte $00
; 03 power block
- D - I - - 0x03957A 1C:956A: 00        .byte $00
- D - I - - 0x03957B 1C:956B: 19        .byte $19
- D - I - - 0x03957C 1C:956C: B4        .byte $B4
- D - I - - 0x03957D 1C:956D: 00        .byte $00



off_956E_01_tackle:
; power tackle
; tiger tackle (скорее всего 01)
; skylab tackle
; razor tackle
; ???


; 00 tackle
- D - I - - 0x03957E 1C:956E: 00        .byte $00
- D - I - - 0x03957F 1C:956F: 00        .byte $00
- D - I - - 0x039580 1C:9570: 3C        .byte $3C
- D - I - - 0x039581 1C:9571: 00        .byte $00
; 01 
- D - I - - 0x039582 1C:9572: 98        .byte $98
- D - I - - 0x039583 1C:9573: 23        .byte $23
- D - I - - 0x039584 1C:9574: C8        .byte $C8
- D - I - - 0x039585 1C:9575: 00        .byte $00
; 02 
- D - I - - 0x039586 1C:9576: A0        .byte $A0
- D - I - - 0x039587 1C:9577: 1C        .byte $1C
- D - I - - 0x039588 1C:9578: C8        .byte $C8
- D - I - - 0x039589 1C:9579: 00        .byte $00
; 03 
- D - I - - 0x03958A 1C:957A: FC        .byte $FC
- D - I - - 0x03958B 1C:957B: 19        .byte $19
- D - I - - 0x03958C 1C:957C: C8        .byte $C8
- D - I - - 0x03958D 1C:957D: 00        .byte $00
; 04 
- D - I - - 0x03958E 1C:957E: FC        .byte $FC
- D - I - - 0x03958F 1C:957F: 1D        .byte $1D
- D - I - - 0x039590 1C:9580: B4        .byte $B4
- D - I - - 0x039591 1C:9581: 00        .byte $00
; 05 что за бесплатный подкат такой?
; может это который использует команда которая пиздит всех подряд?
- D - I - - 0x039592 1C:9582: FC        .byte $FC
- D - I - - 0x039593 1C:9583: 06        .byte $06
- D - I - - 0x039594 1C:9584: 00        .byte $00
- D - I - - 0x039595 1C:9585: 00        .byte $00



off_9586_02_pass_cut:
; 00 pass cut
- D - I - - 0x039596 1C:9586: 00        .byte $00
- D - I - - 0x039597 1C:9587: 00        .byte $00
- D - I - - 0x039598 1C:9588: 32        .byte $32
- D - I - - 0x039599 1C:9589: 00        .byte $00
; 01 skylab pass cut
- D - I - - 0x03959A 1C:958A: 00        .byte $00
- D - I - - 0x03959B 1C:958B: 27        .byte $27
- D - I - - 0x03959C 1C:958C: B4        .byte $B4
- D - I - - 0x03959D 1C:958D: 00        .byte $00



off_958E_03_clearance:
; 00 
- D - I - - 0x03959E 1C:958E: 00        .byte $00
- D - I - - 0x03959F 1C:958F: 04        .byte $04
- D - I - - 0x0395A0 1C:9590: 50        .byte $50
- D - I - - 0x0395A1 1C:9591: 00        .byte $00
; 01 бесплатный???
; может это который использует команда которая пиздит всех подряд?
; а еще же есть игроки которые в воздухе могут отпиздить просто так без спешала
- D - I - - 0x0395A2 1C:9592: FC        .byte $FC
- D - I - - 0x0395A3 1C:9593: 08        .byte $08
- D - I - - 0x0395A4 1C:9594: 00        .byte $00
- D - I - - 0x0395A5 1C:9595: 00        .byte $00



off_9596_04_interfere:
; 00 
- D - I - - 0x0395A6 1C:9596: 00        .byte $00
- D - I - - 0x0395A7 1C:9597: 06        .byte $06
- D - I - - 0x0395A8 1C:9598: 3C        .byte $3C
- D - I - - 0x0395A9 1C:9599: 00        .byte $00
; 01 бесплатный???
; может это который использует команда которая пиздит всех подряд?
; а еще же есть игроки которые в воздухе могут отпиздить просто так без спешала
- D - I - - 0x0395AA 1C:959A: FC        .byte $FC
- D - I - - 0x0395AB 1C:959B: 0C        .byte $0C
- D - I - - 0x0395AC 1C:959C: 00        .byte $00
- D - I - - 0x0395AD 1C:959D: 00        .byte $00



tbl_959E:
- D - - - - 0x0395AE 1C:959E: B2 95     .word off_95B2_00
- D - - - - 0x0395B0 1C:95A0: C2 95     .word off_95C2_01
- D - - - - 0x0395B2 1C:95A2: C6 95     .word off_95C6_02
- D - - - - 0x0395B4 1C:95A4: CA 95     .word off_95CA_03
- - - - - - 0x0395B6 1C:95A6: CE 95     .word off_95CE_04
- D - - - - 0x0395B8 1C:95A8: CE 95     .word off_95CE_05
- D - - - - 0x0395BA 1C:95AA: D2 95     .word off_95D2_06
- D - - - - 0x0395BC 1C:95AC: C2 95     .word off_95C2_07
- D - - - - 0x0395BE 1C:95AE: C2 95     .word off_95C2_08
- D - - - - 0x0395C0 1C:95B0: C2 95     .word off_95C2_09

off_95B2_00:
- D - I - - 0x0395C2 1C:95B2: 00        .byte $00
- D - I - - 0x0395C3 1C:95B3: 08        .byte $08
- D - I - - 0x0395C4 1C:95B4: 14        .byte $14
- D - I - - 0x0395C5 1C:95B5: 00        .byte $00
- D - I - - 0x0395C6 1C:95B6: 00        .byte $00
- D - I - - 0x0395C7 1C:95B7: 1B        .byte $1B
- D - I - - 0x0395C8 1C:95B8: 00        .byte $00
- D - I - - 0x0395C9 1C:95B9: 00        .byte $00
- D - I - - 0x0395CA 1C:95BA: 00        .byte $00
- D - I - - 0x0395CB 1C:95BB: 1C        .byte $1C
- D - I - - 0x0395CC 1C:95BC: 00        .byte $00
- D - I - - 0x0395CD 1C:95BD: 00        .byte $00
- D - I - - 0x0395CE 1C:95BE: 00        .byte $00
- D - I - - 0x0395CF 1C:95BF: 25        .byte $25
- D - I - - 0x0395D0 1C:95C0: 00        .byte $00
- D - I - - 0x0395D1 1C:95C1: 00        .byte $00

off_95C2_01:
off_95C2_07:
off_95C2_08:
off_95C2_09:
- D - I - - 0x0395D2 1C:95C2: 00        .byte $00
- D - I - - 0x0395D3 1C:95C3: 0B        .byte $0B
- D - I - - 0x0395D4 1C:95C4: 28        .byte $28
- D - I - - 0x0395D5 1C:95C5: 00        .byte $00

off_95C6_02:
- D - I - - 0x0395D6 1C:95C6: 00        .byte $00
- D - I - - 0x0395D7 1C:95C7: 20        .byte $20
- D - I - - 0x0395D8 1C:95C8: C8        .byte $C8
- D - I - - 0x0395D9 1C:95C9: 00        .byte $00

off_95CA_03:
- D - I - - 0x0395DA 1C:95CA: 88        .byte $88
- D - I - - 0x0395DB 1C:95CB: 08        .byte $08
- D - I - - 0x0395DC 1C:95CC: 46        .byte $46
- D - I - - 0x0395DD 1C:95CD: 00        .byte $00

off_95CE_04:
off_95CE_05:
- D - I - - 0x0395DE 1C:95CE: 98        .byte $98
- D - I - - 0x0395DF 1C:95CF: 00        .byte $00
- D - I - - 0x0395E0 1C:95D0: 32        .byte $32
- D - I - - 0x0395E1 1C:95D1: 00        .byte $00

off_95D2_06:
- D - I - - 0x0395E2 1C:95D2: 98        .byte $98
- D - I - - 0x0395E3 1C:95D3: 00        .byte $00
- D - I - - 0x0395E4 1C:95D4: 32        .byte $32
- D - I - - 0x0395E5 1C:95D5: 00        .byte $00



off_95D6_игроки_нашей_команды:
; 00 ???
- - - - - - 0x0395E6 1C:95D6: 00        .byte $00
- D - I - - 0x0395E7 1C:95D7: 00        .byte $00
- - - - - - 0x0395E8 1C:95D8: 08        .byte $08
- - - - - - 0x0395E9 1C:95D9: 08        .byte $08
; 01 p_tsubasa_my
- D - I - - 0x0395EA 1C:95DA: 01        .byte $01
- D - I - - 0x0395EB 1C:95DB: 03        .byte $03
- D - I - - 0x0395EC 1C:95DC: 50        .byte $50
- D - I - - 0x0395ED 1C:95DD: 26        .byte $26
; 02 p_renato_my
- D - I - - 0x0395EE 1C:95DE: 00        .byte $00
- D - I - - 0x0395EF 1C:95DF: 02        .byte $02
- - - - - - 0x0395F0 1C:95E0: 00        .byte $00
- - - - - - 0x0395F1 1C:95E1: 00        .byte $00
; 03 p_lima_my
- D - I - - 0x0395F2 1C:95E2: 00        .byte $00
- D - I - - 0x0395F3 1C:95E3: 00        .byte $00
- D - I - - 0x0395F4 1C:95E4: 18        .byte $18
- D - I - - 0x0395F5 1C:95E5: 04        .byte $04
; 04 p_marini_my
- D - I - - 0x0395F6 1C:95E6: 0B        .byte $0B
- D - I - - 0x0395F7 1C:95E7: 00        .byte $00
- D - I - - 0x0395F8 1C:95E8: 18        .byte $18
- D - I - - 0x0395F9 1C:95E9: 04        .byte $04
; 05 p_amaral_my
- D - I - - 0x0395FA 1C:95EA: 08        .byte $08
- D - I - - 0x0395FB 1C:95EB: 01        .byte $01
- D - I - - 0x0395FC 1C:95EC: 10        .byte $10
- D - I - - 0x0395FD 1C:95ED: 02        .byte $02
; 06 p_dotor_my
- D - I - - 0x0395FE 1C:95EE: 09        .byte $09
- D - I - - 0x0395FF 1C:95EF: 01        .byte $01
- D - I - - 0x039600 1C:95F0: 0E        .byte $0E
- D - I - - 0x039601 1C:95F1: 02        .byte $02
; 07 p_batista_my
- D - I - - 0x039602 1C:95F2: 00        .byte $00
- D - I - - 0x039603 1C:95F3: 00        .byte $00
- D - I - - 0x039604 1C:95F4: 20        .byte $20
- D - I - - 0x039605 1C:95F5: 00        .byte $00
; 08 p_tahamata_my
- D - I - - 0x039606 1C:95F6: 06        .byte $06
- D - I - - 0x039607 1C:95F7: 04        .byte $04
- D - I - - 0x039608 1C:95F8: 28        .byte $28
- D - I - - 0x039609 1C:95F9: 00        .byte $00
; 09 p_babington_my
- D - I - - 0x03960A 1C:95FA: 07        .byte $07
- D - I - - 0x03960B 1C:95FB: 04        .byte $04
- D - I - - 0x03960C 1C:95FC: 38        .byte $38
- D - I - - 0x03960D 1C:95FD: 00        .byte $00
; 0A p_gil_my
- D - I - - 0x03960E 1C:95FE: 04        .byte $04
- D - I - - 0x03960F 1C:95FF: 06        .byte $06
- D - I - - 0x039610 1C:9600: 18        .byte $18
- D - I - - 0x039611 1C:9601: 00        .byte $00
; 0B p_platon_my
- D - I - - 0x039612 1C:9602: 05        .byte $05
- D - I - - 0x039613 1C:9603: 07        .byte $07
- D - I - - 0x039614 1C:9604: 18        .byte $18
- D - I - - 0x039615 1C:9605: 00        .byte $00
; 0C p_urabe_my
- D - I - - 0x039616 1C:9606: 0A        .byte $0A
- D - I - - 0x039617 1C:9607: 08        .byte $08
- D - I - - 0x039618 1C:9608: 18        .byte $18
- D - I - - 0x039619 1C:9609: 02        .byte $02
; 0D p_kishida_my
- D - I - - 0x03961A 1C:960A: 0B        .byte $0B
- D - I - - 0x03961B 1C:960B: 00        .byte $00
- D - I - - 0x03961C 1C:960C: 10        .byte $10
- D - I - - 0x03961D 1C:960D: 02        .byte $02
; 0E p_nakayama_my
- D - I - - 0x03961E 1C:960E: 00        .byte $00
- D - I - - 0x03961F 1C:960F: 00        .byte $00
- D - I - - 0x039620 1C:9610: 10        .byte $10
- D - I - - 0x039621 1C:9611: 02        .byte $02
; 0F p_morisaki_my
- D - I - - 0x039622 1C:9612: 01        .byte $01
- D - I - - 0x039623 1C:9613: 00        .byte $00
- - - - - - 0x039624 1C:9614: 00        .byte $00
- - - - - - 0x039625 1C:9615: 00        .byte $00
; 10 p_takasugi_my
- D - I - - 0x039626 1C:9616: 0C        .byte $0C
- D - I - - 0x039627 1C:9617: 00        .byte $00
- D - I - - 0x039628 1C:9618: 08        .byte $08
- D - I - - 0x039629 1C:9619: 03        .byte $03
; 11 p_misaki_my
- D - I - - 0x03962A 1C:961A: 02        .byte $02
- D - I - - 0x03962B 1C:961B: 03        .byte $03
- D - I - - 0x03962C 1C:961C: 20        .byte $20
- D - I - - 0x03962D 1C:961D: 08        .byte $08
; 12 p_izawa_my
- D - I - - 0x03962E 1C:961E: 0D        .byte $0D
- D - I - - 0x03962F 1C:961F: 01        .byte $01
- D - I - - 0x039630 1C:9620: 14        .byte $14
- D - I - - 0x039631 1C:9621: 00        .byte $00
; 13 p_taki_my
- D - I - - 0x039632 1C:9622: 05        .byte $05
- D - I - - 0x039633 1C:9623: 05        .byte $05
- D - I - - 0x039634 1C:9624: 08        .byte $08
- D - I - - 0x039635 1C:9625: 00        .byte $00
; 14 p_ishizaki_my
- D - I - - 0x039636 1C:9626: 0E        .byte $0E
- D - I - - 0x039637 1C:9627: 08        .byte $08
- D - I - - 0x039638 1C:9628: 18        .byte $18
- D - I - - 0x039639 1C:9629: 04        .byte $04
; 15 p_nitta_my
- D - I - - 0x03963A 1C:962A: 03        .byte $03
- D - I - - 0x03963B 1C:962B: 02        .byte $02
- D - I - - 0x03963C 1C:962C: 20        .byte $20
- D - I - - 0x03963D 1C:962D: 04        .byte $04
; 16 p_kisugi_my
- D - I - - 0x03963E 1C:962E: 04        .byte $04
- D - I - - 0x03963F 1C:962F: 06        .byte $06
- D - I - - 0x039640 1C:9630: 18        .byte $18
- D - I - - 0x039641 1C:9631: 02        .byte $02
; 17 p_masao_my
- D - I - - 0x039642 1C:9632: 0F        .byte $0F
- D - I - - 0x039643 1C:9633: 07        .byte $07
- D - I - - 0x039644 1C:9634: 16        .byte $16
- D - I - - 0x039645 1C:9635: 02        .byte $02
; 18 p_kazuo_my
- D - I - - 0x039646 1C:9636: 0F        .byte $0F
- D - I - - 0x039647 1C:9637: 07        .byte $07
- D - I - - 0x039648 1C:9638: 18        .byte $18
- D - I - - 0x039649 1C:9639: 02        .byte $02
; 19 p_sano_my
- D - I - - 0x03964A 1C:963A: 10        .byte $10
- D - I - - 0x03964B 1C:963B: 02        .byte $02
- D - I - - 0x03964C 1C:963C: 10        .byte $10
- D - I - - 0x03964D 1C:963D: 02        .byte $02
; 1A p_hyuga_my
- D - I - - 0x03964E 1C:963E: 11        .byte $11
- D - I - - 0x03964F 1C:963F: 01        .byte $01
- D - I - - 0x039650 1C:9640: 40        .byte $40
- D - I - - 0x039651 1C:9641: 10        .byte $10
; 1B p_soda_my
- D - I - - 0x039652 1C:9642: 12        .byte $12
- D - I - - 0x039653 1C:9643: 09        .byte $09
- D - I - - 0x039654 1C:9644: 20        .byte $20
- D - I - - 0x039655 1C:9645: 02        .byte $02
; 1C p_jito_my
- D - I - - 0x039656 1C:9646: 13        .byte $13
- D - I - - 0x039657 1C:9647: 00        .byte $00
- D - I - - 0x039658 1C:9648: 20        .byte $20
- D - I - - 0x039659 1C:9649: 02        .byte $02
; 1D p_matsuyama_my
- D - I - - 0x03965A 1C:964A: 14        .byte $14
- D - I - - 0x03965B 1C:964B: 09        .byte $09
- D - I - - 0x03965C 1C:964C: 28        .byte $28
- D - I - - 0x03965D 1C:964D: 02        .byte $02
; 1E p_sorimachi_my
- D - I - - 0x03965E 1C:964E: 15        .byte $15
- - - - - - 0x03965F 1C:964F: 00        .byte $00
- - - - - - 0x039660 1C:9650: 18        .byte $18
- - - - - - 0x039661 1C:9651: 02        .byte $02
; 1F p_sawada_my
- D - I - - 0x039662 1C:9652: 16        .byte $16
- D - I - - 0x039663 1C:9653: 00        .byte $00
- - - - - - 0x039664 1C:9654: 08        .byte $08
- - - - - - 0x039665 1C:9655: 00        .byte $00
; 20 p_misugi_my
- D - I - - 0x039666 1C:9656: 17        .byte $17
- D - I - - 0x039667 1C:9657: 03        .byte $03
- D - I - - 0x039668 1C:9658: 18        .byte $18
- D - I - - 0x039669 1C:9659: 00        .byte $00
; 21 p_wakabayashi_my
- D - I - - 0x03966A 1C:965A: 03        .byte $03
- - - - - - 0x03966B 1C:965B: 00        .byte $00
- - - - - - 0x03966C 1C:965C: 00        .byte $00
- - - - - - 0x03966D 1C:965D: 00        .byte $00
; 22 p_wakashimazu_my
- D - I - - 0x03966E 1C:965E: 02        .byte $02
- D - I - - 0x03966F 1C:965F: 00        .byte $00
- - - - - - 0x039670 1C:9660: 00        .byte $00
- - - - - - 0x039671 1C:9661: 00        .byte $00



tbl_9662_игроки_команды_соперников:
off_9662_игроки_команды_соперников:
; 23 p_satrustegui_corinthians
- D - I - - 0x039672 1C:9662: 1C        .byte $1C
- D - I - - 0x039673 1C:9663: 06        .byte $06
- D - I - - 0x039674 1C:9664: 00        .byte $00
- D - I - - 0x039675 1C:9665: 02        .byte $02
- D - I - - 0x039676 1C:9666: 08        .byte $08
- D - I - - 0x039677 1C:9667: 03        .byte $03
- - - - - - 0x039678 1C:9668: 03        .byte $03
- D - I - - 0x039679 1C:9669: 01        .byte $01
- D - I - - 0x03967A 1C:966A: 01        .byte $01
- - - - - - 0x03967B 1C:966B: 01        .byte $01
- D - I - - 0x03967C 1C:966C: 02        .byte $02
- - - - - - 0x03967D 1C:966D: 00        .byte $00
; 24 p_ribeiro_corinthians
- D - I - - 0x03967E 1C:966E: 1D        .byte $1D
- D - I - - 0x03967F 1C:966F: 06        .byte $06
- D - I - - 0x039680 1C:9670: 00        .byte $00
- D - I - - 0x039681 1C:9671: 00        .byte $00
- D - I - - 0x039682 1C:9672: 00        .byte $00
- D - I - - 0x039683 1C:9673: 02        .byte $02
- - - - - - 0x039684 1C:9674: 04        .byte $04
- D - I - - 0x039685 1C:9675: 01        .byte $01
- D - I - - 0x039686 1C:9676: 01        .byte $01
- - - - - - 0x039687 1C:9677: 01        .byte $01
- D - I - - 0x039688 1C:9678: 01        .byte $01
- - - - - - 0x039689 1C:9679: 00        .byte $00
; 25 p_da_silva_gremio
- D - I - - 0x03968A 1C:967A: 20        .byte $20
- D - I - - 0x03968B 1C:967B: 0A        .byte $0A
- D - I - - 0x03968C 1C:967C: 00        .byte $00
- D - I - - 0x03968D 1C:967D: 20        .byte $20
- D - I - - 0x03968E 1C:967E: 02        .byte $02
- D - I - - 0x03968F 1C:967F: 03        .byte $03
- - - - - - 0x039690 1C:9680: 03        .byte $03
- D - I - - 0x039691 1C:9681: 01        .byte $01
- D - I - - 0x039692 1C:9682: 01        .byte $01
- - - - - - 0x039693 1C:9683: 01        .byte $01
- D - I - - 0x039694 1C:9684: 00        .byte $00
- - - - - - 0x039695 1C:9685: 00        .byte $00
; 26 p_meon_gremio
- D - I - - 0x039696 1C:9686: 06        .byte $06
- D - I - - 0x039697 1C:9687: 00        .byte $00
- - - - - - 0x039698 1C:9688: 00        .byte $00
- - - - - - 0x039699 1C:9689: 00        .byte $00
- D - I - - 0x03969A 1C:968A: 03        .byte $03
- D - I - - 0x03969B 1C:968B: 03        .byte $03
- D - I - - 0x03969C 1C:968C: 00        .byte $00
- - - - - - 0x03969D 1C:968D: 00        .byte $00
- - - - - - 0x03969E 1C:968E: 00        .byte $00
- - - - - - 0x03969F 1C:968F: 00        .byte $00
- - - - - - 0x0396A0 1C:9690: 00        .byte $00
- - - - - - 0x0396A1 1C:9691: 00        .byte $00
; 27 p_toninho_palmeiras
- D - I - - 0x0396A2 1C:9692: 23        .byte $23
- D - I - - 0x0396A3 1C:9693: 00        .byte $00
- D - I - - 0x0396A4 1C:9694: 00        .byte $00
- D - I - - 0x0396A5 1C:9695: 20        .byte $20
- D - I - - 0x0396A6 1C:9696: 00        .byte $00
- D - I - - 0x0396A7 1C:9697: 03        .byte $03
- - - - - - 0x0396A8 1C:9698: 03        .byte $03
- D - I - - 0x0396A9 1C:9699: 01        .byte $01
- - - - - - 0x0396AA 1C:969A: 01        .byte $01
- - - - - - 0x0396AB 1C:969B: 01        .byte $01
- D - I - - 0x0396AC 1C:969C: 03        .byte $03
- - - - - - 0x0396AD 1C:969D: 00        .byte $00
; 28 p_nei_palmeiras
- D - I - - 0x0396AE 1C:969E: 24        .byte $24
- D - I - - 0x0396AF 1C:969F: 00        .byte $00
- D - I - - 0x0396B0 1C:96A0: 00        .byte $00
- D - I - - 0x0396B1 1C:96A1: 28        .byte $28
- D - I - - 0x0396B2 1C:96A2: 06        .byte $06
- D - I - - 0x0396B3 1C:96A3: 00        .byte $00
- - - - - - 0x0396B4 1C:96A4: 03        .byte $03
- D - I - - 0x0396B5 1C:96A5: 01        .byte $01
- - - - - - 0x0396B6 1C:96A6: 01        .byte $01
- - - - - - 0x0396B7 1C:96A7: 01        .byte $01
- D - I - - 0x0396B8 1C:96A8: 01        .byte $01
- - - - - - 0x0396B9 1C:96A9: 00        .byte $00
; 29 p_zagallo_santos
- D - I - - 0x0396BA 1C:96AA: 27        .byte $27
- D - I - - 0x0396BB 1C:96AB: 00        .byte $00
- D - I - - 0x0396BC 1C:96AC: 00        .byte $00
- D - I - - 0x0396BD 1C:96AD: 20        .byte $20
- D - I - - 0x0396BE 1C:96AE: 04        .byte $04
- D - I - - 0x0396BF 1C:96AF: 02        .byte $02
- - - - - - 0x0396C0 1C:96B0: 00        .byte $00
- D - I - - 0x0396C1 1C:96B1: 01        .byte $01
- - - - - - 0x0396C2 1C:96B2: 01        .byte $01
- - - - - - 0x0396C3 1C:96B3: 01        .byte $01
- D - I - - 0x0396C4 1C:96B4: 04        .byte $04
- - - - - - 0x0396C5 1C:96B5: 00        .byte $00
; 2A p_dirceu_santos
- D - I - - 0x0396C6 1C:96B6: 28        .byte $28
- D - I - - 0x0396C7 1C:96B7: 0B        .byte $0B
- D - I - - 0x0396C8 1C:96B8: F0        .byte $F0
- D - I - - 0x0396C9 1C:96B9: 02        .byte $02
- D - I - - 0x0396CA 1C:96BA: 08        .byte $08
- - - - - - 0x0396CB 1C:96BB: 03        .byte $03
- - - - - - 0x0396CC 1C:96BC: 05        .byte $05
- D - I - - 0x0396CD 1C:96BD: 00        .byte $00
- - - - - - 0x0396CE 1C:96BE: 02        .byte $02
- - - - - - 0x0396CF 1C:96BF: 02        .byte $02
- D - I - - 0x0396D0 1C:96C0: 01        .byte $01
- - - - - - 0x0396D1 1C:96C1: 00        .byte $00
; 2B p_carlos_flamengo
- D - I - - 0x0396D2 1C:96C2: 2B        .byte $2B
- D - I - - 0x0396D3 1C:96C3: 0A        .byte $0A
- D - I - - 0x0396D4 1C:96C4: 00        .byte $00
- D - I - - 0x0396D5 1C:96C5: 30        .byte $30
- D - I - - 0x0396D6 1C:96C6: 07        .byte $07
- - - - - - 0x0396D7 1C:96C7: 03        .byte $03
- - - - - - 0x0396D8 1C:96C8: 03        .byte $03
- D - I - - 0x0396D9 1C:96C9: 01        .byte $01
- D - I - - 0x0396DA 1C:96CA: 01        .byte $01
- - - - - - 0x0396DB 1C:96CB: 01        .byte $01
- D - I - - 0x0396DC 1C:96CC: 06        .byte $06
- - - - - - 0x0396DD 1C:96CD: 00        .byte $00
; 2C p_santamaria_flamengo
- D - I - - 0x0396DE 1C:96CE: 2C        .byte $2C
- D - I - - 0x0396DF 1C:96CF: 00        .byte $00
- D - I - - 0x0396E0 1C:96D0: 00        .byte $00
- D - I - - 0x0396E1 1C:96D1: 02        .byte $02
- D - I - - 0x0396E2 1C:96D2: 09        .byte $09
- - - - - - 0x0396E3 1C:96D3: 02        .byte $02
- - - - - - 0x0396E4 1C:96D4: 03        .byte $03
- D - I - - 0x0396E5 1C:96D5: 00        .byte $00
- - - - - - 0x0396E6 1C:96D6: 00        .byte $00
- - - - - - 0x0396E7 1C:96D7: 00        .byte $00
- D - I - - 0x0396E8 1C:96D8: 07        .byte $07
- - - - - - 0x0396E9 1C:96D9: 00        .byte $00
; 2D p_jetorio_flamengo
- D - I - - 0x0396EA 1C:96DA: 2D        .byte $2D
- D - I - - 0x0396EB 1C:96DB: 0B        .byte $0B
- D - I - - 0x0396EC 1C:96DC: FF        .byte $FF
- D - I - - 0x0396ED 1C:96DD: 00        .byte $00
- D - I - - 0x0396EE 1C:96DE: 0D        .byte $0D
- - - - - - 0x0396EF 1C:96DF: 01        .byte $01
- - - - - - 0x0396F0 1C:96E0: 04        .byte $04
- - - - - - 0x0396F1 1C:96E1: 01        .byte $01
- - - - - - 0x0396F2 1C:96E2: 01        .byte $01
- D - I - - 0x0396F3 1C:96E3: 01        .byte $01
- - - - - - 0x0396F4 1C:96E4: 00        .byte $00
- - - - - - 0x0396F5 1C:96E5: 00        .byte $00
; 2E p_jito_kunimi
- D - I - - 0x0396F6 1C:96E6: 30        .byte $30
- D - I - - 0x0396F7 1C:96E7: 0B        .byte $0B
- D - I - - 0x0396F8 1C:96E8: F0        .byte $F0
- D - I - - 0x0396F9 1C:96E9: 20        .byte $20
- D - I - - 0x0396FA 1C:96EA: 0B        .byte $0B
- D - I - - 0x0396FB 1C:96EB: 02        .byte $02
- - - - - - 0x0396FC 1C:96EC: 02        .byte $02
- D - I - - 0x0396FD 1C:96ED: 02        .byte $02
- - - - - - 0x0396FE 1C:96EE: 02        .byte $02
- - - - - - 0x0396FF 1C:96EF: 02        .byte $02
- D - I - - 0x039700 1C:96F0: 01        .byte $01
- - - - - - 0x039701 1C:96F1: 00        .byte $00
; 2F p_sano_kunimi
- D - I - - 0x039702 1C:96F2: 31        .byte $31
- D - I - - 0x039703 1C:96F3: 0A        .byte $0A
- D - I - - 0x039704 1C:96F4: 00        .byte $00
- D - I - - 0x039705 1C:96F5: 10        .byte $10
- D - I - - 0x039706 1C:96F6: 02        .byte $02
- D - I - - 0x039707 1C:96F7: 05        .byte $05
- - - - - - 0x039708 1C:96F8: 00        .byte $00
- D - I - - 0x039709 1C:96F9: 00        .byte $00
- - - - - - 0x03970A 1C:96FA: 00        .byte $00
- - - - - - 0x03970B 1C:96FB: 01        .byte $01
- D - I - - 0x03970C 1C:96FC: 04        .byte $04
- - - - - - 0x03970D 1C:96FD: 00        .byte $00
; 30 p_masao_akita
- D - I - - 0x03970E 1C:96FE: 34        .byte $34
- D - I - - 0x03970F 1C:96FF: 0C        .byte $0C
- D - I - - 0x039710 1C:9700: 00        .byte $00
- D - I - - 0x039711 1C:9701: FF        .byte $FF
- D - I - - 0x039712 1C:9702: 01        .byte $01
- D - I - - 0x039713 1C:9703: 05        .byte $05
- - - - - - 0x039714 1C:9704: 01        .byte $01
- D - I - - 0x039715 1C:9705: 00        .byte $00
- - - - - - 0x039716 1C:9706: 00        .byte $00
- - - - - - 0x039717 1C:9707: 00        .byte $00
- D - I - - 0x039718 1C:9708: 03        .byte $03
- - - - - - 0x039719 1C:9709: 00        .byte $00
; 31 p_kazuo_akita
- D - I - - 0x03971A 1C:970A: 34        .byte $34
- D - I - - 0x03971B 1C:970B: 0C        .byte $0C
- D - I - - 0x03971C 1C:970C: 00        .byte $00
- D - I - - 0x03971D 1C:970D: 08        .byte $08
- D - I - - 0x03971E 1C:970E: 01        .byte $01
- D - I - - 0x03971F 1C:970F: 05        .byte $05
- - - - - - 0x039720 1C:9710: 01        .byte $01
- D - I - - 0x039721 1C:9711: 00        .byte $00
- - - - - - 0x039722 1C:9712: 00        .byte $00
- - - - - - 0x039723 1C:9713: 00        .byte $00
- D - I - - 0x039724 1C:9714: 03        .byte $03
- - - - - - 0x039725 1C:9715: 00        .byte $00
; 32 p_soda_tatsunami
- D - I - - 0x039726 1C:9716: 37        .byte $37
- D - I - - 0x039727 1C:9717: 0B        .byte $0B
- D - I - - 0x039728 1C:9718: F0        .byte $F0
- D - I - - 0x039729 1C:9719: 60        .byte $60
- D - I - - 0x03972A 1C:971A: 0B        .byte $0B
- D - I - - 0x03972B 1C:971B: 02        .byte $02
- - - - - - 0x03972C 1C:971C: 02        .byte $02
- D - I - - 0x03972D 1C:971D: 03        .byte $03
- - - - - - 0x03972E 1C:971E: 01        .byte $01
- - - - - - 0x03972F 1C:971F: 01        .byte $01
- D - I - - 0x039730 1C:9720: 03        .byte $03
- - - - - - 0x039731 1C:9721: 00        .byte $00
; 33 p_nakanishi_tatsunami
- D - I - - 0x039732 1C:9722: 0C        .byte $0C
- - - - - - 0x039733 1C:9723: 00        .byte $00
- - - - - - 0x039734 1C:9724: 00        .byte $00
- - - - - - 0x039735 1C:9725: 00        .byte $00
- D - I - - 0x039736 1C:9726: 00        .byte $00
- - - - - - 0x039737 1C:9727: 00        .byte $00
- D - I - - 0x039738 1C:9728: 00        .byte $00
- - - - - - 0x039739 1C:9729: 00        .byte $00
- - - - - - 0x03973A 1C:972A: 00        .byte $00
- - - - - - 0x03973B 1C:972B: 00        .byte $00
- - - - - - 0x03973C 1C:972C: 08        .byte $08
- - - - - - 0x03973D 1C:972D: 00        .byte $00
; 34 p_misugi_musashi
- D - I - - 0x03973E 1C:972E: 3A        .byte $3A
- D - I - - 0x03973F 1C:972F: 1D        .byte $1D
- D - I - - 0x039740 1C:9730: 10        .byte $10
- D - I - - 0x039741 1C:9731: 00        .byte $00
- D - I - - 0x039742 1C:9732: 1D        .byte $1D
- D - I - - 0x039743 1C:9733: 05        .byte $05
- - - - - - 0x039744 1C:9734: 00        .byte $00
- D - I - - 0x039745 1C:9735: 00        .byte $00
- - - - - - 0x039746 1C:9736: 00        .byte $00
- - - - - - 0x039747 1C:9737: 00        .byte $00
- D - I - - 0x039748 1C:9738: 0A        .byte $0A
- - - - - - 0x039749 1C:9739: 00        .byte $00
; 35 p_matsuyama_furano
- D - I - - 0x03974A 1C:973A: 3D        .byte $3D
- D - I - - 0x03974B 1C:973B: 00        .byte $00
- D - I - - 0x03974C 1C:973C: 00        .byte $00
- D - I - - 0x03974D 1C:973D: 00        .byte $00
- D - I - - 0x03974E 1C:973E: 0C        .byte $0C
- - - - - - 0x03974F 1C:973F: 05        .byte $05
- - - - - - 0x039750 1C:9740: 02        .byte $02
- D - I - - 0x039751 1C:9741: 00        .byte $00
- D - I - - 0x039752 1C:9742: 00        .byte $00
- - - - - - 0x039753 1C:9743: 00        .byte $00
- D - I - - 0x039754 1C:9744: 0C        .byte $0C
- - - - - - 0x039755 1C:9745: 00        .byte $00
; 36 p_hyuga_toho
- D - I - - 0x039756 1C:9746: 40        .byte $40
- D - I - - 0x039757 1C:9747: 0E        .byte $0E
- D - I - - 0x039758 1C:9748: 00        .byte $00
- D - I - - 0x039759 1C:9749: 40        .byte $40
- D - I - - 0x03975A 1C:974A: 0E        .byte $0E
- D - I - - 0x03975B 1C:974B: 05        .byte $05
- - - - - - 0x03975C 1C:974C: 05        .byte $05
- D - I - - 0x03975D 1C:974D: 03        .byte $03
- - - - - - 0x03975E 1C:974E: 02        .byte $02
- - - - - - 0x03975F 1C:974F: 02        .byte $02
- D - I - - 0x039760 1C:9750: 00        .byte $00
- - - - - - 0x039761 1C:9751: 00        .byte $00
; 37 p_sorimachi_toho
- D - I - - 0x039762 1C:9752: 41        .byte $41
- D - I - - 0x039763 1C:9753: 00        .byte $00
- D - I - - 0x039764 1C:9754: 00        .byte $00
- D - I - - 0x039765 1C:9755: 00        .byte $00
- D - I - - 0x039766 1C:9756: 00        .byte $00
- - - - - - 0x039767 1C:9757: 03        .byte $03
- - - - - - 0x039768 1C:9758: 00        .byte $00
- D - I - - 0x039769 1C:9759: 00        .byte $00
- - - - - - 0x03976A 1C:975A: 00        .byte $00
- - - - - - 0x03976B 1C:975B: 00        .byte $00
- D - I - - 0x03976C 1C:975C: 0E        .byte $0E
- - - - - - 0x03976D 1C:975D: 00        .byte $00
; 38 p_sawada_toho
- D - I - - 0x03976E 1C:975E: 42        .byte $42
- D - I - - 0x03976F 1C:975F: 0A        .byte $0A
- D - I - - 0x039770 1C:9760: 00        .byte $00
- D - I - - 0x039771 1C:9761: 00        .byte $00
- D - I - - 0x039772 1C:9762: 01        .byte $01
- D - I - - 0x039773 1C:9763: 01        .byte $01
- - - - - - 0x039774 1C:9764: 00        .byte $00
- - - - - - 0x039775 1C:9765: 00        .byte $00
- - - - - - 0x039776 1C:9766: 00        .byte $00
- - - - - - 0x039777 1C:9767: 00        .byte $00
- D - I - - 0x039778 1C:9768: 0F        .byte $0F
- - - - - - 0x039779 1C:9769: 00        .byte $00
; 39 p_wakashimazu_toho
- D - I - - 0x03977A 1C:976A: 0F        .byte $0F
- D - I - - 0x03977B 1C:976B: 00        .byte $00
- - - - - - 0x03977C 1C:976C: 00        .byte $00
- - - - - - 0x03977D 1C:976D: 00        .byte $00
- D - I - - 0x03977E 1C:976E: 04        .byte $04
- - - - - - 0x03977F 1C:976F: 00        .byte $00
- - - - - - 0x039780 1C:9770: 00        .byte $00
- - - - - - 0x039781 1C:9771: 00        .byte $00
- - - - - - 0x039782 1C:9772: 00        .byte $00
- - - - - - 0x039783 1C:9773: 00        .byte $00
- - - - - - 0x039784 1C:9774: 00        .byte $00
- - - - - - 0x039785 1C:9775: 00        .byte $00
; 3A p_rampion_as_roma
- D - I - - 0x039786 1C:9776: 45        .byte $45
- D - I - - 0x039787 1C:9777: 0A        .byte $0A
- D - I - - 0x039788 1C:9778: 00        .byte $00
- D - I - - 0x039789 1C:9779: 00        .byte $00
- D - I - - 0x03978A 1C:977A: 08        .byte $08
- D - I - - 0x03978B 1C:977B: 03        .byte $03
- - - - - - 0x03978C 1C:977C: 00        .byte $00
- D - I - - 0x03978D 1C:977D: 00        .byte $00
- D - I - - 0x03978E 1C:977E: 00        .byte $00
- - - - - - 0x03978F 1C:977F: 00        .byte $00
- D - I - - 0x039790 1C:9780: 0C        .byte $0C
- - - - - - 0x039791 1C:9781: 00        .byte $00
; 3B p_victorino_uruguay
- D - I - - 0x039792 1C:9782: 48        .byte $48
- D - I - - 0x039793 1C:9783: 0F        .byte $0F
- D - I - - 0x039794 1C:9784: 00        .byte $00
- D - I - - 0x039795 1C:9785: 00        .byte $00
- D - I - - 0x039796 1C:9786: 07        .byte $07
- D - I - - 0x039797 1C:9787: 05        .byte $05
- - - - - - 0x039798 1C:9788: 00        .byte $00
- D - I - - 0x039799 1C:9789: 00        .byte $00
- - - - - - 0x03979A 1C:978A: 00        .byte $00
- - - - - - 0x03979B 1C:978B: 00        .byte $00
- D - I - - 0x03979C 1C:978C: 1E        .byte $1E
- - - - - - 0x03979D 1C:978D: 00        .byte $00
; 3C p_da_silva_uruguay
- D - I - - 0x03979E 1C:978E: 49        .byte $49
- D - I - - 0x03979F 1C:978F: 0F        .byte $0F
- D - I - - 0x0397A0 1C:9790: 00        .byte $00
- D - I - - 0x0397A1 1C:9791: 00        .byte $00
- D - I - - 0x0397A2 1C:9792: 02        .byte $02
- D - I - - 0x0397A3 1C:9793: 03        .byte $03
- - - - - - 0x0397A4 1C:9794: 00        .byte $00
- D - I - - 0x0397A5 1C:9795: 00        .byte $00
- - - - - - 0x0397A6 1C:9796: 00        .byte $00
- - - - - - 0x0397A7 1C:9797: 00        .byte $00
- D - I - - 0x0397A8 1C:9798: 03        .byte $03
- - - - - - 0x0397A9 1C:9799: 00        .byte $00
; 3D p_kappelman_hamburger_sv
- D - I - - 0x0397AA 1C:979A: 4C        .byte $4C
- D - I - - 0x0397AB 1C:979B: 00        .byte $00
- D - I - - 0x0397AC 1C:979C: 00        .byte $00
- D - I - - 0x0397AD 1C:979D: 00        .byte $00
- D - I - - 0x0397AE 1C:979E: 0F        .byte $0F
- - - - - - 0x0397AF 1C:979F: 03        .byte $03
- - - - - - 0x0397B0 1C:97A0: 00        .byte $00
- D - I - - 0x0397B1 1C:97A1: 00        .byte $00
- D - I - - 0x0397B2 1C:97A2: 00        .byte $00
- - - - - - 0x0397B3 1C:97A3: 00        .byte $00
- D - I - - 0x0397B4 1C:97A4: 02        .byte $02
- - - - - - 0x0397B5 1C:97A5: 00        .byte $00
; 3E p_kaltz_hamburger_sv
- D - I - - 0x0397B6 1C:97A6: 4D        .byte $4D
- D - I - - 0x0397B7 1C:97A7: 00        .byte $00
- D - I - - 0x0397B8 1C:97A8: 00        .byte $00
- D - I - - 0x0397B9 1C:97A9: 00        .byte $00
- D - I - - 0x0397BA 1C:97AA: 10        .byte $10
- D - I - - 0x0397BB 1C:97AB: 00        .byte $00
- - - - - - 0x0397BC 1C:97AC: 00        .byte $00
- D - I - - 0x0397BD 1C:97AD: 00        .byte $00
- - - - - - 0x0397BE 1C:97AE: 00        .byte $00
- - - - - - 0x0397BF 1C:97AF: 00        .byte $00
- D - I - - 0x0397C0 1C:97B0: 11        .byte $11
- - - - - - 0x0397C1 1C:97B1: 00        .byte $00
; 3F p_metza_hamburger_sv
- D - I - - 0x0397C2 1C:97B2: 4E        .byte $4E
- D - I - - 0x0397C3 1C:97B3: 00        .byte $00
- D - I - - 0x0397C4 1C:97B4: 00        .byte $00
- D - I - - 0x0397C5 1C:97B5: 00        .byte $00
- D - I - - 0x0397C6 1C:97B6: 00        .byte $00
- - - - - - 0x0397C7 1C:97B7: 00        .byte $00
- - - - - - 0x0397C8 1C:97B8: 00        .byte $00
- D - I - - 0x0397C9 1C:97B9: 00        .byte $00
- - - - - - 0x0397CA 1C:97BA: 00        .byte $00
- - - - - - 0x0397CB 1C:97BB: 00        .byte $00
- D - I - - 0x0397CC 1C:97BC: 12        .byte $12
- - - - - - 0x0397CD 1C:97BD: 00        .byte $00
; 40 p_wakabayashi_hamburger_sv
- D - I - - 0x0397CE 1C:97BE: 12        .byte $12
- D - I - - 0x0397CF 1C:97BF: 00        .byte $00
- - - - - - 0x0397D0 1C:97C0: 00        .byte $00
- - - - - - 0x0397D1 1C:97C1: 00        .byte $00
- D - I - - 0x0397D2 1C:97C2: 00        .byte $00
- - - - - - 0x0397D3 1C:97C3: 02        .byte $02
- - - - - - 0x0397D4 1C:97C4: 00        .byte $00
- - - - - - 0x0397D5 1C:97C5: 00        .byte $00
- - - - - - 0x0397D6 1C:97C6: 00        .byte $00
- - - - - - 0x0397D7 1C:97C7: 00        .byte $00
- - - - - - 0x0397D8 1C:97C8: 00        .byte $00
- - - - - - 0x0397D9 1C:97C9: 00        .byte $00
; 41 p_hyuga_japan
- D - I - - 0x0397DA 1C:97CA: 4F        .byte $4F
- D - I - - 0x0397DB 1C:97CB: 0E        .byte $0E
- D - I - - 0x0397DC 1C:97CC: 00        .byte $00
- D - I - - 0x0397DD 1C:97CD: 10        .byte $10
- D - I - - 0x0397DE 1C:97CE: 11        .byte $11
- D - I - - 0x0397DF 1C:97CF: 00        .byte $00
- - - - - - 0x0397E0 1C:97D0: 00        .byte $00
- D - I - - 0x0397E1 1C:97D1: 03        .byte $03
- D - I - - 0x0397E2 1C:97D2: 02        .byte $02
- - - - - - 0x0397E3 1C:97D3: 02        .byte $02
- D - I - - 0x0397E4 1C:97D4: 15        .byte $15
- - - - - - 0x0397E5 1C:97D5: 00        .byte $00
; 42 p_nitta_japan
- D - I - - 0x0397E6 1C:97D6: 50        .byte $50
- D - I - - 0x0397E7 1C:97D7: 0A        .byte $0A
- D - I - - 0x0397E8 1C:97D8: 00        .byte $00
- D - I - - 0x0397E9 1C:97D9: 00        .byte $00
- - - - - - 0x0397EA 1C:97DA: 01        .byte $01
- - - - - - 0x0397EB 1C:97DB: 05        .byte $05
- - - - - - 0x0397EC 1C:97DC: 00        .byte $00
- D - I - - 0x0397ED 1C:97DD: 00        .byte $00
- - - - - - 0x0397EE 1C:97DE: 00        .byte $00
- - - - - - 0x0397EF 1C:97DF: 00        .byte $00
- - - - - - 0x0397F0 1C:97E0: 14        .byte $14
- - - - - - 0x0397F1 1C:97E1: 00        .byte $00
; 43 p_sano_japan
- D - I - - 0x0397F2 1C:97E2: 51        .byte $51
- D - I - - 0x0397F3 1C:97E3: 00        .byte $00
- D - I - - 0x0397F4 1C:97E4: 00        .byte $00
- D - I - - 0x0397F5 1C:97E5: 00        .byte $00
- D - I - - 0x0397F6 1C:97E6: 01        .byte $01
- - - - - - 0x0397F7 1C:97E7: 03        .byte $03
- - - - - - 0x0397F8 1C:97E8: 00        .byte $00
- D - I - - 0x0397F9 1C:97E9: 00        .byte $00
- - - - - - 0x0397FA 1C:97EA: 00        .byte $00
- - - - - - 0x0397FB 1C:97EB: 00        .byte $00
- D - I - - 0x0397FC 1C:97EC: 14        .byte $14
- - - - - - 0x0397FD 1C:97ED: 00        .byte $00
; 44 p_misaki_japan
- D - I - - 0x0397FE 1C:97EE: 52        .byte $52
- D - I - - 0x0397FF 1C:97EF: 02        .byte $02
- D - I - - 0x039800 1C:97F0: 00        .byte $00
- D - I - - 0x039801 1C:97F1: 00        .byte $00
- D - I - - 0x039802 1C:97F2: 01        .byte $01
- D - I - - 0x039803 1C:97F3: 05        .byte $05
- - - - - - 0x039804 1C:97F4: 00        .byte $00
- D - I - - 0x039805 1C:97F5: 00        .byte $00
- D - I - - 0x039806 1C:97F6: 00        .byte $00
- - - - - - 0x039807 1C:97F7: 00        .byte $00
- D - I - - 0x039808 1C:97F8: 14        .byte $14
- - - - - - 0x039809 1C:97F9: 00        .byte $00
; 45 p_misugi_japan
- D - I - - 0x03980A 1C:97FA: 53        .byte $53
- D - I - - 0x03980B 1C:97FB: 02        .byte $02
- D - I - - 0x03980C 1C:97FC: 00        .byte $00
- D - I - - 0x03980D 1C:97FD: 00        .byte $00
- D - I - - 0x03980E 1C:97FE: 01        .byte $01
- D - I - - 0x03980F 1C:97FF: 05        .byte $05
- - - - - - 0x039810 1C:9800: 00        .byte $00
- D - I - - 0x039811 1C:9801: 00        .byte $00
- - - - - - 0x039812 1C:9802: 00        .byte $00
- - - - - - 0x039813 1C:9803: 00        .byte $00
- D - I - - 0x039814 1C:9804: 15        .byte $15
- - - - - - 0x039815 1C:9805: 00        .byte $00
; 46 p_masao_japan
- D - I - - 0x039816 1C:9806: 54        .byte $54
- D - I - - 0x039817 1C:9807: 11        .byte $11
- D - I - - 0x039818 1C:9808: 00        .byte $00
- D - I - - 0x039819 1C:9809: 18        .byte $18
- D - I - - 0x03981A 1C:980A: 01        .byte $01
- D - I - - 0x03981B 1C:980B: 06        .byte $06
- - - - - - 0x03981C 1C:980C: 00        .byte $00
- D - I - - 0x03981D 1C:980D: 00        .byte $00
- - - - - - 0x03981E 1C:980E: 00        .byte $00
- - - - - - 0x03981F 1C:980F: 00        .byte $00
- D - I - - 0x039820 1C:9810: 14        .byte $14
- - - - - - 0x039821 1C:9811: 00        .byte $00
; 47 p_kazuo_japan
- D - I - - 0x039822 1C:9812: 54        .byte $54
- D - I - - 0x039823 1C:9813: 11        .byte $11
- D - I - - 0x039824 1C:9814: 00        .byte $00
- D - I - - 0x039825 1C:9815: 04        .byte $04
- D - I - - 0x039826 1C:9816: 01        .byte $01
- D - I - - 0x039827 1C:9817: 06        .byte $06
- - - - - - 0x039828 1C:9818: 00        .byte $00
- D - I - - 0x039829 1C:9819: 00        .byte $00
- - - - - - 0x03982A 1C:981A: 00        .byte $00
- - - - - - 0x03982B 1C:981B: 00        .byte $00
- D - I - - 0x03982C 1C:981C: 14        .byte $14
- - - - - - 0x03982D 1C:981D: 00        .byte $00
; 48 p_jito_japan
- D - I - - 0x03982E 1C:981E: 55        .byte $55
- D - I - - 0x03982F 1C:981F: 10        .byte $10
- D - I - - 0x039830 1C:9820: 20        .byte $20
- D - I - - 0x039831 1C:9821: 10        .byte $10
- D - I - - 0x039832 1C:9822: 12        .byte $12
- - - - - - 0x039833 1C:9823: 00        .byte $00
- - - - - - 0x039834 1C:9824: 00        .byte $00
- D - I - - 0x039835 1C:9825: 04        .byte $04
- - - - - - 0x039836 1C:9826: 01        .byte $01
- - - - - - 0x039837 1C:9827: 01        .byte $01
- D - I - - 0x039838 1C:9828: 15        .byte $15
- - - - - - 0x039839 1C:9829: 00        .byte $00
; 49 p_ishizaki_japan
- D - I - - 0x03983A 1C:982A: 56        .byte $56
- D - I - - 0x03983B 1C:982B: 00        .byte $00
- D - I - - 0x03983C 1C:982C: 00        .byte $00
- D - I - - 0x03983D 1C:982D: 00        .byte $00
- - - - - - 0x03983E 1C:982E: 01        .byte $01
- - - - - - 0x03983F 1C:982F: 00        .byte $00
- - - - - - 0x039840 1C:9830: 00        .byte $00
- D - I - - 0x039841 1C:9831: 05        .byte $05
- - - - - - 0x039842 1C:9832: 00        .byte $00
- - - - - - 0x039843 1C:9833: 00        .byte $00
- - - - - - 0x039844 1C:9834: 14        .byte $14
- - - - - - 0x039845 1C:9835: 00        .byte $00
; 4A p_soda_japan
- D - I - - 0x039846 1C:9836: 57        .byte $57
- D - I - - 0x039847 1C:9837: 10        .byte $10
- D - I - - 0x039848 1C:9838: 20        .byte $20
- D - I - - 0x039849 1C:9839: 10        .byte $10
- D - I - - 0x03984A 1C:983A: 12        .byte $12
- - - - - - 0x03984B 1C:983B: 00        .byte $00
- D - I - - 0x03984C 1C:983C: 00        .byte $00
- D - I - - 0x03984D 1C:983D: 03        .byte $03
- - - - - - 0x03984E 1C:983E: 01        .byte $01
- - - - - - 0x03984F 1C:983F: 01        .byte $01
- D - I - - 0x039850 1C:9840: 15        .byte $15
- - - - - - 0x039851 1C:9841: 00        .byte $00
; 4B p_matsuyama_japan
- D - I - - 0x039852 1C:9842: 58        .byte $58
- D - I - - 0x039853 1C:9843: 10        .byte $10
- D - I - - 0x039854 1C:9844: 10        .byte $10
- D - I - - 0x039855 1C:9845: 00        .byte $00
- D - I - - 0x039856 1C:9846: 12        .byte $12
- - - - - - 0x039857 1C:9847: 00        .byte $00
- - - - - - 0x039858 1C:9848: 00        .byte $00
- D - I - - 0x039859 1C:9849: 00        .byte $00
- - - - - - 0x03985A 1C:984A: 00        .byte $00
- - - - - - 0x03985B 1C:984B: 00        .byte $00
- - - - - - 0x03985C 1C:984C: 15        .byte $15
- - - - - - 0x03985D 1C:984D: 00        .byte $00
; 4C p_wakashimazu_japan
- D - I - - 0x03985E 1C:984E: 13        .byte $13
- D - I - - 0x03985F 1C:984F: 00        .byte $00
- - - - - - 0x039860 1C:9850: 00        .byte $00
- - - - - - 0x039861 1C:9851: 00        .byte $00
- D - I - - 0x039862 1C:9852: 04        .byte $04
- D - I - - 0x039863 1C:9853: 00        .byte $00
- - - - - - 0x039864 1C:9854: 00        .byte $00
- - - - - - 0x039865 1C:9855: 00        .byte $00
- - - - - - 0x039866 1C:9856: 00        .byte $00
- - - - - - 0x039867 1C:9857: 00        .byte $00
- - - - - - 0x039868 1C:9858: 00        .byte $00
- - - - - - 0x039869 1C:9859: 00        .byte $00
; 4D p_li_han_ne_china
- D - I - - 0x03986A 1C:985A: 5D        .byte $5D
- D - I - - 0x03986B 1C:985B: 00        .byte $00
- D - I - - 0x03986C 1C:985C: 00        .byte $00
- D - I - - 0x03986D 1C:985D: 00        .byte $00
- D - I - - 0x03986E 1C:985E: 08        .byte $08
- D - I - - 0x03986F 1C:985F: 06        .byte $06
- D - I - - 0x039870 1C:9860: 00        .byte $00
- D - I - - 0x039871 1C:9861: 01        .byte $01
- - - - - - 0x039872 1C:9862: 00        .byte $00
- - - - - - 0x039873 1C:9863: 00        .byte $00
- D - I - - 0x039874 1C:9864: 03        .byte $03
- - - - - - 0x039875 1C:9865: 00        .byte $00
; 4E p_li_ban_kun_china
- D - I - - 0x039876 1C:9866: 5D        .byte $5D
- D - I - - 0x039877 1C:9867: 00        .byte $00
- D - I - - 0x039878 1C:9868: 00        .byte $00
- D - I - - 0x039879 1C:9869: 00        .byte $00
- D - I - - 0x03987A 1C:986A: 08        .byte $08
- D - I - - 0x03987B 1C:986B: 06        .byte $06
- - - - - - 0x03987C 1C:986C: 00        .byte $00
- D - I - - 0x03987D 1C:986D: 01        .byte $01
- - - - - - 0x03987E 1C:986E: 00        .byte $00
- - - - - - 0x03987F 1C:986F: 00        .byte $00
- - - - - - 0x039880 1C:9870: 03        .byte $03
- - - - - - 0x039881 1C:9871: 00        .byte $00
; 4F p_sha_south_korea
- D - I - - 0x039882 1C:9872: 66        .byte $66
- D - I - - 0x039883 1C:9873: 13        .byte $13
- D - I - - 0x039884 1C:9874: 00        .byte $00
- D - I - - 0x039885 1C:9875: 08        .byte $08
- D - I - - 0x039886 1C:9876: 10        .byte $10
- D - I - - 0x039887 1C:9877: 06        .byte $06
- - - - - - 0x039888 1C:9878: 00        .byte $00
- D - I - - 0x039889 1C:9879: 06        .byte $06
- - - - - - 0x03988A 1C:987A: 02        .byte $02
- - - - - - 0x03988B 1C:987B: 02        .byte $02
- D - I - - 0x03988C 1C:987C: 02        .byte $02
- - - - - - 0x03988D 1C:987D: 00        .byte $00
; 50 p_kim_south_korea
- D - I - - 0x03988E 1C:987E: 67        .byte $67
- D - I - - 0x03988F 1C:987F: 13        .byte $13
- D - I - - 0x039890 1C:9880: 00        .byte $00
- D - I - - 0x039891 1C:9881: 10        .byte $10
- D - I - - 0x039892 1C:9882: 10        .byte $10
- D - I - - 0x039893 1C:9883: 06        .byte $06
- - - - - - 0x039894 1C:9884: 00        .byte $00
- D - I - - 0x039895 1C:9885: 06        .byte $06
- - - - - - 0x039896 1C:9886: 02        .byte $02
- - - - - - 0x039897 1C:9887: 02        .byte $02
- D - I - - 0x039898 1C:9888: 02        .byte $02
- - - - - - 0x039899 1C:9889: 00        .byte $00
; 51 p_macher_poland
- D - I - - 0x03989A 1C:988A: 6B        .byte $6B
- D - I - - 0x03989B 1C:988B: 14        .byte $14
- D - I - - 0x03989C 1C:988C: 00        .byte $00
- D - I - - 0x03989D 1C:988D: 08        .byte $08
- D - I - - 0x03989E 1C:988E: 13        .byte $13
- D - I - - 0x03989F 1C:988F: 05        .byte $05
- - - - - - 0x0398A0 1C:9890: 00        .byte $00
- D - I - - 0x0398A1 1C:9891: 00        .byte $00
- - - - - - 0x0398A2 1C:9892: 00        .byte $00
- - - - - - 0x0398A3 1C:9893: 00        .byte $00
- - - - - - 0x0398A4 1C:9894: 03        .byte $03
- - - - - - 0x0398A5 1C:9895: 00        .byte $00
; 52 p_djazic_poland
- D - I - - 0x0398A6 1C:9896: 1B        .byte $1B
- D - I - - 0x0398A7 1C:9897: 00        .byte $00
- - - - - - 0x0398A8 1C:9898: 00        .byte $00
- - - - - - 0x0398A9 1C:9899: 00        .byte $00
- D - I - - 0x0398AA 1C:989A: 05        .byte $05
- D - I - - 0x0398AB 1C:989B: 02        .byte $02
- - - - - - 0x0398AC 1C:989C: 00        .byte $00
- - - - - - 0x0398AD 1C:989D: 00        .byte $00
- - - - - - 0x0398AE 1C:989E: 00        .byte $00
- - - - - - 0x0398AF 1C:989F: 00        .byte $00
- - - - - - 0x0398B0 1C:98A0: 00        .byte $00
- - - - - - 0x0398B1 1C:98A1: 00        .byte $00
; 53 p_lorimar_england
- D - I - - 0x0398B2 1C:98A2: 6E        .byte $6E
- D - I - - 0x0398B3 1C:98A3: 0A        .byte $0A
- D - I - - 0x0398B4 1C:98A4: 00        .byte $00
- D - I - - 0x0398B5 1C:98A5: 00        .byte $00
- D - I - - 0x0398B6 1C:98A6: 09        .byte $09
- D - I - - 0x0398B7 1C:98A7: 06        .byte $06
- - - - - - 0x0398B8 1C:98A8: 04        .byte $04
- D - I - - 0x0398B9 1C:98A9: 00        .byte $00
- D - I - - 0x0398BA 1C:98AA: 00        .byte $00
- - - - - - 0x0398BB 1C:98AB: 00        .byte $00
- D - I - - 0x0398BC 1C:98AC: 00        .byte $00
- - - - - - 0x0398BD 1C:98AD: 00        .byte $00
; 54 p_robson_england
- D - I - - 0x0398BE 1C:98AE: 6F        .byte $6F
- D - I - - 0x0398BF 1C:98AF: 0B        .byte $0B
- D - I - - 0x0398C0 1C:98B0: 10        .byte $10
- D - I - - 0x0398C1 1C:98B1: 40        .byte $40
- D - I - - 0x0398C2 1C:98B2: 04        .byte $04
- - - - - - 0x0398C3 1C:98B3: 06        .byte $06
- - - - - - 0x0398C4 1C:98B4: 04        .byte $04
- D - I - - 0x0398C5 1C:98B5: 02        .byte $02
- D - I - - 0x0398C6 1C:98B6: 02        .byte $02
- - - - - - 0x0398C7 1C:98B7: 02        .byte $02
- D - I - - 0x0398C8 1C:98B8: 01        .byte $01
- - - - - - 0x0398C9 1C:98B9: 00        .byte $00
; 55 p_belyaev_soviet_union
- D - I - - 0x0398CA 1C:98BA: 72        .byte $72
- D - I - - 0x0398CB 1C:98BB: 0F        .byte $0F
- D - I - - 0x0398CC 1C:98BC: 00        .byte $00
- D - I - - 0x0398CD 1C:98BD: 00        .byte $00
- D - I - - 0x0398CE 1C:98BE: 09        .byte $09
- D - I - - 0x0398CF 1C:98BF: 06        .byte $06
- - - - - - 0x0398D0 1C:98C0: 00        .byte $00
- D - I - - 0x0398D1 1C:98C1: 00        .byte $00
- - - - - - 0x0398D2 1C:98C2: 00        .byte $00
- - - - - - 0x0398D3 1C:98C3: 00        .byte $00
- D - I - - 0x0398D4 1C:98C4: 00        .byte $00
- - - - - - 0x0398D5 1C:98C5: 00        .byte $00
; 56 p_rashin_soviet_union
- D - I - - 0x0398D6 1C:98C6: 1D        .byte $1D
- D - I - - 0x0398D7 1C:98C7: 00        .byte $00
- - - - - - 0x0398D8 1C:98C8: 00        .byte $00
- - - - - - 0x0398D9 1C:98C9: 00        .byte $00
- D - I - - 0x0398DA 1C:98CA: 05        .byte $05
- - - - - - 0x0398DB 1C:98CB: 02        .byte $02
- D - I - - 0x0398DC 1C:98CC: 00        .byte $00
- - - - - - 0x0398DD 1C:98CD: 00        .byte $00
- - - - - - 0x0398DE 1C:98CE: 00        .byte $00
- - - - - - 0x0398DF 1C:98CF: 00        .byte $00
- - - - - - 0x0398E0 1C:98D0: 00        .byte $00
- - - - - - 0x0398E1 1C:98D1: 00        .byte $00
; 57 p_napoleon_france
- D - I - - 0x0398E2 1C:98D2: 75        .byte $75
- D - I - - 0x0398E3 1C:98D3: 0A        .byte $0A
- D - I - - 0x0398E4 1C:98D4: 00        .byte $00
- D - I - - 0x0398E5 1C:98D5: 10        .byte $10
- D - I - - 0x0398E6 1C:98D6: 15        .byte $15
- D - I - - 0x0398E7 1C:98D7: 06        .byte $06
- - - - - - 0x0398E8 1C:98D8: 05        .byte $05
- D - I - - 0x0398E9 1C:98D9: 00        .byte $00
- - - - - - 0x0398EA 1C:98DA: 02        .byte $02
- - - - - - 0x0398EB 1C:98DB: 02        .byte $02
- D - I - - 0x0398EC 1C:98DC: 0B        .byte $0B
- - - - - - 0x0398ED 1C:98DD: 00        .byte $00
; 58 p_pierre_france
- D - I - - 0x0398EE 1C:98DE: 76        .byte $76
- D - I - - 0x0398EF 1C:98DF: 0F        .byte $0F
- D - I - - 0x0398F0 1C:98E0: 00        .byte $00
- D - I - - 0x0398F1 1C:98E1: 00        .byte $00
- D - I - - 0x0398F2 1C:98E2: 15        .byte $15
- D - I - - 0x0398F3 1C:98E3: 06        .byte $06
- - - - - - 0x0398F4 1C:98E4: 01        .byte $01
- D - I - - 0x0398F5 1C:98E5: 00        .byte $00
- - - - - - 0x0398F6 1C:98E6: 00        .byte $00
- - - - - - 0x0398F7 1C:98E7: 00        .byte $00
- D - I - - 0x0398F8 1C:98E8: 01        .byte $01
- - - - - - 0x0398F9 1C:98E9: 00        .byte $00
; 59 p_espana_mexico
- D - I - - 0x0398FA 1C:98EA: 79        .byte $79
- D - I - - 0x0398FB 1C:98EB: 13        .byte $13
- D - I - - 0x0398FC 1C:98EC: 00        .byte $00
- D - I - - 0x0398FD 1C:98ED: 00        .byte $00
- D - I - - 0x0398FE 1C:98EE: 13        .byte $13
- D - I - - 0x0398FF 1C:98EF: 06        .byte $06
- - - - - - 0x039900 1C:98F0: 00        .byte $00
- D - I - - 0x039901 1C:98F1: 00        .byte $00
- D - I - - 0x039902 1C:98F2: 00        .byte $00
- D - I - - 0x039903 1C:98F3: 00        .byte $00
- D - I - - 0x039904 1C:98F4: 01        .byte $01
- - - - - - 0x039905 1C:98F5: 00        .byte $00
; 5A p_rampion_italy
- D - I - - 0x039906 1C:98F6: 7C        .byte $7C
- D - I - - 0x039907 1C:98F7: 13        .byte $13
- D - I - - 0x039908 1C:98F8: 00        .byte $00
- D - I - - 0x039909 1C:98F9: 00        .byte $00
- D - I - - 0x03990A 1C:98FA: 08        .byte $08
- D - I - - 0x03990B 1C:98FB: 06        .byte $06
- - - - - - 0x03990C 1C:98FC: 00        .byte $00
- D - I - - 0x03990D 1C:98FD: 00        .byte $00
- - - - - - 0x03990E 1C:98FE: 01        .byte $01
- - - - - - 0x03990F 1C:98FF: 00        .byte $00
- D - I - - 0x039910 1C:9900: 16        .byte $16
- - - - - - 0x039911 1C:9901: 00        .byte $00
; 5B p_hernandez_italy
- D - I - - 0x039912 1C:9902: 20        .byte $20
- D - I - - 0x039913 1C:9903: 00        .byte $00
- - - - - - 0x039914 1C:9904: 00        .byte $00
- - - - - - 0x039915 1C:9905: 00        .byte $00
- D - I - - 0x039916 1C:9906: 03        .byte $03
- D - I - - 0x039917 1C:9907: 01        .byte $01
- D - I - - 0x039918 1C:9908: 00        .byte $00
- - - - - - 0x039919 1C:9909: 00        .byte $00
- - - - - - 0x03991A 1C:990A: 00        .byte $00
- - - - - - 0x03991B 1C:990B: 00        .byte $00
- - - - - - 0x03991C 1C:990C: 00        .byte $00
- - - - - - 0x03991D 1C:990D: 00        .byte $00
; 5C p_islas_netherlands
- D - I - - 0x03991E 1C:990E: 7F        .byte $7F
- D - I - - 0x03991F 1C:990F: 15        .byte $15
- D - I - - 0x039920 1C:9910: 00        .byte $00
- D - I - - 0x039921 1C:9911: FF        .byte $FF
- D - I - - 0x039922 1C:9912: 16        .byte $16
- D - I - - 0x039923 1C:9913: 06        .byte $06
- D - I - - 0x039924 1C:9914: 02        .byte $02
- D - I - - 0x039925 1C:9915: 00        .byte $00
- - - - - - 0x039926 1C:9916: 00        .byte $00
- - - - - - 0x039927 1C:9917: 00        .byte $00
- D - I - - 0x039928 1C:9918: 00        .byte $00
- - - - - - 0x039929 1C:9919: 00        .byte $00
; 5D p_libuta_netherlands
- D - I - - 0x03992A 1C:991A: 80        .byte $80
- D - I - - 0x03992B 1C:991B: 0B        .byte $0B
- D - I - - 0x03992C 1C:991C: 20        .byte $20
- D - I - - 0x03992D 1C:991D: 00        .byte $00
- D - I - - 0x03992E 1C:991E: 09        .byte $09
- - - - - - 0x03992F 1C:991F: 06        .byte $06
- - - - - - 0x039930 1C:9920: 00        .byte $00
- D - I - - 0x039931 1C:9921: 02        .byte $02
- - - - - - 0x039932 1C:9922: 02        .byte $02
- - - - - - 0x039933 1C:9923: 02        .byte $02
- D - I - - 0x039934 1C:9924: 17        .byte $17
- - - - - - 0x039935 1C:9925: 00        .byte $00
; 5E p_pascal_argentina
- D - I - - 0x039936 1C:9926: 82        .byte $82
- D - I - - 0x039937 1C:9927: 00        .byte $00
- D - I - - 0x039938 1C:9928: 00        .byte $00
- D - I - - 0x039939 1C:9929: 10        .byte $10
- D - I - - 0x03993A 1C:992A: 19        .byte $19
- - - - - - 0x03993B 1C:992B: 00        .byte $00
- - - - - - 0x03993C 1C:992C: 00        .byte $00
- D - I - - 0x03993D 1C:992D: 00        .byte $00
- - - - - - 0x03993E 1C:992E: 00        .byte $00
- - - - - - 0x03993F 1C:992F: 00        .byte $00
- D - I - - 0x039940 1C:9930: 0B        .byte $0B
- - - - - - 0x039941 1C:9931: 00        .byte $00
; 5F p_satrustegui_argentina
- D - I - - 0x039942 1C:9932: 83        .byte $83
- D - I - - 0x039943 1C:9933: 06        .byte $06
- D - I - - 0x039944 1C:9934: 00        .byte $00
- D - I - - 0x039945 1C:9935: 00        .byte $00
- D - I - - 0x039946 1C:9936: 08        .byte $08
- D - I - - 0x039947 1C:9937: 06        .byte $06
- - - - - - 0x039948 1C:9938: 03        .byte $03
- D - I - - 0x039949 1C:9939: 01        .byte $01
- - - - - - 0x03994A 1C:993A: 01        .byte $01
- - - - - - 0x03994B 1C:993B: 01        .byte $01
- D - I - - 0x03994C 1C:993C: 20        .byte $20
- - - - - - 0x03994D 1C:993D: 00        .byte $00
; 60 p_diaz_argentina
- D - I - - 0x03994E 1C:993E: 84        .byte $84
- D - I - - 0x03994F 1C:993F: 07        .byte $07
- D - I - - 0x039950 1C:9940: 00        .byte $00
- D - I - - 0x039951 1C:9941: 10        .byte $10
- D - I - - 0x039952 1C:9942: 18        .byte $18
- D - I - - 0x039953 1C:9943: 06        .byte $06
- - - - - - 0x039954 1C:9944: 02        .byte $02
- D - I - - 0x039955 1C:9945: 00        .byte $00
- - - - - - 0x039956 1C:9946: 00        .byte $00
- - - - - - 0x039957 1C:9947: 00        .byte $00
- D - I - - 0x039958 1C:9948: 22        .byte $22
- - - - - - 0x039959 1C:9949: 00        .byte $00
; 61 p_babington_argentina
- D - I - - 0x03995A 1C:994A: 85        .byte $85
- D - I - - 0x03995B 1C:994B: 00        .byte $00
- D - I - - 0x03995C 1C:994C: 00        .byte $00
- D - I - - 0x03995D 1C:994D: 00        .byte $00
- D - I - - 0x03995E 1C:994E: 01        .byte $01
- - - - - - 0x03995F 1C:994F: 03        .byte $03
- - - - - - 0x039960 1C:9950: 00        .byte $00
- D - I - - 0x039961 1C:9951: 00        .byte $00
- - - - - - 0x039962 1C:9952: 00        .byte $00
- - - - - - 0x039963 1C:9953: 00        .byte $00
- D - I - - 0x039964 1C:9954: 21        .byte $21
- - - - - - 0x039965 1C:9955: 00        .byte $00
; 62 p_galvan_argentina
- D - I - - 0x039966 1C:9956: 86        .byte $86
- D - I - - 0x039967 1C:9957: 00        .byte $00
- D - I - - 0x039968 1C:9958: 18        .byte $18
- D - I - - 0x039969 1C:9959: 00        .byte $00
- D - I - - 0x03996A 1C:995A: 14        .byte $14
- - - - - - 0x03996B 1C:995B: 05        .byte $05
- D - I - - 0x03996C 1C:995C: 00        .byte $00
- D - I - - 0x03996D 1C:995D: 02        .byte $02
- - - - - - 0x03996E 1C:995E: 02        .byte $02
- - - - - - 0x03996F 1C:995F: 02        .byte $02
- D - I - - 0x039970 1C:9960: 19        .byte $19
- - - - - - 0x039971 1C:9961: 00        .byte $00
; 63 p_schneider_west_germany
- D - I - - 0x039972 1C:9962: 88        .byte $88
- D - I - - 0x039973 1C:9963: 0A        .byte $0A
- D - I - - 0x039974 1C:9964: 00        .byte $00
- D - I - - 0x039975 1C:9965: 08        .byte $08
- - - - - - 0x039976 1C:9966: 1A        .byte $1A
- - - - - - 0x039977 1C:9967: 05        .byte $05
- - - - - - 0x039978 1C:9968: 02        .byte $02
- D - I - - 0x039979 1C:9969: 00        .byte $00
- - - - - - 0x03997A 1C:996A: 01        .byte $01
- - - - - - 0x03997B 1C:996B: 01        .byte $01
- - - - - - 0x03997C 1C:996C: 24        .byte $24
- - - - - - 0x03997D 1C:996D: 00        .byte $00
; 64 p_margus_west_germany
- D - I - - 0x03997E 1C:996E: 89        .byte $89
- D - I - - 0x03997F 1C:996F: 00        .byte $00
- D - I - - 0x039980 1C:9970: 00        .byte $00
- D - I - - 0x039981 1C:9971: 00        .byte $00
- D - I - - 0x039982 1C:9972: 00        .byte $00
- D - I - - 0x039983 1C:9973: 06        .byte $06
- - - - - - 0x039984 1C:9974: 00        .byte $00
- D - I - - 0x039985 1C:9975: 00        .byte $00
- - - - - - 0x039986 1C:9976: 00        .byte $00
- - - - - - 0x039987 1C:9977: 00        .byte $00
- D - I - - 0x039988 1C:9978: 25        .byte $25
- - - - - - 0x039989 1C:9979: 00        .byte $00
; 65 p_kaltz_west_germany
- D - I - - 0x03998A 1C:997A: 8A        .byte $8A
- D - I - - 0x03998B 1C:997B: 1A        .byte $1A
- D - I - - 0x03998C 1C:997C: 00        .byte $00
- D - I - - 0x03998D 1C:997D: 10        .byte $10
- D - I - - 0x03998E 1C:997E: 05        .byte $05
- - - - - - 0x03998F 1C:997F: 00        .byte $00
- - - - - - 0x039990 1C:9980: 00        .byte $00
- D - I - - 0x039991 1C:9981: 00        .byte $00
- - - - - - 0x039992 1C:9982: 02        .byte $02
- - - - - - 0x039993 1C:9983: 02        .byte $02
- D - I - - 0x039994 1C:9984: 26        .byte $26
- - - - - - 0x039995 1C:9985: 00        .byte $00
; 66 p_metza_west_germany
- D - I - - 0x039996 1C:9986: 8B        .byte $8B
- D - I - - 0x039997 1C:9987: 00        .byte $00
- D - I - - 0x039998 1C:9988: 00        .byte $00
- D - I - - 0x039999 1C:9989: 00        .byte $00
- - - - - - 0x03999A 1C:998A: 01        .byte $01
- - - - - - 0x03999B 1C:998B: 01        .byte $01
- - - - - - 0x03999C 1C:998C: 01        .byte $01
- D - I - - 0x03999D 1C:998D: 00        .byte $00
- - - - - - 0x03999E 1C:998E: 00        .byte $00
- - - - - - 0x03999F 1C:998F: 00        .byte $00
- - - - - - 0x0399A0 1C:9990: 25        .byte $25
- - - - - - 0x0399A1 1C:9991: 00        .byte $00
; 67 p_schester_west_germany
- D - I - - 0x0399A2 1C:9992: 8C        .byte $8C
- D - I - - 0x0399A3 1C:9993: 00        .byte $00
- D - I - - 0x0399A4 1C:9994: 00        .byte $00
- D - I - - 0x0399A5 1C:9995: 00        .byte $00
- D - I - - 0x0399A6 1C:9996: 14        .byte $14
- - - - - - 0x0399A7 1C:9997: 03        .byte $03
- - - - - - 0x0399A8 1C:9998: 00        .byte $00
- D - I - - 0x0399A9 1C:9999: 00        .byte $00
- - - - - - 0x0399AA 1C:999A: 00        .byte $00
- - - - - - 0x0399AB 1C:999B: 00        .byte $00
- D - I - - 0x0399AC 1C:999C: 27        .byte $27
- - - - - - 0x0399AD 1C:999D: 00        .byte $00
; 68 p_kappelman_west_germany
- D - I - - 0x0399AE 1C:999E: 8D        .byte $8D
- D - I - - 0x0399AF 1C:999F: 0A        .byte $0A
- D - I - - 0x0399B0 1C:99A0: 00        .byte $00
- D - I - - 0x0399B1 1C:99A1: 00        .byte $00
- D - I - - 0x0399B2 1C:99A2: 0F        .byte $0F
- D - I - - 0x0399B3 1C:99A3: 02        .byte $02
- - - - - - 0x0399B4 1C:99A4: 00        .byte $00
- D - I - - 0x0399B5 1C:99A5: 00        .byte $00
- - - - - - 0x0399B6 1C:99A6: 00        .byte $00
- - - - - - 0x0399B7 1C:99A7: 00        .byte $00
- D - I - - 0x0399B8 1C:99A8: 25        .byte $25
- - - - - - 0x0399B9 1C:99A9: 00        .byte $00
; 69 p_muller_west_germany
- D - I - - 0x0399BA 1C:99AA: 23        .byte $23
- - - - - - 0x0399BB 1C:99AB: 00        .byte $00
- - - - - - 0x0399BC 1C:99AC: 00        .byte $00
- - - - - - 0x0399BD 1C:99AD: 00        .byte $00
- D - I - - 0x0399BE 1C:99AE: 03        .byte $03
- D - I - - 0x0399BF 1C:99AF: 02        .byte $02
- - - - - - 0x0399C0 1C:99B0: 00        .byte $00
- - - - - - 0x0399C1 1C:99B1: 00        .byte $00
- - - - - - 0x0399C2 1C:99B2: 00        .byte $00
- - - - - - 0x0399C3 1C:99B3: 00        .byte $00
- - - - - - 0x0399C4 1C:99B4: 00        .byte $00
- - - - - - 0x0399C5 1C:99B5: 00        .byte $00
; 6A p_carlos_brazil
- D - I - - 0x0399C6 1C:99B6: 8E        .byte $8E
- D - I - - 0x0399C7 1C:99B7: 1C        .byte $1C
- D - I - - 0x0399C8 1C:99B8: 00        .byte $00
- D - I - - 0x0399C9 1C:99B9: 08        .byte $08
- D - I - - 0x0399CA 1C:99BA: 07        .byte $07
- D - I - - 0x0399CB 1C:99BB: 05        .byte $05
- - - - - - 0x0399CC 1C:99BC: 02        .byte $02
- D - I - - 0x0399CD 1C:99BD: 00        .byte $00
- - - - - - 0x0399CE 1C:99BE: 00        .byte $00
- - - - - - 0x0399CF 1C:99BF: 00        .byte $00
- D - I - - 0x0399D0 1C:99C0: 2E        .byte $2E
- - - - - - 0x0399D1 1C:99C1: 00        .byte $00
; 6B p_zagallo_brazil
- D - I - - 0x0399D2 1C:99C2: 8F        .byte $8F
- D - I - - 0x0399D3 1C:99C3: 0A        .byte $0A
- D - I - - 0x0399D4 1C:99C4: 00        .byte $00
- D - I - - 0x0399D5 1C:99C5: 04        .byte $04
- D - I - - 0x0399D6 1C:99C6: 04        .byte $04
- D - I - - 0x0399D7 1C:99C7: 07        .byte $07
- - - - - - 0x0399D8 1C:99C8: 00        .byte $00
- D - I - - 0x0399D9 1C:99C9: 00        .byte $00
- - - - - - 0x0399DA 1C:99CA: 00        .byte $00
- - - - - - 0x0399DB 1C:99CB: 00        .byte $00
- D - I - - 0x0399DC 1C:99CC: 2D        .byte $2D
- - - - - - 0x0399DD 1C:99CD: 00        .byte $00
; 6C p_ribeiro_brazil
- D - I - - 0x0399DE 1C:99CE: 90        .byte $90
- D - I - - 0x0399DF 1C:99CF: 06        .byte $06
- D - I - - 0x0399E0 1C:99D0: 00        .byte $00
- D - I - - 0x0399E1 1C:99D1: 00        .byte $00
- D - I - - 0x0399E2 1C:99D2: 14        .byte $14
- D - I - - 0x0399E3 1C:99D3: 07        .byte $07
- D - I - - 0x0399E4 1C:99D4: 00        .byte $00
- D - I - - 0x0399E5 1C:99D5: 00        .byte $00
- - - - - - 0x0399E6 1C:99D6: 00        .byte $00
- - - - - - 0x0399E7 1C:99D7: 00        .byte $00
- D - I - - 0x0399E8 1C:99D8: 2C        .byte $2C
- - - - - - 0x0399E9 1C:99D9: 00        .byte $00
; 6D p_nei_brazil
- D - I - - 0x0399EA 1C:99DA: 91        .byte $91
- D - I - - 0x0399EB 1C:99DB: 0A        .byte $0A
- D - I - - 0x0399EC 1C:99DC: 00        .byte $00
- D - I - - 0x0399ED 1C:99DD: 00        .byte $00
- D - I - - 0x0399EE 1C:99DE: 06        .byte $06
- D - I - - 0x0399EF 1C:99DF: 07        .byte $07
- - - - - - 0x0399F0 1C:99E0: 00        .byte $00
- D - I - - 0x0399F1 1C:99E1: 00        .byte $00
- - - - - - 0x0399F2 1C:99E2: 00        .byte $00
- - - - - - 0x0399F3 1C:99E3: 00        .byte $00
- D - I - - 0x0399F4 1C:99E4: 2A        .byte $2A
- - - - - - 0x0399F5 1C:99E5: 00        .byte $00
; 6E p_santamaria_brazil
- D - I - - 0x0399F6 1C:99E6: 92        .byte $92
- D - I - - 0x0399F7 1C:99E7: 0A        .byte $0A
- D - I - - 0x0399F8 1C:99E8: 00        .byte $00
- D - I - - 0x0399F9 1C:99E9: 00        .byte $00
- D - I - - 0x0399FA 1C:99EA: 09        .byte $09
- - - - - - 0x0399FB 1C:99EB: 07        .byte $07
- D - I - - 0x0399FC 1C:99EC: 00        .byte $00
- D - I - - 0x0399FD 1C:99ED: 00        .byte $00
- - - - - - 0x0399FE 1C:99EE: 00        .byte $00
- D - I - - 0x0399FF 1C:99EF: 00        .byte $00
- D - I - - 0x039A00 1C:99F0: 2B        .byte $2B
- - - - - - 0x039A01 1C:99F1: 00        .byte $00
; 6F p_toninho_brazil
- D - I - - 0x039A02 1C:99F2: 93        .byte $93
- D - I - - 0x039A03 1C:99F3: 0A        .byte $0A
- D - I - - 0x039A04 1C:99F4: 00        .byte $00
- D - I - - 0x039A05 1C:99F5: 00        .byte $00
- D - I - - 0x039A06 1C:99F6: 12        .byte $12
- D - I - - 0x039A07 1C:99F7: 07        .byte $07
- - - - - - 0x039A08 1C:99F8: 00        .byte $00
- - - - - - 0x039A09 1C:99F9: 00        .byte $00
- - - - - - 0x039A0A 1C:99FA: 00        .byte $00
- - - - - - 0x039A0B 1C:99FB: 00        .byte $00
- D - I - - 0x039A0C 1C:99FC: 2A        .byte $2A
- - - - - - 0x039A0D 1C:99FD: 00        .byte $00
; 70 p_dotor_brazil
- D - I - - 0x039A0E 1C:99FE: 94        .byte $94
- D - I - - 0x039A0F 1C:99FF: 00        .byte $00
- D - I - - 0x039A10 1C:9A00: 02        .byte $02
- D - I - - 0x039A11 1C:9A01: 00        .byte $00
- D - I - - 0x039A12 1C:9A02: 14        .byte $14
- - - - - - 0x039A13 1C:9A03: 03        .byte $03
- D - I - - 0x039A14 1C:9A04: 00        .byte $00
- - - - - - 0x039A15 1C:9A05: 00        .byte $00
- - - - - - 0x039A16 1C:9A06: 00        .byte $00
- - - - - - 0x039A17 1C:9A07: 00        .byte $00
- D - I - - 0x039A18 1C:9A08: 29        .byte $29
- - - - - - 0x039A19 1C:9A09: 00        .byte $00
; 71 p_amaral_brazil
- D - I - - 0x039A1A 1C:9A0A: 95        .byte $95
- D - I - - 0x039A1B 1C:9A0B: 00        .byte $00
- D - I - - 0x039A1C 1C:9A0C: 02        .byte $02
- D - I - - 0x039A1D 1C:9A0D: 00        .byte $00
- D - I - - 0x039A1E 1C:9A0E: 14        .byte $14
- - - - - - 0x039A1F 1C:9A0F: 07        .byte $07
- D - I - - 0x039A20 1C:9A10: 00        .byte $00
- D - I - - 0x039A21 1C:9A11: 00        .byte $00
- - - - - - 0x039A22 1C:9A12: 00        .byte $00
- D - I - - 0x039A23 1C:9A13: 00        .byte $00
- D - I - - 0x039A24 1C:9A14: 29        .byte $29
- - - - - - 0x039A25 1C:9A15: 00        .byte $00
; 72 p_dirceu_brazil
- D - I - - 0x039A26 1C:9A16: 96        .byte $96
- D - I - - 0x039A27 1C:9A17: 0B        .byte $0B
- D - I - - 0x039A28 1C:9A18: 08        .byte $08
- D - I - - 0x039A29 1C:9A19: 00        .byte $00
- - - - - - 0x039A2A 1C:9A1A: 01        .byte $01
- - - - - - 0x039A2B 1C:9A1B: 06        .byte $06
- - - - - - 0x039A2C 1C:9A1C: 00        .byte $00
- D - I - - 0x039A2D 1C:9A1D: 02        .byte $02
- - - - - - 0x039A2E 1C:9A1E: 02        .byte $02
- - - - - - 0x039A2F 1C:9A1F: 02        .byte $02
- - - - - - 0x039A30 1C:9A20: 29        .byte $29
- - - - - - 0x039A31 1C:9A21: 00        .byte $00
; 73 p_jetorio_brazil
- D - I - - 0x039A32 1C:9A22: 97        .byte $97
- D - I - - 0x039A33 1C:9A23: 0B        .byte $0B
- D - I - - 0x039A34 1C:9A24: 20        .byte $20
- D - I - - 0x039A35 1C:9A25: 00        .byte $00
- D - I - - 0x039A36 1C:9A26: 12        .byte $12
- - - - - - 0x039A37 1C:9A27: 07        .byte $07
- - - - - - 0x039A38 1C:9A28: 00        .byte $00
- D - I - - 0x039A39 1C:9A29: 00        .byte $00
- - - - - - 0x039A3A 1C:9A2A: 00        .byte $00
- D - I - - 0x039A3B 1C:9A2B: 00        .byte $00
- D - I - - 0x039A3C 1C:9A2C: 29        .byte $29
- - - - - - 0x039A3D 1C:9A2D: 00        .byte $00
; 74 p_gertise_brazil
- D - I - - 0x039A3E 1C:9A2E: 24        .byte $24
- D - I - - 0x039A3F 1C:9A2F: 00        .byte $00
- - - - - - 0x039A40 1C:9A30: 00        .byte $00
- - - - - - 0x039A41 1C:9A31: 00        .byte $00
- D - I - - 0x039A42 1C:9A32: 05        .byte $05
- D - I - - 0x039A43 1C:9A33: 00        .byte $00
- - - - - - 0x039A44 1C:9A34: 00        .byte $00
- - - - - - 0x039A45 1C:9A35: 00        .byte $00
- - - - - - 0x039A46 1C:9A36: 00        .byte $00
- - - - - - 0x039A47 1C:9A37: 00        .byte $00
- - - - - - 0x039A48 1C:9A38: 00        .byte $00
- - - - - - 0x039A49 1C:9A39: 00        .byte $00
; 75 p_coimbra_brazil
- D - I - - 0x039A4A 1C:9A3A: 98        .byte $98
- D - I - - 0x039A4B 1C:9A3B: 1B        .byte $1B
- D - I - - 0x039A4C 1C:9A3C: 00        .byte $00
- D - I - - 0x039A4D 1C:9A3D: 00        .byte $00
- D - I - - 0x039A4E 1C:9A3E: 1C        .byte $1C
- - - - - - 0x039A4F 1C:9A3F: 08        .byte $08
- - - - - - 0x039A50 1C:9A40: 00        .byte $00
- D - I - - 0x039A51 1C:9A41: 00        .byte $00
- - - - - - 0x039A52 1C:9A42: 00        .byte $00
- - - - - - 0x039A53 1C:9A43: 00        .byte $00
- D - I - - 0x039A54 1C:9A44: 2F        .byte $2F
- - - - - - 0x039A55 1C:9A45: 00        .byte $00
; 76 
- D - I - - 0x039A56 1C:9A46: 04        .byte $04
- D - I - - 0x039A57 1C:9A47: 00        .byte $00
- - - - - - 0x039A58 1C:9A48: 00        .byte $00
- - - - - - 0x039A59 1C:9A49: 00        .byte $00
- D - I - - 0x039A5A 1C:9A4A: 00        .byte $00
- D - I - - 0x039A5B 1C:9A4B: 04        .byte $04
- D - I - - 0x039A5C 1C:9A4C: 00        .byte $00
- - - - - - 0x039A5D 1C:9A4D: 00        .byte $00
- - - - - - 0x039A5E 1C:9A4E: 00        .byte $00
- - - - - - 0x039A5F 1C:9A4F: 00        .byte $00
- - - - - - 0x039A60 1C:9A50: 00        .byte $00
- - - - - - 0x039A61 1C:9A51: 00        .byte $00
; 77 
- D - I - - 0x039A62 1C:9A52: 18        .byte $18
- D - I - - 0x039A63 1C:9A53: 00        .byte $00
- D - I - - 0x039A64 1C:9A54: 10        .byte $10
- D - I - - 0x039A65 1C:9A55: 03        .byte $03
- D - I - - 0x039A66 1C:9A56: 00        .byte $00
- D - I - - 0x039A67 1C:9A57: 00        .byte $00
- D - I - - 0x039A68 1C:9A58: 00        .byte $00
- D - I - - 0x039A69 1C:9A59: 00        .byte $00
- - - - - - 0x039A6A 1C:9A5A: 00        .byte $00
- D - I - - 0x039A6B 1C:9A5B: 00        .byte $00
- D - I - - 0x039A6C 1C:9A5C: 00        .byte $00
- - - - - - 0x039A6D 1C:9A5D: 00        .byte $00
; 78 
- D - I - - 0x039A6E 1C:9A5E: 19        .byte $19
- D - I - - 0x039A6F 1C:9A5F: 00        .byte $00
- D - I - - 0x039A70 1C:9A60: 00        .byte $00
- D - I - - 0x039A71 1C:9A61: 00        .byte $00
- D - I - - 0x039A72 1C:9A62: 00        .byte $00
- D - I - - 0x039A73 1C:9A63: 00        .byte $00
- - - - - - 0x039A74 1C:9A64: 00        .byte $00
- D - I - - 0x039A75 1C:9A65: 00        .byte $00
- - - - - - 0x039A76 1C:9A66: 00        .byte $00
- - - - - - 0x039A77 1C:9A67: 00        .byte $00
- D - I - - 0x039A78 1C:9A68: 01        .byte $01
- - - - - - 0x039A79 1C:9A69: 00        .byte $00
; 79 
- D - I - - 0x039A7A 1C:9A6A: 05        .byte $05
- D - I - - 0x039A7B 1C:9A6B: 00        .byte $00
- - - - - - 0x039A7C 1C:9A6C: 00        .byte $00
- - - - - - 0x039A7D 1C:9A6D: 00        .byte $00
- D - I - - 0x039A7E 1C:9A6E: 01        .byte $01
- D - I - - 0x039A7F 1C:9A6F: 01        .byte $01
- D - I - - 0x039A80 1C:9A70: 00        .byte $00
- - - - - - 0x039A81 1C:9A71: 00        .byte $00
- - - - - - 0x039A82 1C:9A72: 00        .byte $00
- - - - - - 0x039A83 1C:9A73: 00        .byte $00
- - - - - - 0x039A84 1C:9A74: 00        .byte $00
- - - - - - 0x039A85 1C:9A75: 00        .byte $00
; 7A 
- D - I - - 0x039A86 1C:9A76: 1A        .byte $1A
- D - I - - 0x039A87 1C:9A77: 00        .byte $00
- D - I - - 0x039A88 1C:9A78: 14        .byte $14
- D - I - - 0x039A89 1C:9A79: 02        .byte $02
- D - I - - 0x039A8A 1C:9A7A: 01        .byte $01
- - - - - - 0x039A8B 1C:9A7B: 00        .byte $00
- D - I - - 0x039A8C 1C:9A7C: 03        .byte $03
- D - I - - 0x039A8D 1C:9A7D: 00        .byte $00
- D - I - - 0x039A8E 1C:9A7E: 00        .byte $00
- D - I - - 0x039A8F 1C:9A7F: 01        .byte $01
- D - I - - 0x039A90 1C:9A80: 02        .byte $02
- - - - - - 0x039A91 1C:9A81: 00        .byte $00
; 7B 
- D - I - - 0x039A92 1C:9A82: 1B        .byte $1B
- D - I - - 0x039A93 1C:9A83: 00        .byte $00
- D - I - - 0x039A94 1C:9A84: 00        .byte $00
- D - I - - 0x039A95 1C:9A85: 00        .byte $00
- D - I - - 0x039A96 1C:9A86: 01        .byte $01
- D - I - - 0x039A97 1C:9A87: 01        .byte $01
- D - I - - 0x039A98 1C:9A88: 00        .byte $00
- D - I - - 0x039A99 1C:9A89: 00        .byte $00
- - - - - - 0x039A9A 1C:9A8A: 00        .byte $00
- D - I - - 0x039A9B 1C:9A8B: 00        .byte $00
- D - I - - 0x039A9C 1C:9A8C: 1E        .byte $1E
- - - - - - 0x039A9D 1C:9A8D: 00        .byte $00
; 7C 
- D - I - - 0x039A9E 1C:9A8E: 1E        .byte $1E
- D - I - - 0x039A9F 1C:9A8F: 00        .byte $00
- D - I - - 0x039AA0 1C:9A90: 18        .byte $18
- D - I - - 0x039AA1 1C:9A91: 02        .byte $02
- D - I - - 0x039AA2 1C:9A92: 00        .byte $00
- - - - - - 0x039AA3 1C:9A93: 00        .byte $00
- D - I - - 0x039AA4 1C:9A94: 00        .byte $00
- D - I - - 0x039AA5 1C:9A95: 00        .byte $00
- - - - - - 0x039AA6 1C:9A96: 00        .byte $00
- D - I - - 0x039AA7 1C:9A97: 00        .byte $00
- - - - - - 0x039AA8 1C:9A98: 00        .byte $00
- - - - - - 0x039AA9 1C:9A99: 00        .byte $00
; 7D 
- D - I - - 0x039AAA 1C:9A9A: 1F        .byte $1F
- D - I - - 0x039AAB 1C:9A9B: 00        .byte $00
- D - I - - 0x039AAC 1C:9A9C: 00        .byte $00
- D - I - - 0x039AAD 1C:9A9D: 00        .byte $00
- D - I - - 0x039AAE 1C:9A9E: 00        .byte $00
- D - I - - 0x039AAF 1C:9A9F: 00        .byte $00
- D - I - - 0x039AB0 1C:9AA0: 00        .byte $00
- D - I - - 0x039AB1 1C:9AA1: 00        .byte $00
- D - I - - 0x039AB2 1C:9AA2: 00        .byte $00
- - - - - - 0x039AB3 1C:9AA3: 00        .byte $00
- D - I - - 0x039AB4 1C:9AA4: 01        .byte $01
- - - - - - 0x039AB5 1C:9AA5: 00        .byte $00
; 7E 
- D - I - - 0x039AB6 1C:9AA6: 07        .byte $07
- - - - - - 0x039AB7 1C:9AA7: 00        .byte $00
- - - - - - 0x039AB8 1C:9AA8: 00        .byte $00
- - - - - - 0x039AB9 1C:9AA9: 00        .byte $00
- D - I - - 0x039ABA 1C:9AAA: 00        .byte $00
- D - I - - 0x039ABB 1C:9AAB: 01        .byte $01
- - - - - - 0x039ABC 1C:9AAC: 00        .byte $00
- - - - - - 0x039ABD 1C:9AAD: 00        .byte $00
- - - - - - 0x039ABE 1C:9AAE: 00        .byte $00
- - - - - - 0x039ABF 1C:9AAF: 00        .byte $00
- - - - - - 0x039AC0 1C:9AB0: 00        .byte $00
- - - - - - 0x039AC1 1C:9AB1: 00        .byte $00
; 7F 
- D - I - - 0x039AC2 1C:9AB2: 21        .byte $21
- D - I - - 0x039AC3 1C:9AB3: 00        .byte $00
- D - I - - 0x039AC4 1C:9AB4: 20        .byte $20
- D - I - - 0x039AC5 1C:9AB5: 03        .byte $03
- D - I - - 0x039AC6 1C:9AB6: 01        .byte $01
- - - - - - 0x039AC7 1C:9AB7: 00        .byte $00
- - - - - - 0x039AC8 1C:9AB8: 03        .byte $03
- D - I - - 0x039AC9 1C:9AB9: 00        .byte $00
- - - - - - 0x039ACA 1C:9ABA: 00        .byte $00
- D - I - - 0x039ACB 1C:9ABB: 01        .byte $01
- D - I - - 0x039ACC 1C:9ABC: 00        .byte $00
- - - - - - 0x039ACD 1C:9ABD: 00        .byte $00
; 80 
- D - I - - 0x039ACE 1C:9ABE: 22        .byte $22
- D - I - - 0x039ACF 1C:9ABF: 00        .byte $00
- D - I - - 0x039AD0 1C:9AC0: 00        .byte $00
- D - I - - 0x039AD1 1C:9AC1: 00        .byte $00
- D - I - - 0x039AD2 1C:9AC2: 00        .byte $00
- D - I - - 0x039AD3 1C:9AC3: 01        .byte $01
- - - - - - 0x039AD4 1C:9AC4: 00        .byte $00
- D - I - - 0x039AD5 1C:9AC5: 00        .byte $00
- D - I - - 0x039AD6 1C:9AC6: 00        .byte $00
- - - - - - 0x039AD7 1C:9AC7: 00        .byte $00
- D - I - - 0x039AD8 1C:9AC8: 03        .byte $03
- - - - - - 0x039AD9 1C:9AC9: 00        .byte $00
; 81 
- D - I - - 0x039ADA 1C:9ACA: 08        .byte $08
- D - I - - 0x039ADB 1C:9ACB: 00        .byte $00
- - - - - - 0x039ADC 1C:9ACC: 00        .byte $00
- - - - - - 0x039ADD 1C:9ACD: 00        .byte $00
- D - I - - 0x039ADE 1C:9ACE: 00        .byte $00
- D - I - - 0x039ADF 1C:9ACF: 00        .byte $00
- - - - - - 0x039AE0 1C:9AD0: 00        .byte $00
- - - - - - 0x039AE1 1C:9AD1: 00        .byte $00
- - - - - - 0x039AE2 1C:9AD2: 00        .byte $00
- - - - - - 0x039AE3 1C:9AD3: 00        .byte $00
- - - - - - 0x039AE4 1C:9AD4: 00        .byte $00
- - - - - - 0x039AE5 1C:9AD5: 00        .byte $00
; 82 
- D - I - - 0x039AE6 1C:9AD6: 25        .byte $25
- D - I - - 0x039AE7 1C:9AD7: 00        .byte $00
- D - I - - 0x039AE8 1C:9AD8: 00        .byte $00
- D - I - - 0x039AE9 1C:9AD9: 00        .byte $00
- - - - - - 0x039AEA 1C:9ADA: 01        .byte $01
- - - - - - 0x039AEB 1C:9ADB: 00        .byte $00
- D - I - - 0x039AEC 1C:9ADC: 00        .byte $00
- D - I - - 0x039AED 1C:9ADD: 00        .byte $00
- - - - - - 0x039AEE 1C:9ADE: 00        .byte $00
- D - I - - 0x039AEF 1C:9ADF: 00        .byte $00
- D - I - - 0x039AF0 1C:9AE0: 05        .byte $05
- - - - - - 0x039AF1 1C:9AE1: 00        .byte $00
; 83 
- D - I - - 0x039AF2 1C:9AE2: 26        .byte $26
- D - I - - 0x039AF3 1C:9AE3: 00        .byte $00
- D - I - - 0x039AF4 1C:9AE4: 00        .byte $00
- D - I - - 0x039AF5 1C:9AE5: 00        .byte $00
- D - I - - 0x039AF6 1C:9AE6: 01        .byte $01
- D - I - - 0x039AF7 1C:9AE7: 01        .byte $01
- D - I - - 0x039AF8 1C:9AE8: 00        .byte $00
- D - I - - 0x039AF9 1C:9AE9: 00        .byte $00
- - - - - - 0x039AFA 1C:9AEA: 00        .byte $00
- D - I - - 0x039AFB 1C:9AEB: 00        .byte $00
- D - I - - 0x039AFC 1C:9AEC: 04        .byte $04
- - - - - - 0x039AFD 1C:9AED: 00        .byte $00
; 84 
- D - I - - 0x039AFE 1C:9AEE: 09        .byte $09
- D - I - - 0x039AFF 1C:9AEF: 00        .byte $00
- - - - - - 0x039B00 1C:9AF0: 00        .byte $00
- - - - - - 0x039B01 1C:9AF1: 00        .byte $00
- D - I - - 0x039B02 1C:9AF2: 00        .byte $00
- D - I - - 0x039B03 1C:9AF3: 00        .byte $00
- - - - - - 0x039B04 1C:9AF4: 00        .byte $00
- - - - - - 0x039B05 1C:9AF5: 00        .byte $00
- - - - - - 0x039B06 1C:9AF6: 00        .byte $00
- - - - - - 0x039B07 1C:9AF7: 00        .byte $00
- - - - - - 0x039B08 1C:9AF8: 00        .byte $00
- - - - - - 0x039B09 1C:9AF9: 00        .byte $00
; 85 
- D - I - - 0x039B0A 1C:9AFA: 29        .byte $29
- D - I - - 0x039B0B 1C:9AFB: 00        .byte $00
- D - I - - 0x039B0C 1C:9AFC: 00        .byte $00
- D - I - - 0x039B0D 1C:9AFD: 00        .byte $00
- D - I - - 0x039B0E 1C:9AFE: 01        .byte $01
- - - - - - 0x039B0F 1C:9AFF: 01        .byte $01
- D - I - - 0x039B10 1C:9B00: 00        .byte $00
- D - I - - 0x039B11 1C:9B01: 00        .byte $00
- - - - - - 0x039B12 1C:9B02: 00        .byte $00
- D - I - - 0x039B13 1C:9B03: 00        .byte $00
- D - I - - 0x039B14 1C:9B04: 06        .byte $06
- - - - - - 0x039B15 1C:9B05: 00        .byte $00
; 86 
- D - I - - 0x039B16 1C:9B06: 2A        .byte $2A
- D - I - - 0x039B17 1C:9B07: 00        .byte $00
- D - I - - 0x039B18 1C:9B08: 00        .byte $00
- D - I - - 0x039B19 1C:9B09: 00        .byte $00
- D - I - - 0x039B1A 1C:9B0A: 01        .byte $01
- D - I - - 0x039B1B 1C:9B0B: 00        .byte $00
- D - I - - 0x039B1C 1C:9B0C: 00        .byte $00
- D - I - - 0x039B1D 1C:9B0D: 00        .byte $00
- - - - - - 0x039B1E 1C:9B0E: 00        .byte $00
- - - - - - 0x039B1F 1C:9B0F: 01        .byte $01
- D - I - - 0x039B20 1C:9B10: 07        .byte $07
- - - - - - 0x039B21 1C:9B11: 00        .byte $00
; 87 
- D - I - - 0x039B22 1C:9B12: 0A        .byte $0A
- D - I - - 0x039B23 1C:9B13: 00        .byte $00
- - - - - - 0x039B24 1C:9B14: 00        .byte $00
- - - - - - 0x039B25 1C:9B15: 00        .byte $00
- D - I - - 0x039B26 1C:9B16: 00        .byte $00
- D - I - - 0x039B27 1C:9B17: 00        .byte $00
- - - - - - 0x039B28 1C:9B18: 00        .byte $00
- - - - - - 0x039B29 1C:9B19: 00        .byte $00
- - - - - - 0x039B2A 1C:9B1A: 00        .byte $00
- - - - - - 0x039B2B 1C:9B1B: 00        .byte $00
- - - - - - 0x039B2C 1C:9B1C: 00        .byte $00
- - - - - - 0x039B2D 1C:9B1D: 00        .byte $00
; 88 
- D - I - - 0x039B2E 1C:9B1E: 2E        .byte $2E
- D - I - - 0x039B2F 1C:9B1F: 00        .byte $00
- D - I - - 0x039B30 1C:9B20: 00        .byte $00
- D - I - - 0x039B31 1C:9B21: 00        .byte $00
- D - I - - 0x039B32 1C:9B22: 01        .byte $01
- - - - - - 0x039B33 1C:9B23: 00        .byte $00
- D - I - - 0x039B34 1C:9B24: 00        .byte $00
- D - I - - 0x039B35 1C:9B25: 00        .byte $00
- - - - - - 0x039B36 1C:9B26: 00        .byte $00
- D - I - - 0x039B37 1C:9B27: 00        .byte $00
- D - I - - 0x039B38 1C:9B28: 08        .byte $08
- - - - - - 0x039B39 1C:9B29: 00        .byte $00
; 89 
- D - I - - 0x039B3A 1C:9B2A: 2F        .byte $2F
- D - I - - 0x039B3B 1C:9B2B: 00        .byte $00
- D - I - - 0x039B3C 1C:9B2C: 00        .byte $00
- D - I - - 0x039B3D 1C:9B2D: 00        .byte $00
- D - I - - 0x039B3E 1C:9B2E: 01        .byte $01
- D - I - - 0x039B3F 1C:9B2F: 00        .byte $00
- - - - - - 0x039B40 1C:9B30: 00        .byte $00
- D - I - - 0x039B41 1C:9B31: 00        .byte $00
- - - - - - 0x039B42 1C:9B32: 00        .byte $00
- D - I - - 0x039B43 1C:9B33: 00        .byte $00
- D - I - - 0x039B44 1C:9B34: 08        .byte $08
- - - - - - 0x039B45 1C:9B35: 00        .byte $00
; 8A 
- D - I - - 0x039B46 1C:9B36: 0B        .byte $0B
- D - I - - 0x039B47 1C:9B37: 00        .byte $00
- - - - - - 0x039B48 1C:9B38: 00        .byte $00
- - - - - - 0x039B49 1C:9B39: 00        .byte $00
- D - I - - 0x039B4A 1C:9B3A: 00        .byte $00
- - - - - - 0x039B4B 1C:9B3B: 00        .byte $00
- - - - - - 0x039B4C 1C:9B3C: 00        .byte $00
- - - - - - 0x039B4D 1C:9B3D: 00        .byte $00
- - - - - - 0x039B4E 1C:9B3E: 00        .byte $00
- - - - - - 0x039B4F 1C:9B3F: 00        .byte $00
- - - - - - 0x039B50 1C:9B40: 03        .byte $03
- - - - - - 0x039B51 1C:9B41: 00        .byte $00
; 8B 
- D - I - - 0x039B52 1C:9B42: 32        .byte $32
- D - I - - 0x039B53 1C:9B43: 00        .byte $00
- D - I - - 0x039B54 1C:9B44: 00        .byte $00
- D - I - - 0x039B55 1C:9B45: 00        .byte $00
- D - I - - 0x039B56 1C:9B46: 01        .byte $01
- - - - - - 0x039B57 1C:9B47: 00        .byte $00
- - - - - - 0x039B58 1C:9B48: 00        .byte $00
- D - I - - 0x039B59 1C:9B49: 00        .byte $00
- - - - - - 0x039B5A 1C:9B4A: 00        .byte $00
- - - - - - 0x039B5B 1C:9B4B: 00        .byte $00
- D - I - - 0x039B5C 1C:9B4C: 00        .byte $00
- - - - - - 0x039B5D 1C:9B4D: 00        .byte $00
; 8C 
- D - I - - 0x039B5E 1C:9B4E: 33        .byte $33
- D - I - - 0x039B5F 1C:9B4F: 00        .byte $00
- D - I - - 0x039B60 1C:9B50: 00        .byte $00
- D - I - - 0x039B61 1C:9B51: 00        .byte $00
- D - I - - 0x039B62 1C:9B52: 01        .byte $01
- D - I - - 0x039B63 1C:9B53: 00        .byte $00
- - - - - - 0x039B64 1C:9B54: 00        .byte $00
- D - I - - 0x039B65 1C:9B55: 00        .byte $00
- - - - - - 0x039B66 1C:9B56: 00        .byte $00
- D - I - - 0x039B67 1C:9B57: 00        .byte $00
- D - I - - 0x039B68 1C:9B58: 03        .byte $03
- - - - - - 0x039B69 1C:9B59: 00        .byte $00
; 8D 
- D - I - - 0x039B6A 1C:9B5A: 35        .byte $35
- D - I - - 0x039B6B 1C:9B5B: 00        .byte $00
- D - I - - 0x039B6C 1C:9B5C: 00        .byte $00
- D - I - - 0x039B6D 1C:9B5D: 00        .byte $00
- D - I - - 0x039B6E 1C:9B5E: 01        .byte $01
- D - I - - 0x039B6F 1C:9B5F: 00        .byte $00
- D - I - - 0x039B70 1C:9B60: 00        .byte $00
- D - I - - 0x039B71 1C:9B61: 00        .byte $00
- - - - - - 0x039B72 1C:9B62: 00        .byte $00
- D - I - - 0x039B73 1C:9B63: 00        .byte $00
- D - I - - 0x039B74 1C:9B64: 08        .byte $08
- - - - - - 0x039B75 1C:9B65: 00        .byte $00
; 8E 
- D - I - - 0x039B76 1C:9B66: 36        .byte $36
- D - I - - 0x039B77 1C:9B67: 00        .byte $00
- D - I - - 0x039B78 1C:9B68: 00        .byte $00
- D - I - - 0x039B79 1C:9B69: 00        .byte $00
- D - I - - 0x039B7A 1C:9B6A: 01        .byte $01
- D - I - - 0x039B7B 1C:9B6B: 00        .byte $00
- - - - - - 0x039B7C 1C:9B6C: 00        .byte $00
- D - I - - 0x039B7D 1C:9B6D: 00        .byte $00
- - - - - - 0x039B7E 1C:9B6E: 00        .byte $00
- - - - - - 0x039B7F 1C:9B6F: 00        .byte $00
- D - I - - 0x039B80 1C:9B70: 13        .byte $13
- - - - - - 0x039B81 1C:9B71: 00        .byte $00
; 8F 
- D - I - - 0x039B82 1C:9B72: 0D        .byte $0D
- D - I - - 0x039B83 1C:9B73: 00        .byte $00
- - - - - - 0x039B84 1C:9B74: 00        .byte $00
- - - - - - 0x039B85 1C:9B75: 00        .byte $00
- D - I - - 0x039B86 1C:9B76: 00        .byte $00
- D - I - - 0x039B87 1C:9B77: 00        .byte $00
- - - - - - 0x039B88 1C:9B78: 00        .byte $00
- - - - - - 0x039B89 1C:9B79: 00        .byte $00
- - - - - - 0x039B8A 1C:9B7A: 00        .byte $00
- - - - - - 0x039B8B 1C:9B7B: 00        .byte $00
- - - - - - 0x039B8C 1C:9B7C: 00        .byte $00
- - - - - - 0x039B8D 1C:9B7D: 00        .byte $00
; 90 
- D - I - - 0x039B8E 1C:9B7E: 38        .byte $38
- D - I - - 0x039B8F 1C:9B7F: 00        .byte $00
- D - I - - 0x039B90 1C:9B80: 00        .byte $00
- D - I - - 0x039B91 1C:9B81: 00        .byte $00
- D - I - - 0x039B92 1C:9B82: 00        .byte $00
- - - - - - 0x039B93 1C:9B83: 00        .byte $00
- D - I - - 0x039B94 1C:9B84: 00        .byte $00
- - - - - - 0x039B95 1C:9B85: 00        .byte $00
- - - - - - 0x039B96 1C:9B86: 00        .byte $00
- D - I - - 0x039B97 1C:9B87: 00        .byte $00
- D - I - - 0x039B98 1C:9B88: 09        .byte $09
- - - - - - 0x039B99 1C:9B89: 00        .byte $00
; 91 
- D - I - - 0x039B9A 1C:9B8A: 39        .byte $39
- D - I - - 0x039B9B 1C:9B8B: 00        .byte $00
- D - I - - 0x039B9C 1C:9B8C: 00        .byte $00
- D - I - - 0x039B9D 1C:9B8D: 00        .byte $00
- D - I - - 0x039B9E 1C:9B8E: 00        .byte $00
- D - I - - 0x039B9F 1C:9B8F: 00        .byte $00
- - - - - - 0x039BA0 1C:9B90: 00        .byte $00
- D - I - - 0x039BA1 1C:9B91: 00        .byte $00
- - - - - - 0x039BA2 1C:9B92: 00        .byte $00
- - - - - - 0x039BA3 1C:9B93: 00        .byte $00
- D - I - - 0x039BA4 1C:9B94: 0A        .byte $0A
- - - - - - 0x039BA5 1C:9B95: 00        .byte $00
; 92 
- D - I - - 0x039BA6 1C:9B96: 0E        .byte $0E
- - - - - - 0x039BA7 1C:9B97: 00        .byte $00
- - - - - - 0x039BA8 1C:9B98: 00        .byte $00
- - - - - - 0x039BA9 1C:9B99: 00        .byte $00
- D - I - - 0x039BAA 1C:9B9A: 00        .byte $00
- D - I - - 0x039BAB 1C:9B9B: 00        .byte $00
- - - - - - 0x039BAC 1C:9B9C: 00        .byte $00
- - - - - - 0x039BAD 1C:9B9D: 00        .byte $00
- - - - - - 0x039BAE 1C:9B9E: 00        .byte $00
- - - - - - 0x039BAF 1C:9B9F: 00        .byte $00
- - - - - - 0x039BB0 1C:9BA0: 00        .byte $00
- - - - - - 0x039BB1 1C:9BA1: 00        .byte $00
; 93 
- D - I - - 0x039BB2 1C:9BA2: 3B        .byte $3B
- D - I - - 0x039BB3 1C:9BA3: 00        .byte $00
- D - I - - 0x039BB4 1C:9BA4: 00        .byte $00
- D - I - - 0x039BB5 1C:9BA5: 00        .byte $00
- D - I - - 0x039BB6 1C:9BA6: 01        .byte $01
- - - - - - 0x039BB7 1C:9BA7: 03        .byte $03
- D - I - - 0x039BB8 1C:9BA8: 00        .byte $00
- D - I - - 0x039BB9 1C:9BA9: 00        .byte $00
- - - - - - 0x039BBA 1C:9BAA: 00        .byte $00
- D - I - - 0x039BBB 1C:9BAB: 00        .byte $00
- D - I - - 0x039BBC 1C:9BAC: 0B        .byte $0B
- - - - - - 0x039BBD 1C:9BAD: 00        .byte $00
; 94 
- D - I - - 0x039BBE 1C:9BAE: 3C        .byte $3C
- D - I - - 0x039BBF 1C:9BAF: 00        .byte $00
- D - I - - 0x039BC0 1C:9BB0: 00        .byte $00
- D - I - - 0x039BC1 1C:9BB1: 00        .byte $00
- D - I - - 0x039BC2 1C:9BB2: 01        .byte $01
- D - I - - 0x039BC3 1C:9BB3: 05        .byte $05
- - - - - - 0x039BC4 1C:9BB4: 00        .byte $00
- D - I - - 0x039BC5 1C:9BB5: 00        .byte $00
- D - I - - 0x039BC6 1C:9BB6: 00        .byte $00
- - - - - - 0x039BC7 1C:9BB7: 00        .byte $00
- D - I - - 0x039BC8 1C:9BB8: 0D        .byte $0D
- - - - - - 0x039BC9 1C:9BB9: 00        .byte $00
; 95 
- D - I - - 0x039BCA 1C:9BBA: 3E        .byte $3E
- D - I - - 0x039BCB 1C:9BBB: 00        .byte $00
- D - I - - 0x039BCC 1C:9BBC: 00        .byte $00
- D - I - - 0x039BCD 1C:9BBD: 00        .byte $00
- D - I - - 0x039BCE 1C:9BBE: 01        .byte $01
- - - - - - 0x039BCF 1C:9BBF: 00        .byte $00
- D - I - - 0x039BD0 1C:9BC0: 00        .byte $00
- D - I - - 0x039BD1 1C:9BC1: 00        .byte $00
- - - - - - 0x039BD2 1C:9BC2: 00        .byte $00
- D - I - - 0x039BD3 1C:9BC3: 00        .byte $00
- D - I - - 0x039BD4 1C:9BC4: 0E        .byte $0E
- - - - - - 0x039BD5 1C:9BC5: 00        .byte $00
; 96 
- D - I - - 0x039BD6 1C:9BC6: 3F        .byte $3F
- D - I - - 0x039BD7 1C:9BC7: 00        .byte $00
- D - I - - 0x039BD8 1C:9BC8: 00        .byte $00
- D - I - - 0x039BD9 1C:9BC9: 00        .byte $00
- D - I - - 0x039BDA 1C:9BCA: 01        .byte $01
- D - I - - 0x039BDB 1C:9BCB: 00        .byte $00
- D - I - - 0x039BDC 1C:9BCC: 00        .byte $00
- D - I - - 0x039BDD 1C:9BCD: 00        .byte $00
- - - - - - 0x039BDE 1C:9BCE: 00        .byte $00
- - - - - - 0x039BDF 1C:9BCF: 00        .byte $00
- D - I - - 0x039BE0 1C:9BD0: 0E        .byte $0E
- - - - - - 0x039BE1 1C:9BD1: 00        .byte $00
; 97 
- D - I - - 0x039BE2 1C:9BD2: 10        .byte $10
- D - I - - 0x039BE3 1C:9BD3: 00        .byte $00
- - - - - - 0x039BE4 1C:9BD4: 00        .byte $00
- - - - - - 0x039BE5 1C:9BD5: 00        .byte $00
- D - I - - 0x039BE6 1C:9BD6: 00        .byte $00
- D - I - - 0x039BE7 1C:9BD7: 00        .byte $00
- D - I - - 0x039BE8 1C:9BD8: 00        .byte $00
- - - - - - 0x039BE9 1C:9BD9: 00        .byte $00
- - - - - - 0x039BEA 1C:9BDA: 00        .byte $00
- - - - - - 0x039BEB 1C:9BDB: 00        .byte $00
- - - - - - 0x039BEC 1C:9BDC: 00        .byte $00
- - - - - - 0x039BED 1C:9BDD: 00        .byte $00
; 98 
- D - I - - 0x039BEE 1C:9BDE: 43        .byte $43
- D - I - - 0x039BEF 1C:9BDF: 0F        .byte $0F
- D - I - - 0x039BF0 1C:9BE0: D0        .byte $D0
- D - I - - 0x039BF1 1C:9BE1: 08        .byte $08
- D - I - - 0x039BF2 1C:9BE2: 05        .byte $05
- D - I - - 0x039BF3 1C:9BE3: 03        .byte $03
- - - - - - 0x039BF4 1C:9BE4: 00        .byte $00
- D - I - - 0x039BF5 1C:9BE5: 00        .byte $00
- D - I - - 0x039BF6 1C:9BE6: 00        .byte $00
- - - - - - 0x039BF7 1C:9BE7: 00        .byte $00
- D - I - - 0x039BF8 1C:9BE8: 1E        .byte $1E
- - - - - - 0x039BF9 1C:9BE9: 00        .byte $00
; 99 
- D - I - - 0x039BFA 1C:9BEA: 44        .byte $44
- D - I - - 0x039BFB 1C:9BEB: 00        .byte $00
- D - I - - 0x039BFC 1C:9BEC: 00        .byte $00
- D - I - - 0x039BFD 1C:9BED: 00        .byte $00
- D - I - - 0x039BFE 1C:9BEE: 01        .byte $01
- - - - - - 0x039BFF 1C:9BEF: 00        .byte $00
- D - I - - 0x039C00 1C:9BF0: 00        .byte $00
- D - I - - 0x039C01 1C:9BF1: 00        .byte $00
- - - - - - 0x039C02 1C:9BF2: 00        .byte $00
- - - - - - 0x039C03 1C:9BF3: 00        .byte $00
- D - I - - 0x039C04 1C:9BF4: 10        .byte $10
- - - - - - 0x039C05 1C:9BF5: 00        .byte $00
; 9A 
- D - I - - 0x039C06 1C:9BF6: 11        .byte $11
- D - I - - 0x039C07 1C:9BF7: 00        .byte $00
- - - - - - 0x039C08 1C:9BF8: 00        .byte $00
- - - - - - 0x039C09 1C:9BF9: 00        .byte $00
- D - I - - 0x039C0A 1C:9BFA: 00        .byte $00
- D - I - - 0x039C0B 1C:9BFB: 00        .byte $00
- - - - - - 0x039C0C 1C:9BFC: 00        .byte $00
- - - - - - 0x039C0D 1C:9BFD: 00        .byte $00
- - - - - - 0x039C0E 1C:9BFE: 00        .byte $00
- - - - - - 0x039C0F 1C:9BFF: 00        .byte $00
- - - - - - 0x039C10 1C:9C00: 00        .byte $00
- - - - - - 0x039C11 1C:9C01: 00        .byte $00
; 9B 
- D - I - - 0x039C12 1C:9C02: 46        .byte $46
- D - I - - 0x039C13 1C:9C03: 0F        .byte $0F
- D - I - - 0x039C14 1C:9C04: 00        .byte $00
- D - I - - 0x039C15 1C:9C05: 00        .byte $00
- D - I - - 0x039C16 1C:9C06: 01        .byte $01
- - - - - - 0x039C17 1C:9C07: 00        .byte $00
- - - - - - 0x039C18 1C:9C08: 00        .byte $00
- D - I - - 0x039C19 1C:9C09: 00        .byte $00
- - - - - - 0x039C1A 1C:9C0A: 00        .byte $00
- D - I - - 0x039C1B 1C:9C0B: 00        .byte $00
- D - I - - 0x039C1C 1C:9C0C: 03        .byte $03
- - - - - - 0x039C1D 1C:9C0D: 00        .byte $00
; 9C 
- D - I - - 0x039C1E 1C:9C0E: 47        .byte $47
- D - I - - 0x039C1F 1C:9C0F: 00        .byte $00
- D - I - - 0x039C20 1C:9C10: 00        .byte $00
- D - I - - 0x039C21 1C:9C11: 00        .byte $00
- D - I - - 0x039C22 1C:9C12: 01        .byte $01
- - - - - - 0x039C23 1C:9C13: 00        .byte $00
- - - - - - 0x039C24 1C:9C14: 00        .byte $00
- D - I - - 0x039C25 1C:9C15: 00        .byte $00
- - - - - - 0x039C26 1C:9C16: 00        .byte $00
- D - I - - 0x039C27 1C:9C17: 00        .byte $00
- D - I - - 0x039C28 1C:9C18: 03        .byte $03
- - - - - - 0x039C29 1C:9C19: 00        .byte $00
; 9D 
- D - I - - 0x039C2A 1C:9C1A: 4A        .byte $4A
- D - I - - 0x039C2B 1C:9C1B: 00        .byte $00
- D - I - - 0x039C2C 1C:9C1C: 00        .byte $00
- D - I - - 0x039C2D 1C:9C1D: 00        .byte $00
- D - I - - 0x039C2E 1C:9C1E: 00        .byte $00
- - - - - - 0x039C2F 1C:9C1F: 00        .byte $00
- - - - - - 0x039C30 1C:9C20: 00        .byte $00
- D - I - - 0x039C31 1C:9C21: 00        .byte $00
- - - - - - 0x039C32 1C:9C22: 00        .byte $00
- D - I - - 0x039C33 1C:9C23: 00        .byte $00
- D - I - - 0x039C34 1C:9C24: 11        .byte $11
- - - - - - 0x039C35 1C:9C25: 00        .byte $00
; 9E 
- D - I - - 0x039C36 1C:9C26: 4B        .byte $4B
- D - I - - 0x039C37 1C:9C27: 00        .byte $00
- D - I - - 0x039C38 1C:9C28: 00        .byte $00
- D - I - - 0x039C39 1C:9C29: 00        .byte $00
- D - I - - 0x039C3A 1C:9C2A: 00        .byte $00
- D - I - - 0x039C3B 1C:9C2B: 00        .byte $00
- D - I - - 0x039C3C 1C:9C2C: 00        .byte $00
- D - I - - 0x039C3D 1C:9C2D: 00        .byte $00
- - - - - - 0x039C3E 1C:9C2E: 00        .byte $00
- - - - - - 0x039C3F 1C:9C2F: 00        .byte $00
- D - I - - 0x039C40 1C:9C30: 11        .byte $11
- - - - - - 0x039C41 1C:9C31: 00        .byte $00
; 9F 
- D - I - - 0x039C42 1C:9C32: 14        .byte $14
- - - - - - 0x039C43 1C:9C33: 00        .byte $00
- - - - - - 0x039C44 1C:9C34: 00        .byte $00
- - - - - - 0x039C45 1C:9C35: 00        .byte $00
- D - I - - 0x039C46 1C:9C36: 00        .byte $00
- - - - - - 0x039C47 1C:9C37: 00        .byte $00
- - - - - - 0x039C48 1C:9C38: 00        .byte $00
- - - - - - 0x039C49 1C:9C39: 00        .byte $00
- - - - - - 0x039C4A 1C:9C3A: 00        .byte $00
- - - - - - 0x039C4B 1C:9C3B: 00        .byte $00
- - - - - - 0x039C4C 1C:9C3C: 00        .byte $00
- - - - - - 0x039C4D 1C:9C3D: 00        .byte $00
; A0 
- D - I - - 0x039C4E 1C:9C3E: 59        .byte $59
- D - I - - 0x039C4F 1C:9C3F: 00        .byte $00
- D - I - - 0x039C50 1C:9C40: 00        .byte $00
- D - I - - 0x039C51 1C:9C41: 00        .byte $00
- D - I - - 0x039C52 1C:9C42: 00        .byte $00
- D - I - - 0x039C53 1C:9C43: 00        .byte $00
- D - I - - 0x039C54 1C:9C44: 00        .byte $00
- D - I - - 0x039C55 1C:9C45: 00        .byte $00
- D - I - - 0x039C56 1C:9C46: 00        .byte $00
- D - I - - 0x039C57 1C:9C47: 00        .byte $00
- D - I - - 0x039C58 1C:9C48: 00        .byte $00
- - - - - - 0x039C59 1C:9C49: 00        .byte $00
; A1 
- D - I - - 0x039C5A 1C:9C4A: 5A        .byte $5A
- D - I - - 0x039C5B 1C:9C4B: 00        .byte $00
- D - I - - 0x039C5C 1C:9C4C: 00        .byte $00
- D - I - - 0x039C5D 1C:9C4D: 00        .byte $00
- D - I - - 0x039C5E 1C:9C4E: 00        .byte $00
- D - I - - 0x039C5F 1C:9C4F: 00        .byte $00
- - - - - - 0x039C60 1C:9C50: 00        .byte $00
- D - I - - 0x039C61 1C:9C51: 00        .byte $00
- D - I - - 0x039C62 1C:9C52: 00        .byte $00
- - - - - - 0x039C63 1C:9C53: 00        .byte $00
- D - I - - 0x039C64 1C:9C54: 03        .byte $03
- - - - - - 0x039C65 1C:9C55: 00        .byte $00
; A2 
- D - I - - 0x039C66 1C:9C56: 15        .byte $15
- D - I - - 0x039C67 1C:9C57: 00        .byte $00
- - - - - - 0x039C68 1C:9C58: 00        .byte $00
- - - - - - 0x039C69 1C:9C59: 00        .byte $00
- D - I - - 0x039C6A 1C:9C5A: 00        .byte $00
- - - - - - 0x039C6B 1C:9C5B: 00        .byte $00
- - - - - - 0x039C6C 1C:9C5C: 00        .byte $00
- - - - - - 0x039C6D 1C:9C5D: 00        .byte $00
- - - - - - 0x039C6E 1C:9C5E: 00        .byte $00
- - - - - - 0x039C6F 1C:9C5F: 00        .byte $00
- - - - - - 0x039C70 1C:9C60: 00        .byte $00
- - - - - - 0x039C71 1C:9C61: 00        .byte $00
; A3 
- D - I - - 0x039C72 1C:9C62: 5B        .byte $5B
- D - I - - 0x039C73 1C:9C63: 0F        .byte $0F
- D - I - - 0x039C74 1C:9C64: 00        .byte $00
- D - I - - 0x039C75 1C:9C65: 00        .byte $00
- D - I - - 0x039C76 1C:9C66: 01        .byte $01
- - - - - - 0x039C77 1C:9C67: 01        .byte $01
- D - I - - 0x039C78 1C:9C68: 00        .byte $00
- D - I - - 0x039C79 1C:9C69: 01        .byte $01
- - - - - - 0x039C7A 1C:9C6A: 01        .byte $01
- D - I - - 0x039C7B 1C:9C6B: 01        .byte $01
- D - I - - 0x039C7C 1C:9C6C: 00        .byte $00
- - - - - - 0x039C7D 1C:9C6D: 00        .byte $00
; A4 
- D - I - - 0x039C7E 1C:9C6E: 5C        .byte $5C
- D - I - - 0x039C7F 1C:9C6F: 0F        .byte $0F
- D - I - - 0x039C80 1C:9C70: 00        .byte $00
- D - I - - 0x039C81 1C:9C71: 00        .byte $00
- D - I - - 0x039C82 1C:9C72: 01        .byte $01
- - - - - - 0x039C83 1C:9C73: 01        .byte $01
- - - - - - 0x039C84 1C:9C74: 00        .byte $00
- D - I - - 0x039C85 1C:9C75: 01        .byte $01
- - - - - - 0x039C86 1C:9C76: 01        .byte $01
- - - - - - 0x039C87 1C:9C77: 01        .byte $01
- D - I - - 0x039C88 1C:9C78: 03        .byte $03
- - - - - - 0x039C89 1C:9C79: 00        .byte $00
; A5 
- D - I - - 0x039C8A 1C:9C7A: 16        .byte $16
- D - I - - 0x039C8B 1C:9C7B: 00        .byte $00
- - - - - - 0x039C8C 1C:9C7C: 00        .byte $00
- - - - - - 0x039C8D 1C:9C7D: 00        .byte $00
- D - I - - 0x039C8E 1C:9C7E: 00        .byte $00
- - - - - - 0x039C8F 1C:9C7F: 00        .byte $00
- - - - - - 0x039C90 1C:9C80: 00        .byte $00
- - - - - - 0x039C91 1C:9C81: 00        .byte $00
- - - - - - 0x039C92 1C:9C82: 00        .byte $00
- - - - - - 0x039C93 1C:9C83: 00        .byte $00
- - - - - - 0x039C94 1C:9C84: 00        .byte $00
- - - - - - 0x039C95 1C:9C85: 00        .byte $00
; A6 
- D - I - - 0x039C96 1C:9C86: 5E        .byte $5E
- D - I - - 0x039C97 1C:9C87: 0F        .byte $0F
- D - I - - 0x039C98 1C:9C88: 00        .byte $00
- D - I - - 0x039C99 1C:9C89: 00        .byte $00
- D - I - - 0x039C9A 1C:9C8A: 01        .byte $01
- D - I - - 0x039C9B 1C:9C8B: 03        .byte $03
- D - I - - 0x039C9C 1C:9C8C: 05        .byte $05
- D - I - - 0x039C9D 1C:9C8D: 06        .byte $06
- - - - - - 0x039C9E 1C:9C8E: 02        .byte $02
- - - - - - 0x039C9F 1C:9C8F: 02        .byte $02
- D - I - - 0x039CA0 1C:9C90: 00        .byte $00
- - - - - - 0x039CA1 1C:9C91: 00        .byte $00
; A7 
- D - I - - 0x039CA2 1C:9C92: 5F        .byte $5F
- D - I - - 0x039CA3 1C:9C93: 00        .byte $00
- D - I - - 0x039CA4 1C:9C94: 00        .byte $00
- D - I - - 0x039CA5 1C:9C95: 00        .byte $00
- D - I - - 0x039CA6 1C:9C96: 10        .byte $10
- D - I - - 0x039CA7 1C:9C97: 05        .byte $05
- - - - - - 0x039CA8 1C:9C98: 05        .byte $05
- D - I - - 0x039CA9 1C:9C99: 06        .byte $06
- D - I - - 0x039CAA 1C:9C9A: 02        .byte $02
- - - - - - 0x039CAB 1C:9C9B: 02        .byte $02
- D - I - - 0x039CAC 1C:9C9C: 01        .byte $01
- - - - - - 0x039CAD 1C:9C9D: 00        .byte $00
; A8 
- D - I - - 0x039CAE 1C:9C9E: 17        .byte $17
- D - I - - 0x039CAF 1C:9C9F: 00        .byte $00
- - - - - - 0x039CB0 1C:9CA0: 00        .byte $00
- - - - - - 0x039CB1 1C:9CA1: 00        .byte $00
- D - I - - 0x039CB2 1C:9CA2: 00        .byte $00
- D - I - - 0x039CB3 1C:9CA3: 00        .byte $00
- - - - - - 0x039CB4 1C:9CA4: 00        .byte $00
- - - - - - 0x039CB5 1C:9CA5: 00        .byte $00
- - - - - - 0x039CB6 1C:9CA6: 00        .byte $00
- - - - - - 0x039CB7 1C:9CA7: 00        .byte $00
- - - - - - 0x039CB8 1C:9CA8: 00        .byte $00
- - - - - - 0x039CB9 1C:9CA9: 00        .byte $00
; A9 
- D - I - - 0x039CBA 1C:9CAA: 60        .byte $60
- D - I - - 0x039CBB 1C:9CAB: 13        .byte $13
- D - I - - 0x039CBC 1C:9CAC: 08        .byte $08
- D - I - - 0x039CBD 1C:9CAD: 00        .byte $00
- D - I - - 0x039CBE 1C:9CAE: 00        .byte $00
- - - - - - 0x039CBF 1C:9CAF: 03        .byte $03
- D - I - - 0x039CC0 1C:9CB0: 05        .byte $05
- D - I - - 0x039CC1 1C:9CB1: 00        .byte $00
- - - - - - 0x039CC2 1C:9CB2: 00        .byte $00
- D - I - - 0x039CC3 1C:9CB3: 00        .byte $00
- D - I - - 0x039CC4 1C:9CB4: 00        .byte $00
- - - - - - 0x039CC5 1C:9CB5: 00        .byte $00
; AA 
- D - I - - 0x039CC6 1C:9CB6: 61        .byte $61
- D - I - - 0x039CC7 1C:9CB7: 13        .byte $13
- D - I - - 0x039CC8 1C:9CB8: 00        .byte $00
- D - I - - 0x039CC9 1C:9CB9: 00        .byte $00
- D - I - - 0x039CCA 1C:9CBA: 10        .byte $10
- D - I - - 0x039CCB 1C:9CBB: 03        .byte $03
- - - - - - 0x039CCC 1C:9CBC: 00        .byte $00
- D - I - - 0x039CCD 1C:9CBD: 00        .byte $00
- - - - - - 0x039CCE 1C:9CBE: 00        .byte $00
- - - - - - 0x039CCF 1C:9CBF: 00        .byte $00
- D - I - - 0x039CD0 1C:9CC0: 01        .byte $01
- - - - - - 0x039CD1 1C:9CC1: 00        .byte $00
; AB 
- D - I - - 0x039CD2 1C:9CC2: 18        .byte $18
- D - I - - 0x039CD3 1C:9CC3: 00        .byte $00
- - - - - - 0x039CD4 1C:9CC4: 00        .byte $00
- - - - - - 0x039CD5 1C:9CC5: 00        .byte $00
- D - I - - 0x039CD6 1C:9CC6: 00        .byte $00
- D - I - - 0x039CD7 1C:9CC7: 02        .byte $02
- D - I - - 0x039CD8 1C:9CC8: 00        .byte $00
- - - - - - 0x039CD9 1C:9CC9: 00        .byte $00
- - - - - - 0x039CDA 1C:9CCA: 00        .byte $00
- - - - - - 0x039CDB 1C:9CCB: 00        .byte $00
- - - - - - 0x039CDC 1C:9CCC: 00        .byte $00
- - - - - - 0x039CDD 1C:9CCD: 00        .byte $00
; AC 
- D - I - - 0x039CDE 1C:9CCE: 62        .byte $62
- D - I - - 0x039CDF 1C:9CCF: 00        .byte $00
- D - I - - 0x039CE0 1C:9CD0: 00        .byte $00
- D - I - - 0x039CE1 1C:9CD1: 00        .byte $00
- - - - - - 0x039CE2 1C:9CD2: 01        .byte $01
- - - - - - 0x039CE3 1C:9CD3: 03        .byte $03
- D - I - - 0x039CE4 1C:9CD4: 00        .byte $00
- D - I - - 0x039CE5 1C:9CD5: 00        .byte $00
- - - - - - 0x039CE6 1C:9CD6: 00        .byte $00
- - - - - - 0x039CE7 1C:9CD7: 00        .byte $00
- D - I - - 0x039CE8 1C:9CD8: 00        .byte $00
- - - - - - 0x039CE9 1C:9CD9: 00        .byte $00
; AD 
- D - I - - 0x039CEA 1C:9CDA: 63        .byte $63
- D - I - - 0x039CEB 1C:9CDB: 00        .byte $00
- D - I - - 0x039CEC 1C:9CDC: 00        .byte $00
- D - I - - 0x039CED 1C:9CDD: 00        .byte $00
- D - I - - 0x039CEE 1C:9CDE: 10        .byte $10
- D - I - - 0x039CEF 1C:9CDF: 03        .byte $03
- - - - - - 0x039CF0 1C:9CE0: 00        .byte $00
- D - I - - 0x039CF1 1C:9CE1: 00        .byte $00
- D - I - - 0x039CF2 1C:9CE2: 00        .byte $00
- - - - - - 0x039CF3 1C:9CE3: 00        .byte $00
- D - I - - 0x039CF4 1C:9CE4: 01        .byte $01
- - - - - - 0x039CF5 1C:9CE5: 00        .byte $00
; AE 
- D - I - - 0x039CF6 1C:9CE6: 19        .byte $19
- D - I - - 0x039CF7 1C:9CE7: 00        .byte $00
- - - - - - 0x039CF8 1C:9CE8: 00        .byte $00
- - - - - - 0x039CF9 1C:9CE9: 00        .byte $00
- D - I - - 0x039CFA 1C:9CEA: 00        .byte $00
- D - I - - 0x039CFB 1C:9CEB: 00        .byte $00
- - - - - - 0x039CFC 1C:9CEC: 00        .byte $00
- - - - - - 0x039CFD 1C:9CED: 00        .byte $00
- - - - - - 0x039CFE 1C:9CEE: 00        .byte $00
- - - - - - 0x039CFF 1C:9CEF: 00        .byte $00
- - - - - - 0x039D00 1C:9CF0: 00        .byte $00
- - - - - - 0x039D01 1C:9CF1: 00        .byte $00
; AF 
- D - I - - 0x039D02 1C:9CF2: 64        .byte $64
- D - I - - 0x039D03 1C:9CF3: 13        .byte $13
- D - I - - 0x039D04 1C:9CF4: 00        .byte $00
- D - I - - 0x039D05 1C:9CF5: 00        .byte $00
- D - I - - 0x039D06 1C:9CF6: 01        .byte $01
- D - I - - 0x039D07 1C:9CF7: 03        .byte $03
- D - I - - 0x039D08 1C:9CF8: 02        .byte $02
- D - I - - 0x039D09 1C:9CF9: 06        .byte $06
- - - - - - 0x039D0A 1C:9CFA: 02        .byte $02
- D - I - - 0x039D0B 1C:9CFB: 02        .byte $02
- D - I - - 0x039D0C 1C:9CFC: 00        .byte $00
- - - - - - 0x039D0D 1C:9CFD: 00        .byte $00
; B0 
- D - I - - 0x039D0E 1C:9CFE: 65        .byte $65
- D - I - - 0x039D0F 1C:9CFF: 13        .byte $13
- D - I - - 0x039D10 1C:9D00: 00        .byte $00
- D - I - - 0x039D11 1C:9D01: 00        .byte $00
- D - I - - 0x039D12 1C:9D02: 01        .byte $01
- D - I - - 0x039D13 1C:9D03: 03        .byte $03
- - - - - - 0x039D14 1C:9D04: 02        .byte $02
- D - I - - 0x039D15 1C:9D05: 06        .byte $06
- - - - - - 0x039D16 1C:9D06: 02        .byte $02
- - - - - - 0x039D17 1C:9D07: 02        .byte $02
- D - I - - 0x039D18 1C:9D08: 02        .byte $02
- - - - - - 0x039D19 1C:9D09: 00        .byte $00
; B1 
- D - I - - 0x039D1A 1C:9D0A: 1A        .byte $1A
- D - I - - 0x039D1B 1C:9D0B: 00        .byte $00
- - - - - - 0x039D1C 1C:9D0C: 00        .byte $00
- - - - - - 0x039D1D 1C:9D0D: 00        .byte $00
- D - I - - 0x039D1E 1C:9D0E: 00        .byte $00
- - - - - - 0x039D1F 1C:9D0F: 00        .byte $00
- D - I - - 0x039D20 1C:9D10: 00        .byte $00
- - - - - - 0x039D21 1C:9D11: 00        .byte $00
- - - - - - 0x039D22 1C:9D12: 00        .byte $00
- - - - - - 0x039D23 1C:9D13: 00        .byte $00
- - - - - - 0x039D24 1C:9D14: 00        .byte $00
- - - - - - 0x039D25 1C:9D15: 00        .byte $00
; B2 
- D - I - - 0x039D26 1C:9D16: 68        .byte $68
- D - I - - 0x039D27 1C:9D17: 00        .byte $00
- D - I - - 0x039D28 1C:9D18: 00        .byte $00
- D - I - - 0x039D29 1C:9D19: 0D        .byte $0D
- D - I - - 0x039D2A 1C:9D1A: 00        .byte $00
- D - I - - 0x039D2B 1C:9D1B: 00        .byte $00
- D - I - - 0x039D2C 1C:9D1C: 00        .byte $00
- D - I - - 0x039D2D 1C:9D1D: 00        .byte $00
- D - I - - 0x039D2E 1C:9D1E: 00        .byte $00
- D - I - - 0x039D2F 1C:9D1F: 00        .byte $00
- D - I - - 0x039D30 1C:9D20: 00        .byte $00
- - - - - - 0x039D31 1C:9D21: 00        .byte $00
; B3 
- D - I - - 0x039D32 1C:9D22: 69        .byte $69
- D - I - - 0x039D33 1C:9D23: 13        .byte $13
- D - I - - 0x039D34 1C:9D24: 00        .byte $00
- D - I - - 0x039D35 1C:9D25: 00        .byte $00
- D - I - - 0x039D36 1C:9D26: 14        .byte $14
- - - - - - 0x039D37 1C:9D27: 03        .byte $03
- D - I - - 0x039D38 1C:9D28: 00        .byte $00
- D - I - - 0x039D39 1C:9D29: 00        .byte $00
- - - - - - 0x039D3A 1C:9D2A: 01        .byte $01
- - - - - - 0x039D3B 1C:9D2B: 00        .byte $00
- D - I - - 0x039D3C 1C:9D2C: 16        .byte $16
- - - - - - 0x039D3D 1C:9D2D: 00        .byte $00
; B4 
- D - I - - 0x039D3E 1C:9D2E: 6A        .byte $6A
- D - I - - 0x039D3F 1C:9D2F: 13        .byte $13
- D - I - - 0x039D40 1C:9D30: 00        .byte $00
- D - I - - 0x039D41 1C:9D31: 00        .byte $00
- D - I - - 0x039D42 1C:9D32: 14        .byte $14
- D - I - - 0x039D43 1C:9D33: 03        .byte $03
- D - I - - 0x039D44 1C:9D34: 00        .byte $00
- D - I - - 0x039D45 1C:9D35: 00        .byte $00
- - - - - - 0x039D46 1C:9D36: 01        .byte $01
- D - I - - 0x039D47 1C:9D37: 00        .byte $00
- D - I - - 0x039D48 1C:9D38: 16        .byte $16
- - - - - - 0x039D49 1C:9D39: 00        .byte $00
; B5 
- D - I - - 0x039D4A 1C:9D3A: 1C        .byte $1C
- D - I - - 0x039D4B 1C:9D3B: 00        .byte $00
- - - - - - 0x039D4C 1C:9D3C: 00        .byte $00
- - - - - - 0x039D4D 1C:9D3D: 00        .byte $00
- D - I - - 0x039D4E 1C:9D3E: 00        .byte $00
- D - I - - 0x039D4F 1C:9D3F: 00        .byte $00
- D - I - - 0x039D50 1C:9D40: 00        .byte $00
- - - - - - 0x039D51 1C:9D41: 00        .byte $00
- - - - - - 0x039D52 1C:9D42: 00        .byte $00
- - - - - - 0x039D53 1C:9D43: 00        .byte $00
- - - - - - 0x039D54 1C:9D44: 00        .byte $00
- - - - - - 0x039D55 1C:9D45: 00        .byte $00
; B6 
- D - I - - 0x039D56 1C:9D46: 6C        .byte $6C
- D - I - - 0x039D57 1C:9D47: 00        .byte $00
- D - I - - 0x039D58 1C:9D48: 00        .byte $00
- D - I - - 0x039D59 1C:9D49: 00        .byte $00
- D - I - - 0x039D5A 1C:9D4A: 00        .byte $00
- - - - - - 0x039D5B 1C:9D4B: 03        .byte $03
- D - I - - 0x039D5C 1C:9D4C: 00        .byte $00
- D - I - - 0x039D5D 1C:9D4D: 00        .byte $00
- - - - - - 0x039D5E 1C:9D4E: 00        .byte $00
- D - I - - 0x039D5F 1C:9D4F: 00        .byte $00
- D - I - - 0x039D60 1C:9D50: 01        .byte $01
- - - - - - 0x039D61 1C:9D51: 00        .byte $00
; B7 
- D - I - - 0x039D62 1C:9D52: 6D        .byte $6D
- D - I - - 0x039D63 1C:9D53: 00        .byte $00
- D - I - - 0x039D64 1C:9D54: 00        .byte $00
- D - I - - 0x039D65 1C:9D55: 00        .byte $00
- D - I - - 0x039D66 1C:9D56: 00        .byte $00
- D - I - - 0x039D67 1C:9D57: 03        .byte $03
- D - I - - 0x039D68 1C:9D58: 00        .byte $00
- D - I - - 0x039D69 1C:9D59: 00        .byte $00
- D - I - - 0x039D6A 1C:9D5A: 00        .byte $00
- D - I - - 0x039D6B 1C:9D5B: 00        .byte $00
- D - I - - 0x039D6C 1C:9D5C: 17        .byte $17
- - - - - - 0x039D6D 1C:9D5D: 00        .byte $00
; B8 
- D - I - - 0x039D6E 1C:9D5E: 70        .byte $70
- D - I - - 0x039D6F 1C:9D5F: 00        .byte $00
- D - I - - 0x039D70 1C:9D60: 00        .byte $00
- D - I - - 0x039D71 1C:9D61: 00        .byte $00
- D - I - - 0x039D72 1C:9D62: 01        .byte $01
- - - - - - 0x039D73 1C:9D63: 03        .byte $03
- D - I - - 0x039D74 1C:9D64: 00        .byte $00
- D - I - - 0x039D75 1C:9D65: 00        .byte $00
- - - - - - 0x039D76 1C:9D66: 02        .byte $02
- - - - - - 0x039D77 1C:9D67: 02        .byte $02
- D - I - - 0x039D78 1C:9D68: 01        .byte $01
- - - - - - 0x039D79 1C:9D69: 00        .byte $00
; B9 
- D - I - - 0x039D7A 1C:9D6A: 71        .byte $71
- D - I - - 0x039D7B 1C:9D6B: 00        .byte $00
- D - I - - 0x039D7C 1C:9D6C: 00        .byte $00
- D - I - - 0x039D7D 1C:9D6D: 00        .byte $00
- D - I - - 0x039D7E 1C:9D6E: 01        .byte $01
- D - I - - 0x039D7F 1C:9D6F: 03        .byte $03
- D - I - - 0x039D80 1C:9D70: 00        .byte $00
- D - I - - 0x039D81 1C:9D71: 00        .byte $00
- - - - - - 0x039D82 1C:9D72: 02        .byte $02
- D - I - - 0x039D83 1C:9D73: 00        .byte $00
- D - I - - 0x039D84 1C:9D74: 01        .byte $01
- - - - - - 0x039D85 1C:9D75: 00        .byte $00
; BA 
- D - I - - 0x039D86 1C:9D76: 1E        .byte $1E
- - - - - - 0x039D87 1C:9D77: 00        .byte $00
- - - - - - 0x039D88 1C:9D78: 00        .byte $00
- - - - - - 0x039D89 1C:9D79: 00        .byte $00
- D - I - - 0x039D8A 1C:9D7A: 01        .byte $01
- D - I - - 0x039D8B 1C:9D7B: 00        .byte $00
- - - - - - 0x039D8C 1C:9D7C: 00        .byte $00
- - - - - - 0x039D8D 1C:9D7D: 00        .byte $00
- - - - - - 0x039D8E 1C:9D7E: 00        .byte $00
- - - - - - 0x039D8F 1C:9D7F: 00        .byte $00
- - - - - - 0x039D90 1C:9D80: 00        .byte $00
- - - - - - 0x039D91 1C:9D81: 00        .byte $00
; BB 
- D - I - - 0x039D92 1C:9D82: 73        .byte $73
- D - I - - 0x039D93 1C:9D83: 00        .byte $00
- D - I - - 0x039D94 1C:9D84: 00        .byte $00
- D - I - - 0x039D95 1C:9D85: 00        .byte $00
- D - I - - 0x039D96 1C:9D86: 14        .byte $14
- - - - - - 0x039D97 1C:9D87: 03        .byte $03
- D - I - - 0x039D98 1C:9D88: 00        .byte $00
- D - I - - 0x039D99 1C:9D89: 00        .byte $00
- - - - - - 0x039D9A 1C:9D8A: 00        .byte $00
- D - I - - 0x039D9B 1C:9D8B: 00        .byte $00
- D - I - - 0x039D9C 1C:9D8C: 0D        .byte $0D
- - - - - - 0x039D9D 1C:9D8D: 00        .byte $00
; BC 
- D - I - - 0x039D9E 1C:9D8E: 74        .byte $74
- D - I - - 0x039D9F 1C:9D8F: 00        .byte $00
- D - I - - 0x039DA0 1C:9D90: 00        .byte $00
- D - I - - 0x039DA1 1C:9D91: 00        .byte $00
- D - I - - 0x039DA2 1C:9D92: 14        .byte $14
- D - I - - 0x039DA3 1C:9D93: 03        .byte $03
- - - - - - 0x039DA4 1C:9D94: 00        .byte $00
- D - I - - 0x039DA5 1C:9D95: 00        .byte $00
- - - - - - 0x039DA6 1C:9D96: 00        .byte $00
- - - - - - 0x039DA7 1C:9D97: 00        .byte $00
- D - I - - 0x039DA8 1C:9D98: 0D        .byte $0D
- - - - - - 0x039DA9 1C:9D99: 00        .byte $00
; BD 
- D - I - - 0x039DAA 1C:9D9A: 1F        .byte $1F
- D - I - - 0x039DAB 1C:9D9B: 00        .byte $00
- - - - - - 0x039DAC 1C:9D9C: 00        .byte $00
- - - - - - 0x039DAD 1C:9D9D: 00        .byte $00
- D - I - - 0x039DAE 1C:9D9E: 01        .byte $01
- D - I - - 0x039DAF 1C:9D9F: 02        .byte $02
- D - I - - 0x039DB0 1C:9DA0: 00        .byte $00
- - - - - - 0x039DB1 1C:9DA1: 00        .byte $00
- - - - - - 0x039DB2 1C:9DA2: 00        .byte $00
- - - - - - 0x039DB3 1C:9DA3: 00        .byte $00
- - - - - - 0x039DB4 1C:9DA4: 00        .byte $00
- - - - - - 0x039DB5 1C:9DA5: 00        .byte $00
; BE 
- D - I - - 0x039DB6 1C:9DA6: 77        .byte $77
- D - I - - 0x039DB7 1C:9DA7: 00        .byte $00
- D - I - - 0x039DB8 1C:9DA8: 08        .byte $08
- D - I - - 0x039DB9 1C:9DA9: 00        .byte $00
- D - I - - 0x039DBA 1C:9DAA: 00        .byte $00
- D - I - - 0x039DBB 1C:9DAB: 03        .byte $03
- D - I - - 0x039DBC 1C:9DAC: 00        .byte $00
- D - I - - 0x039DBD 1C:9DAD: 00        .byte $00
- - - - - - 0x039DBE 1C:9DAE: 01        .byte $01
- D - I - - 0x039DBF 1C:9DAF: 00        .byte $00
- D - I - - 0x039DC0 1C:9DB0: 0B        .byte $0B
- - - - - - 0x039DC1 1C:9DB1: 00        .byte $00
; BF 
- D - I - - 0x039DC2 1C:9DB2: 78        .byte $78
- D - I - - 0x039DC3 1C:9DB3: 00        .byte $00
- D - I - - 0x039DC4 1C:9DB4: 00        .byte $00
- D - I - - 0x039DC5 1C:9DB5: 00        .byte $00
- D - I - - 0x039DC6 1C:9DB6: 00        .byte $00
- D - I - - 0x039DC7 1C:9DB7: 03        .byte $03
- D - I - - 0x039DC8 1C:9DB8: 00        .byte $00
- D - I - - 0x039DC9 1C:9DB9: 00        .byte $00
- D - I - - 0x039DCA 1C:9DBA: 01        .byte $01
- D - I - - 0x039DCB 1C:9DBB: 00        .byte $00
- D - I - - 0x039DCC 1C:9DBC: 0B        .byte $0B
- - - - - - 0x039DCD 1C:9DBD: 00        .byte $00
; C0 
- D - I - - 0x039DCE 1C:9DBE: 7A        .byte $7A
- D - I - - 0x039DCF 1C:9DBF: 13        .byte $13
- D - I - - 0x039DD0 1C:9DC0: 10        .byte $10
- D - I - - 0x039DD1 1C:9DC1: 00        .byte $00
- - - - - - 0x039DD2 1C:9DC2: 00        .byte $00
- - - - - - 0x039DD3 1C:9DC3: 03        .byte $03
- - - - - - 0x039DD4 1C:9DC4: 00        .byte $00
- D - I - - 0x039DD5 1C:9DC5: 00        .byte $00
- - - - - - 0x039DD6 1C:9DC6: 00        .byte $00
- D - I - - 0x039DD7 1C:9DC7: 00        .byte $00
- - - - - - 0x039DD8 1C:9DC8: 17        .byte $17
- - - - - - 0x039DD9 1C:9DC9: 00        .byte $00
; C1 
- D - I - - 0x039DDA 1C:9DCA: 7B        .byte $7B
- D - I - - 0x039DDB 1C:9DCB: 13        .byte $13
- D - I - - 0x039DDC 1C:9DCC: 00        .byte $00
- D - I - - 0x039DDD 1C:9DCD: 00        .byte $00
- D - I - - 0x039DDE 1C:9DCE: 00        .byte $00
- D - I - - 0x039DDF 1C:9DCF: 03        .byte $03
- D - I - - 0x039DE0 1C:9DD0: 00        .byte $00
- D - I - - 0x039DE1 1C:9DD1: 00        .byte $00
- - - - - - 0x039DE2 1C:9DD2: 00        .byte $00
- D - I - - 0x039DE3 1C:9DD3: 00        .byte $00
- D - I - - 0x039DE4 1C:9DD4: 17        .byte $17
- - - - - - 0x039DE5 1C:9DD5: 00        .byte $00
; C2 
- D - I - - 0x039DE6 1C:9DD6: 21        .byte $21
- - - - - - 0x039DE7 1C:9DD7: 00        .byte $00
- - - - - - 0x039DE8 1C:9DD8: 00        .byte $00
- - - - - - 0x039DE9 1C:9DD9: 00        .byte $00
- D - I - - 0x039DEA 1C:9DDA: 01        .byte $01
- D - I - - 0x039DEB 1C:9DDB: 00        .byte $00
- - - - - - 0x039DEC 1C:9DDC: 00        .byte $00
- - - - - - 0x039DED 1C:9DDD: 00        .byte $00
- - - - - - 0x039DEE 1C:9DDE: 00        .byte $00
- - - - - - 0x039DEF 1C:9DDF: 00        .byte $00
- - - - - - 0x039DF0 1C:9DE0: 00        .byte $00
- - - - - - 0x039DF1 1C:9DE1: 00        .byte $00
; C3 
- D - I - - 0x039DF2 1C:9DE2: 7D        .byte $7D
- D - I - - 0x039DF3 1C:9DE3: 19        .byte $19
- D - I - - 0x039DF4 1C:9DE4: 08        .byte $08
- D - I - - 0x039DF5 1C:9DE5: 00        .byte $00
- D - I - - 0x039DF6 1C:9DE6: 17        .byte $17
- D - I - - 0x039DF7 1C:9DE7: 05        .byte $05
- D - I - - 0x039DF8 1C:9DE8: 03        .byte $03
- D - I - - 0x039DF9 1C:9DE9: 00        .byte $00
- - - - - - 0x039DFA 1C:9DEA: 00        .byte $00
- D - I - - 0x039DFB 1C:9DEB: 00        .byte $00
- D - I - - 0x039DFC 1C:9DEC: 18        .byte $18
- - - - - - 0x039DFD 1C:9DED: 00        .byte $00
; C4 
- D - I - - 0x039DFE 1C:9DEE: 7E        .byte $7E
- D - I - - 0x039DFF 1C:9DEF: 19        .byte $19
- D - I - - 0x039E00 1C:9DF0: 00        .byte $00
- D - I - - 0x039E01 1C:9DF1: 00        .byte $00
- D - I - - 0x039E02 1C:9DF2: 17        .byte $17
- D - I - - 0x039E03 1C:9DF3: 05        .byte $05
- D - I - - 0x039E04 1C:9DF4: 03        .byte $03
- D - I - - 0x039E05 1C:9DF5: 00        .byte $00
- - - - - - 0x039E06 1C:9DF6: 00        .byte $00
- - - - - - 0x039E07 1C:9DF7: 00        .byte $00
- D - I - - 0x039E08 1C:9DF8: 18        .byte $18
- - - - - - 0x039E09 1C:9DF9: 00        .byte $00
; C5 
- D - I - - 0x039E0A 1C:9DFA: 22        .byte $22
- D - I - - 0x039E0B 1C:9DFB: 00        .byte $00
- - - - - - 0x039E0C 1C:9DFC: 00        .byte $00
- - - - - - 0x039E0D 1C:9DFD: 00        .byte $00
- D - I - - 0x039E0E 1C:9DFE: 01        .byte $01
- D - I - - 0x039E0F 1C:9DFF: 00        .byte $00
- - - - - - 0x039E10 1C:9E00: 00        .byte $00
- - - - - - 0x039E11 1C:9E01: 00        .byte $00
- - - - - - 0x039E12 1C:9E02: 00        .byte $00
- - - - - - 0x039E13 1C:9E03: 00        .byte $00
- - - - - - 0x039E14 1C:9E04: 00        .byte $00
- - - - - - 0x039E15 1C:9E05: 00        .byte $00
; C6 
- D - I - - 0x039E16 1C:9E06: 81        .byte $81
- D - I - - 0x039E17 1C:9E07: 00        .byte $00
- D - I - - 0x039E18 1C:9E08: 00        .byte $00
- D - I - - 0x039E19 1C:9E09: 00        .byte $00
- D - I - - 0x039E1A 1C:9E0A: 14        .byte $14
- - - - - - 0x039E1B 1C:9E0B: 00        .byte $00
- - - - - - 0x039E1C 1C:9E0C: 00        .byte $00
- D - I - - 0x039E1D 1C:9E0D: 00        .byte $00
- - - - - - 0x039E1E 1C:9E0E: 00        .byte $00
- - - - - - 0x039E1F 1C:9E0F: 00        .byte $00
- D - I - - 0x039E20 1C:9E10: 19        .byte $19
- - - - - - 0x039E21 1C:9E11: 00        .byte $00
; C7 
- D - I - - 0x039E22 1C:9E12: 87        .byte $87
- D - I - - 0x039E23 1C:9E13: 00        .byte $00
- D - I - - 0x039E24 1C:9E14: 00        .byte $00
- D - I - - 0x039E25 1C:9E15: 00        .byte $00
- D - I - - 0x039E26 1C:9E16: 00        .byte $00
- - - - - - 0x039E27 1C:9E17: 00        .byte $00
- D - I - - 0x039E28 1C:9E18: 00        .byte $00
- D - I - - 0x039E29 1C:9E19: 00        .byte $00
- - - - - - 0x039E2A 1C:9E1A: 00        .byte $00
- D - I - - 0x039E2B 1C:9E1B: 00        .byte $00
- D - I - - 0x039E2C 1C:9E1C: 00        .byte $00
- - - - - - 0x039E2D 1C:9E1D: 00        .byte $00
; C8 
- D - I - - 0x039E2E 1C:9E1E: 99        .byte $99
- D - I - - 0x039E2F 1C:9E1F: 16        .byte $16
- D - I - - 0x039E30 1C:9E20: FF        .byte $FF
- - - - - - 0x039E31 1C:9E21: 00        .byte $00
- D - I - - 0x039E32 1C:9E22: 02        .byte $02
- D - I - - 0x039E33 1C:9E23: 01        .byte $01
- - - - - - 0x039E34 1C:9E24: 00        .byte $00
- - - - - - 0x039E35 1C:9E25: 00        .byte $00
- - - - - - 0x039E36 1C:9E26: 02        .byte $02
- - - - - - 0x039E37 1C:9E27: 02        .byte $02
- D - I - - 0x039E38 1C:9E28: 00        .byte $00
- - - - - - 0x039E39 1C:9E29: 00        .byte $00
; C9 
- D - I - - 0x039E3A 1C:9E2A: 9A        .byte $9A
- D - I - - 0x039E3B 1C:9E2B: 17        .byte $17
- - - - - - 0x039E3C 1C:9E2C: 00        .byte $00
- - - - - - 0x039E3D 1C:9E2D: 00        .byte $00
- D - I - - 0x039E3E 1C:9E2E: 0A        .byte $0A
- - - - - - 0x039E3F 1C:9E2F: 00        .byte $00
- - - - - - 0x039E40 1C:9E30: 00        .byte $00
- - - - - - 0x039E41 1C:9E31: 00        .byte $00
- - - - - - 0x039E42 1C:9E32: 00        .byte $00
- - - - - - 0x039E43 1C:9E33: 00        .byte $00
- - - - - - 0x039E44 1C:9E34: 00        .byte $00
- - - - - - 0x039E45 1C:9E35: 00        .byte $00
; CA 
- D - I - - 0x039E46 1C:9E36: 9B        .byte $9B
- D - I - - 0x039E47 1C:9E37: 18        .byte $18
- D - I - - 0x039E48 1C:9E38: 00        .byte $00
- D - I - - 0x039E49 1C:9E39: FF        .byte $FF
- D - I - - 0x039E4A 1C:9E3A: 1B        .byte $1B
- D - I - - 0x039E4B 1C:9E3B: 06        .byte $06
- - - - - - 0x039E4C 1C:9E3C: 00        .byte $00
- D - I - - 0x039E4D 1C:9E3D: 03        .byte $03
- - - - - - 0x039E4E 1C:9E3E: 00        .byte $00
- - - - - - 0x039E4F 1C:9E3F: 00        .byte $00
- D - I - - 0x039E50 1C:9E40: 24        .byte $24
- - - - - - 0x039E51 1C:9E41: 00        .byte $00
; CB 
- D - I - - 0x039E52 1C:9E42: 9C        .byte $9C
- D - I - - 0x039E53 1C:9E43: 0A        .byte $0A
- D - I - - 0x039E54 1C:9E44: 00        .byte $00
- D - I - - 0x039E55 1C:9E45: 00        .byte $00
- D - I - - 0x039E56 1C:9E46: 14        .byte $14
- D - I - - 0x039E57 1C:9E47: 01        .byte $01
- - - - - - 0x039E58 1C:9E48: 00        .byte $00
- D - I - - 0x039E59 1C:9E49: 00        .byte $00
- - - - - - 0x039E5A 1C:9E4A: 00        .byte $00
- - - - - - 0x039E5B 1C:9E4B: 00        .byte $00
- D - I - - 0x039E5C 1C:9E4C: 0B        .byte $0B
- - - - - - 0x039E5D 1C:9E4D: 00        .byte $00



tbl_9E4E:
; таблица параметров игроков исходя из их прокачки
- D - - - - 0x039E5E 1C:9E4E: 08        .byte $08   ; 00
- D - - - - 0x039E5F 1C:9E4F: 08        .byte $08   ; 01
- D - - - - 0x039E60 1C:9E50: 08        .byte $08   ; 02
- D - - - - 0x039E61 1C:9E51: 09        .byte $09   ; 03
- D - - - - 0x039E62 1C:9E52: 09        .byte $09   ; 04
- D - - - - 0x039E63 1C:9E53: 09        .byte $09   ; 05
- D - - - - 0x039E64 1C:9E54: 09        .byte $09   ; 06
- D - - - - 0x039E65 1C:9E55: 0A        .byte $0A   ; 07
- D - - - - 0x039E66 1C:9E56: 0A        .byte $0A   ; 08
- D - - - - 0x039E67 1C:9E57: 0A        .byte $0A   ; 09
- D - - - - 0x039E68 1C:9E58: 0B        .byte $0B   ; 0A
- D - - - - 0x039E69 1C:9E59: 0B        .byte $0B   ; 0B
- D - - - - 0x039E6A 1C:9E5A: 0B        .byte $0B   ; 0C
- D - - - - 0x039E6B 1C:9E5B: 0C        .byte $0C   ; 0D
- D - - - - 0x039E6C 1C:9E5C: 0C        .byte $0C   ; 0E
- D - - - - 0x039E6D 1C:9E5D: 0C        .byte $0C   ; 0F
- D - - - - 0x039E6E 1C:9E5E: 0D        .byte $0D   ; 10
- D - - - - 0x039E6F 1C:9E5F: 0D        .byte $0D   ; 11
- D - - - - 0x039E70 1C:9E60: 0D        .byte $0D   ; 12
- D - - - - 0x039E71 1C:9E61: 0E        .byte $0E   ; 13
- D - - - - 0x039E72 1C:9E62: 0E        .byte $0E   ; 14
- D - - - - 0x039E73 1C:9E63: 0E        .byte $0E   ; 15
- D - - - - 0x039E74 1C:9E64: 0F        .byte $0F   ; 16
- D - - - - 0x039E75 1C:9E65: 0F        .byte $0F   ; 17
- D - - - - 0x039E76 1C:9E66: 10        .byte $10   ; 18
- D - - - - 0x039E77 1C:9E67: 10        .byte $10   ; 19
- D - - - - 0x039E78 1C:9E68: 11        .byte $11   ; 1A
- D - - - - 0x039E79 1C:9E69: 11        .byte $11   ; 1B
- D - - - - 0x039E7A 1C:9E6A: 11        .byte $11   ; 1C
- D - - - - 0x039E7B 1C:9E6B: 12        .byte $12   ; 1D
- D - - - - 0x039E7C 1C:9E6C: 12        .byte $12   ; 1E
- D - - - - 0x039E7D 1C:9E6D: 13        .byte $13   ; 1F
- D - - - - 0x039E7E 1C:9E6E: 14        .byte $14   ; 20
- D - - - - 0x039E7F 1C:9E6F: 14        .byte $14   ; 21
- D - - - - 0x039E80 1C:9E70: 15        .byte $15   ; 22
- D - - - - 0x039E81 1C:9E71: 15        .byte $15   ; 23
- D - - - - 0x039E82 1C:9E72: 16        .byte $16   ; 24
- D - - - - 0x039E83 1C:9E73: 16        .byte $16   ; 25
- D - - - - 0x039E84 1C:9E74: 17        .byte $17   ; 26
- D - - - - 0x039E85 1C:9E75: 18        .byte $18   ; 27
- D - - - - 0x039E86 1C:9E76: 18        .byte $18   ; 28
- D - - - - 0x039E87 1C:9E77: 19        .byte $19   ; 29
- D - - - - 0x039E88 1C:9E78: 1A        .byte $1A   ; 2A
- D - - - - 0x039E89 1C:9E79: 1A        .byte $1A   ; 2B
- D - - - - 0x039E8A 1C:9E7A: 1B        .byte $1B   ; 2C
- D - - - - 0x039E8B 1C:9E7B: 1C        .byte $1C   ; 2D
- D - - - - 0x039E8C 1C:9E7C: 1D        .byte $1D   ; 2E
- D - - - - 0x039E8D 1C:9E7D: 1D        .byte $1D   ; 2F
- D - - - - 0x039E8E 1C:9E7E: 1E        .byte $1E   ; 30
- D - - - - 0x039E8F 1C:9E7F: 1F        .byte $1F   ; 31
- D - - - - 0x039E90 1C:9E80: 20        .byte $20   ; 32
- D - - - - 0x039E91 1C:9E81: 21        .byte $21   ; 33
- D - - - - 0x039E92 1C:9E82: 22        .byte $22   ; 34
- D - - - - 0x039E93 1C:9E83: 23        .byte $23   ; 35
- D - - - - 0x039E94 1C:9E84: 24        .byte $24   ; 36
- D - - - - 0x039E95 1C:9E85: 25        .byte $25   ; 37
- D - - - - 0x039E96 1C:9E86: 26        .byte $26   ; 38
- D - - - - 0x039E97 1C:9E87: 27        .byte $27   ; 39
- D - - - - 0x039E98 1C:9E88: 28        .byte $28   ; 3A
- D - - - - 0x039E99 1C:9E89: 29        .byte $29   ; 3B
- D - - - - 0x039E9A 1C:9E8A: 2A        .byte $2A   ; 3C
- D - - - - 0x039E9B 1C:9E8B: 2B        .byte $2B   ; 3D
- D - - - - 0x039E9C 1C:9E8C: 2C        .byte $2C   ; 3E
- D - - - - 0x039E9D 1C:9E8D: 2D        .byte $2D   ; 3F
- D - - - - 0x039E9E 1C:9E8E: 2F        .byte $2F   ; 40
- D - - - - 0x039E9F 1C:9E8F: 30        .byte $30   ; 41
- D - - - - 0x039EA0 1C:9E90: 31        .byte $31   ; 42
- D - - - - 0x039EA1 1C:9E91: 33        .byte $33   ; 43
- D - - - - 0x039EA2 1C:9E92: 34        .byte $34   ; 44
- D - - - - 0x039EA3 1C:9E93: 35        .byte $35   ; 45
- D - - - - 0x039EA4 1C:9E94: 37        .byte $37   ; 46
- D - - - - 0x039EA5 1C:9E95: 38        .byte $38   ; 47
- D - - - - 0x039EA6 1C:9E96: 3A        .byte $3A   ; 48
- D - - - - 0x039EA7 1C:9E97: 3B        .byte $3B   ; 49
- D - - - - 0x039EA8 1C:9E98: 3D        .byte $3D   ; 4A
- D - - - - 0x039EA9 1C:9E99: 3F        .byte $3F   ; 4B
- D - - - - 0x039EAA 1C:9E9A: 41        .byte $41   ; 4C
- D - - - - 0x039EAB 1C:9E9B: 42        .byte $42   ; 4D
- D - - - - 0x039EAC 1C:9E9C: 44        .byte $44   ; 4E
- D - - - - 0x039EAD 1C:9E9D: 46        .byte $46   ; 4F
- D - - - - 0x039EAE 1C:9E9E: 48        .byte $48   ; 50
- D - - - - 0x039EAF 1C:9E9F: 4A        .byte $4A   ; 51
- D - - - - 0x039EB0 1C:9EA0: 4C        .byte $4C   ; 52
- D - - - - 0x039EB1 1C:9EA1: 4E        .byte $4E   ; 53
- D - - - - 0x039EB2 1C:9EA2: 50        .byte $50   ; 54
- D - - - - 0x039EB3 1C:9EA3: 52        .byte $52   ; 55
- D - - - - 0x039EB4 1C:9EA4: 54        .byte $54   ; 56
- D - - - - 0x039EB5 1C:9EA5: 57        .byte $57   ; 57
- D - - - - 0x039EB6 1C:9EA6: 59        .byte $59   ; 58
- D - - - - 0x039EB7 1C:9EA7: 5C        .byte $5C   ; 59
- D - - - - 0x039EB8 1C:9EA8: 5E        .byte $5E   ; 5A
- D - - - - 0x039EB9 1C:9EA9: 61        .byte $61   ; 5B
- D - - - - 0x039EBA 1C:9EAA: 63        .byte $63   ; 5C
- D - - - - 0x039EBB 1C:9EAB: 66        .byte $66   ; 5D
- D - - - - 0x039EBC 1C:9EAC: 69        .byte $69   ; 5E
- D - - - - 0x039EBD 1C:9EAD: 6C        .byte $6C   ; 5F
- D - - - - 0x039EBE 1C:9EAE: 6F        .byte $6F   ; 60
- D - - - - 0x039EBF 1C:9EAF: 72        .byte $72   ; 61
- D - - - - 0x039EC0 1C:9EB0: 75        .byte $75   ; 62
- D - - - - 0x039EC1 1C:9EB1: 78        .byte $78   ; 63
- D - - - - 0x039EC2 1C:9EB2: 7B        .byte $7B   ; 64
- D - - - - 0x039EC3 1C:9EB3: 7E        .byte $7E   ; 65
- D - - - - 0x039EC4 1C:9EB4: 82        .byte $82   ; 66
- D - - - - 0x039EC5 1C:9EB5: 85        .byte $85   ; 67
- D - - - - 0x039EC6 1C:9EB6: 89        .byte $89   ; 68
- D - - - - 0x039EC7 1C:9EB7: 8D        .byte $8D   ; 69
- D - - - - 0x039EC8 1C:9EB8: 91        .byte $91   ; 6A
- D - - - - 0x039EC9 1C:9EB9: 95        .byte $95   ; 6B
- D - - - - 0x039ECA 1C:9EBA: 99        .byte $99   ; 6C
- D - - - - 0x039ECB 1C:9EBB: 9D        .byte $9D   ; 6D
- D - - - - 0x039ECC 1C:9EBC: A1        .byte $A1   ; 6E
- D - - - - 0x039ECD 1C:9EBD: A5        .byte $A5   ; 6F
- D - - - - 0x039ECE 1C:9EBE: AA        .byte $AA   ; 70
- D - - - - 0x039ECF 1C:9EBF: AF        .byte $AF   ; 71
- D - - - - 0x039ED0 1C:9EC0: B3        .byte $B3   ; 72
- - - - - - 0x039ED1 1C:9EC1: B7        .byte $B7   ; 73
- D - - - - 0x039ED2 1C:9EC2: BA        .byte $BA   ; 74
- - - - - - 0x039ED3 1C:9EC3: BD        .byte $BD   ; 75
- - - - - - 0x039ED4 1C:9EC4: C0        .byte $C0   ; 76
- D - - - - 0x039ED5 1C:9EC5: C3        .byte $C3   ; 77
- - - - - - 0x039ED6 1C:9EC6: C6        .byte $C6   ; 78
- - - - - - 0x039ED7 1C:9EC7: C9        .byte $C9   ; 79
- D - - - - 0x039ED8 1C:9EC8: CC        .byte $CC   ; 7A
- - - - - - 0x039ED9 1C:9EC9: CE        .byte $CE   ; 7B
- - - - - - 0x039EDA 1C:9ECA: D1        .byte $D1   ; 7C
- - - - - - 0x039EDB 1C:9ECB: D3        .byte $D3   ; 7D
- - - - - - 0x039EDC 1C:9ECC: D5        .byte $D5   ; 7E
- - - - - - 0x039EDD 1C:9ECD: D7        .byte $D7   ; 7F
- D - - - - 0x039EDE 1C:9ECE: D9        .byte $D9   ; 80
- - - - - - 0x039EDF 1C:9ECF: DA        .byte $DA   ; 81
- - - - - - 0x039EE0 1C:9ED0: DC        .byte $DC   ; 82
- - - - - - 0x039EE1 1C:9ED1: DD        .byte $DD   ; 83
- - - - - - 0x039EE2 1C:9ED2: DE        .byte $DE   ; 84
- - - - - - 0x039EE3 1C:9ED3: E0        .byte $E0   ; 85
- - - - - - 0x039EE4 1C:9ED4: E1        .byte $E1   ; 86
- - - - - - 0x039EE5 1C:9ED5: E2        .byte $E2   ; 87
- - - - - - 0x039EE6 1C:9ED6: E3        .byte $E3   ; 88
- - - - - - 0x039EE7 1C:9ED7: E4        .byte $E4   ; 89
- - - - - - 0x039EE8 1C:9ED8: E5        .byte $E5   ; 8A
- - - - - - 0x039EE9 1C:9ED9: E6        .byte $E6   ; 8B
- - - - - - 0x039EEA 1C:9EDA: E7        .byte $E7   ; 8C
- D - - - - 0x039EEB 1C:9EDB: E8        .byte $E8   ; 8D
- - - - - - 0x039EEC 1C:9EDC: E8        .byte $E8   ; 8E
- D - - - - 0x039EED 1C:9EDD: E9        .byte $E9   ; 8F
- D - - - - 0x039EEE 1C:9EDE: EA        .byte $EA   ; 90
- - - - - - 0x039EEF 1C:9EDF: EB        .byte $EB   ; 91
- - - - - - 0x039EF0 1C:9EE0: EB        .byte $EB   ; 92
- - - - - - 0x039EF1 1C:9EE1: EC        .byte $EC   ; 93
- - - - - - 0x039EF2 1C:9EE2: ED        .byte $ED   ; 94
- - - - - - 0x039EF3 1C:9EE3: ED        .byte $ED   ; 95
- - - - - - 0x039EF4 1C:9EE4: EE        .byte $EE   ; 96
- - - - - - 0x039EF5 1C:9EE5: EE        .byte $EE   ; 97
- - - - - - 0x039EF6 1C:9EE6: EF        .byte $EF   ; 98
- - - - - - 0x039EF7 1C:9EE7: F0        .byte $F0   ; 99
- D - - - - 0x039EF8 1C:9EE8: F0        .byte $F0   ; 9A
- - - - - - 0x039EF9 1C:9EE9: F1        .byte $F1   ; 9B
- - - - - - 0x039EFA 1C:9EEA: F1        .byte $F1   ; 9C
- - - - - - 0x039EFB 1C:9EEB: F2        .byte $F2   ; 9D
- - - - - - 0x039EFC 1C:9EEC: F3        .byte $F3   ; 9E
- - - - - - 0x039EFD 1C:9EED: F3        .byte $F3   ; 9F
- D - - - - 0x039EFE 1C:9EEE: F4        .byte $F4   ; A0
- - - - - - 0x039EFF 1C:9EEF: F4        .byte $F4   ; A1
- - - - - - 0x039F00 1C:9EF0: F5        .byte $F5   ; A2
- - - - - - 0x039F01 1C:9EF1: F5        .byte $F5   ; A3
- - - - - - 0x039F02 1C:9EF2: F6        .byte $F6   ; A4
- - - - - - 0x039F03 1C:9EF3: F6        .byte $F6   ; A5
- - - - - - 0x039F04 1C:9EF4: F7        .byte $F7   ; A6
- - - - - - 0x039F05 1C:9EF5: F7        .byte $F7   ; A7
- - - - - - 0x039F06 1C:9EF6: F8        .byte $F8   ; A8
- - - - - - 0x039F07 1C:9EF7: F8        .byte $F8   ; A9
- - - - - - 0x039F08 1C:9EF8: F8        .byte $F8   ; AA
- - - - - - 0x039F09 1C:9EF9: F9        .byte $F9   ; AB
- - - - - - 0x039F0A 1C:9EFA: F9        .byte $F9   ; AC
- - - - - - 0x039F0B 1C:9EFB: FA        .byte $FA   ; AD
- - - - - - 0x039F0C 1C:9EFC: FA        .byte $FA   ; AE
- - - - - - 0x039F0D 1C:9EFD: FA        .byte $FA   ; AF
- - - - - - 0x039F0E 1C:9EFE: FB        .byte $FB   ; B0
- - - - - - 0x039F0F 1C:9EFF: FB        .byte $FB   ; B1
- - - - - - 0x039F10 1C:9F00: FB        .byte $FB   ; B2
- - - - - - 0x039F11 1C:9F01: FC        .byte $FC   ; B3
- - - - - - 0x039F12 1C:9F02: FC        .byte $FC   ; B4
- - - - - - 0x039F13 1C:9F03: FC        .byte $FC   ; B5
- - - - - - 0x039F14 1C:9F04: FD        .byte $FD   ; B6
- - - - - - 0x039F15 1C:9F05: FD        .byte $FD   ; B7
- - - - - - 0x039F16 1C:9F06: FD        .byte $FD   ; B8
- - - - - - 0x039F17 1C:9F07: FD        .byte $FD   ; B9
- - - - - - 0x039F18 1C:9F08: FD        .byte $FD   ; BA
- - - - - - 0x039F19 1C:9F09: FE        .byte $FE   ; BB
- - - - - - 0x039F1A 1C:9F0A: FE        .byte $FE   ; BC
- - - - - - 0x039F1B 1C:9F0B: FE        .byte $FE   ; BD
- - - - - - 0x039F1C 1C:9F0C: FE        .byte $FE   ; BE
- - - - - - 0x039F1D 1C:9F0D: FF        .byte $FF   ; BF



tbl_9F0E:
; это что-то типа скорости прокачки игроков, возможно просто скорость движения
- D - I - - 0x039F1E 1C:9F0E: 90 01     .word $0190   ; 00
- D - I - - 0x039F20 1C:9F10: 98 01     .word $0198   ; 01
- D - I - - 0x039F22 1C:9F12: A0 01     .word $01A0   ; 02
- D - I - - 0x039F24 1C:9F14: A8 01     .word $01A8   ; 03
- D - I - - 0x039F26 1C:9F16: B0 01     .word $01B0   ; 04
- D - I - - 0x039F28 1C:9F18: B8 01     .word $01B8   ; 05
- D - I - - 0x039F2A 1C:9F1A: C0 01     .word $01C0   ; 06
- D - I - - 0x039F2C 1C:9F1C: C8 01     .word $01C8   ; 07
- D - I - - 0x039F2E 1C:9F1E: D0 01     .word $01D0   ; 08
- D - I - - 0x039F30 1C:9F20: E2 01     .word $01E2   ; 09
- D - I - - 0x039F32 1C:9F22: EA 01     .word $01EA   ; 0A
- D - I - - 0x039F34 1C:9F24: F2 01     .word $01F2   ; 0B
- D - I - - 0x039F36 1C:9F26: FA 01     .word $01FA   ; 0C
- D - I - - 0x039F38 1C:9F28: 02 02     .word $0202   ; 0D
- D - I - - 0x039F3A 1C:9F2A: 0A 02     .word $020A   ; 0E
- D - I - - 0x039F3C 1C:9F2C: 12 02     .word $0212   ; 0F
- D - I - - 0x039F3E 1C:9F2E: 1A 02     .word $021A   ; 10
- D - I - - 0x039F40 1C:9F30: 22 02     .word $0222   ; 11
- D - I - - 0x039F42 1C:9F32: 2A 02     .word $022A   ; 12
- D - I - - 0x039F44 1C:9F34: 32 02     .word $0232   ; 13
- D - I - - 0x039F46 1C:9F36: 3A 02     .word $023A   ; 14
- - - - - - 0x039F48 1C:9F38: 42 02     .word $0242   ; 15
- - - - - - 0x039F4A 1C:9F3A: 4A 02     .word $024A   ; 16
- D - I - - 0x039F4C 1C:9F3C: 52 02     .word $0252   ; 17
- D - I - - 0x039F4E 1C:9F3E: 5A 02     .word $025A   ; 18
- D - I - - 0x039F50 1C:9F40: 62 02     .word $0262   ; 19
- D - I - - 0x039F52 1C:9F42: 6A 02     .word $026A   ; 1A
- - - - - - 0x039F54 1C:9F44: 72 02     .word $0272   ; 1B
- D - I - - 0x039F56 1C:9F46: 7A 02     .word $027A   ; 1C
- D - I - - 0x039F58 1C:9F48: 82 02     .word $0282   ; 1D
- D - I - - 0x039F5A 1C:9F4A: 8A 02     .word $028A   ; 1E
- D - I - - 0x039F5C 1C:9F4C: 92 02     .word $0292   ; 1F
- D - I - - 0x039F5E 1C:9F4E: 98 02     .word $0298   ; 20
- D - I - - 0x039F60 1C:9F50: 9E 02     .word $029E   ; 21
- D - I - - 0x039F62 1C:9F52: A4 02     .word $02A4   ; 22
- D - I - - 0x039F64 1C:9F54: AA 02     .word $02AA   ; 23
- D - I - - 0x039F66 1C:9F56: B0 02     .word $02B0   ; 24
- D - I - - 0x039F68 1C:9F58: B6 02     .word $02B6   ; 25
- D - I - - 0x039F6A 1C:9F5A: BC 02     .word $02BC   ; 26
- D - I - - 0x039F6C 1C:9F5C: C2 02     .word $02C2   ; 27
- D - I - - 0x039F6E 1C:9F5E: C8 02     .word $02C8   ; 28
- D - I - - 0x039F70 1C:9F60: CE 02     .word $02CE   ; 29
- D - I - - 0x039F72 1C:9F62: D4 02     .word $02D4   ; 2A
- D - I - - 0x039F74 1C:9F64: DA 02     .word $02DA   ; 2B
- D - I - - 0x039F76 1C:9F66: E0 02     .word $02E0   ; 2C
- D - I - - 0x039F78 1C:9F68: E6 02     .word $02E6   ; 2D
- D - I - - 0x039F7A 1C:9F6A: EC 02     .word $02EC   ; 2E
- D - I - - 0x039F7C 1C:9F6C: F0 02     .word $02F0   ; 2F
- D - I - - 0x039F7E 1C:9F6E: F6 02     .word $02F6   ; 30
- D - I - - 0x039F80 1C:9F70: FC 02     .word $02FC   ; 31
- D - I - - 0x039F82 1C:9F72: 02 03     .word $0302   ; 32
- D - I - - 0x039F84 1C:9F74: 08 03     .word $0308   ; 33
- D - I - - 0x039F86 1C:9F76: 0E 03     .word $030E   ; 34
- D - I - - 0x039F88 1C:9F78: 14 03     .word $0314   ; 35
- D - I - - 0x039F8A 1C:9F7A: 1A 03     .word $031A   ; 36
- D - I - - 0x039F8C 1C:9F7C: 20 03     .word $0320   ; 37
- D - I - - 0x039F8E 1C:9F7E: 26 03     .word $0326   ; 38
- D - I - - 0x039F90 1C:9F80: 2C 03     .word $032C   ; 39
- D - I - - 0x039F92 1C:9F82: 32 03     .word $0332   ; 3A
- D - I - - 0x039F94 1C:9F84: 38 03     .word $0338   ; 3B
- D - I - - 0x039F96 1C:9F86: 3E 03     .word $033E   ; 3C
- D - I - - 0x039F98 1C:9F88: 44 03     .word $0344   ; 3D
- D - I - - 0x039F9A 1C:9F8A: 4A 03     .word $034A   ; 3E
- D - I - - 0x039F9C 1C:9F8C: 50 03     .word $0350   ; 3F
- D - I - - 0x039F9E 1C:9F8E: 54 03     .word $0354   ; 40
- D - I - - 0x039FA0 1C:9F90: 58 03     .word $0358   ; 41
- D - I - - 0x039FA2 1C:9F92: 5C 03     .word $035C   ; 42
- D - I - - 0x039FA4 1C:9F94: 60 03     .word $0360   ; 43
- - - - - - 0x039FA6 1C:9F96: 64 03     .word $0364   ; 44
- - - - - - 0x039FA8 1C:9F98: 68 03     .word $0368   ; 45
- - - - - - 0x039FAA 1C:9F9A: 6C 03     .word $036C   ; 46
- - - - - - 0x039FAC 1C:9F9C: 70 03     .word $0370   ; 47
- - - - - - 0x039FAE 1C:9F9E: 74 03     .word $0374   ; 48
- - - - - - 0x039FB0 1C:9FA0: 78 03     .word $0378   ; 49
- - - - - - 0x039FB2 1C:9FA2: 7C 03     .word $037C   ; 4A
- - - - - - 0x039FB4 1C:9FA4: 80 03     .word $0380   ; 4B
- - - - - - 0x039FB6 1C:9FA6: 84 03     .word $0384   ; 4C
- - - - - - 0x039FB8 1C:9FA8: 88 03     .word $0388   ; 4D
- - - - - - 0x039FBA 1C:9FAA: 8C 03     .word $038C   ; 4E
- - - - - - 0x039FBC 1C:9FAC: 90 03     .word $0390   ; 4F
- - - - - - 0x039FBE 1C:9FAE: 94 03     .word $0394   ; 50
- - - - - - 0x039FC0 1C:9FB0: 98 03     .word $0398   ; 51
- - - - - - 0x039FC2 1C:9FB2: 9C 03     .word $039C   ; 52
- - - - - - 0x039FC4 1C:9FB4: A0 03     .word $03A0   ; 53
- - - - - - 0x039FC6 1C:9FB6: A4 03     .word $03A4   ; 54
- - - - - - 0x039FC8 1C:9FB8: A8 03     .word $03A8   ; 55
- - - - - - 0x039FCA 1C:9FBA: AC 03     .word $03AC   ; 56
- - - - - - 0x039FCC 1C:9FBC: B0 03     .word $03B0   ; 57
- - - - - - 0x039FCE 1C:9FBE: B4 03     .word $03B4   ; 58
- - - - - - 0x039FD0 1C:9FC0: B8 03     .word $03B8   ; 59
- - - - - - 0x039FD2 1C:9FC2: BC 03     .word $03BC   ; 5A
- - - - - - 0x039FD4 1C:9FC4: C0 03     .word $03C0   ; 5B
- - - - - - 0x039FD6 1C:9FC6: C4 03     .word $03C4   ; 5C
- - - - - - 0x039FD8 1C:9FC8: C8 03     .word $03C8   ; 5D
- - - - - - 0x039FDA 1C:9FCA: CC 03     .word $03CC   ; 5E
- - - - - - 0x039FDC 1C:9FCC: D0 03     .word $03D0   ; 5F



tbl_9FCE:
; 00
- D - I - - 0x039FDE 1C:9FCE: 00        .byte $00
- D - I - - 0x039FDF 1C:9FCF: 00        .byte $00
- D - I - - 0x039FE0 1C:9FD0: 00        .byte $00
- D - I - - 0x039FE1 1C:9FD1: 00        .byte $00
- D - I - - 0x039FE2 1C:9FD2: 00        .byte $00
- D - I - - 0x039FE3 1C:9FD3: 00        .byte $00
- D - I - - 0x039FE4 1C:9FD4: 00        .byte $00
- D - I - - 0x039FE5 1C:9FD5: 00        .byte $00
- D - I - - 0x039FE6 1C:9FD6: 00        .byte $00
- D - I - - 0x039FE7 1C:9FD7: 00        .byte $00
- D - I - - 0x039FE8 1C:9FD8: 00        .byte $00
- D - I - - 0x039FE9 1C:9FD9: 00        .byte $00
- D - I - - 0x039FEA 1C:9FDA: 00        .byte $00
- D - I - - 0x039FEB 1C:9FDB: 00        .byte $00
- D - I - - 0x039FEC 1C:9FDC: 00        .byte $00
- D - I - - 0x039FED 1C:9FDD: 00        .byte $00
- D - I - - 0x039FEE 1C:9FDE: 00        .byte $00
- D - I - - 0x039FEF 1C:9FDF: 00        .byte $00
- D - I - - 0x039FF0 1C:9FE0: 00        .byte $00
- D - I - - 0x039FF1 1C:9FE1: 00        .byte $00
- D - I - - 0x039FF2 1C:9FE2: 00        .byte $00
- D - I - - 0x039FF3 1C:9FE3: 00        .byte $00
- D - I - - 0x039FF4 1C:9FE4: 00        .byte $00
- - - - - - 0x039FF5 1C:9FE5: 00        .byte $00
; 01
- D - I - - 0x039FF6 1C:9FE6: 2E        .byte $2E
- D - I - - 0x039FF7 1C:9FE7: 0F        .byte $0F
- D - I - - 0x039FF8 1C:9FE8: 15        .byte $15
- D - I - - 0x039FF9 1C:9FE9: 18        .byte $18
- D - I - - 0x039FFA 1C:9FEA: 0C        .byte $0C
- D - I - - 0x039FFB 1C:9FEB: 0F        .byte $0F
- D - I - - 0x039FFC 1C:9FEC: 0F        .byte $0F
- D - I - - 0x039FFD 1C:9FED: 12        .byte $12
- D - I - - 0x039FFE 1C:9FEE: 15        .byte $15
- D - I - - 0x039FFF 1C:9FEF: 0C        .byte $0C
- D - I - - 0x03A000 1C:9FF0: 17        .byte $17
- - - - - - 0x03A001 1C:9FF1: 0E        .byte $0E
- D - I - - 0x03A002 1C:9FF2: 0C        .byte $0C
- D - I - - 0x03A003 1C:9FF3: 10        .byte $10
- D - I - - 0x03A004 1C:9FF4: 0E        .byte $0E
- D - I - - 0x03A005 1C:9FF5: 12        .byte $12
- D - I - - 0x03A006 1C:9FF6: 15        .byte $15
- D - I - - 0x03A007 1C:9FF7: 0C        .byte $0C
- D - I - - 0x03A008 1C:9FF8: 17        .byte $17
- D - I - - 0x03A009 1C:9FF9: 0E        .byte $0E
- D - I - - 0x03A00A 1C:9FFA: 0C        .byte $0C
- D - I - - 0x03A00B 1C:9FFB: 10        .byte $10
- D - I - - 0x03A00C 1C:9FFC: 0E        .byte $0E
- - - - - - 0x03A00D 1C:9FFD: 00        .byte $00
; 02
- D - I - - 0x03A00E 1C:9FFE: 20        .byte $20
- D - I - - 0x03A00F 1C:9FFF: 0E        .byte $0E
- D - - - - 0x03A010 1C:A000: 15        .byte $15
- D - I - - 0x03A011 1C:A001: 18        .byte $18
- D - I - - 0x03A012 1C:A002: 09        .byte $09
- D - I - - 0x03A013 1C:A003: 0F        .byte $0F
- D - I - - 0x03A014 1C:A004: 0F        .byte $0F
- D - I - - 0x03A015 1C:A005: 11        .byte $11
- D - I - - 0x03A016 1C:A006: 15        .byte $15
- D - I - - 0x03A017 1C:A007: 0C        .byte $0C
- D - I - - 0x03A018 1C:A008: 17        .byte $17
- D - I - - 0x03A019 1C:A009: 0C        .byte $0C
- D - I - - 0x03A01A 1C:A00A: 0B        .byte $0B
- D - I - - 0x03A01B 1C:A00B: 0F        .byte $0F
- D - I - - 0x03A01C 1C:A00C: 0E        .byte $0E
- D - I - - 0x03A01D 1C:A00D: 11        .byte $11
- D - I - - 0x03A01E 1C:A00E: 15        .byte $15
- D - I - - 0x03A01F 1C:A00F: 0C        .byte $0C
- D - I - - 0x03A020 1C:A010: 17        .byte $17
- D - I - - 0x03A021 1C:A011: 0C        .byte $0C
- D - I - - 0x03A022 1C:A012: 0B        .byte $0B
- D - I - - 0x03A023 1C:A013: 0F        .byte $0F
- D - I - - 0x03A024 1C:A014: 0E        .byte $0E
- - - - - - 0x03A025 1C:A015: 00        .byte $00
; 03
- D - I - - 0x03A026 1C:A016: 1F        .byte $1F
- D - I - - 0x03A027 1C:A017: 09        .byte $09
- D - I - - 0x03A028 1C:A018: 01        .byte $01
- D - I - - 0x03A029 1C:A019: 05        .byte $05
- D - I - - 0x03A02A 1C:A01A: 01        .byte $01
- D - I - - 0x03A02B 1C:A01B: 01        .byte $01
- D - I - - 0x03A02C 1C:A01C: 01        .byte $01
- D - I - - 0x03A02D 1C:A01D: 0C        .byte $0C
- D - I - - 0x03A02E 1C:A01E: 01        .byte $01
- D - I - - 0x03A02F 1C:A01F: 02        .byte $02
- D - I - - 0x03A030 1C:A020: 07        .byte $07
- - - - - - 0x03A031 1C:A021: 02        .byte $02
- D - I - - 0x03A032 1C:A022: 01        .byte $01
- D - I - - 0x03A033 1C:A023: 04        .byte $04
- D - I - - 0x03A034 1C:A024: 01        .byte $01
- D - I - - 0x03A035 1C:A025: 0C        .byte $0C
- D - I - - 0x03A036 1C:A026: 01        .byte $01
- D - I - - 0x03A037 1C:A027: 02        .byte $02
- D - I - - 0x03A038 1C:A028: 07        .byte $07
- - - - - - 0x03A039 1C:A029: 02        .byte $02
- D - I - - 0x03A03A 1C:A02A: 01        .byte $01
- D - I - - 0x03A03B 1C:A02B: 04        .byte $04
- - - - - - 0x03A03C 1C:A02C: 01        .byte $01
- - - - - - 0x03A03D 1C:A02D: 00        .byte $00
; 04
- D - I - - 0x03A03E 1C:A02E: 02        .byte $02
- D - I - - 0x03A03F 1C:A02F: 05        .byte $05
- D - I - - 0x03A040 1C:A030: 00        .byte $00
- D - I - - 0x03A041 1C:A031: 01        .byte $01
- D - I - - 0x03A042 1C:A032: 00        .byte $00
- D - I - - 0x03A043 1C:A033: 01        .byte $01
- D - I - - 0x03A044 1C:A034: 00        .byte $00
- D - I - - 0x03A045 1C:A035: 08        .byte $08
- D - I - - 0x03A046 1C:A036: 00        .byte $00
- D - I - - 0x03A047 1C:A037: 00        .byte $00
- D - I - - 0x03A048 1C:A038: 03        .byte $03
- D - I - - 0x03A049 1C:A039: 02        .byte $02
- D - I - - 0x03A04A 1C:A03A: 01        .byte $01
- D - I - - 0x03A04B 1C:A03B: 04        .byte $04
- D - I - - 0x03A04C 1C:A03C: 01        .byte $01
- D - I - - 0x03A04D 1C:A03D: 08        .byte $08
- D - I - - 0x03A04E 1C:A03E: 00        .byte $00
- D - I - - 0x03A04F 1C:A03F: 00        .byte $00
- D - I - - 0x03A050 1C:A040: 03        .byte $03
- - - - - - 0x03A051 1C:A041: 02        .byte $02
- D - I - - 0x03A052 1C:A042: 01        .byte $01
- D - I - - 0x03A053 1C:A043: 04        .byte $04
- D - I - - 0x03A054 1C:A044: 01        .byte $01
- - - - - - 0x03A055 1C:A045: 00        .byte $00
; 05
- D - I - - 0x03A056 1C:A046: 01        .byte $01
- D - I - - 0x03A057 1C:A047: 02        .byte $02
- D - I - - 0x03A058 1C:A048: 05        .byte $05
- D - I - - 0x03A059 1C:A049: 06        .byte $06
- D - I - - 0x03A05A 1C:A04A: 00        .byte $00
- D - I - - 0x03A05B 1C:A04B: 00        .byte $00
- D - I - - 0x03A05C 1C:A04C: 01        .byte $01
- D - I - - 0x03A05D 1C:A04D: 05        .byte $05
- D - I - - 0x03A05E 1C:A04E: 05        .byte $05
- D - I - - 0x03A05F 1C:A04F: 04        .byte $04
- D - I - - 0x03A060 1C:A050: 08        .byte $08
- D - I - - 0x03A061 1C:A051: 02        .byte $02
- D - I - - 0x03A062 1C:A052: 01        .byte $01
- D - I - - 0x03A063 1C:A053: 04        .byte $04
- D - I - - 0x03A064 1C:A054: 01        .byte $01
- D - I - - 0x03A065 1C:A055: 05        .byte $05
- D - I - - 0x03A066 1C:A056: 05        .byte $05
- D - I - - 0x03A067 1C:A057: 04        .byte $04
- D - I - - 0x03A068 1C:A058: 08        .byte $08
- D - I - - 0x03A069 1C:A059: 02        .byte $02
- D - I - - 0x03A06A 1C:A05A: 01        .byte $01
- D - I - - 0x03A06B 1C:A05B: 04        .byte $04
- D - I - - 0x03A06C 1C:A05C: 01        .byte $01
- - - - - - 0x03A06D 1C:A05D: 00        .byte $00
; 06
- D - I - - 0x03A06E 1C:A05E: 00        .byte $00
- D - I - - 0x03A06F 1C:A05F: 01        .byte $01
- D - I - - 0x03A070 1C:A060: 02        .byte $02
- D - I - - 0x03A071 1C:A061: 03        .byte $03
- D - I - - 0x03A072 1C:A062: 00        .byte $00
- D - I - - 0x03A073 1C:A063: 01        .byte $01
- D - I - - 0x03A074 1C:A064: 00        .byte $00
- D - I - - 0x03A075 1C:A065: 03        .byte $03
- D - I - - 0x03A076 1C:A066: 02        .byte $02
- D - I - - 0x03A077 1C:A067: 01        .byte $01
- D - I - - 0x03A078 1C:A068: 06        .byte $06
- - - - - - 0x03A079 1C:A069: 02        .byte $02
- D - I - - 0x03A07A 1C:A06A: 01        .byte $01
- D - I - - 0x03A07B 1C:A06B: 04        .byte $04
- D - I - - 0x03A07C 1C:A06C: 01        .byte $01
- D - I - - 0x03A07D 1C:A06D: 03        .byte $03
- D - I - - 0x03A07E 1C:A06E: 02        .byte $02
- D - I - - 0x03A07F 1C:A06F: 01        .byte $01
- D - I - - 0x03A080 1C:A070: 06        .byte $06
- D - I - - 0x03A081 1C:A071: 02        .byte $02
- D - I - - 0x03A082 1C:A072: 01        .byte $01
- D - I - - 0x03A083 1C:A073: 04        .byte $04
- D - I - - 0x03A084 1C:A074: 01        .byte $01
- - - - - - 0x03A085 1C:A075: 00        .byte $00
; 07
- D - I - - 0x03A086 1C:A076: 00        .byte $00
- D - I - - 0x03A087 1C:A077: 06        .byte $06
- D - I - - 0x03A088 1C:A078: 0F        .byte $0F
- D - I - - 0x03A089 1C:A079: 0D        .byte $0D
- D - I - - 0x03A08A 1C:A07A: 04        .byte $04
- D - I - - 0x03A08B 1C:A07B: 04        .byte $04
- D - I - - 0x03A08C 1C:A07C: 03        .byte $03
- D - I - - 0x03A08D 1C:A07D: 07        .byte $07
- D - I - - 0x03A08E 1C:A07E: 0F        .byte $0F
- D - I - - 0x03A08F 1C:A07F: 08        .byte $08
- D - I - - 0x03A090 1C:A080: 0E        .byte $0E
- D - I - - 0x03A091 1C:A081: 05        .byte $05
- D - I - - 0x03A092 1C:A082: 03        .byte $03
- D - I - - 0x03A093 1C:A083: 07        .byte $07
- D - I - - 0x03A094 1C:A084: 09        .byte $09
- D - I - - 0x03A095 1C:A085: 07        .byte $07
- D - I - - 0x03A096 1C:A086: 0F        .byte $0F
- D - I - - 0x03A097 1C:A087: 09        .byte $09
- D - I - - 0x03A098 1C:A088: 0E        .byte $0E
- - - - - - 0x03A099 1C:A089: 05        .byte $05
- D - I - - 0x03A09A 1C:A08A: 03        .byte $03
- D - I - - 0x03A09B 1C:A08B: 07        .byte $07
- D - I - - 0x03A09C 1C:A08C: 09        .byte $09
- - - - - - 0x03A09D 1C:A08D: 00        .byte $00
; 08
- D - I - - 0x03A09E 1C:A08E: 00        .byte $00
- D - I - - 0x03A09F 1C:A08F: 03        .byte $03
- D - I - - 0x03A0A0 1C:A090: 04        .byte $04
- D - I - - 0x03A0A1 1C:A091: 04        .byte $04
- D - I - - 0x03A0A2 1C:A092: 06        .byte $06
- D - I - - 0x03A0A3 1C:A093: 08        .byte $08
- D - I - - 0x03A0A4 1C:A094: 07        .byte $07
- D - I - - 0x03A0A5 1C:A095: 04        .byte $04
- D - I - - 0x03A0A6 1C:A096: 04        .byte $04
- D - I - - 0x03A0A7 1C:A097: 02        .byte $02
- D - I - - 0x03A0A8 1C:A098: 05        .byte $05
- D - I - - 0x03A0A9 1C:A099: 07        .byte $07
- D - I - - 0x03A0AA 1C:A09A: 05        .byte $05
- D - I - - 0x03A0AB 1C:A09B: 09        .byte $09
- D - I - - 0x03A0AC 1C:A09C: 06        .byte $06
- D - I - - 0x03A0AD 1C:A09D: 0D        .byte $0D
- D - I - - 0x03A0AE 1C:A09E: 0E        .byte $0E
- D - I - - 0x03A0AF 1C:A09F: 0A        .byte $0A
- D - I - - 0x03A0B0 1C:A0A0: 0D        .byte $0D
- D - I - - 0x03A0B1 1C:A0A1: 10        .byte $10
- D - I - - 0x03A0B2 1C:A0A2: 0E        .byte $0E
- D - I - - 0x03A0B3 1C:A0A3: 12        .byte $12
- D - I - - 0x03A0B4 1C:A0A4: 0C        .byte $0C
- - - - - - 0x03A0B5 1C:A0A5: 00        .byte $00
; 09
- D - I - - 0x03A0B6 1C:A0A6: 00        .byte $00
- D - I - - 0x03A0B7 1C:A0A7: 03        .byte $03
- D - I - - 0x03A0B8 1C:A0A8: 04        .byte $04
- D - I - - 0x03A0B9 1C:A0A9: 04        .byte $04
- D - I - - 0x03A0BA 1C:A0AA: 06        .byte $06
- D - I - - 0x03A0BB 1C:A0AB: 0A        .byte $0A
- D - I - - 0x03A0BC 1C:A0AC: 05        .byte $05
- D - I - - 0x03A0BD 1C:A0AD: 0C        .byte $0C
- D - I - - 0x03A0BE 1C:A0AE: 0D        .byte $0D
- D - I - - 0x03A0BF 1C:A0AF: 09        .byte $09
- D - I - - 0x03A0C0 1C:A0B0: 0C        .byte $0C
- D - I - - 0x03A0C1 1C:A0B1: 0F        .byte $0F
- D - I - - 0x03A0C2 1C:A0B2: 0D        .byte $0D
- D - I - - 0x03A0C3 1C:A0B3: 11        .byte $11
- - - - - - 0x03A0C4 1C:A0B4: 0B        .byte $0B
- D - I - - 0x03A0C5 1C:A0B5: 04        .byte $04
- D - I - - 0x03A0C6 1C:A0B6: 04        .byte $04
- D - I - - 0x03A0C7 1C:A0B7: 02        .byte $02
- D - I - - 0x03A0C8 1C:A0B8: 05        .byte $05
- D - I - - 0x03A0C9 1C:A0B9: 07        .byte $07
- D - I - - 0x03A0CA 1C:A0BA: 05        .byte $05
- D - I - - 0x03A0CB 1C:A0BB: 09        .byte $09
- D - I - - 0x03A0CC 1C:A0BC: 04        .byte $04
- - - - - - 0x03A0CD 1C:A0BD: 00        .byte $00
; 0A
- D - I - - 0x03A0CE 1C:A0BE: 00        .byte $00
- D - I - - 0x03A0CF 1C:A0BF: 02        .byte $02
- D - I - - 0x03A0D0 1C:A0C0: 00        .byte $00
- D - I - - 0x03A0D1 1C:A0C1: 00        .byte $00
- D - I - - 0x03A0D2 1C:A0C2: 02        .byte $02
- D - I - - 0x03A0D3 1C:A0C3: 06        .byte $06
- D - I - - 0x03A0D4 1C:A0C4: 00        .byte $00
- D - I - - 0x03A0D5 1C:A0C5: 04        .byte $04
- - - - - - 0x03A0D6 1C:A0C6: 00        .byte $00
- D - I - - 0x03A0D7 1C:A0C7: 00        .byte $00
- D - I - - 0x03A0D8 1C:A0C8: 02        .byte $02
- - - - - - 0x03A0D9 1C:A0C9: 04        .byte $04
- D - I - - 0x03A0DA 1C:A0CA: 02        .byte $02
- D - I - - 0x03A0DB 1C:A0CB: 06        .byte $06
- D - I - - 0x03A0DC 1C:A0CC: 01        .byte $01
- D - I - - 0x03A0DD 1C:A0CD: 04        .byte $04
- D - I - - 0x03A0DE 1C:A0CE: 00        .byte $00
- D - I - - 0x03A0DF 1C:A0CF: 00        .byte $00
- D - I - - 0x03A0E0 1C:A0D0: 02        .byte $02
- - - - - - 0x03A0E1 1C:A0D1: 04        .byte $04
- D - I - - 0x03A0E2 1C:A0D2: 02        .byte $02
- D - I - - 0x03A0E3 1C:A0D3: 06        .byte $06
- D - I - - 0x03A0E4 1C:A0D4: 01        .byte $01
- - - - - - 0x03A0E5 1C:A0D5: 00        .byte $00
; 0B
- D - I - - 0x03A0E6 1C:A0D6: 00        .byte $00
- D - I - - 0x03A0E7 1C:A0D7: 00        .byte $00
- D - I - - 0x03A0E8 1C:A0D8: 00        .byte $00
- D - I - - 0x03A0E9 1C:A0D9: 00        .byte $00
- D - I - - 0x03A0EA 1C:A0DA: 00        .byte $00
- D - I - - 0x03A0EB 1C:A0DB: 01        .byte $01
- D - I - - 0x03A0EC 1C:A0DC: 01        .byte $01
- D - I - - 0x03A0ED 1C:A0DD: 01        .byte $01
- D - I - - 0x03A0EE 1C:A0DE: 00        .byte $00
- D - I - - 0x03A0EF 1C:A0DF: 00        .byte $00
- D - I - - 0x03A0F0 1C:A0E0: 01        .byte $01
- D - I - - 0x03A0F1 1C:A0E1: 02        .byte $02
- D - I - - 0x03A0F2 1C:A0E2: 01        .byte $01
- D - I - - 0x03A0F3 1C:A0E3: 04        .byte $04
- D - I - - 0x03A0F4 1C:A0E4: 00        .byte $00
- D - I - - 0x03A0F5 1C:A0E5: 01        .byte $01
- D - I - - 0x03A0F6 1C:A0E6: 00        .byte $00
- D - I - - 0x03A0F7 1C:A0E7: 00        .byte $00
- D - I - - 0x03A0F8 1C:A0E8: 01        .byte $01
- D - I - - 0x03A0F9 1C:A0E9: 02        .byte $02
- D - I - - 0x03A0FA 1C:A0EA: 01        .byte $01
- D - I - - 0x03A0FB 1C:A0EB: 04        .byte $04
- D - I - - 0x03A0FC 1C:A0EC: 00        .byte $00
- - - - - - 0x03A0FD 1C:A0ED: 00        .byte $00
; 0C
- D - I - - 0x03A0FE 1C:A0EE: 00        .byte $00
- D - I - - 0x03A0FF 1C:A0EF: 02        .byte $02
- D - I - - 0x03A100 1C:A0F0: 00        .byte $00
- D - I - - 0x03A101 1C:A0F1: 00        .byte $00
- D - I - - 0x03A102 1C:A0F2: 03        .byte $03
- D - I - - 0x03A103 1C:A0F3: 05        .byte $05
- D - I - - 0x03A104 1C:A0F4: 03        .byte $03
- D - I - - 0x03A105 1C:A0F5: 04        .byte $04
- - - - - - 0x03A106 1C:A0F6: 00        .byte $00
- D - I - - 0x03A107 1C:A0F7: 00        .byte $00
- D - I - - 0x03A108 1C:A0F8: 02        .byte $02
- - - - - - 0x03A109 1C:A0F9: 05        .byte $05
- D - I - - 0x03A10A 1C:A0FA: 03        .byte $03
- D - I - - 0x03A10B 1C:A0FB: 07        .byte $07
- D - I - - 0x03A10C 1C:A0FC: 02        .byte $02
- D - I - - 0x03A10D 1C:A0FD: 06        .byte $06
- D - I - - 0x03A10E 1C:A0FE: 01        .byte $01
- D - I - - 0x03A10F 1C:A0FF: 00        .byte $00
- D - I - - 0x03A110 1C:A100: 08        .byte $08
- D - I - - 0x03A111 1C:A101: 06        .byte $06
- D - I - - 0x03A112 1C:A102: 04        .byte $04
- D - I - - 0x03A113 1C:A103: 08        .byte $08
- D - I - - 0x03A114 1C:A104: 03        .byte $03
- - - - - - 0x03A115 1C:A105: 00        .byte $00
; 0D
- D - I - - 0x03A116 1C:A106: 02        .byte $02
- D - I - - 0x03A117 1C:A107: 04        .byte $04
- D - I - - 0x03A118 1C:A108: 03        .byte $03
- D - I - - 0x03A119 1C:A109: 02        .byte $02
- D - I - - 0x03A11A 1C:A10A: 00        .byte $00
- D - I - - 0x03A11B 1C:A10B: 00        .byte $00
- D - I - - 0x03A11C 1C:A10C: 04        .byte $04
- D - I - - 0x03A11D 1C:A10D: 06        .byte $06
- D - I - - 0x03A11E 1C:A10E: 03        .byte $03
- D - I - - 0x03A11F 1C:A10F: 00        .byte $00
- D - I - - 0x03A120 1C:A110: 05        .byte $05
- D - I - - 0x03A121 1C:A111: 02        .byte $02
- D - I - - 0x03A122 1C:A112: 01        .byte $01
- D - I - - 0x03A123 1C:A113: 04        .byte $04
- D - I - - 0x03A124 1C:A114: 01        .byte $01
- D - I - - 0x03A125 1C:A115: 0C        .byte $0C
- D - I - - 0x03A126 1C:A116: 0B        .byte $0B
- D - I - - 0x03A127 1C:A117: 08        .byte $08
- D - I - - 0x03A128 1C:A118: 0F        .byte $0F
- - - - - - 0x03A129 1C:A119: 0B        .byte $0B
- D - I - - 0x03A12A 1C:A11A: 09        .byte $09
- D - I - - 0x03A12B 1C:A11B: 0D        .byte $0D
- D - I - - 0x03A12C 1C:A11C: 08        .byte $08
- - - - - - 0x03A12D 1C:A11D: 00        .byte $00
; 0E
- D - I - - 0x03A12E 1C:A11E: 14        .byte $14
- D - I - - 0x03A12F 1C:A11F: 03        .byte $03
- D - I - - 0x03A130 1C:A120: 00        .byte $00
- D - I - - 0x03A131 1C:A121: 00        .byte $00
- D - I - - 0x03A132 1C:A122: 08        .byte $08
- D - I - - 0x03A133 1C:A123: 07        .byte $07
- D - I - - 0x03A134 1C:A124: 01        .byte $01
- D - I - - 0x03A135 1C:A125: 05        .byte $05
- D - I - - 0x03A136 1C:A126: 00        .byte $00
- D - I - - 0x03A137 1C:A127: 00        .byte $00
- D - I - - 0x03A138 1C:A128: 02        .byte $02
- D - I - - 0x03A139 1C:A129: 09        .byte $09
- D - I - - 0x03A13A 1C:A12A: 07        .byte $07
- D - I - - 0x03A13B 1C:A12B: 0B        .byte $0B
- D - I - - 0x03A13C 1C:A12C: 02        .byte $02
- D - I - - 0x03A13D 1C:A12D: 05        .byte $05
- - - - - - 0x03A13E 1C:A12E: 00        .byte $00
- D - I - - 0x03A13F 1C:A12F: 00        .byte $00
- D - I - - 0x03A140 1C:A130: 02        .byte $02
- - - - - - 0x03A141 1C:A131: 09        .byte $09
- D - I - - 0x03A142 1C:A132: 07        .byte $07
- D - I - - 0x03A143 1C:A133: 0B        .byte $0B
- D - I - - 0x03A144 1C:A134: 02        .byte $02
- - - - - - 0x03A145 1C:A135: 00        .byte $00
; 0F
- D - I - - 0x03A146 1C:A136: 20        .byte $20
- D - I - - 0x03A147 1C:A137: 05        .byte $05
- D - I - - 0x03A148 1C:A138: 02        .byte $02
- D - I - - 0x03A149 1C:A139: 07        .byte $07
- D - I - - 0x03A14A 1C:A13A: 00        .byte $00
- D - I - - 0x03A14B 1C:A13B: 00        .byte $00
- D - I - - 0x03A14C 1C:A13C: 00        .byte $00
- D - I - - 0x03A14D 1C:A13D: 07        .byte $07
- D - I - - 0x03A14E 1C:A13E: 02        .byte $02
- D - I - - 0x03A14F 1C:A13F: 05        .byte $05
- D - I - - 0x03A150 1C:A140: 09        .byte $09
- D - I - - 0x03A151 1C:A141: 02        .byte $02
- D - I - - 0x03A152 1C:A142: 01        .byte $01
- D - I - - 0x03A153 1C:A143: 04        .byte $04
- D - I - - 0x03A154 1C:A144: 00        .byte $00
- D - I - - 0x03A155 1C:A145: 07        .byte $07
- D - I - - 0x03A156 1C:A146: 02        .byte $02
- D - I - - 0x03A157 1C:A147: 05        .byte $05
- D - I - - 0x03A158 1C:A148: 09        .byte $09
- D - I - - 0x03A159 1C:A149: 02        .byte $02
- D - I - - 0x03A15A 1C:A14A: 01        .byte $01
- D - I - - 0x03A15B 1C:A14B: 04        .byte $04
- D - I - - 0x03A15C 1C:A14C: 00        .byte $00
- - - - - - 0x03A15D 1C:A14D: 00        .byte $00
; 10
- D - I - - 0x03A15E 1C:A14E: 02        .byte $02
- D - I - - 0x03A15F 1C:A14F: 06        .byte $06
- D - I - - 0x03A160 1C:A150: 03        .byte $03
- D - I - - 0x03A161 1C:A151: 0B        .byte $0B
- D - I - - 0x03A162 1C:A152: 00        .byte $00
- D - I - - 0x03A163 1C:A153: 00        .byte $00
- D - I - - 0x03A164 1C:A154: 00        .byte $00
- D - I - - 0x03A165 1C:A155: 08        .byte $08
- D - I - - 0x03A166 1C:A156: 03        .byte $03
- D - I - - 0x03A167 1C:A157: 07        .byte $07
- D - I - - 0x03A168 1C:A158: 0B        .byte $0B
- - - - - - 0x03A169 1C:A159: 02        .byte $02
- D - I - - 0x03A16A 1C:A15A: 01        .byte $01
- D - I - - 0x03A16B 1C:A15B: 04        .byte $04
- - - - - - 0x03A16C 1C:A15C: 00        .byte $00
- D - I - - 0x03A16D 1C:A15D: 08        .byte $08
- D - I - - 0x03A16E 1C:A15E: 03        .byte $03
- D - I - - 0x03A16F 1C:A15F: 07        .byte $07
- D - I - - 0x03A170 1C:A160: 0B        .byte $0B
- - - - - - 0x03A171 1C:A161: 02        .byte $02
- D - I - - 0x03A172 1C:A162: 01        .byte $01
- D - I - - 0x03A173 1C:A163: 04        .byte $04
- - - - - - 0x03A174 1C:A164: 00        .byte $00
- - - - - - 0x03A175 1C:A165: 00        .byte $00
; 11
- D - I - - 0x03A176 1C:A166: 28        .byte $28
- D - I - - 0x03A177 1C:A167: 0F        .byte $0F
- D - I - - 0x03A178 1C:A168: 05        .byte $05
- D - I - - 0x03A179 1C:A169: 08        .byte $08
- D - I - - 0x03A17A 1C:A16A: 0E        .byte $0E
- D - I - - 0x03A17B 1C:A16B: 10        .byte $10
- D - I - - 0x03A17C 1C:A16C: 01        .byte $01
- D - I - - 0x03A17D 1C:A16D: 12        .byte $12
- D - I - - 0x03A17E 1C:A16E: 05        .byte $05
- D - I - - 0x03A17F 1C:A16F: 08        .byte $08
- D - I - - 0x03A180 1C:A170: 0F        .byte $0F
- - - - - - 0x03A181 1C:A171: 10        .byte $10
- D - I - - 0x03A182 1C:A172: 0E        .byte $0E
- D - I - - 0x03A183 1C:A173: 12        .byte $12
- D - I - - 0x03A184 1C:A174: 00        .byte $00
- D - I - - 0x03A185 1C:A175: 12        .byte $12
- D - I - - 0x03A186 1C:A176: 05        .byte $05
- D - I - - 0x03A187 1C:A177: 08        .byte $08
- D - I - - 0x03A188 1C:A178: 0F        .byte $0F
- - - - - - 0x03A189 1C:A179: 10        .byte $10
- D - I - - 0x03A18A 1C:A17A: 0E        .byte $0E
- D - I - - 0x03A18B 1C:A17B: 12        .byte $12
- D - I - - 0x03A18C 1C:A17C: 00        .byte $00
- - - - - - 0x03A18D 1C:A17D: 00        .byte $00
; 12
- D - I - - 0x03A18E 1C:A17E: 20        .byte $20
- D - I - - 0x03A18F 1C:A17F: 07        .byte $07
- D - I - - 0x03A190 1C:A180: 02        .byte $02
- D - I - - 0x03A191 1C:A181: 06        .byte $06
- D - I - - 0x03A192 1C:A182: 03        .byte $03
- D - I - - 0x03A193 1C:A183: 0D        .byte $0D
- D - I - - 0x03A194 1C:A184: 01        .byte $01
- D - I - - 0x03A195 1C:A185: 0A        .byte $0A
- D - I - - 0x03A196 1C:A186: 02        .byte $02
- D - I - - 0x03A197 1C:A187: 04        .byte $04
- D - I - - 0x03A198 1C:A188: 07        .byte $07
- D - I - - 0x03A199 1C:A189: 08        .byte $08
- D - I - - 0x03A19A 1C:A18A: 0A        .byte $0A
- D - I - - 0x03A19B 1C:A18B: 0C        .byte $0C
- D - I - - 0x03A19C 1C:A18C: 00        .byte $00
- D - I - - 0x03A19D 1C:A18D: 0A        .byte $0A
- D - I - - 0x03A19E 1C:A18E: 02        .byte $02
- D - I - - 0x03A19F 1C:A18F: 04        .byte $04
- D - I - - 0x03A1A0 1C:A190: 07        .byte $07
- D - I - - 0x03A1A1 1C:A191: 08        .byte $08
- D - I - - 0x03A1A2 1C:A192: 0A        .byte $0A
- D - I - - 0x03A1A3 1C:A193: 0C        .byte $0C
- - - - - - 0x03A1A4 1C:A194: 00        .byte $00
- - - - - - 0x03A1A5 1C:A195: 00        .byte $00
; 13
- D - I - - 0x03A1A6 1C:A196: 1E        .byte $1E
- D - I - - 0x03A1A7 1C:A197: 07        .byte $07
- D - I - - 0x03A1A8 1C:A198: 01        .byte $01
- D - I - - 0x03A1A9 1C:A199: 05        .byte $05
- D - I - - 0x03A1AA 1C:A19A: 0F        .byte $0F
- D - I - - 0x03A1AB 1C:A19B: 09        .byte $09
- D - I - - 0x03A1AC 1C:A19C: 01        .byte $01
- D - I - - 0x03A1AD 1C:A19D: 09        .byte $09
- D - I - - 0x03A1AE 1C:A19E: 01        .byte $01
- D - I - - 0x03A1AF 1C:A19F: 02        .byte $02
- D - I - - 0x03A1B0 1C:A1A0: 06        .byte $06
- D - I - - 0x03A1B1 1C:A1A1: 0B        .byte $0B
- D - I - - 0x03A1B2 1C:A1A2: 09        .byte $09
- D - I - - 0x03A1B3 1C:A1A3: 0E        .byte $0E
- D - I - - 0x03A1B4 1C:A1A4: 00        .byte $00
- D - I - - 0x03A1B5 1C:A1A5: 0B        .byte $0B
- D - I - - 0x03A1B6 1C:A1A6: 01        .byte $01
- D - I - - 0x03A1B7 1C:A1A7: 02        .byte $02
- D - I - - 0x03A1B8 1C:A1A8: 08        .byte $08
- D - I - - 0x03A1B9 1C:A1A9: 0D        .byte $0D
- D - I - - 0x03A1BA 1C:A1AA: 0C        .byte $0C
- D - I - - 0x03A1BB 1C:A1AB: 11        .byte $11
- D - I - - 0x03A1BC 1C:A1AC: 00        .byte $00
- - - - - - 0x03A1BD 1C:A1AD: 00        .byte $00
; 14
- D - I - - 0x03A1BE 1C:A1AE: 21        .byte $21
- D - I - - 0x03A1BF 1C:A1AF: 0A        .byte $0A
- D - I - - 0x03A1C0 1C:A1B0: 07        .byte $07
- D - I - - 0x03A1C1 1C:A1B1: 0F        .byte $0F
- D - I - - 0x03A1C2 1C:A1B2: 0B        .byte $0B
- D - I - - 0x03A1C3 1C:A1B3: 0E        .byte $0E
- D - I - - 0x03A1C4 1C:A1B4: 0D        .byte $0D
- D - I - - 0x03A1C5 1C:A1B5: 0D        .byte $0D
- D - I - - 0x03A1C6 1C:A1B6: 07        .byte $07
- D - I - - 0x03A1C7 1C:A1B7: 0A        .byte $0A
- D - I - - 0x03A1C8 1C:A1B8: 11        .byte $11
- D - I - - 0x03A1C9 1C:A1B9: 0D        .byte $0D
- D - I - - 0x03A1CA 1C:A1BA: 0B        .byte $0B
- D - I - - 0x03A1CB 1C:A1BB: 0F        .byte $0F
- D - I - - 0x03A1CC 1C:A1BC: 0D        .byte $0D
- D - I - - 0x03A1CD 1C:A1BD: 0D        .byte $0D
- D - I - - 0x03A1CE 1C:A1BE: 07        .byte $07
- D - I - - 0x03A1CF 1C:A1BF: 0B        .byte $0B
- D - I - - 0x03A1D0 1C:A1C0: 11        .byte $11
- - - - - - 0x03A1D1 1C:A1C1: 0D        .byte $0D
- D - I - - 0x03A1D2 1C:A1C2: 0B        .byte $0B
- D - I - - 0x03A1D3 1C:A1C3: 0F        .byte $0F
- D - I - - 0x03A1D4 1C:A1C4: 0D        .byte $0D
- - - - - - 0x03A1D5 1C:A1C5: 00        .byte $00
; 15
- D - I - - 0x03A1D6 1C:A1C6: 00        .byte $00
- D - I - - 0x03A1D7 1C:A1C7: 04        .byte $04
- D - I - - 0x03A1D8 1C:A1C8: 02        .byte $02
- D - I - - 0x03A1D9 1C:A1C9: 02        .byte $02
- D - I - - 0x03A1DA 1C:A1CA: 01        .byte $01
- D - I - - 0x03A1DB 1C:A1CB: 00        .byte $00
- D - I - - 0x03A1DC 1C:A1CC: 00        .byte $00
- D - I - - 0x03A1DD 1C:A1CD: 07        .byte $07
- - - - - - 0x03A1DE 1C:A1CE: 02        .byte $02
- D - I - - 0x03A1DF 1C:A1CF: 01        .byte $01
- D - I - - 0x03A1E0 1C:A1D0: 04        .byte $04
- - - - - - 0x03A1E1 1C:A1D1: 02        .byte $02
- D - I - - 0x03A1E2 1C:A1D2: 01        .byte $01
- D - I - - 0x03A1E3 1C:A1D3: 04        .byte $04
- - - - - - 0x03A1E4 1C:A1D4: 01        .byte $01
- D - I - - 0x03A1E5 1C:A1D5: 07        .byte $07
- - - - - - 0x03A1E6 1C:A1D6: 02        .byte $02
- D - I - - 0x03A1E7 1C:A1D7: 01        .byte $01
- D - I - - 0x03A1E8 1C:A1D8: 04        .byte $04
- - - - - - 0x03A1E9 1C:A1D9: 02        .byte $02
- D - I - - 0x03A1EA 1C:A1DA: 01        .byte $01
- D - I - - 0x03A1EB 1C:A1DB: 04        .byte $04
- - - - - - 0x03A1EC 1C:A1DC: 01        .byte $01
- - - - - - 0x03A1ED 1C:A1DD: 00        .byte $00
; 16
- D - I - - 0x03A1EE 1C:A1DE: 00        .byte $00
- D - I - - 0x03A1EF 1C:A1DF: 01        .byte $01
- D - I - - 0x03A1F0 1C:A1E0: 07        .byte $07
- D - I - - 0x03A1F1 1C:A1E1: 0A        .byte $0A
- D - I - - 0x03A1F2 1C:A1E2: 00        .byte $00
- D - I - - 0x03A1F3 1C:A1E3: 00        .byte $00
- D - I - - 0x03A1F4 1C:A1E4: 00        .byte $00
- D - I - - 0x03A1F5 1C:A1E5: 03        .byte $03
- - - - - - 0x03A1F6 1C:A1E6: 07        .byte $07
- D - I - - 0x03A1F7 1C:A1E7: 06        .byte $06
- D - I - - 0x03A1F8 1C:A1E8: 0A        .byte $0A
- - - - - - 0x03A1F9 1C:A1E9: 02        .byte $02
- D - I - - 0x03A1FA 1C:A1EA: 01        .byte $01
- D - I - - 0x03A1FB 1C:A1EB: 04        .byte $04
- - - - - - 0x03A1FC 1C:A1EC: 01        .byte $01
- D - I - - 0x03A1FD 1C:A1ED: 03        .byte $03
- - - - - - 0x03A1FE 1C:A1EE: 07        .byte $07
- D - I - - 0x03A1FF 1C:A1EF: 06        .byte $06
- D - I - - 0x03A200 1C:A1F0: 0A        .byte $0A
- - - - - - 0x03A201 1C:A1F1: 02        .byte $02
- D - I - - 0x03A202 1C:A1F2: 01        .byte $01
- D - I - - 0x03A203 1C:A1F3: 04        .byte $04
- - - - - - 0x03A204 1C:A1F4: 01        .byte $01
- - - - - - 0x03A205 1C:A1F5: 00        .byte $00
; 17
- D - I - - 0x03A206 1C:A1F6: 1C        .byte $1C
- D - I - - 0x03A207 1C:A1F7: 15        .byte $15
- D - I - - 0x03A208 1C:A1F8: 1C        .byte $1C
- D - I - - 0x03A209 1C:A1F9: 1F        .byte $1F
- D - I - - 0x03A20A 1C:A1FA: 0D        .byte $0D
- D - I - - 0x03A20B 1C:A1FB: 1C        .byte $1C
- D - I - - 0x03A20C 1C:A1FC: 1F        .byte $1F
- D - I - - 0x03A20D 1C:A1FD: 18        .byte $18
- D - I - - 0x03A20E 1C:A1FE: 1C        .byte $1C
- D - I - - 0x03A20F 1C:A1FF: 13        .byte $13
- D - I - - 0x03A210 1C:A200: 20        .byte $20
- D - I - - 0x03A211 1C:A201: 1B        .byte $1B
- D - I - - 0x03A212 1C:A202: 19        .byte $19
- D - I - - 0x03A213 1C:A203: 0E        .byte $0E
- D - I - - 0x03A214 1C:A204: 1E        .byte $1E
- D - I - - 0x03A215 1C:A205: 18        .byte $18
- D - I - - 0x03A216 1C:A206: 1C        .byte $1C
- D - I - - 0x03A217 1C:A207: 13        .byte $13
- D - I - - 0x03A218 1C:A208: 20        .byte $20
- D - I - - 0x03A219 1C:A209: 1B        .byte $1B
- D - I - - 0x03A21A 1C:A20A: 19        .byte $19
- D - I - - 0x03A21B 1C:A20B: 0E        .byte $0E
- D - I - - 0x03A21C 1C:A20C: 1E        .byte $1E
- - - - - - 0x03A21D 1C:A20D: 00        .byte $00
; 18
- - - - - - 0x03A21E 1C:A20E: 00        .byte $00
- D - I - - 0x03A21F 1C:A20F: 00        .byte $00
- D - I - - 0x03A220 1C:A210: 05        .byte $05
- D - I - - 0x03A221 1C:A211: 03        .byte $03
- D - I - - 0x03A222 1C:A212: 00        .byte $00
- D - I - - 0x03A223 1C:A213: 00        .byte $00
- D - I - - 0x03A224 1C:A214: 00        .byte $00
- D - I - - 0x03A225 1C:A215: 02        .byte $02
- D - I - - 0x03A226 1C:A216: 00        .byte $00
- D - I - - 0x03A227 1C:A217: 00        .byte $00
- D - I - - 0x03A228 1C:A218: 01        .byte $01
- D - I - - 0x03A229 1C:A219: 00        .byte $00
- D - I - - 0x03A22A 1C:A21A: 00        .byte $00
- - - - - - 0x03A22B 1C:A21B: 00        .byte $00
- D - I - - 0x03A22C 1C:A21C: 00        .byte $00
- D - I - - 0x03A22D 1C:A21D: 02        .byte $02
- - - - - - 0x03A22E 1C:A21E: 00        .byte $00
- D - I - - 0x03A22F 1C:A21F: 00        .byte $00
- - - - - - 0x03A230 1C:A220: 01        .byte $01
- D - I - - 0x03A231 1C:A221: 00        .byte $00
- D - I - - 0x03A232 1C:A222: 00        .byte $00
- - - - - - 0x03A233 1C:A223: 00        .byte $00
- D - I - - 0x03A234 1C:A224: 00        .byte $00
- - - - - - 0x03A235 1C:A225: 00        .byte $00
; 19
- - - - - - 0x03A236 1C:A226: 00        .byte $00
- D - I - - 0x03A237 1C:A227: 00        .byte $00
- D - I - - 0x03A238 1C:A228: 05        .byte $05
- D - I - - 0x03A239 1C:A229: 03        .byte $03
- D - I - - 0x03A23A 1C:A22A: 00        .byte $00
- D - I - - 0x03A23B 1C:A22B: 00        .byte $00
- D - I - - 0x03A23C 1C:A22C: 00        .byte $00
- D - I - - 0x03A23D 1C:A22D: 02        .byte $02
- - - - - - 0x03A23E 1C:A22E: 00        .byte $00
- - - - - - 0x03A23F 1C:A22F: 00        .byte $00
- D - I - - 0x03A240 1C:A230: 01        .byte $01
- - - - - - 0x03A241 1C:A231: 00        .byte $00
- - - - - - 0x03A242 1C:A232: 00        .byte $00
- - - - - - 0x03A243 1C:A233: 00        .byte $00
- - - - - - 0x03A244 1C:A234: 00        .byte $00
- D - I - - 0x03A245 1C:A235: 02        .byte $02
- D - I - - 0x03A246 1C:A236: 00        .byte $00
- - - - - - 0x03A247 1C:A237: 00        .byte $00
- - - - - - 0x03A248 1C:A238: 01        .byte $01
- - - - - - 0x03A249 1C:A239: 00        .byte $00
- - - - - - 0x03A24A 1C:A23A: 00        .byte $00
- - - - - - 0x03A24B 1C:A23B: 00        .byte $00
- D - I - - 0x03A24C 1C:A23C: 00        .byte $00
- - - - - - 0x03A24D 1C:A23D: 00        .byte $00
; 1A
- - - - - - 0x03A24E 1C:A23E: 00        .byte $00
- - - - - - 0x03A24F 1C:A23F: 04        .byte $04
- D - I - - 0x03A250 1C:A240: 07        .byte $07
- - - - - - 0x03A251 1C:A241: 05        .byte $05
- D - I - - 0x03A252 1C:A242: 00        .byte $00
- - - - - - 0x03A253 1C:A243: 00        .byte $00
- D - I - - 0x03A254 1C:A244: 00        .byte $00
- - - - - - 0x03A255 1C:A245: 07        .byte $07
- - - - - - 0x03A256 1C:A246: 04        .byte $04
- - - - - - 0x03A257 1C:A247: 01        .byte $01
- - - - - - 0x03A258 1C:A248: 04        .byte $04
- D - I - - 0x03A259 1C:A249: 01        .byte $01
- D - I - - 0x03A25A 1C:A24A: 00        .byte $00
- D - I - - 0x03A25B 1C:A24B: 00        .byte $00
- - - - - - 0x03A25C 1C:A24C: 00        .byte $00
- - - - - - 0x03A25D 1C:A24D: 07        .byte $07
- - - - - - 0x03A25E 1C:A24E: 04        .byte $04
- - - - - - 0x03A25F 1C:A24F: 01        .byte $01
- - - - - - 0x03A260 1C:A250: 04        .byte $04
- - - - - - 0x03A261 1C:A251: 01        .byte $01
- D - I - - 0x03A262 1C:A252: 00        .byte $00
- - - - - - 0x03A263 1C:A253: 00        .byte $00
- D - I - - 0x03A264 1C:A254: 00        .byte $00
- - - - - - 0x03A265 1C:A255: 00        .byte $00
; 1B
- - - - - - 0x03A266 1C:A256: 00        .byte $00
- - - - - - 0x03A267 1C:A257: 04        .byte $04
- D - I - - 0x03A268 1C:A258: 09        .byte $09
- - - - - - 0x03A269 1C:A259: 07        .byte $07
- D - I - - 0x03A26A 1C:A25A: 00        .byte $00
- D - I - - 0x03A26B 1C:A25B: 00        .byte $00
- D - I - - 0x03A26C 1C:A25C: 00        .byte $00
- D - I - - 0x03A26D 1C:A25D: 07        .byte $07
- - - - - - 0x03A26E 1C:A25E: 04        .byte $04
- - - - - - 0x03A26F 1C:A25F: 01        .byte $01
- - - - - - 0x03A270 1C:A260: 04        .byte $04
- D - I - - 0x03A271 1C:A261: 01        .byte $01
- - - - - - 0x03A272 1C:A262: 00        .byte $00
- - - - - - 0x03A273 1C:A263: 00        .byte $00
- - - - - - 0x03A274 1C:A264: 00        .byte $00
- - - - - - 0x03A275 1C:A265: 07        .byte $07
- - - - - - 0x03A276 1C:A266: 04        .byte $04
- - - - - - 0x03A277 1C:A267: 01        .byte $01
- - - - - - 0x03A278 1C:A268: 04        .byte $04
- - - - - - 0x03A279 1C:A269: 01        .byte $01
- - - - - - 0x03A27A 1C:A26A: 00        .byte $00
- - - - - - 0x03A27B 1C:A26B: 00        .byte $00
- - - - - - 0x03A27C 1C:A26C: 00        .byte $00
- - - - - - 0x03A27D 1C:A26D: 00        .byte $00
; 1C
- D - I - - 0x03A27E 1C:A26E: 00        .byte $00
- D - I - - 0x03A27F 1C:A26F: 07        .byte $07
- D - I - - 0x03A280 1C:A270: 13        .byte $13
- D - I - - 0x03A281 1C:A271: 11        .byte $11
- D - I - - 0x03A282 1C:A272: 00        .byte $00
- D - I - - 0x03A283 1C:A273: 00        .byte $00
- D - I - - 0x03A284 1C:A274: 00        .byte $00
- D - I - - 0x03A285 1C:A275: 09        .byte $09
- - - - - - 0x03A286 1C:A276: 01        .byte $01
- D - I - - 0x03A287 1C:A277: 01        .byte $01
- D - I - - 0x03A288 1C:A278: 04        .byte $04
- - - - - - 0x03A289 1C:A279: 02        .byte $02
- D - I - - 0x03A28A 1C:A27A: 02        .byte $02
- D - I - - 0x03A28B 1C:A27B: 00        .byte $00
- - - - - - 0x03A28C 1C:A27C: 00        .byte $00
- D - I - - 0x03A28D 1C:A27D: 08        .byte $08
- - - - - - 0x03A28E 1C:A27E: 09        .byte $09
- D - I - - 0x03A28F 1C:A27F: 09        .byte $09
- D - I - - 0x03A290 1C:A280: 0A        .byte $0A
- - - - - - 0x03A291 1C:A281: 02        .byte $02
- D - I - - 0x03A292 1C:A282: 02        .byte $02
- D - I - - 0x03A293 1C:A283: 00        .byte $00
- - - - - - 0x03A294 1C:A284: 00        .byte $00
- - - - - - 0x03A295 1C:A285: 00        .byte $00
; 1D
- - - - - - 0x03A296 1C:A286: 00        .byte $00
- D - I - - 0x03A297 1C:A287: 09        .byte $09
- D - I - - 0x03A298 1C:A288: 10        .byte $10
- D - I - - 0x03A299 1C:A289: 14        .byte $14
- - - - - - 0x03A29A 1C:A28A: 00        .byte $00
- D - I - - 0x03A29B 1C:A28B: 00        .byte $00
- - - - - - 0x03A29C 1C:A28C: 00        .byte $00
- D - I - - 0x03A29D 1C:A28D: 09        .byte $09
- - - - - - 0x03A29E 1C:A28E: 07        .byte $07
- - - - - - 0x03A29F 1C:A28F: 09        .byte $09
- - - - - - 0x03A2A0 1C:A290: 08        .byte $08
- - - - - - 0x03A2A1 1C:A291: 02        .byte $02
- - - - - - 0x03A2A2 1C:A292: 02        .byte $02
- - - - - - 0x03A2A3 1C:A293: 00        .byte $00
- D - I - - 0x03A2A4 1C:A294: 00        .byte $00
- - - - - - 0x03A2A5 1C:A295: 09        .byte $09
- - - - - - 0x03A2A6 1C:A296: 07        .byte $07
- - - - - - 0x03A2A7 1C:A297: 09        .byte $09
- - - - - - 0x03A2A8 1C:A298: 08        .byte $08
- - - - - - 0x03A2A9 1C:A299: 02        .byte $02
- - - - - - 0x03A2AA 1C:A29A: 02        .byte $02
- - - - - - 0x03A2AB 1C:A29B: 00        .byte $00
- D - I - - 0x03A2AC 1C:A29C: 00        .byte $00
- - - - - - 0x03A2AD 1C:A29D: 00        .byte $00
; 1E
- - - - - - 0x03A2AE 1C:A29E: 00        .byte $00
- D - I - - 0x03A2AF 1C:A29F: 07        .byte $07
- - - - - - 0x03A2B0 1C:A2A0: 0D        .byte $0D
- D - I - - 0x03A2B1 1C:A2A1: 10        .byte $10
- D - I - - 0x03A2B2 1C:A2A2: 00        .byte $00
- D - I - - 0x03A2B3 1C:A2A3: 00        .byte $00
- D - I - - 0x03A2B4 1C:A2A4: 00        .byte $00
- - - - - - 0x03A2B5 1C:A2A5: 09        .byte $09
- - - - - - 0x03A2B6 1C:A2A6: 05        .byte $05
- - - - - - 0x03A2B7 1C:A2A7: 04        .byte $04
- - - - - - 0x03A2B8 1C:A2A8: 05        .byte $05
- - - - - - 0x03A2B9 1C:A2A9: 03        .byte $03
- D - I - - 0x03A2BA 1C:A2AA: 00        .byte $00
- - - - - - 0x03A2BB 1C:A2AB: 02        .byte $02
- - - - - - 0x03A2BC 1C:A2AC: 01        .byte $01
- - - - - - 0x03A2BD 1C:A2AD: 09        .byte $09
- - - - - - 0x03A2BE 1C:A2AE: 05        .byte $05
- - - - - - 0x03A2BF 1C:A2AF: 04        .byte $04
- - - - - - 0x03A2C0 1C:A2B0: 05        .byte $05
- D - I - - 0x03A2C1 1C:A2B1: 03        .byte $03
- D - I - - 0x03A2C2 1C:A2B2: 00        .byte $00
- - - - - - 0x03A2C3 1C:A2B3: 02        .byte $02
- D - I - - 0x03A2C4 1C:A2B4: 01        .byte $01
- - - - - - 0x03A2C5 1C:A2B5: 00        .byte $00
; 1F
- - - - - - 0x03A2C6 1C:A2B6: 00        .byte $00
- D - I - - 0x03A2C7 1C:A2B7: 07        .byte $07
- D - I - - 0x03A2C8 1C:A2B8: 10        .byte $10
- D - I - - 0x03A2C9 1C:A2B9: 14        .byte $14
- D - I - - 0x03A2CA 1C:A2BA: 00        .byte $00
- D - I - - 0x03A2CB 1C:A2BB: 00        .byte $00
- D - I - - 0x03A2CC 1C:A2BC: 00        .byte $00
- D - I - - 0x03A2CD 1C:A2BD: 09        .byte $09
- - - - - - 0x03A2CE 1C:A2BE: 05        .byte $05
- - - - - - 0x03A2CF 1C:A2BF: 04        .byte $04
- - - - - - 0x03A2D0 1C:A2C0: 05        .byte $05
- - - - - - 0x03A2D1 1C:A2C1: 02        .byte $02
- - - - - - 0x03A2D2 1C:A2C2: 00        .byte $00
- D - I - - 0x03A2D3 1C:A2C3: 02        .byte $02
- - - - - - 0x03A2D4 1C:A2C4: 01        .byte $01
- D - I - - 0x03A2D5 1C:A2C5: 09        .byte $09
- - - - - - 0x03A2D6 1C:A2C6: 05        .byte $05
- D - I - - 0x03A2D7 1C:A2C7: 04        .byte $04
- - - - - - 0x03A2D8 1C:A2C8: 05        .byte $05
- D - I - - 0x03A2D9 1C:A2C9: 02        .byte $02
- - - - - - 0x03A2DA 1C:A2CA: 00        .byte $00
- - - - - - 0x03A2DB 1C:A2CB: 02        .byte $02
- D - I - - 0x03A2DC 1C:A2CC: 01        .byte $01
- - - - - - 0x03A2DD 1C:A2CD: 00        .byte $00
; 20
- - - - - - 0x03A2DE 1C:A2CE: 00        .byte $00
- D - I - - 0x03A2DF 1C:A2CF: 10        .byte $10
- D - I - - 0x03A2E0 1C:A2D0: 12        .byte $12
- D - I - - 0x03A2E1 1C:A2D1: 16        .byte $16
- - - - - - 0x03A2E2 1C:A2D2: 08        .byte $08
- D - I - - 0x03A2E3 1C:A2D3: 08        .byte $08
- D - I - - 0x03A2E4 1C:A2D4: 08        .byte $08
- D - I - - 0x03A2E5 1C:A2D5: 12        .byte $12
- - - - - - 0x03A2E6 1C:A2D6: 0E        .byte $0E
- D - I - - 0x03A2E7 1C:A2D7: 0E        .byte $0E
- - - - - - 0x03A2E8 1C:A2D8: 17        .byte $17
- - - - - - 0x03A2E9 1C:A2D9: 0C        .byte $0C
- - - - - - 0x03A2EA 1C:A2DA: 0A        .byte $0A
- - - - - - 0x03A2EB 1C:A2DB: 0E        .byte $0E
- - - - - - 0x03A2EC 1C:A2DC: 0B        .byte $0B
- - - - - - 0x03A2ED 1C:A2DD: 12        .byte $12
- - - - - - 0x03A2EE 1C:A2DE: 0E        .byte $0E
- - - - - - 0x03A2EF 1C:A2DF: 0E        .byte $0E
- - - - - - 0x03A2F0 1C:A2E0: 17        .byte $17
- - - - - - 0x03A2F1 1C:A2E1: 0C        .byte $0C
- - - - - - 0x03A2F2 1C:A2E2: 0A        .byte $0A
- D - I - - 0x03A2F3 1C:A2E3: 0E        .byte $0E
- D - I - - 0x03A2F4 1C:A2E4: 0B        .byte $0B
- - - - - - 0x03A2F5 1C:A2E5: 00        .byte $00
; 21
- - - - - - 0x03A2F6 1C:A2E6: 00        .byte $00
- - - - - - 0x03A2F7 1C:A2E7: 0F        .byte $0F
- D - I - - 0x03A2F8 1C:A2E8: 11        .byte $11
- - - - - - 0x03A2F9 1C:A2E9: 15        .byte $15
- D - I - - 0x03A2FA 1C:A2EA: 04        .byte $04
- D - I - - 0x03A2FB 1C:A2EB: 04        .byte $04
- D - I - - 0x03A2FC 1C:A2EC: 04        .byte $04
- - - - - - 0x03A2FD 1C:A2ED: 11        .byte $11
- - - - - - 0x03A2FE 1C:A2EE: 07        .byte $07
- - - - - - 0x03A2FF 1C:A2EF: 0F        .byte $0F
- - - - - - 0x03A300 1C:A2F0: 06        .byte $06
- - - - - - 0x03A301 1C:A2F1: 03        .byte $03
- D - I - - 0x03A302 1C:A2F2: 04        .byte $04
- - - - - - 0x03A303 1C:A2F3: 05        .byte $05
- - - - - - 0x03A304 1C:A2F4: 05        .byte $05
- - - - - - 0x03A305 1C:A2F5: 11        .byte $11
- - - - - - 0x03A306 1C:A2F6: 07        .byte $07
- - - - - - 0x03A307 1C:A2F7: 0F        .byte $0F
- - - - - - 0x03A308 1C:A2F8: 06        .byte $06
- - - - - - 0x03A309 1C:A2F9: 03        .byte $03
- D - I - - 0x03A30A 1C:A2FA: 04        .byte $04
- - - - - - 0x03A30B 1C:A2FB: 05        .byte $05
- - - - - - 0x03A30C 1C:A2FC: 05        .byte $05
- - - - - - 0x03A30D 1C:A2FD: 00        .byte $00
; 22
- - - - - - 0x03A30E 1C:A2FE: 00        .byte $00
- D - I - - 0x03A30F 1C:A2FF: 0F        .byte $0F
- D - I - - 0x03A310 1C:A300: 13        .byte $13
- D - I - - 0x03A311 1C:A301: 17        .byte $17
- - - - - - 0x03A312 1C:A302: 04        .byte $04
- D - I - - 0x03A313 1C:A303: 04        .byte $04
- D - I - - 0x03A314 1C:A304: 04        .byte $04
- - - - - - 0x03A315 1C:A305: 11        .byte $11
- D - I - - 0x03A316 1C:A306: 07        .byte $07
- - - - - - 0x03A317 1C:A307: 0F        .byte $0F
- D - I - - 0x03A318 1C:A308: 06        .byte $06
- - - - - - 0x03A319 1C:A309: 04        .byte $04
- - - - - - 0x03A31A 1C:A30A: 03        .byte $03
- D - I - - 0x03A31B 1C:A30B: 04        .byte $04
- - - - - - 0x03A31C 1C:A30C: 04        .byte $04
- - - - - - 0x03A31D 1C:A30D: 11        .byte $11
- - - - - - 0x03A31E 1C:A30E: 07        .byte $07
- - - - - - 0x03A31F 1C:A30F: 0F        .byte $0F
- - - - - - 0x03A320 1C:A310: 06        .byte $06
- - - - - - 0x03A321 1C:A311: 04        .byte $04
- - - - - - 0x03A322 1C:A312: 03        .byte $03
- - - - - - 0x03A323 1C:A313: 04        .byte $04
- - - - - - 0x03A324 1C:A314: 04        .byte $04
- - - - - - 0x03A325 1C:A315: 00        .byte $00
; 23
- - - - - - 0x03A326 1C:A316: 00        .byte $00
- - - - - - 0x03A327 1C:A317: 09        .byte $09
- D - I - - 0x03A328 1C:A318: 17        .byte $17
- - - - - - 0x03A329 1C:A319: 1B        .byte $1B
- - - - - - 0x03A32A 1C:A31A: 09        .byte $09
- - - - - - 0x03A32B 1C:A31B: 0D        .byte $0D
- D - I - - 0x03A32C 1C:A31C: 09        .byte $09
- D - I - - 0x03A32D 1C:A31D: 17        .byte $17
- - - - - - 0x03A32E 1C:A31E: 11        .byte $11
- - - - - - 0x03A32F 1C:A31F: 11        .byte $11
- - - - - - 0x03A330 1C:A320: 19        .byte $19
- - - - - - 0x03A331 1C:A321: 0E        .byte $0E
- - - - - - 0x03A332 1C:A322: 0D        .byte $0D
- - - - - - 0x03A333 1C:A323: 0F        .byte $0F
- - - - - - 0x03A334 1C:A324: 0F        .byte $0F
- D - I - - 0x03A335 1C:A325: 17        .byte $17
- - - - - - 0x03A336 1C:A326: 11        .byte $11
- - - - - - 0x03A337 1C:A327: 11        .byte $11
- - - - - - 0x03A338 1C:A328: 19        .byte $19
- - - - - - 0x03A339 1C:A329: 0E        .byte $0E
- - - - - - 0x03A33A 1C:A32A: 0D        .byte $0D
- - - - - - 0x03A33B 1C:A32B: 0F        .byte $0F
- - - - - - 0x03A33C 1C:A32C: 0F        .byte $0F
- - - - - - 0x03A33D 1C:A32D: 00        .byte $00
; 24
- - - - - - 0x03A33E 1C:A32E: 00        .byte $00
- D - I - - 0x03A33F 1C:A32F: 0D        .byte $0D
- D - I - - 0x03A340 1C:A330: 19        .byte $19
- D - I - - 0x03A341 1C:A331: 18        .byte $18
- - - - - - 0x03A342 1C:A332: 09        .byte $09
- D - I - - 0x03A343 1C:A333: 11        .byte $11
- - - - - - 0x03A344 1C:A334: 09        .byte $09
- D - I - - 0x03A345 1C:A335: 1B        .byte $1B
- - - - - - 0x03A346 1C:A336: 11        .byte $11
- - - - - - 0x03A347 1C:A337: 11        .byte $11
- - - - - - 0x03A348 1C:A338: 19        .byte $19
- - - - - - 0x03A349 1C:A339: 0E        .byte $0E
- - - - - - 0x03A34A 1C:A33A: 0D        .byte $0D
- - - - - - 0x03A34B 1C:A33B: 0F        .byte $0F
- D - I - - 0x03A34C 1C:A33C: 0F        .byte $0F
- - - - - - 0x03A34D 1C:A33D: 1B        .byte $1B
- D - I - - 0x03A34E 1C:A33E: 11        .byte $11
- - - - - - 0x03A34F 1C:A33F: 0E        .byte $0E
- - - - - - 0x03A350 1C:A340: 19        .byte $19
- - - - - - 0x03A351 1C:A341: 0E        .byte $0E
- - - - - - 0x03A352 1C:A342: 0D        .byte $0D
- - - - - - 0x03A353 1C:A343: 0F        .byte $0F
- D - I - - 0x03A354 1C:A344: 0F        .byte $0F
- - - - - - 0x03A355 1C:A345: 00        .byte $00
; 25
- - - - - - 0x03A356 1C:A346: 00        .byte $00
- - - - - - 0x03A357 1C:A347: 10        .byte $10
- - - - - - 0x03A358 1C:A348: 15        .byte $15
- - - - - - 0x03A359 1C:A349: 19        .byte $19
- D - I - - 0x03A35A 1C:A34A: 06        .byte $06
- D - I - - 0x03A35B 1C:A34B: 06        .byte $06
- - - - - - 0x03A35C 1C:A34C: 05        .byte $05
- - - - - - 0x03A35D 1C:A34D: 12        .byte $12
- - - - - - 0x03A35E 1C:A34E: 09        .byte $09
- - - - - - 0x03A35F 1C:A34F: 11        .byte $11
- - - - - - 0x03A360 1C:A350: 06        .byte $06
- - - - - - 0x03A361 1C:A351: 04        .byte $04
- D - I - - 0x03A362 1C:A352: 03        .byte $03
- - - - - - 0x03A363 1C:A353: 05        .byte $05
- - - - - - 0x03A364 1C:A354: 04        .byte $04
- - - - - - 0x03A365 1C:A355: 12        .byte $12
- D - I - - 0x03A366 1C:A356: 09        .byte $09
- - - - - - 0x03A367 1C:A357: 11        .byte $11
- - - - - - 0x03A368 1C:A358: 06        .byte $06
- D - I - - 0x03A369 1C:A359: 04        .byte $04
- D - I - - 0x03A36A 1C:A35A: 03        .byte $03
- - - - - - 0x03A36B 1C:A35B: 05        .byte $05
- D - I - - 0x03A36C 1C:A35C: 04        .byte $04
- - - - - - 0x03A36D 1C:A35D: 00        .byte $00
; 26
- - - - - - 0x03A36E 1C:A35E: 00        .byte $00
- D - I - - 0x03A36F 1C:A35F: 10        .byte $10
- D - I - - 0x03A370 1C:A360: 15        .byte $15
- D - I - - 0x03A371 1C:A361: 19        .byte $19
- D - I - - 0x03A372 1C:A362: 06        .byte $06
- D - I - - 0x03A373 1C:A363: 06        .byte $06
- D - I - - 0x03A374 1C:A364: 05        .byte $05
- D - I - - 0x03A375 1C:A365: 12        .byte $12
- - - - - - 0x03A376 1C:A366: 09        .byte $09
- D - I - - 0x03A377 1C:A367: 11        .byte $11
- - - - - - 0x03A378 1C:A368: 06        .byte $06
- - - - - - 0x03A379 1C:A369: 04        .byte $04
- - - - - - 0x03A37A 1C:A36A: 03        .byte $03
- - - - - - 0x03A37B 1C:A36B: 04        .byte $04
- D - I - - 0x03A37C 1C:A36C: 04        .byte $04
- - - - - - 0x03A37D 1C:A36D: 12        .byte $12
- - - - - - 0x03A37E 1C:A36E: 09        .byte $09
- - - - - - 0x03A37F 1C:A36F: 11        .byte $11
- - - - - - 0x03A380 1C:A370: 06        .byte $06
- D - I - - 0x03A381 1C:A371: 04        .byte $04
- D - I - - 0x03A382 1C:A372: 03        .byte $03
- - - - - - 0x03A383 1C:A373: 04        .byte $04
- D - I - - 0x03A384 1C:A374: 04        .byte $04
- - - - - - 0x03A385 1C:A375: 00        .byte $00
; 27
- - - - - - 0x03A386 1C:A376: 00        .byte $00
- D - I - - 0x03A387 1C:A377: 0E        .byte $0E
- D - I - - 0x03A388 1C:A378: 19        .byte $19
- D - I - - 0x03A389 1C:A379: 10        .byte $10
- - - - - - 0x03A38A 1C:A37A: 08        .byte $08
- D - I - - 0x03A38B 1C:A37B: 11        .byte $11
- - - - - - 0x03A38C 1C:A37C: 09        .byte $09
- - - - - - 0x03A38D 1C:A37D: 19        .byte $19
- - - - - - 0x03A38E 1C:A37E: 11        .byte $11
- - - - - - 0x03A38F 1C:A37F: 11        .byte $11
- - - - - - 0x03A390 1C:A380: 17        .byte $17
- - - - - - 0x03A391 1C:A381: 0C        .byte $0C
- - - - - - 0x03A392 1C:A382: 0B        .byte $0B
- - - - - - 0x03A393 1C:A383: 0C        .byte $0C
- - - - - - 0x03A394 1C:A384: 0C        .byte $0C
- - - - - - 0x03A395 1C:A385: 19        .byte $19
- - - - - - 0x03A396 1C:A386: 11        .byte $11
- D - I - - 0x03A397 1C:A387: 11        .byte $11
- - - - - - 0x03A398 1C:A388: 17        .byte $17
- - - - - - 0x03A399 1C:A389: 0C        .byte $0C
- - - - - - 0x03A39A 1C:A38A: 0B        .byte $0B
- - - - - - 0x03A39B 1C:A38B: 0C        .byte $0C
- - - - - - 0x03A39C 1C:A38C: 0C        .byte $0C
- - - - - - 0x03A39D 1C:A38D: 00        .byte $00
; 28
- - - - - - 0x03A39E 1C:A38E: 00        .byte $00
- - - - - - 0x03A39F 1C:A38F: 0E        .byte $0E
- D - I - - 0x03A3A0 1C:A390: 19        .byte $19
- - - - - - 0x03A3A1 1C:A391: 10        .byte $10
- D - I - - 0x03A3A2 1C:A392: 00        .byte $00
- D - I - - 0x03A3A3 1C:A393: 00        .byte $00
- - - - - - 0x03A3A4 1C:A394: 0A        .byte $0A
- - - - - - 0x03A3A5 1C:A395: 18        .byte $18
- - - - - - 0x03A3A6 1C:A396: 11        .byte $11
- - - - - - 0x03A3A7 1C:A397: 11        .byte $11
- - - - - - 0x03A3A8 1C:A398: 17        .byte $17
- - - - - - 0x03A3A9 1C:A399: 0E        .byte $0E
- - - - - - 0x03A3AA 1C:A39A: 0D        .byte $0D
- - - - - - 0x03A3AB 1C:A39B: 0E        .byte $0E
- - - - - - 0x03A3AC 1C:A39C: 0C        .byte $0C
- - - - - - 0x03A3AD 1C:A39D: 11        .byte $11
- - - - - - 0x03A3AE 1C:A39E: 11        .byte $11
- - - - - - 0x03A3AF 1C:A39F: 11        .byte $11
- - - - - - 0x03A3B0 1C:A3A0: 17        .byte $17
- - - - - - 0x03A3B1 1C:A3A1: 10        .byte $10
- - - - - - 0x03A3B2 1C:A3A2: 0F        .byte $0F
- - - - - - 0x03A3B3 1C:A3A3: 0E        .byte $0E
- - - - - - 0x03A3B4 1C:A3A4: 0C        .byte $0C
- - - - - - 0x03A3B5 1C:A3A5: 00        .byte $00
; 29
- - - - - - 0x03A3B6 1C:A3A6: 00        .byte $00
- - - - - - 0x03A3B7 1C:A3A7: 13        .byte $13
- D - I - - 0x03A3B8 1C:A3A8: 15        .byte $15
- - - - - - 0x03A3B9 1C:A3A9: 1A        .byte $1A
- D - I - - 0x03A3BA 1C:A3AA: 0A        .byte $0A
- D - I - - 0x03A3BB 1C:A3AB: 0A        .byte $0A
- - - - - - 0x03A3BC 1C:A3AC: 07        .byte $07
- - - - - - 0x03A3BD 1C:A3AD: 15        .byte $15
- - - - - - 0x03A3BE 1C:A3AE: 09        .byte $09
- - - - - - 0x03A3BF 1C:A3AF: 11        .byte $11
- - - - - - 0x03A3C0 1C:A3B0: 0B        .byte $0B
- D - I - - 0x03A3C1 1C:A3B1: 04        .byte $04
- D - I - - 0x03A3C2 1C:A3B2: 03        .byte $03
- - - - - - 0x03A3C3 1C:A3B3: 04        .byte $04
- - - - - - 0x03A3C4 1C:A3B4: 04        .byte $04
- - - - - - 0x03A3C5 1C:A3B5: 15        .byte $15
- - - - - - 0x03A3C6 1C:A3B6: 09        .byte $09
- D - I - - 0x03A3C7 1C:A3B7: 11        .byte $11
- - - - - - 0x03A3C8 1C:A3B8: 0B        .byte $0B
- - - - - - 0x03A3C9 1C:A3B9: 04        .byte $04
- - - - - - 0x03A3CA 1C:A3BA: 03        .byte $03
- - - - - - 0x03A3CB 1C:A3BB: 04        .byte $04
- - - - - - 0x03A3CC 1C:A3BC: 04        .byte $04
- - - - - - 0x03A3CD 1C:A3BD: 00        .byte $00
; 2A
- - - - - - 0x03A3CE 1C:A3BE: 00        .byte $00
- - - - - - 0x03A3CF 1C:A3BF: 13        .byte $13
- D - I - - 0x03A3D0 1C:A3C0: 15        .byte $15
- D - I - - 0x03A3D1 1C:A3C1: 1A        .byte $1A
- - - - - - 0x03A3D2 1C:A3C2: 0A        .byte $0A
- D - I - - 0x03A3D3 1C:A3C3: 0A        .byte $0A
- D - I - - 0x03A3D4 1C:A3C4: 07        .byte $07
- D - I - - 0x03A3D5 1C:A3C5: 15        .byte $15
- - - - - - 0x03A3D6 1C:A3C6: 09        .byte $09
- D - I - - 0x03A3D7 1C:A3C7: 11        .byte $11
- - - - - - 0x03A3D8 1C:A3C8: 15        .byte $15
- - - - - - 0x03A3D9 1C:A3C9: 04        .byte $04
- - - - - - 0x03A3DA 1C:A3CA: 03        .byte $03
- - - - - - 0x03A3DB 1C:A3CB: 04        .byte $04
- D - I - - 0x03A3DC 1C:A3CC: 04        .byte $04
- - - - - - 0x03A3DD 1C:A3CD: 15        .byte $15
- - - - - - 0x03A3DE 1C:A3CE: 09        .byte $09
- - - - - - 0x03A3DF 1C:A3CF: 11        .byte $11
- - - - - - 0x03A3E0 1C:A3D0: 15        .byte $15
- D - I - - 0x03A3E1 1C:A3D1: 04        .byte $04
- - - - - - 0x03A3E2 1C:A3D2: 03        .byte $03
- - - - - - 0x03A3E3 1C:A3D3: 04        .byte $04
- - - - - - 0x03A3E4 1C:A3D4: 04        .byte $04
- - - - - - 0x03A3E5 1C:A3D5: 00        .byte $00
; 2B
- - - - - - 0x03A3E6 1C:A3D6: 00        .byte $00
- D - I - - 0x03A3E7 1C:A3D7: 14        .byte $14
- D - I - - 0x03A3E8 1C:A3D8: 24        .byte $24
- D - I - - 0x03A3E9 1C:A3D9: 18        .byte $18
- - - - - - 0x03A3EA 1C:A3DA: 0B        .byte $0B
- D - I - - 0x03A3EB 1C:A3DB: 18        .byte $18
- D - I - - 0x03A3EC 1C:A3DC: 0B        .byte $0B
- - - - - - 0x03A3ED 1C:A3DD: 21        .byte $21
- - - - - - 0x03A3EE 1C:A3DE: 13        .byte $13
- - - - - - 0x03A3EF 1C:A3DF: 13        .byte $13
- - - - - - 0x03A3F0 1C:A3E0: 1E        .byte $1E
- - - - - - 0x03A3F1 1C:A3E1: 0E        .byte $0E
- - - - - - 0x03A3F2 1C:A3E2: 0D        .byte $0D
- - - - - - 0x03A3F3 1C:A3E3: 0E        .byte $0E
- - - - - - 0x03A3F4 1C:A3E4: 0E        .byte $0E
- - - - - - 0x03A3F5 1C:A3E5: 22        .byte $22
- - - - - - 0x03A3F6 1C:A3E6: 13        .byte $13
- - - - - - 0x03A3F7 1C:A3E7: 13        .byte $13
- - - - - - 0x03A3F8 1C:A3E8: 1E        .byte $1E
- - - - - - 0x03A3F9 1C:A3E9: 0E        .byte $0E
- - - - - - 0x03A3FA 1C:A3EA: 0D        .byte $0D
- - - - - - 0x03A3FB 1C:A3EB: 0E        .byte $0E
- D - I - - 0x03A3FC 1C:A3EC: 0E        .byte $0E
- - - - - - 0x03A3FD 1C:A3ED: 00        .byte $00
; 2C
- - - - - - 0x03A3FE 1C:A3EE: 00        .byte $00
- D - I - - 0x03A3FF 1C:A3EF: 13        .byte $13
- D - I - - 0x03A400 1C:A3F0: 1B        .byte $1B
- D - I - - 0x03A401 1C:A3F1: 1B        .byte $1B
- D - I - - 0x03A402 1C:A3F2: 0B        .byte $0B
- - - - - - 0x03A403 1C:A3F3: 13        .byte $13
- - - - - - 0x03A404 1C:A3F4: 0B        .byte $0B
- - - - - - 0x03A405 1C:A3F5: 1F        .byte $1F
- - - - - - 0x03A406 1C:A3F6: 13        .byte $13
- - - - - - 0x03A407 1C:A3F7: 13        .byte $13
- - - - - - 0x03A408 1C:A3F8: 1E        .byte $1E
- - - - - - 0x03A409 1C:A3F9: 0E        .byte $0E
- - - - - - 0x03A40A 1C:A3FA: 0D        .byte $0D
- - - - - - 0x03A40B 1C:A3FB: 0E        .byte $0E
- - - - - - 0x03A40C 1C:A3FC: 0F        .byte $0F
- - - - - - 0x03A40D 1C:A3FD: 1F        .byte $1F
- - - - - - 0x03A40E 1C:A3FE: 13        .byte $13
- - - - - - 0x03A40F 1C:A3FF: 13        .byte $13
- - - - - - 0x03A410 1C:A400: 1E        .byte $1E
- - - - - - 0x03A411 1C:A401: 0E        .byte $0E
- - - - - - 0x03A412 1C:A402: 0D        .byte $0D
- - - - - - 0x03A413 1C:A403: 0E        .byte $0E
- - - - - - 0x03A414 1C:A404: 0F        .byte $0F
- - - - - - 0x03A415 1C:A405: 00        .byte $00
; 2D
- - - - - - 0x03A416 1C:A406: 00        .byte $00
- D - I - - 0x03A417 1C:A407: 13        .byte $13
- - - - - - 0x03A418 1C:A408: 1B        .byte $1B
- - - - - - 0x03A419 1C:A409: 19        .byte $19
- D - I - - 0x03A41A 1C:A40A: 11        .byte $11
- - - - - - 0x03A41B 1C:A40B: 13        .byte $13
- - - - - - 0x03A41C 1C:A40C: 15        .byte $15
- - - - - - 0x03A41D 1C:A40D: 1B        .byte $1B
- - - - - - 0x03A41E 1C:A40E: 13        .byte $13
- - - - - - 0x03A41F 1C:A40F: 13        .byte $13
- - - - - - 0x03A420 1C:A410: 1E        .byte $1E
- - - - - - 0x03A421 1C:A411: 0E        .byte $0E
- D - I - - 0x03A422 1C:A412: 0D        .byte $0D
- - - - - - 0x03A423 1C:A413: 0E        .byte $0E
- - - - - - 0x03A424 1C:A414: 0E        .byte $0E
- - - - - - 0x03A425 1C:A415: 1B        .byte $1B
- - - - - - 0x03A426 1C:A416: 13        .byte $13
- - - - - - 0x03A427 1C:A417: 13        .byte $13
- - - - - - 0x03A428 1C:A418: 1E        .byte $1E
- - - - - - 0x03A429 1C:A419: 0E        .byte $0E
- - - - - - 0x03A42A 1C:A41A: 0D        .byte $0D
- - - - - - 0x03A42B 1C:A41B: 0E        .byte $0E
- - - - - - 0x03A42C 1C:A41C: 0E        .byte $0E
- - - - - - 0x03A42D 1C:A41D: 00        .byte $00
; 2E
- - - - - - 0x03A42E 1C:A41E: 00        .byte $00
- - - - - - 0x03A42F 1C:A41F: 0F        .byte $0F
- D - I - - 0x03A430 1C:A420: 19        .byte $19
- - - - - - 0x03A431 1C:A421: 1D        .byte $1D
- - - - - - 0x03A432 1C:A422: 0A        .byte $0A
- - - - - - 0x03A433 1C:A423: 0A        .byte $0A
- D - I - - 0x03A434 1C:A424: 05        .byte $05
- - - - - - 0x03A435 1C:A425: 11        .byte $11
- - - - - - 0x03A436 1C:A426: 0D        .byte $0D
- - - - - - 0x03A437 1C:A427: 15        .byte $15
- - - - - - 0x03A438 1C:A428: 0F        .byte $0F
- D - I - - 0x03A439 1C:A429: 08        .byte $08
- - - - - - 0x03A43A 1C:A42A: 07        .byte $07
- - - - - - 0x03A43B 1C:A42B: 08        .byte $08
- - - - - - 0x03A43C 1C:A42C: 08        .byte $08
- - - - - - 0x03A43D 1C:A42D: 11        .byte $11
- - - - - - 0x03A43E 1C:A42E: 0D        .byte $0D
- - - - - - 0x03A43F 1C:A42F: 15        .byte $15
- - - - - - 0x03A440 1C:A430: 0F        .byte $0F
- - - - - - 0x03A441 1C:A431: 08        .byte $08
- D - I - - 0x03A442 1C:A432: 07        .byte $07
- - - - - - 0x03A443 1C:A433: 08        .byte $08
- - - - - - 0x03A444 1C:A434: 08        .byte $08
- - - - - - 0x03A445 1C:A435: 00        .byte $00
; 2F
- - - - - - 0x03A446 1C:A436: 00        .byte $00
- D - I - - 0x03A447 1C:A437: 0F        .byte $0F
- D - I - - 0x03A448 1C:A438: 19        .byte $19
- D - I - - 0x03A449 1C:A439: 1D        .byte $1D
- D - I - - 0x03A44A 1C:A43A: 0A        .byte $0A
- D - I - - 0x03A44B 1C:A43B: 0A        .byte $0A
- D - I - - 0x03A44C 1C:A43C: 05        .byte $05
- D - I - - 0x03A44D 1C:A43D: 11        .byte $11
- - - - - - 0x03A44E 1C:A43E: 0D        .byte $0D
- - - - - - 0x03A44F 1C:A43F: 15        .byte $15
- - - - - - 0x03A450 1C:A440: 0F        .byte $0F
- - - - - - 0x03A451 1C:A441: 08        .byte $08
- - - - - - 0x03A452 1C:A442: 07        .byte $07
- - - - - - 0x03A453 1C:A443: 08        .byte $08
- - - - - - 0x03A454 1C:A444: 08        .byte $08
- D - I - - 0x03A455 1C:A445: 11        .byte $11
- - - - - - 0x03A456 1C:A446: 0D        .byte $0D
- - - - - - 0x03A457 1C:A447: 15        .byte $15
- D - I - - 0x03A458 1C:A448: 0F        .byte $0F
- - - - - - 0x03A459 1C:A449: 08        .byte $08
- D - I - - 0x03A45A 1C:A44A: 07        .byte $07
- - - - - - 0x03A45B 1C:A44B: 08        .byte $08
- D - I - - 0x03A45C 1C:A44C: 08        .byte $08
- - - - - - 0x03A45D 1C:A44D: 00        .byte $00
; 30
- - - - - - 0x03A45E 1C:A44E: 00        .byte $00
- D - I - - 0x03A45F 1C:A44F: 12        .byte $12
- D - I - - 0x03A460 1C:A450: 1E        .byte $1E
- D - I - - 0x03A461 1C:A451: 1C        .byte $1C
- D - I - - 0x03A462 1C:A452: 03        .byte $03
- D - I - - 0x03A463 1C:A453: 03        .byte $03
- - - - - - 0x03A464 1C:A454: 0A        .byte $0A
- D - I - - 0x03A465 1C:A455: 1A        .byte $1A
- - - - - - 0x03A466 1C:A456: 15        .byte $15
- - - - - - 0x03A467 1C:A457: 15        .byte $15
- - - - - - 0x03A468 1C:A458: 20        .byte $20
- - - - - - 0x03A469 1C:A459: 14        .byte $14
- - - - - - 0x03A46A 1C:A45A: 19        .byte $19
- - - - - - 0x03A46B 1C:A45B: 14        .byte $14
- - - - - - 0x03A46C 1C:A45C: 10        .byte $10
- - - - - - 0x03A46D 1C:A45D: 1A        .byte $1A
- - - - - - 0x03A46E 1C:A45E: 15        .byte $15
- D - I - - 0x03A46F 1C:A45F: 15        .byte $15
- - - - - - 0x03A470 1C:A460: 20        .byte $20
- - - - - - 0x03A471 1C:A461: 14        .byte $14
- - - - - - 0x03A472 1C:A462: 19        .byte $19
- - - - - - 0x03A473 1C:A463: 14        .byte $14
- - - - - - 0x03A474 1C:A464: 10        .byte $10
- - - - - - 0x03A475 1C:A465: 00        .byte $00
; 31
- - - - - - 0x03A476 1C:A466: 00        .byte $00
- D - I - - 0x03A477 1C:A467: 12        .byte $12
- D - I - - 0x03A478 1C:A468: 1E        .byte $1E
- - - - - - 0x03A479 1C:A469: 24        .byte $24
- - - - - - 0x03A47A 1C:A46A: 0C        .byte $0C
- - - - - - 0x03A47B 1C:A46B: 19        .byte $19
- D - I - - 0x03A47C 1C:A46C: 0A        .byte $0A
- D - I - - 0x03A47D 1C:A46D: 19        .byte $19
- - - - - - 0x03A47E 1C:A46E: 15        .byte $15
- - - - - - 0x03A47F 1C:A46F: 15        .byte $15
- - - - - - 0x03A480 1C:A470: 1B        .byte $1B
- - - - - - 0x03A481 1C:A471: 0E        .byte $0E
- - - - - - 0x03A482 1C:A472: 0B        .byte $0B
- - - - - - 0x03A483 1C:A473: 0E        .byte $0E
- - - - - - 0x03A484 1C:A474: 0E        .byte $0E
- - - - - - 0x03A485 1C:A475: 19        .byte $19
- - - - - - 0x03A486 1C:A476: 15        .byte $15
- - - - - - 0x03A487 1C:A477: 15        .byte $15
- - - - - - 0x03A488 1C:A478: 1C        .byte $1C
- - - - - - 0x03A489 1C:A479: 0E        .byte $0E
- - - - - - 0x03A48A 1C:A47A: 0B        .byte $0B
- - - - - - 0x03A48B 1C:A47B: 0E        .byte $0E
- - - - - - 0x03A48C 1C:A47C: 0E        .byte $0E
- - - - - - 0x03A48D 1C:A47D: 00        .byte $00
; 32
- - - - - - 0x03A48E 1C:A47E: 00        .byte $00
- D - I - - 0x03A48F 1C:A47F: 11        .byte $11
- D - I - - 0x03A490 1C:A480: 1B        .byte $1B
- D - I - - 0x03A491 1C:A481: 20        .byte $20
- D - I - - 0x03A492 1C:A482: 0E        .byte $0E
- D - I - - 0x03A493 1C:A483: 0E        .byte $0E
- - - - - - 0x03A494 1C:A484: 0C        .byte $0C
- - - - - - 0x03A495 1C:A485: 13        .byte $13
- - - - - - 0x03A496 1C:A486: 0F        .byte $0F
- - - - - - 0x03A497 1C:A487: 17        .byte $17
- - - - - - 0x03A498 1C:A488: 11        .byte $11
- - - - - - 0x03A499 1C:A489: 0A        .byte $0A
- - - - - - 0x03A49A 1C:A48A: 09        .byte $09
- - - - - - 0x03A49B 1C:A48B: 0A        .byte $0A
- - - - - - 0x03A49C 1C:A48C: 0A        .byte $0A
- - - - - - 0x03A49D 1C:A48D: 13        .byte $13
- - - - - - 0x03A49E 1C:A48E: 0F        .byte $0F
- - - - - - 0x03A49F 1C:A48F: 17        .byte $17
- - - - - - 0x03A4A0 1C:A490: 11        .byte $11
- - - - - - 0x03A4A1 1C:A491: 0A        .byte $0A
- - - - - - 0x03A4A2 1C:A492: 09        .byte $09
- - - - - - 0x03A4A3 1C:A493: 0A        .byte $0A
- - - - - - 0x03A4A4 1C:A494: 0A        .byte $0A
- - - - - - 0x03A4A5 1C:A495: 00        .byte $00
; 33
- - - - - - 0x03A4A6 1C:A496: 00        .byte $00
- - - - - - 0x03A4A7 1C:A497: 13        .byte $13
- D - I - - 0x03A4A8 1C:A498: 1D        .byte $1D
- - - - - - 0x03A4A9 1C:A499: 22        .byte $22
- D - I - - 0x03A4AA 1C:A49A: 0E        .byte $0E
- D - I - - 0x03A4AB 1C:A49B: 0E        .byte $0E
- - - - - - 0x03A4AC 1C:A49C: 0C        .byte $0C
- - - - - - 0x03A4AD 1C:A49D: 15        .byte $15
- - - - - - 0x03A4AE 1C:A49E: 0F        .byte $0F
- - - - - - 0x03A4AF 1C:A49F: 17        .byte $17
- D - I - - 0x03A4B0 1C:A4A0: 11        .byte $11
- - - - - - 0x03A4B1 1C:A4A1: 0A        .byte $0A
- D - I - - 0x03A4B2 1C:A4A2: 09        .byte $09
- - - - - - 0x03A4B3 1C:A4A3: 0A        .byte $0A
- - - - - - 0x03A4B4 1C:A4A4: 0A        .byte $0A
- D - I - - 0x03A4B5 1C:A4A5: 15        .byte $15
- - - - - - 0x03A4B6 1C:A4A6: 0F        .byte $0F
- - - - - - 0x03A4B7 1C:A4A7: 17        .byte $17
- - - - - - 0x03A4B8 1C:A4A8: 11        .byte $11
- - - - - - 0x03A4B9 1C:A4A9: 0A        .byte $0A
- - - - - - 0x03A4BA 1C:A4AA: 09        .byte $09
- - - - - - 0x03A4BB 1C:A4AB: 0A        .byte $0A
- D - I - - 0x03A4BC 1C:A4AC: 0A        .byte $0A
- - - - - - 0x03A4BD 1C:A4AD: 00        .byte $00
; 34
- - - - - - 0x03A4BE 1C:A4AE: 00        .byte $00
- D - I - - 0x03A4BF 1C:A4AF: 16        .byte $16
- D - I - - 0x03A4C0 1C:A4B0: 24        .byte $24
- D - I - - 0x03A4C1 1C:A4B1: 24        .byte $24
- - - - - - 0x03A4C2 1C:A4B2: 00        .byte $00
- D - I - - 0x03A4C3 1C:A4B3: 00        .byte $00
- D - I - - 0x03A4C4 1C:A4B4: 00        .byte $00
- - - - - - 0x03A4C5 1C:A4B5: 16        .byte $16
- D - I - - 0x03A4C6 1C:A4B6: 17        .byte $17
- D - I - - 0x03A4C7 1C:A4B7: 17        .byte $17
- - - - - - 0x03A4C8 1C:A4B8: 1E        .byte $1E
- - - - - - 0x03A4C9 1C:A4B9: 10        .byte $10
- - - - - - 0x03A4CA 1C:A4BA: 16        .byte $16
- - - - - - 0x03A4CB 1C:A4BB: 10        .byte $10
- - - - - - 0x03A4CC 1C:A4BC: 10        .byte $10
- - - - - - 0x03A4CD 1C:A4BD: 16        .byte $16
- - - - - - 0x03A4CE 1C:A4BE: 17        .byte $17
- D - I - - 0x03A4CF 1C:A4BF: 17        .byte $17
- - - - - - 0x03A4D0 1C:A4C0: 1E        .byte $1E
- - - - - - 0x03A4D1 1C:A4C1: 10        .byte $10
- - - - - - 0x03A4D2 1C:A4C2: 16        .byte $16
- - - - - - 0x03A4D3 1C:A4C3: 10        .byte $10
- D - I - - 0x03A4D4 1C:A4C4: 10        .byte $10
- - - - - - 0x03A4D5 1C:A4C5: 00        .byte $00
; 35
- - - - - - 0x03A4D6 1C:A4C6: 00        .byte $00
- D - I - - 0x03A4D7 1C:A4C7: 0F        .byte $0F
- D - I - - 0x03A4D8 1C:A4C8: 21        .byte $21
- D - I - - 0x03A4D9 1C:A4C9: 27        .byte $27
- D - I - - 0x03A4DA 1C:A4CA: 10        .byte $10
- D - I - - 0x03A4DB 1C:A4CB: 10        .byte $10
- D - I - - 0x03A4DC 1C:A4CC: 0D        .byte $0D
- D - I - - 0x03A4DD 1C:A4CD: 11        .byte $11
- D - I - - 0x03A4DE 1C:A4CE: 11        .byte $11
- - - - - - 0x03A4DF 1C:A4CF: 19        .byte $19
- - - - - - 0x03A4E0 1C:A4D0: 13        .byte $13
- D - I - - 0x03A4E1 1C:A4D1: 0C        .byte $0C
- D - I - - 0x03A4E2 1C:A4D2: 0B        .byte $0B
- - - - - - 0x03A4E3 1C:A4D3: 0C        .byte $0C
- - - - - - 0x03A4E4 1C:A4D4: 0C        .byte $0C
- - - - - - 0x03A4E5 1C:A4D5: 11        .byte $11
- D - I - - 0x03A4E6 1C:A4D6: 11        .byte $11
- D - I - - 0x03A4E7 1C:A4D7: 19        .byte $19
- - - - - - 0x03A4E8 1C:A4D8: 13        .byte $13
- D - I - - 0x03A4E9 1C:A4D9: 0C        .byte $0C
- - - - - - 0x03A4EA 1C:A4DA: 0B        .byte $0B
- - - - - - 0x03A4EB 1C:A4DB: 0C        .byte $0C
- - - - - - 0x03A4EC 1C:A4DC: 0C        .byte $0C
- - - - - - 0x03A4ED 1C:A4DD: 00        .byte $00
; 36
- - - - - - 0x03A4EE 1C:A4DE: 00        .byte $00
- D - I - - 0x03A4EF 1C:A4DF: 0F        .byte $0F
- D - I - - 0x03A4F0 1C:A4E0: 23        .byte $23
- D - I - - 0x03A4F1 1C:A4E1: 28        .byte $28
- - - - - - 0x03A4F2 1C:A4E2: 10        .byte $10
- D - I - - 0x03A4F3 1C:A4E3: 10        .byte $10
- - - - - - 0x03A4F4 1C:A4E4: 0D        .byte $0D
- - - - - - 0x03A4F5 1C:A4E5: 11        .byte $11
- - - - - - 0x03A4F6 1C:A4E6: 11        .byte $11
- D - I - - 0x03A4F7 1C:A4E7: 19        .byte $19
- D - I - - 0x03A4F8 1C:A4E8: 13        .byte $13
- - - - - - 0x03A4F9 1C:A4E9: 0C        .byte $0C
- - - - - - 0x03A4FA 1C:A4EA: 0B        .byte $0B
- - - - - - 0x03A4FB 1C:A4EB: 0C        .byte $0C
- - - - - - 0x03A4FC 1C:A4EC: 0C        .byte $0C
- - - - - - 0x03A4FD 1C:A4ED: 11        .byte $11
- D - I - - 0x03A4FE 1C:A4EE: 11        .byte $11
- D - I - - 0x03A4FF 1C:A4EF: 19        .byte $19
- D - I - - 0x03A500 1C:A4F0: 13        .byte $13
- - - - - - 0x03A501 1C:A4F1: 0C        .byte $0C
- - - - - - 0x03A502 1C:A4F2: 0B        .byte $0B
- - - - - - 0x03A503 1C:A4F3: 0C        .byte $0C
- - - - - - 0x03A504 1C:A4F4: 0C        .byte $0C
- - - - - - 0x03A505 1C:A4F5: 00        .byte $00
; 37
- - - - - - 0x03A506 1C:A4F6: 00        .byte $00
- D - I - - 0x03A507 1C:A4F7: 15        .byte $15
- D - I - - 0x03A508 1C:A4F8: 0D        .byte $0D
- D - I - - 0x03A509 1C:A4F9: 2D        .byte $2D
- - - - - - 0x03A50A 1C:A4FA: 15        .byte $15
- D - I - - 0x03A50B 1C:A4FB: 02        .byte $02
- - - - - - 0x03A50C 1C:A4FC: 10        .byte $10
- D - I - - 0x03A50D 1C:A4FD: 14        .byte $14
- - - - - - 0x03A50E 1C:A4FE: 19        .byte $19
- - - - - - 0x03A50F 1C:A4FF: 19        .byte $19
- - - - - - 0x03A510 1C:A500: 20        .byte $20
- - - - - - 0x03A511 1C:A501: 12        .byte $12
- - - - - - 0x03A512 1C:A502: 18        .byte $18
- - - - - - 0x03A513 1C:A503: 12        .byte $12
- - - - - - 0x03A514 1C:A504: 12        .byte $12
- D - I - - 0x03A515 1C:A505: 14        .byte $14
- - - - - - 0x03A516 1C:A506: 19        .byte $19
- - - - - - 0x03A517 1C:A507: 19        .byte $19
- - - - - - 0x03A518 1C:A508: 20        .byte $20
- - - - - - 0x03A519 1C:A509: 12        .byte $12
- - - - - - 0x03A51A 1C:A50A: 18        .byte $18
- - - - - - 0x03A51B 1C:A50B: 12        .byte $12
- - - - - - 0x03A51C 1C:A50C: 12        .byte $12
- - - - - - 0x03A51D 1C:A50D: 00        .byte $00
; 38
- - - - - - 0x03A51E 1C:A50E: 00        .byte $00
- - - - - - 0x03A51F 1C:A50F: 13        .byte $13
- D - I - - 0x03A520 1C:A510: 24        .byte $24
- D - I - - 0x03A521 1C:A511: 2A        .byte $2A
- D - I - - 0x03A522 1C:A512: 13        .byte $13
- - - - - - 0x03A523 1C:A513: 13        .byte $13
- D - I - - 0x03A524 1C:A514: 0D        .byte $0D
- - - - - - 0x03A525 1C:A515: 15        .byte $15
- D - I - - 0x03A526 1C:A516: 15        .byte $15
- - - - - - 0x03A527 1C:A517: 1D        .byte $1D
- - - - - - 0x03A528 1C:A518: 17        .byte $17
- - - - - - 0x03A529 1C:A519: 10        .byte $10
- - - - - - 0x03A52A 1C:A51A: 0F        .byte $0F
- - - - - - 0x03A52B 1C:A51B: 10        .byte $10
- - - - - - 0x03A52C 1C:A51C: 10        .byte $10
- - - - - - 0x03A52D 1C:A51D: 15        .byte $15
- - - - - - 0x03A52E 1C:A51E: 15        .byte $15
- - - - - - 0x03A52F 1C:A51F: 1D        .byte $1D
- - - - - - 0x03A530 1C:A520: 17        .byte $17
- - - - - - 0x03A531 1C:A521: 10        .byte $10
- - - - - - 0x03A532 1C:A522: 0F        .byte $0F
- - - - - - 0x03A533 1C:A523: 10        .byte $10
- - - - - - 0x03A534 1C:A524: 10        .byte $10
- - - - - - 0x03A535 1C:A525: 00        .byte $00
; 39
- - - - - - 0x03A536 1C:A526: 00        .byte $00
- D - I - - 0x03A537 1C:A527: 15        .byte $15
- D - I - - 0x03A538 1C:A528: 26        .byte $26
- D - I - - 0x03A539 1C:A529: 2C        .byte $2C
- - - - - - 0x03A53A 1C:A52A: 13        .byte $13
- D - I - - 0x03A53B 1C:A52B: 13        .byte $13
- - - - - - 0x03A53C 1C:A52C: 0D        .byte $0D
- D - I - - 0x03A53D 1C:A52D: 17        .byte $17
- - - - - - 0x03A53E 1C:A52E: 15        .byte $15
- - - - - - 0x03A53F 1C:A52F: 1D        .byte $1D
- D - I - - 0x03A540 1C:A530: 17        .byte $17
- - - - - - 0x03A541 1C:A531: 10        .byte $10
- - - - - - 0x03A542 1C:A532: 0F        .byte $0F
- - - - - - 0x03A543 1C:A533: 10        .byte $10
- D - I - - 0x03A544 1C:A534: 10        .byte $10
- D - I - - 0x03A545 1C:A535: 17        .byte $17
- D - I - - 0x03A546 1C:A536: 15        .byte $15
- - - - - - 0x03A547 1C:A537: 1D        .byte $1D
- - - - - - 0x03A548 1C:A538: 17        .byte $17
- - - - - - 0x03A549 1C:A539: 10        .byte $10
- - - - - - 0x03A54A 1C:A53A: 0F        .byte $0F
- - - - - - 0x03A54B 1C:A53B: 10        .byte $10
- - - - - - 0x03A54C 1C:A53C: 10        .byte $10
- - - - - - 0x03A54D 1C:A53D: 00        .byte $00
; 3A
- - - - - - 0x03A54E 1C:A53E: 00        .byte $00
- D - I - - 0x03A54F 1C:A53F: 29        .byte $29
- D - I - - 0x03A550 1C:A540: 3C        .byte $3C
- D - I - - 0x03A551 1C:A541: 3C        .byte $3C
- - - - - - 0x03A552 1C:A542: 28        .byte $28
- - - - - - 0x03A553 1C:A543: 28        .byte $28
- D - I - - 0x03A554 1C:A544: 22        .byte $22
- D - I - - 0x03A555 1C:A545: 30        .byte $30
- - - - - - 0x03A556 1C:A546: 21        .byte $21
- D - I - - 0x03A557 1C:A547: 21        .byte $21
- - - - - - 0x03A558 1C:A548: 28        .byte $28
- - - - - - 0x03A559 1C:A549: 1A        .byte $1A
- - - - - - 0x03A55A 1C:A54A: 1B        .byte $1B
- - - - - - 0x03A55B 1C:A54B: 1A        .byte $1A
- D - I - - 0x03A55C 1C:A54C: 1A        .byte $1A
- - - - - - 0x03A55D 1C:A54D: 30        .byte $30
- - - - - - 0x03A55E 1C:A54E: 21        .byte $21
- - - - - - 0x03A55F 1C:A54F: 21        .byte $21
- - - - - - 0x03A560 1C:A550: 28        .byte $28
- - - - - - 0x03A561 1C:A551: 1A        .byte $1A
- - - - - - 0x03A562 1C:A552: 1B        .byte $1B
- - - - - - 0x03A563 1C:A553: 1A        .byte $1A
- - - - - - 0x03A564 1C:A554: 1A        .byte $1A
- - - - - - 0x03A565 1C:A555: 00        .byte $00
; 3B
- - - - - - 0x03A566 1C:A556: 00        .byte $00
- - - - - - 0x03A567 1C:A557: 13        .byte $13
- D - I - - 0x03A568 1C:A558: 24        .byte $24
- - - - - - 0x03A569 1C:A559: 2A        .byte $2A
- D - I - - 0x03A56A 1C:A55A: 12        .byte $12
- D - I - - 0x03A56B 1C:A55B: 12        .byte $12
- D - I - - 0x03A56C 1C:A55C: 10        .byte $10
- - - - - - 0x03A56D 1C:A55D: 15        .byte $15
- - - - - - 0x03A56E 1C:A55E: 15        .byte $15
- - - - - - 0x03A56F 1C:A55F: 1D        .byte $1D
- - - - - - 0x03A570 1C:A560: 17        .byte $17
- D - I - - 0x03A571 1C:A561: 10        .byte $10
- - - - - - 0x03A572 1C:A562: 0F        .byte $0F
- - - - - - 0x03A573 1C:A563: 10        .byte $10
- - - - - - 0x03A574 1C:A564: 10        .byte $10
- - - - - - 0x03A575 1C:A565: 15        .byte $15
- - - - - - 0x03A576 1C:A566: 15        .byte $15
- D - I - - 0x03A577 1C:A567: 1D        .byte $1D
- - - - - - 0x03A578 1C:A568: 17        .byte $17
- D - I - - 0x03A579 1C:A569: 10        .byte $10
- - - - - - 0x03A57A 1C:A56A: 0F        .byte $0F
- - - - - - 0x03A57B 1C:A56B: 10        .byte $10
- D - I - - 0x03A57C 1C:A56C: 10        .byte $10
- - - - - - 0x03A57D 1C:A56D: 00        .byte $00
; 3C
- - - - - - 0x03A57E 1C:A56E: 00        .byte $00
- D - I - - 0x03A57F 1C:A56F: 15        .byte $15
- D - I - - 0x03A580 1C:A570: 26        .byte $26
- D - I - - 0x03A581 1C:A571: 2C        .byte $2C
- D - I - - 0x03A582 1C:A572: 12        .byte $12
- D - I - - 0x03A583 1C:A573: 12        .byte $12
- D - I - - 0x03A584 1C:A574: 10        .byte $10
- - - - - - 0x03A585 1C:A575: 17        .byte $17
- - - - - - 0x03A586 1C:A576: 15        .byte $15
- - - - - - 0x03A587 1C:A577: 1D        .byte $1D
- - - - - - 0x03A588 1C:A578: 17        .byte $17
- - - - - - 0x03A589 1C:A579: 10        .byte $10
- - - - - - 0x03A58A 1C:A57A: 0F        .byte $0F
- - - - - - 0x03A58B 1C:A57B: 10        .byte $10
- - - - - - 0x03A58C 1C:A57C: 10        .byte $10
- D - I - - 0x03A58D 1C:A57D: 17        .byte $17
- - - - - - 0x03A58E 1C:A57E: 15        .byte $15
- D - I - - 0x03A58F 1C:A57F: 1D        .byte $1D
- - - - - - 0x03A590 1C:A580: 17        .byte $17
- - - - - - 0x03A591 1C:A581: 10        .byte $10
- - - - - - 0x03A592 1C:A582: 0F        .byte $0F
- - - - - - 0x03A593 1C:A583: 10        .byte $10
- D - I - - 0x03A594 1C:A584: 10        .byte $10
- - - - - - 0x03A595 1C:A585: 00        .byte $00
; 3D
- - - - - - 0x03A596 1C:A586: 01        .byte $01
- D - I - - 0x03A597 1C:A587: 15        .byte $15
- D - I - - 0x03A598 1C:A588: 31        .byte $31
- D - I - - 0x03A599 1C:A589: 32        .byte $32
- - - - - - 0x03A59A 1C:A58A: 1A        .byte $1A
- D - I - - 0x03A59B 1C:A58B: 1A        .byte $1A
- - - - - - 0x03A59C 1C:A58C: 14        .byte $14
- - - - - - 0x03A59D 1C:A58D: 17        .byte $17
- - - - - - 0x03A59E 1C:A58E: 1B        .byte $1B
- - - - - - 0x03A59F 1C:A58F: 1B        .byte $1B
- - - - - - 0x03A5A0 1C:A590: 22        .byte $22
- - - - - - 0x03A5A1 1C:A591: 16        .byte $16
- - - - - - 0x03A5A2 1C:A592: 1E        .byte $1E
- - - - - - 0x03A5A3 1C:A593: 16        .byte $16
- D - I - - 0x03A5A4 1C:A594: 16        .byte $16
- - - - - - 0x03A5A5 1C:A595: 17        .byte $17
- - - - - - 0x03A5A6 1C:A596: 1B        .byte $1B
- - - - - - 0x03A5A7 1C:A597: 1B        .byte $1B
- - - - - - 0x03A5A8 1C:A598: 22        .byte $22
- - - - - - 0x03A5A9 1C:A599: 16        .byte $16
- - - - - - 0x03A5AA 1C:A59A: 1E        .byte $1E
- - - - - - 0x03A5AB 1C:A59B: 16        .byte $16
- D - I - - 0x03A5AC 1C:A59C: 16        .byte $16
- - - - - - 0x03A5AD 1C:A59D: 00        .byte $00
; 3E
- - - - - - 0x03A5AE 1C:A59E: 00        .byte $00
- - - - - - 0x03A5AF 1C:A59F: 12        .byte $12
- D - I - - 0x03A5B0 1C:A5A0: 25        .byte $25
- - - - - - 0x03A5B1 1C:A5A1: 2B        .byte $2B
- - - - - - 0x03A5B2 1C:A5A2: 12        .byte $12
- - - - - - 0x03A5B3 1C:A5A3: 12        .byte $12
- D - I - - 0x03A5B4 1C:A5A4: 10        .byte $10
- - - - - - 0x03A5B5 1C:A5A5: 15        .byte $15
- - - - - - 0x03A5B6 1C:A5A6: 17        .byte $17
- - - - - - 0x03A5B7 1C:A5A7: 20        .byte $20
- - - - - - 0x03A5B8 1C:A5A8: 19        .byte $19
- - - - - - 0x03A5B9 1C:A5A9: 12        .byte $12
- - - - - - 0x03A5BA 1C:A5AA: 11        .byte $11
- - - - - - 0x03A5BB 1C:A5AB: 12        .byte $12
- - - - - - 0x03A5BC 1C:A5AC: 10        .byte $10
- - - - - - 0x03A5BD 1C:A5AD: 15        .byte $15
- - - - - - 0x03A5BE 1C:A5AE: 17        .byte $17
- - - - - - 0x03A5BF 1C:A5AF: 20        .byte $20
- - - - - - 0x03A5C0 1C:A5B0: 19        .byte $19
- D - I - - 0x03A5C1 1C:A5B1: 12        .byte $12
- D - I - - 0x03A5C2 1C:A5B2: 11        .byte $11
- - - - - - 0x03A5C3 1C:A5B3: 12        .byte $12
- D - I - - 0x03A5C4 1C:A5B4: 10        .byte $10
- - - - - - 0x03A5C5 1C:A5B5: 00        .byte $00
; 3F
- - - - - - 0x03A5C6 1C:A5B6: 00        .byte $00
- D - I - - 0x03A5C7 1C:A5B7: 12        .byte $12
- D - I - - 0x03A5C8 1C:A5B8: 25        .byte $25
- - - - - - 0x03A5C9 1C:A5B9: 2B        .byte $2B
- - - - - - 0x03A5CA 1C:A5BA: 12        .byte $12
- D - I - - 0x03A5CB 1C:A5BB: 12        .byte $12
- D - I - - 0x03A5CC 1C:A5BC: 10        .byte $10
- D - I - - 0x03A5CD 1C:A5BD: 15        .byte $15
- - - - - - 0x03A5CE 1C:A5BE: 17        .byte $17
- - - - - - 0x03A5CF 1C:A5BF: 20        .byte $20
- - - - - - 0x03A5D0 1C:A5C0: 19        .byte $19
- D - I - - 0x03A5D1 1C:A5C1: 12        .byte $12
- - - - - - 0x03A5D2 1C:A5C2: 11        .byte $11
- - - - - - 0x03A5D3 1C:A5C3: 12        .byte $12
- - - - - - 0x03A5D4 1C:A5C4: 10        .byte $10
- D - I - - 0x03A5D5 1C:A5C5: 15        .byte $15
- - - - - - 0x03A5D6 1C:A5C6: 17        .byte $17
- D - I - - 0x03A5D7 1C:A5C7: 20        .byte $20
- - - - - - 0x03A5D8 1C:A5C8: 19        .byte $19
- - - - - - 0x03A5D9 1C:A5C9: 12        .byte $12
- - - - - - 0x03A5DA 1C:A5CA: 11        .byte $11
- - - - - - 0x03A5DB 1C:A5CB: 12        .byte $12
- D - I - - 0x03A5DC 1C:A5CC: 10        .byte $10
- - - - - - 0x03A5DD 1C:A5CD: 00        .byte $00
; 40
- - - - - - 0x03A5DE 1C:A5CE: 00        .byte $00
- D - I - - 0x03A5DF 1C:A5CF: 1D        .byte $1D
- D - I - - 0x03A5E0 1C:A5D0: 2D        .byte $2D
- D - I - - 0x03A5E1 1C:A5D1: 27        .byte $27
- - - - - - 0x03A5E2 1C:A5D2: 18        .byte $18
- D - I - - 0x03A5E3 1C:A5D3: 07        .byte $07
- D - I - - 0x03A5E4 1C:A5D4: 15        .byte $15
- D - I - - 0x03A5E5 1C:A5D5: 25        .byte $25
- - - - - - 0x03A5E6 1C:A5D6: 1E        .byte $1E
- D - I - - 0x03A5E7 1C:A5D7: 21        .byte $21
- - - - - - 0x03A5E8 1C:A5D8: 26        .byte $26
- - - - - - 0x03A5E9 1C:A5D9: 1A        .byte $1A
- - - - - - 0x03A5EA 1C:A5DA: 22        .byte $22
- - - - - - 0x03A5EB 1C:A5DB: 1A        .byte $1A
- - - - - - 0x03A5EC 1C:A5DC: 1A        .byte $1A
- - - - - - 0x03A5ED 1C:A5DD: 18        .byte $18
- - - - - - 0x03A5EE 1C:A5DE: 1E        .byte $1E
- - - - - - 0x03A5EF 1C:A5DF: 21        .byte $21
- - - - - - 0x03A5F0 1C:A5E0: 26        .byte $26
- - - - - - 0x03A5F1 1C:A5E1: 1A        .byte $1A
- - - - - - 0x03A5F2 1C:A5E2: 22        .byte $22
- - - - - - 0x03A5F3 1C:A5E3: 1A        .byte $1A
- - - - - - 0x03A5F4 1C:A5E4: 1A        .byte $1A
- - - - - - 0x03A5F5 1C:A5E5: 00        .byte $00
; 41
- - - - - - 0x03A5F6 1C:A5E6: 00        .byte $00
- D - I - - 0x03A5F7 1C:A5E7: 18        .byte $18
- D - I - - 0x03A5F8 1C:A5E8: 2B        .byte $2B
- - - - - - 0x03A5F9 1C:A5E9: 2E        .byte $2E
- - - - - - 0x03A5FA 1C:A5EA: 14        .byte $14
- D - I - - 0x03A5FB 1C:A5EB: 16        .byte $16
- - - - - - 0x03A5FC 1C:A5EC: 12        .byte $12
- - - - - - 0x03A5FD 1C:A5ED: 1B        .byte $1B
- - - - - - 0x03A5FE 1C:A5EE: 15        .byte $15
- - - - - - 0x03A5FF 1C:A5EF: 1D        .byte $1D
- - - - - - 0x03A600 1C:A5F0: 17        .byte $17
- - - - - - 0x03A601 1C:A5F1: 16        .byte $16
- - - - - - 0x03A602 1C:A5F2: 1C        .byte $1C
- - - - - - 0x03A603 1C:A5F3: 16        .byte $16
- - - - - - 0x03A604 1C:A5F4: 10        .byte $10
- - - - - - 0x03A605 1C:A5F5: 1B        .byte $1B
- - - - - - 0x03A606 1C:A5F6: 15        .byte $15
- - - - - - 0x03A607 1C:A5F7: 1D        .byte $1D
- - - - - - 0x03A608 1C:A5F8: 17        .byte $17
- - - - - - 0x03A609 1C:A5F9: 16        .byte $16
- - - - - - 0x03A60A 1C:A5FA: 1C        .byte $1C
- - - - - - 0x03A60B 1C:A5FB: 16        .byte $16
- D - I - - 0x03A60C 1C:A5FC: 10        .byte $10
- - - - - - 0x03A60D 1C:A5FD: 00        .byte $00
; 42
- - - - - - 0x03A60E 1C:A5FE: 00        .byte $00
- D - I - - 0x03A60F 1C:A5FF: 16        .byte $16
- D - I - - 0x03A610 1C:A600: 2F        .byte $2F
- - - - - - 0x03A611 1C:A601: 2F        .byte $2F
- - - - - - 0x03A612 1C:A602: 12        .byte $12
- - - - - - 0x03A613 1C:A603: 14        .byte $14
- - - - - - 0x03A614 1C:A604: 12        .byte $12
- - - - - - 0x03A615 1C:A605: 17        .byte $17
- D - I - - 0x03A616 1C:A606: 1B        .byte $1B
- - - - - - 0x03A617 1C:A607: 1B        .byte $1B
- - - - - - 0x03A618 1C:A608: 22        .byte $22
- - - - - - 0x03A619 1C:A609: 14        .byte $14
- - - - - - 0x03A61A 1C:A60A: 11        .byte $11
- - - - - - 0x03A61B 1C:A60B: 14        .byte $14
- - - - - - 0x03A61C 1C:A60C: 14        .byte $14
- D - I - - 0x03A61D 1C:A60D: 17        .byte $17
- - - - - - 0x03A61E 1C:A60E: 1B        .byte $1B
- D - I - - 0x03A61F 1C:A60F: 1B        .byte $1B
- - - - - - 0x03A620 1C:A610: 22        .byte $22
- - - - - - 0x03A621 1C:A611: 14        .byte $14
- - - - - - 0x03A622 1C:A612: 11        .byte $11
- - - - - - 0x03A623 1C:A613: 14        .byte $14
- - - - - - 0x03A624 1C:A614: 14        .byte $14
- - - - - - 0x03A625 1C:A615: 00        .byte $00
; 43
- - - - - - 0x03A626 1C:A616: 00        .byte $00
- - - - - - 0x03A627 1C:A617: 16        .byte $16
- D - I - - 0x03A628 1C:A618: 28        .byte $28
- - - - - - 0x03A629 1C:A619: 2D        .byte $2D
- D - I - - 0x03A62A 1C:A61A: 12        .byte $12
- D - I - - 0x03A62B 1C:A61B: 18        .byte $18
- D - I - - 0x03A62C 1C:A61C: 18        .byte $18
- - - - - - 0x03A62D 1C:A61D: 19        .byte $19
- - - - - - 0x03A62E 1C:A61E: 1B        .byte $1B
- - - - - - 0x03A62F 1C:A61F: 24        .byte $24
- - - - - - 0x03A630 1C:A620: 1D        .byte $1D
- - - - - - 0x03A631 1C:A621: 16        .byte $16
- - - - - - 0x03A632 1C:A622: 15        .byte $15
- - - - - - 0x03A633 1C:A623: 16        .byte $16
- - - - - - 0x03A634 1C:A624: 16        .byte $16
- - - - - - 0x03A635 1C:A625: 19        .byte $19
- - - - - - 0x03A636 1C:A626: 1B        .byte $1B
- - - - - - 0x03A637 1C:A627: 24        .byte $24
- D - I - - 0x03A638 1C:A628: 1D        .byte $1D
- - - - - - 0x03A639 1C:A629: 16        .byte $16
- - - - - - 0x03A63A 1C:A62A: 15        .byte $15
- - - - - - 0x03A63B 1C:A62B: 16        .byte $16
- D - I - - 0x03A63C 1C:A62C: 16        .byte $16
- - - - - - 0x03A63D 1C:A62D: 00        .byte $00
; 44
- - - - - - 0x03A63E 1C:A62E: 00        .byte $00
- D - I - - 0x03A63F 1C:A62F: 14        .byte $14
- D - I - - 0x03A640 1C:A630: 26        .byte $26
- D - I - - 0x03A641 1C:A631: 2B        .byte $2B
- D - I - - 0x03A642 1C:A632: 12        .byte $12
- D - I - - 0x03A643 1C:A633: 18        .byte $18
- D - I - - 0x03A644 1C:A634: 18        .byte $18
- - - - - - 0x03A645 1C:A635: 16        .byte $16
- - - - - - 0x03A646 1C:A636: 1B        .byte $1B
- - - - - - 0x03A647 1C:A637: 24        .byte $24
- - - - - - 0x03A648 1C:A638: 1D        .byte $1D
- D - I - - 0x03A649 1C:A639: 16        .byte $16
- - - - - - 0x03A64A 1C:A63A: 15        .byte $15
- - - - - - 0x03A64B 1C:A63B: 16        .byte $16
- D - I - - 0x03A64C 1C:A63C: 16        .byte $16
- - - - - - 0x03A64D 1C:A63D: 16        .byte $16
- - - - - - 0x03A64E 1C:A63E: 1B        .byte $1B
- - - - - - 0x03A64F 1C:A63F: 24        .byte $24
- - - - - - 0x03A650 1C:A640: 1D        .byte $1D
- - - - - - 0x03A651 1C:A641: 16        .byte $16
- - - - - - 0x03A652 1C:A642: 15        .byte $15
- - - - - - 0x03A653 1C:A643: 16        .byte $16
- D - I - - 0x03A654 1C:A644: 16        .byte $16
- - - - - - 0x03A655 1C:A645: 00        .byte $00
; 45
- - - - - - 0x03A656 1C:A646: 00        .byte $00
- D - I - - 0x03A657 1C:A647: 19        .byte $19
- D - I - - 0x03A658 1C:A648: 2A        .byte $2A
- D - I - - 0x03A659 1C:A649: 35        .byte $35
- D - I - - 0x03A65A 1C:A64A: 14        .byte $14
- D - I - - 0x03A65B 1C:A64B: 1A        .byte $1A
- - - - - - 0x03A65C 1C:A64C: 18        .byte $18
- D - I - - 0x03A65D 1C:A64D: 1B        .byte $1B
- - - - - - 0x03A65E 1C:A64E: 28        .byte $28
- - - - - - 0x03A65F 1C:A64F: 2B        .byte $2B
- - - - - - 0x03A660 1C:A650: 30        .byte $30
- - - - - - 0x03A661 1C:A651: 1A        .byte $1A
- - - - - - 0x03A662 1C:A652: 23        .byte $23
- - - - - - 0x03A663 1C:A653: 1A        .byte $1A
- D - I - - 0x03A664 1C:A654: 1A        .byte $1A
- - - - - - 0x03A665 1C:A655: 1B        .byte $1B
- - - - - - 0x03A666 1C:A656: 28        .byte $28
- D - I - - 0x03A667 1C:A657: 2B        .byte $2B
- D - I - - 0x03A668 1C:A658: 30        .byte $30
- - - - - - 0x03A669 1C:A659: 1A        .byte $1A
- - - - - - 0x03A66A 1C:A65A: 23        .byte $23
- - - - - - 0x03A66B 1C:A65B: 1A        .byte $1A
- D - I - - 0x03A66C 1C:A65C: 1A        .byte $1A
- - - - - - 0x03A66D 1C:A65D: 00        .byte $00
; 46
- - - - - - 0x03A66E 1C:A65E: 00        .byte $00
- - - - - - 0x03A66F 1C:A65F: 18        .byte $18
- D - I - - 0x03A670 1C:A660: 2E        .byte $2E
- - - - - - 0x03A671 1C:A661: 33        .byte $33
- D - I - - 0x03A672 1C:A662: 16        .byte $16
- D - I - - 0x03A673 1C:A663: 1C        .byte $1C
- - - - - - 0x03A674 1C:A664: 1A        .byte $1A
- - - - - - 0x03A675 1C:A665: 1B        .byte $1B
- - - - - - 0x03A676 1C:A666: 1F        .byte $1F
- - - - - - 0x03A677 1C:A667: 28        .byte $28
- - - - - - 0x03A678 1C:A668: 21        .byte $21
- - - - - - 0x03A679 1C:A669: 1A        .byte $1A
- - - - - - 0x03A67A 1C:A66A: 19        .byte $19
- - - - - - 0x03A67B 1C:A66B: 1A        .byte $1A
- - - - - - 0x03A67C 1C:A66C: 1A        .byte $1A
- - - - - - 0x03A67D 1C:A66D: 1B        .byte $1B
- - - - - - 0x03A67E 1C:A66E: 1F        .byte $1F
- - - - - - 0x03A67F 1C:A66F: 28        .byte $28
- - - - - - 0x03A680 1C:A670: 21        .byte $21
- - - - - - 0x03A681 1C:A671: 1A        .byte $1A
- D - I - - 0x03A682 1C:A672: 19        .byte $19
- - - - - - 0x03A683 1C:A673: 1A        .byte $1A
- D - I - - 0x03A684 1C:A674: 1A        .byte $1A
- - - - - - 0x03A685 1C:A675: 00        .byte $00
; 47
- - - - - - 0x03A686 1C:A676: 00        .byte $00
- D - I - - 0x03A687 1C:A677: 1A        .byte $1A
- D - I - - 0x03A688 1C:A678: 30        .byte $30
- - - - - - 0x03A689 1C:A679: 35        .byte $35
- D - I - - 0x03A68A 1C:A67A: 16        .byte $16
- D - I - - 0x03A68B 1C:A67B: 1C        .byte $1C
- D - I - - 0x03A68C 1C:A67C: 1A        .byte $1A
- - - - - - 0x03A68D 1C:A67D: 1D        .byte $1D
- - - - - - 0x03A68E 1C:A67E: 1F        .byte $1F
- - - - - - 0x03A68F 1C:A67F: 28        .byte $28
- - - - - - 0x03A690 1C:A680: 21        .byte $21
- - - - - - 0x03A691 1C:A681: 1A        .byte $1A
- - - - - - 0x03A692 1C:A682: 19        .byte $19
- - - - - - 0x03A693 1C:A683: 1A        .byte $1A
- - - - - - 0x03A694 1C:A684: 1A        .byte $1A
- - - - - - 0x03A695 1C:A685: 1D        .byte $1D
- - - - - - 0x03A696 1C:A686: 1F        .byte $1F
- - - - - - 0x03A697 1C:A687: 28        .byte $28
- - - - - - 0x03A698 1C:A688: 21        .byte $21
- - - - - - 0x03A699 1C:A689: 1A        .byte $1A
- - - - - - 0x03A69A 1C:A68A: 19        .byte $19
- - - - - - 0x03A69B 1C:A68B: 1A        .byte $1A
- D - I - - 0x03A69C 1C:A68C: 1A        .byte $1A
- - - - - - 0x03A69D 1C:A68D: 00        .byte $00
; 48
- - - - - - 0x03A69E 1C:A68E: 00        .byte $00
- D - I - - 0x03A69F 1C:A68F: 20        .byte $20
- D - I - - 0x03A6A0 1C:A690: 30        .byte $30
- D - I - - 0x03A6A1 1C:A691: 38        .byte $38
- D - I - - 0x03A6A2 1C:A692: 16        .byte $16
- - - - - - 0x03A6A3 1C:A693: 20        .byte $20
- - - - - - 0x03A6A4 1C:A694: 1A        .byte $1A
- - - - - - 0x03A6A5 1C:A695: 22        .byte $22
- - - - - - 0x03A6A6 1C:A696: 29        .byte $29
- - - - - - 0x03A6A7 1C:A697: 2F        .byte $2F
- - - - - - 0x03A6A8 1C:A698: 2A        .byte $2A
- - - - - - 0x03A6A9 1C:A699: 1E        .byte $1E
- - - - - - 0x03A6AA 1C:A69A: 1E        .byte $1E
- - - - - - 0x03A6AB 1C:A69B: 1C        .byte $1C
- D - I - - 0x03A6AC 1C:A69C: 1E        .byte $1E
- - - - - - 0x03A6AD 1C:A69D: 22        .byte $22
- - - - - - 0x03A6AE 1C:A69E: 29        .byte $29
- D - I - - 0x03A6AF 1C:A69F: 2F        .byte $2F
- - - - - - 0x03A6B0 1C:A6A0: 2A        .byte $2A
- - - - - - 0x03A6B1 1C:A6A1: 1E        .byte $1E
- - - - - - 0x03A6B2 1C:A6A2: 1E        .byte $1E
- - - - - - 0x03A6B3 1C:A6A3: 1C        .byte $1C
- - - - - - 0x03A6B4 1C:A6A4: 1E        .byte $1E
- - - - - - 0x03A6B5 1C:A6A5: 00        .byte $00
; 49
- - - - - - 0x03A6B6 1C:A6A6: 00        .byte $00
- D - I - - 0x03A6B7 1C:A6A7: 1E        .byte $1E
- D - I - - 0x03A6B8 1C:A6A8: 2F        .byte $2F
- D - I - - 0x03A6B9 1C:A6A9: 36        .byte $36
- - - - - - 0x03A6BA 1C:A6AA: 16        .byte $16
- D - I - - 0x03A6BB 1C:A6AB: 20        .byte $20
- - - - - - 0x03A6BC 1C:A6AC: 1A        .byte $1A
- - - - - - 0x03A6BD 1C:A6AD: 20        .byte $20
- - - - - - 0x03A6BE 1C:A6AE: 29        .byte $29
- - - - - - 0x03A6BF 1C:A6AF: 2F        .byte $2F
- - - - - - 0x03A6C0 1C:A6B0: 2A        .byte $2A
- - - - - - 0x03A6C1 1C:A6B1: 1E        .byte $1E
- - - - - - 0x03A6C2 1C:A6B2: 1E        .byte $1E
- - - - - - 0x03A6C3 1C:A6B3: 1C        .byte $1C
- D - I - - 0x03A6C4 1C:A6B4: 1E        .byte $1E
- D - I - - 0x03A6C5 1C:A6B5: 20        .byte $20
- - - - - - 0x03A6C6 1C:A6B6: 29        .byte $29
- D - I - - 0x03A6C7 1C:A6B7: 2F        .byte $2F
- - - - - - 0x03A6C8 1C:A6B8: 2A        .byte $2A
- - - - - - 0x03A6C9 1C:A6B9: 1E        .byte $1E
- - - - - - 0x03A6CA 1C:A6BA: 1E        .byte $1E
- - - - - - 0x03A6CB 1C:A6BB: 1C        .byte $1C
- - - - - - 0x03A6CC 1C:A6BC: 1E        .byte $1E
- - - - - - 0x03A6CD 1C:A6BD: 00        .byte $00
; 4A
- - - - - - 0x03A6CE 1C:A6BE: 00        .byte $00
- - - - - - 0x03A6CF 1C:A6BF: 14        .byte $14
- D - I - - 0x03A6D0 1C:A6C0: 20        .byte $20
- - - - - - 0x03A6D1 1C:A6C1: 26        .byte $26
- D - I - - 0x03A6D2 1C:A6C2: 14        .byte $14
- D - I - - 0x03A6D3 1C:A6C3: 1C        .byte $1C
- - - - - - 0x03A6D4 1C:A6C4: 1A        .byte $1A
- - - - - - 0x03A6D5 1C:A6C5: 17        .byte $17
- - - - - - 0x03A6D6 1C:A6C6: 1D        .byte $1D
- - - - - - 0x03A6D7 1C:A6C7: 26        .byte $26
- - - - - - 0x03A6D8 1C:A6C8: 20        .byte $20
- - - - - - 0x03A6D9 1C:A6C9: 17        .byte $17
- - - - - - 0x03A6DA 1C:A6CA: 16        .byte $16
- - - - - - 0x03A6DB 1C:A6CB: 18        .byte $18
- - - - - - 0x03A6DC 1C:A6CC: 18        .byte $18
- - - - - - 0x03A6DD 1C:A6CD: 17        .byte $17
- - - - - - 0x03A6DE 1C:A6CE: 1D        .byte $1D
- - - - - - 0x03A6DF 1C:A6CF: 26        .byte $26
- - - - - - 0x03A6E0 1C:A6D0: 20        .byte $20
- - - - - - 0x03A6E1 1C:A6D1: 17        .byte $17
- D - I - - 0x03A6E2 1C:A6D2: 16        .byte $16
- - - - - - 0x03A6E3 1C:A6D3: 18        .byte $18
- D - I - - 0x03A6E4 1C:A6D4: 18        .byte $18
- - - - - - 0x03A6E5 1C:A6D5: 00        .byte $00
; 4B
- - - - - - 0x03A6E6 1C:A6D6: 00        .byte $00
- - - - - - 0x03A6E7 1C:A6D7: 14        .byte $14
- - - - - - 0x03A6E8 1C:A6D8: 20        .byte $20
- D - I - - 0x03A6E9 1C:A6D9: 26        .byte $26
- D - I - - 0x03A6EA 1C:A6DA: 14        .byte $14
- D - I - - 0x03A6EB 1C:A6DB: 1C        .byte $1C
- D - I - - 0x03A6EC 1C:A6DC: 1A        .byte $1A
- - - - - - 0x03A6ED 1C:A6DD: 17        .byte $17
- - - - - - 0x03A6EE 1C:A6DE: 1D        .byte $1D
- D - I - - 0x03A6EF 1C:A6DF: 26        .byte $26
- - - - - - 0x03A6F0 1C:A6E0: 20        .byte $20
- - - - - - 0x03A6F1 1C:A6E1: 17        .byte $17
- - - - - - 0x03A6F2 1C:A6E2: 16        .byte $16
- - - - - - 0x03A6F3 1C:A6E3: 18        .byte $18
- - - - - - 0x03A6F4 1C:A6E4: 18        .byte $18
- - - - - - 0x03A6F5 1C:A6E5: 17        .byte $17
- - - - - - 0x03A6F6 1C:A6E6: 1D        .byte $1D
- - - - - - 0x03A6F7 1C:A6E7: 26        .byte $26
- D - I - - 0x03A6F8 1C:A6E8: 20        .byte $20
- D - I - - 0x03A6F9 1C:A6E9: 17        .byte $17
- - - - - - 0x03A6FA 1C:A6EA: 16        .byte $16
- - - - - - 0x03A6FB 1C:A6EB: 18        .byte $18
- - - - - - 0x03A6FC 1C:A6EC: 18        .byte $18
- - - - - - 0x03A6FD 1C:A6ED: 00        .byte $00
; 4C
- - - - - - 0x03A6FE 1C:A6EE: 00        .byte $00
- D - I - - 0x03A6FF 1C:A6EF: 1C        .byte $1C
- D - I - - 0x03A700 1C:A6F0: 2C        .byte $2C
- D - I - - 0x03A701 1C:A6F1: 2C        .byte $2C
- - - - - - 0x03A702 1C:A6F2: 16        .byte $16
- D - I - - 0x03A703 1C:A6F3: 1E        .byte $1E
- - - - - - 0x03A704 1C:A6F4: 1A        .byte $1A
- - - - - - 0x03A705 1C:A6F5: 1E        .byte $1E
- - - - - - 0x03A706 1C:A6F6: 29        .byte $29
- - - - - - 0x03A707 1C:A6F7: 2F        .byte $2F
- - - - - - 0x03A708 1C:A6F8: 2A        .byte $2A
- - - - - - 0x03A709 1C:A6F9: 1E        .byte $1E
- - - - - - 0x03A70A 1C:A6FA: 1E        .byte $1E
- - - - - - 0x03A70B 1C:A6FB: 1C        .byte $1C
- - - - - - 0x03A70C 1C:A6FC: 1E        .byte $1E
- - - - - - 0x03A70D 1C:A6FD: 1E        .byte $1E
- - - - - - 0x03A70E 1C:A6FE: 29        .byte $29
- - - - - - 0x03A70F 1C:A6FF: 2F        .byte $2F
- - - - - - 0x03A710 1C:A700: 2A        .byte $2A
- - - - - - 0x03A711 1C:A701: 1E        .byte $1E
- - - - - - 0x03A712 1C:A702: 1E        .byte $1E
- D - I - - 0x03A713 1C:A703: 1C        .byte $1C
- - - - - - 0x03A714 1C:A704: 1E        .byte $1E
- - - - - - 0x03A715 1C:A705: 00        .byte $00
; 4D
- - - - - - 0x03A716 1C:A706: 00        .byte $00
- D - I - - 0x03A717 1C:A707: 1B        .byte $1B
- D - I - - 0x03A718 1C:A708: 2C        .byte $2C
- D - I - - 0x03A719 1C:A709: 2E        .byte $2E
- - - - - - 0x03A71A 1C:A70A: 16        .byte $16
- D - I - - 0x03A71B 1C:A70B: 26        .byte $26
- D - I - - 0x03A71C 1C:A70C: 2D        .byte $2D
- D - I - - 0x03A71D 1C:A70D: 1C        .byte $1C
- - - - - - 0x03A71E 1C:A70E: 29        .byte $29
- - - - - - 0x03A71F 1C:A70F: 2F        .byte $2F
- - - - - - 0x03A720 1C:A710: 2A        .byte $2A
- - - - - - 0x03A721 1C:A711: 1E        .byte $1E
- - - - - - 0x03A722 1C:A712: 1E        .byte $1E
- - - - - - 0x03A723 1C:A713: 1C        .byte $1C
- - - - - - 0x03A724 1C:A714: 1E        .byte $1E
- D - I - - 0x03A725 1C:A715: 1C        .byte $1C
- - - - - - 0x03A726 1C:A716: 29        .byte $29
- D - I - - 0x03A727 1C:A717: 2F        .byte $2F
- - - - - - 0x03A728 1C:A718: 2A        .byte $2A
- - - - - - 0x03A729 1C:A719: 1E        .byte $1E
- - - - - - 0x03A72A 1C:A71A: 1E        .byte $1E
- - - - - - 0x03A72B 1C:A71B: 1C        .byte $1C
- - - - - - 0x03A72C 1C:A71C: 1E        .byte $1E
- - - - - - 0x03A72D 1C:A71D: 00        .byte $00
; 4E
- - - - - - 0x03A72E 1C:A71E: 00        .byte $00
- - - - - - 0x03A72F 1C:A71F: 1B        .byte $1B
- D - I - - 0x03A730 1C:A720: 22        .byte $22
- D - I - - 0x03A731 1C:A721: 32        .byte $32
- D - I - - 0x03A732 1C:A722: 16        .byte $16
- - - - - - 0x03A733 1C:A723: 20        .byte $20
- - - - - - 0x03A734 1C:A724: 22        .byte $22
- - - - - - 0x03A735 1C:A725: 1C        .byte $1C
- - - - - - 0x03A736 1C:A726: 29        .byte $29
- - - - - - 0x03A737 1C:A727: 2F        .byte $2F
- - - - - - 0x03A738 1C:A728: 2A        .byte $2A
- - - - - - 0x03A739 1C:A729: 1E        .byte $1E
- - - - - - 0x03A73A 1C:A72A: 1E        .byte $1E
- - - - - - 0x03A73B 1C:A72B: 1C        .byte $1C
- - - - - - 0x03A73C 1C:A72C: 1E        .byte $1E
- - - - - - 0x03A73D 1C:A72D: 1C        .byte $1C
- - - - - - 0x03A73E 1C:A72E: 29        .byte $29
- - - - - - 0x03A73F 1C:A72F: 2F        .byte $2F
- - - - - - 0x03A740 1C:A730: 2A        .byte $2A
- - - - - - 0x03A741 1C:A731: 1E        .byte $1E
- - - - - - 0x03A742 1C:A732: 1E        .byte $1E
- - - - - - 0x03A743 1C:A733: 1C        .byte $1C
- D - I - - 0x03A744 1C:A734: 1E        .byte $1E
- - - - - - 0x03A745 1C:A735: 00        .byte $00
; 4F
- - - - - - 0x03A746 1C:A736: 00        .byte $00
- D - I - - 0x03A747 1C:A737: 1F        .byte $1F
- D - I - - 0x03A748 1C:A738: 29        .byte $29
- D - I - - 0x03A749 1C:A739: 31        .byte $31
- - - - - - 0x03A74A 1C:A73A: 1F        .byte $1F
- D - I - - 0x03A74B 1C:A73B: 1E        .byte $1E
- - - - - - 0x03A74C 1C:A73C: 19        .byte $19
- D - I - - 0x03A74D 1C:A73D: 28        .byte $28
- - - - - - 0x03A74E 1C:A73E: 23        .byte $23
- D - I - - 0x03A74F 1C:A73F: 30        .byte $30
- - - - - - 0x03A750 1C:A740: 2D        .byte $2D
- - - - - - 0x03A751 1C:A741: 24        .byte $24
- - - - - - 0x03A752 1C:A742: 22        .byte $22
- - - - - - 0x03A753 1C:A743: 26        .byte $26
- - - - - - 0x03A754 1C:A744: 14        .byte $14
- - - - - - 0x03A755 1C:A745: 28        .byte $28
- - - - - - 0x03A756 1C:A746: 23        .byte $23
- - - - - - 0x03A757 1C:A747: 30        .byte $30
- - - - - - 0x03A758 1C:A748: 2D        .byte $2D
- - - - - - 0x03A759 1C:A749: 24        .byte $24
- - - - - - 0x03A75A 1C:A74A: 22        .byte $22
- D - I - - 0x03A75B 1C:A74B: 26        .byte $26
- - - - - - 0x03A75C 1C:A74C: 14        .byte $14
- - - - - - 0x03A75D 1C:A74D: 00        .byte $00
; 50
- - - - - - 0x03A75E 1C:A74E: 00        .byte $00
- - - - - - 0x03A75F 1C:A74F: 19        .byte $19
- - - - - - 0x03A760 1C:A750: 25        .byte $25
- - - - - - 0x03A761 1C:A751: 2E        .byte $2E
- - - - - - 0x03A762 1C:A752: 12        .byte $12
- - - - - - 0x03A763 1C:A753: 19        .byte $19
- - - - - - 0x03A764 1C:A754: 19        .byte $19
- - - - - - 0x03A765 1C:A755: 20        .byte $20
- - - - - - 0x03A766 1C:A756: 1F        .byte $1F
- - - - - - 0x03A767 1C:A757: 2A        .byte $2A
- - - - - - 0x03A768 1C:A758: 25        .byte $25
- - - - - - 0x03A769 1C:A759: 16        .byte $16
- - - - - - 0x03A76A 1C:A75A: 15        .byte $15
- - - - - - 0x03A76B 1C:A75B: 18        .byte $18
- - - - - - 0x03A76C 1C:A75C: 15        .byte $15
- - - - - - 0x03A76D 1C:A75D: 20        .byte $20
- - - - - - 0x03A76E 1C:A75E: 1F        .byte $1F
- - - - - - 0x03A76F 1C:A75F: 2A        .byte $2A
- - - - - - 0x03A770 1C:A760: 25        .byte $25
- - - - - - 0x03A771 1C:A761: 16        .byte $16
- - - - - - 0x03A772 1C:A762: 15        .byte $15
- - - - - - 0x03A773 1C:A763: 18        .byte $18
- D - I - - 0x03A774 1C:A764: 15        .byte $15
- - - - - - 0x03A775 1C:A765: 00        .byte $00
; 51
- - - - - - 0x03A776 1C:A766: 00        .byte $00
- D - I - - 0x03A777 1C:A767: 16        .byte $16
- D - I - - 0x03A778 1C:A768: 27        .byte $27
- - - - - - 0x03A779 1C:A769: 35        .byte $35
- - - - - - 0x03A77A 1C:A76A: 11        .byte $11
- - - - - - 0x03A77B 1C:A76B: 18        .byte $18
- - - - - - 0x03A77C 1C:A76C: 18        .byte $18
- - - - - - 0x03A77D 1C:A76D: 1C        .byte $1C
- - - - - - 0x03A77E 1C:A76E: 21        .byte $21
- - - - - - 0x03A77F 1C:A76F: 2F        .byte $2F
- - - - - - 0x03A780 1C:A770: 29        .byte $29
- - - - - - 0x03A781 1C:A771: 16        .byte $16
- - - - - - 0x03A782 1C:A772: 18        .byte $18
- - - - - - 0x03A783 1C:A773: 15        .byte $15
- D - I - - 0x03A784 1C:A774: 14        .byte $14
- - - - - - 0x03A785 1C:A775: 1C        .byte $1C
- - - - - - 0x03A786 1C:A776: 21        .byte $21
- - - - - - 0x03A787 1C:A777: 2F        .byte $2F
- - - - - - 0x03A788 1C:A778: 29        .byte $29
- - - - - - 0x03A789 1C:A779: 16        .byte $16
- - - - - - 0x03A78A 1C:A77A: 18        .byte $18
- - - - - - 0x03A78B 1C:A77B: 15        .byte $15
- - - - - - 0x03A78C 1C:A77C: 14        .byte $14
- - - - - - 0x03A78D 1C:A77D: 00        .byte $00
; 52
- - - - - - 0x03A78E 1C:A77E: 00        .byte $00
- - - - - - 0x03A78F 1C:A77F: 1E        .byte $1E
- D - I - - 0x03A790 1C:A780: 39        .byte $39
- D - I - - 0x03A791 1C:A781: 41        .byte $41
- D - I - - 0x03A792 1C:A782: 1A        .byte $1A
- - - - - - 0x03A793 1C:A783: 27        .byte $27
- D - I - - 0x03A794 1C:A784: 27        .byte $27
- - - - - - 0x03A795 1C:A785: 25        .byte $25
- - - - - - 0x03A796 1C:A786: 33        .byte $33
- D - I - - 0x03A797 1C:A787: 34        .byte $34
- - - - - - 0x03A798 1C:A788: 35        .byte $35
- - - - - - 0x03A799 1C:A789: 20        .byte $20
- - - - - - 0x03A79A 1C:A78A: 1F        .byte $1F
- D - I - - 0x03A79B 1C:A78B: 23        .byte $23
- D - I - - 0x03A79C 1C:A78C: 22        .byte $22
- - - - - - 0x03A79D 1C:A78D: 25        .byte $25
- - - - - - 0x03A79E 1C:A78E: 33        .byte $33
- - - - - - 0x03A79F 1C:A78F: 34        .byte $34
- - - - - - 0x03A7A0 1C:A790: 35        .byte $35
- - - - - - 0x03A7A1 1C:A791: 20        .byte $20
- - - - - - 0x03A7A2 1C:A792: 1F        .byte $1F
- - - - - - 0x03A7A3 1C:A793: 23        .byte $23
- D - I - - 0x03A7A4 1C:A794: 22        .byte $22
- - - - - - 0x03A7A5 1C:A795: 00        .byte $00
; 53
- - - - - - 0x03A7A6 1C:A796: 00        .byte $00
- - - - - - 0x03A7A7 1C:A797: 1E        .byte $1E
- D - I - - 0x03A7A8 1C:A798: 39        .byte $39
- - - - - - 0x03A7A9 1C:A799: 41        .byte $41
- - - - - - 0x03A7AA 1C:A79A: 17        .byte $17
- D - I - - 0x03A7AB 1C:A79B: 2D        .byte $2D
- D - I - - 0x03A7AC 1C:A79C: 30        .byte $30
- D - I - - 0x03A7AD 1C:A79D: 25        .byte $25
- - - - - - 0x03A7AE 1C:A79E: 33        .byte $33
- - - - - - 0x03A7AF 1C:A79F: 34        .byte $34
- - - - - - 0x03A7B0 1C:A7A0: 37        .byte $37
- - - - - - 0x03A7B1 1C:A7A1: 28        .byte $28
- - - - - - 0x03A7B2 1C:A7A2: 26        .byte $26
- - - - - - 0x03A7B3 1C:A7A3: 1B        .byte $1B
- - - - - - 0x03A7B4 1C:A7A4: 2B        .byte $2B
- - - - - - 0x03A7B5 1C:A7A5: 25        .byte $25
- - - - - - 0x03A7B6 1C:A7A6: 33        .byte $33
- - - - - - 0x03A7B7 1C:A7A7: 34        .byte $34
- - - - - - 0x03A7B8 1C:A7A8: 37        .byte $37
- - - - - - 0x03A7B9 1C:A7A9: 28        .byte $28
- - - - - - 0x03A7BA 1C:A7AA: 26        .byte $26
- - - - - - 0x03A7BB 1C:A7AB: 1B        .byte $1B
- - - - - - 0x03A7BC 1C:A7AC: 2B        .byte $2B
- - - - - - 0x03A7BD 1C:A7AD: 00        .byte $00
; 54
- - - - - - 0x03A7BE 1C:A7AE: 00        .byte $00
- D - I - - 0x03A7BF 1C:A7AF: 15        .byte $15
- D - I - - 0x03A7C0 1C:A7B0: 26        .byte $26
- D - I - - 0x03A7C1 1C:A7B1: 30        .byte $30
- D - I - - 0x03A7C2 1C:A7B2: 07        .byte $07
- D - I - - 0x03A7C3 1C:A7B3: 0E        .byte $0E
- D - I - - 0x03A7C4 1C:A7B4: 0E        .byte $0E
- - - - - - 0x03A7C5 1C:A7B5: 18        .byte $18
- - - - - - 0x03A7C6 1C:A7B6: 20        .byte $20
- - - - - - 0x03A7C7 1C:A7B7: 2D        .byte $2D
- - - - - - 0x03A7C8 1C:A7B8: 27        .byte $27
- - - - - - 0x03A7C9 1C:A7B9: 16        .byte $16
- - - - - - 0x03A7CA 1C:A7BA: 15        .byte $15
- - - - - - 0x03A7CB 1C:A7BB: 18        .byte $18
- - - - - - 0x03A7CC 1C:A7BC: 14        .byte $14
- - - - - - 0x03A7CD 1C:A7BD: 18        .byte $18
- - - - - - 0x03A7CE 1C:A7BE: 20        .byte $20
- - - - - - 0x03A7CF 1C:A7BF: 2D        .byte $2D
- - - - - - 0x03A7D0 1C:A7C0: 27        .byte $27
- - - - - - 0x03A7D1 1C:A7C1: 16        .byte $16
- - - - - - 0x03A7D2 1C:A7C2: 15        .byte $15
- - - - - - 0x03A7D3 1C:A7C3: 18        .byte $18
- - - - - - 0x03A7D4 1C:A7C4: 14        .byte $14
- - - - - - 0x03A7D5 1C:A7C5: 00        .byte $00
; 55
- - - - - - 0x03A7D6 1C:A7C6: 00        .byte $00
- D - I - - 0x03A7D7 1C:A7C7: 17        .byte $17
- D - I - - 0x03A7D8 1C:A7C8: 25        .byte $25
- - - - - - 0x03A7D9 1C:A7C9: 2E        .byte $2E
- D - I - - 0x03A7DA 1C:A7CA: 19        .byte $19
- D - I - - 0x03A7DB 1C:A7CB: 13        .byte $13
- - - - - - 0x03A7DC 1C:A7CC: 15        .byte $15
- - - - - - 0x03A7DD 1C:A7CD: 1D        .byte $1D
- - - - - - 0x03A7DE 1C:A7CE: 1F        .byte $1F
- - - - - - 0x03A7DF 1C:A7CF: 2A        .byte $2A
- - - - - - 0x03A7E0 1C:A7D0: 24        .byte $24
- - - - - - 0x03A7E1 1C:A7D1: 1F        .byte $1F
- - - - - - 0x03A7E2 1C:A7D2: 1D        .byte $1D
- - - - - - 0x03A7E3 1C:A7D3: 22        .byte $22
- - - - - - 0x03A7E4 1C:A7D4: 14        .byte $14
- - - - - - 0x03A7E5 1C:A7D5: 1F        .byte $1F
- - - - - - 0x03A7E6 1C:A7D6: 1F        .byte $1F
- - - - - - 0x03A7E7 1C:A7D7: 2A        .byte $2A
- - - - - - 0x03A7E8 1C:A7D8: 26        .byte $26
- - - - - - 0x03A7E9 1C:A7D9: 21        .byte $21
- - - - - - 0x03A7EA 1C:A7DA: 20        .byte $20
- - - - - - 0x03A7EB 1C:A7DB: 25        .byte $25
- - - - - - 0x03A7EC 1C:A7DC: 14        .byte $14
- - - - - - 0x03A7ED 1C:A7DD: 00        .byte $00
; 56
- - - - - - 0x03A7EE 1C:A7DE: 00        .byte $00
- - - - - - 0x03A7EF 1C:A7DF: 13        .byte $13
- - - - - - 0x03A7F0 1C:A7E0: 24        .byte $24
- - - - - - 0x03A7F1 1C:A7E1: 29        .byte $29
- D - I - - 0x03A7F2 1C:A7E2: 19        .byte $19
- - - - - - 0x03A7F3 1C:A7E3: 1F        .byte $1F
- - - - - - 0x03A7F4 1C:A7E4: 19        .byte $19
- - - - - - 0x03A7F5 1C:A7E5: 19        .byte $19
- - - - - - 0x03A7F6 1C:A7E6: 1E        .byte $1E
- - - - - - 0x03A7F7 1C:A7E7: 28        .byte $28
- - - - - - 0x03A7F8 1C:A7E8: 20        .byte $20
- - - - - - 0x03A7F9 1C:A7E9: 1D        .byte $1D
- - - - - - 0x03A7FA 1C:A7EA: 1B        .byte $1B
- - - - - - 0x03A7FB 1C:A7EB: 1F        .byte $1F
- - - - - - 0x03A7FC 1C:A7EC: 16        .byte $16
- - - - - - 0x03A7FD 1C:A7ED: 19        .byte $19
- - - - - - 0x03A7FE 1C:A7EE: 1E        .byte $1E
- - - - - - 0x03A7FF 1C:A7EF: 28        .byte $28
- - - - - - 0x03A800 1C:A7F0: 20        .byte $20
- - - - - - 0x03A801 1C:A7F1: 1D        .byte $1D
- - - - - - 0x03A802 1C:A7F2: 1B        .byte $1B
- - - - - - 0x03A803 1C:A7F3: 1F        .byte $1F
- - - - - - 0x03A804 1C:A7F4: 16        .byte $16
- - - - - - 0x03A805 1C:A7F5: 00        .byte $00
; 57
- - - - - - 0x03A806 1C:A7F6: 00        .byte $00
- - - - - - 0x03A807 1C:A7F7: 17        .byte $17
- D - I - - 0x03A808 1C:A7F8: 26        .byte $26
- - - - - - 0x03A809 1C:A7F9: 2F        .byte $2F
- - - - - - 0x03A80A 1C:A7FA: 14        .byte $14
- D - I - - 0x03A80B 1C:A7FB: 1B        .byte $1B
- - - - - - 0x03A80C 1C:A7FC: 19        .byte $19
- - - - - - 0x03A80D 1C:A7FD: 1E        .byte $1E
- - - - - - 0x03A80E 1C:A7FE: 20        .byte $20
- - - - - - 0x03A80F 1C:A7FF: 2C        .byte $2C
- - - - - - 0x03A810 1C:A800: 25        .byte $25
- - - - - - 0x03A811 1C:A801: 1C        .byte $1C
- - - - - - 0x03A812 1C:A802: 1E        .byte $1E
- - - - - - 0x03A813 1C:A803: 20        .byte $20
- - - - - - 0x03A814 1C:A804: 14        .byte $14
- - - - - - 0x03A815 1C:A805: 1E        .byte $1E
- - - - - - 0x03A816 1C:A806: 20        .byte $20
- - - - - - 0x03A817 1C:A807: 2C        .byte $2C
- - - - - - 0x03A818 1C:A808: 25        .byte $25
- D - I - - 0x03A819 1C:A809: 1C        .byte $1C
- - - - - - 0x03A81A 1C:A80A: 1E        .byte $1E
- - - - - - 0x03A81B 1C:A80B: 20        .byte $20
- - - - - - 0x03A81C 1C:A80C: 14        .byte $14
- - - - - - 0x03A81D 1C:A80D: 00        .byte $00
; 58
- - - - - - 0x03A81E 1C:A80E: 00        .byte $00
- D - I - - 0x03A81F 1C:A80F: 15        .byte $15
- - - - - - 0x03A820 1C:A810: 2B        .byte $2B
- - - - - - 0x03A821 1C:A811: 38        .byte $38
- D - I - - 0x03A822 1C:A812: 1C        .byte $1C
- D - I - - 0x03A823 1C:A813: 26        .byte $26
- - - - - - 0x03A824 1C:A814: 25        .byte $25
- - - - - - 0x03A825 1C:A815: 21        .byte $21
- - - - - - 0x03A826 1C:A816: 25        .byte $25
- - - - - - 0x03A827 1C:A817: 32        .byte $32
- - - - - - 0x03A828 1C:A818: 2F        .byte $2F
- - - - - - 0x03A829 1C:A819: 21        .byte $21
- - - - - - 0x03A82A 1C:A81A: 1F        .byte $1F
- - - - - - 0x03A82B 1C:A81B: 23        .byte $23
- D - I - - 0x03A82C 1C:A81C: 21        .byte $21
- - - - - - 0x03A82D 1C:A81D: 21        .byte $21
- - - - - - 0x03A82E 1C:A81E: 25        .byte $25
- - - - - - 0x03A82F 1C:A81F: 33        .byte $33
- - - - - - 0x03A830 1C:A820: 2F        .byte $2F
- - - - - - 0x03A831 1C:A821: 21        .byte $21
- - - - - - 0x03A832 1C:A822: 1F        .byte $1F
- - - - - - 0x03A833 1C:A823: 23        .byte $23
- - - - - - 0x03A834 1C:A824: 21        .byte $21
- - - - - - 0x03A835 1C:A825: 00        .byte $00
; 59
- - - - - - 0x03A836 1C:A826: 00        .byte $00
- D - I - - 0x03A837 1C:A827: 3B        .byte $3B
- D - I - - 0x03A838 1C:A828: 32        .byte $32
- D - I - - 0x03A839 1C:A829: 37        .byte $37
- D - I - - 0x03A83A 1C:A82A: 1C        .byte $1C
- D - I - - 0x03A83B 1C:A82B: 1C        .byte $1C
- D - I - - 0x03A83C 1C:A82C: 24        .byte $24
- D - I - - 0x03A83D 1C:A82D: 3D        .byte $3D
- - - - - - 0x03A83E 1C:A82E: 29        .byte $29
- D - I - - 0x03A83F 1C:A82F: 32        .byte $32
- - - - - - 0x03A840 1C:A830: 2B        .byte $2B
- D - I - - 0x03A841 1C:A831: 24        .byte $24
- D - I - - 0x03A842 1C:A832: 23        .byte $23
- - - - - - 0x03A843 1C:A833: 24        .byte $24
- D - I - - 0x03A844 1C:A834: 24        .byte $24
- D - I - - 0x03A845 1C:A835: 3D        .byte $3D
- - - - - - 0x03A846 1C:A836: 29        .byte $29
- - - - - - 0x03A847 1C:A837: 32        .byte $32
- - - - - - 0x03A848 1C:A838: 2B        .byte $2B
- D - I - - 0x03A849 1C:A839: 24        .byte $24
- D - I - - 0x03A84A 1C:A83A: 23        .byte $23
- - - - - - 0x03A84B 1C:A83B: 24        .byte $24
- D - I - - 0x03A84C 1C:A83C: 24        .byte $24
- - - - - - 0x03A84D 1C:A83D: 00        .byte $00
; 5A
- - - - - - 0x03A84E 1C:A83E: 00        .byte $00
- D - I - - 0x03A84F 1C:A83F: 3D        .byte $3D
- D - I - - 0x03A850 1C:A840: 35        .byte $35
- - - - - - 0x03A851 1C:A841: 3A        .byte $3A
- - - - - - 0x03A852 1C:A842: 1C        .byte $1C
- D - I - - 0x03A853 1C:A843: 1C        .byte $1C
- D - I - - 0x03A854 1C:A844: 24        .byte $24
- D - I - - 0x03A855 1C:A845: 3F        .byte $3F
- D - I - - 0x03A856 1C:A846: 29        .byte $29
- - - - - - 0x03A857 1C:A847: 32        .byte $32
- - - - - - 0x03A858 1C:A848: 2B        .byte $2B
- - - - - - 0x03A859 1C:A849: 24        .byte $24
- - - - - - 0x03A85A 1C:A84A: 23        .byte $23
- D - I - - 0x03A85B 1C:A84B: 24        .byte $24
- - - - - - 0x03A85C 1C:A84C: 24        .byte $24
- D - I - - 0x03A85D 1C:A84D: 3F        .byte $3F
- - - - - - 0x03A85E 1C:A84E: 29        .byte $29
- - - - - - 0x03A85F 1C:A84F: 32        .byte $32
- - - - - - 0x03A860 1C:A850: 2B        .byte $2B
- - - - - - 0x03A861 1C:A851: 24        .byte $24
- - - - - - 0x03A862 1C:A852: 23        .byte $23
- - - - - - 0x03A863 1C:A853: 24        .byte $24
- D - I - - 0x03A864 1C:A854: 24        .byte $24
- - - - - - 0x03A865 1C:A855: 00        .byte $00
; 5B
- - - - - - 0x03A866 1C:A856: 00        .byte $00
- - - - - - 0x03A867 1C:A857: 3F        .byte $3F
- D - I - - 0x03A868 1C:A858: 34        .byte $34
- - - - - - 0x03A869 1C:A859: 39        .byte $39
- D - I - - 0x03A86A 1C:A85A: 1E        .byte $1E
- D - I - - 0x03A86B 1C:A85B: 1E        .byte $1E
- D - I - - 0x03A86C 1C:A85C: 26        .byte $26
- - - - - - 0x03A86D 1C:A85D: 41        .byte $41
- - - - - - 0x03A86E 1C:A85E: 2B        .byte $2B
- - - - - - 0x03A86F 1C:A85F: 34        .byte $34
- - - - - - 0x03A870 1C:A860: 2D        .byte $2D
- - - - - - 0x03A871 1C:A861: 26        .byte $26
- - - - - - 0x03A872 1C:A862: 25        .byte $25
- - - - - - 0x03A873 1C:A863: 26        .byte $26
- D - I - - 0x03A874 1C:A864: 26        .byte $26
- - - - - - 0x03A875 1C:A865: 41        .byte $41
- - - - - - 0x03A876 1C:A866: 2B        .byte $2B
- - - - - - 0x03A877 1C:A867: 34        .byte $34
- - - - - - 0x03A878 1C:A868: 2D        .byte $2D
- D - I - - 0x03A879 1C:A869: 26        .byte $26
- D - I - - 0x03A87A 1C:A86A: 25        .byte $25
- - - - - - 0x03A87B 1C:A86B: 26        .byte $26
- - - - - - 0x03A87C 1C:A86C: 26        .byte $26
- - - - - - 0x03A87D 1C:A86D: 00        .byte $00
; 5C
- - - - - - 0x03A87E 1C:A86E: 00        .byte $00
- - - - - - 0x03A87F 1C:A86F: 41        .byte $41
- D - I - - 0x03A880 1C:A870: 36        .byte $36
- D - I - - 0x03A881 1C:A871: 3B        .byte $3B
- D - I - - 0x03A882 1C:A872: 1E        .byte $1E
- D - I - - 0x03A883 1C:A873: 1E        .byte $1E
- D - I - - 0x03A884 1C:A874: 26        .byte $26
- - - - - - 0x03A885 1C:A875: 43        .byte $43
- - - - - - 0x03A886 1C:A876: 2B        .byte $2B
- - - - - - 0x03A887 1C:A877: 34        .byte $34
- - - - - - 0x03A888 1C:A878: 2D        .byte $2D
- - - - - - 0x03A889 1C:A879: 26        .byte $26
- - - - - - 0x03A88A 1C:A87A: 25        .byte $25
- - - - - - 0x03A88B 1C:A87B: 26        .byte $26
- D - I - - 0x03A88C 1C:A87C: 26        .byte $26
- - - - - - 0x03A88D 1C:A87D: 43        .byte $43
- - - - - - 0x03A88E 1C:A87E: 2B        .byte $2B
- - - - - - 0x03A88F 1C:A87F: 34        .byte $34
- - - - - - 0x03A890 1C:A880: 2D        .byte $2D
- - - - - - 0x03A891 1C:A881: 26        .byte $26
- - - - - - 0x03A892 1C:A882: 25        .byte $25
- - - - - - 0x03A893 1C:A883: 26        .byte $26
- - - - - - 0x03A894 1C:A884: 26        .byte $26
- - - - - - 0x03A895 1C:A885: 00        .byte $00
; 5D
- - - - - - 0x03A896 1C:A886: 00        .byte $00
- D - I - - 0x03A897 1C:A887: 43        .byte $43
- D - I - - 0x03A898 1C:A888: 3B        .byte $3B
- D - I - - 0x03A899 1C:A889: 3E        .byte $3E
- - - - - - 0x03A89A 1C:A88A: 22        .byte $22
- D - I - - 0x03A89B 1C:A88B: 22        .byte $22
- D - I - - 0x03A89C 1C:A88C: 2A        .byte $2A
- - - - - - 0x03A89D 1C:A88D: 45        .byte $45
- - - - - - 0x03A89E 1C:A88E: 2D        .byte $2D
- - - - - - 0x03A89F 1C:A88F: 36        .byte $36
- - - - - - 0x03A8A0 1C:A890: 2F        .byte $2F
- - - - - - 0x03A8A1 1C:A891: 28        .byte $28
- - - - - - 0x03A8A2 1C:A892: 27        .byte $27
- - - - - - 0x03A8A3 1C:A893: 28        .byte $28
- D - I - - 0x03A8A4 1C:A894: 28        .byte $28
- - - - - - 0x03A8A5 1C:A895: 41        .byte $41
- - - - - - 0x03A8A6 1C:A896: 2D        .byte $2D
- - - - - - 0x03A8A7 1C:A897: 36        .byte $36
- - - - - - 0x03A8A8 1C:A898: 2F        .byte $2F
- D - I - - 0x03A8A9 1C:A899: 28        .byte $28
- - - - - - 0x03A8AA 1C:A89A: 27        .byte $27
- - - - - - 0x03A8AB 1C:A89B: 28        .byte $28
- - - - - - 0x03A8AC 1C:A89C: 28        .byte $28
- - - - - - 0x03A8AD 1C:A89D: 00        .byte $00
; 5E
- - - - - - 0x03A8AE 1C:A89E: 00        .byte $00
- D - I - - 0x03A8AF 1C:A89F: 45        .byte $45
- D - I - - 0x03A8B0 1C:A8A0: 36        .byte $36
- - - - - - 0x03A8B1 1C:A8A1: 3D        .byte $3D
- D - I - - 0x03A8B2 1C:A8A2: 2A        .byte $2A
- D - I - - 0x03A8B3 1C:A8A3: 22        .byte $22
- D - I - - 0x03A8B4 1C:A8A4: 28        .byte $28
- - - - - - 0x03A8B5 1C:A8A5: 47        .byte $47
- - - - - - 0x03A8B6 1C:A8A6: 2D        .byte $2D
- D - I - - 0x03A8B7 1C:A8A7: 37        .byte $37
- - - - - - 0x03A8B8 1C:A8A8: 2F        .byte $2F
- - - - - - 0x03A8B9 1C:A8A9: 30        .byte $30
- - - - - - 0x03A8BA 1C:A8AA: 38        .byte $38
- - - - - - 0x03A8BB 1C:A8AB: 30        .byte $30
- - - - - - 0x03A8BC 1C:A8AC: 30        .byte $30
- - - - - - 0x03A8BD 1C:A8AD: 47        .byte $47
- D - I - - 0x03A8BE 1C:A8AE: 2D        .byte $2D
- - - - - - 0x03A8BF 1C:A8AF: 37        .byte $37
- - - - - - 0x03A8C0 1C:A8B0: 2F        .byte $2F
- - - - - - 0x03A8C1 1C:A8B1: 30        .byte $30
- - - - - - 0x03A8C2 1C:A8B2: 38        .byte $38
- - - - - - 0x03A8C3 1C:A8B3: 30        .byte $30
- - - - - - 0x03A8C4 1C:A8B4: 30        .byte $30
- - - - - - 0x03A8C5 1C:A8B5: 00        .byte $00
; 5F
- - - - - - 0x03A8C6 1C:A8B6: 00        .byte $00
- D - I - - 0x03A8C7 1C:A8B7: 47        .byte $47
- D - I - - 0x03A8C8 1C:A8B8: 38        .byte $38
- D - I - - 0x03A8C9 1C:A8B9: 3F        .byte $3F
- D - I - - 0x03A8CA 1C:A8BA: 2A        .byte $2A
- D - I - - 0x03A8CB 1C:A8BB: 22        .byte $22
- D - I - - 0x03A8CC 1C:A8BC: 28        .byte $28
- D - I - - 0x03A8CD 1C:A8BD: 49        .byte $49
- D - I - - 0x03A8CE 1C:A8BE: 2D        .byte $2D
- - - - - - 0x03A8CF 1C:A8BF: 37        .byte $37
- - - - - - 0x03A8D0 1C:A8C0: 2F        .byte $2F
- - - - - - 0x03A8D1 1C:A8C1: 30        .byte $30
- - - - - - 0x03A8D2 1C:A8C2: 38        .byte $38
- - - - - - 0x03A8D3 1C:A8C3: 30        .byte $30
- - - - - - 0x03A8D4 1C:A8C4: 30        .byte $30
- D - I - - 0x03A8D5 1C:A8C5: 49        .byte $49
- - - - - - 0x03A8D6 1C:A8C6: 2D        .byte $2D
- D - I - - 0x03A8D7 1C:A8C7: 37        .byte $37
- - - - - - 0x03A8D8 1C:A8C8: 2F        .byte $2F
- - - - - - 0x03A8D9 1C:A8C9: 30        .byte $30
- - - - - - 0x03A8DA 1C:A8CA: 38        .byte $38
- D - I - - 0x03A8DB 1C:A8CB: 30        .byte $30
- - - - - - 0x03A8DC 1C:A8CC: 30        .byte $30
- - - - - - 0x03A8DD 1C:A8CD: 00        .byte $00
; 60
- - - - - - 0x03A8DE 1C:A8CE: 00        .byte $00
- - - - - - 0x03A8DF 1C:A8CF: 47        .byte $47
- D - I - - 0x03A8E0 1C:A8D0: 38        .byte $38
- - - - - - 0x03A8E1 1C:A8D1: 3F        .byte $3F
- D - I - - 0x03A8E2 1C:A8D2: 22        .byte $22
- D - I - - 0x03A8E3 1C:A8D3: 22        .byte $22
- D - I - - 0x03A8E4 1C:A8D4: 2A        .byte $2A
- - - - - - 0x03A8E5 1C:A8D5: 4B        .byte $4B
- - - - - - 0x03A8E6 1C:A8D6: 33        .byte $33
- - - - - - 0x03A8E7 1C:A8D7: 3C        .byte $3C
- - - - - - 0x03A8E8 1C:A8D8: 35        .byte $35
- D - I - - 0x03A8E9 1C:A8D9: 2E        .byte $2E
- D - I - - 0x03A8EA 1C:A8DA: 2D        .byte $2D
- - - - - - 0x03A8EB 1C:A8DB: 2E        .byte $2E
- - - - - - 0x03A8EC 1C:A8DC: 2E        .byte $2E
- - - - - - 0x03A8ED 1C:A8DD: 49        .byte $49
- D - I - - 0x03A8EE 1C:A8DE: 2F        .byte $2F
- - - - - - 0x03A8EF 1C:A8DF: 38        .byte $38
- - - - - - 0x03A8F0 1C:A8E0: 31        .byte $31
- - - - - - 0x03A8F1 1C:A8E1: 2A        .byte $2A
- D - I - - 0x03A8F2 1C:A8E2: 29        .byte $29
- - - - - - 0x03A8F3 1C:A8E3: 2A        .byte $2A
- D - I - - 0x03A8F4 1C:A8E4: 2A        .byte $2A
- - - - - - 0x03A8F5 1C:A8E5: 00        .byte $00
; 61
- - - - - - 0x03A8F6 1C:A8E6: 00        .byte $00
- D - I - - 0x03A8F7 1C:A8E7: 49        .byte $49
- D - I - - 0x03A8F8 1C:A8E8: 3A        .byte $3A
- D - I - - 0x03A8F9 1C:A8E9: 41        .byte $41
- D - I - - 0x03A8FA 1C:A8EA: 22        .byte $22
- D - I - - 0x03A8FB 1C:A8EB: 22        .byte $22
- D - I - - 0x03A8FC 1C:A8EC: 2A        .byte $2A
- D - I - - 0x03A8FD 1C:A8ED: 4D        .byte $4D
- - - - - - 0x03A8FE 1C:A8EE: 33        .byte $33
- D - I - - 0x03A8FF 1C:A8EF: 3C        .byte $3C
- - - - - - 0x03A900 1C:A8F0: 35        .byte $35
- - - - - - 0x03A901 1C:A8F1: 2E        .byte $2E
- - - - - - 0x03A902 1C:A8F2: 2D        .byte $2D
- - - - - - 0x03A903 1C:A8F3: 2E        .byte $2E
- D - I - - 0x03A904 1C:A8F4: 2E        .byte $2E
- D - I - - 0x03A905 1C:A8F5: 4B        .byte $4B
- D - I - - 0x03A906 1C:A8F6: 2F        .byte $2F
- D - I - - 0x03A907 1C:A8F7: 38        .byte $38
- - - - - - 0x03A908 1C:A8F8: 31        .byte $31
- - - - - - 0x03A909 1C:A8F9: 2A        .byte $2A
- - - - - - 0x03A90A 1C:A8FA: 29        .byte $29
- - - - - - 0x03A90B 1C:A8FB: 2A        .byte $2A
- D - I - - 0x03A90C 1C:A8FC: 2A        .byte $2A
- - - - - - 0x03A90D 1C:A8FD: 00        .byte $00
; 62
- - - - - - 0x03A90E 1C:A8FE: 00        .byte $00
- - - - - - 0x03A90F 1C:A8FF: 48        .byte $48
- - - - - - 0x03A910 1C:A900: 3A        .byte $3A
- - - - - - 0x03A911 1C:A901: 41        .byte $41
- D - I - - 0x03A912 1C:A902: 24        .byte $24
- D - I - - 0x03A913 1C:A903: 24        .byte $24
- D - I - - 0x03A914 1C:A904: 2C        .byte $2C
- - - - - - 0x03A915 1C:A905: 4A        .byte $4A
- D - I - - 0x03A916 1C:A906: 31        .byte $31
- - - - - - 0x03A917 1C:A907: 3A        .byte $3A
- - - - - - 0x03A918 1C:A908: 33        .byte $33
- - - - - - 0x03A919 1C:A909: 2C        .byte $2C
- - - - - - 0x03A91A 1C:A90A: 2B        .byte $2B
- - - - - - 0x03A91B 1C:A90B: 2C        .byte $2C
- - - - - - 0x03A91C 1C:A90C: 2C        .byte $2C
- - - - - - 0x03A91D 1C:A90D: 4C        .byte $4C
- D - I - - 0x03A91E 1C:A90E: 33        .byte $33
- - - - - - 0x03A91F 1C:A90F: 3C        .byte $3C
- - - - - - 0x03A920 1C:A910: 35        .byte $35
- - - - - - 0x03A921 1C:A911: 2E        .byte $2E
- - - - - - 0x03A922 1C:A912: 2D        .byte $2D
- - - - - - 0x03A923 1C:A913: 2E        .byte $2E
- D - I - - 0x03A924 1C:A914: 2E        .byte $2E
- - - - - - 0x03A925 1C:A915: 00        .byte $00
; 63
- - - - - - 0x03A926 1C:A916: 00        .byte $00
- D - I - - 0x03A927 1C:A917: 4A        .byte $4A
- D - I - - 0x03A928 1C:A918: 3C        .byte $3C
- D - I - - 0x03A929 1C:A919: 43        .byte $43
- D - I - - 0x03A92A 1C:A91A: 24        .byte $24
- D - I - - 0x03A92B 1C:A91B: 24        .byte $24
- D - I - - 0x03A92C 1C:A91C: 2C        .byte $2C
- D - I - - 0x03A92D 1C:A91D: 4C        .byte $4C
- D - I - - 0x03A92E 1C:A91E: 31        .byte $31
- - - - - - 0x03A92F 1C:A91F: 3A        .byte $3A
- - - - - - 0x03A930 1C:A920: 33        .byte $33
- - - - - - 0x03A931 1C:A921: 2C        .byte $2C
- - - - - - 0x03A932 1C:A922: 2B        .byte $2B
- D - I - - 0x03A933 1C:A923: 2C        .byte $2C
- D - I - - 0x03A934 1C:A924: 2C        .byte $2C
- D - I - - 0x03A935 1C:A925: 4E        .byte $4E
- - - - - - 0x03A936 1C:A926: 33        .byte $33
- - - - - - 0x03A937 1C:A927: 3C        .byte $3C
- - - - - - 0x03A938 1C:A928: 35        .byte $35
- - - - - - 0x03A939 1C:A929: 2E        .byte $2E
- - - - - - 0x03A93A 1C:A92A: 2D        .byte $2D
- - - - - - 0x03A93B 1C:A92B: 2E        .byte $2E
- - - - - - 0x03A93C 1C:A92C: 2E        .byte $2E
- - - - - - 0x03A93D 1C:A92D: 00        .byte $00
; 64
- - - - - - 0x03A93E 1C:A92E: 00        .byte $00
- - - - - - 0x03A93F 1C:A92F: 43        .byte $43
- D - I - - 0x03A940 1C:A930: 41        .byte $41
- - - - - - 0x03A941 1C:A931: 44        .byte $44
- D - I - - 0x03A942 1C:A932: 24        .byte $24
- D - I - - 0x03A943 1C:A933: 1E        .byte $1E
- D - I - - 0x03A944 1C:A934: 2C        .byte $2C
- - - - - - 0x03A945 1C:A935: 45        .byte $45
- - - - - - 0x03A946 1C:A936: 31        .byte $31
- - - - - - 0x03A947 1C:A937: 3A        .byte $3A
- - - - - - 0x03A948 1C:A938: 33        .byte $33
- D - I - - 0x03A949 1C:A939: 2C        .byte $2C
- D - I - - 0x03A94A 1C:A93A: 2B        .byte $2B
- - - - - - 0x03A94B 1C:A93B: 2C        .byte $2C
- - - - - - 0x03A94C 1C:A93C: 2C        .byte $2C
- - - - - - 0x03A94D 1C:A93D: 45        .byte $45
- - - - - - 0x03A94E 1C:A93E: 31        .byte $31
- - - - - - 0x03A94F 1C:A93F: 3A        .byte $3A
- D - I - - 0x03A950 1C:A940: 33        .byte $33
- - - - - - 0x03A951 1C:A941: 2C        .byte $2C
- - - - - - 0x03A952 1C:A942: 2B        .byte $2B
- - - - - - 0x03A953 1C:A943: 2C        .byte $2C
- - - - - - 0x03A954 1C:A944: 2C        .byte $2C
- - - - - - 0x03A955 1C:A945: 00        .byte $00
; 65
- - - - - - 0x03A956 1C:A946: 00        .byte $00
- - - - - - 0x03A957 1C:A947: 45        .byte $45
- D - I - - 0x03A958 1C:A948: 43        .byte $43
- - - - - - 0x03A959 1C:A949: 46        .byte $46
- D - I - - 0x03A95A 1C:A94A: 24        .byte $24
- D - I - - 0x03A95B 1C:A94B: 1E        .byte $1E
- D - I - - 0x03A95C 1C:A94C: 2C        .byte $2C
- - - - - - 0x03A95D 1C:A94D: 47        .byte $47
- - - - - - 0x03A95E 1C:A94E: 31        .byte $31
- - - - - - 0x03A95F 1C:A94F: 3A        .byte $3A
- - - - - - 0x03A960 1C:A950: 33        .byte $33
- - - - - - 0x03A961 1C:A951: 2C        .byte $2C
- - - - - - 0x03A962 1C:A952: 2B        .byte $2B
- - - - - - 0x03A963 1C:A953: 2C        .byte $2C
- - - - - - 0x03A964 1C:A954: 2C        .byte $2C
- D - I - - 0x03A965 1C:A955: 47        .byte $47
- - - - - - 0x03A966 1C:A956: 31        .byte $31
- - - - - - 0x03A967 1C:A957: 3A        .byte $3A
- - - - - - 0x03A968 1C:A958: 33        .byte $33
- - - - - - 0x03A969 1C:A959: 2C        .byte $2C
- - - - - - 0x03A96A 1C:A95A: 2B        .byte $2B
- - - - - - 0x03A96B 1C:A95B: 2C        .byte $2C
- - - - - - 0x03A96C 1C:A95C: 2C        .byte $2C
- - - - - - 0x03A96D 1C:A95D: 00        .byte $00
; 66
- - - - - - 0x03A96E 1C:A95E: 00        .byte $00
- D - I - - 0x03A96F 1C:A95F: 47        .byte $47
- D - I - - 0x03A970 1C:A960: 45        .byte $45
- - - - - - 0x03A971 1C:A961: 46        .byte $46
- - - - - - 0x03A972 1C:A962: 24        .byte $24
- D - I - - 0x03A973 1C:A963: 23        .byte $23
- - - - - - 0x03A974 1C:A964: 2C        .byte $2C
- - - - - - 0x03A975 1C:A965: 3C        .byte $3C
- - - - - - 0x03A976 1C:A966: 31        .byte $31
- - - - - - 0x03A977 1C:A967: 3A        .byte $3A
- - - - - - 0x03A978 1C:A968: 33        .byte $33
- - - - - - 0x03A979 1C:A969: 2C        .byte $2C
- - - - - - 0x03A97A 1C:A96A: 2B        .byte $2B
- - - - - - 0x03A97B 1C:A96B: 2C        .byte $2C
- - - - - - 0x03A97C 1C:A96C: 2C        .byte $2C
- D - I - - 0x03A97D 1C:A96D: 48        .byte $48
- - - - - - 0x03A97E 1C:A96E: 31        .byte $31
- - - - - - 0x03A97F 1C:A96F: 3A        .byte $3A
- - - - - - 0x03A980 1C:A970: 33        .byte $33
- - - - - - 0x03A981 1C:A971: 2C        .byte $2C
- - - - - - 0x03A982 1C:A972: 2B        .byte $2B
- - - - - - 0x03A983 1C:A973: 2C        .byte $2C
- - - - - - 0x03A984 1C:A974: 2C        .byte $2C
- - - - - - 0x03A985 1C:A975: 00        .byte $00
; 67
- - - - - - 0x03A986 1C:A976: 00        .byte $00
- D - I - - 0x03A987 1C:A977: 47        .byte $47
- D - I - - 0x03A988 1C:A978: 45        .byte $45
- D - I - - 0x03A989 1C:A979: 4A        .byte $4A
- - - - - - 0x03A98A 1C:A97A: 24        .byte $24
- D - I - - 0x03A98B 1C:A97B: 23        .byte $23
- - - - - - 0x03A98C 1C:A97C: 2C        .byte $2C
- - - - - - 0x03A98D 1C:A97D: 3C        .byte $3C
- - - - - - 0x03A98E 1C:A97E: 31        .byte $31
- - - - - - 0x03A98F 1C:A97F: 3A        .byte $3A
- - - - - - 0x03A990 1C:A980: 33        .byte $33
- - - - - - 0x03A991 1C:A981: 2C        .byte $2C
- - - - - - 0x03A992 1C:A982: 2B        .byte $2B
- - - - - - 0x03A993 1C:A983: 2C        .byte $2C
- - - - - - 0x03A994 1C:A984: 2C        .byte $2C
- D - I - - 0x03A995 1C:A985: 48        .byte $48
- - - - - - 0x03A996 1C:A986: 31        .byte $31
- - - - - - 0x03A997 1C:A987: 3A        .byte $3A
- - - - - - 0x03A998 1C:A988: 33        .byte $33
- - - - - - 0x03A999 1C:A989: 2C        .byte $2C
- - - - - - 0x03A99A 1C:A98A: 2B        .byte $2B
- - - - - - 0x03A99B 1C:A98B: 2C        .byte $2C
- - - - - - 0x03A99C 1C:A98C: 2C        .byte $2C
- - - - - - 0x03A99D 1C:A98D: 00        .byte $00
; 68
- - - - - - 0x03A99E 1C:A98E: 00        .byte $00
- D - I - - 0x03A99F 1C:A98F: 3E        .byte $3E
- D - I - - 0x03A9A0 1C:A990: 32        .byte $32
- D - I - - 0x03A9A1 1C:A991: 37        .byte $37
- D - I - - 0x03A9A2 1C:A992: 1C        .byte $1C
- D - I - - 0x03A9A3 1C:A993: 1C        .byte $1C
- D - I - - 0x03A9A4 1C:A994: 24        .byte $24
- D - I - - 0x03A9A5 1C:A995: 40        .byte $40
- D - I - - 0x03A9A6 1C:A996: 29        .byte $29
- D - I - - 0x03A9A7 1C:A997: 32        .byte $32
- D - I - - 0x03A9A8 1C:A998: 2B        .byte $2B
- - - - - - 0x03A9A9 1C:A999: 24        .byte $24
- D - I - - 0x03A9AA 1C:A99A: 23        .byte $23
- D - I - - 0x03A9AB 1C:A99B: 24        .byte $24
- - - - - - 0x03A9AC 1C:A99C: 24        .byte $24
- D - I - - 0x03A9AD 1C:A99D: 40        .byte $40
- - - - - - 0x03A9AE 1C:A99E: 29        .byte $29
- - - - - - 0x03A9AF 1C:A99F: 32        .byte $32
- D - I - - 0x03A9B0 1C:A9A0: 2B        .byte $2B
- - - - - - 0x03A9B1 1C:A9A1: 24        .byte $24
- - - - - - 0x03A9B2 1C:A9A2: 23        .byte $23
- - - - - - 0x03A9B3 1C:A9A3: 24        .byte $24
- D - I - - 0x03A9B4 1C:A9A4: 24        .byte $24
- - - - - - 0x03A9B5 1C:A9A5: 00        .byte $00
; 69
- - - - - - 0x03A9B6 1C:A9A6: 00        .byte $00
- - - - - - 0x03A9B7 1C:A9A7: 3C        .byte $3C
- D - I - - 0x03A9B8 1C:A9A8: 41        .byte $41
- - - - - - 0x03A9B9 1C:A9A9: 41        .byte $41
- D - I - - 0x03A9BA 1C:A9AA: 26        .byte $26
- D - I - - 0x03A9BB 1C:A9AB: 20        .byte $20
- D - I - - 0x03A9BC 1C:A9AC: 2E        .byte $2E
- - - - - - 0x03A9BD 1C:A9AD: 3E        .byte $3E
- - - - - - 0x03A9BE 1C:A9AE: 33        .byte $33
- - - - - - 0x03A9BF 1C:A9AF: 3C        .byte $3C
- - - - - - 0x03A9C0 1C:A9B0: 35        .byte $35
- D - I - - 0x03A9C1 1C:A9B1: 2E        .byte $2E
- - - - - - 0x03A9C2 1C:A9B2: 2D        .byte $2D
- - - - - - 0x03A9C3 1C:A9B3: 32        .byte $32
- D - I - - 0x03A9C4 1C:A9B4: 2E        .byte $2E
- - - - - - 0x03A9C5 1C:A9B5: 3E        .byte $3E
- - - - - - 0x03A9C6 1C:A9B6: 33        .byte $33
- D - I - - 0x03A9C7 1C:A9B7: 3C        .byte $3C
- - - - - - 0x03A9C8 1C:A9B8: 35        .byte $35
- D - I - - 0x03A9C9 1C:A9B9: 2E        .byte $2E
- - - - - - 0x03A9CA 1C:A9BA: 2D        .byte $2D
- - - - - - 0x03A9CB 1C:A9BB: 32        .byte $32
- - - - - - 0x03A9CC 1C:A9BC: 2E        .byte $2E
- - - - - - 0x03A9CD 1C:A9BD: 00        .byte $00
; 6A
- - - - - - 0x03A9CE 1C:A9BE: 00        .byte $00
- D - I - - 0x03A9CF 1C:A9BF: 3E        .byte $3E
- D - I - - 0x03A9D0 1C:A9C0: 43        .byte $43
- - - - - - 0x03A9D1 1C:A9C1: 43        .byte $43
- D - I - - 0x03A9D2 1C:A9C2: 26        .byte $26
- D - I - - 0x03A9D3 1C:A9C3: 20        .byte $20
- D - I - - 0x03A9D4 1C:A9C4: 2E        .byte $2E
- D - I - - 0x03A9D5 1C:A9C5: 40        .byte $40
- D - I - - 0x03A9D6 1C:A9C6: 33        .byte $33
- - - - - - 0x03A9D7 1C:A9C7: 3C        .byte $3C
- - - - - - 0x03A9D8 1C:A9C8: 35        .byte $35
- D - I - - 0x03A9D9 1C:A9C9: 2E        .byte $2E
- - - - - - 0x03A9DA 1C:A9CA: 2D        .byte $2D
- - - - - - 0x03A9DB 1C:A9CB: 32        .byte $32
- D - I - - 0x03A9DC 1C:A9CC: 2E        .byte $2E
- - - - - - 0x03A9DD 1C:A9CD: 40        .byte $40
- D - I - - 0x03A9DE 1C:A9CE: 33        .byte $33
- D - I - - 0x03A9DF 1C:A9CF: 3C        .byte $3C
- - - - - - 0x03A9E0 1C:A9D0: 35        .byte $35
- - - - - - 0x03A9E1 1C:A9D1: 2E        .byte $2E
- D - I - - 0x03A9E2 1C:A9D2: 2D        .byte $2D
- - - - - - 0x03A9E3 1C:A9D3: 32        .byte $32
- D - I - - 0x03A9E4 1C:A9D4: 2E        .byte $2E
- - - - - - 0x03A9E5 1C:A9D5: 00        .byte $00
; 6B
- - - - - - 0x03A9E6 1C:A9D6: 00        .byte $00
- D - I - - 0x03A9E7 1C:A9D7: 54        .byte $54
- D - I - - 0x03A9E8 1C:A9D8: 46        .byte $46
- D - I - - 0x03A9E9 1C:A9D9: 46        .byte $46
- - - - - - 0x03A9EA 1C:A9DA: 28        .byte $28
- D - I - - 0x03A9EB 1C:A9DB: 23        .byte $23
- D - I - - 0x03A9EC 1C:A9DC: 31        .byte $31
- - - - - - 0x03A9ED 1C:A9DD: 56        .byte $56
- - - - - - 0x03A9EE 1C:A9DE: 33        .byte $33
- - - - - - 0x03A9EF 1C:A9DF: 3C        .byte $3C
- - - - - - 0x03A9F0 1C:A9E0: 35        .byte $35
- - - - - - 0x03A9F1 1C:A9E1: 2E        .byte $2E
- - - - - - 0x03A9F2 1C:A9E2: 2D        .byte $2D
- - - - - - 0x03A9F3 1C:A9E3: 36        .byte $36
- D - I - - 0x03A9F4 1C:A9E4: 2E        .byte $2E
- D - I - - 0x03A9F5 1C:A9E5: 56        .byte $56
- - - - - - 0x03A9F6 1C:A9E6: 33        .byte $33
- D - I - - 0x03A9F7 1C:A9E7: 3C        .byte $3C
- - - - - - 0x03A9F8 1C:A9E8: 35        .byte $35
- - - - - - 0x03A9F9 1C:A9E9: 2E        .byte $2E
- - - - - - 0x03A9FA 1C:A9EA: 2D        .byte $2D
- - - - - - 0x03A9FB 1C:A9EB: 36        .byte $36
- D - I - - 0x03A9FC 1C:A9EC: 2E        .byte $2E
- - - - - - 0x03A9FD 1C:A9ED: 00        .byte $00
; 6C
- - - - - - 0x03A9FE 1C:A9EE: 00        .byte $00
- - - - - - 0x03A9FF 1C:A9EF: 40        .byte $40
- D - I - - 0x03AA00 1C:A9F0: 4A        .byte $4A
- - - - - - 0x03AA01 1C:A9F1: 44        .byte $44
- D - I - - 0x03AA02 1C:A9F2: 28        .byte $28
- D - I - - 0x03AA03 1C:A9F3: 22        .byte $22
- D - I - - 0x03AA04 1C:A9F4: 30        .byte $30
- - - - - - 0x03AA05 1C:A9F5: 42        .byte $42
- - - - - - 0x03AA06 1C:A9F6: 35        .byte $35
- D - I - - 0x03AA07 1C:A9F7: 3E        .byte $3E
- - - - - - 0x03AA08 1C:A9F8: 37        .byte $37
- - - - - - 0x03AA09 1C:A9F9: 30        .byte $30
- D - I - - 0x03AA0A 1C:A9FA: 2F        .byte $2F
- - - - - - 0x03AA0B 1C:A9FB: 34        .byte $34
- D - I - - 0x03AA0C 1C:A9FC: 30        .byte $30
- - - - - - 0x03AA0D 1C:A9FD: 46        .byte $46
- D - I - - 0x03AA0E 1C:A9FE: 37        .byte $37
- - - - - - 0x03AA0F 1C:A9FF: 40        .byte $40
- - - - - - 0x03AA10 1C:AA00: 39        .byte $39
- - - - - - 0x03AA11 1C:AA01: 32        .byte $32
- D - I - - 0x03AA12 1C:AA02: 31        .byte $31
- - - - - - 0x03AA13 1C:AA03: 36        .byte $36
- - - - - - 0x03AA14 1C:AA04: 32        .byte $32
- - - - - - 0x03AA15 1C:AA05: 00        .byte $00
; 6D
- - - - - - 0x03AA16 1C:AA06: 00        .byte $00
- D - I - - 0x03AA17 1C:AA07: 42        .byte $42
- D - I - - 0x03AA18 1C:AA08: 4C        .byte $4C
- D - I - - 0x03AA19 1C:AA09: 46        .byte $46
- D - I - - 0x03AA1A 1C:AA0A: 28        .byte $28
- D - I - - 0x03AA1B 1C:AA0B: 22        .byte $22
- D - I - - 0x03AA1C 1C:AA0C: 30        .byte $30
- - - - - - 0x03AA1D 1C:AA0D: 44        .byte $44
- - - - - - 0x03AA1E 1C:AA0E: 35        .byte $35
- D - I - - 0x03AA1F 1C:AA0F: 3E        .byte $3E
- - - - - - 0x03AA20 1C:AA10: 37        .byte $37
- - - - - - 0x03AA21 1C:AA11: 30        .byte $30
- - - - - - 0x03AA22 1C:AA12: 2F        .byte $2F
- - - - - - 0x03AA23 1C:AA13: 34        .byte $34
- D - I - - 0x03AA24 1C:AA14: 30        .byte $30
- D - I - - 0x03AA25 1C:AA15: 48        .byte $48
- - - - - - 0x03AA26 1C:AA16: 37        .byte $37
- D - I - - 0x03AA27 1C:AA17: 40        .byte $40
- D - I - - 0x03AA28 1C:AA18: 39        .byte $39
- - - - - - 0x03AA29 1C:AA19: 32        .byte $32
- - - - - - 0x03AA2A 1C:AA1A: 31        .byte $31
- - - - - - 0x03AA2B 1C:AA1B: 36        .byte $36
- D - I - - 0x03AA2C 1C:AA1C: 32        .byte $32
- - - - - - 0x03AA2D 1C:AA1D: 00        .byte $00
; 6E
- - - - - - 0x03AA2E 1C:AA1E: 00        .byte $00
- D - I - - 0x03AA2F 1C:AA1F: 59        .byte $59
- D - I - - 0x03AA30 1C:AA20: 4C        .byte $4C
- D - I - - 0x03AA31 1C:AA21: 48        .byte $48
- D - I - - 0x03AA32 1C:AA22: 28        .byte $28
- D - I - - 0x03AA33 1C:AA23: 22        .byte $22
- D - I - - 0x03AA34 1C:AA24: 30        .byte $30
- D - I - - 0x03AA35 1C:AA25: 5B        .byte $5B
- - - - - - 0x03AA36 1C:AA26: 35        .byte $35
- - - - - - 0x03AA37 1C:AA27: 3E        .byte $3E
- - - - - - 0x03AA38 1C:AA28: 37        .byte $37
- - - - - - 0x03AA39 1C:AA29: 30        .byte $30
- - - - - - 0x03AA3A 1C:AA2A: 2F        .byte $2F
- - - - - - 0x03AA3B 1C:AA2B: 34        .byte $34
- D - I - - 0x03AA3C 1C:AA2C: 30        .byte $30
- D - I - - 0x03AA3D 1C:AA2D: 5E        .byte $5E
- - - - - - 0x03AA3E 1C:AA2E: 37        .byte $37
- - - - - - 0x03AA3F 1C:AA2F: 42        .byte $42
- - - - - - 0x03AA40 1C:AA30: 39        .byte $39
- - - - - - 0x03AA41 1C:AA31: 32        .byte $32
- - - - - - 0x03AA42 1C:AA32: 31        .byte $31
- - - - - - 0x03AA43 1C:AA33: 36        .byte $36
- D - I - - 0x03AA44 1C:AA34: 32        .byte $32
- - - - - - 0x03AA45 1C:AA35: 00        .byte $00
; 6F
- - - - - - 0x03AA46 1C:AA36: 00        .byte $00
- D - I - - 0x03AA47 1C:AA37: 57        .byte $57
- D - I - - 0x03AA48 1C:AA38: 4C        .byte $4C
- D - I - - 0x03AA49 1C:AA39: 46        .byte $46
- D - I - - 0x03AA4A 1C:AA3A: 41        .byte $41
- D - I - - 0x03AA4B 1C:AA3B: 22        .byte $22
- D - I - - 0x03AA4C 1C:AA3C: 30        .byte $30
- - - - - - 0x03AA4D 1C:AA3D: 59        .byte $59
- - - - - - 0x03AA4E 1C:AA3E: 35        .byte $35
- - - - - - 0x03AA4F 1C:AA3F: 3E        .byte $3E
- - - - - - 0x03AA50 1C:AA40: 37        .byte $37
- - - - - - 0x03AA51 1C:AA41: 30        .byte $30
- - - - - - 0x03AA52 1C:AA42: 3B        .byte $3B
- - - - - - 0x03AA53 1C:AA43: 34        .byte $34
- - - - - - 0x03AA54 1C:AA44: 30        .byte $30
- - - - - - 0x03AA55 1C:AA45: 5C        .byte $5C
- - - - - - 0x03AA56 1C:AA46: 37        .byte $37
- - - - - - 0x03AA57 1C:AA47: 40        .byte $40
- - - - - - 0x03AA58 1C:AA48: 39        .byte $39
- - - - - - 0x03AA59 1C:AA49: 32        .byte $32
- - - - - - 0x03AA5A 1C:AA4A: 3D        .byte $3D
- - - - - - 0x03AA5B 1C:AA4B: 36        .byte $36
- - - - - - 0x03AA5C 1C:AA4C: 32        .byte $32
- - - - - - 0x03AA5D 1C:AA4D: 00        .byte $00
; 70
- - - - - - 0x03AA5E 1C:AA4E: 00        .byte $00
- - - - - - 0x03AA5F 1C:AA4F: 46        .byte $46
- D - I - - 0x03AA60 1C:AA50: 4E        .byte $4E
- - - - - - 0x03AA61 1C:AA51: 4A        .byte $4A
- D - I - - 0x03AA62 1C:AA52: 2C        .byte $2C
- D - I - - 0x03AA63 1C:AA53: 26        .byte $26
- D - I - - 0x03AA64 1C:AA54: 34        .byte $34
- - - - - - 0x03AA65 1C:AA55: 48        .byte $48
- - - - - - 0x03AA66 1C:AA56: 39        .byte $39
- - - - - - 0x03AA67 1C:AA57: 42        .byte $42
- - - - - - 0x03AA68 1C:AA58: 3B        .byte $3B
- D - I - - 0x03AA69 1C:AA59: 34        .byte $34
- - - - - - 0x03AA6A 1C:AA5A: 33        .byte $33
- - - - - - 0x03AA6B 1C:AA5B: 38        .byte $38
- - - - - - 0x03AA6C 1C:AA5C: 34        .byte $34
- - - - - - 0x03AA6D 1C:AA5D: 48        .byte $48
- - - - - - 0x03AA6E 1C:AA5E: 39        .byte $39
- - - - - - 0x03AA6F 1C:AA5F: 42        .byte $42
- - - - - - 0x03AA70 1C:AA60: 3B        .byte $3B
- D - I - - 0x03AA71 1C:AA61: 34        .byte $34
- - - - - - 0x03AA72 1C:AA62: 33        .byte $33
- - - - - - 0x03AA73 1C:AA63: 38        .byte $38
- D - I - - 0x03AA74 1C:AA64: 34        .byte $34
- - - - - - 0x03AA75 1C:AA65: 00        .byte $00
; 71
- - - - - - 0x03AA76 1C:AA66: 00        .byte $00
- D - I - - 0x03AA77 1C:AA67: 4A        .byte $4A
- D - I - - 0x03AA78 1C:AA68: 52        .byte $52
- D - I - - 0x03AA79 1C:AA69: 4E        .byte $4E
- D - I - - 0x03AA7A 1C:AA6A: 2C        .byte $2C
- D - I - - 0x03AA7B 1C:AA6B: 26        .byte $26
- D - I - - 0x03AA7C 1C:AA6C: 34        .byte $34
- - - - - - 0x03AA7D 1C:AA6D: 4C        .byte $4C
- - - - - - 0x03AA7E 1C:AA6E: 39        .byte $39
- D - I - - 0x03AA7F 1C:AA6F: 42        .byte $42
- - - - - - 0x03AA80 1C:AA70: 3B        .byte $3B
- D - I - - 0x03AA81 1C:AA71: 34        .byte $34
- D - I - - 0x03AA82 1C:AA72: 33        .byte $33
- - - - - - 0x03AA83 1C:AA73: 38        .byte $38
- D - I - - 0x03AA84 1C:AA74: 34        .byte $34
- - - - - - 0x03AA85 1C:AA75: 4C        .byte $4C
- D - I - - 0x03AA86 1C:AA76: 39        .byte $39
- D - I - - 0x03AA87 1C:AA77: 42        .byte $42
- - - - - - 0x03AA88 1C:AA78: 3B        .byte $3B
- D - I - - 0x03AA89 1C:AA79: 34        .byte $34
- - - - - - 0x03AA8A 1C:AA7A: 33        .byte $33
- - - - - - 0x03AA8B 1C:AA7B: 38        .byte $38
- - - - - - 0x03AA8C 1C:AA7C: 34        .byte $34
- - - - - - 0x03AA8D 1C:AA7D: 00        .byte $00
; 72
- - - - - - 0x03AA8E 1C:AA7E: 00        .byte $00
- D - I - - 0x03AA8F 1C:AA7F: 56        .byte $56
- D - I - - 0x03AA90 1C:AA80: 50        .byte $50
- D - I - - 0x03AA91 1C:AA81: 4E        .byte $4E
- D - I - - 0x03AA92 1C:AA82: 2B        .byte $2B
- D - I - - 0x03AA93 1C:AA83: 25        .byte $25
- D - I - - 0x03AA94 1C:AA84: 33        .byte $33
- D - I - - 0x03AA95 1C:AA85: 58        .byte $58
- - - - - - 0x03AA96 1C:AA86: 39        .byte $39
- - - - - - 0x03AA97 1C:AA87: 42        .byte $42
- - - - - - 0x03AA98 1C:AA88: 3B        .byte $3B
- - - - - - 0x03AA99 1C:AA89: 34        .byte $34
- - - - - - 0x03AA9A 1C:AA8A: 33        .byte $33
- - - - - - 0x03AA9B 1C:AA8B: 38        .byte $38
- D - I - - 0x03AA9C 1C:AA8C: 34        .byte $34
- D - I - - 0x03AA9D 1C:AA8D: 58        .byte $58
- - - - - - 0x03AA9E 1C:AA8E: 39        .byte $39
- - - - - - 0x03AA9F 1C:AA8F: 42        .byte $42
- - - - - - 0x03AAA0 1C:AA90: 3B        .byte $3B
- - - - - - 0x03AAA1 1C:AA91: 34        .byte $34
- - - - - - 0x03AAA2 1C:AA92: 33        .byte $33
- - - - - - 0x03AAA3 1C:AA93: 38        .byte $38
- D - I - - 0x03AAA4 1C:AA94: 34        .byte $34
- - - - - - 0x03AAA5 1C:AA95: 00        .byte $00
; 73
- - - - - - 0x03AAA6 1C:AA96: 00        .byte $00
- - - - - - 0x03AAA7 1C:AA97: 44        .byte $44
- D - I - - 0x03AAA8 1C:AA98: 5A        .byte $5A
- - - - - - 0x03AAA9 1C:AA99: 4C        .byte $4C
- D - I - - 0x03AAAA 1C:AA9A: 2E        .byte $2E
- D - I - - 0x03AAAB 1C:AA9B: 28        .byte $28
- D - I - - 0x03AAAC 1C:AA9C: 34        .byte $34
- - - - - - 0x03AAAD 1C:AA9D: 46        .byte $46
- - - - - - 0x03AAAE 1C:AA9E: 3B        .byte $3B
- - - - - - 0x03AAAF 1C:AA9F: 44        .byte $44
- - - - - - 0x03AAB0 1C:AAA0: 3D        .byte $3D
- - - - - - 0x03AAB1 1C:AAA1: 36        .byte $36
- D - I - - 0x03AAB2 1C:AAA2: 35        .byte $35
- - - - - - 0x03AAB3 1C:AAA3: 3A        .byte $3A
- - - - - - 0x03AAB4 1C:AAA4: 40        .byte $40
- - - - - - 0x03AAB5 1C:AAA5: 46        .byte $46
- - - - - - 0x03AAB6 1C:AAA6: 3B        .byte $3B
- - - - - - 0x03AAB7 1C:AAA7: 44        .byte $44
- - - - - - 0x03AAB8 1C:AAA8: 3D        .byte $3D
- D - I - - 0x03AAB9 1C:AAA9: 36        .byte $36
- - - - - - 0x03AABA 1C:AAAA: 35        .byte $35
- - - - - - 0x03AABB 1C:AAAB: 3C        .byte $3C
- - - - - - 0x03AABC 1C:AAAC: 38        .byte $38
- - - - - - 0x03AABD 1C:AAAD: 00        .byte $00
; 74
- - - - - - 0x03AABE 1C:AAAE: 00        .byte $00
- - - - - - 0x03AABF 1C:AAAF: 46        .byte $46
- D - I - - 0x03AAC0 1C:AAB0: 5C        .byte $5C
- D - I - - 0x03AAC1 1C:AAB1: 4E        .byte $4E
- - - - - - 0x03AAC2 1C:AAB2: 2E        .byte $2E
- D - I - - 0x03AAC3 1C:AAB3: 28        .byte $28
- D - I - - 0x03AAC4 1C:AAB4: 34        .byte $34
- D - I - - 0x03AAC5 1C:AAB5: 48        .byte $48
- - - - - - 0x03AAC6 1C:AAB6: 3B        .byte $3B
- D - I - - 0x03AAC7 1C:AAB7: 44        .byte $44
- - - - - - 0x03AAC8 1C:AAB8: 3D        .byte $3D
- - - - - - 0x03AAC9 1C:AAB9: 36        .byte $36
- - - - - - 0x03AACA 1C:AABA: 35        .byte $35
- - - - - - 0x03AACB 1C:AABB: 3A        .byte $3A
- D - I - - 0x03AACC 1C:AABC: 40        .byte $40
- D - I - - 0x03AACD 1C:AABD: 48        .byte $48
- - - - - - 0x03AACE 1C:AABE: 3B        .byte $3B
- D - I - - 0x03AACF 1C:AABF: 44        .byte $44
- D - I - - 0x03AAD0 1C:AAC0: 3D        .byte $3D
- - - - - - 0x03AAD1 1C:AAC1: 36        .byte $36
- - - - - - 0x03AAD2 1C:AAC2: 35        .byte $35
- - - - - - 0x03AAD3 1C:AAC3: 3C        .byte $3C
- D - I - - 0x03AAD4 1C:AAC4: 38        .byte $38
- - - - - - 0x03AAD5 1C:AAC5: 00        .byte $00
; 75
- - - - - - 0x03AAD6 1C:AAC6: 00        .byte $00
- D - I - - 0x03AAD7 1C:AAC7: 4C        .byte $4C
- D - I - - 0x03AAD8 1C:AAC8: 5E        .byte $5E
- D - I - - 0x03AAD9 1C:AAC9: 42        .byte $42
- - - - - - 0x03AADA 1C:AACA: 30        .byte $30
- D - I - - 0x03AADB 1C:AACB: 32        .byte $32
- D - I - - 0x03AADC 1C:AACC: 3A        .byte $3A
- - - - - - 0x03AADD 1C:AACD: 4C        .byte $4C
- - - - - - 0x03AADE 1C:AACE: 3B        .byte $3B
- - - - - - 0x03AADF 1C:AACF: 44        .byte $44
- - - - - - 0x03AAE0 1C:AAD0: 3D        .byte $3D
- - - - - - 0x03AAE1 1C:AAD1: 36        .byte $36
- - - - - - 0x03AAE2 1C:AAD2: 35        .byte $35
- - - - - - 0x03AAE3 1C:AAD3: 3A        .byte $3A
- D - I - - 0x03AAE4 1C:AAD4: 40        .byte $40
- - - - - - 0x03AAE5 1C:AAD5: 4C        .byte $4C
- - - - - - 0x03AAE6 1C:AAD6: 3B        .byte $3B
- - - - - - 0x03AAE7 1C:AAD7: 44        .byte $44
- - - - - - 0x03AAE8 1C:AAD8: 3D        .byte $3D
- - - - - - 0x03AAE9 1C:AAD9: 36        .byte $36
- - - - - - 0x03AAEA 1C:AADA: 35        .byte $35
- - - - - - 0x03AAEB 1C:AADB: 3C        .byte $3C
- D - I - - 0x03AAEC 1C:AADC: 38        .byte $38
- - - - - - 0x03AAED 1C:AADD: 00        .byte $00
; 76
- - - - - - 0x03AAEE 1C:AADE: 00        .byte $00
- D - I - - 0x03AAEF 1C:AADF: 4C        .byte $4C
- D - I - - 0x03AAF0 1C:AAE0: 60        .byte $60
- D - I - - 0x03AAF1 1C:AAE1: 56        .byte $56
- D - I - - 0x03AAF2 1C:AAE2: 3C        .byte $3C
- D - I - - 0x03AAF3 1C:AAE3: 34        .byte $34
- D - I - - 0x03AAF4 1C:AAE4: 43        .byte $43
- - - - - - 0x03AAF5 1C:AAE5: 4D        .byte $4D
- - - - - - 0x03AAF6 1C:AAE6: 3B        .byte $3B
- - - - - - 0x03AAF7 1C:AAE7: 44        .byte $44
- - - - - - 0x03AAF8 1C:AAE8: 3D        .byte $3D
- - - - - - 0x03AAF9 1C:AAE9: 36        .byte $36
- - - - - - 0x03AAFA 1C:AAEA: 35        .byte $35
- - - - - - 0x03AAFB 1C:AAEB: 3A        .byte $3A
- - - - - - 0x03AAFC 1C:AAEC: 40        .byte $40
- - - - - - 0x03AAFD 1C:AAED: 4D        .byte $4D
- - - - - - 0x03AAFE 1C:AAEE: 3B        .byte $3B
- - - - - - 0x03AAFF 1C:AAEF: 44        .byte $44
- - - - - - 0x03AB00 1C:AAF0: 3D        .byte $3D
- - - - - - 0x03AB01 1C:AAF1: 36        .byte $36
- - - - - - 0x03AB02 1C:AAF2: 35        .byte $35
- - - - - - 0x03AB03 1C:AAF3: 3C        .byte $3C
- D - I - - 0x03AB04 1C:AAF4: 38        .byte $38
- - - - - - 0x03AB05 1C:AAF5: 00        .byte $00
; 77
- - - - - - 0x03AB06 1C:AAF6: 00        .byte $00
- D - I - - 0x03AB07 1C:AAF7: 4C        .byte $4C
- D - I - - 0x03AB08 1C:AAF8: 5C        .byte $5C
- D - I - - 0x03AB09 1C:AAF9: 56        .byte $56
- D - I - - 0x03AB0A 1C:AAFA: 32        .byte $32
- D - I - - 0x03AB0B 1C:AAFB: 2C        .byte $2C
- D - I - - 0x03AB0C 1C:AAFC: 38        .byte $38
- D - I - - 0x03AB0D 1C:AAFD: 4E        .byte $4E
- - - - - - 0x03AB0E 1C:AAFE: 3D        .byte $3D
- - - - - - 0x03AB0F 1C:AAFF: 46        .byte $46
- - - - - - 0x03AB10 1C:AB00: 3F        .byte $3F
- D - I - - 0x03AB11 1C:AB01: 38        .byte $38
- - - - - - 0x03AB12 1C:AB02: 37        .byte $37
- - - - - - 0x03AB13 1C:AB03: 3C        .byte $3C
- D - I - - 0x03AB14 1C:AB04: 38        .byte $38
- D - I - - 0x03AB15 1C:AB05: 4E        .byte $4E
- - - - - - 0x03AB16 1C:AB06: 3D        .byte $3D
- D - I - - 0x03AB17 1C:AB07: 46        .byte $46
- - - - - - 0x03AB18 1C:AB08: 3F        .byte $3F
- - - - - - 0x03AB19 1C:AB09: 38        .byte $38
- D - I - - 0x03AB1A 1C:AB0A: 37        .byte $37
- - - - - - 0x03AB1B 1C:AB0B: 3C        .byte $3C
- - - - - - 0x03AB1C 1C:AB0C: 38        .byte $38
- - - - - - 0x03AB1D 1C:AB0D: 00        .byte $00
; 78
- - - - - - 0x03AB1E 1C:AB0E: 00        .byte $00
- D - I - - 0x03AB1F 1C:AB0F: 4E        .byte $4E
- D - I - - 0x03AB20 1C:AB10: 5E        .byte $5E
- D - I - - 0x03AB21 1C:AB11: 58        .byte $58
- D - I - - 0x03AB22 1C:AB12: 32        .byte $32
- D - I - - 0x03AB23 1C:AB13: 2C        .byte $2C
- D - I - - 0x03AB24 1C:AB14: 38        .byte $38
- D - I - - 0x03AB25 1C:AB15: 50        .byte $50
- - - - - - 0x03AB26 1C:AB16: 3D        .byte $3D
- D - I - - 0x03AB27 1C:AB17: 46        .byte $46
- D - I - - 0x03AB28 1C:AB18: 3F        .byte $3F
- D - I - - 0x03AB29 1C:AB19: 38        .byte $38
- - - - - - 0x03AB2A 1C:AB1A: 37        .byte $37
- D - I - - 0x03AB2B 1C:AB1B: 3C        .byte $3C
- D - I - - 0x03AB2C 1C:AB1C: 38        .byte $38
- - - - - - 0x03AB2D 1C:AB1D: 50        .byte $50
- - - - - - 0x03AB2E 1C:AB1E: 3D        .byte $3D
- - - - - - 0x03AB2F 1C:AB1F: 46        .byte $46
- - - - - - 0x03AB30 1C:AB20: 3F        .byte $3F
- D - I - - 0x03AB31 1C:AB21: 38        .byte $38
- - - - - - 0x03AB32 1C:AB22: 37        .byte $37
- - - - - - 0x03AB33 1C:AB23: 3C        .byte $3C
- D - I - - 0x03AB34 1C:AB24: 38        .byte $38
- - - - - - 0x03AB35 1C:AB25: 00        .byte $00
; 79
- - - - - - 0x03AB36 1C:AB26: 00        .byte $00
- D - I - - 0x03AB37 1C:AB27: 57        .byte $57
- D - I - - 0x03AB38 1C:AB28: 64        .byte $64
- D - I - - 0x03AB39 1C:AB29: 5E        .byte $5E
- D - I - - 0x03AB3A 1C:AB2A: 34        .byte $34
- D - I - - 0x03AB3B 1C:AB2B: 2E        .byte $2E
- D - I - - 0x03AB3C 1C:AB2C: 3A        .byte $3A
- D - I - - 0x03AB3D 1C:AB2D: 5C        .byte $5C
- - - - - - 0x03AB3E 1C:AB2E: 3D        .byte $3D
- - - - - - 0x03AB3F 1C:AB2F: 46        .byte $46
- - - - - - 0x03AB40 1C:AB30: 3F        .byte $3F
- - - - - - 0x03AB41 1C:AB31: 38        .byte $38
- - - - - - 0x03AB42 1C:AB32: 37        .byte $37
- D - I - - 0x03AB43 1C:AB33: 3C        .byte $3C
- - - - - - 0x03AB44 1C:AB34: 38        .byte $38
- D - I - - 0x03AB45 1C:AB35: 5C        .byte $5C
- - - - - - 0x03AB46 1C:AB36: 3D        .byte $3D
- - - - - - 0x03AB47 1C:AB37: 46        .byte $46
- - - - - - 0x03AB48 1C:AB38: 3F        .byte $3F
- - - - - - 0x03AB49 1C:AB39: 38        .byte $38
- - - - - - 0x03AB4A 1C:AB3A: 37        .byte $37
- - - - - - 0x03AB4B 1C:AB3B: 3C        .byte $3C
- - - - - - 0x03AB4C 1C:AB3C: 38        .byte $38
- - - - - - 0x03AB4D 1C:AB3D: 00        .byte $00
; 7A
- - - - - - 0x03AB4E 1C:AB3E: 00        .byte $00
- - - - - - 0x03AB4F 1C:AB3F: 48        .byte $48
- - - - - - 0x03AB50 1C:AB40: 53        .byte $53
- - - - - - 0x03AB51 1C:AB41: 4E        .byte $4E
- D - I - - 0x03AB52 1C:AB42: 3A        .byte $3A
- D - I - - 0x03AB53 1C:AB43: 32        .byte $32
- D - I - - 0x03AB54 1C:AB44: 2C        .byte $2C
- - - - - - 0x03AB55 1C:AB45: 4A        .byte $4A
- - - - - - 0x03AB56 1C:AB46: 3F        .byte $3F
- - - - - - 0x03AB57 1C:AB47: 48        .byte $48
- - - - - - 0x03AB58 1C:AB48: 4B        .byte $4B
- - - - - - 0x03AB59 1C:AB49: 3A        .byte $3A
- - - - - - 0x03AB5A 1C:AB4A: 39        .byte $39
- - - - - - 0x03AB5B 1C:AB4B: 3E        .byte $3E
- D - I - - 0x03AB5C 1C:AB4C: 3A        .byte $3A
- - - - - - 0x03AB5D 1C:AB4D: 4C        .byte $4C
- - - - - - 0x03AB5E 1C:AB4E: 41        .byte $41
- - - - - - 0x03AB5F 1C:AB4F: 4A        .byte $4A
- - - - - - 0x03AB60 1C:AB50: 4D        .byte $4D
- - - - - - 0x03AB61 1C:AB51: 3C        .byte $3C
- - - - - - 0x03AB62 1C:AB52: 3B        .byte $3B
- - - - - - 0x03AB63 1C:AB53: 40        .byte $40
- D - I - - 0x03AB64 1C:AB54: 3C        .byte $3C
- - - - - - 0x03AB65 1C:AB55: 00        .byte $00
; 7B
- - - - - - 0x03AB66 1C:AB56: 00        .byte $00
- D - I - - 0x03AB67 1C:AB57: 4A        .byte $4A
- D - I - - 0x03AB68 1C:AB58: 55        .byte $55
- D - I - - 0x03AB69 1C:AB59: 50        .byte $50
- D - I - - 0x03AB6A 1C:AB5A: 3A        .byte $3A
- D - I - - 0x03AB6B 1C:AB5B: 32        .byte $32
- D - I - - 0x03AB6C 1C:AB5C: 2C        .byte $2C
- D - I - - 0x03AB6D 1C:AB5D: 4C        .byte $4C
- - - - - - 0x03AB6E 1C:AB5E: 3F        .byte $3F
- D - I - - 0x03AB6F 1C:AB5F: 48        .byte $48
- - - - - - 0x03AB70 1C:AB60: 4B        .byte $4B
- D - I - - 0x03AB71 1C:AB61: 3A        .byte $3A
- - - - - - 0x03AB72 1C:AB62: 39        .byte $39
- - - - - - 0x03AB73 1C:AB63: 3E        .byte $3E
- D - I - - 0x03AB74 1C:AB64: 3A        .byte $3A
- D - I - - 0x03AB75 1C:AB65: 4E        .byte $4E
- - - - - - 0x03AB76 1C:AB66: 41        .byte $41
- - - - - - 0x03AB77 1C:AB67: 4A        .byte $4A
- D - I - - 0x03AB78 1C:AB68: 4D        .byte $4D
- - - - - - 0x03AB79 1C:AB69: 3C        .byte $3C
- - - - - - 0x03AB7A 1C:AB6A: 3B        .byte $3B
- - - - - - 0x03AB7B 1C:AB6B: 40        .byte $40
- D - I - - 0x03AB7C 1C:AB6C: 3C        .byte $3C
- - - - - - 0x03AB7D 1C:AB6D: 00        .byte $00
; 7C
- - - - - - 0x03AB7E 1C:AB6E: 00        .byte $00
- D - I - - 0x03AB7F 1C:AB6F: 4E        .byte $4E
- D - I - - 0x03AB80 1C:AB70: 58        .byte $58
- D - I - - 0x03AB81 1C:AB71: 54        .byte $54
- - - - - - 0x03AB82 1C:AB72: 3E        .byte $3E
- D - I - - 0x03AB83 1C:AB73: 36        .byte $36
- - - - - - 0x03AB84 1C:AB74: 32        .byte $32
- D - I - - 0x03AB85 1C:AB75: 50        .byte $50
- - - - - - 0x03AB86 1C:AB76: 43        .byte $43
- - - - - - 0x03AB87 1C:AB77: 4C        .byte $4C
- - - - - - 0x03AB88 1C:AB78: 4F        .byte $4F
- - - - - - 0x03AB89 1C:AB79: 3E        .byte $3E
- - - - - - 0x03AB8A 1C:AB7A: 3D        .byte $3D
- - - - - - 0x03AB8B 1C:AB7B: 42        .byte $42
- - - - - - 0x03AB8C 1C:AB7C: 3E        .byte $3E
- - - - - - 0x03AB8D 1C:AB7D: 4D        .byte $4D
- - - - - - 0x03AB8E 1C:AB7E: 45        .byte $45
- - - - - - 0x03AB8F 1C:AB7F: 4E        .byte $4E
- - - - - - 0x03AB90 1C:AB80: 51        .byte $51
- - - - - - 0x03AB91 1C:AB81: 40        .byte $40
- - - - - - 0x03AB92 1C:AB82: 3F        .byte $3F
- - - - - - 0x03AB93 1C:AB83: 44        .byte $44
- D - I - - 0x03AB94 1C:AB84: 40        .byte $40
- - - - - - 0x03AB95 1C:AB85: 00        .byte $00
; 7D
- - - - - - 0x03AB96 1C:AB86: 00        .byte $00
- - - - - - 0x03AB97 1C:AB87: 4A        .byte $4A
- D - I - - 0x03AB98 1C:AB88: 57        .byte $57
- - - - - - 0x03AB99 1C:AB89: 53        .byte $53
- D - I - - 0x03AB9A 1C:AB8A: 34        .byte $34
- D - I - - 0x03AB9B 1C:AB8B: 34        .byte $34
- D - I - - 0x03AB9C 1C:AB8C: 36        .byte $36
- D - I - - 0x03AB9D 1C:AB8D: 4C        .byte $4C
- - - - - - 0x03AB9E 1C:AB8E: 41        .byte $41
- - - - - - 0x03AB9F 1C:AB8F: 4A        .byte $4A
- - - - - - 0x03ABA0 1C:AB90: 4D        .byte $4D
- D - I - - 0x03ABA1 1C:AB91: 3C        .byte $3C
- D - I - - 0x03ABA2 1C:AB92: 3B        .byte $3B
- - - - - - 0x03ABA3 1C:AB93: 40        .byte $40
- - - - - - 0x03ABA4 1C:AB94: 3C        .byte $3C
- - - - - - 0x03ABA5 1C:AB95: 4C        .byte $4C
- - - - - - 0x03ABA6 1C:AB96: 41        .byte $41
- - - - - - 0x03ABA7 1C:AB97: 4A        .byte $4A
- - - - - - 0x03ABA8 1C:AB98: 4D        .byte $4D
- - - - - - 0x03ABA9 1C:AB99: 3C        .byte $3C
- - - - - - 0x03ABAA 1C:AB9A: 3B        .byte $3B
- - - - - - 0x03ABAB 1C:AB9B: 40        .byte $40
- D - I - - 0x03ABAC 1C:AB9C: 3C        .byte $3C
- - - - - - 0x03ABAD 1C:AB9D: 00        .byte $00
; 7E
- - - - - - 0x03ABAE 1C:AB9E: 00        .byte $00
- D - I - - 0x03ABAF 1C:AB9F: 4C        .byte $4C
- D - I - - 0x03ABB0 1C:ABA0: 58        .byte $58
- - - - - - 0x03ABB1 1C:ABA1: 55        .byte $55
- D - I - - 0x03ABB2 1C:ABA2: 34        .byte $34
- D - I - - 0x03ABB3 1C:ABA3: 34        .byte $34
- D - I - - 0x03ABB4 1C:ABA4: 36        .byte $36
- D - I - - 0x03ABB5 1C:ABA5: 4E        .byte $4E
- - - - - - 0x03ABB6 1C:ABA6: 41        .byte $41
- D - I - - 0x03ABB7 1C:ABA7: 4A        .byte $4A
- - - - - - 0x03ABB8 1C:ABA8: 4D        .byte $4D
- - - - - - 0x03ABB9 1C:ABA9: 3C        .byte $3C
- - - - - - 0x03ABBA 1C:ABAA: 3B        .byte $3B
- - - - - - 0x03ABBB 1C:ABAB: 40        .byte $40
- D - I - - 0x03ABBC 1C:ABAC: 3C        .byte $3C
- - - - - - 0x03ABBD 1C:ABAD: 4E        .byte $4E
- - - - - - 0x03ABBE 1C:ABAE: 41        .byte $41
- - - - - - 0x03ABBF 1C:ABAF: 4A        .byte $4A
- - - - - - 0x03ABC0 1C:ABB0: 4D        .byte $4D
- D - I - - 0x03ABC1 1C:ABB1: 3C        .byte $3C
- - - - - - 0x03ABC2 1C:ABB2: 3B        .byte $3B
- - - - - - 0x03ABC3 1C:ABB3: 40        .byte $40
- - - - - - 0x03ABC4 1C:ABB4: 3C        .byte $3C
- - - - - - 0x03ABC5 1C:ABB5: 00        .byte $00
; 7F
- - - - - - 0x03ABC6 1C:ABB6: 00        .byte $00
- D - I - - 0x03ABC7 1C:ABB7: 5F        .byte $5F
- D - I - - 0x03ABC8 1C:ABB8: 5E        .byte $5E
- D - I - - 0x03ABC9 1C:ABB9: 5A        .byte $5A
- D - I - - 0x03ABCA 1C:ABBA: 3E        .byte $3E
- D - I - - 0x03ABCB 1C:ABBB: 42        .byte $42
- D - I - - 0x03ABCC 1C:ABBC: 4A        .byte $4A
- D - I - - 0x03ABCD 1C:ABBD: 5C        .byte $5C
- - - - - - 0x03ABCE 1C:ABBE: 41        .byte $41
- - - - - - 0x03ABCF 1C:ABBF: 4A        .byte $4A
- - - - - - 0x03ABD0 1C:ABC0: 4D        .byte $4D
- - - - - - 0x03ABD1 1C:ABC1: 3C        .byte $3C
- - - - - - 0x03ABD2 1C:ABC2: 3B        .byte $3B
- - - - - - 0x03ABD3 1C:ABC3: 40        .byte $40
- - - - - - 0x03ABD4 1C:ABC4: 3C        .byte $3C
- - - - - - 0x03ABD5 1C:ABC5: 4E        .byte $4E
- - - - - - 0x03ABD6 1C:ABC6: 41        .byte $41
- - - - - - 0x03ABD7 1C:ABC7: 4A        .byte $4A
- - - - - - 0x03ABD8 1C:ABC8: 4D        .byte $4D
- D - I - - 0x03ABD9 1C:ABC9: 3C        .byte $3C
- - - - - - 0x03ABDA 1C:ABCA: 3B        .byte $3B
- - - - - - 0x03ABDB 1C:ABCB: 40        .byte $40
- D - I - - 0x03ABDC 1C:ABCC: 3C        .byte $3C
- - - - - - 0x03ABDD 1C:ABCD: 00        .byte $00
; 80
- - - - - - 0x03ABDE 1C:ABCE: 00        .byte $00
- D - I - - 0x03ABDF 1C:ABCF: 5B        .byte $5B
- D - I - - 0x03ABE0 1C:ABD0: 5A        .byte $5A
- D - I - - 0x03ABE1 1C:ABD1: 56        .byte $56
- D - I - - 0x03ABE2 1C:ABD2: 50        .byte $50
- D - I - - 0x03ABE3 1C:ABD3: 39        .byte $39
- - - - - - 0x03ABE4 1C:ABD4: 3C        .byte $3C
- - - - - - 0x03ABE5 1C:ABD5: 50        .byte $50
- - - - - - 0x03ABE6 1C:ABD6: 45        .byte $45
- - - - - - 0x03ABE7 1C:ABD7: 4E        .byte $4E
- - - - - - 0x03ABE8 1C:ABD8: 51        .byte $51
- - - - - - 0x03ABE9 1C:ABD9: 40        .byte $40
- - - - - - 0x03ABEA 1C:ABDA: 49        .byte $49
- - - - - - 0x03ABEB 1C:ABDB: 44        .byte $44
- - - - - - 0x03ABEC 1C:ABDC: 40        .byte $40
- - - - - - 0x03ABED 1C:ABDD: 5B        .byte $5B
- - - - - - 0x03ABEE 1C:ABDE: 4B        .byte $4B
- - - - - - 0x03ABEF 1C:ABDF: 54        .byte $54
- - - - - - 0x03ABF0 1C:ABE0: 57        .byte $57
- - - - - - 0x03ABF1 1C:ABE1: 46        .byte $46
- - - - - - 0x03ABF2 1C:ABE2: 45        .byte $45
- - - - - - 0x03ABF3 1C:ABE3: 4A        .byte $4A
- - - - - - 0x03ABF4 1C:ABE4: 46        .byte $46
- - - - - - 0x03ABF5 1C:ABE5: 00        .byte $00
; 81
- - - - - - 0x03ABF6 1C:ABE6: 00        .byte $00
- - - - - - 0x03ABF7 1C:ABE7: 4D        .byte $4D
- D - I - - 0x03ABF8 1C:ABE8: 57        .byte $57
- D - I - - 0x03ABF9 1C:ABE9: 53        .byte $53
- D - I - - 0x03ABFA 1C:ABEA: 34        .byte $34
- - - - - - 0x03ABFB 1C:ABEB: 34        .byte $34
- D - I - - 0x03ABFC 1C:ABEC: 32        .byte $32
- - - - - - 0x03ABFD 1C:ABED: 4F        .byte $4F
- - - - - - 0x03ABFE 1C:ABEE: 41        .byte $41
- - - - - - 0x03ABFF 1C:ABEF: 4A        .byte $4A
- - - - - - 0x03AC00 1C:ABF0: 4D        .byte $4D
- - - - - - 0x03AC01 1C:ABF1: 3C        .byte $3C
- - - - - - 0x03AC02 1C:ABF2: 3B        .byte $3B
- - - - - - 0x03AC03 1C:ABF3: 40        .byte $40
- - - - - - 0x03AC04 1C:ABF4: 3C        .byte $3C
- - - - - - 0x03AC05 1C:ABF5: 4F        .byte $4F
- - - - - - 0x03AC06 1C:ABF6: 41        .byte $41
- - - - - - 0x03AC07 1C:ABF7: 4A        .byte $4A
- - - - - - 0x03AC08 1C:ABF8: 4D        .byte $4D
- - - - - - 0x03AC09 1C:ABF9: 3C        .byte $3C
- - - - - - 0x03AC0A 1C:ABFA: 3B        .byte $3B
- - - - - - 0x03AC0B 1C:ABFB: 40        .byte $40
- - - - - - 0x03AC0C 1C:ABFC: 3C        .byte $3C
- - - - - - 0x03AC0D 1C:ABFD: 00        .byte $00
; 82
- - - - - - 0x03AC0E 1C:ABFE: 00        .byte $00
- - - - - - 0x03AC0F 1C:ABFF: 55        .byte $55
- D - I - - 0x03AC10 1C:AC00: 5E        .byte $5E
- D - I - - 0x03AC11 1C:AC01: 5A        .byte $5A
- D - I - - 0x03AC12 1C:AC02: 36        .byte $36
- D - I - - 0x03AC13 1C:AC03: 36        .byte $36
- - - - - - 0x03AC14 1C:AC04: 36        .byte $36
- - - - - - 0x03AC15 1C:AC05: 59        .byte $59
- - - - - - 0x03AC16 1C:AC06: 43        .byte $43
- - - - - - 0x03AC17 1C:AC07: 4C        .byte $4C
- - - - - - 0x03AC18 1C:AC08: 4F        .byte $4F
- - - - - - 0x03AC19 1C:AC09: 3E        .byte $3E
- - - - - - 0x03AC1A 1C:AC0A: 3D        .byte $3D
- - - - - - 0x03AC1B 1C:AC0B: 42        .byte $42
- D - I - - 0x03AC1C 1C:AC0C: 3E        .byte $3E
- - - - - - 0x03AC1D 1C:AC0D: 59        .byte $59
- - - - - - 0x03AC1E 1C:AC0E: 43        .byte $43
- - - - - - 0x03AC1F 1C:AC0F: 4C        .byte $4C
- - - - - - 0x03AC20 1C:AC10: 4F        .byte $4F
- - - - - - 0x03AC21 1C:AC11: 3E        .byte $3E
- - - - - - 0x03AC22 1C:AC12: 3D        .byte $3D
- - - - - - 0x03AC23 1C:AC13: 42        .byte $42
- - - - - - 0x03AC24 1C:AC14: 3E        .byte $3E
- - - - - - 0x03AC25 1C:AC15: 00        .byte $00
; 83
- - - - - - 0x03AC26 1C:AC16: 00        .byte $00
- - - - - - 0x03AC27 1C:AC17: 61        .byte $61
- D - I - - 0x03AC28 1C:AC18: 5A        .byte $5A
- D - I - - 0x03AC29 1C:AC19: 56        .byte $56
- - - - - - 0x03AC2A 1C:AC1A: 34        .byte $34
- D - I - - 0x03AC2B 1C:AC1B: 34        .byte $34
- D - I - - 0x03AC2C 1C:AC1C: 36        .byte $36
- D - I - - 0x03AC2D 1C:AC1D: 5E        .byte $5E
- - - - - - 0x03AC2E 1C:AC1E: 43        .byte $43
- - - - - - 0x03AC2F 1C:AC1F: 4C        .byte $4C
- - - - - - 0x03AC30 1C:AC20: 4F        .byte $4F
- - - - - - 0x03AC31 1C:AC21: 3E        .byte $3E
- - - - - - 0x03AC32 1C:AC22: 3D        .byte $3D
- - - - - - 0x03AC33 1C:AC23: 42        .byte $42
- - - - - - 0x03AC34 1C:AC24: 3E        .byte $3E
- - - - - - 0x03AC35 1C:AC25: 54        .byte $54
- - - - - - 0x03AC36 1C:AC26: 45        .byte $45
- - - - - - 0x03AC37 1C:AC27: 4E        .byte $4E
- - - - - - 0x03AC38 1C:AC28: 51        .byte $51
- - - - - - 0x03AC39 1C:AC29: 40        .byte $40
- - - - - - 0x03AC3A 1C:AC2A: 3F        .byte $3F
- - - - - - 0x03AC3B 1C:AC2B: 44        .byte $44
- - - - - - 0x03AC3C 1C:AC2C: 40        .byte $40
- - - - - - 0x03AC3D 1C:AC2D: 00        .byte $00
; 84
- - - - - - 0x03AC3E 1C:AC2E: 00        .byte $00
- D - I - - 0x03AC3F 1C:AC2F: 50        .byte $50
- D - I - - 0x03AC40 1C:AC30: 60        .byte $60
- D - I - - 0x03AC41 1C:AC31: 68        .byte $68
- - - - - - 0x03AC42 1C:AC32: 40        .byte $40
- D - I - - 0x03AC43 1C:AC33: 46        .byte $46
- D - I - - 0x03AC44 1C:AC34: 4C        .byte $4C
- - - - - - 0x03AC45 1C:AC35: 56        .byte $56
- - - - - - 0x03AC46 1C:AC36: 43        .byte $43
- - - - - - 0x03AC47 1C:AC37: 4C        .byte $4C
- - - - - - 0x03AC48 1C:AC38: 4F        .byte $4F
- - - - - - 0x03AC49 1C:AC39: 3E        .byte $3E
- - - - - - 0x03AC4A 1C:AC3A: 3D        .byte $3D
- - - - - - 0x03AC4B 1C:AC3B: 42        .byte $42
- - - - - - 0x03AC4C 1C:AC3C: 3E        .byte $3E
- - - - - - 0x03AC4D 1C:AC3D: 52        .byte $52
- - - - - - 0x03AC4E 1C:AC3E: 43        .byte $43
- - - - - - 0x03AC4F 1C:AC3F: 4C        .byte $4C
- - - - - - 0x03AC50 1C:AC40: 4F        .byte $4F
- - - - - - 0x03AC51 1C:AC41: 3E        .byte $3E
- - - - - - 0x03AC52 1C:AC42: 3D        .byte $3D
- - - - - - 0x03AC53 1C:AC43: 42        .byte $42
- D - I - - 0x03AC54 1C:AC44: 3E        .byte $3E
- - - - - - 0x03AC55 1C:AC45: 00        .byte $00
; 85
- - - - - - 0x03AC56 1C:AC46: 00        .byte $00
- D - I - - 0x03AC57 1C:AC47: 55        .byte $55
- D - I - - 0x03AC58 1C:AC48: 60        .byte $60
- - - - - - 0x03AC59 1C:AC49: 58        .byte $58
- D - I - - 0x03AC5A 1C:AC4A: 36        .byte $36
- - - - - - 0x03AC5B 1C:AC4B: 36        .byte $36
- D - I - - 0x03AC5C 1C:AC4C: 36        .byte $36
- - - - - - 0x03AC5D 1C:AC4D: 58        .byte $58
- - - - - - 0x03AC5E 1C:AC4E: 43        .byte $43
- - - - - - 0x03AC5F 1C:AC4F: 4C        .byte $4C
- - - - - - 0x03AC60 1C:AC50: 4F        .byte $4F
- - - - - - 0x03AC61 1C:AC51: 3E        .byte $3E
- - - - - - 0x03AC62 1C:AC52: 3D        .byte $3D
- - - - - - 0x03AC63 1C:AC53: 42        .byte $42
- - - - - - 0x03AC64 1C:AC54: 3E        .byte $3E
- - - - - - 0x03AC65 1C:AC55: 58        .byte $58
- - - - - - 0x03AC66 1C:AC56: 43        .byte $43
- - - - - - 0x03AC67 1C:AC57: 4C        .byte $4C
- - - - - - 0x03AC68 1C:AC58: 4F        .byte $4F
- - - - - - 0x03AC69 1C:AC59: 3E        .byte $3E
- - - - - - 0x03AC6A 1C:AC5A: 3D        .byte $3D
- - - - - - 0x03AC6B 1C:AC5B: 42        .byte $42
- - - - - - 0x03AC6C 1C:AC5C: 3E        .byte $3E
- - - - - - 0x03AC6D 1C:AC5D: 00        .byte $00
; 86
- - - - - - 0x03AC6E 1C:AC5E: 00        .byte $00
- - - - - - 0x03AC6F 1C:AC5F: 56        .byte $56
- D - I - - 0x03AC70 1C:AC60: 5C        .byte $5C
- - - - - - 0x03AC71 1C:AC61: 58        .byte $58
- D - I - - 0x03AC72 1C:AC62: 55        .byte $55
- - - - - - 0x03AC73 1C:AC63: 31        .byte $31
- D - I - - 0x03AC74 1C:AC64: 3E        .byte $3E
- - - - - - 0x03AC75 1C:AC65: 56        .byte $56
- - - - - - 0x03AC76 1C:AC66: 47        .byte $47
- - - - - - 0x03AC77 1C:AC67: 50        .byte $50
- - - - - - 0x03AC78 1C:AC68: 53        .byte $53
- - - - - - 0x03AC79 1C:AC69: 42        .byte $42
- - - - - - 0x03AC7A 1C:AC6A: 4B        .byte $4B
- - - - - - 0x03AC7B 1C:AC6B: 46        .byte $46
- - - - - - 0x03AC7C 1C:AC6C: 42        .byte $42
- - - - - - 0x03AC7D 1C:AC6D: 56        .byte $56
- - - - - - 0x03AC7E 1C:AC6E: 47        .byte $47
- D - I - - 0x03AC7F 1C:AC6F: 50        .byte $50
- - - - - - 0x03AC80 1C:AC70: 53        .byte $53
- - - - - - 0x03AC81 1C:AC71: 42        .byte $42
- - - - - - 0x03AC82 1C:AC72: 4B        .byte $4B
- - - - - - 0x03AC83 1C:AC73: 46        .byte $46
- - - - - - 0x03AC84 1C:AC74: 42        .byte $42
- - - - - - 0x03AC85 1C:AC75: 00        .byte $00
; 87
- - - - - - 0x03AC86 1C:AC76: 00        .byte $00
- - - - - - 0x03AC87 1C:AC77: 52        .byte $52
- D - I - - 0x03AC88 1C:AC78: 59        .byte $59
- D - I - - 0x03AC89 1C:AC79: 55        .byte $55
- D - I - - 0x03AC8A 1C:AC7A: 36        .byte $36
- - - - - - 0x03AC8B 1C:AC7B: 36        .byte $36
- D - I - - 0x03AC8C 1C:AC7C: 32        .byte $32
- - - - - - 0x03AC8D 1C:AC7D: 54        .byte $54
- - - - - - 0x03AC8E 1C:AC7E: 41        .byte $41
- - - - - - 0x03AC8F 1C:AC7F: 4A        .byte $4A
- - - - - - 0x03AC90 1C:AC80: 4D        .byte $4D
- D - I - - 0x03AC91 1C:AC81: 3C        .byte $3C
- - - - - - 0x03AC92 1C:AC82: 3B        .byte $3B
- - - - - - 0x03AC93 1C:AC83: 40        .byte $40
- - - - - - 0x03AC94 1C:AC84: 3C        .byte $3C
- - - - - - 0x03AC95 1C:AC85: 54        .byte $54
- - - - - - 0x03AC96 1C:AC86: 41        .byte $41
- - - - - - 0x03AC97 1C:AC87: 4A        .byte $4A
- - - - - - 0x03AC98 1C:AC88: 4D        .byte $4D
- D - I - - 0x03AC99 1C:AC89: 3C        .byte $3C
- D - I - - 0x03AC9A 1C:AC8A: 3B        .byte $3B
- - - - - - 0x03AC9B 1C:AC8B: 40        .byte $40
- D - I - - 0x03AC9C 1C:AC8C: 3C        .byte $3C
- - - - - - 0x03AC9D 1C:AC8D: 00        .byte $00
; 88
- - - - - - 0x03AC9E 1C:AC8E: 00        .byte $00
- - - - - - 0x03AC9F 1C:AC8F: 54        .byte $54
- - - - - - 0x03ACA0 1C:AC90: 60        .byte $60
- - - - - - 0x03ACA1 1C:AC91: 68        .byte $68
- - - - - - 0x03ACA2 1C:AC92: 42        .byte $42
- - - - - - 0x03ACA3 1C:AC93: 48        .byte $48
- - - - - - 0x03ACA4 1C:AC94: 3C        .byte $3C
- - - - - - 0x03ACA5 1C:AC95: 5F        .byte $5F
- - - - - - 0x03ACA6 1C:AC96: 45        .byte $45
- - - - - - 0x03ACA7 1C:AC97: 4E        .byte $4E
- - - - - - 0x03ACA8 1C:AC98: 51        .byte $51
- - - - - - 0x03ACA9 1C:AC99: 40        .byte $40
- - - - - - 0x03ACAA 1C:AC9A: 3F        .byte $3F
- - - - - - 0x03ACAB 1C:AC9B: 44        .byte $44
- - - - - - 0x03ACAC 1C:AC9C: 40        .byte $40
- - - - - - 0x03ACAD 1C:AC9D: 56        .byte $56
- - - - - - 0x03ACAE 1C:AC9E: 45        .byte $45
- - - - - - 0x03ACAF 1C:AC9F: 4E        .byte $4E
- - - - - - 0x03ACB0 1C:ACA0: 51        .byte $51
- - - - - - 0x03ACB1 1C:ACA1: 40        .byte $40
- - - - - - 0x03ACB2 1C:ACA2: 3F        .byte $3F
- - - - - - 0x03ACB3 1C:ACA3: 44        .byte $44
- D - I - - 0x03ACB4 1C:ACA4: 40        .byte $40
- - - - - - 0x03ACB5 1C:ACA5: 00        .byte $00
; 89
- - - - - - 0x03ACB6 1C:ACA6: 00        .byte $00
- - - - - - 0x03ACB7 1C:ACA7: 54        .byte $54
- D - I - - 0x03ACB8 1C:ACA8: 5B        .byte $5B
- - - - - - 0x03ACB9 1C:ACA9: 55        .byte $55
- D - I - - 0x03ACBA 1C:ACAA: 36        .byte $36
- - - - - - 0x03ACBB 1C:ACAB: 36        .byte $36
- D - I - - 0x03ACBC 1C:ACAC: 32        .byte $32
- D - I - - 0x03ACBD 1C:ACAD: 55        .byte $55
- - - - - - 0x03ACBE 1C:ACAE: 41        .byte $41
- - - - - - 0x03ACBF 1C:ACAF: 4A        .byte $4A
- - - - - - 0x03ACC0 1C:ACB0: 4D        .byte $4D
- - - - - - 0x03ACC1 1C:ACB1: 3C        .byte $3C
- - - - - - 0x03ACC2 1C:ACB2: 3B        .byte $3B
- - - - - - 0x03ACC3 1C:ACB3: 40        .byte $40
- D - I - - 0x03ACC4 1C:ACB4: 3C        .byte $3C
- - - - - - 0x03ACC5 1C:ACB5: 59        .byte $59
- - - - - - 0x03ACC6 1C:ACB6: 45        .byte $45
- - - - - - 0x03ACC7 1C:ACB7: 4E        .byte $4E
- - - - - - 0x03ACC8 1C:ACB8: 51        .byte $51
- - - - - - 0x03ACC9 1C:ACB9: 40        .byte $40
- - - - - - 0x03ACCA 1C:ACBA: 3F        .byte $3F
- - - - - - 0x03ACCB 1C:ACBB: 44        .byte $44
- - - - - - 0x03ACCC 1C:ACBC: 40        .byte $40
- - - - - - 0x03ACCD 1C:ACBD: 00        .byte $00
; 8A
- - - - - - 0x03ACCE 1C:ACBE: 00        .byte $00
- - - - - - 0x03ACCF 1C:ACBF: 58        .byte $58
- D - I - - 0x03ACD0 1C:ACC0: 60        .byte $60
- - - - - - 0x03ACD1 1C:ACC1: 54        .byte $54
- D - I - - 0x03ACD2 1C:ACC2: 3A        .byte $3A
- D - I - - 0x03ACD3 1C:ACC3: 3A        .byte $3A
- - - - - - 0x03ACD4 1C:ACC4: 46        .byte $46
- - - - - - 0x03ACD5 1C:ACC5: 5B        .byte $5B
- - - - - - 0x03ACD6 1C:ACC6: 47        .byte $47
- - - - - - 0x03ACD7 1C:ACC7: 50        .byte $50
- - - - - - 0x03ACD8 1C:ACC8: 53        .byte $53
- - - - - - 0x03ACD9 1C:ACC9: 42        .byte $42
- - - - - - 0x03ACDA 1C:ACCA: 41        .byte $41
- - - - - - 0x03ACDB 1C:ACCB: 46        .byte $46
- D - I - - 0x03ACDC 1C:ACCC: 42        .byte $42
- - - - - - 0x03ACDD 1C:ACCD: 5B        .byte $5B
- - - - - - 0x03ACDE 1C:ACCE: 47        .byte $47
- - - - - - 0x03ACDF 1C:ACCF: 50        .byte $50
- - - - - - 0x03ACE0 1C:ACD0: 53        .byte $53
- - - - - - 0x03ACE1 1C:ACD1: 42        .byte $42
- - - - - - 0x03ACE2 1C:ACD2: 41        .byte $41
- - - - - - 0x03ACE3 1C:ACD3: 46        .byte $46
- - - - - - 0x03ACE4 1C:ACD4: 42        .byte $42
- - - - - - 0x03ACE5 1C:ACD5: 00        .byte $00
; 8B
- - - - - - 0x03ACE6 1C:ACD6: 00        .byte $00
- - - - - - 0x03ACE7 1C:ACD7: 56        .byte $56
- - - - - - 0x03ACE8 1C:ACD8: 58        .byte $58
- - - - - - 0x03ACE9 1C:ACD9: 5B        .byte $5B
- D - I - - 0x03ACEA 1C:ACDA: 3A        .byte $3A
- - - - - - 0x03ACEB 1C:ACDB: 3A        .byte $3A
- - - - - - 0x03ACEC 1C:ACDC: 3A        .byte $3A
- - - - - - 0x03ACED 1C:ACDD: 58        .byte $58
- - - - - - 0x03ACEE 1C:ACDE: 47        .byte $47
- - - - - - 0x03ACEF 1C:ACDF: 50        .byte $50
- - - - - - 0x03ACF0 1C:ACE0: 53        .byte $53
- - - - - - 0x03ACF1 1C:ACE1: 42        .byte $42
- - - - - - 0x03ACF2 1C:ACE2: 41        .byte $41
- - - - - - 0x03ACF3 1C:ACE3: 46        .byte $46
- - - - - - 0x03ACF4 1C:ACE4: 42        .byte $42
- - - - - - 0x03ACF5 1C:ACE5: 58        .byte $58
- - - - - - 0x03ACF6 1C:ACE6: 47        .byte $47
- - - - - - 0x03ACF7 1C:ACE7: 50        .byte $50
- - - - - - 0x03ACF8 1C:ACE8: 53        .byte $53
- - - - - - 0x03ACF9 1C:ACE9: 42        .byte $42
- - - - - - 0x03ACFA 1C:ACEA: 41        .byte $41
- - - - - - 0x03ACFB 1C:ACEB: 46        .byte $46
- - - - - - 0x03ACFC 1C:ACEC: 42        .byte $42
- - - - - - 0x03ACFD 1C:ACED: 00        .byte $00
; 8C
- - - - - - 0x03ACFE 1C:ACEE: 00        .byte $00
- D - I - - 0x03ACFF 1C:ACEF: 57        .byte $57
- D - I - - 0x03AD00 1C:ACF0: 5C        .byte $5C
- - - - - - 0x03AD01 1C:ACF1: 5E        .byte $5E
- D - I - - 0x03AD02 1C:ACF2: 3A        .byte $3A
- D - I - - 0x03AD03 1C:ACF3: 3A        .byte $3A
- D - I - - 0x03AD04 1C:ACF4: 3A        .byte $3A
- - - - - - 0x03AD05 1C:ACF5: 59        .byte $59
- - - - - - 0x03AD06 1C:ACF6: 47        .byte $47
- - - - - - 0x03AD07 1C:ACF7: 50        .byte $50
- - - - - - 0x03AD08 1C:ACF8: 53        .byte $53
- - - - - - 0x03AD09 1C:ACF9: 42        .byte $42
- - - - - - 0x03AD0A 1C:ACFA: 41        .byte $41
- - - - - - 0x03AD0B 1C:ACFB: 46        .byte $46
- D - I - - 0x03AD0C 1C:ACFC: 42        .byte $42
- - - - - - 0x03AD0D 1C:ACFD: 59        .byte $59
- - - - - - 0x03AD0E 1C:ACFE: 47        .byte $47
- - - - - - 0x03AD0F 1C:ACFF: 50        .byte $50
- - - - - - 0x03AD10 1C:AD00: 53        .byte $53
- - - - - - 0x03AD11 1C:AD01: 42        .byte $42
- - - - - - 0x03AD12 1C:AD02: 41        .byte $41
- - - - - - 0x03AD13 1C:AD03: 46        .byte $46
- - - - - - 0x03AD14 1C:AD04: 42        .byte $42
- - - - - - 0x03AD15 1C:AD05: 00        .byte $00
; 8D
- - - - - - 0x03AD16 1C:AD06: 00        .byte $00
- D - I - - 0x03AD17 1C:AD07: 58        .byte $58
- D - I - - 0x03AD18 1C:AD08: 5E        .byte $5E
- - - - - - 0x03AD19 1C:AD09: 5A        .byte $5A
- - - - - - 0x03AD1A 1C:AD0A: 36        .byte $36
- D - I - - 0x03AD1B 1C:AD0B: 36        .byte $36
- - - - - - 0x03AD1C 1C:AD0C: 32        .byte $32
- - - - - - 0x03AD1D 1C:AD0D: 5C        .byte $5C
- - - - - - 0x03AD1E 1C:AD0E: 41        .byte $41
- D - I - - 0x03AD1F 1C:AD0F: 4A        .byte $4A
- - - - - - 0x03AD20 1C:AD10: 4D        .byte $4D
- - - - - - 0x03AD21 1C:AD11: 3C        .byte $3C
- - - - - - 0x03AD22 1C:AD12: 3B        .byte $3B
- - - - - - 0x03AD23 1C:AD13: 40        .byte $40
- D - I - - 0x03AD24 1C:AD14: 3C        .byte $3C
- D - I - - 0x03AD25 1C:AD15: 5C        .byte $5C
- - - - - - 0x03AD26 1C:AD16: 41        .byte $41
- - - - - - 0x03AD27 1C:AD17: 4A        .byte $4A
- - - - - - 0x03AD28 1C:AD18: 4D        .byte $4D
- - - - - - 0x03AD29 1C:AD19: 3C        .byte $3C
- - - - - - 0x03AD2A 1C:AD1A: 3B        .byte $3B
- - - - - - 0x03AD2B 1C:AD1B: 40        .byte $40
- - - - - - 0x03AD2C 1C:AD1C: 3C        .byte $3C
- - - - - - 0x03AD2D 1C:AD1D: 00        .byte $00
; 8E
- - - - - - 0x03AD2E 1C:AD1E: 00        .byte $00
- D - I - - 0x03AD2F 1C:AD1F: 55        .byte $55
- D - I - - 0x03AD30 1C:AD20: 60        .byte $60
- D - I - - 0x03AD31 1C:AD21: 58        .byte $58
- - - - - - 0x03AD32 1C:AD22: 45        .byte $45
- D - I - - 0x03AD33 1C:AD23: 4B        .byte $4B
- - - - - - 0x03AD34 1C:AD24: 40        .byte $40
- D - I - - 0x03AD35 1C:AD25: 5F        .byte $5F
- - - - - - 0x03AD36 1C:AD26: 48        .byte $48
- - - - - - 0x03AD37 1C:AD27: 51        .byte $51
- - - - - - 0x03AD38 1C:AD28: 54        .byte $54
- - - - - - 0x03AD39 1C:AD29: 43        .byte $43
- - - - - - 0x03AD3A 1C:AD2A: 42        .byte $42
- - - - - - 0x03AD3B 1C:AD2B: 47        .byte $47
- D - I - - 0x03AD3C 1C:AD2C: 43        .byte $43
- - - - - - 0x03AD3D 1C:AD2D: 57        .byte $57
- - - - - - 0x03AD3E 1C:AD2E: 48        .byte $48
- - - - - - 0x03AD3F 1C:AD2F: 51        .byte $51
- - - - - - 0x03AD40 1C:AD30: 54        .byte $54
- - - - - - 0x03AD41 1C:AD31: 43        .byte $43
- - - - - - 0x03AD42 1C:AD32: 42        .byte $42
- - - - - - 0x03AD43 1C:AD33: 47        .byte $47
- D - I - - 0x03AD44 1C:AD34: 43        .byte $43
- - - - - - 0x03AD45 1C:AD35: 00        .byte $00
; 8F
- - - - - - 0x03AD46 1C:AD36: 00        .byte $00
- D - I - - 0x03AD47 1C:AD37: 54        .byte $54
- D - I - - 0x03AD48 1C:AD38: 60        .byte $60
- D - I - - 0x03AD49 1C:AD39: 56        .byte $56
- - - - - - 0x03AD4A 1C:AD3A: 39        .byte $39
- D - I - - 0x03AD4B 1C:AD3B: 39        .byte $39
- - - - - - 0x03AD4C 1C:AD3C: 36        .byte $36
- - - - - - 0x03AD4D 1C:AD3D: 5C        .byte $5C
- - - - - - 0x03AD4E 1C:AD3E: 44        .byte $44
- - - - - - 0x03AD4F 1C:AD3F: 4D        .byte $4D
- - - - - - 0x03AD50 1C:AD40: 50        .byte $50
- - - - - - 0x03AD51 1C:AD41: 3F        .byte $3F
- - - - - - 0x03AD52 1C:AD42: 3E        .byte $3E
- - - - - - 0x03AD53 1C:AD43: 43        .byte $43
- D - I - - 0x03AD54 1C:AD44: 3F        .byte $3F
- - - - - - 0x03AD55 1C:AD45: 5C        .byte $5C
- - - - - - 0x03AD56 1C:AD46: 44        .byte $44
- D - I - - 0x03AD57 1C:AD47: 4D        .byte $4D
- D - I - - 0x03AD58 1C:AD48: 50        .byte $50
- - - - - - 0x03AD59 1C:AD49: 3F        .byte $3F
- - - - - - 0x03AD5A 1C:AD4A: 3E        .byte $3E
- - - - - - 0x03AD5B 1C:AD4B: 43        .byte $43
- D - I - - 0x03AD5C 1C:AD4C: 3F        .byte $3F
- - - - - - 0x03AD5D 1C:AD4D: 00        .byte $00
; 90
- - - - - - 0x03AD5E 1C:AD4E: 00        .byte $00
- - - - - - 0x03AD5F 1C:AD4F: 56        .byte $56
- D - I - - 0x03AD60 1C:AD50: 5A        .byte $5A
- - - - - - 0x03AD61 1C:AD51: 61        .byte $61
- - - - - - 0x03AD62 1C:AD52: 39        .byte $39
- D - I - - 0x03AD63 1C:AD53: 3D        .byte $3D
- D - I - - 0x03AD64 1C:AD54: 37        .byte $37
- - - - - - 0x03AD65 1C:AD55: 5A        .byte $5A
- D - I - - 0x03AD66 1C:AD56: 44        .byte $44
- - - - - - 0x03AD67 1C:AD57: 4D        .byte $4D
- - - - - - 0x03AD68 1C:AD58: 50        .byte $50
- - - - - - 0x03AD69 1C:AD59: 3F        .byte $3F
- - - - - - 0x03AD6A 1C:AD5A: 3E        .byte $3E
- - - - - - 0x03AD6B 1C:AD5B: 43        .byte $43
- - - - - - 0x03AD6C 1C:AD5C: 3F        .byte $3F
- - - - - - 0x03AD6D 1C:AD5D: 5A        .byte $5A
- - - - - - 0x03AD6E 1C:AD5E: 44        .byte $44
- D - I - - 0x03AD6F 1C:AD5F: 4D        .byte $4D
- - - - - - 0x03AD70 1C:AD60: 50        .byte $50
- - - - - - 0x03AD71 1C:AD61: 3F        .byte $3F
- - - - - - 0x03AD72 1C:AD62: 3E        .byte $3E
- - - - - - 0x03AD73 1C:AD63: 43        .byte $43
- - - - - - 0x03AD74 1C:AD64: 3F        .byte $3F
- - - - - - 0x03AD75 1C:AD65: 00        .byte $00
; 91
- - - - - - 0x03AD76 1C:AD66: 00        .byte $00
- D - I - - 0x03AD77 1C:AD67: 56        .byte $56
- D - I - - 0x03AD78 1C:AD68: 5A        .byte $5A
- D - I - - 0x03AD79 1C:AD69: 58        .byte $58
- D - I - - 0x03AD7A 1C:AD6A: 39        .byte $39
- - - - - - 0x03AD7B 1C:AD6B: 3D        .byte $3D
- D - I - - 0x03AD7C 1C:AD6C: 37        .byte $37
- - - - - - 0x03AD7D 1C:AD6D: 5B        .byte $5B
- - - - - - 0x03AD7E 1C:AD6E: 44        .byte $44
- D - I - - 0x03AD7F 1C:AD6F: 4D        .byte $4D
- - - - - - 0x03AD80 1C:AD70: 50        .byte $50
- - - - - - 0x03AD81 1C:AD71: 3F        .byte $3F
- - - - - - 0x03AD82 1C:AD72: 3E        .byte $3E
- - - - - - 0x03AD83 1C:AD73: 43        .byte $43
- D - I - - 0x03AD84 1C:AD74: 3F        .byte $3F
- - - - - - 0x03AD85 1C:AD75: 5B        .byte $5B
- - - - - - 0x03AD86 1C:AD76: 44        .byte $44
- - - - - - 0x03AD87 1C:AD77: 4D        .byte $4D
- - - - - - 0x03AD88 1C:AD78: 50        .byte $50
- - - - - - 0x03AD89 1C:AD79: 3F        .byte $3F
- - - - - - 0x03AD8A 1C:AD7A: 3E        .byte $3E
- - - - - - 0x03AD8B 1C:AD7B: 43        .byte $43
- - - - - - 0x03AD8C 1C:AD7C: 3F        .byte $3F
- - - - - - 0x03AD8D 1C:AD7D: 00        .byte $00
; 92
- - - - - - 0x03AD8E 1C:AD7E: 00        .byte $00
- D - I - - 0x03AD8F 1C:AD7F: 57        .byte $57
- D - I - - 0x03AD90 1C:AD80: 5D        .byte $5D
- D - I - - 0x03AD91 1C:AD81: 62        .byte $62
- D - I - - 0x03AD92 1C:AD82: 39        .byte $39
- D - I - - 0x03AD93 1C:AD83: 41        .byte $41
- - - - - - 0x03AD94 1C:AD84: 3C        .byte $3C
- - - - - - 0x03AD95 1C:AD85: 5C        .byte $5C
- - - - - - 0x03AD96 1C:AD86: 44        .byte $44
- - - - - - 0x03AD97 1C:AD87: 4D        .byte $4D
- - - - - - 0x03AD98 1C:AD88: 50        .byte $50
- D - I - - 0x03AD99 1C:AD89: 3F        .byte $3F
- - - - - - 0x03AD9A 1C:AD8A: 3E        .byte $3E
- - - - - - 0x03AD9B 1C:AD8B: 43        .byte $43
- - - - - - 0x03AD9C 1C:AD8C: 3F        .byte $3F
- - - - - - 0x03AD9D 1C:AD8D: 5C        .byte $5C
- - - - - - 0x03AD9E 1C:AD8E: 44        .byte $44
- - - - - - 0x03AD9F 1C:AD8F: 4D        .byte $4D
- - - - - - 0x03ADA0 1C:AD90: 50        .byte $50
- - - - - - 0x03ADA1 1C:AD91: 3F        .byte $3F
- D - I - - 0x03ADA2 1C:AD92: 3E        .byte $3E
- - - - - - 0x03ADA3 1C:AD93: 43        .byte $43
- D - I - - 0x03ADA4 1C:AD94: 3F        .byte $3F
- - - - - - 0x03ADA5 1C:AD95: 00        .byte $00
; 93
- - - - - - 0x03ADA6 1C:AD96: 00        .byte $00
- D - I - - 0x03ADA7 1C:AD97: 44        .byte $44
- D - I - - 0x03ADA8 1C:AD98: 5A        .byte $5A
- - - - - - 0x03ADA9 1C:AD99: 61        .byte $61
- - - - - - 0x03ADAA 1C:AD9A: 39        .byte $39
- - - - - - 0x03ADAB 1C:AD9B: 3D        .byte $3D
- D - I - - 0x03ADAC 1C:AD9C: 35        .byte $35
- - - - - - 0x03ADAD 1C:AD9D: 5A        .byte $5A
- - - - - - 0x03ADAE 1C:AD9E: 44        .byte $44
- - - - - - 0x03ADAF 1C:AD9F: 4D        .byte $4D
- - - - - - 0x03ADB0 1C:ADA0: 50        .byte $50
- - - - - - 0x03ADB1 1C:ADA1: 3F        .byte $3F
- - - - - - 0x03ADB2 1C:ADA2: 3E        .byte $3E
- - - - - - 0x03ADB3 1C:ADA3: 43        .byte $43
- - - - - - 0x03ADB4 1C:ADA4: 3F        .byte $3F
- - - - - - 0x03ADB5 1C:ADA5: 5A        .byte $5A
- - - - - - 0x03ADB6 1C:ADA6: 44        .byte $44
- D - I - - 0x03ADB7 1C:ADA7: 4D        .byte $4D
- - - - - - 0x03ADB8 1C:ADA8: 50        .byte $50
- - - - - - 0x03ADB9 1C:ADA9: 3F        .byte $3F
- - - - - - 0x03ADBA 1C:ADAA: 3E        .byte $3E
- - - - - - 0x03ADBB 1C:ADAB: 43        .byte $43
- - - - - - 0x03ADBC 1C:ADAC: 3F        .byte $3F
- - - - - - 0x03ADBD 1C:ADAD: 00        .byte $00
; 94
- - - - - - 0x03ADBE 1C:ADAE: 00        .byte $00
- - - - - - 0x03ADBF 1C:ADAF: 56        .byte $56
- D - I - - 0x03ADC0 1C:ADB0: 5B        .byte $5B
- - - - - - 0x03ADC1 1C:ADB1: 5B        .byte $5B
- - - - - - 0x03ADC2 1C:ADB2: 3B        .byte $3B
- - - - - - 0x03ADC3 1C:ADB3: 3B        .byte $3B
- D - I - - 0x03ADC4 1C:ADB4: 3C        .byte $3C
- - - - - - 0x03ADC5 1C:ADB5: 58        .byte $58
- D - I - - 0x03ADC6 1C:ADB6: 48        .byte $48
- - - - - - 0x03ADC7 1C:ADB7: 51        .byte $51
- - - - - - 0x03ADC8 1C:ADB8: 54        .byte $54
- - - - - - 0x03ADC9 1C:ADB9: 43        .byte $43
- - - - - - 0x03ADCA 1C:ADBA: 42        .byte $42
- - - - - - 0x03ADCB 1C:ADBB: 47        .byte $47
- - - - - - 0x03ADCC 1C:ADBC: 43        .byte $43
- - - - - - 0x03ADCD 1C:ADBD: 56        .byte $56
- - - - - - 0x03ADCE 1C:ADBE: 46        .byte $46
- - - - - - 0x03ADCF 1C:ADBF: 4F        .byte $4F
- - - - - - 0x03ADD0 1C:ADC0: 52        .byte $52
- - - - - - 0x03ADD1 1C:ADC1: 41        .byte $41
- - - - - - 0x03ADD2 1C:ADC2: 40        .byte $40
- - - - - - 0x03ADD3 1C:ADC3: 45        .byte $45
- - - - - - 0x03ADD4 1C:ADC4: 41        .byte $41
- - - - - - 0x03ADD5 1C:ADC5: 00        .byte $00
; 95
- - - - - - 0x03ADD6 1C:ADC6: 00        .byte $00
- - - - - - 0x03ADD7 1C:ADC7: 56        .byte $56
- D - I - - 0x03ADD8 1C:ADC8: 5B        .byte $5B
- - - - - - 0x03ADD9 1C:ADC9: 5B        .byte $5B
- D - I - - 0x03ADDA 1C:ADCA: 3B        .byte $3B
- D - I - - 0x03ADDB 1C:ADCB: 3B        .byte $3B
- - - - - - 0x03ADDC 1C:ADCC: 3C        .byte $3C
- - - - - - 0x03ADDD 1C:ADCD: 56        .byte $56
- - - - - - 0x03ADDE 1C:ADCE: 46        .byte $46
- - - - - - 0x03ADDF 1C:ADCF: 4F        .byte $4F
- - - - - - 0x03ADE0 1C:ADD0: 52        .byte $52
- - - - - - 0x03ADE1 1C:ADD1: 41        .byte $41
- - - - - - 0x03ADE2 1C:ADD2: 40        .byte $40
- - - - - - 0x03ADE3 1C:ADD3: 45        .byte $45
- - - - - - 0x03ADE4 1C:ADD4: 41        .byte $41
- - - - - - 0x03ADE5 1C:ADD5: 58        .byte $58
- - - - - - 0x03ADE6 1C:ADD6: 48        .byte $48
- - - - - - 0x03ADE7 1C:ADD7: 51        .byte $51
- - - - - - 0x03ADE8 1C:ADD8: 54        .byte $54
- D - I - - 0x03ADE9 1C:ADD9: 43        .byte $43
- - - - - - 0x03ADEA 1C:ADDA: 42        .byte $42
- - - - - - 0x03ADEB 1C:ADDB: 47        .byte $47
- - - - - - 0x03ADEC 1C:ADDC: 43        .byte $43
- - - - - - 0x03ADED 1C:ADDD: 00        .byte $00
; 96
- - - - - - 0x03ADEE 1C:ADDE: 00        .byte $00
- - - - - - 0x03ADEF 1C:ADDF: 59        .byte $59
- - - - - - 0x03ADF0 1C:ADE0: 5D        .byte $5D
- - - - - - 0x03ADF1 1C:ADE1: 56        .byte $56
- D - I - - 0x03ADF2 1C:ADE2: 2E        .byte $2E
- D - I - - 0x03ADF3 1C:ADE3: 2E        .byte $2E
- - - - - - 0x03ADF4 1C:ADE4: 3A        .byte $3A
- - - - - - 0x03ADF5 1C:ADE5: 5A        .byte $5A
- - - - - - 0x03ADF6 1C:ADE6: 46        .byte $46
- - - - - - 0x03ADF7 1C:ADE7: 4F        .byte $4F
- - - - - - 0x03ADF8 1C:ADE8: 52        .byte $52
- - - - - - 0x03ADF9 1C:ADE9: 41        .byte $41
- - - - - - 0x03ADFA 1C:ADEA: 40        .byte $40
- - - - - - 0x03ADFB 1C:ADEB: 45        .byte $45
- - - - - - 0x03ADFC 1C:ADEC: 41        .byte $41
- - - - - - 0x03ADFD 1C:ADED: 59        .byte $59
- - - - - - 0x03ADFE 1C:ADEE: 4A        .byte $4A
- - - - - - 0x03ADFF 1C:ADEF: 53        .byte $53
- - - - - - 0x03AE00 1C:ADF0: 56        .byte $56
- - - - - - 0x03AE01 1C:ADF1: 45        .byte $45
- - - - - - 0x03AE02 1C:ADF2: 44        .byte $44
- - - - - - 0x03AE03 1C:ADF3: 49        .byte $49
- - - - - - 0x03AE04 1C:ADF4: 45        .byte $45
- - - - - - 0x03AE05 1C:ADF5: 00        .byte $00
; 97
- - - - - - 0x03AE06 1C:ADF6: 00        .byte $00
- - - - - - 0x03AE07 1C:ADF7: 45        .byte $45
- D - I - - 0x03AE08 1C:ADF8: 5B        .byte $5B
- - - - - - 0x03AE09 1C:ADF9: 60        .byte $60
- D - I - - 0x03AE0A 1C:ADFA: 3B        .byte $3B
- D - I - - 0x03AE0B 1C:ADFB: 3F        .byte $3F
- - - - - - 0x03AE0C 1C:ADFC: 3E        .byte $3E
- - - - - - 0x03AE0D 1C:ADFD: 5C        .byte $5C
- - - - - - 0x03AE0E 1C:ADFE: 46        .byte $46
- - - - - - 0x03AE0F 1C:ADFF: 4F        .byte $4F
- - - - - - 0x03AE10 1C:AE00: 52        .byte $52
- - - - - - 0x03AE11 1C:AE01: 41        .byte $41
- - - - - - 0x03AE12 1C:AE02: 40        .byte $40
- - - - - - 0x03AE13 1C:AE03: 45        .byte $45
- - - - - - 0x03AE14 1C:AE04: 41        .byte $41
- - - - - - 0x03AE15 1C:AE05: 5C        .byte $5C
- - - - - - 0x03AE16 1C:AE06: 46        .byte $46
- - - - - - 0x03AE17 1C:AE07: 4F        .byte $4F
- - - - - - 0x03AE18 1C:AE08: 52        .byte $52
- - - - - - 0x03AE19 1C:AE09: 41        .byte $41
- - - - - - 0x03AE1A 1C:AE0A: 40        .byte $40
- - - - - - 0x03AE1B 1C:AE0B: 45        .byte $45
- - - - - - 0x03AE1C 1C:AE0C: 41        .byte $41
- - - - - - 0x03AE1D 1C:AE0D: 00        .byte $00
; 98
- - - - - - 0x03AE1E 1C:AE0E: 00        .byte $00
- D - I - - 0x03AE1F 1C:AE0F: 5A        .byte $5A
- D - I - - 0x03AE20 1C:AE10: 60        .byte $60
- D - I - - 0x03AE21 1C:AE11: 78        .byte $78
- - - - - - 0x03AE22 1C:AE12: 46        .byte $46
- D - I - - 0x03AE23 1C:AE13: 4E        .byte $4E
- - - - - - 0x03AE24 1C:AE14: 40        .byte $40
- - - - - - 0x03AE25 1C:AE15: 64        .byte $64
- - - - - - 0x03AE26 1C:AE16: 49        .byte $49
- - - - - - 0x03AE27 1C:AE17: 52        .byte $52
- - - - - - 0x03AE28 1C:AE18: 55        .byte $55
- - - - - - 0x03AE29 1C:AE19: 44        .byte $44
- - - - - - 0x03AE2A 1C:AE1A: 43        .byte $43
- - - - - - 0x03AE2B 1C:AE1B: 48        .byte $48
- - - - - - 0x03AE2C 1C:AE1C: 44        .byte $44
- - - - - - 0x03AE2D 1C:AE1D: 5B        .byte $5B
- - - - - - 0x03AE2E 1C:AE1E: 49        .byte $49
- - - - - - 0x03AE2F 1C:AE1F: 52        .byte $52
- - - - - - 0x03AE30 1C:AE20: 55        .byte $55
- - - - - - 0x03AE31 1C:AE21: 44        .byte $44
- - - - - - 0x03AE32 1C:AE22: 43        .byte $43
- - - - - - 0x03AE33 1C:AE23: 48        .byte $48
- - - - - - 0x03AE34 1C:AE24: 44        .byte $44
- - - - - - 0x03AE35 1C:AE25: 00        .byte $00
; 99
- - - - - - 0x03AE36 1C:AE26: 00        .byte $00
- D - I - - 0x03AE37 1C:AE27: 1B        .byte $1B
- D - I - - 0x03AE38 1C:AE28: 31        .byte $31
- D - I - - 0x03AE39 1C:AE29: 37        .byte $37
- - - - - - 0x03AE3A 1C:AE2A: 20        .byte $20
- - - - - - 0x03AE3B 1C:AE2B: 20        .byte $20
- - - - - - 0x03AE3C 1C:AE2C: 20        .byte $20
- - - - - - 0x03AE3D 1C:AE2D: 1E        .byte $1E
- D - I - - 0x03AE3E 1C:AE2E: 21        .byte $21
- - - - - - 0x03AE3F 1C:AE2F: 2A        .byte $2A
- - - - - - 0x03AE40 1C:AE30: 23        .byte $23
- - - - - - 0x03AE41 1C:AE31: 1C        .byte $1C
- - - - - - 0x03AE42 1C:AE32: 1B        .byte $1B
- - - - - - 0x03AE43 1C:AE33: 1C        .byte $1C
- - - - - - 0x03AE44 1C:AE34: 1C        .byte $1C
- D - I - - 0x03AE45 1C:AE35: 1E        .byte $1E
- - - - - - 0x03AE46 1C:AE36: 21        .byte $21
- D - I - - 0x03AE47 1C:AE37: 2A        .byte $2A
- - - - - - 0x03AE48 1C:AE38: 23        .byte $23
- - - - - - 0x03AE49 1C:AE39: 1C        .byte $1C
- - - - - - 0x03AE4A 1C:AE3A: 1B        .byte $1B
- - - - - - 0x03AE4B 1C:AE3B: 1C        .byte $1C
- - - - - - 0x03AE4C 1C:AE3C: 1C        .byte $1C
- - - - - - 0x03AE4D 1C:AE3D: 00        .byte $00
; 9A
- - - - - - 0x03AE4E 1C:AE3E: 00        .byte $00
- D - I - - 0x03AE4F 1C:AE3F: 4C        .byte $4C
- - - - - - 0x03AE50 1C:AE40: 60        .byte $60
- D - I - - 0x03AE51 1C:AE41: 75        .byte $75
- - - - - - 0x03AE52 1C:AE42: 40        .byte $40
- - - - - - 0x03AE53 1C:AE43: 46        .byte $46
- - - - - - 0x03AE54 1C:AE44: 4C        .byte $4C
- - - - - - 0x03AE55 1C:AE45: 50        .byte $50
- - - - - - 0x03AE56 1C:AE46: 43        .byte $43
- - - - - - 0x03AE57 1C:AE47: 4C        .byte $4C
- - - - - - 0x03AE58 1C:AE48: 4F        .byte $4F
- - - - - - 0x03AE59 1C:AE49: 3E        .byte $3E
- - - - - - 0x03AE5A 1C:AE4A: 3D        .byte $3D
- - - - - - 0x03AE5B 1C:AE4B: 42        .byte $42
- - - - - - 0x03AE5C 1C:AE4C: 3E        .byte $3E
- - - - - - 0x03AE5D 1C:AE4D: 4E        .byte $4E
- - - - - - 0x03AE5E 1C:AE4E: 43        .byte $43
- - - - - - 0x03AE5F 1C:AE4F: 4C        .byte $4C
- - - - - - 0x03AE60 1C:AE50: 4F        .byte $4F
- - - - - - 0x03AE61 1C:AE51: 3E        .byte $3E
- - - - - - 0x03AE62 1C:AE52: 3D        .byte $3D
- - - - - - 0x03AE63 1C:AE53: 42        .byte $42
- - - - - - 0x03AE64 1C:AE54: 3E        .byte $3E
- - - - - - 0x03AE65 1C:AE55: 00        .byte $00
; 9B
- - - - - - 0x03AE66 1C:AE56: 00        .byte $00
- D - I - - 0x03AE67 1C:AE57: 57        .byte $57
- D - I - - 0x03AE68 1C:AE58: 66        .byte $66
- D - I - - 0x03AE69 1C:AE59: 6F        .byte $6F
- - - - - - 0x03AE6A 1C:AE5A: 4C        .byte $4C
- D - I - - 0x03AE6B 1C:AE5B: 54        .byte $54
- - - - - - 0x03AE6C 1C:AE5C: 54        .byte $54
- D - I - - 0x03AE6D 1C:AE5D: 62        .byte $62
- - - - - - 0x03AE6E 1C:AE5E: 4F        .byte $4F
- - - - - - 0x03AE6F 1C:AE5F: 58        .byte $58
- - - - - - 0x03AE70 1C:AE60: 5B        .byte $5B
- - - - - - 0x03AE71 1C:AE61: 4A        .byte $4A
- - - - - - 0x03AE72 1C:AE62: 49        .byte $49
- - - - - - 0x03AE73 1C:AE63: 4E        .byte $4E
- - - - - - 0x03AE74 1C:AE64: 4A        .byte $4A
- - - - - - 0x03AE75 1C:AE65: 59        .byte $59
- - - - - - 0x03AE76 1C:AE66: 4F        .byte $4F
- - - - - - 0x03AE77 1C:AE67: 58        .byte $58
- - - - - - 0x03AE78 1C:AE68: 5B        .byte $5B
- - - - - - 0x03AE79 1C:AE69: 4A        .byte $4A
- - - - - - 0x03AE7A 1C:AE6A: 49        .byte $49
- - - - - - 0x03AE7B 1C:AE6B: 4E        .byte $4E
- - - - - - 0x03AE7C 1C:AE6C: 4A        .byte $4A
- - - - - - 0x03AE7D 1C:AE6D: 00        .byte $00
; 9C
- - - - - - 0x03AE7E 1C:AE6E: 00        .byte $00
- D - I - - 0x03AE7F 1C:AE6F: 1A        .byte $1A
- D - I - - 0x03AE80 1C:AE70: 20        .byte $20
- D - I - - 0x03AE81 1C:AE71: 30        .byte $30
- - - - - - 0x03AE82 1C:AE72: 17        .byte $17
- D - I - - 0x03AE83 1C:AE73: 17        .byte $17
- D - I - - 0x03AE84 1C:AE74: 0F        .byte $0F
- - - - - - 0x03AE85 1C:AE75: 1C        .byte $1C
- - - - - - 0x03AE86 1C:AE76: 18        .byte $18
- D - I - - 0x03AE87 1C:AE77: 20        .byte $20
- D - I - - 0x03AE88 1C:AE78: 1A        .byte $1A
- - - - - - 0x03AE89 1C:AE79: 13        .byte $13
- - - - - - 0x03AE8A 1C:AE7A: 12        .byte $12
- - - - - - 0x03AE8B 1C:AE7B: 13        .byte $13
- - - - - - 0x03AE8C 1C:AE7C: 11        .byte $11
- - - - - - 0x03AE8D 1C:AE7D: 1C        .byte $1C
- - - - - - 0x03AE8E 1C:AE7E: 18        .byte $18
- - - - - - 0x03AE8F 1C:AE7F: 20        .byte $20
- - - - - - 0x03AE90 1C:AE80: 1A        .byte $1A
- - - - - - 0x03AE91 1C:AE81: 13        .byte $13
- - - - - - 0x03AE92 1C:AE82: 12        .byte $12
- - - - - - 0x03AE93 1C:AE83: 13        .byte $13
- - - - - - 0x03AE94 1C:AE84: 11        .byte $11
- - - - - - 0x03AE95 1C:AE85: 00        .byte $00



tbl_AE86:
; 00
- D - I - - 0x03AE96 1C:AE86: 00        .byte $00   ; 
- D - I - - 0x03AE97 1C:AE87: 01        .byte $01   ; 
- D - I - - 0x03AE98 1C:AE88: 06        .byte $06   ; 
- D - I - - 0x03AE99 1C:AE89: 06        .byte $06   ; 
- D - I - - 0x03AE9A 1C:AE8A: 01        .byte $01   ; 
- D - I - - 0x03AE9B 1C:AE8B: 01        .byte $01   ; 
- D - I - - 0x03AE9C 1C:AE8C: 06        .byte $06   ; 
- D - I - - 0x03AE9D 1C:AE8D: 05        .byte $05   ; 
; 01
- D - I - - 0x03AE9E 1C:AE8E: 00        .byte $00   ; 
- D - I - - 0x03AE9F 1C:AE8F: 00        .byte $00   ; 
- D - I - - 0x03AEA0 1C:AE90: 00        .byte $00   ; 
- D - I - - 0x03AEA1 1C:AE91: 03        .byte $03   ; 
- D - I - - 0x03AEA2 1C:AE92: 01        .byte $01   ; 
- D - I - - 0x03AEA3 1C:AE93: 01        .byte $01   ; 
- D - I - - 0x03AEA4 1C:AE94: 01        .byte $01   ; 
- D - I - - 0x03AEA5 1C:AE95: 03        .byte $03   ; 
; 02
- D - I - - 0x03AEA6 1C:AE96: 14        .byte $14   ; 
- D - I - - 0x03AEA7 1C:AE97: 0F        .byte $0F   ; 
- D - I - - 0x03AEA8 1C:AE98: 1B        .byte $1B   ; 
- D - I - - 0x03AEA9 1C:AE99: 26        .byte $26   ; 
- D - I - - 0x03AEAA 1C:AE9A: 13        .byte $13   ; 
- D - I - - 0x03AEAB 1C:AE9B: 13        .byte $13   ; 
- D - I - - 0x03AEAC 1C:AE9C: 16        .byte $16   ; 
- D - I - - 0x03AEAD 1C:AE9D: 17        .byte $17   ; 
; 03
- D - I - - 0x03AEAE 1C:AE9E: 1C        .byte $1C   ; 
- D - I - - 0x03AEAF 1C:AE9F: 14        .byte $14   ; 
- D - I - - 0x03AEB0 1C:AEA0: 2B        .byte $2B   ; 
- D - I - - 0x03AEB1 1C:AEA1: 2E        .byte $2E   ; 
- D - I - - 0x03AEB2 1C:AEA2: 1A        .byte $1A   ; 
- D - I - - 0x03AEB3 1C:AEA3: 1A        .byte $1A   ; 
- D - I - - 0x03AEB4 1C:AEA4: 26        .byte $26   ; 
- D - I - - 0x03AEB5 1C:AEA5: 2B        .byte $2B   ; 
; 04
- - - - - - 0x03AEB6 1C:AEA6: 00        .byte $00   ; 
- - - - - - 0x03AEB7 1C:AEA7: 0A        .byte $0A   ; 
- D - I - - 0x03AEB8 1C:AEA8: 04        .byte $04   ; 
- D - I - - 0x03AEB9 1C:AEA9: 04        .byte $04   ; 
- D - I - - 0x03AEBA 1C:AEAA: 00        .byte $00   ; 
- D - I - - 0x03AEBB 1C:AEAB: 00        .byte $00   ; 
- - - - - - 0x03AEBC 1C:AEAC: 08        .byte $08   ; 
- - - - - - 0x03AEBD 1C:AEAD: 08        .byte $08   ; 
; 05
- - - - - - 0x03AEBE 1C:AEAE: 00        .byte $00   ; 
- - - - - - 0x03AEBF 1C:AEAF: 0A        .byte $0A   ; 
- D - I - - 0x03AEC0 1C:AEB0: 08        .byte $08   ; 
- D - I - - 0x03AEC1 1C:AEB1: 08        .byte $08   ; 
- D - I - - 0x03AEC2 1C:AEB2: 02        .byte $02   ; 
- D - I - - 0x03AEC3 1C:AEB3: 02        .byte $02   ; 
- - - - - - 0x03AEC4 1C:AEB4: 08        .byte $08   ; 
- - - - - - 0x03AEC5 1C:AEB5: 08        .byte $08   ; 
; 06
- - - - - - 0x03AEC6 1C:AEB6: 00        .byte $00   ; 
- - - - - - 0x03AEC7 1C:AEB7: 0A        .byte $0A   ; 
- - - - - - 0x03AEC8 1C:AEB8: 14        .byte $14   ; 
- D - I - - 0x03AEC9 1C:AEB9: 14        .byte $14   ; 
- D - I - - 0x03AECA 1C:AEBA: 37        .byte $37   ; 
- D - I - - 0x03AECB 1C:AEBB: 37        .byte $37   ; 
- - - - - - 0x03AECC 1C:AEBC: 2D        .byte $2D   ; 
- - - - - - 0x03AECD 1C:AEBD: 2D        .byte $2D   ; 
; 07
- - - - - - 0x03AECE 1C:AEBE: 00        .byte $00   ; 
- - - - - - 0x03AECF 1C:AEBF: 0A        .byte $0A   ; 
- D - I - - 0x03AED0 1C:AEC0: 12        .byte $12   ; 
- D - I - - 0x03AED1 1C:AEC1: 12        .byte $12   ; 
- - - - - - 0x03AED2 1C:AEC2: 0B        .byte $0B   ; 
- D - I - - 0x03AED3 1C:AEC3: 0B        .byte $0B   ; 
- - - - - - 0x03AED4 1C:AEC4: 0C        .byte $0C   ; 
- - - - - - 0x03AED5 1C:AEC5: 0C        .byte $0C   ; 
; 08
- - - - - - 0x03AED6 1C:AEC6: 00        .byte $00   ; 
- - - - - - 0x03AED7 1C:AEC7: 0A        .byte $0A   ; 
- D - I - - 0x03AED8 1C:AEC8: 0F        .byte $0F   ; 
- D - I - - 0x03AED9 1C:AEC9: 13        .byte $13   ; 
- - - - - - 0x03AEDA 1C:AECA: 0A        .byte $0A   ; 
- - - - - - 0x03AEDB 1C:AECB: 0A        .byte $0A   ; 
- - - - - - 0x03AEDC 1C:AECC: 0C        .byte $0C   ; 
- - - - - - 0x03AEDD 1C:AECD: 0C        .byte $0C   ; 
; 09
- - - - - - 0x03AEDE 1C:AECE: 00        .byte $00   ; 
- - - - - - 0x03AEDF 1C:AECF: 0A        .byte $0A   ; 
- D - I - - 0x03AEE0 1C:AED0: 14        .byte $14   ; 
- D - I - - 0x03AEE1 1C:AED1: 16        .byte $16   ; 
- - - - - - 0x03AEE2 1C:AED2: 0D        .byte $0D   ; 
- - - - - - 0x03AEE3 1C:AED3: 0D        .byte $0D   ; 
- - - - - - 0x03AEE4 1C:AED4: 0E        .byte $0E   ; 
- - - - - - 0x03AEE5 1C:AED5: 0E        .byte $0E   ; 
; 0A
- - - - - - 0x03AEE6 1C:AED6: 00        .byte $00   ; 
- - - - - - 0x03AEE7 1C:AED7: 0A        .byte $0A   ; 
- D - I - - 0x03AEE8 1C:AED8: 11        .byte $11   ; 
- D - I - - 0x03AEE9 1C:AED9: 14        .byte $14   ; 
- - - - - - 0x03AEEA 1C:AEDA: 12        .byte $12   ; 
- D - I - - 0x03AEEB 1C:AEDB: 12        .byte $12   ; 
- - - - - - 0x03AEEC 1C:AEDC: 12        .byte $12   ; 
- - - - - - 0x03AEED 1C:AEDD: 12        .byte $12   ; 
; 0B
- - - - - - 0x03AEEE 1C:AEDE: 00        .byte $00   ; 
- - - - - - 0x03AEEF 1C:AEDF: 14        .byte $14   ; 
- D - I - - 0x03AEF0 1C:AEE0: 1A        .byte $1A   ; 
- D - I - - 0x03AEF1 1C:AEE1: 1B        .byte $1B   ; 
- - - - - - 0x03AEF2 1C:AEE2: 18        .byte $18   ; 
- - - - - - 0x03AEF3 1C:AEE3: 18        .byte $18   ; 
- - - - - - 0x03AEF4 1C:AEE4: 18        .byte $18   ; 
- - - - - - 0x03AEF5 1C:AEE5: 18        .byte $18   ; 
; 0C
- - - - - - 0x03AEF6 1C:AEE6: 00        .byte $00   ; 
- - - - - - 0x03AEF7 1C:AEE7: 14        .byte $14   ; 
- D - I - - 0x03AEF8 1C:AEE8: 1D        .byte $1D   ; 
- D - I - - 0x03AEF9 1C:AEE9: 20        .byte $20   ; 
- - - - - - 0x03AEFA 1C:AEEA: 17        .byte $17   ; 
- D - I - - 0x03AEFB 1C:AEEB: 17        .byte $17   ; 
- - - - - - 0x03AEFC 1C:AEEC: 18        .byte $18   ; 
- - - - - - 0x03AEFD 1C:AEED: 18        .byte $18   ; 
; 0D
- - - - - - 0x03AEFE 1C:AEEE: 00        .byte $00   ; 
- - - - - - 0x03AEFF 1C:AEEF: 14        .byte $14   ; 
- - - - - - 0x03AF00 1C:AEF0: 1F        .byte $1F   ; 
- D - I - - 0x03AF01 1C:AEF1: 22        .byte $22   ; 
- - - - - - 0x03AF02 1C:AEF2: 18        .byte $18   ; 
- D - I - - 0x03AF03 1C:AEF3: 18        .byte $18   ; 
- - - - - - 0x03AF04 1C:AEF4: 18        .byte $18   ; 
- - - - - - 0x03AF05 1C:AEF5: 18        .byte $18   ; 
; 0E
- - - - - - 0x03AF06 1C:AEF6: 00        .byte $00   ; 
- - - - - - 0x03AF07 1C:AEF7: 14        .byte $14   ; 
- D - I - - 0x03AF08 1C:AEF8: 1F        .byte $1F   ; 
- - - - - - 0x03AF09 1C:AEF9: 23        .byte $23   ; 
- - - - - - 0x03AF0A 1C:AEFA: 18        .byte $18   ; 
- D - I - - 0x03AF0B 1C:AEFB: 18        .byte $18   ; 
- - - - - - 0x03AF0C 1C:AEFC: 1A        .byte $1A   ; 
- - - - - - 0x03AF0D 1C:AEFD: 1A        .byte $1A   ; 
; 0F
- - - - - - 0x03AF0E 1C:AEFE: 00        .byte $00   ; 
- - - - - - 0x03AF0F 1C:AEFF: 14        .byte $14   ; 
- D - I - - 0x03AF10 1C:AF00: 1A        .byte $1A   ; 
- - - - - - 0x03AF11 1C:AF01: 26        .byte $26   ; 
- - - - - - 0x03AF12 1C:AF02: 1E        .byte $1E   ; 
- - - - - - 0x03AF13 1C:AF03: 1E        .byte $1E   ; 
- - - - - - 0x03AF14 1C:AF04: 20        .byte $20   ; 
- - - - - - 0x03AF15 1C:AF05: 20        .byte $20   ; 
; 10
- - - - - - 0x03AF16 1C:AF06: 00        .byte $00   ; 
- - - - - - 0x03AF17 1C:AF07: 19        .byte $19   ; 
- D - I - - 0x03AF18 1C:AF08: 28        .byte $28   ; 
- - - - - - 0x03AF19 1C:AF09: 28        .byte $28   ; 
- D - I - - 0x03AF1A 1C:AF0A: 1C        .byte $1C   ; 
- D - I - - 0x03AF1B 1C:AF0B: 1C        .byte $1C   ; 
- - - - - - 0x03AF1C 1C:AF0C: 20        .byte $20   ; 
- - - - - - 0x03AF1D 1C:AF0D: 20        .byte $20   ; 
; 11
- - - - - - 0x03AF1E 1C:AF0E: 00        .byte $00   ; 
- - - - - - 0x03AF1F 1C:AF0F: 19        .byte $19   ; 
- - - - - - 0x03AF20 1C:AF10: 2C        .byte $2C   ; 
- D - I - - 0x03AF21 1C:AF11: 2C        .byte $2C   ; 
- - - - - - 0x03AF22 1C:AF12: 1E        .byte $1E   ; 
- D - I - - 0x03AF23 1C:AF13: 1E        .byte $1E   ; 
- - - - - - 0x03AF24 1C:AF14: 22        .byte $22   ; 
- - - - - - 0x03AF25 1C:AF15: 22        .byte $22   ; 
; 12
- - - - - - 0x03AF26 1C:AF16: 00        .byte $00   ; 
- - - - - - 0x03AF27 1C:AF17: 19        .byte $19   ; 
- D - I - - 0x03AF28 1C:AF18: 40        .byte $40   ; 
- D - I - - 0x03AF29 1C:AF19: 40        .byte $40   ; 
- - - - - - 0x03AF2A 1C:AF1A: 2C        .byte $2C   ; 
- - - - - - 0x03AF2B 1C:AF1B: 2C        .byte $2C   ; 
- - - - - - 0x03AF2C 1C:AF1C: 30        .byte $30   ; 
- - - - - - 0x03AF2D 1C:AF1D: 30        .byte $30   ; 
; 13
- - - - - - 0x03AF2E 1C:AF1E: 00        .byte $00   ; 
- - - - - - 0x03AF2F 1C:AF1F: 19        .byte $19   ; 
- D - I - - 0x03AF30 1C:AF20: 21        .byte $21   ; 
- D - I - - 0x03AF31 1C:AF21: 2D        .byte $2D   ; 
- - - - - - 0x03AF32 1C:AF22: 28        .byte $28   ; 
- D - I - - 0x03AF33 1C:AF23: 28        .byte $28   ; 
- - - - - - 0x03AF34 1C:AF24: 2C        .byte $2C   ; 
- - - - - - 0x03AF35 1C:AF25: 2C        .byte $2C   ; 
; 14
- - - - - - 0x03AF36 1C:AF26: 00        .byte $00   ; 
- - - - - - 0x03AF37 1C:AF27: 1E        .byte $1E   ; 
- D - I - - 0x03AF38 1C:AF28: 30        .byte $30   ; 
- D - I - - 0x03AF39 1C:AF29: 30        .byte $30   ; 
- - - - - - 0x03AF3A 1C:AF2A: 28        .byte $28   ; 
- - - - - - 0x03AF3B 1C:AF2B: 28        .byte $28   ; 
- - - - - - 0x03AF3C 1C:AF2C: 2C        .byte $2C   ; 
- - - - - - 0x03AF3D 1C:AF2D: 2C        .byte $2C   ; 
; 15
- - - - - - 0x03AF3E 1C:AF2E: 00        .byte $00   ; 
- - - - - - 0x03AF3F 1C:AF2F: 1E        .byte $1E   ; 
- D - I - - 0x03AF40 1C:AF30: 3A        .byte $3A   ; 
- D - I - - 0x03AF41 1C:AF31: 3A        .byte $3A   ; 
- - - - - - 0x03AF42 1C:AF32: 2C        .byte $2C   ; 
- - - - - - 0x03AF43 1C:AF33: 2C        .byte $2C   ; 
- - - - - - 0x03AF44 1C:AF34: 30        .byte $30   ; 
- - - - - - 0x03AF45 1C:AF35: 30        .byte $30   ; 
; 16
- - - - - - 0x03AF46 1C:AF36: 00        .byte $00   ; 
- - - - - - 0x03AF47 1C:AF37: 1E        .byte $1E   ; 
- D - I - - 0x03AF48 1C:AF38: 3F        .byte $3F   ; 
- D - I - - 0x03AF49 1C:AF39: 3F        .byte $3F   ; 
- - - - - - 0x03AF4A 1C:AF3A: 2C        .byte $2C   ; 
- - - - - - 0x03AF4B 1C:AF3B: 2C        .byte $2C   ; 
- - - - - - 0x03AF4C 1C:AF3C: 30        .byte $30   ; 
- - - - - - 0x03AF4D 1C:AF3D: 30        .byte $30   ; 
; 17
- - - - - - 0x03AF4E 1C:AF3E: 00        .byte $00   ; 
- - - - - - 0x03AF4F 1C:AF3F: 1E        .byte $1E   ; 
- D - I - - 0x03AF50 1C:AF40: 43        .byte $43   ; 
- D - I - - 0x03AF51 1C:AF41: 43        .byte $43   ; 
- - - - - - 0x03AF52 1C:AF42: 2C        .byte $2C   ; 
- D - I - - 0x03AF53 1C:AF43: 2C        .byte $2C   ; 
- - - - - - 0x03AF54 1C:AF44: 30        .byte $30   ; 
- - - - - - 0x03AF55 1C:AF45: 30        .byte $30   ; 
; 18
- - - - - - 0x03AF56 1C:AF46: 00        .byte $00   ; 
- - - - - - 0x03AF57 1C:AF47: 1E        .byte $1E   ; 
- D - I - - 0x03AF58 1C:AF48: 4A        .byte $4A   ; 
- D - I - - 0x03AF59 1C:AF49: 4A        .byte $4A   ; 
- - - - - - 0x03AF5A 1C:AF4A: 2F        .byte $2F   ; 
- D - I - - 0x03AF5B 1C:AF4B: 2F        .byte $2F   ; 
- - - - - - 0x03AF5C 1C:AF4C: 35        .byte $35   ; 
- - - - - - 0x03AF5D 1C:AF4D: 35        .byte $35   ; 
; 19
- - - - - - 0x03AF5E 1C:AF4E: 00        .byte $00   ; 
- - - - - - 0x03AF5F 1C:AF4F: 1E        .byte $1E   ; 
- D - I - - 0x03AF60 1C:AF50: 48        .byte $48   ; 
- D - I - - 0x03AF61 1C:AF51: 48        .byte $48   ; 
- - - - - - 0x03AF62 1C:AF52: 2F        .byte $2F   ; 
- D - I - - 0x03AF63 1C:AF53: 2F        .byte $2F   ; 
- - - - - - 0x03AF64 1C:AF54: 35        .byte $35   ; 
- - - - - - 0x03AF65 1C:AF55: 35        .byte $35   ; 
; 1A
- - - - - - 0x03AF66 1C:AF56: 00        .byte $00   ; 
- - - - - - 0x03AF67 1C:AF57: 23        .byte $23   ; 
- D - I - - 0x03AF68 1C:AF58: 32        .byte $32   ; 
- D - I - - 0x03AF69 1C:AF59: 32        .byte $32   ; 
- - - - - - 0x03AF6A 1C:AF5A: 1E        .byte $1E   ; 
- D - I - - 0x03AF6B 1C:AF5B: 1E        .byte $1E   ; 
- - - - - - 0x03AF6C 1C:AF5C: 1E        .byte $1E   ; 
- - - - - - 0x03AF6D 1C:AF5D: 1E        .byte $1E   ; 
; 1B
- - - - - - 0x03AF6E 1C:AF5E: 00        .byte $00   ; 
- - - - - - 0x03AF6F 1C:AF5F: 28        .byte $28   ; 
- D - I - - 0x03AF70 1C:AF60: 44        .byte $44   ; 
- D - I - - 0x03AF71 1C:AF61: 4C        .byte $4C   ; 
- - - - - - 0x03AF72 1C:AF62: 38        .byte $38   ; 
- - - - - - 0x03AF73 1C:AF63: 38        .byte $38   ; 
- - - - - - 0x03AF74 1C:AF64: 3A        .byte $3A   ; 
- - - - - - 0x03AF75 1C:AF65: 3A        .byte $3A   ; 
; 1C
- - - - - - 0x03AF76 1C:AF66: 00        .byte $00   ; 
- - - - - - 0x03AF77 1C:AF67: 28        .byte $28   ; 
- D - I - - 0x03AF78 1C:AF68: 46        .byte $46   ; 
- D - I - - 0x03AF79 1C:AF69: 4E        .byte $4E   ; 
- - - - - - 0x03AF7A 1C:AF6A: 3A        .byte $3A   ; 
- D - I - - 0x03AF7B 1C:AF6B: 3A        .byte $3A   ; 
- - - - - - 0x03AF7C 1C:AF6C: 3F        .byte $3F   ; 
- - - - - - 0x03AF7D 1C:AF6D: 3F        .byte $3F   ; 
; 1D
- - - - - - 0x03AF7E 1C:AF6E: 00        .byte $00   ; 
- - - - - - 0x03AF7F 1C:AF6F: 28        .byte $28   ; 
- D - I - - 0x03AF80 1C:AF70: 49        .byte $49   ; 
- - - - - - 0x03AF81 1C:AF71: 51        .byte $51   ; 
- - - - - - 0x03AF82 1C:AF72: 41        .byte $41   ; 
- D - I - - 0x03AF83 1C:AF73: 41        .byte $41   ; 
- - - - - - 0x03AF84 1C:AF74: 42        .byte $42   ; 
- - - - - - 0x03AF85 1C:AF75: 42        .byte $42   ; 
; 1E
- - - - - - 0x03AF86 1C:AF76: 00        .byte $00   ; 
- - - - - - 0x03AF87 1C:AF77: 28        .byte $28   ; 
- D - I - - 0x03AF88 1C:AF78: 48        .byte $48   ; 
- D - I - - 0x03AF89 1C:AF79: 50        .byte $50   ; 
- - - - - - 0x03AF8A 1C:AF7A: 43        .byte $43   ; 
- - - - - - 0x03AF8B 1C:AF7B: 43        .byte $43   ; 
- - - - - - 0x03AF8C 1C:AF7C: 44        .byte $44   ; 
- - - - - - 0x03AF8D 1C:AF7D: 44        .byte $44   ; 
; 1F
- - - - - - 0x03AF8E 1C:AF7E: 00        .byte $00   ; 
- - - - - - 0x03AF8F 1C:AF7F: 2D        .byte $2D   ; 
- D - I - - 0x03AF90 1C:AF80: 49        .byte $49   ; 
- D - I - - 0x03AF91 1C:AF81: 53        .byte $53   ; 
- D - I - - 0x03AF92 1C:AF82: 43        .byte $43   ; 
- D - I - - 0x03AF93 1C:AF83: 43        .byte $43   ; 
- - - - - - 0x03AF94 1C:AF84: 44        .byte $44   ; 
- - - - - - 0x03AF95 1C:AF85: 44        .byte $44   ; 
; 20
- - - - - - 0x03AF96 1C:AF86: 00        .byte $00   ; 
- - - - - - 0x03AF97 1C:AF87: 2D        .byte $2D   ; 
- - - - - - 0x03AF98 1C:AF88: 5A        .byte $5A   ; 
- D - I - - 0x03AF99 1C:AF89: 64        .byte $64   ; 
- - - - - - 0x03AF9A 1C:AF8A: 53        .byte $53   ; 
- D - I - - 0x03AF9B 1C:AF8B: 53        .byte $53   ; 
- - - - - - 0x03AF9C 1C:AF8C: 50        .byte $50   ; 
- - - - - - 0x03AF9D 1C:AF8D: 50        .byte $50   ; 
; 21
- - - - - - 0x03AF9E 1C:AF8E: 00        .byte $00   ; 
- - - - - - 0x03AF9F 1C:AF8F: 2D        .byte $2D   ; 
- D - I - - 0x03AFA0 1C:AF90: 50        .byte $50   ; 
- D - I - - 0x03AFA1 1C:AF91: 5A        .byte $5A   ; 
- - - - - - 0x03AFA2 1C:AF92: 49        .byte $49   ; 
- D - I - - 0x03AFA3 1C:AF93: 49        .byte $49   ; 
- - - - - - 0x03AFA4 1C:AF94: 4A        .byte $4A   ; 
- - - - - - 0x03AFA5 1C:AF95: 4A        .byte $4A   ; 
; 22
- - - - - - 0x03AFA6 1C:AF96: 00        .byte $00   ; 
- - - - - - 0x03AFA7 1C:AF97: 2D        .byte $2D   ; 
- D - I - - 0x03AFA8 1C:AF98: 50        .byte $50   ; 
- D - I - - 0x03AFA9 1C:AF99: 5A        .byte $5A   ; 
- - - - - - 0x03AFAA 1C:AF9A: 4B        .byte $4B   ; 
- D - I - - 0x03AFAB 1C:AF9B: 4B        .byte $4B   ; 
- - - - - - 0x03AFAC 1C:AF9C: 4C        .byte $4C   ; 
- - - - - - 0x03AFAD 1C:AF9D: 4C        .byte $4C   ; 
; 23
- - - - - - 0x03AFAE 1C:AF9E: 00        .byte $00   ; 
- - - - - - 0x03AFAF 1C:AF9F: 32        .byte $32   ; 
- - - - - - 0x03AFB0 1C:AFA0: 5E        .byte $5E   ; 
- D - I - - 0x03AFB1 1C:AFA1: 66        .byte $66   ; 
- - - - - - 0x03AFB2 1C:AFA2: 5D        .byte $5D   ; 
- - - - - - 0x03AFB3 1C:AFA3: 5D        .byte $5D   ; 
- - - - - - 0x03AFB4 1C:AFA4: 5A        .byte $5A   ; 
- - - - - - 0x03AFB5 1C:AFA5: 5A        .byte $5A   ; 
; 24
- - - - - - 0x03AFB6 1C:AFA6: 00        .byte $00   ; 
- - - - - - 0x03AFB7 1C:AFA7: 32        .byte $32   ; 
- D - I - - 0x03AFB8 1C:AFA8: 52        .byte $52   ; 
- - - - - - 0x03AFB9 1C:AFA9: 6C        .byte $6C   ; 
- - - - - - 0x03AFBA 1C:AFAA: 65        .byte $65   ; 
- D - I - - 0x03AFBB 1C:AFAB: 65        .byte $65   ; 
- - - - - - 0x03AFBC 1C:AFAC: 62        .byte $62   ; 
- - - - - - 0x03AFBD 1C:AFAD: 62        .byte $62   ; 



tbl_AFAE:
; 00
- D - I - - 0x03AFBE 1C:AFAE: 80        .byte $80   ; 
- D - I - - 0x03AFBF 1C:AFAF: 03        .byte $03   ; 
- D - I - - 0x03AFC0 1C:AFB0: 70        .byte $70   ; 
- D - I - - 0x03AFC1 1C:AFB1: 03        .byte $03   ; 
- D - I - - 0x03AFC2 1C:AFB2: 40        .byte $40   ; 
- D - I - - 0x03AFC3 1C:AFB3: 04        .byte $04   ; 
- D - I - - 0x03AFC4 1C:AFB4: A5        .byte $A5   ; 
- D - I - - 0x03AFC5 1C:AFB5: 03        .byte $03   ; 
- D - I - - 0x03AFC6 1C:AFB6: 86        .byte $86   ; 
- D - I - - 0x03AFC7 1C:AFB7: 03        .byte $03   ; 
- D - I - - 0x03AFC8 1C:AFB8: D0        .byte $D0   ; 
- D - I - - 0x03AFC9 1C:AFB9: 02        .byte $02   ; 
; 01
- D - I - - 0x03AFCA 1C:AFBA: 90        .byte $90   ; 
- D - I - - 0x03AFCB 1C:AFBB: 03        .byte $03   ; 
- D - I - - 0x03AFCC 1C:AFBC: 80        .byte $80   ; 
- D - I - - 0x03AFCD 1C:AFBD: 03        .byte $03   ; 
- D - I - - 0x03AFCE 1C:AFBE: 50        .byte $50   ; 
- D - I - - 0x03AFCF 1C:AFBF: 04        .byte $04   ; 
- D - I - - 0x03AFD0 1C:AFC0: B5        .byte $B5   ; 
- D - I - - 0x03AFD1 1C:AFC1: 03        .byte $03   ; 
- D - I - - 0x03AFD2 1C:AFC2: 96        .byte $96   ; 
- D - I - - 0x03AFD3 1C:AFC3: 03        .byte $03   ; 
- D - I - - 0x03AFD4 1C:AFC4: E0        .byte $E0   ; 
- D - I - - 0x03AFD5 1C:AFC5: 02        .byte $02   ; 
; 02
- D - I - - 0x03AFD6 1C:AFC6: A0        .byte $A0   ; 
- D - I - - 0x03AFD7 1C:AFC7: 03        .byte $03   ; 
- D - I - - 0x03AFD8 1C:AFC8: 90        .byte $90   ; 
- D - I - - 0x03AFD9 1C:AFC9: 03        .byte $03   ; 
- D - I - - 0x03AFDA 1C:AFCA: 60        .byte $60   ; 
- D - I - - 0x03AFDB 1C:AFCB: 04        .byte $04   ; 
- D - I - - 0x03AFDC 1C:AFCC: C5        .byte $C5   ; 
- D - I - - 0x03AFDD 1C:AFCD: 03        .byte $03   ; 
- D - I - - 0x03AFDE 1C:AFCE: A6        .byte $A6   ; 
- D - I - - 0x03AFDF 1C:AFCF: 03        .byte $03   ; 
- D - I - - 0x03AFE0 1C:AFD0: F0        .byte $F0   ; 
- D - I - - 0x03AFE1 1C:AFD1: 02        .byte $02   ; 
; 03
- D - I - - 0x03AFE2 1C:AFD2: B0        .byte $B0   ; 
- D - I - - 0x03AFE3 1C:AFD3: 03        .byte $03   ; 
- D - I - - 0x03AFE4 1C:AFD4: A0        .byte $A0   ; 
- D - I - - 0x03AFE5 1C:AFD5: 03        .byte $03   ; 
- D - I - - 0x03AFE6 1C:AFD6: 70        .byte $70   ; 
- D - I - - 0x03AFE7 1C:AFD7: 04        .byte $04   ; 
- D - I - - 0x03AFE8 1C:AFD8: D5        .byte $D5   ; 
- D - I - - 0x03AFE9 1C:AFD9: 03        .byte $03   ; 
- D - I - - 0x03AFEA 1C:AFDA: B6        .byte $B6   ; 
- D - I - - 0x03AFEB 1C:AFDB: 03        .byte $03   ; 
- D - I - - 0x03AFEC 1C:AFDC: 00        .byte $00   ; 
- D - I - - 0x03AFED 1C:AFDD: 03        .byte $03   ; 
; 04
- D - I - - 0x03AFEE 1C:AFDE: 80        .byte $80   ; 
- D - I - - 0x03AFEF 1C:AFDF: 03        .byte $03   ; 
- D - I - - 0x03AFF0 1C:AFE0: 90        .byte $90   ; 
- D - I - - 0x03AFF1 1C:AFE1: 03        .byte $03   ; 
- D - I - - 0x03AFF2 1C:AFE2: 40        .byte $40   ; 
- D - I - - 0x03AFF3 1C:AFE3: 04        .byte $04   ; 
- D - I - - 0x03AFF4 1C:AFE4: A5        .byte $A5   ; 
- D - I - - 0x03AFF5 1C:AFE5: 03        .byte $03   ; 
- D - I - - 0x03AFF6 1C:AFE6: 86        .byte $86   ; 
- D - I - - 0x03AFF7 1C:AFE7: 03        .byte $03   ; 
- D - I - - 0x03AFF8 1C:AFE8: D0        .byte $D0   ; 
- D - I - - 0x03AFF9 1C:AFE9: 02        .byte $02   ; 
; 05
- D - I - - 0x03AFFA 1C:AFEA: 80        .byte $80   ; 
- D - I - - 0x03AFFB 1C:AFEB: 03        .byte $03   ; 
- D - I - - 0x03AFFC 1C:AFEC: A0        .byte $A0   ; 
- D - I - - 0x03AFFD 1C:AFED: 03        .byte $03   ; 
- D - I - - 0x03AFFE 1C:AFEE: 40        .byte $40   ; 
- D - I - - 0x03AFFF 1C:AFEF: 04        .byte $04   ; 
- D - I - - 0x03B000 1C:AFF0: A5        .byte $A5   ; 
- D - I - - 0x03B001 1C:AFF1: 03        .byte $03   ; 
- D - I - - 0x03B002 1C:AFF2: 86        .byte $86   ; 
- D - I - - 0x03B003 1C:AFF3: 03        .byte $03   ; 
- D - I - - 0x03B004 1C:AFF4: D0        .byte $D0   ; 
- D - I - - 0x03B005 1C:AFF5: 02        .byte $02   ; 
; 06
- D - I - - 0x03B006 1C:AFF6: 80        .byte $80   ; 
- D - I - - 0x03B007 1C:AFF7: 03        .byte $03   ; 
- D - I - - 0x03B008 1C:AFF8: 70        .byte $70   ; 
- D - I - - 0x03B009 1C:AFF9: 03        .byte $03   ; 
- D - I - - 0x03B00A 1C:AFFA: 50        .byte $50   ; 
- D - I - - 0x03B00B 1C:AFFB: 04        .byte $04   ; 
- D - I - - 0x03B00C 1C:AFFC: A5        .byte $A5   ; 
- D - I - - 0x03B00D 1C:AFFD: 03        .byte $03   ; 
- D - I - - 0x03B00E 1C:AFFE: 86        .byte $86   ; 
- D - I - - 0x03B00F 1C:AFFF: 03        .byte $03   ; 
- D - I - - 0x03B010 1C:B000: D0        .byte $D0   ; 
- D - I - - 0x03B011 1C:B001: 02        .byte $02   ; 
; 07
- D - I - - 0x03B012 1C:B002: 80        .byte $80   ; 
- D - I - - 0x03B013 1C:B003: 03        .byte $03   ; 
- D - I - - 0x03B014 1C:B004: 70        .byte $70   ; 
- D - I - - 0x03B015 1C:B005: 03        .byte $03   ; 
- D - I - - 0x03B016 1C:B006: 70        .byte $70   ; 
- D - I - - 0x03B017 1C:B007: 04        .byte $04   ; 
- D - I - - 0x03B018 1C:B008: A5        .byte $A5   ; 
- D - I - - 0x03B019 1C:B009: 03        .byte $03   ; 
- D - I - - 0x03B01A 1C:B00A: 86        .byte $86   ; 
- D - I - - 0x03B01B 1C:B00B: 03        .byte $03   ; 
- D - I - - 0x03B01C 1C:B00C: D0        .byte $D0   ; 
- D - I - - 0x03B01D 1C:B00D: 02        .byte $02   ; 
; 08
- D - I - - 0x03B01E 1C:B00E: A0        .byte $A0   ; 
- D - I - - 0x03B01F 1C:B00F: 03        .byte $03   ; 
- D - I - - 0x03B020 1C:B010: 70        .byte $70   ; 
- D - I - - 0x03B021 1C:B011: 03        .byte $03   ; 
- D - I - - 0x03B022 1C:B012: 40        .byte $40   ; 
- D - I - - 0x03B023 1C:B013: 04        .byte $04   ; 
- D - I - - 0x03B024 1C:B014: C5        .byte $C5   ; 
- D - I - - 0x03B025 1C:B015: 03        .byte $03   ; 
- D - I - - 0x03B026 1C:B016: 86        .byte $86   ; 
- D - I - - 0x03B027 1C:B017: 03        .byte $03   ; 
- D - I - - 0x03B028 1C:B018: D0        .byte $D0   ; 
- D - I - - 0x03B029 1C:B019: 02        .byte $02   ; 
; 09
- D - I - - 0x03B02A 1C:B01A: C0        .byte $C0   ; 
- D - I - - 0x03B02B 1C:B01B: 03        .byte $03   ; 
- D - I - - 0x03B02C 1C:B01C: 70        .byte $70   ; 
- D - I - - 0x03B02D 1C:B01D: 03        .byte $03   ; 
- D - I - - 0x03B02E 1C:B01E: 40        .byte $40   ; 
- D - I - - 0x03B02F 1C:B01F: 04        .byte $04   ; 
- D - I - - 0x03B030 1C:B020: E5        .byte $E5   ; 
- D - I - - 0x03B031 1C:B021: 03        .byte $03   ; 
- D - I - - 0x03B032 1C:B022: 86        .byte $86   ; 
- D - I - - 0x03B033 1C:B023: 03        .byte $03   ; 
- D - I - - 0x03B034 1C:B024: D0        .byte $D0   ; 
- D - I - - 0x03B035 1C:B025: 02        .byte $02   ; 
; 0A
- D - I - - 0x03B036 1C:B026: A0        .byte $A0   ; 
- D - I - - 0x03B037 1C:B027: 03        .byte $03   ; 
- D - I - - 0x03B038 1C:B028: D8        .byte $D8   ; 
- D - I - - 0x03B039 1C:B029: 03        .byte $03   ; 
- D - I - - 0x03B03A 1C:B02A: 40        .byte $40   ; 
- D - I - - 0x03B03B 1C:B02B: 04        .byte $04   ; 
- D - I - - 0x03B03C 1C:B02C: A5        .byte $A5   ; 
- D - I - - 0x03B03D 1C:B02D: 03        .byte $03   ; 
- D - I - - 0x03B03E 1C:B02E: 86        .byte $86   ; 
- D - I - - 0x03B03F 1C:B02F: 03        .byte $03   ; 
- D - I - - 0x03B040 1C:B030: D0        .byte $D0   ; 
- D - I - - 0x03B041 1C:B031: 02        .byte $02   ; 
; 0B
- D - I - - 0x03B042 1C:B032: C0        .byte $C0   ; 
- D - I - - 0x03B043 1C:B033: 04        .byte $04   ; 
- D - I - - 0x03B044 1C:B034: 70        .byte $70   ; 
- D - I - - 0x03B045 1C:B035: 03        .byte $03   ; 
- D - I - - 0x03B046 1C:B036: C0        .byte $C0   ; 
- D - I - - 0x03B047 1C:B037: 04        .byte $04   ; 
- D - I - - 0x03B048 1C:B038: 45        .byte $45   ; 
- D - I - - 0x03B049 1C:B039: 04        .byte $04   ; 
- D - I - - 0x03B04A 1C:B03A: 86        .byte $86   ; 
- D - I - - 0x03B04B 1C:B03B: 03        .byte $03   ; 
- D - I - - 0x03B04C 1C:B03C: D0        .byte $D0   ; 
- D - I - - 0x03B04D 1C:B03D: 02        .byte $02   ; 
; 0C
- D - I - - 0x03B04E 1C:B03E: 80        .byte $80   ; 
- D - I - - 0x03B04F 1C:B03F: 05        .byte $05   ; 
- D - I - - 0x03B050 1C:B040: 80        .byte $80   ; 
- D - I - - 0x03B051 1C:B041: 03        .byte $03   ; 
- D - I - - 0x03B052 1C:B042: C0        .byte $C0   ; 
- D - I - - 0x03B053 1C:B043: 04        .byte $04   ; 
- D - I - - 0x03B054 1C:B044: A5        .byte $A5   ; 
- D - I - - 0x03B055 1C:B045: 03        .byte $03   ; 
- D - I - - 0x03B056 1C:B046: 86        .byte $86   ; 
- D - I - - 0x03B057 1C:B047: 03        .byte $03   ; 
- D - I - - 0x03B058 1C:B048: D0        .byte $D0   ; 
- D - I - - 0x03B059 1C:B049: 02        .byte $02   ; 
; 0D
- - - - - - 0x03B05A 1C:B04A: A0        .byte $A0   ; 
- - - - - - 0x03B05B 1C:B04B: 03        .byte $03   ; 
- - - - - - 0x03B05C 1C:B04C: 70        .byte $70   ; 
- - - - - - 0x03B05D 1C:B04D: 03        .byte $03   ; 
- - - - - - 0x03B05E 1C:B04E: 40        .byte $40   ; 
- - - - - - 0x03B05F 1C:B04F: 04        .byte $04   ; 
- - - - - - 0x03B060 1C:B050: A5        .byte $A5   ; 
- - - - - - 0x03B061 1C:B051: 03        .byte $03   ; 
- - - - - - 0x03B062 1C:B052: 86        .byte $86   ; 
- - - - - - 0x03B063 1C:B053: 03        .byte $03   ; 
- - - - - - 0x03B064 1C:B054: D0        .byte $D0   ; 
- - - - - - 0x03B065 1C:B055: 02        .byte $02   ; 
; 0E
- D - I - - 0x03B066 1C:B056: 40        .byte $40   ; 
- D - I - - 0x03B067 1C:B057: 05        .byte $05   ; 
- D - I - - 0x03B068 1C:B058: 70        .byte $70   ; 
- D - I - - 0x03B069 1C:B059: 03        .byte $03   ; 
- D - I - - 0x03B06A 1C:B05A: 60        .byte $60   ; 
- D - I - - 0x03B06B 1C:B05B: 04        .byte $04   ; 
- D - I - - 0x03B06C 1C:B05C: A5        .byte $A5   ; 
- D - I - - 0x03B06D 1C:B05D: 03        .byte $03   ; 
- D - I - - 0x03B06E 1C:B05E: 86        .byte $86   ; 
- D - I - - 0x03B06F 1C:B05F: 03        .byte $03   ; 
- D - I - - 0x03B070 1C:B060: D0        .byte $D0   ; 
- D - I - - 0x03B071 1C:B061: 02        .byte $02   ; 
; 0F
- D - I - - 0x03B072 1C:B062: C0        .byte $C0   ; 
- D - I - - 0x03B073 1C:B063: 04        .byte $04   ; 
- D - I - - 0x03B074 1C:B064: D0        .byte $D0   ; 
- D - I - - 0x03B075 1C:B065: 03        .byte $03   ; 
- D - I - - 0x03B076 1C:B066: 20        .byte $20   ; 
- D - I - - 0x03B077 1C:B067: 05        .byte $05   ; 
- D - I - - 0x03B078 1C:B068: 95        .byte $95   ; 
- D - I - - 0x03B079 1C:B069: 04        .byte $04   ; 
- D - I - - 0x03B07A 1C:B06A: 96        .byte $96   ; 
- D - I - - 0x03B07B 1C:B06B: 03        .byte $03   ; 
- D - I - - 0x03B07C 1C:B06C: E0        .byte $E0   ; 
- D - I - - 0x03B07D 1C:B06D: 02        .byte $02   ; 
; 10
- D - I - - 0x03B07E 1C:B06E: A0        .byte $A0   ; 
- D - I - - 0x03B07F 1C:B06F: 04        .byte $04   ; 
- D - I - - 0x03B080 1C:B070: 80        .byte $80   ; 
- D - I - - 0x03B081 1C:B071: 03        .byte $03   ; 
- D - I - - 0x03B082 1C:B072: 50        .byte $50   ; 
- D - I - - 0x03B083 1C:B073: 04        .byte $04   ; 
- D - I - - 0x03B084 1C:B074: 40        .byte $40   ; 
- D - I - - 0x03B085 1C:B075: 04        .byte $04   ; 
- - - - - - 0x03B086 1C:B076: 86        .byte $86   ; 
- - - - - - 0x03B087 1C:B077: 03        .byte $03   ; 
- D - I - - 0x03B088 1C:B078: D0        .byte $D0   ; 
- D - I - - 0x03B089 1C:B079: 02        .byte $02   ; 
; 11
- D - I - - 0x03B08A 1C:B07A: 80        .byte $80   ; 
- D - I - - 0x03B08B 1C:B07B: 05        .byte $05   ; 
- D - I - - 0x03B08C 1C:B07C: 80        .byte $80   ; 
- D - I - - 0x03B08D 1C:B07D: 03        .byte $03   ; 
- D - I - - 0x03B08E 1C:B07E: 20        .byte $20   ; 
- D - I - - 0x03B08F 1C:B07F: 05        .byte $05   ; 
- D - I - - 0x03B090 1C:B080: A5        .byte $A5   ; 
- D - I - - 0x03B091 1C:B081: 03        .byte $03   ; 
- D - I - - 0x03B092 1C:B082: 86        .byte $86   ; 
- D - I - - 0x03B093 1C:B083: 03        .byte $03   ; 
- D - I - - 0x03B094 1C:B084: D0        .byte $D0   ; 
- D - I - - 0x03B095 1C:B085: 02        .byte $02   ; 
; 12
- - - - - - 0x03B096 1C:B086: 80        .byte $80   ; 
- - - - - - 0x03B097 1C:B087: 03        .byte $03   ; 
- - - - - - 0x03B098 1C:B088: 00        .byte $00   ; 
- - - - - - 0x03B099 1C:B089: 04        .byte $04   ; 
- - - - - - 0x03B09A 1C:B08A: 60        .byte $60   ; 
- - - - - - 0x03B09B 1C:B08B: 05        .byte $05   ; 
- - - - - - 0x03B09C 1C:B08C: A5        .byte $A5   ; 
- - - - - - 0x03B09D 1C:B08D: 03        .byte $03   ; 
- - - - - - 0x03B09E 1C:B08E: 86        .byte $86   ; 
- - - - - - 0x03B09F 1C:B08F: 03        .byte $03   ; 
- - - - - - 0x03B0A0 1C:B090: D0        .byte $D0   ; 
- - - - - - 0x03B0A1 1C:B091: 02        .byte $02   ; 
; 13
- D - I - - 0x03B0A2 1C:B092: 60        .byte $60   ; 
- D - I - - 0x03B0A3 1C:B093: 04        .byte $04   ; 
- D - I - - 0x03B0A4 1C:B094: 50        .byte $50   ; 
- D - I - - 0x03B0A5 1C:B095: 04        .byte $04   ; 
- D - I - - 0x03B0A6 1C:B096: D0        .byte $D0   ; 
- D - I - - 0x03B0A7 1C:B097: 04        .byte $04   ; 
- D - I - - 0x03B0A8 1C:B098: 95        .byte $95   ; 
- D - I - - 0x03B0A9 1C:B099: 04        .byte $04   ; 
- D - I - - 0x03B0AA 1C:B09A: 96        .byte $96   ; 
- D - I - - 0x03B0AB 1C:B09B: 03        .byte $03   ; 
- D - I - - 0x03B0AC 1C:B09C: E0        .byte $E0   ; 
- D - I - - 0x03B0AD 1C:B09D: 02        .byte $02   ; 
; 14
- D - I - - 0x03B0AE 1C:B09E: 60        .byte $60   ; 
- D - I - - 0x03B0AF 1C:B09F: 04        .byte $04   ; 
- D - I - - 0x03B0B0 1C:B0A0: 00        .byte $00   ; 
- D - I - - 0x03B0B1 1C:B0A1: 0A        .byte $0A   ; 
- D - I - - 0x03B0B2 1C:B0A2: D0        .byte $D0   ; 
- D - I - - 0x03B0B3 1C:B0A3: 04        .byte $04   ; 
- D - I - - 0x03B0B4 1C:B0A4: 95        .byte $95   ; 
- D - I - - 0x03B0B5 1C:B0A5: 04        .byte $04   ; 
- - - - - - 0x03B0B6 1C:B0A6: 96        .byte $96   ; 
- - - - - - 0x03B0B7 1C:B0A7: 03        .byte $03   ; 
- - - - - - 0x03B0B8 1C:B0A8: E0        .byte $E0   ; 
- - - - - - 0x03B0B9 1C:B0A9: 02        .byte $02   ; 
; 15
- D - I - - 0x03B0BA 1C:B0AA: A0        .byte $A0   ; 
- D - I - - 0x03B0BB 1C:B0AB: 04        .byte $04   ; 
- D - I - - 0x03B0BC 1C:B0AC: 00        .byte $00   ; 
- D - I - - 0x03B0BD 1C:B0AD: 06        .byte $06   ; 
- D - I - - 0x03B0BE 1C:B0AE: F0        .byte $F0   ; 
- D - I - - 0x03B0BF 1C:B0AF: 00        .byte $00   ; 
- D - I - - 0x03B0C0 1C:B0B0: B5        .byte $B5   ; 
- D - I - - 0x03B0C1 1C:B0B1: 04        .byte $04   ; 
- - - - - - 0x03B0C2 1C:B0B2: 86        .byte $86   ; 
- - - - - - 0x03B0C3 1C:B0B3: 03        .byte $03   ; 
- - - - - - 0x03B0C4 1C:B0B4: D0        .byte $D0   ; 
- - - - - - 0x03B0C5 1C:B0B5: 02        .byte $02   ; 
; 16
- - - - - - 0x03B0C6 1C:B0B6: 00        .byte $00   ; 
- - - - - - 0x03B0C7 1C:B0B7: 06        .byte $06   ; 
- D - I - - 0x03B0C8 1C:B0B8: 00        .byte $00   ; 
- D - I - - 0x03B0C9 1C:B0B9: 06        .byte $06   ; 
- D - I - - 0x03B0CA 1C:B0BA: 00        .byte $00   ; 
- D - I - - 0x03B0CB 1C:B0BB: 08        .byte $08   ; 
- - - - - - 0x03B0CC 1C:B0BC: 00        .byte $00   ; 
- - - - - - 0x03B0CD 1C:B0BD: 08        .byte $08   ; 
- - - - - - 0x03B0CE 1C:B0BE: 86        .byte $86   ; 
- - - - - - 0x03B0CF 1C:B0BF: 03        .byte $03   ; 
- - - - - - 0x03B0D0 1C:B0C0: D0        .byte $D0   ; 
- - - - - - 0x03B0D1 1C:B0C1: 02        .byte $02   ; 
; 17
- - - - - - 0x03B0D2 1C:B0C2: 90        .byte $90   ; 
- - - - - - 0x03B0D3 1C:B0C3: 03        .byte $03   ; 
- D - I - - 0x03B0D4 1C:B0C4: 00        .byte $00   ; 
- D - I - - 0x03B0D5 1C:B0C5: 08        .byte $08   ; 
- - - - - - 0x03B0D6 1C:B0C6: 50        .byte $50   ; 
- - - - - - 0x03B0D7 1C:B0C7: 04        .byte $04   ; 
- - - - - - 0x03B0D8 1C:B0C8: A5        .byte $A5   ; 
- - - - - - 0x03B0D9 1C:B0C9: 03        .byte $03   ; 
- - - - - - 0x03B0DA 1C:B0CA: 96        .byte $96   ; 
- - - - - - 0x03B0DB 1C:B0CB: 03        .byte $03   ; 
- - - - - - 0x03B0DC 1C:B0CC: E0        .byte $E0   ; 
- - - - - - 0x03B0DD 1C:B0CD: 02        .byte $02   ; 
; 18
- D - I - - 0x03B0DE 1C:B0CE: 80        .byte $80   ; 
- D - I - - 0x03B0DF 1C:B0CF: 05        .byte $05   ; 
- D - I - - 0x03B0E0 1C:B0D0: 80        .byte $80   ; 
- D - I - - 0x03B0E1 1C:B0D1: 05        .byte $05   ; 
- D - I - - 0x03B0E2 1C:B0D2: D0        .byte $D0   ; 
- D - I - - 0x03B0E3 1C:B0D3: 04        .byte $04   ; 
- D - I - - 0x03B0E4 1C:B0D4: 95        .byte $95   ; 
- D - I - - 0x03B0E5 1C:B0D5: 04        .byte $04   ; 
- D - I - - 0x03B0E6 1C:B0D6: 96        .byte $96   ; 
- D - I - - 0x03B0E7 1C:B0D7: 03        .byte $03   ; 
- - - - - - 0x03B0E8 1C:B0D8: E0        .byte $E0   ; 
- - - - - - 0x03B0E9 1C:B0D9: 02        .byte $02   ; 
; 19
- D - I - - 0x03B0EA 1C:B0DA: 50        .byte $50   ; 
- D - I - - 0x03B0EB 1C:B0DB: 04        .byte $04   ; 
- D - I - - 0x03B0EC 1C:B0DC: 00        .byte $00   ; 
- D - I - - 0x03B0ED 1C:B0DD: 04        .byte $04   ; 
- D - I - - 0x03B0EE 1C:B0DE: D0        .byte $D0   ; 
- D - I - - 0x03B0EF 1C:B0DF: 04        .byte $04   ; 
- D - I - - 0x03B0F0 1C:B0E0: 95        .byte $95   ; 
- D - I - - 0x03B0F1 1C:B0E1: 04        .byte $04   ; 
- D - I - - 0x03B0F2 1C:B0E2: 86        .byte $86   ; 
- D - I - - 0x03B0F3 1C:B0E3: 03        .byte $03   ; 
- D - I - - 0x03B0F4 1C:B0E4: D0        .byte $D0   ; 
- D - I - - 0x03B0F5 1C:B0E5: 02        .byte $02   ; 
; 1A
- D - I - - 0x03B0F6 1C:B0E6: 80        .byte $80   ; 
- D - I - - 0x03B0F7 1C:B0E7: 04        .byte $04   ; 
- D - I - - 0x03B0F8 1C:B0E8: 00        .byte $00   ; 
- D - I - - 0x03B0F9 1C:B0E9: 04        .byte $04   ; 
- D - I - - 0x03B0FA 1C:B0EA: 80        .byte $80   ; 
- D - I - - 0x03B0FB 1C:B0EB: 04        .byte $04   ; 
- D - I - - 0x03B0FC 1C:B0EC: 25        .byte $25   ; 
- D - I - - 0x03B0FD 1C:B0ED: 04        .byte $04   ; 
- - - - - - 0x03B0FE 1C:B0EE: 86        .byte $86   ; 
- - - - - - 0x03B0FF 1C:B0EF: 03        .byte $03   ; 
- - - - - - 0x03B100 1C:B0F0: D0        .byte $D0   ; 
- - - - - - 0x03B101 1C:B0F1: 02        .byte $02   ; 
; 1B
- D - I - - 0x03B102 1C:B0F2: 00        .byte $00   ; 
- D - I - - 0x03B103 1C:B0F3: 04        .byte $04   ; 
- D - I - - 0x03B104 1C:B0F4: 00        .byte $00   ; 
- D - I - - 0x03B105 1C:B0F5: 08        .byte $08   ; 
- D - I - - 0x03B106 1C:B0F6: 80        .byte $80   ; 
- D - I - - 0x03B107 1C:B0F7: 04        .byte $04   ; 
- D - I - - 0x03B108 1C:B0F8: A5        .byte $A5   ; 
- D - I - - 0x03B109 1C:B0F9: 03        .byte $03   ; 
- - - - - - 0x03B10A 1C:B0FA: 86        .byte $86   ; 
- - - - - - 0x03B10B 1C:B0FB: 03        .byte $03   ; 
- D - I - - 0x03B10C 1C:B0FC: D0        .byte $D0   ; 
- D - I - - 0x03B10D 1C:B0FD: 02        .byte $02   ; 
; 1C
- D - I - - 0x03B10E 1C:B0FE: 00        .byte $00   ; 
- D - I - - 0x03B10F 1C:B0FF: 04        .byte $04   ; 
- D - I - - 0x03B110 1C:B100: 00        .byte $00   ; 
- D - I - - 0x03B111 1C:B101: 04        .byte $04   ; 
- D - I - - 0x03B112 1C:B102: 30        .byte $30   ; 
- D - I - - 0x03B113 1C:B103: 04        .byte $04   ; 
- D - I - - 0x03B114 1C:B104: A5        .byte $A5   ; 
- D - I - - 0x03B115 1C:B105: 03        .byte $03   ; 
- - - - - - 0x03B116 1C:B106: 86        .byte $86   ; 
- - - - - - 0x03B117 1C:B107: 03        .byte $03   ; 
- D - I - - 0x03B118 1C:B108: D0        .byte $D0   ; 
- D - I - - 0x03B119 1C:B109: 02        .byte $02   ; 
; 1D
- D - I - - 0x03B11A 1C:B10A: C0        .byte $C0   ; 
- D - I - - 0x03B11B 1C:B10B: 03        .byte $03   ; 
- D - I - - 0x03B11C 1C:B10C: 00        .byte $00   ; 
- D - I - - 0x03B11D 1C:B10D: 04        .byte $04   ; 
- D - I - - 0x03B11E 1C:B10E: 80        .byte $80   ; 
- D - I - - 0x03B11F 1C:B10F: 04        .byte $04   ; 
- D - I - - 0x03B120 1C:B110: A5        .byte $A5   ; 
- D - I - - 0x03B121 1C:B111: 03        .byte $03   ; 
- - - - - - 0x03B122 1C:B112: 86        .byte $86   ; 
- - - - - - 0x03B123 1C:B113: 03        .byte $03   ; 
- D - I - - 0x03B124 1C:B114: D0        .byte $D0   ; 
- D - I - - 0x03B125 1C:B115: 02        .byte $02   ; 
; 1E
- - - - - - 0x03B126 1C:B116: 50        .byte $50   ; 
- - - - - - 0x03B127 1C:B117: 04        .byte $04   ; 
- - - - - - 0x03B128 1C:B118: 00        .byte $00   ; 
- - - - - - 0x03B129 1C:B119: 04        .byte $04   ; 
- - - - - - 0x03B12A 1C:B11A: D0        .byte $D0   ; 
- - - - - - 0x03B12B 1C:B11B: 04        .byte $04   ; 
- - - - - - 0x03B12C 1C:B11C: 95        .byte $95   ; 
- - - - - - 0x03B12D 1C:B11D: 04        .byte $04   ; 
- - - - - - 0x03B12E 1C:B11E: 86        .byte $86   ; 
- - - - - - 0x03B12F 1C:B11F: 03        .byte $03   ; 
- - - - - - 0x03B130 1C:B120: D0        .byte $D0   ; 
- - - - - - 0x03B131 1C:B121: 02        .byte $02   ; 
; 1F
- - - - - - 0x03B132 1C:B122: 50        .byte $50   ; 
- - - - - - 0x03B133 1C:B123: 04        .byte $04   ; 
- - - - - - 0x03B134 1C:B124: 00        .byte $00   ; 
- - - - - - 0x03B135 1C:B125: 04        .byte $04   ; 
- - - - - - 0x03B136 1C:B126: D0        .byte $D0   ; 
- - - - - - 0x03B137 1C:B127: 04        .byte $04   ; 
- - - - - - 0x03B138 1C:B128: 95        .byte $95   ; 
- - - - - - 0x03B139 1C:B129: 04        .byte $04   ; 
- - - - - - 0x03B13A 1C:B12A: 86        .byte $86   ; 
- - - - - - 0x03B13B 1C:B12B: 03        .byte $03   ; 
- - - - - - 0x03B13C 1C:B12C: D0        .byte $D0   ; 
- - - - - - 0x03B13D 1C:B12D: 02        .byte $02   ; 



tbl_B12E:
; 00
- D - I - - 0x03B13E 1C:B12E: 12        .byte $12
- D - I - - 0x03B13F 1C:B12F: 22        .byte $22
- D - I - - 0x03B140 1C:B130: 22        .byte $22
- D - I - - 0x03B141 1C:B131: 43        .byte $43
- D - I - - 0x03B142 1C:B132: 11        .byte $11
- D - I - - 0x03B143 1C:B133: 23        .byte $23
- D - I - - 0x03B144 1C:B134: 33        .byte $33
- D - I - - 0x03B145 1C:B135: 34        .byte $34
- D - I - - 0x03B146 1C:B136: 11        .byte $11
- D - I - - 0x03B147 1C:B137: 13        .byte $13
- D - I - - 0x03B148 1C:B138: 32        .byte $32
- D - I - - 0x03B149 1C:B139: 43        .byte $43
- D - I - - 0x03B14A 1C:B13A: 11        .byte $11
- D - I - - 0x03B14B 1C:B13B: 11        .byte $11
- D - I - - 0x03B14C 1C:B13C: 33        .byte $33
- D - I - - 0x03B14D 1C:B13D: 23        .byte $23
- D - I - - 0x03B14E 1C:B13E: 22        .byte $22
- D - I - - 0x03B14F 1C:B13F: 23        .byte $23
- D - I - - 0x03B150 1C:B140: 34        .byte $34
- D - I - - 0x03B151 1C:B141: 33        .byte $33
- D - I - - 0x03B152 1C:B142: 22        .byte $22
- D - I - - 0x03B153 1C:B143: 22        .byte $22
- D - I - - 0x03B154 1C:B144: 33        .byte $33
- D - I - - 0x03B155 1C:B145: 34        .byte $34
- D - I - - 0x03B156 1C:B146: 00        .byte $00
- D - I - - 0x03B157 1C:B147: 22        .byte $22
- D - I - - 0x03B158 1C:B148: 21        .byte $21
- D - I - - 0x03B159 1C:B149: 33        .byte $33
- D - I - - 0x03B15A 1C:B14A: 00        .byte $00
- D - I - - 0x03B15B 1C:B14B: 00        .byte $00
- D - I - - 0x03B15C 1C:B14C: 02        .byte $02
- D - I - - 0x03B15D 1C:B14D: 31        .byte $31
- D - I - - 0x03B15E 1C:B14E: 00        .byte $00
- D - I - - 0x03B15F 1C:B14F: 00        .byte $00
- D - I - - 0x03B160 1C:B150: 00        .byte $00
- D - I - - 0x03B161 1C:B151: 31        .byte $31
- D - I - - 0x03B162 1C:B152: 11        .byte $11
- D - I - - 0x03B163 1C:B153: 11        .byte $11
- D - I - - 0x03B164 1C:B154: 11        .byte $11
- D - I - - 0x03B165 1C:B155: 02        .byte $02
- D - I - - 0x03B166 1C:B156: 11        .byte $11
- D - I - - 0x03B167 1C:B157: 11        .byte $11
- D - I - - 0x03B168 1C:B158: 12        .byte $12
- D - I - - 0x03B169 1C:B159: 20        .byte $20
- D - I - - 0x03B16A 1C:B15A: 11        .byte $11
- D - I - - 0x03B16B 1C:B15B: 11        .byte $11
- D - I - - 0x03B16C 1C:B15C: 11        .byte $11
- D - I - - 0x03B16D 1C:B15D: 12        .byte $12
; 01
- D - I - - 0x03B16E 1C:B15E: 22        .byte $22
- D - I - - 0x03B16F 1C:B15F: 22        .byte $22
- D - I - - 0x03B170 1C:B160: 22        .byte $22
- D - I - - 0x03B171 1C:B161: 43        .byte $43
- D - I - - 0x03B172 1C:B162: 22        .byte $22
- D - I - - 0x03B173 1C:B163: 22        .byte $22
- D - I - - 0x03B174 1C:B164: 13        .byte $13
- D - I - - 0x03B175 1C:B165: 34        .byte $34
- D - I - - 0x03B176 1C:B166: 11        .byte $11
- D - I - - 0x03B177 1C:B167: 22        .byte $22
- D - I - - 0x03B178 1C:B168: 22        .byte $22
- D - I - - 0x03B179 1C:B169: 43        .byte $43
- D - I - - 0x03B17A 1C:B16A: 11        .byte $11
- D - I - - 0x03B17B 1C:B16B: 13        .byte $13
- D - I - - 0x03B17C 1C:B16C: 22        .byte $22
- D - I - - 0x03B17D 1C:B16D: 23        .byte $23
- D - I - - 0x03B17E 1C:B16E: 22        .byte $22
- D - I - - 0x03B17F 1C:B16F: 22        .byte $22
- D - I - - 0x03B180 1C:B170: 23        .byte $23
- D - I - - 0x03B181 1C:B171: 43        .byte $43
- D - I - - 0x03B182 1C:B172: 22        .byte $22
- D - I - - 0x03B183 1C:B173: 22        .byte $22
- D - I - - 0x03B184 1C:B174: 22        .byte $22
- D - I - - 0x03B185 1C:B175: 34        .byte $34
- - - - - - 0x03B186 1C:B176: 00        .byte $00
- - - - - - 0x03B187 1C:B177: 22        .byte $22
- - - - - - 0x03B188 1C:B178: 21        .byte $21
- D - I - - 0x03B189 1C:B179: 33        .byte $33
- D - I - - 0x03B18A 1C:B17A: 00        .byte $00
- D - I - - 0x03B18B 1C:B17B: 02        .byte $02
- D - I - - 0x03B18C 1C:B17C: 22        .byte $22
- D - I - - 0x03B18D 1C:B17D: 31        .byte $31
- - - - - - 0x03B18E 1C:B17E: 00        .byte $00
- - - - - - 0x03B18F 1C:B17F: 00        .byte $00
- D - I - - 0x03B190 1C:B180: 23        .byte $23
- - - - - - 0x03B191 1C:B181: 11        .byte $11
- - - - - - 0x03B192 1C:B182: 11        .byte $11
- - - - - - 0x03B193 1C:B183: 11        .byte $11
- - - - - - 0x03B194 1C:B184: 22        .byte $22
- - - - - - 0x03B195 1C:B185: 02        .byte $02
- - - - - - 0x03B196 1C:B186: 11        .byte $11
- - - - - - 0x03B197 1C:B187: 11        .byte $11
- - - - - - 0x03B198 1C:B188: 22        .byte $22
- - - - - - 0x03B199 1C:B189: 20        .byte $20
- - - - - - 0x03B19A 1C:B18A: 11        .byte $11
- - - - - - 0x03B19B 1C:B18B: 11        .byte $11
- - - - - - 0x03B19C 1C:B18C: 11        .byte $11
- - - - - - 0x03B19D 1C:B18D: 22        .byte $22
; 02
- - - - - - 0x03B19E 1C:B18E: 12        .byte $12
- D - I - - 0x03B19F 1C:B18F: 22        .byte $22
- D - I - - 0x03B1A0 1C:B190: 23        .byte $23
- - - - - - 0x03B1A1 1C:B191: 43        .byte $43
- D - I - - 0x03B1A2 1C:B192: 12        .byte $12
- D - I - - 0x03B1A3 1C:B193: 33        .byte $33
- D - I - - 0x03B1A4 1C:B194: 33        .byte $33
- D - I - - 0x03B1A5 1C:B195: 34        .byte $34
- D - I - - 0x03B1A6 1C:B196: 11        .byte $11
- - - - - - 0x03B1A7 1C:B197: 33        .byte $33
- D - I - - 0x03B1A8 1C:B198: 32        .byte $32
- D - I - - 0x03B1A9 1C:B199: 43        .byte $43
- D - I - - 0x03B1AA 1C:B19A: 11        .byte $11
- D - I - - 0x03B1AB 1C:B19B: 13        .byte $13
- D - I - - 0x03B1AC 1C:B19C: 33        .byte $33
- D - I - - 0x03B1AD 1C:B19D: 23        .byte $23
- D - I - - 0x03B1AE 1C:B19E: 23        .byte $23
- D - I - - 0x03B1AF 1C:B19F: 33        .byte $33
- D - I - - 0x03B1B0 1C:B1A0: 34        .byte $34
- D - I - - 0x03B1B1 1C:B1A1: 33        .byte $33
- - - - - - 0x03B1B2 1C:B1A2: 22        .byte $22
- - - - - - 0x03B1B3 1C:B1A3: 33        .byte $33
- - - - - - 0x03B1B4 1C:B1A4: 33        .byte $33
- - - - - - 0x03B1B5 1C:B1A5: 34        .byte $34
- - - - - - 0x03B1B6 1C:B1A6: 00        .byte $00
- - - - - - 0x03B1B7 1C:B1A7: 22        .byte $22
- - - - - - 0x03B1B8 1C:B1A8: 31        .byte $31
- - - - - - 0x03B1B9 1C:B1A9: 33        .byte $33
- - - - - - 0x03B1BA 1C:B1AA: 00        .byte $00
- D - I - - 0x03B1BB 1C:B1AB: 00        .byte $00
- D - I - - 0x03B1BC 1C:B1AC: 33        .byte $33
- - - - - - 0x03B1BD 1C:B1AD: 31        .byte $31
- D - I - - 0x03B1BE 1C:B1AE: 00        .byte $00
- - - - - - 0x03B1BF 1C:B1AF: 00        .byte $00
- D - I - - 0x03B1C0 1C:B1B0: 33        .byte $33
- - - - - - 0x03B1C1 1C:B1B1: 31        .byte $31
- - - - - - 0x03B1C2 1C:B1B2: 11        .byte $11
- - - - - - 0x03B1C3 1C:B1B3: 11        .byte $11
- - - - - - 0x03B1C4 1C:B1B4: 10        .byte $10
- - - - - - 0x03B1C5 1C:B1B5: 02        .byte $02
- D - I - - 0x03B1C6 1C:B1B6: 11        .byte $11
- D - I - - 0x03B1C7 1C:B1B7: 11        .byte $11
- - - - - - 0x03B1C8 1C:B1B8: 12        .byte $12
- - - - - - 0x03B1C9 1C:B1B9: 00        .byte $00
- - - - - - 0x03B1CA 1C:B1BA: 11        .byte $11
- - - - - - 0x03B1CB 1C:B1BB: 11        .byte $11
- - - - - - 0x03B1CC 1C:B1BC: 11        .byte $11
- - - - - - 0x03B1CD 1C:B1BD: 02        .byte $02
; 03
- - - - - - 0x03B1CE 1C:B1BE: 11        .byte $11
- - - - - - 0x03B1CF 1C:B1BF: 22        .byte $22
- - - - - - 0x03B1D0 1C:B1C0: 22        .byte $22
- - - - - - 0x03B1D1 1C:B1C1: 43        .byte $43
- - - - - - 0x03B1D2 1C:B1C2: 11        .byte $11
- - - - - - 0x03B1D3 1C:B1C3: 11        .byte $11
- - - - - - 0x03B1D4 1C:B1C4: 23        .byte $23
- - - - - - 0x03B1D5 1C:B1C5: 34        .byte $34
- - - - - - 0x03B1D6 1C:B1C6: 11        .byte $11
- - - - - - 0x03B1D7 1C:B1C7: 11        .byte $11
- - - - - - 0x03B1D8 1C:B1C8: 32        .byte $32
- - - - - - 0x03B1D9 1C:B1C9: 43        .byte $43
- - - - - - 0x03B1DA 1C:B1CA: 11        .byte $11
- - - - - - 0x03B1DB 1C:B1CB: 11        .byte $11
- - - - - - 0x03B1DC 1C:B1CC: 13        .byte $13
- - - - - - 0x03B1DD 1C:B1CD: 23        .byte $23
- - - - - - 0x03B1DE 1C:B1CE: 22        .byte $22
- - - - - - 0x03B1DF 1C:B1CF: 33        .byte $33
- - - - - - 0x03B1E0 1C:B1D0: 34        .byte $34
- - - - - - 0x03B1E1 1C:B1D1: 33        .byte $33
- - - - - - 0x03B1E2 1C:B1D2: 22        .byte $22
- - - - - - 0x03B1E3 1C:B1D3: 23        .byte $23
- - - - - - 0x03B1E4 1C:B1D4: 33        .byte $33
- - - - - - 0x03B1E5 1C:B1D5: 34        .byte $34
- D - I - - 0x03B1E6 1C:B1D6: 00        .byte $00
- D - I - - 0x03B1E7 1C:B1D7: 00        .byte $00
- D - I - - 0x03B1E8 1C:B1D8: 02        .byte $02
- - - - - - 0x03B1E9 1C:B1D9: 13        .byte $13
- D - I - - 0x03B1EA 1C:B1DA: 00        .byte $00
- D - I - - 0x03B1EB 1C:B1DB: 00        .byte $00
- D - I - - 0x03B1EC 1C:B1DC: 02        .byte $02
- D - I - - 0x03B1ED 1C:B1DD: 13        .byte $13
- D - I - - 0x03B1EE 1C:B1DE: 00        .byte $00
- D - I - - 0x03B1EF 1C:B1DF: 00        .byte $00
- D - I - - 0x03B1F0 1C:B1E0: 00        .byte $00
- D - I - - 0x03B1F1 1C:B1E1: 13        .byte $13
- D - I - - 0x03B1F2 1C:B1E2: 11        .byte $11
- - - - - - 0x03B1F3 1C:B1E3: 11        .byte $11
- - - - - - 0x03B1F4 1C:B1E4: 11        .byte $11
- - - - - - 0x03B1F5 1C:B1E5: 12        .byte $12
- - - - - - 0x03B1F6 1C:B1E6: 11        .byte $11
- D - I - - 0x03B1F7 1C:B1E7: 11        .byte $11
- - - - - - 0x03B1F8 1C:B1E8: 11        .byte $11
- - - - - - 0x03B1F9 1C:B1E9: 12        .byte $12
- D - I - - 0x03B1FA 1C:B1EA: 11        .byte $11
- D - I - - 0x03B1FB 1C:B1EB: 11        .byte $11
- - - - - - 0x03B1FC 1C:B1EC: 11        .byte $11
- D - I - - 0x03B1FD 1C:B1ED: 12        .byte $12
; 04
- - - - - - 0x03B1FE 1C:B1EE: 11        .byte $11
- D - I - - 0x03B1FF 1C:B1EF: 11        .byte $11
- - - - - - 0x03B200 1C:B1F0: 12        .byte $12
- D - I - - 0x03B201 1C:B1F1: 33        .byte $33
- D - I - - 0x03B202 1C:B1F2: 11        .byte $11
- D - I - - 0x03B203 1C:B1F3: 22        .byte $22
- D - I - - 0x03B204 1C:B1F4: 33        .byte $33
- D - I - - 0x03B205 1C:B1F5: 33        .byte $33
- D - I - - 0x03B206 1C:B1F6: 11        .byte $11
- D - I - - 0x03B207 1C:B1F7: 11        .byte $11
- D - I - - 0x03B208 1C:B1F8: 32        .byte $32
- D - I - - 0x03B209 1C:B1F9: 23        .byte $23
- D - I - - 0x03B20A 1C:B1FA: 11        .byte $11
- - - - - - 0x03B20B 1C:B1FB: 11        .byte $11
- - - - - - 0x03B20C 1C:B1FC: 13        .byte $13
- D - I - - 0x03B20D 1C:B1FD: 23        .byte $23
- D - I - - 0x03B20E 1C:B1FE: 33        .byte $33
- D - I - - 0x03B20F 1C:B1FF: 33        .byte $33
- D - I - - 0x03B210 1C:B200: 32        .byte $32
- D - I - - 0x03B211 1C:B201: 23        .byte $23
- - - - - - 0x03B212 1C:B202: 33        .byte $33
- - - - - - 0x03B213 1C:B203: 33        .byte $33
- - - - - - 0x03B214 1C:B204: 22        .byte $22
- - - - - - 0x03B215 1C:B205: 24        .byte $24
- - - - - - 0x03B216 1C:B206: 00        .byte $00
- - - - - - 0x03B217 1C:B207: 22        .byte $22
- - - - - - 0x03B218 1C:B208: 21        .byte $21
- - - - - - 0x03B219 1C:B209: 33        .byte $33
- - - - - - 0x03B21A 1C:B20A: 00        .byte $00
- - - - - - 0x03B21B 1C:B20B: 00        .byte $00
- - - - - - 0x03B21C 1C:B20C: 23        .byte $23
- - - - - - 0x03B21D 1C:B20D: 11        .byte $11
- - - - - - 0x03B21E 1C:B20E: 00        .byte $00
- - - - - - 0x03B21F 1C:B20F: 00        .byte $00
- - - - - - 0x03B220 1C:B210: 03        .byte $03
- - - - - - 0x03B221 1C:B211: 11        .byte $11
- - - - - - 0x03B222 1C:B212: 31        .byte $31
- - - - - - 0x03B223 1C:B213: 11        .byte $11
- - - - - - 0x03B224 1C:B214: 11        .byte $11
- - - - - - 0x03B225 1C:B215: 02        .byte $02
- - - - - - 0x03B226 1C:B216: 31        .byte $31
- - - - - - 0x03B227 1C:B217: 11        .byte $11
- - - - - - 0x03B228 1C:B218: 12        .byte $12
- - - - - - 0x03B229 1C:B219: 20        .byte $20
- - - - - - 0x03B22A 1C:B21A: 31        .byte $31
- - - - - - 0x03B22B 1C:B21B: 11        .byte $11
- - - - - - 0x03B22C 1C:B21C: 11        .byte $11
- - - - - - 0x03B22D 1C:B21D: 12        .byte $12
; 05
- - - - - - 0x03B22E 1C:B21E: 22        .byte $22
- - - - - - 0x03B22F 1C:B21F: 22        .byte $22
- - - - - - 0x03B230 1C:B220: 22        .byte $22
- - - - - - 0x03B231 1C:B221: 43        .byte $43
- D - I - - 0x03B232 1C:B222: 12        .byte $12
- D - I - - 0x03B233 1C:B223: 22        .byte $22
- D - I - - 0x03B234 1C:B224: 22        .byte $22
- - - - - - 0x03B235 1C:B225: 33        .byte $33
- - - - - - 0x03B236 1C:B226: 11        .byte $11
- - - - - - 0x03B237 1C:B227: 22        .byte $22
- D - I - - 0x03B238 1C:B228: 22        .byte $22
- - - - - - 0x03B239 1C:B229: 23        .byte $23
- - - - - - 0x03B23A 1C:B22A: 11        .byte $11
- - - - - - 0x03B23B 1C:B22B: 13        .byte $13
- - - - - - 0x03B23C 1C:B22C: 22        .byte $22
- - - - - - 0x03B23D 1C:B22D: 23        .byte $23
- D - I - - 0x03B23E 1C:B22E: 33        .byte $33
- D - I - - 0x03B23F 1C:B22F: 33        .byte $33
- D - I - - 0x03B240 1C:B230: 24        .byte $24
- - - - - - 0x03B241 1C:B231: 23        .byte $23
- - - - - - 0x03B242 1C:B232: 33        .byte $33
- - - - - - 0x03B243 1C:B233: 33        .byte $33
- D - I - - 0x03B244 1C:B234: 32        .byte $32
- - - - - - 0x03B245 1C:B235: 24        .byte $24
- - - - - - 0x03B246 1C:B236: 00        .byte $00
- D - I - - 0x03B247 1C:B237: 00        .byte $00
- D - I - - 0x03B248 1C:B238: 00        .byte $00
- D - I - - 0x03B249 1C:B239: 23        .byte $23
- D - I - - 0x03B24A 1C:B23A: 00        .byte $00
- D - I - - 0x03B24B 1C:B23B: 00        .byte $00
- D - I - - 0x03B24C 1C:B23C: 00        .byte $00
- D - I - - 0x03B24D 1C:B23D: 03        .byte $03
- D - I - - 0x03B24E 1C:B23E: 00        .byte $00
- D - I - - 0x03B24F 1C:B23F: 00        .byte $00
- D - I - - 0x03B250 1C:B240: 00        .byte $00
- D - I - - 0x03B251 1C:B241: 23        .byte $23
- - - - - - 0x03B252 1C:B242: 33        .byte $33
- - - - - - 0x03B253 1C:B243: 33        .byte $33
- - - - - - 0x03B254 1C:B244: 33        .byte $33
- D - I - - 0x03B255 1C:B245: 32        .byte $32
- - - - - - 0x03B256 1C:B246: 33        .byte $33
- - - - - - 0x03B257 1C:B247: 33        .byte $33
- - - - - - 0x03B258 1C:B248: 33        .byte $33
- - - - - - 0x03B259 1C:B249: 32        .byte $32
- - - - - - 0x03B25A 1C:B24A: 33        .byte $33
- - - - - - 0x03B25B 1C:B24B: 33        .byte $33
- - - - - - 0x03B25C 1C:B24C: 33        .byte $33
- D - I - - 0x03B25D 1C:B24D: 32        .byte $32
; 06
- D - I - - 0x03B25E 1C:B24E: 12        .byte $12
- - - - - - 0x03B25F 1C:B24F: 33        .byte $33
- - - - - - 0x03B260 1C:B250: 33        .byte $33
- D - I - - 0x03B261 1C:B251: 43        .byte $43
- D - I - - 0x03B262 1C:B252: 12        .byte $12
- D - I - - 0x03B263 1C:B253: 33        .byte $33
- - - - - - 0x03B264 1C:B254: 33        .byte $33
- D - I - - 0x03B265 1C:B255: 33        .byte $33
- D - I - - 0x03B266 1C:B256: 11        .byte $11
- - - - - - 0x03B267 1C:B257: 33        .byte $33
- D - I - - 0x03B268 1C:B258: 32        .byte $32
- - - - - - 0x03B269 1C:B259: 33        .byte $33
- - - - - - 0x03B26A 1C:B25A: 11        .byte $11
- - - - - - 0x03B26B 1C:B25B: 13        .byte $13
- - - - - - 0x03B26C 1C:B25C: 33        .byte $33
- - - - - - 0x03B26D 1C:B25D: 33        .byte $33
- D - I - - 0x03B26E 1C:B25E: 32        .byte $32
- D - I - - 0x03B26F 1C:B25F: 33        .byte $33
- D - I - - 0x03B270 1C:B260: 33        .byte $33
- D - I - - 0x03B271 1C:B261: 33        .byte $33
- D - I - - 0x03B272 1C:B262: 22        .byte $22
- - - - - - 0x03B273 1C:B263: 33        .byte $33
- - - - - - 0x03B274 1C:B264: 33        .byte $33
- - - - - - 0x03B275 1C:B265: 34        .byte $34
- D - I - - 0x03B276 1C:B266: 00        .byte $00
- D - I - - 0x03B277 1C:B267: 00        .byte $00
- D - I - - 0x03B278 1C:B268: 00        .byte $00
- - - - - - 0x03B279 1C:B269: 00        .byte $00
- D - I - - 0x03B27A 1C:B26A: 00        .byte $00
- D - I - - 0x03B27B 1C:B26B: 00        .byte $00
- D - I - - 0x03B27C 1C:B26C: 00        .byte $00
- D - I - - 0x03B27D 1C:B26D: 00        .byte $00
- D - I - - 0x03B27E 1C:B26E: 00        .byte $00
- D - I - - 0x03B27F 1C:B26F: 00        .byte $00
- D - I - - 0x03B280 1C:B270: 00        .byte $00
- D - I - - 0x03B281 1C:B271: 00        .byte $00
- - - - - - 0x03B282 1C:B272: 00        .byte $00
- - - - - - 0x03B283 1C:B273: 00        .byte $00
- - - - - - 0x03B284 1C:B274: 00        .byte $00
- - - - - - 0x03B285 1C:B275: 00        .byte $00
- - - - - - 0x03B286 1C:B276: 00        .byte $00
- - - - - - 0x03B287 1C:B277: 00        .byte $00
- - - - - - 0x03B288 1C:B278: 00        .byte $00
- - - - - - 0x03B289 1C:B279: 00        .byte $00
- - - - - - 0x03B28A 1C:B27A: 00        .byte $00
- - - - - - 0x03B28B 1C:B27B: 00        .byte $00
- - - - - - 0x03B28C 1C:B27C: 00        .byte $00
- - - - - - 0x03B28D 1C:B27D: 00        .byte $00
; 07
- - - - - - 0x03B28E 1C:B27E: 12        .byte $12
- - - - - - 0x03B28F 1C:B27F: 22        .byte $22
- D - I - - 0x03B290 1C:B280: 22        .byte $22
- D - I - - 0x03B291 1C:B281: 43        .byte $43
- D - I - - 0x03B292 1C:B282: 13        .byte $13
- D - I - - 0x03B293 1C:B283: 23        .byte $23
- D - I - - 0x03B294 1C:B284: 33        .byte $33
- D - I - - 0x03B295 1C:B285: 33        .byte $33
- D - I - - 0x03B296 1C:B286: 11        .byte $11
- D - I - - 0x03B297 1C:B287: 33        .byte $33
- D - I - - 0x03B298 1C:B288: 32        .byte $32
- D - I - - 0x03B299 1C:B289: 33        .byte $33
- D - I - - 0x03B29A 1C:B28A: 11        .byte $11
- - - - - - 0x03B29B 1C:B28B: 13        .byte $13
- - - - - - 0x03B29C 1C:B28C: 33        .byte $33
- D - I - - 0x03B29D 1C:B28D: 33        .byte $33
- D - I - - 0x03B29E 1C:B28E: 22        .byte $22
- D - I - - 0x03B29F 1C:B28F: 33        .byte $33
- D - I - - 0x03B2A0 1C:B290: 33        .byte $33
- D - I - - 0x03B2A1 1C:B291: 33        .byte $33
- - - - - - 0x03B2A2 1C:B292: 22        .byte $22
- - - - - - 0x03B2A3 1C:B293: 33        .byte $33
- - - - - - 0x03B2A4 1C:B294: 33        .byte $33
- - - - - - 0x03B2A5 1C:B295: 34        .byte $34
- - - - - - 0x03B2A6 1C:B296: 03        .byte $03
- - - - - - 0x03B2A7 1C:B297: 23        .byte $23
- D - I - - 0x03B2A8 1C:B298: 31        .byte $31
- D - I - - 0x03B2A9 1C:B299: 33        .byte $33
- - - - - - 0x03B2AA 1C:B29A: 00        .byte $00
- D - I - - 0x03B2AB 1C:B29B: 33        .byte $33
- D - I - - 0x03B2AC 1C:B29C: 33        .byte $33
- - - - - - 0x03B2AD 1C:B29D: 31        .byte $31
- - - - - - 0x03B2AE 1C:B29E: 00        .byte $00
- - - - - - 0x03B2AF 1C:B29F: 33        .byte $33
- - - - - - 0x03B2B0 1C:B2A0: 33        .byte $33
- - - - - - 0x03B2B1 1C:B2A1: 31        .byte $31
- - - - - - 0x03B2B2 1C:B2A2: 00        .byte $00
- - - - - - 0x03B2B3 1C:B2A3: 00        .byte $00
- - - - - - 0x03B2B4 1C:B2A4: 00        .byte $00
- - - - - - 0x03B2B5 1C:B2A5: 00        .byte $00
- - - - - - 0x03B2B6 1C:B2A6: 00        .byte $00
- - - - - - 0x03B2B7 1C:B2A7: 00        .byte $00
- - - - - - 0x03B2B8 1C:B2A8: 00        .byte $00
- - - - - - 0x03B2B9 1C:B2A9: 00        .byte $00
- - - - - - 0x03B2BA 1C:B2AA: 00        .byte $00
- - - - - - 0x03B2BB 1C:B2AB: 00        .byte $00
- - - - - - 0x03B2BC 1C:B2AC: 00        .byte $00
- - - - - - 0x03B2BD 1C:B2AD: 00        .byte $00
; 08
- - - - - - 0x03B2BE 1C:B2AE: 22        .byte $22
- - - - - - 0x03B2BF 1C:B2AF: 22        .byte $22
- - - - - - 0x03B2C0 1C:B2B0: 44        .byte $44
- - - - - - 0x03B2C1 1C:B2B1: 43        .byte $43
- D - I - - 0x03B2C2 1C:B2B2: 12        .byte $12
- D - I - - 0x03B2C3 1C:B2B3: 24        .byte $24
- D - I - - 0x03B2C4 1C:B2B4: 44        .byte $44
- D - I - - 0x03B2C5 1C:B2B5: 43        .byte $43
- - - - - - 0x03B2C6 1C:B2B6: 31        .byte $31
- D - I - - 0x03B2C7 1C:B2B7: 22        .byte $22
- D - I - - 0x03B2C8 1C:B2B8: 44        .byte $44
- D - I - - 0x03B2C9 1C:B2B9: 44        .byte $44
- D - I - - 0x03B2CA 1C:B2BA: 11        .byte $11
- - - - - - 0x03B2CB 1C:B2BB: 13        .byte $13
- D - I - - 0x03B2CC 1C:B2BC: 33        .byte $33
- D - I - - 0x03B2CD 1C:B2BD: 22        .byte $22
- D - I - - 0x03B2CE 1C:B2BE: 22        .byte $22
- D - I - - 0x03B2CF 1C:B2BF: 24        .byte $24
- D - I - - 0x03B2D0 1C:B2C0: 34        .byte $34
- D - I - - 0x03B2D1 1C:B2C1: 33        .byte $33
- - - - - - 0x03B2D2 1C:B2C2: 22        .byte $22
- - - - - - 0x03B2D3 1C:B2C3: 22        .byte $22
- - - - - - 0x03B2D4 1C:B2C4: 23        .byte $23
- D - I - - 0x03B2D5 1C:B2C5: 34        .byte $34
- - - - - - 0x03B2D6 1C:B2C6: 03        .byte $03
- - - - - - 0x03B2D7 1C:B2C7: 23        .byte $23
- - - - - - 0x03B2D8 1C:B2C8: 33        .byte $33
- - - - - - 0x03B2D9 1C:B2C9: 33        .byte $33
- - - - - - 0x03B2DA 1C:B2CA: 00        .byte $00
- - - - - - 0x03B2DB 1C:B2CB: 33        .byte $33
- - - - - - 0x03B2DC 1C:B2CC: 33        .byte $33
- - - - - - 0x03B2DD 1C:B2CD: 33        .byte $33
- - - - - - 0x03B2DE 1C:B2CE: 00        .byte $00
- - - - - - 0x03B2DF 1C:B2CF: 33        .byte $33
- - - - - - 0x03B2E0 1C:B2D0: 33        .byte $33
- - - - - - 0x03B2E1 1C:B2D1: 33        .byte $33
- - - - - - 0x03B2E2 1C:B2D2: 00        .byte $00
- - - - - - 0x03B2E3 1C:B2D3: 00        .byte $00
- - - - - - 0x03B2E4 1C:B2D4: 00        .byte $00
- - - - - - 0x03B2E5 1C:B2D5: 00        .byte $00
- - - - - - 0x03B2E6 1C:B2D6: 00        .byte $00
- - - - - - 0x03B2E7 1C:B2D7: 00        .byte $00
- - - - - - 0x03B2E8 1C:B2D8: 00        .byte $00
- - - - - - 0x03B2E9 1C:B2D9: 00        .byte $00
- - - - - - 0x03B2EA 1C:B2DA: 00        .byte $00
- - - - - - 0x03B2EB 1C:B2DB: 00        .byte $00
- - - - - - 0x03B2EC 1C:B2DC: 00        .byte $00
- - - - - - 0x03B2ED 1C:B2DD: 00        .byte $00
; 09
- - - - - - 0x03B2EE 1C:B2DE: 11        .byte $11
- - - - - - 0x03B2EF 1C:B2DF: 22        .byte $22
- - - - - - 0x03B2F0 1C:B2E0: 22        .byte $22
- D - I - - 0x03B2F1 1C:B2E1: 43        .byte $43
- D - I - - 0x03B2F2 1C:B2E2: 11        .byte $11
- D - I - - 0x03B2F3 1C:B2E3: 11        .byte $11
- - - - - - 0x03B2F4 1C:B2E4: 23        .byte $23
- D - I - - 0x03B2F5 1C:B2E5: 34        .byte $34
- - - - - - 0x03B2F6 1C:B2E6: 11        .byte $11
- D - I - - 0x03B2F7 1C:B2E7: 11        .byte $11
- D - I - - 0x03B2F8 1C:B2E8: 32        .byte $32
- D - I - - 0x03B2F9 1C:B2E9: 43        .byte $43
- D - I - - 0x03B2FA 1C:B2EA: 11        .byte $11
- - - - - - 0x03B2FB 1C:B2EB: 11        .byte $11
- - - - - - 0x03B2FC 1C:B2EC: 13        .byte $13
- - - - - - 0x03B2FD 1C:B2ED: 23        .byte $23
- D - I - - 0x03B2FE 1C:B2EE: 22        .byte $22
- D - I - - 0x03B2FF 1C:B2EF: 23        .byte $23
- D - I - - 0x03B300 1C:B2F0: 33        .byte $33
- D - I - - 0x03B301 1C:B2F1: 33        .byte $33
- - - - - - 0x03B302 1C:B2F2: 22        .byte $22
- D - I - - 0x03B303 1C:B2F3: 22        .byte $22
- D - I - - 0x03B304 1C:B2F4: 33        .byte $33
- D - I - - 0x03B305 1C:B2F5: 34        .byte $34
- - - - - - 0x03B306 1C:B2F6: 01        .byte $01
- - - - - - 0x03B307 1C:B2F7: 23        .byte $23
- - - - - - 0x03B308 1C:B2F8: 01        .byte $01
- - - - - - 0x03B309 1C:B2F9: 23        .byte $23
- - - - - - 0x03B30A 1C:B2FA: 01        .byte $01
- - - - - - 0x03B30B 1C:B2FB: 23        .byte $23
- - - - - - 0x03B30C 1C:B2FC: 01        .byte $01
- - - - - - 0x03B30D 1C:B2FD: 23        .byte $23
- - - - - - 0x03B30E 1C:B2FE: 01        .byte $01
- - - - - - 0x03B30F 1C:B2FF: 23        .byte $23
- - - - - - 0x03B310 1C:B300: 01        .byte $01
- - - - - - 0x03B311 1C:B301: 23        .byte $23
- - - - - - 0x03B312 1C:B302: 01        .byte $01
- - - - - - 0x03B313 1C:B303: 23        .byte $23
- - - - - - 0x03B314 1C:B304: 01        .byte $01
- - - - - - 0x03B315 1C:B305: 23        .byte $23
- - - - - - 0x03B316 1C:B306: 01        .byte $01
- - - - - - 0x03B317 1C:B307: 23        .byte $23
- - - - - - 0x03B318 1C:B308: 01        .byte $01
- - - - - - 0x03B319 1C:B309: 23        .byte $23
- - - - - - 0x03B31A 1C:B30A: 01        .byte $01
- - - - - - 0x03B31B 1C:B30B: 23        .byte $23
- - - - - - 0x03B31C 1C:B30C: 01        .byte $01
- - - - - - 0x03B31D 1C:B30D: 23        .byte $23
; 0A
- - - - - - 0x03B31E 1C:B30E: 33        .byte $33
- - - - - - 0x03B31F 1C:B30F: 33        .byte $33
- - - - - - 0x03B320 1C:B310: 33        .byte $33
- - - - - - 0x03B321 1C:B311: 33        .byte $33
- D - I - - 0x03B322 1C:B312: 33        .byte $33
- - - - - - 0x03B323 1C:B313: 33        .byte $33
- D - I - - 0x03B324 1C:B314: 33        .byte $33
- D - I - - 0x03B325 1C:B315: 33        .byte $33
- D - I - - 0x03B326 1C:B316: 33        .byte $33
- D - I - - 0x03B327 1C:B317: 33        .byte $33
- D - I - - 0x03B328 1C:B318: 33        .byte $33
- D - I - - 0x03B329 1C:B319: 33        .byte $33
- D - I - - 0x03B32A 1C:B31A: 33        .byte $33
- D - I - - 0x03B32B 1C:B31B: 33        .byte $33
- D - I - - 0x03B32C 1C:B31C: 33        .byte $33
- D - I - - 0x03B32D 1C:B31D: 33        .byte $33
- D - I - - 0x03B32E 1C:B31E: 33        .byte $33
- D - I - - 0x03B32F 1C:B31F: 33        .byte $33
- D - I - - 0x03B330 1C:B320: 33        .byte $33
- D - I - - 0x03B331 1C:B321: 33        .byte $33
- - - - - - 0x03B332 1C:B322: 33        .byte $33
- - - - - - 0x03B333 1C:B323: 33        .byte $33
- - - - - - 0x03B334 1C:B324: 33        .byte $33
- - - - - - 0x03B335 1C:B325: 33        .byte $33
- - - - - - 0x03B336 1C:B326: 01        .byte $01
- - - - - - 0x03B337 1C:B327: 23        .byte $23
- - - - - - 0x03B338 1C:B328: 01        .byte $01
- - - - - - 0x03B339 1C:B329: 23        .byte $23
- - - - - - 0x03B33A 1C:B32A: 01        .byte $01
- - - - - - 0x03B33B 1C:B32B: 23        .byte $23
- - - - - - 0x03B33C 1C:B32C: 01        .byte $01
- - - - - - 0x03B33D 1C:B32D: 23        .byte $23
- - - - - - 0x03B33E 1C:B32E: 01        .byte $01
- - - - - - 0x03B33F 1C:B32F: 23        .byte $23
- - - - - - 0x03B340 1C:B330: 01        .byte $01
- - - - - - 0x03B341 1C:B331: 23        .byte $23
- - - - - - 0x03B342 1C:B332: 01        .byte $01
- - - - - - 0x03B343 1C:B333: 23        .byte $23
- - - - - - 0x03B344 1C:B334: 01        .byte $01
- - - - - - 0x03B345 1C:B335: 23        .byte $23
- - - - - - 0x03B346 1C:B336: 01        .byte $01
- - - - - - 0x03B347 1C:B337: 23        .byte $23
- - - - - - 0x03B348 1C:B338: 01        .byte $01
- - - - - - 0x03B349 1C:B339: 23        .byte $23
- - - - - - 0x03B34A 1C:B33A: 01        .byte $01
- - - - - - 0x03B34B 1C:B33B: 23        .byte $23
- - - - - - 0x03B34C 1C:B33C: 01        .byte $01
- - - - - - 0x03B34D 1C:B33D: 23        .byte $23
; 0B
- - - - - - 0x03B34E 1C:B33E: 11        .byte $11
- D - I - - 0x03B34F 1C:B33F: 11        .byte $11
- - - - - - 0x03B350 1C:B340: 23        .byte $23
- D - I - - 0x03B351 1C:B341: 33        .byte $33
- D - I - - 0x03B352 1C:B342: 11        .byte $11
- D - I - - 0x03B353 1C:B343: 12        .byte $12
- D - I - - 0x03B354 1C:B344: 33        .byte $33
- D - I - - 0x03B355 1C:B345: 33        .byte $33
- D - I - - 0x03B356 1C:B346: 11        .byte $11
- - - - - - 0x03B357 1C:B347: 11        .byte $11
- D - I - - 0x03B358 1C:B348: 32        .byte $32
- D - I - - 0x03B359 1C:B349: 33        .byte $33
- D - I - - 0x03B35A 1C:B34A: 11        .byte $11
- - - - - - 0x03B35B 1C:B34B: 11        .byte $11
- - - - - - 0x03B35C 1C:B34C: 13        .byte $13
- - - - - - 0x03B35D 1C:B34D: 23        .byte $23
- D - I - - 0x03B35E 1C:B34E: 21        .byte $21
- D - I - - 0x03B35F 1C:B34F: 23        .byte $23
- D - I - - 0x03B360 1C:B350: 33        .byte $33
- D - I - - 0x03B361 1C:B351: 33        .byte $33
- - - - - - 0x03B362 1C:B352: 22        .byte $22
- D - I - - 0x03B363 1C:B353: 23        .byte $23
- D - I - - 0x03B364 1C:B354: 33        .byte $33
- D - I - - 0x03B365 1C:B355: 34        .byte $34
- - - - - - 0x03B366 1C:B356: 01        .byte $01
- - - - - - 0x03B367 1C:B357: 23        .byte $23
- - - - - - 0x03B368 1C:B358: 01        .byte $01
- - - - - - 0x03B369 1C:B359: 23        .byte $23
- - - - - - 0x03B36A 1C:B35A: 01        .byte $01
- - - - - - 0x03B36B 1C:B35B: 23        .byte $23
- - - - - - 0x03B36C 1C:B35C: 01        .byte $01
- - - - - - 0x03B36D 1C:B35D: 23        .byte $23
- - - - - - 0x03B36E 1C:B35E: 01        .byte $01
- - - - - - 0x03B36F 1C:B35F: 23        .byte $23
- - - - - - 0x03B370 1C:B360: 01        .byte $01
- - - - - - 0x03B371 1C:B361: 23        .byte $23
- - - - - - 0x03B372 1C:B362: 01        .byte $01
- - - - - - 0x03B373 1C:B363: 23        .byte $23
- - - - - - 0x03B374 1C:B364: 01        .byte $01
- - - - - - 0x03B375 1C:B365: 23        .byte $23
- - - - - - 0x03B376 1C:B366: 01        .byte $01
- - - - - - 0x03B377 1C:B367: 23        .byte $23
- - - - - - 0x03B378 1C:B368: 01        .byte $01
- - - - - - 0x03B379 1C:B369: 23        .byte $23
- - - - - - 0x03B37A 1C:B36A: 01        .byte $01
- - - - - - 0x03B37B 1C:B36B: 23        .byte $23
- - - - - - 0x03B37C 1C:B36C: 01        .byte $01
- - - - - - 0x03B37D 1C:B36D: 23        .byte $23
; 0C
- - - - - - 0x03B37E 1C:B36E: 17        .byte $17
- - - - - - 0x03B37F 1C:B36F: 22        .byte $22
- - - - - - 0x03B380 1C:B370: 22        .byte $22
- - - - - - 0x03B381 1C:B371: 43        .byte $43
- - - - - - 0x03B382 1C:B372: 71        .byte $71
- - - - - - 0x03B383 1C:B373: 23        .byte $23
- - - - - - 0x03B384 1C:B374: 33        .byte $33
- - - - - - 0x03B385 1C:B375: 34        .byte $34
- - - - - - 0x03B386 1C:B376: 11        .byte $11
- D - I - - 0x03B387 1C:B377: 33        .byte $33
- - - - - - 0x03B388 1C:B378: 32        .byte $32
- - - - - - 0x03B389 1C:B379: 43        .byte $43
- - - - - - 0x03B38A 1C:B37A: 11        .byte $11
- D - I - - 0x03B38B 1C:B37B: 11        .byte $11
- D - I - - 0x03B38C 1C:B37C: 33        .byte $33
- - - - - - 0x03B38D 1C:B37D: 23        .byte $23
- D - I - - 0x03B38E 1C:B37E: 22        .byte $22
- D - I - - 0x03B38F 1C:B37F: 23        .byte $23
- D - I - - 0x03B390 1C:B380: 77        .byte $77
- D - I - - 0x03B391 1C:B381: 37        .byte $37
- - - - - - 0x03B392 1C:B382: 22        .byte $22
- - - - - - 0x03B393 1C:B383: 27        .byte $27
- - - - - - 0x03B394 1C:B384: 73        .byte $73
- - - - - - 0x03B395 1C:B385: 34        .byte $34
- - - - - - 0x03B396 1C:B386: 01        .byte $01
- - - - - - 0x03B397 1C:B387: 23        .byte $23
- - - - - - 0x03B398 1C:B388: 01        .byte $01
- - - - - - 0x03B399 1C:B389: 23        .byte $23
- - - - - - 0x03B39A 1C:B38A: 01        .byte $01
- - - - - - 0x03B39B 1C:B38B: 23        .byte $23
- - - - - - 0x03B39C 1C:B38C: 01        .byte $01
- - - - - - 0x03B39D 1C:B38D: 23        .byte $23
- - - - - - 0x03B39E 1C:B38E: 01        .byte $01
- - - - - - 0x03B39F 1C:B38F: 23        .byte $23
- - - - - - 0x03B3A0 1C:B390: 01        .byte $01
- - - - - - 0x03B3A1 1C:B391: 23        .byte $23
- - - - - - 0x03B3A2 1C:B392: 01        .byte $01
- - - - - - 0x03B3A3 1C:B393: 23        .byte $23
- - - - - - 0x03B3A4 1C:B394: 01        .byte $01
- - - - - - 0x03B3A5 1C:B395: 23        .byte $23
- - - - - - 0x03B3A6 1C:B396: 01        .byte $01
- - - - - - 0x03B3A7 1C:B397: 23        .byte $23
- - - - - - 0x03B3A8 1C:B398: 01        .byte $01
- - - - - - 0x03B3A9 1C:B399: 23        .byte $23
- - - - - - 0x03B3AA 1C:B39A: 01        .byte $01
- - - - - - 0x03B3AB 1C:B39B: 23        .byte $23
- - - - - - 0x03B3AC 1C:B39C: 01        .byte $01
- - - - - - 0x03B3AD 1C:B39D: 23        .byte $23
; 0D
- - - - - - 0x03B3AE 1C:B39E: 11        .byte $11
- - - - - - 0x03B3AF 1C:B39F: 11        .byte $11
- D - I - - 0x03B3B0 1C:B3A0: 12        .byte $12
- - - - - - 0x03B3B1 1C:B3A1: 33        .byte $33
- - - - - - 0x03B3B2 1C:B3A2: 11        .byte $11
- - - - - - 0x03B3B3 1C:B3A3: 12        .byte $12
- - - - - - 0x03B3B4 1C:B3A4: 33        .byte $33
- - - - - - 0x03B3B5 1C:B3A5: 33        .byte $33
- - - - - - 0x03B3B6 1C:B3A6: 11        .byte $11
- - - - - - 0x03B3B7 1C:B3A7: 11        .byte $11
- - - - - - 0x03B3B8 1C:B3A8: 32        .byte $32
- - - - - - 0x03B3B9 1C:B3A9: 23        .byte $23
- - - - - - 0x03B3BA 1C:B3AA: 11        .byte $11
- - - - - - 0x03B3BB 1C:B3AB: 11        .byte $11
- - - - - - 0x03B3BC 1C:B3AC: 13        .byte $13
- - - - - - 0x03B3BD 1C:B3AD: 23        .byte $23
- - - - - - 0x03B3BE 1C:B3AE: 33        .byte $33
- - - - - - 0x03B3BF 1C:B3AF: 33        .byte $33
- - - - - - 0x03B3C0 1C:B3B0: 32        .byte $32
- - - - - - 0x03B3C1 1C:B3B1: 23        .byte $23
- - - - - - 0x03B3C2 1C:B3B2: 33        .byte $33
- - - - - - 0x03B3C3 1C:B3B3: 33        .byte $33
- - - - - - 0x03B3C4 1C:B3B4: 22        .byte $22
- - - - - - 0x03B3C5 1C:B3B5: 24        .byte $24
- - - - - - 0x03B3C6 1C:B3B6: 01        .byte $01
- - - - - - 0x03B3C7 1C:B3B7: 23        .byte $23
- - - - - - 0x03B3C8 1C:B3B8: 01        .byte $01
- - - - - - 0x03B3C9 1C:B3B9: 23        .byte $23
- - - - - - 0x03B3CA 1C:B3BA: 01        .byte $01
- - - - - - 0x03B3CB 1C:B3BB: 23        .byte $23
- - - - - - 0x03B3CC 1C:B3BC: 01        .byte $01
- - - - - - 0x03B3CD 1C:B3BD: 23        .byte $23
- - - - - - 0x03B3CE 1C:B3BE: 01        .byte $01
- - - - - - 0x03B3CF 1C:B3BF: 23        .byte $23
- - - - - - 0x03B3D0 1C:B3C0: 01        .byte $01
- - - - - - 0x03B3D1 1C:B3C1: 23        .byte $23
- - - - - - 0x03B3D2 1C:B3C2: 01        .byte $01
- - - - - - 0x03B3D3 1C:B3C3: 23        .byte $23
- - - - - - 0x03B3D4 1C:B3C4: 01        .byte $01
- - - - - - 0x03B3D5 1C:B3C5: 23        .byte $23
- - - - - - 0x03B3D6 1C:B3C6: 01        .byte $01
- - - - - - 0x03B3D7 1C:B3C7: 23        .byte $23
- - - - - - 0x03B3D8 1C:B3C8: 01        .byte $01
- - - - - - 0x03B3D9 1C:B3C9: 23        .byte $23
- - - - - - 0x03B3DA 1C:B3CA: 01        .byte $01
- - - - - - 0x03B3DB 1C:B3CB: 23        .byte $23
- - - - - - 0x03B3DC 1C:B3CC: 01        .byte $01
- - - - - - 0x03B3DD 1C:B3CD: 23        .byte $23
; 0E
- - - - - - 0x03B3DE 1C:B3CE: 66        .byte $66
- - - - - - 0x03B3DF 1C:B3CF: 55        .byte $55
- - - - - - 0x03B3E0 1C:B3D0: 52        .byte $52
- - - - - - 0x03B3E1 1C:B3D1: 33        .byte $33
- D - I - - 0x03B3E2 1C:B3D2: 65        .byte $65
- D - I - - 0x03B3E3 1C:B3D3: 52        .byte $52
- D - I - - 0x03B3E4 1C:B3D4: 33        .byte $33
- D - I - - 0x03B3E5 1C:B3D5: 33        .byte $33
- - - - - - 0x03B3E6 1C:B3D6: 66        .byte $66
- - - - - - 0x03B3E7 1C:B3D7: 53        .byte $53
- D - I - - 0x03B3E8 1C:B3D8: 32        .byte $32
- - - - - - 0x03B3E9 1C:B3D9: 23        .byte $23
- D - I - - 0x03B3EA 1C:B3DA: 66        .byte $66
- - - - - - 0x03B3EB 1C:B3DB: 55        .byte $55
- - - - - - 0x03B3EC 1C:B3DC: 33        .byte $33
- D - I - - 0x03B3ED 1C:B3DD: 33        .byte $33
- D - I - - 0x03B3EE 1C:B3DE: 33        .byte $33
- D - I - - 0x03B3EF 1C:B3DF: 33        .byte $33
- D - I - - 0x03B3F0 1C:B3E0: 32        .byte $32
- D - I - - 0x03B3F1 1C:B3E1: 24        .byte $24
- - - - - - 0x03B3F2 1C:B3E2: 33        .byte $33
- - - - - - 0x03B3F3 1C:B3E3: 33        .byte $33
- - - - - - 0x03B3F4 1C:B3E4: 22        .byte $22
- - - - - - 0x03B3F5 1C:B3E5: 24        .byte $24
- - - - - - 0x03B3F6 1C:B3E6: 01        .byte $01
- - - - - - 0x03B3F7 1C:B3E7: 23        .byte $23
- - - - - - 0x03B3F8 1C:B3E8: 01        .byte $01
- - - - - - 0x03B3F9 1C:B3E9: 23        .byte $23
- - - - - - 0x03B3FA 1C:B3EA: 01        .byte $01
- - - - - - 0x03B3FB 1C:B3EB: 23        .byte $23
- - - - - - 0x03B3FC 1C:B3EC: 01        .byte $01
- - - - - - 0x03B3FD 1C:B3ED: 23        .byte $23
- - - - - - 0x03B3FE 1C:B3EE: 01        .byte $01
- - - - - - 0x03B3FF 1C:B3EF: 23        .byte $23
- - - - - - 0x03B400 1C:B3F0: 01        .byte $01
- - - - - - 0x03B401 1C:B3F1: 23        .byte $23
- - - - - - 0x03B402 1C:B3F2: 01        .byte $01
- - - - - - 0x03B403 1C:B3F3: 23        .byte $23
- - - - - - 0x03B404 1C:B3F4: 01        .byte $01
- - - - - - 0x03B405 1C:B3F5: 23        .byte $23
- - - - - - 0x03B406 1C:B3F6: 01        .byte $01
- - - - - - 0x03B407 1C:B3F7: 23        .byte $23
- - - - - - 0x03B408 1C:B3F8: 01        .byte $01
- - - - - - 0x03B409 1C:B3F9: 23        .byte $23
- - - - - - 0x03B40A 1C:B3FA: 01        .byte $01
- - - - - - 0x03B40B 1C:B3FB: 23        .byte $23
- - - - - - 0x03B40C 1C:B3FC: 01        .byte $01
- - - - - - 0x03B40D 1C:B3FD: 23        .byte $23
; 0F
- D - I - - 0x03B40E 1C:B3FE: 11        .byte $11
- D - I - - 0x03B40F 1C:B3FF: 11        .byte $11
- - - - - - 0x03B410 1C:B400: 11        .byte $11
- - - - - - 0x03B411 1C:B401: 33        .byte $33
- D - I - - 0x03B412 1C:B402: 11        .byte $11
- D - I - - 0x03B413 1C:B403: 23        .byte $23
- - - - - - 0x03B414 1C:B404: 33        .byte $33
- - - - - - 0x03B415 1C:B405: 34        .byte $34
- - - - - - 0x03B416 1C:B406: 11        .byte $11
- D - I - - 0x03B417 1C:B407: 13        .byte $13
- - - - - - 0x03B418 1C:B408: 32        .byte $32
- D - I - - 0x03B419 1C:B409: 43        .byte $43
- - - - - - 0x03B41A 1C:B40A: 11        .byte $11
- - - - - - 0x03B41B 1C:B40B: 11        .byte $11
- - - - - - 0x03B41C 1C:B40C: 33        .byte $33
- - - - - - 0x03B41D 1C:B40D: 23        .byte $23
- D - I - - 0x03B41E 1C:B40E: 22        .byte $22
- D - I - - 0x03B41F 1C:B40F: 23        .byte $23
- D - I - - 0x03B420 1C:B410: 34        .byte $34
- D - I - - 0x03B421 1C:B411: 33        .byte $33
- - - - - - 0x03B422 1C:B412: 22        .byte $22
- - - - - - 0x03B423 1C:B413: 22        .byte $22
- - - - - - 0x03B424 1C:B414: 33        .byte $33
- D - I - - 0x03B425 1C:B415: 34        .byte $34
- - - - - - 0x03B426 1C:B416: 01        .byte $01
- - - - - - 0x03B427 1C:B417: 23        .byte $23
- - - - - - 0x03B428 1C:B418: 01        .byte $01
- - - - - - 0x03B429 1C:B419: 23        .byte $23
- - - - - - 0x03B42A 1C:B41A: 01        .byte $01
- - - - - - 0x03B42B 1C:B41B: 23        .byte $23
- - - - - - 0x03B42C 1C:B41C: 01        .byte $01
- - - - - - 0x03B42D 1C:B41D: 23        .byte $23
- - - - - - 0x03B42E 1C:B41E: 01        .byte $01
- - - - - - 0x03B42F 1C:B41F: 23        .byte $23
- - - - - - 0x03B430 1C:B420: 01        .byte $01
- - - - - - 0x03B431 1C:B421: 23        .byte $23
- - - - - - 0x03B432 1C:B422: 01        .byte $01
- - - - - - 0x03B433 1C:B423: 23        .byte $23
- - - - - - 0x03B434 1C:B424: 01        .byte $01
- - - - - - 0x03B435 1C:B425: 23        .byte $23
- - - - - - 0x03B436 1C:B426: 01        .byte $01
- - - - - - 0x03B437 1C:B427: 23        .byte $23
- - - - - - 0x03B438 1C:B428: 01        .byte $01
- - - - - - 0x03B439 1C:B429: 23        .byte $23
- - - - - - 0x03B43A 1C:B42A: 01        .byte $01
- - - - - - 0x03B43B 1C:B42B: 23        .byte $23
- - - - - - 0x03B43C 1C:B42C: 01        .byte $01
- - - - - - 0x03B43D 1C:B42D: 23        .byte $23
; 10
- D - I - - 0x03B43E 1C:B42E: 12        .byte $12
- - - - - - 0x03B43F 1C:B42F: 22        .byte $22
- - - - - - 0x03B440 1C:B430: 23        .byte $23
- D - I - - 0x03B441 1C:B431: 43        .byte $43
- D - I - - 0x03B442 1C:B432: 12        .byte $12
- D - I - - 0x03B443 1C:B433: 33        .byte $33
- D - I - - 0x03B444 1C:B434: 33        .byte $33
- D - I - - 0x03B445 1C:B435: 34        .byte $34
- D - I - - 0x03B446 1C:B436: 11        .byte $11
- D - I - - 0x03B447 1C:B437: 33        .byte $33
- D - I - - 0x03B448 1C:B438: 32        .byte $32
- D - I - - 0x03B449 1C:B439: 43        .byte $43
- D - I - - 0x03B44A 1C:B43A: 11        .byte $11
- D - I - - 0x03B44B 1C:B43B: 13        .byte $13
- D - I - - 0x03B44C 1C:B43C: 33        .byte $33
- D - I - - 0x03B44D 1C:B43D: 23        .byte $23
- D - I - - 0x03B44E 1C:B43E: 22        .byte $22
- D - I - - 0x03B44F 1C:B43F: 23        .byte $23
- D - I - - 0x03B450 1C:B440: 34        .byte $34
- D - I - - 0x03B451 1C:B441: 33        .byte $33
- D - I - - 0x03B452 1C:B442: 22        .byte $22
- D - I - - 0x03B453 1C:B443: 22        .byte $22
- - - - - - 0x03B454 1C:B444: 33        .byte $33
- D - I - - 0x03B455 1C:B445: 34        .byte $34
- - - - - - 0x03B456 1C:B446: 01        .byte $01
- - - - - - 0x03B457 1C:B447: 23        .byte $23
- - - - - - 0x03B458 1C:B448: 01        .byte $01
- - - - - - 0x03B459 1C:B449: 23        .byte $23
- - - - - - 0x03B45A 1C:B44A: 01        .byte $01
- - - - - - 0x03B45B 1C:B44B: 23        .byte $23
- - - - - - 0x03B45C 1C:B44C: 01        .byte $01
- - - - - - 0x03B45D 1C:B44D: 23        .byte $23
- - - - - - 0x03B45E 1C:B44E: 01        .byte $01
- - - - - - 0x03B45F 1C:B44F: 23        .byte $23
- - - - - - 0x03B460 1C:B450: 01        .byte $01
- - - - - - 0x03B461 1C:B451: 23        .byte $23
- - - - - - 0x03B462 1C:B452: 01        .byte $01
- - - - - - 0x03B463 1C:B453: 23        .byte $23
- - - - - - 0x03B464 1C:B454: 01        .byte $01
- - - - - - 0x03B465 1C:B455: 23        .byte $23
- - - - - - 0x03B466 1C:B456: 01        .byte $01
- - - - - - 0x03B467 1C:B457: 23        .byte $23
- - - - - - 0x03B468 1C:B458: 01        .byte $01
- - - - - - 0x03B469 1C:B459: 23        .byte $23
- - - - - - 0x03B46A 1C:B45A: 01        .byte $01
- - - - - - 0x03B46B 1C:B45B: 23        .byte $23
- - - - - - 0x03B46C 1C:B45C: 01        .byte $01
- - - - - - 0x03B46D 1C:B45D: 23        .byte $23
; 11
- - - - - - 0x03B46E 1C:B45E: 66        .byte $66
- - - - - - 0x03B46F 1C:B45F: 55        .byte $55
- - - - - - 0x03B470 1C:B460: 22        .byte $22
- - - - - - 0x03B471 1C:B461: 43        .byte $43
- - - - - - 0x03B472 1C:B462: 62        .byte $62
- D - I - - 0x03B473 1C:B463: 22        .byte $22
- D - I - - 0x03B474 1C:B464: 33        .byte $33
- D - I - - 0x03B475 1C:B465: 33        .byte $33
- D - I - - 0x03B476 1C:B466: 66        .byte $66
- - - - - - 0x03B477 1C:B467: 53        .byte $53
- - - - - - 0x03B478 1C:B468: 32        .byte $32
- D - I - - 0x03B479 1C:B469: 23        .byte $23
- D - I - - 0x03B47A 1C:B46A: 66        .byte $66
- - - - - - 0x03B47B 1C:B46B: 55        .byte $55
- D - I - - 0x03B47C 1C:B46C: 33        .byte $33
- - - - - - 0x03B47D 1C:B46D: 23        .byte $23
- D - I - - 0x03B47E 1C:B46E: 22        .byte $22
- D - I - - 0x03B47F 1C:B46F: 22        .byte $22
- - - - - - 0x03B480 1C:B470: 23        .byte $23
- D - I - - 0x03B481 1C:B471: 33        .byte $33
- - - - - - 0x03B482 1C:B472: 33        .byte $33
- - - - - - 0x03B483 1C:B473: 33        .byte $33
- - - - - - 0x03B484 1C:B474: 22        .byte $22
- - - - - - 0x03B485 1C:B475: 22        .byte $22
- - - - - - 0x03B486 1C:B476: 01        .byte $01
- - - - - - 0x03B487 1C:B477: 23        .byte $23
- - - - - - 0x03B488 1C:B478: 01        .byte $01
- - - - - - 0x03B489 1C:B479: 23        .byte $23
- - - - - - 0x03B48A 1C:B47A: 01        .byte $01
- - - - - - 0x03B48B 1C:B47B: 23        .byte $23
- - - - - - 0x03B48C 1C:B47C: 01        .byte $01
- - - - - - 0x03B48D 1C:B47D: 23        .byte $23
- - - - - - 0x03B48E 1C:B47E: 01        .byte $01
- - - - - - 0x03B48F 1C:B47F: 23        .byte $23
- - - - - - 0x03B490 1C:B480: 01        .byte $01
- - - - - - 0x03B491 1C:B481: 23        .byte $23
- - - - - - 0x03B492 1C:B482: 01        .byte $01
- - - - - - 0x03B493 1C:B483: 23        .byte $23
- - - - - - 0x03B494 1C:B484: 01        .byte $01
- - - - - - 0x03B495 1C:B485: 23        .byte $23
- - - - - - 0x03B496 1C:B486: 01        .byte $01
- - - - - - 0x03B497 1C:B487: 23        .byte $23
- - - - - - 0x03B498 1C:B488: 01        .byte $01
- - - - - - 0x03B499 1C:B489: 23        .byte $23
- - - - - - 0x03B49A 1C:B48A: 01        .byte $01
- - - - - - 0x03B49B 1C:B48B: 23        .byte $23
- - - - - - 0x03B49C 1C:B48C: 01        .byte $01
- - - - - - 0x03B49D 1C:B48D: 23        .byte $23
; 12
- - - - - - 0x03B49E 1C:B48E: 11        .byte $11
- - - - - - 0x03B49F 1C:B48F: 11        .byte $11
- - - - - - 0x03B4A0 1C:B490: 23        .byte $23
- - - - - - 0x03B4A1 1C:B491: 33        .byte $33
- D - I - - 0x03B4A2 1C:B492: 11        .byte $11
- - - - - - 0x03B4A3 1C:B493: 11        .byte $11
- D - I - - 0x03B4A4 1C:B494: 12        .byte $12
- - - - - - 0x03B4A5 1C:B495: 33        .byte $33
- - - - - - 0x03B4A6 1C:B496: 11        .byte $11
- - - - - - 0x03B4A7 1C:B497: 11        .byte $11
- - - - - - 0x03B4A8 1C:B498: 11        .byte $11
- D - I - - 0x03B4A9 1C:B499: 23        .byte $23
- - - - - - 0x03B4AA 1C:B49A: 11        .byte $11
- - - - - - 0x03B4AB 1C:B49B: 11        .byte $11
- - - - - - 0x03B4AC 1C:B49C: 11        .byte $11
- - - - - - 0x03B4AD 1C:B49D: 13        .byte $13
- - - - - - 0x03B4AE 1C:B49E: 11        .byte $11
- D - I - - 0x03B4AF 1C:B49F: 11        .byte $11
- D - I - - 0x03B4B0 1C:B4A0: 22        .byte $22
- D - I - - 0x03B4B1 1C:B4A1: 33        .byte $33
- - - - - - 0x03B4B2 1C:B4A2: 22        .byte $22
- D - I - - 0x03B4B3 1C:B4A3: 22        .byte $22
- - - - - - 0x03B4B4 1C:B4A4: 22        .byte $22
- - - - - - 0x03B4B5 1C:B4A5: 34        .byte $34
- - - - - - 0x03B4B6 1C:B4A6: 01        .byte $01
- - - - - - 0x03B4B7 1C:B4A7: 23        .byte $23
- - - - - - 0x03B4B8 1C:B4A8: 01        .byte $01
- - - - - - 0x03B4B9 1C:B4A9: 23        .byte $23
- - - - - - 0x03B4BA 1C:B4AA: 01        .byte $01
- - - - - - 0x03B4BB 1C:B4AB: 23        .byte $23
- - - - - - 0x03B4BC 1C:B4AC: 01        .byte $01
- - - - - - 0x03B4BD 1C:B4AD: 23        .byte $23
- - - - - - 0x03B4BE 1C:B4AE: 01        .byte $01
- - - - - - 0x03B4BF 1C:B4AF: 23        .byte $23
- - - - - - 0x03B4C0 1C:B4B0: 01        .byte $01
- - - - - - 0x03B4C1 1C:B4B1: 23        .byte $23
- - - - - - 0x03B4C2 1C:B4B2: 01        .byte $01
- - - - - - 0x03B4C3 1C:B4B3: 23        .byte $23
- - - - - - 0x03B4C4 1C:B4B4: 01        .byte $01
- - - - - - 0x03B4C5 1C:B4B5: 23        .byte $23
- - - - - - 0x03B4C6 1C:B4B6: 01        .byte $01
- - - - - - 0x03B4C7 1C:B4B7: 23        .byte $23
- - - - - - 0x03B4C8 1C:B4B8: 01        .byte $01
- - - - - - 0x03B4C9 1C:B4B9: 23        .byte $23
- - - - - - 0x03B4CA 1C:B4BA: 01        .byte $01
- - - - - - 0x03B4CB 1C:B4BB: 23        .byte $23
- - - - - - 0x03B4CC 1C:B4BC: 01        .byte $01
- - - - - - 0x03B4CD 1C:B4BD: 23        .byte $23
; 13
- - - - - - 0x03B4CE 1C:B4BE: 12        .byte $12
- - - - - - 0x03B4CF 1C:B4BF: 23        .byte $23
- - - - - - 0x03B4D0 1C:B4C0: 33        .byte $33
- - - - - - 0x03B4D1 1C:B4C1: 43        .byte $43
- D - I - - 0x03B4D2 1C:B4C2: 31        .byte $31
- D - I - - 0x03B4D3 1C:B4C3: 33        .byte $33
- D - I - - 0x03B4D4 1C:B4C4: 33        .byte $33
- D - I - - 0x03B4D5 1C:B4C5: 34        .byte $34
- D - I - - 0x03B4D6 1C:B4C6: 31        .byte $31
- D - I - - 0x03B4D7 1C:B4C7: 33        .byte $33
- D - I - - 0x03B4D8 1C:B4C8: 33        .byte $33
- D - I - - 0x03B4D9 1C:B4C9: 43        .byte $43
- D - I - - 0x03B4DA 1C:B4CA: 31        .byte $31
- D - I - - 0x03B4DB 1C:B4CB: 13        .byte $13
- D - I - - 0x03B4DC 1C:B4CC: 33        .byte $33
- D - I - - 0x03B4DD 1C:B4CD: 33        .byte $33
- D - I - - 0x03B4DE 1C:B4CE: 23        .byte $23
- D - I - - 0x03B4DF 1C:B4CF: 33        .byte $33
- D - I - - 0x03B4E0 1C:B4D0: 34        .byte $34
- D - I - - 0x03B4E1 1C:B4D1: 33        .byte $33
- - - - - - 0x03B4E2 1C:B4D2: 22        .byte $22
- - - - - - 0x03B4E3 1C:B4D3: 33        .byte $33
- D - I - - 0x03B4E4 1C:B4D4: 33        .byte $33
- - - - - - 0x03B4E5 1C:B4D5: 34        .byte $34
- - - - - - 0x03B4E6 1C:B4D6: 01        .byte $01
- - - - - - 0x03B4E7 1C:B4D7: 23        .byte $23
- - - - - - 0x03B4E8 1C:B4D8: 01        .byte $01
- - - - - - 0x03B4E9 1C:B4D9: 23        .byte $23
- - - - - - 0x03B4EA 1C:B4DA: 01        .byte $01
- - - - - - 0x03B4EB 1C:B4DB: 23        .byte $23
- - - - - - 0x03B4EC 1C:B4DC: 01        .byte $01
- - - - - - 0x03B4ED 1C:B4DD: 23        .byte $23
- - - - - - 0x03B4EE 1C:B4DE: 01        .byte $01
- - - - - - 0x03B4EF 1C:B4DF: 23        .byte $23
- - - - - - 0x03B4F0 1C:B4E0: 01        .byte $01
- - - - - - 0x03B4F1 1C:B4E1: 23        .byte $23
- - - - - - 0x03B4F2 1C:B4E2: 01        .byte $01
- - - - - - 0x03B4F3 1C:B4E3: 23        .byte $23
- - - - - - 0x03B4F4 1C:B4E4: 01        .byte $01
- - - - - - 0x03B4F5 1C:B4E5: 23        .byte $23
- - - - - - 0x03B4F6 1C:B4E6: 01        .byte $01
- - - - - - 0x03B4F7 1C:B4E7: 23        .byte $23
- - - - - - 0x03B4F8 1C:B4E8: 01        .byte $01
- - - - - - 0x03B4F9 1C:B4E9: 23        .byte $23
- - - - - - 0x03B4FA 1C:B4EA: 01        .byte $01
- - - - - - 0x03B4FB 1C:B4EB: 23        .byte $23
- - - - - - 0x03B4FC 1C:B4EC: 01        .byte $01
- - - - - - 0x03B4FD 1C:B4ED: 23        .byte $23
; 14
- D - I - - 0x03B4FE 1C:B4EE: 22        .byte $22
- D - I - - 0x03B4FF 1C:B4EF: 22        .byte $22
- D - I - - 0x03B500 1C:B4F0: 22        .byte $22
- - - - - - 0x03B501 1C:B4F1: 43        .byte $43
- D - I - - 0x03B502 1C:B4F2: 22        .byte $22
- D - I - - 0x03B503 1C:B4F3: 22        .byte $22
- D - I - - 0x03B504 1C:B4F4: 13        .byte $13
- D - I - - 0x03B505 1C:B4F5: 32        .byte $32
- D - I - - 0x03B506 1C:B4F6: 11        .byte $11
- D - I - - 0x03B507 1C:B4F7: 22        .byte $22
- D - I - - 0x03B508 1C:B4F8: 22        .byte $22
- D - I - - 0x03B509 1C:B4F9: 43        .byte $43
- D - I - - 0x03B50A 1C:B4FA: 11        .byte $11
- - - - - - 0x03B50B 1C:B4FB: 13        .byte $13
- - - - - - 0x03B50C 1C:B4FC: 22        .byte $22
- D - I - - 0x03B50D 1C:B4FD: 23        .byte $23
- D - I - - 0x03B50E 1C:B4FE: 22        .byte $22
- D - I - - 0x03B50F 1C:B4FF: 22        .byte $22
- D - I - - 0x03B510 1C:B500: 23        .byte $23
- D - I - - 0x03B511 1C:B501: 23        .byte $23
- D - I - - 0x03B512 1C:B502: 22        .byte $22
- D - I - - 0x03B513 1C:B503: 22        .byte $22
- D - I - - 0x03B514 1C:B504: 22        .byte $22
- D - I - - 0x03B515 1C:B505: 32        .byte $32
- - - - - - 0x03B516 1C:B506: 01        .byte $01
- - - - - - 0x03B517 1C:B507: 23        .byte $23
- - - - - - 0x03B518 1C:B508: 01        .byte $01
- - - - - - 0x03B519 1C:B509: 23        .byte $23
- - - - - - 0x03B51A 1C:B50A: 01        .byte $01
- - - - - - 0x03B51B 1C:B50B: 23        .byte $23
- - - - - - 0x03B51C 1C:B50C: 01        .byte $01
- - - - - - 0x03B51D 1C:B50D: 23        .byte $23
- - - - - - 0x03B51E 1C:B50E: 01        .byte $01
- - - - - - 0x03B51F 1C:B50F: 23        .byte $23
- - - - - - 0x03B520 1C:B510: 01        .byte $01
- - - - - - 0x03B521 1C:B511: 23        .byte $23
- - - - - - 0x03B522 1C:B512: 01        .byte $01
- - - - - - 0x03B523 1C:B513: 23        .byte $23
- - - - - - 0x03B524 1C:B514: 01        .byte $01
- - - - - - 0x03B525 1C:B515: 23        .byte $23
- - - - - - 0x03B526 1C:B516: 01        .byte $01
- - - - - - 0x03B527 1C:B517: 23        .byte $23
- - - - - - 0x03B528 1C:B518: 01        .byte $01
- - - - - - 0x03B529 1C:B519: 23        .byte $23
- - - - - - 0x03B52A 1C:B51A: 01        .byte $01
- - - - - - 0x03B52B 1C:B51B: 23        .byte $23
- - - - - - 0x03B52C 1C:B51C: 01        .byte $01
- - - - - - 0x03B52D 1C:B51D: 23        .byte $23
; 15
- - - - - - 0x03B52E 1C:B51E: 12        .byte $12
- D - I - - 0x03B52F 1C:B51F: 22        .byte $22
- D - I - - 0x03B530 1C:B520: 22        .byte $22
- - - - - - 0x03B531 1C:B521: 43        .byte $43
- D - I - - 0x03B532 1C:B522: 11        .byte $11
- D - I - - 0x03B533 1C:B523: 22        .byte $22
- D - I - - 0x03B534 1C:B524: 33        .byte $33
- D - I - - 0x03B535 1C:B525: 34        .byte $34
- D - I - - 0x03B536 1C:B526: 11        .byte $11
- D - I - - 0x03B537 1C:B527: 13        .byte $13
- - - - - - 0x03B538 1C:B528: 22        .byte $22
- D - I - - 0x03B539 1C:B529: 43        .byte $43
- - - - - - 0x03B53A 1C:B52A: 11        .byte $11
- - - - - - 0x03B53B 1C:B52B: 11        .byte $11
- - - - - - 0x03B53C 1C:B52C: 32        .byte $32
- D - I - - 0x03B53D 1C:B52D: 23        .byte $23
- D - I - - 0x03B53E 1C:B52E: 22        .byte $22
- D - I - - 0x03B53F 1C:B52F: 23        .byte $23
- D - I - - 0x03B540 1C:B530: 33        .byte $33
- D - I - - 0x03B541 1C:B531: 43        .byte $43
- - - - - - 0x03B542 1C:B532: 22        .byte $22
- - - - - - 0x03B543 1C:B533: 22        .byte $22
- - - - - - 0x03B544 1C:B534: 33        .byte $33
- - - - - - 0x03B545 1C:B535: 34        .byte $34
- - - - - - 0x03B546 1C:B536: 01        .byte $01
- - - - - - 0x03B547 1C:B537: 23        .byte $23
- - - - - - 0x03B548 1C:B538: 01        .byte $01
- - - - - - 0x03B549 1C:B539: 23        .byte $23
- - - - - - 0x03B54A 1C:B53A: 01        .byte $01
- - - - - - 0x03B54B 1C:B53B: 23        .byte $23
- - - - - - 0x03B54C 1C:B53C: 01        .byte $01
- - - - - - 0x03B54D 1C:B53D: 23        .byte $23
- - - - - - 0x03B54E 1C:B53E: 01        .byte $01
- - - - - - 0x03B54F 1C:B53F: 23        .byte $23
- - - - - - 0x03B550 1C:B540: 01        .byte $01
- - - - - - 0x03B551 1C:B541: 23        .byte $23
- - - - - - 0x03B552 1C:B542: 01        .byte $01
- - - - - - 0x03B553 1C:B543: 23        .byte $23
- - - - - - 0x03B554 1C:B544: 01        .byte $01
- - - - - - 0x03B555 1C:B545: 23        .byte $23
- - - - - - 0x03B556 1C:B546: 01        .byte $01
- - - - - - 0x03B557 1C:B547: 23        .byte $23
- - - - - - 0x03B558 1C:B548: 01        .byte $01
- - - - - - 0x03B559 1C:B549: 23        .byte $23
- - - - - - 0x03B55A 1C:B54A: 01        .byte $01
- - - - - - 0x03B55B 1C:B54B: 23        .byte $23
- - - - - - 0x03B55C 1C:B54C: 01        .byte $01
- - - - - - 0x03B55D 1C:B54D: 23        .byte $23
; 16
- - - - - - 0x03B55E 1C:B54E: 11        .byte $11
- - - - - - 0x03B55F 1C:B54F: 22        .byte $22
- - - - - - 0x03B560 1C:B550: 23        .byte $23
- - - - - - 0x03B561 1C:B551: 43        .byte $43
- D - I - - 0x03B562 1C:B552: 13        .byte $13
- D - I - - 0x03B563 1C:B553: 33        .byte $33
- D - I - - 0x03B564 1C:B554: 33        .byte $33
- D - I - - 0x03B565 1C:B555: 33        .byte $33
- D - I - - 0x03B566 1C:B556: 11        .byte $11
- D - I - - 0x03B567 1C:B557: 23        .byte $23
- D - I - - 0x03B568 1C:B558: 33        .byte $33
- - - - - - 0x03B569 1C:B559: 33        .byte $33
- D - I - - 0x03B56A 1C:B55A: 11        .byte $11
- - - - - - 0x03B56B 1C:B55B: 13        .byte $13
- - - - - - 0x03B56C 1C:B55C: 33        .byte $33
- - - - - - 0x03B56D 1C:B55D: 33        .byte $33
- D - I - - 0x03B56E 1C:B55E: 33        .byte $33
- D - I - - 0x03B56F 1C:B55F: 33        .byte $33
- D - I - - 0x03B570 1C:B560: 33        .byte $33
- D - I - - 0x03B571 1C:B561: 33        .byte $33
- - - - - - 0x03B572 1C:B562: 33        .byte $33
- - - - - - 0x03B573 1C:B563: 33        .byte $33
- - - - - - 0x03B574 1C:B564: 33        .byte $33
- - - - - - 0x03B575 1C:B565: 33        .byte $33
- - - - - - 0x03B576 1C:B566: 01        .byte $01
- - - - - - 0x03B577 1C:B567: 23        .byte $23
- - - - - - 0x03B578 1C:B568: 01        .byte $01
- - - - - - 0x03B579 1C:B569: 23        .byte $23
- - - - - - 0x03B57A 1C:B56A: 01        .byte $01
- - - - - - 0x03B57B 1C:B56B: 23        .byte $23
- - - - - - 0x03B57C 1C:B56C: 01        .byte $01
- - - - - - 0x03B57D 1C:B56D: 23        .byte $23
- - - - - - 0x03B57E 1C:B56E: 01        .byte $01
- - - - - - 0x03B57F 1C:B56F: 23        .byte $23
- - - - - - 0x03B580 1C:B570: 01        .byte $01
- - - - - - 0x03B581 1C:B571: 23        .byte $23
- - - - - - 0x03B582 1C:B572: 01        .byte $01
- - - - - - 0x03B583 1C:B573: 23        .byte $23
- - - - - - 0x03B584 1C:B574: 01        .byte $01
- - - - - - 0x03B585 1C:B575: 23        .byte $23
- - - - - - 0x03B586 1C:B576: 01        .byte $01
- - - - - - 0x03B587 1C:B577: 23        .byte $23
- - - - - - 0x03B588 1C:B578: 01        .byte $01
- - - - - - 0x03B589 1C:B579: 23        .byte $23
- - - - - - 0x03B58A 1C:B57A: 01        .byte $01
- - - - - - 0x03B58B 1C:B57B: 23        .byte $23
- - - - - - 0x03B58C 1C:B57C: 01        .byte $01
- - - - - - 0x03B58D 1C:B57D: 23        .byte $23
; 17
- - - - - - 0x03B58E 1C:B57E: 22        .byte $22
- - - - - - 0x03B58F 1C:B57F: 22        .byte $22
- D - I - - 0x03B590 1C:B580: 22        .byte $22
- D - I - - 0x03B591 1C:B581: 43        .byte $43
- - - - - - 0x03B592 1C:B582: 22        .byte $22
- D - I - - 0x03B593 1C:B583: 22        .byte $22
- D - I - - 0x03B594 1C:B584: 13        .byte $13
- D - I - - 0x03B595 1C:B585: 34        .byte $34
- D - I - - 0x03B596 1C:B586: 11        .byte $11
- D - I - - 0x03B597 1C:B587: 22        .byte $22
- D - I - - 0x03B598 1C:B588: 22        .byte $22
- D - I - - 0x03B599 1C:B589: 43        .byte $43
- - - - - - 0x03B59A 1C:B58A: 11        .byte $11
- - - - - - 0x03B59B 1C:B58B: 13        .byte $13
- - - - - - 0x03B59C 1C:B58C: 22        .byte $22
- - - - - - 0x03B59D 1C:B58D: 23        .byte $23
- D - I - - 0x03B59E 1C:B58E: 22        .byte $22
- D - I - - 0x03B59F 1C:B58F: 22        .byte $22
- D - I - - 0x03B5A0 1C:B590: 24        .byte $24
- D - I - - 0x03B5A1 1C:B591: 44        .byte $44
- D - I - - 0x03B5A2 1C:B592: 22        .byte $22
- D - I - - 0x03B5A3 1C:B593: 22        .byte $22
- D - I - - 0x03B5A4 1C:B594: 22        .byte $22
- D - I - - 0x03B5A5 1C:B595: 44        .byte $44
- - - - - - 0x03B5A6 1C:B596: 01        .byte $01
- - - - - - 0x03B5A7 1C:B597: 23        .byte $23
- - - - - - 0x03B5A8 1C:B598: 01        .byte $01
- - - - - - 0x03B5A9 1C:B599: 23        .byte $23
- - - - - - 0x03B5AA 1C:B59A: 01        .byte $01
- - - - - - 0x03B5AB 1C:B59B: 23        .byte $23
- - - - - - 0x03B5AC 1C:B59C: 01        .byte $01
- - - - - - 0x03B5AD 1C:B59D: 23        .byte $23
- - - - - - 0x03B5AE 1C:B59E: 01        .byte $01
- - - - - - 0x03B5AF 1C:B59F: 23        .byte $23
- - - - - - 0x03B5B0 1C:B5A0: 01        .byte $01
- - - - - - 0x03B5B1 1C:B5A1: 23        .byte $23
- - - - - - 0x03B5B2 1C:B5A2: 01        .byte $01
- - - - - - 0x03B5B3 1C:B5A3: 23        .byte $23
- - - - - - 0x03B5B4 1C:B5A4: 01        .byte $01
- - - - - - 0x03B5B5 1C:B5A5: 23        .byte $23
- - - - - - 0x03B5B6 1C:B5A6: 01        .byte $01
- - - - - - 0x03B5B7 1C:B5A7: 23        .byte $23
- - - - - - 0x03B5B8 1C:B5A8: 01        .byte $01
- - - - - - 0x03B5B9 1C:B5A9: 23        .byte $23
- - - - - - 0x03B5BA 1C:B5AA: 01        .byte $01
- - - - - - 0x03B5BB 1C:B5AB: 23        .byte $23
- - - - - - 0x03B5BC 1C:B5AC: 01        .byte $01
- - - - - - 0x03B5BD 1C:B5AD: 23        .byte $23
; 18
- - - - - - 0x03B5BE 1C:B5AE: 12        .byte $12
- - - - - - 0x03B5BF 1C:B5AF: 22        .byte $22
- - - - - - 0x03B5C0 1C:B5B0: 23        .byte $23
- - - - - - 0x03B5C1 1C:B5B1: 43        .byte $43
- D - I - - 0x03B5C2 1C:B5B2: 12        .byte $12
- D - I - - 0x03B5C3 1C:B5B3: 33        .byte $33
- - - - - - 0x03B5C4 1C:B5B4: 33        .byte $33
- D - I - - 0x03B5C5 1C:B5B5: 84        .byte $84
- - - - - - 0x03B5C6 1C:B5B6: 11        .byte $11
- - - - - - 0x03B5C7 1C:B5B7: 33        .byte $33
- - - - - - 0x03B5C8 1C:B5B8: 32        .byte $32
- - - - - - 0x03B5C9 1C:B5B9: 33        .byte $33
- - - - - - 0x03B5CA 1C:B5BA: 11        .byte $11
- - - - - - 0x03B5CB 1C:B5BB: 13        .byte $13
- - - - - - 0x03B5CC 1C:B5BC: 33        .byte $33
- - - - - - 0x03B5CD 1C:B5BD: 33        .byte $33
- D - I - - 0x03B5CE 1C:B5BE: 23        .byte $23
- D - I - - 0x03B5CF 1C:B5BF: 33        .byte $33
- D - I - - 0x03B5D0 1C:B5C0: 82        .byte $82
- D - I - - 0x03B5D1 1C:B5C1: 84        .byte $84
- - - - - - 0x03B5D2 1C:B5C2: 22        .byte $22
- - - - - - 0x03B5D3 1C:B5C3: 33        .byte $33
- - - - - - 0x03B5D4 1C:B5C4: 88        .byte $88
- - - - - - 0x03B5D5 1C:B5C5: 84        .byte $84
- - - - - - 0x03B5D6 1C:B5C6: 01        .byte $01
- - - - - - 0x03B5D7 1C:B5C7: 23        .byte $23
- - - - - - 0x03B5D8 1C:B5C8: 01        .byte $01
- - - - - - 0x03B5D9 1C:B5C9: 23        .byte $23
- - - - - - 0x03B5DA 1C:B5CA: 01        .byte $01
- - - - - - 0x03B5DB 1C:B5CB: 23        .byte $23
- - - - - - 0x03B5DC 1C:B5CC: 01        .byte $01
- - - - - - 0x03B5DD 1C:B5CD: 23        .byte $23
- - - - - - 0x03B5DE 1C:B5CE: 01        .byte $01
- - - - - - 0x03B5DF 1C:B5CF: 23        .byte $23
- - - - - - 0x03B5E0 1C:B5D0: 01        .byte $01
- - - - - - 0x03B5E1 1C:B5D1: 23        .byte $23
- - - - - - 0x03B5E2 1C:B5D2: 01        .byte $01
- - - - - - 0x03B5E3 1C:B5D3: 23        .byte $23
- - - - - - 0x03B5E4 1C:B5D4: 01        .byte $01
- - - - - - 0x03B5E5 1C:B5D5: 23        .byte $23
- - - - - - 0x03B5E6 1C:B5D6: 01        .byte $01
- - - - - - 0x03B5E7 1C:B5D7: 23        .byte $23
- - - - - - 0x03B5E8 1C:B5D8: 01        .byte $01
- - - - - - 0x03B5E9 1C:B5D9: 23        .byte $23
- - - - - - 0x03B5EA 1C:B5DA: 01        .byte $01
- - - - - - 0x03B5EB 1C:B5DB: 23        .byte $23
- - - - - - 0x03B5EC 1C:B5DC: 01        .byte $01
- - - - - - 0x03B5ED 1C:B5DD: 23        .byte $23
; 19
- - - - - - 0x03B5EE 1C:B5DE: 22        .byte $22
- - - - - - 0x03B5EF 1C:B5DF: 22        .byte $22
- - - - - - 0x03B5F0 1C:B5E0: 22        .byte $22
- - - - - - 0x03B5F1 1C:B5E1: 43        .byte $43
- - - - - - 0x03B5F2 1C:B5E2: 22        .byte $22
- - - - - - 0x03B5F3 1C:B5E3: 24        .byte $24
- - - - - - 0x03B5F4 1C:B5E4: 13        .byte $13
- D - I - - 0x03B5F5 1C:B5E5: 32        .byte $32
- - - - - - 0x03B5F6 1C:B5E6: 11        .byte $11
- - - - - - 0x03B5F7 1C:B5E7: 22        .byte $22
- D - I - - 0x03B5F8 1C:B5E8: 22        .byte $22
- D - I - - 0x03B5F9 1C:B5E9: 33        .byte $33
- - - - - - 0x03B5FA 1C:B5EA: 11        .byte $11
- - - - - - 0x03B5FB 1C:B5EB: 13        .byte $13
- - - - - - 0x03B5FC 1C:B5EC: 22        .byte $22
- - - - - - 0x03B5FD 1C:B5ED: 23        .byte $23
- D - I - - 0x03B5FE 1C:B5EE: 22        .byte $22
- D - I - - 0x03B5FF 1C:B5EF: 22        .byte $22
- D - I - - 0x03B600 1C:B5F0: 23        .byte $23
- D - I - - 0x03B601 1C:B5F1: 23        .byte $23
- - - - - - 0x03B602 1C:B5F2: 22        .byte $22
- - - - - - 0x03B603 1C:B5F3: 22        .byte $22
- - - - - - 0x03B604 1C:B5F4: 24        .byte $24
- - - - - - 0x03B605 1C:B5F5: 32        .byte $32
- - - - - - 0x03B606 1C:B5F6: 01        .byte $01
- - - - - - 0x03B607 1C:B5F7: 23        .byte $23
- - - - - - 0x03B608 1C:B5F8: 01        .byte $01
- - - - - - 0x03B609 1C:B5F9: 23        .byte $23
- - - - - - 0x03B60A 1C:B5FA: 01        .byte $01
- - - - - - 0x03B60B 1C:B5FB: 23        .byte $23
- - - - - - 0x03B60C 1C:B5FC: 01        .byte $01
- - - - - - 0x03B60D 1C:B5FD: 23        .byte $23
- - - - - - 0x03B60E 1C:B5FE: 01        .byte $01
- - - - - - 0x03B60F 1C:B5FF: 23        .byte $23
- - - - - - 0x03B610 1C:B600: 01        .byte $01
- - - - - - 0x03B611 1C:B601: 23        .byte $23
- - - - - - 0x03B612 1C:B602: 01        .byte $01
- - - - - - 0x03B613 1C:B603: 23        .byte $23
- - - - - - 0x03B614 1C:B604: 01        .byte $01
- - - - - - 0x03B615 1C:B605: 23        .byte $23
- - - - - - 0x03B616 1C:B606: 01        .byte $01
- - - - - - 0x03B617 1C:B607: 23        .byte $23
- - - - - - 0x03B618 1C:B608: 01        .byte $01
- - - - - - 0x03B619 1C:B609: 23        .byte $23
- - - - - - 0x03B61A 1C:B60A: 01        .byte $01
- - - - - - 0x03B61B 1C:B60B: 23        .byte $23
- - - - - - 0x03B61C 1C:B60C: 01        .byte $01
- - - - - - 0x03B61D 1C:B60D: 23        .byte $23
; 1A
- - - - - - 0x03B61E 1C:B60E: 12        .byte $12
- - - - - - 0x03B61F 1C:B60F: 11        .byte $11
- - - - - - 0x03B620 1C:B610: 32        .byte $32
- - - - - - 0x03B621 1C:B611: 33        .byte $33
- - - - - - 0x03B622 1C:B612: 11        .byte $11
- - - - - - 0x03B623 1C:B613: 23        .byte $23
- - - - - - 0x03B624 1C:B614: 33        .byte $33
- - - - - - 0x03B625 1C:B615: 33        .byte $33
- - - - - - 0x03B626 1C:B616: 11        .byte $11
- - - - - - 0x03B627 1C:B617: 13        .byte $13
- - - - - - 0x03B628 1C:B618: 32        .byte $32
- - - - - - 0x03B629 1C:B619: 33        .byte $33
- - - - - - 0x03B62A 1C:B61A: 11        .byte $11
- - - - - - 0x03B62B 1C:B61B: 11        .byte $11
- - - - - - 0x03B62C 1C:B61C: 33        .byte $33
- - - - - - 0x03B62D 1C:B61D: 33        .byte $33
- - - - - - 0x03B62E 1C:B61E: 33        .byte $33
- - - - - - 0x03B62F 1C:B61F: 33        .byte $33
- - - - - - 0x03B630 1C:B620: 32        .byte $32
- - - - - - 0x03B631 1C:B621: 23        .byte $23
- - - - - - 0x03B632 1C:B622: 33        .byte $33
- - - - - - 0x03B633 1C:B623: 33        .byte $33
- - - - - - 0x03B634 1C:B624: 22        .byte $22
- - - - - - 0x03B635 1C:B625: 24        .byte $24
- - - - - - 0x03B636 1C:B626: 01        .byte $01
- - - - - - 0x03B637 1C:B627: 23        .byte $23
- - - - - - 0x03B638 1C:B628: 01        .byte $01
- - - - - - 0x03B639 1C:B629: 23        .byte $23
- - - - - - 0x03B63A 1C:B62A: 01        .byte $01
- - - - - - 0x03B63B 1C:B62B: 23        .byte $23
- - - - - - 0x03B63C 1C:B62C: 01        .byte $01
- - - - - - 0x03B63D 1C:B62D: 23        .byte $23
- - - - - - 0x03B63E 1C:B62E: 01        .byte $01
- - - - - - 0x03B63F 1C:B62F: 23        .byte $23
- - - - - - 0x03B640 1C:B630: 01        .byte $01
- - - - - - 0x03B641 1C:B631: 23        .byte $23
- - - - - - 0x03B642 1C:B632: 01        .byte $01
- - - - - - 0x03B643 1C:B633: 23        .byte $23
- - - - - - 0x03B644 1C:B634: 01        .byte $01
- - - - - - 0x03B645 1C:B635: 23        .byte $23
- - - - - - 0x03B646 1C:B636: 01        .byte $01
- - - - - - 0x03B647 1C:B637: 23        .byte $23
- - - - - - 0x03B648 1C:B638: 01        .byte $01
- - - - - - 0x03B649 1C:B639: 23        .byte $23
- - - - - - 0x03B64A 1C:B63A: 01        .byte $01
- - - - - - 0x03B64B 1C:B63B: 23        .byte $23
- - - - - - 0x03B64C 1C:B63C: 01        .byte $01
- - - - - - 0x03B64D 1C:B63D: 23        .byte $23
; 1B
- - - - - - 0x03B64E 1C:B63E: 12        .byte $12
- - - - - - 0x03B64F 1C:B63F: 11        .byte $11
- - - - - - 0x03B650 1C:B640: 32        .byte $32
- - - - - - 0x03B651 1C:B641: 33        .byte $33
- D - I - - 0x03B652 1C:B642: 11        .byte $11
- D - I - - 0x03B653 1C:B643: 23        .byte $23
- D - I - - 0x03B654 1C:B644: 33        .byte $33
- D - I - - 0x03B655 1C:B645: 33        .byte $33
- - - - - - 0x03B656 1C:B646: 11        .byte $11
- - - - - - 0x03B657 1C:B647: 13        .byte $13
- - - - - - 0x03B658 1C:B648: 33        .byte $33
- - - - - - 0x03B659 1C:B649: 33        .byte $33
- - - - - - 0x03B65A 1C:B64A: 11        .byte $11
- - - - - - 0x03B65B 1C:B64B: 11        .byte $11
- - - - - - 0x03B65C 1C:B64C: 33        .byte $33
- - - - - - 0x03B65D 1C:B64D: 33        .byte $33
- D - I - - 0x03B65E 1C:B64E: 31        .byte $31
- D - I - - 0x03B65F 1C:B64F: 33        .byte $33
- D - I - - 0x03B660 1C:B650: 33        .byte $33
- D - I - - 0x03B661 1C:B651: 23        .byte $23
- - - - - - 0x03B662 1C:B652: 33        .byte $33
- - - - - - 0x03B663 1C:B653: 33        .byte $33
- - - - - - 0x03B664 1C:B654: 22        .byte $22
- - - - - - 0x03B665 1C:B655: 24        .byte $24
- - - - - - 0x03B666 1C:B656: 01        .byte $01
- - - - - - 0x03B667 1C:B657: 23        .byte $23
- - - - - - 0x03B668 1C:B658: 01        .byte $01
- - - - - - 0x03B669 1C:B659: 23        .byte $23
- - - - - - 0x03B66A 1C:B65A: 01        .byte $01
- - - - - - 0x03B66B 1C:B65B: 23        .byte $23
- - - - - - 0x03B66C 1C:B65C: 01        .byte $01
- - - - - - 0x03B66D 1C:B65D: 23        .byte $23
- - - - - - 0x03B66E 1C:B65E: 01        .byte $01
- - - - - - 0x03B66F 1C:B65F: 23        .byte $23
- - - - - - 0x03B670 1C:B660: 01        .byte $01
- - - - - - 0x03B671 1C:B661: 23        .byte $23
- - - - - - 0x03B672 1C:B662: 01        .byte $01
- - - - - - 0x03B673 1C:B663: 23        .byte $23
- - - - - - 0x03B674 1C:B664: 01        .byte $01
- - - - - - 0x03B675 1C:B665: 23        .byte $23
- - - - - - 0x03B676 1C:B666: 01        .byte $01
- - - - - - 0x03B677 1C:B667: 23        .byte $23
- - - - - - 0x03B678 1C:B668: 01        .byte $01
- - - - - - 0x03B679 1C:B669: 23        .byte $23
- - - - - - 0x03B67A 1C:B66A: 01        .byte $01
- - - - - - 0x03B67B 1C:B66B: 23        .byte $23
- - - - - - 0x03B67C 1C:B66C: 01        .byte $01
- - - - - - 0x03B67D 1C:B66D: 23        .byte $23
; 1C
- - - - - - 0x03B67E 1C:B66E: 12        .byte $12
- - - - - - 0x03B67F 1C:B66F: 11        .byte $11
- - - - - - 0x03B680 1C:B670: 32        .byte $32
- - - - - - 0x03B681 1C:B671: 33        .byte $33
- D - I - - 0x03B682 1C:B672: 13        .byte $13
- D - I - - 0x03B683 1C:B673: 23        .byte $23
- - - - - - 0x03B684 1C:B674: 33        .byte $33
- D - I - - 0x03B685 1C:B675: 33        .byte $33
- D - I - - 0x03B686 1C:B676: 11        .byte $11
- D - I - - 0x03B687 1C:B677: 13        .byte $13
- D - I - - 0x03B688 1C:B678: 33        .byte $33
- D - I - - 0x03B689 1C:B679: 33        .byte $33
- - - - - - 0x03B68A 1C:B67A: 11        .byte $11
- - - - - - 0x03B68B 1C:B67B: 11        .byte $11
- D - I - - 0x03B68C 1C:B67C: 33        .byte $33
- D - I - - 0x03B68D 1C:B67D: 33        .byte $33
- D - I - - 0x03B68E 1C:B67E: 33        .byte $33
- D - I - - 0x03B68F 1C:B67F: 33        .byte $33
- D - I - - 0x03B690 1C:B680: 33        .byte $33
- D - I - - 0x03B691 1C:B681: 33        .byte $33
- - - - - - 0x03B692 1C:B682: 33        .byte $33
- - - - - - 0x03B693 1C:B683: 33        .byte $33
- - - - - - 0x03B694 1C:B684: 32        .byte $32
- - - - - - 0x03B695 1C:B685: 24        .byte $24
- - - - - - 0x03B696 1C:B686: 01        .byte $01
- - - - - - 0x03B697 1C:B687: 23        .byte $23
- - - - - - 0x03B698 1C:B688: 01        .byte $01
- - - - - - 0x03B699 1C:B689: 23        .byte $23
- - - - - - 0x03B69A 1C:B68A: 01        .byte $01
- - - - - - 0x03B69B 1C:B68B: 23        .byte $23
- - - - - - 0x03B69C 1C:B68C: 01        .byte $01
- - - - - - 0x03B69D 1C:B68D: 23        .byte $23
- - - - - - 0x03B69E 1C:B68E: 01        .byte $01
- - - - - - 0x03B69F 1C:B68F: 23        .byte $23
- - - - - - 0x03B6A0 1C:B690: 01        .byte $01
- - - - - - 0x03B6A1 1C:B691: 23        .byte $23
- - - - - - 0x03B6A2 1C:B692: 01        .byte $01
- - - - - - 0x03B6A3 1C:B693: 23        .byte $23
- - - - - - 0x03B6A4 1C:B694: 01        .byte $01
- - - - - - 0x03B6A5 1C:B695: 23        .byte $23
- - - - - - 0x03B6A6 1C:B696: 01        .byte $01
- - - - - - 0x03B6A7 1C:B697: 23        .byte $23
- - - - - - 0x03B6A8 1C:B698: 01        .byte $01
- - - - - - 0x03B6A9 1C:B699: 23        .byte $23
- - - - - - 0x03B6AA 1C:B69A: 01        .byte $01
- - - - - - 0x03B6AB 1C:B69B: 23        .byte $23
- - - - - - 0x03B6AC 1C:B69C: 01        .byte $01
- - - - - - 0x03B6AD 1C:B69D: 23        .byte $23
; 1D
- - - - - - 0x03B6AE 1C:B69E: 22        .byte $22
- - - - - - 0x03B6AF 1C:B69F: 22        .byte $22
- - - - - - 0x03B6B0 1C:B6A0: 22        .byte $22
- - - - - - 0x03B6B1 1C:B6A1: 43        .byte $43
- D - I - - 0x03B6B2 1C:B6A2: 12        .byte $12
- D - I - - 0x03B6B3 1C:B6A3: 23        .byte $23
- D - I - - 0x03B6B4 1C:B6A4: 33        .byte $33
- D - I - - 0x03B6B5 1C:B6A5: 43        .byte $43
- - - - - - 0x03B6B6 1C:B6A6: 11        .byte $11
- D - I - - 0x03B6B7 1C:B6A7: 23        .byte $23
- - - - - - 0x03B6B8 1C:B6A8: 33        .byte $33
- - - - - - 0x03B6B9 1C:B6A9: 33        .byte $33
- - - - - - 0x03B6BA 1C:B6AA: 11        .byte $11
- - - - - - 0x03B6BB 1C:B6AB: 13        .byte $13
- - - - - - 0x03B6BC 1C:B6AC: 33        .byte $33
- - - - - - 0x03B6BD 1C:B6AD: 33        .byte $33
- D - I - - 0x03B6BE 1C:B6AE: 33        .byte $33
- D - I - - 0x03B6BF 1C:B6AF: 32        .byte $32
- - - - - - 0x03B6C0 1C:B6B0: 33        .byte $33
- D - I - - 0x03B6C1 1C:B6B1: 23        .byte $23
- - - - - - 0x03B6C2 1C:B6B2: 33        .byte $33
- - - - - - 0x03B6C3 1C:B6B3: 33        .byte $33
- - - - - - 0x03B6C4 1C:B6B4: 32        .byte $32
- - - - - - 0x03B6C5 1C:B6B5: 24        .byte $24
- - - - - - 0x03B6C6 1C:B6B6: 01        .byte $01
- - - - - - 0x03B6C7 1C:B6B7: 23        .byte $23
- - - - - - 0x03B6C8 1C:B6B8: 01        .byte $01
- - - - - - 0x03B6C9 1C:B6B9: 23        .byte $23
- - - - - - 0x03B6CA 1C:B6BA: 01        .byte $01
- - - - - - 0x03B6CB 1C:B6BB: 23        .byte $23
- - - - - - 0x03B6CC 1C:B6BC: 01        .byte $01
- - - - - - 0x03B6CD 1C:B6BD: 23        .byte $23
- - - - - - 0x03B6CE 1C:B6BE: 01        .byte $01
- - - - - - 0x03B6CF 1C:B6BF: 23        .byte $23
- - - - - - 0x03B6D0 1C:B6C0: 01        .byte $01
- - - - - - 0x03B6D1 1C:B6C1: 23        .byte $23
- - - - - - 0x03B6D2 1C:B6C2: 01        .byte $01
- - - - - - 0x03B6D3 1C:B6C3: 23        .byte $23
- - - - - - 0x03B6D4 1C:B6C4: 01        .byte $01
- - - - - - 0x03B6D5 1C:B6C5: 23        .byte $23
- - - - - - 0x03B6D6 1C:B6C6: 01        .byte $01
- - - - - - 0x03B6D7 1C:B6C7: 23        .byte $23
- - - - - - 0x03B6D8 1C:B6C8: 01        .byte $01
- - - - - - 0x03B6D9 1C:B6C9: 23        .byte $23
- - - - - - 0x03B6DA 1C:B6CA: 01        .byte $01
- - - - - - 0x03B6DB 1C:B6CB: 23        .byte $23
- - - - - - 0x03B6DC 1C:B6CC: 01        .byte $01
- - - - - - 0x03B6DD 1C:B6CD: 23        .byte $23
; 1E
- D - I - - 0x03B6DE 1C:B6CE: 11        .byte $11
- D - I - - 0x03B6DF 1C:B6CF: 11        .byte $11
- D - I - - 0x03B6E0 1C:B6D0: 11        .byte $11
- D - I - - 0x03B6E1 1C:B6D1: 22        .byte $22
- - - - - - 0x03B6E2 1C:B6D2: 01        .byte $01
- - - - - - 0x03B6E3 1C:B6D3: 23        .byte $23
- - - - - - 0x03B6E4 1C:B6D4: 45        .byte $45
- - - - - - 0x03B6E5 1C:B6D5: 67        .byte $67
- - - - - - 0x03B6E6 1C:B6D6: 01        .byte $01
- - - - - - 0x03B6E7 1C:B6D7: 23        .byte $23
- - - - - - 0x03B6E8 1C:B6D8: 45        .byte $45
- - - - - - 0x03B6E9 1C:B6D9: 67        .byte $67
- - - - - - 0x03B6EA 1C:B6DA: 01        .byte $01
- - - - - - 0x03B6EB 1C:B6DB: 23        .byte $23
- - - - - - 0x03B6EC 1C:B6DC: 45        .byte $45
- - - - - - 0x03B6ED 1C:B6DD: 67        .byte $67
- - - - - - 0x03B6EE 1C:B6DE: 01        .byte $01
- - - - - - 0x03B6EF 1C:B6DF: 23        .byte $23
- - - - - - 0x03B6F0 1C:B6E0: 45        .byte $45
- - - - - - 0x03B6F1 1C:B6E1: 67        .byte $67
- - - - - - 0x03B6F2 1C:B6E2: 01        .byte $01
- - - - - - 0x03B6F3 1C:B6E3: 23        .byte $23
- - - - - - 0x03B6F4 1C:B6E4: 45        .byte $45
- - - - - - 0x03B6F5 1C:B6E5: 67        .byte $67
- - - - - - 0x03B6F6 1C:B6E6: 01        .byte $01
- - - - - - 0x03B6F7 1C:B6E7: 23        .byte $23
- - - - - - 0x03B6F8 1C:B6E8: 01        .byte $01
- - - - - - 0x03B6F9 1C:B6E9: 23        .byte $23
- - - - - - 0x03B6FA 1C:B6EA: 01        .byte $01
- - - - - - 0x03B6FB 1C:B6EB: 23        .byte $23
- - - - - - 0x03B6FC 1C:B6EC: 01        .byte $01
- - - - - - 0x03B6FD 1C:B6ED: 23        .byte $23
- - - - - - 0x03B6FE 1C:B6EE: 01        .byte $01
- - - - - - 0x03B6FF 1C:B6EF: 23        .byte $23
- - - - - - 0x03B700 1C:B6F0: 01        .byte $01
- - - - - - 0x03B701 1C:B6F1: 23        .byte $23
- - - - - - 0x03B702 1C:B6F2: 01        .byte $01
- - - - - - 0x03B703 1C:B6F3: 23        .byte $23
- - - - - - 0x03B704 1C:B6F4: 01        .byte $01
- - - - - - 0x03B705 1C:B6F5: 23        .byte $23
- - - - - - 0x03B706 1C:B6F6: 01        .byte $01
- - - - - - 0x03B707 1C:B6F7: 23        .byte $23
- - - - - - 0x03B708 1C:B6F8: 01        .byte $01
- - - - - - 0x03B709 1C:B6F9: 23        .byte $23
- - - - - - 0x03B70A 1C:B6FA: 01        .byte $01
- - - - - - 0x03B70B 1C:B6FB: 23        .byte $23
- - - - - - 0x03B70C 1C:B6FC: 01        .byte $01
- - - - - - 0x03B70D 1C:B6FD: 23        .byte $23
; 1F
- D - I - - 0x03B70E 1C:B6FE: 22        .byte $22
- D - I - - 0x03B70F 1C:B6FF: 21        .byte $21
- D - I - - 0x03B710 1C:B700: 22        .byte $22
- D - I - - 0x03B711 1C:B701: 22        .byte $22
- - - - - - 0x03B712 1C:B702: 01        .byte $01
- - - - - - 0x03B713 1C:B703: 23        .byte $23
- - - - - - 0x03B714 1C:B704: 45        .byte $45
- - - - - - 0x03B715 1C:B705: 67        .byte $67
- - - - - - 0x03B716 1C:B706: 01        .byte $01
- - - - - - 0x03B717 1C:B707: 23        .byte $23
- - - - - - 0x03B718 1C:B708: 45        .byte $45
- - - - - - 0x03B719 1C:B709: 67        .byte $67
- - - - - - 0x03B71A 1C:B70A: 01        .byte $01
- - - - - - 0x03B71B 1C:B70B: 23        .byte $23
- - - - - - 0x03B71C 1C:B70C: 45        .byte $45
- - - - - - 0x03B71D 1C:B70D: 67        .byte $67
- - - - - - 0x03B71E 1C:B70E: 01        .byte $01
- - - - - - 0x03B71F 1C:B70F: 23        .byte $23
- - - - - - 0x03B720 1C:B710: 45        .byte $45
- - - - - - 0x03B721 1C:B711: 67        .byte $67
- - - - - - 0x03B722 1C:B712: 01        .byte $01
- - - - - - 0x03B723 1C:B713: 23        .byte $23
- - - - - - 0x03B724 1C:B714: 45        .byte $45
- - - - - - 0x03B725 1C:B715: 67        .byte $67
- - - - - - 0x03B726 1C:B716: 01        .byte $01
- - - - - - 0x03B727 1C:B717: 23        .byte $23
- - - - - - 0x03B728 1C:B718: 01        .byte $01
- - - - - - 0x03B729 1C:B719: 23        .byte $23
- - - - - - 0x03B72A 1C:B71A: 01        .byte $01
- - - - - - 0x03B72B 1C:B71B: 23        .byte $23
- - - - - - 0x03B72C 1C:B71C: 01        .byte $01
- - - - - - 0x03B72D 1C:B71D: 23        .byte $23
- - - - - - 0x03B72E 1C:B71E: 01        .byte $01
- - - - - - 0x03B72F 1C:B71F: 23        .byte $23
- - - - - - 0x03B730 1C:B720: 01        .byte $01
- - - - - - 0x03B731 1C:B721: 23        .byte $23
- - - - - - 0x03B732 1C:B722: 01        .byte $01
- - - - - - 0x03B733 1C:B723: 23        .byte $23
- - - - - - 0x03B734 1C:B724: 01        .byte $01
- - - - - - 0x03B735 1C:B725: 23        .byte $23
- - - - - - 0x03B736 1C:B726: 01        .byte $01
- - - - - - 0x03B737 1C:B727: 23        .byte $23
- - - - - - 0x03B738 1C:B728: 01        .byte $01
- - - - - - 0x03B739 1C:B729: 23        .byte $23
- - - - - - 0x03B73A 1C:B72A: 01        .byte $01
- - - - - - 0x03B73B 1C:B72B: 23        .byte $23
- - - - - - 0x03B73C 1C:B72C: 01        .byte $01
- - - - - - 0x03B73D 1C:B72D: 23        .byte $23



tbl_B72E:
; 00
- D - I - - 0x03B73E 1C:B72E: 28        .byte $28
- D - I - - 0x03B73F 1C:B72F: 29        .byte $29
- D - I - - 0x03B740 1C:B730: 2C        .byte $2C
- D - I - - 0x03B741 1C:B731: 18        .byte $18
- D - I - - 0x03B742 1C:B732: 1C        .byte $1C
- D - I - - 0x03B743 1C:B733: 22        .byte $22
- D - I - - 0x03B744 1C:B734: 27        .byte $27
- D - I - - 0x03B745 1C:B735: 3C        .byte $3C
; 01
- D - I - - 0x03B746 1C:B736: 24        .byte $24
- D - I - - 0x03B747 1C:B737: 25        .byte $25
- D - I - - 0x03B748 1C:B738: 26        .byte $26
- D - I - - 0x03B749 1C:B739: 2C        .byte $2C
- D - I - - 0x03B74A 1C:B73A: 1C        .byte $1C
- D - I - - 0x03B74B 1C:B73B: 29        .byte $29
- D - I - - 0x03B74C 1C:B73C: 1B        .byte $1B
- D - I - - 0x03B74D 1C:B73D: 22        .byte $22
; 02
- D - I - - 0x03B74E 1C:B73E: 28        .byte $28
- D - I - - 0x03B74F 1C:B73F: 29        .byte $29
- D - I - - 0x03B750 1C:B740: 28        .byte $28
- D - I - - 0x03B751 1C:B741: 1E        .byte $1E
- D - I - - 0x03B752 1C:B742: 24        .byte $24
- - - - - - 0x03B753 1C:B743: 25        .byte $25
- - - - - - 0x03B754 1C:B744: 26        .byte $26
- - - - - - 0x03B755 1C:B745: 2F        .byte $2F
; 03
- D - I - - 0x03B756 1C:B746: 2C        .byte $2C
- D - I - - 0x03B757 1C:B747: 2D        .byte $2D
- D - I - - 0x03B758 1C:B748: 2C        .byte $2C
- D - I - - 0x03B759 1C:B749: 18        .byte $18
- D - I - - 0x03B75A 1C:B74A: 24        .byte $24
- D - I - - 0x03B75B 1C:B74B: 25        .byte $25
- D - I - - 0x03B75C 1C:B74C: 26        .byte $26
- - - - - - 0x03B75D 1C:B74D: 28        .byte $28
; 04
- - - - - - 0x03B75E 1C:B74E: 10        .byte $10
- D - I - - 0x03B75F 1C:B74F: 11        .byte $11
- D - I - - 0x03B760 1C:B750: 3C        .byte $3C
- D - I - - 0x03B761 1C:B751: 12        .byte $12
- D - I - - 0x03B762 1C:B752: 24        .byte $24
- D - I - - 0x03B763 1C:B753: 25        .byte $25
- D - I - - 0x03B764 1C:B754: 24        .byte $24
- - - - - - 0x03B765 1C:B755: 1B        .byte $1B
; 05
- - - - - - 0x03B766 1C:B756: 24        .byte $24
- - - - - - 0x03B767 1C:B757: 25        .byte $25
- - - - - - 0x03B768 1C:B758: 26        .byte $26
- - - - - - 0x03B769 1C:B759: 12        .byte $12
- - - - - - 0x03B76A 1C:B75A: 10        .byte $10
- - - - - - 0x03B76B 1C:B75B: 11        .byte $11
- - - - - - 0x03B76C 1C:B75C: 2B        .byte $2B
- D - I - - 0x03B76D 1C:B75D: 21        .byte $21
; 06
- D - I - - 0x03B76E 1C:B75E: 3D        .byte $3D
- - - - - - 0x03B76F 1C:B75F: 18        .byte $18
- D - I - - 0x03B770 1C:B760: 19        .byte $19
- D - I - - 0x03B771 1C:B761: 1A        .byte $1A
- - - - - - 0x03B772 1C:B762: 29        .byte $29
- - - - - - 0x03B773 1C:B763: 08        .byte $08
- - - - - - 0x03B774 1C:B764: 09        .byte $09
- - - - - - 0x03B775 1C:B765: 08        .byte $08
; 07
- D - I - - 0x03B776 1C:B766: 18        .byte $18
- D - I - - 0x03B777 1C:B767: 28        .byte $28
- D - I - - 0x03B778 1C:B768: 29        .byte $29
- D - I - - 0x03B779 1C:B769: 2A        .byte $2A
- - - - - - 0x03B77A 1C:B76A: 19        .byte $19
- D - I - - 0x03B77B 1C:B76B: 1A        .byte $1A
- - - - - - 0x03B77C 1C:B76C: 08        .byte $08
- - - - - - 0x03B77D 1C:B76D: 08        .byte $08
; 08
- D - I - - 0x03B77E 1C:B76E: 10        .byte $10
- D - I - - 0x03B77F 1C:B76F: 11        .byte $11
- D - I - - 0x03B780 1C:B770: 10        .byte $10
- D - I - - 0x03B781 1C:B771: 3D        .byte $3D
- D - I - - 0x03B782 1C:B772: 10        .byte $10
- D - I - - 0x03B783 1C:B773: 25        .byte $25
- - - - - - 0x03B784 1C:B774: 3E        .byte $3E
- D - I - - 0x03B785 1C:B775: 3D        .byte $3D
; 09
- D - I - - 0x03B786 1C:B776: 14        .byte $14
- D - I - - 0x03B787 1C:B777: 19        .byte $19
- D - I - - 0x03B788 1C:B778: 1C        .byte $1C
- - - - - - 0x03B789 1C:B779: 21        .byte $21
- - - - - - 0x03B78A 1C:B77A: 28        .byte $28
- D - I - - 0x03B78B 1C:B77B: 2B        .byte $2B
- - - - - - 0x03B78C 1C:B77C: 26        .byte $26
- - - - - - 0x03B78D 1C:B77D: 2F        .byte $2F
; 0A
- - - - - - 0x03B78E 1C:B77E: 24        .byte $24
- D - I - - 0x03B78F 1C:B77F: 25        .byte $25
- D - I - - 0x03B790 1C:B780: 2C        .byte $2C
- D - I - - 0x03B791 1C:B781: 2D        .byte $2D
- - - - - - 0x03B792 1C:B782: 28        .byte $28
- D - I - - 0x03B793 1C:B783: 1D        .byte $1D
- - - - - - 0x03B794 1C:B784: 18        .byte $18
- - - - - - 0x03B795 1C:B785: 3E        .byte $3E
; 0B
- D - I - - 0x03B796 1C:B786: 28        .byte $28
- D - I - - 0x03B797 1C:B787: 29        .byte $29
- D - I - - 0x03B798 1C:B788: 28        .byte $28
- D - I - - 0x03B799 1C:B789: 3D        .byte $3D
- D - I - - 0x03B79A 1C:B78A: 28        .byte $28
- D - I - - 0x03B79B 1C:B78B: 29        .byte $29
- D - I - - 0x03B79C 1C:B78C: 2A        .byte $2A
- - - - - - 0x03B79D 1C:B78D: 3F        .byte $3F
; 0C
- D - I - - 0x03B79E 1C:B78E: 1C        .byte $1C
- D - I - - 0x03B79F 1C:B78F: 1D        .byte $1D
- D - I - - 0x03B7A0 1C:B790: 2C        .byte $2C
- D - I - - 0x03B7A1 1C:B791: 2D        .byte $2D
- - - - - - 0x03B7A2 1C:B792: 21        .byte $21
- - - - - - 0x03B7A3 1C:B793: 19        .byte $19
- - - - - - 0x03B7A4 1C:B794: 26        .byte $26
- - - - - - 0x03B7A5 1C:B795: 3F        .byte $3F
; 0D
- D - I - - 0x03B7A6 1C:B796: 28        .byte $28
- D - I - - 0x03B7A7 1C:B797: 29        .byte $29
- D - I - - 0x03B7A8 1C:B798: 18        .byte $18
- D - I - - 0x03B7A9 1C:B799: 2E        .byte $2E
- D - I - - 0x03B7AA 1C:B79A: 28        .byte $28
- D - I - - 0x03B7AB 1C:B79B: 25        .byte $25
- D - I - - 0x03B7AC 1C:B79C: 22        .byte $22
- D - I - - 0x03B7AD 1C:B79D: 1F        .byte $1F
; 0E
- D - I - - 0x03B7AE 1C:B79E: 18        .byte $18
- D - I - - 0x03B7AF 1C:B79F: 19        .byte $19
- D - I - - 0x03B7B0 1C:B7A0: 18        .byte $18
- D - I - - 0x03B7B1 1C:B7A1: 19        .byte $19
- D - I - - 0x03B7B2 1C:B7A2: 24        .byte $24
- D - I - - 0x03B7B3 1C:B7A3: 25        .byte $25
- - - - - - 0x03B7B4 1C:B7A4: 29        .byte $29
- - - - - - 0x03B7B5 1C:B7A5: 3E        .byte $3E
; 0F
- D - I - - 0x03B7B6 1C:B7A6: 24        .byte $24
- - - - - - 0x03B7B7 1C:B7A7: 25        .byte $25
- D - I - - 0x03B7B8 1C:B7A8: 24        .byte $24
- - - - - - 0x03B7B9 1C:B7A9: 26        .byte $26
- D - I - - 0x03B7BA 1C:B7AA: 18        .byte $18
- - - - - - 0x03B7BB 1C:B7AB: 28        .byte $28
- D - I - - 0x03B7BC 1C:B7AC: 2A        .byte $2A
- - - - - - 0x03B7BD 1C:B7AD: 3F        .byte $3F
; 10
- D - I - - 0x03B7BE 1C:B7AE: 09        .byte $09
- D - I - - 0x03B7BF 1C:B7AF: 0D        .byte $0D
- D - I - - 0x03B7C0 1C:B7B0: 10        .byte $10
- D - I - - 0x03B7C1 1C:B7B1: 14        .byte $14
- D - I - - 0x03B7C2 1C:B7B2: 24        .byte $24
- - - - - - 0x03B7C3 1C:B7B3: 25        .byte $25
- - - - - - 0x03B7C4 1C:B7B4: 25        .byte $25
- - - - - - 0x03B7C5 1C:B7B5: 24        .byte $24
; 11
- D - I - - 0x03B7C6 1C:B7B6: 18        .byte $18
- D - I - - 0x03B7C7 1C:B7B7: 19        .byte $19
- D - I - - 0x03B7C8 1C:B7B8: 1A        .byte $1A
- - - - - - 0x03B7C9 1C:B7B9: 1B        .byte $1B
- - - - - - 0x03B7CA 1C:B7BA: 28        .byte $28
- D - I - - 0x03B7CB 1C:B7BB: 1D        .byte $1D
- - - - - - 0x03B7CC 1C:B7BC: 3E        .byte $3E
- - - - - - 0x03B7CD 1C:B7BD: 3F        .byte $3F
; 12
- D - I - - 0x03B7CE 1C:B7BE: 28        .byte $28
- D - I - - 0x03B7CF 1C:B7BF: 1C        .byte $1C
- D - I - - 0x03B7D0 1C:B7C0: 1D        .byte $1D
- - - - - - 0x03B7D1 1C:B7C1: 29        .byte $29
- - - - - - 0x03B7D2 1C:B7C2: 19        .byte $19
- - - - - - 0x03B7D3 1C:B7C3: 21        .byte $21
- - - - - - 0x03B7D4 1C:B7C4: 3E        .byte $3E
- - - - - - 0x03B7D5 1C:B7C5: 3F        .byte $3F
; 13
- D - I - - 0x03B7D6 1C:B7C6: 10        .byte $10
- - - - - - 0x03B7D7 1C:B7C7: 11        .byte $11
- D - I - - 0x03B7D8 1C:B7C8: 24        .byte $24
- D - I - - 0x03B7D9 1C:B7C9: 25        .byte $25
- D - I - - 0x03B7DA 1C:B7CA: 2C        .byte $2C
- D - I - - 0x03B7DB 1C:B7CB: 2D        .byte $2D
- - - - - - 0x03B7DC 1C:B7CC: 1E        .byte $1E
- - - - - - 0x03B7DD 1C:B7CD: 3F        .byte $3F
; 14
- D - I - - 0x03B7DE 1C:B7CE: 14        .byte $14
- D - I - - 0x03B7DF 1C:B7CF: 08        .byte $08
- D - I - - 0x03B7E0 1C:B7D0: 0C        .byte $0C
- D - I - - 0x03B7E1 1C:B7D1: 25        .byte $25
- D - I - - 0x03B7E2 1C:B7D2: 29        .byte $29
- D - I - - 0x03B7E3 1C:B7D3: 21        .byte $21
- - - - - - 0x03B7E4 1C:B7D4: 1D        .byte $1D
- - - - - - 0x03B7E5 1C:B7D5: 2D        .byte $2D
; 15
- D - I - - 0x03B7E6 1C:B7D6: 29        .byte $29
- - - - - - 0x03B7E7 1C:B7D7: 29        .byte $29
- D - I - - 0x03B7E8 1C:B7D8: 29        .byte $29
- D - I - - 0x03B7E9 1C:B7D9: 2D        .byte $2D
- D - I - - 0x03B7EA 1C:B7DA: 21        .byte $21
- D - I - - 0x03B7EB 1C:B7DB: 24        .byte $24
- - - - - - 0x03B7EC 1C:B7DC: 1D        .byte $1D
- - - - - - 0x03B7ED 1C:B7DD: 3D        .byte $3D
; 16
- D - I - - 0x03B7EE 1C:B7DE: 2C        .byte $2C
- D - I - - 0x03B7EF 1C:B7DF: 2C        .byte $2C
- D - I - - 0x03B7F0 1C:B7E0: 2C        .byte $2C
- D - I - - 0x03B7F1 1C:B7E1: 2C        .byte $2C
- D - I - - 0x03B7F2 1C:B7E2: 2D        .byte $2D
- D - I - - 0x03B7F3 1C:B7E3: 2D        .byte $2D
- D - I - - 0x03B7F4 1C:B7E4: 2D        .byte $2D
- - - - - - 0x03B7F5 1C:B7E5: 2E        .byte $2E
; 17
- D - I - - 0x03B7F6 1C:B7E6: 24        .byte $24
- D - I - - 0x03B7F7 1C:B7E7: 25        .byte $25
- D - I - - 0x03B7F8 1C:B7E8: 24        .byte $24
- D - I - - 0x03B7F9 1C:B7E9: 25        .byte $25
- - - - - - 0x03B7FA 1C:B7EA: 24        .byte $24
- D - I - - 0x03B7FB 1C:B7EB: 1D        .byte $1D
- - - - - - 0x03B7FC 1C:B7EC: 2D        .byte $2D
- - - - - - 0x03B7FD 1C:B7ED: 3E        .byte $3E
; 18
- D - I - - 0x03B7FE 1C:B7EE: 24        .byte $24
- D - I - - 0x03B7FF 1C:B7EF: 25        .byte $25
- D - I - - 0x03B800 1C:B7F0: 24        .byte $24
- D - I - - 0x03B801 1C:B7F1: 25        .byte $25
- D - I - - 0x03B802 1C:B7F2: 24        .byte $24
- D - I - - 0x03B803 1C:B7F3: 11        .byte $11
- - - - - - 0x03B804 1C:B7F4: 10        .byte $10
- - - - - - 0x03B805 1C:B7F5: 3F        .byte $3F
; 19
- D - I - - 0x03B806 1C:B7F6: 28        .byte $28
- D - I - - 0x03B807 1C:B7F7: 28        .byte $28
- - - - - - 0x03B808 1C:B7F8: 20        .byte $20
- D - I - - 0x03B809 1C:B7F9: 21        .byte $21
- D - I - - 0x03B80A 1C:B7FA: 28        .byte $28
- D - I - - 0x03B80B 1C:B7FB: 25        .byte $25
- D - I - - 0x03B80C 1C:B7FC: 2C        .byte $2C
- D - I - - 0x03B80D 1C:B7FD: 11        .byte $11
; 1A
- - - - - - 0x03B80E 1C:B7FE: 28        .byte $28
- - - - - - 0x03B80F 1C:B7FF: 28        .byte $28
- D - I - - 0x03B810 1C:B800: 28        .byte $28
- - - - - - 0x03B811 1C:B801: 28        .byte $28
- D - I - - 0x03B812 1C:B802: 24        .byte $24
- - - - - - 0x03B813 1C:B803: 24        .byte $24
- - - - - - 0x03B814 1C:B804: 24        .byte $24
- - - - - - 0x03B815 1C:B805: 24        .byte $24
; 1B
- D - I - - 0x03B816 1C:B806: 20        .byte $20
- - - - - - 0x03B817 1C:B807: 20        .byte $20
- - - - - - 0x03B818 1C:B808: 20        .byte $20
- - - - - - 0x03B819 1C:B809: 20        .byte $20
- - - - - - 0x03B81A 1C:B80A: 20        .byte $20
- D - I - - 0x03B81B 1C:B80B: 20        .byte $20
- - - - - - 0x03B81C 1C:B80C: 20        .byte $20
- - - - - - 0x03B81D 1C:B80D: 28        .byte $28
; 1C
- D - I - - 0x03B81E 1C:B80E: 28        .byte $28
- D - I - - 0x03B81F 1C:B80F: 28        .byte $28
- - - - - - 0x03B820 1C:B810: 28        .byte $28
- - - - - - 0x03B821 1C:B811: 28        .byte $28
- D - I - - 0x03B822 1C:B812: 28        .byte $28
- - - - - - 0x03B823 1C:B813: 28        .byte $28
- - - - - - 0x03B824 1C:B814: 28        .byte $28
- - - - - - 0x03B825 1C:B815: 28        .byte $28
; 1D
- D - I - - 0x03B826 1C:B816: 10        .byte $10
- - - - - - 0x03B827 1C:B817: 10        .byte $10
- - - - - - 0x03B828 1C:B818: 10        .byte $10
- - - - - - 0x03B829 1C:B819: 10        .byte $10
- D - I - - 0x03B82A 1C:B81A: 10        .byte $10
- - - - - - 0x03B82B 1C:B81B: 10        .byte $10
- - - - - - 0x03B82C 1C:B81C: 10        .byte $10
- D - I - - 0x03B82D 1C:B81D: 10        .byte $10
; 1E
- D - I - - 0x03B82E 1C:B81E: 24        .byte $24
- D - I - - 0x03B82F 1C:B81F: 24        .byte $24
- D - I - - 0x03B830 1C:B820: 24        .byte $24
- - - - - - 0x03B831 1C:B821: 24        .byte $24
- D - I - - 0x03B832 1C:B822: 24        .byte $24
- D - I - - 0x03B833 1C:B823: 24        .byte $24
- - - - - - 0x03B834 1C:B824: 24        .byte $24
- D - I - - 0x03B835 1C:B825: 24        .byte $24
; 1F
- D - I - - 0x03B836 1C:B826: 18        .byte $18
- D - I - - 0x03B837 1C:B827: 1C        .byte $1C
- - - - - - 0x03B838 1C:B828: 20        .byte $20
- - - - - - 0x03B839 1C:B829: 24        .byte $24
- D - I - - 0x03B83A 1C:B82A: 24        .byte $24
- D - I - - 0x03B83B 1C:B82B: 28        .byte $28
- D - I - - 0x03B83C 1C:B82C: 28        .byte $28
- D - I - - 0x03B83D 1C:B82D: 2C        .byte $2C
; 20
- D - I - - 0x03B83E 1C:B82E: 28        .byte $28
- D - I - - 0x03B83F 1C:B82F: 28        .byte $28
- D - I - - 0x03B840 1C:B830: 28        .byte $28
- - - - - - 0x03B841 1C:B831: 2D        .byte $2D
- - - - - - 0x03B842 1C:B832: 20        .byte $20
- - - - - - 0x03B843 1C:B833: 21        .byte $21
- - - - - - 0x03B844 1C:B834: 20        .byte $20
- - - - - - 0x03B845 1C:B835: 3F        .byte $3F
; 21
- D - I - - 0x03B846 1C:B836: 28        .byte $28
- D - I - - 0x03B847 1C:B837: 28        .byte $28
- - - - - - 0x03B848 1C:B838: 28        .byte $28
- D - I - - 0x03B849 1C:B839: 29        .byte $29
- - - - - - 0x03B84A 1C:B83A: 2C        .byte $2C
- - - - - - 0x03B84B 1C:B83B: 25        .byte $25
- - - - - - 0x03B84C 1C:B83C: 24        .byte $24
- - - - - - 0x03B84D 1C:B83D: 3F        .byte $3F
; 22
- D - I - - 0x03B84E 1C:B83E: 20        .byte $20
- - - - - - 0x03B84F 1C:B83F: 21        .byte $21
- - - - - - 0x03B850 1C:B840: 20        .byte $20
- - - - - - 0x03B851 1C:B841: 2D        .byte $2D
- - - - - - 0x03B852 1C:B842: 24        .byte $24
- D - I - - 0x03B853 1C:B843: 25        .byte $25
- - - - - - 0x03B854 1C:B844: 2C        .byte $2C
- - - - - - 0x03B855 1C:B845: 3F        .byte $3F
; 23
- - - - - - 0x03B856 1C:B846: 14        .byte $14
- - - - - - 0x03B857 1C:B847: 14        .byte $14
- - - - - - 0x03B858 1C:B848: 15        .byte $15
- - - - - - 0x03B859 1C:B849: 2C        .byte $2C
- - - - - - 0x03B85A 1C:B84A: 2C        .byte $2C
- - - - - - 0x03B85B 1C:B84B: 20        .byte $20
- - - - - - 0x03B85C 1C:B84C: 29        .byte $29
- - - - - - 0x03B85D 1C:B84D: 1C        .byte $1C
; 24
- - - - - - 0x03B85E 1C:B84E: 20        .byte $20
- - - - - - 0x03B85F 1C:B84F: 20        .byte $20
- D - I - - 0x03B860 1C:B850: 20        .byte $20
- - - - - - 0x03B861 1C:B851: 20        .byte $20
- - - - - - 0x03B862 1C:B852: 1C        .byte $1C
- - - - - - 0x03B863 1C:B853: 1C        .byte $1C
- D - I - - 0x03B864 1C:B854: 14        .byte $14
- - - - - - 0x03B865 1C:B855: 28        .byte $28
; 25
- - - - - - 0x03B866 1C:B856: 2C        .byte $2C
- D - I - - 0x03B867 1C:B857: 2C        .byte $2C
- D - I - - 0x03B868 1C:B858: 2C        .byte $2C
- - - - - - 0x03B869 1C:B859: 2D        .byte $2D
- - - - - - 0x03B86A 1C:B85A: 20        .byte $20
- - - - - - 0x03B86B 1C:B85B: 21        .byte $21
- - - - - - 0x03B86C 1C:B85C: 29        .byte $29
- - - - - - 0x03B86D 1C:B85D: 1C        .byte $1C
; 26
- - - - - - 0x03B86E 1C:B85E: 2C        .byte $2C
- - - - - - 0x03B86F 1C:B85F: 2C        .byte $2C
- D - I - - 0x03B870 1C:B860: 2C        .byte $2C
- - - - - - 0x03B871 1C:B861: 1C        .byte $1C
- - - - - - 0x03B872 1C:B862: 1C        .byte $1C
- - - - - - 0x03B873 1C:B863: 14        .byte $14
- - - - - - 0x03B874 1C:B864: 28        .byte $28
- - - - - - 0x03B875 1C:B865: 3F        .byte $3F
; 27
- - - - - - 0x03B876 1C:B866: 20        .byte $20
- - - - - - 0x03B877 1C:B867: 21        .byte $21
- D - I - - 0x03B878 1C:B868: 2C        .byte $2C
- - - - - - 0x03B879 1C:B869: 15        .byte $15
- - - - - - 0x03B87A 1C:B86A: 14        .byte $14
- - - - - - 0x03B87B 1C:B86B: 1C        .byte $1C
- - - - - - 0x03B87C 1C:B86C: 2D        .byte $2D
- - - - - - 0x03B87D 1C:B86D: 3F        .byte $3F
; 28
- - - - - - 0x03B87E 1C:B86E: 14        .byte $14
- - - - - - 0x03B87F 1C:B86F: 14        .byte $14
- - - - - - 0x03B880 1C:B870: 14        .byte $14
- - - - - - 0x03B881 1C:B871: 14        .byte $14
- - - - - - 0x03B882 1C:B872: 14        .byte $14
- - - - - - 0x03B883 1C:B873: 14        .byte $14
- - - - - - 0x03B884 1C:B874: 14        .byte $14
- - - - - - 0x03B885 1C:B875: 14        .byte $14
; 29
- - - - - - 0x03B886 1C:B876: 18        .byte $18
- - - - - - 0x03B887 1C:B877: 18        .byte $18
- - - - - - 0x03B888 1C:B878: 19        .byte $19
- D - I - - 0x03B889 1C:B879: 2D        .byte $2D
- D - I - - 0x03B88A 1C:B87A: 2C        .byte $2C
- D - I - - 0x03B88B 1C:B87B: 2D        .byte $2D
- - - - - - 0x03B88C 1C:B87C: 29        .byte $29
- D - I - - 0x03B88D 1C:B87D: 25        .byte $25
; 2A
- D - I - - 0x03B88E 1C:B87E: 28        .byte $28
- D - I - - 0x03B88F 1C:B87F: 28        .byte $28
- - - - - - 0x03B890 1C:B880: 29        .byte $29
- - - - - - 0x03B891 1C:B881: 24        .byte $24
- - - - - - 0x03B892 1C:B882: 25        .byte $25
- - - - - - 0x03B893 1C:B883: 1C        .byte $1C
- D - I - - 0x03B894 1C:B884: 1D        .byte $1D
- - - - - - 0x03B895 1C:B885: 09        .byte $09
; 2B
- D - I - - 0x03B896 1C:B886: 28        .byte $28
- D - I - - 0x03B897 1C:B887: 28        .byte $28
- - - - - - 0x03B898 1C:B888: 29        .byte $29
- - - - - - 0x03B899 1C:B889: 24        .byte $24
- - - - - - 0x03B89A 1C:B88A: 25        .byte $25
- - - - - - 0x03B89B 1C:B88B: 1C        .byte $1C
- - - - - - 0x03B89C 1C:B88C: 1D        .byte $1D
- - - - - - 0x03B89D 1C:B88D: 2D        .byte $2D
; 2C
- D - I - - 0x03B89E 1C:B88E: 24        .byte $24
- D - I - - 0x03B89F 1C:B88F: 24        .byte $24
- - - - - - 0x03B8A0 1C:B890: 25        .byte $25
- D - I - - 0x03B8A1 1C:B891: 25        .byte $25
- - - - - - 0x03B8A2 1C:B892: 1C        .byte $1C
- D - I - - 0x03B8A3 1C:B893: 1D        .byte $1D
- - - - - - 0x03B8A4 1C:B894: 2D        .byte $2D
- D - I - - 0x03B8A5 1C:B895: 09        .byte $09
; 2D
- - - - - - 0x03B8A6 1C:B896: 24        .byte $24
- - - - - - 0x03B8A7 1C:B897: 24        .byte $24
- - - - - - 0x03B8A8 1C:B898: 25        .byte $25
- - - - - - 0x03B8A9 1C:B899: 28        .byte $28
- - - - - - 0x03B8AA 1C:B89A: 28        .byte $28
- - - - - - 0x03B8AB 1C:B89B: 29        .byte $29
- D - I - - 0x03B8AC 1C:B89C: 2D        .byte $2D
- - - - - - 0x03B8AD 1C:B89D: 21        .byte $21
; 2E
- D - I - - 0x03B8AE 1C:B89E: 28        .byte $28
- - - - - - 0x03B8AF 1C:B89F: 28        .byte $28
- D - I - - 0x03B8B0 1C:B8A0: 29        .byte $29
- - - - - - 0x03B8B1 1C:B8A1: 29        .byte $29
- - - - - - 0x03B8B2 1C:B8A2: 1D        .byte $1D
- - - - - - 0x03B8B3 1C:B8A3: 2D        .byte $2D
- - - - - - 0x03B8B4 1C:B8A4: 09        .byte $09
- - - - - - 0x03B8B5 1C:B8A5: 19        .byte $19
; 2F
- - - - - - 0x03B8B6 1C:B8A6: 24        .byte $24
- - - - - - 0x03B8B7 1C:B8A7: 24        .byte $24
- D - I - - 0x03B8B8 1C:B8A8: 25        .byte $25
- - - - - - 0x03B8B9 1C:B8A9: 1C        .byte $1C
- - - - - - 0x03B8BA 1C:B8AA: 1D        .byte $1D
- - - - - - 0x03B8BB 1C:B8AB: 2D        .byte $2D
- - - - - - 0x03B8BC 1C:B8AC: 19        .byte $19
- - - - - - 0x03B8BD 1C:B8AD: 09        .byte $09



tbl_B8AE:
- D - I - - 0x03B8BE 1C:B8AE: 22        .byte $22
- D - I - - 0x03B8BF 1C:B8AF: 11        .byte $11
- D - I - - 0x03B8C0 1C:B8B0: 11        .byte $11
- D - I - - 0x03B8C1 1C:B8B1: 00        .byte $00
- D - I - - 0x03B8C2 1C:B8B2: 22        .byte $22
- D - I - - 0x03B8C3 1C:B8B3: 11        .byte $11
- D - I - - 0x03B8C4 1C:B8B4: 00        .byte $00
- D - I - - 0x03B8C5 1C:B8B5: 00        .byte $00
- D - I - - 0x03B8C6 1C:B8B6: 12        .byte $12
- D - I - - 0x03B8C7 1C:B8B7: 22        .byte $22
- D - I - - 0x03B8C8 1C:B8B8: 00        .byte $00
- D - I - - 0x03B8C9 1C:B8B9: 00        .byte $00
- D - I - - 0x03B8CA 1C:B8BA: 22        .byte $22
- D - I - - 0x03B8CB 1C:B8BB: 22        .byte $22
- D - I - - 0x03B8CC 1C:B8BC: 00        .byte $00
- D - I - - 0x03B8CD 1C:B8BD: 00        .byte $00
- D - I - - 0x03B8CE 1C:B8BE: 11        .byte $11
- D - I - - 0x03B8CF 1C:B8BF: 12        .byte $12
- D - I - - 0x03B8D0 1C:B8C0: 00        .byte $00
- D - I - - 0x03B8D1 1C:B8C1: 00        .byte $00
- D - I - - 0x03B8D2 1C:B8C2: 11        .byte $11
- D - I - - 0x03B8D3 1C:B8C3: 10        .byte $10
- D - I - - 0x03B8D4 1C:B8C4: 00        .byte $00
- D - I - - 0x03B8D5 1C:B8C5: 00        .byte $00
- - - - - - 0x03B8D6 1C:B8C6: 22        .byte $22
- - - - - - 0x03B8D7 1C:B8C7: 21        .byte $21
- - - - - - 0x03B8D8 1C:B8C8: 11        .byte $11
- - - - - - 0x03B8D9 1C:B8C9: 11        .byte $11
- D - I - - 0x03B8DA 1C:B8CA: 22        .byte $22
- D - I - - 0x03B8DB 1C:B8CB: 22        .byte $22
- D - I - - 0x03B8DC 1C:B8CC: 11        .byte $11
- D - I - - 0x03B8DD 1C:B8CD: 11        .byte $11
- D - I - - 0x03B8DE 1C:B8CE: 22        .byte $22
- D - I - - 0x03B8DF 1C:B8CF: 11        .byte $11
- - - - - - 0x03B8E0 1C:B8D0: 11        .byte $11
- D - I - - 0x03B8E1 1C:B8D1: 11        .byte $11
- D - I - - 0x03B8E2 1C:B8D2: 02        .byte $02
- - - - - - 0x03B8E3 1C:B8D3: 21        .byte $21
- D - I - - 0x03B8E4 1C:B8D4: 11        .byte $11
- - - - - - 0x03B8E5 1C:B8D5: 11        .byte $11
- D - I - - 0x03B8E6 1C:B8D6: 02        .byte $02
- D - I - - 0x03B8E7 1C:B8D7: 11        .byte $11
- D - I - - 0x03B8E8 1C:B8D8: 11        .byte $11
- D - I - - 0x03B8E9 1C:B8D9: 11        .byte $11
- D - I - - 0x03B8EA 1C:B8DA: 02        .byte $02
- D - I - - 0x03B8EB 1C:B8DB: 11        .byte $11
- D - I - - 0x03B8EC 1C:B8DC: 11        .byte $11
- D - I - - 0x03B8ED 1C:B8DD: 11        .byte $11
- - - - - - 0x03B8EE 1C:B8DE: 22        .byte $22
- D - I - - 0x03B8EF 1C:B8DF: 11        .byte $11
- - - - - - 0x03B8F0 1C:B8E0: 00        .byte $00
- - - - - - 0x03B8F1 1C:B8E1: 00        .byte $00
- D - I - - 0x03B8F2 1C:B8E2: 22        .byte $22
- D - I - - 0x03B8F3 1C:B8E3: 10        .byte $10
- - - - - - 0x03B8F4 1C:B8E4: 00        .byte $00
- D - I - - 0x03B8F5 1C:B8E5: 00        .byte $00
- - - - - - 0x03B8F6 1C:B8E6: 12        .byte $12
- D - I - - 0x03B8F7 1C:B8E7: 20        .byte $20
- D - I - - 0x03B8F8 1C:B8E8: 00        .byte $00
- D - I - - 0x03B8F9 1C:B8E9: 00        .byte $00
- D - I - - 0x03B8FA 1C:B8EA: 22        .byte $22
- - - - - - 0x03B8FB 1C:B8EB: 00        .byte $00
- - - - - - 0x03B8FC 1C:B8EC: 00        .byte $00
- D - I - - 0x03B8FD 1C:B8ED: 00        .byte $00
- D - I - - 0x03B8FE 1C:B8EE: 11        .byte $11
- D - I - - 0x03B8FF 1C:B8EF: 10        .byte $10
- D - I - - 0x03B900 1C:B8F0: 00        .byte $00
- D - I - - 0x03B901 1C:B8F1: 00        .byte $00
- - - - - - 0x03B902 1C:B8F2: 11        .byte $11
- D - I - - 0x03B903 1C:B8F3: 00        .byte $00
- - - - - - 0x03B904 1C:B8F4: 00        .byte $00
- - - - - - 0x03B905 1C:B8F5: 00        .byte $00
- - - - - - 0x03B906 1C:B8F6: 22        .byte $22
- - - - - - 0x03B907 1C:B8F7: 11        .byte $11
- - - - - - 0x03B908 1C:B8F8: 11        .byte $11
- - - - - - 0x03B909 1C:B8F9: 11        .byte $11
- - - - - - 0x03B90A 1C:B8FA: 02        .byte $02
- D - I - - 0x03B90B 1C:B8FB: 21        .byte $21
- - - - - - 0x03B90C 1C:B8FC: 11        .byte $11
- D - I - - 0x03B90D 1C:B8FD: 11        .byte $11
- D - I - - 0x03B90E 1C:B8FE: 21        .byte $21
- D - I - - 0x03B90F 1C:B8FF: 11        .byte $11
- - - - - - 0x03B910 1C:B900: 11        .byte $11
- D - I - - 0x03B911 1C:B901: 11        .byte $11
- - - - - - 0x03B912 1C:B902: 02        .byte $02
- - - - - - 0x03B913 1C:B903: 11        .byte $11
- - - - - - 0x03B914 1C:B904: 11        .byte $11
- - - - - - 0x03B915 1C:B905: 11        .byte $11
- - - - - - 0x03B916 1C:B906: 02        .byte $02
- D - I - - 0x03B917 1C:B907: 11        .byte $11
- D - I - - 0x03B918 1C:B908: 11        .byte $11
- D - I - - 0x03B919 1C:B909: 11        .byte $11
- D - I - - 0x03B91A 1C:B90A: 21        .byte $21
- D - I - - 0x03B91B 1C:B90B: 11        .byte $11
- D - I - - 0x03B91C 1C:B90C: 11        .byte $11
- - - - - - 0x03B91D 1C:B90D: 11        .byte $11
- - - - - - 0x03B91E 1C:B90E: 00        .byte $00
- D - I - - 0x03B91F 1C:B90F: 00        .byte $00
- - - - - - 0x03B920 1C:B910: 00        .byte $00
- - - - - - 0x03B921 1C:B911: 22        .byte $22
- - - - - - 0x03B922 1C:B912: 00        .byte $00
- D - I - - 0x03B923 1C:B913: 00        .byte $00
- D - I - - 0x03B924 1C:B914: 02        .byte $02
- D - I - - 0x03B925 1C:B915: 22        .byte $22
- D - I - - 0x03B926 1C:B916: 00        .byte $00
- D - I - - 0x03B927 1C:B917: 00        .byte $00
- D - I - - 0x03B928 1C:B918: 02        .byte $02
- D - I - - 0x03B929 1C:B919: 22        .byte $22
- - - - - - 0x03B92A 1C:B91A: 00        .byte $00
- - - - - - 0x03B92B 1C:B91B: 00        .byte $00
- - - - - - 0x03B92C 1C:B91C: 22        .byte $22
- - - - - - 0x03B92D 1C:B91D: 22        .byte $22
- D - I - - 0x03B92E 1C:B91E: 00        .byte $00
- D - I - - 0x03B92F 1C:B91F: 00        .byte $00
- D - I - - 0x03B930 1C:B920: 00        .byte $00
- D - I - - 0x03B931 1C:B921: 22        .byte $22
- - - - - - 0x03B932 1C:B922: 00        .byte $00
- - - - - - 0x03B933 1C:B923: 00        .byte $00
- - - - - - 0x03B934 1C:B924: 00        .byte $00
- - - - - - 0x03B935 1C:B925: 00        .byte $00
- - - - - - 0x03B936 1C:B926: 22        .byte $22
- - - - - - 0x03B937 1C:B927: 33        .byte $33
- - - - - - 0x03B938 1C:B928: 33        .byte $33
- - - - - - 0x03B939 1C:B929: 33        .byte $33
- D - I - - 0x03B93A 1C:B92A: 02        .byte $02
- - - - - - 0x03B93B 1C:B92B: 23        .byte $23
- - - - - - 0x03B93C 1C:B92C: 33        .byte $33
- D - I - - 0x03B93D 1C:B92D: 33        .byte $33
- - - - - - 0x03B93E 1C:B92E: 23        .byte $23
- - - - - - 0x03B93F 1C:B92F: 33        .byte $33
- - - - - - 0x03B940 1C:B930: 33        .byte $33
- D - I - - 0x03B941 1C:B931: 33        .byte $33
- - - - - - 0x03B942 1C:B932: 22        .byte $22
- - - - - - 0x03B943 1C:B933: 33        .byte $33
- - - - - - 0x03B944 1C:B934: 33        .byte $33
- - - - - - 0x03B945 1C:B935: 33        .byte $33
- - - - - - 0x03B946 1C:B936: 32        .byte $32
- - - - - - 0x03B947 1C:B937: 33        .byte $33
- - - - - - 0x03B948 1C:B938: 33        .byte $33
- - - - - - 0x03B949 1C:B939: 33        .byte $33
- - - - - - 0x03B94A 1C:B93A: 23        .byte $23
- D - I - - 0x03B94B 1C:B93B: 33        .byte $33
- - - - - - 0x03B94C 1C:B93C: 33        .byte $33
- D - I - - 0x03B94D 1C:B93D: 33        .byte $33
- - - - - - 0x03B94E 1C:B93E: 00        .byte $00
- - - - - - 0x03B94F 1C:B93F: 00        .byte $00
- - - - - - 0x03B950 1C:B940: 00        .byte $00
- - - - - - 0x03B951 1C:B941: 00        .byte $00
- D - I - - 0x03B952 1C:B942: 00        .byte $00
- - - - - - 0x03B953 1C:B943: 00        .byte $00
- - - - - - 0x03B954 1C:B944: 00        .byte $00
- - - - - - 0x03B955 1C:B945: 00        .byte $00
- - - - - - 0x03B956 1C:B946: 00        .byte $00
- D - I - - 0x03B957 1C:B947: 00        .byte $00
- - - - - - 0x03B958 1C:B948: 00        .byte $00
- - - - - - 0x03B959 1C:B949: 00        .byte $00
- - - - - - 0x03B95A 1C:B94A: 00        .byte $00
- - - - - - 0x03B95B 1C:B94B: 00        .byte $00
- - - - - - 0x03B95C 1C:B94C: 00        .byte $00
- D - I - - 0x03B95D 1C:B94D: 00        .byte $00
- D - I - - 0x03B95E 1C:B94E: 00        .byte $00
- D - I - - 0x03B95F 1C:B94F: 00        .byte $00
- D - I - - 0x03B960 1C:B950: 00        .byte $00
- D - I - - 0x03B961 1C:B951: 00        .byte $00
- - - - - - 0x03B962 1C:B952: 00        .byte $00
- - - - - - 0x03B963 1C:B953: 00        .byte $00
- D - I - - 0x03B964 1C:B954: 00        .byte $00
- - - - - - 0x03B965 1C:B955: 00        .byte $00
- - - - - - 0x03B966 1C:B956: 11        .byte $11
- - - - - - 0x03B967 1C:B957: 10        .byte $10
- - - - - - 0x03B968 1C:B958: 02        .byte $02
- - - - - - 0x03B969 1C:B959: 22        .byte $22
- - - - - - 0x03B96A 1C:B95A: 11        .byte $11
- - - - - - 0x03B96B 1C:B95B: 10        .byte $10
- - - - - - 0x03B96C 1C:B95C: 22        .byte $22
- - - - - - 0x03B96D 1C:B95D: 22        .byte $22
- - - - - - 0x03B96E 1C:B95E: 11        .byte $11
- - - - - - 0x03B96F 1C:B95F: 11        .byte $11
- - - - - - 0x03B970 1C:B960: 10        .byte $10
- - - - - - 0x03B971 1C:B961: 22        .byte $22
- - - - - - 0x03B972 1C:B962: 11        .byte $11
- - - - - - 0x03B973 1C:B963: 11        .byte $11
- - - - - - 0x03B974 1C:B964: 02        .byte $02
- - - - - - 0x03B975 1C:B965: 22        .byte $22
- - - - - - 0x03B976 1C:B966: 11        .byte $11
- - - - - - 0x03B977 1C:B967: 11        .byte $11
- - - - - - 0x03B978 1C:B968: 00        .byte $00
- - - - - - 0x03B979 1C:B969: 22        .byte $22
- - - - - - 0x03B97A 1C:B96A: 11        .byte $11
- - - - - - 0x03B97B 1C:B96B: 11        .byte $11
- - - - - - 0x03B97C 1C:B96C: 10        .byte $10
- - - - - - 0x03B97D 1C:B96D: 02        .byte $02
- - - - - - 0x03B97E 1C:B96E: 22        .byte $22
- - - - - - 0x03B97F 1C:B96F: 00        .byte $00
- - - - - - 0x03B980 1C:B970: 00        .byte $00
- - - - - - 0x03B981 1C:B971: 00        .byte $00
- - - - - - 0x03B982 1C:B972: 22        .byte $22
- - - - - - 0x03B983 1C:B973: 00        .byte $00
- - - - - - 0x03B984 1C:B974: 00        .byte $00
- - - - - - 0x03B985 1C:B975: 00        .byte $00
- - - - - - 0x03B986 1C:B976: 22        .byte $22
- - - - - - 0x03B987 1C:B977: 20        .byte $20
- - - - - - 0x03B988 1C:B978: 00        .byte $00
- - - - - - 0x03B989 1C:B979: 00        .byte $00
- - - - - - 0x03B98A 1C:B97A: 22        .byte $22
- - - - - - 0x03B98B 1C:B97B: 22        .byte $22
- - - - - - 0x03B98C 1C:B97C: 00        .byte $00
- D - I - - 0x03B98D 1C:B97D: 00        .byte $00
- - - - - - 0x03B98E 1C:B97E: 20        .byte $20
- - - - - - 0x03B98F 1C:B97F: 00        .byte $00
- - - - - - 0x03B990 1C:B980: 00        .byte $00
- - - - - - 0x03B991 1C:B981: 00        .byte $00
- - - - - - 0x03B992 1C:B982: 20        .byte $20
- - - - - - 0x03B993 1C:B983: 00        .byte $00
- - - - - - 0x03B994 1C:B984: 00        .byte $00
- - - - - - 0x03B995 1C:B985: 00        .byte $00
- - - - - - 0x03B996 1C:B986: 00        .byte $00
- - - - - - 0x03B997 1C:B987: 00        .byte $00
- - - - - - 0x03B998 1C:B988: 00        .byte $00
- - - - - - 0x03B999 1C:B989: 00        .byte $00
- - - - - - 0x03B99A 1C:B98A: 00        .byte $00
- - - - - - 0x03B99B 1C:B98B: 00        .byte $00
- - - - - - 0x03B99C 1C:B98C: 00        .byte $00
- - - - - - 0x03B99D 1C:B98D: 00        .byte $00
- - - - - - 0x03B99E 1C:B98E: 00        .byte $00
- - - - - - 0x03B99F 1C:B98F: 00        .byte $00
- - - - - - 0x03B9A0 1C:B990: 00        .byte $00
- - - - - - 0x03B9A1 1C:B991: 00        .byte $00
- - - - - - 0x03B9A2 1C:B992: 00        .byte $00
- - - - - - 0x03B9A3 1C:B993: 00        .byte $00
- - - - - - 0x03B9A4 1C:B994: 00        .byte $00
- - - - - - 0x03B9A5 1C:B995: 00        .byte $00
- - - - - - 0x03B9A6 1C:B996: 00        .byte $00
- - - - - - 0x03B9A7 1C:B997: 00        .byte $00
- - - - - - 0x03B9A8 1C:B998: 00        .byte $00
- - - - - - 0x03B9A9 1C:B999: 00        .byte $00
- - - - - - 0x03B9AA 1C:B99A: 00        .byte $00
- - - - - - 0x03B9AB 1C:B99B: 00        .byte $00
- - - - - - 0x03B9AC 1C:B99C: 00        .byte $00
- - - - - - 0x03B9AD 1C:B99D: 00        .byte $00
- - - - - - 0x03B9AE 1C:B99E: 22        .byte $22
- - - - - - 0x03B9AF 1C:B99F: 22        .byte $22
- - - - - - 0x03B9B0 1C:B9A0: 00        .byte $00
- - - - - - 0x03B9B1 1C:B9A1: 00        .byte $00
- - - - - - 0x03B9B2 1C:B9A2: 22        .byte $22
- - - - - - 0x03B9B3 1C:B9A3: 22        .byte $22
- - - - - - 0x03B9B4 1C:B9A4: 00        .byte $00
- - - - - - 0x03B9B5 1C:B9A5: 00        .byte $00
- - - - - - 0x03B9B6 1C:B9A6: 22        .byte $22
- D - I - - 0x03B9B7 1C:B9A7: 22        .byte $22
- D - I - - 0x03B9B8 1C:B9A8: 22        .byte $22
- - - - - - 0x03B9B9 1C:B9A9: 20        .byte $20
- - - - - - 0x03B9BA 1C:B9AA: 22        .byte $22
- - - - - - 0x03B9BB 1C:B9AB: 22        .byte $22
- - - - - - 0x03B9BC 1C:B9AC: 22        .byte $22
- - - - - - 0x03B9BD 1C:B9AD: 22        .byte $22
- - - - - - 0x03B9BE 1C:B9AE: 22        .byte $22
- - - - - - 0x03B9BF 1C:B9AF: 00        .byte $00
- - - - - - 0x03B9C0 1C:B9B0: 00        .byte $00
- - - - - - 0x03B9C1 1C:B9B1: 00        .byte $00
- - - - - - 0x03B9C2 1C:B9B2: 20        .byte $20
- - - - - - 0x03B9C3 1C:B9B3: 00        .byte $00
- - - - - - 0x03B9C4 1C:B9B4: 00        .byte $00
- - - - - - 0x03B9C5 1C:B9B5: 00        .byte $00
- - - - - - 0x03B9C6 1C:B9B6: 11        .byte $11
- - - - - - 0x03B9C7 1C:B9B7: 10        .byte $10
- - - - - - 0x03B9C8 1C:B9B8: 02        .byte $02
- - - - - - 0x03B9C9 1C:B9B9: 22        .byte $22
- - - - - - 0x03B9CA 1C:B9BA: 11        .byte $11
- - - - - - 0x03B9CB 1C:B9BB: 10        .byte $10
- - - - - - 0x03B9CC 1C:B9BC: 22        .byte $22
- - - - - - 0x03B9CD 1C:B9BD: 22        .byte $22
- - - - - - 0x03B9CE 1C:B9BE: 11        .byte $11
- - - - - - 0x03B9CF 1C:B9BF: 11        .byte $11
- - - - - - 0x03B9D0 1C:B9C0: 10        .byte $10
- - - - - - 0x03B9D1 1C:B9C1: 22        .byte $22
- - - - - - 0x03B9D2 1C:B9C2: 11        .byte $11
- - - - - - 0x03B9D3 1C:B9C3: 11        .byte $11
- - - - - - 0x03B9D4 1C:B9C4: 02        .byte $02
- - - - - - 0x03B9D5 1C:B9C5: 22        .byte $22
- - - - - - 0x03B9D6 1C:B9C6: 11        .byte $11
- - - - - - 0x03B9D7 1C:B9C7: 11        .byte $11
- - - - - - 0x03B9D8 1C:B9C8: 00        .byte $00
- - - - - - 0x03B9D9 1C:B9C9: 22        .byte $22
- - - - - - 0x03B9DA 1C:B9CA: 11        .byte $11
- - - - - - 0x03B9DB 1C:B9CB: 11        .byte $11
- - - - - - 0x03B9DC 1C:B9CC: 10        .byte $10
- - - - - - 0x03B9DD 1C:B9CD: 02        .byte $02
- - - - - - 0x03B9DE 1C:B9CE: 33        .byte $33
- - - - - - 0x03B9DF 1C:B9CF: 33        .byte $33
- - - - - - 0x03B9E0 1C:B9D0: 33        .byte $33
- - - - - - 0x03B9E1 1C:B9D1: 33        .byte $33
- D - I - - 0x03B9E2 1C:B9D2: 33        .byte $33
- D - I - - 0x03B9E3 1C:B9D3: 33        .byte $33
- D - I - - 0x03B9E4 1C:B9D4: 33        .byte $33
- D - I - - 0x03B9E5 1C:B9D5: 33        .byte $33
- D - I - - 0x03B9E6 1C:B9D6: 33        .byte $33
- - - - - - 0x03B9E7 1C:B9D7: 33        .byte $33
- - - - - - 0x03B9E8 1C:B9D8: 33        .byte $33
- D - I - - 0x03B9E9 1C:B9D9: 33        .byte $33
- - - - - - 0x03B9EA 1C:B9DA: 33        .byte $33
- - - - - - 0x03B9EB 1C:B9DB: 33        .byte $33
- - - - - - 0x03B9EC 1C:B9DC: 33        .byte $33
- - - - - - 0x03B9ED 1C:B9DD: 33        .byte $33
- D - I - - 0x03B9EE 1C:B9DE: 33        .byte $33
- D - I - - 0x03B9EF 1C:B9DF: 33        .byte $33
- D - I - - 0x03B9F0 1C:B9E0: 33        .byte $33
- D - I - - 0x03B9F1 1C:B9E1: 33        .byte $33
- - - - - - 0x03B9F2 1C:B9E2: 33        .byte $33
- D - I - - 0x03B9F3 1C:B9E3: 33        .byte $33
- - - - - - 0x03B9F4 1C:B9E4: 33        .byte $33
- D - I - - 0x03B9F5 1C:B9E5: 33        .byte $33
- - - - - - 0x03B9F6 1C:B9E6: 11        .byte $11
- - - - - - 0x03B9F7 1C:B9E7: 10        .byte $10
- - - - - - 0x03B9F8 1C:B9E8: 02        .byte $02
- - - - - - 0x03B9F9 1C:B9E9: 22        .byte $22
- - - - - - 0x03B9FA 1C:B9EA: 11        .byte $11
- - - - - - 0x03B9FB 1C:B9EB: 10        .byte $10
- - - - - - 0x03B9FC 1C:B9EC: 22        .byte $22
- - - - - - 0x03B9FD 1C:B9ED: 22        .byte $22
- - - - - - 0x03B9FE 1C:B9EE: 11        .byte $11
- - - - - - 0x03B9FF 1C:B9EF: 11        .byte $11
- - - - - - 0x03BA00 1C:B9F0: 10        .byte $10
- - - - - - 0x03BA01 1C:B9F1: 22        .byte $22
- - - - - - 0x03BA02 1C:B9F2: 11        .byte $11
- - - - - - 0x03BA03 1C:B9F3: 11        .byte $11
- - - - - - 0x03BA04 1C:B9F4: 02        .byte $02
- - - - - - 0x03BA05 1C:B9F5: 22        .byte $22
- - - - - - 0x03BA06 1C:B9F6: 11        .byte $11
- - - - - - 0x03BA07 1C:B9F7: 11        .byte $11
- - - - - - 0x03BA08 1C:B9F8: 00        .byte $00
- - - - - - 0x03BA09 1C:B9F9: 22        .byte $22
- - - - - - 0x03BA0A 1C:B9FA: 11        .byte $11
- - - - - - 0x03BA0B 1C:B9FB: 11        .byte $11
- - - - - - 0x03BA0C 1C:B9FC: 10        .byte $10
- - - - - - 0x03BA0D 1C:B9FD: 02        .byte $02
- - - - - - 0x03BA0E 1C:B9FE: 22        .byte $22
- - - - - - 0x03BA0F 1C:B9FF: 00        .byte $00
- - - - - - 0x03BA10 1C:BA00: 11        .byte $11
- - - - - - 0x03BA11 1C:BA01: 11        .byte $11
- - - - - - 0x03BA12 1C:BA02: 22        .byte $22
- - - - - - 0x03BA13 1C:BA03: 20        .byte $20
- - - - - - 0x03BA14 1C:BA04: 00        .byte $00
- - - - - - 0x03BA15 1C:BA05: 11        .byte $11
- - - - - - 0x03BA16 1C:BA06: 22        .byte $22
- - - - - - 0x03BA17 1C:BA07: 22        .byte $22
- - - - - - 0x03BA18 1C:BA08: 00        .byte $00
- - - - - - 0x03BA19 1C:BA09: 11        .byte $11
- - - - - - 0x03BA1A 1C:BA0A: 22        .byte $22
- - - - - - 0x03BA1B 1C:BA0B: 22        .byte $22
- - - - - - 0x03BA1C 1C:BA0C: 20        .byte $20
- - - - - - 0x03BA1D 1C:BA0D: 01        .byte $01
- - - - - - 0x03BA1E 1C:BA0E: 22        .byte $22
- - - - - - 0x03BA1F 1C:BA0F: 00        .byte $00
- - - - - - 0x03BA20 1C:BA10: 01        .byte $01
- - - - - - 0x03BA21 1C:BA11: 11        .byte $11
- - - - - - 0x03BA22 1C:BA12: 22        .byte $22
- - - - - - 0x03BA23 1C:BA13: 22        .byte $22
- - - - - - 0x03BA24 1C:BA14: 00        .byte $00
- - - - - - 0x03BA25 1C:BA15: 01        .byte $01
- - - - - - 0x03BA26 1C:BA16: 11        .byte $11
- - - - - - 0x03BA27 1C:BA17: 10        .byte $10
- - - - - - 0x03BA28 1C:BA18: 02        .byte $02
- - - - - - 0x03BA29 1C:BA19: 22        .byte $22
- - - - - - 0x03BA2A 1C:BA1A: 11        .byte $11
- - - - - - 0x03BA2B 1C:BA1B: 10        .byte $10
- - - - - - 0x03BA2C 1C:BA1C: 22        .byte $22
- - - - - - 0x03BA2D 1C:BA1D: 22        .byte $22
- - - - - - 0x03BA2E 1C:BA1E: 11        .byte $11
- - - - - - 0x03BA2F 1C:BA1F: 11        .byte $11
- - - - - - 0x03BA30 1C:BA20: 10        .byte $10
- - - - - - 0x03BA31 1C:BA21: 22        .byte $22
- - - - - - 0x03BA32 1C:BA22: 11        .byte $11
- - - - - - 0x03BA33 1C:BA23: 11        .byte $11
- - - - - - 0x03BA34 1C:BA24: 02        .byte $02
- - - - - - 0x03BA35 1C:BA25: 22        .byte $22
- - - - - - 0x03BA36 1C:BA26: 11        .byte $11
- - - - - - 0x03BA37 1C:BA27: 11        .byte $11
- - - - - - 0x03BA38 1C:BA28: 00        .byte $00
- - - - - - 0x03BA39 1C:BA29: 22        .byte $22
- - - - - - 0x03BA3A 1C:BA2A: 11        .byte $11
- - - - - - 0x03BA3B 1C:BA2B: 11        .byte $11
- - - - - - 0x03BA3C 1C:BA2C: 10        .byte $10
- - - - - - 0x03BA3D 1C:BA2D: 02        .byte $02



tbl_BA2E:
; 00
- D - I - - 0x03BA3E 1C:BA2E: 11        .byte $11
- D - I - - 0x03BA3F 1C:BA2F: 11        .byte $11
- D - I - - 0x03BA40 1C:BA30: 10        .byte $10
- D - I - - 0x03BA41 1C:BA31: 00        .byte $00
- D - I - - 0x03BA42 1C:BA32: 33        .byte $33
- D - I - - 0x03BA43 1C:BA33: 33        .byte $33
- D - I - - 0x03BA44 1C:BA34: 33        .byte $33
- D - I - - 0x03BA45 1C:BA35: 44        .byte $44
- D - I - - 0x03BA46 1C:BA36: 55        .byte $55
- D - I - - 0x03BA47 1C:BA37: 55        .byte $55
- D - I - - 0x03BA48 1C:BA38: 66        .byte $66
- D - I - - 0x03BA49 1C:BA39: 66        .byte $66
; 01
- D - I - - 0x03BA4A 1C:BA3A: 11        .byte $11
- D - I - - 0x03BA4B 1C:BA3B: 11        .byte $11
- D - I - - 0x03BA4C 1C:BA3C: 11        .byte $11
- D - I - - 0x03BA4D 1C:BA3D: 00        .byte $00
- D - I - - 0x03BA4E 1C:BA3E: 33        .byte $33
- D - I - - 0x03BA4F 1C:BA3F: 33        .byte $33
- D - I - - 0x03BA50 1C:BA40: 33        .byte $33
- D - I - - 0x03BA51 1C:BA41: 34        .byte $34
- - - - - - 0x03BA52 1C:BA42: 66        .byte $66
- - - - - - 0x03BA53 1C:BA43: 66        .byte $66
- - - - - - 0x03BA54 1C:BA44: 66        .byte $66
- - - - - - 0x03BA55 1C:BA45: 55        .byte $55
; 02
- - - - - - 0x03BA56 1C:BA46: 11        .byte $11
- - - - - - 0x03BA57 1C:BA47: 00        .byte $00
- - - - - - 0x03BA58 1C:BA48: 00        .byte $00
- - - - - - 0x03BA59 1C:BA49: 00        .byte $00
- D - I - - 0x03BA5A 1C:BA4A: 33        .byte $33
- D - I - - 0x03BA5B 1C:BA4B: 44        .byte $44
- D - I - - 0x03BA5C 1C:BA4C: 44        .byte $44
- D - I - - 0x03BA5D 1C:BA4D: 44        .byte $44
- - - - - - 0x03BA5E 1C:BA4E: 66        .byte $66
- - - - - - 0x03BA5F 1C:BA4F: 55        .byte $55
- - - - - - 0x03BA60 1C:BA50: 55        .byte $55
- - - - - - 0x03BA61 1C:BA51: 55        .byte $55
; 03
- D - I - - 0x03BA62 1C:BA52: 11        .byte $11
- D - I - - 0x03BA63 1C:BA53: 11        .byte $11
- D - I - - 0x03BA64 1C:BA54: 11        .byte $11
- D - I - - 0x03BA65 1C:BA55: 11        .byte $11
- D - I - - 0x03BA66 1C:BA56: 44        .byte $44
- - - - - - 0x03BA67 1C:BA57: 44        .byte $44
- D - I - - 0x03BA68 1C:BA58: 44        .byte $44
- - - - - - 0x03BA69 1C:BA59: 44        .byte $44
- - - - - - 0x03BA6A 1C:BA5A: 66        .byte $66
- - - - - - 0x03BA6B 1C:BA5B: 65        .byte $65
- - - - - - 0x03BA6C 1C:BA5C: 55        .byte $55
- - - - - - 0x03BA6D 1C:BA5D: 55        .byte $55
; 04
- D - I - - 0x03BA6E 1C:BA5E: 22        .byte $22
- D - I - - 0x03BA6F 1C:BA5F: 22        .byte $22
- D - I - - 0x03BA70 1C:BA60: 11        .byte $11
- D - I - - 0x03BA71 1C:BA61: 11        .byte $11
- - - - - - 0x03BA72 1C:BA62: 33        .byte $33
- D - I - - 0x03BA73 1C:BA63: 33        .byte $33
- - - - - - 0x03BA74 1C:BA64: 33        .byte $33
- D - I - - 0x03BA75 1C:BA65: 33        .byte $33
- - - - - - 0x03BA76 1C:BA66: 66        .byte $66
- - - - - - 0x03BA77 1C:BA67: 66        .byte $66
- - - - - - 0x03BA78 1C:BA68: 55        .byte $55
- - - - - - 0x03BA79 1C:BA69: 55        .byte $55
; 05
- D - I - - 0x03BA7A 1C:BA6A: 00        .byte $00
- D - I - - 0x03BA7B 1C:BA6B: 00        .byte $00
- D - I - - 0x03BA7C 1C:BA6C: 00        .byte $00
- D - I - - 0x03BA7D 1C:BA6D: 00        .byte $00
- - - - - - 0x03BA7E 1C:BA6E: 33        .byte $33
- - - - - - 0x03BA7F 1C:BA6F: 33        .byte $33
- - - - - - 0x03BA80 1C:BA70: 34        .byte $34
- - - - - - 0x03BA81 1C:BA71: 44        .byte $44
- - - - - - 0x03BA82 1C:BA72: 66        .byte $66
- - - - - - 0x03BA83 1C:BA73: 66        .byte $66
- - - - - - 0x03BA84 1C:BA74: 55        .byte $55
- - - - - - 0x03BA85 1C:BA75: 55        .byte $55
; 06
- - - - - - 0x03BA86 1C:BA76: 11        .byte $11
- - - - - - 0x03BA87 1C:BA77: 11        .byte $11
- - - - - - 0x03BA88 1C:BA78: 10        .byte $10
- - - - - - 0x03BA89 1C:BA79: 00        .byte $00
- - - - - - 0x03BA8A 1C:BA7A: 33        .byte $33
- - - - - - 0x03BA8B 1C:BA7B: 33        .byte $33
- - - - - - 0x03BA8C 1C:BA7C: 34        .byte $34
- - - - - - 0x03BA8D 1C:BA7D: 44        .byte $44
- - - - - - 0x03BA8E 1C:BA7E: 66        .byte $66
- - - - - - 0x03BA8F 1C:BA7F: 66        .byte $66
- - - - - - 0x03BA90 1C:BA80: 55        .byte $55
- - - - - - 0x03BA91 1C:BA81: 55        .byte $55
; 07
- - - - - - 0x03BA92 1C:BA82: 11        .byte $11
- - - - - - 0x03BA93 1C:BA83: 11        .byte $11
- - - - - - 0x03BA94 1C:BA84: 10        .byte $10
- - - - - - 0x03BA95 1C:BA85: 00        .byte $00
- - - - - - 0x03BA96 1C:BA86: 33        .byte $33
- - - - - - 0x03BA97 1C:BA87: 33        .byte $33
- - - - - - 0x03BA98 1C:BA88: 34        .byte $34
- - - - - - 0x03BA99 1C:BA89: 44        .byte $44
- - - - - - 0x03BA9A 1C:BA8A: 66        .byte $66
- - - - - - 0x03BA9B 1C:BA8B: 66        .byte $66
- - - - - - 0x03BA9C 1C:BA8C: 55        .byte $55
- - - - - - 0x03BA9D 1C:BA8D: 55        .byte $55
; 08
- - - - - - 0x03BA9E 1C:BA8E: 11        .byte $11
- - - - - - 0x03BA9F 1C:BA8F: 11        .byte $11
- - - - - - 0x03BAA0 1C:BA90: 10        .byte $10
- - - - - - 0x03BAA1 1C:BA91: 00        .byte $00
- - - - - - 0x03BAA2 1C:BA92: 33        .byte $33
- - - - - - 0x03BAA3 1C:BA93: 33        .byte $33
- - - - - - 0x03BAA4 1C:BA94: 34        .byte $34
- - - - - - 0x03BAA5 1C:BA95: 44        .byte $44
- - - - - - 0x03BAA6 1C:BA96: 66        .byte $66
- - - - - - 0x03BAA7 1C:BA97: 66        .byte $66
- - - - - - 0x03BAA8 1C:BA98: 55        .byte $55
- - - - - - 0x03BAA9 1C:BA99: 55        .byte $55
; 09
- - - - - - 0x03BAAA 1C:BA9A: 11        .byte $11
- - - - - - 0x03BAAB 1C:BA9B: 11        .byte $11
- - - - - - 0x03BAAC 1C:BA9C: 10        .byte $10
- - - - - - 0x03BAAD 1C:BA9D: 00        .byte $00
- - - - - - 0x03BAAE 1C:BA9E: 33        .byte $33
- - - - - - 0x03BAAF 1C:BA9F: 33        .byte $33
- - - - - - 0x03BAB0 1C:BAA0: 34        .byte $34
- - - - - - 0x03BAB1 1C:BAA1: 44        .byte $44
- - - - - - 0x03BAB2 1C:BAA2: 66        .byte $66
- - - - - - 0x03BAB3 1C:BAA3: 66        .byte $66
- - - - - - 0x03BAB4 1C:BAA4: 55        .byte $55
- - - - - - 0x03BAB5 1C:BAA5: 55        .byte $55
; 0A
- - - - - - 0x03BAB6 1C:BAA6: 11        .byte $11
- - - - - - 0x03BAB7 1C:BAA7: 11        .byte $11
- - - - - - 0x03BAB8 1C:BAA8: 10        .byte $10
- - - - - - 0x03BAB9 1C:BAA9: 00        .byte $00
- - - - - - 0x03BABA 1C:BAAA: 33        .byte $33
- - - - - - 0x03BABB 1C:BAAB: 33        .byte $33
- - - - - - 0x03BABC 1C:BAAC: 34        .byte $34
- - - - - - 0x03BABD 1C:BAAD: 44        .byte $44
- - - - - - 0x03BABE 1C:BAAE: 66        .byte $66
- - - - - - 0x03BABF 1C:BAAF: 66        .byte $66
- - - - - - 0x03BAC0 1C:BAB0: 55        .byte $55
- - - - - - 0x03BAC1 1C:BAB1: 55        .byte $55



tbl_BAB2_параметры_команды_соперников:
    .word off_BAF6_00_Fluminense
    .word off_BB00_01_Corinthians
    .word off_BB0E_02_Gremio
    .word off_BB1C_03_Palmeiras
    .word off_BB2A_04_Santos
    .word off_BB38_05_Flamengo
    .word off_BB48_06_Kunimi
    .word off_BB56_07_Akita
    .word off_BB64_08_Tatsunami
    .word off_BB72_09_Musashi
    .word off_BB7C_0A_Furano
    .word off_BB88_0B_Toho
    .word off_BB9A_0C_AS_Roma
    .word off_BBA6_0D_Uruguay
    .word off_BBB4_0E_Hamburger_SV
    .word off_BBC6_0F_Japan
    .word off_BBE6_10_Syria
    .word off_BBF0_11_China
    .word off_BBFE_12_Iran
    .word off_BC08_13_North_Korea
    .word off_BC12_14_Saudi_Arabia
    .word off_BC1C_15_South_Korea
    .word off_BC2A_16_Turkey
    .word off_BC34_17_Poland
    .word off_BC42_18_England
    .word off_BC50_19_Soviet_Union
    .word off_BC5E_1A_France
    .word off_BC6C_1B_Mexico
    .word off_BC78_1C_Italy
    .word off_BC86_1D_Netherlands
    .word off_BC94_1E_Argentina
    .word off_BCA8_1F_West_Germany
    .word off_BCC0_20_Brazil

con_закончить       = $FF
con_formation       = $00
con_defense         = $00

off_BAF6_00_Fluminense:
- D - I - - 0x03BB06 1C:BAF6: 00        .byte con_formation + $00
- - - - - - 0x03BB07 1C:BAF7: 00        .byte con_defense + $00
- D - I - - 0x03BB08 1C:BAF8: 76        .byte $76     ; 02 GK 0x038A7F 0x03805A
- D - I - - 0x03BB09 1C:BAF9: 77        .byte $77     ; 03 DF 0x038A7F 0x03805A
- D - I - - 0x03BB0A 1C:BAFA: 77        .byte $77     ; 04 MF 0x038A7F 0x03805A
- D - I - - 0x03BB0B 1C:BAFB: 78        .byte $78     ; 05 FW 0x038A7F 0x03805A
- D - I - - 0x03BB0C 1C:BAFC: A0        .byte $A0     ; 06 0x03853E
- D - I - - 0x03BB0D 1C:BAFD: 1F        .byte $1F     ; 07 0x03855B
- D - I - - 0x03BB0E 1C:BAFE: 1F        .byte $1F     ; 08 0x038593

    .byte con_закончить



off_BB00_01_Corinthians:
- D - I - - 0x03BB10 1C:BB00: 03        .byte con_formation + $03
- - - - - - 0x03BB11 1C:BB01: 00        .byte con_defense + $00
- D - I - - 0x03BB12 1C:BB02: 79        .byte $79     ; 02 GK
- D - I - - 0x03BB13 1C:BB03: 7A        .byte $7A     ; 03 DF
- D - I - - 0x03BB14 1C:BB04: 7A        .byte $7A     ; 04 MF
- D - I - - 0x03BB15 1C:BB05: 7B        .byte $7B     ; 05 FW
- D - I - - 0x03BB16 1C:BB06: A0        .byte $A0     ; 06 
- D - I - - 0x03BB17 1C:BB07: 1E        .byte $1E     ; 07 
- D - I - - 0x03BB18 1C:BB08: 1E        .byte $1E     ; 08 

    .byte $0A
    .byte con_p_ribeiro_corinthians
    
    .byte $09
    .byte con_p_satrustegui_corinthians
    
    .byte con_закончить



off_BB0E_02_Gremio:
- D - I - - 0x03BB1E 1C:BB0E: 21        .byte con_formation + $01
- - - - - - 0x03BB1F 1C:BB0F: 00        .byte con_defense + $02
- - - - - - 0x03BB20 1C:BB10: 76        .byte $76     ; 02 GK
- D - I - - 0x03BB21 1C:BB11: 7C        .byte $7C     ; 03 DF
- D - I - - 0x03BB22 1C:BB12: 7D        .byte $7D     ; 04 MF
- D - I - - 0x03BB23 1C:BB13: 7D        .byte $7D     ; 05 FW
- - - - - - 0x03BB24 1C:BB14: A0        .byte $A0     ; 06 
- - - - - - 0x03BB25 1C:BB15: 1F        .byte $1F     ; 07 
- - - - - - 0x03BB26 1C:BB16: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_da_silva_gremio
    
    .byte $01
    .byte con_p_meon_gremio
    
    .byte con_закончить



off_BB1C_03_Palmeiras:
- D - I - - 0x03BB2C 1C:BB1C: 20        .byte con_formation + $00
- - - - - - 0x03BB2D 1C:BB1D: 00        .byte con_defense + $02
- D - I - - 0x03BB2E 1C:BB1E: 7E        .byte $7E     ; 02 GK
- D - I - - 0x03BB2F 1C:BB1F: 7F        .byte $7F     ; 03 DF
- D - I - - 0x03BB30 1C:BB20: 80        .byte $80     ; 04 MF
- D - I - - 0x03BB31 1C:BB21: 80        .byte $80     ; 05 FW
- - - - - - 0x03BB32 1C:BB22: B0        .byte $B0     ; 06 
- - - - - - 0x03BB33 1C:BB23: 1F        .byte $1F     ; 07 
- - - - - - 0x03BB34 1C:BB24: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_toninho_palmeiras
    
    .byte $0B
    .byte con_p_nei_palmeiras
    
    .byte con_закончить



off_BB2A_04_Santos:
- D - I - - 0x03BB3A 1C:BB2A: 21        .byte con_formation + $01
- - - - - - 0x03BB3B 1C:BB2B: 00        .byte con_defense + $02
- D - I - - 0x03BB3C 1C:BB2C: 81        .byte $81     ; 02 GK
- D - I - - 0x03BB3D 1C:BB2D: 82        .byte $82     ; 03 DF
- D - I - - 0x03BB3E 1C:BB2E: 83        .byte $83     ; 04 MF
- D - I - - 0x03BB3F 1C:BB2F: 83        .byte $83     ; 05 FW
- - - - - - 0x03BB40 1C:BB30: 91        .byte $91     ; 06 
- - - - - - 0x03BB41 1C:BB31: 1F        .byte $1F     ; 07 
- - - - - - 0x03BB42 1C:BB32: 1D        .byte $1D     ; 08 

    .byte $09
    .byte con_p_zagallo_santos
    
    .byte $04
    .byte con_p_dirceu_santos
    
    .byte con_закончить



off_BB38_05_Flamengo:
- D - I - - 0x03BB48 1C:BB38: 03        .byte con_formation + $03
- - - - - - 0x03BB49 1C:BB39: 00        .byte con_defense + $00
- D - I - - 0x03BB4A 1C:BB3A: 84        .byte $84     ; 02 GK
- D - I - - 0x03BB4B 1C:BB3B: 85        .byte $85     ; 03 DF
- D - I - - 0x03BB4C 1C:BB3C: 86        .byte $86     ; 04 MF
- D - I - - 0x03BB4D 1C:BB3D: 86        .byte $86     ; 05 FW
- D - I - - 0x03BB4E 1C:BB3E: 60        .byte $60     ; 06 
- D - I - - 0x03BB4F 1C:BB3F: 1E        .byte $1E     ; 07 
- D - I - - 0x03BB50 1C:BB40: 1F        .byte $1F     ; 08 

    .byte $0A
    .byte con_p_carlos_flamengo
    
    .byte $06
    .byte con_p_santamaria_flamengo
    
    .byte $02
    .byte con_p_jetorio_flamengo
    
    .byte con_закончить



off_BB48_06_Kunimi:
- D - I - - 0x03BB58 1C:BB48: 00        .byte con_formation + $00
- - - - - - 0x03BB59 1C:BB49: 00        .byte con_defense + $00
- D - I - - 0x03BB5A 1C:BB4A: 87        .byte $87     ; 02 GK
- D - I - - 0x03BB5B 1C:BB4B: 88        .byte $88     ; 03 DF
- D - I - - 0x03BB5C 1C:BB4C: 89        .byte $89     ; 04 MF
- D - I - - 0x03BB5D 1C:BB4D: 89        .byte $89     ; 05 FW
- D - I - - 0x03BB5E 1C:BB4E: 91        .byte $91     ; 06 
- D - I - - 0x03BB5F 1C:BB4F: 1F        .byte $1F     ; 07 
- D - I - - 0x03BB60 1C:BB50: 1D        .byte $1D     ; 08 

    .byte $04
    .byte con_p_jito_kunimi
    
    .byte $09
    .byte con_p_sano_kunimi
    
    .byte con_закончить



off_BB56_07_Akita:
- D - I - - 0x03BB66 1C:BB56: 21        .byte con_formation + $01
- - - - - - 0x03BB67 1C:BB57: 00        .byte con_defense + $02
- D - I - - 0x03BB68 1C:BB58: 8A        .byte $8A     ; 02 GK
- D - I - - 0x03BB69 1C:BB59: 8B        .byte $8B     ; 03 DF
- D - I - - 0x03BB6A 1C:BB5A: 8C        .byte $8C     ; 04 MF
- D - I - - 0x03BB6B 1C:BB5B: 8C        .byte $8C     ; 05 FW
- - - - - - 0x03BB6C 1C:BB5C: A0        .byte $A0     ; 06 
- - - - - - 0x03BB6D 1C:BB5D: 1F        .byte $1F     ; 07 
- - - - - - 0x03BB6E 1C:BB5E: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_masao_akita
    
    .byte $0B
    .byte con_p_kazuo_akita
    
    .byte con_закончить



off_BB64_08_Tatsunami:
- D - I - - 0x03BB74 1C:BB64: 01        .byte con_formation + $01
- - - - - - 0x03BB75 1C:BB65: 00        .byte con_defense + $00
- - - - - - 0x03BB76 1C:BB66: 76        .byte $76     ; 02 GK
- D - I - - 0x03BB77 1C:BB67: 8D        .byte $8D     ; 03 DF
- D - I - - 0x03BB78 1C:BB68: 8D        .byte $8D     ; 04 MF
- D - I - - 0x03BB79 1C:BB69: 8E        .byte $8E     ; 05 FW
- D - I - - 0x03BB7A 1C:BB6A: 40        .byte $40     ; 06 
- D - I - - 0x03BB7B 1C:BB6B: 1E        .byte $1E     ; 07 
- - - - - - 0x03BB7C 1C:BB6C: 1E        .byte $1E     ; 08 

    .byte $04
    .byte con_p_soda_tatsunami
    
    .byte $01
    .byte con_p_nakanishi_tatsunami
    
    .byte con_закончить



off_BB72_09_Musashi:
- D - I - - 0x03BB82 1C:BB72: 02        .byte con_formation + $02
- - - - - - 0x03BB83 1C:BB73: 00        .byte con_defense + $00
- D - I - - 0x03BB84 1C:BB74: 8F        .byte $8F     ; 02 GK
- D - I - - 0x03BB85 1C:BB75: 90        .byte $90     ; 03 DF
- D - I - - 0x03BB86 1C:BB76: 91        .byte $91     ; 04 MF
- D - I - - 0x03BB87 1C:BB77: 91        .byte $91     ; 05 FW
- - - - - - 0x03BB88 1C:BB78: 70        .byte $70     ; 06 
- - - - - - 0x03BB89 1C:BB79: 1F        .byte $1F     ; 07 
- - - - - - 0x03BB8A 1C:BB7A: 1C        .byte $1C     ; 08 

    .byte con_закончить



off_BB7C_0A_Furano:
- D - I - - 0x03BB8C 1C:BB7C: 00        .byte con_formation + $00
- - - - - - 0x03BB8D 1C:BB7D: 00        .byte con_defense + $00
- D - I - - 0x03BB8E 1C:BB7E: 92        .byte $92     ; 02 GK
- D - I - - 0x03BB8F 1C:BB7F: 93        .byte $93     ; 03 DF
- D - I - - 0x03BB90 1C:BB80: 94        .byte $94     ; 04 MF
- D - I - - 0x03BB91 1C:BB81: 94        .byte $94     ; 05 FW
- D - I - - 0x03BB92 1C:BB82: 70        .byte $70     ; 06 
- D - I - - 0x03BB93 1C:BB83: 1F        .byte $1F     ; 07 
- - - - - - 0x03BB94 1C:BB84: 1F        .byte $1F     ; 08 

    .byte $0A
    .byte con_p_matsuyama_furano
    
    .byte con_закончить



off_BB88_0B_Toho:
- D - I - - 0x03BB98 1C:BB88: 03        .byte con_formation + $03
- - - - - - 0x03BB99 1C:BB89: 00        .byte con_defense + $00
- - - - - - 0x03BB9A 1C:BB8A: 76        .byte $76     ; 02 GK
- D - I - - 0x03BB9B 1C:BB8B: 95        .byte $95     ; 03 DF
- D - I - - 0x03BB9C 1C:BB8C: 96        .byte $96     ; 04 MF
- D - I - - 0x03BB9D 1C:BB8D: 96        .byte $96     ; 05 FW
- D - I - - 0x03BB9E 1C:BB8E: 60        .byte $60     ; 06 
- D - I - - 0x03BB9F 1C:BB8F: 1F        .byte $1F     ; 07 
- D - I - - 0x03BBA0 1C:BB90: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_hyuga_toho
    
    .byte $0A
    .byte con_p_sorimachi_toho
    
    .byte $06
    .byte con_p_sawada_toho
    
    .byte $01
    .byte con_p_wakashimazu_toho
    
    .byte con_закончить



off_BB9A_0C_AS_Roma:
- D - I - - 0x03BBAA 1C:BB9A: 20        .byte con_formation + $00
- - - - - - 0x03BBAB 1C:BB9B: 00        .byte con_defense + $02
- D - I - - 0x03BBAC 1C:BB9C: 97        .byte $97     ; 02 GK
- D - I - - 0x03BBAD 1C:BB9D: 98        .byte $98     ; 03 DF
- D - I - - 0x03BBAE 1C:BB9E: 99        .byte $99     ; 04 MF
- D - I - - 0x03BBAF 1C:BB9F: 99        .byte $99     ; 05 FW
- - - - - - 0x03BBB0 1C:BBA0: A0        .byte $A0     ; 06 
- - - - - - 0x03BBB1 1C:BBA1: 1F        .byte $1F     ; 07 
- - - - - - 0x03BBB2 1C:BBA2: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_rampion_as_roma
    
    .byte con_закончить



off_BBA6_0D_Uruguay:
- D - I - - 0x03BBB6 1C:BBA6: 01        .byte con_formation + $01
- - - - - - 0x03BBB7 1C:BBA7: 00        .byte con_defense + $00
- D - I - - 0x03BBB8 1C:BBA8: 9A        .byte $9A     ; 02 GK
- D - I - - 0x03BBB9 1C:BBA9: 9B        .byte $9B     ; 03 DF
- D - I - - 0x03BBBA 1C:BBAA: 9C        .byte $9C     ; 04 MF
- D - I - - 0x03BBBB 1C:BBAB: 9C        .byte $9C     ; 05 FW
- D - I - - 0x03BBBC 1C:BBAC: A0        .byte $A0     ; 06 
- D - I - - 0x03BBBD 1C:BBAD: 1F        .byte $1F     ; 07 
- D - I - - 0x03BBBE 1C:BBAE: 1F        .byte $1F     ; 08 

    .byte $0B
    .byte con_p_victorino_uruguay
    
    .byte $09
    .byte con_p_da_silva_uruguay
    
    .byte con_закончить



off_BBB4_0E_Hamburger_SV:
- D - I - - 0x03BBC4 1C:BBB4: 03        .byte con_formation + $03
- - - - - - 0x03BBC5 1C:BBB5: 00        .byte con_defense + $00
- - - - - - 0x03BBC6 1C:BBB6: 76        .byte $76     ; 02 GK
- D - I - - 0x03BBC7 1C:BBB7: 9D        .byte $9D     ; 03 DF
- D - I - - 0x03BBC8 1C:BBB8: 9E        .byte $9E     ; 04 MF
- D - I - - 0x03BBC9 1C:BBB9: 9E        .byte $9E     ; 05 FW
- D - I - - 0x03BBCA 1C:BBBA: 70        .byte $70     ; 06 
- D - I - - 0x03BBCB 1C:BBBB: 1E        .byte $1E     ; 07 
- - - - - - 0x03BBCC 1C:BBBC: 1E        .byte $1E     ; 08 

    .byte $07
    .byte con_p_kappelman_hamburger_sv
    
    .byte $0A
    .byte con_p_kaltz_hamburger_sv
    
    .byte $06
    .byte con_p_metza_hamburger_sv
    
    .byte $01
    .byte con_p_wakabayashi_hamburger_sv
    
    .byte con_закончить



off_BBC6_0F_Japan:
- D - I - - 0x03BBD6 1C:BBC6: 01        .byte con_formation + $01
- - - - - - 0x03BBD7 1C:BBC7: 00        .byte con_defense + $00
- - - - - - 0x03BBD8 1C:BBC8: 76        .byte $76     ; 02 GK
- - - - - - 0x03BBD9 1C:BBC9: 77        .byte $77     ; 03 DF
- - - - - - 0x03BBDA 1C:BBCA: 78        .byte $78     ; 04 MF
- - - - - - 0x03BBDB 1C:BBCB: 79        .byte $79     ; 05 FW
- D - I - - 0x03BBDC 1C:BBCC: 30        .byte $30     ; 06 
- D - I - - 0x03BBDD 1C:BBCD: 1F        .byte $1F     ; 07 
- D - I - - 0x03BBDE 1C:BBCE: 1B        .byte $1B     ; 08 

    .byte $09
    .byte con_p_hyuga_japan
    
    .byte $0B
    .byte con_p_nitta_japan
    
    .byte $06
    .byte con_p_sano_japan
    
    .byte $0A
    .byte con_p_misaki_japan
    
    .byte $08
    .byte con_p_masao_japan
    
    .byte $07
    .byte con_p_kazuo_japan
    
    .byte $02
    .byte con_p_jito_japan
    
    .byte $04
    .byte con_p_ishizaki_japan
    
    .byte $03
    .byte con_p_soda_japan
    
    .byte $05
    .byte con_p_matsuyama_japan
    
    .byte $01
    .byte con_p_wakashimazu_japan
    
    .byte con_закончить



off_BBE6_10_Syria:
- D - I - - 0x03BBF6 1C:BBE6: 23        .byte con_formation + $03
- - - - - - 0x03BBF7 1C:BBE7: 00        .byte con_defense + $02
- D - I - - 0x03BBF8 1C:BBE8: 9F        .byte $9F     ; 02 GK
- D - I - - 0x03BBF9 1C:BBE9: A0        .byte $A0     ; 03 DF
- D - I - - 0x03BBFA 1C:BBEA: A0        .byte $A0     ; 04 MF
- D - I - - 0x03BBFB 1C:BBEB: A1        .byte $A1     ; 05 FW
- D - I - - 0x03BBFC 1C:BBEC: A0        .byte $A0     ; 06 
- D - I - - 0x03BBFD 1C:BBED: 1F        .byte $1F     ; 07 
- D - I - - 0x03BBFE 1C:BBEE: 1F        .byte $1F     ; 08 

    .byte con_закончить



off_BBF0_11_China:
- D - I - - 0x03BC00 1C:BBF0: 01        .byte con_formation + $01
- - - - - - 0x03BC01 1C:BBF1: 00        .byte con_defense + $00
- D - I - - 0x03BC02 1C:BBF2: A2        .byte $A2     ; 02 GK
- D - I - - 0x03BC03 1C:BBF3: A3        .byte $A3     ; 03 DF
- D - I - - 0x03BC04 1C:BBF4: A4        .byte $A4     ; 04 MF
- D - I - - 0x03BC05 1C:BBF5: A4        .byte $A4     ; 05 FW
- D - I - - 0x03BC06 1C:BBF6: A0        .byte $A0     ; 06 
- D - I - - 0x03BC07 1C:BBF7: 1F        .byte $1F     ; 07 
- D - I - - 0x03BC08 1C:BBF8: 1E        .byte $1E     ; 08 

    .byte $0B
    .byte con_p_li_han_ne_china
    
    .byte $09
    .byte con_p_li_ban_kun_china
    
    .byte con_закончить



off_BBFE_12_Iran:
- D - I - - 0x03BC0E 1C:BBFE: 00        .byte con_formation + $00
- D - I - - 0x03BC0F 1C:BBFF: 00        .byte con_defense + $00
- D - I - - 0x03BC10 1C:BC00: A5        .byte $A5     ; 02 GK
- D - I - - 0x03BC11 1C:BC01: A6        .byte $A6     ; 03 DF
- D - I - - 0x03BC12 1C:BC02: A7        .byte $A7     ; 04 MF
- D - I - - 0x03BC13 1C:BC03: A7        .byte $A7     ; 05 FW
- D - I - - 0x03BC14 1C:BC04: A1        .byte $A1     ; 06 
- D - I - - 0x03BC15 1C:BC05: 1F        .byte $1F     ; 07 
- - - - - - 0x03BC16 1C:BC06: 1D        .byte $1D     ; 08 

    .byte con_закончить



off_BC08_13_North_Korea:
- D - I - - 0x03BC18 1C:BC08: 02        .byte con_formation + $02
- - - - - - 0x03BC19 1C:BC09: 00        .byte con_defense + $00
- D - I - - 0x03BC1A 1C:BC0A: A8        .byte $A8     ; 02 GK
- D - I - - 0x03BC1B 1C:BC0B: A9        .byte $A9     ; 03 DF
- D - I - - 0x03BC1C 1C:BC0C: AA        .byte $AA     ; 04 MF
- D - I - - 0x03BC1D 1C:BC0D: AA        .byte $AA     ; 05 FW
- D - I - - 0x03BC1E 1C:BC0E: A0        .byte $A0     ; 06 
- D - I - - 0x03BC1F 1C:BC0F: 00        .byte $00     ; 07 
- D - I - - 0x03BC20 1C:BC10: 00        .byte $00     ; 08 

    .byte con_закончить



off_BC12_14_Saudi_Arabia:
- D - I - - 0x03BC22 1C:BC12: 13        .byte con_formation + $03
- - - - - - 0x03BC23 1C:BC13: 00        .byte con_defense + $01
- D - I - - 0x03BC24 1C:BC14: AB        .byte $AB     ; 02 GK
- D - I - - 0x03BC25 1C:BC15: AC        .byte $AC     ; 03 DF
- D - I - - 0x03BC26 1C:BC16: AD        .byte $AD     ; 04 MF
- D - I - - 0x03BC27 1C:BC17: AD        .byte $AD     ; 05 FW
- D - I - - 0x03BC28 1C:BC18: A0        .byte $A0     ; 06 
- D - I - - 0x03BC29 1C:BC19: 1F        .byte $1F     ; 07 
- D - I - - 0x03BC2A 1C:BC1A: 1F        .byte $1F     ; 08 

    .byte con_закончить



off_BC1C_15_South_Korea:
- D - I - - 0x03BC2C 1C:BC1C: 00        .byte con_formation + $00
- - - - - - 0x03BC2D 1C:BC1D: 00        .byte con_defense + $00
- D - I - - 0x03BC2E 1C:BC1E: AE        .byte $AE     ; 02 GK
- D - I - - 0x03BC2F 1C:BC1F: AF        .byte $AF     ; 03 DF
- D - I - - 0x03BC30 1C:BC20: B0        .byte $B0     ; 04 MF
- D - I - - 0x03BC31 1C:BC21: B0        .byte $B0     ; 05 FW
- D - I - - 0x03BC32 1C:BC22: 70        .byte $70     ; 06 
- D - I - - 0x03BC33 1C:BC23: 1F        .byte $1F     ; 07 
- D - I - - 0x03BC34 1C:BC24: 1C        .byte $1C     ; 08 

    .byte $09
    .byte con_p_sha_south_korea
    
    .byte $0A
    .byte con_p_kim_south_korea
    
    .byte con_закончить



off_BC2A_16_Turkey:
- D - I - - 0x03BC3A 1C:BC2A: 23        .byte con_formation + $03
- - - - - - 0x03BC3B 1C:BC2B: 00        .byte con_defense + $02
- D - I - - 0x03BC3C 1C:BC2C: B1        .byte $B1     ; 02 GK
- D - I - - 0x03BC3D 1C:BC2D: B2        .byte $B2     ; 03 DF
- D - I - - 0x03BC3E 1C:BC2E: B2        .byte $B2     ; 04 MF
- D - I - - 0x03BC3F 1C:BC2F: B2        .byte $B2     ; 05 FW
- - - - - - 0x03BC40 1C:BC30: A0        .byte $A0     ; 06 
- D - I - - 0x03BC41 1C:BC31: 1F        .byte $1F     ; 07 
- - - - - - 0x03BC42 1C:BC32: 1F        .byte $1F     ; 08 

    .byte con_закончить



off_BC34_17_Poland:
- D - I - - 0x03BC44 1C:BC34: 21        .byte con_formation + $01
- - - - - - 0x03BC45 1C:BC35: 00        .byte con_defense + $02
- - - - - - 0x03BC46 1C:BC36: 76        .byte $76     ; 02 GK
- D - I - - 0x03BC47 1C:BC37: B3        .byte $B3     ; 03 DF
- D - I - - 0x03BC48 1C:BC38: B4        .byte $B4     ; 04 MF
- D - I - - 0x03BC49 1C:BC39: B4        .byte $B4     ; 05 FW
- - - - - - 0x03BC4A 1C:BC3A: A0        .byte $A0     ; 06 
- - - - - - 0x03BC4B 1C:BC3B: 1F        .byte $1F     ; 07 
- - - - - - 0x03BC4C 1C:BC3C: 1F        .byte $1F     ; 08 

    .byte $0B
    .byte con_p_macher_poland
    
    .byte $01
    .byte con_p_djazic_poland
    
    .byte con_закончить



off_BC42_18_England:
- D - I - - 0x03BC52 1C:BC42: 00        .byte con_formation + $00
- - - - - - 0x03BC53 1C:BC43: 00        .byte con_defense + $00
- D - I - - 0x03BC54 1C:BC44: B5        .byte $B5     ; 02 GK
- D - I - - 0x03BC55 1C:BC45: B6        .byte $B6     ; 03 DF
- D - I - - 0x03BC56 1C:BC46: B7        .byte $B7     ; 04 MF
- D - I - - 0x03BC57 1C:BC47: B7        .byte $B7     ; 05 FW
- D - I - - 0x03BC58 1C:BC48: A1        .byte $A1     ; 06 
- D - I - - 0x03BC59 1C:BC49: 1F        .byte $1F     ; 07 
- D - I - - 0x03BC5A 1C:BC4A: 1D        .byte $1D     ; 08 

    .byte $09
    .byte con_p_lorimar_england
    
    .byte $04
    .byte con_p_robson_england
    
    .byte con_закончить



off_BC50_19_Soviet_Union:
- D - I - - 0x03BC60 1C:BC50: 12        .byte con_formation + $02
- - - - - - 0x03BC61 1C:BC51: 00        .byte con_defense + $01
- - - - - - 0x03BC62 1C:BC52: 76        .byte $76     ; 02 GK
- D - I - - 0x03BC63 1C:BC53: B8        .byte $B8     ; 03 DF
- D - I - - 0x03BC64 1C:BC54: B9        .byte $B9     ; 04 MF
- D - I - - 0x03BC65 1C:BC55: B9        .byte $B9     ; 05 FW
- D - I - - 0x03BC66 1C:BC56: A0        .byte $A0     ; 06 
- D - I - - 0x03BC67 1C:BC57: 1F        .byte $1F     ; 07 
- D - I - - 0x03BC68 1C:BC58: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_belyaev_soviet_union
    
    .byte $01
    .byte con_p_rashin_soviet_union
    
    .byte con_закончить



off_BC5E_1A_France:
- D - I - - 0x03BC6E 1C:BC5E: 11        .byte con_formation + $01
- - - - - - 0x03BC6F 1C:BC5F: 00        .byte con_defense + $01
- D - I - - 0x03BC70 1C:BC60: BA        .byte $BA     ; 02 GK
- D - I - - 0x03BC71 1C:BC61: BB        .byte $BB     ; 03 DF
- D - I - - 0x03BC72 1C:BC62: BC        .byte $BC     ; 04 MF
- D - I - - 0x03BC73 1C:BC63: BC        .byte $BC     ; 05 FW
- - - - - - 0x03BC74 1C:BC64: 70        .byte $70     ; 06 
- - - - - - 0x03BC75 1C:BC65: 1F        .byte $1F     ; 07 
- - - - - - 0x03BC76 1C:BC66: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_napoleon_france
    
    .byte $0A
    .byte con_p_pierre_france
    
    .byte con_закончить



off_BC6C_1B_Mexico:
- D - I - - 0x03BC7C 1C:BC6C: 20        .byte con_formation + $00
- - - - - - 0x03BC7D 1C:BC6D: 00        .byte con_defense + $02
- D - I - - 0x03BC7E 1C:BC6E: BD        .byte $BD     ; 02 GK
- D - I - - 0x03BC7F 1C:BC6F: BE        .byte $BE     ; 03 DF
- D - I - - 0x03BC80 1C:BC70: BF        .byte $BF     ; 04 MF
- D - I - - 0x03BC81 1C:BC71: BF        .byte $BF     ; 05 FW
- D - I - - 0x03BC82 1C:BC72: 70        .byte $70     ; 06 
- D - I - - 0x03BC83 1C:BC73: 1F        .byte $1F     ; 07 
- D - I - - 0x03BC84 1C:BC74: 1C        .byte $1C     ; 08 

    .byte $0A
    .byte con_p_espana_mexico
    
    .byte con_закончить



off_BC78_1C_Italy:
- D - I - - 0x03BC88 1C:BC78: 21        .byte con_formation + $01
- - - - - - 0x03BC89 1C:BC79: 00        .byte con_defense + $02
- - - - - - 0x03BC8A 1C:BC7A: 76        .byte $76     ; 02 GK
- D - I - - 0x03BC8B 1C:BC7B: C0        .byte $C0     ; 03 DF
- D - I - - 0x03BC8C 1C:BC7C: C1        .byte $C1     ; 04 MF
- D - I - - 0x03BC8D 1C:BC7D: C1        .byte $C1     ; 05 FW
- - - - - - 0x03BC8E 1C:BC7E: A0        .byte $A0     ; 06 
- - - - - - 0x03BC8F 1C:BC7F: 1F        .byte $1F     ; 07 
- - - - - - 0x03BC90 1C:BC80: 1E        .byte $1E     ; 08 

    .byte $09
    .byte con_p_rampion_italy
    
    .byte $01
    .byte con_p_hernandez_italy
    
    .byte con_закончить



off_BC86_1D_Netherlands:
- D - I - - 0x03BC96 1C:BC86: 10        .byte con_formation + $00
- - - - - - 0x03BC97 1C:BC87: 00        .byte con_defense + $01
- D - I - - 0x03BC98 1C:BC88: C2        .byte $C2     ; 02 GK
- D - I - - 0x03BC99 1C:BC89: C3        .byte $C3     ; 03 DF
- D - I - - 0x03BC9A 1C:BC8A: C4        .byte $C4     ; 04 MF
- D - I - - 0x03BC9B 1C:BC8B: C4        .byte $C4     ; 05 FW
- - - - - - 0x03BC9C 1C:BC8C: 71        .byte $71     ; 06 
- - - - - - 0x03BC9D 1C:BC8D: 1F        .byte $1F     ; 07 
- - - - - - 0x03BC9E 1C:BC8E: 1D        .byte $1D     ; 08 

    .byte $09
    .byte con_p_islas_netherlands
    
    .byte $04
    .byte con_p_libuta_netherlands
    
    .byte con_закончить



off_BC94_1E_Argentina:
- D - I - - 0x03BCA4 1C:BC94: 02        .byte con_formation + $02
- - - - - - 0x03BCA5 1C:BC95: 00        .byte con_defense + $00
- D - I - - 0x03BCA6 1C:BC96: C5        .byte $C5     ; 02 GK
- D - I - - 0x03BCA7 1C:BC97: C6        .byte $C6     ; 03 DF
- D - I - - 0x03BCA8 1C:BC98: C6        .byte $C6     ; 04 MF
- D - I - - 0x03BCA9 1C:BC99: C6        .byte $C6     ; 05 FW
- D - I - - 0x03BCAA 1C:BC9A: B0        .byte $B0     ; 06 
- D - I - - 0x03BCAB 1C:BC9B: 1F        .byte $1F     ; 07 
- D - I - - 0x03BCAC 1C:BC9C: 1A        .byte $1A     ; 08 

    .byte $0B
    .byte con_p_pascal_argentina
    
    .byte $09
    .byte con_p_satrustegui_argentina
    
    .byte $0A
    .byte con_p_diaz_argentina
    
    .byte $08
    .byte con_p_babington_argentina
    
    .byte $04
    .byte con_p_galvan_argentina
    
    .byte con_закончить



off_BCA8_1F_West_Germany:
- D - I - - 0x03BCB8 1C:BCA8: 02        .byte con_formation + $02
- - - - - - 0x03BCB9 1C:BCA9: 00        .byte con_defense + $00
- - - - - - 0x03BCBA 1C:BCAA: 76        .byte $76     ; 02 GK
- D - I - - 0x03BCBB 1C:BCAB: C7        .byte $C7     ; 03 DF
- D - I - - 0x03BCBC 1C:BCAC: C7        .byte $C7     ; 04 MF
- - - - - - 0x03BCBD 1C:BCAD: C7        .byte $C7     ; 05 FW
- D - I - - 0x03BCBE 1C:BCAE: 70        .byte $70     ; 06 
- D - I - - 0x03BCBF 1C:BCAF: 1E        .byte $1E     ; 07 
- - - - - - 0x03BCC0 1C:BCB0: 1F        .byte $1F     ; 08 

    .byte $0B
    .byte con_p_schneider_west_germany
    
    .byte $09
    .byte con_p_margus_west_germany
    
    .byte $08
    .byte con_p_kaltz_west_germany
    
    .byte $05
    .byte con_p_metza_west_germany
    
    .byte $0A
    .byte con_p_schester_west_germany
    
    .byte $07
    .byte con_p_kappelman_west_germany
    
    .byte $01
    .byte con_p_muller_west_germany
    
    .byte con_закончить



off_BCC0_20_Brazil:
- D - I - - 0x03BCD0 1C:BCC0: 03        .byte con_formation + $03
- - - - - - 0x03BCD1 1C:BCC1: 00        .byte con_defense + $00
- - - - - - 0x03BCD2 1C:BCC2: 76        .byte $76     ; 02 GK
- - - - - - 0x03BCD3 1C:BCC3: 77        .byte $77     ; 03 DF
- - - - - - 0x03BCD4 1C:BCC4: 78        .byte $78     ; 04 MF
- - - - - - 0x03BCD5 1C:BCC5: 79        .byte $79     ; 05 FW
- D - I - - 0x03BCD6 1C:BCC6: 61        .byte $61     ; 06 
- D - I - - 0x03BCD7 1C:BCC7: 1E        .byte $1E     ; 07 
- - - - - - 0x03BCD8 1C:BCC8: 28        .byte $28     ; 08 

    .byte $09
    .byte con_p_carlos_brazil
    
    .byte $07
    .byte con_p_zagallo_brazil
    
    .byte $0A
    .byte con_p_ribeiro_brazil
    
    .byte $0B
    .byte con_p_nei_brazil
    
    .byte $06
    .byte con_p_santamaria_brazil
    
    .byte $08
    .byte con_p_toninho_brazil
    
    .byte $03
    .byte con_p_dotor_brazil
    
    .byte $04
    .byte con_p_amaral_brazil
    
    .byte $05
    .byte con_p_dirceu_brazil
    
    .byte $02
    .byte con_p_jetorio_brazil
    
    .byte $01
    .byte con_p_gertise_brazil
    
    .byte con_закончить



