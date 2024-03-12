.segment "BANK_0C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000
; 0x018010-0x01A00F



; звуковой движок



; bzk optimize, зачем-то проверяются 6 адресов и каждый раз меняется номер банка.
; можно сразу проверить первый адрес
; вероятно нужны только 0700 и 0701, судя по найденному, да и 0701 возможно нахрен не нужен



.export sub_0x018010_звуковой_движок



sub_0x018010_звуковой_движок:
C D 0 - - - 0x018010 0C:8000: A2 05     LDX #$05
bra_8002_loop:
C - - - - - 0x018012 0C:8002: BC 00 07  LDY ram_звук,X
C - - - - - 0x018015 0C:8005: C0 32     CPY #$32
C - - - - - 0x018017 0C:8007: B0 0E     BCS bra_8017
; 00-31
C - - - - - 0x01801E 0C:800E: AC FC 07  LDY ram_prg_07_музыка
C - - - - - 0x018021 0C:8011: 8C 01 80  STY $5115
C - - - - - 0x018024 0C:8014: 4C 5E 80  JMP loc_805E
bra_8017:
C - - - - - 0x018027 0C:8017: C0 44     CPY #$44
C - - - - - 0x018029 0C:8019: B0 10     BCS bra_802B
; 32-43
C - - - - - 0x018030 0C:8020: A0 0D     LDY #con_prg_bank + $8D
C - - - - - 0x018032 0C:8022: 8C 01 80  STY $5115
C - - - - - 0x018035 0C:8025: 8C FC 07  STY ram_prg_07_музыка
C - - - - - 0x018038 0C:8028: 4C 5E 80  JMP loc_805E
bra_802B:
C - - - - - 0x01803B 0C:802B: C0 51     CPY #$51
C - - - - - 0x01803D 0C:802D: B0 10     BCS bra_803F
; 44-50
C - - - - - 0x018044 0C:8034: A0 0E     LDY #con_prg_bank + $8E
C - - - - - 0x018046 0C:8036: 8C 01 80  STY $5115
C - - - - - 0x018049 0C:8039: 8C FC 07  STY ram_prg_07_музыка
C - - - - - 0x01804C 0C:803C: 4C 5E 80  JMP loc_805E
bra_803F:
C - - - - - 0x01804F 0C:803F: C0 5C     CPY #$5C
C - - - - - 0x018051 0C:8041: B0 10     BCS bra_8053
; 51-5B
C - - - - - 0x018058 0C:8048: A0 0F     LDY #con_prg_bank + $8F
C - - - - - 0x01805A 0C:804A: 8C 01 80  STY $5115
C - - - - - 0x01805D 0C:804D: 8C FC 07  STY ram_prg_07_музыка
C - - - - - 0x018060 0C:8050: 4C 5E 80  JMP loc_805E
bra_8053:
; 5C+
C - - - - - 0x018068 0C:8058: AC FC 07  LDY ram_prg_07_музыка
C - - - - - 0x01806B 0C:805B: 8C 01 80  STY $5115
; bzk optimize, заменить JMP loc_805E на bra
; в целом цикл можно сделать попроще, типа сравнивать номер звука на байты из таблицы и постоянно увеличивать Y, начав например с 0D
; но возможно вообще этот цикл нахрен и не нужен
loc_805E:
C D 0 - - - 0x01806E 0C:805E: CA        DEX
C - - - - - 0x01806F 0C:805F: 10 A1     BPL bra_8002_loop
C - - - - - 0x018071 0C:8061: A2 05     LDX #$05
bra_8063_loop:
C - - - - - 0x018073 0C:8063: BC 00 07  LDY ram_звук,X
C - - - - - 0x018076 0C:8066: F0 4F     BEQ bra_80B7
C - - - - - 0x018078 0C:8068: C0 72     CPY #$72
C - - - - - 0x01807A 0C:806A: B0 4B     BCS bra_80B7
C - - - - - 0x01807C 0C:806C: C0 31     CPY #$31
C - - - - - 0x01807E 0C:806E: D0 3F     BNE bra_80AF
C - - - - - 0x018080 0C:8070: A9 19     LDA #$19
C - - - - - 0x018082 0C:8072: 8D DF 07  STA ram_07DF
C - - - - - 0x018085 0C:8075: 8D CF 07  STA ram_07CF
C - - - - - 0x018088 0C:8078: 8D D1 07  STA ram_07D1
C - - - - - 0x01808B 0C:807B: 8D D2 07  STA ram_07D2
C - - - - - 0x01808E 0C:807E: 8D D3 07  STA ram_07D3
C - - - - - 0x018091 0C:8081: 8D D5 07  STA ram_07D5
C - - - - - 0x018094 0C:8084: 8D D6 07  STA ram_07D6
C - - - - - 0x018097 0C:8087: 8D D7 07  STA ram_07D7
C - - - - - 0x01809A 0C:808A: 8D D9 07  STA ram_07D9
C - - - - - 0x01809D 0C:808D: 8D DA 07  STA ram_07DA
C - - - - - 0x0180A0 0C:8090: 8D DB 07  STA ram_07DB
C - - - - - 0x0180A3 0C:8093: 8D DD 07  STA ram_07DD
C - - - - - 0x0180A6 0C:8096: 8D DE 07  STA ram_07DE
C - - - - - 0x0180A9 0C:8099: A9 0A     LDA #$0A
C - - - - - 0x0180AB 0C:809B: 8D D0 07  STA ram_07D0
C - - - - - 0x0180AE 0C:809E: 8D D4 07  STA ram_07D4
C - - - - - 0x0180B1 0C:80A1: 8D D8 07  STA ram_07D8
C - - - - - 0x0180B4 0C:80A4: 8D DC 07  STA ram_07DC
C - - - - - 0x0180B7 0C:80A7: A9 00     LDA #$00
C - - - - - 0x0180B9 0C:80A9: 9D 00 07  STA ram_звук,X
C - - - - - 0x0180BC 0C:80AC: 4C B7 80  JMP loc_80B7
bra_80AF:
C - - - - - 0x0180BF 0C:80AF: 20 49 83  JSR sub_8349_прочитать_поинтеры_звука
C - - - - - 0x0180C2 0C:80B2: A9 00     LDA #$00
C - - - - - 0x0180C4 0C:80B4: 9D 00 07  STA ram_звук,X
bra_80B7:
loc_80B7:
C D 0 - - - 0x0180C7 0C:80B7: CA        DEX
C - - - - - 0x0180C8 0C:80B8: 10 A9     BPL bra_8063_loop
C - - - - - 0x0180CA 0C:80BA: A9 27     LDA #< ram_0727
C - - - - - 0x0180CC 0C:80BC: 85 F0     STA ram_00F0
C - - - - - 0x0180CE 0C:80BE: A9 07     LDA #> ram_0727
C - - - - - 0x0180D0 0C:80C0: 85 F1     STA ram_00F1
C - - - - - 0x0180D2 0C:80C2: A9 00     LDA #$00
C - - - - - 0x0180D4 0C:80C4: 85 F2     STA ram_00F2
C - - - - - 0x0180D6 0C:80C6: A0 08     LDY #$08
C - - - - - 0x0180D8 0C:80C8: 84 F3     STY ram_00F3
bra_80CA_loop:
C - - - - - 0x0180DA 0C:80CA: AD 06 07  LDA ram_0706
C - - - - - 0x0180DD 0C:80CD: 4A        LSR
C - - - - - 0x0180DE 0C:80CE: 90 02     BCC bra_80D2
C - - - - - 0x0180E0 0C:80D0: 09 80     ORA #$80
bra_80D2:
C - - - - - 0x0180E2 0C:80D2: 8D 06 07  STA ram_0706
C - - - - - 0x0180E5 0C:80D5: 90 35     BCC bra_810C
C - - - - - 0x0180E7 0C:80D7: A6 F2     LDX ram_00F2
C - - - - - 0x0180E9 0C:80D9: DE 07 07  DEC ram_0707,X
C - - - - - 0x0180EC 0C:80DC: D0 03     BNE bra_80E1
C - - - - - 0x0180EE 0C:80DE: 20 CB 83  JSR sub_83CB
bra_80E1:
C - - - - - 0x0180F1 0C:80E1: A6 F2     LDX ram_00F2
C - - - - - 0x0180F3 0C:80E3: DE 09 07  DEC ram_0709,X
C - - - - - 0x0180F6 0C:80E6: D0 21     BNE bra_8109
C - - - - - 0x0180F8 0C:80E8: A0 02     LDY #$02
C - - - - - 0x0180FA 0C:80EA: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0180FC 0C:80EC: 85 F6     STA ram_00F6
C - - - - - 0x0180FE 0C:80EE: C8        INY
C - - - - - 0x0180FF 0C:80EF: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018101 0C:80F1: 85 F7     STA ram_00F7
C - - - - - 0x018103 0C:80F3: C8        INY
C - - - - - 0x018104 0C:80F4: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018106 0C:80F6: 48        PHA
C - - - - - 0x018107 0C:80F7: 18        CLC
C - - - - - 0x018108 0C:80F8: 69 02     ADC #$02
C - - - - - 0x01810A 0C:80FA: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01810C 0C:80FC: 68        PLA
C - - - - - 0x01810D 0C:80FD: A8        TAY
C - - - - - 0x01810E 0C:80FE: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x018110 0C:8100: 9D 09 07  STA ram_0709,X
C - - - - - 0x018113 0C:8103: C8        INY
C - - - - - 0x018114 0C:8104: B1 F6     LDA (ram_00F6),Y
C - - - - - 0x018116 0C:8106: 9D 0A 07  STA ram_070A,X
bra_8109:
C - - - - - 0x018119 0C:8109: 20 DB 81  JSR sub_81DB
bra_810C:
C - - - - - 0x01811C 0C:810C: 18        CLC
C - - - - - 0x01811D 0C:810D: A9 10     LDA #$10
C - - - - - 0x01811F 0C:810F: 65 F0     ADC ram_00F0
C - - - - - 0x018121 0C:8111: 85 F0     STA ram_00F0
C - - - - - 0x018123 0C:8113: A9 04     LDA #$04
C - - - - - 0x018125 0C:8115: 65 F2     ADC ram_00F2
C - - - - - 0x018127 0C:8117: 85 F2     STA ram_00F2
C - - - - - 0x018129 0C:8119: C6 F3     DEC ram_00F3
C - - - - - 0x01812B 0C:811B: D0 AD     BNE bra_80CA_loop
C - - - - - 0x01812D 0C:811D: A9 27     LDA #< ram_0727
C - - - - - 0x01812F 0C:811F: 85 F0     STA ram_00F0
C - - - - - 0x018131 0C:8121: 85 FC     STA ram_00FC
C - - - - - 0x018133 0C:8123: A9 07     LDA #> ram_0727
C - - - - - 0x018135 0C:8125: 85 F1     STA ram_00F1
C - - - - - 0x018137 0C:8127: 85 FD     STA ram_00FD
C - - - - - 0x018139 0C:8129: A9 03     LDA #$03
C - - - - - 0x01813B 0C:812B: 85 F2     STA ram_00F2
C - - - - - 0x01813D 0C:812D: A9 11     LDA #$11
C - - - - - 0x01813F 0C:812F: 85 F3     STA ram_00F3
bra_8131_loop:
C - - - - - 0x018141 0C:8131: AD 06 07  LDA ram_0706
C - - - - - 0x018144 0C:8134: 25 F3     AND ram_00F3
C - - - - - 0x018146 0C:8136: F0 14     BEQ bra_814C
C - - - - - 0x018148 0C:8138: 29 0F     AND #$0F
C - - - - - 0x01814A 0C:813A: D0 0D     BNE bra_8149
C - - - - - 0x01814C 0C:813C: 18        CLC
C - - - - - 0x01814D 0C:813D: A9 40     LDA #< $0040
C - - - - - 0x01814F 0C:813F: 65 F0     ADC ram_00F0
C - - - - - 0x018151 0C:8141: 85 F0     STA ram_00F0
C - - - - - 0x018153 0C:8143: A9 00     LDA #> $0040
C - - - - - 0x018155 0C:8145: 65 F1     ADC ram_00F1
C - - - - - 0x018157 0C:8147: 85 F1     STA ram_00F1
bra_8149:
C - - - - - 0x018159 0C:8149: 20 6E 81  JSR sub_816E
bra_814C:
C - - - - - 0x01815C 0C:814C: 18        CLC
C - - - - - 0x01815D 0C:814D: A9 10     LDA #< $0010
C - - - - - 0x01815F 0C:814F: 65 FC     ADC ram_00FC
C - - - - - 0x018161 0C:8151: 85 FC     STA ram_00FC
C - - - - - 0x018163 0C:8153: 85 F0     STA ram_00F0
C - - - - - 0x018165 0C:8155: A9 00     LDA #> $0010
C - - - - - 0x018167 0C:8157: 65 FD     ADC ram_00FD
C - - - - - 0x018169 0C:8159: 85 FD     STA ram_00FD
C - - - - - 0x01816B 0C:815B: 85 F1     STA ram_00F1
C - - - - - 0x01816D 0C:815D: 06 F3     ASL ram_00F3
C - - - - - 0x01816F 0C:815F: C6 F2     DEC ram_00F2
C - - - - - 0x018171 0C:8161: 10 CE     BPL bra_8131_loop
C - - - - - 0x018173 0C:8163: AD E9 07  LDA ram_07E9
C - - - - - 0x018176 0C:8166: F0 05     BEQ bra_816D_RTS
- - - - - - 0x018178 0C:8168: A9 00     LDA #$00
- - - - - - 0x01817A 0C:816A: 8D 15 40  STA $4015
bra_816D_RTS:
C - - - - - 0x01817D 0C:816D: 60        RTS



sub_816E:
C - - - - - 0x01817E 0C:816E: A9 03     LDA #$03
C - - - - - 0x018180 0C:8170: 45 F2     EOR ram_00F2
C - - - - - 0x018182 0C:8172: 0A        ASL
C - - - - - 0x018183 0C:8173: 0A        ASL
C - - - - - 0x018184 0C:8174: AA        TAX
C - - - - - 0x018185 0C:8175: A0 06     LDY #$06
C - - - - - 0x018187 0C:8177: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018189 0C:8179: 48        PHA
C - - - - - 0x01818A 0C:817A: A5 F2     LDA ram_00F2
C - - - - - 0x01818C 0C:817C: 85 FB     STA ram_00FB
C - - - - - 0x01818E 0C:817E: C9 01     CMP #$01
C - - - - - 0x018190 0C:8180: D0 07     BNE bra_8189
C - - - - - 0x018192 0C:8182: 68        PLA
C - - - - - 0x018193 0C:8183: 29 0F     AND #$0F
C - - - - - 0x018195 0C:8185: 09 80     ORA #$80
C - - - - - 0x018197 0C:8187: D0 1B     BNE bra_81A4    ; jmp
bra_8189:
C - - - - - 0x018199 0C:8189: 68        PLA
C - - - - - 0x01819A 0C:818A: 09 30     ORA #$30
C - - - - - 0x01819C 0C:818C: 9D 00 40  STA $4000,X
C - - - - - 0x01819F 0C:818F: A9 10     LDA #$10
C - - - - - 0x0181A1 0C:8191: A0 05     LDY #$05
C - - - - - 0x0181A3 0C:8193: 31 F0     AND (ram_00F0),Y
C - - - - - 0x0181A5 0C:8195: D0 10     BNE bra_81A7
C - - - - - 0x0181A7 0C:8197: A9 08     LDA #$08
C - - - - - 0x0181A9 0C:8199: A4 FB     LDY ram_00FB
C - - - - - 0x0181AB 0C:819B: 99 E4 07  STA ram_07E4,Y
C - - - - - 0x0181AE 0C:819E: 9D 01 40  STA $4001,X
C - - - - - 0x0181B1 0C:81A1: 4C B1 81  JMP loc_81B1
bra_81A4:
C - - - - - 0x0181B4 0C:81A4: 9D 00 40  STA $4000,X
bra_81A7:
C - - - - - 0x0181B7 0C:81A7: A0 08     LDY #$08
C - - - - - 0x0181B9 0C:81A9: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0181BB 0C:81AB: 10 2D     BPL bra_81DA_RTS
C - - - - - 0x0181BD 0C:81AD: 29 7F     AND #$7F
C - - - - - 0x0181BF 0C:81AF: 91 F0     STA (ram_00F0),Y
loc_81B1:
C D 0 - - - 0x0181C1 0C:81B1: A0 07     LDY #$07
C - - - - - 0x0181C3 0C:81B3: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0181C5 0C:81B5: 9D 02 40  STA $4002,X
C - - - - - 0x0181C8 0C:81B8: C8        INY
C - - - - - 0x0181C9 0C:81B9: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0181CB 0C:81BB: 09 18     ORA #$18
C - - - - - 0x0181CD 0C:81BD: A4 FB     LDY ram_00FB
C - - - - - 0x0181CF 0C:81BF: F0 09     BEQ bra_81CA
C - - - - - 0x0181D1 0C:81C1: C0 01     CPY #$01
C - - - - - 0x0181D3 0C:81C3: F0 05     BEQ bra_81CA
C - - - - - 0x0181D5 0C:81C5: D9 E0 07  CMP ram_07E0,Y
C - - - - - 0x0181D8 0C:81C8: F0 10     BEQ bra_81DA_RTS
bra_81CA:
C - - - - - 0x0181DA 0C:81CA: 9D 03 40  STA $4003,X
C - - - - - 0x0181DD 0C:81CD: 99 E0 07  STA ram_07E0,Y
C - - - - - 0x0181E0 0C:81D0: B9 E4 07  LDA ram_07E4,Y
C - - - - - 0x0181E3 0C:81D3: D0 05     BNE bra_81DA_RTS
C - - - - - 0x0181E5 0C:81D5: A9 00     LDA #$00
C - - - - - 0x0181E7 0C:81D7: 99 E0 07  STA ram_07E0,Y
bra_81DA_RTS:
C - - - - - 0x0181EA 0C:81DA: 60        RTS



sub_81DB:
C - - - - - 0x0181EB 0C:81DB: A0 05     LDY #$05
C - - - - - 0x0181ED 0C:81DD: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0181EF 0C:81DF: AA        TAX
C - - - - - 0x0181F0 0C:81E0: 29 F0     AND #$F0
C - - - - - 0x0181F2 0C:81E2: 85 F6     STA ram_00F6
C - - - - - 0x0181F4 0C:81E4: 29 20     AND #$20
C - - - - - 0x0181F6 0C:81E6: F0 06     BEQ bra_81EE
C - - - - - 0x0181F8 0C:81E8: A9 0F     LDA #$0F
C - - - - - 0x0181FA 0C:81EA: 85 F7     STA ram_00F7
C - - - - - 0x0181FC 0C:81EC: D0 45     BNE bra_8233    ; jmp
bra_81EE:
C - - - - - 0x0181FE 0C:81EE: 8A        TXA
C - - - - - 0x0181FF 0C:81EF: 29 0F     AND #$0F
C - - - - - 0x018201 0C:81F1: 85 F7     STA ram_00F7
C - - - - - 0x018203 0C:81F3: A4 F3     LDY ram_00F3
C - - - - - 0x018205 0C:81F5: 88        DEY
C - - - - - 0x018206 0C:81F6: BE CF 07  LDX ram_07CF,Y
C - - - - - 0x018209 0C:81F9: F0 38     BEQ bra_8233
C - - - - - 0x01820B 0C:81FB: CA        DEX
C - - - - - 0x01820C 0C:81FC: 8A        TXA
C - - - - - 0x01820D 0C:81FD: 99 CF 07  STA ram_07CF,Y
C - - - - - 0x018210 0C:8200: D0 31     BNE bra_8233
C - - - - - 0x018212 0C:8202: A5 F7     LDA ram_00F7
C - - - - - 0x018214 0C:8204: 18        CLC
C - - - - - 0x018215 0C:8205: 69 01     ADC #$01
C - - - - - 0x018217 0C:8207: C9 0F     CMP #$0F
C - - - - - 0x018219 0C:8209: 85 F7     STA ram_00F7
C - - - - - 0x01821B 0C:820B: D0 0A     BNE bra_8217
C - - - - - 0x01821D 0C:820D: A9 00     LDA #$00
C - - - - - 0x01821F 0C:820F: 99 D7 07  STA ram_07D7,Y
C - - - - - 0x018222 0C:8212: A9 80     LDA #$80
C - - - - - 0x018224 0C:8214: 8D E8 07  STA ram_07E8
bra_8217:
C - - - - - 0x018227 0C:8217: A5 F7     LDA ram_00F7
C - - - - - 0x018229 0C:8219: 05 F6     ORA ram_00F6
C - - - - - 0x01822B 0C:821B: AA        TAX
C - - - - - 0x01822C 0C:821C: A0 05     LDY #$05
C - - - - - 0x01822E 0C:821E: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018230 0C:8220: 8A        TXA
C - - - - - 0x018231 0C:8221: 29 0F     AND #$0F
C - - - - - 0x018233 0C:8223: 85 F7     STA ram_00F7
C - - - - - 0x018235 0C:8225: A4 F3     LDY ram_00F3
C - - - - - 0x018237 0C:8227: 88        DEY
C - - - - - 0x018238 0C:8228: BE CF 07  LDX ram_07CF,Y
C - - - - - 0x01823B 0C:822B: D0 06     BNE bra_8233
C - - - - - 0x01823D 0C:822D: B9 D7 07  LDA ram_07D7,Y
C - - - - - 0x018240 0C:8230: 99 CF 07  STA ram_07CF,Y
bra_8233:
C - - - - - 0x018243 0C:8233: A6 F2     LDX ram_00F2
C - - - - - 0x018245 0C:8235: BD 0A 07  LDA ram_070A,X
C - - - - - 0x018248 0C:8238: 38        SEC
C - - - - - 0x018249 0C:8239: E5 F7     SBC ram_00F7
C - - - - - 0x01824B 0C:823B: 10 02     BPL bra_823F
C - - - - - 0x01824D 0C:823D: A9 00     LDA #$00
bra_823F:
C - - - - - 0x01824F 0C:823F: 05 F6     ORA ram_00F6
C - - - - - 0x018251 0C:8241: A0 06     LDY #$06
C - - - - - 0x018253 0C:8243: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018255 0C:8245: A6 F3     LDX ram_00F3
C - - - - - 0x018257 0C:8247: CA        DEX
C - - - - - 0x018258 0C:8248: BD AF 07  LDA ram_07AF,X
C - - - - - 0x01825B 0C:824B: C9 01     CMP #$01
C - - - - - 0x01825D 0C:824D: F0 08     BEQ bra_8257
C - - - - - 0x01825F 0C:824F: C9 02     CMP #$02
C - - - - - 0x018261 0C:8251: D0 03     BNE bra_8256_RTS
C - - - - - 0x018263 0C:8253: 4C D2 82  JMP loc_82D2
bra_8256_RTS:
C - - - - - 0x018266 0C:8256: 60        RTS
bra_8257:
C - - - - - 0x018267 0C:8257: BD C7 07  LDA ram_07C7,X
C - - - - - 0x01826A 0C:825A: 0A        ASL
C - - - - - 0x01826B 0C:825B: A8        TAY
C - - - - - 0x01826C 0C:825C: B9 69 82  LDA tbl_8269,Y
C - - - - - 0x01826F 0C:825F: 85 F9     STA ram_00F9
C - - - - - 0x018271 0C:8261: B9 6A 82  LDA tbl_8269 + $01,Y
C - - - - - 0x018274 0C:8264: 85 FA     STA ram_00FA
C - - - - - 0x018276 0C:8266: 6C F9 00  JMP (ram_00F9)



tbl_8269:
- D 0 - - - 0x018279 0C:8269: 97 82     .word ofs_011_8297_00
- D 0 - - - 0x01827B 0C:826B: 97 82     .word ofs_011_8297_01
- D 0 - - - 0x01827D 0C:826D: B4 82     .word ofs_011_82B4_02
- D 0 - - - 0x01827F 0C:826F: C9 82     .word ofs_011_82C9_03
- D 0 - - - 0x018281 0C:8271: B4 82     .word ofs_011_82B4_04
- D 0 - - - 0x018283 0C:8273: 97 82     .word ofs_011_8297_05
- D 0 - - - 0x018285 0C:8275: 97 82     .word ofs_011_8297_06
- D 0 - - - 0x018287 0C:8277: 7D 82     .word ofs_011_827D_07
- D 0 - - - 0x018289 0C:8279: 92 82     .word ofs_011_8292_08
- D 0 - - - 0x01828B 0C:827B: 7D 82     .word ofs_011_827D_09



ofs_011_827D_07:
ofs_011_827D_09:
C - - J - - 0x01828D 0C:827D: A9 01     LDA #$01
loc_827F:
C D 0 - - - 0x01828F 0C:827F: 18        CLC
C - - - - - 0x018290 0C:8280: 7D B7 07  ADC ram_07B7,X
C - - - - - 0x018293 0C:8283: A0 07     LDY #$07
C - - - - - 0x018295 0C:8285: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018297 0C:8287: BD BF 07  LDA ram_07BF,X
C - - - - - 0x01829A 0C:828A: 69 00     ADC #$00
C - - - - - 0x01829C 0C:828C: C8        INY
C - - - - - 0x01829D 0C:828D: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01829F 0C:828F: 4C A4 82  JMP loc_82A4



ofs_011_8292_08:
C - - J - - 0x0182A2 0C:8292: A9 02     LDA #$02
C - - - - - 0x0182A4 0C:8294: 4C 7F 82  JMP loc_827F



ofs_011_8297_00:
ofs_011_8297_01:
ofs_011_8297_05:
ofs_011_8297_06:
C - - J - - 0x0182A7 0C:8297: BD B7 07  LDA ram_07B7,X
C - - - - - 0x0182AA 0C:829A: A0 07     LDY #$07
C - - - - - 0x0182AC 0C:829C: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0182AE 0C:829E: BD BF 07  LDA ram_07BF,X
C - - - - - 0x0182B1 0C:82A1: C8        INY
C - - - - - 0x0182B2 0C:82A2: 91 F0     STA (ram_00F0),Y
loc_82A4:
C D 0 - - - 0x0182B4 0C:82A4: BD C7 07  LDA ram_07C7,X
C - - - - - 0x0182B7 0C:82A7: 18        CLC
C - - - - - 0x0182B8 0C:82A8: 69 01     ADC #$01
C - - - - - 0x0182BA 0C:82AA: C9 0A     CMP #$0A
C - - - - - 0x0182BC 0C:82AC: D0 02     BNE bra_82B0
C - - - - - 0x0182BE 0C:82AE: A9 00     LDA #$00
bra_82B0:
C - - - - - 0x0182C0 0C:82B0: 9D C7 07  STA ram_07C7,X
C - - - - - 0x0182C3 0C:82B3: 60        RTS



ofs_011_82B4_02:
ofs_011_82B4_04:
C - - J - - 0x0182C4 0C:82B4: BD B7 07  LDA ram_07B7,X
C - - - - - 0x0182C7 0C:82B7: 38        SEC
C - - - - - 0x0182C8 0C:82B8: E9 01     SBC #$01    ; 0001
loc_82BA:
C D 0 - - - 0x0182CA 0C:82BA: A0 07     LDY #$07
C - - - - - 0x0182CC 0C:82BC: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0182CE 0C:82BE: BD BF 07  LDA ram_07BF,X
C - - - - - 0x0182D1 0C:82C1: E9 00     SBC #$00
C - - - - - 0x0182D3 0C:82C3: C8        INY
C - - - - - 0x0182D4 0C:82C4: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0182D6 0C:82C6: 4C A4 82  JMP loc_82A4



ofs_011_82C9_03:
C - - J - - 0x0182D9 0C:82C9: BD B7 07  LDA ram_07B7,X
C - - - - - 0x0182DC 0C:82CC: 38        SEC
C - - - - - 0x0182DD 0C:82CD: E9 02     SBC #$02    ; 0002
C - - - - - 0x0182DF 0C:82CF: 4C BA 82  JMP loc_82BA
loc_82D2:
C D 0 - - - 0x0182E2 0C:82D2: BD C7 07  LDA ram_07C7,X
C - - - - - 0x0182E5 0C:82D5: 0A        ASL
C - - - - - 0x0182E6 0C:82D6: A8        TAY
C - - - - - 0x0182E7 0C:82D7: B9 E4 82  LDA tbl_82E4,Y
C - - - - - 0x0182EA 0C:82DA: 85 F9     STA ram_00F9
C - - - - - 0x0182EC 0C:82DC: B9 E5 82  LDA tbl_82E4 + $01,Y
C - - - - - 0x0182EF 0C:82DF: 85 FA     STA ram_00FA
C - - - - - 0x0182F1 0C:82E1: 6C F9 00  JMP (ram_00F9)



tbl_82E4:
- D 0 - - - 0x0182F4 0C:82E4: 0E 83     .word ofs_012_830E_00
- D 0 - - - 0x0182F6 0C:82E6: 2B 83     .word ofs_012_832B_01
- D 0 - - - 0x0182F8 0C:82E8: 40 83     .word ofs_012_8340_02
- D 0 - - - 0x0182FA 0C:82EA: 2B 83     .word ofs_012_832B_03
- D 0 - - - 0x0182FC 0C:82EC: 0E 83     .word ofs_012_830E_04
- D 0 - - - 0x0182FE 0C:82EE: F4 82     .word ofs_012_82F4_05
- D 0 - - - 0x018300 0C:82F0: 09 83     .word ofs_012_8309_06
- D 0 - - - 0x018302 0C:82F2: F4 82     .word ofs_012_82F4_07



ofs_012_82F4_05:
ofs_012_82F4_07:
C - - J - - 0x018304 0C:82F4: A9 03     LDA #$03
loc_82F6:
C D 0 - - - 0x018306 0C:82F6: 18        CLC
C - - - - - 0x018307 0C:82F7: 7D B7 07  ADC ram_07B7,X
C - - - - - 0x01830A 0C:82FA: A0 07     LDY #$07
C - - - - - 0x01830C 0C:82FC: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01830E 0C:82FE: BD BF 07  LDA ram_07BF,X
C - - - - - 0x018311 0C:8301: 69 00     ADC #$00
C - - - - - 0x018313 0C:8303: C8        INY
C - - - - - 0x018314 0C:8304: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018316 0C:8306: 4C 1B 83  JMP loc_831B



ofs_012_8309_06:
C - - J - - 0x018319 0C:8309: A9 06     LDA #$06
C - - - - - 0x01831B 0C:830B: 4C F6 82  JMP loc_82F6



ofs_012_830E_00:
ofs_012_830E_04:
C - - J - - 0x01831E 0C:830E: BD B7 07  LDA ram_07B7,X
C - - - - - 0x018321 0C:8311: A0 07     LDY #$07
C - - - - - 0x018323 0C:8313: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018325 0C:8315: BD BF 07  LDA ram_07BF,X
C - - - - - 0x018328 0C:8318: C8        INY
C - - - - - 0x018329 0C:8319: 91 F0     STA (ram_00F0),Y
loc_831B:
C D 0 - - - 0x01832B 0C:831B: BD C7 07  LDA ram_07C7,X
C - - - - - 0x01832E 0C:831E: 18        CLC
C - - - - - 0x01832F 0C:831F: 69 01     ADC #$01
C - - - - - 0x018331 0C:8321: C9 08     CMP #$08
C - - - - - 0x018333 0C:8323: D0 02     BNE bra_8327
C - - - - - 0x018335 0C:8325: A9 00     LDA #$00
bra_8327:
C - - - - - 0x018337 0C:8327: 9D C7 07  STA ram_07C7,X
C - - - - - 0x01833A 0C:832A: 60        RTS



ofs_012_832B_01:
ofs_012_832B_03:
C - - J - - 0x01833B 0C:832B: BD B7 07  LDA ram_07B7,X
C - - - - - 0x01833E 0C:832E: 38        SEC
C - - - - - 0x01833F 0C:832F: E9 03     SBC #$03    ; 0003
loc_8331:
C D 0 - - - 0x018341 0C:8331: A0 07     LDY #$07
C - - - - - 0x018343 0C:8333: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018345 0C:8335: BD BF 07  LDA ram_07BF,X
C - - - - - 0x018348 0C:8338: E9 00     SBC #$00
C - - - - - 0x01834A 0C:833A: C8        INY
C - - - - - 0x01834B 0C:833B: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01834D 0C:833D: 4C 1B 83  JMP loc_831B



ofs_012_8340_02:
C - - J - - 0x018350 0C:8340: BD B7 07  LDA ram_07B7,X
C - - - - - 0x018353 0C:8343: 38        SEC
C - - - - - 0x018354 0C:8344: E9 06     SBC #$06    ; 0006
C - - - - - 0x018356 0C:8346: 4C 31 83  JMP loc_8331



sub_8349_прочитать_поинтеры_звука:
C - - - - - 0x018359 0C:8349: 86 F5     STX ram_00F5
C - - - - - 0x01835B 0C:834B: A9 00     LDA #$00
C - - - - - 0x01835D 0C:834D: 9D 00 07  STA ram_звук,X
C - - - - - 0x018360 0C:8350: 88        DEY
C - - - - - 0x018361 0C:8351: 98        TYA
C - - - - - 0x018362 0C:8352: 0A        ASL
C - - - - - 0x018363 0C:8353: A8        TAY
C - - - - - 0x018364 0C:8354: B9 DA 8B  LDA tbl_8BDA_таблица_звуков,Y
C - - - - - 0x018367 0C:8357: 85 F0     STA ram_00F0
C - - - - - 0x018369 0C:8359: B9 DB 8B  LDA tbl_8BDA_таблица_звуков + $01,Y
C - - - - - 0x01836C 0C:835C: 85 F1     STA ram_00F1
C - - - - - 0x01836E 0C:835E: A0 00     LDY #$00
bra_8360_продолжить_чтение_поинтеров_звука:
C - - - - - 0x018370 0C:8360: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018372 0C:8362: 10 08     BPL bra_836C_прочитать_поинтеры_звука
; в противном случае полностью отключить DMC канал
C - - - - - 0x018374 0C:8364: A2 0F     LDX #$0F
C - - - - - 0x018376 0C:8366: 8E 15 40  STX $4015
C - - - - - 0x018379 0C:8369: A6 F5     LDX ram_00F5
C - - - - - 0x01837B 0C:836B: 60        RTS
bra_836C_прочитать_поинтеры_звука:
C - - - - - 0x01837C 0C:836C: 85 F4     STA ram_00F4
C - - - - - 0x01837E 0C:836E: A9 08     LDA #$08
C - - - - - 0x018380 0C:8370: 18        CLC
C - - - - - 0x018381 0C:8371: E5 F4     SBC ram_00F4
C - - - - - 0x018383 0C:8373: AA        TAX
C - - - - - 0x018384 0C:8374: A9 00     LDA #$00
C - - - - - 0x018386 0C:8376: 9D A7 07  STA ram_07A7,X
C - - - - - 0x018389 0C:8379: 9D AF 07  STA ram_07AF,X
C - - - - - 0x01838C 0C:837C: 8D E3 07  STA ram_07E3
C - - - - - 0x01838F 0C:837F: 8D E2 07  STA ram_07E2
C - - - - - 0x018392 0C:8382: 9D EA 07  STA ram_07EA,X
C - - - - - 0x018395 0C:8385: 9D CF 07  STA ram_07CF,X
C - - - - - 0x018398 0C:8388: 9D D7 07  STA ram_07D7,X
C - - - - - 0x01839B 0C:838B: 8D DF 07  STA ram_07DF
C - - - - - 0x01839E 0C:838E: 9D F4 07  STA ram_07F4,X
C - - - - - 0x0183A1 0C:8391: 8D E8 07  STA ram_07E8
C - - - - - 0x0183A4 0C:8394: A5 F4     LDA ram_00F4
C - - - - - 0x0183A6 0C:8396: 0A        ASL
C - - - - - 0x0183A7 0C:8397: 0A        ASL
C - - - - - 0x0183A8 0C:8398: 0A        ASL
C - - - - - 0x0183A9 0C:8399: 0A        ASL
C - - - - - 0x0183AA 0C:839A: AA        TAX
C - - - - - 0x0183AB 0C:839B: C8        INY
C - - - - - 0x0183AC 0C:839C: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0183AE 0C:839E: 9D 27 07  STA ram_0727,X
C - - - - - 0x0183B1 0C:83A1: C8        INY
C - - - - - 0x0183B2 0C:83A2: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0183B4 0C:83A4: 9D 28 07  STA ram_0728,X
C - - - - - 0x0183B7 0C:83A7: A9 00     LDA #$00
C - - - - - 0x0183B9 0C:83A9: 9D 2C 07  STA ram_072C,X
C - - - - - 0x0183BC 0C:83AC: A9 0F     LDA #$0F
C - - - - - 0x0183BE 0C:83AE: 9D 30 07  STA ram_0730,X
C - - - - - 0x0183C1 0C:83B1: A5 F4     LDA ram_00F4
C - - - - - 0x0183C3 0C:83B3: 0A        ASL
C - - - - - 0x0183C4 0C:83B4: 0A        ASL
C - - - - - 0x0183C5 0C:83B5: AA        TAX
C - - - - - 0x0183C6 0C:83B6: A9 01     LDA #$01
C - - - - - 0x0183C8 0C:83B8: 9D 07 07  STA ram_0707,X
C - - - - - 0x0183CB 0C:83BB: 4A        LSR
C - - - - - 0x0183CC 0C:83BC: A6 F4     LDX ram_00F4
bra_83BE_loop:
C - - - - - 0x0183CE 0C:83BE: 2A        ROL
C - - - - - 0x0183CF 0C:83BF: CA        DEX
C - - - - - 0x0183D0 0C:83C0: 10 FC     BPL bra_83BE_loop
C - - - - - 0x0183D2 0C:83C2: 0D 06 07  ORA ram_0706
C - - - - - 0x0183D5 0C:83C5: 8D 06 07  STA ram_0706
C - - - - - 0x0183D8 0C:83C8: C8        INY
C - - - - - 0x0183D9 0C:83C9: 10 95     BPL bra_8360_продолжить_чтение_поинтеров_звука    ; jmp?



sub_83CB:
C - - - - - 0x0183DB 0C:83CB: A9 CF     LDA #$CF
C - - - - - 0x0183DD 0C:83CD: A0 05     LDY #$05
C - - - - - 0x0183DF 0C:83CF: 31 F0     AND (ram_00F0),Y
C - - - - - 0x0183E1 0C:83D1: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0183E3 0C:83D3: A0 00     LDY #$00
C - - - - - 0x0183E5 0C:83D5: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0183E7 0C:83D7: 85 F4     STA ram_00F4
C - - - - - 0x0183E9 0C:83D9: C8        INY
C - - - - - 0x0183EA 0C:83DA: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0183EC 0C:83DC: 85 F5     STA ram_00F5
C - - - - - 0x0183EE 0C:83DE: 88        DEY
bra_83DF_loop:
C - - - - - 0x0183EF 0C:83DF: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0183F1 0C:83E1: 10 21     BPL bra_8404_00_7F
C - - - - - 0x0183F3 0C:83E3: C8        INY
C - - - - - 0x0183F4 0C:83E4: C9 E0     CMP #$E0
C - - - - - 0x0183F6 0C:83E6: 90 05     BCC bra_83ED_80_BF
C - - - - - 0x0183F8 0C:83E8: 20 C9 84  JSR sub_84C9_управляющие_байты_E0_FF
C - - - - - 0x0183FB 0C:83EB: 10 F2     BPL bra_83DF_loop
bra_83ED_80_BF:
C - - - - - 0x0183FD 0C:83ED: C9 B0     CMP #$B0
C - - - - - 0x0183FF 0C:83EF: 90 03     BCC bra_83F4_80_AF
; B0-BF
- - - - - - 0x018401 0C:83F1: C8        INY
- - - - - - 0x018402 0C:83F2: D0 EB     BNE bra_83DF_loop   ; jmp
bra_83F4_80_AF:
C - - - - - 0x018404 0C:83F4: 29 3F     AND #$3F
C - - - - - 0x018406 0C:83F6: AA        TAX
C - - - - - 0x018407 0C:83F7: BD 25 87  LDA tbl_8725,X
C - - - - - 0x01840A 0C:83FA: A6 F2     LDX ram_00F2
C - - - - - 0x01840C 0C:83FC: 9D 07 07  STA ram_0707,X
C - - - - - 0x01840F 0C:83FF: 9D 08 07  STA ram_0708,X
C - - - - - 0x018412 0C:8402: 10 DB     BPL bra_83DF_loop
bra_8404_00_7F:
C - - - - - 0x018414 0C:8404: C8        INY
C - - - - - 0x018415 0C:8405: 48        PHA
C - - - - - 0x018416 0C:8406: 98        TYA
C - - - - - 0x018417 0C:8407: A0 00     LDY #$00
C - - - - - 0x018419 0C:8409: 18        CLC
C - - - - - 0x01841A 0C:840A: 65 F4     ADC ram_00F4
C - - - - - 0x01841C 0C:840C: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01841E 0C:840E: C8        INY
C - - - - - 0x01841F 0C:840F: A9 00     LDA #$00
C - - - - - 0x018421 0C:8411: 65 F5     ADC ram_00F5
C - - - - - 0x018423 0C:8413: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018425 0C:8415: 68        PLA
C - - - - - 0x018426 0C:8416: A2 05     LDX #$05
C - - - - - 0x018428 0C:8418: E4 F3     CPX ram_00F3
C - - - - - 0x01842A 0C:841A: F0 06     BEQ bra_8422
C - - - - - 0x01842C 0C:841C: A2 01     LDX #$01
C - - - - - 0x01842E 0C:841E: E4 F3     CPX ram_00F3
C - - - - - 0x018430 0C:8420: 90 0C     BCC bra_842E
bra_8422:
C - - - - - 0x018432 0C:8422: C9 10     CMP #$10
C - - - - - 0x018434 0C:8424: F0 0F     BEQ bra_8435
C - - - - - 0x018436 0C:8426: 85 F4     STA ram_00F4
C - - - - - 0x018438 0C:8428: A9 00     LDA #$00
C - - - - - 0x01843A 0C:842A: 85 F5     STA ram_00F5
C - - - - - 0x01843C 0C:842C: F0 2E     BEQ bra_845C    ; jmp
bra_842E:
C - - - - - 0x01843E 0C:842E: AA        TAX
C - - - - - 0x01843F 0C:842F: 29 0F     AND #$0F
C - - - - - 0x018441 0C:8431: C9 0C     CMP #$0C
C - - - - - 0x018443 0C:8433: D0 0A     BNE bra_843F
bra_8435:
C - - - - - 0x018445 0C:8435: A0 05     LDY #$05
C - - - - - 0x018447 0C:8437: A9 20     LDA #$20
C - - - - - 0x018449 0C:8439: 11 F0     ORA (ram_00F0),Y
C - - - - - 0x01844B 0C:843B: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01844D 0C:843D: D0 67     BNE bra_84A6
bra_843F:
C - - - - - 0x01844F 0C:843F: 0A        ASL
C - - - - - 0x018450 0C:8440: A8        TAY
C - - - - - 0x018451 0C:8441: B9 0D 87  LDA tbl_870D,Y
C - - - - - 0x018454 0C:8444: 85 F4     STA ram_00F4
C - - - - - 0x018456 0C:8446: B9 0E 87  LDA tbl_870D + $01,Y
C - - - - - 0x018459 0C:8449: 85 F5     STA ram_00F5
C - - - - - 0x01845B 0C:844B: 8A        TXA
C - - - - - 0x01845C 0C:844C: 29 F0     AND #$F0
C - - - - - 0x01845E 0C:844E: 4A        LSR
C - - - - - 0x01845F 0C:844F: 4A        LSR
C - - - - - 0x018460 0C:8450: 4A        LSR
C - - - - - 0x018461 0C:8451: 4A        LSR
C - - - - - 0x018462 0C:8452: AA        TAX
C - - - - - 0x018463 0C:8453: F0 07     BEQ bra_845C
bra_8455_loop:
C - - - - - 0x018465 0C:8455: 46 F5     LSR ram_00F5
C - - - - - 0x018467 0C:8457: 66 F4     ROR ram_00F4
C - - - - - 0x018469 0C:8459: CA        DEX
C - - - - - 0x01846A 0C:845A: D0 F9     BNE bra_8455_loop
bra_845C:
C - - - - - 0x01846C 0C:845C: A5 F4     LDA ram_00F4
C - - - - - 0x01846E 0C:845E: A6 F3     LDX ram_00F3
C - - - - - 0x018470 0C:8460: CA        DEX
C - - - - - 0x018471 0C:8461: BC F4 07  LDY ram_07F4,X
C - - - - - 0x018474 0C:8464: F0 29     BEQ bra_848F
C - - - - - 0x018476 0C:8466: 38        SEC
C - - - - - 0x018477 0C:8467: FD A7 07  SBC ram_07A7,X
C - - - - - 0x01847A 0C:846A: 90 0C     BCC bra_8478
C - - - - - 0x01847C 0C:846C: A0 07     LDY #$07
C - - - - - 0x01847E 0C:846E: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018480 0C:8470: 9D B7 07  STA ram_07B7,X
C - - - - - 0x018483 0C:8473: A5 F5     LDA ram_00F5
C - - - - - 0x018485 0C:8475: 4C 84 84  JMP loc_8484
bra_8478:
C - - - - - 0x018488 0C:8478: A0 07     LDY #$07
C - - - - - 0x01848A 0C:847A: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01848C 0C:847C: 9D B7 07  STA ram_07B7,X
C - - - - - 0x01848F 0C:847F: A5 F5     LDA ram_00F5
C - - - - - 0x018491 0C:8481: 38        SEC
C - - - - - 0x018492 0C:8482: E9 01     SBC #$01
loc_8484:
C D 0 - - - 0x018494 0C:8484: 09 80     ORA #$80
C - - - - - 0x018496 0C:8486: C8        INY
C - - - - - 0x018497 0C:8487: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018499 0C:8489: 9D BF 07  STA ram_07BF,X
C - - - - - 0x01849C 0C:848C: 4C A6 84  JMP loc_84A6
bra_848F:
C - - - - - 0x01849F 0C:848F: 18        CLC
C - - - - - 0x0184A0 0C:8490: 7D A7 07  ADC ram_07A7,X
C - - - - - 0x0184A3 0C:8493: A0 07     LDY #$07
C - - - - - 0x0184A5 0C:8495: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0184A7 0C:8497: 9D B7 07  STA ram_07B7,X
C - - - - - 0x0184AA 0C:849A: C8        INY
C - - - - - 0x0184AB 0C:849B: A5 F5     LDA ram_00F5
C - - - - - 0x0184AD 0C:849D: 69 00     ADC #$00
C - - - - - 0x0184AF 0C:849F: 09 80     ORA #$80
C - - - - - 0x0184B1 0C:84A1: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0184B3 0C:84A3: 9D BF 07  STA ram_07BF,X
bra_84A6:
loc_84A6:
C D 0 - - - 0x0184B6 0C:84A6: A6 F3     LDX ram_00F3
C - - - - - 0x0184B8 0C:84A8: CA        DEX
C - - - - - 0x0184B9 0C:84A9: A9 00     LDA #$00
C - - - - - 0x0184BB 0C:84AB: 9D F4 07  STA ram_07F4,X
C - - - - - 0x0184BE 0C:84AE: BD EA 07  LDA ram_07EA,X
C - - - - - 0x0184C1 0C:84B1: D0 0D     BNE bra_84C0
C - - - - - 0x0184C3 0C:84B3: A6 F2     LDX ram_00F2
C - - - - - 0x0184C5 0C:84B5: A9 01     LDA #$01
C - - - - - 0x0184C7 0C:84B7: 9D 09 07  STA ram_0709,X
C - - - - - 0x0184CA 0C:84BA: A9 00     LDA #$00
C - - - - - 0x0184CC 0C:84BC: A0 04     LDY #$04
C - - - - - 0x0184CE 0C:84BE: 91 F0     STA (ram_00F0),Y
bra_84C0:
C - - - - - 0x0184D0 0C:84C0: A6 F2     LDX ram_00F2
C - - - - - 0x0184D2 0C:84C2: BD 08 07  LDA ram_0708,X
C - - - - - 0x0184D5 0C:84C5: 9D 07 07  STA ram_0707,X
C - - - - - 0x0184D8 0C:84C8: 60        RTS



sub_84C9_управляющие_байты_E0_FF:
C - - - - - 0x0184D9 0C:84C9: 29 1F     AND #$1F
C - - - - - 0x0184DB 0C:84CB: 0A        ASL
C - - - - - 0x0184DC 0C:84CC: AA        TAX
C - - - - - 0x0184DD 0C:84CD: BD DA 84  LDA tbl_84DA,X
C - - - - - 0x0184E0 0C:84D0: 85 F6     STA ram_00F6
C - - - - - 0x0184E2 0C:84D2: BD DB 84  LDA tbl_84DA + $01,X
C - - - - - 0x0184E5 0C:84D5: 85 F7     STA ram_00F7
C - - - - - 0x0184E7 0C:84D7: 6C F6 00  JMP (ram_00F6)



tbl_84DA:
- D 0 - - - 0x0184EA 0C:84DA: 44 85     .word ofs_013_8544_E0
- - - - - - 0x0184EC 0C:84DC: 07 87     .word ofs_013_8707_E1
- D 0 - - - 0x0184EE 0C:84DE: 41 86     .word ofs_013_8641_E2
- D 0 - - - 0x0184F0 0C:84E0: 5F 85     .word ofs_013_855F_E3_громкость
- D 0 - - - 0x0184F2 0C:84E2: 17 86     .word ofs_013_8617_E4
- D 0 - - - 0x0184F4 0C:84E4: 70 86     .word ofs_013_8670_E5
- - - - - - 0x0184F6 0C:84E6: 07 87     .word ofs_013_8707_E6
- - - - - - 0x0184F8 0C:84E8: 07 87     .word ofs_013_8707_E7
- D 0 - - - 0x0184FA 0C:84EA: 78 85     .word ofs_013_8578_E8_jmp
- D 0 - - - 0x0184FC 0C:84EC: 85 85     .word ofs_013_8585_E9_jsr
- D 0 - - - 0x0184FE 0C:84EE: AF 85     .word ofs_013_85AF_EA_rts
- D 0 - - - 0x018500 0C:84F0: C6 85     .word ofs_013_85C6_EB
- D 0 - - - 0x018502 0C:84F2: EF 85     .word ofs_013_85EF_EC
- D 0 - - - 0x018504 0C:84F4: 81 86     .word ofs_013_8681_ED
- - - - - - 0x018506 0C:84F6: 07 87     .word ofs_013_8707_EE
- D 0 - - - 0x018508 0C:84F8: 90 86     .word ofs_013_8690_EF
- - - - - - 0x01850A 0C:84FA: 09 87     .word ofs_013_8707_F0
- - - - - - 0x01850C 0C:84FC: 07 87     .word ofs_013_8707_F1
- D 0 - - - 0x01850E 0C:84FE: 1A 85     .word ofs_013_851A_F2_очистить_адреса_с_номерами_звуков
- D 0 - - - 0x018510 0C:8500: 3B 85     .word ofs_013_853B_F3
- D 0 - - - 0x018512 0C:8502: 32 85     .word ofs_013_8532_F4
- - - - - - 0x018514 0C:8504: 07 87     .word ofs_013_8707_F5
- - - - - - 0x018516 0C:8506: 07 87     .word ofs_013_8707_F6
- - - - - - 0x018518 0C:8508: 07 87     .word ofs_013_8707_F7
- - - - - - 0x01851A 0C:850A: 07 87     .word ofs_013_8707_F8
- D 0 - - - 0x01851C 0C:850C: 99 86     .word ofs_013_8699_F9
- D 0 - - - 0x01851E 0C:850E: B8 86     .word ofs_013_86B8_FA
- D 0 - - - 0x018520 0C:8510: D7 86     .word ofs_013_86D7_FB
- - - - - - 0x018522 0C:8512: 07 87     .word ofs_013_8707_FC
- - - - - - 0x018524 0C:8514: 07 87     .word ofs_013_8707_FD
- - - - - - 0x018526 0C:8516: F6 86     .word ofs_013_86F6_FE
- D 0 - - - 0x018528 0C:8518: 55 86     .word ofs_013_8655_FF_выход



ofs_013_851A_F2_очистить_адреса_с_номерами_звуков:
; bzk optimize, адрес 07F2 нигде не используется
C - - J - - 0x01852A 0C:851A: A9 00     LDA #$00
C - - - - - 0x01852C 0C:851C: 8D F2 07  STA ram_07F2
C - - - - - 0x01852F 0C:851F: 8D 00 07  STA ram_звук
C - - - - - 0x018532 0C:8522: 8D 01 07  STA ram_звук + $01
C - - - - - 0x018535 0C:8525: 8D 02 07  STA ram_звук + $02
C - - - - - 0x018538 0C:8528: 8D 03 07  STA ram_звук + $03
C - - - - - 0x01853B 0C:852B: 8D 04 07  STA ram_звук + $04
C - - - - - 0x01853E 0C:852E: 8D 05 07  STA ram_звук + $05
C - - - - - 0x018541 0C:8531: 60        RTS



ofs_013_8532_F4:
C - - J - - 0x018542 0C:8532: A6 F3     LDX ram_00F3
C - - - - - 0x018544 0C:8534: CA        DEX
C - - - - - 0x018545 0C:8535: A9 00     LDA #$00
C - - - - - 0x018547 0C:8537: 9D EA 07  STA ram_07EA,X
C - - - - - 0x01854A 0C:853A: 60        RTS



ofs_013_853B_F3:
C - - J - - 0x01854B 0C:853B: A6 F3     LDX ram_00F3
C - - - - - 0x01854D 0C:853D: CA        DEX
C - - - - - 0x01854E 0C:853E: A9 0F     LDA #$0F
C - - - - - 0x018550 0C:8540: 9D EA 07  STA ram_07EA,X
C - - - - - 0x018553 0C:8543: 60        RTS



ofs_013_8544_E0:
C - - J - - 0x018554 0C:8544: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018556 0C:8546: C8        INY
C - - - - - 0x018557 0C:8547: 84 F6     STY ram_00F6
C - - - - - 0x018559 0C:8549: 0A        ASL
C - - - - - 0x01855A 0C:854A: AA        TAX
C - - - - - 0x01855B 0C:854B: BD 54 87  LDA tbl_8754,X
C - - - - - 0x01855E 0C:854E: A8        TAY
C - - - - - 0x01855F 0C:854F: BD 55 87  LDA tbl_8754 + $01,X
C - - - - - 0x018562 0C:8552: AA        TAX
C - - - - - 0x018563 0C:8553: 98        TYA
C - - - - - 0x018564 0C:8554: A0 02     LDY #$02
C - - - - - 0x018566 0C:8556: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018568 0C:8558: C8        INY
C - - - - - 0x018569 0C:8559: 8A        TXA
C - - - - - 0x01856A 0C:855A: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01856C 0C:855C: A4 F6     LDY ram_00F6
C - - - - - 0x01856E 0C:855E: 60        RTS



ofs_013_855F_E3_громкость:
C - - J - - 0x01856F 0C:855F: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018571 0C:8561: C8        INY
C - - - - - 0x018572 0C:8562: 84 F6     STY ram_00F6
C - - - - - 0x018574 0C:8564: AC DF 07  LDY ram_07DF
C - - - - - 0x018577 0C:8567: D0 0C     BNE bra_8575
C - - - - - 0x018579 0C:8569: 85 F7     STA ram_00F7
C - - - - - 0x01857B 0C:856B: A9 F0     LDA #$F0
C - - - - - 0x01857D 0C:856D: A0 05     LDY #$05
C - - - - - 0x01857F 0C:856F: 31 F0     AND (ram_00F0),Y
C - - - - - 0x018581 0C:8571: 05 F7     ORA ram_00F7
C - - - - - 0x018583 0C:8573: 91 F0     STA (ram_00F0),Y
bra_8575:
C - - - - - 0x018585 0C:8575: A4 F6     LDY ram_00F6
C - - - - - 0x018587 0C:8577: 60        RTS



ofs_013_8578_E8_jmp:
; используется для циклов, когда нужно бесконечно повторять какой-то участок для музыки
C - - J - - 0x018588 0C:8578: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x01858A 0C:857A: C8        INY
C - - - - - 0x01858B 0C:857B: AA        TAX
C - - - - - 0x01858C 0C:857C: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x01858E 0C:857E: 86 F4     STX ram_00F4
C - - - - - 0x018590 0C:8580: 85 F5     STA ram_00F5
C - - - - - 0x018592 0C:8582: A0 00     LDY #$00
C - - - - - 0x018594 0C:8584: 60        RTS



ofs_013_8585_E9_jsr:
C - - J - - 0x018595 0C:8585: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018597 0C:8587: C8        INY
C - - - - - 0x018598 0C:8588: AA        TAX
C - - - - - 0x018599 0C:8589: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x01859B 0C:858B: C8        INY
C - - - - - 0x01859C 0C:858C: 48        PHA
C - - - - - 0x01859D 0C:858D: 98        TYA
C - - - - - 0x01859E 0C:858E: 48        PHA
C - - - - - 0x01859F 0C:858F: A0 09     LDY #$09
C - - - - - 0x0185A1 0C:8591: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0185A3 0C:8593: A8        TAY
C - - - - - 0x0185A4 0C:8594: 68        PLA
C - - - - - 0x0185A5 0C:8595: 18        CLC
C - - - - - 0x0185A6 0C:8596: 65 F4     ADC ram_00F4
C - - - - - 0x0185A8 0C:8598: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185AA 0C:859A: 88        DEY
C - - - - - 0x0185AB 0C:859B: A9 00     LDA #$00
C - - - - - 0x0185AD 0C:859D: 65 F5     ADC ram_00F5
C - - - - - 0x0185AF 0C:859F: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185B1 0C:85A1: 88        DEY
C - - - - - 0x0185B2 0C:85A2: 98        TYA
C - - - - - 0x0185B3 0C:85A3: A0 09     LDY #$09
C - - - - - 0x0185B5 0C:85A5: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185B7 0C:85A7: 86 F4     STX ram_00F4
C - - - - - 0x0185B9 0C:85A9: 68        PLA
C - - - - - 0x0185BA 0C:85AA: 85 F5     STA ram_00F5
C - - - - - 0x0185BC 0C:85AC: A0 00     LDY #$00
C - - - - - 0x0185BE 0C:85AE: 60        RTS



ofs_013_85AF_EA_rts:
C - - J - - 0x0185BF 0C:85AF: A0 09     LDY #$09
C - - - - - 0x0185C1 0C:85B1: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0185C3 0C:85B3: A8        TAY
C - - - - - 0x0185C4 0C:85B4: C8        INY
C - - - - - 0x0185C5 0C:85B5: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0185C7 0C:85B7: C8        INY
C - - - - - 0x0185C8 0C:85B8: 85 F5     STA ram_00F5
C - - - - - 0x0185CA 0C:85BA: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0185CC 0C:85BC: 85 F4     STA ram_00F4
C - - - - - 0x0185CE 0C:85BE: 98        TYA
C - - - - - 0x0185CF 0C:85BF: A0 09     LDY #$09
C - - - - - 0x0185D1 0C:85C1: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185D3 0C:85C3: A0 00     LDY #$00
C - - - - - 0x0185D5 0C:85C5: 60        RTS



ofs_013_85C6_EB:
C - - J - - 0x0185D6 0C:85C6: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0185D8 0C:85C8: C8        INY
C - - - - - 0x0185D9 0C:85C9: AA        TAX
C - - - - - 0x0185DA 0C:85CA: 98        TYA
C - - - - - 0x0185DB 0C:85CB: 48        PHA
C - - - - - 0x0185DC 0C:85CC: A0 09     LDY #$09
C - - - - - 0x0185DE 0C:85CE: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0185E0 0C:85D0: A8        TAY
C - - - - - 0x0185E1 0C:85D1: 68        PLA
C - - - - - 0x0185E2 0C:85D2: 18        CLC
C - - - - - 0x0185E3 0C:85D3: 65 F4     ADC ram_00F4
C - - - - - 0x0185E5 0C:85D5: 85 F4     STA ram_00F4
C - - - - - 0x0185E7 0C:85D7: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185E9 0C:85D9: 88        DEY
C - - - - - 0x0185EA 0C:85DA: A9 00     LDA #$00
C - - - - - 0x0185EC 0C:85DC: 65 F5     ADC ram_00F5
C - - - - - 0x0185EE 0C:85DE: 85 F5     STA ram_00F5
C - - - - - 0x0185F0 0C:85E0: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185F2 0C:85E2: 88        DEY
C - - - - - 0x0185F3 0C:85E3: 8A        TXA
C - - - - - 0x0185F4 0C:85E4: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185F6 0C:85E6: 88        DEY
C - - - - - 0x0185F7 0C:85E7: 98        TYA
C - - - - - 0x0185F8 0C:85E8: A0 09     LDY #$09
C - - - - - 0x0185FA 0C:85EA: 91 F0     STA (ram_00F0),Y
C - - - - - 0x0185FC 0C:85EC: A0 00     LDY #$00
C - - - - - 0x0185FE 0C:85EE: 60        RTS



ofs_013_85EF_EC:
C - - J - - 0x0185FF 0C:85EF: 84 F6     STY ram_00F6
C - - - - - 0x018601 0C:85F1: A0 09     LDY #$09
C - - - - - 0x018603 0C:85F3: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018605 0C:85F5: A8        TAY
C - - - - - 0x018606 0C:85F6: C8        INY
C - - - - - 0x018607 0C:85F7: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018609 0C:85F9: 38        SEC
C - - - - - 0x01860A 0C:85FA: E9 01     SBC #$01
C - - - - - 0x01860C 0C:85FC: 91 F0     STA (ram_00F0),Y
C - - - - - 0x01860E 0C:85FE: F0 0D     BEQ bra_860D
C - - - - - 0x018610 0C:8600: C8        INY
C - - - - - 0x018611 0C:8601: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018613 0C:8603: C8        INY
C - - - - - 0x018614 0C:8604: 85 F5     STA ram_00F5
C - - - - - 0x018616 0C:8606: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x018618 0C:8608: 85 F4     STA ram_00F4
C - - - - - 0x01861A 0C:860A: A0 00     LDY #$00
C - - - - - 0x01861C 0C:860C: 60        RTS
bra_860D:
C - - - - - 0x01861D 0C:860D: C8        INY
C - - - - - 0x01861E 0C:860E: C8        INY
C - - - - - 0x01861F 0C:860F: 98        TYA
C - - - - - 0x018620 0C:8610: A0 09     LDY #$09
C - - - - - 0x018622 0C:8612: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018624 0C:8614: A4 F6     LDY ram_00F6
C - - - - - 0x018626 0C:8616: 60        RTS



ofs_013_8617_E4:
C - - J - - 0x018627 0C:8617: 84 F6     STY ram_00F6
C - - - - - 0x018629 0C:8619: A0 05     LDY #$05
C - - - - - 0x01862B 0C:861B: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x01862D 0C:861D: 09 10     ORA #$10
C - - - - - 0x01862F 0C:861F: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018631 0C:8621: A6 F3     LDX ram_00F3
C - - - - - 0x018633 0C:8623: CA        DEX
C - - - - - 0x018634 0C:8624: 8A        TXA
C - - - - - 0x018635 0C:8625: 49 07     EOR #$07
C - - - - - 0x018637 0C:8627: 0A        ASL
C - - - - - 0x018638 0C:8628: 0A        ASL
C - - - - - 0x018639 0C:8629: 29 0F     AND #$0F
C - - - - - 0x01863B 0C:862B: AA        TAX
C - - - - - 0x01863C 0C:862C: A4 F6     LDY ram_00F6
C - - - - - 0x01863E 0C:862E: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018640 0C:8630: 9D 01 40  STA $4001,X
C - - - - - 0x018643 0C:8633: C8        INY
C - - - - - 0x018644 0C:8634: A6 F3     LDX ram_00F3
C - - - - - 0x018646 0C:8636: CA        DEX
C - - - - - 0x018647 0C:8637: 8A        TXA
C - - - - - 0x018648 0C:8638: 29 03     AND #$03
C - - - - - 0x01864A 0C:863A: AA        TAX
C - - - - - 0x01864B 0C:863B: A9 00     LDA #$00
C - - - - - 0x01864D 0C:863D: 9D E4 07  STA ram_07E4,X
C - - - - - 0x018650 0C:8640: 60        RTS



ofs_013_8641_E2:
C - - J - - 0x018651 0C:8641: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018653 0C:8643: C8        INY
C - - - - - 0x018654 0C:8644: 84 F6     STY ram_00F6
C - - - - - 0x018656 0C:8646: 85 F7     STA ram_00F7
C - - - - - 0x018658 0C:8648: A0 05     LDY #$05
C - - - - - 0x01865A 0C:864A: A9 3F     LDA #$3F
C - - - - - 0x01865C 0C:864C: 31 F0     AND (ram_00F0),Y
C - - - - - 0x01865E 0C:864E: 05 F7     ORA ram_00F7
C - - - - - 0x018660 0C:8650: 91 F0     STA (ram_00F0),Y
C - - - - - 0x018662 0C:8652: A4 F6     LDY ram_00F6
C - - - - - 0x018664 0C:8654: 60        RTS



ofs_013_8655_FF_выход:
C - - J - - 0x018665 0C:8655: A9 7F     LDA #$7F
C - - - - - 0x018667 0C:8657: 2D 06 07  AND ram_0706
C - - - - - 0x01866A 0C:865A: 8D 06 07  STA ram_0706
C - - - - - 0x01866D 0C:865D: A6 F3     LDX ram_00F3
C - - - - - 0x01866F 0C:865F: CA        DEX
C - - - - - 0x018670 0C:8660: 8A        TXA
C - - - - - 0x018671 0C:8661: 49 07     EOR #$07
C - - - - - 0x018673 0C:8663: 0A        ASL
C - - - - - 0x018674 0C:8664: 0A        ASL
C - - - - - 0x018675 0C:8665: 29 0F     AND #$0F
C - - - - - 0x018677 0C:8667: AA        TAX
C - - - - - 0x018678 0C:8668: A9 30     LDA #$30
C - - - - - 0x01867A 0C:866A: 9D 00 40  STA $4000,X
C - - - - - 0x01867D 0C:866D: 68        PLA
C - - - - - 0x01867E 0C:866E: 68        PLA
C - - - - - 0x01867F 0C:866F: 60        RTS



ofs_013_8670_E5:
C - - J - - 0x018680 0C:8670: A6 F3     LDX ram_00F3
C - - - - - 0x018682 0C:8672: CA        DEX
C - - - - - 0x018683 0C:8673: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018685 0C:8675: C8        INY
C - - - - - 0x018686 0C:8676: 0A        ASL
C - - - - - 0x018687 0C:8677: B0 03     BCS bra_867C
C - - - - - 0x018689 0C:8679: 9D F4 07  STA ram_07F4,X
bra_867C:
C - - - - - 0x01868C 0C:867C: 4A        LSR
C - - - - - 0x01868D 0C:867D: 9D A7 07  STA ram_07A7,X
C - - - - - 0x018690 0C:8680: 60        RTS



ofs_013_8681_ED:
C - - J - - 0x018691 0C:8681: A6 F3     LDX ram_00F3
C - - - - - 0x018693 0C:8683: CA        DEX
C - - - - - 0x018694 0C:8684: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x018696 0C:8686: 9D AF 07  STA ram_07AF,X
C - - - - - 0x018699 0C:8689: A9 00     LDA #$00
C - - - - - 0x01869B 0C:868B: 9D C7 07  STA ram_07C7,X
C - - - - - 0x01869E 0C:868E: C8        INY
C - - - - - 0x01869F 0C:868F: 60        RTS



ofs_013_8690_EF:
C - - J - - 0x0186A0 0C:8690: A6 F3     LDX ram_00F3
C - - - - - 0x0186A2 0C:8692: CA        DEX
C - - - - - 0x0186A3 0C:8693: A9 00     LDA #$00
C - - - - - 0x0186A5 0C:8695: 9D AF 07  STA ram_07AF,X
C - - - - - 0x0186A8 0C:8698: 60        RTS



ofs_013_8699_F9:
; bzk optimize, если есть возможность использовать X или Y
; тогда сначала LDX 0F, потом проверка 07E8, если Z = 0 то прыгать на STA 4015
C - - J - - 0x0186A9 0C:8699: A9 0F     LDA #$0F
; отключить DMC канал
C - - - - - 0x0186AB 0C:869B: 8D 15 40  STA $4015
C - - - - - 0x0186AE 0C:869E: AD E8 07  LDA ram_07E8
C - - - - - 0x0186B1 0C:86A1: D0 14     BNE bra_86B7_RTS
C - - - - - 0x0186B3 0C:86A3: A9 0F     LDA #$0F
C - - - - - 0x0186B5 0C:86A5: 8D 10 40  STA $4010
C - - - - - 0x0186B8 0C:86A8: A9 00     LDA #$80
C - - - - - 0x0186BA 0C:86AA: 8D 12 40  STA $4012
C - - - - - 0x0186BD 0C:86AD: A9 0C     LDA #$0C
C - - - - - 0x0186BF 0C:86AF: 8D 13 40  STA $4013
; включить DMC канал
C - - - - - 0x0186C2 0C:86B2: A9 1F     LDA #$1F
C - - - - - 0x0186C4 0C:86B4: 8D 15 40  STA $4015
bra_86B7_RTS:
C - - - - - 0x0186C7 0C:86B7: 60        RTS



ofs_013_86B8_FA:
C - - J - - 0x0186C8 0C:86B8: A9 0F     LDA #$0F
C - - - - - 0x0186CA 0C:86BA: 8D 15 40  STA $4015
C - - - - - 0x0186CD 0C:86BD: AD E8 07  LDA ram_07E8
C - - - - - 0x0186D0 0C:86C0: D0 14     BNE bra_86D6_RTS
C - - - - - 0x0186D2 0C:86C2: A9 0F     LDA #$0F
C - - - - - 0x0186D4 0C:86C4: 8D 10 40  STA $4010
C - - - - - 0x0186D7 0C:86C7: A9 03     LDA #$83
C - - - - - 0x0186D9 0C:86C9: 8D 12 40  STA $4012
C - - - - - 0x0186DC 0C:86CC: A9 20     LDA #$20
C - - - - - 0x0186DE 0C:86CE: 8D 13 40  STA $4013
C - - - - - 0x0186E1 0C:86D1: A9 1F     LDA #$1F
C - - - - - 0x0186E3 0C:86D3: 8D 15 40  STA $4015
bra_86D6_RTS:
C - - - - - 0x0186E6 0C:86D6: 60        RTS



ofs_013_86D7_FB:
C - - J - - 0x0186E7 0C:86D7: A9 0F     LDA #$0F
C - - - - - 0x0186E9 0C:86D9: 8D 15 40  STA $4015
C - - - - - 0x0186EC 0C:86DC: AD E8 07  LDA ram_07E8
C - - - - - 0x0186EF 0C:86DF: D0 14     BNE bra_86F5_RTS
C - - - - - 0x0186F1 0C:86E1: A9 0F     LDA #$0F
C - - - - - 0x0186F3 0C:86E3: 8D 10 40  STA $4010
C - - - - - 0x0186F6 0C:86E6: A9 0B     LDA #$8B
C - - - - - 0x0186F8 0C:86E8: 8D 12 40  STA $4012
C - - - - - 0x0186FB 0C:86EB: A9 13     LDA #$13
C - - - - - 0x0186FD 0C:86ED: 8D 13 40  STA $4013
C - - - - - 0x018700 0C:86F0: A9 1F     LDA #$1F
C - - - - - 0x018702 0C:86F2: 8D 15 40  STA $4015
bra_86F5_RTS:
C - - - - - 0x018705 0C:86F5: 60        RTS



ofs_013_86F6_FE:
- - - - - - 0x018706 0C:86F6: B1 F4     LDA (ram_00F4),Y
- - - - - - 0x018708 0C:86F8: C8        INY
- - - - - - 0x018709 0C:86F9: 84 F6     STY ram_00F6
- - - - - - 0x01870B 0C:86FB: A6 F3     LDX ram_00F3
- - - - - - 0x01870D 0C:86FD: CA        DEX
- - - - - - 0x01870E 0C:86FE: 9D CF 07  STA ram_07CF,X
- - - - - - 0x018711 0C:8701: 9D D7 07  STA ram_07D7,X
- - - - - - 0x018714 0C:8704: A4 F6     LDY ram_00F6
- - - - - - 0x018716 0C:8706: 60        RTS



ofs_013_8707_F0:
; bzk garbage? в новых логах не читалось
- - - - - - 0x018719 0C:8709: C8        INY
- - - - - - 0x01871A 0C:870A: C8        INY
ofs_013_8707_E1:
ofs_013_8707_E6:
ofs_013_8707_E7:
ofs_013_8707_EE:
ofs_013_8707_F1:
ofs_013_8707_F5:
ofs_013_8707_F6:
ofs_013_8707_F7:
ofs_013_8707_F8:
ofs_013_8707_FC:
ofs_013_8707_FD:
- - - - - - 0x01871B 0C:870B: C8        INY
- - - - - - 0x01871C 0C:870C: 60        RTS



tbl_870D:
- D 0 - - - 0x01871D 0C:870D: AE 06     .word $06AE ; 00
- D 0 - - - 0x01871F 0C:870F: 4E 06     .word $064E ; 01
- D 0 - - - 0x018721 0C:8711: F3 05     .word $05F3 ; 02
- D 0 - - - 0x018723 0C:8713: 9E 05     .word $059E ; 03
- D 0 - - - 0x018725 0C:8715: 4D 05     .word $054D ; 04
- D 0 - - - 0x018727 0C:8717: 01 05     .word $0501 ; 05
- D 0 - - - 0x018729 0C:8719: B9 04     .word $04B9 ; 06
- D 0 - - - 0x01872B 0C:871B: 75 04     .word $0475 ; 07
- D 0 - - - 0x01872D 0C:871D: 35 04     .word $0435 ; 08
- D 0 - - - 0x01872F 0C:871F: F8 03     .word $03F8 ; 09
- D 0 - - - 0x018731 0C:8721: BF 03     .word $03BF ; 0A
- D 0 - - - 0x018733 0C:8723: 89 03     .word $0389 ; 0B



tbl_8725:
- D 0 - - - 0x018735 0C:8725: 00        .byte $00   ; 00
- D 0 - - - 0x018736 0C:8726: 01        .byte $01   ; 01
- D 0 - - - 0x018737 0C:8727: 02        .byte $02   ; 02
- D 0 - - - 0x018738 0C:8728: 03        .byte $03   ; 03
- D 0 - - - 0x018739 0C:8729: 04        .byte $04   ; 04
- D 0 - - - 0x01873A 0C:872A: 05        .byte $05   ; 05
- D 0 - - - 0x01873B 0C:872B: 06        .byte $06   ; 06
- D 0 - - - 0x01873C 0C:872C: 07        .byte $07   ; 07
- D 0 - - - 0x01873D 0C:872D: 08        .byte $08   ; 08
- D 0 - - - 0x01873E 0C:872E: 09        .byte $09   ; 09
- D 0 - - - 0x01873F 0C:872F: 0A        .byte $0A   ; 0A
- D 0 - - - 0x018740 0C:8730: 0C        .byte $0C   ; 0B
- D 0 - - - 0x018741 0C:8731: 0E        .byte $0E   ; 0C
- D 0 - - - 0x018742 0C:8732: 0F        .byte $0F   ; 0D
- D 0 - - - 0x018743 0C:8733: 10        .byte $10   ; 0E
- D 0 - - - 0x018744 0C:8734: 12        .byte $12   ; 0F
- D 0 - - - 0x018745 0C:8735: 14        .byte $14   ; 10
- D 0 - - - 0x018746 0C:8736: 15        .byte $15   ; 11
- D 0 - - - 0x018747 0C:8737: 18        .byte $18   ; 12
- D 0 - - - 0x018748 0C:8738: 1B        .byte $1B   ; 13
- D 0 - - - 0x018749 0C:8739: 1C        .byte $1C   ; 14
- D 0 - - - 0x01874A 0C:873A: 1E        .byte $1E   ; 15
- D 0 - - - 0x01874B 0C:873B: 20        .byte $20   ; 16
- D 0 - - - 0x01874C 0C:873C: 24        .byte $24   ; 17
- D 0 - - - 0x01874D 0C:873D: 28        .byte $28   ; 18
- D 0 - - - 0x01874E 0C:873E: 2A        .byte $2A   ; 19
- D 0 - - - 0x01874F 0C:873F: 30        .byte $30   ; 1A
- D 0 - - - 0x018750 0C:8740: 36        .byte $36   ; 1B
- D 0 - - - 0x018751 0C:8741: 38        .byte $38   ; 1C
- D 0 - - - 0x018752 0C:8742: 3C        .byte $3C   ; 1D
- D 0 - - - 0x018753 0C:8743: 40        .byte $40   ; 1E
- D 0 - - - 0x018754 0C:8744: 48        .byte $48   ; 1F
- D 0 - - - 0x018755 0C:8745: 50        .byte $50   ; 20
- D 0 - - - 0x018756 0C:8746: 54        .byte $54   ; 21
- D 0 - - - 0x018757 0C:8747: 60        .byte $60   ; 22
- D 0 - - - 0x018758 0C:8748: 6C        .byte $6C   ; 23
- D 0 - - - 0x018759 0C:8749: 70        .byte $70   ; 24
- D 0 - - - 0x01875A 0C:874A: 80        .byte $80   ; 25
- D 0 - - - 0x01875B 0C:874B: 90        .byte $90   ; 26
- - - - - - 0x01875C 0C:874C: A0        .byte $A0   ; 27
- - - - - - 0x01875D 0C:874D: C0        .byte $C0   ; 28
- - - - - - 0x01875E 0C:874E: E0        .byte $E0   ; 29
- - - - - - 0x01875F 0C:874F: 0B        .byte $0B   ; 2A
- - - - - - 0x018760 0C:8750: 85        .byte $85   ; 2B
- - - - - - 0x018761 0C:8751: A8        .byte $A8   ; 2C
- D 0 - - - 0x018762 0C:8752: FF        .byte $FF   ; 2D
- D 0 - - - 0x018763 0C:8753: F0        .byte $F0   ; 2E



tbl_8754:
- D 0 - - - 0x018764 0C:8754: 52 89     .word _off006_8952_00
- D 0 - - - 0x018766 0C:8756: 5C 89     .word _off006_895C_01
- D 0 - - - 0x018768 0C:8758: 6A 89     .word _off006_896A_02
- D 0 - - - 0x01876A 0C:875A: 78 89     .word _off006_8978_03
- D 0 - - - 0x01876C 0C:875C: 88 89     .word _off006_8988_04
- D 0 - - - 0x01876E 0C:875E: A0 89     .word _off006_89A0_05
- - - - - - 0x018770 0C:8760: B8 89     .word _off006_89B8_06
- D 0 - - - 0x018772 0C:8762: C0 89     .word _off006_89C0_07
- D 0 - - - 0x018774 0C:8764: C8 89     .word _off006_89C8_08
- D 0 - - - 0x018776 0C:8766: D0 89     .word _off006_89D0_09
- - - - - - 0x018778 0C:8768: DA 89     .word _off006_89DA_0A
- D 0 - - - 0x01877A 0C:876A: E6 89     .word _off006_89E6_0B
- D 0 - - - 0x01877C 0C:876C: F4 89     .word _off006_89F4_0C
- D 0 - - - 0x01877E 0C:876E: 08 8A     .word _off006_8A08_0D
- D 0 - - - 0x018780 0C:8770: 20 8A     .word _off006_8A20_0E
- D 0 - - - 0x018782 0C:8772: 28 8A     .word _off006_8A28_0F
- D 0 - - - 0x018784 0C:8774: 30 8A     .word _off006_8A30_10
- D 0 - - - 0x018786 0C:8776: 8C 8A     .word _off006_8A8C_11
- D 0 - - - 0x018788 0C:8778: AC 8A     .word _off006_8AAC_12
- D 0 - - - 0x01878A 0C:877A: CC 8A     .word _off006_8ACC_13
- D 0 - - - 0x01878C 0C:877C: EC 8A     .word _off006_8AEC_14
- D 0 - - - 0x01878E 0C:877E: 0C 8B     .word _off006_8B0C_15
- D 0 - - - 0x018790 0C:8780: 1E 8B     .word _off006_8B1E_16
- D 0 - - - 0x018792 0C:8782: 30 8B     .word _off006_8B30_17
- D 0 - - - 0x018794 0C:8784: B6 8B     .word _off006_8BB6_18
- D 0 - - - 0x018796 0C:8786: BA 8B     .word _off006_8BBA_19
- D 0 - - - 0x018798 0C:8788: BE 8B     .word _off006_8BBE_1A
- D 0 - - - 0x01879A 0C:878A: C2 8B     .word _off006_8BC2_1B
- D 0 - - - 0x01879C 0C:878C: C6 8B     .word _off006_8BC6_1C
- D 0 - - - 0x01879E 0C:878E: CA 8B     .word _off006_8BCA_1D
- D 0 - - - 0x0187A0 0C:8790: CE 8B     .word _off006_8BCE_1E
- D 0 - - - 0x0187A2 0C:8792: D2 8B     .word _off006_8BD2_1F
- D 0 - - - 0x0187A4 0C:8794: D6 8B     .word _off006_8BD6_20
- D 0 - - - 0x0187A6 0C:8796: 34 8B     .word _off006_8B34_21
- D 0 - - - 0x0187A8 0C:8798: 92 88     .word _off006_8892_22
- D 0 - - - 0x0187AA 0C:879A: 9C 88     .word _off006_889C_23
- D 0 - - - 0x0187AC 0C:879C: A8 88     .word _off006_88A8_24
- D 0 - - - 0x0187AE 0C:879E: B4 88     .word _off006_88B4_25
- D 0 - - - 0x0187B0 0C:87A0: C4 88     .word _off006_88C4_26
- D 0 - - - 0x0187B2 0C:87A2: DC 88     .word _off006_88DC_27
- D 0 - - - 0x0187B4 0C:87A4: 42 89     .word _off006_8942_28
- D 0 - - - 0x0187B6 0C:87A6: 4A 89     .word _off006_894A_29
- D 0 - - - 0x0187B8 0C:87A8: 32 8A     .word _off006_8A32_2A
- D 0 - - - 0x0187BA 0C:87AA: 5A 88     .word _off006_885A_2B
- D 0 - - - 0x0187BC 0C:87AC: 9E 88     .word _off006_889E_2C
- D 0 - - - 0x0187BE 0C:87AE: 70 88     .word _off006_8870_2D
- D 0 - - - 0x0187C0 0C:87B0: 2E 88     .word _off006_882E_2E
- D 0 - - - 0x0187C2 0C:87B2: 4E 88     .word _off006_884E_2F
- D 0 - - - 0x0187C4 0C:87B4: 76 8B     .word _off006_8B76_30
- D 0 - - - 0x0187C6 0C:87B6: E2 87     .word _off006_87E2_31
- D 0 - - - 0x0187C8 0C:87B8: FC 87     .word _off006_87FC_32
- D 0 - - - 0x0187CA 0C:87BA: F2 87     .word _off006_87F2_33
- D 0 - - - 0x0187CC 0C:87BC: 1C 88     .word _off006_881C_34
- D 0 - - - 0x0187CE 0C:87BE: D2 87     .word _off006_87D2_35
; для мелодии 50 (18 на муз экране)
- D 0 - - - 0x0187D0 0C:87C0: 93 BA     .word off_0x01DAA3_36
- D 0 - - - 0x0187D2 0C:87C2: 9F BA     .word off_0x01DAAF_37
- D 0 - - - 0x0187D4 0C:87C4: AD BA     .word off_0x01DABD_38
- D 0 - - - 0x0187D6 0C:87C6: BB BA     .word off_0x01DACB_39
- D 0 - - - 0x0187D8 0C:87C8: C9 BA     .word off_0x01DAD9_3A
- D 0 - - - 0x0187DA 0C:87CA: D7 BA     .word off_0x01DAE7_3B
- - - - - - 0x0187DC 0C:87CC: E5 BA     .word off_0x01DAF5_3C
- D 0 - - - 0x0187DE 0C:87CE: F3 BA     .word off_0x01DB03_3D
; для мелодии 53 (04 на муз экране)
- D 0 - - - 0x0187E0 0C:87D0: D2 A5     .word off_0x01E5E2_3E



_off006_87D2_35:
- D 0 - I - 0x0187E2 0C:87D2: 01        .byte $01
- D 0 - I - 0x0187E3 0C:87D3: 0C        .byte $0C
- D 0 - I - 0x0187E4 0C:87D4: 03        .byte $03
- D 0 - I - 0x0187E5 0C:87D5: 0F        .byte $0F
- D 0 - I - 0x0187E6 0C:87D6: 01        .byte $01
- D 0 - I - 0x0187E7 0C:87D7: 0D        .byte $0D
- D 0 - I - 0x0187E8 0C:87D8: 01        .byte $01
- D 0 - I - 0x0187E9 0C:87D9: 0B        .byte $0B
- D 0 - I - 0x0187EA 0C:87DA: 02        .byte $02
- D 0 - I - 0x0187EB 0C:87DB: 09        .byte $09
- D 0 - I - 0x0187EC 0C:87DC: 03        .byte $03
- D 0 - I - 0x0187ED 0C:87DD: 0C        .byte $0C
- D 0 - I - 0x0187EE 0C:87DE: 01        .byte $01
- D 0 - I - 0x0187EF 0C:87DF: 0B        .byte $0B
- D 0 - I - 0x0187F0 0C:87E0: FF        .byte $FF
- D 0 - I - 0x0187F1 0C:87E1: 0A        .byte $0A



_off006_87E2_31:
- D 0 - I - 0x0187F2 0C:87E2: 01        .byte $01
- D 0 - I - 0x0187F3 0C:87E3: 0D        .byte $0D
- D 0 - I - 0x0187F4 0C:87E4: 01        .byte $01
- D 0 - I - 0x0187F5 0C:87E5: 0F        .byte $0F
- D 0 - I - 0x0187F6 0C:87E6: 01        .byte $01
- D 0 - I - 0x0187F7 0C:87E7: 09        .byte $09
- D 0 - I - 0x0187F8 0C:87E8: 01        .byte $01
- D 0 - I - 0x0187F9 0C:87E9: 0A        .byte $0A
- D 0 - I - 0x0187FA 0C:87EA: 0C        .byte $0C
- D 0 - I - 0x0187FB 0C:87EB: 0C        .byte $0C
- D 0 - I - 0x0187FC 0C:87EC: 0D        .byte $0D
- D 0 - I - 0x0187FD 0C:87ED: 0B        .byte $0B
- D 0 - I - 0x0187FE 0C:87EE: 0E        .byte $0E
- D 0 - I - 0x0187FF 0C:87EF: 0A        .byte $0A
- D 0 - I - 0x018800 0C:87F0: FF        .byte $FF
- D 0 - I - 0x018801 0C:87F1: 09        .byte $09



_off006_87F2_33:
- D 0 - I - 0x018802 0C:87F2: 01        .byte $01
- D 0 - I - 0x018803 0C:87F3: 09        .byte $09
- D 0 - I - 0x018804 0C:87F4: 01        .byte $01
- D 0 - I - 0x018805 0C:87F5: 0F        .byte $0F
- D 0 - I - 0x018806 0C:87F6: 1A        .byte $1A
- D 0 - I - 0x018807 0C:87F7: 0B        .byte $0B
- D 0 - I - 0x018808 0C:87F8: 1B        .byte $1B
- D 0 - I - 0x018809 0C:87F9: 0A        .byte $0A
- D 0 - I - 0x01880A 0C:87FA: FF        .byte $FF
- D 0 - I - 0x01880B 0C:87FB: 09        .byte $09



_off006_87FC_32:
- D 0 - I - 0x01880C 0C:87FC: 02        .byte $02
- D 0 - I - 0x01880D 0C:87FD: 0F        .byte $0F
- D 0 - I - 0x01880E 0C:87FE: 02        .byte $02
- D 0 - I - 0x01880F 0C:87FF: 0E        .byte $0E
- D 0 - I - 0x018810 0C:8800: 02        .byte $02
- D 0 - I - 0x018811 0C:8801: 0D        .byte $0D
- D 0 - I - 0x018812 0C:8802: 02        .byte $02
- D 0 - I - 0x018813 0C:8803: 0C        .byte $0C
- D 0 - I - 0x018814 0C:8804: 01        .byte $01
- D 0 - I - 0x018815 0C:8805: 0B        .byte $0B
- D 0 - I - 0x018816 0C:8806: 01        .byte $01
- D 0 - I - 0x018817 0C:8807: 0A        .byte $0A
- D 0 - I - 0x018818 0C:8808: 01        .byte $01
- D 0 - I - 0x018819 0C:8809: 09        .byte $09
- D 0 - I - 0x01881A 0C:880A: 01        .byte $01
- D 0 - I - 0x01881B 0C:880B: 08        .byte $08
- D 0 - I - 0x01881C 0C:880C: 01        .byte $01
- D 0 - I - 0x01881D 0C:880D: 07        .byte $07
- D 0 - I - 0x01881E 0C:880E: 01        .byte $01
- D 0 - I - 0x01881F 0C:880F: 06        .byte $06
- D 0 - I - 0x018820 0C:8810: 01        .byte $01
- D 0 - I - 0x018821 0C:8811: 05        .byte $05
- D 0 - I - 0x018822 0C:8812: 01        .byte $01
- D 0 - I - 0x018823 0C:8813: 04        .byte $04
- D 0 - I - 0x018824 0C:8814: 01        .byte $01
- D 0 - I - 0x018825 0C:8815: 03        .byte $03
- D 0 - I - 0x018826 0C:8816: 01        .byte $01
- D 0 - I - 0x018827 0C:8817: 02        .byte $02
- D 0 - I - 0x018828 0C:8818: 01        .byte $01
- D 0 - I - 0x018829 0C:8819: 01        .byte $01
- D 0 - I - 0x01882A 0C:881A: FF        .byte $FF
- D 0 - I - 0x01882B 0C:881B: 00        .byte $00



_off006_881C_34:
- D 0 - I - 0x01882C 0C:881C: 03        .byte $03
- D 0 - I - 0x01882D 0C:881D: 0F        .byte $0F
- D 0 - I - 0x01882E 0C:881E: 01        .byte $01
- D 0 - I - 0x01882F 0C:881F: 0C        .byte $0C
- D 0 - I - 0x018830 0C:8820: 01        .byte $01
- D 0 - I - 0x018831 0C:8821: 09        .byte $09
- D 0 - I - 0x018832 0C:8822: 01        .byte $01
- D 0 - I - 0x018833 0C:8823: 04        .byte $04
- D 0 - I - 0x018834 0C:8824: 01        .byte $01
- D 0 - I - 0x018835 0C:8825: 0C        .byte $0C
- D 0 - I - 0x018836 0C:8826: 01        .byte $01
- D 0 - I - 0x018837 0C:8827: 0B        .byte $0B
- D 0 - I - 0x018838 0C:8828: 01        .byte $01
- D 0 - I - 0x018839 0C:8829: 0A        .byte $0A
- D 0 - I - 0x01883A 0C:882A: 01        .byte $01
- D 0 - I - 0x01883B 0C:882B: 09        .byte $09
- D 0 - I - 0x01883C 0C:882C: FF        .byte $FF
- D 0 - I - 0x01883D 0C:882D: 08        .byte $08



_off006_882E_2E:
- D 0 - I - 0x01883E 0C:882E: 09        .byte $09
- D 0 - I - 0x01883F 0C:882F: 0F        .byte $0F
- D 0 - I - 0x018840 0C:8830: 09        .byte $09
- D 0 - I - 0x018841 0C:8831: 0E        .byte $0E
- D 0 - I - 0x018842 0C:8832: 09        .byte $09
- D 0 - I - 0x018843 0C:8833: 0D        .byte $0D
- D 0 - I - 0x018844 0C:8834: 09        .byte $09
- D 0 - I - 0x018845 0C:8835: 0C        .byte $0C
- D 0 - I - 0x018846 0C:8836: 09        .byte $09
- D 0 - I - 0x018847 0C:8837: 0B        .byte $0B
- D 0 - I - 0x018848 0C:8838: 09        .byte $09
- D 0 - I - 0x018849 0C:8839: 0A        .byte $0A
- D 0 - I - 0x01884A 0C:883A: 09        .byte $09
- D 0 - I - 0x01884B 0C:883B: 09        .byte $09
- D 0 - I - 0x01884C 0C:883C: 09        .byte $09
- D 0 - I - 0x01884D 0C:883D: 08        .byte $08
- D 0 - I - 0x01884E 0C:883E: 09        .byte $09
- D 0 - I - 0x01884F 0C:883F: 07        .byte $07
- D 0 - I - 0x018850 0C:8840: 09        .byte $09
- D 0 - I - 0x018851 0C:8841: 06        .byte $06
- D 0 - I - 0x018852 0C:8842: 09        .byte $09
- D 0 - I - 0x018853 0C:8843: 05        .byte $05
- D 0 - I - 0x018854 0C:8844: 09        .byte $09
- D 0 - I - 0x018855 0C:8845: 04        .byte $04
- D 0 - I - 0x018856 0C:8846: 09        .byte $09
- D 0 - I - 0x018857 0C:8847: 03        .byte $03
- D 0 - I - 0x018858 0C:8848: 09        .byte $09
- D 0 - I - 0x018859 0C:8849: 02        .byte $02
- D 0 - I - 0x01885A 0C:884A: 09        .byte $09
- D 0 - I - 0x01885B 0C:884B: 01        .byte $01
- D 0 - I - 0x01885C 0C:884C: FF        .byte $FF
- D 0 - I - 0x01885D 0C:884D: 00        .byte $00



_off006_884E_2F:
- D 0 - I - 0x01885E 0C:884E: 02        .byte $02
- D 0 - I - 0x01885F 0C:884F: 0F        .byte $0F
- D 0 - I - 0x018860 0C:8850: 02        .byte $02
- D 0 - I - 0x018861 0C:8851: 08        .byte $08
- D 0 - I - 0x018862 0C:8852: 02        .byte $02
- D 0 - I - 0x018863 0C:8853: 0F        .byte $0F
- - - - - - 0x018864 0C:8854: 02        .byte $02
- - - - - - 0x018865 0C:8855: 08        .byte $08
- - - - - - 0x018866 0C:8856: 02        .byte $02
- - - - - - 0x018867 0C:8857: 0F        .byte $0F
- - - - - - 0x018868 0C:8858: FF        .byte $FF
- - - - - - 0x018869 0C:8859: 00        .byte $00



_off006_885A_2B:
- D 0 - I - 0x01886A 0C:885A: 28        .byte $28
- D 0 - I - 0x01886B 0C:885B: 0F        .byte $0F
- D 0 - I - 0x01886C 0C:885C: 0B        .byte $0B
- D 0 - I - 0x01886D 0C:885D: 0E        .byte $0E
- D 0 - I - 0x01886E 0C:885E: 0B        .byte $0B
- D 0 - I - 0x01886F 0C:885F: 0D        .byte $0D
- D 0 - I - 0x018870 0C:8860: 0B        .byte $0B
- D 0 - I - 0x018871 0C:8861: 0C        .byte $0C
- D 0 - I - 0x018872 0C:8862: 0B        .byte $0B
- D 0 - I - 0x018873 0C:8863: 0B        .byte $0B
- - - - - - 0x018874 0C:8864: 0B        .byte $0B
- - - - - - 0x018875 0C:8865: 0A        .byte $0A
- - - - - - 0x018876 0C:8866: 1F        .byte $1F
- - - - - - 0x018877 0C:8867: 09        .byte $09
- - - - - - 0x018878 0C:8868: 21        .byte $21
- - - - - - 0x018879 0C:8869: 08        .byte $08
- - - - - - 0x01887A 0C:886A: 23        .byte $23
- - - - - - 0x01887B 0C:886B: 07        .byte $07
- - - - - - 0x01887C 0C:886C: 25        .byte $25
- - - - - - 0x01887D 0C:886D: 06        .byte $06
- - - - - - 0x01887E 0C:886E: 26        .byte $26
- - - - - - 0x01887F 0C:886F: 05        .byte $05



_off006_8870_2D:
- D 0 - I - 0x018880 0C:8870: 02        .byte $02
- D 0 - I - 0x018881 0C:8871: 09        .byte $09
- D 0 - I - 0x018882 0C:8872: 02        .byte $02
- D 0 - I - 0x018883 0C:8873: 0A        .byte $0A
- D 0 - I - 0x018884 0C:8874: 02        .byte $02
- D 0 - I - 0x018885 0C:8875: 0B        .byte $0B
- D 0 - I - 0x018886 0C:8876: 02        .byte $02
- D 0 - I - 0x018887 0C:8877: 0C        .byte $0C
- D 0 - I - 0x018888 0C:8878: 01        .byte $01
- D 0 - I - 0x018889 0C:8879: 0D        .byte $0D
- D 0 - I - 0x01888A 0C:887A: 01        .byte $01
- D 0 - I - 0x01888B 0C:887B: 0E        .byte $0E
- D 0 - I - 0x01888C 0C:887C: 09        .byte $09
- D 0 - I - 0x01888D 0C:887D: 0F        .byte $0F
- D 0 - I - 0x01888E 0C:887E: 01        .byte $01
- D 0 - I - 0x01888F 0C:887F: 0E        .byte $0E
- D 0 - I - 0x018890 0C:8880: 01        .byte $01
- D 0 - I - 0x018891 0C:8881: 0F        .byte $0F
- D 0 - I - 0x018892 0C:8882: 01        .byte $01
- D 0 - I - 0x018893 0C:8883: 0E        .byte $0E
- D 0 - I - 0x018894 0C:8884: 01        .byte $01
- D 0 - I - 0x018895 0C:8885: 0F        .byte $0F
- D 0 - I - 0x018896 0C:8886: 01        .byte $01
- D 0 - I - 0x018897 0C:8887: 0E        .byte $0E
- D 0 - I - 0x018898 0C:8888: 01        .byte $01
- D 0 - I - 0x018899 0C:8889: 0F        .byte $0F
- D 0 - I - 0x01889A 0C:888A: 01        .byte $01
- D 0 - I - 0x01889B 0C:888B: 0E        .byte $0E
- D 0 - I - 0x01889C 0C:888C: 01        .byte $01
- D 0 - I - 0x01889D 0C:888D: 0F        .byte $0F
- D 0 - I - 0x01889E 0C:888E: 01        .byte $01
- D 0 - I - 0x01889F 0C:888F: 0A        .byte $0A
- D 0 - I - 0x0188A0 0C:8890: FF        .byte $FF
- D 0 - I - 0x0188A1 0C:8891: 0C        .byte $0C



_off006_8892_22:
- D 0 - I - 0x0188A2 0C:8892: 01        .byte $01
- D 0 - I - 0x0188A3 0C:8893: 0C        .byte $0C
- D 0 - I - 0x0188A4 0C:8894: 02        .byte $02
- D 0 - I - 0x0188A5 0C:8895: 0F        .byte $0F
- D 0 - I - 0x0188A6 0C:8896: 01        .byte $01
- D 0 - I - 0x0188A7 0C:8897: 0C        .byte $0C
- D 0 - I - 0x0188A8 0C:8898: 01        .byte $01
- D 0 - I - 0x0188A9 0C:8899: 09        .byte $09
- D 0 - I - 0x0188AA 0C:889A: FF        .byte $FF
- D 0 - I - 0x0188AB 0C:889B: 0C        .byte $0C



_off006_889C_23:
- D 0 - I - 0x0188AC 0C:889C: 01        .byte $01
- D 0 - I - 0x0188AD 0C:889D: 0C        .byte $0C



_off006_889E_2C:
- D 0 - I - 0x0188AE 0C:889E: 03        .byte $03
- D 0 - I - 0x0188AF 0C:889F: 0F        .byte $0F
- D 0 - I - 0x0188B0 0C:88A0: 01        .byte $01
- D 0 - I - 0x0188B1 0C:88A1: 0D        .byte $0D
- D 0 - I - 0x0188B2 0C:88A2: 01        .byte $01
- D 0 - I - 0x0188B3 0C:88A3: 0B        .byte $0B
- D 0 - I - 0x0188B4 0C:88A4: 02        .byte $02
- D 0 - I - 0x0188B5 0C:88A5: 09        .byte $09
- D 0 - I - 0x0188B6 0C:88A6: FF        .byte $FF
- D 0 - I - 0x0188B7 0C:88A7: 0C        .byte $0C



_off006_88A8_24:
- D 0 - I - 0x0188B8 0C:88A8: 01        .byte $01
- D 0 - I - 0x0188B9 0C:88A9: 0C        .byte $0C
- D 0 - I - 0x0188BA 0C:88AA: 06        .byte $06
- D 0 - I - 0x0188BB 0C:88AB: 0F        .byte $0F
- D 0 - I - 0x0188BC 0C:88AC: 02        .byte $02
- D 0 - I - 0x0188BD 0C:88AD: 0D        .byte $0D
- D 0 - I - 0x0188BE 0C:88AE: 01        .byte $01
- D 0 - I - 0x0188BF 0C:88AF: 0B        .byte $0B
- D 0 - I - 0x0188C0 0C:88B0: 02        .byte $02
- D 0 - I - 0x0188C1 0C:88B1: 09        .byte $09
- D 0 - I - 0x0188C2 0C:88B2: FF        .byte $FF
- D 0 - I - 0x0188C3 0C:88B3: 0C        .byte $0C



_off006_88B4_25:
- D 0 - I - 0x0188C4 0C:88B4: 01        .byte $01
- D 0 - I - 0x0188C5 0C:88B5: 0C        .byte $0C
- D 0 - I - 0x0188C6 0C:88B6: 09        .byte $09
- D 0 - I - 0x0188C7 0C:88B7: 0F        .byte $0F
- D 0 - I - 0x0188C8 0C:88B8: 01        .byte $01
- D 0 - I - 0x0188C9 0C:88B9: 0E        .byte $0E
- D 0 - I - 0x0188CA 0C:88BA: 01        .byte $01
- D 0 - I - 0x0188CB 0C:88BB: 0F        .byte $0F
- D 0 - I - 0x0188CC 0C:88BC: 01        .byte $01
- D 0 - I - 0x0188CD 0C:88BD: 0E        .byte $0E
- D 0 - I - 0x0188CE 0C:88BE: 01        .byte $01
- D 0 - I - 0x0188CF 0C:88BF: 0F        .byte $0F
- D 0 - I - 0x0188D0 0C:88C0: 01        .byte $01
- D 0 - I - 0x0188D1 0C:88C1: 09        .byte $09
- D 0 - I - 0x0188D2 0C:88C2: FF        .byte $FF
- D 0 - I - 0x0188D3 0C:88C3: 0C        .byte $0C



_off006_88C4_26:
- D 0 - I - 0x0188D4 0C:88C4: 01        .byte $01
- D 0 - I - 0x0188D5 0C:88C5: 0C        .byte $0C
- D 0 - I - 0x0188D6 0C:88C6: 0C        .byte $0C
- D 0 - I - 0x0188D7 0C:88C7: 0F        .byte $0F
- D 0 - I - 0x0188D8 0C:88C8: 01        .byte $01
- D 0 - I - 0x0188D9 0C:88C9: 0E        .byte $0E
- D 0 - I - 0x0188DA 0C:88CA: 01        .byte $01
- D 0 - I - 0x0188DB 0C:88CB: 0F        .byte $0F
- D 0 - I - 0x0188DC 0C:88CC: 01        .byte $01
- D 0 - I - 0x0188DD 0C:88CD: 0E        .byte $0E
- D 0 - I - 0x0188DE 0C:88CE: 01        .byte $01
- D 0 - I - 0x0188DF 0C:88CF: 0F        .byte $0F
- D 0 - I - 0x0188E0 0C:88D0: 01        .byte $01
- D 0 - I - 0x0188E1 0C:88D1: 0E        .byte $0E
- D 0 - I - 0x0188E2 0C:88D2: 01        .byte $01
- D 0 - I - 0x0188E3 0C:88D3: 0F        .byte $0F
- D 0 - I - 0x0188E4 0C:88D4: 01        .byte $01
- D 0 - I - 0x0188E5 0C:88D5: 0E        .byte $0E
- D 0 - I - 0x0188E6 0C:88D6: 01        .byte $01
- D 0 - I - 0x0188E7 0C:88D7: 0F        .byte $0F
- D 0 - I - 0x0188E8 0C:88D8: 01        .byte $01
- D 0 - I - 0x0188E9 0C:88D9: 09        .byte $09
- D 0 - I - 0x0188EA 0C:88DA: FF        .byte $FF
- D 0 - I - 0x0188EB 0C:88DB: 0C        .byte $0C



_off006_88DC_27:
- D 0 - I - 0x0188EC 0C:88DC: 01        .byte $01
- D 0 - I - 0x0188ED 0C:88DD: 0C        .byte $0C
- D 0 - I - 0x0188EE 0C:88DE: 13        .byte $13
- D 0 - I - 0x0188EF 0C:88DF: 0F        .byte $0F
- D 0 - I - 0x0188F0 0C:88E0: 01        .byte $01
- D 0 - I - 0x0188F1 0C:88E1: 0E        .byte $0E
- D 0 - I - 0x0188F2 0C:88E2: 01        .byte $01
- D 0 - I - 0x0188F3 0C:88E3: 0F        .byte $0F
- D 0 - I - 0x0188F4 0C:88E4: 01        .byte $01
- D 0 - I - 0x0188F5 0C:88E5: 0E        .byte $0E
- D 0 - I - 0x0188F6 0C:88E6: 01        .byte $01
- D 0 - I - 0x0188F7 0C:88E7: 0F        .byte $0F
- D 0 - I - 0x0188F8 0C:88E8: 01        .byte $01
- D 0 - I - 0x0188F9 0C:88E9: 0E        .byte $0E
- D 0 - I - 0x0188FA 0C:88EA: 01        .byte $01
- D 0 - I - 0x0188FB 0C:88EB: 0F        .byte $0F
- D 0 - I - 0x0188FC 0C:88EC: 01        .byte $01
- D 0 - I - 0x0188FD 0C:88ED: 0E        .byte $0E
- D 0 - I - 0x0188FE 0C:88EE: 01        .byte $01
- D 0 - I - 0x0188FF 0C:88EF: 0F        .byte $0F
- D 0 - I - 0x018900 0C:88F0: 01        .byte $01
- D 0 - I - 0x018901 0C:88F1: 0E        .byte $0E
- D 0 - I - 0x018902 0C:88F2: 02        .byte $02
- D 0 - I - 0x018903 0C:88F3: 0D        .byte $0D
- D 0 - I - 0x018904 0C:88F4: 02        .byte $02
- D 0 - I - 0x018905 0C:88F5: 0C        .byte $0C
- D 0 - I - 0x018906 0C:88F6: 02        .byte $02
- D 0 - I - 0x018907 0C:88F7: 0D        .byte $0D
- D 0 - I - 0x018908 0C:88F8: 02        .byte $02
- D 0 - I - 0x018909 0C:88F9: 0C        .byte $0C
- D 0 - I - 0x01890A 0C:88FA: 02        .byte $02
- D 0 - I - 0x01890B 0C:88FB: 0D        .byte $0D
- D 0 - I - 0x01890C 0C:88FC: 02        .byte $02
- D 0 - I - 0x01890D 0C:88FD: 0C        .byte $0C
- D 0 - I - 0x01890E 0C:88FE: 02        .byte $02
- D 0 - I - 0x01890F 0C:88FF: 0D        .byte $0D
- D 0 - I - 0x018910 0C:8900: 02        .byte $02
- D 0 - I - 0x018911 0C:8901: 0C        .byte $0C
- D 0 - I - 0x018912 0C:8902: 02        .byte $02
- D 0 - I - 0x018913 0C:8903: 0D        .byte $0D
- D 0 - I - 0x018914 0C:8904: 02        .byte $02
- D 0 - I - 0x018915 0C:8905: 0C        .byte $0C
- D 0 - I - 0x018916 0C:8906: 02        .byte $02
- D 0 - I - 0x018917 0C:8907: 0D        .byte $0D
- D 0 - I - 0x018918 0C:8908: 02        .byte $02
- D 0 - I - 0x018919 0C:8909: 0C        .byte $0C
- D 0 - I - 0x01891A 0C:890A: 02        .byte $02
- D 0 - I - 0x01891B 0C:890B: 0D        .byte $0D
- D 0 - I - 0x01891C 0C:890C: 02        .byte $02
- D 0 - I - 0x01891D 0C:890D: 0C        .byte $0C
- D 0 - I - 0x01891E 0C:890E: 02        .byte $02
- D 0 - I - 0x01891F 0C:890F: 0D        .byte $0D
- D 0 - I - 0x018920 0C:8910: 02        .byte $02
- D 0 - I - 0x018921 0C:8911: 0C        .byte $0C
- D 0 - I - 0x018922 0C:8912: 02        .byte $02
- D 0 - I - 0x018923 0C:8913: 0D        .byte $0D
- D 0 - I - 0x018924 0C:8914: 02        .byte $02
- D 0 - I - 0x018925 0C:8915: 0C        .byte $0C
- D 0 - I - 0x018926 0C:8916: 02        .byte $02
- D 0 - I - 0x018927 0C:8917: 0D        .byte $0D
- D 0 - I - 0x018928 0C:8918: 02        .byte $02
- D 0 - I - 0x018929 0C:8919: 0C        .byte $0C
- D 0 - I - 0x01892A 0C:891A: 02        .byte $02
- D 0 - I - 0x01892B 0C:891B: 0D        .byte $0D
- D 0 - I - 0x01892C 0C:891C: 02        .byte $02
- D 0 - I - 0x01892D 0C:891D: 0C        .byte $0C
- D 0 - I - 0x01892E 0C:891E: 02        .byte $02
- D 0 - I - 0x01892F 0C:891F: 0D        .byte $0D
- D 0 - I - 0x018930 0C:8920: 02        .byte $02
- D 0 - I - 0x018931 0C:8921: 0C        .byte $0C
- D 0 - I - 0x018932 0C:8922: 02        .byte $02
- D 0 - I - 0x018933 0C:8923: 0D        .byte $0D
- D 0 - I - 0x018934 0C:8924: 02        .byte $02
- D 0 - I - 0x018935 0C:8925: 0C        .byte $0C
- D 0 - I - 0x018936 0C:8926: 02        .byte $02
- D 0 - I - 0x018937 0C:8927: 0D        .byte $0D
- D 0 - I - 0x018938 0C:8928: 02        .byte $02
- D 0 - I - 0x018939 0C:8929: 0C        .byte $0C
- D 0 - I - 0x01893A 0C:892A: 02        .byte $02
- D 0 - I - 0x01893B 0C:892B: 0D        .byte $0D
- D 0 - I - 0x01893C 0C:892C: 02        .byte $02
- D 0 - I - 0x01893D 0C:892D: 0C        .byte $0C
- D 0 - I - 0x01893E 0C:892E: 02        .byte $02
- D 0 - I - 0x01893F 0C:892F: 0D        .byte $0D
- D 0 - I - 0x018940 0C:8930: 02        .byte $02
- D 0 - I - 0x018941 0C:8931: 0C        .byte $0C
- D 0 - I - 0x018942 0C:8932: 02        .byte $02
- D 0 - I - 0x018943 0C:8933: 0D        .byte $0D
- D 0 - I - 0x018944 0C:8934: 02        .byte $02
- D 0 - I - 0x018945 0C:8935: 0C        .byte $0C
- D 0 - I - 0x018946 0C:8936: 02        .byte $02
- D 0 - I - 0x018947 0C:8937: 0D        .byte $0D
- D 0 - I - 0x018948 0C:8938: 02        .byte $02
- D 0 - I - 0x018949 0C:8939: 0C        .byte $0C
- D 0 - I - 0x01894A 0C:893A: 02        .byte $02
- D 0 - I - 0x01894B 0C:893B: 0D        .byte $0D
- D 0 - I - 0x01894C 0C:893C: 02        .byte $02
- D 0 - I - 0x01894D 0C:893D: 0C        .byte $0C
- D 0 - I - 0x01894E 0C:893E: 02        .byte $02
- D 0 - I - 0x01894F 0C:893F: 0D        .byte $0D
- D 0 - I - 0x018950 0C:8940: FF        .byte $FF
- D 0 - I - 0x018951 0C:8941: 0C        .byte $0C



_off006_8942_28:
- D 0 - I - 0x018952 0C:8942: 01        .byte $01
- D 0 - I - 0x018953 0C:8943: 0C        .byte $0C
- D 0 - I - 0x018954 0C:8944: 03        .byte $03
- D 0 - I - 0x018955 0C:8945: 0F        .byte $0F
- D 0 - I - 0x018956 0C:8946: 01        .byte $01
- D 0 - I - 0x018957 0C:8947: 09        .byte $09
- D 0 - I - 0x018958 0C:8948: FF        .byte $FF
- D 0 - I - 0x018959 0C:8949: 0C        .byte $0C



_off006_894A_29:
- D 0 - I - 0x01895A 0C:894A: 01        .byte $01
- D 0 - I - 0x01895B 0C:894B: 0C        .byte $0C
- D 0 - I - 0x01895C 0C:894C: 08        .byte $08
- D 0 - I - 0x01895D 0C:894D: 0F        .byte $0F
- D 0 - I - 0x01895E 0C:894E: 01        .byte $01
- D 0 - I - 0x01895F 0C:894F: 09        .byte $09
- D 0 - I - 0x018960 0C:8950: FF        .byte $FF
- D 0 - I - 0x018961 0C:8951: 0C        .byte $0C



_off006_8952_00:
- D 0 - I - 0x018962 0C:8952: 01        .byte $01
- D 0 - I - 0x018963 0C:8953: 0D        .byte $0D
- D 0 - I - 0x018964 0C:8954: 01        .byte $01
- D 0 - I - 0x018965 0C:8955: 0F        .byte $0F
- D 0 - I - 0x018966 0C:8956: 01        .byte $01
- D 0 - I - 0x018967 0C:8957: 0E        .byte $0E
- D 0 - I - 0x018968 0C:8958: 01        .byte $01
- D 0 - I - 0x018969 0C:8959: 04        .byte $04
- D 0 - I - 0x01896A 0C:895A: FF        .byte $FF
- D 0 - I - 0x01896B 0C:895B: 0C        .byte $0C



_off006_895C_01:
- D 0 - I - 0x01896C 0C:895C: 01        .byte $01
- D 0 - I - 0x01896D 0C:895D: 0D        .byte $0D
- D 0 - I - 0x01896E 0C:895E: 02        .byte $02
- D 0 - I - 0x01896F 0C:895F: 0F        .byte $0F
- D 0 - I - 0x018970 0C:8960: 01        .byte $01
- D 0 - I - 0x018971 0C:8961: 0D        .byte $0D
- D 0 - I - 0x018972 0C:8962: 01        .byte $01
- D 0 - I - 0x018973 0C:8963: 0B        .byte $0B
- D 0 - I - 0x018974 0C:8964: 01        .byte $01
- D 0 - I - 0x018975 0C:8965: 09        .byte $09
- D 0 - I - 0x018976 0C:8966: 01        .byte $01
- D 0 - I - 0x018977 0C:8967: 04        .byte $04
- D 0 - I - 0x018978 0C:8968: FF        .byte $FF
- D 0 - I - 0x018979 0C:8969: 0C        .byte $0C



_off006_896A_02:
- D 0 - I - 0x01897A 0C:896A: 01        .byte $01
- D 0 - I - 0x01897B 0C:896B: 0D        .byte $0D
- D 0 - I - 0x01897C 0C:896C: 05        .byte $05
- D 0 - I - 0x01897D 0C:896D: 0F        .byte $0F
- D 0 - I - 0x01897E 0C:896E: 01        .byte $01
- D 0 - I - 0x01897F 0C:896F: 0D        .byte $0D
- D 0 - I - 0x018980 0C:8970: 01        .byte $01
- D 0 - I - 0x018981 0C:8971: 0B        .byte $0B
- D 0 - I - 0x018982 0C:8972: 01        .byte $01
- D 0 - I - 0x018983 0C:8973: 09        .byte $09
- D 0 - I - 0x018984 0C:8974: 01        .byte $01
- D 0 - I - 0x018985 0C:8975: 04        .byte $04
- D 0 - I - 0x018986 0C:8976: FF        .byte $FF
- D 0 - I - 0x018987 0C:8977: 0C        .byte $0C



_off006_8978_03:
- D 0 - I - 0x018988 0C:8978: 01        .byte $01
- D 0 - I - 0x018989 0C:8979: 0D        .byte $0D
- D 0 - I - 0x01898A 0C:897A: 07        .byte $07
- D 0 - I - 0x01898B 0C:897B: 0F        .byte $0F
- D 0 - I - 0x01898C 0C:897C: 01        .byte $01
- D 0 - I - 0x01898D 0C:897D: 0E        .byte $0E
- D 0 - I - 0x01898E 0C:897E: 01        .byte $01
- D 0 - I - 0x01898F 0C:897F: 0F        .byte $0F
- D 0 - I - 0x018990 0C:8980: 01        .byte $01
- D 0 - I - 0x018991 0C:8981: 0E        .byte $0E
- D 0 - I - 0x018992 0C:8982: 01        .byte $01
- D 0 - I - 0x018993 0C:8983: 0F        .byte $0F
- D 0 - I - 0x018994 0C:8984: 01        .byte $01
- D 0 - I - 0x018995 0C:8985: 04        .byte $04
- D 0 - I - 0x018996 0C:8986: FF        .byte $FF
- D 0 - I - 0x018997 0C:8987: 0C        .byte $0C



_off006_8988_04:
- D 0 - I - 0x018998 0C:8988: 01        .byte $01
- D 0 - I - 0x018999 0C:8989: 0D        .byte $0D
- D 0 - I - 0x01899A 0C:898A: 09        .byte $09
- D 0 - I - 0x01899B 0C:898B: 0F        .byte $0F
- D 0 - I - 0x01899C 0C:898C: 01        .byte $01
- D 0 - I - 0x01899D 0C:898D: 0E        .byte $0E
- D 0 - I - 0x01899E 0C:898E: 01        .byte $01
- D 0 - I - 0x01899F 0C:898F: 0F        .byte $0F
- D 0 - I - 0x0189A0 0C:8990: 01        .byte $01
- D 0 - I - 0x0189A1 0C:8991: 0E        .byte $0E
- D 0 - I - 0x0189A2 0C:8992: 01        .byte $01
- D 0 - I - 0x0189A3 0C:8993: 0F        .byte $0F
- D 0 - I - 0x0189A4 0C:8994: 01        .byte $01
- D 0 - I - 0x0189A5 0C:8995: 0E        .byte $0E
- D 0 - I - 0x0189A6 0C:8996: 01        .byte $01
- D 0 - I - 0x0189A7 0C:8997: 0F        .byte $0F
- D 0 - I - 0x0189A8 0C:8998: 01        .byte $01
- D 0 - I - 0x0189A9 0C:8999: 0E        .byte $0E
- D 0 - I - 0x0189AA 0C:899A: 01        .byte $01
- D 0 - I - 0x0189AB 0C:899B: 0F        .byte $0F
- D 0 - I - 0x0189AC 0C:899C: 01        .byte $01
- D 0 - I - 0x0189AD 0C:899D: 04        .byte $04
- D 0 - I - 0x0189AE 0C:899E: FF        .byte $FF
- D 0 - I - 0x0189AF 0C:899F: 0C        .byte $0C



_off006_89A0_05:
- D 0 - I - 0x0189B0 0C:89A0: 01        .byte $01
- D 0 - I - 0x0189B1 0C:89A1: 0D        .byte $0D
- D 0 - I - 0x0189B2 0C:89A2: 0F        .byte $0F
- D 0 - I - 0x0189B3 0C:89A3: 0F        .byte $0F
- D 0 - I - 0x0189B4 0C:89A4: 01        .byte $01
- D 0 - I - 0x0189B5 0C:89A5: 0E        .byte $0E
- D 0 - I - 0x0189B6 0C:89A6: 01        .byte $01
- D 0 - I - 0x0189B7 0C:89A7: 0F        .byte $0F
- D 0 - I - 0x0189B8 0C:89A8: 01        .byte $01
- D 0 - I - 0x0189B9 0C:89A9: 0E        .byte $0E
- D 0 - I - 0x0189BA 0C:89AA: 01        .byte $01
- D 0 - I - 0x0189BB 0C:89AB: 0F        .byte $0F
- D 0 - I - 0x0189BC 0C:89AC: 01        .byte $01
- D 0 - I - 0x0189BD 0C:89AD: 0E        .byte $0E
- D 0 - I - 0x0189BE 0C:89AE: 01        .byte $01
- D 0 - I - 0x0189BF 0C:89AF: 0F        .byte $0F
- D 0 - I - 0x0189C0 0C:89B0: 01        .byte $01
- D 0 - I - 0x0189C1 0C:89B1: 0E        .byte $0E
- D 0 - I - 0x0189C2 0C:89B2: 01        .byte $01
- D 0 - I - 0x0189C3 0C:89B3: 0F        .byte $0F
- D 0 - I - 0x0189C4 0C:89B4: 01        .byte $01
- D 0 - I - 0x0189C5 0C:89B5: 04        .byte $04
- D 0 - I - 0x0189C6 0C:89B6: FF        .byte $FF
- D 0 - I - 0x0189C7 0C:89B7: 0C        .byte $0C



_off006_89B8_06:
- - - - - - 0x0189C8 0C:89B8: 01        .byte $01
- - - - - - 0x0189C9 0C:89B9: 0D        .byte $0D
- - - - - - 0x0189CA 0C:89BA: 03        .byte $03
- - - - - - 0x0189CB 0C:89BB: 0F        .byte $0F
- - - - - - 0x0189CC 0C:89BC: 01        .byte $01
- - - - - - 0x0189CD 0C:89BD: 04        .byte $04
- - - - - - 0x0189CE 0C:89BE: FF        .byte $FF
- - - - - - 0x0189CF 0C:89BF: 0C        .byte $0C



_off006_89C0_07:
- D 0 - I - 0x0189D0 0C:89C0: 01        .byte $01
- D 0 - I - 0x0189D1 0C:89C1: 0D        .byte $0D
- D 0 - I - 0x0189D2 0C:89C2: 07        .byte $07
- D 0 - I - 0x0189D3 0C:89C3: 0F        .byte $0F
- D 0 - I - 0x0189D4 0C:89C4: 01        .byte $01
- D 0 - I - 0x0189D5 0C:89C5: 04        .byte $04
- D 0 - I - 0x0189D6 0C:89C6: FF        .byte $FF
- D 0 - I - 0x0189D7 0C:89C7: 0C        .byte $0C



_off006_89C8_08:
- D 0 - I - 0x0189D8 0C:89C8: 02        .byte $02
- D 0 - I - 0x0189D9 0C:89C9: 0F        .byte $0F
- D 0 - I - 0x0189DA 0C:89CA: 01        .byte $01
- D 0 - I - 0x0189DB 0C:89CB: 0E        .byte $0E
- D 0 - I - 0x0189DC 0C:89CC: 01        .byte $01
- D 0 - I - 0x0189DD 0C:89CD: 04        .byte $04
- D 0 - I - 0x0189DE 0C:89CE: FF        .byte $FF
- D 0 - I - 0x0189DF 0C:89CF: 0C        .byte $0C



_off006_89D0_09:
- D 0 - I - 0x0189E0 0C:89D0: 03        .byte $03
- D 0 - I - 0x0189E1 0C:89D1: 0F        .byte $0F
- D 0 - I - 0x0189E2 0C:89D2: 01        .byte $01
- D 0 - I - 0x0189E3 0C:89D3: 0C        .byte $0C
- D 0 - I - 0x0189E4 0C:89D4: 01        .byte $01
- D 0 - I - 0x0189E5 0C:89D5: 09        .byte $09
- D 0 - I - 0x0189E6 0C:89D6: 01        .byte $01
- D 0 - I - 0x0189E7 0C:89D7: 04        .byte $04
- D 0 - I - 0x0189E8 0C:89D8: FF        .byte $FF
- D 0 - I - 0x0189E9 0C:89D9: 0C        .byte $0C



_off006_89DA_0A:
- - - - - - 0x0189EA 0C:89DA: 05        .byte $05
- - - - - - 0x0189EB 0C:89DB: 0F        .byte $0F
- - - - - - 0x0189EC 0C:89DC: 01        .byte $01
- - - - - - 0x0189ED 0C:89DD: 0D        .byte $0D
- - - - - - 0x0189EE 0C:89DE: 01        .byte $01
- - - - - - 0x0189EF 0C:89DF: 0B        .byte $0B
- - - - - - 0x0189F0 0C:89E0: 01        .byte $01
- - - - - - 0x0189F1 0C:89E1: 09        .byte $09
- - - - - - 0x0189F2 0C:89E2: 01        .byte $01
- - - - - - 0x0189F3 0C:89E3: 04        .byte $04
- - - - - - 0x0189F4 0C:89E4: FF        .byte $FF
- - - - - - 0x0189F5 0C:89E5: 0C        .byte $0C



_off006_89E6_0B:
- D 0 - I - 0x0189F6 0C:89E6: 06        .byte $06
- D 0 - I - 0x0189F7 0C:89E7: 0F        .byte $0F
- D 0 - I - 0x0189F8 0C:89E8: 01        .byte $01
- D 0 - I - 0x0189F9 0C:89E9: 0D        .byte $0D
- D 0 - I - 0x0189FA 0C:89EA: 01        .byte $01
- D 0 - I - 0x0189FB 0C:89EB: 0B        .byte $0B
- D 0 - I - 0x0189FC 0C:89EC: 01        .byte $01
- D 0 - I - 0x0189FD 0C:89ED: 0A        .byte $0A
- D 0 - I - 0x0189FE 0C:89EE: 01        .byte $01
- D 0 - I - 0x0189FF 0C:89EF: 09        .byte $09
- D 0 - I - 0x018A00 0C:89F0: 01        .byte $01
- D 0 - I - 0x018A01 0C:89F1: 04        .byte $04
- D 0 - I - 0x018A02 0C:89F2: FF        .byte $FF
- D 0 - I - 0x018A03 0C:89F3: 0C        .byte $0C



_off006_89F4_0C:
- D 0 - I - 0x018A04 0C:89F4: 01        .byte $01
- D 0 - I - 0x018A05 0C:89F5: 0E        .byte $0E
- D 0 - I - 0x018A06 0C:89F6: 08        .byte $08
- D 0 - I - 0x018A07 0C:89F7: 0F        .byte $0F
- D 0 - I - 0x018A08 0C:89F8: 01        .byte $01
- D 0 - I - 0x018A09 0C:89F9: 0E        .byte $0E
- D 0 - I - 0x018A0A 0C:89FA: 01        .byte $01
- D 0 - I - 0x018A0B 0C:89FB: 0F        .byte $0F
- D 0 - I - 0x018A0C 0C:89FC: 01        .byte $01
- D 0 - I - 0x018A0D 0C:89FD: 0E        .byte $0E
- D 0 - I - 0x018A0E 0C:89FE: 01        .byte $01
- D 0 - I - 0x018A0F 0C:89FF: 0F        .byte $0F
- D 0 - I - 0x018A10 0C:8A00: 01        .byte $01
- D 0 - I - 0x018A11 0C:8A01: 0E        .byte $0E
- D 0 - I - 0x018A12 0C:8A02: 01        .byte $01
- D 0 - I - 0x018A13 0C:8A03: 0F        .byte $0F
- D 0 - I - 0x018A14 0C:8A04: 01        .byte $01
- D 0 - I - 0x018A15 0C:8A05: 04        .byte $04
- D 0 - I - 0x018A16 0C:8A06: FF        .byte $FF
- D 0 - I - 0x018A17 0C:8A07: 0C        .byte $0C



_off006_8A08_0D:
- D 0 - I - 0x018A18 0C:8A08: 01        .byte $01
- D 0 - I - 0x018A19 0C:8A09: 0E        .byte $0E
- D 0 - I - 0x018A1A 0C:8A0A: 0A        .byte $0A
- D 0 - I - 0x018A1B 0C:8A0B: 0F        .byte $0F
- D 0 - I - 0x018A1C 0C:8A0C: 01        .byte $01
- D 0 - I - 0x018A1D 0C:8A0D: 0E        .byte $0E
- D 0 - I - 0x018A1E 0C:8A0E: 01        .byte $01
- D 0 - I - 0x018A1F 0C:8A0F: 0F        .byte $0F
- D 0 - I - 0x018A20 0C:8A10: 01        .byte $01
- D 0 - I - 0x018A21 0C:8A11: 0E        .byte $0E
- D 0 - I - 0x018A22 0C:8A12: 01        .byte $01
- D 0 - I - 0x018A23 0C:8A13: 0F        .byte $0F
- D 0 - I - 0x018A24 0C:8A14: 01        .byte $01
- D 0 - I - 0x018A25 0C:8A15: 0E        .byte $0E
- D 0 - I - 0x018A26 0C:8A16: 01        .byte $01
- D 0 - I - 0x018A27 0C:8A17: 0F        .byte $0F
- D 0 - I - 0x018A28 0C:8A18: 01        .byte $01
- D 0 - I - 0x018A29 0C:8A19: 0E        .byte $0E
- D 0 - I - 0x018A2A 0C:8A1A: 01        .byte $01
- D 0 - I - 0x018A2B 0C:8A1B: 0D        .byte $0D
- D 0 - I - 0x018A2C 0C:8A1C: 01        .byte $01
- D 0 - I - 0x018A2D 0C:8A1D: 0A        .byte $0A
- D 0 - I - 0x018A2E 0C:8A1E: FF        .byte $FF
- D 0 - I - 0x018A2F 0C:8A1F: 0C        .byte $0C



_off006_8A20_0E:
- D 0 - I - 0x018A30 0C:8A20: 01        .byte $01
- D 0 - I - 0x018A31 0C:8A21: 0E        .byte $0E
- D 0 - I - 0x018A32 0C:8A22: 03        .byte $03
- D 0 - I - 0x018A33 0C:8A23: 0F        .byte $0F
- D 0 - I - 0x018A34 0C:8A24: 01        .byte $01
- D 0 - I - 0x018A35 0C:8A25: 04        .byte $04
- D 0 - I - 0x018A36 0C:8A26: FF        .byte $FF
- D 0 - I - 0x018A37 0C:8A27: 0C        .byte $0C



_off006_8A28_0F:
- D 0 - I - 0x018A38 0C:8A28: 01        .byte $01
- D 0 - I - 0x018A39 0C:8A29: 0E        .byte $0E
- D 0 - I - 0x018A3A 0C:8A2A: 06        .byte $06
- D 0 - I - 0x018A3B 0C:8A2B: 0F        .byte $0F
- D 0 - I - 0x018A3C 0C:8A2C: 01        .byte $01
- D 0 - I - 0x018A3D 0C:8A2D: 04        .byte $04
- D 0 - I - 0x018A3E 0C:8A2E: FF        .byte $FF
- D 0 - I - 0x018A3F 0C:8A2F: 0C        .byte $0C



_off006_8A30_10:
- D 0 - I - 0x018A40 0C:8A30: 01        .byte $01
- D 0 - I - 0x018A41 0C:8A31: 0D        .byte $0D



_off006_8A32_2A:
- D 0 - I - 0x018A42 0C:8A32: 12        .byte $12
- D 0 - I - 0x018A43 0C:8A33: 0F        .byte $0F
- D 0 - I - 0x018A44 0C:8A34: 03        .byte $03
- D 0 - I - 0x018A45 0C:8A35: 0E        .byte $0E
- D 0 - I - 0x018A46 0C:8A36: 03        .byte $03
- D 0 - I - 0x018A47 0C:8A37: 0D        .byte $0D
- D 0 - I - 0x018A48 0C:8A38: 03        .byte $03
- D 0 - I - 0x018A49 0C:8A39: 0E        .byte $0E
- D 0 - I - 0x018A4A 0C:8A3A: 03        .byte $03
- D 0 - I - 0x018A4B 0C:8A3B: 0D        .byte $0D
- D 0 - I - 0x018A4C 0C:8A3C: 03        .byte $03
- D 0 - I - 0x018A4D 0C:8A3D: 0E        .byte $0E
- D 0 - I - 0x018A4E 0C:8A3E: 03        .byte $03
- D 0 - I - 0x018A4F 0C:8A3F: 0D        .byte $0D
- D 0 - I - 0x018A50 0C:8A40: 03        .byte $03
- D 0 - I - 0x018A51 0C:8A41: 0E        .byte $0E
- D 0 - I - 0x018A52 0C:8A42: 03        .byte $03
- D 0 - I - 0x018A53 0C:8A43: 0D        .byte $0D
- D 0 - I - 0x018A54 0C:8A44: 04        .byte $04
- D 0 - I - 0x018A55 0C:8A45: 0E        .byte $0E
- D 0 - I - 0x018A56 0C:8A46: 04        .byte $04
- D 0 - I - 0x018A57 0C:8A47: 0D        .byte $0D
- D 0 - I - 0x018A58 0C:8A48: 04        .byte $04
- D 0 - I - 0x018A59 0C:8A49: 0E        .byte $0E
- D 0 - I - 0x018A5A 0C:8A4A: 04        .byte $04
- D 0 - I - 0x018A5B 0C:8A4B: 0D        .byte $0D
- D 0 - I - 0x018A5C 0C:8A4C: 04        .byte $04
- D 0 - I - 0x018A5D 0C:8A4D: 0E        .byte $0E
- D 0 - I - 0x018A5E 0C:8A4E: 05        .byte $05
- D 0 - I - 0x018A5F 0C:8A4F: 0D        .byte $0D
- D 0 - I - 0x018A60 0C:8A50: 05        .byte $05
- D 0 - I - 0x018A61 0C:8A51: 0E        .byte $0E
- D 0 - I - 0x018A62 0C:8A52: 05        .byte $05
- D 0 - I - 0x018A63 0C:8A53: 0D        .byte $0D
- D 0 - I - 0x018A64 0C:8A54: 05        .byte $05
- D 0 - I - 0x018A65 0C:8A55: 0E        .byte $0E
- D 0 - I - 0x018A66 0C:8A56: 05        .byte $05
- D 0 - I - 0x018A67 0C:8A57: 0D        .byte $0D
- D 0 - I - 0x018A68 0C:8A58: 06        .byte $06
- D 0 - I - 0x018A69 0C:8A59: 0E        .byte $0E
- D 0 - I - 0x018A6A 0C:8A5A: 06        .byte $06
- D 0 - I - 0x018A6B 0C:8A5B: 0D        .byte $0D
- D 0 - I - 0x018A6C 0C:8A5C: 06        .byte $06
- D 0 - I - 0x018A6D 0C:8A5D: 0E        .byte $0E
- D 0 - I - 0x018A6E 0C:8A5E: 06        .byte $06
- D 0 - I - 0x018A6F 0C:8A5F: 0D        .byte $0D
- D 0 - I - 0x018A70 0C:8A60: 06        .byte $06
- D 0 - I - 0x018A71 0C:8A61: 0E        .byte $0E
- D 0 - I - 0x018A72 0C:8A62: 07        .byte $07
- D 0 - I - 0x018A73 0C:8A63: 0D        .byte $0D
- D 0 - I - 0x018A74 0C:8A64: 07        .byte $07
- D 0 - I - 0x018A75 0C:8A65: 0E        .byte $0E
- D 0 - I - 0x018A76 0C:8A66: 07        .byte $07
- D 0 - I - 0x018A77 0C:8A67: 0D        .byte $0D
- D 0 - I - 0x018A78 0C:8A68: 07        .byte $07
- D 0 - I - 0x018A79 0C:8A69: 0E        .byte $0E
- - - - - - 0x018A7A 0C:8A6A: 07        .byte $07
- - - - - - 0x018A7B 0C:8A6B: 0D        .byte $0D
- - - - - - 0x018A7C 0C:8A6C: 07        .byte $07
- - - - - - 0x018A7D 0C:8A6D: 0E        .byte $0E
- - - - - - 0x018A7E 0C:8A6E: 07        .byte $07
- - - - - - 0x018A7F 0C:8A6F: 0D        .byte $0D
- - - - - - 0x018A80 0C:8A70: 07        .byte $07
- - - - - - 0x018A81 0C:8A71: 0E        .byte $0E
- - - - - - 0x018A82 0C:8A72: 07        .byte $07
- - - - - - 0x018A83 0C:8A73: 0D        .byte $0D
- - - - - - 0x018A84 0C:8A74: 07        .byte $07
- - - - - - 0x018A85 0C:8A75: 0E        .byte $0E
- - - - - - 0x018A86 0C:8A76: 07        .byte $07
- - - - - - 0x018A87 0C:8A77: 0D        .byte $0D
- - - - - - 0x018A88 0C:8A78: 07        .byte $07
- - - - - - 0x018A89 0C:8A79: 0E        .byte $0E
- - - - - - 0x018A8A 0C:8A7A: 07        .byte $07
- - - - - - 0x018A8B 0C:8A7B: 0D        .byte $0D
- - - - - - 0x018A8C 0C:8A7C: 07        .byte $07
- - - - - - 0x018A8D 0C:8A7D: 0E        .byte $0E
- - - - - - 0x018A8E 0C:8A7E: 07        .byte $07
- - - - - - 0x018A8F 0C:8A7F: 0D        .byte $0D
- - - - - - 0x018A90 0C:8A80: 07        .byte $07
- - - - - - 0x018A91 0C:8A81: 0E        .byte $0E
- - - - - - 0x018A92 0C:8A82: 07        .byte $07
- - - - - - 0x018A93 0C:8A83: 0D        .byte $0D
- - - - - - 0x018A94 0C:8A84: 07        .byte $07
- - - - - - 0x018A95 0C:8A85: 0E        .byte $0E
- - - - - - 0x018A96 0C:8A86: 07        .byte $07
- - - - - - 0x018A97 0C:8A87: 0D        .byte $0D
- - - - - - 0x018A98 0C:8A88: 07        .byte $07
- - - - - - 0x018A99 0C:8A89: 0E        .byte $0E
- - - - - - 0x018A9A 0C:8A8A: FF        .byte $FF
- - - - - - 0x018A9B 0C:8A8B: 0E        .byte $0E



_off006_8A8C_11:
- D 0 - I - 0x018A9C 0C:8A8C: 01        .byte $01
- D 0 - I - 0x018A9D 0C:8A8D: 0F        .byte $0F
- D 0 - I - 0x018A9E 0C:8A8E: 01        .byte $01
- D 0 - I - 0x018A9F 0C:8A8F: 0E        .byte $0E
- D 0 - I - 0x018AA0 0C:8A90: 01        .byte $01
- D 0 - I - 0x018AA1 0C:8A91: 0D        .byte $0D
- D 0 - I - 0x018AA2 0C:8A92: 01        .byte $01
- D 0 - I - 0x018AA3 0C:8A93: 0C        .byte $0C
- D 0 - I - 0x018AA4 0C:8A94: 01        .byte $01
- D 0 - I - 0x018AA5 0C:8A95: 0B        .byte $0B
- D 0 - I - 0x018AA6 0C:8A96: 01        .byte $01
- D 0 - I - 0x018AA7 0C:8A97: 0A        .byte $0A
- D 0 - I - 0x018AA8 0C:8A98: 01        .byte $01
- D 0 - I - 0x018AA9 0C:8A99: 09        .byte $09
- D 0 - I - 0x018AAA 0C:8A9A: 01        .byte $01
- D 0 - I - 0x018AAB 0C:8A9B: 08        .byte $08
- D 0 - I - 0x018AAC 0C:8A9C: 01        .byte $01
- D 0 - I - 0x018AAD 0C:8A9D: 07        .byte $07
- D 0 - I - 0x018AAE 0C:8A9E: 01        .byte $01
- D 0 - I - 0x018AAF 0C:8A9F: 06        .byte $06
- D 0 - I - 0x018AB0 0C:8AA0: 01        .byte $01
- D 0 - I - 0x018AB1 0C:8AA1: 05        .byte $05
- D 0 - I - 0x018AB2 0C:8AA2: 01        .byte $01
- D 0 - I - 0x018AB3 0C:8AA3: 04        .byte $04
- D 0 - I - 0x018AB4 0C:8AA4: 01        .byte $01
- D 0 - I - 0x018AB5 0C:8AA5: 03        .byte $03
- D 0 - I - 0x018AB6 0C:8AA6: 01        .byte $01
- D 0 - I - 0x018AB7 0C:8AA7: 02        .byte $02
- D 0 - I - 0x018AB8 0C:8AA8: 01        .byte $01
- D 0 - I - 0x018AB9 0C:8AA9: 01        .byte $01
- D 0 - I - 0x018ABA 0C:8AAA: FF        .byte $FF
- D 0 - I - 0x018ABB 0C:8AAB: 00        .byte $00



_off006_8AAC_12:
- D 0 - I - 0x018ABC 0C:8AAC: 02        .byte $02
- D 0 - I - 0x018ABD 0C:8AAD: 0F        .byte $0F
- D 0 - I - 0x018ABE 0C:8AAE: 02        .byte $02
- D 0 - I - 0x018ABF 0C:8AAF: 0E        .byte $0E
- D 0 - I - 0x018AC0 0C:8AB0: 02        .byte $02
- D 0 - I - 0x018AC1 0C:8AB1: 0D        .byte $0D
- D 0 - I - 0x018AC2 0C:8AB2: 02        .byte $02
- D 0 - I - 0x018AC3 0C:8AB3: 0C        .byte $0C
- D 0 - I - 0x018AC4 0C:8AB4: 02        .byte $02
- D 0 - I - 0x018AC5 0C:8AB5: 0B        .byte $0B
- D 0 - I - 0x018AC6 0C:8AB6: 02        .byte $02
- D 0 - I - 0x018AC7 0C:8AB7: 0A        .byte $0A
- D 0 - I - 0x018AC8 0C:8AB8: 02        .byte $02
- D 0 - I - 0x018AC9 0C:8AB9: 09        .byte $09
- D 0 - I - 0x018ACA 0C:8ABA: 02        .byte $02
- D 0 - I - 0x018ACB 0C:8ABB: 08        .byte $08
- D 0 - I - 0x018ACC 0C:8ABC: 02        .byte $02
- D 0 - I - 0x018ACD 0C:8ABD: 07        .byte $07
- D 0 - I - 0x018ACE 0C:8ABE: 02        .byte $02
- D 0 - I - 0x018ACF 0C:8ABF: 06        .byte $06
- D 0 - I - 0x018AD0 0C:8AC0: 02        .byte $02
- D 0 - I - 0x018AD1 0C:8AC1: 05        .byte $05
- D 0 - I - 0x018AD2 0C:8AC2: 02        .byte $02
- D 0 - I - 0x018AD3 0C:8AC3: 04        .byte $04
- D 0 - I - 0x018AD4 0C:8AC4: 02        .byte $02
- D 0 - I - 0x018AD5 0C:8AC5: 03        .byte $03
- D 0 - I - 0x018AD6 0C:8AC6: 02        .byte $02
- D 0 - I - 0x018AD7 0C:8AC7: 02        .byte $02
- D 0 - I - 0x018AD8 0C:8AC8: 02        .byte $02
- D 0 - I - 0x018AD9 0C:8AC9: 01        .byte $01
- D 0 - I - 0x018ADA 0C:8ACA: FF        .byte $FF
- D 0 - I - 0x018ADB 0C:8ACB: 00        .byte $00



_off006_8ACC_13:
- D 0 - I - 0x018ADC 0C:8ACC: 03        .byte $03
- D 0 - I - 0x018ADD 0C:8ACD: 0F        .byte $0F
- D 0 - I - 0x018ADE 0C:8ACE: 03        .byte $03
- D 0 - I - 0x018ADF 0C:8ACF: 0E        .byte $0E
- D 0 - I - 0x018AE0 0C:8AD0: 03        .byte $03
- D 0 - I - 0x018AE1 0C:8AD1: 0D        .byte $0D
- D 0 - I - 0x018AE2 0C:8AD2: 03        .byte $03
- D 0 - I - 0x018AE3 0C:8AD3: 0C        .byte $0C
- D 0 - I - 0x018AE4 0C:8AD4: 03        .byte $03
- D 0 - I - 0x018AE5 0C:8AD5: 0B        .byte $0B
- D 0 - I - 0x018AE6 0C:8AD6: 03        .byte $03
- D 0 - I - 0x018AE7 0C:8AD7: 0A        .byte $0A
- D 0 - I - 0x018AE8 0C:8AD8: 03        .byte $03
- D 0 - I - 0x018AE9 0C:8AD9: 09        .byte $09
- D 0 - I - 0x018AEA 0C:8ADA: 03        .byte $03
- D 0 - I - 0x018AEB 0C:8ADB: 08        .byte $08
- D 0 - I - 0x018AEC 0C:8ADC: 03        .byte $03
- D 0 - I - 0x018AED 0C:8ADD: 07        .byte $07
- D 0 - I - 0x018AEE 0C:8ADE: 03        .byte $03
- D 0 - I - 0x018AEF 0C:8ADF: 06        .byte $06
- D 0 - I - 0x018AF0 0C:8AE0: 03        .byte $03
- D 0 - I - 0x018AF1 0C:8AE1: 05        .byte $05
- D 0 - I - 0x018AF2 0C:8AE2: 03        .byte $03
- D 0 - I - 0x018AF3 0C:8AE3: 04        .byte $04
- D 0 - I - 0x018AF4 0C:8AE4: 03        .byte $03
- D 0 - I - 0x018AF5 0C:8AE5: 03        .byte $03
- D 0 - I - 0x018AF6 0C:8AE6: 03        .byte $03
- D 0 - I - 0x018AF7 0C:8AE7: 02        .byte $02
- D 0 - I - 0x018AF8 0C:8AE8: 03        .byte $03
- D 0 - I - 0x018AF9 0C:8AE9: 01        .byte $01
- D 0 - I - 0x018AFA 0C:8AEA: FF        .byte $FF
- D 0 - I - 0x018AFB 0C:8AEB: 00        .byte $00



_off006_8AEC_14:
- D 0 - I - 0x018AFC 0C:8AEC: 01        .byte $01
- D 0 - I - 0x018AFD 0C:8AED: 0F        .byte $0F
- D 0 - I - 0x018AFE 0C:8AEE: 02        .byte $02
- D 0 - I - 0x018AFF 0C:8AEF: 0E        .byte $0E
- D 0 - I - 0x018B00 0C:8AF0: 03        .byte $03
- D 0 - I - 0x018B01 0C:8AF1: 0D        .byte $0D
- D 0 - I - 0x018B02 0C:8AF2: 04        .byte $04
- D 0 - I - 0x018B03 0C:8AF3: 0C        .byte $0C
- D 0 - I - 0x018B04 0C:8AF4: 05        .byte $05
- D 0 - I - 0x018B05 0C:8AF5: 0B        .byte $0B
- D 0 - I - 0x018B06 0C:8AF6: 06        .byte $06
- D 0 - I - 0x018B07 0C:8AF7: 0A        .byte $0A
- D 0 - I - 0x018B08 0C:8AF8: 07        .byte $07
- D 0 - I - 0x018B09 0C:8AF9: 09        .byte $09
- D 0 - I - 0x018B0A 0C:8AFA: 08        .byte $08
- D 0 - I - 0x018B0B 0C:8AFB: 08        .byte $08
- D 0 - I - 0x018B0C 0C:8AFC: 09        .byte $09
- D 0 - I - 0x018B0D 0C:8AFD: 07        .byte $07
- D 0 - I - 0x018B0E 0C:8AFE: 0A        .byte $0A
- D 0 - I - 0x018B0F 0C:8AFF: 06        .byte $06
- D 0 - I - 0x018B10 0C:8B00: 0B        .byte $0B
- D 0 - I - 0x018B11 0C:8B01: 05        .byte $05
- D 0 - I - 0x018B12 0C:8B02: 0C        .byte $0C
- D 0 - I - 0x018B13 0C:8B03: 04        .byte $04
- D 0 - I - 0x018B14 0C:8B04: 0D        .byte $0D
- D 0 - I - 0x018B15 0C:8B05: 03        .byte $03
- D 0 - I - 0x018B16 0C:8B06: 0E        .byte $0E
- D 0 - I - 0x018B17 0C:8B07: 02        .byte $02
- D 0 - I - 0x018B18 0C:8B08: 0F        .byte $0F
- D 0 - I - 0x018B19 0C:8B09: 01        .byte $01
- - - - - - 0x018B1A 0C:8B0A: FF        .byte $FF
- - - - - - 0x018B1B 0C:8B0B: 00        .byte $00



_off006_8B0C_15:
- D 0 - I - 0x018B1C 0C:8B0C: 02        .byte $02
- D 0 - I - 0x018B1D 0C:8B0D: 0F        .byte $0F
- D 0 - I - 0x018B1E 0C:8B0E: 02        .byte $02
- D 0 - I - 0x018B1F 0C:8B0F: 0D        .byte $0D
- D 0 - I - 0x018B20 0C:8B10: 02        .byte $02
- D 0 - I - 0x018B21 0C:8B11: 0B        .byte $0B
- D 0 - I - 0x018B22 0C:8B12: 02        .byte $02
- D 0 - I - 0x018B23 0C:8B13: 09        .byte $09
- D 0 - I - 0x018B24 0C:8B14: 02        .byte $02
- D 0 - I - 0x018B25 0C:8B15: 07        .byte $07
- D 0 - I - 0x018B26 0C:8B16: 02        .byte $02
- D 0 - I - 0x018B27 0C:8B17: 05        .byte $05
- D 0 - I - 0x018B28 0C:8B18: 02        .byte $02
- D 0 - I - 0x018B29 0C:8B19: 03        .byte $03
- D 0 - I - 0x018B2A 0C:8B1A: 02        .byte $02
- D 0 - I - 0x018B2B 0C:8B1B: 01        .byte $01
- D 0 - I - 0x018B2C 0C:8B1C: FF        .byte $FF
- D 0 - I - 0x018B2D 0C:8B1D: 00        .byte $00



_off006_8B1E_16:
- D 0 - I - 0x018B2E 0C:8B1E: 01        .byte $01
- D 0 - I - 0x018B2F 0C:8B1F: 0F        .byte $0F
- D 0 - I - 0x018B30 0C:8B20: 01        .byte $01
- D 0 - I - 0x018B31 0C:8B21: 0D        .byte $0D
- D 0 - I - 0x018B32 0C:8B22: 01        .byte $01
- D 0 - I - 0x018B33 0C:8B23: 0B        .byte $0B
- D 0 - I - 0x018B34 0C:8B24: 01        .byte $01
- D 0 - I - 0x018B35 0C:8B25: 09        .byte $09
- D 0 - I - 0x018B36 0C:8B26: 01        .byte $01
- D 0 - I - 0x018B37 0C:8B27: 07        .byte $07
- D 0 - I - 0x018B38 0C:8B28: 01        .byte $01
- D 0 - I - 0x018B39 0C:8B29: 05        .byte $05
- D 0 - I - 0x018B3A 0C:8B2A: 01        .byte $01
- D 0 - I - 0x018B3B 0C:8B2B: 03        .byte $03
- D 0 - I - 0x018B3C 0C:8B2C: 01        .byte $01
- D 0 - I - 0x018B3D 0C:8B2D: 01        .byte $01
- D 0 - I - 0x018B3E 0C:8B2E: FF        .byte $FF
- D 0 - I - 0x018B3F 0C:8B2F: 00        .byte $00



_off006_8B30_17:
- D 0 - I - 0x018B40 0C:8B30: FF        .byte $FF
- D 0 - I - 0x018B41 0C:8B31: 0F        .byte $0F
- D 0 - I - 0x018B42 0C:8B32: FF        .byte $FF
- D 0 - I - 0x018B43 0C:8B33: 00        .byte $00



_off006_8B34_21:
- D 0 - I - 0x018B44 0C:8B34: 0C        .byte $0C
- D 0 - I - 0x018B45 0C:8B35: 0F        .byte $0F
- D 0 - I - 0x018B46 0C:8B36: 03        .byte $03
- D 0 - I - 0x018B47 0C:8B37: 0E        .byte $0E
- D 0 - I - 0x018B48 0C:8B38: 03        .byte $03
- D 0 - I - 0x018B49 0C:8B39: 0F        .byte $0F
- D 0 - I - 0x018B4A 0C:8B3A: 03        .byte $03
- D 0 - I - 0x018B4B 0C:8B3B: 0E        .byte $0E
- D 0 - I - 0x018B4C 0C:8B3C: 04        .byte $04
- D 0 - I - 0x018B4D 0C:8B3D: 0F        .byte $0F
- D 0 - I - 0x018B4E 0C:8B3E: 04        .byte $04
- D 0 - I - 0x018B4F 0C:8B3F: 0E        .byte $0E
- D 0 - I - 0x018B50 0C:8B40: 04        .byte $04
- D 0 - I - 0x018B51 0C:8B41: 0F        .byte $0F
- D 0 - I - 0x018B52 0C:8B42: 04        .byte $04
- D 0 - I - 0x018B53 0C:8B43: 0E        .byte $0E
- D 0 - I - 0x018B54 0C:8B44: 05        .byte $05
- D 0 - I - 0x018B55 0C:8B45: 0F        .byte $0F
- D 0 - I - 0x018B56 0C:8B46: 05        .byte $05
- D 0 - I - 0x018B57 0C:8B47: 0E        .byte $0E
- D 0 - I - 0x018B58 0C:8B48: 05        .byte $05
- D 0 - I - 0x018B59 0C:8B49: 0F        .byte $0F
- - - - - - 0x018B5A 0C:8B4A: 05        .byte $05
- - - - - - 0x018B5B 0C:8B4B: 0E        .byte $0E
- - - - - - 0x018B5C 0C:8B4C: 05        .byte $05
- - - - - - 0x018B5D 0C:8B4D: 0F        .byte $0F
- - - - - - 0x018B5E 0C:8B4E: 05        .byte $05
- - - - - - 0x018B5F 0C:8B4F: 0E        .byte $0E
- - - - - - 0x018B60 0C:8B50: 05        .byte $05
- - - - - - 0x018B61 0C:8B51: 0F        .byte $0F
- - - - - - 0x018B62 0C:8B52: 05        .byte $05
- - - - - - 0x018B63 0C:8B53: 0E        .byte $0E
- - - - - - 0x018B64 0C:8B54: 05        .byte $05
- - - - - - 0x018B65 0C:8B55: 0F        .byte $0F
- - - - - - 0x018B66 0C:8B56: 05        .byte $05
- - - - - - 0x018B67 0C:8B57: 0E        .byte $0E
- - - - - - 0x018B68 0C:8B58: 05        .byte $05
- - - - - - 0x018B69 0C:8B59: 0F        .byte $0F
- - - - - - 0x018B6A 0C:8B5A: 05        .byte $05
- - - - - - 0x018B6B 0C:8B5B: 0E        .byte $0E
- - - - - - 0x018B6C 0C:8B5C: 05        .byte $05
- - - - - - 0x018B6D 0C:8B5D: 0F        .byte $0F
- - - - - - 0x018B6E 0C:8B5E: 05        .byte $05
- - - - - - 0x018B6F 0C:8B5F: 0E        .byte $0E
- - - - - - 0x018B70 0C:8B60: 05        .byte $05
- - - - - - 0x018B71 0C:8B61: 0F        .byte $0F
- - - - - - 0x018B72 0C:8B62: 05        .byte $05
- - - - - - 0x018B73 0C:8B63: 0E        .byte $0E
- - - - - - 0x018B74 0C:8B64: 06        .byte $06
- - - - - - 0x018B75 0C:8B65: 0F        .byte $0F
- - - - - - 0x018B76 0C:8B66: 06        .byte $06
- - - - - - 0x018B77 0C:8B67: 0E        .byte $0E
- - - - - - 0x018B78 0C:8B68: 06        .byte $06
- - - - - - 0x018B79 0C:8B69: 0F        .byte $0F
- - - - - - 0x018B7A 0C:8B6A: 06        .byte $06
- - - - - - 0x018B7B 0C:8B6B: 0E        .byte $0E
- - - - - - 0x018B7C 0C:8B6C: 07        .byte $07
- - - - - - 0x018B7D 0C:8B6D: 0F        .byte $0F
- - - - - - 0x018B7E 0C:8B6E: 07        .byte $07
- - - - - - 0x018B7F 0C:8B6F: 0E        .byte $0E
- - - - - - 0x018B80 0C:8B70: 07        .byte $07
- - - - - - 0x018B81 0C:8B71: 0D        .byte $0D
- - - - - - 0x018B82 0C:8B72: 08        .byte $08
- - - - - - 0x018B83 0C:8B73: 0C        .byte $0C
- - - - - - 0x018B84 0C:8B74: FF        .byte $FF
- - - - - - 0x018B85 0C:8B75: 00        .byte $00



_off006_8B76_30:
- D 0 - I - 0x018B86 0C:8B76: 01        .byte $01
- D 0 - I - 0x018B87 0C:8B77: 0B        .byte $0B
- D 0 - I - 0x018B88 0C:8B78: 01        .byte $01
- D 0 - I - 0x018B89 0C:8B79: 0C        .byte $0C
- D 0 - I - 0x018B8A 0C:8B7A: 01        .byte $01
- D 0 - I - 0x018B8B 0C:8B7B: 0D        .byte $0D
- D 0 - I - 0x018B8C 0C:8B7C: 01        .byte $01
- D 0 - I - 0x018B8D 0C:8B7D: 0E        .byte $0E
- D 0 - I - 0x018B8E 0C:8B7E: 01        .byte $01
- D 0 - I - 0x018B8F 0C:8B7F: 0F        .byte $0F
- D 0 - I - 0x018B90 0C:8B80: 01        .byte $01
- D 0 - I - 0x018B91 0C:8B81: 0E        .byte $0E
- D 0 - I - 0x018B92 0C:8B82: 01        .byte $01
- D 0 - I - 0x018B93 0C:8B83: 0D        .byte $0D
- D 0 - I - 0x018B94 0C:8B84: 01        .byte $01
- D 0 - I - 0x018B95 0C:8B85: 0C        .byte $0C
- D 0 - I - 0x018B96 0C:8B86: 01        .byte $01
- D 0 - I - 0x018B97 0C:8B87: 0B        .byte $0B
- D 0 - I - 0x018B98 0C:8B88: 01        .byte $01
- D 0 - I - 0x018B99 0C:8B89: 0C        .byte $0C
- D 0 - I - 0x018B9A 0C:8B8A: 01        .byte $01
- D 0 - I - 0x018B9B 0C:8B8B: 0D        .byte $0D
- D 0 - I - 0x018B9C 0C:8B8C: 01        .byte $01
- D 0 - I - 0x018B9D 0C:8B8D: 0E        .byte $0E
- D 0 - I - 0x018B9E 0C:8B8E: 01        .byte $01
- D 0 - I - 0x018B9F 0C:8B8F: 0F        .byte $0F
- D 0 - I - 0x018BA0 0C:8B90: 01        .byte $01
- D 0 - I - 0x018BA1 0C:8B91: 0E        .byte $0E
- D 0 - I - 0x018BA2 0C:8B92: 01        .byte $01
- D 0 - I - 0x018BA3 0C:8B93: 0D        .byte $0D
- D 0 - I - 0x018BA4 0C:8B94: 01        .byte $01
- D 0 - I - 0x018BA5 0C:8B95: 0C        .byte $0C
- D 0 - I - 0x018BA6 0C:8B96: 01        .byte $01
- D 0 - I - 0x018BA7 0C:8B97: 0B        .byte $0B
- D 0 - I - 0x018BA8 0C:8B98: 01        .byte $01
- D 0 - I - 0x018BA9 0C:8B99: 0C        .byte $0C
- D 0 - I - 0x018BAA 0C:8B9A: 01        .byte $01
- D 0 - I - 0x018BAB 0C:8B9B: 0D        .byte $0D
- D 0 - I - 0x018BAC 0C:8B9C: 01        .byte $01
- D 0 - I - 0x018BAD 0C:8B9D: 0E        .byte $0E
- D 0 - I - 0x018BAE 0C:8B9E: 01        .byte $01
- D 0 - I - 0x018BAF 0C:8B9F: 0F        .byte $0F
- D 0 - I - 0x018BB0 0C:8BA0: 01        .byte $01
- D 0 - I - 0x018BB1 0C:8BA1: 0E        .byte $0E
- D 0 - I - 0x018BB2 0C:8BA2: 01        .byte $01
- D 0 - I - 0x018BB3 0C:8BA3: 0D        .byte $0D
- D 0 - I - 0x018BB4 0C:8BA4: 01        .byte $01
- D 0 - I - 0x018BB5 0C:8BA5: 0C        .byte $0C
- D 0 - I - 0x018BB6 0C:8BA6: 01        .byte $01
- D 0 - I - 0x018BB7 0C:8BA7: 0B        .byte $0B
- D 0 - I - 0x018BB8 0C:8BA8: 01        .byte $01
- D 0 - I - 0x018BB9 0C:8BA9: 0C        .byte $0C
- D 0 - I - 0x018BBA 0C:8BAA: 01        .byte $01
- D 0 - I - 0x018BBB 0C:8BAB: 0D        .byte $0D
- D 0 - I - 0x018BBC 0C:8BAC: 01        .byte $01
- D 0 - I - 0x018BBD 0C:8BAD: 0E        .byte $0E
- D 0 - I - 0x018BBE 0C:8BAE: 01        .byte $01
- D 0 - I - 0x018BBF 0C:8BAF: 0F        .byte $0F
- D 0 - I - 0x018BC0 0C:8BB0: 01        .byte $01
- D 0 - I - 0x018BC1 0C:8BB1: 0E        .byte $0E
- D 0 - I - 0x018BC2 0C:8BB2: 01        .byte $01
- D 0 - I - 0x018BC3 0C:8BB3: 0D        .byte $0D
- D 0 - I - 0x018BC4 0C:8BB4: 01        .byte $01
- D 0 - I - 0x018BC5 0C:8BB5: 0C        .byte $0C



_off006_8BB6_18:
- D 0 - I - 0x018BC6 0C:8BB6: 03        .byte $03
- D 0 - I - 0x018BC7 0C:8BB7: 0F        .byte $0F
- D 0 - I - 0x018BC8 0C:8BB8: FF        .byte $FF
- D 0 - I - 0x018BC9 0C:8BB9: 00        .byte $00



_off006_8BBA_19:
- D 0 - I - 0x018BCA 0C:8BBA: 04        .byte $04
- D 0 - I - 0x018BCB 0C:8BBB: 0F        .byte $0F
- D 0 - I - 0x018BCC 0C:8BBC: FF        .byte $FF
- D 0 - I - 0x018BCD 0C:8BBD: 00        .byte $00



_off006_8BBE_1A:
- D 0 - I - 0x018BCE 0C:8BBE: 05        .byte $05
- D 0 - I - 0x018BCF 0C:8BBF: 0F        .byte $0F
- D 0 - I - 0x018BD0 0C:8BC0: FF        .byte $FF
- D 0 - I - 0x018BD1 0C:8BC1: 00        .byte $00



_off006_8BC2_1B:
- D 0 - I - 0x018BD2 0C:8BC2: 06        .byte $06
- D 0 - I - 0x018BD3 0C:8BC3: 0F        .byte $0F
- D 0 - I - 0x018BD4 0C:8BC4: FF        .byte $FF
- D 0 - I - 0x018BD5 0C:8BC5: 00        .byte $00



_off006_8BC6_1C:
- D 0 - I - 0x018BD6 0C:8BC6: 07        .byte $07
- D 0 - I - 0x018BD7 0C:8BC7: 0F        .byte $0F
- D 0 - I - 0x018BD8 0C:8BC8: FF        .byte $FF
- D 0 - I - 0x018BD9 0C:8BC9: 00        .byte $00



_off006_8BCA_1D:
- D 0 - I - 0x018BDA 0C:8BCA: 08        .byte $08
- D 0 - I - 0x018BDB 0C:8BCB: 0F        .byte $0F
- D 0 - I - 0x018BDC 0C:8BCC: 0F        .byte $0F
- D 0 - I - 0x018BDD 0C:8BCD: 00        .byte $00



_off006_8BCE_1E:
- D 0 - I - 0x018BDE 0C:8BCE: 0A        .byte $0A
- D 0 - I - 0x018BDF 0C:8BCF: 0F        .byte $0F
- D 0 - I - 0x018BE0 0C:8BD0: FF        .byte $FF
- D 0 - I - 0x018BE1 0C:8BD1: 00        .byte $00



_off006_8BD2_1F:
- D 0 - I - 0x018BE2 0C:8BD2: 0C        .byte $0C
- D 0 - I - 0x018BE3 0C:8BD3: 0F        .byte $0F
- D 0 - I - 0x018BE4 0C:8BD4: FF        .byte $FF
- D 0 - I - 0x018BE5 0C:8BD5: 00        .byte $00



_off006_8BD6_20:
- D 0 - I - 0x018BE6 0C:8BD6: 0E        .byte $0E
- D 0 - I - 0x018BE7 0C:8BD7: 0F        .byte $0F
- D 0 - I - 0x018BE8 0C:8BD8: FF        .byte $FF
- D 0 - I - 0x018BE9 0C:8BD9: 00        .byte $00



tbl_8BDA_таблица_звуков:
- D 0 - - - 0x018BEA 0C:8BDA: 42 8E     .word _off001_8E42_01_выключить_музыку_и_звуки
- D 0 - - - 0x018BEC 0C:8BDC: 5B 8E     .word _off000_8E5B_02_выключить_звуки
- D 0 - - - 0x018BEE 0C:8BDE: 68 8E     .word _off000_8E68_03_обычный_полет_мяча
- D 0 - - - 0x018BF0 0C:8BE0: 89 8E     .word _off000_8E89_04_полет_спешала
- D 0 - - - 0x018BF2 0C:8BE2: CF 8E     .word _off000_8ECF_05_полет_спешала
- D 0 - - - 0x018BF4 0C:8BE4: AD 8F     .word _off000_8FAD_06_полет_спешала
- D 0 - - - 0x018BF6 0C:8BE6: 14 8F     .word _off000_8F14_07_полет_спешала
- D 0 - - - 0x018BF8 0C:8BE8: A4 90     .word _off000_90A4_08_полет_спешала
- D 0 - - - 0x018BFA 0C:8BEA: 35 92     .word _off000_9235_09_полет_спешала
- D 0 - - - 0x018BFC 0C:8BEC: CC 96     .word _off000_96CC_0A_полет_спешала
- D 0 - - - 0x018BFE 0C:8BEE: 49 97     .word _off000_9749_0B_полет_спешала
- D 0 - - - 0x018C00 0C:8BF0: 81 91     .word _off000_9181_0C_полет_спешала
- D 0 - - - 0x018C02 0C:8BF2: EA 91     .word _off000_91EA_0D_исчезновение_мяча
- D 0 - - - 0x018C04 0C:8BF4: 1D 91     .word _off000_911D_0E_полет_спешала
- D 0 - - - 0x018C06 0C:8BF6: 79 90     .word _off000_9079_0F_полет_спешала
- D 0 - - - 0x018C08 0C:8BF8: 5A 8F     .word _off000_8F5A_10_полет_спешала
- D 0 - - - 0x018C0A 0C:8BFA: BB 8F     .word _off000_8FBB_11_полет_спешала
- D 0 - - - 0x018C0C 0C:8BFC: 2D 94     .word _off000_942D_12_обычный_удар_с_земли
- D 0 - - - 0x018C0E 0C:8BFE: 62 94     .word _off000_9462_13_сильный_удар_с_земли
- D 0 - - - 0x018C10 0C:8C00: C6 94     .word _off000_94C6_14_удар_с_ноги
- D 0 - - - 0x018C12 0C:8C02: E4 9D     .word _off000_9DE4_15_замах_мацуямы
- D 0 - - - 0x018C14 0C:8C04: FD 9D     .word _off000_9DFD_16_замах_цубасы
- D 0 - - - 0x018C16 0C:8C06: 59 93     .word _off000_9359_17_замах_соды
- D 0 - - - 0x018C18 0C:8C08: 53 96     .word _off000_9653_18_замах_с_красным_фоном
- D 0 - - - 0x018C1A 0C:8C0A: 7F 9E     .word _off000_9E7F_19_замах_удар_с_земли
- D 0 - - - 0x018C1C 0C:8C0C: 77 97     .word _off000_9777_1A_удар_оверхед
- D 0 - - - 0x018C1E 0C:8C0E: 1E 9B     .word _off000_9B1E_1B_удар_головой
- D 0 - - - 0x018C20 0C:8C10: D3 9E     .word _off000_9ED3_1C
- D 0 - - - 0x018C22 0C:8C12: CD 9A     .word _off000_9ACD_1D_удар_соды
- D 0 - - - 0x018C24 0C:8C14: 50 9B     .word _off000_9B50_1E
- D 0 - - - 0x018C26 0C:8C16: 9D 9B     .word _off000_9B9D_1F
- D 0 - - - 0x018C28 0C:8C18: 98 9E     .word _off000_9E98_20
- D 0 - - - 0x018C2A 0C:8C1A: B4 BF     .word _off000_0x01BFC4_21
- D 0 - - - 0x018C2C 0C:8C1C: F7 9E     .word _off000_9EF7_22
- D 0 - - - 0x018C2E 0C:8C1E: 2D 95     .word _off000_952D_23_мощный_удар_с_земли
- D 0 - - - 0x018C30 0C:8C20: 57 95     .word _off000_9557_24_полет_циклона
- D 0 - - - 0x018C32 0C:8C22: EE 9C     .word _off000_9CEE_25_прыжок
- D 0 - - - 0x018C34 0C:8C24: 58 9D     .word _off000_9D58_26_разгон_перед_подкатом
- D 0 - - - 0x018C36 0C:8C26: 73 9D     .word _off000_9D73_27_силовой_дриблинг
- D 0 - - - 0x018C38 0C:8C28: 55 9A     .word _off000_9A55_28_подкат
- D 0 - - - 0x018C3A 0C:8C2A: D6 97     .word _off000_97D6_29
- D 0 - - - 0x018C3C 0C:8C2C: 77 9A     .word _off000_9A77_2A_ловля_мяча          ; также перехват мяча ногой когда он приклеивается
- D 0 - - - 0x018C3E 0C:8C2E: 53 94     .word _off000_9453_2B_отбитие_мяча        ; также принятие на ногу
- D 0 - - - 0x018C40 0C:8C30: 03 98     .word _off000_9803_2C_принятие_мяча
- D 0 - - - 0x018C42 0C:8C32: 9A 9A     .word _off000_9A9A_2D_удар_мяча_об_живот
- D 0 - - - 0x018C44 0C:8C34: 9D 97     .word _off000_979D_2E
- D 0 - - - 0x018C46 0C:8C36: 1B 98     .word _off000_981B_2F
- D 0 - - - 0x018C48 0C:8C38: 13 9C     .word _off000_9C13_30_гроза
- - - - - - 0x018C4A 0C:8C3A: FE 9F     .word $0000
; музыка
- D 0 - - - 0x018C4C 0C:8C3C: 00 A0     .word _off001_0x01A010_32_музыка_добавочное_время
- D 0 - - - 0x018C4E 0C:8C3E: AA A2     .word _off001_0x01A2BA_33_музыка_пенальти
- D 0 - - - 0x018C50 0C:8C40: 0B A4     .word _off001_0x01A41B_34_музыка_соперник_национальный_чемпионат
- D 0 - - - 0x018C52 0C:8C42: C6 A5     .word _off001_0x01A5D6_35_музыка_соперник_кубок_рио
- D 0 - - - 0x018C54 0C:8C44: 8D B6     .word _off001_0x01B69D_36_музыка_соперник_4_1
- D 0 - - - 0x018C56 0C:8C46: 61 A7     .word _off001_0x01A771_37_музыка_тохо
- D 0 - - - 0x018C58 0C:8C48: 79 AC     .word _off001_0x01AC89_38_музыка_германия
- D 0 - - - 0x018C5A 0C:8C4A: FA AF     .word _off001_0x01B00A_39_музыка_nankatsu
- D 0 - - - 0x018C5C 0C:8C4C: E0 B1     .word _off001_0x01B1F0_3A_музыка_соперник_азия
- D 0 - - - 0x018C5E 0C:8C4E: 2D B3     .word _off001_0x01B33D_3B_музыка_соперник_кубок_japan
- D 0 - - - 0x018C60 0C:8C50: 14 B5     .word _off001_0x01B524_3C_музыка_sao_paulo
- D 0 - - - 0x018C62 0C:8C52: 2C B9     .word _off001_0x01B93C_3D_музыка_соперник_кубок_мира
- D 0 - - - 0x018C64 0C:8C54: 9E BB     .word _off001_0x01BBAE_3E_музыка_соперник_бразилия
- D 0 - - - 0x018C66 0C:8C56: 29 B7     .word _off001_0x01B739_3F_музыка_japan
- D 0 - - - 0x018C68 0C:8C58: B3 BD     .word _off001_0x01BDC3_40_музыка_соперник_фламенго
- D 0 - - - 0x018C6A 0C:8C5A: 2A AB     .word _off001_0x01AB3A_41_музыка_гол_в_ворота_соперника
- D 0 - - - 0x018C6C 0C:8C5C: D5 AB     .word _off001_0x01ABE5_42_музыка_гол_в_ворота_команды
- D 0 - - - 0x018C6E 0C:8C5E: EA B8     .word _off001_0x01B8FA_43_музыка_нарушение
- D 0 - - - 0x018C70 0C:8C60: C0 8C     .word _off001_8CC0_44_музыка_ожидание_разводки
- D 0 - - - 0x018C72 0C:8C62: 64 A9     .word _off001_0x01C974_45_музыка_логотипа
- D 0 - - - 0x018C74 0C:8C64: 85 AA     .word _off001_0x01CA95_46_музыка_поля
- D 0 - - - 0x018C76 0C:8C66: 2A AC     .word _off001_0x01CC3A_47
- D 0 - - - 0x018C78 0C:8C68: 7A B0     .word _off001_0x01D08A_48_музыка_романтика
- D 0 - - - 0x018C7A 0C:8C6A: F3 B2     .word _off001_0x01D303_49_музыка_тревожная
- - - - - - 0x018C7C 0C:8C6C: 42 8E     .word _off001_8E42_01_выключить_музыку_и_звуки
- D 0 - - - 0x018C7E 0C:8C6E: E8 AD     .word _off001_0x01CDF8_4B_музыка_дождь
- D 0 - - - 0x018C80 0C:8C70: 99 A3     .word _off001_0x01C3A9_4C_музыка_последний_матч
- D 0 - - - 0x018C82 0C:8C72: 00 A0     .word _off001_0x01C010_4D
- D 0 - - - 0x018C84 0C:8C74: 1F B8     .word _off001_0x01D82F_4E
- D 0 - - - 0x018C86 0C:8C76: 9C B3     .word _off001_0x01D3AC_4F_музыка_победа_над_бразилией
- D 0 - - - 0x018C88 0C:8C78: 01 BB     .word _off001_0x01DB11_50_музыка_романтика
- D 0 - - - 0x018C8A 0C:8C7A: A8 AA     .word _off001_0x01EAB8_51_музыка_поле
- D 0 - - - 0x018C8C 0C:8C7C: 57 A1     .word _off001_0x01E167_52_мелодия_неожиданность
- D 0 - - - 0x018C8E 0C:8C7E: E0 A5     .word _off001_0x01E5F0_53
- D 0 - - - 0x018C90 0C:8C80: 48 A8     .word _off001_0x01E858_54_музыка_коимбра
- D 0 - - - 0x018C92 0C:8C82: 0F A3     .word _off001_0x01E31F_55_музыка_меню
- D 0 - - - 0x018C94 0C:8C84: D9 A7     .word _off001_0x01E7E9_56_мелодия_проигрыш
- D 0 - - - 0x018C96 0C:8C86: F8 A1     .word _off001_0x01E208_57
- D 0 - - - 0x018C98 0C:8C88: AD B7     .word _off001_0x01F7BD_58_музыка_заставка
- D 0 - - - 0x018C9A 0C:8C8A: 59 AC     .word _off001_0x01EC69_59_музыка_титры
- D 0 - - - 0x018C9C 0C:8C8C: 00 A0     .word _off001_0x01E010_5A
- - - - - - 0x018C9E 0C:8C8E: FE 9F     .word $0000
- - - - - - 0x018CA0 0C:8C90: FE 9F     .word $0000
; звуки
- D 0 - - - 0x018CA2 0C:8C92: 74 98     .word _off000_9874_5D_звук_гол
- D 0 - - - 0x018CA4 0C:8C94: F6 90     .word _off000_90F6_5E_полет_спешала
- D 0 - - - 0x018CA6 0C:8C96: 46 9F     .word _off000_9F46_5F_полет_спешала
- D 0 - - - 0x018CA8 0C:8C98: 7E 98     .word _off000_987E_60_звук_гол
- D 0 - - - 0x018CAA 0C:8C9A: BD 98     .word _off000_98BD_61_звук_рваная_сетка
- D 0 - - - 0x018CAC 0C:8C9C: 44 99     .word _off000_9944_62_звук_громкие_зрители
- D 0 - - - 0x018CAE 0C:8C9E: 8E 99     .word _off000_998E_63_звук_штанга
- D 0 - - - 0x018CB0 0C:8CA0: CB 9C     .word _off000_9CCB_64_звук_отскок_мяча_от_земли
- D 0 - - - 0x018CB2 0C:8CA2: B4 99     .word _off000_99B4_65_звук_рваный_мяч
- D 0 - - - 0x018CB4 0C:8CA4: FC 99     .word _off000_99FC_66_звук_свисток
- D 0 - - - 0x018CB6 0C:8CA6: 1E 9A     .word _off000_9A1E_67_свисток_с_нарушением
- D 0 - - - 0x018CB8 0C:8CA8: E7 99     .word _off000_99E7_68_звук_дриблинг
- D 0 - - - 0x018CBA 0C:8CAA: 9C 9F     .word _off000_9F9C_69_звук_тихие_зрители
- D 0 - - - 0x018CBC 0C:8CAC: 35 9C     .word _off000_9C35_6A_звук_самолет
- D 0 - - - 0x018CBE 0C:8CAE: CA 9F     .word _off000_9FCA_6B_звук_замах_джаиро
- D 0 - - - 0x018CC0 0C:8CB0: F3 9B     .word _off000_9BF3_6C_звук_часы_конец
- D 0 - - - 0x018CC2 0C:8CB2: 08 9D     .word _off000_9D08_6D
- D 0 - - - 0x018CC4 0C:8CB4: 5D 9E     .word _off000_9E5D_6E_звук_часы_тикают
- D 0 - - - 0x018CC6 0C:8CB6: 21 9E     .word _off000_9E21_6F_мелодия_новый_уровень
- D 0 - - - 0x018CC8 0C:8CB8: B5 9C     .word _off000_9CB5_70
- - - - - - 0x018CCA 0C:8CBA: B5 9C     .word _off000_9CB5_70
- - - - - - 0x018CCC 0C:8CBC: B5 9C     .word _off000_9CB5_70
- - - - - - 0x018CCE 0C:8CBE: 42 8E     .word _off001_8E42_01_выключить_музыку_и_звуки

; прыжки в 0x0184EA
; E0 = 
; E1 = 
; E2 = 
; E3 = громкость
; E4 = 
; E5 = 
; E6 = 
; E7 = 
; E8 = jmp
; E9 = jsr (могут быть вложенные jsr)
; EA = rts
; EB = 
; EC = 
; ED = 
; EE = 
; EF = 
; F0 = 
; F1 = 
; F2 = 
; F3 = 
; F4 = 
; F5 = 
; F6 = 
; F7 = 
; F8 = 
; F9 = 
; FA = 
; FB = 
; FC = 
; FD = 
; FE = 
; FF = 

_off001_8CC0_44_музыка_ожидание_разводки:
- D 0 - I - 0x018CD0 0C:8CC0: 00        .byte $00
- D 0 - I - 0x018CD1 0C:8CC1: D2 8C     .word off_8CD2_выкл
- D 0 - I - 0x018CD3 0C:8CC3: 01        .byte $01
- D 0 - I - 0x018CD4 0C:8CC4: D2 8C     .word off_8CD2_выкл
- D 0 - I - 0x018CD6 0C:8CC6: 04        .byte $04
- D 0 - I - 0x018CD7 0C:8CC7: D3 8C     .word off_8CD3_44_04
- D 0 - I - 0x018CD9 0C:8CC9: 05        .byte $05
- D 0 - I - 0x018CDA 0C:8CCA: ED BE     .word off_0x01DEFD_44_05
- D 0 - I - 0x018CDC 0C:8CCC: 06        .byte $06
- D 0 - I - 0x018CDD 0C:8CCD: 46 BF     .word off_0x01DF56_44_06
- D 0 - I - 0x018CDF 0C:8CCF: 07        .byte $07
- D 0 - I - 0x018CE0 0C:8CD0: B7 BF     .word off_0x01DFC7_44_07
off_8CD2_выкл:
- D 0 - I - 0x018CE2 0C:8CD2: FF        .byte $FF



off_8CD3_44_04:
- D 0 - I - 0x018CE3 0C:8CD3: E0        .byte $E0
- D 0 - I - 0x018CE4 0C:8CD4: 31        .byte $31
- D 0 - I - 0x018CE5 0C:8CD5: E2        .byte $E2
- D 0 - I - 0x018CE6 0C:8CD6: 00        .byte $00
- D 0 - I - 0x018CE7 0C:8CD7: E3        .byte $E3
- D 0 - I - 0x018CE8 0C:8CD8: 0F        .byte $0F
- D 0 - I - 0x018CE9 0C:8CD9: AE        .byte $AE
- D 0 - I - 0x018CEA 0C:8CDA: 0C        .byte $0C
loc_E8_8CDB:
- D 0 - I - 0x018CEB 0C:8CDB: E0        .byte $E0
- D 0 - I - 0x018CEC 0C:8CDC: 31        .byte $31
- D 0 - I - 0x018CED 0C:8CDD: 90        .byte $90
- D 0 - I - 0x018CEE 0C:8CDE: 0C        .byte $0C
- D 0 - I - 0x018CEF 0C:8CDF: E3        .byte $E3
- D 0 - I - 0x018CF0 0C:8CE0: 06        .byte $06
- D 0 - I - 0x018CF1 0C:8CE1: 84        .byte $84
- D 0 - I - 0x018CF2 0C:8CE2: 33        .byte $33
- D 0 - I - 0x018CF3 0C:8CE3: F3        .byte $F3
- D 0 - I - 0x018CF4 0C:8CE4: 8E        .byte $8E
- D 0 - I - 0x018CF5 0C:8CE5: 34        .byte $34
- D 0 - I - 0x018CF6 0C:8CE6: F4        .byte $F4
- D 0 - I - 0x018CF7 0C:8CE7: 83        .byte $83
- D 0 - I - 0x018CF8 0C:8CE8: 34        .byte $34
- D 0 - I - 0x018CF9 0C:8CE9: F3        .byte $F3
- D 0 - I - 0x018CFA 0C:8CEA: 87        .byte $87
- D 0 - I - 0x018CFB 0C:8CEB: 34        .byte $34
- D 0 - I - 0x018CFC 0C:8CEC: ED        .byte $ED
- D 0 - I - 0x018CFD 0C:8CED: 01        .byte $01
- D 0 - I - 0x018CFE 0C:8CEE: 8A        .byte $8A
- D 0 - I - 0x018CFF 0C:8CEF: 34        .byte $34
- D 0 - I - 0x018D00 0C:8CF0: ED        .byte $ED
- D 0 - I - 0x018D01 0C:8CF1: 02        .byte $02
- D 0 - I - 0x018D02 0C:8CF2: 90        .byte $90
- D 0 - I - 0x018D03 0C:8CF3: 34        .byte $34
- D 0 - I - 0x018D04 0C:8CF4: F4        .byte $F4
- D 0 - I - 0x018D05 0C:8CF5: EF        .byte $EF
- D 0 - I - 0x018D06 0C:8CF6: 83        .byte $83
- D 0 - I - 0x018D07 0C:8CF7: 33        .byte $33
- D 0 - I - 0x018D08 0C:8CF8: F3        .byte $F3
- D 0 - I - 0x018D09 0C:8CF9: 87        .byte $87
- D 0 - I - 0x018D0A 0C:8CFA: 34        .byte $34
- D 0 - I - 0x018D0B 0C:8CFB: F4        .byte $F4
- D 0 - I - 0x018D0C 0C:8CFC: 8A        .byte $8A
- D 0 - I - 0x018D0D 0C:8CFD: 34        .byte $34
- D 0 - I - 0x018D0E 0C:8CFE: 34        .byte $34
- D 0 - I - 0x018D0F 0C:8CFF: 34        .byte $34
- D 0 - I - 0x018D10 0C:8D00: 34        .byte $34
- D 0 - I - 0x018D11 0C:8D01: 34        .byte $34
- D 0 - I - 0x018D12 0C:8D02: 37        .byte $37
- D 0 - I - 0x018D13 0C:8D03: 34        .byte $34
- D 0 - I - 0x018D14 0C:8D04: 0C        .byte $0C
- D 0 - I - 0x018D15 0C:8D05: 83        .byte $83
- D 0 - I - 0x018D16 0C:8D06: 33        .byte $33
- D 0 - I - 0x018D17 0C:8D07: F3        .byte $F3
- D 0 - I - 0x018D18 0C:8D08: 87        .byte $87
- D 0 - I - 0x018D19 0C:8D09: 34        .byte $34
- D 0 - I - 0x018D1A 0C:8D0A: F4        .byte $F4
- D 0 - I - 0x018D1B 0C:8D0B: 8A        .byte $8A
- D 0 - I - 0x018D1C 0C:8D0C: 34        .byte $34
- D 0 - I - 0x018D1D 0C:8D0D: 34        .byte $34
- D 0 - I - 0x018D1E 0C:8D0E: 83        .byte $83
- D 0 - I - 0x018D1F 0C:8D0F: 33        .byte $33
- D 0 - I - 0x018D20 0C:8D10: F3        .byte $F3
- D 0 - I - 0x018D21 0C:8D11: 87        .byte $87
- D 0 - I - 0x018D22 0C:8D12: 34        .byte $34
- D 0 - I - 0x018D23 0C:8D13: ED        .byte $ED
- D 0 - I - 0x018D24 0C:8D14: 01        .byte $01
- D 0 - I - 0x018D25 0C:8D15: 8A        .byte $8A
- D 0 - I - 0x018D26 0C:8D16: 34        .byte $34
- D 0 - I - 0x018D27 0C:8D17: ED        .byte $ED
- D 0 - I - 0x018D28 0C:8D18: 02        .byte $02
- D 0 - I - 0x018D29 0C:8D19: 90        .byte $90
- D 0 - I - 0x018D2A 0C:8D1A: 34        .byte $34
- D 0 - I - 0x018D2B 0C:8D1B: F4        .byte $F4
- D 0 - I - 0x018D2C 0C:8D1C: EF        .byte $EF
- D 0 - I - 0x018D2D 0C:8D1D: 8A        .byte $8A
- D 0 - I - 0x018D2E 0C:8D1E: 34        .byte $34
- D 0 - I - 0x018D2F 0C:8D1F: 34        .byte $34
- D 0 - I - 0x018D30 0C:8D20: 83        .byte $83
- D 0 - I - 0x018D31 0C:8D21: 36        .byte $36
- D 0 - I - 0x018D32 0C:8D22: F3        .byte $F3
- D 0 - I - 0x018D33 0C:8D23: 87        .byte $87
- D 0 - I - 0x018D34 0C:8D24: 37        .byte $37
- D 0 - I - 0x018D35 0C:8D25: F4        .byte $F4
- D 0 - I - 0x018D36 0C:8D26: 8A        .byte $8A
- D 0 - I - 0x018D37 0C:8D27: 34        .byte $34
- D 0 - I - 0x018D38 0C:8D28: F3        .byte $F3
- D 0 - I - 0x018D39 0C:8D29: ED        .byte $ED
- D 0 - I - 0x018D3A 0C:8D2A: 01        .byte $01
- D 0 - I - 0x018D3B 0C:8D2B: 34        .byte $34
- D 0 - I - 0x018D3C 0C:8D2C: ED        .byte $ED
- D 0 - I - 0x018D3D 0C:8D2D: 02        .byte $02
- D 0 - I - 0x018D3E 0C:8D2E: 90        .byte $90
- D 0 - I - 0x018D3F 0C:8D2F: 34        .byte $34
- D 0 - I - 0x018D40 0C:8D30: F4        .byte $F4
- D 0 - I - 0x018D41 0C:8D31: EF        .byte $EF
- D 0 - I - 0x018D42 0C:8D32: 95        .byte $95
- D 0 - I - 0x018D43 0C:8D33: 0C        .byte $0C
- D 0 - I - 0x018D44 0C:8D34: 8A        .byte $8A
- D 0 - I - 0x018D45 0C:8D35: 35        .byte $35
- D 0 - I - 0x018D46 0C:8D36: 35        .byte $35
- D 0 - I - 0x018D47 0C:8D37: 35        .byte $35
- D 0 - I - 0x018D48 0C:8D38: 90        .byte $90
- D 0 - I - 0x018D49 0C:8D39: 35        .byte $35
- D 0 - I - 0x018D4A 0C:8D3A: 8A        .byte $8A
- D 0 - I - 0x018D4B 0C:8D3B: 0C        .byte $0C
- D 0 - I - 0x018D4C 0C:8D3C: 83        .byte $83
- D 0 - I - 0x018D4D 0C:8D3D: 36        .byte $36
- D 0 - I - 0x018D4E 0C:8D3E: F3        .byte $F3
- D 0 - I - 0x018D4F 0C:8D3F: 87        .byte $87
- D 0 - I - 0x018D50 0C:8D40: 37        .byte $37
- D 0 - I - 0x018D51 0C:8D41: F4        .byte $F4
- D 0 - I - 0x018D52 0C:8D42: 8A        .byte $8A
- D 0 - I - 0x018D53 0C:8D43: 35        .byte $35
- D 0 - I - 0x018D54 0C:8D44: 34        .byte $34
- D 0 - I - 0x018D55 0C:8D45: 35        .byte $35
- D 0 - I - 0x018D56 0C:8D46: F3        .byte $F3
- D 0 - I - 0x018D57 0C:8D47: ED        .byte $ED
- D 0 - I - 0x018D58 0C:8D48: 01        .byte $01
- D 0 - I - 0x018D59 0C:8D49: 35        .byte $35
- D 0 - I - 0x018D5A 0C:8D4A: ED        .byte $ED
- D 0 - I - 0x018D5B 0C:8D4B: 02        .byte $02
- D 0 - I - 0x018D5C 0C:8D4C: 90        .byte $90
- D 0 - I - 0x018D5D 0C:8D4D: 35        .byte $35
- D 0 - I - 0x018D5E 0C:8D4E: F4        .byte $F4
- D 0 - I - 0x018D5F 0C:8D4F: EF        .byte $EF
- D 0 - I - 0x018D60 0C:8D50: 95        .byte $95
- D 0 - I - 0x018D61 0C:8D51: 0C        .byte $0C
- D 0 - I - 0x018D62 0C:8D52: 84        .byte $84
- D 0 - I - 0x018D63 0C:8D53: 38        .byte $38
- D 0 - I - 0x018D64 0C:8D54: F3        .byte $F3
- D 0 - I - 0x018D65 0C:8D55: 8E        .byte $8E
- D 0 - I - 0x018D66 0C:8D56: 39        .byte $39
- D 0 - I - 0x018D67 0C:8D57: F4        .byte $F4
- D 0 - I - 0x018D68 0C:8D58: 90        .byte $90
- D 0 - I - 0x018D69 0C:8D59: 37        .byte $37
- D 0 - I - 0x018D6A 0C:8D5A: 35        .byte $35
- D 0 - I - 0x018D6B 0C:8D5B: 83        .byte $83
- D 0 - I - 0x018D6C 0C:8D5C: 36        .byte $36
- D 0 - I - 0x018D6D 0C:8D5D: F3        .byte $F3
- D 0 - I - 0x018D6E 0C:8D5E: 87        .byte $87
- D 0 - I - 0x018D6F 0C:8D5F: 37        .byte $37
- D 0 - I - 0x018D70 0C:8D60: F4        .byte $F4
- D 0 - I - 0x018D71 0C:8D61: 90        .byte $90
- D 0 - I - 0x018D72 0C:8D62: 35        .byte $35
- D 0 - I - 0x018D73 0C:8D63: 34        .byte $34
- D 0 - I - 0x018D74 0C:8D64: 32        .byte $32
- D 0 - I - 0x018D75 0C:8D65: 8A        .byte $8A
- D 0 - I - 0x018D76 0C:8D66: 0C        .byte $0C
- D 0 - I - 0x018D77 0C:8D67: 83        .byte $83
- D 0 - I - 0x018D78 0C:8D68: 2B        .byte $2B
- D 0 - I - 0x018D79 0C:8D69: F3        .byte $F3
- D 0 - I - 0x018D7A 0C:8D6A: 87        .byte $87
- D 0 - I - 0x018D7B 0C:8D6B: 30        .byte $30
- D 0 - I - 0x018D7C 0C:8D6C: F4        .byte $F4
- D 0 - I - 0x018D7D 0C:8D6D: 90        .byte $90
- D 0 - I - 0x018D7E 0C:8D6E: 32        .byte $32
- D 0 - I - 0x018D7F 0C:8D6F: 39        .byte $39
- D 0 - I - 0x018D80 0C:8D70: 37        .byte $37
- D 0 - I - 0x018D81 0C:8D71: 8A        .byte $8A
- D 0 - I - 0x018D82 0C:8D72: 0C        .byte $0C
- D 0 - I - 0x018D83 0C:8D73: 83        .byte $83
- D 0 - I - 0x018D84 0C:8D74: 3A        .byte $3A
- D 0 - I - 0x018D85 0C:8D75: F3        .byte $F3
- D 0 - I - 0x018D86 0C:8D76: 93        .byte $93
- D 0 - I - 0x018D87 0C:8D77: 3B        .byte $3B
- D 0 - I - 0x018D88 0C:8D78: F4        .byte $F4
- D 0 - I - 0x018D89 0C:8D79: 95        .byte $95
- D 0 - I - 0x018D8A 0C:8D7A: 37        .byte $37
- D 0 - I - 0x018D8B 0C:8D7B: 90        .byte $90
- D 0 - I - 0x018D8C 0C:8D7C: 42        .byte $42
- D 0 - I - 0x018D8D 0C:8D7D: 40        .byte $40
- D 0 - I - 0x018D8E 0C:8D7E: F3        .byte $F3
- D 0 - I - 0x018D8F 0C:8D7F: ED        .byte $ED
- D 0 - I - 0x018D90 0C:8D80: 01        .byte $01
- D 0 - I - 0x018D91 0C:8D81: 40        .byte $40
- D 0 - I - 0x018D92 0C:8D82: ED        .byte $ED
- D 0 - I - 0x018D93 0C:8D83: 02        .byte $02
- D 0 - I - 0x018D94 0C:8D84: 98        .byte $98
- D 0 - I - 0x018D95 0C:8D85: 40        .byte $40
- D 0 - I - 0x018D96 0C:8D86: F4        .byte $F4
- D 0 - I - 0x018D97 0C:8D87: EF        .byte $EF
- D 0 - I - 0x018D98 0C:8D88: A0        .byte $A0
- D 0 - I - 0x018D99 0C:8D89: 0C        .byte $0C
- D 0 - I - 0x018D9A 0C:8D8A: 8A        .byte $8A
- D 0 - I - 0x018D9B 0C:8D8B: 0C        .byte $0C
- D 0 - I - 0x018D9C 0C:8D8C: 30        .byte $30
- D 0 - I - 0x018D9D 0C:8D8D: 32        .byte $32
- D 0 - I - 0x018D9E 0C:8D8E: 34        .byte $34
- D 0 - I - 0x018D9F 0C:8D8F: 32        .byte $32
- D 0 - I - 0x018DA0 0C:8D90: 34        .byte $34
- D 0 - I - 0x018DA1 0C:8D91: 35        .byte $35
- D 0 - I - 0x018DA2 0C:8D92: 84        .byte $84
- D 0 - I - 0x018DA3 0C:8D93: 36        .byte $36
- D 0 - I - 0x018DA4 0C:8D94: F3        .byte $F3
- D 0 - I - 0x018DA5 0C:8D95: 8E        .byte $8E
- D 0 - I - 0x018DA6 0C:8D96: 37        .byte $37
- D 0 - I - 0x018DA7 0C:8D97: F4        .byte $F4
- D 0 - I - 0x018DA8 0C:8D98: 8A        .byte $8A
- D 0 - I - 0x018DA9 0C:8D99: 37        .byte $37
- D 0 - I - 0x018DAA 0C:8D9A: 90        .byte $90
- D 0 - I - 0x018DAB 0C:8D9B: 35        .byte $35
- D 0 - I - 0x018DAC 0C:8D9C: 87        .byte $87
- D 0 - I - 0x018DAD 0C:8D9D: 34        .byte $34
- D 0 - I - 0x018DAE 0C:8D9E: 86        .byte $86
- D 0 - I - 0x018DAF 0C:8D9F: 35        .byte $35
- D 0 - I - 0x018DB0 0C:8DA0: 87        .byte $87
- D 0 - I - 0x018DB1 0C:8DA1: 34        .byte $34
- D 0 - I - 0x018DB2 0C:8DA2: 8A        .byte $8A
- D 0 - I - 0x018DB3 0C:8DA3: 32        .byte $32
- D 0 - I - 0x018DB4 0C:8DA4: 30        .byte $30
- D 0 - I - 0x018DB5 0C:8DA5: 0C        .byte $0C
- D 0 - I - 0x018DB6 0C:8DA6: 29        .byte $29
- D 0 - I - 0x018DB7 0C:8DA7: 2B        .byte $2B
- D 0 - I - 0x018DB8 0C:8DA8: 30        .byte $30
- D 0 - I - 0x018DB9 0C:8DA9: 87        .byte $87
- D 0 - I - 0x018DBA 0C:8DAA: 32        .byte $32
- D 0 - I - 0x018DBB 0C:8DAB: 86        .byte $86
- D 0 - I - 0x018DBC 0C:8DAC: 34        .byte $34
- D 0 - I - 0x018DBD 0C:8DAD: 87        .byte $87
- D 0 - I - 0x018DBE 0C:8DAE: 32        .byte $32
- D 0 - I - 0x018DBF 0C:8DAF: 8A        .byte $8A
- D 0 - I - 0x018DC0 0C:8DB0: 30        .byte $30
- D 0 - I - 0x018DC1 0C:8DB1: 2B        .byte $2B
- D 0 - I - 0x018DC2 0C:8DB2: 30        .byte $30
- D 0 - I - 0x018DC3 0C:8DB3: 27        .byte $27
- D 0 - I - 0x018DC4 0C:8DB4: 29        .byte $29
- D 0 - I - 0x018DC5 0C:8DB5: 2B        .byte $2B
- D 0 - I - 0x018DC6 0C:8DB6: 30        .byte $30
- D 0 - I - 0x018DC7 0C:8DB7: 32        .byte $32
- D 0 - I - 0x018DC8 0C:8DB8: 34        .byte $34
- D 0 - I - 0x018DC9 0C:8DB9: 35        .byte $35
- D 0 - I - 0x018DCA 0C:8DBA: 0C        .byte $0C
- D 0 - I - 0x018DCB 0C:8DBB: EB        .byte $EB
- D 0 - I - 0x018DCC 0C:8DBC: 02        .byte $02
- D 0 - I - 0x018DCD 0C:8DBD: 83        .byte $83
- D 0 - I - 0x018DCE 0C:8DBE: 36        .byte $36
- D 0 - I - 0x018DCF 0C:8DBF: F3        .byte $F3
- D 0 - I - 0x018DD0 0C:8DC0: 87        .byte $87
- D 0 - I - 0x018DD1 0C:8DC1: 37        .byte $37
- D 0 - I - 0x018DD2 0C:8DC2: F4        .byte $F4
- D 0 - I - 0x018DD3 0C:8DC3: 8A        .byte $8A
- D 0 - I - 0x018DD4 0C:8DC4: 35        .byte $35
- D 0 - I - 0x018DD5 0C:8DC5: 34        .byte $34
- D 0 - I - 0x018DD6 0C:8DC6: EC        .byte $EC
- D 0 - I - 0x018DD7 0C:8DC7: 84        .byte $84
- D 0 - I - 0x018DD8 0C:8DC8: 38        .byte $38
- D 0 - I - 0x018DD9 0C:8DC9: F3        .byte $F3
- D 0 - I - 0x018DDA 0C:8DCA: 8E        .byte $8E
- D 0 - I - 0x018DDB 0C:8DCB: 39        .byte $39
- D 0 - I - 0x018DDC 0C:8DCC: F4        .byte $F4
- D 0 - I - 0x018DDD 0C:8DCD: 8A        .byte $8A
- D 0 - I - 0x018DDE 0C:8DCE: 39        .byte $39
- D 0 - I - 0x018DDF 0C:8DCF: 90        .byte $90
- D 0 - I - 0x018DE0 0C:8DD0: 37        .byte $37
- D 0 - I - 0x018DE1 0C:8DD1: 87        .byte $87
- D 0 - I - 0x018DE2 0C:8DD2: 35        .byte $35
- D 0 - I - 0x018DE3 0C:8DD3: 86        .byte $86
- D 0 - I - 0x018DE4 0C:8DD4: 37        .byte $37
- D 0 - I - 0x018DE5 0C:8DD5: 87        .byte $87
- D 0 - I - 0x018DE6 0C:8DD6: 35        .byte $35
- D 0 - I - 0x018DE7 0C:8DD7: 8A        .byte $8A
- D 0 - I - 0x018DE8 0C:8DD8: 34        .byte $34
- D 0 - I - 0x018DE9 0C:8DD9: 32        .byte $32
- D 0 - I - 0x018DEA 0C:8DDA: 31        .byte $31
- D 0 - I - 0x018DEB 0C:8DDB: 32        .byte $32
- D 0 - I - 0x018DEC 0C:8DDC: 34        .byte $34
- D 0 - I - 0x018DED 0C:8DDD: 32        .byte $32
- D 0 - I - 0x018DEE 0C:8DDE: 34        .byte $34
- D 0 - I - 0x018DEF 0C:8DDF: 35        .byte $35
- D 0 - I - 0x018DF0 0C:8DE0: 34        .byte $34
- D 0 - I - 0x018DF1 0C:8DE1: 35        .byte $35
- D 0 - I - 0x018DF2 0C:8DE2: 37        .byte $37
- D 0 - I - 0x018DF3 0C:8DE3: 35        .byte $35
- D 0 - I - 0x018DF4 0C:8DE4: 37        .byte $37
- D 0 - I - 0x018DF5 0C:8DE5: 39        .byte $39
- D 0 - I - 0x018DF6 0C:8DE6: 37        .byte $37
- D 0 - I - 0x018DF7 0C:8DE7: 39        .byte $39
- D 0 - I - 0x018DF8 0C:8DE8: 3B        .byte $3B
- D 0 - I - 0x018DF9 0C:8DE9: 40        .byte $40
- D 0 - I - 0x018DFA 0C:8DEA: EB        .byte $EB
- D 0 - I - 0x018DFB 0C:8DEB: 02        .byte $02
- D 0 - I - 0x018DFC 0C:8DEC: E9        .byte $E9
- D 0 - I - 0x018DFD 0C:8DED: 25 8E     .word sub_E9_8E25
- D 0 - I - 0x018DFF 0C:8DEF: 8A        .byte $8A
- D 0 - I - 0x018E00 0C:8DF0: 40        .byte $40
- D 0 - I - 0x018E01 0C:8DF1: 40        .byte $40
- D 0 - I - 0x018E02 0C:8DF2: E9        .byte $E9
- D 0 - I - 0x018E03 0C:8DF3: 25 8E     .word sub_E9_8E25
- D 0 - I - 0x018E05 0C:8DF5: 8A        .byte $8A
- D 0 - I - 0x018E06 0C:8DF6: 40        .byte $40
- D 0 - I - 0x018E07 0C:8DF7: 40        .byte $40
- D 0 - I - 0x018E08 0C:8DF8: E9        .byte $E9
- D 0 - I - 0x018E09 0C:8DF9: 25 8E     .word sub_E9_8E25
- D 0 - I - 0x018E0B 0C:8DFB: 8A        .byte $8A
- D 0 - I - 0x018E0C 0C:8DFC: 40        .byte $40
- D 0 - I - 0x018E0D 0C:8DFD: EC        .byte $EC
- D 0 - I - 0x018E0E 0C:8DFE: 90        .byte $90
- D 0 - I - 0x018E0F 0C:8DFF: 40        .byte $40
- D 0 - I - 0x018E10 0C:8E00: F3        .byte $F3
- D 0 - I - 0x018E11 0C:8E01: ED        .byte $ED
- D 0 - I - 0x018E12 0C:8E02: 01        .byte $01
- D 0 - I - 0x018E13 0C:8E03: 40        .byte $40
- D 0 - I - 0x018E14 0C:8E04: ED        .byte $ED
- D 0 - I - 0x018E15 0C:8E05: 02        .byte $02
- D 0 - I - 0x018E16 0C:8E06: 98        .byte $98
- D 0 - I - 0x018E17 0C:8E07: 40        .byte $40
- D 0 - I - 0x018E18 0C:8E08: F4        .byte $F4
- D 0 - I - 0x018E19 0C:8E09: EF        .byte $EF
- D 0 - I - 0x018E1A 0C:8E0A: E0        .byte $E0
- D 0 - I - 0x018E1B 0C:8E0B: 17        .byte $17
- D 0 - I - 0x018E1C 0C:8E0C: E3        .byte $E3
- D 0 - I - 0x018E1D 0C:8E0D: 0A        .byte $0A
- D 0 - I - 0x018E1E 0C:8E0E: 82        .byte $82
- D 0 - I - 0x018E1F 0C:8E0F: 50        .byte $50
- D 0 - I - 0x018E20 0C:8E10: 4B        .byte $4B
- D 0 - I - 0x018E21 0C:8E11: 49        .byte $49
- D 0 - I - 0x018E22 0C:8E12: 47        .byte $47
- D 0 - I - 0x018E23 0C:8E13: 45        .byte $45
- D 0 - I - 0x018E24 0C:8E14: 44        .byte $44
- D 0 - I - 0x018E25 0C:8E15: 42        .byte $42
- D 0 - I - 0x018E26 0C:8E16: 40        .byte $40
- D 0 - I - 0x018E27 0C:8E17: 83        .byte $83
- D 0 - I - 0x018E28 0C:8E18: 3B        .byte $3B
- D 0 - I - 0x018E29 0C:8E19: 39        .byte $39
- D 0 - I - 0x018E2A 0C:8E1A: 37        .byte $37
- D 0 - I - 0x018E2B 0C:8E1B: 35        .byte $35
- D 0 - I - 0x018E2C 0C:8E1C: 34        .byte $34
- D 0 - I - 0x018E2D 0C:8E1D: 32        .byte $32
- D 0 - I - 0x018E2E 0C:8E1E: 30        .byte $30
- D 0 - I - 0x018E2F 0C:8E1F: 2B        .byte $2B
- D 0 - I - 0x018E30 0C:8E20: 98        .byte $98
- D 0 - I - 0x018E31 0C:8E21: 0C        .byte $0C
- D 0 - I - 0x018E32 0C:8E22: E8        .byte $E8
- D 0 - I - 0x018E33 0C:8E23: DB 8C     .word loc_E8_8CDB



sub_E9_8E25:
- D 0 - I - 0x018E35 0C:8E25: 82        .byte $82
- D 0 - I - 0x018E36 0C:8E26: 3B        .byte $3B
- D 0 - I - 0x018E37 0C:8E27: F3        .byte $F3
- D 0 - I - 0x018E38 0C:8E28: E5        .byte $E5
- D 0 - I - 0x018E39 0C:8E29: 01        .byte $01
- D 0 - I - 0x018E3A 0C:8E2A: 81        .byte $81
- D 0 - I - 0x018E3B 0C:8E2B: 3B        .byte $3B
- D 0 - I - 0x018E3C 0C:8E2C: E5        .byte $E5
- D 0 - I - 0x018E3D 0C:8E2D: 02        .byte $02
- D 0 - I - 0x018E3E 0C:8E2E: 3B        .byte $3B
- D 0 - I - 0x018E3F 0C:8E2F: E5        .byte $E5
- D 0 - I - 0x018E40 0C:8E30: 03        .byte $03
- D 0 - I - 0x018E41 0C:8E31: 3B        .byte $3B
- D 0 - I - 0x018E42 0C:8E32: E5        .byte $E5
- D 0 - I - 0x018E43 0C:8E33: 04        .byte $04
- D 0 - I - 0x018E44 0C:8E34: 82        .byte $82
- D 0 - I - 0x018E45 0C:8E35: 3B        .byte $3B
- D 0 - I - 0x018E46 0C:8E36: E5        .byte $E5
- D 0 - I - 0x018E47 0C:8E37: 05        .byte $05
- D 0 - I - 0x018E48 0C:8E38: 81        .byte $81
- D 0 - I - 0x018E49 0C:8E39: 3B        .byte $3B
- D 0 - I - 0x018E4A 0C:8E3A: E5        .byte $E5
- D 0 - I - 0x018E4B 0C:8E3B: 06        .byte $06
- D 0 - I - 0x018E4C 0C:8E3C: 3B        .byte $3B
- D 0 - I - 0x018E4D 0C:8E3D: E5        .byte $E5
- D 0 - I - 0x018E4E 0C:8E3E: 00        .byte $00
- D 0 - I - 0x018E4F 0C:8E3F: 40        .byte $40
- D 0 - I - 0x018E50 0C:8E40: F4        .byte $F4
- D 0 - I - 0x018E51 0C:8E41: EA        .byte $EA



_off001_8E42_01_выключить_музыку_и_звуки:
- D 0 - I - 0x018E52 0C:8E42: 00        .byte $00
- D 0 - I - 0x018E53 0C:8E43: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E55 0C:8E45: 01        .byte $01
- D 0 - I - 0x018E56 0C:8E46: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E58 0C:8E48: 02        .byte $02
- D 0 - I - 0x018E59 0C:8E49: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E5B 0C:8E4B: 03        .byte $03
- D 0 - I - 0x018E5C 0C:8E4C: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E5E 0C:8E4E: 04        .byte $04
- D 0 - I - 0x018E5F 0C:8E4F: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E61 0C:8E51: 05        .byte $05
- D 0 - I - 0x018E62 0C:8E52: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E64 0C:8E54: 06        .byte $06
- D 0 - I - 0x018E65 0C:8E55: 5A 8E     .word off_8E5A_выкл
- D 0 - I - 0x018E67 0C:8E57: 07        .byte $07
- D 0 - I - 0x018E68 0C:8E58: 5A 8E     .word off_8E5A_выкл
off_8E5A_выкл:
- D 0 - I - 0x018E6A 0C:8E5A: FF        .byte $FF



_off000_8E5B_02_выключить_звуки:
- D 0 - I - 0x018E6B 0C:8E5B: 00        .byte $00
- D 0 - I - 0x018E6C 0C:8E5C: 67 8E     .word off_8E67_выкл
- D 0 - I - 0x018E6E 0C:8E5E: 01        .byte $01
- D 0 - I - 0x018E6F 0C:8E5F: 67 8E     .word off_8E67_выкл
- D 0 - I - 0x018E71 0C:8E61: 02        .byte $02
- D 0 - I - 0x018E72 0C:8E62: 67 8E     .word off_8E67_выкл
- D 0 - I - 0x018E74 0C:8E64: 03        .byte $03
- D 0 - I - 0x018E75 0C:8E65: 67 8E     .word off_8E67_выкл
off_8E67_выкл:
- D 0 - I - 0x018E77 0C:8E67: FF        .byte $FF



_off000_8E68_03_обычный_полет_мяча:
- D 0 - I - 0x018E78 0C:8E68: 00        .byte $00
- D 0 - I - 0x018E79 0C:8E69: 71 8E     .word off_8E71_выкл
- D 0 - I - 0x018E7B 0C:8E6B: 01        .byte $01
- D 0 - I - 0x018E7C 0C:8E6C: 71 8E     .word off_8E71_выкл
- D 0 - I - 0x018E7E 0C:8E6E: 03        .byte $03
- D 0 - I - 0x018E7F 0C:8E6F: 72 8E     .word off_8E72_03_03
off_8E71_выкл:
- D 0 - I - 0x018E81 0C:8E71: FF        .byte $FF



off_8E72_03_03:
- D 0 - I - 0x018E82 0C:8E72: E0        .byte $E0
- D 0 - I - 0x018E83 0C:8E73: 12        .byte $12
- D 0 - I - 0x018E84 0C:8E74: E3        .byte $E3
- D 0 - I - 0x018E85 0C:8E75: 00        .byte $00
- D 0 - I - 0x018E86 0C:8E76: 81        .byte $81
- D 0 - I - 0x018E87 0C:8E77: 00        .byte $00
- D 0 - I - 0x018E88 0C:8E78: 82        .byte $82
- D 0 - I - 0x018E89 0C:8E79: 01        .byte $01
- D 0 - I - 0x018E8A 0C:8E7A: 83        .byte $83
- D 0 - I - 0x018E8B 0C:8E7B: 02        .byte $02
- D 0 - I - 0x018E8C 0C:8E7C: 03        .byte $03
- D 0 - I - 0x018E8D 0C:8E7D: 04        .byte $04
- D 0 - I - 0x018E8E 0C:8E7E: 84        .byte $84
- D 0 - I - 0x018E8F 0C:8E7F: 05        .byte $05
- D 0 - I - 0x018E90 0C:8E80: 06        .byte $06
- D 0 - I - 0x018E91 0C:8E81: 85        .byte $85
- D 0 - I - 0x018E92 0C:8E82: 07        .byte $07
- D 0 - I - 0x018E93 0C:8E83: 08        .byte $08
- D 0 - I - 0x018E94 0C:8E84: 09        .byte $09
- D 0 - I - 0x018E95 0C:8E85: 0A        .byte $0A
- D 0 - I - 0x018E96 0C:8E86: 95        .byte $95
- D 0 - I - 0x018E97 0C:8E87: 0B        .byte $0B
- D 0 - I - 0x018E98 0C:8E88: FF        .byte $FF



_off000_8E89_04_полет_спешала:
- D 0 - I - 0x018E99 0C:8E89: 00        .byte $00
- D 0 - I - 0x018E9A 0C:8E8A: 92 8E     .word off_8E92_выкл
- D 0 - I - 0x018E9C 0C:8E8C: 01        .byte $01
- D 0 - I - 0x018E9D 0C:8E8D: 92 8E     .word off_8E92_выкл
- D 0 - I - 0x018E9F 0C:8E8F: 03        .byte $03
- D 0 - I - 0x018EA0 0C:8E90: 93 8E     .word off_8E93_04_03
off_8E92_выкл:
- D 0 - I - 0x018EA2 0C:8E92: FF        .byte $FF



off_8E93_04_03:
- D 0 - I - 0x018EA3 0C:8E93: 81        .byte $81
loc_E8_8E94:
- D 0 - I - 0x018EA4 0C:8E94: E0        .byte $E0
- D 0 - I - 0x018EA5 0C:8E95: 12        .byte $12
- D 0 - I - 0x018EA6 0C:8E96: E3        .byte $E3
- D 0 - I - 0x018EA7 0C:8E97: 00        .byte $00
- D 0 - I - 0x018EA8 0C:8E98: 0F        .byte $0F
- D 0 - I - 0x018EA9 0C:8E99: 0E        .byte $0E
- D 0 - I - 0x018EAA 0C:8E9A: 0D        .byte $0D
- D 0 - I - 0x018EAB 0C:8E9B: 0C        .byte $0C
- D 0 - I - 0x018EAC 0C:8E9C: 0E        .byte $0E
- D 0 - I - 0x018EAD 0C:8E9D: 0D        .byte $0D
- D 0 - I - 0x018EAE 0C:8E9E: 0C        .byte $0C
- D 0 - I - 0x018EAF 0C:8E9F: 0B        .byte $0B
- D 0 - I - 0x018EB0 0C:8EA0: 0D        .byte $0D
- D 0 - I - 0x018EB1 0C:8EA1: 0C        .byte $0C
- D 0 - I - 0x018EB2 0C:8EA2: 0B        .byte $0B
- D 0 - I - 0x018EB3 0C:8EA3: 0A        .byte $0A
- D 0 - I - 0x018EB4 0C:8EA4: 81        .byte $81
- D 0 - I - 0x018EB5 0C:8EA5: 0C        .byte $0C
- D 0 - I - 0x018EB6 0C:8EA6: 0B        .byte $0B
- D 0 - I - 0x018EB7 0C:8EA7: 0A        .byte $0A
- D 0 - I - 0x018EB8 0C:8EA8: 09        .byte $09
- D 0 - I - 0x018EB9 0C:8EA9: 0B        .byte $0B
- D 0 - I - 0x018EBA 0C:8EAA: 0A        .byte $0A
- D 0 - I - 0x018EBB 0C:8EAB: 09        .byte $09
- D 0 - I - 0x018EBC 0C:8EAC: 08        .byte $08
- D 0 - I - 0x018EBD 0C:8EAD: 0A        .byte $0A
- D 0 - I - 0x018EBE 0C:8EAE: 09        .byte $09
- D 0 - I - 0x018EBF 0C:8EAF: 08        .byte $08
- D 0 - I - 0x018EC0 0C:8EB0: 07        .byte $07
- D 0 - I - 0x018EC1 0C:8EB1: 09        .byte $09
- D 0 - I - 0x018EC2 0C:8EB2: 08        .byte $08
- D 0 - I - 0x018EC3 0C:8EB3: 07        .byte $07
- D 0 - I - 0x018EC4 0C:8EB4: 06        .byte $06
- D 0 - I - 0x018EC5 0C:8EB5: 08        .byte $08
- D 0 - I - 0x018EC6 0C:8EB6: 07        .byte $07
- D 0 - I - 0x018EC7 0C:8EB7: 06        .byte $06
- D 0 - I - 0x018EC8 0C:8EB8: 05        .byte $05
- D 0 - I - 0x018EC9 0C:8EB9: 07        .byte $07
- D 0 - I - 0x018ECA 0C:8EBA: 06        .byte $06
- D 0 - I - 0x018ECB 0C:8EBB: 05        .byte $05
- D 0 - I - 0x018ECC 0C:8EBC: 04        .byte $04
- D 0 - I - 0x018ECD 0C:8EBD: 06        .byte $06
- D 0 - I - 0x018ECE 0C:8EBE: 05        .byte $05
- D 0 - I - 0x018ECF 0C:8EBF: 04        .byte $04
- D 0 - I - 0x018ED0 0C:8EC0: 03        .byte $03
- D 0 - I - 0x018ED1 0C:8EC1: 05        .byte $05
- D 0 - I - 0x018ED2 0C:8EC2: 04        .byte $04
- D 0 - I - 0x018ED3 0C:8EC3: 03        .byte $03
- D 0 - I - 0x018ED4 0C:8EC4: 02        .byte $02
- D 0 - I - 0x018ED5 0C:8EC5: 04        .byte $04
- D 0 - I - 0x018ED6 0C:8EC6: 03        .byte $03
- D 0 - I - 0x018ED7 0C:8EC7: 02        .byte $02
- D 0 - I - 0x018ED8 0C:8EC8: 01        .byte $01
- D 0 - I - 0x018ED9 0C:8EC9: 03        .byte $03
- D 0 - I - 0x018EDA 0C:8ECA: 02        .byte $02
- D 0 - I - 0x018EDB 0C:8ECB: 01        .byte $01
- D 0 - I - 0x018EDC 0C:8ECC: 96        .byte $96
- D 0 - I - 0x018EDD 0C:8ECD: 00        .byte $00
- D 0 - I - 0x018EDE 0C:8ECE: FF        .byte $FF



_off000_8ECF_05_полет_спешала:
- D 0 - I - 0x018EDF 0C:8ECF: 00        .byte $00
- D 0 - I - 0x018EE0 0C:8ED0: D8 8E     .word off_8ED8_выкл
- D 0 - I - 0x018EE2 0C:8ED2: 01        .byte $01
- D 0 - I - 0x018EE3 0C:8ED3: D8 8E     .word off_8ED8_выкл
- D 0 - I - 0x018EE5 0C:8ED5: 03        .byte $03
- D 0 - I - 0x018EE6 0C:8ED6: D9 8E     .word off_8ED9_05_03
off_8ED8_выкл:
- D 0 - I - 0x018EE8 0C:8ED8: FF        .byte $FF



off_8ED9_05_03:
- D 0 - I - 0x018EE9 0C:8ED9: E0        .byte $E0
- D 0 - I - 0x018EEA 0C:8EDA: 12        .byte $12
- D 0 - I - 0x018EEB 0C:8EDB: E3        .byte $E3
- D 0 - I - 0x018EEC 0C:8EDC: 00        .byte $00
- D 0 - I - 0x018EED 0C:8EDD: 81        .byte $81
- D 0 - I - 0x018EEE 0C:8EDE: 00        .byte $00
- D 0 - I - 0x018EEF 0C:8EDF: 01        .byte $01
- D 0 - I - 0x018EF0 0C:8EE0: 02        .byte $02
- D 0 - I - 0x018EF1 0C:8EE1: 03        .byte $03
- D 0 - I - 0x018EF2 0C:8EE2: 01        .byte $01
- D 0 - I - 0x018EF3 0C:8EE3: 02        .byte $02
- D 0 - I - 0x018EF4 0C:8EE4: 03        .byte $03
- D 0 - I - 0x018EF5 0C:8EE5: 04        .byte $04
- D 0 - I - 0x018EF6 0C:8EE6: 02        .byte $02
- D 0 - I - 0x018EF7 0C:8EE7: 03        .byte $03
- D 0 - I - 0x018EF8 0C:8EE8: 04        .byte $04
- D 0 - I - 0x018EF9 0C:8EE9: 05        .byte $05
- D 0 - I - 0x018EFA 0C:8EEA: 03        .byte $03
- D 0 - I - 0x018EFB 0C:8EEB: 04        .byte $04
- D 0 - I - 0x018EFC 0C:8EEC: 05        .byte $05
- D 0 - I - 0x018EFD 0C:8EED: 06        .byte $06
- D 0 - I - 0x018EFE 0C:8EEE: 04        .byte $04
- D 0 - I - 0x018EFF 0C:8EEF: 05        .byte $05
- D 0 - I - 0x018F00 0C:8EF0: 06        .byte $06
- D 0 - I - 0x018F01 0C:8EF1: 07        .byte $07
- D 0 - I - 0x018F02 0C:8EF2: 05        .byte $05
- D 0 - I - 0x018F03 0C:8EF3: 06        .byte $06
- D 0 - I - 0x018F04 0C:8EF4: 07        .byte $07
- D 0 - I - 0x018F05 0C:8EF5: 08        .byte $08
- D 0 - I - 0x018F06 0C:8EF6: 06        .byte $06
- D 0 - I - 0x018F07 0C:8EF7: 07        .byte $07
- D 0 - I - 0x018F08 0C:8EF8: 08        .byte $08
- D 0 - I - 0x018F09 0C:8EF9: 09        .byte $09
- D 0 - I - 0x018F0A 0C:8EFA: 07        .byte $07
- D 0 - I - 0x018F0B 0C:8EFB: 08        .byte $08
- D 0 - I - 0x018F0C 0C:8EFC: 09        .byte $09
- D 0 - I - 0x018F0D 0C:8EFD: 0A        .byte $0A
- D 0 - I - 0x018F0E 0C:8EFE: 08        .byte $08
- D 0 - I - 0x018F0F 0C:8EFF: 09        .byte $09
- D 0 - I - 0x018F10 0C:8F00: 0A        .byte $0A
- D 0 - I - 0x018F11 0C:8F01: 0B        .byte $0B
- D 0 - I - 0x018F12 0C:8F02: 09        .byte $09
- D 0 - I - 0x018F13 0C:8F03: 0A        .byte $0A
- D 0 - I - 0x018F14 0C:8F04: 0B        .byte $0B
- D 0 - I - 0x018F15 0C:8F05: 0C        .byte $0C
- D 0 - I - 0x018F16 0C:8F06: 0A        .byte $0A
- D 0 - I - 0x018F17 0C:8F07: 0B        .byte $0B
- D 0 - I - 0x018F18 0C:8F08: 0C        .byte $0C
- D 0 - I - 0x018F19 0C:8F09: 0D        .byte $0D
- D 0 - I - 0x018F1A 0C:8F0A: 0B        .byte $0B
- D 0 - I - 0x018F1B 0C:8F0B: 0C        .byte $0C
- D 0 - I - 0x018F1C 0C:8F0C: 0D        .byte $0D
- D 0 - I - 0x018F1D 0C:8F0D: 0E        .byte $0E
- D 0 - I - 0x018F1E 0C:8F0E: 0C        .byte $0C
- D 0 - I - 0x018F1F 0C:8F0F: 0D        .byte $0D
- D 0 - I - 0x018F20 0C:8F10: 0E        .byte $0E
- D 0 - I - 0x018F21 0C:8F11: 96        .byte $96
- D 0 - I - 0x018F22 0C:8F12: 0F        .byte $0F
- D 0 - I - 0x018F23 0C:8F13: FF        .byte $FF



_off000_8F14_07_полет_спешала:
- D 0 - I - 0x018F24 0C:8F14: 00        .byte $00
- D 0 - I - 0x018F25 0C:8F15: 1D 8F     .word off_8F1D_выкл
- D 0 - I - 0x018F27 0C:8F17: 01        .byte $01
- D 0 - I - 0x018F28 0C:8F18: 47 8F     .word off_8F47_07_01
- D 0 - I - 0x018F2A 0C:8F1A: 03        .byte $03
- D 0 - I - 0x018F2B 0C:8F1B: 1E 8F     .word off_8F1E_07_03
off_8F1D_выкл:
- D 0 - I - 0x018F2D 0C:8F1D: FF        .byte $FF



off_8F1E_07_03:
- D 0 - I - 0x018F2E 0C:8F1E: E0        .byte $E0
- D 0 - I - 0x018F2F 0C:8F1F: 14        .byte $14
- D 0 - I - 0x018F30 0C:8F20: E3        .byte $E3
- D 0 - I - 0x018F31 0C:8F21: 00        .byte $00
- D 0 - I - 0x018F32 0C:8F22: 81        .byte $81
- D 0 - I - 0x018F33 0C:8F23: 00        .byte $00
- D 0 - I - 0x018F34 0C:8F24: 0F        .byte $0F
- D 0 - I - 0x018F35 0C:8F25: 00        .byte $00
- D 0 - I - 0x018F36 0C:8F26: 0F        .byte $0F
- D 0 - I - 0x018F37 0C:8F27: 01        .byte $01
- D 0 - I - 0x018F38 0C:8F28: 0E        .byte $0E
- D 0 - I - 0x018F39 0C:8F29: 01        .byte $01
- D 0 - I - 0x018F3A 0C:8F2A: 0E        .byte $0E
- D 0 - I - 0x018F3B 0C:8F2B: 02        .byte $02
- D 0 - I - 0x018F3C 0C:8F2C: 0D        .byte $0D
- D 0 - I - 0x018F3D 0C:8F2D: 02        .byte $02
- D 0 - I - 0x018F3E 0C:8F2E: 0D        .byte $0D
- D 0 - I - 0x018F3F 0C:8F2F: 03        .byte $03
- D 0 - I - 0x018F40 0C:8F30: 0C        .byte $0C
- D 0 - I - 0x018F41 0C:8F31: 03        .byte $03
- D 0 - I - 0x018F42 0C:8F32: 0C        .byte $0C
- D 0 - I - 0x018F43 0C:8F33: 04        .byte $04
- D 0 - I - 0x018F44 0C:8F34: 0B        .byte $0B
- D 0 - I - 0x018F45 0C:8F35: 04        .byte $04
- D 0 - I - 0x018F46 0C:8F36: 0B        .byte $0B
- D 0 - I - 0x018F47 0C:8F37: 05        .byte $05
- D 0 - I - 0x018F48 0C:8F38: 0A        .byte $0A
- D 0 - I - 0x018F49 0C:8F39: 05        .byte $05
- D 0 - I - 0x018F4A 0C:8F3A: 0A        .byte $0A
- D 0 - I - 0x018F4B 0C:8F3B: 06        .byte $06
- D 0 - I - 0x018F4C 0C:8F3C: 09        .byte $09
- D 0 - I - 0x018F4D 0C:8F3D: 06        .byte $06
- D 0 - I - 0x018F4E 0C:8F3E: 09        .byte $09
- D 0 - I - 0x018F4F 0C:8F3F: 08        .byte $08
- D 0 - I - 0x018F50 0C:8F40: 07        .byte $07
- D 0 - I - 0x018F51 0C:8F41: 08        .byte $08
- D 0 - I - 0x018F52 0C:8F42: E0        .byte $E0
- D 0 - I - 0x018F53 0C:8F43: 12        .byte $12
- D 0 - I - 0x018F54 0C:8F44: 96        .byte $96
- D 0 - I - 0x018F55 0C:8F45: 07        .byte $07
- D 0 - I - 0x018F56 0C:8F46: FF        .byte $FF



off_8F47_07_01:
- D 0 - I - 0x018F57 0C:8F47: E0        .byte $E0
- D 0 - I - 0x018F58 0C:8F48: 14        .byte $14
- D 0 - I - 0x018F59 0C:8F49: E2        .byte $E2
- D 0 - I - 0x018F5A 0C:8F4A: 40        .byte $40
- D 0 - I - 0x018F5B 0C:8F4B: E3        .byte $E3
- D 0 - I - 0x018F5C 0C:8F4C: 06        .byte $06
- D 0 - I - 0x018F5D 0C:8F4D: 81        .byte $81
- D 0 - I - 0x018F5E 0C:8F4E: EB        .byte $EB
- D 0 - I - 0x018F5F 0C:8F4F: 04        .byte $04
- D 0 - I - 0x018F60 0C:8F50: 01        .byte $01
- D 0 - I - 0x018F61 0C:8F51: 12        .byte $12
- D 0 - I - 0x018F62 0C:8F52: 00        .byte $00
- D 0 - I - 0x018F63 0C:8F53: 13        .byte $13
- D 0 - I - 0x018F64 0C:8F54: 01        .byte $01
- D 0 - I - 0x018F65 0C:8F55: 12        .byte $12
- D 0 - I - 0x018F66 0C:8F56: 02        .byte $02
- D 0 - I - 0x018F67 0C:8F57: 11        .byte $11
- D 0 - I - 0x018F68 0C:8F58: EC        .byte $EC
- D 0 - I - 0x018F69 0C:8F59: FF        .byte $FF



_off000_8F5A_10_полет_спешала:
- D 0 - I - 0x018F6A 0C:8F5A: 00        .byte $00
- D 0 - I - 0x018F6B 0C:8F5B: A4 8F     .word off_8FA4_10_00
- D 0 - I - 0x018F6D 0C:8F5D: 01        .byte $01
- D 0 - I - 0x018F6E 0C:8F5E: 89 8F     .word off_8F89_10_01
- D 0 - I - 0x018F70 0C:8F60: 03        .byte $03
- D 0 - I - 0x018F71 0C:8F61: 64 8F     .word off_8F64_10_03
- D 0 - I - 0x018F73 0C:8F63: FF        .byte $FF



off_8F64_10_03:
- D 0 - I - 0x018F74 0C:8F64: E0        .byte $E0
- D 0 - I - 0x018F75 0C:8F65: 12        .byte $12
- D 0 - I - 0x018F76 0C:8F66: E3        .byte $E3
- D 0 - I - 0x018F77 0C:8F67: 00        .byte $00
- D 0 - I - 0x018F78 0C:8F68: 82        .byte $82
- D 0 - I - 0x018F79 0C:8F69: 07        .byte $07
- D 0 - I - 0x018F7A 0C:8F6A: 08        .byte $08
- D 0 - I - 0x018F7B 0C:8F6B: 06        .byte $06
- D 0 - I - 0x018F7C 0C:8F6C: 09        .byte $09
- D 0 - I - 0x018F7D 0C:8F6D: 81        .byte $81
- D 0 - I - 0x018F7E 0C:8F6E: 05        .byte $05
- D 0 - I - 0x018F7F 0C:8F6F: 0A        .byte $0A
- D 0 - I - 0x018F80 0C:8F70: F3        .byte $F3
- D 0 - I - 0x018F81 0C:8F71: 04        .byte $04
- D 0 - I - 0x018F82 0C:8F72: 0B        .byte $0B
- D 0 - I - 0x018F83 0C:8F73: 03        .byte $03
- D 0 - I - 0x018F84 0C:8F74: 0C        .byte $0C
- D 0 - I - 0x018F85 0C:8F75: 02        .byte $02
- D 0 - I - 0x018F86 0C:8F76: F4        .byte $F4
- D 0 - I - 0x018F87 0C:8F77: 00        .byte $00
- D 0 - I - 0x018F88 0C:8F78: 01        .byte $01
- D 0 - I - 0x018F89 0C:8F79: 02        .byte $02
- D 0 - I - 0x018F8A 0C:8F7A: 03        .byte $03
- D 0 - I - 0x018F8B 0C:8F7B: 04        .byte $04
- D 0 - I - 0x018F8C 0C:8F7C: 05        .byte $05
- D 0 - I - 0x018F8D 0C:8F7D: 06        .byte $06
- D 0 - I - 0x018F8E 0C:8F7E: 07        .byte $07
- D 0 - I - 0x018F8F 0C:8F7F: 08        .byte $08
- D 0 - I - 0x018F90 0C:8F80: 09        .byte $09
- D 0 - I - 0x018F91 0C:8F81: 0A        .byte $0A
- D 0 - I - 0x018F92 0C:8F82: 0B        .byte $0B
- D 0 - I - 0x018F93 0C:8F83: 0C        .byte $0C
- D 0 - I - 0x018F94 0C:8F84: 0D        .byte $0D
- D 0 - I - 0x018F95 0C:8F85: 0E        .byte $0E
- D 0 - I - 0x018F96 0C:8F86: 96        .byte $96
- D 0 - I - 0x018F97 0C:8F87: 0F        .byte $0F
- D 0 - I - 0x018F98 0C:8F88: FF        .byte $FF



off_8F89_10_01:
- D 0 - I - 0x018F99 0C:8F89: E3        .byte $E3
- D 0 - I - 0x018F9A 0C:8F8A: 05        .byte $05
loc_E8_8F8B:
- D 0 - I - 0x018F9B 0C:8F8B: E0        .byte $E0
- D 0 - I - 0x018F9C 0C:8F8C: 12        .byte $12
- D 0 - I - 0x018F9D 0C:8F8D: E2        .byte $E2
- D 0 - I - 0x018F9E 0C:8F8E: 00        .byte $00
- D 0 - I - 0x018F9F 0C:8F8F: 8D        .byte $8D
- D 0 - I - 0x018FA0 0C:8F90: 0C        .byte $0C
- D 0 - I - 0x018FA1 0C:8F91: 81        .byte $81
- D 0 - I - 0x018FA2 0C:8F92: 30        .byte $30
- D 0 - I - 0x018FA3 0C:8F93: F3        .byte $F3
- D 0 - I - 0x018FA4 0C:8F94: 2B        .byte $2B
- D 0 - I - 0x018FA5 0C:8F95: 2A        .byte $2A
- D 0 - I - 0x018FA6 0C:8F96: 29        .byte $29
- D 0 - I - 0x018FA7 0C:8F97: 28        .byte $28
- D 0 - I - 0x018FA8 0C:8F98: 27        .byte $27
- D 0 - I - 0x018FA9 0C:8F99: 26        .byte $26
- D 0 - I - 0x018FAA 0C:8F9A: 25        .byte $25
- D 0 - I - 0x018FAB 0C:8F9B: 24        .byte $24
- D 0 - I - 0x018FAC 0C:8F9C: 23        .byte $23
- D 0 - I - 0x018FAD 0C:8F9D: 22        .byte $22
- D 0 - I - 0x018FAE 0C:8F9E: 21        .byte $21
- D 0 - I - 0x018FAF 0C:8F9F: 20        .byte $20
- D 0 - I - 0x018FB0 0C:8FA0: 1B        .byte $1B
- D 0 - I - 0x018FB1 0C:8FA1: 1A        .byte $1A
- D 0 - I - 0x018FB2 0C:8FA2: F4        .byte $F4
- D 0 - I - 0x018FB3 0C:8FA3: FF        .byte $FF



off_8FA4_10_00:
- D 0 - I - 0x018FB4 0C:8FA4: E3        .byte $E3
- D 0 - I - 0x018FB5 0C:8FA5: 09        .byte $09
- D 0 - I - 0x018FB6 0C:8FA6: 82        .byte $82
- D 0 - I - 0x018FB7 0C:8FA7: 0C        .byte $0C
- D 0 - I - 0x018FB8 0C:8FA8: E5        .byte $E5
- D 0 - I - 0x018FB9 0C:8FA9: 02        .byte $02
- D 0 - I - 0x018FBA 0C:8FAA: E8        .byte $E8
- D 0 - I - 0x018FBB 0C:8FAB: 8B 8F     .word loc_E8_8F8B



_off000_8FAD_06_полет_спешала:
- D 0 - I - 0x018FBD 0C:8FAD: 00        .byte $00
- D 0 - I - 0x018FBE 0C:8FAE: B6 8F     .word off_8FB6_выкл
- D 0 - I - 0x018FC0 0C:8FB0: 01        .byte $01
- D 0 - I - 0x018FC1 0C:8FB1: B6 8F     .word off_8FB6_выкл
- D 0 - I - 0x018FC3 0C:8FB3: 03        .byte $03
- D 0 - I - 0x018FC4 0C:8FB4: B7 8F     .word off_8FB7_06_03
off_8FB6_выкл:
- D 0 - I - 0x018FC6 0C:8FB6: FF        .byte $FF



off_8FB7_06_03:
- D 0 - I - 0x018FC7 0C:8FB7: 82        .byte $82
- D 0 - I - 0x018FC8 0C:8FB8: E8        .byte $E8
- D 0 - I - 0x018FC9 0C:8FB9: 94 8E     .word loc_E8_8E94



_off000_8FBB_11_полет_спешала:
- D 0 - I - 0x018FCB 0C:8FBB: 00        .byte $00
- D 0 - I - 0x018FCC 0C:8FBC: C5 8F     .word off_8FC5_11_00
- D 0 - I - 0x018FCE 0C:8FBE: 01        .byte $01
- D 0 - I - 0x018FCF 0C:8FBF: 41 90     .word off_9041_11_01
- D 0 - I - 0x018FD1 0C:8FC1: 03        .byte $03
- D 0 - I - 0x018FD2 0C:8FC2: 46 90     .word off_9046_11_03
- D 0 - I - 0x018FD4 0C:8FC4: FF        .byte $FF



off_8FC5_11_00:
loc_E8_8FC5:
- D 0 - I - 0x018FD5 0C:8FC5: E0        .byte $E0
- D 0 - I - 0x018FD6 0C:8FC6: 11        .byte $11
- D 0 - I - 0x018FD7 0C:8FC7: E2        .byte $E2
- D 0 - I - 0x018FD8 0C:8FC8: C0        .byte $C0
- D 0 - I - 0x018FD9 0C:8FC9: E3        .byte $E3
- D 0 - I - 0x018FDA 0C:8FCA: 00        .byte $00
- D 0 - I - 0x018FDB 0C:8FCB: 81        .byte $81
- D 0 - I - 0x018FDC 0C:8FCC: E5        .byte $E5
- D 0 - I - 0x018FDD 0C:8FCD: 10        .byte $10
- D 0 - I - 0x018FDE 0C:8FCE: 48        .byte $48
- D 0 - I - 0x018FDF 0C:8FCF: E5        .byte $E5
- D 0 - I - 0x018FE0 0C:8FD0: 0E        .byte $0E
- D 0 - I - 0x018FE1 0C:8FD1: 48        .byte $48
- D 0 - I - 0x018FE2 0C:8FD2: E5        .byte $E5
- D 0 - I - 0x018FE3 0C:8FD3: 0C        .byte $0C
- D 0 - I - 0x018FE4 0C:8FD4: 48        .byte $48
- D 0 - I - 0x018FE5 0C:8FD5: E5        .byte $E5
- D 0 - I - 0x018FE6 0C:8FD6: 0A        .byte $0A
- D 0 - I - 0x018FE7 0C:8FD7: 48        .byte $48
- D 0 - I - 0x018FE8 0C:8FD8: E5        .byte $E5
- D 0 - I - 0x018FE9 0C:8FD9: 08        .byte $08
- D 0 - I - 0x018FEA 0C:8FDA: 48        .byte $48
- D 0 - I - 0x018FEB 0C:8FDB: E3        .byte $E3
- D 0 - I - 0x018FEC 0C:8FDC: 08        .byte $08
- D 0 - I - 0x018FED 0C:8FDD: E5        .byte $E5
- D 0 - I - 0x018FEE 0C:8FDE: 10        .byte $10
- D 0 - I - 0x018FEF 0C:8FDF: 49        .byte $49
- D 0 - I - 0x018FF0 0C:8FE0: E5        .byte $E5
- D 0 - I - 0x018FF1 0C:8FE1: 0E        .byte $0E
- D 0 - I - 0x018FF2 0C:8FE2: 49        .byte $49
- D 0 - I - 0x018FF3 0C:8FE3: E5        .byte $E5
- D 0 - I - 0x018FF4 0C:8FE4: 0C        .byte $0C
- D 0 - I - 0x018FF5 0C:8FE5: 49        .byte $49
- D 0 - I - 0x018FF6 0C:8FE6: E5        .byte $E5
- D 0 - I - 0x018FF7 0C:8FE7: 0A        .byte $0A
- D 0 - I - 0x018FF8 0C:8FE8: 49        .byte $49
- D 0 - I - 0x018FF9 0C:8FE9: E5        .byte $E5
- D 0 - I - 0x018FFA 0C:8FEA: 08        .byte $08
- D 0 - I - 0x018FFB 0C:8FEB: 49        .byte $49
- D 0 - I - 0x018FFC 0C:8FEC: E5        .byte $E5
- D 0 - I - 0x018FFD 0C:8FED: 06        .byte $06
- D 0 - I - 0x018FFE 0C:8FEE: 49        .byte $49
- D 0 - I - 0x018FFF 0C:8FEF: E3        .byte $E3
- D 0 - I - 0x019000 0C:8FF0: 0A        .byte $0A
- D 0 - I - 0x019001 0C:8FF1: E5        .byte $E5
- D 0 - I - 0x019002 0C:8FF2: 10        .byte $10
- D 0 - I - 0x019003 0C:8FF3: 4A        .byte $4A
- D 0 - I - 0x019004 0C:8FF4: E5        .byte $E5
- D 0 - I - 0x019005 0C:8FF5: 0E        .byte $0E
- D 0 - I - 0x019006 0C:8FF6: 4A        .byte $4A
- D 0 - I - 0x019007 0C:8FF7: E5        .byte $E5
- D 0 - I - 0x019008 0C:8FF8: 0C        .byte $0C
- D 0 - I - 0x019009 0C:8FF9: 4A        .byte $4A
- D 0 - I - 0x01900A 0C:8FFA: E5        .byte $E5
- D 0 - I - 0x01900B 0C:8FFB: 0A        .byte $0A
- D 0 - I - 0x01900C 0C:8FFC: 4A        .byte $4A
- D 0 - I - 0x01900D 0C:8FFD: E5        .byte $E5
- D 0 - I - 0x01900E 0C:8FFE: 08        .byte $08
- D 0 - I - 0x01900F 0C:8FFF: 4A        .byte $4A
- D 0 - I - 0x019010 0C:9000: E5        .byte $E5
- D 0 - I - 0x019011 0C:9001: 06        .byte $06
- D 0 - I - 0x019012 0C:9002: 4A        .byte $4A
- D 0 - I - 0x019013 0C:9003: E5        .byte $E5
- D 0 - I - 0x019014 0C:9004: 04        .byte $04
- D 0 - I - 0x019015 0C:9005: 4A        .byte $4A
- D 0 - I - 0x019016 0C:9006: E3        .byte $E3
- D 0 - I - 0x019017 0C:9007: 0C        .byte $0C
- D 0 - I - 0x019018 0C:9008: E5        .byte $E5
- D 0 - I - 0x019019 0C:9009: 10        .byte $10
- D 0 - I - 0x01901A 0C:900A: 4B        .byte $4B
- D 0 - I - 0x01901B 0C:900B: E5        .byte $E5
- D 0 - I - 0x01901C 0C:900C: 0E        .byte $0E
- D 0 - I - 0x01901D 0C:900D: 4B        .byte $4B
- D 0 - I - 0x01901E 0C:900E: E5        .byte $E5
- D 0 - I - 0x01901F 0C:900F: 0C        .byte $0C
- D 0 - I - 0x019020 0C:9010: 4B        .byte $4B
- D 0 - I - 0x019021 0C:9011: E5        .byte $E5
- D 0 - I - 0x019022 0C:9012: 0A        .byte $0A
- D 0 - I - 0x019023 0C:9013: 4B        .byte $4B
- D 0 - I - 0x019024 0C:9014: E5        .byte $E5
- D 0 - I - 0x019025 0C:9015: 08        .byte $08
- D 0 - I - 0x019026 0C:9016: 4B        .byte $4B
- D 0 - I - 0x019027 0C:9017: E5        .byte $E5
- D 0 - I - 0x019028 0C:9018: 06        .byte $06
- D 0 - I - 0x019029 0C:9019: 4B        .byte $4B
- D 0 - I - 0x01902A 0C:901A: E5        .byte $E5
- D 0 - I - 0x01902B 0C:901B: 04        .byte $04
- D 0 - I - 0x01902C 0C:901C: 4B        .byte $4B
- D 0 - I - 0x01902D 0C:901D: E5        .byte $E5
- D 0 - I - 0x01902E 0C:901E: 02        .byte $02
- D 0 - I - 0x01902F 0C:901F: 4B        .byte $4B
- D 0 - I - 0x019030 0C:9020: E3        .byte $E3
- D 0 - I - 0x019031 0C:9021: 0E        .byte $0E
- D 0 - I - 0x019032 0C:9022: E5        .byte $E5
- D 0 - I - 0x019033 0C:9023: 10        .byte $10
- D 0 - I - 0x019034 0C:9024: 50        .byte $50
- D 0 - I - 0x019035 0C:9025: E5        .byte $E5
- D 0 - I - 0x019036 0C:9026: 0E        .byte $0E
- D 0 - I - 0x019037 0C:9027: 50        .byte $50
- D 0 - I - 0x019038 0C:9028: E5        .byte $E5
- D 0 - I - 0x019039 0C:9029: 0C        .byte $0C
- D 0 - I - 0x01903A 0C:902A: 50        .byte $50
- D 0 - I - 0x01903B 0C:902B: E5        .byte $E5
- D 0 - I - 0x01903C 0C:902C: 0A        .byte $0A
- D 0 - I - 0x01903D 0C:902D: 50        .byte $50
- D 0 - I - 0x01903E 0C:902E: E5        .byte $E5
- D 0 - I - 0x01903F 0C:902F: 08        .byte $08
- D 0 - I - 0x019040 0C:9030: 50        .byte $50
- D 0 - I - 0x019041 0C:9031: E5        .byte $E5
- D 0 - I - 0x019042 0C:9032: 06        .byte $06
- D 0 - I - 0x019043 0C:9033: 50        .byte $50
- D 0 - I - 0x019044 0C:9034: E5        .byte $E5
- D 0 - I - 0x019045 0C:9035: 04        .byte $04
- D 0 - I - 0x019046 0C:9036: 50        .byte $50
- D 0 - I - 0x019047 0C:9037: E5        .byte $E5
- D 0 - I - 0x019048 0C:9038: 02        .byte $02
- D 0 - I - 0x019049 0C:9039: 50        .byte $50
- D 0 - I - 0x01904A 0C:903A: E5        .byte $E5
- D 0 - I - 0x01904B 0C:903B: 01        .byte $01
- D 0 - I - 0x01904C 0C:903C: 50        .byte $50
- D 0 - I - 0x01904D 0C:903D: E5        .byte $E5
- D 0 - I - 0x01904E 0C:903E: 00        .byte $00
- D 0 - I - 0x01904F 0C:903F: 50        .byte $50
- D 0 - I - 0x019050 0C:9040: FF        .byte $FF



off_9041_11_01:
- D 0 - I - 0x019051 0C:9041: 84        .byte $84
- D 0 - I - 0x019052 0C:9042: 0C        .byte $0C
- D 0 - I - 0x019053 0C:9043: E8        .byte $E8
- D 0 - I - 0x019054 0C:9044: C5 8F     .word loc_E8_8FC5



off_9046_11_03:
- D 0 - I - 0x019056 0C:9046: E0        .byte $E0
- D 0 - I - 0x019057 0C:9047: 14        .byte $14
- D 0 - I - 0x019058 0C:9048: E3        .byte $E3
- D 0 - I - 0x019059 0C:9049: 00        .byte $00
- D 0 - I - 0x01905A 0C:904A: EB        .byte $EB
- D 0 - I - 0x01905B 0C:904B: 03        .byte $03
- D 0 - I - 0x01905C 0C:904C: 81        .byte $81
- D 0 - I - 0x01905D 0C:904D: 0F        .byte $0F
- D 0 - I - 0x01905E 0C:904E: 00        .byte $00
- D 0 - I - 0x01905F 0C:904F: 0E        .byte $0E
- D 0 - I - 0x019060 0C:9050: 01        .byte $01
- D 0 - I - 0x019061 0C:9051: EC        .byte $EC
- D 0 - I - 0x019062 0C:9052: EB        .byte $EB
- D 0 - I - 0x019063 0C:9053: 05        .byte $05
- D 0 - I - 0x019064 0C:9054: 0D        .byte $0D
- D 0 - I - 0x019065 0C:9055: 00        .byte $00
- D 0 - I - 0x019066 0C:9056: 0C        .byte $0C
- D 0 - I - 0x019067 0C:9057: 01        .byte $01
- D 0 - I - 0x019068 0C:9058: EC        .byte $EC
- D 0 - I - 0x019069 0C:9059: EB        .byte $EB
- D 0 - I - 0x01906A 0C:905A: 04        .byte $04
- D 0 - I - 0x01906B 0C:905B: 0B        .byte $0B
- D 0 - I - 0x01906C 0C:905C: 00        .byte $00
- D 0 - I - 0x01906D 0C:905D: 0A        .byte $0A
- D 0 - I - 0x01906E 0C:905E: 01        .byte $01
- D 0 - I - 0x01906F 0C:905F: EC        .byte $EC
- D 0 - I - 0x019070 0C:9060: 09        .byte $09
- D 0 - I - 0x019071 0C:9061: 00        .byte $00
- D 0 - I - 0x019072 0C:9062: 08        .byte $08
- D 0 - I - 0x019073 0C:9063: 01        .byte $01
- D 0 - I - 0x019074 0C:9064: 07        .byte $07
- D 0 - I - 0x019075 0C:9065: 00        .byte $00
- D 0 - I - 0x019076 0C:9066: 06        .byte $06
- D 0 - I - 0x019077 0C:9067: 01        .byte $01
- D 0 - I - 0x019078 0C:9068: 05        .byte $05
- D 0 - I - 0x019079 0C:9069: 00        .byte $00
- D 0 - I - 0x01907A 0C:906A: 04        .byte $04
- D 0 - I - 0x01907B 0C:906B: 01        .byte $01
- D 0 - I - 0x01907C 0C:906C: 03        .byte $03
- D 0 - I - 0x01907D 0C:906D: 00        .byte $00
- D 0 - I - 0x01907E 0C:906E: 02        .byte $02
- D 0 - I - 0x01907F 0C:906F: 01        .byte $01
- D 0 - I - 0x019080 0C:9070: 02        .byte $02
- D 0 - I - 0x019081 0C:9071: 00        .byte $00
- D 0 - I - 0x019082 0C:9072: 01        .byte $01
- D 0 - I - 0x019083 0C:9073: 01        .byte $01
- D 0 - I - 0x019084 0C:9074: E0        .byte $E0
- D 0 - I - 0x019085 0C:9075: 12        .byte $12
- D 0 - I - 0x019086 0C:9076: 96        .byte $96
- D 0 - I - 0x019087 0C:9077: 00        .byte $00
- D 0 - I - 0x019088 0C:9078: FF        .byte $FF



_off000_9079_0F_полет_спешала:
- D 0 - I - 0x019089 0C:9079: 00        .byte $00
- D 0 - I - 0x01908A 0C:907A: 82 90     .word off_9082_выкл
- D 0 - I - 0x01908C 0C:907C: 01        .byte $01
- D 0 - I - 0x01908D 0C:907D: 82 90     .word off_9082_выкл
- D 0 - I - 0x01908F 0C:907F: 03        .byte $03
- D 0 - I - 0x019090 0C:9080: 83 90     .word off_9083_0F_03
off_9082_выкл:
- D 0 - I - 0x019092 0C:9082: FF        .byte $FF



off_9083_0F_03:
- D 0 - I - 0x019093 0C:9083: E0        .byte $E0
- D 0 - I - 0x019094 0C:9084: 12        .byte $12
- D 0 - I - 0x019095 0C:9085: E3        .byte $E3
- D 0 - I - 0x019096 0C:9086: 00        .byte $00
- D 0 - I - 0x019097 0C:9087: 81        .byte $81
- D 0 - I - 0x019098 0C:9088: 00        .byte $00
- D 0 - I - 0x019099 0C:9089: 01        .byte $01
- D 0 - I - 0x01909A 0C:908A: 02        .byte $02
- D 0 - I - 0x01909B 0C:908B: 03        .byte $03
- D 0 - I - 0x01909C 0C:908C: 04        .byte $04
- D 0 - I - 0x01909D 0C:908D: 05        .byte $05
- D 0 - I - 0x01909E 0C:908E: 06        .byte $06
- D 0 - I - 0x01909F 0C:908F: EB        .byte $EB
- D 0 - I - 0x0190A0 0C:9090: 02        .byte $02
- D 0 - I - 0x0190A1 0C:9091: 00        .byte $00
- D 0 - I - 0x0190A2 0C:9092: 01        .byte $01
- D 0 - I - 0x0190A3 0C:9093: 02        .byte $02
- D 0 - I - 0x0190A4 0C:9094: 03        .byte $03
- D 0 - I - 0x0190A5 0C:9095: 04        .byte $04
- D 0 - I - 0x0190A6 0C:9096: 05        .byte $05
- D 0 - I - 0x0190A7 0C:9097: 06        .byte $06
- D 0 - I - 0x0190A8 0C:9098: 07        .byte $07
- D 0 - I - 0x0190A9 0C:9099: 08        .byte $08
- D 0 - I - 0x0190AA 0C:909A: 09        .byte $09
- D 0 - I - 0x0190AB 0C:909B: 0A        .byte $0A
- D 0 - I - 0x0190AC 0C:909C: EC        .byte $EC
- D 0 - I - 0x0190AD 0C:909D: 0B        .byte $0B
- D 0 - I - 0x0190AE 0C:909E: 0C        .byte $0C
- D 0 - I - 0x0190AF 0C:909F: 0D        .byte $0D
- D 0 - I - 0x0190B0 0C:90A0: 0E        .byte $0E
- D 0 - I - 0x0190B1 0C:90A1: 96        .byte $96
- D 0 - I - 0x0190B2 0C:90A2: 0F        .byte $0F
- D 0 - I - 0x0190B3 0C:90A3: FF        .byte $FF



_off000_90A4_08_полет_спешала:
- D 0 - I - 0x0190B4 0C:90A4: 00        .byte $00
- D 0 - I - 0x0190B5 0C:90A5: AD 90     .word off_90AD_выкл
- D 0 - I - 0x0190B7 0C:90A7: 01        .byte $01
- D 0 - I - 0x0190B8 0C:90A8: DD 90     .word off_90DD_08_5E_01
- D 0 - I - 0x0190BA 0C:90AA: 03        .byte $03
- D 0 - I - 0x0190BB 0C:90AB: AE 90     .word off_90AE_08_03
off_90AD_выкл:
- D 0 - I - 0x0190BD 0C:90AD: FF        .byte $FF



off_90AE_08_03:
- D 0 - I - 0x0190BE 0C:90AE: E0        .byte $E0
- D 0 - I - 0x0190BF 0C:90AF: 12        .byte $12
- D 0 - I - 0x0190C0 0C:90B0: E3        .byte $E3
- D 0 - I - 0x0190C1 0C:90B1: 00        .byte $00
- D 0 - I - 0x0190C2 0C:90B2: EB        .byte $EB
- D 0 - I - 0x0190C3 0C:90B3: 04        .byte $04
- D 0 - I - 0x0190C4 0C:90B4: 81        .byte $81
- D 0 - I - 0x0190C5 0C:90B5: 00        .byte $00
- D 0 - I - 0x0190C6 0C:90B6: 0F        .byte $0F
- D 0 - I - 0x0190C7 0C:90B7: 01        .byte $01
- D 0 - I - 0x0190C8 0C:90B8: 0E        .byte $0E
- D 0 - I - 0x0190C9 0C:90B9: EC        .byte $EC
- D 0 - I - 0x0190CA 0C:90BA: EB        .byte $EB
- D 0 - I - 0x0190CB 0C:90BB: 03        .byte $03
- D 0 - I - 0x0190CC 0C:90BC: 02        .byte $02
- D 0 - I - 0x0190CD 0C:90BD: 0F        .byte $0F
- D 0 - I - 0x0190CE 0C:90BE: 03        .byte $03
- D 0 - I - 0x0190CF 0C:90BF: 0E        .byte $0E
- D 0 - I - 0x0190D0 0C:90C0: EC        .byte $EC
- D 0 - I - 0x0190D1 0C:90C1: EB        .byte $EB
- D 0 - I - 0x0190D2 0C:90C2: 02        .byte $02
- D 0 - I - 0x0190D3 0C:90C3: 04        .byte $04
- D 0 - I - 0x0190D4 0C:90C4: 0F        .byte $0F
- D 0 - I - 0x0190D5 0C:90C5: 05        .byte $05
- D 0 - I - 0x0190D6 0C:90C6: 0E        .byte $0E
- D 0 - I - 0x0190D7 0C:90C7: EC        .byte $EC
loc_E8_90C8:
- D 0 - I - 0x0190D8 0C:90C8: 06        .byte $06
- D 0 - I - 0x0190D9 0C:90C9: 0F        .byte $0F
- D 0 - I - 0x0190DA 0C:90CA: 07        .byte $07
- D 0 - I - 0x0190DB 0C:90CB: 0E        .byte $0E
- D 0 - I - 0x0190DC 0C:90CC: 08        .byte $08
- D 0 - I - 0x0190DD 0C:90CD: 0F        .byte $0F
- D 0 - I - 0x0190DE 0C:90CE: 09        .byte $09
- D 0 - I - 0x0190DF 0C:90CF: 0E        .byte $0E
- D 0 - I - 0x0190E0 0C:90D0: 0A        .byte $0A
- D 0 - I - 0x0190E1 0C:90D1: 0F        .byte $0F
- D 0 - I - 0x0190E2 0C:90D2: 0B        .byte $0B
- D 0 - I - 0x0190E3 0C:90D3: 0E        .byte $0E
- D 0 - I - 0x0190E4 0C:90D4: 0C        .byte $0C
- D 0 - I - 0x0190E5 0C:90D5: 0F        .byte $0F
- D 0 - I - 0x0190E6 0C:90D6: 0D        .byte $0D
- D 0 - I - 0x0190E7 0C:90D7: 0E        .byte $0E
- D 0 - I - 0x0190E8 0C:90D8: E0        .byte $E0
- D 0 - I - 0x0190E9 0C:90D9: 12        .byte $12
- D 0 - I - 0x0190EA 0C:90DA: 96        .byte $96
- D 0 - I - 0x0190EB 0C:90DB: 0F        .byte $0F
- D 0 - I - 0x0190EC 0C:90DC: FF        .byte $FF



off_90DD_08_5E_01:
- D 0 - I - 0x0190ED 0C:90DD: E0        .byte $E0
- D 0 - I - 0x0190EE 0C:90DE: 14        .byte $14
- D 0 - I - 0x0190EF 0C:90DF: E2        .byte $E2
- D 0 - I - 0x0190F0 0C:90E0: 80        .byte $80
- D 0 - I - 0x0190F1 0C:90E1: E3        .byte $E3
- D 0 - I - 0x0190F2 0C:90E2: 06        .byte $06
- D 0 - I - 0x0190F3 0C:90E3: 81        .byte $81
- D 0 - I - 0x0190F4 0C:90E4: EB        .byte $EB
- D 0 - I - 0x0190F5 0C:90E5: 06        .byte $06
- D 0 - I - 0x0190F6 0C:90E6: 01        .byte $01
- D 0 - I - 0x0190F7 0C:90E7: 12        .byte $12
- D 0 - I - 0x0190F8 0C:90E8: 00        .byte $00
- D 0 - I - 0x0190F9 0C:90E9: 13        .byte $13
- D 0 - I - 0x0190FA 0C:90EA: 01        .byte $01
- D 0 - I - 0x0190FB 0C:90EB: 12        .byte $12
- D 0 - I - 0x0190FC 0C:90EC: 02        .byte $02
- D 0 - I - 0x0190FD 0C:90ED: 11        .byte $11
- D 0 - I - 0x0190FE 0C:90EE: EC        .byte $EC
- D 0 - I - 0x0190FF 0C:90EF: 00        .byte $00
- D 0 - I - 0x019100 0C:90F0: 13        .byte $13
- D 0 - I - 0x019101 0C:90F1: 01        .byte $01
- D 0 - I - 0x019102 0C:90F2: 12        .byte $12
- D 0 - I - 0x019103 0C:90F3: 02        .byte $02
- D 0 - I - 0x019104 0C:90F4: 11        .byte $11
- D 0 - I - 0x019105 0C:90F5: FF        .byte $FF



_off000_90F6_5E_полет_спешала:
- D 0 - I - 0x019106 0C:90F6: 00        .byte $00
- D 0 - I - 0x019107 0C:90F7: FF 90     .word off_90FF_выкл
- D 0 - I - 0x019109 0C:90F9: 01        .byte $01
- D 0 - I - 0x01910A 0C:90FA: DD 90     .word off_90DD_08_5E_01
- D 0 - I - 0x01910C 0C:90FC: 03        .byte $03
- D 0 - I - 0x01910D 0C:90FD: 00 91     .word off_9100_5E_03
off_90FF_выкл:
- D 0 - I - 0x01910F 0C:90FF: FF        .byte $FF



off_9100_5E_03:
- D 0 - I - 0x019110 0C:9100: E0        .byte $E0
- D 0 - I - 0x019111 0C:9101: 14        .byte $14
- D 0 - I - 0x019112 0C:9102: E3        .byte $E3
- D 0 - I - 0x019113 0C:9103: 00        .byte $00
- D 0 - I - 0x019114 0C:9104: EB        .byte $EB
- D 0 - I - 0x019115 0C:9105: 03        .byte $03
- D 0 - I - 0x019116 0C:9106: 81        .byte $81
- D 0 - I - 0x019117 0C:9107: 00        .byte $00
- D 0 - I - 0x019118 0C:9108: 0F        .byte $0F
- D 0 - I - 0x019119 0C:9109: 01        .byte $01
- D 0 - I - 0x01911A 0C:910A: 0E        .byte $0E
- D 0 - I - 0x01911B 0C:910B: EC        .byte $EC
- D 0 - I - 0x01911C 0C:910C: EB        .byte $EB
- D 0 - I - 0x01911D 0C:910D: 05        .byte $05
- D 0 - I - 0x01911E 0C:910E: 02        .byte $02
- D 0 - I - 0x01911F 0C:910F: 0F        .byte $0F
- D 0 - I - 0x019120 0C:9110: 03        .byte $03
- D 0 - I - 0x019121 0C:9111: 0E        .byte $0E
- D 0 - I - 0x019122 0C:9112: EC        .byte $EC
- D 0 - I - 0x019123 0C:9113: EB        .byte $EB
- D 0 - I - 0x019124 0C:9114: 04        .byte $04
- D 0 - I - 0x019125 0C:9115: 04        .byte $04
- D 0 - I - 0x019126 0C:9116: 0F        .byte $0F
- D 0 - I - 0x019127 0C:9117: 05        .byte $05
- D 0 - I - 0x019128 0C:9118: 0E        .byte $0E
- D 0 - I - 0x019129 0C:9119: EC        .byte $EC
- D 0 - I - 0x01912A 0C:911A: E8        .byte $E8
- D 0 - I - 0x01912B 0C:911B: C8 90     .word loc_E8_90C8



_off000_911D_0E_полет_спешала:
- D 0 - I - 0x01912D 0C:911D: 00        .byte $00
- D 0 - I - 0x01912E 0C:911E: 26 91     .word off_9126_выкл
- D 0 - I - 0x019130 0C:9120: 01        .byte $01
- D 0 - I - 0x019131 0C:9121: 27 91     .word off_9127_0E_01
- D 0 - I - 0x019133 0C:9123: 03        .byte $03
- D 0 - I - 0x019134 0C:9124: 57 91     .word off_9157_0E_03
off_9126_выкл:
- D 0 - I - 0x019136 0C:9126: FF        .byte $FF



off_9127_0E_01:
- D 0 - I - 0x019137 0C:9127: E0        .byte $E0
- D 0 - I - 0x019138 0C:9128: 12        .byte $12
- D 0 - I - 0x019139 0C:9129: E2        .byte $E2
- D 0 - I - 0x01913A 0C:912A: 80        .byte $80
- D 0 - I - 0x01913B 0C:912B: E3        .byte $E3
- D 0 - I - 0x01913C 0C:912C: 05        .byte $05
- D 0 - I - 0x01913D 0C:912D: 81        .byte $81
- D 0 - I - 0x01913E 0C:912E: 10        .byte $10
- D 0 - I - 0x01913F 0C:912F: 20        .byte $20
- D 0 - I - 0x019140 0C:9130: 0B        .byte $0B
- D 0 - I - 0x019141 0C:9131: 1B        .byte $1B
- D 0 - I - 0x019142 0C:9132: 11        .byte $11
- D 0 - I - 0x019143 0C:9133: 21        .byte $21
- D 0 - I - 0x019144 0C:9134: 0A        .byte $0A
- D 0 - I - 0x019145 0C:9135: 1A        .byte $1A
- D 0 - I - 0x019146 0C:9136: 12        .byte $12
- D 0 - I - 0x019147 0C:9137: 22        .byte $22
- D 0 - I - 0x019148 0C:9138: 09        .byte $09
- D 0 - I - 0x019149 0C:9139: 19        .byte $19
- D 0 - I - 0x01914A 0C:913A: 13        .byte $13
- D 0 - I - 0x01914B 0C:913B: 23        .byte $23
- D 0 - I - 0x01914C 0C:913C: 08        .byte $08
- D 0 - I - 0x01914D 0C:913D: 18        .byte $18
- D 0 - I - 0x01914E 0C:913E: 14        .byte $14
- D 0 - I - 0x01914F 0C:913F: 24        .byte $24
- D 0 - I - 0x019150 0C:9140: 07        .byte $07
- D 0 - I - 0x019151 0C:9141: 17        .byte $17
- D 0 - I - 0x019152 0C:9142: 15        .byte $15
- D 0 - I - 0x019153 0C:9143: 25        .byte $25
- D 0 - I - 0x019154 0C:9144: 06        .byte $06
- D 0 - I - 0x019155 0C:9145: 16        .byte $16
- D 0 - I - 0x019156 0C:9146: 16        .byte $16
- D 0 - I - 0x019157 0C:9147: 26        .byte $26
- D 0 - I - 0x019158 0C:9148: 05        .byte $05
- D 0 - I - 0x019159 0C:9149: 15        .byte $15
- D 0 - I - 0x01915A 0C:914A: 17        .byte $17
- D 0 - I - 0x01915B 0C:914B: 27        .byte $27
- D 0 - I - 0x01915C 0C:914C: 04        .byte $04
- D 0 - I - 0x01915D 0C:914D: 14        .byte $14
- D 0 - I - 0x01915E 0C:914E: 18        .byte $18
- D 0 - I - 0x01915F 0C:914F: 28        .byte $28
- D 0 - I - 0x019160 0C:9150: 03        .byte $03
- D 0 - I - 0x019161 0C:9151: 13        .byte $13
- D 0 - I - 0x019162 0C:9152: 19        .byte $19
- D 0 - I - 0x019163 0C:9153: 29        .byte $29
- D 0 - I - 0x019164 0C:9154: 02        .byte $02
- D 0 - I - 0x019165 0C:9155: 12        .byte $12
- D 0 - I - 0x019166 0C:9156: FF        .byte $FF



off_9157_0E_03:
- D 0 - I - 0x019167 0C:9157: E0        .byte $E0
- D 0 - I - 0x019168 0C:9158: 12        .byte $12
- D 0 - I - 0x019169 0C:9159: E3        .byte $E3
- D 0 - I - 0x01916A 0C:915A: 00        .byte $00
- D 0 - I - 0x01916B 0C:915B: 82        .byte $82
- D 0 - I - 0x01916C 0C:915C: 0C        .byte $0C
- D 0 - I - 0x01916D 0C:915D: 81        .byte $81
- D 0 - I - 0x01916E 0C:915E: 0F        .byte $0F
- D 0 - I - 0x01916F 0C:915F: 0E        .byte $0E
- D 0 - I - 0x019170 0C:9160: 0C        .byte $0C
- D 0 - I - 0x019171 0C:9161: 0D        .byte $0D
- D 0 - I - 0x019172 0C:9162: 0C        .byte $0C
- D 0 - I - 0x019173 0C:9163: 82        .byte $82
- D 0 - I - 0x019174 0C:9164: 0C        .byte $0C
- D 0 - I - 0x019175 0C:9165: 81        .byte $81
- D 0 - I - 0x019176 0C:9166: 0B        .byte $0B
- D 0 - I - 0x019177 0C:9167: 0A        .byte $0A
- D 0 - I - 0x019178 0C:9168: 83        .byte $83
- D 0 - I - 0x019179 0C:9169: 0C        .byte $0C
- D 0 - I - 0x01917A 0C:916A: 81        .byte $81
- D 0 - I - 0x01917B 0C:916B: 09        .byte $09
- D 0 - I - 0x01917C 0C:916C: 08        .byte $08
- D 0 - I - 0x01917D 0C:916D: 82        .byte $82
- D 0 - I - 0x01917E 0C:916E: 0C        .byte $0C
- D 0 - I - 0x01917F 0C:916F: 81        .byte $81
- D 0 - I - 0x019180 0C:9170: 08        .byte $08
- D 0 - I - 0x019181 0C:9171: 09        .byte $09
- D 0 - I - 0x019182 0C:9172: 0C        .byte $0C
- D 0 - I - 0x019183 0C:9173: 0A        .byte $0A
- D 0 - I - 0x019184 0C:9174: 0B        .byte $0B
- D 0 - I - 0x019185 0C:9175: 0C        .byte $0C
- D 0 - I - 0x019186 0C:9176: 0D        .byte $0D
- D 0 - I - 0x019187 0C:9177: 0C        .byte $0C
- D 0 - I - 0x019188 0C:9178: 0B        .byte $0B
- D 0 - I - 0x019189 0C:9179: 0A        .byte $0A
- D 0 - I - 0x01918A 0C:917A: 0B        .byte $0B
- D 0 - I - 0x01918B 0C:917B: 0C        .byte $0C
- D 0 - I - 0x01918C 0C:917C: 0D        .byte $0D
- D 0 - I - 0x01918D 0C:917D: 0E        .byte $0E
- D 0 - I - 0x01918E 0C:917E: 96        .byte $96
- D 0 - I - 0x01918F 0C:917F: 0D        .byte $0D
- D 0 - I - 0x019190 0C:9180: FF        .byte $FF



_off000_9181_0C_полет_спешала:
- D 0 - I - 0x019191 0C:9181: 00        .byte $00
- D 0 - I - 0x019192 0C:9182: 8A 91     .word off_918A_выкл
- D 0 - I - 0x019194 0C:9184: 01        .byte $01
- D 0 - I - 0x019195 0C:9185: 8B 91     .word off_918B_0C_01
- D 0 - I - 0x019197 0C:9187: 03        .byte $03
- D 0 - I - 0x019198 0C:9188: A4 91     .word off_91A4_0C_03
off_918A_выкл:
- D 0 - I - 0x01919A 0C:918A: FF        .byte $FF



off_918B_0C_01:
- D 0 - I - 0x01919B 0C:918B: E0        .byte $E0
- D 0 - I - 0x01919C 0C:918C: 14        .byte $14
- D 0 - I - 0x01919D 0C:918D: E2        .byte $E2
- D 0 - I - 0x01919E 0C:918E: C0        .byte $C0
- D 0 - I - 0x01919F 0C:918F: E3        .byte $E3
- D 0 - I - 0x0191A0 0C:9190: 00        .byte $00
- D 0 - I - 0x0191A1 0C:9191: 81        .byte $81
- D 0 - I - 0x0191A2 0C:9192: EB        .byte $EB
- D 0 - I - 0x0191A3 0C:9193: 05        .byte $05
- D 0 - I - 0x0191A4 0C:9194: 01        .byte $01
- D 0 - I - 0x0191A5 0C:9195: 50        .byte $50
- D 0 - I - 0x0191A6 0C:9196: 02        .byte $02
- D 0 - I - 0x0191A7 0C:9197: 51        .byte $51
- D 0 - I - 0x0191A8 0C:9198: 03        .byte $03
- D 0 - I - 0x0191A9 0C:9199: 52        .byte $52
- D 0 - I - 0x0191AA 0C:919A: 04        .byte $04
- D 0 - I - 0x0191AB 0C:919B: 53        .byte $53
- D 0 - I - 0x0191AC 0C:919C: 03        .byte $03
- D 0 - I - 0x0191AD 0C:919D: 52        .byte $52
- D 0 - I - 0x0191AE 0C:919E: 02        .byte $02
- D 0 - I - 0x0191AF 0C:919F: 51        .byte $51
- D 0 - I - 0x0191B0 0C:91A0: 01        .byte $01
- D 0 - I - 0x0191B1 0C:91A1: 50        .byte $50
- D 0 - I - 0x0191B2 0C:91A2: EC        .byte $EC
- D 0 - I - 0x0191B3 0C:91A3: FF        .byte $FF



off_91A4_0C_03:
- D 0 - I - 0x0191B4 0C:91A4: E0        .byte $E0
- D 0 - I - 0x0191B5 0C:91A5: 12        .byte $12
- D 0 - I - 0x0191B6 0C:91A6: E3        .byte $E3
- D 0 - I - 0x0191B7 0C:91A7: 00        .byte $00
- D 0 - I - 0x0191B8 0C:91A8: 81        .byte $81
- D 0 - I - 0x0191B9 0C:91A9: 00        .byte $00
- D 0 - I - 0x0191BA 0C:91AA: 01        .byte $01
- D 0 - I - 0x0191BB 0C:91AB: 02        .byte $02
- D 0 - I - 0x0191BC 0C:91AC: 03        .byte $03
- D 0 - I - 0x0191BD 0C:91AD: 04        .byte $04
- D 0 - I - 0x0191BE 0C:91AE: 03        .byte $03
- D 0 - I - 0x0191BF 0C:91AF: 02        .byte $02
- D 0 - I - 0x0191C0 0C:91B0: 01        .byte $01
- D 0 - I - 0x0191C1 0C:91B1: 01        .byte $01
- D 0 - I - 0x0191C2 0C:91B2: 02        .byte $02
- D 0 - I - 0x0191C3 0C:91B3: 03        .byte $03
- D 0 - I - 0x0191C4 0C:91B4: 04        .byte $04
- D 0 - I - 0x0191C5 0C:91B5: 05        .byte $05
- D 0 - I - 0x0191C6 0C:91B6: 04        .byte $04
- D 0 - I - 0x0191C7 0C:91B7: 03        .byte $03
- D 0 - I - 0x0191C8 0C:91B8: 02        .byte $02
- D 0 - I - 0x0191C9 0C:91B9: 02        .byte $02
- D 0 - I - 0x0191CA 0C:91BA: 03        .byte $03
- D 0 - I - 0x0191CB 0C:91BB: 04        .byte $04
- D 0 - I - 0x0191CC 0C:91BC: 05        .byte $05
- D 0 - I - 0x0191CD 0C:91BD: 06        .byte $06
- D 0 - I - 0x0191CE 0C:91BE: 05        .byte $05
- D 0 - I - 0x0191CF 0C:91BF: 04        .byte $04
- D 0 - I - 0x0191D0 0C:91C0: 03        .byte $03
- D 0 - I - 0x0191D1 0C:91C1: 03        .byte $03
- D 0 - I - 0x0191D2 0C:91C2: 04        .byte $04
- D 0 - I - 0x0191D3 0C:91C3: 05        .byte $05
- D 0 - I - 0x0191D4 0C:91C4: 06        .byte $06
- D 0 - I - 0x0191D5 0C:91C5: 07        .byte $07
- D 0 - I - 0x0191D6 0C:91C6: 06        .byte $06
- D 0 - I - 0x0191D7 0C:91C7: 05        .byte $05
- D 0 - I - 0x0191D8 0C:91C8: 04        .byte $04
- D 0 - I - 0x0191D9 0C:91C9: 04        .byte $04
- D 0 - I - 0x0191DA 0C:91CA: 05        .byte $05
- D 0 - I - 0x0191DB 0C:91CB: 06        .byte $06
- D 0 - I - 0x0191DC 0C:91CC: 07        .byte $07
- D 0 - I - 0x0191DD 0C:91CD: 08        .byte $08
- D 0 - I - 0x0191DE 0C:91CE: 07        .byte $07
- D 0 - I - 0x0191DF 0C:91CF: 06        .byte $06
- D 0 - I - 0x0191E0 0C:91D0: 05        .byte $05
- D 0 - I - 0x0191E1 0C:91D1: 05        .byte $05
- D 0 - I - 0x0191E2 0C:91D2: 06        .byte $06
- D 0 - I - 0x0191E3 0C:91D3: 07        .byte $07
- D 0 - I - 0x0191E4 0C:91D4: 08        .byte $08
- D 0 - I - 0x0191E5 0C:91D5: 09        .byte $09
- D 0 - I - 0x0191E6 0C:91D6: 08        .byte $08
- D 0 - I - 0x0191E7 0C:91D7: 07        .byte $07
- D 0 - I - 0x0191E8 0C:91D8: 06        .byte $06
- D 0 - I - 0x0191E9 0C:91D9: 06        .byte $06
- D 0 - I - 0x0191EA 0C:91DA: 07        .byte $07
- D 0 - I - 0x0191EB 0C:91DB: 08        .byte $08
- D 0 - I - 0x0191EC 0C:91DC: 09        .byte $09
- D 0 - I - 0x0191ED 0C:91DD: 0A        .byte $0A
- D 0 - I - 0x0191EE 0C:91DE: 09        .byte $09
- D 0 - I - 0x0191EF 0C:91DF: 08        .byte $08
- D 0 - I - 0x0191F0 0C:91E0: 07        .byte $07
- D 0 - I - 0x0191F1 0C:91E1: 07        .byte $07
- D 0 - I - 0x0191F2 0C:91E2: 08        .byte $08
- D 0 - I - 0x0191F3 0C:91E3: 09        .byte $09
- D 0 - I - 0x0191F4 0C:91E4: 0A        .byte $0A
- D 0 - I - 0x0191F5 0C:91E5: 0B        .byte $0B
- D 0 - I - 0x0191F6 0C:91E6: 0A        .byte $0A
- D 0 - I - 0x0191F7 0C:91E7: 09        .byte $09
- D 0 - I - 0x0191F8 0C:91E8: 08        .byte $08
- D 0 - I - 0x0191F9 0C:91E9: FF        .byte $FF



_off000_91EA_0D_исчезновение_мяча:
- D 0 - I - 0x0191FA 0C:91EA: 00        .byte $00
- D 0 - I - 0x0191FB 0C:91EB: F4 91     .word off_91F4_0D_00
- D 0 - I - 0x0191FD 0C:91ED: 01        .byte $01
- D 0 - I - 0x0191FE 0C:91EE: 30 92     .word off_9230_0D_01
- D 0 - I - 0x019200 0C:91F0: 03        .byte $03
- D 0 - I - 0x019201 0C:91F1: F3 91     .word off_91F3_выкл
off_91F3_выкл:
- D 0 - I - 0x019203 0C:91F3: FF        .byte $FF



off_91F4_0D_00:
loc_E8_91F4:
- D 0 - I - 0x019204 0C:91F4: E0        .byte $E0
- D 0 - I - 0x019205 0C:91F5: 11        .byte $11
- D 0 - I - 0x019206 0C:91F6: E2        .byte $E2
- D 0 - I - 0x019207 0C:91F7: C0        .byte $C0
- D 0 - I - 0x019208 0C:91F8: E3        .byte $E3
- D 0 - I - 0x019209 0C:91F9: 00        .byte $00
- D 0 - I - 0x01920A 0C:91FA: 81        .byte $81
- D 0 - I - 0x01920B 0C:91FB: 48        .byte $48
- D 0 - I - 0x01920C 0C:91FC: E5        .byte $E5
- D 0 - I - 0x01920D 0C:91FD: 01        .byte $01
- D 0 - I - 0x01920E 0C:91FE: 48        .byte $48
- D 0 - I - 0x01920F 0C:91FF: E5        .byte $E5
- D 0 - I - 0x019210 0C:9200: 02        .byte $02
- D 0 - I - 0x019211 0C:9201: 48        .byte $48
- D 0 - I - 0x019212 0C:9202: E5        .byte $E5
- D 0 - I - 0x019213 0C:9203: 04        .byte $04
- D 0 - I - 0x019214 0C:9204: 48        .byte $48
- D 0 - I - 0x019215 0C:9205: E9        .byte $E9
- D 0 - I - 0x019216 0C:9206: 1D 92     .word sub_E9_921D
- D 0 - I - 0x019218 0C:9208: E3        .byte $E3
- D 0 - I - 0x019219 0C:9209: 08        .byte $08
- D 0 - I - 0x01921A 0C:920A: E9        .byte $E9
- D 0 - I - 0x01921B 0C:920B: 1D 92     .word sub_E9_921D
- D 0 - I - 0x01921D 0C:920D: E3        .byte $E3
- D 0 - I - 0x01921E 0C:920E: 0A        .byte $0A
- D 0 - I - 0x01921F 0C:920F: E9        .byte $E9
- D 0 - I - 0x019220 0C:9210: 1D 92     .word sub_E9_921D
- D 0 - I - 0x019222 0C:9212: E3        .byte $E3
- D 0 - I - 0x019223 0C:9213: 0C        .byte $0C
- D 0 - I - 0x019224 0C:9214: E9        .byte $E9
- D 0 - I - 0x019225 0C:9215: 1D 92     .word sub_E9_921D
- D 0 - I - 0x019227 0C:9217: E3        .byte $E3
- D 0 - I - 0x019228 0C:9218: 0E        .byte $0E
- D 0 - I - 0x019229 0C:9219: E9        .byte $E9
- D 0 - I - 0x01922A 0C:921A: 1D 92     .word sub_E9_921D
- D 0 - I - 0x01922C 0C:921C: FF        .byte $FF



sub_E9_921D:
- D 0 - I - 0x01922D 0C:921D: E5        .byte $E5
- D 0 - I - 0x01922E 0C:921E: 06        .byte $06
- D 0 - I - 0x01922F 0C:921F: 48        .byte $48
- D 0 - I - 0x019230 0C:9220: E5        .byte $E5
- D 0 - I - 0x019231 0C:9221: 08        .byte $08
- D 0 - I - 0x019232 0C:9222: 48        .byte $48
- D 0 - I - 0x019233 0C:9223: E5        .byte $E5
- D 0 - I - 0x019234 0C:9224: 0A        .byte $0A
- D 0 - I - 0x019235 0C:9225: 48        .byte $48
- D 0 - I - 0x019236 0C:9226: E5        .byte $E5
- D 0 - I - 0x019237 0C:9227: 0C        .byte $0C
- D 0 - I - 0x019238 0C:9228: 48        .byte $48
- D 0 - I - 0x019239 0C:9229: E5        .byte $E5
- D 0 - I - 0x01923A 0C:922A: 0E        .byte $0E
- D 0 - I - 0x01923B 0C:922B: 48        .byte $48
- D 0 - I - 0x01923C 0C:922C: E5        .byte $E5
- D 0 - I - 0x01923D 0C:922D: 10        .byte $10
- D 0 - I - 0x01923E 0C:922E: 48        .byte $48
- D 0 - I - 0x01923F 0C:922F: EA        .byte $EA



off_9230_0D_01:
- D 0 - I - 0x019240 0C:9230: 84        .byte $84
- D 0 - I - 0x019241 0C:9231: 0C        .byte $0C
- D 0 - I - 0x019242 0C:9232: E8        .byte $E8
- D 0 - I - 0x019243 0C:9233: F4 91     .word loc_E8_91F4



_off000_9235_09_полет_спешала:
- D 0 - I - 0x019245 0C:9235: 00        .byte $00
- D 0 - I - 0x019246 0C:9236: 3E 92     .word off_923E_выкл
- D 0 - I - 0x019248 0C:9238: 01        .byte $01
- D 0 - I - 0x019249 0C:9239: 3F 92     .word off_923F_09_01
- D 0 - I - 0x01924B 0C:923B: 03        .byte $03
- D 0 - I - 0x01924C 0C:923C: DC 92     .word off_92DC_09_03
off_923E_выкл:
- D 0 - I - 0x01924E 0C:923E: FF        .byte $FF



off_923F_09_01:
- D 0 - I - 0x01924F 0C:923F: E0        .byte $E0
- D 0 - I - 0x019250 0C:9240: 14        .byte $14
- D 0 - I - 0x019251 0C:9241: E2        .byte $E2
- D 0 - I - 0x019252 0C:9242: 80        .byte $80
- D 0 - I - 0x019253 0C:9243: E3        .byte $E3
- D 0 - I - 0x019254 0C:9244: 08        .byte $08
- D 0 - I - 0x019255 0C:9245: E9        .byte $E9
- D 0 - I - 0x019256 0C:9246: C0 92     .word sub_E9_92C0
- D 0 - I - 0x019258 0C:9248: EB        .byte $EB
- D 0 - I - 0x019259 0C:9249: 06        .byte $06
- D 0 - I - 0x01925A 0C:924A: 03        .byte $03
- D 0 - I - 0x01925B 0C:924B: 10        .byte $10
- D 0 - I - 0x01925C 0C:924C: EC        .byte $EC
- D 0 - I - 0x01925D 0C:924D: EB        .byte $EB
- D 0 - I - 0x01925E 0C:924E: 07        .byte $07
- D 0 - I - 0x01925F 0C:924F: 02        .byte $02
- D 0 - I - 0x019260 0C:9250: 11        .byte $11
- D 0 - I - 0x019261 0C:9251: EC        .byte $EC
- D 0 - I - 0x019262 0C:9252: E3        .byte $E3
- D 0 - I - 0x019263 0C:9253: 02        .byte $02
- D 0 - I - 0x019264 0C:9254: EB        .byte $EB
- D 0 - I - 0x019265 0C:9255: 03        .byte $03
- D 0 - I - 0x019266 0C:9256: 02        .byte $02
- D 0 - I - 0x019267 0C:9257: 14        .byte $14
- D 0 - I - 0x019268 0C:9258: 02        .byte $02
- D 0 - I - 0x019269 0C:9259: 15        .byte $15
- D 0 - I - 0x01926A 0C:925A: 03        .byte $03
- D 0 - I - 0x01926B 0C:925B: 14        .byte $14
- D 0 - I - 0x01926C 0C:925C: 04        .byte $04
- D 0 - I - 0x01926D 0C:925D: 13        .byte $13
- D 0 - I - 0x01926E 0C:925E: EC        .byte $EC
- D 0 - I - 0x01926F 0C:925F: E3        .byte $E3
- D 0 - I - 0x019270 0C:9260: 03        .byte $03
- D 0 - I - 0x019271 0C:9261: 02        .byte $02
- D 0 - I - 0x019272 0C:9262: 15        .byte $15
- D 0 - I - 0x019273 0C:9263: 03        .byte $03
- D 0 - I - 0x019274 0C:9264: 14        .byte $14
- D 0 - I - 0x019275 0C:9265: 04        .byte $04
- D 0 - I - 0x019276 0C:9266: 13        .byte $13
- D 0 - I - 0x019277 0C:9267: E3        .byte $E3
- D 0 - I - 0x019278 0C:9268: 04        .byte $04
- D 0 - I - 0x019279 0C:9269: 03        .byte $03
- D 0 - I - 0x01927A 0C:926A: 14        .byte $14
- D 0 - I - 0x01927B 0C:926B: 02        .byte $02
- D 0 - I - 0x01927C 0C:926C: 15        .byte $15
- D 0 - I - 0x01927D 0C:926D: 03        .byte $03
- D 0 - I - 0x01927E 0C:926E: 14        .byte $14
- D 0 - I - 0x01927F 0C:926F: E3        .byte $E3
- D 0 - I - 0x019280 0C:9270: 05        .byte $05
- D 0 - I - 0x019281 0C:9271: 04        .byte $04
- D 0 - I - 0x019282 0C:9272: 13        .byte $13
- D 0 - I - 0x019283 0C:9273: 03        .byte $03
- D 0 - I - 0x019284 0C:9274: 14        .byte $14
- D 0 - I - 0x019285 0C:9275: 02        .byte $02
- D 0 - I - 0x019286 0C:9276: 15        .byte $15
- D 0 - I - 0x019287 0C:9277: E3        .byte $E3
- D 0 - I - 0x019288 0C:9278: 06        .byte $06
- D 0 - I - 0x019289 0C:9279: 02        .byte $02
- D 0 - I - 0x01928A 0C:927A: 14        .byte $14
- D 0 - I - 0x01928B 0C:927B: 03        .byte $03
- D 0 - I - 0x01928C 0C:927C: 12        .byte $12
- D 0 - I - 0x01928D 0C:927D: 02        .byte $02
- D 0 - I - 0x01928E 0C:927E: 13        .byte $13
- D 0 - I - 0x01928F 0C:927F: E3        .byte $E3
- D 0 - I - 0x019290 0C:9280: 07        .byte $07
- D 0 - I - 0x019291 0C:9281: 01        .byte $01
- D 0 - I - 0x019292 0C:9282: 14        .byte $14
- D 0 - I - 0x019293 0C:9283: 02        .byte $02
- D 0 - I - 0x019294 0C:9284: 13        .byte $13
- D 0 - I - 0x019295 0C:9285: 03        .byte $03
- D 0 - I - 0x019296 0C:9286: 12        .byte $12
- D 0 - I - 0x019297 0C:9287: E3        .byte $E3
- D 0 - I - 0x019298 0C:9288: 08        .byte $08
- D 0 - I - 0x019299 0C:9289: 02        .byte $02
- D 0 - I - 0x01929A 0C:928A: 13        .byte $13
- D 0 - I - 0x01929B 0C:928B: 01        .byte $01
- D 0 - I - 0x01929C 0C:928C: 14        .byte $14
- D 0 - I - 0x01929D 0C:928D: 02        .byte $02
- D 0 - I - 0x01929E 0C:928E: 13        .byte $13
- D 0 - I - 0x01929F 0C:928F: E3        .byte $E3
- D 0 - I - 0x0192A0 0C:9290: 09        .byte $09
- D 0 - I - 0x0192A1 0C:9291: 03        .byte $03
- D 0 - I - 0x0192A2 0C:9292: 12        .byte $12
- D 0 - I - 0x0192A3 0C:9293: 02        .byte $02
- D 0 - I - 0x0192A4 0C:9294: 13        .byte $13
- D 0 - I - 0x0192A5 0C:9295: 01        .byte $01
- D 0 - I - 0x0192A6 0C:9296: 14        .byte $14
- D 0 - I - 0x0192A7 0C:9297: E3        .byte $E3
- D 0 - I - 0x0192A8 0C:9298: 0A        .byte $0A
- D 0 - I - 0x0192A9 0C:9299: 01        .byte $01
- D 0 - I - 0x0192AA 0C:929A: 12        .byte $12
- D 0 - I - 0x0192AB 0C:929B: 02        .byte $02
- D 0 - I - 0x0192AC 0C:929C: 11        .byte $11
- D 0 - I - 0x0192AD 0C:929D: 01        .byte $01
- D 0 - I - 0x0192AE 0C:929E: 12        .byte $12
- D 0 - I - 0x0192AF 0C:929F: E3        .byte $E3
- D 0 - I - 0x0192B0 0C:92A0: 0B        .byte $0B
- D 0 - I - 0x0192B1 0C:92A1: 00        .byte $00
- D 0 - I - 0x0192B2 0C:92A2: 13        .byte $13
- D 0 - I - 0x0192B3 0C:92A3: 01        .byte $01
- D 0 - I - 0x0192B4 0C:92A4: 12        .byte $12
- D 0 - I - 0x0192B5 0C:92A5: 02        .byte $02
- D 0 - I - 0x0192B6 0C:92A6: 11        .byte $11
- D 0 - I - 0x0192B7 0C:92A7: E3        .byte $E3
- D 0 - I - 0x0192B8 0C:92A8: 0C        .byte $0C
- D 0 - I - 0x0192B9 0C:92A9: 01        .byte $01
- D 0 - I - 0x0192BA 0C:92AA: 12        .byte $12
- D 0 - I - 0x0192BB 0C:92AB: 00        .byte $00
- D 0 - I - 0x0192BC 0C:92AC: 13        .byte $13
- D 0 - I - 0x0192BD 0C:92AD: 01        .byte $01
- D 0 - I - 0x0192BE 0C:92AE: 12        .byte $12
- D 0 - I - 0x0192BF 0C:92AF: E3        .byte $E3
- D 0 - I - 0x0192C0 0C:92B0: 0D        .byte $0D
- D 0 - I - 0x0192C1 0C:92B1: 02        .byte $02
- D 0 - I - 0x0192C2 0C:92B2: 11        .byte $11
- D 0 - I - 0x0192C3 0C:92B3: 01        .byte $01
- D 0 - I - 0x0192C4 0C:92B4: 12        .byte $12
- D 0 - I - 0x0192C5 0C:92B5: 00        .byte $00
- D 0 - I - 0x0192C6 0C:92B6: 13        .byte $13
- D 0 - I - 0x0192C7 0C:92B7: E3        .byte $E3
- D 0 - I - 0x0192C8 0C:92B8: 0E        .byte $0E
- D 0 - I - 0x0192C9 0C:92B9: 01        .byte $01
- D 0 - I - 0x0192CA 0C:92BA: 12        .byte $12
- D 0 - I - 0x0192CB 0C:92BB: 02        .byte $02
- D 0 - I - 0x0192CC 0C:92BC: 11        .byte $11
- D 0 - I - 0x0192CD 0C:92BD: 01        .byte $01
- D 0 - I - 0x0192CE 0C:92BE: 12        .byte $12
- D 0 - I - 0x0192CF 0C:92BF: FF        .byte $FF



sub_E9_92C0:
- D 0 - I - 0x0192D0 0C:92C0: EB        .byte $EB
- D 0 - I - 0x0192D1 0C:92C1: 02        .byte $02
- D 0 - I - 0x0192D2 0C:92C2: 81        .byte $81
- D 0 - I - 0x0192D3 0C:92C3: 07        .byte $07
- D 0 - I - 0x0192D4 0C:92C4: 82        .byte $82
- D 0 - I - 0x0192D5 0C:92C5: 08        .byte $08
- D 0 - I - 0x0192D6 0C:92C6: EC        .byte $EC
- D 0 - I - 0x0192D7 0C:92C7: EB        .byte $EB
- D 0 - I - 0x0192D8 0C:92C8: 03        .byte $03
- D 0 - I - 0x0192D9 0C:92C9: 82        .byte $82
- D 0 - I - 0x0192DA 0C:92CA: 06        .byte $06
- D 0 - I - 0x0192DB 0C:92CB: 81        .byte $81
- D 0 - I - 0x0192DC 0C:92CC: 09        .byte $09
- D 0 - I - 0x0192DD 0C:92CD: EC        .byte $EC
- D 0 - I - 0x0192DE 0C:92CE: EB        .byte $EB
- D 0 - I - 0x0192DF 0C:92CF: 04        .byte $04
- D 0 - I - 0x0192E0 0C:92D0: 81        .byte $81
- D 0 - I - 0x0192E1 0C:92D1: 05        .byte $05
- D 0 - I - 0x0192E2 0C:92D2: 82        .byte $82
- D 0 - I - 0x0192E3 0C:92D3: 0A        .byte $0A
- D 0 - I - 0x0192E4 0C:92D4: EC        .byte $EC
- D 0 - I - 0x0192E5 0C:92D5: EB        .byte $EB
- D 0 - I - 0x0192E6 0C:92D6: 05        .byte $05
- D 0 - I - 0x0192E7 0C:92D7: 81        .byte $81
- D 0 - I - 0x0192E8 0C:92D8: 04        .byte $04
- D 0 - I - 0x0192E9 0C:92D9: 0B        .byte $0B
- D 0 - I - 0x0192EA 0C:92DA: EC        .byte $EC
- D 0 - I - 0x0192EB 0C:92DB: EA        .byte $EA



off_92DC_09_03:
- D 0 - I - 0x0192EC 0C:92DC: E0        .byte $E0
- D 0 - I - 0x0192ED 0C:92DD: 14        .byte $14
- D 0 - I - 0x0192EE 0C:92DE: E3        .byte $E3
- D 0 - I - 0x0192EF 0C:92DF: 02        .byte $02
- D 0 - I - 0x0192F0 0C:92E0: E9        .byte $E9
- D 0 - I - 0x0192F1 0C:92E1: C0 92     .word sub_E9_92C0
- D 0 - I - 0x0192F3 0C:92E3: EB        .byte $EB
- D 0 - I - 0x0192F4 0C:92E4: 06        .byte $06
- D 0 - I - 0x0192F5 0C:92E5: 03        .byte $03
- D 0 - I - 0x0192F6 0C:92E6: 0C        .byte $0C
- D 0 - I - 0x0192F7 0C:92E7: EC        .byte $EC
- D 0 - I - 0x0192F8 0C:92E8: EB        .byte $EB
- D 0 - I - 0x0192F9 0C:92E9: 07        .byte $07
- D 0 - I - 0x0192FA 0C:92EA: 02        .byte $02
- D 0 - I - 0x0192FB 0C:92EB: 0D        .byte $0D
- D 0 - I - 0x0192FC 0C:92EC: EC        .byte $EC
- D 0 - I - 0x0192FD 0C:92ED: EB        .byte $EB
- D 0 - I - 0x0192FE 0C:92EE: 03        .byte $03
- D 0 - I - 0x0192FF 0C:92EF: 01        .byte $01
- D 0 - I - 0x019300 0C:92F0: 0E        .byte $0E
- D 0 - I - 0x019301 0C:92F1: 00        .byte $00
- D 0 - I - 0x019302 0C:92F2: 0F        .byte $0F
- D 0 - I - 0x019303 0C:92F3: 01        .byte $01
- D 0 - I - 0x019304 0C:92F4: 0E        .byte $0E
- D 0 - I - 0x019305 0C:92F5: 02        .byte $02
- D 0 - I - 0x019306 0C:92F6: 0D        .byte $0D
- D 0 - I - 0x019307 0C:92F7: EC        .byte $EC
- D 0 - I - 0x019308 0C:92F8: E3        .byte $E3
- D 0 - I - 0x019309 0C:92F9: 03        .byte $03
- D 0 - I - 0x01930A 0C:92FA: 00        .byte $00
- D 0 - I - 0x01930B 0C:92FB: 0F        .byte $0F
- D 0 - I - 0x01930C 0C:92FC: 01        .byte $01
- D 0 - I - 0x01930D 0C:92FD: 0E        .byte $0E
- D 0 - I - 0x01930E 0C:92FE: 02        .byte $02
- D 0 - I - 0x01930F 0C:92FF: 0D        .byte $0D
- D 0 - I - 0x019310 0C:9300: E3        .byte $E3
- D 0 - I - 0x019311 0C:9301: 04        .byte $04
- D 0 - I - 0x019312 0C:9302: 01        .byte $01
- D 0 - I - 0x019313 0C:9303: 0E        .byte $0E
- D 0 - I - 0x019314 0C:9304: 00        .byte $00
- D 0 - I - 0x019315 0C:9305: 0F        .byte $0F
- D 0 - I - 0x019316 0C:9306: 01        .byte $01
- D 0 - I - 0x019317 0C:9307: 0E        .byte $0E
- D 0 - I - 0x019318 0C:9308: E3        .byte $E3
- D 0 - I - 0x019319 0C:9309: 05        .byte $05
- D 0 - I - 0x01931A 0C:930A: 02        .byte $02
- D 0 - I - 0x01931B 0C:930B: 0D        .byte $0D
- D 0 - I - 0x01931C 0C:930C: 01        .byte $01
- D 0 - I - 0x01931D 0C:930D: 0E        .byte $0E
- D 0 - I - 0x01931E 0C:930E: 00        .byte $00
- D 0 - I - 0x01931F 0C:930F: 0F        .byte $0F
- D 0 - I - 0x019320 0C:9310: E3        .byte $E3
- D 0 - I - 0x019321 0C:9311: 06        .byte $06
- D 0 - I - 0x019322 0C:9312: 01        .byte $01
- D 0 - I - 0x019323 0C:9313: 0E        .byte $0E
- D 0 - I - 0x019324 0C:9314: 02        .byte $02
- D 0 - I - 0x019325 0C:9315: 0D        .byte $0D
- D 0 - I - 0x019326 0C:9316: 01        .byte $01
- D 0 - I - 0x019327 0C:9317: 0E        .byte $0E
- D 0 - I - 0x019328 0C:9318: E3        .byte $E3
- D 0 - I - 0x019329 0C:9319: 07        .byte $07
- D 0 - I - 0x01932A 0C:931A: 00        .byte $00
- D 0 - I - 0x01932B 0C:931B: 0F        .byte $0F
- D 0 - I - 0x01932C 0C:931C: 01        .byte $01
- D 0 - I - 0x01932D 0C:931D: 0E        .byte $0E
- D 0 - I - 0x01932E 0C:931E: 02        .byte $02
- D 0 - I - 0x01932F 0C:931F: 0D        .byte $0D
- D 0 - I - 0x019330 0C:9320: E3        .byte $E3
- D 0 - I - 0x019331 0C:9321: 08        .byte $08
- D 0 - I - 0x019332 0C:9322: 01        .byte $01
- D 0 - I - 0x019333 0C:9323: 0E        .byte $0E
- D 0 - I - 0x019334 0C:9324: 00        .byte $00
- D 0 - I - 0x019335 0C:9325: 0F        .byte $0F
- D 0 - I - 0x019336 0C:9326: 01        .byte $01
- D 0 - I - 0x019337 0C:9327: 0E        .byte $0E
- D 0 - I - 0x019338 0C:9328: E3        .byte $E3
- D 0 - I - 0x019339 0C:9329: 09        .byte $09
- D 0 - I - 0x01933A 0C:932A: 02        .byte $02
- D 0 - I - 0x01933B 0C:932B: 0D        .byte $0D
- D 0 - I - 0x01933C 0C:932C: 01        .byte $01
- D 0 - I - 0x01933D 0C:932D: 0E        .byte $0E
- D 0 - I - 0x01933E 0C:932E: 00        .byte $00
- D 0 - I - 0x01933F 0C:932F: 0F        .byte $0F
- D 0 - I - 0x019340 0C:9330: E3        .byte $E3
- D 0 - I - 0x019341 0C:9331: 0A        .byte $0A
- D 0 - I - 0x019342 0C:9332: 01        .byte $01
- D 0 - I - 0x019343 0C:9333: 0E        .byte $0E
- D 0 - I - 0x019344 0C:9334: 02        .byte $02
- D 0 - I - 0x019345 0C:9335: 0D        .byte $0D
- D 0 - I - 0x019346 0C:9336: 01        .byte $01
- D 0 - I - 0x019347 0C:9337: 0E        .byte $0E
- D 0 - I - 0x019348 0C:9338: E3        .byte $E3
- D 0 - I - 0x019349 0C:9339: 0B        .byte $0B
- D 0 - I - 0x01934A 0C:933A: 00        .byte $00
- D 0 - I - 0x01934B 0C:933B: 0F        .byte $0F
- D 0 - I - 0x01934C 0C:933C: 01        .byte $01
- D 0 - I - 0x01934D 0C:933D: 0E        .byte $0E
- D 0 - I - 0x01934E 0C:933E: 02        .byte $02
- D 0 - I - 0x01934F 0C:933F: 0D        .byte $0D
- D 0 - I - 0x019350 0C:9340: E3        .byte $E3
- D 0 - I - 0x019351 0C:9341: 0C        .byte $0C
- D 0 - I - 0x019352 0C:9342: 01        .byte $01
- D 0 - I - 0x019353 0C:9343: 0E        .byte $0E
- D 0 - I - 0x019354 0C:9344: 00        .byte $00
- D 0 - I - 0x019355 0C:9345: 0F        .byte $0F
- D 0 - I - 0x019356 0C:9346: 01        .byte $01
- D 0 - I - 0x019357 0C:9347: 0E        .byte $0E
- D 0 - I - 0x019358 0C:9348: E3        .byte $E3
- D 0 - I - 0x019359 0C:9349: 0D        .byte $0D
- D 0 - I - 0x01935A 0C:934A: 02        .byte $02
- D 0 - I - 0x01935B 0C:934B: 0D        .byte $0D
- D 0 - I - 0x01935C 0C:934C: 01        .byte $01
- D 0 - I - 0x01935D 0C:934D: 0E        .byte $0E
- D 0 - I - 0x01935E 0C:934E: 00        .byte $00
- D 0 - I - 0x01935F 0C:934F: 0F        .byte $0F
- D 0 - I - 0x019360 0C:9350: E3        .byte $E3
- D 0 - I - 0x019361 0C:9351: 0E        .byte $0E
- D 0 - I - 0x019362 0C:9352: 01        .byte $01
- D 0 - I - 0x019363 0C:9353: 0E        .byte $0E
- D 0 - I - 0x019364 0C:9354: 02        .byte $02
- D 0 - I - 0x019365 0C:9355: 0D        .byte $0D
- D 0 - I - 0x019366 0C:9356: 01        .byte $01
- D 0 - I - 0x019367 0C:9357: 0E        .byte $0E
- D 0 - I - 0x019368 0C:9358: FF        .byte $FF



_off000_9359_17_замах_соды:
- D 0 - I - 0x019369 0C:9359: 00        .byte $00
- D 0 - I - 0x01936A 0C:935A: 63 93     .word off_9363_17_00
- D 0 - I - 0x01936C 0C:935C: 01        .byte $01
- D 0 - I - 0x01936D 0C:935D: A7 93     .word off_93A7_17_01
- D 0 - I - 0x01936F 0C:935F: 03        .byte $03
- D 0 - I - 0x019370 0C:9360: EB 93     .word off_93EB_17_03
- D 0 - I - 0x019372 0C:9362: FF        .byte $FF



off_9363_17_00:
- D 0 - I - 0x019373 0C:9363: E0        .byte $E0
- D 0 - I - 0x019374 0C:9364: 13        .byte $13
- D 0 - I - 0x019375 0C:9365: E2        .byte $E2
- D 0 - I - 0x019376 0C:9366: 40        .byte $40
- D 0 - I - 0x019377 0C:9367: 81        .byte $81
- D 0 - I - 0x019378 0C:9368: E3        .byte $E3
- D 0 - I - 0x019379 0C:9369: 07        .byte $07
- D 0 - I - 0x01937A 0C:936A: 11        .byte $11
- D 0 - I - 0x01937B 0C:936B: 12        .byte $12
- D 0 - I - 0x01937C 0C:936C: 13        .byte $13
- D 0 - I - 0x01937D 0C:936D: 14        .byte $14
- D 0 - I - 0x01937E 0C:936E: 15        .byte $15
- D 0 - I - 0x01937F 0C:936F: 16        .byte $16
- D 0 - I - 0x019380 0C:9370: 17        .byte $17
- D 0 - I - 0x019381 0C:9371: 18        .byte $18
- D 0 - I - 0x019382 0C:9372: 19        .byte $19
- D 0 - I - 0x019383 0C:9373: 12        .byte $12
- D 0 - I - 0x019384 0C:9374: 13        .byte $13
- D 0 - I - 0x019385 0C:9375: 14        .byte $14
- D 0 - I - 0x019386 0C:9376: 15        .byte $15
- D 0 - I - 0x019387 0C:9377: 16        .byte $16
- D 0 - I - 0x019388 0C:9378: 17        .byte $17
- D 0 - I - 0x019389 0C:9379: 18        .byte $18
- D 0 - I - 0x01938A 0C:937A: 19        .byte $19
- D 0 - I - 0x01938B 0C:937B: 13        .byte $13
- D 0 - I - 0x01938C 0C:937C: 14        .byte $14
- D 0 - I - 0x01938D 0C:937D: 15        .byte $15
- D 0 - I - 0x01938E 0C:937E: 16        .byte $16
- D 0 - I - 0x01938F 0C:937F: 17        .byte $17
- D 0 - I - 0x019390 0C:9380: 18        .byte $18
- D 0 - I - 0x019391 0C:9381: 19        .byte $19
- D 0 - I - 0x019392 0C:9382: 14        .byte $14
- D 0 - I - 0x019393 0C:9383: 15        .byte $15
- D 0 - I - 0x019394 0C:9384: 16        .byte $16
- D 0 - I - 0x019395 0C:9385: 17        .byte $17
- D 0 - I - 0x019396 0C:9386: 18        .byte $18
- D 0 - I - 0x019397 0C:9387: 19        .byte $19
- D 0 - I - 0x019398 0C:9388: 15        .byte $15
- D 0 - I - 0x019399 0C:9389: 16        .byte $16
- D 0 - I - 0x01939A 0C:938A: 17        .byte $17
- D 0 - I - 0x01939B 0C:938B: 18        .byte $18
- D 0 - I - 0x01939C 0C:938C: 19        .byte $19
- D 0 - I - 0x01939D 0C:938D: 16        .byte $16
- D 0 - I - 0x01939E 0C:938E: 17        .byte $17
- D 0 - I - 0x01939F 0C:938F: 18        .byte $18
- D 0 - I - 0x0193A0 0C:9390: 19        .byte $19
- D 0 - I - 0x0193A1 0C:9391: 17        .byte $17
- D 0 - I - 0x0193A2 0C:9392: 18        .byte $18
- D 0 - I - 0x0193A3 0C:9393: 19        .byte $19
- D 0 - I - 0x0193A4 0C:9394: 18        .byte $18
- D 0 - I - 0x0193A5 0C:9395: 19        .byte $19
- D 0 - I - 0x0193A6 0C:9396: E3        .byte $E3
- D 0 - I - 0x0193A7 0C:9397: 06        .byte $06
- D 0 - I - 0x0193A8 0C:9398: 18        .byte $18
- D 0 - I - 0x0193A9 0C:9399: 19        .byte $19
- D 0 - I - 0x0193AA 0C:939A: 18        .byte $18
- D 0 - I - 0x0193AB 0C:939B: 19        .byte $19
- D 0 - I - 0x0193AC 0C:939C: E3        .byte $E3
- D 0 - I - 0x0193AD 0C:939D: 05        .byte $05
- D 0 - I - 0x0193AE 0C:939E: 18        .byte $18
- D 0 - I - 0x0193AF 0C:939F: 19        .byte $19
- D 0 - I - 0x0193B0 0C:93A0: 18        .byte $18
- D 0 - I - 0x0193B1 0C:93A1: 19        .byte $19
- D 0 - I - 0x0193B2 0C:93A2: E3        .byte $E3
- D 0 - I - 0x0193B3 0C:93A3: 04        .byte $04
- D 0 - I - 0x0193B4 0C:93A4: 18        .byte $18
- D 0 - I - 0x0193B5 0C:93A5: 19        .byte $19
- D 0 - I - 0x0193B6 0C:93A6: FF        .byte $FF



off_93A7_17_01:
- D 0 - I - 0x0193B7 0C:93A7: E0        .byte $E0
- D 0 - I - 0x0193B8 0C:93A8: 13        .byte $13
- D 0 - I - 0x0193B9 0C:93A9: E2        .byte $E2
- D 0 - I - 0x0193BA 0C:93AA: 80        .byte $80
- D 0 - I - 0x0193BB 0C:93AB: 81        .byte $81
- D 0 - I - 0x0193BC 0C:93AC: E3        .byte $E3
- D 0 - I - 0x0193BD 0C:93AD: 07        .byte $07
- D 0 - I - 0x0193BE 0C:93AE: 12        .byte $12
- D 0 - I - 0x0193BF 0C:93AF: 13        .byte $13
- D 0 - I - 0x0193C0 0C:93B0: 14        .byte $14
- D 0 - I - 0x0193C1 0C:93B1: 15        .byte $15
- D 0 - I - 0x0193C2 0C:93B2: 16        .byte $16
- D 0 - I - 0x0193C3 0C:93B3: 17        .byte $17
- D 0 - I - 0x0193C4 0C:93B4: 18        .byte $18
- D 0 - I - 0x0193C5 0C:93B5: 19        .byte $19
- D 0 - I - 0x0193C6 0C:93B6: 1A        .byte $1A
- D 0 - I - 0x0193C7 0C:93B7: 13        .byte $13
- D 0 - I - 0x0193C8 0C:93B8: 14        .byte $14
- D 0 - I - 0x0193C9 0C:93B9: 15        .byte $15
- D 0 - I - 0x0193CA 0C:93BA: 16        .byte $16
- D 0 - I - 0x0193CB 0C:93BB: 17        .byte $17
- D 0 - I - 0x0193CC 0C:93BC: 18        .byte $18
- D 0 - I - 0x0193CD 0C:93BD: 19        .byte $19
- D 0 - I - 0x0193CE 0C:93BE: 1A        .byte $1A
- D 0 - I - 0x0193CF 0C:93BF: 14        .byte $14
- D 0 - I - 0x0193D0 0C:93C0: 15        .byte $15
- D 0 - I - 0x0193D1 0C:93C1: 16        .byte $16
- D 0 - I - 0x0193D2 0C:93C2: 17        .byte $17
- D 0 - I - 0x0193D3 0C:93C3: 18        .byte $18
- D 0 - I - 0x0193D4 0C:93C4: 19        .byte $19
- D 0 - I - 0x0193D5 0C:93C5: 1A        .byte $1A
- D 0 - I - 0x0193D6 0C:93C6: 15        .byte $15
- D 0 - I - 0x0193D7 0C:93C7: 16        .byte $16
- D 0 - I - 0x0193D8 0C:93C8: 17        .byte $17
- D 0 - I - 0x0193D9 0C:93C9: 18        .byte $18
- D 0 - I - 0x0193DA 0C:93CA: 19        .byte $19
- D 0 - I - 0x0193DB 0C:93CB: 1A        .byte $1A
- D 0 - I - 0x0193DC 0C:93CC: 16        .byte $16
- D 0 - I - 0x0193DD 0C:93CD: 17        .byte $17
- D 0 - I - 0x0193DE 0C:93CE: 18        .byte $18
- D 0 - I - 0x0193DF 0C:93CF: 19        .byte $19
- D 0 - I - 0x0193E0 0C:93D0: 1A        .byte $1A
- D 0 - I - 0x0193E1 0C:93D1: 17        .byte $17
- D 0 - I - 0x0193E2 0C:93D2: 18        .byte $18
- D 0 - I - 0x0193E3 0C:93D3: 19        .byte $19
- D 0 - I - 0x0193E4 0C:93D4: 1A        .byte $1A
- D 0 - I - 0x0193E5 0C:93D5: 18        .byte $18
- D 0 - I - 0x0193E6 0C:93D6: 19        .byte $19
- D 0 - I - 0x0193E7 0C:93D7: 1A        .byte $1A
- D 0 - I - 0x0193E8 0C:93D8: 19        .byte $19
- D 0 - I - 0x0193E9 0C:93D9: 1A        .byte $1A
- D 0 - I - 0x0193EA 0C:93DA: E3        .byte $E3
- D 0 - I - 0x0193EB 0C:93DB: 06        .byte $06
- D 0 - I - 0x0193EC 0C:93DC: 19        .byte $19
- D 0 - I - 0x0193ED 0C:93DD: 1A        .byte $1A
- D 0 - I - 0x0193EE 0C:93DE: 19        .byte $19
- D 0 - I - 0x0193EF 0C:93DF: 1A        .byte $1A
- D 0 - I - 0x0193F0 0C:93E0: E3        .byte $E3
- D 0 - I - 0x0193F1 0C:93E1: 05        .byte $05
- D 0 - I - 0x0193F2 0C:93E2: 19        .byte $19
- D 0 - I - 0x0193F3 0C:93E3: 1A        .byte $1A
- D 0 - I - 0x0193F4 0C:93E4: 19        .byte $19
- D 0 - I - 0x0193F5 0C:93E5: 1A        .byte $1A
- D 0 - I - 0x0193F6 0C:93E6: E3        .byte $E3
- D 0 - I - 0x0193F7 0C:93E7: 04        .byte $04
- D 0 - I - 0x0193F8 0C:93E8: 19        .byte $19
- D 0 - I - 0x0193F9 0C:93E9: 1A        .byte $1A
- D 0 - I - 0x0193FA 0C:93EA: FF        .byte $FF



off_93EB_17_03:
- D 0 - I - 0x0193FB 0C:93EB: 81        .byte $81
- D 0 - I - 0x0193FC 0C:93EC: E0        .byte $E0
- D 0 - I - 0x0193FD 0C:93ED: 12        .byte $12
- D 0 - I - 0x0193FE 0C:93EE: E3        .byte $E3
- D 0 - I - 0x0193FF 0C:93EF: 07        .byte $07
- D 0 - I - 0x019400 0C:93F0: 02        .byte $02
- D 0 - I - 0x019401 0C:93F1: 03        .byte $03
- D 0 - I - 0x019402 0C:93F2: 04        .byte $04
- D 0 - I - 0x019403 0C:93F3: 05        .byte $05
- D 0 - I - 0x019404 0C:93F4: 06        .byte $06
- D 0 - I - 0x019405 0C:93F5: 07        .byte $07
- D 0 - I - 0x019406 0C:93F6: 08        .byte $08
- D 0 - I - 0x019407 0C:93F7: 09        .byte $09
- D 0 - I - 0x019408 0C:93F8: 0A        .byte $0A
- D 0 - I - 0x019409 0C:93F9: 03        .byte $03
- D 0 - I - 0x01940A 0C:93FA: 04        .byte $04
- D 0 - I - 0x01940B 0C:93FB: 05        .byte $05
- D 0 - I - 0x01940C 0C:93FC: 06        .byte $06
- D 0 - I - 0x01940D 0C:93FD: 07        .byte $07
- D 0 - I - 0x01940E 0C:93FE: 08        .byte $08
- D 0 - I - 0x01940F 0C:93FF: 09        .byte $09
- D 0 - I - 0x019410 0C:9400: 0A        .byte $0A
- D 0 - I - 0x019411 0C:9401: 04        .byte $04
- D 0 - I - 0x019412 0C:9402: 05        .byte $05
- D 0 - I - 0x019413 0C:9403: 06        .byte $06
- D 0 - I - 0x019414 0C:9404: 07        .byte $07
- D 0 - I - 0x019415 0C:9405: 08        .byte $08
- D 0 - I - 0x019416 0C:9406: 09        .byte $09
- D 0 - I - 0x019417 0C:9407: 0A        .byte $0A
- D 0 - I - 0x019418 0C:9408: 05        .byte $05
- D 0 - I - 0x019419 0C:9409: 06        .byte $06
- D 0 - I - 0x01941A 0C:940A: 07        .byte $07
- D 0 - I - 0x01941B 0C:940B: 08        .byte $08
- D 0 - I - 0x01941C 0C:940C: 09        .byte $09
- D 0 - I - 0x01941D 0C:940D: 0A        .byte $0A
- D 0 - I - 0x01941E 0C:940E: 06        .byte $06
- D 0 - I - 0x01941F 0C:940F: 07        .byte $07
- D 0 - I - 0x019420 0C:9410: 08        .byte $08
- D 0 - I - 0x019421 0C:9411: 09        .byte $09
- D 0 - I - 0x019422 0C:9412: 0A        .byte $0A
- D 0 - I - 0x019423 0C:9413: 07        .byte $07
- D 0 - I - 0x019424 0C:9414: 08        .byte $08
- D 0 - I - 0x019425 0C:9415: 09        .byte $09
- D 0 - I - 0x019426 0C:9416: 0A        .byte $0A
- D 0 - I - 0x019427 0C:9417: 08        .byte $08
- D 0 - I - 0x019428 0C:9418: 09        .byte $09
- D 0 - I - 0x019429 0C:9419: 0A        .byte $0A
- D 0 - I - 0x01942A 0C:941A: 09        .byte $09
- D 0 - I - 0x01942B 0C:941B: 0A        .byte $0A
- D 0 - I - 0x01942C 0C:941C: E3        .byte $E3
- D 0 - I - 0x01942D 0C:941D: 06        .byte $06
- D 0 - I - 0x01942E 0C:941E: 09        .byte $09
- D 0 - I - 0x01942F 0C:941F: 0A        .byte $0A
- D 0 - I - 0x019430 0C:9420: 09        .byte $09
- D 0 - I - 0x019431 0C:9421: 0A        .byte $0A
- D 0 - I - 0x019432 0C:9422: E3        .byte $E3
- D 0 - I - 0x019433 0C:9423: 05        .byte $05
- D 0 - I - 0x019434 0C:9424: 09        .byte $09
- D 0 - I - 0x019435 0C:9425: 0A        .byte $0A
- D 0 - I - 0x019436 0C:9426: 09        .byte $09
- D 0 - I - 0x019437 0C:9427: 0A        .byte $0A
- D 0 - I - 0x019438 0C:9428: E3        .byte $E3
- D 0 - I - 0x019439 0C:9429: 04        .byte $04
- D 0 - I - 0x01943A 0C:942A: 09        .byte $09
- D 0 - I - 0x01943B 0C:942B: 0A        .byte $0A
- D 0 - I - 0x01943C 0C:942C: FF        .byte $FF



_off000_942D_12_обычный_удар_с_земли:
- D 0 - I - 0x01943D 0C:942D: 00        .byte $00
- D 0 - I - 0x01943E 0C:942E: 36 94     .word off_9436_выкл
- D 0 - I - 0x019440 0C:9430: 01        .byte $01
- D 0 - I - 0x019441 0C:9431: 37 94     .word off_9437_12_2B_01
- D 0 - I - 0x019443 0C:9433: 03        .byte $03
- D 0 - I - 0x019444 0C:9434: 44 94     .word off_9444_12_03
off_9436_выкл:
- D 0 - I - 0x019446 0C:9436: FF        .byte $FF



off_9437_12_2B_01:
- D 0 - I - 0x019447 0C:9437: E0        .byte $E0
- D 0 - I - 0x019448 0C:9438: 12        .byte $12
- D 0 - I - 0x019449 0C:9439: E2        .byte $E2
- D 0 - I - 0x01944A 0C:943A: 80        .byte $80
- D 0 - I - 0x01944B 0C:943B: E3        .byte $E3
- D 0 - I - 0x01944C 0C:943C: 00        .byte $00
- D 0 - I - 0x01944D 0C:943D: 81        .byte $81
- D 0 - I - 0x01944E 0C:943E: 10        .byte $10
- D 0 - I - 0x01944F 0C:943F: 20        .byte $20
- D 0 - I - 0x019450 0C:9440: 00        .byte $00
- D 0 - I - 0x019451 0C:9441: 10        .byte $10
- D 0 - I - 0x019452 0C:9442: 20        .byte $20
- D 0 - I - 0x019453 0C:9443: FF        .byte $FF



off_9444_12_03:
- D 0 - I - 0x019454 0C:9444: E9        .byte $E9
- D 0 - I - 0x019455 0C:9445: 49 94     .word sub_E9_9449
- D 0 - I - 0x019457 0C:9447: 05        .byte $05
- D 0 - I - 0x019458 0C:9448: FF        .byte $FF



sub_E9_9449:
- D 0 - I - 0x019459 0C:9449: E0        .byte $E0
- D 0 - I - 0x01945A 0C:944A: 15        .byte $15
- D 0 - I - 0x01945B 0C:944B: E3        .byte $E3
- D 0 - I - 0x01945C 0C:944C: 00        .byte $00
- D 0 - I - 0x01945D 0C:944D: 84        .byte $84
- D 0 - I - 0x01945E 0C:944E: ED        .byte $ED
- D 0 - I - 0x01945F 0C:944F: 01        .byte $01
- D 0 - I - 0x019460 0C:9450: 0A        .byte $0A
- D 0 - I - 0x019461 0C:9451: 8E        .byte $8E
- D 0 - I - 0x019462 0C:9452: EA        .byte $EA



_off000_9453_2B_отбитие_мяча:
- D 0 - I - 0x019463 0C:9453: 00        .byte $00
- D 0 - I - 0x019464 0C:9454: 5C 94     .word off_945C_выкл
- D 0 - I - 0x019466 0C:9456: 01        .byte $01
- D 0 - I - 0x019467 0C:9457: 37 94     .word off_9437_12_2B_01
- D 0 - I - 0x019469 0C:9459: 03        .byte $03
- D 0 - I - 0x01946A 0C:945A: 5D 94     .word off_945D_2B_03
off_945C_выкл:
- D 0 - I - 0x01946C 0C:945C: FF        .byte $FF



off_945D_2B_03:
- D 0 - I - 0x01946D 0C:945D: E9        .byte $E9
- D 0 - I - 0x01946E 0C:945E: 49 94     .word sub_E9_9449
- D 0 - I - 0x019470 0C:9460: 0F        .byte $0F
- D 0 - I - 0x019471 0C:9461: FF        .byte $FF



_off000_9462_13_сильный_удар_с_земли:
- D 0 - I - 0x019472 0C:9462: 00        .byte $00
- D 0 - I - 0x019473 0C:9463: 6B 94     .word off_946B_выкл
- D 0 - I - 0x019475 0C:9465: 01        .byte $01
- D 0 - I - 0x019476 0C:9466: 6C 94     .word off_946C_13_01
- D 0 - I - 0x019478 0C:9468: 03        .byte $03
- D 0 - I - 0x019479 0C:9469: 91 94     .word off_9491_13_03
off_946B_выкл:
- D 0 - I - 0x01947B 0C:946B: FF        .byte $FF



off_946C_13_01:
- D 0 - I - 0x01947C 0C:946C: E0        .byte $E0
- D 0 - I - 0x01947D 0C:946D: 12        .byte $12
- D 0 - I - 0x01947E 0C:946E: E2        .byte $E2
- D 0 - I - 0x01947F 0C:946F: 80        .byte $80
- D 0 - I - 0x019480 0C:9470: E3        .byte $E3
- D 0 - I - 0x019481 0C:9471: 00        .byte $00
loc_E8_9472:
- D 0 - I - 0x019482 0C:9472: 81        .byte $81
- D 0 - I - 0x019483 0C:9473: 15        .byte $15
- D 0 - I - 0x019484 0C:9474: 14        .byte $14
- D 0 - I - 0x019485 0C:9475: 12        .byte $12
- D 0 - I - 0x019486 0C:9476: 10        .byte $10
- D 0 - I - 0x019487 0C:9477: 0B        .byte $0B
- D 0 - I - 0x019488 0C:9478: 09        .byte $09
- D 0 - I - 0x019489 0C:9479: 07        .byte $07
- D 0 - I - 0x01948A 0C:947A: 05        .byte $05
- D 0 - I - 0x01948B 0C:947B: 04        .byte $04
- D 0 - I - 0x01948C 0C:947C: E3        .byte $E3
- D 0 - I - 0x01948D 0C:947D: 09        .byte $09
- D 0 - I - 0x01948E 0C:947E: 15        .byte $15
- D 0 - I - 0x01948F 0C:947F: 13        .byte $13
- D 0 - I - 0x019490 0C:9480: 14        .byte $14
- D 0 - I - 0x019491 0C:9481: 12        .byte $12
- D 0 - I - 0x019492 0C:9482: 13        .byte $13
- D 0 - I - 0x019493 0C:9483: 11        .byte $11
- D 0 - I - 0x019494 0C:9484: 12        .byte $12
- D 0 - I - 0x019495 0C:9485: 10        .byte $10
- D 0 - I - 0x019496 0C:9486: 09        .byte $09
- D 0 - I - 0x019497 0C:9487: 08        .byte $08
- D 0 - I - 0x019498 0C:9488: 07        .byte $07
- D 0 - I - 0x019499 0C:9489: 06        .byte $06
- D 0 - I - 0x01949A 0C:948A: 05        .byte $05
- D 0 - I - 0x01949B 0C:948B: 04        .byte $04
- D 0 - I - 0x01949C 0C:948C: 03        .byte $03
- D 0 - I - 0x01949D 0C:948D: 02        .byte $02
- D 0 - I - 0x01949E 0C:948E: 01        .byte $01
- D 0 - I - 0x01949F 0C:948F: 00        .byte $00
- D 0 - I - 0x0194A0 0C:9490: FF        .byte $FF



off_9491_13_03:
- D 0 - I - 0x0194A1 0C:9491: E0        .byte $E0
- D 0 - I - 0x0194A2 0C:9492: 12        .byte $12
- D 0 - I - 0x0194A3 0C:9493: E3        .byte $E3
- D 0 - I - 0x0194A4 0C:9494: 00        .byte $00
loc_E8_9495:
- D 0 - I - 0x0194A5 0C:9495: 81        .byte $81
- D 0 - I - 0x0194A6 0C:9496: 0B        .byte $0B
- D 0 - I - 0x0194A7 0C:9497: 08        .byte $08
- D 0 - I - 0x0194A8 0C:9498: 0D        .byte $0D
- D 0 - I - 0x0194A9 0C:9499: 0F        .byte $0F
- D 0 - I - 0x0194AA 0C:949A: 09        .byte $09
- D 0 - I - 0x0194AB 0C:949B: E3        .byte $E3
- D 0 - I - 0x0194AC 0C:949C: 08        .byte $08
- D 0 - I - 0x0194AD 0C:949D: 0F        .byte $0F
- D 0 - I - 0x0194AE 0C:949E: 0E        .byte $0E
- D 0 - I - 0x0194AF 0C:949F: 0D        .byte $0D
- D 0 - I - 0x0194B0 0C:94A0: 0C        .byte $0C
- D 0 - I - 0x0194B1 0C:94A1: E3        .byte $E3
- D 0 - I - 0x0194B2 0C:94A2: 09        .byte $09
- D 0 - I - 0x0194B3 0C:94A3: 0F        .byte $0F
- D 0 - I - 0x0194B4 0C:94A4: 0E        .byte $0E
- D 0 - I - 0x0194B5 0C:94A5: 0D        .byte $0D
- D 0 - I - 0x0194B6 0C:94A6: 0C        .byte $0C
- D 0 - I - 0x0194B7 0C:94A7: E3        .byte $E3
- D 0 - I - 0x0194B8 0C:94A8: 0A        .byte $0A
- D 0 - I - 0x0194B9 0C:94A9: 0F        .byte $0F
- D 0 - I - 0x0194BA 0C:94AA: 0E        .byte $0E
- D 0 - I - 0x0194BB 0C:94AB: 0D        .byte $0D
- D 0 - I - 0x0194BC 0C:94AC: 0C        .byte $0C
- D 0 - I - 0x0194BD 0C:94AD: E3        .byte $E3
- D 0 - I - 0x0194BE 0C:94AE: 0B        .byte $0B
- D 0 - I - 0x0194BF 0C:94AF: 0F        .byte $0F
- D 0 - I - 0x0194C0 0C:94B0: 0E        .byte $0E
- D 0 - I - 0x0194C1 0C:94B1: 0D        .byte $0D
- D 0 - I - 0x0194C2 0C:94B2: 0C        .byte $0C
- D 0 - I - 0x0194C3 0C:94B3: E3        .byte $E3
- D 0 - I - 0x0194C4 0C:94B4: 0C        .byte $0C
- D 0 - I - 0x0194C5 0C:94B5: 0F        .byte $0F
- D 0 - I - 0x0194C6 0C:94B6: 0E        .byte $0E
- D 0 - I - 0x0194C7 0C:94B7: 0D        .byte $0D
- D 0 - I - 0x0194C8 0C:94B8: 0C        .byte $0C
- D 0 - I - 0x0194C9 0C:94B9: E3        .byte $E3
- D 0 - I - 0x0194CA 0C:94BA: 0D        .byte $0D
- D 0 - I - 0x0194CB 0C:94BB: 0F        .byte $0F
- D 0 - I - 0x0194CC 0C:94BC: 0E        .byte $0E
- D 0 - I - 0x0194CD 0C:94BD: 0D        .byte $0D
- D 0 - I - 0x0194CE 0C:94BE: 0C        .byte $0C
- D 0 - I - 0x0194CF 0C:94BF: E3        .byte $E3
- D 0 - I - 0x0194D0 0C:94C0: 0E        .byte $0E
- D 0 - I - 0x0194D1 0C:94C1: 0F        .byte $0F
- D 0 - I - 0x0194D2 0C:94C2: 0E        .byte $0E
- D 0 - I - 0x0194D3 0C:94C3: 0D        .byte $0D
- D 0 - I - 0x0194D4 0C:94C4: 0C        .byte $0C
- D 0 - I - 0x0194D5 0C:94C5: FF        .byte $FF



_off000_94C6_14_удар_с_ноги:
- D 0 - I - 0x0194D6 0C:94C6: 00        .byte $00
- D 0 - I - 0x0194D7 0C:94C7: CF 94     .word off_94CF_выкл
- D 0 - I - 0x0194D9 0C:94C9: 01        .byte $01
- D 0 - I - 0x0194DA 0C:94CA: D0 94     .word off_94D0_14_01
- D 0 - I - 0x0194DC 0C:94CC: 03        .byte $03
- D 0 - I - 0x0194DD 0C:94CD: F9 94     .word off_94F9_14_03
off_94CF_выкл:
- D 0 - I - 0x0194DF 0C:94CF: FF        .byte $FF



off_94D0_14_01:
- D 0 - I - 0x0194E0 0C:94D0: E0        .byte $E0
- D 0 - I - 0x0194E1 0C:94D1: 12        .byte $12
- D 0 - I - 0x0194E2 0C:94D2: E2        .byte $E2
- D 0 - I - 0x0194E3 0C:94D3: 80        .byte $80
- D 0 - I - 0x0194E4 0C:94D4: E3        .byte $E3
- D 0 - I - 0x0194E5 0C:94D5: 00        .byte $00
- D 0 - I - 0x0194E6 0C:94D6: EB        .byte $EB
- D 0 - I - 0x0194E7 0C:94D7: 03        .byte $03
- D 0 - I - 0x0194E8 0C:94D8: 81        .byte $81
- D 0 - I - 0x0194E9 0C:94D9: 15        .byte $15
- D 0 - I - 0x0194EA 0C:94DA: 14        .byte $14
- D 0 - I - 0x0194EB 0C:94DB: 12        .byte $12
- D 0 - I - 0x0194EC 0C:94DC: 10        .byte $10
- D 0 - I - 0x0194ED 0C:94DD: EC        .byte $EC
- D 0 - I - 0x0194EE 0C:94DE: 0B        .byte $0B
- D 0 - I - 0x0194EF 0C:94DF: 09        .byte $09
- D 0 - I - 0x0194F0 0C:94E0: 07        .byte $07
- D 0 - I - 0x0194F1 0C:94E1: 05        .byte $05
- D 0 - I - 0x0194F2 0C:94E2: 04        .byte $04
- D 0 - I - 0x0194F3 0C:94E3: E3        .byte $E3
- D 0 - I - 0x0194F4 0C:94E4: 0B        .byte $0B
- D 0 - I - 0x0194F5 0C:94E5: E9        .byte $E9
- D 0 - I - 0x0194F6 0C:94E6: EE 94     .word sub_E9_94EE
- D 0 - I - 0x0194F8 0C:94E8: E3        .byte $E3
- D 0 - I - 0x0194F9 0C:94E9: 0D        .byte $0D
- D 0 - I - 0x0194FA 0C:94EA: E9        .byte $E9
- D 0 - I - 0x0194FB 0C:94EB: EE 94     .word sub_E9_94EE
- D 0 - I - 0x0194FD 0C:94ED: FF        .byte $FF



sub_E9_94EE:
- D 0 - I - 0x0194FE 0C:94EE: 15        .byte $15
- D 0 - I - 0x0194FF 0C:94EF: 13        .byte $13
- D 0 - I - 0x019500 0C:94F0: 14        .byte $14
- D 0 - I - 0x019501 0C:94F1: 12        .byte $12
- D 0 - I - 0x019502 0C:94F2: 10        .byte $10
- D 0 - I - 0x019503 0C:94F3: 0B        .byte $0B
- D 0 - I - 0x019504 0C:94F4: 09        .byte $09
- D 0 - I - 0x019505 0C:94F5: 07        .byte $07
- D 0 - I - 0x019506 0C:94F6: 05        .byte $05
- D 0 - I - 0x019507 0C:94F7: 04        .byte $04
- D 0 - I - 0x019508 0C:94F8: EA        .byte $EA



off_94F9_14_03:
- D 0 - I - 0x019509 0C:94F9: E0        .byte $E0
- D 0 - I - 0x01950A 0C:94FA: 12        .byte $12
- D 0 - I - 0x01950B 0C:94FB: E3        .byte $E3
- D 0 - I - 0x01950C 0C:94FC: 00        .byte $00
- D 0 - I - 0x01950D 0C:94FD: 81        .byte $81
- D 0 - I - 0x01950E 0C:94FE: EB        .byte $EB
- D 0 - I - 0x01950F 0C:94FF: 03        .byte $03
- D 0 - I - 0x019510 0C:9500: 0B        .byte $0B
- D 0 - I - 0x019511 0C:9501: 08        .byte $08
- D 0 - I - 0x019512 0C:9502: 0D        .byte $0D
- D 0 - I - 0x019513 0C:9503: 0F        .byte $0F
- D 0 - I - 0x019514 0C:9504: EC        .byte $EC
- D 0 - I - 0x019515 0C:9505: 0C        .byte $0C
- D 0 - I - 0x019516 0C:9506: 06        .byte $06
- D 0 - I - 0x019517 0C:9507: 0F        .byte $0F
- D 0 - I - 0x019518 0C:9508: 0A        .byte $0A
- D 0 - I - 0x019519 0C:9509: 10        .byte $10
- D 0 - I - 0x01951A 0C:950A: 0F        .byte $0F
- D 0 - I - 0x01951B 0C:950B: 0D        .byte $0D
- D 0 - I - 0x01951C 0C:950C: 0B        .byte $0B
- D 0 - I - 0x01951D 0C:950D: 0A        .byte $0A
- D 0 - I - 0x01951E 0C:950E: E3        .byte $E3
- D 0 - I - 0x01951F 0C:950F: 01        .byte $01
- D 0 - I - 0x019520 0C:9510: 0C        .byte $0C
- D 0 - I - 0x019521 0C:9511: E3        .byte $E3
- D 0 - I - 0x019522 0C:9512: 03        .byte $03
- D 0 - I - 0x019523 0C:9513: 0C        .byte $0C
- D 0 - I - 0x019524 0C:9514: E3        .byte $E3
- D 0 - I - 0x019525 0C:9515: 05        .byte $05
- D 0 - I - 0x019526 0C:9516: 0C        .byte $0C
- D 0 - I - 0x019527 0C:9517: E3        .byte $E3
- D 0 - I - 0x019528 0C:9518: 07        .byte $07
- D 0 - I - 0x019529 0C:9519: 0C        .byte $0C
- D 0 - I - 0x01952A 0C:951A: E3        .byte $E3
- D 0 - I - 0x01952B 0C:951B: 09        .byte $09
- D 0 - I - 0x01952C 0C:951C: 0C        .byte $0C
- D 0 - I - 0x01952D 0C:951D: E3        .byte $E3
- D 0 - I - 0x01952E 0C:951E: 0A        .byte $0A
- D 0 - I - 0x01952F 0C:951F: 0C        .byte $0C
- D 0 - I - 0x019530 0C:9520: E3        .byte $E3
- D 0 - I - 0x019531 0C:9521: 0B        .byte $0B
- D 0 - I - 0x019532 0C:9522: 0C        .byte $0C
- D 0 - I - 0x019533 0C:9523: E3        .byte $E3
- D 0 - I - 0x019534 0C:9524: 0C        .byte $0C
- D 0 - I - 0x019535 0C:9525: 0C        .byte $0C
- D 0 - I - 0x019536 0C:9526: E3        .byte $E3
- D 0 - I - 0x019537 0C:9527: 0D        .byte $0D
- D 0 - I - 0x019538 0C:9528: 0C        .byte $0C
- D 0 - I - 0x019539 0C:9529: E3        .byte $E3
- D 0 - I - 0x01953A 0C:952A: 0E        .byte $0E
- D 0 - I - 0x01953B 0C:952B: 0C        .byte $0C
- D 0 - I - 0x01953C 0C:952C: FF        .byte $FF



_off000_952D_23_мощный_удар_с_земли:
- D 0 - I - 0x01953D 0C:952D: 00        .byte $00
- D 0 - I - 0x01953E 0C:952E: 36 95     .word off_9536_выкл
- D 0 - I - 0x019540 0C:9530: 01        .byte $01
- D 0 - I - 0x019541 0C:9531: 37 95     .word off_9537_23_01
- D 0 - I - 0x019543 0C:9533: 03        .byte $03
- D 0 - I - 0x019544 0C:9534: 48 95     .word off_9548_23_03
off_9536_выкл:
- D 0 - I - 0x019546 0C:9536: FF        .byte $FF



off_9537_23_01:
- D 0 - I - 0x019547 0C:9537: E0        .byte $E0
- D 0 - I - 0x019548 0C:9538: 12        .byte $12
- D 0 - I - 0x019549 0C:9539: E2        .byte $E2
- D 0 - I - 0x01954A 0C:953A: 80        .byte $80
- D 0 - I - 0x01954B 0C:953B: E3        .byte $E3
- D 0 - I - 0x01954C 0C:953C: 00        .byte $00
- D 0 - I - 0x01954D 0C:953D: EB        .byte $EB
- D 0 - I - 0x01954E 0C:953E: 03        .byte $03
- D 0 - I - 0x01954F 0C:953F: 81        .byte $81
- D 0 - I - 0x019550 0C:9540: 15        .byte $15
- D 0 - I - 0x019551 0C:9541: 14        .byte $14
- D 0 - I - 0x019552 0C:9542: 12        .byte $12
- D 0 - I - 0x019553 0C:9543: 10        .byte $10
- D 0 - I - 0x019554 0C:9544: EC        .byte $EC
- D 0 - I - 0x019555 0C:9545: E8        .byte $E8
- D 0 - I - 0x019556 0C:9546: 72 94     .word loc_E8_9472



off_9548_23_03:
- D 0 - I - 0x019558 0C:9548: E0        .byte $E0
- D 0 - I - 0x019559 0C:9549: 12        .byte $12
- D 0 - I - 0x01955A 0C:954A: E3        .byte $E3
- D 0 - I - 0x01955B 0C:954B: 00        .byte $00
- D 0 - I - 0x01955C 0C:954C: 81        .byte $81
- D 0 - I - 0x01955D 0C:954D: EB        .byte $EB
- D 0 - I - 0x01955E 0C:954E: 03        .byte $03
- D 0 - I - 0x01955F 0C:954F: 0B        .byte $0B
- D 0 - I - 0x019560 0C:9550: 08        .byte $08
- D 0 - I - 0x019561 0C:9551: 0D        .byte $0D
- D 0 - I - 0x019562 0C:9552: 0F        .byte $0F
- D 0 - I - 0x019563 0C:9553: EC        .byte $EC
- D 0 - I - 0x019564 0C:9554: E8        .byte $E8
- D 0 - I - 0x019565 0C:9555: 95 94     .word loc_E8_9495



_off000_9557_24_полет_циклона:
- D 0 - I - 0x019567 0C:9557: 00        .byte $00
- D 0 - I - 0x019568 0C:9558: 61 95     .word off_9561_24_00
- D 0 - I - 0x01956A 0C:955A: 01        .byte $01
- D 0 - I - 0x01956B 0C:955B: A7 95     .word off_95A7_24_01
- D 0 - I - 0x01956D 0C:955D: 03        .byte $03
- D 0 - I - 0x01956E 0C:955E: AE 95     .word off_95AE_24_03
- D 0 - I - 0x019570 0C:9560: FF        .byte $FF



off_9561_24_00:
loc_E8_9561:
- D 0 - I - 0x019571 0C:9561: E0        .byte $E0
- D 0 - I - 0x019572 0C:9562: 17        .byte $17
- D 0 - I - 0x019573 0C:9563: E2        .byte $E2
- D 0 - I - 0x019574 0C:9564: 00        .byte $00
- D 0 - I - 0x019575 0C:9565: E3        .byte $E3
- D 0 - I - 0x019576 0C:9566: 05        .byte $05
- D 0 - I - 0x019577 0C:9567: 83        .byte $83
- D 0 - I - 0x019578 0C:9568: EB        .byte $EB
- D 0 - I - 0x019579 0C:9569: 09        .byte $09
- D 0 - I - 0x01957A 0C:956A: E9        .byte $E9
- D 0 - I - 0x01957B 0C:956B: 9D 95     .word sub_E9_959D
- D 0 - I - 0x01957D 0C:956D: EC        .byte $EC
- D 0 - I - 0x01957E 0C:956E: E3        .byte $E3
- D 0 - I - 0x01957F 0C:956F: 06        .byte $06
- D 0 - I - 0x019580 0C:9570: 82        .byte $82
- D 0 - I - 0x019581 0C:9571: E9        .byte $E9
- D 0 - I - 0x019582 0C:9572: 9D 95     .word sub_E9_959D
- D 0 - I - 0x019584 0C:9574: E3        .byte $E3
- D 0 - I - 0x019585 0C:9575: 07        .byte $07
- D 0 - I - 0x019586 0C:9576: E9        .byte $E9
- D 0 - I - 0x019587 0C:9577: 9D 95     .word sub_E9_959D
- D 0 - I - 0x019589 0C:9579: E3        .byte $E3
- D 0 - I - 0x01958A 0C:957A: 08        .byte $08
- D 0 - I - 0x01958B 0C:957B: E9        .byte $E9
- D 0 - I - 0x01958C 0C:957C: 9D 95     .word sub_E9_959D
- D 0 - I - 0x01958E 0C:957E: E3        .byte $E3
- D 0 - I - 0x01958F 0C:957F: 09        .byte $09
- D 0 - I - 0x019590 0C:9580: E9        .byte $E9
- D 0 - I - 0x019591 0C:9581: 9D 95     .word sub_E9_959D
- D 0 - I - 0x019593 0C:9583: E3        .byte $E3
- D 0 - I - 0x019594 0C:9584: 0A        .byte $0A
- D 0 - I - 0x019595 0C:9585: E9        .byte $E9
- D 0 - I - 0x019596 0C:9586: 9D 95     .word sub_E9_959D
- D 0 - I - 0x019598 0C:9588: E3        .byte $E3
- D 0 - I - 0x019599 0C:9589: 0B        .byte $0B
- D 0 - I - 0x01959A 0C:958A: E9        .byte $E9
- D 0 - I - 0x01959B 0C:958B: 9D 95     .word sub_E9_959D
- D 0 - I - 0x01959D 0C:958D: E3        .byte $E3
- D 0 - I - 0x01959E 0C:958E: 0C        .byte $0C
- D 0 - I - 0x01959F 0C:958F: E9        .byte $E9
- D 0 - I - 0x0195A0 0C:9590: 9D 95     .word sub_E9_959D
- D 0 - I - 0x0195A2 0C:9592: E3        .byte $E3
- D 0 - I - 0x0195A3 0C:9593: 0D        .byte $0D
- D 0 - I - 0x0195A4 0C:9594: E9        .byte $E9
- D 0 - I - 0x0195A5 0C:9595: 9D 95     .word sub_E9_959D
- D 0 - I - 0x0195A7 0C:9597: E3        .byte $E3
- D 0 - I - 0x0195A8 0C:9598: 0E        .byte $0E
- D 0 - I - 0x0195A9 0C:9599: E9        .byte $E9
- D 0 - I - 0x0195AA 0C:959A: 9D 95     .word sub_E9_959D
- D 0 - I - 0x0195AC 0C:959C: FF        .byte $FF



sub_E9_959D:
- D 0 - I - 0x0195AD 0C:959D: E4        .byte $E4
- D 0 - I - 0x0195AE 0C:959E: 84        .byte $84
- D 0 - I - 0x0195AF 0C:959F: 20        .byte $20
- D 0 - I - 0x0195B0 0C:95A0: E4        .byte $E4
- D 0 - I - 0x0195B1 0C:95A1: 84        .byte $84
- D 0 - I - 0x0195B2 0C:95A2: 30        .byte $30
- D 0 - I - 0x0195B3 0C:95A3: E4        .byte $E4
- D 0 - I - 0x0195B4 0C:95A4: 84        .byte $84
- D 0 - I - 0x0195B5 0C:95A5: 40        .byte $40
- D 0 - I - 0x0195B6 0C:95A6: EA        .byte $EA



off_95A7_24_01:
- D 0 - I - 0x0195B7 0C:95A7: E5        .byte $E5
- D 0 - I - 0x0195B8 0C:95A8: 01        .byte $01
- D 0 - I - 0x0195B9 0C:95A9: 83        .byte $83
- D 0 - I - 0x0195BA 0C:95AA: 0C        .byte $0C
- D 0 - I - 0x0195BB 0C:95AB: E8        .byte $E8
- D 0 - I - 0x0195BC 0C:95AC: 61 95     .word loc_E8_9561



off_95AE_24_03:
- D 0 - I - 0x0195BE 0C:95AE: E0        .byte $E0
- D 0 - I - 0x0195BF 0C:95AF: 17        .byte $17
- D 0 - I - 0x0195C0 0C:95B0: E3        .byte $E3
- D 0 - I - 0x0195C1 0C:95B1: 00        .byte $00
- D 0 - I - 0x0195C2 0C:95B2: 81        .byte $81
- D 0 - I - 0x0195C3 0C:95B3: 02        .byte $02
- D 0 - I - 0x0195C4 0C:95B4: 82        .byte $82
- D 0 - I - 0x0195C5 0C:95B5: 03        .byte $03
- D 0 - I - 0x0195C6 0C:95B6: 83        .byte $83
- D 0 - I - 0x0195C7 0C:95B7: 04        .byte $04
- D 0 - I - 0x0195C8 0C:95B8: 82        .byte $82
- D 0 - I - 0x0195C9 0C:95B9: 05        .byte $05
- D 0 - I - 0x0195CA 0C:95BA: 81        .byte $81
- D 0 - I - 0x0195CB 0C:95BB: 06        .byte $06
- D 0 - I - 0x0195CC 0C:95BC: 03        .byte $03
- D 0 - I - 0x0195CD 0C:95BD: 82        .byte $82
- D 0 - I - 0x0195CE 0C:95BE: 04        .byte $04
- D 0 - I - 0x0195CF 0C:95BF: 83        .byte $83
- D 0 - I - 0x0195D0 0C:95C0: 05        .byte $05
- D 0 - I - 0x0195D1 0C:95C1: 82        .byte $82
- D 0 - I - 0x0195D2 0C:95C2: 06        .byte $06
- D 0 - I - 0x0195D3 0C:95C3: 81        .byte $81
- D 0 - I - 0x0195D4 0C:95C4: 07        .byte $07
- D 0 - I - 0x0195D5 0C:95C5: 04        .byte $04
- D 0 - I - 0x0195D6 0C:95C6: 82        .byte $82
- D 0 - I - 0x0195D7 0C:95C7: 05        .byte $05
- D 0 - I - 0x0195D8 0C:95C8: 83        .byte $83
- D 0 - I - 0x0195D9 0C:95C9: 06        .byte $06
- D 0 - I - 0x0195DA 0C:95CA: 82        .byte $82
- D 0 - I - 0x0195DB 0C:95CB: 07        .byte $07
- D 0 - I - 0x0195DC 0C:95CC: 81        .byte $81
- D 0 - I - 0x0195DD 0C:95CD: 08        .byte $08
- D 0 - I - 0x0195DE 0C:95CE: 05        .byte $05
- D 0 - I - 0x0195DF 0C:95CF: 82        .byte $82
- D 0 - I - 0x0195E0 0C:95D0: 06        .byte $06
- D 0 - I - 0x0195E1 0C:95D1: 83        .byte $83
- D 0 - I - 0x0195E2 0C:95D2: 07        .byte $07
- D 0 - I - 0x0195E3 0C:95D3: 82        .byte $82
- D 0 - I - 0x0195E4 0C:95D4: 08        .byte $08
- D 0 - I - 0x0195E5 0C:95D5: 81        .byte $81
- D 0 - I - 0x0195E6 0C:95D6: 09        .byte $09
- D 0 - I - 0x0195E7 0C:95D7: 06        .byte $06
- D 0 - I - 0x0195E8 0C:95D8: 82        .byte $82
- D 0 - I - 0x0195E9 0C:95D9: 07        .byte $07
- D 0 - I - 0x0195EA 0C:95DA: 83        .byte $83
- D 0 - I - 0x0195EB 0C:95DB: 08        .byte $08
- D 0 - I - 0x0195EC 0C:95DC: 82        .byte $82
- D 0 - I - 0x0195ED 0C:95DD: 09        .byte $09
- D 0 - I - 0x0195EE 0C:95DE: 81        .byte $81
- D 0 - I - 0x0195EF 0C:95DF: 0A        .byte $0A
- D 0 - I - 0x0195F0 0C:95E0: 07        .byte $07
- D 0 - I - 0x0195F1 0C:95E1: 82        .byte $82
- D 0 - I - 0x0195F2 0C:95E2: 08        .byte $08
- D 0 - I - 0x0195F3 0C:95E3: 83        .byte $83
- D 0 - I - 0x0195F4 0C:95E4: 09        .byte $09
- D 0 - I - 0x0195F5 0C:95E5: 82        .byte $82
- D 0 - I - 0x0195F6 0C:95E6: 0A        .byte $0A
- D 0 - I - 0x0195F7 0C:95E7: 81        .byte $81
- D 0 - I - 0x0195F8 0C:95E8: 0B        .byte $0B
- D 0 - I - 0x0195F9 0C:95E9: 08        .byte $08
- D 0 - I - 0x0195FA 0C:95EA: 82        .byte $82
- D 0 - I - 0x0195FB 0C:95EB: 09        .byte $09
- D 0 - I - 0x0195FC 0C:95EC: 83        .byte $83
- D 0 - I - 0x0195FD 0C:95ED: 0A        .byte $0A
- D 0 - I - 0x0195FE 0C:95EE: 82        .byte $82
- D 0 - I - 0x0195FF 0C:95EF: 0B        .byte $0B
- D 0 - I - 0x019600 0C:95F0: 81        .byte $81
- D 0 - I - 0x019601 0C:95F1: 0C        .byte $0C
- D 0 - I - 0x019602 0C:95F2: 09        .byte $09
- D 0 - I - 0x019603 0C:95F3: 82        .byte $82
- D 0 - I - 0x019604 0C:95F4: 0A        .byte $0A
- D 0 - I - 0x019605 0C:95F5: 83        .byte $83
- D 0 - I - 0x019606 0C:95F6: 0B        .byte $0B
- D 0 - I - 0x019607 0C:95F7: 82        .byte $82
- D 0 - I - 0x019608 0C:95F8: 0C        .byte $0C
- D 0 - I - 0x019609 0C:95F9: 81        .byte $81
- D 0 - I - 0x01960A 0C:95FA: 0D        .byte $0D
- D 0 - I - 0x01960B 0C:95FB: 0A        .byte $0A
- D 0 - I - 0x01960C 0C:95FC: 82        .byte $82
- D 0 - I - 0x01960D 0C:95FD: 0B        .byte $0B
- D 0 - I - 0x01960E 0C:95FE: 83        .byte $83
- D 0 - I - 0x01960F 0C:95FF: 0C        .byte $0C
- D 0 - I - 0x019610 0C:9600: 82        .byte $82
- D 0 - I - 0x019611 0C:9601: 0D        .byte $0D
- D 0 - I - 0x019612 0C:9602: 81        .byte $81
- D 0 - I - 0x019613 0C:9603: 0E        .byte $0E
- D 0 - I - 0x019614 0C:9604: E3        .byte $E3
- D 0 - I - 0x019615 0C:9605: 01        .byte $01
- D 0 - I - 0x019616 0C:9606: E9        .byte $E9
- D 0 - I - 0x019617 0C:9607: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019619 0C:9609: E3        .byte $E3
- D 0 - I - 0x01961A 0C:960A: 02        .byte $02
- D 0 - I - 0x01961B 0C:960B: E9        .byte $E9
- D 0 - I - 0x01961C 0C:960C: 4B 96     .word sub_E9_964B
- D 0 - I - 0x01961E 0C:960E: E3        .byte $E3
- D 0 - I - 0x01961F 0C:960F: 03        .byte $03
- D 0 - I - 0x019620 0C:9610: E9        .byte $E9
- D 0 - I - 0x019621 0C:9611: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019623 0C:9613: E3        .byte $E3
- D 0 - I - 0x019624 0C:9614: 04        .byte $04
- D 0 - I - 0x019625 0C:9615: E9        .byte $E9
- D 0 - I - 0x019626 0C:9616: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019628 0C:9618: E3        .byte $E3
- D 0 - I - 0x019629 0C:9619: 05        .byte $05
- D 0 - I - 0x01962A 0C:961A: E9        .byte $E9
- D 0 - I - 0x01962B 0C:961B: 4B 96     .word sub_E9_964B
- D 0 - I - 0x01962D 0C:961D: E3        .byte $E3
- D 0 - I - 0x01962E 0C:961E: 06        .byte $06
- D 0 - I - 0x01962F 0C:961F: E9        .byte $E9
- D 0 - I - 0x019630 0C:9620: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019632 0C:9622: E3        .byte $E3
- D 0 - I - 0x019633 0C:9623: 07        .byte $07
- D 0 - I - 0x019634 0C:9624: E9        .byte $E9
- D 0 - I - 0x019635 0C:9625: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019637 0C:9627: E3        .byte $E3
- D 0 - I - 0x019638 0C:9628: 08        .byte $08
- D 0 - I - 0x019639 0C:9629: E9        .byte $E9
- D 0 - I - 0x01963A 0C:962A: 4B 96     .word sub_E9_964B
- D 0 - I - 0x01963C 0C:962C: E3        .byte $E3
- D 0 - I - 0x01963D 0C:962D: 09        .byte $09
- D 0 - I - 0x01963E 0C:962E: E9        .byte $E9
- D 0 - I - 0x01963F 0C:962F: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019641 0C:9631: E3        .byte $E3
- D 0 - I - 0x019642 0C:9632: 0A        .byte $0A
- D 0 - I - 0x019643 0C:9633: E9        .byte $E9
- D 0 - I - 0x019644 0C:9634: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019646 0C:9636: E3        .byte $E3
- D 0 - I - 0x019647 0C:9637: 0B        .byte $0B
- D 0 - I - 0x019648 0C:9638: E9        .byte $E9
- D 0 - I - 0x019649 0C:9639: 4B 96     .word sub_E9_964B
- D 0 - I - 0x01964B 0C:963B: E3        .byte $E3
- D 0 - I - 0x01964C 0C:963C: 0C        .byte $0C
- D 0 - I - 0x01964D 0C:963D: E9        .byte $E9
- D 0 - I - 0x01964E 0C:963E: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019650 0C:9640: E3        .byte $E3
- D 0 - I - 0x019651 0C:9641: 0D        .byte $0D
- D 0 - I - 0x019652 0C:9642: E9        .byte $E9
- D 0 - I - 0x019653 0C:9643: 4B 96     .word sub_E9_964B
- D 0 - I - 0x019655 0C:9645: E3        .byte $E3
- D 0 - I - 0x019656 0C:9646: 0E        .byte $0E
- D 0 - I - 0x019657 0C:9647: E9        .byte $E9
- D 0 - I - 0x019658 0C:9648: 4B 96     .word sub_E9_964B
- D 0 - I - 0x01965A 0C:964A: FF        .byte $FF



sub_E9_964B:
- D 0 - I - 0x01965B 0C:964B: 0A        .byte $0A
- D 0 - I - 0x01965C 0C:964C: 0B        .byte $0B
- D 0 - I - 0x01965D 0C:964D: 82        .byte $82
- D 0 - I - 0x01965E 0C:964E: 0C        .byte $0C
- D 0 - I - 0x01965F 0C:964F: 81        .byte $81
- D 0 - I - 0x019660 0C:9650: 0D        .byte $0D
- D 0 - I - 0x019661 0C:9651: 0E        .byte $0E
- D 0 - I - 0x019662 0C:9652: EA        .byte $EA



_off000_9653_18_замах_с_красным_фоном:
- D 0 - I - 0x019663 0C:9653: 00        .byte $00
- D 0 - I - 0x019664 0C:9654: A2 96     .word off_96A2_18_00
- D 0 - I - 0x019666 0C:9656: 01        .byte $01
- D 0 - I - 0x019667 0C:9657: 78 96     .word off_9678_18_01
- D 0 - I - 0x019669 0C:9659: 03        .byte $03
- D 0 - I - 0x01966A 0C:965A: 5D 96     .word off_965D_18_03
- D 0 - I - 0x01966C 0C:965C: FF        .byte $FF



off_965D_18_03:
- D 0 - I - 0x01966D 0C:965D: E0        .byte $E0
- D 0 - I - 0x01966E 0C:965E: 2F        .byte $2F
- D 0 - I - 0x01966F 0C:965F: E3        .byte $E3
- D 0 - I - 0x019670 0C:9660: 00        .byte $00
- D 0 - I - 0x019671 0C:9661: 82        .byte $82
- D 0 - I - 0x019672 0C:9662: 04        .byte $04
- D 0 - I - 0x019673 0C:9663: 09        .byte $09
- D 0 - I - 0x019674 0C:9664: 0A        .byte $0A
- D 0 - I - 0x019675 0C:9665: 0B        .byte $0B
- D 0 - I - 0x019676 0C:9666: 81        .byte $81
- D 0 - I - 0x019677 0C:9667: 0A        .byte $0A
- D 0 - I - 0x019678 0C:9668: 0B        .byte $0B
- D 0 - I - 0x019679 0C:9669: 0A        .byte $0A
- D 0 - I - 0x01967A 0C:966A: 10        .byte $10
- D 0 - I - 0x01967B 0C:966B: 82        .byte $82
- D 0 - I - 0x01967C 0C:966C: 09        .byte $09
- D 0 - I - 0x01967D 0C:966D: 0A        .byte $0A
- D 0 - I - 0x01967E 0C:966E: 0B        .byte $0B
- D 0 - I - 0x01967F 0C:966F: 83        .byte $83
- D 0 - I - 0x019680 0C:9670: 0A        .byte $0A
- D 0 - I - 0x019681 0C:9671: 0B        .byte $0B
- D 0 - I - 0x019682 0C:9672: 0C        .byte $0C
- D 0 - I - 0x019683 0C:9673: E0        .byte $E0
- D 0 - I - 0x019684 0C:9674: 2E        .byte $2E
- D 0 - I - 0x019685 0C:9675: A5        .byte $A5
- D 0 - I - 0x019686 0C:9676: 0D        .byte $0D
- D 0 - I - 0x019687 0C:9677: FF        .byte $FF



off_9678_18_01:
- D 0 - I - 0x019688 0C:9678: E0        .byte $E0
- D 0 - I - 0x019689 0C:9679: 17        .byte $17
- D 0 - I - 0x01968A 0C:967A: E2        .byte $E2
- D 0 - I - 0x01968B 0C:967B: 80        .byte $80
- D 0 - I - 0x01968C 0C:967C: E3        .byte $E3
- D 0 - I - 0x01968D 0C:967D: 00        .byte $00
- D 0 - I - 0x01968E 0C:967E: 81        .byte $81
- D 0 - I - 0x01968F 0C:967F: EB        .byte $EB
- D 0 - I - 0x019690 0C:9680: 03        .byte $03
- D 0 - I - 0x019691 0C:9681: 00        .byte $00
- D 0 - I - 0x019692 0C:9682: 10        .byte $10
- D 0 - I - 0x019693 0C:9683: EC        .byte $EC
- D 0 - I - 0x019694 0C:9684: 0B        .byte $0B
- D 0 - I - 0x019695 0C:9685: 0A        .byte $0A
- D 0 - I - 0x019696 0C:9686: 09        .byte $09
- D 0 - I - 0x019697 0C:9687: 08        .byte $08
- D 0 - I - 0x019698 0C:9688: 00        .byte $00
- D 0 - I - 0x019699 0C:9689: 10        .byte $10
- D 0 - I - 0x01969A 0C:968A: 00        .byte $00
- D 0 - I - 0x01969B 0C:968B: 10        .byte $10
- D 0 - I - 0x01969C 0C:968C: 00        .byte $00
- D 0 - I - 0x01969D 0C:968D: 0B        .byte $0B
- D 0 - I - 0x01969E 0C:968E: 10        .byte $10
- D 0 - I - 0x01969F 0C:968F: 0A        .byte $0A
- D 0 - I - 0x0196A0 0C:9690: 0B        .byte $0B
- D 0 - I - 0x0196A1 0C:9691: 09        .byte $09
- D 0 - I - 0x0196A2 0C:9692: 0A        .byte $0A
- D 0 - I - 0x0196A3 0C:9693: 08        .byte $08
- D 0 - I - 0x0196A4 0C:9694: 09        .byte $09
- D 0 - I - 0x0196A5 0C:9695: 07        .byte $07
- D 0 - I - 0x0196A6 0C:9696: 08        .byte $08
- D 0 - I - 0x0196A7 0C:9697: E0        .byte $E0
- D 0 - I - 0x0196A8 0C:9698: 2E        .byte $2E
- D 0 - I - 0x0196A9 0C:9699: 00        .byte $00
- D 0 - I - 0x0196AA 0C:969A: F3        .byte $F3
- D 0 - I - 0x0196AB 0C:969B: EB        .byte $EB
- D 0 - I - 0x0196AC 0C:969C: 43        .byte $43
- D 0 - I - 0x0196AD 0C:969D: 01        .byte $01
- D 0 - I - 0x0196AE 0C:969E: 00        .byte $00
- D 0 - I - 0x0196AF 0C:969F: EC        .byte $EC
- D 0 - I - 0x0196B0 0C:96A0: F4        .byte $F4
- D 0 - I - 0x0196B1 0C:96A1: FF        .byte $FF



off_96A2_18_00:
- D 0 - I - 0x0196B2 0C:96A2: E0        .byte $E0
- D 0 - I - 0x0196B3 0C:96A3: 17        .byte $17
- D 0 - I - 0x0196B4 0C:96A4: E2        .byte $E2
- D 0 - I - 0x0196B5 0C:96A5: 80        .byte $80
- D 0 - I - 0x0196B6 0C:96A6: E3        .byte $E3
- D 0 - I - 0x0196B7 0C:96A7: 05        .byte $05
- D 0 - I - 0x0196B8 0C:96A8: 81        .byte $81
- D 0 - I - 0x0196B9 0C:96A9: EB        .byte $EB
- D 0 - I - 0x0196BA 0C:96AA: 03        .byte $03
- D 0 - I - 0x0196BB 0C:96AB: 03        .byte $03
- D 0 - I - 0x0196BC 0C:96AC: 13        .byte $13
- D 0 - I - 0x0196BD 0C:96AD: EC        .byte $EC
- D 0 - I - 0x0196BE 0C:96AE: 12        .byte $12
- D 0 - I - 0x0196BF 0C:96AF: 11        .byte $11
- D 0 - I - 0x0196C0 0C:96B0: 10        .byte $10
- D 0 - I - 0x0196C1 0C:96B1: 0B        .byte $0B
- D 0 - I - 0x0196C2 0C:96B2: 03        .byte $03
- D 0 - I - 0x0196C3 0C:96B3: 13        .byte $13
- D 0 - I - 0x0196C4 0C:96B4: 03        .byte $03
- D 0 - I - 0x0196C5 0C:96B5: 13        .byte $13
- D 0 - I - 0x0196C6 0C:96B6: 03        .byte $03
- D 0 - I - 0x0196C7 0C:96B7: 12        .byte $12
- D 0 - I - 0x0196C8 0C:96B8: 13        .byte $13
- D 0 - I - 0x0196C9 0C:96B9: 11        .byte $11
- D 0 - I - 0x0196CA 0C:96BA: 12        .byte $12
- D 0 - I - 0x0196CB 0C:96BB: 10        .byte $10
- D 0 - I - 0x0196CC 0C:96BC: 11        .byte $11
- D 0 - I - 0x0196CD 0C:96BD: 0B        .byte $0B
- D 0 - I - 0x0196CE 0C:96BE: 10        .byte $10
- D 0 - I - 0x0196CF 0C:96BF: 0A        .byte $0A
- D 0 - I - 0x0196D0 0C:96C0: 0B        .byte $0B
- D 0 - I - 0x0196D1 0C:96C1: E0        .byte $E0
- D 0 - I - 0x0196D2 0C:96C2: 2E        .byte $2E
- D 0 - I - 0x0196D3 0C:96C3: 03        .byte $03
- D 0 - I - 0x0196D4 0C:96C4: F3        .byte $F3
- D 0 - I - 0x0196D5 0C:96C5: EB        .byte $EB
- D 0 - I - 0x0196D6 0C:96C6: 43        .byte $43
- D 0 - I - 0x0196D7 0C:96C7: 04        .byte $04
- D 0 - I - 0x0196D8 0C:96C8: 03        .byte $03
- D 0 - I - 0x0196D9 0C:96C9: EC        .byte $EC
- D 0 - I - 0x0196DA 0C:96CA: F4        .byte $F4
- D 0 - I - 0x0196DB 0C:96CB: FF        .byte $FF



_off000_96CC_0A_полет_спешала:
- D 0 - I - 0x0196DC 0C:96CC: 00        .byte $00
- D 0 - I - 0x0196DD 0C:96CD: D5 96     .word off_96D5_выкл
- D 0 - I - 0x0196DF 0C:96CF: 01        .byte $01
- D 0 - I - 0x0196E0 0C:96D0: D6 96     .word off_96D6_0A_01
- D 0 - I - 0x0196E2 0C:96D2: 03        .byte $03
- D 0 - I - 0x0196E3 0C:96D3: 21 97     .word off_9721_0A_03
off_96D5_выкл:
- D 0 - I - 0x0196E5 0C:96D5: FF        .byte $FF



off_96D6_0A_01:
- D 0 - I - 0x0196E6 0C:96D6: E0        .byte $E0
- D 0 - I - 0x0196E7 0C:96D7: 14        .byte $14
- D 0 - I - 0x0196E8 0C:96D8: E2        .byte $E2
- D 0 - I - 0x0196E9 0C:96D9: 80        .byte $80
- D 0 - I - 0x0196EA 0C:96DA: E3        .byte $E3
- D 0 - I - 0x0196EB 0C:96DB: 08        .byte $08
- D 0 - I - 0x0196EC 0C:96DC: 81        .byte $81
- D 0 - I - 0x0196ED 0C:96DD: 20        .byte $20
- D 0 - I - 0x0196EE 0C:96DE: 22        .byte $22
- D 0 - I - 0x0196EF 0C:96DF: 21        .byte $21
- D 0 - I - 0x0196F0 0C:96E0: E3        .byte $E3
- D 0 - I - 0x0196F1 0C:96E1: 0D        .byte $0D
- D 0 - I - 0x0196F2 0C:96E2: 20        .byte $20
- D 0 - I - 0x0196F3 0C:96E3: 22        .byte $22
- D 0 - I - 0x0196F4 0C:96E4: 21        .byte $21
- D 0 - I - 0x0196F5 0C:96E5: E3        .byte $E3
- D 0 - I - 0x0196F6 0C:96E6: 07        .byte $07
- D 0 - I - 0x0196F7 0C:96E7: 21        .byte $21
- D 0 - I - 0x0196F8 0C:96E8: 23        .byte $23
- D 0 - I - 0x0196F9 0C:96E9: 22        .byte $22
- D 0 - I - 0x0196FA 0C:96EA: E3        .byte $E3
- D 0 - I - 0x0196FB 0C:96EB: 0C        .byte $0C
- D 0 - I - 0x0196FC 0C:96EC: 21        .byte $21
- D 0 - I - 0x0196FD 0C:96ED: 23        .byte $23
- D 0 - I - 0x0196FE 0C:96EE: 22        .byte $22
- D 0 - I - 0x0196FF 0C:96EF: E3        .byte $E3
- D 0 - I - 0x019700 0C:96F0: 06        .byte $06
- D 0 - I - 0x019701 0C:96F1: 22        .byte $22
- D 0 - I - 0x019702 0C:96F2: 24        .byte $24
- D 0 - I - 0x019703 0C:96F3: 23        .byte $23
- D 0 - I - 0x019704 0C:96F4: E3        .byte $E3
- D 0 - I - 0x019705 0C:96F5: 0B        .byte $0B
- D 0 - I - 0x019706 0C:96F6: 22        .byte $22
- D 0 - I - 0x019707 0C:96F7: 24        .byte $24
- D 0 - I - 0x019708 0C:96F8: 23        .byte $23
- D 0 - I - 0x019709 0C:96F9: EB        .byte $EB
- D 0 - I - 0x01970A 0C:96FA: 04        .byte $04
- D 0 - I - 0x01970B 0C:96FB: E3        .byte $E3
- D 0 - I - 0x01970C 0C:96FC: 05        .byte $05
- D 0 - I - 0x01970D 0C:96FD: 23        .byte $23
- D 0 - I - 0x01970E 0C:96FE: 25        .byte $25
- D 0 - I - 0x01970F 0C:96FF: 24        .byte $24
- D 0 - I - 0x019710 0C:9700: E3        .byte $E3
- D 0 - I - 0x019711 0C:9701: 0B        .byte $0B
- D 0 - I - 0x019712 0C:9702: 23        .byte $23
- D 0 - I - 0x019713 0C:9703: 25        .byte $25
- D 0 - I - 0x019714 0C:9704: 24        .byte $24
- D 0 - I - 0x019715 0C:9705: EC        .byte $EC
- D 0 - I - 0x019716 0C:9706: EB        .byte $EB
- D 0 - I - 0x019717 0C:9707: 04        .byte $04
- D 0 - I - 0x019718 0C:9708: E3        .byte $E3
- D 0 - I - 0x019719 0C:9709: 08        .byte $08
- D 0 - I - 0x01971A 0C:970A: 22        .byte $22
- D 0 - I - 0x01971B 0C:970B: 24        .byte $24
- D 0 - I - 0x01971C 0C:970C: 23        .byte $23
- D 0 - I - 0x01971D 0C:970D: E3        .byte $E3
- D 0 - I - 0x01971E 0C:970E: 0D        .byte $0D
- D 0 - I - 0x01971F 0C:970F: 22        .byte $22
- D 0 - I - 0x019720 0C:9710: 24        .byte $24
- D 0 - I - 0x019721 0C:9711: 23        .byte $23
- D 0 - I - 0x019722 0C:9712: EC        .byte $EC
- D 0 - I - 0x019723 0C:9713: EB        .byte $EB
- D 0 - I - 0x019724 0C:9714: 04        .byte $04
- D 0 - I - 0x019725 0C:9715: E3        .byte $E3
- D 0 - I - 0x019726 0C:9716: 0A        .byte $0A
- D 0 - I - 0x019727 0C:9717: 23        .byte $23
- D 0 - I - 0x019728 0C:9718: 25        .byte $25
- D 0 - I - 0x019729 0C:9719: 24        .byte $24
- D 0 - I - 0x01972A 0C:971A: E3        .byte $E3
- D 0 - I - 0x01972B 0C:971B: 0E        .byte $0E
- D 0 - I - 0x01972C 0C:971C: 23        .byte $23
- D 0 - I - 0x01972D 0C:971D: 25        .byte $25
- D 0 - I - 0x01972E 0C:971E: 24        .byte $24
- D 0 - I - 0x01972F 0C:971F: EC        .byte $EC
- D 0 - I - 0x019730 0C:9720: FF        .byte $FF



off_9721_0A_03:
- D 0 - I - 0x019731 0C:9721: E0        .byte $E0
- D 0 - I - 0x019732 0C:9722: 14        .byte $14
- D 0 - I - 0x019733 0C:9723: E3        .byte $E3
- D 0 - I - 0x019734 0C:9724: 00        .byte $00
- D 0 - I - 0x019735 0C:9725: 81        .byte $81
- D 0 - I - 0x019736 0C:9726: EB        .byte $EB
- D 0 - I - 0x019737 0C:9727: 08        .byte $08
- D 0 - I - 0x019738 0C:9728: 0A        .byte $0A
- D 0 - I - 0x019739 0C:9729: 09        .byte $09
- D 0 - I - 0x01973A 0C:972A: 08        .byte $08
- D 0 - I - 0x01973B 0C:972B: EC        .byte $EC
- D 0 - I - 0x01973C 0C:972C: EB        .byte $EB
- D 0 - I - 0x01973D 0C:972D: 04        .byte $04
- D 0 - I - 0x01973E 0C:972E: 0B        .byte $0B
- D 0 - I - 0x01973F 0C:972F: 0A        .byte $0A
- D 0 - I - 0x019740 0C:9730: 09        .byte $09
- D 0 - I - 0x019741 0C:9731: EC        .byte $EC
- D 0 - I - 0x019742 0C:9732: EB        .byte $EB
- D 0 - I - 0x019743 0C:9733: 04        .byte $04
- D 0 - I - 0x019744 0C:9734: 0C        .byte $0C
- D 0 - I - 0x019745 0C:9735: 0B        .byte $0B
- D 0 - I - 0x019746 0C:9736: 0A        .byte $0A
- D 0 - I - 0x019747 0C:9737: EC        .byte $EC
- D 0 - I - 0x019748 0C:9738: EB        .byte $EB
- D 0 - I - 0x019749 0C:9739: 02        .byte $02
- D 0 - I - 0x01974A 0C:973A: 0D        .byte $0D
- D 0 - I - 0x01974B 0C:973B: 0C        .byte $0C
- D 0 - I - 0x01974C 0C:973C: 0B        .byte $0B
- D 0 - I - 0x01974D 0C:973D: EC        .byte $EC
- D 0 - I - 0x01974E 0C:973E: EB        .byte $EB
- D 0 - I - 0x01974F 0C:973F: 02        .byte $02
- D 0 - I - 0x019750 0C:9740: 0E        .byte $0E
- D 0 - I - 0x019751 0C:9741: 0D        .byte $0D
- D 0 - I - 0x019752 0C:9742: 0C        .byte $0C
- D 0 - I - 0x019753 0C:9743: EC        .byte $EC
- D 0 - I - 0x019754 0C:9744: 0D        .byte $0D
- D 0 - I - 0x019755 0C:9745: 0E        .byte $0E
- D 0 - I - 0x019756 0C:9746: 96        .byte $96
- D 0 - I - 0x019757 0C:9747: 0F        .byte $0F
- D 0 - I - 0x019758 0C:9748: FF        .byte $FF



_off000_9749_0B_полет_спешала:
- D 0 - I - 0x019759 0C:9749: 00        .byte $00
- D 0 - I - 0x01975A 0C:974A: 52 97     .word off_9752_выкл
- D 0 - I - 0x01975C 0C:974C: 01        .byte $01
- D 0 - I - 0x01975D 0C:974D: 52 97     .word off_9752_выкл
- D 0 - I - 0x01975F 0C:974F: 03        .byte $03
- D 0 - I - 0x019760 0C:9750: 53 97     .word off_9753_0B_03
off_9752_выкл:
- D 0 - I - 0x019762 0C:9752: FF        .byte $FF



off_9753_0B_03:
- D 0 - I - 0x019763 0C:9753: E0        .byte $E0
- D 0 - I - 0x019764 0C:9754: 12        .byte $12
- D 0 - I - 0x019765 0C:9755: E3        .byte $E3
- D 0 - I - 0x019766 0C:9756: 00        .byte $00
- D 0 - I - 0x019767 0C:9757: 81        .byte $81
- D 0 - I - 0x019768 0C:9758: 00        .byte $00
- D 0 - I - 0x019769 0C:9759: 02        .byte $02
- D 0 - I - 0x01976A 0C:975A: 01        .byte $01
- D 0 - I - 0x01976B 0C:975B: 03        .byte $03
- D 0 - I - 0x01976C 0C:975C: 02        .byte $02
- D 0 - I - 0x01976D 0C:975D: 04        .byte $04
- D 0 - I - 0x01976E 0C:975E: 03        .byte $03
- D 0 - I - 0x01976F 0C:975F: 05        .byte $05
- D 0 - I - 0x019770 0C:9760: 04        .byte $04
- D 0 - I - 0x019771 0C:9761: 06        .byte $06
- D 0 - I - 0x019772 0C:9762: 05        .byte $05
- D 0 - I - 0x019773 0C:9763: 07        .byte $07
- D 0 - I - 0x019774 0C:9764: 06        .byte $06
- D 0 - I - 0x019775 0C:9765: 08        .byte $08
- D 0 - I - 0x019776 0C:9766: 07        .byte $07
- D 0 - I - 0x019777 0C:9767: 09        .byte $09
- D 0 - I - 0x019778 0C:9768: 08        .byte $08
- D 0 - I - 0x019779 0C:9769: 0A        .byte $0A
- D 0 - I - 0x01977A 0C:976A: 09        .byte $09
- D 0 - I - 0x01977B 0C:976B: 0B        .byte $0B
- D 0 - I - 0x01977C 0C:976C: 0A        .byte $0A
- D 0 - I - 0x01977D 0C:976D: 0C        .byte $0C
- D 0 - I - 0x01977E 0C:976E: 0B        .byte $0B
- D 0 - I - 0x01977F 0C:976F: 0D        .byte $0D
- D 0 - I - 0x019780 0C:9770: 0C        .byte $0C
- D 0 - I - 0x019781 0C:9771: 0E        .byte $0E
- D 0 - I - 0x019782 0C:9772: 0D        .byte $0D
- D 0 - I - 0x019783 0C:9773: 0F        .byte $0F
- D 0 - I - 0x019784 0C:9774: 96        .byte $96
- D 0 - I - 0x019785 0C:9775: 0E        .byte $0E
- D 0 - I - 0x019786 0C:9776: FF        .byte $FF



_off000_9777_1A_удар_оверхед:
- D 0 - I - 0x019787 0C:9777: 00        .byte $00
- D 0 - I - 0x019788 0C:9778: 80 97     .word off_9780_выкл
- D 0 - I - 0x01978A 0C:977A: 01        .byte $01
- D 0 - I - 0x01978B 0C:977B: 81 97     .word off_9781_1A_01
- D 0 - I - 0x01978D 0C:977D: 03        .byte $03
- D 0 - I - 0x01978E 0C:977E: 8F 97     .word off_978F_1A_03
off_9780_выкл:
- D 0 - I - 0x019790 0C:9780: FF        .byte $FF



off_9781_1A_01:
- D 0 - I - 0x019791 0C:9781: E0        .byte $E0
- D 0 - I - 0x019792 0C:9782: 12        .byte $12
- D 0 - I - 0x019793 0C:9783: E2        .byte $E2
- D 0 - I - 0x019794 0C:9784: 80        .byte $80
- D 0 - I - 0x019795 0C:9785: E3        .byte $E3
- D 0 - I - 0x019796 0C:9786: 00        .byte $00
- D 0 - I - 0x019797 0C:9787: 81        .byte $81
- D 0 - I - 0x019798 0C:9788: 10        .byte $10
- D 0 - I - 0x019799 0C:9789: 20        .byte $20
- D 0 - I - 0x01979A 0C:978A: 00        .byte $00
- D 0 - I - 0x01979B 0C:978B: 10        .byte $10
- D 0 - I - 0x01979C 0C:978C: 00        .byte $00
- D 0 - I - 0x01979D 0C:978D: 10        .byte $10
- D 0 - I - 0x01979E 0C:978E: FF        .byte $FF



off_978F_1A_03:
- D 0 - I - 0x01979F 0C:978F: E0        .byte $E0
- D 0 - I - 0x0197A0 0C:9790: 15        .byte $15
- D 0 - I - 0x0197A1 0C:9791: E3        .byte $E3
- D 0 - I - 0x0197A2 0C:9792: 00        .byte $00
- D 0 - I - 0x0197A3 0C:9793: 84        .byte $84
- D 0 - I - 0x0197A4 0C:9794: ED        .byte $ED
- D 0 - I - 0x0197A5 0C:9795: 01        .byte $01
- D 0 - I - 0x0197A6 0C:9796: 0C        .byte $0C
- D 0 - I - 0x0197A7 0C:9797: 88        .byte $88
- D 0 - I - 0x0197A8 0C:9798: 08        .byte $08
- D 0 - I - 0x0197A9 0C:9799: E3        .byte $E3
- D 0 - I - 0x0197AA 0C:979A: 08        .byte $08
- D 0 - I - 0x0197AB 0C:979B: 07        .byte $07
- D 0 - I - 0x0197AC 0C:979C: FF        .byte $FF



_off000_979D_2E:
- D 0 - I - 0x0197AD 0C:979D: 00        .byte $00
- D 0 - I - 0x0197AE 0C:979E: A7 97     .word off_97A7_2E_00
- D 0 - I - 0x0197B0 0C:97A0: 01        .byte $01
- D 0 - I - 0x0197B1 0C:97A1: B7 97     .word off_97B7_2E_01
- D 0 - I - 0x0197B3 0C:97A3: 03        .byte $03
- D 0 - I - 0x0197B4 0C:97A4: C7 97     .word off_97C7_2E_03
- D 0 - I - 0x0197B6 0C:97A6: FF        .byte $FF



off_97A7_2E_00:
- D 0 - I - 0x0197B7 0C:97A7: E0        .byte $E0
- D 0 - I - 0x0197B8 0C:97A8: 14        .byte $14
- D 0 - I - 0x0197B9 0C:97A9: E2        .byte $E2
- D 0 - I - 0x0197BA 0C:97AA: 80        .byte $80
- D 0 - I - 0x0197BB 0C:97AB: E3        .byte $E3
- D 0 - I - 0x0197BC 0C:97AC: 00        .byte $00
- D 0 - I - 0x0197BD 0C:97AD: 81        .byte $81
- D 0 - I - 0x0197BE 0C:97AE: 10        .byte $10
- D 0 - I - 0x0197BF 0C:97AF: 00        .byte $00
- D 0 - I - 0x0197C0 0C:97B0: 15        .byte $15
- D 0 - I - 0x0197C1 0C:97B1: 05        .byte $05
- D 0 - I - 0x0197C2 0C:97B2: 10        .byte $10
- D 0 - I - 0x0197C3 0C:97B3: 00        .byte $00
- D 0 - I - 0x0197C4 0C:97B4: 16        .byte $16
- D 0 - I - 0x0197C5 0C:97B5: 06        .byte $06
- D 0 - I - 0x0197C6 0C:97B6: FF        .byte $FF



off_97B7_2E_01:
- D 0 - I - 0x0197C7 0C:97B7: E0        .byte $E0
- D 0 - I - 0x0197C8 0C:97B8: 14        .byte $14
- D 0 - I - 0x0197C9 0C:97B9: E2        .byte $E2
- D 0 - I - 0x0197CA 0C:97BA: 80        .byte $80
- D 0 - I - 0x0197CB 0C:97BB: E3        .byte $E3
- D 0 - I - 0x0197CC 0C:97BC: 00        .byte $00
- D 0 - I - 0x0197CD 0C:97BD: 81        .byte $81
- D 0 - I - 0x0197CE 0C:97BE: 11        .byte $11
- D 0 - I - 0x0197CF 0C:97BF: 01        .byte $01
- D 0 - I - 0x0197D0 0C:97C0: 16        .byte $16
- D 0 - I - 0x0197D1 0C:97C1: 06        .byte $06
- D 0 - I - 0x0197D2 0C:97C2: 11        .byte $11
- D 0 - I - 0x0197D3 0C:97C3: 01        .byte $01
- D 0 - I - 0x0197D4 0C:97C4: 17        .byte $17
- D 0 - I - 0x0197D5 0C:97C5: 07        .byte $07
- D 0 - I - 0x0197D6 0C:97C6: FF        .byte $FF



off_97C7_2E_03:
- D 0 - I - 0x0197D7 0C:97C7: E0        .byte $E0
- D 0 - I - 0x0197D8 0C:97C8: 17        .byte $17
- D 0 - I - 0x0197D9 0C:97C9: E3        .byte $E3
- D 0 - I - 0x0197DA 0C:97CA: 00        .byte $00
- D 0 - I - 0x0197DB 0C:97CB: 81        .byte $81
- D 0 - I - 0x0197DC 0C:97CC: 0B        .byte $0B
- D 0 - I - 0x0197DD 0C:97CD: 08        .byte $08
- D 0 - I - 0x0197DE 0C:97CE: 0D        .byte $0D
- D 0 - I - 0x0197DF 0C:97CF: 0F        .byte $0F
- D 0 - I - 0x0197E0 0C:97D0: 0C        .byte $0C
- D 0 - I - 0x0197E1 0C:97D1: 06        .byte $06
- D 0 - I - 0x0197E2 0C:97D2: 0F        .byte $0F
- D 0 - I - 0x0197E3 0C:97D3: 0A        .byte $0A
- D 0 - I - 0x0197E4 0C:97D4: 0F        .byte $0F
- D 0 - I - 0x0197E5 0C:97D5: FF        .byte $FF



_off000_97D6_29:
- D 0 - I - 0x0197E6 0C:97D6: 00        .byte $00
- D 0 - I - 0x0197E7 0C:97D7: DF 97     .word off_97DF_выкл
- D 0 - I - 0x0197E9 0C:97D9: 01        .byte $01
- D 0 - I - 0x0197EA 0C:97DA: E0 97     .word off_97E0_29_01
- D 0 - I - 0x0197EC 0C:97DC: 03        .byte $03
- D 0 - I - 0x0197ED 0C:97DD: F7 97     .word off_97F7_29_03
off_97DF_выкл:
- D 0 - I - 0x0197EF 0C:97DF: FF        .byte $FF



off_97E0_29_01:
- D 0 - I - 0x0197F0 0C:97E0: E0        .byte $E0
- D 0 - I - 0x0197F1 0C:97E1: 16        .byte $16
- D 0 - I - 0x0197F2 0C:97E2: E2        .byte $E2
- D 0 - I - 0x0197F3 0C:97E3: 80        .byte $80
- D 0 - I - 0x0197F4 0C:97E4: E3        .byte $E3
- D 0 - I - 0x0197F5 0C:97E5: 00        .byte $00
- D 0 - I - 0x0197F6 0C:97E6: E9        .byte $E9
- D 0 - I - 0x0197F7 0C:97E7: EF 97     .word sub_E9_97EF
- D 0 - I - 0x0197F9 0C:97E9: E3        .byte $E3
- D 0 - I - 0x0197FA 0C:97EA: 0B        .byte $0B
- D 0 - I - 0x0197FB 0C:97EB: E9        .byte $E9
- D 0 - I - 0x0197FC 0C:97EC: EF 97     .word sub_E9_97EF
- D 0 - I - 0x0197FE 0C:97EE: FF        .byte $FF



sub_E9_97EF:
- D 0 - I - 0x0197FF 0C:97EF: 82        .byte $82
- D 0 - I - 0x019800 0C:97F0: 08        .byte $08
- D 0 - I - 0x019801 0C:97F1: 09        .byte $09
- D 0 - I - 0x019802 0C:97F2: 08        .byte $08
- D 0 - I - 0x019803 0C:97F3: 07        .byte $07
- D 0 - I - 0x019804 0C:97F4: 81        .byte $81
- D 0 - I - 0x019805 0C:97F5: 06        .byte $06
- D 0 - I - 0x019806 0C:97F6: EA        .byte $EA



off_97F7_29_03:
- D 0 - I - 0x019807 0C:97F7: E0        .byte $E0
- D 0 - I - 0x019808 0C:97F8: 12        .byte $12
- D 0 - I - 0x019809 0C:97F9: E3        .byte $E3
- D 0 - I - 0x01980A 0C:97FA: 00        .byte $00
- D 0 - I - 0x01980B 0C:97FB: 82        .byte $82
- D 0 - I - 0x01980C 0C:97FC: 07        .byte $07
- D 0 - I - 0x01980D 0C:97FD: 08        .byte $08
- D 0 - I - 0x01980E 0C:97FE: 07        .byte $07
- D 0 - I - 0x01980F 0C:97FF: 06        .byte $06
- D 0 - I - 0x019810 0C:9800: 81        .byte $81
- D 0 - I - 0x019811 0C:9801: 05        .byte $05
- D 0 - I - 0x019812 0C:9802: FF        .byte $FF



_off000_9803_2C_принятие_мяча:
- D 0 - I - 0x019813 0C:9803: 00        .byte $00
- D 0 - I - 0x019814 0C:9804: 0C 98     .word off_980C_выкл
- D 0 - I - 0x019816 0C:9806: 01        .byte $01
- D 0 - I - 0x019817 0C:9807: 0C 98     .word off_980C_выкл
- D 0 - I - 0x019819 0C:9809: 03        .byte $03
- D 0 - I - 0x01981A 0C:980A: 0D 98     .word off_980D_2C_03
off_980C_выкл:
- D 0 - I - 0x01981C 0C:980C: FF        .byte $FF



off_980D_2C_03:
- D 0 - I - 0x01981D 0C:980D: E0        .byte $E0
- D 0 - I - 0x01981E 0C:980E: 12        .byte $12
- D 0 - I - 0x01981F 0C:980F: E3        .byte $E3
- D 0 - I - 0x019820 0C:9810: 00        .byte $00
- D 0 - I - 0x019821 0C:9811: 82        .byte $82
- D 0 - I - 0x019822 0C:9812: 0D        .byte $0D
- D 0 - I - 0x019823 0C:9813: E3        .byte $E3
- D 0 - I - 0x019824 0C:9814: 02        .byte $02
- D 0 - I - 0x019825 0C:9815: 0C        .byte $0C
- D 0 - I - 0x019826 0C:9816: 07        .byte $07
- D 0 - I - 0x019827 0C:9817: E3        .byte $E3
- D 0 - I - 0x019828 0C:9818: 06        .byte $06
- D 0 - I - 0x019829 0C:9819: 0D        .byte $0D
- D 0 - I - 0x01982A 0C:981A: FF        .byte $FF



_off000_981B_2F:
- D 0 - I - 0x01982B 0C:981B: 00        .byte $00
- D 0 - I - 0x01982C 0C:981C: 25 98     .word off_9825_2F_00
- D 0 - I - 0x01982E 0C:981E: 01        .byte $01
- D 0 - I - 0x01982F 0C:981F: 39 98     .word off_9839_2F_01
- D 0 - I - 0x019831 0C:9821: 03        .byte $03
- D 0 - I - 0x019832 0C:9822: 40 98     .word off_9840_2F_03
- D 0 - I - 0x019834 0C:9824: FF        .byte $FF



off_9825_2F_00:
loc_E8_9825:
- D 0 - I - 0x019835 0C:9825: E0        .byte $E0
- D 0 - I - 0x019836 0C:9826: 17        .byte $17
- D 0 - I - 0x019837 0C:9827: E2        .byte $E2
- D 0 - I - 0x019838 0C:9828: 80        .byte $80
- D 0 - I - 0x019839 0C:9829: E3        .byte $E3
- D 0 - I - 0x01983A 0C:982A: 00        .byte $00
- D 0 - I - 0x01983B 0C:982B: 81        .byte $81
- D 0 - I - 0x01983C 0C:982C: 10        .byte $10
- D 0 - I - 0x01983D 0C:982D: 00        .byte $00
- D 0 - I - 0x01983E 0C:982E: 15        .byte $15
- D 0 - I - 0x01983F 0C:982F: 05        .byte $05
- D 0 - I - 0x019840 0C:9830: 10        .byte $10
- D 0 - I - 0x019841 0C:9831: 00        .byte $00
- D 0 - I - 0x019842 0C:9832: 16        .byte $16
- D 0 - I - 0x019843 0C:9833: 06        .byte $06
- D 0 - I - 0x019844 0C:9834: 10        .byte $10
- D 0 - I - 0x019845 0C:9835: 00        .byte $00
- D 0 - I - 0x019846 0C:9836: 17        .byte $17
- D 0 - I - 0x019847 0C:9837: 07        .byte $07
- D 0 - I - 0x019848 0C:9838: FF        .byte $FF



off_9839_2F_01:
- D 0 - I - 0x019849 0C:9839: E5        .byte $E5
- D 0 - I - 0x01984A 0C:983A: 08        .byte $08
- D 0 - I - 0x01984B 0C:983B: 81        .byte $81
- D 0 - I - 0x01984C 0C:983C: 0C        .byte $0C
- D 0 - I - 0x01984D 0C:983D: E8        .byte $E8
- D 0 - I - 0x01984E 0C:983E: 25 98     .word loc_E8_9825



off_9840_2F_03:
- D 0 - I - 0x019850 0C:9840: E0        .byte $E0
- D 0 - I - 0x019851 0C:9841: 17        .byte $17
- D 0 - I - 0x019852 0C:9842: E3        .byte $E3
- D 0 - I - 0x019853 0C:9843: 00        .byte $00
- D 0 - I - 0x019854 0C:9844: 81        .byte $81
- D 0 - I - 0x019855 0C:9845: 0B        .byte $0B
- D 0 - I - 0x019856 0C:9846: 0C        .byte $0C
- D 0 - I - 0x019857 0C:9847: 05        .byte $05
- D 0 - I - 0x019858 0C:9848: 0F        .byte $0F
- D 0 - I - 0x019859 0C:9849: 0A        .byte $0A
- D 0 - I - 0x01985A 0C:984A: 08        .byte $08
- D 0 - I - 0x01985B 0C:984B: 05        .byte $05
- D 0 - I - 0x01985C 0C:984C: 0F        .byte $0F
- D 0 - I - 0x01985D 0C:984D: 0E        .byte $0E
- D 0 - I - 0x01985E 0C:984E: 0D        .byte $0D
- D 0 - I - 0x01985F 0C:984F: 0C        .byte $0C
- D 0 - I - 0x019860 0C:9850: 0B        .byte $0B
- D 0 - I - 0x019861 0C:9851: FF        .byte $FF
- - - - - - 0x019862 0C:9852: 00        .byte $00
- - - - - - 0x019863 0C:9853: 5B        .byte $5B
- - - - - - 0x019864 0C:9854: 98        .byte $98
- - - - - - 0x019865 0C:9855: 01        .byte $01
- - - - - - 0x019866 0C:9856: 5C        .byte $5C
- - - - - - 0x019867 0C:9857: 98        .byte $98
- - - - - - 0x019868 0C:9858: 03        .byte $03
- - - - - - 0x019869 0C:9859: 67        .byte $67
- - - - - - 0x01986A 0C:985A: 98        .byte $98
- - - - - - 0x01986B 0C:985B: FF        .byte $FF
- - - - - - 0x01986C 0C:985C: E0        .byte $E0
- - - - - - 0x01986D 0C:985D: 12        .byte $12
- - - - - - 0x01986E 0C:985E: E2        .byte $E2
- - - - - - 0x01986F 0C:985F: 80        .byte $80
- - - - - - 0x019870 0C:9860: E3        .byte $E3
- - - - - - 0x019871 0C:9861: 00        .byte $00
- - - - - - 0x019872 0C:9862: 81        .byte $81
- - - - - - 0x019873 0C:9863: 10        .byte $10
- - - - - - 0x019874 0C:9864: 01        .byte $01
- - - - - - 0x019875 0C:9865: 11        .byte $11
- - - - - - 0x019876 0C:9866: FF        .byte $FF
- - - - - - 0x019877 0C:9867: E0        .byte $E0
- - - - - - 0x019878 0C:9868: 16        .byte $16
- - - - - - 0x019879 0C:9869: E3        .byte $E3
- - - - - - 0x01987A 0C:986A: 00        .byte $00
- - - - - - 0x01987B 0C:986B: 81        .byte $81
- - - - - - 0x01987C 0C:986C: 0A        .byte $0A
- - - - - - 0x01987D 0C:986D: 00        .byte $00
- - - - - - 0x01987E 0C:986E: 01        .byte $01
- - - - - - 0x01987F 0C:986F: 02        .byte $02
- - - - - - 0x019880 0C:9870: 03        .byte $03
- - - - - - 0x019881 0C:9871: 04        .byte $04
- - - - - - 0x019882 0C:9872: 05        .byte $05
- - - - - - 0x019883 0C:9873: FF        .byte $FF



_off000_9874_5D_звук_гол:
- D 0 - I - 0x019884 0C:9874: 00        .byte $00
- D 0 - I - 0x019885 0C:9875: 7D 98     .word off_987D_выкл
- D 0 - I - 0x019887 0C:9877: 01        .byte $01
- D 0 - I - 0x019888 0C:9878: 94 98     .word off_9894_5D_60_01
- D 0 - I - 0x01988A 0C:987A: 03        .byte $03
- D 0 - I - 0x01988B 0C:987B: 9D 98     .word off_989D_5D_60_03
off_987D_выкл:
- D 0 - I - 0x01988D 0C:987D: FF        .byte $FF



_off000_987E_60_звук_гол:
- D 0 - I - 0x01988E 0C:987E: 00        .byte $00
- D 0 - I - 0x01988F 0C:987F: 93 98     .word off_9893_выкл
- D 0 - I - 0x019891 0C:9881: 01        .byte $01
- D 0 - I - 0x019892 0C:9882: 94 98     .word off_9894_5D_60_01
- D 0 - I - 0x019894 0C:9884: 03        .byte $03
- D 0 - I - 0x019895 0C:9885: 9D 98     .word off_989D_5D_60_03
- D 0 - I - 0x019897 0C:9887: 04        .byte $04
- D 0 - I - 0x019898 0C:9888: 93 98     .word off_9893_выкл
- D 0 - I - 0x01989A 0C:988A: 05        .byte $05
- D 0 - I - 0x01989B 0C:988B: 93 98     .word off_9893_выкл
- D 0 - I - 0x01989D 0C:988D: 06        .byte $06
- D 0 - I - 0x01989E 0C:988E: 93 98     .word off_9893_выкл
- D 0 - I - 0x0198A0 0C:9890: 07        .byte $07
- D 0 - I - 0x0198A1 0C:9891: 93 98     .word off_9893_выкл
off_9893_выкл:
- D 0 - I - 0x0198A3 0C:9893: FF        .byte $FF



off_9894_5D_60_01:
- D 0 - I - 0x0198A4 0C:9894: 8E        .byte $8E
- D 0 - I - 0x0198A5 0C:9895: 0C        .byte $0C
- D 0 - I - 0x0198A6 0C:9896: E9        .byte $E9
- D 0 - I - 0x0198A7 0C:9897: 36 9A     .word sub_E9_9A36
- D 0 - I - 0x0198A9 0C:9899: E9        .byte $E9
- D 0 - I - 0x0198AA 0C:989A: 14 9A     .word sub_E9_9A14
- D 0 - I - 0x0198AC 0C:989C: FF        .byte $FF



off_989D_5D_60_03:
- D 0 - I - 0x0198AD 0C:989D: E9        .byte $E9
- D 0 - I - 0x0198AE 0C:989E: A5 98     .word sub_E9_98A5
- D 0 - I - 0x0198B0 0C:98A0: 8F        .byte $8F
- D 0 - I - 0x0198B1 0C:98A1: 10        .byte $10
- D 0 - I - 0x0198B2 0C:98A2: E8        .byte $E8
- D 0 - I - 0x0198B3 0C:98A3: F4 98     .word loc_E8_98F4



sub_E9_98A5:
- D 0 - I - 0x0198B5 0C:98A5: E0        .byte $E0
- D 0 - I - 0x0198B6 0C:98A6: 17        .byte $17
- D 0 - I - 0x0198B7 0C:98A7: E3        .byte $E3
- D 0 - I - 0x0198B8 0C:98A8: 00        .byte $00
- D 0 - I - 0x0198B9 0C:98A9: 81        .byte $81
- D 0 - I - 0x0198BA 0C:98AA: 0D        .byte $0D
- D 0 - I - 0x0198BB 0C:98AB: 0E        .byte $0E
- D 0 - I - 0x0198BC 0C:98AC: 0F        .byte $0F
- D 0 - I - 0x0198BD 0C:98AD: 0E        .byte $0E
- D 0 - I - 0x0198BE 0C:98AE: 0D        .byte $0D
- D 0 - I - 0x0198BF 0C:98AF: 0C        .byte $0C
- D 0 - I - 0x0198C0 0C:98B0: 0B        .byte $0B
- D 0 - I - 0x0198C1 0C:98B1: 0C        .byte $0C
- D 0 - I - 0x0198C2 0C:98B2: 0A        .byte $0A
- D 0 - I - 0x0198C3 0C:98B3: 0B        .byte $0B
- D 0 - I - 0x0198C4 0C:98B4: 09        .byte $09
- D 0 - I - 0x0198C5 0C:98B5: 08        .byte $08
- D 0 - I - 0x0198C6 0C:98B6: 07        .byte $07
- D 0 - I - 0x0198C7 0C:98B7: 06        .byte $06
- D 0 - I - 0x0198C8 0C:98B8: 05        .byte $05
- D 0 - I - 0x0198C9 0C:98B9: 06        .byte $06
- D 0 - I - 0x0198CA 0C:98BA: 07        .byte $07
- D 0 - I - 0x0198CB 0C:98BB: 08        .byte $08
- D 0 - I - 0x0198CC 0C:98BC: EA        .byte $EA



_off000_98BD_61_звук_рваная_сетка:
- D 0 - I - 0x0198CD 0C:98BD: 00        .byte $00
- D 0 - I - 0x0198CE 0C:98BE: D2 98     .word off_98D2_выкл
- D 0 - I - 0x0198D0 0C:98C0: 01        .byte $01
- D 0 - I - 0x0198D1 0C:98C1: 3B 99     .word off_993B_61_01
- D 0 - I - 0x0198D3 0C:98C3: 03        .byte $03
- D 0 - I - 0x0198D4 0C:98C4: D3 98     .word off_98D3_61_03
- D 0 - I - 0x0198D6 0C:98C6: 04        .byte $04
- D 0 - I - 0x0198D7 0C:98C7: D2 98     .word off_98D2_выкл
- D 0 - I - 0x0198D9 0C:98C9: 05        .byte $05
- D 0 - I - 0x0198DA 0C:98CA: D2 98     .word off_98D2_выкл
- D 0 - I - 0x0198DC 0C:98CC: 06        .byte $06
- D 0 - I - 0x0198DD 0C:98CD: D2 98     .word off_98D2_выкл
- D 0 - I - 0x0198DF 0C:98CF: 07        .byte $07
- D 0 - I - 0x0198E0 0C:98D0: D2 98     .word off_98D2_выкл
off_98D2_выкл:
- D 0 - I - 0x0198E2 0C:98D2: FF        .byte $FF



off_98D3_61_03:
- D 0 - I - 0x0198E3 0C:98D3: E0        .byte $E0
- D 0 - I - 0x0198E4 0C:98D4: 15        .byte $15
- D 0 - I - 0x0198E5 0C:98D5: E3        .byte $E3
- D 0 - I - 0x0198E6 0C:98D6: 00        .byte $00
- D 0 - I - 0x0198E7 0C:98D7: 81        .byte $81
- D 0 - I - 0x0198E8 0C:98D8: 0D        .byte $0D
- D 0 - I - 0x0198E9 0C:98D9: 0E        .byte $0E
- D 0 - I - 0x0198EA 0C:98DA: 06        .byte $06
- D 0 - I - 0x0198EB 0C:98DB: 09        .byte $09
- D 0 - I - 0x0198EC 0C:98DC: 0A        .byte $0A
- D 0 - I - 0x0198ED 0C:98DD: 0C        .byte $0C
- D 0 - I - 0x0198EE 0C:98DE: 0D        .byte $0D
- D 0 - I - 0x0198EF 0C:98DF: 05        .byte $05
- D 0 - I - 0x0198F0 0C:98E0: 08        .byte $08
- D 0 - I - 0x0198F1 0C:98E1: 09        .byte $09
- D 0 - I - 0x0198F2 0C:98E2: 0B        .byte $0B
- D 0 - I - 0x0198F3 0C:98E3: 0C        .byte $0C
- D 0 - I - 0x0198F4 0C:98E4: 04        .byte $04
- D 0 - I - 0x0198F5 0C:98E5: 07        .byte $07
- D 0 - I - 0x0198F6 0C:98E6: 08        .byte $08
- D 0 - I - 0x0198F7 0C:98E7: 0A        .byte $0A
- D 0 - I - 0x0198F8 0C:98E8: 0B        .byte $0B
- D 0 - I - 0x0198F9 0C:98E9: 03        .byte $03
- D 0 - I - 0x0198FA 0C:98EA: 06        .byte $06
- D 0 - I - 0x0198FB 0C:98EB: 07        .byte $07
- D 0 - I - 0x0198FC 0C:98EC: 06        .byte $06
- D 0 - I - 0x0198FD 0C:98ED: 07        .byte $07
- D 0 - I - 0x0198FE 0C:98EE: 08        .byte $08
- D 0 - I - 0x0198FF 0C:98EF: 09        .byte $09
- D 0 - I - 0x019900 0C:98F0: 83        .byte $83
- D 0 - I - 0x019901 0C:98F1: 0A        .byte $0A
- D 0 - I - 0x019902 0C:98F2: 8F        .byte $8F
- D 0 - I - 0x019903 0C:98F3: 10        .byte $10
loc_E8_98F4:
- D 0 - I - 0x019904 0C:98F4: E0        .byte $E0
- D 0 - I - 0x019905 0C:98F5: 21        .byte $21
- D 0 - I - 0x019906 0C:98F6: E3        .byte $E3
- D 0 - I - 0x019907 0C:98F7: 04        .byte $04
- D 0 - I - 0x019908 0C:98F8: 8F        .byte $8F
- D 0 - I - 0x019909 0C:98F9: 0A        .byte $0A
- D 0 - I - 0x01990A 0C:98FA: E3        .byte $E3
- D 0 - I - 0x01990B 0C:98FB: 02        .byte $02
- D 0 - I - 0x01990C 0C:98FC: 9A        .byte $9A
- D 0 - I - 0x01990D 0C:98FD: 0A        .byte $0A
- D 0 - I - 0x01990E 0C:98FE: E3        .byte $E3
- D 0 - I - 0x01990F 0C:98FF: 03        .byte $03
- D 0 - I - 0x019910 0C:9900: 97        .byte $97
- D 0 - I - 0x019911 0C:9901: 0A        .byte $0A
- D 0 - I - 0x019912 0C:9902: E3        .byte $E3
- D 0 - I - 0x019913 0C:9903: 02        .byte $02
- D 0 - I - 0x019914 0C:9904: 95        .byte $95
- D 0 - I - 0x019915 0C:9905: 0A        .byte $0A
- D 0 - I - 0x019916 0C:9906: E3        .byte $E3
- D 0 - I - 0x019917 0C:9907: 01        .byte $01
- D 0 - I - 0x019918 0C:9908: 96        .byte $96
- D 0 - I - 0x019919 0C:9909: 0A        .byte $0A
- D 0 - I - 0x01991A 0C:990A: E3        .byte $E3
- D 0 - I - 0x01991B 0C:990B: 03        .byte $03
- D 0 - I - 0x01991C 0C:990C: 98        .byte $98
- D 0 - I - 0x01991D 0C:990D: 0A        .byte $0A
- D 0 - I - 0x01991E 0C:990E: E3        .byte $E3
- D 0 - I - 0x01991F 0C:990F: 04        .byte $04
- D 0 - I - 0x019920 0C:9910: 99        .byte $99
- D 0 - I - 0x019921 0C:9911: 0A        .byte $0A
- D 0 - I - 0x019922 0C:9912: E3        .byte $E3
- D 0 - I - 0x019923 0C:9913: 05        .byte $05
- D 0 - I - 0x019924 0C:9914: 97        .byte $97
- D 0 - I - 0x019925 0C:9915: 0A        .byte $0A
- D 0 - I - 0x019926 0C:9916: E3        .byte $E3
- D 0 - I - 0x019927 0C:9917: 06        .byte $06
- D 0 - I - 0x019928 0C:9918: 99        .byte $99
- D 0 - I - 0x019929 0C:9919: 0A        .byte $0A
- D 0 - I - 0x01992A 0C:991A: E3        .byte $E3
- D 0 - I - 0x01992B 0C:991B: 07        .byte $07
- D 0 - I - 0x01992C 0C:991C: 98        .byte $98
- D 0 - I - 0x01992D 0C:991D: 0A        .byte $0A
- D 0 - I - 0x01992E 0C:991E: E3        .byte $E3
- D 0 - I - 0x01992F 0C:991F: 08        .byte $08
- D 0 - I - 0x019930 0C:9920: 9A        .byte $9A
- D 0 - I - 0x019931 0C:9921: 0A        .byte $0A
- D 0 - I - 0x019932 0C:9922: E3        .byte $E3
- D 0 - I - 0x019933 0C:9923: 09        .byte $09
- D 0 - I - 0x019934 0C:9924: 98        .byte $98
- D 0 - I - 0x019935 0C:9925: 0A        .byte $0A
- D 0 - I - 0x019936 0C:9926: E3        .byte $E3
- D 0 - I - 0x019937 0C:9927: 0A        .byte $0A
- D 0 - I - 0x019938 0C:9928: 96        .byte $96
- D 0 - I - 0x019939 0C:9929: 0A        .byte $0A
- D 0 - I - 0x01993A 0C:992A: E3        .byte $E3
- D 0 - I - 0x01993B 0C:992B: 0B        .byte $0B
- D 0 - I - 0x01993C 0C:992C: 95        .byte $95
- D 0 - I - 0x01993D 0C:992D: 0A        .byte $0A
- D 0 - I - 0x01993E 0C:992E: E3        .byte $E3
- D 0 - I - 0x01993F 0C:992F: 0C        .byte $0C
- D 0 - I - 0x019940 0C:9930: 94        .byte $94
- D 0 - I - 0x019941 0C:9931: 0A        .byte $0A
- D 0 - I - 0x019942 0C:9932: E3        .byte $E3
- D 0 - I - 0x019943 0C:9933: 0D        .byte $0D
- D 0 - I - 0x019944 0C:9934: 95        .byte $95
- D 0 - I - 0x019945 0C:9935: 0A        .byte $0A
- D 0 - I - 0x019946 0C:9936: E3        .byte $E3
- D 0 - I - 0x019947 0C:9937: 0E        .byte $0E
- D 0 - I - 0x019948 0C:9938: 94        .byte $94
- D 0 - I - 0x019949 0C:9939: 0A        .byte $0A
- D 0 - I - 0x01994A 0C:993A: FF        .byte $FF



off_993B_61_01:
- D 0 - I - 0x01994B 0C:993B: 95        .byte $95
- D 0 - I - 0x01994C 0C:993C: 0C        .byte $0C
- D 0 - I - 0x01994D 0C:993D: E9        .byte $E9
- D 0 - I - 0x01994E 0C:993E: 36 9A     .word sub_E9_9A36
- D 0 - I - 0x019950 0C:9940: E9        .byte $E9
- D 0 - I - 0x019951 0C:9941: 14 9A     .word sub_E9_9A14
- D 0 - I - 0x019953 0C:9943: FF        .byte $FF



_off000_9944_62_звук_громкие_зрители:
- D 0 - I - 0x019954 0C:9944: 00        .byte $00
- D 0 - I - 0x019955 0C:9945: 4D 99     .word off_994D_выкл
- D 0 - I - 0x019957 0C:9947: 01        .byte $01
- D 0 - I - 0x019958 0C:9948: 4D 99     .word off_994D_выкл
- D 0 - I - 0x01995A 0C:994A: 03        .byte $03
- D 0 - I - 0x01995B 0C:994B: 4E 99     .word off_994E_62_03
off_994D_выкл:
- D 0 - I - 0x01995D 0C:994D: FF        .byte $FF



off_994E_62_03:
- D 0 - I - 0x01995E 0C:994E: E0        .byte $E0
- D 0 - I - 0x01995F 0C:994F: 21        .byte $21
- D 0 - I - 0x019960 0C:9950: E0        .byte $E0
- D 0 - I - 0x019961 0C:9951: 17        .byte $17
- D 0 - I - 0x019962 0C:9952: E3        .byte $E3
- D 0 - I - 0x019963 0C:9953: 04        .byte $04
- D 0 - I - 0x019964 0C:9954: 8E        .byte $8E
- D 0 - I - 0x019965 0C:9955: 0A        .byte $0A
loc_E8_9956:
- D 0 - I - 0x019966 0C:9956: E3        .byte $E3
- D 0 - I - 0x019967 0C:9957: 01        .byte $01
- D 0 - I - 0x019968 0C:9958: 95        .byte $95
- D 0 - I - 0x019969 0C:9959: 0A        .byte $0A
- D 0 - I - 0x01996A 0C:995A: E3        .byte $E3
- D 0 - I - 0x01996B 0C:995B: 03        .byte $03
- D 0 - I - 0x01996C 0C:995C: 8A        .byte $8A
- D 0 - I - 0x01996D 0C:995D: 0A        .byte $0A
- D 0 - I - 0x01996E 0C:995E: E3        .byte $E3
- D 0 - I - 0x01996F 0C:995F: 02        .byte $02
- D 0 - I - 0x019970 0C:9960: 8E        .byte $8E
- D 0 - I - 0x019971 0C:9961: 0A        .byte $0A
- D 0 - I - 0x019972 0C:9962: E3        .byte $E3
- D 0 - I - 0x019973 0C:9963: 03        .byte $03
- D 0 - I - 0x019974 0C:9964: 91        .byte $91
- D 0 - I - 0x019975 0C:9965: 0A        .byte $0A
- D 0 - I - 0x019976 0C:9966: E3        .byte $E3
- D 0 - I - 0x019977 0C:9967: 04        .byte $04
- D 0 - I - 0x019978 0C:9968: 8E        .byte $8E
- D 0 - I - 0x019979 0C:9969: 0A        .byte $0A
- D 0 - I - 0x01997A 0C:996A: E3        .byte $E3
- D 0 - I - 0x01997B 0C:996B: 05        .byte $05
- D 0 - I - 0x01997C 0C:996C: 8A        .byte $8A
- D 0 - I - 0x01997D 0C:996D: 0A        .byte $0A
- D 0 - I - 0x01997E 0C:996E: E3        .byte $E3
- D 0 - I - 0x01997F 0C:996F: 06        .byte $06
- D 0 - I - 0x019980 0C:9970: 91        .byte $91
- D 0 - I - 0x019981 0C:9971: 0A        .byte $0A
- D 0 - I - 0x019982 0C:9972: E3        .byte $E3
- D 0 - I - 0x019983 0C:9973: 07        .byte $07
- D 0 - I - 0x019984 0C:9974: 0A        .byte $0A
- D 0 - I - 0x019985 0C:9975: E3        .byte $E3
- D 0 - I - 0x019986 0C:9976: 08        .byte $08
- D 0 - I - 0x019987 0C:9977: 94        .byte $94
- D 0 - I - 0x019988 0C:9978: 0A        .byte $0A
- D 0 - I - 0x019989 0C:9979: E3        .byte $E3
- D 0 - I - 0x01998A 0C:997A: 09        .byte $09
- D 0 - I - 0x01998B 0C:997B: 8D        .byte $8D
- D 0 - I - 0x01998C 0C:997C: 0A        .byte $0A
- D 0 - I - 0x01998D 0C:997D: E3        .byte $E3
- D 0 - I - 0x01998E 0C:997E: 0A        .byte $0A
- D 0 - I - 0x01998F 0C:997F: 0A        .byte $0A
- D 0 - I - 0x019990 0C:9980: E3        .byte $E3
- D 0 - I - 0x019991 0C:9981: 0B        .byte $0B
- D 0 - I - 0x019992 0C:9982: 0A        .byte $0A
- D 0 - I - 0x019993 0C:9983: E3        .byte $E3
- D 0 - I - 0x019994 0C:9984: 0C        .byte $0C
- D 0 - I - 0x019995 0C:9985: 0A        .byte $0A
- D 0 - I - 0x019996 0C:9986: E3        .byte $E3
- D 0 - I - 0x019997 0C:9987: 0D        .byte $0D
- D 0 - I - 0x019998 0C:9988: 0A        .byte $0A
- D 0 - I - 0x019999 0C:9989: E3        .byte $E3
- D 0 - I - 0x01999A 0C:998A: 0E        .byte $0E
- D 0 - I - 0x01999B 0C:998B: 99        .byte $99
- D 0 - I - 0x01999C 0C:998C: 0A        .byte $0A
- D 0 - I - 0x01999D 0C:998D: FF        .byte $FF



_off000_998E_63_звук_штанга:
- D 0 - I - 0x01999E 0C:998E: 00        .byte $00
- D 0 - I - 0x01999F 0C:998F: 98 99     .word off_9998_63_00
- D 0 - I - 0x0199A1 0C:9991: 01        .byte $01
- D 0 - I - 0x0199A2 0C:9992: A6 99     .word off_99A6_63_01
- D 0 - I - 0x0199A4 0C:9994: 03        .byte $03
- D 0 - I - 0x0199A5 0C:9995: 97 99     .word off_9997_выкл
off_9997_выкл:
- D 0 - I - 0x0199A7 0C:9997: FF        .byte $FF



off_9998_63_00:
- D 0 - I - 0x0199A8 0C:9998: E0        .byte $E0
- D 0 - I - 0x0199A9 0C:9999: 12        .byte $12
- D 0 - I - 0x0199AA 0C:999A: E2        .byte $E2
- D 0 - I - 0x0199AB 0C:999B: 80        .byte $80
- D 0 - I - 0x0199AC 0C:999C: E3        .byte $E3
- D 0 - I - 0x0199AD 0C:999D: 05        .byte $05
- D 0 - I - 0x0199AE 0C:999E: 81        .byte $81
- D 0 - I - 0x0199AF 0C:999F: 28        .byte $28
- D 0 - I - 0x0199B0 0C:99A0: 29        .byte $29
- D 0 - I - 0x0199B1 0C:99A1: 28        .byte $28
- D 0 - I - 0x0199B2 0C:99A2: 27        .byte $27
- D 0 - I - 0x0199B3 0C:99A3: 94        .byte $94
- D 0 - I - 0x0199B4 0C:99A4: 26        .byte $26
- D 0 - I - 0x0199B5 0C:99A5: FF        .byte $FF



off_99A6_63_01:
- D 0 - I - 0x0199B6 0C:99A6: E0        .byte $E0
- D 0 - I - 0x0199B7 0C:99A7: 12        .byte $12
- D 0 - I - 0x0199B8 0C:99A8: E2        .byte $E2
- D 0 - I - 0x0199B9 0C:99A9: 80        .byte $80
- D 0 - I - 0x0199BA 0C:99AA: E3        .byte $E3
- D 0 - I - 0x0199BB 0C:99AB: 01        .byte $01
- D 0 - I - 0x0199BC 0C:99AC: 81        .byte $81
- D 0 - I - 0x0199BD 0C:99AD: 15        .byte $15
- D 0 - I - 0x0199BE 0C:99AE: 16        .byte $16
- D 0 - I - 0x0199BF 0C:99AF: 15        .byte $15
- D 0 - I - 0x0199C0 0C:99B0: 14        .byte $14
- D 0 - I - 0x0199C1 0C:99B1: 94        .byte $94
- D 0 - I - 0x0199C2 0C:99B2: 13        .byte $13
- D 0 - I - 0x0199C3 0C:99B3: FF        .byte $FF



_off000_99B4_65_звук_рваный_мяч:
- D 0 - I - 0x0199C4 0C:99B4: 00        .byte $00
- D 0 - I - 0x0199C5 0C:99B5: BD 99     .word off_99BD_выкл
- D 0 - I - 0x0199C7 0C:99B7: 01        .byte $01
- D 0 - I - 0x0199C8 0C:99B8: BE 99     .word off_99BE_65_01
- D 0 - I - 0x0199CA 0C:99BA: 03        .byte $03
- D 0 - I - 0x0199CB 0C:99BB: D5 99     .word off_99D5_65_03
off_99BD_выкл:
- D 0 - I - 0x0199CD 0C:99BD: FF        .byte $FF



off_99BE_65_01:
- D 0 - I - 0x0199CE 0C:99BE: E0        .byte $E0
- D 0 - I - 0x0199CF 0C:99BF: 12        .byte $12
- D 0 - I - 0x0199D0 0C:99C0: E2        .byte $E2
- D 0 - I - 0x0199D1 0C:99C1: 40        .byte $40
- D 0 - I - 0x0199D2 0C:99C2: E3        .byte $E3
- D 0 - I - 0x0199D3 0C:99C3: 05        .byte $05
- D 0 - I - 0x0199D4 0C:99C4: 81        .byte $81
- D 0 - I - 0x0199D5 0C:99C5: 15        .byte $15
- D 0 - I - 0x0199D6 0C:99C6: 13        .byte $13
- D 0 - I - 0x0199D7 0C:99C7: 11        .byte $11
- D 0 - I - 0x0199D8 0C:99C8: 0B        .byte $0B
- D 0 - I - 0x0199D9 0C:99C9: 09        .byte $09
- D 0 - I - 0x0199DA 0C:99CA: 0B        .byte $0B
- D 0 - I - 0x0199DB 0C:99CB: 11        .byte $11
- D 0 - I - 0x0199DC 0C:99CC: 10        .byte $10
- D 0 - I - 0x0199DD 0C:99CD: 0B        .byte $0B
- D 0 - I - 0x0199DE 0C:99CE: 0A        .byte $0A
- D 0 - I - 0x0199DF 0C:99CF: 09        .byte $09
- D 0 - I - 0x0199E0 0C:99D0: 0C        .byte $0C
- D 0 - I - 0x0199E1 0C:99D1: 09        .byte $09
- D 0 - I - 0x0199E2 0C:99D2: 0C        .byte $0C
- D 0 - I - 0x0199E3 0C:99D3: 09        .byte $09
- D 0 - I - 0x0199E4 0C:99D4: FF        .byte $FF



off_99D5_65_03:
- D 0 - I - 0x0199E5 0C:99D5: E0        .byte $E0
- D 0 - I - 0x0199E6 0C:99D6: 12        .byte $12
- D 0 - I - 0x0199E7 0C:99D7: E3        .byte $E3
- D 0 - I - 0x0199E8 0C:99D8: 00        .byte $00
- D 0 - I - 0x0199E9 0C:99D9: 81        .byte $81
- D 0 - I - 0x0199EA 0C:99DA: 03        .byte $03
- D 0 - I - 0x0199EB 0C:99DB: 05        .byte $05
- D 0 - I - 0x0199EC 0C:99DC: 04        .byte $04
- D 0 - I - 0x0199ED 0C:99DD: 06        .byte $06
- D 0 - I - 0x0199EE 0C:99DE: 05        .byte $05
- D 0 - I - 0x0199EF 0C:99DF: 07        .byte $07
- D 0 - I - 0x0199F0 0C:99E0: 06        .byte $06
- D 0 - I - 0x0199F1 0C:99E1: 08        .byte $08
- D 0 - I - 0x0199F2 0C:99E2: E3        .byte $E3
- D 0 - I - 0x0199F3 0C:99E3: 07        .byte $07
- D 0 - I - 0x0199F4 0C:99E4: 8E        .byte $8E
- D 0 - I - 0x0199F5 0C:99E5: 0B        .byte $0B
- D 0 - I - 0x0199F6 0C:99E6: FF        .byte $FF



_off000_99E7_68_звук_дриблинг:
- D 0 - I - 0x0199F7 0C:99E7: 00        .byte $00
- D 0 - I - 0x0199F8 0C:99E8: F0 99     .word off_99F0_выкл
- D 0 - I - 0x0199FA 0C:99EA: 01        .byte $01
- D 0 - I - 0x0199FB 0C:99EB: F0 99     .word off_99F0_выкл
- D 0 - I - 0x0199FD 0C:99ED: 03        .byte $03
- D 0 - I - 0x0199FE 0C:99EE: F1 99     .word off_99F1_68_03
off_99F0_выкл:
- D 0 - I - 0x019A00 0C:99F0: FF        .byte $FF



off_99F1_68_03:
- D 0 - I - 0x019A01 0C:99F1: E0        .byte $E0
- D 0 - I - 0x019A02 0C:99F2: 12        .byte $12
- D 0 - I - 0x019A03 0C:99F3: E3        .byte $E3
- D 0 - I - 0x019A04 0C:99F4: 00        .byte $00
- D 0 - I - 0x019A05 0C:99F5: ED        .byte $ED
- D 0 - I - 0x019A06 0C:99F6: 02        .byte $02
- D 0 - I - 0x019A07 0C:99F7: 84        .byte $84
- D 0 - I - 0x019A08 0C:99F8: 09        .byte $09
- D 0 - I - 0x019A09 0C:99F9: 93        .byte $93
- D 0 - I - 0x019A0A 0C:99FA: 06        .byte $06
- D 0 - I - 0x019A0B 0C:99FB: FF        .byte $FF



_off000_99FC_66_звук_свисток:
- D 0 - I - 0x019A0C 0C:99FC: 00        .byte $00
- D 0 - I - 0x019A0D 0C:99FD: 05 9A     .word off_9A05_выкл
- D 0 - I - 0x019A0F 0C:99FF: 01        .byte $01
- D 0 - I - 0x019A10 0C:9A00: 06 9A     .word off_9A06_66_01
- D 0 - I - 0x019A12 0C:9A02: 03        .byte $03
- D 0 - I - 0x019A13 0C:9A03: 05 9A     .word off_9A05_выкл
off_9A05_выкл:
- D 0 - I - 0x019A15 0C:9A05: FF        .byte $FF



off_9A06_66_01:
- D 0 - I - 0x019A16 0C:9A06: E0        .byte $E0
- D 0 - I - 0x019A17 0C:9A07: 12        .byte $12
- D 0 - I - 0x019A18 0C:9A08: E2        .byte $E2
- D 0 - I - 0x019A19 0C:9A09: 80        .byte $80
- D 0 - I - 0x019A1A 0C:9A0A: E3        .byte $E3
- D 0 - I - 0x019A1B 0C:9A0B: 00        .byte $00
- D 0 - I - 0x019A1C 0C:9A0C: 81        .byte $81
- D 0 - I - 0x019A1D 0C:9A0D: 4A        .byte $4A
- D 0 - I - 0x019A1E 0C:9A0E: 82        .byte $82
- D 0 - I - 0x019A1F 0C:9A0F: 4B        .byte $4B
- D 0 - I - 0x019A20 0C:9A10: E9        .byte $E9
- D 0 - I - 0x019A21 0C:9A11: 14 9A     .word sub_E9_9A14
- D 0 - I - 0x019A23 0C:9A13: FF        .byte $FF



sub_E9_9A14:
- D 0 - I - 0x019A24 0C:9A14: 81        .byte $81
- D 0 - I - 0x019A25 0C:9A15: 54        .byte $54
- D 0 - I - 0x019A26 0C:9A16: 59        .byte $59
- D 0 - I - 0x019A27 0C:9A17: 56        .byte $56
- D 0 - I - 0x019A28 0C:9A18: EB        .byte $EB
- D 0 - I - 0x019A29 0C:9A19: 15        .byte $15
- D 0 - I - 0x019A2A 0C:9A1A: 58        .byte $58
- D 0 - I - 0x019A2B 0C:9A1B: 54        .byte $54
- D 0 - I - 0x019A2C 0C:9A1C: EC        .byte $EC
- D 0 - I - 0x019A2D 0C:9A1D: EA        .byte $EA



_off000_9A1E_67_свисток_с_нарушением:
- D 0 - I - 0x019A2E 0C:9A1E: 04        .byte $04
- D 0 - I - 0x019A2F 0C:9A1F: 46 9A     .word off_9A46_67_04
- D 0 - I - 0x019A31 0C:9A21: 05        .byte $05
- D 0 - I - 0x019A32 0C:9A22: 2B 9A     .word off_9A2B_67_05
- D 0 - I - 0x019A34 0C:9A24: 06        .byte $06
- D 0 - I - 0x019A35 0C:9A25: 4B 9A     .word off_9A4B_67_06
- D 0 - I - 0x019A37 0C:9A27: 07        .byte $07
- D 0 - I - 0x019A38 0C:9A28: 50 9A     .word off_9A50_67_07
- D 0 - I - 0x019A3A 0C:9A2A: FF        .byte $FF



off_9A2B_67_05:
- D 0 - I - 0x019A3B 0C:9A2B: E9        .byte $E9
- D 0 - I - 0x019A3C 0C:9A2C: 36 9A     .word sub_E9_9A36
- D 0 - I - 0x019A3E 0C:9A2E: E9        .byte $E9
- D 0 - I - 0x019A3F 0C:9A2F: 14 9A     .word sub_E9_9A14
- D 0 - I - 0x019A41 0C:9A31: 8B        .byte $8B
- D 0 - I - 0x019A42 0C:9A32: 0C        .byte $0C
- D 0 - I - 0x019A43 0C:9A33: E8        .byte $E8
- D 0 - I - 0x019A44 0C:9A34: F7 B8     .word loc_E8_0x01B907



sub_E9_9A36:
- D 0 - I - 0x019A46 0C:9A36: E0        .byte $E0
- D 0 - I - 0x019A47 0C:9A37: 12        .byte $12
- D 0 - I - 0x019A48 0C:9A38: E2        .byte $E2
- D 0 - I - 0x019A49 0C:9A39: 80        .byte $80
- D 0 - I - 0x019A4A 0C:9A3A: E3        .byte $E3
- D 0 - I - 0x019A4B 0C:9A3B: 03        .byte $03
- D 0 - I - 0x019A4C 0C:9A3C: 81        .byte $81
- D 0 - I - 0x019A4D 0C:9A3D: 55        .byte $55
- D 0 - I - 0x019A4E 0C:9A3E: 58        .byte $58
- D 0 - I - 0x019A4F 0C:9A3F: 53        .byte $53
- D 0 - I - 0x019A50 0C:9A40: 58        .byte $58
- D 0 - I - 0x019A51 0C:9A41: 54        .byte $54
- D 0 - I - 0x019A52 0C:9A42: 59        .byte $59
- D 0 - I - 0x019A53 0C:9A43: 83        .byte $83
- D 0 - I - 0x019A54 0C:9A44: 0C        .byte $0C
- D 0 - I - 0x019A55 0C:9A45: EA        .byte $EA



off_9A46_67_04:
- D 0 - I - 0x019A56 0C:9A46: 9E        .byte $9E
- D 0 - I - 0x019A57 0C:9A47: 0C        .byte $0C
- D 0 - I - 0x019A58 0C:9A48: E8        .byte $E8
- D 0 - I - 0x019A59 0C:9A49: 05 B9     .word loc_E8_0x01B915



off_9A4B_67_06:
- D 0 - I - 0x019A5B 0C:9A4B: 9E        .byte $9E
- D 0 - I - 0x019A5C 0C:9A4C: 0C        .byte $0C
- D 0 - I - 0x019A5D 0C:9A4D: E8        .byte $E8
- D 0 - I - 0x019A5E 0C:9A4E: 13 B9     .word loc_E8_0x01B923



off_9A50_67_07:
- D 0 - I - 0x019A60 0C:9A50: 9E        .byte $9E
- D 0 - I - 0x019A61 0C:9A51: 10        .byte $10
- D 0 - I - 0x019A62 0C:9A52: E8        .byte $E8
- D 0 - I - 0x019A63 0C:9A53: 1F B9     .word loc_E8_0x01B92F



_off000_9A55_28_подкат:
- D 0 - I - 0x019A65 0C:9A55: 00        .byte $00
- D 0 - I - 0x019A66 0C:9A56: 5E 9A     .word off_9A5E_выкл
- D 0 - I - 0x019A68 0C:9A58: 01        .byte $01
- D 0 - I - 0x019A69 0C:9A59: 5E 9A     .word off_9A5E_выкл
- D 0 - I - 0x019A6B 0C:9A5B: 03        .byte $03
- D 0 - I - 0x019A6C 0C:9A5C: 5F 9A     .word off_9A5F_28_03
off_9A5E_выкл:
- D 0 - I - 0x019A6E 0C:9A5E: FF        .byte $FF



off_9A5F_28_03:
- D 0 - I - 0x019A6F 0C:9A5F: E0        .byte $E0
- D 0 - I - 0x019A70 0C:9A60: 12        .byte $12
- D 0 - I - 0x019A71 0C:9A61: E3        .byte $E3
- D 0 - I - 0x019A72 0C:9A62: 00        .byte $00
- D 0 - I - 0x019A73 0C:9A63: 81        .byte $81
- D 0 - I - 0x019A74 0C:9A64: 0A        .byte $0A
- D 0 - I - 0x019A75 0C:9A65: F3        .byte $F3
- D 0 - I - 0x019A76 0C:9A66: 0B        .byte $0B
- D 0 - I - 0x019A77 0C:9A67: 08        .byte $08
- D 0 - I - 0x019A78 0C:9A68: 09        .byte $09
- D 0 - I - 0x019A79 0C:9A69: 0A        .byte $0A
- D 0 - I - 0x019A7A 0C:9A6A: F4        .byte $F4
- D 0 - I - 0x019A7B 0C:9A6B: 84        .byte $84
- D 0 - I - 0x019A7C 0C:9A6C: 10        .byte $10
- D 0 - I - 0x019A7D 0C:9A6D: 07        .byte $07
- D 0 - I - 0x019A7E 0C:9A6E: 08        .byte $08
- D 0 - I - 0x019A7F 0C:9A6F: 07        .byte $07
- D 0 - I - 0x019A80 0C:9A70: 85        .byte $85
- D 0 - I - 0x019A81 0C:9A71: 07        .byte $07
- D 0 - I - 0x019A82 0C:9A72: 08        .byte $08
- D 0 - I - 0x019A83 0C:9A73: 09        .byte $09
- D 0 - I - 0x019A84 0C:9A74: 96        .byte $96
- D 0 - I - 0x019A85 0C:9A75: 09        .byte $09
- D 0 - I - 0x019A86 0C:9A76: FF        .byte $FF



_off000_9A77_2A_ловля_мяча:
- D 0 - I - 0x019A87 0C:9A77: 00        .byte $00
- D 0 - I - 0x019A88 0C:9A78: 80 9A     .word off_9A80_выкл
- D 0 - I - 0x019A8A 0C:9A7A: 01        .byte $01
- D 0 - I - 0x019A8B 0C:9A7B: 81 9A     .word off_9A81_2A_01
- D 0 - I - 0x019A8D 0C:9A7D: 03        .byte $03
- D 0 - I - 0x019A8E 0C:9A7E: 8F 9A     .word off_9A8F_2A_03
off_9A80_выкл:
- D 0 - I - 0x019A90 0C:9A80: FF        .byte $FF



off_9A81_2A_01:
- D 0 - I - 0x019A91 0C:9A81: E0        .byte $E0
- D 0 - I - 0x019A92 0C:9A82: 12        .byte $12
- D 0 - I - 0x019A93 0C:9A83: E2        .byte $E2
- D 0 - I - 0x019A94 0C:9A84: 80        .byte $80
- D 0 - I - 0x019A95 0C:9A85: E3        .byte $E3
- D 0 - I - 0x019A96 0C:9A86: 00        .byte $00
- D 0 - I - 0x019A97 0C:9A87: 81        .byte $81
- D 0 - I - 0x019A98 0C:9A88: 00        .byte $00
- D 0 - I - 0x019A99 0C:9A89: 05        .byte $05
- D 0 - I - 0x019A9A 0C:9A8A: 01        .byte $01
- D 0 - I - 0x019A9B 0C:9A8B: 06        .byte $06
- D 0 - I - 0x019A9C 0C:9A8C: 02        .byte $02
- D 0 - I - 0x019A9D 0C:9A8D: 07        .byte $07
- D 0 - I - 0x019A9E 0C:9A8E: FF        .byte $FF



off_9A8F_2A_03:
- D 0 - I - 0x019A9F 0C:9A8F: E0        .byte $E0
- D 0 - I - 0x019AA0 0C:9A90: 15        .byte $15
- D 0 - I - 0x019AA1 0C:9A91: E3        .byte $E3
- D 0 - I - 0x019AA2 0C:9A92: 00        .byte $00
- D 0 - I - 0x019AA3 0C:9A93: 84        .byte $84
- D 0 - I - 0x019AA4 0C:9A94: ED        .byte $ED
- D 0 - I - 0x019AA5 0C:9A95: 02        .byte $02
- D 0 - I - 0x019AA6 0C:9A96: 0E        .byte $0E
- D 0 - I - 0x019AA7 0C:9A97: 8C        .byte $8C
- D 0 - I - 0x019AA8 0C:9A98: 05        .byte $05
- D 0 - I - 0x019AA9 0C:9A99: FF        .byte $FF



_off000_9A9A_2D_удар_мяча_об_живот:
- D 0 - I - 0x019AAA 0C:9A9A: 00        .byte $00
- D 0 - I - 0x019AAB 0C:9A9B: A4 9A     .word off_9AA4_2D_00
- D 0 - I - 0x019AAD 0C:9A9D: 01        .byte $01
- D 0 - I - 0x019AAE 0C:9A9E: B2 9A     .word off_9AB2_2D_01
- D 0 - I - 0x019AB0 0C:9AA0: 03        .byte $03
- D 0 - I - 0x019AB1 0C:9AA1: C0 9A     .word off_9AC0_2D_03
- D 0 - I - 0x019AB3 0C:9AA3: FF        .byte $FF



off_9AA4_2D_00:
- D 0 - I - 0x019AB4 0C:9AA4: E0        .byte $E0
- D 0 - I - 0x019AB5 0C:9AA5: 16        .byte $16
- D 0 - I - 0x019AB6 0C:9AA6: E2        .byte $E2
- D 0 - I - 0x019AB7 0C:9AA7: 80        .byte $80
- D 0 - I - 0x019AB8 0C:9AA8: E3        .byte $E3
- D 0 - I - 0x019AB9 0C:9AA9: 00        .byte $00
- D 0 - I - 0x019ABA 0C:9AAA: 81        .byte $81
- D 0 - I - 0x019ABB 0C:9AAB: 10        .byte $10
- D 0 - I - 0x019ABC 0C:9AAC: 00        .byte $00
- D 0 - I - 0x019ABD 0C:9AAD: 16        .byte $16
- D 0 - I - 0x019ABE 0C:9AAE: 06        .byte $06
- D 0 - I - 0x019ABF 0C:9AAF: 10        .byte $10
- D 0 - I - 0x019AC0 0C:9AB0: 00        .byte $00
- D 0 - I - 0x019AC1 0C:9AB1: FF        .byte $FF



off_9AB2_2D_01:
- D 0 - I - 0x019AC2 0C:9AB2: E0        .byte $E0
- D 0 - I - 0x019AC3 0C:9AB3: 14        .byte $14
- D 0 - I - 0x019AC4 0C:9AB4: E2        .byte $E2
- D 0 - I - 0x019AC5 0C:9AB5: 40        .byte $40
- D 0 - I - 0x019AC6 0C:9AB6: E3        .byte $E3
- D 0 - I - 0x019AC7 0C:9AB7: 04        .byte $04
- D 0 - I - 0x019AC8 0C:9AB8: 81        .byte $81
- D 0 - I - 0x019AC9 0C:9AB9: 22        .byte $22
- D 0 - I - 0x019ACA 0C:9ABA: 21        .byte $21
- D 0 - I - 0x019ACB 0C:9ABB: 15        .byte $15
- D 0 - I - 0x019ACC 0C:9ABC: 14        .byte $14
- D 0 - I - 0x019ACD 0C:9ABD: 24        .byte $24
- D 0 - I - 0x019ACE 0C:9ABE: 25        .byte $25
- D 0 - I - 0x019ACF 0C:9ABF: FF        .byte $FF



off_9AC0_2D_03:
- D 0 - I - 0x019AD0 0C:9AC0: E0        .byte $E0
- D 0 - I - 0x019AD1 0C:9AC1: 17        .byte $17
- D 0 - I - 0x019AD2 0C:9AC2: E3        .byte $E3
- D 0 - I - 0x019AD3 0C:9AC3: 00        .byte $00
- D 0 - I - 0x019AD4 0C:9AC4: 82        .byte $82
- D 0 - I - 0x019AD5 0C:9AC5: 0E        .byte $0E
- D 0 - I - 0x019AD6 0C:9AC6: 0D        .byte $0D
- D 0 - I - 0x019AD7 0C:9AC7: 09        .byte $09
- D 0 - I - 0x019AD8 0C:9AC8: 81        .byte $81
- D 0 - I - 0x019AD9 0C:9AC9: 0A        .byte $0A
- D 0 - I - 0x019ADA 0C:9ACA: 09        .byte $09
- D 0 - I - 0x019ADB 0C:9ACB: 08        .byte $08
- D 0 - I - 0x019ADC 0C:9ACC: FF        .byte $FF



_off000_9ACD_1D_удар_соды:
- D 0 - I - 0x019ADD 0C:9ACD: 00        .byte $00
- D 0 - I - 0x019ADE 0C:9ACE: D7 9A     .word off_9AD7_1D_00
- D 0 - I - 0x019AE0 0C:9AD0: 01        .byte $01
- D 0 - I - 0x019AE1 0C:9AD1: FB 9A     .word off_9AFB_1D_01
- D 0 - I - 0x019AE3 0C:9AD3: 03        .byte $03
- D 0 - I - 0x019AE4 0C:9AD4: 04 9B     .word off_9B04_1D_03
- D 0 - I - 0x019AE6 0C:9AD6: FF        .byte $FF



off_9AD7_1D_00:
- D 0 - I - 0x019AE7 0C:9AD7: E2        .byte $E2
- D 0 - I - 0x019AE8 0C:9AD8: 40        .byte $40
- D 0 - I - 0x019AE9 0C:9AD9: E3        .byte $E3
- D 0 - I - 0x019AEA 0C:9ADA: 00        .byte $00
loc_E8_9ADB:
- D 0 - I - 0x019AEB 0C:9ADB: 82        .byte $82
- D 0 - I - 0x019AEC 0C:9ADC: 0C        .byte $0C
- D 0 - I - 0x019AED 0C:9ADD: E0        .byte $E0
- D 0 - I - 0x019AEE 0C:9ADE: 32        .byte $32
- D 0 - I - 0x019AEF 0C:9ADF: 58        .byte $58
- D 0 - I - 0x019AF0 0C:9AE0: F3        .byte $F3
- D 0 - I - 0x019AF1 0C:9AE1: E5        .byte $E5
- D 0 - I - 0x019AF2 0C:9AE2: 01        .byte $01
- D 0 - I - 0x019AF3 0C:9AE3: 84        .byte $84
- D 0 - I - 0x019AF4 0C:9AE4: 58        .byte $58
- D 0 - I - 0x019AF5 0C:9AE5: 82        .byte $82
- D 0 - I - 0x019AF6 0C:9AE6: 0C        .byte $0C
- D 0 - I - 0x019AF7 0C:9AE7: E5        .byte $E5
- D 0 - I - 0x019AF8 0C:9AE8: 00        .byte $00
- D 0 - I - 0x019AF9 0C:9AE9: F4        .byte $F4
- D 0 - I - 0x019AFA 0C:9AEA: 82        .byte $82
- D 0 - I - 0x019AFB 0C:9AEB: 58        .byte $58
- D 0 - I - 0x019AFC 0C:9AEC: F3        .byte $F3
- D 0 - I - 0x019AFD 0C:9AED: E5        .byte $E5
- D 0 - I - 0x019AFE 0C:9AEE: 01        .byte $01
- D 0 - I - 0x019AFF 0C:9AEF: 84        .byte $84
- D 0 - I - 0x019B00 0C:9AF0: 58        .byte $58
- D 0 - I - 0x019B01 0C:9AF1: E5        .byte $E5
- D 0 - I - 0x019B02 0C:9AF2: 02        .byte $02
- D 0 - I - 0x019B03 0C:9AF3: 83        .byte $83
- D 0 - I - 0x019B04 0C:9AF4: 58        .byte $58
- D 0 - I - 0x019B05 0C:9AF5: E5        .byte $E5
- D 0 - I - 0x019B06 0C:9AF6: 01        .byte $01
- D 0 - I - 0x019B07 0C:9AF7: 84        .byte $84
- D 0 - I - 0x019B08 0C:9AF8: 58        .byte $58
- D 0 - I - 0x019B09 0C:9AF9: F4        .byte $F4
- D 0 - I - 0x019B0A 0C:9AFA: FF        .byte $FF



off_9AFB_1D_01:
- D 0 - I - 0x019B0B 0C:9AFB: 86        .byte $86
- D 0 - I - 0x019B0C 0C:9AFC: 0C        .byte $0C
- D 0 - I - 0x019B0D 0C:9AFD: E2        .byte $E2
- D 0 - I - 0x019B0E 0C:9AFE: 80        .byte $80
- D 0 - I - 0x019B0F 0C:9AFF: E3        .byte $E3
- D 0 - I - 0x019B10 0C:9B00: 03        .byte $03
- D 0 - I - 0x019B11 0C:9B01: E8        .byte $E8
- D 0 - I - 0x019B12 0C:9B02: DB 9A     .word loc_E8_9ADB



off_9B04_1D_03:
- D 0 - I - 0x019B14 0C:9B04: E0        .byte $E0
- D 0 - I - 0x019B15 0C:9B05: 11        .byte $11
- D 0 - I - 0x019B16 0C:9B06: E3        .byte $E3
- D 0 - I - 0x019B17 0C:9B07: 05        .byte $05
- D 0 - I - 0x019B18 0C:9B08: 81        .byte $81
- D 0 - I - 0x019B19 0C:9B09: 00        .byte $00
- D 0 - I - 0x019B1A 0C:9B0A: 01        .byte $01
- D 0 - I - 0x019B1B 0C:9B0B: 82        .byte $82
- D 0 - I - 0x019B1C 0C:9B0C: 02        .byte $02
- D 0 - I - 0x019B1D 0C:9B0D: F3        .byte $F3
- D 0 - I - 0x019B1E 0C:9B0E: 84        .byte $84
- D 0 - I - 0x019B1F 0C:9B0F: 03        .byte $03
- D 0 - I - 0x019B20 0C:9B10: 82        .byte $82
- D 0 - I - 0x019B21 0C:9B11: 10        .byte $10
- D 0 - I - 0x019B22 0C:9B12: F4        .byte $F4
- D 0 - I - 0x019B23 0C:9B13: 83        .byte $83
- D 0 - I - 0x019B24 0C:9B14: 02        .byte $02
- D 0 - I - 0x019B25 0C:9B15: F3        .byte $F3
- D 0 - I - 0x019B26 0C:9B16: 87        .byte $87
- D 0 - I - 0x019B27 0C:9B17: 03        .byte $03
- D 0 - I - 0x019B28 0C:9B18: 85        .byte $85
- D 0 - I - 0x019B29 0C:9B19: 04        .byte $04
- D 0 - I - 0x019B2A 0C:9B1A: 88        .byte $88
- D 0 - I - 0x019B2B 0C:9B1B: 03        .byte $03
- D 0 - I - 0x019B2C 0C:9B1C: F4        .byte $F4
- D 0 - I - 0x019B2D 0C:9B1D: FF        .byte $FF



_off000_9B1E_1B_удар_головой:
- D 0 - I - 0x019B2E 0C:9B1E: 00        .byte $00
- D 0 - I - 0x019B2F 0C:9B1F: 27 9B     .word off_9B27_выкл
- D 0 - I - 0x019B31 0C:9B21: 01        .byte $01
- D 0 - I - 0x019B32 0C:9B22: 28 9B     .word off_9B28_1B_01
- D 0 - I - 0x019B34 0C:9B24: 03        .byte $03
- D 0 - I - 0x019B35 0C:9B25: 46 9B     .word off_9B46_1B_03
off_9B27_выкл:
- D 0 - I - 0x019B37 0C:9B27: FF        .byte $FF



off_9B28_1B_01:
- D 0 - I - 0x019B38 0C:9B28: E0        .byte $E0
- D 0 - I - 0x019B39 0C:9B29: 16        .byte $16
- D 0 - I - 0x019B3A 0C:9B2A: E2        .byte $E2
- D 0 - I - 0x019B3B 0C:9B2B: 80        .byte $80
- D 0 - I - 0x019B3C 0C:9B2C: E3        .byte $E3
- D 0 - I - 0x019B3D 0C:9B2D: 00        .byte $00
- D 0 - I - 0x019B3E 0C:9B2E: 81        .byte $81
- D 0 - I - 0x019B3F 0C:9B2F: 10        .byte $10
- D 0 - I - 0x019B40 0C:9B30: 00        .byte $00
- D 0 - I - 0x019B41 0C:9B31: 11        .byte $11
- D 0 - I - 0x019B42 0C:9B32: 01        .byte $01
- D 0 - I - 0x019B43 0C:9B33: 12        .byte $12
- D 0 - I - 0x019B44 0C:9B34: 02        .byte $02
- D 0 - I - 0x019B45 0C:9B35: 82        .byte $82
- D 0 - I - 0x019B46 0C:9B36: 08        .byte $08
- D 0 - I - 0x019B47 0C:9B37: 09        .byte $09
- D 0 - I - 0x019B48 0C:9B38: 08        .byte $08
- D 0 - I - 0x019B49 0C:9B39: 07        .byte $07
- D 0 - I - 0x019B4A 0C:9B3A: 81        .byte $81
- D 0 - I - 0x019B4B 0C:9B3B: 06        .byte $06
- D 0 - I - 0x019B4C 0C:9B3C: E3        .byte $E3
- D 0 - I - 0x019B4D 0C:9B3D: 08        .byte $08
- D 0 - I - 0x019B4E 0C:9B3E: 82        .byte $82
- D 0 - I - 0x019B4F 0C:9B3F: 08        .byte $08
- D 0 - I - 0x019B50 0C:9B40: 09        .byte $09
- D 0 - I - 0x019B51 0C:9B41: 08        .byte $08
- D 0 - I - 0x019B52 0C:9B42: 07        .byte $07
- D 0 - I - 0x019B53 0C:9B43: 81        .byte $81
- D 0 - I - 0x019B54 0C:9B44: 06        .byte $06
- D 0 - I - 0x019B55 0C:9B45: FF        .byte $FF



off_9B46_1B_03:
- D 0 - I - 0x019B56 0C:9B46: E0        .byte $E0
- D 0 - I - 0x019B57 0C:9B47: 14        .byte $14
- D 0 - I - 0x019B58 0C:9B48: E3        .byte $E3
- D 0 - I - 0x019B59 0C:9B49: 00        .byte $00
- D 0 - I - 0x019B5A 0C:9B4A: 81        .byte $81
- D 0 - I - 0x019B5B 0C:9B4B: 0F        .byte $0F
- D 0 - I - 0x019B5C 0C:9B4C: 00        .byte $00
- D 0 - I - 0x019B5D 0C:9B4D: 0E        .byte $0E
- D 0 - I - 0x019B5E 0C:9B4E: 01        .byte $01
- D 0 - I - 0x019B5F 0C:9B4F: FF        .byte $FF



_off000_9B50_1E:
- D 0 - I - 0x019B60 0C:9B50: 00        .byte $00
- D 0 - I - 0x019B61 0C:9B51: 5A 9B     .word off_9B5A_1E_00
- D 0 - I - 0x019B63 0C:9B53: 01        .byte $01
- D 0 - I - 0x019B64 0C:9B54: 7A 9B     .word off_9B7A_1E_01
- D 0 - I - 0x019B66 0C:9B56: 03        .byte $03
- D 0 - I - 0x019B67 0C:9B57: 59 9B     .word off_9B59_выкл
off_9B59_выкл:
- D 0 - I - 0x019B69 0C:9B59: FF        .byte $FF



off_9B5A_1E_00:
- D 0 - I - 0x019B6A 0C:9B5A: E0        .byte $E0
- D 0 - I - 0x019B6B 0C:9B5B: 14        .byte $14
- D 0 - I - 0x019B6C 0C:9B5C: E2        .byte $E2
- D 0 - I - 0x019B6D 0C:9B5D: 80        .byte $80
- D 0 - I - 0x019B6E 0C:9B5E: E3        .byte $E3
- D 0 - I - 0x019B6F 0C:9B5F: 00        .byte $00
- D 0 - I - 0x019B70 0C:9B60: 8E        .byte $8E
- D 0 - I - 0x019B71 0C:9B61: E4        .byte $E4
- D 0 - I - 0x019B72 0C:9B62: 95        .byte $95
- D 0 - I - 0x019B73 0C:9B63: 37        .byte $37
- D 0 - I - 0x019B74 0C:9B64: E3        .byte $E3
- D 0 - I - 0x019B75 0C:9B65: 08        .byte $08
- D 0 - I - 0x019B76 0C:9B66: E4        .byte $E4
- D 0 - I - 0x019B77 0C:9B67: 95        .byte $95
- D 0 - I - 0x019B78 0C:9B68: 37        .byte $37
- D 0 - I - 0x019B79 0C:9B69: E3        .byte $E3
- D 0 - I - 0x019B7A 0C:9B6A: 0A        .byte $0A
- D 0 - I - 0x019B7B 0C:9B6B: E4        .byte $E4
- D 0 - I - 0x019B7C 0C:9B6C: 95        .byte $95
- D 0 - I - 0x019B7D 0C:9B6D: 37        .byte $37
- D 0 - I - 0x019B7E 0C:9B6E: E3        .byte $E3
- D 0 - I - 0x019B7F 0C:9B6F: 0B        .byte $0B
- D 0 - I - 0x019B80 0C:9B70: E4        .byte $E4
- D 0 - I - 0x019B81 0C:9B71: 95        .byte $95
- D 0 - I - 0x019B82 0C:9B72: 37        .byte $37
- D 0 - I - 0x019B83 0C:9B73: E3        .byte $E3
- D 0 - I - 0x019B84 0C:9B74: 0C        .byte $0C
- D 0 - I - 0x019B85 0C:9B75: 83        .byte $83
- D 0 - I - 0x019B86 0C:9B76: E4        .byte $E4
- D 0 - I - 0x019B87 0C:9B77: 95        .byte $95
- D 0 - I - 0x019B88 0C:9B78: 37        .byte $37
- D 0 - I - 0x019B89 0C:9B79: FF        .byte $FF



off_9B7A_1E_01:
- D 0 - I - 0x019B8A 0C:9B7A: E0        .byte $E0
- D 0 - I - 0x019B8B 0C:9B7B: 14        .byte $14
- D 0 - I - 0x019B8C 0C:9B7C: E2        .byte $E2
- D 0 - I - 0x019B8D 0C:9B7D: 80        .byte $80
- D 0 - I - 0x019B8E 0C:9B7E: 8E        .byte $8E
- D 0 - I - 0x019B8F 0C:9B7F: 0C        .byte $0C
- D 0 - I - 0x019B90 0C:9B80: E5        .byte $E5
- D 0 - I - 0x019B91 0C:9B81: 02        .byte $02
- D 0 - I - 0x019B92 0C:9B82: E3        .byte $E3
- D 0 - I - 0x019B93 0C:9B83: 08        .byte $08
- D 0 - I - 0x019B94 0C:9B84: E4        .byte $E4
- D 0 - I - 0x019B95 0C:9B85: 95        .byte $95
- D 0 - I - 0x019B96 0C:9B86: 37        .byte $37
- D 0 - I - 0x019B97 0C:9B87: E3        .byte $E3
- D 0 - I - 0x019B98 0C:9B88: 0A        .byte $0A
- D 0 - I - 0x019B99 0C:9B89: E4        .byte $E4
- D 0 - I - 0x019B9A 0C:9B8A: 95        .byte $95
- D 0 - I - 0x019B9B 0C:9B8B: 37        .byte $37
- D 0 - I - 0x019B9C 0C:9B8C: E3        .byte $E3
- D 0 - I - 0x019B9D 0C:9B8D: 0B        .byte $0B
- D 0 - I - 0x019B9E 0C:9B8E: E4        .byte $E4
- D 0 - I - 0x019B9F 0C:9B8F: 95        .byte $95
- D 0 - I - 0x019BA0 0C:9B90: 37        .byte $37
- D 0 - I - 0x019BA1 0C:9B91: E3        .byte $E3
- D 0 - I - 0x019BA2 0C:9B92: 0C        .byte $0C
- D 0 - I - 0x019BA3 0C:9B93: E4        .byte $E4
- D 0 - I - 0x019BA4 0C:9B94: 95        .byte $95
- D 0 - I - 0x019BA5 0C:9B95: 37        .byte $37
- D 0 - I - 0x019BA6 0C:9B96: 83        .byte $83
- D 0 - I - 0x019BA7 0C:9B97: E3        .byte $E3
- D 0 - I - 0x019BA8 0C:9B98: 0D        .byte $0D
- D 0 - I - 0x019BA9 0C:9B99: E4        .byte $E4
- D 0 - I - 0x019BAA 0C:9B9A: 95        .byte $95
- D 0 - I - 0x019BAB 0C:9B9B: 37        .byte $37
- D 0 - I - 0x019BAC 0C:9B9C: FF        .byte $FF



_off000_9B9D_1F:
- D 0 - I - 0x019BAD 0C:9B9D: 00        .byte $00
- D 0 - I - 0x019BAE 0C:9B9E: A6 9B     .word off_9BA6_выкл
- D 0 - I - 0x019BB0 0C:9BA0: 01        .byte $01
- D 0 - I - 0x019BB1 0C:9BA1: A7 9B     .word off_9BA7_1F_01
- D 0 - I - 0x019BB3 0C:9BA3: 03        .byte $03
- D 0 - I - 0x019BB4 0C:9BA4: A6 9B     .word off_9BA6_выкл
off_9BA6_выкл:
- D 0 - I - 0x019BB6 0C:9BA6: FF        .byte $FF



off_9BA7_1F_01:
- D 0 - I - 0x019BB7 0C:9BA7: E0        .byte $E0
- D 0 - I - 0x019BB8 0C:9BA8: 17        .byte $17
- D 0 - I - 0x019BB9 0C:9BA9: E2        .byte $E2
- D 0 - I - 0x019BBA 0C:9BAA: 40        .byte $40
- D 0 - I - 0x019BBB 0C:9BAB: 89        .byte $89
- D 0 - I - 0x019BBC 0C:9BAC: E3        .byte $E3
- D 0 - I - 0x019BBD 0C:9BAD: 00        .byte $00
- D 0 - I - 0x019BBE 0C:9BAE: E4        .byte $E4
- D 0 - I - 0x019BBF 0C:9BAF: 85        .byte $85
- D 0 - I - 0x019BC0 0C:9BB0: 18        .byte $18
- D 0 - I - 0x019BC1 0C:9BB1: E3        .byte $E3
- D 0 - I - 0x019BC2 0C:9BB2: 01        .byte $01
- D 0 - I - 0x019BC3 0C:9BB3: E4        .byte $E4
- D 0 - I - 0x019BC4 0C:9BB4: 85        .byte $85
- D 0 - I - 0x019BC5 0C:9BB5: 18        .byte $18
- D 0 - I - 0x019BC6 0C:9BB6: E3        .byte $E3
- D 0 - I - 0x019BC7 0C:9BB7: 02        .byte $02
- D 0 - I - 0x019BC8 0C:9BB8: E4        .byte $E4
- D 0 - I - 0x019BC9 0C:9BB9: 85        .byte $85
- D 0 - I - 0x019BCA 0C:9BBA: 18        .byte $18
- D 0 - I - 0x019BCB 0C:9BBB: E3        .byte $E3
- D 0 - I - 0x019BCC 0C:9BBC: 03        .byte $03
- D 0 - I - 0x019BCD 0C:9BBD: E4        .byte $E4
- D 0 - I - 0x019BCE 0C:9BBE: 85        .byte $85
- D 0 - I - 0x019BCF 0C:9BBF: 18        .byte $18
- D 0 - I - 0x019BD0 0C:9BC0: E3        .byte $E3
- D 0 - I - 0x019BD1 0C:9BC1: 04        .byte $04
- D 0 - I - 0x019BD2 0C:9BC2: E4        .byte $E4
- D 0 - I - 0x019BD3 0C:9BC3: 85        .byte $85
- D 0 - I - 0x019BD4 0C:9BC4: 18        .byte $18
- D 0 - I - 0x019BD5 0C:9BC5: E3        .byte $E3
- D 0 - I - 0x019BD6 0C:9BC6: 05        .byte $05
- D 0 - I - 0x019BD7 0C:9BC7: E4        .byte $E4
- D 0 - I - 0x019BD8 0C:9BC8: 85        .byte $85
- D 0 - I - 0x019BD9 0C:9BC9: 18        .byte $18
- D 0 - I - 0x019BDA 0C:9BCA: E3        .byte $E3
- D 0 - I - 0x019BDB 0C:9BCB: 06        .byte $06
- D 0 - I - 0x019BDC 0C:9BCC: E4        .byte $E4
- D 0 - I - 0x019BDD 0C:9BCD: 85        .byte $85
- D 0 - I - 0x019BDE 0C:9BCE: 18        .byte $18
- D 0 - I - 0x019BDF 0C:9BCF: E3        .byte $E3
- D 0 - I - 0x019BE0 0C:9BD0: 07        .byte $07
- D 0 - I - 0x019BE1 0C:9BD1: E4        .byte $E4
- D 0 - I - 0x019BE2 0C:9BD2: 85        .byte $85
- D 0 - I - 0x019BE3 0C:9BD3: 18        .byte $18
- D 0 - I - 0x019BE4 0C:9BD4: E3        .byte $E3
- D 0 - I - 0x019BE5 0C:9BD5: 08        .byte $08
- D 0 - I - 0x019BE6 0C:9BD6: E4        .byte $E4
- D 0 - I - 0x019BE7 0C:9BD7: 85        .byte $85
- D 0 - I - 0x019BE8 0C:9BD8: 18        .byte $18
- D 0 - I - 0x019BE9 0C:9BD9: E3        .byte $E3
- D 0 - I - 0x019BEA 0C:9BDA: 09        .byte $09
- D 0 - I - 0x019BEB 0C:9BDB: E4        .byte $E4
- D 0 - I - 0x019BEC 0C:9BDC: 85        .byte $85
- D 0 - I - 0x019BED 0C:9BDD: 18        .byte $18
- D 0 - I - 0x019BEE 0C:9BDE: E3        .byte $E3
- D 0 - I - 0x019BEF 0C:9BDF: 0A        .byte $0A
- D 0 - I - 0x019BF0 0C:9BE0: E4        .byte $E4
- D 0 - I - 0x019BF1 0C:9BE1: 85        .byte $85
- D 0 - I - 0x019BF2 0C:9BE2: 18        .byte $18
- D 0 - I - 0x019BF3 0C:9BE3: E3        .byte $E3
- D 0 - I - 0x019BF4 0C:9BE4: 0B        .byte $0B
- D 0 - I - 0x019BF5 0C:9BE5: E4        .byte $E4
- D 0 - I - 0x019BF6 0C:9BE6: 85        .byte $85
- D 0 - I - 0x019BF7 0C:9BE7: 18        .byte $18
- D 0 - I - 0x019BF8 0C:9BE8: E3        .byte $E3
- D 0 - I - 0x019BF9 0C:9BE9: 0C        .byte $0C
- D 0 - I - 0x019BFA 0C:9BEA: E4        .byte $E4
- D 0 - I - 0x019BFB 0C:9BEB: 85        .byte $85
- D 0 - I - 0x019BFC 0C:9BEC: 18        .byte $18
- D 0 - I - 0x019BFD 0C:9BED: E3        .byte $E3
- D 0 - I - 0x019BFE 0C:9BEE: 0D        .byte $0D
- D 0 - I - 0x019BFF 0C:9BEF: E4        .byte $E4
- D 0 - I - 0x019C00 0C:9BF0: 85        .byte $85
- D 0 - I - 0x019C01 0C:9BF1: 18        .byte $18
- D 0 - I - 0x019C02 0C:9BF2: FF        .byte $FF



_off000_9BF3_6C_звук_часы_конец:
- D 0 - I - 0x019C03 0C:9BF3: 00        .byte $00
- D 0 - I - 0x019C04 0C:9BF4: FD 9B     .word off_9BFD_6C_00
- D 0 - I - 0x019C06 0C:9BF6: 01        .byte $01
- D 0 - I - 0x019C07 0C:9BF7: 06 9C     .word off_9C06_6C_01
- D 0 - I - 0x019C09 0C:9BF9: 03        .byte $03
- D 0 - I - 0x019C0A 0C:9BFA: FC 9B     .word off_9BFC_выкл
off_9BFC_выкл:
- D 0 - I - 0x019C0C 0C:9BFC: FF        .byte $FF



off_9BFD_6C_00:
- D 0 - I - 0x019C0D 0C:9BFD: E3        .byte $E3
- D 0 - I - 0x019C0E 0C:9BFE: 00        .byte $00
- D 0 - I - 0x019C0F 0C:9BFF: E2        .byte $E2
- D 0 - I - 0x019C10 0C:9C00: 80        .byte $80
- D 0 - I - 0x019C11 0C:9C01: E0        .byte $E0
- D 0 - I - 0x019C12 0C:9C02: 14        .byte $14
- D 0 - I - 0x019C13 0C:9C03: A2        .byte $A2
- D 0 - I - 0x019C14 0C:9C04: 49        .byte $49
- D 0 - I - 0x019C15 0C:9C05: FF        .byte $FF



off_9C06_6C_01:
- D 0 - I - 0x019C16 0C:9C06: E3        .byte $E3
- D 0 - I - 0x019C17 0C:9C07: 0A        .byte $0A
- D 0 - I - 0x019C18 0C:9C08: ED        .byte $ED
- D 0 - I - 0x019C19 0C:9C09: 01        .byte $01
- D 0 - I - 0x019C1A 0C:9C0A: 83        .byte $83
- D 0 - I - 0x019C1B 0C:9C0B: 0C        .byte $0C
- D 0 - I - 0x019C1C 0C:9C0C: E2        .byte $E2
- D 0 - I - 0x019C1D 0C:9C0D: 80        .byte $80
- D 0 - I - 0x019C1E 0C:9C0E: E0        .byte $E0
- D 0 - I - 0x019C1F 0C:9C0F: 14        .byte $14
- D 0 - I - 0x019C20 0C:9C10: A2        .byte $A2
- D 0 - I - 0x019C21 0C:9C11: 49        .byte $49
- D 0 - I - 0x019C22 0C:9C12: FF        .byte $FF



_off000_9C13_30_гроза:
- D 0 - I - 0x019C23 0C:9C13: 00        .byte $00
- D 0 - I - 0x019C24 0C:9C14: 1C 9C     .word off_9C1C_выкл
- D 0 - I - 0x019C26 0C:9C16: 01        .byte $01
- D 0 - I - 0x019C27 0C:9C17: 1C 9C     .word off_9C1C_выкл
- D 0 - I - 0x019C29 0C:9C19: 03        .byte $03
- D 0 - I - 0x019C2A 0C:9C1A: 1D 9C     .word off_9C1D_30_03
off_9C1C_выкл:
- D 0 - I - 0x019C2C 0C:9C1C: FF        .byte $FF



off_9C1D_30_03:
- D 0 - I - 0x019C2D 0C:9C1D: E0        .byte $E0
- D 0 - I - 0x019C2E 0C:9C1E: 2F        .byte $2F
- D 0 - I - 0x019C2F 0C:9C1F: E3        .byte $E3
- D 0 - I - 0x019C30 0C:9C20: 00        .byte $00
- D 0 - I - 0x019C31 0C:9C21: 85        .byte $85
- D 0 - I - 0x019C32 0C:9C22: 00        .byte $00
- D 0 - I - 0x019C33 0C:9C23: 82        .byte $82
- D 0 - I - 0x019C34 0C:9C24: 04        .byte $04
- D 0 - I - 0x019C35 0C:9C25: 83        .byte $83
- D 0 - I - 0x019C36 0C:9C26: 08        .byte $08
- D 0 - I - 0x019C37 0C:9C27: 09        .byte $09
- D 0 - I - 0x019C38 0C:9C28: 0A        .byte $0A
- D 0 - I - 0x019C39 0C:9C29: 0B        .byte $0B
- D 0 - I - 0x019C3A 0C:9C2A: 0C        .byte $0C
- D 0 - I - 0x019C3B 0C:9C2B: 0A        .byte $0A
- D 0 - I - 0x019C3C 0C:9C2C: 0B        .byte $0B
- D 0 - I - 0x019C3D 0C:9C2D: 0C        .byte $0C
- D 0 - I - 0x019C3E 0C:9C2E: E0        .byte $E0
- D 0 - I - 0x019C3F 0C:9C2F: 2E        .byte $2E
- D 0 - I - 0x019C40 0C:9C30: E3        .byte $E3
- D 0 - I - 0x019C41 0C:9C31: 00        .byte $00
- D 0 - I - 0x019C42 0C:9C32: A5        .byte $A5
- D 0 - I - 0x019C43 0C:9C33: 0F        .byte $0F
- D 0 - I - 0x019C44 0C:9C34: FF        .byte $FF



_off000_9C35_6A_звук_самолет:
- D 0 - I - 0x019C45 0C:9C35: 04        .byte $04
- D 0 - I - 0x019C46 0C:9C36: 42 9C     .word off_9C42_6A_04
- D 0 - I - 0x019C48 0C:9C38: 05        .byte $05
- D 0 - I - 0x019C49 0C:9C39: 60 9C     .word off_9C60_6A_05
- D 0 - I - 0x019C4B 0C:9C3B: 06        .byte $06
- D 0 - I - 0x019C4C 0C:9C3C: 41 9C     .word off_9C41_выкл
- D 0 - I - 0x019C4E 0C:9C3E: 07        .byte $07
- D 0 - I - 0x019C4F 0C:9C3F: 67 9C     .word off_9C67_6A_07
off_9C41_выкл:
- D 0 - I - 0x019C51 0C:9C41: FF        .byte $FF



off_9C42_6A_04:
loc_E8_9C42:
- D 0 - I - 0x019C52 0C:9C42: E0        .byte $E0
- D 0 - I - 0x019C53 0C:9C43: 17        .byte $17
- D 0 - I - 0x019C54 0C:9C44: E2        .byte $E2
- D 0 - I - 0x019C55 0C:9C45: 40        .byte $40
- D 0 - I - 0x019C56 0C:9C46: E3        .byte $E3
- D 0 - I - 0x019C57 0C:9C47: 0D        .byte $0D
- D 0 - I - 0x019C58 0C:9C48: AD        .byte $AD
- D 0 - I - 0x019C59 0C:9C49: E4        .byte $E4
- D 0 - I - 0x019C5A 0C:9C4A: FF        .byte $FF
- D 0 - I - 0x019C5B 0C:9C4B: 40        .byte $40
- D 0 - I - 0x019C5C 0C:9C4C: 9F        .byte $9F
- D 0 - I - 0x019C5D 0C:9C4D: E3        .byte $E3
- D 0 - I - 0x019C5E 0C:9C4E: 0E        .byte $0E
- D 0 - I - 0x019C5F 0C:9C4F: 53        .byte $53
- D 0 - I - 0x019C60 0C:9C50: E3        .byte $E3
- D 0 - I - 0x019C61 0C:9C51: 0D        .byte $0D
- D 0 - I - 0x019C62 0C:9C52: E0        .byte $E0
- D 0 - I - 0x019C63 0C:9C53: 30        .byte $30
- D 0 - I - 0x019C64 0C:9C54: 89        .byte $89
- D 0 - I - 0x019C65 0C:9C55: EB        .byte $EB
- D 0 - I - 0x019C66 0C:9C56: 1F        .byte $1F
- D 0 - I - 0x019C67 0C:9C57: 53        .byte $53
- D 0 - I - 0x019C68 0C:9C58: EC        .byte $EC
- D 0 - I - 0x019C69 0C:9C59: E3        .byte $E3
- D 0 - I - 0x019C6A 0C:9C5A: 0E        .byte $0E
- D 0 - I - 0x019C6B 0C:9C5B: EB        .byte $EB
- D 0 - I - 0x019C6C 0C:9C5C: 3F        .byte $3F
- D 0 - I - 0x019C6D 0C:9C5D: 53        .byte $53
- D 0 - I - 0x019C6E 0C:9C5E: EC        .byte $EC
- D 0 - I - 0x019C6F 0C:9C5F: FF        .byte $FF



off_9C60_6A_05:
- D 0 - I - 0x019C70 0C:9C60: E5        .byte $E5
- D 0 - I - 0x019C71 0C:9C61: 02        .byte $02
- D 0 - I - 0x019C72 0C:9C62: 85        .byte $85
- D 0 - I - 0x019C73 0C:9C63: 0C        .byte $0C
- D 0 - I - 0x019C74 0C:9C64: E8        .byte $E8
- D 0 - I - 0x019C75 0C:9C65: 42 9C     .word loc_E8_9C42



off_9C67_6A_07:
- D 0 - I - 0x019C77 0C:9C67: E0        .byte $E0
- D 0 - I - 0x019C78 0C:9C68: 17        .byte $17
- D 0 - I - 0x019C79 0C:9C69: E3        .byte $E3
- D 0 - I - 0x019C7A 0C:9C6A: 0D        .byte $0D
- D 0 - I - 0x019C7B 0C:9C6B: 96        .byte $96
- D 0 - I - 0x019C7C 0C:9C6C: 0C        .byte $0C
- D 0 - I - 0x019C7D 0C:9C6D: E3        .byte $E3
- D 0 - I - 0x019C7E 0C:9C6E: 0C        .byte $0C
- D 0 - I - 0x019C7F 0C:9C6F: 0C        .byte $0C
- D 0 - I - 0x019C80 0C:9C70: E3        .byte $E3
- D 0 - I - 0x019C81 0C:9C71: 0B        .byte $0B
- D 0 - I - 0x019C82 0C:9C72: 0C        .byte $0C
- D 0 - I - 0x019C83 0C:9C73: E3        .byte $E3
- D 0 - I - 0x019C84 0C:9C74: 0A        .byte $0A
- D 0 - I - 0x019C85 0C:9C75: 0C        .byte $0C
- D 0 - I - 0x019C86 0C:9C76: E3        .byte $E3
- D 0 - I - 0x019C87 0C:9C77: 09        .byte $09
- D 0 - I - 0x019C88 0C:9C78: 0C        .byte $0C
- D 0 - I - 0x019C89 0C:9C79: E3        .byte $E3
- D 0 - I - 0x019C8A 0C:9C7A: 08        .byte $08
- D 0 - I - 0x019C8B 0C:9C7B: 0C        .byte $0C
- D 0 - I - 0x019C8C 0C:9C7C: E3        .byte $E3
- D 0 - I - 0x019C8D 0C:9C7D: 07        .byte $07
- D 0 - I - 0x019C8E 0C:9C7E: 0C        .byte $0C
- D 0 - I - 0x019C8F 0C:9C7F: E3        .byte $E3
- D 0 - I - 0x019C90 0C:9C80: 06        .byte $06
- D 0 - I - 0x019C91 0C:9C81: 0C        .byte $0C
- D 0 - I - 0x019C92 0C:9C82: E3        .byte $E3
- D 0 - I - 0x019C93 0C:9C83: 05        .byte $05
- D 0 - I - 0x019C94 0C:9C84: A6        .byte $A6
- D 0 - I - 0x019C95 0C:9C85: 0C        .byte $0C
- D 0 - I - 0x019C96 0C:9C86: 0C        .byte $0C
- D 0 - I - 0x019C97 0C:9C87: 9F        .byte $9F
- D 0 - I - 0x019C98 0C:9C88: 0C        .byte $0C
- D 0 - I - 0x019C99 0C:9C89: E3        .byte $E3
- D 0 - I - 0x019C9A 0C:9C8A: 06        .byte $06
- D 0 - I - 0x019C9B 0C:9C8B: 94        .byte $94
- D 0 - I - 0x019C9C 0C:9C8C: 0C        .byte $0C
- D 0 - I - 0x019C9D 0C:9C8D: 9A        .byte $9A
- D 0 - I - 0x019C9E 0C:9C8E: 0C        .byte $0C
- D 0 - I - 0x019C9F 0C:9C8F: E3        .byte $E3
- D 0 - I - 0x019CA0 0C:9C90: 07        .byte $07
- D 0 - I - 0x019CA1 0C:9C91: 9D        .byte $9D
- D 0 - I - 0x019CA2 0C:9C92: 0C        .byte $0C
- D 0 - I - 0x019CA3 0C:9C93: 98        .byte $98
- D 0 - I - 0x019CA4 0C:9C94: 0C        .byte $0C
- D 0 - I - 0x019CA5 0C:9C95: E3        .byte $E3
- D 0 - I - 0x019CA6 0C:9C96: 08        .byte $08
- D 0 - I - 0x019CA7 0C:9C97: 0C        .byte $0C
- D 0 - I - 0x019CA8 0C:9C98: 9D        .byte $9D
- D 0 - I - 0x019CA9 0C:9C99: 0C        .byte $0C
- D 0 - I - 0x019CAA 0C:9C9A: E3        .byte $E3
- D 0 - I - 0x019CAB 0C:9C9B: 09        .byte $09
- D 0 - I - 0x019CAC 0C:9C9C: 0C        .byte $0C
- D 0 - I - 0x019CAD 0C:9C9D: 98        .byte $98
- D 0 - I - 0x019CAE 0C:9C9E: 0C        .byte $0C
- D 0 - I - 0x019CAF 0C:9C9F: E3        .byte $E3
- D 0 - I - 0x019CB0 0C:9CA0: 0A        .byte $0A
- D 0 - I - 0x019CB1 0C:9CA1: 94        .byte $94
- D 0 - I - 0x019CB2 0C:9CA2: 0C        .byte $0C
- D 0 - I - 0x019CB3 0C:9CA3: 9E        .byte $9E
- D 0 - I - 0x019CB4 0C:9CA4: 0C        .byte $0C
- D 0 - I - 0x019CB5 0C:9CA5: E3        .byte $E3
- D 0 - I - 0x019CB6 0C:9CA6: 0B        .byte $0B
- D 0 - I - 0x019CB7 0C:9CA7: 0C        .byte $0C
- D 0 - I - 0x019CB8 0C:9CA8: 94        .byte $94
- D 0 - I - 0x019CB9 0C:9CA9: 0C        .byte $0C
- D 0 - I - 0x019CBA 0C:9CAA: E3        .byte $E3
- D 0 - I - 0x019CBB 0C:9CAB: 0C        .byte $0C
- D 0 - I - 0x019CBC 0C:9CAC: 9F        .byte $9F
- D 0 - I - 0x019CBD 0C:9CAD: 0C        .byte $0C
- D 0 - I - 0x019CBE 0C:9CAE: E3        .byte $E3
- D 0 - I - 0x019CBF 0C:9CAF: 0D        .byte $0D
- D 0 - I - 0x019CC0 0C:9CB0: 0C        .byte $0C
- D 0 - I - 0x019CC1 0C:9CB1: E3        .byte $E3
- D 0 - I - 0x019CC2 0C:9CB2: 0E        .byte $0E
- D 0 - I - 0x019CC3 0C:9CB3: 0C        .byte $0C
- D 0 - I - 0x019CC4 0C:9CB4: FF        .byte $FF



_off000_9CB5_70:
- D 0 - I - 0x019CC5 0C:9CB5: 04        .byte $04
- D 0 - I - 0x019CC6 0C:9CB6: C1 9C     .word off_9CC1_выкл
- D 0 - I - 0x019CC8 0C:9CB8: 05        .byte $05
- D 0 - I - 0x019CC9 0C:9CB9: C1 9C     .word off_9CC1_выкл
- D 0 - I - 0x019CCB 0C:9CBB: 06        .byte $06
- D 0 - I - 0x019CCC 0C:9CBC: C1 9C     .word off_9CC1_выкл
- D 0 - I - 0x019CCE 0C:9CBE: 07        .byte $07
- D 0 - I - 0x019CCF 0C:9CBF: C2 9C     .word off_9CC2_70_07
off_9CC1_выкл:
- D 0 - I - 0x019CD1 0C:9CC1: FF        .byte $FF



off_9CC2_70_07:
- D 0 - I - 0x019CD2 0C:9CC2: E0        .byte $E0
- D 0 - I - 0x019CD3 0C:9CC3: 17        .byte $17
- D 0 - I - 0x019CD4 0C:9CC4: E3        .byte $E3
- D 0 - I - 0x019CD5 0C:9CC5: 04        .byte $04
loc_E8_9CC6:
- D 0 - I - 0x019CD6 0C:9CC6: 90        .byte $90
- D 0 - I - 0x019CD7 0C:9CC7: 03        .byte $03
- D 0 - I - 0x019CD8 0C:9CC8: E8        .byte $E8
- D 0 - I - 0x019CD9 0C:9CC9: C6 9C     .word loc_E8_9CC6



_off000_9CCB_64_звук_отскок_мяча_от_земли:
- D 0 - I - 0x019CDB 0C:9CCB: 00        .byte $00
- D 0 - I - 0x019CDC 0C:9CCC: D4 9C     .word off_9CD4_выкл
- D 0 - I - 0x019CDE 0C:9CCE: 01        .byte $01
- D 0 - I - 0x019CDF 0C:9CCF: D5 9C     .word off_9CD5_64_01
- D 0 - I - 0x019CE1 0C:9CD1: 03        .byte $03
- D 0 - I - 0x019CE2 0C:9CD2: D4 9C     .word off_9CD4_выкл
off_9CD4_выкл:
- D 0 - I - 0x019CE4 0C:9CD4: FF        .byte $FF



off_9CD5_64_01:
- D 0 - I - 0x019CE5 0C:9CD5: E0        .byte $E0
- D 0 - I - 0x019CE6 0C:9CD6: 12        .byte $12
- D 0 - I - 0x019CE7 0C:9CD7: E2        .byte $E2
- D 0 - I - 0x019CE8 0C:9CD8: 80        .byte $80
- D 0 - I - 0x019CE9 0C:9CD9: E3        .byte $E3
- D 0 - I - 0x019CEA 0C:9CDA: 00        .byte $00
- D 0 - I - 0x019CEB 0C:9CDB: 84        .byte $84
- D 0 - I - 0x019CEC 0C:9CDC: E4        .byte $E4
- D 0 - I - 0x019CED 0C:9CDD: 85        .byte $85
- D 0 - I - 0x019CEE 0C:9CDE: 10        .byte $10
- D 0 - I - 0x019CEF 0C:9CDF: 83        .byte $83
- D 0 - I - 0x019CF0 0C:9CE0: E4        .byte $E4
- D 0 - I - 0x019CF1 0C:9CE1: 8D        .byte $8D
- D 0 - I - 0x019CF2 0C:9CE2: 11        .byte $11
- D 0 - I - 0x019CF3 0C:9CE3: E3        .byte $E3
- D 0 - I - 0x019CF4 0C:9CE4: 0A        .byte $0A
- D 0 - I - 0x019CF5 0C:9CE5: 84        .byte $84
- D 0 - I - 0x019CF6 0C:9CE6: E4        .byte $E4
- D 0 - I - 0x019CF7 0C:9CE7: 85        .byte $85
- D 0 - I - 0x019CF8 0C:9CE8: 10        .byte $10
- D 0 - I - 0x019CF9 0C:9CE9: 83        .byte $83
- D 0 - I - 0x019CFA 0C:9CEA: E4        .byte $E4
- D 0 - I - 0x019CFB 0C:9CEB: 8D        .byte $8D
- D 0 - I - 0x019CFC 0C:9CEC: 11        .byte $11
- D 0 - I - 0x019CFD 0C:9CED: FF        .byte $FF



_off000_9CEE_25_прыжок:
- D 0 - I - 0x019CFE 0C:9CEE: 00        .byte $00
- D 0 - I - 0x019CFF 0C:9CEF: F7 9C     .word off_9CF7_выкл
- D 0 - I - 0x019D01 0C:9CF1: 01        .byte $01
- D 0 - I - 0x019D02 0C:9CF2: F7 9C     .word off_9CF7_выкл
- D 0 - I - 0x019D04 0C:9CF4: 03        .byte $03
- D 0 - I - 0x019D05 0C:9CF5: F8 9C     .word off_9CF8_25_03
off_9CF7_выкл:
- D 0 - I - 0x019D07 0C:9CF7: FF        .byte $FF



off_9CF8_25_03:
- D 0 - I - 0x019D08 0C:9CF8: E0        .byte $E0
- D 0 - I - 0x019D09 0C:9CF9: 11        .byte $11
- D 0 - I - 0x019D0A 0C:9CFA: E3        .byte $E3
- D 0 - I - 0x019D0B 0C:9CFB: 00        .byte $00
- D 0 - I - 0x019D0C 0C:9CFC: 83        .byte $83
- D 0 - I - 0x019D0D 0C:9CFD: 0A        .byte $0A
- D 0 - I - 0x019D0E 0C:9CFE: 82        .byte $82
- D 0 - I - 0x019D0F 0C:9CFF: 0E        .byte $0E
- D 0 - I - 0x019D10 0C:9D00: 90        .byte $90
- D 0 - I - 0x019D11 0C:9D01: F3        .byte $F3
- D 0 - I - 0x019D12 0C:9D02: ED        .byte $ED
- D 0 - I - 0x019D13 0C:9D03: 02        .byte $02
- D 0 - I - 0x019D14 0C:9D04: 05        .byte $05
- D 0 - I - 0x019D15 0C:9D05: F4        .byte $F4
- D 0 - I - 0x019D16 0C:9D06: EF        .byte $EF
- D 0 - I - 0x019D17 0C:9D07: FF        .byte $FF



_off000_9D08_6D:
- D 0 - I - 0x019D18 0C:9D08: 00        .byte $00
- D 0 - I - 0x019D19 0C:9D09: 11 9D     .word off_9D11_выкл
- D 0 - I - 0x019D1B 0C:9D0B: 01        .byte $01
- D 0 - I - 0x019D1C 0C:9D0C: 12 9D     .word off_9D12_6D_01
- D 0 - I - 0x019D1E 0C:9D0E: 03        .byte $03
- D 0 - I - 0x019D1F 0C:9D0F: 36 9D     .word off_9D36_6D_03
off_9D11_выкл:
- D 0 - I - 0x019D21 0C:9D11: FF        .byte $FF



off_9D12_6D_01:
- D 0 - I - 0x019D22 0C:9D12: E0        .byte $E0
- D 0 - I - 0x019D23 0C:9D13: 11        .byte $11
- D 0 - I - 0x019D24 0C:9D14: E2        .byte $E2
- D 0 - I - 0x019D25 0C:9D15: 80        .byte $80
- D 0 - I - 0x019D26 0C:9D16: E3        .byte $E3
- D 0 - I - 0x019D27 0C:9D17: 00        .byte $00
- D 0 - I - 0x019D28 0C:9D18: 88        .byte $88
- D 0 - I - 0x019D29 0C:9D19: E4        .byte $E4
- D 0 - I - 0x019D2A 0C:9D1A: 85        .byte $85
- D 0 - I - 0x019D2B 0C:9D1B: 15        .byte $15
- D 0 - I - 0x019D2C 0C:9D1C: E3        .byte $E3
- D 0 - I - 0x019D2D 0C:9D1D: 04        .byte $04
- D 0 - I - 0x019D2E 0C:9D1E: E4        .byte $E4
- D 0 - I - 0x019D2F 0C:9D1F: 85        .byte $85
- D 0 - I - 0x019D30 0C:9D20: 15        .byte $15
- D 0 - I - 0x019D31 0C:9D21: E3        .byte $E3
- D 0 - I - 0x019D32 0C:9D22: 08        .byte $08
- D 0 - I - 0x019D33 0C:9D23: E4        .byte $E4
- D 0 - I - 0x019D34 0C:9D24: 85        .byte $85
- D 0 - I - 0x019D35 0C:9D25: 15        .byte $15
- D 0 - I - 0x019D36 0C:9D26: E3        .byte $E3
- D 0 - I - 0x019D37 0C:9D27: 0A        .byte $0A
- D 0 - I - 0x019D38 0C:9D28: E4        .byte $E4
- D 0 - I - 0x019D39 0C:9D29: 85        .byte $85
- D 0 - I - 0x019D3A 0C:9D2A: 15        .byte $15
- D 0 - I - 0x019D3B 0C:9D2B: E3        .byte $E3
- D 0 - I - 0x019D3C 0C:9D2C: 0C        .byte $0C
- D 0 - I - 0x019D3D 0C:9D2D: E4        .byte $E4
- D 0 - I - 0x019D3E 0C:9D2E: 85        .byte $85
- D 0 - I - 0x019D3F 0C:9D2F: 15        .byte $15
- D 0 - I - 0x019D40 0C:9D30: E3        .byte $E3
- D 0 - I - 0x019D41 0C:9D31: 0E        .byte $0E
- D 0 - I - 0x019D42 0C:9D32: E4        .byte $E4
- D 0 - I - 0x019D43 0C:9D33: 85        .byte $85
- D 0 - I - 0x019D44 0C:9D34: 15        .byte $15
- D 0 - I - 0x019D45 0C:9D35: FF        .byte $FF



off_9D36_6D_03:
- D 0 - I - 0x019D46 0C:9D36: E0        .byte $E0
- D 0 - I - 0x019D47 0C:9D37: 14        .byte $14
- D 0 - I - 0x019D48 0C:9D38: E3        .byte $E3
- D 0 - I - 0x019D49 0C:9D39: 00        .byte $00
- D 0 - I - 0x019D4A 0C:9D3A: 81        .byte $81
- D 0 - I - 0x019D4B 0C:9D3B: 0F        .byte $0F
- D 0 - I - 0x019D4C 0C:9D3C: 05        .byte $05
- D 0 - I - 0x019D4D 0C:9D3D: 0E        .byte $0E
- D 0 - I - 0x019D4E 0C:9D3E: 05        .byte $05
- D 0 - I - 0x019D4F 0C:9D3F: 0D        .byte $0D
- D 0 - I - 0x019D50 0C:9D40: 05        .byte $05
- D 0 - I - 0x019D51 0C:9D41: 06        .byte $06
- D 0 - I - 0x019D52 0C:9D42: 07        .byte $07
- D 0 - I - 0x019D53 0C:9D43: 08        .byte $08
- D 0 - I - 0x019D54 0C:9D44: 09        .byte $09
- D 0 - I - 0x019D55 0C:9D45: 0A        .byte $0A
- D 0 - I - 0x019D56 0C:9D46: 0B        .byte $0B
- D 0 - I - 0x019D57 0C:9D47: 0C        .byte $0C
- D 0 - I - 0x019D58 0C:9D48: 0B        .byte $0B
- D 0 - I - 0x019D59 0C:9D49: 87        .byte $87
- D 0 - I - 0x019D5A 0C:9D4A: 0A        .byte $0A
- D 0 - I - 0x019D5B 0C:9D4B: E3        .byte $E3
- D 0 - I - 0x019D5C 0C:9D4C: 08        .byte $08
- D 0 - I - 0x019D5D 0C:9D4D: 0A        .byte $0A
- D 0 - I - 0x019D5E 0C:9D4E: E3        .byte $E3
- D 0 - I - 0x019D5F 0C:9D4F: 0A        .byte $0A
- D 0 - I - 0x019D60 0C:9D50: 0A        .byte $0A
- D 0 - I - 0x019D61 0C:9D51: E3        .byte $E3
- D 0 - I - 0x019D62 0C:9D52: 0C        .byte $0C
- D 0 - I - 0x019D63 0C:9D53: 0A        .byte $0A
- D 0 - I - 0x019D64 0C:9D54: E3        .byte $E3
- D 0 - I - 0x019D65 0C:9D55: 0E        .byte $0E
- D 0 - I - 0x019D66 0C:9D56: 0A        .byte $0A
- D 0 - I - 0x019D67 0C:9D57: FF        .byte $FF



_off000_9D58_26_разгон_перед_подкатом:
- D 0 - I - 0x019D68 0C:9D58: 00        .byte $00
- D 0 - I - 0x019D69 0C:9D59: 61 9D     .word off_9D61_выкл
- D 0 - I - 0x019D6B 0C:9D5B: 01        .byte $01
- D 0 - I - 0x019D6C 0C:9D5C: 61 9D     .word off_9D61_выкл
- D 0 - I - 0x019D6E 0C:9D5E: 03        .byte $03
- D 0 - I - 0x019D6F 0C:9D5F: 62 9D     .word off_9D62_26_03
off_9D61_выкл:
- D 0 - I - 0x019D71 0C:9D61: FF        .byte $FF



off_9D62_26_03:
- D 0 - I - 0x019D72 0C:9D62: E0        .byte $E0
- D 0 - I - 0x019D73 0C:9D63: 12        .byte $12
- D 0 - I - 0x019D74 0C:9D64: E3        .byte $E3
- D 0 - I - 0x019D75 0C:9D65: 00        .byte $00
- D 0 - I - 0x019D76 0C:9D66: 81        .byte $81
- D 0 - I - 0x019D77 0C:9D67: 0C        .byte $0C
- D 0 - I - 0x019D78 0C:9D68: 0D        .byte $0D
- D 0 - I - 0x019D79 0C:9D69: EB        .byte $EB
- D 0 - I - 0x019D7A 0C:9D6A: 08        .byte $08
- D 0 - I - 0x019D7B 0C:9D6B: 08        .byte $08
- D 0 - I - 0x019D7C 0C:9D6C: 0D        .byte $0D
- D 0 - I - 0x019D7D 0C:9D6D: 0A        .byte $0A
- D 0 - I - 0x019D7E 0C:9D6E: 00        .byte $00
- D 0 - I - 0x019D7F 0C:9D6F: 10        .byte $10
- D 0 - I - 0x019D80 0C:9D70: 10        .byte $10
- D 0 - I - 0x019D81 0C:9D71: EC        .byte $EC
- D 0 - I - 0x019D82 0C:9D72: FF        .byte $FF



_off000_9D73_27_силовой_дриблинг:
- D 0 - I - 0x019D83 0C:9D73: 00        .byte $00
- D 0 - I - 0x019D84 0C:9D74: 7D 9D     .word off_9D7D_27_00
- D 0 - I - 0x019D86 0C:9D76: 01        .byte $01
- D 0 - I - 0x019D87 0C:9D77: A8 9D     .word off_9DA8_27_01
- D 0 - I - 0x019D89 0C:9D79: 03        .byte $03
- D 0 - I - 0x019D8A 0C:9D7A: D3 9D     .word off_9DD3_27_03
- D 0 - I - 0x019D8C 0C:9D7C: FF        .byte $FF



off_9D7D_27_00:
- D 0 - I - 0x019D8D 0C:9D7D: E0        .byte $E0
- D 0 - I - 0x019D8E 0C:9D7E: 00        .byte $00
- D 0 - I - 0x019D8F 0C:9D7F: 82        .byte $82
- D 0 - I - 0x019D90 0C:9D80: 0C        .byte $0C
- D 0 - I - 0x019D91 0C:9D81: E2        .byte $E2
- D 0 - I - 0x019D92 0C:9D82: C0        .byte $C0
- D 0 - I - 0x019D93 0C:9D83: E3        .byte $E3
- D 0 - I - 0x019D94 0C:9D84: 05        .byte $05
- D 0 - I - 0x019D95 0C:9D85: EB        .byte $EB
- D 0 - I - 0x019D96 0C:9D86: 03        .byte $03
- D 0 - I - 0x019D97 0C:9D87: 81        .byte $81
- D 0 - I - 0x019D98 0C:9D88: 0A        .byte $0A
- D 0 - I - 0x019D99 0C:9D89: 00        .byte $00
- D 0 - I - 0x019D9A 0C:9D8A: 0B        .byte $0B
- D 0 - I - 0x019D9B 0C:9D8B: 01        .byte $01
- D 0 - I - 0x019D9C 0C:9D8C: 82        .byte $82
- D 0 - I - 0x019D9D 0C:9D8D: 0C        .byte $0C
- D 0 - I - 0x019D9E 0C:9D8E: EC        .byte $EC
- D 0 - I - 0x019D9F 0C:9D8F: E3        .byte $E3
- D 0 - I - 0x019DA0 0C:9D90: 03        .byte $03
- D 0 - I - 0x019DA1 0C:9D91: EB        .byte $EB
- D 0 - I - 0x019DA2 0C:9D92: 06        .byte $06
- D 0 - I - 0x019DA3 0C:9D93: 81        .byte $81
- D 0 - I - 0x019DA4 0C:9D94: 0A        .byte $0A
- D 0 - I - 0x019DA5 0C:9D95: 00        .byte $00
- D 0 - I - 0x019DA6 0C:9D96: 0B        .byte $0B
- D 0 - I - 0x019DA7 0C:9D97: 01        .byte $01
- D 0 - I - 0x019DA8 0C:9D98: 82        .byte $82
- D 0 - I - 0x019DA9 0C:9D99: 0C        .byte $0C
- D 0 - I - 0x019DAA 0C:9D9A: EC        .byte $EC
- D 0 - I - 0x019DAB 0C:9D9B: E3        .byte $E3
- D 0 - I - 0x019DAC 0C:9D9C: 01        .byte $01
- D 0 - I - 0x019DAD 0C:9D9D: EB        .byte $EB
- D 0 - I - 0x019DAE 0C:9D9E: 0A        .byte $0A
- D 0 - I - 0x019DAF 0C:9D9F: 81        .byte $81
- D 0 - I - 0x019DB0 0C:9DA0: 0A        .byte $0A
- D 0 - I - 0x019DB1 0C:9DA1: 00        .byte $00
- D 0 - I - 0x019DB2 0C:9DA2: 0B        .byte $0B
- D 0 - I - 0x019DB3 0C:9DA3: 01        .byte $01
- D 0 - I - 0x019DB4 0C:9DA4: 82        .byte $82
- D 0 - I - 0x019DB5 0C:9DA5: 0C        .byte $0C
- D 0 - I - 0x019DB6 0C:9DA6: EC        .byte $EC
- D 0 - I - 0x019DB7 0C:9DA7: FF        .byte $FF



off_9DA8_27_01:
- D 0 - I - 0x019DB8 0C:9DA8: E0        .byte $E0
- D 0 - I - 0x019DB9 0C:9DA9: 00        .byte $00
- D 0 - I - 0x019DBA 0C:9DAA: E2        .byte $E2
- D 0 - I - 0x019DBB 0C:9DAB: C0        .byte $C0
- D 0 - I - 0x019DBC 0C:9DAC: 82        .byte $82
- D 0 - I - 0x019DBD 0C:9DAD: 0C        .byte $0C
- D 0 - I - 0x019DBE 0C:9DAE: E3        .byte $E3
- D 0 - I - 0x019DBF 0C:9DAF: 05        .byte $05
- D 0 - I - 0x019DC0 0C:9DB0: EB        .byte $EB
- D 0 - I - 0x019DC1 0C:9DB1: 03        .byte $03
- D 0 - I - 0x019DC2 0C:9DB2: 81        .byte $81
- D 0 - I - 0x019DC3 0C:9DB3: 07        .byte $07
- D 0 - I - 0x019DC4 0C:9DB4: 06        .byte $06
- D 0 - I - 0x019DC5 0C:9DB5: 05        .byte $05
- D 0 - I - 0x019DC6 0C:9DB6: 04        .byte $04
- D 0 - I - 0x019DC7 0C:9DB7: 03        .byte $03
- D 0 - I - 0x019DC8 0C:9DB8: 0C        .byte $0C
- D 0 - I - 0x019DC9 0C:9DB9: EC        .byte $EC
- D 0 - I - 0x019DCA 0C:9DBA: E3        .byte $E3
- D 0 - I - 0x019DCB 0C:9DBB: 03        .byte $03
- D 0 - I - 0x019DCC 0C:9DBC: EB        .byte $EB
- D 0 - I - 0x019DCD 0C:9DBD: 06        .byte $06
- D 0 - I - 0x019DCE 0C:9DBE: 81        .byte $81
- D 0 - I - 0x019DCF 0C:9DBF: 07        .byte $07
- D 0 - I - 0x019DD0 0C:9DC0: 06        .byte $06
- D 0 - I - 0x019DD1 0C:9DC1: 05        .byte $05
- D 0 - I - 0x019DD2 0C:9DC2: 04        .byte $04
- D 0 - I - 0x019DD3 0C:9DC3: 03        .byte $03
- D 0 - I - 0x019DD4 0C:9DC4: 0C        .byte $0C
- D 0 - I - 0x019DD5 0C:9DC5: EC        .byte $EC
- D 0 - I - 0x019DD6 0C:9DC6: E3        .byte $E3
- D 0 - I - 0x019DD7 0C:9DC7: 01        .byte $01
- D 0 - I - 0x019DD8 0C:9DC8: EB        .byte $EB
- D 0 - I - 0x019DD9 0C:9DC9: 0A        .byte $0A
- D 0 - I - 0x019DDA 0C:9DCA: 81        .byte $81
- D 0 - I - 0x019DDB 0C:9DCB: 07        .byte $07
- D 0 - I - 0x019DDC 0C:9DCC: 06        .byte $06
- D 0 - I - 0x019DDD 0C:9DCD: 05        .byte $05
- D 0 - I - 0x019DDE 0C:9DCE: 04        .byte $04
- D 0 - I - 0x019DDF 0C:9DCF: 03        .byte $03
- D 0 - I - 0x019DE0 0C:9DD0: 0C        .byte $0C
- D 0 - I - 0x019DE1 0C:9DD1: EC        .byte $EC
- D 0 - I - 0x019DE2 0C:9DD2: FF        .byte $FF



off_9DD3_27_03:
- D 0 - I - 0x019DE3 0C:9DD3: E0        .byte $E0
- D 0 - I - 0x019DE4 0C:9DD4: 12        .byte $12
- D 0 - I - 0x019DE5 0C:9DD5: E3        .byte $E3
- D 0 - I - 0x019DE6 0C:9DD6: 00        .byte $00
- D 0 - I - 0x019DE7 0C:9DD7: 81        .byte $81
- D 0 - I - 0x019DE8 0C:9DD8: 0C        .byte $0C
- D 0 - I - 0x019DE9 0C:9DD9: 0D        .byte $0D
- D 0 - I - 0x019DEA 0C:9DDA: EB        .byte $EB
- D 0 - I - 0x019DEB 0C:9DDB: 12        .byte $12
- D 0 - I - 0x019DEC 0C:9DDC: 08        .byte $08
- D 0 - I - 0x019DED 0C:9DDD: 0D        .byte $0D
- D 0 - I - 0x019DEE 0C:9DDE: 0A        .byte $0A
- D 0 - I - 0x019DEF 0C:9DDF: 00        .byte $00
- D 0 - I - 0x019DF0 0C:9DE0: 10        .byte $10
- D 0 - I - 0x019DF1 0C:9DE1: 10        .byte $10
- D 0 - I - 0x019DF2 0C:9DE2: EC        .byte $EC
- D 0 - I - 0x019DF3 0C:9DE3: FF        .byte $FF



_off000_9DE4_15_замах_мацуямы:
- D 0 - I - 0x019DF4 0C:9DE4: 00        .byte $00
- D 0 - I - 0x019DF5 0C:9DE5: ED 9D     .word off_9DED_выкл
- D 0 - I - 0x019DF7 0C:9DE7: 01        .byte $01
- D 0 - I - 0x019DF8 0C:9DE8: ED 9D     .word off_9DED_выкл
- D 0 - I - 0x019DFA 0C:9DEA: 03        .byte $03
- D 0 - I - 0x019DFB 0C:9DEB: EE 9D     .word off_9DEE_15_03
off_9DED_выкл:
- D 0 - I - 0x019DFD 0C:9DED: FF        .byte $FF



off_9DEE_15_03:
- D 0 - I - 0x019DFE 0C:9DEE: E0        .byte $E0
- D 0 - I - 0x019DFF 0C:9DEF: 14        .byte $14
- D 0 - I - 0x019E00 0C:9DF0: E3        .byte $E3
- D 0 - I - 0x019E01 0C:9DF1: 00        .byte $00
- D 0 - I - 0x019E02 0C:9DF2: 8A        .byte $8A
- D 0 - I - 0x019E03 0C:9DF3: 01        .byte $01
- D 0 - I - 0x019E04 0C:9DF4: 89        .byte $89
- D 0 - I - 0x019E05 0C:9DF5: 02        .byte $02
- D 0 - I - 0x019E06 0C:9DF6: 88        .byte $88
- D 0 - I - 0x019E07 0C:9DF7: 03        .byte $03
- D 0 - I - 0x019E08 0C:9DF8: 87        .byte $87
- D 0 - I - 0x019E09 0C:9DF9: 04        .byte $04
- D 0 - I - 0x019E0A 0C:9DFA: 88        .byte $88
- D 0 - I - 0x019E0B 0C:9DFB: 05        .byte $05
- D 0 - I - 0x019E0C 0C:9DFC: FF        .byte $FF



_off000_9DFD_16_замах_цубасы:
- D 0 - I - 0x019E0D 0C:9DFD: 00        .byte $00
- D 0 - I - 0x019E0E 0C:9DFE: 06 9E     .word off_9E06_выкл
- D 0 - I - 0x019E10 0C:9E00: 01        .byte $01
- D 0 - I - 0x019E11 0C:9E01: 06 9E     .word off_9E06_выкл
- D 0 - I - 0x019E13 0C:9E03: 03        .byte $03
- D 0 - I - 0x019E14 0C:9E04: 07 9E     .word off_9E07_16_03
off_9E06_выкл:
- D 0 - I - 0x019E16 0C:9E06: FF        .byte $FF



off_9E07_16_03:
- D 0 - I - 0x019E17 0C:9E07: E0        .byte $E0
- D 0 - I - 0x019E18 0C:9E08: 17        .byte $17
- D 0 - I - 0x019E19 0C:9E09: E3        .byte $E3
- D 0 - I - 0x019E1A 0C:9E0A: 00        .byte $00
- D 0 - I - 0x019E1B 0C:9E0B: 81        .byte $81
- D 0 - I - 0x019E1C 0C:9E0C: 01        .byte $01
- D 0 - I - 0x019E1D 0C:9E0D: 04        .byte $04
- D 0 - I - 0x019E1E 0C:9E0E: 01        .byte $01
- D 0 - I - 0x019E1F 0C:9E0F: 82        .byte $82
- D 0 - I - 0x019E20 0C:9E10: 02        .byte $02
- D 0 - I - 0x019E21 0C:9E11: 05        .byte $05
- D 0 - I - 0x019E22 0C:9E12: 02        .byte $02
- D 0 - I - 0x019E23 0C:9E13: 83        .byte $83
- D 0 - I - 0x019E24 0C:9E14: 03        .byte $03
- D 0 - I - 0x019E25 0C:9E15: 06        .byte $06
- D 0 - I - 0x019E26 0C:9E16: 03        .byte $03
- D 0 - I - 0x019E27 0C:9E17: 04        .byte $04
- D 0 - I - 0x019E28 0C:9E18: 07        .byte $07
- D 0 - I - 0x019E29 0C:9E19: 04        .byte $04
- D 0 - I - 0x019E2A 0C:9E1A: 05        .byte $05
- D 0 - I - 0x019E2B 0C:9E1B: 08        .byte $08
- D 0 - I - 0x019E2C 0C:9E1C: 05        .byte $05
- D 0 - I - 0x019E2D 0C:9E1D: 06        .byte $06
- D 0 - I - 0x019E2E 0C:9E1E: 09        .byte $09
- D 0 - I - 0x019E2F 0C:9E1F: 06        .byte $06
- D 0 - I - 0x019E30 0C:9E20: FF        .byte $FF



_off000_9E21_6F_мелодия_новый_уровень:
- D 0 - I - 0x019E31 0C:9E21: 00        .byte $00
- D 0 - I - 0x019E32 0C:9E22: 2B 9E     .word off_9E2B_6F_00
- D 0 - I - 0x019E34 0C:9E24: 01        .byte $01
- D 0 - I - 0x019E35 0C:9E25: 37 9E     .word off_9E37_6F_01
- D 0 - I - 0x019E37 0C:9E27: 03        .byte $03
- D 0 - I - 0x019E38 0C:9E28: 2A 9E     .word off_9E2A_выкл
off_9E2A_выкл:
- D 0 - I - 0x019E3A 0C:9E2A: FF        .byte $FF



off_9E2B_6F_00:
- D 0 - I - 0x019E3B 0C:9E2B: E3        .byte $E3
- D 0 - I - 0x019E3C 0C:9E2C: 00        .byte $00
- D 0 - I - 0x019E3D 0C:9E2D: E0        .byte $E0
- D 0 - I - 0x019E3E 0C:9E2E: 11        .byte $11
- D 0 - I - 0x019E3F 0C:9E2F: E2        .byte $E2
- D 0 - I - 0x019E40 0C:9E30: 80        .byte $80
- D 0 - I - 0x019E41 0C:9E31: E9        .byte $E9
- D 0 - I - 0x019E42 0C:9E32: 4C 9E     .word sub_E9_9E4C
- D 0 - I - 0x019E44 0C:9E34: 90        .byte $90
- D 0 - I - 0x019E45 0C:9E35: 50        .byte $50
- D 0 - I - 0x019E46 0C:9E36: FF        .byte $FF



off_9E37_6F_01:
- D 0 - I - 0x019E47 0C:9E37: E0        .byte $E0
- D 0 - I - 0x019E48 0C:9E38: 12        .byte $12
- D 0 - I - 0x019E49 0C:9E39: E2        .byte $E2
- D 0 - I - 0x019E4A 0C:9E3A: 80        .byte $80
- D 0 - I - 0x019E4B 0C:9E3B: E3        .byte $E3
- D 0 - I - 0x019E4C 0C:9E3C: 05        .byte $05
- D 0 - I - 0x019E4D 0C:9E3D: E5        .byte $E5
- D 0 - I - 0x019E4E 0C:9E3E: 01        .byte $01
- D 0 - I - 0x019E4F 0C:9E3F: 84        .byte $84
- D 0 - I - 0x019E50 0C:9E40: 0C        .byte $0C
- D 0 - I - 0x019E51 0C:9E41: E9        .byte $E9
- D 0 - I - 0x019E52 0C:9E42: 4C 9E     .word sub_E9_9E4C
- D 0 - I - 0x019E54 0C:9E44: E5        .byte $E5
- D 0 - I - 0x019E55 0C:9E45: 00        .byte $00
- D 0 - I - 0x019E56 0C:9E46: ED        .byte $ED
- D 0 - I - 0x019E57 0C:9E47: 01        .byte $01
- D 0 - I - 0x019E58 0C:9E48: 90        .byte $90
- D 0 - I - 0x019E59 0C:9E49: 50        .byte $50
- D 0 - I - 0x019E5A 0C:9E4A: EF        .byte $EF
- D 0 - I - 0x019E5B 0C:9E4B: FF        .byte $FF



sub_E9_9E4C:
- D 0 - I - 0x019E5C 0C:9E4C: 87        .byte $87
- D 0 - I - 0x019E5D 0C:9E4D: 30        .byte $30
- D 0 - I - 0x019E5E 0C:9E4E: 32        .byte $32
- D 0 - I - 0x019E5F 0C:9E4F: 34        .byte $34
- D 0 - I - 0x019E60 0C:9E50: 84        .byte $84
- D 0 - I - 0x019E61 0C:9E51: 37        .byte $37
- D 0 - I - 0x019E62 0C:9E52: 34        .byte $34
- D 0 - I - 0x019E63 0C:9E53: 30        .byte $30
- D 0 - I - 0x019E64 0C:9E54: 86        .byte $86
- D 0 - I - 0x019E65 0C:9E55: 34        .byte $34
- D 0 - I - 0x019E66 0C:9E56: 37        .byte $37
- D 0 - I - 0x019E67 0C:9E57: 40        .byte $40
- D 0 - I - 0x019E68 0C:9E58: 44        .byte $44
- D 0 - I - 0x019E69 0C:9E59: 84        .byte $84
- D 0 - I - 0x019E6A 0C:9E5A: 40        .byte $40
- D 0 - I - 0x019E6B 0C:9E5B: 37        .byte $37
- D 0 - I - 0x019E6C 0C:9E5C: EA        .byte $EA



_off000_9E5D_6E_звук_часы_тикают:
- D 0 - I - 0x019E6D 0C:9E5D: 00        .byte $00
- D 0 - I - 0x019E6E 0C:9E5E: 67 9E     .word off_9E67_6E_00
- D 0 - I - 0x019E70 0C:9E60: 01        .byte $01
- D 0 - I - 0x019E71 0C:9E61: 72 9E     .word off_9E72_6E_01
- D 0 - I - 0x019E73 0C:9E63: 03        .byte $03
- D 0 - I - 0x019E74 0C:9E64: 66 9E     .word off_9E66_выкл
off_9E66_выкл:
- D 0 - I - 0x019E76 0C:9E66: FF        .byte $FF



off_9E67_6E_00:
- D 0 - I - 0x019E77 0C:9E67: E3        .byte $E3
- D 0 - I - 0x019E78 0C:9E68: 00        .byte $00
- D 0 - I - 0x019E79 0C:9E69: E2        .byte $E2
- D 0 - I - 0x019E7A 0C:9E6A: 80        .byte $80
- D 0 - I - 0x019E7B 0C:9E6B: E0        .byte $E0
- D 0 - I - 0x019E7C 0C:9E6C: 13        .byte $13
- D 0 - I - 0x019E7D 0C:9E6D: E5        .byte $E5
- D 0 - I - 0x019E7E 0C:9E6E: 81        .byte $81
- D 0 - I - 0x019E7F 0C:9E6F: 9A        .byte $9A
- D 0 - I - 0x019E80 0C:9E70: 39        .byte $39
- D 0 - I - 0x019E81 0C:9E71: FF        .byte $FF



off_9E72_6E_01:
- D 0 - I - 0x019E82 0C:9E72: E3        .byte $E3
- D 0 - I - 0x019E83 0C:9E73: 0A        .byte $0A
- D 0 - I - 0x019E84 0C:9E74: ED        .byte $ED
- D 0 - I - 0x019E85 0C:9E75: 01        .byte $01
- D 0 - I - 0x019E86 0C:9E76: 83        .byte $83
- D 0 - I - 0x019E87 0C:9E77: 0C        .byte $0C
- D 0 - I - 0x019E88 0C:9E78: E2        .byte $E2
- D 0 - I - 0x019E89 0C:9E79: 80        .byte $80
- D 0 - I - 0x019E8A 0C:9E7A: E0        .byte $E0
- D 0 - I - 0x019E8B 0C:9E7B: 13        .byte $13
- D 0 - I - 0x019E8C 0C:9E7C: 9A        .byte $9A
- D 0 - I - 0x019E8D 0C:9E7D: 39        .byte $39
- D 0 - I - 0x019E8E 0C:9E7E: FF        .byte $FF



_off000_9E7F_19_замах_удар_с_земли:
- D 0 - I - 0x019E8F 0C:9E7F: 00        .byte $00
- D 0 - I - 0x019E90 0C:9E80: 88 9E     .word off_9E88_выкл
- D 0 - I - 0x019E92 0C:9E82: 01        .byte $01
- D 0 - I - 0x019E93 0C:9E83: 88 9E     .word off_9E88_выкл
- D 0 - I - 0x019E95 0C:9E85: 03        .byte $03
- D 0 - I - 0x019E96 0C:9E86: 89 9E     .word off_9E89_19_03
off_9E88_выкл:
- D 0 - I - 0x019E98 0C:9E88: FF        .byte $FF



off_9E89_19_03:
- D 0 - I - 0x019E99 0C:9E89: E0        .byte $E0
- D 0 - I - 0x019E9A 0C:9E8A: 11        .byte $11
- D 0 - I - 0x019E9B 0C:9E8B: E3        .byte $E3
- D 0 - I - 0x019E9C 0C:9E8C: 00        .byte $00
- D 0 - I - 0x019E9D 0C:9E8D: 81        .byte $81
- D 0 - I - 0x019E9E 0C:9E8E: 00        .byte $00
- D 0 - I - 0x019E9F 0C:9E8F: 01        .byte $01
- D 0 - I - 0x019EA0 0C:9E90: 02        .byte $02
- D 0 - I - 0x019EA1 0C:9E91: 08        .byte $08
- D 0 - I - 0x019EA2 0C:9E92: 09        .byte $09
- D 0 - I - 0x019EA3 0C:9E93: 10        .byte $10
- D 0 - I - 0x019EA4 0C:9E94: 10        .byte $10
- D 0 - I - 0x019EA5 0C:9E95: 8B        .byte $8B
- D 0 - I - 0x019EA6 0C:9E96: 09        .byte $09
- D 0 - I - 0x019EA7 0C:9E97: FF        .byte $FF



_off000_9E98_20:
- D 0 - I - 0x019EA8 0C:9E98: 00        .byte $00
- D 0 - I - 0x019EA9 0C:9E99: A1 9E     .word off_9EA1_выкл
- D 0 - I - 0x019EAB 0C:9E9B: 01        .byte $01
- D 0 - I - 0x019EAC 0C:9E9C: A1 9E     .word off_9EA1_выкл
- D 0 - I - 0x019EAE 0C:9E9E: 03        .byte $03
- D 0 - I - 0x019EAF 0C:9E9F: A2 9E     .word off_9EA2_20_03
off_9EA1_выкл:
- D 0 - I - 0x019EB1 0C:9EA1: FF        .byte $FF



off_9EA2_20_03:
- D 0 - I - 0x019EB2 0C:9EA2: E0        .byte $E0
- D 0 - I - 0x019EB3 0C:9EA3: 17        .byte $17
- D 0 - I - 0x019EB4 0C:9EA4: E3        .byte $E3
- D 0 - I - 0x019EB5 0C:9EA5: 0C        .byte $0C
- D 0 - I - 0x019EB6 0C:9EA6: 83        .byte $83
- D 0 - I - 0x019EB7 0C:9EA7: 00        .byte $00
- D 0 - I - 0x019EB8 0C:9EA8: E3        .byte $E3
- D 0 - I - 0x019EB9 0C:9EA9: 0B        .byte $0B
- D 0 - I - 0x019EBA 0C:9EAA: 01        .byte $01
- D 0 - I - 0x019EBB 0C:9EAB: E3        .byte $E3
- D 0 - I - 0x019EBC 0C:9EAC: 0A        .byte $0A
- D 0 - I - 0x019EBD 0C:9EAD: 84        .byte $84
- D 0 - I - 0x019EBE 0C:9EAE: 02        .byte $02
- D 0 - I - 0x019EBF 0C:9EAF: E3        .byte $E3
- D 0 - I - 0x019EC0 0C:9EB0: 09        .byte $09
- D 0 - I - 0x019EC1 0C:9EB1: 03        .byte $03
- D 0 - I - 0x019EC2 0C:9EB2: E3        .byte $E3
- D 0 - I - 0x019EC3 0C:9EB3: 08        .byte $08
- D 0 - I - 0x019EC4 0C:9EB4: 85        .byte $85
- D 0 - I - 0x019EC5 0C:9EB5: 04        .byte $04
- D 0 - I - 0x019EC6 0C:9EB6: E3        .byte $E3
- D 0 - I - 0x019EC7 0C:9EB7: 07        .byte $07
- D 0 - I - 0x019EC8 0C:9EB8: 04        .byte $04
- D 0 - I - 0x019EC9 0C:9EB9: E3        .byte $E3
- D 0 - I - 0x019ECA 0C:9EBA: 06        .byte $06
- D 0 - I - 0x019ECB 0C:9EBB: 86        .byte $86
- D 0 - I - 0x019ECC 0C:9EBC: 05        .byte $05
- D 0 - I - 0x019ECD 0C:9EBD: E3        .byte $E3
- D 0 - I - 0x019ECE 0C:9EBE: 05        .byte $05
- D 0 - I - 0x019ECF 0C:9EBF: 05        .byte $05
- D 0 - I - 0x019ED0 0C:9EC0: E3        .byte $E3
- D 0 - I - 0x019ED1 0C:9EC1: 04        .byte $04
- D 0 - I - 0x019ED2 0C:9EC2: 87        .byte $87
- D 0 - I - 0x019ED3 0C:9EC3: 05        .byte $05
- D 0 - I - 0x019ED4 0C:9EC4: E3        .byte $E3
- D 0 - I - 0x019ED5 0C:9EC5: 03        .byte $03
- D 0 - I - 0x019ED6 0C:9EC6: 05        .byte $05
- D 0 - I - 0x019ED7 0C:9EC7: E3        .byte $E3
- D 0 - I - 0x019ED8 0C:9EC8: 02        .byte $02
- D 0 - I - 0x019ED9 0C:9EC9: 88        .byte $88
- D 0 - I - 0x019EDA 0C:9ECA: 05        .byte $05
- D 0 - I - 0x019EDB 0C:9ECB: E3        .byte $E3
- D 0 - I - 0x019EDC 0C:9ECC: 01        .byte $01
- D 0 - I - 0x019EDD 0C:9ECD: 05        .byte $05
- D 0 - I - 0x019EDE 0C:9ECE: E3        .byte $E3
- D 0 - I - 0x019EDF 0C:9ECF: 00        .byte $00
- D 0 - I - 0x019EE0 0C:9ED0: 9C        .byte $9C
- D 0 - I - 0x019EE1 0C:9ED1: 05        .byte $05
- D 0 - I - 0x019EE2 0C:9ED2: FF        .byte $FF



_off000_9ED3_1C:
- D 0 - I - 0x019EE3 0C:9ED3: 00        .byte $00
- D 0 - I - 0x019EE4 0C:9ED4: DC 9E     .word off_9EDC_выкл
- D 0 - I - 0x019EE6 0C:9ED6: 01        .byte $01
- D 0 - I - 0x019EE7 0C:9ED7: E9 9E     .word off_9EE9_1C_01
- D 0 - I - 0x019EE9 0C:9ED9: 03        .byte $03
- D 0 - I - 0x019EEA 0C:9EDA: DD 9E     .word off_9EDD_1C_03
off_9EDC_выкл:
- D 0 - I - 0x019EEC 0C:9EDC: FF        .byte $FF



off_9EDD_1C_03:
- D 0 - I - 0x019EED 0C:9EDD: E0        .byte $E0
- D 0 - I - 0x019EEE 0C:9EDE: 15        .byte $15
- D 0 - I - 0x019EEF 0C:9EDF: E3        .byte $E3
- D 0 - I - 0x019EF0 0C:9EE0: 00        .byte $00
- D 0 - I - 0x019EF1 0C:9EE1: 81        .byte $81
- D 0 - I - 0x019EF2 0C:9EE2: 0E        .byte $0E
- D 0 - I - 0x019EF3 0C:9EE3: 09        .byte $09
- D 0 - I - 0x019EF4 0C:9EE4: 0F        .byte $0F
- D 0 - I - 0x019EF5 0C:9EE5: 09        .byte $09
- D 0 - I - 0x019EF6 0C:9EE6: 84        .byte $84
- D 0 - I - 0x019EF7 0C:9EE7: 08        .byte $08
- D 0 - I - 0x019EF8 0C:9EE8: FF        .byte $FF



off_9EE9_1C_01:
- D 0 - I - 0x019EF9 0C:9EE9: E0        .byte $E0
- D 0 - I - 0x019EFA 0C:9EEA: 12        .byte $12
- D 0 - I - 0x019EFB 0C:9EEB: E2        .byte $E2
- D 0 - I - 0x019EFC 0C:9EEC: 80        .byte $80
- D 0 - I - 0x019EFD 0C:9EED: E3        .byte $E3
- D 0 - I - 0x019EFE 0C:9EEE: 00        .byte $00
- D 0 - I - 0x019EFF 0C:9EEF: 81        .byte $81
- D 0 - I - 0x019F00 0C:9EF0: 05        .byte $05
- D 0 - I - 0x019F01 0C:9EF1: 0A        .byte $0A
- D 0 - I - 0x019F02 0C:9EF2: 06        .byte $06
- D 0 - I - 0x019F03 0C:9EF3: 0B        .byte $0B
- D 0 - I - 0x019F04 0C:9EF4: 07        .byte $07
- D 0 - I - 0x019F05 0C:9EF5: 10        .byte $10
- D 0 - I - 0x019F06 0C:9EF6: FF        .byte $FF



_off000_9EF7_22:
- D 0 - I - 0x019F07 0C:9EF7: 00        .byte $00
- D 0 - I - 0x019F08 0C:9EF8: 00 9F     .word off_9F00_выкл
- D 0 - I - 0x019F0A 0C:9EFA: 01        .byte $01
- D 0 - I - 0x019F0B 0C:9EFB: 00 9F     .word off_9F00_выкл
- D 0 - I - 0x019F0D 0C:9EFD: 03        .byte $03
- D 0 - I - 0x019F0E 0C:9EFE: 01 9F     .word off_9F01_22_03
off_9F00_выкл:
- D 0 - I - 0x019F10 0C:9F00: FF        .byte $FF



off_9F01_22_03:
- D 0 - I - 0x019F11 0C:9F01: E0        .byte $E0
- D 0 - I - 0x019F12 0C:9F02: 12        .byte $12
- D 0 - I - 0x019F13 0C:9F03: E3        .byte $E3
- D 0 - I - 0x019F14 0C:9F04: 00        .byte $00
- D 0 - I - 0x019F15 0C:9F05: 82        .byte $82
- D 0 - I - 0x019F16 0C:9F06: 00        .byte $00
- D 0 - I - 0x019F17 0C:9F07: 01        .byte $01
- D 0 - I - 0x019F18 0C:9F08: 02        .byte $02
- D 0 - I - 0x019F19 0C:9F09: 03        .byte $03
- D 0 - I - 0x019F1A 0C:9F0A: 01        .byte $01
- D 0 - I - 0x019F1B 0C:9F0B: 02        .byte $02
- D 0 - I - 0x019F1C 0C:9F0C: 03        .byte $03
- D 0 - I - 0x019F1D 0C:9F0D: 04        .byte $04
- D 0 - I - 0x019F1E 0C:9F0E: 02        .byte $02
- D 0 - I - 0x019F1F 0C:9F0F: 03        .byte $03
- D 0 - I - 0x019F20 0C:9F10: 04        .byte $04
- D 0 - I - 0x019F21 0C:9F11: 05        .byte $05
- D 0 - I - 0x019F22 0C:9F12: 81        .byte $81
- D 0 - I - 0x019F23 0C:9F13: EB        .byte $EB
- D 0 - I - 0x019F24 0C:9F14: 03        .byte $03
- D 0 - I - 0x019F25 0C:9F15: 03        .byte $03
- D 0 - I - 0x019F26 0C:9F16: 04        .byte $04
- D 0 - I - 0x019F27 0C:9F17: 05        .byte $05
- D 0 - I - 0x019F28 0C:9F18: 06        .byte $06
- D 0 - I - 0x019F29 0C:9F19: EC        .byte $EC
- D 0 - I - 0x019F2A 0C:9F1A: EB        .byte $EB
- D 0 - I - 0x019F2B 0C:9F1B: 04        .byte $04
- D 0 - I - 0x019F2C 0C:9F1C: 04        .byte $04
- D 0 - I - 0x019F2D 0C:9F1D: 05        .byte $05
- D 0 - I - 0x019F2E 0C:9F1E: 06        .byte $06
- D 0 - I - 0x019F2F 0C:9F1F: 07        .byte $07
- D 0 - I - 0x019F30 0C:9F20: EC        .byte $EC
- D 0 - I - 0x019F31 0C:9F21: EB        .byte $EB
- D 0 - I - 0x019F32 0C:9F22: 03        .byte $03
- D 0 - I - 0x019F33 0C:9F23: 05        .byte $05
- D 0 - I - 0x019F34 0C:9F24: 06        .byte $06
- D 0 - I - 0x019F35 0C:9F25: 07        .byte $07
- D 0 - I - 0x019F36 0C:9F26: 08        .byte $08
- D 0 - I - 0x019F37 0C:9F27: EC        .byte $EC
- D 0 - I - 0x019F38 0C:9F28: 06        .byte $06
- D 0 - I - 0x019F39 0C:9F29: 07        .byte $07
- D 0 - I - 0x019F3A 0C:9F2A: 08        .byte $08
- D 0 - I - 0x019F3B 0C:9F2B: 09        .byte $09
- D 0 - I - 0x019F3C 0C:9F2C: 07        .byte $07
- D 0 - I - 0x019F3D 0C:9F2D: 08        .byte $08
- D 0 - I - 0x019F3E 0C:9F2E: 09        .byte $09
- D 0 - I - 0x019F3F 0C:9F2F: 0A        .byte $0A
- D 0 - I - 0x019F40 0C:9F30: 08        .byte $08
- D 0 - I - 0x019F41 0C:9F31: 09        .byte $09
- D 0 - I - 0x019F42 0C:9F32: 0A        .byte $0A
- D 0 - I - 0x019F43 0C:9F33: 0B        .byte $0B
- D 0 - I - 0x019F44 0C:9F34: 09        .byte $09
- D 0 - I - 0x019F45 0C:9F35: 0A        .byte $0A
- D 0 - I - 0x019F46 0C:9F36: 0B        .byte $0B
- D 0 - I - 0x019F47 0C:9F37: 0C        .byte $0C
- D 0 - I - 0x019F48 0C:9F38: 0A        .byte $0A
- D 0 - I - 0x019F49 0C:9F39: 0B        .byte $0B
- D 0 - I - 0x019F4A 0C:9F3A: 0C        .byte $0C
- D 0 - I - 0x019F4B 0C:9F3B: 0D        .byte $0D
- D 0 - I - 0x019F4C 0C:9F3C: 0B        .byte $0B
- D 0 - I - 0x019F4D 0C:9F3D: 0C        .byte $0C
- D 0 - I - 0x019F4E 0C:9F3E: 0D        .byte $0D
- D 0 - I - 0x019F4F 0C:9F3F: 0E        .byte $0E
- D 0 - I - 0x019F50 0C:9F40: 0C        .byte $0C
- D 0 - I - 0x019F51 0C:9F41: 0D        .byte $0D
- D 0 - I - 0x019F52 0C:9F42: 0E        .byte $0E
- D 0 - I - 0x019F53 0C:9F43: 96        .byte $96
- D 0 - I - 0x019F54 0C:9F44: 0F        .byte $0F
- D 0 - I - 0x019F55 0C:9F45: FF        .byte $FF



_off000_9F46_5F_полет_спешала:
- D 0 - I - 0x019F56 0C:9F46: 00        .byte $00
- D 0 - I - 0x019F57 0C:9F47: 4F 9F     .word off_9F4F_выкл
- D 0 - I - 0x019F59 0C:9F49: 01        .byte $01
- D 0 - I - 0x019F5A 0C:9F4A: 4F 9F     .word off_9F4F_выкл
- D 0 - I - 0x019F5C 0C:9F4C: 03        .byte $03
- D 0 - I - 0x019F5D 0C:9F4D: 50 9F     .word off_9F50_5F_03
off_9F4F_выкл:
- D 0 - I - 0x019F5F 0C:9F4F: FF        .byte $FF



off_9F50_5F_03:
- D 0 - I - 0x019F60 0C:9F50: 82        .byte $82
- D 0 - I - 0x019F61 0C:9F51: E0        .byte $E0
- D 0 - I - 0x019F62 0C:9F52: 12        .byte $12
- D 0 - I - 0x019F63 0C:9F53: E3        .byte $E3
- D 0 - I - 0x019F64 0C:9F54: 00        .byte $00
- D 0 - I - 0x019F65 0C:9F55: 0F        .byte $0F
- D 0 - I - 0x019F66 0C:9F56: 0E        .byte $0E
- D 0 - I - 0x019F67 0C:9F57: 0D        .byte $0D
- D 0 - I - 0x019F68 0C:9F58: 0C        .byte $0C
- D 0 - I - 0x019F69 0C:9F59: 0E        .byte $0E
- D 0 - I - 0x019F6A 0C:9F5A: 0D        .byte $0D
- D 0 - I - 0x019F6B 0C:9F5B: 0C        .byte $0C
- D 0 - I - 0x019F6C 0C:9F5C: 0B        .byte $0B
- D 0 - I - 0x019F6D 0C:9F5D: 0D        .byte $0D
- D 0 - I - 0x019F6E 0C:9F5E: 0C        .byte $0C
- D 0 - I - 0x019F6F 0C:9F5F: 0B        .byte $0B
- D 0 - I - 0x019F70 0C:9F60: 0A        .byte $0A
- D 0 - I - 0x019F71 0C:9F61: 81        .byte $81
- D 0 - I - 0x019F72 0C:9F62: 0C        .byte $0C
- D 0 - I - 0x019F73 0C:9F63: 0B        .byte $0B
- D 0 - I - 0x019F74 0C:9F64: 0A        .byte $0A
- D 0 - I - 0x019F75 0C:9F65: 09        .byte $09
- D 0 - I - 0x019F76 0C:9F66: 0C        .byte $0C
- D 0 - I - 0x019F77 0C:9F67: 0B        .byte $0B
- D 0 - I - 0x019F78 0C:9F68: 0A        .byte $0A
- D 0 - I - 0x019F79 0C:9F69: 09        .byte $09
- D 0 - I - 0x019F7A 0C:9F6A: 0B        .byte $0B
- D 0 - I - 0x019F7B 0C:9F6B: 0A        .byte $0A
- D 0 - I - 0x019F7C 0C:9F6C: 09        .byte $09
- D 0 - I - 0x019F7D 0C:9F6D: 08        .byte $08
- D 0 - I - 0x019F7E 0C:9F6E: 0B        .byte $0B
- D 0 - I - 0x019F7F 0C:9F6F: 0A        .byte $0A
- D 0 - I - 0x019F80 0C:9F70: 09        .byte $09
- D 0 - I - 0x019F81 0C:9F71: 08        .byte $08
- D 0 - I - 0x019F82 0C:9F72: 0B        .byte $0B
- D 0 - I - 0x019F83 0C:9F73: 0A        .byte $0A
- D 0 - I - 0x019F84 0C:9F74: 09        .byte $09
- D 0 - I - 0x019F85 0C:9F75: 08        .byte $08
- D 0 - I - 0x019F86 0C:9F76: 0A        .byte $0A
- D 0 - I - 0x019F87 0C:9F77: 09        .byte $09
- D 0 - I - 0x019F88 0C:9F78: 08        .byte $08
- D 0 - I - 0x019F89 0C:9F79: 07        .byte $07
- D 0 - I - 0x019F8A 0C:9F7A: 0A        .byte $0A
- D 0 - I - 0x019F8B 0C:9F7B: 09        .byte $09
- D 0 - I - 0x019F8C 0C:9F7C: 08        .byte $08
- D 0 - I - 0x019F8D 0C:9F7D: 07        .byte $07
- D 0 - I - 0x019F8E 0C:9F7E: 09        .byte $09
- D 0 - I - 0x019F8F 0C:9F7F: 08        .byte $08
- D 0 - I - 0x019F90 0C:9F80: 07        .byte $07
- D 0 - I - 0x019F91 0C:9F81: 06        .byte $06
- D 0 - I - 0x019F92 0C:9F82: 08        .byte $08
- D 0 - I - 0x019F93 0C:9F83: 07        .byte $07
- D 0 - I - 0x019F94 0C:9F84: 06        .byte $06
- D 0 - I - 0x019F95 0C:9F85: 05        .byte $05
- D 0 - I - 0x019F96 0C:9F86: 07        .byte $07
- D 0 - I - 0x019F97 0C:9F87: 06        .byte $06
- D 0 - I - 0x019F98 0C:9F88: 05        .byte $05
- D 0 - I - 0x019F99 0C:9F89: 04        .byte $04
- D 0 - I - 0x019F9A 0C:9F8A: 06        .byte $06
- D 0 - I - 0x019F9B 0C:9F8B: 05        .byte $05
- D 0 - I - 0x019F9C 0C:9F8C: 04        .byte $04
- D 0 - I - 0x019F9D 0C:9F8D: 03        .byte $03
- D 0 - I - 0x019F9E 0C:9F8E: 05        .byte $05
- D 0 - I - 0x019F9F 0C:9F8F: 04        .byte $04
- D 0 - I - 0x019FA0 0C:9F90: 03        .byte $03
- D 0 - I - 0x019FA1 0C:9F91: 02        .byte $02
- D 0 - I - 0x019FA2 0C:9F92: 04        .byte $04
- D 0 - I - 0x019FA3 0C:9F93: 03        .byte $03
- D 0 - I - 0x019FA4 0C:9F94: 02        .byte $02
- D 0 - I - 0x019FA5 0C:9F95: 01        .byte $01
- D 0 - I - 0x019FA6 0C:9F96: 03        .byte $03
- D 0 - I - 0x019FA7 0C:9F97: 02        .byte $02
- D 0 - I - 0x019FA8 0C:9F98: 01        .byte $01
- D 0 - I - 0x019FA9 0C:9F99: 96        .byte $96
- D 0 - I - 0x019FAA 0C:9F9A: 00        .byte $00
- D 0 - I - 0x019FAB 0C:9F9B: FF        .byte $FF



_off000_9F9C_69_звук_тихие_зрители:
- D 0 - I - 0x019FAC 0C:9F9C: 00        .byte $00
- D 0 - I - 0x019FAD 0C:9F9D: A5 9F     .word off_9FA5_выкл
- D 0 - I - 0x019FAF 0C:9F9F: 01        .byte $01
- D 0 - I - 0x019FB0 0C:9FA0: A5 9F     .word off_9FA5_выкл
- D 0 - I - 0x019FB2 0C:9FA2: 03        .byte $03
- D 0 - I - 0x019FB3 0C:9FA3: A6 9F     .word off_9FA6_69_03
off_9FA5_выкл:
- D 0 - I - 0x019FB5 0C:9FA5: FF        .byte $FF



off_9FA6_69_03:
- D 0 - I - 0x019FB6 0C:9FA6: E0        .byte $E0
- D 0 - I - 0x019FB7 0C:9FA7: 21        .byte $21
- D 0 - I - 0x019FB8 0C:9FA8: E0        .byte $E0
- D 0 - I - 0x019FB9 0C:9FA9: 17        .byte $17
- D 0 - I - 0x019FBA 0C:9FAA: E3        .byte $E3
- D 0 - I - 0x019FBB 0C:9FAB: 0C        .byte $0C
- D 0 - I - 0x019FBC 0C:9FAC: 85        .byte $85
- D 0 - I - 0x019FBD 0C:9FAD: 0A        .byte $0A
- D 0 - I - 0x019FBE 0C:9FAE: E3        .byte $E3
- D 0 - I - 0x019FBF 0C:9FAF: 0B        .byte $0B
- D 0 - I - 0x019FC0 0C:9FB0: 0A        .byte $0A
- D 0 - I - 0x019FC1 0C:9FB1: E3        .byte $E3
- D 0 - I - 0x019FC2 0C:9FB2: 0A        .byte $0A
- D 0 - I - 0x019FC3 0C:9FB3: 0A        .byte $0A
- D 0 - I - 0x019FC4 0C:9FB4: E3        .byte $E3
- D 0 - I - 0x019FC5 0C:9FB5: 09        .byte $09
- D 0 - I - 0x019FC6 0C:9FB6: 0A        .byte $0A
- D 0 - I - 0x019FC7 0C:9FB7: E3        .byte $E3
- D 0 - I - 0x019FC8 0C:9FB8: 08        .byte $08
- D 0 - I - 0x019FC9 0C:9FB9: 0A        .byte $0A
- D 0 - I - 0x019FCA 0C:9FBA: E3        .byte $E3
- D 0 - I - 0x019FCB 0C:9FBB: 07        .byte $07
- D 0 - I - 0x019FCC 0C:9FBC: 0A        .byte $0A
- D 0 - I - 0x019FCD 0C:9FBD: E3        .byte $E3
- D 0 - I - 0x019FCE 0C:9FBE: 06        .byte $06
- D 0 - I - 0x019FCF 0C:9FBF: 0A        .byte $0A
- D 0 - I - 0x019FD0 0C:9FC0: E3        .byte $E3
- D 0 - I - 0x019FD1 0C:9FC1: 05        .byte $05
- D 0 - I - 0x019FD2 0C:9FC2: 0A        .byte $0A
- D 0 - I - 0x019FD3 0C:9FC3: E3        .byte $E3
- D 0 - I - 0x019FD4 0C:9FC4: 04        .byte $04
- D 0 - I - 0x019FD5 0C:9FC5: 8D        .byte $8D
- D 0 - I - 0x019FD6 0C:9FC6: 0A        .byte $0A
- D 0 - I - 0x019FD7 0C:9FC7: E8        .byte $E8
- D 0 - I - 0x019FD8 0C:9FC8: 56 99     .word loc_E8_9956



_off000_9FCA_6B_звук_замах_джаиро:
- D 0 - I - 0x019FDA 0C:9FCA: 00        .byte $00
- D 0 - I - 0x019FDB 0C:9FCB: D3 9F     .word off_9FD3_выкл
- D 0 - I - 0x019FDD 0C:9FCD: 01        .byte $01
- D 0 - I - 0x019FDE 0C:9FCE: D3 9F     .word off_9FD3_выкл
- D 0 - I - 0x019FE0 0C:9FD0: 03        .byte $03
- D 0 - I - 0x019FE1 0C:9FD1: D4 9F     .word off_9FD4_6B_03
off_9FD3_выкл:
- D 0 - I - 0x019FE3 0C:9FD3: FF        .byte $FF



off_9FD4_6B_03:
- D 0 - I - 0x019FE4 0C:9FD4: E0        .byte $E0
- D 0 - I - 0x019FE5 0C:9FD5: 17        .byte $17
- D 0 - I - 0x019FE6 0C:9FD6: E3        .byte $E3
- D 0 - I - 0x019FE7 0C:9FD7: 03        .byte $03
- D 0 - I - 0x019FE8 0C:9FD8: 81        .byte $81
- D 0 - I - 0x019FE9 0C:9FD9: 01        .byte $01
- D 0 - I - 0x019FEA 0C:9FDA: 04        .byte $04
- D 0 - I - 0x019FEB 0C:9FDB: 01        .byte $01
- D 0 - I - 0x019FEC 0C:9FDC: 82        .byte $82
- D 0 - I - 0x019FED 0C:9FDD: 02        .byte $02
- D 0 - I - 0x019FEE 0C:9FDE: 05        .byte $05
- D 0 - I - 0x019FEF 0C:9FDF: 02        .byte $02
- D 0 - I - 0x019FF0 0C:9FE0: 83        .byte $83
- D 0 - I - 0x019FF1 0C:9FE1: 03        .byte $03
- D 0 - I - 0x019FF2 0C:9FE2: 06        .byte $06
- D 0 - I - 0x019FF3 0C:9FE3: 03        .byte $03
- D 0 - I - 0x019FF4 0C:9FE4: 04        .byte $04
- D 0 - I - 0x019FF5 0C:9FE5: 07        .byte $07
- D 0 - I - 0x019FF6 0C:9FE6: 04        .byte $04
- D 0 - I - 0x019FF7 0C:9FE7: 05        .byte $05
- D 0 - I - 0x019FF8 0C:9FE8: 08        .byte $08
- D 0 - I - 0x019FF9 0C:9FE9: 05        .byte $05
- D 0 - I - 0x019FFA 0C:9FEA: 06        .byte $06
- D 0 - I - 0x019FFB 0C:9FEB: 09        .byte $09
- D 0 - I - 0x019FFC 0C:9FEC: 06        .byte $06
- D 0 - I - 0x019FFD 0C:9FED: 07        .byte $07
- D 0 - I - 0x019FFE 0C:9FEE: 0A        .byte $0A
- D 0 - I - 0x019FFF 0C:9FEF: 08        .byte $08
- D 0 - I - 0x01A000 0C:9FF0: 0B        .byte $0B
- D 0 - I - 0x01A001 0C:9FF1: 09        .byte $09
- D 0 - I - 0x01A002 0C:9FF2: 0C        .byte $0C
- D 0 - I - 0x01A003 0C:9FF3: 0A        .byte $0A
- D 0 - I - 0x01A004 0C:9FF4: 0D        .byte $0D
- D 0 - I - 0x01A005 0C:9FF5: 0B        .byte $0B
- D 0 - I - 0x01A006 0C:9FF6: 0E        .byte $0E
- D 0 - I - 0x01A007 0C:9FF7: 0C        .byte $0C
- D 0 - I - 0x01A008 0C:9FF8: 0F        .byte $0F
loc_E8_9FF9:
- D 0 - I - 0x01A009 0C:9FF9: 0E        .byte $0E
- D 0 - I - 0x01A00A 0C:9FFA: 0F        .byte $0F
- D 0 - I - 0x01A00B 0C:9FFB: E8        .byte $E8
- D 0 - I - 0x01A00C 0C:9FFC: F9 9F     .word loc_E8_9FF9



.out .sprintf("Free bytes in bank 0C: 0x%04X [%d]", ($A000 - *), ($A000 - *))
