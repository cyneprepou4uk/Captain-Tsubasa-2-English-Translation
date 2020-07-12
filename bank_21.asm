.segment "BANK_21"
.include "copy_bank_ram.inc"
; немного кода лишь в самом начале
.export sub_0x02C010
sub_0x02C010:
C D - - - 0x02C013 21:8003: A0 00     LDY #$00
C - - - - 0x02C015 21:8005: 84 3F     STY ram_003F
C - - - - 0x02C017 21:8007: 84 41     STY ram_0041
C - - - - 0x02C019 21:8009: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C01B 21:800B: 4A        LSR
C - - - - 0x02C01C 21:800C: 26 3F     ROL ram_003F
C - - - - 0x02C01E 21:800E: 4A        LSR
C - - - - 0x02C01F 21:800F: 26 41     ROL ram_0041
C - - - - 0x02C021 21:8011: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C023 21:8013: 29 60     AND #$60
C - - - - 0x02C025 21:8015: 0A        ASL
C - - - - 0x02C026 21:8016: 4D 17 05  EOR $0517
C - - - - 0x02C029 21:8019: 85 49     STA ram_0049
C - - - - 0x02C02B 21:801B: A0 08     LDY #$08
C - - - - 0x02C02D 21:801D: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C02F 21:801F: 38        SEC
C - - - - 0x02C030 21:8020: E9 80     SBC #$80
C - - - - 0x02C032 21:8022: AA        TAX
C - - - - 0x02C033 21:8023: A5 3F     LDA ram_003F
C - - - - 0x02C035 21:8025: E9 00     SBC #$00
C - - - - 0x02C037 21:8027: A8        TAY
C - - - - 0x02C038 21:8028: A9 00     LDA #$00
C - - - - 0x02C03A 21:802A: 85 3F     STA ram_003F
C - - - - 0x02C03C 21:802C: AD 38 05  LDA $0538
C - - - - 0x02C03F 21:802F: 49 FF     EOR #$FF
C - - - - 0x02C041 21:8031: 18        CLC
C - - - - 0x02C042 21:8032: 69 01     ADC #$01
C - - - - 0x02C044 21:8034: 10 02     BPL bra_8038
C - - - - 0x02C046 21:8036: C6 3F     DEC ram_003F
bra_8038:
C - - - - 0x02C048 21:8038: 85 3E     STA ram_003E
C - - - - 0x02C04A 21:803A: 8A        TXA
C - - - - 0x02C04B 21:803B: 18        CLC
C - - - - 0x02C04C 21:803C: 65 3E     ADC ram_003E
C - - - - 0x02C04E 21:803E: AA        TAX
C - - - - 0x02C04F 21:803F: 98        TYA
C - - - - 0x02C050 21:8040: 65 3F     ADC ram_003F
C - - - - 0x02C052 21:8042: A8        TAY
C - - - - 0x02C053 21:8043: 2C 17 05  BIT $0517
C - - - - 0x02C056 21:8046: 50 0D     BVC bra_8055
C - - - - 0x02C058 21:8048: 8A        TXA
C - - - - 0x02C059 21:8049: 49 FF     EOR #$FF
C - - - - 0x02C05B 21:804B: AA        TAX
C - - - - 0x02C05C 21:804C: 98        TYA
C - - - - 0x02C05D 21:804D: 49 FF     EOR #$FF
C - - - - 0x02C05F 21:804F: A8        TAY
C - - - - 0x02C060 21:8050: E8        INX
C - - - - 0x02C061 21:8051: D0 01     BNE bra_8054
C - - - - 0x02C063 21:8053: C8        INY
bra_8054:
C - - - - 0x02C064 21:8054: C8        INY
bra_8055:
C - - - - 0x02C065 21:8055: 24 49     BIT ram_0049
C - - - - 0x02C067 21:8057: 50 09     BVC bra_8062
C - - - - 0x02C069 21:8059: 38        SEC
C - - - - 0x02C06A 21:805A: 8A        TXA
C - - - - 0x02C06B 21:805B: E9 08     SBC #$08
C - - - - 0x02C06D 21:805D: AA        TAX
C - - - - 0x02C06E 21:805E: 98        TYA
C - - - - 0x02C06F 21:805F: E9 00     SBC #$00
C - - - - 0x02C071 21:8061: A8        TAY
bra_8062:
C - - - - 0x02C072 21:8062: 86 3E     STX ram_003E
C - - - - 0x02C074 21:8064: 84 3F     STY ram_003F
C - - - - 0x02C076 21:8066: A0 0C     LDY #$0C
C - - - - 0x02C078 21:8068: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C07A 21:806A: 38        SEC
C - - - - 0x02C07B 21:806B: 24 49     BIT ram_0049
C - - - - 0x02C07D 21:806D: 10 03     BPL bra_8072
C - - - - 0x02C07F 21:806F: E9 88     SBC #$88
C - - - - 0x02C081 21:8071: 2C        .byte $2C
bra_8072:
C - - - - 0x02C082 21:8072: E9 80     SBC #$80
C - - - - 0x02C084 21:8074: 85 40     STA ram_0040
C - - - - 0x02C086 21:8076: A5 41     LDA ram_0041
C - - - - 0x02C088 21:8078: E9 00     SBC #$00
C - - - - 0x02C08A 21:807A: 85 41     STA ram_0041
C - - - - 0x02C08C 21:807C: A9 80     LDA #< tbl_8280
C - - - - 0x02C08E 21:807E: 85 42     STA ram_0042
C - - - - 0x02C090 21:8080: A9 82     LDA #> tbl_8280
C - - - - 0x02C092 21:8082: 85 43     STA ram_0043
C - - - - 0x02C094 21:8084: A0 12     LDY #$12
C - - - - 0x02C096 21:8086: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C098 21:8088: 0A        ASL
C - - - - 0x02C099 21:8089: 90 02     BCC bra_808D
C - - - - 0x02C09B 21:808B: E6 43     INC ram_0043
bra_808D:
C - - - - 0x02C09D 21:808D: A8        TAY
C - - - - 0x02C09E 21:808E: B1 42     LDA (ram_0042),Y
C - - - - 0x02C0A0 21:8090: AA        TAX
C - - - - 0x02C0A1 21:8091: C8        INY
C - - - - 0x02C0A2 21:8092: B1 42     LDA (ram_0042),Y
C - - - - 0x02C0A4 21:8094: 85 43     STA ram_0043
C - - - - 0x02C0A6 21:8096: 86 42     STX ram_0042
C - - - - 0x02C0A8 21:8098: 20 87 81  JSR sub_8187
C - - - - 0x02C0AB 21:809B: A0 00     LDY #$00
C - - - - 0x02C0AD 21:809D: 84 44     STY ram_0044
loc_809F:
C D - - - 0x02C0AF 21:809F: A4 44     LDY ram_0044
C - - - - 0x02C0B1 21:80A1: B1 42     LDA (ram_0042),Y
C - - - - 0x02C0B3 21:80A3: 29 07     AND #$07
C - - - - 0x02C0B5 21:80A5: D0 06     BNE bra_80AD
C - - - - 0x02C0B7 21:80A7: 20 C0 80  JSR sub_80C0
C - - - - 0x02C0BA 21:80AA: 4C 9F 80  JMP loc_809F
bra_80AD:
C - - - - 0x02C0BD 21:80AD: 20 B3 80  JSR sub_80B3
C - - - - 0x02C0C0 21:80B0: 4C 9F 80  JMP loc_809F

sub_80B3:
C - - - - 0x02C0C3 21:80B3: E6 44     INC ram_0044
C - - - - 0x02C0C5 21:80B5: 20 09 C5  JSR sub_0x03C519_байты_после_JSR_для_непрямого_прыжка
- - - - - 0x02C0C8 21:80B8: 00 00     .word $0000
- D - I - 0x02C0CA 21:80BA: 61 81     .word ofs_8161_01_закончить_чтение_таблицы
- D - I - 0x02C0CC 21:80BC: 64 81     .word ofs_8164_02
- D - I - 0x02C0CE 21:80BE: 75 81     .word ofs_8175_03

sub_80C0:
C - - - - 0x02C0D0 21:80C0: A4 44     LDY ram_0044
C - - - - 0x02C0D2 21:80C2: B1 42     LDA (ram_0042),Y
C - - - - 0x02C0D4 21:80C4: 29 38     AND #$38
C - - - - 0x02C0D6 21:80C6: 4A        LSR
C - - - - 0x02C0D7 21:80C7: 4A        LSR
C - - - - 0x02C0D8 21:80C8: 4A        LSR
C - - - - 0x02C0D9 21:80C9: 85 45     STA ram_0045
C - - - - 0x02C0DB 21:80CB: C8        INY
C - - - - 0x02C0DC 21:80CC: B1 42     LDA (ram_0042),Y
C - - - - 0x02C0DE 21:80CE: AA        TAX
C - - - - 0x02C0DF 21:80CF: BD D2 81  LDA tbl_81D2,X
C - - - - 0x02C0E2 21:80D2: A2 00     LDX #$00
C - - - - 0x02C0E4 21:80D4: 24 49     BIT ram_0049
C - - - - 0x02C0E6 21:80D6: 10 05     BPL bra_80DD
C - - - - 0x02C0E8 21:80D8: 49 FF     EOR #$FF
C - - - - 0x02C0EA 21:80DA: 18        CLC
C - - - - 0x02C0EB 21:80DB: 69 01     ADC #$01
bra_80DD:
C - - - - 0x02C0ED 21:80DD: 48        PHA
C - - - - 0x02C0EE 21:80DE: 68        PLA
C - - - - 0x02C0EF 21:80DF: 10 01     BPL bra_80E2
C - - - - 0x02C0F1 21:80E1: CA        DEX
bra_80E2:
C - - - - 0x02C0F2 21:80E2: 18        CLC
C - - - - 0x02C0F3 21:80E3: 65 40     ADC ram_0040
C - - - - 0x02C0F5 21:80E5: 85 46     STA ram_0046
C - - - - 0x02C0F7 21:80E7: 8A        TXA
C - - - - 0x02C0F8 21:80E8: 65 41     ADC ram_0041
C - - - - 0x02C0FA 21:80EA: D0 11     BNE bra_80FD
C - - - - 0x02C0FC 21:80EC: A5 46     LDA ram_0046
C - - - - 0x02C0FE 21:80EE: CD 40 05  CMP $0540
C - - - - 0x02C101 21:80F1: 90 0A     BCC bra_80FD
C - - - - 0x02C103 21:80F3: CD 41 05  CMP $0541
C - - - - 0x02C106 21:80F6: F0 11     BEQ bra_8109
C - - - - 0x02C108 21:80F8: B0 03     BCS bra_80FD
C - - - - 0x02C10A 21:80FA: 4C 09 81  JMP loc_8109
bra_80FD:
C - - - - 0x02C10D 21:80FD: C8        INY
C - - - - 0x02C10E 21:80FE: A9 F8     LDA #$F8
bra_8100:
C - - - - 0x02C110 21:8100: C8        INY
C - - - - 0x02C111 21:8101: C8        INY
C - - - - 0x02C112 21:8102: C6 45     DEC ram_0045
C - - - - 0x02C114 21:8104: 10 FA     BPL bra_8100
C - - - - 0x02C116 21:8106: 84 44     STY ram_0044
C - - - - 0x02C118 21:8108: 60        RTS
bra_8109:
loc_8109:
C D - - - 0x02C119 21:8109: C8        INY
bra_810A:
C - - - - 0x02C11A 21:810A: B1 42     LDA (ram_0042),Y
C - - - - 0x02C11C 21:810C: 4A        LSR
C - - - - 0x02C11D 21:810D: 4A        LSR
C - - - - 0x02C11E 21:810E: AA        TAX
C - - - - 0x02C11F 21:810F: BD FA 81  LDA tbl_81FA,X
C - - - - 0x02C122 21:8112: A2 00     LDX #$00
C - - - - 0x02C124 21:8114: 24 49     BIT ram_0049
C - - - - 0x02C126 21:8116: 50 05     BVC bra_811D
C - - - - 0x02C128 21:8118: 49 FF     EOR #$FF
C - - - - 0x02C12A 21:811A: 18        CLC
C - - - - 0x02C12B 21:811B: 69 01     ADC #$01
bra_811D:
C - - - - 0x02C12D 21:811D: 48        PHA
C - - - - 0x02C12E 21:811E: 68        PLA
C - - - - 0x02C12F 21:811F: 10 01     BPL bra_8122
C - - - - 0x02C131 21:8121: CA        DEX
bra_8122:
C - - - - 0x02C132 21:8122: 18        CLC
C - - - - 0x02C133 21:8123: 65 3E     ADC ram_003E
C - - - - 0x02C135 21:8125: 85 47     STA ram_0047
C - - - - 0x02C137 21:8127: 8A        TXA
C - - - - 0x02C138 21:8128: 65 3F     ADC ram_003F
C - - - - 0x02C13A 21:812A: F0 0A     BEQ bra_8136
C - - - - 0x02C13C 21:812C: A6 3B     LDX ram_003B
C - - - - 0x02C13E 21:812E: A9 F8     LDA #$F8
C - - - - 0x02C140 21:8130: 9D 00 02  STA ram_спрайт_Y,X
C - - - - 0x02C143 21:8133: C8        INY
C - - - - 0x02C144 21:8134: D0 23     BNE bra_8159
bra_8136:
C - - - - 0x02C146 21:8136: A6 3B     LDX ram_003B
C - - - - 0x02C148 21:8138: A5 46     LDA ram_0046
C - - - - 0x02C14A 21:813A: 9D 00 02  STA ram_спрайт_Y,X
C - - - - 0x02C14D 21:813D: A5 47     LDA ram_0047
C - - - - 0x02C14F 21:813F: 9D 03 02  STA ram_спрайт_X,X
C - - - - 0x02C152 21:8142: B1 42     LDA (ram_0042),Y
C - - - - 0x02C154 21:8144: 29 03     AND #$03
C - - - - 0x02C156 21:8146: 05 49     ORA ram_0049
C - - - - 0x02C158 21:8148: 9D 02 02  STA ram_спрайт_атрибут,X
C - - - - 0x02C15B 21:814B: C8        INY
C - - - - 0x02C15C 21:814C: B1 42     LDA (ram_0042),Y
C - - - - 0x02C15E 21:814E: 9D 01 02  STA ram_спрайт_тайл,X
C - - - - 0x02C161 21:8151: E8        INX
C - - - - 0x02C162 21:8152: E8        INX
C - - - - 0x02C163 21:8153: E8        INX
C - - - - 0x02C164 21:8154: E8        INX
C - - - - 0x02C165 21:8155: 86 3B     STX ram_003B
C - - - - 0x02C167 21:8157: E6 48     INC ram_0048
bra_8159:
C - - - - 0x02C169 21:8159: C8        INY
C - - - - 0x02C16A 21:815A: C6 45     DEC ram_0045
C - - - - 0x02C16C 21:815C: 10 AC     BPL bra_810A
C - - - - 0x02C16E 21:815E: 84 44     STY ram_0044
C - - - - 0x02C170 21:8160: 60        RTS

ofs_8161_01_закончить_чтение_таблицы:
C - J - - 0x02C171 21:8161: 68        PLA
C - - - - 0x02C172 21:8162: 68        PLA
C - - - - 0x02C173 21:8163: 60        RTS

loc_8164:
ofs_8164_02:
C D - - - 0x02C174 21:8164: A4 44     LDY ram_0044
C - - - - 0x02C176 21:8166: B1 42     LDA (ram_0042),Y
C - - - - 0x02C178 21:8168: AA        TAX
C - - - - 0x02C179 21:8169: C8        INY
C - - - - 0x02C17A 21:816A: B1 42     LDA (ram_0042),Y
C - - - - 0x02C17C 21:816C: 85 43     STA ram_0043
C - - - - 0x02C17E 21:816E: 86 42     STX ram_0042
C - - - - 0x02C180 21:8170: A9 00     LDA #$00
C - - - - 0x02C182 21:8172: 85 44     STA ram_0044
C - - - - 0x02C184 21:8174: 60        RTS

ofs_8175_03:
C - J - - 0x02C185 21:8175: AD 46 05  LDA $0546
C - - - - 0x02C188 21:8178: C9 0C     CMP #$0C
C - - - - 0x02C18A 21:817A: 90 02     BCC bra_817E
C - - - - 0x02C18C 21:817C: E9 0C     SBC #$0C
bra_817E:
C - - - - 0x02C18E 21:817E: 0A        ASL
C - - - - 0x02C18F 21:817F: 18        CLC
C - - - - 0x02C190 21:8180: 65 44     ADC ram_0044
C - - - - 0x02C192 21:8182: 85 44     STA ram_0044
C - - - - 0x02C194 21:8184: 4C 64 81  JMP loc_8164

sub_8187:
C - - - - 0x02C197 21:8187: A0 00     LDY #$00
C - - - - 0x02C199 21:8189: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C19B 21:818B: 4D 17 05  EOR $0517
C - - - - 0x02C19E 21:818E: 29 40     AND #$40
C - - - - 0x02C1A0 21:8190: 08        PHP
C - - - - 0x02C1A1 21:8191: A0 13     LDY #$13
C - - - - 0x02C1A3 21:8193: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C1A5 21:8195: F0 1A     BEQ bra_81B1
C - - - - 0x02C1A7 21:8197: A2 00     LDX #$00
C - - - - 0x02C1A9 21:8199: 28        PLP
C - - - - 0x02C1AA 21:819A: 08        PHP
C - - - - 0x02C1AB 21:819B: F0 05     BEQ bra_81A2
C - - - - 0x02C1AD 21:819D: 49 FF     EOR #$FF
C - - - - 0x02C1AF 21:819F: 18        CLC
C - - - - 0x02C1B0 21:81A0: 69 01     ADC #$01
bra_81A2:
C - - - - 0x02C1B2 21:81A2: 48        PHA
C - - - - 0x02C1B3 21:81A3: 68        PLA
C - - - - 0x02C1B4 21:81A4: 10 01     BPL bra_81A7
C - - - - 0x02C1B6 21:81A6: CA        DEX
bra_81A7:
C - - - - 0x02C1B7 21:81A7: 18        CLC
C - - - - 0x02C1B8 21:81A8: 65 3E     ADC ram_003E
C - - - - 0x02C1BA 21:81AA: 85 3E     STA ram_003E
C - - - - 0x02C1BC 21:81AC: 8A        TXA
C - - - - 0x02C1BD 21:81AD: 65 3F     ADC ram_003F
C - - - - 0x02C1BF 21:81AF: 85 3F     STA ram_003F
bra_81B1:
C - - - - 0x02C1C1 21:81B1: C8        INY
C - - - - 0x02C1C2 21:81B2: B1 3C     LDA (ram_003C),Y
C - - - - 0x02C1C4 21:81B4: F0 1A     BEQ bra_81D0
C - - - - 0x02C1C6 21:81B6: A2 00     LDX #$00
C - - - - 0x02C1C8 21:81B8: 28        PLP
C - - - - 0x02C1C9 21:81B9: 08        PHP
C - - - - 0x02C1CA 21:81BA: 10 05     BPL bra_81C1
- - - - - 0x02C1CC 21:81BC: 49 FF     EOR #$FF
- - - - - 0x02C1CE 21:81BE: 18        CLC
- - - - - 0x02C1CF 21:81BF: 69 01     ADC #$01
bra_81C1:
C - - - - 0x02C1D1 21:81C1: 48        PHA
C - - - - 0x02C1D2 21:81C2: 68        PLA
C - - - - 0x02C1D3 21:81C3: 10 01     BPL bra_81C6
C - - - - 0x02C1D5 21:81C5: CA        DEX
bra_81C6:
C - - - - 0x02C1D6 21:81C6: 18        CLC
C - - - - 0x02C1D7 21:81C7: 65 40     ADC ram_0040
C - - - - 0x02C1D9 21:81C9: 85 40     STA ram_0040
C - - - - 0x02C1DB 21:81CB: 8A        TXA
C - - - - 0x02C1DC 21:81CC: 65 41     ADC ram_0041
C - - - - 0x02C1DE 21:81CE: 85 41     STA ram_0041
bra_81D0:
C - - - - 0x02C1E0 21:81D0: 28        PLP
C - - - - 0x02C1E1 21:81D1: 60        RTS

tbl_81D2:
- D - - - 0x02C1E2 21:81D2: E0        .byte $E0
- D - - - 0x02C1E3 21:81D3: E8        .byte $E8
- D - - - 0x02C1E4 21:81D4: F0        .byte $F0
- D - - - 0x02C1E5 21:81D5: F8        .byte $F8
- D - - - 0x02C1E6 21:81D6: 00        .byte $00
- D - - - 0x02C1E7 21:81D7: 08        .byte $08	; <く>
- D - - - 0x02C1E8 21:81D8: 10        .byte $10	; <た>
- D - - - 0x02C1E9 21:81D9: 18        .byte $18	; <ね>
- D - - - 0x02C1EA 21:81DA: 20        .byte $20	; <み>
- D - - - 0x02C1EB 21:81DB: 28        .byte $28	; <り>
- D - - - 0x02C1EC 21:81DC: 0E        .byte $0E	; <せ>
- D - - - 0x02C1ED 21:81DD: E5        .byte $E5
- D - - - 0x02C1EE 21:81DE: ED        .byte $ED
- D - - - 0x02C1EF 21:81DF: E4        .byte $E4
- D - - - 0x02C1F0 21:81E0: 25        .byte $25	; <ゆ>
- D - - - 0x02C1F1 21:81E1: DF        .byte $DF
- - - - - 0x02C1F2 21:81E2: DC        .byte $DC
- D - - - 0x02C1F3 21:81E3: E7        .byte $E7
- D - - - 0x02C1F4 21:81E4: EF        .byte $EF
- - - - - 0x02C1F5 21:81E5: 21        .byte $21	; <む>
- D - - - 0x02C1F6 21:81E6: 1E        .byte $1E	; <ほ>
- D - - - 0x02C1F7 21:81E7: 26        .byte $26	; <よ>
- D - - - 0x02C1F8 21:81E8: 30        .byte $30	; <ゃ>
- D - - - 0x02C1F9 21:81E9: 38        .byte $38	; <5>
- D - - - 0x02C1FA 21:81EA: F4        .byte $F4
- D - - - 0x02C1FB 21:81EB: FC        .byte $FC
- D - - - 0x02C1FC 21:81EC: 04        .byte $04	; <え>
- D - - - 0x02C1FD 21:81ED: 0C        .byte $0C	; <し>
- D - - - 0x02C1FE 21:81EE: EC        .byte $EC
- - - - - 0x02C1FF 21:81EF: F6        .byte $F6
- D - - - 0x02C200 21:81F0: D8        .byte $D8
- D - - - 0x02C201 21:81F1: EA        .byte $EA
- D - - - 0x02C202 21:81F2: 0A        .byte $0A	; <こ>
- D - - - 0x02C203 21:81F3: 1B        .byte $1B	; <ひ>
- D - - - 0x02C204 21:81F4: F7        .byte $F7
- D - - - 0x02C205 21:81F5: 03        .byte $03	; <う>
- D - - - 0x02C206 21:81F6: FF        .byte $FF
- D - - - 0x02C207 21:81F7: 06        .byte $06	; <か>
- D - - - 0x02C208 21:81F8: F2        .byte $F2
- D - - - 0x02C209 21:81F9: 14        .byte $14	; <と>

tbl_81FA:
- D - - - 0x02C20A 21:81FA: E0        .byte $E0
- D - - - 0x02C20B 21:81FB: E8        .byte $E8
- D - - - 0x02C20C 21:81FC: F0        .byte $F0
- D - - - 0x02C20D 21:81FD: F8        .byte $F8
- D - - - 0x02C20E 21:81FE: 00        .byte $00
- D - - - 0x02C20F 21:81FF: 08        .byte $08	; <く>
- D - - - 0x02C210 21:8200: 10        .byte $10	; <た>
- D - - - 0x02C211 21:8201: EF        .byte $EF
- D - - - 0x02C212 21:8202: F5        .byte $F5
- D - - - 0x02C213 21:8203: F7        .byte $F7
- D - - - 0x02C214 21:8204: FD        .byte $FD
- D - - - 0x02C215 21:8205: 05        .byte $05	; <お>
- D - - - 0x02C216 21:8206: FF        .byte $FF
- D - - - 0x02C217 21:8207: F6        .byte $F6
- D - - - 0x02C218 21:8208: FE        .byte $FE
- D - - - 0x02C219 21:8209: 06        .byte $06	; <か>
- D - - - 0x02C21A 21:820A: F4        .byte $F4
- D - - - 0x02C21B 21:820B: FC        .byte $FC
- D - - - 0x02C21C 21:820C: F3        .byte $F3
- D - - - 0x02C21D 21:820D: FB        .byte $FB
- D - - - 0x02C21E 21:820E: E4        .byte $E4
- D - - - 0x02C21F 21:820F: EC        .byte $EC
- D - - - 0x02C220 21:8210: F2        .byte $F2
- D - - - 0x02C221 21:8211: FA        .byte $FA
- D - - - 0x02C222 21:8212: 02        .byte $02	; <い>
- D - - - 0x02C223 21:8213: F9        .byte $F9
- D - - - 0x02C224 21:8214: D8        .byte $D8
- D - - - 0x02C225 21:8215: DC        .byte $DC
- D - - - 0x02C226 21:8216: 0A        .byte $0A	; <こ>
- D - - - 0x02C227 21:8217: 07        .byte $07	; <き>
- D - - - 0x02C228 21:8218: 0F        .byte $0F	; <そ>
- D - - - 0x02C229 21:8219: 0D        .byte $0D	; <す>
- D - - - 0x02C22A 21:821A: 18        .byte $18	; <ね>
- D - - - 0x02C22B 21:821B: 04        .byte $04	; <え>
- D - - - 0x02C22C 21:821C: 0E        .byte $0E	; <せ>
- - - - - 0x02C22D 21:821D: 12        .byte $12	; <つ>
- D - - - 0x02C22E 21:821E: 0C        .byte $0C	; <し>
- D - - - 0x02C22F 21:821F: ED        .byte $ED
- D - - - 0x02C230 21:8220: EE        .byte $EE
- D - - - 0x02C231 21:8221: C0        .byte $C0	; <ヅ>
- D - - - 0x02C232 21:8222: C8        .byte $C8	; <ぱ>
- D - - - 0x02C233 21:8223: 2C        .byte $2C	; <わ>
- D - - - 0x02C234 21:8224: 34        .byte $34	; <1>
- D - - - 0x02C235 21:8225: 3C        .byte $3C	; <9>
- D - - - 0x02C236 21:8226: 44        .byte $44	; <エ>
- D - - - 0x02C237 21:8227: D0        .byte $D0	; <ペ>
- D - - - 0x02C238 21:8228: EB        .byte $EB
- D - - - 0x02C239 21:8229: 01        .byte $01	; <あ>
- D - - - 0x02C23A 21:822A: 20        .byte $20	; <み>
- D - - - 0x02C23B 21:822B: 28        .byte $28	; <り>
- D - - - 0x02C23C 21:822C: 30        .byte $30	; <ゃ>
- D - - - 0x02C23D 21:822D: 38        .byte $38	; <5>
- D - - - 0x02C23E 21:822E: 40        .byte $40	; <「>
- D - - - 0x02C23F 21:822F: 48        .byte $48	; <ク>
- D - - - 0x02C240 21:8230: 50        .byte $50	; <タ>
- D - - - 0x02C241 21:8231: 14        .byte $14	; <と>
- D - - - 0x02C242 21:8232: 1C        .byte $1C	; <ふ>
- D - - - 0x02C243 21:8233: 26        .byte $26	; <よ>
- D - - - 0x02C244 21:8234: A8        .byte $A8	; <ぜ>
- D - - - 0x02C245 21:8235: B0        .byte $B0	; <び>
- D - - - 0x02C246 21:8236: B8        .byte $B8	; <ゴ>



- - - - - 0x02C247 21:8237: FF        .byte $FF
- - - - - 0x02C248 21:8238: FF        .byte $FF
- - - - - 0x02C249 21:8239: FF        .byte $FF
- - - - - 0x02C24A 21:823A: FF        .byte $FF
- - - - - 0x02C24B 21:823B: FF        .byte $FF
- - - - - 0x02C24C 21:823C: FF        .byte $FF
- - - - - 0x02C24D 21:823D: FF        .byte $FF
- - - - - 0x02C24E 21:823E: FF        .byte $FF
- - - - - 0x02C24F 21:823F: FF        .byte $FF
- - - - - 0x02C250 21:8240: FF        .byte $FF
- - - - - 0x02C251 21:8241: FF        .byte $FF
- - - - - 0x02C252 21:8242: FF        .byte $FF
- - - - - 0x02C253 21:8243: FF        .byte $FF
- - - - - 0x02C254 21:8244: FF        .byte $FF
- - - - - 0x02C255 21:8245: FF        .byte $FF
- - - - - 0x02C256 21:8246: FF        .byte $FF
- - - - - 0x02C257 21:8247: FF        .byte $FF
- - - - - 0x02C258 21:8248: FF        .byte $FF
- - - - - 0x02C259 21:8249: FF        .byte $FF
- - - - - 0x02C25A 21:824A: FF        .byte $FF
- - - - - 0x02C25B 21:824B: FF        .byte $FF
- - - - - 0x02C25C 21:824C: FF        .byte $FF
- - - - - 0x02C25D 21:824D: FF        .byte $FF
- - - - - 0x02C25E 21:824E: FF        .byte $FF
- - - - - 0x02C25F 21:824F: FF        .byte $FF
- - - - - 0x02C260 21:8250: FF        .byte $FF
- - - - - 0x02C261 21:8251: FF        .byte $FF
- - - - - 0x02C262 21:8252: FF        .byte $FF
- - - - - 0x02C263 21:8253: FF        .byte $FF
- - - - - 0x02C264 21:8254: FF        .byte $FF
- - - - - 0x02C265 21:8255: FF        .byte $FF
- - - - - 0x02C266 21:8256: FF        .byte $FF
- - - - - 0x02C267 21:8257: FF        .byte $FF
- - - - - 0x02C268 21:8258: FF        .byte $FF
- - - - - 0x02C269 21:8259: FF        .byte $FF
- - - - - 0x02C26A 21:825A: FF        .byte $FF
- - - - - 0x02C26B 21:825B: FF        .byte $FF
- - - - - 0x02C26C 21:825C: FF        .byte $FF
- - - - - 0x02C26D 21:825D: FF        .byte $FF
- - - - - 0x02C26E 21:825E: FF        .byte $FF
- - - - - 0x02C26F 21:825F: FF        .byte $FF
- - - - - 0x02C270 21:8260: FF        .byte $FF
- - - - - 0x02C271 21:8261: FF        .byte $FF
- - - - - 0x02C272 21:8262: FF        .byte $FF
- - - - - 0x02C273 21:8263: FF        .byte $FF
- - - - - 0x02C274 21:8264: FF        .byte $FF
- - - - - 0x02C275 21:8265: FF        .byte $FF
- - - - - 0x02C276 21:8266: FF        .byte $FF
- - - - - 0x02C277 21:8267: FF        .byte $FF
- - - - - 0x02C278 21:8268: FF        .byte $FF
- - - - - 0x02C279 21:8269: FF        .byte $FF
- - - - - 0x02C27A 21:826A: FF        .byte $FF
- - - - - 0x02C27B 21:826B: FF        .byte $FF
- - - - - 0x02C27C 21:826C: FF        .byte $FF
- - - - - 0x02C27D 21:826D: FF        .byte $FF
- - - - - 0x02C27E 21:826E: FF        .byte $FF
- - - - - 0x02C27F 21:826F: FF        .byte $FF
- - - - - 0x02C280 21:8270: FF        .byte $FF
- - - - - 0x02C281 21:8271: FF        .byte $FF
- - - - - 0x02C282 21:8272: FF        .byte $FF
- - - - - 0x02C283 21:8273: FF        .byte $FF
- - - - - 0x02C284 21:8274: FF        .byte $FF
- - - - - 0x02C285 21:8275: FF        .byte $FF
- - - - - 0x02C286 21:8276: FF        .byte $FF
- - - - - 0x02C287 21:8277: FF        .byte $FF
- - - - - 0x02C288 21:8278: FF        .byte $FF
- - - - - 0x02C289 21:8279: FF        .byte $FF
- - - - - 0x02C28A 21:827A: FF        .byte $FF
- - - - - 0x02C28B 21:827B: FF        .byte $FF
- - - - - 0x02C28C 21:827C: FF        .byte $FF
- - - - - 0x02C28D 21:827D: FF        .byte $FF
- - - - - 0x02C28E 21:827E: FF        .byte $FF
- - - - - 0x02C28F 21:827F: FF        .byte $FF

tbl_8280:
- D - I - 0x02C290 21:8280: 2C 84     .word off_842C_00
- D - I - 0x02C292 21:8282: 17 85     .word off_8517_01
- D - I - 0x02C294 21:8284: 02 86     .word off_8602_02
- D - I - 0x02C296 21:8286: EE 86     .word off_86EE_03
- D - I - 0x02C298 21:8288: D9 87     .word off_87D9_04
- D - I - 0x02C29A 21:828A: 40 88     .word off_8840_05
- D - I - 0x02C29C 21:828C: 9F 88     .word off_889F_06
- D - I - 0x02C29E 21:828E: D4 88     .word off_88D4_07
- D - I - 0x02C2A0 21:8290: 07 89     .word off_8907_08
- D - I - 0x02C2A2 21:8292: 3A 89     .word off_893A_09
- D - I - 0x02C2A4 21:8294: 6B 89     .word off_896B_0A
- D - I - 0x02C2A6 21:8296: 7A 89     .word off_897A_0B
- D - I - 0x02C2A8 21:8298: 8D 89     .word off_898D_0C
- D - I - 0x02C2AA 21:829A: 9C 89     .word off_899C_0D
- - - - - 0x02C2AC 21:829C: AF 89     .word off_89AF_0E
- D - I - 0x02C2AE 21:829E: BC 89     .word off_89BC_0F
- D - I - 0x02C2B0 21:82A0: 3F 8B     .word off_8B3F_10
- D - I - 0x02C2B2 21:82A2: 4E 8B     .word off_8B4E_11
- D - I - 0x02C2B4 21:82A4: 61 8B     .word off_8B61_12
- D - I - 0x02C2B6 21:82A6: 74 8B     .word off_8B74_13
- D - I - 0x02C2B8 21:82A8: 81 8B     .word off_8B81_14
- D - I - 0x02C2BA 21:82AA: 0C 8D     .word off_8D0C_15
- D - I - 0x02C2BC 21:82AC: 1B 8D     .word off_8D1B_16
- D - I - 0x02C2BE 21:82AE: 30 8D     .word off_8D30_17
- D - I - 0x02C2C0 21:82B0: 45 8D     .word off_8D45_18
- D - I - 0x02C2C2 21:82B2: 52 8D     .word off_8D52_19
- - - - - 0x02C2C4 21:82B4: 1D 8F     .word off_8F1D_1A
- D - I - 0x02C2C6 21:82B6: 2C 8F     .word off_8F2C_1B
- - - - - 0x02C2C8 21:82B8: 41 8F     .word off_8F41_1C
- D - I - 0x02C2CA 21:82BA: 56 8F     .word off_8F56_1D
- D - I - 0x02C2CC 21:82BC: 63 8F     .word off_8F63_1E
- D - I - 0x02C2CE 21:82BE: E8 8F     .word off_8FE8_1F
- D - I - 0x02C2D0 21:82C0: A9 91     .word off_91A9_20
- D - I - 0x02C2D2 21:82C2: C6 91     .word off_91C6_21
- D - I - 0x02C2D4 21:82C4: DF 91     .word off_91DF_22
- D - I - 0x02C2D6 21:82C6: F8 91     .word off_91F8_23
- D - I - 0x02C2D8 21:82C8: 09 92     .word off_9209_24
- D - I - 0x02C2DA 21:82CA: 9B 92     .word off_929B_25
- D - I - 0x02C2DC 21:82CC: 98 93     .word off_9398_26
- D - I - 0x02C2DE 21:82CE: D9 93     .word off_93D9_27
- D - I - 0x02C2E0 21:82D0: 32 94     .word off_9432_28
- D - I - 0x02C2E2 21:82D2: 95 94     .word off_9495_29
- D - I - 0x02C2E4 21:82D4: E8 94     .word off_94E8_2A
- D - I - 0x02C2E6 21:82D6: 05 95     .word off_9505_2B
- D - I - 0x02C2E8 21:82D8: 20 95     .word off_9520_2C
- - - - - 0x02C2EA 21:82DA: 51 96     .word off_9651_2D
- - - - - 0x02C2EC 21:82DC: 6E 96     .word off_966E_2E
- D - I - 0x02C2EE 21:82DE: 97 B8     .word off_B897_2F
- D - I - 0x02C2F0 21:82E0: 8B 96     .word off_968B_30
- D - I - 0x02C2F2 21:82E2: D8 96     .word off_96D8_31
- - - - - 0x02C2F4 21:82E4: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C2F6 21:82E6: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C2F8 21:82E8: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C2FA 21:82EA: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C2FC 21:82EC: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C2FE 21:82EE: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C300 21:82F0: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C302 21:82F2: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C304 21:82F4: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C306 21:82F6: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C308 21:82F8: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C30A 21:82FA: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - 0x02C30C 21:82FC: 39 97     .word off_9739_3E
- D - I - 0x02C30E 21:82FE: E4 98     .word off_98E4_3F
- D - I - 0x02C310 21:8300: 01 99     .word off_9901_40
- D - I - 0x02C312 21:8302: 1E 99     .word off_991E_41
- - - - - 0x02C314 21:8304: 2C 9B     .word off_9B2C_42
- D - I - 0x02C316 21:8306: 89 9B     .word off_9B89_43
- D - I - 0x02C318 21:8308: BA 9B     .word off_9BBA_44
- D - I - 0x02C31A 21:830A: EB 9B     .word off_9BEB_45
- D - I - 0x02C31C 21:830C: 1E 9C     .word off_9C1E_46
- D - I - 0x02C31E 21:830E: 51 9C     .word off_9C51_47
- D - I - 0x02C320 21:8310: 8C 9C     .word off_9C8C_48
- D - I - 0x02C322 21:8312: BD 9C     .word off_9CBD_49
- D - I - 0x02C324 21:8314: 0C 9D     .word off_9D0C_4A
- D - I - 0x02C326 21:8316: 39 9D     .word off_9D39_4B
- D - I - 0x02C328 21:8318: 66 9D     .word off_9D66_4C
- D - I - 0x02C32A 21:831A: 91 9D     .word off_9D91_4D
- D - I - 0x02C32C 21:831C: BC 9D     .word off_9DBC_4E
- D - I - 0x02C32E 21:831E: 3B 9E     .word off_9E3B_4F
- D - I - 0x02C330 21:8320: E9 9E     .word off_9EE9_50
- D - I - 0x02C332 21:8322: 86 9F     .word off_9F86_51
- D - I - 0x02C334 21:8324: 23 A0     .word off_A023_52
- D - I - 0x02C336 21:8326: 96 A0     .word off_A096_53
- D - I - 0x02C338 21:8328: 29 A1     .word off_A129_54
- D - I - 0x02C33A 21:832A: 50 A1     .word off_A150_55
- D - I - 0x02C33C 21:832C: B5 A1     .word off_A1B5_56
- D - I - 0x02C33E 21:832E: CC A1     .word off_A1CC_57
- D - I - 0x02C340 21:8330: 1F A2     .word off_A21F_58
- D - I - 0x02C342 21:8332: 6A A2     .word off_A26A_59
- D - I - 0x02C344 21:8334: BF A2     .word off_A2BF_5A
- D - I - 0x02C346 21:8336: 14 A3     .word off_A314_5B
- D - I - 0x02C348 21:8338: 87 A3     .word off_A387_5C
- D - I - 0x02C34A 21:833A: DA A3     .word off_A3DA_5D
- D - I - 0x02C34C 21:833C: 4D A4     .word off_A44D_5E
- D - I - 0x02C34E 21:833E: B6 A4     .word off_A4B6_5F
- D - I - 0x02C350 21:8340: 0D A5     .word off_A50D_60
- D - I - 0x02C352 21:8342: 44 A5     .word off_A544_61
- D - I - 0x02C354 21:8344: 5D A5     .word off_A55D_62
- D - I - 0x02C356 21:8346: BE A5     .word off_A5BE_63
- D - I - 0x02C358 21:8348: 0B A6     .word off_A60B_64
- D - I - 0x02C35A 21:834A: 32 A6     .word off_A632_65
- D - I - 0x02C35C 21:834C: 95 A6     .word off_A695_66
- D - I - 0x02C35E 21:834E: E8 A6     .word off_A6E8_67
- D - I - 0x02C360 21:8350: 33 A7     .word off_A733_68
- D - I - 0x02C362 21:8352: 84 A7     .word off_A784_69
- D - I - 0x02C364 21:8354: C3 A7     .word off_A7C3_6A
- D - I - 0x02C366 21:8356: 08 A8     .word off_A808_6B
- D - I - 0x02C368 21:8358: 45 A8     .word off_A845_6C
- D - I - 0x02C36A 21:835A: 6A A8     .word off_A86A_6D
- D - I - 0x02C36C 21:835C: 9D A8     .word off_A89D_6E
- D - I - 0x02C36E 21:835E: B4 A8     .word off_A8B4_6F
- D - I - 0x02C370 21:8360: C1 A8     .word off_A8C1_70
- D - I - 0x02C372 21:8362: 6F A9     .word off_A96F_71
- D - I - 0x02C374 21:8364: B2 A9     .word off_A9B2_72
- D - I - 0x02C376 21:8366: E1 A9     .word off_A9E1_73
- D - I - 0x02C378 21:8368: 06 AA     .word off_AA06_74
- D - I - 0x02C37A 21:836A: 23 AA     .word off_AA23_75
- D - I - 0x02C37C 21:836C: 34 AA     .word off_AA34_76
- D - I - 0x02C37E 21:836E: 45 AA     .word off_AA45_77
- D - I - 0x02C380 21:8370: 52 AA     .word off_AA52_78
- D - I - 0x02C382 21:8372: 5F AA     .word off_AA5F_79
- D - I - 0x02C384 21:8374: 6C AA     .word off_AA6C_7A
- D - I - 0x02C386 21:8376: 79 AA     .word off_AA79_7B
- D - I - 0x02C388 21:8378: 7E AA     .word off_AA7E_7C
- D - I - 0x02C38A 21:837A: 83 AA     .word off_AA83_7D
- D - I - 0x02C38C 21:837C: 88 AA     .word off_AA88_7E
- D - I - 0x02C38E 21:837E: A9 AA     .word off_AAA9_7F
- D - I - 0x02C390 21:8380: C2 AA     .word off_AAC2_80
- D - I - 0x02C392 21:8382: D9 AA     .word off_AAD9_81
- D - I - 0x02C394 21:8384: E6 AA     .word off_AAE6_82
- D - I - 0x02C396 21:8386: F3 AA     .word off_AAF3_83
- D - I - 0x02C398 21:8388: 00 AB     .word off_AB00_84
- D - I - 0x02C39A 21:838A: 0D AB     .word off_AB0D_85
- D - I - 0x02C39C 21:838C: 12 AB     .word off_AB12_86
- D - I - 0x02C39E 21:838E: 17 AB     .word off_AB17_87
- D - I - 0x02C3A0 21:8390: 1C AB     .word off_AB1C_88
- D - I - 0x02C3A2 21:8392: 53 AB     .word off_AB53_89
- D - I - 0x02C3A4 21:8394: 3C AD     .word off_AD3C_8A
- D - I - 0x02C3A6 21:8396: 65 AD     .word off_AD65_8B
- D - I - 0x02C3A8 21:8398: 7C AD     .word off_AD7C_8C
- D - I - 0x02C3AA 21:839A: 93 AD     .word off_AD93_8D
- D - I - 0x02C3AC 21:839C: AE AD     .word off_ADAE_8E
- D - I - 0x02C3AE 21:839E: C9 AD     .word off_ADC9_8F
- D - I - 0x02C3B0 21:83A0: E2 AD     .word off_ADE2_90
- D - I - 0x02C3B2 21:83A2: 47 AE     .word off_AE47_91
- D - I - 0x02C3B4 21:83A4: 88 AE     .word off_AE88_92
- D - I - 0x02C3B6 21:83A6: B5 AE     .word off_AEB5_93
- D - I - 0x02C3B8 21:83A8: 6D AF     .word off_AF6D_94
- D - I - 0x02C3BA 21:83AA: 2B B0     .word off_B02B_95
- D - I - 0x02C3BC 21:83AC: 34 B0     .word off_B034_96
- D - I - 0x02C3BE 21:83AE: 3D B0     .word off_B03D_97
- D - I - 0x02C3C0 21:83B0: 46 B0     .word off_B046_98
- D - I - 0x02C3C2 21:83B2: D7 B0     .word off_B0D7_99
- D - I - 0x02C3C4 21:83B4: D4 B1     .word off_B1D4_9A
- D - I - 0x02C3C6 21:83B6: E3 B1     .word off_B1E3_9B
- D - I - 0x02C3C8 21:83B8: FA B1     .word off_B1FA_9C
- D - I - 0x02C3CA 21:83BA: 11 B2     .word off_B211_9D
- D - I - 0x02C3CC 21:83BC: 1E B2     .word off_B21E_9E
- D - I - 0x02C3CE 21:83BE: CC B2     .word off_B2CC_9F
- D - I - 0x02C3D0 21:83C0: D9 B2     .word off_B2D9_A0
- D - I - 0x02C3D2 21:83C2: C8 B3     .word off_B3C8_A1
- D - I - 0x02C3D4 21:83C4: 25 B4     .word off_B425_A2
- D - I - 0x02C3D6 21:83C6: 8C B6     .word off_B68C_A3
- D - I - 0x02C3D8 21:83C8: B9 B6     .word off_B6B9_A4
- D - I - 0x02C3DA 21:83CA: D6 B6     .word off_B6D6_A5
- D - I - 0x02C3DC 21:83CC: F3 B6     .word off_B6F3_A6
- D - I - 0x02C3DE 21:83CE: 00 B7     .word off_B700_A7
- D - I - 0x02C3E0 21:83D0: 0D B7     .word off_B70D_A8
- D - I - 0x02C3E2 21:83D2: 26 B7     .word off_B726_A9
- D - I - 0x02C3E4 21:83D4: 45 B7     .word off_B745_AA
- D - I - 0x02C3E6 21:83D6: 74 B7     .word off_B774_AB
- D - I - 0x02C3E8 21:83D8: 81 B7     .word off_B781_AC
- D - I - 0x02C3EA 21:83DA: B4 B7     .word off_B7B4_AD
- D - I - 0x02C3EC 21:83DC: C1 B7     .word off_B7C1_AE
- D - I - 0x02C3EE 21:83DE: D8 B7     .word off_B7D8_AF
- D - I - 0x02C3F0 21:83E0: 7E B8     .word off_B87E_B0
- D - I - 0x02C3F2 21:83E2: A4 B8     .word off_B8A4_B1
- D - I - 0x02C3F4 21:83E4: ED B8     .word off_B8ED_B2
- D - I - 0x02C3F6 21:83E6: 52 B9     .word off_B952_B3
- D - I - 0x02C3F8 21:83E8: BF B9     .word off_B9BF_B4
- D - I - 0x02C3FA 21:83EA: 18 BA     .word off_BA18_B5
- D - I - 0x02C3FC 21:83EC: 81 BA     .word off_BA81_B6
- D - I - 0x02C3FE 21:83EE: E0 BA     .word off_BAE0_B7
- D - I - 0x02C400 21:83F0: 21 BB     .word off_BB21_B8
- D - I - 0x02C402 21:83F2: 62 BB     .word off_BB62_B9
- D - I - 0x02C404 21:83F4: 6D BB     .word off_BB6D_BA
- D - I - 0x02C406 21:83F6: 7C BB     .word off_BB7C_BB
- D - I - 0x02C408 21:83F8: 8F BB     .word off_BB8F_BC
- D - I - 0x02C40A 21:83FA: D8 BB     .word off_BBD8_BD
- D - I - 0x02C40C 21:83FC: 0B BC     .word off_BC0B_BE
- D - I - 0x02C40E 21:83FE: 46 BC     .word off_BC46_BF
- D - I - 0x02C410 21:8400: 9B BC     .word off_BC9B_C0
- D - I - 0x02C412 21:8402: 00 BD     .word off_BD00_C1
- D - I - 0x02C414 21:8404: 2F BD     .word off_BD2F_C2
- D - I - 0x02C416 21:8406: 58 BD     .word off_BD58_C3
- D - I - 0x02C418 21:8408: 67 BD     .word off_BD67_C4
- D - I - 0x02C41A 21:840A: 7E BD     .word off_BD7E_C5
- - - - - 0x02C41C 21:840C: A1 BD     .word off_BDA1_C6
- - - - - 0x02C41E 21:840E: B2 BD     .word off_BDB2_C7
- D - I - 0x02C420 21:8410: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- D - I - 0x02C422 21:8412: C4 BD     .word off_BDC4_C9
- D - I - 0x02C424 21:8414: D5 BD     .word off_BDD5_CA
- - - - - 0x02C426 21:8416: E2 BD     .word off_BDE2_CB
- - - - - 0x02C428 21:8418: E7 BD     .word off_BDE7_CC
- - - - - 0x02C42A 21:841A: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- D - I - 0x02C42C 21:841C: EC BD     .word off_BDEC_CE
- D - I - 0x02C42E 21:841E: 2D BE     .word off_BE2D_CF
- D - I - 0x02C430 21:8420: D6 BE     .word off_BED6_D0
- D - I - 0x02C432 21:8422: 4D BF     .word off_BF4D_D1
- D - I - 0x02C434 21:8424: F4 8F     .word off_8FF4_D2
- D - I - 0x02C436 21:8426: 6A BF     .word off_BF6A_D3
- D - I - 0x02C438 21:8428: 8B BF     .word off_BF8B_D4
- D - I - 0x02C43A 21:842A: AC BF     .word off_BFAC_D5

; 01 - выход
; 02 - прыгнуть на указанную локаци
; 03 - прыгнуть на одну из локацций под этим байтомм, 1 из 6 либо 1 из 12
	; 00, 08, 10, 18, 20, 28, 30, 38 - атрибуты спрайтов, первый байт это количество байтов для чтения после него
	;  4,  6,  8, 10, 12, 14, 16, 18 - расшифровка количества

off_842C_00:
- D - I - 0x02C43C 21:842C: 03        .byte $03	; <う>
- D - I - 0x02C43D 21:842D: 45 84     .word off_8445
- D - I - 0x02C43F 21:842F: 5A 84     .word off_845A
- D - I - 0x02C441 21:8431: 71 84     .word off_8471
- D - I - 0x02C443 21:8433: 8A 84     .word off_848A
- D - I - 0x02C445 21:8435: 9B 84     .word off_849B
- D - I - 0x02C447 21:8437: A8 84     .word off_84A8
- D - I - 0x02C449 21:8439: BB 84     .word off_84BB
- D - I - 0x02C44B 21:843B: CA 84     .word off_84CA
- D - I - 0x02C44D 21:843D: DF 84     .word off_84DF
- D - I - 0x02C44F 21:843F: F2 84     .word off_84F2
- D - I - 0x02C451 21:8441: FD 84     .word off_84FD
- D - I - 0x02C453 21:8443: 0C 85     .word off_850C



off_8445:
- D - I - 0x02C455 21:8445: 10        .byte $10	; <た>
- D - I - 0x02C456 21:8446: 01        .byte $01	; <あ>
- D - I - 0x02C457 21:8447: 0C        .byte $0C	; <し>
- D - I - 0x02C458 21:8448: 28        .byte $28	; <り>
- D - I - 0x02C459 21:8449: 10        .byte $10	; <た>
- D - I - 0x02C45A 21:844A: 29        .byte $29	; <る>
- D - I - 0x02C45B 21:844B: 14        .byte $14	; <と>
- D - I - 0x02C45C 21:844C: 2E        .byte $2E	; <ん>

- D - I - 0x02C45D 21:844D: 08        .byte $08	; <く>
- D - I - 0x02C45E 21:844E: 02        .byte $02	; <い>
- D - I - 0x02C45F 21:844F: 0C        .byte $0C	; <し>
- D - I - 0x02C460 21:8450: 2A        .byte $2A	; <れ>
- D - I - 0x02C461 21:8451: 10        .byte $10	; <た>
- D - I - 0x02C462 21:8452: 2B        .byte $2B	; <ろ>

off_8453:
- D - I - 0x02C463 21:8453: 08        .byte $08	; <く>
- D - I - 0x02C464 21:8454: 00        .byte $00
- D - I - 0x02C465 21:8455: 0C        .byte $0C	; <し>
- D - I - 0x02C466 21:8456: 2C        .byte $2C	; <わ>
- D - I - 0x02C467 21:8457: 10        .byte $10	; <た>
- D - I - 0x02C468 21:8458: 2D        .byte $2D	; <を>

- D - I - 0x02C469 21:8459: 01        .byte $01	; <あ>



off_845A:
- D - I - 0x02C46A 21:845A: 10        .byte $10	; <た>
- D - I - 0x02C46B 21:845B: 00        .byte $00
- D - I - 0x02C46C 21:845C: 0C        .byte $0C	; <し>
- D - I - 0x02C46D 21:845D: 2F        .byte $2F	; <っ>
- D - I - 0x02C46E 21:845E: 10        .byte $10	; <た>
- D - I - 0x02C46F 21:845F: 39        .byte $39	; <6>
- D - I - 0x02C470 21:8460: 14        .byte $14	; <と>
- D - I - 0x02C471 21:8461: 3C        .byte $3C	; <9>

- D - I - 0x02C472 21:8462: 10        .byte $10	; <た>
- D - I - 0x02C473 21:8463: 01        .byte $01	; <あ>
- D - I - 0x02C474 21:8464: 0C        .byte $0C	; <し>
- D - I - 0x02C475 21:8465: 38        .byte $38	; <5>
- D - I - 0x02C476 21:8466: 10        .byte $10	; <た>
- D - I - 0x02C477 21:8467: 3B        .byte $3B	; <8>
- D - I - 0x02C478 21:8468: 14        .byte $14	; <と>
- D - I - 0x02C479 21:8469: 3E        .byte $3E	; <Jr>

- D - I - 0x02C47A 21:846A: 08        .byte $08	; <く>
- D - I - 0x02C47B 21:846B: 02        .byte $02	; <い>
- D - I - 0x02C47C 21:846C: 0C        .byte $0C	; <し>
- D - I - 0x02C47D 21:846D: 3A        .byte $3A	; <7>
- D - I - 0x02C47E 21:846E: 10        .byte $10	; <た>
- D - I - 0x02C47F 21:846F: 2B        .byte $2B	; <ろ>

- D - I - 0x02C480 21:8470: 01        .byte $01	; <あ>



off_8471:
- D - I - 0x02C481 21:8471: 00        .byte $00
- D - I - 0x02C482 21:8472: 01        .byte $01	; <あ>
- D - I - 0x02C483 21:8473: 10        .byte $10	; <た>
- D - I - 0x02C484 21:8474: 6A        .byte $6A	; <レ>

- D - I - 0x02C485 21:8475: 00        .byte $00
- D - I - 0x02C486 21:8476: 02        .byte $02	; <い>
- D - I - 0x02C487 21:8477: 10        .byte $10	; <た>
- D - I - 0x02C488 21:8478: 2B        .byte $2B	; <ろ>

off_8479:
- D - I - 0x02C489 21:8479: 08        .byte $08	; <く>
- D - I - 0x02C48A 21:847A: 00        .byte $00
- D - I - 0x02C48B 21:847B: 0C        .byte $0C	; <し>
- D - I - 0x02C48C 21:847C: 2F        .byte $2F	; <っ>
- D - I - 0x02C48D 21:847D: 10        .byte $10	; <た>
- D - I - 0x02C48E 21:847E: 68        .byte $68	; <リ>

- D - I - 0x02C48F 21:847F: 08        .byte $08	; <く>
- D - I - 0x02C490 21:8480: 01        .byte $01	; <あ>
- D - I - 0x02C491 21:8481: 0C        .byte $0C	; <し>
- D - I - 0x02C492 21:8482: 3F        .byte $3F	; <•>
- D - I - 0x02C493 21:8483: 14        .byte $14	; <と>
- D - I - 0x02C494 21:8484: 3D        .byte $3D	; <+>

- D - I - 0x02C495 21:8485: 00        .byte $00
- D - I - 0x02C496 21:8486: 02        .byte $02	; <い>
- D - I - 0x02C497 21:8487: 0C        .byte $0C	; <し>
- D - I - 0x02C498 21:8488: 3A        .byte $3A	; <7>

- D - I - 0x02C499 21:8489: 01        .byte $01	; <あ>



off_848A:
- D - I - 0x02C49A 21:848A: 10        .byte $10	; <た>
- D - I - 0x02C49B 21:848B: 01        .byte $01	; <あ>
- D - I - 0x02C49C 21:848C: 0C        .byte $0C	; <し>
- D - I - 0x02C49D 21:848D: 69        .byte $69	; <ル>
- D - I - 0x02C49E 21:848E: 10        .byte $10	; <た>
- D - I - 0x02C49F 21:848F: 29        .byte $29	; <る>
- D - I - 0x02C4A0 21:8490: 14        .byte $14	; <と>
- D - I - 0x02C4A1 21:8491: 2E        .byte $2E	; <ん>

- D - I - 0x02C4A2 21:8492: 08        .byte $08	; <く>
- D - I - 0x02C4A3 21:8493: 02        .byte $02	; <い>
- D - I - 0x02C4A4 21:8494: 0C        .byte $0C	; <し>
- D - I - 0x02C4A5 21:8495: 6B        .byte $6B	; <ロ>
- D - I - 0x02C4A6 21:8496: 10        .byte $10	; <た>
- D - I - 0x02C4A7 21:8497: 6E        .byte $6E	; <ン>

- D - I - 0x02C4A8 21:8498: 02        .byte $02	; <い>
- D - I - 0x02C4A9 21:8499: 53 84     .word off_8453



off_849B:
- D - I - 0x02C4AB 21:849B: 08        .byte $08	; <く>
- D - I - 0x02C4AC 21:849C: 01        .byte $01	; <あ>
- D - I - 0x02C4AD 21:849D: 0C        .byte $0C	; <し>
- D - I - 0x02C4AE 21:849E: 74        .byte $74	; <ィ>
- D - I - 0x02C4AF 21:849F: 10        .byte $10	; <た>
- D - I - 0x02C4B0 21:84A0: 75        .byte $75	; <ェ>

off_84A1:
- D - I - 0x02C4B1 21:84A1: 08        .byte $08	; <く>
- D - I - 0x02C4B2 21:84A2: 02        .byte $02	; <い>
- D - I - 0x02C4B3 21:84A3: 0C        .byte $0C	; <し>
- D - I - 0x02C4B4 21:84A4: 76        .byte $76	; <ォ>
- D - I - 0x02C4B5 21:84A5: 10        .byte $10	; <た>
- D - I - 0x02C4B6 21:84A6: 77        .byte $77	; <:>

- D - I - 0x02C4B7 21:84A7: 01        .byte $01	; <あ>



off_84A8:
- D - I - 0x02C4B8 21:84A8: 08        .byte $08	; <く>
- D - I - 0x02C4B9 21:84A9: 01        .byte $01	; <あ>
- D - I - 0x02C4BA 21:84AA: 0C        .byte $0C	; <し>
- D - I - 0x02C4BB 21:84AB: 70        .byte $70	; <ャ>
- D - I - 0x02C4BC 21:84AC: 10        .byte $10	; <た>
- D - I - 0x02C4BD 21:84AD: 71        .byte $71	; <ュ>

- D - I - 0x02C4BE 21:84AE: 08        .byte $08	; <く>
- D - I - 0x02C4BF 21:84AF: 02        .byte $02	; <い>
- D - I - 0x02C4C0 21:84B0: 0C        .byte $0C	; <し>
- D - I - 0x02C4C1 21:84B1: 2A        .byte $2A	; <れ>
- D - I - 0x02C4C2 21:84B2: 10        .byte $10	; <た>
- D - I - 0x02C4C3 21:84B3: 2B        .byte $2B	; <ろ>
; продолжение


off_84B4:
- D - I - 0x02C4C4 21:84B4: 08        .byte $08	; <く>
- D - I - 0x02C4C5 21:84B5: 00        .byte $00
- D - I - 0x02C4C6 21:84B6: 0C        .byte $0C	; <し>
- D - I - 0x02C4C7 21:84B7: 65        .byte $65	; <ユ>
- D - I - 0x02C4C8 21:84B8: 10        .byte $10	; <た>
- D - I - 0x02C4C9 21:84B9: 67        .byte $67	; <ラ>

- D - I - 0x02C4CA 21:84BA: 01        .byte $01	; <あ>



off_84BB:
- D - I - 0x02C4CB 21:84BB: 08        .byte $08	; <く>
- D - I - 0x02C4CC 21:84BC: 01        .byte $01	; <あ>
- D - I - 0x02C4CD 21:84BD: 0C        .byte $0C	; <し>
- D - I - 0x02C4CE 21:84BE: 7C        .byte $7C	; <~>
- D - I - 0x02C4CF 21:84BF: 10        .byte $10	; <た>
- D - I - 0x02C4D0 21:84C0: 7D        .byte $7D	; <ー>

- D - I - 0x02C4D1 21:84C1: 08        .byte $08	; <く>
- D - I - 0x02C4D2 21:84C2: 02        .byte $02	; <い>
- D - I - 0x02C4D3 21:84C3: 0C        .byte $0C	; <し>
- D - I - 0x02C4D4 21:84C4: 7E        .byte $7E	; <.>
- D - I - 0x02C4D5 21:84C5: 10        .byte $10	; <た>
- D - I - 0x02C4D6 21:84C6: 7F        .byte $7F	; <,>

- D - I - 0x02C4D7 21:84C7: 02        .byte $02	; <い>
- D - I - 0x02C4D8 21:84C8: B4 84     .word off_84B4



off_84CA:
- D - I - 0x02C4DA 21:84CA: 08        .byte $08	; <く>
- D - I - 0x02C4DB 21:84CB: 00        .byte $00
- D - I - 0x02C4DC 21:84CC: 0C        .byte $0C	; <し>
- D - I - 0x02C4DD 21:84CD: 72        .byte $72	; <ョ>
- D - I - 0x02C4DE 21:84CE: 10        .byte $10	; <た>
- D - I - 0x02C4DF 21:84CF: 73        .byte $73	; <ヮ>

- D - I - 0x02C4E0 21:84D0: 10        .byte $10	; <た>
- D - I - 0x02C4E1 21:84D1: 01        .byte $01	; <あ>
- D - I - 0x02C4E2 21:84D2: 0C        .byte $0C	; <し>
- D - I - 0x02C4E3 21:84D3: 78        .byte $78	; <?>
- D - I - 0x02C4E4 21:84D4: 10        .byte $10	; <た>
- D - I - 0x02C4E5 21:84D5: 79        .byte $79	; <!>
- D - I - 0x02C4E6 21:84D6: 14        .byte $14	; <と>
- D - I - 0x02C4E7 21:84D7: 6C        .byte $6C	; <ワ>

- D - I - 0x02C4E8 21:84D8: 08        .byte $08	; <く>
- D - I - 0x02C4E9 21:84D9: 02        .byte $02	; <い>
- D - I - 0x02C4EA 21:84DA: 0C        .byte $0C	; <し>
- D - I - 0x02C4EB 21:84DB: 7A        .byte $7A	; <、>
- D - I - 0x02C4EC 21:84DC: 10        .byte $10	; <た>
- D - I - 0x02C4ED 21:84DD: 7B        .byte $7B	; <。>

- D - I - 0x02C4EE 21:84DE: 01        .byte $01	; <あ>



off_84DF:
- D - I - 0x02C4EF 21:84DF: 08        .byte $08	; <く>
- D - I - 0x02C4F0 21:84E0: 00        .byte $00
- D - I - 0x02C4F1 21:84E1: 0C        .byte $0C	; <し>
- D - I - 0x02C4F2 21:84E2: 6D        .byte $6D	; <ヲ>
- D - I - 0x02C4F3 21:84E3: 10        .byte $10	; <た>
- D - I - 0x02C4F4 21:84E4: 67        .byte $67	; <ラ>

- D - I - 0x02C4F5 21:84E5: 08        .byte $08	; <く>
- D - I - 0x02C4F6 21:84E6: 01        .byte $01	; <あ>
- D - I - 0x02C4F7 21:84E7: 0C        .byte $0C	; <し>
- D - I - 0x02C4F8 21:84E8: 6F        .byte $6F	; <ッ>
- D - I - 0x02C4F9 21:84E9: 10        .byte $10	; <た>
- D - I - 0x02C4FA 21:84EA: 81        .byte $81	; <A>

- D - I - 0x02C4FB 21:84EB: 08        .byte $08	; <く>
- D - I - 0x02C4FC 21:84EC: 02        .byte $02	; <い>
- D - I - 0x02C4FD 21:84ED: 0C        .byte $0C	; <し>
- D - I - 0x02C4FE 21:84EE: 3A        .byte $3A	; <7>
- D - I - 0x02C4FF 21:84EF: 10        .byte $10	; <た>
- D - I - 0x02C500 21:84F0: 2B        .byte $2B	; <ろ>

- D - I - 0x02C501 21:84F1: 01        .byte $01	; <あ>



off_84F2:
- D - I - 0x02C502 21:84F2: 10        .byte $10	; <た>
- D - I - 0x02C503 21:84F3: 01        .byte $01	; <あ>
- D - I - 0x02C504 21:84F4: 0C        .byte $0C	; <し>
- D - I - 0x02C505 21:84F5: 74        .byte $74	; <ィ>
- D - I - 0x02C506 21:84F6: 10        .byte $10	; <た>
- D - I - 0x02C507 21:84F7: 82        .byte $82	; <B>
- D - I - 0x02C508 21:84F8: 14        .byte $14	; <と>
- D - I - 0x02C509 21:84F9: 83        .byte $83	; <C>

- D - I - 0x02C50A 21:84FA: 02        .byte $02	; <い>
- D - I - 0x02C50B 21:84FB: A1 84     .word off_84A1



off_84FD:
- D - I - 0x02C50D 21:84FD: 08        .byte $08	; <く>
- D - I - 0x02C50E 21:84FE: 00        .byte $00
- D - I - 0x02C50F 21:84FF: 0C        .byte $0C	; <し>
- D - I - 0x02C510 21:8500: 2C        .byte $2C	; <わ>
- D - I - 0x02C511 21:8501: 10        .byte $10	; <た>
- D - I - 0x02C512 21:8502: 67        .byte $67	; <ラ>

- D - I - 0x02C513 21:8503: 08        .byte $08	; <く>
- D - I - 0x02C514 21:8504: 01        .byte $01	; <あ>
- D - I - 0x02C515 21:8505: 0C        .byte $0C	; <し>
- D - I - 0x02C516 21:8506: 28        .byte $28	; <り>
- D - I - 0x02C517 21:8507: 10        .byte $10	; <た>
- D - I - 0x02C518 21:8508: 81        .byte $81	; <A>

- D - I - 0x02C519 21:8509: 02        .byte $02	; <い>
- D - I - 0x02C51A 21:850A: A1 84     .word off_84A1



off_850C:
- D - I - 0x02C51C 21:850C: 00        .byte $00
- D - I - 0x02C51D 21:850D: 01        .byte $01	; <あ>
- D - I - 0x02C51E 21:850E: 10        .byte $10	; <た>
- D - I - 0x02C51F 21:850F: 84        .byte $84	; <D>

- D - I - 0x02C520 21:8510: 00        .byte $00
- D - I - 0x02C521 21:8511: 02        .byte $02	; <い>
- D - I - 0x02C522 21:8512: 10        .byte $10	; <た>
- D - I - 0x02C523 21:8513: 86        .byte $86	; <F>

- D - I - 0x02C524 21:8514: 02        .byte $02	; <い>
- D - I - 0x02C525 21:8515: 79 84     .word off_8479



off_8517_01:
- D - I - 0x02C527 21:8517: 03        .byte $03	; <う>
- D - I - 0x02C528 21:8518: 30 85     .word off_8530
- D - I - 0x02C52A 21:851A: 45 85     .word off_8545
- D - I - 0x02C52C 21:851C: 5C 85     .word off_855C
- D - I - 0x02C52E 21:851E: 75 85     .word off_8575
- D - I - 0x02C530 21:8520: 86 85     .word off_8586
- D - I - 0x02C532 21:8522: 93 85     .word off_8593
- D - I - 0x02C534 21:8524: A6 85     .word off_85A6
- D - I - 0x02C536 21:8526: B5 85     .word off_85B5
- D - I - 0x02C538 21:8528: CA 85     .word off_85CA
- D - I - 0x02C53A 21:852A: DD 85     .word off_85DD
- D - I - 0x02C53C 21:852C: E8 85     .word off_85E8
- D - I - 0x02C53E 21:852E: F7 85     .word off_85F7



off_8530:
- D - I - 0x02C540 21:8530: 10        .byte $10	; <た>
- D - I - 0x02C541 21:8531: 11        .byte $11	; <ち>
- D - I - 0x02C542 21:8532: 34        .byte $34	; <1>
- D - I - 0x02C543 21:8533: 28        .byte $28	; <り>
- D - I - 0x02C544 21:8534: 38        .byte $38	; <5>
- D - I - 0x02C545 21:8535: 29        .byte $29	; <る>
- D - I - 0x02C546 21:8536: 3C        .byte $3C	; <9>
- D - I - 0x02C547 21:8537: 2E        .byte $2E	; <ん>

- D - I - 0x02C548 21:8538: 08        .byte $08	; <く>
- D - I - 0x02C549 21:8539: 12        .byte $12	; <つ>
- D - I - 0x02C54A 21:853A: 34        .byte $34	; <1>
- D - I - 0x02C54B 21:853B: 2A        .byte $2A	; <れ>
- D - I - 0x02C54C 21:853C: 38        .byte $38	; <5>
- D - I - 0x02C54D 21:853D: 2B        .byte $2B	; <ろ>

off_853E:
- D - I - 0x02C54E 21:853E: 08        .byte $08	; <く>
- D - I - 0x02C54F 21:853F: 0F        .byte $0F	; <そ>
- D - I - 0x02C550 21:8540: 34        .byte $34	; <1>
- D - I - 0x02C551 21:8541: 2C        .byte $2C	; <わ>
- D - I - 0x02C552 21:8542: 38        .byte $38	; <5>
- D - I - 0x02C553 21:8543: 2D        .byte $2D	; <を>

- D - I - 0x02C554 21:8544: 01        .byte $01	; <あ>



off_8545:
- D - I - 0x02C555 21:8545: 10        .byte $10	; <た>
- D - I - 0x02C556 21:8546: 0F        .byte $0F	; <そ>
- D - I - 0x02C557 21:8547: 34        .byte $34	; <1>
- D - I - 0x02C558 21:8548: 2F        .byte $2F	; <っ>
- D - I - 0x02C559 21:8549: 38        .byte $38	; <5>
- D - I - 0x02C55A 21:854A: 39        .byte $39	; <6>
- D - I - 0x02C55B 21:854B: 3C        .byte $3C	; <9>
- D - I - 0x02C55C 21:854C: 3C        .byte $3C	; <9>

- D - I - 0x02C55D 21:854D: 10        .byte $10	; <た>
- D - I - 0x02C55E 21:854E: 11        .byte $11	; <ち>
- D - I - 0x02C55F 21:854F: 34        .byte $34	; <1>
- D - I - 0x02C560 21:8550: 38        .byte $38	; <5>
- D - I - 0x02C561 21:8551: 38        .byte $38	; <5>
- D - I - 0x02C562 21:8552: 3B        .byte $3B	; <8>
- D - I - 0x02C563 21:8553: 3C        .byte $3C	; <9>
- D - I - 0x02C564 21:8554: 3E        .byte $3E	; <Jr>

- D - I - 0x02C565 21:8555: 08        .byte $08	; <く>
- D - I - 0x02C566 21:8556: 12        .byte $12	; <つ>
- D - I - 0x02C567 21:8557: 34        .byte $34	; <1>
- D - I - 0x02C568 21:8558: 3A        .byte $3A	; <7>
- D - I - 0x02C569 21:8559: 38        .byte $38	; <5>
- D - I - 0x02C56A 21:855A: 2B        .byte $2B	; <ろ>

- D - I - 0x02C56B 21:855B: 01        .byte $01	; <あ>



off_855C:
- D - I - 0x02C56C 21:855C: 00        .byte $00
- D - I - 0x02C56D 21:855D: 11        .byte $11	; <ち>
- D - I - 0x02C56E 21:855E: 38        .byte $38	; <5>
- D - I - 0x02C56F 21:855F: 6A        .byte $6A	; <レ>

- D - I - 0x02C570 21:8560: 00        .byte $00
- D - I - 0x02C571 21:8561: 12        .byte $12	; <つ>
- D - I - 0x02C572 21:8562: 38        .byte $38	; <5>
- D - I - 0x02C573 21:8563: 2B        .byte $2B	; <ろ>

off_8564:
- D - I - 0x02C574 21:8564: 08        .byte $08	; <く>
- D - I - 0x02C575 21:8565: 0F        .byte $0F	; <そ>
- D - I - 0x02C576 21:8566: 34        .byte $34	; <1>
- D - I - 0x02C577 21:8567: 2F        .byte $2F	; <っ>
- D - I - 0x02C578 21:8568: 38        .byte $38	; <5>
- D - I - 0x02C579 21:8569: 68        .byte $68	; <リ>

- D - I - 0x02C57A 21:856A: 08        .byte $08	; <く>
- D - I - 0x02C57B 21:856B: 11        .byte $11	; <ち>
- D - I - 0x02C57C 21:856C: 34        .byte $34	; <1>
- D - I - 0x02C57D 21:856D: 3F        .byte $3F	; <•>
- D - I - 0x02C57E 21:856E: 3C        .byte $3C	; <9>
- D - I - 0x02C57F 21:856F: 3D        .byte $3D	; <+>

- D - I - 0x02C580 21:8570: 00        .byte $00
- D - I - 0x02C581 21:8571: 12        .byte $12	; <つ>
- D - I - 0x02C582 21:8572: 34        .byte $34	; <1>
- D - I - 0x02C583 21:8573: 3A        .byte $3A	; <7>

- D - I - 0x02C584 21:8574: 01        .byte $01	; <あ>



off_8575:
- D - I - 0x02C585 21:8575: 10        .byte $10	; <た>
- D - I - 0x02C586 21:8576: 11        .byte $11	; <ち>
- D - I - 0x02C587 21:8577: 34        .byte $34	; <1>
- D - I - 0x02C588 21:8578: 69        .byte $69	; <ル>
- D - I - 0x02C589 21:8579: 38        .byte $38	; <5>
- D - I - 0x02C58A 21:857A: 29        .byte $29	; <る>
- D - I - 0x02C58B 21:857B: 3C        .byte $3C	; <9>
- D - I - 0x02C58C 21:857C: 2E        .byte $2E	; <ん>

- D - I - 0x02C58D 21:857D: 08        .byte $08	; <く>
- D - I - 0x02C58E 21:857E: 12        .byte $12	; <つ>
- D - I - 0x02C58F 21:857F: 34        .byte $34	; <1>
- D - I - 0x02C590 21:8580: 6B        .byte $6B	; <ロ>
- D - I - 0x02C591 21:8581: 38        .byte $38	; <5>
- D - I - 0x02C592 21:8582: 6E        .byte $6E	; <ン>

- D - I - 0x02C593 21:8583: 02        .byte $02	; <い>
- D - I - 0x02C594 21:8584: 3E 85     .word off_853E



off_8586:
- D - I - 0x02C596 21:8586: 08        .byte $08	; <く>
- D - I - 0x02C597 21:8587: 11        .byte $11	; <ち>
- D - I - 0x02C598 21:8588: 34        .byte $34	; <1>
- D - I - 0x02C599 21:8589: 74        .byte $74	; <ィ>
- D - I - 0x02C59A 21:858A: 38        .byte $38	; <5>
- D - I - 0x02C59B 21:858B: 75        .byte $75	; <ェ>

off_858C:
- D - I - 0x02C59C 21:858C: 08        .byte $08	; <く>
- D - I - 0x02C59D 21:858D: 12        .byte $12	; <つ>
- D - I - 0x02C59E 21:858E: 34        .byte $34	; <1>
- D - I - 0x02C59F 21:858F: 76        .byte $76	; <ォ>
- D - I - 0x02C5A0 21:8590: 38        .byte $38	; <5>
- D - I - 0x02C5A1 21:8591: 77        .byte $77	; <:>

- D - I - 0x02C5A2 21:8592: 01        .byte $01	; <あ>



off_8593:
- D - I - 0x02C5A3 21:8593: 08        .byte $08	; <く>
- D - I - 0x02C5A4 21:8594: 11        .byte $11	; <ち>
- D - I - 0x02C5A5 21:8595: 34        .byte $34	; <1>
- D - I - 0x02C5A6 21:8596: 70        .byte $70	; <ャ>
- D - I - 0x02C5A7 21:8597: 38        .byte $38	; <5>
- D - I - 0x02C5A8 21:8598: 71        .byte $71	; <ュ>

- D - I - 0x02C5A9 21:8599: 08        .byte $08	; <く>
- D - I - 0x02C5AA 21:859A: 12        .byte $12	; <つ>
- D - I - 0x02C5AB 21:859B: 34        .byte $34	; <1>
- D - I - 0x02C5AC 21:859C: 2A        .byte $2A	; <れ>
- D - I - 0x02C5AD 21:859D: 38        .byte $38	; <5>
- D - I - 0x02C5AE 21:859E: 2B        .byte $2B	; <ろ>
; продолжение


off_859F:
- D - I - 0x02C5AF 21:859F: 08        .byte $08	; <く>
- D - I - 0x02C5B0 21:85A0: 0F        .byte $0F	; <そ>
- D - I - 0x02C5B1 21:85A1: 34        .byte $34	; <1>
- D - I - 0x02C5B2 21:85A2: 65        .byte $65	; <ユ>
- D - I - 0x02C5B3 21:85A3: 38        .byte $38	; <5>
- D - I - 0x02C5B4 21:85A4: 67        .byte $67	; <ラ>

- D - I - 0x02C5B5 21:85A5: 01        .byte $01	; <あ>



off_85A6:
- D - I - 0x02C5B6 21:85A6: 08        .byte $08	; <く>
- D - I - 0x02C5B7 21:85A7: 11        .byte $11	; <ち>
- D - I - 0x02C5B8 21:85A8: 34        .byte $34	; <1>
- D - I - 0x02C5B9 21:85A9: 7C        .byte $7C	; <~>
- D - I - 0x02C5BA 21:85AA: 38        .byte $38	; <5>
- D - I - 0x02C5BB 21:85AB: 7D        .byte $7D	; <ー>

- D - I - 0x02C5BC 21:85AC: 08        .byte $08	; <く>
- D - I - 0x02C5BD 21:85AD: 12        .byte $12	; <つ>
- D - I - 0x02C5BE 21:85AE: 34        .byte $34	; <1>
- D - I - 0x02C5BF 21:85AF: 7E        .byte $7E	; <.>
- D - I - 0x02C5C0 21:85B0: 38        .byte $38	; <5>
- D - I - 0x02C5C1 21:85B1: 7F        .byte $7F	; <,>

- D - I - 0x02C5C2 21:85B2: 02        .byte $02	; <い>
- D - I - 0x02C5C3 21:85B3: 9F 85     .word off_859F



off_85B5:
- D - I - 0x02C5C5 21:85B5: 08        .byte $08	; <く>
- D - I - 0x02C5C6 21:85B6: 0F        .byte $0F	; <そ>
- D - I - 0x02C5C7 21:85B7: 34        .byte $34	; <1>
- D - I - 0x02C5C8 21:85B8: 72        .byte $72	; <ョ>
- D - I - 0x02C5C9 21:85B9: 38        .byte $38	; <5>
- D - I - 0x02C5CA 21:85BA: 73        .byte $73	; <ヮ>

- D - I - 0x02C5CB 21:85BB: 10        .byte $10	; <た>
- D - I - 0x02C5CC 21:85BC: 11        .byte $11	; <ち>
- D - I - 0x02C5CD 21:85BD: 34        .byte $34	; <1>
- D - I - 0x02C5CE 21:85BE: 78        .byte $78	; <?>
- D - I - 0x02C5CF 21:85BF: 38        .byte $38	; <5>
- D - I - 0x02C5D0 21:85C0: 79        .byte $79	; <!>
- D - I - 0x02C5D1 21:85C1: 3C        .byte $3C	; <9>
- D - I - 0x02C5D2 21:85C2: 6C        .byte $6C	; <ワ>

- D - I - 0x02C5D3 21:85C3: 08        .byte $08	; <く>
- D - I - 0x02C5D4 21:85C4: 12        .byte $12	; <つ>
- D - I - 0x02C5D5 21:85C5: 34        .byte $34	; <1>
- D - I - 0x02C5D6 21:85C6: 7A        .byte $7A	; <、>
- D - I - 0x02C5D7 21:85C7: 38        .byte $38	; <5>
- D - I - 0x02C5D8 21:85C8: 7B        .byte $7B	; <。>

- D - I - 0x02C5D9 21:85C9: 01        .byte $01	; <あ>



off_85CA:
- D - I - 0x02C5DA 21:85CA: 08        .byte $08	; <く>
- D - I - 0x02C5DB 21:85CB: 0F        .byte $0F	; <そ>
- D - I - 0x02C5DC 21:85CC: 34        .byte $34	; <1>
- D - I - 0x02C5DD 21:85CD: 6D        .byte $6D	; <ヲ>
- D - I - 0x02C5DE 21:85CE: 38        .byte $38	; <5>
- D - I - 0x02C5DF 21:85CF: 67        .byte $67	; <ラ>

- D - I - 0x02C5E0 21:85D0: 08        .byte $08	; <く>
- D - I - 0x02C5E1 21:85D1: 11        .byte $11	; <ち>
- D - I - 0x02C5E2 21:85D2: 34        .byte $34	; <1>
- D - I - 0x02C5E3 21:85D3: 6F        .byte $6F	; <ッ>
- D - I - 0x02C5E4 21:85D4: 38        .byte $38	; <5>
- D - I - 0x02C5E5 21:85D5: 81        .byte $81	; <A>

- D - I - 0x02C5E6 21:85D6: 08        .byte $08	; <く>
- D - I - 0x02C5E7 21:85D7: 12        .byte $12	; <つ>
- D - I - 0x02C5E8 21:85D8: 34        .byte $34	; <1>
- D - I - 0x02C5E9 21:85D9: 3A        .byte $3A	; <7>
- D - I - 0x02C5EA 21:85DA: 38        .byte $38	; <5>
- D - I - 0x02C5EB 21:85DB: 2B        .byte $2B	; <ろ>

- D - I - 0x02C5EC 21:85DC: 01        .byte $01	; <あ>



off_85DD:
- D - I - 0x02C5ED 21:85DD: 10        .byte $10	; <た>
- D - I - 0x02C5EE 21:85DE: 11        .byte $11	; <ち>
- D - I - 0x02C5EF 21:85DF: 34        .byte $34	; <1>
- D - I - 0x02C5F0 21:85E0: 74        .byte $74	; <ィ>
- D - I - 0x02C5F1 21:85E1: 38        .byte $38	; <5>
- D - I - 0x02C5F2 21:85E2: 82        .byte $82	; <B>
- D - I - 0x02C5F3 21:85E3: 3C        .byte $3C	; <9>
- D - I - 0x02C5F4 21:85E4: 83        .byte $83	; <C>

- D - I - 0x02C5F5 21:85E5: 02        .byte $02	; <い>
- D - I - 0x02C5F6 21:85E6: 8C 85     .word off_858C



off_85E8:
- D - I - 0x02C5F8 21:85E8: 08        .byte $08	; <く>
- D - I - 0x02C5F9 21:85E9: 0F        .byte $0F	; <そ>
- D - I - 0x02C5FA 21:85EA: 34        .byte $34	; <1>
- D - I - 0x02C5FB 21:85EB: 2C        .byte $2C	; <わ>
- D - I - 0x02C5FC 21:85EC: 38        .byte $38	; <5>
- D - I - 0x02C5FD 21:85ED: 67        .byte $67	; <ラ>

- D - I - 0x02C5FE 21:85EE: 08        .byte $08	; <く>
- D - I - 0x02C5FF 21:85EF: 11        .byte $11	; <ち>
- D - I - 0x02C600 21:85F0: 34        .byte $34	; <1>
- D - I - 0x02C601 21:85F1: 28        .byte $28	; <り>
- D - I - 0x02C602 21:85F2: 38        .byte $38	; <5>
- D - I - 0x02C603 21:85F3: 81        .byte $81	; <A>

- D - I - 0x02C604 21:85F4: 02        .byte $02	; <い>
- D - I - 0x02C605 21:85F5: 8C 85     .word off_858C



off_85F7:
- D - I - 0x02C607 21:85F7: 00        .byte $00
- D - I - 0x02C608 21:85F8: 11        .byte $11	; <ち>
- D - I - 0x02C609 21:85F9: 38        .byte $38	; <5>
- D - I - 0x02C60A 21:85FA: 84        .byte $84	; <D>

- D - I - 0x02C60B 21:85FB: 00        .byte $00
- D - I - 0x02C60C 21:85FC: 12        .byte $12	; <つ>
- D - I - 0x02C60D 21:85FD: 38        .byte $38	; <5>
- D - I - 0x02C60E 21:85FE: 86        .byte $86	; <F>

- D - I - 0x02C60F 21:85FF: 02        .byte $02	; <い>
- D - I - 0x02C610 21:8600: 64 85     .word off_8564



off_8602_02:
- D - I - 0x02C612 21:8602: 03        .byte $03	; <う>
- D - I - 0x02C613 21:8603: 1B 86     .word off_861B
- D - I - 0x02C615 21:8605: 30 86     .word off_8630
- D - I - 0x02C617 21:8607: 47 86     .word off_8647
- D - I - 0x02C619 21:8609: 60 86     .word off_8660
- D - I - 0x02C61B 21:860B: 71 86     .word off_8671
- D - I - 0x02C61D 21:860D: 7E 86     .word off_867E
- D - I - 0x02C61F 21:860F: 91 86     .word off_8691
- D - I - 0x02C621 21:8611: A1 86     .word off_86A1
- D - I - 0x02C623 21:8613: B6 86     .word off_86B6
- D - I - 0x02C625 21:8615: C9 86     .word off_86C9
- D - I - 0x02C627 21:8617: D4 86     .word off_86D4
- D - I - 0x02C629 21:8619: E3 86     .word off_86E3



off_861B:
- D - I - 0x02C62B 21:861B: 10        .byte $10	; <た>
- D - I - 0x02C62C 21:861C: 01        .byte $01	; <あ>
- D - I - 0x02C62D 21:861D: 34        .byte $34	; <1>
- D - I - 0x02C62E 21:861E: 28        .byte $28	; <り>
- D - I - 0x02C62F 21:861F: 38        .byte $38	; <5>
- D - I - 0x02C630 21:8620: 29        .byte $29	; <る>
- D - I - 0x02C631 21:8621: 3C        .byte $3C	; <9>
- D - I - 0x02C632 21:8622: 2E        .byte $2E	; <ん>

- D - I - 0x02C633 21:8623: 08        .byte $08	; <く>
- D - I - 0x02C634 21:8624: 02        .byte $02	; <い>
- D - I - 0x02C635 21:8625: 34        .byte $34	; <1>
- D - I - 0x02C636 21:8626: 2A        .byte $2A	; <れ>
- D - I - 0x02C637 21:8627: 38        .byte $38	; <5>
- D - I - 0x02C638 21:8628: 2B        .byte $2B	; <ろ>
; продолжение


off_8629:
- D - I - 0x02C639 21:8629: 08        .byte $08	; <く>
- D - I - 0x02C63A 21:862A: 00        .byte $00
- D - I - 0x02C63B 21:862B: 34        .byte $34	; <1>
- D - I - 0x02C63C 21:862C: 2C        .byte $2C	; <わ>
- D - I - 0x02C63D 21:862D: 38        .byte $38	; <5>
- D - I - 0x02C63E 21:862E: 2D        .byte $2D	; <を>

- D - I - 0x02C63F 21:862F: 01        .byte $01	; <あ>



off_8630:
- D - I - 0x02C640 21:8630: 10        .byte $10	; <た>
- D - I - 0x02C641 21:8631: 00        .byte $00
- D - I - 0x02C642 21:8632: 34        .byte $34	; <1>
- D - I - 0x02C643 21:8633: 2F        .byte $2F	; <っ>
- D - I - 0x02C644 21:8634: 38        .byte $38	; <5>
- D - I - 0x02C645 21:8635: 39        .byte $39	; <6>
- D - I - 0x02C646 21:8636: 3C        .byte $3C	; <9>
- D - I - 0x02C647 21:8637: 3C        .byte $3C	; <9>

- D - I - 0x02C648 21:8638: 10        .byte $10	; <た>
- D - I - 0x02C649 21:8639: 01        .byte $01	; <あ>
- D - I - 0x02C64A 21:863A: 34        .byte $34	; <1>
- D - I - 0x02C64B 21:863B: 38        .byte $38	; <5>
- D - I - 0x02C64C 21:863C: 38        .byte $38	; <5>
- D - I - 0x02C64D 21:863D: 3B        .byte $3B	; <8>
- D - I - 0x02C64E 21:863E: 3C        .byte $3C	; <9>
- D - I - 0x02C64F 21:863F: 3E        .byte $3E	; <Jr>

- D - I - 0x02C650 21:8640: 08        .byte $08	; <く>
- D - I - 0x02C651 21:8641: 02        .byte $02	; <い>
- D - I - 0x02C652 21:8642: 34        .byte $34	; <1>
- D - I - 0x02C653 21:8643: 3A        .byte $3A	; <7>
- D - I - 0x02C654 21:8644: 38        .byte $38	; <5>
- D - I - 0x02C655 21:8645: 2B        .byte $2B	; <ろ>

- D - I - 0x02C656 21:8646: 01        .byte $01	; <あ>



off_8647:
- D - I - 0x02C657 21:8647: 00        .byte $00
- D - I - 0x02C658 21:8648: 01        .byte $01	; <あ>
- D - I - 0x02C659 21:8649: 38        .byte $38	; <5>
- D - I - 0x02C65A 21:864A: 6A        .byte $6A	; <レ>

- D - I - 0x02C65B 21:864B: 00        .byte $00
- D - I - 0x02C65C 21:864C: 02        .byte $02	; <い>
- D - I - 0x02C65D 21:864D: 38        .byte $38	; <5>
- D - I - 0x02C65E 21:864E: 2B        .byte $2B	; <ろ>
; продолжение


off_864F:
- D - I - 0x02C65F 21:864F: 08        .byte $08	; <く>
- D - I - 0x02C660 21:8650: 00        .byte $00
- D - I - 0x02C661 21:8651: 34        .byte $34	; <1>
- D - I - 0x02C662 21:8652: 2F        .byte $2F	; <っ>
- D - I - 0x02C663 21:8653: 38        .byte $38	; <5>
- D - I - 0x02C664 21:8654: 68        .byte $68	; <リ>

- D - I - 0x02C665 21:8655: 08        .byte $08	; <く>
- D - I - 0x02C666 21:8656: 01        .byte $01	; <あ>
- D - I - 0x02C667 21:8657: 34        .byte $34	; <1>
- D - I - 0x02C668 21:8658: 3F        .byte $3F	; <•>
- D - I - 0x02C669 21:8659: 3C        .byte $3C	; <9>
- D - I - 0x02C66A 21:865A: 3D        .byte $3D	; <+>

- D - I - 0x02C66B 21:865B: 00        .byte $00
- D - I - 0x02C66C 21:865C: 02        .byte $02	; <い>
- D - I - 0x02C66D 21:865D: 34        .byte $34	; <1>
- D - I - 0x02C66E 21:865E: 3A        .byte $3A	; <7>

- D - I - 0x02C66F 21:865F: 01        .byte $01	; <あ>



off_8660:
- D - I - 0x02C670 21:8660: 10        .byte $10	; <た>
- D - I - 0x02C671 21:8661: 01        .byte $01	; <あ>
- D - I - 0x02C672 21:8662: 34        .byte $34	; <1>
- D - I - 0x02C673 21:8663: 69        .byte $69	; <ル>
- D - I - 0x02C674 21:8664: 38        .byte $38	; <5>
- D - I - 0x02C675 21:8665: 29        .byte $29	; <る>
- D - I - 0x02C676 21:8666: 3C        .byte $3C	; <9>
- D - I - 0x02C677 21:8667: 2E        .byte $2E	; <ん>

- D - I - 0x02C678 21:8668: 08        .byte $08	; <く>
- D - I - 0x02C679 21:8669: 02        .byte $02	; <い>
- D - I - 0x02C67A 21:866A: 34        .byte $34	; <1>
- D - I - 0x02C67B 21:866B: 6B        .byte $6B	; <ロ>
- D - I - 0x02C67C 21:866C: 38        .byte $38	; <5>
- D - I - 0x02C67D 21:866D: 6E        .byte $6E	; <ン>

- D - I - 0x02C67E 21:866E: 02        .byte $02	; <い>
- D - I - 0x02C67F 21:866F: 29 86     .word off_8629



off_8671:
- D - I - 0x02C681 21:8671: 08        .byte $08	; <く>
- D - I - 0x02C682 21:8672: 01        .byte $01	; <あ>
- D - I - 0x02C683 21:8673: 34        .byte $34	; <1>
- D - I - 0x02C684 21:8674: 74        .byte $74	; <ィ>
- D - I - 0x02C685 21:8675: 38        .byte $38	; <5>
- D - I - 0x02C686 21:8676: 75        .byte $75	; <ェ>

off_8677:
- D - I - 0x02C687 21:8677: 08        .byte $08	; <く>
- D - I - 0x02C688 21:8678: 02        .byte $02	; <い>
- D - I - 0x02C689 21:8679: 34        .byte $34	; <1>
- D - I - 0x02C68A 21:867A: 76        .byte $76	; <ォ>
- D - I - 0x02C68B 21:867B: 38        .byte $38	; <5>
- D - I - 0x02C68C 21:867C: 77        .byte $77	; <:>

- D - I - 0x02C68D 21:867D: 01        .byte $01	; <あ>



off_867E:
- D - I - 0x02C68E 21:867E: 08        .byte $08	; <く>
- D - I - 0x02C68F 21:867F: 01        .byte $01	; <あ>
- D - I - 0x02C690 21:8680: 34        .byte $34	; <1>
- D - I - 0x02C691 21:8681: 70        .byte $70	; <ャ>
- D - I - 0x02C692 21:8682: 38        .byte $38	; <5>
- D - I - 0x02C693 21:8683: 71        .byte $71	; <ュ>

- D - I - 0x02C694 21:8684: 08        .byte $08	; <く>
- D - I - 0x02C695 21:8685: 02        .byte $02	; <い>
- D - I - 0x02C696 21:8686: 34        .byte $34	; <1>
- D - I - 0x02C697 21:8687: 2A        .byte $2A	; <れ>
- D - I - 0x02C698 21:8688: 38        .byte $38	; <5>
- D - I - 0x02C699 21:8689: 2B        .byte $2B	; <ろ>
; продолжение


off_868A:
- D - I - 0x02C69A 21:868A: 08        .byte $08	; <く>
- D - I - 0x02C69B 21:868B: 00        .byte $00
- D - I - 0x02C69C 21:868C: 34        .byte $34	; <1>
- D - I - 0x02C69D 21:868D: 65        .byte $65	; <ユ>
- D - I - 0x02C69E 21:868E: 38        .byte $38	; <5>
- D - I - 0x02C69F 21:868F: 67        .byte $67	; <ラ>

- D - I - 0x02C6A0 21:8690: 01        .byte $01	; <あ>



off_8691:
- D - I - 0x02C6A1 21:8691: 08        .byte $08	; <く>
- D - I - 0x02C6A2 21:8692: 01        .byte $01	; <あ>
- D - I - 0x02C6A3 21:8693: 34        .byte $34	; <1>
- D - I - 0x02C6A4 21:8694: 7C        .byte $7C	; <~>
- D - I - 0x02C6A5 21:8695: 38        .byte $38	; <5>
- D - I - 0x02C6A6 21:8696: 7D        .byte $7D	; <ー>

- D - I - 0x02C6A7 21:8697: 08        .byte $08	; <く>
- D - I - 0x02C6A8 21:8698: 02        .byte $02	; <い>
- D - I - 0x02C6A9 21:8699: 34        .byte $34	; <1>
- D - I - 0x02C6AA 21:869A: 7E        .byte $7E	; <.>
- D - I - 0x02C6AB 21:869B: 38        .byte $38	; <5>
- D - I - 0x02C6AC 21:869C: 7F        .byte $7F	; <,>

- D - I - 0x02C6AD 21:869D: 02        .byte $02	; <い>
- D - I - 0x02C6AE 21:869E: 8A 86     .word off_868A



off_86A1:
- D - I - 0x02C6B1 21:86A1: 08        .byte $08	; <く>
- D - I - 0x02C6B2 21:86A2: 00        .byte $00
- D - I - 0x02C6B3 21:86A3: 34        .byte $34	; <1>
- D - I - 0x02C6B4 21:86A4: 72        .byte $72	; <ョ>
- D - I - 0x02C6B5 21:86A5: 38        .byte $38	; <5>
- D - I - 0x02C6B6 21:86A6: 73        .byte $73	; <ヮ>

- D - I - 0x02C6B7 21:86A7: 10        .byte $10	; <た>
- D - I - 0x02C6B8 21:86A8: 01        .byte $01	; <あ>
- D - I - 0x02C6B9 21:86A9: 34        .byte $34	; <1>
- D - I - 0x02C6BA 21:86AA: 78        .byte $78	; <?>
- D - I - 0x02C6BB 21:86AB: 38        .byte $38	; <5>
- D - I - 0x02C6BC 21:86AC: 79        .byte $79	; <!>
- D - I - 0x02C6BD 21:86AD: 3C        .byte $3C	; <9>
- D - I - 0x02C6BE 21:86AE: 6C        .byte $6C	; <ワ>

- D - I - 0x02C6BF 21:86AF: 08        .byte $08	; <く>
- D - I - 0x02C6C0 21:86B0: 02        .byte $02	; <い>
- D - I - 0x02C6C1 21:86B1: 34        .byte $34	; <1>
- D - I - 0x02C6C2 21:86B2: 7A        .byte $7A	; <、>
- D - I - 0x02C6C3 21:86B3: 38        .byte $38	; <5>
- D - I - 0x02C6C4 21:86B4: 7B        .byte $7B	; <。>

- D - I - 0x02C6C5 21:86B5: 01        .byte $01	; <あ>



off_86B6:
- D - I - 0x02C6C6 21:86B6: 08        .byte $08	; <く>
- D - I - 0x02C6C7 21:86B7: 00        .byte $00
- D - I - 0x02C6C8 21:86B8: 34        .byte $34	; <1>
- D - I - 0x02C6C9 21:86B9: 6D        .byte $6D	; <ヲ>
- D - I - 0x02C6CA 21:86BA: 38        .byte $38	; <5>
- D - I - 0x02C6CB 21:86BB: 67        .byte $67	; <ラ>

- D - I - 0x02C6CC 21:86BC: 08        .byte $08	; <く>
- D - I - 0x02C6CD 21:86BD: 01        .byte $01	; <あ>
- D - I - 0x02C6CE 21:86BE: 34        .byte $34	; <1>
- D - I - 0x02C6CF 21:86BF: 6F        .byte $6F	; <ッ>
- D - I - 0x02C6D0 21:86C0: 38        .byte $38	; <5>
- D - I - 0x02C6D1 21:86C1: 81        .byte $81	; <A>

- D - I - 0x02C6D2 21:86C2: 08        .byte $08	; <く>
- D - I - 0x02C6D3 21:86C3: 02        .byte $02	; <い>
- D - I - 0x02C6D4 21:86C4: 34        .byte $34	; <1>
- D - I - 0x02C6D5 21:86C5: 3A        .byte $3A	; <7>
- D - I - 0x02C6D6 21:86C6: 38        .byte $38	; <5>
- D - I - 0x02C6D7 21:86C7: 2B        .byte $2B	; <ろ>

- D - I - 0x02C6D8 21:86C8: 01        .byte $01	; <あ>



off_86C9:
- D - I - 0x02C6D9 21:86C9: 10        .byte $10	; <た>
- D - I - 0x02C6DA 21:86CA: 01        .byte $01	; <あ>
- D - I - 0x02C6DB 21:86CB: 34        .byte $34	; <1>
- D - I - 0x02C6DC 21:86CC: 74        .byte $74	; <ィ>
- D - I - 0x02C6DD 21:86CD: 38        .byte $38	; <5>
- D - I - 0x02C6DE 21:86CE: 82        .byte $82	; <B>
- D - I - 0x02C6DF 21:86CF: 3C        .byte $3C	; <9>
- D - I - 0x02C6E0 21:86D0: 83        .byte $83	; <C>

- D - I - 0x02C6E1 21:86D1: 02        .byte $02	; <い>
- D - I - 0x02C6E2 21:86D2: 77 86     .word off_8677



off_86D4:
- D - I - 0x02C6E4 21:86D4: 08        .byte $08	; <く>
- D - I - 0x02C6E5 21:86D5: 00        .byte $00
- D - I - 0x02C6E6 21:86D6: 34        .byte $34	; <1>
- D - I - 0x02C6E7 21:86D7: 2C        .byte $2C	; <わ>
- D - I - 0x02C6E8 21:86D8: 38        .byte $38	; <5>
- D - I - 0x02C6E9 21:86D9: 67        .byte $67	; <ラ>

- D - I - 0x02C6EA 21:86DA: 08        .byte $08	; <く>
- D - I - 0x02C6EB 21:86DB: 01        .byte $01	; <あ>
- D - I - 0x02C6EC 21:86DC: 34        .byte $34	; <1>
- D - I - 0x02C6ED 21:86DD: 28        .byte $28	; <り>
- D - I - 0x02C6EE 21:86DE: 38        .byte $38	; <5>
- D - I - 0x02C6EF 21:86DF: 81        .byte $81	; <A>

- D - I - 0x02C6F0 21:86E0: 02        .byte $02	; <い>
- D - I - 0x02C6F1 21:86E1: 77 86     .word off_8677



off_86E3:
- D - I - 0x02C6F3 21:86E3: 00        .byte $00
- D - I - 0x02C6F4 21:86E4: 01        .byte $01	; <あ>
- D - I - 0x02C6F5 21:86E5: 38        .byte $38	; <5>
- D - I - 0x02C6F6 21:86E6: 84        .byte $84	; <D>

- D - I - 0x02C6F7 21:86E7: 00        .byte $00
- D - I - 0x02C6F8 21:86E8: 02        .byte $02	; <い>
- D - I - 0x02C6F9 21:86E9: 38        .byte $38	; <5>
- D - I - 0x02C6FA 21:86EA: 86        .byte $86	; <F>

- D - I - 0x02C6FB 21:86EB: 02        .byte $02	; <い>
- D - I - 0x02C6FC 21:86EC: 4F 86     .word off_864F



off_86EE_03:
- D - I - 0x02C6FE 21:86EE: 03        .byte $03	; <う>
- D - I - 0x02C6FF 21:86EF: 07 87     .word off_8707
- D - I - 0x02C701 21:86F1: 1C 87     .word off_871C
- D - I - 0x02C703 21:86F3: 33 87     .word off_8733
- D - I - 0x02C705 21:86F5: 4C 87     .word off_874C
- D - I - 0x02C707 21:86F7: 5D 87     .word off_875D
- D - I - 0x02C709 21:86F9: 6A 87     .word off_876A
- D - I - 0x02C70B 21:86FB: 7D 87     .word off_877D
- D - I - 0x02C70D 21:86FD: 8C 87     .word off_878C
- D - I - 0x02C70F 21:86FF: A1 87     .word off_87A1
- D - I - 0x02C711 21:8701: B4 87     .word off_87B4
- D - I - 0x02C713 21:8703: BF 87     .word off_87BF
- D - I - 0x02C715 21:8705: CE 87     .word off_87CE



off_8707:
- D - I - 0x02C717 21:8707: 10        .byte $10	; <た>
- D - I - 0x02C718 21:8708: 11        .byte $11	; <ち>
- D - I - 0x02C719 21:8709: 0C        .byte $0C	; <し>
- D - I - 0x02C71A 21:870A: 28        .byte $28	; <り>
- D - I - 0x02C71B 21:870B: 10        .byte $10	; <た>
- D - I - 0x02C71C 21:870C: 29        .byte $29	; <る>
- D - I - 0x02C71D 21:870D: 14        .byte $14	; <と>
- D - I - 0x02C71E 21:870E: 2E        .byte $2E	; <ん>

- D - I - 0x02C71F 21:870F: 08        .byte $08	; <く>
- D - I - 0x02C720 21:8710: 12        .byte $12	; <つ>
- D - I - 0x02C721 21:8711: 0C        .byte $0C	; <し>
- D - I - 0x02C722 21:8712: 2A        .byte $2A	; <れ>
- D - I - 0x02C723 21:8713: 10        .byte $10	; <た>
- D - I - 0x02C724 21:8714: 2B        .byte $2B	; <ろ>

off_8715:
- D - I - 0x02C725 21:8715: 08        .byte $08	; <く>
- D - I - 0x02C726 21:8716: 0F        .byte $0F	; <そ>
- D - I - 0x02C727 21:8717: 0C        .byte $0C	; <し>
- D - I - 0x02C728 21:8718: 2C        .byte $2C	; <わ>
- D - I - 0x02C729 21:8719: 10        .byte $10	; <た>
- D - I - 0x02C72A 21:871A: 2D        .byte $2D	; <を>

- D - I - 0x02C72B 21:871B: 01        .byte $01	; <あ>



off_871C:
- D - I - 0x02C72C 21:871C: 10        .byte $10	; <た>
- D - I - 0x02C72D 21:871D: 0F        .byte $0F	; <そ>
- D - I - 0x02C72E 21:871E: 0C        .byte $0C	; <し>
- D - I - 0x02C72F 21:871F: 2F        .byte $2F	; <っ>
- D - I - 0x02C730 21:8720: 10        .byte $10	; <た>
- D - I - 0x02C731 21:8721: 39        .byte $39	; <6>
- D - I - 0x02C732 21:8722: 14        .byte $14	; <と>
- D - I - 0x02C733 21:8723: 3C        .byte $3C	; <9>

- D - I - 0x02C734 21:8724: 10        .byte $10	; <た>
- D - I - 0x02C735 21:8725: 11        .byte $11	; <ち>
- D - I - 0x02C736 21:8726: 0C        .byte $0C	; <し>
- D - I - 0x02C737 21:8727: 38        .byte $38	; <5>
- D - I - 0x02C738 21:8728: 10        .byte $10	; <た>
- D - I - 0x02C739 21:8729: 3B        .byte $3B	; <8>
- D - I - 0x02C73A 21:872A: 14        .byte $14	; <と>
- D - I - 0x02C73B 21:872B: 3E        .byte $3E	; <Jr>

- D - I - 0x02C73C 21:872C: 08        .byte $08	; <く>
- D - I - 0x02C73D 21:872D: 12        .byte $12	; <つ>
- D - I - 0x02C73E 21:872E: 0C        .byte $0C	; <し>
- D - I - 0x02C73F 21:872F: 3A        .byte $3A	; <7>
- D - I - 0x02C740 21:8730: 10        .byte $10	; <た>
- D - I - 0x02C741 21:8731: 2B        .byte $2B	; <ろ>

- D - I - 0x02C742 21:8732: 01        .byte $01	; <あ>



off_8733:
- D - I - 0x02C743 21:8733: 00        .byte $00
- D - I - 0x02C744 21:8734: 11        .byte $11	; <ち>
- D - I - 0x02C745 21:8735: 10        .byte $10	; <た>
- D - I - 0x02C746 21:8736: 6A        .byte $6A	; <レ>

- D - I - 0x02C747 21:8737: 00        .byte $00
- D - I - 0x02C748 21:8738: 12        .byte $12	; <つ>
- D - I - 0x02C749 21:8739: 10        .byte $10	; <た>
- D - I - 0x02C74A 21:873A: 2B        .byte $2B	; <ろ>
; продолжение


off_873B:
- D - I - 0x02C74B 21:873B: 08        .byte $08	; <く>
- D - I - 0x02C74C 21:873C: 0F        .byte $0F	; <そ>
- D - I - 0x02C74D 21:873D: 0C        .byte $0C	; <し>
- D - I - 0x02C74E 21:873E: 2F        .byte $2F	; <っ>
- D - I - 0x02C74F 21:873F: 10        .byte $10	; <た>
- D - I - 0x02C750 21:8740: 68        .byte $68	; <リ>

- D - I - 0x02C751 21:8741: 08        .byte $08	; <く>
- D - I - 0x02C752 21:8742: 11        .byte $11	; <ち>
- D - I - 0x02C753 21:8743: 0C        .byte $0C	; <し>
- D - I - 0x02C754 21:8744: 3F        .byte $3F	; <•>
- D - I - 0x02C755 21:8745: 14        .byte $14	; <と>
- D - I - 0x02C756 21:8746: 3D        .byte $3D	; <+>

- D - I - 0x02C757 21:8747: 00        .byte $00
- D - I - 0x02C758 21:8748: 12        .byte $12	; <つ>
- D - I - 0x02C759 21:8749: 0C        .byte $0C	; <し>
- D - I - 0x02C75A 21:874A: 3A        .byte $3A	; <7>

- D - I - 0x02C75B 21:874B: 01        .byte $01	; <あ>



off_874C:
- D - I - 0x02C75C 21:874C: 10        .byte $10	; <た>
- D - I - 0x02C75D 21:874D: 11        .byte $11	; <ち>
- D - I - 0x02C75E 21:874E: 0C        .byte $0C	; <し>
- D - I - 0x02C75F 21:874F: 69        .byte $69	; <ル>
- D - I - 0x02C760 21:8750: 10        .byte $10	; <た>
- D - I - 0x02C761 21:8751: 29        .byte $29	; <る>
- D - I - 0x02C762 21:8752: 14        .byte $14	; <と>
- D - I - 0x02C763 21:8753: 2E        .byte $2E	; <ん>

- D - I - 0x02C764 21:8754: 08        .byte $08	; <く>
- D - I - 0x02C765 21:8755: 12        .byte $12	; <つ>
- D - I - 0x02C766 21:8756: 0C        .byte $0C	; <し>
- D - I - 0x02C767 21:8757: 6B        .byte $6B	; <ロ>
- D - I - 0x02C768 21:8758: 10        .byte $10	; <た>
- D - I - 0x02C769 21:8759: 6E        .byte $6E	; <ン>

- D - I - 0x02C76A 21:875A: 02        .byte $02	; <い>
- D - I - 0x02C76B 21:875B: 15 87     .word off_8715



off_875D:
- D - I - 0x02C76D 21:875D: 08        .byte $08	; <く>
- D - I - 0x02C76E 21:875E: 11        .byte $11	; <ち>
- D - I - 0x02C76F 21:875F: 0C        .byte $0C	; <し>
- D - I - 0x02C770 21:8760: 74        .byte $74	; <ィ>
- D - I - 0x02C771 21:8761: 10        .byte $10	; <た>
- D - I - 0x02C772 21:8762: 75        .byte $75	; <ェ>

off_8763:
- D - I - 0x02C773 21:8763: 08        .byte $08	; <く>
- D - I - 0x02C774 21:8764: 12        .byte $12	; <つ>
- D - I - 0x02C775 21:8765: 0C        .byte $0C	; <し>
- D - I - 0x02C776 21:8766: 76        .byte $76	; <ォ>
- D - I - 0x02C777 21:8767: 10        .byte $10	; <た>
- D - I - 0x02C778 21:8768: 77        .byte $77	; <:>

- D - I - 0x02C779 21:8769: 01        .byte $01	; <あ>



off_876A:
- D - I - 0x02C77A 21:876A: 08        .byte $08	; <く>
- D - I - 0x02C77B 21:876B: 11        .byte $11	; <ち>
- D - I - 0x02C77C 21:876C: 0C        .byte $0C	; <し>
- D - I - 0x02C77D 21:876D: 70        .byte $70	; <ャ>
- D - I - 0x02C77E 21:876E: 10        .byte $10	; <た>
- D - I - 0x02C77F 21:876F: 71        .byte $71	; <ュ>

- D - I - 0x02C780 21:8770: 08        .byte $08	; <く>
- D - I - 0x02C781 21:8771: 12        .byte $12	; <つ>
- D - I - 0x02C782 21:8772: 0C        .byte $0C	; <し>
- D - I - 0x02C783 21:8773: 2A        .byte $2A	; <れ>
- D - I - 0x02C784 21:8774: 10        .byte $10	; <た>
- D - I - 0x02C785 21:8775: 2B        .byte $2B	; <ろ>
; продолжение


off_8776:
- D - I - 0x02C786 21:8776: 08        .byte $08	; <く>
- D - I - 0x02C787 21:8777: 0F        .byte $0F	; <そ>
- D - I - 0x02C788 21:8778: 0C        .byte $0C	; <し>
- D - I - 0x02C789 21:8779: 65        .byte $65	; <ユ>
- D - I - 0x02C78A 21:877A: 10        .byte $10	; <た>
- D - I - 0x02C78B 21:877B: 67        .byte $67	; <ラ>

- D - I - 0x02C78C 21:877C: 01        .byte $01	; <あ>



off_877D:
- D - I - 0x02C78D 21:877D: 08        .byte $08	; <く>
- D - I - 0x02C78E 21:877E: 11        .byte $11	; <ち>
- D - I - 0x02C78F 21:877F: 0C        .byte $0C	; <し>
- D - I - 0x02C790 21:8780: 7C        .byte $7C	; <~>
- D - I - 0x02C791 21:8781: 10        .byte $10	; <た>
- D - I - 0x02C792 21:8782: 7D        .byte $7D	; <ー>

- D - I - 0x02C793 21:8783: 08        .byte $08	; <く>
- D - I - 0x02C794 21:8784: 12        .byte $12	; <つ>
- D - I - 0x02C795 21:8785: 0C        .byte $0C	; <し>
- D - I - 0x02C796 21:8786: 7E        .byte $7E	; <.>
- D - I - 0x02C797 21:8787: 10        .byte $10	; <た>
- D - I - 0x02C798 21:8788: 7F        .byte $7F	; <,>

- D - I - 0x02C799 21:8789: 02        .byte $02	; <い>
- D - I - 0x02C79A 21:878A: 76 87     .word off_8776



off_878C:
- D - I - 0x02C79C 21:878C: 08        .byte $08	; <く>
- D - I - 0x02C79D 21:878D: 0F        .byte $0F	; <そ>
- D - I - 0x02C79E 21:878E: 0C        .byte $0C	; <し>
- D - I - 0x02C79F 21:878F: 72        .byte $72	; <ョ>
- D - I - 0x02C7A0 21:8790: 10        .byte $10	; <た>
- D - I - 0x02C7A1 21:8791: 73        .byte $73	; <ヮ>

- D - I - 0x02C7A2 21:8792: 10        .byte $10	; <た>
- D - I - 0x02C7A3 21:8793: 11        .byte $11	; <ち>
- D - I - 0x02C7A4 21:8794: 0C        .byte $0C	; <し>
- D - I - 0x02C7A5 21:8795: 78        .byte $78	; <?>
- D - I - 0x02C7A6 21:8796: 10        .byte $10	; <た>
- D - I - 0x02C7A7 21:8797: 79        .byte $79	; <!>
- D - I - 0x02C7A8 21:8798: 14        .byte $14	; <と>
- D - I - 0x02C7A9 21:8799: 6C        .byte $6C	; <ワ>

- D - I - 0x02C7AA 21:879A: 08        .byte $08	; <く>
- D - I - 0x02C7AB 21:879B: 12        .byte $12	; <つ>
- D - I - 0x02C7AC 21:879C: 0C        .byte $0C	; <し>
- D - I - 0x02C7AD 21:879D: 7A        .byte $7A	; <、>
- D - I - 0x02C7AE 21:879E: 10        .byte $10	; <た>
- D - I - 0x02C7AF 21:879F: 7B        .byte $7B	; <。>

- D - I - 0x02C7B0 21:87A0: 01        .byte $01	; <あ>



off_87A1:
- D - I - 0x02C7B1 21:87A1: 08        .byte $08	; <く>
- D - I - 0x02C7B2 21:87A2: 0F        .byte $0F	; <そ>
- D - I - 0x02C7B3 21:87A3: 0C        .byte $0C	; <し>
- D - I - 0x02C7B4 21:87A4: 6D        .byte $6D	; <ヲ>
- D - I - 0x02C7B5 21:87A5: 10        .byte $10	; <た>
- D - I - 0x02C7B6 21:87A6: 67        .byte $67	; <ラ>

- D - I - 0x02C7B7 21:87A7: 08        .byte $08	; <く>
- D - I - 0x02C7B8 21:87A8: 11        .byte $11	; <ち>
- D - I - 0x02C7B9 21:87A9: 0C        .byte $0C	; <し>
- D - I - 0x02C7BA 21:87AA: 6F        .byte $6F	; <ッ>
- D - I - 0x02C7BB 21:87AB: 10        .byte $10	; <た>
- D - I - 0x02C7BC 21:87AC: 81        .byte $81	; <A>

- D - I - 0x02C7BD 21:87AD: 08        .byte $08	; <く>
- D - I - 0x02C7BE 21:87AE: 12        .byte $12	; <つ>
- D - I - 0x02C7BF 21:87AF: 0C        .byte $0C	; <し>
- D - I - 0x02C7C0 21:87B0: 3A        .byte $3A	; <7>
- D - I - 0x02C7C1 21:87B1: 10        .byte $10	; <た>
- D - I - 0x02C7C2 21:87B2: 2B        .byte $2B	; <ろ>

- D - I - 0x02C7C3 21:87B3: 01        .byte $01	; <あ>



off_87B4:
- D - I - 0x02C7C4 21:87B4: 10        .byte $10	; <た>
- D - I - 0x02C7C5 21:87B5: 11        .byte $11	; <ち>
- D - I - 0x02C7C6 21:87B6: 0C        .byte $0C	; <し>
- D - I - 0x02C7C7 21:87B7: 74        .byte $74	; <ィ>
- D - I - 0x02C7C8 21:87B8: 10        .byte $10	; <た>
- D - I - 0x02C7C9 21:87B9: 82        .byte $82	; <B>
- D - I - 0x02C7CA 21:87BA: 14        .byte $14	; <と>
- D - I - 0x02C7CB 21:87BB: 83        .byte $83	; <C>

- D - I - 0x02C7CC 21:87BC: 02        .byte $02	; <い>
- D - I - 0x02C7CD 21:87BD: 63 87     .word off_8763



off_87BF:
- D - I - 0x02C7CF 21:87BF: 08        .byte $08	; <く>
- D - I - 0x02C7D0 21:87C0: 0F        .byte $0F	; <そ>
- D - I - 0x02C7D1 21:87C1: 0C        .byte $0C	; <し>
- D - I - 0x02C7D2 21:87C2: 2C        .byte $2C	; <わ>
- D - I - 0x02C7D3 21:87C3: 10        .byte $10	; <た>
- D - I - 0x02C7D4 21:87C4: 67        .byte $67	; <ラ>

- D - I - 0x02C7D5 21:87C5: 08        .byte $08	; <く>
- D - I - 0x02C7D6 21:87C6: 11        .byte $11	; <ち>
- D - I - 0x02C7D7 21:87C7: 0C        .byte $0C	; <し>
- D - I - 0x02C7D8 21:87C8: 28        .byte $28	; <り>
- D - I - 0x02C7D9 21:87C9: 10        .byte $10	; <た>
- D - I - 0x02C7DA 21:87CA: 81        .byte $81	; <A>

- D - I - 0x02C7DB 21:87CB: 02        .byte $02	; <い>
- D - I - 0x02C7DC 21:87CC: 63 87     .word off_8763



off_87CE:
- D - I - 0x02C7DE 21:87CE: 00        .byte $00
- D - I - 0x02C7DF 21:87CF: 11        .byte $11	; <ち>
- D - I - 0x02C7E0 21:87D0: 10        .byte $10	; <た>
- D - I - 0x02C7E1 21:87D1: 84        .byte $84	; <D>

- D - I - 0x02C7E2 21:87D2: 00        .byte $00
- D - I - 0x02C7E3 21:87D3: 12        .byte $12	; <つ>
- D - I - 0x02C7E4 21:87D4: 10        .byte $10	; <た>
- D - I - 0x02C7E5 21:87D5: 86        .byte $86	; <F>

- D - I - 0x02C7E6 21:87D6: 02        .byte $02	; <い>
- D - I - 0x02C7E7 21:87D7: 3B 87     .word off_873B



off_87D9_04:
- D - I - 0x02C7E9 21:87D9: 03        .byte $03	; <う>
- D - I - 0x02C7EA 21:87DA: F2 87     .word off_87F2
- D - I - 0x02C7EC 21:87DC: F2 87     .word off_87F2
- D - I - 0x02C7EE 21:87DE: F2 87     .word off_87F2
- D - I - 0x02C7F0 21:87E0: F2 87     .word off_87F2
- D - I - 0x02C7F2 21:87E2: F2 87     .word off_87F2
- D - I - 0x02C7F4 21:87E4: F2 87     .word off_87F2
- D - I - 0x02C7F6 21:87E6: F2 87     .word off_87F2
- D - I - 0x02C7F8 21:87E8: 19 88     .word off_8819
- D - I - 0x02C7FA 21:87EA: F2 87     .word off_87F2
- D - I - 0x02C7FC 21:87EC: F2 87     .word off_87F2
- D - I - 0x02C7FE 21:87EE: F2 87     .word off_87F2
- D - I - 0x02C800 21:87F0: F2 87     .word off_87F2



off_87F2:
- D - I - 0x02C802 21:87F2: 00        .byte $00
- D - I - 0x02C803 21:87F3: 0D        .byte $0D	; <す>
- D - I - 0x02C804 21:87F4: 05        .byte $05	; <お>
- D - I - 0x02C805 21:87F5: 04        .byte $04	; <え>

- D - I - 0x02C806 21:87F6: 00        .byte $00
- D - I - 0x02C807 21:87F7: 0B        .byte $0B	; <さ>
- D - I - 0x02C808 21:87F8: 09        .byte $09	; <け>
- D - I - 0x02C809 21:87F9: 05        .byte $05	; <お>

- D - I - 0x02C80A 21:87FA: 00        .byte $00
- D - I - 0x02C80B 21:87FB: 01        .byte $01	; <あ>
- D - I - 0x02C80C 21:87FC: 0D        .byte $0D	; <す>
- D - I - 0x02C80D 21:87FD: 10        .byte $10	; <た>

- D - I - 0x02C80E 21:87FE: 00        .byte $00
- D - I - 0x02C80F 21:87FF: 0C        .byte $0C	; <し>
- D - I - 0x02C810 21:8800: 09        .byte $09	; <け>
- D - I - 0x02C811 21:8801: 02        .byte $02	; <い>

- D - I - 0x02C812 21:8802: 18        .byte $18	; <ね>
- D - I - 0x02C813 21:8803: 02        .byte $02	; <い>
- D - I - 0x02C814 21:8804: 0D        .byte $0D	; <す>
- D - I - 0x02C815 21:8805: 03        .byte $03	; <う>
- D - I - 0x02C816 21:8806: 11        .byte $11	; <ち>
- D - I - 0x02C817 21:8807: 06        .byte $06	; <か>
- D - I - 0x02C818 21:8808: 15        .byte $15	; <な>
- D - I - 0x02C819 21:8809: 07        .byte $07	; <き>
- D - I - 0x02C81A 21:880A: 19        .byte $19	; <の>
- D - I - 0x02C81B 21:880B: 12        .byte $12	; <つ>

- D - I - 0x02C81C 21:880C: 20        .byte $20	; <み>
- D - I - 0x02C81D 21:880D: 03        .byte $03	; <う>
- D - I - 0x02C81E 21:880E: 0D        .byte $0D	; <す>
- D - I - 0x02C81F 21:880F: 09        .byte $09	; <け>
- D - I - 0x02C820 21:8810: 0E        .byte $0E	; <せ>
- D - I - 0x02C821 21:8811: 0A        .byte $0A	; <こ>
- D - I - 0x02C822 21:8812: 11        .byte $11	; <ち>
- D - I - 0x02C823 21:8813: 0C        .byte $0C	; <し>
- D - I - 0x02C824 21:8814: 15        .byte $15	; <な>
- D - I - 0x02C825 21:8815: 0D        .byte $0D	; <す>
- D - I - 0x02C826 21:8816: 19        .byte $19	; <の>
- D - I - 0x02C827 21:8817: 18        .byte $18	; <ね>

- D - I - 0x02C828 21:8818: 01        .byte $01	; <あ>



off_8819:
- D - I - 0x02C829 21:8819: 00        .byte $00
- D - I - 0x02C82A 21:881A: 0D        .byte $0D	; <す>
- D - I - 0x02C82B 21:881B: 05        .byte $05	; <お>
- D - I - 0x02C82C 21:881C: 04        .byte $04	; <え>

- D - I - 0x02C82D 21:881D: 00        .byte $00
- D - I - 0x02C82E 21:881E: 0B        .byte $0B	; <さ>
- D - I - 0x02C82F 21:881F: 09        .byte $09	; <け>
- D - I - 0x02C830 21:8820: 50        .byte $50	; <タ>

- D - I - 0x02C831 21:8821: 00        .byte $00
- D - I - 0x02C832 21:8822: 01        .byte $01	; <あ>
- D - I - 0x02C833 21:8823: 0D        .byte $0D	; <す>
- D - I - 0x02C834 21:8824: 51        .byte $51	; <チ>

- D - I - 0x02C835 21:8825: 00        .byte $00
- D - I - 0x02C836 21:8826: 0C        .byte $0C	; <し>
- D - I - 0x02C837 21:8827: 09        .byte $09	; <け>
- D - I - 0x02C838 21:8828: 52        .byte $52	; <ツ>

- D - I - 0x02C839 21:8829: 18        .byte $18	; <ね>
- D - I - 0x02C83A 21:882A: 02        .byte $02	; <い>
- D - I - 0x02C83B 21:882B: 0D        .byte $0D	; <す>
- D - I - 0x02C83C 21:882C: 53        .byte $53	; <テ>
- D - I - 0x02C83D 21:882D: 11        .byte $11	; <ち>
- D - I - 0x02C83E 21:882E: 56        .byte $56	; <ニ>
- D - I - 0x02C83F 21:882F: 15        .byte $15	; <な>
- D - I - 0x02C840 21:8830: 57        .byte $57	; <ヌ>
- D - I - 0x02C841 21:8831: 19        .byte $19	; <の>
- D - I - 0x02C842 21:8832: 12        .byte $12	; <つ>

- D - I - 0x02C843 21:8833: 20        .byte $20	; <み>
- D - I - 0x02C844 21:8834: 03        .byte $03	; <う>
- D - I - 0x02C845 21:8835: 0D        .byte $0D	; <す>
- D - I - 0x02C846 21:8836: 09        .byte $09	; <け>
- D - I - 0x02C847 21:8837: 0E        .byte $0E	; <せ>
- D - I - 0x02C848 21:8838: 0A        .byte $0A	; <こ>
- D - I - 0x02C849 21:8839: 11        .byte $11	; <ち>
- D - I - 0x02C84A 21:883A: 0C        .byte $0C	; <し>
- D - I - 0x02C84B 21:883B: 15        .byte $15	; <な>
- D - I - 0x02C84C 21:883C: 0D        .byte $0D	; <す>
- D - I - 0x02C84D 21:883D: 19        .byte $19	; <の>
- D - I - 0x02C84E 21:883E: 18        .byte $18	; <ね>

- D - I - 0x02C84F 21:883F: 01        .byte $01	; <あ>



off_8840_05:
- D - I - 0x02C850 21:8840: 03        .byte $03	; <う>
- D - I - 0x02C851 21:8841: 59 88     .word off_8859
- D - I - 0x02C853 21:8843: 59 88     .word off_8859
- D - I - 0x02C855 21:8845: 59 88     .word off_8859
- D - I - 0x02C857 21:8847: 59 88     .word off_8859
- D - I - 0x02C859 21:8849: 59 88     .word off_8859
- D - I - 0x02C85B 21:884B: 59 88     .word off_8859
- D - I - 0x02C85D 21:884D: 59 88     .word off_8859
- D - I - 0x02C85F 21:884F: 7C 88     .word off_887C
- D - I - 0x02C861 21:8851: 59 88     .word off_8859
- D - I - 0x02C863 21:8853: 59 88     .word off_8859
- D - I - 0x02C865 21:8855: 59 88     .word off_8859
- D - I - 0x02C867 21:8857: 59 88     .word off_8859



off_8859:
- D - I - 0x02C869 21:8859: 10        .byte $10	; <た>
- D - I - 0x02C86A 21:885A: 01        .byte $01	; <あ>
- D - I - 0x02C86B 21:885B: 05        .byte $05	; <お>
- D - I - 0x02C86C 21:885C: 14        .byte $14	; <と>
- D - I - 0x02C86D 21:885D: 09        .byte $09	; <け>
- D - I - 0x02C86E 21:885E: 15        .byte $15	; <な>
- D - I - 0x02C86F 21:885F: 0D        .byte $0D	; <す>
- D - I - 0x02C870 21:8860: 40        .byte $40	; <「>

- D - I - 0x02C871 21:8861: 28        .byte $28	; <り>
- D - I - 0x02C872 21:8862: 02        .byte $02	; <い>
- D - I - 0x02C873 21:8863: 05        .byte $05	; <お>
- D - I - 0x02C874 21:8864: 16        .byte $16	; <に>
- D - I - 0x02C875 21:8865: 09        .byte $09	; <け>
- D - I - 0x02C876 21:8866: 17        .byte $17	; <ぬ>
- D - I - 0x02C877 21:8867: 0D        .byte $0D	; <す>
- D - I - 0x02C878 21:8868: 42        .byte $42	; <イ>
- D - I - 0x02C879 21:8869: 11        .byte $11	; <ち>
- D - I - 0x02C87A 21:886A: 43        .byte $43	; <ウ>
- D - I - 0x02C87B 21:886B: 15        .byte $15	; <な>
- D - I - 0x02C87C 21:886C: 46        .byte $46	; <カ>
- D - I - 0x02C87D 21:886D: 19        .byte $19	; <の>
- D - I - 0x02C87E 21:886E: 47        .byte $47	; <キ>

- D - I - 0x02C87F 21:886F: 20        .byte $20	; <み>
- D - I - 0x02C880 21:8870: 03        .byte $03	; <う>
- D - I - 0x02C881 21:8871: 0D        .byte $0D	; <す>
- D - I - 0x02C882 21:8872: 09        .byte $09	; <け>
- D - I - 0x02C883 21:8873: 0E        .byte $0E	; <せ>
- D - I - 0x02C884 21:8874: 0A        .byte $0A	; <こ>
- D - I - 0x02C885 21:8875: 11        .byte $11	; <ち>
- D - I - 0x02C886 21:8876: 49        .byte $49	; <ケ>
- D - I - 0x02C887 21:8877: 15        .byte $15	; <な>
- D - I - 0x02C888 21:8878: 4C        .byte $4C	; <シ>
- D - I - 0x02C889 21:8879: 19        .byte $19	; <の>
- D - I - 0x02C88A 21:887A: 4D        .byte $4D	; <ス>

- D - I - 0x02C88B 21:887B: 01        .byte $01	; <あ>



off_887C:
- D - I - 0x02C88C 21:887C: 10        .byte $10	; <た>
- D - I - 0x02C88D 21:887D: 01        .byte $01	; <あ>
- D - I - 0x02C88E 21:887E: 05        .byte $05	; <お>
- D - I - 0x02C88F 21:887F: 14        .byte $14	; <と>
- D - I - 0x02C890 21:8880: 09        .byte $09	; <け>
- D - I - 0x02C891 21:8881: 58        .byte $58	; <ネ>
- D - I - 0x02C892 21:8882: 0D        .byte $0D	; <す>
- D - I - 0x02C893 21:8883: 59        .byte $59	; <ノ>

- D - I - 0x02C894 21:8884: 28        .byte $28	; <り>
- D - I - 0x02C895 21:8885: 02        .byte $02	; <い>
- D - I - 0x02C896 21:8886: 05        .byte $05	; <お>
- D - I - 0x02C897 21:8887: 16        .byte $16	; <に>
- D - I - 0x02C898 21:8888: 09        .byte $09	; <け>
- D - I - 0x02C899 21:8889: 5A        .byte $5A	; <ハ>
- D - I - 0x02C89A 21:888A: 0D        .byte $0D	; <す>
- D - I - 0x02C89B 21:888B: 5B        .byte $5B	; <ヒ>
- D - I - 0x02C89C 21:888C: 11        .byte $11	; <ち>
- D - I - 0x02C89D 21:888D: 43        .byte $43	; <ウ>
- D - I - 0x02C89E 21:888E: 15        .byte $15	; <な>
- D - I - 0x02C89F 21:888F: 4F        .byte $4F	; <ソ>
- D - I - 0x02C8A0 21:8890: 19        .byte $19	; <の>
- D - I - 0x02C8A1 21:8891: 47        .byte $47	; <キ>

- D - I - 0x02C8A2 21:8892: 20        .byte $20	; <み>
- D - I - 0x02C8A3 21:8893: 03        .byte $03	; <う>
- D - I - 0x02C8A4 21:8894: 0D        .byte $0D	; <す>
- D - I - 0x02C8A5 21:8895: 09        .byte $09	; <け>
- D - I - 0x02C8A6 21:8896: 0E        .byte $0E	; <せ>
- D - I - 0x02C8A7 21:8897: 0A        .byte $0A	; <こ>
- D - I - 0x02C8A8 21:8898: 11        .byte $11	; <ち>
- D - I - 0x02C8A9 21:8899: 54        .byte $54	; <ト>
- D - I - 0x02C8AA 21:889A: 15        .byte $15	; <な>
- D - I - 0x02C8AB 21:889B: 55        .byte $55	; <ナ>
- D - I - 0x02C8AC 21:889C: 19        .byte $19	; <の>
- D - I - 0x02C8AD 21:889D: 4D        .byte $4D	; <ス>

- D - I - 0x02C8AE 21:889E: 01        .byte $01	; <あ>



off_889F_06:
- D - I - 0x02C8AF 21:889F: 00        .byte $00
- D - I - 0x02C8B0 21:88A0: 0E        .byte $0E	; <せ>
- D - I - 0x02C8B1 21:88A1: 03        .byte $03	; <う>
- D - I - 0x02C8B2 21:88A2: 33        .byte $33	; <0>
; продолжение


off_88A3:
- D - I - 0x02C8B3 21:88A3: 10        .byte $10	; <た>
- D - I - 0x02C8B4 21:88A4: 04        .byte $04	; <え>
- D - I - 0x02C8B5 21:88A5: 22        .byte $22	; <め>
- D - I - 0x02C8B6 21:88A6: 0B        .byte $0B	; <さ>
- D - I - 0x02C8B7 21:88A7: 2A        .byte $2A	; <れ>
- D - I - 0x02C8B8 21:88A8: 0E        .byte $0E	; <せ>
- D - I - 0x02C8B9 21:88A9: 2E        .byte $2E	; <ん>
- D - I - 0x02C8BA 21:88AA: 0F        .byte $0F	; <そ>

- D - I - 0x02C8BB 21:88AB: 18        .byte $18	; <ね>
- D - I - 0x02C8BC 21:88AC: 05        .byte $05	; <お>
- D - I - 0x02C8BD 21:88AD: 09        .byte $09	; <け>
- D - I - 0x02C8BE 21:88AE: 20        .byte $20	; <み>
- D - I - 0x02C8BF 21:88AF: 0D        .byte $0D	; <す>
- D - I - 0x02C8C0 21:88B0: 21        .byte $21	; <む>
- D - I - 0x02C8C1 21:88B1: 11        .byte $11	; <ち>
- D - I - 0x02C8C2 21:88B2: 24        .byte $24	; <や>
- D - I - 0x02C8C3 21:88B3: 15        .byte $15	; <な>
- D - I - 0x02C8C4 21:88B4: 25        .byte $25	; <ゆ>

- D - I - 0x02C8C5 21:88B5: 20        .byte $20	; <み>
- D - I - 0x02C8C6 21:88B6: 06        .byte $06	; <か>
- D - I - 0x02C8C7 21:88B7: 1D        .byte $1D	; <へ>
- D - I - 0x02C8C8 21:88B8: 22        .byte $22	; <め>
- D - I - 0x02C8C9 21:88B9: 25        .byte $25	; <ゆ>
- D - I - 0x02C8CA 21:88BA: 23        .byte $23	; <も>
- D - I - 0x02C8CB 21:88BB: 11        .byte $11	; <ち>
- D - I - 0x02C8CC 21:88BC: 26        .byte $26	; <よ>
- D - I - 0x02C8CD 21:88BD: 15        .byte $15	; <な>
- D - I - 0x02C8CE 21:88BE: 27        .byte $27	; <ら>
- D - I - 0x02C8CF 21:88BF: 17        .byte $17	; <ぬ>
- D - I - 0x02C8D0 21:88C0: 0A        .byte $0A	; <こ>

- D - I - 0x02C8D1 21:88C1: 10        .byte $10	; <た>
- D - I - 0x02C8D2 21:88C2: 07        .byte $07	; <き>
- D - I - 0x02C8D3 21:88C3: 05        .byte $05	; <お>
- D - I - 0x02C8D4 21:88C4: 1A        .byte $1A	; <は>
- D - I - 0x02C8D5 21:88C5: 09        .byte $09	; <け>
- D - I - 0x02C8D6 21:88C6: 1B        .byte $1B	; <ひ>
- D - I - 0x02C8D7 21:88C7: 15        .byte $15	; <な>
- D - I - 0x02C8D8 21:88C8: 08        .byte $08	; <く>

- D - I - 0x02C8D9 21:88C9: 08        .byte $08	; <く>
- D - I - 0x02C8DA 21:88CA: 08        .byte $08	; <く>
- D - I - 0x02C8DB 21:88CB: 05        .byte $05	; <お>
- D - I - 0x02C8DC 21:88CC: 30        .byte $30	; <ゃ>
- D - I - 0x02C8DD 21:88CD: 09        .byte $09	; <け>
- D - I - 0x02C8DE 21:88CE: 31        .byte $31	; <ゅ>

- D - I - 0x02C8DF 21:88CF: 00        .byte $00
- D - I - 0x02C8E0 21:88D0: 09        .byte $09	; <け>
- D - I - 0x02C8E1 21:88D1: 07        .byte $07	; <き>
- D - I - 0x02C8E2 21:88D2: 32        .byte $32	; <ょ>

- D - I - 0x02C8E3 21:88D3: 01        .byte $01	; <あ>



off_88D4_07:
off_88D4:
- D - I - 0x02C8E4 21:88D4: 10        .byte $10	; <た>
- D - I - 0x02C8E5 21:88D5: 04        .byte $04	; <え>
- D - I - 0x02C8E6 21:88D6: 0A        .byte $0A	; <こ>
- D - I - 0x02C8E7 21:88D7: 11        .byte $11	; <ち>
- D - I - 0x02C8E8 21:88D8: 0E        .byte $0E	; <せ>
- D - I - 0x02C8E9 21:88D9: 44        .byte $44	; <エ>
- D - I - 0x02C8EA 21:88DA: 12        .byte $12	; <つ>
- D - I - 0x02C8EB 21:88DB: 45        .byte $45	; <オ>

- D - I - 0x02C8EC 21:88DC: 08        .byte $08	; <く>
- D - I - 0x02C8ED 21:88DD: 05        .byte $05	; <お>
- D - I - 0x02C8EE 21:88DE: 35        .byte $35	; <2>
- D - I - 0x02C8EF 21:88DF: 34        .byte $34	; <1>
- D - I - 0x02C8F0 21:88E0: 39        .byte $39	; <6>
- D - I - 0x02C8F1 21:88E1: 35        .byte $35	; <2>

- D - I - 0x02C8F2 21:88E2: 08        .byte $08	; <く>
- D - I - 0x02C8F3 21:88E3: 06        .byte $06	; <か>
- D - I - 0x02C8F4 21:88E4: 35        .byte $35	; <2>
- D - I - 0x02C8F5 21:88E5: 36        .byte $36	; <3>
- D - I - 0x02C8F6 21:88E6: 39        .byte $39	; <6>
- D - I - 0x02C8F7 21:88E7: 37        .byte $37	; <4>

- D - I - 0x02C8F8 21:88E8: 00        .byte $00
- D - I - 0x02C8F9 21:88E9: 0A        .byte $0A	; <こ>
- D - I - 0x02C8FA 21:88EA: 33        .byte $33	; <0>
- D - I - 0x02C8FB 21:88EB: 0A        .byte $0A	; <こ>

- D - I - 0x02C8FC 21:88EC: 00        .byte $00
- D - I - 0x02C8FD 21:88ED: 05        .byte $05	; <お>
- D - I - 0x02C8FE 21:88EE: 0D        .byte $0D	; <す>
- D - I - 0x02C8FF 21:88EF: 60        .byte $60	; <ミ>

- D - I - 0x02C900 21:88F0: 08        .byte $08	; <く>
- D - I - 0x02C901 21:88F1: 06        .byte $06	; <か>
- D - I - 0x02C902 21:88F2: 0D        .byte $0D	; <す>
- D - I - 0x02C903 21:88F3: 62        .byte $62	; <メ>
- D - I - 0x02C904 21:88F4: 11        .byte $11	; <ち>
- D - I - 0x02C905 21:88F5: 63        .byte $63	; <モ>

- D - I - 0x02C906 21:88F6: 08        .byte $08	; <く>
- D - I - 0x02C907 21:88F7: 07        .byte $07	; <き>
- D - I - 0x02C908 21:88F8: 0D        .byte $0D	; <す>
- D - I - 0x02C909 21:88F9: 1C        .byte $1C	; <ふ>
- D - I - 0x02C90A 21:88FA: 11        .byte $11	; <ち>
- D - I - 0x02C90B 21:88FB: 1D        .byte $1D	; <へ>

- D - I - 0x02C90C 21:88FC: 00        .byte $00
- D - I - 0x02C90D 21:88FD: 08        .byte $08	; <く>
- D - I - 0x02C90E 21:88FE: 39        .byte $39	; <6>
- D - I - 0x02C90F 21:88FF: 48        .byte $48	; <ク>

- D - I - 0x02C910 21:8900: 08        .byte $08	; <く>
- D - I - 0x02C911 21:8901: 09        .byte $09	; <け>
- D - I - 0x02C912 21:8902: 0F        .byte $0F	; <そ>
- D - I - 0x02C913 21:8903: 1E        .byte $1E	; <ほ>
- D - I - 0x02C914 21:8904: 13        .byte $13	; <て>
- D - I - 0x02C915 21:8905: 1F        .byte $1F	; <ま>

- D - I - 0x02C916 21:8906: 01        .byte $01	; <あ>



off_8907_08:
- D - I - 0x02C917 21:8907: 00        .byte $00
- D - I - 0x02C918 21:8908: 0E        .byte $0E	; <せ>
- D - I - 0x02C919 21:8909: 53        .byte $53	; <テ>
- D - I - 0x02C91A 21:890A: 33        .byte $33	; <0>
; продолжение


off_890B:
- D - I - 0x02C91B 21:890B: 10        .byte $10	; <た>
- D - I - 0x02C91C 21:890C: 04        .byte $04	; <え>
- D - I - 0x02C91D 21:890D: 0A        .byte $0A	; <こ>
- D - I - 0x02C91E 21:890E: 11        .byte $11	; <ち>
- D - I - 0x02C91F 21:890F: 0E        .byte $0E	; <せ>
- D - I - 0x02C920 21:8910: 13        .byte $13	; <て>
- D - I - 0x02C921 21:8911: 12        .byte $12	; <つ>
- D - I - 0x02C922 21:8912: 19        .byte $19	; <の>

- D - I - 0x02C923 21:8913: 10        .byte $10	; <た>
- D - I - 0x02C924 21:8914: 05        .byte $05	; <お>
- D - I - 0x02C925 21:8915: 41        .byte $41	; <ア>
- D - I - 0x02C926 21:8916: 20        .byte $20	; <み>
- D - I - 0x02C927 21:8917: 45        .byte $45	; <オ>
- D - I - 0x02C928 21:8918: 21        .byte $21	; <む>
- D - I - 0x02C929 21:8919: 11        .byte $11	; <ち>
- D - I - 0x02C92A 21:891A: 25        .byte $25	; <ゆ>

- D - I - 0x02C92B 21:891B: 20        .byte $20	; <み>
- D - I - 0x02C92C 21:891C: 06        .byte $06	; <か>
- D - I - 0x02C92D 21:891D: 49        .byte $49	; <ケ>
- D - I - 0x02C92E 21:891E: 22        .byte $22	; <め>
- D - I - 0x02C92F 21:891F: 4D        .byte $4D	; <ス>
- D - I - 0x02C930 21:8920: 23        .byte $23	; <も>
- D - I - 0x02C931 21:8921: 0D        .byte $0D	; <す>
- D - I - 0x02C932 21:8922: 26        .byte $26	; <よ>
- D - I - 0x02C933 21:8923: 11        .byte $11	; <ち>
- D - I - 0x02C934 21:8924: 27        .byte $27	; <ら>
- D - I - 0x02C935 21:8925: 13        .byte $13	; <て>
- D - I - 0x02C936 21:8926: 0A        .byte $0A	; <こ>

- D - I - 0x02C937 21:8927: 10        .byte $10	; <た>
- D - I - 0x02C938 21:8928: 07        .byte $07	; <き>
- D - I - 0x02C939 21:8929: 55        .byte $55	; <ナ>
- D - I - 0x02C93A 21:892A: 1A        .byte $1A	; <は>
- D - I - 0x02C93B 21:892B: 41        .byte $41	; <ア>
- D - I - 0x02C93C 21:892C: 1B        .byte $1B	; <ひ>
- D - I - 0x02C93D 21:892D: 11        .byte $11	; <ち>
- D - I - 0x02C93E 21:892E: 08        .byte $08	; <く>

- D - I - 0x02C93F 21:892F: 08        .byte $08	; <く>
- D - I - 0x02C940 21:8930: 08        .byte $08	; <く>
- D - I - 0x02C941 21:8931: 55        .byte $55	; <ナ>
- D - I - 0x02C942 21:8932: 30        .byte $30	; <ゃ>
- D - I - 0x02C943 21:8933: 41        .byte $41	; <ア>
- D - I - 0x02C944 21:8934: 31        .byte $31	; <ゅ>

- D - I - 0x02C945 21:8935: 00        .byte $00
- D - I - 0x02C946 21:8936: 09        .byte $09	; <け>
- D - I - 0x02C947 21:8937: 57        .byte $57	; <ヌ>
- D - I - 0x02C948 21:8938: 32        .byte $32	; <ょ>

- D - I - 0x02C949 21:8939: 01        .byte $01	; <あ>



off_893A_09:
off_893A:
- D - I - 0x02C94A 21:893A: 10        .byte $10	; <た>
- D - I - 0x02C94B 21:893B: 04        .byte $04	; <え>
- D - I - 0x02C94C 21:893C: 5A        .byte $5A	; <ハ>
- D - I - 0x02C94D 21:893D: 4A        .byte $4A	; <コ>
- D - I - 0x02C94E 21:893E: 5E        .byte $5E	; <ホ>
- D - I - 0x02C94F 21:893F: 4B        .byte $4B	; <サ>
- D - I - 0x02C950 21:8940: 62        .byte $62	; <メ>
- D - I - 0x02C951 21:8941: 4E        .byte $4E	; <セ>

- D - I - 0x02C952 21:8942: 18        .byte $18	; <ね>
- D - I - 0x02C953 21:8943: 05        .byte $05	; <お>
- D - I - 0x02C954 21:8944: 09        .byte $09	; <け>
- D - I - 0x02C955 21:8945: 34        .byte $34	; <1>
- D - I - 0x02C956 21:8946: 0D        .byte $0D	; <す>
- D - I - 0x02C957 21:8947: 35        .byte $35	; <2>
- D - I - 0x02C958 21:8948: 11        .byte $11	; <ち>
- D - I - 0x02C959 21:8949: 60        .byte $60	; <ミ>
- D - I - 0x02C95A 21:894A: 15        .byte $15	; <な>
- D - I - 0x02C95B 21:894B: 61        .byte $61	; <ム>

- D - I - 0x02C95C 21:894C: 18        .byte $18	; <ね>
- D - I - 0x02C95D 21:894D: 06        .byte $06	; <か>
- D - I - 0x02C95E 21:894E: 09        .byte $09	; <け>
- D - I - 0x02C95F 21:894F: 36        .byte $36	; <3>
- D - I - 0x02C960 21:8950: 0D        .byte $0D	; <す>
- D - I - 0x02C961 21:8951: 37        .byte $37	; <4>
- D - I - 0x02C962 21:8952: 11        .byte $11	; <ち>
- D - I - 0x02C963 21:8953: 62        .byte $62	; <メ>
- D - I - 0x02C964 21:8954: 15        .byte $15	; <な>
- D - I - 0x02C965 21:8955: 63        .byte $63	; <モ>

- D - I - 0x02C966 21:8956: 00        .byte $00
- D - I - 0x02C967 21:8957: 0A        .byte $0A	; <こ>
- D - I - 0x02C968 21:8958: 67        .byte $67	; <ラ>
- D - I - 0x02C969 21:8959: 0A        .byte $0A	; <こ>

- D - I - 0x02C96A 21:895A: 08        .byte $08	; <く>
- D - I - 0x02C96B 21:895B: 07        .byte $07	; <き>
- D - I - 0x02C96C 21:895C: 11        .byte $11	; <ち>
- D - I - 0x02C96D 21:895D: 1C        .byte $1C	; <ふ>
- D - I - 0x02C96E 21:895E: 15        .byte $15	; <な>
- D - I - 0x02C96F 21:895F: 1D        .byte $1D	; <へ>

- D - I - 0x02C970 21:8960: 00        .byte $00
- D - I - 0x02C971 21:8961: 08        .byte $08	; <く>
- D - I - 0x02C972 21:8962: 3D        .byte $3D	; <+>
- D - I - 0x02C973 21:8963: 48        .byte $48	; <ク>

- D - I - 0x02C974 21:8964: 08        .byte $08	; <く>
- D - I - 0x02C975 21:8965: 09        .byte $09	; <け>
- D - I - 0x02C976 21:8966: 13        .byte $13	; <て>
- D - I - 0x02C977 21:8967: 1E        .byte $1E	; <ほ>
- D - I - 0x02C978 21:8968: 17        .byte $17	; <ぬ>
- D - I - 0x02C979 21:8969: 1F        .byte $1F	; <ま>

- D - I - 0x02C97A 21:896A: 01        .byte $01	; <あ>



off_896B_0A:
- D - I - 0x02C97B 21:896B: 08        .byte $08	; <く>
- D - I - 0x02C97C 21:896C: 08        .byte $08	; <く>
- D - I - 0x02C97D 21:896D: 03        .byte $03	; <う>
- D - I - 0x02C97E 21:896E: 5C        .byte $5C	; <フ>
- D - I - 0x02C97F 21:896F: 07        .byte $07	; <き>
- D - I - 0x02C980 21:8970: 5D        .byte $5D	; <ヘ>

- D - I - 0x02C981 21:8971: 08        .byte $08	; <く>
- D - I - 0x02C982 21:8972: 09        .byte $09	; <け>
- D - I - 0x02C983 21:8973: 03        .byte $03	; <う>
- D - I - 0x02C984 21:8974: 5E        .byte $5E	; <ホ>
- D - I - 0x02C985 21:8975: 07        .byte $07	; <き>
- D - I - 0x02C986 21:8976: 5F        .byte $5F	; <マ>

- D - I - 0x02C987 21:8977: 02        .byte $02	; <い>
- D - I - 0x02C988 21:8978: A3 88     .word off_88A3



off_897A_0B:
- D - I - 0x02C98A 21:897A: 08        .byte $08	; <く>
- D - I - 0x02C98B 21:897B: 14        .byte $14	; <と>
- D - I - 0x02C98C 21:897C: 6B        .byte $6B	; <ロ>
- D - I - 0x02C98D 21:897D: F2        .byte $F2
- D - I - 0x02C98E 21:897E: 03        .byte $03	; <う>
- D - I - 0x02C98F 21:897F: F3        .byte $F3

- D - I - 0x02C990 21:8980: 08        .byte $08	; <く>
- D - I - 0x02C991 21:8981: 15        .byte $15	; <な>
- D - I - 0x02C992 21:8982: 6B        .byte $6B	; <ロ>
- D - I - 0x02C993 21:8983: F4        .byte $F4
- D - I - 0x02C994 21:8984: 03        .byte $03	; <う>
- D - I - 0x02C995 21:8985: F5        .byte $F5

- D - I - 0x02C996 21:8986: 00        .byte $00
- D - I - 0x02C997 21:8987: 09        .byte $09	; <け>
- D - I - 0x02C998 21:8988: 6F        .byte $6F	; <ッ>
- D - I - 0x02C999 21:8989: 66        .byte $66	; <ヨ>

- D - I - 0x02C99A 21:898A: 02        .byte $02	; <い>
- D - I - 0x02C99B 21:898B: D4 88     .word off_88D4



off_898D_0C:
- D - I - 0x02C99D 21:898D: 08        .byte $08	; <く>
- D - I - 0x02C99E 21:898E: 08        .byte $08	; <く>
- D - I - 0x02C99F 21:898F: 03        .byte $03	; <う>
- D - I - 0x02C9A0 21:8990: 5C        .byte $5C	; <フ>
- D - I - 0x02C9A1 21:8991: 07        .byte $07	; <き>
- D - I - 0x02C9A2 21:8992: 5D        .byte $5D	; <ヘ>

- D - I - 0x02C9A3 21:8993: 08        .byte $08	; <く>
- D - I - 0x02C9A4 21:8994: 09        .byte $09	; <け>
- D - I - 0x02C9A5 21:8995: 03        .byte $03	; <う>
- D - I - 0x02C9A6 21:8996: 5E        .byte $5E	; <ホ>
- D - I - 0x02C9A7 21:8997: 07        .byte $07	; <き>
- D - I - 0x02C9A8 21:8998: 5F        .byte $5F	; <マ>

- D - I - 0x02C9A9 21:8999: 02        .byte $02	; <い>
- D - I - 0x02C9AA 21:899A: 0B 89     .word off_890B



off_899C_0D:
- D - I - 0x02C9AC 21:899C: 08        .byte $08	; <く>
- D - I - 0x02C9AD 21:899D: 14        .byte $14	; <と>
- D - I - 0x02C9AE 21:899E: 53        .byte $53	; <テ>
- D - I - 0x02C9AF 21:899F: F2        .byte $F2
- D - I - 0x02C9B0 21:89A0: 57        .byte $57	; <ヌ>
- D - I - 0x02C9B1 21:89A1: F3        .byte $F3

- D - I - 0x02C9B2 21:89A2: 08        .byte $08	; <く>
- D - I - 0x02C9B3 21:89A3: 15        .byte $15	; <な>
- D - I - 0x02C9B4 21:89A4: 53        .byte $53	; <テ>
- D - I - 0x02C9B5 21:89A5: F4        .byte $F4
- D - I - 0x02C9B6 21:89A6: 57        .byte $57	; <ヌ>
- D - I - 0x02C9B7 21:89A7: F5        .byte $F5

- D - I - 0x02C9B8 21:89A8: 00        .byte $00
- D - I - 0x02C9B9 21:89A9: 09        .byte $09	; <け>
- D - I - 0x02C9BA 21:89AA: 07        .byte $07	; <き>
- D - I - 0x02C9BB 21:89AB: 66        .byte $66	; <ヨ>

- D - I - 0x02C9BC 21:89AC: 02        .byte $02	; <い>
- D - I - 0x02C9BD 21:89AD: 3A 89     .word off_893A



off_89AF_0E:
- - - - - 0x02C9BF 21:89AF: 08        .byte $08	; <く>
- - - - - 0x02C9C0 21:89B0: 03        .byte $03	; <う>
- - - - - 0x02C9C1 21:89B1: 0F        .byte $0F	; <そ>
- - - - - 0x02C9C2 21:89B2: 5C        .byte $5C	; <フ>
- - - - - 0x02C9C3 21:89B3: 13        .byte $13	; <て>
- - - - - 0x02C9C4 21:89B4: 5D        .byte $5D	; <ヘ>

- - - - - 0x02C9C5 21:89B5: 08        .byte $08	; <く>
- - - - - 0x02C9C6 21:89B6: 04        .byte $04	; <え>
- - - - - 0x02C9C7 21:89B7: 0F        .byte $0F	; <そ>
- - - - - 0x02C9C8 21:89B8: 5E        .byte $5E	; <ホ>
- - - - - 0x02C9C9 21:89B9: 13        .byte $13	; <て>
- - - - - 0x02C9CA 21:89BA: 5F        .byte $5F	; <マ>

- - - - - 0x02C9CB 21:89BB: 01        .byte $01	; <あ>



off_89BC_0F:
off_89BC:
- D - I - 0x02C9CC 21:89BC: 03        .byte $03	; <う>
- D - I - 0x02C9CD 21:89BD: D5 89     .word off_89D5
- D - I - 0x02C9CF 21:89BF: 4C 8A     .word off_8A4C
- D - I - 0x02C9D1 21:89C1: 65 8A     .word off_8A65
- D - I - 0x02C9D3 21:89C3: 76 8A     .word off_8A76
- D - I - 0x02C9D5 21:89C5: 83 8A     .word off_8A83
- D - I - 0x02C9D7 21:89C7: 92 8A     .word off_8A92
- D - I - 0x02C9D9 21:89C9: AF 8A     .word off_8AAF
- D - I - 0x02C9DB 21:89CB: C6 8A     .word off_8AC6
- D - I - 0x02C9DD 21:89CD: FB 8A     .word off_8AFB
- D - I - 0x02C9DF 21:89CF: 12 8B     .word off_8B12
- D - I - 0x02C9E1 21:89D1: 29 8B     .word off_8B29
- D - I - 0x02C9E3 21:89D3: 30 8B     .word off_8B30



off_89D5:
- D - I - 0x02C9E5 21:89D5: 00        .byte $00
- D - I - 0x02C9E6 21:89D6: 02        .byte $02	; <い>
- D - I - 0x02C9E7 21:89D7: 0C        .byte $0C	; <し>
- D - I - 0x02C9E8 21:89D8: 17        .byte $17	; <ぬ>

- D - I - 0x02C9E9 21:89D9: 08        .byte $08	; <く>
- D - I - 0x02C9EA 21:89DA: 03        .byte $03	; <う>
- D - I - 0x02C9EB 21:89DB: 0C        .byte $0C	; <し>
- D - I - 0x02C9EC 21:89DC: 1D        .byte $1D	; <へ>
- D - I - 0x02C9ED 21:89DD: 13        .byte $13	; <て>
- D - I - 0x02C9EE 21:89DE: 48        .byte $48	; <ク>
; продолжение


off_89DF:
- D - I - 0x02C9EF 21:89DF: 08        .byte $08	; <く>
- D - I - 0x02C9F0 21:89E0: 02        .byte $02	; <い>
- D - I - 0x02C9F1 21:89E1: 08        .byte $08	; <く>
- D - I - 0x02C9F2 21:89E2: 16        .byte $16	; <に>
- D - I - 0x02C9F3 21:89E3: 10        .byte $10	; <た>
- D - I - 0x02C9F4 21:89E4: 42        .byte $42	; <イ>
; продолжение


off_89E5:
- D - I - 0x02C9F5 21:89E5: 10        .byte $10	; <た>
- D - I - 0x02C9F6 21:89E6: 01        .byte $01	; <あ>
- D - I - 0x02C9F7 21:89E7: 08        .byte $08	; <く>
- D - I - 0x02C9F8 21:89E8: 14        .byte $14	; <と>
- D - I - 0x02C9F9 21:89E9: 0C        .byte $0C	; <し>
- D - I - 0x02C9FA 21:89EA: 15        .byte $15	; <な>
- D - I - 0x02C9FB 21:89EB: 10        .byte $10	; <た>
- D - I - 0x02C9FC 21:89EC: 40        .byte $40	; <「>
; продолжение


off_89ED:
- D - I - 0x02C9FD 21:89ED: 08        .byte $08	; <く>
- D - I - 0x02C9FE 21:89EE: 03        .byte $03	; <う>
- D - I - 0x02C9FF 21:89EF: 08        .byte $08	; <く>
- D - I - 0x02CA00 21:89F0: 1C        .byte $1C	; <ふ>
- D - I - 0x02CA01 21:89F1: 0F        .byte $0F	; <そ>
- D - I - 0x02CA02 21:89F2: 3B        .byte $3B	; <8>
; продолжение


off_89F3:
- D - I - 0x02CA03 21:89F3: 10        .byte $10	; <た>
- D - I - 0x02CA04 21:89F4: 02        .byte $02	; <い>
- D - I - 0x02CA05 21:89F5: 05        .byte $05	; <お>
- D - I - 0x02CA06 21:89F6: 08        .byte $08	; <く>
- D - I - 0x02CA07 21:89F7: 09        .byte $09	; <け>
- D - I - 0x02CA08 21:89F8: 09        .byte $09	; <け>
- D - I - 0x02CA09 21:89F9: 11        .byte $11	; <ち>
- D - I - 0x02CA0A 21:89FA: 0D        .byte $0D	; <す>

- D - I - 0x02CA0B 21:89FB: 10        .byte $10	; <た>
- D - I - 0x02CA0C 21:89FC: 03        .byte $03	; <う>
- D - I - 0x02CA0D 21:89FD: 09        .byte $09	; <け>
- D - I - 0x02CA0E 21:89FE: 0A        .byte $0A	; <こ>
- D - I - 0x02CA0F 21:89FF: 11        .byte $11	; <ち>
- D - I - 0x02CA10 21:8A00: 0E        .byte $0E	; <せ>
- D - I - 0x02CA11 21:8A01: 15        .byte $15	; <な>
- D - I - 0x02CA12 21:8A02: 0F        .byte $0F	; <そ>

- D - I - 0x02CA13 21:8A03: 18        .byte $18	; <ね>
- D - I - 0x02CA14 21:8A04: 04        .byte $04	; <え>
- D - I - 0x02CA15 21:8A05: 5E        .byte $5E	; <ホ>
- D - I - 0x02CA16 21:8A06: 18        .byte $18	; <ね>
- D - I - 0x02CA17 21:8A07: 5D        .byte $5D	; <ヘ>
- D - I - 0x02CA18 21:8A08: 21        .byte $21	; <む>
- D - I - 0x02CA19 21:8A09: 61        .byte $61	; <ム>
- D - I - 0x02CA1A 21:8A0A: 24        .byte $24	; <や>
- D - I - 0x02CA1B 21:8A0B: 73        .byte $73	; <ヮ>
- D - I - 0x02CA1C 21:8A0C: 25        .byte $25	; <ゆ>
; продолжение


off_8A0D:
- D - I - 0x02CA1D 21:8A0D: 00        .byte $00
- D - I - 0x02CA1E 21:8A0E: 01        .byte $01	; <あ>
- D - I - 0x02CA1F 21:8A0F: 07        .byte $07	; <き>
- D - I - 0x02CA20 21:8A10: 10        .byte $10	; <た>

- D - I - 0x02CA21 21:8A11: 00        .byte $00
- D - I - 0x02CA22 21:8A12: 12        .byte $12	; <つ>
- D - I - 0x02CA23 21:8A13: 03        .byte $03	; <う>
- D - I - 0x02CA24 21:8A14: 07        .byte $07	; <き>

- D - I - 0x02CA25 21:8A15: 00        .byte $00
- D - I - 0x02CA26 21:8A16: 02        .byte $02	; <い>
- D - I - 0x02CA27 21:8A17: 0D        .byte $0D	; <す>
- D - I - 0x02CA28 21:8A18: 0C        .byte $0C	; <し>

- D - I - 0x02CA29 21:8A19: 00        .byte $00
- D - I - 0x02CA2A 21:8A1A: 03        .byte $03	; <う>
- D - I - 0x02CA2B 21:8A1B: 0D        .byte $0D	; <す>
- D - I - 0x02CA2C 21:8A1C: 0B        .byte $0B	; <さ>

- D - I - 0x02CA2D 21:8A1D: 00        .byte $00
- D - I - 0x02CA2E 21:8A1E: 04        .byte $04	; <え>
- D - I - 0x02CA2F 21:8A1F: 59        .byte $59	; <ノ>
- D - I - 0x02CA30 21:8A20: 20        .byte $20	; <み>

- D - I - 0x02CA31 21:8A21: 18        .byte $18	; <ね>
- D - I - 0x02CA32 21:8A22: 05        .byte $05	; <お>
- D - I - 0x02CA33 21:8A23: 0E        .byte $0E	; <せ>
- D - I - 0x02CA34 21:8A24: 22        .byte $22	; <め>
- D - I - 0x02CA35 21:8A25: 12        .byte $12	; <つ>
- D - I - 0x02CA36 21:8A26: 23        .byte $23	; <も>
- D - I - 0x02CA37 21:8A27: 16        .byte $16	; <に>
- D - I - 0x02CA38 21:8A28: 26        .byte $26	; <よ>
- D - I - 0x02CA39 21:8A29: 1B        .byte $1B	; <ひ>
- D - I - 0x02CA3A 21:8A2A: 27        .byte $27	; <ら>

- D - I - 0x02CA3B 21:8A2B: 18        .byte $18	; <ね>
- D - I - 0x02CA3C 21:8A2C: 06        .byte $06	; <か>
- D - I - 0x02CA3D 21:8A2D: 0F        .byte $0F	; <そ>
- D - I - 0x02CA3E 21:8A2E: 28        .byte $28	; <り>
- D - I - 0x02CA3F 21:8A2F: 13        .byte $13	; <て>
- D - I - 0x02CA40 21:8A30: 29        .byte $29	; <る>
- D - I - 0x02CA41 21:8A31: 17        .byte $17	; <ぬ>
- D - I - 0x02CA42 21:8A32: 2C        .byte $2C	; <わ>
- D - I - 0x02CA43 21:8A33: 1B        .byte $1B	; <ひ>
- D - I - 0x02CA44 21:8A34: 2D        .byte $2D	; <を>

- D - I - 0x02CA45 21:8A35: 08        .byte $08	; <く>
- D - I - 0x02CA46 21:8A36: 07        .byte $07	; <き>
- D - I - 0x02CA47 21:8A37: 11        .byte $11	; <ち>
- D - I - 0x02CA48 21:8A38: 2A        .byte $2A	; <れ>
- D - I - 0x02CA49 21:8A39: 15        .byte $15	; <な>
- D - I - 0x02CA4A 21:8A3A: 2B        .byte $2B	; <ろ>

- D - I - 0x02CA4B 21:8A3B: 08        .byte $08	; <く>
- D - I - 0x02CA4C 21:8A3C: 08        .byte $08	; <く>
- D - I - 0x02CA4D 21:8A3D: 11        .byte $11	; <ち>
- D - I - 0x02CA4E 21:8A3E: 2E        .byte $2E	; <ん>
- D - I - 0x02CA4F 21:8A3F: 15        .byte $15	; <な>
- D - I - 0x02CA50 21:8A40: 2F        .byte $2F	; <っ>

- D - I - 0x02CA51 21:8A41: 08        .byte $08	; <く>
- D - I - 0x02CA52 21:8A42: 09        .byte $09	; <け>
- D - I - 0x02CA53 21:8A43: 75        .byte $75	; <ェ>
- D - I - 0x02CA54 21:8A44: 12        .byte $12	; <つ>
- D - I - 0x02CA55 21:8A45: 7B        .byte $7B	; <。>
- D - I - 0x02CA56 21:8A46: 13        .byte $13	; <て>

- D - I - 0x02CA57 21:8A47: 00        .byte $00
- D - I - 0x02CA58 21:8A48: 16        .byte $16	; <に>
- D - I - 0x02CA59 21:8A49: 7F        .byte $7F	; <,>
- D - I - 0x02CA5A 21:8A4A: 11        .byte $11	; <ち>

- D - I - 0x02CA5B 21:8A4B: 01        .byte $01	; <あ>



off_8A4C:
- D - I - 0x02CA5C 21:8A4C: 10        .byte $10	; <た>
- D - I - 0x02CA5D 21:8A4D: 01        .byte $01	; <あ>
- D - I - 0x02CA5E 21:8A4E: 08        .byte $08	; <く>
- D - I - 0x02CA5F 21:8A4F: 1E        .byte $1E	; <ほ>
- D - I - 0x02CA60 21:8A50: 0C        .byte $0C	; <し>
- D - I - 0x02CA61 21:8A51: 1F        .byte $1F	; <ま>
- D - I - 0x02CA62 21:8A52: 10        .byte $10	; <た>
- D - I - 0x02CA63 21:8A53: 4A        .byte $4A	; <コ>

- D - I - 0x02CA64 21:8A54: 10        .byte $10	; <た>
- D - I - 0x02CA65 21:8A55: 02        .byte $02	; <い>
- D - I - 0x02CA66 21:8A56: 08        .byte $08	; <く>
- D - I - 0x02CA67 21:8A57: 34        .byte $34	; <1>
- D - I - 0x02CA68 21:8A58: 0C        .byte $0C	; <し>
- D - I - 0x02CA69 21:8A59: 35        .byte $35	; <2>
- D - I - 0x02CA6A 21:8A5A: 10        .byte $10	; <た>
- D - I - 0x02CA6B 21:8A5B: 60        .byte $60	; <ミ>

- D - I - 0x02CA6C 21:8A5C: 08        .byte $08	; <く>
- D - I - 0x02CA6D 21:8A5D: 03        .byte $03	; <う>
- D - I - 0x02CA6E 21:8A5E: 0C        .byte $0C	; <し>
- D - I - 0x02CA6F 21:8A5F: 1D        .byte $1D	; <へ>
- D - I - 0x02CA70 21:8A60: 13        .byte $13	; <て>
- D - I - 0x02CA71 21:8A61: 48        .byte $48	; <ク>

- D - I - 0x02CA72 21:8A62: 02        .byte $02	; <い>
- D - I - 0x02CA73 21:8A63: ED 89     .word off_89ED



off_8A65:
- D - I - 0x02CA75 21:8A65: 10        .byte $10	; <た>
- D - I - 0x02CA76 21:8A66: 02        .byte $02	; <い>
- D - I - 0x02CA77 21:8A67: 08        .byte $08	; <く>
- D - I - 0x02CA78 21:8A68: 16        .byte $16	; <に>
- D - I - 0x02CA79 21:8A69: 0C        .byte $0C	; <し>
- D - I - 0x02CA7A 21:8A6A: 36        .byte $36	; <3>
- D - I - 0x02CA7B 21:8A6B: 10        .byte $10	; <た>
- D - I - 0x02CA7C 21:8A6C: 37        .byte $37	; <4>

- D - I - 0x02CA7D 21:8A6D: 08        .byte $08	; <く>
- D - I - 0x02CA7E 21:8A6E: 03        .byte $03	; <う>
- D - I - 0x02CA7F 21:8A6F: 0C        .byte $0C	; <し>
- D - I - 0x02CA80 21:8A70: 1D        .byte $1D	; <へ>
- D - I - 0x02CA81 21:8A71: 13        .byte $13	; <て>
- D - I - 0x02CA82 21:8A72: 3D        .byte $3D	; <+>

- D - I - 0x02CA83 21:8A73: 02        .byte $02	; <い>
- D - I - 0x02CA84 21:8A74: E5 89     .word off_89E5



off_8A76:
- D - I - 0x02CA86 21:8A76: 00        .byte $00
- D - I - 0x02CA87 21:8A77: 02        .byte $02	; <い>
- D - I - 0x02CA88 21:8A78: 0C        .byte $0C	; <し>
- D - I - 0x02CA89 21:8A79: 3C        .byte $3C	; <9>

- D - I - 0x02CA8A 21:8A7A: 08        .byte $08	; <く>
- D - I - 0x02CA8B 21:8A7B: 03        .byte $03	; <う>
- D - I - 0x02CA8C 21:8A7C: 0C        .byte $0C	; <し>
- D - I - 0x02CA8D 21:8A7D: 3E        .byte $3E	; <Jr>
- D - I - 0x02CA8E 21:8A7E: 13        .byte $13	; <て>
- D - I - 0x02CA8F 21:8A7F: 3F        .byte $3F	; <•>

- D - I - 0x02CA90 21:8A80: 02        .byte $02	; <い>
- D - I - 0x02CA91 21:8A81: DF 89     .word off_89DF



off_8A83:
- D - I - 0x02CA93 21:8A83: 08        .byte $08	; <く>
- D - I - 0x02CA94 21:8A84: 02        .byte $02	; <い>
- D - I - 0x02CA95 21:8A85: 0C        .byte $0C	; <し>
- D - I - 0x02CA96 21:8A86: 62        .byte $62	; <メ>
- D - I - 0x02CA97 21:8A87: 10        .byte $10	; <た>
- D - I - 0x02CA98 21:8A88: 63        .byte $63	; <モ>

- D - I - 0x02CA99 21:8A89: 08        .byte $08	; <く>
- D - I - 0x02CA9A 21:8A8A: 03        .byte $03	; <う>
- D - I - 0x02CA9B 21:8A8B: 0F        .byte $0F	; <そ>
- D - I - 0x02CA9C 21:8A8C: 68        .byte $68	; <リ>
- D - I - 0x02CA9D 21:8A8D: 13        .byte $13	; <て>
- D - I - 0x02CA9E 21:8A8E: 69        .byte $69	; <ル>

- D - I - 0x02CA9F 21:8A8F: 02        .byte $02	; <い>
- D - I - 0x02CAA0 21:8A90: F3 89     .word off_89F3



off_8A92:
- D - I - 0x02CAA2 21:8A92: 00        .byte $00
- D - I - 0x02CAA3 21:8A93: 02        .byte $02	; <い>
- D - I - 0x02CAA4 21:8A94: 10        .byte $10	; <た>
- D - I - 0x02CAA5 21:8A95: 47        .byte $47	; <キ>
; продолжение


off_8A96:
- D - I - 0x02CAA6 21:8A96: 08        .byte $08	; <く>
- D - I - 0x02CAA7 21:8A97: 01        .byte $01	; <あ>
- D - I - 0x02CAA8 21:8A98: 0C        .byte $0C	; <し>
- D - I - 0x02CAA9 21:8A99: 41        .byte $41	; <ア>
- D - I - 0x02CAAA 21:8A9A: 10        .byte $10	; <た>
- D - I - 0x02CAAB 21:8A9B: 44        .byte $44	; <エ>

- D - I - 0x02CAAC 21:8A9C: 08        .byte $08	; <く>
- D - I - 0x02CAAD 21:8A9D: 02        .byte $02	; <い>
- D - I - 0x02CAAE 21:8A9E: 08        .byte $08	; <く>
- D - I - 0x02CAAF 21:8A9F: 43        .byte $43	; <ウ>
- D - I - 0x02CAB0 21:8AA0: 0C        .byte $0C	; <し>
- D - I - 0x02CAB1 21:8AA1: 46        .byte $46	; <カ>

- D - I - 0x02CAB2 21:8AA2: 18        .byte $18	; <ね>
- D - I - 0x02CAB3 21:8AA3: 03        .byte $03	; <う>
- D - I - 0x02CAB4 21:8AA4: 08        .byte $08	; <く>
- D - I - 0x02CAB5 21:8AA5: 49        .byte $49	; <ケ>
- D - I - 0x02CAB6 21:8AA6: 0C        .byte $0C	; <し>
- D - I - 0x02CAB7 21:8AA7: 4C        .byte $4C	; <シ>
- D - I - 0x02CAB8 21:8AA8: 0F        .byte $0F	; <そ>
- D - I - 0x02CAB9 21:8AA9: 3B        .byte $3B	; <8>
- D - I - 0x02CABA 21:8AAA: 13        .byte $13	; <て>
- D - I - 0x02CABB 21:8AAB: 4D        .byte $4D	; <ス>

- D - I - 0x02CABC 21:8AAC: 02        .byte $02	; <い>
- D - I - 0x02CABD 21:8AAD: F3 89     .word off_89F3



off_8AAF:
- D - I - 0x02CABF 21:8AAF: 08        .byte $08	; <く>
- D - I - 0x02CAC0 21:8AB0: 01        .byte $01	; <あ>
- D - I - 0x02CAC1 21:8AB1: 0C        .byte $0C	; <し>
- D - I - 0x02CAC2 21:8AB2: 66        .byte $66	; <ヨ>
- D - I - 0x02CAC3 21:8AB3: 10        .byte $10	; <た>
- D - I - 0x02CAC4 21:8AB4: 67        .byte $67	; <ラ>

- D - I - 0x02CAC5 21:8AB5: 10        .byte $10	; <た>
- D - I - 0x02CAC6 21:8AB6: 02        .byte $02	; <い>
- D - I - 0x02CAC7 21:8AB7: 08        .byte $08	; <く>
- D - I - 0x02CAC8 21:8AB8: 4B        .byte $4B	; <サ>
- D - I - 0x02CAC9 21:8AB9: 0C        .byte $0C	; <し>
- D - I - 0x02CACA 21:8ABA: 4E        .byte $4E	; <セ>
- D - I - 0x02CACB 21:8ABB: 10        .byte $10	; <た>
- D - I - 0x02CACC 21:8ABC: 4F        .byte $4F	; <ソ>

- D - I - 0x02CACD 21:8ABD: 08        .byte $08	; <く>
- D - I - 0x02CACE 21:8ABE: 03        .byte $03	; <う>
- D - I - 0x02CACF 21:8ABF: 0F        .byte $0F	; <そ>
- D - I - 0x02CAD0 21:8AC0: 64        .byte $64	; <ヤ>
- D - I - 0x02CAD1 21:8AC1: 13        .byte $13	; <て>
- D - I - 0x02CAD2 21:8AC2: 65        .byte $65	; <ユ>

- D - I - 0x02CAD3 21:8AC3: 02        .byte $02	; <い>
- D - I - 0x02CAD4 21:8AC4: F3 89     .word off_89F3



off_8AC6:
- D - I - 0x02CAD6 21:8AC6: 10        .byte $10	; <た>
- D - I - 0x02CAD7 21:8AC7: 01        .byte $01	; <あ>
- D - I - 0x02CAD8 21:8AC8: 08        .byte $08	; <く>
- D - I - 0x02CAD9 21:8AC9: 45        .byte $45	; <オ>
- D - I - 0x02CADA 21:8ACA: 0C        .byte $0C	; <し>
- D - I - 0x02CADB 21:8ACB: 50        .byte $50	; <タ>
- D - I - 0x02CADC 21:8ACC: 10        .byte $10	; <た>
- D - I - 0x02CADD 21:8ACD: 51        .byte $51	; <チ>

- D - I - 0x02CADE 21:8ACE: 10        .byte $10	; <た>
- D - I - 0x02CADF 21:8ACF: 02        .byte $02	; <い>
- D - I - 0x02CAE0 21:8AD0: 08        .byte $08	; <く>
- D - I - 0x02CAE1 21:8AD1: 71        .byte $71	; <ュ>
- D - I - 0x02CAE2 21:8AD2: 0C        .byte $0C	; <し>
- D - I - 0x02CAE3 21:8AD3: 52        .byte $52	; <ツ>
- D - I - 0x02CAE4 21:8AD4: 10        .byte $10	; <た>
- D - I - 0x02CAE5 21:8AD5: 53        .byte $53	; <テ>

- D - I - 0x02CAE6 21:8AD6: 10        .byte $10	; <た>
- D - I - 0x02CAE7 21:8AD7: 03        .byte $03	; <う>
- D - I - 0x02CAE8 21:8AD8: 08        .byte $08	; <く>
- D - I - 0x02CAE9 21:8AD9: 1C        .byte $1C	; <ふ>
- D - I - 0x02CAEA 21:8ADA: 0C        .byte $0C	; <し>
- D - I - 0x02CAEB 21:8ADB: 58        .byte $58	; <ネ>
- D - I - 0x02CAEC 21:8ADC: 13        .byte $13	; <て>
- D - I - 0x02CAED 21:8ADD: 59        .byte $59	; <ノ>

- D - I - 0x02CAEE 21:8ADE: 10        .byte $10	; <た>
- D - I - 0x02CAEF 21:8ADF: 02        .byte $02	; <い>
- D - I - 0x02CAF0 21:8AE0: 05        .byte $05	; <お>
- D - I - 0x02CAF1 21:8AE1: 1A        .byte $1A	; <は>
- D - I - 0x02CAF2 21:8AE2: 09        .byte $09	; <け>
- D - I - 0x02CAF3 21:8AE3: 19        .byte $19	; <の>
- D - I - 0x02CAF4 21:8AE4: 11        .byte $11	; <ち>
- D - I - 0x02CAF5 21:8AE5: 30        .byte $30	; <ゃ>

- D - I - 0x02CAF6 21:8AE6: 10        .byte $10	; <た>
- D - I - 0x02CAF7 21:8AE7: 03        .byte $03	; <う>
- D - I - 0x02CAF8 21:8AE8: 09        .byte $09	; <け>
- D - I - 0x02CAF9 21:8AE9: 1B        .byte $1B	; <ひ>
- D - I - 0x02CAFA 21:8AEA: 11        .byte $11	; <ち>
- D - I - 0x02CAFB 21:8AEB: 32        .byte $32	; <ょ>
- D - I - 0x02CAFC 21:8AEC: 15        .byte $15	; <な>
- D - I - 0x02CAFD 21:8AED: 33        .byte $33	; <0>

- D - I - 0x02CAFE 21:8AEE: 18        .byte $18	; <ね>
- D - I - 0x02CAFF 21:8AEF: 04        .byte $04	; <え>
- D - I - 0x02CB00 21:8AF0: 5E        .byte $5E	; <ホ>
- D - I - 0x02CB01 21:8AF1: 3A        .byte $3A	; <7>
- D - I - 0x02CB02 21:8AF2: 5D        .byte $5D	; <ヘ>
- D - I - 0x02CB03 21:8AF3: 31        .byte $31	; <ゅ>
- D - I - 0x02CB04 21:8AF4: 61        .byte $61	; <ム>
- D - I - 0x02CB05 21:8AF5: 38        .byte $38	; <5>
- D - I - 0x02CB06 21:8AF6: 73        .byte $73	; <ヮ>
- D - I - 0x02CB07 21:8AF7: 39        .byte $39	; <6>

- D - I - 0x02CB08 21:8AF8: 02        .byte $02	; <い>
- D - I - 0x02CB09 21:8AF9: 0D 8A     .word off_8A0D



off_8AFB:
- D - I - 0x02CB0B 21:8AFB: 08        .byte $08	; <く>
- D - I - 0x02CB0C 21:8AFC: 01        .byte $01	; <あ>
- D - I - 0x02CB0D 21:8AFD: 0C        .byte $0C	; <し>
- D - I - 0x02CB0E 21:8AFE: 66        .byte $66	; <ヨ>
- D - I - 0x02CB0F 21:8AFF: 10        .byte $10	; <た>
- D - I - 0x02CB10 21:8B00: 67        .byte $67	; <ラ>

- D - I - 0x02CB11 21:8B01: 10        .byte $10	; <た>
- D - I - 0x02CB12 21:8B02: 02        .byte $02	; <い>
- D - I - 0x02CB13 21:8B03: 08        .byte $08	; <く>
- D - I - 0x02CB14 21:8B04: 4B        .byte $4B	; <サ>
- D - I - 0x02CB15 21:8B05: 0C        .byte $0C	; <し>
- D - I - 0x02CB16 21:8B06: 6A        .byte $6A	; <レ>
- D - I - 0x02CB17 21:8B07: 10        .byte $10	; <た>
- D - I - 0x02CB18 21:8B08: 6B        .byte $6B	; <ロ>

- D - I - 0x02CB19 21:8B09: 08        .byte $08	; <く>
- D - I - 0x02CB1A 21:8B0A: 03        .byte $03	; <う>
- D - I - 0x02CB1B 21:8B0B: 0F        .byte $0F	; <そ>
- D - I - 0x02CB1C 21:8B0C: 68        .byte $68	; <リ>
- D - I - 0x02CB1D 21:8B0D: 13        .byte $13	; <て>
- D - I - 0x02CB1E 21:8B0E: 69        .byte $69	; <ル>

- D - I - 0x02CB1F 21:8B0F: 02        .byte $02	; <い>
- D - I - 0x02CB20 21:8B10: F3 89     .word off_89F3



off_8B12:
- D - I - 0x02CB22 21:8B12: 08        .byte $08	; <く>
- D - I - 0x02CB23 21:8B13: 01        .byte $01	; <あ>
- D - I - 0x02CB24 21:8B14: 0C        .byte $0C	; <し>
- D - I - 0x02CB25 21:8B15: 6C        .byte $6C	; <ワ>
- D - I - 0x02CB26 21:8B16: 10        .byte $10	; <た>
- D - I - 0x02CB27 21:8B17: 6D        .byte $6D	; <ヲ>

- D - I - 0x02CB28 21:8B18: 10        .byte $10	; <た>
- D - I - 0x02CB29 21:8B19: 02        .byte $02	; <い>
- D - I - 0x02CB2A 21:8B1A: 08        .byte $08	; <く>
- D - I - 0x02CB2B 21:8B1B: 6E        .byte $6E	; <ン>
- D - I - 0x02CB2C 21:8B1C: 0C        .byte $0C	; <し>
- D - I - 0x02CB2D 21:8B1D: 17        .byte $17	; <ぬ>
- D - I - 0x02CB2E 21:8B1E: 10        .byte $10	; <た>
- D - I - 0x02CB2F 21:8B1F: 42        .byte $42	; <イ>

- D - I - 0x02CB30 21:8B20: 08        .byte $08	; <く>
- D - I - 0x02CB31 21:8B21: 03        .byte $03	; <う>
- D - I - 0x02CB32 21:8B22: 0C        .byte $0C	; <し>
- D - I - 0x02CB33 21:8B23: 1D        .byte $1D	; <へ>
- D - I - 0x02CB34 21:8B24: 13        .byte $13	; <て>
- D - I - 0x02CB35 21:8B25: 48        .byte $48	; <ク>

- D - I - 0x02CB36 21:8B26: 02        .byte $02	; <い>
- D - I - 0x02CB37 21:8B27: ED 89     .word off_89ED



off_8B29:
- D - I - 0x02CB39 21:8B29: 00        .byte $00
- D - I - 0x02CB3A 21:8B2A: 02        .byte $02	; <い>
- D - I - 0x02CB3B 21:8B2B: 10        .byte $10	; <た>
- D - I - 0x02CB3C 21:8B2C: 6F        .byte $6F	; <ッ>

- D - I - 0x02CB3D 21:8B2D: 02        .byte $02	; <い>
- D - I - 0x02CB3E 21:8B2E: 96 8A     .word off_8A96



off_8B30:
- D - I - 0x02CB40 21:8B30: 08        .byte $08	; <く>
- D - I - 0x02CB41 21:8B31: 02        .byte $02	; <い>
- D - I - 0x02CB42 21:8B32: 0C        .byte $0C	; <し>
- D - I - 0x02CB43 21:8B33: 5A        .byte $5A	; <ハ>
- D - I - 0x02CB44 21:8B34: 10        .byte $10	; <た>
- D - I - 0x02CB45 21:8B35: 37        .byte $37	; <4>

- D - I - 0x02CB46 21:8B36: 08        .byte $08	; <く>
- D - I - 0x02CB47 21:8B37: 03        .byte $03	; <う>
- D - I - 0x02CB48 21:8B38: 0C        .byte $0C	; <し>
- D - I - 0x02CB49 21:8B39: 70        .byte $70	; <ャ>
- D - I - 0x02CB4A 21:8B3A: 13        .byte $13	; <て>
- D - I - 0x02CB4B 21:8B3B: 3D        .byte $3D	; <+>

- D - I - 0x02CB4C 21:8B3C: 02        .byte $02	; <い>
- D - I - 0x02CB4D 21:8B3D: DF 89     .word off_89DF



off_8B3F_10:
- D - I - 0x02CB4F 21:8B3F: 08        .byte $08	; <く>
- D - I - 0x02CB50 21:8B40: 09        .byte $09	; <け>
- D - I - 0x02CB51 21:8B41: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB52 21:8B42: 05        .byte $05	; <お>
- D - I - 0x02CB53 21:8B43: 83        .byte $83	; <C>
- D - I - 0x02CB54 21:8B44: 55        .byte $55	; <ナ>

- D - I - 0x02CB55 21:8B45: 08        .byte $08	; <く>
- D - I - 0x02CB56 21:8B46: 16        .byte $16	; <に>
- D - I - 0x02CB57 21:8B47: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB58 21:8B48: 61        .byte $61	; <ム>
- D - I - 0x02CB59 21:8B49: 83        .byte $83	; <C>
- D - I - 0x02CB5A 21:8B4A: 57        .byte $57	; <ヌ>

- D - I - 0x02CB5B 21:8B4B: 02        .byte $02	; <い>
- D - I - 0x02CB5C 21:8B4C: BC 89     .word off_89BC



off_8B4E_11:
- D - I - 0x02CB5E 21:8B4E: 00        .byte $00
- D - I - 0x02CB5F 21:8B4F: 08        .byte $08	; <く>
- D - I - 0x02CB60 21:8B50: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB61 21:8B51: 5C        .byte $5C	; <フ>

- D - I - 0x02CB62 21:8B52: 08        .byte $08	; <く>
- D - I - 0x02CB63 21:8B53: 09        .byte $09	; <け>
- D - I - 0x02CB64 21:8B54: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB65 21:8B55: 5E        .byte $5E	; <ホ>
- D - I - 0x02CB66 21:8B56: 83        .byte $83	; <C>
- D - I - 0x02CB67 21:8B57: 55        .byte $55	; <ナ>

- D - I - 0x02CB68 21:8B58: 08        .byte $08	; <く>
- D - I - 0x02CB69 21:8B59: 16        .byte $16	; <に>
- D - I - 0x02CB6A 21:8B5A: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB6B 21:8B5B: 5B        .byte $5B	; <ヒ>
- D - I - 0x02CB6C 21:8B5C: 83        .byte $83	; <C>
- D - I - 0x02CB6D 21:8B5D: 57        .byte $57	; <ヌ>

- D - I - 0x02CB6E 21:8B5E: 02        .byte $02	; <い>
- D - I - 0x02CB6F 21:8B5F: BC 89     .word off_89BC



off_8B61_12:
- D - I - 0x02CB71 21:8B61: 00        .byte $00
- D - I - 0x02CB72 21:8B62: 08        .byte $08	; <く>
- D - I - 0x02CB73 21:8B63: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB74 21:8B64: 5D        .byte $5D	; <ヘ>

- D - I - 0x02CB75 21:8B65: 08        .byte $08	; <く>
- D - I - 0x02CB76 21:8B66: 09        .byte $09	; <け>
- D - I - 0x02CB77 21:8B67: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB78 21:8B68: 5F        .byte $5F	; <マ>
- D - I - 0x02CB79 21:8B69: 83        .byte $83	; <C>
- D - I - 0x02CB7A 21:8B6A: 55        .byte $55	; <ナ>

- D - I - 0x02CB7B 21:8B6B: 08        .byte $08	; <く>
- D - I - 0x02CB7C 21:8B6C: 16        .byte $16	; <に>
- D - I - 0x02CB7D 21:8B6D: 1B        .byte $1B	; <ひ>
- D - I - 0x02CB7E 21:8B6E: 5B        .byte $5B	; <ヒ>
- D - I - 0x02CB7F 21:8B6F: 83        .byte $83	; <C>
- D - I - 0x02CB80 21:8B70: 57        .byte $57	; <ヌ>

- D - I - 0x02CB81 21:8B71: 02        .byte $02	; <い>
- D - I - 0x02CB82 21:8B72: BC 89     .word off_89BC



off_8B74_13:
- D - I - 0x02CB84 21:8B74: 08        .byte $08	; <く>
- D - I - 0x02CB85 21:8B75: 03        .byte $03	; <う>
- D - I - 0x02CB86 21:8B76: 0F        .byte $0F	; <そ>
- D - I - 0x02CB87 21:8B77: 54        .byte $54	; <ト>
- D - I - 0x02CB88 21:8B78: 13        .byte $13	; <て>
- D - I - 0x02CB89 21:8B79: 55        .byte $55	; <ナ>

- D - I - 0x02CB8A 21:8B7A: 08        .byte $08	; <く>
- D - I - 0x02CB8B 21:8B7B: 04        .byte $04	; <え>
- D - I - 0x02CB8C 21:8B7C: 0F        .byte $0F	; <そ>
- D - I - 0x02CB8D 21:8B7D: 56        .byte $56	; <ニ>
- D - I - 0x02CB8E 21:8B7E: 13        .byte $13	; <て>
- D - I - 0x02CB8F 21:8B7F: 57        .byte $57	; <ヌ>

- D - I - 0x02CB90 21:8B80: 01        .byte $01	; <あ>



off_8B81_14:
off_8B81:
- D - I - 0x02CB91 21:8B81: 03        .byte $03	; <う>
- D - I - 0x02CB92 21:8B82: 9A 8B     .word off_8B9A
- D - I - 0x02CB94 21:8B84: AF 8B     .word off_8BAF
- D - I - 0x02CB96 21:8B86: D2 8B     .word off_8BD2
- D - I - 0x02CB98 21:8B88: D9 8B     .word off_8BD9
- D - I - 0x02CB9A 21:8B8A: F2 8B     .word off_8BF2
- D - I - 0x02CB9C 21:8B8C: 11 8C     .word off_8C11
- D - I - 0x02CB9E 21:8B8E: 26 8C     .word off_8C26
- D - I - 0x02CBA0 21:8B90: 3B 8C     .word off_8C3B
- D - I - 0x02CBA2 21:8B92: 5A 8C     .word off_8C5A
- D - I - 0x02CBA4 21:8B94: 73 8C     .word off_8C73
- D - I - 0x02CBA6 21:8B96: 88 8C     .word off_8C88
- D - I - 0x02CBA8 21:8B98: 9D 8C     .word off_8C9D



off_8B9A:
- D - I - 0x02CBAA 21:8B9A: 10        .byte $10	; <た>
- D - I - 0x02CBAB 21:8B9B: 01        .byte $01	; <あ>
- D - I - 0x02CBAC 21:8B9C: 0C        .byte $0C	; <し>
- D - I - 0x02CBAD 21:8B9D: 11        .byte $11	; <ち>
- D - I - 0x02CBAE 21:8B9E: 10        .byte $10	; <た>
- D - I - 0x02CBAF 21:8B9F: 14        .byte $14	; <と>
- D - I - 0x02CBB0 21:8BA0: 14        .byte $14	; <と>
- D - I - 0x02CBB1 21:8BA1: 15        .byte $15	; <な>

- D - I - 0x02CBB2 21:8BA2: 18        .byte $18	; <ね>
- D - I - 0x02CBB3 21:8BA3: 02        .byte $02	; <い>
- D - I - 0x02CBB4 21:8BA4: 0C        .byte $0C	; <し>
- D - I - 0x02CBB5 21:8BA5: 16        .byte $16	; <に>
- D - I - 0x02CBB6 21:8BA6: 10        .byte $10	; <た>
- D - I - 0x02CBB7 21:8BA7: 17        .byte $17	; <ぬ>
- D - I - 0x02CBB8 21:8BA8: 13        .byte $13	; <て>
- D - I - 0x02CBB9 21:8BA9: 05        .byte $05	; <お>
- D - I - 0x02CBBA 21:8BAA: 14        .byte $14	; <と>
- D - I - 0x02CBBB 21:8BAB: 1D        .byte $1D	; <へ>

- D - I - 0x02CBBC 21:8BAC: 02        .byte $02	; <い>
- D - I - 0x02CBBD 21:8BAD: B1 8C     .word off_8CB1



off_8BAF:
- D - I - 0x02CBBF 21:8BAF: 18        .byte $18	; <ね>
- D - I - 0x02CBC0 21:8BB0: 01        .byte $01	; <あ>
- D - I - 0x02CBC1 21:8BB1: 0C        .byte $0C	; <し>
- D - I - 0x02CBC2 21:8BB2: 1A        .byte $1A	; <は>
- D - I - 0x02CBC3 21:8BB3: 10        .byte $10	; <た>
- D - I - 0x02CBC4 21:8BB4: 1B        .byte $1B	; <ひ>
- D - I - 0x02CBC5 21:8BB5: 14        .byte $14	; <と>
- D - I - 0x02CBC6 21:8BB6: 1E        .byte $1E	; <ほ>
- D - I - 0x02CBC7 21:8BB7: 18        .byte $18	; <ね>
- D - I - 0x02CBC8 21:8BB8: 1F        .byte $1F	; <ま>

- D - I - 0x02CBC9 21:8BB9: 20        .byte $20	; <み>
- D - I - 0x02CBCA 21:8BBA: 02        .byte $02	; <い>
- D - I - 0x02CBCB 21:8BBB: 0C        .byte $0C	; <し>
- D - I - 0x02CBCC 21:8BBC: 30        .byte $30	; <ゃ>
- D - I - 0x02CBCD 21:8BBD: 10        .byte $10	; <た>
- D - I - 0x02CBCE 21:8BBE: 31        .byte $31	; <ゅ>
- D - I - 0x02CBCF 21:8BBF: 13        .byte $13	; <て>
- D - I - 0x02CBD0 21:8BC0: 05        .byte $05	; <お>
- D - I - 0x02CBD1 21:8BC1: 14        .byte $14	; <と>
- D - I - 0x02CBD2 21:8BC2: 34        .byte $34	; <1>
- D - I - 0x02CBD3 21:8BC3: 18        .byte $18	; <ね>
- D - I - 0x02CBD4 21:8BC4: 35        .byte $35	; <2>

- D - I - 0x02CBD5 21:8BC5: 18        .byte $18	; <ね>
- D - I - 0x02CBD6 21:8BC6: 03        .byte $03	; <う>
- D - I - 0x02CBD7 21:8BC7: 11        .byte $11	; <ち>
- D - I - 0x02CBD8 21:8BC8: 18        .byte $18	; <ね>
- D - I - 0x02CBD9 21:8BC9: 13        .byte $13	; <て>
- D - I - 0x02CBDA 21:8BCA: 05        .byte $05	; <お>
- D - I - 0x02CBDB 21:8BCB: 15        .byte $15	; <な>
- D - I - 0x02CBDC 21:8BCC: 32        .byte $32	; <ょ>
- D - I - 0x02CBDD 21:8BCD: 18        .byte $18	; <ね>
- D - I - 0x02CBDE 21:8BCE: 33        .byte $33	; <0>

- D - I - 0x02CBDF 21:8BCF: 02        .byte $02	; <い>
- D - I - 0x02CBE0 21:8BD0: BD 8C     .word off_8CBD



off_8BD2:
- D - I - 0x02CBE2 21:8BD2: 00        .byte $00
- D - I - 0x02CBE3 21:8BD3: 02        .byte $02	; <い>
- D - I - 0x02CBE4 21:8BD4: 14        .byte $14	; <と>
- D - I - 0x02CBE5 21:8BD5: 39        .byte $39	; <6>

- D - I - 0x02CBE6 21:8BD6: 02        .byte $02	; <い>
- D - I - 0x02CBE7 21:8BD7: A1 8C     .word off_8CA1



off_8BD9:
- D - I - 0x02CBE9 21:8BD9: 10        .byte $10	; <た>
- D - I - 0x02CBEA 21:8BDA: 01        .byte $01	; <あ>
- D - I - 0x02CBEB 21:8BDB: 0C        .byte $0C	; <し>
- D - I - 0x02CBEC 21:8BDC: 1A        .byte $1A	; <は>
- D - I - 0x02CBED 21:8BDD: 10        .byte $10	; <た>
- D - I - 0x02CBEE 21:8BDE: 3A        .byte $3A	; <7>
- D - I - 0x02CBEF 21:8BDF: 14        .byte $14	; <と>
- D - I - 0x02CBF0 21:8BE0: 3B        .byte $3B	; <8>

- D - I - 0x02CBF1 21:8BE1: 18        .byte $18	; <ね>
- D - I - 0x02CBF2 21:8BE2: 02        .byte $02	; <い>
- D - I - 0x02CBF3 21:8BE3: 0C        .byte $0C	; <し>
- D - I - 0x02CBF4 21:8BE4: 3C        .byte $3C	; <9>
- D - I - 0x02CBF5 21:8BE5: 10        .byte $10	; <た>
- D - I - 0x02CBF6 21:8BE6: 3D        .byte $3D	; <+>
- D - I - 0x02CBF7 21:8BE7: 13        .byte $13	; <て>
- D - I - 0x02CBF8 21:8BE8: 05        .byte $05	; <お>
- D - I - 0x02CBF9 21:8BE9: 14        .byte $14	; <と>
- D - I - 0x02CBFA 21:8BEA: 1D        .byte $1D	; <へ>

- D - I - 0x02CBFB 21:8BEB: 00        .byte $00
- D - I - 0x02CBFC 21:8BEC: 03        .byte $03	; <う>
- D - I - 0x02CBFD 21:8BED: 11        .byte $11	; <ち>
- D - I - 0x02CBFE 21:8BEE: 3E        .byte $3E	; <Jr>

- D - I - 0x02CBFF 21:8BEF: 02        .byte $02	; <い>
- D - I - 0x02CC00 21:8BF0: B1 8C     .word off_8CB1



off_8BF2:
- D - I - 0x02CC02 21:8BF2: 10        .byte $10	; <た>
- D - I - 0x02CC03 21:8BF3: 01        .byte $01	; <あ>
- D - I - 0x02CC04 21:8BF4: 0C        .byte $0C	; <し>
- D - I - 0x02CC05 21:8BF5: 3F        .byte $3F	; <•>
- D - I - 0x02CC06 21:8BF6: 10        .byte $10	; <た>
- D - I - 0x02CC07 21:8BF7: 40        .byte $40	; <「>
- D - I - 0x02CC08 21:8BF8: 14        .byte $14	; <と>
- D - I - 0x02CC09 21:8BF9: 41        .byte $41	; <ア>

- D - I - 0x02CC0A 21:8BFA: 18        .byte $18	; <ね>
- D - I - 0x02CC0B 21:8BFB: 02        .byte $02	; <い>
- D - I - 0x02CC0C 21:8BFC: 0C        .byte $0C	; <し>
- D - I - 0x02CC0D 21:8BFD: 42        .byte $42	; <イ>
- D - I - 0x02CC0E 21:8BFE: 10        .byte $10	; <た>
- D - I - 0x02CC0F 21:8BFF: 43        .byte $43	; <ウ>
- D - I - 0x02CC10 21:8C00: 13        .byte $13	; <て>
- D - I - 0x02CC11 21:8C01: 05        .byte $05	; <お>
- D - I - 0x02CC12 21:8C02: 14        .byte $14	; <と>
- D - I - 0x02CC13 21:8C03: 46        .byte $46	; <カ>
; продолжение


off_8C04:
- D - I - 0x02CC14 21:8C04: 18        .byte $18	; <ね>
- D - I - 0x02CC15 21:8C05: 03        .byte $03	; <う>
- D - I - 0x02CC16 21:8C06: 11        .byte $11	; <ち>
- D - I - 0x02CC17 21:8C07: 44        .byte $44	; <エ>
- D - I - 0x02CC18 21:8C08: 13        .byte $13	; <て>
- D - I - 0x02CC19 21:8C09: 05        .byte $05	; <お>
- D - I - 0x02CC1A 21:8C0A: 15        .byte $15	; <な>
- D - I - 0x02CC1B 21:8C0B: 19        .byte $19	; <の>
- D - I - 0x02CC1C 21:8C0C: 18        .byte $18	; <ね>
- D - I - 0x02CC1D 21:8C0D: 1C        .byte $1C	; <ふ>

- D - I - 0x02CC1E 21:8C0E: 02        .byte $02	; <い>
- D - I - 0x02CC1F 21:8C0F: BD 8C     .word off_8CBD



off_8C11:
- D - I - 0x02CC21 21:8C11: 10        .byte $10	; <た>
- D - I - 0x02CC22 21:8C12: 01        .byte $01	; <あ>
- D - I - 0x02CC23 21:8C13: 0C        .byte $0C	; <し>
- D - I - 0x02CC24 21:8C14: 48        .byte $48	; <ク>
- D - I - 0x02CC25 21:8C15: 10        .byte $10	; <た>
- D - I - 0x02CC26 21:8C16: 49        .byte $49	; <ケ>
- D - I - 0x02CC27 21:8C17: 14        .byte $14	; <と>
- D - I - 0x02CC28 21:8C18: 4C        .byte $4C	; <シ>

- D - I - 0x02CC29 21:8C19: 18        .byte $18	; <ね>
- D - I - 0x02CC2A 21:8C1A: 02        .byte $02	; <い>
- D - I - 0x02CC2B 21:8C1B: 0C        .byte $0C	; <し>
- D - I - 0x02CC2C 21:8C1C: 4A        .byte $4A	; <コ>
- D - I - 0x02CC2D 21:8C1D: 10        .byte $10	; <た>
- D - I - 0x02CC2E 21:8C1E: 4B        .byte $4B	; <サ>
- D - I - 0x02CC2F 21:8C1F: 13        .byte $13	; <て>
- D - I - 0x02CC30 21:8C20: 05        .byte $05	; <お>
- D - I - 0x02CC31 21:8C21: 14        .byte $14	; <と>
- D - I - 0x02CC32 21:8C22: 4E        .byte $4E	; <セ>

- D - I - 0x02CC33 21:8C23: 02        .byte $02	; <い>
- D - I - 0x02CC34 21:8C24: 04 8C     .word off_8C04



off_8C26:
- D - I - 0x02CC36 21:8C26: 10        .byte $10	; <た>
- D - I - 0x02CC37 21:8C27: 01        .byte $01	; <あ>
- D - I - 0x02CC38 21:8C28: 0C        .byte $0C	; <し>
- D - I - 0x02CC39 21:8C29: 11        .byte $11	; <ち>
- D - I - 0x02CC3A 21:8C2A: 10        .byte $10	; <た>
- D - I - 0x02CC3B 21:8C2B: 60        .byte $60	; <ミ>
- D - I - 0x02CC3C 21:8C2C: 14        .byte $14	; <と>
- D - I - 0x02CC3D 21:8C2D: 61        .byte $61	; <ム>

- D - I - 0x02CC3E 21:8C2E: 18        .byte $18	; <ね>
- D - I - 0x02CC3F 21:8C2F: 02        .byte $02	; <い>
- D - I - 0x02CC40 21:8C30: 0C        .byte $0C	; <し>
- D - I - 0x02CC41 21:8C31: 62        .byte $62	; <メ>
- D - I - 0x02CC42 21:8C32: 10        .byte $10	; <た>
- D - I - 0x02CC43 21:8C33: 63        .byte $63	; <モ>
- D - I - 0x02CC44 21:8C34: 13        .byte $13	; <て>
- D - I - 0x02CC45 21:8C35: 05        .byte $05	; <お>
- D - I - 0x02CC46 21:8C36: 14        .byte $14	; <と>
- D - I - 0x02CC47 21:8C37: 66        .byte $66	; <ヨ>

- D - I - 0x02CC48 21:8C38: 02        .byte $02	; <い>
- D - I - 0x02CC49 21:8C39: 04 8C     .word off_8C04



off_8C3B:
- D - I - 0x02CC4B 21:8C3B: 10        .byte $10	; <た>
- D - I - 0x02CC4C 21:8C3C: 01        .byte $01	; <あ>
- D - I - 0x02CC4D 21:8C3D: 0C        .byte $0C	; <し>
- D - I - 0x02CC4E 21:8C3E: 68        .byte $68	; <リ>
- D - I - 0x02CC4F 21:8C3F: 10        .byte $10	; <た>
- D - I - 0x02CC50 21:8C40: 69        .byte $69	; <ル>
- D - I - 0x02CC51 21:8C41: 14        .byte $14	; <と>
- D - I - 0x02CC52 21:8C42: 3B        .byte $3B	; <8>

- D - I - 0x02CC53 21:8C43: 18        .byte $18	; <ね>
- D - I - 0x02CC54 21:8C44: 02        .byte $02	; <い>
- D - I - 0x02CC55 21:8C45: 0C        .byte $0C	; <し>
- D - I - 0x02CC56 21:8C46: 6A        .byte $6A	; <レ>
- D - I - 0x02CC57 21:8C47: 10        .byte $10	; <た>
- D - I - 0x02CC58 21:8C48: 6B        .byte $6B	; <ロ>
- D - I - 0x02CC59 21:8C49: 13        .byte $13	; <て>
- D - I - 0x02CC5A 21:8C4A: 05        .byte $05	; <お>
- D - I - 0x02CC5B 21:8C4B: 14        .byte $14	; <と>
- D - I - 0x02CC5C 21:8C4C: 6E        .byte $6E	; <ン>

- D - I - 0x02CC5D 21:8C4D: 18        .byte $18	; <ね>
- D - I - 0x02CC5E 21:8C4E: 03        .byte $03	; <う>
- D - I - 0x02CC5F 21:8C4F: 11        .byte $11	; <ち>
- D - I - 0x02CC60 21:8C50: 18        .byte $18	; <ね>
- D - I - 0x02CC61 21:8C51: 13        .byte $13	; <て>
- D - I - 0x02CC62 21:8C52: 05        .byte $05	; <お>
- D - I - 0x02CC63 21:8C53: 15        .byte $15	; <な>
- D - I - 0x02CC64 21:8C54: 6F        .byte $6F	; <ッ>
- D - I - 0x02CC65 21:8C55: 18        .byte $18	; <ね>
- D - I - 0x02CC66 21:8C56: 1C        .byte $1C	; <ふ>

- D - I - 0x02CC67 21:8C57: 02        .byte $02	; <い>
- D - I - 0x02CC68 21:8C58: BD 8C     .word off_8CBD



off_8C5A:
- D - I - 0x02CC6A 21:8C5A: 10        .byte $10	; <た>
- D - I - 0x02CC6B 21:8C5B: 01        .byte $01	; <あ>
- D - I - 0x02CC6C 21:8C5C: 0C        .byte $0C	; <し>
- D - I - 0x02CC6D 21:8C5D: 4F        .byte $4F	; <ソ>
- D - I - 0x02CC6E 21:8C5E: 10        .byte $10	; <た>
- D - I - 0x02CC6F 21:8C5F: 64        .byte $64	; <ヤ>
- D - I - 0x02CC70 21:8C60: 14        .byte $14	; <と>
- D - I - 0x02CC71 21:8C61: 65        .byte $65	; <ユ>

- D - I - 0x02CC72 21:8C62: 18        .byte $18	; <ね>
- D - I - 0x02CC73 21:8C63: 02        .byte $02	; <い>
- D - I - 0x02CC74 21:8C64: 0C        .byte $0C	; <し>
- D - I - 0x02CC75 21:8C65: 67        .byte $67	; <ラ>
- D - I - 0x02CC76 21:8C66: 10        .byte $10	; <た>
- D - I - 0x02CC77 21:8C67: 6C        .byte $6C	; <ワ>
- D - I - 0x02CC78 21:8C68: 13        .byte $13	; <て>
- D - I - 0x02CC79 21:8C69: 05        .byte $05	; <お>
- D - I - 0x02CC7A 21:8C6A: 14        .byte $14	; <と>
- D - I - 0x02CC7B 21:8C6B: 6D        .byte $6D	; <ヲ>

- D - I - 0x02CC7C 21:8C6C: 00        .byte $00
- D - I - 0x02CC7D 21:8C6D: 03        .byte $03	; <う>
- D - I - 0x02CC7E 21:8C6E: 11        .byte $11	; <ち>
- D - I - 0x02CC7F 21:8C6F: 18        .byte $18	; <ね>

- D - I - 0x02CC80 21:8C70: 02        .byte $02	; <い>
- D - I - 0x02CC81 21:8C71: B5 8C     .word off_8CB5



off_8C73:
- D - I - 0x02CC83 21:8C73: 10        .byte $10	; <た>
- D - I - 0x02CC84 21:8C74: 01        .byte $01	; <あ>
- D - I - 0x02CC85 21:8C75: 0C        .byte $0C	; <し>
- D - I - 0x02CC86 21:8C76: 3F        .byte $3F	; <•>
- D - I - 0x02CC87 21:8C77: 10        .byte $10	; <た>
- D - I - 0x02CC88 21:8C78: 45        .byte $45	; <オ>
- D - I - 0x02CC89 21:8C79: 14        .byte $14	; <と>
- D - I - 0x02CC8A 21:8C7A: 50        .byte $50	; <タ>

- D - I - 0x02CC8B 21:8C7B: 18        .byte $18	; <ね>
- D - I - 0x02CC8C 21:8C7C: 02        .byte $02	; <い>
- D - I - 0x02CC8D 21:8C7D: 0C        .byte $0C	; <し>
- D - I - 0x02CC8E 21:8C7E: 42        .byte $42	; <イ>
- D - I - 0x02CC8F 21:8C7F: 10        .byte $10	; <た>
- D - I - 0x02CC90 21:8C80: 47        .byte $47	; <キ>
- D - I - 0x02CC91 21:8C81: 13        .byte $13	; <て>
- D - I - 0x02CC92 21:8C82: 05        .byte $05	; <お>
- D - I - 0x02CC93 21:8C83: 14        .byte $14	; <と>
- D - I - 0x02CC94 21:8C84: 52        .byte $52	; <ツ>

- D - I - 0x02CC95 21:8C85: 02        .byte $02	; <い>
- D - I - 0x02CC96 21:8C86: 04 8C     .word off_8C04



off_8C88:
- D - I - 0x02CC98 21:8C88: 10        .byte $10	; <た>
- D - I - 0x02CC99 21:8C89: 01        .byte $01	; <あ>
- D - I - 0x02CC9A 21:8C8A: 0C        .byte $0C	; <し>
- D - I - 0x02CC9B 21:8C8B: 4D        .byte $4D	; <ス>
- D - I - 0x02CC9C 21:8C8C: 10        .byte $10	; <た>
- D - I - 0x02CC9D 21:8C8D: 58        .byte $58	; <ネ>
- D - I - 0x02CC9E 21:8C8E: 14        .byte $14	; <と>
- D - I - 0x02CC9F 21:8C8F: 4C        .byte $4C	; <シ>

- D - I - 0x02CCA0 21:8C90: 18        .byte $18	; <ね>
- D - I - 0x02CCA1 21:8C91: 02        .byte $02	; <い>
- D - I - 0x02CCA2 21:8C92: 0C        .byte $0C	; <し>
- D - I - 0x02CCA3 21:8C93: 5A        .byte $5A	; <ハ>
- D - I - 0x02CCA4 21:8C94: 10        .byte $10	; <た>
- D - I - 0x02CCA5 21:8C95: 4B        .byte $4B	; <サ>
- D - I - 0x02CCA6 21:8C96: 13        .byte $13	; <て>
- D - I - 0x02CCA7 21:8C97: 05        .byte $05	; <お>
- D - I - 0x02CCA8 21:8C98: 14        .byte $14	; <と>
- D - I - 0x02CCA9 21:8C99: 5B        .byte $5B	; <ヒ>

- D - I - 0x02CCAA 21:8C9A: 02        .byte $02	; <い>
- D - I - 0x02CCAB 21:8C9B: 04 8C     .word off_8C04



off_8C9D:
- D - I - 0x02CCAD 21:8C9D: 00        .byte $00
- D - I - 0x02CCAE 21:8C9E: 02        .byte $02	; <い>
- D - I - 0x02CCAF 21:8C9F: 14        .byte $14	; <と>
- D - I - 0x02CCB0 21:8CA0: 2F        .byte $2F	; <っ>
; продолжение


off_8CA1:
- D - I - 0x02CCB1 21:8CA1: 10        .byte $10	; <た>
- D - I - 0x02CCB2 21:8CA2: 01        .byte $01	; <あ>
- D - I - 0x02CCB3 21:8CA3: 0C        .byte $0C	; <し>
- D - I - 0x02CCB4 21:8CA4: 36        .byte $36	; <3>
- D - I - 0x02CCB5 21:8CA5: 10        .byte $10	; <た>
- D - I - 0x02CCB6 21:8CA6: 37        .byte $37	; <4>
- D - I - 0x02CCB7 21:8CA7: 14        .byte $14	; <と>
- D - I - 0x02CCB8 21:8CA8: 2E        .byte $2E	; <ん>

- D - I - 0x02CCB9 21:8CA9: 10        .byte $10	; <た>
- D - I - 0x02CCBA 21:8CAA: 02        .byte $02	; <い>
- D - I - 0x02CCBB 21:8CAB: 0C        .byte $0C	; <し>
- D - I - 0x02CCBC 21:8CAC: 2D        .byte $2D	; <を>
- D - I - 0x02CCBD 21:8CAD: 10        .byte $10	; <た>
- D - I - 0x02CCBE 21:8CAE: 38        .byte $38	; <5>
- D - I - 0x02CCBF 21:8CAF: 13        .byte $13	; <て>
- D - I - 0x02CCC0 21:8CB0: 05        .byte $05	; <お>
; продолжение


off_8CB1:
- D - I - 0x02CCC1 21:8CB1: 00        .byte $00
- D - I - 0x02CCC2 21:8CB2: 03        .byte $03	; <う>
- D - I - 0x02CCC3 21:8CB3: 11        .byte $11	; <ち>
- D - I - 0x02CCC4 21:8CB4: 18        .byte $18	; <ね>
; продолжение


off_8CB5:
- D - I - 0x02CCC5 21:8CB5: 10        .byte $10	; <た>
- D - I - 0x02CCC6 21:8CB6: 03        .byte $03	; <う>
- D - I - 0x02CCC7 21:8CB7: 13        .byte $13	; <て>
- D - I - 0x02CCC8 21:8CB8: 05        .byte $05	; <お>
- D - I - 0x02CCC9 21:8CB9: 15        .byte $15	; <な>
- D - I - 0x02CCCA 21:8CBA: 19        .byte $19	; <の>
- D - I - 0x02CCCB 21:8CBB: 18        .byte $18	; <ね>
- D - I - 0x02CCCC 21:8CBC: 1C        .byte $1C	; <ふ>
; продолжение


off_8CBD:
- D - I - 0x02CCCD 21:8CBD: 00        .byte $00
- D - I - 0x02CCCE 21:8CBE: 03        .byte $03	; <う>
- D - I - 0x02CCCF 21:8CBF: 0D        .byte $0D	; <す>
- D - I - 0x02CCD0 21:8CC0: 04        .byte $04	; <え>

- D - I - 0x02CCD1 21:8CC1: 20        .byte $20	; <み>
- D - I - 0x02CCD2 21:8CC2: 04        .byte $04	; <え>
- D - I - 0x02CCD3 21:8CC3: 09        .byte $09	; <け>
- D - I - 0x02CCD4 21:8CC4: 03        .byte $03	; <う>
- D - I - 0x02CCD5 21:8CC5: 0D        .byte $0D	; <す>
- D - I - 0x02CCD6 21:8CC6: 06        .byte $06	; <か>
- D - I - 0x02CCD7 21:8CC7: 11        .byte $11	; <ち>
- D - I - 0x02CCD8 21:8CC8: 07        .byte $07	; <き>
- D - I - 0x02CCD9 21:8CC9: 17        .byte $17	; <ぬ>
- D - I - 0x02CCDA 21:8CCA: 12        .byte $12	; <つ>
- D - I - 0x02CCDB 21:8CCB: 1B        .byte $1B	; <ひ>
- D - I - 0x02CCDC 21:8CCC: 13        .byte $13	; <て>

- D - I - 0x02CCDD 21:8CCD: 28        .byte $28	; <り>
- D - I - 0x02CCDE 21:8CCE: 05        .byte $05	; <お>
- D - I - 0x02CCDF 21:8CCF: 04        .byte $04	; <え>
- D - I - 0x02CCE0 21:8CD0: 08        .byte $08	; <く>
- D - I - 0x02CCE1 21:8CD1: 09        .byte $09	; <け>
- D - I - 0x02CCE2 21:8CD2: 09        .byte $09	; <け>
- D - I - 0x02CCE3 21:8CD3: 0D        .byte $0D	; <す>
- D - I - 0x02CCE4 21:8CD4: 0C        .byte $0C	; <し>
- D - I - 0x02CCE5 21:8CD5: 0E        .byte $0E	; <せ>
- D - I - 0x02CCE6 21:8CD6: 05        .byte $05	; <お>
- D - I - 0x02CCE7 21:8CD7: 11        .byte $11	; <ち>
- D - I - 0x02CCE8 21:8CD8: 0D        .byte $0D	; <す>
- D - I - 0x02CCE9 21:8CD9: 12        .byte $12	; <つ>
- D - I - 0x02CCEA 21:8CDA: 10        .byte $10	; <た>

- D - I - 0x02CCEB 21:8CDB: 18        .byte $18	; <ね>
- D - I - 0x02CCEC 21:8CDC: 06        .byte $06	; <か>
- D - I - 0x02CCED 21:8CDD: 07        .byte $07	; <き>
- D - I - 0x02CCEE 21:8CDE: 0A        .byte $0A	; <こ>
- D - I - 0x02CCEF 21:8CDF: 0A        .byte $0A	; <こ>
- D - I - 0x02CCF0 21:8CE0: 0B        .byte $0B	; <さ>
- D - I - 0x02CCF1 21:8CE1: 0E        .byte $0E	; <せ>
- D - I - 0x02CCF2 21:8CE2: 0E        .byte $0E	; <せ>
- D - I - 0x02CCF3 21:8CE3: 12        .byte $12	; <つ>
- D - I - 0x02CCF4 21:8CE4: 0F        .byte $0F	; <そ>

- D - I - 0x02CCF5 21:8CE5: 18        .byte $18	; <ね>
- D - I - 0x02CCF6 21:8CE6: 07        .byte $07	; <き>
- D - I - 0x02CCF7 21:8CE7: 55        .byte $55	; <ナ>
- D - I - 0x02CCF8 21:8CE8: 20        .byte $20	; <み>
- D - I - 0x02CCF9 21:8CE9: 41        .byte $41	; <ア>
- D - I - 0x02CCFA 21:8CEA: 21        .byte $21	; <む>
- D - I - 0x02CCFB 21:8CEB: 47        .byte $47	; <キ>
- D - I - 0x02CCFC 21:8CEC: 24        .byte $24	; <や>
- D - I - 0x02CCFD 21:8CED: 87        .byte $87	; <G>
- D - I - 0x02CCFE 21:8CEE: 25        .byte $25	; <ゆ>

- D - I - 0x02CCFF 21:8CEF: 18        .byte $18	; <ね>
- D - I - 0x02CD00 21:8CF0: 08        .byte $08	; <く>
- D - I - 0x02CD01 21:8CF1: 09        .byte $09	; <け>
- D - I - 0x02CD02 21:8CF2: 22        .byte $22	; <め>
- D - I - 0x02CD03 21:8CF3: 0D        .byte $0D	; <す>
- D - I - 0x02CD04 21:8CF4: 23        .byte $23	; <も>
- D - I - 0x02CD05 21:8CF5: 11        .byte $11	; <ち>
- D - I - 0x02CD06 21:8CF6: 26        .byte $26	; <よ>
- D - I - 0x02CD07 21:8CF7: 15        .byte $15	; <な>
- D - I - 0x02CD08 21:8CF8: 27        .byte $27	; <ら>

- D - I - 0x02CD09 21:8CF9: 10        .byte $10	; <た>
- D - I - 0x02CD0A 21:8CFA: 09        .byte $09	; <け>
- D - I - 0x02CD0B 21:8CFB: 27        .byte $27	; <ら>
- D - I - 0x02CD0C 21:8CFC: 28        .byte $28	; <り>
- D - I - 0x02CD0D 21:8CFD: 3D        .byte $3D	; <+>
- D - I - 0x02CD0E 21:8CFE: 29        .byte $29	; <る>
- D - I - 0x02CD0F 21:8CFF: 89        .byte $89	; <I>
- D - I - 0x02CD10 21:8D00: 2C        .byte $2C	; <わ>

- D - I - 0x02CD11 21:8D01: 08        .byte $08	; <く>
- D - I - 0x02CD12 21:8D02: 16        .byte $16	; <に>
- D - I - 0x02CD13 21:8D03: 19        .byte $19	; <の>
- D - I - 0x02CD14 21:8D04: 2A        .byte $2A	; <れ>
- D - I - 0x02CD15 21:8D05: 83        .byte $83	; <C>
- D - I - 0x02CD16 21:8D06: 2B        .byte $2B	; <ろ>

- D - I - 0x02CD17 21:8D07: 00        .byte $00
- D - I - 0x02CD18 21:8D08: 17        .byte $17	; <ぬ>
- D - I - 0x02CD19 21:8D09: DF        .byte $DF
- D - I - 0x02CD1A 21:8D0A: 02        .byte $02	; <い>

- D - I - 0x02CD1B 21:8D0B: 01        .byte $01	; <あ>



off_8D0C_15:
- D - I - 0x02CD1C 21:8D0C: 08        .byte $08	; <く>
- D - I - 0x02CD1D 21:8D0D: 18        .byte $18	; <ね>
- D - I - 0x02CD1E 21:8D0E: 0B        .byte $0B	; <さ>
- D - I - 0x02CD1F 21:8D0F: 51        .byte $51	; <チ>
- D - I - 0x02CD20 21:8D10: 0F        .byte $0F	; <そ>
- D - I - 0x02CD21 21:8D11: 54        .byte $54	; <ト>

- D - I - 0x02CD22 21:8D12: 08        .byte $08	; <く>
- D - I - 0x02CD23 21:8D13: 19        .byte $19	; <の>
- D - I - 0x02CD24 21:8D14: 0B        .byte $0B	; <さ>
- D - I - 0x02CD25 21:8D15: 53        .byte $53	; <テ>
- D - I - 0x02CD26 21:8D16: 0F        .byte $0F	; <そ>
- D - I - 0x02CD27 21:8D17: 56        .byte $56	; <ニ>

- D - I - 0x02CD28 21:8D18: 02        .byte $02	; <い>
- D - I - 0x02CD29 21:8D19: 81 8B     .word off_8B81



off_8D1B_16:
- D - I - 0x02CD2B 21:8D1B: 08        .byte $08	; <く>
- D - I - 0x02CD2C 21:8D1C: 18        .byte $18	; <ね>
- D - I - 0x02CD2D 21:8D1D: 0B        .byte $0B	; <さ>
- D - I - 0x02CD2E 21:8D1E: 51        .byte $51	; <チ>
- D - I - 0x02CD2F 21:8D1F: 0F        .byte $0F	; <そ>
- D - I - 0x02CD30 21:8D20: 54        .byte $54	; <ト>

- D - I - 0x02CD31 21:8D21: 10        .byte $10	; <た>
- D - I - 0x02CD32 21:8D22: 19        .byte $19	; <の>
- D - I - 0x02CD33 21:8D23: 0B        .byte $0B	; <さ>
- D - I - 0x02CD34 21:8D24: 53        .byte $53	; <テ>
- D - I - 0x02CD35 21:8D25: 0F        .byte $0F	; <そ>
- D - I - 0x02CD36 21:8D26: 5C        .byte $5C	; <フ>
- D - I - 0x02CD37 21:8D27: 13        .byte $13	; <て>
- D - I - 0x02CD38 21:8D28: 5D        .byte $5D	; <ヘ>

- D - I - 0x02CD39 21:8D29: 00        .byte $00
- D - I - 0x02CD3A 21:8D2A: 1A        .byte $1A	; <は>
- D - I - 0x02CD3B 21:8D2B: 0F        .byte $0F	; <そ>
- D - I - 0x02CD3C 21:8D2C: 5E        .byte $5E	; <ホ>

- D - I - 0x02CD3D 21:8D2D: 02        .byte $02	; <い>
- D - I - 0x02CD3E 21:8D2E: 81 8B     .word off_8B81



off_8D30_17:
- D - I - 0x02CD40 21:8D30: 08        .byte $08	; <く>
- D - I - 0x02CD41 21:8D31: 18        .byte $18	; <ね>
- D - I - 0x02CD42 21:8D32: 0B        .byte $0B	; <さ>
- D - I - 0x02CD43 21:8D33: 51        .byte $51	; <チ>
- D - I - 0x02CD44 21:8D34: 0F        .byte $0F	; <そ>
- D - I - 0x02CD45 21:8D35: 54        .byte $54	; <ト>

- D - I - 0x02CD46 21:8D36: 10        .byte $10	; <た>
- D - I - 0x02CD47 21:8D37: 19        .byte $19	; <の>
- D - I - 0x02CD48 21:8D38: 0B        .byte $0B	; <さ>
- D - I - 0x02CD49 21:8D39: 53        .byte $53	; <テ>
- D - I - 0x02CD4A 21:8D3A: 0F        .byte $0F	; <そ>
- D - I - 0x02CD4B 21:8D3B: 55        .byte $55	; <ナ>
- D - I - 0x02CD4C 21:8D3C: 13        .byte $13	; <て>
- D - I - 0x02CD4D 21:8D3D: 57        .byte $57	; <ヌ>

- D - I - 0x02CD4E 21:8D3E: 00        .byte $00
- D - I - 0x02CD4F 21:8D3F: 1A        .byte $1A	; <は>
- D - I - 0x02CD50 21:8D40: 0F        .byte $0F	; <そ>
- D - I - 0x02CD51 21:8D41: 59        .byte $59	; <ノ>

- D - I - 0x02CD52 21:8D42: 02        .byte $02	; <い>
- D - I - 0x02CD53 21:8D43: 81 8B     .word off_8B81



off_8D45_18:
- D - I - 0x02CD55 21:8D45: 08        .byte $08	; <く>
- D - I - 0x02CD56 21:8D46: 03        .byte $03	; <う>
- D - I - 0x02CD57 21:8D47: 0F        .byte $0F	; <そ>
- D - I - 0x02CD58 21:8D48: 51        .byte $51	; <チ>
- D - I - 0x02CD59 21:8D49: 13        .byte $13	; <て>
- D - I - 0x02CD5A 21:8D4A: 54        .byte $54	; <ト>

- D - I - 0x02CD5B 21:8D4B: 08        .byte $08	; <く>
- D - I - 0x02CD5C 21:8D4C: 04        .byte $04	; <え>
- D - I - 0x02CD5D 21:8D4D: 0F        .byte $0F	; <そ>
- D - I - 0x02CD5E 21:8D4E: 53        .byte $53	; <テ>
- D - I - 0x02CD5F 21:8D4F: 13        .byte $13	; <て>
- D - I - 0x02CD60 21:8D50: 56        .byte $56	; <ニ>

- D - I - 0x02CD61 21:8D51: 01        .byte $01	; <あ>



off_8D52_19:
off_8D52:
- D - I - 0x02CD62 21:8D52: 03        .byte $03	; <う>
- D - I - 0x02CD63 21:8D53: 6B 8D     .word off_8D6B
- D - I - 0x02CD65 21:8D55: 80 8D     .word off_8D80
- D - I - 0x02CD67 21:8D57: A1 8D     .word off_8DA1
- D - I - 0x02CD69 21:8D59: AC 8D     .word off_8DAC
- D - I - 0x02CD6B 21:8D5B: CD 8D     .word off_8DCD
- D - I - 0x02CD6D 21:8D5D: E8 8D     .word off_8DE8
- D - I - 0x02CD6F 21:8D5F: 09 8E     .word off_8E09
- D - I - 0x02CD71 21:8D61: 26 8E     .word off_8E26
- D - I - 0x02CD73 21:8D63: 49 8E     .word off_8E49
- D - I - 0x02CD75 21:8D65: 68 8E     .word off_8E68
- D - I - 0x02CD77 21:8D67: 87 8E     .word off_8E87
- D - I - 0x02CD79 21:8D69: A8 8E     .word off_8EA8



off_8D6B:
- D - I - 0x02CD7B 21:8D6B: 10        .byte $10	; <た>
- D - I - 0x02CD7C 21:8D6C: 01        .byte $01	; <あ>
- D - I - 0x02CD7D 21:8D6D: 54        .byte $54	; <ト>
- D - I - 0x02CD7E 21:8D6E: A0        .byte $A0	; <が>
- D - I - 0x02CD7F 21:8D6F: 40        .byte $40	; <「>
- D - I - 0x02CD80 21:8D70: A1        .byte $A1	; <ぎ>
- D - I - 0x02CD81 21:8D71: 44        .byte $44	; <エ>
- D - I - 0x02CD82 21:8D72: A4        .byte $A4	; <ご>

- D - I - 0x02CD83 21:8D73: 18        .byte $18	; <ね>
- D - I - 0x02CD84 21:8D74: 02        .byte $02	; <い>
- D - I - 0x02CD85 21:8D75: 54        .byte $54	; <ト>
- D - I - 0x02CD86 21:8D76: A2        .byte $A2	; <ぐ>
- D - I - 0x02CD87 21:8D77: 40        .byte $40	; <「>
- D - I - 0x02CD88 21:8D78: A3        .byte $A3	; <げ>
- D - I - 0x02CD89 21:8D79: 45        .byte $45	; <オ>
- D - I - 0x02CD8A 21:8D7A: A6        .byte $A6	; <じ>
- D - I - 0x02CD8B 21:8D7B: 44        .byte $44	; <エ>
- D - I - 0x02CD8C 21:8D7C: 8E        .byte $8E	; <L>

- D - I - 0x02CD8D 21:8D7D: 02        .byte $02	; <い>
- D - I - 0x02CD8E 21:8D7E: BC 8E     .word off_8EBC



off_8D80:
- D - I - 0x02CD90 21:8D80: 18        .byte $18	; <ね>
- D - I - 0x02CD91 21:8D81: 01        .byte $01	; <あ>
- D - I - 0x02CD92 21:8D82: 54        .byte $54	; <ト>
- D - I - 0x02CD93 21:8D83: AA        .byte $AA	; <だ>
- D - I - 0x02CD94 21:8D84: 40        .byte $40	; <「>
- D - I - 0x02CD95 21:8D85: AB        .byte $AB	; <ぢ>
- D - I - 0x02CD96 21:8D86: 44        .byte $44	; <エ>
- D - I - 0x02CD97 21:8D87: AE        .byte $AE	; <ど>
- D - I - 0x02CD98 21:8D88: 84        .byte $84	; <D>
- D - I - 0x02CD99 21:8D89: AF        .byte $AF	; <ば>

- D - I - 0x02CD9A 21:8D8A: 18        .byte $18	; <ね>
- D - I - 0x02CD9B 21:8D8B: 02        .byte $02	; <い>
- D - I - 0x02CD9C 21:8D8C: 54        .byte $54	; <ト>
- D - I - 0x02CD9D 21:8D8D: 90        .byte $90	; <U>
- D - I - 0x02CD9E 21:8D8E: 40        .byte $40	; <「>
- D - I - 0x02CD9F 21:8D8F: 91        .byte $91	; <V>
- D - I - 0x02CDA0 21:8D90: 45        .byte $45	; <オ>
- D - I - 0x02CDA1 21:8D91: 94        .byte $94
- D - I - 0x02CDA2 21:8D92: 44        .byte $44	; <エ>
- D - I - 0x02CDA3 21:8D93: 93        .byte $93	; <Y>

- D - I - 0x02CDA4 21:8D94: 18        .byte $18	; <ね>
- D - I - 0x02CDA5 21:8D95: 03        .byte $03	; <う>
- D - I - 0x02CDA6 21:8D96: 55        .byte $55	; <ナ>
- D - I - 0x02CDA7 21:8D97: 92        .byte $92	; <W>
- D - I - 0x02CDA8 21:8D98: 41        .byte $41	; <ア>
- D - I - 0x02CDA9 21:8D99: A9        .byte $A9	; <ぞ>
- D - I - 0x02CDAA 21:8D9A: 43        .byte $43	; <ウ>
- D - I - 0x02CDAB 21:8D9B: 05        .byte $05	; <お>
- D - I - 0x02CDAC 21:8D9C: 45        .byte $45	; <オ>
- D - I - 0x02CDAD 21:8D9D: AC        .byte $AC	; <づ>

- D - I - 0x02CDAE 21:8D9E: 02        .byte $02	; <い>
- D - I - 0x02CDAF 21:8D9F: C8 8E     .word off_8EC8



off_8DA1:
- D - I - 0x02CDB1 21:8DA1: 10        .byte $10	; <た>
- D - I - 0x02CDB2 21:8DA2: 02        .byte $02	; <い>
- D - I - 0x02CDB3 21:8DA3: 40        .byte $40	; <「>
- D - I - 0x02CDB4 21:8DA4: 91        .byte $91	; <V>
- D - I - 0x02CDB5 21:8DA5: 45        .byte $45	; <オ>
- D - I - 0x02CDB6 21:8DA6: 9A        .byte $9A
- D - I - 0x02CDB7 21:8DA7: 44        .byte $44	; <エ>
- D - I - 0x02CDB8 21:8DA8: 9B        .byte $9B

- D - I - 0x02CDB9 21:8DA9: 02        .byte $02	; <い>
- D - I - 0x02CDBA 21:8DAA: B0 8E     .word off_8EB0



off_8DAC:
- D - I - 0x02CDBC 21:8DAC: 10        .byte $10	; <た>
- D - I - 0x02CDBD 21:8DAD: 01        .byte $01	; <あ>
- D - I - 0x02CDBE 21:8DAE: 54        .byte $54	; <ト>
- D - I - 0x02CDBF 21:8DAF: A7        .byte $A7	; <ず>
- D - I - 0x02CDC0 21:8DB0: 40        .byte $40	; <「>
- D - I - 0x02CDC1 21:8DB1: B2        .byte $B2	; <べ>
- D - I - 0x02CDC2 21:8DB2: 44        .byte $44	; <エ>
- D - I - 0x02CDC3 21:8DB3: B3        .byte $B3	; <ぼ>

- D - I - 0x02CDC4 21:8DB4: 18        .byte $18	; <ね>
- D - I - 0x02CDC5 21:8DB5: 02        .byte $02	; <い>
- D - I - 0x02CDC6 21:8DB6: 54        .byte $54	; <ト>
- D - I - 0x02CDC7 21:8DB7: AD        .byte $AD	; <で>
- D - I - 0x02CDC8 21:8DB8: 40        .byte $40	; <「>
- D - I - 0x02CDC9 21:8DB9: B8        .byte $B8	; <ゴ>
- D - I - 0x02CDCA 21:8DBA: 45        .byte $45	; <オ>
- D - I - 0x02CDCB 21:8DBB: B9        .byte $B9	; <ザ>
- D - I - 0x02CDCC 21:8DBC: 44        .byte $44	; <エ>
- D - I - 0x02CDCD 21:8DBD: BB        .byte $BB	; <ズ>

- D - I - 0x02CDCE 21:8DBE: 20        .byte $20	; <み>
- D - I - 0x02CDCF 21:8DBF: 03        .byte $03	; <う>
- D - I - 0x02CDD0 21:8DC0: 55        .byte $55	; <ナ>
- D - I - 0x02CDD1 21:8DC1: A8        .byte $A8	; <ぜ>
- D - I - 0x02CDD2 21:8DC2: 54        .byte $54	; <ト>
- D - I - 0x02CDD3 21:8DC3: 05        .byte $05	; <お>
- D - I - 0x02CDD4 21:8DC4: 41        .byte $41	; <ア>
- D - I - 0x02CDD5 21:8DC5: BA        .byte $BA	; <ジ>
- D - I - 0x02CDD6 21:8DC6: 43        .byte $43	; <ウ>
- D - I - 0x02CDD7 21:8DC7: 05        .byte $05	; <お>
- D - I - 0x02CDD8 21:8DC8: 45        .byte $45	; <オ>
- D - I - 0x02CDD9 21:8DC9: AC        .byte $AC	; <づ>

- D - I - 0x02CDDA 21:8DCA: 02        .byte $02	; <い>
- D - I - 0x02CDDB 21:8DCB: C8 8E     .word off_8EC8



off_8DCD:
- D - I - 0x02CDDD 21:8DCD: 08        .byte $08	; <く>
- D - I - 0x02CDDE 21:8DCE: 01        .byte $01	; <あ>
- D - I - 0x02CDDF 21:8DCF: 54        .byte $54	; <ト>
- D - I - 0x02CDE0 21:8DD0: 95        .byte $95
- D - I - 0x02CDE1 21:8DD1: 40        .byte $40	; <「>
- D - I - 0x02CDE2 21:8DD2: D5        .byte $D5

- D - I - 0x02CDE3 21:8DD3: 10        .byte $10	; <た>
- D - I - 0x02CDE4 21:8DD4: 02        .byte $02	; <い>
- D - I - 0x02CDE5 21:8DD5: 54        .byte $54	; <ト>
- D - I - 0x02CDE6 21:8DD6: 96        .byte $96
- D - I - 0x02CDE7 21:8DD7: 40        .byte $40	; <「>
- D - I - 0x02CDE8 21:8DD8: 97        .byte $97
- D - I - 0x02CDE9 21:8DD9: 45        .byte $45	; <オ>
- D - I - 0x02CDEA 21:8DDA: C2        .byte $C2	; <ド>

- D - I - 0x02CDEB 21:8DDB: 18        .byte $18	; <ね>
- D - I - 0x02CDEC 21:8DDC: 03        .byte $03	; <う>
- D - I - 0x02CDED 21:8DDD: 55        .byte $55	; <ナ>
- D - I - 0x02CDEE 21:8DDE: 9D        .byte $9D
- D - I - 0x02CDEF 21:8DDF: 41        .byte $41	; <ア>
- D - I - 0x02CDF0 21:8DE0: C8        .byte $C8	; <ぱ>
- D - I - 0x02CDF1 21:8DE1: 43        .byte $43	; <ウ>
- D - I - 0x02CDF2 21:8DE2: 05        .byte $05	; <お>
- D - I - 0x02CDF3 21:8DE3: 45        .byte $45	; <オ>
- D - I - 0x02CDF4 21:8DE4: C9        .byte $C9	; <ぴ>

- D - I - 0x02CDF5 21:8DE5: 02        .byte $02	; <い>
- D - I - 0x02CDF6 21:8DE6: C8 8E     .word off_8EC8



off_8DE8:
- D - I - 0x02CDF8 21:8DE8: 10        .byte $10	; <た>
- D - I - 0x02CDF9 21:8DE9: 01        .byte $01	; <あ>
- D - I - 0x02CDFA 21:8DEA: 54        .byte $54	; <ト>
- D - I - 0x02CDFB 21:8DEB: 9F        .byte $9F
- D - I - 0x02CDFC 21:8DEC: 40        .byte $40	; <「>
- D - I - 0x02CDFD 21:8DED: CA        .byte $CA	; <ぷ>
- D - I - 0x02CDFE 21:8DEE: 44        .byte $44	; <エ>
- D - I - 0x02CDFF 21:8DEF: CB        .byte $CB	; <ぺ>

- D - I - 0x02CE00 21:8DF0: 18        .byte $18	; <ね>
- D - I - 0x02CE01 21:8DF1: 02        .byte $02	; <い>
- D - I - 0x02CE02 21:8DF2: 54        .byte $54	; <ト>
- D - I - 0x02CE03 21:8DF3: B1        .byte $B1	; <ぶ>
- D - I - 0x02CE04 21:8DF4: 40        .byte $40	; <「>
- D - I - 0x02CE05 21:8DF5: B4        .byte $B4	; <ガ>
- D - I - 0x02CE06 21:8DF6: 45        .byte $45	; <オ>
- D - I - 0x02CE07 21:8DF7: B5        .byte $B5	; <ギ>
- D - I - 0x02CE08 21:8DF8: 44        .byte $44	; <エ>
- D - I - 0x02CE09 21:8DF9: E0        .byte $E0

- D - I - 0x02CE0A 21:8DFA: 20        .byte $20	; <み>
- D - I - 0x02CE0B 21:8DFB: 03        .byte $03	; <う>
- D - I - 0x02CE0C 21:8DFC: 55        .byte $55	; <ナ>
- D - I - 0x02CE0D 21:8DFD: B6        .byte $B6	; <グ>
- D - I - 0x02CE0E 21:8DFE: 54        .byte $54	; <ト>
- D - I - 0x02CE0F 21:8DFF: 05        .byte $05	; <お>
- D - I - 0x02CE10 21:8E00: 41        .byte $41	; <ア>
- D - I - 0x02CE11 21:8E01: B7        .byte $B7	; <ゲ>
- D - I - 0x02CE12 21:8E02: 43        .byte $43	; <ウ>
- D - I - 0x02CE13 21:8E03: 05        .byte $05	; <お>
- D - I - 0x02CE14 21:8E04: 45        .byte $45	; <オ>
- D - I - 0x02CE15 21:8E05: C9        .byte $C9	; <ぴ>

- D - I - 0x02CE16 21:8E06: 02        .byte $02	; <い>
- D - I - 0x02CE17 21:8E07: C8 8E     .word off_8EC8



off_8E09:
- D - I - 0x02CE19 21:8E09: 08        .byte $08	; <く>
- D - I - 0x02CE1A 21:8E0A: 01        .byte $01	; <あ>
- D - I - 0x02CE1B 21:8E0B: 54        .byte $54	; <ト>
- D - I - 0x02CE1C 21:8E0C: 36        .byte $36	; <3>
- D - I - 0x02CE1D 21:8E0D: 40        .byte $40	; <「>
- D - I - 0x02CE1E 21:8E0E: E2        .byte $E2

- D - I - 0x02CE1F 21:8E0F: 10        .byte $10	; <た>
- D - I - 0x02CE20 21:8E10: 02        .byte $02	; <い>
- D - I - 0x02CE21 21:8E11: 54        .byte $54	; <ト>
- D - I - 0x02CE22 21:8E12: BC        .byte $BC	; <ゼ>
- D - I - 0x02CE23 21:8E13: 40        .byte $40	; <「>
- D - I - 0x02CE24 21:8E14: BD        .byte $BD	; <ゾ>
- D - I - 0x02CE25 21:8E15: 45        .byte $45	; <オ>
- D - I - 0x02CE26 21:8E16: C2        .byte $C2	; <ド>

- D - I - 0x02CE27 21:8E17: 20        .byte $20	; <み>
- D - I - 0x02CE28 21:8E18: 03        .byte $03	; <う>
- D - I - 0x02CE29 21:8E19: 55        .byte $55	; <ナ>
- D - I - 0x02CE2A 21:8E1A: BE        .byte $BE	; <ダ>
- D - I - 0x02CE2B 21:8E1B: 54        .byte $54	; <ト>
- D - I - 0x02CE2C 21:8E1C: 05        .byte $05	; <お>
- D - I - 0x02CE2D 21:8E1D: 41        .byte $41	; <ア>
- D - I - 0x02CE2E 21:8E1E: BF        .byte $BF	; <ヂ>
- D - I - 0x02CE2F 21:8E1F: 43        .byte $43	; <ウ>
- D - I - 0x02CE30 21:8E20: 05        .byte $05	; <お>
- D - I - 0x02CE31 21:8E21: 45        .byte $45	; <オ>
- D - I - 0x02CE32 21:8E22: C9        .byte $C9	; <ぴ>

- D - I - 0x02CE33 21:8E23: 02        .byte $02	; <い>
- D - I - 0x02CE34 21:8E24: C8 8E     .word off_8EC8



off_8E26:
- D - I - 0x02CE36 21:8E26: 10        .byte $10	; <た>
- D - I - 0x02CE37 21:8E27: 01        .byte $01	; <あ>
- D - I - 0x02CE38 21:8E28: 54        .byte $54	; <ト>
- D - I - 0x02CE39 21:8E29: E3        .byte $E3
- D - I - 0x02CE3A 21:8E2A: 40        .byte $40	; <「>
- D - I - 0x02CE3B 21:8E2B: E6        .byte $E6
- D - I - 0x02CE3C 21:8E2C: 44        .byte $44	; <エ>
- D - I - 0x02CE3D 21:8E2D: E7        .byte $E7
- D - I - 0x02CE3E 21:8E2E: 20        .byte $20	; <み>
- D - I - 0x02CE3F 21:8E2F: 02        .byte $02	; <い>
- D - I - 0x02CE40 21:8E30: 54        .byte $54	; <ト>
- D - I - 0x02CE41 21:8E31: E8        .byte $E8
- D - I - 0x02CE42 21:8E32: 40        .byte $40	; <「>
- D - I - 0x02CE43 21:8E33: E9        .byte $E9
- D - I - 0x02CE44 21:8E34: 45        .byte $45	; <オ>
- D - I - 0x02CE45 21:8E35: EC        .byte $EC
- D - I - 0x02CE46 21:8E36: 44        .byte $44	; <エ>
- D - I - 0x02CE47 21:8E37: E1        .byte $E1
- D - I - 0x02CE48 21:8E38: 87        .byte $87	; <G>
- D - I - 0x02CE49 21:8E39: ED        .byte $ED
- D - I - 0x02CE4A 21:8E3A: 20        .byte $20	; <み>
- D - I - 0x02CE4B 21:8E3B: 03        .byte $03	; <う>
- D - I - 0x02CE4C 21:8E3C: 54        .byte $54	; <ト>
- D - I - 0x02CE4D 21:8E3D: EA        .byte $EA
- D - I - 0x02CE4E 21:8E3E: 41        .byte $41	; <ア>
- D - I - 0x02CE4F 21:8E3F: EB        .byte $EB
- D - I - 0x02CE50 21:8E40: 43        .byte $43	; <ウ>
- D - I - 0x02CE51 21:8E41: 05        .byte $05	; <お>
- D - I - 0x02CE52 21:8E42: 45        .byte $45	; <オ>
- D - I - 0x02CE53 21:8E43: EE        .byte $EE
- D - I - 0x02CE54 21:8E44: 87        .byte $87	; <G>
- D - I - 0x02CE55 21:8E45: EF        .byte $EF
- D - I - 0x02CE56 21:8E46: 02        .byte $02	; <い>
- D - I - 0x02CE57 21:8E47: CC 8E     .word off_8ECC



off_8E49:
- D - I - 0x02CE59 21:8E49: 10        .byte $10	; <た>
- D - I - 0x02CE5A 21:8E4A: 01        .byte $01	; <あ>
- D - I - 0x02CE5B 21:8E4B: 54        .byte $54	; <ト>
- D - I - 0x02CE5C 21:8E4C: D6        .byte $D6
- D - I - 0x02CE5D 21:8E4D: 40        .byte $40	; <「>
- D - I - 0x02CE5E 21:8E4E: C4        .byte $C4	; <ビ>
- D - I - 0x02CE5F 21:8E4F: 44        .byte $44	; <エ>
- D - I - 0x02CE60 21:8E50: CB        .byte $CB	; <ぺ>

- D - I - 0x02CE61 21:8E51: 18        .byte $18	; <ね>
- D - I - 0x02CE62 21:8E52: 02        .byte $02	; <い>
- D - I - 0x02CE63 21:8E53: 54        .byte $54	; <ト>
- D - I - 0x02CE64 21:8E54: C3        .byte $C3	; <バ>
- D - I - 0x02CE65 21:8E55: 40        .byte $40	; <「>
- D - I - 0x02CE66 21:8E56: C6        .byte $C6	; <ベ>
- D - I - 0x02CE67 21:8E57: 45        .byte $45	; <オ>
- D - I - 0x02CE68 21:8E58: B5        .byte $B5	; <ギ>
- D - I - 0x02CE69 21:8E59: 44        .byte $44	; <エ>
- D - I - 0x02CE6A 21:8E5A: E0        .byte $E0

- D - I - 0x02CE6B 21:8E5B: 18        .byte $18	; <ね>
- D - I - 0x02CE6C 21:8E5C: 03        .byte $03	; <う>
- D - I - 0x02CE6D 21:8E5D: 55        .byte $55	; <ナ>
- D - I - 0x02CE6E 21:8E5E: 92        .byte $92	; <W>
- D - I - 0x02CE6F 21:8E5F: 41        .byte $41	; <ア>
- D - I - 0x02CE70 21:8E60: A9        .byte $A9	; <ぞ>
- D - I - 0x02CE71 21:8E61: 43        .byte $43	; <ウ>
- D - I - 0x02CE72 21:8E62: 05        .byte $05	; <お>
- D - I - 0x02CE73 21:8E63: 45        .byte $45	; <オ>
- D - I - 0x02CE74 21:8E64: CC        .byte $CC	; <ぽ>

- D - I - 0x02CE75 21:8E65: 02        .byte $02	; <い>
- D - I - 0x02CE76 21:8E66: C8 8E     .word off_8EC8



off_8E68:
- D - I - 0x02CE78 21:8E68: 10        .byte $10	; <た>
- D - I - 0x02CE79 21:8E69: 01        .byte $01	; <あ>
- D - I - 0x02CE7A 21:8E6A: 54        .byte $54	; <ト>
- D - I - 0x02CE7B 21:8E6B: 95        .byte $95
- D - I - 0x02CE7C 21:8E6C: 40        .byte $40	; <「>
- D - I - 0x02CE7D 21:8E6D: CE        .byte $CE	; <ピ>
- D - I - 0x02CE7E 21:8E6E: 44        .byte $44	; <エ>
- D - I - 0x02CE7F 21:8E6F: CF        .byte $CF	; <プ>

- D - I - 0x02CE80 21:8E70: 18        .byte $18	; <ね>
- D - I - 0x02CE81 21:8E71: 02        .byte $02	; <い>
- D - I - 0x02CE82 21:8E72: 54        .byte $54	; <ト>
- D - I - 0x02CE83 21:8E73: 96        .byte $96
- D - I - 0x02CE84 21:8E74: 40        .byte $40	; <「>
- D - I - 0x02CE85 21:8E75: 97        .byte $97
- D - I - 0x02CE86 21:8E76: 45        .byte $45	; <オ>
- D - I - 0x02CE87 21:8E77: E4        .byte $E4
- D - I - 0x02CE88 21:8E78: 44        .byte $44	; <エ>
- D - I - 0x02CE89 21:8E79: E5        .byte $E5

- D - I - 0x02CE8A 21:8E7A: 18        .byte $18	; <ね>
- D - I - 0x02CE8B 21:8E7B: 03        .byte $03	; <う>
- D - I - 0x02CE8C 21:8E7C: 55        .byte $55	; <ナ>
- D - I - 0x02CE8D 21:8E7D: 9D        .byte $9D
- D - I - 0x02CE8E 21:8E7E: 41        .byte $41	; <ア>
- D - I - 0x02CE8F 21:8E7F: C8        .byte $C8	; <ぱ>
- D - I - 0x02CE90 21:8E80: 43        .byte $43	; <ウ>
- D - I - 0x02CE91 21:8E81: 05        .byte $05	; <お>
- D - I - 0x02CE92 21:8E82: 45        .byte $45	; <オ>
- D - I - 0x02CE93 21:8E83: C9        .byte $C9	; <ぴ>

- D - I - 0x02CE94 21:8E84: 02        .byte $02	; <い>
- D - I - 0x02CE95 21:8E85: C8 8E     .word off_8EC8



off_8E87:
- D - I - 0x02CE97 21:8E87: 10        .byte $10	; <た>
- D - I - 0x02CE98 21:8E88: 01        .byte $01	; <あ>
- D - I - 0x02CE99 21:8E89: 54        .byte $54	; <ト>
- D - I - 0x02CE9A 21:8E8A: 9F        .byte $9F
- D - I - 0x02CE9B 21:8E8B: 40        .byte $40	; <「>
- D - I - 0x02CE9C 21:8E8C: CA        .byte $CA	; <ぷ>
- D - I - 0x02CE9D 21:8E8D: 44        .byte $44	; <エ>
- D - I - 0x02CE9E 21:8E8E: CB        .byte $CB	; <ぺ>

- D - I - 0x02CE9F 21:8E8F: 18        .byte $18	; <ね>
- D - I - 0x02CEA0 21:8E90: 02        .byte $02	; <い>
- D - I - 0x02CEA1 21:8E91: 54        .byte $54	; <ト>
- D - I - 0x02CEA2 21:8E92: C7        .byte $C7	; <ボ>
- D - I - 0x02CEA3 21:8E93: 40        .byte $40	; <「>
- D - I - 0x02CEA4 21:8E94: B4        .byte $B4	; <ガ>
- D - I - 0x02CEA5 21:8E95: 45        .byte $45	; <オ>
- D - I - 0x02CEA6 21:8E96: B5        .byte $B5	; <ギ>
- D - I - 0x02CEA7 21:8E97: 44        .byte $44	; <エ>
- D - I - 0x02CEA8 21:8E98: E0        .byte $E0

- D - I - 0x02CEA9 21:8E99: 20        .byte $20	; <み>
- D - I - 0x02CEAA 21:8E9A: 03        .byte $03	; <う>
- D - I - 0x02CEAB 21:8E9B: 55        .byte $55	; <ナ>
- D - I - 0x02CEAC 21:8E9C: CD        .byte $CD	; <パ>
- D - I - 0x02CEAD 21:8E9D: 54        .byte $54	; <ト>
- D - I - 0x02CEAE 21:8E9E: 05        .byte $05	; <お>
- D - I - 0x02CEAF 21:8E9F: 41        .byte $41	; <ア>
- D - I - 0x02CEB0 21:8EA0: B7        .byte $B7	; <ゲ>
- D - I - 0x02CEB1 21:8EA1: 43        .byte $43	; <ウ>
- D - I - 0x02CEB2 21:8EA2: 05        .byte $05	; <お>
- D - I - 0x02CEB3 21:8EA3: 45        .byte $45	; <オ>
- D - I - 0x02CEB4 21:8EA4: C9        .byte $C9	; <ぴ>

- D - I - 0x02CEB5 21:8EA5: 02        .byte $02	; <い>
- D - I - 0x02CEB6 21:8EA6: C8 8E     .word off_8EC8



off_8EA8:
- D - I - 0x02CEB8 21:8EA8: 10        .byte $10	; <た>
- D - I - 0x02CEB9 21:8EA9: 02        .byte $02	; <い>
- D - I - 0x02CEBA 21:8EAA: 40        .byte $40	; <「>
- D - I - 0x02CEBB 21:8EAB: 9E        .byte $9E
- D - I - 0x02CEBC 21:8EAC: 45        .byte $45	; <オ>
- D - I - 0x02CEBD 21:8EAD: A5        .byte $A5	; <ざ>
- D - I - 0x02CEBE 21:8EAE: 44        .byte $44	; <エ>
- D - I - 0x02CEBF 21:8EAF: B0        .byte $B0	; <び>
; продолжение


off_8EB0:
- D - I - 0x02CEC0 21:8EB0: 10        .byte $10	; <た>
- D - I - 0x02CEC1 21:8EB1: 01        .byte $01	; <あ>
- D - I - 0x02CEC2 21:8EB2: 54        .byte $54	; <ト>
- D - I - 0x02CEC3 21:8EB3: 98        .byte $98
- D - I - 0x02CEC4 21:8EB4: 40        .byte $40	; <「>
- D - I - 0x02CEC5 21:8EB5: 99        .byte $99
- D - I - 0x02CEC6 21:8EB6: 44        .byte $44	; <エ>
- D - I - 0x02CEC7 21:8EB7: 9C        .byte $9C

- D - I - 0x02CEC8 21:8EB8: 00        .byte $00
- D - I - 0x02CEC9 21:8EB9: 02        .byte $02	; <い>
- D - I - 0x02CECA 21:8EBA: 54        .byte $54	; <ト>
- D - I - 0x02CECB 21:8EBB: 8F        .byte $8F	; <S>
; продолжение


off_8EBC:
- D - I - 0x02CECC 21:8EBC: 20        .byte $20	; <み>
- D - I - 0x02CECD 21:8EBD: 03        .byte $03	; <う>
- D - I - 0x02CECE 21:8EBE: 55        .byte $55	; <ナ>
- D - I - 0x02CECF 21:8EBF: A8        .byte $A8	; <ぜ>
- D - I - 0x02CED0 21:8EC0: 54        .byte $54	; <ト>
- D - I - 0x02CED1 21:8EC1: 05        .byte $05	; <お>
- D - I - 0x02CED2 21:8EC2: 41        .byte $41	; <ア>
- D - I - 0x02CED3 21:8EC3: A9        .byte $A9	; <ぞ>
- D - I - 0x02CED4 21:8EC4: 43        .byte $43	; <ウ>
- D - I - 0x02CED5 21:8EC5: 05        .byte $05	; <お>
- D - I - 0x02CED6 21:8EC6: 45        .byte $45	; <オ>
- D - I - 0x02CED7 21:8EC7: AC        .byte $AC	; <づ>
; продолжение


off_8EC8:
- D - I - 0x02CED8 21:8EC8: 00        .byte $00
- D - I - 0x02CED9 21:8EC9: 02        .byte $02	; <い>
- D - I - 0x02CEDA 21:8ECA: 85        .byte $85	; <E>
- D - I - 0x02CEDB 21:8ECB: 5F        .byte $5F	; <マ>
; продолжение


off_8ECC:
- D - I - 0x02CEDC 21:8ECC: 00        .byte $00
- D - I - 0x02CEDD 21:8ECD: 02        .byte $02	; <い>
- D - I - 0x02CEDE 21:8ECE: 90        .byte $90	; <U>
- D - I - 0x02CEDF 21:8ECF: 75        .byte $75	; <ェ>

- D - I - 0x02CEE0 21:8ED0: 10        .byte $10	; <た>
- D - I - 0x02CEE1 21:8ED1: 03        .byte $03	; <う>
- D - I - 0x02CEE2 21:8ED2: 53        .byte $53	; <テ>
- D - I - 0x02CEE3 21:8ED3: 89        .byte $89	; <I>
- D - I - 0x02CEE4 21:8ED4: 85        .byte $85	; <E>
- D - I - 0x02CEE5 21:8ED5: 71        .byte $71	; <ュ>
- D - I - 0x02CEE6 21:8ED6: 93        .byte $93	; <Y>
- D - I - 0x02CEE7 21:8ED7: 74        .byte $74	; <ィ>

- D - I - 0x02CEE8 21:8ED8: 30        .byte $30	; <ゃ>
- D - I - 0x02CEE9 21:8ED9: 04        .byte $04	; <え>
- D - I - 0x02CEEA 21:8EDA: 6C        .byte $6C	; <ワ>
- D - I - 0x02CEEB 21:8EDB: 8A        .byte $8A	; <N>
- D - I - 0x02CEEC 21:8EDC: 50        .byte $50	; <タ>
- D - I - 0x02CEED 21:8EDD: 8B        .byte $8B	; <K>
- D - I - 0x02CEEE 21:8EDE: 41        .byte $41	; <ア>
- D - I - 0x02CEEF 21:8EDF: 72        .byte $72	; <ョ>
- D - I - 0x02CEF0 21:8EE0: 45        .byte $45	; <オ>
- D - I - 0x02CEF1 21:8EE1: 73        .byte $73	; <ヮ>
- D - I - 0x02CEF2 21:8EE2: 85        .byte $85	; <E>
- D - I - 0x02CEF3 21:8EE3: 76        .byte $76	; <ォ>
- D - I - 0x02CEF4 21:8EE4: 86        .byte $86	; <F>
- D - I - 0x02CEF5 21:8EE5: 05        .byte $05	; <お>
- D - I - 0x02CEF6 21:8EE6: 92        .byte $92	; <W>
- D - I - 0x02CEF7 21:8EE7: 77        .byte $77	; <:>

- D - I - 0x02CEF8 21:8EE8: 18        .byte $18	; <ね>
- D - I - 0x02CEF9 21:8EE9: 05        .byte $05	; <お>
- D - I - 0x02CEFA 21:8EEA: 42        .byte $42	; <イ>
- D - I - 0x02CEFB 21:8EEB: 78        .byte $78	; <?>
- D - I - 0x02CEFC 21:8EEC: 46        .byte $46	; <カ>
- D - I - 0x02CEFD 21:8EED: 79        .byte $79	; <!>
- D - I - 0x02CEFE 21:8EEE: 86        .byte $86	; <F>
- D - I - 0x02CEFF 21:8EEF: 7C        .byte $7C	; <~>
- D - I - 0x02CF00 21:8EF0: 92        .byte $92	; <W>
- D - I - 0x02CF01 21:8EF1: 7D        .byte $7D	; <ー>

- D - I - 0x02CF02 21:8EF2: 20        .byte $20	; <み>
- D - I - 0x02CF03 21:8EF3: 06        .byte $06	; <か>
- D - I - 0x02CF04 21:8EF4: 55        .byte $55	; <ナ>
- D - I - 0x02CF05 21:8EF5: 70        .byte $70	; <ャ>
- D - I - 0x02CF06 21:8EF6: 41        .byte $41	; <ア>
- D - I - 0x02CF07 21:8EF7: 7A        .byte $7A	; <、>
- D - I - 0x02CF08 21:8EF8: 44        .byte $44	; <エ>
- D - I - 0x02CF09 21:8EF9: 7B        .byte $7B	; <。>
- D - I - 0x02CF0A 21:8EFA: 87        .byte $87	; <G>
- D - I - 0x02CF0B 21:8EFB: 7E        .byte $7E	; <.>
- D - I - 0x02CF0C 21:8EFC: 90        .byte $90	; <U>
- D - I - 0x02CF0D 21:8EFD: 7F        .byte $7F	; <,>

- D - I - 0x02CF0E 21:8EFE: 18        .byte $18	; <ね>
- D - I - 0x02CF0F 21:8EFF: 07        .byte $07	; <き>
- D - I - 0x02CF10 21:8F00: 03        .byte $03	; <う>
- D - I - 0x02CF11 21:8F01: 80        .byte $80
- D - I - 0x02CF12 21:8F02: 05        .byte $05	; <お>
- D - I - 0x02CF13 21:8F03: 81        .byte $81	; <A>
- D - I - 0x02CF14 21:8F04: 09        .byte $09	; <け>
- D - I - 0x02CF15 21:8F05: 84        .byte $84	; <D>
- D - I - 0x02CF16 21:8F06: 85        .byte $85	; <E>
- D - I - 0x02CF17 21:8F07: 85        .byte $85	; <E>

- D - I - 0x02CF18 21:8F08: 18        .byte $18	; <ね>
- D - I - 0x02CF19 21:8F09: 08        .byte $08	; <く>
- D - I - 0x02CF1A 21:8F0A: 03        .byte $03	; <う>
- D - I - 0x02CF1B 21:8F0B: 82        .byte $82	; <B>
- D - I - 0x02CF1C 21:8F0C: 05        .byte $05	; <お>
- D - I - 0x02CF1D 21:8F0D: 83        .byte $83	; <C>
- D - I - 0x02CF1E 21:8F0E: 47        .byte $47	; <キ>
- D - I - 0x02CF1F 21:8F0F: 86        .byte $86	; <F>
- D - I - 0x02CF20 21:8F10: 85        .byte $85	; <E>
- D - I - 0x02CF21 21:8F11: 87        .byte $87	; <G>

- D - I - 0x02CF22 21:8F12: 08        .byte $08	; <く>
- D - I - 0x02CF23 21:8F13: 09        .byte $09	; <け>
- D - I - 0x02CF24 21:8F14: 47        .byte $47	; <キ>
- D - I - 0x02CF25 21:8F15: 8C        .byte $8C	; <M>
- D - I - 0x02CF26 21:8F16: 85        .byte $85	; <E>
- D - I - 0x02CF27 21:8F17: 8D        .byte $8D	; <P>

- D - I - 0x02CF28 21:8F18: 00        .byte $00
- D - I - 0x02CF29 21:8F19: 16        .byte $16	; <に>
- D - I - 0x02CF2A 21:8F1A: 13        .byte $13	; <て>
- D - I - 0x02CF2B 21:8F1B: 88        .byte $88	; <H>

- D - I - 0x02CF2C 21:8F1C: 01        .byte $01	; <あ>



off_8F1D_1A:
- - - - - 0x02CF2D 21:8F1D: 08        .byte $08	; <く>
- - - - - 0x02CF2E 21:8F1E: 01        .byte $01	; <あ>
- - - - - 0x02CF2F 21:8F1F: 53        .byte $53	; <テ>
- - - - - 0x02CF30 21:8F20: 51        .byte $51	; <チ>
- - - - - 0x02CF31 21:8F21: 57        .byte $57	; <ヌ>
- - - - - 0x02CF32 21:8F22: 54        .byte $54	; <ト>

- - - - - 0x02CF33 21:8F23: 08        .byte $08	; <く>
- - - - - 0x02CF34 21:8F24: 02        .byte $02	; <い>
- - - - - 0x02CF35 21:8F25: 53        .byte $53	; <テ>
- - - - - 0x02CF36 21:8F26: 53        .byte $53	; <テ>
- - - - - 0x02CF37 21:8F27: 57        .byte $57	; <ヌ>
- - - - - 0x02CF38 21:8F28: 56        .byte $56	; <ニ>

- - - - - 0x02CF39 21:8F29: 02        .byte $02	; <い>
- - - - - 0x02CF3A 21:8F2A: 52 8D     .word off_8D52



off_8F2C_1B:
- D - I - 0x02CF3C 21:8F2C: 00        .byte $00
- D - I - 0x02CF3D 21:8F2D: 00        .byte $00
- D - I - 0x02CF3E 21:8F2E: 57        .byte $57	; <ヌ>
- D - I - 0x02CF3F 21:8F2F: C5        .byte $C5	; <ブ>

- D - I - 0x02CF40 21:8F30: 10        .byte $10	; <た>
- D - I - 0x02CF41 21:8F31: 01        .byte $01	; <あ>
- D - I - 0x02CF42 21:8F32: 53        .byte $53	; <テ>
- D - I - 0x02CF43 21:8F33: 51        .byte $51	; <チ>
- D - I - 0x02CF44 21:8F34: 57        .byte $57	; <ヌ>
- D - I - 0x02CF45 21:8F35: D0        .byte $D0	; <ペ>
- D - I - 0x02CF46 21:8F36: 43        .byte $43	; <ウ>
- D - I - 0x02CF47 21:8F37: D2        .byte $D2

- D - I - 0x02CF48 21:8F38: 08        .byte $08	; <く>
- D - I - 0x02CF49 21:8F39: 02        .byte $02	; <い>
- D - I - 0x02CF4A 21:8F3A: 53        .byte $53	; <テ>
- D - I - 0x02CF4B 21:8F3B: 53        .byte $53	; <テ>
- D - I - 0x02CF4C 21:8F3C: 57        .byte $57	; <ヌ>
- D - I - 0x02CF4D 21:8F3D: 56        .byte $56	; <ニ>

- D - I - 0x02CF4E 21:8F3E: 02        .byte $02	; <い>
- D - I - 0x02CF4F 21:8F3F: 52 8D     .word off_8D52



off_8F41_1C:
- - - - - 0x02CF51 21:8F41: 00        .byte $00
- - - - - 0x02CF52 21:8F42: 00        .byte $00
- - - - - 0x02CF53 21:8F43: 57        .byte $57	; <ヌ>
- - - - - 0x02CF54 21:8F44: D1        .byte $D1	; <ポ>

- - - - - 0x02CF55 21:8F45: 10        .byte $10	; <た>
- - - - - 0x02CF56 21:8F46: 01        .byte $01	; <あ>
- - - - - 0x02CF57 21:8F47: 53        .byte $53	; <テ>
- - - - - 0x02CF58 21:8F48: 51        .byte $51	; <チ>
- - - - - 0x02CF59 21:8F49: 57        .byte $57	; <ヌ>
- - - - - 0x02CF5A 21:8F4A: D3        .byte $D3
- - - - - 0x02CF5B 21:8F4B: 43        .byte $43	; <ウ>
- - - - - 0x02CF5C 21:8F4C: D4        .byte $D4

- - - - - 0x02CF5D 21:8F4D: 08        .byte $08	; <く>
- - - - - 0x02CF5E 21:8F4E: 02        .byte $02	; <い>
- - - - - 0x02CF5F 21:8F4F: 53        .byte $53	; <テ>
- - - - - 0x02CF60 21:8F50: 53        .byte $53	; <テ>
- - - - - 0x02CF61 21:8F51: 57        .byte $57	; <ヌ>
- - - - - 0x02CF62 21:8F52: 56        .byte $56	; <ニ>

- - - - - 0x02CF63 21:8F53: 02        .byte $02	; <い>
- - - - - 0x02CF64 21:8F54: 52 8D     .word off_8D52



off_8F56_1D:
- D - I - 0x02CF66 21:8F56: 08        .byte $08	; <く>
- D - I - 0x02CF67 21:8F57: 03        .byte $03	; <う>
- D - I - 0x02CF68 21:8F58: 0F        .byte $0F	; <そ>
- D - I - 0x02CF69 21:8F59: 51        .byte $51	; <チ>
- D - I - 0x02CF6A 21:8F5A: 13        .byte $13	; <て>
- D - I - 0x02CF6B 21:8F5B: 54        .byte $54	; <ト>

- D - I - 0x02CF6C 21:8F5C: 08        .byte $08	; <く>
- D - I - 0x02CF6D 21:8F5D: 04        .byte $04	; <え>
- D - I - 0x02CF6E 21:8F5E: 0F        .byte $0F	; <そ>
- D - I - 0x02CF6F 21:8F5F: 53        .byte $53	; <テ>
- D - I - 0x02CF70 21:8F60: 13        .byte $13	; <て>
- D - I - 0x02CF71 21:8F61: 56        .byte $56	; <ニ>

- D - I - 0x02CF72 21:8F62: 01        .byte $01	; <あ>



off_8F63_1E:
- D - I - 0x02CF73 21:8F63: 03        .byte $03	; <う>
- D - I - 0x02CF74 21:8F64: 7C 8F     .word off_8F7C
- D - I - 0x02CF76 21:8F66: A9 8F     .word off_8FA9
- D - I - 0x02CF78 21:8F68: B2 8F     .word off_8FB2
- D - I - 0x02CF7A 21:8F6A: 7C 8F     .word off_8F7C
- D - I - 0x02CF7C 21:8F6C: BB 8F     .word off_8FBB
- D - I - 0x02CF7E 21:8F6E: B2 8F     .word off_8FB2
- D - I - 0x02CF80 21:8F70: B2 8F     .word off_8FB2
- D - I - 0x02CF82 21:8F72: C8 8F     .word off_8FC8
- D - I - 0x02CF84 21:8F74: B2 8F     .word off_8FB2
- D - I - 0x02CF86 21:8F76: DB 8F     .word off_8FDB
- D - I - 0x02CF88 21:8F78: B2 8F     .word off_8FB2
- D - I - 0x02CF8A 21:8F7A: B2 8F     .word off_8FB2



off_8F7C:
- D - I - 0x02CF8C 21:8F7C: 08        .byte $08	; <く>
- D - I - 0x02CF8D 21:8F7D: 02        .byte $02	; <い>
- D - I - 0x02CF8E 21:8F7E: 11        .byte $11	; <ち>
- D - I - 0x02CF8F 21:8F7F: 9D        .byte $9D
- D - I - 0x02CF90 21:8F80: 10        .byte $10	; <た>
- D - I - 0x02CF91 21:8F81: B2        .byte $B2	; <べ>
; продолжение


off_8F82:
- D - I - 0x02CF92 21:8F82: 08        .byte $08	; <く>
- D - I - 0x02CF93 21:8F83: 02        .byte $02	; <い>
- D - I - 0x02CF94 21:8F84: 0C        .byte $0C	; <し>
- D - I - 0x02CF95 21:8F85: 9C        .byte $9C
- D - I - 0x02CF96 21:8F86: 15        .byte $15	; <な>
- D - I - 0x02CF97 21:8F87: B5        .byte $B5	; <ギ>
; продолжение


off_8F88:
- D - I - 0x02CF98 21:8F88: 08        .byte $08	; <く>
- D - I - 0x02CF99 21:8F89: 03        .byte $03	; <う>
- D - I - 0x02CF9A 21:8F8A: 11        .byte $11	; <ち>
- D - I - 0x02CF9B 21:8F8B: 9E        .byte $9E
- D - I - 0x02CF9C 21:8F8C: 15        .byte $15	; <な>
- D - I - 0x02CF9D 21:8F8D: 9F        .byte $9F
; продолжение


off_8F8E:
- D - I - 0x02CF9E 21:8F8E: 00        .byte $00
- D - I - 0x02CF9F 21:8F8F: 02        .byte $02	; <い>
- D - I - 0x02CFA0 21:8F90: 18        .byte $18	; <ね>
- D - I - 0x02CFA1 21:8F91: 97        .byte $97

- D - I - 0x02CFA2 21:8F92: 00        .byte $00
- D - I - 0x02CFA3 21:8F93: 03        .byte $03	; <う>
- D - I - 0x02CFA4 21:8F94: 0D        .byte $0D	; <す>
- D - I - 0x02CFA5 21:8F95: 98        .byte $98

- D - I - 0x02CFA6 21:8F96: 10        .byte $10	; <た>
- D - I - 0x02CFA7 21:8F97: 04        .byte $04	; <え>
- D - I - 0x02CFA8 21:8F98: 0D        .byte $0D	; <す>
- D - I - 0x02CFA9 21:8F99: 9A        .byte $9A
- D - I - 0x02CFAA 21:8F9A: 0F        .byte $0F	; <そ>
- D - I - 0x02CFAB 21:8F9B: 99        .byte $99
- D - I - 0x02CFAC 21:8F9C: 12        .byte $12	; <つ>
- D - I - 0x02CFAD 21:8F9D: 9B        .byte $9B

- D - I - 0x02CFAE 21:8F9E: 08        .byte $08	; <く>
- D - I - 0x02CFAF 21:8F9F: 05        .byte $05	; <お>
- D - I - 0x02CFB0 21:8FA0: 11        .byte $11	; <ち>
- D - I - 0x02CFB1 21:8FA1: B1        .byte $B1	; <ぶ>
- D - I - 0x02CFB2 21:8FA2: 15        .byte $15	; <な>
- D - I - 0x02CFB3 21:8FA3: B4        .byte $B4	; <ガ>

- D - I - 0x02CFB4 21:8FA4: 00        .byte $00
- D - I - 0x02CFB5 21:8FA5: 06        .byte $06	; <か>
- D - I - 0x02CFB6 21:8FA6: 75        .byte $75	; <ェ>
- D - I - 0x02CFB7 21:8FA7: B0        .byte $B0	; <び>

- D - I - 0x02CFB8 21:8FA8: 01        .byte $01	; <あ>



off_8FA9:
- D - I - 0x02CFB9 21:8FA9: 08        .byte $08	; <く>
- D - I - 0x02CFBA 21:8FAA: 02        .byte $02	; <い>
- D - I - 0x02CFBB 21:8FAB: 11        .byte $11	; <ち>
- D - I - 0x02CFBC 21:8FAC: B8        .byte $B8	; <ゴ>
- D - I - 0x02CFBD 21:8FAD: 10        .byte $10	; <た>
- D - I - 0x02CFBE 21:8FAE: B3        .byte $B3	; <ぼ>

- D - I - 0x02CFBF 21:8FAF: 02        .byte $02	; <い>
- D - I - 0x02CFC0 21:8FB0: 82 8F     .word off_8F82



off_8FB2:
- D - I - 0x02CFC2 21:8FB2: 08        .byte $08	; <く>
- D - I - 0x02CFC3 21:8FB3: 02        .byte $02	; <い>
- D - I - 0x02CFC4 21:8FB4: 11        .byte $11	; <ち>
- D - I - 0x02CFC5 21:8FB5: B9        .byte $B9	; <ザ>
- D - I - 0x02CFC6 21:8FB6: 10        .byte $10	; <た>
- D - I - 0x02CFC7 21:8FB7: BA        .byte $BA	; <ジ>

- D - I - 0x02CFC8 21:8FB8: 02        .byte $02	; <い>
- D - I - 0x02CFC9 21:8FB9: 82 8F     .word off_8F82



off_8FBB:
- D - I - 0x02CFCB 21:8FBB: 18        .byte $18	; <ね>
- D - I - 0x02CFCC 21:8FBC: 02        .byte $02	; <い>
- D - I - 0x02CFCD 21:8FBD: 0C        .byte $0C	; <し>
- D - I - 0x02CFCE 21:8FBE: BB        .byte $BB	; <ズ>
- D - I - 0x02CFCF 21:8FBF: 11        .byte $11	; <ち>
- D - I - 0x02CFD0 21:8FC0: B9        .byte $B9	; <ザ>
- D - I - 0x02CFD1 21:8FC1: 10        .byte $10	; <た>
- D - I - 0x02CFD2 21:8FC2: BA        .byte $BA	; <ジ>
- D - I - 0x02CFD3 21:8FC3: 15        .byte $15	; <な>
- D - I - 0x02CFD4 21:8FC4: B5        .byte $B5	; <ギ>

- D - I - 0x02CFD5 21:8FC5: 02        .byte $02	; <い>
- D - I - 0x02CFD6 21:8FC6: 88 8F     .word off_8F88



off_8FC8:
- D - I - 0x02CFD8 21:8FC8: 18        .byte $18	; <ね>
- D - I - 0x02CFD9 21:8FC9: 02        .byte $02	; <い>
- D - I - 0x02CFDA 21:8FCA: 0C        .byte $0C	; <し>
- D - I - 0x02CFDB 21:8FCB: 9C        .byte $9C
- D - I - 0x02CFDC 21:8FCC: 11        .byte $11	; <ち>
- D - I - 0x02CFDD 21:8FCD: B6        .byte $B6	; <グ>
- D - I - 0x02CFDE 21:8FCE: 10        .byte $10	; <た>
- D - I - 0x02CFDF 21:8FCF: BE        .byte $BE	; <ダ>
- D - I - 0x02CFE0 21:8FD0: 15        .byte $15	; <な>
- D - I - 0x02CFE1 21:8FD1: B7        .byte $B7	; <ゲ>

- D - I - 0x02CFE2 21:8FD2: 08        .byte $08	; <く>
- D - I - 0x02CFE3 21:8FD3: 03        .byte $03	; <う>
- D - I - 0x02CFE4 21:8FD4: 11        .byte $11	; <ち>
- D - I - 0x02CFE5 21:8FD5: BC        .byte $BC	; <ゼ>
- D - I - 0x02CFE6 21:8FD6: 15        .byte $15	; <な>
- D - I - 0x02CFE7 21:8FD7: BD        .byte $BD	; <ゾ>

- D - I - 0x02CFE8 21:8FD8: 02        .byte $02	; <い>
- D - I - 0x02CFE9 21:8FD9: 8E 8F     .word off_8F8E




off_8FDB:
- D - I - 0x02CFEB 21:8FDB: 18        .byte $18	; <ね>
- D - I - 0x02CFEC 21:8FDC: 02        .byte $02	; <い>
- D - I - 0x02CFED 21:8FDD: 0C        .byte $0C	; <し>
- D - I - 0x02CFEE 21:8FDE: BB        .byte $BB	; <ズ>
- D - I - 0x02CFEF 21:8FDF: 11        .byte $11	; <ち>
- D - I - 0x02CFF0 21:8FE0: 9D        .byte $9D
- D - I - 0x02CFF1 21:8FE1: 10        .byte $10	; <た>
- D - I - 0x02CFF2 21:8FE2: B2        .byte $B2	; <べ>
- D - I - 0x02CFF3 21:8FE3: 15        .byte $15	; <な>
- D - I - 0x02CFF4 21:8FE4: B5        .byte $B5	; <ギ>

- D - I - 0x02CFF5 21:8FE5: 02        .byte $02	; <い>
- D - I - 0x02CFF6 21:8FE6: 88 8F     .word off_8F88



off_8FE8_1F:
- D - I - 0x02CFF8 21:8FE8: 08        .byte $08	; <く>
- D - I - 0x02CFF9 21:8FE9: 16        .byte $16	; <に>
- D - I - 0x02CFFA 21:8FEA: 9F        .byte $9F
- D - I - 0x02CFFB 21:8FEB: 7C        .byte $7C	; <~>
- D - I - 0x02CFFC 21:8FEC: A3        .byte $A3	; <げ>
- D - I - 0x02CFFD 21:8FED: 7D        .byte $7D	; <ー>

- D - I - 0x02CFFE 21:8FEE: 08        .byte $08	; <く>
- D - I - 0x02CFFF 21:8FEF: 17        .byte $17	; <ぬ>
- D - I - 0x02D000 21:8FF0: 9F        .byte $9F
- D - I - 0x02D001 21:8FF1: 7E        .byte $7E	; <.>
- D - I - 0x02D002 21:8FF2: A3        .byte $A3	; <げ>
- D - I - 0x02D003 21:8FF3: 7F        .byte $7F	; <,>
; продолжение


off_8FF4_D2:
- D - I - 0x02D004 21:8FF4: 03        .byte $03	; <う>
- D - I - 0x02D005 21:8FF5: 0D 90     .word off_900D
- D - I - 0x02D007 21:8FF7: 26 90     .word off_9026
- D - I - 0x02D009 21:8FF9: 47 90     .word off_9047
- D - I - 0x02D00B 21:8FFB: 58 90     .word off_9058
- D - I - 0x02D00D 21:8FFD: 71 90     .word off_9071
- D - I - 0x02D00F 21:8FFF: 88 90     .word off_9088
- D - I - 0x02D011 21:9001: 9F 90     .word off_909F
- D - I - 0x02D013 21:9003: B6 90     .word off_90B6
- D - I - 0x02D015 21:9005: E5 90     .word off_90E5
- D - I - 0x02D017 21:9007: FC 90     .word off_90FC
- D - I - 0x02D019 21:9009: 15 91     .word off_9115
- D - I - 0x02D01B 21:900B: 2C 91     .word off_912C



off_900D:
- D - I - 0x02D01D 21:900D: 10        .byte $10	; <た>
- D - I - 0x02D01E 21:900E: 02        .byte $02	; <い>
- D - I - 0x02D01F 21:900F: 04        .byte $04	; <え>
- D - I - 0x02D020 21:9010: 11        .byte $11	; <ち>
- D - I - 0x02D021 21:9011: 08        .byte $08	; <く>
- D - I - 0x02D022 21:9012: 14        .byte $14	; <と>
- D - I - 0x02D023 21:9013: 0C        .byte $0C	; <し>
- D - I - 0x02D024 21:9014: 15        .byte $15	; <な>

- D - I - 0x02D025 21:9015: 10        .byte $10	; <た>
- D - I - 0x02D026 21:9016: 03        .byte $03	; <う>
- D - I - 0x02D027 21:9017: 04        .byte $04	; <え>
- D - I - 0x02D028 21:9018: 13        .byte $13	; <て>
- D - I - 0x02D029 21:9019: 08        .byte $08	; <く>
- D - I - 0x02D02A 21:901A: 16        .byte $16	; <に>
- D - I - 0x02D02B 21:901B: 0C        .byte $0C	; <し>
- D - I - 0x02D02C 21:901C: 17        .byte $17	; <ぬ>

- D - I - 0x02D02D 21:901D: 08        .byte $08	; <く>
- D - I - 0x02D02E 21:901E: 04        .byte $04	; <え>
- D - I - 0x02D02F 21:901F: 08        .byte $08	; <く>
- D - I - 0x02D030 21:9020: 19        .byte $19	; <の>
- D - I - 0x02D031 21:9021: 0C        .byte $0C	; <し>
- D - I - 0x02D032 21:9022: 1C        .byte $1C	; <ふ>

- D - I - 0x02D033 21:9023: 02        .byte $02	; <い>
- D - I - 0x02D034 21:9024: 42 91     .word off_9142



off_9026:
- D - I - 0x02D036 21:9026: 08        .byte $08	; <く>
- D - I - 0x02D037 21:9027: 01        .byte $01	; <あ>
- D - I - 0x02D038 21:9028: 0C        .byte $0C	; <し>
- D - I - 0x02D039 21:9029: 1D        .byte $1D	; <へ>
- D - I - 0x02D03A 21:902A: 10        .byte $10	; <た>
- D - I - 0x02D03B 21:902B: 48        .byte $48	; <ク>

- D - I - 0x02D03C 21:902C: 18        .byte $18	; <ね>
- D - I - 0x02D03D 21:902D: 02        .byte $02	; <い>
- D - I - 0x02D03E 21:902E: 04        .byte $04	; <え>
- D - I - 0x02D03F 21:902F: 11        .byte $11	; <ち>
- D - I - 0x02D040 21:9030: 08        .byte $08	; <く>
- D - I - 0x02D041 21:9031: 1E        .byte $1E	; <ほ>
- D - I - 0x02D042 21:9032: 0C        .byte $0C	; <し>
- D - I - 0x02D043 21:9033: 1F        .byte $1F	; <ま>
- D - I - 0x02D044 21:9034: 10        .byte $10	; <た>
- D - I - 0x02D045 21:9035: 4A        .byte $4A	; <コ>

- D - I - 0x02D046 21:9036: 10        .byte $10	; <た>
- D - I - 0x02D047 21:9037: 03        .byte $03	; <う>
- D - I - 0x02D048 21:9038: 54        .byte $54	; <ト>
- D - I - 0x02D049 21:9039: 34        .byte $34	; <1>
- D - I - 0x02D04A 21:903A: 40        .byte $40	; <「>
- D - I - 0x02D04B 21:903B: 35        .byte $35	; <2>
- D - I - 0x02D04C 21:903C: 44        .byte $44	; <エ>
- D - I - 0x02D04D 21:903D: 60        .byte $60	; <ミ>

- D - I - 0x02D04E 21:903E: 08        .byte $08	; <く>
- D - I - 0x02D04F 21:903F: 04        .byte $04	; <え>
- D - I - 0x02D050 21:9040: 08        .byte $08	; <く>
- D - I - 0x02D051 21:9041: 19        .byte $19	; <の>
- D - I - 0x02D052 21:9042: 0C        .byte $0C	; <し>
- D - I - 0x02D053 21:9043: 1B        .byte $1B	; <ひ>

- D - I - 0x02D054 21:9044: 02        .byte $02	; <い>
- D - I - 0x02D055 21:9045: 42 91     .word off_9142



off_9047:
- D - I - 0x02D057 21:9047: 10        .byte $10	; <た>
- D - I - 0x02D058 21:9048: 03        .byte $03	; <う>
- D - I - 0x02D059 21:9049: 04        .byte $04	; <え>
- D - I - 0x02D05A 21:904A: 13        .byte $13	; <て>
- D - I - 0x02D05B 21:904B: 08        .byte $08	; <く>
- D - I - 0x02D05C 21:904C: 3C        .byte $3C	; <9>
- D - I - 0x02D05D 21:904D: 0C        .byte $0C	; <し>
- D - I - 0x02D05E 21:904E: 3D        .byte $3D	; <+>

- D - I - 0x02D05F 21:904F: 08        .byte $08	; <く>
- D - I - 0x02D060 21:9050: 04        .byte $04	; <え>
- D - I - 0x02D061 21:9051: 08        .byte $08	; <く>
- D - I - 0x02D062 21:9052: 3E        .byte $3E	; <Jr>
- D - I - 0x02D063 21:9053: 0C        .byte $0C	; <し>
- D - I - 0x02D064 21:9054: 1C        .byte $1C	; <ふ>

- D - I - 0x02D065 21:9055: 02        .byte $02	; <い>
- D - I - 0x02D066 21:9056: 3A 91     .word off_913A



off_9058:
- D - I - 0x02D068 21:9058: 10        .byte $10	; <た>
- D - I - 0x02D069 21:9059: 02        .byte $02	; <い>
- D - I - 0x02D06A 21:905A: 54        .byte $54	; <ト>
- D - I - 0x02D06B 21:905B: 44        .byte $44	; <エ>
- D - I - 0x02D06C 21:905C: 40        .byte $40	; <「>
- D - I - 0x02D06D 21:905D: 45        .byte $45	; <オ>
- D - I - 0x02D06E 21:905E: 44        .byte $44	; <エ>
- D - I - 0x02D06F 21:905F: 50        .byte $50	; <タ>

- D - I - 0x02D070 21:9060: 10        .byte $10	; <た>
- D - I - 0x02D071 21:9061: 03        .byte $03	; <う>
- D - I - 0x02D072 21:9062: 04        .byte $04	; <え>
- D - I - 0x02D073 21:9063: 46        .byte $46	; <カ>
- D - I - 0x02D074 21:9064: 08        .byte $08	; <く>
- D - I - 0x02D075 21:9065: 47        .byte $47	; <キ>
- D - I - 0x02D076 21:9066: 0C        .byte $0C	; <し>
- D - I - 0x02D077 21:9067: 52        .byte $52	; <ツ>

- D - I - 0x02D078 21:9068: 08        .byte $08	; <く>
- D - I - 0x02D079 21:9069: 04        .byte $04	; <え>
- D - I - 0x02D07A 21:906A: 08        .byte $08	; <く>
- D - I - 0x02D07B 21:906B: 3F        .byte $3F	; <•>
- D - I - 0x02D07C 21:906C: 0C        .byte $0C	; <し>
- D - I - 0x02D07D 21:906D: 6A        .byte $6A	; <レ>

- D - I - 0x02D07E 21:906E: 02        .byte $02	; <い>
- D - I - 0x02D07F 21:906F: 42 91     .word off_9142



off_9071:
- D - I - 0x02D081 21:9071: 08        .byte $08	; <く>
- D - I - 0x02D082 21:9072: 02        .byte $02	; <い>
- D - I - 0x02D083 21:9073: 08        .byte $08	; <く>
- D - I - 0x02D084 21:9074: 63        .byte $63	; <モ>
- D - I - 0x02D085 21:9075: 0C        .byte $0C	; <し>
- D - I - 0x02D086 21:9076: 66        .byte $66	; <ヨ>

- D - I - 0x02D087 21:9077: 10        .byte $10	; <た>
- D - I - 0x02D088 21:9078: 03        .byte $03	; <う>
- D - I - 0x02D089 21:9079: 04        .byte $04	; <え>
- D - I - 0x02D08A 21:907A: 68        .byte $68	; <リ>
- D - I - 0x02D08B 21:907B: 08        .byte $08	; <く>
- D - I - 0x02D08C 21:907C: 69        .byte $69	; <ル>
- D - I - 0x02D08D 21:907D: 0C        .byte $0C	; <し>
- D - I - 0x02D08E 21:907E: 6C        .byte $6C	; <ワ>

- D - I - 0x02D08F 21:907F: 08        .byte $08	; <く>
- D - I - 0x02D090 21:9080: 04        .byte $04	; <え>
- D - I - 0x02D091 21:9081: 08        .byte $08	; <く>
- D - I - 0x02D092 21:9082: 6B        .byte $6B	; <ロ>
- D - I - 0x02D093 21:9083: 0C        .byte $0C	; <し>
- D - I - 0x02D094 21:9084: 6E        .byte $6E	; <ン>

- D - I - 0x02D095 21:9085: 02        .byte $02	; <い>
- D - I - 0x02D096 21:9086: 42 91     .word off_9142



off_9088:
- D - I - 0x02D098 21:9088: 08        .byte $08	; <く>
- D - I - 0x02D099 21:9089: 02        .byte $02	; <い>
- D - I - 0x02D09A 21:908A: 98        .byte $98
- D - I - 0x02D09B 21:908B: 49        .byte $49	; <ケ>
- D - I - 0x02D09C 21:908C: 34        .byte $34	; <1>
- D - I - 0x02D09D 21:908D: 4C        .byte $4C	; <シ>

- D - I - 0x02D09E 21:908E: 10        .byte $10	; <た>
- D - I - 0x02D09F 21:908F: 03        .byte $03	; <う>
- D - I - 0x02D0A0 21:9090: 04        .byte $04	; <え>
- D - I - 0x02D0A1 21:9091: 4B        .byte $4B	; <サ>
- D - I - 0x02D0A2 21:9092: 08        .byte $08	; <く>
- D - I - 0x02D0A3 21:9093: 4E        .byte $4E	; <セ>
- D - I - 0x02D0A4 21:9094: 0C        .byte $0C	; <し>
- D - I - 0x02D0A5 21:9095: 4F        .byte $4F	; <ソ>

- D - I - 0x02D0A6 21:9096: 08        .byte $08	; <く>
- D - I - 0x02D0A7 21:9097: 04        .byte $04	; <え>
- D - I - 0x02D0A8 21:9098: 08        .byte $08	; <く>
- D - I - 0x02D0A9 21:9099: 61        .byte $61	; <ム>
- D - I - 0x02D0AA 21:909A: 0C        .byte $0C	; <し>
- D - I - 0x02D0AB 21:909B: 64        .byte $64	; <ヤ>

- D - I - 0x02D0AC 21:909C: 02        .byte $02	; <い>
- D - I - 0x02D0AD 21:909D: 42 91     .word off_9142



off_909F:
- D - I - 0x02D0AF 21:909F: 08        .byte $08	; <く>
- D - I - 0x02D0B0 21:90A0: 02        .byte $02	; <い>
- D - I - 0x02D0B1 21:90A1: 08        .byte $08	; <く>
- D - I - 0x02D0B2 21:90A2: 63        .byte $63	; <モ>
- D - I - 0x02D0B3 21:90A3: 0C        .byte $0C	; <し>
- D - I - 0x02D0B4 21:90A4: 66        .byte $66	; <ヨ>

- D - I - 0x02D0B5 21:90A5: 10        .byte $10	; <た>
- D - I - 0x02D0B6 21:90A6: 03        .byte $03	; <う>
- D - I - 0x02D0B7 21:90A7: 04        .byte $04	; <え>
- D - I - 0x02D0B8 21:90A8: 4D        .byte $4D	; <ス>
- D - I - 0x02D0B9 21:90A9: 08        .byte $08	; <く>
- D - I - 0x02D0BA 21:90AA: 58        .byte $58	; <ネ>
- D - I - 0x02D0BB 21:90AB: 0C        .byte $0C	; <し>
- D - I - 0x02D0BC 21:90AC: 59        .byte $59	; <ノ>

- D - I - 0x02D0BD 21:90AD: 08        .byte $08	; <く>
- D - I - 0x02D0BE 21:90AE: 04        .byte $04	; <え>
- D - I - 0x02D0BF 21:90AF: 08        .byte $08	; <く>
- D - I - 0x02D0C0 21:90B0: 5A        .byte $5A	; <ハ>
- D - I - 0x02D0C1 21:90B1: 0C        .byte $0C	; <し>
- D - I - 0x02D0C2 21:90B2: 6E        .byte $6E	; <ン>

- D - I - 0x02D0C3 21:90B3: 02        .byte $02	; <い>
- D - I - 0x02D0C4 21:90B4: 42 91     .word off_9142



off_90B6:
- D - I - 0x02D0C6 21:90B6: 10        .byte $10	; <た>
- D - I - 0x02D0C7 21:90B7: 02        .byte $02	; <い>
- D - I - 0x02D0C8 21:90B8: 04        .byte $04	; <え>
- D - I - 0x02D0C9 21:90B9: 51        .byte $51	; <チ>
- D - I - 0x02D0CA 21:90BA: 08        .byte $08	; <く>
- D - I - 0x02D0CB 21:90BB: 54        .byte $54	; <ト>
- D - I - 0x02D0CC 21:90BC: 0C        .byte $0C	; <し>
- D - I - 0x02D0CD 21:90BD: 55        .byte $55	; <ナ>

- D - I - 0x02D0CE 21:90BE: 10        .byte $10	; <た>
- D - I - 0x02D0CF 21:90BF: 03        .byte $03	; <う>
- D - I - 0x02D0D0 21:90C0: 04        .byte $04	; <え>
- D - I - 0x02D0D1 21:90C1: 53        .byte $53	; <テ>
- D - I - 0x02D0D2 21:90C2: 08        .byte $08	; <く>
- D - I - 0x02D0D3 21:90C3: 56        .byte $56	; <ニ>
- D - I - 0x02D0D4 21:90C4: 0C        .byte $0C	; <し>
- D - I - 0x02D0D5 21:90C5: 57        .byte $57	; <ヌ>

- D - I - 0x02D0D6 21:90C6: 08        .byte $08	; <く>
- D - I - 0x02D0D7 21:90C7: 04        .byte $04	; <え>
- D - I - 0x02D0D8 21:90C8: 08        .byte $08	; <く>
- D - I - 0x02D0D9 21:90C9: 5C        .byte $5C	; <フ>
- D - I - 0x02D0DA 21:90CA: 0C        .byte $0C	; <し>
- D - I - 0x02D0DB 21:90CB: 1C        .byte $1C	; <ふ>

- D - I - 0x02D0DC 21:90CC: 00        .byte $00
- D - I - 0x02D0DD 21:90CD: 01        .byte $01	; <あ>
- D - I - 0x02D0DE 21:90CE: 0B        .byte $0B	; <さ>
- D - I - 0x02D0DF 21:90CF: 31        .byte $31	; <ゅ>

- D - I - 0x02D0E0 21:90D0: 08        .byte $08	; <く>
- D - I - 0x02D0E1 21:90D1: 02        .byte $02	; <い>
- D - I - 0x02D0E2 21:90D2: 09        .byte $09	; <け>
- D - I - 0x02D0E3 21:90D3: 32        .byte $32	; <ょ>
- D - I - 0x02D0E4 21:90D4: 0D        .byte $0D	; <す>
- D - I - 0x02D0E5 21:90D5: 33        .byte $33	; <0>

- D - I - 0x02D0E6 21:90D6: 08        .byte $08	; <く>
- D - I - 0x02D0E7 21:90D7: 04        .byte $04	; <え>
- D - I - 0x02D0E8 21:90D8: 0D        .byte $0D	; <す>
- D - I - 0x02D0E9 21:90D9: 38        .byte $38	; <5>
- D - I - 0x02D0EA 21:90DA: 11        .byte $11	; <ち>
- D - I - 0x02D0EB 21:90DB: 39        .byte $39	; <6>

- D - I - 0x02D0EC 21:90DC: 08        .byte $08	; <く>
- D - I - 0x02D0ED 21:90DD: 05        .byte $05	; <お>
- D - I - 0x02D0EE 21:90DE: 0D        .byte $0D	; <す>
- D - I - 0x02D0EF 21:90DF: 3A        .byte $3A	; <7>
- D - I - 0x02D0F0 21:90E0: 11        .byte $11	; <ち>
- D - I - 0x02D0F1 21:90E1: 3B        .byte $3B	; <8>

- D - I - 0x02D0F2 21:90E2: 02        .byte $02	; <い>
- D - I - 0x02D0F3 21:90E3: 58 91     .word off_9158



off_90E5:
- D - I - 0x02D0F5 21:90E5: 08        .byte $08	; <く>
- D - I - 0x02D0F6 21:90E6: 02        .byte $02	; <い>
- D - I - 0x02D0F7 21:90E7: 94        .byte $94
- D - I - 0x02D0F8 21:90E8: 65        .byte $65	; <ユ>
- D - I - 0x02D0F9 21:90E9: 20        .byte $20	; <み>
- D - I - 0x02D0FA 21:90EA: 70        .byte $70	; <ャ>

- D - I - 0x02D0FB 21:90EB: 10        .byte $10	; <た>
- D - I - 0x02D0FC 21:90EC: 03        .byte $03	; <う>
- D - I - 0x02D0FD 21:90ED: 04        .byte $04	; <え>
- D - I - 0x02D0FE 21:90EE: 67        .byte $67	; <ラ>
- D - I - 0x02D0FF 21:90EF: 08        .byte $08	; <く>
- D - I - 0x02D100 21:90F0: 72        .byte $72	; <ョ>
- D - I - 0x02D101 21:90F1: 0C        .byte $0C	; <し>
- D - I - 0x02D102 21:90F2: 73        .byte $73	; <ヮ>

- D - I - 0x02D103 21:90F3: 08        .byte $08	; <く>
- D - I - 0x02D104 21:90F4: 04        .byte $04	; <え>
- D - I - 0x02D105 21:90F5: 08        .byte $08	; <く>
- D - I - 0x02D106 21:90F6: 6D        .byte $6D	; <ヲ>
- D - I - 0x02D107 21:90F7: 0C        .byte $0C	; <し>
- D - I - 0x02D108 21:90F8: 6F        .byte $6F	; <ッ>

- D - I - 0x02D109 21:90F9: 02        .byte $02	; <い>
- D - I - 0x02D10A 21:90FA: 42 91     .word off_9142



off_90FC:
- D - I - 0x02D10C 21:90FC: 10        .byte $10	; <た>
- D - I - 0x02D10D 21:90FD: 02        .byte $02	; <い>
- D - I - 0x02D10E 21:90FE: 04        .byte $04	; <え>
- D - I - 0x02D10F 21:90FF: 5B        .byte $5B	; <ヒ>
- D - I - 0x02D110 21:9100: 08        .byte $08	; <く>
- D - I - 0x02D111 21:9101: 5E        .byte $5E	; <ホ>
- D - I - 0x02D112 21:9102: 0C        .byte $0C	; <し>
- D - I - 0x02D113 21:9103: 5F        .byte $5F	; <マ>

- D - I - 0x02D114 21:9104: 10        .byte $10	; <た>
- D - I - 0x02D115 21:9105: 03        .byte $03	; <う>
- D - I - 0x02D116 21:9106: 04        .byte $04	; <え>
- D - I - 0x02D117 21:9107: 71        .byte $71	; <ュ>
- D - I - 0x02D118 21:9108: 08        .byte $08	; <く>
- D - I - 0x02D119 21:9109: 74        .byte $74	; <ィ>
- D - I - 0x02D11A 21:910A: 0C        .byte $0C	; <し>
- D - I - 0x02D11B 21:910B: 75        .byte $75	; <ェ>

- D - I - 0x02D11C 21:910C: 08        .byte $08	; <く>
- D - I - 0x02D11D 21:910D: 04        .byte $04	; <え>
- D - I - 0x02D11E 21:910E: 08        .byte $08	; <く>
- D - I - 0x02D11F 21:910F: 76        .byte $76	; <ォ>
- D - I - 0x02D120 21:9110: 0C        .byte $0C	; <し>
- D - I - 0x02D121 21:9111: 77        .byte $77	; <:>

- D - I - 0x02D122 21:9112: 02        .byte $02	; <い>
- D - I - 0x02D123 21:9113: 42 91     .word off_9142



off_9115:
- D - I - 0x02D125 21:9115: 08        .byte $08	; <く>
- D - I - 0x02D126 21:9116: 02        .byte $02	; <い>
- D - I - 0x02D127 21:9117: 98        .byte $98
- D - I - 0x02D128 21:9118: 78        .byte $78	; <?>
- D - I - 0x02D129 21:9119: 34        .byte $34	; <1>
- D - I - 0x02D12A 21:911A: 4C        .byte $4C	; <シ>

- D - I - 0x02D12B 21:911B: 10        .byte $10	; <た>
- D - I - 0x02D12C 21:911C: 03        .byte $03	; <う>
- D - I - 0x02D12D 21:911D: 04        .byte $04	; <え>
- D - I - 0x02D12E 21:911E: 5D        .byte $5D	; <ヘ>
- D - I - 0x02D12F 21:911F: 08        .byte $08	; <く>
- D - I - 0x02D130 21:9120: 7A        .byte $7A	; <、>
- D - I - 0x02D131 21:9121: 0C        .byte $0C	; <し>
- D - I - 0x02D132 21:9122: 4F        .byte $4F	; <ソ>

- D - I - 0x02D133 21:9123: 08        .byte $08	; <く>
- D - I - 0x02D134 21:9124: 04        .byte $04	; <え>
- D - I - 0x02D135 21:9125: 08        .byte $08	; <く>
- D - I - 0x02D136 21:9126: 79        .byte $79	; <!>
- D - I - 0x02D137 21:9127: 0C        .byte $0C	; <し>
- D - I - 0x02D138 21:9128: 64        .byte $64	; <ヤ>

- D - I - 0x02D139 21:9129: 02        .byte $02	; <い>
- D - I - 0x02D13A 21:912A: 42 91     .word off_9142



off_912C:
- D - I - 0x02D13C 21:912C: 10        .byte $10	; <た>
- D - I - 0x02D13D 21:912D: 03        .byte $03	; <う>
- D - I - 0x02D13E 21:912E: 04        .byte $04	; <え>
- D - I - 0x02D13F 21:912F: 13        .byte $13	; <て>
- D - I - 0x02D140 21:9130: 08        .byte $08	; <く>
- D - I - 0x02D141 21:9131: 40        .byte $40	; <「>
- D - I - 0x02D142 21:9132: 0C        .byte $0C	; <し>
- D - I - 0x02D143 21:9133: 41        .byte $41	; <ア>

- D - I - 0x02D144 21:9134: 08        .byte $08	; <く>
- D - I - 0x02D145 21:9135: 04        .byte $04	; <え>
- D - I - 0x02D146 21:9136: 08        .byte $08	; <く>
- D - I - 0x02D147 21:9137: 42        .byte $42	; <イ>
- D - I - 0x02D148 21:9138: 0C        .byte $0C	; <し>
- D - I - 0x02D149 21:9139: 43        .byte $43	; <ウ>
; продолжение


off_913A:
- D - I - 0x02D14A 21:913A: 10        .byte $10	; <た>
- D - I - 0x02D14B 21:913B: 02        .byte $02	; <い>
- D - I - 0x02D14C 21:913C: 94        .byte $94
- D - I - 0x02D14D 21:913D: 36        .byte $36	; <3>
- D - I - 0x02D14E 21:913E: 20        .byte $20	; <み>
- D - I - 0x02D14F 21:913F: 37        .byte $37	; <4>
- D - I - 0x02D150 21:9140: 28        .byte $28	; <り>
- D - I - 0x02D151 21:9141: 62        .byte $62	; <メ>
; продолжение


off_9142:
- D - I - 0x02D152 21:9142: 00        .byte $00
- D - I - 0x02D153 21:9143: 01        .byte $01	; <あ>
- D - I - 0x02D154 21:9144: 0B        .byte $0B	; <さ>
- D - I - 0x02D155 21:9145: 08        .byte $08	; <く>

- D - I - 0x02D156 21:9146: 08        .byte $08	; <く>
- D - I - 0x02D157 21:9147: 02        .byte $02	; <い>
- D - I - 0x02D158 21:9148: 09        .byte $09	; <け>
- D - I - 0x02D159 21:9149: 0A        .byte $0A	; <こ>
- D - I - 0x02D15A 21:914A: 0D        .byte $0D	; <す>
- D - I - 0x02D15B 21:914B: 0B        .byte $0B	; <さ>

- D - I - 0x02D15C 21:914C: 08        .byte $08	; <く>
- D - I - 0x02D15D 21:914D: 04        .byte $04	; <え>
- D - I - 0x02D15E 21:914E: 0D        .byte $0D	; <す>
- D - I - 0x02D15F 21:914F: 23        .byte $23	; <も>
- D - I - 0x02D160 21:9150: 11        .byte $11	; <ち>
- D - I - 0x02D161 21:9151: 26        .byte $26	; <よ>

- D - I - 0x02D162 21:9152: 08        .byte $08	; <く>
- D - I - 0x02D163 21:9153: 05        .byte $05	; <お>
- D - I - 0x02D164 21:9154: 0D        .byte $0D	; <す>
- D - I - 0x02D165 21:9155: 29        .byte $29	; <る>
- D - I - 0x02D166 21:9156: 11        .byte $11	; <ち>
- D - I - 0x02D167 21:9157: 2C        .byte $2C	; <わ>
; продолжение


off_9158:
- D - I - 0x02D168 21:9158: 00        .byte $00
- D - I - 0x02D169 21:9159: 00        .byte $00
- D - I - 0x02D16A 21:915A: 0B        .byte $0B	; <さ>
- D - I - 0x02D16B 21:915B: 02        .byte $02	; <い>

- D - I - 0x02D16C 21:915C: 00        .byte $00
- D - I - 0x02D16D 21:915D: 0D        .byte $0D	; <す>
- D - I - 0x02D16E 21:915E: 04        .byte $04	; <え>
- D - I - 0x02D16F 21:915F: 2A        .byte $2A	; <れ>

- D - I - 0x02D170 21:9160: 00        .byte $00
- D - I - 0x02D171 21:9161: 01        .byte $01	; <あ>
- D - I - 0x02D172 21:9162: 0C        .byte $0C	; <し>
- D - I - 0x02D173 21:9163: 09        .byte $09	; <け>

- D - I - 0x02D174 21:9164: 10        .byte $10	; <た>
- D - I - 0x02D175 21:9165: 03        .byte $03	; <う>
- D - I - 0x02D176 21:9166: 0D        .byte $0D	; <す>
- D - I - 0x02D177 21:9167: 21        .byte $21	; <む>
- D - I - 0x02D178 21:9168: 11        .byte $11	; <ち>
- D - I - 0x02D179 21:9169: 24        .byte $24	; <や>
- D - I - 0x02D17A 21:916A: 09        .byte $09	; <け>
- D - I - 0x02D17B 21:916B: 20        .byte $20	; <み>

- D - I - 0x02D17C 21:916C: 08        .byte $08	; <く>
- D - I - 0x02D17D 21:916D: 04        .byte $04	; <え>
- D - I - 0x02D17E 21:916E: 09        .byte $09	; <け>
- D - I - 0x02D17F 21:916F: 22        .byte $22	; <め>
- D - I - 0x02D180 21:9170: 14        .byte $14	; <と>
- D - I - 0x02D181 21:9171: 27        .byte $27	; <ら>

- D - I - 0x02D182 21:9172: 10        .byte $10	; <た>
- D - I - 0x02D183 21:9173: 05        .byte $05	; <お>
- D - I - 0x02D184 21:9174: 09        .byte $09	; <け>
- D - I - 0x02D185 21:9175: 28        .byte $28	; <り>
- D - I - 0x02D186 21:9176: 0A        .byte $0A	; <こ>
- D - I - 0x02D187 21:9177: 03        .byte $03	; <う>
- D - I - 0x02D188 21:9178: 17        .byte $17	; <ぬ>
- D - I - 0x02D189 21:9179: 2D        .byte $2D	; <を>

- D - I - 0x02D18A 21:917A: 20        .byte $20	; <み>
- D - I - 0x02D18B 21:917B: 06        .byte $06	; <か>
- D - I - 0x02D18C 21:917C: 0A        .byte $0A	; <こ>
- D - I - 0x02D18D 21:917D: 04        .byte $04	; <え>
- D - I - 0x02D18E 21:917E: 0E        .byte $0E	; <せ>
- D - I - 0x02D18F 21:917F: 05        .byte $05	; <お>
- D - I - 0x02D190 21:9180: 12        .byte $12	; <つ>
- D - I - 0x02D191 21:9181: 10        .byte $10	; <た>
- D - I - 0x02D192 21:9182: 17        .byte $17	; <ぬ>
- D - I - 0x02D193 21:9183: 2B        .byte $2B	; <ろ>
- D - I - 0x02D194 21:9184: 18        .byte $18	; <ね>
- D - I - 0x02D195 21:9185: 2E        .byte $2E	; <ん>

- D - I - 0x02D196 21:9186: 10        .byte $10	; <た>
- D - I - 0x02D197 21:9187: 07        .byte $07	; <き>
- D - I - 0x02D198 21:9188: 95        .byte $95
- D - I - 0x02D199 21:9189: 06        .byte $06	; <か>
- D - I - 0x02D19A 21:918A: 20        .byte $20	; <み>
- D - I - 0x02D19B 21:918B: 07        .byte $07	; <き>
- D - I - 0x02D19C 21:918C: 18        .byte $18	; <ね>
- D - I - 0x02D19D 21:918D: 2F        .byte $2F	; <っ>

- D - I - 0x02D19E 21:918E: 08        .byte $08	; <く>
- D - I - 0x02D19F 21:918F: 08        .byte $08	; <く>
- D - I - 0x02D1A0 21:9190: 05        .byte $05	; <お>
- D - I - 0x02D1A1 21:9191: 0C        .byte $0C	; <し>
- D - I - 0x02D1A2 21:9192: 09        .byte $09	; <け>
- D - I - 0x02D1A3 21:9193: 0D        .byte $0D	; <す>

- D - I - 0x02D1A4 21:9194: 08        .byte $08	; <く>
- D - I - 0x02D1A5 21:9195: 09        .byte $09	; <け>
- D - I - 0x02D1A6 21:9196: 51        .byte $51	; <チ>
- D - I - 0x02D1A7 21:9197: 12        .byte $12	; <つ>
- D - I - 0x02D1A8 21:9198: 55        .byte $55	; <ナ>
- D - I - 0x02D1A9 21:9199: 18        .byte $18	; <ね>

- D - I - 0x02D1AA 21:919A: 10        .byte $10	; <た>
- D - I - 0x02D1AB 21:919B: 16        .byte $16	; <に>
- D - I - 0x02D1AC 21:919C: 6F        .byte $6F	; <ッ>
- D - I - 0x02D1AD 21:919D: 0E        .byte $0E	; <せ>
- D - I - 0x02D1AE 21:919E: 51        .byte $51	; <チ>
- D - I - 0x02D1AF 21:919F: 0F        .byte $0F	; <そ>
- D - I - 0x02D1B0 21:91A0: 55        .byte $55	; <ナ>
- D - I - 0x02D1B1 21:91A1: 1A        .byte $1A	; <は>

- D - I - 0x02D1B2 21:91A2: 08        .byte $08	; <く>
- D - I - 0x02D1B3 21:91A3: 17        .byte $17	; <ぬ>
- D - I - 0x02D1B4 21:91A4: 6F        .byte $6F	; <ッ>
- D - I - 0x02D1B5 21:91A5: 25        .byte $25	; <ゆ>
- D - I - 0x02D1B6 21:91A6: 53        .byte $53	; <テ>
- D - I - 0x02D1B7 21:91A7: 30        .byte $30	; <ゃ>

- D - I - 0x02D1B8 21:91A8: 01        .byte $01	; <あ>



off_91A9_20:
- D - I - 0x02D1B9 21:91A9: 00        .byte $00
- D - I - 0x02D1BA 21:91AA: 01        .byte $01	; <あ>
- D - I - 0x02D1BB 21:91AB: 15        .byte $15	; <な>
- D - I - 0x02D1BC 21:91AC: 8C        .byte $8C	; <M>

- D - I - 0x02D1BD 21:91AD: 08        .byte $08	; <く>
- D - I - 0x02D1BE 21:91AE: 02        .byte $02	; <い>
- D - I - 0x02D1BF 21:91AF: 11        .byte $11	; <ち>
- D - I - 0x02D1C0 21:91B0: 88        .byte $88	; <H>
- D - I - 0x02D1C1 21:91B1: 15        .byte $15	; <な>
- D - I - 0x02D1C2 21:91B2: 89        .byte $89	; <I>

- D - I - 0x02D1C3 21:91B3: 08        .byte $08	; <く>
- D - I - 0x02D1C4 21:91B4: 03        .byte $03	; <う>
- D - I - 0x02D1C5 21:91B5: 0C        .byte $0C	; <し>
- D - I - 0x02D1C6 21:91B6: 82        .byte $82	; <B>
- D - I - 0x02D1C7 21:91B7: 11        .byte $11	; <ち>
- D - I - 0x02D1C8 21:91B8: 83        .byte $83	; <C>

- D - I - 0x02D1C9 21:91B9: 08        .byte $08	; <く>
- D - I - 0x02D1CA 21:91BA: 04        .byte $04	; <え>
- D - I - 0x02D1CB 21:91BB: 08        .byte $08	; <く>
- D - I - 0x02D1CC 21:91BC: 84        .byte $84	; <D>
- D - I - 0x02D1CD 21:91BD: 0C        .byte $0C	; <し>
- D - I - 0x02D1CE 21:91BE: 85        .byte $85	; <E>

- D - I - 0x02D1CF 21:91BF: 08        .byte $08	; <く>
- D - I - 0x02D1D0 21:91C0: 05        .byte $05	; <お>
- D - I - 0x02D1D1 21:91C1: 04        .byte $04	; <え>
- D - I - 0x02D1D2 21:91C2: 86        .byte $86	; <F>
- D - I - 0x02D1D3 21:91C3: 08        .byte $08	; <く>
- D - I - 0x02D1D4 21:91C4: 87        .byte $87	; <G>

- D - I - 0x02D1D5 21:91C5: 01        .byte $01	; <あ>



off_91C6_21:
- D - I - 0x02D1D6 21:91C6: 08        .byte $08	; <く>
- D - I - 0x02D1D7 21:91C7: 02        .byte $02	; <い>
- D - I - 0x02D1D8 21:91C8: 0F        .byte $0F	; <そ>
- D - I - 0x02D1D9 21:91C9: B8        .byte $B8	; <ゴ>
- D - I - 0x02D1DA 21:91CA: 13        .byte $13	; <て>
- D - I - 0x02D1DB 21:91CB: B9        .byte $B9	; <ザ>

- D - I - 0x02D1DC 21:91CC: 08        .byte $08	; <く>
- D - I - 0x02D1DD 21:91CD: 03        .byte $03	; <う>
- D - I - 0x02D1DE 21:91CE: 0F        .byte $0F	; <そ>
- D - I - 0x02D1DF 21:91CF: BA        .byte $BA	; <ジ>
- D - I - 0x02D1E0 21:91D0: 13        .byte $13	; <て>
- D - I - 0x02D1E1 21:91D1: BB        .byte $BB	; <ズ>

- D - I - 0x02D1E2 21:91D2: 08        .byte $08	; <く>
- D - I - 0x02D1E3 21:91D3: 04        .byte $04	; <え>
- D - I - 0x02D1E4 21:91D4: 0F        .byte $0F	; <そ>
- D - I - 0x02D1E5 21:91D5: BC        .byte $BC	; <ゼ>
- D - I - 0x02D1E6 21:91D6: 13        .byte $13	; <て>
- D - I - 0x02D1E7 21:91D7: BD        .byte $BD	; <ゾ>

- D - I - 0x02D1E8 21:91D8: 08        .byte $08	; <く>
- D - I - 0x02D1E9 21:91D9: 05        .byte $05	; <お>
- D - I - 0x02D1EA 21:91DA: 0F        .byte $0F	; <そ>
- D - I - 0x02D1EB 21:91DB: BE        .byte $BE	; <ダ>
- D - I - 0x02D1EC 21:91DC: 13        .byte $13	; <て>
- D - I - 0x02D1ED 21:91DD: BF        .byte $BF	; <ヂ>

- D - I - 0x02D1EE 21:91DE: 01        .byte $01	; <あ>



off_91DF_22:
- D - I - 0x02D1EF 21:91DF: 08        .byte $08	; <く>
- D - I - 0x02D1F0 21:91E0: 02        .byte $02	; <い>
- D - I - 0x02D1F1 21:91E1: 0F        .byte $0F	; <そ>
- D - I - 0x02D1F2 21:91E2: B5        .byte $B5	; <ギ>
- D - I - 0x02D1F3 21:91E3: 13        .byte $13	; <て>
- D - I - 0x02D1F4 21:91E4: B6        .byte $B6	; <グ>

- D - I - 0x02D1F5 21:91E5: 08        .byte $08	; <く>
- D - I - 0x02D1F6 21:91E6: 03        .byte $03	; <う>
- D - I - 0x02D1F7 21:91E7: 0F        .byte $0F	; <そ>
- D - I - 0x02D1F8 21:91E8: B7        .byte $B7	; <ゲ>
- D - I - 0x02D1F9 21:91E9: 13        .byte $13	; <て>
- D - I - 0x02D1FA 21:91EA: E2        .byte $E2

- D - I - 0x02D1FB 21:91EB: 08        .byte $08	; <く>
- D - I - 0x02D1FC 21:91EC: 04        .byte $04	; <え>
- D - I - 0x02D1FD 21:91ED: 0F        .byte $0F	; <そ>
- D - I - 0x02D1FE 21:91EE: E8        .byte $E8
- D - I - 0x02D1FF 21:91EF: 13        .byte $13	; <て>
- D - I - 0x02D200 21:91F0: E9        .byte $E9

- D - I - 0x02D201 21:91F1: 08        .byte $08	; <く>
- D - I - 0x02D202 21:91F2: 05        .byte $05	; <お>
- D - I - 0x02D203 21:91F3: 0F        .byte $0F	; <そ>
- D - I - 0x02D204 21:91F4: EA        .byte $EA
- D - I - 0x02D205 21:91F5: 13        .byte $13	; <て>
- D - I - 0x02D206 21:91F6: EB        .byte $EB

- D - I - 0x02D207 21:91F7: 01        .byte $01	; <あ>



off_91F8_23:
- D - I - 0x02D208 21:91F8: 00        .byte $00
- D - I - 0x02D209 21:91F9: 03        .byte $03	; <う>
- D - I - 0x02D20A 21:91FA: 13        .byte $13	; <て>
- D - I - 0x02D20B 21:91FB: B4        .byte $B4	; <ガ>

- D - I - 0x02D20C 21:91FC: 08        .byte $08	; <く>
- D - I - 0x02D20D 21:91FD: 04        .byte $04	; <え>
- D - I - 0x02D20E 21:91FE: 0D        .byte $0D	; <す>
- D - I - 0x02D20F 21:91FF: FC        .byte $FC
- D - I - 0x02D210 21:9200: 11        .byte $11	; <ち>
- D - I - 0x02D211 21:9201: FD        .byte $FD

- D - I - 0x02D212 21:9202: 08        .byte $08	; <く>
- D - I - 0x02D213 21:9203: 05        .byte $05	; <お>
- D - I - 0x02D214 21:9204: 11        .byte $11	; <ち>
- D - I - 0x02D215 21:9205: FE        .byte $FE
- D - I - 0x02D216 21:9206: 15        .byte $15	; <な>
- D - I - 0x02D217 21:9207: FF        .byte $FF

- D - I - 0x02D218 21:9208: 01        .byte $01	; <あ>



off_9209_24:
- D - I - 0x02D219 21:9209: 03        .byte $03	; <う>
- D - I - 0x02D21A 21:920A: 16 92     .word off_9216
- D - I - 0x02D21C 21:920C: 5F 92     .word off_925F
- D - I - 0x02D21E 21:920E: 70 92     .word off_9270
- D - I - 0x02D220 21:9210: 5F 92     .word off_925F
- D - I - 0x02D222 21:9212: 5F 92     .word off_925F
- - - - - 0x02D224 21:9214: 5F 92     .word off_925F



off_9216:
- D - I - 0x02D226 21:9216: 00        .byte $00
- D - I - 0x02D227 21:9217: 19        .byte $19	; <の>
- D - I - 0x02D228 21:9218: 16        .byte $16	; <に>
- D - I - 0x02D229 21:9219: 30        .byte $30	; <ゃ>

- D - I - 0x02D22A 21:921A: 18        .byte $18	; <ね>
- D - I - 0x02D22B 21:921B: 1A        .byte $1A	; <は>
- D - I - 0x02D22C 21:921C: 11        .byte $11	; <ち>
- D - I - 0x02D22D 21:921D: 27        .byte $27	; <ら>
- D - I - 0x02D22E 21:921E: 13        .byte $13	; <て>
- D - I - 0x02D22F 21:921F: 2C        .byte $2C	; <わ>
- D - I - 0x02D230 21:9220: 12        .byte $12	; <つ>
- D - I - 0x02D231 21:9221: 2D        .byte $2D	; <を>
- D - I - 0x02D232 21:9222: 17        .byte $17	; <ぬ>
- D - I - 0x02D233 21:9223: 32        .byte $32	; <ょ>
; продолжение


off_9224:
- D - I - 0x02D234 21:9224: 00        .byte $00
- D - I - 0x02D235 21:9225: 1C        .byte $1C	; <ふ>
- D - I - 0x02D236 21:9226: 1A        .byte $1A	; <は>
- D - I - 0x02D237 21:9227: 12        .byte $12	; <つ>

- D - I - 0x02D238 21:9228: 10        .byte $10	; <た>
- D - I - 0x02D239 21:9229: 18        .byte $18	; <ね>
- D - I - 0x02D23A 21:922A: 0A        .byte $0A	; <こ>
- D - I - 0x02D23B 21:922B: 0B        .byte $0B	; <さ>
- D - I - 0x02D23C 21:922C: 16        .byte $16	; <に>
- D - I - 0x02D23D 21:922D: 1A        .byte $1A	; <は>
- D - I - 0x02D23E 21:922E: 1A        .byte $1A	; <は>
- D - I - 0x02D23F 21:922F: 18        .byte $18	; <ね>

- D - I - 0x02D240 21:9230: 08        .byte $08	; <く>
- D - I - 0x02D241 21:9231: 19        .byte $19	; <の>
- D - I - 0x02D242 21:9232: 06        .byte $06	; <か>
- D - I - 0x02D243 21:9233: 20        .byte $20	; <み>
- D - I - 0x02D244 21:9234: 0A        .byte $0A	; <こ>
- D - I - 0x02D245 21:9235: 21        .byte $21	; <む>

- D - I - 0x02D246 21:9236: 10        .byte $10	; <た>
- D - I - 0x02D247 21:9237: 1A        .byte $1A	; <は>
- D - I - 0x02D248 21:9238: 06        .byte $06	; <か>
- D - I - 0x02D249 21:9239: 22        .byte $22	; <め>
- D - I - 0x02D24A 21:923A: 07        .byte $07	; <き>
- D - I - 0x02D24B 21:923B: 2A        .byte $2A	; <れ>
- D - I - 0x02D24C 21:923C: 0E        .byte $0E	; <せ>
- D - I - 0x02D24D 21:923D: 26        .byte $26	; <よ>

- D - I - 0x02D24E 21:923E: 00        .byte $00
- D - I - 0x02D24F 21:923F: 1B        .byte $1B	; <ひ>
- D - I - 0x02D250 21:9240: 06        .byte $06	; <か>
- D - I - 0x02D251 21:9241: 29        .byte $29	; <る>
; продолжение


off_9242:
- D - I - 0x02D252 21:9242: 00        .byte $00
- D - I - 0x02D253 21:9243: 0D        .byte $0D	; <す>
- D - I - 0x02D254 21:9244: 18        .byte $18	; <ね>
- D - I - 0x02D255 21:9245: 10        .byte $10	; <た>

- D - I - 0x02D256 21:9246: 10        .byte $10	; <た>
- D - I - 0x02D257 21:9247: 18        .byte $18	; <ね>
- D - I - 0x02D258 21:9248: 04        .byte $04	; <え>
- D - I - 0x02D259 21:9249: 0A        .byte $0A	; <こ>
- D - I - 0x02D25A 21:924A: 0E        .byte $0E	; <せ>
- D - I - 0x02D25B 21:924B: 0E        .byte $0E	; <せ>
- D - I - 0x02D25C 21:924C: 11        .byte $11	; <ち>
- D - I - 0x02D25D 21:924D: 0F        .byte $0F	; <そ>

- D - I - 0x02D25E 21:924E: 10        .byte $10	; <た>
- D - I - 0x02D25F 21:924F: 19        .byte $19	; <の>
- D - I - 0x02D260 21:9250: 0D        .byte $0D	; <す>
- D - I - 0x02D261 21:9251: 24        .byte $24	; <や>
- D - I - 0x02D262 21:9252: 0E        .byte $0E	; <せ>
- D - I - 0x02D263 21:9253: 0D        .byte $0D	; <す>
- D - I - 0x02D264 21:9254: 11        .byte $11	; <ち>
- D - I - 0x02D265 21:9255: 25        .byte $25	; <ゆ>

- D - I - 0x02D266 21:9256: 00        .byte $00
- D - I - 0x02D267 21:9257: 1A        .byte $1A	; <は>
- D - I - 0x02D268 21:9258: 0B        .byte $0B	; <さ>
- D - I - 0x02D269 21:9259: 23        .byte $23	; <も>

- D - I - 0x02D26A 21:925A: 00        .byte $00
- D - I - 0x02D26B 21:925B: 1B        .byte $1B	; <ひ>
- D - I - 0x02D26C 21:925C: 03        .byte $03	; <う>
- D - I - 0x02D26D 21:925D: 28        .byte $28	; <り>

- D - I - 0x02D26E 21:925E: 01        .byte $01	; <あ>



off_925F:
- D - I - 0x02D26F 21:925F: 00        .byte $00
- D - I - 0x02D270 21:9260: 19        .byte $19	; <の>
- D - I - 0x02D271 21:9261: 16        .byte $16	; <に>
- D - I - 0x02D272 21:9262: 33        .byte $33	; <0>

- D - I - 0x02D273 21:9263: 18        .byte $18	; <ね>
- D - I - 0x02D274 21:9264: 1A        .byte $1A	; <は>
- D - I - 0x02D275 21:9265: 11        .byte $11	; <ち>
- D - I - 0x02D276 21:9266: 2B        .byte $2B	; <ろ>
- D - I - 0x02D277 21:9267: 10        .byte $10	; <た>
- D - I - 0x02D278 21:9268: 2E        .byte $2E	; <ん>
- D - I - 0x02D279 21:9269: 12        .byte $12	; <つ>
- D - I - 0x02D27A 21:926A: 2D        .byte $2D	; <を>
- D - I - 0x02D27B 21:926B: 14        .byte $14	; <と>
- D - I - 0x02D27C 21:926C: 2F        .byte $2F	; <っ>

- D - I - 0x02D27D 21:926D: 02        .byte $02	; <い>
- D - I - 0x02D27E 21:926E: 24 92     .word off_9224



off_9270:
- D - I - 0x02D280 21:9270: 00        .byte $00
- D - I - 0x02D281 21:9271: 1C        .byte $1C	; <ふ>
- D - I - 0x02D282 21:9272: 18        .byte $18	; <ね>
- D - I - 0x02D283 21:9273: 15        .byte $15	; <な>

- D - I - 0x02D284 21:9274: 18        .byte $18	; <ね>
- D - I - 0x02D285 21:9275: 18        .byte $18	; <ね>
- D - I - 0x02D286 21:9276: 0A        .byte $0A	; <こ>
- D - I - 0x02D287 21:9277: 1D        .byte $1D	; <へ>
- D - I - 0x02D288 21:9278: 0B        .byte $0B	; <さ>
- D - I - 0x02D289 21:9279: 1F        .byte $1F	; <ま>
- D - I - 0x02D28A 21:927A: 16        .byte $16	; <に>
- D - I - 0x02D28B 21:927B: 16        .byte $16	; <に>
- D - I - 0x02D28C 21:927C: 1A        .byte $1A	; <は>
- D - I - 0x02D28D 21:927D: 17        .byte $17	; <ぬ>

- D - I - 0x02D28E 21:927E: 10        .byte $10	; <た>
- D - I - 0x02D28F 21:927F: 19        .byte $19	; <の>
- D - I - 0x02D290 21:9280: 06        .byte $06	; <か>
- D - I - 0x02D291 21:9281: 11        .byte $11	; <ち>
- D - I - 0x02D292 21:9282: 0B        .byte $0B	; <さ>
- D - I - 0x02D293 21:9283: 14        .byte $14	; <と>
- D - I - 0x02D294 21:9284: 16        .byte $16	; <に>
- D - I - 0x02D295 21:9285: 1C        .byte $1C	; <ふ>

- D - I - 0x02D296 21:9286: 20        .byte $20	; <み>
- D - I - 0x02D297 21:9287: 1A        .byte $1A	; <は>
- D - I - 0x02D298 21:9288: 07        .byte $07	; <き>
- D - I - 0x02D299 21:9289: 13        .byte $13	; <て>
- D - I - 0x02D29A 21:928A: 0E        .byte $0E	; <せ>
- D - I - 0x02D29B 21:928B: 34        .byte $34	; <1>
- D - I - 0x02D29C 21:928C: 11        .byte $11	; <ち>
- D - I - 0x02D29D 21:928D: 1B        .byte $1B	; <ひ>
- D - I - 0x02D29E 21:928E: 12        .byte $12	; <つ>
- D - I - 0x02D29F 21:928F: 2D        .byte $2D	; <を>
- D - I - 0x02D2A0 21:9290: 17        .byte $17	; <ぬ>
- D - I - 0x02D2A1 21:9291: 1E        .byte $1E	; <ほ>

- D - I - 0x02D2A2 21:9292: 08        .byte $08	; <く>
- D - I - 0x02D2A3 21:9293: 1B        .byte $1B	; <ひ>
- D - I - 0x02D2A4 21:9294: 07        .byte $07	; <き>
- D - I - 0x02D2A5 21:9295: 19        .byte $19	; <の>
- D - I - 0x02D2A6 21:9296: 10        .byte $10	; <た>
- D - I - 0x02D2A7 21:9297: 31        .byte $31	; <ゅ>

- D - I - 0x02D2A8 21:9298: 02        .byte $02	; <い>
- D - I - 0x02D2A9 21:9299: 42 92     .word off_9242



off_929B_25:
- D - I - 0x02D2AB 21:929B: 03        .byte $03	; <う>
- D - I - 0x02D2AC 21:929C: B4 92     .word off_92B4
- D - I - 0x02D2AE 21:929E: C7 92     .word off_92C7
- D - I - 0x02D2B0 21:92A0: DC 92     .word off_92DC
- D - I - 0x02D2B2 21:92A2: B4 92     .word off_92B4
- D - I - 0x02D2B4 21:92A4: EF 92     .word off_92EF
- D - I - 0x02D2B6 21:92A6: 02 93     .word off_9302
- D - I - 0x02D2B8 21:92A8: 15 93     .word off_9315
- D - I - 0x02D2BA 21:92AA: 28 93     .word off_9328
- D - I - 0x02D2BC 21:92AC: 02 93     .word off_9302
- D - I - 0x02D2BE 21:92AE: 41 93     .word off_9341
- D - I - 0x02D2C0 21:92B0: 02 93     .word off_9302
- D - I - 0x02D2C2 21:92B2: DC 92     .word off_92DC



off_92B4:
- D - I - 0x02D2C4 21:92B4: 08        .byte $08	; <く>
- D - I - 0x02D2C5 21:92B5: 00        .byte $00
- D - I - 0x02D2C6 21:92B6: 40        .byte $40	; <「>
- D - I - 0x02D2C7 21:92B7: 05        .byte $05	; <お>
- D - I - 0x02D2C8 21:92B8: 44        .byte $44	; <エ>
- D - I - 0x02D2C9 21:92B9: 10        .byte $10	; <た>

- D - I - 0x02D2CA 21:92BA: 18        .byte $18	; <ね>
- D - I - 0x02D2CB 21:92BB: 01        .byte $01	; <あ>
- D - I - 0x02D2CC 21:92BC: 40        .byte $40	; <「>
- D - I - 0x02D2CD 21:92BD: 07        .byte $07	; <き>
- D - I - 0x02D2CE 21:92BE: 45        .byte $45	; <オ>
- D - I - 0x02D2CF 21:92BF: 12        .byte $12	; <つ>
- D - I - 0x02D2D0 21:92C0: 44        .byte $44	; <エ>
- D - I - 0x02D2D1 21:92C1: 11        .byte $11	; <ち>
- D - I - 0x02D2D2 21:92C2: 85        .byte $85	; <E>
- D - I - 0x02D2D3 21:92C3: 13        .byte $13	; <て>

- D - I - 0x02D2D4 21:92C4: 02        .byte $02	; <い>
- D - I - 0x02D2D5 21:92C5: 53 93     .word off_9353



off_92C7:
- D - I - 0x02D2D7 21:92C7: 08        .byte $08	; <く>
- D - I - 0x02D2D8 21:92C8: 00        .byte $00
- D - I - 0x02D2D9 21:92C9: 40        .byte $40	; <「>
- D - I - 0x02D2DA 21:92CA: 05        .byte $05	; <お>
- D - I - 0x02D2DB 21:92CB: 44        .byte $44	; <エ>
- D - I - 0x02D2DC 21:92CC: 14        .byte $14	; <と>

- D - I - 0x02D2DD 21:92CD: 20        .byte $20	; <み>
- D - I - 0x02D2DE 21:92CE: 01        .byte $01	; <あ>
- D - I - 0x02D2DF 21:92CF: 40        .byte $40	; <「>
- D - I - 0x02D2E0 21:92D0: 16        .byte $16	; <に>
- D - I - 0x02D2E1 21:92D1: 45        .byte $45	; <オ>
- D - I - 0x02D2E2 21:92D2: 17        .byte $17	; <ぬ>
- D - I - 0x02D2E3 21:92D3: 44        .byte $44	; <エ>
- D - I - 0x02D2E4 21:92D4: 0E        .byte $0E	; <せ>
- D - I - 0x02D2E5 21:92D5: 85        .byte $85	; <E>
- D - I - 0x02D2E6 21:92D6: 19        .byte $19	; <の>
- D - I - 0x02D2E7 21:92D7: 84        .byte $84	; <D>
- D - I - 0x02D2E8 21:92D8: 1C        .byte $1C	; <ふ>

- D - I - 0x02D2E9 21:92D9: 02        .byte $02	; <い>
- D - I - 0x02D2EA 21:92DA: 53 93     .word off_9353



off_92DC:
- D - I - 0x02D2EC 21:92DC: 08        .byte $08	; <く>
- D - I - 0x02D2ED 21:92DD: 00        .byte $00
- D - I - 0x02D2EE 21:92DE: 40        .byte $40	; <「>
- D - I - 0x02D2EF 21:92DF: 05        .byte $05	; <お>
- D - I - 0x02D2F0 21:92E0: 44        .byte $44	; <エ>
- D - I - 0x02D2F1 21:92E1: 1D        .byte $1D	; <へ>

- D - I - 0x02D2F2 21:92E2: 18        .byte $18	; <ね>
- D - I - 0x02D2F3 21:92E3: 01        .byte $01	; <あ>
- D - I - 0x02D2F4 21:92E4: 40        .byte $40	; <「>
- D - I - 0x02D2F5 21:92E5: 07        .byte $07	; <き>
- D - I - 0x02D2F6 21:92E6: 45        .byte $45	; <オ>
- D - I - 0x02D2F7 21:92E7: 1B        .byte $1B	; <ひ>
- D - I - 0x02D2F8 21:92E8: 44        .byte $44	; <エ>
- D - I - 0x02D2F9 21:92E9: 31        .byte $31	; <ゅ>
- D - I - 0x02D2FA 21:92EA: 85        .byte $85	; <E>
- D - I - 0x02D2FB 21:92EB: 13        .byte $13	; <て>

- D - I - 0x02D2FC 21:92EC: 02        .byte $02	; <い>
- D - I - 0x02D2FD 21:92ED: 53 93     .word off_9353



off_92EF:
- D - I - 0x02D2FF 21:92EF: 08        .byte $08	; <く>
- D - I - 0x02D300 21:92F0: 00        .byte $00
- D - I - 0x02D301 21:92F1: 40        .byte $40	; <「>
- D - I - 0x02D302 21:92F2: 0F        .byte $0F	; <そ>
- D - I - 0x02D303 21:92F3: 44        .byte $44	; <エ>
- D - I - 0x02D304 21:92F4: 1A        .byte $1A	; <は>

- D - I - 0x02D305 21:92F5: 18        .byte $18	; <ね>
- D - I - 0x02D306 21:92F6: 01        .byte $01	; <あ>
- D - I - 0x02D307 21:92F7: 40        .byte $40	; <「>
- D - I - 0x02D308 21:92F8: 25        .byte $25	; <ゆ>
- D - I - 0x02D309 21:92F9: 45        .byte $45	; <オ>
- D - I - 0x02D30A 21:92FA: 30        .byte $30	; <ゃ>
- D - I - 0x02D30B 21:92FB: 44        .byte $44	; <エ>
- D - I - 0x02D30C 21:92FC: 2E        .byte $2E	; <ん>
- D - I - 0x02D30D 21:92FD: 85        .byte $85	; <E>
- D - I - 0x02D30E 21:92FE: 13        .byte $13	; <て>

- D - I - 0x02D30F 21:92FF: 02        .byte $02	; <い>
- D - I - 0x02D310 21:9300: 53 93     .word off_9353



off_9302:
- D - I - 0x02D312 21:9302: 08        .byte $08	; <く>
- D - I - 0x02D313 21:9303: 00        .byte $00
- D - I - 0x02D314 21:9304: 40        .byte $40	; <「>
- D - I - 0x02D315 21:9305: 1E        .byte $1E	; <ほ>
- D - I - 0x02D316 21:9306: 44        .byte $44	; <エ>
- D - I - 0x02D317 21:9307: 1F        .byte $1F	; <ま>

- D - I - 0x02D318 21:9308: 18        .byte $18	; <ね>
- D - I - 0x02D319 21:9309: 01        .byte $01	; <あ>
- D - I - 0x02D31A 21:930A: 40        .byte $40	; <「>
- D - I - 0x02D31B 21:930B: 34        .byte $34	; <1>
- D - I - 0x02D31C 21:930C: 45        .byte $45	; <オ>
- D - I - 0x02D31D 21:930D: 35        .byte $35	; <2>
- D - I - 0x02D31E 21:930E: 44        .byte $44	; <エ>
- D - I - 0x02D31F 21:930F: 15        .byte $15	; <な>
- D - I - 0x02D320 21:9310: 85        .byte $85	; <E>
- D - I - 0x02D321 21:9311: 13        .byte $13	; <て>

- D - I - 0x02D322 21:9312: 02        .byte $02	; <い>
- D - I - 0x02D323 21:9313: 53 93     .word off_9353



off_9315:
- D - I - 0x02D325 21:9315: 08        .byte $08	; <く>
- D - I - 0x02D326 21:9316: 00        .byte $00
- D - I - 0x02D327 21:9317: 40        .byte $40	; <「>
- D - I - 0x02D328 21:9318: 27        .byte $27	; <ら>
- D - I - 0x02D329 21:9319: 44        .byte $44	; <エ>
- D - I - 0x02D32A 21:931A: 1A        .byte $1A	; <は>

- D - I - 0x02D32B 21:931B: 18        .byte $18	; <ね>
- D - I - 0x02D32C 21:931C: 01        .byte $01	; <あ>
- D - I - 0x02D32D 21:931D: 40        .byte $40	; <「>
- D - I - 0x02D32E 21:931E: 32        .byte $32	; <ょ>
- D - I - 0x02D32F 21:931F: 45        .byte $45	; <オ>
- D - I - 0x02D330 21:9320: 30        .byte $30	; <ゃ>
- D - I - 0x02D331 21:9321: 44        .byte $44	; <エ>
- D - I - 0x02D332 21:9322: 2E        .byte $2E	; <ん>
- D - I - 0x02D333 21:9323: 85        .byte $85	; <E>
- D - I - 0x02D334 21:9324: 13        .byte $13	; <て>

- D - I - 0x02D335 21:9325: 02        .byte $02	; <い>
- D - I - 0x02D336 21:9326: 53 93     .word off_9353



off_9328:
- D - I - 0x02D338 21:9328: 08        .byte $08	; <く>
- D - I - 0x02D339 21:9329: 00        .byte $00
- D - I - 0x02D33A 21:932A: 40        .byte $40	; <「>
- D - I - 0x02D33B 21:932B: 05        .byte $05	; <お>
- D - I - 0x02D33C 21:932C: 44        .byte $44	; <エ>
- D - I - 0x02D33D 21:932D: 10        .byte $10	; <た>

- D - I - 0x02D33E 21:932E: 18        .byte $18	; <ね>
- D - I - 0x02D33F 21:932F: 01        .byte $01	; <あ>
- D - I - 0x02D340 21:9330: 40        .byte $40	; <「>
- D - I - 0x02D341 21:9331: 07        .byte $07	; <き>
- D - I - 0x02D342 21:9332: 45        .byte $45	; <オ>
- D - I - 0x02D343 21:9333: 2D        .byte $2D	; <を>
- D - I - 0x02D344 21:9334: 44        .byte $44	; <エ>
- D - I - 0x02D345 21:9335: 11        .byte $11	; <ち>
- D - I - 0x02D346 21:9336: 85        .byte $85	; <E>
- D - I - 0x02D347 21:9337: 38        .byte $38	; <5>

- D - I - 0x02D348 21:9338: 08        .byte $08	; <く>
- D - I - 0x02D349 21:9339: 02        .byte $02	; <い>
- D - I - 0x02D34A 21:933A: 45        .byte $45	; <オ>
- D - I - 0x02D34B 21:933B: 2F        .byte $2F	; <っ>
- D - I - 0x02D34C 21:933C: 85        .byte $85	; <E>
- D - I - 0x02D34D 21:933D: 3A        .byte $3A	; <7>

- D - I - 0x02D34E 21:933E: 02        .byte $02	; <い>
- D - I - 0x02D34F 21:933F: 59 93     .word off_9359



off_9341:
- D - I - 0x02D351 21:9341: 08        .byte $08	; <く>
- D - I - 0x02D352 21:9342: 00        .byte $00
- D - I - 0x02D353 21:9343: 40        .byte $40	; <「>
- D - I - 0x02D354 21:9344: 0F        .byte $0F	; <そ>
- D - I - 0x02D355 21:9345: 44        .byte $44	; <エ>
- D - I - 0x02D356 21:9346: 33        .byte $33	; <0>

- D - I - 0x02D357 21:9347: 20        .byte $20	; <み>
- D - I - 0x02D358 21:9348: 01        .byte $01	; <あ>
- D - I - 0x02D359 21:9349: 54        .byte $54	; <ト>
- D - I - 0x02D35A 21:934A: 3B        .byte $3B	; <8>
- D - I - 0x02D35B 21:934B: 40        .byte $40	; <「>
- D - I - 0x02D35C 21:934C: 25        .byte $25	; <ゆ>
- D - I - 0x02D35D 21:934D: 45        .byte $45	; <オ>
- D - I - 0x02D35E 21:934E: 39        .byte $39	; <6>
- D - I - 0x02D35F 21:934F: 44        .byte $44	; <エ>
- D - I - 0x02D360 21:9350: 36        .byte $36	; <3>
- D - I - 0x02D361 21:9351: 85        .byte $85	; <E>
- D - I - 0x02D362 21:9352: 13        .byte $13	; <て>
; продолжение


off_9353:
- D - I - 0x02D363 21:9353: 08        .byte $08	; <く>
- D - I - 0x02D364 21:9354: 02        .byte $02	; <い>
- D - I - 0x02D365 21:9355: 45        .byte $45	; <オ>
- D - I - 0x02D366 21:9356: 0D        .byte $0D	; <す>
- D - I - 0x02D367 21:9357: 85        .byte $85	; <E>
- D - I - 0x02D368 21:9358: 18        .byte $18	; <ね>
; продолжение


off_9359:
- D - I - 0x02D369 21:9359: 00        .byte $00
- D - I - 0x02D36A 21:935A: 1C        .byte $1C	; <ふ>
- D - I - 0x02D36B 21:935B: 90        .byte $90	; <U>
- D - I - 0x02D36C 21:935C: 04        .byte $04	; <え>

- D - I - 0x02D36D 21:935D: 00        .byte $00
- D - I - 0x02D36E 21:935E: 18        .byte $18	; <ね>
- D - I - 0x02D36F 21:935F: 90        .byte $90	; <U>
- D - I - 0x02D370 21:9360: 06        .byte $06	; <か>

- D - I - 0x02D371 21:9361: 00        .byte $00
- D - I - 0x02D372 21:9362: 02        .byte $02	; <い>
- D - I - 0x02D373 21:9363: 41        .byte $41	; <ア>
- D - I - 0x02D374 21:9364: 02        .byte $02	; <い>

- D - I - 0x02D375 21:9365: 10        .byte $10	; <た>
- D - I - 0x02D376 21:9366: 03        .byte $03	; <う>
- D - I - 0x02D377 21:9367: 41        .byte $41	; <ア>
- D - I - 0x02D378 21:9368: 08        .byte $08	; <く>
- D - I - 0x02D379 21:9369: 45        .byte $45	; <オ>
- D - I - 0x02D37A 21:936A: 03        .byte $03	; <う>
- D - I - 0x02D37B 21:936B: 84        .byte $84	; <D>
- D - I - 0x02D37C 21:936C: 0C        .byte $0C	; <し>

- D - I - 0x02D37D 21:936D: 28        .byte $28	; <り>
- D - I - 0x02D37E 21:936E: 04        .byte $04	; <え>
- D - I - 0x02D37F 21:936F: 54        .byte $54	; <ト>
- D - I - 0x02D380 21:9370: 37        .byte $37	; <4>
- D - I - 0x02D381 21:9371: 42        .byte $42	; <イ>
- D - I - 0x02D382 21:9372: 0A        .byte $0A	; <こ>
- D - I - 0x02D383 21:9373: 43        .byte $43	; <ウ>
- D - I - 0x02D384 21:9374: 24        .byte $24	; <や>
- D - I - 0x02D385 21:9375: 47        .byte $47	; <キ>
- D - I - 0x02D386 21:9376: 09        .byte $09	; <け>
- D - I - 0x02D387 21:9377: 45        .byte $45	; <オ>
- D - I - 0x02D388 21:9378: 0E        .byte $0E	; <せ>
- D - I - 0x02D389 21:9379: 86        .byte $86	; <F>
- D - I - 0x02D38A 21:937A: 26        .byte $26	; <よ>

- D - I - 0x02D38B 21:937B: 08        .byte $08	; <く>
- D - I - 0x02D38C 21:937C: 05        .byte $05	; <お>
- D - I - 0x02D38D 21:937D: 42        .byte $42	; <イ>
- D - I - 0x02D38E 21:937E: 20        .byte $20	; <み>
- D - I - 0x02D38F 21:937F: 47        .byte $47	; <キ>
- D - I - 0x02D390 21:9380: 0B        .byte $0B	; <さ>

- D - I - 0x02D391 21:9381: 08        .byte $08	; <く>
- D - I - 0x02D392 21:9382: 06        .byte $06	; <か>
- D - I - 0x02D393 21:9383: 41        .byte $41	; <ア>
- D - I - 0x02D394 21:9384: 3C        .byte $3C	; <9>
- D - I - 0x02D395 21:9385: 45        .byte $45	; <オ>
- D - I - 0x02D396 21:9386: 21        .byte $21	; <む>

- D - I - 0x02D397 21:9387: 08        .byte $08	; <く>
- D - I - 0x02D398 21:9388: 07        .byte $07	; <き>
- D - I - 0x02D399 21:9389: 41        .byte $41	; <ア>
- D - I - 0x02D39A 21:938A: 3E        .byte $3E	; <Jr>
- D - I - 0x02D39B 21:938B: 45        .byte $45	; <オ>
- D - I - 0x02D39C 21:938C: 23        .byte $23	; <も>

- D - I - 0x02D39D 21:938D: 08        .byte $08	; <く>
- D - I - 0x02D39E 21:938E: 08        .byte $08	; <く>
- D - I - 0x02D39F 21:938F: 45        .byte $45	; <オ>
- D - I - 0x02D3A0 21:9390: 3D        .byte $3D	; <+>
- D - I - 0x02D3A1 21:9391: 47        .byte $47	; <キ>
- D - I - 0x02D3A2 21:9392: 2C        .byte $2C	; <わ>

- D - I - 0x02D3A3 21:9393: 00        .byte $00
- D - I - 0x02D3A4 21:9394: 09        .byte $09	; <け>
- D - I - 0x02D3A5 21:9395: 47        .byte $47	; <キ>
- D - I - 0x02D3A6 21:9396: 3F        .byte $3F	; <•>

- D - I - 0x02D3A7 21:9397: 01        .byte $01	; <あ>



off_9398_26:
- D - I - 0x02D3A8 21:9398: 18        .byte $18	; <ね>
- D - I - 0x02D3A9 21:9399: 04        .byte $04	; <え>
- D - I - 0x02D3AA 21:939A: E9        .byte $E9
- D - I - 0x02D3AB 21:939B: 2B        .byte $2B	; <ろ>
- D - I - 0x02D3AC 21:939C: ED        .byte $ED
- D - I - 0x02D3AD 21:939D: 2E        .byte $2E	; <ん>
- D - I - 0x02D3AE 21:939E: F1        .byte $F1
- D - I - 0x02D3AF 21:939F: 31        .byte $31	; <ゅ>
- D - I - 0x02D3B0 21:93A0: 9D        .byte $9D
- D - I - 0x02D3B1 21:93A1: 34        .byte $34	; <1>

- D - I - 0x02D3B2 21:93A2: 20        .byte $20	; <み>
- D - I - 0x02D3B3 21:93A3: 05        .byte $05	; <お>
- D - I - 0x02D3B4 21:93A4: E9        .byte $E9
- D - I - 0x02D3B5 21:93A5: 2F        .byte $2F	; <っ>
- D - I - 0x02D3B6 21:93A6: ED        .byte $ED
- D - I - 0x02D3B7 21:93A7: 3A        .byte $3A	; <7>
- D - I - 0x02D3B8 21:93A8: F1        .byte $F1
- D - I - 0x02D3B9 21:93A9: 33        .byte $33	; <0>
- D - I - 0x02D3BA 21:93AA: F2        .byte $F2
- D - I - 0x02D3BB 21:93AB: 3F        .byte $3F	; <•>
- D - I - 0x02D3BC 21:93AC: 9E        .byte $9E
- D - I - 0x02D3BD 21:93AD: 36        .byte $36	; <3>

- D - I - 0x02D3BE 21:93AE: 18        .byte $18	; <ね>
- D - I - 0x02D3BF 21:93AF: 06        .byte $06	; <か>
- D - I - 0x02D3C0 21:93B0: E9        .byte $E9
- D - I - 0x02D3C1 21:93B1: 3B        .byte $3B	; <8>
- D - I - 0x02D3C2 21:93B2: ED        .byte $ED
- D - I - 0x02D3C3 21:93B3: 3E        .byte $3E	; <Jr>
- D - I - 0x02D3C4 21:93B4: F2        .byte $F2
- D - I - 0x02D3C5 21:93B5: 39        .byte $39	; <6>
- D - I - 0x02D3C6 21:93B6: 9E        .byte $9E
- D - I - 0x02D3C7 21:93B7: 3C        .byte $3C	; <9>

- D - I - 0x02D3C8 21:93B8: 00        .byte $00
- D - I - 0x02D3C9 21:93B9: 00        .byte $00
- D - I - 0x02D3CA 21:93BA: 9D        .byte $9D
- D - I - 0x02D3CB 21:93BB: 04        .byte $04	; <え>

- D - I - 0x02D3CC 21:93BC: 10        .byte $10	; <た>
- D - I - 0x02D3CD 21:93BD: 01        .byte $01	; <あ>
- D - I - 0x02D3CE 21:93BE: ED        .byte $ED
- D - I - 0x02D3CF 21:93BF: 02        .byte $02	; <い>
- D - I - 0x02D3D0 21:93C0: F1        .byte $F1
- D - I - 0x02D3D1 21:93C1: 03        .byte $03	; <う>
- D - I - 0x02D3D2 21:93C2: 9D        .byte $9D
- D - I - 0x02D3D3 21:93C3: 06        .byte $06	; <か>

- D - I - 0x02D3D4 21:93C4: 10        .byte $10	; <た>
- D - I - 0x02D3D5 21:93C5: 02        .byte $02	; <い>
- D - I - 0x02D3D6 21:93C6: ED        .byte $ED
- D - I - 0x02D3D7 21:93C7: 08        .byte $08	; <く>
- D - I - 0x02D3D8 21:93C8: F1        .byte $F1
- D - I - 0x02D3D9 21:93C9: 09        .byte $09	; <け>
- D - I - 0x02D3DA 21:93CA: 9D        .byte $9D
- D - I - 0x02D3DB 21:93CB: 0C        .byte $0C	; <し>

- D - I - 0x02D3DC 21:93CC: 00        .byte $00
- D - I - 0x02D3DD 21:93CD: 26        .byte $26	; <よ>
- D - I - 0x02D3DE 21:93CE: E9        .byte $E9
- D - I - 0x02D3DF 21:93CF: 14        .byte $14	; <と>

- D - I - 0x02D3E0 21:93D0: 10        .byte $10	; <た>
- D - I - 0x02D3E1 21:93D1: 03        .byte $03	; <う>
- D - I - 0x02D3E2 21:93D2: ED        .byte $ED
- D - I - 0x02D3E3 21:93D3: 0A        .byte $0A	; <こ>
- D - I - 0x02D3E4 21:93D4: F1        .byte $F1
- D - I - 0x02D3E5 21:93D5: 0B        .byte $0B	; <さ>
- D - I - 0x02D3E6 21:93D6: 9D        .byte $9D
- D - I - 0x02D3E7 21:93D7: 0E        .byte $0E	; <せ>

- D - I - 0x02D3E8 21:93D8: 01        .byte $01	; <あ>



off_93D9_27:
off_93D9:
- D - I - 0x02D3E9 21:93D9: 10        .byte $10	; <た>
- D - I - 0x02D3EA 21:93DA: 00        .byte $00
- D - I - 0x02D3EB 21:93DB: 10        .byte $10	; <た>
- D - I - 0x02D3EC 21:93DC: 15        .byte $15	; <な>
- D - I - 0x02D3ED 21:93DD: 14        .byte $14	; <と>
- D - I - 0x02D3EE 21:93DE: 40        .byte $40	; <「>
- D - I - 0x02D3EF 21:93DF: 18        .byte $18	; <ね>
- D - I - 0x02D3F0 21:93E0: 41        .byte $41	; <ア>

- D - I - 0x02D3F1 21:93E1: 10        .byte $10	; <た>
- D - I - 0x02D3F2 21:93E2: 01        .byte $01	; <あ>
- D - I - 0x02D3F3 21:93E3: 11        .byte $11	; <ち>
- D - I - 0x02D3F4 21:93E4: 17        .byte $17	; <ぬ>
- D - I - 0x02D3F5 21:93E5: 17        .byte $17	; <ぬ>
- D - I - 0x02D3F6 21:93E6: 42        .byte $42	; <イ>
- D - I - 0x02D3F7 21:93E7: 1B        .byte $1B	; <ひ>
- D - I - 0x02D3F8 21:93E8: 43        .byte $43	; <ウ>

- D - I - 0x02D3F9 21:93E9: 10        .byte $10	; <た>
- D - I - 0x02D3FA 21:93EA: 02        .byte $02	; <い>
- D - I - 0x02D3FB 21:93EB: 11        .byte $11	; <ち>
- D - I - 0x02D3FC 21:93EC: 1D        .byte $1D	; <へ>
- D - I - 0x02D3FD 21:93ED: 17        .byte $17	; <ぬ>
- D - I - 0x02D3FE 21:93EE: 48        .byte $48	; <ク>
- D - I - 0x02D3FF 21:93EF: 19        .byte $19	; <の>
- D - I - 0x02D400 21:93F0: 49        .byte $49	; <ケ>
; продолжение


off_93F1:
- D - I - 0x02D401 21:93F1: 00        .byte $00
- D - I - 0x02D402 21:93F2: 0D        .byte $0D	; <す>
- D - I - 0x02D403 21:93F3: 0B        .byte $0B	; <さ>
- D - I - 0x02D404 21:93F4: 4E        .byte $4E	; <セ>

- D - I - 0x02D405 21:93F5: 00        .byte $00
- D - I - 0x02D406 21:93F6: 1C        .byte $1C	; <ふ>
- D - I - 0x02D407 21:93F7: 0B        .byte $0B	; <さ>
- D - I - 0x02D408 21:93F8: 64        .byte $64	; <ヤ>

- D - I - 0x02D409 21:93F9: 00        .byte $00
- D - I - 0x02D40A 21:93FA: 00        .byte $00
- D - I - 0x02D40B 21:93FB: 0F        .byte $0F	; <そ>
- D - I - 0x02D40C 21:93FC: 4F        .byte $4F	; <ソ>

- D - I - 0x02D40D 21:93FD: 08        .byte $08	; <く>
- D - I - 0x02D40E 21:93FE: 01        .byte $01	; <あ>
- D - I - 0x02D40F 21:93FF: 0D        .byte $0D	; <す>
- D - I - 0x02D410 21:9400: 65        .byte $65	; <ユ>
- D - I - 0x02D411 21:9401: 83        .byte $83	; <C>
- D - I - 0x02D412 21:9402: 68        .byte $68	; <リ>

- D - I - 0x02D413 21:9403: 10        .byte $10	; <た>
- D - I - 0x02D414 21:9404: 02        .byte $02	; <い>
- D - I - 0x02D415 21:9405: 0D        .byte $0D	; <す>
- D - I - 0x02D416 21:9406: 67        .byte $67	; <ラ>
- D - I - 0x02D417 21:9407: 83        .byte $83	; <C>
- D - I - 0x02D418 21:9408: 6A        .byte $6A	; <レ>
- D - I - 0x02D419 21:9409: C3        .byte $C3	; <バ>
- D - I - 0x02D41A 21:940A: 69        .byte $69	; <ル>

- D - I - 0x02D41B 21:940B: 28        .byte $28	; <り>
- D - I - 0x02D41C 21:940C: 03        .byte $03	; <う>
- D - I - 0x02D41D 21:940D: 0E        .byte $0E	; <せ>
- D - I - 0x02D41E 21:940E: 6C        .byte $6C	; <ワ>
- D - I - 0x02D41F 21:940F: 0D        .byte $0D	; <す>
- D - I - 0x02D420 21:9410: 6D        .byte $6D	; <ヲ>
- D - I - 0x02D421 21:9411: 11        .byte $11	; <ち>
- D - I - 0x02D422 21:9412: 78        .byte $78	; <?>
- D - I - 0x02D423 21:9413: 15        .byte $15	; <な>
- D - I - 0x02D424 21:9414: 79        .byte $79	; <!>
- D - I - 0x02D425 21:9415: 19        .byte $19	; <の>
- D - I - 0x02D426 21:9416: 7C        .byte $7C	; <~>
- D - I - 0x02D427 21:9417: C3        .byte $C3	; <バ>
- D - I - 0x02D428 21:9418: 6B        .byte $6B	; <ロ>

- D - I - 0x02D429 21:9419: 10        .byte $10	; <た>
- D - I - 0x02D42A 21:941A: 04        .byte $04	; <え>
- D - I - 0x02D42B 21:941B: 59        .byte $59	; <ノ>
- D - I - 0x02D42C 21:941C: 7A        .byte $7A	; <、>
- D - I - 0x02D42D 21:941D: 5E        .byte $5E	; <ホ>
- D - I - 0x02D42E 21:941E: 7B        .byte $7B	; <。>
- D - I - 0x02D42F 21:941F: 62        .byte $62	; <メ>
- D - I - 0x02D430 21:9420: 7E        .byte $7E	; <.>

- D - I - 0x02D431 21:9421: 10        .byte $10	; <た>
- D - I - 0x02D432 21:9422: 05        .byte $05	; <お>
- D - I - 0x02D433 21:9423: 09        .byte $09	; <け>
- D - I - 0x02D434 21:9424: 73        .byte $73	; <ヮ>
- D - I - 0x02D435 21:9425: 0D        .byte $0D	; <す>
- D - I - 0x02D436 21:9426: 70        .byte $70	; <ャ>
- D - I - 0x02D437 21:9427: 11        .byte $11	; <ち>
- D - I - 0x02D438 21:9428: 71        .byte $71	; <ュ>

- D - I - 0x02D439 21:9429: 00        .byte $00
- D - I - 0x02D43A 21:942A: 06        .byte $06	; <か>
- D - I - 0x02D43B 21:942B: 0D        .byte $0D	; <す>
- D - I - 0x02D43C 21:942C: 72        .byte $72	; <ョ>

- D - I - 0x02D43D 21:942D: 00        .byte $00
- D - I - 0x02D43E 21:942E: 1B        .byte $1B	; <ひ>
- D - I - 0x02D43F 21:942F: 05        .byte $05	; <お>
- D - I - 0x02D440 21:9430: 7D        .byte $7D	; <ー>

- D - I - 0x02D441 21:9431: 01        .byte $01	; <あ>



off_9432_28:
- D - I - 0x02D442 21:9432: 00        .byte $00
- D - I - 0x02D443 21:9433: 00        .byte $00
- D - I - 0x02D444 21:9434: A1        .byte $A1	; <ぎ>
- D - I - 0x02D445 21:9435: 04        .byte $04	; <え>

- D - I - 0x02D446 21:9436: 28        .byte $28	; <り>
- D - I - 0x02D447 21:9437: 01        .byte $01	; <あ>
- D - I - 0x02D448 21:9438: F1        .byte $F1
- D - I - 0x02D449 21:9439: 02        .byte $02	; <い>
- D - I - 0x02D44A 21:943A: 9D        .byte $9D
- D - I - 0x02D44B 21:943B: 03        .byte $03	; <う>
- D - I - 0x02D44C 21:943C: A1        .byte $A1	; <ぎ>
- D - I - 0x02D44D 21:943D: 06        .byte $06	; <か>
- D - I - 0x02D44E 21:943E: B5        .byte $B5	; <ギ>
- D - I - 0x02D44F 21:943F: 07        .byte $07	; <き>
- D - I - 0x02D450 21:9440: 69        .byte $69	; <ル>
- D - I - 0x02D451 21:9441: 12        .byte $12	; <つ>
- D - I - 0x02D452 21:9442: 01        .byte $01	; <あ>
- D - I - 0x02D453 21:9443: 13        .byte $13	; <て>

- D - I - 0x02D454 21:9444: 28        .byte $28	; <り>
- D - I - 0x02D455 21:9445: 02        .byte $02	; <い>
- D - I - 0x02D456 21:9446: F1        .byte $F1
- D - I - 0x02D457 21:9447: 08        .byte $08	; <く>
- D - I - 0x02D458 21:9448: 9D        .byte $9D
- D - I - 0x02D459 21:9449: 09        .byte $09	; <け>
- D - I - 0x02D45A 21:944A: A1        .byte $A1	; <ぎ>
- D - I - 0x02D45B 21:944B: 0C        .byte $0C	; <し>
- D - I - 0x02D45C 21:944C: B5        .byte $B5	; <ギ>
- D - I - 0x02D45D 21:944D: 0D        .byte $0D	; <す>
- D - I - 0x02D45E 21:944E: 69        .byte $69	; <ル>
- D - I - 0x02D45F 21:944F: 18        .byte $18	; <ね>
- D - I - 0x02D460 21:9450: 01        .byte $01	; <あ>
- D - I - 0x02D461 21:9451: 19        .byte $19	; <の>

- D - I - 0x02D462 21:9452: 00        .byte $00
- D - I - 0x02D463 21:9453: 26        .byte $26	; <よ>
- D - I - 0x02D464 21:9454: ED        .byte $ED
- D - I - 0x02D465 21:9455: 14        .byte $14	; <と>

- D - I - 0x02D466 21:9456: 00        .byte $00
- D - I - 0x02D467 21:9457: 18        .byte $18	; <ね>
- D - I - 0x02D468 21:9458: 05        .byte $05	; <お>
- D - I - 0x02D469 21:9459: 1C        .byte $1C	; <ふ>

- D - I - 0x02D46A 21:945A: 28        .byte $28	; <り>
- D - I - 0x02D46B 21:945B: 03        .byte $03	; <う>
- D - I - 0x02D46C 21:945C: F1        .byte $F1
- D - I - 0x02D46D 21:945D: 0A        .byte $0A	; <こ>
- D - I - 0x02D46E 21:945E: 9D        .byte $9D
- D - I - 0x02D46F 21:945F: 0B        .byte $0B	; <さ>
- D - I - 0x02D470 21:9460: A1        .byte $A1	; <ぎ>
- D - I - 0x02D471 21:9461: 0E        .byte $0E	; <せ>
- D - I - 0x02D472 21:9462: B5        .byte $B5	; <ギ>
- D - I - 0x02D473 21:9463: 0F        .byte $0F	; <そ>
- D - I - 0x02D474 21:9464: 69        .byte $69	; <ル>
- D - I - 0x02D475 21:9465: 1A        .byte $1A	; <は>
- D - I - 0x02D476 21:9466: 01        .byte $01	; <あ>
- D - I - 0x02D477 21:9467: 1B        .byte $1B	; <ひ>

- D - I - 0x02D478 21:9468: 28        .byte $28	; <り>
- D - I - 0x02D479 21:9469: 04        .byte $04	; <え>
- D - I - 0x02D47A 21:946A: ED        .byte $ED
- D - I - 0x02D47B 21:946B: 05        .byte $05	; <お>
- D - I - 0x02D47C 21:946C: F1        .byte $F1
- D - I - 0x02D47D 21:946D: 20        .byte $20	; <み>
- D - I - 0x02D47E 21:946E: 9D        .byte $9D
- D - I - 0x02D47F 21:946F: 21        .byte $21	; <む>
- D - I - 0x02D480 21:9470: A1        .byte $A1	; <ぎ>
- D - I - 0x02D481 21:9471: 24        .byte $24	; <や>
- D - I - 0x02D482 21:9472: B5        .byte $B5	; <ギ>
- D - I - 0x02D483 21:9473: 25        .byte $25	; <ゆ>
- D - I - 0x02D484 21:9474: 69        .byte $69	; <ル>
- D - I - 0x02D485 21:9475: 30        .byte $30	; <ゃ>

- D - I - 0x02D486 21:9476: 28        .byte $28	; <り>
- D - I - 0x02D487 21:9477: 05        .byte $05	; <お>
- D - I - 0x02D488 21:9478: E9        .byte $E9
- D - I - 0x02D489 21:9479: 10        .byte $10	; <た>
- D - I - 0x02D48A 21:947A: ED        .byte $ED
- D - I - 0x02D48B 21:947B: 22        .byte $22	; <め>
- D - I - 0x02D48C 21:947C: F1        .byte $F1
- D - I - 0x02D48D 21:947D: 23        .byte $23	; <も>
- D - I - 0x02D48E 21:947E: 9E        .byte $9E
- D - I - 0x02D48F 21:947F: 26        .byte $26	; <よ>
- D - I - 0x02D490 21:9480: A2        .byte $A2	; <ぐ>
- D - I - 0x02D491 21:9481: 27        .byte $27	; <ら>
- D - I - 0x02D492 21:9482: B5        .byte $B5	; <ギ>
- D - I - 0x02D493 21:9483: 32        .byte $32	; <ょ>

- D - I - 0x02D494 21:9484: 30        .byte $30	; <ゃ>
- D - I - 0x02D495 21:9485: 06        .byte $06	; <か>
- D - I - 0x02D496 21:9486: E9        .byte $E9
- D - I - 0x02D497 21:9487: 11        .byte $11	; <ち>
- D - I - 0x02D498 21:9488: ED        .byte $ED
- D - I - 0x02D499 21:9489: 28        .byte $28	; <り>
- D - I - 0x02D49A 21:948A: F1        .byte $F1
- D - I - 0x02D49B 21:948B: 29        .byte $29	; <る>
- D - I - 0x02D49C 21:948C: F2        .byte $F2
- D - I - 0x02D49D 21:948D: 2A        .byte $2A	; <れ>
- D - I - 0x02D49E 21:948E: 9E        .byte $9E
- D - I - 0x02D49F 21:948F: 2C        .byte $2C	; <わ>
- D - I - 0x02D4A0 21:9490: A2        .byte $A2	; <ぐ>
- D - I - 0x02D4A1 21:9491: 2D        .byte $2D	; <を>
- D - I - 0x02D4A2 21:9492: B5        .byte $B5	; <ギ>
- D - I - 0x02D4A3 21:9493: 38        .byte $38	; <5>

- D - I - 0x02D4A4 21:9494: 01        .byte $01	; <あ>



off_9495_29:
- D - I - 0x02D4A5 21:9495: 00        .byte $00
- D - I - 0x02D4A6 21:9496: 02        .byte $02	; <い>
- D - I - 0x02D4A7 21:9497: C3        .byte $C3	; <バ>
- D - I - 0x02D4A8 21:9498: 6E        .byte $6E	; <ン>

- D - I - 0x02D4A9 21:9499: 10        .byte $10	; <た>
- D - I - 0x02D4AA 21:949A: 03        .byte $03	; <う>
- D - I - 0x02D4AB 21:949B: C3        .byte $C3	; <バ>
- D - I - 0x02D4AC 21:949C: 6F        .byte $6F	; <ッ>
- D - I - 0x02D4AD 21:949D: C7        .byte $C7	; <ボ>
- D - I - 0x02D4AE 21:949E: 51        .byte $51	; <チ>
- D - I - 0x02D4AF 21:949F: CB        .byte $CB	; <ぺ>
- D - I - 0x02D4B0 21:94A0: 54        .byte $54	; <ト>

- D - I - 0x02D4B1 21:94A1: 20        .byte $20	; <み>
- D - I - 0x02D4B2 21:94A2: 04        .byte $04	; <え>
- D - I - 0x02D4B3 21:94A3: C5        .byte $C5	; <ブ>
- D - I - 0x02D4B4 21:94A4: 53        .byte $53	; <テ>
- D - I - 0x02D4B5 21:94A5: C9        .byte $C9	; <ぴ>
- D - I - 0x02D4B6 21:94A6: 56        .byte $56	; <ニ>
- D - I - 0x02D4B7 21:94A7: CD        .byte $CD	; <パ>
- D - I - 0x02D4B8 21:94A8: 57        .byte $57	; <ヌ>
- D - I - 0x02D4B9 21:94A9: D1        .byte $D1	; <ポ>
- D - I - 0x02D4BA 21:94AA: 74        .byte $74	; <ィ>
- D - I - 0x02D4BB 21:94AB: D5        .byte $D5
- D - I - 0x02D4BC 21:94AC: 75        .byte $75	; <ェ>

- D - I - 0x02D4BD 21:94AD: 18        .byte $18	; <ね>
- D - I - 0x02D4BE 21:94AE: 05        .byte $05	; <お>
- D - I - 0x02D4BF 21:94AF: A5        .byte $A5	; <ざ>
- D - I - 0x02D4C0 21:94B0: 59        .byte $59	; <ノ>
- D - I - 0x02D4C1 21:94B1: A9        .byte $A9	; <ぞ>
- D - I - 0x02D4C2 21:94B2: 5C        .byte $5C	; <フ>
- D - I - 0x02D4C3 21:94B3: AF        .byte $AF	; <ば>
- D - I - 0x02D4C4 21:94B4: 5D        .byte $5D	; <ヘ>
- D - I - 0x02D4C5 21:94B5: B3        .byte $B3	; <ぼ>
- D - I - 0x02D4C6 21:94B6: 55        .byte $55	; <ナ>

- D - I - 0x02D4C7 21:94B7: 18        .byte $18	; <ね>
- D - I - 0x02D4C8 21:94B8: 06        .byte $06	; <か>
- D - I - 0x02D4C9 21:94B9: C6        .byte $C6	; <ベ>
- D - I - 0x02D4CA 21:94BA: 5A        .byte $5A	; <ハ>
- D - I - 0x02D4CB 21:94BB: C9        .byte $C9	; <ぴ>
- D - I - 0x02D4CC 21:94BC: 5B        .byte $5B	; <ヒ>
- D - I - 0x02D4CD 21:94BD: CD        .byte $CD	; <パ>
- D - I - 0x02D4CE 21:94BE: 5E        .byte $5E	; <ホ>
- D - I - 0x02D4CF 21:94BF: D1        .byte $D1	; <ポ>
- D - I - 0x02D4D0 21:94C0: 5F        .byte $5F	; <マ>

- D - I - 0x02D4D1 21:94C1: 28        .byte $28	; <り>
- D - I - 0x02D4D2 21:94C2: 07        .byte $07	; <き>
- D - I - 0x02D4D3 21:94C3: C1        .byte $C1	; <デ>
- D - I - 0x02D4D4 21:94C4: 16        .byte $16	; <に>
- D - I - 0x02D4D5 21:94C5: C6        .byte $C6	; <ベ>
- D - I - 0x02D4D6 21:94C6: 66        .byte $66	; <ヨ>
- D - I - 0x02D4D7 21:94C7: C9        .byte $C9	; <ぴ>
- D - I - 0x02D4D8 21:94C8: 84        .byte $84	; <D>
- D - I - 0x02D4D9 21:94C9: CA        .byte $CA	; <ぷ>
- D - I - 0x02D4DA 21:94CA: 77        .byte $77	; <:>
- D - I - 0x02D4DB 21:94CB: CD        .byte $CD	; <パ>
- D - I - 0x02D4DC 21:94CC: 85        .byte $85	; <E>
- D - I - 0x02D4DD 21:94CD: D1        .byte $D1	; <ポ>
- D - I - 0x02D4DE 21:94CE: 7F        .byte $7F	; <,>

- D - I - 0x02D4DF 21:94CF: 30        .byte $30	; <ゃ>
- D - I - 0x02D4E0 21:94D0: 08        .byte $08	; <く>
- D - I - 0x02D4E1 21:94D1: 81        .byte $81	; <A>
- D - I - 0x02D4E2 21:94D2: 82        .byte $82	; <B>
- D - I - 0x02D4E3 21:94D3: C1        .byte $C1	; <デ>
- D - I - 0x02D4E4 21:94D4: 88        .byte $88	; <H>
- D - I - 0x02D4E5 21:94D5: C5        .byte $C5	; <ブ>
- D - I - 0x02D4E6 21:94D6: 89        .byte $89	; <I>
- D - I - 0x02D4E7 21:94D7: C6        .byte $C6	; <ベ>
- D - I - 0x02D4E8 21:94D8: 76        .byte $76	; <ォ>
- D - I - 0x02D4E9 21:94D9: CA        .byte $CA	; <ぷ>
- D - I - 0x02D4EA 21:94DA: 1E        .byte $1E	; <ほ>
- D - I - 0x02D4EB 21:94DB: CE        .byte $CE	; <ピ>
- D - I - 0x02D4EC 21:94DC: 83        .byte $83	; <C>
- D - I - 0x02D4ED 21:94DD: D2        .byte $D2
- D - I - 0x02D4EE 21:94DE: 86        .byte $86	; <F>

- D - I - 0x02D4EF 21:94DF: 08        .byte $08	; <く>
- D - I - 0x02D4F0 21:94E0: 09        .byte $09	; <け>
- D - I - 0x02D4F1 21:94E1: C1        .byte $C1	; <デ>
- D - I - 0x02D4F2 21:94E2: 8A        .byte $8A	; <N>
- D - I - 0x02D4F3 21:94E3: C5        .byte $C5	; <ブ>
- D - I - 0x02D4F4 21:94E4: 8B        .byte $8B	; <K>

- D - I - 0x02D4F5 21:94E5: 02        .byte $02	; <い>
- D - I - 0x02D4F6 21:94E6: D9 93     .word off_93D9



off_94E8_2A:
- D - I - 0x02D4F8 21:94E8: 10        .byte $10	; <た>
- D - I - 0x02D4F9 21:94E9: 00        .byte $00
- D - I - 0x02D4FA 21:94EA: 10        .byte $10	; <た>
- D - I - 0x02D4FB 21:94EB: 1F        .byte $1F	; <ま>
- D - I - 0x02D4FC 21:94EC: 14        .byte $14	; <と>
- D - I - 0x02D4FD 21:94ED: 4A        .byte $4A	; <コ>
- D - I - 0x02D4FE 21:94EE: 18        .byte $18	; <ね>
- D - I - 0x02D4FF 21:94EF: 4B        .byte $4B	; <サ>

- D - I - 0x02D500 21:94F0: 18        .byte $18	; <ね>
- D - I - 0x02D501 21:94F1: 01        .byte $01	; <あ>
- D - I - 0x02D502 21:94F2: 11        .byte $11	; <ち>
- D - I - 0x02D503 21:94F3: 3D        .byte $3D	; <+>
- D - I - 0x02D504 21:94F4: 10        .byte $10	; <た>
- D - I - 0x02D505 21:94F5: 35        .byte $35	; <2>
- D - I - 0x02D506 21:94F6: 14        .byte $14	; <と>
- D - I - 0x02D507 21:94F7: 60        .byte $60	; <ミ>
- D - I - 0x02D508 21:94F8: 18        .byte $18	; <ね>
- D - I - 0x02D509 21:94F9: 61        .byte $61	; <ム>

- D - I - 0x02D50A 21:94FA: 10        .byte $10	; <た>
- D - I - 0x02D50B 21:94FB: 02        .byte $02	; <い>
- D - I - 0x02D50C 21:94FC: 11        .byte $11	; <ち>
- D - I - 0x02D50D 21:94FD: 37        .byte $37	; <4>
- D - I - 0x02D50E 21:94FE: 15        .byte $15	; <な>
- D - I - 0x02D50F 21:94FF: 62        .byte $62	; <メ>
- D - I - 0x02D510 21:9500: 19        .byte $19	; <の>
- D - I - 0x02D511 21:9501: 63        .byte $63	; <モ>

- D - I - 0x02D512 21:9502: 02        .byte $02	; <い>
- D - I - 0x02D513 21:9503: F1 93     .word off_93F1



off_9505_2B:
- D - I - 0x02D515 21:9505: 10        .byte $10	; <た>
- D - I - 0x02D516 21:9506: 00        .byte $00
- D - I - 0x02D517 21:9507: 10        .byte $10	; <た>
- D - I - 0x02D518 21:9508: 44        .byte $44	; <エ>
- D - I - 0x02D519 21:9509: 14        .byte $14	; <と>
- D - I - 0x02D51A 21:950A: 45        .byte $45	; <オ>
- D - I - 0x02D51B 21:950B: 18        .byte $18	; <ね>
- D - I - 0x02D51C 21:950C: 50        .byte $50	; <タ>

- D - I - 0x02D51D 21:950D: 10        .byte $10	; <た>
- D - I - 0x02D51E 21:950E: 01        .byte $01	; <あ>
- D - I - 0x02D51F 21:950F: 11        .byte $11	; <ち>
- D - I - 0x02D520 21:9510: 46        .byte $46	; <カ>
- D - I - 0x02D521 21:9511: 17        .byte $17	; <ぬ>
- D - I - 0x02D522 21:9512: 47        .byte $47	; <キ>
- D - I - 0x02D523 21:9513: 18        .byte $18	; <ね>
- D - I - 0x02D524 21:9514: 52        .byte $52	; <ツ>

- D - I - 0x02D525 21:9515: 10        .byte $10	; <た>
- D - I - 0x02D526 21:9516: 02        .byte $02	; <い>
- D - I - 0x02D527 21:9517: 11        .byte $11	; <ち>
- D - I - 0x02D528 21:9518: 4C        .byte $4C	; <シ>
- D - I - 0x02D529 21:9519: 15        .byte $15	; <な>
- D - I - 0x02D52A 21:951A: 4D        .byte $4D	; <ス>
- D - I - 0x02D52B 21:951B: 19        .byte $19	; <の>
- D - I - 0x02D52C 21:951C: 58        .byte $58	; <ネ>

- D - I - 0x02D52D 21:951D: 02        .byte $02	; <い>
- D - I - 0x02D52E 21:951E: F1 93     .word off_93F1



off_9520_2C:
- D - I - 0x02D530 21:9520: 00        .byte $00
- D - I - 0x02D531 21:9521: 09        .byte $09	; <け>
- D - I - 0x02D532 21:9522: 17        .byte $17	; <ぬ>
- D - I - 0x02D533 21:9523: 69        .byte $69	; <ル>

- D - I - 0x02D534 21:9524: 08        .byte $08	; <く>
- D - I - 0x02D535 21:9525: 16        .byte $16	; <に>
- D - I - 0x02D536 21:9526: 0F        .byte $0F	; <そ>
- D - I - 0x02D537 21:9527: 3F        .byte $3F	; <•>
- D - I - 0x02D538 21:9528: 13        .byte $13	; <て>
- D - I - 0x02D539 21:9529: 6A        .byte $6A	; <レ>
; продолжение


off_952A:
- D - I - 0x02D53A 21:952A: 03        .byte $03	; <う>
- D - I - 0x02D53B 21:952B: 43 95     .word off_9543
- - - - - 0x02D53D 21:952D: C2 95     .word off_95C2
- D - I - 0x02D53F 21:952F: E1 95     .word off_95E1
- D - I - 0x02D541 21:9531: FA 95     .word off_95FA
- - - - - 0x02D543 21:9533: 13 96     .word off_9613
- - - - - 0x02D545 21:9535: 43 95     .word off_9543
- - - - - 0x02D547 21:9537: 43 95     .word off_9543
- D - I - 0x02D549 21:9539: 28 96     .word off_9628
- - - - - 0x02D54B 21:953B: 43 95     .word off_9543
- - - - - 0x02D54D 21:953D: 43 95     .word off_9543
- D - I - 0x02D54F 21:953F: 43 95     .word off_9543
- - - - - 0x02D551 21:9541: 43 95     .word off_9543



off_9543:
- D - I - 0x02D553 21:9543: 08        .byte $08	; <く>
- D - I - 0x02D554 21:9544: 02        .byte $02	; <い>
- D - I - 0x02D555 21:9545: CC        .byte $CC	; <ぽ>
- D - I - 0x02D556 21:9546: 07        .byte $07	; <き>
- D - I - 0x02D557 21:9547: D0        .byte $D0	; <ペ>
- D - I - 0x02D558 21:9548: 12        .byte $12	; <つ>

- D - I - 0x02D559 21:9549: 10        .byte $10	; <た>
- D - I - 0x02D55A 21:954A: 03        .byte $03	; <う>
- D - I - 0x02D55B 21:954B: C8        .byte $C8	; <ぱ>
- D - I - 0x02D55C 21:954C: 0C        .byte $0C	; <し>
- D - I - 0x02D55D 21:954D: CC        .byte $CC	; <ぽ>
- D - I - 0x02D55E 21:954E: 0D        .byte $0D	; <す>
- D - I - 0x02D55F 21:954F: D0        .byte $D0	; <ペ>
- D - I - 0x02D560 21:9550: 18        .byte $18	; <ね>

- D - I - 0x02D561 21:9551: 08        .byte $08	; <く>
- D - I - 0x02D562 21:9552: 04        .byte $04	; <え>
- D - I - 0x02D563 21:9553: CF        .byte $CF	; <プ>
- D - I - 0x02D564 21:9554: 0F        .byte $0F	; <そ>
- D - I - 0x02D565 21:9555: D0        .byte $D0	; <ペ>
- D - I - 0x02D566 21:9556: 1A        .byte $1A	; <は>
; продолжение


off_9557:
- D - I - 0x02D567 21:9557: 08        .byte $08	; <く>
- D - I - 0x02D568 21:9558: 02        .byte $02	; <い>
- D - I - 0x02D569 21:9559: C9        .byte $C9	; <ぴ>
- D - I - 0x02D56A 21:955A: 40        .byte $40	; <「>
- D - I - 0x02D56B 21:955B: CD        .byte $CD	; <パ>
- D - I - 0x02D56C 21:955C: 41        .byte $41	; <ア>

- D - I - 0x02D56D 21:955D: 00        .byte $00
- D - I - 0x02D56E 21:955E: 03        .byte $03	; <う>
- D - I - 0x02D56F 21:955F: C9        .byte $C9	; <ぴ>
- D - I - 0x02D570 21:9560: 42        .byte $42	; <イ>

- D - I - 0x02D571 21:9561: 08        .byte $08	; <く>
- D - I - 0x02D572 21:9562: 04        .byte $04	; <え>
- D - I - 0x02D573 21:9563: D1        .byte $D1	; <ポ>
- D - I - 0x02D574 21:9564: 51        .byte $51	; <チ>
- D - I - 0x02D575 21:9565: D5        .byte $D5
- D - I - 0x02D576 21:9566: 54        .byte $54	; <ト>
; продолжение


off_9567:
- D - I - 0x02D577 21:9567: 08        .byte $08	; <く>
- D - I - 0x02D578 21:9568: 00        .byte $00
- D - I - 0x02D579 21:9569: C3        .byte $C3	; <バ>
- D - I - 0x02D57A 21:956A: 66        .byte $66	; <ヨ>
- D - I - 0x02D57B 21:956B: C6        .byte $C6	; <ベ>
- D - I - 0x02D57C 21:956C: 67        .byte $67	; <ラ>

- D - I - 0x02D57D 21:956D: 08        .byte $08	; <く>
- D - I - 0x02D57E 21:956E: 01        .byte $01	; <あ>
- D - I - 0x02D57F 21:956F: C7        .byte $C7	; <ボ>
- D - I - 0x02D580 21:9570: 6D        .byte $6D	; <ヲ>
- D - I - 0x02D581 21:9571: CB        .byte $CB	; <ぺ>
- D - I - 0x02D582 21:9572: 78        .byte $78	; <?>

- D - I - 0x02D583 21:9573: 00        .byte $00
- D - I - 0x02D584 21:9574: 02        .byte $02	; <い>
- D - I - 0x02D585 21:9575: C7        .byte $C7	; <ボ>
- D - I - 0x02D586 21:9576: 6F        .byte $6F	; <ッ>

- D - I - 0x02D587 21:9577: 18        .byte $18	; <ね>
- D - I - 0x02D588 21:9578: 04        .byte $04	; <え>
- D - I - 0x02D589 21:9579: C6        .byte $C6	; <ベ>
- D - I - 0x02D58A 21:957A: 44        .byte $44	; <エ>
- D - I - 0x02D58B 21:957B: C9        .byte $C9	; <ぴ>
- D - I - 0x02D58C 21:957C: 45        .byte $45	; <オ>
- D - I - 0x02D58D 21:957D: CD        .byte $CD	; <パ>
- D - I - 0x02D58E 21:957E: 50        .byte $50	; <タ>
- D - I - 0x02D58F 21:957F: DB        .byte $DB
- D - I - 0x02D590 21:9580: 55        .byte $55	; <ナ>

- D - I - 0x02D591 21:9581: 38        .byte $38	; <5>
- D - I - 0x02D592 21:9582: 05        .byte $05	; <お>
- D - I - 0x02D593 21:9583: C3        .byte $C3	; <バ>
- D - I - 0x02D594 21:9584: 43        .byte $43	; <ウ>
- D - I - 0x02D595 21:9585: C6        .byte $C6	; <ベ>
- D - I - 0x02D596 21:9586: 46        .byte $46	; <カ>
- D - I - 0x02D597 21:9587: C9        .byte $C9	; <ぴ>
- D - I - 0x02D598 21:9588: 47        .byte $47	; <キ>
- D - I - 0x02D599 21:9589: CA        .byte $CA	; <ぷ>
- D - I - 0x02D59A 21:958A: 50        .byte $50	; <タ>
- D - I - 0x02D59B 21:958B: CD        .byte $CD	; <パ>
- D - I - 0x02D59C 21:958C: 52        .byte $52	; <ツ>
- D - I - 0x02D59D 21:958D: D1        .byte $D1	; <ポ>
- D - I - 0x02D59E 21:958E: 53        .byte $53	; <テ>
- D - I - 0x02D59F 21:958F: D7        .byte $D7
- D - I - 0x02D5A0 21:9590: 56        .byte $56	; <ニ>
- D - I - 0x02D5A1 21:9591: DB        .byte $DB
- D - I - 0x02D5A2 21:9592: 57        .byte $57	; <ヌ>

- D - I - 0x02D5A3 21:9593: 30        .byte $30	; <ゃ>
- D - I - 0x02D5A4 21:9594: 06        .byte $06	; <か>
- D - I - 0x02D5A5 21:9595: 19        .byte $19	; <の>
- D - I - 0x02D5A6 21:9596: 1D        .byte $1D	; <へ>
- D - I - 0x02D5A7 21:9597: 81        .byte $81	; <A>
- D - I - 0x02D5A8 21:9598: 48        .byte $48	; <ク>
- D - I - 0x02D5A9 21:9599: C3        .byte $C3	; <バ>
- D - I - 0x02D5AA 21:959A: 49        .byte $49	; <ケ>
- D - I - 0x02D5AB 21:959B: C7        .byte $C7	; <ボ>
- D - I - 0x02D5AC 21:959C: 4C        .byte $4C	; <シ>
- D - I - 0x02D5AD 21:959D: CA        .byte $CA	; <ぷ>
- D - I - 0x02D5AE 21:959E: 4D        .byte $4D	; <ス>
- D - I - 0x02D5AF 21:959F: CE        .byte $CE	; <ピ>
- D - I - 0x02D5B0 21:95A0: 58        .byte $58	; <ネ>
- D - I - 0x02D5B1 21:95A1: D2        .byte $D2
- D - I - 0x02D5B2 21:95A2: 59        .byte $59	; <ノ>

- D - I - 0x02D5B3 21:95A3: 20        .byte $20	; <み>
- D - I - 0x02D5B4 21:95A4: 07        .byte $07	; <き>
- D - I - 0x02D5B5 21:95A5: 15        .byte $15	; <な>
- D - I - 0x02D5B6 21:95A6: 61        .byte $61	; <ム>
- D - I - 0x02D5B7 21:95A7: 19        .byte $19	; <の>
- D - I - 0x02D5B8 21:95A8: 1F        .byte $1F	; <ま>
- D - I - 0x02D5B9 21:95A9: 81        .byte $81	; <A>
- D - I - 0x02D5BA 21:95AA: 4A        .byte $4A	; <コ>
- D - I - 0x02D5BB 21:95AB: CB        .byte $CB	; <ぺ>
- D - I - 0x02D5BC 21:95AC: 4F        .byte $4F	; <ソ>
- D - I - 0x02D5BD 21:95AD: CF        .byte $CF	; <プ>
- D - I - 0x02D5BE 21:95AE: 5A        .byte $5A	; <ハ>

- D - I - 0x02D5BF 21:95AF: 20        .byte $20	; <み>
- D - I - 0x02D5C0 21:95B0: 08        .byte $08	; <く>
- D - I - 0x02D5C1 21:95B1: 0F        .byte $0F	; <そ>
- D - I - 0x02D5C2 21:95B2: 37        .byte $37	; <4>
- D - I - 0x02D5C3 21:95B3: 13        .byte $13	; <て>
- D - I - 0x02D5C4 21:95B4: 62        .byte $62	; <メ>
- D - I - 0x02D5C5 21:95B5: 15        .byte $15	; <な>
- D - I - 0x02D5C6 21:95B6: 63        .byte $63	; <モ>
- D - I - 0x02D5C7 21:95B7: 19        .byte $19	; <の>
- D - I - 0x02D5C8 21:95B8: 35        .byte $35	; <2>
- D - I - 0x02D5C9 21:95B9: CB        .byte $CB	; <ぺ>
- D - I - 0x02D5CA 21:95BA: 65        .byte $65	; <ユ>

- D - I - 0x02D5CB 21:95BB: 08        .byte $08	; <く>
- D - I - 0x02D5CC 21:95BC: 09        .byte $09	; <け>
- D - I - 0x02D5CD 21:95BD: 0F        .byte $0F	; <そ>
- D - I - 0x02D5CE 21:95BE: 3D        .byte $3D	; <+>
- D - I - 0x02D5CF 21:95BF: 13        .byte $13	; <て>
- D - I - 0x02D5D0 21:95C0: 68        .byte $68	; <リ>

- D - I - 0x02D5D1 21:95C1: 01        .byte $01	; <あ>



off_95C2:
- - - - - 0x02D5D2 21:95C2: 00        .byte $00
- - - - - 0x02D5D3 21:95C3: 01        .byte $01	; <あ>
- - - - - 0x02D5D4 21:95C4: D4        .byte $D4
- - - - - 0x02D5D5 21:95C5: 10        .byte $10	; <た>

- - - - - 0x02D5D6 21:95C6: 10        .byte $10	; <た>
- - - - - 0x02D5D7 21:95C7: 02        .byte $02	; <い>
- - - - - 0x02D5D8 21:95C8: CC        .byte $CC	; <ぽ>
- - - - - 0x02D5D9 21:95C9: 11        .byte $11	; <ち>
- - - - - 0x02D5DA 21:95CA: D0        .byte $D0	; <ペ>
- - - - - 0x02D5DB 21:95CB: 14        .byte $14	; <と>
- - - - - 0x02D5DC 21:95CC: D4        .byte $D4
- - - - - 0x02D5DD 21:95CD: 15        .byte $15	; <な>

- - - - - 0x02D5DE 21:95CE: 18        .byte $18	; <ね>
- - - - - 0x02D5DF 21:95CF: 03        .byte $03	; <う>
- - - - - 0x02D5E0 21:95D0: C8        .byte $C8	; <ぱ>
- - - - - 0x02D5E1 21:95D1: 0C        .byte $0C	; <し>
- - - - - 0x02D5E2 21:95D2: CC        .byte $CC	; <ぽ>
- - - - - 0x02D5E3 21:95D3: 13        .byte $13	; <て>
- - - - - 0x02D5E4 21:95D4: D0        .byte $D0	; <ペ>
- - - - - 0x02D5E5 21:95D5: 16        .byte $16	; <に>
- - - - - 0x02D5E6 21:95D6: D4        .byte $D4
- - - - - 0x02D5E7 21:95D7: 17        .byte $17	; <ぬ>

- - - - - 0x02D5E8 21:95D8: 08        .byte $08	; <く>
- - - - - 0x02D5E9 21:95D9: 04        .byte $04	; <え>
- - - - - 0x02D5EA 21:95DA: CF        .byte $CF	; <プ>
- - - - - 0x02D5EB 21:95DB: 19        .byte $19	; <の>
- - - - - 0x02D5EC 21:95DC: D0        .byte $D0	; <ペ>
- - - - - 0x02D5ED 21:95DD: 1C        .byte $1C	; <ふ>

- - - - - 0x02D5EE 21:95DE: 02        .byte $02	; <い>
- - - - - 0x02D5EF 21:95DF: 57 95     .word off_9557



off_95E1:
- D - I - 0x02D5F1 21:95E1: 08        .byte $08	; <く>
- D - I - 0x02D5F2 21:95E2: 02        .byte $02	; <い>
- D - I - 0x02D5F3 21:95E3: CC        .byte $CC	; <ぽ>
- D - I - 0x02D5F4 21:95E4: 20        .byte $20	; <み>
- D - I - 0x02D5F5 21:95E5: D0        .byte $D0	; <ペ>
- D - I - 0x02D5F6 21:95E6: 21        .byte $21	; <む>

- D - I - 0x02D5F7 21:95E7: 18        .byte $18	; <ね>
- D - I - 0x02D5F8 21:95E8: 03        .byte $03	; <う>
- D - I - 0x02D5F9 21:95E9: C8        .byte $C8	; <ぱ>
- D - I - 0x02D5FA 21:95EA: 0E        .byte $0E	; <せ>
- D - I - 0x02D5FB 21:95EB: CC        .byte $CC	; <ぽ>
- D - I - 0x02D5FC 21:95EC: 22        .byte $22	; <め>
- D - I - 0x02D5FD 21:95ED: D0        .byte $D0	; <ペ>
- D - I - 0x02D5FE 21:95EE: 23        .byte $23	; <も>
- D - I - 0x02D5FF 21:95EF: D4        .byte $D4
- D - I - 0x02D600 21:95F0: 26        .byte $26	; <よ>

- D - I - 0x02D601 21:95F1: 08        .byte $08	; <く>
- D - I - 0x02D602 21:95F2: 04        .byte $04	; <え>
- D - I - 0x02D603 21:95F3: CF        .byte $CF	; <プ>
- D - I - 0x02D604 21:95F4: 0F        .byte $0F	; <そ>
- D - I - 0x02D605 21:95F5: D0        .byte $D0	; <ペ>
- D - I - 0x02D606 21:95F6: 1A        .byte $1A	; <は>

- D - I - 0x02D607 21:95F7: 02        .byte $02	; <い>
- D - I - 0x02D608 21:95F8: 57 95     .word off_9557



off_95FA:
- D - I - 0x02D60A 21:95FA: 08        .byte $08	; <く>
- D - I - 0x02D60B 21:95FB: 02        .byte $02	; <い>
- D - I - 0x02D60C 21:95FC: CC        .byte $CC	; <ぽ>
- D - I - 0x02D60D 21:95FD: 20        .byte $20	; <み>
- D - I - 0x02D60E 21:95FE: D0        .byte $D0	; <ペ>
- D - I - 0x02D60F 21:95FF: 21        .byte $21	; <む>

- D - I - 0x02D610 21:9600: 18        .byte $18	; <ね>
- D - I - 0x02D611 21:9601: 03        .byte $03	; <う>
- D - I - 0x02D612 21:9602: C8        .byte $C8	; <ぱ>
- D - I - 0x02D613 21:9603: 0E        .byte $0E	; <せ>
- D - I - 0x02D614 21:9604: CC        .byte $CC	; <ぽ>
- D - I - 0x02D615 21:9605: 29        .byte $29	; <る>
- D - I - 0x02D616 21:9606: D0        .byte $D0	; <ペ>
- D - I - 0x02D617 21:9607: 23        .byte $23	; <も>
- D - I - 0x02D618 21:9608: D4        .byte $D4
- D - I - 0x02D619 21:9609: 26        .byte $26	; <よ>

- D - I - 0x02D61A 21:960A: 08        .byte $08	; <く>
- D - I - 0x02D61B 21:960B: 04        .byte $04	; <え>
- D - I - 0x02D61C 21:960C: CF        .byte $CF	; <プ>
- D - I - 0x02D61D 21:960D: 2B        .byte $2B	; <ろ>
- D - I - 0x02D61E 21:960E: D0        .byte $D0	; <ペ>
- D - I - 0x02D61F 21:960F: 1A        .byte $1A	; <は>

- D - I - 0x02D620 21:9610: 02        .byte $02	; <い>
- D - I - 0x02D621 21:9611: 57 95     .word off_9557



off_9613:
- - - - - 0x02D623 21:9613: 00        .byte $00
- - - - - 0x02D624 21:9614: 02        .byte $02	; <い>
- - - - - 0x02D625 21:9615: CC        .byte $CC	; <ぽ>
- - - - - 0x02D626 21:9616: 3A        .byte $3A	; <7>

- - - - - 0x02D627 21:9617: 10        .byte $10	; <た>
- - - - - 0x02D628 21:9618: 03        .byte $03	; <う>
- - - - - 0x02D629 21:9619: C8        .byte $C8	; <ぱ>
- - - - - 0x02D62A 21:961A: 38        .byte $38	; <5>
- - - - - 0x02D62B 21:961B: CC        .byte $CC	; <ぽ>
- - - - - 0x02D62C 21:961C: 2C        .byte $2C	; <わ>
- - - - - 0x02D62D 21:961D: D0        .byte $D0	; <ペ>
- - - - - 0x02D62E 21:961E: 2D        .byte $2D	; <を>

- - - - - 0x02D62F 21:961F: 08        .byte $08	; <く>
- - - - - 0x02D630 21:9620: 04        .byte $04	; <え>
- - - - - 0x02D631 21:9621: CF        .byte $CF	; <プ>
- - - - - 0x02D632 21:9622: 2E        .byte $2E	; <ん>
- - - - - 0x02D633 21:9623: D0        .byte $D0	; <ペ>
- - - - - 0x02D634 21:9624: 2F        .byte $2F	; <っ>

- - - - - 0x02D635 21:9625: 02        .byte $02	; <い>
- - - - - 0x02D636 21:9626: 57 95     .word off_9557



off_9628:
- D - I - 0x02D638 21:9628: 10        .byte $10	; <た>
- D - I - 0x02D639 21:9629: 02        .byte $02	; <い>
- D - I - 0x02D63A 21:962A: C8        .byte $C8	; <ぱ>
- D - I - 0x02D63B 21:962B: 5E        .byte $5E	; <ホ>
- D - I - 0x02D63C 21:962C: CC        .byte $CC	; <ぽ>
- D - I - 0x02D63D 21:962D: 5F        .byte $5F	; <マ>
- D - I - 0x02D63E 21:962E: D0        .byte $D0	; <ペ>
- D - I - 0x02D63F 21:962F: 12        .byte $12	; <つ>

- D - I - 0x02D640 21:9630: 10        .byte $10	; <た>
- D - I - 0x02D641 21:9631: 03        .byte $03	; <う>
- D - I - 0x02D642 21:9632: C8        .byte $C8	; <ぱ>
- D - I - 0x02D643 21:9633: 74        .byte $74	; <ィ>
- D - I - 0x02D644 21:9634: CC        .byte $CC	; <ぽ>
- D - I - 0x02D645 21:9635: 70        .byte $70	; <ャ>
- D - I - 0x02D646 21:9636: D0        .byte $D0	; <ペ>
- D - I - 0x02D647 21:9637: 71        .byte $71	; <ュ>

- D - I - 0x02D648 21:9638: 08        .byte $08	; <く>
- D - I - 0x02D649 21:9639: 04        .byte $04	; <え>
- D - I - 0x02D64A 21:963A: CF        .byte $CF	; <プ>
- D - I - 0x02D64B 21:963B: 72        .byte $72	; <ョ>
- D - I - 0x02D64C 21:963C: D0        .byte $D0	; <ペ>
- D - I - 0x02D64D 21:963D: 73        .byte $73	; <ヮ>

- D - I - 0x02D64E 21:963E: 08        .byte $08	; <く>
- D - I - 0x02D64F 21:963F: 02        .byte $02	; <い>
- D - I - 0x02D650 21:9640: C9        .byte $C9	; <ぴ>
- D - I - 0x02D651 21:9641: 4B        .byte $4B	; <サ>
- D - I - 0x02D652 21:9642: CD        .byte $CD	; <パ>
- D - I - 0x02D653 21:9643: 4E        .byte $4E	; <セ>

- D - I - 0x02D654 21:9644: 00        .byte $00
- D - I - 0x02D655 21:9645: 03        .byte $03	; <う>
- D - I - 0x02D656 21:9646: C9        .byte $C9	; <ぴ>
- D - I - 0x02D657 21:9647: 60        .byte $60	; <ミ>

- D - I - 0x02D658 21:9648: 08        .byte $08	; <く>
- D - I - 0x02D659 21:9649: 04        .byte $04	; <え>
- D - I - 0x02D65A 21:964A: D1        .byte $D1	; <ポ>
- D - I - 0x02D65B 21:964B: 5C        .byte $5C	; <フ>
- D - I - 0x02D65C 21:964C: D5        .byte $D5
- D - I - 0x02D65D 21:964D: 5D        .byte $5D	; <ヘ>

- D - I - 0x02D65E 21:964E: 02        .byte $02	; <い>
- D - I - 0x02D65F 21:964F: 67 95     .word off_9567



off_9651_2D:
- - - - - 0x02D661 21:9651: 00        .byte $00
- - - - - 0x02D662 21:9652: 09        .byte $09	; <け>
- - - - - 0x02D663 21:9653: 17        .byte $17	; <ぬ>
- - - - - 0x02D664 21:9654: 69        .byte $69	; <ル>

- - - - - 0x02D665 21:9655: 08        .byte $08	; <く>
- - - - - 0x02D666 21:9656: 16        .byte $16	; <に>
- - - - - 0x02D667 21:9657: 0F        .byte $0F	; <そ>
- - - - - 0x02D668 21:9658: 3F        .byte $3F	; <•>
- - - - - 0x02D669 21:9659: 13        .byte $13	; <て>
- - - - - 0x02D66A 21:965A: 6A        .byte $6A	; <レ>

- - - - - 0x02D66B 21:965B: 08        .byte $08	; <く>
- - - - - 0x02D66C 21:965C: 09        .byte $09	; <け>
- - - - - 0x02D66D 21:965D: 0B        .byte $0B	; <さ>
- - - - - 0x02D66E 21:965E: 7D        .byte $7D	; <ー>
- - - - - 0x02D66F 21:965F: 17        .byte $17	; <ぬ>
- - - - - 0x02D670 21:9660: 6C        .byte $6C	; <ワ>

- - - - - 0x02D671 21:9661: 18        .byte $18	; <ね>
- - - - - 0x02D672 21:9662: 16        .byte $16	; <に>
- - - - - 0x02D673 21:9663: 0B        .byte $0B	; <さ>
- - - - - 0x02D674 21:9664: BE        .byte $BE	; <ダ>
- - - - - 0x02D675 21:9665: 0F        .byte $0F	; <そ>
- - - - - 0x02D676 21:9666: BF        .byte $BF	; <ヂ>
- - - - - 0x02D677 21:9667: 13        .byte $13	; <て>
- - - - - 0x02D678 21:9668: 6B        .byte $6B	; <ロ>
- - - - - 0x02D679 21:9669: 17        .byte $17	; <ぬ>
- - - - - 0x02D67A 21:966A: 6E        .byte $6E	; <ン>

- - - - - 0x02D67B 21:966B: 02        .byte $02	; <い>
- - - - - 0x02D67C 21:966C: 2A 95     .word off_952A



off_966E_2E:
- - - - - 0x02D67E 21:966E: 00        .byte $00
- - - - - 0x02D67F 21:966F: 09        .byte $09	; <け>
- - - - - 0x02D680 21:9670: 17        .byte $17	; <ぬ>
- - - - - 0x02D681 21:9671: 69        .byte $69	; <ル>

- - - - - 0x02D682 21:9672: 08        .byte $08	; <く>
- - - - - 0x02D683 21:9673: 16        .byte $16	; <に>
- - - - - 0x02D684 21:9674: 0F        .byte $0F	; <そ>
- - - - - 0x02D685 21:9675: 3F        .byte $3F	; <•>
- - - - - 0x02D686 21:9676: 13        .byte $13	; <て>
- - - - - 0x02D687 21:9677: 6A        .byte $6A	; <レ>

- - - - - 0x02D688 21:9678: 08        .byte $08	; <く>
- - - - - 0x02D689 21:9679: 09        .byte $09	; <け>
- - - - - 0x02D68A 21:967A: 0B        .byte $0B	; <さ>
- - - - - 0x02D68B 21:967B: 7C        .byte $7C	; <~>
- - - - - 0x02D68C 21:967C: 17        .byte $17	; <ぬ>
- - - - - 0x02D68D 21:967D: 79        .byte $79	; <!>

- - - - - 0x02D68E 21:967E: 18        .byte $18	; <ね>
- - - - - 0x02D68F 21:967F: 16        .byte $16	; <に>
- - - - - 0x02D690 21:9680: 0B        .byte $0B	; <さ>
- - - - - 0x02D691 21:9681: 7E        .byte $7E	; <.>
- - - - - 0x02D692 21:9682: 0F        .byte $0F	; <そ>
- - - - - 0x02D693 21:9683: 7F        .byte $7F	; <,>
- - - - - 0x02D694 21:9684: 13        .byte $13	; <て>
- - - - - 0x02D695 21:9685: 7A        .byte $7A	; <、>
- - - - - 0x02D696 21:9686: 17        .byte $17	; <ぬ>
- - - - - 0x02D697 21:9687: 7B        .byte $7B	; <。>

- - - - - 0x02D698 21:9688: 02        .byte $02	; <い>
- - - - - 0x02D699 21:9689: 2A 95     .word off_952A



off_968B_30:
- D - I - 0x02D69B 21:968B: 08        .byte $08	; <く>
- D - I - 0x02D69C 21:968C: 00        .byte $00
- D - I - 0x02D69D 21:968D: 5B        .byte $5B	; <ヒ>
- D - I - 0x02D69E 21:968E: 2E        .byte $2E	; <ん>
- D - I - 0x02D69F 21:968F: 5F        .byte $5F	; <マ>
- D - I - 0x02D6A0 21:9690: 2F        .byte $2F	; <っ>

- D - I - 0x02D6A1 21:9691: 18        .byte $18	; <ね>
- D - I - 0x02D6A2 21:9692: 01        .byte $01	; <あ>
- D - I - 0x02D6A3 21:9693: 09        .byte $09	; <け>
- D - I - 0x02D6A4 21:9694: 30        .byte $30	; <ゃ>
- D - I - 0x02D6A5 21:9695: 0F        .byte $0F	; <そ>
- D - I - 0x02D6A6 21:9696: 31        .byte $31	; <ゅ>
- D - I - 0x02D6A7 21:9697: 0D        .byte $0D	; <す>
- D - I - 0x02D6A8 21:9698: 46        .byte $46	; <カ>
- D - I - 0x02D6A9 21:9699: 11        .byte $11	; <ち>
- D - I - 0x02D6AA 21:969A: 40        .byte $40	; <「>

- D - I - 0x02D6AB 21:969B: 20        .byte $20	; <み>
- D - I - 0x02D6AC 21:969C: 02        .byte $02	; <い>
- D - I - 0x02D6AD 21:969D: 0B        .byte $0B	; <さ>
- D - I - 0x02D6AE 21:969E: 32        .byte $32	; <ょ>
- D - I - 0x02D6AF 21:969F: 0A        .byte $0A	; <こ>
- D - I - 0x02D6B0 21:96A0: 44        .byte $44	; <エ>
- D - I - 0x02D6B1 21:96A1: 0D        .byte $0D	; <す>
- D - I - 0x02D6B2 21:96A2: 33        .byte $33	; <0>
- D - I - 0x02D6B3 21:96A3: 0F        .byte $0F	; <そ>
- D - I - 0x02D6B4 21:96A4: 02        .byte $02	; <い>
- D - I - 0x02D6B5 21:96A5: 12        .byte $12	; <つ>
- D - I - 0x02D6B6 21:96A6: 42        .byte $42	; <イ>

- D - I - 0x02D6B7 21:96A7: 28        .byte $28	; <り>
- D - I - 0x02D6B8 21:96A8: 03        .byte $03	; <う>
- D - I - 0x02D6B9 21:96A9: 04        .byte $04	; <え>
- D - I - 0x02D6BA 21:96AA: 2D        .byte $2D	; <を>
- D - I - 0x02D6BB 21:96AB: 08        .byte $08	; <く>
- D - I - 0x02D6BC 21:96AC: 38        .byte $38	; <5>
- D - I - 0x02D6BD 21:96AD: 0C        .byte $0C	; <し>
- D - I - 0x02D6BE 21:96AE: 39        .byte $39	; <6>
- D - I - 0x02D6BF 21:96AF: 10        .byte $10	; <た>
- D - I - 0x02D6C0 21:96B0: 41        .byte $41	; <ア>
- D - I - 0x02D6C1 21:96B1: 43        .byte $43	; <ウ>
- D - I - 0x02D6C2 21:96B2: 02        .byte $02	; <い>
- D - I - 0x02D6C3 21:96B3: 47        .byte $47	; <キ>
- D - I - 0x02D6C4 21:96B4: 02        .byte $02	; <い>

- D - I - 0x02D6C5 21:96B5: 10        .byte $10	; <た>
- D - I - 0x02D6C6 21:96B6: 04        .byte $04	; <え>
- D - I - 0x02D6C7 21:96B7: 08        .byte $08	; <く>
- D - I - 0x02D6C8 21:96B8: 3A        .byte $3A	; <7>
- D - I - 0x02D6C9 21:96B9: 0C        .byte $0C	; <し>
- D - I - 0x02D6CA 21:96BA: 3B        .byte $3B	; <8>
- D - I - 0x02D6CB 21:96BB: 10        .byte $10	; <た>
- D - I - 0x02D6CC 21:96BC: 43        .byte $43	; <ウ>

- D - I - 0x02D6CD 21:96BD: 10        .byte $10	; <た>
- D - I - 0x02D6CE 21:96BE: 05        .byte $05	; <お>
- D - I - 0x02D6CF 21:96BF: 09        .byte $09	; <け>
- D - I - 0x02D6D0 21:96C0: 34        .byte $34	; <1>
- D - I - 0x02D6D1 21:96C1: 0D        .byte $0D	; <す>
- D - I - 0x02D6D2 21:96C2: 35        .byte $35	; <2>
- D - I - 0x02D6D3 21:96C3: 11        .byte $11	; <ち>
- D - I - 0x02D6D4 21:96C4: 37        .byte $37	; <4>

- D - I - 0x02D6D5 21:96C5: 08        .byte $08	; <く>
- D - I - 0x02D6D6 21:96C6: 06        .byte $06	; <か>
- D - I - 0x02D6D7 21:96C7: 09        .byte $09	; <け>
- D - I - 0x02D6D8 21:96C8: 36        .byte $36	; <3>
- D - I - 0x02D6D9 21:96C9: 31        .byte $31	; <ゅ>
- D - I - 0x02D6DA 21:96CA: 3D        .byte $3D	; <+>

- D - I - 0x02D6DB 21:96CB: 20        .byte $20	; <み>
- D - I - 0x02D6DC 21:96CC: 07        .byte $07	; <き>
- D - I - 0x02D6DD 21:96CD: 07        .byte $07	; <き>
- D - I - 0x02D6DE 21:96CE: 3E        .byte $3E	; <Jr>
- D - I - 0x02D6DF 21:96CF: 0B        .byte $0B	; <さ>
- D - I - 0x02D6E0 21:96D0: 3F        .byte $3F	; <•>
- D - I - 0x02D6E1 21:96D1: 09        .byte $09	; <け>
- D - I - 0x02D6E2 21:96D2: 45        .byte $45	; <オ>
- D - I - 0x02D6E3 21:96D3: 13        .byte $13	; <て>
- D - I - 0x02D6E4 21:96D4: 3C        .byte $3C	; <9>
- D - I - 0x02D6E5 21:96D5: BD        .byte $BD	; <ゾ>
- D - I - 0x02D6E6 21:96D6: 45        .byte $45	; <オ>

- D - I - 0x02D6E7 21:96D7: 01        .byte $01	; <あ>



off_96D8_31:
- D - I - 0x02D6E8 21:96D8: 08        .byte $08	; <く>
- D - I - 0x02D6E9 21:96D9: 00        .byte $00
- D - I - 0x02D6EA 21:96DA: 40        .byte $40	; <「>
- D - I - 0x02D6EB 21:96DB: 50        .byte $50	; <タ>
- D - I - 0x02D6EC 21:96DC: 5D        .byte $5D	; <ヘ>
- D - I - 0x02D6ED 21:96DD: E6        .byte $E6

- D - I - 0x02D6EE 21:96DE: 18        .byte $18	; <ね>
- D - I - 0x02D6EF 21:96DF: 01        .byte $01	; <あ>
- D - I - 0x02D6F0 21:96E0: 5C        .byte $5C	; <フ>
- D - I - 0x02D6F1 21:96E1: 52        .byte $52	; <ツ>
- D - I - 0x02D6F2 21:96E2: 5D        .byte $5D	; <ヘ>
- D - I - 0x02D6F3 21:96E3: FA        .byte $FA
- D - I - 0x02D6F4 21:96E4: 60        .byte $60	; <ミ>
- D - I - 0x02D6F5 21:96E5: 53        .byte $53	; <テ>
- D - I - 0x02D6F6 21:96E6: 61        .byte $61	; <ム>
- D - I - 0x02D6F7 21:96E7: FB        .byte $FB

- D - I - 0x02D6F8 21:96E8: 18        .byte $18	; <ね>
- D - I - 0x02D6F9 21:96E9: 02        .byte $02	; <い>
- D - I - 0x02D6FA 21:96EA: 44        .byte $44	; <エ>
- D - I - 0x02D6FB 21:96EB: 58        .byte $58	; <ネ>
- D - I - 0x02D6FC 21:96EC: 45        .byte $45	; <オ>
- D - I - 0x02D6FD 21:96ED: E5        .byte $E5
- D - I - 0x02D6FE 21:96EE: 84        .byte $84	; <D>
- D - I - 0x02D6FF 21:96EF: 59        .byte $59	; <ノ>
- D - I - 0x02D700 21:96F0: 85        .byte $85	; <E>
- D - I - 0x02D701 21:96F1: F0        .byte $F0

- D - I - 0x02D702 21:96F2: 30        .byte $30	; <ゃ>
- D - I - 0x02D703 21:96F3: 03        .byte $03	; <う>
- D - I - 0x02D704 21:96F4: 44        .byte $44	; <エ>
- D - I - 0x02D705 21:96F5: 5A        .byte $5A	; <ハ>
- D - I - 0x02D706 21:96F6: 45        .byte $45	; <オ>
- D - I - 0x02D707 21:96F7: E7        .byte $E7
- D - I - 0x02D708 21:96F8: 84        .byte $84	; <D>
- D - I - 0x02D709 21:96F9: 5B        .byte $5B	; <ヒ>
- D - I - 0x02D70A 21:96FA: 85        .byte $85	; <E>
- D - I - 0x02D70B 21:96FB: F2        .byte $F2
- D - I - 0x02D70C 21:96FC: 92        .byte $92	; <W>
- D - I - 0x02D70D 21:96FD: F7        .byte $F7
- D - I - 0x02D70E 21:96FE: 90        .byte $90	; <U>
- D - I - 0x02D70F 21:96FF: 51        .byte $51	; <チ>
- D - I - 0x02D710 21:9700: 91        .byte $91	; <V>
- D - I - 0x02D711 21:9701: F3        .byte $F3

- D - I - 0x02D712 21:9702: 38        .byte $38	; <5>
- D - I - 0x02D713 21:9703: 04        .byte $04	; <え>
- D - I - 0x02D714 21:9704: 0C        .byte $0C	; <し>
- D - I - 0x02D715 21:9705: 56        .byte $56	; <ニ>
- D - I - 0x02D716 21:9706: 10        .byte $10	; <た>
- D - I - 0x02D717 21:9707: 57        .byte $57	; <ヌ>
- D - I - 0x02D718 21:9708: 14        .byte $14	; <と>
- D - I - 0x02D719 21:9709: 54        .byte $54	; <ト>
- D - I - 0x02D71A 21:970A: 41        .byte $41	; <ア>
- D - I - 0x02D71B 21:970B: EC        .byte $EC
- D - I - 0x02D71C 21:970C: 45        .byte $45	; <オ>
- D - I - 0x02D71D 21:970D: ED        .byte $ED
- D - I - 0x02D71E 21:970E: 85        .byte $85	; <E>
- D - I - 0x02D71F 21:970F: F8        .byte $F8
- D - I - 0x02D720 21:9710: 91        .byte $91	; <V>
- D - I - 0x02D721 21:9711: F9        .byte $F9
- D - I - 0x02D722 21:9712: 92        .byte $92	; <W>
- D - I - 0x02D723 21:9713: FD        .byte $FD

- D - I - 0x02D724 21:9714: 20        .byte $20	; <み>
- D - I - 0x02D725 21:9715: 05        .byte $05	; <お>
- D - I - 0x02D726 21:9716: 42        .byte $42	; <イ>
- D - I - 0x02D727 21:9717: F6        .byte $F6
- D - I - 0x02D728 21:9718: 0C        .byte $0C	; <し>
- D - I - 0x02D729 21:9719: 5C        .byte $5C	; <フ>
- D - I - 0x02D72A 21:971A: 10        .byte $10	; <た>
- D - I - 0x02D72B 21:971B: 5D        .byte $5D	; <ヘ>
- D - I - 0x02D72C 21:971C: 35        .byte $35	; <2>
- D - I - 0x02D72D 21:971D: EE        .byte $EE
- D - I - 0x02D72E 21:971E: 39        .byte $39	; <6>
- D - I - 0x02D72F 21:971F: EF        .byte $EF

- D - I - 0x02D730 21:9720: 20        .byte $20	; <み>
- D - I - 0x02D731 21:9721: 06        .byte $06	; <か>
- D - I - 0x02D732 21:9722: 42        .byte $42	; <イ>
- D - I - 0x02D733 21:9723: FC        .byte $FC
- D - I - 0x02D734 21:9724: 0C        .byte $0C	; <し>
- D - I - 0x02D735 21:9725: 5E        .byte $5E	; <ホ>
- D - I - 0x02D736 21:9726: 10        .byte $10	; <た>
- D - I - 0x02D737 21:9727: 5F        .byte $5F	; <マ>
- D - I - 0x02D738 21:9728: 35        .byte $35	; <2>
- D - I - 0x02D739 21:9729: E8        .byte $E8
- D - I - 0x02D73A 21:972A: 39        .byte $39	; <6>
- D - I - 0x02D73B 21:972B: E9        .byte $E9

- D - I - 0x02D73C 21:972C: 20        .byte $20	; <み>
- D - I - 0x02D73D 21:972D: 07        .byte $07	; <き>
- D - I - 0x02D73E 21:972E: 41        .byte $41	; <ア>
- D - I - 0x02D73F 21:972F: EA        .byte $EA
- D - I - 0x02D740 21:9730: 42        .byte $42	; <イ>
- D - I - 0x02D741 21:9731: FE        .byte $FE
- D - I - 0x02D742 21:9732: 44        .byte $44	; <エ>
- D - I - 0x02D743 21:9733: 55        .byte $55	; <ナ>
- D - I - 0x02D744 21:9734: 45        .byte $45	; <オ>
- D - I - 0x02D745 21:9735: EB        .byte $EB
- D - I - 0x02D746 21:9736: 46        .byte $46	; <カ>
- D - I - 0x02D747 21:9737: FF        .byte $FF

- D - I - 0x02D748 21:9738: 01        .byte $01	; <あ>



off_9739_3E:
- - - - - 0x02D749 21:9739: 00        .byte $00
- - - - - 0x02D74A 21:973A: 09        .byte $09	; <け>
- - - - - 0x02D74B 21:973B: 6B        .byte $6B	; <ロ>
- - - - - 0x02D74C 21:973C: 69        .byte $69	; <ル>

- - - - - 0x02D74D 21:973D: 08        .byte $08	; <く>
- - - - - 0x02D74E 21:973E: 16        .byte $16	; <に>
- - - - - 0x02D74F 21:973F: A3        .byte $A3	; <げ>
- - - - - 0x02D750 21:9740: 3F        .byte $3F	; <•>
- - - - - 0x02D751 21:9741: B7        .byte $B7	; <ゲ>
- - - - - 0x02D752 21:9742: 6A        .byte $6A	; <レ>
; продолжение


off_9743:
- D - I - 0x02D753 21:9743: 08        .byte $08	; <く>
- D - I - 0x02D754 21:9744: 08        .byte $08	; <く>
- D - I - 0x02D755 21:9745: A3        .byte $A3	; <げ>
- D - I - 0x02D756 21:9746: 37        .byte $37	; <4>
- D - I - 0x02D757 21:9747: B7        .byte $B7	; <ゲ>
- D - I - 0x02D758 21:9748: 62        .byte $62	; <メ>

- D - I - 0x02D759 21:9749: 08        .byte $08	; <く>
- D - I - 0x02D75A 21:974A: 09        .byte $09	; <け>
- D - I - 0x02D75B 21:974B: A3        .byte $A3	; <げ>
- D - I - 0x02D75C 21:974C: 3D        .byte $3D	; <+>
- D - I - 0x02D75D 21:974D: B7        .byte $B7	; <ゲ>
- D - I - 0x02D75E 21:974E: 68        .byte $68	; <リ>
; продолжение


off_974F:
- D - I - 0x02D75F 21:974F: 03        .byte $03	; <う>
- D - I - 0x02D760 21:9750: 68 97     .word off_9768
- D - I - 0x02D762 21:9752: DD 97     .word off_97DD
- D - I - 0x02D764 21:9754: FC 97     .word off_97FC
- D - I - 0x02D766 21:9756: 17 98     .word off_9817
- D - I - 0x02D768 21:9758: 26 98     .word off_9826
- D - I - 0x02D76A 21:975A: 3B 98     .word off_983B
- D - I - 0x02D76C 21:975C: 52 98     .word off_9852
- D - I - 0x02D76E 21:975E: 69 98     .word off_9869
- D - I - 0x02D770 21:9760: 92 98     .word off_9892
- D - I - 0x02D772 21:9762: A9 98     .word off_98A9
- D - I - 0x02D774 21:9764: BE 98     .word off_98BE
- D - I - 0x02D776 21:9766: D5 98     .word off_98D5

off_9768:
- D - I - 0x02D778 21:9768: 08        .byte $08	; <く>
- D - I - 0x02D779 21:9769: 02        .byte $02	; <い>
- D - I - 0x02D77A 21:976A: 14        .byte $14	; <と>
- D - I - 0x02D77B 21:976B: 07        .byte $07	; <き>
- D - I - 0x02D77C 21:976C: 18        .byte $18	; <ね>
- D - I - 0x02D77D 21:976D: 12        .byte $12	; <つ>

- D - I - 0x02D77E 21:976E: 10        .byte $10	; <た>
- D - I - 0x02D77F 21:976F: 03        .byte $03	; <う>
- D - I - 0x02D780 21:9770: 10        .byte $10	; <た>
- D - I - 0x02D781 21:9771: 0C        .byte $0C	; <し>
- D - I - 0x02D782 21:9772: 14        .byte $14	; <と>
- D - I - 0x02D783 21:9773: 0D        .byte $0D	; <す>
- D - I - 0x02D784 21:9774: 18        .byte $18	; <ね>
- D - I - 0x02D785 21:9775: 18        .byte $18	; <ね>

- D - I - 0x02D786 21:9776: 08        .byte $08	; <く>
- D - I - 0x02D787 21:9777: 04        .byte $04	; <え>
- D - I - 0x02D788 21:9778: 17        .byte $17	; <ぬ>
- D - I - 0x02D789 21:9779: 0F        .byte $0F	; <そ>
- D - I - 0x02D78A 21:977A: 18        .byte $18	; <ね>
- D - I - 0x02D78B 21:977B: 1A        .byte $1A	; <は>
; продолжение


off_977C:
- D - I - 0x02D78C 21:977C: 08        .byte $08	; <く>
- D - I - 0x02D78D 21:977D: 02        .byte $02	; <い>
- D - I - 0x02D78E 21:977E: 11        .byte $11	; <ち>
- D - I - 0x02D78F 21:977F: 40        .byte $40	; <「>
- D - I - 0x02D790 21:9780: 15        .byte $15	; <な>
- D - I - 0x02D791 21:9781: 41        .byte $41	; <ア>

- D - I - 0x02D792 21:9782: 00        .byte $00
- D - I - 0x02D793 21:9783: 03        .byte $03	; <う>
- D - I - 0x02D794 21:9784: 11        .byte $11	; <ち>
- D - I - 0x02D795 21:9785: 42        .byte $42	; <イ>

- D - I - 0x02D796 21:9786: 08        .byte $08	; <く>
- D - I - 0x02D797 21:9787: 04        .byte $04	; <え>
- D - I - 0x02D798 21:9788: 19        .byte $19	; <の>
- D - I - 0x02D799 21:9789: 51        .byte $51	; <チ>
- D - I - 0x02D79A 21:978A: 81        .byte $81	; <A>
- D - I - 0x02D79B 21:978B: 54        .byte $54	; <ト>

off_978C:
- D - I - 0x02D79C 21:978C: 08        .byte $08	; <く>
- D - I - 0x02D79D 21:978D: 00        .byte $00
- D - I - 0x02D79E 21:978E: 0B        .byte $0B	; <さ>
- D - I - 0x02D79F 21:978F: 66        .byte $66	; <ヨ>
- D - I - 0x02D7A0 21:9790: 0E        .byte $0E	; <せ>
- D - I - 0x02D7A1 21:9791: 67        .byte $67	; <ラ>

- D - I - 0x02D7A2 21:9792: 08        .byte $08	; <く>
- D - I - 0x02D7A3 21:9793: 01        .byte $01	; <あ>
- D - I - 0x02D7A4 21:9794: 0F        .byte $0F	; <そ>
- D - I - 0x02D7A5 21:9795: 6D        .byte $6D	; <ヲ>
- D - I - 0x02D7A6 21:9796: 13        .byte $13	; <て>
- D - I - 0x02D7A7 21:9797: 78        .byte $78	; <?>

- D - I - 0x02D7A8 21:9798: 00        .byte $00
- D - I - 0x02D7A9 21:9799: 02        .byte $02	; <い>
- D - I - 0x02D7AA 21:979A: 0F        .byte $0F	; <そ>
- D - I - 0x02D7AB 21:979B: 6F        .byte $6F	; <ッ>

- D - I - 0x02D7AC 21:979C: 18        .byte $18	; <ね>
- D - I - 0x02D7AD 21:979D: 04        .byte $04	; <え>
- D - I - 0x02D7AE 21:979E: 0E        .byte $0E	; <せ>
- D - I - 0x02D7AF 21:979F: 44        .byte $44	; <エ>
- D - I - 0x02D7B0 21:97A0: 11        .byte $11	; <ち>
- D - I - 0x02D7B1 21:97A1: 45        .byte $45	; <オ>
- D - I - 0x02D7B2 21:97A2: 15        .byte $15	; <な>
- D - I - 0x02D7B3 21:97A3: 50        .byte $50	; <タ>
- D - I - 0x02D7B4 21:97A4: C3        .byte $C3	; <バ>
- D - I - 0x02D7B5 21:97A5: 55        .byte $55	; <ナ>

- D - I - 0x02D7B6 21:97A6: 38        .byte $38	; <5>
- D - I - 0x02D7B7 21:97A7: 05        .byte $05	; <お>
- D - I - 0x02D7B8 21:97A8: 0B        .byte $0B	; <さ>
- D - I - 0x02D7B9 21:97A9: 43        .byte $43	; <ウ>
- D - I - 0x02D7BA 21:97AA: 0E        .byte $0E	; <せ>
- D - I - 0x02D7BB 21:97AB: 46        .byte $46	; <カ>
- D - I - 0x02D7BC 21:97AC: 11        .byte $11	; <ち>
- D - I - 0x02D7BD 21:97AD: 47        .byte $47	; <キ>
- D - I - 0x02D7BE 21:97AE: 12        .byte $12	; <つ>
- D - I - 0x02D7BF 21:97AF: 50        .byte $50	; <タ>
- D - I - 0x02D7C0 21:97B0: 15        .byte $15	; <な>
- D - I - 0x02D7C1 21:97B1: 52        .byte $52	; <ツ>
- D - I - 0x02D7C2 21:97B2: 19        .byte $19	; <の>
- D - I - 0x02D7C3 21:97B3: 53        .byte $53	; <テ>
- D - I - 0x02D7C4 21:97B4: 83        .byte $83	; <C>
- D - I - 0x02D7C5 21:97B5: 56        .byte $56	; <ニ>
- D - I - 0x02D7C6 21:97B6: C3        .byte $C3	; <バ>
- D - I - 0x02D7C7 21:97B7: 57        .byte $57	; <ヌ>

- D - I - 0x02D7C8 21:97B8: 30        .byte $30	; <ゃ>
- D - I - 0x02D7C9 21:97B9: 06        .byte $06	; <か>
- D - I - 0x02D7CA 21:97BA: 01        .byte $01	; <あ>
- D - I - 0x02D7CB 21:97BB: 1D        .byte $1D	; <へ>
- D - I - 0x02D7CC 21:97BC: 05        .byte $05	; <お>
- D - I - 0x02D7CD 21:97BD: 48        .byte $48	; <ク>
- D - I - 0x02D7CE 21:97BE: 0B        .byte $0B	; <さ>
- D - I - 0x02D7CF 21:97BF: 49        .byte $49	; <ケ>
- D - I - 0x02D7D0 21:97C0: 0F        .byte $0F	; <そ>
- D - I - 0x02D7D1 21:97C1: 4C        .byte $4C	; <シ>
- D - I - 0x02D7D2 21:97C2: 12        .byte $12	; <つ>
- D - I - 0x02D7D3 21:97C3: 4D        .byte $4D	; <ス>
- D - I - 0x02D7D4 21:97C4: 16        .byte $16	; <に>
- D - I - 0x02D7D5 21:97C5: 58        .byte $58	; <ネ>
- D - I - 0x02D7D6 21:97C6: 1A        .byte $1A	; <は>
- D - I - 0x02D7D7 21:97C7: 59        .byte $59	; <ノ>

- D - I - 0x02D7D8 21:97C8: 20        .byte $20	; <み>
- D - I - 0x02D7D9 21:97C9: 07        .byte $07	; <き>
- D - I - 0x02D7DA 21:97CA: 69        .byte $69	; <ル>
- D - I - 0x02D7DB 21:97CB: 61        .byte $61	; <ム>
- D - I - 0x02D7DC 21:97CC: 01        .byte $01	; <あ>
- D - I - 0x02D7DD 21:97CD: 1F        .byte $1F	; <ま>
- D - I - 0x02D7DE 21:97CE: 05        .byte $05	; <お>
- D - I - 0x02D7DF 21:97CF: 4A        .byte $4A	; <コ>
- D - I - 0x02D7E0 21:97D0: 13        .byte $13	; <て>
- D - I - 0x02D7E1 21:97D1: 4F        .byte $4F	; <ソ>
- D - I - 0x02D7E2 21:97D2: 17        .byte $17	; <ぬ>
- D - I - 0x02D7E3 21:97D3: 5A        .byte $5A	; <ハ>

- D - I - 0x02D7E4 21:97D4: 10        .byte $10	; <た>
- D - I - 0x02D7E5 21:97D5: 08        .byte $08	; <く>
- D - I - 0x02D7E6 21:97D6: 69        .byte $69	; <ル>
- D - I - 0x02D7E7 21:97D7: 63        .byte $63	; <モ>
- D - I - 0x02D7E8 21:97D8: 01        .byte $01	; <あ>
- D - I - 0x02D7E9 21:97D9: 35        .byte $35	; <2>
- D - I - 0x02D7EA 21:97DA: 13        .byte $13	; <て>
- D - I - 0x02D7EB 21:97DB: 65        .byte $65	; <ユ>

- D - I - 0x02D7EC 21:97DC: 01        .byte $01	; <あ>



off_97DD:
- D - I - 0x02D7ED 21:97DD: 00        .byte $00
- D - I - 0x02D7EE 21:97DE: 01        .byte $01	; <あ>
- D - I - 0x02D7EF 21:97DF: 80        .byte $80
- D - I - 0x02D7F0 21:97E0: 10        .byte $10	; <た>

- D - I - 0x02D7F1 21:97E1: 10        .byte $10	; <た>
- D - I - 0x02D7F2 21:97E2: 02        .byte $02	; <い>
- D - I - 0x02D7F3 21:97E3: 14        .byte $14	; <と>
- D - I - 0x02D7F4 21:97E4: 11        .byte $11	; <ち>
- D - I - 0x02D7F5 21:97E5: 18        .byte $18	; <ね>
- D - I - 0x02D7F6 21:97E6: 14        .byte $14	; <と>
- D - I - 0x02D7F7 21:97E7: 80        .byte $80
- D - I - 0x02D7F8 21:97E8: 15        .byte $15	; <な>

- D - I - 0x02D7F9 21:97E9: 18        .byte $18	; <ね>
- D - I - 0x02D7FA 21:97EA: 03        .byte $03	; <う>
- D - I - 0x02D7FB 21:97EB: 10        .byte $10	; <た>
- D - I - 0x02D7FC 21:97EC: 0C        .byte $0C	; <し>
- D - I - 0x02D7FD 21:97ED: 14        .byte $14	; <と>
- D - I - 0x02D7FE 21:97EE: 13        .byte $13	; <て>
- D - I - 0x02D7FF 21:97EF: 18        .byte $18	; <ね>
- D - I - 0x02D800 21:97F0: 16        .byte $16	; <に>
- D - I - 0x02D801 21:97F1: 80        .byte $80
- D - I - 0x02D802 21:97F2: 17        .byte $17	; <ぬ>

- D - I - 0x02D803 21:97F3: 08        .byte $08	; <く>
- D - I - 0x02D804 21:97F4: 04        .byte $04	; <え>
- D - I - 0x02D805 21:97F5: 17        .byte $17	; <ぬ>
- D - I - 0x02D806 21:97F6: 19        .byte $19	; <の>
- D - I - 0x02D807 21:97F7: 18        .byte $18	; <ね>
- D - I - 0x02D808 21:97F8: 1C        .byte $1C	; <ふ>

- D - I - 0x02D809 21:97F9: 02        .byte $02	; <い>
- D - I - 0x02D80A 21:97FA: 7C 97     .word off_977C



off_97FC:
- D - I - 0x02D80C 21:97FC: 08        .byte $08	; <く>
- D - I - 0x02D80D 21:97FD: 03        .byte $03	; <う>
- D - I - 0x02D80E 21:97FE: 14        .byte $14	; <と>
- D - I - 0x02D80F 21:97FF: 22        .byte $22	; <め>
- D - I - 0x02D810 21:9800: 18        .byte $18	; <ね>
- D - I - 0x02D811 21:9801: 23        .byte $23	; <も>

- D - I - 0x02D812 21:9802: 08        .byte $08	; <く>
- D - I - 0x02D813 21:9803: 04        .byte $04	; <え>
- D - I - 0x02D814 21:9804: 17        .byte $17	; <ぬ>
- D - I - 0x02D815 21:9805: 0F        .byte $0F	; <そ>
- D - I - 0x02D816 21:9806: 18        .byte $18	; <ね>
- D - I - 0x02D817 21:9807: 1A        .byte $1A	; <は>

off_9808:
- D - I - 0x02D818 21:9808: 08        .byte $08	; <く>
- D - I - 0x02D819 21:9809: 02        .byte $02	; <い>
- D - I - 0x02D81A 21:980A: 14        .byte $14	; <と>
- D - I - 0x02D81B 21:980B: 20        .byte $20	; <み>
- D - I - 0x02D81C 21:980C: 18        .byte $18	; <ね>
- D - I - 0x02D81D 21:980D: 21        .byte $21	; <む>

- D - I - 0x02D81E 21:980E: 08        .byte $08	; <く>
- D - I - 0x02D81F 21:980F: 03        .byte $03	; <う>
- D - I - 0x02D820 21:9810: 10        .byte $10	; <た>
- D - I - 0x02D821 21:9811: 0E        .byte $0E	; <せ>
- D - I - 0x02D822 21:9812: 80        .byte $80
- D - I - 0x02D823 21:9813: 26        .byte $26	; <よ>

- D - I - 0x02D824 21:9814: 02        .byte $02	; <い>
- D - I - 0x02D825 21:9815: 7C 97     .word off_977C



off_9817:
- D - I - 0x02D827 21:9817: 08        .byte $08	; <く>
- D - I - 0x02D828 21:9818: 03        .byte $03	; <う>
- D - I - 0x02D829 21:9819: 14        .byte $14	; <と>
- D - I - 0x02D82A 21:981A: 29        .byte $29	; <る>
- D - I - 0x02D82B 21:981B: 18        .byte $18	; <ね>
- D - I - 0x02D82C 21:981C: 23        .byte $23	; <も>

- D - I - 0x02D82D 21:981D: 08        .byte $08	; <く>
- D - I - 0x02D82E 21:981E: 04        .byte $04	; <え>
- D - I - 0x02D82F 21:981F: 17        .byte $17	; <ぬ>
- D - I - 0x02D830 21:9820: 2B        .byte $2B	; <ろ>
- D - I - 0x02D831 21:9821: 18        .byte $18	; <ね>
- D - I - 0x02D832 21:9822: 1A        .byte $1A	; <は>

- D - I - 0x02D833 21:9823: 02        .byte $02	; <い>
- D - I - 0x02D834 21:9824: 08 98     .word off_9808



off_9826:
- D - I - 0x02D836 21:9826: 00        .byte $00
- D - I - 0x02D837 21:9827: 02        .byte $02	; <い>
- D - I - 0x02D838 21:9828: 14        .byte $14	; <と>
- D - I - 0x02D839 21:9829: 3A        .byte $3A	; <7>

- D - I - 0x02D83A 21:982A: 10        .byte $10	; <た>
- D - I - 0x02D83B 21:982B: 03        .byte $03	; <う>
- D - I - 0x02D83C 21:982C: 10        .byte $10	; <た>
- D - I - 0x02D83D 21:982D: 38        .byte $38	; <5>
- D - I - 0x02D83E 21:982E: 14        .byte $14	; <と>
- D - I - 0x02D83F 21:982F: 2C        .byte $2C	; <わ>
- D - I - 0x02D840 21:9830: 18        .byte $18	; <ね>
- D - I - 0x02D841 21:9831: 2D        .byte $2D	; <を>

- D - I - 0x02D842 21:9832: 08        .byte $08	; <く>
- D - I - 0x02D843 21:9833: 04        .byte $04	; <え>
- D - I - 0x02D844 21:9834: 17        .byte $17	; <ぬ>
- D - I - 0x02D845 21:9835: 2E        .byte $2E	; <ん>
- D - I - 0x02D846 21:9836: 18        .byte $18	; <ね>
- D - I - 0x02D847 21:9837: 2F        .byte $2F	; <っ>

- D - I - 0x02D848 21:9838: 02        .byte $02	; <い>
- D - I - 0x02D849 21:9839: 7C 97     .word off_977C



off_983B:
- D - I - 0x02D84B 21:983B: 08        .byte $08	; <く>
- D - I - 0x02D84C 21:983C: 02        .byte $02	; <い>
- D - I - 0x02D84D 21:983D: 14        .byte $14	; <と>
- D - I - 0x02D84E 21:983E: 1B        .byte $1B	; <ひ>
- D - I - 0x02D84F 21:983F: 18        .byte $18	; <ね>
- D - I - 0x02D850 21:9840: 1E        .byte $1E	; <ほ>

- D - I - 0x02D851 21:9841: 10        .byte $10	; <た>
- D - I - 0x02D852 21:9842: 03        .byte $03	; <う>
- D - I - 0x02D853 21:9843: 10        .byte $10	; <た>
- D - I - 0x02D854 21:9844: 24        .byte $24	; <や>
- D - I - 0x02D855 21:9845: 14        .byte $14	; <と>
- D - I - 0x02D856 21:9846: 25        .byte $25	; <ゆ>
- D - I - 0x02D857 21:9847: 18        .byte $18	; <ね>
- D - I - 0x02D858 21:9848: 30        .byte $30	; <ゃ>

- D - I - 0x02D859 21:9849: 08        .byte $08	; <く>
- D - I - 0x02D85A 21:984A: 04        .byte $04	; <え>
- D - I - 0x02D85B 21:984B: 17        .byte $17	; <ぬ>
- D - I - 0x02D85C 21:984C: 27        .byte $27	; <ら>
- D - I - 0x02D85D 21:984D: 18        .byte $18	; <ね>
- D - I - 0x02D85E 21:984E: 32        .byte $32	; <ょ>

- D - I - 0x02D85F 21:984F: 02        .byte $02	; <い>
- D - I - 0x02D860 21:9850: 7C 97     .word off_977C



off_9852:
- D - I - 0x02D862 21:9852: 08        .byte $08	; <く>
- D - I - 0x02D863 21:9853: 02        .byte $02	; <い>
- D - I - 0x02D864 21:9854: 14        .byte $14	; <と>
- D - I - 0x02D865 21:9855: 31        .byte $31	; <ゅ>
- D - I - 0x02D866 21:9856: 18        .byte $18	; <ね>
- D - I - 0x02D867 21:9857: 34        .byte $34	; <1>

- D - I - 0x02D868 21:9858: 10        .byte $10	; <た>
- D - I - 0x02D869 21:9859: 03        .byte $03	; <う>
- D - I - 0x02D86A 21:985A: 10        .byte $10	; <た>
- D - I - 0x02D86B 21:985B: 3B        .byte $3B	; <8>
- D - I - 0x02D86C 21:985C: 14        .byte $14	; <と>
- D - I - 0x02D86D 21:985D: 33        .byte $33	; <0>
- D - I - 0x02D86E 21:985E: 18        .byte $18	; <ね>
- D - I - 0x02D86F 21:985F: 36        .byte $36	; <3>

- D - I - 0x02D870 21:9860: 08        .byte $08	; <く>
- D - I - 0x02D871 21:9861: 04        .byte $04	; <え>
- D - I - 0x02D872 21:9862: 17        .byte $17	; <ぬ>
- D - I - 0x02D873 21:9863: 39        .byte $39	; <6>
- D - I - 0x02D874 21:9864: 18        .byte $18	; <ね>
- D - I - 0x02D875 21:9865: 3C        .byte $3C	; <9>

- D - I - 0x02D876 21:9866: 02        .byte $02	; <い>
- D - I - 0x02D877 21:9867: 7C 97     .word off_977C



off_9869:
- D - I - 0x02D879 21:9869: 10        .byte $10	; <た>
- D - I - 0x02D87A 21:986A: 02        .byte $02	; <い>
- D - I - 0x02D87B 21:986B: 10        .byte $10	; <た>
- D - I - 0x02D87C 21:986C: 5E        .byte $5E	; <ホ>
- D - I - 0x02D87D 21:986D: 14        .byte $14	; <と>
- D - I - 0x02D87E 21:986E: 5F        .byte $5F	; <マ>
- D - I - 0x02D87F 21:986F: 18        .byte $18	; <ね>
- D - I - 0x02D880 21:9870: 12        .byte $12	; <つ>

- D - I - 0x02D881 21:9871: 10        .byte $10	; <た>
- D - I - 0x02D882 21:9872: 03        .byte $03	; <う>
- D - I - 0x02D883 21:9873: 10        .byte $10	; <た>
- D - I - 0x02D884 21:9874: 74        .byte $74	; <ィ>
- D - I - 0x02D885 21:9875: 14        .byte $14	; <と>
- D - I - 0x02D886 21:9876: 70        .byte $70	; <ャ>
- D - I - 0x02D887 21:9877: 18        .byte $18	; <ね>
- D - I - 0x02D888 21:9878: 71        .byte $71	; <ュ>

- D - I - 0x02D889 21:9879: 08        .byte $08	; <く>
- D - I - 0x02D88A 21:987A: 04        .byte $04	; <え>
- D - I - 0x02D88B 21:987B: 17        .byte $17	; <ぬ>
- D - I - 0x02D88C 21:987C: 72        .byte $72	; <ョ>
- D - I - 0x02D88D 21:987D: 18        .byte $18	; <ね>
- D - I - 0x02D88E 21:987E: 73        .byte $73	; <ヮ>

- D - I - 0x02D88F 21:987F: 08        .byte $08	; <く>
- D - I - 0x02D890 21:9880: 02        .byte $02	; <い>
- D - I - 0x02D891 21:9881: 11        .byte $11	; <ち>
- D - I - 0x02D892 21:9882: 4B        .byte $4B	; <サ>
- D - I - 0x02D893 21:9883: 15        .byte $15	; <な>
- D - I - 0x02D894 21:9884: 4E        .byte $4E	; <セ>

- D - I - 0x02D895 21:9885: 00        .byte $00
- D - I - 0x02D896 21:9886: 03        .byte $03	; <う>
- D - I - 0x02D897 21:9887: 11        .byte $11	; <ち>
- D - I - 0x02D898 21:9888: 60        .byte $60	; <ミ>

- D - I - 0x02D899 21:9889: 08        .byte $08	; <く>
- D - I - 0x02D89A 21:988A: 04        .byte $04	; <え>
- D - I - 0x02D89B 21:988B: 19        .byte $19	; <の>
- D - I - 0x02D89C 21:988C: 5C        .byte $5C	; <フ>
- D - I - 0x02D89D 21:988D: 81        .byte $81	; <A>
- D - I - 0x02D89E 21:988E: 5D        .byte $5D	; <ヘ>

- D - I - 0x02D89F 21:988F: 02        .byte $02	; <い>
- D - I - 0x02D8A0 21:9890: 8C 97     .word off_978C



off_9892:
- D - I - 0x02D8A2 21:9892: 08        .byte $08	; <く>
- D - I - 0x02D8A3 21:9893: 02        .byte $02	; <い>
- D - I - 0x02D8A4 21:9894: 14        .byte $14	; <と>
- D - I - 0x02D8A5 21:9895: 5B        .byte $5B	; <ヒ>
- D - I - 0x02D8A6 21:9896: 18        .byte $18	; <ね>
- D - I - 0x02D8A7 21:9897: 76        .byte $76	; <ォ>

- D - I - 0x02D8A8 21:9898: 10        .byte $10	; <た>
- D - I - 0x02D8A9 21:9899: 03        .byte $03	; <う>
- D - I - 0x02D8AA 21:989A: 10        .byte $10	; <た>
- D - I - 0x02D8AB 21:989B: 64        .byte $64	; <ヤ>
- D - I - 0x02D8AC 21:989C: 14        .byte $14	; <と>
- D - I - 0x02D8AD 21:989D: 0D        .byte $0D	; <す>
- D - I - 0x02D8AE 21:989E: 18        .byte $18	; <ね>
- D - I - 0x02D8AF 21:989F: 75        .byte $75	; <ェ>

- D - I - 0x02D8B0 21:98A0: 08        .byte $08	; <く>
- D - I - 0x02D8B1 21:98A1: 04        .byte $04	; <え>
- D - I - 0x02D8B2 21:98A2: 17        .byte $17	; <ぬ>
- D - I - 0x02D8B3 21:98A3: 0F        .byte $0F	; <そ>
- D - I - 0x02D8B4 21:98A4: 18        .byte $18	; <ね>
- D - I - 0x02D8B5 21:98A5: 77        .byte $77	; <:>

- D - I - 0x02D8B6 21:98A6: 02        .byte $02	; <い>
- D - I - 0x02D8B7 21:98A7: 7C 97     .word off_977C



off_98A9:
- D - I - 0x02D8B9 21:98A9: 00        .byte $00
- D - I - 0x02D8BA 21:98AA: 02        .byte $02	; <い>
- D - I - 0x02D8BB 21:98AB: 14        .byte $14	; <と>
- D - I - 0x02D8BC 21:98AC: 3A        .byte $3A	; <7>

- D - I - 0x02D8BD 21:98AD: 10        .byte $10	; <た>
- D - I - 0x02D8BE 21:98AE: 03        .byte $03	; <う>
- D - I - 0x02D8BF 21:98AF: 10        .byte $10	; <た>
- D - I - 0x02D8C0 21:98B0: 38        .byte $38	; <5>
- D - I - 0x02D8C1 21:98B1: 14        .byte $14	; <と>
- D - I - 0x02D8C2 21:98B2: 2C        .byte $2C	; <わ>
- D - I - 0x02D8C3 21:98B3: 18        .byte $18	; <ね>
- D - I - 0x02D8C4 21:98B4: 3E        .byte $3E	; <Jr>

- D - I - 0x02D8C5 21:98B5: 08        .byte $08	; <く>
- D - I - 0x02D8C6 21:98B6: 04        .byte $04	; <え>
- D - I - 0x02D8C7 21:98B7: 17        .byte $17	; <ぬ>
- D - I - 0x02D8C8 21:98B8: 39        .byte $39	; <6>
- D - I - 0x02D8C9 21:98B9: 18        .byte $18	; <ね>
- D - I - 0x02D8CA 21:98BA: 3C        .byte $3C	; <9>

- D - I - 0x02D8CB 21:98BB: 02        .byte $02	; <い>
- D - I - 0x02D8CC 21:98BC: 7C 97     .word off_977C



off_98BE:
- D - I - 0x02D8CE 21:98BE: 08        .byte $08	; <く>
- D - I - 0x02D8CF 21:98BF: 02        .byte $02	; <い>
- D - I - 0x02D8D0 21:98C0: 14        .byte $14	; <と>
- D - I - 0x02D8D1 21:98C1: 1B        .byte $1B	; <ひ>
- D - I - 0x02D8D2 21:98C2: 18        .byte $18	; <ね>
- D - I - 0x02D8D3 21:98C3: 1E        .byte $1E	; <ほ>

- D - I - 0x02D8D4 21:98C4: 10        .byte $10	; <た>
- D - I - 0x02D8D5 21:98C5: 03        .byte $03	; <う>
- D - I - 0x02D8D6 21:98C6: 10        .byte $10	; <た>
- D - I - 0x02D8D7 21:98C7: 24        .byte $24	; <や>
- D - I - 0x02D8D8 21:98C8: 14        .byte $14	; <と>
- D - I - 0x02D8D9 21:98C9: 25        .byte $25	; <ゆ>
- D - I - 0x02D8DA 21:98CA: 18        .byte $18	; <ね>
- D - I - 0x02D8DB 21:98CB: 30        .byte $30	; <ゃ>

- D - I - 0x02D8DC 21:98CC: 08        .byte $08	; <く>
- D - I - 0x02D8DD 21:98CD: 04        .byte $04	; <え>
- D - I - 0x02D8DE 21:98CE: 17        .byte $17	; <ぬ>
- D - I - 0x02D8DF 21:98CF: 0F        .byte $0F	; <そ>
- D - I - 0x02D8E0 21:98D0: 18        .byte $18	; <ね>
- D - I - 0x02D8E1 21:98D1: 32        .byte $32	; <ょ>

- D - I - 0x02D8E2 21:98D2: 02        .byte $02	; <い>
- D - I - 0x02D8E3 21:98D3: 7C 97     .word off_977C



off_98D5:
- D - I - 0x02D8E5 21:98D5: 08        .byte $08	; <く>
- D - I - 0x02D8E6 21:98D6: 03        .byte $03	; <う>
- D - I - 0x02D8E7 21:98D7: 14        .byte $14	; <と>
- D - I - 0x02D8E8 21:98D8: 22        .byte $22	; <め>
- D - I - 0x02D8E9 21:98D9: 18        .byte $18	; <ね>
- D - I - 0x02D8EA 21:98DA: 28        .byte $28	; <り>

- D - I - 0x02D8EB 21:98DB: 08        .byte $08	; <く>
- D - I - 0x02D8EC 21:98DC: 04        .byte $04	; <え>
- D - I - 0x02D8ED 21:98DD: 17        .byte $17	; <ぬ>
- D - I - 0x02D8EE 21:98DE: 0F        .byte $0F	; <そ>
- D - I - 0x02D8EF 21:98DF: 18        .byte $18	; <ね>
- D - I - 0x02D8F0 21:98E0: 2A        .byte $2A	; <れ>

- D - I - 0x02D8F1 21:98E1: 02        .byte $02	; <い>
- D - I - 0x02D8F2 21:98E2: 08 98     .word off_9808



off_98E4_3F:
- D - I - 0x02D8F4 21:98E4: 00        .byte $00
- D - I - 0x02D8F5 21:98E5: 09        .byte $09	; <け>
- D - I - 0x02D8F6 21:98E6: 6B        .byte $6B	; <ロ>
- D - I - 0x02D8F7 21:98E7: 69        .byte $69	; <ル>

- D - I - 0x02D8F8 21:98E8: 08        .byte $08	; <く>
- D - I - 0x02D8F9 21:98E9: 16        .byte $16	; <に>
- D - I - 0x02D8FA 21:98EA: A3        .byte $A3	; <げ>
- D - I - 0x02D8FB 21:98EB: 3F        .byte $3F	; <•>
- D - I - 0x02D8FC 21:98EC: B7        .byte $B7	; <ゲ>
- D - I - 0x02D8FD 21:98ED: 6A        .byte $6A	; <レ>

- D - I - 0x02D8FE 21:98EE: 08        .byte $08	; <く>
- D - I - 0x02D8FF 21:98EF: 09        .byte $09	; <け>
- D - I - 0x02D900 21:98F0: 9F        .byte $9F
- D - I - 0x02D901 21:98F1: 7D        .byte $7D	; <ー>
- D - I - 0x02D902 21:98F2: 6B        .byte $6B	; <ロ>
- D - I - 0x02D903 21:98F3: 6C        .byte $6C	; <ワ>

- D - I - 0x02D904 21:98F4: 18        .byte $18	; <ね>
- D - I - 0x02D905 21:98F5: 16        .byte $16	; <に>
- D - I - 0x02D906 21:98F6: 9F        .byte $9F
- D - I - 0x02D907 21:98F7: BE        .byte $BE	; <ダ>
- D - I - 0x02D908 21:98F8: A3        .byte $A3	; <げ>
- D - I - 0x02D909 21:98F9: BF        .byte $BF	; <ヂ>
- D - I - 0x02D90A 21:98FA: B7        .byte $B7	; <ゲ>
- D - I - 0x02D90B 21:98FB: 6B        .byte $6B	; <ロ>
- D - I - 0x02D90C 21:98FC: 6B        .byte $6B	; <ロ>
- D - I - 0x02D90D 21:98FD: 6E        .byte $6E	; <ン>

- D - I - 0x02D90E 21:98FE: 02        .byte $02	; <い>
- D - I - 0x02D90F 21:98FF: 43 97     .word off_9743



off_9901_40:
- D - I - 0x02D911 21:9901: 00        .byte $00
- D - I - 0x02D912 21:9902: 09        .byte $09	; <け>
- D - I - 0x02D913 21:9903: 6B        .byte $6B	; <ロ>
- D - I - 0x02D914 21:9904: 69        .byte $69	; <ル>

- D - I - 0x02D915 21:9905: 08        .byte $08	; <く>
- D - I - 0x02D916 21:9906: 16        .byte $16	; <に>
- D - I - 0x02D917 21:9907: A3        .byte $A3	; <げ>
- D - I - 0x02D918 21:9908: 3F        .byte $3F	; <•>
- D - I - 0x02D919 21:9909: B7        .byte $B7	; <ゲ>
- D - I - 0x02D91A 21:990A: 6A        .byte $6A	; <レ>

- D - I - 0x02D91B 21:990B: 08        .byte $08	; <く>
- D - I - 0x02D91C 21:990C: 09        .byte $09	; <け>
- D - I - 0x02D91D 21:990D: 9F        .byte $9F
- D - I - 0x02D91E 21:990E: 7C        .byte $7C	; <~>
- D - I - 0x02D91F 21:990F: 6B        .byte $6B	; <ロ>
- D - I - 0x02D920 21:9910: 79        .byte $79	; <!>

- D - I - 0x02D921 21:9911: 18        .byte $18	; <ね>
- D - I - 0x02D922 21:9912: 16        .byte $16	; <に>
- D - I - 0x02D923 21:9913: 9F        .byte $9F
- D - I - 0x02D924 21:9914: 7E        .byte $7E	; <.>
- D - I - 0x02D925 21:9915: A3        .byte $A3	; <げ>
- D - I - 0x02D926 21:9916: 7F        .byte $7F	; <,>
- D - I - 0x02D927 21:9917: B7        .byte $B7	; <ゲ>
- D - I - 0x02D928 21:9918: 7A        .byte $7A	; <、>
- D - I - 0x02D929 21:9919: 6B        .byte $6B	; <ロ>
- D - I - 0x02D92A 21:991A: 7B        .byte $7B	; <。>

- D - I - 0x02D92B 21:991B: 02        .byte $02	; <い>
- D - I - 0x02D92C 21:991C: 43 97     .word off_9743



off_991E_41:
- D - I - 0x02D92E 21:991E: 03        .byte $03	; <う>
- D - I - 0x02D92F 21:991F: 2B 99     .word off_992B
- D - I - 0x02D931 21:9921: 59 99     .word off_9959
- D - I - 0x02D933 21:9923: 4C 99     .word off_994C
- D - I - 0x02D935 21:9925: 2B 99     .word off_992B
- D - I - 0x02D937 21:9927: 2B 99     .word off_992B
- D - I - 0x02D939 21:9929: 59 99     .word off_9959



off_992B:
- D - I - 0x02D93B 21:992B: 08        .byte $08	; <く>
- D - I - 0x02D93C 21:992C: 05        .byte $05	; <お>
- D - I - 0x02D93D 21:992D: 06        .byte $06	; <か>
- D - I - 0x02D93E 21:992E: 50        .byte $50	; <タ>
- D - I - 0x02D93F 21:992F: 09        .byte $09	; <け>
- D - I - 0x02D940 21:9930: 51        .byte $51	; <チ>

- D - I - 0x02D941 21:9931: 00        .byte $00
- D - I - 0x02D942 21:9932: 06        .byte $06	; <か>
- D - I - 0x02D943 21:9933: 06        .byte $06	; <か>
- D - I - 0x02D944 21:9934: 52        .byte $52	; <ツ>
; продолжение


off_9935:
- D - I - 0x02D945 21:9935: 08        .byte $08	; <く>
- D - I - 0x02D946 21:9936: 05        .byte $05	; <お>
- D - I - 0x02D947 21:9937: 0D        .byte $0D	; <す>
- D - I - 0x02D948 21:9938: 54        .byte $54	; <ト>
- D - I - 0x02D949 21:9939: 0A        .byte $0A	; <こ>
- D - I - 0x02D94A 21:993A: 02        .byte $02	; <い>

- D - I - 0x02D94B 21:993B: 08        .byte $08	; <く>
- D - I - 0x02D94C 21:993C: 06        .byte $06	; <か>
- D - I - 0x02D94D 21:993D: 0A        .byte $0A	; <こ>
- D - I - 0x02D94E 21:993E: 53        .byte $53	; <テ>
- D - I - 0x02D94F 21:993F: 0E        .byte $0E	; <せ>
- D - I - 0x02D950 21:9940: 56        .byte $56	; <ニ>

- D - I - 0x02D951 21:9941: 10        .byte $10	; <た>
- D - I - 0x02D952 21:9942: 07        .byte $07	; <き>
- D - I - 0x02D953 21:9943: 06        .byte $06	; <か>
- D - I - 0x02D954 21:9944: 58        .byte $58	; <ネ>
- D - I - 0x02D955 21:9945: 0A        .byte $0A	; <こ>
- D - I - 0x02D956 21:9946: 59        .byte $59	; <ノ>
- D - I - 0x02D957 21:9947: 0E        .byte $0E	; <せ>
- D - I - 0x02D958 21:9948: 5C        .byte $5C	; <フ>

- D - I - 0x02D959 21:9949: 02        .byte $02	; <い>
- D - I - 0x02D95A 21:994A: 73 99     .word off_9973



off_994C:
- D - I - 0x02D95C 21:994C: 08        .byte $08	; <く>
- D - I - 0x02D95D 21:994D: 05        .byte $05	; <お>
- D - I - 0x02D95E 21:994E: 06        .byte $06	; <か>
- D - I - 0x02D95F 21:994F: 57        .byte $57	; <ヌ>
- D - I - 0x02D960 21:9950: 09        .byte $09	; <け>
- D - I - 0x02D961 21:9951: 55        .byte $55	; <ナ>

- D - I - 0x02D962 21:9952: 00        .byte $00
- D - I - 0x02D963 21:9953: 06        .byte $06	; <か>
- D - I - 0x02D964 21:9954: 06        .byte $06	; <か>
- D - I - 0x02D965 21:9955: 5D        .byte $5D	; <ヘ>

- D - I - 0x02D966 21:9956: 02        .byte $02	; <い>
- D - I - 0x02D967 21:9957: 35 99     .word off_9935



off_9959:
- D - I - 0x02D969 21:9959: 18        .byte $18	; <ね>
- D - I - 0x02D96A 21:995A: 05        .byte $05	; <お>
- D - I - 0x02D96B 21:995B: 06        .byte $06	; <か>
- D - I - 0x02D96C 21:995C: 63        .byte $63	; <モ>
- D - I - 0x02D96D 21:995D: 09        .byte $09	; <け>
- D - I - 0x02D96E 21:995E: 66        .byte $66	; <ヨ>
- D - I - 0x02D96F 21:995F: 0A        .byte $0A	; <こ>
- D - I - 0x02D970 21:9960: 02        .byte $02	; <い>
- D - I - 0x02D971 21:9961: 0D        .byte $0D	; <す>
- D - I - 0x02D972 21:9962: 67        .byte $67	; <ラ>

- D - I - 0x02D973 21:9963: 10        .byte $10	; <た>
- D - I - 0x02D974 21:9964: 06        .byte $06	; <か>
- D - I - 0x02D975 21:9965: 06        .byte $06	; <か>
- D - I - 0x02D976 21:9966: 52        .byte $52	; <ツ>
- D - I - 0x02D977 21:9967: 0A        .byte $0A	; <こ>
- D - I - 0x02D978 21:9968: 53        .byte $53	; <テ>
- D - I - 0x02D979 21:9969: 0E        .byte $0E	; <せ>
- D - I - 0x02D97A 21:996A: 56        .byte $56	; <ニ>

- D - I - 0x02D97B 21:996B: 10        .byte $10	; <た>
- D - I - 0x02D97C 21:996C: 07        .byte $07	; <き>
- D - I - 0x02D97D 21:996D: 06        .byte $06	; <か>
- D - I - 0x02D97E 21:996E: 58        .byte $58	; <ネ>
- D - I - 0x02D97F 21:996F: 0A        .byte $0A	; <こ>
- D - I - 0x02D980 21:9970: 59        .byte $59	; <ノ>
- D - I - 0x02D981 21:9971: 0E        .byte $0E	; <せ>
- D - I - 0x02D982 21:9972: 5C        .byte $5C	; <フ>
; продолжение


off_9973:
- D - I - 0x02D983 21:9973: 03        .byte $03	; <う>
- D - I - 0x02D984 21:9974: 80 99     .word off_9980
- D - I - 0x02D986 21:9976: C5 99     .word off_99C5
- D - I - 0x02D988 21:9978: 0E 9A     .word off_9A0E
- D - I - 0x02D98A 21:997A: 5B 9A     .word off_9A5B
- D - I - 0x02D98C 21:997C: A0 9A     .word off_9AA0
- D - I - 0x02D98E 21:997E: E7 9A     .word off_9AE7



off_9980:
- D - I - 0x02D990 21:9980: 10        .byte $10	; <た>
- D - I - 0x02D991 21:9981: 03        .byte $03	; <う>
- D - I - 0x02D992 21:9982: 16        .byte $16	; <に>
- D - I - 0x02D993 21:9983: 0F        .byte $0F	; <そ>
- D - I - 0x02D994 21:9984: 1A        .byte $1A	; <は>
- D - I - 0x02D995 21:9985: 1A        .byte $1A	; <は>
- D - I - 0x02D996 21:9986: 83        .byte $83	; <C>
- D - I - 0x02D997 21:9987: 1B        .byte $1B	; <ひ>

- D - I - 0x02D998 21:9988: 00        .byte $00
- D - I - 0x02D999 21:9989: 04        .byte $04	; <え>
- D - I - 0x02D99A 21:998A: 16        .byte $16	; <に>
- D - I - 0x02D99B 21:998B: 25        .byte $25	; <ゆ>

- D - I - 0x02D99C 21:998C: 08        .byte $08	; <く>
- D - I - 0x02D99D 21:998D: 05        .byte $05	; <お>
- D - I - 0x02D99E 21:998E: 11        .byte $11	; <ち>
- D - I - 0x02D99F 21:998F: 26        .byte $26	; <よ>
- D - I - 0x02D9A0 21:9990: 12        .byte $12	; <つ>
- D - I - 0x02D9A1 21:9991: 2A        .byte $2A	; <れ>

- D - I - 0x02D9A2 21:9992: 00        .byte $00
- D - I - 0x02D9A3 21:9993: 06        .byte $06	; <か>
- D - I - 0x02D9A4 21:9994: 12        .byte $12	; <つ>
- D - I - 0x02D9A5 21:9995: 2C        .byte $2C	; <わ>
; продолжение


off_9996:
- D - I - 0x02D9A6 21:9996: 10        .byte $10	; <た>
- D - I - 0x02D9A7 21:9997: 00        .byte $00
- D - I - 0x02D9A8 21:9998: 12        .byte $12	; <つ>
- D - I - 0x02D9A9 21:9999: 04        .byte $04	; <え>
- D - I - 0x02D9AA 21:999A: 16        .byte $16	; <に>
- D - I - 0x02D9AB 21:999B: 05        .byte $05	; <お>
- D - I - 0x02D9AC 21:999C: 1B        .byte $1B	; <ひ>
- D - I - 0x02D9AD 21:999D: 10        .byte $10	; <た>

- D - I - 0x02D9AE 21:999E: 10        .byte $10	; <た>
- D - I - 0x02D9AF 21:999F: 01        .byte $01	; <あ>
- D - I - 0x02D9B0 21:99A0: 0E        .byte $0E	; <せ>
- D - I - 0x02D9B1 21:99A1: 03        .byte $03	; <う>
- D - I - 0x02D9B2 21:99A2: 12        .byte $12	; <つ>
- D - I - 0x02D9B3 21:99A3: 06        .byte $06	; <か>
- D - I - 0x02D9B4 21:99A4: 16        .byte $16	; <に>
- D - I - 0x02D9B5 21:99A5: 07        .byte $07	; <き>

- D - I - 0x02D9B6 21:99A6: 18        .byte $18	; <ね>
- D - I - 0x02D9B7 21:99A7: 02        .byte $02	; <い>
- D - I - 0x02D9B8 21:99A8: 0B        .byte $0B	; <さ>
- D - I - 0x02D9B9 21:99A9: 08        .byte $08	; <く>
- D - I - 0x02D9BA 21:99AA: 0F        .byte $0F	; <そ>
- D - I - 0x02D9BB 21:99AB: 09        .byte $09	; <け>
- D - I - 0x02D9BC 21:99AC: 0E        .byte $0E	; <せ>
- D - I - 0x02D9BD 21:99AD: 02        .byte $02	; <い>
- D - I - 0x02D9BE 21:99AE: 12        .byte $12	; <つ>
- D - I - 0x02D9BF 21:99AF: 0C        .byte $0C	; <し>

- D - I - 0x02D9C0 21:99B0: 18        .byte $18	; <ね>
- D - I - 0x02D9C1 21:99B1: 03        .byte $03	; <う>
- D - I - 0x02D9C2 21:99B2: 07        .byte $07	; <き>
- D - I - 0x02D9C3 21:99B3: 22        .byte $22	; <め>
- D - I - 0x02D9C4 21:99B4: 0B        .byte $0B	; <さ>
- D - I - 0x02D9C5 21:99B5: 0A        .byte $0A	; <こ>
- D - I - 0x02D9C6 21:99B6: 0F        .byte $0F	; <そ>
- D - I - 0x02D9C7 21:99B7: 0B        .byte $0B	; <さ>
- D - I - 0x02D9C8 21:99B8: 11        .byte $11	; <ち>
- D - I - 0x02D9C9 21:99B9: 0E        .byte $0E	; <せ>

- D - I - 0x02D9CA 21:99BA: 18        .byte $18	; <ね>
- D - I - 0x02D9CB 21:99BB: 04        .byte $04	; <え>
- D - I - 0x02D9CC 21:99BC: 06        .byte $06	; <か>
- D - I - 0x02D9CD 21:99BD: 28        .byte $28	; <り>
- D - I - 0x02D9CE 21:99BE: 0B        .byte $0B	; <さ>
- D - I - 0x02D9CF 21:99BF: 20        .byte $20	; <み>
- D - I - 0x02D9D0 21:99C0: 0F        .byte $0F	; <そ>
- D - I - 0x02D9D1 21:99C1: 21        .byte $21	; <む>
- D - I - 0x02D9D2 21:99C2: 11        .byte $11	; <ち>
- D - I - 0x02D9D3 21:99C3: 24        .byte $24	; <や>

- D - I - 0x02D9D4 21:99C4: 01        .byte $01	; <あ>



off_99C5:
- D - I - 0x02D9D5 21:99C5: 10        .byte $10	; <た>
- D - I - 0x02D9D6 21:99C6: 03        .byte $03	; <う>
- D - I - 0x02D9D7 21:99C7: 16        .byte $16	; <に>
- D - I - 0x02D9D8 21:99C8: 0F        .byte $0F	; <そ>
- D - I - 0x02D9D9 21:99C9: 1A        .byte $1A	; <は>
- D - I - 0x02D9DA 21:99CA: 1A        .byte $1A	; <は>
- D - I - 0x02D9DB 21:99CB: 83        .byte $83	; <C>
- D - I - 0x02D9DC 21:99CC: 1B        .byte $1B	; <ひ>

- D - I - 0x02D9DD 21:99CD: 00        .byte $00
- D - I - 0x02D9DE 21:99CE: 04        .byte $04	; <え>
- D - I - 0x02D9DF 21:99CF: 16        .byte $16	; <に>
- D - I - 0x02D9E0 21:99D0: 25        .byte $25	; <ゆ>

- D - I - 0x02D9E1 21:99D1: 08        .byte $08	; <く>
- D - I - 0x02D9E2 21:99D2: 05        .byte $05	; <お>
- D - I - 0x02D9E3 21:99D3: 11        .byte $11	; <ち>
- D - I - 0x02D9E4 21:99D4: 18        .byte $18	; <ね>
- D - I - 0x02D9E5 21:99D5: 12        .byte $12	; <つ>
- D - I - 0x02D9E6 21:99D6: 2A        .byte $2A	; <れ>

- D - I - 0x02D9E7 21:99D7: 00        .byte $00
- D - I - 0x02D9E8 21:99D8: 06        .byte $06	; <か>
- D - I - 0x02D9E9 21:99D9: 12        .byte $12	; <つ>
- D - I - 0x02D9EA 21:99DA: 2C        .byte $2C	; <わ>
; продолжение


off_99DB:
- D - I - 0x02D9EB 21:99DB: 10        .byte $10	; <た>
- D - I - 0x02D9EC 21:99DC: 00        .byte $00
- D - I - 0x02D9ED 21:99DD: 12        .byte $12	; <つ>
- D - I - 0x02D9EE 21:99DE: 04        .byte $04	; <え>
- D - I - 0x02D9EF 21:99DF: 16        .byte $16	; <に>
- D - I - 0x02D9F0 21:99E0: 05        .byte $05	; <お>
- D - I - 0x02D9F1 21:99E1: 1B        .byte $1B	; <ひ>
- D - I - 0x02D9F2 21:99E2: 10        .byte $10	; <た>

- D - I - 0x02D9F3 21:99E3: 10        .byte $10	; <た>
- D - I - 0x02D9F4 21:99E4: 01        .byte $01	; <あ>
- D - I - 0x02D9F5 21:99E5: 0E        .byte $0E	; <せ>
- D - I - 0x02D9F6 21:99E6: 03        .byte $03	; <う>
- D - I - 0x02D9F7 21:99E7: 12        .byte $12	; <つ>
- D - I - 0x02D9F8 21:99E8: 06        .byte $06	; <か>
- D - I - 0x02D9F9 21:99E9: 16        .byte $16	; <に>
- D - I - 0x02D9FA 21:99EA: 07        .byte $07	; <き>

- D - I - 0x02D9FB 21:99EB: 18        .byte $18	; <ね>
- D - I - 0x02D9FC 21:99EC: 02        .byte $02	; <い>
- D - I - 0x02D9FD 21:99ED: 08        .byte $08	; <く>
- D - I - 0x02D9FE 21:99EE: 11        .byte $11	; <ち>
- D - I - 0x02D9FF 21:99EF: 0C        .byte $0C	; <し>
- D - I - 0x02DA00 21:99F0: 14        .byte $14	; <と>
- D - I - 0x02DA01 21:99F1: 0E        .byte $0E	; <せ>
- D - I - 0x02DA02 21:99F2: 02        .byte $02	; <い>
- D - I - 0x02DA03 21:99F3: 12        .byte $12	; <つ>
- D - I - 0x02DA04 21:99F4: 0C        .byte $0C	; <し>

- D - I - 0x02DA05 21:99F5: 20        .byte $20	; <み>
- D - I - 0x02DA06 21:99F6: 03        .byte $03	; <う>
- D - I - 0x02DA07 21:99F7: 04        .byte $04	; <え>
- D - I - 0x02DA08 21:99F8: 12        .byte $12	; <つ>
- D - I - 0x02DA09 21:99F9: 08        .byte $08	; <く>
- D - I - 0x02DA0A 21:99FA: 13        .byte $13	; <て>
- D - I - 0x02DA0B 21:99FB: 0C        .byte $0C	; <し>
- D - I - 0x02DA0C 21:99FC: 16        .byte $16	; <に>
- D - I - 0x02DA0D 21:99FD: 0F        .byte $0F	; <そ>
- D - I - 0x02DA0E 21:99FE: 02        .byte $02	; <い>
- D - I - 0x02DA0F 21:99FF: 11        .byte $11	; <ち>
- D - I - 0x02DA10 21:9A00: 0E        .byte $0E	; <せ>

- D - I - 0x02DA11 21:9A01: 20        .byte $20	; <み>
- D - I - 0x02DA12 21:9A02: 04        .byte $04	; <え>
- D - I - 0x02DA13 21:9A03: 06        .byte $06	; <か>
- D - I - 0x02DA14 21:9A04: 28        .byte $28	; <り>
- D - I - 0x02DA15 21:9A05: 08        .byte $08	; <く>
- D - I - 0x02DA16 21:9A06: 19        .byte $19	; <の>
- D - I - 0x02DA17 21:9A07: 0A        .byte $0A	; <こ>
- D - I - 0x02DA18 21:9A08: 02        .byte $02	; <い>
- D - I - 0x02DA19 21:9A09: 0F        .byte $0F	; <そ>
- D - I - 0x02DA1A 21:9A0A: 1C        .byte $1C	; <ふ>
- D - I - 0x02DA1B 21:9A0B: 11        .byte $11	; <ち>
- D - I - 0x02DA1C 21:9A0C: 0D        .byte $0D	; <す>

- D - I - 0x02DA1D 21:9A0D: 01        .byte $01	; <あ>



off_9A0E:
- D - I - 0x02DA1E 21:9A0E: 18        .byte $18	; <ね>
- D - I - 0x02DA1F 21:9A0F: 03        .byte $03	; <う>
- D - I - 0x02DA20 21:9A10: 17        .byte $17	; <ぬ>
- D - I - 0x02DA21 21:9A11: 33        .byte $33	; <0>
- D - I - 0x02DA22 21:9A12: 16        .byte $16	; <に>
- D - I - 0x02DA23 21:9A13: 1E        .byte $1E	; <ほ>
- D - I - 0x02DA24 21:9A14: 1B        .byte $1B	; <ひ>
- D - I - 0x02DA25 21:9A15: 36        .byte $36	; <3>
- D - I - 0x02DA26 21:9A16: 83        .byte $83	; <C>
- D - I - 0x02DA27 21:9A17: 1B        .byte $1B	; <ひ>

- D - I - 0x02DA28 21:9A18: 08        .byte $08	; <く>
- D - I - 0x02DA29 21:9A19: 04        .byte $04	; <え>
- D - I - 0x02DA2A 21:9A1A: 17        .byte $17	; <ぬ>
- D - I - 0x02DA2B 21:9A1B: 39        .byte $39	; <6>
- D - I - 0x02DA2C 21:9A1C: 16        .byte $16	; <に>
- D - I - 0x02DA2D 21:9A1D: 2F        .byte $2F	; <っ>

- D - I - 0x02DA2E 21:9A1E: 08        .byte $08	; <く>
- D - I - 0x02DA2F 21:9A1F: 05        .byte $05	; <お>
- D - I - 0x02DA30 21:9A20: 11        .byte $11	; <ち>
- D - I - 0x02DA31 21:9A21: 26        .byte $26	; <よ>
- D - I - 0x02DA32 21:9A22: 12        .byte $12	; <つ>
- D - I - 0x02DA33 21:9A23: 2A        .byte $2A	; <れ>

- D - I - 0x02DA34 21:9A24: 00        .byte $00
- D - I - 0x02DA35 21:9A25: 06        .byte $06	; <か>
- D - I - 0x02DA36 21:9A26: 12        .byte $12	; <つ>
- D - I - 0x02DA37 21:9A27: 2C        .byte $2C	; <わ>
; продолжение


off_9A28:
- D - I - 0x02DA38 21:9A28: 10        .byte $10	; <た>
- D - I - 0x02DA39 21:9A29: 00        .byte $00
- D - I - 0x02DA3A 21:9A2A: 13        .byte $13	; <て>
- D - I - 0x02DA3B 21:9A2B: 1F        .byte $1F	; <ま>
- D - I - 0x02DA3C 21:9A2C: 17        .byte $17	; <ぬ>
- D - I - 0x02DA3D 21:9A2D: 27        .byte $27	; <ら>
- D - I - 0x02DA3E 21:9A2E: 1B        .byte $1B	; <ひ>
- D - I - 0x02DA3F 21:9A2F: 10        .byte $10	; <た>

- D - I - 0x02DA40 21:9A30: 20        .byte $20	; <み>
- D - I - 0x02DA41 21:9A31: 01        .byte $01	; <あ>
- D - I - 0x02DA42 21:9A32: 04        .byte $04	; <え>
- D - I - 0x02DA43 21:9A33: 30        .byte $30	; <ゃ>
- D - I - 0x02DA44 21:9A34: 08        .byte $08	; <く>
- D - I - 0x02DA45 21:9A35: 31        .byte $31	; <ゅ>
- D - I - 0x02DA46 21:9A36: 0E        .byte $0E	; <せ>
- D - I - 0x02DA47 21:9A37: 34        .byte $34	; <1>
- D - I - 0x02DA48 21:9A38: 12        .byte $12	; <つ>
- D - I - 0x02DA49 21:9A39: 35        .byte $35	; <2>
- D - I - 0x02DA4A 21:9A3A: 17        .byte $17	; <ぬ>
- D - I - 0x02DA4B 21:9A3B: 2D        .byte $2D	; <を>

- D - I - 0x02DA4C 21:9A3C: 18        .byte $18	; <ね>
- D - I - 0x02DA4D 21:9A3D: 02        .byte $02	; <い>
- D - I - 0x02DA4E 21:9A3E: 04        .byte $04	; <え>
- D - I - 0x02DA4F 21:9A3F: 32        .byte $32	; <ょ>
- D - I - 0x02DA50 21:9A40: 08        .byte $08	; <く>
- D - I - 0x02DA51 21:9A41: 01        .byte $01	; <あ>
- D - I - 0x02DA52 21:9A42: 0C        .byte $0C	; <し>
- D - I - 0x02DA53 21:9A43: 01        .byte $01	; <あ>
- D - I - 0x02DA54 21:9A44: 12        .byte $12	; <つ>
- D - I - 0x02DA55 21:9A45: 37        .byte $37	; <4>

- D - I - 0x02DA56 21:9A46: 18        .byte $18	; <ね>
- D - I - 0x02DA57 21:9A47: 03        .byte $03	; <う>
- D - I - 0x02DA58 21:9A48: 04        .byte $04	; <え>
- D - I - 0x02DA59 21:9A49: 38        .byte $38	; <5>
- D - I - 0x02DA5A 21:9A4A: 08        .byte $08	; <く>
- D - I - 0x02DA5B 21:9A4B: 3C        .byte $3C	; <9>
- D - I - 0x02DA5C 21:9A4C: 0C        .byte $0C	; <し>
- D - I - 0x02DA5D 21:9A4D: 3C        .byte $3C	; <9>
- D - I - 0x02DA5E 21:9A4E: 11        .byte $11	; <ち>
- D - I - 0x02DA5F 21:9A4F: 3D        .byte $3D	; <+>

- D - I - 0x02DA60 21:9A50: 18        .byte $18	; <ね>
- D - I - 0x02DA61 21:9A51: 04        .byte $04	; <え>
- D - I - 0x02DA62 21:9A52: 06        .byte $06	; <か>
- D - I - 0x02DA63 21:9A53: 3A        .byte $3A	; <7>
- D - I - 0x02DA64 21:9A54: 0B        .byte $0B	; <さ>
- D - I - 0x02DA65 21:9A55: 3B        .byte $3B	; <8>
- D - I - 0x02DA66 21:9A56: 0F        .byte $0F	; <そ>
- D - I - 0x02DA67 21:9A57: 3E        .byte $3E	; <Jr>
- D - I - 0x02DA68 21:9A58: 11        .byte $11	; <ち>
- D - I - 0x02DA69 21:9A59: 3F        .byte $3F	; <•>

- D - I - 0x02DA6A 21:9A5A: 01        .byte $01	; <あ>



off_9A5B:
- D - I - 0x02DA6B 21:9A5B: 10        .byte $10	; <た>
- D - I - 0x02DA6C 21:9A5C: 03        .byte $03	; <う>
- D - I - 0x02DA6D 21:9A5D: 16        .byte $16	; <に>
- D - I - 0x02DA6E 21:9A5E: 0F        .byte $0F	; <そ>
- D - I - 0x02DA6F 21:9A5F: 1A        .byte $1A	; <は>
- D - I - 0x02DA70 21:9A60: 1A        .byte $1A	; <は>
- D - I - 0x02DA71 21:9A61: 83        .byte $83	; <C>
- D - I - 0x02DA72 21:9A62: 1B        .byte $1B	; <ひ>

- D - I - 0x02DA73 21:9A63: 00        .byte $00
- D - I - 0x02DA74 21:9A64: 04        .byte $04	; <え>
- D - I - 0x02DA75 21:9A65: 16        .byte $16	; <に>
- D - I - 0x02DA76 21:9A66: 25        .byte $25	; <ゆ>

- D - I - 0x02DA77 21:9A67: 08        .byte $08	; <く>
- D - I - 0x02DA78 21:9A68: 05        .byte $05	; <お>
- D - I - 0x02DA79 21:9A69: 11        .byte $11	; <ち>
- D - I - 0x02DA7A 21:9A6A: 26        .byte $26	; <よ>
- D - I - 0x02DA7B 21:9A6B: 12        .byte $12	; <つ>
- D - I - 0x02DA7C 21:9A6C: 2A        .byte $2A	; <れ>

- D - I - 0x02DA7D 21:9A6D: 00        .byte $00
- D - I - 0x02DA7E 21:9A6E: 06        .byte $06	; <か>
- D - I - 0x02DA7F 21:9A6F: 12        .byte $12	; <つ>
- D - I - 0x02DA80 21:9A70: 2C        .byte $2C	; <わ>
; продолжение


off_9A71:
- D - I - 0x02DA81 21:9A71: 10        .byte $10	; <た>
- D - I - 0x02DA82 21:9A72: 00        .byte $00
- D - I - 0x02DA83 21:9A73: 12        .byte $12	; <つ>
- D - I - 0x02DA84 21:9A74: 04        .byte $04	; <え>
- D - I - 0x02DA85 21:9A75: 16        .byte $16	; <に>
- D - I - 0x02DA86 21:9A76: 05        .byte $05	; <お>
- D - I - 0x02DA87 21:9A77: 1B        .byte $1B	; <ひ>
- D - I - 0x02DA88 21:9A78: 10        .byte $10	; <た>

- D - I - 0x02DA89 21:9A79: 10        .byte $10	; <た>
- D - I - 0x02DA8A 21:9A7A: 01        .byte $01	; <あ>
- D - I - 0x02DA8B 21:9A7B: 0E        .byte $0E	; <せ>
- D - I - 0x02DA8C 21:9A7C: 03        .byte $03	; <う>
- D - I - 0x02DA8D 21:9A7D: 12        .byte $12	; <つ>
- D - I - 0x02DA8E 21:9A7E: 06        .byte $06	; <か>
- D - I - 0x02DA8F 21:9A7F: 16        .byte $16	; <に>
- D - I - 0x02DA90 21:9A80: 07        .byte $07	; <き>

- D - I - 0x02DA91 21:9A81: 18        .byte $18	; <ね>
- D - I - 0x02DA92 21:9A82: 02        .byte $02	; <い>
- D - I - 0x02DA93 21:9A83: 08        .byte $08	; <く>
- D - I - 0x02DA94 21:9A84: 11        .byte $11	; <ち>
- D - I - 0x02DA95 21:9A85: 0C        .byte $0C	; <し>
- D - I - 0x02DA96 21:9A86: 14        .byte $14	; <と>
- D - I - 0x02DA97 21:9A87: 0E        .byte $0E	; <せ>
- D - I - 0x02DA98 21:9A88: 02        .byte $02	; <い>
- D - I - 0x02DA99 21:9A89: 12        .byte $12	; <つ>
- D - I - 0x02DA9A 21:9A8A: 0C        .byte $0C	; <し>

- D - I - 0x02DA9B 21:9A8B: 18        .byte $18	; <ね>
- D - I - 0x02DA9C 21:9A8C: 03        .byte $03	; <う>
- D - I - 0x02DA9D 21:9A8D: 04        .byte $04	; <え>
- D - I - 0x02DA9E 21:9A8E: 15        .byte $15	; <な>
- D - I - 0x02DA9F 21:9A8F: 08        .byte $08	; <く>
- D - I - 0x02DAA0 21:9A90: 29        .byte $29	; <る>
- D - I - 0x02DAA1 21:9A91: 0C        .byte $0C	; <し>
- D - I - 0x02DAA2 21:9A92: 23        .byte $23	; <も>
- D - I - 0x02DAA3 21:9A93: 11        .byte $11	; <ち>
- D - I - 0x02DAA4 21:9A94: 0E        .byte $0E	; <せ>

- D - I - 0x02DAA5 21:9A95: 18        .byte $18	; <ね>
- D - I - 0x02DAA6 21:9A96: 04        .byte $04	; <え>
- D - I - 0x02DAA7 21:9A97: 04        .byte $04	; <え>
- D - I - 0x02DAA8 21:9A98: 44        .byte $44	; <エ>
- D - I - 0x02DAA9 21:9A99: 08        .byte $08	; <く>
- D - I - 0x02DAAA 21:9A9A: 2B        .byte $2B	; <ろ>
- D - I - 0x02DAAB 21:9A9B: 0F        .byte $0F	; <そ>
- D - I - 0x02DAAC 21:9A9C: 2E        .byte $2E	; <ん>
- D - I - 0x02DAAD 21:9A9D: 11        .byte $11	; <ち>
- D - I - 0x02DAAE 21:9A9E: 24        .byte $24	; <や>

- D - I - 0x02DAAF 21:9A9F: 01        .byte $01	; <あ>



off_9AA0:
- D - I - 0x02DAB0 21:9AA0: 10        .byte $10	; <た>
- D - I - 0x02DAB1 21:9AA1: 03        .byte $03	; <う>
- D - I - 0x02DAB2 21:9AA2: 16        .byte $16	; <に>
- D - I - 0x02DAB3 21:9AA3: 0F        .byte $0F	; <そ>
- D - I - 0x02DAB4 21:9AA4: 1A        .byte $1A	; <は>
- D - I - 0x02DAB5 21:9AA5: 1A        .byte $1A	; <は>
- D - I - 0x02DAB6 21:9AA6: 83        .byte $83	; <C>
- D - I - 0x02DAB7 21:9AA7: 1B        .byte $1B	; <ひ>

- D - I - 0x02DAB8 21:9AA8: 00        .byte $00
- D - I - 0x02DAB9 21:9AA9: 04        .byte $04	; <え>
- D - I - 0x02DABA 21:9AAA: 16        .byte $16	; <に>
- D - I - 0x02DABB 21:9AAB: 25        .byte $25	; <ゆ>

- D - I - 0x02DABC 21:9AAC: 08        .byte $08	; <く>
- D - I - 0x02DABD 21:9AAD: 05        .byte $05	; <お>
- D - I - 0x02DABE 21:9AAE: 11        .byte $11	; <ち>
- D - I - 0x02DABF 21:9AAF: 26        .byte $26	; <よ>
- D - I - 0x02DAC0 21:9AB0: 12        .byte $12	; <つ>
- D - I - 0x02DAC1 21:9AB1: 2A        .byte $2A	; <れ>

- D - I - 0x02DAC2 21:9AB2: 00        .byte $00
- D - I - 0x02DAC3 21:9AB3: 06        .byte $06	; <か>
- D - I - 0x02DAC4 21:9AB4: 12        .byte $12	; <つ>
- D - I - 0x02DAC5 21:9AB5: 2C        .byte $2C	; <わ>
; продолжение


off_9AB6:
- D - I - 0x02DAC6 21:9AB6: 10        .byte $10	; <た>
- D - I - 0x02DAC7 21:9AB7: 00        .byte $00
- D - I - 0x02DAC8 21:9AB8: 12        .byte $12	; <つ>
- D - I - 0x02DAC9 21:9AB9: 04        .byte $04	; <え>
- D - I - 0x02DACA 21:9ABA: 16        .byte $16	; <に>
- D - I - 0x02DACB 21:9ABB: 05        .byte $05	; <お>
- D - I - 0x02DACC 21:9ABC: 1B        .byte $1B	; <ひ>
- D - I - 0x02DACD 21:9ABD: 10        .byte $10	; <た>

- D - I - 0x02DACE 21:9ABE: 10        .byte $10	; <た>
- D - I - 0x02DACF 21:9ABF: 01        .byte $01	; <あ>
- D - I - 0x02DAD0 21:9AC0: 0E        .byte $0E	; <せ>
- D - I - 0x02DAD1 21:9AC1: 03        .byte $03	; <う>
- D - I - 0x02DAD2 21:9AC2: 12        .byte $12	; <つ>
- D - I - 0x02DAD3 21:9AC3: 06        .byte $06	; <か>
- D - I - 0x02DAD4 21:9AC4: 16        .byte $16	; <に>
- D - I - 0x02DAD5 21:9AC5: 07        .byte $07	; <き>

- D - I - 0x02DAD6 21:9AC6: 18        .byte $18	; <ね>
- D - I - 0x02DAD7 21:9AC7: 02        .byte $02	; <い>
- D - I - 0x02DAD8 21:9AC8: 08        .byte $08	; <く>
- D - I - 0x02DAD9 21:9AC9: 11        .byte $11	; <ち>
- D - I - 0x02DADA 21:9ACA: 0C        .byte $0C	; <し>
- D - I - 0x02DADB 21:9ACB: 14        .byte $14	; <と>
- D - I - 0x02DADC 21:9ACC: 0E        .byte $0E	; <せ>
- D - I - 0x02DADD 21:9ACD: 02        .byte $02	; <い>
- D - I - 0x02DADE 21:9ACE: 12        .byte $12	; <つ>
- D - I - 0x02DADF 21:9ACF: 0C        .byte $0C	; <し>

- D - I - 0x02DAE0 21:9AD0: 18        .byte $18	; <ね>
- D - I - 0x02DAE1 21:9AD1: 03        .byte $03	; <う>
- D - I - 0x02DAE2 21:9AD2: 04        .byte $04	; <え>
- D - I - 0x02DAE3 21:9AD3: 15        .byte $15	; <な>
- D - I - 0x02DAE4 21:9AD4: 08        .byte $08	; <く>
- D - I - 0x02DAE5 21:9AD5: 29        .byte $29	; <る>
- D - I - 0x02DAE6 21:9AD6: 0C        .byte $0C	; <し>
- D - I - 0x02DAE7 21:9AD7: 45        .byte $45	; <オ>
- D - I - 0x02DAE8 21:9AD8: 11        .byte $11	; <ち>
- D - I - 0x02DAE9 21:9AD9: 0E        .byte $0E	; <せ>

- D - I - 0x02DAEA 21:9ADA: 20        .byte $20	; <み>
- D - I - 0x02DAEB 21:9ADB: 04        .byte $04	; <え>
- D - I - 0x02DAEC 21:9ADC: 04        .byte $04	; <え>
- D - I - 0x02DAED 21:9ADD: 17        .byte $17	; <ぬ>
- D - I - 0x02DAEE 21:9ADE: 06        .byte $06	; <か>
- D - I - 0x02DAEF 21:9ADF: 1D        .byte $1D	; <へ>
- D - I - 0x02DAF0 21:9AE0: 08        .byte $08	; <く>
- D - I - 0x02DAF1 21:9AE1: 46        .byte $46	; <カ>
- D - I - 0x02DAF2 21:9AE2: 0F        .byte $0F	; <そ>
- D - I - 0x02DAF3 21:9AE3: 3E        .byte $3E	; <Jr>
- D - I - 0x02DAF4 21:9AE4: 11        .byte $11	; <ち>
- D - I - 0x02DAF5 21:9AE5: 24        .byte $24	; <や>

- D - I - 0x02DAF6 21:9AE6: 01        .byte $01	; <あ>



off_9AE7:
- D - I - 0x02DAF7 21:9AE7: 10        .byte $10	; <た>
- D - I - 0x02DAF8 21:9AE8: 03        .byte $03	; <う>
- D - I - 0x02DAF9 21:9AE9: 16        .byte $16	; <に>
- D - I - 0x02DAFA 21:9AEA: 0F        .byte $0F	; <そ>
- D - I - 0x02DAFB 21:9AEB: 1A        .byte $1A	; <は>
- D - I - 0x02DAFC 21:9AEC: 1A        .byte $1A	; <は>
- D - I - 0x02DAFD 21:9AED: 83        .byte $83	; <C>
- D - I - 0x02DAFE 21:9AEE: 1B        .byte $1B	; <ひ>

- D - I - 0x02DAFF 21:9AEF: 00        .byte $00
- D - I - 0x02DB00 21:9AF0: 04        .byte $04	; <え>
- D - I - 0x02DB01 21:9AF1: 16        .byte $16	; <に>
- D - I - 0x02DB02 21:9AF2: 25        .byte $25	; <ゆ>

- D - I - 0x02DB03 21:9AF3: 08        .byte $08	; <く>
- D - I - 0x02DB04 21:9AF4: 05        .byte $05	; <お>
- D - I - 0x02DB05 21:9AF5: 11        .byte $11	; <ち>
- D - I - 0x02DB06 21:9AF6: 18        .byte $18	; <ね>
- D - I - 0x02DB07 21:9AF7: 12        .byte $12	; <つ>
- D - I - 0x02DB08 21:9AF8: 2A        .byte $2A	; <れ>

- D - I - 0x02DB09 21:9AF9: 00        .byte $00
- D - I - 0x02DB0A 21:9AFA: 06        .byte $06	; <か>
- D - I - 0x02DB0B 21:9AFB: 12        .byte $12	; <つ>
- D - I - 0x02DB0C 21:9AFC: 2C        .byte $2C	; <わ>
; продолжение


off_9AFD:
- D - I - 0x02DB0D 21:9AFD: 10        .byte $10	; <た>
- D - I - 0x02DB0E 21:9AFE: 00        .byte $00
- D - I - 0x02DB0F 21:9AFF: 12        .byte $12	; <つ>
- D - I - 0x02DB10 21:9B00: 04        .byte $04	; <え>
- D - I - 0x02DB11 21:9B01: 16        .byte $16	; <に>
- D - I - 0x02DB12 21:9B02: 05        .byte $05	; <お>
- D - I - 0x02DB13 21:9B03: 1B        .byte $1B	; <ひ>
- D - I - 0x02DB14 21:9B04: 10        .byte $10	; <た>

- D - I - 0x02DB15 21:9B05: 10        .byte $10	; <た>
- D - I - 0x02DB16 21:9B06: 01        .byte $01	; <あ>
- D - I - 0x02DB17 21:9B07: 0E        .byte $0E	; <せ>
- D - I - 0x02DB18 21:9B08: 03        .byte $03	; <う>
- D - I - 0x02DB19 21:9B09: 12        .byte $12	; <つ>
- D - I - 0x02DB1A 21:9B0A: 06        .byte $06	; <か>
- D - I - 0x02DB1B 21:9B0B: 16        .byte $16	; <に>
- D - I - 0x02DB1C 21:9B0C: 07        .byte $07	; <き>

- D - I - 0x02DB1D 21:9B0D: 18        .byte $18	; <ね>
- D - I - 0x02DB1E 21:9B0E: 02        .byte $02	; <い>
- D - I - 0x02DB1F 21:9B0F: 08        .byte $08	; <く>
- D - I - 0x02DB20 21:9B10: 11        .byte $11	; <ち>
- D - I - 0x02DB21 21:9B11: 0C        .byte $0C	; <し>
- D - I - 0x02DB22 21:9B12: 14        .byte $14	; <と>
- D - I - 0x02DB23 21:9B13: 0E        .byte $0E	; <せ>
- D - I - 0x02DB24 21:9B14: 02        .byte $02	; <い>
- D - I - 0x02DB25 21:9B15: 12        .byte $12	; <つ>
- D - I - 0x02DB26 21:9B16: 0C        .byte $0C	; <し>

- D - I - 0x02DB27 21:9B17: 18        .byte $18	; <ね>
- D - I - 0x02DB28 21:9B18: 03        .byte $03	; <う>
- D - I - 0x02DB29 21:9B19: 04        .byte $04	; <え>
- D - I - 0x02DB2A 21:9B1A: 15        .byte $15	; <な>
- D - I - 0x02DB2B 21:9B1B: 08        .byte $08	; <く>
- D - I - 0x02DB2C 21:9B1C: 40        .byte $40	; <「>
- D - I - 0x02DB2D 21:9B1D: 0C        .byte $0C	; <し>
- D - I - 0x02DB2E 21:9B1E: 41        .byte $41	; <ア>
- D - I - 0x02DB2F 21:9B1F: 11        .byte $11	; <ち>
- D - I - 0x02DB30 21:9B20: 47        .byte $47	; <キ>

- D - I - 0x02DB31 21:9B21: 18        .byte $18	; <ね>
- D - I - 0x02DB32 21:9B22: 04        .byte $04	; <え>
- D - I - 0x02DB33 21:9B23: 06        .byte $06	; <か>
- D - I - 0x02DB34 21:9B24: 28        .byte $28	; <り>
- D - I - 0x02DB35 21:9B25: 0A        .byte $0A	; <こ>
- D - I - 0x02DB36 21:9B26: 42        .byte $42	; <イ>
- D - I - 0x02DB37 21:9B27: 0F        .byte $0F	; <そ>
- D - I - 0x02DB38 21:9B28: 43        .byte $43	; <ウ>
- D - I - 0x02DB39 21:9B29: 11        .byte $11	; <ち>
- D - I - 0x02DB3A 21:9B2A: 0D        .byte $0D	; <す>

- D - I - 0x02DB3B 21:9B2B: 01        .byte $01	; <あ>



off_9B2C_42:
- - - - - 0x02DB3C 21:9B2C: 03        .byte $03	; <う>
- - - - - 0x02DB3D 21:9B2D: 39 9B     .word off_9B39
- - - - - 0x02DB3F 21:9B2F: 68 9B     .word off_9B68
- - - - - 0x02DB41 21:9B31: 39 9B     .word off_9B39
- - - - - 0x02DB43 21:9B33: 39 9B     .word off_9B39
- - - - - 0x02DB45 21:9B35: 39 9B     .word off_9B39
- - - - - 0x02DB47 21:9B37: 68 9B     .word off_9B68



off_9B39:
- - - - - 0x02DB49 21:9B39: 10        .byte $10	; <た>
- - - - - 0x02DB4A 21:9B3A: 07        .byte $07	; <き>
- - - - - 0x02DB4B 21:9B3B: 03        .byte $03	; <う>
- - - - - 0x02DB4C 21:9B3C: 75        .byte $75	; <ェ>
- - - - - 0x02DB4D 21:9B3D: 07        .byte $07	; <き>
- - - - - 0x02DB4E 21:9B3E: 72        .byte $72	; <ョ>
- - - - - 0x02DB4F 21:9B3F: 0F        .byte $0F	; <そ>
- - - - - 0x02DB50 21:9B40: 76        .byte $76	; <ォ>

- - - - - 0x02DB51 21:9B41: 08        .byte $08	; <く>
- - - - - 0x02DB52 21:9B42: 08        .byte $08	; <く>
- - - - - 0x02DB53 21:9B43: 07        .byte $07	; <き>
- - - - - 0x02DB54 21:9B44: 78        .byte $78	; <?>
- - - - - 0x02DB55 21:9B45: 0F        .byte $0F	; <そ>
- - - - - 0x02DB56 21:9B46: 7C        .byte $7C	; <~>
; продолжение


off_9B47:
- D - I - 0x02DB57 21:9B47: 18        .byte $18	; <ね>
- D - I - 0x02DB58 21:9B48: 05        .byte $05	; <お>
- D - I - 0x02DB59 21:9B49: 06        .byte $06	; <か>
- D - I - 0x02DB5A 21:9B4A: 5A        .byte $5A	; <ハ>
- D - I - 0x02DB5B 21:9B4B: 09        .byte $09	; <け>
- D - I - 0x02DB5C 21:9B4C: 5B        .byte $5B	; <ヒ>
- D - I - 0x02DB5D 21:9B4D: 0A        .byte $0A	; <こ>
- D - I - 0x02DB5E 21:9B4E: 02        .byte $02	; <い>
- D - I - 0x02DB5F 21:9B4F: 0D        .byte $0D	; <す>
- D - I - 0x02DB60 21:9B50: 5E        .byte $5E	; <ホ>

- D - I - 0x02DB61 21:9B51: 20        .byte $20	; <み>
- D - I - 0x02DB62 21:9B52: 06        .byte $06	; <か>
- D - I - 0x02DB63 21:9B53: 03        .byte $03	; <う>
- D - I - 0x02DB64 21:9B54: 5F        .byte $5F	; <マ>
- D - I - 0x02DB65 21:9B55: 07        .byte $07	; <き>
- D - I - 0x02DB66 21:9B56: 70        .byte $70	; <ャ>
- D - I - 0x02DB67 21:9B57: 0B        .byte $0B	; <さ>
- D - I - 0x02DB68 21:9B58: 71        .byte $71	; <ュ>
- D - I - 0x02DB69 21:9B59: 0F        .byte $0F	; <そ>
- D - I - 0x02DB6A 21:9B5A: 74        .byte $74	; <ィ>
- D - I - 0x02DB6B 21:9B5B: 0E        .byte $0E	; <せ>
- D - I - 0x02DB6C 21:9B5C: 77        .byte $77	; <:>

- D - I - 0x02DB6D 21:9B5D: 00        .byte $00
- D - I - 0x02DB6E 21:9B5E: 07        .byte $07	; <き>
- D - I - 0x02DB6F 21:9B5F: 0B        .byte $0B	; <さ>
- D - I - 0x02DB70 21:9B60: 73        .byte $73	; <ヮ>

- D - I - 0x02DB71 21:9B61: 00        .byte $00
- D - I - 0x02DB72 21:9B62: 08        .byte $08	; <く>
- D - I - 0x02DB73 21:9B63: 0B        .byte $0B	; <さ>
- D - I - 0x02DB74 21:9B64: 79        .byte $79	; <!>

- D - I - 0x02DB75 21:9B65: 02        .byte $02	; <い>
- D - I - 0x02DB76 21:9B66: 73 99     .word off_9973



off_9B68:
- - - - - 0x02DB78 21:9B68: 10        .byte $10	; <た>
- - - - - 0x02DB79 21:9B69: 07        .byte $07	; <き>
- - - - - 0x02DB7A 21:9B6A: 07        .byte $07	; <き>
- - - - - 0x02DB7B 21:9B6B: A0        .byte $A0	; <が>
- - - - - 0x02DB7C 21:9B6C: 0B        .byte $0B	; <さ>
- - - - - 0x02DB7D 21:9B6D: A1        .byte $A1	; <ぎ>
- - - - - 0x02DB7E 21:9B6E: 0F        .byte $0F	; <そ>
- - - - - 0x02DB7F 21:9B6F: A4        .byte $A4	; <ご>
; продолжение


off_9B70:
- D - I - 0x02DB80 21:9B70: 18        .byte $18	; <ね>
- D - I - 0x02DB81 21:9B71: 05        .byte $05	; <お>
- D - I - 0x02DB82 21:9B72: 06        .byte $06	; <か>
- D - I - 0x02DB83 21:9B73: 63        .byte $63	; <モ>
- D - I - 0x02DB84 21:9B74: 09        .byte $09	; <け>
- D - I - 0x02DB85 21:9B75: 89        .byte $89	; <I>
- D - I - 0x02DB86 21:9B76: 0A        .byte $0A	; <こ>
- D - I - 0x02DB87 21:9B77: 02        .byte $02	; <い>
- D - I - 0x02DB88 21:9B78: 0D        .byte $0D	; <す>
- D - I - 0x02DB89 21:9B79: 8C        .byte $8C	; <M>

- D - I - 0x02DB8A 21:9B7A: 20        .byte $20	; <み>
- D - I - 0x02DB8B 21:9B7B: 06        .byte $06	; <か>
- D - I - 0x02DB8C 21:9B7C: 07        .byte $07	; <き>
- D - I - 0x02DB8D 21:9B7D: 8A        .byte $8A	; <N>
- D - I - 0x02DB8E 21:9B7E: 06        .byte $06	; <か>
- D - I - 0x02DB8F 21:9B7F: 88        .byte $88	; <H>
- D - I - 0x02DB90 21:9B80: 0B        .byte $0B	; <さ>
- D - I - 0x02DB91 21:9B81: 8B        .byte $8B	; <K>
- D - I - 0x02DB92 21:9B82: 0F        .byte $0F	; <そ>
- D - I - 0x02DB93 21:9B83: 8E        .byte $8E	; <L>
- D - I - 0x02DB94 21:9B84: 0E        .byte $0E	; <せ>
- D - I - 0x02DB95 21:9B85: 02        .byte $02	; <い>

- D - I - 0x02DB96 21:9B86: 02        .byte $02	; <い>
- D - I - 0x02DB97 21:9B87: 73 99     .word off_9973



off_9B89_43:
- D - I - 0x02DB99 21:9B89: 03        .byte $03	; <う>
- D - I - 0x02DB9A 21:9B8A: 96 9B     .word off_9B96
- D - I - 0x02DB9C 21:9B8C: A9 9B     .word off_9BA9
- D - I - 0x02DB9E 21:9B8E: 96 9B     .word off_9B96
- D - I - 0x02DBA0 21:9B90: 96 9B     .word off_9B96
- D - I - 0x02DBA2 21:9B92: 96 9B     .word off_9B96
- D - I - 0x02DBA4 21:9B94: A9 9B     .word off_9BA9



off_9B96:
- D - I - 0x02DBA6 21:9B96: 10        .byte $10	; <た>
- D - I - 0x02DBA7 21:9B97: 07        .byte $07	; <き>
- D - I - 0x02DBA8 21:9B98: 03        .byte $03	; <う>
- D - I - 0x02DBA9 21:9B99: 68        .byte $68	; <リ>
- D - I - 0x02DBAA 21:9B9A: 07        .byte $07	; <き>
- D - I - 0x02DBAB 21:9B9B: 69        .byte $69	; <ル>
- D - I - 0x02DBAC 21:9B9C: 0F        .byte $0F	; <そ>
- D - I - 0x02DBAD 21:9B9D: 76        .byte $76	; <ォ>

- D - I - 0x02DBAE 21:9B9E: 10        .byte $10	; <た>
- D - I - 0x02DBAF 21:9B9F: 08        .byte $08	; <く>
- D - I - 0x02DBB0 21:9BA0: 03        .byte $03	; <う>
- D - I - 0x02DBB1 21:9BA1: 6A        .byte $6A	; <レ>
- D - I - 0x02DBB2 21:9BA2: 07        .byte $07	; <き>
- D - I - 0x02DBB3 21:9BA3: 6B        .byte $6B	; <ロ>
- D - I - 0x02DBB4 21:9BA4: 0F        .byte $0F	; <そ>
- D - I - 0x02DBB5 21:9BA5: 7C        .byte $7C	; <~>

- D - I - 0x02DBB6 21:9BA6: 02        .byte $02	; <い>
- D - I - 0x02DBB7 21:9BA7: 47 9B     .word off_9B47



off_9BA9:
- D - I - 0x02DBB9 21:9BA9: 10        .byte $10	; <た>
- D - I - 0x02DBBA 21:9BAA: 07        .byte $07	; <き>
- D - I - 0x02DBBB 21:9BAB: 07        .byte $07	; <き>
- D - I - 0x02DBBC 21:9BAC: A2        .byte $A2	; <ぐ>
- D - I - 0x02DBBD 21:9BAD: 0B        .byte $0B	; <さ>
- D - I - 0x02DBBE 21:9BAE: A3        .byte $A3	; <げ>
- D - I - 0x02DBBF 21:9BAF: 0F        .byte $0F	; <そ>
- D - I - 0x02DBC0 21:9BB0: A4        .byte $A4	; <ご>

- D - I - 0x02DBC1 21:9BB1: 08        .byte $08	; <く>
- D - I - 0x02DBC2 21:9BB2: 08        .byte $08	; <く>
- D - I - 0x02DBC3 21:9BB3: 07        .byte $07	; <き>
- D - I - 0x02DBC4 21:9BB4: 75        .byte $75	; <ェ>
- D - I - 0x02DBC5 21:9BB5: 0B        .byte $0B	; <さ>
- D - I - 0x02DBC6 21:9BB6: A9        .byte $A9	; <ぞ>

- D - I - 0x02DBC7 21:9BB7: 02        .byte $02	; <い>
- D - I - 0x02DBC8 21:9BB8: 70 9B     .word off_9B70



off_9BBA_44:
- D - I - 0x02DBCA 21:9BBA: 03        .byte $03	; <う>
- D - I - 0x02DBCB 21:9BBB: C7 9B     .word off_9BC7
- D - I - 0x02DBCD 21:9BBD: DA 9B     .word off_9BDA
- D - I - 0x02DBCF 21:9BBF: C7 9B     .word off_9BC7
- D - I - 0x02DBD1 21:9BC1: C7 9B     .word off_9BC7
- D - I - 0x02DBD3 21:9BC3: C7 9B     .word off_9BC7
- D - I - 0x02DBD5 21:9BC5: DA 9B     .word off_9BDA



off_9BC7:
- D - I - 0x02DBD7 21:9BC7: 10        .byte $10	; <た>
- D - I - 0x02DBD8 21:9BC8: 07        .byte $07	; <き>
- D - I - 0x02DBD9 21:9BC9: 03        .byte $03	; <う>
- D - I - 0x02DBDA 21:9BCA: 6C        .byte $6C	; <ワ>
- D - I - 0x02DBDB 21:9BCB: 07        .byte $07	; <き>
- D - I - 0x02DBDC 21:9BCC: 6D        .byte $6D	; <ヲ>
- D - I - 0x02DBDD 21:9BCD: 0F        .byte $0F	; <そ>
- D - I - 0x02DBDE 21:9BCE: 76        .byte $76	; <ォ>

- D - I - 0x02DBDF 21:9BCF: 10        .byte $10	; <た>
- D - I - 0x02DBE0 21:9BD0: 08        .byte $08	; <く>
- D - I - 0x02DBE1 21:9BD1: 03        .byte $03	; <う>
- D - I - 0x02DBE2 21:9BD2: 6E        .byte $6E	; <ン>
- D - I - 0x02DBE3 21:9BD3: 07        .byte $07	; <き>
- D - I - 0x02DBE4 21:9BD4: 6F        .byte $6F	; <ッ>
- D - I - 0x02DBE5 21:9BD5: 0F        .byte $0F	; <そ>
- D - I - 0x02DBE6 21:9BD6: 7C        .byte $7C	; <~>

- D - I - 0x02DBE7 21:9BD7: 02        .byte $02	; <い>
- D - I - 0x02DBE8 21:9BD8: 47 9B     .word off_9B47



off_9BDA:
- D - I - 0x02DBEA 21:9BDA: 10        .byte $10	; <た>
- D - I - 0x02DBEB 21:9BDB: 07        .byte $07	; <き>
- D - I - 0x02DBEC 21:9BDC: 07        .byte $07	; <き>
- D - I - 0x02DBED 21:9BDD: A6        .byte $A6	; <じ>
- D - I - 0x02DBEE 21:9BDE: 0B        .byte $0B	; <さ>
- D - I - 0x02DBEF 21:9BDF: A7        .byte $A7	; <ず>
- D - I - 0x02DBF0 21:9BE0: 0F        .byte $0F	; <そ>
- D - I - 0x02DBF1 21:9BE1: A4        .byte $A4	; <ご>

- D - I - 0x02DBF2 21:9BE2: 08        .byte $08	; <く>
- D - I - 0x02DBF3 21:9BE3: 08        .byte $08	; <く>
- D - I - 0x02DBF4 21:9BE4: 07        .byte $07	; <き>
- D - I - 0x02DBF5 21:9BE5: 75        .byte $75	; <ェ>
- D - I - 0x02DBF6 21:9BE6: 0B        .byte $0B	; <さ>
- D - I - 0x02DBF7 21:9BE7: AD        .byte $AD	; <で>

- D - I - 0x02DBF8 21:9BE8: 02        .byte $02	; <い>
- D - I - 0x02DBF9 21:9BE9: 70 9B     .word off_9B70



off_9BEB_45:
- D - I - 0x02DBFB 21:9BEB: 03        .byte $03	; <う>
- D - I - 0x02DBFC 21:9BEC: F8 9B     .word off_9BF8
- D - I - 0x02DBFE 21:9BEE: 0D 9C     .word off_9C0D
- D - I - 0x02DC00 21:9BF0: F8 9B     .word off_9BF8
- D - I - 0x02DC02 21:9BF2: F8 9B     .word off_9BF8
- D - I - 0x02DC04 21:9BF4: F8 9B     .word off_9BF8
- D - I - 0x02DC06 21:9BF6: 0D 9C     .word off_9C0D



off_9BF8:
- D - I - 0x02DC08 21:9BF8: 18        .byte $18	; <ね>
- D - I - 0x02DC09 21:9BF9: 07        .byte $07	; <き>
- D - I - 0x02DC0A 21:9BFA: 03        .byte $03	; <う>
- D - I - 0x02DC0B 21:9BFB: 75        .byte $75	; <ェ>
- D - I - 0x02DC0C 21:9BFC: 07        .byte $07	; <き>
- D - I - 0x02DC0D 21:9BFD: 72        .byte $72	; <ョ>
- D - I - 0x02DC0E 21:9BFE: 0F        .byte $0F	; <そ>
- D - I - 0x02DC0F 21:9BFF: 84        .byte $84	; <D>
- D - I - 0x02DC10 21:9C00: 13        .byte $13	; <て>
- D - I - 0x02DC11 21:9C01: 85        .byte $85	; <E>

- D - I - 0x02DC12 21:9C02: 10        .byte $10	; <た>
- D - I - 0x02DC13 21:9C03: 08        .byte $08	; <く>
- D - I - 0x02DC14 21:9C04: 07        .byte $07	; <き>
- D - I - 0x02DC15 21:9C05: 78        .byte $78	; <?>
- D - I - 0x02DC16 21:9C06: 0F        .byte $0F	; <そ>
- D - I - 0x02DC17 21:9C07: 86        .byte $86	; <F>
- D - I - 0x02DC18 21:9C08: 13        .byte $13	; <て>
- D - I - 0x02DC19 21:9C09: 87        .byte $87	; <G>

- D - I - 0x02DC1A 21:9C0A: 02        .byte $02	; <い>
- D - I - 0x02DC1B 21:9C0B: 47 9B     .word off_9B47



off_9C0D:
- D - I - 0x02DC1D 21:9C0D: 18        .byte $18	; <ね>
- D - I - 0x02DC1E 21:9C0E: 07        .byte $07	; <き>
- D - I - 0x02DC1F 21:9C0F: 07        .byte $07	; <き>
- D - I - 0x02DC20 21:9C10: A0        .byte $A0	; <が>
- D - I - 0x02DC21 21:9C11: 0B        .byte $0B	; <さ>
- D - I - 0x02DC22 21:9C12: A1        .byte $A1	; <ぎ>
- D - I - 0x02DC23 21:9C13: 0F        .byte $0F	; <そ>
- D - I - 0x02DC24 21:9C14: 7D        .byte $7D	; <ー>
- D - I - 0x02DC25 21:9C15: 13        .byte $13	; <て>
- D - I - 0x02DC26 21:9C16: 7E        .byte $7E	; <.>

- D - I - 0x02DC27 21:9C17: 00        .byte $00
- D - I - 0x02DC28 21:9C18: 08        .byte $08	; <く>
- D - I - 0x02DC29 21:9C19: 0F        .byte $0F	; <そ>
- D - I - 0x02DC2A 21:9C1A: 7F        .byte $7F	; <,>

- D - I - 0x02DC2B 21:9C1B: 02        .byte $02	; <い>
- D - I - 0x02DC2C 21:9C1C: 70 9B     .word off_9B70



off_9C1E_46:
- D - I - 0x02DC2E 21:9C1E: 03        .byte $03	; <う>
- D - I - 0x02DC2F 21:9C1F: 2B 9C     .word off_9C2B
- D - I - 0x02DC31 21:9C21: 40 9C     .word off_9C40
- D - I - 0x02DC33 21:9C23: 2B 9C     .word off_9C2B
- D - I - 0x02DC35 21:9C25: 2B 9C     .word off_9C2B
- D - I - 0x02DC37 21:9C27: 2B 9C     .word off_9C2B
- D - I - 0x02DC39 21:9C29: 40 9C     .word off_9C40



off_9C2B:
- D - I - 0x02DC3B 21:9C2B: 18        .byte $18	; <ね>
- D - I - 0x02DC3C 21:9C2C: 07        .byte $07	; <き>
- D - I - 0x02DC3D 21:9C2D: 03        .byte $03	; <う>
- D - I - 0x02DC3E 21:9C2E: 75        .byte $75	; <ェ>
- D - I - 0x02DC3F 21:9C2F: 07        .byte $07	; <き>
- D - I - 0x02DC40 21:9C30: 72        .byte $72	; <ョ>
- D - I - 0x02DC41 21:9C31: 0F        .byte $0F	; <そ>
- D - I - 0x02DC42 21:9C32: 80        .byte $80
- D - I - 0x02DC43 21:9C33: 13        .byte $13	; <て>
- D - I - 0x02DC44 21:9C34: 81        .byte $81	; <A>

- D - I - 0x02DC45 21:9C35: 10        .byte $10	; <た>
- D - I - 0x02DC46 21:9C36: 08        .byte $08	; <く>
- D - I - 0x02DC47 21:9C37: 07        .byte $07	; <き>
- D - I - 0x02DC48 21:9C38: 78        .byte $78	; <?>
- D - I - 0x02DC49 21:9C39: 0F        .byte $0F	; <そ>
- D - I - 0x02DC4A 21:9C3A: 82        .byte $82	; <B>
- D - I - 0x02DC4B 21:9C3B: 13        .byte $13	; <て>
- D - I - 0x02DC4C 21:9C3C: 83        .byte $83	; <C>

- D - I - 0x02DC4D 21:9C3D: 02        .byte $02	; <い>
- D - I - 0x02DC4E 21:9C3E: 47 9B     .word off_9B47



off_9C40:
- D - I - 0x02DC50 21:9C40: 18        .byte $18	; <ね>
- D - I - 0x02DC51 21:9C41: 07        .byte $07	; <き>
- D - I - 0x02DC52 21:9C42: 07        .byte $07	; <き>
- D - I - 0x02DC53 21:9C43: A0        .byte $A0	; <が>
- D - I - 0x02DC54 21:9C44: 0B        .byte $0B	; <さ>
- D - I - 0x02DC55 21:9C45: A1        .byte $A1	; <ぎ>
- D - I - 0x02DC56 21:9C46: 0F        .byte $0F	; <そ>
- D - I - 0x02DC57 21:9C47: 7A        .byte $7A	; <、>
- D - I - 0x02DC58 21:9C48: 13        .byte $13	; <て>
- D - I - 0x02DC59 21:9C49: 7B        .byte $7B	; <。>

- D - I - 0x02DC5A 21:9C4A: 00        .byte $00
- D - I - 0x02DC5B 21:9C4B: 08        .byte $08	; <く>
- D - I - 0x02DC5C 21:9C4C: 0F        .byte $0F	; <そ>
- D - I - 0x02DC5D 21:9C4D: A8        .byte $A8	; <ぜ>

- D - I - 0x02DC5E 21:9C4E: 02        .byte $02	; <い>
- D - I - 0x02DC5F 21:9C4F: 70 9B     .word off_9B70



off_9C51_47:
- D - I - 0x02DC61 21:9C51: 03        .byte $03	; <う>
- D - I - 0x02DC62 21:9C52: 5E 9C     .word off_9C5E
- D - I - 0x02DC64 21:9C54: 77 9C     .word off_9C77
- D - I - 0x02DC66 21:9C56: 5E 9C     .word off_9C5E
- D - I - 0x02DC68 21:9C58: 5E 9C     .word off_9C5E
- D - I - 0x02DC6A 21:9C5A: 5E 9C     .word off_9C5E
- D - I - 0x02DC6C 21:9C5C: 77 9C     .word off_9C77



off_9C5E:
- D - I - 0x02DC6E 21:9C5E: 10        .byte $10	; <た>
- D - I - 0x02DC6F 21:9C5F: 18        .byte $18	; <ね>
- D - I - 0x02DC70 21:9C60: 43        .byte $43	; <ウ>
- D - I - 0x02DC71 21:9C61: 48        .byte $48	; <ク>
- D - I - 0x02DC72 21:9C62: 47        .byte $47	; <キ>
- D - I - 0x02DC73 21:9C63: 49        .byte $49	; <ケ>
- D - I - 0x02DC74 21:9C64: 87        .byte $87	; <G>
- D - I - 0x02DC75 21:9C65: FD        .byte $FD

- D - I - 0x02DC76 21:9C66: 10        .byte $10	; <た>
- D - I - 0x02DC77 21:9C67: 19        .byte $19	; <の>
- D - I - 0x02DC78 21:9C68: 43        .byte $43	; <ウ>
- D - I - 0x02DC79 21:9C69: 4A        .byte $4A	; <コ>
- D - I - 0x02DC7A 21:9C6A: 47        .byte $47	; <キ>
- D - I - 0x02DC7B 21:9C6B: 4B        .byte $4B	; <サ>
- D - I - 0x02DC7C 21:9C6C: 87        .byte $87	; <G>
- D - I - 0x02DC7D 21:9C6D: FF        .byte $FF

- D - I - 0x02DC7E 21:9C6E: 10        .byte $10	; <た>
- D - I - 0x02DC7F 21:9C6F: 1A        .byte $1A	; <は>
- D - I - 0x02DC80 21:9C70: 43        .byte $43	; <ウ>
- D - I - 0x02DC81 21:9C71: 60        .byte $60	; <ミ>
- D - I - 0x02DC82 21:9C72: 47        .byte $47	; <キ>
- D - I - 0x02DC83 21:9C73: 61        .byte $61	; <ム>
- D - I - 0x02DC84 21:9C74: 87        .byte $87	; <G>
- D - I - 0x02DC85 21:9C75: FE        .byte $FE

- D - I - 0x02DC86 21:9C76: 01        .byte $01	; <あ>



off_9C77:
- D - I - 0x02DC87 21:9C77: 08        .byte $08	; <く>
- D - I - 0x02DC88 21:9C78: 18        .byte $18	; <ね>
- D - I - 0x02DC89 21:9C79: 43        .byte $43	; <ウ>
- D - I - 0x02DC8A 21:9C7A: 4C        .byte $4C	; <シ>
- D - I - 0x02DC8B 21:9C7B: 47        .byte $47	; <キ>
- D - I - 0x02DC8C 21:9C7C: 4D        .byte $4D	; <ス>

- D - I - 0x02DC8D 21:9C7D: 10        .byte $10	; <た>
- D - I - 0x02DC8E 21:9C7E: 19        .byte $19	; <の>
- D - I - 0x02DC8F 21:9C7F: 43        .byte $43	; <ウ>
- D - I - 0x02DC90 21:9C80: 4E        .byte $4E	; <セ>
- D - I - 0x02DC91 21:9C81: 47        .byte $47	; <キ>
- D - I - 0x02DC92 21:9C82: 4F        .byte $4F	; <ソ>
- D - I - 0x02DC93 21:9C83: 87        .byte $87	; <G>
- D - I - 0x02DC94 21:9C84: 62        .byte $62	; <メ>

- D - I - 0x02DC95 21:9C85: 08        .byte $08	; <く>
- D - I - 0x02DC96 21:9C86: 1A        .byte $1A	; <は>
- D - I - 0x02DC97 21:9C87: 43        .byte $43	; <ウ>
- D - I - 0x02DC98 21:9C88: 64        .byte $64	; <ヤ>
- D - I - 0x02DC99 21:9C89: 47        .byte $47	; <キ>
- D - I - 0x02DC9A 21:9C8A: 65        .byte $65	; <ユ>

- D - I - 0x02DC9B 21:9C8B: 01        .byte $01	; <あ>



off_9C8C_48:
- D - I - 0x02DC9C 21:9C8C: 03        .byte $03	; <う>
- D - I - 0x02DC9D 21:9C8D: 99 9C     .word off_9C99
- - - - - 0x02DC9F 21:9C8F: B4 9C     .word off_9CB4
- D - I - 0x02DCA1 21:9C91: 99 9C     .word off_9C99
- D - I - 0x02DCA3 21:9C93: 99 9C     .word off_9C99
- D - I - 0x02DCA5 21:9C95: 99 9C     .word off_9C99
- D - I - 0x02DCA7 21:9C97: B4 9C     .word off_9CB4



off_9C99:
- D - I - 0x02DCA9 21:9C99: 08        .byte $08	; <く>
- D - I - 0x02DCAA 21:9C9A: 05        .byte $05	; <お>
- D - I - 0x02DCAB 21:9C9B: 09        .byte $09	; <け>
- D - I - 0x02DCAC 21:9C9C: 91        .byte $91	; <V>
- D - I - 0x02DCAD 21:9C9D: 0D        .byte $0D	; <す>
- D - I - 0x02DCAE 21:9C9E: 94        .byte $94
; продолжение


off_9C9F:
- D - I - 0x02DCAF 21:9C9F: 08        .byte $08	; <く>
- D - I - 0x02DCB0 21:9CA0: 05        .byte $05	; <お>
- D - I - 0x02DCB1 21:9CA1: 06        .byte $06	; <か>
- D - I - 0x02DCB2 21:9CA2: 90        .byte $90	; <U>
- D - I - 0x02DCB3 21:9CA3: 0A        .byte $0A	; <こ>
- D - I - 0x02DCB4 21:9CA4: 02        .byte $02	; <い>

- D - I - 0x02DCB5 21:9CA5: 10        .byte $10	; <た>
- D - I - 0x02DCB6 21:9CA6: 06        .byte $06	; <か>
- D - I - 0x02DCB7 21:9CA7: 06        .byte $06	; <か>
- D - I - 0x02DCB8 21:9CA8: 92        .byte $92	; <W>
- D - I - 0x02DCB9 21:9CA9: 0A        .byte $0A	; <こ>
- D - I - 0x02DCBA 21:9CAA: 93        .byte $93	; <Y>
- D - I - 0x02DCBB 21:9CAB: 0E        .byte $0E	; <せ>
- D - I - 0x02DCBC 21:9CAC: 96        .byte $96

- D - I - 0x02DCBD 21:9CAD: 00        .byte $00
- D - I - 0x02DCBE 21:9CAE: 07        .byte $07	; <き>
- D - I - 0x02DCBF 21:9CAF: 06        .byte $06	; <か>
- D - I - 0x02DCC0 21:9CB0: 98        .byte $98

- D - I - 0x02DCC1 21:9CB1: 02        .byte $02	; <い>
- D - I - 0x02DCC2 21:9CB2: 73 99     .word off_9973



off_9CB4:
- D - I - 0x02DCC4 21:9CB4: 08        .byte $08	; <く>
- D - I - 0x02DCC5 21:9CB5: 05        .byte $05	; <お>
- D - I - 0x02DCC6 21:9CB6: 09        .byte $09	; <け>
- D - I - 0x02DCC7 21:9CB7: 95        .byte $95
- D - I - 0x02DCC8 21:9CB8: 0D        .byte $0D	; <す>
- D - I - 0x02DCC9 21:9CB9: 97        .byte $97

- D - I - 0x02DCCA 21:9CBA: 02        .byte $02	; <い>
- D - I - 0x02DCCB 21:9CBB: 9F 9C     .word off_9C9F



off_9CBD_49:
- D - I - 0x02DCCD 21:9CBD: 03        .byte $03	; <う>
- D - I - 0x02DCCE 21:9CBE: CA 9C     .word off_9CCA
- - - - - 0x02DCD0 21:9CC0: E9 9C     .word off_9CE9
- D - I - 0x02DCD2 21:9CC2: CA 9C     .word off_9CCA
- D - I - 0x02DCD4 21:9CC4: CA 9C     .word off_9CCA
- D - I - 0x02DCD6 21:9CC6: CA 9C     .word off_9CCA
- D - I - 0x02DCD8 21:9CC8: E9 9C     .word off_9CE9



off_9CCA:
- D - I - 0x02DCDA 21:9CCA: 08        .byte $08	; <く>
- D - I - 0x02DCDB 21:9CCB: 07        .byte $07	; <き>
- D - I - 0x02DCDC 21:9CCC: 07        .byte $07	; <き>
- D - I - 0x02DCDD 21:9CCD: B1        .byte $B1	; <ぶ>
- D - I - 0x02DCDE 21:9CCE: 0F        .byte $0F	; <そ>
- D - I - 0x02DCDF 21:9CCF: B5        .byte $B5	; <ギ>
; продолжение


off_9CD0:
- D - I - 0x02DCE0 21:9CD0: 18        .byte $18	; <ね>
- D - I - 0x02DCE1 21:9CD1: 05        .byte $05	; <お>
- D - I - 0x02DCE2 21:9CD2: 06        .byte $06	; <か>
- D - I - 0x02DCE3 21:9CD3: 99        .byte $99
- D - I - 0x02DCE4 21:9CD4: 0B        .byte $0B	; <さ>
- D - I - 0x02DCE5 21:9CD5: 9C        .byte $9C
- D - I - 0x02DCE6 21:9CD6: 0F        .byte $0F	; <そ>
- D - I - 0x02DCE7 21:9CD7: 9D        .byte $9D
- D - I - 0x02DCE8 21:9CD8: 0D        .byte $0D	; <す>
- D - I - 0x02DCE9 21:9CD9: 02        .byte $02	; <い>

- D - I - 0x02DCEA 21:9CDA: 10        .byte $10	; <た>
- D - I - 0x02DCEB 21:9CDB: 06        .byte $06	; <か>
- D - I - 0x02DCEC 21:9CDC: 07        .byte $07	; <き>
- D - I - 0x02DCED 21:9CDD: 9B        .byte $9B
- D - I - 0x02DCEE 21:9CDE: 0B        .byte $0B	; <さ>
- D - I - 0x02DCEF 21:9CDF: 4B        .byte $4B	; <サ>
- D - I - 0x02DCF0 21:9CE0: 0F        .byte $0F	; <そ>
- D - I - 0x02DCF1 21:9CE1: 9F        .byte $9F

- D - I - 0x02DCF2 21:9CE2: 00        .byte $00
- D - I - 0x02DCF3 21:9CE3: 07        .byte $07	; <き>
- D - I - 0x02DCF4 21:9CE4: 0B        .byte $0B	; <さ>
- D - I - 0x02DCF5 21:9CE5: B4        .byte $B4	; <ガ>

- D - I - 0x02DCF6 21:9CE6: 02        .byte $02	; <い>
- D - I - 0x02DCF7 21:9CE7: 73 99     .word off_9973



off_9CE9:
- D - I - 0x02DCF9 21:9CE9: 10        .byte $10	; <た>
- D - I - 0x02DCFA 21:9CEA: 07        .byte $07	; <き>
- D - I - 0x02DCFB 21:9CEB: 07        .byte $07	; <き>
- D - I - 0x02DCFC 21:9CEC: BB        .byte $BB	; <ズ>
- D - I - 0x02DCFD 21:9CED: 0B        .byte $0B	; <さ>
- D - I - 0x02DCFE 21:9CEE: BE        .byte $BE	; <ダ>
- D - I - 0x02DCFF 21:9CEF: 0F        .byte $0F	; <そ>
- D - I - 0x02DD00 21:9CF0: BF        .byte $BF	; <ヂ>
; продолжение


off_9CF1:
- D - I - 0x02DD01 21:9CF1: 28        .byte $28	; <り>
- D - I - 0x02DD02 21:9CF2: 05        .byte $05	; <お>
- D - I - 0x02DD03 21:9CF3: 06        .byte $06	; <か>
- D - I - 0x02DD04 21:9CF4: B3        .byte $B3	; <ぼ>
- D - I - 0x02DD05 21:9CF5: 0B        .byte $0B	; <さ>
- D - I - 0x02DD06 21:9CF6: B6        .byte $B6	; <グ>
- D - I - 0x02DD07 21:9CF7: 09        .byte $09	; <け>
- D - I - 0x02DD08 21:9CF8: C2        .byte $C2	; <ド>
- D - I - 0x02DD09 21:9CF9: 0A        .byte $0A	; <こ>
- D - I - 0x02DD0A 21:9CFA: 02        .byte $02	; <い>
- D - I - 0x02DD0B 21:9CFB: 0F        .byte $0F	; <そ>
- D - I - 0x02DD0C 21:9CFC: B7        .byte $B7	; <ゲ>
- D - I - 0x02DD0D 21:9CFD: 0D        .byte $0D	; <す>
- D - I - 0x02DD0E 21:9CFE: C3        .byte $C3	; <バ>

- D - I - 0x02DD0F 21:9CFF: 18        .byte $18	; <ね>
- D - I - 0x02DD10 21:9D00: 06        .byte $06	; <か>
- D - I - 0x02DD11 21:9D01: 06        .byte $06	; <か>
- D - I - 0x02DD12 21:9D02: B9        .byte $B9	; <ザ>
- D - I - 0x02DD13 21:9D03: 0B        .byte $0B	; <さ>
- D - I - 0x02DD14 21:9D04: BC        .byte $BC	; <ゼ>
- D - I - 0x02DD15 21:9D05: 0F        .byte $0F	; <そ>
- D - I - 0x02DD16 21:9D06: BD        .byte $BD	; <ゾ>
- D - I - 0x02DD17 21:9D07: 0E        .byte $0E	; <せ>
- D - I - 0x02DD18 21:9D08: BA        .byte $BA	; <ジ>

- D - I - 0x02DD19 21:9D09: 02        .byte $02	; <い>
- D - I - 0x02DD1A 21:9D0A: 73 99     .word off_9973



off_9D0C_4A:
- D - I - 0x02DD1C 21:9D0C: 03        .byte $03	; <う>
- D - I - 0x02DD1D 21:9D0D: 19 9D     .word off_9D19
- - - - - 0x02DD1F 21:9D0F: 28 9D     .word off_9D28
- D - I - 0x02DD21 21:9D11: 19 9D     .word off_9D19
- D - I - 0x02DD23 21:9D13: 19 9D     .word off_9D19
- D - I - 0x02DD25 21:9D15: 19 9D     .word off_9D19
- D - I - 0x02DD27 21:9D17: 28 9D     .word off_9D28



off_9D19:
- D - I - 0x02DD29 21:9D19: 00        .byte $00
- D - I - 0x02DD2A 21:9D1A: 06        .byte $06	; <か>
- D - I - 0x02DD2B 21:9D1B: 03        .byte $03	; <う>
- D - I - 0x02DD2C 21:9D1C: 8D        .byte $8D	; <P>

- D - I - 0x02DD2D 21:9D1D: 10        .byte $10	; <た>
- D - I - 0x02DD2E 21:9D1E: 07        .byte $07	; <き>
- D - I - 0x02DD2F 21:9D1F: 03        .byte $03	; <う>
- D - I - 0x02DD30 21:9D20: 8F        .byte $8F	; <S>
- D - I - 0x02DD31 21:9D21: 07        .byte $07	; <き>
- D - I - 0x02DD32 21:9D22: 9A        .byte $9A
- D - I - 0x02DD33 21:9D23: 0F        .byte $0F	; <そ>
- D - I - 0x02DD34 21:9D24: B5        .byte $B5	; <ギ>

- D - I - 0x02DD35 21:9D25: 02        .byte $02	; <い>
- D - I - 0x02DD36 21:9D26: D0 9C     .word off_9CD0



off_9D28:
- D - I - 0x02DD38 21:9D28: 18        .byte $18	; <ね>
- D - I - 0x02DD39 21:9D29: 07        .byte $07	; <き>
- D - I - 0x02DD3A 21:9D2A: 03        .byte $03	; <う>
- D - I - 0x02DD3B 21:9D2B: C4        .byte $C4	; <ビ>
- D - I - 0x02DD3C 21:9D2C: 07        .byte $07	; <き>
- D - I - 0x02DD3D 21:9D2D: C5        .byte $C5	; <ブ>
- D - I - 0x02DD3E 21:9D2E: 0B        .byte $0B	; <さ>
- D - I - 0x02DD3F 21:9D2F: BE        .byte $BE	; <ダ>
- D - I - 0x02DD40 21:9D30: 0F        .byte $0F	; <そ>
- D - I - 0x02DD41 21:9D31: BF        .byte $BF	; <ヂ>

- D - I - 0x02DD42 21:9D32: 00        .byte $00
- D - I - 0x02DD43 21:9D33: 08        .byte $08	; <く>
- D - I - 0x02DD44 21:9D34: 07        .byte $07	; <き>
- D - I - 0x02DD45 21:9D35: C7        .byte $C7	; <ボ>

- D - I - 0x02DD46 21:9D36: 02        .byte $02	; <い>
- D - I - 0x02DD47 21:9D37: F1 9C     .word off_9CF1



off_9D39_4B:
- D - I - 0x02DD49 21:9D39: 03        .byte $03	; <う>
- D - I - 0x02DD4A 21:9D3A: 46 9D     .word off_9D46
- - - - - 0x02DD4C 21:9D3C: 55 9D     .word off_9D55
- D - I - 0x02DD4E 21:9D3E: 46 9D     .word off_9D46
- D - I - 0x02DD50 21:9D40: 46 9D     .word off_9D46
- D - I - 0x02DD52 21:9D42: 46 9D     .word off_9D46
- D - I - 0x02DD54 21:9D44: 55 9D     .word off_9D55



off_9D46:
- D - I - 0x02DD56 21:9D46: 00        .byte $00
- D - I - 0x02DD57 21:9D47: 06        .byte $06	; <か>
- D - I - 0x02DD58 21:9D48: 03        .byte $03	; <う>
- D - I - 0x02DD59 21:9D49: AC        .byte $AC	; <づ>

- D - I - 0x02DD5A 21:9D4A: 10        .byte $10	; <た>
- D - I - 0x02DD5B 21:9D4B: 07        .byte $07	; <き>
- D - I - 0x02DD5C 21:9D4C: 03        .byte $03	; <う>
- D - I - 0x02DD5D 21:9D4D: AE        .byte $AE	; <ど>
- D - I - 0x02DD5E 21:9D4E: 07        .byte $07	; <き>
- D - I - 0x02DD5F 21:9D4F: AF        .byte $AF	; <ば>
- D - I - 0x02DD60 21:9D50: 0F        .byte $0F	; <そ>
- D - I - 0x02DD61 21:9D51: B5        .byte $B5	; <ギ>

- D - I - 0x02DD62 21:9D52: 02        .byte $02	; <い>
- D - I - 0x02DD63 21:9D53: D0 9C     .word off_9CD0



off_9D55:
- D - I - 0x02DD65 21:9D55: 18        .byte $18	; <ね>
- D - I - 0x02DD66 21:9D56: 07        .byte $07	; <き>
- D - I - 0x02DD67 21:9D57: 03        .byte $03	; <う>
- D - I - 0x02DD68 21:9D58: CC        .byte $CC	; <ぽ>
- D - I - 0x02DD69 21:9D59: 07        .byte $07	; <き>
- D - I - 0x02DD6A 21:9D5A: CD        .byte $CD	; <パ>
- D - I - 0x02DD6B 21:9D5B: 0B        .byte $0B	; <さ>
- D - I - 0x02DD6C 21:9D5C: BE        .byte $BE	; <ダ>
- D - I - 0x02DD6D 21:9D5D: 0F        .byte $0F	; <そ>
- D - I - 0x02DD6E 21:9D5E: BF        .byte $BF	; <ヂ>

- D - I - 0x02DD6F 21:9D5F: 00        .byte $00
- D - I - 0x02DD70 21:9D60: 08        .byte $08	; <く>
- D - I - 0x02DD71 21:9D61: 07        .byte $07	; <き>
- D - I - 0x02DD72 21:9D62: C6        .byte $C6	; <ベ>

- D - I - 0x02DD73 21:9D63: 02        .byte $02	; <い>
- D - I - 0x02DD74 21:9D64: F1 9C     .word off_9CF1



off_9D66_4C:
- D - I - 0x02DD76 21:9D66: 03        .byte $03	; <う>
- D - I - 0x02DD77 21:9D67: 73 9D     .word off_9D73
- - - - - 0x02DD79 21:9D69: 82 9D     .word off_9D82
- D - I - 0x02DD7B 21:9D6B: 73 9D     .word off_9D73
- D - I - 0x02DD7D 21:9D6D: 73 9D     .word off_9D73
- D - I - 0x02DD7F 21:9D6F: 73 9D     .word off_9D73
- D - I - 0x02DD81 21:9D71: 82 9D     .word off_9D82



off_9D73:
- D - I - 0x02DD83 21:9D73: 08        .byte $08	; <く>
- D - I - 0x02DD84 21:9D74: 07        .byte $07	; <き>
- D - I - 0x02DD85 21:9D75: 07        .byte $07	; <き>
- D - I - 0x02DD86 21:9D76: B1        .byte $B1	; <ぶ>
- D - I - 0x02DD87 21:9D77: 0F        .byte $0F	; <そ>
- D - I - 0x02DD88 21:9D78: B0        .byte $B0	; <び>

- D - I - 0x02DD89 21:9D79: 08        .byte $08	; <く>
- D - I - 0x02DD8A 21:9D7A: 08        .byte $08	; <く>
- D - I - 0x02DD8B 21:9D7B: 0B        .byte $0B	; <さ>
- D - I - 0x02DD8C 21:9D7C: A5        .byte $A5	; <ざ>
- D - I - 0x02DD8D 21:9D7D: 0F        .byte $0F	; <そ>
- D - I - 0x02DD8E 21:9D7E: B2        .byte $B2	; <べ>

- D - I - 0x02DD8F 21:9D7F: 02        .byte $02	; <い>
- D - I - 0x02DD90 21:9D80: D0 9C     .word off_9CD0



off_9D82:
- D - I - 0x02DD92 21:9D82: 10        .byte $10	; <た>
- D - I - 0x02DD93 21:9D83: 07        .byte $07	; <き>
- D - I - 0x02DD94 21:9D84: 07        .byte $07	; <き>
- D - I - 0x02DD95 21:9D85: BB        .byte $BB	; <ズ>
- D - I - 0x02DD96 21:9D86: 0B        .byte $0B	; <さ>
- D - I - 0x02DD97 21:9D87: C8        .byte $C8	; <ぱ>
- D - I - 0x02DD98 21:9D88: 0F        .byte $0F	; <そ>
- D - I - 0x02DD99 21:9D89: C9        .byte $C9	; <ぴ>

- D - I - 0x02DD9A 21:9D8A: 00        .byte $00
- D - I - 0x02DD9B 21:9D8B: 08        .byte $08	; <く>
- D - I - 0x02DD9C 21:9D8C: 0F        .byte $0F	; <そ>
- D - I - 0x02DD9D 21:9D8D: CB        .byte $CB	; <ぺ>

- D - I - 0x02DD9E 21:9D8E: 02        .byte $02	; <い>
- D - I - 0x02DD9F 21:9D8F: F1 9C     .word off_9CF1



off_9D91_4D:
- D - I - 0x02DDA1 21:9D91: 03        .byte $03	; <う>
- D - I - 0x02DDA2 21:9D92: 9E 9D     .word off_9D9E
- - - - - 0x02DDA4 21:9D94: AD 9D     .word off_9DAD
- D - I - 0x02DDA6 21:9D96: 9E 9D     .word off_9D9E
- D - I - 0x02DDA8 21:9D98: 9E 9D     .word off_9D9E
- D - I - 0x02DDAA 21:9D9A: 9E 9D     .word off_9D9E
- D - I - 0x02DDAC 21:9D9C: AD 9D     .word off_9DAD



off_9D9E:
- D - I - 0x02DDAE 21:9D9E: 08        .byte $08	; <く>
- D - I - 0x02DDAF 21:9D9F: 07        .byte $07	; <き>
- D - I - 0x02DDB0 21:9DA0: 07        .byte $07	; <き>
- D - I - 0x02DDB1 21:9DA1: B1        .byte $B1	; <ぶ>
- D - I - 0x02DDB2 21:9DA2: 0F        .byte $0F	; <そ>
- D - I - 0x02DDB3 21:9DA3: B8        .byte $B8	; <ゴ>

- D - I - 0x02DDB4 21:9DA4: 08        .byte $08	; <く>
- D - I - 0x02DDB5 21:9DA5: 08        .byte $08	; <く>
- D - I - 0x02DDB6 21:9DA6: 0B        .byte $0B	; <さ>
- D - I - 0x02DDB7 21:9DA7: AA        .byte $AA	; <だ>
- D - I - 0x02DDB8 21:9DA8: 0F        .byte $0F	; <そ>
- D - I - 0x02DDB9 21:9DA9: AB        .byte $AB	; <ぢ>

- D - I - 0x02DDBA 21:9DAA: 02        .byte $02	; <い>
- D - I - 0x02DDBB 21:9DAB: D0 9C     .word off_9CD0



off_9DAD:
- D - I - 0x02DDBD 21:9DAD: 10        .byte $10	; <た>
- D - I - 0x02DDBE 21:9DAE: 07        .byte $07	; <き>
- D - I - 0x02DDBF 21:9DAF: 07        .byte $07	; <き>
- D - I - 0x02DDC0 21:9DB0: BB        .byte $BB	; <ズ>
- D - I - 0x02DDC1 21:9DB1: 0B        .byte $0B	; <さ>
- D - I - 0x02DDC2 21:9DB2: CE        .byte $CE	; <ピ>
- D - I - 0x02DDC3 21:9DB3: 0F        .byte $0F	; <そ>
- D - I - 0x02DDC4 21:9DB4: 9E        .byte $9E

- D - I - 0x02DDC5 21:9DB5: 00        .byte $00
- D - I - 0x02DDC6 21:9DB6: 08        .byte $08	; <く>
- D - I - 0x02DDC7 21:9DB7: 0F        .byte $0F	; <そ>
- D - I - 0x02DDC8 21:9DB8: CA        .byte $CA	; <ぷ>

- D - I - 0x02DDC9 21:9DB9: 02        .byte $02	; <い>
- D - I - 0x02DDCA 21:9DBA: F1 9C     .word off_9CF1



off_9DBC_4E:
- D - I - 0x02DDCC 21:9DBC: 20        .byte $20	; <み>
- D - I - 0x02DDCD 21:9DBD: 00        .byte $00
- D - I - 0x02DDCE 21:9DBE: 1B        .byte $1B	; <ひ>
- D - I - 0x02DDCF 21:9DBF: 20        .byte $20	; <み>
- D - I - 0x02DDD0 21:9DC0: 83        .byte $83	; <C>
- D - I - 0x02DDD1 21:9DC1: 21        .byte $21	; <む>
- D - I - 0x02DDD2 21:9DC2: C3        .byte $C3	; <バ>
- D - I - 0x02DDD3 21:9DC3: 0F        .byte $0F	; <そ>
- D - I - 0x02DDD4 21:9DC4: C2        .byte $C2	; <ド>
- D - I - 0x02DDD5 21:9DC5: 24        .byte $24	; <や>
- D - I - 0x02DDD6 21:9DC6: C6        .byte $C6	; <ベ>
- D - I - 0x02DDD7 21:9DC7: 25        .byte $25	; <ゆ>

- D - I - 0x02DDD8 21:9DC8: 28        .byte $28	; <り>
- D - I - 0x02DDD9 21:9DC9: 01        .byte $01	; <あ>
- D - I - 0x02DDDA 21:9DCA: 17        .byte $17	; <ぬ>
- D - I - 0x02DDDB 21:9DCB: 20        .byte $20	; <み>
- D - I - 0x02DDDC 21:9DCC: 1B        .byte $1B	; <ひ>
- D - I - 0x02DDDD 21:9DCD: 22        .byte $22	; <め>
- D - I - 0x02DDDE 21:9DCE: 83        .byte $83	; <C>
- D - I - 0x02DDDF 21:9DCF: 23        .byte $23	; <も>
- D - I - 0x02DDE0 21:9DD0: C3        .byte $C3	; <バ>
- D - I - 0x02DDE1 21:9DD1: 26        .byte $26	; <よ>
- D - I - 0x02DDE2 21:9DD2: C7        .byte $C7	; <ボ>
- D - I - 0x02DDE3 21:9DD3: 32        .byte $32	; <ょ>
- D - I - 0x02DDE4 21:9DD4: C6        .byte $C6	; <ベ>
- D - I - 0x02DDE5 21:9DD5: 27        .byte $27	; <ら>

- D - I - 0x02DDE6 21:9DD6: 20        .byte $20	; <み>
- D - I - 0x02DDE7 21:9DD7: 02        .byte $02	; <い>
- D - I - 0x02DDE8 21:9DD8: 13        .byte $13	; <て>
- D - I - 0x02DDE9 21:9DD9: 20        .byte $20	; <み>
- D - I - 0x02DDEA 21:9DDA: 17        .byte $17	; <ぬ>
- D - I - 0x02DDEB 21:9DDB: 22        .byte $22	; <め>
- D - I - 0x02DDEC 21:9DDC: 1B        .byte $1B	; <ひ>
- D - I - 0x02DDED 21:9DDD: 23        .byte $23	; <も>
- D - I - 0x02DDEE 21:9DDE: 83        .byte $83	; <C>
- D - I - 0x02DDEF 21:9DDF: 30        .byte $30	; <ゃ>
- D - I - 0x02DDF0 21:9DE0: C3        .byte $C3	; <バ>
- D - I - 0x02DDF1 21:9DE1: 31        .byte $31	; <ゅ>

- D - I - 0x02DDF2 21:9DE2: 28        .byte $28	; <り>
- D - I - 0x02DDF3 21:9DE3: 03        .byte $03	; <う>
- D - I - 0x02DDF4 21:9DE4: 0B        .byte $0B	; <さ>
- D - I - 0x02DDF5 21:9DE5: 28        .byte $28	; <り>
- D - I - 0x02DDF6 21:9DE6: 0F        .byte $0F	; <そ>
- D - I - 0x02DDF7 21:9DE7: 29        .byte $29	; <る>
- D - I - 0x02DDF8 21:9DE8: 13        .byte $13	; <て>
- D - I - 0x02DDF9 21:9DE9: 2C        .byte $2C	; <わ>
- D - I - 0x02DDFA 21:9DEA: 17        .byte $17	; <ぬ>
- D - I - 0x02DDFB 21:9DEB: 2D        .byte $2D	; <を>
- D - I - 0x02DDFC 21:9DEC: 1B        .byte $1B	; <ひ>
- D - I - 0x02DDFD 21:9DED: 38        .byte $38	; <5>
- D - I - 0x02DDFE 21:9DEE: 83        .byte $83	; <C>
- D - I - 0x02DDFF 21:9DEF: 39        .byte $39	; <6>

- D - I - 0x02DE00 21:9DF0: 18        .byte $18	; <ね>
- D - I - 0x02DE01 21:9DF1: 04        .byte $04	; <え>
- D - I - 0x02DE02 21:9DF2: 0B        .byte $0B	; <さ>
- D - I - 0x02DE03 21:9DF3: 10        .byte $10	; <た>
- D - I - 0x02DE04 21:9DF4: 0F        .byte $0F	; <そ>
- D - I - 0x02DE05 21:9DF5: 11        .byte $11	; <ち>
- D - I - 0x02DE06 21:9DF6: 13        .byte $13	; <て>
- D - I - 0x02DE07 21:9DF7: 14        .byte $14	; <と>
- D - I - 0x02DE08 21:9DF8: 17        .byte $17	; <ぬ>
- D - I - 0x02DE09 21:9DF9: 15        .byte $15	; <な>

- D - I - 0x02DE0A 21:9DFA: 20        .byte $20	; <み>
- D - I - 0x02DE0B 21:9DFB: 05        .byte $05	; <お>
- D - I - 0x02DE0C 21:9DFC: 0B        .byte $0B	; <さ>
- D - I - 0x02DE0D 21:9DFD: 12        .byte $12	; <つ>
- D - I - 0x02DE0E 21:9DFE: 0F        .byte $0F	; <そ>
- D - I - 0x02DE0F 21:9DFF: 15        .byte $15	; <な>
- D - I - 0x02DE10 21:9E00: 83        .byte $83	; <C>
- D - I - 0x02DE11 21:9E01: 13        .byte $13	; <て>
- D - I - 0x02DE12 21:9E02: C3        .byte $C3	; <バ>
- D - I - 0x02DE13 21:9E03: 16        .byte $16	; <に>
- D - I - 0x02DE14 21:9E04: C7        .byte $C7	; <ボ>
- D - I - 0x02DE15 21:9E05: 17        .byte $17	; <ぬ>

- D - I - 0x02DE16 21:9E06: 38        .byte $38	; <5>
- D - I - 0x02DE17 21:9E07: 06        .byte $06	; <か>
- D - I - 0x02DE18 21:9E08: 0B        .byte $0B	; <さ>
- D - I - 0x02DE19 21:9E09: 18        .byte $18	; <ね>
- D - I - 0x02DE1A 21:9E0A: 0F        .byte $0F	; <そ>
- D - I - 0x02DE1B 21:9E0B: 19        .byte $19	; <の>
- D - I - 0x02DE1C 21:9E0C: 13        .byte $13	; <て>
- D - I - 0x02DE1D 21:9E0D: 1C        .byte $1C	; <ふ>
- D - I - 0x02DE1E 21:9E0E: 17        .byte $17	; <ぬ>
- D - I - 0x02DE1F 21:9E0F: 1D        .byte $1D	; <へ>
- D - I - 0x02DE20 21:9E10: 1B        .byte $1B	; <ひ>
- D - I - 0x02DE21 21:9E11: 1A        .byte $1A	; <は>
- D - I - 0x02DE22 21:9E12: 83        .byte $83	; <C>
- D - I - 0x02DE23 21:9E13: 23        .byte $23	; <も>
- D - I - 0x02DE24 21:9E14: C3        .byte $C3	; <バ>
- D - I - 0x02DE25 21:9E15: 23        .byte $23	; <も>
- D - I - 0x02DE26 21:9E16: C7        .byte $C7	; <ボ>
- D - I - 0x02DE27 21:9E17: 1B        .byte $1B	; <ひ>

- D - I - 0x02DE28 21:9E18: 38        .byte $38	; <5>
- D - I - 0x02DE29 21:9E19: 07        .byte $07	; <き>
- D - I - 0x02DE2A 21:9E1A: 0B        .byte $0B	; <さ>
- D - I - 0x02DE2B 21:9E1B: 2A        .byte $2A	; <れ>
- D - I - 0x02DE2C 21:9E1C: 0F        .byte $0F	; <そ>
- D - I - 0x02DE2D 21:9E1D: 2B        .byte $2B	; <ろ>
- D - I - 0x02DE2E 21:9E1E: 13        .byte $13	; <て>
- D - I - 0x02DE2F 21:9E1F: 2E        .byte $2E	; <ん>
- D - I - 0x02DE30 21:9E20: 17        .byte $17	; <ぬ>
- D - I - 0x02DE31 21:9E21: 2F        .byte $2F	; <っ>
- D - I - 0x02DE32 21:9E22: 1B        .byte $1B	; <ひ>
- D - I - 0x02DE33 21:9E23: 3A        .byte $3A	; <7>
- D - I - 0x02DE34 21:9E24: 83        .byte $83	; <C>
- D - I - 0x02DE35 21:9E25: 3B        .byte $3B	; <8>
- D - I - 0x02DE36 21:9E26: C3        .byte $C3	; <バ>
- D - I - 0x02DE37 21:9E27: 1E        .byte $1E	; <ほ>
- D - I - 0x02DE38 21:9E28: C7        .byte $C7	; <ボ>
- D - I - 0x02DE39 21:9E29: 1F        .byte $1F	; <ま>

- D - I - 0x02DE3A 21:9E2A: 30        .byte $30	; <ゃ>
- D - I - 0x02DE3B 21:9E2B: 08        .byte $08	; <く>
- D - I - 0x02DE3C 21:9E2C: 0B        .byte $0B	; <さ>
- D - I - 0x02DE3D 21:9E2D: 34        .byte $34	; <1>
- D - I - 0x02DE3E 21:9E2E: 0F        .byte $0F	; <そ>
- D - I - 0x02DE3F 21:9E2F: 35        .byte $35	; <2>
- D - I - 0x02DE40 21:9E30: 13        .byte $13	; <て>
- D - I - 0x02DE41 21:9E31: 15        .byte $15	; <な>
- D - I - 0x02DE42 21:9E32: 1B        .byte $1B	; <ひ>
- D - I - 0x02DE43 21:9E33: 33        .byte $33	; <0>
- D - I - 0x02DE44 21:9E34: 83        .byte $83	; <C>
- D - I - 0x02DE45 21:9E35: 36        .byte $36	; <3>
- D - I - 0x02DE46 21:9E36: C3        .byte $C3	; <バ>
- D - I - 0x02DE47 21:9E37: 37        .byte $37	; <4>
- D - I - 0x02DE48 21:9E38: C7        .byte $C7	; <ボ>
- D - I - 0x02DE49 21:9E39: 3C        .byte $3C	; <9>

- D - I - 0x02DE4A 21:9E3A: 01        .byte $01	; <あ>



off_9E3B_4F:
- D - I - 0x02DE4B 21:9E3B: 03        .byte $03	; <う>
- D - I - 0x02DE4C 21:9E3C: 54 9E     .word off_9E54
- D - I - 0x02DE4E 21:9E3E: C3 9E     .word off_9EC3
- D - I - 0x02DE50 21:9E40: 54 9E     .word off_9E54
- D - I - 0x02DE52 21:9E42: 54 9E     .word off_9E54
- D - I - 0x02DE54 21:9E44: 54 9E     .word off_9E54
- D - I - 0x02DE56 21:9E46: 54 9E     .word off_9E54
- D - I - 0x02DE58 21:9E48: 54 9E     .word off_9E54
- D - I - 0x02DE5A 21:9E4A: D4 9E     .word off_9ED4
- D - I - 0x02DE5C 21:9E4C: 54 9E     .word off_9E54
- D - I - 0x02DE5E 21:9E4E: 54 9E     .word off_9E54
- D - I - 0x02DE60 21:9E50: 54 9E     .word off_9E54
- - - - - 0x02DE62 21:9E52: 54 9E     .word off_9E54



off_9E54:
- D - I - 0x02DE64 21:9E54: 00        .byte $00
- D - I - 0x02DE65 21:9E55: 04        .byte $04	; <え>
- D - I - 0x02DE66 21:9E56: 09        .byte $09	; <け>
- D - I - 0x02DE67 21:9E57: 22        .byte $22	; <め>

- D - I - 0x02DE68 21:9E58: 08        .byte $08	; <く>
- D - I - 0x02DE69 21:9E59: 05        .byte $05	; <お>
- D - I - 0x02DE6A 21:9E5A: 09        .byte $09	; <け>
- D - I - 0x02DE6B 21:9E5B: 28        .byte $28	; <り>
- D - I - 0x02DE6C 21:9E5C: 0D        .byte $0D	; <す>
- D - I - 0x02DE6D 21:9E5D: 29        .byte $29	; <る>
; продолжение


off_9E5E:
- D - I - 0x02DE6E 21:9E5E: 10        .byte $10	; <た>
- D - I - 0x02DE6F 21:9E5F: 06        .byte $06	; <か>
- D - I - 0x02DE70 21:9E60: 09        .byte $09	; <け>
- D - I - 0x02DE71 21:9E61: 2A        .byte $2A	; <れ>
- D - I - 0x02DE72 21:9E62: 0C        .byte $0C	; <し>
- D - I - 0x02DE73 21:9E63: 23        .byte $23	; <も>
- D - I - 0x02DE74 21:9E64: 0D        .byte $0D	; <す>
- D - I - 0x02DE75 21:9E65: 2B        .byte $2B	; <ろ>
; продолжение


off_9E66:
- D - I - 0x02DE76 21:9E66: 10        .byte $10	; <た>
- D - I - 0x02DE77 21:9E67: 1E        .byte $1E	; <ほ>
- D - I - 0x02DE78 21:9E68: B5        .byte $B5	; <ギ>
- D - I - 0x02DE79 21:9E69: 02        .byte $02	; <い>
- D - I - 0x02DE7A 21:9E6A: 05        .byte $05	; <お>
- D - I - 0x02DE7B 21:9E6B: 04        .byte $04	; <え>
- D - I - 0x02DE7C 21:9E6C: 0B        .byte $0B	; <さ>
- D - I - 0x02DE7D 21:9E6D: 05        .byte $05	; <お>

- D - I - 0x02DE7E 21:9E6E: 20        .byte $20	; <み>
- D - I - 0x02DE7F 21:9E6F: 00        .byte $00
- D - I - 0x02DE80 21:9E70: B7        .byte $B7	; <ゲ>
- D - I - 0x02DE81 21:9E71: 08        .byte $08	; <く>
- D - I - 0x02DE82 21:9E72: 69        .byte $69	; <ル>
- D - I - 0x02DE83 21:9E73: 03        .byte $03	; <う>
- D - I - 0x02DE84 21:9E74: 01        .byte $01	; <あ>
- D - I - 0x02DE85 21:9E75: 06        .byte $06	; <か>
- D - I - 0x02DE86 21:9E76: 09        .byte $09	; <け>
- D - I - 0x02DE87 21:9E77: 07        .byte $07	; <き>
- D - I - 0x02DE88 21:9E78: 0D        .byte $0D	; <す>
- D - I - 0x02DE89 21:9E79: 12        .byte $12	; <つ>

- D - I - 0x02DE8A 21:9E7A: 28        .byte $28	; <り>
- D - I - 0x02DE8B 21:9E7B: 01        .byte $01	; <あ>
- D - I - 0x02DE8C 21:9E7C: 69        .byte $69	; <ル>
- D - I - 0x02DE8D 21:9E7D: 09        .byte $09	; <け>
- D - I - 0x02DE8E 21:9E7E: 01        .byte $01	; <あ>
- D - I - 0x02DE8F 21:9E7F: 0C        .byte $0C	; <し>
- D - I - 0x02DE90 21:9E80: 05        .byte $05	; <お>
- D - I - 0x02DE91 21:9E81: 0D        .byte $0D	; <す>
- D - I - 0x02DE92 21:9E82: 0A        .byte $0A	; <こ>
- D - I - 0x02DE93 21:9E83: 0A        .byte $0A	; <こ>
- D - I - 0x02DE94 21:9E84: 0E        .byte $0E	; <せ>
- D - I - 0x02DE95 21:9E85: 0B        .byte $0B	; <さ>
- D - I - 0x02DE96 21:9E86: 10        .byte $10	; <た>
- D - I - 0x02DE97 21:9E87: 0E        .byte $0E	; <せ>

- D - I - 0x02DE98 21:9E88: 20        .byte $20	; <み>
- D - I - 0x02DE99 21:9E89: 02        .byte $02	; <い>
- D - I - 0x02DE9A 21:9E8A: 01        .byte $01	; <あ>
- D - I - 0x02DE9B 21:9E8B: 20        .byte $20	; <み>
- D - I - 0x02DE9C 21:9E8C: 05        .byte $05	; <お>
- D - I - 0x02DE9D 21:9E8D: 21        .byte $21	; <む>
- D - I - 0x02DE9E 21:9E8E: 0A        .byte $0A	; <こ>
- D - I - 0x02DE9F 21:9E8F: 24        .byte $24	; <や>
- D - I - 0x02DEA0 21:9E90: 0E        .byte $0E	; <せ>
- D - I - 0x02DEA1 21:9E91: 25        .byte $25	; <ゆ>
- D - I - 0x02DEA2 21:9E92: 12        .byte $12	; <つ>
- D - I - 0x02DEA3 21:9E93: 30        .byte $30	; <ゃ>

- D - I - 0x02DEA4 21:9E94: 30        .byte $30	; <ゃ>
- D - I - 0x02DEA5 21:9E95: 03        .byte $03	; <う>
- D - I - 0x02DEA6 21:9E96: 04        .byte $04	; <え>
- D - I - 0x02DEA7 21:9E97: 0F        .byte $0F	; <そ>
- D - I - 0x02DEA8 21:9E98: 0A        .byte $0A	; <こ>
- D - I - 0x02DEA9 21:9E99: 1A        .byte $1A	; <は>
- D - I - 0x02DEAA 21:9E9A: 0E        .byte $0E	; <せ>
- D - I - 0x02DEAB 21:9E9B: 1B        .byte $1B	; <ひ>
- D - I - 0x02DEAC 21:9E9C: 0D        .byte $0D	; <す>
- D - I - 0x02DEAD 21:9E9D: 18        .byte $18	; <ね>
- D - I - 0x02DEAE 21:9E9E: 12        .byte $12	; <つ>
- D - I - 0x02DEAF 21:9E9F: 1E        .byte $1E	; <ほ>
- D - I - 0x02DEB0 21:9EA0: 11        .byte $11	; <ち>
- D - I - 0x02DEB1 21:9EA1: 19        .byte $19	; <の>
- D - I - 0x02DEB2 21:9EA2: 14        .byte $14	; <と>
- D - I - 0x02DEB3 21:9EA3: 1F        .byte $1F	; <ま>

- D - I - 0x02DEB4 21:9EA4: 08        .byte $08	; <く>
- D - I - 0x02DEB5 21:9EA5: 04        .byte $04	; <え>
- D - I - 0x02DEB6 21:9EA6: 0D        .byte $0D	; <す>
- D - I - 0x02DEB7 21:9EA7: 1C        .byte $1C	; <ふ>
- D - I - 0x02DEB8 21:9EA8: 11        .byte $11	; <ち>
- D - I - 0x02DEB9 21:9EA9: 1D        .byte $1D	; <へ>

- D - I - 0x02DEBA 21:9EAA: 00        .byte $00
- D - I - 0x02DEBB 21:9EAB: 05        .byte $05	; <お>
- D - I - 0x02DEBC 21:9EAC: 11        .byte $11	; <ち>
- D - I - 0x02DEBD 21:9EAD: 15        .byte $15	; <な>

- D - I - 0x02DEBE 21:9EAE: 08        .byte $08	; <く>
- D - I - 0x02DEBF 21:9EAF: 06        .byte $06	; <か>
- D - I - 0x02DEC0 21:9EB0: 04        .byte $04	; <え>
- D - I - 0x02DEC1 21:9EB1: 31        .byte $31	; <ゅ>
- D - I - 0x02DEC2 21:9EB2: 11        .byte $11	; <ち>
- D - I - 0x02DEC3 21:9EB3: 17        .byte $17	; <ぬ>

- D - I - 0x02DEC4 21:9EB4: 10        .byte $10	; <た>
- D - I - 0x02DEC5 21:9EB5: 07        .byte $07	; <き>
- D - I - 0x02DEC6 21:9EB6: 00        .byte $00
- D - I - 0x02DEC7 21:9EB7: 14        .byte $14	; <と>
- D - I - 0x02DEC8 21:9EB8: 04        .byte $04	; <え>
- D - I - 0x02DEC9 21:9EB9: 10        .byte $10	; <た>
- D - I - 0x02DECA 21:9EBA: 08        .byte $08	; <く>
- D - I - 0x02DECB 21:9EBB: 11        .byte $11	; <ち>

- D - I - 0x02DECC 21:9EBC: 08        .byte $08	; <く>
- D - I - 0x02DECD 21:9EBD: 08        .byte $08	; <く>
- D - I - 0x02DECE 21:9EBE: 00        .byte $00
- D - I - 0x02DECF 21:9EBF: 13        .byte $13	; <て>
- D - I - 0x02DED0 21:9EC0: 04        .byte $04	; <え>
- D - I - 0x02DED1 21:9EC1: 16        .byte $16	; <に>

- D - I - 0x02DED2 21:9EC2: 01        .byte $01	; <あ>



off_9EC3:
- D - I - 0x02DED3 21:9EC3: 08        .byte $08	; <く>
- D - I - 0x02DED4 21:9EC4: 04        .byte $04	; <え>
- D - I - 0x02DED5 21:9EC5: 08        .byte $08	; <く>
- D - I - 0x02DED6 21:9EC6: 26        .byte $26	; <よ>
- D - I - 0x02DED7 21:9EC7: 09        .byte $09	; <け>
- D - I - 0x02DED8 21:9EC8: 27        .byte $27	; <ら>

- D - I - 0x02DED9 21:9EC9: 10        .byte $10	; <た>
- D - I - 0x02DEDA 21:9ECA: 05        .byte $05	; <お>
- D - I - 0x02DEDB 21:9ECB: 08        .byte $08	; <く>
- D - I - 0x02DEDC 21:9ECC: 2C        .byte $2C	; <わ>
- D - I - 0x02DEDD 21:9ECD: 09        .byte $09	; <け>
- D - I - 0x02DEDE 21:9ECE: 2D        .byte $2D	; <を>
- D - I - 0x02DEDF 21:9ECF: 0D        .byte $0D	; <す>
- D - I - 0x02DEE0 21:9ED0: 29        .byte $29	; <る>

- D - I - 0x02DEE1 21:9ED1: 02        .byte $02	; <い>
- D - I - 0x02DEE2 21:9ED2: 5E 9E     .word off_9E5E



off_9ED4:
- D - I - 0x02DEE4 21:9ED4: 00        .byte $00
- D - I - 0x02DEE5 21:9ED5: 04        .byte $04	; <え>
- D - I - 0x02DEE6 21:9ED6: 09        .byte $09	; <け>
- D - I - 0x02DEE7 21:9ED7: 22        .byte $22	; <め>

- D - I - 0x02DEE8 21:9ED8: 08        .byte $08	; <く>
- D - I - 0x02DEE9 21:9ED9: 05        .byte $05	; <お>
- D - I - 0x02DEEA 21:9EDA: 09        .byte $09	; <け>
- D - I - 0x02DEEB 21:9EDB: 2E        .byte $2E	; <ん>
- D - I - 0x02DEEC 21:9EDC: 0D        .byte $0D	; <す>
- D - I - 0x02DEED 21:9EDD: 2F        .byte $2F	; <っ>

- D - I - 0x02DEEE 21:9EDE: 10        .byte $10	; <た>
- D - I - 0x02DEEF 21:9EDF: 06        .byte $06	; <か>
- D - I - 0x02DEF0 21:9EE0: 08        .byte $08	; <く>
- D - I - 0x02DEF1 21:9EE1: 32        .byte $32	; <ょ>
- D - I - 0x02DEF2 21:9EE2: 0C        .byte $0C	; <し>
- D - I - 0x02DEF3 21:9EE3: 23        .byte $23	; <も>
- D - I - 0x02DEF4 21:9EE4: 0D        .byte $0D	; <す>
- D - I - 0x02DEF5 21:9EE5: 33        .byte $33	; <0>

- D - I - 0x02DEF6 21:9EE6: 02        .byte $02	; <い>
- D - I - 0x02DEF7 21:9EE7: 66 9E     .word off_9E66



off_9EE9_50:
- D - I - 0x02DEF9 21:9EE9: 03        .byte $03	; <う>
- D - I - 0x02DEFA 21:9EEA: 02 9F     .word off_9F02
- D - I - 0x02DEFC 21:9EEC: 15 9F     .word off_9F15
- D - I - 0x02DEFE 21:9EEE: 02 9F     .word off_9F02
- D - I - 0x02DF00 21:9EF0: 02 9F     .word off_9F02
- D - I - 0x02DF02 21:9EF2: 2A 9F     .word off_9F2A
- D - I - 0x02DF04 21:9EF4: 2A 9F     .word off_9F2A
- D - I - 0x02DF06 21:9EF6: 2A 9F     .word off_9F2A
- D - I - 0x02DF08 21:9EF8: 3D 9F     .word off_9F3D
- D - I - 0x02DF0A 21:9EFA: 2A 9F     .word off_9F2A
- D - I - 0x02DF0C 21:9EFC: 2A 9F     .word off_9F2A
- - - - - 0x02DF0E 21:9EFE: 2A 9F     .word off_9F2A
- D - I - 0x02DF10 21:9F00: 2A 9F     .word off_9F2A



off_9F02:
- D - I - 0x02DF12 21:9F02: 18        .byte $18	; <ね>
- D - I - 0x02DF13 21:9F03: 05        .byte $05	; <お>
- D - I - 0x02DF14 21:9F04: 10        .byte $10	; <た>
- D - I - 0x02DF15 21:9F05: 42        .byte $42	; <イ>
- D - I - 0x02DF16 21:9F06: 15        .byte $15	; <な>
- D - I - 0x02DF17 21:9F07: 49        .byte $49	; <ケ>
- D - I - 0x02DF18 21:9F08: 14        .byte $14	; <と>
- D - I - 0x02DF19 21:9F09: 46        .byte $46	; <カ>
- D - I - 0x02DF1A 21:9F0A: 19        .byte $19	; <の>
- D - I - 0x02DF1B 21:9F0B: 4C        .byte $4C	; <シ>

- D - I - 0x02DF1C 21:9F0C: 08        .byte $08	; <く>
- D - I - 0x02DF1D 21:9F0D: 06        .byte $06	; <か>
- D - I - 0x02DF1E 21:9F0E: 14        .byte $14	; <と>
- D - I - 0x02DF1F 21:9F0F: 44        .byte $44	; <エ>
- D - I - 0x02DF20 21:9F10: 19        .byte $19	; <の>
- D - I - 0x02DF21 21:9F11: 45        .byte $45	; <オ>

- D - I - 0x02DF22 21:9F12: 02        .byte $02	; <い>
- D - I - 0x02DF23 21:9F13: 4D 9F     .word off_9F4D



off_9F15:
- D - I - 0x02DF25 21:9F15: 18        .byte $18	; <ね>
- D - I - 0x02DF26 21:9F16: 05        .byte $05	; <お>
- D - I - 0x02DF27 21:9F17: 10        .byte $10	; <た>
- D - I - 0x02DF28 21:9F18: 63        .byte $63	; <モ>
- D - I - 0x02DF29 21:9F19: 15        .byte $15	; <な>
- D - I - 0x02DF2A 21:9F1A: 66        .byte $66	; <ヨ>
- D - I - 0x02DF2B 21:9F1B: 14        .byte $14	; <と>
- D - I - 0x02DF2C 21:9F1C: 18        .byte $18	; <ね>
- D - I - 0x02DF2D 21:9F1D: 19        .byte $19	; <の>
- D - I - 0x02DF2E 21:9F1E: 4C        .byte $4C	; <シ>

- D - I - 0x02DF2F 21:9F1F: 10        .byte $10	; <た>
- D - I - 0x02DF30 21:9F20: 06        .byte $06	; <か>
- D - I - 0x02DF31 21:9F21: 10        .byte $10	; <た>
- D - I - 0x02DF32 21:9F22: 69        .byte $69	; <ル>
- D - I - 0x02DF33 21:9F23: 14        .byte $14	; <と>
- D - I - 0x02DF34 21:9F24: 6C        .byte $6C	; <ワ>
- D - I - 0x02DF35 21:9F25: 19        .byte $19	; <の>
- D - I - 0x02DF36 21:9F26: 45        .byte $45	; <オ>

- D - I - 0x02DF37 21:9F27: 02        .byte $02	; <い>
- D - I - 0x02DF38 21:9F28: 4D 9F     .word off_9F4D



off_9F2A:
- D - I - 0x02DF3A 21:9F2A: 18        .byte $18	; <ね>
- D - I - 0x02DF3B 21:9F2B: 05        .byte $05	; <お>
- D - I - 0x02DF3C 21:9F2C: 10        .byte $10	; <た>
- D - I - 0x02DF3D 21:9F2D: 42        .byte $42	; <イ>
- D - I - 0x02DF3E 21:9F2E: 15        .byte $15	; <な>
- D - I - 0x02DF3F 21:9F2F: 6B        .byte $6B	; <ロ>
- D - I - 0x02DF40 21:9F30: 14        .byte $14	; <と>
- D - I - 0x02DF41 21:9F31: 6A        .byte $6A	; <レ>
- D - I - 0x02DF42 21:9F32: 19        .byte $19	; <の>
- D - I - 0x02DF43 21:9F33: 4C        .byte $4C	; <シ>

- D - I - 0x02DF44 21:9F34: 08        .byte $08	; <く>
- D - I - 0x02DF45 21:9F35: 06        .byte $06	; <か>
- D - I - 0x02DF46 21:9F36: 14        .byte $14	; <と>
- D - I - 0x02DF47 21:9F37: 6E        .byte $6E	; <ン>
- D - I - 0x02DF48 21:9F38: 19        .byte $19	; <の>
- D - I - 0x02DF49 21:9F39: 45        .byte $45	; <オ>

- D - I - 0x02DF4A 21:9F3A: 02        .byte $02	; <い>
- D - I - 0x02DF4B 21:9F3B: 4D 9F     .word off_9F4D



off_9F3D:
- D - I - 0x02DF4D 21:9F3D: 18        .byte $18	; <ね>
- D - I - 0x02DF4E 21:9F3E: 05        .byte $05	; <お>
- D - I - 0x02DF4F 21:9F3F: 10        .byte $10	; <た>
- D - I - 0x02DF50 21:9F40: 42        .byte $42	; <イ>
- D - I - 0x02DF51 21:9F41: 15        .byte $15	; <な>
- D - I - 0x02DF52 21:9F42: 4E        .byte $4E	; <セ>
- D - I - 0x02DF53 21:9F43: 14        .byte $14	; <と>
- D - I - 0x02DF54 21:9F44: 46        .byte $46	; <カ>
- D - I - 0x02DF55 21:9F45: 19        .byte $19	; <の>
- D - I - 0x02DF56 21:9F46: 47        .byte $47	; <キ>

- D - I - 0x02DF57 21:9F47: 08        .byte $08	; <く>
- D - I - 0x02DF58 21:9F48: 06        .byte $06	; <か>
- D - I - 0x02DF59 21:9F49: 14        .byte $14	; <と>
- D - I - 0x02DF5A 21:9F4A: 64        .byte $64	; <ヤ>
- D - I - 0x02DF5B 21:9F4B: 18        .byte $18	; <ね>
- D - I - 0x02DF5C 21:9F4C: 4D        .byte $4D	; <ス>
; продолжение


off_9F4D:
- D - I - 0x02DF5D 21:9F4D: 00        .byte $00
- D - I - 0x02DF5E 21:9F4E: 18        .byte $18	; <ね>
- D - I - 0x02DF5F 21:9F4F: 6B        .byte $6B	; <ロ>
- D - I - 0x02DF60 21:9F50: 38        .byte $38	; <5>

- D - I - 0x02DF61 21:9F51: 28        .byte $28	; <り>
- D - I - 0x02DF62 21:9F52: 02        .byte $02	; <い>
- D - I - 0x02DF63 21:9F53: 03        .byte $03	; <う>
- D - I - 0x02DF64 21:9F54: 34        .byte $34	; <1>
- D - I - 0x02DF65 21:9F55: 05        .byte $05	; <お>
- D - I - 0x02DF66 21:9F56: 36        .byte $36	; <3>
- D - I - 0x02DF67 21:9F57: 09        .byte $09	; <け>
- D - I - 0x02DF68 21:9F58: 37        .byte $37	; <4>
- D - I - 0x02DF69 21:9F59: 0D        .byte $0D	; <す>
- D - I - 0x02DF6A 21:9F5A: 62        .byte $62	; <メ>
- D - I - 0x02DF6B 21:9F5B: 11        .byte $11	; <ち>
- D - I - 0x02DF6C 21:9F5C: 4F        .byte $4F	; <ソ>
- D - I - 0x02DF6D 21:9F5D: 15        .byte $15	; <な>
- D - I - 0x02DF6E 21:9F5E: 65        .byte $65	; <ユ>

- D - I - 0x02DF6F 21:9F5F: 30        .byte $30	; <ゃ>
- D - I - 0x02DF70 21:9F60: 03        .byte $03	; <う>
- D - I - 0x02DF71 21:9F61: 03        .byte $03	; <う>
- D - I - 0x02DF72 21:9F62: 39        .byte $39	; <6>
- D - I - 0x02DF73 21:9F63: 05        .byte $05	; <お>
- D - I - 0x02DF74 21:9F64: 3C        .byte $3C	; <9>
- D - I - 0x02DF75 21:9F65: 09        .byte $09	; <け>
- D - I - 0x02DF76 21:9F66: 3D        .byte $3D	; <+>
- D - I - 0x02DF77 21:9F67: 0E        .byte $0E	; <せ>
- D - I - 0x02DF78 21:9F68: 68        .byte $68	; <リ>
- D - I - 0x02DF79 21:9F69: 11        .byte $11	; <ち>
- D - I - 0x02DF7A 21:9F6A: 35        .byte $35	; <2>
- D - I - 0x02DF7B 21:9F6B: 15        .byte $15	; <な>
- D - I - 0x02DF7C 21:9F6C: 60        .byte $60	; <ミ>
- D - I - 0x02DF7D 21:9F6D: 18        .byte $18	; <ね>
- D - I - 0x02DF7E 21:9F6E: 61        .byte $61	; <ム>

- D - I - 0x02DF7F 21:9F6F: 30        .byte $30	; <ゃ>
- D - I - 0x02DF80 21:9F70: 04        .byte $04	; <え>
- D - I - 0x02DF81 21:9F71: 0F        .byte $0F	; <そ>
- D - I - 0x02DF82 21:9F72: 3A        .byte $3A	; <7>
- D - I - 0x02DF83 21:9F73: 12        .byte $12	; <つ>
- D - I - 0x02DF84 21:9F74: 43        .byte $43	; <ウ>
- D - I - 0x02DF85 21:9F75: 12        .byte $12	; <つ>
- D - I - 0x02DF86 21:9F76: 3B        .byte $3B	; <8>
- D - I - 0x02DF87 21:9F77: 11        .byte $11	; <ち>
- D - I - 0x02DF88 21:9F78: 18        .byte $18	; <ね>
- D - I - 0x02DF89 21:9F79: 16        .byte $16	; <に>
- D - I - 0x02DF8A 21:9F7A: 48        .byte $48	; <ク>
- D - I - 0x02DF8B 21:9F7B: 15        .byte $15	; <な>
- D - I - 0x02DF8C 21:9F7C: 3E        .byte $3E	; <Jr>
- D - I - 0x02DF8D 21:9F7D: 19        .byte $19	; <の>
- D - I - 0x02DF8E 21:9F7E: 3F        .byte $3F	; <•>

- D - I - 0x02DF8F 21:9F7F: 08        .byte $08	; <く>
- D - I - 0x02DF90 21:9F80: 07        .byte $07	; <き>
- D - I - 0x02DF91 21:9F81: 18        .byte $18	; <ね>
- D - I - 0x02DF92 21:9F82: 4A        .byte $4A	; <コ>
- D - I - 0x02DF93 21:9F83: 80        .byte $80
- D - I - 0x02DF94 21:9F84: 4B        .byte $4B	; <サ>

- D - I - 0x02DF95 21:9F85: 01        .byte $01	; <あ>



off_9F86_51:
- D - I - 0x02DF96 21:9F86: 00        .byte $00
- D - I - 0x02DF97 21:9F87: 04        .byte $04	; <え>
- D - I - 0x02DF98 21:9F88: 16        .byte $16	; <に>
- D - I - 0x02DF99 21:9F89: FD        .byte $FD

- D - I - 0x02DF9A 21:9F8A: 08        .byte $08	; <く>
- D - I - 0x02DF9B 21:9F8B: 05        .byte $05	; <お>
- D - I - 0x02DF9C 21:9F8C: 12        .byte $12	; <つ>
- D - I - 0x02DF9D 21:9F8D: F9        .byte $F9
- D - I - 0x02DF9E 21:9F8E: 16        .byte $16	; <に>
- D - I - 0x02DF9F 21:9F8F: FC        .byte $FC

- D - I - 0x02DFA0 21:9F90: 20        .byte $20	; <み>
- D - I - 0x02DFA1 21:9F91: 06        .byte $06	; <か>
- D - I - 0x02DFA2 21:9F92: 0A        .byte $0A	; <こ>
- D - I - 0x02DFA3 21:9F93: 53        .byte $53	; <テ>
- D - I - 0x02DFA4 21:9F94: 0E        .byte $0E	; <せ>
- D - I - 0x02DFA5 21:9F95: 56        .byte $56	; <ニ>
- D - I - 0x02DFA6 21:9F96: 12        .byte $12	; <つ>
- D - I - 0x02DFA7 21:9F97: FB        .byte $FB
- D - I - 0x02DFA8 21:9F98: 16        .byte $16	; <に>
- D - I - 0x02DFA9 21:9F99: FE        .byte $FE
- D - I - 0x02DFAA 21:9F9A: 1B        .byte $1B	; <ひ>
- D - I - 0x02DFAB 21:9F9B: FF        .byte $FF

- D - I - 0x02DFAC 21:9F9C: 10        .byte $10	; <た>
- D - I - 0x02DFAD 21:9F9D: 07        .byte $07	; <き>
- D - I - 0x02DFAE 21:9F9E: 06        .byte $06	; <か>
- D - I - 0x02DFAF 21:9F9F: 58        .byte $58	; <ネ>
- D - I - 0x02DFB0 21:9FA0: 0A        .byte $0A	; <こ>
- D - I - 0x02DFB1 21:9FA1: 59        .byte $59	; <ノ>
- D - I - 0x02DFB2 21:9FA2: 0E        .byte $0E	; <せ>
- D - I - 0x02DFB3 21:9FA3: 5C        .byte $5C	; <フ>

- D - I - 0x02DFB4 21:9FA4: 03        .byte $03	; <う>
- D - I - 0x02DFB5 21:9FA5: B1 9F     .word off_9FB1
- - - - - 0x02DFB7 21:9FA7: C4 9F     .word off_9FC4
- D - I - 0x02DFB9 21:9FA9: D7 9F     .word off_9FD7
- D - I - 0x02DFBB 21:9FAB: EA 9F     .word off_9FEA
- D - I - 0x02DFBD 21:9FAD: FD 9F     .word off_9FFD
- D - I - 0x02DFBF 21:9FAF: 10 A0     .word off_A010



off_9FB1:
- D - I - 0x02DFC1 21:9FB1: 20        .byte $20	; <み>
- D - I - 0x02DFC2 21:9FB2: 05        .byte $05	; <お>
- D - I - 0x02DFC3 21:9FB3: 06        .byte $06	; <か>
- D - I - 0x02DFC4 21:9FB4: 50        .byte $50	; <タ>
- D - I - 0x02DFC5 21:9FB5: 09        .byte $09	; <け>
- D - I - 0x02DFC6 21:9FB6: 51        .byte $51	; <チ>
- D - I - 0x02DFC7 21:9FB7: 0A        .byte $0A	; <こ>
- D - I - 0x02DFC8 21:9FB8: 02        .byte $02	; <い>
- D - I - 0x02DFC9 21:9FB9: 0D        .byte $0D	; <す>
- D - I - 0x02DFCA 21:9FBA: 54        .byte $54	; <ト>
- D - I - 0x02DFCB 21:9FBB: 11        .byte $11	; <ち>
- D - I - 0x02DFCC 21:9FBC: 26        .byte $26	; <よ>

- D - I - 0x02DFCD 21:9FBD: 00        .byte $00
- D - I - 0x02DFCE 21:9FBE: 06        .byte $06	; <か>
- D - I - 0x02DFCF 21:9FBF: 06        .byte $06	; <か>
- D - I - 0x02DFD0 21:9FC0: 52        .byte $52	; <ツ>

- D - I - 0x02DFD1 21:9FC1: 02        .byte $02	; <い>
- D - I - 0x02DFD2 21:9FC2: 96 99     .word off_9996



off_9FC4:
- - - - - 0x02DFD4 21:9FC4: 20        .byte $20	; <み>
- - - - - 0x02DFD5 21:9FC5: 05        .byte $05	; <お>
- - - - - 0x02DFD6 21:9FC6: 06        .byte $06	; <か>
- - - - - 0x02DFD7 21:9FC7: 63        .byte $63	; <モ>
- - - - - 0x02DFD8 21:9FC8: 09        .byte $09	; <け>
- - - - - 0x02DFD9 21:9FC9: 66        .byte $66	; <ヨ>
- - - - - 0x02DFDA 21:9FCA: 0A        .byte $0A	; <こ>
- - - - - 0x02DFDB 21:9FCB: 02        .byte $02	; <い>
- - - - - 0x02DFDC 21:9FCC: 0D        .byte $0D	; <す>
- - - - - 0x02DFDD 21:9FCD: 67        .byte $67	; <ラ>
- - - - - 0x02DFDE 21:9FCE: 11        .byte $11	; <ち>
- - - - - 0x02DFDF 21:9FCF: 18        .byte $18	; <ね>

- - - - - 0x02DFE0 21:9FD0: 00        .byte $00
- - - - - 0x02DFE1 21:9FD1: 06        .byte $06	; <か>
- - - - - 0x02DFE2 21:9FD2: 06        .byte $06	; <か>
- - - - - 0x02DFE3 21:9FD3: 52        .byte $52	; <ツ>

- - - - - 0x02DFE4 21:9FD4: 02        .byte $02	; <い>
- - - - - 0x02DFE5 21:9FD5: DB 99     .word off_99DB



off_9FD7:
- D - I - 0x02DFE7 21:9FD7: 20        .byte $20	; <み>
- D - I - 0x02DFE8 21:9FD8: 05        .byte $05	; <お>
- D - I - 0x02DFE9 21:9FD9: 06        .byte $06	; <か>
- D - I - 0x02DFEA 21:9FDA: 57        .byte $57	; <ヌ>
- D - I - 0x02DFEB 21:9FDB: 09        .byte $09	; <け>
- D - I - 0x02DFEC 21:9FDC: 55        .byte $55	; <ナ>
- D - I - 0x02DFED 21:9FDD: 0A        .byte $0A	; <こ>
- D - I - 0x02DFEE 21:9FDE: 02        .byte $02	; <い>
- D - I - 0x02DFEF 21:9FDF: 0D        .byte $0D	; <す>
- D - I - 0x02DFF0 21:9FE0: 54        .byte $54	; <ト>
- D - I - 0x02DFF1 21:9FE1: 11        .byte $11	; <ち>
- D - I - 0x02DFF2 21:9FE2: 26        .byte $26	; <よ>

- D - I - 0x02DFF3 21:9FE3: 00        .byte $00
- D - I - 0x02DFF4 21:9FE4: 06        .byte $06	; <か>
- D - I - 0x02DFF5 21:9FE5: 06        .byte $06	; <か>
- D - I - 0x02DFF6 21:9FE6: 5D        .byte $5D	; <ヘ>

- D - I - 0x02DFF7 21:9FE7: 02        .byte $02	; <い>
- D - I - 0x02DFF8 21:9FE8: 28 9A     .word off_9A28



off_9FEA:
- D - I - 0x02DFFA 21:9FEA: 20        .byte $20	; <み>
- D - I - 0x02DFFB 21:9FEB: 05        .byte $05	; <お>
- D - I - 0x02DFFC 21:9FEC: 06        .byte $06	; <か>
- D - I - 0x02DFFD 21:9FED: 50        .byte $50	; <タ>
- D - I - 0x02DFFE 21:9FEE: 09        .byte $09	; <け>
- D - I - 0x02DFFF 21:9FEF: 51        .byte $51	; <チ>
- D - I - 0x02E000 21:9FF0: 0A        .byte $0A	; <こ>
- D - I - 0x02E001 21:9FF1: 02        .byte $02	; <い>
- D - I - 0x02E002 21:9FF2: 0D        .byte $0D	; <す>
- D - I - 0x02E003 21:9FF3: 54        .byte $54	; <ト>
- D - I - 0x02E004 21:9FF4: 11        .byte $11	; <ち>
- D - I - 0x02E005 21:9FF5: 26        .byte $26	; <よ>

- D - I - 0x02E006 21:9FF6: 00        .byte $00
- D - I - 0x02E007 21:9FF7: 06        .byte $06	; <か>
- D - I - 0x02E008 21:9FF8: 06        .byte $06	; <か>
- D - I - 0x02E009 21:9FF9: 52        .byte $52	; <ツ>

- D - I - 0x02E00A 21:9FFA: 02        .byte $02	; <い>
- D - I - 0x02E00B 21:9FFB: 71 9A     .word off_9A71



off_9FFD:
- D - I - 0x02E00D 21:9FFD: 20        .byte $20	; <み>
- D - I - 0x02E00E 21:9FFE: 05        .byte $05	; <お>
- D - I - 0x02E00F 21:9FFF: 06        .byte $06	; <か>
- D - - - 0x02E010 21:A000: 50        .byte $50	; <タ>
- D - I - 0x02E011 21:A001: 09        .byte $09	; <け>
- D - I - 0x02E012 21:A002: 51        .byte $51	; <チ>
- D - I - 0x02E013 21:A003: 0A        .byte $0A	; <こ>
- D - I - 0x02E014 21:A004: 02        .byte $02	; <い>
- D - I - 0x02E015 21:A005: 0D        .byte $0D	; <す>
- D - I - 0x02E016 21:A006: 54        .byte $54	; <ト>
- D - I - 0x02E017 21:A007: 11        .byte $11	; <ち>
- D - I - 0x02E018 21:A008: 26        .byte $26	; <よ>

- D - I - 0x02E019 21:A009: 00        .byte $00
- D - I - 0x02E01A 21:A00A: 06        .byte $06	; <か>
- D - I - 0x02E01B 21:A00B: 06        .byte $06	; <か>
- D - I - 0x02E01C 21:A00C: 52        .byte $52	; <ツ>

- D - I - 0x02E01D 21:A00D: 02        .byte $02	; <い>
- D - I - 0x02E01E 21:A00E: B6 9A     .word off_9AB6



off_A010:
- D - I - 0x02E020 21:A010: 20        .byte $20	; <み>
- D - I - 0x02E021 21:A011: 05        .byte $05	; <お>
- D - I - 0x02E022 21:A012: 06        .byte $06	; <か>
- D - I - 0x02E023 21:A013: 63        .byte $63	; <モ>
- D - I - 0x02E024 21:A014: 09        .byte $09	; <け>
- D - I - 0x02E025 21:A015: 66        .byte $66	; <ヨ>
- D - I - 0x02E026 21:A016: 0A        .byte $0A	; <こ>
- D - I - 0x02E027 21:A017: 02        .byte $02	; <い>
- D - I - 0x02E028 21:A018: 0D        .byte $0D	; <す>
- D - I - 0x02E029 21:A019: 67        .byte $67	; <ラ>
- D - I - 0x02E02A 21:A01A: 11        .byte $11	; <ち>
- D - I - 0x02E02B 21:A01B: 18        .byte $18	; <ね>

- D - I - 0x02E02C 21:A01C: 00        .byte $00
- D - I - 0x02E02D 21:A01D: 06        .byte $06	; <か>
- D - I - 0x02E02E 21:A01E: 06        .byte $06	; <か>
- D - I - 0x02E02F 21:A01F: 52        .byte $52	; <ツ>

- D - I - 0x02E030 21:A020: 02        .byte $02	; <い>
- D - I - 0x02E031 21:A021: FD 9A     .word off_9AFD



off_A023_52:
- D - I - 0x02E033 21:A023: 03        .byte $03	; <う>
- D - I - 0x02E034 21:A024: 30 A0     .word off_A030
- D - I - 0x02E036 21:A026: 57 A0     .word off_A057
- D - I - 0x02E038 21:A028: 6A A0     .word off_A06A
- D - I - 0x02E03A 21:A02A: 8D A0     .word off_A08D
- D - I - 0x02E03C 21:A02C: 8D A0     .word off_A08D
- D - I - 0x02E03E 21:A02E: 57 A0     .word off_A057



off_A030:
- D - I - 0x02E040 21:A030: 08        .byte $08	; <く>
- D - I - 0x02E041 21:A031: 02        .byte $02	; <い>
- D - I - 0x02E042 21:A032: 47        .byte $47	; <キ>
- D - I - 0x02E043 21:A033: 83        .byte $83	; <C>
- D - I - 0x02E044 21:A034: 84        .byte $84	; <D>
- D - I - 0x02E045 21:A035: 86        .byte $86	; <F>
; продолжение


off_A036:
- D - I - 0x02E046 21:A036: 18        .byte $18	; <ね>
- D - I - 0x02E047 21:A037: 03        .byte $03	; <う>
- D - I - 0x02E048 21:A038: 42        .byte $42	; <イ>
- D - I - 0x02E049 21:A039: 88        .byte $88	; <H>
- D - I - 0x02E04A 21:A03A: 46        .byte $46	; <カ>
- D - I - 0x02E04B 21:A03B: 84        .byte $84	; <D>
- D - I - 0x02E04C 21:A03C: 45        .byte $45	; <オ>
- D - I - 0x02E04D 21:A03D: 89        .byte $89	; <I>
- D - I - 0x02E04E 21:A03E: 86        .byte $86	; <F>
- D - I - 0x02E04F 21:A03F: 8C        .byte $8C	; <M>
; продолжение


off_A040:
- D - I - 0x02E050 21:A040: 00        .byte $00
- D - I - 0x02E051 21:A041: 02        .byte $02	; <い>
- D - I - 0x02E052 21:A042: 40        .byte $40	; <「>
- D - I - 0x02E053 21:A043: 82        .byte $82	; <B>

- D - I - 0x02E054 21:A044: 18        .byte $18	; <ね>
- D - I - 0x02E055 21:A045: 04        .byte $04	; <え>
- D - I - 0x02E056 21:A046: 42        .byte $42	; <イ>
- D - I - 0x02E057 21:A047: 8A        .byte $8A	; <N>
- D - I - 0x02E058 21:A048: 46        .byte $46	; <カ>
- D - I - 0x02E059 21:A049: 85        .byte $85	; <E>
- D - I - 0x02E05A 21:A04A: 45        .byte $45	; <オ>
- D - I - 0x02E05B 21:A04B: 8B        .byte $8B	; <K>
- D - I - 0x02E05C 21:A04C: 86        .byte $86	; <F>
- D - I - 0x02E05D 21:A04D: 8E        .byte $8E	; <L>

- D - I - 0x02E05E 21:A04E: 10        .byte $10	; <た>
- D - I - 0x02E05F 21:A04F: 05        .byte $05	; <お>
- D - I - 0x02E060 21:A050: 42        .byte $42	; <イ>
- D - I - 0x02E061 21:A051: A0        .byte $A0	; <が>
- D - I - 0x02E062 21:A052: 46        .byte $46	; <カ>
- D - I - 0x02E063 21:A053: A1        .byte $A1	; <ぎ>
- D - I - 0x02E064 21:A054: 86        .byte $86	; <F>
- D - I - 0x02E065 21:A055: A4        .byte $A4	; <ご>

- D - I - 0x02E066 21:A056: 01        .byte $01	; <あ>



off_A057:
- D - I - 0x02E067 21:A057: 08        .byte $08	; <く>
- D - I - 0x02E068 21:A058: 02        .byte $02	; <い>
- D - I - 0x02E069 21:A059: 44        .byte $44	; <エ>
- D - I - 0x02E06A 21:A05A: A2        .byte $A2	; <ぐ>
- D - I - 0x02E06B 21:A05B: 84        .byte $84	; <D>
- D - I - 0x02E06C 21:A05C: 8F        .byte $8F	; <S>

- D - I - 0x02E06D 21:A05D: 18        .byte $18	; <ね>
- D - I - 0x02E06E 21:A05E: 03        .byte $03	; <う>
- D - I - 0x02E06F 21:A05F: 42        .byte $42	; <イ>
- D - I - 0x02E070 21:A060: A3        .byte $A3	; <げ>
- D - I - 0x02E071 21:A061: 46        .byte $46	; <カ>
- D - I - 0x02E072 21:A062: A5        .byte $A5	; <ざ>
- D - I - 0x02E073 21:A063: 45        .byte $45	; <オ>
- D - I - 0x02E074 21:A064: A6        .byte $A6	; <じ>
- D - I - 0x02E075 21:A065: 86        .byte $86	; <F>
- D - I - 0x02E076 21:A066: A7        .byte $A7	; <ず>

- D - I - 0x02E077 21:A067: 02        .byte $02	; <い>
- D - I - 0x02E078 21:A068: 40 A0     .word off_A040



off_A06A:
- D - I - 0x02E07A 21:A06A: 08        .byte $08	; <く>
- D - I - 0x02E07B 21:A06B: 02        .byte $02	; <い>
- D - I - 0x02E07C 21:A06C: 40        .byte $40	; <「>
- D - I - 0x02E07D 21:A06D: A8        .byte $A8	; <ぜ>
- D - I - 0x02E07E 21:A06E: 44        .byte $44	; <エ>
- D - I - 0x02E07F 21:A06F: A9        .byte $A9	; <ぞ>

- D - I - 0x02E080 21:A070: 18        .byte $18	; <ね>
- D - I - 0x02E081 21:A071: 03        .byte $03	; <う>
- D - I - 0x02E082 21:A072: 42        .byte $42	; <イ>
- D - I - 0x02E083 21:A073: AA        .byte $AA	; <だ>
- D - I - 0x02E084 21:A074: 45        .byte $45	; <オ>
- D - I - 0x02E085 21:A075: 87        .byte $87	; <G>
- D - I - 0x02E086 21:A076: 46        .byte $46	; <カ>
- D - I - 0x02E087 21:A077: AB        .byte $AB	; <ぢ>
- D - I - 0x02E088 21:A078: 86        .byte $86	; <F>
- D - I - 0x02E089 21:A079: AE        .byte $AE	; <ど>

- D - I - 0x02E08A 21:A07A: 18        .byte $18	; <ね>
- D - I - 0x02E08B 21:A07B: 04        .byte $04	; <え>
- D - I - 0x02E08C 21:A07C: 42        .byte $42	; <イ>
- D - I - 0x02E08D 21:A07D: AC        .byte $AC	; <づ>
- D - I - 0x02E08E 21:A07E: 46        .byte $46	; <カ>
- D - I - 0x02E08F 21:A07F: 8D        .byte $8D	; <P>
- D - I - 0x02E090 21:A080: 45        .byte $45	; <オ>
- D - I - 0x02E091 21:A081: AD        .byte $AD	; <で>
- D - I - 0x02E092 21:A082: 86        .byte $86	; <F>
- D - I - 0x02E093 21:A083: B8        .byte $B8	; <ゴ>

- D - I - 0x02E094 21:A084: 10        .byte $10	; <た>
- D - I - 0x02E095 21:A085: 05        .byte $05	; <お>
- D - I - 0x02E096 21:A086: 43        .byte $43	; <ウ>
- D - I - 0x02E097 21:A087: AF        .byte $AF	; <ば>
- D - I - 0x02E098 21:A088: 44        .byte $44	; <エ>
- D - I - 0x02E099 21:A089: BA        .byte $BA	; <ジ>
- D - I - 0x02E09A 21:A08A: 87        .byte $87	; <G>
- D - I - 0x02E09B 21:A08B: BB        .byte $BB	; <ズ>

- D - I - 0x02E09C 21:A08C: 01        .byte $01	; <あ>



off_A08D:
- D - I - 0x02E09D 21:A08D: 08        .byte $08	; <く>
- D - I - 0x02E09E 21:A08E: 02        .byte $02	; <い>
- D - I - 0x02E09F 21:A08F: 44        .byte $44	; <エ>
- D - I - 0x02E0A0 21:A090: B9        .byte $B9	; <ザ>
- D - I - 0x02E0A1 21:A091: 84        .byte $84	; <D>
- D - I - 0x02E0A2 21:A092: 86        .byte $86	; <F>

- D - I - 0x02E0A3 21:A093: 02        .byte $02	; <い>
- D - I - 0x02E0A4 21:A094: 36 A0     .word off_A036



off_A096_53:
- D - I - 0x02E0A6 21:A096: 03        .byte $03	; <う>
- D - I - 0x02E0A7 21:A097: A3 A0     .word off_A0A3
- - - - - 0x02E0A9 21:A099: D2 A0     .word off_A0D2
- - - - - 0x02E0AB 21:A09B: F5 A0     .word off_A0F5
- D - I - 0x02E0AD 21:A09D: 20 A1     .word off_A120
- D - I - 0x02E0AF 21:A09F: 20 A1     .word off_A120
- D - I - 0x02E0B1 21:A0A1: D2 A0     .word off_A0D2



off_A0A3:
- D - I - 0x02E0B3 21:A0A3: 08        .byte $08	; <く>
- D - I - 0x02E0B4 21:A0A4: 03        .byte $03	; <う>
- D - I - 0x02E0B5 21:A0A5: 86        .byte $86	; <F>
- D - I - 0x02E0B6 21:A0A6: 95        .byte $95
- D - I - 0x02E0B7 21:A0A7: 87        .byte $87	; <G>
- D - I - 0x02E0B8 21:A0A8: 96        .byte $96
; продолжение


off_A0A9:
- D - I - 0x02E0B9 21:A0A9: 08        .byte $08	; <く>
- D - I - 0x02E0BA 21:A0AA: 02        .byte $02	; <い>
- D - I - 0x02E0BB 21:A0AB: 46        .byte $46	; <カ>
- D - I - 0x02E0BC 21:A0AC: 90        .byte $90	; <U>
- D - I - 0x02E0BD 21:A0AD: 86        .byte $86	; <F>
- D - I - 0x02E0BE 21:A0AE: 91        .byte $91	; <V>

- D - I - 0x02E0BF 21:A0AF: 18        .byte $18	; <ね>
- D - I - 0x02E0C0 21:A0B0: 03        .byte $03	; <う>
- D - I - 0x02E0C1 21:A0B1: 40        .byte $40	; <「>
- D - I - 0x02E0C2 21:A0B2: 92        .byte $92	; <W>
- D - I - 0x02E0C3 21:A0B3: 46        .byte $46	; <カ>
- D - I - 0x02E0C4 21:A0B4: 94        .byte $94
- D - I - 0x02E0C5 21:A0B5: 45        .byte $45	; <オ>
- D - I - 0x02E0C6 21:A0B6: 93        .byte $93	; <Y>
- D - I - 0x02E0C7 21:A0B7: 92        .byte $92	; <W>
- D - I - 0x02E0C8 21:A0B8: 97        .byte $97

- D - I - 0x02E0C9 21:A0B9: 20        .byte $20	; <み>
- D - I - 0x02E0CA 21:A0BA: 04        .byte $04	; <え>
- D - I - 0x02E0CB 21:A0BB: 42        .byte $42	; <イ>
- D - I - 0x02E0CC 21:A0BC: 9C        .byte $9C
- D - I - 0x02E0CD 21:A0BD: 46        .byte $46	; <カ>
- D - I - 0x02E0CE 21:A0BE: 9F        .byte $9F
- D - I - 0x02E0CF 21:A0BF: 45        .byte $45	; <オ>
- D - I - 0x02E0D0 21:A0C0: 9D        .byte $9D
- D - I - 0x02E0D1 21:A0C1: 86        .byte $86	; <F>
- D - I - 0x02E0D2 21:A0C2: B0        .byte $B0	; <び>
- D - I - 0x02E0D3 21:A0C3: 85        .byte $85	; <E>
- D - I - 0x02E0D4 21:A0C4: 9A        .byte $9A
; продолжение


off_A0C5:
- D - I - 0x02E0D5 21:A0C5: 08        .byte $08	; <く>
- D - I - 0x02E0D6 21:A0C6: 04        .byte $04	; <え>
- D - I - 0x02E0D7 21:A0C7: 50        .byte $50	; <タ>
- D - I - 0x02E0D8 21:A0C8: 98        .byte $98
- D - I - 0x02E0D9 21:A0C9: 56        .byte $56	; <ニ>
- D - I - 0x02E0DA 21:A0CA: 99        .byte $99

- D - I - 0x02E0DB 21:A0CB: 08        .byte $08	; <く>
- D - I - 0x02E0DC 21:A0CC: 05        .byte $05	; <お>
- D - I - 0x02E0DD 21:A0CD: 56        .byte $56	; <ニ>
- D - I - 0x02E0DE 21:A0CE: 9B        .byte $9B
- D - I - 0x02E0DF 21:A0CF: 42        .byte $42	; <イ>
- D - I - 0x02E0E0 21:A0D0: 9E        .byte $9E

- D - I - 0x02E0E1 21:A0D1: 01        .byte $01	; <あ>



off_A0D2:
- D - I - 0x02E0E2 21:A0D2: 08        .byte $08	; <く>
- D - I - 0x02E0E3 21:A0D3: 02        .byte $02	; <い>
- D - I - 0x02E0E4 21:A0D4: 42        .byte $42	; <イ>
- D - I - 0x02E0E5 21:A0D5: B1        .byte $B1	; <ぶ>
- D - I - 0x02E0E6 21:A0D6: 46        .byte $46	; <カ>
- D - I - 0x02E0E7 21:A0D7: B4        .byte $B4	; <ガ>

- D - I - 0x02E0E8 21:A0D8: 28        .byte $28	; <り>
- D - I - 0x02E0E9 21:A0D9: 03        .byte $03	; <う>
- D - I - 0x02E0EA 21:A0DA: 42        .byte $42	; <イ>
- D - I - 0x02E0EB 21:A0DB: B2        .byte $B2	; <べ>
- D - I - 0x02E0EC 21:A0DC: 46        .byte $46	; <カ>
- D - I - 0x02E0ED 21:A0DD: BE        .byte $BE	; <ダ>
- D - I - 0x02E0EE 21:A0DE: 45        .byte $45	; <オ>
- D - I - 0x02E0EF 21:A0DF: B3        .byte $B3	; <ぼ>
- D - I - 0x02E0F0 21:A0E0: 86        .byte $86	; <F>
- D - I - 0x02E0F1 21:A0E1: BF        .byte $BF	; <ヂ>
- D - I - 0x02E0F2 21:A0E2: 84        .byte $84	; <D>
- D - I - 0x02E0F3 21:A0E3: B6        .byte $B6	; <グ>
- D - I - 0x02E0F4 21:A0E4: 92        .byte $92	; <W>
- D - I - 0x02E0F5 21:A0E5: B5        .byte $B5	; <ギ>

- D - I - 0x02E0F6 21:A0E6: 20        .byte $20	; <み>
- D - I - 0x02E0F7 21:A0E7: 04        .byte $04	; <え>
- D - I - 0x02E0F8 21:A0E8: 42        .byte $42	; <イ>
- D - I - 0x02E0F9 21:A0E9: B7        .byte $B7	; <ゲ>
- D - I - 0x02E0FA 21:A0EA: 46        .byte $46	; <カ>
- D - I - 0x02E0FB 21:A0EB: C2        .byte $C2	; <ド>
- D - I - 0x02E0FC 21:A0EC: 45        .byte $45	; <オ>
- D - I - 0x02E0FD 21:A0ED: BC        .byte $BC	; <ゼ>
- D - I - 0x02E0FE 21:A0EE: 86        .byte $86	; <F>
- D - I - 0x02E0FF 21:A0EF: C3        .byte $C3	; <バ>
- D - I - 0x02E100 21:A0F0: 85        .byte $85	; <E>
- D - I - 0x02E101 21:A0F1: BD        .byte $BD	; <ゾ>

- D - I - 0x02E102 21:A0F2: 02        .byte $02	; <い>
- D - I - 0x02E103 21:A0F3: C5 A0     .word off_A0C5



off_A0F5:
- - - - - 0x02E105 21:A0F5: 08        .byte $08	; <く>
- - - - - 0x02E106 21:A0F6: 02        .byte $02	; <い>
- - - - - 0x02E107 21:A0F7: 46        .byte $46	; <カ>
- - - - - 0x02E108 21:A0F8: 90        .byte $90	; <U>
- - - - - 0x02E109 21:A0F9: 86        .byte $86	; <F>
- - - - - 0x02E10A 21:A0FA: 91        .byte $91	; <V>

- - - - - 0x02E10B 21:A0FB: 28        .byte $28	; <り>
- - - - - 0x02E10C 21:A0FC: 03        .byte $03	; <う>
- - - - - 0x02E10D 21:A0FD: 40        .byte $40	; <「>
- - - - - 0x02E10E 21:A0FE: 92        .byte $92	; <W>
- - - - - 0x02E10F 21:A0FF: 45        .byte $45	; <オ>
- - - - - 0x02E110 21:A100: C8        .byte $C8	; <ぱ>
- - - - - 0x02E111 21:A101: 46        .byte $46	; <カ>
- - - - - 0x02E112 21:A102: C4        .byte $C4	; <ビ>
- - - - - 0x02E113 21:A103: 85        .byte $85	; <E>
- - - - - 0x02E114 21:A104: C9        .byte $C9	; <ぴ>
- - - - - 0x02E115 21:A105: 86        .byte $86	; <F>
- - - - - 0x02E116 21:A106: C5        .byte $C5	; <ブ>
- - - - - 0x02E117 21:A107: 92        .byte $92	; <W>
- - - - - 0x02E118 21:A108: 97        .byte $97

- - - - - 0x02E119 21:A109: 30        .byte $30	; <ゃ>
- - - - - 0x02E11A 21:A10A: 04        .byte $04	; <え>
- - - - - 0x02E11B 21:A10B: 50        .byte $50	; <タ>
- - - - - 0x02E11C 21:A10C: 98        .byte $98
- - - - - 0x02E11D 21:A10D: 57        .byte $57	; <ヌ>
- - - - - 0x02E11E 21:A10E: C6        .byte $C6	; <ベ>
- - - - - 0x02E11F 21:A10F: 42        .byte $42	; <イ>
- - - - - 0x02E120 21:A110: C7        .byte $C7	; <ボ>
- - - - - 0x02E121 21:A111: 46        .byte $46	; <カ>
- - - - - 0x02E122 21:A112: CE        .byte $CE	; <ピ>
- - - - - 0x02E123 21:A113: 45        .byte $45	; <オ>
- - - - - 0x02E124 21:A114: CC        .byte $CC	; <ぽ>
- - - - - 0x02E125 21:A115: 85        .byte $85	; <E>
- - - - - 0x02E126 21:A116: CF        .byte $CF	; <プ>
- - - - - 0x02E127 21:A117: 86        .byte $86	; <F>
- - - - - 0x02E128 21:A118: CD        .byte $CD	; <パ>

- - - - - 0x02E129 21:A119: 08        .byte $08	; <く>
- - - - - 0x02E12A 21:A11A: 05        .byte $05	; <お>
- - - - - 0x02E12B 21:A11B: 57        .byte $57	; <ヌ>
- - - - - 0x02E12C 21:A11C: CA        .byte $CA	; <ぷ>
- - - - - 0x02E12D 21:A11D: 43        .byte $43	; <ウ>
- - - - - 0x02E12E 21:A11E: CB        .byte $CB	; <ぺ>

- - - - - 0x02E12F 21:A11F: 01        .byte $01	; <あ>



off_A120:
- D - I - 0x02E130 21:A120: 08        .byte $08	; <く>
- D - I - 0x02E131 21:A121: 03        .byte $03	; <う>
- D - I - 0x02E132 21:A122: 86        .byte $86	; <F>
- D - I - 0x02E133 21:A123: E1        .byte $E1
- D - I - 0x02E134 21:A124: 84        .byte $84	; <D>
- D - I - 0x02E135 21:A125: E0        .byte $E0

- D - I - 0x02E136 21:A126: 02        .byte $02	; <い>
- D - I - 0x02E137 21:A127: A9 A0     .word off_A0A9



off_A129_54:
- D - I - 0x02E139 21:A129: 18        .byte $18	; <ね>
- D - I - 0x02E13A 21:A12A: 02        .byte $02	; <い>
- D - I - 0x02E13B 21:A12B: 0B        .byte $0B	; <さ>
- D - I - 0x02E13C 21:A12C: E4        .byte $E4
- D - I - 0x02E13D 21:A12D: 0F        .byte $0F	; <そ>
- D - I - 0x02E13E 21:A12E: E5        .byte $E5
- D - I - 0x02E13F 21:A12F: 13        .byte $13	; <て>
- D - I - 0x02E140 21:A130: E2        .byte $E2
- D - I - 0x02E141 21:A131: 17        .byte $17	; <ぬ>
- D - I - 0x02E142 21:A132: E3        .byte $E3

- D - I - 0x02E143 21:A133: 18        .byte $18	; <ね>
- D - I - 0x02E144 21:A134: 03        .byte $03	; <う>
- D - I - 0x02E145 21:A135: 0B        .byte $0B	; <さ>
- D - I - 0x02E146 21:A136: E6        .byte $E6
- D - I - 0x02E147 21:A137: 0F        .byte $0F	; <そ>
- D - I - 0x02E148 21:A138: E7        .byte $E7
- D - I - 0x02E149 21:A139: 13        .byte $13	; <て>
- D - I - 0x02E14A 21:A13A: E8        .byte $E8
- D - I - 0x02E14B 21:A13B: 17        .byte $17	; <ぬ>
- D - I - 0x02E14C 21:A13C: E9        .byte $E9

- D - I - 0x02E14D 21:A13D: 18        .byte $18	; <ね>
- D - I - 0x02E14E 21:A13E: 04        .byte $04	; <え>
- D - I - 0x02E14F 21:A13F: 0B        .byte $0B	; <さ>
- D - I - 0x02E150 21:A140: EC        .byte $EC
- D - I - 0x02E151 21:A141: 0F        .byte $0F	; <そ>
- D - I - 0x02E152 21:A142: ED        .byte $ED
- D - I - 0x02E153 21:A143: 13        .byte $13	; <て>
- D - I - 0x02E154 21:A144: EA        .byte $EA
- D - I - 0x02E155 21:A145: 17        .byte $17	; <ぬ>
- D - I - 0x02E156 21:A146: EB        .byte $EB

- D - I - 0x02E157 21:A147: 10        .byte $10	; <た>
- D - I - 0x02E158 21:A148: 05        .byte $05	; <お>
- D - I - 0x02E159 21:A149: 0F        .byte $0F	; <そ>
- D - I - 0x02E15A 21:A14A: EE        .byte $EE
- D - I - 0x02E15B 21:A14B: 13        .byte $13	; <て>
- D - I - 0x02E15C 21:A14C: EF        .byte $EF
- D - I - 0x02E15D 21:A14D: 17        .byte $17	; <ぬ>
- D - I - 0x02E15E 21:A14E: D0        .byte $D0	; <ペ>

- D - I - 0x02E15F 21:A14F: 01        .byte $01	; <あ>



off_A150_55:
- D - I - 0x02E160 21:A150: 18        .byte $18	; <ね>
- D - I - 0x02E161 21:A151: 04        .byte $04	; <え>
- D - I - 0x02E162 21:A152: 04        .byte $04	; <え>
- D - I - 0x02E163 21:A153: 20        .byte $20	; <み>
- D - I - 0x02E164 21:A154: 08        .byte $08	; <く>
- D - I - 0x02E165 21:A155: 21        .byte $21	; <む>
- D - I - 0x02E166 21:A156: 0E        .byte $0E	; <せ>
- D - I - 0x02E167 21:A157: 24        .byte $24	; <や>
- D - I - 0x02E168 21:A158: 12        .byte $12	; <つ>
- D - I - 0x02E169 21:A159: 25        .byte $25	; <ゆ>

- D - I - 0x02E16A 21:A15A: 18        .byte $18	; <ね>
- D - I - 0x02E16B 21:A15B: 05        .byte $05	; <お>
- D - I - 0x02E16C 21:A15C: 04        .byte $04	; <え>
- D - I - 0x02E16D 21:A15D: 22        .byte $22	; <め>
- D - I - 0x02E16E 21:A15E: 09        .byte $09	; <け>
- D - I - 0x02E16F 21:A15F: 23        .byte $23	; <も>
- D - I - 0x02E170 21:A160: 0D        .byte $0D	; <す>
- D - I - 0x02E171 21:A161: 26        .byte $26	; <よ>
- D - I - 0x02E172 21:A162: 11        .byte $11	; <ち>
- D - I - 0x02E173 21:A163: 27        .byte $27	; <ら>
; продолжение


off_A164:
- D - I - 0x02E174 21:A164: 10        .byte $10	; <た>
- D - I - 0x02E175 21:A165: 01        .byte $01	; <あ>
- D - I - 0x02E176 21:A166: 04        .byte $04	; <え>
- D - I - 0x02E177 21:A167: 02        .byte $02	; <い>
- D - I - 0x02E178 21:A168: 18        .byte $18	; <ね>
- D - I - 0x02E179 21:A169: 0E        .byte $0E	; <せ>
- D - I - 0x02E17A 21:A16A: 80        .byte $80
- D - I - 0x02E17B 21:A16B: 0F        .byte $0F	; <そ>

- D - I - 0x02E17C 21:A16C: 10        .byte $10	; <た>
- D - I - 0x02E17D 21:A16D: 02        .byte $02	; <い>
- D - I - 0x02E17E 21:A16E: 00        .byte $00
- D - I - 0x02E17F 21:A16F: 28        .byte $28	; <り>
- D - I - 0x02E180 21:A170: 04        .byte $04	; <え>
- D - I - 0x02E181 21:A171: 08        .byte $08	; <く>
- D - I - 0x02E182 21:A172: 80        .byte $80
- D - I - 0x02E183 21:A173: 03        .byte $03	; <う>

- D - I - 0x02E184 21:A174: 18        .byte $18	; <ね>
- D - I - 0x02E185 21:A175: 03        .byte $03	; <う>
- D - I - 0x02E186 21:A176: 04        .byte $04	; <え>
- D - I - 0x02E187 21:A177: 0A        .byte $0A	; <こ>
- D - I - 0x02E188 21:A178: 08        .byte $08	; <く>
- D - I - 0x02E189 21:A179: 0B        .byte $0B	; <さ>
- D - I - 0x02E18A 21:A17A: 18        .byte $18	; <ね>
- D - I - 0x02E18B 21:A17B: 01        .byte $01	; <あ>
- D - I - 0x02E18C 21:A17C: 80        .byte $80
- D - I - 0x02E18D 21:A17D: 09        .byte $09	; <け>

- D - I - 0x02E18E 21:A17E: 10        .byte $10	; <た>
- D - I - 0x02E18F 21:A17F: 04        .byte $04	; <え>
- D - I - 0x02E190 21:A180: 14        .byte $14	; <と>
- D - I - 0x02E191 21:A181: 30        .byte $30	; <ゃ>
- D - I - 0x02E192 21:A182: 18        .byte $18	; <ね>
- D - I - 0x02E193 21:A183: 31        .byte $31	; <ゅ>
- D - I - 0x02E194 21:A184: 80        .byte $80
- D - I - 0x02E195 21:A185: 39        .byte $39	; <6>

- D - I - 0x02E196 21:A186: 08        .byte $08	; <く>
- D - I - 0x02E197 21:A187: 05        .byte $05	; <お>
- D - I - 0x02E198 21:A188: 14        .byte $14	; <と>
- D - I - 0x02E199 21:A189: 32        .byte $32	; <ょ>
- D - I - 0x02E19A 21:A18A: 18        .byte $18	; <ね>
- D - I - 0x02E19B 21:A18B: 33        .byte $33	; <0>

- D - I - 0x02E19C 21:A18C: 18        .byte $18	; <ね>
- D - I - 0x02E19D 21:A18D: 06        .byte $06	; <か>
- D - I - 0x02E19E 21:A18E: 08        .byte $08	; <く>
- D - I - 0x02E19F 21:A18F: 29        .byte $29	; <る>
- D - I - 0x02E1A0 21:A190: 0C        .byte $0C	; <し>
- D - I - 0x02E1A1 21:A191: 2C        .byte $2C	; <わ>
- D - I - 0x02E1A2 21:A192: 10        .byte $10	; <た>
- D - I - 0x02E1A3 21:A193: 2D        .byte $2D	; <を>
- D - I - 0x02E1A4 21:A194: 14        .byte $14	; <と>
- D - I - 0x02E1A5 21:A195: 38        .byte $38	; <5>
; продолжение


off_A196:
- D - I - 0x02E1A6 21:A196: 18        .byte $18	; <ね>
- D - I - 0x02E1A7 21:A197: 01        .byte $01	; <あ>
- D - I - 0x02E1A8 21:A198: 08        .byte $08	; <く>
- D - I - 0x02E1A9 21:A199: 01        .byte $01	; <あ>
- D - I - 0x02E1AA 21:A19A: 0C        .byte $0C	; <し>
- D - I - 0x02E1AB 21:A19B: 01        .byte $01	; <あ>
- D - I - 0x02E1AC 21:A19C: 10        .byte $10	; <た>
- D - I - 0x02E1AD 21:A19D: 01        .byte $01	; <あ>
- D - I - 0x02E1AE 21:A19E: 14        .byte $14	; <と>
- D - I - 0x02E1AF 21:A19F: 01        .byte $01	; <あ>

- D - I - 0x02E1B0 21:A1A0: 20        .byte $20	; <み>
- D - I - 0x02E1B1 21:A1A1: 02        .byte $02	; <い>
- D - I - 0x02E1B2 21:A1A2: 08        .byte $08	; <く>
- D - I - 0x02E1B3 21:A1A3: 01        .byte $01	; <あ>
- D - I - 0x02E1B4 21:A1A4: 0C        .byte $0C	; <し>
- D - I - 0x02E1B5 21:A1A5: 01        .byte $01	; <あ>
- D - I - 0x02E1B6 21:A1A6: 10        .byte $10	; <た>
- D - I - 0x02E1B7 21:A1A7: 01        .byte $01	; <あ>
- D - I - 0x02E1B8 21:A1A8: 14        .byte $14	; <と>
- D - I - 0x02E1B9 21:A1A9: 01        .byte $01	; <あ>
- D - I - 0x02E1BA 21:A1AA: 18        .byte $18	; <ね>
- D - I - 0x02E1BB 21:A1AB: 01        .byte $01	; <あ>

- D - I - 0x02E1BC 21:A1AC: 10        .byte $10	; <た>
- D - I - 0x02E1BD 21:A1AD: 03        .byte $03	; <う>
- D - I - 0x02E1BE 21:A1AE: 0C        .byte $0C	; <し>
- D - I - 0x02E1BF 21:A1AF: 01        .byte $01	; <あ>
- D - I - 0x02E1C0 21:A1B0: 10        .byte $10	; <た>
- D - I - 0x02E1C1 21:A1B1: 01        .byte $01	; <あ>
- D - I - 0x02E1C2 21:A1B2: 14        .byte $14	; <と>
- D - I - 0x02E1C3 21:A1B3: 01        .byte $01	; <あ>

- D - I - 0x02E1C4 21:A1B4: 01        .byte $01	; <あ>



off_A1B5_56:
- D - I - 0x02E1C5 21:A1B5: 18        .byte $18	; <ね>
- D - I - 0x02E1C6 21:A1B6: 04        .byte $04	; <え>
- D - I - 0x02E1C7 21:A1B7: 04        .byte $04	; <え>
- D - I - 0x02E1C8 21:A1B8: 04        .byte $04	; <え>
- D - I - 0x02E1C9 21:A1B9: 08        .byte $08	; <く>
- D - I - 0x02E1CA 21:A1BA: 05        .byte $05	; <お>
- D - I - 0x02E1CB 21:A1BB: 0C        .byte $0C	; <し>
- D - I - 0x02E1CC 21:A1BC: 10        .byte $10	; <た>
- D - I - 0x02E1CD 21:A1BD: 12        .byte $12	; <つ>
- D - I - 0x02E1CE 21:A1BE: 11        .byte $11	; <ち>

- D - I - 0x02E1CF 21:A1BF: 18        .byte $18	; <ね>
- D - I - 0x02E1D0 21:A1C0: 05        .byte $05	; <お>
- D - I - 0x02E1D1 21:A1C1: 04        .byte $04	; <え>
- D - I - 0x02E1D2 21:A1C2: 06        .byte $06	; <か>
- D - I - 0x02E1D3 21:A1C3: 09        .byte $09	; <け>
- D - I - 0x02E1D4 21:A1C4: 07        .byte $07	; <き>
- D - I - 0x02E1D5 21:A1C5: 0D        .byte $0D	; <す>
- D - I - 0x02E1D6 21:A1C6: 12        .byte $12	; <つ>
- D - I - 0x02E1D7 21:A1C7: 11        .byte $11	; <ち>
- D - I - 0x02E1D8 21:A1C8: 13        .byte $13	; <て>

- D - I - 0x02E1D9 21:A1C9: 02        .byte $02	; <い>
- D - I - 0x02E1DA 21:A1CA: 64 A1     .word off_A164



off_A1CC_57:
- D - I - 0x02E1DC 21:A1CC: 28        .byte $28	; <り>
- D - I - 0x02E1DD 21:A1CD: 01        .byte $01	; <あ>
- D - I - 0x02E1DE 21:A1CE: 07        .byte $07	; <き>
- D - I - 0x02E1DF 21:A1CF: 0C        .byte $0C	; <し>
- D - I - 0x02E1E0 21:A1D0: 0B        .byte $0B	; <さ>
- D - I - 0x02E1E1 21:A1D1: 42        .byte $42	; <イ>
- D - I - 0x02E1E2 21:A1D2: 0F        .byte $0F	; <そ>
- D - I - 0x02E1E3 21:A1D3: 42        .byte $42	; <イ>
- D - I - 0x02E1E4 21:A1D4: 13        .byte $13	; <て>
- D - I - 0x02E1E5 21:A1D5: 42        .byte $42	; <イ>
- D - I - 0x02E1E6 21:A1D6: 17        .byte $17	; <ぬ>
- D - I - 0x02E1E7 21:A1D7: 0D        .byte $0D	; <す>
- D - I - 0x02E1E8 21:A1D8: 1B        .byte $1B	; <ひ>
- D - I - 0x02E1E9 21:A1D9: 16        .byte $16	; <に>

- D - I - 0x02E1EA 21:A1DA: 28        .byte $28	; <り>
- D - I - 0x02E1EB 21:A1DB: 02        .byte $02	; <い>
- D - I - 0x02E1EC 21:A1DC: 07        .byte $07	; <き>
- D - I - 0x02E1ED 21:A1DD: 18        .byte $18	; <ね>
- D - I - 0x02E1EE 21:A1DE: 0B        .byte $0B	; <さ>
- D - I - 0x02E1EF 21:A1DF: 19        .byte $19	; <の>
- D - I - 0x02E1F0 21:A1E0: 0F        .byte $0F	; <そ>
- D - I - 0x02E1F1 21:A1E1: 1C        .byte $1C	; <ふ>
- D - I - 0x02E1F2 21:A1E2: 13        .byte $13	; <て>
- D - I - 0x02E1F3 21:A1E3: 42        .byte $42	; <イ>
- D - I - 0x02E1F4 21:A1E4: 17        .byte $17	; <ぬ>
- D - I - 0x02E1F5 21:A1E5: 42        .byte $42	; <イ>
- D - I - 0x02E1F6 21:A1E6: 1B        .byte $1B	; <ひ>
- D - I - 0x02E1F7 21:A1E7: 1D        .byte $1D	; <へ>

- D - I - 0x02E1F8 21:A1E8: 30        .byte $30	; <ゃ>
- D - I - 0x02E1F9 21:A1E9: 03        .byte $03	; <う>
- D - I - 0x02E1FA 21:A1EA: 04        .byte $04	; <え>
- D - I - 0x02E1FB 21:A1EB: 1A        .byte $1A	; <は>
- D - I - 0x02E1FC 21:A1EC: 08        .byte $08	; <く>
- D - I - 0x02E1FD 21:A1ED: 1B        .byte $1B	; <ひ>
- D - I - 0x02E1FE 21:A1EE: 09        .byte $09	; <け>
- D - I - 0x02E1FF 21:A1EF: 14        .byte $14	; <と>
- D - I - 0x02E200 21:A1F0: 0C        .byte $0C	; <し>
- D - I - 0x02E201 21:A1F1: 1E        .byte $1E	; <ほ>
- D - I - 0x02E202 21:A1F2: 13        .byte $13	; <て>
- D - I - 0x02E203 21:A1F3: 1F        .byte $1F	; <ま>
- D - I - 0x02E204 21:A1F4: 17        .byte $17	; <ぬ>
- D - I - 0x02E205 21:A1F5: 3A        .byte $3A	; <7>
- D - I - 0x02E206 21:A1F6: 1B        .byte $1B	; <ひ>
- D - I - 0x02E207 21:A1F7: 3B        .byte $3B	; <8>

- D - I - 0x02E208 21:A1F8: 30        .byte $30	; <ゃ>
- D - I - 0x02E209 21:A1F9: 04        .byte $04	; <え>
- D - I - 0x02E20A 21:A1FA: 04        .byte $04	; <え>
- D - I - 0x02E20B 21:A1FB: 2A        .byte $2A	; <れ>
- D - I - 0x02E20C 21:A1FC: 09        .byte $09	; <け>
- D - I - 0x02E20D 21:A1FD: 2B        .byte $2B	; <ろ>
- D - I - 0x02E20E 21:A1FE: 0C        .byte $0C	; <し>
- D - I - 0x02E20F 21:A1FF: 34        .byte $34	; <1>
- D - I - 0x02E210 21:A200: 10        .byte $10	; <た>
- D - I - 0x02E211 21:A201: 35        .byte $35	; <2>
- D - I - 0x02E212 21:A202: 11        .byte $11	; <ち>
- D - I - 0x02E213 21:A203: 15        .byte $15	; <な>
- D - I - 0x02E214 21:A204: 14        .byte $14	; <と>
- D - I - 0x02E215 21:A205: 3E        .byte $3E	; <Jr>
- D - I - 0x02E216 21:A206: 18        .byte $18	; <ね>
- D - I - 0x02E217 21:A207: 3F        .byte $3F	; <•>

- D - I - 0x02E218 21:A208: 20        .byte $20	; <み>
- D - I - 0x02E219 21:A209: 05        .byte $05	; <お>
- D - I - 0x02E21A 21:A20A: 04        .byte $04	; <え>
- D - I - 0x02E21B 21:A20B: 22        .byte $22	; <め>
- D - I - 0x02E21C 21:A20C: 09        .byte $09	; <け>
- D - I - 0x02E21D 21:A20D: 2E        .byte $2E	; <ん>
- D - I - 0x02E21E 21:A20E: 0D        .byte $0D	; <す>
- D - I - 0x02E21F 21:A20F: 36        .byte $36	; <3>
- D - I - 0x02E220 21:A210: 10        .byte $10	; <た>
- D - I - 0x02E221 21:A211: 37        .byte $37	; <4>
- D - I - 0x02E222 21:A212: 14        .byte $14	; <と>
- D - I - 0x02E223 21:A213: 17        .byte $17	; <ぬ>

- D - I - 0x02E224 21:A214: 18        .byte $18	; <ね>
- D - I - 0x02E225 21:A215: 06        .byte $06	; <か>
- D - I - 0x02E226 21:A216: 08        .byte $08	; <く>
- D - I - 0x02E227 21:A217: 2F        .byte $2F	; <っ>
- D - I - 0x02E228 21:A218: 0C        .byte $0C	; <し>
- D - I - 0x02E229 21:A219: 3C        .byte $3C	; <9>
- D - I - 0x02E22A 21:A21A: 10        .byte $10	; <た>
- D - I - 0x02E22B 21:A21B: 2D        .byte $2D	; <を>
- D - I - 0x02E22C 21:A21C: 14        .byte $14	; <と>
- D - I - 0x02E22D 21:A21D: 3D        .byte $3D	; <+>

- D - I - 0x02E22E 21:A21E: 01        .byte $01	; <あ>



off_A21F_58:
- D - I - 0x02E22F 21:A21F: 18        .byte $18	; <ね>
- D - I - 0x02E230 21:A220: 01        .byte $01	; <あ>
- D - I - 0x02E231 21:A221: 00        .byte $00
- D - I - 0x02E232 21:A222: 81        .byte $81	; <A>
- D - I - 0x02E233 21:A223: 04        .byte $04	; <え>
- D - I - 0x02E234 21:A224: 80        .byte $80
- D - I - 0x02E235 21:A225: 18        .byte $18	; <ね>
- D - I - 0x02E236 21:A226: 84        .byte $84	; <D>
- D - I - 0x02E237 21:A227: 80        .byte $80
- D - I - 0x02E238 21:A228: 85        .byte $85	; <E>

- D - I - 0x02E239 21:A229: 08        .byte $08	; <く>
- D - I - 0x02E23A 21:A22A: 02        .byte $02	; <い>
- D - I - 0x02E23B 21:A22B: 04        .byte $04	; <え>
- D - I - 0x02E23C 21:A22C: 82        .byte $82	; <B>
- D - I - 0x02E23D 21:A22D: 80        .byte $80
- D - I - 0x02E23E 21:A22E: 87        .byte $87	; <G>

- D - I - 0x02E23F 21:A22F: 18        .byte $18	; <ね>
- D - I - 0x02E240 21:A230: 03        .byte $03	; <う>
- D - I - 0x02E241 21:A231: 04        .byte $04	; <え>
- D - I - 0x02E242 21:A232: 88        .byte $88	; <H>
- D - I - 0x02E243 21:A233: 0A        .byte $0A	; <こ>
- D - I - 0x02E244 21:A234: 89        .byte $89	; <I>
- D - I - 0x02E245 21:A235: 18        .byte $18	; <ね>
- D - I - 0x02E246 21:A236: 90        .byte $90	; <U>
- D - I - 0x02E247 21:A237: 80        .byte $80
- D - I - 0x02E248 21:A238: 91        .byte $91	; <V>

- D - I - 0x02E249 21:A239: 38        .byte $38	; <5>
- D - I - 0x02E24A 21:A23A: 04        .byte $04	; <え>
- D - I - 0x02E24B 21:A23B: 04        .byte $04	; <え>
- D - I - 0x02E24C 21:A23C: 8A        .byte $8A	; <N>
- D - I - 0x02E24D 21:A23D: 08        .byte $08	; <く>
- D - I - 0x02E24E 21:A23E: 8B        .byte $8B	; <K>
- D - I - 0x02E24F 21:A23F: 09        .byte $09	; <け>
- D - I - 0x02E250 21:A240: 83        .byte $83	; <C>
- D - I - 0x02E251 21:A241: 0E        .byte $0E	; <せ>
- D - I - 0x02E252 21:A242: 8C        .byte $8C	; <M>
- D - I - 0x02E253 21:A243: 10        .byte $10	; <た>
- D - I - 0x02E254 21:A244: 8D        .byte $8D	; <P>
- D - I - 0x02E255 21:A245: 14        .byte $14	; <と>
- D - I - 0x02E256 21:A246: 98        .byte $98
- D - I - 0x02E257 21:A247: 18        .byte $18	; <ね>
- D - I - 0x02E258 21:A248: 92        .byte $92	; <W>
- D - I - 0x02E259 21:A249: 80        .byte $80
- D - I - 0x02E25A 21:A24A: 93        .byte $93	; <Y>

- D - I - 0x02E25B 21:A24B: 28        .byte $28	; <り>
- D - I - 0x02E25C 21:A24C: 05        .byte $05	; <お>
- D - I - 0x02E25D 21:A24D: 04        .byte $04	; <え>
- D - I - 0x02E25E 21:A24E: 22        .byte $22	; <め>
- D - I - 0x02E25F 21:A24F: 09        .byte $09	; <け>
- D - I - 0x02E260 21:A250: A1        .byte $A1	; <ぎ>
- D - I - 0x02E261 21:A251: 0D        .byte $0D	; <す>
- D - I - 0x02E262 21:A252: 8E        .byte $8E	; <L>
- D - I - 0x02E263 21:A253: 10        .byte $10	; <た>
- D - I - 0x02E264 21:A254: 8F        .byte $8F	; <S>
- D - I - 0x02E265 21:A255: 14        .byte $14	; <と>
- D - I - 0x02E266 21:A256: 9A        .byte $9A
- D - I - 0x02E267 21:A257: 18        .byte $18	; <ね>
- D - I - 0x02E268 21:A258: 86        .byte $86	; <F>

- D - I - 0x02E269 21:A259: 28        .byte $28	; <り>
- D - I - 0x02E26A 21:A25A: 06        .byte $06	; <か>
- D - I - 0x02E26B 21:A25B: 08        .byte $08	; <く>
- D - I - 0x02E26C 21:A25C: 46        .byte $46	; <カ>
- D - I - 0x02E26D 21:A25D: 0C        .byte $0C	; <し>
- D - I - 0x02E26E 21:A25E: A4        .byte $A4	; <ご>
- D - I - 0x02E26F 21:A25F: 10        .byte $10	; <た>
- D - I - 0x02E270 21:A260: 2D        .byte $2D	; <を>
- D - I - 0x02E271 21:A261: 14        .byte $14	; <と>
- D - I - 0x02E272 21:A262: 53        .byte $53	; <テ>
- D - I - 0x02E273 21:A263: C0        .byte $C0	; <ヅ>
- D - I - 0x02E274 21:A264: A5        .byte $A5	; <ざ>
- D - I - 0x02E275 21:A265: C4        .byte $C4	; <ビ>
- D - I - 0x02E276 21:A266: B0        .byte $B0	; <び>

- D - I - 0x02E277 21:A267: 02        .byte $02	; <い>
- D - I - 0x02E278 21:A268: 96 A1     .word off_A196



off_A26A_59:
- D - I - 0x02E27A 21:A26A: 28        .byte $28	; <り>
- D - I - 0x02E27B 21:A26B: 01        .byte $01	; <あ>
- D - I - 0x02E27C 21:A26C: 04        .byte $04	; <え>
- D - I - 0x02E27D 21:A26D: 04        .byte $04	; <え>
- D - I - 0x02E27E 21:A26E: 08        .byte $08	; <く>
- D - I - 0x02E27F 21:A26F: 01        .byte $01	; <あ>
- D - I - 0x02E280 21:A270: 0C        .byte $0C	; <し>
- D - I - 0x02E281 21:A271: 01        .byte $01	; <あ>
- D - I - 0x02E282 21:A272: 10        .byte $10	; <た>
- D - I - 0x02E283 21:A273: 01        .byte $01	; <あ>
- D - I - 0x02E284 21:A274: 14        .byte $14	; <と>
- D - I - 0x02E285 21:A275: 10        .byte $10	; <た>
- D - I - 0x02E286 21:A276: 18        .byte $18	; <ね>
- D - I - 0x02E287 21:A277: 11        .byte $11	; <ち>

- D - I - 0x02E288 21:A278: 28        .byte $28	; <り>
- D - I - 0x02E289 21:A279: 02        .byte $02	; <い>
- D - I - 0x02E28A 21:A27A: 04        .byte $04	; <え>
- D - I - 0x02E28B 21:A27B: 02        .byte $02	; <い>
- D - I - 0x02E28C 21:A27C: 08        .byte $08	; <く>
- D - I - 0x02E28D 21:A27D: 03        .byte $03	; <う>
- D - I - 0x02E28E 21:A27E: 0C        .byte $0C	; <し>
- D - I - 0x02E28F 21:A27F: 06        .byte $06	; <か>
- D - I - 0x02E290 21:A280: 10        .byte $10	; <た>
- D - I - 0x02E291 21:A281: 01        .byte $01	; <あ>
- D - I - 0x02E292 21:A282: 14        .byte $14	; <と>
- D - I - 0x02E293 21:A283: 01        .byte $01	; <あ>
- D - I - 0x02E294 21:A284: 18        .byte $18	; <ね>
- D - I - 0x02E295 21:A285: 13        .byte $13	; <て>

- D - I - 0x02E296 21:A286: 30        .byte $30	; <ゃ>
- D - I - 0x02E297 21:A287: 03        .byte $03	; <う>
- D - I - 0x02E298 21:A288: 04        .byte $04	; <え>
- D - I - 0x02E299 21:A289: 08        .byte $08	; <く>
- D - I - 0x02E29A 21:A28A: 09        .byte $09	; <け>
- D - I - 0x02E29B 21:A28B: 09        .byte $09	; <け>
- D - I - 0x02E29C 21:A28C: 0D        .byte $0D	; <す>
- D - I - 0x02E29D 21:A28D: 0C        .byte $0C	; <し>
- D - I - 0x02E29E 21:A28E: 0C        .byte $0C	; <し>
- D - I - 0x02E29F 21:A28F: 05        .byte $05	; <お>
- D - I - 0x02E2A0 21:A290: 10        .byte $10	; <た>
- D - I - 0x02E2A1 21:A291: 0D        .byte $0D	; <す>
- D - I - 0x02E2A2 21:A292: 14        .byte $14	; <と>
- D - I - 0x02E2A3 21:A293: 18        .byte $18	; <ね>
- D - I - 0x02E2A4 21:A294: 18        .byte $18	; <ね>
- D - I - 0x02E2A5 21:A295: 19        .byte $19	; <の>

- D - I - 0x02E2A6 21:A296: 30        .byte $30	; <ゃ>
- D - I - 0x02E2A7 21:A297: 04        .byte $04	; <え>
- D - I - 0x02E2A8 21:A298: 04        .byte $04	; <え>
- D - I - 0x02E2A9 21:A299: 0A        .byte $0A	; <こ>
- D - I - 0x02E2AA 21:A29A: 09        .byte $09	; <け>
- D - I - 0x02E2AB 21:A29B: 0B        .byte $0B	; <さ>
- D - I - 0x02E2AC 21:A29C: 0C        .byte $0C	; <し>
- D - I - 0x02E2AD 21:A29D: 0E        .byte $0E	; <せ>
- D - I - 0x02E2AE 21:A29E: 11        .byte $11	; <ち>
- D - I - 0x02E2AF 21:A29F: 0F        .byte $0F	; <そ>
- D - I - 0x02E2B0 21:A2A0: 10        .byte $10	; <た>
- D - I - 0x02E2B1 21:A2A1: 07        .byte $07	; <き>
- D - I - 0x02E2B2 21:A2A2: 15        .byte $15	; <な>
- D - I - 0x02E2B3 21:A2A3: 1A        .byte $1A	; <は>
- D - I - 0x02E2B4 21:A2A4: 18        .byte $18	; <ね>
- D - I - 0x02E2B5 21:A2A5: 1B        .byte $1B	; <ひ>

- D - I - 0x02E2B6 21:A2A6: 28        .byte $28	; <り>
- D - I - 0x02E2B7 21:A2A7: 05        .byte $05	; <お>
- D - I - 0x02E2B8 21:A2A8: 04        .byte $04	; <え>
- D - I - 0x02E2B9 21:A2A9: 20        .byte $20	; <み>
- D - I - 0x02E2BA 21:A2AA: 09        .byte $09	; <け>
- D - I - 0x02E2BB 21:A2AB: 21        .byte $21	; <む>
- D - I - 0x02E2BC 21:A2AC: 0D        .byte $0D	; <す>
- D - I - 0x02E2BD 21:A2AD: 24        .byte $24	; <や>
- D - I - 0x02E2BE 21:A2AE: 10        .byte $10	; <た>
- D - I - 0x02E2BF 21:A2AF: 25        .byte $25	; <ゆ>
- D - I - 0x02E2C0 21:A2B0: 14        .byte $14	; <と>
- D - I - 0x02E2C1 21:A2B1: 30        .byte $30	; <ゃ>
- D - I - 0x02E2C2 21:A2B2: 18        .byte $18	; <ね>
- D - I - 0x02E2C3 21:A2B3: 31        .byte $31	; <ゅ>

- D - I - 0x02E2C4 21:A2B4: 18        .byte $18	; <ね>
- D - I - 0x02E2C5 21:A2B5: 06        .byte $06	; <か>
- D - I - 0x02E2C6 21:A2B6: 08        .byte $08	; <く>
- D - I - 0x02E2C7 21:A2B7: 23        .byte $23	; <も>
- D - I - 0x02E2C8 21:A2B8: 0C        .byte $0C	; <し>
- D - I - 0x02E2C9 21:A2B9: 26        .byte $26	; <よ>
- D - I - 0x02E2CA 21:A2BA: 10        .byte $10	; <た>
- D - I - 0x02E2CB 21:A2BB: 27        .byte $27	; <ら>
- D - I - 0x02E2CC 21:A2BC: 14        .byte $14	; <と>
- D - I - 0x02E2CD 21:A2BD: 32        .byte $32	; <ょ>

- D - I - 0x02E2CE 21:A2BE: 01        .byte $01	; <あ>



off_A2BF_5A:
- D - I - 0x02E2CF 21:A2BF: 28        .byte $28	; <り>
- D - I - 0x02E2D0 21:A2C0: 01        .byte $01	; <あ>
- D - I - 0x02E2D1 21:A2C1: 04        .byte $04	; <え>
- D - I - 0x02E2D2 21:A2C2: 14        .byte $14	; <と>
- D - I - 0x02E2D3 21:A2C3: 08        .byte $08	; <く>
- D - I - 0x02E2D4 21:A2C4: 15        .byte $15	; <な>
- D - I - 0x02E2D5 21:A2C5: 0C        .byte $0C	; <し>
- D - I - 0x02E2D6 21:A2C6: 01        .byte $01	; <あ>
- D - I - 0x02E2D7 21:A2C7: 10        .byte $10	; <た>
- D - I - 0x02E2D8 21:A2C8: 01        .byte $01	; <あ>
- D - I - 0x02E2D9 21:A2C9: 14        .byte $14	; <と>
- D - I - 0x02E2DA 21:A2CA: 38        .byte $38	; <5>
- D - I - 0x02E2DB 21:A2CB: 18        .byte $18	; <ね>
- D - I - 0x02E2DC 21:A2CC: 39        .byte $39	; <6>

- D - I - 0x02E2DD 21:A2CD: 28        .byte $28	; <り>
- D - I - 0x02E2DE 21:A2CE: 02        .byte $02	; <い>
- D - I - 0x02E2DF 21:A2CF: 04        .byte $04	; <え>
- D - I - 0x02E2E0 21:A2D0: 16        .byte $16	; <に>
- D - I - 0x02E2E1 21:A2D1: 08        .byte $08	; <く>
- D - I - 0x02E2E2 21:A2D2: 17        .byte $17	; <ぬ>
- D - I - 0x02E2E3 21:A2D3: 0C        .byte $0C	; <し>
- D - I - 0x02E2E4 21:A2D4: 01        .byte $01	; <あ>
- D - I - 0x02E2E5 21:A2D5: 10        .byte $10	; <た>
- D - I - 0x02E2E6 21:A2D6: 01        .byte $01	; <あ>
- D - I - 0x02E2E7 21:A2D7: 14        .byte $14	; <と>
- D - I - 0x02E2E8 21:A2D8: 01        .byte $01	; <あ>
- D - I - 0x02E2E9 21:A2D9: 18        .byte $18	; <ね>
- D - I - 0x02E2EA 21:A2DA: 3B        .byte $3B	; <8>

- D - I - 0x02E2EB 21:A2DB: 28        .byte $28	; <り>
- D - I - 0x02E2EC 21:A2DC: 03        .byte $03	; <う>
- D - I - 0x02E2ED 21:A2DD: 04        .byte $04	; <え>
- D - I - 0x02E2EE 21:A2DE: 1C        .byte $1C	; <ふ>
- D - I - 0x02E2EF 21:A2DF: 0A        .byte $0A	; <こ>
- D - I - 0x02E2F0 21:A2E0: 1D        .byte $1D	; <へ>
- D - I - 0x02E2F1 21:A2E1: 0C        .byte $0C	; <し>
- D - I - 0x02E2F2 21:A2E2: 28        .byte $28	; <り>
- D - I - 0x02E2F3 21:A2E3: 12        .byte $12	; <つ>
- D - I - 0x02E2F4 21:A2E4: 29        .byte $29	; <る>
- D - I - 0x02E2F5 21:A2E5: 14        .byte $14	; <と>
- D - I - 0x02E2F6 21:A2E6: 2C        .byte $2C	; <わ>
- D - I - 0x02E2F7 21:A2E7: 18        .byte $18	; <ね>
- D - I - 0x02E2F8 21:A2E8: 2D        .byte $2D	; <を>

- D - I - 0x02E2F9 21:A2E9: 30        .byte $30	; <ゃ>
- D - I - 0x02E2FA 21:A2EA: 04        .byte $04	; <え>
- D - I - 0x02E2FB 21:A2EB: 04        .byte $04	; <え>
- D - I - 0x02E2FC 21:A2EC: 1E        .byte $1E	; <ほ>
- D - I - 0x02E2FD 21:A2ED: 09        .byte $09	; <け>
- D - I - 0x02E2FE 21:A2EE: 1F        .byte $1F	; <ま>
- D - I - 0x02E2FF 21:A2EF: 0C        .byte $0C	; <し>
- D - I - 0x02E300 21:A2F0: 2A        .byte $2A	; <れ>
- D - I - 0x02E301 21:A2F1: 10        .byte $10	; <た>
- D - I - 0x02E302 21:A2F2: 2B        .byte $2B	; <ろ>
- D - I - 0x02E303 21:A2F3: 11        .byte $11	; <ち>
- D - I - 0x02E304 21:A2F4: 2A        .byte $2A	; <れ>
- D - I - 0x02E305 21:A2F5: 14        .byte $14	; <と>
- D - I - 0x02E306 21:A2F6: 2E        .byte $2E	; <ん>
- D - I - 0x02E307 21:A2F7: 18        .byte $18	; <ね>
- D - I - 0x02E308 21:A2F8: 2F        .byte $2F	; <っ>

- D - I - 0x02E309 21:A2F9: 30        .byte $30	; <ゃ>
- D - I - 0x02E30A 21:A2FA: 05        .byte $05	; <お>
- D - I - 0x02E30B 21:A2FB: 04        .byte $04	; <え>
- D - I - 0x02E30C 21:A2FC: 34        .byte $34	; <1>
- D - I - 0x02E30D 21:A2FD: 08        .byte $08	; <く>
- D - I - 0x02E30E 21:A2FE: 35        .byte $35	; <2>
- D - I - 0x02E30F 21:A2FF: 0B        .byte $0B	; <さ>
- D - I - 0x02E310 21:A300: 12        .byte $12	; <つ>
- D - I - 0x02E311 21:A301: 0D        .byte $0D	; <す>
- D - I - 0x02E312 21:A302: 3C        .byte $3C	; <9>
- D - I - 0x02E313 21:A303: 0F        .byte $0F	; <そ>
- D - I - 0x02E314 21:A304: 22        .byte $22	; <め>
- D - I - 0x02E315 21:A305: 10        .byte $10	; <た>
- D - I - 0x02E316 21:A306: 3D        .byte $3D	; <+>
- D - I - 0x02E317 21:A307: 14        .byte $14	; <と>
- D - I - 0x02E318 21:A308: 33        .byte $33	; <0>

- D - I - 0x02E319 21:A309: 18        .byte $18	; <ね>
- D - I - 0x02E31A 21:A30A: 06        .byte $06	; <か>
- D - I - 0x02E31B 21:A30B: 08        .byte $08	; <く>
- D - I - 0x02E31C 21:A30C: 37        .byte $37	; <4>
- D - I - 0x02E31D 21:A30D: 0C        .byte $0C	; <し>
- D - I - 0x02E31E 21:A30E: 3E        .byte $3E	; <Jr>
- D - I - 0x02E31F 21:A30F: 10        .byte $10	; <た>
- D - I - 0x02E320 21:A310: 3F        .byte $3F	; <•>
- D - I - 0x02E321 21:A311: 14        .byte $14	; <と>
- D - I - 0x02E322 21:A312: 36        .byte $36	; <3>

- D - I - 0x02E323 21:A313: 01        .byte $01	; <あ>



off_A314_5B:
- D - I - 0x02E324 21:A314: 08        .byte $08	; <く>
- D - I - 0x02E325 21:A315: 02        .byte $02	; <い>
- D - I - 0x02E326 21:A316: 09        .byte $09	; <け>
- D - I - 0x02E327 21:A317: 03        .byte $03	; <う>
- D - I - 0x02E328 21:A318: 0D        .byte $0D	; <す>
- D - I - 0x02E329 21:A319: 06        .byte $06	; <か>

- D - I - 0x02E32A 21:A31A: 10        .byte $10	; <た>
- D - I - 0x02E32B 21:A31B: 03        .byte $03	; <う>
- D - I - 0x02E32C 21:A31C: 05        .byte $05	; <お>
- D - I - 0x02E32D 21:A31D: 08        .byte $08	; <く>
- D - I - 0x02E32E 21:A31E: 09        .byte $09	; <け>
- D - I - 0x02E32F 21:A31F: 09        .byte $09	; <け>
- D - I - 0x02E330 21:A320: 0A        .byte $0A	; <こ>
- D - I - 0x02E331 21:A321: 05        .byte $05	; <お>

- D - I - 0x02E332 21:A322: 20        .byte $20	; <み>
- D - I - 0x02E333 21:A323: 04        .byte $04	; <え>
- D - I - 0x02E334 21:A324: 04        .byte $04	; <え>
- D - I - 0x02E335 21:A325: 0A        .byte $0A	; <こ>
- D - I - 0x02E336 21:A326: 08        .byte $08	; <く>
- D - I - 0x02E337 21:A327: 0B        .byte $0B	; <さ>
- D - I - 0x02E338 21:A328: 0A        .byte $0A	; <こ>
- D - I - 0x02E339 21:A329: 07        .byte $07	; <き>
- D - I - 0x02E33A 21:A32A: 0D        .byte $0D	; <す>
- D - I - 0x02E33B 21:A32B: 0E        .byte $0E	; <せ>
- D - I - 0x02E33C 21:A32C: 11        .byte $11	; <ち>
- D - I - 0x02E33D 21:A32D: 0F        .byte $0F	; <そ>

- D - I - 0x02E33E 21:A32E: 10        .byte $10	; <た>
- D - I - 0x02E33F 21:A32F: 05        .byte $05	; <お>
- D - I - 0x02E340 21:A330: 0A        .byte $0A	; <こ>
- D - I - 0x02E341 21:A331: 21        .byte $21	; <む>
- D - I - 0x02E342 21:A332: 10        .byte $10	; <た>
- D - I - 0x02E343 21:A333: 25        .byte $25	; <ゆ>
- D - I - 0x02E344 21:A334: 12        .byte $12	; <つ>
- D - I - 0x02E345 21:A335: 22        .byte $22	; <め>

- D - I - 0x02E346 21:A336: 00        .byte $00
- D - I - 0x02E347 21:A337: 06        .byte $06	; <か>
- D - I - 0x02E348 21:A338: 08        .byte $08	; <く>
- D - I - 0x02E349 21:A339: 23        .byte $23	; <も>
; продолжение


off_A33A:
- D - I - 0x02E34A 21:A33A: 08        .byte $08	; <く>
- D - I - 0x02E34B 21:A33B: 01        .byte $01	; <あ>
- D - I - 0x02E34C 21:A33C: 19        .byte $19	; <の>
- D - I - 0x02E34D 21:A33D: 11        .byte $11	; <ち>
- D - I - 0x02E34E 21:A33E: 81        .byte $81	; <A>
- D - I - 0x02E34F 21:A33F: 13        .byte $13	; <て>

- D - I - 0x02E350 21:A340: 00        .byte $00
- D - I - 0x02E351 21:A341: 02        .byte $02	; <い>
- D - I - 0x02E352 21:A342: 81        .byte $81	; <A>
- D - I - 0x02E353 21:A343: 19        .byte $19	; <の>

- D - I - 0x02E354 21:A344: 18        .byte $18	; <ね>
- D - I - 0x02E355 21:A345: 03        .byte $03	; <う>
- D - I - 0x02E356 21:A346: 0D        .byte $0D	; <す>
- D - I - 0x02E357 21:A347: 0C        .byte $0C	; <し>
- D - I - 0x02E358 21:A348: 11        .byte $11	; <ち>
- D - I - 0x02E359 21:A349: 0D        .byte $0D	; <す>
- D - I - 0x02E35A 21:A34A: 19        .byte $19	; <の>
- D - I - 0x02E35B 21:A34B: 10        .byte $10	; <た>
- D - I - 0x02E35C 21:A34C: 81        .byte $81	; <A>
- D - I - 0x02E35D 21:A34D: 1B        .byte $1B	; <ひ>

- D - I - 0x02E35E 21:A34E: 10        .byte $10	; <た>
- D - I - 0x02E35F 21:A34F: 04        .byte $04	; <え>
- D - I - 0x02E360 21:A350: 15        .byte $15	; <な>
- D - I - 0x02E361 21:A351: 1A        .byte $1A	; <は>
- D - I - 0x02E362 21:A352: 19        .byte $19	; <の>
- D - I - 0x02E363 21:A353: 12        .byte $12	; <つ>
- D - I - 0x02E364 21:A354: 81        .byte $81	; <A>
- D - I - 0x02E365 21:A355: 31        .byte $31	; <ゅ>

- D - I - 0x02E366 21:A356: 10        .byte $10	; <た>
- D - I - 0x02E367 21:A357: 05        .byte $05	; <お>
- D - I - 0x02E368 21:A358: 0E        .byte $0E	; <せ>
- D - I - 0x02E369 21:A359: 24        .byte $24	; <や>
- D - I - 0x02E36A 21:A35A: 15        .byte $15	; <な>
- D - I - 0x02E36B 21:A35B: 30        .byte $30	; <ゃ>
- D - I - 0x02E36C 21:A35C: 19        .byte $19	; <の>
- D - I - 0x02E36D 21:A35D: 18        .byte $18	; <ね>

- D - I - 0x02E36E 21:A35E: 00        .byte $00
- D - I - 0x02E36F 21:A35F: 06        .byte $06	; <か>
- D - I - 0x02E370 21:A360: 14        .byte $14	; <と>
- D - I - 0x02E371 21:A361: 32        .byte $32	; <ょ>
; продолжение


off_A362:
- D - I - 0x02E372 21:A362: 20        .byte $20	; <み>
- D - I - 0x02E373 21:A363: 01        .byte $01	; <あ>
- D - I - 0x02E374 21:A364: 05        .byte $05	; <お>
- D - I - 0x02E375 21:A365: 04        .byte $04	; <え>
- D - I - 0x02E376 21:A366: 09        .byte $09	; <け>
- D - I - 0x02E377 21:A367: 33        .byte $33	; <0>
- D - I - 0x02E378 21:A368: 0D        .byte $0D	; <す>
- D - I - 0x02E379 21:A369: 33        .byte $33	; <0>
- D - I - 0x02E37A 21:A36A: 11        .byte $11	; <ち>
- D - I - 0x02E37B 21:A36B: 33        .byte $33	; <0>
- D - I - 0x02E37C 21:A36C: 15        .byte $15	; <な>
- D - I - 0x02E37D 21:A36D: 33        .byte $33	; <0>

- D - I - 0x02E37E 21:A36E: 18        .byte $18	; <ね>
- D - I - 0x02E37F 21:A36F: 02        .byte $02	; <い>
- D - I - 0x02E380 21:A370: 05        .byte $05	; <お>
- D - I - 0x02E381 21:A371: 02        .byte $02	; <い>
- D - I - 0x02E382 21:A372: 11        .byte $11	; <ち>
- D - I - 0x02E383 21:A373: 33        .byte $33	; <0>
- D - I - 0x02E384 21:A374: 15        .byte $15	; <な>
- D - I - 0x02E385 21:A375: 33        .byte $33	; <0>
- D - I - 0x02E386 21:A376: 19        .byte $19	; <の>
- D - I - 0x02E387 21:A377: 33        .byte $33	; <0>

- D - I - 0x02E388 21:A378: 00        .byte $00
- D - I - 0x02E389 21:A379: 03        .byte $03	; <う>
- D - I - 0x02E38A 21:A37A: 15        .byte $15	; <な>
- D - I - 0x02E38B 21:A37B: 33        .byte $33	; <0>

- D - I - 0x02E38C 21:A37C: 00        .byte $00
- D - I - 0x02E38D 21:A37D: 05        .byte $05	; <お>
- D - I - 0x02E38E 21:A37E: 04        .byte $04	; <え>
- D - I - 0x02E38F 21:A37F: 20        .byte $20	; <み>

- D - I - 0x02E390 21:A380: 08        .byte $08	; <く>
- D - I - 0x02E391 21:A381: 06        .byte $06	; <か>
- D - I - 0x02E392 21:A382: 0C        .byte $0C	; <し>
- D - I - 0x02E393 21:A383: 26        .byte $26	; <よ>
- D - I - 0x02E394 21:A384: 10        .byte $10	; <た>
- D - I - 0x02E395 21:A385: 27        .byte $27	; <ら>

- D - I - 0x02E396 21:A386: 01        .byte $01	; <あ>



off_A387_5C:
- D - I - 0x02E397 21:A387: 28        .byte $28	; <り>
- D - I - 0x02E398 21:A388: 01        .byte $01	; <あ>
- D - I - 0x02E399 21:A389: 05        .byte $05	; <お>
- D - I - 0x02E39A 21:A38A: 3C        .byte $3C	; <9>
- D - I - 0x02E39B 21:A38B: 09        .byte $09	; <け>
- D - I - 0x02E39C 21:A38C: 3D        .byte $3D	; <+>
- D - I - 0x02E39D 21:A38D: 0D        .byte $0D	; <す>
- D - I - 0x02E39E 21:A38E: 02        .byte $02	; <い>
- D - I - 0x02E39F 21:A38F: 11        .byte $11	; <ち>
- D - I - 0x02E3A0 21:A390: 02        .byte $02	; <い>
- D - I - 0x02E3A1 21:A391: 15        .byte $15	; <な>
- D - I - 0x02E3A2 21:A392: 2B        .byte $2B	; <ろ>
- D - I - 0x02E3A3 21:A393: 19        .byte $19	; <の>
- D - I - 0x02E3A4 21:A394: 28        .byte $28	; <り>

- D - I - 0x02E3A5 21:A395: 28        .byte $28	; <り>
- D - I - 0x02E3A6 21:A396: 02        .byte $02	; <い>
- D - I - 0x02E3A7 21:A397: 05        .byte $05	; <お>
- D - I - 0x02E3A8 21:A398: 3E        .byte $3E	; <Jr>
- D - I - 0x02E3A9 21:A399: 09        .byte $09	; <け>
- D - I - 0x02E3AA 21:A39A: 3F        .byte $3F	; <•>
- D - I - 0x02E3AB 21:A39B: 0D        .byte $0D	; <す>
- D - I - 0x02E3AC 21:A39C: 02        .byte $02	; <い>
- D - I - 0x02E3AD 21:A39D: 11        .byte $11	; <ち>
- D - I - 0x02E3AE 21:A39E: 02        .byte $02	; <い>
- D - I - 0x02E3AF 21:A39F: 15        .byte $15	; <な>
- D - I - 0x02E3B0 21:A3A0: 02        .byte $02	; <い>
- D - I - 0x02E3B1 21:A3A1: 19        .byte $19	; <の>
- D - I - 0x02E3B2 21:A3A2: 2A        .byte $2A	; <れ>

- D - I - 0x02E3B3 21:A3A3: 28        .byte $28	; <り>
- D - I - 0x02E3B4 21:A3A4: 03        .byte $03	; <う>
- D - I - 0x02E3B5 21:A3A5: 05        .byte $05	; <お>
- D - I - 0x02E3B6 21:A3A6: 04        .byte $04	; <え>
- D - I - 0x02E3B7 21:A3A7: 09        .byte $09	; <け>
- D - I - 0x02E3B8 21:A3A8: 05        .byte $05	; <お>
- D - I - 0x02E3B9 21:A3A9: 0D        .byte $0D	; <す>
- D - I - 0x02E3BA 21:A3AA: 10        .byte $10	; <た>
- D - I - 0x02E3BB 21:A3AB: 11        .byte $11	; <ち>
- D - I - 0x02E3BC 21:A3AC: 11        .byte $11	; <ち>
- D - I - 0x02E3BD 21:A3AD: 15        .byte $15	; <な>
- D - I - 0x02E3BE 21:A3AE: 02        .byte $02	; <い>
- D - I - 0x02E3BF 21:A3AF: 19        .byte $19	; <の>
- D - I - 0x02E3C0 21:A3B0: 15        .byte $15	; <な>

- D - I - 0x02E3C1 21:A3B1: 30        .byte $30	; <ゃ>
- D - I - 0x02E3C2 21:A3B2: 04        .byte $04	; <え>
- D - I - 0x02E3C3 21:A3B3: 04        .byte $04	; <え>
- D - I - 0x02E3C4 21:A3B4: 06        .byte $06	; <か>
- D - I - 0x02E3C5 21:A3B5: 08        .byte $08	; <く>
- D - I - 0x02E3C6 21:A3B6: 07        .byte $07	; <き>
- D - I - 0x02E3C7 21:A3B7: 0C        .byte $0C	; <し>
- D - I - 0x02E3C8 21:A3B8: 12        .byte $12	; <つ>
- D - I - 0x02E3C9 21:A3B9: 0D        .byte $0D	; <す>
- D - I - 0x02E3CA 21:A3BA: 14        .byte $14	; <と>
- D - I - 0x02E3CB 21:A3BB: 11        .byte $11	; <ち>
- D - I - 0x02E3CC 21:A3BC: 13        .byte $13	; <て>
- D - I - 0x02E3CD 21:A3BD: 15        .byte $15	; <な>
- D - I - 0x02E3CE 21:A3BE: 16        .byte $16	; <に>
- D - I - 0x02E3CF 21:A3BF: 19        .byte $19	; <の>
- D - I - 0x02E3D0 21:A3C0: 17        .byte $17	; <ぬ>

- D - I - 0x02E3D1 21:A3C1: 28        .byte $28	; <り>
- D - I - 0x02E3D2 21:A3C2: 05        .byte $05	; <お>
- D - I - 0x02E3D3 21:A3C3: 04        .byte $04	; <え>
- D - I - 0x02E3D4 21:A3C4: 22        .byte $22	; <め>
- D - I - 0x02E3D5 21:A3C5: 0A        .byte $0A	; <こ>
- D - I - 0x02E3D6 21:A3C6: 1D        .byte $1D	; <へ>
- D - I - 0x02E3D7 21:A3C7: 0E        .byte $0E	; <せ>
- D - I - 0x02E3D8 21:A3C8: 35        .byte $35	; <2>
- D - I - 0x02E3D9 21:A3C9: 12        .byte $12	; <つ>
- D - I - 0x02E3DA 21:A3CA: 2E        .byte $2E	; <ん>
- D - I - 0x02E3DB 21:A3CB: 15        .byte $15	; <な>
- D - I - 0x02E3DC 21:A3CC: 2F        .byte $2F	; <っ>
- D - I - 0x02E3DD 21:A3CD: 19        .byte $19	; <の>
- D - I - 0x02E3DE 21:A3CE: 3A        .byte $3A	; <7>

- D - I - 0x02E3DF 21:A3CF: 18        .byte $18	; <ね>
- D - I - 0x02E3E0 21:A3D0: 06        .byte $06	; <か>
- D - I - 0x02E3E1 21:A3D1: 08        .byte $08	; <く>
- D - I - 0x02E3E2 21:A3D2: 1F        .byte $1F	; <ま>
- D - I - 0x02E3E3 21:A3D3: 0C        .byte $0C	; <し>
- D - I - 0x02E3E4 21:A3D4: 37        .byte $37	; <4>
- D - I - 0x02E3E5 21:A3D5: 10        .byte $10	; <た>
- D - I - 0x02E3E6 21:A3D6: 3B        .byte $3B	; <8>
- D - I - 0x02E3E7 21:A3D7: 17        .byte $17	; <ぬ>
- D - I - 0x02E3E8 21:A3D8: 1B        .byte $1B	; <ひ>

- D - I - 0x02E3E9 21:A3D9: 01        .byte $01	; <あ>



off_A3DA_5D:
- D - I - 0x02E3EA 21:A3DA: 08        .byte $08	; <く>
- D - I - 0x02E3EB 21:A3DB: 01        .byte $01	; <あ>
- D - I - 0x02E3EC 21:A3DC: 05        .byte $05	; <お>
- D - I - 0x02E3ED 21:A3DD: 5B        .byte $5B	; <ヒ>
- D - I - 0x02E3EE 21:A3DE: 09        .byte $09	; <け>
- D - I - 0x02E3EF 21:A3DF: 5E        .byte $5E	; <ホ>

- D - I - 0x02E3F0 21:A3E0: 00        .byte $00
- D - I - 0x02E3F1 21:A3E1: 02        .byte $02	; <い>
- D - I - 0x02E3F2 21:A3E2: 05        .byte $05	; <お>
- D - I - 0x02E3F3 21:A3E3: 71        .byte $71	; <ュ>

- D - I - 0x02E3F4 21:A3E4: 00        .byte $00
- D - I - 0x02E3F5 21:A3E5: 03        .byte $03	; <う>
- D - I - 0x02E3F6 21:A3E6: 09        .byte $09	; <け>
- D - I - 0x02E3F7 21:A3E7: 74        .byte $74	; <ィ>

- D - I - 0x02E3F8 21:A3E8: 00        .byte $00
- D - I - 0x02E3F9 21:A3E9: 05        .byte $05	; <お>
- D - I - 0x02E3FA 21:A3EA: 04        .byte $04	; <え>
- D - I - 0x02E3FB 21:A3EB: 5F        .byte $5F	; <マ>

- D - I - 0x02E3FC 21:A3EC: 00        .byte $00
- D - I - 0x02E3FD 21:A3ED: 06        .byte $06	; <か>
- D - I - 0x02E3FE 21:A3EE: 08        .byte $08	; <く>
- D - I - 0x02E3FF 21:A3EF: 4A        .byte $4A	; <コ>
; продолжение


off_A3F0:
- D - I - 0x02E400 21:A3F0: 08        .byte $08	; <く>
- D - I - 0x02E401 21:A3F1: 02        .byte $02	; <い>
- D - I - 0x02E402 21:A3F2: 09        .byte $09	; <け>
- D - I - 0x02E403 21:A3F3: 51        .byte $51	; <チ>
- D - I - 0x02E404 21:A3F4: 0D        .byte $0D	; <す>
- D - I - 0x02E405 21:A3F5: 54        .byte $54	; <ト>

- D - I - 0x02E406 21:A3F6: 18        .byte $18	; <ね>
- D - I - 0x02E407 21:A3F7: 03        .byte $03	; <う>
- D - I - 0x02E408 21:A3F8: 05        .byte $05	; <お>
- D - I - 0x02E409 21:A3F9: 52        .byte $52	; <ツ>
- D - I - 0x02E40A 21:A3FA: 0B        .byte $0B	; <さ>
- D - I - 0x02E40B 21:A3FB: 5A        .byte $5A	; <ハ>
- D - I - 0x02E40C 21:A3FC: 0D        .byte $0D	; <す>
- D - I - 0x02E40D 21:A3FD: 56        .byte $56	; <ニ>
- D - I - 0x02E40E 21:A3FE: 11        .byte $11	; <ち>
- D - I - 0x02E40F 21:A3FF: 33        .byte $33	; <0>

- D - I - 0x02E410 21:A400: 28        .byte $28	; <り>
- D - I - 0x02E411 21:A401: 04        .byte $04	; <え>
- D - I - 0x02E412 21:A402: 04        .byte $04	; <え>
- D - I - 0x02E413 21:A403: 58        .byte $58	; <ネ>
- D - I - 0x02E414 21:A404: 08        .byte $08	; <く>
- D - I - 0x02E415 21:A405: 59        .byte $59	; <ノ>
- D - I - 0x02E416 21:A406: 0B        .byte $0B	; <さ>
- D - I - 0x02E417 21:A407: 70        .byte $70	; <ャ>
- D - I - 0x02E418 21:A408: 0D        .byte $0D	; <す>
- D - I - 0x02E419 21:A409: 5C        .byte $5C	; <フ>
- D - I - 0x02E41A 21:A40A: 11        .byte $11	; <ち>
- D - I - 0x02E41B 21:A40B: 57        .byte $57	; <ヌ>
- D - I - 0x02E41C 21:A40C: 15        .byte $15	; <な>
- D - I - 0x02E41D 21:A40D: 45        .byte $45	; <オ>

- D - I - 0x02E41E 21:A40E: 10        .byte $10	; <た>
- D - I - 0x02E41F 21:A40F: 05        .byte $05	; <お>
- D - I - 0x02E420 21:A410: 0A        .byte $0A	; <こ>
- D - I - 0x02E421 21:A411: 21        .byte $21	; <む>
- D - I - 0x02E422 21:A412: 15        .byte $15	; <な>
- D - I - 0x02E423 21:A413: 47        .byte $47	; <キ>
- D - I - 0x02E424 21:A414: 19        .byte $19	; <の>
- D - I - 0x02E425 21:A415: 50        .byte $50	; <タ>

- D - I - 0x02E426 21:A416: 00        .byte $00
- D - I - 0x02E427 21:A417: 06        .byte $06	; <か>
- D - I - 0x02E428 21:A418: 14        .byte $14	; <と>
- D - I - 0x02E429 21:A419: 61        .byte $61	; <ム>
; продолжение


off_A41A:
- D - I - 0x02E42A 21:A41A: 20        .byte $20	; <み>
- D - I - 0x02E42B 21:A41B: 01        .byte $01	; <あ>
- D - I - 0x02E42C 21:A41C: 0D        .byte $0D	; <す>
- D - I - 0x02E42D 21:A41D: 33        .byte $33	; <0>
- D - I - 0x02E42E 21:A41E: 11        .byte $11	; <ち>
- D - I - 0x02E42F 21:A41F: 33        .byte $33	; <0>
- D - I - 0x02E430 21:A420: 15        .byte $15	; <な>
- D - I - 0x02E431 21:A421: 33        .byte $33	; <0>
- D - I - 0x02E432 21:A422: 19        .byte $19	; <の>
- D - I - 0x02E433 21:A423: 55        .byte $55	; <ナ>
- D - I - 0x02E434 21:A424: 81        .byte $81	; <A>
- D - I - 0x02E435 21:A425: 13        .byte $13	; <て>

- D - I - 0x02E436 21:A426: 18        .byte $18	; <ね>
- D - I - 0x02E437 21:A427: 02        .byte $02	; <い>
- D - I - 0x02E438 21:A428: 11        .byte $11	; <ち>
- D - I - 0x02E439 21:A429: 33        .byte $33	; <0>
- D - I - 0x02E43A 21:A42A: 15        .byte $15	; <な>
- D - I - 0x02E43B 21:A42B: 33        .byte $33	; <0>
- D - I - 0x02E43C 21:A42C: 19        .byte $19	; <の>
- D - I - 0x02E43D 21:A42D: 33        .byte $33	; <0>
- D - I - 0x02E43E 21:A42E: 81        .byte $81	; <A>
- D - I - 0x02E43F 21:A42F: 19        .byte $19	; <の>

- D - I - 0x02E440 21:A430: 10        .byte $10	; <た>
- D - I - 0x02E441 21:A431: 03        .byte $03	; <う>
- D - I - 0x02E442 21:A432: 15        .byte $15	; <な>
- D - I - 0x02E443 21:A433: 33        .byte $33	; <0>
- D - I - 0x02E444 21:A434: 19        .byte $19	; <の>
- D - I - 0x02E445 21:A435: 10        .byte $10	; <た>
- D - I - 0x02E446 21:A436: 81        .byte $81	; <A>
- D - I - 0x02E447 21:A437: 1B        .byte $1B	; <ひ>

- D - I - 0x02E448 21:A438: 08        .byte $08	; <く>
- D - I - 0x02E449 21:A439: 04        .byte $04	; <え>
- D - I - 0x02E44A 21:A43A: 19        .byte $19	; <の>
- D - I - 0x02E44B 21:A43B: 12        .byte $12	; <つ>
- D - I - 0x02E44C 21:A43C: 81        .byte $81	; <A>
- D - I - 0x02E44D 21:A43D: 31        .byte $31	; <ゅ>

- D - I - 0x02E44E 21:A43E: 10        .byte $10	; <た>
- D - I - 0x02E44F 21:A43F: 05        .byte $05	; <お>
- D - I - 0x02E450 21:A440: 0E        .byte $0E	; <せ>
- D - I - 0x02E451 21:A441: 24        .byte $24	; <や>
- D - I - 0x02E452 21:A442: 11        .byte $11	; <ち>
- D - I - 0x02E453 21:A443: 5D        .byte $5D	; <ヘ>
- D - I - 0x02E454 21:A444: 10        .byte $10	; <た>
- D - I - 0x02E455 21:A445: 73        .byte $73	; <ヮ>

- D - I - 0x02E456 21:A446: 08        .byte $08	; <く>
- D - I - 0x02E457 21:A447: 06        .byte $06	; <か>
- D - I - 0x02E458 21:A448: 0C        .byte $0C	; <し>
- D - I - 0x02E459 21:A449: 26        .byte $26	; <よ>
- D - I - 0x02E45A 21:A44A: 10        .byte $10	; <た>
- D - I - 0x02E45B 21:A44B: 27        .byte $27	; <ら>

- D - I - 0x02E45C 21:A44C: 01        .byte $01	; <あ>



off_A44D_5E:
- D - I - 0x02E45D 21:A44D: 10        .byte $10	; <た>
- D - I - 0x02E45E 21:A44E: 01        .byte $01	; <あ>
- D - I - 0x02E45F 21:A44F: 09        .byte $09	; <け>
- D - I - 0x02E460 21:A450: 6F        .byte $6F	; <ッ>
- D - I - 0x02E461 21:A451: 15        .byte $15	; <な>
- D - I - 0x02E462 21:A452: 2B        .byte $2B	; <ろ>
- D - I - 0x02E463 21:A453: 19        .byte $19	; <の>
- D - I - 0x02E464 21:A454: 28        .byte $28	; <り>

- D - I - 0x02E465 21:A455: 00        .byte $00
- D - I - 0x02E466 21:A456: 02        .byte $02	; <い>
- D - I - 0x02E467 21:A457: 19        .byte $19	; <の>
- D - I - 0x02E468 21:A458: 2A        .byte $2A	; <れ>

- D - I - 0x02E469 21:A459: 08        .byte $08	; <く>
- D - I - 0x02E46A 21:A45A: 03        .byte $03	; <う>
- D - I - 0x02E46B 21:A45B: 09        .byte $09	; <け>
- D - I - 0x02E46C 21:A45C: 60        .byte $60	; <ミ>
- D - I - 0x02E46D 21:A45D: 19        .byte $19	; <の>
- D - I - 0x02E46E 21:A45E: 15        .byte $15	; <な>

- D - I - 0x02E46F 21:A45F: 20        .byte $20	; <み>
- D - I - 0x02E470 21:A460: 04        .byte $04	; <え>
- D - I - 0x02E471 21:A461: 08        .byte $08	; <く>
- D - I - 0x02E472 21:A462: 62        .byte $62	; <メ>
- D - I - 0x02E473 21:A463: 0D        .byte $0D	; <す>
- D - I - 0x02E474 21:A464: 63        .byte $63	; <モ>
- D - I - 0x02E475 21:A465: 11        .byte $11	; <ち>
- D - I - 0x02E476 21:A466: 66        .byte $66	; <ヨ>
- D - I - 0x02E477 21:A467: 13        .byte $13	; <て>
- D - I - 0x02E478 21:A468: 61        .byte $61	; <ム>
- D - I - 0x02E479 21:A469: 19        .byte $19	; <の>
- D - I - 0x02E47A 21:A46A: 69        .byte $69	; <ル>

- D - I - 0x02E47B 21:A46B: 08        .byte $08	; <く>
- D - I - 0x02E47C 21:A46C: 05        .byte $05	; <お>
- D - I - 0x02E47D 21:A46D: 15        .byte $15	; <な>
- D - I - 0x02E47E 21:A46E: 68        .byte $68	; <リ>
- D - I - 0x02E47F 21:A46F: 19        .byte $19	; <の>
- D - I - 0x02E480 21:A470: 6B        .byte $6B	; <ロ>

- D - I - 0x02E481 21:A471: 08        .byte $08	; <く>
- D - I - 0x02E482 21:A472: 06        .byte $06	; <か>
- D - I - 0x02E483 21:A473: 15        .byte $15	; <な>
- D - I - 0x02E484 21:A474: 6A        .byte $6A	; <レ>
- D - I - 0x02E485 21:A475: 14        .byte $14	; <と>
- D - I - 0x02E486 21:A476: 53        .byte $53	; <テ>
; продолжение


off_A477:
- D - I - 0x02E487 21:A477: 08        .byte $08	; <く>
- D - I - 0x02E488 21:A478: 03        .byte $03	; <う>
- D - I - 0x02E489 21:A479: 05        .byte $05	; <お>
- D - I - 0x02E48A 21:A47A: 0A        .byte $0A	; <こ>
- D - I - 0x02E48B 21:A47B: 0D        .byte $0D	; <す>
- D - I - 0x02E48C 21:A47C: 0E        .byte $0E	; <せ>

- D - I - 0x02E48D 21:A47D: 08        .byte $08	; <く>
- D - I - 0x02E48E 21:A47E: 04        .byte $04	; <え>
- D - I - 0x02E48F 21:A47F: 04        .byte $04	; <え>
- D - I - 0x02E490 21:A480: 20        .byte $20	; <み>
- D - I - 0x02E491 21:A481: 15        .byte $15	; <な>
- D - I - 0x02E492 21:A482: 30        .byte $30	; <ゃ>

- D - I - 0x02E493 21:A483: 20        .byte $20	; <み>
- D - I - 0x02E494 21:A484: 05        .byte $05	; <お>
- D - I - 0x02E495 21:A485: 04        .byte $04	; <え>
- D - I - 0x02E496 21:A486: 22        .byte $22	; <め>
- D - I - 0x02E497 21:A487: 0A        .byte $0A	; <こ>
- D - I - 0x02E498 21:A488: 23        .byte $23	; <も>
- D - I - 0x02E499 21:A489: 0E        .byte $0E	; <せ>
- D - I - 0x02E49A 21:A48A: 26        .byte $26	; <よ>
- D - I - 0x02E49B 21:A48B: 12        .byte $12	; <つ>
- D - I - 0x02E49C 21:A48C: 27        .byte $27	; <ら>
- D - I - 0x02E49D 21:A48D: 13        .byte $13	; <て>
- D - I - 0x02E49E 21:A48E: 1A        .byte $1A	; <は>

- D - I - 0x02E49F 21:A48F: 10        .byte $10	; <た>
- D - I - 0x02E4A0 21:A490: 06        .byte $06	; <か>
- D - I - 0x02E4A1 21:A491: 08        .byte $08	; <く>
- D - I - 0x02E4A2 21:A492: 29        .byte $29	; <る>
- D - I - 0x02E4A3 21:A493: 0C        .byte $0C	; <し>
- D - I - 0x02E4A4 21:A494: 2C        .byte $2C	; <わ>
- D - I - 0x02E4A5 21:A495: 10        .byte $10	; <た>
- D - I - 0x02E4A6 21:A496: 2D        .byte $2D	; <を>
; продолжение


off_A497:
- D - I - 0x02E4A7 21:A497: 00        .byte $00
- D - I - 0x02E4A8 21:A498: 01        .byte $01	; <あ>
- D - I - 0x02E4A9 21:A499: 05        .byte $05	; <お>
- D - I - 0x02E4AA 21:A49A: 09        .byte $09	; <け>

- D - I - 0x02E4AB 21:A49B: 00        .byte $00
- D - I - 0x02E4AC 21:A49C: 02        .byte $02	; <い>
- D - I - 0x02E4AD 21:A49D: 05        .byte $05	; <お>
- D - I - 0x02E4AE 21:A49E: 08        .byte $08	; <く>

- D - I - 0x02E4AF 21:A49F: 08        .byte $08	; <く>
- D - I - 0x02E4B0 21:A4A0: 03        .byte $03	; <う>
- D - I - 0x02E4B1 21:A4A1: 11        .byte $11	; <ち>
- D - I - 0x02E4B2 21:A4A2: 02        .byte $02	; <い>
- D - I - 0x02E4B3 21:A4A3: 15        .byte $15	; <な>
- D - I - 0x02E4B4 21:A4A4: 02        .byte $02	; <い>
; продолжение


off_A4A5:
- D - I - 0x02E4B5 21:A4A5: 08        .byte $08	; <く>
- D - I - 0x02E4B6 21:A4A6: 01        .byte $01	; <あ>
- D - I - 0x02E4B7 21:A4A7: 0D        .byte $0D	; <す>
- D - I - 0x02E4B8 21:A4A8: 02        .byte $02	; <い>
- D - I - 0x02E4B9 21:A4A9: 11        .byte $11	; <ち>
- D - I - 0x02E4BA 21:A4AA: 02        .byte $02	; <い>

- D - I - 0x02E4BB 21:A4AB: 18        .byte $18	; <ね>
- D - I - 0x02E4BC 21:A4AC: 02        .byte $02	; <い>
- D - I - 0x02E4BD 21:A4AD: 09        .byte $09	; <け>
- D - I - 0x02E4BE 21:A4AE: 02        .byte $02	; <い>
- D - I - 0x02E4BF 21:A4AF: 0D        .byte $0D	; <す>
- D - I - 0x02E4C0 21:A4B0: 02        .byte $02	; <い>
- D - I - 0x02E4C1 21:A4B1: 11        .byte $11	; <ち>
- D - I - 0x02E4C2 21:A4B2: 02        .byte $02	; <い>
- D - I - 0x02E4C3 21:A4B3: 15        .byte $15	; <な>
- D - I - 0x02E4C4 21:A4B4: 02        .byte $02	; <い>

- D - I - 0x02E4C5 21:A4B5: 01        .byte $01	; <あ>



off_A4B6_5F:
- D - I - 0x02E4C6 21:A4B6: 30        .byte $30	; <ゃ>
- D - I - 0x02E4C7 21:A4B7: 01        .byte $01	; <あ>
- D - I - 0x02E4C8 21:A4B8: 01        .byte $01	; <あ>
- D - I - 0x02E4C9 21:A4B9: 12        .byte $12	; <つ>
- D - I - 0x02E4CA 21:A4BA: 05        .byte $05	; <お>
- D - I - 0x02E4CB 21:A4BB: 04        .byte $04	; <え>
- D - I - 0x02E4CC 21:A4BC: 09        .byte $09	; <け>
- D - I - 0x02E4CD 21:A4BD: 05        .byte $05	; <お>
- D - I - 0x02E4CE 21:A4BE: 0D        .byte $0D	; <す>
- D - I - 0x02E4CF 21:A4BF: 10        .byte $10	; <た>
- D - I - 0x02E4D0 21:A4C0: 11        .byte $11	; <ち>
- D - I - 0x02E4D1 21:A4C1: 11        .byte $11	; <ち>
- D - I - 0x02E4D2 21:A4C2: 15        .byte $15	; <な>
- D - I - 0x02E4D3 21:A4C3: 14        .byte $14	; <と>
- D - I - 0x02E4D4 21:A4C4: 19        .byte $19	; <の>
- D - I - 0x02E4D5 21:A4C5: 15        .byte $15	; <な>

- D - I - 0x02E4D6 21:A4C6: 28        .byte $28	; <り>
- D - I - 0x02E4D7 21:A4C7: 02        .byte $02	; <い>
- D - I - 0x02E4D8 21:A4C8: 05        .byte $05	; <お>
- D - I - 0x02E4D9 21:A4C9: 06        .byte $06	; <か>
- D - I - 0x02E4DA 21:A4CA: 09        .byte $09	; <け>
- D - I - 0x02E4DB 21:A4CB: 07        .byte $07	; <き>
- D - I - 0x02E4DC 21:A4CC: 0D        .byte $0D	; <す>
- D - I - 0x02E4DD 21:A4CD: 10        .byte $10	; <た>
- D - I - 0x02E4DE 21:A4CE: 11        .byte $11	; <ち>
- D - I - 0x02E4DF 21:A4CF: 13        .byte $13	; <て>
- D - I - 0x02E4E0 21:A4D0: 15        .byte $15	; <な>
- D - I - 0x02E4E1 21:A4D1: 10        .byte $10	; <た>
- D - I - 0x02E4E2 21:A4D2: 19        .byte $19	; <の>
- D - I - 0x02E4E3 21:A4D3: 17        .byte $17	; <ぬ>

- D - I - 0x02E4E4 21:A4D4: 28        .byte $28	; <り>
- D - I - 0x02E4E5 21:A4D5: 03        .byte $03	; <う>
- D - I - 0x02E4E6 21:A4D6: 05        .byte $05	; <お>
- D - I - 0x02E4E7 21:A4D7: 0C        .byte $0C	; <し>
- D - I - 0x02E4E8 21:A4D8: 09        .byte $09	; <け>
- D - I - 0x02E4E9 21:A4D9: 0D        .byte $0D	; <す>
- D - I - 0x02E4EA 21:A4DA: 0D        .byte $0D	; <す>
- D - I - 0x02E4EB 21:A4DB: 18        .byte $18	; <ね>
- D - I - 0x02E4EC 21:A4DC: 11        .byte $11	; <ち>
- D - I - 0x02E4ED 21:A4DD: 19        .byte $19	; <の>
- D - I - 0x02E4EE 21:A4DE: 15        .byte $15	; <な>
- D - I - 0x02E4EF 21:A4DF: 1C        .byte $1C	; <ふ>
- D - I - 0x02E4F0 21:A4E0: 19        .byte $19	; <の>
- D - I - 0x02E4F1 21:A4E1: 1D        .byte $1D	; <へ>

- D - I - 0x02E4F2 21:A4E2: 30        .byte $30	; <ゃ>
- D - I - 0x02E4F3 21:A4E3: 04        .byte $04	; <え>
- D - I - 0x02E4F4 21:A4E4: 04        .byte $04	; <え>
- D - I - 0x02E4F5 21:A4E5: 0E        .byte $0E	; <せ>
- D - I - 0x02E4F6 21:A4E6: 08        .byte $08	; <く>
- D - I - 0x02E4F7 21:A4E7: 0F        .byte $0F	; <そ>
- D - I - 0x02E4F8 21:A4E8: 0D        .byte $0D	; <す>
- D - I - 0x02E4F9 21:A4E9: 1A        .byte $1A	; <は>
- D - I - 0x02E4FA 21:A4EA: 0C        .byte $0C	; <し>
- D - I - 0x02E4FB 21:A4EB: 16        .byte $16	; <に>
- D - I - 0x02E4FC 21:A4EC: 11        .byte $11	; <ち>
- D - I - 0x02E4FD 21:A4ED: 1B        .byte $1B	; <ひ>
- D - I - 0x02E4FE 21:A4EE: 15        .byte $15	; <な>
- D - I - 0x02E4FF 21:A4EF: 1E        .byte $1E	; <ほ>
- D - I - 0x02E500 21:A4F0: 19        .byte $19	; <の>
- D - I - 0x02E501 21:A4F1: 1F        .byte $1F	; <ま>

- D - I - 0x02E502 21:A4F2: 28        .byte $28	; <り>
- D - I - 0x02E503 21:A4F3: 05        .byte $05	; <お>
- D - I - 0x02E504 21:A4F4: 06        .byte $06	; <か>
- D - I - 0x02E505 21:A4F5: 24        .byte $24	; <や>
- D - I - 0x02E506 21:A4F6: 0A        .byte $0A	; <こ>
- D - I - 0x02E507 21:A4F7: 25        .byte $25	; <ゆ>
- D - I - 0x02E508 21:A4F8: 0E        .byte $0E	; <せ>
- D - I - 0x02E509 21:A4F9: 30        .byte $30	; <ゃ>
- D - I - 0x02E50A 21:A4FA: 10        .byte $10	; <た>
- D - I - 0x02E50B 21:A4FB: 31        .byte $31	; <ゅ>
- D - I - 0x02E50C 21:A4FC: 14        .byte $14	; <と>
- D - I - 0x02E50D 21:A4FD: 34        .byte $34	; <1>
- D - I - 0x02E50E 21:A4FE: 18        .byte $18	; <ね>
- D - I - 0x02E50F 21:A4FF: 35        .byte $35	; <2>

- D - I - 0x02E510 21:A500: 20        .byte $20	; <み>
- D - I - 0x02E511 21:A501: 06        .byte $06	; <か>
- D - I - 0x02E512 21:A502: 04        .byte $04	; <え>
- D - I - 0x02E513 21:A503: 26        .byte $26	; <よ>
- D - I - 0x02E514 21:A504: 08        .byte $08	; <く>
- D - I - 0x02E515 21:A505: 27        .byte $27	; <ら>
- D - I - 0x02E516 21:A506: 0C        .byte $0C	; <し>
- D - I - 0x02E517 21:A507: 32        .byte $32	; <ょ>
- D - I - 0x02E518 21:A508: 10        .byte $10	; <た>
- D - I - 0x02E519 21:A509: 33        .byte $33	; <0>
- D - I - 0x02E51A 21:A50A: 14        .byte $14	; <と>
- D - I - 0x02E51B 21:A50B: 36        .byte $36	; <3>

- D - I - 0x02E51C 21:A50C: 01        .byte $01	; <あ>



off_A50D_60:
- D - I - 0x02E51D 21:A50D: 20        .byte $20	; <み>
- D - I - 0x02E51E 21:A50E: 01        .byte $01	; <あ>
- D - I - 0x02E51F 21:A50F: 09        .byte $09	; <け>
- D - I - 0x02E520 21:A510: 0C        .byte $0C	; <し>
- D - I - 0x02E521 21:A511: 15        .byte $15	; <な>
- D - I - 0x02E522 21:A512: 02        .byte $02	; <い>
- D - I - 0x02E523 21:A513: 19        .byte $19	; <の>
- D - I - 0x02E524 21:A514: 19        .byte $19	; <の>
- D - I - 0x02E525 21:A515: 81        .byte $81	; <A>
- D - I - 0x02E526 21:A516: 1C        .byte $1C	; <ふ>
- D - I - 0x02E527 21:A517: C1        .byte $C1	; <デ>
- D - I - 0x02E528 21:A518: 0D        .byte $0D	; <す>

- D - I - 0x02E529 21:A519: 10        .byte $10	; <た>
- D - I - 0x02E52A 21:A51A: 02        .byte $02	; <い>
- D - I - 0x02E52B 21:A51B: 19        .byte $19	; <の>
- D - I - 0x02E52C 21:A51C: 02        .byte $02	; <い>
- D - I - 0x02E52D 21:A51D: 81        .byte $81	; <A>
- D - I - 0x02E52E 21:A51E: 1E        .byte $1E	; <ほ>
- D - I - 0x02E52F 21:A51F: C1        .byte $C1	; <デ>
- D - I - 0x02E530 21:A520: 0F        .byte $0F	; <そ>

- D - I - 0x02E531 21:A521: 10        .byte $10	; <た>
- D - I - 0x02E532 21:A522: 03        .byte $03	; <う>
- D - I - 0x02E533 21:A523: 09        .byte $09	; <け>
- D - I - 0x02E534 21:A524: 0B        .byte $0B	; <さ>
- D - I - 0x02E535 21:A525: 19        .byte $19	; <の>
- D - I - 0x02E536 21:A526: 31        .byte $31	; <ゅ>
- D - I - 0x02E537 21:A527: 81        .byte $81	; <A>
- D - I - 0x02E538 21:A528: 34        .byte $34	; <1>

- D - I - 0x02E539 21:A529: 28        .byte $28	; <り>
- D - I - 0x02E53A 21:A52A: 04        .byte $04	; <え>
- D - I - 0x02E53B 21:A52B: 08        .byte $08	; <く>
- D - I - 0x02E53C 21:A52C: 21        .byte $21	; <む>
- D - I - 0x02E53D 21:A52D: 0D        .byte $0D	; <す>
- D - I - 0x02E53E 21:A52E: 24        .byte $24	; <や>
- D - I - 0x02E53F 21:A52F: 11        .byte $11	; <ち>
- D - I - 0x02E540 21:A530: 25        .byte $25	; <ゆ>
- D - I - 0x02E541 21:A531: 13        .byte $13	; <て>
- D - I - 0x02E542 21:A532: 18        .byte $18	; <ね>
- D - I - 0x02E543 21:A533: 19        .byte $19	; <の>
- D - I - 0x02E544 21:A534: 33        .byte $33	; <0>
- D - I - 0x02E545 21:A535: 81        .byte $81	; <A>
- D - I - 0x02E546 21:A536: 36        .byte $36	; <3>

- D - I - 0x02E547 21:A537: 08        .byte $08	; <く>
- D - I - 0x02E548 21:A538: 05        .byte $05	; <お>
- D - I - 0x02E549 21:A539: 15        .byte $15	; <な>
- D - I - 0x02E54A 21:A53A: 32        .byte $32	; <ょ>
- D - I - 0x02E54B 21:A53B: 19        .byte $19	; <の>
- D - I - 0x02E54C 21:A53C: 39        .byte $39	; <6>

- D - I - 0x02E54D 21:A53D: 00        .byte $00
- D - I - 0x02E54E 21:A53E: 06        .byte $06	; <か>
- D - I - 0x02E54F 21:A53F: 14        .byte $14	; <と>
- D - I - 0x02E550 21:A540: 38        .byte $38	; <5>

- D - I - 0x02E551 21:A541: 02        .byte $02	; <い>
- D - I - 0x02E552 21:A542: 77 A4     .word off_A477



off_A544_61:
- D - I - 0x02E554 21:A544: 08        .byte $08	; <く>
- D - I - 0x02E555 21:A545: 01        .byte $01	; <あ>
- D - I - 0x02E556 21:A546: 05        .byte $05	; <お>
- D - I - 0x02E557 21:A547: 04        .byte $04	; <え>
- D - I - 0x02E558 21:A548: 09        .byte $09	; <け>
- D - I - 0x02E559 21:A549: 33        .byte $33	; <0>

- D - I - 0x02E55A 21:A54A: 00        .byte $00
- D - I - 0x02E55B 21:A54B: 02        .byte $02	; <い>
- D - I - 0x02E55C 21:A54C: 05        .byte $05	; <お>
- D - I - 0x02E55D 21:A54D: 02        .byte $02	; <い>

- D - I - 0x02E55E 21:A54E: 00        .byte $00
- D - I - 0x02E55F 21:A54F: 03        .byte $03	; <う>
- D - I - 0x02E560 21:A550: 09        .byte $09	; <け>
- D - I - 0x02E561 21:A551: 53        .byte $53	; <テ>

- D - I - 0x02E562 21:A552: 00        .byte $00
- D - I - 0x02E563 21:A553: 05        .byte $05	; <お>
- D - I - 0x02E564 21:A554: 04        .byte $04	; <え>
- D - I - 0x02E565 21:A555: 20        .byte $20	; <み>

- D - I - 0x02E566 21:A556: 00        .byte $00
- D - I - 0x02E567 21:A557: 06        .byte $06	; <か>
- D - I - 0x02E568 21:A558: 08        .byte $08	; <く>
- D - I - 0x02E569 21:A559: 3F        .byte $3F	; <•>

- D - I - 0x02E56A 21:A55A: 02        .byte $02	; <い>
- D - I - 0x02E56B 21:A55B: F0 A3     .word off_A3F0



off_A55D_62:
- D - I - 0x02E56D 21:A55D: 38        .byte $38	; <5>
- D - I - 0x02E56E 21:A55E: 01        .byte $01	; <あ>
- D - I - 0x02E56F 21:A55F: 01        .byte $01	; <あ>
- D - I - 0x02E570 21:A560: 40        .byte $40	; <「>
- D - I - 0x02E571 21:A561: 05        .byte $05	; <お>
- D - I - 0x02E572 21:A562: 41        .byte $41	; <ア>
- D - I - 0x02E573 21:A563: 09        .byte $09	; <け>
- D - I - 0x02E574 21:A564: 02        .byte $02	; <い>
- D - I - 0x02E575 21:A565: 15        .byte $15	; <な>
- D - I - 0x02E576 21:A566: 02        .byte $02	; <い>
- D - I - 0x02E577 21:A567: 19        .byte $19	; <の>
- D - I - 0x02E578 21:A568: 02        .byte $02	; <い>
- D - I - 0x02E579 21:A569: 81        .byte $81	; <A>
- D - I - 0x02E57A 21:A56A: 02        .byte $02	; <い>
- D - I - 0x02E57B 21:A56B: C1        .byte $C1	; <デ>
- D - I - 0x02E57C 21:A56C: 02        .byte $02	; <い>
- D - I - 0x02E57D 21:A56D: C5        .byte $C5	; <ブ>
- D - I - 0x02E57E 21:A56E: 57        .byte $57	; <ヌ>

- D - I - 0x02E57F 21:A56F: 28        .byte $28	; <り>
- D - I - 0x02E580 21:A570: 02        .byte $02	; <い>
- D - I - 0x02E581 21:A571: 01        .byte $01	; <あ>
- D - I - 0x02E582 21:A572: 42        .byte $42	; <イ>
- D - I - 0x02E583 21:A573: 05        .byte $05	; <お>
- D - I - 0x02E584 21:A574: 43        .byte $43	; <ウ>
- D - I - 0x02E585 21:A575: 19        .byte $19	; <の>
- D - I - 0x02E586 21:A576: 02        .byte $02	; <い>
- D - I - 0x02E587 21:A577: 81        .byte $81	; <A>
- D - I - 0x02E588 21:A578: 56        .byte $56	; <ニ>
- D - I - 0x02E589 21:A579: C1        .byte $C1	; <デ>
- D - I - 0x02E58A 21:A57A: 5C        .byte $5C	; <フ>
- D - I - 0x02E58B 21:A57B: C5        .byte $C5	; <ブ>
- D - I - 0x02E58C 21:A57C: 5D        .byte $5D	; <ヘ>

- D - I - 0x02E58D 21:A57D: 38        .byte $38	; <5>
- D - I - 0x02E58E 21:A57E: 03        .byte $03	; <う>
- D - I - 0x02E58F 21:A57F: 01        .byte $01	; <あ>
- D - I - 0x02E590 21:A580: 48        .byte $48	; <ク>
- D - I - 0x02E591 21:A581: 05        .byte $05	; <お>
- D - I - 0x02E592 21:A582: 49        .byte $49	; <ケ>
- D - I - 0x02E593 21:A583: 09        .byte $09	; <け>
- D - I - 0x02E594 21:A584: 4C        .byte $4C	; <シ>
- D - I - 0x02E595 21:A585: 0D        .byte $0D	; <す>
- D - I - 0x02E596 21:A586: 4D        .byte $4D	; <ス>
- D - I - 0x02E597 21:A587: 19        .byte $19	; <の>
- D - I - 0x02E598 21:A588: 02        .byte $02	; <い>
- D - I - 0x02E599 21:A589: 81        .byte $81	; <A>
- D - I - 0x02E59A 21:A58A: 02        .byte $02	; <い>
- D - I - 0x02E59B 21:A58B: C1        .byte $C1	; <デ>
- D - I - 0x02E59C 21:A58C: 52        .byte $52	; <ツ>
- D - I - 0x02E59D 21:A58D: C5        .byte $C5	; <ブ>
- D - I - 0x02E59E 21:A58E: 59        .byte $59	; <ノ>

- D - I - 0x02E59F 21:A58F: 38        .byte $38	; <5>
- D - I - 0x02E5A0 21:A590: 04        .byte $04	; <え>
- D - I - 0x02E5A1 21:A591: 04        .byte $04	; <え>
- D - I - 0x02E5A2 21:A592: 4B        .byte $4B	; <サ>
- D - I - 0x02E5A3 21:A593: 08        .byte $08	; <く>
- D - I - 0x02E5A4 21:A594: 4E        .byte $4E	; <セ>
- D - I - 0x02E5A5 21:A595: 0C        .byte $0C	; <し>
- D - I - 0x02E5A6 21:A596: 4F        .byte $4F	; <ソ>
- D - I - 0x02E5A7 21:A597: 13        .byte $13	; <て>
- D - I - 0x02E5A8 21:A598: 5A        .byte $5A	; <ハ>
- D - I - 0x02E5A9 21:A599: 15        .byte $15	; <な>
- D - I - 0x02E5AA 21:A59A: 5B        .byte $5B	; <ヒ>
- D - I - 0x02E5AB 21:A59B: 19        .byte $19	; <の>
- D - I - 0x02E5AC 21:A59C: 5E        .byte $5E	; <ホ>
- D - I - 0x02E5AD 21:A59D: 81        .byte $81	; <A>
- D - I - 0x02E5AE 21:A59E: 5F        .byte $5F	; <マ>
- D - I - 0x02E5AF 21:A59F: C1        .byte $C1	; <デ>
- D - I - 0x02E5B0 21:A5A0: 58        .byte $58	; <ネ>

- D - I - 0x02E5B1 21:A5A1: 38        .byte $38	; <5>
- D - I - 0x02E5B2 21:A5A2: 05        .byte $05	; <お>
- D - I - 0x02E5B3 21:A5A3: 04        .byte $04	; <え>
- D - I - 0x02E5B4 21:A5A4: 22        .byte $22	; <め>
- D - I - 0x02E5B5 21:A5A5: 0A        .byte $0A	; <こ>
- D - I - 0x02E5B6 21:A5A6: 44        .byte $44	; <エ>
- D - I - 0x02E5B7 21:A5A7: 0E        .byte $0E	; <せ>
- D - I - 0x02E5B8 21:A5A8: 45        .byte $45	; <オ>
- D - I - 0x02E5B9 21:A5A9: 10        .byte $10	; <た>
- D - I - 0x02E5BA 21:A5AA: 50        .byte $50	; <タ>
- D - I - 0x02E5BB 21:A5AB: 12        .byte $12	; <つ>
- D - I - 0x02E5BC 21:A5AC: 4A        .byte $4A	; <コ>
- D - I - 0x02E5BD 21:A5AD: 15        .byte $15	; <な>
- D - I - 0x02E5BE 21:A5AE: 51        .byte $51	; <チ>
- D - I - 0x02E5BF 21:A5AF: 19        .byte $19	; <の>
- D - I - 0x02E5C0 21:A5B0: 54        .byte $54	; <ト>
- D - I - 0x02E5C1 21:A5B1: 81        .byte $81	; <A>
- D - I - 0x02E5C2 21:A5B2: 55        .byte $55	; <ナ>

- D - I - 0x02E5C3 21:A5B3: 18        .byte $18	; <ね>
- D - I - 0x02E5C4 21:A5B4: 06        .byte $06	; <か>
- D - I - 0x02E5C5 21:A5B5: 08        .byte $08	; <く>
- D - I - 0x02E5C6 21:A5B6: 46        .byte $46	; <カ>
- D - I - 0x02E5C7 21:A5B7: 0C        .byte $0C	; <し>
- D - I - 0x02E5C8 21:A5B8: 47        .byte $47	; <キ>
- D - I - 0x02E5C9 21:A5B9: 10        .byte $10	; <た>
- D - I - 0x02E5CA 21:A5BA: 2D        .byte $2D	; <を>
- D - I - 0x02E5CB 21:A5BB: 14        .byte $14	; <と>
- D - I - 0x02E5CC 21:A5BC: 53        .byte $53	; <テ>

- D - I - 0x02E5CD 21:A5BD: 01        .byte $01	; <あ>



off_A5BE_63:
- D - I - 0x02E5CE 21:A5BE: 28        .byte $28	; <り>
- D - I - 0x02E5CF 21:A5BF: 01        .byte $01	; <あ>
- D - I - 0x02E5D0 21:A5C0: 69        .byte $69	; <ル>
- D - I - 0x02E5D1 21:A5C1: A0        .byte $A0	; <が>
- D - I - 0x02E5D2 21:A5C2: 01        .byte $01	; <あ>
- D - I - 0x02E5D3 21:A5C3: A2        .byte $A2	; <ぐ>
- D - I - 0x02E5D4 21:A5C4: 05        .byte $05	; <お>
- D - I - 0x02E5D5 21:A5C5: A3        .byte $A3	; <げ>
- D - I - 0x02E5D6 21:A5C6: 09        .byte $09	; <け>
- D - I - 0x02E5D7 21:A5C7: 02        .byte $02	; <い>
- D - I - 0x02E5D8 21:A5C8: 15        .byte $15	; <な>
- D - I - 0x02E5D9 21:A5C9: 02        .byte $02	; <い>
- D - I - 0x02E5DA 21:A5CA: 19        .byte $19	; <の>
- D - I - 0x02E5DB 21:A5CB: AA        .byte $AA	; <だ>

- D - I - 0x02E5DC 21:A5CC: 10        .byte $10	; <た>
- D - I - 0x02E5DD 21:A5CD: 02        .byte $02	; <い>
- D - I - 0x02E5DE 21:A5CE: 01        .byte $01	; <あ>
- D - I - 0x02E5DF 21:A5CF: A8        .byte $A8	; <ぜ>
- D - I - 0x02E5E0 21:A5D0: 05        .byte $05	; <お>
- D - I - 0x02E5E1 21:A5D1: A9        .byte $A9	; <ぞ>
- D - I - 0x02E5E2 21:A5D2: 19        .byte $19	; <の>
- D - I - 0x02E5E3 21:A5D3: AB        .byte $AB	; <ぢ>

- D - I - 0x02E5E4 21:A5D4: 28        .byte $28	; <り>
- D - I - 0x02E5E5 21:A5D5: 03        .byte $03	; <う>
- D - I - 0x02E5E6 21:A5D6: 05        .byte $05	; <お>
- D - I - 0x02E5E7 21:A5D7: A6        .byte $A6	; <じ>
- D - I - 0x02E5E8 21:A5D8: 09        .byte $09	; <け>
- D - I - 0x02E5E9 21:A5D9: A7        .byte $A7	; <ず>
- D - I - 0x02E5EA 21:A5DA: 0D        .byte $0D	; <す>
- D - I - 0x02E5EB 21:A5DB: B2        .byte $B2	; <べ>
- D - I - 0x02E5EC 21:A5DC: 11        .byte $11	; <ち>
- D - I - 0x02E5ED 21:A5DD: B3        .byte $B3	; <ぼ>
- D - I - 0x02E5EE 21:A5DE: 15        .byte $15	; <な>
- D - I - 0x02E5EF 21:A5DF: 94        .byte $94
- D - I - 0x02E5F0 21:A5E0: 19        .byte $19	; <の>
- D - I - 0x02E5F1 21:A5E1: 95        .byte $95

- D - I - 0x02E5F2 21:A5E2: 30        .byte $30	; <ゃ>
- D - I - 0x02E5F3 21:A5E3: 04        .byte $04	; <え>
- D - I - 0x02E5F4 21:A5E4: 04        .byte $04	; <え>
- D - I - 0x02E5F5 21:A5E5: AC        .byte $AC	; <づ>
- D - I - 0x02E5F6 21:A5E6: 08        .byte $08	; <く>
- D - I - 0x02E5F7 21:A5E7: AD        .byte $AD	; <で>
- D - I - 0x02E5F8 21:A5E8: 0C        .byte $0C	; <し>
- D - I - 0x02E5F9 21:A5E9: B8        .byte $B8	; <ゴ>
- D - I - 0x02E5FA 21:A5EA: 10        .byte $10	; <た>
- D - I - 0x02E5FB 21:A5EB: B9        .byte $B9	; <ザ>
- D - I - 0x02E5FC 21:A5EC: 13        .byte $13	; <て>
- D - I - 0x02E5FD 21:A5ED: AE        .byte $AE	; <ど>
- D - I - 0x02E5FE 21:A5EE: 15        .byte $15	; <な>
- D - I - 0x02E5FF 21:A5EF: 96        .byte $96
- D - I - 0x02E600 21:A5F0: 19        .byte $19	; <の>
- D - I - 0x02E601 21:A5F1: 97        .byte $97

- D - I - 0x02E602 21:A5F2: 20        .byte $20	; <み>
- D - I - 0x02E603 21:A5F3: 05        .byte $05	; <お>
- D - I - 0x02E604 21:A5F4: 04        .byte $04	; <え>
- D - I - 0x02E605 21:A5F5: 22        .byte $22	; <め>
- D - I - 0x02E606 21:A5F6: 0A        .byte $0A	; <こ>
- D - I - 0x02E607 21:A5F7: AF        .byte $AF	; <ば>
- D - I - 0x02E608 21:A5F8: 0E        .byte $0E	; <せ>
- D - I - 0x02E609 21:A5F9: BA        .byte $BA	; <ジ>
- D - I - 0x02E60A 21:A5FA: 10        .byte $10	; <た>
- D - I - 0x02E60B 21:A5FB: BB        .byte $BB	; <ズ>
- D - I - 0x02E60C 21:A5FC: 15        .byte $15	; <な>
- D - I - 0x02E60D 21:A5FD: 99        .byte $99

- D - I - 0x02E60E 21:A5FE: 18        .byte $18	; <ね>
- D - I - 0x02E60F 21:A5FF: 06        .byte $06	; <か>
- D - I - 0x02E610 21:A600: 08        .byte $08	; <く>
- D - I - 0x02E611 21:A601: B1        .byte $B1	; <ぶ>
- D - I - 0x02E612 21:A602: 0C        .byte $0C	; <し>
- D - I - 0x02E613 21:A603: 9B        .byte $9B
- D - I - 0x02E614 21:A604: 10        .byte $10	; <た>
- D - I - 0x02E615 21:A605: 2D        .byte $2D	; <を>
- D - I - 0x02E616 21:A606: 14        .byte $14	; <と>
- D - I - 0x02E617 21:A607: 53        .byte $53	; <テ>

- D - I - 0x02E618 21:A608: 02        .byte $02	; <い>
- D - I - 0x02E619 21:A609: A5 A4     .word off_A4A5



off_A60B_64:
- D - I - 0x02E61B 21:A60B: 08        .byte $08	; <く>
- D - I - 0x02E61C 21:A60C: 02        .byte $02	; <い>
- D - I - 0x02E61D 21:A60D: 09        .byte $09	; <け>
- D - I - 0x02E61E 21:A60E: 1E        .byte $1E	; <ほ>
- D - I - 0x02E61F 21:A60F: 0D        .byte $0D	; <す>
- D - I - 0x02E620 21:A610: 1F        .byte $1F	; <ま>

- D - I - 0x02E621 21:A611: 10        .byte $10	; <た>
- D - I - 0x02E622 21:A612: 03        .byte $03	; <う>
- D - I - 0x02E623 21:A613: 05        .byte $05	; <お>
- D - I - 0x02E624 21:A614: 34        .byte $34	; <1>
- D - I - 0x02E625 21:A615: 09        .byte $09	; <け>
- D - I - 0x02E626 21:A616: 35        .byte $35	; <2>
- D - I - 0x02E627 21:A617: 0A        .byte $0A	; <こ>
- D - I - 0x02E628 21:A618: 39        .byte $39	; <6>

- D - I - 0x02E629 21:A619: 20        .byte $20	; <み>
- D - I - 0x02E62A 21:A61A: 04        .byte $04	; <え>
- D - I - 0x02E62B 21:A61B: 04        .byte $04	; <え>
- D - I - 0x02E62C 21:A61C: 36        .byte $36	; <3>
- D - I - 0x02E62D 21:A61D: 08        .byte $08	; <く>
- D - I - 0x02E62E 21:A61E: 37        .byte $37	; <4>
- D - I - 0x02E62F 21:A61F: 0A        .byte $0A	; <こ>
- D - I - 0x02E630 21:A620: 3B        .byte $3B	; <8>
- D - I - 0x02E631 21:A621: 0D        .byte $0D	; <す>
- D - I - 0x02E632 21:A622: 2C        .byte $2C	; <わ>
- D - I - 0x02E633 21:A623: 11        .byte $11	; <ち>
- D - I - 0x02E634 21:A624: 3C        .byte $3C	; <9>

- D - I - 0x02E635 21:A625: 08        .byte $08	; <く>
- D - I - 0x02E636 21:A626: 05        .byte $05	; <お>
- D - I - 0x02E637 21:A627: 0A        .byte $0A	; <こ>
- D - I - 0x02E638 21:A628: 3D        .byte $3D	; <+>
- D - I - 0x02E639 21:A629: 10        .byte $10	; <た>
- D - I - 0x02E63A 21:A62A: 3E        .byte $3E	; <Jr>

- D - I - 0x02E63B 21:A62B: 00        .byte $00
- D - I - 0x02E63C 21:A62C: 06        .byte $06	; <か>
- D - I - 0x02E63D 21:A62D: 08        .byte $08	; <く>
- D - I - 0x02E63E 21:A62E: 3F        .byte $3F	; <•>

- D - I - 0x02E63F 21:A62F: 02        .byte $02	; <い>
- D - I - 0x02E640 21:A630: 3A A3     .word off_A33A



off_A632_65:
- D - I - 0x02E642 21:A632: 38        .byte $38	; <5>
- D - I - 0x02E643 21:A633: 01        .byte $01	; <あ>
- D - I - 0x02E644 21:A634: 07        .byte $07	; <き>
- D - I - 0x02E645 21:A635: 04        .byte $04	; <え>
- D - I - 0x02E646 21:A636: 0B        .byte $0B	; <さ>
- D - I - 0x02E647 21:A637: 33        .byte $33	; <0>
- D - I - 0x02E648 21:A638: 0F        .byte $0F	; <そ>
- D - I - 0x02E649 21:A639: 33        .byte $33	; <0>
- D - I - 0x02E64A 21:A63A: 13        .byte $13	; <て>
- D - I - 0x02E64B 21:A63B: 33        .byte $33	; <0>
- D - I - 0x02E64C 21:A63C: 17        .byte $17	; <ぬ>
- D - I - 0x02E64D 21:A63D: 33        .byte $33	; <0>
- D - I - 0x02E64E 21:A63E: 1B        .byte $1B	; <ひ>
- D - I - 0x02E64F 21:A63F: 1D        .byte $1D	; <へ>
- D - I - 0x02E650 21:A640: 83        .byte $83	; <C>
- D - I - 0x02E651 21:A641: 14        .byte $14	; <と>
- D - I - 0x02E652 21:A642: C3        .byte $C3	; <バ>
- D - I - 0x02E653 21:A643: 15        .byte $15	; <な>

- D - I - 0x02E654 21:A644: 38        .byte $38	; <5>
- D - I - 0x02E655 21:A645: 02        .byte $02	; <い>
- D - I - 0x02E656 21:A646: 07        .byte $07	; <き>
- D - I - 0x02E657 21:A647: 02        .byte $02	; <い>
- D - I - 0x02E658 21:A648: 0B        .byte $0B	; <さ>
- D - I - 0x02E659 21:A649: 29        .byte $29	; <る>
- D - I - 0x02E65A 21:A64A: 0F        .byte $0F	; <そ>
- D - I - 0x02E65B 21:A64B: 06        .byte $06	; <か>
- D - I - 0x02E65C 21:A64C: 13        .byte $13	; <て>
- D - I - 0x02E65D 21:A64D: 33        .byte $33	; <0>
- D - I - 0x02E65E 21:A64E: 17        .byte $17	; <ぬ>
- D - I - 0x02E65F 21:A64F: 33        .byte $33	; <0>
- D - I - 0x02E660 21:A650: 1B        .byte $1B	; <ひ>
- D - I - 0x02E661 21:A651: 33        .byte $33	; <0>
- D - I - 0x02E662 21:A652: 83        .byte $83	; <C>
- D - I - 0x02E663 21:A653: 16        .byte $16	; <に>
- D - I - 0x02E664 21:A654: C3        .byte $C3	; <バ>
- D - I - 0x02E665 21:A655: 17        .byte $17	; <ぬ>

- D - I - 0x02E666 21:A656: 38        .byte $38	; <5>
- D - I - 0x02E667 21:A657: 03        .byte $03	; <う>
- D - I - 0x02E668 21:A658: 07        .byte $07	; <き>
- D - I - 0x02E669 21:A659: 08        .byte $08	; <く>
- D - I - 0x02E66A 21:A65A: 0B        .byte $0B	; <さ>
- D - I - 0x02E66B 21:A65B: 28        .byte $28	; <り>
- D - I - 0x02E66C 21:A65C: 0A        .byte $0A	; <こ>
- D - I - 0x02E66D 21:A65D: 38        .byte $38	; <5>
- D - I - 0x02E66E 21:A65E: 0F        .byte $0F	; <そ>
- D - I - 0x02E66F 21:A65F: 0C        .byte $0C	; <し>
- D - I - 0x02E670 21:A660: 13        .byte $13	; <て>
- D - I - 0x02E671 21:A661: 0D        .byte $0D	; <す>
- D - I - 0x02E672 21:A662: 17        .byte $17	; <ぬ>
- D - I - 0x02E673 21:A663: 33        .byte $33	; <0>
- D - I - 0x02E674 21:A664: 1B        .byte $1B	; <ひ>
- D - I - 0x02E675 21:A665: 10        .byte $10	; <た>
- D - I - 0x02E676 21:A666: 83        .byte $83	; <C>
- D - I - 0x02E677 21:A667: 1C        .byte $1C	; <ふ>

- D - I - 0x02E678 21:A668: 38        .byte $38	; <5>
- D - I - 0x02E679 21:A669: 04        .byte $04	; <え>
- D - I - 0x02E67A 21:A66A: 04        .byte $04	; <え>
- D - I - 0x02E67B 21:A66B: 0A        .byte $0A	; <こ>
- D - I - 0x02E67C 21:A66C: 08        .byte $08	; <く>
- D - I - 0x02E67D 21:A66D: 2A        .byte $2A	; <れ>
- D - I - 0x02E67E 21:A66E: 0A        .byte $0A	; <こ>
- D - I - 0x02E67F 21:A66F: 3A        .byte $3A	; <7>
- D - I - 0x02E680 21:A670: 0F        .byte $0F	; <そ>
- D - I - 0x02E681 21:A671: 2B        .byte $2B	; <ろ>
- D - I - 0x02E682 21:A672: 13        .byte $13	; <て>
- D - I - 0x02E683 21:A673: 2E        .byte $2E	; <ん>
- D - I - 0x02E684 21:A674: 17        .byte $17	; <ぬ>
- D - I - 0x02E685 21:A675: 1A        .byte $1A	; <は>
- D - I - 0x02E686 21:A676: 1B        .byte $1B	; <ひ>
- D - I - 0x02E687 21:A677: 12        .byte $12	; <つ>
- D - I - 0x02E688 21:A678: 83        .byte $83	; <C>
- D - I - 0x02E689 21:A679: 31        .byte $31	; <ゅ>

- D - I - 0x02E68A 21:A67A: 30        .byte $30	; <ゃ>
- D - I - 0x02E68B 21:A67B: 05        .byte $05	; <お>
- D - I - 0x02E68C 21:A67C: 04        .byte $04	; <え>
- D - I - 0x02E68D 21:A67D: 20        .byte $20	; <み>
- D - I - 0x02E68E 21:A67E: 0A        .byte $0A	; <こ>
- D - I - 0x02E68F 21:A67F: 2D        .byte $2D	; <を>
- D - I - 0x02E690 21:A680: 0E        .byte $0E	; <せ>
- D - I - 0x02E691 21:A681: 24        .byte $24	; <や>
- D - I - 0x02E692 21:A682: 10        .byte $10	; <た>
- D - I - 0x02E693 21:A683: 25        .byte $25	; <ゆ>
- D - I - 0x02E694 21:A684: 12        .byte $12	; <つ>
- D - I - 0x02E695 21:A685: 22        .byte $22	; <め>
- D - I - 0x02E696 21:A686: 17        .byte $17	; <ぬ>
- D - I - 0x02E697 21:A687: 30        .byte $30	; <ゃ>
- D - I - 0x02E698 21:A688: 1B        .byte $1B	; <ひ>
- D - I - 0x02E699 21:A689: 18        .byte $18	; <ね>

- D - I - 0x02E69A 21:A68A: 18        .byte $18	; <ね>
- D - I - 0x02E69B 21:A68B: 06        .byte $06	; <か>
- D - I - 0x02E69C 21:A68C: 08        .byte $08	; <く>
- D - I - 0x02E69D 21:A68D: 2F        .byte $2F	; <っ>
- D - I - 0x02E69E 21:A68E: 0C        .byte $0C	; <し>
- D - I - 0x02E69F 21:A68F: 26        .byte $26	; <よ>
- D - I - 0x02E6A0 21:A690: 10        .byte $10	; <た>
- D - I - 0x02E6A1 21:A691: 27        .byte $27	; <ら>
- D - I - 0x02E6A2 21:A692: 14        .byte $14	; <と>
- D - I - 0x02E6A3 21:A693: 32        .byte $32	; <ょ>

- D - I - 0x02E6A4 21:A694: 01        .byte $01	; <あ>



off_A695_66:
- D - I - 0x02E6A5 21:A695: 28        .byte $28	; <り>
- D - I - 0x02E6A6 21:A696: 01        .byte $01	; <あ>
- D - I - 0x02E6A7 21:A697: 07        .byte $07	; <き>
- D - I - 0x02E6A8 21:A698: 22        .byte $22	; <め>
- D - I - 0x02E6A9 21:A699: 0B        .byte $0B	; <さ>
- D - I - 0x02E6AA 21:A69A: 05        .byte $05	; <お>
- D - I - 0x02E6AB 21:A69B: 0F        .byte $0F	; <そ>
- D - I - 0x02E6AC 21:A69C: 10        .byte $10	; <た>
- D - I - 0x02E6AD 21:A69D: 13        .byte $13	; <て>
- D - I - 0x02E6AE 21:A69E: 10        .byte $10	; <た>
- D - I - 0x02E6AF 21:A69F: 17        .byte $17	; <ぬ>
- D - I - 0x02E6B0 21:A6A0: 10        .byte $10	; <た>
- D - I - 0x02E6B1 21:A6A1: 1B        .byte $1B	; <ひ>
- D - I - 0x02E6B2 21:A6A2: 37        .byte $37	; <4>

- D - I - 0x02E6B3 21:A6A3: 28        .byte $28	; <り>
- D - I - 0x02E6B4 21:A6A4: 02        .byte $02	; <い>
- D - I - 0x02E6B5 21:A6A5: 07        .byte $07	; <き>
- D - I - 0x02E6B6 21:A6A6: 02        .byte $02	; <い>
- D - I - 0x02E6B7 21:A6A7: 0B        .byte $0B	; <さ>
- D - I - 0x02E6B8 21:A6A8: 03        .byte $03	; <う>
- D - I - 0x02E6B9 21:A6A9: 0F        .byte $0F	; <そ>
- D - I - 0x02E6BA 21:A6AA: 10        .byte $10	; <た>
- D - I - 0x02E6BB 21:A6AB: 13        .byte $13	; <て>
- D - I - 0x02E6BC 21:A6AC: 10        .byte $10	; <た>
- D - I - 0x02E6BD 21:A6AD: 17        .byte $17	; <ぬ>
- D - I - 0x02E6BE 21:A6AE: 10        .byte $10	; <た>
- D - I - 0x02E6BF 21:A6AF: 1B        .byte $1B	; <ひ>
- D - I - 0x02E6C0 21:A6B0: 3D        .byte $3D	; <+>

- D - I - 0x02E6C1 21:A6B1: 30        .byte $30	; <ゃ>
- D - I - 0x02E6C2 21:A6B2: 03        .byte $03	; <う>
- D - I - 0x02E6C3 21:A6B3: 04        .byte $04	; <え>
- D - I - 0x02E6C4 21:A6B4: 08        .byte $08	; <く>
- D - I - 0x02E6C5 21:A6B5: 0B        .byte $0B	; <さ>
- D - I - 0x02E6C6 21:A6B6: 09        .byte $09	; <け>
- D - I - 0x02E6C7 21:A6B7: 0A        .byte $0A	; <こ>
- D - I - 0x02E6C8 21:A6B8: 59        .byte $59	; <ノ>
- D - I - 0x02E6C9 21:A6B9: 0F        .byte $0F	; <そ>
- D - I - 0x02E6CA 21:A6BA: 28        .byte $28	; <り>
- D - I - 0x02E6CB 21:A6BB: 13        .byte $13	; <て>
- D - I - 0x02E6CC 21:A6BC: 29        .byte $29	; <る>
- D - I - 0x02E6CD 21:A6BD: 17        .byte $17	; <ぬ>
- D - I - 0x02E6CE 21:A6BE: 2C        .byte $2C	; <わ>
- D - I - 0x02E6CF 21:A6BF: 1B        .byte $1B	; <ひ>
- D - I - 0x02E6D0 21:A6C0: 2D        .byte $2D	; <を>

- D - I - 0x02E6D1 21:A6C1: 30        .byte $30	; <ゃ>
- D - I - 0x02E6D2 21:A6C2: 04        .byte $04	; <え>
- D - I - 0x02E6D3 21:A6C3: 04        .byte $04	; <え>
- D - I - 0x02E6D4 21:A6C4: 0A        .byte $0A	; <こ>
- D - I - 0x02E6D5 21:A6C5: 0A        .byte $0A	; <こ>
- D - I - 0x02E6D6 21:A6C6: 0B        .byte $0B	; <さ>
- D - I - 0x02E6D7 21:A6C7: 0E        .byte $0E	; <せ>
- D - I - 0x02E6D8 21:A6C8: 2A        .byte $2A	; <れ>
- D - I - 0x02E6D9 21:A6C9: 0C        .byte $0C	; <し>
- D - I - 0x02E6DA 21:A6CA: 3F        .byte $3F	; <•>
- D - I - 0x02E6DB 21:A6CB: 12        .byte $12	; <つ>
- D - I - 0x02E6DC 21:A6CC: 2B        .byte $2B	; <ろ>
- D - I - 0x02E6DD 21:A6CD: 14        .byte $14	; <と>
- D - I - 0x02E6DE 21:A6CE: 2E        .byte $2E	; <ん>
- D - I - 0x02E6DF 21:A6CF: 1B        .byte $1B	; <ひ>
- D - I - 0x02E6E0 21:A6D0: 2F        .byte $2F	; <っ>

- D - I - 0x02E6E1 21:A6D1: 20        .byte $20	; <み>
- D - I - 0x02E6E2 21:A6D2: 05        .byte $05	; <お>
- D - I - 0x02E6E3 21:A6D3: 04        .byte $04	; <え>
- D - I - 0x02E6E4 21:A6D4: 20        .byte $20	; <み>
- D - I - 0x02E6E5 21:A6D5: 0A        .byte $0A	; <こ>
- D - I - 0x02E6E6 21:A6D6: 21        .byte $21	; <む>
- D - I - 0x02E6E7 21:A6D7: 0E        .byte $0E	; <せ>
- D - I - 0x02E6E8 21:A6D8: 38        .byte $38	; <5>
- D - I - 0x02E6E9 21:A6D9: 10        .byte $10	; <た>
- D - I - 0x02E6EA 21:A6DA: 39        .byte $39	; <6>
- D - I - 0x02E6EB 21:A6DB: 14        .byte $14	; <と>
- D - I - 0x02E6EC 21:A6DC: 3C        .byte $3C	; <9>

- D - I - 0x02E6ED 21:A6DD: 18        .byte $18	; <ね>
- D - I - 0x02E6EE 21:A6DE: 06        .byte $06	; <か>
- D - I - 0x02E6EF 21:A6DF: 08        .byte $08	; <く>
- D - I - 0x02E6F0 21:A6E0: 23        .byte $23	; <も>
- D - I - 0x02E6F1 21:A6E1: 0C        .byte $0C	; <し>
- D - I - 0x02E6F2 21:A6E2: 3A        .byte $3A	; <7>
- D - I - 0x02E6F3 21:A6E3: 10        .byte $10	; <た>
- D - I - 0x02E6F4 21:A6E4: 3B        .byte $3B	; <8>
- D - I - 0x02E6F5 21:A6E5: 14        .byte $14	; <と>
- D - I - 0x02E6F6 21:A6E6: 3E        .byte $3E	; <Jr>

- D - I - 0x02E6F7 21:A6E7: 01        .byte $01	; <あ>



off_A6E8_67:
- D - I - 0x02E6F8 21:A6E8: 10        .byte $10	; <た>
- D - I - 0x02E6F9 21:A6E9: 01        .byte $01	; <あ>
- D - I - 0x02E6FA 21:A6EA: 19        .byte $19	; <の>
- D - I - 0x02E6FB 21:A6EB: 1D        .byte $1D	; <へ>
- D - I - 0x02E6FC 21:A6EC: 81        .byte $81	; <A>
- D - I - 0x02E6FD 21:A6ED: 14        .byte $14	; <と>
- D - I - 0x02E6FE 21:A6EE: C1        .byte $C1	; <デ>
- D - I - 0x02E6FF 21:A6EF: 15        .byte $15	; <な>

- D - I - 0x02E700 21:A6F0: 18        .byte $18	; <ね>
- D - I - 0x02E701 21:A6F1: 02        .byte $02	; <い>
- D - I - 0x02E702 21:A6F2: 09        .byte $09	; <け>
- D - I - 0x02E703 21:A6F3: 41        .byte $41	; <ア>
- D - I - 0x02E704 21:A6F4: 0D        .byte $0D	; <す>
- D - I - 0x02E705 21:A6F5: 44        .byte $44	; <エ>
- D - I - 0x02E706 21:A6F6: 81        .byte $81	; <A>
- D - I - 0x02E707 21:A6F7: 16        .byte $16	; <に>
- D - I - 0x02E708 21:A6F8: C1        .byte $C1	; <デ>
- D - I - 0x02E709 21:A6F9: 17        .byte $17	; <ぬ>

- D - I - 0x02E70A 21:A6FA: 30        .byte $30	; <ゃ>
- D - I - 0x02E70B 21:A6FB: 03        .byte $03	; <う>
- D - I - 0x02E70C 21:A6FC: 05        .byte $05	; <お>
- D - I - 0x02E70D 21:A6FD: 42        .byte $42	; <イ>
- D - I - 0x02E70E 21:A6FE: 09        .byte $09	; <け>
- D - I - 0x02E70F 21:A6FF: 43        .byte $43	; <ウ>
- D - I - 0x02E710 21:A700: 0A        .byte $0A	; <こ>
- D - I - 0x02E711 21:A701: 4D        .byte $4D	; <ス>
- D - I - 0x02E712 21:A702: 0D        .byte $0D	; <す>
- D - I - 0x02E713 21:A703: 46        .byte $46	; <カ>
- D - I - 0x02E714 21:A704: 11        .byte $11	; <ち>
- D - I - 0x02E715 21:A705: 33        .byte $33	; <0>
- D - I - 0x02E716 21:A706: 19        .byte $19	; <の>
- D - I - 0x02E717 21:A707: 33        .byte $33	; <0>
- D - I - 0x02E718 21:A708: 81        .byte $81	; <A>
- D - I - 0x02E719 21:A709: 65        .byte $65	; <ユ>

- D - I - 0x02E71A 21:A70A: 38        .byte $38	; <5>
- D - I - 0x02E71B 21:A70B: 04        .byte $04	; <え>
- D - I - 0x02E71C 21:A70C: 04        .byte $04	; <え>
- D - I - 0x02E71D 21:A70D: 48        .byte $48	; <ク>
- D - I - 0x02E71E 21:A70E: 08        .byte $08	; <く>
- D - I - 0x02E71F 21:A70F: 49        .byte $49	; <ケ>
- D - I - 0x02E720 21:A710: 0A        .byte $0A	; <こ>
- D - I - 0x02E721 21:A711: 4F        .byte $4F	; <ソ>
- D - I - 0x02E722 21:A712: 0F        .byte $0F	; <そ>
- D - I - 0x02E723 21:A713: 4C        .byte $4C	; <シ>
- D - I - 0x02E724 21:A714: 11        .byte $11	; <ち>
- D - I - 0x02E725 21:A715: 60        .byte $60	; <ミ>
- D - I - 0x02E726 21:A716: 15        .byte $15	; <な>
- D - I - 0x02E727 21:A717: 33        .byte $33	; <0>
- D - I - 0x02E728 21:A718: 19        .byte $19	; <の>
- D - I - 0x02E729 21:A719: 64        .byte $64	; <ヤ>
- D - I - 0x02E72A 21:A71A: 81        .byte $81	; <A>
- D - I - 0x02E72B 21:A71B: 67        .byte $67	; <ラ>

- D - I - 0x02E72C 21:A71C: 28        .byte $28	; <り>
- D - I - 0x02E72D 21:A71D: 05        .byte $05	; <お>
- D - I - 0x02E72E 21:A71E: 0A        .byte $0A	; <こ>
- D - I - 0x02E72F 21:A71F: 4B        .byte $4B	; <サ>
- D - I - 0x02E730 21:A720: 0E        .byte $0E	; <せ>
- D - I - 0x02E731 21:A721: 4E        .byte $4E	; <セ>
- D - I - 0x02E732 21:A722: 10        .byte $10	; <た>
- D - I - 0x02E733 21:A723: 62        .byte $62	; <メ>
- D - I - 0x02E734 21:A724: 11        .byte $11	; <ち>
- D - I - 0x02E735 21:A725: 40        .byte $40	; <「>
- D - I - 0x02E736 21:A726: 15        .byte $15	; <な>
- D - I - 0x02E737 21:A727: 63        .byte $63	; <モ>
- D - I - 0x02E738 21:A728: 19        .byte $19	; <の>
- D - I - 0x02E739 21:A729: 66        .byte $66	; <ヨ>

- D - I - 0x02E73A 21:A72A: 08        .byte $08	; <く>
- D - I - 0x02E73B 21:A72B: 06        .byte $06	; <か>
- D - I - 0x02E73C 21:A72C: 08        .byte $08	; <く>
- D - I - 0x02E73D 21:A72D: 4A        .byte $4A	; <コ>
- D - I - 0x02E73E 21:A72E: 14        .byte $14	; <と>
- D - I - 0x02E73F 21:A72F: 61        .byte $61	; <ム>

- D - I - 0x02E740 21:A730: 02        .byte $02	; <い>
- D - I - 0x02E741 21:A731: 62 A3     .word off_A362



off_A733_68:
- D - I - 0x02E743 21:A733: 20        .byte $20	; <み>
- D - I - 0x02E744 21:A734: 01        .byte $01	; <あ>
- D - I - 0x02E745 21:A735: 09        .byte $09	; <け>
- D - I - 0x02E746 21:A736: 0C        .byte $0C	; <し>
- D - I - 0x02E747 21:A737: 15        .byte $15	; <な>
- D - I - 0x02E748 21:A738: 02        .byte $02	; <い>
- D - I - 0x02E749 21:A739: 19        .byte $19	; <の>
- D - I - 0x02E74A 21:A73A: 6D        .byte $6D	; <ヲ>
- D - I - 0x02E74B 21:A73B: 81        .byte $81	; <A>
- D - I - 0x02E74C 21:A73C: 78        .byte $78	; <?>
- D - I - 0x02E74D 21:A73D: C1        .byte $C1	; <デ>
- D - I - 0x02E74E 21:A73E: 79        .byte $79	; <!>

- D - I - 0x02E74F 21:A73F: 10        .byte $10	; <た>
- D - I - 0x02E750 21:A740: 02        .byte $02	; <い>
- D - I - 0x02E751 21:A741: 19        .byte $19	; <の>
- D - I - 0x02E752 21:A742: 02        .byte $02	; <い>
- D - I - 0x02E753 21:A743: 81        .byte $81	; <A>
- D - I - 0x02E754 21:A744: 7A        .byte $7A	; <、>
- D - I - 0x02E755 21:A745: C1        .byte $C1	; <デ>
- D - I - 0x02E756 21:A746: 7B        .byte $7B	; <。>

- D - I - 0x02E757 21:A747: 28        .byte $28	; <り>
- D - I - 0x02E758 21:A748: 03        .byte $03	; <う>
- D - I - 0x02E759 21:A749: 05        .byte $05	; <お>
- D - I - 0x02E75A 21:A74A: 65        .byte $65	; <ユ>
- D - I - 0x02E75B 21:A74B: 09        .byte $09	; <け>
- D - I - 0x02E75C 21:A74C: 70        .byte $70	; <ャ>
- D - I - 0x02E75D 21:A74D: 0A        .byte $0A	; <こ>
- D - I - 0x02E75E 21:A74E: 6C        .byte $6C	; <ワ>
- D - I - 0x02E75F 21:A74F: 0D        .byte $0D	; <す>
- D - I - 0x02E760 21:A750: 02        .byte $02	; <い>
- D - I - 0x02E761 21:A751: 19        .byte $19	; <の>
- D - I - 0x02E762 21:A752: 02        .byte $02	; <い>
- D - I - 0x02E763 21:A753: 81        .byte $81	; <A>
- D - I - 0x02E764 21:A754: 7D        .byte $7D	; <ー>

- D - I - 0x02E765 21:A755: 38        .byte $38	; <5>
- D - I - 0x02E766 21:A756: 04        .byte $04	; <え>
- D - I - 0x02E767 21:A757: 07        .byte $07	; <き>
- D - I - 0x02E768 21:A758: 67        .byte $67	; <ラ>
- D - I - 0x02E769 21:A759: 08        .byte $08	; <く>
- D - I - 0x02E76A 21:A75A: 72        .byte $72	; <ョ>
- D - I - 0x02E76B 21:A75B: 0A        .byte $0A	; <こ>
- D - I - 0x02E76C 21:A75C: 6E        .byte $6E	; <ン>
- D - I - 0x02E76D 21:A75D: 0D        .byte $0D	; <す>
- D - I - 0x02E76E 21:A75E: 73        .byte $73	; <ヮ>
- D - I - 0x02E76F 21:A75F: 11        .byte $11	; <ち>
- D - I - 0x02E770 21:A760: 74        .byte $74	; <ィ>
- D - I - 0x02E771 21:A761: 15        .byte $15	; <な>
- D - I - 0x02E772 21:A762: 75        .byte $75	; <ェ>
- D - I - 0x02E773 21:A763: 19        .byte $19	; <の>
- D - I - 0x02E774 21:A764: 7C        .byte $7C	; <~>
- D - I - 0x02E775 21:A765: 81        .byte $81	; <A>
- D - I - 0x02E776 21:A766: 7F        .byte $7F	; <,>

- D - I - 0x02E777 21:A767: 30        .byte $30	; <ゃ>
- D - I - 0x02E778 21:A768: 05        .byte $05	; <お>
- D - I - 0x02E779 21:A769: 07        .byte $07	; <き>
- D - I - 0x02E77A 21:A76A: 64        .byte $64	; <ヤ>
- D - I - 0x02E77B 21:A76B: 0A        .byte $0A	; <こ>
- D - I - 0x02E77C 21:A76C: A1        .byte $A1	; <ぎ>
- D - I - 0x02E77D 21:A76D: 0E        .byte $0E	; <せ>
- D - I - 0x02E77E 21:A76E: 8E        .byte $8E	; <L>
- D - I - 0x02E77F 21:A76F: 11        .byte $11	; <ち>
- D - I - 0x02E780 21:A770: 76        .byte $76	; <ォ>
- D - I - 0x02E781 21:A771: 10        .byte $10	; <た>
- D - I - 0x02E782 21:A772: 9C        .byte $9C
- D - I - 0x02E783 21:A773: 15        .byte $15	; <な>
- D - I - 0x02E784 21:A774: 77        .byte $77	; <:>
- D - I - 0x02E785 21:A775: 19        .byte $19	; <の>
- D - I - 0x02E786 21:A776: 7E        .byte $7E	; <.>

- D - I - 0x02E787 21:A777: 18        .byte $18	; <ね>
- D - I - 0x02E788 21:A778: 06        .byte $06	; <か>
- D - I - 0x02E789 21:A779: 08        .byte $08	; <く>
- D - I - 0x02E78A 21:A77A: 46        .byte $46	; <カ>
- D - I - 0x02E78B 21:A77B: 0C        .byte $0C	; <し>
- D - I - 0x02E78C 21:A77C: A4        .byte $A4	; <ご>
- D - I - 0x02E78D 21:A77D: 10        .byte $10	; <た>
- D - I - 0x02E78E 21:A77E: 2D        .byte $2D	; <を>
- D - I - 0x02E78F 21:A77F: 17        .byte $17	; <ぬ>
- D - I - 0x02E790 21:A780: 71        .byte $71	; <ュ>

- D - I - 0x02E791 21:A781: 02        .byte $02	; <い>
- D - I - 0x02E792 21:A782: 97 A4     .word off_A497



off_A784_69:
- D - I - 0x02E794 21:A784: 08        .byte $08	; <く>
- D - I - 0x02E795 21:A785: 01        .byte $01	; <あ>
- D - I - 0x02E796 21:A786: 05        .byte $05	; <お>
- D - I - 0x02E797 21:A787: 5B        .byte $5B	; <ヒ>
- D - I - 0x02E798 21:A788: 09        .byte $09	; <け>
- D - I - 0x02E799 21:A789: 5E        .byte $5E	; <ホ>

- D - I - 0x02E79A 21:A78A: 10        .byte $10	; <た>
- D - I - 0x02E79B 21:A78B: 02        .byte $02	; <い>
- D - I - 0x02E79C 21:A78C: 05        .byte $05	; <お>
- D - I - 0x02E79D 21:A78D: 71        .byte $71	; <ュ>
- D - I - 0x02E79E 21:A78E: 09        .byte $09	; <け>
- D - I - 0x02E79F 21:A78F: 29        .byte $29	; <る>
- D - I - 0x02E7A0 21:A790: 0D        .byte $0D	; <す>
- D - I - 0x02E7A1 21:A791: 06        .byte $06	; <か>

- D - I - 0x02E7A2 21:A792: 00        .byte $00
- D - I - 0x02E7A3 21:A793: 19        .byte $19	; <の>
- D - I - 0x02E7A4 21:A794: 0B        .byte $0B	; <さ>
- D - I - 0x02E7A5 21:A795: 6E        .byte $6E	; <ン>

- D - I - 0x02E7A6 21:A796: 00        .byte $00
- D - I - 0x02E7A7 21:A797: 1A        .byte $1A	; <は>
- D - I - 0x02E7A8 21:A798: 13        .byte $13	; <て>
- D - I - 0x02E7A9 21:A799: 6F        .byte $6F	; <ッ>

- D - I - 0x02E7AA 21:A79A: 18        .byte $18	; <ね>
- D - I - 0x02E7AB 21:A79B: 03        .byte $03	; <う>
- D - I - 0x02E7AC 21:A79C: 05        .byte $05	; <お>
- D - I - 0x02E7AD 21:A79D: 42        .byte $42	; <イ>
- D - I - 0x02E7AE 21:A79E: 09        .byte $09	; <け>
- D - I - 0x02E7AF 21:A79F: 69        .byte $69	; <ル>
- D - I - 0x02E7B0 21:A7A0: 0D        .byte $0D	; <す>
- D - I - 0x02E7B1 21:A7A1: 0C        .byte $0C	; <し>
- D - I - 0x02E7B2 21:A7A2: 11        .byte $11	; <ち>
- D - I - 0x02E7B3 21:A7A3: 0D        .byte $0D	; <す>

- D - I - 0x02E7B4 21:A7A4: 20        .byte $20	; <み>
- D - I - 0x02E7B5 21:A7A5: 04        .byte $04	; <え>
- D - I - 0x02E7B6 21:A7A6: 04        .byte $04	; <え>
- D - I - 0x02E7B7 21:A7A7: 68        .byte $68	; <リ>
- D - I - 0x02E7B8 21:A7A8: 08        .byte $08	; <く>
- D - I - 0x02E7B9 21:A7A9: 6B        .byte $6B	; <ロ>
- D - I - 0x02E7BA 21:A7AA: 0D        .byte $0D	; <す>
- D - I - 0x02E7BB 21:A7AB: 6C        .byte $6C	; <ワ>
- D - I - 0x02E7BC 21:A7AC: 11        .byte $11	; <ち>
- D - I - 0x02E7BD 21:A7AD: 6D        .byte $6D	; <ヲ>
- D - I - 0x02E7BE 21:A7AE: 15        .byte $15	; <な>
- D - I - 0x02E7BF 21:A7AF: 78        .byte $78	; <?>

- D - I - 0x02E7C0 21:A7B0: 18        .byte $18	; <ね>
- D - I - 0x02E7C1 21:A7B1: 05        .byte $05	; <お>
- D - I - 0x02E7C2 21:A7B2: 04        .byte $04	; <え>
- D - I - 0x02E7C3 21:A7B3: 6A        .byte $6A	; <レ>
- D - I - 0x02E7C4 21:A7B4: 0A        .byte $0A	; <こ>
- D - I - 0x02E7C5 21:A7B5: 2D        .byte $2D	; <を>
- D - I - 0x02E7C6 21:A7B6: 15        .byte $15	; <な>
- D - I - 0x02E7C7 21:A7B7: 7A        .byte $7A	; <、>
- D - I - 0x02E7C8 21:A7B8: 19        .byte $19	; <の>
- D - I - 0x02E7C9 21:A7B9: 72        .byte $72	; <ョ>

- D - I - 0x02E7CA 21:A7BA: 08        .byte $08	; <く>
- D - I - 0x02E7CB 21:A7BB: 06        .byte $06	; <か>
- D - I - 0x02E7CC 21:A7BC: 08        .byte $08	; <く>
- D - I - 0x02E7CD 21:A7BD: 2F        .byte $2F	; <っ>
- D - I - 0x02E7CE 21:A7BE: 14        .byte $14	; <と>
- D - I - 0x02E7CF 21:A7BF: 75        .byte $75	; <ェ>

- D - I - 0x02E7D0 21:A7C0: 02        .byte $02	; <い>
- D - I - 0x02E7D1 21:A7C1: 1A A4     .word off_A41A



off_A7C3_6A:
- D - I - 0x02E7D3 21:A7C3: 20        .byte $20	; <み>
- D - I - 0x02E7D4 21:A7C4: 01        .byte $01	; <あ>
- D - I - 0x02E7D5 21:A7C5: 0C        .byte $0C	; <し>
- D - I - 0x02E7D6 21:A7C6: 10        .byte $10	; <た>
- D - I - 0x02E7D7 21:A7C7: 10        .byte $10	; <た>
- D - I - 0x02E7D8 21:A7C8: 11        .byte $11	; <ち>
- D - I - 0x02E7D9 21:A7C9: 14        .byte $14	; <と>
- D - I - 0x02E7DA 21:A7CA: 14        .byte $14	; <と>
- D - I - 0x02E7DB 21:A7CB: 18        .byte $18	; <ね>
- D - I - 0x02E7DC 21:A7CC: 15        .byte $15	; <な>
- D - I - 0x02E7DD 21:A7CD: 80        .byte $80
- D - I - 0x02E7DE 21:A7CE: 18        .byte $18	; <ね>

- D - I - 0x02E7DF 21:A7CF: 30        .byte $30	; <ゃ>
- D - I - 0x02E7E0 21:A7D0: 02        .byte $02	; <い>
- D - I - 0x02E7E1 21:A7D1: 05        .byte $05	; <お>
- D - I - 0x02E7E2 21:A7D2: 49        .byte $49	; <ケ>
- D - I - 0x02E7E3 21:A7D3: 09        .byte $09	; <け>
- D - I - 0x02E7E4 21:A7D4: 4C        .byte $4C	; <シ>
- D - I - 0x02E7E5 21:A7D5: 0C        .byte $0C	; <し>
- D - I - 0x02E7E6 21:A7D6: 12        .byte $12	; <つ>
- D - I - 0x02E7E7 21:A7D7: 11        .byte $11	; <ち>
- D - I - 0x02E7E8 21:A7D8: 58        .byte $58	; <ネ>
- D - I - 0x02E7E9 21:A7D9: 10        .byte $10	; <た>
- D - I - 0x02E7EA 21:A7DA: 13        .byte $13	; <て>
- D - I - 0x02E7EB 21:A7DB: 14        .byte $14	; <と>
- D - I - 0x02E7EC 21:A7DC: 16        .byte $16	; <に>
- D - I - 0x02E7ED 21:A7DD: 18        .byte $18	; <ね>
- D - I - 0x02E7EE 21:A7DE: 17        .byte $17	; <ぬ>

- D - I - 0x02E7EF 21:A7DF: 18        .byte $18	; <ね>
- D - I - 0x02E7F0 21:A7E0: 03        .byte $03	; <う>
- D - I - 0x02E7F1 21:A7E1: 05        .byte $05	; <お>
- D - I - 0x02E7F2 21:A7E2: 4A        .byte $4A	; <コ>
- D - I - 0x02E7F3 21:A7E3: 09        .byte $09	; <け>
- D - I - 0x02E7F4 21:A7E4: 4B        .byte $4B	; <サ>
- D - I - 0x02E7F5 21:A7E5: 0D        .byte $0D	; <す>
- D - I - 0x02E7F6 21:A7E6: 4E        .byte $4E	; <セ>
- D - I - 0x02E7F7 21:A7E7: 14        .byte $14	; <と>
- D - I - 0x02E7F8 21:A7E8: 19        .byte $19	; <の>

- D - I - 0x02E7F9 21:A7E9: 18        .byte $18	; <ね>
- D - I - 0x02E7FA 21:A7EA: 04        .byte $04	; <え>
- D - I - 0x02E7FB 21:A7EB: 01        .byte $01	; <あ>
- D - I - 0x02E7FC 21:A7EC: 1A        .byte $1A	; <は>
- D - I - 0x02E7FD 21:A7ED: 09        .byte $09	; <け>
- D - I - 0x02E7FE 21:A7EE: 65        .byte $65	; <ユ>
- D - I - 0x02E7FF 21:A7EF: 0D        .byte $0D	; <す>
- D - I - 0x02E800 21:A7F0: 70        .byte $70	; <ャ>
- D - I - 0x02E801 21:A7F1: 11        .byte $11	; <ち>
- D - I - 0x02E802 21:A7F2: 71        .byte $71	; <ュ>

- D - I - 0x02E803 21:A7F3: 20        .byte $20	; <み>
- D - I - 0x02E804 21:A7F4: 05        .byte $05	; <お>
- D - I - 0x02E805 21:A7F5: 01        .byte $01	; <あ>
- D - I - 0x02E806 21:A7F6: 1C        .byte $1C	; <ふ>
- D - I - 0x02E807 21:A7F7: 05        .byte $05	; <お>
- D - I - 0x02E808 21:A7F8: 1D        .byte $1D	; <へ>
- D - I - 0x02E809 21:A7F9: 09        .byte $09	; <け>
- D - I - 0x02E80A 21:A7FA: 1B        .byte $1B	; <ひ>
- D - I - 0x02E80B 21:A7FB: 0D        .byte $0D	; <す>
- D - I - 0x02E80C 21:A7FC: 72        .byte $72	; <ョ>
- D - I - 0x02E80D 21:A7FD: 11        .byte $11	; <ち>
- D - I - 0x02E80E 21:A7FE: 73        .byte $73	; <ヮ>

- D - I - 0x02E80F 21:A7FF: 10        .byte $10	; <た>
- D - I - 0x02E810 21:A800: 06        .byte $06	; <か>
- D - I - 0x02E811 21:A801: 01        .byte $01	; <あ>
- D - I - 0x02E812 21:A802: 1E        .byte $1E	; <ほ>
- D - I - 0x02E813 21:A803: 05        .byte $05	; <お>
- D - I - 0x02E814 21:A804: 1F        .byte $1F	; <ま>
- D - I - 0x02E815 21:A805: 09        .byte $09	; <け>
- D - I - 0x02E816 21:A806: 35        .byte $35	; <2>

- D - I - 0x02E817 21:A807: 01        .byte $01	; <あ>



off_A808_6B:
- D - I - 0x02E818 21:A808: 20        .byte $20	; <み>
- D - I - 0x02E819 21:A809: 01        .byte $01	; <あ>
- D - I - 0x02E81A 21:A80A: 09        .byte $09	; <け>
- D - I - 0x02E81B 21:A80B: 4F        .byte $4F	; <ソ>
- D - I - 0x02E81C 21:A80C: 0D        .byte $0D	; <す>
- D - I - 0x02E81D 21:A80D: 5A        .byte $5A	; <ハ>
- D - I - 0x02E81E 21:A80E: 11        .byte $11	; <ち>
- D - I - 0x02E81F 21:A80F: 5B        .byte $5B	; <ヒ>
- D - I - 0x02E820 21:A810: 15        .byte $15	; <な>
- D - I - 0x02E821 21:A811: 5E        .byte $5E	; <ホ>
- D - I - 0x02E822 21:A812: 19        .byte $19	; <の>
- D - I - 0x02E823 21:A813: 5F        .byte $5F	; <マ>

- D - I - 0x02E824 21:A814: 20        .byte $20	; <み>
- D - I - 0x02E825 21:A815: 02        .byte $02	; <い>
- D - I - 0x02E826 21:A816: 09        .byte $09	; <け>
- D - I - 0x02E827 21:A817: 65        .byte $65	; <ユ>
- D - I - 0x02E828 21:A818: 0D        .byte $0D	; <す>
- D - I - 0x02E829 21:A819: 70        .byte $70	; <ャ>
- D - I - 0x02E82A 21:A81A: 11        .byte $11	; <ち>
- D - I - 0x02E82B 21:A81B: 71        .byte $71	; <ュ>
- D - I - 0x02E82C 21:A81C: 15        .byte $15	; <な>
- D - I - 0x02E82D 21:A81D: 74        .byte $74	; <ィ>
- D - I - 0x02E82E 21:A81E: 19        .byte $19	; <の>
- D - I - 0x02E82F 21:A81F: 75        .byte $75	; <ェ>

- D - I - 0x02E830 21:A820: 20        .byte $20	; <み>
- D - I - 0x02E831 21:A821: 03        .byte $03	; <う>
- D - I - 0x02E832 21:A822: 09        .byte $09	; <け>
- D - I - 0x02E833 21:A823: 67        .byte $67	; <ラ>
- D - I - 0x02E834 21:A824: 0D        .byte $0D	; <す>
- D - I - 0x02E835 21:A825: 72        .byte $72	; <ョ>
- D - I - 0x02E836 21:A826: 11        .byte $11	; <ち>
- D - I - 0x02E837 21:A827: 73        .byte $73	; <ヮ>
- D - I - 0x02E838 21:A828: 15        .byte $15	; <な>
- D - I - 0x02E839 21:A829: 76        .byte $76	; <ォ>
- D - I - 0x02E83A 21:A82A: 19        .byte $19	; <の>
- D - I - 0x02E83B 21:A82B: 77        .byte $77	; <:>

- D - I - 0x02E83C 21:A82C: 20        .byte $20	; <み>
- D - I - 0x02E83D 21:A82D: 04        .byte $04	; <え>
- D - I - 0x02E83E 21:A82E: 09        .byte $09	; <け>
- D - I - 0x02E83F 21:A82F: 6D        .byte $6D	; <ヲ>
- D - I - 0x02E840 21:A830: 0D        .byte $0D	; <す>
- D - I - 0x02E841 21:A831: 78        .byte $78	; <?>
- D - I - 0x02E842 21:A832: 11        .byte $11	; <ち>
- D - I - 0x02E843 21:A833: 79        .byte $79	; <!>
- D - I - 0x02E844 21:A834: 15        .byte $15	; <な>
- D - I - 0x02E845 21:A835: 7C        .byte $7C	; <~>
- D - I - 0x02E846 21:A836: 19        .byte $19	; <の>
- D - I - 0x02E847 21:A837: 7D        .byte $7D	; <ー>

- D - I - 0x02E848 21:A838: 20        .byte $20	; <み>
- D - I - 0x02E849 21:A839: 05        .byte $05	; <お>
- D - I - 0x02E84A 21:A83A: 09        .byte $09	; <け>
- D - I - 0x02E84B 21:A83B: 6F        .byte $6F	; <ッ>
- D - I - 0x02E84C 21:A83C: 0D        .byte $0D	; <す>
- D - I - 0x02E84D 21:A83D: 7A        .byte $7A	; <、>
- D - I - 0x02E84E 21:A83E: 11        .byte $11	; <ち>
- D - I - 0x02E84F 21:A83F: 7B        .byte $7B	; <。>
- D - I - 0x02E850 21:A840: 15        .byte $15	; <な>
- D - I - 0x02E851 21:A841: 7E        .byte $7E	; <.>
- D - I - 0x02E852 21:A842: 19        .byte $19	; <の>
- D - I - 0x02E853 21:A843: 7F        .byte $7F	; <,>

- D - I - 0x02E854 21:A844: 01        .byte $01	; <あ>



off_A845_6C:
- D - I - 0x02E855 21:A845: 10        .byte $10	; <た>
- D - I - 0x02E856 21:A846: 02        .byte $02	; <い>
- D - I - 0x02E857 21:A847: 08        .byte $08	; <く>
- D - I - 0x02E858 21:A848: 42        .byte $42	; <イ>
- D - I - 0x02E859 21:A849: 0C        .byte $0C	; <し>
- D - I - 0x02E85A 21:A84A: 43        .byte $43	; <ウ>
- D - I - 0x02E85B 21:A84B: 10        .byte $10	; <た>
- D - I - 0x02E85C 21:A84C: 41        .byte $41	; <ア>

- D - I - 0x02E85D 21:A84D: 10        .byte $10	; <た>
- D - I - 0x02E85E 21:A84E: 03        .byte $03	; <う>
- D - I - 0x02E85F 21:A84F: 40        .byte $40	; <「>
- D - I - 0x02E860 21:A850: 44        .byte $44	; <エ>
- D - I - 0x02E861 21:A851: 44        .byte $44	; <エ>
- D - I - 0x02E862 21:A852: 45        .byte $45	; <オ>
- D - I - 0x02E863 21:A853: 11        .byte $11	; <ち>
- D - I - 0x02E864 21:A854: 50        .byte $50	; <タ>

- D - I - 0x02E865 21:A855: 10        .byte $10	; <た>
- D - I - 0x02E866 21:A856: 04        .byte $04	; <え>
- D - I - 0x02E867 21:A857: 0D        .byte $0D	; <す>
- D - I - 0x02E868 21:A858: 47        .byte $47	; <キ>
- D - I - 0x02E869 21:A859: 10        .byte $10	; <た>
- D - I - 0x02E86A 21:A85A: 46        .byte $46	; <カ>
- D - I - 0x02E86B 21:A85B: 11        .byte $11	; <ち>
- D - I - 0x02E86C 21:A85C: 52        .byte $52	; <ツ>

- D - I - 0x02E86D 21:A85D: 08        .byte $08	; <く>
- D - I - 0x02E86E 21:A85E: 05        .byte $05	; <お>
- D - I - 0x02E86F 21:A85F: 0D        .byte $0D	; <す>
- D - I - 0x02E870 21:A860: 51        .byte $51	; <チ>
- D - I - 0x02E871 21:A861: 11        .byte $11	; <ち>
- D - I - 0x02E872 21:A862: 54        .byte $54	; <ト>

- D - I - 0x02E873 21:A863: 08        .byte $08	; <く>
- D - I - 0x02E874 21:A864: 06        .byte $06	; <か>
- D - I - 0x02E875 21:A865: 0D        .byte $0D	; <す>
- D - I - 0x02E876 21:A866: 53        .byte $53	; <テ>
- D - I - 0x02E877 21:A867: 11        .byte $11	; <ち>
- D - I - 0x02E878 21:A868: 56        .byte $56	; <ニ>

- D - I - 0x02E879 21:A869: 01        .byte $01	; <あ>



off_A86A_6D:
- D - I - 0x02E87A 21:A86A: 08        .byte $08	; <く>
- D - I - 0x02E87B 21:A86B: 01        .byte $01	; <あ>
- D - I - 0x02E87C 21:A86C: 09        .byte $09	; <け>
- D - I - 0x02E87D 21:A86D: 4A        .byte $4A	; <コ>
- D - I - 0x02E87E 21:A86E: 0D        .byte $0D	; <す>
- D - I - 0x02E87F 21:A86F: 4B        .byte $4B	; <サ>

- D - I - 0x02E880 21:A870: 10        .byte $10	; <た>
- D - I - 0x02E881 21:A871: 02        .byte $02	; <い>
- D - I - 0x02E882 21:A872: 09        .byte $09	; <け>
- D - I - 0x02E883 21:A873: 60        .byte $60	; <ミ>
- D - I - 0x02E884 21:A874: 0D        .byte $0D	; <す>
- D - I - 0x02E885 21:A875: 61        .byte $61	; <ム>
- D - I - 0x02E886 21:A876: 11        .byte $11	; <ち>
- D - I - 0x02E887 21:A877: 64        .byte $64	; <ヤ>

- D - I - 0x02E888 21:A878: 20        .byte $20	; <み>
- D - I - 0x02E889 21:A879: 03        .byte $03	; <う>
- D - I - 0x02E88A 21:A87A: 09        .byte $09	; <け>
- D - I - 0x02E88B 21:A87B: 62        .byte $62	; <メ>
- D - I - 0x02E88C 21:A87C: 0D        .byte $0D	; <す>
- D - I - 0x02E88D 21:A87D: 63        .byte $63	; <モ>
- D - I - 0x02E88E 21:A87E: 11        .byte $11	; <ち>
- D - I - 0x02E88F 21:A87F: 66        .byte $66	; <ヨ>
- D - I - 0x02E890 21:A880: 15        .byte $15	; <な>
- D - I - 0x02E891 21:A881: 4D        .byte $4D	; <ス>
- D - I - 0x02E892 21:A882: 19        .byte $19	; <の>
- D - I - 0x02E893 21:A883: 58        .byte $58	; <ネ>

- D - I - 0x02E894 21:A884: 20        .byte $20	; <み>
- D - I - 0x02E895 21:A885: 04        .byte $04	; <え>
- D - I - 0x02E896 21:A886: 09        .byte $09	; <け>
- D - I - 0x02E897 21:A887: 68        .byte $68	; <リ>
- D - I - 0x02E898 21:A888: 0D        .byte $0D	; <す>
- D - I - 0x02E899 21:A889: 69        .byte $69	; <ル>
- D - I - 0x02E89A 21:A88A: 11        .byte $11	; <ち>
- D - I - 0x02E89B 21:A88B: 6C        .byte $6C	; <ワ>
- D - I - 0x02E89C 21:A88C: 15        .byte $15	; <な>
- D - I - 0x02E89D 21:A88D: 4C        .byte $4C	; <シ>
- D - I - 0x02E89E 21:A88E: 19        .byte $19	; <の>
- D - I - 0x02E89F 21:A88F: 59        .byte $59	; <ノ>

- D - I - 0x02E8A0 21:A890: 20        .byte $20	; <み>
- D - I - 0x02E8A1 21:A891: 05        .byte $05	; <お>
- D - I - 0x02E8A2 21:A892: 09        .byte $09	; <け>
- D - I - 0x02E8A3 21:A893: 6A        .byte $6A	; <レ>
- D - I - 0x02E8A4 21:A894: 0D        .byte $0D	; <す>
- D - I - 0x02E8A5 21:A895: 6B        .byte $6B	; <ロ>
- D - I - 0x02E8A6 21:A896: 11        .byte $11	; <ち>
- D - I - 0x02E8A7 21:A897: 6E        .byte $6E	; <ン>
- D - I - 0x02E8A8 21:A898: 15        .byte $15	; <な>
- D - I - 0x02E8A9 21:A899: 4E        .byte $4E	; <セ>
- D - I - 0x02E8AA 21:A89A: 19        .byte $19	; <の>
- D - I - 0x02E8AB 21:A89B: 5C        .byte $5C	; <フ>

- D - I - 0x02E8AC 21:A89C: 01        .byte $01	; <あ>



off_A89D_6E:
- D - I - 0x02E8AD 21:A89D: 08        .byte $08	; <く>
- D - I - 0x02E8AE 21:A89E: 01        .byte $01	; <あ>
- D - I - 0x02E8AF 21:A89F: 10        .byte $10	; <た>
- D - I - 0x02E8B0 21:A8A0: 55        .byte $55	; <ナ>
- D - I - 0x02E8B1 21:A8A1: 14        .byte $14	; <と>
- D - I - 0x02E8B2 21:A8A2: 48        .byte $48	; <ク>

- D - I - 0x02E8B3 21:A8A3: 08        .byte $08	; <く>
- D - I - 0x02E8B4 21:A8A4: 02        .byte $02	; <い>
- D - I - 0x02E8B5 21:A8A5: 10        .byte $10	; <た>
- D - I - 0x02E8B6 21:A8A6: 57        .byte $57	; <ヌ>
- D - I - 0x02E8B7 21:A8A7: 14        .byte $14	; <と>
- D - I - 0x02E8B8 21:A8A8: 49        .byte $49	; <ケ>

- D - I - 0x02E8B9 21:A8A9: 00        .byte $00
- D - I - 0x02E8BA 21:A8AA: 03        .byte $03	; <う>
- D - I - 0x02E8BB 21:A8AB: 14        .byte $14	; <と>
- D - I - 0x02E8BC 21:A8AC: 40        .byte $40	; <「>

- D - I - 0x02E8BD 21:A8AD: 08        .byte $08	; <く>
- D - I - 0x02E8BE 21:A8AE: 06        .byte $06	; <か>
- D - I - 0x02E8BF 21:A8AF: 11        .byte $11	; <ち>
- D - I - 0x02E8C0 21:A8B0: 53        .byte $53	; <テ>
- D - I - 0x02E8C1 21:A8B1: 15        .byte $15	; <な>
- D - I - 0x02E8C2 21:A8B2: 56        .byte $56	; <ニ>

- D - I - 0x02E8C3 21:A8B3: 01        .byte $01	; <あ>



off_A8B4_6F:
- D - I - 0x02E8C4 21:A8B4: 00        .byte $00
- D - I - 0x02E8C5 21:A8B5: 03        .byte $03	; <う>
- D - I - 0x02E8C6 21:A8B6: 11        .byte $11	; <ち>
- D - I - 0x02E8C7 21:A8B7: 58        .byte $58	; <ネ>

- D - I - 0x02E8C8 21:A8B8: 00        .byte $00
- D - I - 0x02E8C9 21:A8B9: 04        .byte $04	; <え>
- D - I - 0x02E8CA 21:A8BA: 11        .byte $11	; <ち>
- D - I - 0x02E8CB 21:A8BB: 59        .byte $59	; <ノ>

- D - I - 0x02E8CC 21:A8BC: 00        .byte $00
- D - I - 0x02E8CD 21:A8BD: 05        .byte $05	; <お>
- D - I - 0x02E8CE 21:A8BE: 11        .byte $11	; <ち>
- D - I - 0x02E8CF 21:A8BF: 5C        .byte $5C	; <フ>

- D - I - 0x02E8D0 21:A8C0: 01        .byte $01	; <あ>



off_A8C1_70:
- D - I - 0x02E8D1 21:A8C1: 03        .byte $03	; <う>
- D - I - 0x02E8D2 21:A8C2: DA A8     .word off_A8DA
- D - I - 0x02E8D4 21:A8C4: 05 A9     .word off_A905
- D - I - 0x02E8D6 21:A8C6: 18 A9     .word off_A918
- D - I - 0x02E8D8 21:A8C8: DA A8     .word off_A8DA
- D - I - 0x02E8DA 21:A8CA: 27 A9     .word off_A927
- D - I - 0x02E8DC 21:A8CC: 36 A9     .word off_A936
- D - I - 0x02E8DE 21:A8CE: 36 A9     .word off_A936
- D - I - 0x02E8E0 21:A8D0: 45 A9     .word off_A945
- D - I - 0x02E8E2 21:A8D2: 18 A9     .word off_A918
- D - I - 0x02E8E4 21:A8D4: 60 A9     .word off_A960
- D - I - 0x02E8E6 21:A8D6: 36 A9     .word off_A936
- D - I - 0x02E8E8 21:A8D8: 18 A9     .word off_A918



off_A8DA:
- D - I - 0x02E8EA 21:A8DA: 08        .byte $08	; <く>
- D - I - 0x02E8EB 21:A8DB: 02        .byte $02	; <い>
- D - I - 0x02E8EC 21:A8DC: 0C        .byte $0C	; <し>
- D - I - 0x02E8ED 21:A8DD: 90        .byte $90	; <U>
- D - I - 0x02E8EE 21:A8DE: 10        .byte $10	; <た>
- D - I - 0x02E8EF 21:A8DF: 91        .byte $91	; <V>

- D - I - 0x02E8F0 21:A8E0: 08        .byte $08	; <く>
- D - I - 0x02E8F1 21:A8E1: 03        .byte $03	; <う>
- D - I - 0x02E8F2 21:A8E2: 0C        .byte $0C	; <し>
- D - I - 0x02E8F3 21:A8E3: 92        .byte $92	; <W>
- D - I - 0x02E8F4 21:A8E4: 10        .byte $10	; <た>
- D - I - 0x02E8F5 21:A8E5: 93        .byte $93	; <Y>

off_A8E6:
- D - I - 0x02E8F6 21:A8E6: 08        .byte $08	; <く>
- D - I - 0x02E8F7 21:A8E7: 02        .byte $02	; <い>
- D - I - 0x02E8F8 21:A8E8: 11        .byte $11	; <ち>
- D - I - 0x02E8F9 21:A8E9: 88        .byte $88	; <H>
- D - I - 0x02E8FA 21:A8EA: 15        .byte $15	; <な>
- D - I - 0x02E8FB 21:A8EB: 89        .byte $89	; <I>

- D - I - 0x02E8FC 21:A8EC: 08        .byte $08	; <く>
- D - I - 0x02E8FD 21:A8ED: 03        .byte $03	; <う>
- D - I - 0x02E8FE 21:A8EE: 0D        .byte $0D	; <す>
- D - I - 0x02E8FF 21:A8EF: 8A        .byte $8A	; <N>
- D - I - 0x02E900 21:A8F0: 11        .byte $11	; <ち>
- D - I - 0x02E901 21:A8F1: 8B        .byte $8B	; <K>

off_A8F2:
- D - I - 0x02E902 21:A8F2: 00        .byte $00
- D - I - 0x02E903 21:A8F3: 01        .byte $01	; <あ>
- D - I - 0x02E904 21:A8F4: 14        .byte $14	; <と>
- D - I - 0x02E905 21:A8F5: 82        .byte $82	; <B>

- D - I - 0x02E906 21:A8F6: 08        .byte $08	; <く>
- D - I - 0x02E907 21:A8F7: 04        .byte $04	; <え>
- D - I - 0x02E908 21:A8F8: 5F        .byte $5F	; <マ>
- D - I - 0x02E909 21:A8F9: A0        .byte $A0	; <が>
- D - I - 0x02E90A 21:A8FA: 62        .byte $62	; <メ>
- D - I - 0x02E90B 21:A8FB: A1        .byte $A1	; <ぎ>

- D - I - 0x02E90C 21:A8FC: 00        .byte $00
- D - I - 0x02E90D 21:A8FD: 05        .byte $05	; <お>
- D - I - 0x02E90E 21:A8FE: 45        .byte $45	; <オ>
- D - I - 0x02E90F 21:A8FF: A2        .byte $A2	; <ぐ>

- D - I - 0x02E910 21:A900: 00        .byte $00
- D - I - 0x02E911 21:A901: 06        .byte $06	; <か>
- D - I - 0x02E912 21:A902: 0D        .byte $0D	; <す>
- D - I - 0x02E913 21:A903: A3        .byte $A3	; <げ>

- D - I - 0x02E914 21:A904: 01        .byte $01	; <あ>



off_A905:
- D - I - 0x02E915 21:A905: 00        .byte $00
- D - I - 0x02E916 21:A906: 01        .byte $01	; <あ>
- D - I - 0x02E917 21:A907: 10        .byte $10	; <た>
- D - I - 0x02E918 21:A908: 87        .byte $87	; <G>

- D - I - 0x02E919 21:A909: 08        .byte $08	; <く>
- D - I - 0x02E91A 21:A90A: 02        .byte $02	; <い>
- D - I - 0x02E91B 21:A90B: 0C        .byte $0C	; <し>
- D - I - 0x02E91C 21:A90C: 8C        .byte $8C	; <M>
- D - I - 0x02E91D 21:A90D: 10        .byte $10	; <た>
- D - I - 0x02E91E 21:A90E: 8D        .byte $8D	; <P>

- D - I - 0x02E91F 21:A90F: 08        .byte $08	; <く>
- D - I - 0x02E920 21:A910: 03        .byte $03	; <う>
- D - I - 0x02E921 21:A911: 0C        .byte $0C	; <し>
- D - I - 0x02E922 21:A912: 92        .byte $92	; <W>
- D - I - 0x02E923 21:A913: 10        .byte $10	; <た>
- D - I - 0x02E924 21:A914: 8F        .byte $8F	; <S>

- D - I - 0x02E925 21:A915: 02        .byte $02	; <い>
- D - I - 0x02E926 21:A916: E6 A8     .word off_A8E6



off_A918:
- D - I - 0x02E928 21:A918: 08        .byte $08	; <く>
- D - I - 0x02E929 21:A919: 02        .byte $02	; <い>
- D - I - 0x02E92A 21:A91A: 0C        .byte $0C	; <し>
- D - I - 0x02E92B 21:A91B: A5        .byte $A5	; <ざ>
- D - I - 0x02E92C 21:A91C: 10        .byte $10	; <た>
- D - I - 0x02E92D 21:A91D: 8E        .byte $8E	; <L>

- D - I - 0x02E92E 21:A91E: 08        .byte $08	; <く>
- D - I - 0x02E92F 21:A91F: 03        .byte $03	; <う>
- D - I - 0x02E930 21:A920: 0C        .byte $0C	; <し>
- D - I - 0x02E931 21:A921: 92        .byte $92	; <W>
- D - I - 0x02E932 21:A922: 10        .byte $10	; <た>
- D - I - 0x02E933 21:A923: A4        .byte $A4	; <ご>

- D - I - 0x02E934 21:A924: 02        .byte $02	; <い>
- D - I - 0x02E935 21:A925: E6 A8     .word off_A8E6



off_A927:
- D - I - 0x02E937 21:A927: 08        .byte $08	; <く>
- D - I - 0x02E938 21:A928: 02        .byte $02	; <い>
- D - I - 0x02E939 21:A929: 0C        .byte $0C	; <し>
- D - I - 0x02E93A 21:A92A: 94        .byte $94
- D - I - 0x02E93B 21:A92B: 10        .byte $10	; <た>
- D - I - 0x02E93C 21:A92C: 95        .byte $95

- D - I - 0x02E93D 21:A92D: 08        .byte $08	; <く>
- D - I - 0x02E93E 21:A92E: 03        .byte $03	; <う>
- D - I - 0x02E93F 21:A92F: 0C        .byte $0C	; <し>
- D - I - 0x02E940 21:A930: 96        .byte $96
- D - I - 0x02E941 21:A931: 10        .byte $10	; <た>
- D - I - 0x02E942 21:A932: 97        .byte $97

- D - I - 0x02E943 21:A933: 02        .byte $02	; <い>
- D - I - 0x02E944 21:A934: E6 A8     .word off_A8E6



off_A936:
- D - I - 0x02E946 21:A936: 08        .byte $08	; <く>
- D - I - 0x02E947 21:A937: 02        .byte $02	; <い>
- D - I - 0x02E948 21:A938: 0C        .byte $0C	; <し>
- D - I - 0x02E949 21:A939: 98        .byte $98
- D - I - 0x02E94A 21:A93A: 10        .byte $10	; <た>
- D - I - 0x02E94B 21:A93B: 8E        .byte $8E	; <L>

- D - I - 0x02E94C 21:A93C: 08        .byte $08	; <く>
- D - I - 0x02E94D 21:A93D: 03        .byte $03	; <う>
- D - I - 0x02E94E 21:A93E: 0C        .byte $0C	; <し>
- D - I - 0x02E94F 21:A93F: 9A        .byte $9A
- D - I - 0x02E950 21:A940: 10        .byte $10	; <た>
- D - I - 0x02E951 21:A941: 9B        .byte $9B

- D - I - 0x02E952 21:A942: 02        .byte $02	; <い>
- D - I - 0x02E953 21:A943: E6 A8     .word off_A8E6



off_A945:
- D - I - 0x02E955 21:A945: 08        .byte $08	; <く>
- D - I - 0x02E956 21:A946: 02        .byte $02	; <い>
- D - I - 0x02E957 21:A947: 0C        .byte $0C	; <し>
- D - I - 0x02E958 21:A948: 90        .byte $90	; <U>
- D - I - 0x02E959 21:A949: 10        .byte $10	; <た>
- D - I - 0x02E95A 21:A94A: 91        .byte $91	; <V>

- D - I - 0x02E95B 21:A94B: 08        .byte $08	; <く>
- D - I - 0x02E95C 21:A94C: 03        .byte $03	; <う>
- D - I - 0x02E95D 21:A94D: 0C        .byte $0C	; <し>
- D - I - 0x02E95E 21:A94E: 92        .byte $92	; <W>
- D - I - 0x02E95F 21:A94F: 10        .byte $10	; <た>
- D - I - 0x02E960 21:A950: 93        .byte $93	; <Y>

- D - I - 0x02E961 21:A951: 08        .byte $08	; <く>
- D - I - 0x02E962 21:A952: 02        .byte $02	; <い>
- D - I - 0x02E963 21:A953: 11        .byte $11	; <ち>
- D - I - 0x02E964 21:A954: 84        .byte $84	; <D>
- D - I - 0x02E965 21:A955: 15        .byte $15	; <な>
- D - I - 0x02E966 21:A956: 85        .byte $85	; <E>

- D - I - 0x02E967 21:A957: 08        .byte $08	; <く>
- D - I - 0x02E968 21:A958: 03        .byte $03	; <う>
- D - I - 0x02E969 21:A959: 0D        .byte $0D	; <す>
- D - I - 0x02E96A 21:A95A: 83        .byte $83	; <C>
- D - I - 0x02E96B 21:A95B: 11        .byte $11	; <ち>
- D - I - 0x02E96C 21:A95C: 86        .byte $86	; <F>

- D - I - 0x02E96D 21:A95D: 02        .byte $02	; <い>
- D - I - 0x02E96E 21:A95E: F2 A8     .word off_A8F2



off_A960:
- D - I - 0x02E970 21:A960: 08        .byte $08	; <く>
- D - I - 0x02E971 21:A961: 02        .byte $02	; <い>
- D - I - 0x02E972 21:A962: 0C        .byte $0C	; <し>
- D - I - 0x02E973 21:A963: 94        .byte $94
- D - I - 0x02E974 21:A964: 10        .byte $10	; <た>
- D - I - 0x02E975 21:A965: 99        .byte $99

- D - I - 0x02E976 21:A966: 08        .byte $08	; <く>
- D - I - 0x02E977 21:A967: 03        .byte $03	; <う>
- D - I - 0x02E978 21:A968: 0C        .byte $0C	; <し>
- D - I - 0x02E979 21:A969: 96        .byte $96
- D - I - 0x02E97A 21:A96A: 10        .byte $10	; <た>
- D - I - 0x02E97B 21:A96B: 9C        .byte $9C

- D - I - 0x02E97C 21:A96C: 02        .byte $02	; <い>
- D - I - 0x02E97D 21:A96D: E6 A8     .word off_A8E6



off_A96F_71:
- D - I - 0x02E97F 21:A96F: 10        .byte $10	; <た>
- D - I - 0x02E980 21:A970: 01        .byte $01	; <あ>
- D - I - 0x02E981 21:A971: 0B        .byte $0B	; <さ>
- D - I - 0x02E982 21:A972: 02        .byte $02	; <い>
- D - I - 0x02E983 21:A973: 0F        .byte $0F	; <そ>
- D - I - 0x02E984 21:A974: 03        .byte $03	; <う>
- D - I - 0x02E985 21:A975: 13        .byte $13	; <て>
- D - I - 0x02E986 21:A976: 06        .byte $06	; <か>

- D - I - 0x02E987 21:A977: 20        .byte $20	; <み>
- D - I - 0x02E988 21:A978: 02        .byte $02	; <い>
- D - I - 0x02E989 21:A979: 07        .byte $07	; <き>
- D - I - 0x02E98A 21:A97A: 08        .byte $08	; <く>
- D - I - 0x02E98B 21:A97B: 0B        .byte $0B	; <さ>
- D - I - 0x02E98C 21:A97C: 09        .byte $09	; <け>
- D - I - 0x02E98D 21:A97D: 0F        .byte $0F	; <そ>
- D - I - 0x02E98E 21:A97E: 0C        .byte $0C	; <し>
- D - I - 0x02E98F 21:A97F: 13        .byte $13	; <て>
- D - I - 0x02E990 21:A980: 0D        .byte $0D	; <す>
- D - I - 0x02E991 21:A981: 17        .byte $17	; <ぬ>
- D - I - 0x02E992 21:A982: 18        .byte $18	; <ね>

- D - I - 0x02E993 21:A983: 28        .byte $28	; <り>
- D - I - 0x02E994 21:A984: 03        .byte $03	; <う>
- D - I - 0x02E995 21:A985: 07        .byte $07	; <き>
- D - I - 0x02E996 21:A986: 20        .byte $20	; <み>
- D - I - 0x02E997 21:A987: 0B        .byte $0B	; <さ>
- D - I - 0x02E998 21:A988: 0A        .byte $0A	; <こ>
- D - I - 0x02E999 21:A989: 0F        .byte $0F	; <そ>
- D - I - 0x02E99A 21:A98A: 0B        .byte $0B	; <さ>
- D - I - 0x02E99B 21:A98B: 13        .byte $13	; <て>
- D - I - 0x02E99C 21:A98C: 0E        .byte $0E	; <せ>
- D - I - 0x02E99D 21:A98D: 17        .byte $17	; <ぬ>
- D - I - 0x02E99E 21:A98E: 0F        .byte $0F	; <そ>
- D - I - 0x02E99F 21:A98F: 1B        .byte $1B	; <ひ>
- D - I - 0x02E9A0 21:A990: 1A        .byte $1A	; <は>

- D - I - 0x02E9A1 21:A991: 28        .byte $28	; <り>
- D - I - 0x02E9A2 21:A992: 04        .byte $04	; <え>
- D - I - 0x02E9A3 21:A993: 07        .byte $07	; <き>
- D - I - 0x02E9A4 21:A994: 21        .byte $21	; <む>
- D - I - 0x02E9A5 21:A995: 0B        .byte $0B	; <さ>
- D - I - 0x02E9A6 21:A996: 24        .byte $24	; <や>
- D - I - 0x02E9A7 21:A997: 0F        .byte $0F	; <そ>
- D - I - 0x02E9A8 21:A998: 25        .byte $25	; <ゆ>
- D - I - 0x02E9A9 21:A999: 13        .byte $13	; <て>
- D - I - 0x02E9AA 21:A99A: 30        .byte $30	; <ゃ>
- D - I - 0x02E9AB 21:A99B: 17        .byte $17	; <ぬ>
- D - I - 0x02E9AC 21:A99C: 31        .byte $31	; <ゅ>
- D - I - 0x02E9AD 21:A99D: 1B        .byte $1B	; <ひ>
- D - I - 0x02E9AE 21:A99E: 34        .byte $34	; <1>

- D - I - 0x02E9AF 21:A99F: 20        .byte $20	; <み>
- D - I - 0x02E9B0 21:A9A0: 05        .byte $05	; <お>
- D - I - 0x02E9B1 21:A9A1: 0B        .byte $0B	; <さ>
- D - I - 0x02E9B2 21:A9A2: 26        .byte $26	; <よ>
- D - I - 0x02E9B3 21:A9A3: 0F        .byte $0F	; <そ>
- D - I - 0x02E9B4 21:A9A4: 27        .byte $27	; <ら>
- D - I - 0x02E9B5 21:A9A5: 13        .byte $13	; <て>
- D - I - 0x02E9B6 21:A9A6: 32        .byte $32	; <ょ>
- D - I - 0x02E9B7 21:A9A7: 17        .byte $17	; <ぬ>
- D - I - 0x02E9B8 21:A9A8: 33        .byte $33	; <0>
- D - I - 0x02E9B9 21:A9A9: 1B        .byte $1B	; <ひ>
- D - I - 0x02E9BA 21:A9AA: 36        .byte $36	; <3>

- D - I - 0x02E9BB 21:A9AB: 08        .byte $08	; <く>
- D - I - 0x02E9BC 21:A9AC: 06        .byte $06	; <か>
- D - I - 0x02E9BD 21:A9AD: 13        .byte $13	; <て>
- D - I - 0x02E9BE 21:A9AE: 22        .byte $22	; <め>
- D - I - 0x02E9BF 21:A9AF: 17        .byte $17	; <ぬ>
- D - I - 0x02E9C0 21:A9B0: 23        .byte $23	; <も>

- D - I - 0x02E9C1 21:A9B1: 01        .byte $01	; <あ>



off_A9B2_72:
- D - I - 0x02E9C2 21:A9B2: 18        .byte $18	; <ね>
- D - I - 0x02E9C3 21:A9B3: 02        .byte $02	; <い>
- D - I - 0x02E9C4 21:A9B4: 07        .byte $07	; <き>
- D - I - 0x02E9C5 21:A9B5: 04        .byte $04	; <え>
- D - I - 0x02E9C6 21:A9B6: 0B        .byte $0B	; <さ>
- D - I - 0x02E9C7 21:A9B7: 05        .byte $05	; <お>
- D - I - 0x02E9C8 21:A9B8: 0F        .byte $0F	; <そ>
- D - I - 0x02E9C9 21:A9B9: 10        .byte $10	; <た>
- D - I - 0x02E9CA 21:A9BA: 13        .byte $13	; <て>
- D - I - 0x02E9CB 21:A9BB: 11        .byte $11	; <ち>

- D - I - 0x02E9CC 21:A9BC: 20        .byte $20	; <み>
- D - I - 0x02E9CD 21:A9BD: 03        .byte $03	; <う>
- D - I - 0x02E9CE 21:A9BE: 07        .byte $07	; <き>
- D - I - 0x02E9CF 21:A9BF: 07        .byte $07	; <き>
- D - I - 0x02E9D0 21:A9C0: 0B        .byte $0B	; <さ>
- D - I - 0x02E9D1 21:A9C1: 12        .byte $12	; <つ>
- D - I - 0x02E9D2 21:A9C2: 0F        .byte $0F	; <そ>
- D - I - 0x02E9D3 21:A9C3: 13        .byte $13	; <て>
- D - I - 0x02E9D4 21:A9C4: 13        .byte $13	; <て>
- D - I - 0x02E9D5 21:A9C5: 16        .byte $16	; <に>
- D - I - 0x02E9D6 21:A9C6: 17        .byte $17	; <ぬ>
- D - I - 0x02E9D7 21:A9C7: 17        .byte $17	; <ぬ>

- D - I - 0x02E9D8 21:A9C8: 20        .byte $20	; <み>
- D - I - 0x02E9D9 21:A9C9: 04        .byte $04	; <え>
- D - I - 0x02E9DA 21:A9CA: 0B        .byte $0B	; <さ>
- D - I - 0x02E9DB 21:A9CB: 19        .byte $19	; <の>
- D - I - 0x02E9DC 21:A9CC: 0F        .byte $0F	; <そ>
- D - I - 0x02E9DD 21:A9CD: 1C        .byte $1C	; <ふ>
- D - I - 0x02E9DE 21:A9CE: 13        .byte $13	; <て>
- D - I - 0x02E9DF 21:A9CF: 1D        .byte $1D	; <へ>
- D - I - 0x02E9E0 21:A9D0: 17        .byte $17	; <ぬ>
- D - I - 0x02E9E1 21:A9D1: 48        .byte $48	; <ク>
- D - I - 0x02E9E2 21:A9D2: 1B        .byte $1B	; <ひ>
- D - I - 0x02E9E3 21:A9D3: 49        .byte $49	; <ケ>

- D - I - 0x02E9E4 21:A9D4: 20        .byte $20	; <み>
- D - I - 0x02E9E5 21:A9D5: 05        .byte $05	; <お>
- D - I - 0x02E9E6 21:A9D6: 0B        .byte $0B	; <さ>
- D - I - 0x02E9E7 21:A9D7: 1B        .byte $1B	; <ひ>
- D - I - 0x02E9E8 21:A9D8: 0F        .byte $0F	; <そ>
- D - I - 0x02E9E9 21:A9D9: 1E        .byte $1E	; <ほ>
- D - I - 0x02E9EA 21:A9DA: 13        .byte $13	; <て>
- D - I - 0x02E9EB 21:A9DB: 1F        .byte $1F	; <ま>
- D - I - 0x02E9EC 21:A9DC: 17        .byte $17	; <ぬ>
- D - I - 0x02E9ED 21:A9DD: 4A        .byte $4A	; <コ>
- D - I - 0x02E9EE 21:A9DE: 1B        .byte $1B	; <ひ>
- D - I - 0x02E9EF 21:A9DF: 4B        .byte $4B	; <サ>

- D - I - 0x02E9F0 21:A9E0: 01        .byte $01	; <あ>



off_A9E1_73:
- D - I - 0x02E9F1 21:A9E1: 10        .byte $10	; <た>
- D - I - 0x02E9F2 21:A9E2: 02        .byte $02	; <い>
- D - I - 0x02E9F3 21:A9E3: 0B        .byte $0B	; <さ>
- D - I - 0x02E9F4 21:A9E4: 35        .byte $35	; <2>
- D - I - 0x02E9F5 21:A9E5: 0F        .byte $0F	; <そ>
- D - I - 0x02E9F6 21:A9E6: 60        .byte $60	; <ミ>
- D - I - 0x02E9F7 21:A9E7: 13        .byte $13	; <て>
- D - I - 0x02E9F8 21:A9E8: 61        .byte $61	; <ム>

- D - I - 0x02E9F9 21:A9E9: 18        .byte $18	; <ね>
- D - I - 0x02E9FA 21:A9EA: 03        .byte $03	; <う>
- D - I - 0x02E9FB 21:A9EB: 0B        .byte $0B	; <さ>
- D - I - 0x02E9FC 21:A9EC: 37        .byte $37	; <4>
- D - I - 0x02E9FD 21:A9ED: 0F        .byte $0F	; <そ>
- D - I - 0x02E9FE 21:A9EE: 62        .byte $62	; <メ>
- D - I - 0x02E9FF 21:A9EF: 13        .byte $13	; <て>
- D - I - 0x02EA00 21:A9F0: 63        .byte $63	; <モ>
- D - I - 0x02EA01 21:A9F1: 17        .byte $17	; <ぬ>
- D - I - 0x02EA02 21:A9F2: 66        .byte $66	; <ヨ>

- D - I - 0x02EA03 21:A9F3: 18        .byte $18	; <ね>
- D - I - 0x02EA04 21:A9F4: 04        .byte $04	; <え>
- D - I - 0x02EA05 21:A9F5: 0B        .byte $0B	; <さ>
- D - I - 0x02EA06 21:A9F6: 3D        .byte $3D	; <+>
- D - I - 0x02EA07 21:A9F7: 0F        .byte $0F	; <そ>
- D - I - 0x02EA08 21:A9F8: 68        .byte $68	; <リ>
- D - I - 0x02EA09 21:A9F9: 13        .byte $13	; <て>
- D - I - 0x02EA0A 21:A9FA: 69        .byte $69	; <ル>
- D - I - 0x02EA0B 21:A9FB: 17        .byte $17	; <ぬ>
- D - I - 0x02EA0C 21:A9FC: 6C        .byte $6C	; <ワ>

- D - I - 0x02EA0D 21:A9FD: 10        .byte $10	; <た>
- D - I - 0x02EA0E 21:A9FE: 05        .byte $05	; <お>
- D - I - 0x02EA0F 21:A9FF: 0F        .byte $0F	; <そ>
- D - I - 0x02EA10 21:AA00: 6A        .byte $6A	; <レ>
- D - I - 0x02EA11 21:AA01: 13        .byte $13	; <て>
- D - I - 0x02EA12 21:AA02: 6B        .byte $6B	; <ロ>
- D - I - 0x02EA13 21:AA03: 17        .byte $17	; <ぬ>
- D - I - 0x02EA14 21:AA04: 6E        .byte $6E	; <ン>

- D - I - 0x02EA15 21:AA05: 01        .byte $01	; <あ>



off_AA06_74:
- D - I - 0x02EA16 21:AA06: 10        .byte $10	; <た>
- D - I - 0x02EA17 21:AA07: 18        .byte $18	; <ね>
- D - I - 0x02EA18 21:AA08: 0B        .byte $0B	; <さ>
- D - I - 0x02EA19 21:AA09: 14        .byte $14	; <と>
- D - I - 0x02EA1A 21:AA0A: 0F        .byte $0F	; <そ>
- D - I - 0x02EA1B 21:AA0B: 15        .byte $15	; <な>
- D - I - 0x02EA1C 21:AA0C: 13        .byte $13	; <て>
- D - I - 0x02EA1D 21:AA0D: 40        .byte $40	; <「>

- D - I - 0x02EA1E 21:AA0E: 18        .byte $18	; <ね>
- D - I - 0x02EA1F 21:AA0F: 19        .byte $19	; <の>
- D - I - 0x02EA20 21:AA10: 0B        .byte $0B	; <さ>
- D - I - 0x02EA21 21:AA11: 42        .byte $42	; <イ>
- D - I - 0x02EA22 21:AA12: 0F        .byte $0F	; <そ>
- D - I - 0x02EA23 21:AA13: 43        .byte $43	; <ウ>
- D - I - 0x02EA24 21:AA14: 13        .byte $13	; <て>
- D - I - 0x02EA25 21:AA15: 46        .byte $46	; <カ>
- D - I - 0x02EA26 21:AA16: 17        .byte $17	; <ぬ>
- D - I - 0x02EA27 21:AA17: 47        .byte $47	; <キ>

- D - I - 0x02EA28 21:AA18: 18        .byte $18	; <ね>
- D - I - 0x02EA29 21:AA19: 1A        .byte $1A	; <は>
- D - I - 0x02EA2A 21:AA1A: 0B        .byte $0B	; <さ>
- D - I - 0x02EA2B 21:AA1B: 4C        .byte $4C	; <シ>
- D - I - 0x02EA2C 21:AA1C: 0F        .byte $0F	; <そ>
- D - I - 0x02EA2D 21:AA1D: 4D        .byte $4D	; <ス>
- D - I - 0x02EA2E 21:AA1E: 13        .byte $13	; <て>
- D - I - 0x02EA2F 21:AA1F: 58        .byte $58	; <ネ>
- D - I - 0x02EA30 21:AA20: 17        .byte $17	; <ぬ>
- D - I - 0x02EA31 21:AA21: 59        .byte $59	; <ノ>

- D - I - 0x02EA32 21:AA22: 01        .byte $01	; <あ>



off_AA23_75:
- D - I - 0x02EA33 21:AA23: 10        .byte $10	; <た>
- D - I - 0x02EA34 21:AA24: 03        .byte $03	; <う>
- D - I - 0x02EA35 21:AA25: 0F        .byte $0F	; <そ>
- D - I - 0x02EA36 21:AA26: 28        .byte $28	; <り>
- D - I - 0x02EA37 21:AA27: 13        .byte $13	; <て>
- D - I - 0x02EA38 21:AA28: 29        .byte $29	; <る>
- D - I - 0x02EA39 21:AA29: 17        .byte $17	; <ぬ>
- D - I - 0x02EA3A 21:AA2A: 2C        .byte $2C	; <わ>

- D - I - 0x02EA3B 21:AA2B: 10        .byte $10	; <た>
- D - I - 0x02EA3C 21:AA2C: 04        .byte $04	; <え>
- D - I - 0x02EA3D 21:AA2D: 0F        .byte $0F	; <そ>
- D - I - 0x02EA3E 21:AA2E: 2A        .byte $2A	; <れ>
- D - I - 0x02EA3F 21:AA2F: 13        .byte $13	; <て>
- D - I - 0x02EA40 21:AA30: 2B        .byte $2B	; <ろ>
- D - I - 0x02EA41 21:AA31: 17        .byte $17	; <ぬ>
- D - I - 0x02EA42 21:AA32: 2E        .byte $2E	; <ん>

- D - I - 0x02EA43 21:AA33: 01        .byte $01	; <あ>



off_AA34_76:
- D - I - 0x02EA44 21:AA34: 10        .byte $10	; <た>
- D - I - 0x02EA45 21:AA35: 03        .byte $03	; <う>
- D - I - 0x02EA46 21:AA36: 0F        .byte $0F	; <そ>
- D - I - 0x02EA47 21:AA37: 2D        .byte $2D	; <を>
- D - I - 0x02EA48 21:AA38: 13        .byte $13	; <て>
- D - I - 0x02EA49 21:AA39: 38        .byte $38	; <5>
- D - I - 0x02EA4A 21:AA3A: 17        .byte $17	; <ぬ>
- D - I - 0x02EA4B 21:AA3B: 39        .byte $39	; <6>

- D - I - 0x02EA4C 21:AA3C: 10        .byte $10	; <た>
- D - I - 0x02EA4D 21:AA3D: 04        .byte $04	; <え>
- D - I - 0x02EA4E 21:AA3E: 0F        .byte $0F	; <そ>
- D - I - 0x02EA4F 21:AA3F: 2F        .byte $2F	; <っ>
- D - I - 0x02EA50 21:AA40: 13        .byte $13	; <て>
- D - I - 0x02EA51 21:AA41: 3A        .byte $3A	; <7>
- D - I - 0x02EA52 21:AA42: 17        .byte $17	; <ぬ>
- D - I - 0x02EA53 21:AA43: 3B        .byte $3B	; <8>

- D - I - 0x02EA54 21:AA44: 01        .byte $01	; <あ>



off_AA45_77:
- D - I - 0x02EA55 21:AA45: 08        .byte $08	; <く>
- D - I - 0x02EA56 21:AA46: 03        .byte $03	; <う>
- D - I - 0x02EA57 21:AA47: 0F        .byte $0F	; <そ>
- D - I - 0x02EA58 21:AA48: 4E        .byte $4E	; <セ>
- D - I - 0x02EA59 21:AA49: 13        .byte $13	; <て>
- D - I - 0x02EA5A 21:AA4A: 4F        .byte $4F	; <ソ>

- D - I - 0x02EA5B 21:AA4B: 08        .byte $08	; <く>
- D - I - 0x02EA5C 21:AA4C: 04        .byte $04	; <え>
- D - I - 0x02EA5D 21:AA4D: 0F        .byte $0F	; <そ>
- D - I - 0x02EA5E 21:AA4E: 64        .byte $64	; <ヤ>
- D - I - 0x02EA5F 21:AA4F: 13        .byte $13	; <て>
- D - I - 0x02EA60 21:AA50: 65        .byte $65	; <ユ>

- D - I - 0x02EA61 21:AA51: 01        .byte $01	; <あ>



off_AA52_78:
- D - I - 0x02EA62 21:AA52: 08        .byte $08	; <く>
- D - I - 0x02EA63 21:AA53: 03        .byte $03	; <う>
- D - I - 0x02EA64 21:AA54: 0F        .byte $0F	; <そ>
- D - I - 0x02EA65 21:AA55: 41        .byte $41	; <ア>
- D - I - 0x02EA66 21:AA56: 13        .byte $13	; <て>
- D - I - 0x02EA67 21:AA57: 44        .byte $44	; <エ>

- D - I - 0x02EA68 21:AA58: 08        .byte $08	; <く>
- D - I - 0x02EA69 21:AA59: 04        .byte $04	; <え>
- D - I - 0x02EA6A 21:AA5A: 0F        .byte $0F	; <そ>
- D - I - 0x02EA6B 21:AA5B: 45        .byte $45	; <オ>
- D - I - 0x02EA6C 21:AA5C: 13        .byte $13	; <て>
- D - I - 0x02EA6D 21:AA5D: 50        .byte $50	; <タ>

- D - I - 0x02EA6E 21:AA5E: 01        .byte $01	; <あ>



off_AA5F_79:
- D - I - 0x02EA6F 21:AA5F: 08        .byte $08	; <く>
- D - I - 0x02EA70 21:AA60: 03        .byte $03	; <う>
- D - I - 0x02EA71 21:AA61: 0F        .byte $0F	; <そ>
- D - I - 0x02EA72 21:AA62: 51        .byte $51	; <チ>
- D - I - 0x02EA73 21:AA63: 13        .byte $13	; <て>
- D - I - 0x02EA74 21:AA64: 54        .byte $54	; <ト>

- D - I - 0x02EA75 21:AA65: 08        .byte $08	; <く>
- D - I - 0x02EA76 21:AA66: 04        .byte $04	; <え>
- D - I - 0x02EA77 21:AA67: 0F        .byte $0F	; <そ>
- D - I - 0x02EA78 21:AA68: 52        .byte $52	; <ツ>
- D - I - 0x02EA79 21:AA69: 13        .byte $13	; <て>
- D - I - 0x02EA7A 21:AA6A: 53        .byte $53	; <テ>

- D - I - 0x02EA7B 21:AA6B: 01        .byte $01	; <あ>



off_AA6C_7A:
- D - I - 0x02EA7C 21:AA6C: 08        .byte $08	; <く>
- D - I - 0x02EA7D 21:AA6D: 03        .byte $03	; <う>
- D - I - 0x02EA7E 21:AA6E: 0F        .byte $0F	; <そ>
- D - I - 0x02EA7F 21:AA6F: 3C        .byte $3C	; <9>
- D - I - 0x02EA80 21:AA70: 13        .byte $13	; <て>
- D - I - 0x02EA81 21:AA71: 55        .byte $55	; <ナ>

- D - I - 0x02EA82 21:AA72: 08        .byte $08	; <く>
- D - I - 0x02EA83 21:AA73: 04        .byte $04	; <え>
- D - I - 0x02EA84 21:AA74: 0F        .byte $0F	; <そ>
- D - I - 0x02EA85 21:AA75: 3E        .byte $3E	; <Jr>
- D - I - 0x02EA86 21:AA76: 13        .byte $13	; <て>
- D - I - 0x02EA87 21:AA77: 3F        .byte $3F	; <•>

- D - I - 0x02EA88 21:AA78: 01        .byte $01	; <あ>



off_AA79_7B:
- D - I - 0x02EA89 21:AA79: 00        .byte $00
- D - I - 0x02EA8A 21:AA7A: 19        .byte $19	; <の>
- D - I - 0x02EA8B 21:AA7B: 47        .byte $47	; <キ>
- D - I - 0x02EA8C 21:AA7C: 67        .byte $67	; <ラ>

- D - I - 0x02EA8D 21:AA7D: 01        .byte $01	; <あ>



off_AA7E_7C:
- D - I - 0x02EA8E 21:AA7E: 00        .byte $00
- D - I - 0x02EA8F 21:AA7F: 19        .byte $19	; <の>
- D - I - 0x02EA90 21:AA80: 47        .byte $47	; <キ>
- D - I - 0x02EA91 21:AA81: 6D        .byte $6D	; <ヲ>

- D - I - 0x02EA92 21:AA82: 01        .byte $01	; <あ>



off_AA83_7D:
- D - I - 0x02EA93 21:AA83: 00        .byte $00
- D - I - 0x02EA94 21:AA84: 19        .byte $19	; <の>
- D - I - 0x02EA95 21:AA85: 47        .byte $47	; <キ>
- D - I - 0x02EA96 21:AA86: 6F        .byte $6F	; <ッ>

- D - I - 0x02EA97 21:AA87: 01        .byte $01	; <あ>



off_AA88_7E:
- D - I - 0x02EA98 21:AA88: 08        .byte $08	; <く>
- D - I - 0x02EA99 21:AA89: 02        .byte $02	; <い>
- D - I - 0x02EA9A 21:AA8A: 0F        .byte $0F	; <そ>
- D - I - 0x02EA9B 21:AA8B: 02        .byte $02	; <い>
- D - I - 0x02EA9C 21:AA8C: 13        .byte $13	; <て>
- D - I - 0x02EA9D 21:AA8D: 03        .byte $03	; <う>

- D - I - 0x02EA9E 21:AA8E: 18        .byte $18	; <ね>
- D - I - 0x02EA9F 21:AA8F: 03        .byte $03	; <う>
- D - I - 0x02EAA0 21:AA90: 0B        .byte $0B	; <さ>
- D - I - 0x02EAA1 21:AA91: 08        .byte $08	; <く>
- D - I - 0x02EAA2 21:AA92: 0F        .byte $0F	; <そ>
- D - I - 0x02EAA3 21:AA93: 09        .byte $09	; <け>
- D - I - 0x02EAA4 21:AA94: 13        .byte $13	; <て>
- D - I - 0x02EAA5 21:AA95: 0C        .byte $0C	; <し>
- D - I - 0x02EAA6 21:AA96: 17        .byte $17	; <ぬ>
- D - I - 0x02EAA7 21:AA97: 0D        .byte $0D	; <す>

- D - I - 0x02EAA8 21:AA98: 18        .byte $18	; <ね>
- D - I - 0x02EAA9 21:AA99: 04        .byte $04	; <え>
- D - I - 0x02EAAA 21:AA9A: 0B        .byte $0B	; <さ>
- D - I - 0x02EAAB 21:AA9B: 0A        .byte $0A	; <こ>
- D - I - 0x02EAAC 21:AA9C: 0F        .byte $0F	; <そ>
- D - I - 0x02EAAD 21:AA9D: 0B        .byte $0B	; <さ>
- D - I - 0x02EAAE 21:AA9E: 13        .byte $13	; <て>
- D - I - 0x02EAAF 21:AA9F: 0E        .byte $0E	; <せ>
- D - I - 0x02EAB0 21:AAA0: 17        .byte $17	; <ぬ>
- D - I - 0x02EAB1 21:AAA1: 0F        .byte $0F	; <そ>

- D - I - 0x02EAB2 21:AAA2: 08        .byte $08	; <く>
- D - I - 0x02EAB3 21:AAA3: 05        .byte $05	; <お>
- D - I - 0x02EAB4 21:AAA4: 0F        .byte $0F	; <そ>
- D - I - 0x02EAB5 21:AAA5: 20        .byte $20	; <み>
- D - I - 0x02EAB6 21:AAA6: 13        .byte $13	; <て>
- D - I - 0x02EAB7 21:AAA7: 21        .byte $21	; <む>

- D - I - 0x02EAB8 21:AAA8: 01        .byte $01	; <あ>



off_AAA9_7F:
- D - I - 0x02EAB9 21:AAA9: 08        .byte $08	; <く>
- D - I - 0x02EABA 21:AAAA: 02        .byte $02	; <い>
- D - I - 0x02EABB 21:AAAB: 0F        .byte $0F	; <そ>
- D - I - 0x02EABC 21:AAAC: 24        .byte $24	; <や>
- D - I - 0x02EABD 21:AAAD: 13        .byte $13	; <て>
- D - I - 0x02EABE 21:AAAE: 25        .byte $25	; <ゆ>

- D - I - 0x02EABF 21:AAAF: 18        .byte $18	; <ね>
- D - I - 0x02EAC0 21:AAB0: 03        .byte $03	; <う>
- D - I - 0x02EAC1 21:AAB1: 0B        .byte $0B	; <さ>
- D - I - 0x02EAC2 21:AAB2: 22        .byte $22	; <め>
- D - I - 0x02EAC3 21:AAB3: 0F        .byte $0F	; <そ>
- D - I - 0x02EAC4 21:AAB4: 23        .byte $23	; <も>
- D - I - 0x02EAC5 21:AAB5: 13        .byte $13	; <て>
- D - I - 0x02EAC6 21:AAB6: 26        .byte $26	; <よ>
- D - I - 0x02EAC7 21:AAB7: 17        .byte $17	; <ぬ>
- D - I - 0x02EAC8 21:AAB8: 27        .byte $27	; <ら>

- D - I - 0x02EAC9 21:AAB9: 10        .byte $10	; <た>
- D - I - 0x02EACA 21:AABA: 04        .byte $04	; <え>
- D - I - 0x02EACB 21:AABB: 0B        .byte $0B	; <さ>
- D - I - 0x02EACC 21:AABC: 28        .byte $28	; <り>
- D - I - 0x02EACD 21:AABD: 0F        .byte $0F	; <そ>
- D - I - 0x02EACE 21:AABE: 29        .byte $29	; <る>
- D - I - 0x02EACF 21:AABF: 13        .byte $13	; <て>
- D - I - 0x02EAD0 21:AAC0: 2C        .byte $2C	; <わ>

- D - I - 0x02EAD1 21:AAC1: 01        .byte $01	; <あ>



off_AAC2_80:
- D - I - 0x02EAD2 21:AAC2: 08        .byte $08	; <く>
- D - I - 0x02EAD3 21:AAC3: 18        .byte $18	; <ね>
- D - I - 0x02EAD4 21:AAC4: 0F        .byte $0F	; <そ>
- D - I - 0x02EAD5 21:AAC5: 04        .byte $04	; <え>
- D - I - 0x02EAD6 21:AAC6: 13        .byte $13	; <て>
- D - I - 0x02EAD7 21:AAC7: 05        .byte $05	; <お>

- D - I - 0x02EAD8 21:AAC8: 10        .byte $10	; <た>
- D - I - 0x02EAD9 21:AAC9: 19        .byte $19	; <の>
- D - I - 0x02EADA 21:AACA: 0B        .byte $0B	; <さ>
- D - I - 0x02EADB 21:AACB: 06        .byte $06	; <か>
- D - I - 0x02EADC 21:AACC: 0F        .byte $0F	; <そ>
- D - I - 0x02EADD 21:AACD: 07        .byte $07	; <き>
- D - I - 0x02EADE 21:AACE: 13        .byte $13	; <て>
- D - I - 0x02EADF 21:AACF: 12        .byte $12	; <つ>

- D - I - 0x02EAE0 21:AAD0: 10        .byte $10	; <た>
- D - I - 0x02EAE1 21:AAD1: 1A        .byte $1A	; <は>
- D - I - 0x02EAE2 21:AAD2: 0B        .byte $0B	; <さ>
- D - I - 0x02EAE3 21:AAD3: 28        .byte $28	; <り>
- D - I - 0x02EAE4 21:AAD4: 0F        .byte $0F	; <そ>
- D - I - 0x02EAE5 21:AAD5: 18        .byte $18	; <ね>
- D - I - 0x02EAE6 21:AAD6: 13        .byte $13	; <て>
- D - I - 0x02EAE7 21:AAD7: 19        .byte $19	; <の>

- D - I - 0x02EAE8 21:AAD8: 01        .byte $01	; <あ>



off_AAD9_81:
- D - I - 0x02EAE9 21:AAD9: 08        .byte $08	; <く>
- D - I - 0x02EAEA 21:AADA: 03        .byte $03	; <う>
- D - I - 0x02EAEB 21:AADB: 0F        .byte $0F	; <そ>
- D - I - 0x02EAEC 21:AADC: 10        .byte $10	; <た>
- D - I - 0x02EAED 21:AADD: 13        .byte $13	; <て>
- D - I - 0x02EAEE 21:AADE: 11        .byte $11	; <ち>

- D - I - 0x02EAEF 21:AADF: 08        .byte $08	; <く>
- D - I - 0x02EAF0 21:AAE0: 04        .byte $04	; <え>
- D - I - 0x02EAF1 21:AAE1: 0F        .byte $0F	; <そ>
- D - I - 0x02EAF2 21:AAE2: 2D        .byte $2D	; <を>
- D - I - 0x02EAF3 21:AAE3: 13        .byte $13	; <て>
- D - I - 0x02EAF4 21:AAE4: 13        .byte $13	; <て>

- D - I - 0x02EAF5 21:AAE5: 01        .byte $01	; <あ>



off_AAE6_82:
- D - I - 0x02EAF6 21:AAE6: 08        .byte $08	; <く>
- D - I - 0x02EAF7 21:AAE7: 03        .byte $03	; <う>
- D - I - 0x02EAF8 21:AAE8: 0F        .byte $0F	; <そ>
- D - I - 0x02EAF9 21:AAE9: 1A        .byte $1A	; <は>
- D - I - 0x02EAFA 21:AAEA: 13        .byte $13	; <て>
- D - I - 0x02EAFB 21:AAEB: 1B        .byte $1B	; <ひ>

- D - I - 0x02EAFC 21:AAEC: 08        .byte $08	; <く>
- D - I - 0x02EAFD 21:AAED: 04        .byte $04	; <え>
- D - I - 0x02EAFE 21:AAEE: 0F        .byte $0F	; <そ>
- D - I - 0x02EAFF 21:AAEF: 30        .byte $30	; <ゃ>
- D - I - 0x02EB00 21:AAF0: 13        .byte $13	; <て>
- D - I - 0x02EB01 21:AAF1: 31        .byte $31	; <ゅ>

- D - I - 0x02EB02 21:AAF2: 01        .byte $01	; <あ>



off_AAF3_83:
- D - I - 0x02EB03 21:AAF3: 08        .byte $08	; <く>
- D - I - 0x02EB04 21:AAF4: 03        .byte $03	; <う>
- D - I - 0x02EB05 21:AAF5: 0F        .byte $0F	; <そ>
- D - I - 0x02EB06 21:AAF6: 32        .byte $32	; <ょ>
- D - I - 0x02EB07 21:AAF7: 13        .byte $13	; <て>
- D - I - 0x02EB08 21:AAF8: 33        .byte $33	; <0>

- D - I - 0x02EB09 21:AAF9: 08        .byte $08	; <く>
- D - I - 0x02EB0A 21:AAFA: 04        .byte $04	; <え>
- D - I - 0x02EB0B 21:AAFB: 0F        .byte $0F	; <そ>
- D - I - 0x02EB0C 21:AAFC: 38        .byte $38	; <5>
- D - I - 0x02EB0D 21:AAFD: 13        .byte $13	; <て>
- D - I - 0x02EB0E 21:AAFE: 39        .byte $39	; <6>

- D - I - 0x02EB0F 21:AAFF: 01        .byte $01	; <あ>



off_AB00_84:
- D - I - 0x02EB10 21:AB00: 08        .byte $08	; <く>
- D - I - 0x02EB11 21:AB01: 03        .byte $03	; <う>
- D - I - 0x02EB12 21:AB02: 0F        .byte $0F	; <そ>
- D - I - 0x02EB13 21:AB03: 2A        .byte $2A	; <れ>
- D - I - 0x02EB14 21:AB04: 13        .byte $13	; <て>
- D - I - 0x02EB15 21:AB05: 2B        .byte $2B	; <ろ>

- D - I - 0x02EB16 21:AB06: 08        .byte $08	; <く>
- D - I - 0x02EB17 21:AB07: 04        .byte $04	; <え>
- D - I - 0x02EB18 21:AB08: 0F        .byte $0F	; <そ>
- D - I - 0x02EB19 21:AB09: 2E        .byte $2E	; <ん>
- D - I - 0x02EB1A 21:AB0A: 13        .byte $13	; <て>
- D - I - 0x02EB1B 21:AB0B: 2F        .byte $2F	; <っ>

- D - I - 0x02EB1C 21:AB0C: 01        .byte $01	; <あ>



off_AB0D_85:
- D - I - 0x02EB1D 21:AB0D: 00        .byte $00
- D - I - 0x02EB1E 21:AB0E: 19        .byte $19	; <の>
- D - I - 0x02EB1F 21:AB0F: 47        .byte $47	; <キ>
- D - I - 0x02EB20 21:AB10: 3A        .byte $3A	; <7>

- D - I - 0x02EB21 21:AB11: 01        .byte $01	; <あ>



off_AB12_86:
- D - I - 0x02EB22 21:AB12: 00        .byte $00
- D - I - 0x02EB23 21:AB13: 19        .byte $19	; <の>
- D - I - 0x02EB24 21:AB14: 47        .byte $47	; <キ>
- D - I - 0x02EB25 21:AB15: 3B        .byte $3B	; <8>

- D - I - 0x02EB26 21:AB16: 01        .byte $01	; <あ>



off_AB17_87:
- D - I - 0x02EB27 21:AB17: 00        .byte $00
- D - I - 0x02EB28 21:AB18: 19        .byte $19	; <の>
- D - I - 0x02EB29 21:AB19: 47        .byte $47	; <キ>
- D - I - 0x02EB2A 21:AB1A: 14        .byte $14	; <と>

- D - I - 0x02EB2B 21:AB1B: 01        .byte $01	; <あ>



off_AB1C_88:
- D - I - 0x02EB2C 21:AB1C: 08        .byte $08	; <く>
- D - I - 0x02EB2D 21:AB1D: 01        .byte $01	; <あ>
- D - I - 0x02EB2E 21:AB1E: 0B        .byte $0B	; <さ>
- D - I - 0x02EB2F 21:AB1F: 02        .byte $02	; <い>
- D - I - 0x02EB30 21:AB20: 0F        .byte $0F	; <そ>
- D - I - 0x02EB31 21:AB21: 56        .byte $56	; <ニ>

- D - I - 0x02EB32 21:AB22: 18        .byte $18	; <ね>
- D - I - 0x02EB33 21:AB23: 02        .byte $02	; <い>
- D - I - 0x02EB34 21:AB24: 07        .byte $07	; <き>
- D - I - 0x02EB35 21:AB25: 08        .byte $08	; <く>
- D - I - 0x02EB36 21:AB26: 0B        .byte $0B	; <さ>
- D - I - 0x02EB37 21:AB27: 09        .byte $09	; <け>
- D - I - 0x02EB38 21:AB28: 0F        .byte $0F	; <そ>
- D - I - 0x02EB39 21:AB29: 5C        .byte $5C	; <フ>
- D - I - 0x02EB3A 21:AB2A: 13        .byte $13	; <て>
- D - I - 0x02EB3B 21:AB2B: 57        .byte $57	; <ヌ>

- D - I - 0x02EB3C 21:AB2C: 20        .byte $20	; <み>
- D - I - 0x02EB3D 21:AB2D: 03        .byte $03	; <う>
- D - I - 0x02EB3E 21:AB2E: 07        .byte $07	; <き>
- D - I - 0x02EB3F 21:AB2F: 20        .byte $20	; <み>
- D - I - 0x02EB40 21:AB30: 0B        .byte $0B	; <さ>
- D - I - 0x02EB41 21:AB31: 0A        .byte $0A	; <こ>
- D - I - 0x02EB42 21:AB32: 0F        .byte $0F	; <そ>
- D - I - 0x02EB43 21:AB33: 0B        .byte $0B	; <さ>
- D - I - 0x02EB44 21:AB34: 13        .byte $13	; <て>
- D - I - 0x02EB45 21:AB35: 0E        .byte $0E	; <せ>
- D - I - 0x02EB46 21:AB36: 17        .byte $17	; <ぬ>
- D - I - 0x02EB47 21:AB37: 5D        .byte $5D	; <ヘ>

- D - I - 0x02EB48 21:AB38: 28        .byte $28	; <り>
- D - I - 0x02EB49 21:AB39: 04        .byte $04	; <え>
- D - I - 0x02EB4A 21:AB3A: 07        .byte $07	; <き>
- D - I - 0x02EB4B 21:AB3B: 21        .byte $21	; <む>
- D - I - 0x02EB4C 21:AB3C: 0B        .byte $0B	; <さ>
- D - I - 0x02EB4D 21:AB3D: 24        .byte $24	; <や>
- D - I - 0x02EB4E 21:AB3E: 0F        .byte $0F	; <そ>
- D - I - 0x02EB4F 21:AB3F: 25        .byte $25	; <ゆ>
- D - I - 0x02EB50 21:AB40: 13        .byte $13	; <て>
- D - I - 0x02EB51 21:AB41: 30        .byte $30	; <ゃ>
- D - I - 0x02EB52 21:AB42: 17        .byte $17	; <ぬ>
- D - I - 0x02EB53 21:AB43: 31        .byte $31	; <ゅ>
- D - I - 0x02EB54 21:AB44: 1B        .byte $1B	; <ひ>
- D - I - 0x02EB55 21:AB45: 5A        .byte $5A	; <ハ>

- D - I - 0x02EB56 21:AB46: 20        .byte $20	; <み>
- D - I - 0x02EB57 21:AB47: 05        .byte $05	; <お>
- D - I - 0x02EB58 21:AB48: 0B        .byte $0B	; <さ>
- D - I - 0x02EB59 21:AB49: 5B        .byte $5B	; <ヒ>
- D - I - 0x02EB5A 21:AB4A: 0F        .byte $0F	; <そ>
- D - I - 0x02EB5B 21:AB4B: 5E        .byte $5E	; <ホ>
- D - I - 0x02EB5C 21:AB4C: 13        .byte $13	; <て>
- D - I - 0x02EB5D 21:AB4D: 5F        .byte $5F	; <マ>
- D - I - 0x02EB5E 21:AB4E: 17        .byte $17	; <ぬ>
- D - I - 0x02EB5F 21:AB4F: 70        .byte $70	; <ャ>
- D - I - 0x02EB60 21:AB50: 1B        .byte $1B	; <ひ>
- D - I - 0x02EB61 21:AB51: 71        .byte $71	; <ュ>

- D - I - 0x02EB62 21:AB52: 01        .byte $01	; <あ>



off_AB53_89:
- D - I - 0x02EB63 21:AB53: 08        .byte $08	; <く>
- D - I - 0x02EB64 21:AB54: 06        .byte $06	; <か>
- D - I - 0x02EB65 21:AB55: 11        .byte $11	; <ち>
- D - I - 0x02EB66 21:AB56: 56        .byte $56	; <ニ>
- D - I - 0x02EB67 21:AB57: 13        .byte $13	; <て>
- D - I - 0x02EB68 21:AB58: 2E        .byte $2E	; <ん>
; продолжение


off_AB59:
- D - I - 0x02EB69 21:AB59: 10        .byte $10	; <た>
- D - I - 0x02EB6A 21:AB5A: 05        .byte $05	; <お>
- D - I - 0x02EB6B 21:AB5B: 0B        .byte $0B	; <さ>
- D - I - 0x02EB6C 21:AB5C: 50        .byte $50	; <タ>
- D - I - 0x02EB6D 21:AB5D: 0F        .byte $0F	; <そ>
- D - I - 0x02EB6E 21:AB5E: 51        .byte $51	; <チ>
- D - I - 0x02EB6F 21:AB5F: 13        .byte $13	; <て>
- D - I - 0x02EB70 21:AB60: 54        .byte $54	; <ト>

- D - I - 0x02EB71 21:AB61: 08        .byte $08	; <く>
- D - I - 0x02EB72 21:AB62: 06        .byte $06	; <か>
- D - I - 0x02EB73 21:AB63: 0B        .byte $0B	; <さ>
- D - I - 0x02EB74 21:AB64: 52        .byte $52	; <ツ>
- D - I - 0x02EB75 21:AB65: 0F        .byte $0F	; <そ>
- D - I - 0x02EB76 21:AB66: 53        .byte $53	; <テ>
; продолжение


off_AB67:
- D - I - 0x02EB77 21:AB67: 03        .byte $03	; <う>
- D - I - 0x02EB78 21:AB68: 80 AB     .word off_AB80
- D - I - 0x02EB7A 21:AB6A: F9 AB     .word off_ABF9
- D - I - 0x02EB7C 21:AB6C: 14 AC     .word off_AC14
- D - I - 0x02EB7E 21:AB6E: 43 AC     .word off_AC43
- D - I - 0x02EB80 21:AB70: 56 AC     .word off_AC56
- D - I - 0x02EB82 21:AB72: 81 AC     .word off_AC81
- D - I - 0x02EB84 21:AB74: 9A AC     .word off_AC9A
- D - I - 0x02EB86 21:AB76: AF AC     .word off_ACAF
- D - I - 0x02EB88 21:AB78: DA AC     .word off_ACDA
- D - I - 0x02EB8A 21:AB7A: F3 AC     .word off_ACF3
- D - I - 0x02EB8C 21:AB7C: 0C AD     .word off_AD0C
- D - I - 0x02EB8E 21:AB7E: 25 AD     .word off_AD25



off_AB80:
- D - I - 0x02EB90 21:AB80: 10        .byte $10	; <た>
- D - I - 0x02EB91 21:AB81: 02        .byte $02	; <い>
- D - I - 0x02EB92 21:AB82: 11        .byte $11	; <ち>
- D - I - 0x02EB93 21:AB83: 24        .byte $24	; <や>
- D - I - 0x02EB94 21:AB84: 15        .byte $15	; <な>
- D - I - 0x02EB95 21:AB85: 25        .byte $25	; <ゆ>
- D - I - 0x02EB96 21:AB86: 18        .byte $18	; <ね>
- D - I - 0x02EB97 21:AB87: 30        .byte $30	; <ゃ>

- D - I - 0x02EB98 21:AB88: 20        .byte $20	; <み>
- D - I - 0x02EB99 21:AB89: 03        .byte $03	; <う>
- D - I - 0x02EB9A 21:AB8A: 11        .byte $11	; <ち>
- D - I - 0x02EB9B 21:AB8B: 26        .byte $26	; <よ>
- D - I - 0x02EB9C 21:AB8C: 14        .byte $14	; <と>
- D - I - 0x02EB9D 21:AB8D: 31        .byte $31	; <ゅ>
- D - I - 0x02EB9E 21:AB8E: 15        .byte $15	; <な>
- D - I - 0x02EB9F 21:AB8F: 27        .byte $27	; <ら>
- D - I - 0x02EBA0 21:AB90: 18        .byte $18	; <ね>
- D - I - 0x02EBA1 21:AB91: 32        .byte $32	; <ょ>
- D - I - 0x02EBA2 21:AB92: 80        .byte $80
- D - I - 0x02EBA3 21:AB93: 13        .byte $13	; <て>
; продолжение


off_AB94:
- D - I - 0x02EBA4 21:AB94: 00        .byte $00
- D - I - 0x02EBA5 21:AB95: 06        .byte $06	; <か>
- D - I - 0x02EBA6 21:AB96: 18        .byte $18	; <ね>
- D - I - 0x02EBA7 21:AB97: 11        .byte $11	; <ち>

- D - I - 0x02EBA8 21:AB98: 18        .byte $18	; <ね>
- D - I - 0x02EBA9 21:AB99: 04        .byte $04	; <え>
- D - I - 0x02EBAA 21:AB9A: 11        .byte $11	; <ち>
- D - I - 0x02EBAB 21:AB9B: 2C        .byte $2C	; <わ>
- D - I - 0x02EBAC 21:AB9C: 15        .byte $15	; <な>
- D - I - 0x02EBAD 21:AB9D: 2D        .byte $2D	; <を>
- D - I - 0x02EBAE 21:AB9E: 18        .byte $18	; <ね>
- D - I - 0x02EBAF 21:AB9F: 38        .byte $38	; <5>
- D - I - 0x02EBB0 21:ABA0: 80        .byte $80
- D - I - 0x02EBB1 21:ABA1: 19        .byte $19	; <の>

- D - I - 0x02EBB2 21:ABA2: 08        .byte $08	; <く>
- D - I - 0x02EBB3 21:ABA3: 05        .byte $05	; <お>
- D - I - 0x02EBB4 21:ABA4: 18        .byte $18	; <ね>
- D - I - 0x02EBB5 21:ABA5: 3A        .byte $3A	; <7>
- D - I - 0x02EBB6 21:ABA6: 80        .byte $80
- D - I - 0x02EBB7 21:ABA7: 1B        .byte $1B	; <ひ>
; продолжение


off_ABA8:
- D - I - 0x02EBB8 21:ABA8: 08        .byte $08	; <く>
- D - I - 0x02EBB9 21:ABA9: 05        .byte $05	; <お>
- D - I - 0x02EBBA 21:ABAA: 15        .byte $15	; <な>
- D - I - 0x02EBBB 21:ABAB: 2F        .byte $2F	; <っ>
- D - I - 0x02EBBC 21:ABAC: 17        .byte $17	; <ぬ>
- D - I - 0x02EBBD 21:ABAD: 2E        .byte $2E	; <ん>

- D - I - 0x02EBBE 21:ABAE: 08        .byte $08	; <く>
- D - I - 0x02EBBF 21:ABAF: 1E        .byte $1E	; <ほ>
- D - I - 0x02EBC0 21:ABB0: 0F        .byte $0F	; <そ>
- D - I - 0x02EBC1 21:ABB1: 02        .byte $02	; <い>
- D - I - 0x02EBC2 21:ABB2: 13        .byte $13	; <て>
- D - I - 0x02EBC3 21:ABB3: 03        .byte $03	; <う>

- D - I - 0x02EBC4 21:ABB4: 08        .byte $08	; <く>
- D - I - 0x02EBC5 21:ABB5: 00        .byte $00
- D - I - 0x02EBC6 21:ABB6: 0C        .byte $0C	; <し>
- D - I - 0x02EBC7 21:ABB7: 08        .byte $08	; <く>
- D - I - 0x02EBC8 21:ABB8: 13        .byte $13	; <て>
- D - I - 0x02EBC9 21:ABB9: 09        .byte $09	; <け>

- D - I - 0x02EBCA 21:ABBA: 08        .byte $08	; <く>
- D - I - 0x02EBCB 21:ABBB: 01        .byte $01	; <あ>
- D - I - 0x02EBCC 21:ABBC: 0C        .byte $0C	; <し>
- D - I - 0x02EBCD 21:ABBD: 0A        .byte $0A	; <こ>
- D - I - 0x02EBCE 21:ABBE: 13        .byte $13	; <て>
- D - I - 0x02EBCF 21:ABBF: 0B        .byte $0B	; <さ>

- D - I - 0x02EBD0 21:ABC0: 00        .byte $00
- D - I - 0x02EBD1 21:ABC1: 02        .byte $02	; <い>
- D - I - 0x02EBD2 21:ABC2: 0C        .byte $0C	; <し>
- D - I - 0x02EBD3 21:ABC3: 20        .byte $20	; <み>

- D - I - 0x02EBD4 21:ABC4: 00        .byte $00
- D - I - 0x02EBD5 21:ABC5: 03        .byte $03	; <う>
- D - I - 0x02EBD6 21:ABC6: 0D        .byte $0D	; <す>
- D - I - 0x02EBD7 21:ABC7: 22        .byte $22	; <め>

- D - I - 0x02EBD8 21:ABC8: 00        .byte $00
- D - I - 0x02EBD9 21:ABC9: 04        .byte $04	; <え>
- D - I - 0x02EBDA 21:ABCA: 0D        .byte $0D	; <す>
- D - I - 0x02EBDB 21:ABCB: 28        .byte $28	; <り>

- D - I - 0x02EBDC 21:ABCC: 00        .byte $00
- D - I - 0x02EBDD 21:ABCD: 06        .byte $06	; <か>
- D - I - 0x02EBDE 21:ABCE: 15        .byte $15	; <な>
- D - I - 0x02EBDF 21:ABCF: 2A        .byte $2A	; <れ>

- D - I - 0x02EBE0 21:ABD0: 20        .byte $20	; <み>
- D - I - 0x02EBE1 21:ABD1: 07        .byte $07	; <き>
- D - I - 0x02EBE2 21:ABD2: 0A        .byte $0A	; <こ>
- D - I - 0x02EBE3 21:ABD3: 04        .byte $04	; <え>
- D - I - 0x02EBE4 21:ABD4: 0E        .byte $0E	; <せ>
- D - I - 0x02EBE5 21:ABD5: 05        .byte $05	; <お>
- D - I - 0x02EBE6 21:ABD6: 12        .byte $12	; <つ>
- D - I - 0x02EBE7 21:ABD7: 10        .byte $10	; <た>
- D - I - 0x02EBE8 21:ABD8: 17        .byte $17	; <ぬ>
- D - I - 0x02EBE9 21:ABD9: 23        .byte $23	; <も>
- D - I - 0x02EBEA 21:ABDA: 1B        .byte $1B	; <ひ>
- D - I - 0x02EBEB 21:ABDB: 21        .byte $21	; <む>

- D - I - 0x02EBEC 21:ABDC: 10        .byte $10	; <た>
- D - I - 0x02EBED 21:ABDD: 08        .byte $08	; <く>
- D - I - 0x02EBEE 21:ABDE: 0A        .byte $0A	; <こ>
- D - I - 0x02EBEF 21:ABDF: 06        .byte $06	; <か>
- D - I - 0x02EBF0 21:ABE0: 0F        .byte $0F	; <そ>
- D - I - 0x02EBF1 21:ABE1: 07        .byte $07	; <き>
- D - I - 0x02EBF2 21:ABE2: 13        .byte $13	; <て>
- D - I - 0x02EBF3 21:ABE3: 12        .byte $12	; <つ>

- D - I - 0x02EBF4 21:ABE4: 20        .byte $20	; <み>
- D - I - 0x02EBF5 21:ABE5: 09        .byte $09	; <け>
- D - I - 0x02EBF6 21:ABE6: 03        .byte $03	; <う>
- D - I - 0x02EBF7 21:ABE7: 29        .byte $29	; <る>
- D - I - 0x02EBF8 21:ABE8: 05        .byte $05	; <お>
- D - I - 0x02EBF9 21:ABE9: 2B        .byte $2B	; <ろ>
- D - I - 0x02EBFA 21:ABEA: 09        .byte $09	; <け>
- D - I - 0x02EBFB 21:ABEB: 0C        .byte $0C	; <し>
- D - I - 0x02EBFC 21:ABEC: 0F        .byte $0F	; <そ>
- D - I - 0x02EBFD 21:ABED: 0D        .byte $0D	; <す>
- D - I - 0x02EBFE 21:ABEE: 13        .byte $13	; <て>
- D - I - 0x02EBFF 21:ABEF: 18        .byte $18	; <ね>

- D - I - 0x02EC00 21:ABF0: 10        .byte $10	; <た>
- D - I - 0x02EC01 21:ABF1: 16        .byte $16	; <に>
- D - I - 0x02EC02 21:ABF2: 05        .byte $05	; <お>
- D - I - 0x02EC03 21:ABF3: 0E        .byte $0E	; <せ>
- D - I - 0x02EC04 21:ABF4: 09        .byte $09	; <け>
- D - I - 0x02EC05 21:ABF5: 0F        .byte $0F	; <そ>
- D - I - 0x02EC06 21:ABF6: 0C        .byte $0C	; <し>
- D - I - 0x02EC07 21:ABF7: 1A        .byte $1A	; <は>

- D - I - 0x02EC08 21:ABF8: 01        .byte $01	; <あ>



off_ABF9:
- D - I - 0x02EC09 21:ABF9: 20        .byte $20	; <み>
- D - I - 0x02EC0A 21:ABFA: 02        .byte $02	; <い>
- D - I - 0x02EC0B 21:ABFB: 11        .byte $11	; <ち>
- D - I - 0x02EC0C 21:ABFC: 24        .byte $24	; <や>
- D - I - 0x02EC0D 21:ABFD: 14        .byte $14	; <と>
- D - I - 0x02EC0E 21:ABFE: 39        .byte $39	; <6>
- D - I - 0x02EC0F 21:ABFF: 15        .byte $15	; <な>
- D - I - 0x02EC10 21:AC00: 33        .byte $33	; <0>
- D - I - 0x02EC11 21:AC01: 18        .byte $18	; <ね>
- D - I - 0x02EC12 21:AC02: 14        .byte $14	; <と>
- D - I - 0x02EC13 21:AC03: 80        .byte $80
- D - I - 0x02EC14 21:AC04: 15        .byte $15	; <な>

- D - I - 0x02EC15 21:AC05: 20        .byte $20	; <み>
- D - I - 0x02EC16 21:AC06: 03        .byte $03	; <う>
- D - I - 0x02EC17 21:AC07: 11        .byte $11	; <ち>
- D - I - 0x02EC18 21:AC08: 26        .byte $26	; <よ>
- D - I - 0x02EC19 21:AC09: 14        .byte $14	; <と>
- D - I - 0x02EC1A 21:AC0A: 3B        .byte $3B	; <8>
- D - I - 0x02EC1B 21:AC0B: 15        .byte $15	; <な>
- D - I - 0x02EC1C 21:AC0C: 27        .byte $27	; <ら>
- D - I - 0x02EC1D 21:AC0D: 18        .byte $18	; <ね>
- D - I - 0x02EC1E 21:AC0E: 16        .byte $16	; <に>
- D - I - 0x02EC1F 21:AC0F: 80        .byte $80
- D - I - 0x02EC20 21:AC10: 17        .byte $17	; <ぬ>

- D - I - 0x02EC21 21:AC11: 02        .byte $02	; <い>
- D - I - 0x02EC22 21:AC12: 94 AB     .word off_AB94



off_AC14:
- D - I - 0x02EC24 21:AC14: 08        .byte $08	; <く>
- D - I - 0x02EC25 21:AC15: 04        .byte $04	; <え>
- D - I - 0x02EC26 21:AC16: 15        .byte $15	; <な>
- D - I - 0x02EC27 21:AC17: 2D        .byte $2D	; <を>
- D - I - 0x02EC28 21:AC18: 18        .byte $18	; <ね>
- D - I - 0x02EC29 21:AC19: 38        .byte $38	; <5>

- D - I - 0x02EC2A 21:AC1A: 00        .byte $00
- D - I - 0x02EC2B 21:AC1B: 06        .byte $06	; <か>
- D - I - 0x02EC2C 21:AC1C: 18        .byte $18	; <ね>
- D - I - 0x02EC2D 21:AC1D: 11        .byte $11	; <ち>

- D - I - 0x02EC2E 21:AC1E: 08        .byte $08	; <く>
- D - I - 0x02EC2F 21:AC1F: 05        .byte $05	; <お>
- D - I - 0x02EC30 21:AC20: 18        .byte $18	; <ね>
- D - I - 0x02EC31 21:AC21: 1C        .byte $1C	; <ふ>
- D - I - 0x02EC32 21:AC22: 80        .byte $80
- D - I - 0x02EC33 21:AC23: 1D        .byte $1D	; <へ>
; продолжение


off_AC24:
- D - I - 0x02EC34 21:AC24: 08        .byte $08	; <く>
- D - I - 0x02EC35 21:AC25: 04        .byte $04	; <え>
- D - I - 0x02EC36 21:AC26: 11        .byte $11	; <ち>
- D - I - 0x02EC37 21:AC27: 2C        .byte $2C	; <わ>
- D - I - 0x02EC38 21:AC28: 80        .byte $80
- D - I - 0x02EC39 21:AC29: 19        .byte $19	; <の>
; продолжение


off_AC2A:
- D - I - 0x02EC3A 21:AC2A: 00        .byte $00
- D - I - 0x02EC3B 21:AC2B: 03        .byte $03	; <う>
- D - I - 0x02EC3C 21:AC2C: 18        .byte $18	; <ね>
- D - I - 0x02EC3D 21:AC2D: 32        .byte $32	; <ょ>
; продолжение


off_AC2E:
- D - I - 0x02EC3E 21:AC2E: 18        .byte $18	; <ね>
- D - I - 0x02EC3F 21:AC2F: 03        .byte $03	; <う>
- D - I - 0x02EC40 21:AC30: 11        .byte $11	; <ち>
- D - I - 0x02EC41 21:AC31: 26        .byte $26	; <よ>
- D - I - 0x02EC42 21:AC32: 14        .byte $14	; <と>
- D - I - 0x02EC43 21:AC33: 31        .byte $31	; <ゅ>
- D - I - 0x02EC44 21:AC34: 15        .byte $15	; <な>
- D - I - 0x02EC45 21:AC35: 27        .byte $27	; <ら>
- D - I - 0x02EC46 21:AC36: 80        .byte $80
- D - I - 0x02EC47 21:AC37: 13        .byte $13	; <て>

- D - I - 0x02EC48 21:AC38: 10        .byte $10	; <た>
- D - I - 0x02EC49 21:AC39: 02        .byte $02	; <い>
- D - I - 0x02EC4A 21:AC3A: 11        .byte $11	; <ち>
- D - I - 0x02EC4B 21:AC3B: 24        .byte $24	; <や>
- D - I - 0x02EC4C 21:AC3C: 15        .byte $15	; <な>
- D - I - 0x02EC4D 21:AC3D: 25        .byte $25	; <ゆ>
- D - I - 0x02EC4E 21:AC3E: 18        .byte $18	; <ね>
- D - I - 0x02EC4F 21:AC3F: 30        .byte $30	; <ゃ>

- D - I - 0x02EC50 21:AC40: 02        .byte $02	; <い>
- D - I - 0x02EC51 21:AC41: A8 AB     .word off_ABA8



off_AC43:
- D - I - 0x02EC53 21:AC43: 08        .byte $08	; <く>
- D - I - 0x02EC54 21:AC44: 04        .byte $04	; <え>
- D - I - 0x02EC55 21:AC45: 15        .byte $15	; <な>
- D - I - 0x02EC56 21:AC46: 1E        .byte $1E	; <ほ>
- D - I - 0x02EC57 21:AC47: 18        .byte $18	; <ね>
- D - I - 0x02EC58 21:AC48: 1F        .byte $1F	; <ま>

- D - I - 0x02EC59 21:AC49: 08        .byte $08	; <く>
- D - I - 0x02EC5A 21:AC4A: 05        .byte $05	; <お>
- D - I - 0x02EC5B 21:AC4B: 18        .byte $18	; <ね>
- D - I - 0x02EC5C 21:AC4C: 35        .byte $35	; <2>
- D - I - 0x02EC5D 21:AC4D: 80        .byte $80
- D - I - 0x02EC5E 21:AC4E: 1B        .byte $1B	; <ひ>

- D - I - 0x02EC5F 21:AC4F: 00        .byte $00
- D - I - 0x02EC60 21:AC50: 06        .byte $06	; <か>
- D - I - 0x02EC61 21:AC51: 18        .byte $18	; <ね>
- D - I - 0x02EC62 21:AC52: 11        .byte $11	; <ち>

- D - I - 0x02EC63 21:AC53: 02        .byte $02	; <い>
- D - I - 0x02EC64 21:AC54: 24 AC     .word off_AC24



off_AC56:
- D - I - 0x02EC66 21:AC56: 08        .byte $08	; <く>
- D - I - 0x02EC67 21:AC57: 03        .byte $03	; <う>
- D - I - 0x02EC68 21:AC58: 18        .byte $18	; <ね>
- D - I - 0x02EC69 21:AC59: 36        .byte $36	; <3>
- D - I - 0x02EC6A 21:AC5A: 80        .byte $80
- D - I - 0x02EC6B 21:AC5B: 37        .byte $37	; <4>

- D - I - 0x02EC6C 21:AC5C: 08        .byte $08	; <く>
- D - I - 0x02EC6D 21:AC5D: 04        .byte $04	; <え>
- D - I - 0x02EC6E 21:AC5E: 18        .byte $18	; <ね>
- D - I - 0x02EC6F 21:AC5F: 3C        .byte $3C	; <9>
- D - I - 0x02EC70 21:AC60: 80        .byte $80
- D - I - 0x02EC71 21:AC61: 3D        .byte $3D	; <+>

- D - I - 0x02EC72 21:AC62: 08        .byte $08	; <く>
- D - I - 0x02EC73 21:AC63: 05        .byte $05	; <お>
- D - I - 0x02EC74 21:AC64: 18        .byte $18	; <ね>
- D - I - 0x02EC75 21:AC65: 3E        .byte $3E	; <Jr>
- D - I - 0x02EC76 21:AC66: 80        .byte $80
- D - I - 0x02EC77 21:AC67: 3F        .byte $3F	; <•>

- D - I - 0x02EC78 21:AC68: 00        .byte $00
- D - I - 0x02EC79 21:AC69: 06        .byte $06	; <か>
- D - I - 0x02EC7A 21:AC6A: 80        .byte $80
- D - I - 0x02EC7B 21:AC6B: 40        .byte $40	; <「>
; продолжение


off_AC6C:
- D - I - 0x02EC7C 21:AC6C: 08        .byte $08	; <く>
- D - I - 0x02EC7D 21:AC6D: 02        .byte $02	; <い>
- D - I - 0x02EC7E 21:AC6E: 11        .byte $11	; <ち>
- D - I - 0x02EC7F 21:AC6F: 24        .byte $24	; <や>
- D - I - 0x02EC80 21:AC70: 15        .byte $15	; <な>
- D - I - 0x02EC81 21:AC71: 25        .byte $25	; <ゆ>

- D - I - 0x02EC82 21:AC72: 08        .byte $08	; <く>
- D - I - 0x02EC83 21:AC73: 03        .byte $03	; <う>
- D - I - 0x02EC84 21:AC74: 11        .byte $11	; <ち>
- D - I - 0x02EC85 21:AC75: 26        .byte $26	; <よ>
- D - I - 0x02EC86 21:AC76: 15        .byte $15	; <な>
- D - I - 0x02EC87 21:AC77: 34        .byte $34	; <1>

- D - I - 0x02EC88 21:AC78: 08        .byte $08	; <く>
- D - I - 0x02EC89 21:AC79: 04        .byte $04	; <え>
- D - I - 0x02EC8A 21:AC7A: 11        .byte $11	; <ち>
- D - I - 0x02EC8B 21:AC7B: 2C        .byte $2C	; <わ>
- D - I - 0x02EC8C 21:AC7C: 15        .byte $15	; <な>
- D - I - 0x02EC8D 21:AC7D: 2D        .byte $2D	; <を>

- D - I - 0x02EC8E 21:AC7E: 02        .byte $02	; <い>
- D - I - 0x02EC8F 21:AC7F: A8 AB     .word off_ABA8



off_AC81:
- D - I - 0x02EC91 21:AC81: 08        .byte $08	; <く>
- D - I - 0x02EC92 21:AC82: 03        .byte $03	; <う>
- D - I - 0x02EC93 21:AC83: 18        .byte $18	; <ね>
- D - I - 0x02EC94 21:AC84: 42        .byte $42	; <イ>
- D - I - 0x02EC95 21:AC85: 80        .byte $80
- D - I - 0x02EC96 21:AC86: 48        .byte $48	; <ク>

- D - I - 0x02EC97 21:AC87: 08        .byte $08	; <く>
- D - I - 0x02EC98 21:AC88: 04        .byte $04	; <え>
- D - I - 0x02EC99 21:AC89: 18        .byte $18	; <ね>
- D - I - 0x02EC9A 21:AC8A: 38        .byte $38	; <5>
- D - I - 0x02EC9B 21:AC8B: 80        .byte $80
- D - I - 0x02EC9C 21:AC8C: 4A        .byte $4A	; <コ>

- D - I - 0x02EC9D 21:AC8D: 08        .byte $08	; <く>
- D - I - 0x02EC9E 21:AC8E: 05        .byte $05	; <お>
- D - I - 0x02EC9F 21:AC8F: 18        .byte $18	; <ね>
- D - I - 0x02ECA0 21:AC90: 3A        .byte $3A	; <7>
- D - I - 0x02ECA1 21:AC91: 80        .byte $80
- D - I - 0x02ECA2 21:AC92: 60        .byte $60	; <ミ>

- D - I - 0x02ECA3 21:AC93: 00        .byte $00
- D - I - 0x02ECA4 21:AC94: 06        .byte $06	; <か>
- D - I - 0x02ECA5 21:AC95: 18        .byte $18	; <ね>
- D - I - 0x02ECA6 21:AC96: 11        .byte $11	; <ち>

- D - I - 0x02ECA7 21:AC97: 02        .byte $02	; <い>
- D - I - 0x02ECA8 21:AC98: 6C AC     .word off_AC6C



off_AC9A:
- D - I - 0x02ECAA 21:AC9A: 08        .byte $08	; <く>
- D - I - 0x02ECAB 21:AC9B: 03        .byte $03	; <う>
- D - I - 0x02ECAC 21:AC9C: 18        .byte $18	; <ね>
- D - I - 0x02ECAD 21:AC9D: 62        .byte $62	; <メ>
- D - I - 0x02ECAE 21:AC9E: 80        .byte $80
- D - I - 0x02ECAF 21:AC9F: 63        .byte $63	; <モ>

- D - I - 0x02ECB0 21:ACA0: 08        .byte $08	; <く>
- D - I - 0x02ECB1 21:ACA1: 04        .byte $04	; <え>
- D - I - 0x02ECB2 21:ACA2: 18        .byte $18	; <ね>
- D - I - 0x02ECB3 21:ACA3: 68        .byte $68	; <リ>
- D - I - 0x02ECB4 21:ACA4: 80        .byte $80
- D - I - 0x02ECB5 21:ACA5: 69        .byte $69	; <ル>

- D - I - 0x02ECB6 21:ACA6: 08        .byte $08	; <く>
- D - I - 0x02ECB7 21:ACA7: 05        .byte $05	; <お>
- D - I - 0x02ECB8 21:ACA8: 18        .byte $18	; <ね>
- D - I - 0x02ECB9 21:ACA9: 6A        .byte $6A	; <レ>
- D - I - 0x02ECBA 21:ACAA: 80        .byte $80
- D - I - 0x02ECBB 21:ACAB: 6B        .byte $6B	; <ロ>

- D - I - 0x02ECBC 21:ACAC: 02        .byte $02	; <い>
- D - I - 0x02ECBD 21:ACAD: 6C AC     .word off_AC6C



off_ACAF:
- D - I - 0x02ECBF 21:ACAF: 10        .byte $10	; <た>
- D - I - 0x02ECC0 21:ACB0: 02        .byte $02	; <い>
- D - I - 0x02ECC1 21:ACB1: 10        .byte $10	; <た>
- D - I - 0x02ECC2 21:ACB2: 41        .byte $41	; <ア>
- D - I - 0x02ECC3 21:ACB3: 14        .byte $14	; <と>
- D - I - 0x02ECC4 21:ACB4: 44        .byte $44	; <エ>
- D - I - 0x02ECC5 21:ACB5: 18        .byte $18	; <ね>
- D - I - 0x02ECC6 21:ACB6: 30        .byte $30	; <ゃ>

- D - I - 0x02ECC7 21:ACB7: 20        .byte $20	; <み>
- D - I - 0x02ECC8 21:ACB8: 03        .byte $03	; <う>
- D - I - 0x02ECC9 21:ACB9: 11        .byte $11	; <ち>
- D - I - 0x02ECCA 21:ACBA: 43        .byte $43	; <ウ>
- D - I - 0x02ECCB 21:ACBB: 14        .byte $14	; <と>
- D - I - 0x02ECCC 21:ACBC: 46        .byte $46	; <カ>
- D - I - 0x02ECCD 21:ACBD: 15        .byte $15	; <な>
- D - I - 0x02ECCE 21:ACBE: 27        .byte $27	; <ら>
- D - I - 0x02ECCF 21:ACBF: 18        .byte $18	; <ね>
- D - I - 0x02ECD0 21:ACC0: 32        .byte $32	; <ょ>
- D - I - 0x02ECD1 21:ACC1: 80        .byte $80
- D - I - 0x02ECD2 21:ACC2: 13        .byte $13	; <て>

- D - I - 0x02ECD3 21:ACC3: 18        .byte $18	; <ね>
- D - I - 0x02ECD4 21:ACC4: 04        .byte $04	; <え>
- D - I - 0x02ECD5 21:ACC5: 11        .byte $11	; <ち>
- D - I - 0x02ECD6 21:ACC6: 49        .byte $49	; <ケ>
- D - I - 0x02ECD7 21:ACC7: 15        .byte $15	; <な>
- D - I - 0x02ECD8 21:ACC8: 4C        .byte $4C	; <シ>
- D - I - 0x02ECD9 21:ACC9: 18        .byte $18	; <ね>
- D - I - 0x02ECDA 21:ACCA: 4B        .byte $4B	; <サ>
- D - I - 0x02ECDB 21:ACCB: 80        .byte $80
- D - I - 0x02ECDC 21:ACCC: 19        .byte $19	; <の>

- D - I - 0x02ECDD 21:ACCD: 08        .byte $08	; <く>
- D - I - 0x02ECDE 21:ACCE: 05        .byte $05	; <お>
- D - I - 0x02ECDF 21:ACCF: 18        .byte $18	; <ね>
- D - I - 0x02ECE0 21:ACD0: 61        .byte $61	; <ム>
- D - I - 0x02ECE1 21:ACD1: 80        .byte $80
- D - I - 0x02ECE2 21:ACD2: 1B        .byte $1B	; <ひ>

- D - I - 0x02ECE3 21:ACD3: 00        .byte $00
- D - I - 0x02ECE4 21:ACD4: 06        .byte $06	; <か>
- D - I - 0x02ECE5 21:ACD5: 18        .byte $18	; <ね>
- D - I - 0x02ECE6 21:ACD6: 11        .byte $11	; <ち>

- D - I - 0x02ECE7 21:ACD7: 02        .byte $02	; <い>
- D - I - 0x02ECE8 21:ACD8: A8 AB     .word off_ABA8



off_ACDA:
- D - I - 0x02ECEA 21:ACDA: 08        .byte $08	; <く>
- D - I - 0x02ECEB 21:ACDB: 03        .byte $03	; <う>
- D - I - 0x02ECEC 21:ACDC: 18        .byte $18	; <ね>
- D - I - 0x02ECED 21:ACDD: 36        .byte $36	; <3>
- D - I - 0x02ECEE 21:ACDE: 80        .byte $80
- D - I - 0x02ECEF 21:ACDF: 37        .byte $37	; <4>

- D - I - 0x02ECF0 21:ACE0: 08        .byte $08	; <く>
- D - I - 0x02ECF1 21:ACE1: 04        .byte $04	; <え>
- D - I - 0x02ECF2 21:ACE2: 18        .byte $18	; <ね>
- D - I - 0x02ECF3 21:ACE3: 38        .byte $38	; <5>
- D - I - 0x02ECF4 21:ACE4: 80        .byte $80
- D - I - 0x02ECF5 21:ACE5: 19        .byte $19	; <の>

- D - I - 0x02ECF6 21:ACE6: 08        .byte $08	; <く>
- D - I - 0x02ECF7 21:ACE7: 05        .byte $05	; <お>
- D - I - 0x02ECF8 21:ACE8: 18        .byte $18	; <ね>
- D - I - 0x02ECF9 21:ACE9: 4E        .byte $4E	; <セ>
- D - I - 0x02ECFA 21:ACEA: 80        .byte $80
- D - I - 0x02ECFB 21:ACEB: 1B        .byte $1B	; <ひ>

- D - I - 0x02ECFC 21:ACEC: 00        .byte $00
- D - I - 0x02ECFD 21:ACED: 06        .byte $06	; <か>
- D - I - 0x02ECFE 21:ACEE: 18        .byte $18	; <ね>
- D - I - 0x02ECFF 21:ACEF: 11        .byte $11	; <ち>

- D - I - 0x02ED00 21:ACF0: 02        .byte $02	; <い>
- D - I - 0x02ED01 21:ACF1: 6C AC     .word off_AC6C



off_ACF3:
- D - I - 0x02ED03 21:ACF3: 18        .byte $18	; <ね>
- D - I - 0x02ED04 21:ACF4: 04        .byte $04	; <え>
- D - I - 0x02ED05 21:ACF5: 11        .byte $11	; <ち>
- D - I - 0x02ED06 21:ACF6: 2C        .byte $2C	; <わ>
- D - I - 0x02ED07 21:ACF7: 15        .byte $15	; <な>
- D - I - 0x02ED08 21:ACF8: 2D        .byte $2D	; <を>
- D - I - 0x02ED09 21:ACF9: 18        .byte $18	; <ね>
- D - I - 0x02ED0A 21:ACFA: 38        .byte $38	; <5>
- D - I - 0x02ED0B 21:ACFB: 80        .byte $80
- D - I - 0x02ED0C 21:ACFC: 64        .byte $64	; <ヤ>

- D - I - 0x02ED0D 21:ACFD: 08        .byte $08	; <く>
- D - I - 0x02ED0E 21:ACFE: 05        .byte $05	; <お>
- D - I - 0x02ED0F 21:ACFF: 18        .byte $18	; <ね>
- D - I - 0x02ED10 21:AD00: 3A        .byte $3A	; <7>
- D - I - 0x02ED11 21:AD01: 80        .byte $80
- D - I - 0x02ED12 21:AD02: 66        .byte $66	; <ヨ>

- D - I - 0x02ED13 21:AD03: 08        .byte $08	; <く>
- D - I - 0x02ED14 21:AD04: 06        .byte $06	; <か>
- D - I - 0x02ED15 21:AD05: 18        .byte $18	; <ね>
- D - I - 0x02ED16 21:AD06: 6E        .byte $6E	; <ン>
- D - I - 0x02ED17 21:AD07: 80        .byte $80
- D - I - 0x02ED18 21:AD08: 6C        .byte $6C	; <ワ>

- D - I - 0x02ED19 21:AD09: 02        .byte $02	; <い>
- D - I - 0x02ED1A 21:AD0A: 2A AC     .word off_AC2A



off_AD0C:
- D - I - 0x02ED1C 21:AD0C: 08        .byte $08	; <く>
- D - I - 0x02ED1D 21:AD0D: 03        .byte $03	; <う>
- D - I - 0x02ED1E 21:AD0E: 18        .byte $18	; <ね>
- D - I - 0x02ED1F 21:AD0F: 42        .byte $42	; <イ>
- D - I - 0x02ED20 21:AD10: 80        .byte $80
- D - I - 0x02ED21 21:AD11: 48        .byte $48	; <ク>

- D - I - 0x02ED22 21:AD12: 08        .byte $08	; <く>
- D - I - 0x02ED23 21:AD13: 04        .byte $04	; <え>
- D - I - 0x02ED24 21:AD14: 18        .byte $18	; <ね>
- D - I - 0x02ED25 21:AD15: 38        .byte $38	; <5>
- D - I - 0x02ED26 21:AD16: 80        .byte $80
- D - I - 0x02ED27 21:AD17: 4A        .byte $4A	; <コ>

- D - I - 0x02ED28 21:AD18: 08        .byte $08	; <く>
- D - I - 0x02ED29 21:AD19: 05        .byte $05	; <お>
- D - I - 0x02ED2A 21:AD1A: 18        .byte $18	; <ね>
- D - I - 0x02ED2B 21:AD1B: 3A        .byte $3A	; <7>
- D - I - 0x02ED2C 21:AD1C: 80        .byte $80
- D - I - 0x02ED2D 21:AD1D: 45        .byte $45	; <オ>

- D - I - 0x02ED2E 21:AD1E: 00        .byte $00
- D - I - 0x02ED2F 21:AD1F: 06        .byte $06	; <か>
- D - I - 0x02ED30 21:AD20: 18        .byte $18	; <ね>
- D - I - 0x02ED31 21:AD21: 11        .byte $11	; <ち>

- D - I - 0x02ED32 21:AD22: 02        .byte $02	; <い>
- D - I - 0x02ED33 21:AD23: 6C AC     .word off_AC6C



off_AD25:
- D - I - 0x02ED35 21:AD25: 00        .byte $00
- D - I - 0x02ED36 21:AD26: 03        .byte $03	; <う>
- D - I - 0x02ED37 21:AD27: 18        .byte $18	; <ね>
- D - I - 0x02ED38 21:AD28: 4D        .byte $4D	; <ス>

- D - I - 0x02ED39 21:AD29: 18        .byte $18	; <ね>
- D - I - 0x02ED3A 21:AD2A: 04        .byte $04	; <え>
- D - I - 0x02ED3B 21:AD2B: 11        .byte $11	; <ち>
- D - I - 0x02ED3C 21:AD2C: 2C        .byte $2C	; <わ>
- D - I - 0x02ED3D 21:AD2D: 15        .byte $15	; <な>
- D - I - 0x02ED3E 21:AD2E: 2D        .byte $2D	; <を>
- D - I - 0x02ED3F 21:AD2F: 18        .byte $18	; <ね>
- D - I - 0x02ED40 21:AD30: 47        .byte $47	; <キ>
- D - I - 0x02ED41 21:AD31: 80        .byte $80
- D - I - 0x02ED42 21:AD32: 19        .byte $19	; <の>

- D - I - 0x02ED43 21:AD33: 08        .byte $08	; <く>
- D - I - 0x02ED44 21:AD34: 05        .byte $05	; <お>
- D - I - 0x02ED45 21:AD35: 18        .byte $18	; <ね>
- D - I - 0x02ED46 21:AD36: 1C        .byte $1C	; <ふ>
- D - I - 0x02ED47 21:AD37: 80        .byte $80
- D - I - 0x02ED48 21:AD38: 1D        .byte $1D	; <へ>

- D - I - 0x02ED49 21:AD39: 02        .byte $02	; <い>
- D - I - 0x02ED4A 21:AD3A: 2E AC     .word off_AC2E



off_AD3C_8A:
- D - I - 0x02ED4C 21:AD3C: 08        .byte $08	; <く>
- D - I - 0x02ED4D 21:AD3D: 04        .byte $04	; <え>
- D - I - 0x02ED4E 21:AD3E: 0F        .byte $0F	; <そ>
- D - I - 0x02ED4F 21:AD3F: 55        .byte $55	; <ナ>
- D - I - 0x02ED50 21:AD40: 13        .byte $13	; <て>
- D - I - 0x02ED51 21:AD41: 57        .byte $57	; <ヌ>

- D - I - 0x02ED52 21:AD42: 08        .byte $08	; <く>
- D - I - 0x02ED53 21:AD43: 05        .byte $05	; <お>
- D - I - 0x02ED54 21:AD44: 0B        .byte $0B	; <さ>
- D - I - 0x02ED55 21:AD45: 58        .byte $58	; <ネ>
- D - I - 0x02ED56 21:AD46: 17        .byte $17	; <ぬ>
- D - I - 0x02ED57 21:AD47: 5D        .byte $5D	; <ヘ>

- D - I - 0x02ED58 21:AD48: 08        .byte $08	; <く>
- D - I - 0x02ED59 21:AD49: 06        .byte $06	; <か>
- D - I - 0x02ED5A 21:AD4A: 0B        .byte $0B	; <さ>
- D - I - 0x02ED5B 21:AD4B: 5A        .byte $5A	; <ハ>
- D - I - 0x02ED5C 21:AD4C: 17        .byte $17	; <ぬ>
- D - I - 0x02ED5D 21:AD4D: 5F        .byte $5F	; <マ>
; продолжение


off_AD4E:
- D - I - 0x02ED5E 21:AD4E: 00        .byte $00
- D - I - 0x02ED5F 21:AD4F: 07        .byte $07	; <き>
- D - I - 0x02ED60 21:AD50: 0F        .byte $0F	; <そ>
- D - I - 0x02ED61 21:AD51: 71        .byte $71	; <ュ>
; продолжение


off_AD52:
- D - I - 0x02ED62 21:AD52: 08        .byte $08	; <く>
- D - I - 0x02ED63 21:AD53: 05        .byte $05	; <お>
- D - I - 0x02ED64 21:AD54: 0F        .byte $0F	; <そ>
- D - I - 0x02ED65 21:AD55: 59        .byte $59	; <ノ>
- D - I - 0x02ED66 21:AD56: 13        .byte $13	; <て>
- D - I - 0x02ED67 21:AD57: 5C        .byte $5C	; <フ>

- D - I - 0x02ED68 21:AD58: 08        .byte $08	; <く>
- D - I - 0x02ED69 21:AD59: 06        .byte $06	; <か>
- D - I - 0x02ED6A 21:AD5A: 0F        .byte $0F	; <そ>
- D - I - 0x02ED6B 21:AD5B: 5B        .byte $5B	; <ヒ>
- D - I - 0x02ED6C 21:AD5C: 13        .byte $13	; <て>
- D - I - 0x02ED6D 21:AD5D: 5E        .byte $5E	; <ホ>

- D - I - 0x02ED6E 21:AD5E: 00        .byte $00
- D - I - 0x02ED6F 21:AD5F: 07        .byte $07	; <き>
- D - I - 0x02ED70 21:AD60: 13        .byte $13	; <て>
- D - I - 0x02ED71 21:AD61: 74        .byte $74	; <ィ>

- D - I - 0x02ED72 21:AD62: 02        .byte $02	; <い>
- D - I - 0x02ED73 21:AD63: 67 AB     .word off_AB67



off_AD65_8B:
- D - I - 0x02ED75 21:AD65: 10        .byte $10	; <た>
- D - I - 0x02ED76 21:AD66: 04        .byte $04	; <え>
- D - I - 0x02ED77 21:AD67: 0F        .byte $0F	; <そ>
- D - I - 0x02ED78 21:AD68: 65        .byte $65	; <ユ>
- D - I - 0x02ED79 21:AD69: 13        .byte $13	; <て>
- D - I - 0x02ED7A 21:AD6A: 70        .byte $70	; <ャ>
- D - I - 0x02ED7B 21:AD6B: 17        .byte $17	; <ぬ>
- D - I - 0x02ED7C 21:AD6C: 75        .byte $75	; <ェ>

- D - I - 0x02ED7D 21:AD6D: 08        .byte $08	; <く>
- D - I - 0x02ED7E 21:AD6E: 05        .byte $05	; <お>
- D - I - 0x02ED7F 21:AD6F: 0B        .byte $0B	; <さ>
- D - I - 0x02ED80 21:AD70: 58        .byte $58	; <ネ>
- D - I - 0x02ED81 21:AD71: 17        .byte $17	; <ぬ>
- D - I - 0x02ED82 21:AD72: 77        .byte $77	; <:>

- D - I - 0x02ED83 21:AD73: 08        .byte $08	; <く>
- D - I - 0x02ED84 21:AD74: 06        .byte $06	; <か>
- D - I - 0x02ED85 21:AD75: 0B        .byte $0B	; <さ>
- D - I - 0x02ED86 21:AD76: 5A        .byte $5A	; <ハ>
- D - I - 0x02ED87 21:AD77: 17        .byte $17	; <ぬ>
- D - I - 0x02ED88 21:AD78: 4F        .byte $4F	; <ソ>

- D - I - 0x02ED89 21:AD79: 02        .byte $02	; <い>
- D - I - 0x02ED8A 21:AD7A: 4E AD     .word off_AD4E



off_AD7C_8C:
- D - I - 0x02ED8C 21:AD7C: 10        .byte $10	; <た>
- D - I - 0x02ED8D 21:AD7D: 04        .byte $04	; <え>
- D - I - 0x02ED8E 21:AD7E: 0F        .byte $0F	; <そ>
- D - I - 0x02ED8F 21:AD7F: 65        .byte $65	; <ユ>
- D - I - 0x02ED90 21:AD80: 13        .byte $13	; <て>
- D - I - 0x02ED91 21:AD81: 67        .byte $67	; <ラ>
- D - I - 0x02ED92 21:AD82: 17        .byte $17	; <ぬ>
- D - I - 0x02ED93 21:AD83: 72        .byte $72	; <ョ>

- D - I - 0x02ED94 21:AD84: 08        .byte $08	; <く>
- D - I - 0x02ED95 21:AD85: 05        .byte $05	; <お>
- D - I - 0x02ED96 21:AD86: 0B        .byte $0B	; <さ>
- D - I - 0x02ED97 21:AD87: 58        .byte $58	; <ネ>
- D - I - 0x02ED98 21:AD88: 17        .byte $17	; <ぬ>
- D - I - 0x02ED99 21:AD89: 73        .byte $73	; <ヮ>

- D - I - 0x02ED9A 21:AD8A: 08        .byte $08	; <く>
- D - I - 0x02ED9B 21:AD8B: 06        .byte $06	; <か>
- D - I - 0x02ED9C 21:AD8C: 0B        .byte $0B	; <さ>
- D - I - 0x02ED9D 21:AD8D: 5A        .byte $5A	; <ハ>
- D - I - 0x02ED9E 21:AD8E: 17        .byte $17	; <ぬ>
- D - I - 0x02ED9F 21:AD8F: 4F        .byte $4F	; <ソ>

- D - I - 0x02EDA0 21:AD90: 02        .byte $02	; <い>
- D - I - 0x02EDA1 21:AD91: 4E AD     .word off_AD4E



off_AD93_8D:
- D - I - 0x02EDA3 21:AD93: 08        .byte $08	; <く>
- D - I - 0x02EDA4 21:AD94: 04        .byte $04	; <え>
- D - I - 0x02EDA5 21:AD95: 0F        .byte $0F	; <そ>
- D - I - 0x02EDA6 21:AD96: 55        .byte $55	; <ナ>
- D - I - 0x02EDA7 21:AD97: 13        .byte $13	; <て>
- D - I - 0x02EDA8 21:AD98: 57        .byte $57	; <ヌ>

- D - I - 0x02EDA9 21:AD99: 08        .byte $08	; <く>
- D - I - 0x02EDAA 21:AD9A: 05        .byte $05	; <お>
- D - I - 0x02EDAB 21:AD9B: 0B        .byte $0B	; <さ>
- D - I - 0x02EDAC 21:AD9C: 76        .byte $76	; <ォ>
- D - I - 0x02EDAD 21:AD9D: 17        .byte $17	; <ぬ>
- D - I - 0x02EDAE 21:AD9E: 5D        .byte $5D	; <ヘ>

- D - I - 0x02EDAF 21:AD9F: 08        .byte $08	; <く>
- D - I - 0x02EDB0 21:ADA0: 06        .byte $06	; <か>
- D - I - 0x02EDB1 21:ADA1: 0B        .byte $0B	; <さ>
- D - I - 0x02EDB2 21:ADA2: 6D        .byte $6D	; <ヲ>
- D - I - 0x02EDB3 21:ADA3: 17        .byte $17	; <ぬ>
- D - I - 0x02EDB4 21:ADA4: 5F        .byte $5F	; <マ>

- D - I - 0x02EDB5 21:ADA5: 08        .byte $08	; <く>
- D - I - 0x02EDB6 21:ADA6: 07        .byte $07	; <き>
- D - I - 0x02EDB7 21:ADA7: 0B        .byte $0B	; <さ>
- D - I - 0x02EDB8 21:ADA8: 6F        .byte $6F	; <ッ>
- D - I - 0x02EDB9 21:ADA9: 0F        .byte $0F	; <そ>
- D - I - 0x02EDBA 21:ADAA: 7A        .byte $7A	; <、>

- D - I - 0x02EDBB 21:ADAB: 02        .byte $02	; <い>
- D - I - 0x02EDBC 21:ADAC: 52 AD     .word off_AD52



off_ADAE_8E:
- D - I - 0x02EDBE 21:ADAE: 08        .byte $08	; <く>
- D - I - 0x02EDBF 21:ADAF: 04        .byte $04	; <え>
- D - I - 0x02EDC0 21:ADB0: 0F        .byte $0F	; <そ>
- D - I - 0x02EDC1 21:ADB1: 55        .byte $55	; <ナ>
- D - I - 0x02EDC2 21:ADB2: 13        .byte $13	; <て>
- D - I - 0x02EDC3 21:ADB3: 57        .byte $57	; <ヌ>

- D - I - 0x02EDC4 21:ADB4: 08        .byte $08	; <く>
- D - I - 0x02EDC5 21:ADB5: 05        .byte $05	; <お>
- D - I - 0x02EDC6 21:ADB6: 0B        .byte $0B	; <さ>
- D - I - 0x02EDC7 21:ADB7: 78        .byte $78	; <?>
- D - I - 0x02EDC8 21:ADB8: 17        .byte $17	; <ぬ>
- D - I - 0x02EDC9 21:ADB9: 5D        .byte $5D	; <ヘ>

- D - I - 0x02EDCA 21:ADBA: 08        .byte $08	; <く>
- D - I - 0x02EDCB 21:ADBB: 06        .byte $06	; <か>
- D - I - 0x02EDCC 21:ADBC: 0B        .byte $0B	; <さ>
- D - I - 0x02EDCD 21:ADBD: 79        .byte $79	; <!>
- D - I - 0x02EDCE 21:ADBE: 17        .byte $17	; <ぬ>
- D - I - 0x02EDCF 21:ADBF: 5F        .byte $5F	; <マ>

- D - I - 0x02EDD0 21:ADC0: 08        .byte $08	; <く>
- D - I - 0x02EDD1 21:ADC1: 07        .byte $07	; <き>
- D - I - 0x02EDD2 21:ADC2: 0B        .byte $0B	; <さ>
- D - I - 0x02EDD3 21:ADC3: 7B        .byte $7B	; <。>
- D - I - 0x02EDD4 21:ADC4: 0F        .byte $0F	; <そ>
- D - I - 0x02EDD5 21:ADC5: 7C        .byte $7C	; <~>

- D - I - 0x02EDD6 21:ADC6: 02        .byte $02	; <い>
- D - I - 0x02EDD7 21:ADC7: 52 AD     .word off_AD52



off_ADC9_8F:
- D - I - 0x02EDD9 21:ADC9: 10        .byte $10	; <た>
- D - I - 0x02EDDA 21:ADCA: 18        .byte $18	; <ね>
- D - I - 0x02EDDB 21:ADCB: 43        .byte $43	; <ウ>
- D - I - 0x02EDDC 21:ADCC: 85        .byte $85	; <E>
- D - I - 0x02EDDD 21:ADCD: 47        .byte $47	; <キ>
- D - I - 0x02EDDE 21:ADCE: 7D        .byte $7D	; <ー>
- D - I - 0x02EDDF 21:ADCF: 87        .byte $87	; <G>
- D - I - 0x02EDE0 21:ADD0: 84        .byte $84	; <D>

- D - I - 0x02EDE1 21:ADD1: 10        .byte $10	; <た>
- D - I - 0x02EDE2 21:ADD2: 19        .byte $19	; <の>
- D - I - 0x02EDE3 21:ADD3: 43        .byte $43	; <ウ>
- D - I - 0x02EDE4 21:ADD4: 7E        .byte $7E	; <.>
- D - I - 0x02EDE5 21:ADD5: 47        .byte $47	; <キ>
- D - I - 0x02EDE6 21:ADD6: 7F        .byte $7F	; <,>
- D - I - 0x02EDE7 21:ADD7: 87        .byte $87	; <G>
- D - I - 0x02EDE8 21:ADD8: 86        .byte $86	; <F>

- D - I - 0x02EDE9 21:ADD9: 10        .byte $10	; <た>
- D - I - 0x02EDEA 21:ADDA: 1A        .byte $1A	; <は>
- D - I - 0x02EDEB 21:ADDB: 43        .byte $43	; <ウ>
- D - I - 0x02EDEC 21:ADDC: 82        .byte $82	; <B>
- D - I - 0x02EDED 21:ADDD: 47        .byte $47	; <キ>
- D - I - 0x02EDEE 21:ADDE: 83        .byte $83	; <C>
- D - I - 0x02EDEF 21:ADDF: 87        .byte $87	; <G>
- D - I - 0x02EDF0 21:ADE0: 87        .byte $87	; <G>

- D - I - 0x02EDF1 21:ADE1: 01        .byte $01	; <あ>



off_ADE2_90:
- D - I - 0x02EDF2 21:ADE2: 28        .byte $28	; <り>
- D - I - 0x02EDF3 21:ADE3: 02        .byte $02	; <い>
- D - I - 0x02EDF4 21:ADE4: 14        .byte $14	; <と>
- D - I - 0x02EDF5 21:ADE5: 09        .byte $09	; <け>
- D - I - 0x02EDF6 21:ADE6: 18        .byte $18	; <ね>
- D - I - 0x02EDF7 21:ADE7: 0C        .byte $0C	; <し>
- D - I - 0x02EDF8 21:ADE8: 80        .byte $80
- D - I - 0x02EDF9 21:ADE9: 0D        .byte $0D	; <す>
- D - I - 0x02EDFA 21:ADEA: C0        .byte $C0	; <ヅ>
- D - I - 0x02EDFB 21:ADEB: 18        .byte $18	; <ね>
- D - I - 0x02EDFC 21:ADEC: C4        .byte $C4	; <ビ>
- D - I - 0x02EDFD 21:ADED: 19        .byte $19	; <の>
- D - I - 0x02EDFE 21:ADEE: C8        .byte $C8	; <ぱ>
- D - I - 0x02EDFF 21:ADEF: 17        .byte $17	; <ぬ>

- D - I - 0x02EE00 21:ADF0: 30        .byte $30	; <ゃ>
- D - I - 0x02EE01 21:ADF1: 03        .byte $03	; <う>
- D - I - 0x02EE02 21:ADF2: 10        .byte $10	; <た>
- D - I - 0x02EE03 21:ADF3: 0A        .byte $0A	; <こ>
- D - I - 0x02EE04 21:ADF4: 14        .byte $14	; <と>
- D - I - 0x02EE05 21:ADF5: 0B        .byte $0B	; <さ>
- D - I - 0x02EE06 21:ADF6: 18        .byte $18	; <ね>
- D - I - 0x02EE07 21:ADF7: 0E        .byte $0E	; <せ>
- D - I - 0x02EE08 21:ADF8: 80        .byte $80
- D - I - 0x02EE09 21:ADF9: 0F        .byte $0F	; <そ>
- D - I - 0x02EE0A 21:ADFA: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE0B 21:ADFB: 1A        .byte $1A	; <は>
- D - I - 0x02EE0C 21:ADFC: C4        .byte $C4	; <ビ>
- D - I - 0x02EE0D 21:ADFD: 1B        .byte $1B	; <ひ>
- D - I - 0x02EE0E 21:ADFE: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE0F 21:ADFF: 08        .byte $08	; <く>

- D - I - 0x02EE10 21:AE00: 30        .byte $30	; <ゃ>
- D - I - 0x02EE11 21:AE01: 04        .byte $04	; <え>
- D - I - 0x02EE12 21:AE02: 10        .byte $10	; <た>
- D - I - 0x02EE13 21:AE03: 20        .byte $20	; <み>
- D - I - 0x02EE14 21:AE04: 14        .byte $14	; <と>
- D - I - 0x02EE15 21:AE05: 21        .byte $21	; <む>
- D - I - 0x02EE16 21:AE06: 18        .byte $18	; <ね>
- D - I - 0x02EE17 21:AE07: 24        .byte $24	; <や>
- D - I - 0x02EE18 21:AE08: 80        .byte $80
- D - I - 0x02EE19 21:AE09: 25        .byte $25	; <ゆ>
- D - I - 0x02EE1A 21:AE0A: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE1B 21:AE0B: 30        .byte $30	; <ゃ>
- D - I - 0x02EE1C 21:AE0C: C4        .byte $C4	; <ビ>
- D - I - 0x02EE1D 21:AE0D: 31        .byte $31	; <ゅ>
- D - I - 0x02EE1E 21:AE0E: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE1F 21:AE0F: 34        .byte $34	; <1>

- D - I - 0x02EE20 21:AE10: 30        .byte $30	; <ゃ>
- D - I - 0x02EE21 21:AE11: 05        .byte $05	; <お>
- D - I - 0x02EE22 21:AE12: 10        .byte $10	; <た>
- D - I - 0x02EE23 21:AE13: 1C        .byte $1C	; <ふ>
- D - I - 0x02EE24 21:AE14: 14        .byte $14	; <と>
- D - I - 0x02EE25 21:AE15: 1D        .byte $1D	; <へ>
- D - I - 0x02EE26 21:AE16: 18        .byte $18	; <ね>
- D - I - 0x02EE27 21:AE17: 1E        .byte $1E	; <ほ>
- D - I - 0x02EE28 21:AE18: 80        .byte $80
- D - I - 0x02EE29 21:AE19: 1F        .byte $1F	; <ま>
- D - I - 0x02EE2A 21:AE1A: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE2B 21:AE1B: 35        .byte $35	; <2>
- D - I - 0x02EE2C 21:AE1C: C4        .byte $C4	; <ビ>
- D - I - 0x02EE2D 21:AE1D: 22        .byte $22	; <め>
- D - I - 0x02EE2E 21:AE1E: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE2F 21:AE1F: 36        .byte $36	; <3>
; продолжение


off_AE20:
- D - I - 0x02EE30 21:AE20: 00        .byte $00
- D - I - 0x02EE31 21:AE21: 00        .byte $00
- D - I - 0x02EE32 21:AE22: 10        .byte $10	; <た>
- D - I - 0x02EE33 21:AE23: 04        .byte $04	; <え>

- D - I - 0x02EE34 21:AE24: 20        .byte $20	; <み>
- D - I - 0x02EE35 21:AE25: 01        .byte $01	; <あ>
- D - I - 0x02EE36 21:AE26: 10        .byte $10	; <た>
- D - I - 0x02EE37 21:AE27: 06        .byte $06	; <か>
- D - I - 0x02EE38 21:AE28: 14        .byte $14	; <と>
- D - I - 0x02EE39 21:AE29: 07        .byte $07	; <き>
- D - I - 0x02EE3A 21:AE2A: 18        .byte $18	; <ね>
- D - I - 0x02EE3B 21:AE2B: 12        .byte $12	; <つ>
- D - I - 0x02EE3C 21:AE2C: 80        .byte $80
- D - I - 0x02EE3D 21:AE2D: 13        .byte $13	; <て>
- D - I - 0x02EE3E 21:AE2E: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE3F 21:AE2F: 16        .byte $16	; <に>

- D - I - 0x02EE40 21:AE30: 20        .byte $20	; <み>
- D - I - 0x02EE41 21:AE31: 06        .byte $06	; <か>
- D - I - 0x02EE42 21:AE32: 10        .byte $10	; <た>
- D - I - 0x02EE43 21:AE33: 05        .byte $05	; <お>
- D - I - 0x02EE44 21:AE34: 14        .byte $14	; <と>
- D - I - 0x02EE45 21:AE35: 10        .byte $10	; <た>
- D - I - 0x02EE46 21:AE36: 18        .byte $18	; <ね>
- D - I - 0x02EE47 21:AE37: 11        .byte $11	; <ち>
- D - I - 0x02EE48 21:AE38: 80        .byte $80
- D - I - 0x02EE49 21:AE39: 14        .byte $14	; <と>
- D - I - 0x02EE4A 21:AE3A: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE4B 21:AE3B: 15        .byte $15	; <な>

- D - I - 0x02EE4C 21:AE3C: 08        .byte $08	; <く>
- D - I - 0x02EE4D 21:AE3D: 07        .byte $07	; <き>
- D - I - 0x02EE4E 21:AE3E: 10        .byte $10	; <た>
- D - I - 0x02EE4F 21:AE3F: 02        .byte $02	; <い>
- D - I - 0x02EE50 21:AE40: 14        .byte $14	; <と>
- D - I - 0x02EE51 21:AE41: 03        .byte $03	; <う>

- D - I - 0x02EE52 21:AE42: 00        .byte $00
- D - I - 0x02EE53 21:AE43: 02        .byte $02	; <い>
- D - I - 0x02EE54 21:AE44: 10        .byte $10	; <た>
- D - I - 0x02EE55 21:AE45: 4E        .byte $4E	; <セ>

- D - I - 0x02EE56 21:AE46: 01        .byte $01	; <あ>



off_AE47_91:
- D - I - 0x02EE57 21:AE47: 28        .byte $28	; <り>
- D - I - 0x02EE58 21:AE48: 02        .byte $02	; <い>
- D - I - 0x02EE59 21:AE49: 14        .byte $14	; <と>
- D - I - 0x02EE5A 21:AE4A: 23        .byte $23	; <も>
- D - I - 0x02EE5B 21:AE4B: 18        .byte $18	; <ね>
- D - I - 0x02EE5C 21:AE4C: 26        .byte $26	; <よ>
- D - I - 0x02EE5D 21:AE4D: 80        .byte $80
- D - I - 0x02EE5E 21:AE4E: 27        .byte $27	; <ら>
- D - I - 0x02EE5F 21:AE4F: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE60 21:AE50: 32        .byte $32	; <ょ>
- D - I - 0x02EE61 21:AE51: C4        .byte $C4	; <ビ>
- D - I - 0x02EE62 21:AE52: 33        .byte $33	; <0>
- D - I - 0x02EE63 21:AE53: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE64 21:AE54: 17        .byte $17	; <ぬ>

- D - I - 0x02EE65 21:AE55: 30        .byte $30	; <ゃ>
- D - I - 0x02EE66 21:AE56: 03        .byte $03	; <う>
- D - I - 0x02EE67 21:AE57: 10        .byte $10	; <た>
- D - I - 0x02EE68 21:AE58: 28        .byte $28	; <り>
- D - I - 0x02EE69 21:AE59: 14        .byte $14	; <と>
- D - I - 0x02EE6A 21:AE5A: 29        .byte $29	; <る>
- D - I - 0x02EE6B 21:AE5B: 18        .byte $18	; <ね>
- D - I - 0x02EE6C 21:AE5C: 2C        .byte $2C	; <わ>
- D - I - 0x02EE6D 21:AE5D: 80        .byte $80
- D - I - 0x02EE6E 21:AE5E: 2D        .byte $2D	; <を>
- D - I - 0x02EE6F 21:AE5F: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE70 21:AE60: 38        .byte $38	; <5>
- D - I - 0x02EE71 21:AE61: C4        .byte $C4	; <ビ>
- D - I - 0x02EE72 21:AE62: 39        .byte $39	; <6>
- D - I - 0x02EE73 21:AE63: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE74 21:AE64: 3C        .byte $3C	; <9>

- D - I - 0x02EE75 21:AE65: 30        .byte $30	; <ゃ>
- D - I - 0x02EE76 21:AE66: 04        .byte $04	; <え>
- D - I - 0x02EE77 21:AE67: 10        .byte $10	; <た>
- D - I - 0x02EE78 21:AE68: 2A        .byte $2A	; <れ>
- D - I - 0x02EE79 21:AE69: 14        .byte $14	; <と>
- D - I - 0x02EE7A 21:AE6A: 2B        .byte $2B	; <ろ>
- D - I - 0x02EE7B 21:AE6B: 18        .byte $18	; <ね>
- D - I - 0x02EE7C 21:AE6C: 2E        .byte $2E	; <ん>
- D - I - 0x02EE7D 21:AE6D: 80        .byte $80
- D - I - 0x02EE7E 21:AE6E: 2F        .byte $2F	; <っ>
- D - I - 0x02EE7F 21:AE6F: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE80 21:AE70: 3A        .byte $3A	; <7>
- D - I - 0x02EE81 21:AE71: C4        .byte $C4	; <ビ>
- D - I - 0x02EE82 21:AE72: 3B        .byte $3B	; <8>
- D - I - 0x02EE83 21:AE73: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE84 21:AE74: 3E        .byte $3E	; <Jr>

- D - I - 0x02EE85 21:AE75: 30        .byte $30	; <ゃ>
- D - I - 0x02EE86 21:AE76: 05        .byte $05	; <お>
- D - I - 0x02EE87 21:AE77: 10        .byte $10	; <た>
- D - I - 0x02EE88 21:AE78: 1C        .byte $1C	; <ふ>
- D - I - 0x02EE89 21:AE79: 14        .byte $14	; <と>
- D - I - 0x02EE8A 21:AE7A: 37        .byte $37	; <4>
- D - I - 0x02EE8B 21:AE7B: 18        .byte $18	; <ね>
- D - I - 0x02EE8C 21:AE7C: 3D        .byte $3D	; <+>
- D - I - 0x02EE8D 21:AE7D: 80        .byte $80
- D - I - 0x02EE8E 21:AE7E: 3F        .byte $3F	; <•>
- D - I - 0x02EE8F 21:AE7F: C0        .byte $C0	; <ヅ>
- D - I - 0x02EE90 21:AE80: 58        .byte $58	; <ネ>
- D - I - 0x02EE91 21:AE81: C4        .byte $C4	; <ビ>
- D - I - 0x02EE92 21:AE82: 59        .byte $59	; <ノ>
- D - I - 0x02EE93 21:AE83: C8        .byte $C8	; <ぱ>
- D - I - 0x02EE94 21:AE84: 36        .byte $36	; <3>

- D - I - 0x02EE95 21:AE85: 02        .byte $02	; <い>
- D - I - 0x02EE96 21:AE86: 20 AE     .word off_AE20



off_AE88_92:
- D - I - 0x02EE98 21:AE88: 20        .byte $20	; <み>
- D - I - 0x02EE99 21:AE89: 02        .byte $02	; <い>
- D - I - 0x02EE9A 21:AE8A: 14        .byte $14	; <と>
- D - I - 0x02EE9B 21:AE8B: 4F        .byte $4F	; <ソ>
- D - I - 0x02EE9C 21:AE8C: 18        .byte $18	; <ね>
- D - I - 0x02EE9D 21:AE8D: 5A        .byte $5A	; <ハ>
- D - I - 0x02EE9E 21:AE8E: 80        .byte $80
- D - I - 0x02EE9F 21:AE8F: 5B        .byte $5B	; <ヒ>
- D - I - 0x02EEA0 21:AE90: C0        .byte $C0	; <ヅ>
- D - I - 0x02EEA1 21:AE91: 5E        .byte $5E	; <ホ>
- D - I - 0x02EEA2 21:AE92: C4        .byte $C4	; <ビ>
- D - I - 0x02EEA3 21:AE93: 5F        .byte $5F	; <マ>

- D - I - 0x02EEA4 21:AE94: 20        .byte $20	; <み>
- D - I - 0x02EEA5 21:AE95: 03        .byte $03	; <う>
- D - I - 0x02EEA6 21:AE96: 14        .byte $14	; <と>
- D - I - 0x02EEA7 21:AE97: 64        .byte $64	; <ヤ>
- D - I - 0x02EEA8 21:AE98: 18        .byte $18	; <ね>
- D - I - 0x02EEA9 21:AE99: 65        .byte $65	; <ユ>
- D - I - 0x02EEAA 21:AE9A: 80        .byte $80
- D - I - 0x02EEAB 21:AE9B: 51        .byte $51	; <チ>
- D - I - 0x02EEAC 21:AE9C: C0        .byte $C0	; <ヅ>
- D - I - 0x02EEAD 21:AE9D: 54        .byte $54	; <ト>
- D - I - 0x02EEAE 21:AE9E: C4        .byte $C4	; <ビ>
- D - I - 0x02EEAF 21:AE9F: 55        .byte $55	; <ナ>

- D - I - 0x02EEB0 21:AEA0: 08        .byte $08	; <く>
- D - I - 0x02EEB1 21:AEA1: 04        .byte $04	; <え>
- D - I - 0x02EEB2 21:AEA2: 14        .byte $14	; <と>
- D - I - 0x02EEB3 21:AEA3: 66        .byte $66	; <ヨ>
- D - I - 0x02EEB4 21:AEA4: 18        .byte $18	; <ね>
- D - I - 0x02EEB5 21:AEA5: 67        .byte $67	; <ラ>

- D - I - 0x02EEB6 21:AEA6: 20        .byte $20	; <み>
- D - I - 0x02EEB7 21:AEA7: 05        .byte $05	; <お>
- D - I - 0x02EEB8 21:AEA8: 10        .byte $10	; <た>
- D - I - 0x02EEB9 21:AEA9: 53        .byte $53	; <テ>
- D - I - 0x02EEBA 21:AEAA: 14        .byte $14	; <と>
- D - I - 0x02EEBB 21:AEAB: 56        .byte $56	; <ニ>
- D - I - 0x02EEBC 21:AEAC: 18        .byte $18	; <ね>
- D - I - 0x02EEBD 21:AEAD: 57        .byte $57	; <ヌ>
- D - I - 0x02EEBE 21:AEAE: 80        .byte $80
- D - I - 0x02EEBF 21:AEAF: 5C        .byte $5C	; <フ>
- D - I - 0x02EEC0 21:AEB0: C0        .byte $C0	; <ヅ>
- D - I - 0x02EEC1 21:AEB1: 5D        .byte $5D	; <ヘ>

- D - I - 0x02EEC2 21:AEB2: 02        .byte $02	; <い>
- D - I - 0x02EEC3 21:AEB3: 20 AE     .word off_AE20



off_AEB5_93:
- D - I - 0x02EEC5 21:AEB5: 03        .byte $03	; <う>
- D - I - 0x02EEC6 21:AEB6: CE AE     .word off_AECE
- D - I - 0x02EEC8 21:AEB8: 07 AF     .word off_AF07
- D - I - 0x02EECA 21:AEBA: 16 AF     .word off_AF16
- D - I - 0x02EECC 21:AEBC: CE AE     .word off_AECE
- D - I - 0x02EECE 21:AEBE: 25 AF     .word off_AF25
- D - I - 0x02EED0 21:AEC0: 16 AF     .word off_AF16
- D - I - 0x02EED2 21:AEC2: 34 AF     .word off_AF34
- D - I - 0x02EED4 21:AEC4: 3D AF     .word off_AF3D
- D - I - 0x02EED6 21:AEC6: 16 AF     .word off_AF16
- D - I - 0x02EED8 21:AEC8: 5E AF     .word off_AF5E
- D - I - 0x02EEDA 21:AECA: 16 AF     .word off_AF16
- D - I - 0x02EEDC 21:AECC: 16 AF     .word off_AF16



off_AECE:
- D - I - 0x02EEDE 21:AECE: 08        .byte $08	; <く>
- D - I - 0x02EEDF 21:AECF: 03        .byte $03	; <う>
- D - I - 0x02EEE0 21:AED0: 08        .byte $08	; <く>
- D - I - 0x02EEE1 21:AED1: B4        .byte $B4	; <ガ>
- D - I - 0x02EEE2 21:AED2: 0C        .byte $0C	; <し>
- D - I - 0x02EEE3 21:AED3: B5        .byte $B5	; <ギ>

- D - I - 0x02EEE4 21:AED4: 08        .byte $08	; <く>
- D - I - 0x02EEE5 21:AED5: 04        .byte $04	; <え>
- D - I - 0x02EEE6 21:AED6: 08        .byte $08	; <く>
- D - I - 0x02EEE7 21:AED7: B7        .byte $B7	; <ゲ>
- D - I - 0x02EEE8 21:AED8: 0C        .byte $0C	; <し>
- D - I - 0x02EEE9 21:AED9: E2        .byte $E2
; продолжение


off_AEDA:
- D - I - 0x02EEEA 21:AEDA: 00        .byte $00
- D - I - 0x02EEEB 21:AEDB: 02        .byte $02	; <い>
- D - I - 0x02EEEC 21:AEDC: 0D        .byte $0D	; <す>
- D - I - 0x02EEED 21:AEDD: B6        .byte $B6	; <グ>

- D - I - 0x02EEEE 21:AEDE: 00        .byte $00
- D - I - 0x02EEEF 21:AEDF: 03        .byte $03	; <う>
- D - I - 0x02EEF0 21:AEE0: 0D        .byte $0D	; <す>
- D - I - 0x02EEF1 21:AEE1: B9        .byte $B9	; <ザ>

- D - I - 0x02EEF2 21:AEE2: 08        .byte $08	; <く>
- D - I - 0x02EEF3 21:AEE3: 04        .byte $04	; <え>
- D - I - 0x02EEF4 21:AEE4: 0D        .byte $0D	; <す>
- D - I - 0x02EEF5 21:AEE5: BB        .byte $BB	; <ズ>
- D - I - 0x02EEF6 21:AEE6: 11        .byte $11	; <ち>
- D - I - 0x02EEF7 21:AEE7: BE        .byte $BE	; <ダ>

- D - I - 0x02EEF8 21:AEE8: 00        .byte $00
- D - I - 0x02EEF9 21:AEE9: 05        .byte $05	; <お>
- D - I - 0x02EEFA 21:AEEA: 0D        .byte $0D	; <す>
- D - I - 0x02EEFB 21:AEEB: 9C        .byte $9C
; продолжение


off_AEEC:
- D - I - 0x02EEFC 21:AEEC: 10        .byte $10	; <た>
- D - I - 0x02EEFD 21:AEED: 02        .byte $02	; <い>
- D - I - 0x02EEFE 21:AEEE: 08        .byte $08	; <く>
- D - I - 0x02EEFF 21:AEEF: B3        .byte $B3	; <ぼ>
- D - I - 0x02EF00 21:AEF0: 11        .byte $11	; <ち>
- D - I - 0x02EF01 21:AEF1: 94        .byte $94
- D - I - 0x02EF02 21:AEF2: 17        .byte $17	; <ぬ>
- D - I - 0x02EF03 21:AEF3: 95        .byte $95

- D - I - 0x02EF04 21:AEF4: 08        .byte $08	; <く>
- D - I - 0x02EF05 21:AEF5: 03        .byte $03	; <う>
- D - I - 0x02EF06 21:AEF6: 12        .byte $12	; <つ>
- D - I - 0x02EF07 21:AEF7: 96        .byte $96
- D - I - 0x02EF08 21:AEF8: 11        .byte $11	; <ち>
- D - I - 0x02EF09 21:AEF9: BC        .byte $BC	; <ゼ>

- D - I - 0x02EF0A 21:AEFA: 00        .byte $00
- D - I - 0x02EF0B 21:AEFB: 05        .byte $05	; <お>
- D - I - 0x02EF0C 21:AEFC: 10        .byte $10	; <た>
- D - I - 0x02EF0D 21:AEFD: 97        .byte $97

- D - I - 0x02EF0E 21:AEFE: 00        .byte $00
- D - I - 0x02EF0F 21:AEFF: 06        .byte $06	; <か>
- D - I - 0x02EF10 21:AF00: 11        .byte $11	; <ち>
- D - I - 0x02EF11 21:AF01: 9D        .byte $9D

- D - I - 0x02EF12 21:AF02: 00        .byte $00
- D - I - 0x02EF13 21:AF03: 20        .byte $20	; <み>
- D - I - 0x02EF14 21:AF04: 09        .byte $09	; <け>
- D - I - 0x02EF15 21:AF05: 9E        .byte $9E

- D - I - 0x02EF16 21:AF06: 01        .byte $01	; <あ>



off_AF07:
- D - I - 0x02EF17 21:AF07: 08        .byte $08	; <く>
- D - I - 0x02EF18 21:AF08: 03        .byte $03	; <う>
- D - I - 0x02EF19 21:AF09: 08        .byte $08	; <く>
- D - I - 0x02EF1A 21:AF0A: BD        .byte $BD	; <ゾ>
- D - I - 0x02EF1B 21:AF0B: 0C        .byte $0C	; <し>
- D - I - 0x02EF1C 21:AF0C: E8        .byte $E8

- D - I - 0x02EF1D 21:AF0D: 08        .byte $08	; <く>
- D - I - 0x02EF1E 21:AF0E: 04        .byte $04	; <え>
- D - I - 0x02EF1F 21:AF0F: 08        .byte $08	; <く>
- D - I - 0x02EF20 21:AF10: BF        .byte $BF	; <ヂ>
- D - I - 0x02EF21 21:AF11: 0C        .byte $0C	; <し>
- D - I - 0x02EF22 21:AF12: EA        .byte $EA

- D - I - 0x02EF23 21:AF13: 02        .byte $02	; <い>
- D - I - 0x02EF24 21:AF14: DA AE     .word off_AEDA



off_AF16:
- D - I - 0x02EF26 21:AF16: 08        .byte $08	; <く>
- D - I - 0x02EF27 21:AF17: 03        .byte $03	; <う>
- D - I - 0x02EF28 21:AF18: 08        .byte $08	; <く>
- D - I - 0x02EF29 21:AF19: B4        .byte $B4	; <ガ>
- D - I - 0x02EF2A 21:AF1A: 0C        .byte $0C	; <し>
- D - I - 0x02EF2B 21:AF1B: DF        .byte $DF

- D - I - 0x02EF2C 21:AF1C: 08        .byte $08	; <く>
- D - I - 0x02EF2D 21:AF1D: 04        .byte $04	; <え>
- D - I - 0x02EF2E 21:AF1E: 08        .byte $08	; <く>
- D - I - 0x02EF2F 21:AF1F: B7        .byte $B7	; <ゲ>
- D - I - 0x02EF30 21:AF20: 0C        .byte $0C	; <し>
- D - I - 0x02EF31 21:AF21: C3        .byte $C3	; <バ>

- D - I - 0x02EF32 21:AF22: 02        .byte $02	; <い>
- D - I - 0x02EF33 21:AF23: DA AE     .word off_AEDA



off_AF25:
- D - I - 0x02EF35 21:AF25: 08        .byte $08	; <く>
- D - I - 0x02EF36 21:AF26: 03        .byte $03	; <う>
- D - I - 0x02EF37 21:AF27: 08        .byte $08	; <く>
- D - I - 0x02EF38 21:AF28: E0        .byte $E0
- D - I - 0x02EF39 21:AF29: 0C        .byte $0C	; <し>
- D - I - 0x02EF3A 21:AF2A: CC        .byte $CC	; <ぽ>
; продолжение


off_AF2B:
- D - I - 0x02EF3B 21:AF2B: 08        .byte $08	; <く>
- D - I - 0x02EF3C 21:AF2C: 04        .byte $04	; <え>
- D - I - 0x02EF3D 21:AF2D: 08        .byte $08	; <く>
- D - I - 0x02EF3E 21:AF2E: CB        .byte $CB	; <ぺ>
- D - I - 0x02EF3F 21:AF2F: 0C        .byte $0C	; <し>
- D - I - 0x02EF40 21:AF30: CE        .byte $CE	; <ピ>

- D - I - 0x02EF41 21:AF31: 02        .byte $02	; <い>
- D - I - 0x02EF42 21:AF32: DA AE     .word off_AEDA



off_AF34:
- D - I - 0x02EF44 21:AF34: 08        .byte $08	; <く>
- D - I - 0x02EF45 21:AF35: 03        .byte $03	; <う>
- D - I - 0x02EF46 21:AF36: 08        .byte $08	; <く>
- D - I - 0x02EF47 21:AF37: C9        .byte $C9	; <ぴ>
- D - I - 0x02EF48 21:AF38: 0C        .byte $0C	; <し>
- D - I - 0x02EF49 21:AF39: CC        .byte $CC	; <ぽ>

- D - I - 0x02EF4A 21:AF3A: 02        .byte $02	; <い>
- D - I - 0x02EF4B 21:AF3B: 2B AF     .word off_AF2B



off_AF3D:
- D - I - 0x02EF4D 21:AF3D: 08        .byte $08	; <く>
- D - I - 0x02EF4E 21:AF3E: 03        .byte $03	; <う>
- D - I - 0x02EF4F 21:AF3F: 08        .byte $08	; <く>
- D - I - 0x02EF50 21:AF40: B4        .byte $B4	; <ガ>
- D - I - 0x02EF51 21:AF41: 0C        .byte $0C	; <し>
- D - I - 0x02EF52 21:AF42: B5        .byte $B5	; <ギ>

- D - I - 0x02EF53 21:AF43: 08        .byte $08	; <く>
- D - I - 0x02EF54 21:AF44: 04        .byte $04	; <え>
- D - I - 0x02EF55 21:AF45: 08        .byte $08	; <く>
- D - I - 0x02EF56 21:AF46: B7        .byte $B7	; <ゲ>
- D - I - 0x02EF57 21:AF47: 0C        .byte $0C	; <し>
- D - I - 0x02EF58 21:AF48: E2        .byte $E2

- D - I - 0x02EF59 21:AF49: 00        .byte $00
- D - I - 0x02EF5A 21:AF4A: 02        .byte $02	; <い>
- D - I - 0x02EF5B 21:AF4B: 0C        .byte $0C	; <し>
- D - I - 0x02EF5C 21:AF4C: F1        .byte $F1

- D - I - 0x02EF5D 21:AF4D: 00        .byte $00
- D - I - 0x02EF5E 21:AF4E: 03        .byte $03	; <う>
- D - I - 0x02EF5F 21:AF4F: 0D        .byte $0D	; <す>
- D - I - 0x02EF60 21:AF50: C2        .byte $C2	; <ド>

- D - I - 0x02EF61 21:AF51: 08        .byte $08	; <く>
- D - I - 0x02EF62 21:AF52: 04        .byte $04	; <え>
- D - I - 0x02EF63 21:AF53: 0D        .byte $0D	; <す>
- D - I - 0x02EF64 21:AF54: C8        .byte $C8	; <ぱ>
- D - I - 0x02EF65 21:AF55: 11        .byte $11	; <ち>
- D - I - 0x02EF66 21:AF56: 9F        .byte $9F

- D - I - 0x02EF67 21:AF57: 00        .byte $00
- D - I - 0x02EF68 21:AF58: 05        .byte $05	; <お>
- D - I - 0x02EF69 21:AF59: 0D        .byte $0D	; <す>
- D - I - 0x02EF6A 21:AF5A: CA        .byte $CA	; <ぷ>

- D - I - 0x02EF6B 21:AF5B: 02        .byte $02	; <い>
- D - I - 0x02EF6C 21:AF5C: EC AE     .word off_AEEC



off_AF5E:
- D - I - 0x02EF6E 21:AF5E: 08        .byte $08	; <く>
- D - I - 0x02EF6F 21:AF5F: 03        .byte $03	; <う>
- D - I - 0x02EF70 21:AF60: 08        .byte $08	; <く>
- D - I - 0x02EF71 21:AF61: E0        .byte $E0
- D - I - 0x02EF72 21:AF62: 0C        .byte $0C	; <し>
- D - I - 0x02EF73 21:AF63: CC        .byte $CC	; <ぽ>

- D - I - 0x02EF74 21:AF64: 08        .byte $08	; <く>
- D - I - 0x02EF75 21:AF65: 04        .byte $04	; <え>
- D - I - 0x02EF76 21:AF66: 08        .byte $08	; <く>
- D - I - 0x02EF77 21:AF67: CB        .byte $CB	; <ぺ>
- D - I - 0x02EF78 21:AF68: 0C        .byte $0C	; <し>
- D - I - 0x02EF79 21:AF69: E1        .byte $E1

- D - I - 0x02EF7A 21:AF6A: 02        .byte $02	; <い>
- D - I - 0x02EF7B 21:AF6B: DA AE     .word off_AEDA



off_AF6D_94:
- D - I - 0x02EF7D 21:AF6D: 03        .byte $03	; <う>
- D - I - 0x02EF7E 21:AF6E: 86 AF     .word off_AF86
- D - I - 0x02EF80 21:AF70: C3 AF     .word off_AFC3
- D - I - 0x02EF82 21:AF72: D2 AF     .word off_AFD2
- D - I - 0x02EF84 21:AF74: 86 AF     .word off_AF86
- D - I - 0x02EF86 21:AF76: 0D B0     .word off_B00D
- D - I - 0x02EF88 21:AF78: D2 AF     .word off_AFD2
- D - I - 0x02EF8A 21:AF7A: E1 AF     .word off_AFE1
- D - I - 0x02EF8C 21:AF7C: F0 AF     .word off_AFF0
- D - I - 0x02EF8E 21:AF7E: D2 AF     .word off_AFD2
- D - I - 0x02EF90 21:AF80: 1C B0     .word off_B01C
- D - I - 0x02EF92 21:AF82: D2 AF     .word off_AFD2
- D - I - 0x02EF94 21:AF84: D2 AF     .word off_AFD2



off_AF86:
- D - I - 0x02EF96 21:AF86: 08        .byte $08	; <く>
- D - I - 0x02EF97 21:AF87: 02        .byte $02	; <い>
- D - I - 0x02EF98 21:AF88: 0C        .byte $0C	; <し>
- D - I - 0x02EF99 21:AF89: F6        .byte $F6
- D - I - 0x02EF9A 21:AF8A: 10        .byte $10	; <た>
- D - I - 0x02EF9B 21:AF8B: FD        .byte $FD

- D - I - 0x02EF9C 21:AF8C: 08        .byte $08	; <く>
- D - I - 0x02EF9D 21:AF8D: 03        .byte $03	; <う>
- D - I - 0x02EF9E 21:AF8E: 0C        .byte $0C	; <し>
- D - I - 0x02EF9F 21:AF8F: FE        .byte $FE
- D - I - 0x02EFA0 21:AF90: 10        .byte $10	; <た>
- D - I - 0x02EFA1 21:AF91: D9        .byte $D9

off_AF92:
- D - I - 0x02EFA2 21:AF92: 08        .byte $08	; <く>
- D - I - 0x02EFA3 21:AF93: 02        .byte $02	; <い>
- D - I - 0x02EFA4 21:AF94: 11        .byte $11	; <ち>
- D - I - 0x02EFA5 21:AF95: E3        .byte $E3
- D - I - 0x02EFA6 21:AF96: 15        .byte $15	; <な>
- D - I - 0x02EFA7 21:AF97: E6        .byte $E6

- D - I - 0x02EFA8 21:AF98: 00        .byte $00
- D - I - 0x02EFA9 21:AF99: 03        .byte $03	; <う>
- D - I - 0x02EFAA 21:AF9A: 41        .byte $41	; <ア>
- D - I - 0x02EFAB 21:AF9B: E9        .byte $E9

- D - I - 0x02EFAC 21:AF9C: 00        .byte $00
- D - I - 0x02EFAD 21:AF9D: 04        .byte $04	; <え>
- D - I - 0x02EFAE 21:AF9E: 0E        .byte $0E	; <せ>
- D - I - 0x02EFAF 21:AF9F: EB        .byte $EB
; продолжение


off_AFA0:
- D - I - 0x02EFB0 21:AFA0: 00        .byte $00
- D - I - 0x02EFB1 21:AFA1: 01        .byte $01	; <あ>
- D - I - 0x02EFB2 21:AFA2: 14        .byte $14	; <と>
- D - I - 0x02EFB3 21:AFA3: E4        .byte $E4

- D - I - 0x02EFB4 21:AFA4: 08        .byte $08	; <く>
- D - I - 0x02EFB5 21:AFA5: 03        .byte $03	; <う>
- D - I - 0x02EFB6 21:AFA6: 45        .byte $45	; <オ>
- D - I - 0x02EFB7 21:AFA7: EC        .byte $EC
- D - I - 0x02EFB8 21:AFA8: 85        .byte $85	; <E>
- D - I - 0x02EFB9 21:AFA9: ED        .byte $ED

- D - I - 0x02EFBA 21:AFAA: 10        .byte $10	; <た>
- D - I - 0x02EFBB 21:AFAB: 04        .byte $04	; <え>
- D - I - 0x02EFBC 21:AFAC: 0D        .byte $0D	; <す>
- D - I - 0x02EFBD 21:AFAD: C4        .byte $C4	; <ビ>
- D - I - 0x02EFBE 21:AFAE: 12        .byte $12	; <つ>
- D - I - 0x02EFBF 21:AFAF: EE        .byte $EE
- D - I - 0x02EFC0 21:AFB0: 11        .byte $11	; <ち>
- D - I - 0x02EFC1 21:AFB1: F3        .byte $F3

- D - I - 0x02EFC2 21:AFB2: 10        .byte $10	; <た>
- D - I - 0x02EFC3 21:AFB3: 05        .byte $05	; <お>
- D - I - 0x02EFC4 21:AFB4: 09        .byte $09	; <け>
- D - I - 0x02EFC5 21:AFB5: C6        .byte $C6	; <ベ>
- D - I - 0x02EFC6 21:AFB6: 0D        .byte $0D	; <す>
- D - I - 0x02EFC7 21:AFB7: F9        .byte $F9
- D - I - 0x02EFC8 21:AFB8: 11        .byte $11	; <ち>
- D - I - 0x02EFC9 21:AFB9: FC        .byte $FC

- D - I - 0x02EFCA 21:AFBA: 00        .byte $00
- D - I - 0x02EFCB 21:AFBB: 06        .byte $06	; <か>
- D - I - 0x02EFCC 21:AFBC: 08        .byte $08	; <く>
- D - I - 0x02EFCD 21:AFBD: FB        .byte $FB

- D - I - 0x02EFCE 21:AFBE: 00        .byte $00
- D - I - 0x02EFCF 21:AFBF: 1B        .byte $1B	; <ひ>
- D - I - 0x02EFD0 21:AFC0: 14        .byte $14	; <と>
- D - I - 0x02EFD1 21:AFC1: FF        .byte $FF

- D - I - 0x02EFD2 21:AFC2: 01        .byte $01	; <あ>



off_AFC3:
- D - I - 0x02EFD3 21:AFC3: 08        .byte $08	; <く>
- D - I - 0x02EFD4 21:AFC4: 02        .byte $02	; <い>
- D - I - 0x02EFD5 21:AFC5: 0C        .byte $0C	; <し>
- D - I - 0x02EFD6 21:AFC6: E7        .byte $E7
- D - I - 0x02EFD7 21:AFC7: 10        .byte $10	; <た>
- D - I - 0x02EFD8 21:AFC8: F2        .byte $F2

- D - I - 0x02EFD9 21:AFC9: 08        .byte $08	; <く>
- D - I - 0x02EFDA 21:AFCA: 03        .byte $03	; <う>
- D - I - 0x02EFDB 21:AFCB: 0C        .byte $0C	; <し>
- D - I - 0x02EFDC 21:AFCC: FE        .byte $FE
- D - I - 0x02EFDD 21:AFCD: 10        .byte $10	; <た>
- D - I - 0x02EFDE 21:AFCE: F8        .byte $F8

- D - I - 0x02EFDF 21:AFCF: 02        .byte $02	; <い>
- D - I - 0x02EFE0 21:AFD0: 92 AF     .word off_AF92



off_AFD2:
- D - I - 0x02EFE2 21:AFD2: 08        .byte $08	; <く>
- D - I - 0x02EFE3 21:AFD3: 02        .byte $02	; <い>
- D - I - 0x02EFE4 21:AFD4: 0C        .byte $0C	; <し>
- D - I - 0x02EFE5 21:AFD5: F6        .byte $F6
- D - I - 0x02EFE6 21:AFD6: 10        .byte $10	; <た>
- D - I - 0x02EFE7 21:AFD7: EF        .byte $EF

- D - I - 0x02EFE8 21:AFD8: 08        .byte $08	; <く>
- D - I - 0x02EFE9 21:AFD9: 03        .byte $03	; <う>
- D - I - 0x02EFEA 21:AFDA: 0C        .byte $0C	; <し>
- D - I - 0x02EFEB 21:AFDB: FA        .byte $FA
- D - I - 0x02EFEC 21:AFDC: 10        .byte $10	; <た>
- D - I - 0x02EFED 21:AFDD: D9        .byte $D9

- D - I - 0x02EFEE 21:AFDE: 02        .byte $02	; <い>
- D - I - 0x02EFEF 21:AFDF: 92 AF     .word off_AF92



off_AFE1:
- D - I - 0x02EFF1 21:AFE1: 08        .byte $08	; <く>
- D - I - 0x02EFF2 21:AFE2: 02        .byte $02	; <い>
- D - I - 0x02EFF3 21:AFE3: 0C        .byte $0C	; <し>
- D - I - 0x02EFF4 21:AFE4: F5        .byte $F5
- D - I - 0x02EFF5 21:AFE5: 10        .byte $10	; <た>
- D - I - 0x02EFF6 21:AFE6: D5        .byte $D5

- D - I - 0x02EFF7 21:AFE7: 08        .byte $08	; <く>
- D - I - 0x02EFF8 21:AFE8: 03        .byte $03	; <う>
- D - I - 0x02EFF9 21:AFE9: 0C        .byte $0C	; <し>
- D - I - 0x02EFFA 21:AFEA: F7        .byte $F7
- D - I - 0x02EFFB 21:AFEB: 10        .byte $10	; <た>
- D - I - 0x02EFFC 21:AFEC: D9        .byte $D9

- D - I - 0x02EFFD 21:AFED: 02        .byte $02	; <い>
- D - I - 0x02EFFE 21:AFEE: 92 AF     .word off_AF92



off_AFF0:
- D - I - 0x02F000 21:AFF0: 08        .byte $08	; <く>
- D - I - 0x02F001 21:AFF1: 02        .byte $02	; <い>
- D - I - 0x02F002 21:AFF2: 0C        .byte $0C	; <し>
- D - I - 0x02F003 21:AFF3: F6        .byte $F6
- D - I - 0x02F004 21:AFF4: 10        .byte $10	; <た>
- D - I - 0x02F005 21:AFF5: FD        .byte $FD

- D - I - 0x02F006 21:AFF6: 08        .byte $08	; <く>
- D - I - 0x02F007 21:AFF7: 03        .byte $03	; <う>
- D - I - 0x02F008 21:AFF8: 0C        .byte $0C	; <し>
- D - I - 0x02F009 21:AFF9: FE        .byte $FE
- D - I - 0x02F00A 21:AFFA: 10        .byte $10	; <た>
- D - I - 0x02F00B 21:AFFB: D9        .byte $D9

- D - I - 0x02F00C 21:AFFC: 08        .byte $08	; <く>
- D - I - 0x02F00D 21:AFFD: 02        .byte $02	; <い>
- D - I - 0x02F00E 21:AFFE: 11        .byte $11	; <ち>
- D - I - 0x02F00F 21:AFFF: CF        .byte $CF	; <プ>
- D - I - 0x02F010 21:B000: 15        .byte $15	; <な>
- D - I - 0x02F011 21:B001: DA        .byte $DA

- D - I - 0x02F012 21:B002: 00        .byte $00
- D - I - 0x02F013 21:B003: 03        .byte $03	; <う>
- D - I - 0x02F014 21:B004: 41        .byte $41	; <ア>
- D - I - 0x02F015 21:B005: E5        .byte $E5

- D - I - 0x02F016 21:B006: 00        .byte $00
- D - I - 0x02F017 21:B007: 04        .byte $04	; <え>
- D - I - 0x02F018 21:B008: 0E        .byte $0E	; <せ>
- D - I - 0x02F019 21:B009: F0        .byte $F0

- D - I - 0x02F01A 21:B00A: 02        .byte $02	; <い>
- D - I - 0x02F01B 21:B00B: A0 AF     .word off_AFA0



off_B00D:
- D - I - 0x02F01D 21:B00D: 08        .byte $08	; <く>
- D - I - 0x02F01E 21:B00E: 02        .byte $02	; <い>
- D - I - 0x02F01F 21:B00F: 0C        .byte $0C	; <し>
- D - I - 0x02F020 21:B010: D7        .byte $D7
- D - I - 0x02F021 21:B011: 10        .byte $10	; <た>
- D - I - 0x02F022 21:B012: DC        .byte $DC

- D - I - 0x02F023 21:B013: 08        .byte $08	; <く>
- D - I - 0x02F024 21:B014: 03        .byte $03	; <う>
- D - I - 0x02F025 21:B015: 0C        .byte $0C	; <し>
- D - I - 0x02F026 21:B016: DB        .byte $DB
- D - I - 0x02F027 21:B017: 10        .byte $10	; <た>
- D - I - 0x02F028 21:B018: DE        .byte $DE

- D - I - 0x02F029 21:B019: 02        .byte $02	; <い>
- D - I - 0x02F02A 21:B01A: 92 AF     .word off_AF92



off_B01C:
- D - I - 0x02F02C 21:B01C: 08        .byte $08	; <く>
- D - I - 0x02F02D 21:B01D: 02        .byte $02	; <い>
- D - I - 0x02F02E 21:B01E: 0C        .byte $0C	; <し>
- D - I - 0x02F02F 21:B01F: D7        .byte $D7
- D - I - 0x02F030 21:B020: 10        .byte $10	; <た>
- D - I - 0x02F031 21:B021: DC        .byte $DC

- D - I - 0x02F032 21:B022: 08        .byte $08	; <く>
- D - I - 0x02F033 21:B023: 03        .byte $03	; <う>
- D - I - 0x02F034 21:B024: 0C        .byte $0C	; <し>
- D - I - 0x02F035 21:B025: DB        .byte $DB
- D - I - 0x02F036 21:B026: 10        .byte $10	; <た>
- D - I - 0x02F037 21:B027: DD        .byte $DD

- D - I - 0x02F038 21:B028: 02        .byte $02	; <い>
- D - I - 0x02F039 21:B029: 92 AF     .word off_AF92



off_B02B_95:
- D - I - 0x02F03B 21:B02B: 00        .byte $00
- D - I - 0x02F03C 21:B02C: 03        .byte $03	; <う>
- D - I - 0x02F03D 21:B02D: 46        .byte $46	; <カ>
- D - I - 0x02F03E 21:B02E: 3C        .byte $3C	; <9>

- D - I - 0x02F03F 21:B02F: 00        .byte $00
- D - I - 0x02F040 21:B030: 04        .byte $04	; <え>
- D - I - 0x02F041 21:B031: 46        .byte $46	; <カ>
- D - I - 0x02F042 21:B032: 3E        .byte $3E	; <Jr>

- D - I - 0x02F043 21:B033: 01        .byte $01	; <あ>



off_B034_96:
- D - I - 0x02F044 21:B034: 00        .byte $00
- D - I - 0x02F045 21:B035: 03        .byte $03	; <う>
- D - I - 0x02F046 21:B036: 46        .byte $46	; <カ>
- D - I - 0x02F047 21:B037: 3D        .byte $3D	; <+>

- D - I - 0x02F048 21:B038: 00        .byte $00
- D - I - 0x02F049 21:B039: 04        .byte $04	; <え>
- D - I - 0x02F04A 21:B03A: 46        .byte $46	; <カ>
- D - I - 0x02F04B 21:B03B: 3F        .byte $3F	; <•>

- D - I - 0x02F04C 21:B03C: 01        .byte $01	; <あ>



off_B03D_97:
- D - I - 0x02F04D 21:B03D: 00        .byte $00
- D - I - 0x02F04E 21:B03E: 03        .byte $03	; <う>
- D - I - 0x02F04F 21:B03F: 46        .byte $46	; <カ>
- D - I - 0x02F050 21:B040: 7E        .byte $7E	; <.>

- D - I - 0x02F051 21:B041: 00        .byte $00
- D - I - 0x02F052 21:B042: 04        .byte $04	; <え>
- D - I - 0x02F053 21:B043: 46        .byte $46	; <カ>
- D - I - 0x02F054 21:B044: 7F        .byte $7F	; <,>

- D - I - 0x02F055 21:B045: 01        .byte $01	; <あ>



off_B046_98:
- D - I - 0x02F056 21:B046: 03        .byte $03	; <う>
- - - - - 0x02F057 21:B047: 5F B0     .word off_B05F
- D - I - 0x02F059 21:B049: 90 B0     .word off_B090
- D - I - 0x02F05B 21:B04B: 9D B0     .word off_B09D
- D - I - 0x02F05D 21:B04D: 5F B0     .word off_B05F
- D - I - 0x02F05F 21:B04F: AA B0     .word off_B0AA
- - - - - 0x02F061 21:B051: 9D B0     .word off_B09D
- - - - - 0x02F063 21:B053: B7 B0     .word off_B0B7
- - - - - 0x02F065 21:B055: C2 B0     .word off_B0C2
- - - - - 0x02F067 21:B057: 9D B0     .word off_B09D
- - - - - 0x02F069 21:B059: 9D B0     .word off_B09D
- - - - - 0x02F06B 21:B05B: 9D B0     .word off_B09D
- - - - - 0x02F06D 21:B05D: 9D B0     .word off_B09D



off_B05F:
- D - I - 0x02F06F 21:B05F: 08        .byte $08	; <く>
- D - I - 0x02F070 21:B060: 02        .byte $02	; <い>
- D - I - 0x02F071 21:B061: 0C        .byte $0C	; <し>
- D - I - 0x02F072 21:B062: 9E        .byte $9E
- D - I - 0x02F073 21:B063: 10        .byte $10	; <た>
- D - I - 0x02F074 21:B064: 9F        .byte $9F

- D - I - 0x02F075 21:B065: 00        .byte $00
- D - I - 0x02F076 21:B066: 03        .byte $03	; <う>
- D - I - 0x02F077 21:B067: 5C        .byte $5C	; <フ>
- D - I - 0x02F078 21:B068: 9D        .byte $9D
; продолжение


off_B069:
- D - I - 0x02F079 21:B069: 10        .byte $10	; <た>
- D - I - 0x02F07A 21:B06A: 03        .byte $03	; <う>
- D - I - 0x02F07B 21:B06B: 09        .byte $09	; <け>
- D - I - 0x02F07C 21:B06C: A8        .byte $A8	; <ぜ>
- D - I - 0x02F07D 21:B06D: 0D        .byte $0D	; <す>
- D - I - 0x02F07E 21:B06E: A9        .byte $A9	; <ぞ>
- D - I - 0x02F07F 21:B06F: 11        .byte $11	; <ち>
- D - I - 0x02F080 21:B070: AC        .byte $AC	; <づ>
; продолжение


off_B071:
- D - I - 0x02F081 21:B071: 18        .byte $18	; <ね>
- D - I - 0x02F082 21:B072: 04        .byte $04	; <え>
- D - I - 0x02F083 21:B073: 08        .byte $08	; <く>
- D - I - 0x02F084 21:B074: AA        .byte $AA	; <だ>
- D - I - 0x02F085 21:B075: 0E        .byte $0E	; <せ>
- D - I - 0x02F086 21:B076: AB        .byte $AB	; <ぢ>
- D - I - 0x02F087 21:B077: 11        .byte $11	; <ち>
- D - I - 0x02F088 21:B078: A6        .byte $A6	; <じ>
- D - I - 0x02F089 21:B079: 12        .byte $12	; <つ>
- D - I - 0x02F08A 21:B07A: AE        .byte $AE	; <ど>

- D - I - 0x02F08B 21:B07B: 08        .byte $08	; <く>
- D - I - 0x02F08C 21:B07C: 05        .byte $05	; <お>
- D - I - 0x02F08D 21:B07D: 46        .byte $46	; <カ>
- D - I - 0x02F08E 21:B07E: A7        .byte $A7	; <ず>
- D - I - 0x02F08F 21:B07F: 86        .byte $86	; <F>
- D - I - 0x02F090 21:B080: B2        .byte $B2	; <べ>

- D - I - 0x02F091 21:B081: 10        .byte $10	; <た>
- D - I - 0x02F092 21:B082: 06        .byte $06	; <か>
- D - I - 0x02F093 21:B083: 45        .byte $45	; <オ>
- D - I - 0x02F094 21:B084: AD        .byte $AD	; <で>
- D - I - 0x02F095 21:B085: 85        .byte $85	; <E>
- D - I - 0x02F096 21:B086: B8        .byte $B8	; <ゴ>
- D - I - 0x02F097 21:B087: 91        .byte $91	; <V>
- D - I - 0x02F098 21:B088: BB        .byte $BB	; <ズ>

- D - I - 0x02F099 21:B089: 08        .byte $08	; <く>
- D - I - 0x02F09A 21:B08A: 07        .byte $07	; <き>
- D - I - 0x02F09B 21:B08B: 45        .byte $45	; <オ>
- D - I - 0x02F09C 21:B08C: AF        .byte $AF	; <ば>
- D - I - 0x02F09D 21:B08D: 15        .byte $15	; <な>
- D - I - 0x02F09E 21:B08E: BA        .byte $BA	; <ジ>

- D - I - 0x02F09F 21:B08F: 01        .byte $01	; <あ>



off_B090:
- D - I - 0x02F0A0 21:B090: 08        .byte $08	; <く>
- D - I - 0x02F0A1 21:B091: 02        .byte $02	; <い>
- D - I - 0x02F0A2 21:B092: 0C        .byte $0C	; <し>
- D - I - 0x02F0A3 21:B093: B3        .byte $B3	; <ぼ>
- D - I - 0x02F0A4 21:B094: 10        .byte $10	; <た>
- D - I - 0x02F0A5 21:B095: B6        .byte $B6	; <グ>

- D - I - 0x02F0A6 21:B096: 00        .byte $00
- D - I - 0x02F0A7 21:B097: 03        .byte $03	; <う>
- D - I - 0x02F0A8 21:B098: 5C        .byte $5C	; <フ>
- D - I - 0x02F0A9 21:B099: 9D        .byte $9D

- D - I - 0x02F0AA 21:B09A: 02        .byte $02	; <い>
- D - I - 0x02F0AB 21:B09B: 69 B0     .word off_B069



off_B09D:
- D - I - 0x02F0AD 21:B09D: 08        .byte $08	; <く>
- D - I - 0x02F0AE 21:B09E: 02        .byte $02	; <い>
- D - I - 0x02F0AF 21:B09F: 0C        .byte $0C	; <し>
- D - I - 0x02F0B0 21:B0A0: 9E        .byte $9E
- D - I - 0x02F0B1 21:B0A1: 10        .byte $10	; <た>
- D - I - 0x02F0B2 21:B0A2: B5        .byte $B5	; <ギ>

- D - I - 0x02F0B3 21:B0A3: 00        .byte $00
- D - I - 0x02F0B4 21:B0A4: 03        .byte $03	; <う>
- D - I - 0x02F0B5 21:B0A5: 5C        .byte $5C	; <フ>
- D - I - 0x02F0B6 21:B0A6: 9D        .byte $9D

- D - I - 0x02F0B7 21:B0A7: 02        .byte $02	; <い>
- D - I - 0x02F0B8 21:B0A8: 69 B0     .word off_B069



off_B0AA:
- D - I - 0x02F0BA 21:B0AA: 08        .byte $08	; <く>
- D - I - 0x02F0BB 21:B0AB: 02        .byte $02	; <い>
- D - I - 0x02F0BC 21:B0AC: 0C        .byte $0C	; <し>
- D - I - 0x02F0BD 21:B0AD: B9        .byte $B9	; <ザ>
- D - I - 0x02F0BE 21:B0AE: 10        .byte $10	; <た>
- D - I - 0x02F0BF 21:B0AF: BC        .byte $BC	; <ゼ>

- D - I - 0x02F0C0 21:B0B0: 00        .byte $00
- D - I - 0x02F0C1 21:B0B1: 03        .byte $03	; <う>
- D - I - 0x02F0C2 21:B0B2: 5C        .byte $5C	; <フ>
- D - I - 0x02F0C3 21:B0B3: 9D        .byte $9D

- D - I - 0x02F0C4 21:B0B4: 02        .byte $02	; <い>
- D - I - 0x02F0C5 21:B0B5: 69 B0     .word off_B069



off_B0B7:
- - - - - 0x02F0C7 21:B0B7: 00        .byte $00
- - - - - 0x02F0C8 21:B0B8: 02        .byte $02	; <い>
- - - - - 0x02F0C9 21:B0B9: 5C        .byte $5C	; <フ>
- - - - - 0x02F0CA 21:B0BA: B7        .byte $B7	; <ゲ>

- - - - - 0x02F0CB 21:B0BB: 00        .byte $00
- - - - - 0x02F0CC 21:B0BC: 03        .byte $03	; <う>
- - - - - 0x02F0CD 21:B0BD: 5C        .byte $5C	; <フ>
- - - - - 0x02F0CE 21:B0BE: 9D        .byte $9D

- - - - - 0x02F0CF 21:B0BF: 02        .byte $02	; <い>
- - - - - 0x02F0D0 21:B0C0: 69 B0     .word off_B069



off_B0C2:
- - - - - 0x02F0D2 21:B0C2: 08        .byte $08	; <く>
- - - - - 0x02F0D3 21:B0C3: 02        .byte $02	; <い>
- - - - - 0x02F0D4 21:B0C4: 0C        .byte $0C	; <し>
- - - - - 0x02F0D5 21:B0C5: 9E        .byte $9E
- - - - - 0x02F0D6 21:B0C6: 10        .byte $10	; <た>
- - - - - 0x02F0D7 21:B0C7: 9F        .byte $9F

- - - - - 0x02F0D8 21:B0C8: 00        .byte $00
- - - - - 0x02F0D9 21:B0C9: 03        .byte $03	; <う>
- - - - - 0x02F0DA 21:B0CA: 5C        .byte $5C	; <フ>
- - - - - 0x02F0DB 21:B0CB: 9D        .byte $9D

- - - - - 0x02F0DC 21:B0CC: 10        .byte $10	; <た>
- - - - - 0x02F0DD 21:B0CD: 03        .byte $03	; <う>
- - - - - 0x02F0DE 21:B0CE: 09        .byte $09	; <け>
- - - - - 0x02F0DF 21:B0CF: B0        .byte $B0	; <び>
- - - - - 0x02F0E0 21:B0D0: 0D        .byte $0D	; <す>
- - - - - 0x02F0E1 21:B0D1: B1        .byte $B1	; <ぶ>
- - - - - 0x02F0E2 21:B0D2: 11        .byte $11	; <ち>
- - - - - 0x02F0E3 21:B0D3: B4        .byte $B4	; <ガ>

- - - - - 0x02F0E4 21:B0D4: 02        .byte $02	; <い>
- - - - - 0x02F0E5 21:B0D5: 71 B0     .word off_B071



off_B0D7_99:
- D - I - 0x02F0E7 21:B0D7: 03        .byte $03	; <う>
- D - I - 0x02F0E8 21:B0D8: E4 B0     .word off_B0E4
- - - - - 0x02F0EA 21:B0DA: 4F B1     .word off_B14F
- D - I - 0x02F0EC 21:B0DC: 9B B1     .word off_B19B
- D - I - 0x02F0EE 21:B0DE: 62 B1     .word off_B162
- D - I - 0x02F0F0 21:B0E0: 75 B1     .word off_B175
- - - - - 0x02F0F2 21:B0E2: 88 B1     .word off_B188



off_B0E4:
- D - I - 0x02F0F4 21:B0E4: 08        .byte $08	; <く>
- D - I - 0x02F0F5 21:B0E5: 01        .byte $01	; <あ>
- D - I - 0x02F0F6 21:B0E6: 47        .byte $47	; <キ>
- D - I - 0x02F0F7 21:B0E7: 3C        .byte $3C	; <9>
- D - I - 0x02F0F8 21:B0E8: 87        .byte $87	; <G>
- D - I - 0x02F0F9 21:B0E9: 3D        .byte $3D	; <+>

- D - I - 0x02F0FA 21:B0EA: 18        .byte $18	; <ね>
- D - I - 0x02F0FB 21:B0EB: 02        .byte $02	; <い>
- D - I - 0x02F0FC 21:B0EC: 45        .byte $45	; <オ>
- D - I - 0x02F0FD 21:B0ED: 3A        .byte $3A	; <7>
- D - I - 0x02F0FE 21:B0EE: 47        .byte $47	; <キ>
- D - I - 0x02F0FF 21:B0EF: 3E        .byte $3E	; <Jr>
- D - I - 0x02F100 21:B0F0: 85        .byte $85	; <E>
- D - I - 0x02F101 21:B0F1: 3B        .byte $3B	; <8>
- D - I - 0x02F102 21:B0F2: 86        .byte $86	; <F>
- D - I - 0x02F103 21:B0F3: 3F        .byte $3F	; <•>
; продолжение


off_B0F4:
- D - I - 0x02F104 21:B0F4: 08        .byte $08	; <く>
- D - I - 0x02F105 21:B0F5: 01        .byte $01	; <あ>
- D - I - 0x02F106 21:B0F6: 92        .byte $92	; <W>
- D - I - 0x02F107 21:B0F7: 16        .byte $16	; <に>
- D - I - 0x02F108 21:B0F8: DE        .byte $DE
- D - I - 0x02F109 21:B0F9: 17        .byte $17	; <ぬ>

- D - I - 0x02F10A 21:B0FA: 10        .byte $10	; <た>
- D - I - 0x02F10B 21:B0FB: 03        .byte $03	; <う>
- D - I - 0x02F10C 21:B0FC: 56        .byte $56	; <ニ>
- D - I - 0x02F10D 21:B0FD: 1C        .byte $1C	; <ふ>
- D - I - 0x02F10E 21:B0FE: 41        .byte $41	; <ア>
- D - I - 0x02F10F 21:B0FF: 1A        .byte $1A	; <は>
- D - I - 0x02F110 21:B100: 42        .byte $42	; <イ>
- D - I - 0x02F111 21:B101: 1D        .byte $1D	; <へ>

- D - I - 0x02F112 21:B102: 08        .byte $08	; <く>
- D - I - 0x02F113 21:B103: 05        .byte $05	; <お>
- D - I - 0x02F114 21:B104: 46        .byte $46	; <カ>
- D - I - 0x02F115 21:B105: 30        .byte $30	; <ゃ>
- D - I - 0x02F116 21:B106: 86        .byte $86	; <F>
- D - I - 0x02F117 21:B107: 31        .byte $31	; <ゅ>

- D - I - 0x02F118 21:B108: 08        .byte $08	; <く>
- D - I - 0x02F119 21:B109: 06        .byte $06	; <か>
- D - I - 0x02F11A 21:B10A: 52        .byte $52	; <ツ>
- D - I - 0x02F11B 21:B10B: 15        .byte $15	; <な>
- D - I - 0x02F11C 21:B10C: 6E        .byte $6E	; <ン>
- D - I - 0x02F11D 21:B10D: 08        .byte $08	; <く>

- D - I - 0x02F11E 21:B10E: 10        .byte $10	; <た>
- D - I - 0x02F11F 21:B10F: 07        .byte $07	; <き>
- D - I - 0x02F120 21:B110: 6F        .byte $6F	; <ッ>
- D - I - 0x02F121 21:B111: 22        .byte $22	; <め>
- D - I - 0x02F122 21:B112: 6E        .byte $6E	; <ン>
- D - I - 0x02F123 21:B113: 0A        .byte $0A	; <こ>
- D - I - 0x02F124 21:B114: 52        .byte $52	; <ツ>
- D - I - 0x02F125 21:B115: 21        .byte $21	; <む>
; продолжение


off_B116:
- D - I - 0x02F126 21:B116: 08        .byte $08	; <く>
- D - I - 0x02F127 21:B117: 00        .byte $00
- D - I - 0x02F128 21:B118: DC        .byte $DC
- D - I - 0x02F129 21:B119: 11        .byte $11	; <ち>
- D - I - 0x02F12A 21:B11A: E0        .byte $E0
- D - I - 0x02F12B 21:B11B: 14        .byte $14	; <と>

- D - I - 0x02F12C 21:B11C: 08        .byte $08	; <く>
- D - I - 0x02F12D 21:B11D: 02        .byte $02	; <い>
- D - I - 0x02F12E 21:B11E: 41        .byte $41	; <ア>
- D - I - 0x02F12F 21:B11F: 0D        .byte $0D	; <す>
- D - I - 0x02F130 21:B120: 92        .byte $92	; <W>
- D - I - 0x02F131 21:B121: 12        .byte $12	; <つ>

- D - I - 0x02F132 21:B122: 18        .byte $18	; <ね>
- D - I - 0x02F133 21:B123: 03        .byte $03	; <う>
- D - I - 0x02F134 21:B124: 45        .byte $45	; <オ>
- D - I - 0x02F135 21:B125: 1B        .byte $1B	; <ひ>
- D - I - 0x02F136 21:B126: 46        .byte $46	; <カ>
- D - I - 0x02F137 21:B127: 28        .byte $28	; <り>
- D - I - 0x02F138 21:B128: 85        .byte $85	; <E>
- D - I - 0x02F139 21:B129: 1E        .byte $1E	; <ほ>
- D - I - 0x02F13A 21:B12A: 86        .byte $86	; <F>
- D - I - 0x02F13B 21:B12B: 29        .byte $29	; <る>

- D - I - 0x02F13C 21:B12C: 18        .byte $18	; <ね>
- D - I - 0x02F13D 21:B12D: 04        .byte $04	; <え>
- D - I - 0x02F13E 21:B12E: 56        .byte $56	; <ニ>
- D - I - 0x02F13F 21:B12F: 0E        .byte $0E	; <せ>
- D - I - 0x02F140 21:B130: 42        .byte $42	; <イ>
- D - I - 0x02F141 21:B131: 25        .byte $25	; <ゆ>
- D - I - 0x02F142 21:B132: 46        .byte $46	; <カ>
- D - I - 0x02F143 21:B133: 2A        .byte $2A	; <れ>
- D - I - 0x02F144 21:B134: 86        .byte $86	; <F>
- D - I - 0x02F145 21:B135: 2B        .byte $2B	; <ろ>

- D - I - 0x02F146 21:B136: 20        .byte $20	; <み>
- D - I - 0x02F147 21:B137: 05        .byte $05	; <お>
- D - I - 0x02F148 21:B138: 52        .byte $52	; <ツ>
- D - I - 0x02F149 21:B139: 09        .byte $09	; <け>
- D - I - 0x02F14A 21:B13A: 56        .byte $56	; <ニ>
- D - I - 0x02F14B 21:B13B: 24        .byte $24	; <や>
- D - I - 0x02F14C 21:B13C: 42        .byte $42	; <イ>
- D - I - 0x02F14D 21:B13D: 27        .byte $27	; <ら>
- D - I - 0x02F14E 21:B13E: 47        .byte $47	; <キ>
- D - I - 0x02F14F 21:B13F: 2C        .byte $2C	; <わ>
- D - I - 0x02F150 21:B140: 87        .byte $87	; <G>
- D - I - 0x02F151 21:B141: 2D        .byte $2D	; <を>

- D - I - 0x02F152 21:B142: 10        .byte $10	; <た>
- D - I - 0x02F153 21:B143: 06        .byte $06	; <か>
- D - I - 0x02F154 21:B144: 56        .byte $56	; <ニ>
- D - I - 0x02F155 21:B145: 26        .byte $26	; <よ>
- D - I - 0x02F156 21:B146: 47        .byte $47	; <キ>
- D - I - 0x02F157 21:B147: 2E        .byte $2E	; <ん>
- D - I - 0x02F158 21:B148: 87        .byte $87	; <G>
- D - I - 0x02F159 21:B149: 2F        .byte $2F	; <っ>

- D - I - 0x02F15A 21:B14A: 00        .byte $00
- D - I - 0x02F15B 21:B14B: 08        .byte $08	; <く>
- D - I - 0x02F15C 21:B14C: 6C        .byte $6C	; <ワ>
- D - I - 0x02F15D 21:B14D: 20        .byte $20	; <み>

- D - I - 0x02F15E 21:B14E: 01        .byte $01	; <あ>



off_B14F:
- - - - - 0x02F15F 21:B14F: 08        .byte $08	; <く>
- - - - - 0x02F160 21:B150: 01        .byte $01	; <あ>
- - - - - 0x02F161 21:B151: 44        .byte $44	; <エ>
- - - - - 0x02F162 21:B152: 1F        .byte $1F	; <ま>
- - - - - 0x02F163 21:B153: 84        .byte $84	; <D>
- - - - - 0x02F164 21:B154: 37        .byte $37	; <4>

- - - - - 0x02F165 21:B155: 18        .byte $18	; <ね>
- - - - - 0x02F166 21:B156: 02        .byte $02	; <い>
- - - - - 0x02F167 21:B157: 45        .byte $45	; <オ>
- - - - - 0x02F168 21:B158: 3A        .byte $3A	; <7>
- - - - - 0x02F169 21:B159: 44        .byte $44	; <エ>
- - - - - 0x02F16A 21:B15A: 34        .byte $34	; <1>
- - - - - 0x02F16B 21:B15B: 85        .byte $85	; <E>
- - - - - 0x02F16C 21:B15C: 3B        .byte $3B	; <8>
- - - - - 0x02F16D 21:B15D: 86        .byte $86	; <F>
- - - - - 0x02F16E 21:B15E: 35        .byte $35	; <2>

- - - - - 0x02F16F 21:B15F: 02        .byte $02	; <い>
- - - - - 0x02F170 21:B160: F4 B0     .word off_B0F4



off_B162:
- D - I - 0x02F172 21:B162: 08        .byte $08	; <く>
- D - I - 0x02F173 21:B163: 01        .byte $01	; <あ>
- D - I - 0x02F174 21:B164: 44        .byte $44	; <エ>
- D - I - 0x02F175 21:B165: 48        .byte $48	; <ク>
- D - I - 0x02F176 21:B166: 84        .byte $84	; <D>
- D - I - 0x02F177 21:B167: 49        .byte $49	; <ケ>

- D - I - 0x02F178 21:B168: 18        .byte $18	; <ね>
- D - I - 0x02F179 21:B169: 02        .byte $02	; <い>
- D - I - 0x02F17A 21:B16A: 45        .byte $45	; <オ>
- D - I - 0x02F17B 21:B16B: 3A        .byte $3A	; <7>
- D - I - 0x02F17C 21:B16C: 44        .byte $44	; <エ>
- D - I - 0x02F17D 21:B16D: 4A        .byte $4A	; <コ>
- D - I - 0x02F17E 21:B16E: 85        .byte $85	; <E>
- D - I - 0x02F17F 21:B16F: 3B        .byte $3B	; <8>
- D - I - 0x02F180 21:B170: 86        .byte $86	; <F>
- D - I - 0x02F181 21:B171: 3F        .byte $3F	; <•>

- D - I - 0x02F182 21:B172: 02        .byte $02	; <い>
- D - I - 0x02F183 21:B173: F4 B0     .word off_B0F4



off_B175:
- D - I - 0x02F185 21:B175: 08        .byte $08	; <く>
- D - I - 0x02F186 21:B176: 01        .byte $01	; <あ>
- D - I - 0x02F187 21:B177: 44        .byte $44	; <エ>
- D - I - 0x02F188 21:B178: 46        .byte $46	; <カ>
- D - I - 0x02F189 21:B179: 84        .byte $84	; <D>
- D - I - 0x02F18A 21:B17A: 47        .byte $47	; <キ>

- D - I - 0x02F18B 21:B17B: 18        .byte $18	; <ね>
- D - I - 0x02F18C 21:B17C: 02        .byte $02	; <い>
- D - I - 0x02F18D 21:B17D: 45        .byte $45	; <オ>
- D - I - 0x02F18E 21:B17E: 3A        .byte $3A	; <7>
- D - I - 0x02F18F 21:B17F: 44        .byte $44	; <エ>
- D - I - 0x02F190 21:B180: 4B        .byte $4B	; <サ>
- D - I - 0x02F191 21:B181: 85        .byte $85	; <E>
- D - I - 0x02F192 21:B182: 3B        .byte $3B	; <8>
- D - I - 0x02F193 21:B183: 86        .byte $86	; <F>
- D - I - 0x02F194 21:B184: 3F        .byte $3F	; <•>

- D - I - 0x02F195 21:B185: 02        .byte $02	; <い>
- D - I - 0x02F196 21:B186: F4 B0     .word off_B0F4



off_B188:
- - - - - 0x02F198 21:B188: 08        .byte $08	; <く>
- - - - - 0x02F199 21:B189: 01        .byte $01	; <あ>
- - - - - 0x02F19A 21:B18A: 44        .byte $44	; <エ>
- - - - - 0x02F19B 21:B18B: 44        .byte $44	; <エ>
- - - - - 0x02F19C 21:B18C: 84        .byte $84	; <D>
- - - - - 0x02F19D 21:B18D: 45        .byte $45	; <オ>

- - - - - 0x02F19E 21:B18E: 18        .byte $18	; <ね>
- - - - - 0x02F19F 21:B18F: 02        .byte $02	; <い>
- - - - - 0x02F1A0 21:B190: 45        .byte $45	; <オ>
- - - - - 0x02F1A1 21:B191: 3A        .byte $3A	; <7>
- - - - - 0x02F1A2 21:B192: 44        .byte $44	; <エ>
- - - - - 0x02F1A3 21:B193: 42        .byte $42	; <イ>
- - - - - 0x02F1A4 21:B194: 85        .byte $85	; <E>
- - - - - 0x02F1A5 21:B195: 3B        .byte $3B	; <8>
- - - - - 0x02F1A6 21:B196: 86        .byte $86	; <F>
- - - - - 0x02F1A7 21:B197: 43        .byte $43	; <ウ>

- - - - - 0x02F1A8 21:B198: 02        .byte $02	; <い>
- - - - - 0x02F1A9 21:B199: F4 B0     .word off_B0F4



off_B19B:
- D - I - 0x02F1AB 21:B19B: 10        .byte $10	; <た>
- D - I - 0x02F1AC 21:B19C: 01        .byte $01	; <あ>
- D - I - 0x02F1AD 21:B19D: 40        .byte $40	; <「>
- D - I - 0x02F1AE 21:B19E: 32        .byte $32	; <ょ>
- D - I - 0x02F1AF 21:B19F: 44        .byte $44	; <エ>
- D - I - 0x02F1B0 21:B1A0: 33        .byte $33	; <0>
- D - I - 0x02F1B1 21:B1A1: 84        .byte $84	; <D>
- D - I - 0x02F1B2 21:B1A2: 36        .byte $36	; <3>

- D - I - 0x02F1B3 21:B1A3: 18        .byte $18	; <ね>
- D - I - 0x02F1B4 21:B1A4: 02        .byte $02	; <い>
- D - I - 0x02F1B5 21:B1A5: 45        .byte $45	; <オ>
- D - I - 0x02F1B6 21:B1A6: 3A        .byte $3A	; <7>
- D - I - 0x02F1B7 21:B1A7: 44        .byte $44	; <エ>
- D - I - 0x02F1B8 21:B1A8: 38        .byte $38	; <5>
- D - I - 0x02F1B9 21:B1A9: 85        .byte $85	; <E>
- D - I - 0x02F1BA 21:B1AA: 3B        .byte $3B	; <8>
- D - I - 0x02F1BB 21:B1AB: 86        .byte $86	; <F>
- D - I - 0x02F1BC 21:B1AC: 39        .byte $39	; <6>

- D - I - 0x02F1BD 21:B1AD: 08        .byte $08	; <く>
- D - I - 0x02F1BE 21:B1AE: 01        .byte $01	; <あ>
- D - I - 0x02F1BF 21:B1AF: 92        .byte $92	; <W>
- D - I - 0x02F1C0 21:B1B0: 10        .byte $10	; <た>
- D - I - 0x02F1C1 21:B1B1: DF        .byte $DF
- D - I - 0x02F1C2 21:B1B2: 13        .byte $13	; <て>

- D - I - 0x02F1C3 21:B1B3: 10        .byte $10	; <た>
- D - I - 0x02F1C4 21:B1B4: 03        .byte $03	; <う>
- D - I - 0x02F1C5 21:B1B5: 57        .byte $57	; <ヌ>
- D - I - 0x02F1C6 21:B1B6: 0C        .byte $0C	; <し>
- D - I - 0x02F1C7 21:B1B7: 41        .byte $41	; <ア>
- D - I - 0x02F1C8 21:B1B8: 1A        .byte $1A	; <は>
- D - I - 0x02F1C9 21:B1B9: 42        .byte $42	; <イ>
- D - I - 0x02F1CA 21:B1BA: 0F        .byte $0F	; <そ>

- D - I - 0x02F1CB 21:B1BB: 08        .byte $08	; <く>
- D - I - 0x02F1CC 21:B1BC: 04        .byte $04	; <え>
- D - I - 0x02F1CD 21:B1BD: 47        .byte $47	; <キ>
- D - I - 0x02F1CE 21:B1BE: 18        .byte $18	; <ね>
- D - I - 0x02F1CF 21:B1BF: 87        .byte $87	; <G>
- D - I - 0x02F1D0 21:B1C0: 19        .byte $19	; <の>

- D - I - 0x02F1D1 21:B1C1: 00        .byte $00
- D - I - 0x02F1D2 21:B1C2: 05        .byte $05	; <お>
- D - I - 0x02F1D3 21:B1C3: 53        .byte $53	; <テ>
- D - I - 0x02F1D4 21:B1C4: 23        .byte $23	; <も>

- D - I - 0x02F1D5 21:B1C5: 08        .byte $08	; <く>
- D - I - 0x02F1D6 21:B1C6: 06        .byte $06	; <か>
- D - I - 0x02F1D7 21:B1C7: 6F        .byte $6F	; <ッ>
- D - I - 0x02F1D8 21:B1C8: 08        .byte $08	; <く>
- D - I - 0x02F1D9 21:B1C9: 53        .byte $53	; <テ>
- D - I - 0x02F1DA 21:B1CA: 0B        .byte $0B	; <さ>

- D - I - 0x02F1DB 21:B1CB: 08        .byte $08	; <く>
- D - I - 0x02F1DC 21:B1CC: 07        .byte $07	; <き>
- D - I - 0x02F1DD 21:B1CD: 6F        .byte $6F	; <ッ>
- D - I - 0x02F1DE 21:B1CE: 0A        .byte $0A	; <こ>
- D - I - 0x02F1DF 21:B1CF: 53        .byte $53	; <テ>
- D - I - 0x02F1E0 21:B1D0: 21        .byte $21	; <む>

- D - I - 0x02F1E1 21:B1D1: 02        .byte $02	; <い>
- D - I - 0x02F1E2 21:B1D2: 16 B1     .word off_B116



off_B1D4_9A:
- D - I - 0x02F1E4 21:B1D4: 08        .byte $08	; <く>
- D - I - 0x02F1E5 21:B1D5: 1E        .byte $1E	; <ほ>
- D - I - 0x02F1E6 21:B1D6: 83        .byte $83	; <C>
- D - I - 0x02F1E7 21:B1D7: 4C        .byte $4C	; <シ>
- D - I - 0x02F1E8 21:B1D8: C3        .byte $C3	; <バ>
- D - I - 0x02F1E9 21:B1D9: 4D        .byte $4D	; <ス>

- D - I - 0x02F1EA 21:B1DA: 08        .byte $08	; <く>
- D - I - 0x02F1EB 21:B1DB: 00        .byte $00
- D - I - 0x02F1EC 21:B1DC: 83        .byte $83	; <C>
- D - I - 0x02F1ED 21:B1DD: 4E        .byte $4E	; <セ>
- D - I - 0x02F1EE 21:B1DE: C3        .byte $C3	; <バ>
- D - I - 0x02F1EF 21:B1DF: 4F        .byte $4F	; <ソ>

- D - I - 0x02F1F0 21:B1E0: 02        .byte $02	; <い>
- D - I - 0x02F1F1 21:B1E1: 9B B1     .word off_B19B



off_B1E3_9B:
- D - I - 0x02F1F3 21:B1E3: 10        .byte $10	; <た>
- D - I - 0x02F1F4 21:B1E4: 1E        .byte $1E	; <ほ>
- D - I - 0x02F1F5 21:B1E5: 1B        .byte $1B	; <ひ>
- D - I - 0x02F1F6 21:B1E6: 51        .byte $51	; <チ>
- D - I - 0x02F1F7 21:B1E7: 83        .byte $83	; <C>
- D - I - 0x02F1F8 21:B1E8: 54        .byte $54	; <ト>
- D - I - 0x02F1F9 21:B1E9: C3        .byte $C3	; <バ>
- D - I - 0x02F1FA 21:B1EA: 55        .byte $55	; <ナ>

- D - I - 0x02F1FB 21:B1EB: 10        .byte $10	; <た>
- D - I - 0x02F1FC 21:B1EC: 00        .byte $00
- D - I - 0x02F1FD 21:B1ED: 1B        .byte $1B	; <ひ>
- D - I - 0x02F1FE 21:B1EE: 53        .byte $53	; <テ>
- D - I - 0x02F1FF 21:B1EF: 83        .byte $83	; <C>
- D - I - 0x02F200 21:B1F0: 56        .byte $56	; <ニ>
- D - I - 0x02F201 21:B1F1: C3        .byte $C3	; <バ>
- D - I - 0x02F202 21:B1F2: 57        .byte $57	; <ヌ>

- D - I - 0x02F203 21:B1F3: 00        .byte $00
- D - I - 0x02F204 21:B1F4: 01        .byte $01	; <あ>
- D - I - 0x02F205 21:B1F5: C3        .byte $C3	; <バ>
- D - I - 0x02F206 21:B1F6: 5D        .byte $5D	; <ヘ>

- D - I - 0x02F207 21:B1F7: 02        .byte $02	; <い>
- D - I - 0x02F208 21:B1F8: 9B B1     .word off_B19B



off_B1FA_9C:
- D - I - 0x02F20A 21:B1FA: 10        .byte $10	; <た>
- D - I - 0x02F20B 21:B1FB: 1E        .byte $1E	; <ほ>
- D - I - 0x02F20C 21:B1FC: 1B        .byte $1B	; <ひ>
- D - I - 0x02F20D 21:B1FD: 50        .byte $50	; <タ>
- D - I - 0x02F20E 21:B1FE: 83        .byte $83	; <C>
- D - I - 0x02F20F 21:B1FF: 58        .byte $58	; <ネ>
- D - I - 0x02F210 21:B200: C3        .byte $C3	; <バ>
- D - I - 0x02F211 21:B201: 59        .byte $59	; <ノ>

- D - I - 0x02F212 21:B202: 10        .byte $10	; <た>
- D - I - 0x02F213 21:B203: 00        .byte $00
- D - I - 0x02F214 21:B204: 1B        .byte $1B	; <ひ>
- D - I - 0x02F215 21:B205: 52        .byte $52	; <ツ>
- D - I - 0x02F216 21:B206: 83        .byte $83	; <C>
- D - I - 0x02F217 21:B207: 5A        .byte $5A	; <ハ>
- D - I - 0x02F218 21:B208: C3        .byte $C3	; <バ>
- D - I - 0x02F219 21:B209: 5B        .byte $5B	; <ヒ>

- D - I - 0x02F21A 21:B20A: 00        .byte $00
- D - I - 0x02F21B 21:B20B: 01        .byte $01	; <あ>
- D - I - 0x02F21C 21:B20C: C3        .byte $C3	; <バ>
- D - I - 0x02F21D 21:B20D: 5C        .byte $5C	; <フ>

- D - I - 0x02F21E 21:B20E: 02        .byte $02	; <い>
- D - I - 0x02F21F 21:B20F: 9B B1     .word off_B19B



off_B211_9D:
- D - I - 0x02F221 21:B211: 08        .byte $08	; <く>
- D - I - 0x02F222 21:B212: 03        .byte $03	; <う>
- D - I - 0x02F223 21:B213: 0F        .byte $0F	; <そ>
- D - I - 0x02F224 21:B214: 4C        .byte $4C	; <シ>
- D - I - 0x02F225 21:B215: 13        .byte $13	; <て>
- D - I - 0x02F226 21:B216: 4D        .byte $4D	; <ス>
- D - I - 0x02F227 21:B217: 08        .byte $08	; <く>

- D - I - 0x02F228 21:B218: 04        .byte $04	; <え>
- D - I - 0x02F229 21:B219: 0F        .byte $0F	; <そ>
- D - I - 0x02F22A 21:B21A: 4E        .byte $4E	; <セ>
- D - I - 0x02F22B 21:B21B: 13        .byte $13	; <て>
- D - I - 0x02F22C 21:B21C: 4F        .byte $4F	; <ソ>

- D - I - 0x02F22D 21:B21D: 01        .byte $01	; <あ>



off_B21E_9E:
- D - I - 0x02F22E 21:B21E: 00        .byte $00
- D - I - 0x02F22F 21:B21F: 04        .byte $04	; <え>
- D - I - 0x02F230 21:B220: 45        .byte $45	; <オ>
- D - I - 0x02F231 21:B221: 91        .byte $91	; <V>

- D - I - 0x02F232 21:B222: 00        .byte $00
- D - I - 0x02F233 21:B223: 05        .byte $05	; <お>
- D - I - 0x02F234 21:B224: 45        .byte $45	; <オ>
- D - I - 0x02F235 21:B225: 93        .byte $93	; <Y>

- D - I - 0x02F236 21:B226: 00        .byte $00
- D - I - 0x02F237 21:B227: 06        .byte $06	; <か>
- D - I - 0x02F238 21:B228: 45        .byte $45	; <オ>
- D - I - 0x02F239 21:B229: 99        .byte $99
; продолжение

off_B22A:
- D - I - 0x02F23A 21:B22A: 03        .byte $03	; <う>
- D - I - 0x02F23B 21:B22B: 43 B2     .word off_B243
- D - I - 0x02F23D 21:B22D: 76 B2     .word off_B276
- D - I - 0x02F23F 21:B22F: 87 B2     .word off_B287
- D - I - 0x02F241 21:B231: 43 B2     .word off_B243
- D - I - 0x02F243 21:B233: 92 B2     .word off_B292
- D - I - 0x02F245 21:B235: 43 B2     .word off_B243
- D - I - 0x02F247 21:B237: 9F B2     .word off_B29F
- D - I - 0x02F249 21:B239: B7 B2     .word off_B2B7
- D - I - 0x02F24B 21:B23B: 87 B2     .word off_B287
- D - I - 0x02F24D 21:B23D: AA B2     .word off_B2AA
- D - I - 0x02F24F 21:B23F: 87 B2     .word off_B287
- D - I - 0x02F251 21:B241: 87 B2     .word off_B287



off_B243:
- D - I - 0x02F253 21:B243: 00        .byte $00
- D - I - 0x02F254 21:B244: 02        .byte $02	; <い>
- D - I - 0x02F255 21:B245: 44        .byte $44	; <エ>
- D - I - 0x02F256 21:B246: A8        .byte $A8	; <ぜ>

- D - I - 0x02F257 21:B247: 00        .byte $00
- D - I - 0x02F258 21:B248: 03        .byte $03	; <う>
- D - I - 0x02F259 21:B249: 44        .byte $44	; <エ>
- D - I - 0x02F25A 21:B24A: AA        .byte $AA	; <だ>

off_B24B:
- D - I - 0x02F25B 21:B24B: 00        .byte $00
- D - I - 0x02F25C 21:B24C: 02        .byte $02	; <い>
- D - I - 0x02F25D 21:B24D: 85        .byte $85	; <E>
- D - I - 0x02F25E 21:B24E: 87        .byte $87	; <G>

- D - I - 0x02F25F 21:B24F: 08        .byte $08	; <く>
- D - I - 0x02F260 21:B250: 03        .byte $03	; <う>
- D - I - 0x02F261 21:B251: 41        .byte $41	; <ア>
- D - I - 0x02F262 21:B252: 89        .byte $89	; <I>
- D - I - 0x02F263 21:B253: 85        .byte $85	; <E>
- D - I - 0x02F264 21:B254: 8D        .byte $8D	; <P>
; продолжение


off_B255:
- D - I - 0x02F265 21:B255: 00        .byte $00
- D - I - 0x02F266 21:B256: 01        .byte $01	; <あ>
- D - I - 0x02F267 21:B257: 85        .byte $85	; <E>
- D - I - 0x02F268 21:B258: 85        .byte $85	; <E>

- D - I - 0x02F269 21:B259: 00        .byte $00
- D - I - 0x02F26A 21:B25A: 02        .byte $02	; <い>
- D - I - 0x02F26B 21:B25B: 45        .byte $45	; <オ>
- D - I - 0x02F26C 21:B25C: 86        .byte $86	; <F>

- D - I - 0x02F26D 21:B25D: 00        .byte $00
- D - I - 0x02F26E 21:B25E: 03        .byte $03	; <う>
- D - I - 0x02F26F 21:B25F: 45        .byte $45	; <オ>
- D - I - 0x02F270 21:B260: 8C        .byte $8C	; <M>

- D - I - 0x02F271 21:B261: 10        .byte $10	; <た>
- D - I - 0x02F272 21:B262: 04        .byte $04	; <え>
- D - I - 0x02F273 21:B263: 42        .byte $42	; <イ>
- D - I - 0x02F274 21:B264: 8B        .byte $8B	; <K>
- D - I - 0x02F275 21:B265: 46        .byte $46	; <カ>
- D - I - 0x02F276 21:B266: 8E        .byte $8E	; <L>
- D - I - 0x02F277 21:B267: 86        .byte $86	; <F>
- D - I - 0x02F278 21:B268: 94        .byte $94

- D - I - 0x02F279 21:B269: 08        .byte $08	; <く>
- D - I - 0x02F27A 21:B26A: 05        .byte $05	; <お>
- D - I - 0x02F27B 21:B26B: 55        .byte $55	; <ナ>
- D - I - 0x02F27C 21:B26C: A0        .byte $A0	; <が>
- D - I - 0x02F27D 21:B26D: 41        .byte $41	; <ア>
- D - I - 0x02F27E 21:B26E: A1        .byte $A1	; <ぎ>

- D - I - 0x02F27F 21:B26F: 08        .byte $08	; <く>
- D - I - 0x02F280 21:B270: 06        .byte $06	; <か>
- D - I - 0x02F281 21:B271: 55        .byte $55	; <ナ>
- D - I - 0x02F282 21:B272: A2        .byte $A2	; <ぐ>
- D - I - 0x02F283 21:B273: 41        .byte $41	; <ア>
- D - I - 0x02F284 21:B274: A3        .byte $A3	; <げ>

- D - I - 0x02F285 21:B275: 01        .byte $01	; <あ>



off_B276:
- D - I - 0x02F286 21:B276: 00        .byte $00
- D - I - 0x02F287 21:B277: 01        .byte $01	; <あ>
- D - I - 0x02F288 21:B278: 44        .byte $44	; <エ>
- D - I - 0x02F289 21:B279: A9        .byte $A9	; <ぞ>

- D - I - 0x02F28A 21:B27A: 08        .byte $08	; <く>
- D - I - 0x02F28B 21:B27B: 02        .byte $02	; <い>
- D - I - 0x02F28C 21:B27C: 44        .byte $44	; <エ>
- D - I - 0x02F28D 21:B27D: AB        .byte $AB	; <ぢ>
- D - I - 0x02F28E 21:B27E: 84        .byte $84	; <D>
- D - I - 0x02F28F 21:B27F: AE        .byte $AE	; <ど>

- D - I - 0x02F290 21:B280: 00        .byte $00
- D - I - 0x02F291 21:B281: 03        .byte $03	; <う>
- D - I - 0x02F292 21:B282: 44        .byte $44	; <エ>
- D - I - 0x02F293 21:B283: AA        .byte $AA	; <だ>

- D - I - 0x02F294 21:B284: 02        .byte $02	; <い>
- D - I - 0x02F295 21:B285: 4B B2     .word off_B24B



off_B287:
- D - I - 0x02F297 21:B287: 00        .byte $00
- D - I - 0x02F298 21:B288: 02        .byte $02	; <い>
- D - I - 0x02F299 21:B289: 44        .byte $44	; <エ>
- D - I - 0x02F29A 21:B28A: AC        .byte $AC	; <づ>

- D - I - 0x02F29B 21:B28B: 00        .byte $00
- D - I - 0x02F29C 21:B28C: 03        .byte $03	; <う>
- D - I - 0x02F29D 21:B28D: 44        .byte $44	; <エ>
- D - I - 0x02F29E 21:B28E: AA        .byte $AA	; <だ>

- D - I - 0x02F29F 21:B28F: 02        .byte $02	; <い>
- D - I - 0x02F2A0 21:B290: 4B B2     .word off_B24B



off_B292:
- D - I - 0x02F2A2 21:B292: 08        .byte $08	; <く>
- D - I - 0x02F2A3 21:B293: 02        .byte $02	; <い>
- D - I - 0x02F2A4 21:B294: 40        .byte $40	; <「>
- D - I - 0x02F2A5 21:B295: A7        .byte $A7	; <ず>
- D - I - 0x02F2A6 21:B296: 44        .byte $44	; <エ>
- D - I - 0x02F2A7 21:B297: B2        .byte $B2	; <べ>

- D - I - 0x02F2A8 21:B298: 00        .byte $00
- D - I - 0x02F2A9 21:B299: 03        .byte $03	; <う>
- D - I - 0x02F2AA 21:B29A: 44        .byte $44	; <エ>
- D - I - 0x02F2AB 21:B29B: AA        .byte $AA	; <だ>

- D - I - 0x02F2AC 21:B29C: 02        .byte $02	; <い>
- D - I - 0x02F2AD 21:B29D: 4B B2     .word off_B24B



off_B29F:
- D - I - 0x02F2AF 21:B29F: 00        .byte $00
- D - I - 0x02F2B0 21:B2A0: 02        .byte $02	; <い>
- D - I - 0x02F2B1 21:B2A1: 44        .byte $44	; <エ>
- D - I - 0x02F2B2 21:B2A2: AD        .byte $AD	; <で>

- D - I - 0x02F2B3 21:B2A3: 00        .byte $00
- D - I - 0x02F2B4 21:B2A4: 03        .byte $03	; <う>
- D - I - 0x02F2B5 21:B2A5: 44        .byte $44	; <エ>
- D - I - 0x02F2B6 21:B2A6: AA        .byte $AA	; <だ>

- D - I - 0x02F2B7 21:B2A7: 02        .byte $02	; <い>
- D - I - 0x02F2B8 21:B2A8: 4B B2     .word off_B24B



off_B2AA:
- D - I - 0x02F2BA 21:B2AA: 08        .byte $08	; <く>
- D - I - 0x02F2BB 21:B2AB: 02        .byte $02	; <い>
- D - I - 0x02F2BC 21:B2AC: 40        .byte $40	; <「>
- D - I - 0x02F2BD 21:B2AD: A7        .byte $A7	; <ず>
- D - I - 0x02F2BE 21:B2AE: 44        .byte $44	; <エ>
- D - I - 0x02F2BF 21:B2AF: A8        .byte $A8	; <ぜ>

- D - I - 0x02F2C0 21:B2B0: 00        .byte $00
- D - I - 0x02F2C1 21:B2B1: 03        .byte $03	; <う>
- D - I - 0x02F2C2 21:B2B2: 44        .byte $44	; <エ>
- D - I - 0x02F2C3 21:B2B3: AA        .byte $AA	; <だ>

- D - I - 0x02F2C4 21:B2B4: 02        .byte $02	; <い>
- D - I - 0x02F2C5 21:B2B5: 4B B2     .word off_B24B



off_B2B7:
- D - I - 0x02F2C7 21:B2B7: 00        .byte $00
- D - I - 0x02F2C8 21:B2B8: 02        .byte $02	; <い>
- D - I - 0x02F2C9 21:B2B9: 44        .byte $44	; <エ>
- D - I - 0x02F2CA 21:B2BA: A8        .byte $A8	; <ぜ>

- D - I - 0x02F2CB 21:B2BB: 00        .byte $00
- D - I - 0x02F2CC 21:B2BC: 03        .byte $03	; <う>
- D - I - 0x02F2CD 21:B2BD: 44        .byte $44	; <エ>
- D - I - 0x02F2CE 21:B2BE: AA        .byte $AA	; <だ>

- D - I - 0x02F2CF 21:B2BF: 00        .byte $00
- D - I - 0x02F2D0 21:B2C0: 02        .byte $02	; <い>
- D - I - 0x02F2D1 21:B2C1: 85        .byte $85	; <E>
- D - I - 0x02F2D2 21:B2C2: 90        .byte $90	; <U>

- D - I - 0x02F2D3 21:B2C3: 08        .byte $08	; <く>
- D - I - 0x02F2D4 21:B2C4: 03        .byte $03	; <う>
- D - I - 0x02F2D5 21:B2C5: 41        .byte $41	; <ア>
- D - I - 0x02F2D6 21:B2C6: 8A        .byte $8A	; <N>
- D - I - 0x02F2D7 21:B2C7: 85        .byte $85	; <E>
- D - I - 0x02F2D8 21:B2C8: 92        .byte $92	; <W>

- D - I - 0x02F2D9 21:B2C9: 02        .byte $02	; <い>
- D - I - 0x02F2DA 21:B2CA: 55 B2     .word off_B255



off_B2CC_9F:
- D - I - 0x02F2DC 21:B2CC: 00        .byte $00
- D - I - 0x02F2DD 21:B2CD: 03        .byte $03	; <う>
- D - I - 0x02F2DE 21:B2CE: 45        .byte $45	; <オ>
- D - I - 0x02F2DF 21:B2CF: 95        .byte $95

- D - I - 0x02F2E0 21:B2D0: 08        .byte $08	; <く>
- D - I - 0x02F2E1 21:B2D1: 04        .byte $04	; <え>
- D - I - 0x02F2E2 21:B2D2: 43        .byte $43	; <ウ>
- D - I - 0x02F2E3 21:B2D3: 96        .byte $96
- D - I - 0x02F2E4 21:B2D4: 45        .byte $45	; <オ>
- D - I - 0x02F2E5 21:B2D5: 97        .byte $97

- D - I - 0x02F2E6 21:B2D6: 02        .byte $02	; <い>
- D - I - 0x02F2E7 21:B2D7: 2A B2     .word off_B22A



off_B2D9_A0:
- D - I - 0x02F2E9 21:B2D9: 03        .byte $03	; <う>
- D - I - 0x02F2EA 21:B2DA: E6 B2     .word off_B2E6
- - - - - 0x02F2EC 21:B2DC: 25 B3     .word off_B325
- D - I - 0x02F2EE 21:B2DE: 3C B3     .word off_B33C
- D - I - 0x02F2F0 21:B2E0: 81 B3     .word off_B381
- D - I - 0x02F2F2 21:B2E2: 9A B3     .word off_B39A
- D - I - 0x02F2F4 21:B2E4: B1 B3     .word off_B3B1



off_B2E6:
- D - I - 0x02F2F6 21:B2E6: 00        .byte $00
- D - I - 0x02F2F7 21:B2E7: 04        .byte $04	; <え>
- D - I - 0x02F2F8 21:B2E8: 46        .byte $46	; <カ>
- D - I - 0x02F2F9 21:B2E9: 9C        .byte $9C

- D - I - 0x02F2FA 21:B2EA: 00        .byte $00
- D - I - 0x02F2FB 21:B2EB: 05        .byte $05	; <お>
- D - I - 0x02F2FC 21:B2EC: 46        .byte $46	; <カ>
- D - I - 0x02F2FD 21:B2ED: 93        .byte $93	; <Y>

- D - I - 0x02F2FE 21:B2EE: 00        .byte $00
- D - I - 0x02F2FF 21:B2EF: 06        .byte $06	; <か>
- D - I - 0x02F300 21:B2F0: 46        .byte $46	; <カ>
- D - I - 0x02F301 21:B2F1: 99        .byte $99
; продолжение


off_B2F2:
- D - I - 0x02F302 21:B2F2: 08        .byte $08	; <く>
- D - I - 0x02F303 21:B2F3: 02        .byte $02	; <い>
- D - I - 0x02F304 21:B2F4: 43        .byte $43	; <ウ>
- D - I - 0x02F305 21:B2F5: AF        .byte $AF	; <ば>
- D - I - 0x02F306 21:B2F6: 47        .byte $47	; <キ>
- D - I - 0x02F307 21:B2F7: BA        .byte $BA	; <ジ>

- D - I - 0x02F308 21:B2F8: 00        .byte $00
- D - I - 0x02F309 21:B2F9: 03        .byte $03	; <う>
- D - I - 0x02F30A 21:B2FA: 44        .byte $44	; <エ>
- D - I - 0x02F30B 21:B2FB: AA        .byte $AA	; <だ>
; продолжение


off_B2FC:
- D - I - 0x02F30C 21:B2FC: 00        .byte $00
- D - I - 0x02F30D 21:B2FD: 01        .byte $01	; <あ>
- D - I - 0x02F30E 21:B2FE: 86        .byte $86	; <F>
- D - I - 0x02F30F 21:B2FF: 98        .byte $98

- D - I - 0x02F310 21:B300: 10        .byte $10	; <た>
- D - I - 0x02F311 21:B301: 02        .byte $02	; <い>
- D - I - 0x02F312 21:B302: 45        .byte $45	; <オ>
- D - I - 0x02F313 21:B303: 82        .byte $82	; <B>
- D - I - 0x02F314 21:B304: 46        .byte $46	; <カ>
- D - I - 0x02F315 21:B305: 8F        .byte $8F	; <S>
- D - I - 0x02F316 21:B306: 86        .byte $86	; <F>
- D - I - 0x02F317 21:B307: 9A        .byte $9A

- D - I - 0x02F318 21:B308: 10        .byte $10	; <た>
- D - I - 0x02F319 21:B309: 03        .byte $03	; <う>
- D - I - 0x02F31A 21:B30A: 42        .byte $42	; <イ>
- D - I - 0x02F31B 21:B30B: 88        .byte $88	; <H>
- D - I - 0x02F31C 21:B30C: 45        .byte $45	; <オ>
- D - I - 0x02F31D 21:B30D: 8C        .byte $8C	; <M>
- D - I - 0x02F31E 21:B30E: 85        .byte $85	; <E>
- D - I - 0x02F31F 21:B30F: 8D        .byte $8D	; <P>

- D - I - 0x02F320 21:B310: 10        .byte $10	; <た>
- D - I - 0x02F321 21:B311: 04        .byte $04	; <え>
- D - I - 0x02F322 21:B312: 42        .byte $42	; <イ>
- D - I - 0x02F323 21:B313: A4        .byte $A4	; <ご>
- D - I - 0x02F324 21:B314: 46        .byte $46	; <カ>
- D - I - 0x02F325 21:B315: A5        .byte $A5	; <ざ>
- D - I - 0x02F326 21:B316: 86        .byte $86	; <F>
- D - I - 0x02F327 21:B317: 9D        .byte $9D

- D - I - 0x02F328 21:B318: 08        .byte $08	; <く>
- D - I - 0x02F329 21:B319: 05        .byte $05	; <お>
- D - I - 0x02F32A 21:B31A: 56        .byte $56	; <ニ>
- D - I - 0x02F32B 21:B31B: A0        .byte $A0	; <が>
- D - I - 0x02F32C 21:B31C: 42        .byte $42	; <イ>
- D - I - 0x02F32D 21:B31D: A6        .byte $A6	; <じ>

- D - I - 0x02F32E 21:B31E: 08        .byte $08	; <く>
- D - I - 0x02F32F 21:B31F: 06        .byte $06	; <か>
- D - I - 0x02F330 21:B320: 56        .byte $56	; <ニ>
- D - I - 0x02F331 21:B321: A2        .byte $A2	; <ぐ>
- D - I - 0x02F332 21:B322: 42        .byte $42	; <イ>
- D - I - 0x02F333 21:B323: A3        .byte $A3	; <げ>

- D - I - 0x02F334 21:B324: 01        .byte $01	; <あ>



off_B325:
- - - - - 0x02F335 21:B325: 00        .byte $00
- - - - - 0x02F336 21:B326: 04        .byte $04	; <え>
- - - - - 0x02F337 21:B327: 46        .byte $46	; <カ>
- - - - - 0x02F338 21:B328: 9C        .byte $9C

- - - - - 0x02F339 21:B329: 00        .byte $00
- - - - - 0x02F33A 21:B32A: 05        .byte $05	; <お>
- - - - - 0x02F33B 21:B32B: 46        .byte $46	; <カ>
- - - - - 0x02F33C 21:B32C: 93        .byte $93	; <Y>

- - - - - 0x02F33D 21:B32D: 00        .byte $00
- - - - - 0x02F33E 21:B32E: 06        .byte $06	; <か>
- - - - - 0x02F33F 21:B32F: 46        .byte $46	; <カ>
- - - - - 0x02F340 21:B330: 99        .byte $99
; продолжение


off_B331:
- - - - - 0x02F341 21:B331: 00        .byte $00
- - - - - 0x02F342 21:B332: 02        .byte $02	; <い>
- - - - - 0x02F343 21:B333: 44        .byte $44	; <エ>
- - - - - 0x02F344 21:B334: 9F        .byte $9F

- - - - - 0x02F345 21:B335: 00        .byte $00
- - - - - 0x02F346 21:B336: 03        .byte $03	; <う>
- - - - - 0x02F347 21:B337: 44        .byte $44	; <エ>
- - - - - 0x02F348 21:B338: B5        .byte $B5	; <ギ>

- - - - - 0x02F349 21:B339: 02        .byte $02	; <い>
- - - - - 0x02F34A 21:B33A: FC B2     .word off_B2FC



off_B33C:
- D - I - 0x02F34C 21:B33C: 00        .byte $00
- D - I - 0x02F34D 21:B33D: 05        .byte $05	; <お>
- D - I - 0x02F34E 21:B33E: 47        .byte $47	; <キ>
- D - I - 0x02F34F 21:B33F: 93        .byte $93	; <Y>

- D - I - 0x02F350 21:B340: 00        .byte $00
- D - I - 0x02F351 21:B341: 06        .byte $06	; <か>
- D - I - 0x02F352 21:B342: 47        .byte $47	; <キ>
- D - I - 0x02F353 21:B343: 99        .byte $99

- D - I - 0x02F354 21:B344: 08        .byte $08	; <く>
- D - I - 0x02F355 21:B345: 04        .byte $04	; <え>
- D - I - 0x02F356 21:B346: 47        .byte $47	; <キ>
- D - I - 0x02F357 21:B347: 84        .byte $84	; <D>
- D - I - 0x02F358 21:B348: 46        .byte $46	; <カ>
- D - I - 0x02F359 21:B349: 9C        .byte $9C
; продолжение


off_B34A:
- D - I - 0x02F35A 21:B34A: 00        .byte $00
- D - I - 0x02F35B 21:B34B: 01        .byte $01	; <あ>
- D - I - 0x02F35C 21:B34C: 44        .byte $44	; <エ>
- D - I - 0x02F35D 21:B34D: B9        .byte $B9	; <ザ>

- D - I - 0x02F35E 21:B34E: 08        .byte $08	; <く>
- D - I - 0x02F35F 21:B34F: 02        .byte $02	; <い>
- D - I - 0x02F360 21:B350: 44        .byte $44	; <エ>
- D - I - 0x02F361 21:B351: BB        .byte $BB	; <ズ>
- D - I - 0x02F362 21:B352: 84        .byte $84	; <D>
- D - I - 0x02F363 21:B353: B3        .byte $B3	; <ぼ>

- D - I - 0x02F364 21:B354: 00        .byte $00
- D - I - 0x02F365 21:B355: 03        .byte $03	; <う>
- D - I - 0x02F366 21:B356: 44        .byte $44	; <エ>
- D - I - 0x02F367 21:B357: AA        .byte $AA	; <だ>

- D - I - 0x02F368 21:B358: 00        .byte $00
- D - I - 0x02F369 21:B359: 01        .byte $01	; <あ>
- D - I - 0x02F36A 21:B35A: 86        .byte $86	; <F>
- D - I - 0x02F36B 21:B35B: 85        .byte $85	; <E>

- D - I - 0x02F36C 21:B35C: 10        .byte $10	; <た>
- D - I - 0x02F36D 21:B35D: 02        .byte $02	; <い>
- D - I - 0x02F36E 21:B35E: 45        .byte $45	; <オ>
- D - I - 0x02F36F 21:B35F: 82        .byte $82	; <B>
- D - I - 0x02F370 21:B360: 46        .byte $46	; <カ>
- D - I - 0x02F371 21:B361: 8F        .byte $8F	; <S>
- D - I - 0x02F372 21:B362: 86        .byte $86	; <F>
- D - I - 0x02F373 21:B363: B0        .byte $B0	; <び>

- D - I - 0x02F374 21:B364: 10        .byte $10	; <た>
- D - I - 0x02F375 21:B365: 03        .byte $03	; <う>
- D - I - 0x02F376 21:B366: 42        .byte $42	; <イ>
- D - I - 0x02F377 21:B367: 89        .byte $89	; <I>
- D - I - 0x02F378 21:B368: 45        .byte $45	; <オ>
- D - I - 0x02F379 21:B369: 8C        .byte $8C	; <M>
- D - I - 0x02F37A 21:B36A: 85        .byte $85	; <E>
- D - I - 0x02F37B 21:B36B: 8D        .byte $8D	; <P>

- D - I - 0x02F37C 21:B36C: 10        .byte $10	; <た>
- D - I - 0x02F37D 21:B36D: 04        .byte $04	; <え>
- D - I - 0x02F37E 21:B36E: 42        .byte $42	; <イ>
- D - I - 0x02F37F 21:B36F: A4        .byte $A4	; <ご>
- D - I - 0x02F380 21:B370: 46        .byte $46	; <カ>
- D - I - 0x02F381 21:B371: A5        .byte $A5	; <ざ>
- D - I - 0x02F382 21:B372: 86        .byte $86	; <F>
- D - I - 0x02F383 21:B373: 9D        .byte $9D

- D - I - 0x02F384 21:B374: 08        .byte $08	; <く>
- D - I - 0x02F385 21:B375: 05        .byte $05	; <お>
- D - I - 0x02F386 21:B376: 57        .byte $57	; <ヌ>
- D - I - 0x02F387 21:B377: A0        .byte $A0	; <が>
- D - I - 0x02F388 21:B378: 43        .byte $43	; <ウ>
- D - I - 0x02F389 21:B379: A6        .byte $A6	; <じ>

- D - I - 0x02F38A 21:B37A: 08        .byte $08	; <く>
- D - I - 0x02F38B 21:B37B: 06        .byte $06	; <か>
- D - I - 0x02F38C 21:B37C: 57        .byte $57	; <ヌ>
- D - I - 0x02F38D 21:B37D: A2        .byte $A2	; <ぐ>
- D - I - 0x02F38E 21:B37E: 43        .byte $43	; <ウ>
- D - I - 0x02F38F 21:B37F: A3        .byte $A3	; <げ>

- D - I - 0x02F390 21:B380: 01        .byte $01	; <あ>



off_B381:
- D - I - 0x02F391 21:B381: 00        .byte $00
- D - I - 0x02F392 21:B382: 04        .byte $04	; <え>
- D - I - 0x02F393 21:B383: 46        .byte $46	; <カ>
- D - I - 0x02F394 21:B384: 9C        .byte $9C

- D - I - 0x02F395 21:B385: 00        .byte $00
- D - I - 0x02F396 21:B386: 05        .byte $05	; <お>
- D - I - 0x02F397 21:B387: 46        .byte $46	; <カ>
- D - I - 0x02F398 21:B388: 93        .byte $93	; <Y>

- D - I - 0x02F399 21:B389: 00        .byte $00
- D - I - 0x02F39A 21:B38A: 06        .byte $06	; <か>
- D - I - 0x02F39B 21:B38B: 46        .byte $46	; <カ>
- D - I - 0x02F39C 21:B38C: 99        .byte $99
; продолжение


off_B38D:
- D - I - 0x02F39D 21:B38D: 08        .byte $08	; <く>
- D - I - 0x02F39E 21:B38E: 02        .byte $02	; <い>
- D - I - 0x02F39F 21:B38F: 40        .byte $40	; <「>
- D - I - 0x02F3A0 21:B390: A7        .byte $A7	; <ず>
- D - I - 0x02F3A1 21:B391: 44        .byte $44	; <エ>
- D - I - 0x02F3A2 21:B392: B2        .byte $B2	; <べ>

- D - I - 0x02F3A3 21:B393: 00        .byte $00
- D - I - 0x02F3A4 21:B394: 03        .byte $03	; <う>
- D - I - 0x02F3A5 21:B395: 44        .byte $44	; <エ>
- D - I - 0x02F3A6 21:B396: AA        .byte $AA	; <だ>

- D - I - 0x02F3A7 21:B397: 02        .byte $02	; <い>
- D - I - 0x02F3A8 21:B398: FC B2     .word off_B2FC



off_B39A:
- D - I - 0x02F3AA 21:B39A: 00        .byte $00
- D - I - 0x02F3AB 21:B39B: 04        .byte $04	; <え>
- D - I - 0x02F3AC 21:B39C: 46        .byte $46	; <カ>
- D - I - 0x02F3AD 21:B39D: 9C        .byte $9C

- D - I - 0x02F3AE 21:B39E: 00        .byte $00
- D - I - 0x02F3AF 21:B39F: 05        .byte $05	; <お>
- D - I - 0x02F3B0 21:B3A0: 46        .byte $46	; <カ>
- D - I - 0x02F3B1 21:B3A1: 93        .byte $93	; <Y>

- D - I - 0x02F3B2 21:B3A2: 00        .byte $00
- D - I - 0x02F3B3 21:B3A3: 06        .byte $06	; <か>
- D - I - 0x02F3B4 21:B3A4: 46        .byte $46	; <カ>
- D - I - 0x02F3B5 21:B3A5: 99        .byte $99
; продолжение


off_B3A6:
- D - I - 0x02F3B6 21:B3A6: 00        .byte $00
- D - I - 0x02F3B7 21:B3A7: 02        .byte $02	; <い>
- D - I - 0x02F3B8 21:B3A8: 44        .byte $44	; <エ>
- D - I - 0x02F3B9 21:B3A9: B7        .byte $B7	; <ゲ>

- D - I - 0x02F3BA 21:B3AA: 00        .byte $00
- D - I - 0x02F3BB 21:B3AB: 03        .byte $03	; <う>
- D - I - 0x02F3BC 21:B3AC: 44        .byte $44	; <エ>
- D - I - 0x02F3BD 21:B3AD: AA        .byte $AA	; <だ>

- D - I - 0x02F3BE 21:B3AE: 02        .byte $02	; <い>
- D - I - 0x02F3BF 21:B3AF: FC B2     .word off_B2FC



off_B3B1:
- D - I - 0x02F3C1 21:B3B1: 00        .byte $00
- D - I - 0x02F3C2 21:B3B2: 04        .byte $04	; <え>
- D - I - 0x02F3C3 21:B3B3: 46        .byte $46	; <カ>
- D - I - 0x02F3C4 21:B3B4: 9C        .byte $9C

- D - I - 0x02F3C5 21:B3B5: 00        .byte $00
- D - I - 0x02F3C6 21:B3B6: 05        .byte $05	; <お>
- D - I - 0x02F3C7 21:B3B7: 46        .byte $46	; <カ>
- D - I - 0x02F3C8 21:B3B8: 93        .byte $93	; <Y>

- D - I - 0x02F3C9 21:B3B9: 00        .byte $00
- D - I - 0x02F3CA 21:B3BA: 06        .byte $06	; <か>
- D - I - 0x02F3CB 21:B3BB: 46        .byte $46	; <カ>
- D - I - 0x02F3CC 21:B3BC: 99        .byte $99
; продолжение


off_B3BD:
- D - I - 0x02F3CD 21:B3BD: 00        .byte $00
- D - I - 0x02F3CE 21:B3BE: 02        .byte $02	; <い>
- D - I - 0x02F3CF 21:B3BF: 44        .byte $44	; <エ>
- D - I - 0x02F3D0 21:B3C0: B4        .byte $B4	; <ガ>

- D - I - 0x02F3D1 21:B3C1: 00        .byte $00
- D - I - 0x02F3D2 21:B3C2: 03        .byte $03	; <う>
- D - I - 0x02F3D3 21:B3C3: 44        .byte $44	; <エ>
- D - I - 0x02F3D4 21:B3C4: B6        .byte $B6	; <グ>

- D - I - 0x02F3D5 21:B3C5: 02        .byte $02	; <い>
- D - I - 0x02F3D6 21:B3C6: FC B2     .word off_B2FC



off_B3C8_A1:
- D - I - 0x02F3D8 21:B3C8: 03        .byte $03	; <う>
- D - I - 0x02F3D9 21:B3C9: D5 B3     .word off_B3D5
- - - - - 0x02F3DB 21:B3CB: E2 B3     .word off_B3E2
- D - I - 0x02F3DD 21:B3CD: EF B3     .word off_B3EF
- D - I - 0x02F3DF 21:B3CF: FE B3     .word off_B3FE
- D - I - 0x02F3E1 21:B3D1: 0B B4     .word off_B40B
- D - I - 0x02F3E3 21:B3D3: 18 B4     .word off_B418



off_B3D5:
- D - I - 0x02F3E5 21:B3D5: 00        .byte $00
- D - I - 0x02F3E6 21:B3D6: 03        .byte $03	; <う>
- D - I - 0x02F3E7 21:B3D7: 46        .byte $46	; <カ>
- D - I - 0x02F3E8 21:B3D8: 9B        .byte $9B

- D - I - 0x02F3E9 21:B3D9: 08        .byte $08	; <く>
- D - I - 0x02F3EA 21:B3DA: 04        .byte $04	; <え>
- D - I - 0x02F3EB 21:B3DB: 43        .byte $43	; <ウ>
- D - I - 0x02F3EC 21:B3DC: 96        .byte $96
- D - I - 0x02F3ED 21:B3DD: 46        .byte $46	; <カ>
- D - I - 0x02F3EE 21:B3DE: B1        .byte $B1	; <ぶ>

- D - I - 0x02F3EF 21:B3DF: 02        .byte $02	; <い>
- D - I - 0x02F3F0 21:B3E0: F2 B2     .word off_B2F2



off_B3E2:
- - - - - 0x02F3F2 21:B3E2: 00        .byte $00
- - - - - 0x02F3F3 21:B3E3: 03        .byte $03	; <う>
- - - - - 0x02F3F4 21:B3E4: 46        .byte $46	; <カ>
- - - - - 0x02F3F5 21:B3E5: 9B        .byte $9B

- - - - - 0x02F3F6 21:B3E6: 08        .byte $08	; <く>
- - - - - 0x02F3F7 21:B3E7: 04        .byte $04	; <え>
- - - - - 0x02F3F8 21:B3E8: 43        .byte $43	; <ウ>
- - - - - 0x02F3F9 21:B3E9: 96        .byte $96
- - - - - 0x02F3FA 21:B3EA: 46        .byte $46	; <カ>
- - - - - 0x02F3FB 21:B3EB: B1        .byte $B1	; <ぶ>

- - - - - 0x02F3FC 21:B3EC: 02        .byte $02	; <い>
- - - - - 0x02F3FD 21:B3ED: 31 B3     .word off_B331



off_B3EF:
- D - I - 0x02F3FF 21:B3EF: 00        .byte $00
- D - I - 0x02F400 21:B3F0: 03        .byte $03	; <う>
- D - I - 0x02F401 21:B3F1: 46        .byte $46	; <カ>
- D - I - 0x02F402 21:B3F2: 9E        .byte $9E

- D - I - 0x02F403 21:B3F3: 10        .byte $10	; <た>
- D - I - 0x02F404 21:B3F4: 04        .byte $04	; <え>
- D - I - 0x02F405 21:B3F5: 43        .byte $43	; <ウ>
- D - I - 0x02F406 21:B3F6: 96        .byte $96
- D - I - 0x02F407 21:B3F7: 47        .byte $47	; <キ>
- D - I - 0x02F408 21:B3F8: 83        .byte $83	; <C>
- D - I - 0x02F409 21:B3F9: 46        .byte $46	; <カ>
- D - I - 0x02F40A 21:B3FA: B1        .byte $B1	; <ぶ>

- D - I - 0x02F40B 21:B3FB: 02        .byte $02	; <い>
- D - I - 0x02F40C 21:B3FC: 4A B3     .word off_B34A



off_B3FE:
- D - I - 0x02F40E 21:B3FE: 00        .byte $00
- D - I - 0x02F40F 21:B3FF: 03        .byte $03	; <う>
- D - I - 0x02F410 21:B400: 46        .byte $46	; <カ>
- D - I - 0x02F411 21:B401: 9B        .byte $9B

- D - I - 0x02F412 21:B402: 08        .byte $08	; <く>
- D - I - 0x02F413 21:B403: 04        .byte $04	; <え>
- D - I - 0x02F414 21:B404: 43        .byte $43	; <ウ>
- D - I - 0x02F415 21:B405: 96        .byte $96
- D - I - 0x02F416 21:B406: 46        .byte $46	; <カ>
- D - I - 0x02F417 21:B407: B1        .byte $B1	; <ぶ>

- D - I - 0x02F418 21:B408: 02        .byte $02	; <い>
- D - I - 0x02F419 21:B409: 8D B3     .word off_B38D



off_B40B:
- D - I - 0x02F41B 21:B40B: 00        .byte $00
- D - I - 0x02F41C 21:B40C: 03        .byte $03	; <う>
- D - I - 0x02F41D 21:B40D: 46        .byte $46	; <カ>
- D - I - 0x02F41E 21:B40E: 9B        .byte $9B

- D - I - 0x02F41F 21:B40F: 08        .byte $08	; <く>
- D - I - 0x02F420 21:B410: 04        .byte $04	; <え>
- D - I - 0x02F421 21:B411: 43        .byte $43	; <ウ>
- D - I - 0x02F422 21:B412: 96        .byte $96
- D - I - 0x02F423 21:B413: 46        .byte $46	; <カ>
- D - I - 0x02F424 21:B414: B1        .byte $B1	; <ぶ>

- D - I - 0x02F425 21:B415: 02        .byte $02	; <い>
- D - I - 0x02F426 21:B416: A6 B3     .word off_B3A6



off_B418:
- D - I - 0x02F428 21:B418: 00        .byte $00
- D - I - 0x02F429 21:B419: 03        .byte $03	; <う>
- D - I - 0x02F42A 21:B41A: 46        .byte $46	; <カ>
- D - I - 0x02F42B 21:B41B: 9B        .byte $9B

- D - I - 0x02F42C 21:B41C: 08        .byte $08	; <く>
- D - I - 0x02F42D 21:B41D: 04        .byte $04	; <え>
- D - I - 0x02F42E 21:B41E: 43        .byte $43	; <ウ>
- D - I - 0x02F42F 21:B41F: 96        .byte $96
- D - I - 0x02F430 21:B420: 46        .byte $46	; <カ>
- D - I - 0x02F431 21:B421: B1        .byte $B1	; <ぶ>

- D - I - 0x02F432 21:B422: 02        .byte $02	; <い>
- D - I - 0x02F433 21:B423: BD B3     .word off_B3BD



off_B425_A2:
- D - I - 0x02F435 21:B425: 08        .byte $08	; <く>
- D - I - 0x02F436 21:B426: 04        .byte $04	; <え>
- D - I - 0x02F437 21:B427: 05        .byte $05	; <お>
- D - I - 0x02F438 21:B428: A6        .byte $A6	; <じ>
- D - I - 0x02F439 21:B429: 09        .byte $09	; <け>
- D - I - 0x02F43A 21:B42A: A7        .byte $A7	; <ず>

- D - I - 0x02F43B 21:B42B: 10        .byte $10	; <た>
- D - I - 0x02F43C 21:B42C: 05        .byte $05	; <お>
- D - I - 0x02F43D 21:B42D: 05        .byte $05	; <お>
- D - I - 0x02F43E 21:B42E: DF        .byte $DF
- D - I - 0x02F43F 21:B42F: 07        .byte $07	; <き>
- D - I - 0x02F440 21:B430: FD        .byte $FD
- D - I - 0x02F441 21:B431: 09        .byte $09	; <け>
- D - I - 0x02F442 21:B432: AD        .byte $AD	; <で>

- D - I - 0x02F443 21:B433: 10        .byte $10	; <た>
- D - I - 0x02F444 21:B434: 06        .byte $06	; <か>
- D - I - 0x02F445 21:B435: 03        .byte $03	; <う>
- D - I - 0x02F446 21:B436: F4        .byte $F4
- D - I - 0x02F447 21:B437: 07        .byte $07	; <き>
- D - I - 0x02F448 21:B438: F5        .byte $F5
- D - I - 0x02F449 21:B439: 09        .byte $09	; <け>
- D - I - 0x02F44A 21:B43A: F6        .byte $F6

- D - I - 0x02F44B 21:B43B: 08        .byte $08	; <く>
- D - I - 0x02F44C 21:B43C: 07        .byte $07	; <き>
- D - I - 0x02F44D 21:B43D: 03        .byte $03	; <う>
- D - I - 0x02F44E 21:B43E: F7        .byte $F7
- D - I - 0x02F44F 21:B43F: 07        .byte $07	; <き>
- D - I - 0x02F450 21:B440: FC        .byte $FC
; продолжение


off_B441:
- D - I - 0x02F451 21:B441: 18        .byte $18	; <ね>
- D - I - 0x02F452 21:B442: 03        .byte $03	; <う>
- D - I - 0x02F453 21:B443: 0B        .byte $0B	; <さ>
- D - I - 0x02F454 21:B444: A2        .byte $A2	; <ぐ>
- D - I - 0x02F455 21:B445: 0D        .byte $0D	; <す>
- D - I - 0x02F456 21:B446: A3        .byte $A3	; <げ>
- D - I - 0x02F457 21:B447: 0E        .byte $0E	; <せ>
- D - I - 0x02F458 21:B448: 15        .byte $15	; <な>
- D - I - 0x02F459 21:B449: 11        .byte $11	; <ち>
- D - I - 0x02F45A 21:B44A: 7C        .byte $7C	; <~>

- D - I - 0x02F45B 21:B44B: 10        .byte $10	; <た>
- D - I - 0x02F45C 21:B44C: 04        .byte $04	; <え>
- D - I - 0x02F45D 21:B44D: 0E        .byte $0E	; <せ>
- D - I - 0x02F45E 21:B44E: A8        .byte $A8	; <ぜ>
- D - I - 0x02F45F 21:B44F: 12        .byte $12	; <つ>
- D - I - 0x02F460 21:B450: A9        .byte $A9	; <ぞ>
- D - I - 0x02F461 21:B451: 11        .byte $11	; <ち>
- D - I - 0x02F462 21:B452: 15        .byte $15	; <な>

- D - I - 0x02F463 21:B453: 08        .byte $08	; <く>
- D - I - 0x02F464 21:B454: 05        .byte $05	; <お>
- D - I - 0x02F465 21:B455: 0E        .byte $0E	; <せ>
- D - I - 0x02F466 21:B456: AA        .byte $AA	; <だ>
- D - I - 0x02F467 21:B457: 12        .byte $12	; <つ>
- D - I - 0x02F468 21:B458: AB        .byte $AB	; <ぢ>
; продолжение


off_B459:
- D - I - 0x02F469 21:B459: 03        .byte $03	; <う>
- D - I - 0x02F46A 21:B45A: 72 B4     .word off_B472
- D - I - 0x02F46C 21:B45C: D9 B4     .word off_B4D9
- D - I - 0x02F46E 21:B45E: 08 B5     .word off_B508
- D - I - 0x02F470 21:B460: 27 B5     .word off_B527
- D - I - 0x02F472 21:B462: 44 B5     .word off_B544
- D - I - 0x02F474 21:B464: 69 B5     .word off_B569
- D - I - 0x02F476 21:B466: 94 B5     .word off_B594
- D - I - 0x02F478 21:B468: BF B5     .word off_B5BF
- D - I - 0x02F47A 21:B46A: F0 B5     .word off_B5F0
- D - I - 0x02F47C 21:B46C: 17 B6     .word off_B617
- D - I - 0x02F47E 21:B46E: 42 B6     .word off_B642
- D - I - 0x02F480 21:B470: 6D B6     .word off_B66D



off_B472:
- D - I - 0x02F482 21:B472: 20        .byte $20	; <み>
- D - I - 0x02F483 21:B473: 01        .byte $01	; <あ>
- D - I - 0x02F484 21:B474: 09        .byte $09	; <け>
- D - I - 0x02F485 21:B475: 07        .byte $07	; <き>
- D - I - 0x02F486 21:B476: 0C        .byte $0C	; <し>
- D - I - 0x02F487 21:B477: 12        .byte $12	; <つ>
- D - I - 0x02F488 21:B478: 0D        .byte $0D	; <す>
- D - I - 0x02F489 21:B479: 15        .byte $15	; <な>
- D - I - 0x02F48A 21:B47A: 10        .byte $10	; <た>
- D - I - 0x02F48B 21:B47B: 13        .byte $13	; <て>
- D - I - 0x02F48C 21:B47C: 14        .byte $14	; <と>
- D - I - 0x02F48D 21:B47D: 16        .byte $16	; <に>

- D - I - 0x02F48E 21:B47E: 30        .byte $30	; <ゃ>
- D - I - 0x02F48F 21:B47F: 02        .byte $02	; <い>
- D - I - 0x02F490 21:B480: 0F        .byte $0F	; <そ>
- D - I - 0x02F491 21:B481: 0D        .byte $0D	; <す>
- D - I - 0x02F492 21:B482: 0D        .byte $0D	; <す>
- D - I - 0x02F493 21:B483: 15        .byte $15	; <な>
- D - I - 0x02F494 21:B484: 13        .byte $13	; <て>
- D - I - 0x02F495 21:B485: 18        .byte $18	; <ね>
- D - I - 0x02F496 21:B486: 10        .byte $10	; <た>
- D - I - 0x02F497 21:B487: 15        .byte $15	; <な>
- D - I - 0x02F498 21:B488: 14        .byte $14	; <と>
- D - I - 0x02F499 21:B489: 19        .byte $19	; <の>
- D - I - 0x02F49A 21:B48A: 15        .byte $15	; <な>
- D - I - 0x02F49B 21:B48B: 15        .byte $15	; <な>
- D - I - 0x02F49C 21:B48C: 19        .byte $19	; <の>
- D - I - 0x02F49D 21:B48D: 1C        .byte $1C	; <ふ>
; продолжение


off_B48E:
- D - I - 0x02F49E 21:B48E: 20        .byte $20	; <み>
- D - I - 0x02F49F 21:B48F: 00        .byte $00
- D - I - 0x02F4A0 21:B490: 09        .byte $09	; <け>
- D - I - 0x02F4A1 21:B491: 05        .byte $05	; <お>
- D - I - 0x02F4A2 21:B492: 0C        .byte $0C	; <し>
- D - I - 0x02F4A3 21:B493: 10        .byte $10	; <た>
- D - I - 0x02F4A4 21:B494: 0D        .byte $0D	; <す>
- D - I - 0x02F4A5 21:B495: 17        .byte $17	; <ぬ>
- D - I - 0x02F4A6 21:B496: 10        .byte $10	; <た>
- D - I - 0x02F4A7 21:B497: 11        .byte $11	; <ち>
- D - I - 0x02F4A8 21:B498: 14        .byte $14	; <と>
- D - I - 0x02F4A9 21:B499: 14        .byte $14	; <と>
; продолжение


off_B49A:
- D - I - 0x02F4AA 21:B49A: 08        .byte $08	; <く>
- D - I - 0x02F4AB 21:B49B: 03        .byte $03	; <う>
- D - I - 0x02F4AC 21:B49C: 15        .byte $15	; <な>
- D - I - 0x02F4AD 21:B49D: 0F        .byte $0F	; <そ>
- D - I - 0x02F4AE 21:B49E: 19        .byte $19	; <の>
- D - I - 0x02F4AF 21:B49F: 1A        .byte $1A	; <は>
; продолжение


off_B4A0:
- D - I - 0x02F4B0 21:B4A0: 08        .byte $08	; <く>
- D - I - 0x02F4B1 21:B4A1: 00        .byte $00
- D - I - 0x02F4B2 21:B4A2: 03        .byte $03	; <う>
- D - I - 0x02F4B3 21:B4A3: 02        .byte $02	; <い>
- D - I - 0x02F4B4 21:B4A4: 07        .byte $07	; <き>
- D - I - 0x02F4B5 21:B4A5: 03        .byte $03	; <う>

- D - I - 0x02F4B6 21:B4A6: 00        .byte $00
- D - I - 0x02F4B7 21:B4A7: 02        .byte $02	; <い>
- D - I - 0x02F4B8 21:B4A8: 09        .byte $09	; <け>
- D - I - 0x02F4B9 21:B4A9: 28        .byte $28	; <り>

- D - I - 0x02F4BA 21:B4AA: 00        .byte $00
- D - I - 0x02F4BB 21:B4AB: 03        .byte $03	; <う>
- D - I - 0x02F4BC 21:B4AC: 83        .byte $83	; <C>
- D - I - 0x02F4BD 21:B4AD: 06        .byte $06	; <か>

- D - I - 0x02F4BE 21:B4AE: 10        .byte $10	; <た>
- D - I - 0x02F4BF 21:B4AF: 04        .byte $04	; <え>
- D - I - 0x02F4C0 21:B4B0: 16        .byte $16	; <に>
- D - I - 0x02F4C1 21:B4B1: 08        .byte $08	; <く>
- D - I - 0x02F4C2 21:B4B2: 1B        .byte $1B	; <ひ>
- D - I - 0x02F4C3 21:B4B3: 09        .byte $09	; <け>
- D - I - 0x02F4C4 21:B4B4: 83        .byte $83	; <C>
- D - I - 0x02F4C5 21:B4B5: 0C        .byte $0C	; <し>

- D - I - 0x02F4C6 21:B4B6: 00        .byte $00
- D - I - 0x02F4C7 21:B4B7: 05        .byte $05	; <お>
- D - I - 0x02F4C8 21:B4B8: 16        .byte $16	; <に>
- D - I - 0x02F4C9 21:B4B9: 04        .byte $04	; <え>

- D - I - 0x02F4CA 21:B4BA: 10        .byte $10	; <た>
- D - I - 0x02F4CB 21:B4BB: 06        .byte $06	; <か>
- D - I - 0x02F4CC 21:B4BC: 13        .byte $13	; <て>
- D - I - 0x02F4CD 21:B4BD: 0A        .byte $0A	; <こ>
- D - I - 0x02F4CE 21:B4BE: 17        .byte $17	; <ぬ>
- D - I - 0x02F4CF 21:B4BF: 0B        .byte $0B	; <さ>
- D - I - 0x02F4D0 21:B4C0: 18        .byte $18	; <ね>
- D - I - 0x02F4D1 21:B4C1: 0E        .byte $0E	; <せ>

- D - I - 0x02F4D2 21:B4C2: 08        .byte $08	; <く>
- D - I - 0x02F4D3 21:B4C3: 07        .byte $07	; <き>
- D - I - 0x02F4D4 21:B4C4: 17        .byte $17	; <ぬ>
- D - I - 0x02F4D5 21:B4C5: 20        .byte $20	; <み>
- D - I - 0x02F4D6 21:B4C6: 19        .byte $19	; <の>
- D - I - 0x02F4D7 21:B4C7: 21        .byte $21	; <む>

- D - I - 0x02F4D8 21:B4C8: 08        .byte $08	; <く>
- D - I - 0x02F4D9 21:B4C9: 08        .byte $08	; <く>
- D - I - 0x02F4DA 21:B4CA: 15        .byte $15	; <な>
- D - I - 0x02F4DB 21:B4CB: 22        .byte $22	; <め>
- D - I - 0x02F4DC 21:B4CC: 19        .byte $19	; <の>
- D - I - 0x02F4DD 21:B4CD: 23        .byte $23	; <も>

- D - I - 0x02F4DE 21:B4CE: 00        .byte $00
- D - I - 0x02F4DF 21:B4CF: 09        .byte $09	; <け>
- D - I - 0x02F4E0 21:B4D0: 19        .byte $19	; <の>
- D - I - 0x02F4E1 21:B4D1: 29        .byte $29	; <る>

- D - I - 0x02F4E2 21:B4D2: 08        .byte $08	; <く>
- D - I - 0x02F4E3 21:B4D3: 16        .byte $16	; <に>
- D - I - 0x02F4E4 21:B4D4: 1B        .byte $1B	; <ひ>
- D - I - 0x02F4E5 21:B4D5: 2A        .byte $2A	; <れ>
- D - I - 0x02F4E6 21:B4D6: 83        .byte $83	; <C>
- D - I - 0x02F4E7 21:B4D7: 2B        .byte $2B	; <ろ>

- D - I - 0x02F4E8 21:B4D8: 01        .byte $01	; <あ>



off_B4D9:
- D - I - 0x02F4E9 21:B4D9: 08        .byte $08	; <く>
- D - I - 0x02F4EA 21:B4DA: 1E        .byte $1E	; <ほ>
- D - I - 0x02F4EB 21:B4DB: 10        .byte $10	; <た>
- D - I - 0x02F4EC 21:B4DC: 24        .byte $24	; <や>
- D - I - 0x02F4ED 21:B4DD: 14        .byte $14	; <と>
- D - I - 0x02F4EE 21:B4DE: 25        .byte $25	; <ゆ>

- D - I - 0x02F4EF 21:B4DF: 20        .byte $20	; <み>
- D - I - 0x02F4F0 21:B4E0: 00        .byte $00
- D - I - 0x02F4F1 21:B4E1: 09        .byte $09	; <け>
- D - I - 0x02F4F2 21:B4E2: 05        .byte $05	; <お>
- D - I - 0x02F4F3 21:B4E3: 0C        .byte $0C	; <し>
- D - I - 0x02F4F4 21:B4E4: 10        .byte $10	; <た>
- D - I - 0x02F4F5 21:B4E5: 0D        .byte $0D	; <す>
- D - I - 0x02F4F6 21:B4E6: 17        .byte $17	; <ぬ>
- D - I - 0x02F4F7 21:B4E7: 10        .byte $10	; <た>
- D - I - 0x02F4F8 21:B4E8: 26        .byte $26	; <よ>
- D - I - 0x02F4F9 21:B4E9: 14        .byte $14	; <と>
- D - I - 0x02F4FA 21:B4EA: 27        .byte $27	; <ら>

- D - I - 0x02F4FB 21:B4EB: 20        .byte $20	; <み>
- D - I - 0x02F4FC 21:B4EC: 01        .byte $01	; <あ>
- D - I - 0x02F4FD 21:B4ED: 09        .byte $09	; <け>
- D - I - 0x02F4FE 21:B4EE: 07        .byte $07	; <き>
- D - I - 0x02F4FF 21:B4EF: 0C        .byte $0C	; <し>
- D - I - 0x02F500 21:B4F0: 12        .byte $12	; <つ>
- D - I - 0x02F501 21:B4F1: 0D        .byte $0D	; <す>
- D - I - 0x02F502 21:B4F2: 15        .byte $15	; <な>
- D - I - 0x02F503 21:B4F3: 10        .byte $10	; <た>
- D - I - 0x02F504 21:B4F4: 2C        .byte $2C	; <わ>
- D - I - 0x02F505 21:B4F5: 14        .byte $14	; <と>
- D - I - 0x02F506 21:B4F6: 2D        .byte $2D	; <を>

- D - I - 0x02F507 21:B4F7: 28        .byte $28	; <り>
- D - I - 0x02F508 21:B4F8: 02        .byte $02	; <い>
- D - I - 0x02F509 21:B4F9: 0F        .byte $0F	; <そ>
- D - I - 0x02F50A 21:B4FA: 2E        .byte $2E	; <ん>
- D - I - 0x02F50B 21:B4FB: 0D        .byte $0D	; <す>
- D - I - 0x02F50C 21:B4FC: 15        .byte $15	; <な>
- D - I - 0x02F50D 21:B4FD: 13        .byte $13	; <て>
- D - I - 0x02F50E 21:B4FE: 2F        .byte $2F	; <っ>
- D - I - 0x02F50F 21:B4FF: 14        .byte $14	; <と>
- D - I - 0x02F510 21:B500: 19        .byte $19	; <の>
- D - I - 0x02F511 21:B501: 15        .byte $15	; <な>
- D - I - 0x02F512 21:B502: 15        .byte $15	; <な>
- D - I - 0x02F513 21:B503: 19        .byte $19	; <の>
- D - I - 0x02F514 21:B504: 1C        .byte $1C	; <ふ>

- D - I - 0x02F515 21:B505: 02        .byte $02	; <い>
- D - I - 0x02F516 21:B506: 9A B4     .word off_B49A



off_B508:
- D - I - 0x02F518 21:B508: 20        .byte $20	; <み>
- D - I - 0x02F519 21:B509: 01        .byte $01	; <あ>
- D - I - 0x02F51A 21:B50A: 09        .byte $09	; <け>
- D - I - 0x02F51B 21:B50B: 07        .byte $07	; <き>
- D - I - 0x02F51C 21:B50C: 0C        .byte $0C	; <し>
- D - I - 0x02F51D 21:B50D: 30        .byte $30	; <ゃ>
- D - I - 0x02F51E 21:B50E: 0D        .byte $0D	; <す>
- D - I - 0x02F51F 21:B50F: 15        .byte $15	; <な>
- D - I - 0x02F520 21:B510: 10        .byte $10	; <た>
- D - I - 0x02F521 21:B511: 31        .byte $31	; <ゅ>
- D - I - 0x02F522 21:B512: 14        .byte $14	; <と>
- D - I - 0x02F523 21:B513: 16        .byte $16	; <に>

- D - I - 0x02F524 21:B514: 30        .byte $30	; <ゃ>
- D - I - 0x02F525 21:B515: 02        .byte $02	; <い>
- D - I - 0x02F526 21:B516: 0F        .byte $0F	; <そ>
- D - I - 0x02F527 21:B517: 32        .byte $32	; <ょ>
- D - I - 0x02F528 21:B518: 0D        .byte $0D	; <す>
- D - I - 0x02F529 21:B519: 15        .byte $15	; <な>
- D - I - 0x02F52A 21:B51A: 13        .byte $13	; <て>
- D - I - 0x02F52B 21:B51B: 33        .byte $33	; <0>
- D - I - 0x02F52C 21:B51C: 10        .byte $10	; <た>
- D - I - 0x02F52D 21:B51D: 15        .byte $15	; <な>
- D - I - 0x02F52E 21:B51E: 14        .byte $14	; <と>
- D - I - 0x02F52F 21:B51F: 19        .byte $19	; <の>
- D - I - 0x02F530 21:B520: 15        .byte $15	; <な>
- D - I - 0x02F531 21:B521: 15        .byte $15	; <な>
- D - I - 0x02F532 21:B522: 19        .byte $19	; <の>
- D - I - 0x02F533 21:B523: 1C        .byte $1C	; <ふ>

- D - I - 0x02F534 21:B524: 02        .byte $02	; <い>
- D - I - 0x02F535 21:B525: 8E B4     .word off_B48E



off_B527:
- D - I - 0x02F537 21:B527: 20        .byte $20	; <み>
- D - I - 0x02F538 21:B528: 01        .byte $01	; <あ>
- D - I - 0x02F539 21:B529: 09        .byte $09	; <け>
- D - I - 0x02F53A 21:B52A: 07        .byte $07	; <き>
- D - I - 0x02F53B 21:B52B: 0C        .byte $0C	; <し>
- D - I - 0x02F53C 21:B52C: 38        .byte $38	; <5>
- D - I - 0x02F53D 21:B52D: 0D        .byte $0D	; <す>
- D - I - 0x02F53E 21:B52E: 15        .byte $15	; <な>
- D - I - 0x02F53F 21:B52F: 10        .byte $10	; <た>
- D - I - 0x02F540 21:B530: 39        .byte $39	; <6>
- D - I - 0x02F541 21:B531: 14        .byte $14	; <と>
- D - I - 0x02F542 21:B532: 16        .byte $16	; <に>

- D - I - 0x02F543 21:B533: 28        .byte $28	; <り>
- D - I - 0x02F544 21:B534: 02        .byte $02	; <い>
- D - I - 0x02F545 21:B535: 0F        .byte $0F	; <そ>
- D - I - 0x02F546 21:B536: 3A        .byte $3A	; <7>
- D - I - 0x02F547 21:B537: 0D        .byte $0D	; <す>
- D - I - 0x02F548 21:B538: 15        .byte $15	; <な>
- D - I - 0x02F549 21:B539: 13        .byte $13	; <て>
- D - I - 0x02F54A 21:B53A: 3B        .byte $3B	; <8>
- D - I - 0x02F54B 21:B53B: 14        .byte $14	; <と>
- D - I - 0x02F54C 21:B53C: 19        .byte $19	; <の>
- D - I - 0x02F54D 21:B53D: 15        .byte $15	; <な>
- D - I - 0x02F54E 21:B53E: 15        .byte $15	; <な>
- D - I - 0x02F54F 21:B53F: 19        .byte $19	; <の>
- D - I - 0x02F550 21:B540: 1C        .byte $1C	; <ふ>

- D - I - 0x02F551 21:B541: 02        .byte $02	; <い>
- D - I - 0x02F552 21:B542: 8E B4     .word off_B48E



off_B544:
- D - I - 0x02F554 21:B544: 18        .byte $18	; <ね>
- D - I - 0x02F555 21:B545: 00        .byte $00
- D - I - 0x02F556 21:B546: 09        .byte $09	; <け>
- D - I - 0x02F557 21:B547: 05        .byte $05	; <お>
- D - I - 0x02F558 21:B548: 0C        .byte $0C	; <し>
- D - I - 0x02F559 21:B549: 36        .byte $36	; <3>
- D - I - 0x02F55A 21:B54A: 10        .byte $10	; <た>
- D - I - 0x02F55B 21:B54B: 37        .byte $37	; <4>
- D - I - 0x02F55C 21:B54C: 14        .byte $14	; <と>
- D - I - 0x02F55D 21:B54D: 62        .byte $62	; <メ>

- D - I - 0x02F55E 21:B54E: 20        .byte $20	; <み>
- D - I - 0x02F55F 21:B54F: 01        .byte $01	; <あ>
- D - I - 0x02F560 21:B550: 09        .byte $09	; <け>
- D - I - 0x02F561 21:B551: 07        .byte $07	; <き>
- D - I - 0x02F562 21:B552: 0C        .byte $0C	; <し>
- D - I - 0x02F563 21:B553: 3C        .byte $3C	; <9>
- D - I - 0x02F564 21:B554: 0D        .byte $0D	; <す>
- D - I - 0x02F565 21:B555: 15        .byte $15	; <な>
- D - I - 0x02F566 21:B556: 10        .byte $10	; <た>
- D - I - 0x02F567 21:B557: 3D        .byte $3D	; <+>
- D - I - 0x02F568 21:B558: 14        .byte $14	; <と>
- D - I - 0x02F569 21:B559: 68        .byte $68	; <リ>

- D - I - 0x02F56A 21:B55A: 20        .byte $20	; <み>
- D - I - 0x02F56B 21:B55B: 02        .byte $02	; <い>
- D - I - 0x02F56C 21:B55C: 0F        .byte $0F	; <そ>
- D - I - 0x02F56D 21:B55D: 3E        .byte $3E	; <Jr>
- D - I - 0x02F56E 21:B55E: 0D        .byte $0D	; <す>
- D - I - 0x02F56F 21:B55F: 15        .byte $15	; <な>
- D - I - 0x02F570 21:B560: 13        .byte $13	; <て>
- D - I - 0x02F571 21:B561: 3F        .byte $3F	; <•>
- D - I - 0x02F572 21:B562: 15        .byte $15	; <な>
- D - I - 0x02F573 21:B563: 6A        .byte $6A	; <レ>
- D - I - 0x02F574 21:B564: 19        .byte $19	; <の>
- D - I - 0x02F575 21:B565: 1C        .byte $1C	; <ふ>

- D - I - 0x02F576 21:B566: 02        .byte $02	; <い>
- D - I - 0x02F577 21:B567: 9A B4     .word off_B49A



off_B569:
- D - I - 0x02F579 21:B569: 20        .byte $20	; <み>
- D - I - 0x02F57A 21:B56A: 00        .byte $00
- D - I - 0x02F57B 21:B56B: 09        .byte $09	; <け>
- D - I - 0x02F57C 21:B56C: 05        .byte $05	; <お>
- D - I - 0x02F57D 21:B56D: 0C        .byte $0C	; <し>
- D - I - 0x02F57E 21:B56E: 1B        .byte $1B	; <ひ>
- D - I - 0x02F57F 21:B56F: 0D        .byte $0D	; <す>
- D - I - 0x02F580 21:B570: 17        .byte $17	; <ぬ>
- D - I - 0x02F581 21:B571: 10        .byte $10	; <た>
- D - I - 0x02F582 21:B572: 1D        .byte $1D	; <へ>
- D - I - 0x02F583 21:B573: 14        .byte $14	; <と>
- D - I - 0x02F584 21:B574: 62        .byte $62	; <メ>

- D - I - 0x02F585 21:B575: 20        .byte $20	; <み>
- D - I - 0x02F586 21:B576: 01        .byte $01	; <あ>
- D - I - 0x02F587 21:B577: 09        .byte $09	; <け>
- D - I - 0x02F588 21:B578: 07        .byte $07	; <き>
- D - I - 0x02F589 21:B579: 0C        .byte $0C	; <し>
- D - I - 0x02F58A 21:B57A: 1E        .byte $1E	; <ほ>
- D - I - 0x02F58B 21:B57B: 0D        .byte $0D	; <す>
- D - I - 0x02F58C 21:B57C: 15        .byte $15	; <な>
- D - I - 0x02F58D 21:B57D: 10        .byte $10	; <た>
- D - I - 0x02F58E 21:B57E: 1F        .byte $1F	; <ま>
- D - I - 0x02F58F 21:B57F: 14        .byte $14	; <と>
- D - I - 0x02F590 21:B580: 4A        .byte $4A	; <コ>

- D - I - 0x02F591 21:B581: 30        .byte $30	; <ゃ>
- D - I - 0x02F592 21:B582: 02        .byte $02	; <い>
- D - I - 0x02F593 21:B583: 0F        .byte $0F	; <そ>
- D - I - 0x02F594 21:B584: 34        .byte $34	; <1>
- D - I - 0x02F595 21:B585: 0D        .byte $0D	; <す>
- D - I - 0x02F596 21:B586: 15        .byte $15	; <な>
- D - I - 0x02F597 21:B587: 13        .byte $13	; <て>
- D - I - 0x02F598 21:B588: 35        .byte $35	; <2>
- D - I - 0x02F599 21:B589: 10        .byte $10	; <た>
- D - I - 0x02F59A 21:B58A: 15        .byte $15	; <な>
- D - I - 0x02F59B 21:B58B: 14        .byte $14	; <と>
- D - I - 0x02F59C 21:B58C: 60        .byte $60	; <ミ>
- D - I - 0x02F59D 21:B58D: 15        .byte $15	; <な>
- D - I - 0x02F59E 21:B58E: 15        .byte $15	; <な>
- D - I - 0x02F59F 21:B58F: 19        .byte $19	; <の>
- D - I - 0x02F5A0 21:B590: 1C        .byte $1C	; <ふ>

- D - I - 0x02F5A1 21:B591: 02        .byte $02	; <い>
- D - I - 0x02F5A2 21:B592: 9A B4     .word off_B49A



off_B594:
- D - I - 0x02F5A4 21:B594: 20        .byte $20	; <み>
- D - I - 0x02F5A5 21:B595: 00        .byte $00
- D - I - 0x02F5A6 21:B596: 09        .byte $09	; <け>
- D - I - 0x02F5A7 21:B597: 05        .byte $05	; <お>
- D - I - 0x02F5A8 21:B598: 0C        .byte $0C	; <し>
- D - I - 0x02F5A9 21:B599: 1B        .byte $1B	; <ひ>
- D - I - 0x02F5AA 21:B59A: 0D        .byte $0D	; <す>
- D - I - 0x02F5AB 21:B59B: 17        .byte $17	; <ぬ>
- D - I - 0x02F5AC 21:B59C: 10        .byte $10	; <た>
- D - I - 0x02F5AD 21:B59D: 41        .byte $41	; <ア>
- D - I - 0x02F5AE 21:B59E: 14        .byte $14	; <と>
- D - I - 0x02F5AF 21:B59F: 44        .byte $44	; <エ>

- D - I - 0x02F5B0 21:B5A0: 28        .byte $28	; <り>
- D - I - 0x02F5B1 21:B5A1: 01        .byte $01	; <あ>
- D - I - 0x02F5B2 21:B5A2: 09        .byte $09	; <け>
- D - I - 0x02F5B3 21:B5A3: 07        .byte $07	; <き>
- D - I - 0x02F5B4 21:B5A4: 0F        .byte $0F	; <そ>
- D - I - 0x02F5B5 21:B5A5: 42        .byte $42	; <イ>
- D - I - 0x02F5B6 21:B5A6: 0C        .byte $0C	; <し>
- D - I - 0x02F5B7 21:B5A7: 40        .byte $40	; <「>
- D - I - 0x02F5B8 21:B5A8: 0D        .byte $0D	; <す>
- D - I - 0x02F5B9 21:B5A9: 15        .byte $15	; <な>
- D - I - 0x02F5BA 21:B5AA: 10        .byte $10	; <た>
- D - I - 0x02F5BB 21:B5AB: 43        .byte $43	; <ウ>
- D - I - 0x02F5BC 21:B5AC: 14        .byte $14	; <と>
- D - I - 0x02F5BD 21:B5AD: 46        .byte $46	; <カ>

- D - I - 0x02F5BE 21:B5AE: 28        .byte $28	; <り>
- D - I - 0x02F5BF 21:B5AF: 02        .byte $02	; <い>
- D - I - 0x02F5C0 21:B5B0: 0F        .byte $0F	; <そ>
- D - I - 0x02F5C1 21:B5B1: 48        .byte $48	; <ク>
- D - I - 0x02F5C2 21:B5B2: 0D        .byte $0D	; <す>
- D - I - 0x02F5C3 21:B5B3: 15        .byte $15	; <な>
- D - I - 0x02F5C4 21:B5B4: 13        .byte $13	; <て>
- D - I - 0x02F5C5 21:B5B5: 49        .byte $49	; <ケ>
- D - I - 0x02F5C6 21:B5B6: 14        .byte $14	; <と>
- D - I - 0x02F5C7 21:B5B7: 4C        .byte $4C	; <シ>
- D - I - 0x02F5C8 21:B5B8: 15        .byte $15	; <な>
- D - I - 0x02F5C9 21:B5B9: 15        .byte $15	; <な>
- D - I - 0x02F5CA 21:B5BA: 19        .byte $19	; <の>
- D - I - 0x02F5CB 21:B5BB: 1C        .byte $1C	; <ふ>

- D - I - 0x02F5CC 21:B5BC: 02        .byte $02	; <い>
- D - I - 0x02F5CD 21:B5BD: 9A B4     .word off_B49A



off_B5BF:
- D - I - 0x02F5CF 21:B5BF: 20        .byte $20	; <み>
- D - I - 0x02F5D0 21:B5C0: 00        .byte $00
- D - I - 0x02F5D1 21:B5C1: 0B        .byte $0B	; <さ>
- D - I - 0x02F5D2 21:B5C2: 4B        .byte $4B	; <サ>
- D - I - 0x02F5D3 21:B5C3: 0C        .byte $0C	; <し>
- D - I - 0x02F5D4 21:B5C4: 4E        .byte $4E	; <セ>
- D - I - 0x02F5D5 21:B5C5: 0F        .byte $0F	; <そ>
- D - I - 0x02F5D6 21:B5C6: 17        .byte $17	; <ぬ>
- D - I - 0x02F5D7 21:B5C7: 10        .byte $10	; <た>
- D - I - 0x02F5D8 21:B5C8: 11        .byte $11	; <ち>
- D - I - 0x02F5D9 21:B5C9: 14        .byte $14	; <と>
- D - I - 0x02F5DA 21:B5CA: 14        .byte $14	; <と>

- D - I - 0x02F5DB 21:B5CB: 20        .byte $20	; <み>
- D - I - 0x02F5DC 21:B5CC: 01        .byte $01	; <あ>
- D - I - 0x02F5DD 21:B5CD: 09        .byte $09	; <け>
- D - I - 0x02F5DE 21:B5CE: 61        .byte $61	; <ム>
- D - I - 0x02F5DF 21:B5CF: 0C        .byte $0C	; <し>
- D - I - 0x02F5E0 21:B5D0: 64        .byte $64	; <ヤ>
- D - I - 0x02F5E1 21:B5D1: 0D        .byte $0D	; <す>
- D - I - 0x02F5E2 21:B5D2: 15        .byte $15	; <な>
- D - I - 0x02F5E3 21:B5D3: 10        .byte $10	; <た>
- D - I - 0x02F5E4 21:B5D4: 65        .byte $65	; <ユ>
- D - I - 0x02F5E5 21:B5D5: 14        .byte $14	; <と>
- D - I - 0x02F5E6 21:B5D6: 16        .byte $16	; <に>

- D - I - 0x02F5E7 21:B5D7: 30        .byte $30	; <ゃ>
- D - I - 0x02F5E8 21:B5D8: 02        .byte $02	; <い>
- D - I - 0x02F5E9 21:B5D9: 0F        .byte $0F	; <そ>
- D - I - 0x02F5EA 21:B5DA: 4F        .byte $4F	; <ソ>
- D - I - 0x02F5EB 21:B5DB: 0D        .byte $0D	; <す>
- D - I - 0x02F5EC 21:B5DC: 15        .byte $15	; <な>
- D - I - 0x02F5ED 21:B5DD: 13        .byte $13	; <て>
- D - I - 0x02F5EE 21:B5DE: 5A        .byte $5A	; <ハ>
- D - I - 0x02F5EF 21:B5DF: 10        .byte $10	; <た>
- D - I - 0x02F5F0 21:B5E0: 15        .byte $15	; <な>
- D - I - 0x02F5F1 21:B5E1: 14        .byte $14	; <と>
- D - I - 0x02F5F2 21:B5E2: 5B        .byte $5B	; <ヒ>
- D - I - 0x02F5F3 21:B5E3: 15        .byte $15	; <な>
- D - I - 0x02F5F4 21:B5E4: 15        .byte $15	; <な>
- D - I - 0x02F5F5 21:B5E5: 19        .byte $19	; <の>
- D - I - 0x02F5F6 21:B5E6: 5E        .byte $5E	; <ホ>

- D - I - 0x02F5F7 21:B5E7: 08        .byte $08	; <く>
- D - I - 0x02F5F8 21:B5E8: 03        .byte $03	; <う>
- D - I - 0x02F5F9 21:B5E9: 15        .byte $15	; <な>
- D - I - 0x02F5FA 21:B5EA: 70        .byte $70	; <ャ>
- D - I - 0x02F5FB 21:B5EB: 1B        .byte $1B	; <ひ>
- D - I - 0x02F5FC 21:B5EC: 71        .byte $71	; <ュ>

- D - I - 0x02F5FD 21:B5ED: 02        .byte $02	; <い>
- D - I - 0x02F5FE 21:B5EE: A0 B4     .word off_B4A0



off_B5F0:
- D - I - 0x02F600 21:B5F0: 20        .byte $20	; <み>
- D - I - 0x02F601 21:B5F1: 00        .byte $00
- D - I - 0x02F602 21:B5F2: 09        .byte $09	; <け>
- D - I - 0x02F603 21:B5F3: 05        .byte $05	; <お>
- D - I - 0x02F604 21:B5F4: 0C        .byte $0C	; <し>
- D - I - 0x02F605 21:B5F5: 10        .byte $10	; <た>
- D - I - 0x02F606 21:B5F6: 0D        .byte $0D	; <す>
- D - I - 0x02F607 21:B5F7: 17        .byte $17	; <ぬ>
- D - I - 0x02F608 21:B5F8: 10        .byte $10	; <た>
- D - I - 0x02F609 21:B5F9: 45        .byte $45	; <オ>
- D - I - 0x02F60A 21:B5FA: 14        .byte $14	; <と>
- D - I - 0x02F60B 21:B5FB: 50        .byte $50	; <タ>

- D - I - 0x02F60C 21:B5FC: 20        .byte $20	; <み>
- D - I - 0x02F60D 21:B5FD: 01        .byte $01	; <あ>
- D - I - 0x02F60E 21:B5FE: 09        .byte $09	; <け>
- D - I - 0x02F60F 21:B5FF: 07        .byte $07	; <き>
- D - I - 0x02F610 21:B600: 0C        .byte $0C	; <し>
- D - I - 0x02F611 21:B601: 47        .byte $47	; <キ>
- D - I - 0x02F612 21:B602: 0D        .byte $0D	; <す>
- D - I - 0x02F613 21:B603: 15        .byte $15	; <な>
- D - I - 0x02F614 21:B604: 10        .byte $10	; <た>
- D - I - 0x02F615 21:B605: 52        .byte $52	; <ツ>
- D - I - 0x02F616 21:B606: 14        .byte $14	; <と>
- D - I - 0x02F617 21:B607: 68        .byte $68	; <リ>

- D - I - 0x02F618 21:B608: 20        .byte $20	; <み>
- D - I - 0x02F619 21:B609: 02        .byte $02	; <い>
- D - I - 0x02F61A 21:B60A: 0F        .byte $0F	; <そ>
- D - I - 0x02F61B 21:B60B: 4D        .byte $4D	; <ス>
- D - I - 0x02F61C 21:B60C: 0D        .byte $0D	; <す>
- D - I - 0x02F61D 21:B60D: 15        .byte $15	; <な>
- D - I - 0x02F61E 21:B60E: 13        .byte $13	; <て>
- D - I - 0x02F61F 21:B60F: 58        .byte $58	; <ネ>
- D - I - 0x02F620 21:B610: 15        .byte $15	; <な>
- D - I - 0x02F621 21:B611: 6A        .byte $6A	; <レ>
- D - I - 0x02F622 21:B612: 19        .byte $19	; <の>
- D - I - 0x02F623 21:B613: 1C        .byte $1C	; <ふ>

- D - I - 0x02F624 21:B614: 02        .byte $02	; <い>
- D - I - 0x02F625 21:B615: 9A B4     .word off_B49A



off_B617:
- D - I - 0x02F627 21:B617: 20        .byte $20	; <み>
- D - I - 0x02F628 21:B618: 00        .byte $00
- D - I - 0x02F629 21:B619: 09        .byte $09	; <け>
- D - I - 0x02F62A 21:B61A: 05        .byte $05	; <お>
- D - I - 0x02F62B 21:B61B: 0C        .byte $0C	; <し>
- D - I - 0x02F62C 21:B61C: 63        .byte $63	; <モ>
- D - I - 0x02F62D 21:B61D: 0D        .byte $0D	; <す>
- D - I - 0x02F62E 21:B61E: 17        .byte $17	; <ぬ>
- D - I - 0x02F62F 21:B61F: 10        .byte $10	; <た>
- D - I - 0x02F630 21:B620: 66        .byte $66	; <ヨ>
- D - I - 0x02F631 21:B621: 14        .byte $14	; <と>
- D - I - 0x02F632 21:B622: 67        .byte $67	; <ラ>

- D - I - 0x02F633 21:B623: 28        .byte $28	; <り>
- D - I - 0x02F634 21:B624: 01        .byte $01	; <あ>
- D - I - 0x02F635 21:B625: 09        .byte $09	; <け>
- D - I - 0x02F636 21:B626: 07        .byte $07	; <き>
- D - I - 0x02F637 21:B627: 0C        .byte $0C	; <し>
- D - I - 0x02F638 21:B628: 69        .byte $69	; <ル>
- D - I - 0x02F639 21:B629: 0D        .byte $0D	; <す>
- D - I - 0x02F63A 21:B62A: 15        .byte $15	; <な>
- D - I - 0x02F63B 21:B62B: 10        .byte $10	; <た>
- D - I - 0x02F63C 21:B62C: 13        .byte $13	; <て>
- D - I - 0x02F63D 21:B62D: 14        .byte $14	; <と>
- D - I - 0x02F63E 21:B62E: 6C        .byte $6C	; <ワ>
- D - I - 0x02F63F 21:B62F: 18        .byte $18	; <ね>
- D - I - 0x02F640 21:B630: 6D        .byte $6D	; <ヲ>

- D - I - 0x02F641 21:B631: 28        .byte $28	; <り>
- D - I - 0x02F642 21:B632: 02        .byte $02	; <い>
- D - I - 0x02F643 21:B633: 0F        .byte $0F	; <そ>
- D - I - 0x02F644 21:B634: 6B        .byte $6B	; <ロ>
- D - I - 0x02F645 21:B635: 0D        .byte $0D	; <す>
- D - I - 0x02F646 21:B636: 15        .byte $15	; <な>
- D - I - 0x02F647 21:B637: 13        .byte $13	; <て>
- D - I - 0x02F648 21:B638: 6E        .byte $6E	; <ン>
- D - I - 0x02F649 21:B639: 14        .byte $14	; <と>
- D - I - 0x02F64A 21:B63A: 6F        .byte $6F	; <ッ>
- D - I - 0x02F64B 21:B63B: 15        .byte $15	; <な>
- D - I - 0x02F64C 21:B63C: 15        .byte $15	; <な>
- D - I - 0x02F64D 21:B63D: 19        .byte $19	; <の>
- D - I - 0x02F64E 21:B63E: 1C        .byte $1C	; <ふ>

- D - I - 0x02F64F 21:B63F: 02        .byte $02	; <い>
- D - I - 0x02F650 21:B640: 9A B4     .word off_B49A



off_B642:
- D - I - 0x02F652 21:B642: 20        .byte $20	; <み>
- D - I - 0x02F653 21:B643: 00        .byte $00
- D - I - 0x02F654 21:B644: 09        .byte $09	; <け>
- D - I - 0x02F655 21:B645: 05        .byte $05	; <お>
- D - I - 0x02F656 21:B646: 0C        .byte $0C	; <し>
- D - I - 0x02F657 21:B647: 51        .byte $51	; <チ>
- D - I - 0x02F658 21:B648: 0D        .byte $0D	; <す>
- D - I - 0x02F659 21:B649: 17        .byte $17	; <ぬ>
- D - I - 0x02F65A 21:B64A: 10        .byte $10	; <た>
- D - I - 0x02F65B 21:B64B: 54        .byte $54	; <ト>
- D - I - 0x02F65C 21:B64C: 14        .byte $14	; <と>
- D - I - 0x02F65D 21:B64D: 55        .byte $55	; <ナ>

- D - I - 0x02F65E 21:B64E: 20        .byte $20	; <み>
- D - I - 0x02F65F 21:B64F: 01        .byte $01	; <あ>
- D - I - 0x02F660 21:B650: 09        .byte $09	; <け>
- D - I - 0x02F661 21:B651: 07        .byte $07	; <き>
- D - I - 0x02F662 21:B652: 0C        .byte $0C	; <し>
- D - I - 0x02F663 21:B653: 53        .byte $53	; <テ>
- D - I - 0x02F664 21:B654: 0D        .byte $0D	; <す>
- D - I - 0x02F665 21:B655: 15        .byte $15	; <な>
- D - I - 0x02F666 21:B656: 10        .byte $10	; <た>
- D - I - 0x02F667 21:B657: 56        .byte $56	; <ニ>
- D - I - 0x02F668 21:B658: 14        .byte $14	; <と>
- D - I - 0x02F669 21:B659: 57        .byte $57	; <ヌ>

- D - I - 0x02F66A 21:B65A: 30        .byte $30	; <ゃ>
- D - I - 0x02F66B 21:B65B: 02        .byte $02	; <い>
- D - I - 0x02F66C 21:B65C: 0F        .byte $0F	; <そ>
- D - I - 0x02F66D 21:B65D: 59        .byte $59	; <ノ>
- D - I - 0x02F66E 21:B65E: 0D        .byte $0D	; <す>
- D - I - 0x02F66F 21:B65F: 15        .byte $15	; <な>
- D - I - 0x02F670 21:B660: 13        .byte $13	; <て>
- D - I - 0x02F671 21:B661: 5C        .byte $5C	; <フ>
- D - I - 0x02F672 21:B662: 10        .byte $10	; <た>
- D - I - 0x02F673 21:B663: 15        .byte $15	; <な>
- D - I - 0x02F674 21:B664: 14        .byte $14	; <と>
- D - I - 0x02F675 21:B665: 5D        .byte $5D	; <ヘ>
- D - I - 0x02F676 21:B666: 15        .byte $15	; <な>
- D - I - 0x02F677 21:B667: 15        .byte $15	; <な>
- D - I - 0x02F678 21:B668: 19        .byte $19	; <の>
- D - I - 0x02F679 21:B669: 1C        .byte $1C	; <ふ>

- D - I - 0x02F67A 21:B66A: 02        .byte $02	; <い>
- D - I - 0x02F67B 21:B66B: 9A B4     .word off_B49A



off_B66D:
- D - I - 0x02F67D 21:B66D: 20        .byte $20	; <み>
- D - I - 0x02F67E 21:B66E: 01        .byte $01	; <あ>
- D - I - 0x02F67F 21:B66F: 09        .byte $09	; <け>
- D - I - 0x02F680 21:B670: 07        .byte $07	; <き>
- D - I - 0x02F681 21:B671: 0C        .byte $0C	; <し>
- D - I - 0x02F682 21:B672: 30        .byte $30	; <ゃ>
- D - I - 0x02F683 21:B673: 0D        .byte $0D	; <す>
- D - I - 0x02F684 21:B674: 15        .byte $15	; <な>
- D - I - 0x02F685 21:B675: 10        .byte $10	; <た>
- D - I - 0x02F686 21:B676: 31        .byte $31	; <ゅ>
- D - I - 0x02F687 21:B677: 14        .byte $14	; <と>
- D - I - 0x02F688 21:B678: 16        .byte $16	; <に>

- D - I - 0x02F689 21:B679: 30        .byte $30	; <ゃ>
- D - I - 0x02F68A 21:B67A: 02        .byte $02	; <い>
- D - I - 0x02F68B 21:B67B: 0F        .byte $0F	; <そ>
- D - I - 0x02F68C 21:B67C: 32        .byte $32	; <ょ>
- D - I - 0x02F68D 21:B67D: 0D        .byte $0D	; <す>
- D - I - 0x02F68E 21:B67E: 15        .byte $15	; <な>
- D - I - 0x02F68F 21:B67F: 13        .byte $13	; <て>
- D - I - 0x02F690 21:B680: 33        .byte $33	; <0>
- D - I - 0x02F691 21:B681: 10        .byte $10	; <た>
- D - I - 0x02F692 21:B682: 15        .byte $15	; <な>
- D - I - 0x02F693 21:B683: 14        .byte $14	; <と>
- D - I - 0x02F694 21:B684: 19        .byte $19	; <の>
- D - I - 0x02F695 21:B685: 15        .byte $15	; <な>
- D - I - 0x02F696 21:B686: 15        .byte $15	; <な>
- D - I - 0x02F697 21:B687: 19        .byte $19	; <の>
- D - I - 0x02F698 21:B688: 1C        .byte $1C	; <ふ>

- D - I - 0x02F699 21:B689: 02        .byte $02	; <い>
- D - I - 0x02F69A 21:B68A: 8E B4     .word off_B48E



off_B68C_A3:
- D - I - 0x02F69C 21:B68C: 00        .byte $00
- D - I - 0x02F69D 21:B68D: 07        .byte $07	; <き>
- D - I - 0x02F69E 21:B68E: 03        .byte $03	; <う>
- D - I - 0x02F69F 21:B68F: 98        .byte $98
; продолжение


off_B690:
- D - I - 0x02F6A0 21:B690: 00        .byte $00
- D - I - 0x02F6A1 21:B691: 06        .byte $06	; <か>
- D - I - 0x02F6A2 21:B692: 0B        .byte $0B	; <さ>
- D - I - 0x02F6A3 21:B693: 96        .byte $96

- D - I - 0x02F6A4 21:B694: 00        .byte $00
- D - I - 0x02F6A5 21:B695: 07        .byte $07	; <き>
- D - I - 0x02F6A6 21:B696: 0B        .byte $0B	; <さ>
- D - I - 0x02F6A7 21:B697: 9C        .byte $9C

- D - I - 0x02F6A8 21:B698: 08        .byte $08	; <く>
- D - I - 0x02F6A9 21:B699: 04        .byte $04	; <え>
- D - I - 0x02F6AA 21:B69A: 05        .byte $05	; <お>
- D - I - 0x02F6AB 21:B69B: A6        .byte $A6	; <じ>
- D - I - 0x02F6AC 21:B69C: 09        .byte $09	; <け>
- D - I - 0x02F6AD 21:B69D: A7        .byte $A7	; <ず>

- D - I - 0x02F6AE 21:B69E: 18        .byte $18	; <ね>
- D - I - 0x02F6AF 21:B69F: 05        .byte $05	; <お>
- D - I - 0x02F6B0 21:B6A0: 07        .byte $07	; <き>
- D - I - 0x02F6B1 21:B6A1: AE        .byte $AE	; <ど>
- D - I - 0x02F6B2 21:B6A2: 05        .byte $05	; <お>
- D - I - 0x02F6B3 21:B6A3: AC        .byte $AC	; <づ>
- D - I - 0x02F6B4 21:B6A4: 0B        .byte $0B	; <さ>
- D - I - 0x02F6B5 21:B6A5: AF        .byte $AF	; <ば>
- D - I - 0x02F6B6 21:B6A6: 09        .byte $09	; <け>
- D - I - 0x02F6B7 21:B6A7: AD        .byte $AD	; <で>
; продолжение


off_B6A8:
- D - I - 0x02F6B8 21:B6A8: 00        .byte $00
- D - I - 0x02F6B9 21:B6A9: 05        .byte $05	; <お>
- D - I - 0x02F6BA 21:B6AA: 03        .byte $03	; <う>
- D - I - 0x02F6BB 21:B6AB: 90        .byte $90	; <U>

- D - I - 0x02F6BC 21:B6AC: 08        .byte $08	; <く>
- D - I - 0x02F6BD 21:B6AD: 06        .byte $06	; <か>
- D - I - 0x02F6BE 21:B6AE: 03        .byte $03	; <う>
- D - I - 0x02F6BF 21:B6AF: 92        .byte $92	; <W>
- D - I - 0x02F6C0 21:B6B0: 07        .byte $07	; <き>
- D - I - 0x02F6C1 21:B6B1: 93        .byte $93	; <Y>

- D - I - 0x02F6C2 21:B6B2: 00        .byte $00
- D - I - 0x02F6C3 21:B6B3: 07        .byte $07	; <き>
- D - I - 0x02F6C4 21:B6B4: 07        .byte $07	; <き>
- D - I - 0x02F6C5 21:B6B5: 99        .byte $99

- D - I - 0x02F6C6 21:B6B6: 02        .byte $02	; <い>
- D - I - 0x02F6C7 21:B6B7: 41 B4     .word off_B441



off_B6B9_A4:
- D - I - 0x02F6C9 21:B6B9: 08        .byte $08	; <く>
- D - I - 0x02F6CA 21:B6BA: 04        .byte $04	; <え>
- D - I - 0x02F6CB 21:B6BB: 05        .byte $05	; <お>
- D - I - 0x02F6CC 21:B6BC: 9A        .byte $9A
- D - I - 0x02F6CD 21:B6BD: 09        .byte $09	; <け>
- D - I - 0x02F6CE 21:B6BE: 9B        .byte $9B

- D - I - 0x02F6CF 21:B6BF: 10        .byte $10	; <た>
- D - I - 0x02F6D0 21:B6C0: 05        .byte $05	; <お>
- D - I - 0x02F6D1 21:B6C1: 07        .byte $07	; <き>
- D - I - 0x02F6D2 21:B6C2: B1        .byte $B1	; <ぶ>
- D - I - 0x02F6D3 21:B6C3: 0B        .byte $0B	; <さ>
- D - I - 0x02F6D4 21:B6C4: B0        .byte $B0	; <び>
- D - I - 0x02F6D5 21:B6C5: 09        .byte $09	; <け>
- D - I - 0x02F6D6 21:B6C6: 15        .byte $15	; <な>

- D - I - 0x02F6D7 21:B6C7: 08        .byte $08	; <く>
- D - I - 0x02F6D8 21:B6C8: 06        .byte $06	; <か>
- D - I - 0x02F6D9 21:B6C9: 0B        .byte $0B	; <さ>
- D - I - 0x02F6DA 21:B6CA: B2        .byte $B2	; <べ>
- D - I - 0x02F6DB 21:B6CB: 0F        .byte $0F	; <そ>
- D - I - 0x02F6DC 21:B6CC: B3        .byte $B3	; <ぼ>

- D - I - 0x02F6DD 21:B6CD: 08        .byte $08	; <く>
- D - I - 0x02F6DE 21:B6CE: 07        .byte $07	; <き>
- D - I - 0x02F6DF 21:B6CF: 03        .byte $03	; <う>
- D - I - 0x02F6E0 21:B6D0: 98        .byte $98
- D - I - 0x02F6E1 21:B6D1: 0B        .byte $0B	; <さ>
- D - I - 0x02F6E2 21:B6D2: B8        .byte $B8	; <ゴ>

- D - I - 0x02F6E3 21:B6D3: 02        .byte $02	; <い>
- D - I - 0x02F6E4 21:B6D4: A8 B6     .word off_B6A8



off_B6D6_A5:
- D - I - 0x02F6E6 21:B6D6: 08        .byte $08	; <く>
- D - I - 0x02F6E7 21:B6D7: 04        .byte $04	; <え>
- D - I - 0x02F6E8 21:B6D8: 05        .byte $05	; <お>
- D - I - 0x02F6E9 21:B6D9: 9A        .byte $9A
- D - I - 0x02F6EA 21:B6DA: 09        .byte $09	; <け>
- D - I - 0x02F6EB 21:B6DB: 9B        .byte $9B

- D - I - 0x02F6EC 21:B6DC: 10        .byte $10	; <た>
- D - I - 0x02F6ED 21:B6DD: 05        .byte $05	; <お>
- D - I - 0x02F6EE 21:B6DE: 07        .byte $07	; <き>
- D - I - 0x02F6EF 21:B6DF: B7        .byte $B7	; <ゲ>
- D - I - 0x02F6F0 21:B6E0: 0B        .byte $0B	; <さ>
- D - I - 0x02F6F1 21:B6E1: 9E        .byte $9E
- D - I - 0x02F6F2 21:B6E2: 09        .byte $09	; <け>
- D - I - 0x02F6F3 21:B6E3: 15        .byte $15	; <な>

- D - I - 0x02F6F4 21:B6E4: 08        .byte $08	; <く>
- D - I - 0x02F6F5 21:B6E5: 06        .byte $06	; <か>
- D - I - 0x02F6F6 21:B6E6: 0B        .byte $0B	; <さ>
- D - I - 0x02F6F7 21:B6E7: B4        .byte $B4	; <ガ>
- D - I - 0x02F6F8 21:B6E8: 0F        .byte $0F	; <そ>
- D - I - 0x02F6F9 21:B6E9: B5        .byte $B5	; <ギ>

- D - I - 0x02F6FA 21:B6EA: 08        .byte $08	; <く>
- D - I - 0x02F6FB 21:B6EB: 07        .byte $07	; <き>
- D - I - 0x02F6FC 21:B6EC: 03        .byte $03	; <う>
- D - I - 0x02F6FD 21:B6ED: 98        .byte $98
- D - I - 0x02F6FE 21:B6EE: 0B        .byte $0B	; <さ>
- D - I - 0x02F6FF 21:B6EF: B6        .byte $B6	; <グ>

- D - I - 0x02F700 21:B6F0: 02        .byte $02	; <い>
- D - I - 0x02F701 21:B6F1: A8 B6     .word off_B6A8



off_B6F3_A6:
- D - I - 0x02F703 21:B6F3: 00        .byte $00
- D - I - 0x02F704 21:B6F4: 06        .byte $06	; <か>
- D - I - 0x02F705 21:B6F5: 6B        .byte $6B	; <ロ>
- D - I - 0x02F706 21:B6F6: 91        .byte $91	; <V>

- D - I - 0x02F707 21:B6F7: 08        .byte $08	; <く>
- D - I - 0x02F708 21:B6F8: 07        .byte $07	; <き>
- D - I - 0x02F709 21:B6F9: 6B        .byte $6B	; <ロ>
- D - I - 0x02F70A 21:B6FA: 94        .byte $94
- D - I - 0x02F70B 21:B6FB: 03        .byte $03	; <う>
- D - I - 0x02F70C 21:B6FC: 95        .byte $95

- D - I - 0x02F70D 21:B6FD: 02        .byte $02	; <い>
- D - I - 0x02F70E 21:B6FE: 90 B6     .word off_B690



off_B700_A7:
- D - I - 0x02F710 21:B700: 00        .byte $00
- D - I - 0x02F711 21:B701: 06        .byte $06	; <か>
- D - I - 0x02F712 21:B702: 6B        .byte $6B	; <ロ>
- D - I - 0x02F713 21:B703: 97        .byte $97

- D - I - 0x02F714 21:B704: 08        .byte $08	; <く>
- D - I - 0x02F715 21:B705: 07        .byte $07	; <き>
- D - I - 0x02F716 21:B706: 6B        .byte $6B	; <ロ>
- D - I - 0x02F717 21:B707: 9D        .byte $9D
- D - I - 0x02F718 21:B708: 03        .byte $03	; <う>
- D - I - 0x02F719 21:B709: 9F        .byte $9F

- D - I - 0x02F71A 21:B70A: 02        .byte $02	; <い>
- D - I - 0x02F71B 21:B70B: 90 B6     .word off_B690



off_B70D_A8:
- D - I - 0x02F71D 21:B70D: 10        .byte $10	; <た>
- D - I - 0x02F71E 21:B70E: 18        .byte $18	; <ね>
- D - I - 0x02F71F 21:B70F: 43        .byte $43	; <ウ>
- D - I - 0x02F720 21:B710: 90        .byte $90	; <U>
- D - I - 0x02F721 21:B711: 47        .byte $47	; <キ>
- D - I - 0x02F722 21:B712: AE        .byte $AE	; <ど>
- D - I - 0x02F723 21:B713: 87        .byte $87	; <G>
- D - I - 0x02F724 21:B714: AF        .byte $AF	; <ば>

- D - I - 0x02F725 21:B715: 10        .byte $10	; <た>
- D - I - 0x02F726 21:B716: 19        .byte $19	; <の>
- D - I - 0x02F727 21:B717: 43        .byte $43	; <ウ>
- D - I - 0x02F728 21:B718: 92        .byte $92	; <W>
- D - I - 0x02F729 21:B719: 47        .byte $47	; <キ>
- D - I - 0x02F72A 21:B71A: 93        .byte $93	; <Y>
- D - I - 0x02F72B 21:B71B: 87        .byte $87	; <G>
- D - I - 0x02F72C 21:B71C: 96        .byte $96

- D - I - 0x02F72D 21:B71D: 10        .byte $10	; <た>
- D - I - 0x02F72E 21:B71E: 1A        .byte $1A	; <は>
- D - I - 0x02F72F 21:B71F: 43        .byte $43	; <ウ>
- D - I - 0x02F730 21:B720: 98        .byte $98
- D - I - 0x02F731 21:B721: 47        .byte $47	; <キ>
- D - I - 0x02F732 21:B722: 99        .byte $99
- D - I - 0x02F733 21:B723: 87        .byte $87	; <G>
- D - I - 0x02F734 21:B724: 9C        .byte $9C

- D - I - 0x02F735 21:B725: 01        .byte $01	; <あ>



off_B726_A9:
- D - I - 0x02F736 21:B726: 08        .byte $08	; <く>
- D - I - 0x02F737 21:B727: 03        .byte $03	; <う>
- D - I - 0x02F738 21:B728: 0D        .byte $0D	; <す>
- D - I - 0x02F739 21:B729: 79        .byte $79	; <!>
- D - I - 0x02F73A 21:B72A: 11        .byte $11	; <ち>
- D - I - 0x02F73B 21:B72B: 7C        .byte $7C	; <~>

- D - I - 0x02F73C 21:B72C: 18        .byte $18	; <ね>
- D - I - 0x02F73D 21:B72D: 04        .byte $04	; <え>
- D - I - 0x02F73E 21:B72E: 0B        .byte $0B	; <さ>
- D - I - 0x02F73F 21:B72F: 7A        .byte $7A	; <、>
- D - I - 0x02F740 21:B730: 0E        .byte $0E	; <せ>
- D - I - 0x02F741 21:B731: 7B        .byte $7B	; <。>
- D - I - 0x02F742 21:B732: 12        .byte $12	; <つ>
- D - I - 0x02F743 21:B733: 7E        .byte $7E	; <.>
- D - I - 0x02F744 21:B734: 11        .byte $11	; <ち>
- D - I - 0x02F745 21:B735: 15        .byte $15	; <な>

- D - I - 0x02F746 21:B736: 10        .byte $10	; <た>
- D - I - 0x02F747 21:B737: 05        .byte $05	; <お>
- D - I - 0x02F748 21:B738: 0B        .byte $0B	; <さ>
- D - I - 0x02F749 21:B739: B9        .byte $B9	; <ザ>
- D - I - 0x02F74A 21:B73A: 0E        .byte $0E	; <せ>
- D - I - 0x02F74B 21:B73B: BB        .byte $BB	; <ズ>
- D - I - 0x02F74C 21:B73C: 12        .byte $12	; <つ>
- D - I - 0x02F74D 21:B73D: 7D        .byte $7D	; <ー>

- D - I - 0x02F74E 21:B73E: 00        .byte $00
- D - I - 0x02F74F 21:B73F: 06        .byte $06	; <か>
- D - I - 0x02F750 21:B740: 0B        .byte $0B	; <さ>
- D - I - 0x02F751 21:B741: 7F        .byte $7F	; <,>

- D - I - 0x02F752 21:B742: 02        .byte $02	; <い>
- D - I - 0x02F753 21:B743: 59 B4     .word off_B459



off_B745_AA:
- D - I - 0x02F755 21:B745: 10        .byte $10	; <た>
- D - I - 0x02F756 21:B746: 04        .byte $04	; <え>
- D - I - 0x02F757 21:B747: 0F        .byte $0F	; <そ>
- D - I - 0x02F758 21:B748: 84        .byte $84	; <D>
- D - I - 0x02F759 21:B749: 13        .byte $13	; <て>
- D - I - 0x02F75A 21:B74A: 85        .byte $85	; <E>
- D - I - 0x02F75B 21:B74B: 12        .byte $12	; <つ>
- D - I - 0x02F75C 21:B74C: 15        .byte $15	; <な>

- D - I - 0x02F75D 21:B74D: 00        .byte $00
- D - I - 0x02F75E 21:B74E: 05        .byte $05	; <お>
- D - I - 0x02F75F 21:B74F: 0F        .byte $0F	; <そ>
- D - I - 0x02F760 21:B750: 86        .byte $86	; <F>

- D - I - 0x02F761 21:B751: 00        .byte $00
- D - I - 0x02F762 21:B752: 25        .byte $25	; <ゆ>
- D - I - 0x02F763 21:B753: 0E        .byte $0E	; <せ>
- D - I - 0x02F764 21:B754: 15        .byte $15	; <な>
; продолжение


off_B755:
- D - I - 0x02F765 21:B755: 20        .byte $20	; <み>
- D - I - 0x02F766 21:B756: 03        .byte $03	; <う>
- D - I - 0x02F767 21:B757: 07        .byte $07	; <き>
- D - I - 0x02F768 21:B758: 74        .byte $74	; <ィ>
- D - I - 0x02F769 21:B759: 0B        .byte $0B	; <さ>
- D - I - 0x02F76A 21:B75A: 73        .byte $73	; <ヮ>
- D - I - 0x02F76B 21:B75B: 0F        .byte $0F	; <そ>
- D - I - 0x02F76C 21:B75C: 82        .byte $82	; <B>
- D - I - 0x02F76D 21:B75D: 0D        .byte $0D	; <す>
- D - I - 0x02F76E 21:B75E: 15        .byte $15	; <な>
- D - I - 0x02F76F 21:B75F: 11        .byte $11	; <ち>
- D - I - 0x02F770 21:B760: 83        .byte $83	; <C>

- D - I - 0x02F771 21:B761: 08        .byte $08	; <く>
- D - I - 0x02F772 21:B762: 04        .byte $04	; <え>
- D - I - 0x02F773 21:B763: 07        .byte $07	; <き>
- D - I - 0x02F774 21:B764: 76        .byte $76	; <ォ>
- D - I - 0x02F775 21:B765: 0B        .byte $0B	; <さ>
- D - I - 0x02F776 21:B766: 72        .byte $72	; <ョ>

- D - I - 0x02F777 21:B767: 08        .byte $08	; <く>
- D - I - 0x02F778 21:B768: 05        .byte $05	; <お>
- D - I - 0x02F779 21:B769: 0B        .byte $0B	; <さ>
- D - I - 0x02F77A 21:B76A: 87        .byte $87	; <G>
- D - I - 0x02F77B 21:B76B: 12        .byte $12	; <つ>
- D - I - 0x02F77C 21:B76C: 7D        .byte $7D	; <ー>

- D - I - 0x02F77D 21:B76D: 00        .byte $00
- D - I - 0x02F77E 21:B76E: 06        .byte $06	; <か>
- D - I - 0x02F77F 21:B76F: 0B        .byte $0B	; <さ>
- D - I - 0x02F780 21:B770: 7F        .byte $7F	; <,>

- D - I - 0x02F781 21:B771: 02        .byte $02	; <い>
- D - I - 0x02F782 21:B772: 59 B4     .word off_B459



off_B774_AB:
- D - I - 0x02F784 21:B774: 08        .byte $08	; <く>
- D - I - 0x02F785 21:B775: 04        .byte $04	; <え>
- D - I - 0x02F786 21:B776: 0F        .byte $0F	; <そ>
- D - I - 0x02F787 21:B777: 88        .byte $88	; <H>
- D - I - 0x02F788 21:B778: 12        .byte $12	; <つ>
- D - I - 0x02F789 21:B779: 89        .byte $89	; <I>

- D - I - 0x02F78A 21:B77A: 00        .byte $00
- D - I - 0x02F78B 21:B77B: 05        .byte $05	; <お>
- D - I - 0x02F78C 21:B77C: 0E        .byte $0E	; <せ>
- D - I - 0x02F78D 21:B77D: 8A        .byte $8A	; <N>

- D - I - 0x02F78E 21:B77E: 02        .byte $02	; <い>
- D - I - 0x02F78F 21:B77F: 55 B7     .word off_B755



off_B781_AC:
- D - I - 0x02F791 21:B781: 08        .byte $08	; <く>
- D - I - 0x02F792 21:B782: 03        .byte $03	; <う>
- D - I - 0x02F793 21:B783: 07        .byte $07	; <き>
- D - I - 0x02F794 21:B784: 8C        .byte $8C	; <M>
- D - I - 0x02F795 21:B785: 0B        .byte $0B	; <さ>
- D - I - 0x02F796 21:B786: 8D        .byte $8D	; <P>

- D - I - 0x02F797 21:B787: 00        .byte $00
- D - I - 0x02F798 21:B788: 04        .byte $04	; <え>
- D - I - 0x02F799 21:B789: 07        .byte $07	; <き>
- D - I - 0x02F79A 21:B78A: 8E        .byte $8E	; <L>
; продолжение


off_B78B:
- D - I - 0x02F79B 21:B78B: 00        .byte $00
- D - I - 0x02F79C 21:B78C: 05        .byte $05	; <お>
- D - I - 0x02F79D 21:B78D: 0B        .byte $0B	; <さ>
- D - I - 0x02F79E 21:B78E: A0        .byte $A0	; <が>
; продолжение


off_B78F:
- D - I - 0x02F79F 21:B78F: 10        .byte $10	; <た>
- D - I - 0x02F7A0 21:B790: 03        .byte $03	; <う>
- D - I - 0x02F7A1 21:B791: 0F        .byte $0F	; <そ>
- D - I - 0x02F7A2 21:B792: 82        .byte $82	; <B>
- D - I - 0x02F7A3 21:B793: 0D        .byte $0D	; <す>
- D - I - 0x02F7A4 21:B794: 15        .byte $15	; <な>
- D - I - 0x02F7A5 21:B795: 11        .byte $11	; <ち>
- D - I - 0x02F7A6 21:B796: 7C        .byte $7C	; <~>

- D - I - 0x02F7A7 21:B797: 08        .byte $08	; <く>
- D - I - 0x02F7A8 21:B798: 05        .byte $05	; <お>
- D - I - 0x02F7A9 21:B799: 0E        .byte $0E	; <せ>
- D - I - 0x02F7AA 21:B79A: A1        .byte $A1	; <ぎ>
- D - I - 0x02F7AB 21:B79B: 12        .byte $12	; <つ>
- D - I - 0x02F7AC 21:B79C: 7D        .byte $7D	; <ー>

- D - I - 0x02F7AD 21:B79D: 00        .byte $00
- D - I - 0x02F7AE 21:B79E: 04        .byte $04	; <え>
- D - I - 0x02F7AF 21:B79F: 0F        .byte $0F	; <そ>
- D - I - 0x02F7B0 21:B7A0: 8B        .byte $8B	; <K>

- D - I - 0x02F7B1 21:B7A1: 00        .byte $00
- D - I - 0x02F7B2 21:B7A2: 25        .byte $25	; <ゆ>
- D - I - 0x02F7B3 21:B7A3: 0E        .byte $0E	; <せ>
- D - I - 0x02F7B4 21:B7A4: 15        .byte $15	; <な>

- D - I - 0x02F7B5 21:B7A5: 10        .byte $10	; <た>
- D - I - 0x02F7B6 21:B7A6: 04        .byte $04	; <え>
- D - I - 0x02F7B7 21:B7A7: 0B        .byte $0B	; <さ>
- D - I - 0x02F7B8 21:B7A8: 72        .byte $72	; <ョ>
- D - I - 0x02F7B9 21:B7A9: 12        .byte $12	; <つ>
- D - I - 0x02F7BA 21:B7AA: 7E        .byte $7E	; <.>
- D - I - 0x02F7BB 21:B7AB: 11        .byte $11	; <ち>
- D - I - 0x02F7BC 21:B7AC: 15        .byte $15	; <な>

- D - I - 0x02F7BD 21:B7AD: 00        .byte $00
- D - I - 0x02F7BE 21:B7AE: 06        .byte $06	; <か>
- D - I - 0x02F7BF 21:B7AF: 0B        .byte $0B	; <さ>
- D - I - 0x02F7C0 21:B7B0: 7F        .byte $7F	; <,>

- D - I - 0x02F7C1 21:B7B1: 02        .byte $02	; <い>
- D - I - 0x02F7C2 21:B7B2: 59 B4     .word off_B459



off_B7B4_AD:
- D - I - 0x02F7C4 21:B7B4: 08        .byte $08	; <く>
- D - I - 0x02F7C5 21:B7B5: 03        .byte $03	; <う>
- D - I - 0x02F7C6 21:B7B6: 07        .byte $07	; <き>
- D - I - 0x02F7C7 21:B7B7: 8F        .byte $8F	; <S>
- D - I - 0x02F7C8 21:B7B8: 0B        .byte $0B	; <さ>
- D - I - 0x02F7C9 21:B7B9: A4        .byte $A4	; <ご>

- D - I - 0x02F7CA 21:B7BA: 00        .byte $00
- D - I - 0x02F7CB 21:B7BB: 04        .byte $04	; <え>
- D - I - 0x02F7CC 21:B7BC: 07        .byte $07	; <き>
- D - I - 0x02F7CD 21:B7BD: A5        .byte $A5	; <ざ>

- D - I - 0x02F7CE 21:B7BE: 02        .byte $02	; <い>
- D - I - 0x02F7CF 21:B7BF: 8B B7     .word off_B78B



off_B7C1_AE:
- D - I - 0x02F7D1 21:B7C1: 10        .byte $10	; <た>
- D - I - 0x02F7D2 21:B7C2: 03        .byte $03	; <う>
- D - I - 0x02F7D3 21:B7C3: 0B        .byte $0B	; <さ>
- D - I - 0x02F7D4 21:B7C4: 74        .byte $74	; <ィ>
- D - I - 0x02F7D5 21:B7C5: 0F        .byte $0F	; <そ>
- D - I - 0x02F7D6 21:B7C6: 73        .byte $73	; <ヮ>
- D - I - 0x02F7D7 21:B7C7: 13        .byte $13	; <て>
- D - I - 0x02F7D8 21:B7C8: 5F        .byte $5F	; <マ>

- D - I - 0x02F7D9 21:B7C9: 10        .byte $10	; <た>
- D - I - 0x02F7DA 21:B7CA: 04        .byte $04	; <え>
- D - I - 0x02F7DB 21:B7CB: 0B        .byte $0B	; <さ>
- D - I - 0x02F7DC 21:B7CC: 76        .byte $76	; <ォ>
- D - I - 0x02F7DD 21:B7CD: 0F        .byte $0F	; <そ>
- D - I - 0x02F7DE 21:B7CE: 72        .byte $72	; <ョ>
- D - I - 0x02F7DF 21:B7CF: 13        .byte $13	; <て>
- D - I - 0x02F7E0 21:B7D0: 75        .byte $75	; <ェ>

- D - I - 0x02F7E1 21:B7D1: 08        .byte $08	; <く>
- D - I - 0x02F7E2 21:B7D2: 05        .byte $05	; <お>
- D - I - 0x02F7E3 21:B7D3: 0F        .byte $0F	; <そ>
- D - I - 0x02F7E4 21:B7D4: 78        .byte $78	; <?>
- D - I - 0x02F7E5 21:B7D5: 13        .byte $13	; <て>
- D - I - 0x02F7E6 21:B7D6: 77        .byte $77	; <:>

- D - I - 0x02F7E7 21:B7D7: 01        .byte $01	; <あ>



off_B7D8_AF:
- D - I - 0x02F7E8 21:B7D8: 00        .byte $00
- D - I - 0x02F7E9 21:B7D9: 1E        .byte $1E	; <ほ>
- D - I - 0x02F7EA 21:B7DA: 0C        .byte $0C	; <し>
- D - I - 0x02F7EB 21:B7DB: 34        .byte $34	; <1>

- D - I - 0x02F7EC 21:B7DC: 18        .byte $18	; <ね>
- D - I - 0x02F7ED 21:B7DD: 00        .byte $00
- D - I - 0x02F7EE 21:B7DE: 0F        .byte $0F	; <そ>
- D - I - 0x02F7EF 21:B7DF: 30        .byte $30	; <ゃ>
- D - I - 0x02F7F0 21:B7E0: 0D        .byte $0D	; <す>
- D - I - 0x02F7F1 21:B7E1: 36        .byte $36	; <3>
- D - I - 0x02F7F2 21:B7E2: 13        .byte $13	; <て>
- D - I - 0x02F7F3 21:B7E3: 31        .byte $31	; <ゅ>
- D - I - 0x02F7F4 21:B7E4: 11        .byte $11	; <ち>
- D - I - 0x02F7F5 21:B7E5: 37        .byte $37	; <4>

- D - I - 0x02F7F6 21:B7E6: 08        .byte $08	; <く>
- D - I - 0x02F7F7 21:B7E7: 01        .byte $01	; <あ>
- D - I - 0x02F7F8 21:B7E8: 0D        .byte $0D	; <す>
- D - I - 0x02F7F9 21:B7E9: 3C        .byte $3C	; <9>
- D - I - 0x02F7FA 21:B7EA: 11        .byte $11	; <ち>
- D - I - 0x02F7FB 21:B7EB: 3D        .byte $3D	; <+>

- D - I - 0x02F7FC 21:B7EC: 08        .byte $08	; <く>
- D - I - 0x02F7FD 21:B7ED: 02        .byte $02	; <い>
- D - I - 0x02F7FE 21:B7EE: 0D        .byte $0D	; <す>
- D - I - 0x02F7FF 21:B7EF: 3E        .byte $3E	; <Jr>
- D - I - 0x02F800 21:B7F0: 11        .byte $11	; <ち>
- D - I - 0x02F801 21:B7F1: 19        .byte $19	; <の>

- D - I - 0x02F802 21:B7F2: 08        .byte $08	; <く>
- D - I - 0x02F803 21:B7F3: 03        .byte $03	; <う>
- D - I - 0x02F804 21:B7F4: 10        .byte $10	; <た>
- D - I - 0x02F805 21:B7F5: 1A        .byte $1A	; <は>
- D - I - 0x02F806 21:B7F6: 14        .byte $14	; <と>
- D - I - 0x02F807 21:B7F7: 1B        .byte $1B	; <ひ>

- D - I - 0x02F808 21:B7F8: 03        .byte $03	; <う>
- D - I - 0x02F809 21:B7F9: 11 B8     .word off_B811
- D - I - 0x02F80B 21:B7FB: 71 B8     .word off_B871
- D - I - 0x02F80D 21:B7FD: 11 B8     .word off_B811
- - - - - 0x02F80F 21:B7FF: 11 B8     .word off_B811
- - - - - 0x02F811 21:B801: 11 B8     .word off_B811
- D - I - 0x02F813 21:B803: 11 B8     .word off_B811
- - - - - 0x02F815 21:B805: 11 B8     .word off_B811
- D - I - 0x02F817 21:B807: 60 B8     .word off_B860
- - - - - 0x02F819 21:B809: 11 B8     .word off_B811
- - - - - 0x02F81B 21:B80B: 11 B8     .word off_B811
- D - I - 0x02F81D 21:B80D: 11 B8     .word off_B811
- - - - - 0x02F81F 21:B80F: 11 B8     .word off_B811



off_B811:
- D - I - 0x02F821 21:B811: 08        .byte $08	; <く>
- D - I - 0x02F822 21:B812: 06        .byte $06	; <か>
- D - I - 0x02F823 21:B813: 09        .byte $09	; <け>
- D - I - 0x02F824 21:B814: 22        .byte $22	; <め>
- D - I - 0x02F825 21:B815: 0D        .byte $0D	; <す>
- D - I - 0x02F826 21:B816: 0B        .byte $0B	; <さ>
; продолжение


off_B817:
- D - I - 0x02F827 21:B817: 08        .byte $08	; <く>
- D - I - 0x02F828 21:B818: 04        .byte $04	; <え>
- D - I - 0x02F829 21:B819: 0D        .byte $0D	; <す>
- D - I - 0x02F82A 21:B81A: 03        .byte $03	; <う>
- D - I - 0x02F82B 21:B81B: 0C        .byte $0C	; <し>
- D - I - 0x02F82C 21:B81C: 2E        .byte $2E	; <ん>

- D - I - 0x02F82D 21:B81D: 00        .byte $00
- D - I - 0x02F82E 21:B81E: 05        .byte $05	; <お>
- D - I - 0x02F82F 21:B81F: 0D        .byte $0D	; <す>
- D - I - 0x02F830 21:B820: 09        .byte $09	; <け>
; продолжение


off_B821:
- D - I - 0x02F831 21:B821: 08        .byte $08	; <く>
- D - I - 0x02F832 21:B822: 03        .byte $03	; <う>
- D - I - 0x02F833 21:B823: 0B        .byte $0B	; <さ>
- D - I - 0x02F834 21:B824: 08        .byte $08	; <く>
- D - I - 0x02F835 21:B825: 0F        .byte $0F	; <そ>
- D - I - 0x02F836 21:B826: 32        .byte $32	; <ょ>

- D - I - 0x02F837 21:B827: 10        .byte $10	; <た>
- D - I - 0x02F838 21:B828: 04        .byte $04	; <え>
- D - I - 0x02F839 21:B829: 08        .byte $08	; <く>
- D - I - 0x02F83A 21:B82A: 0A        .byte $0A	; <こ>
- D - I - 0x02F83B 21:B82B: 12        .byte $12	; <つ>
- D - I - 0x02F83C 21:B82C: 04        .byte $04	; <え>
- D - I - 0x02F83D 21:B82D: 16        .byte $16	; <に>
- D - I - 0x02F83E 21:B82E: 33        .byte $33	; <0>

- D - I - 0x02F83F 21:B82F: 28        .byte $28	; <り>
- D - I - 0x02F840 21:B830: 05        .byte $05	; <お>
- D - I - 0x02F841 21:B831: 08        .byte $08	; <く>
- D - I - 0x02F842 21:B832: 20        .byte $20	; <み>
- D - I - 0x02F843 21:B833: 12        .byte $12	; <つ>
- D - I - 0x02F844 21:B834: 06        .byte $06	; <か>
- D - I - 0x02F845 21:B835: 16        .byte $16	; <に>
- D - I - 0x02F846 21:B836: 39        .byte $39	; <6>
- D - I - 0x02F847 21:B837: 1B        .byte $1B	; <ひ>
- D - I - 0x02F848 21:B838: 0E        .byte $0E	; <せ>
- D - I - 0x02F849 21:B839: 81        .byte $81	; <A>
- D - I - 0x02F84A 21:B83A: 0F        .byte $0F	; <そ>
- D - I - 0x02F84B 21:B83B: C1        .byte $C1	; <デ>
- D - I - 0x02F84C 21:B83C: 23        .byte $23	; <も>

- D - I - 0x02F84D 21:B83D: 28        .byte $28	; <り>
- D - I - 0x02F84E 21:B83E: 06        .byte $06	; <か>
- D - I - 0x02F84F 21:B83F: 12        .byte $12	; <つ>
- D - I - 0x02F850 21:B840: 0C        .byte $0C	; <し>
- D - I - 0x02F851 21:B841: 11        .byte $11	; <ち>
- D - I - 0x02F852 21:B842: 2C        .byte $2C	; <わ>
- D - I - 0x02F853 21:B843: 1A        .byte $1A	; <は>
- D - I - 0x02F854 21:B844: 24        .byte $24	; <や>
- D - I - 0x02F855 21:B845: 81        .byte $81	; <A>
- D - I - 0x02F856 21:B846: 25        .byte $25	; <ゆ>
- D - I - 0x02F857 21:B847: C1        .byte $C1	; <デ>
- D - I - 0x02F858 21:B848: 29        .byte $29	; <る>
- D - I - 0x02F859 21:B849: 16        .byte $16	; <に>
- D - I - 0x02F85A 21:B84A: 3B        .byte $3B	; <8>

- D - I - 0x02F85B 21:B84B: 20        .byte $20	; <み>
- D - I - 0x02F85C 21:B84C: 07        .byte $07	; <き>
- D - I - 0x02F85D 21:B84D: 0B        .byte $0B	; <さ>
- D - I - 0x02F85E 21:B84E: 28        .byte $28	; <り>
- D - I - 0x02F85F 21:B84F: 0C        .byte $0C	; <し>
- D - I - 0x02F860 21:B850: 21        .byte $21	; <む>
- D - I - 0x02F861 21:B851: 80        .byte $80
- D - I - 0x02F862 21:B852: 2A        .byte $2A	; <れ>
- D - I - 0x02F863 21:B853: C1        .byte $C1	; <デ>
- D - I - 0x02F864 21:B854: 2B        .byte $2B	; <ろ>
- D - I - 0x02F865 21:B855: C7        .byte $C7	; <ボ>
- D - I - 0x02F866 21:B856: 27        .byte $27	; <ら>

- D - I - 0x02F867 21:B857: 00        .byte $00
- D - I - 0x02F868 21:B858: 08        .byte $08	; <く>
- D - I - 0x02F869 21:B859: E7        .byte $E7
- D - I - 0x02F86A 21:B85A: 02        .byte $02	; <い>

- D - I - 0x02F86B 21:B85B: 00        .byte $00
- D - I - 0x02F86C 21:B85C: 21        .byte $21	; <む>
- D - I - 0x02F86D 21:B85D: 07        .byte $07	; <き>
- D - I - 0x02F86E 21:B85E: 26        .byte $26	; <よ>

- D - I - 0x02F86F 21:B85F: 01        .byte $01	; <あ>



off_B860:
- D - I - 0x02F870 21:B860: 00        .byte $00
- D - I - 0x02F871 21:B861: 04        .byte $04	; <え>
- D - I - 0x02F872 21:B862: 0C        .byte $0C	; <し>
- D - I - 0x02F873 21:B863: 78        .byte $78	; <?>

- D - I - 0x02F874 21:B864: 00        .byte $00
- D - I - 0x02F875 21:B865: 05        .byte $05	; <お>
- D - I - 0x02F876 21:B866: 0D        .byte $0D	; <す>
- D - I - 0x02F877 21:B867: 7A        .byte $7A	; <、>

- D - I - 0x02F878 21:B868: 08        .byte $08	; <く>
- D - I - 0x02F879 21:B869: 06        .byte $06	; <か>
- D - I - 0x02F87A 21:B86A: 08        .byte $08	; <く>
- D - I - 0x02F87B 21:B86B: 7B        .byte $7B	; <。>
- D - I - 0x02F87C 21:B86C: 0D        .byte $0D	; <す>
- D - I - 0x02F87D 21:B86D: 79        .byte $79	; <!>

- D - I - 0x02F87E 21:B86E: 02        .byte $02	; <い>
- D - I - 0x02F87F 21:B86F: 21 B8     .word off_B821



off_B871:
- D - I - 0x02F881 21:B871: 08        .byte $08	; <く>
- D - I - 0x02F882 21:B872: 06        .byte $06	; <か>
- D - I - 0x02F883 21:B873: 09        .byte $09	; <け>
- D - I - 0x02F884 21:B874: 22        .byte $22	; <め>
- D - I - 0x02F885 21:B875: 0D        .byte $0D	; <す>
- D - I - 0x02F886 21:B876: 7E        .byte $7E	; <.>

- D - I - 0x02F887 21:B877: 00        .byte $00
- D - I - 0x02F888 21:B878: 27        .byte $27	; <ら>
- D - I - 0x02F889 21:B879: 10        .byte $10	; <た>
- D - I - 0x02F88A 21:B87A: 7F        .byte $7F	; <,>

- D - I - 0x02F88B 21:B87B: 02        .byte $02	; <い>
- D - I - 0x02F88C 21:B87C: 17 B8     .word off_B817



off_B87E_B0:
- D - I - 0x02F88E 21:B87E: 00        .byte $00
- D - I - 0x02F88F 21:B87F: 00        .byte $00
- D - I - 0x02F890 21:B880: 17        .byte $17	; <ぬ>
- D - I - 0x02F891 21:B881: 15        .byte $15	; <な>

- D - I - 0x02F892 21:B882: 08        .byte $08	; <く>
- D - I - 0x02F893 21:B883: 01        .byte $01	; <あ>
- D - I - 0x02F894 21:B884: 11        .byte $11	; <ち>
- D - I - 0x02F895 21:B885: 35        .byte $35	; <2>
- D - I - 0x02F896 21:B886: 15        .byte $15	; <な>
- D - I - 0x02F897 21:B887: 17        .byte $17	; <ぬ>

- D - I - 0x02F898 21:B888: 08        .byte $08	; <く>
- D - I - 0x02F899 21:B889: 02        .byte $02	; <い>
- D - I - 0x02F89A 21:B88A: 11        .byte $11	; <ち>
- D - I - 0x02F89B 21:B88B: 1C        .byte $1C	; <ふ>
- D - I - 0x02F89C 21:B88C: 15        .byte $15	; <な>
- D - I - 0x02F89D 21:B88D: 1D        .byte $1D	; <へ>

- D - I - 0x02F89E 21:B88E: 08        .byte $08	; <く>
- D - I - 0x02F89F 21:B88F: 03        .byte $03	; <う>
- D - I - 0x02F8A0 21:B890: 11        .byte $11	; <ち>
- D - I - 0x02F8A1 21:B891: 1E        .byte $1E	; <ほ>
- D - I - 0x02F8A2 21:B892: 14        .byte $14	; <と>
- D - I - 0x02F8A3 21:B893: 1F        .byte $1F	; <ま>

- D - I - 0x02F8A4 21:B894: 02        .byte $02	; <い>
- D - I - 0x02F8A5 21:B895: 11 B8     .word off_B811



off_B897_2F:
- D - I - 0x02F8A7 21:B897: 08        .byte $08	; <く>
- D - I - 0x02F8A8 21:B898: 03        .byte $03	; <う>
- D - I - 0x02F8A9 21:B899: 0F        .byte $0F	; <そ>
- D - I - 0x02F8AA 21:B89A: 2D        .byte $2D	; <を>
- D - I - 0x02F8AB 21:B89B: 13        .byte $13	; <て>
- D - I - 0x02F8AC 21:B89C: 38        .byte $38	; <5>

- D - I - 0x02F8AD 21:B89D: 08        .byte $08	; <く>
- D - I - 0x02F8AE 21:B89E: 04        .byte $04	; <え>
- D - I - 0x02F8AF 21:B89F: 0F        .byte $0F	; <そ>
- D - I - 0x02F8B0 21:B8A0: 2F        .byte $2F	; <っ>
- D - I - 0x02F8B1 21:B8A1: 13        .byte $13	; <て>
- D - I - 0x02F8B2 21:B8A2: 3A        .byte $3A	; <7>

- D - I - 0x02F8B3 21:B8A3: 01        .byte $01	; <あ>



off_B8A4_B1:
- D - I - 0x02F8B4 21:B8A4: 00        .byte $00
- D - I - 0x02F8B5 21:B8A5: 00        .byte $00
- D - I - 0x02F8B6 21:B8A6: 0C        .byte $0C	; <し>
- D - I - 0x02F8B7 21:B8A7: 20        .byte $20	; <み>

- D - I - 0x02F8B8 21:B8A8: 20        .byte $20	; <み>
- D - I - 0x02F8B9 21:B8A9: 01        .byte $01	; <あ>
- D - I - 0x02F8BA 21:B8AA: 0C        .byte $0C	; <し>
- D - I - 0x02F8BB 21:B8AB: 1E        .byte $1E	; <ほ>
- D - I - 0x02F8BC 21:B8AC: 0D        .byte $0D	; <す>
- D - I - 0x02F8BD 21:B8AD: 22        .byte $22	; <め>
- D - I - 0x02F8BE 21:B8AE: 10        .byte $10	; <た>
- D - I - 0x02F8BF 21:B8AF: 1F        .byte $1F	; <ま>
- D - I - 0x02F8C0 21:B8B0: 11        .byte $11	; <ち>
- D - I - 0x02F8C1 21:B8B1: 23        .byte $23	; <も>
- D - I - 0x02F8C2 21:B8B2: 14        .byte $14	; <と>
- D - I - 0x02F8C3 21:B8B3: 26        .byte $26	; <よ>

- D - I - 0x02F8C4 21:B8B4: 20        .byte $20	; <み>
- D - I - 0x02F8C5 21:B8B5: 02        .byte $02	; <い>
- D - I - 0x02F8C6 21:B8B6: 0E        .byte $0E	; <せ>
- D - I - 0x02F8C7 21:B8B7: 34        .byte $34	; <1>
- D - I - 0x02F8C8 21:B8B8: 0D        .byte $0D	; <す>
- D - I - 0x02F8C9 21:B8B9: 28        .byte $28	; <り>
- D - I - 0x02F8CA 21:B8BA: 12        .byte $12	; <つ>
- D - I - 0x02F8CB 21:B8BB: 35        .byte $35	; <2>
- D - I - 0x02F8CC 21:B8BC: 11        .byte $11	; <ち>
- D - I - 0x02F8CD 21:B8BD: 29        .byte $29	; <る>
- D - I - 0x02F8CE 21:B8BE: 14        .byte $14	; <と>
- D - I - 0x02F8CF 21:B8BF: 2C        .byte $2C	; <わ>

- D - I - 0x02F8D0 21:B8C0: 20        .byte $20	; <み>
- D - I - 0x02F8D1 21:B8C1: 03        .byte $03	; <う>
- D - I - 0x02F8D2 21:B8C2: 0C        .byte $0C	; <し>
- D - I - 0x02F8D3 21:B8C3: 36        .byte $36	; <3>
- D - I - 0x02F8D4 21:B8C4: 0D        .byte $0D	; <す>
- D - I - 0x02F8D5 21:B8C5: 2A        .byte $2A	; <れ>
- D - I - 0x02F8D6 21:B8C6: 10        .byte $10	; <た>
- D - I - 0x02F8D7 21:B8C7: 37        .byte $37	; <4>
- D - I - 0x02F8D8 21:B8C8: 11        .byte $11	; <ち>
- D - I - 0x02F8D9 21:B8C9: 2B        .byte $2B	; <ろ>
- D - I - 0x02F8DA 21:B8CA: 14        .byte $14	; <と>
- D - I - 0x02F8DB 21:B8CB: 2E        .byte $2E	; <ん>

- D - I - 0x02F8DC 21:B8CC: 10        .byte $10	; <た>
- D - I - 0x02F8DD 21:B8CD: 04        .byte $04	; <え>
- D - I - 0x02F8DE 21:B8CE: 0D        .byte $0D	; <す>
- D - I - 0x02F8DF 21:B8CF: 25        .byte $25	; <ゆ>
- D - I - 0x02F8E0 21:B8D0: 11        .byte $11	; <ち>
- D - I - 0x02F8E1 21:B8D1: 30        .byte $30	; <ゃ>
- D - I - 0x02F8E2 21:B8D2: 15        .byte $15	; <な>
- D - I - 0x02F8E3 21:B8D3: 31        .byte $31	; <ゅ>

- D - I - 0x02F8E4 21:B8D4: 18        .byte $18	; <ね>
- D - I - 0x02F8E5 21:B8D5: 05        .byte $05	; <お>
- D - I - 0x02F8E6 21:B8D6: 46        .byte $46	; <カ>
- D - I - 0x02F8E7 21:B8D7: 21        .byte $21	; <む>
- D - I - 0x02F8E8 21:B8D8: 45        .byte $45	; <オ>
- D - I - 0x02F8E9 21:B8D9: 2D        .byte $2D	; <を>
- D - I - 0x02F8EA 21:B8DA: 86        .byte $86	; <F>
- D - I - 0x02F8EB 21:B8DB: 24        .byte $24	; <や>
- D - I - 0x02F8EC 21:B8DC: 85        .byte $85	; <E>
- D - I - 0x02F8ED 21:B8DD: 38        .byte $38	; <5>

- D - I - 0x02F8EE 21:B8DE: 10        .byte $10	; <た>
- D - I - 0x02F8EF 21:B8DF: 06        .byte $06	; <か>
- D - I - 0x02F8F0 21:B8E0: 0D        .byte $0D	; <す>
- D - I - 0x02F8F1 21:B8E1: 27        .byte $27	; <ら>
- D - I - 0x02F8F2 21:B8E2: 11        .byte $11	; <ち>
- D - I - 0x02F8F3 21:B8E3: 32        .byte $32	; <ょ>
- D - I - 0x02F8F4 21:B8E4: 15        .byte $15	; <な>
- D - I - 0x02F8F5 21:B8E5: 33        .byte $33	; <0>

- D - I - 0x02F8F6 21:B8E6: 08        .byte $08	; <く>
- D - I - 0x02F8F7 21:B8E7: 07        .byte $07	; <き>
- D - I - 0x02F8F8 21:B8E8: 45        .byte $45	; <オ>
- D - I - 0x02F8F9 21:B8E9: 2F        .byte $2F	; <っ>
- D - I - 0x02F8FA 21:B8EA: 85        .byte $85	; <E>
- D - I - 0x02F8FB 21:B8EB: 3A        .byte $3A	; <7>

- D - I - 0x02F8FC 21:B8EC: 01        .byte $01	; <あ>



off_B8ED_B2:
- D - I - 0x02F8FD 21:B8ED: 30        .byte $30	; <ゃ>
- D - I - 0x02F8FE 21:B8EE: 01        .byte $01	; <あ>
- D - I - 0x02F8FF 21:B8EF: 00        .byte $00
- D - I - 0x02F900 21:B8F0: 02        .byte $02	; <い>
- D - I - 0x02F901 21:B8F1: 05        .byte $05	; <お>
- D - I - 0x02F902 21:B8F2: 03        .byte $03	; <う>
- D - I - 0x02F903 21:B8F3: 09        .byte $09	; <け>
- D - I - 0x02F904 21:B8F4: 06        .byte $06	; <か>
- D - I - 0x02F905 21:B8F5: 0D        .byte $0D	; <す>
- D - I - 0x02F906 21:B8F6: 07        .byte $07	; <き>
- D - I - 0x02F907 21:B8F7: 11        .byte $11	; <ち>
- D - I - 0x02F908 21:B8F8: 12        .byte $12	; <つ>
- D - I - 0x02F909 21:B8F9: 15        .byte $15	; <な>
- D - I - 0x02F90A 21:B8FA: 13        .byte $13	; <て>
- D - I - 0x02F90B 21:B8FB: 19        .byte $19	; <の>
- D - I - 0x02F90C 21:B8FC: 16        .byte $16	; <に>

- D - I - 0x02F90D 21:B8FD: 38        .byte $38	; <5>
- D - I - 0x02F90E 21:B8FE: 02        .byte $02	; <い>
- D - I - 0x02F90F 21:B8FF: 00        .byte $00
- D - I - 0x02F910 21:B900: 08        .byte $08	; <く>
- D - I - 0x02F911 21:B901: 04        .byte $04	; <え>
- D - I - 0x02F912 21:B902: 09        .byte $09	; <け>
- D - I - 0x02F913 21:B903: 09        .byte $09	; <け>
- D - I - 0x02F914 21:B904: 1D        .byte $1D	; <へ>
- D - I - 0x02F915 21:B905: 08        .byte $08	; <く>
- D - I - 0x02F916 21:B906: 0C        .byte $0C	; <し>
- D - I - 0x02F917 21:B907: 0D        .byte $0D	; <す>
- D - I - 0x02F918 21:B908: 0D        .byte $0D	; <す>
- D - I - 0x02F919 21:B909: 11        .byte $11	; <ち>
- D - I - 0x02F91A 21:B90A: 18        .byte $18	; <ね>
- D - I - 0x02F91B 21:B90B: 15        .byte $15	; <な>
- D - I - 0x02F91C 21:B90C: 19        .byte $19	; <の>
- D - I - 0x02F91D 21:B90D: 19        .byte $19	; <の>
- D - I - 0x02F91E 21:B90E: 1C        .byte $1C	; <ふ>

- D - I - 0x02F91F 21:B90F: 38        .byte $38	; <5>
- D - I - 0x02F920 21:B910: 03        .byte $03	; <う>
- D - I - 0x02F921 21:B911: 02        .byte $02	; <い>
- D - I - 0x02F922 21:B912: 0A        .byte $0A	; <こ>
- D - I - 0x02F923 21:B913: 04        .byte $04	; <え>
- D - I - 0x02F924 21:B914: 0B        .byte $0B	; <さ>
- D - I - 0x02F925 21:B915: 08        .byte $08	; <く>
- D - I - 0x02F926 21:B916: 0E        .byte $0E	; <せ>
- D - I - 0x02F927 21:B917: 0C        .byte $0C	; <し>
- D - I - 0x02F928 21:B918: 0F        .byte $0F	; <そ>
- D - I - 0x02F929 21:B919: 10        .byte $10	; <た>
- D - I - 0x02F92A 21:B91A: 1A        .byte $1A	; <は>
- D - I - 0x02F92B 21:B91B: 15        .byte $15	; <な>
- D - I - 0x02F92C 21:B91C: 1B        .byte $1B	; <ひ>
- D - I - 0x02F92D 21:B91D: 19        .byte $19	; <の>
- D - I - 0x02F92E 21:B91E: 1E        .byte $1E	; <ほ>
- D - I - 0x02F92F 21:B91F: 81        .byte $81	; <A>
- D - I - 0x02F930 21:B920: 1F        .byte $1F	; <ま>

- D - I - 0x02F931 21:B921: 38        .byte $38	; <5>
- D - I - 0x02F932 21:B922: 04        .byte $04	; <え>
- D - I - 0x02F933 21:B923: 02        .byte $02	; <い>
- D - I - 0x02F934 21:B924: 20        .byte $20	; <み>
- D - I - 0x02F935 21:B925: 06        .byte $06	; <か>
- D - I - 0x02F936 21:B926: 21        .byte $21	; <む>
- D - I - 0x02F937 21:B927: 09        .byte $09	; <け>
- D - I - 0x02F938 21:B928: 24        .byte $24	; <や>
- D - I - 0x02F939 21:B929: 0D        .byte $0D	; <す>
- D - I - 0x02F93A 21:B92A: 25        .byte $25	; <ゆ>
- D - I - 0x02F93B 21:B92B: 10        .byte $10	; <た>
- D - I - 0x02F93C 21:B92C: 30        .byte $30	; <ゃ>
- D - I - 0x02F93D 21:B92D: 14        .byte $14	; <と>
- D - I - 0x02F93E 21:B92E: 31        .byte $31	; <ゅ>
- D - I - 0x02F93F 21:B92F: 81        .byte $81	; <A>
- D - I - 0x02F940 21:B930: 34        .byte $34	; <1>
- D - I - 0x02F941 21:B931: C1        .byte $C1	; <デ>
- D - I - 0x02F942 21:B932: 35        .byte $35	; <2>

- D - I - 0x02F943 21:B933: 28        .byte $28	; <り>
- D - I - 0x02F944 21:B934: 05        .byte $05	; <お>
- D - I - 0x02F945 21:B935: 02        .byte $02	; <い>
- D - I - 0x02F946 21:B936: 22        .byte $22	; <め>
- D - I - 0x02F947 21:B937: 06        .byte $06	; <か>
- D - I - 0x02F948 21:B938: 23        .byte $23	; <も>
- D - I - 0x02F949 21:B939: 09        .byte $09	; <け>
- D - I - 0x02F94A 21:B93A: 26        .byte $26	; <よ>
- D - I - 0x02F94B 21:B93B: 0D        .byte $0D	; <す>
- D - I - 0x02F94C 21:B93C: 27        .byte $27	; <ら>
- D - I - 0x02F94D 21:B93D: 0E        .byte $0E	; <せ>
- D - I - 0x02F94E 21:B93E: 05        .byte $05	; <お>
- D - I - 0x02F94F 21:B93F: 12        .byte $12	; <つ>
- D - I - 0x02F950 21:B940: 32        .byte $32	; <ょ>

- D - I - 0x02F951 21:B941: 30        .byte $30	; <ゃ>
- D - I - 0x02F952 21:B942: 06        .byte $06	; <か>
- D - I - 0x02F953 21:B943: 03        .byte $03	; <う>
- D - I - 0x02F954 21:B944: 28        .byte $28	; <り>
- D - I - 0x02F955 21:B945: 07        .byte $07	; <き>
- D - I - 0x02F956 21:B946: 33        .byte $33	; <0>
- D - I - 0x02F957 21:B947: 06        .byte $06	; <か>
- D - I - 0x02F958 21:B948: 29        .byte $29	; <る>
- D - I - 0x02F959 21:B949: 0A        .byte $0A	; <こ>
- D - I - 0x02F95A 21:B94A: 2C        .byte $2C	; <わ>
- D - I - 0x02F95B 21:B94B: 0E        .byte $0E	; <せ>
- D - I - 0x02F95C 21:B94C: 2D        .byte $2D	; <を>
- D - I - 0x02F95D 21:B94D: 13        .byte $13	; <て>
- D - I - 0x02F95E 21:B94E: 38        .byte $38	; <5>
- D - I - 0x02F95F 21:B94F: 17        .byte $17	; <ぬ>
- D - I - 0x02F960 21:B950: 39        .byte $39	; <6>

- D - I - 0x02F961 21:B951: 01        .byte $01	; <あ>



off_B952_B3:
- D - I - 0x02F962 21:B952: 00        .byte $00
- D - I - 0x02F963 21:B953: 19        .byte $19	; <の>
- D - I - 0x02F964 21:B954: 86        .byte $86	; <F>
- D - I - 0x02F965 21:B955: 60        .byte $60	; <ミ>

- D - I - 0x02F966 21:B956: 00        .byte $00
- D - I - 0x02F967 21:B957: 24        .byte $24	; <や>
- D - I - 0x02F968 21:B958: 0A        .byte $0A	; <こ>
- D - I - 0x02F969 21:B959: 48        .byte $48	; <ク>

- D - I - 0x02F96A 21:B95A: 10        .byte $10	; <た>
- D - I - 0x02F96B 21:B95B: 02        .byte $02	; <い>
- D - I - 0x02F96C 21:B95C: 09        .byte $09	; <け>
- D - I - 0x02F96D 21:B95D: 67        .byte $67	; <ラ>
- D - I - 0x02F96E 21:B95E: 0D        .byte $0D	; <す>
- D - I - 0x02F96F 21:B95F: 45        .byte $45	; <オ>
- D - I - 0x02F970 21:B960: 11        .byte $11	; <ち>
- D - I - 0x02F971 21:B961: 50        .byte $50	; <タ>

- D - I - 0x02F972 21:B962: 18        .byte $18	; <ね>
- D - I - 0x02F973 21:B963: 03        .byte $03	; <う>
- D - I - 0x02F974 21:B964: 05        .byte $05	; <お>
- D - I - 0x02F975 21:B965: 6C        .byte $6C	; <ワ>
- D - I - 0x02F976 21:B966: 09        .byte $09	; <け>
- D - I - 0x02F977 21:B967: 6D        .byte $6D	; <ヲ>
- D - I - 0x02F978 21:B968: 0D        .byte $0D	; <す>
- D - I - 0x02F979 21:B969: 47        .byte $47	; <キ>
- D - I - 0x02F97A 21:B96A: 10        .byte $10	; <た>
- D - I - 0x02F97B 21:B96B: 52        .byte $52	; <ツ>
; продолжение


off_B96C:
- D - I - 0x02F97C 21:B96C: 28        .byte $28	; <り>
- D - I - 0x02F97D 21:B96D: 01        .byte $01	; <あ>
- D - I - 0x02F97E 21:B96E: 05        .byte $05	; <お>
- D - I - 0x02F97F 21:B96F: 61        .byte $61	; <ム>
- D - I - 0x02F980 21:B970: 09        .byte $09	; <け>
- D - I - 0x02F981 21:B971: 70        .byte $70	; <ャ>
- D - I - 0x02F982 21:B972: 0D        .byte $0D	; <す>
- D - I - 0x02F983 21:B973: 70        .byte $70	; <ャ>
- D - I - 0x02F984 21:B974: 11        .byte $11	; <ち>
- D - I - 0x02F985 21:B975: 70        .byte $70	; <ャ>
- D - I - 0x02F986 21:B976: 15        .byte $15	; <な>
- D - I - 0x02F987 21:B977: 70        .byte $70	; <ャ>
- D - I - 0x02F988 21:B978: 19        .byte $19	; <の>
- D - I - 0x02F989 21:B979: 6B        .byte $6B	; <ロ>

- D - I - 0x02F98A 21:B97A: 18        .byte $18	; <ね>
- D - I - 0x02F98B 21:B97B: 02        .byte $02	; <い>
- D - I - 0x02F98C 21:B97C: 69        .byte $69	; <ル>
- D - I - 0x02F98D 21:B97D: 62        .byte $62	; <メ>
- D - I - 0x02F98E 21:B97E: 05        .byte $05	; <お>
- D - I - 0x02F98F 21:B97F: 70        .byte $70	; <ャ>
- D - I - 0x02F990 21:B980: 15        .byte $15	; <な>
- D - I - 0x02F991 21:B981: 70        .byte $70	; <ャ>
- D - I - 0x02F992 21:B982: 19        .byte $19	; <の>
- D - I - 0x02F993 21:B983: 55        .byte $55	; <ナ>

- D - I - 0x02F994 21:B984: 08        .byte $08	; <く>
- D - I - 0x02F995 21:B985: 03        .byte $03	; <う>
- D - I - 0x02F996 21:B986: 15        .byte $15	; <な>
- D - I - 0x02F997 21:B987: 56        .byte $56	; <ニ>
- D - I - 0x02F998 21:B988: 19        .byte $19	; <の>
- D - I - 0x02F999 21:B989: 57        .byte $57	; <ヌ>

- D - I - 0x02F99A 21:B98A: 28        .byte $28	; <り>
- D - I - 0x02F99B 21:B98B: 04        .byte $04	; <え>
- D - I - 0x02F99C 21:B98C: 04        .byte $04	; <え>
- D - I - 0x02F99D 21:B98D: 75        .byte $75	; <ェ>
- D - I - 0x02F99E 21:B98E: 08        .byte $08	; <く>
- D - I - 0x02F99F 21:B98F: 68        .byte $68	; <リ>
- D - I - 0x02F9A0 21:B990: 0C        .byte $0C	; <し>
- D - I - 0x02F9A1 21:B991: 4D        .byte $4D	; <ス>
- D - I - 0x02F9A2 21:B992: 13        .byte $13	; <て>
- D - I - 0x02F9A3 21:B993: 58        .byte $58	; <ネ>
- D - I - 0x02F9A4 21:B994: 14        .byte $14	; <と>
- D - I - 0x02F9A5 21:B995: 5C        .byte $5C	; <フ>
- D - I - 0x02F9A6 21:B996: 19        .byte $19	; <の>
- D - I - 0x02F9A7 21:B997: 5D        .byte $5D	; <ヘ>

- D - I - 0x02F9A8 21:B998: 20        .byte $20	; <み>
- D - I - 0x02F9A9 21:B999: 05        .byte $05	; <お>
- D - I - 0x02F9AA 21:B99A: 08        .byte $08	; <く>
- D - I - 0x02F9AB 21:B99B: 6A        .byte $6A	; <レ>
- D - I - 0x02F9AC 21:B99C: 0F        .byte $0F	; <そ>
- D - I - 0x02F9AD 21:B99D: 4F        .byte $4F	; <ソ>
- D - I - 0x02F9AE 21:B99E: 13        .byte $13	; <て>
- D - I - 0x02F9AF 21:B99F: 5A        .byte $5A	; <ハ>
- D - I - 0x02F9B0 21:B9A0: 14        .byte $14	; <と>
- D - I - 0x02F9B1 21:B9A1: 5E        .byte $5E	; <ホ>
- D - I - 0x02F9B2 21:B9A2: 19        .byte $19	; <の>
- D - I - 0x02F9B3 21:B9A3: 5F        .byte $5F	; <マ>

- D - I - 0x02F9B4 21:B9A4: 38        .byte $38	; <5>
- D - I - 0x02F9B5 21:B9A5: 06        .byte $06	; <か>
- D - I - 0x02F9B6 21:B9A6: 00        .byte $00
- D - I - 0x02F9B7 21:B9A7: 04        .byte $04	; <え>
- D - I - 0x02F9B8 21:B9A8: 04        .byte $04	; <え>
- D - I - 0x02F9B9 21:B9A9: 05        .byte $05	; <お>
- D - I - 0x02F9BA 21:B9AA: 08        .byte $08	; <く>
- D - I - 0x02F9BB 21:B9AB: 2C        .byte $2C	; <わ>
- D - I - 0x02F9BC 21:B9AC: 0A        .byte $0A	; <こ>
- D - I - 0x02F9BD 21:B9AD: 10        .byte $10	; <た>
- D - I - 0x02F9BE 21:B9AE: 0C        .byte $0C	; <し>
- D - I - 0x02F9BF 21:B9AF: 65        .byte $65	; <ユ>
- D - I - 0x02F9C0 21:B9B0: 10        .byte $10	; <た>
- D - I - 0x02F9C1 21:B9B1: 51        .byte $51	; <チ>
- D - I - 0x02F9C2 21:B9B2: 14        .byte $14	; <と>
- D - I - 0x02F9C3 21:B9B3: 54        .byte $54	; <ト>
- D - I - 0x02F9C4 21:B9B4: 18        .byte $18	; <ね>
- D - I - 0x02F9C5 21:B9B5: 6E        .byte $6E	; <ン>

- D - I - 0x02F9C6 21:B9B6: 00        .byte $00
- D - I - 0x02F9C7 21:B9B7: 12        .byte $12	; <つ>
- D - I - 0x02F9C8 21:B9B8: 01        .byte $01	; <あ>
- D - I - 0x02F9C9 21:B9B9: 63        .byte $63	; <モ>

- D - I - 0x02F9CA 21:B9BA: 00        .byte $00
- D - I - 0x02F9CB 21:B9BB: 22        .byte $22	; <め>
- D - I - 0x02F9CC 21:B9BC: 01        .byte $01	; <あ>
- D - I - 0x02F9CD 21:B9BD: 69        .byte $69	; <ル>

- D - I - 0x02F9CE 21:B9BE: 01        .byte $01	; <あ>



off_B9BF_B4:
- D - I - 0x02F9CF 21:B9BF: 28        .byte $28	; <り>
- D - I - 0x02F9D0 21:B9C0: 01        .byte $01	; <あ>
- D - I - 0x02F9D1 21:B9C1: 04        .byte $04	; <え>
- D - I - 0x02F9D2 21:B9C2: 17        .byte $17	; <ぬ>
- D - I - 0x02F9D3 21:B9C3: 08        .byte $08	; <く>
- D - I - 0x02F9D4 21:B9C4: 15        .byte $15	; <な>
- D - I - 0x02F9D5 21:B9C5: 0C        .byte $0C	; <し>
- D - I - 0x02F9D6 21:B9C6: 01        .byte $01	; <あ>
- D - I - 0x02F9D7 21:B9C7: 10        .byte $10	; <た>
- D - I - 0x02F9D8 21:B9C8: 01        .byte $01	; <あ>
- D - I - 0x02F9D9 21:B9C9: 14        .byte $14	; <と>
- D - I - 0x02F9DA 21:B9CA: 01        .byte $01	; <あ>
- D - I - 0x02F9DB 21:B9CB: 18        .byte $18	; <ね>
- D - I - 0x02F9DC 21:B9CC: 23        .byte $23	; <も>

- D - I - 0x02F9DD 21:B9CD: 28        .byte $28	; <り>
- D - I - 0x02F9DE 21:B9CE: 02        .byte $02	; <い>
- D - I - 0x02F9DF 21:B9CF: 04        .byte $04	; <え>
- D - I - 0x02F9E0 21:B9D0: 1D        .byte $1D	; <へ>
- D - I - 0x02F9E1 21:B9D1: 08        .byte $08	; <く>
- D - I - 0x02F9E2 21:B9D2: 01        .byte $01	; <あ>
- D - I - 0x02F9E3 21:B9D3: 0C        .byte $0C	; <し>
- D - I - 0x02F9E4 21:B9D4: 01        .byte $01	; <あ>
- D - I - 0x02F9E5 21:B9D5: 10        .byte $10	; <た>
- D - I - 0x02F9E6 21:B9D6: 01        .byte $01	; <あ>
- D - I - 0x02F9E7 21:B9D7: 14        .byte $14	; <と>
- D - I - 0x02F9E8 21:B9D8: 28        .byte $28	; <り>
- D - I - 0x02F9E9 21:B9D9: 18        .byte $18	; <ね>
- D - I - 0x02F9EA 21:B9DA: 29        .byte $29	; <る>

- D - I - 0x02F9EB 21:B9DB: 28        .byte $28	; <り>
- D - I - 0x02F9EC 21:B9DC: 03        .byte $03	; <う>
- D - I - 0x02F9ED 21:B9DD: 04        .byte $04	; <え>
- D - I - 0x02F9EE 21:B9DE: 2A        .byte $2A	; <れ>
- D - I - 0x02F9EF 21:B9DF: 08        .byte $08	; <く>
- D - I - 0x02F9F0 21:B9E0: 2B        .byte $2B	; <ろ>
- D - I - 0x02F9F1 21:B9E1: 0C        .byte $0C	; <し>
- D - I - 0x02F9F2 21:B9E2: 2E        .byte $2E	; <ん>
- D - I - 0x02F9F3 21:B9E3: 11        .byte $11	; <ち>
- D - I - 0x02F9F4 21:B9E4: 2F        .byte $2F	; <っ>
- D - I - 0x02F9F5 21:B9E5: 15        .byte $15	; <な>
- D - I - 0x02F9F6 21:B9E6: 3A        .byte $3A	; <7>
- D - I - 0x02F9F7 21:B9E7: 18        .byte $18	; <ね>
- D - I - 0x02F9F8 21:B9E8: 3B        .byte $3B	; <8>

- D - I - 0x02F9F9 21:B9E9: 30        .byte $30	; <ゃ>
- D - I - 0x02F9FA 21:B9EA: 04        .byte $04	; <え>
- D - I - 0x02F9FB 21:B9EB: 04        .byte $04	; <え>
- D - I - 0x02F9FC 21:B9EC: 3E        .byte $3E	; <Jr>
- D - I - 0x02F9FD 21:B9ED: 09        .byte $09	; <け>
- D - I - 0x02F9FE 21:B9EE: 3F        .byte $3F	; <•>
- D - I - 0x02F9FF 21:B9EF: 0D        .byte $0D	; <す>
- D - I - 0x02FA00 21:B9F0: 22        .byte $22	; <め>
- D - I - 0x02FA01 21:B9F1: 11        .byte $11	; <ち>
- D - I - 0x02FA02 21:B9F2: 30        .byte $30	; <ゃ>
- D - I - 0x02FA03 21:B9F3: 15        .byte $15	; <な>
- D - I - 0x02FA04 21:B9F4: 1E        .byte $1E	; <ほ>
- D - I - 0x02FA05 21:B9F5: 14        .byte $14	; <と>
- D - I - 0x02FA06 21:B9F6: 31        .byte $31	; <ゅ>
- D - I - 0x02FA07 21:B9F7: 18        .byte $18	; <ね>
- D - I - 0x02FA08 21:B9F8: 14        .byte $14	; <と>

- D - I - 0x02FA09 21:B9F9: 20        .byte $20	; <み>
- D - I - 0x02FA0A 21:B9FA: 05        .byte $05	; <お>
- D - I - 0x02FA0B 21:B9FB: 08        .byte $08	; <く>
- D - I - 0x02FA0C 21:B9FC: 26        .byte $26	; <よ>
- D - I - 0x02FA0D 21:B9FD: 0F        .byte $0F	; <そ>
- D - I - 0x02FA0E 21:B9FE: 27        .byte $27	; <ら>
- D - I - 0x02FA0F 21:B9FF: 13        .byte $13	; <て>
- D - I - 0x02FA10 21:BA00: 32        .byte $32	; <ょ>
- D - I - 0x02FA11 21:BA01: 14        .byte $14	; <と>
- D - I - 0x02FA12 21:BA02: 33        .byte $33	; <0>
- D - I - 0x02FA13 21:BA03: 18        .byte $18	; <ね>
- D - I - 0x02FA14 21:BA04: 16        .byte $16	; <に>

- D - I - 0x02FA15 21:BA05: 38        .byte $38	; <5>
- D - I - 0x02FA16 21:BA06: 06        .byte $06	; <か>
- D - I - 0x02FA17 21:BA07: 00        .byte $00
- D - I - 0x02FA18 21:BA08: 04        .byte $04	; <え>
- D - I - 0x02FA19 21:BA09: 04        .byte $04	; <え>
- D - I - 0x02FA1A 21:BA0A: 05        .byte $05	; <お>
- D - I - 0x02FA1B 21:BA0B: 08        .byte $08	; <く>
- D - I - 0x02FA1C 21:BA0C: 2C        .byte $2C	; <わ>
- D - I - 0x02FA1D 21:BA0D: 0A        .byte $0A	; <こ>
- D - I - 0x02FA1E 21:BA0E: 11        .byte $11	; <ち>
- D - I - 0x02FA1F 21:BA0F: 0C        .byte $0C	; <し>
- D - I - 0x02FA20 21:BA10: 2D        .byte $2D	; <を>
- D - I - 0x02FA21 21:BA11: 10        .byte $10	; <た>
- D - I - 0x02FA22 21:BA12: 38        .byte $38	; <5>
- D - I - 0x02FA23 21:BA13: 14        .byte $14	; <と>
- D - I - 0x02FA24 21:BA14: 39        .byte $39	; <6>
- D - I - 0x02FA25 21:BA15: 18        .byte $18	; <ね>
- D - I - 0x02FA26 21:BA16: 3C        .byte $3C	; <9>

- D - I - 0x02FA27 21:BA17: 01        .byte $01	; <あ>



off_BA18_B5:
- D - I - 0x02FA28 21:BA18: 00        .byte $00
- D - I - 0x02FA29 21:BA19: 19        .byte $19	; <の>
- D - I - 0x02FA2A 21:BA1A: 86        .byte $86	; <F>
- D - I - 0x02FA2B 21:BA1B: 60        .byte $60	; <ミ>

- D - I - 0x02FA2C 21:BA1C: 00        .byte $00
- D - I - 0x02FA2D 21:BA1D: 24        .byte $24	; <や>
- D - I - 0x02FA2E 21:BA1E: 0A        .byte $0A	; <こ>
- D - I - 0x02FA2F 21:BA1F: 48        .byte $48	; <ク>

- D - I - 0x02FA30 21:BA20: 28        .byte $28	; <り>
- D - I - 0x02FA31 21:BA21: 01        .byte $01	; <あ>
- D - I - 0x02FA32 21:BA22: 04        .byte $04	; <え>
- D - I - 0x02FA33 21:BA23: 35        .byte $35	; <2>
- D - I - 0x02FA34 21:BA24: 08        .byte $08	; <く>
- D - I - 0x02FA35 21:BA25: 01        .byte $01	; <あ>
- D - I - 0x02FA36 21:BA26: 0C        .byte $0C	; <し>
- D - I - 0x02FA37 21:BA27: 01        .byte $01	; <あ>
- D - I - 0x02FA38 21:BA28: 10        .byte $10	; <た>
- D - I - 0x02FA39 21:BA29: 01        .byte $01	; <あ>
- D - I - 0x02FA3A 21:BA2A: 14        .byte $14	; <と>
- D - I - 0x02FA3B 21:BA2B: 01        .byte $01	; <あ>
- D - I - 0x02FA3C 21:BA2C: 18        .byte $18	; <ね>
- D - I - 0x02FA3D 21:BA2D: 1F        .byte $1F	; <ま>

- D - I - 0x02FA3E 21:BA2E: 28        .byte $28	; <り>
- D - I - 0x02FA3F 21:BA2F: 02        .byte $02	; <い>
- D - I - 0x02FA40 21:BA30: 04        .byte $04	; <え>
- D - I - 0x02FA41 21:BA31: 41        .byte $41	; <ア>
- D - I - 0x02FA42 21:BA32: 08        .byte $08	; <く>
- D - I - 0x02FA43 21:BA33: 44        .byte $44	; <エ>
- D - I - 0x02FA44 21:BA34: 0D        .byte $0D	; <す>
- D - I - 0x02FA45 21:BA35: 45        .byte $45	; <オ>
- D - I - 0x02FA46 21:BA36: 11        .byte $11	; <ち>
- D - I - 0x02FA47 21:BA37: 50        .byte $50	; <タ>
- D - I - 0x02FA48 21:BA38: 14        .byte $14	; <と>
- D - I - 0x02FA49 21:BA39: 01        .byte $01	; <あ>
- D - I - 0x02FA4A 21:BA3A: 18        .byte $18	; <ね>
- D - I - 0x02FA4B 21:BA3B: 01        .byte $01	; <あ>

- D - I - 0x02FA4C 21:BA3C: 28        .byte $28	; <り>
- D - I - 0x02FA4D 21:BA3D: 03        .byte $03	; <う>
- D - I - 0x02FA4E 21:BA3E: 04        .byte $04	; <え>
- D - I - 0x02FA4F 21:BA3F: 43        .byte $43	; <ウ>
- D - I - 0x02FA50 21:BA40: 08        .byte $08	; <く>
- D - I - 0x02FA51 21:BA41: 46        .byte $46	; <カ>
- D - I - 0x02FA52 21:BA42: 0D        .byte $0D	; <す>
- D - I - 0x02FA53 21:BA43: 47        .byte $47	; <キ>
- D - I - 0x02FA54 21:BA44: 10        .byte $10	; <た>
- D - I - 0x02FA55 21:BA45: 52        .byte $52	; <ツ>
- D - I - 0x02FA56 21:BA46: 14        .byte $14	; <と>
- D - I - 0x02FA57 21:BA47: 53        .byte $53	; <テ>
- D - I - 0x02FA58 21:BA48: 18        .byte $18	; <ね>
- D - I - 0x02FA59 21:BA49: 01        .byte $01	; <あ>

- D - I - 0x02FA5A 21:BA4A: 28        .byte $28	; <り>
- D - I - 0x02FA5B 21:BA4B: 04        .byte $04	; <え>
- D - I - 0x02FA5C 21:BA4C: 04        .byte $04	; <え>
- D - I - 0x02FA5D 21:BA4D: 49        .byte $49	; <ケ>
- D - I - 0x02FA5E 21:BA4E: 08        .byte $08	; <く>
- D - I - 0x02FA5F 21:BA4F: 4C        .byte $4C	; <シ>
- D - I - 0x02FA60 21:BA50: 0C        .byte $0C	; <し>
- D - I - 0x02FA61 21:BA51: 4D        .byte $4D	; <ス>
- D - I - 0x02FA62 21:BA52: 13        .byte $13	; <て>
- D - I - 0x02FA63 21:BA53: 58        .byte $58	; <ネ>
- D - I - 0x02FA64 21:BA54: 14        .byte $14	; <と>
- D - I - 0x02FA65 21:BA55: 59        .byte $59	; <ノ>
- D - I - 0x02FA66 21:BA56: 18        .byte $18	; <ね>
- D - I - 0x02FA67 21:BA57: 01        .byte $01	; <あ>

- D - I - 0x02FA68 21:BA58: 28        .byte $28	; <り>
- D - I - 0x02FA69 21:BA59: 05        .byte $05	; <お>
- D - I - 0x02FA6A 21:BA5A: 04        .byte $04	; <え>
- D - I - 0x02FA6B 21:BA5B: 4B        .byte $4B	; <サ>
- D - I - 0x02FA6C 21:BA5C: 08        .byte $08	; <く>
- D - I - 0x02FA6D 21:BA5D: 4E        .byte $4E	; <セ>
- D - I - 0x02FA6E 21:BA5E: 0F        .byte $0F	; <そ>
- D - I - 0x02FA6F 21:BA5F: 4F        .byte $4F	; <ソ>
- D - I - 0x02FA70 21:BA60: 13        .byte $13	; <て>
- D - I - 0x02FA71 21:BA61: 5A        .byte $5A	; <ハ>
- D - I - 0x02FA72 21:BA62: 14        .byte $14	; <と>
- D - I - 0x02FA73 21:BA63: 5B        .byte $5B	; <ヒ>
- D - I - 0x02FA74 21:BA64: 18        .byte $18	; <ね>
- D - I - 0x02FA75 21:BA65: 37        .byte $37	; <4>

- D - I - 0x02FA76 21:BA66: 38        .byte $38	; <5>
- D - I - 0x02FA77 21:BA67: 06        .byte $06	; <か>
- D - I - 0x02FA78 21:BA68: 00        .byte $00
- D - I - 0x02FA79 21:BA69: 04        .byte $04	; <え>
- D - I - 0x02FA7A 21:BA6A: 04        .byte $04	; <え>
- D - I - 0x02FA7B 21:BA6B: 05        .byte $05	; <お>
- D - I - 0x02FA7C 21:BA6C: 08        .byte $08	; <く>
- D - I - 0x02FA7D 21:BA6D: 64        .byte $64	; <ヤ>
- D - I - 0x02FA7E 21:BA6E: 0A        .byte $0A	; <こ>
- D - I - 0x02FA7F 21:BA6F: 11        .byte $11	; <ち>
- D - I - 0x02FA80 21:BA70: 0C        .byte $0C	; <し>
- D - I - 0x02FA81 21:BA71: 65        .byte $65	; <ユ>
- D - I - 0x02FA82 21:BA72: 10        .byte $10	; <た>
- D - I - 0x02FA83 21:BA73: 51        .byte $51	; <チ>
- D - I - 0x02FA84 21:BA74: 14        .byte $14	; <と>
- D - I - 0x02FA85 21:BA75: 54        .byte $54	; <ト>
- D - I - 0x02FA86 21:BA76: 18        .byte $18	; <ね>
- D - I - 0x02FA87 21:BA77: 3D        .byte $3D	; <+>

- D - I - 0x02FA88 21:BA78: 00        .byte $00
- D - I - 0x02FA89 21:BA79: 12        .byte $12	; <つ>
- D - I - 0x02FA8A 21:BA7A: 00        .byte $00
- D - I - 0x02FA8B 21:BA7B: 40        .byte $40	; <「>

- D - I - 0x02FA8C 21:BA7C: 00        .byte $00
- D - I - 0x02FA8D 21:BA7D: 22        .byte $22	; <め>
- D - I - 0x02FA8E 21:BA7E: 00        .byte $00
- D - I - 0x02FA8F 21:BA7F: 42        .byte $42	; <イ>

- D - I - 0x02FA90 21:BA80: 01        .byte $01	; <あ>



off_BA81_B6:
- D - I - 0x02FA91 21:BA81: 28        .byte $28	; <り>
- D - I - 0x02FA92 21:BA82: 01        .byte $01	; <あ>
- D - I - 0x02FA93 21:BA83: 06        .byte $06	; <か>
- D - I - 0x02FA94 21:BA84: 02        .byte $02	; <い>
- D - I - 0x02FA95 21:BA85: 0A        .byte $0A	; <こ>
- D - I - 0x02FA96 21:BA86: 03        .byte $03	; <う>
- D - I - 0x02FA97 21:BA87: 0E        .byte $0E	; <せ>
- D - I - 0x02FA98 21:BA88: 06        .byte $06	; <か>
- D - I - 0x02FA99 21:BA89: 12        .byte $12	; <つ>
- D - I - 0x02FA9A 21:BA8A: 07        .byte $07	; <き>
- D - I - 0x02FA9B 21:BA8B: 16        .byte $16	; <に>
- D - I - 0x02FA9C 21:BA8C: 12        .byte $12	; <つ>
- D - I - 0x02FA9D 21:BA8D: 1A        .byte $1A	; <は>
- D - I - 0x02FA9E 21:BA8E: 13        .byte $13	; <て>

- D - I - 0x02FA9F 21:BA8F: 30        .byte $30	; <ゃ>
- D - I - 0x02FAA0 21:BA90: 02        .byte $02	; <い>
- D - I - 0x02FAA1 21:BA91: 06        .byte $06	; <か>
- D - I - 0x02FAA2 21:BA92: 08        .byte $08	; <く>
- D - I - 0x02FAA3 21:BA93: 0A        .byte $0A	; <こ>
- D - I - 0x02FAA4 21:BA94: 09        .byte $09	; <け>
- D - I - 0x02FAA5 21:BA95: 0E        .byte $0E	; <せ>
- D - I - 0x02FAA6 21:BA96: 0C        .byte $0C	; <し>
- D - I - 0x02FAA7 21:BA97: 12        .byte $12	; <つ>
- D - I - 0x02FAA8 21:BA98: 0D        .byte $0D	; <す>
- D - I - 0x02FAA9 21:BA99: 16        .byte $16	; <に>
- D - I - 0x02FAAA 21:BA9A: 18        .byte $18	; <ね>
- D - I - 0x02FAAB 21:BA9B: 18        .byte $18	; <ね>
- D - I - 0x02FAAC 21:BA9C: 19        .byte $19	; <の>
- D - I - 0x02FAAD 21:BA9D: 1A        .byte $1A	; <は>
- D - I - 0x02FAAE 21:BA9E: 1C        .byte $1C	; <ふ>

- D - I - 0x02FAAF 21:BA9F: 28        .byte $28	; <り>
- D - I - 0x02FAB0 21:BAA0: 03        .byte $03	; <う>
- D - I - 0x02FAB1 21:BAA1: 06        .byte $06	; <か>
- D - I - 0x02FAB2 21:BAA2: 0A        .byte $0A	; <こ>
- D - I - 0x02FAB3 21:BAA3: 0A        .byte $0A	; <こ>
- D - I - 0x02FAB4 21:BAA4: 0B        .byte $0B	; <さ>
- D - I - 0x02FAB5 21:BAA5: 0D        .byte $0D	; <す>
- D - I - 0x02FAB6 21:BAA6: 0E        .byte $0E	; <せ>
- D - I - 0x02FAB7 21:BAA7: 11        .byte $11	; <ち>
- D - I - 0x02FAB8 21:BAA8: 0F        .byte $0F	; <そ>
- D - I - 0x02FAB9 21:BAA9: 15        .byte $15	; <な>
- D - I - 0x02FABA 21:BAAA: 1A        .byte $1A	; <は>
- D - I - 0x02FABB 21:BAAB: 18        .byte $18	; <ね>
- D - I - 0x02FABC 21:BAAC: 1B        .byte $1B	; <ひ>

- D - I - 0x02FABD 21:BAAD: 30        .byte $30	; <ゃ>
- D - I - 0x02FABE 21:BAAE: 04        .byte $04	; <え>
- D - I - 0x02FABF 21:BAAF: 05        .byte $05	; <お>
- D - I - 0x02FAC0 21:BAB0: 21        .byte $21	; <む>
- D - I - 0x02FAC1 21:BAB1: 09        .byte $09	; <け>
- D - I - 0x02FAC2 21:BAB2: 24        .byte $24	; <や>
- D - I - 0x02FAC3 21:BAB3: 0D        .byte $0D	; <す>
- D - I - 0x02FAC4 21:BAB4: 25        .byte $25	; <ゆ>
- D - I - 0x02FAC5 21:BAB5: 11        .byte $11	; <ち>
- D - I - 0x02FAC6 21:BAB6: 30        .byte $30	; <ゃ>
- D - I - 0x02FAC7 21:BAB7: 15        .byte $15	; <な>
- D - I - 0x02FAC8 21:BAB8: 1E        .byte $1E	; <ほ>
- D - I - 0x02FAC9 21:BAB9: 14        .byte $14	; <と>
- D - I - 0x02FACA 21:BABA: 31        .byte $31	; <ゅ>
- D - I - 0x02FACB 21:BABB: 18        .byte $18	; <ね>
- D - I - 0x02FACC 21:BABC: 34        .byte $34	; <1>

- D - I - 0x02FACD 21:BABD: 20        .byte $20	; <み>
- D - I - 0x02FACE 21:BABE: 05        .byte $05	; <お>
- D - I - 0x02FACF 21:BABF: 08        .byte $08	; <く>
- D - I - 0x02FAD0 21:BAC0: 26        .byte $26	; <よ>
- D - I - 0x02FAD1 21:BAC1: 0F        .byte $0F	; <そ>
- D - I - 0x02FAD2 21:BAC2: 27        .byte $27	; <ら>
- D - I - 0x02FAD3 21:BAC3: 13        .byte $13	; <て>
- D - I - 0x02FAD4 21:BAC4: 32        .byte $32	; <ょ>
- D - I - 0x02FAD5 21:BAC5: 14        .byte $14	; <と>
- D - I - 0x02FAD6 21:BAC6: 33        .byte $33	; <0>
- D - I - 0x02FAD7 21:BAC7: 18        .byte $18	; <ね>
- D - I - 0x02FAD8 21:BAC8: 36        .byte $36	; <3>

- D - I - 0x02FAD9 21:BAC9: 38        .byte $38	; <5>
- D - I - 0x02FADA 21:BACA: 06        .byte $06	; <か>
- D - I - 0x02FADB 21:BACB: 00        .byte $00
- D - I - 0x02FADC 21:BACC: 04        .byte $04	; <え>
- D - I - 0x02FADD 21:BACD: 04        .byte $04	; <え>
- D - I - 0x02FADE 21:BACE: 05        .byte $05	; <お>
- D - I - 0x02FADF 21:BACF: 08        .byte $08	; <く>
- D - I - 0x02FAE0 21:BAD0: 2C        .byte $2C	; <わ>
- D - I - 0x02FAE1 21:BAD1: 0A        .byte $0A	; <こ>
- D - I - 0x02FAE2 21:BAD2: 10        .byte $10	; <た>
- D - I - 0x02FAE3 21:BAD3: 0C        .byte $0C	; <し>
- D - I - 0x02FAE4 21:BAD4: 2D        .byte $2D	; <を>
- D - I - 0x02FAE5 21:BAD5: 10        .byte $10	; <た>
- D - I - 0x02FAE6 21:BAD6: 38        .byte $38	; <5>
- D - I - 0x02FAE7 21:BAD7: 14        .byte $14	; <と>
- D - I - 0x02FAE8 21:BAD8: 39        .byte $39	; <6>
- D - I - 0x02FAE9 21:BAD9: 18        .byte $18	; <ね>
- D - I - 0x02FAEA 21:BADA: 3C        .byte $3C	; <9>

- D - I - 0x02FAEB 21:BADB: 00        .byte $00
- D - I - 0x02FAEC 21:BADC: 23        .byte $23	; <も>
- D - I - 0x02FAED 21:BADD: 02        .byte $02	; <い>
- D - I - 0x02FAEE 21:BADE: 20        .byte $20	; <み>

- D - I - 0x02FAEF 21:BADF: 01        .byte $01	; <あ>



off_BAE0_B7:
- D - I - 0x02FAF0 21:BAE0: 18        .byte $18	; <ね>
- D - I - 0x02FAF1 21:BAE1: 01        .byte $01	; <あ>
- D - I - 0x02FAF2 21:BAE2: 06        .byte $06	; <か>
- D - I - 0x02FAF3 21:BAE3: 02        .byte $02	; <い>
- D - I - 0x02FAF4 21:BAE4: 0A        .byte $0A	; <こ>
- D - I - 0x02FAF5 21:BAE5: 03        .byte $03	; <う>
- D - I - 0x02FAF6 21:BAE6: 19        .byte $19	; <の>
- D - I - 0x02FAF7 21:BAE7: 27        .byte $27	; <ら>
- D - I - 0x02FAF8 21:BAE8: 81        .byte $81	; <A>
- D - I - 0x02FAF9 21:BAE9: 32        .byte $32	; <ょ>

- D - I - 0x02FAFA 21:BAEA: 28        .byte $28	; <り>
- D - I - 0x02FAFB 21:BAEB: 02        .byte $02	; <い>
- D - I - 0x02FAFC 21:BAEC: 52        .byte $52	; <ツ>
- D - I - 0x02FAFD 21:BAED: 08        .byte $08	; <く>
- D - I - 0x02FAFE 21:BAEE: 56        .byte $56	; <ニ>
- D - I - 0x02FAFF 21:BAEF: 09        .byte $09	; <け>
- D - I - 0x02FB00 21:BAF0: 42        .byte $42	; <イ>
- D - I - 0x02FB01 21:BAF1: 0C        .byte $0C	; <し>
- D - I - 0x02FB02 21:BAF2: 15        .byte $15	; <な>
- D - I - 0x02FB03 21:BAF3: 2C        .byte $2C	; <わ>
- D - I - 0x02FB04 21:BAF4: 19        .byte $19	; <の>
- D - I - 0x02FB05 21:BAF5: 2D        .byte $2D	; <を>
- D - I - 0x02FB06 21:BAF6: 81        .byte $81	; <A>
- D - I - 0x02FB07 21:BAF7: 38        .byte $38	; <5>

- D - I - 0x02FB08 21:BAF8: 28        .byte $28	; <り>
- D - I - 0x02FB09 21:BAF9: 03        .byte $03	; <う>
- D - I - 0x02FB0A 21:BAFA: 05        .byte $05	; <お>
- D - I - 0x02FB0B 21:BAFB: 0A        .byte $0A	; <こ>
- D - I - 0x02FB0C 21:BAFC: 09        .byte $09	; <け>
- D - I - 0x02FB0D 21:BAFD: 0B        .byte $0B	; <さ>
- D - I - 0x02FB0E 21:BAFE: 0D        .byte $0D	; <す>
- D - I - 0x02FB0F 21:BAFF: 0E        .byte $0E	; <せ>
- D - I - 0x02FB10 21:BB00: 11        .byte $11	; <ち>
- D - I - 0x02FB11 21:BB01: 2A        .byte $2A	; <れ>
- D - I - 0x02FB12 21:BB02: 15        .byte $15	; <な>
- D - I - 0x02FB13 21:BB03: 2B        .byte $2B	; <ろ>
- D - I - 0x02FB14 21:BB04: 19        .byte $19	; <の>
- D - I - 0x02FB15 21:BB05: 2E        .byte $2E	; <ん>

- D - I - 0x02FB16 21:BB06: 20        .byte $20	; <み>
- D - I - 0x02FB17 21:BB07: 04        .byte $04	; <え>
- D - I - 0x02FB18 21:BB08: 01        .byte $01	; <あ>
- D - I - 0x02FB19 21:BB09: 24        .byte $24	; <や>
- D - I - 0x02FB1A 21:BB0A: 05        .byte $05	; <お>
- D - I - 0x02FB1B 21:BB0B: 20        .byte $20	; <み>
- D - I - 0x02FB1C 21:BB0C: 09        .byte $09	; <け>
- D - I - 0x02FB1D 21:BB0D: 21        .byte $21	; <む>
- D - I - 0x02FB1E 21:BB0E: 11        .byte $11	; <ち>
- D - I - 0x02FB1F 21:BB0F: 2F        .byte $2F	; <っ>
- D - I - 0x02FB20 21:BB10: 15        .byte $15	; <な>
- D - I - 0x02FB21 21:BB11: 3A        .byte $3A	; <7>

- D - I - 0x02FB22 21:BB12: 10        .byte $10	; <た>
- D - I - 0x02FB23 21:BB13: 05        .byte $05	; <お>
- D - I - 0x02FB24 21:BB14: 69        .byte $69	; <ル>
- D - I - 0x02FB25 21:BB15: 22        .byte $22	; <め>
- D - I - 0x02FB26 21:BB16: 01        .byte $01	; <あ>
- D - I - 0x02FB27 21:BB17: 23        .byte $23	; <も>
- D - I - 0x02FB28 21:BB18: 05        .byte $05	; <お>
- D - I - 0x02FB29 21:BB19: 26        .byte $26	; <よ>

- D - I - 0x02FB2A 21:BB1A: 08        .byte $08	; <く>
- D - I - 0x02FB2B 21:BB1B: 06        .byte $06	; <か>
- D - I - 0x02FB2C 21:BB1C: 69        .byte $69	; <ル>
- D - I - 0x02FB2D 21:BB1D: 28        .byte $28	; <り>
- D - I - 0x02FB2E 21:BB1E: 01        .byte $01	; <あ>
- D - I - 0x02FB2F 21:BB1F: 29        .byte $29	; <る>

- D - I - 0x02FB30 21:BB20: 01        .byte $01	; <あ>



off_BB21_B8:
- D - I - 0x02FB31 21:BB21: 08        .byte $08	; <く>
- D - I - 0x02FB32 21:BB22: 00        .byte $00
- D - I - 0x02FB33 21:BB23: 0E        .byte $0E	; <せ>
- D - I - 0x02FB34 21:BB24: 02        .byte $02	; <い>
- D - I - 0x02FB35 21:BB25: 12        .byte $12	; <つ>
- D - I - 0x02FB36 21:BB26: 03        .byte $03	; <う>

- D - I - 0x02FB37 21:BB27: 10        .byte $10	; <た>
- D - I - 0x02FB38 21:BB28: 01        .byte $01	; <あ>
- D - I - 0x02FB39 21:BB29: 42        .byte $42	; <イ>
- D - I - 0x02FB3A 21:BB2A: 04        .byte $04	; <え>
- D - I - 0x02FB3B 21:BB2B: 46        .byte $46	; <カ>
- D - I - 0x02FB3C 21:BB2C: 05        .byte $05	; <お>
- D - I - 0x02FB3D 21:BB2D: 86        .byte $86	; <F>
- D - I - 0x02FB3E 21:BB2E: 10        .byte $10	; <た>

- D - I - 0x02FB3F 21:BB2F: 10        .byte $10	; <た>
- D - I - 0x02FB40 21:BB30: 02        .byte $02	; <い>
- D - I - 0x02FB41 21:BB31: 0D        .byte $0D	; <す>
- D - I - 0x02FB42 21:BB32: 06        .byte $06	; <か>
- D - I - 0x02FB43 21:BB33: 11        .byte $11	; <ち>
- D - I - 0x02FB44 21:BB34: 07        .byte $07	; <き>
- D - I - 0x02FB45 21:BB35: 15        .byte $15	; <な>
- D - I - 0x02FB46 21:BB36: 0E        .byte $0E	; <せ>

- D - I - 0x02FB47 21:BB37: 08        .byte $08	; <く>
- D - I - 0x02FB48 21:BB38: 03        .byte $03	; <う>
- D - I - 0x02FB49 21:BB39: 0D        .byte $0D	; <す>
- D - I - 0x02FB4A 21:BB3A: 0D        .byte $0D	; <す>
- D - I - 0x02FB4B 21:BB3B: 11        .byte $11	; <ち>
- D - I - 0x02FB4C 21:BB3C: 18        .byte $18	; <ね>

- D - I - 0x02FB4D 21:BB3D: 28        .byte $28	; <り>
- D - I - 0x02FB4E 21:BB3E: 04        .byte $04	; <え>
- D - I - 0x02FB4F 21:BB3F: 05        .byte $05	; <お>
- D - I - 0x02FB50 21:BB40: 0F        .byte $0F	; <そ>
- D - I - 0x02FB51 21:BB41: 09        .byte $09	; <け>
- D - I - 0x02FB52 21:BB42: 1A        .byte $1A	; <は>
- D - I - 0x02FB53 21:BB43: 0D        .byte $0D	; <す>
- D - I - 0x02FB54 21:BB44: 1B        .byte $1B	; <ひ>
- D - I - 0x02FB55 21:BB45: 11        .byte $11	; <ち>
- D - I - 0x02FB56 21:BB46: 1E        .byte $1E	; <ほ>
- D - I - 0x02FB57 21:BB47: 15        .byte $15	; <な>
- D - I - 0x02FB58 21:BB48: 11        .byte $11	; <ち>
- D - I - 0x02FB59 21:BB49: 19        .byte $19	; <の>
- D - I - 0x02FB5A 21:BB4A: 14        .byte $14	; <と>

- D - I - 0x02FB5B 21:BB4B: 28        .byte $28	; <り>
- D - I - 0x02FB5C 21:BB4C: 05        .byte $05	; <お>
- D - I - 0x02FB5D 21:BB4D: 05        .byte $05	; <お>
- D - I - 0x02FB5E 21:BB4E: 25        .byte $25	; <ゆ>
- D - I - 0x02FB5F 21:BB4F: 09        .byte $09	; <け>
- D - I - 0x02FB60 21:BB50: 30        .byte $30	; <ゃ>
- D - I - 0x02FB61 21:BB51: 0D        .byte $0D	; <す>
- D - I - 0x02FB62 21:BB52: 31        .byte $31	; <ゅ>
- D - I - 0x02FB63 21:BB53: 11        .byte $11	; <ち>
- D - I - 0x02FB64 21:BB54: 34        .byte $34	; <1>
- D - I - 0x02FB65 21:BB55: 15        .byte $15	; <な>
- D - I - 0x02FB66 21:BB56: 13        .byte $13	; <て>
- D - I - 0x02FB67 21:BB57: 19        .byte $19	; <の>
- D - I - 0x02FB68 21:BB58: 16        .byte $16	; <に>

- D - I - 0x02FB69 21:BB59: 10        .byte $10	; <た>
- D - I - 0x02FB6A 21:BB5A: 06        .byte $06	; <か>
- D - I - 0x02FB6B 21:BB5B: 05        .byte $05	; <お>
- D - I - 0x02FB6C 21:BB5C: 33        .byte $33	; <0>
- D - I - 0x02FB6D 21:BB5D: 09        .byte $09	; <け>
- D - I - 0x02FB6E 21:BB5E: 36        .byte $36	; <3>
- D - I - 0x02FB6F 21:BB5F: 11        .byte $11	; <ち>
- D - I - 0x02FB70 21:BB60: 12        .byte $12	; <つ>

- D - I - 0x02FB71 21:BB61: 01        .byte $01	; <あ>



off_BB62_B9:
- D - I - 0x02FB72 21:BB62: 18        .byte $18	; <ね>
- D - I - 0x02FB73 21:BB63: 03        .byte $03	; <う>
- D - I - 0x02FB74 21:BB64: 0B        .byte $0B	; <さ>
- D - I - 0x02FB75 21:BB65: DD        .byte $DD
- D - I - 0x02FB76 21:BB66: 0F        .byte $0F	; <そ>
- D - I - 0x02FB77 21:BB67: BD        .byte $BD	; <ゾ>
- D - I - 0x02FB78 21:BB68: 13        .byte $13	; <て>
- D - I - 0x02FB79 21:BB69: 7E        .byte $7E	; <.>
- D - I - 0x02FB7A 21:BB6A: 17        .byte $17	; <ぬ>
- D - I - 0x02FB7B 21:BB6B: BF        .byte $BF	; <ヂ>

- D - I - 0x02FB7C 21:BB6C: 01        .byte $01	; <あ>



off_BB6D_BA:
- D - I - 0x02FB7D 21:BB6D: 10        .byte $10	; <た>
- D - I - 0x02FB7E 21:BB6E: 03        .byte $03	; <う>
- D - I - 0x02FB7F 21:BB6F: 0F        .byte $0F	; <そ>
- D - I - 0x02FB80 21:BB70: 78        .byte $78	; <?>
- D - I - 0x02FB81 21:BB71: 13        .byte $13	; <て>
- D - I - 0x02FB82 21:BB72: 79        .byte $79	; <!>
- D - I - 0x02FB83 21:BB73: 17        .byte $17	; <ぬ>
- D - I - 0x02FB84 21:BB74: BE        .byte $BE	; <ダ>

- D - I - 0x02FB85 21:BB75: 08        .byte $08	; <く>
- D - I - 0x02FB86 21:BB76: 04        .byte $04	; <え>
- D - I - 0x02FB87 21:BB77: 0F        .byte $0F	; <そ>
- D - I - 0x02FB88 21:BB78: 7A        .byte $7A	; <、>
- D - I - 0x02FB89 21:BB79: 13        .byte $13	; <て>
- D - I - 0x02FB8A 21:BB7A: 7B        .byte $7B	; <。>

- D - I - 0x02FB8B 21:BB7B: 01        .byte $01	; <あ>



off_BB7C_BB:
- D - I - 0x02FB8C 21:BB7C: 38        .byte $38	; <5>
- D - I - 0x02FB8D 21:BB7D: 04        .byte $04	; <え>
- D - I - 0x02FB8E 21:BB7E: 10        .byte $10	; <た>
- D - I - 0x02FB8F 21:BB7F: 00        .byte $00
- D - I - 0x02FB90 21:BB80: 10        .byte $10	; <た>
- D - I - 0x02FB91 21:BB81: 00        .byte $00
- D - I - 0x02FB92 21:BB82: 10        .byte $10	; <た>
- D - I - 0x02FB93 21:BB83: 00        .byte $00
- D - I - 0x02FB94 21:BB84: 10        .byte $10	; <た>
- D - I - 0x02FB95 21:BB85: 00        .byte $00
- D - I - 0x02FB96 21:BB86: 10        .byte $10	; <た>
- D - I - 0x02FB97 21:BB87: 00        .byte $00
- D - I - 0x02FB98 21:BB88: 10        .byte $10	; <た>
- D - I - 0x02FB99 21:BB89: 00        .byte $00
- D - I - 0x02FB9A 21:BB8A: 10        .byte $10	; <た>
- D - I - 0x02FB9B 21:BB8B: 00        .byte $00
- D - I - 0x02FB9C 21:BB8C: 10        .byte $10	; <た>
- D - I - 0x02FB9D 21:BB8D: 00        .byte $00

- D - I - 0x02FB9E 21:BB8E: 01        .byte $01	; <あ>



off_BB8F_BC:
- D - I - 0x02FB9F 21:BB8F: 10        .byte $10	; <た>
- D - I - 0x02FBA0 21:BB90: 00        .byte $00
- D - I - 0x02FBA1 21:BB91: 00        .byte $00
- D - I - 0x02FBA2 21:BB92: 3C        .byte $3C	; <9>
- D - I - 0x02FBA3 21:BB93: 04        .byte $04	; <え>
- D - I - 0x02FBA4 21:BB94: 3D        .byte $3D	; <+>
- D - I - 0x02FBA5 21:BB95: 08        .byte $08	; <く>
- D - I - 0x02FBA6 21:BB96: BD        .byte $BD	; <ゾ>

- D - I - 0x02FBA7 21:BB97: 10        .byte $10	; <た>
- D - I - 0x02FBA8 21:BB98: 01        .byte $01	; <あ>
- D - I - 0x02FBA9 21:BB99: 00        .byte $00
- D - I - 0x02FBAA 21:BB9A: 3E        .byte $3E	; <Jr>
- D - I - 0x02FBAB 21:BB9B: 04        .byte $04	; <え>
- D - I - 0x02FBAC 21:BB9C: 3F        .byte $3F	; <•>
- D - I - 0x02FBAD 21:BB9D: 08        .byte $08	; <く>
- D - I - 0x02FBAE 21:BB9E: BF        .byte $BF	; <ヂ>

- D - I - 0x02FBAF 21:BB9F: 10        .byte $10	; <た>
- D - I - 0x02FBB0 21:BBA0: 02        .byte $02	; <い>
- D - I - 0x02FBB1 21:BBA1: C4        .byte $C4	; <ビ>
- D - I - 0x02FBB2 21:BBA2: 3C        .byte $3C	; <9>
- D - I - 0x02FBB3 21:BBA3: C8        .byte $C8	; <ぱ>
- D - I - 0x02FBB4 21:BBA4: BC        .byte $BC	; <ゼ>
- D - I - 0x02FBB5 21:BBA5: CC        .byte $CC	; <ぽ>
- D - I - 0x02FBB6 21:BBA6: BD        .byte $BD	; <ゾ>

- D - I - 0x02FBB7 21:BBA7: 28        .byte $28	; <り>
- D - I - 0x02FBB8 21:BBA8: 03        .byte $03	; <う>
- D - I - 0x02FBB9 21:BBA9: 9D        .byte $9D
- D - I - 0x02FBBA 21:BBAA: 30        .byte $30	; <ゃ>
- D - I - 0x02FBBB 21:BBAB: A1        .byte $A1	; <ぎ>
- D - I - 0x02FBBC 21:BBAC: 31        .byte $31	; <ゅ>
- D - I - 0x02FBBD 21:BBAD: B5        .byte $B5	; <ギ>
- D - I - 0x02FBBE 21:BBAE: 34        .byte $34	; <1>
- D - I - 0x02FBBF 21:BBAF: C4        .byte $C4	; <ビ>
- D - I - 0x02FBC0 21:BBB0: 3E        .byte $3E	; <Jr>
- D - I - 0x02FBC1 21:BBB1: C8        .byte $C8	; <ぱ>
- D - I - 0x02FBC2 21:BBB2: BE        .byte $BE	; <ダ>
- D - I - 0x02FBC3 21:BBB3: CC        .byte $CC	; <ぽ>
- D - I - 0x02FBC4 21:BBB4: BF        .byte $BF	; <ヂ>

- D - I - 0x02FBC5 21:BBB5: 28        .byte $28	; <り>
- D - I - 0x02FBC6 21:BBB6: 04        .byte $04	; <え>
- D - I - 0x02FBC7 21:BBB7: 9D        .byte $9D
- D - I - 0x02FBC8 21:BBB8: 32        .byte $32	; <ょ>
- D - I - 0x02FBC9 21:BBB9: A1        .byte $A1	; <ぎ>
- D - I - 0x02FBCA 21:BBBA: 33        .byte $33	; <0>
- D - I - 0x02FBCB 21:BBBB: B5        .byte $B5	; <ギ>
- D - I - 0x02FBCC 21:BBBC: 36        .byte $36	; <3>
- D - I - 0x02FBCD 21:BBBD: 0C        .byte $0C	; <し>
- D - I - 0x02FBCE 21:BBBE: 37        .byte $37	; <4>
- D - I - 0x02FBCF 21:BBBF: D1        .byte $D1	; <ポ>
- D - I - 0x02FBD0 21:BBC0: 2C        .byte $2C	; <わ>
- D - I - 0x02FBD1 21:BBC1: D5        .byte $D5
- D - I - 0x02FBD2 21:BBC2: 2D        .byte $2D	; <を>

- D - I - 0x02FBD3 21:BBC3: 10        .byte $10	; <た>
- D - I - 0x02FBD4 21:BBC4: 05        .byte $05	; <お>
- D - I - 0x02FBD5 21:BBC5: 9D        .byte $9D
- D - I - 0x02FBD6 21:BBC6: 35        .byte $35	; <2>
- D - I - 0x02FBD7 21:BBC7: D1        .byte $D1	; <ポ>
- D - I - 0x02FBD8 21:BBC8: 2E        .byte $2E	; <ん>
- D - I - 0x02FBD9 21:BBC9: D5        .byte $D5
- D - I - 0x02FBDA 21:BBCA: 2F        .byte $2F	; <っ>

- D - I - 0x02FBDB 21:BBCB: 08        .byte $08	; <く>
- D - I - 0x02FBDC 21:BBCC: 06        .byte $06	; <か>
- D - I - 0x02FBDD 21:BBCD: 00        .byte $00
- D - I - 0x02FBDE 21:BBCE: 38        .byte $38	; <5>
- D - I - 0x02FBDF 21:BBCF: 04        .byte $04	; <え>
- D - I - 0x02FBE0 21:BBD0: 39        .byte $39	; <6>

- D - I - 0x02FBE1 21:BBD1: 08        .byte $08	; <く>
- D - I - 0x02FBE2 21:BBD2: 07        .byte $07	; <き>
- D - I - 0x02FBE3 21:BBD3: 00        .byte $00
- D - I - 0x02FBE4 21:BBD4: 3A        .byte $3A	; <7>
- D - I - 0x02FBE5 21:BBD5: 04        .byte $04	; <え>
- D - I - 0x02FBE6 21:BBD6: 3B        .byte $3B	; <8>

- D - I - 0x02FBE7 21:BBD7: 01        .byte $01	; <あ>



off_BBD8_BD:
- D - I - 0x02FBE8 21:BBD8: 08        .byte $08	; <く>
- D - I - 0x02FBE9 21:BBD9: 00        .byte $00
- D - I - 0x02FBEA 21:BBDA: 10        .byte $10	; <た>
- D - I - 0x02FBEB 21:BBDB: 3C        .byte $3C	; <9>
- D - I - 0x02FBEC 21:BBDC: 14        .byte $14	; <と>
- D - I - 0x02FBED 21:BBDD: BD        .byte $BD	; <ゾ>

- D - I - 0x02FBEE 21:BBDE: 08        .byte $08	; <く>
- D - I - 0x02FBEF 21:BBDF: 01        .byte $01	; <あ>
- D - I - 0x02FBF0 21:BBE0: 10        .byte $10	; <た>
- D - I - 0x02FBF1 21:BBE1: 3E        .byte $3E	; <Jr>
- D - I - 0x02FBF2 21:BBE2: 14        .byte $14	; <と>
- D - I - 0x02FBF3 21:BBE3: BF        .byte $BF	; <ヂ>

- D - I - 0x02FBF4 21:BBE4: 30        .byte $30	; <ゃ>
- D - I - 0x02FBF5 21:BBE5: 02        .byte $02	; <い>
- D - I - 0x02FBF6 21:BBE6: 00        .byte $00
- D - I - 0x02FBF7 21:BBE7: 79        .byte $79	; <!>
- D - I - 0x02FBF8 21:BBE8: 04        .byte $04	; <え>
- D - I - 0x02FBF9 21:BBE9: 7C        .byte $7C	; <~>
- D - I - 0x02FBFA 21:BBEA: 08        .byte $08	; <く>
- D - I - 0x02FBFB 21:BBEB: 7D        .byte $7D	; <ー>
- D - I - 0x02FBFC 21:BBEC: C0        .byte $C0	; <ヅ>
- D - I - 0x02FBFD 21:BBED: 3C        .byte $3C	; <9>
- D - I - 0x02FBFE 21:BBEE: C4        .byte $C4	; <ビ>
- D - I - 0x02FBFF 21:BBEF: 3D        .byte $3D	; <+>
- D - I - 0x02FC00 21:BBF0: C8        .byte $C8	; <ぱ>
- D - I - 0x02FC01 21:BBF1: 3D        .byte $3D	; <+>
- D - I - 0x02FC02 21:BBF2: CC        .byte $CC	; <ぽ>
- D - I - 0x02FC03 21:BBF3: BD        .byte $BD	; <ゾ>

- D - I - 0x02FC04 21:BBF4: 38        .byte $38	; <5>
- D - I - 0x02FC05 21:BBF5: 03        .byte $03	; <う>
- D - I - 0x02FC06 21:BBF6: 68        .byte $68	; <リ>
- D - I - 0x02FC07 21:BBF7: 7A        .byte $7A	; <、>
- D - I - 0x02FC08 21:BBF8: 00        .byte $00
- D - I - 0x02FC09 21:BBF9: 7B        .byte $7B	; <。>
- D - I - 0x02FC0A 21:BBFA: 04        .byte $04	; <え>
- D - I - 0x02FC0B 21:BBFB: 7E        .byte $7E	; <.>
- D - I - 0x02FC0C 21:BBFC: 08        .byte $08	; <く>
- D - I - 0x02FC0D 21:BBFD: 7F        .byte $7F	; <,>
- D - I - 0x02FC0E 21:BBFE: C0        .byte $C0	; <ヅ>
- D - I - 0x02FC0F 21:BBFF: 3E        .byte $3E	; <Jr>
- D - I - 0x02FC10 21:BC00: C4        .byte $C4	; <ビ>
- D - I - 0x02FC11 21:BC01: BE        .byte $BE	; <ダ>
- D - I - 0x02FC12 21:BC02: C8        .byte $C8	; <ぱ>
- D - I - 0x02FC13 21:BC03: 3F        .byte $3F	; <•>
- D - I - 0x02FC14 21:BC04: CC        .byte $CC	; <ぽ>
- D - I - 0x02FC15 21:BC05: 3F        .byte $3F	; <•>

- D - I - 0x02FC16 21:BC06: 00        .byte $00
- D - I - 0x02FC17 21:BC07: 04        .byte $04	; <え>
- D - I - 0x02FC18 21:BC08: 69        .byte $69	; <ル>
- D - I - 0x02FC19 21:BC09: 78        .byte $78	; <?>

- D - I - 0x02FC1A 21:BC0A: 01        .byte $01	; <あ>



off_BC0B_BE:
- D - I - 0x02FC1B 21:BC0B: 08        .byte $08	; <く>
- D - I - 0x02FC1C 21:BC0C: 00        .byte $00
- D - I - 0x02FC1D 21:BC0D: D4        .byte $D4
- D - I - 0x02FC1E 21:BC0E: 3C        .byte $3C	; <9>
- D - I - 0x02FC1F 21:BC0F: D8        .byte $D8
- D - I - 0x02FC20 21:BC10: BD        .byte $BD	; <ゾ>

- D - I - 0x02FC21 21:BC11: 08        .byte $08	; <く>
- D - I - 0x02FC22 21:BC12: 01        .byte $01	; <あ>
- D - I - 0x02FC23 21:BC13: D4        .byte $D4
- D - I - 0x02FC24 21:BC14: 3E        .byte $3E	; <Jr>
- D - I - 0x02FC25 21:BC15: D8        .byte $D8
- D - I - 0x02FC26 21:BC16: BF        .byte $BF	; <ヂ>

- D - I - 0x02FC27 21:BC17: 18        .byte $18	; <ね>
- D - I - 0x02FC28 21:BC18: 02        .byte $02	; <い>
- D - I - 0x02FC29 21:BC19: 08        .byte $08	; <く>
- D - I - 0x02FC2A 21:BC1A: 3C        .byte $3C	; <9>
- D - I - 0x02FC2B 21:BC1B: 0C        .byte $0C	; <し>
- D - I - 0x02FC2C 21:BC1C: 3D        .byte $3D	; <+>
- D - I - 0x02FC2D 21:BC1D: 10        .byte $10	; <た>
- D - I - 0x02FC2E 21:BC1E: BC        .byte $BC	; <ゼ>
- D - I - 0x02FC2F 21:BC1F: 14        .byte $14	; <と>
- D - I - 0x02FC30 21:BC20: BD        .byte $BD	; <ゾ>

- D - I - 0x02FC31 21:BC21: 18        .byte $18	; <ね>
- D - I - 0x02FC32 21:BC22: 03        .byte $03	; <う>
- D - I - 0x02FC33 21:BC23: 08        .byte $08	; <く>
- D - I - 0x02FC34 21:BC24: 3E        .byte $3E	; <Jr>
- D - I - 0x02FC35 21:BC25: 0C        .byte $0C	; <し>
- D - I - 0x02FC36 21:BC26: 3F        .byte $3F	; <•>
- D - I - 0x02FC37 21:BC27: 10        .byte $10	; <た>
- D - I - 0x02FC38 21:BC28: BE        .byte $BE	; <ダ>
- D - I - 0x02FC39 21:BC29: 14        .byte $14	; <と>
- D - I - 0x02FC3A 21:BC2A: BF        .byte $BF	; <ヂ>

- D - I - 0x02FC3B 21:BC2B: 08        .byte $08	; <く>
- D - I - 0x02FC3C 21:BC2C: 04        .byte $04	; <え>
- D - I - 0x02FC3D 21:BC2D: 00        .byte $00
- D - I - 0x02FC3E 21:BC2E: D4        .byte $D4
- D - I - 0x02FC3F 21:BC2F: C4        .byte $C4	; <ビ>
- D - I - 0x02FC40 21:BC30: 37        .byte $37	; <4>

- D - I - 0x02FC41 21:BC31: 10        .byte $10	; <た>
- D - I - 0x02FC42 21:BC32: 06        .byte $06	; <か>
- D - I - 0x02FC43 21:BC33: 18        .byte $18	; <ね>
- D - I - 0x02FC44 21:BC34: 74        .byte $74	; <ィ>
- D - I - 0x02FC45 21:BC35: 80        .byte $80
- D - I - 0x02FC46 21:BC36: 75        .byte $75	; <ェ>
- D - I - 0x02FC47 21:BC37: C0        .byte $C0	; <ヅ>
- D - I - 0x02FC48 21:BC38: 2A        .byte $2A	; <れ>

- D - I - 0x02FC49 21:BC39: 10        .byte $10	; <た>
- D - I - 0x02FC4A 21:BC3A: 07        .byte $07	; <き>
- D - I - 0x02FC4B 21:BC3B: 18        .byte $18	; <ね>
- D - I - 0x02FC4C 21:BC3C: 76        .byte $76	; <ォ>
- D - I - 0x02FC4D 21:BC3D: 80        .byte $80
- D - I - 0x02FC4E 21:BC3E: 77        .byte $77	; <:>
- D - I - 0x02FC4F 21:BC3F: C0        .byte $C0	; <ヅ>
- D - I - 0x02FC50 21:BC40: 2B        .byte $2B	; <ろ>

- D - I - 0x02FC51 21:BC41: 00        .byte $00
- D - I - 0x02FC52 21:BC42: 08        .byte $08	; <く>
- D - I - 0x02FC53 21:BC43: 08        .byte $08	; <く>
- D - I - 0x02FC54 21:BC44: D5        .byte $D5

- D - I - 0x02FC55 21:BC45: 01        .byte $01	; <あ>



off_BC46_BF:
- D - I - 0x02FC56 21:BC46: 10        .byte $10	; <た>
- D - I - 0x02FC57 21:BC47: 00        .byte $00
- D - I - 0x02FC58 21:BC48: 05        .byte $05	; <お>
- D - I - 0x02FC59 21:BC49: 10        .byte $10	; <た>
- D - I - 0x02FC5A 21:BC4A: 09        .byte $09	; <け>
- D - I - 0x02FC5B 21:BC4B: 11        .byte $11	; <ち>
- D - I - 0x02FC5C 21:BC4C: 0D        .byte $0D	; <す>
- D - I - 0x02FC5D 21:BC4D: 14        .byte $14	; <と>

- D - I - 0x02FC5E 21:BC4E: 20        .byte $20	; <み>
- D - I - 0x02FC5F 21:BC4F: 01        .byte $01	; <あ>
- D - I - 0x02FC60 21:BC50: 01        .byte $01	; <あ>
- D - I - 0x02FC61 21:BC51: 15        .byte $15	; <な>
- D - I - 0x02FC62 21:BC52: 05        .byte $05	; <お>
- D - I - 0x02FC63 21:BC53: 12        .byte $12	; <つ>
- D - I - 0x02FC64 21:BC54: 09        .byte $09	; <け>
- D - I - 0x02FC65 21:BC55: 13        .byte $13	; <て>
- D - I - 0x02FC66 21:BC56: 0D        .byte $0D	; <す>
- D - I - 0x02FC67 21:BC57: 16        .byte $16	; <に>
- D - I - 0x02FC68 21:BC58: 11        .byte $11	; <ち>
- D - I - 0x02FC69 21:BC59: 17        .byte $17	; <ぬ>

- D - I - 0x02FC6A 21:BC5A: 20        .byte $20	; <み>
- D - I - 0x02FC6B 21:BC5B: 02        .byte $02	; <い>
- D - I - 0x02FC6C 21:BC5C: 01        .byte $01	; <あ>
- D - I - 0x02FC6D 21:BC5D: 18        .byte $18	; <ね>
- D - I - 0x02FC6E 21:BC5E: 05        .byte $05	; <お>
- D - I - 0x02FC6F 21:BC5F: 19        .byte $19	; <の>
- D - I - 0x02FC70 21:BC60: 09        .byte $09	; <け>
- D - I - 0x02FC71 21:BC61: 1C        .byte $1C	; <ふ>
- D - I - 0x02FC72 21:BC62: 0D        .byte $0D	; <す>
- D - I - 0x02FC73 21:BC63: 1D        .byte $1D	; <へ>
- D - I - 0x02FC74 21:BC64: 11        .byte $11	; <ち>
- D - I - 0x02FC75 21:BC65: 1A        .byte $1A	; <は>

- D - I - 0x02FC76 21:BC66: 20        .byte $20	; <み>
- D - I - 0x02FC77 21:BC67: 03        .byte $03	; <う>
- D - I - 0x02FC78 21:BC68: 01        .byte $01	; <あ>
- D - I - 0x02FC79 21:BC69: 1E        .byte $1E	; <ほ>
- D - I - 0x02FC7A 21:BC6A: 05        .byte $05	; <お>
- D - I - 0x02FC7B 21:BC6B: 30        .byte $30	; <ゃ>
- D - I - 0x02FC7C 21:BC6C: 09        .byte $09	; <け>
- D - I - 0x02FC7D 21:BC6D: 1F        .byte $1F	; <ま>
- D - I - 0x02FC7E 21:BC6E: 0D        .byte $0D	; <す>
- D - I - 0x02FC7F 21:BC6F: 31        .byte $31	; <ゅ>
- D - I - 0x02FC80 21:BC70: 11        .byte $11	; <ち>
- D - I - 0x02FC81 21:BC71: 34        .byte $34	; <1>

- D - I - 0x02FC82 21:BC72: 38        .byte $38	; <5>
- D - I - 0x02FC83 21:BC73: 04        .byte $04	; <え>
- D - I - 0x02FC84 21:BC74: 01        .byte $01	; <あ>
- D - I - 0x02FC85 21:BC75: 27        .byte $27	; <ら>
- D - I - 0x02FC86 21:BC76: 05        .byte $05	; <お>
- D - I - 0x02FC87 21:BC77: 32        .byte $32	; <ょ>
- D - I - 0x02FC88 21:BC78: 09        .byte $09	; <け>
- D - I - 0x02FC89 21:BC79: 33        .byte $33	; <0>
- D - I - 0x02FC8A 21:BC7A: 0D        .byte $0D	; <す>
- D - I - 0x02FC8B 21:BC7B: 3E        .byte $3E	; <Jr>
- D - I - 0x02FC8C 21:BC7C: 0C        .byte $0C	; <し>
- D - I - 0x02FC8D 21:BC7D: 36        .byte $36	; <3>
- D - I - 0x02FC8E 21:BC7E: 10        .byte $10	; <た>
- D - I - 0x02FC8F 21:BC7F: 37        .byte $37	; <4>
- D - I - 0x02FC90 21:BC80: 14        .byte $14	; <と>
- D - I - 0x02FC91 21:BC81: 2D        .byte $2D	; <を>
- D - I - 0x02FC92 21:BC82: 18        .byte $18	; <ね>
- D - I - 0x02FC93 21:BC83: 38        .byte $38	; <5>

- D - I - 0x02FC94 21:BC84: 38        .byte $38	; <5>
- D - I - 0x02FC95 21:BC85: 05        .byte $05	; <お>
- D - I - 0x02FC96 21:BC86: 09        .byte $09	; <け>
- D - I - 0x02FC97 21:BC87: 3F        .byte $3F	; <•>
- D - I - 0x02FC98 21:BC88: 08        .byte $08	; <く>
- D - I - 0x02FC99 21:BC89: 39        .byte $39	; <6>
- D - I - 0x02FC9A 21:BC8A: 0C        .byte $0C	; <し>
- D - I - 0x02FC9B 21:BC8B: 3C        .byte $3C	; <9>
- D - I - 0x02FC9C 21:BC8C: 10        .byte $10	; <た>
- D - I - 0x02FC9D 21:BC8D: 3D        .byte $3D	; <+>
- D - I - 0x02FC9E 21:BC8E: 15        .byte $15	; <な>
- D - I - 0x02FC9F 21:BC8F: 1B        .byte $1B	; <ひ>
- D - I - 0x02FCA0 21:BC90: 14        .byte $14	; <と>
- D - I - 0x02FCA1 21:BC91: 2F        .byte $2F	; <っ>
- D - I - 0x02FCA2 21:BC92: 19        .byte $19	; <の>
- D - I - 0x02FCA3 21:BC93: 35        .byte $35	; <2>
- D - I - 0x02FCA4 21:BC94: 18        .byte $18	; <ね>
- D - I - 0x02FCA5 21:BC95: 3A        .byte $3A	; <7>

- D - I - 0x02FCA6 21:BC96: 00        .byte $00
- D - I - 0x02FCA7 21:BC97: 1F        .byte $1F	; <ま>
- D - I - 0x02FCA8 21:BC98: BA        .byte $BA	; <ジ>
- D - I - 0x02FCA9 21:BC99: 3B        .byte $3B	; <8>

- D - I - 0x02FCAA 21:BC9A: 01        .byte $01	; <あ>



off_BC9B_C0:
- D - I - 0x02FCAB 21:BC9B: 18        .byte $18	; <ね>
- D - I - 0x02FCAC 21:BC9C: 00        .byte $00
- D - I - 0x02FCAD 21:BC9D: 07        .byte $07	; <き>
- D - I - 0x02FCAE 21:BC9E: C3        .byte $C3	; <バ>
- D - I - 0x02FCAF 21:BC9F: 0B        .byte $0B	; <さ>
- D - I - 0x02FCB0 21:BCA0: C6        .byte $C6	; <ベ>
- D - I - 0x02FCB1 21:BCA1: 0F        .byte $0F	; <そ>
- D - I - 0x02FCB2 21:BCA2: C7        .byte $C7	; <ボ>
- D - I - 0x02FCB3 21:BCA3: 13        .byte $13	; <て>
- D - I - 0x02FCB4 21:BCA4: D2        .byte $D2

- D - I - 0x02FCB5 21:BCA5: 28        .byte $28	; <り>
- D - I - 0x02FCB6 21:BCA6: 01        .byte $01	; <あ>
- D - I - 0x02FCB7 21:BCA7: 03        .byte $03	; <う>
- D - I - 0x02FCB8 21:BCA8: 99        .byte $99
- D - I - 0x02FCB9 21:BCA9: 07        .byte $07	; <き>
- D - I - 0x02FCBA 21:BCAA: 9C        .byte $9C
- D - I - 0x02FCBB 21:BCAB: 08        .byte $08	; <く>
- D - I - 0x02FCBC 21:BCAC: 9D        .byte $9D
- D - I - 0x02FCBD 21:BCAD: 0C        .byte $0C	; <し>
- D - I - 0x02FCBE 21:BCAE: C8        .byte $C8	; <ぱ>
- D - I - 0x02FCBF 21:BCAF: 13        .byte $13	; <て>
- D - I - 0x02FCC0 21:BCB0: 01        .byte $01	; <あ>
- D - I - 0x02FCC1 21:BCB1: 17        .byte $17	; <ぬ>
- D - I - 0x02FCC2 21:BCB2: CE        .byte $CE	; <ピ>

- D - I - 0x02FCC3 21:BCB3: 30        .byte $30	; <ゃ>
- D - I - 0x02FCC4 21:BCB4: 02        .byte $02	; <い>
- D - I - 0x02FCC5 21:BCB5: 03        .byte $03	; <う>
- D - I - 0x02FCC6 21:BCB6: 9B        .byte $9B
- D - I - 0x02FCC7 21:BCB7: 04        .byte $04	; <え>
- D - I - 0x02FCC8 21:BCB8: 9E        .byte $9E
- D - I - 0x02FCC9 21:BCB9: 0B        .byte $0B	; <さ>
- D - I - 0x02FCCA 21:BCBA: 9F        .byte $9F
- D - I - 0x02FCCB 21:BCBB: 0F        .byte $0F	; <そ>
- D - I - 0x02FCCC 21:BCBC: CA        .byte $CA	; <ぷ>
- D - I - 0x02FCCD 21:BCBD: 10        .byte $10	; <た>
- D - I - 0x02FCCE 21:BCBE: CB        .byte $CB	; <ぺ>
- D - I - 0x02FCCF 21:BCBF: 17        .byte $17	; <ぬ>
- D - I - 0x02FCD0 21:BCC0: C9        .byte $C9	; <ぴ>
- D - I - 0x02FCD1 21:BCC1: 1B        .byte $1B	; <ひ>
- D - I - 0x02FCD2 21:BCC2: 77        .byte $77	; <:>

- D - I - 0x02FCD3 21:BCC3: 28        .byte $28	; <り>
- D - I - 0x02FCD4 21:BCC4: 03        .byte $03	; <う>
- D - I - 0x02FCD5 21:BCC5: 04        .byte $04	; <え>
- D - I - 0x02FCD6 21:BCC6: 6F        .byte $6F	; <ッ>
- D - I - 0x02FCD7 21:BCC7: 08        .byte $08	; <く>
- D - I - 0x02FCD8 21:BCC8: 7A        .byte $7A	; <、>
- D - I - 0x02FCD9 21:BCC9: 0C        .byte $0C	; <し>
- D - I - 0x02FCDA 21:BCCA: 7B        .byte $7B	; <。>
- D - I - 0x02FCDB 21:BCCB: 10        .byte $10	; <た>
- D - I - 0x02FCDC 21:BCCC: 7E        .byte $7E	; <.>
- D - I - 0x02FCDD 21:BCCD: 17        .byte $17	; <ぬ>
- D - I - 0x02FCDE 21:BCCE: 7F        .byte $7F	; <,>
- D - I - 0x02FCDF 21:BCCF: 1B        .byte $1B	; <ひ>
- D - I - 0x02FCE0 21:BCD0: 7D        .byte $7D	; <ー>

- D - I - 0x02FCE1 21:BCD1: 20        .byte $20	; <み>
- D - I - 0x02FCE2 21:BCD2: 04        .byte $04	; <え>
- D - I - 0x02FCE3 21:BCD3: 04        .byte $04	; <え>
- D - I - 0x02FCE4 21:BCD4: 63        .byte $63	; <モ>
- D - I - 0x02FCE5 21:BCD5: 08        .byte $08	; <く>
- D - I - 0x02FCE6 21:BCD6: 66        .byte $66	; <ヨ>
- D - I - 0x02FCE7 21:BCD7: 0C        .byte $0C	; <し>
- D - I - 0x02FCE8 21:BCD8: 67        .byte $67	; <ラ>
- D - I - 0x02FCE9 21:BCD9: 10        .byte $10	; <た>
- D - I - 0x02FCEA 21:BCDA: 72        .byte $72	; <ョ>
- D - I - 0x02FCEB 21:BCDB: 17        .byte $17	; <ぬ>
- D - I - 0x02FCEC 21:BCDC: 73        .byte $73	; <ヮ>

- D - I - 0x02FCED 21:BCDD: 30        .byte $30	; <ゃ>
- D - I - 0x02FCEE 21:BCDE: 05        .byte $05	; <お>
- D - I - 0x02FCEF 21:BCDF: 01        .byte $01	; <あ>
- D - I - 0x02FCF0 21:BCE0: 68        .byte $68	; <リ>
- D - I - 0x02FCF1 21:BCE1: 05        .byte $05	; <お>
- D - I - 0x02FCF2 21:BCE2: 69        .byte $69	; <ル>
- D - I - 0x02FCF3 21:BCE3: 09        .byte $09	; <け>
- D - I - 0x02FCF4 21:BCE4: 6C        .byte $6C	; <ワ>
- D - I - 0x02FCF5 21:BCE5: 0D        .byte $0D	; <す>
- D - I - 0x02FCF6 21:BCE6: 6D        .byte $6D	; <ヲ>
- D - I - 0x02FCF7 21:BCE7: 11        .byte $11	; <ち>
- D - I - 0x02FCF8 21:BCE8: 78        .byte $78	; <?>
- D - I - 0x02FCF9 21:BCE9: 15        .byte $15	; <な>
- D - I - 0x02FCFA 21:BCEA: 79        .byte $79	; <!>
- D - I - 0x02FCFB 21:BCEB: 19        .byte $19	; <の>
- D - I - 0x02FCFC 21:BCEC: 7C        .byte $7C	; <~>

- D - I - 0x02FCFD 21:BCED: 38        .byte $38	; <5>
- D - I - 0x02FCFE 21:BCEE: 06        .byte $06	; <か>
- D - I - 0x02FCFF 21:BCEF: 01        .byte $01	; <あ>
- D - I - 0x02FD00 21:BCF0: 6A        .byte $6A	; <レ>
- D - I - 0x02FD01 21:BCF1: 05        .byte $05	; <お>
- D - I - 0x02FD02 21:BCF2: 6B        .byte $6B	; <ロ>
- D - I - 0x02FD03 21:BCF3: 09        .byte $09	; <け>
- D - I - 0x02FD04 21:BCF4: 6E        .byte $6E	; <ン>
- D - I - 0x02FD05 21:BCF5: 0D        .byte $0D	; <す>
- D - I - 0x02FD06 21:BCF6: 2F        .byte $2F	; <っ>
- D - I - 0x02FD07 21:BCF7: 11        .byte $11	; <ち>
- D - I - 0x02FD08 21:BCF8: 3A        .byte $3A	; <7>
- D - I - 0x02FD09 21:BCF9: 15        .byte $15	; <な>
- D - I - 0x02FD0A 21:BCFA: 3B        .byte $3B	; <8>
- D - I - 0x02FD0B 21:BCFB: 19        .byte $19	; <の>
- D - I - 0x02FD0C 21:BCFC: 3E        .byte $3E	; <Jr>
- D - I - 0x02FD0D 21:BCFD: 81        .byte $81	; <A>
- D - I - 0x02FD0E 21:BCFE: 76        .byte $76	; <ォ>

- D - I - 0x02FD0F 21:BCFF: 01        .byte $01	; <あ>



off_BD00_C1:
- D - I - 0x02FD10 21:BD00: 38        .byte $38	; <5>
- D - I - 0x02FD11 21:BD01: 03        .byte $03	; <う>
- D - I - 0x02FD12 21:BD02: B5        .byte $B5	; <ギ>
- D - I - 0x02FD13 21:BD03: 1A        .byte $1A	; <は>
- D - I - 0x02FD14 21:BD04: 69        .byte $69	; <ル>
- D - I - 0x02FD15 21:BD05: 1B        .byte $1B	; <ひ>
- D - I - 0x02FD16 21:BD06: 01        .byte $01	; <あ>
- D - I - 0x02FD17 21:BD07: 1E        .byte $1E	; <ほ>
- D - I - 0x02FD18 21:BD08: 05        .byte $05	; <お>
- D - I - 0x02FD19 21:BD09: 1F        .byte $1F	; <ま>
- D - I - 0x02FD1A 21:BD0A: 15        .byte $15	; <な>
- D - I - 0x02FD1B 21:BD0B: 18        .byte $18	; <ね>
- D - I - 0x02FD1C 21:BD0C: 19        .byte $19	; <の>
- D - I - 0x02FD1D 21:BD0D: 19        .byte $19	; <の>
- D - I - 0x02FD1E 21:BD0E: 81        .byte $81	; <A>
- D - I - 0x02FD1F 21:BD0F: 1C        .byte $1C	; <ふ>
- D - I - 0x02FD20 21:BD10: C1        .byte $C1	; <デ>
- D - I - 0x02FD21 21:BD11: 1D        .byte $1D	; <へ>

- D - I - 0x02FD22 21:BD12: 28        .byte $28	; <り>
- D - I - 0x02FD23 21:BD13: 04        .byte $04	; <え>
- D - I - 0x02FD24 21:BD14: 69        .byte $69	; <ル>
- D - I - 0x02FD25 21:BD15: 30        .byte $30	; <ゃ>
- D - I - 0x02FD26 21:BD16: 01        .byte $01	; <あ>
- D - I - 0x02FD27 21:BD17: 31        .byte $31	; <ゅ>
- D - I - 0x02FD28 21:BD18: 15        .byte $15	; <な>
- D - I - 0x02FD29 21:BD19: 34        .byte $34	; <1>
- D - I - 0x02FD2A 21:BD1A: 19        .byte $19	; <の>
- D - I - 0x02FD2B 21:BD1B: 35        .byte $35	; <2>
- D - I - 0x02FD2C 21:BD1C: 81        .byte $81	; <A>
- D - I - 0x02FD2D 21:BD1D: 37        .byte $37	; <4>
- D - I - 0x02FD2E 21:BD1E: C1        .byte $C1	; <デ>
- D - I - 0x02FD2F 21:BD1F: 22        .byte $22	; <め>

- D - I - 0x02FD30 21:BD20: 28        .byte $28	; <り>
- D - I - 0x02FD31 21:BD21: 05        .byte $05	; <お>
- D - I - 0x02FD32 21:BD22: 69        .byte $69	; <ル>
- D - I - 0x02FD33 21:BD23: 32        .byte $32	; <ょ>
- D - I - 0x02FD34 21:BD24: 01        .byte $01	; <あ>
- D - I - 0x02FD35 21:BD25: 33        .byte $33	; <0>
- D - I - 0x02FD36 21:BD26: 05        .byte $05	; <お>
- D - I - 0x02FD37 21:BD27: 36        .byte $36	; <3>
- D - I - 0x02FD38 21:BD28: 19        .byte $19	; <の>
- D - I - 0x02FD39 21:BD29: 2B        .byte $2B	; <ろ>
- D - I - 0x02FD3A 21:BD2A: 81        .byte $81	; <A>
- D - I - 0x02FD3B 21:BD2B: 2E        .byte $2E	; <ん>
- D - I - 0x02FD3C 21:BD2C: C1        .byte $C1	; <デ>
- D - I - 0x02FD3D 21:BD2D: 2F        .byte $2F	; <っ>

- D - I - 0x02FD3E 21:BD2E: 01        .byte $01	; <あ>



off_BD2F_C2:
- D - I - 0x02FD3F 21:BD2F: 10        .byte $10	; <た>
- D - I - 0x02FD40 21:BD30: 03        .byte $03	; <う>
- D - I - 0x02FD41 21:BD31: 19        .byte $19	; <の>
- D - I - 0x02FD42 21:BD32: 2A        .byte $2A	; <れ>
- D - I - 0x02FD43 21:BD33: 81        .byte $81	; <A>
- D - I - 0x02FD44 21:BD34: 14        .byte $14	; <と>
- D - I - 0x02FD45 21:BD35: C1        .byte $C1	; <デ>
- D - I - 0x02FD46 21:BD36: 15        .byte $15	; <な>

- D - I - 0x02FD47 21:BD37: 38        .byte $38	; <5>
- D - I - 0x02FD48 21:BD38: 04        .byte $04	; <え>
- D - I - 0x02FD49 21:BD39: B5        .byte $B5	; <ギ>
- D - I - 0x02FD4A 21:BD3A: 20        .byte $20	; <み>
- D - I - 0x02FD4B 21:BD3B: 69        .byte $69	; <ル>
- D - I - 0x02FD4C 21:BD3C: 21        .byte $21	; <む>
- D - I - 0x02FD4D 21:BD3D: 01        .byte $01	; <あ>
- D - I - 0x02FD4E 21:BD3E: 24        .byte $24	; <や>
- D - I - 0x02FD4F 21:BD3F: 05        .byte $05	; <お>
- D - I - 0x02FD50 21:BD40: 25        .byte $25	; <ゆ>
- D - I - 0x02FD51 21:BD41: 11        .byte $11	; <ち>
- D - I - 0x02FD52 21:BD42: 28        .byte $28	; <り>
- D - I - 0x02FD53 21:BD43: 15        .byte $15	; <な>
- D - I - 0x02FD54 21:BD44: 29        .byte $29	; <る>
- D - I - 0x02FD55 21:BD45: 19        .byte $19	; <の>
- D - I - 0x02FD56 21:BD46: 2C        .byte $2C	; <わ>
- D - I - 0x02FD57 21:BD47: 81        .byte $81	; <A>
- D - I - 0x02FD58 21:BD48: 2D        .byte $2D	; <を>

- D - I - 0x02FD59 21:BD49: 28        .byte $28	; <り>
- D - I - 0x02FD5A 21:BD4A: 05        .byte $05	; <お>
- D - I - 0x02FD5B 21:BD4B: 69        .byte $69	; <ル>
- D - I - 0x02FD5C 21:BD4C: 23        .byte $23	; <も>
- D - I - 0x02FD5D 21:BD4D: 01        .byte $01	; <あ>
- D - I - 0x02FD5E 21:BD4E: 26        .byte $26	; <よ>
- D - I - 0x02FD5F 21:BD4F: 05        .byte $05	; <お>
- D - I - 0x02FD60 21:BD50: 36        .byte $36	; <3>
- D - I - 0x02FD61 21:BD51: 19        .byte $19	; <の>
- D - I - 0x02FD62 21:BD52: 2B        .byte $2B	; <ろ>
- D - I - 0x02FD63 21:BD53: 81        .byte $81	; <A>
- D - I - 0x02FD64 21:BD54: 2E        .byte $2E	; <ん>
- D - I - 0x02FD65 21:BD55: C1        .byte $C1	; <デ>
- D - I - 0x02FD66 21:BD56: 2F        .byte $2F	; <っ>

- D - I - 0x02FD67 21:BD57: 01        .byte $01	; <あ>



off_BD58_C3:
- D - I - 0x02FD68 21:BD58: 00        .byte $00
- D - I - 0x02FD69 21:BD59: 08        .byte $08	; <く>
- D - I - 0x02FD6A 21:BD5A: B7        .byte $B7	; <ゲ>
- D - I - 0x02FD6B 21:BD5B: DF        .byte $DF

- D - I - 0x02FD6C 21:BD5C: 10        .byte $10	; <た>
- D - I - 0x02FD6D 21:BD5D: 09        .byte $09	; <け>
- D - I - 0x02FD6E 21:BD5E: A3        .byte $A3	; <げ>
- D - I - 0x02FD6F 21:BD5F: F1        .byte $F1
- D - I - 0x02FD70 21:BD60: B7        .byte $B7	; <ゲ>
- D - I - 0x02FD71 21:BD61: F4        .byte $F4
- D - I - 0x02FD72 21:BD62: 6B        .byte $6B	; <ロ>
- D - I - 0x02FD73 21:BD63: F5        .byte $F5

- D - I - 0x02FD74 21:BD64: 02        .byte $02	; <い>
- D - I - 0x02FD75 21:BD65: 4F 97     .word off_974F



off_BD67_C4:
- D - I - 0x02FD77 21:BD67: 10        .byte $10	; <た>
- D - I - 0x02FD78 21:BD68: 03        .byte $03	; <う>
- D - I - 0x02FD79 21:BD69: 0F        .byte $0F	; <そ>
- D - I - 0x02FD7A 21:BD6A: 37        .byte $37	; <4>
- D - I - 0x02FD7B 21:BD6B: 13        .byte $13	; <て>
- D - I - 0x02FD7C 21:BD6C: 62        .byte $62	; <メ>
- D - I - 0x02FD7D 21:BD6D: 17        .byte $17	; <ぬ>
- D - I - 0x02FD7E 21:BD6E: CF        .byte $CF	; <プ>

- D - I - 0x02FD7F 21:BD6F: 10        .byte $10	; <た>
- D - I - 0x02FD80 21:BD70: 04        .byte $04	; <え>
- D - I - 0x02FD81 21:BD71: 0F        .byte $0F	; <そ>
- D - I - 0x02FD82 21:BD72: 3D        .byte $3D	; <+>
- D - I - 0x02FD83 21:BD73: 13        .byte $13	; <て>
- D - I - 0x02FD84 21:BD74: 68        .byte $68	; <リ>
- D - I - 0x02FD85 21:BD75: 17        .byte $17	; <ぬ>
- D - I - 0x02FD86 21:BD76: 69        .byte $69	; <ル>

- D - I - 0x02FD87 21:BD77: 08        .byte $08	; <く>
- D - I - 0x02FD88 21:BD78: 05        .byte $05	; <お>
- D - I - 0x02FD89 21:BD79: 0F        .byte $0F	; <そ>
- D - I - 0x02FD8A 21:BD7A: 3F        .byte $3F	; <•>
- D - I - 0x02FD8B 21:BD7B: 13        .byte $13	; <て>
- D - I - 0x02FD8C 21:BD7C: 6A        .byte $6A	; <レ>

- D - I - 0x02FD8D 21:BD7D: 01        .byte $01	; <あ>



off_BD7E_C5:
- D - I - 0x02FD8E 21:BD7E: 00        .byte $00
- D - I - 0x02FD8F 21:BD7F: 04        .byte $04	; <え>
- D - I - 0x02FD90 21:BD80: 17        .byte $17	; <ぬ>
- D - I - 0x02FD91 21:BD81: 57        .byte $57	; <ヌ>

- D - I - 0x02FD92 21:BD82: 00        .byte $00
- D - I - 0x02FD93 21:BD83: 05        .byte $05	; <お>
- D - I - 0x02FD94 21:BD84: 1B        .byte $1B	; <ひ>
- D - I - 0x02FD95 21:BD85: 5D        .byte $5D	; <ヘ>

- D - I - 0x02FD96 21:BD86: 00        .byte $00
- D - I - 0x02FD97 21:BD87: 06        .byte $06	; <か>
- D - I - 0x02FD98 21:BD88: 1B        .byte $1B	; <ひ>
- D - I - 0x02FD99 21:BD89: 5F        .byte $5F	; <マ>
; продолжение


off_BD8A:
- D - I - 0x02FD9A 21:BD8A: 00        .byte $00
- D - I - 0x02FD9B 21:BD8B: 04        .byte $04	; <え>
- D - I - 0x02FD9C 21:BD8C: 13        .byte $13	; <て>
- D - I - 0x02FD9D 21:BD8D: F6        .byte $F6

- D - I - 0x02FD9E 21:BD8E: 00        .byte $00
- D - I - 0x02FD9F 21:BD8F: 05        .byte $05	; <お>
- D - I - 0x02FDA0 21:BD90: 17        .byte $17	; <ぬ>
- D - I - 0x02FDA1 21:BD91: F7        .byte $F7

- D - I - 0x02FDA2 21:BD92: 08        .byte $08	; <く>
- D - I - 0x02FDA3 21:BD93: 06        .byte $06	; <か>
- D - I - 0x02FDA4 21:BD94: 13        .byte $13	; <て>
- D - I - 0x02FDA5 21:BD95: FC        .byte $FC
- D - I - 0x02FDA6 21:BD96: 17        .byte $17	; <ぬ>
- D - I - 0x02FDA7 21:BD97: FD        .byte $FD

- D - I - 0x02FDA8 21:BD98: 08        .byte $08	; <く>
- D - I - 0x02FDA9 21:BD99: 07        .byte $07	; <き>
- D - I - 0x02FDAA 21:BD9A: 13        .byte $13	; <て>
- D - I - 0x02FDAB 21:BD9B: 71        .byte $71	; <ュ>
- D - I - 0x02FDAC 21:BD9C: 17        .byte $17	; <ぬ>
- D - I - 0x02FDAD 21:BD9D: 74        .byte $74	; <ィ>

- D - I - 0x02FDAE 21:BD9E: 02        .byte $02	; <い>
- D - I - 0x02FDAF 21:BD9F: 59 AB     .word off_AB59



off_BDA1_C6:
- - - - - 0x02FDB1 21:BDA1: 08        .byte $08	; <く>
- - - - - 0x02FDB2 21:BDA2: 04        .byte $04	; <え>
- - - - - 0x02FDB3 21:BDA3: 17        .byte $17	; <ぬ>
- - - - - 0x02FDB4 21:BDA4: 70        .byte $70	; <ャ>
- - - - - 0x02FDB5 21:BDA5: 1B        .byte $1B	; <ひ>
- - - - - 0x02FDB6 21:BDA6: 75        .byte $75	; <ェ>

- - - - - 0x02FDB7 21:BDA7: 00        .byte $00
- - - - - 0x02FDB8 21:BDA8: 05        .byte $05	; <お>
- - - - - 0x02FDB9 21:BDA9: 1B        .byte $1B	; <ひ>
- - - - - 0x02FDBA 21:BDAA: 77        .byte $77	; <:>
; продолжение


off_BDAB:
- - - - - 0x02FDBB 21:BDAB: 00        .byte $00
- - - - - 0x02FDBC 21:BDAC: 06        .byte $06	; <か>
- - - - - 0x02FDBD 21:BDAD: 1B        .byte $1B	; <ひ>
- - - - - 0x02FDBE 21:BDAE: 4F        .byte $4F	; <ソ>

- - - - - 0x02FDBF 21:BDAF: 02        .byte $02	; <い>
- - - - - 0x02FDC0 21:BDB0: 8A BD     .word off_BD8A



off_BDB2_C7:
- - - - - 0x02FDC2 21:BDB2: 08        .byte $08	; <く>
- - - - - 0x02FDC3 21:BDB3: 04        .byte $04	; <え>
- - - - - 0x02FDC4 21:BDB4: 17        .byte $17	; <ぬ>
- - - - - 0x02FDC5 21:BDB5: 67        .byte $67	; <ラ>
- - - - - 0x02FDC6 21:BDB6: 1B        .byte $1B	; <ひ>
- - - - - 0x02FDC7 21:BDB7: 72        .byte $72	; <ョ>

- - - - - 0x02FDC8 21:BDB8: 00        .byte $00
- - - - - 0x02FDC9 21:BDB9: 05        .byte $05	; <お>
- - - - - 0x02FDCA 21:BDBA: 1B        .byte $1B	; <ひ>
- - - - - 0x02FDCB 21:BDBB: 73        .byte $73	; <ヮ>

- - - - - 0x02FDCC 21:BDBC: 02        .byte $02	; <い>
- - - - - 0x02FDCD 21:BDBD: AB BD     .word off_BDAB



off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD:
- D - I - 0x02FDCF 21:BDBF: 00        .byte $00
- D - I - 0x02FDD0 21:BDC0: 04        .byte $04	; <え>
- D - I - 0x02FDD1 21:BDC1: 10        .byte $10	; <た>
- D - I - 0x02FDD2 21:BDC2: 00        .byte $00

- D - I - 0x02FDD3 21:BDC3: 01        .byte $01	; <あ>



off_BDC4_C9:
- D - I - 0x02FDD4 21:BDC4: 08        .byte $08	; <く>
- D - I - 0x02FDD5 21:BDC5: 03        .byte $03	; <う>
- D - I - 0x02FDD6 21:BDC6: 07        .byte $07	; <き>
- D - I - 0x02FDD7 21:BDC7: 74        .byte $74	; <ィ>
- D - I - 0x02FDD8 21:BDC8: 0B        .byte $0B	; <さ>
- D - I - 0x02FDD9 21:BDC9: 73        .byte $73	; <ヮ>

- D - I - 0x02FDDA 21:BDCA: 00        .byte $00
- D - I - 0x02FDDB 21:BDCB: 04        .byte $04	; <え>
- D - I - 0x02FDDC 21:BDCC: 07        .byte $07	; <き>
- D - I - 0x02FDDD 21:BDCD: 76        .byte $76	; <ォ>

- D - I - 0x02FDDE 21:BDCE: 00        .byte $00
- D - I - 0x02FDDF 21:BDCF: 05        .byte $05	; <お>
- D - I - 0x02FDE0 21:BDD0: 0B        .byte $0B	; <さ>
- D - I - 0x02FDE1 21:BDD1: 87        .byte $87	; <G>

- D - I - 0x02FDE2 21:BDD2: 02        .byte $02	; <い>
- D - I - 0x02FDE3 21:BDD3: 8F B7     .word off_B78F



off_BDD5_CA:
- D - I - 0x02FDE5 21:BDD5: 08        .byte $08	; <く>
- D - I - 0x02FDE6 21:BDD6: 03        .byte $03	; <う>
- D - I - 0x02FDE7 21:BDD7: 0F        .byte $0F	; <そ>
- D - I - 0x02FDE8 21:BDD8: F2        .byte $F2
- D - I - 0x02FDE9 21:BDD9: 13        .byte $13	; <て>
- D - I - 0x02FDEA 21:BDDA: F3        .byte $F3

- D - I - 0x02FDEB 21:BDDB: 08        .byte $08	; <く>
- D - I - 0x02FDEC 21:BDDC: 04        .byte $04	; <え>
- D - I - 0x02FDED 21:BDDD: 0F        .byte $0F	; <そ>
- D - I - 0x02FDEE 21:BDDE: F4        .byte $F4
- D - I - 0x02FDEF 21:BDDF: 13        .byte $13	; <て>
- D - I - 0x02FDF0 21:BDE0: F5        .byte $F5

- D - I - 0x02FDF1 21:BDE1: 01        .byte $01	; <あ>



off_BDE2_CB:
- - - - - 0x02FDF2 21:BDE2: 00        .byte $00
- - - - - 0x02FDF3 21:BDE3: 04        .byte $04	; <え>
- - - - - 0x02FDF4 21:BDE4: 13        .byte $13	; <て>
- - - - - 0x02FDF5 21:BDE5: 94        .byte $94

- - - - - 0x02FDF6 21:BDE6: 01        .byte $01	; <あ>



off_BDE7_CC:
- - - - - 0x02FDF7 21:BDE7: 00        .byte $00
- - - - - 0x02FDF8 21:BDE8: 04        .byte $04	; <え>
- - - - - 0x02FDF9 21:BDE9: 13        .byte $13	; <て>
- - - - - 0x02FDFA 21:BDEA: 95        .byte $95

- - - - - 0x02FDFB 21:BDEB: 01        .byte $01	; <あ>



off_BDEC_CE:
- D - I - 0x02FDFC 21:BDEC: 00        .byte $00
- D - I - 0x02FDFD 21:BDED: 01        .byte $01	; <あ>
- D - I - 0x02FDFE 21:BDEE: C7        .byte $C7	; <ボ>
- D - I - 0x02FDFF 21:BDEF: 20        .byte $20	; <み>

- D - I - 0x02FE00 21:BDF0: 08        .byte $08	; <く>
- D - I - 0x02FE01 21:BDF1: 02        .byte $02	; <い>
- D - I - 0x02FE02 21:BDF2: C3        .byte $C3	; <バ>
- D - I - 0x02FE03 21:BDF3: 20        .byte $20	; <み>
- D - I - 0x02FE04 21:BDF4: C7        .byte $C7	; <ボ>
- D - I - 0x02FE05 21:BDF5: 22        .byte $22	; <め>

- D - I - 0x02FE06 21:BDF6: 18        .byte $18	; <ね>
- D - I - 0x02FE07 21:BDF7: 03        .byte $03	; <う>
- D - I - 0x02FE08 21:BDF8: 1B        .byte $1B	; <ひ>
- D - I - 0x02FE09 21:BDF9: 28        .byte $28	; <り>
- D - I - 0x02FE0A 21:BDFA: 83        .byte $83	; <C>
- D - I - 0x02FE0B 21:BDFB: 29        .byte $29	; <る>
- D - I - 0x02FE0C 21:BDFC: C3        .byte $C3	; <バ>
- D - I - 0x02FE0D 21:BDFD: 2C        .byte $2C	; <わ>
- D - I - 0x02FE0E 21:BDFE: C7        .byte $C7	; <ボ>
- D - I - 0x02FE0F 21:BDFF: 2D        .byte $2D	; <を>

- D - I - 0x02FE10 21:BE00: 18        .byte $18	; <ね>
- D - I - 0x02FE11 21:BE01: 04        .byte $04	; <え>
- D - I - 0x02FE12 21:BE02: 1B        .byte $1B	; <ひ>
- D - I - 0x02FE13 21:BE03: 10        .byte $10	; <た>
- D - I - 0x02FE14 21:BE04: 83        .byte $83	; <C>
- D - I - 0x02FE15 21:BE05: 11        .byte $11	; <ち>
- D - I - 0x02FE16 21:BE06: C3        .byte $C3	; <バ>
- D - I - 0x02FE17 21:BE07: 14        .byte $14	; <と>
- D - I - 0x02FE18 21:BE08: C7        .byte $C7	; <ボ>
- D - I - 0x02FE19 21:BE09: 15        .byte $15	; <な>

- D - I - 0x02FE1A 21:BE0A: 08        .byte $08	; <く>
- D - I - 0x02FE1B 21:BE0B: 05        .byte $05	; <お>
- D - I - 0x02FE1C 21:BE0C: 1B        .byte $1B	; <ひ>
- D - I - 0x02FE1D 21:BE0D: 12        .byte $12	; <つ>
- D - I - 0x02FE1E 21:BE0E: 83        .byte $83	; <C>
- D - I - 0x02FE1F 21:BE0F: 15        .byte $15	; <な>

- D - I - 0x02FE20 21:BE10: 18        .byte $18	; <ね>
- D - I - 0x02FE21 21:BE11: 06        .byte $06	; <か>
- D - I - 0x02FE22 21:BE12: 1B        .byte $1B	; <ひ>
- D - I - 0x02FE23 21:BE13: 18        .byte $18	; <ね>
- D - I - 0x02FE24 21:BE14: 83        .byte $83	; <C>
- D - I - 0x02FE25 21:BE15: 19        .byte $19	; <の>
- D - I - 0x02FE26 21:BE16: C3        .byte $C3	; <バ>
- D - I - 0x02FE27 21:BE17: 1C        .byte $1C	; <ふ>
- D - I - 0x02FE28 21:BE18: C7        .byte $C7	; <ボ>
- D - I - 0x02FE29 21:BE19: 1D        .byte $1D	; <へ>

- D - I - 0x02FE2A 21:BE1A: 18        .byte $18	; <ね>
- D - I - 0x02FE2B 21:BE1B: 07        .byte $07	; <き>
- D - I - 0x02FE2C 21:BE1C: 1B        .byte $1B	; <ひ>
- D - I - 0x02FE2D 21:BE1D: 2A        .byte $2A	; <れ>
- D - I - 0x02FE2E 21:BE1E: 83        .byte $83	; <C>
- D - I - 0x02FE2F 21:BE1F: 2B        .byte $2B	; <ろ>
- D - I - 0x02FE30 21:BE20: C3        .byte $C3	; <バ>
- D - I - 0x02FE31 21:BE21: 2E        .byte $2E	; <ん>
- D - I - 0x02FE32 21:BE22: C7        .byte $C7	; <ボ>
- D - I - 0x02FE33 21:BE23: 2F        .byte $2F	; <っ>

- D - I - 0x02FE34 21:BE24: 10        .byte $10	; <た>
- D - I - 0x02FE35 21:BE25: 08        .byte $08	; <く>
- D - I - 0x02FE36 21:BE26: 1B        .byte $1B	; <ひ>
- D - I - 0x02FE37 21:BE27: 34        .byte $34	; <1>
- D - I - 0x02FE38 21:BE28: 83        .byte $83	; <C>
- D - I - 0x02FE39 21:BE29: 35        .byte $35	; <2>
- D - I - 0x02FE3A 21:BE2A: C3        .byte $C3	; <バ>
- D - I - 0x02FE3B 21:BE2B: 15        .byte $15	; <な>

- D - I - 0x02FE3C 21:BE2C: 01        .byte $01	; <あ>



off_BE2D_CF:
- D - I - 0x02FE3D 21:BE2D: 00        .byte $00
- D - I - 0x02FE3E 21:BE2E: 06        .byte $06	; <か>
- D - I - 0x02FE3F 21:BE2F: 13        .byte $13	; <て>
- D - I - 0x02FE40 21:BE30: 1B        .byte $1B	; <ひ>

- D - I - 0x02FE41 21:BE31: 03        .byte $03	; <う>
- D - I - 0x02FE42 21:BE32: 4A BE     .word off_BE4A
- D - I - 0x02FE44 21:BE34: 81 BE     .word off_BE81
- D - I - 0x02FE46 21:BE36: 4A BE     .word off_BE4A
- D - I - 0x02FE48 21:BE38: 4A BE     .word off_BE4A
- D - I - 0x02FE4A 21:BE3A: 90 BE     .word off_BE90
- D - I - 0x02FE4C 21:BE3C: 9F BE     .word off_BE9F
- D - I - 0x02FE4E 21:BE3E: 9F BE     .word off_BE9F
- D - I - 0x02FE50 21:BE40: AE BE     .word off_BEAE
- D - I - 0x02FE52 21:BE42: 9F BE     .word off_BE9F
- D - I - 0x02FE54 21:BE44: C7 BE     .word off_BEC7
- D - I - 0x02FE56 21:BE46: 9F BE     .word off_BE9F
- D - I - 0x02FE58 21:BE48: 9F BE     .word off_BE9F



off_BE4A:
- D - I - 0x02FE5A 21:BE4A: 08        .byte $08	; <く>
- D - I - 0x02FE5B 21:BE4B: 01        .byte $01	; <あ>
- D - I - 0x02FE5C 21:BE4C: 0C        .byte $0C	; <し>
- D - I - 0x02FE5D 21:BE4D: 05        .byte $05	; <お>
- D - I - 0x02FE5E 21:BE4E: 10        .byte $10	; <た>
- D - I - 0x02FE5F 21:BE4F: 10        .byte $10	; <た>

- D - I - 0x02FE60 21:BE50: 08        .byte $08	; <く>
- D - I - 0x02FE61 21:BE51: 02        .byte $02	; <い>
- D - I - 0x02FE62 21:BE52: 0C        .byte $0C	; <し>
- D - I - 0x02FE63 21:BE53: 0D        .byte $0D	; <す>
- D - I - 0x02FE64 21:BE54: 10        .byte $10	; <た>
- D - I - 0x02FE65 21:BE55: 12        .byte $12	; <つ>
; продолжение


off_BE56:
- D - I - 0x02FE66 21:BE56: 00        .byte $00
- D - I - 0x02FE67 21:BE57: 01        .byte $01	; <あ>
- D - I - 0x02FE68 21:BE58: 0D        .byte $0D	; <す>
- D - I - 0x02FE69 21:BE59: 03        .byte $03	; <う>

- D - I - 0x02FE6A 21:BE5A: 08        .byte $08	; <く>
- D - I - 0x02FE6B 21:BE5B: 02        .byte $02	; <い>
- D - I - 0x02FE6C 21:BE5C: 0D        .byte $0D	; <す>
- D - I - 0x02FE6D 21:BE5D: 08        .byte $08	; <く>
- D - I - 0x02FE6E 21:BE5E: 11        .byte $11	; <ち>
- D - I - 0x02FE6F 21:BE5F: 09        .byte $09	; <け>
; продолжение


off_BE60:
- D - I - 0x02FE70 21:BE60: 00        .byte $00
- D - I - 0x02FE71 21:BE61: 01        .byte $01	; <あ>
- D - I - 0x02FE72 21:BE62: 0B        .byte $0B	; <さ>
- D - I - 0x02FE73 21:BE63: 02        .byte $02	; <い>

- D - I - 0x02FE74 21:BE64: 00        .byte $00
- D - I - 0x02FE75 21:BE65: 02        .byte $02	; <い>
- D - I - 0x02FE76 21:BE66: 17        .byte $17	; <ぬ>
- D - I - 0x02FE77 21:BE67: 0C        .byte $0C	; <し>

- D - I - 0x02FE78 21:BE68: 18        .byte $18	; <ね>
- D - I - 0x02FE79 21:BE69: 03        .byte $03	; <う>
- D - I - 0x02FE7A 21:BE6A: 0E        .byte $0E	; <せ>
- D - I - 0x02FE7B 21:BE6B: 0E        .byte $0E	; <せ>
- D - I - 0x02FE7C 21:BE6C: 0D        .byte $0D	; <す>
- D - I - 0x02FE7D 21:BE6D: 0A        .byte $0A	; <こ>
- D - I - 0x02FE7E 21:BE6E: 12        .byte $12	; <つ>
- D - I - 0x02FE7F 21:BE6F: 0F        .byte $0F	; <そ>
- D - I - 0x02FE80 21:BE70: 11        .byte $11	; <ち>
- D - I - 0x02FE81 21:BE71: 0B        .byte $0B	; <さ>

- D - I - 0x02FE82 21:BE72: 08        .byte $08	; <く>
- D - I - 0x02FE83 21:BE73: 04        .byte $04	; <え>
- D - I - 0x02FE84 21:BE74: 0D        .byte $0D	; <す>
- D - I - 0x02FE85 21:BE75: 20        .byte $20	; <み>
- D - I - 0x02FE86 21:BE76: 11        .byte $11	; <ち>
- D - I - 0x02FE87 21:BE77: 21        .byte $21	; <む>

- D - I - 0x02FE88 21:BE78: 00        .byte $00
- D - I - 0x02FE89 21:BE79: 05        .byte $05	; <お>
- D - I - 0x02FE8A 21:BE7A: 0D        .byte $0D	; <す>
- D - I - 0x02FE8B 21:BE7B: 22        .byte $22	; <め>

- D - I - 0x02FE8C 21:BE7C: 00        .byte $00
- D - I - 0x02FE8D 21:BE7D: 06        .byte $06	; <か>
- D - I - 0x02FE8E 21:BE7E: 0D        .byte $0D	; <す>
- D - I - 0x02FE8F 21:BE7F: 28        .byte $28	; <り>

- D - I - 0x02FE90 21:BE80: 01        .byte $01	; <あ>



off_BE81:
- D - I - 0x02FE91 21:BE81: 08        .byte $08	; <く>
- D - I - 0x02FE92 21:BE82: 01        .byte $01	; <あ>
- D - I - 0x02FE93 21:BE83: 0C        .byte $0C	; <し>
- D - I - 0x02FE94 21:BE84: 18        .byte $18	; <ね>
- D - I - 0x02FE95 21:BE85: 10        .byte $10	; <た>
- D - I - 0x02FE96 21:BE86: 19        .byte $19	; <の>

- D - I - 0x02FE97 21:BE87: 08        .byte $08	; <く>
- D - I - 0x02FE98 21:BE88: 02        .byte $02	; <い>
- D - I - 0x02FE99 21:BE89: 0C        .byte $0C	; <し>
- D - I - 0x02FE9A 21:BE8A: 1A        .byte $1A	; <は>
- D - I - 0x02FE9B 21:BE8B: 10        .byte $10	; <た>
- D - I - 0x02FE9C 21:BE8C: 12        .byte $12	; <つ>

- D - I - 0x02FE9D 21:BE8D: 02        .byte $02	; <い>
- D - I - 0x02FE9E 21:BE8E: 56 BE     .word off_BE56



off_BE90:
- D - I - 0x02FEA0 21:BE90: 08        .byte $08	; <く>
- D - I - 0x02FEA1 21:BE91: 01        .byte $01	; <あ>
- D - I - 0x02FEA2 21:BE92: 0C        .byte $0C	; <し>
- D - I - 0x02FEA3 21:BE93: 23        .byte $23	; <も>
- D - I - 0x02FEA4 21:BE94: 10        .byte $10	; <た>
- D - I - 0x02FEA5 21:BE95: 26        .byte $26	; <よ>

- D - I - 0x02FEA6 21:BE96: 08        .byte $08	; <く>
- D - I - 0x02FEA7 21:BE97: 02        .byte $02	; <い>
- D - I - 0x02FEA8 21:BE98: 0C        .byte $0C	; <し>
- D - I - 0x02FEA9 21:BE99: 29        .byte $29	; <る>
- D - I - 0x02FEAA 21:BE9A: 10        .byte $10	; <た>
- D - I - 0x02FEAB 21:BE9B: 2C        .byte $2C	; <わ>

- D - I - 0x02FEAC 21:BE9C: 02        .byte $02	; <い>
- D - I - 0x02FEAD 21:BE9D: 56 BE     .word off_BE56



off_BE9F:
- D - I - 0x02FEAF 21:BE9F: 08        .byte $08	; <く>
- D - I - 0x02FEB0 21:BEA0: 01        .byte $01	; <あ>
- D - I - 0x02FEB1 21:BEA1: 0C        .byte $0C	; <し>
- D - I - 0x02FEB2 21:BEA2: 2A        .byte $2A	; <れ>
- D - I - 0x02FEB3 21:BEA3: 10        .byte $10	; <た>
- D - I - 0x02FEB4 21:BEA4: 2B        .byte $2B	; <ろ>

- D - I - 0x02FEB5 21:BEA5: 08        .byte $08	; <く>
- D - I - 0x02FEB6 21:BEA6: 02        .byte $02	; <い>
- D - I - 0x02FEB7 21:BEA7: 0C        .byte $0C	; <し>
- D - I - 0x02FEB8 21:BEA8: 29        .byte $29	; <る>
- D - I - 0x02FEB9 21:BEA9: 10        .byte $10	; <た>
- D - I - 0x02FEBA 21:BEAA: 12        .byte $12	; <つ>

- D - I - 0x02FEBB 21:BEAB: 02        .byte $02	; <い>
- D - I - 0x02FEBC 21:BEAC: 56 BE     .word off_BE56



off_BEAE:
- D - I - 0x02FEBE 21:BEAE: 08        .byte $08	; <く>
- D - I - 0x02FEBF 21:BEAF: 01        .byte $01	; <あ>
- D - I - 0x02FEC0 21:BEB0: 0C        .byte $0C	; <し>
- D - I - 0x02FEC1 21:BEB1: 05        .byte $05	; <お>
- D - I - 0x02FEC2 21:BEB2: 10        .byte $10	; <た>
- D - I - 0x02FEC3 21:BEB3: 10        .byte $10	; <た>

- D - I - 0x02FEC4 21:BEB4: 08        .byte $08	; <く>
- D - I - 0x02FEC5 21:BEB5: 02        .byte $02	; <い>
- D - I - 0x02FEC6 21:BEB6: 0C        .byte $0C	; <し>
- D - I - 0x02FEC7 21:BEB7: 0D        .byte $0D	; <す>
- D - I - 0x02FEC8 21:BEB8: 10        .byte $10	; <た>
- D - I - 0x02FEC9 21:BEB9: 12        .byte $12	; <つ>
; продолжение


off_BEBA:
- D - I - 0x02FECA 21:BEBA: 00        .byte $00
- D - I - 0x02FECB 21:BEBB: 01        .byte $01	; <あ>
- D - I - 0x02FECC 21:BEBC: 0D        .byte $0D	; <す>
- D - I - 0x02FECD 21:BEBD: 04        .byte $04	; <え>

- D - I - 0x02FECE 21:BEBE: 08        .byte $08	; <く>
- D - I - 0x02FECF 21:BEBF: 02        .byte $02	; <い>
- D - I - 0x02FED0 21:BEC0: 0D        .byte $0D	; <す>
- D - I - 0x02FED1 21:BEC1: 06        .byte $06	; <か>
- D - I - 0x02FED2 21:BEC2: 11        .byte $11	; <ち>
- D - I - 0x02FED3 21:BEC3: 07        .byte $07	; <き>

- D - I - 0x02FED4 21:BEC4: 02        .byte $02	; <い>
- D - I - 0x02FED5 21:BEC5: 60 BE     .word off_BE60



off_BEC7:
- D - I - 0x02FED7 21:BEC7: 08        .byte $08	; <く>
- D - I - 0x02FED8 21:BEC8: 01        .byte $01	; <あ>
- D - I - 0x02FED9 21:BEC9: 0C        .byte $0C	; <し>
- D - I - 0x02FEDA 21:BECA: 24        .byte $24	; <や>
- D - I - 0x02FEDB 21:BECB: 10        .byte $10	; <た>
- D - I - 0x02FEDC 21:BECC: 26        .byte $26	; <よ>

- D - I - 0x02FEDD 21:BECD: 08        .byte $08	; <く>
- D - I - 0x02FEDE 21:BECE: 02        .byte $02	; <い>
- D - I - 0x02FEDF 21:BECF: 0C        .byte $0C	; <し>
- D - I - 0x02FEE0 21:BED0: 1A        .byte $1A	; <は>
- D - I - 0x02FEE1 21:BED1: 10        .byte $10	; <た>
- D - I - 0x02FEE2 21:BED2: 2C        .byte $2C	; <わ>

- D - I - 0x02FEE3 21:BED3: 02        .byte $02	; <い>
- D - I - 0x02FEE4 21:BED4: 56 BE     .word off_BE56



off_BED6_D0:
- D - I - 0x02FEE6 21:BED6: 00        .byte $00
- D - I - 0x02FEE7 21:BED7: 00        .byte $00
- D - I - 0x02FEE8 21:BED8: 03        .byte $03	; <う>
- D - I - 0x02FEE9 21:BED9: 31        .byte $31	; <ゅ>

- D - I - 0x02FEEA 21:BEDA: 03        .byte $03	; <う>
- D - I - 0x02FEEB 21:BEDB: F3 BE     .word off_BEF3
- D - I - 0x02FEED 21:BEDD: 02 BF     .word off_BF02
- D - I - 0x02FEEF 21:BEDF: 11 BF     .word off_BF11
- D - I - 0x02FEF1 21:BEE1: F3 BE     .word off_BEF3
- D - I - 0x02FEF3 21:BEE3: 20 BF     .word off_BF20
- D - I - 0x02FEF5 21:BEE5: 11 BF     .word off_BF11
- D - I - 0x02FEF7 21:BEE7: 11 BF     .word off_BF11
- D - I - 0x02FEF9 21:BEE9: 2F BF     .word off_BF2F
- D - I - 0x02FEFB 21:BEEB: 11 BF     .word off_BF11
- D - I - 0x02FEFD 21:BEED: 3E BF     .word off_BF3E
- D - I - 0x02FEFF 21:BEEF: 11 BF     .word off_BF11
- D - I - 0x02FF01 21:BEF1: 11 BF     .word off_BF11



off_BEF3:
- D - I - 0x02FF03 21:BEF3: 08        .byte $08	; <く>
- D - I - 0x02FF04 21:BEF4: 01        .byte $01	; <あ>
- D - I - 0x02FF05 21:BEF5: 0C        .byte $0C	; <し>
- D - I - 0x02FF06 21:BEF6: 25        .byte $25	; <ゆ>
- D - I - 0x02FF07 21:BEF7: 10        .byte $10	; <た>
- D - I - 0x02FF08 21:BEF8: 30        .byte $30	; <ゃ>

- D - I - 0x02FF09 21:BEF9: 08        .byte $08	; <く>
- D - I - 0x02FF0A 21:BEFA: 02        .byte $02	; <い>
- D - I - 0x02FF0B 21:BEFB: 0C        .byte $0C	; <し>
- D - I - 0x02FF0C 21:BEFC: 27        .byte $27	; <ら>
- D - I - 0x02FF0D 21:BEFD: 10        .byte $10	; <た>
- D - I - 0x02FF0E 21:BEFE: 32        .byte $32	; <ょ>

- D - I - 0x02FF0F 21:BEFF: 02        .byte $02	; <い>
- D - I - 0x02FF10 21:BF00: 56 BE     .word off_BE56



off_BF02:
- D - I - 0x02FF12 21:BF02: 08        .byte $08	; <く>
- D - I - 0x02FF13 21:BF03: 01        .byte $01	; <あ>
- D - I - 0x02FF14 21:BF04: 0C        .byte $0C	; <し>
- D - I - 0x02FF15 21:BF05: 25        .byte $25	; <ゆ>
- D - I - 0x02FF16 21:BF06: 10        .byte $10	; <た>
- D - I - 0x02FF17 21:BF07: 11        .byte $11	; <ち>

- D - I - 0x02FF18 21:BF08: 08        .byte $08	; <く>
- D - I - 0x02FF19 21:BF09: 02        .byte $02	; <い>
- D - I - 0x02FF1A 21:BF0A: 0C        .byte $0C	; <し>
- D - I - 0x02FF1B 21:BF0B: 27        .byte $27	; <ら>
- D - I - 0x02FF1C 21:BF0C: 10        .byte $10	; <た>
- D - I - 0x02FF1D 21:BF0D: 13        .byte $13	; <て>

- D - I - 0x02FF1E 21:BF0E: 02        .byte $02	; <い>
- D - I - 0x02FF1F 21:BF0F: 56 BE     .word off_BE56



off_BF11:
- D - I - 0x02FF21 21:BF11: 08        .byte $08	; <く>
- D - I - 0x02FF22 21:BF12: 01        .byte $01	; <あ>
- D - I - 0x02FF23 21:BF13: 0C        .byte $0C	; <し>
- D - I - 0x02FF24 21:BF14: 2D        .byte $2D	; <を>
- D - I - 0x02FF25 21:BF15: 10        .byte $10	; <た>
- D - I - 0x02FF26 21:BF16: 38        .byte $38	; <5>

- D - I - 0x02FF27 21:BF17: 08        .byte $08	; <く>
- D - I - 0x02FF28 21:BF18: 02        .byte $02	; <い>
- D - I - 0x02FF29 21:BF19: 0C        .byte $0C	; <し>
- D - I - 0x02FF2A 21:BF1A: 27        .byte $27	; <ら>
- D - I - 0x02FF2B 21:BF1B: 10        .byte $10	; <た>
- D - I - 0x02FF2C 21:BF1C: 32        .byte $32	; <ょ>

- D - I - 0x02FF2D 21:BF1D: 02        .byte $02	; <い>
- D - I - 0x02FF2E 21:BF1E: 56 BE     .word off_BE56



off_BF20:
- D - I - 0x02FF30 21:BF20: 08        .byte $08	; <く>
- D - I - 0x02FF31 21:BF21: 01        .byte $01	; <あ>
- D - I - 0x02FF32 21:BF22: 0C        .byte $0C	; <し>
- D - I - 0x02FF33 21:BF23: 2E        .byte $2E	; <ん>
- D - I - 0x02FF34 21:BF24: 10        .byte $10	; <た>
- D - I - 0x02FF35 21:BF25: 38        .byte $38	; <5>

- D - I - 0x02FF36 21:BF26: 08        .byte $08	; <く>
- D - I - 0x02FF37 21:BF27: 02        .byte $02	; <い>
- D - I - 0x02FF38 21:BF28: 0C        .byte $0C	; <し>
- D - I - 0x02FF39 21:BF29: 27        .byte $27	; <ら>
- D - I - 0x02FF3A 21:BF2A: 10        .byte $10	; <た>
- D - I - 0x02FF3B 21:BF2B: 32        .byte $32	; <ょ>

- D - I - 0x02FF3C 21:BF2C: 02        .byte $02	; <い>
- D - I - 0x02FF3D 21:BF2D: 56 BE     .word off_BE56



off_BF2F:
- D - I - 0x02FF3F 21:BF2F: 08        .byte $08	; <く>
- D - I - 0x02FF40 21:BF30: 01        .byte $01	; <あ>
- D - I - 0x02FF41 21:BF31: 0C        .byte $0C	; <し>
- D - I - 0x02FF42 21:BF32: 25        .byte $25	; <ゆ>
- D - I - 0x02FF43 21:BF33: 10        .byte $10	; <た>
- D - I - 0x02FF44 21:BF34: 30        .byte $30	; <ゃ>

- D - I - 0x02FF45 21:BF35: 08        .byte $08	; <く>
- D - I - 0x02FF46 21:BF36: 02        .byte $02	; <い>
- D - I - 0x02FF47 21:BF37: 0C        .byte $0C	; <し>
- D - I - 0x02FF48 21:BF38: 27        .byte $27	; <ら>
- D - I - 0x02FF49 21:BF39: 10        .byte $10	; <た>
- D - I - 0x02FF4A 21:BF3A: 32        .byte $32	; <ょ>

- D - I - 0x02FF4B 21:BF3B: 02        .byte $02	; <い>
- D - I - 0x02FF4C 21:BF3C: BA BE     .word off_BEBA



off_BF3E:
- D - I - 0x02FF4E 21:BF3E: 08        .byte $08	; <く>
- D - I - 0x02FF4F 21:BF3F: 01        .byte $01	; <あ>
- D - I - 0x02FF50 21:BF40: 0C        .byte $0C	; <し>
- D - I - 0x02FF51 21:BF41: 2E        .byte $2E	; <ん>
- D - I - 0x02FF52 21:BF42: 10        .byte $10	; <た>
- D - I - 0x02FF53 21:BF43: 2F        .byte $2F	; <っ>

- D - I - 0x02FF54 21:BF44: 08        .byte $08	; <く>
- D - I - 0x02FF55 21:BF45: 02        .byte $02	; <い>
- D - I - 0x02FF56 21:BF46: 0C        .byte $0C	; <し>
- D - I - 0x02FF57 21:BF47: 27        .byte $27	; <ら>
- D - I - 0x02FF58 21:BF48: 10        .byte $10	; <た>
- D - I - 0x02FF59 21:BF49: 3A        .byte $3A	; <7>

- D - I - 0x02FF5A 21:BF4A: 02        .byte $02	; <い>
- D - I - 0x02FF5B 21:BF4B: 56 BE     .word off_BE56



off_BF4D_D1:
- D - I - 0x02FF5D 21:BF4D: 00        .byte $00
- D - I - 0x02FF5E 21:BF4E: 19        .byte $19	; <の>
- D - I - 0x02FF5F 21:BF4F: 86        .byte $86	; <F>
- D - I - 0x02FF60 21:BF50: 60        .byte $60	; <ミ>

- D - I - 0x02FF61 21:BF51: 00        .byte $00
- D - I - 0x02FF62 21:BF52: 24        .byte $24	; <や>
- D - I - 0x02FF63 21:BF53: 0A        .byte $0A	; <こ>
- D - I - 0x02FF64 21:BF54: 48        .byte $48	; <ク>

- D - I - 0x02FF65 21:BF55: 10        .byte $10	; <た>
- D - I - 0x02FF66 21:BF56: 02        .byte $02	; <い>
- D - I - 0x02FF67 21:BF57: 09        .byte $09	; <け>
- D - I - 0x02FF68 21:BF58: 70        .byte $70	; <ャ>
- D - I - 0x02FF69 21:BF59: 0D        .byte $0D	; <す>
- D - I - 0x02FF6A 21:BF5A: FE        .byte $FE
- D - I - 0x02FF6B 21:BF5B: 11        .byte $11	; <ち>
- D - I - 0x02FF6C 21:BF5C: FD        .byte $FD

- D - I - 0x02FF6D 21:BF5D: 18        .byte $18	; <ね>
- D - I - 0x02FF6E 21:BF5E: 03        .byte $03	; <う>
- D - I - 0x02FF6F 21:BF5F: 05        .byte $05	; <お>
- D - I - 0x02FF70 21:BF60: 66        .byte $66	; <ヨ>
- D - I - 0x02FF71 21:BF61: 09        .byte $09	; <け>
- D - I - 0x02FF72 21:BF62: 94        .byte $94
- D - I - 0x02FF73 21:BF63: 0D        .byte $0D	; <す>
- D - I - 0x02FF74 21:BF64: 95        .byte $95
- D - I - 0x02FF75 21:BF65: 11        .byte $11	; <ち>
- D - I - 0x02FF76 21:BF66: FF        .byte $FF

- D - I - 0x02FF77 21:BF67: 02        .byte $02	; <い>
- D - I - 0x02FF78 21:BF68: 6C B9     .word off_B96C



off_BF6A_D3:
- D - I - 0x02FF7A 21:BF6A: 08        .byte $08	; <く>
- D - I - 0x02FF7B 21:BF6B: 02        .byte $02	; <い>
- D - I - 0x02FF7C 21:BF6C: 0C        .byte $0C	; <し>
- D - I - 0x02FF7D 21:BF6D: 02        .byte $02	; <い>
- D - I - 0x02FF7E 21:BF6E: 10        .byte $10	; <た>
- D - I - 0x02FF7F 21:BF6F: 03        .byte $03	; <う>

- D - I - 0x02FF80 21:BF70: 18        .byte $18	; <ね>
- D - I - 0x02FF81 21:BF71: 03        .byte $03	; <う>
- D - I - 0x02FF82 21:BF72: 08        .byte $08	; <く>
- D - I - 0x02FF83 21:BF73: 08        .byte $08	; <く>
- D - I - 0x02FF84 21:BF74: 0C        .byte $0C	; <し>
- D - I - 0x02FF85 21:BF75: 09        .byte $09	; <け>
- D - I - 0x02FF86 21:BF76: 10        .byte $10	; <た>
- D - I - 0x02FF87 21:BF77: 0C        .byte $0C	; <し>
- D - I - 0x02FF88 21:BF78: 14        .byte $14	; <と>
- D - I - 0x02FF89 21:BF79: 0D        .byte $0D	; <す>

- D - I - 0x02FF8A 21:BF7A: 18        .byte $18	; <ね>
- D - I - 0x02FF8B 21:BF7B: 04        .byte $04	; <え>
- D - I - 0x02FF8C 21:BF7C: 08        .byte $08	; <く>
- D - I - 0x02FF8D 21:BF7D: 0A        .byte $0A	; <こ>
- D - I - 0x02FF8E 21:BF7E: 0C        .byte $0C	; <し>
- D - I - 0x02FF8F 21:BF7F: 0B        .byte $0B	; <さ>
- D - I - 0x02FF90 21:BF80: 10        .byte $10	; <た>
- D - I - 0x02FF91 21:BF81: 0E        .byte $0E	; <せ>
- D - I - 0x02FF92 21:BF82: 14        .byte $14	; <と>
- D - I - 0x02FF93 21:BF83: 0F        .byte $0F	; <そ>

- D - I - 0x02FF94 21:BF84: 08        .byte $08	; <く>
- D - I - 0x02FF95 21:BF85: 05        .byte $05	; <お>
- D - I - 0x02FF96 21:BF86: 0C        .byte $0C	; <し>
- D - I - 0x02FF97 21:BF87: 20        .byte $20	; <み>
- D - I - 0x02FF98 21:BF88: 10        .byte $10	; <た>
- D - I - 0x02FF99 21:BF89: 21        .byte $21	; <む>

- D - I - 0x02FF9A 21:BF8A: 01        .byte $01	; <あ>



off_BF8B_D4:
- D - I - 0x02FF9B 21:BF8B: 08        .byte $08	; <く>
- D - I - 0x02FF9C 21:BF8C: 02        .byte $02	; <い>
- D - I - 0x02FF9D 21:BF8D: 0D        .byte $0D	; <す>
- D - I - 0x02FF9E 21:BF8E: 02        .byte $02	; <い>
- D - I - 0x02FF9F 21:BF8F: 11        .byte $11	; <ち>
- D - I - 0x02FFA0 21:BF90: 03        .byte $03	; <う>

- D - I - 0x02FFA1 21:BF91: 18        .byte $18	; <ね>
- D - I - 0x02FFA2 21:BF92: 03        .byte $03	; <う>
- D - I - 0x02FFA3 21:BF93: 09        .byte $09	; <け>
- D - I - 0x02FFA4 21:BF94: 08        .byte $08	; <く>
- D - I - 0x02FFA5 21:BF95: 0D        .byte $0D	; <す>
- D - I - 0x02FFA6 21:BF96: 09        .byte $09	; <け>
- D - I - 0x02FFA7 21:BF97: 11        .byte $11	; <ち>
- D - I - 0x02FFA8 21:BF98: 0C        .byte $0C	; <し>
- D - I - 0x02FFA9 21:BF99: 15        .byte $15	; <な>
- D - I - 0x02FFAA 21:BF9A: 0D        .byte $0D	; <す>

- D - I - 0x02FFAB 21:BF9B: 18        .byte $18	; <ね>
- D - I - 0x02FFAC 21:BF9C: 04        .byte $04	; <え>
- D - I - 0x02FFAD 21:BF9D: 09        .byte $09	; <け>
- D - I - 0x02FFAE 21:BF9E: 0A        .byte $0A	; <こ>
- D - I - 0x02FFAF 21:BF9F: 0D        .byte $0D	; <す>
- D - I - 0x02FFB0 21:BFA0: 0B        .byte $0B	; <さ>
- D - I - 0x02FFB1 21:BFA1: 11        .byte $11	; <ち>
- D - I - 0x02FFB2 21:BFA2: 0E        .byte $0E	; <せ>
- D - I - 0x02FFB3 21:BFA3: 15        .byte $15	; <な>
- D - I - 0x02FFB4 21:BFA4: 0F        .byte $0F	; <そ>

- D - I - 0x02FFB5 21:BFA5: 08        .byte $08	; <く>
- D - I - 0x02FFB6 21:BFA6: 05        .byte $05	; <お>
- D - I - 0x02FFB7 21:BFA7: 0D        .byte $0D	; <す>
- D - I - 0x02FFB8 21:BFA8: 20        .byte $20	; <み>
- D - I - 0x02FFB9 21:BFA9: 11        .byte $11	; <ち>
- D - I - 0x02FFBA 21:BFAA: 21        .byte $21	; <む>

- D - I - 0x02FFBB 21:BFAB: 01        .byte $01	; <あ>



off_BFAC_D5:
- D - I - 0x02FFBC 21:BFAC: 08        .byte $08	; <く>
- D - I - 0x02FFBD 21:BFAD: 02        .byte $02	; <い>
- D - I - 0x02FFBE 21:BFAE: 0E        .byte $0E	; <せ>
- D - I - 0x02FFBF 21:BFAF: 02        .byte $02	; <い>
- D - I - 0x02FFC0 21:BFB0: 12        .byte $12	; <つ>
- D - I - 0x02FFC1 21:BFB1: 03        .byte $03	; <う>

- D - I - 0x02FFC2 21:BFB2: 18        .byte $18	; <ね>
- D - I - 0x02FFC3 21:BFB3: 03        .byte $03	; <う>
- D - I - 0x02FFC4 21:BFB4: 0A        .byte $0A	; <こ>
- D - I - 0x02FFC5 21:BFB5: 08        .byte $08	; <く>
- D - I - 0x02FFC6 21:BFB6: 0E        .byte $0E	; <せ>
- D - I - 0x02FFC7 21:BFB7: 09        .byte $09	; <け>
- D - I - 0x02FFC8 21:BFB8: 12        .byte $12	; <つ>
- D - I - 0x02FFC9 21:BFB9: 0C        .byte $0C	; <し>
- D - I - 0x02FFCA 21:BFBA: 16        .byte $16	; <に>
- D - I - 0x02FFCB 21:BFBB: 0D        .byte $0D	; <す>

- D - I - 0x02FFCC 21:BFBC: 18        .byte $18	; <ね>
- D - I - 0x02FFCD 21:BFBD: 04        .byte $04	; <え>
- D - I - 0x02FFCE 21:BFBE: 0A        .byte $0A	; <こ>
- D - I - 0x02FFCF 21:BFBF: 0A        .byte $0A	; <こ>
- D - I - 0x02FFD0 21:BFC0: 0E        .byte $0E	; <せ>
- D - I - 0x02FFD1 21:BFC1: 0B        .byte $0B	; <さ>
- D - I - 0x02FFD2 21:BFC2: 12        .byte $12	; <つ>
- D - I - 0x02FFD3 21:BFC3: 0E        .byte $0E	; <せ>
- D - I - 0x02FFD4 21:BFC4: 16        .byte $16	; <に>
- D - I - 0x02FFD5 21:BFC5: 0F        .byte $0F	; <そ>

- D - I - 0x02FFD6 21:BFC6: 08        .byte $08	; <く>
- D - I - 0x02FFD7 21:BFC7: 05        .byte $05	; <お>
- D - I - 0x02FFD8 21:BFC8: 0E        .byte $0E	; <せ>
- D - I - 0x02FFD9 21:BFC9: 20        .byte $20	; <み>
- D - I - 0x02FFDA 21:BFCA: 12        .byte $12	; <つ>
- D - I - 0x02FFDB 21:BFCB: 21        .byte $21	; <む>

- D - I - 0x02FFDC 21:BFCC: 01        .byte $01	; <あ>
