.segment "BANK_16"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; немного кода лишь в самом начале



.export sub_0x02C010



sub_0x02C010:
C D - - - - 0x02C013 16:8003: A0 00     LDY #$00
C - - - - - 0x02C015 16:8005: 84 3F     STY ram_003F
C - - - - - 0x02C017 16:8007: 84 41     STY ram_0041
C - - - - - 0x02C019 16:8009: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C01B 16:800B: 4A        LSR
C - - - - - 0x02C01C 16:800C: 26 3F     ROL ram_003F
C - - - - - 0x02C01E 16:800E: 4A        LSR
C - - - - - 0x02C01F 16:800F: 26 41     ROL ram_0041
C - - - - - 0x02C021 16:8011: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C023 16:8013: 29 60     AND #$60
C - - - - - 0x02C025 16:8015: 0A        ASL
C - - - - - 0x02C026 16:8016: 4D 17 05  EOR ram_0517
C - - - - - 0x02C029 16:8019: 85 49     STA ram_0049
C - - - - - 0x02C02B 16:801B: A0 08     LDY #$08
C - - - - - 0x02C02D 16:801D: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C02F 16:801F: 38        SEC
C - - - - - 0x02C030 16:8020: E9 80     SBC #$80
C - - - - - 0x02C032 16:8022: AA        TAX
C - - - - - 0x02C033 16:8023: A5 3F     LDA ram_003F
C - - - - - 0x02C035 16:8025: E9 00     SBC #$00
C - - - - - 0x02C037 16:8027: A8        TAY
C - - - - - 0x02C038 16:8028: A9 00     LDA #$00
C - - - - - 0x02C03A 16:802A: 85 3F     STA ram_003F
C - - - - - 0x02C03C 16:802C: AD 38 05  LDA ram_0538
C - - - - - 0x02C03F 16:802F: 49 FF     EOR #$FF
C - - - - - 0x02C041 16:8031: 18        CLC
C - - - - - 0x02C042 16:8032: 69 01     ADC #$01
C - - - - - 0x02C044 16:8034: 10 02     BPL bra_8038
C - - - - - 0x02C046 16:8036: C6 3F     DEC ram_003F
bra_8038:
C - - - - - 0x02C048 16:8038: 85 3E     STA ram_003E
C - - - - - 0x02C04A 16:803A: 8A        TXA
C - - - - - 0x02C04B 16:803B: 18        CLC
C - - - - - 0x02C04C 16:803C: 65 3E     ADC ram_003E
C - - - - - 0x02C04E 16:803E: AA        TAX
C - - - - - 0x02C04F 16:803F: 98        TYA
C - - - - - 0x02C050 16:8040: 65 3F     ADC ram_003F
C - - - - - 0x02C052 16:8042: A8        TAY
C - - - - - 0x02C053 16:8043: 2C 17 05  BIT ram_0517
C - - - - - 0x02C056 16:8046: 50 0D     BVC bra_8055
C - - - - - 0x02C058 16:8048: 8A        TXA
C - - - - - 0x02C059 16:8049: 49 FF     EOR #$FF
C - - - - - 0x02C05B 16:804B: AA        TAX
C - - - - - 0x02C05C 16:804C: 98        TYA
C - - - - - 0x02C05D 16:804D: 49 FF     EOR #$FF
C - - - - - 0x02C05F 16:804F: A8        TAY
C - - - - - 0x02C060 16:8050: E8        INX
C - - - - - 0x02C061 16:8051: D0 01     BNE bra_8054
C - - - - - 0x02C063 16:8053: C8        INY
bra_8054:
C - - - - - 0x02C064 16:8054: C8        INY
bra_8055:
C - - - - - 0x02C065 16:8055: 24 49     BIT ram_0049
C - - - - - 0x02C067 16:8057: 50 09     BVC bra_8062
C - - - - - 0x02C069 16:8059: 38        SEC
C - - - - - 0x02C06A 16:805A: 8A        TXA
C - - - - - 0x02C06B 16:805B: E9 08     SBC #$08
C - - - - - 0x02C06D 16:805D: AA        TAX
C - - - - - 0x02C06E 16:805E: 98        TYA
C - - - - - 0x02C06F 16:805F: E9 00     SBC #$00
C - - - - - 0x02C071 16:8061: A8        TAY
bra_8062:
C - - - - - 0x02C072 16:8062: 86 3E     STX ram_003E
C - - - - - 0x02C074 16:8064: 84 3F     STY ram_003F
C - - - - - 0x02C076 16:8066: A0 0C     LDY #$0C
C - - - - - 0x02C078 16:8068: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C07A 16:806A: 38        SEC
C - - - - - 0x02C07B 16:806B: 24 49     BIT ram_0049
C - - - - - 0x02C07D 16:806D: 10 03     BPL bra_8072
C - - - - - 0x02C07F 16:806F: E9 88     SBC #$88
C - - - - - 0x02C081 16:8071: 2C        .byte $2C
bra_8072:
C - - - - - 0x02C082 16:8072: E9 80     SBC #$80
C - - - - - 0x02C084 16:8074: 85 40     STA ram_0040
C - - - - - 0x02C086 16:8076: A5 41     LDA ram_0041
C - - - - - 0x02C088 16:8078: E9 00     SBC #$00
C - - - - - 0x02C08A 16:807A: 85 41     STA ram_0041
C - - - - - 0x02C08C 16:807C: A9 80     LDA #< tbl_8280
C - - - - - 0x02C08E 16:807E: 85 42     STA ram_0042
C - - - - - 0x02C090 16:8080: A9 82     LDA #> tbl_8280
C - - - - - 0x02C092 16:8082: 85 43     STA ram_0043
C - - - - - 0x02C094 16:8084: A0 12     LDY #$12
C - - - - - 0x02C096 16:8086: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C098 16:8088: 0A        ASL
C - - - - - 0x02C099 16:8089: 90 02     BCC bra_808D_not_overflow
C - - - - - 0x02C09B 16:808B: E6 43     INC ram_0043
bra_808D_not_overflow:
C - - - - - 0x02C09D 16:808D: A8        TAY
C - - - - - 0x02C09E 16:808E: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C0A0 16:8090: AA        TAX
C - - - - - 0x02C0A1 16:8091: C8        INY
C - - - - - 0x02C0A2 16:8092: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C0A4 16:8094: 85 43     STA ram_0043
C - - - - - 0x02C0A6 16:8096: 86 42     STX ram_0042
C - - - - - 0x02C0A8 16:8098: 20 87 81  JSR sub_8187
C - - - - - 0x02C0AB 16:809B: A0 00     LDY #$00
C - - - - - 0x02C0AD 16:809D: 84 44     STY ram_0044
loc_809F:
C D - - - - 0x02C0AF 16:809F: A4 44     LDY ram_0044
C - - - - - 0x02C0B1 16:80A1: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C0B3 16:80A3: 29 07     AND #$07
C - - - - - 0x02C0B5 16:80A5: D0 06     BNE bra_80AD
C - - - - - 0x02C0B7 16:80A7: 20 C0 80  JSR sub_80C0
C - - - - - 0x02C0BA 16:80AA: 4C 9F 80  JMP loc_809F
bra_80AD:
C - - - - - 0x02C0BD 16:80AD: 20 B3 80  JSR sub_80B3
C - - - - - 0x02C0C0 16:80B0: 4C 9F 80  JMP loc_809F

sub_80B3:
C - - - - - 0x02C0C3 16:80B3: E6 44     INC ram_0044
C - - - - - 0x02C0C5 16:80B5: 20 09 C5  JSR sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка
- - - - - - 0x02C0C8 16:80B8: 00 00     .word $0000
- D - I - - 0x02C0CA 16:80BA: 61 81     .word ofs_030_8161_01_закончить_чтение_таблицы
- D - I - - 0x02C0CC 16:80BC: 64 81     .word ofs_030_8164_02
- D - I - - 0x02C0CE 16:80BE: 75 81     .word ofs_030_8175_03

sub_80C0:
C - - - - - 0x02C0D0 16:80C0: A4 44     LDY ram_0044
C - - - - - 0x02C0D2 16:80C2: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C0D4 16:80C4: 29 38     AND #$38
C - - - - - 0x02C0D6 16:80C6: 4A        LSR
C - - - - - 0x02C0D7 16:80C7: 4A        LSR
C - - - - - 0x02C0D8 16:80C8: 4A        LSR
C - - - - - 0x02C0D9 16:80C9: 85 45     STA ram_0045
C - - - - - 0x02C0DB 16:80CB: C8        INY
C - - - - - 0x02C0DC 16:80CC: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C0DE 16:80CE: AA        TAX
C - - - - - 0x02C0DF 16:80CF: BD D2 81  LDA tbl_81D2,X
C - - - - - 0x02C0E2 16:80D2: A2 00     LDX #$00
C - - - - - 0x02C0E4 16:80D4: 24 49     BIT ram_0049
C - - - - - 0x02C0E6 16:80D6: 10 05     BPL bra_80DD
C - - - - - 0x02C0E8 16:80D8: 49 FF     EOR #$FF
C - - - - - 0x02C0EA 16:80DA: 18        CLC
C - - - - - 0x02C0EB 16:80DB: 69 01     ADC #$01
bra_80DD:
C - - - - - 0x02C0ED 16:80DD: 48        PHA
C - - - - - 0x02C0EE 16:80DE: 68        PLA
C - - - - - 0x02C0EF 16:80DF: 10 01     BPL bra_80E2
C - - - - - 0x02C0F1 16:80E1: CA        DEX
bra_80E2:
C - - - - - 0x02C0F2 16:80E2: 18        CLC
C - - - - - 0x02C0F3 16:80E3: 65 40     ADC ram_0040
C - - - - - 0x02C0F5 16:80E5: 85 46     STA ram_0046
C - - - - - 0x02C0F7 16:80E7: 8A        TXA
C - - - - - 0x02C0F8 16:80E8: 65 41     ADC ram_0041
C - - - - - 0x02C0FA 16:80EA: D0 11     BNE bra_80FD
C - - - - - 0x02C0FC 16:80EC: A5 46     LDA ram_0046
C - - - - - 0x02C0FE 16:80EE: CD 40 05  CMP ram_0540
C - - - - - 0x02C101 16:80F1: 90 0A     BCC bra_80FD
C - - - - - 0x02C103 16:80F3: CD 41 05  CMP ram_0541
C - - - - - 0x02C106 16:80F6: F0 11     BEQ bra_8109
C - - - - - 0x02C108 16:80F8: B0 03     BCS bra_80FD
C - - - - - 0x02C10A 16:80FA: 4C 09 81  JMP loc_8109
bra_80FD:
C - - - - - 0x02C10D 16:80FD: C8        INY
C - - - - - 0x02C10E 16:80FE: A9 F8     LDA #$F8
bra_8100_loop:
C - - - - - 0x02C110 16:8100: C8        INY
C - - - - - 0x02C111 16:8101: C8        INY
C - - - - - 0x02C112 16:8102: C6 45     DEC ram_0045
C - - - - - 0x02C114 16:8104: 10 FA     BPL bra_8100_loop
C - - - - - 0x02C116 16:8106: 84 44     STY ram_0044
C - - - - - 0x02C118 16:8108: 60        RTS
bra_8109:
loc_8109:
C D - - - - 0x02C119 16:8109: C8        INY
bra_810A_loop:
C - - - - - 0x02C11A 16:810A: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C11C 16:810C: 4A        LSR
C - - - - - 0x02C11D 16:810D: 4A        LSR
C - - - - - 0x02C11E 16:810E: AA        TAX
C - - - - - 0x02C11F 16:810F: BD FA 81  LDA tbl_81FA,X
C - - - - - 0x02C122 16:8112: A2 00     LDX #$00
C - - - - - 0x02C124 16:8114: 24 49     BIT ram_0049
C - - - - - 0x02C126 16:8116: 50 05     BVC bra_811D
C - - - - - 0x02C128 16:8118: 49 FF     EOR #$FF
C - - - - - 0x02C12A 16:811A: 18        CLC
C - - - - - 0x02C12B 16:811B: 69 01     ADC #$01
bra_811D:
C - - - - - 0x02C12D 16:811D: 48        PHA
C - - - - - 0x02C12E 16:811E: 68        PLA
C - - - - - 0x02C12F 16:811F: 10 01     BPL bra_8122
C - - - - - 0x02C131 16:8121: CA        DEX
bra_8122:
C - - - - - 0x02C132 16:8122: 18        CLC
C - - - - - 0x02C133 16:8123: 65 3E     ADC ram_003E
C - - - - - 0x02C135 16:8125: 85 47     STA ram_0047
C - - - - - 0x02C137 16:8127: 8A        TXA
C - - - - - 0x02C138 16:8128: 65 3F     ADC ram_003F
C - - - - - 0x02C13A 16:812A: F0 0A     BEQ bra_8136
C - - - - - 0x02C13C 16:812C: A6 3B     LDX ram_003B
C - - - - - 0x02C13E 16:812E: A9 F8     LDA #$F8
C - - - - - 0x02C140 16:8130: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x02C143 16:8133: C8        INY
C - - - - - 0x02C144 16:8134: D0 23     BNE bra_8159
bra_8136:
C - - - - - 0x02C146 16:8136: A6 3B     LDX ram_003B
C - - - - - 0x02C148 16:8138: A5 46     LDA ram_0046
C - - - - - 0x02C14A 16:813A: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x02C14D 16:813D: A5 47     LDA ram_0047
C - - - - - 0x02C14F 16:813F: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x02C152 16:8142: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C154 16:8144: 29 03     AND #$03
C - - - - - 0x02C156 16:8146: 05 49     ORA ram_0049
C - - - - - 0x02C158 16:8148: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x02C15B 16:814B: C8        INY
C - - - - - 0x02C15C 16:814C: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C15E 16:814E: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x02C161 16:8151: E8        INX
C - - - - - 0x02C162 16:8152: E8        INX
C - - - - - 0x02C163 16:8153: E8        INX
C - - - - - 0x02C164 16:8154: E8        INX
C - - - - - 0x02C165 16:8155: 86 3B     STX ram_003B
C - - - - - 0x02C167 16:8157: E6 48     INC ram_0048
bra_8159:
C - - - - - 0x02C169 16:8159: C8        INY
C - - - - - 0x02C16A 16:815A: C6 45     DEC ram_0045
C - - - - - 0x02C16C 16:815C: 10 AC     BPL bra_810A_loop
C - - - - - 0x02C16E 16:815E: 84 44     STY ram_0044
C - - - - - 0x02C170 16:8160: 60        RTS

ofs_030_8161_01_закончить_чтение_таблицы:
C - J - - - 0x02C171 16:8161: 68        PLA
C - - - - - 0x02C172 16:8162: 68        PLA
C - - - - - 0x02C173 16:8163: 60        RTS

loc_8164:
ofs_030_8164_02:
C D - - - - 0x02C174 16:8164: A4 44     LDY ram_0044
C - - - - - 0x02C176 16:8166: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C178 16:8168: AA        TAX
C - - - - - 0x02C179 16:8169: C8        INY
C - - - - - 0x02C17A 16:816A: B1 42     LDA (ram_0042),Y
C - - - - - 0x02C17C 16:816C: 85 43     STA ram_0043
C - - - - - 0x02C17E 16:816E: 86 42     STX ram_0042
C - - - - - 0x02C180 16:8170: A9 00     LDA #$00
C - - - - - 0x02C182 16:8172: 85 44     STA ram_0044
C - - - - - 0x02C184 16:8174: 60        RTS

ofs_030_8175_03:
C - J - - - 0x02C185 16:8175: AD 46 05  LDA ram_0546
C - - - - - 0x02C188 16:8178: C9 0C     CMP #$0C
C - - - - - 0x02C18A 16:817A: 90 02     BCC bra_817E
C - - - - - 0x02C18C 16:817C: E9 0C     SBC #$0C
bra_817E:
C - - - - - 0x02C18E 16:817E: 0A        ASL
C - - - - - 0x02C18F 16:817F: 18        CLC
C - - - - - 0x02C190 16:8180: 65 44     ADC ram_0044
C - - - - - 0x02C192 16:8182: 85 44     STA ram_0044
C - - - - - 0x02C194 16:8184: 4C 64 81  JMP loc_8164

sub_8187:
C - - - - - 0x02C197 16:8187: A0 00     LDY #$00
C - - - - - 0x02C199 16:8189: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C19B 16:818B: 4D 17 05  EOR ram_0517
C - - - - - 0x02C19E 16:818E: 29 40     AND #$40
C - - - - - 0x02C1A0 16:8190: 08        PHP
C - - - - - 0x02C1A1 16:8191: A0 13     LDY #$13
C - - - - - 0x02C1A3 16:8193: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C1A5 16:8195: F0 1A     BEQ bra_81B1
C - - - - - 0x02C1A7 16:8197: A2 00     LDX #$00
C - - - - - 0x02C1A9 16:8199: 28        PLP
C - - - - - 0x02C1AA 16:819A: 08        PHP
C - - - - - 0x02C1AB 16:819B: F0 05     BEQ bra_81A2
C - - - - - 0x02C1AD 16:819D: 49 FF     EOR #$FF
C - - - - - 0x02C1AF 16:819F: 18        CLC
C - - - - - 0x02C1B0 16:81A0: 69 01     ADC #$01
bra_81A2:
C - - - - - 0x02C1B2 16:81A2: 48        PHA
C - - - - - 0x02C1B3 16:81A3: 68        PLA
C - - - - - 0x02C1B4 16:81A4: 10 01     BPL bra_81A7
C - - - - - 0x02C1B6 16:81A6: CA        DEX
bra_81A7:
C - - - - - 0x02C1B7 16:81A7: 18        CLC
C - - - - - 0x02C1B8 16:81A8: 65 3E     ADC ram_003E
C - - - - - 0x02C1BA 16:81AA: 85 3E     STA ram_003E
C - - - - - 0x02C1BC 16:81AC: 8A        TXA
C - - - - - 0x02C1BD 16:81AD: 65 3F     ADC ram_003F
C - - - - - 0x02C1BF 16:81AF: 85 3F     STA ram_003F
bra_81B1:
C - - - - - 0x02C1C1 16:81B1: C8        INY
C - - - - - 0x02C1C2 16:81B2: B1 3C     LDA (ram_003C),Y
C - - - - - 0x02C1C4 16:81B4: F0 1A     BEQ bra_81D0
C - - - - - 0x02C1C6 16:81B6: A2 00     LDX #$00
C - - - - - 0x02C1C8 16:81B8: 28        PLP
C - - - - - 0x02C1C9 16:81B9: 08        PHP
C - - - - - 0x02C1CA 16:81BA: 10 05     BPL bra_81C1
- - - - - - 0x02C1CC 16:81BC: 49 FF     EOR #$FF
- - - - - - 0x02C1CE 16:81BE: 18        CLC
- - - - - - 0x02C1CF 16:81BF: 69 01     ADC #$01
bra_81C1:
C - - - - - 0x02C1D1 16:81C1: 48        PHA
C - - - - - 0x02C1D2 16:81C2: 68        PLA
C - - - - - 0x02C1D3 16:81C3: 10 01     BPL bra_81C6
C - - - - - 0x02C1D5 16:81C5: CA        DEX
bra_81C6:
C - - - - - 0x02C1D6 16:81C6: 18        CLC
C - - - - - 0x02C1D7 16:81C7: 65 40     ADC ram_0040
C - - - - - 0x02C1D9 16:81C9: 85 40     STA ram_0040
C - - - - - 0x02C1DB 16:81CB: 8A        TXA
C - - - - - 0x02C1DC 16:81CC: 65 41     ADC ram_0041
C - - - - - 0x02C1DE 16:81CE: 85 41     STA ram_0041
bra_81D0:
C - - - - - 0x02C1E0 16:81D0: 28        PLP
C - - - - - 0x02C1E1 16:81D1: 60        RTS

tbl_81D2:
- D - - - - 0x02C1E2 16:81D2: E0        .byte $E0
- D - - - - 0x02C1E3 16:81D3: E8        .byte $E8
- D - - - - 0x02C1E4 16:81D4: F0        .byte $F0
- D - - - - 0x02C1E5 16:81D5: F8        .byte $F8
- D - - - - 0x02C1E6 16:81D6: 00        .byte $00
- D - - - - 0x02C1E7 16:81D7: 08        .byte $08   ; <く>
- D - - - - 0x02C1E8 16:81D8: 10        .byte $10   ; <た>
- D - - - - 0x02C1E9 16:81D9: 18        .byte $18   ; <ね>
- D - - - - 0x02C1EA 16:81DA: 20        .byte $20   ; <み>
- D - - - - 0x02C1EB 16:81DB: 28        .byte $28   ; <り>
- D - - - - 0x02C1EC 16:81DC: 0E        .byte $0E   ; <せ>
- D - - - - 0x02C1ED 16:81DD: E5        .byte $E5
- D - - - - 0x02C1EE 16:81DE: ED        .byte $ED
- D - - - - 0x02C1EF 16:81DF: E4        .byte $E4
- D - - - - 0x02C1F0 16:81E0: 25        .byte $25   ; <ゆ>
- D - - - - 0x02C1F1 16:81E1: DF        .byte $DF
- - - - - - 0x02C1F2 16:81E2: DC        .byte $DC
- D - - - - 0x02C1F3 16:81E3: E7        .byte $E7
- D - - - - 0x02C1F4 16:81E4: EF        .byte $EF
- - - - - - 0x02C1F5 16:81E5: 21        .byte $21   ; <む>
- D - - - - 0x02C1F6 16:81E6: 1E        .byte $1E   ; <ほ>
- D - - - - 0x02C1F7 16:81E7: 26        .byte $26   ; <よ>
- D - - - - 0x02C1F8 16:81E8: 30        .byte $30   ; <ゃ>
- D - - - - 0x02C1F9 16:81E9: 38        .byte $38   ; <5>
- D - - - - 0x02C1FA 16:81EA: F4        .byte $F4
- D - - - - 0x02C1FB 16:81EB: FC        .byte $FC
- D - - - - 0x02C1FC 16:81EC: 04        .byte $04   ; <え>
- D - - - - 0x02C1FD 16:81ED: 0C        .byte $0C   ; <し>
- D - - - - 0x02C1FE 16:81EE: EC        .byte $EC
- - - - - - 0x02C1FF 16:81EF: F6        .byte $F6
- D - - - - 0x02C200 16:81F0: D8        .byte $D8
- D - - - - 0x02C201 16:81F1: EA        .byte $EA
- D - - - - 0x02C202 16:81F2: 0A        .byte $0A   ; <こ>
- D - - - - 0x02C203 16:81F3: 1B        .byte $1B   ; <ひ>
- D - - - - 0x02C204 16:81F4: F7        .byte $F7
- D - - - - 0x02C205 16:81F5: 03        .byte $03   ; <う>
- D - - - - 0x02C206 16:81F6: FF        .byte $FF
- D - - - - 0x02C207 16:81F7: 06        .byte $06   ; <か>
- D - - - - 0x02C208 16:81F8: F2        .byte $F2
- D - - - - 0x02C209 16:81F9: 14        .byte $14   ; <と>

tbl_81FA:
- D - - - - 0x02C20A 16:81FA: E0        .byte $E0
- D - - - - 0x02C20B 16:81FB: E8        .byte $E8
- D - - - - 0x02C20C 16:81FC: F0        .byte $F0
- D - - - - 0x02C20D 16:81FD: F8        .byte $F8
- D - - - - 0x02C20E 16:81FE: 00        .byte $00
- D - - - - 0x02C20F 16:81FF: 08        .byte $08   ; <く>
- D - - - - 0x02C210 16:8200: 10        .byte $10   ; <た>
- D - - - - 0x02C211 16:8201: EF        .byte $EF
- D - - - - 0x02C212 16:8202: F5        .byte $F5
- D - - - - 0x02C213 16:8203: F7        .byte $F7
- D - - - - 0x02C214 16:8204: FD        .byte $FD
- D - - - - 0x02C215 16:8205: 05        .byte $05   ; <お>
- D - - - - 0x02C216 16:8206: FF        .byte $FF
- D - - - - 0x02C217 16:8207: F6        .byte $F6
- D - - - - 0x02C218 16:8208: FE        .byte $FE
- D - - - - 0x02C219 16:8209: 06        .byte $06   ; <か>
- D - - - - 0x02C21A 16:820A: F4        .byte $F4
- D - - - - 0x02C21B 16:820B: FC        .byte $FC
- D - - - - 0x02C21C 16:820C: F3        .byte $F3
- D - - - - 0x02C21D 16:820D: FB        .byte $FB
- D - - - - 0x02C21E 16:820E: E4        .byte $E4
- D - - - - 0x02C21F 16:820F: EC        .byte $EC
- D - - - - 0x02C220 16:8210: F2        .byte $F2
- D - - - - 0x02C221 16:8211: FA        .byte $FA
- D - - - - 0x02C222 16:8212: 02        .byte $02   ; <い>
- D - - - - 0x02C223 16:8213: F9        .byte $F9
- D - - - - 0x02C224 16:8214: D8        .byte $D8
- D - - - - 0x02C225 16:8215: DC        .byte $DC
- D - - - - 0x02C226 16:8216: 0A        .byte $0A   ; <こ>
- D - - - - 0x02C227 16:8217: 07        .byte $07   ; <き>
- D - - - - 0x02C228 16:8218: 0F        .byte $0F   ; <そ>
- D - - - - 0x02C229 16:8219: 0D        .byte $0D   ; <す>
- D - - - - 0x02C22A 16:821A: 18        .byte $18   ; <ね>
- D - - - - 0x02C22B 16:821B: 04        .byte $04   ; <え>
- D - - - - 0x02C22C 16:821C: 0E        .byte $0E   ; <せ>
- - - - - - 0x02C22D 16:821D: 12        .byte $12   ; <つ>
- D - - - - 0x02C22E 16:821E: 0C        .byte $0C   ; <し>
- D - - - - 0x02C22F 16:821F: ED        .byte $ED
- D - - - - 0x02C230 16:8220: EE        .byte $EE
- D - - - - 0x02C231 16:8221: C0        .byte $C0   ; <ヅ>
- D - - - - 0x02C232 16:8222: C8        .byte $C8   ; <ぱ>
- D - - - - 0x02C233 16:8223: 2C        .byte $2C   ; <わ>
- D - - - - 0x02C234 16:8224: 34        .byte $34   ; <1>
- D - - - - 0x02C235 16:8225: 3C        .byte $3C   ; <9>
- D - - - - 0x02C236 16:8226: 44        .byte $44   ; <エ>
- D - - - - 0x02C237 16:8227: D0        .byte $D0   ; <ペ>
- D - - - - 0x02C238 16:8228: EB        .byte $EB
- D - - - - 0x02C239 16:8229: 01        .byte $01   ; <あ>
- D - - - - 0x02C23A 16:822A: 20        .byte $20   ; <み>
- D - - - - 0x02C23B 16:822B: 28        .byte $28   ; <り>
- D - - - - 0x02C23C 16:822C: 30        .byte $30   ; <ゃ>
- D - - - - 0x02C23D 16:822D: 38        .byte $38   ; <5>
- D - - - - 0x02C23E 16:822E: 40        .byte $40   ; <「>
- D - - - - 0x02C23F 16:822F: 48        .byte $48   ; <ク>
- D - - - - 0x02C240 16:8230: 50        .byte $50   ; <タ>
- D - - - - 0x02C241 16:8231: 14        .byte $14   ; <と>
- D - - - - 0x02C242 16:8232: 1C        .byte $1C   ; <ふ>
- D - - - - 0x02C243 16:8233: 26        .byte $26   ; <よ>
- D - - - - 0x02C244 16:8234: A8        .byte $A8   ; <ぜ>
- D - - - - 0x02C245 16:8235: B0        .byte $B0   ; <び>
- D - - - - 0x02C246 16:8236: B8        .byte $B8   ; <ゴ>



- - - - - - 0x02C247 16:8237: FF        .byte $FF
- - - - - - 0x02C248 16:8238: FF        .byte $FF
- - - - - - 0x02C249 16:8239: FF        .byte $FF
- - - - - - 0x02C24A 16:823A: FF        .byte $FF
- - - - - - 0x02C24B 16:823B: FF        .byte $FF
- - - - - - 0x02C24C 16:823C: FF        .byte $FF
- - - - - - 0x02C24D 16:823D: FF        .byte $FF
- - - - - - 0x02C24E 16:823E: FF        .byte $FF
- - - - - - 0x02C24F 16:823F: FF        .byte $FF
- - - - - - 0x02C250 16:8240: FF        .byte $FF
- - - - - - 0x02C251 16:8241: FF        .byte $FF
- - - - - - 0x02C252 16:8242: FF        .byte $FF
- - - - - - 0x02C253 16:8243: FF        .byte $FF
- - - - - - 0x02C254 16:8244: FF        .byte $FF
- - - - - - 0x02C255 16:8245: FF        .byte $FF
- - - - - - 0x02C256 16:8246: FF        .byte $FF
- - - - - - 0x02C257 16:8247: FF        .byte $FF
- - - - - - 0x02C258 16:8248: FF        .byte $FF
- - - - - - 0x02C259 16:8249: FF        .byte $FF
- - - - - - 0x02C25A 16:824A: FF        .byte $FF
- - - - - - 0x02C25B 16:824B: FF        .byte $FF
- - - - - - 0x02C25C 16:824C: FF        .byte $FF
- - - - - - 0x02C25D 16:824D: FF        .byte $FF
- - - - - - 0x02C25E 16:824E: FF        .byte $FF
- - - - - - 0x02C25F 16:824F: FF        .byte $FF
- - - - - - 0x02C260 16:8250: FF        .byte $FF
- - - - - - 0x02C261 16:8251: FF        .byte $FF
- - - - - - 0x02C262 16:8252: FF        .byte $FF
- - - - - - 0x02C263 16:8253: FF        .byte $FF
- - - - - - 0x02C264 16:8254: FF        .byte $FF
- - - - - - 0x02C265 16:8255: FF        .byte $FF
- - - - - - 0x02C266 16:8256: FF        .byte $FF
- - - - - - 0x02C267 16:8257: FF        .byte $FF
- - - - - - 0x02C268 16:8258: FF        .byte $FF
- - - - - - 0x02C269 16:8259: FF        .byte $FF
- - - - - - 0x02C26A 16:825A: FF        .byte $FF
- - - - - - 0x02C26B 16:825B: FF        .byte $FF
- - - - - - 0x02C26C 16:825C: FF        .byte $FF
- - - - - - 0x02C26D 16:825D: FF        .byte $FF
- - - - - - 0x02C26E 16:825E: FF        .byte $FF
- - - - - - 0x02C26F 16:825F: FF        .byte $FF
- - - - - - 0x02C270 16:8260: FF        .byte $FF
- - - - - - 0x02C271 16:8261: FF        .byte $FF
- - - - - - 0x02C272 16:8262: FF        .byte $FF
- - - - - - 0x02C273 16:8263: FF        .byte $FF
- - - - - - 0x02C274 16:8264: FF        .byte $FF
- - - - - - 0x02C275 16:8265: FF        .byte $FF
- - - - - - 0x02C276 16:8266: FF        .byte $FF
- - - - - - 0x02C277 16:8267: FF        .byte $FF
- - - - - - 0x02C278 16:8268: FF        .byte $FF
- - - - - - 0x02C279 16:8269: FF        .byte $FF
- - - - - - 0x02C27A 16:826A: FF        .byte $FF
- - - - - - 0x02C27B 16:826B: FF        .byte $FF
- - - - - - 0x02C27C 16:826C: FF        .byte $FF
- - - - - - 0x02C27D 16:826D: FF        .byte $FF
- - - - - - 0x02C27E 16:826E: FF        .byte $FF
- - - - - - 0x02C27F 16:826F: FF        .byte $FF
- - - - - - 0x02C280 16:8270: FF        .byte $FF
- - - - - - 0x02C281 16:8271: FF        .byte $FF
- - - - - - 0x02C282 16:8272: FF        .byte $FF
- - - - - - 0x02C283 16:8273: FF        .byte $FF
- - - - - - 0x02C284 16:8274: FF        .byte $FF
- - - - - - 0x02C285 16:8275: FF        .byte $FF
- - - - - - 0x02C286 16:8276: FF        .byte $FF
- - - - - - 0x02C287 16:8277: FF        .byte $FF
- - - - - - 0x02C288 16:8278: FF        .byte $FF
- - - - - - 0x02C289 16:8279: FF        .byte $FF
- - - - - - 0x02C28A 16:827A: FF        .byte $FF
- - - - - - 0x02C28B 16:827B: FF        .byte $FF
- - - - - - 0x02C28C 16:827C: FF        .byte $FF
- - - - - - 0x02C28D 16:827D: FF        .byte $FF
- - - - - - 0x02C28E 16:827E: FF        .byte $FF
- - - - - - 0x02C28F 16:827F: FF        .byte $FF

tbl_8280:
- D - I - - 0x02C290 16:8280: 2C 84     .word off_842C_00
- D - I - - 0x02C292 16:8282: 17 85     .word off_8517_01
- D - I - - 0x02C294 16:8284: 02 86     .word off_8602_02
- D - I - - 0x02C296 16:8286: EE 86     .word off_86EE_03
- D - I - - 0x02C298 16:8288: D9 87     .word off_87D9_04
- D - I - - 0x02C29A 16:828A: 40 88     .word off_8840_05
- D - I - - 0x02C29C 16:828C: 9F 88     .word off_889F_06
- D - I - - 0x02C29E 16:828E: D4 88     .word off_88D4_07
- D - I - - 0x02C2A0 16:8290: 07 89     .word off_8907_08
- D - I - - 0x02C2A2 16:8292: 3A 89     .word off_893A_09
- D - I - - 0x02C2A4 16:8294: 6B 89     .word off_896B_0A
- D - I - - 0x02C2A6 16:8296: 7A 89     .word off_897A_0B
- D - I - - 0x02C2A8 16:8298: 8D 89     .word off_898D_0C
- D - I - - 0x02C2AA 16:829A: 9C 89     .word off_899C_0D
- - - - - - 0x02C2AC 16:829C: AF 89     .word off_89AF_0E
- D - I - - 0x02C2AE 16:829E: BC 89     .word off_89BC_0F
- D - I - - 0x02C2B0 16:82A0: 3F 8B     .word off_8B3F_10
- D - I - - 0x02C2B2 16:82A2: 4E 8B     .word off_8B4E_11
- D - I - - 0x02C2B4 16:82A4: 61 8B     .word off_8B61_12
- D - I - - 0x02C2B6 16:82A6: 74 8B     .word off_8B74_13
- D - I - - 0x02C2B8 16:82A8: 81 8B     .word off_8B81_14
- D - I - - 0x02C2BA 16:82AA: 0C 8D     .word off_8D0C_15
- D - I - - 0x02C2BC 16:82AC: 1B 8D     .word off_8D1B_16
- D - I - - 0x02C2BE 16:82AE: 30 8D     .word off_8D30_17
- D - I - - 0x02C2C0 16:82B0: 45 8D     .word off_8D45_18
- D - I - - 0x02C2C2 16:82B2: 52 8D     .word off_8D52_19
- - - - - - 0x02C2C4 16:82B4: 1D 8F     .word off_8F1D_1A
- D - I - - 0x02C2C6 16:82B6: 2C 8F     .word off_8F2C_1B
- - - - - - 0x02C2C8 16:82B8: 41 8F     .word off_8F41_1C
- D - I - - 0x02C2CA 16:82BA: 56 8F     .word off_8F56_1D
- D - I - - 0x02C2CC 16:82BC: 63 8F     .word off_8F63_1E
- D - I - - 0x02C2CE 16:82BE: E8 8F     .word off_8FE8_1F
- D - I - - 0x02C2D0 16:82C0: A9 91     .word off_91A9_20
- D - I - - 0x02C2D2 16:82C2: C6 91     .word off_91C6_21
- D - I - - 0x02C2D4 16:82C4: DF 91     .word off_91DF_22
- D - I - - 0x02C2D6 16:82C6: F8 91     .word off_91F8_23
- D - I - - 0x02C2D8 16:82C8: 09 92     .word off_9209_24
- D - I - - 0x02C2DA 16:82CA: 9B 92     .word off_929B_25
- D - I - - 0x02C2DC 16:82CC: 98 93     .word off_9398_26
- D - I - - 0x02C2DE 16:82CE: D9 93     .word off_93D9_27
- D - I - - 0x02C2E0 16:82D0: 32 94     .word off_9432_28
- D - I - - 0x02C2E2 16:82D2: 95 94     .word off_9495_29
- D - I - - 0x02C2E4 16:82D4: E8 94     .word off_94E8_2A
- D - I - - 0x02C2E6 16:82D6: 05 95     .word off_9505_2B
- D - I - - 0x02C2E8 16:82D8: 20 95     .word off_9520_2C
- - - - - - 0x02C2EA 16:82DA: 51 96     .word off_9651_2D
- - - - - - 0x02C2EC 16:82DC: 6E 96     .word off_966E_2E
- D - I - - 0x02C2EE 16:82DE: 97 B8     .word off_B897_2F
- D - I - - 0x02C2F0 16:82E0: 8B 96     .word off_968B_30
- D - I - - 0x02C2F2 16:82E2: D8 96     .word off_96D8_31
- - - - - - 0x02C2F4 16:82E4: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C2F6 16:82E6: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C2F8 16:82E8: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C2FA 16:82EA: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C2FC 16:82EC: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C2FE 16:82EE: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C300 16:82F0: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C302 16:82F2: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C304 16:82F4: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C306 16:82F6: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C308 16:82F8: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C30A 16:82FA: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- - - - - - 0x02C30C 16:82FC: 39 97     .word off_9739_3E
- D - I - - 0x02C30E 16:82FE: E4 98     .word off_98E4_3F
- D - I - - 0x02C310 16:8300: 01 99     .word off_9901_40
- D - I - - 0x02C312 16:8302: 1E 99     .word off_991E_41
- - - - - - 0x02C314 16:8304: 2C 9B     .word off_9B2C_42
- D - I - - 0x02C316 16:8306: 89 9B     .word off_9B89_43
- D - I - - 0x02C318 16:8308: BA 9B     .word off_9BBA_44
- D - I - - 0x02C31A 16:830A: EB 9B     .word off_9BEB_45
- D - I - - 0x02C31C 16:830C: 1E 9C     .word off_9C1E_46
- D - I - - 0x02C31E 16:830E: 51 9C     .word off_9C51_47
- D - I - - 0x02C320 16:8310: 8C 9C     .word off_9C8C_48
- D - I - - 0x02C322 16:8312: BD 9C     .word off_9CBD_49
- D - I - - 0x02C324 16:8314: 0C 9D     .word off_9D0C_4A
- D - I - - 0x02C326 16:8316: 39 9D     .word off_9D39_4B
- D - I - - 0x02C328 16:8318: 66 9D     .word off_9D66_4C
- D - I - - 0x02C32A 16:831A: 91 9D     .word off_9D91_4D
- D - I - - 0x02C32C 16:831C: BC 9D     .word off_9DBC_4E
- D - I - - 0x02C32E 16:831E: 3B 9E     .word off_9E3B_4F
- D - I - - 0x02C330 16:8320: E9 9E     .word off_9EE9_50
- D - I - - 0x02C332 16:8322: 86 9F     .word off_9F86_51
- D - I - - 0x02C334 16:8324: 23 A0     .word off_A023_52
- D - I - - 0x02C336 16:8326: 96 A0     .word off_A096_53
- D - I - - 0x02C338 16:8328: 29 A1     .word off_A129_54
- D - I - - 0x02C33A 16:832A: 50 A1     .word off_A150_55
- D - I - - 0x02C33C 16:832C: B5 A1     .word off_A1B5_56
- D - I - - 0x02C33E 16:832E: CC A1     .word off_A1CC_57
- D - I - - 0x02C340 16:8330: 1F A2     .word off_A21F_58
- D - I - - 0x02C342 16:8332: 6A A2     .word off_A26A_59
- D - I - - 0x02C344 16:8334: BF A2     .word off_A2BF_5A
- D - I - - 0x02C346 16:8336: 14 A3     .word off_A314_5B
- D - I - - 0x02C348 16:8338: 87 A3     .word off_A387_5C
- D - I - - 0x02C34A 16:833A: DA A3     .word off_A3DA_5D
- D - I - - 0x02C34C 16:833C: 4D A4     .word off_A44D_5E
- D - I - - 0x02C34E 16:833E: B6 A4     .word off_A4B6_5F
- D - I - - 0x02C350 16:8340: 0D A5     .word off_A50D_60
- D - I - - 0x02C352 16:8342: 44 A5     .word off_A544_61
- D - I - - 0x02C354 16:8344: 5D A5     .word off_A55D_62
- D - I - - 0x02C356 16:8346: BE A5     .word off_A5BE_63
- D - I - - 0x02C358 16:8348: 0B A6     .word off_A60B_64
- D - I - - 0x02C35A 16:834A: 32 A6     .word off_A632_65
- D - I - - 0x02C35C 16:834C: 95 A6     .word off_A695_66
- D - I - - 0x02C35E 16:834E: E8 A6     .word off_A6E8_67
- D - I - - 0x02C360 16:8350: 33 A7     .word off_A733_68
- D - I - - 0x02C362 16:8352: 84 A7     .word off_A784_69
- D - I - - 0x02C364 16:8354: C3 A7     .word off_A7C3_6A
- D - I - - 0x02C366 16:8356: 08 A8     .word off_A808_6B
- D - I - - 0x02C368 16:8358: 45 A8     .word off_A845_6C
- D - I - - 0x02C36A 16:835A: 6A A8     .word off_A86A_6D
- D - I - - 0x02C36C 16:835C: 9D A8     .word off_A89D_6E
- D - I - - 0x02C36E 16:835E: B4 A8     .word off_A8B4_6F
- D - I - - 0x02C370 16:8360: C1 A8     .word off_A8C1_70
- D - I - - 0x02C372 16:8362: 6F A9     .word off_A96F_71
- D - I - - 0x02C374 16:8364: B2 A9     .word off_A9B2_72
- D - I - - 0x02C376 16:8366: E1 A9     .word off_A9E1_73
- D - I - - 0x02C378 16:8368: 06 AA     .word off_AA06_74
- D - I - - 0x02C37A 16:836A: 23 AA     .word off_AA23_75
- D - I - - 0x02C37C 16:836C: 34 AA     .word off_AA34_76
- D - I - - 0x02C37E 16:836E: 45 AA     .word off_AA45_77
- D - I - - 0x02C380 16:8370: 52 AA     .word off_AA52_78
- D - I - - 0x02C382 16:8372: 5F AA     .word off_AA5F_79
- D - I - - 0x02C384 16:8374: 6C AA     .word off_AA6C_7A
- D - I - - 0x02C386 16:8376: 79 AA     .word off_AA79_7B
- D - I - - 0x02C388 16:8378: 7E AA     .word off_AA7E_7C
- D - I - - 0x02C38A 16:837A: 83 AA     .word off_AA83_7D
- D - I - - 0x02C38C 16:837C: 88 AA     .word off_AA88_7E
- D - I - - 0x02C38E 16:837E: A9 AA     .word off_AAA9_7F
- D - I - - 0x02C390 16:8380: C2 AA     .word off_AAC2_80
- D - I - - 0x02C392 16:8382: D9 AA     .word off_AAD9_81
- D - I - - 0x02C394 16:8384: E6 AA     .word off_AAE6_82
- D - I - - 0x02C396 16:8386: F3 AA     .word off_AAF3_83
- D - I - - 0x02C398 16:8388: 00 AB     .word off_AB00_84
- D - I - - 0x02C39A 16:838A: 0D AB     .word off_AB0D_85
- D - I - - 0x02C39C 16:838C: 12 AB     .word off_AB12_86
- D - I - - 0x02C39E 16:838E: 17 AB     .word off_AB17_87
- D - I - - 0x02C3A0 16:8390: 1C AB     .word off_AB1C_88
- D - I - - 0x02C3A2 16:8392: 53 AB     .word off_AB53_89
- D - I - - 0x02C3A4 16:8394: 3C AD     .word off_AD3C_8A
- D - I - - 0x02C3A6 16:8396: 65 AD     .word off_AD65_8B
- D - I - - 0x02C3A8 16:8398: 7C AD     .word off_AD7C_8C
- D - I - - 0x02C3AA 16:839A: 93 AD     .word off_AD93_8D
- D - I - - 0x02C3AC 16:839C: AE AD     .word off_ADAE_8E
- D - I - - 0x02C3AE 16:839E: C9 AD     .word off_ADC9_8F
- D - I - - 0x02C3B0 16:83A0: E2 AD     .word off_ADE2_90
- D - I - - 0x02C3B2 16:83A2: 47 AE     .word off_AE47_91
- D - I - - 0x02C3B4 16:83A4: 88 AE     .word off_AE88_92
- D - I - - 0x02C3B6 16:83A6: B5 AE     .word off_AEB5_93
- D - I - - 0x02C3B8 16:83A8: 6D AF     .word off_AF6D_94
- D - I - - 0x02C3BA 16:83AA: 2B B0     .word off_B02B_95
- D - I - - 0x02C3BC 16:83AC: 34 B0     .word off_B034_96
- D - I - - 0x02C3BE 16:83AE: 3D B0     .word off_B03D_97
- D - I - - 0x02C3C0 16:83B0: 46 B0     .word off_B046_98
- D - I - - 0x02C3C2 16:83B2: D7 B0     .word off_B0D7_99
- D - I - - 0x02C3C4 16:83B4: D4 B1     .word off_B1D4_9A
- D - I - - 0x02C3C6 16:83B6: E3 B1     .word off_B1E3_9B
- D - I - - 0x02C3C8 16:83B8: FA B1     .word off_B1FA_9C
- D - I - - 0x02C3CA 16:83BA: 11 B2     .word off_B211_9D
- D - I - - 0x02C3CC 16:83BC: 1E B2     .word off_B21E_9E
- D - I - - 0x02C3CE 16:83BE: CC B2     .word off_B2CC_9F
- D - I - - 0x02C3D0 16:83C0: D9 B2     .word off_B2D9_A0
- D - I - - 0x02C3D2 16:83C2: C8 B3     .word off_B3C8_A1
- D - I - - 0x02C3D4 16:83C4: 25 B4     .word off_B425_A2
- D - I - - 0x02C3D6 16:83C6: 8C B6     .word off_B68C_A3
- D - I - - 0x02C3D8 16:83C8: B9 B6     .word off_B6B9_A4
- D - I - - 0x02C3DA 16:83CA: D6 B6     .word off_B6D6_A5
- D - I - - 0x02C3DC 16:83CC: F3 B6     .word off_B6F3_A6
- D - I - - 0x02C3DE 16:83CE: 00 B7     .word off_B700_A7
- D - I - - 0x02C3E0 16:83D0: 0D B7     .word off_B70D_A8
- D - I - - 0x02C3E2 16:83D2: 26 B7     .word off_B726_A9
- D - I - - 0x02C3E4 16:83D4: 45 B7     .word off_B745_AA
- D - I - - 0x02C3E6 16:83D6: 74 B7     .word off_B774_AB
- D - I - - 0x02C3E8 16:83D8: 81 B7     .word off_B781_AC
- D - I - - 0x02C3EA 16:83DA: B4 B7     .word off_B7B4_AD
- D - I - - 0x02C3EC 16:83DC: C1 B7     .word off_B7C1_AE
- D - I - - 0x02C3EE 16:83DE: D8 B7     .word off_B7D8_AF
- D - I - - 0x02C3F0 16:83E0: 7E B8     .word off_B87E_B0
- D - I - - 0x02C3F2 16:83E2: A4 B8     .word off_B8A4_B1
- D - I - - 0x02C3F4 16:83E4: ED B8     .word off_B8ED_B2
- D - I - - 0x02C3F6 16:83E6: 52 B9     .word off_B952_B3
- D - I - - 0x02C3F8 16:83E8: BF B9     .word off_B9BF_B4
- D - I - - 0x02C3FA 16:83EA: 18 BA     .word off_BA18_B5
- D - I - - 0x02C3FC 16:83EC: 81 BA     .word off_BA81_B6
- D - I - - 0x02C3FE 16:83EE: E0 BA     .word off_BAE0_B7
- D - I - - 0x02C400 16:83F0: 21 BB     .word off_BB21_B8
- D - I - - 0x02C402 16:83F2: 62 BB     .word off_BB62_B9
- D - I - - 0x02C404 16:83F4: 6D BB     .word off_BB6D_BA
- D - I - - 0x02C406 16:83F6: 7C BB     .word off_BB7C_BB
- D - I - - 0x02C408 16:83F8: 8F BB     .word off_BB8F_BC
- D - I - - 0x02C40A 16:83FA: D8 BB     .word off_BBD8_BD
- D - I - - 0x02C40C 16:83FC: 0B BC     .word off_BC0B_BE
- D - I - - 0x02C40E 16:83FE: 46 BC     .word off_BC46_BF
- D - I - - 0x02C410 16:8400: 9B BC     .word off_BC9B_C0
- D - I - - 0x02C412 16:8402: 00 BD     .word off_BD00_C1
- D - I - - 0x02C414 16:8404: 2F BD     .word off_BD2F_C2
- D - I - - 0x02C416 16:8406: 58 BD     .word off_BD58_C3
- D - I - - 0x02C418 16:8408: 67 BD     .word off_BD67_C4
- D - I - - 0x02C41A 16:840A: 7E BD     .word off_BD7E_C5
- - - - - - 0x02C41C 16:840C: A1 BD     .word off_BDA1_C6
- - - - - - 0x02C41E 16:840E: B2 BD     .word off_BDB2_C7
- D - I - - 0x02C420 16:8410: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- D - I - - 0x02C422 16:8412: C4 BD     .word off_BDC4_C9
- D - I - - 0x02C424 16:8414: D5 BD     .word off_BDD5_CA
- - - - - - 0x02C426 16:8416: E2 BD     .word off_BDE2_CB
- - - - - - 0x02C428 16:8418: E7 BD     .word off_BDE7_CC
- - - - - - 0x02C42A 16:841A: BF BD     .word off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD
- D - I - - 0x02C42C 16:841C: EC BD     .word off_BDEC_CE
- D - I - - 0x02C42E 16:841E: 2D BE     .word off_BE2D_CF
- D - I - - 0x02C430 16:8420: D6 BE     .word off_BED6_D0
- D - I - - 0x02C432 16:8422: 4D BF     .word off_BF4D_D1
- D - I - - 0x02C434 16:8424: F4 8F     .word off_8FF4_D2
- D - I - - 0x02C436 16:8426: 6A BF     .word off_BF6A_D3
- D - I - - 0x02C438 16:8428: 8B BF     .word off_BF8B_D4
- D - I - - 0x02C43A 16:842A: AC BF     .word off_BFAC_D5

; 01 - выход
; 02 - прыгнуть на указанную локаци
; 03 - прыгнуть на одну из локацций под этим байтомм, 1 из 6 либо 1 из 12
    ; 00, 08, 10, 18, 20, 28, 30, 38 - атрибуты спрайтов, первый байт это количество байтов для чтения после него
    ;  4,  6,  8, 10, 12, 14, 16, 18 - расшифровка количества

off_842C_00:
- D - I - - 0x02C43C 16:842C: 03        .byte $03   ; <う>
- D - I - - 0x02C43D 16:842D: 45 84     .word off_8445
- D - I - - 0x02C43F 16:842F: 5A 84     .word off_845A
- D - I - - 0x02C441 16:8431: 71 84     .word off_8471
- D - I - - 0x02C443 16:8433: 8A 84     .word off_848A
- D - I - - 0x02C445 16:8435: 9B 84     .word off_849B
- D - I - - 0x02C447 16:8437: A8 84     .word off_84A8
- D - I - - 0x02C449 16:8439: BB 84     .word off_84BB
- D - I - - 0x02C44B 16:843B: CA 84     .word off_84CA
- D - I - - 0x02C44D 16:843D: DF 84     .word off_84DF
- D - I - - 0x02C44F 16:843F: F2 84     .word off_84F2
- D - I - - 0x02C451 16:8441: FD 84     .word off_84FD
- D - I - - 0x02C453 16:8443: 0C 85     .word off_850C



off_8445:
- D - I - - 0x02C455 16:8445: 10        .byte $10   ; <た>
- D - I - - 0x02C456 16:8446: 01        .byte $01   ; <あ>
- D - I - - 0x02C457 16:8447: 0C        .byte $0C   ; <し>
- D - I - - 0x02C458 16:8448: 28        .byte $28   ; <り>
- D - I - - 0x02C459 16:8449: 10        .byte $10   ; <た>
- D - I - - 0x02C45A 16:844A: 29        .byte $29   ; <る>
- D - I - - 0x02C45B 16:844B: 14        .byte $14   ; <と>
- D - I - - 0x02C45C 16:844C: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C45D 16:844D: 08        .byte $08   ; <く>
- D - I - - 0x02C45E 16:844E: 02        .byte $02   ; <い>
- D - I - - 0x02C45F 16:844F: 0C        .byte $0C   ; <し>
- D - I - - 0x02C460 16:8450: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C461 16:8451: 10        .byte $10   ; <た>
- D - I - - 0x02C462 16:8452: 2B        .byte $2B   ; <ろ>

off_8453:
- D - I - - 0x02C463 16:8453: 08        .byte $08   ; <く>
- D - I - - 0x02C464 16:8454: 00        .byte $00
- D - I - - 0x02C465 16:8455: 0C        .byte $0C   ; <し>
- D - I - - 0x02C466 16:8456: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C467 16:8457: 10        .byte $10   ; <た>
- D - I - - 0x02C468 16:8458: 2D        .byte $2D   ; <を>

- D - I - - 0x02C469 16:8459: 01        .byte $01   ; <あ>



off_845A:
- D - I - - 0x02C46A 16:845A: 10        .byte $10   ; <た>
- D - I - - 0x02C46B 16:845B: 00        .byte $00
- D - I - - 0x02C46C 16:845C: 0C        .byte $0C   ; <し>
- D - I - - 0x02C46D 16:845D: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C46E 16:845E: 10        .byte $10   ; <た>
- D - I - - 0x02C46F 16:845F: 39        .byte $39   ; <6>
- D - I - - 0x02C470 16:8460: 14        .byte $14   ; <と>
- D - I - - 0x02C471 16:8461: 3C        .byte $3C   ; <9>

- D - I - - 0x02C472 16:8462: 10        .byte $10   ; <た>
- D - I - - 0x02C473 16:8463: 01        .byte $01   ; <あ>
- D - I - - 0x02C474 16:8464: 0C        .byte $0C   ; <し>
- D - I - - 0x02C475 16:8465: 38        .byte $38   ; <5>
- D - I - - 0x02C476 16:8466: 10        .byte $10   ; <た>
- D - I - - 0x02C477 16:8467: 3B        .byte $3B   ; <8>
- D - I - - 0x02C478 16:8468: 14        .byte $14   ; <と>
- D - I - - 0x02C479 16:8469: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02C47A 16:846A: 08        .byte $08   ; <く>
- D - I - - 0x02C47B 16:846B: 02        .byte $02   ; <い>
- D - I - - 0x02C47C 16:846C: 0C        .byte $0C   ; <し>
- D - I - - 0x02C47D 16:846D: 3A        .byte $3A   ; <7>
- D - I - - 0x02C47E 16:846E: 10        .byte $10   ; <た>
- D - I - - 0x02C47F 16:846F: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C480 16:8470: 01        .byte $01   ; <あ>



off_8471:
- D - I - - 0x02C481 16:8471: 00        .byte $00
- D - I - - 0x02C482 16:8472: 01        .byte $01   ; <あ>
- D - I - - 0x02C483 16:8473: 10        .byte $10   ; <た>
- D - I - - 0x02C484 16:8474: 6A        .byte $6A   ; <レ>

- D - I - - 0x02C485 16:8475: 00        .byte $00
- D - I - - 0x02C486 16:8476: 02        .byte $02   ; <い>
- D - I - - 0x02C487 16:8477: 10        .byte $10   ; <た>
- D - I - - 0x02C488 16:8478: 2B        .byte $2B   ; <ろ>

off_8479:
- D - I - - 0x02C489 16:8479: 08        .byte $08   ; <く>
- D - I - - 0x02C48A 16:847A: 00        .byte $00
- D - I - - 0x02C48B 16:847B: 0C        .byte $0C   ; <し>
- D - I - - 0x02C48C 16:847C: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C48D 16:847D: 10        .byte $10   ; <た>
- D - I - - 0x02C48E 16:847E: 68        .byte $68   ; <リ>

- D - I - - 0x02C48F 16:847F: 08        .byte $08   ; <く>
- D - I - - 0x02C490 16:8480: 01        .byte $01   ; <あ>
- D - I - - 0x02C491 16:8481: 0C        .byte $0C   ; <し>
- D - I - - 0x02C492 16:8482: 3F        .byte $3F   ; <•>
- D - I - - 0x02C493 16:8483: 14        .byte $14   ; <と>
- D - I - - 0x02C494 16:8484: 3D        .byte $3D   ; <+>

- D - I - - 0x02C495 16:8485: 00        .byte $00
- D - I - - 0x02C496 16:8486: 02        .byte $02   ; <い>
- D - I - - 0x02C497 16:8487: 0C        .byte $0C   ; <し>
- D - I - - 0x02C498 16:8488: 3A        .byte $3A   ; <7>

- D - I - - 0x02C499 16:8489: 01        .byte $01   ; <あ>



off_848A:
- D - I - - 0x02C49A 16:848A: 10        .byte $10   ; <た>
- D - I - - 0x02C49B 16:848B: 01        .byte $01   ; <あ>
- D - I - - 0x02C49C 16:848C: 0C        .byte $0C   ; <し>
- D - I - - 0x02C49D 16:848D: 69        .byte $69   ; <ル>
- D - I - - 0x02C49E 16:848E: 10        .byte $10   ; <た>
- D - I - - 0x02C49F 16:848F: 29        .byte $29   ; <る>
- D - I - - 0x02C4A0 16:8490: 14        .byte $14   ; <と>
- D - I - - 0x02C4A1 16:8491: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C4A2 16:8492: 08        .byte $08   ; <く>
- D - I - - 0x02C4A3 16:8493: 02        .byte $02   ; <い>
- D - I - - 0x02C4A4 16:8494: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4A5 16:8495: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02C4A6 16:8496: 10        .byte $10   ; <た>
- D - I - - 0x02C4A7 16:8497: 6E        .byte $6E   ; <ン>

- D - I - - 0x02C4A8 16:8498: 02        .byte $02   ; <い>
- D - I - - 0x02C4A9 16:8499: 53 84     .word off_8453



off_849B:
- D - I - - 0x02C4AB 16:849B: 08        .byte $08   ; <く>
- D - I - - 0x02C4AC 16:849C: 01        .byte $01   ; <あ>
- D - I - - 0x02C4AD 16:849D: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4AE 16:849E: 74        .byte $74   ; <ィ>
- D - I - - 0x02C4AF 16:849F: 10        .byte $10   ; <た>
- D - I - - 0x02C4B0 16:84A0: 75        .byte $75   ; <ェ>

off_84A1:
- D - I - - 0x02C4B1 16:84A1: 08        .byte $08   ; <く>
- D - I - - 0x02C4B2 16:84A2: 02        .byte $02   ; <い>
- D - I - - 0x02C4B3 16:84A3: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4B4 16:84A4: 76        .byte $76   ; <ォ>
- D - I - - 0x02C4B5 16:84A5: 10        .byte $10   ; <た>
- D - I - - 0x02C4B6 16:84A6: 77        .byte $77   ; <:>

- D - I - - 0x02C4B7 16:84A7: 01        .byte $01   ; <あ>



off_84A8:
- D - I - - 0x02C4B8 16:84A8: 08        .byte $08   ; <く>
- D - I - - 0x02C4B9 16:84A9: 01        .byte $01   ; <あ>
- D - I - - 0x02C4BA 16:84AA: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4BB 16:84AB: 70        .byte $70   ; <ャ>
- D - I - - 0x02C4BC 16:84AC: 10        .byte $10   ; <た>
- D - I - - 0x02C4BD 16:84AD: 71        .byte $71   ; <ュ>

- D - I - - 0x02C4BE 16:84AE: 08        .byte $08   ; <く>
- D - I - - 0x02C4BF 16:84AF: 02        .byte $02   ; <い>
- D - I - - 0x02C4C0 16:84B0: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4C1 16:84B1: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C4C2 16:84B2: 10        .byte $10   ; <た>
- D - I - - 0x02C4C3 16:84B3: 2B        .byte $2B   ; <ろ>
; продолжение


off_84B4:
- D - I - - 0x02C4C4 16:84B4: 08        .byte $08   ; <く>
- D - I - - 0x02C4C5 16:84B5: 00        .byte $00
- D - I - - 0x02C4C6 16:84B6: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4C7 16:84B7: 65        .byte $65   ; <ユ>
- D - I - - 0x02C4C8 16:84B8: 10        .byte $10   ; <た>
- D - I - - 0x02C4C9 16:84B9: 67        .byte $67   ; <ラ>

- D - I - - 0x02C4CA 16:84BA: 01        .byte $01   ; <あ>



off_84BB:
- D - I - - 0x02C4CB 16:84BB: 08        .byte $08   ; <く>
- D - I - - 0x02C4CC 16:84BC: 01        .byte $01   ; <あ>
- D - I - - 0x02C4CD 16:84BD: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4CE 16:84BE: 7C        .byte $7C   ; <~>
- D - I - - 0x02C4CF 16:84BF: 10        .byte $10   ; <た>
- D - I - - 0x02C4D0 16:84C0: 7D        .byte $7D   ; <ー>

- D - I - - 0x02C4D1 16:84C1: 08        .byte $08   ; <く>
- D - I - - 0x02C4D2 16:84C2: 02        .byte $02   ; <い>
- D - I - - 0x02C4D3 16:84C3: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4D4 16:84C4: 7E        .byte $7E   ; <.>
- D - I - - 0x02C4D5 16:84C5: 10        .byte $10   ; <た>
- D - I - - 0x02C4D6 16:84C6: 7F        .byte $7F   ; <,>

- D - I - - 0x02C4D7 16:84C7: 02        .byte $02   ; <い>
- D - I - - 0x02C4D8 16:84C8: B4 84     .word off_84B4



off_84CA:
- D - I - - 0x02C4DA 16:84CA: 08        .byte $08   ; <く>
- D - I - - 0x02C4DB 16:84CB: 00        .byte $00
- D - I - - 0x02C4DC 16:84CC: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4DD 16:84CD: 72        .byte $72   ; <ョ>
- D - I - - 0x02C4DE 16:84CE: 10        .byte $10   ; <た>
- D - I - - 0x02C4DF 16:84CF: 73        .byte $73   ; <ヮ>

- D - I - - 0x02C4E0 16:84D0: 10        .byte $10   ; <た>
- D - I - - 0x02C4E1 16:84D1: 01        .byte $01   ; <あ>
- D - I - - 0x02C4E2 16:84D2: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4E3 16:84D3: 78        .byte $78   ; <?>
- D - I - - 0x02C4E4 16:84D4: 10        .byte $10   ; <た>
- D - I - - 0x02C4E5 16:84D5: 79        .byte $79   ; <!>
- D - I - - 0x02C4E6 16:84D6: 14        .byte $14   ; <と>
- D - I - - 0x02C4E7 16:84D7: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02C4E8 16:84D8: 08        .byte $08   ; <く>
- D - I - - 0x02C4E9 16:84D9: 02        .byte $02   ; <い>
- D - I - - 0x02C4EA 16:84DA: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4EB 16:84DB: 7A        .byte $7A   ; <、>
- D - I - - 0x02C4EC 16:84DC: 10        .byte $10   ; <た>
- D - I - - 0x02C4ED 16:84DD: 7B        .byte $7B   ; <。>

- D - I - - 0x02C4EE 16:84DE: 01        .byte $01   ; <あ>



off_84DF:
- D - I - - 0x02C4EF 16:84DF: 08        .byte $08   ; <く>
- D - I - - 0x02C4F0 16:84E0: 00        .byte $00
- D - I - - 0x02C4F1 16:84E1: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4F2 16:84E2: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02C4F3 16:84E3: 10        .byte $10   ; <た>
- D - I - - 0x02C4F4 16:84E4: 67        .byte $67   ; <ラ>

- D - I - - 0x02C4F5 16:84E5: 08        .byte $08   ; <く>
- D - I - - 0x02C4F6 16:84E6: 01        .byte $01   ; <あ>
- D - I - - 0x02C4F7 16:84E7: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4F8 16:84E8: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02C4F9 16:84E9: 10        .byte $10   ; <た>
- D - I - - 0x02C4FA 16:84EA: 81        .byte $81   ; <A>

- D - I - - 0x02C4FB 16:84EB: 08        .byte $08   ; <く>
- D - I - - 0x02C4FC 16:84EC: 02        .byte $02   ; <い>
- D - I - - 0x02C4FD 16:84ED: 0C        .byte $0C   ; <し>
- D - I - - 0x02C4FE 16:84EE: 3A        .byte $3A   ; <7>
- D - I - - 0x02C4FF 16:84EF: 10        .byte $10   ; <た>
- D - I - - 0x02C500 16:84F0: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C501 16:84F1: 01        .byte $01   ; <あ>



off_84F2:
- D - I - - 0x02C502 16:84F2: 10        .byte $10   ; <た>
- D - I - - 0x02C503 16:84F3: 01        .byte $01   ; <あ>
- D - I - - 0x02C504 16:84F4: 0C        .byte $0C   ; <し>
- D - I - - 0x02C505 16:84F5: 74        .byte $74   ; <ィ>
- D - I - - 0x02C506 16:84F6: 10        .byte $10   ; <た>
- D - I - - 0x02C507 16:84F7: 82        .byte $82   ; <B>
- D - I - - 0x02C508 16:84F8: 14        .byte $14   ; <と>
- D - I - - 0x02C509 16:84F9: 83        .byte $83   ; <C>

- D - I - - 0x02C50A 16:84FA: 02        .byte $02   ; <い>
- D - I - - 0x02C50B 16:84FB: A1 84     .word off_84A1



off_84FD:
- D - I - - 0x02C50D 16:84FD: 08        .byte $08   ; <く>
- D - I - - 0x02C50E 16:84FE: 00        .byte $00
- D - I - - 0x02C50F 16:84FF: 0C        .byte $0C   ; <し>
- D - I - - 0x02C510 16:8500: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C511 16:8501: 10        .byte $10   ; <た>
- D - I - - 0x02C512 16:8502: 67        .byte $67   ; <ラ>

- D - I - - 0x02C513 16:8503: 08        .byte $08   ; <く>
- D - I - - 0x02C514 16:8504: 01        .byte $01   ; <あ>
- D - I - - 0x02C515 16:8505: 0C        .byte $0C   ; <し>
- D - I - - 0x02C516 16:8506: 28        .byte $28   ; <り>
- D - I - - 0x02C517 16:8507: 10        .byte $10   ; <た>
- D - I - - 0x02C518 16:8508: 81        .byte $81   ; <A>

- D - I - - 0x02C519 16:8509: 02        .byte $02   ; <い>
- D - I - - 0x02C51A 16:850A: A1 84     .word off_84A1



off_850C:
- D - I - - 0x02C51C 16:850C: 00        .byte $00
- D - I - - 0x02C51D 16:850D: 01        .byte $01   ; <あ>
- D - I - - 0x02C51E 16:850E: 10        .byte $10   ; <た>
- D - I - - 0x02C51F 16:850F: 84        .byte $84   ; <D>

- D - I - - 0x02C520 16:8510: 00        .byte $00
- D - I - - 0x02C521 16:8511: 02        .byte $02   ; <い>
- D - I - - 0x02C522 16:8512: 10        .byte $10   ; <た>
- D - I - - 0x02C523 16:8513: 86        .byte $86   ; <F>

- D - I - - 0x02C524 16:8514: 02        .byte $02   ; <い>
- D - I - - 0x02C525 16:8515: 79 84     .word off_8479



off_8517_01:
- D - I - - 0x02C527 16:8517: 03        .byte $03   ; <う>
- D - I - - 0x02C528 16:8518: 30 85     .word off_8530
- D - I - - 0x02C52A 16:851A: 45 85     .word off_8545
- D - I - - 0x02C52C 16:851C: 5C 85     .word off_855C
- D - I - - 0x02C52E 16:851E: 75 85     .word off_8575
- D - I - - 0x02C530 16:8520: 86 85     .word off_8586
- D - I - - 0x02C532 16:8522: 93 85     .word off_8593
- D - I - - 0x02C534 16:8524: A6 85     .word off_85A6
- D - I - - 0x02C536 16:8526: B5 85     .word off_85B5
- D - I - - 0x02C538 16:8528: CA 85     .word off_85CA
- D - I - - 0x02C53A 16:852A: DD 85     .word off_85DD
- D - I - - 0x02C53C 16:852C: E8 85     .word off_85E8
- D - I - - 0x02C53E 16:852E: F7 85     .word off_85F7



off_8530:
- D - I - - 0x02C540 16:8530: 10        .byte $10   ; <た>
- D - I - - 0x02C541 16:8531: 11        .byte $11   ; <ち>
- D - I - - 0x02C542 16:8532: 34        .byte $34   ; <1>
- D - I - - 0x02C543 16:8533: 28        .byte $28   ; <り>
- D - I - - 0x02C544 16:8534: 38        .byte $38   ; <5>
- D - I - - 0x02C545 16:8535: 29        .byte $29   ; <る>
- D - I - - 0x02C546 16:8536: 3C        .byte $3C   ; <9>
- D - I - - 0x02C547 16:8537: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C548 16:8538: 08        .byte $08   ; <く>
- D - I - - 0x02C549 16:8539: 12        .byte $12   ; <つ>
- D - I - - 0x02C54A 16:853A: 34        .byte $34   ; <1>
- D - I - - 0x02C54B 16:853B: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C54C 16:853C: 38        .byte $38   ; <5>
- D - I - - 0x02C54D 16:853D: 2B        .byte $2B   ; <ろ>

off_853E:
- D - I - - 0x02C54E 16:853E: 08        .byte $08   ; <く>
- D - I - - 0x02C54F 16:853F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C550 16:8540: 34        .byte $34   ; <1>
- D - I - - 0x02C551 16:8541: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C552 16:8542: 38        .byte $38   ; <5>
- D - I - - 0x02C553 16:8543: 2D        .byte $2D   ; <を>

- D - I - - 0x02C554 16:8544: 01        .byte $01   ; <あ>



off_8545:
- D - I - - 0x02C555 16:8545: 10        .byte $10   ; <た>
- D - I - - 0x02C556 16:8546: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C557 16:8547: 34        .byte $34   ; <1>
- D - I - - 0x02C558 16:8548: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C559 16:8549: 38        .byte $38   ; <5>
- D - I - - 0x02C55A 16:854A: 39        .byte $39   ; <6>
- D - I - - 0x02C55B 16:854B: 3C        .byte $3C   ; <9>
- D - I - - 0x02C55C 16:854C: 3C        .byte $3C   ; <9>

- D - I - - 0x02C55D 16:854D: 10        .byte $10   ; <た>
- D - I - - 0x02C55E 16:854E: 11        .byte $11   ; <ち>
- D - I - - 0x02C55F 16:854F: 34        .byte $34   ; <1>
- D - I - - 0x02C560 16:8550: 38        .byte $38   ; <5>
- D - I - - 0x02C561 16:8551: 38        .byte $38   ; <5>
- D - I - - 0x02C562 16:8552: 3B        .byte $3B   ; <8>
- D - I - - 0x02C563 16:8553: 3C        .byte $3C   ; <9>
- D - I - - 0x02C564 16:8554: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02C565 16:8555: 08        .byte $08   ; <く>
- D - I - - 0x02C566 16:8556: 12        .byte $12   ; <つ>
- D - I - - 0x02C567 16:8557: 34        .byte $34   ; <1>
- D - I - - 0x02C568 16:8558: 3A        .byte $3A   ; <7>
- D - I - - 0x02C569 16:8559: 38        .byte $38   ; <5>
- D - I - - 0x02C56A 16:855A: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C56B 16:855B: 01        .byte $01   ; <あ>



off_855C:
- D - I - - 0x02C56C 16:855C: 00        .byte $00
- D - I - - 0x02C56D 16:855D: 11        .byte $11   ; <ち>
- D - I - - 0x02C56E 16:855E: 38        .byte $38   ; <5>
- D - I - - 0x02C56F 16:855F: 6A        .byte $6A   ; <レ>

- D - I - - 0x02C570 16:8560: 00        .byte $00
- D - I - - 0x02C571 16:8561: 12        .byte $12   ; <つ>
- D - I - - 0x02C572 16:8562: 38        .byte $38   ; <5>
- D - I - - 0x02C573 16:8563: 2B        .byte $2B   ; <ろ>

off_8564:
- D - I - - 0x02C574 16:8564: 08        .byte $08   ; <く>
- D - I - - 0x02C575 16:8565: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C576 16:8566: 34        .byte $34   ; <1>
- D - I - - 0x02C577 16:8567: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C578 16:8568: 38        .byte $38   ; <5>
- D - I - - 0x02C579 16:8569: 68        .byte $68   ; <リ>

- D - I - - 0x02C57A 16:856A: 08        .byte $08   ; <く>
- D - I - - 0x02C57B 16:856B: 11        .byte $11   ; <ち>
- D - I - - 0x02C57C 16:856C: 34        .byte $34   ; <1>
- D - I - - 0x02C57D 16:856D: 3F        .byte $3F   ; <•>
- D - I - - 0x02C57E 16:856E: 3C        .byte $3C   ; <9>
- D - I - - 0x02C57F 16:856F: 3D        .byte $3D   ; <+>

- D - I - - 0x02C580 16:8570: 00        .byte $00
- D - I - - 0x02C581 16:8571: 12        .byte $12   ; <つ>
- D - I - - 0x02C582 16:8572: 34        .byte $34   ; <1>
- D - I - - 0x02C583 16:8573: 3A        .byte $3A   ; <7>

- D - I - - 0x02C584 16:8574: 01        .byte $01   ; <あ>



off_8575:
- D - I - - 0x02C585 16:8575: 10        .byte $10   ; <た>
- D - I - - 0x02C586 16:8576: 11        .byte $11   ; <ち>
- D - I - - 0x02C587 16:8577: 34        .byte $34   ; <1>
- D - I - - 0x02C588 16:8578: 69        .byte $69   ; <ル>
- D - I - - 0x02C589 16:8579: 38        .byte $38   ; <5>
- D - I - - 0x02C58A 16:857A: 29        .byte $29   ; <る>
- D - I - - 0x02C58B 16:857B: 3C        .byte $3C   ; <9>
- D - I - - 0x02C58C 16:857C: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C58D 16:857D: 08        .byte $08   ; <く>
- D - I - - 0x02C58E 16:857E: 12        .byte $12   ; <つ>
- D - I - - 0x02C58F 16:857F: 34        .byte $34   ; <1>
- D - I - - 0x02C590 16:8580: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02C591 16:8581: 38        .byte $38   ; <5>
- D - I - - 0x02C592 16:8582: 6E        .byte $6E   ; <ン>

- D - I - - 0x02C593 16:8583: 02        .byte $02   ; <い>
- D - I - - 0x02C594 16:8584: 3E 85     .word off_853E



off_8586:
- D - I - - 0x02C596 16:8586: 08        .byte $08   ; <く>
- D - I - - 0x02C597 16:8587: 11        .byte $11   ; <ち>
- D - I - - 0x02C598 16:8588: 34        .byte $34   ; <1>
- D - I - - 0x02C599 16:8589: 74        .byte $74   ; <ィ>
- D - I - - 0x02C59A 16:858A: 38        .byte $38   ; <5>
- D - I - - 0x02C59B 16:858B: 75        .byte $75   ; <ェ>

off_858C:
- D - I - - 0x02C59C 16:858C: 08        .byte $08   ; <く>
- D - I - - 0x02C59D 16:858D: 12        .byte $12   ; <つ>
- D - I - - 0x02C59E 16:858E: 34        .byte $34   ; <1>
- D - I - - 0x02C59F 16:858F: 76        .byte $76   ; <ォ>
- D - I - - 0x02C5A0 16:8590: 38        .byte $38   ; <5>
- D - I - - 0x02C5A1 16:8591: 77        .byte $77   ; <:>

- D - I - - 0x02C5A2 16:8592: 01        .byte $01   ; <あ>



off_8593:
- D - I - - 0x02C5A3 16:8593: 08        .byte $08   ; <く>
- D - I - - 0x02C5A4 16:8594: 11        .byte $11   ; <ち>
- D - I - - 0x02C5A5 16:8595: 34        .byte $34   ; <1>
- D - I - - 0x02C5A6 16:8596: 70        .byte $70   ; <ャ>
- D - I - - 0x02C5A7 16:8597: 38        .byte $38   ; <5>
- D - I - - 0x02C5A8 16:8598: 71        .byte $71   ; <ュ>

- D - I - - 0x02C5A9 16:8599: 08        .byte $08   ; <く>
- D - I - - 0x02C5AA 16:859A: 12        .byte $12   ; <つ>
- D - I - - 0x02C5AB 16:859B: 34        .byte $34   ; <1>
- D - I - - 0x02C5AC 16:859C: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C5AD 16:859D: 38        .byte $38   ; <5>
- D - I - - 0x02C5AE 16:859E: 2B        .byte $2B   ; <ろ>
; продолжение


off_859F:
- D - I - - 0x02C5AF 16:859F: 08        .byte $08   ; <く>
- D - I - - 0x02C5B0 16:85A0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C5B1 16:85A1: 34        .byte $34   ; <1>
- D - I - - 0x02C5B2 16:85A2: 65        .byte $65   ; <ユ>
- D - I - - 0x02C5B3 16:85A3: 38        .byte $38   ; <5>
- D - I - - 0x02C5B4 16:85A4: 67        .byte $67   ; <ラ>

- D - I - - 0x02C5B5 16:85A5: 01        .byte $01   ; <あ>



off_85A6:
- D - I - - 0x02C5B6 16:85A6: 08        .byte $08   ; <く>
- D - I - - 0x02C5B7 16:85A7: 11        .byte $11   ; <ち>
- D - I - - 0x02C5B8 16:85A8: 34        .byte $34   ; <1>
- D - I - - 0x02C5B9 16:85A9: 7C        .byte $7C   ; <~>
- D - I - - 0x02C5BA 16:85AA: 38        .byte $38   ; <5>
- D - I - - 0x02C5BB 16:85AB: 7D        .byte $7D   ; <ー>

- D - I - - 0x02C5BC 16:85AC: 08        .byte $08   ; <く>
- D - I - - 0x02C5BD 16:85AD: 12        .byte $12   ; <つ>
- D - I - - 0x02C5BE 16:85AE: 34        .byte $34   ; <1>
- D - I - - 0x02C5BF 16:85AF: 7E        .byte $7E   ; <.>
- D - I - - 0x02C5C0 16:85B0: 38        .byte $38   ; <5>
- D - I - - 0x02C5C1 16:85B1: 7F        .byte $7F   ; <,>

- D - I - - 0x02C5C2 16:85B2: 02        .byte $02   ; <い>
- D - I - - 0x02C5C3 16:85B3: 9F 85     .word off_859F



off_85B5:
- D - I - - 0x02C5C5 16:85B5: 08        .byte $08   ; <く>
- D - I - - 0x02C5C6 16:85B6: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C5C7 16:85B7: 34        .byte $34   ; <1>
- D - I - - 0x02C5C8 16:85B8: 72        .byte $72   ; <ョ>
- D - I - - 0x02C5C9 16:85B9: 38        .byte $38   ; <5>
- D - I - - 0x02C5CA 16:85BA: 73        .byte $73   ; <ヮ>

- D - I - - 0x02C5CB 16:85BB: 10        .byte $10   ; <た>
- D - I - - 0x02C5CC 16:85BC: 11        .byte $11   ; <ち>
- D - I - - 0x02C5CD 16:85BD: 34        .byte $34   ; <1>
- D - I - - 0x02C5CE 16:85BE: 78        .byte $78   ; <?>
- D - I - - 0x02C5CF 16:85BF: 38        .byte $38   ; <5>
- D - I - - 0x02C5D0 16:85C0: 79        .byte $79   ; <!>
- D - I - - 0x02C5D1 16:85C1: 3C        .byte $3C   ; <9>
- D - I - - 0x02C5D2 16:85C2: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02C5D3 16:85C3: 08        .byte $08   ; <く>
- D - I - - 0x02C5D4 16:85C4: 12        .byte $12   ; <つ>
- D - I - - 0x02C5D5 16:85C5: 34        .byte $34   ; <1>
- D - I - - 0x02C5D6 16:85C6: 7A        .byte $7A   ; <、>
- D - I - - 0x02C5D7 16:85C7: 38        .byte $38   ; <5>
- D - I - - 0x02C5D8 16:85C8: 7B        .byte $7B   ; <。>

- D - I - - 0x02C5D9 16:85C9: 01        .byte $01   ; <あ>



off_85CA:
- D - I - - 0x02C5DA 16:85CA: 08        .byte $08   ; <く>
- D - I - - 0x02C5DB 16:85CB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C5DC 16:85CC: 34        .byte $34   ; <1>
- D - I - - 0x02C5DD 16:85CD: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02C5DE 16:85CE: 38        .byte $38   ; <5>
- D - I - - 0x02C5DF 16:85CF: 67        .byte $67   ; <ラ>

- D - I - - 0x02C5E0 16:85D0: 08        .byte $08   ; <く>
- D - I - - 0x02C5E1 16:85D1: 11        .byte $11   ; <ち>
- D - I - - 0x02C5E2 16:85D2: 34        .byte $34   ; <1>
- D - I - - 0x02C5E3 16:85D3: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02C5E4 16:85D4: 38        .byte $38   ; <5>
- D - I - - 0x02C5E5 16:85D5: 81        .byte $81   ; <A>

- D - I - - 0x02C5E6 16:85D6: 08        .byte $08   ; <く>
- D - I - - 0x02C5E7 16:85D7: 12        .byte $12   ; <つ>
- D - I - - 0x02C5E8 16:85D8: 34        .byte $34   ; <1>
- D - I - - 0x02C5E9 16:85D9: 3A        .byte $3A   ; <7>
- D - I - - 0x02C5EA 16:85DA: 38        .byte $38   ; <5>
- D - I - - 0x02C5EB 16:85DB: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C5EC 16:85DC: 01        .byte $01   ; <あ>



off_85DD:
- D - I - - 0x02C5ED 16:85DD: 10        .byte $10   ; <た>
- D - I - - 0x02C5EE 16:85DE: 11        .byte $11   ; <ち>
- D - I - - 0x02C5EF 16:85DF: 34        .byte $34   ; <1>
- D - I - - 0x02C5F0 16:85E0: 74        .byte $74   ; <ィ>
- D - I - - 0x02C5F1 16:85E1: 38        .byte $38   ; <5>
- D - I - - 0x02C5F2 16:85E2: 82        .byte $82   ; <B>
- D - I - - 0x02C5F3 16:85E3: 3C        .byte $3C   ; <9>
- D - I - - 0x02C5F4 16:85E4: 83        .byte $83   ; <C>

- D - I - - 0x02C5F5 16:85E5: 02        .byte $02   ; <い>
- D - I - - 0x02C5F6 16:85E6: 8C 85     .word off_858C



off_85E8:
- D - I - - 0x02C5F8 16:85E8: 08        .byte $08   ; <く>
- D - I - - 0x02C5F9 16:85E9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C5FA 16:85EA: 34        .byte $34   ; <1>
- D - I - - 0x02C5FB 16:85EB: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C5FC 16:85EC: 38        .byte $38   ; <5>
- D - I - - 0x02C5FD 16:85ED: 67        .byte $67   ; <ラ>

- D - I - - 0x02C5FE 16:85EE: 08        .byte $08   ; <く>
- D - I - - 0x02C5FF 16:85EF: 11        .byte $11   ; <ち>
- D - I - - 0x02C600 16:85F0: 34        .byte $34   ; <1>
- D - I - - 0x02C601 16:85F1: 28        .byte $28   ; <り>
- D - I - - 0x02C602 16:85F2: 38        .byte $38   ; <5>
- D - I - - 0x02C603 16:85F3: 81        .byte $81   ; <A>

- D - I - - 0x02C604 16:85F4: 02        .byte $02   ; <い>
- D - I - - 0x02C605 16:85F5: 8C 85     .word off_858C



off_85F7:
- D - I - - 0x02C607 16:85F7: 00        .byte $00
- D - I - - 0x02C608 16:85F8: 11        .byte $11   ; <ち>
- D - I - - 0x02C609 16:85F9: 38        .byte $38   ; <5>
- D - I - - 0x02C60A 16:85FA: 84        .byte $84   ; <D>

- D - I - - 0x02C60B 16:85FB: 00        .byte $00
- D - I - - 0x02C60C 16:85FC: 12        .byte $12   ; <つ>
- D - I - - 0x02C60D 16:85FD: 38        .byte $38   ; <5>
- D - I - - 0x02C60E 16:85FE: 86        .byte $86   ; <F>

- D - I - - 0x02C60F 16:85FF: 02        .byte $02   ; <い>
- D - I - - 0x02C610 16:8600: 64 85     .word off_8564



off_8602_02:
- D - I - - 0x02C612 16:8602: 03        .byte $03   ; <う>
- D - I - - 0x02C613 16:8603: 1B 86     .word off_861B
- D - I - - 0x02C615 16:8605: 30 86     .word off_8630
- D - I - - 0x02C617 16:8607: 47 86     .word off_8647
- D - I - - 0x02C619 16:8609: 60 86     .word off_8660
- D - I - - 0x02C61B 16:860B: 71 86     .word off_8671
- D - I - - 0x02C61D 16:860D: 7E 86     .word off_867E
- D - I - - 0x02C61F 16:860F: 91 86     .word off_8691
- D - I - - 0x02C621 16:8611: A1 86     .word off_86A1
- D - I - - 0x02C623 16:8613: B6 86     .word off_86B6
- D - I - - 0x02C625 16:8615: C9 86     .word off_86C9
- D - I - - 0x02C627 16:8617: D4 86     .word off_86D4
- D - I - - 0x02C629 16:8619: E3 86     .word off_86E3



off_861B:
- D - I - - 0x02C62B 16:861B: 10        .byte $10   ; <た>
- D - I - - 0x02C62C 16:861C: 01        .byte $01   ; <あ>
- D - I - - 0x02C62D 16:861D: 34        .byte $34   ; <1>
- D - I - - 0x02C62E 16:861E: 28        .byte $28   ; <り>
- D - I - - 0x02C62F 16:861F: 38        .byte $38   ; <5>
- D - I - - 0x02C630 16:8620: 29        .byte $29   ; <る>
- D - I - - 0x02C631 16:8621: 3C        .byte $3C   ; <9>
- D - I - - 0x02C632 16:8622: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C633 16:8623: 08        .byte $08   ; <く>
- D - I - - 0x02C634 16:8624: 02        .byte $02   ; <い>
- D - I - - 0x02C635 16:8625: 34        .byte $34   ; <1>
- D - I - - 0x02C636 16:8626: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C637 16:8627: 38        .byte $38   ; <5>
- D - I - - 0x02C638 16:8628: 2B        .byte $2B   ; <ろ>
; продолжение


off_8629:
- D - I - - 0x02C639 16:8629: 08        .byte $08   ; <く>
- D - I - - 0x02C63A 16:862A: 00        .byte $00
- D - I - - 0x02C63B 16:862B: 34        .byte $34   ; <1>
- D - I - - 0x02C63C 16:862C: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C63D 16:862D: 38        .byte $38   ; <5>
- D - I - - 0x02C63E 16:862E: 2D        .byte $2D   ; <を>

- D - I - - 0x02C63F 16:862F: 01        .byte $01   ; <あ>



off_8630:
- D - I - - 0x02C640 16:8630: 10        .byte $10   ; <た>
- D - I - - 0x02C641 16:8631: 00        .byte $00
- D - I - - 0x02C642 16:8632: 34        .byte $34   ; <1>
- D - I - - 0x02C643 16:8633: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C644 16:8634: 38        .byte $38   ; <5>
- D - I - - 0x02C645 16:8635: 39        .byte $39   ; <6>
- D - I - - 0x02C646 16:8636: 3C        .byte $3C   ; <9>
- D - I - - 0x02C647 16:8637: 3C        .byte $3C   ; <9>

- D - I - - 0x02C648 16:8638: 10        .byte $10   ; <た>
- D - I - - 0x02C649 16:8639: 01        .byte $01   ; <あ>
- D - I - - 0x02C64A 16:863A: 34        .byte $34   ; <1>
- D - I - - 0x02C64B 16:863B: 38        .byte $38   ; <5>
- D - I - - 0x02C64C 16:863C: 38        .byte $38   ; <5>
- D - I - - 0x02C64D 16:863D: 3B        .byte $3B   ; <8>
- D - I - - 0x02C64E 16:863E: 3C        .byte $3C   ; <9>
- D - I - - 0x02C64F 16:863F: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02C650 16:8640: 08        .byte $08   ; <く>
- D - I - - 0x02C651 16:8641: 02        .byte $02   ; <い>
- D - I - - 0x02C652 16:8642: 34        .byte $34   ; <1>
- D - I - - 0x02C653 16:8643: 3A        .byte $3A   ; <7>
- D - I - - 0x02C654 16:8644: 38        .byte $38   ; <5>
- D - I - - 0x02C655 16:8645: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C656 16:8646: 01        .byte $01   ; <あ>



off_8647:
- D - I - - 0x02C657 16:8647: 00        .byte $00
- D - I - - 0x02C658 16:8648: 01        .byte $01   ; <あ>
- D - I - - 0x02C659 16:8649: 38        .byte $38   ; <5>
- D - I - - 0x02C65A 16:864A: 6A        .byte $6A   ; <レ>

- D - I - - 0x02C65B 16:864B: 00        .byte $00
- D - I - - 0x02C65C 16:864C: 02        .byte $02   ; <い>
- D - I - - 0x02C65D 16:864D: 38        .byte $38   ; <5>
- D - I - - 0x02C65E 16:864E: 2B        .byte $2B   ; <ろ>
; продолжение


off_864F:
- D - I - - 0x02C65F 16:864F: 08        .byte $08   ; <く>
- D - I - - 0x02C660 16:8650: 00        .byte $00
- D - I - - 0x02C661 16:8651: 34        .byte $34   ; <1>
- D - I - - 0x02C662 16:8652: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C663 16:8653: 38        .byte $38   ; <5>
- D - I - - 0x02C664 16:8654: 68        .byte $68   ; <リ>

- D - I - - 0x02C665 16:8655: 08        .byte $08   ; <く>
- D - I - - 0x02C666 16:8656: 01        .byte $01   ; <あ>
- D - I - - 0x02C667 16:8657: 34        .byte $34   ; <1>
- D - I - - 0x02C668 16:8658: 3F        .byte $3F   ; <•>
- D - I - - 0x02C669 16:8659: 3C        .byte $3C   ; <9>
- D - I - - 0x02C66A 16:865A: 3D        .byte $3D   ; <+>

- D - I - - 0x02C66B 16:865B: 00        .byte $00
- D - I - - 0x02C66C 16:865C: 02        .byte $02   ; <い>
- D - I - - 0x02C66D 16:865D: 34        .byte $34   ; <1>
- D - I - - 0x02C66E 16:865E: 3A        .byte $3A   ; <7>

- D - I - - 0x02C66F 16:865F: 01        .byte $01   ; <あ>



off_8660:
- D - I - - 0x02C670 16:8660: 10        .byte $10   ; <た>
- D - I - - 0x02C671 16:8661: 01        .byte $01   ; <あ>
- D - I - - 0x02C672 16:8662: 34        .byte $34   ; <1>
- D - I - - 0x02C673 16:8663: 69        .byte $69   ; <ル>
- D - I - - 0x02C674 16:8664: 38        .byte $38   ; <5>
- D - I - - 0x02C675 16:8665: 29        .byte $29   ; <る>
- D - I - - 0x02C676 16:8666: 3C        .byte $3C   ; <9>
- D - I - - 0x02C677 16:8667: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C678 16:8668: 08        .byte $08   ; <く>
- D - I - - 0x02C679 16:8669: 02        .byte $02   ; <い>
- D - I - - 0x02C67A 16:866A: 34        .byte $34   ; <1>
- D - I - - 0x02C67B 16:866B: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02C67C 16:866C: 38        .byte $38   ; <5>
- D - I - - 0x02C67D 16:866D: 6E        .byte $6E   ; <ン>

- D - I - - 0x02C67E 16:866E: 02        .byte $02   ; <い>
- D - I - - 0x02C67F 16:866F: 29 86     .word off_8629



off_8671:
- D - I - - 0x02C681 16:8671: 08        .byte $08   ; <く>
- D - I - - 0x02C682 16:8672: 01        .byte $01   ; <あ>
- D - I - - 0x02C683 16:8673: 34        .byte $34   ; <1>
- D - I - - 0x02C684 16:8674: 74        .byte $74   ; <ィ>
- D - I - - 0x02C685 16:8675: 38        .byte $38   ; <5>
- D - I - - 0x02C686 16:8676: 75        .byte $75   ; <ェ>

off_8677:
- D - I - - 0x02C687 16:8677: 08        .byte $08   ; <く>
- D - I - - 0x02C688 16:8678: 02        .byte $02   ; <い>
- D - I - - 0x02C689 16:8679: 34        .byte $34   ; <1>
- D - I - - 0x02C68A 16:867A: 76        .byte $76   ; <ォ>
- D - I - - 0x02C68B 16:867B: 38        .byte $38   ; <5>
- D - I - - 0x02C68C 16:867C: 77        .byte $77   ; <:>

- D - I - - 0x02C68D 16:867D: 01        .byte $01   ; <あ>



off_867E:
- D - I - - 0x02C68E 16:867E: 08        .byte $08   ; <く>
- D - I - - 0x02C68F 16:867F: 01        .byte $01   ; <あ>
- D - I - - 0x02C690 16:8680: 34        .byte $34   ; <1>
- D - I - - 0x02C691 16:8681: 70        .byte $70   ; <ャ>
- D - I - - 0x02C692 16:8682: 38        .byte $38   ; <5>
- D - I - - 0x02C693 16:8683: 71        .byte $71   ; <ュ>

- D - I - - 0x02C694 16:8684: 08        .byte $08   ; <く>
- D - I - - 0x02C695 16:8685: 02        .byte $02   ; <い>
- D - I - - 0x02C696 16:8686: 34        .byte $34   ; <1>
- D - I - - 0x02C697 16:8687: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C698 16:8688: 38        .byte $38   ; <5>
- D - I - - 0x02C699 16:8689: 2B        .byte $2B   ; <ろ>
; продолжение


off_868A:
- D - I - - 0x02C69A 16:868A: 08        .byte $08   ; <く>
- D - I - - 0x02C69B 16:868B: 00        .byte $00
- D - I - - 0x02C69C 16:868C: 34        .byte $34   ; <1>
- D - I - - 0x02C69D 16:868D: 65        .byte $65   ; <ユ>
- D - I - - 0x02C69E 16:868E: 38        .byte $38   ; <5>
- D - I - - 0x02C69F 16:868F: 67        .byte $67   ; <ラ>

- D - I - - 0x02C6A0 16:8690: 01        .byte $01   ; <あ>



off_8691:
- D - I - - 0x02C6A1 16:8691: 08        .byte $08   ; <く>
- D - I - - 0x02C6A2 16:8692: 01        .byte $01   ; <あ>
- D - I - - 0x02C6A3 16:8693: 34        .byte $34   ; <1>
- D - I - - 0x02C6A4 16:8694: 7C        .byte $7C   ; <~>
- D - I - - 0x02C6A5 16:8695: 38        .byte $38   ; <5>
- D - I - - 0x02C6A6 16:8696: 7D        .byte $7D   ; <ー>

- D - I - - 0x02C6A7 16:8697: 08        .byte $08   ; <く>
- D - I - - 0x02C6A8 16:8698: 02        .byte $02   ; <い>
- D - I - - 0x02C6A9 16:8699: 34        .byte $34   ; <1>
- D - I - - 0x02C6AA 16:869A: 7E        .byte $7E   ; <.>
- D - I - - 0x02C6AB 16:869B: 38        .byte $38   ; <5>
- D - I - - 0x02C6AC 16:869C: 7F        .byte $7F   ; <,>

- D - I - - 0x02C6AD 16:869D: 02        .byte $02   ; <い>
- D - I - - 0x02C6AE 16:869E: 8A 86     .word off_868A



off_86A1:
- D - I - - 0x02C6B1 16:86A1: 08        .byte $08   ; <く>
- D - I - - 0x02C6B2 16:86A2: 00        .byte $00
- D - I - - 0x02C6B3 16:86A3: 34        .byte $34   ; <1>
- D - I - - 0x02C6B4 16:86A4: 72        .byte $72   ; <ョ>
- D - I - - 0x02C6B5 16:86A5: 38        .byte $38   ; <5>
- D - I - - 0x02C6B6 16:86A6: 73        .byte $73   ; <ヮ>

- D - I - - 0x02C6B7 16:86A7: 10        .byte $10   ; <た>
- D - I - - 0x02C6B8 16:86A8: 01        .byte $01   ; <あ>
- D - I - - 0x02C6B9 16:86A9: 34        .byte $34   ; <1>
- D - I - - 0x02C6BA 16:86AA: 78        .byte $78   ; <?>
- D - I - - 0x02C6BB 16:86AB: 38        .byte $38   ; <5>
- D - I - - 0x02C6BC 16:86AC: 79        .byte $79   ; <!>
- D - I - - 0x02C6BD 16:86AD: 3C        .byte $3C   ; <9>
- D - I - - 0x02C6BE 16:86AE: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02C6BF 16:86AF: 08        .byte $08   ; <く>
- D - I - - 0x02C6C0 16:86B0: 02        .byte $02   ; <い>
- D - I - - 0x02C6C1 16:86B1: 34        .byte $34   ; <1>
- D - I - - 0x02C6C2 16:86B2: 7A        .byte $7A   ; <、>
- D - I - - 0x02C6C3 16:86B3: 38        .byte $38   ; <5>
- D - I - - 0x02C6C4 16:86B4: 7B        .byte $7B   ; <。>

- D - I - - 0x02C6C5 16:86B5: 01        .byte $01   ; <あ>



off_86B6:
- D - I - - 0x02C6C6 16:86B6: 08        .byte $08   ; <く>
- D - I - - 0x02C6C7 16:86B7: 00        .byte $00
- D - I - - 0x02C6C8 16:86B8: 34        .byte $34   ; <1>
- D - I - - 0x02C6C9 16:86B9: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02C6CA 16:86BA: 38        .byte $38   ; <5>
- D - I - - 0x02C6CB 16:86BB: 67        .byte $67   ; <ラ>

- D - I - - 0x02C6CC 16:86BC: 08        .byte $08   ; <く>
- D - I - - 0x02C6CD 16:86BD: 01        .byte $01   ; <あ>
- D - I - - 0x02C6CE 16:86BE: 34        .byte $34   ; <1>
- D - I - - 0x02C6CF 16:86BF: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02C6D0 16:86C0: 38        .byte $38   ; <5>
- D - I - - 0x02C6D1 16:86C1: 81        .byte $81   ; <A>

- D - I - - 0x02C6D2 16:86C2: 08        .byte $08   ; <く>
- D - I - - 0x02C6D3 16:86C3: 02        .byte $02   ; <い>
- D - I - - 0x02C6D4 16:86C4: 34        .byte $34   ; <1>
- D - I - - 0x02C6D5 16:86C5: 3A        .byte $3A   ; <7>
- D - I - - 0x02C6D6 16:86C6: 38        .byte $38   ; <5>
- D - I - - 0x02C6D7 16:86C7: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C6D8 16:86C8: 01        .byte $01   ; <あ>



off_86C9:
- D - I - - 0x02C6D9 16:86C9: 10        .byte $10   ; <た>
- D - I - - 0x02C6DA 16:86CA: 01        .byte $01   ; <あ>
- D - I - - 0x02C6DB 16:86CB: 34        .byte $34   ; <1>
- D - I - - 0x02C6DC 16:86CC: 74        .byte $74   ; <ィ>
- D - I - - 0x02C6DD 16:86CD: 38        .byte $38   ; <5>
- D - I - - 0x02C6DE 16:86CE: 82        .byte $82   ; <B>
- D - I - - 0x02C6DF 16:86CF: 3C        .byte $3C   ; <9>
- D - I - - 0x02C6E0 16:86D0: 83        .byte $83   ; <C>

- D - I - - 0x02C6E1 16:86D1: 02        .byte $02   ; <い>
- D - I - - 0x02C6E2 16:86D2: 77 86     .word off_8677



off_86D4:
- D - I - - 0x02C6E4 16:86D4: 08        .byte $08   ; <く>
- D - I - - 0x02C6E5 16:86D5: 00        .byte $00
- D - I - - 0x02C6E6 16:86D6: 34        .byte $34   ; <1>
- D - I - - 0x02C6E7 16:86D7: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C6E8 16:86D8: 38        .byte $38   ; <5>
- D - I - - 0x02C6E9 16:86D9: 67        .byte $67   ; <ラ>

- D - I - - 0x02C6EA 16:86DA: 08        .byte $08   ; <く>
- D - I - - 0x02C6EB 16:86DB: 01        .byte $01   ; <あ>
- D - I - - 0x02C6EC 16:86DC: 34        .byte $34   ; <1>
- D - I - - 0x02C6ED 16:86DD: 28        .byte $28   ; <り>
- D - I - - 0x02C6EE 16:86DE: 38        .byte $38   ; <5>
- D - I - - 0x02C6EF 16:86DF: 81        .byte $81   ; <A>

- D - I - - 0x02C6F0 16:86E0: 02        .byte $02   ; <い>
- D - I - - 0x02C6F1 16:86E1: 77 86     .word off_8677



off_86E3:
- D - I - - 0x02C6F3 16:86E3: 00        .byte $00
- D - I - - 0x02C6F4 16:86E4: 01        .byte $01   ; <あ>
- D - I - - 0x02C6F5 16:86E5: 38        .byte $38   ; <5>
- D - I - - 0x02C6F6 16:86E6: 84        .byte $84   ; <D>

- D - I - - 0x02C6F7 16:86E7: 00        .byte $00
- D - I - - 0x02C6F8 16:86E8: 02        .byte $02   ; <い>
- D - I - - 0x02C6F9 16:86E9: 38        .byte $38   ; <5>
- D - I - - 0x02C6FA 16:86EA: 86        .byte $86   ; <F>

- D - I - - 0x02C6FB 16:86EB: 02        .byte $02   ; <い>
- D - I - - 0x02C6FC 16:86EC: 4F 86     .word off_864F



off_86EE_03:
- D - I - - 0x02C6FE 16:86EE: 03        .byte $03   ; <う>
- D - I - - 0x02C6FF 16:86EF: 07 87     .word off_8707
- D - I - - 0x02C701 16:86F1: 1C 87     .word off_871C
- D - I - - 0x02C703 16:86F3: 33 87     .word off_8733
- D - I - - 0x02C705 16:86F5: 4C 87     .word off_874C
- D - I - - 0x02C707 16:86F7: 5D 87     .word off_875D
- D - I - - 0x02C709 16:86F9: 6A 87     .word off_876A
- D - I - - 0x02C70B 16:86FB: 7D 87     .word off_877D
- D - I - - 0x02C70D 16:86FD: 8C 87     .word off_878C
- D - I - - 0x02C70F 16:86FF: A1 87     .word off_87A1
- D - I - - 0x02C711 16:8701: B4 87     .word off_87B4
- D - I - - 0x02C713 16:8703: BF 87     .word off_87BF
- D - I - - 0x02C715 16:8705: CE 87     .word off_87CE



off_8707:
- D - I - - 0x02C717 16:8707: 10        .byte $10   ; <た>
- D - I - - 0x02C718 16:8708: 11        .byte $11   ; <ち>
- D - I - - 0x02C719 16:8709: 0C        .byte $0C   ; <し>
- D - I - - 0x02C71A 16:870A: 28        .byte $28   ; <り>
- D - I - - 0x02C71B 16:870B: 10        .byte $10   ; <た>
- D - I - - 0x02C71C 16:870C: 29        .byte $29   ; <る>
- D - I - - 0x02C71D 16:870D: 14        .byte $14   ; <と>
- D - I - - 0x02C71E 16:870E: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C71F 16:870F: 08        .byte $08   ; <く>
- D - I - - 0x02C720 16:8710: 12        .byte $12   ; <つ>
- D - I - - 0x02C721 16:8711: 0C        .byte $0C   ; <し>
- D - I - - 0x02C722 16:8712: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C723 16:8713: 10        .byte $10   ; <た>
- D - I - - 0x02C724 16:8714: 2B        .byte $2B   ; <ろ>

off_8715:
- D - I - - 0x02C725 16:8715: 08        .byte $08   ; <く>
- D - I - - 0x02C726 16:8716: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C727 16:8717: 0C        .byte $0C   ; <し>
- D - I - - 0x02C728 16:8718: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C729 16:8719: 10        .byte $10   ; <た>
- D - I - - 0x02C72A 16:871A: 2D        .byte $2D   ; <を>

- D - I - - 0x02C72B 16:871B: 01        .byte $01   ; <あ>



off_871C:
- D - I - - 0x02C72C 16:871C: 10        .byte $10   ; <た>
- D - I - - 0x02C72D 16:871D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C72E 16:871E: 0C        .byte $0C   ; <し>
- D - I - - 0x02C72F 16:871F: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C730 16:8720: 10        .byte $10   ; <た>
- D - I - - 0x02C731 16:8721: 39        .byte $39   ; <6>
- D - I - - 0x02C732 16:8722: 14        .byte $14   ; <と>
- D - I - - 0x02C733 16:8723: 3C        .byte $3C   ; <9>

- D - I - - 0x02C734 16:8724: 10        .byte $10   ; <た>
- D - I - - 0x02C735 16:8725: 11        .byte $11   ; <ち>
- D - I - - 0x02C736 16:8726: 0C        .byte $0C   ; <し>
- D - I - - 0x02C737 16:8727: 38        .byte $38   ; <5>
- D - I - - 0x02C738 16:8728: 10        .byte $10   ; <た>
- D - I - - 0x02C739 16:8729: 3B        .byte $3B   ; <8>
- D - I - - 0x02C73A 16:872A: 14        .byte $14   ; <と>
- D - I - - 0x02C73B 16:872B: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02C73C 16:872C: 08        .byte $08   ; <く>
- D - I - - 0x02C73D 16:872D: 12        .byte $12   ; <つ>
- D - I - - 0x02C73E 16:872E: 0C        .byte $0C   ; <し>
- D - I - - 0x02C73F 16:872F: 3A        .byte $3A   ; <7>
- D - I - - 0x02C740 16:8730: 10        .byte $10   ; <た>
- D - I - - 0x02C741 16:8731: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C742 16:8732: 01        .byte $01   ; <あ>



off_8733:
- D - I - - 0x02C743 16:8733: 00        .byte $00
- D - I - - 0x02C744 16:8734: 11        .byte $11   ; <ち>
- D - I - - 0x02C745 16:8735: 10        .byte $10   ; <た>
- D - I - - 0x02C746 16:8736: 6A        .byte $6A   ; <レ>

- D - I - - 0x02C747 16:8737: 00        .byte $00
- D - I - - 0x02C748 16:8738: 12        .byte $12   ; <つ>
- D - I - - 0x02C749 16:8739: 10        .byte $10   ; <た>
- D - I - - 0x02C74A 16:873A: 2B        .byte $2B   ; <ろ>
; продолжение


off_873B:
- D - I - - 0x02C74B 16:873B: 08        .byte $08   ; <く>
- D - I - - 0x02C74C 16:873C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C74D 16:873D: 0C        .byte $0C   ; <し>
- D - I - - 0x02C74E 16:873E: 2F        .byte $2F   ; <っ>
- D - I - - 0x02C74F 16:873F: 10        .byte $10   ; <た>
- D - I - - 0x02C750 16:8740: 68        .byte $68   ; <リ>

- D - I - - 0x02C751 16:8741: 08        .byte $08   ; <く>
- D - I - - 0x02C752 16:8742: 11        .byte $11   ; <ち>
- D - I - - 0x02C753 16:8743: 0C        .byte $0C   ; <し>
- D - I - - 0x02C754 16:8744: 3F        .byte $3F   ; <•>
- D - I - - 0x02C755 16:8745: 14        .byte $14   ; <と>
- D - I - - 0x02C756 16:8746: 3D        .byte $3D   ; <+>

- D - I - - 0x02C757 16:8747: 00        .byte $00
- D - I - - 0x02C758 16:8748: 12        .byte $12   ; <つ>
- D - I - - 0x02C759 16:8749: 0C        .byte $0C   ; <し>
- D - I - - 0x02C75A 16:874A: 3A        .byte $3A   ; <7>

- D - I - - 0x02C75B 16:874B: 01        .byte $01   ; <あ>



off_874C:
- D - I - - 0x02C75C 16:874C: 10        .byte $10   ; <た>
- D - I - - 0x02C75D 16:874D: 11        .byte $11   ; <ち>
- D - I - - 0x02C75E 16:874E: 0C        .byte $0C   ; <し>
- D - I - - 0x02C75F 16:874F: 69        .byte $69   ; <ル>
- D - I - - 0x02C760 16:8750: 10        .byte $10   ; <た>
- D - I - - 0x02C761 16:8751: 29        .byte $29   ; <る>
- D - I - - 0x02C762 16:8752: 14        .byte $14   ; <と>
- D - I - - 0x02C763 16:8753: 2E        .byte $2E   ; <ん>

- D - I - - 0x02C764 16:8754: 08        .byte $08   ; <く>
- D - I - - 0x02C765 16:8755: 12        .byte $12   ; <つ>
- D - I - - 0x02C766 16:8756: 0C        .byte $0C   ; <し>
- D - I - - 0x02C767 16:8757: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02C768 16:8758: 10        .byte $10   ; <た>
- D - I - - 0x02C769 16:8759: 6E        .byte $6E   ; <ン>

- D - I - - 0x02C76A 16:875A: 02        .byte $02   ; <い>
- D - I - - 0x02C76B 16:875B: 15 87     .word off_8715



off_875D:
- D - I - - 0x02C76D 16:875D: 08        .byte $08   ; <く>
- D - I - - 0x02C76E 16:875E: 11        .byte $11   ; <ち>
- D - I - - 0x02C76F 16:875F: 0C        .byte $0C   ; <し>
- D - I - - 0x02C770 16:8760: 74        .byte $74   ; <ィ>
- D - I - - 0x02C771 16:8761: 10        .byte $10   ; <た>
- D - I - - 0x02C772 16:8762: 75        .byte $75   ; <ェ>

off_8763:
- D - I - - 0x02C773 16:8763: 08        .byte $08   ; <く>
- D - I - - 0x02C774 16:8764: 12        .byte $12   ; <つ>
- D - I - - 0x02C775 16:8765: 0C        .byte $0C   ; <し>
- D - I - - 0x02C776 16:8766: 76        .byte $76   ; <ォ>
- D - I - - 0x02C777 16:8767: 10        .byte $10   ; <た>
- D - I - - 0x02C778 16:8768: 77        .byte $77   ; <:>

- D - I - - 0x02C779 16:8769: 01        .byte $01   ; <あ>



off_876A:
- D - I - - 0x02C77A 16:876A: 08        .byte $08   ; <く>
- D - I - - 0x02C77B 16:876B: 11        .byte $11   ; <ち>
- D - I - - 0x02C77C 16:876C: 0C        .byte $0C   ; <し>
- D - I - - 0x02C77D 16:876D: 70        .byte $70   ; <ャ>
- D - I - - 0x02C77E 16:876E: 10        .byte $10   ; <た>
- D - I - - 0x02C77F 16:876F: 71        .byte $71   ; <ュ>

- D - I - - 0x02C780 16:8770: 08        .byte $08   ; <く>
- D - I - - 0x02C781 16:8771: 12        .byte $12   ; <つ>
- D - I - - 0x02C782 16:8772: 0C        .byte $0C   ; <し>
- D - I - - 0x02C783 16:8773: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C784 16:8774: 10        .byte $10   ; <た>
- D - I - - 0x02C785 16:8775: 2B        .byte $2B   ; <ろ>
; продолжение


off_8776:
- D - I - - 0x02C786 16:8776: 08        .byte $08   ; <く>
- D - I - - 0x02C787 16:8777: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C788 16:8778: 0C        .byte $0C   ; <し>
- D - I - - 0x02C789 16:8779: 65        .byte $65   ; <ユ>
- D - I - - 0x02C78A 16:877A: 10        .byte $10   ; <た>
- D - I - - 0x02C78B 16:877B: 67        .byte $67   ; <ラ>

- D - I - - 0x02C78C 16:877C: 01        .byte $01   ; <あ>



off_877D:
- D - I - - 0x02C78D 16:877D: 08        .byte $08   ; <く>
- D - I - - 0x02C78E 16:877E: 11        .byte $11   ; <ち>
- D - I - - 0x02C78F 16:877F: 0C        .byte $0C   ; <し>
- D - I - - 0x02C790 16:8780: 7C        .byte $7C   ; <~>
- D - I - - 0x02C791 16:8781: 10        .byte $10   ; <た>
- D - I - - 0x02C792 16:8782: 7D        .byte $7D   ; <ー>

- D - I - - 0x02C793 16:8783: 08        .byte $08   ; <く>
- D - I - - 0x02C794 16:8784: 12        .byte $12   ; <つ>
- D - I - - 0x02C795 16:8785: 0C        .byte $0C   ; <し>
- D - I - - 0x02C796 16:8786: 7E        .byte $7E   ; <.>
- D - I - - 0x02C797 16:8787: 10        .byte $10   ; <た>
- D - I - - 0x02C798 16:8788: 7F        .byte $7F   ; <,>

- D - I - - 0x02C799 16:8789: 02        .byte $02   ; <い>
- D - I - - 0x02C79A 16:878A: 76 87     .word off_8776



off_878C:
- D - I - - 0x02C79C 16:878C: 08        .byte $08   ; <く>
- D - I - - 0x02C79D 16:878D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C79E 16:878E: 0C        .byte $0C   ; <し>
- D - I - - 0x02C79F 16:878F: 72        .byte $72   ; <ョ>
- D - I - - 0x02C7A0 16:8790: 10        .byte $10   ; <た>
- D - I - - 0x02C7A1 16:8791: 73        .byte $73   ; <ヮ>

- D - I - - 0x02C7A2 16:8792: 10        .byte $10   ; <た>
- D - I - - 0x02C7A3 16:8793: 11        .byte $11   ; <ち>
- D - I - - 0x02C7A4 16:8794: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7A5 16:8795: 78        .byte $78   ; <?>
- D - I - - 0x02C7A6 16:8796: 10        .byte $10   ; <た>
- D - I - - 0x02C7A7 16:8797: 79        .byte $79   ; <!>
- D - I - - 0x02C7A8 16:8798: 14        .byte $14   ; <と>
- D - I - - 0x02C7A9 16:8799: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02C7AA 16:879A: 08        .byte $08   ; <く>
- D - I - - 0x02C7AB 16:879B: 12        .byte $12   ; <つ>
- D - I - - 0x02C7AC 16:879C: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7AD 16:879D: 7A        .byte $7A   ; <、>
- D - I - - 0x02C7AE 16:879E: 10        .byte $10   ; <た>
- D - I - - 0x02C7AF 16:879F: 7B        .byte $7B   ; <。>

- D - I - - 0x02C7B0 16:87A0: 01        .byte $01   ; <あ>



off_87A1:
- D - I - - 0x02C7B1 16:87A1: 08        .byte $08   ; <く>
- D - I - - 0x02C7B2 16:87A2: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C7B3 16:87A3: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7B4 16:87A4: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02C7B5 16:87A5: 10        .byte $10   ; <た>
- D - I - - 0x02C7B6 16:87A6: 67        .byte $67   ; <ラ>

- D - I - - 0x02C7B7 16:87A7: 08        .byte $08   ; <く>
- D - I - - 0x02C7B8 16:87A8: 11        .byte $11   ; <ち>
- D - I - - 0x02C7B9 16:87A9: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7BA 16:87AA: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02C7BB 16:87AB: 10        .byte $10   ; <た>
- D - I - - 0x02C7BC 16:87AC: 81        .byte $81   ; <A>

- D - I - - 0x02C7BD 16:87AD: 08        .byte $08   ; <く>
- D - I - - 0x02C7BE 16:87AE: 12        .byte $12   ; <つ>
- D - I - - 0x02C7BF 16:87AF: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7C0 16:87B0: 3A        .byte $3A   ; <7>
- D - I - - 0x02C7C1 16:87B1: 10        .byte $10   ; <た>
- D - I - - 0x02C7C2 16:87B2: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02C7C3 16:87B3: 01        .byte $01   ; <あ>



off_87B4:
- D - I - - 0x02C7C4 16:87B4: 10        .byte $10   ; <た>
- D - I - - 0x02C7C5 16:87B5: 11        .byte $11   ; <ち>
- D - I - - 0x02C7C6 16:87B6: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7C7 16:87B7: 74        .byte $74   ; <ィ>
- D - I - - 0x02C7C8 16:87B8: 10        .byte $10   ; <た>
- D - I - - 0x02C7C9 16:87B9: 82        .byte $82   ; <B>
- D - I - - 0x02C7CA 16:87BA: 14        .byte $14   ; <と>
- D - I - - 0x02C7CB 16:87BB: 83        .byte $83   ; <C>

- D - I - - 0x02C7CC 16:87BC: 02        .byte $02   ; <い>
- D - I - - 0x02C7CD 16:87BD: 63 87     .word off_8763



off_87BF:
- D - I - - 0x02C7CF 16:87BF: 08        .byte $08   ; <く>
- D - I - - 0x02C7D0 16:87C0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C7D1 16:87C1: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7D2 16:87C2: 2C        .byte $2C   ; <わ>
- D - I - - 0x02C7D3 16:87C3: 10        .byte $10   ; <た>
- D - I - - 0x02C7D4 16:87C4: 67        .byte $67   ; <ラ>

- D - I - - 0x02C7D5 16:87C5: 08        .byte $08   ; <く>
- D - I - - 0x02C7D6 16:87C6: 11        .byte $11   ; <ち>
- D - I - - 0x02C7D7 16:87C7: 0C        .byte $0C   ; <し>
- D - I - - 0x02C7D8 16:87C8: 28        .byte $28   ; <り>
- D - I - - 0x02C7D9 16:87C9: 10        .byte $10   ; <た>
- D - I - - 0x02C7DA 16:87CA: 81        .byte $81   ; <A>

- D - I - - 0x02C7DB 16:87CB: 02        .byte $02   ; <い>
- D - I - - 0x02C7DC 16:87CC: 63 87     .word off_8763



off_87CE:
- D - I - - 0x02C7DE 16:87CE: 00        .byte $00
- D - I - - 0x02C7DF 16:87CF: 11        .byte $11   ; <ち>
- D - I - - 0x02C7E0 16:87D0: 10        .byte $10   ; <た>
- D - I - - 0x02C7E1 16:87D1: 84        .byte $84   ; <D>

- D - I - - 0x02C7E2 16:87D2: 00        .byte $00
- D - I - - 0x02C7E3 16:87D3: 12        .byte $12   ; <つ>
- D - I - - 0x02C7E4 16:87D4: 10        .byte $10   ; <た>
- D - I - - 0x02C7E5 16:87D5: 86        .byte $86   ; <F>

- D - I - - 0x02C7E6 16:87D6: 02        .byte $02   ; <い>
- D - I - - 0x02C7E7 16:87D7: 3B 87     .word off_873B



off_87D9_04:
- D - I - - 0x02C7E9 16:87D9: 03        .byte $03   ; <う>
- D - I - - 0x02C7EA 16:87DA: F2 87     .word off_87F2
- D - I - - 0x02C7EC 16:87DC: F2 87     .word off_87F2
- D - I - - 0x02C7EE 16:87DE: F2 87     .word off_87F2
- D - I - - 0x02C7F0 16:87E0: F2 87     .word off_87F2
- D - I - - 0x02C7F2 16:87E2: F2 87     .word off_87F2
- D - I - - 0x02C7F4 16:87E4: F2 87     .word off_87F2
- D - I - - 0x02C7F6 16:87E6: F2 87     .word off_87F2
- D - I - - 0x02C7F8 16:87E8: 19 88     .word off_8819
- D - I - - 0x02C7FA 16:87EA: F2 87     .word off_87F2
- D - I - - 0x02C7FC 16:87EC: F2 87     .word off_87F2
- D - I - - 0x02C7FE 16:87EE: F2 87     .word off_87F2
- D - I - - 0x02C800 16:87F0: F2 87     .word off_87F2



off_87F2:
- D - I - - 0x02C802 16:87F2: 00        .byte $00
- D - I - - 0x02C803 16:87F3: 0D        .byte $0D   ; <す>
- D - I - - 0x02C804 16:87F4: 05        .byte $05   ; <お>
- D - I - - 0x02C805 16:87F5: 04        .byte $04   ; <え>

- D - I - - 0x02C806 16:87F6: 00        .byte $00
- D - I - - 0x02C807 16:87F7: 0B        .byte $0B   ; <さ>
- D - I - - 0x02C808 16:87F8: 09        .byte $09   ; <け>
- D - I - - 0x02C809 16:87F9: 05        .byte $05   ; <お>

- D - I - - 0x02C80A 16:87FA: 00        .byte $00
- D - I - - 0x02C80B 16:87FB: 01        .byte $01   ; <あ>
- D - I - - 0x02C80C 16:87FC: 0D        .byte $0D   ; <す>
- D - I - - 0x02C80D 16:87FD: 10        .byte $10   ; <た>

- D - I - - 0x02C80E 16:87FE: 00        .byte $00
- D - I - - 0x02C80F 16:87FF: 0C        .byte $0C   ; <し>
- D - I - - 0x02C810 16:8800: 09        .byte $09   ; <け>
- D - I - - 0x02C811 16:8801: 02        .byte $02   ; <い>

- D - I - - 0x02C812 16:8802: 18        .byte $18   ; <ね>
- D - I - - 0x02C813 16:8803: 02        .byte $02   ; <い>
- D - I - - 0x02C814 16:8804: 0D        .byte $0D   ; <す>
- D - I - - 0x02C815 16:8805: 03        .byte $03   ; <う>
- D - I - - 0x02C816 16:8806: 11        .byte $11   ; <ち>
- D - I - - 0x02C817 16:8807: 06        .byte $06   ; <か>
- D - I - - 0x02C818 16:8808: 15        .byte $15   ; <な>
- D - I - - 0x02C819 16:8809: 07        .byte $07   ; <き>
- D - I - - 0x02C81A 16:880A: 19        .byte $19   ; <の>
- D - I - - 0x02C81B 16:880B: 12        .byte $12   ; <つ>

- D - I - - 0x02C81C 16:880C: 20        .byte $20   ; <み>
- D - I - - 0x02C81D 16:880D: 03        .byte $03   ; <う>
- D - I - - 0x02C81E 16:880E: 0D        .byte $0D   ; <す>
- D - I - - 0x02C81F 16:880F: 09        .byte $09   ; <け>
- D - I - - 0x02C820 16:8810: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C821 16:8811: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C822 16:8812: 11        .byte $11   ; <ち>
- D - I - - 0x02C823 16:8813: 0C        .byte $0C   ; <し>
- D - I - - 0x02C824 16:8814: 15        .byte $15   ; <な>
- D - I - - 0x02C825 16:8815: 0D        .byte $0D   ; <す>
- D - I - - 0x02C826 16:8816: 19        .byte $19   ; <の>
- D - I - - 0x02C827 16:8817: 18        .byte $18   ; <ね>

- D - I - - 0x02C828 16:8818: 01        .byte $01   ; <あ>



off_8819:
- D - I - - 0x02C829 16:8819: 00        .byte $00
- D - I - - 0x02C82A 16:881A: 0D        .byte $0D   ; <す>
- D - I - - 0x02C82B 16:881B: 05        .byte $05   ; <お>
- D - I - - 0x02C82C 16:881C: 04        .byte $04   ; <え>

- D - I - - 0x02C82D 16:881D: 00        .byte $00
- D - I - - 0x02C82E 16:881E: 0B        .byte $0B   ; <さ>
- D - I - - 0x02C82F 16:881F: 09        .byte $09   ; <け>
- D - I - - 0x02C830 16:8820: 50        .byte $50   ; <タ>

- D - I - - 0x02C831 16:8821: 00        .byte $00
- D - I - - 0x02C832 16:8822: 01        .byte $01   ; <あ>
- D - I - - 0x02C833 16:8823: 0D        .byte $0D   ; <す>
- D - I - - 0x02C834 16:8824: 51        .byte $51   ; <チ>

- D - I - - 0x02C835 16:8825: 00        .byte $00
- D - I - - 0x02C836 16:8826: 0C        .byte $0C   ; <し>
- D - I - - 0x02C837 16:8827: 09        .byte $09   ; <け>
- D - I - - 0x02C838 16:8828: 52        .byte $52   ; <ツ>

- D - I - - 0x02C839 16:8829: 18        .byte $18   ; <ね>
- D - I - - 0x02C83A 16:882A: 02        .byte $02   ; <い>
- D - I - - 0x02C83B 16:882B: 0D        .byte $0D   ; <す>
- D - I - - 0x02C83C 16:882C: 53        .byte $53   ; <テ>
- D - I - - 0x02C83D 16:882D: 11        .byte $11   ; <ち>
- D - I - - 0x02C83E 16:882E: 56        .byte $56   ; <ニ>
- D - I - - 0x02C83F 16:882F: 15        .byte $15   ; <な>
- D - I - - 0x02C840 16:8830: 57        .byte $57   ; <ヌ>
- D - I - - 0x02C841 16:8831: 19        .byte $19   ; <の>
- D - I - - 0x02C842 16:8832: 12        .byte $12   ; <つ>

- D - I - - 0x02C843 16:8833: 20        .byte $20   ; <み>
- D - I - - 0x02C844 16:8834: 03        .byte $03   ; <う>
- D - I - - 0x02C845 16:8835: 0D        .byte $0D   ; <す>
- D - I - - 0x02C846 16:8836: 09        .byte $09   ; <け>
- D - I - - 0x02C847 16:8837: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C848 16:8838: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C849 16:8839: 11        .byte $11   ; <ち>
- D - I - - 0x02C84A 16:883A: 0C        .byte $0C   ; <し>
- D - I - - 0x02C84B 16:883B: 15        .byte $15   ; <な>
- D - I - - 0x02C84C 16:883C: 0D        .byte $0D   ; <す>
- D - I - - 0x02C84D 16:883D: 19        .byte $19   ; <の>
- D - I - - 0x02C84E 16:883E: 18        .byte $18   ; <ね>

- D - I - - 0x02C84F 16:883F: 01        .byte $01   ; <あ>



off_8840_05:
- D - I - - 0x02C850 16:8840: 03        .byte $03   ; <う>
- D - I - - 0x02C851 16:8841: 59 88     .word off_8859
- D - I - - 0x02C853 16:8843: 59 88     .word off_8859
- D - I - - 0x02C855 16:8845: 59 88     .word off_8859
- D - I - - 0x02C857 16:8847: 59 88     .word off_8859
- D - I - - 0x02C859 16:8849: 59 88     .word off_8859
- D - I - - 0x02C85B 16:884B: 59 88     .word off_8859
- D - I - - 0x02C85D 16:884D: 59 88     .word off_8859
- D - I - - 0x02C85F 16:884F: 7C 88     .word off_887C
- D - I - - 0x02C861 16:8851: 59 88     .word off_8859
- D - I - - 0x02C863 16:8853: 59 88     .word off_8859
- D - I - - 0x02C865 16:8855: 59 88     .word off_8859
- D - I - - 0x02C867 16:8857: 59 88     .word off_8859



off_8859:
- D - I - - 0x02C869 16:8859: 10        .byte $10   ; <た>
- D - I - - 0x02C86A 16:885A: 01        .byte $01   ; <あ>
- D - I - - 0x02C86B 16:885B: 05        .byte $05   ; <お>
- D - I - - 0x02C86C 16:885C: 14        .byte $14   ; <と>
- D - I - - 0x02C86D 16:885D: 09        .byte $09   ; <け>
- D - I - - 0x02C86E 16:885E: 15        .byte $15   ; <な>
- D - I - - 0x02C86F 16:885F: 0D        .byte $0D   ; <す>
- D - I - - 0x02C870 16:8860: 40        .byte $40   ; <「>

- D - I - - 0x02C871 16:8861: 28        .byte $28   ; <り>
- D - I - - 0x02C872 16:8862: 02        .byte $02   ; <い>
- D - I - - 0x02C873 16:8863: 05        .byte $05   ; <お>
- D - I - - 0x02C874 16:8864: 16        .byte $16   ; <に>
- D - I - - 0x02C875 16:8865: 09        .byte $09   ; <け>
- D - I - - 0x02C876 16:8866: 17        .byte $17   ; <ぬ>
- D - I - - 0x02C877 16:8867: 0D        .byte $0D   ; <す>
- D - I - - 0x02C878 16:8868: 42        .byte $42   ; <イ>
- D - I - - 0x02C879 16:8869: 11        .byte $11   ; <ち>
- D - I - - 0x02C87A 16:886A: 43        .byte $43   ; <ウ>
- D - I - - 0x02C87B 16:886B: 15        .byte $15   ; <な>
- D - I - - 0x02C87C 16:886C: 46        .byte $46   ; <カ>
- D - I - - 0x02C87D 16:886D: 19        .byte $19   ; <の>
- D - I - - 0x02C87E 16:886E: 47        .byte $47   ; <キ>

- D - I - - 0x02C87F 16:886F: 20        .byte $20   ; <み>
- D - I - - 0x02C880 16:8870: 03        .byte $03   ; <う>
- D - I - - 0x02C881 16:8871: 0D        .byte $0D   ; <す>
- D - I - - 0x02C882 16:8872: 09        .byte $09   ; <け>
- D - I - - 0x02C883 16:8873: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C884 16:8874: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C885 16:8875: 11        .byte $11   ; <ち>
- D - I - - 0x02C886 16:8876: 49        .byte $49   ; <ケ>
- D - I - - 0x02C887 16:8877: 15        .byte $15   ; <な>
- D - I - - 0x02C888 16:8878: 4C        .byte $4C   ; <シ>
- D - I - - 0x02C889 16:8879: 19        .byte $19   ; <の>
- D - I - - 0x02C88A 16:887A: 4D        .byte $4D   ; <ス>

- D - I - - 0x02C88B 16:887B: 01        .byte $01   ; <あ>



off_887C:
- D - I - - 0x02C88C 16:887C: 10        .byte $10   ; <た>
- D - I - - 0x02C88D 16:887D: 01        .byte $01   ; <あ>
- D - I - - 0x02C88E 16:887E: 05        .byte $05   ; <お>
- D - I - - 0x02C88F 16:887F: 14        .byte $14   ; <と>
- D - I - - 0x02C890 16:8880: 09        .byte $09   ; <け>
- D - I - - 0x02C891 16:8881: 58        .byte $58   ; <ネ>
- D - I - - 0x02C892 16:8882: 0D        .byte $0D   ; <す>
- D - I - - 0x02C893 16:8883: 59        .byte $59   ; <ノ>

- D - I - - 0x02C894 16:8884: 28        .byte $28   ; <り>
- D - I - - 0x02C895 16:8885: 02        .byte $02   ; <い>
- D - I - - 0x02C896 16:8886: 05        .byte $05   ; <お>
- D - I - - 0x02C897 16:8887: 16        .byte $16   ; <に>
- D - I - - 0x02C898 16:8888: 09        .byte $09   ; <け>
- D - I - - 0x02C899 16:8889: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02C89A 16:888A: 0D        .byte $0D   ; <す>
- D - I - - 0x02C89B 16:888B: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02C89C 16:888C: 11        .byte $11   ; <ち>
- D - I - - 0x02C89D 16:888D: 43        .byte $43   ; <ウ>
- D - I - - 0x02C89E 16:888E: 15        .byte $15   ; <な>
- D - I - - 0x02C89F 16:888F: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02C8A0 16:8890: 19        .byte $19   ; <の>
- D - I - - 0x02C8A1 16:8891: 47        .byte $47   ; <キ>

- D - I - - 0x02C8A2 16:8892: 20        .byte $20   ; <み>
- D - I - - 0x02C8A3 16:8893: 03        .byte $03   ; <う>
- D - I - - 0x02C8A4 16:8894: 0D        .byte $0D   ; <す>
- D - I - - 0x02C8A5 16:8895: 09        .byte $09   ; <け>
- D - I - - 0x02C8A6 16:8896: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C8A7 16:8897: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C8A8 16:8898: 11        .byte $11   ; <ち>
- D - I - - 0x02C8A9 16:8899: 54        .byte $54   ; <ト>
- D - I - - 0x02C8AA 16:889A: 15        .byte $15   ; <な>
- D - I - - 0x02C8AB 16:889B: 55        .byte $55   ; <ナ>
- D - I - - 0x02C8AC 16:889C: 19        .byte $19   ; <の>
- D - I - - 0x02C8AD 16:889D: 4D        .byte $4D   ; <ス>

- D - I - - 0x02C8AE 16:889E: 01        .byte $01   ; <あ>



off_889F_06:
- D - I - - 0x02C8AF 16:889F: 00        .byte $00
- D - I - - 0x02C8B0 16:88A0: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C8B1 16:88A1: 03        .byte $03   ; <う>
- D - I - - 0x02C8B2 16:88A2: 33        .byte $33   ; <0>
; продолжение


off_88A3:
- D - I - - 0x02C8B3 16:88A3: 10        .byte $10   ; <た>
- D - I - - 0x02C8B4 16:88A4: 04        .byte $04   ; <え>
- D - I - - 0x02C8B5 16:88A5: 22        .byte $22   ; <め>
- D - I - - 0x02C8B6 16:88A6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02C8B7 16:88A7: 2A        .byte $2A   ; <れ>
- D - I - - 0x02C8B8 16:88A8: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C8B9 16:88A9: 2E        .byte $2E   ; <ん>
- D - I - - 0x02C8BA 16:88AA: 0F        .byte $0F   ; <そ>

- D - I - - 0x02C8BB 16:88AB: 18        .byte $18   ; <ね>
- D - I - - 0x02C8BC 16:88AC: 05        .byte $05   ; <お>
- D - I - - 0x02C8BD 16:88AD: 09        .byte $09   ; <け>
- D - I - - 0x02C8BE 16:88AE: 20        .byte $20   ; <み>
- D - I - - 0x02C8BF 16:88AF: 0D        .byte $0D   ; <す>
- D - I - - 0x02C8C0 16:88B0: 21        .byte $21   ; <む>
- D - I - - 0x02C8C1 16:88B1: 11        .byte $11   ; <ち>
- D - I - - 0x02C8C2 16:88B2: 24        .byte $24   ; <や>
- D - I - - 0x02C8C3 16:88B3: 15        .byte $15   ; <な>
- D - I - - 0x02C8C4 16:88B4: 25        .byte $25   ; <ゆ>

- D - I - - 0x02C8C5 16:88B5: 20        .byte $20   ; <み>
- D - I - - 0x02C8C6 16:88B6: 06        .byte $06   ; <か>
- D - I - - 0x02C8C7 16:88B7: 1D        .byte $1D   ; <へ>
- D - I - - 0x02C8C8 16:88B8: 22        .byte $22   ; <め>
- D - I - - 0x02C8C9 16:88B9: 25        .byte $25   ; <ゆ>
- D - I - - 0x02C8CA 16:88BA: 23        .byte $23   ; <も>
- D - I - - 0x02C8CB 16:88BB: 11        .byte $11   ; <ち>
- D - I - - 0x02C8CC 16:88BC: 26        .byte $26   ; <よ>
- D - I - - 0x02C8CD 16:88BD: 15        .byte $15   ; <な>
- D - I - - 0x02C8CE 16:88BE: 27        .byte $27   ; <ら>
- D - I - - 0x02C8CF 16:88BF: 17        .byte $17   ; <ぬ>
- D - I - - 0x02C8D0 16:88C0: 0A        .byte $0A   ; <こ>

- D - I - - 0x02C8D1 16:88C1: 10        .byte $10   ; <た>
- D - I - - 0x02C8D2 16:88C2: 07        .byte $07   ; <き>
- D - I - - 0x02C8D3 16:88C3: 05        .byte $05   ; <お>
- D - I - - 0x02C8D4 16:88C4: 1A        .byte $1A   ; <は>
- D - I - - 0x02C8D5 16:88C5: 09        .byte $09   ; <け>
- D - I - - 0x02C8D6 16:88C6: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02C8D7 16:88C7: 15        .byte $15   ; <な>
- D - I - - 0x02C8D8 16:88C8: 08        .byte $08   ; <く>

- D - I - - 0x02C8D9 16:88C9: 08        .byte $08   ; <く>
- D - I - - 0x02C8DA 16:88CA: 08        .byte $08   ; <く>
- D - I - - 0x02C8DB 16:88CB: 05        .byte $05   ; <お>
- D - I - - 0x02C8DC 16:88CC: 30        .byte $30   ; <ゃ>
- D - I - - 0x02C8DD 16:88CD: 09        .byte $09   ; <け>
- D - I - - 0x02C8DE 16:88CE: 31        .byte $31   ; <ゅ>

- D - I - - 0x02C8DF 16:88CF: 00        .byte $00
- D - I - - 0x02C8E0 16:88D0: 09        .byte $09   ; <け>
- D - I - - 0x02C8E1 16:88D1: 07        .byte $07   ; <き>
- D - I - - 0x02C8E2 16:88D2: 32        .byte $32   ; <ょ>

- D - I - - 0x02C8E3 16:88D3: 01        .byte $01   ; <あ>



off_88D4_07:
off_88D4:
- D - I - - 0x02C8E4 16:88D4: 10        .byte $10   ; <た>
- D - I - - 0x02C8E5 16:88D5: 04        .byte $04   ; <え>
- D - I - - 0x02C8E6 16:88D6: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C8E7 16:88D7: 11        .byte $11   ; <ち>
- D - I - - 0x02C8E8 16:88D8: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C8E9 16:88D9: 44        .byte $44   ; <エ>
- D - I - - 0x02C8EA 16:88DA: 12        .byte $12   ; <つ>
- D - I - - 0x02C8EB 16:88DB: 45        .byte $45   ; <オ>

- D - I - - 0x02C8EC 16:88DC: 08        .byte $08   ; <く>
- D - I - - 0x02C8ED 16:88DD: 05        .byte $05   ; <お>
- D - I - - 0x02C8EE 16:88DE: 35        .byte $35   ; <2>
- D - I - - 0x02C8EF 16:88DF: 34        .byte $34   ; <1>
- D - I - - 0x02C8F0 16:88E0: 39        .byte $39   ; <6>
- D - I - - 0x02C8F1 16:88E1: 35        .byte $35   ; <2>

- D - I - - 0x02C8F2 16:88E2: 08        .byte $08   ; <く>
- D - I - - 0x02C8F3 16:88E3: 06        .byte $06   ; <か>
- D - I - - 0x02C8F4 16:88E4: 35        .byte $35   ; <2>
- D - I - - 0x02C8F5 16:88E5: 36        .byte $36   ; <3>
- D - I - - 0x02C8F6 16:88E6: 39        .byte $39   ; <6>
- D - I - - 0x02C8F7 16:88E7: 37        .byte $37   ; <4>

- D - I - - 0x02C8F8 16:88E8: 00        .byte $00
- D - I - - 0x02C8F9 16:88E9: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C8FA 16:88EA: 33        .byte $33   ; <0>
- D - I - - 0x02C8FB 16:88EB: 0A        .byte $0A   ; <こ>

- D - I - - 0x02C8FC 16:88EC: 00        .byte $00
- D - I - - 0x02C8FD 16:88ED: 05        .byte $05   ; <お>
- D - I - - 0x02C8FE 16:88EE: 0D        .byte $0D   ; <す>
- D - I - - 0x02C8FF 16:88EF: 60        .byte $60   ; <ミ>

- D - I - - 0x02C900 16:88F0: 08        .byte $08   ; <く>
- D - I - - 0x02C901 16:88F1: 06        .byte $06   ; <か>
- D - I - - 0x02C902 16:88F2: 0D        .byte $0D   ; <す>
- D - I - - 0x02C903 16:88F3: 62        .byte $62   ; <メ>
- D - I - - 0x02C904 16:88F4: 11        .byte $11   ; <ち>
- D - I - - 0x02C905 16:88F5: 63        .byte $63   ; <モ>

- D - I - - 0x02C906 16:88F6: 08        .byte $08   ; <く>
- D - I - - 0x02C907 16:88F7: 07        .byte $07   ; <き>
- D - I - - 0x02C908 16:88F8: 0D        .byte $0D   ; <す>
- D - I - - 0x02C909 16:88F9: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02C90A 16:88FA: 11        .byte $11   ; <ち>
- D - I - - 0x02C90B 16:88FB: 1D        .byte $1D   ; <へ>

- D - I - - 0x02C90C 16:88FC: 00        .byte $00
- D - I - - 0x02C90D 16:88FD: 08        .byte $08   ; <く>
- D - I - - 0x02C90E 16:88FE: 39        .byte $39   ; <6>
- D - I - - 0x02C90F 16:88FF: 48        .byte $48   ; <ク>

- D - I - - 0x02C910 16:8900: 08        .byte $08   ; <く>
- D - I - - 0x02C911 16:8901: 09        .byte $09   ; <け>
- D - I - - 0x02C912 16:8902: 0F        .byte $0F   ; <そ>
- D - I - - 0x02C913 16:8903: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02C914 16:8904: 13        .byte $13   ; <て>
- D - I - - 0x02C915 16:8905: 1F        .byte $1F   ; <ま>

- D - I - - 0x02C916 16:8906: 01        .byte $01   ; <あ>



off_8907_08:
- D - I - - 0x02C917 16:8907: 00        .byte $00
- D - I - - 0x02C918 16:8908: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C919 16:8909: 53        .byte $53   ; <テ>
- D - I - - 0x02C91A 16:890A: 33        .byte $33   ; <0>
; продолжение


off_890B:
- D - I - - 0x02C91B 16:890B: 10        .byte $10   ; <た>
- D - I - - 0x02C91C 16:890C: 04        .byte $04   ; <え>
- D - I - - 0x02C91D 16:890D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C91E 16:890E: 11        .byte $11   ; <ち>
- D - I - - 0x02C91F 16:890F: 0E        .byte $0E   ; <せ>
- D - I - - 0x02C920 16:8910: 13        .byte $13   ; <て>
- D - I - - 0x02C921 16:8911: 12        .byte $12   ; <つ>
- D - I - - 0x02C922 16:8912: 19        .byte $19   ; <の>

- D - I - - 0x02C923 16:8913: 10        .byte $10   ; <た>
- D - I - - 0x02C924 16:8914: 05        .byte $05   ; <お>
- D - I - - 0x02C925 16:8915: 41        .byte $41   ; <ア>
- D - I - - 0x02C926 16:8916: 20        .byte $20   ; <み>
- D - I - - 0x02C927 16:8917: 45        .byte $45   ; <オ>
- D - I - - 0x02C928 16:8918: 21        .byte $21   ; <む>
- D - I - - 0x02C929 16:8919: 11        .byte $11   ; <ち>
- D - I - - 0x02C92A 16:891A: 25        .byte $25   ; <ゆ>

- D - I - - 0x02C92B 16:891B: 20        .byte $20   ; <み>
- D - I - - 0x02C92C 16:891C: 06        .byte $06   ; <か>
- D - I - - 0x02C92D 16:891D: 49        .byte $49   ; <ケ>
- D - I - - 0x02C92E 16:891E: 22        .byte $22   ; <め>
- D - I - - 0x02C92F 16:891F: 4D        .byte $4D   ; <ス>
- D - I - - 0x02C930 16:8920: 23        .byte $23   ; <も>
- D - I - - 0x02C931 16:8921: 0D        .byte $0D   ; <す>
- D - I - - 0x02C932 16:8922: 26        .byte $26   ; <よ>
- D - I - - 0x02C933 16:8923: 11        .byte $11   ; <ち>
- D - I - - 0x02C934 16:8924: 27        .byte $27   ; <ら>
- D - I - - 0x02C935 16:8925: 13        .byte $13   ; <て>
- D - I - - 0x02C936 16:8926: 0A        .byte $0A   ; <こ>

- D - I - - 0x02C937 16:8927: 10        .byte $10   ; <た>
- D - I - - 0x02C938 16:8928: 07        .byte $07   ; <き>
- D - I - - 0x02C939 16:8929: 55        .byte $55   ; <ナ>
- D - I - - 0x02C93A 16:892A: 1A        .byte $1A   ; <は>
- D - I - - 0x02C93B 16:892B: 41        .byte $41   ; <ア>
- D - I - - 0x02C93C 16:892C: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02C93D 16:892D: 11        .byte $11   ; <ち>
- D - I - - 0x02C93E 16:892E: 08        .byte $08   ; <く>

- D - I - - 0x02C93F 16:892F: 08        .byte $08   ; <く>
- D - I - - 0x02C940 16:8930: 08        .byte $08   ; <く>
- D - I - - 0x02C941 16:8931: 55        .byte $55   ; <ナ>
- D - I - - 0x02C942 16:8932: 30        .byte $30   ; <ゃ>
- D - I - - 0x02C943 16:8933: 41        .byte $41   ; <ア>
- D - I - - 0x02C944 16:8934: 31        .byte $31   ; <ゅ>

- D - I - - 0x02C945 16:8935: 00        .byte $00
- D - I - - 0x02C946 16:8936: 09        .byte $09   ; <け>
- D - I - - 0x02C947 16:8937: 57        .byte $57   ; <ヌ>
- D - I - - 0x02C948 16:8938: 32        .byte $32   ; <ょ>

- D - I - - 0x02C949 16:8939: 01        .byte $01   ; <あ>



off_893A_09:
off_893A:
- D - I - - 0x02C94A 16:893A: 10        .byte $10   ; <た>
- D - I - - 0x02C94B 16:893B: 04        .byte $04   ; <え>
- D - I - - 0x02C94C 16:893C: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02C94D 16:893D: 4A        .byte $4A   ; <コ>
- D - I - - 0x02C94E 16:893E: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02C94F 16:893F: 4B        .byte $4B   ; <サ>
- D - I - - 0x02C950 16:8940: 62        .byte $62   ; <メ>
- D - I - - 0x02C951 16:8941: 4E        .byte $4E   ; <セ>

- D - I - - 0x02C952 16:8942: 18        .byte $18   ; <ね>
- D - I - - 0x02C953 16:8943: 05        .byte $05   ; <お>
- D - I - - 0x02C954 16:8944: 09        .byte $09   ; <け>
- D - I - - 0x02C955 16:8945: 34        .byte $34   ; <1>
- D - I - - 0x02C956 16:8946: 0D        .byte $0D   ; <す>
- D - I - - 0x02C957 16:8947: 35        .byte $35   ; <2>
- D - I - - 0x02C958 16:8948: 11        .byte $11   ; <ち>
- D - I - - 0x02C959 16:8949: 60        .byte $60   ; <ミ>
- D - I - - 0x02C95A 16:894A: 15        .byte $15   ; <な>
- D - I - - 0x02C95B 16:894B: 61        .byte $61   ; <ム>

- D - I - - 0x02C95C 16:894C: 18        .byte $18   ; <ね>
- D - I - - 0x02C95D 16:894D: 06        .byte $06   ; <か>
- D - I - - 0x02C95E 16:894E: 09        .byte $09   ; <け>
- D - I - - 0x02C95F 16:894F: 36        .byte $36   ; <3>
- D - I - - 0x02C960 16:8950: 0D        .byte $0D   ; <す>
- D - I - - 0x02C961 16:8951: 37        .byte $37   ; <4>
- D - I - - 0x02C962 16:8952: 11        .byte $11   ; <ち>
- D - I - - 0x02C963 16:8953: 62        .byte $62   ; <メ>
- D - I - - 0x02C964 16:8954: 15        .byte $15   ; <な>
- D - I - - 0x02C965 16:8955: 63        .byte $63   ; <モ>

- D - I - - 0x02C966 16:8956: 00        .byte $00
- D - I - - 0x02C967 16:8957: 0A        .byte $0A   ; <こ>
- D - I - - 0x02C968 16:8958: 67        .byte $67   ; <ラ>
- D - I - - 0x02C969 16:8959: 0A        .byte $0A   ; <こ>

- D - I - - 0x02C96A 16:895A: 08        .byte $08   ; <く>
- D - I - - 0x02C96B 16:895B: 07        .byte $07   ; <き>
- D - I - - 0x02C96C 16:895C: 11        .byte $11   ; <ち>
- D - I - - 0x02C96D 16:895D: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02C96E 16:895E: 15        .byte $15   ; <な>
- D - I - - 0x02C96F 16:895F: 1D        .byte $1D   ; <へ>

- D - I - - 0x02C970 16:8960: 00        .byte $00
- D - I - - 0x02C971 16:8961: 08        .byte $08   ; <く>
- D - I - - 0x02C972 16:8962: 3D        .byte $3D   ; <+>
- D - I - - 0x02C973 16:8963: 48        .byte $48   ; <ク>

- D - I - - 0x02C974 16:8964: 08        .byte $08   ; <く>
- D - I - - 0x02C975 16:8965: 09        .byte $09   ; <け>
- D - I - - 0x02C976 16:8966: 13        .byte $13   ; <て>
- D - I - - 0x02C977 16:8967: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02C978 16:8968: 17        .byte $17   ; <ぬ>
- D - I - - 0x02C979 16:8969: 1F        .byte $1F   ; <ま>

- D - I - - 0x02C97A 16:896A: 01        .byte $01   ; <あ>



off_896B_0A:
- D - I - - 0x02C97B 16:896B: 08        .byte $08   ; <く>
- D - I - - 0x02C97C 16:896C: 08        .byte $08   ; <く>
- D - I - - 0x02C97D 16:896D: 03        .byte $03   ; <う>
- D - I - - 0x02C97E 16:896E: 5C        .byte $5C   ; <フ>
- D - I - - 0x02C97F 16:896F: 07        .byte $07   ; <き>
- D - I - - 0x02C980 16:8970: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02C981 16:8971: 08        .byte $08   ; <く>
- D - I - - 0x02C982 16:8972: 09        .byte $09   ; <け>
- D - I - - 0x02C983 16:8973: 03        .byte $03   ; <う>
- D - I - - 0x02C984 16:8974: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02C985 16:8975: 07        .byte $07   ; <き>
- D - I - - 0x02C986 16:8976: 5F        .byte $5F   ; <マ>

- D - I - - 0x02C987 16:8977: 02        .byte $02   ; <い>
- D - I - - 0x02C988 16:8978: A3 88     .word off_88A3



off_897A_0B:
- D - I - - 0x02C98A 16:897A: 08        .byte $08   ; <く>
- D - I - - 0x02C98B 16:897B: 14        .byte $14   ; <と>
- D - I - - 0x02C98C 16:897C: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02C98D 16:897D: F2        .byte $F2
- D - I - - 0x02C98E 16:897E: 03        .byte $03   ; <う>
- D - I - - 0x02C98F 16:897F: F3        .byte $F3

- D - I - - 0x02C990 16:8980: 08        .byte $08   ; <く>
- D - I - - 0x02C991 16:8981: 15        .byte $15   ; <な>
- D - I - - 0x02C992 16:8982: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02C993 16:8983: F4        .byte $F4
- D - I - - 0x02C994 16:8984: 03        .byte $03   ; <う>
- D - I - - 0x02C995 16:8985: F5        .byte $F5

- D - I - - 0x02C996 16:8986: 00        .byte $00
- D - I - - 0x02C997 16:8987: 09        .byte $09   ; <け>
- D - I - - 0x02C998 16:8988: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02C999 16:8989: 66        .byte $66   ; <ヨ>

- D - I - - 0x02C99A 16:898A: 02        .byte $02   ; <い>
- D - I - - 0x02C99B 16:898B: D4 88     .word off_88D4



off_898D_0C:
- D - I - - 0x02C99D 16:898D: 08        .byte $08   ; <く>
- D - I - - 0x02C99E 16:898E: 08        .byte $08   ; <く>
- D - I - - 0x02C99F 16:898F: 03        .byte $03   ; <う>
- D - I - - 0x02C9A0 16:8990: 5C        .byte $5C   ; <フ>
- D - I - - 0x02C9A1 16:8991: 07        .byte $07   ; <き>
- D - I - - 0x02C9A2 16:8992: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02C9A3 16:8993: 08        .byte $08   ; <く>
- D - I - - 0x02C9A4 16:8994: 09        .byte $09   ; <け>
- D - I - - 0x02C9A5 16:8995: 03        .byte $03   ; <う>
- D - I - - 0x02C9A6 16:8996: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02C9A7 16:8997: 07        .byte $07   ; <き>
- D - I - - 0x02C9A8 16:8998: 5F        .byte $5F   ; <マ>

- D - I - - 0x02C9A9 16:8999: 02        .byte $02   ; <い>
- D - I - - 0x02C9AA 16:899A: 0B 89     .word off_890B



off_899C_0D:
- D - I - - 0x02C9AC 16:899C: 08        .byte $08   ; <く>
- D - I - - 0x02C9AD 16:899D: 14        .byte $14   ; <と>
- D - I - - 0x02C9AE 16:899E: 53        .byte $53   ; <テ>
- D - I - - 0x02C9AF 16:899F: F2        .byte $F2
- D - I - - 0x02C9B0 16:89A0: 57        .byte $57   ; <ヌ>
- D - I - - 0x02C9B1 16:89A1: F3        .byte $F3

- D - I - - 0x02C9B2 16:89A2: 08        .byte $08   ; <く>
- D - I - - 0x02C9B3 16:89A3: 15        .byte $15   ; <な>
- D - I - - 0x02C9B4 16:89A4: 53        .byte $53   ; <テ>
- D - I - - 0x02C9B5 16:89A5: F4        .byte $F4
- D - I - - 0x02C9B6 16:89A6: 57        .byte $57   ; <ヌ>
- D - I - - 0x02C9B7 16:89A7: F5        .byte $F5

- D - I - - 0x02C9B8 16:89A8: 00        .byte $00
- D - I - - 0x02C9B9 16:89A9: 09        .byte $09   ; <け>
- D - I - - 0x02C9BA 16:89AA: 07        .byte $07   ; <き>
- D - I - - 0x02C9BB 16:89AB: 66        .byte $66   ; <ヨ>

- D - I - - 0x02C9BC 16:89AC: 02        .byte $02   ; <い>
- D - I - - 0x02C9BD 16:89AD: 3A 89     .word off_893A



off_89AF_0E:
- - - - - - 0x02C9BF 16:89AF: 08        .byte $08   ; <く>
- - - - - - 0x02C9C0 16:89B0: 03        .byte $03   ; <う>
- - - - - - 0x02C9C1 16:89B1: 0F        .byte $0F   ; <そ>
- - - - - - 0x02C9C2 16:89B2: 5C        .byte $5C   ; <フ>
- - - - - - 0x02C9C3 16:89B3: 13        .byte $13   ; <て>
- - - - - - 0x02C9C4 16:89B4: 5D        .byte $5D   ; <ヘ>

- - - - - - 0x02C9C5 16:89B5: 08        .byte $08   ; <く>
- - - - - - 0x02C9C6 16:89B6: 04        .byte $04   ; <え>
- - - - - - 0x02C9C7 16:89B7: 0F        .byte $0F   ; <そ>
- - - - - - 0x02C9C8 16:89B8: 5E        .byte $5E   ; <ホ>
- - - - - - 0x02C9C9 16:89B9: 13        .byte $13   ; <て>
- - - - - - 0x02C9CA 16:89BA: 5F        .byte $5F   ; <マ>

- - - - - - 0x02C9CB 16:89BB: 01        .byte $01   ; <あ>



off_89BC_0F:
off_89BC:
- D - I - - 0x02C9CC 16:89BC: 03        .byte $03   ; <う>
- D - I - - 0x02C9CD 16:89BD: D5 89     .word off_89D5
- D - I - - 0x02C9CF 16:89BF: 4C 8A     .word off_8A4C
- D - I - - 0x02C9D1 16:89C1: 65 8A     .word off_8A65
- D - I - - 0x02C9D3 16:89C3: 76 8A     .word off_8A76
- D - I - - 0x02C9D5 16:89C5: 83 8A     .word off_8A83
- D - I - - 0x02C9D7 16:89C7: 92 8A     .word off_8A92
- D - I - - 0x02C9D9 16:89C9: AF 8A     .word off_8AAF
- D - I - - 0x02C9DB 16:89CB: C6 8A     .word off_8AC6
- D - I - - 0x02C9DD 16:89CD: FB 8A     .word off_8AFB
- D - I - - 0x02C9DF 16:89CF: 12 8B     .word off_8B12
- D - I - - 0x02C9E1 16:89D1: 29 8B     .word off_8B29
- D - I - - 0x02C9E3 16:89D3: 30 8B     .word off_8B30



off_89D5:
- D - I - - 0x02C9E5 16:89D5: 00        .byte $00
- D - I - - 0x02C9E6 16:89D6: 02        .byte $02   ; <い>
- D - I - - 0x02C9E7 16:89D7: 0C        .byte $0C   ; <し>
- D - I - - 0x02C9E8 16:89D8: 17        .byte $17   ; <ぬ>

- D - I - - 0x02C9E9 16:89D9: 08        .byte $08   ; <く>
- D - I - - 0x02C9EA 16:89DA: 03        .byte $03   ; <う>
- D - I - - 0x02C9EB 16:89DB: 0C        .byte $0C   ; <し>
- D - I - - 0x02C9EC 16:89DC: 1D        .byte $1D   ; <へ>
- D - I - - 0x02C9ED 16:89DD: 13        .byte $13   ; <て>
- D - I - - 0x02C9EE 16:89DE: 48        .byte $48   ; <ク>
; продолжение


off_89DF:
- D - I - - 0x02C9EF 16:89DF: 08        .byte $08   ; <く>
- D - I - - 0x02C9F0 16:89E0: 02        .byte $02   ; <い>
- D - I - - 0x02C9F1 16:89E1: 08        .byte $08   ; <く>
- D - I - - 0x02C9F2 16:89E2: 16        .byte $16   ; <に>
- D - I - - 0x02C9F3 16:89E3: 10        .byte $10   ; <た>
- D - I - - 0x02C9F4 16:89E4: 42        .byte $42   ; <イ>
; продолжение


off_89E5:
- D - I - - 0x02C9F5 16:89E5: 10        .byte $10   ; <た>
- D - I - - 0x02C9F6 16:89E6: 01        .byte $01   ; <あ>
- D - I - - 0x02C9F7 16:89E7: 08        .byte $08   ; <く>
- D - I - - 0x02C9F8 16:89E8: 14        .byte $14   ; <と>
- D - I - - 0x02C9F9 16:89E9: 0C        .byte $0C   ; <し>
- D - I - - 0x02C9FA 16:89EA: 15        .byte $15   ; <な>
- D - I - - 0x02C9FB 16:89EB: 10        .byte $10   ; <た>
- D - I - - 0x02C9FC 16:89EC: 40        .byte $40   ; <「>
; продолжение


off_89ED:
- D - I - - 0x02C9FD 16:89ED: 08        .byte $08   ; <く>
- D - I - - 0x02C9FE 16:89EE: 03        .byte $03   ; <う>
- D - I - - 0x02C9FF 16:89EF: 08        .byte $08   ; <く>
- D - I - - 0x02CA00 16:89F0: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02CA01 16:89F1: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CA02 16:89F2: 3B        .byte $3B   ; <8>
; продолжение


off_89F3:
- D - I - - 0x02CA03 16:89F3: 10        .byte $10   ; <た>
- D - I - - 0x02CA04 16:89F4: 02        .byte $02   ; <い>
- D - I - - 0x02CA05 16:89F5: 05        .byte $05   ; <お>
- D - I - - 0x02CA06 16:89F6: 08        .byte $08   ; <く>
- D - I - - 0x02CA07 16:89F7: 09        .byte $09   ; <け>
- D - I - - 0x02CA08 16:89F8: 09        .byte $09   ; <け>
- D - I - - 0x02CA09 16:89F9: 11        .byte $11   ; <ち>
- D - I - - 0x02CA0A 16:89FA: 0D        .byte $0D   ; <す>

- D - I - - 0x02CA0B 16:89FB: 10        .byte $10   ; <た>
- D - I - - 0x02CA0C 16:89FC: 03        .byte $03   ; <う>
- D - I - - 0x02CA0D 16:89FD: 09        .byte $09   ; <け>
- D - I - - 0x02CA0E 16:89FE: 0A        .byte $0A   ; <こ>
- D - I - - 0x02CA0F 16:89FF: 11        .byte $11   ; <ち>
- D - I - - 0x02CA10 16:8A00: 0E        .byte $0E   ; <せ>
- D - I - - 0x02CA11 16:8A01: 15        .byte $15   ; <な>
- D - I - - 0x02CA12 16:8A02: 0F        .byte $0F   ; <そ>

- D - I - - 0x02CA13 16:8A03: 18        .byte $18   ; <ね>
- D - I - - 0x02CA14 16:8A04: 04        .byte $04   ; <え>
- D - I - - 0x02CA15 16:8A05: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02CA16 16:8A06: 18        .byte $18   ; <ね>
- D - I - - 0x02CA17 16:8A07: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02CA18 16:8A08: 21        .byte $21   ; <む>
- D - I - - 0x02CA19 16:8A09: 61        .byte $61   ; <ム>
- D - I - - 0x02CA1A 16:8A0A: 24        .byte $24   ; <や>
- D - I - - 0x02CA1B 16:8A0B: 73        .byte $73   ; <ヮ>
- D - I - - 0x02CA1C 16:8A0C: 25        .byte $25   ; <ゆ>
; продолжение


off_8A0D:
- D - I - - 0x02CA1D 16:8A0D: 00        .byte $00
- D - I - - 0x02CA1E 16:8A0E: 01        .byte $01   ; <あ>
- D - I - - 0x02CA1F 16:8A0F: 07        .byte $07   ; <き>
- D - I - - 0x02CA20 16:8A10: 10        .byte $10   ; <た>

- D - I - - 0x02CA21 16:8A11: 00        .byte $00
- D - I - - 0x02CA22 16:8A12: 12        .byte $12   ; <つ>
- D - I - - 0x02CA23 16:8A13: 03        .byte $03   ; <う>
- D - I - - 0x02CA24 16:8A14: 07        .byte $07   ; <き>

- D - I - - 0x02CA25 16:8A15: 00        .byte $00
- D - I - - 0x02CA26 16:8A16: 02        .byte $02   ; <い>
- D - I - - 0x02CA27 16:8A17: 0D        .byte $0D   ; <す>
- D - I - - 0x02CA28 16:8A18: 0C        .byte $0C   ; <し>

- D - I - - 0x02CA29 16:8A19: 00        .byte $00
- D - I - - 0x02CA2A 16:8A1A: 03        .byte $03   ; <う>
- D - I - - 0x02CA2B 16:8A1B: 0D        .byte $0D   ; <す>
- D - I - - 0x02CA2C 16:8A1C: 0B        .byte $0B   ; <さ>

- D - I - - 0x02CA2D 16:8A1D: 00        .byte $00
- D - I - - 0x02CA2E 16:8A1E: 04        .byte $04   ; <え>
- D - I - - 0x02CA2F 16:8A1F: 59        .byte $59   ; <ノ>
- D - I - - 0x02CA30 16:8A20: 20        .byte $20   ; <み>

- D - I - - 0x02CA31 16:8A21: 18        .byte $18   ; <ね>
- D - I - - 0x02CA32 16:8A22: 05        .byte $05   ; <お>
- D - I - - 0x02CA33 16:8A23: 0E        .byte $0E   ; <せ>
- D - I - - 0x02CA34 16:8A24: 22        .byte $22   ; <め>
- D - I - - 0x02CA35 16:8A25: 12        .byte $12   ; <つ>
- D - I - - 0x02CA36 16:8A26: 23        .byte $23   ; <も>
- D - I - - 0x02CA37 16:8A27: 16        .byte $16   ; <に>
- D - I - - 0x02CA38 16:8A28: 26        .byte $26   ; <よ>
- D - I - - 0x02CA39 16:8A29: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CA3A 16:8A2A: 27        .byte $27   ; <ら>

- D - I - - 0x02CA3B 16:8A2B: 18        .byte $18   ; <ね>
- D - I - - 0x02CA3C 16:8A2C: 06        .byte $06   ; <か>
- D - I - - 0x02CA3D 16:8A2D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CA3E 16:8A2E: 28        .byte $28   ; <り>
- D - I - - 0x02CA3F 16:8A2F: 13        .byte $13   ; <て>
- D - I - - 0x02CA40 16:8A30: 29        .byte $29   ; <る>
- D - I - - 0x02CA41 16:8A31: 17        .byte $17   ; <ぬ>
- D - I - - 0x02CA42 16:8A32: 2C        .byte $2C   ; <わ>
- D - I - - 0x02CA43 16:8A33: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CA44 16:8A34: 2D        .byte $2D   ; <を>

- D - I - - 0x02CA45 16:8A35: 08        .byte $08   ; <く>
- D - I - - 0x02CA46 16:8A36: 07        .byte $07   ; <き>
- D - I - - 0x02CA47 16:8A37: 11        .byte $11   ; <ち>
- D - I - - 0x02CA48 16:8A38: 2A        .byte $2A   ; <れ>
- D - I - - 0x02CA49 16:8A39: 15        .byte $15   ; <な>
- D - I - - 0x02CA4A 16:8A3A: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02CA4B 16:8A3B: 08        .byte $08   ; <く>
- D - I - - 0x02CA4C 16:8A3C: 08        .byte $08   ; <く>
- D - I - - 0x02CA4D 16:8A3D: 11        .byte $11   ; <ち>
- D - I - - 0x02CA4E 16:8A3E: 2E        .byte $2E   ; <ん>
- D - I - - 0x02CA4F 16:8A3F: 15        .byte $15   ; <な>
- D - I - - 0x02CA50 16:8A40: 2F        .byte $2F   ; <っ>

- D - I - - 0x02CA51 16:8A41: 08        .byte $08   ; <く>
- D - I - - 0x02CA52 16:8A42: 09        .byte $09   ; <け>
- D - I - - 0x02CA53 16:8A43: 75        .byte $75   ; <ェ>
- D - I - - 0x02CA54 16:8A44: 12        .byte $12   ; <つ>
- D - I - - 0x02CA55 16:8A45: 7B        .byte $7B   ; <。>
- D - I - - 0x02CA56 16:8A46: 13        .byte $13   ; <て>

- D - I - - 0x02CA57 16:8A47: 00        .byte $00
- D - I - - 0x02CA58 16:8A48: 16        .byte $16   ; <に>
- D - I - - 0x02CA59 16:8A49: 7F        .byte $7F   ; <,>
- D - I - - 0x02CA5A 16:8A4A: 11        .byte $11   ; <ち>

- D - I - - 0x02CA5B 16:8A4B: 01        .byte $01   ; <あ>



off_8A4C:
- D - I - - 0x02CA5C 16:8A4C: 10        .byte $10   ; <た>
- D - I - - 0x02CA5D 16:8A4D: 01        .byte $01   ; <あ>
- D - I - - 0x02CA5E 16:8A4E: 08        .byte $08   ; <く>
- D - I - - 0x02CA5F 16:8A4F: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02CA60 16:8A50: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA61 16:8A51: 1F        .byte $1F   ; <ま>
- D - I - - 0x02CA62 16:8A52: 10        .byte $10   ; <た>
- D - I - - 0x02CA63 16:8A53: 4A        .byte $4A   ; <コ>

- D - I - - 0x02CA64 16:8A54: 10        .byte $10   ; <た>
- D - I - - 0x02CA65 16:8A55: 02        .byte $02   ; <い>
- D - I - - 0x02CA66 16:8A56: 08        .byte $08   ; <く>
- D - I - - 0x02CA67 16:8A57: 34        .byte $34   ; <1>
- D - I - - 0x02CA68 16:8A58: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA69 16:8A59: 35        .byte $35   ; <2>
- D - I - - 0x02CA6A 16:8A5A: 10        .byte $10   ; <た>
- D - I - - 0x02CA6B 16:8A5B: 60        .byte $60   ; <ミ>

- D - I - - 0x02CA6C 16:8A5C: 08        .byte $08   ; <く>
- D - I - - 0x02CA6D 16:8A5D: 03        .byte $03   ; <う>
- D - I - - 0x02CA6E 16:8A5E: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA6F 16:8A5F: 1D        .byte $1D   ; <へ>
- D - I - - 0x02CA70 16:8A60: 13        .byte $13   ; <て>
- D - I - - 0x02CA71 16:8A61: 48        .byte $48   ; <ク>

- D - I - - 0x02CA72 16:8A62: 02        .byte $02   ; <い>
- D - I - - 0x02CA73 16:8A63: ED 89     .word off_89ED



off_8A65:
- D - I - - 0x02CA75 16:8A65: 10        .byte $10   ; <た>
- D - I - - 0x02CA76 16:8A66: 02        .byte $02   ; <い>
- D - I - - 0x02CA77 16:8A67: 08        .byte $08   ; <く>
- D - I - - 0x02CA78 16:8A68: 16        .byte $16   ; <に>
- D - I - - 0x02CA79 16:8A69: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA7A 16:8A6A: 36        .byte $36   ; <3>
- D - I - - 0x02CA7B 16:8A6B: 10        .byte $10   ; <た>
- D - I - - 0x02CA7C 16:8A6C: 37        .byte $37   ; <4>

- D - I - - 0x02CA7D 16:8A6D: 08        .byte $08   ; <く>
- D - I - - 0x02CA7E 16:8A6E: 03        .byte $03   ; <う>
- D - I - - 0x02CA7F 16:8A6F: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA80 16:8A70: 1D        .byte $1D   ; <へ>
- D - I - - 0x02CA81 16:8A71: 13        .byte $13   ; <て>
- D - I - - 0x02CA82 16:8A72: 3D        .byte $3D   ; <+>

- D - I - - 0x02CA83 16:8A73: 02        .byte $02   ; <い>
- D - I - - 0x02CA84 16:8A74: E5 89     .word off_89E5



off_8A76:
- D - I - - 0x02CA86 16:8A76: 00        .byte $00
- D - I - - 0x02CA87 16:8A77: 02        .byte $02   ; <い>
- D - I - - 0x02CA88 16:8A78: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA89 16:8A79: 3C        .byte $3C   ; <9>

- D - I - - 0x02CA8A 16:8A7A: 08        .byte $08   ; <く>
- D - I - - 0x02CA8B 16:8A7B: 03        .byte $03   ; <う>
- D - I - - 0x02CA8C 16:8A7C: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA8D 16:8A7D: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02CA8E 16:8A7E: 13        .byte $13   ; <て>
- D - I - - 0x02CA8F 16:8A7F: 3F        .byte $3F   ; <•>

- D - I - - 0x02CA90 16:8A80: 02        .byte $02   ; <い>
- D - I - - 0x02CA91 16:8A81: DF 89     .word off_89DF



off_8A83:
- D - I - - 0x02CA93 16:8A83: 08        .byte $08   ; <く>
- D - I - - 0x02CA94 16:8A84: 02        .byte $02   ; <い>
- D - I - - 0x02CA95 16:8A85: 0C        .byte $0C   ; <し>
- D - I - - 0x02CA96 16:8A86: 62        .byte $62   ; <メ>
- D - I - - 0x02CA97 16:8A87: 10        .byte $10   ; <た>
- D - I - - 0x02CA98 16:8A88: 63        .byte $63   ; <モ>

- D - I - - 0x02CA99 16:8A89: 08        .byte $08   ; <く>
- D - I - - 0x02CA9A 16:8A8A: 03        .byte $03   ; <う>
- D - I - - 0x02CA9B 16:8A8B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CA9C 16:8A8C: 68        .byte $68   ; <リ>
- D - I - - 0x02CA9D 16:8A8D: 13        .byte $13   ; <て>
- D - I - - 0x02CA9E 16:8A8E: 69        .byte $69   ; <ル>

- D - I - - 0x02CA9F 16:8A8F: 02        .byte $02   ; <い>
- D - I - - 0x02CAA0 16:8A90: F3 89     .word off_89F3



off_8A92:
- D - I - - 0x02CAA2 16:8A92: 00        .byte $00
- D - I - - 0x02CAA3 16:8A93: 02        .byte $02   ; <い>
- D - I - - 0x02CAA4 16:8A94: 10        .byte $10   ; <た>
- D - I - - 0x02CAA5 16:8A95: 47        .byte $47   ; <キ>
; продолжение


off_8A96:
- D - I - - 0x02CAA6 16:8A96: 08        .byte $08   ; <く>
- D - I - - 0x02CAA7 16:8A97: 01        .byte $01   ; <あ>
- D - I - - 0x02CAA8 16:8A98: 0C        .byte $0C   ; <し>
- D - I - - 0x02CAA9 16:8A99: 41        .byte $41   ; <ア>
- D - I - - 0x02CAAA 16:8A9A: 10        .byte $10   ; <た>
- D - I - - 0x02CAAB 16:8A9B: 44        .byte $44   ; <エ>

- D - I - - 0x02CAAC 16:8A9C: 08        .byte $08   ; <く>
- D - I - - 0x02CAAD 16:8A9D: 02        .byte $02   ; <い>
- D - I - - 0x02CAAE 16:8A9E: 08        .byte $08   ; <く>
- D - I - - 0x02CAAF 16:8A9F: 43        .byte $43   ; <ウ>
- D - I - - 0x02CAB0 16:8AA0: 0C        .byte $0C   ; <し>
- D - I - - 0x02CAB1 16:8AA1: 46        .byte $46   ; <カ>

- D - I - - 0x02CAB2 16:8AA2: 18        .byte $18   ; <ね>
- D - I - - 0x02CAB3 16:8AA3: 03        .byte $03   ; <う>
- D - I - - 0x02CAB4 16:8AA4: 08        .byte $08   ; <く>
- D - I - - 0x02CAB5 16:8AA5: 49        .byte $49   ; <ケ>
- D - I - - 0x02CAB6 16:8AA6: 0C        .byte $0C   ; <し>
- D - I - - 0x02CAB7 16:8AA7: 4C        .byte $4C   ; <シ>
- D - I - - 0x02CAB8 16:8AA8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CAB9 16:8AA9: 3B        .byte $3B   ; <8>
- D - I - - 0x02CABA 16:8AAA: 13        .byte $13   ; <て>
- D - I - - 0x02CABB 16:8AAB: 4D        .byte $4D   ; <ス>

- D - I - - 0x02CABC 16:8AAC: 02        .byte $02   ; <い>
- D - I - - 0x02CABD 16:8AAD: F3 89     .word off_89F3



off_8AAF:
- D - I - - 0x02CABF 16:8AAF: 08        .byte $08   ; <く>
- D - I - - 0x02CAC0 16:8AB0: 01        .byte $01   ; <あ>
- D - I - - 0x02CAC1 16:8AB1: 0C        .byte $0C   ; <し>
- D - I - - 0x02CAC2 16:8AB2: 66        .byte $66   ; <ヨ>
- D - I - - 0x02CAC3 16:8AB3: 10        .byte $10   ; <た>
- D - I - - 0x02CAC4 16:8AB4: 67        .byte $67   ; <ラ>

- D - I - - 0x02CAC5 16:8AB5: 10        .byte $10   ; <た>
- D - I - - 0x02CAC6 16:8AB6: 02        .byte $02   ; <い>
- D - I - - 0x02CAC7 16:8AB7: 08        .byte $08   ; <く>
- D - I - - 0x02CAC8 16:8AB8: 4B        .byte $4B   ; <サ>
- D - I - - 0x02CAC9 16:8AB9: 0C        .byte $0C   ; <し>
- D - I - - 0x02CACA 16:8ABA: 4E        .byte $4E   ; <セ>
- D - I - - 0x02CACB 16:8ABB: 10        .byte $10   ; <た>
- D - I - - 0x02CACC 16:8ABC: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02CACD 16:8ABD: 08        .byte $08   ; <く>
- D - I - - 0x02CACE 16:8ABE: 03        .byte $03   ; <う>
- D - I - - 0x02CACF 16:8ABF: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CAD0 16:8AC0: 64        .byte $64   ; <ヤ>
- D - I - - 0x02CAD1 16:8AC1: 13        .byte $13   ; <て>
- D - I - - 0x02CAD2 16:8AC2: 65        .byte $65   ; <ユ>

- D - I - - 0x02CAD3 16:8AC3: 02        .byte $02   ; <い>
- D - I - - 0x02CAD4 16:8AC4: F3 89     .word off_89F3



off_8AC6:
- D - I - - 0x02CAD6 16:8AC6: 10        .byte $10   ; <た>
- D - I - - 0x02CAD7 16:8AC7: 01        .byte $01   ; <あ>
- D - I - - 0x02CAD8 16:8AC8: 08        .byte $08   ; <く>
- D - I - - 0x02CAD9 16:8AC9: 45        .byte $45   ; <オ>
- D - I - - 0x02CADA 16:8ACA: 0C        .byte $0C   ; <し>
- D - I - - 0x02CADB 16:8ACB: 50        .byte $50   ; <タ>
- D - I - - 0x02CADC 16:8ACC: 10        .byte $10   ; <た>
- D - I - - 0x02CADD 16:8ACD: 51        .byte $51   ; <チ>

- D - I - - 0x02CADE 16:8ACE: 10        .byte $10   ; <た>
- D - I - - 0x02CADF 16:8ACF: 02        .byte $02   ; <い>
- D - I - - 0x02CAE0 16:8AD0: 08        .byte $08   ; <く>
- D - I - - 0x02CAE1 16:8AD1: 71        .byte $71   ; <ュ>
- D - I - - 0x02CAE2 16:8AD2: 0C        .byte $0C   ; <し>
- D - I - - 0x02CAE3 16:8AD3: 52        .byte $52   ; <ツ>
- D - I - - 0x02CAE4 16:8AD4: 10        .byte $10   ; <た>
- D - I - - 0x02CAE5 16:8AD5: 53        .byte $53   ; <テ>

- D - I - - 0x02CAE6 16:8AD6: 10        .byte $10   ; <た>
- D - I - - 0x02CAE7 16:8AD7: 03        .byte $03   ; <う>
- D - I - - 0x02CAE8 16:8AD8: 08        .byte $08   ; <く>
- D - I - - 0x02CAE9 16:8AD9: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02CAEA 16:8ADA: 0C        .byte $0C   ; <し>
- D - I - - 0x02CAEB 16:8ADB: 58        .byte $58   ; <ネ>
- D - I - - 0x02CAEC 16:8ADC: 13        .byte $13   ; <て>
- D - I - - 0x02CAED 16:8ADD: 59        .byte $59   ; <ノ>

- D - I - - 0x02CAEE 16:8ADE: 10        .byte $10   ; <た>
- D - I - - 0x02CAEF 16:8ADF: 02        .byte $02   ; <い>
- D - I - - 0x02CAF0 16:8AE0: 05        .byte $05   ; <お>
- D - I - - 0x02CAF1 16:8AE1: 1A        .byte $1A   ; <は>
- D - I - - 0x02CAF2 16:8AE2: 09        .byte $09   ; <け>
- D - I - - 0x02CAF3 16:8AE3: 19        .byte $19   ; <の>
- D - I - - 0x02CAF4 16:8AE4: 11        .byte $11   ; <ち>
- D - I - - 0x02CAF5 16:8AE5: 30        .byte $30   ; <ゃ>

- D - I - - 0x02CAF6 16:8AE6: 10        .byte $10   ; <た>
- D - I - - 0x02CAF7 16:8AE7: 03        .byte $03   ; <う>
- D - I - - 0x02CAF8 16:8AE8: 09        .byte $09   ; <け>
- D - I - - 0x02CAF9 16:8AE9: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CAFA 16:8AEA: 11        .byte $11   ; <ち>
- D - I - - 0x02CAFB 16:8AEB: 32        .byte $32   ; <ょ>
- D - I - - 0x02CAFC 16:8AEC: 15        .byte $15   ; <な>
- D - I - - 0x02CAFD 16:8AED: 33        .byte $33   ; <0>

- D - I - - 0x02CAFE 16:8AEE: 18        .byte $18   ; <ね>
- D - I - - 0x02CAFF 16:8AEF: 04        .byte $04   ; <え>
- D - I - - 0x02CB00 16:8AF0: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02CB01 16:8AF1: 3A        .byte $3A   ; <7>
- D - I - - 0x02CB02 16:8AF2: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02CB03 16:8AF3: 31        .byte $31   ; <ゅ>
- D - I - - 0x02CB04 16:8AF4: 61        .byte $61   ; <ム>
- D - I - - 0x02CB05 16:8AF5: 38        .byte $38   ; <5>
- D - I - - 0x02CB06 16:8AF6: 73        .byte $73   ; <ヮ>
- D - I - - 0x02CB07 16:8AF7: 39        .byte $39   ; <6>

- D - I - - 0x02CB08 16:8AF8: 02        .byte $02   ; <い>
- D - I - - 0x02CB09 16:8AF9: 0D 8A     .word off_8A0D



off_8AFB:
- D - I - - 0x02CB0B 16:8AFB: 08        .byte $08   ; <く>
- D - I - - 0x02CB0C 16:8AFC: 01        .byte $01   ; <あ>
- D - I - - 0x02CB0D 16:8AFD: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB0E 16:8AFE: 66        .byte $66   ; <ヨ>
- D - I - - 0x02CB0F 16:8AFF: 10        .byte $10   ; <た>
- D - I - - 0x02CB10 16:8B00: 67        .byte $67   ; <ラ>

- D - I - - 0x02CB11 16:8B01: 10        .byte $10   ; <た>
- D - I - - 0x02CB12 16:8B02: 02        .byte $02   ; <い>
- D - I - - 0x02CB13 16:8B03: 08        .byte $08   ; <く>
- D - I - - 0x02CB14 16:8B04: 4B        .byte $4B   ; <サ>
- D - I - - 0x02CB15 16:8B05: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB16 16:8B06: 6A        .byte $6A   ; <レ>
- D - I - - 0x02CB17 16:8B07: 10        .byte $10   ; <た>
- D - I - - 0x02CB18 16:8B08: 6B        .byte $6B   ; <ロ>

- D - I - - 0x02CB19 16:8B09: 08        .byte $08   ; <く>
- D - I - - 0x02CB1A 16:8B0A: 03        .byte $03   ; <う>
- D - I - - 0x02CB1B 16:8B0B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CB1C 16:8B0C: 68        .byte $68   ; <リ>
- D - I - - 0x02CB1D 16:8B0D: 13        .byte $13   ; <て>
- D - I - - 0x02CB1E 16:8B0E: 69        .byte $69   ; <ル>

- D - I - - 0x02CB1F 16:8B0F: 02        .byte $02   ; <い>
- D - I - - 0x02CB20 16:8B10: F3 89     .word off_89F3



off_8B12:
- D - I - - 0x02CB22 16:8B12: 08        .byte $08   ; <く>
- D - I - - 0x02CB23 16:8B13: 01        .byte $01   ; <あ>
- D - I - - 0x02CB24 16:8B14: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB25 16:8B15: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02CB26 16:8B16: 10        .byte $10   ; <た>
- D - I - - 0x02CB27 16:8B17: 6D        .byte $6D   ; <ヲ>

- D - I - - 0x02CB28 16:8B18: 10        .byte $10   ; <た>
- D - I - - 0x02CB29 16:8B19: 02        .byte $02   ; <い>
- D - I - - 0x02CB2A 16:8B1A: 08        .byte $08   ; <く>
- D - I - - 0x02CB2B 16:8B1B: 6E        .byte $6E   ; <ン>
- D - I - - 0x02CB2C 16:8B1C: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB2D 16:8B1D: 17        .byte $17   ; <ぬ>
- D - I - - 0x02CB2E 16:8B1E: 10        .byte $10   ; <た>
- D - I - - 0x02CB2F 16:8B1F: 42        .byte $42   ; <イ>

- D - I - - 0x02CB30 16:8B20: 08        .byte $08   ; <く>
- D - I - - 0x02CB31 16:8B21: 03        .byte $03   ; <う>
- D - I - - 0x02CB32 16:8B22: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB33 16:8B23: 1D        .byte $1D   ; <へ>
- D - I - - 0x02CB34 16:8B24: 13        .byte $13   ; <て>
- D - I - - 0x02CB35 16:8B25: 48        .byte $48   ; <ク>

- D - I - - 0x02CB36 16:8B26: 02        .byte $02   ; <い>
- D - I - - 0x02CB37 16:8B27: ED 89     .word off_89ED



off_8B29:
- D - I - - 0x02CB39 16:8B29: 00        .byte $00
- D - I - - 0x02CB3A 16:8B2A: 02        .byte $02   ; <い>
- D - I - - 0x02CB3B 16:8B2B: 10        .byte $10   ; <た>
- D - I - - 0x02CB3C 16:8B2C: 6F        .byte $6F   ; <ッ>

- D - I - - 0x02CB3D 16:8B2D: 02        .byte $02   ; <い>
- D - I - - 0x02CB3E 16:8B2E: 96 8A     .word off_8A96



off_8B30:
- D - I - - 0x02CB40 16:8B30: 08        .byte $08   ; <く>
- D - I - - 0x02CB41 16:8B31: 02        .byte $02   ; <い>
- D - I - - 0x02CB42 16:8B32: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB43 16:8B33: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02CB44 16:8B34: 10        .byte $10   ; <た>
- D - I - - 0x02CB45 16:8B35: 37        .byte $37   ; <4>

- D - I - - 0x02CB46 16:8B36: 08        .byte $08   ; <く>
- D - I - - 0x02CB47 16:8B37: 03        .byte $03   ; <う>
- D - I - - 0x02CB48 16:8B38: 0C        .byte $0C   ; <し>
- D - I - - 0x02CB49 16:8B39: 70        .byte $70   ; <ャ>
- D - I - - 0x02CB4A 16:8B3A: 13        .byte $13   ; <て>
- D - I - - 0x02CB4B 16:8B3B: 3D        .byte $3D   ; <+>

- D - I - - 0x02CB4C 16:8B3C: 02        .byte $02   ; <い>
- D - I - - 0x02CB4D 16:8B3D: DF 89     .word off_89DF



off_8B3F_10:
- D - I - - 0x02CB4F 16:8B3F: 08        .byte $08   ; <く>
- D - I - - 0x02CB50 16:8B40: 09        .byte $09   ; <け>
- D - I - - 0x02CB51 16:8B41: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB52 16:8B42: 05        .byte $05   ; <お>
- D - I - - 0x02CB53 16:8B43: 83        .byte $83   ; <C>
- D - I - - 0x02CB54 16:8B44: 55        .byte $55   ; <ナ>

- D - I - - 0x02CB55 16:8B45: 08        .byte $08   ; <く>
- D - I - - 0x02CB56 16:8B46: 16        .byte $16   ; <に>
- D - I - - 0x02CB57 16:8B47: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB58 16:8B48: 61        .byte $61   ; <ム>
- D - I - - 0x02CB59 16:8B49: 83        .byte $83   ; <C>
- D - I - - 0x02CB5A 16:8B4A: 57        .byte $57   ; <ヌ>

- D - I - - 0x02CB5B 16:8B4B: 02        .byte $02   ; <い>
- D - I - - 0x02CB5C 16:8B4C: BC 89     .word off_89BC



off_8B4E_11:
- D - I - - 0x02CB5E 16:8B4E: 00        .byte $00
- D - I - - 0x02CB5F 16:8B4F: 08        .byte $08   ; <く>
- D - I - - 0x02CB60 16:8B50: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB61 16:8B51: 5C        .byte $5C   ; <フ>

- D - I - - 0x02CB62 16:8B52: 08        .byte $08   ; <く>
- D - I - - 0x02CB63 16:8B53: 09        .byte $09   ; <け>
- D - I - - 0x02CB64 16:8B54: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB65 16:8B55: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02CB66 16:8B56: 83        .byte $83   ; <C>
- D - I - - 0x02CB67 16:8B57: 55        .byte $55   ; <ナ>

- D - I - - 0x02CB68 16:8B58: 08        .byte $08   ; <く>
- D - I - - 0x02CB69 16:8B59: 16        .byte $16   ; <に>
- D - I - - 0x02CB6A 16:8B5A: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB6B 16:8B5B: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02CB6C 16:8B5C: 83        .byte $83   ; <C>
- D - I - - 0x02CB6D 16:8B5D: 57        .byte $57   ; <ヌ>

- D - I - - 0x02CB6E 16:8B5E: 02        .byte $02   ; <い>
- D - I - - 0x02CB6F 16:8B5F: BC 89     .word off_89BC



off_8B61_12:
- D - I - - 0x02CB71 16:8B61: 00        .byte $00
- D - I - - 0x02CB72 16:8B62: 08        .byte $08   ; <く>
- D - I - - 0x02CB73 16:8B63: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB74 16:8B64: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02CB75 16:8B65: 08        .byte $08   ; <く>
- D - I - - 0x02CB76 16:8B66: 09        .byte $09   ; <け>
- D - I - - 0x02CB77 16:8B67: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB78 16:8B68: 5F        .byte $5F   ; <マ>
- D - I - - 0x02CB79 16:8B69: 83        .byte $83   ; <C>
- D - I - - 0x02CB7A 16:8B6A: 55        .byte $55   ; <ナ>

- D - I - - 0x02CB7B 16:8B6B: 08        .byte $08   ; <く>
- D - I - - 0x02CB7C 16:8B6C: 16        .byte $16   ; <に>
- D - I - - 0x02CB7D 16:8B6D: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CB7E 16:8B6E: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02CB7F 16:8B6F: 83        .byte $83   ; <C>
- D - I - - 0x02CB80 16:8B70: 57        .byte $57   ; <ヌ>

- D - I - - 0x02CB81 16:8B71: 02        .byte $02   ; <い>
- D - I - - 0x02CB82 16:8B72: BC 89     .word off_89BC



off_8B74_13:
- D - I - - 0x02CB84 16:8B74: 08        .byte $08   ; <く>
- D - I - - 0x02CB85 16:8B75: 03        .byte $03   ; <う>
- D - I - - 0x02CB86 16:8B76: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CB87 16:8B77: 54        .byte $54   ; <ト>
- D - I - - 0x02CB88 16:8B78: 13        .byte $13   ; <て>
- D - I - - 0x02CB89 16:8B79: 55        .byte $55   ; <ナ>

- D - I - - 0x02CB8A 16:8B7A: 08        .byte $08   ; <く>
- D - I - - 0x02CB8B 16:8B7B: 04        .byte $04   ; <え>
- D - I - - 0x02CB8C 16:8B7C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CB8D 16:8B7D: 56        .byte $56   ; <ニ>
- D - I - - 0x02CB8E 16:8B7E: 13        .byte $13   ; <て>
- D - I - - 0x02CB8F 16:8B7F: 57        .byte $57   ; <ヌ>

- D - I - - 0x02CB90 16:8B80: 01        .byte $01   ; <あ>



off_8B81_14:
off_8B81:
- D - I - - 0x02CB91 16:8B81: 03        .byte $03   ; <う>
- D - I - - 0x02CB92 16:8B82: 9A 8B     .word off_8B9A
- D - I - - 0x02CB94 16:8B84: AF 8B     .word off_8BAF
- D - I - - 0x02CB96 16:8B86: D2 8B     .word off_8BD2
- D - I - - 0x02CB98 16:8B88: D9 8B     .word off_8BD9
- D - I - - 0x02CB9A 16:8B8A: F2 8B     .word off_8BF2
- D - I - - 0x02CB9C 16:8B8C: 11 8C     .word off_8C11
- D - I - - 0x02CB9E 16:8B8E: 26 8C     .word off_8C26
- D - I - - 0x02CBA0 16:8B90: 3B 8C     .word off_8C3B
- D - I - - 0x02CBA2 16:8B92: 5A 8C     .word off_8C5A
- D - I - - 0x02CBA4 16:8B94: 73 8C     .word off_8C73
- D - I - - 0x02CBA6 16:8B96: 88 8C     .word off_8C88
- D - I - - 0x02CBA8 16:8B98: 9D 8C     .word off_8C9D



off_8B9A:
- D - I - - 0x02CBAA 16:8B9A: 10        .byte $10   ; <た>
- D - I - - 0x02CBAB 16:8B9B: 01        .byte $01   ; <あ>
- D - I - - 0x02CBAC 16:8B9C: 0C        .byte $0C   ; <し>
- D - I - - 0x02CBAD 16:8B9D: 11        .byte $11   ; <ち>
- D - I - - 0x02CBAE 16:8B9E: 10        .byte $10   ; <た>
- D - I - - 0x02CBAF 16:8B9F: 14        .byte $14   ; <と>
- D - I - - 0x02CBB0 16:8BA0: 14        .byte $14   ; <と>
- D - I - - 0x02CBB1 16:8BA1: 15        .byte $15   ; <な>

- D - I - - 0x02CBB2 16:8BA2: 18        .byte $18   ; <ね>
- D - I - - 0x02CBB3 16:8BA3: 02        .byte $02   ; <い>
- D - I - - 0x02CBB4 16:8BA4: 0C        .byte $0C   ; <し>
- D - I - - 0x02CBB5 16:8BA5: 16        .byte $16   ; <に>
- D - I - - 0x02CBB6 16:8BA6: 10        .byte $10   ; <た>
- D - I - - 0x02CBB7 16:8BA7: 17        .byte $17   ; <ぬ>
- D - I - - 0x02CBB8 16:8BA8: 13        .byte $13   ; <て>
- D - I - - 0x02CBB9 16:8BA9: 05        .byte $05   ; <お>
- D - I - - 0x02CBBA 16:8BAA: 14        .byte $14   ; <と>
- D - I - - 0x02CBBB 16:8BAB: 1D        .byte $1D   ; <へ>

- D - I - - 0x02CBBC 16:8BAC: 02        .byte $02   ; <い>
- D - I - - 0x02CBBD 16:8BAD: B1 8C     .word off_8CB1



off_8BAF:
- D - I - - 0x02CBBF 16:8BAF: 18        .byte $18   ; <ね>
- D - I - - 0x02CBC0 16:8BB0: 01        .byte $01   ; <あ>
- D - I - - 0x02CBC1 16:8BB1: 0C        .byte $0C   ; <し>
- D - I - - 0x02CBC2 16:8BB2: 1A        .byte $1A   ; <は>
- D - I - - 0x02CBC3 16:8BB3: 10        .byte $10   ; <た>
- D - I - - 0x02CBC4 16:8BB4: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CBC5 16:8BB5: 14        .byte $14   ; <と>
- D - I - - 0x02CBC6 16:8BB6: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02CBC7 16:8BB7: 18        .byte $18   ; <ね>
- D - I - - 0x02CBC8 16:8BB8: 1F        .byte $1F   ; <ま>

- D - I - - 0x02CBC9 16:8BB9: 20        .byte $20   ; <み>
- D - I - - 0x02CBCA 16:8BBA: 02        .byte $02   ; <い>
- D - I - - 0x02CBCB 16:8BBB: 0C        .byte $0C   ; <し>
- D - I - - 0x02CBCC 16:8BBC: 30        .byte $30   ; <ゃ>
- D - I - - 0x02CBCD 16:8BBD: 10        .byte $10   ; <た>
- D - I - - 0x02CBCE 16:8BBE: 31        .byte $31   ; <ゅ>
- D - I - - 0x02CBCF 16:8BBF: 13        .byte $13   ; <て>
- D - I - - 0x02CBD0 16:8BC0: 05        .byte $05   ; <お>
- D - I - - 0x02CBD1 16:8BC1: 14        .byte $14   ; <と>
- D - I - - 0x02CBD2 16:8BC2: 34        .byte $34   ; <1>
- D - I - - 0x02CBD3 16:8BC3: 18        .byte $18   ; <ね>
- D - I - - 0x02CBD4 16:8BC4: 35        .byte $35   ; <2>

- D - I - - 0x02CBD5 16:8BC5: 18        .byte $18   ; <ね>
- D - I - - 0x02CBD6 16:8BC6: 03        .byte $03   ; <う>
- D - I - - 0x02CBD7 16:8BC7: 11        .byte $11   ; <ち>
- D - I - - 0x02CBD8 16:8BC8: 18        .byte $18   ; <ね>
- D - I - - 0x02CBD9 16:8BC9: 13        .byte $13   ; <て>
- D - I - - 0x02CBDA 16:8BCA: 05        .byte $05   ; <お>
- D - I - - 0x02CBDB 16:8BCB: 15        .byte $15   ; <な>
- D - I - - 0x02CBDC 16:8BCC: 32        .byte $32   ; <ょ>
- D - I - - 0x02CBDD 16:8BCD: 18        .byte $18   ; <ね>
- D - I - - 0x02CBDE 16:8BCE: 33        .byte $33   ; <0>

- D - I - - 0x02CBDF 16:8BCF: 02        .byte $02   ; <い>
- D - I - - 0x02CBE0 16:8BD0: BD 8C     .word off_8CBD



off_8BD2:
- D - I - - 0x02CBE2 16:8BD2: 00        .byte $00
- D - I - - 0x02CBE3 16:8BD3: 02        .byte $02   ; <い>
- D - I - - 0x02CBE4 16:8BD4: 14        .byte $14   ; <と>
- D - I - - 0x02CBE5 16:8BD5: 39        .byte $39   ; <6>

- D - I - - 0x02CBE6 16:8BD6: 02        .byte $02   ; <い>
- D - I - - 0x02CBE7 16:8BD7: A1 8C     .word off_8CA1



off_8BD9:
- D - I - - 0x02CBE9 16:8BD9: 10        .byte $10   ; <た>
- D - I - - 0x02CBEA 16:8BDA: 01        .byte $01   ; <あ>
- D - I - - 0x02CBEB 16:8BDB: 0C        .byte $0C   ; <し>
- D - I - - 0x02CBEC 16:8BDC: 1A        .byte $1A   ; <は>
- D - I - - 0x02CBED 16:8BDD: 10        .byte $10   ; <た>
- D - I - - 0x02CBEE 16:8BDE: 3A        .byte $3A   ; <7>
- D - I - - 0x02CBEF 16:8BDF: 14        .byte $14   ; <と>
- D - I - - 0x02CBF0 16:8BE0: 3B        .byte $3B   ; <8>

- D - I - - 0x02CBF1 16:8BE1: 18        .byte $18   ; <ね>
- D - I - - 0x02CBF2 16:8BE2: 02        .byte $02   ; <い>
- D - I - - 0x02CBF3 16:8BE3: 0C        .byte $0C   ; <し>
- D - I - - 0x02CBF4 16:8BE4: 3C        .byte $3C   ; <9>
- D - I - - 0x02CBF5 16:8BE5: 10        .byte $10   ; <た>
- D - I - - 0x02CBF6 16:8BE6: 3D        .byte $3D   ; <+>
- D - I - - 0x02CBF7 16:8BE7: 13        .byte $13   ; <て>
- D - I - - 0x02CBF8 16:8BE8: 05        .byte $05   ; <お>
- D - I - - 0x02CBF9 16:8BE9: 14        .byte $14   ; <と>
- D - I - - 0x02CBFA 16:8BEA: 1D        .byte $1D   ; <へ>

- D - I - - 0x02CBFB 16:8BEB: 00        .byte $00
- D - I - - 0x02CBFC 16:8BEC: 03        .byte $03   ; <う>
- D - I - - 0x02CBFD 16:8BED: 11        .byte $11   ; <ち>
- D - I - - 0x02CBFE 16:8BEE: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02CBFF 16:8BEF: 02        .byte $02   ; <い>
- D - I - - 0x02CC00 16:8BF0: B1 8C     .word off_8CB1



off_8BF2:
- D - I - - 0x02CC02 16:8BF2: 10        .byte $10   ; <た>
- D - I - - 0x02CC03 16:8BF3: 01        .byte $01   ; <あ>
- D - I - - 0x02CC04 16:8BF4: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC05 16:8BF5: 3F        .byte $3F   ; <•>
- D - I - - 0x02CC06 16:8BF6: 10        .byte $10   ; <た>
- D - I - - 0x02CC07 16:8BF7: 40        .byte $40   ; <「>
- D - I - - 0x02CC08 16:8BF8: 14        .byte $14   ; <と>
- D - I - - 0x02CC09 16:8BF9: 41        .byte $41   ; <ア>

- D - I - - 0x02CC0A 16:8BFA: 18        .byte $18   ; <ね>
- D - I - - 0x02CC0B 16:8BFB: 02        .byte $02   ; <い>
- D - I - - 0x02CC0C 16:8BFC: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC0D 16:8BFD: 42        .byte $42   ; <イ>
- D - I - - 0x02CC0E 16:8BFE: 10        .byte $10   ; <た>
- D - I - - 0x02CC0F 16:8BFF: 43        .byte $43   ; <ウ>
- D - I - - 0x02CC10 16:8C00: 13        .byte $13   ; <て>
- D - I - - 0x02CC11 16:8C01: 05        .byte $05   ; <お>
- D - I - - 0x02CC12 16:8C02: 14        .byte $14   ; <と>
- D - I - - 0x02CC13 16:8C03: 46        .byte $46   ; <カ>
; продолжение


off_8C04:
- D - I - - 0x02CC14 16:8C04: 18        .byte $18   ; <ね>
- D - I - - 0x02CC15 16:8C05: 03        .byte $03   ; <う>
- D - I - - 0x02CC16 16:8C06: 11        .byte $11   ; <ち>
- D - I - - 0x02CC17 16:8C07: 44        .byte $44   ; <エ>
- D - I - - 0x02CC18 16:8C08: 13        .byte $13   ; <て>
- D - I - - 0x02CC19 16:8C09: 05        .byte $05   ; <お>
- D - I - - 0x02CC1A 16:8C0A: 15        .byte $15   ; <な>
- D - I - - 0x02CC1B 16:8C0B: 19        .byte $19   ; <の>
- D - I - - 0x02CC1C 16:8C0C: 18        .byte $18   ; <ね>
- D - I - - 0x02CC1D 16:8C0D: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02CC1E 16:8C0E: 02        .byte $02   ; <い>
- D - I - - 0x02CC1F 16:8C0F: BD 8C     .word off_8CBD



off_8C11:
- D - I - - 0x02CC21 16:8C11: 10        .byte $10   ; <た>
- D - I - - 0x02CC22 16:8C12: 01        .byte $01   ; <あ>
- D - I - - 0x02CC23 16:8C13: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC24 16:8C14: 48        .byte $48   ; <ク>
- D - I - - 0x02CC25 16:8C15: 10        .byte $10   ; <た>
- D - I - - 0x02CC26 16:8C16: 49        .byte $49   ; <ケ>
- D - I - - 0x02CC27 16:8C17: 14        .byte $14   ; <と>
- D - I - - 0x02CC28 16:8C18: 4C        .byte $4C   ; <シ>

- D - I - - 0x02CC29 16:8C19: 18        .byte $18   ; <ね>
- D - I - - 0x02CC2A 16:8C1A: 02        .byte $02   ; <い>
- D - I - - 0x02CC2B 16:8C1B: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC2C 16:8C1C: 4A        .byte $4A   ; <コ>
- D - I - - 0x02CC2D 16:8C1D: 10        .byte $10   ; <た>
- D - I - - 0x02CC2E 16:8C1E: 4B        .byte $4B   ; <サ>
- D - I - - 0x02CC2F 16:8C1F: 13        .byte $13   ; <て>
- D - I - - 0x02CC30 16:8C20: 05        .byte $05   ; <お>
- D - I - - 0x02CC31 16:8C21: 14        .byte $14   ; <と>
- D - I - - 0x02CC32 16:8C22: 4E        .byte $4E   ; <セ>

- D - I - - 0x02CC33 16:8C23: 02        .byte $02   ; <い>
- D - I - - 0x02CC34 16:8C24: 04 8C     .word off_8C04



off_8C26:
- D - I - - 0x02CC36 16:8C26: 10        .byte $10   ; <た>
- D - I - - 0x02CC37 16:8C27: 01        .byte $01   ; <あ>
- D - I - - 0x02CC38 16:8C28: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC39 16:8C29: 11        .byte $11   ; <ち>
- D - I - - 0x02CC3A 16:8C2A: 10        .byte $10   ; <た>
- D - I - - 0x02CC3B 16:8C2B: 60        .byte $60   ; <ミ>
- D - I - - 0x02CC3C 16:8C2C: 14        .byte $14   ; <と>
- D - I - - 0x02CC3D 16:8C2D: 61        .byte $61   ; <ム>

- D - I - - 0x02CC3E 16:8C2E: 18        .byte $18   ; <ね>
- D - I - - 0x02CC3F 16:8C2F: 02        .byte $02   ; <い>
- D - I - - 0x02CC40 16:8C30: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC41 16:8C31: 62        .byte $62   ; <メ>
- D - I - - 0x02CC42 16:8C32: 10        .byte $10   ; <た>
- D - I - - 0x02CC43 16:8C33: 63        .byte $63   ; <モ>
- D - I - - 0x02CC44 16:8C34: 13        .byte $13   ; <て>
- D - I - - 0x02CC45 16:8C35: 05        .byte $05   ; <お>
- D - I - - 0x02CC46 16:8C36: 14        .byte $14   ; <と>
- D - I - - 0x02CC47 16:8C37: 66        .byte $66   ; <ヨ>

- D - I - - 0x02CC48 16:8C38: 02        .byte $02   ; <い>
- D - I - - 0x02CC49 16:8C39: 04 8C     .word off_8C04



off_8C3B:
- D - I - - 0x02CC4B 16:8C3B: 10        .byte $10   ; <た>
- D - I - - 0x02CC4C 16:8C3C: 01        .byte $01   ; <あ>
- D - I - - 0x02CC4D 16:8C3D: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC4E 16:8C3E: 68        .byte $68   ; <リ>
- D - I - - 0x02CC4F 16:8C3F: 10        .byte $10   ; <た>
- D - I - - 0x02CC50 16:8C40: 69        .byte $69   ; <ル>
- D - I - - 0x02CC51 16:8C41: 14        .byte $14   ; <と>
- D - I - - 0x02CC52 16:8C42: 3B        .byte $3B   ; <8>

- D - I - - 0x02CC53 16:8C43: 18        .byte $18   ; <ね>
- D - I - - 0x02CC54 16:8C44: 02        .byte $02   ; <い>
- D - I - - 0x02CC55 16:8C45: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC56 16:8C46: 6A        .byte $6A   ; <レ>
- D - I - - 0x02CC57 16:8C47: 10        .byte $10   ; <た>
- D - I - - 0x02CC58 16:8C48: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02CC59 16:8C49: 13        .byte $13   ; <て>
- D - I - - 0x02CC5A 16:8C4A: 05        .byte $05   ; <お>
- D - I - - 0x02CC5B 16:8C4B: 14        .byte $14   ; <と>
- D - I - - 0x02CC5C 16:8C4C: 6E        .byte $6E   ; <ン>

- D - I - - 0x02CC5D 16:8C4D: 18        .byte $18   ; <ね>
- D - I - - 0x02CC5E 16:8C4E: 03        .byte $03   ; <う>
- D - I - - 0x02CC5F 16:8C4F: 11        .byte $11   ; <ち>
- D - I - - 0x02CC60 16:8C50: 18        .byte $18   ; <ね>
- D - I - - 0x02CC61 16:8C51: 13        .byte $13   ; <て>
- D - I - - 0x02CC62 16:8C52: 05        .byte $05   ; <お>
- D - I - - 0x02CC63 16:8C53: 15        .byte $15   ; <な>
- D - I - - 0x02CC64 16:8C54: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02CC65 16:8C55: 18        .byte $18   ; <ね>
- D - I - - 0x02CC66 16:8C56: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02CC67 16:8C57: 02        .byte $02   ; <い>
- D - I - - 0x02CC68 16:8C58: BD 8C     .word off_8CBD



off_8C5A:
- D - I - - 0x02CC6A 16:8C5A: 10        .byte $10   ; <た>
- D - I - - 0x02CC6B 16:8C5B: 01        .byte $01   ; <あ>
- D - I - - 0x02CC6C 16:8C5C: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC6D 16:8C5D: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02CC6E 16:8C5E: 10        .byte $10   ; <た>
- D - I - - 0x02CC6F 16:8C5F: 64        .byte $64   ; <ヤ>
- D - I - - 0x02CC70 16:8C60: 14        .byte $14   ; <と>
- D - I - - 0x02CC71 16:8C61: 65        .byte $65   ; <ユ>

- D - I - - 0x02CC72 16:8C62: 18        .byte $18   ; <ね>
- D - I - - 0x02CC73 16:8C63: 02        .byte $02   ; <い>
- D - I - - 0x02CC74 16:8C64: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC75 16:8C65: 67        .byte $67   ; <ラ>
- D - I - - 0x02CC76 16:8C66: 10        .byte $10   ; <た>
- D - I - - 0x02CC77 16:8C67: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02CC78 16:8C68: 13        .byte $13   ; <て>
- D - I - - 0x02CC79 16:8C69: 05        .byte $05   ; <お>
- D - I - - 0x02CC7A 16:8C6A: 14        .byte $14   ; <と>
- D - I - - 0x02CC7B 16:8C6B: 6D        .byte $6D   ; <ヲ>

- D - I - - 0x02CC7C 16:8C6C: 00        .byte $00
- D - I - - 0x02CC7D 16:8C6D: 03        .byte $03   ; <う>
- D - I - - 0x02CC7E 16:8C6E: 11        .byte $11   ; <ち>
- D - I - - 0x02CC7F 16:8C6F: 18        .byte $18   ; <ね>

- D - I - - 0x02CC80 16:8C70: 02        .byte $02   ; <い>
- D - I - - 0x02CC81 16:8C71: B5 8C     .word off_8CB5



off_8C73:
- D - I - - 0x02CC83 16:8C73: 10        .byte $10   ; <た>
- D - I - - 0x02CC84 16:8C74: 01        .byte $01   ; <あ>
- D - I - - 0x02CC85 16:8C75: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC86 16:8C76: 3F        .byte $3F   ; <•>
- D - I - - 0x02CC87 16:8C77: 10        .byte $10   ; <た>
- D - I - - 0x02CC88 16:8C78: 45        .byte $45   ; <オ>
- D - I - - 0x02CC89 16:8C79: 14        .byte $14   ; <と>
- D - I - - 0x02CC8A 16:8C7A: 50        .byte $50   ; <タ>

- D - I - - 0x02CC8B 16:8C7B: 18        .byte $18   ; <ね>
- D - I - - 0x02CC8C 16:8C7C: 02        .byte $02   ; <い>
- D - I - - 0x02CC8D 16:8C7D: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC8E 16:8C7E: 42        .byte $42   ; <イ>
- D - I - - 0x02CC8F 16:8C7F: 10        .byte $10   ; <た>
- D - I - - 0x02CC90 16:8C80: 47        .byte $47   ; <キ>
- D - I - - 0x02CC91 16:8C81: 13        .byte $13   ; <て>
- D - I - - 0x02CC92 16:8C82: 05        .byte $05   ; <お>
- D - I - - 0x02CC93 16:8C83: 14        .byte $14   ; <と>
- D - I - - 0x02CC94 16:8C84: 52        .byte $52   ; <ツ>

- D - I - - 0x02CC95 16:8C85: 02        .byte $02   ; <い>
- D - I - - 0x02CC96 16:8C86: 04 8C     .word off_8C04



off_8C88:
- D - I - - 0x02CC98 16:8C88: 10        .byte $10   ; <た>
- D - I - - 0x02CC99 16:8C89: 01        .byte $01   ; <あ>
- D - I - - 0x02CC9A 16:8C8A: 0C        .byte $0C   ; <し>
- D - I - - 0x02CC9B 16:8C8B: 4D        .byte $4D   ; <ス>
- D - I - - 0x02CC9C 16:8C8C: 10        .byte $10   ; <た>
- D - I - - 0x02CC9D 16:8C8D: 58        .byte $58   ; <ネ>
- D - I - - 0x02CC9E 16:8C8E: 14        .byte $14   ; <と>
- D - I - - 0x02CC9F 16:8C8F: 4C        .byte $4C   ; <シ>

- D - I - - 0x02CCA0 16:8C90: 18        .byte $18   ; <ね>
- D - I - - 0x02CCA1 16:8C91: 02        .byte $02   ; <い>
- D - I - - 0x02CCA2 16:8C92: 0C        .byte $0C   ; <し>
- D - I - - 0x02CCA3 16:8C93: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02CCA4 16:8C94: 10        .byte $10   ; <た>
- D - I - - 0x02CCA5 16:8C95: 4B        .byte $4B   ; <サ>
- D - I - - 0x02CCA6 16:8C96: 13        .byte $13   ; <て>
- D - I - - 0x02CCA7 16:8C97: 05        .byte $05   ; <お>
- D - I - - 0x02CCA8 16:8C98: 14        .byte $14   ; <と>
- D - I - - 0x02CCA9 16:8C99: 5B        .byte $5B   ; <ヒ>

- D - I - - 0x02CCAA 16:8C9A: 02        .byte $02   ; <い>
- D - I - - 0x02CCAB 16:8C9B: 04 8C     .word off_8C04



off_8C9D:
- D - I - - 0x02CCAD 16:8C9D: 00        .byte $00
- D - I - - 0x02CCAE 16:8C9E: 02        .byte $02   ; <い>
- D - I - - 0x02CCAF 16:8C9F: 14        .byte $14   ; <と>
- D - I - - 0x02CCB0 16:8CA0: 2F        .byte $2F   ; <っ>
; продолжение


off_8CA1:
- D - I - - 0x02CCB1 16:8CA1: 10        .byte $10   ; <た>
- D - I - - 0x02CCB2 16:8CA2: 01        .byte $01   ; <あ>
- D - I - - 0x02CCB3 16:8CA3: 0C        .byte $0C   ; <し>
- D - I - - 0x02CCB4 16:8CA4: 36        .byte $36   ; <3>
- D - I - - 0x02CCB5 16:8CA5: 10        .byte $10   ; <た>
- D - I - - 0x02CCB6 16:8CA6: 37        .byte $37   ; <4>
- D - I - - 0x02CCB7 16:8CA7: 14        .byte $14   ; <と>
- D - I - - 0x02CCB8 16:8CA8: 2E        .byte $2E   ; <ん>

- D - I - - 0x02CCB9 16:8CA9: 10        .byte $10   ; <た>
- D - I - - 0x02CCBA 16:8CAA: 02        .byte $02   ; <い>
- D - I - - 0x02CCBB 16:8CAB: 0C        .byte $0C   ; <し>
- D - I - - 0x02CCBC 16:8CAC: 2D        .byte $2D   ; <を>
- D - I - - 0x02CCBD 16:8CAD: 10        .byte $10   ; <た>
- D - I - - 0x02CCBE 16:8CAE: 38        .byte $38   ; <5>
- D - I - - 0x02CCBF 16:8CAF: 13        .byte $13   ; <て>
- D - I - - 0x02CCC0 16:8CB0: 05        .byte $05   ; <お>
; продолжение


off_8CB1:
- D - I - - 0x02CCC1 16:8CB1: 00        .byte $00
- D - I - - 0x02CCC2 16:8CB2: 03        .byte $03   ; <う>
- D - I - - 0x02CCC3 16:8CB3: 11        .byte $11   ; <ち>
- D - I - - 0x02CCC4 16:8CB4: 18        .byte $18   ; <ね>
; продолжение


off_8CB5:
- D - I - - 0x02CCC5 16:8CB5: 10        .byte $10   ; <た>
- D - I - - 0x02CCC6 16:8CB6: 03        .byte $03   ; <う>
- D - I - - 0x02CCC7 16:8CB7: 13        .byte $13   ; <て>
- D - I - - 0x02CCC8 16:8CB8: 05        .byte $05   ; <お>
- D - I - - 0x02CCC9 16:8CB9: 15        .byte $15   ; <な>
- D - I - - 0x02CCCA 16:8CBA: 19        .byte $19   ; <の>
- D - I - - 0x02CCCB 16:8CBB: 18        .byte $18   ; <ね>
- D - I - - 0x02CCCC 16:8CBC: 1C        .byte $1C   ; <ふ>
; продолжение


off_8CBD:
- D - I - - 0x02CCCD 16:8CBD: 00        .byte $00
- D - I - - 0x02CCCE 16:8CBE: 03        .byte $03   ; <う>
- D - I - - 0x02CCCF 16:8CBF: 0D        .byte $0D   ; <す>
- D - I - - 0x02CCD0 16:8CC0: 04        .byte $04   ; <え>

- D - I - - 0x02CCD1 16:8CC1: 20        .byte $20   ; <み>
- D - I - - 0x02CCD2 16:8CC2: 04        .byte $04   ; <え>
- D - I - - 0x02CCD3 16:8CC3: 09        .byte $09   ; <け>
- D - I - - 0x02CCD4 16:8CC4: 03        .byte $03   ; <う>
- D - I - - 0x02CCD5 16:8CC5: 0D        .byte $0D   ; <す>
- D - I - - 0x02CCD6 16:8CC6: 06        .byte $06   ; <か>
- D - I - - 0x02CCD7 16:8CC7: 11        .byte $11   ; <ち>
- D - I - - 0x02CCD8 16:8CC8: 07        .byte $07   ; <き>
- D - I - - 0x02CCD9 16:8CC9: 17        .byte $17   ; <ぬ>
- D - I - - 0x02CCDA 16:8CCA: 12        .byte $12   ; <つ>
- D - I - - 0x02CCDB 16:8CCB: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02CCDC 16:8CCC: 13        .byte $13   ; <て>

- D - I - - 0x02CCDD 16:8CCD: 28        .byte $28   ; <り>
- D - I - - 0x02CCDE 16:8CCE: 05        .byte $05   ; <お>
- D - I - - 0x02CCDF 16:8CCF: 04        .byte $04   ; <え>
- D - I - - 0x02CCE0 16:8CD0: 08        .byte $08   ; <く>
- D - I - - 0x02CCE1 16:8CD1: 09        .byte $09   ; <け>
- D - I - - 0x02CCE2 16:8CD2: 09        .byte $09   ; <け>
- D - I - - 0x02CCE3 16:8CD3: 0D        .byte $0D   ; <す>
- D - I - - 0x02CCE4 16:8CD4: 0C        .byte $0C   ; <し>
- D - I - - 0x02CCE5 16:8CD5: 0E        .byte $0E   ; <せ>
- D - I - - 0x02CCE6 16:8CD6: 05        .byte $05   ; <お>
- D - I - - 0x02CCE7 16:8CD7: 11        .byte $11   ; <ち>
- D - I - - 0x02CCE8 16:8CD8: 0D        .byte $0D   ; <す>
- D - I - - 0x02CCE9 16:8CD9: 12        .byte $12   ; <つ>
- D - I - - 0x02CCEA 16:8CDA: 10        .byte $10   ; <た>

- D - I - - 0x02CCEB 16:8CDB: 18        .byte $18   ; <ね>
- D - I - - 0x02CCEC 16:8CDC: 06        .byte $06   ; <か>
- D - I - - 0x02CCED 16:8CDD: 07        .byte $07   ; <き>
- D - I - - 0x02CCEE 16:8CDE: 0A        .byte $0A   ; <こ>
- D - I - - 0x02CCEF 16:8CDF: 0A        .byte $0A   ; <こ>
- D - I - - 0x02CCF0 16:8CE0: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CCF1 16:8CE1: 0E        .byte $0E   ; <せ>
- D - I - - 0x02CCF2 16:8CE2: 0E        .byte $0E   ; <せ>
- D - I - - 0x02CCF3 16:8CE3: 12        .byte $12   ; <つ>
- D - I - - 0x02CCF4 16:8CE4: 0F        .byte $0F   ; <そ>

- D - I - - 0x02CCF5 16:8CE5: 18        .byte $18   ; <ね>
- D - I - - 0x02CCF6 16:8CE6: 07        .byte $07   ; <き>
- D - I - - 0x02CCF7 16:8CE7: 55        .byte $55   ; <ナ>
- D - I - - 0x02CCF8 16:8CE8: 20        .byte $20   ; <み>
- D - I - - 0x02CCF9 16:8CE9: 41        .byte $41   ; <ア>
- D - I - - 0x02CCFA 16:8CEA: 21        .byte $21   ; <む>
- D - I - - 0x02CCFB 16:8CEB: 47        .byte $47   ; <キ>
- D - I - - 0x02CCFC 16:8CEC: 24        .byte $24   ; <や>
- D - I - - 0x02CCFD 16:8CED: 87        .byte $87   ; <G>
- D - I - - 0x02CCFE 16:8CEE: 25        .byte $25   ; <ゆ>

- D - I - - 0x02CCFF 16:8CEF: 18        .byte $18   ; <ね>
- D - I - - 0x02CD00 16:8CF0: 08        .byte $08   ; <く>
- D - I - - 0x02CD01 16:8CF1: 09        .byte $09   ; <け>
- D - I - - 0x02CD02 16:8CF2: 22        .byte $22   ; <め>
- D - I - - 0x02CD03 16:8CF3: 0D        .byte $0D   ; <す>
- D - I - - 0x02CD04 16:8CF4: 23        .byte $23   ; <も>
- D - I - - 0x02CD05 16:8CF5: 11        .byte $11   ; <ち>
- D - I - - 0x02CD06 16:8CF6: 26        .byte $26   ; <よ>
- D - I - - 0x02CD07 16:8CF7: 15        .byte $15   ; <な>
- D - I - - 0x02CD08 16:8CF8: 27        .byte $27   ; <ら>

- D - I - - 0x02CD09 16:8CF9: 10        .byte $10   ; <た>
- D - I - - 0x02CD0A 16:8CFA: 09        .byte $09   ; <け>
- D - I - - 0x02CD0B 16:8CFB: 27        .byte $27   ; <ら>
- D - I - - 0x02CD0C 16:8CFC: 28        .byte $28   ; <り>
- D - I - - 0x02CD0D 16:8CFD: 3D        .byte $3D   ; <+>
- D - I - - 0x02CD0E 16:8CFE: 29        .byte $29   ; <る>
- D - I - - 0x02CD0F 16:8CFF: 89        .byte $89   ; <I>
- D - I - - 0x02CD10 16:8D00: 2C        .byte $2C   ; <わ>

- D - I - - 0x02CD11 16:8D01: 08        .byte $08   ; <く>
- D - I - - 0x02CD12 16:8D02: 16        .byte $16   ; <に>
- D - I - - 0x02CD13 16:8D03: 19        .byte $19   ; <の>
- D - I - - 0x02CD14 16:8D04: 2A        .byte $2A   ; <れ>
- D - I - - 0x02CD15 16:8D05: 83        .byte $83   ; <C>
- D - I - - 0x02CD16 16:8D06: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02CD17 16:8D07: 00        .byte $00
- D - I - - 0x02CD18 16:8D08: 17        .byte $17   ; <ぬ>
- D - I - - 0x02CD19 16:8D09: DF        .byte $DF
- D - I - - 0x02CD1A 16:8D0A: 02        .byte $02   ; <い>

- D - I - - 0x02CD1B 16:8D0B: 01        .byte $01   ; <あ>



off_8D0C_15:
- D - I - - 0x02CD1C 16:8D0C: 08        .byte $08   ; <く>
- D - I - - 0x02CD1D 16:8D0D: 18        .byte $18   ; <ね>
- D - I - - 0x02CD1E 16:8D0E: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CD1F 16:8D0F: 51        .byte $51   ; <チ>
- D - I - - 0x02CD20 16:8D10: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD21 16:8D11: 54        .byte $54   ; <ト>

- D - I - - 0x02CD22 16:8D12: 08        .byte $08   ; <く>
- D - I - - 0x02CD23 16:8D13: 19        .byte $19   ; <の>
- D - I - - 0x02CD24 16:8D14: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CD25 16:8D15: 53        .byte $53   ; <テ>
- D - I - - 0x02CD26 16:8D16: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD27 16:8D17: 56        .byte $56   ; <ニ>

- D - I - - 0x02CD28 16:8D18: 02        .byte $02   ; <い>
- D - I - - 0x02CD29 16:8D19: 81 8B     .word off_8B81



off_8D1B_16:
- D - I - - 0x02CD2B 16:8D1B: 08        .byte $08   ; <く>
- D - I - - 0x02CD2C 16:8D1C: 18        .byte $18   ; <ね>
- D - I - - 0x02CD2D 16:8D1D: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CD2E 16:8D1E: 51        .byte $51   ; <チ>
- D - I - - 0x02CD2F 16:8D1F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD30 16:8D20: 54        .byte $54   ; <ト>

- D - I - - 0x02CD31 16:8D21: 10        .byte $10   ; <た>
- D - I - - 0x02CD32 16:8D22: 19        .byte $19   ; <の>
- D - I - - 0x02CD33 16:8D23: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CD34 16:8D24: 53        .byte $53   ; <テ>
- D - I - - 0x02CD35 16:8D25: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD36 16:8D26: 5C        .byte $5C   ; <フ>
- D - I - - 0x02CD37 16:8D27: 13        .byte $13   ; <て>
- D - I - - 0x02CD38 16:8D28: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02CD39 16:8D29: 00        .byte $00
- D - I - - 0x02CD3A 16:8D2A: 1A        .byte $1A   ; <は>
- D - I - - 0x02CD3B 16:8D2B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD3C 16:8D2C: 5E        .byte $5E   ; <ホ>

- D - I - - 0x02CD3D 16:8D2D: 02        .byte $02   ; <い>
- D - I - - 0x02CD3E 16:8D2E: 81 8B     .word off_8B81



off_8D30_17:
- D - I - - 0x02CD40 16:8D30: 08        .byte $08   ; <く>
- D - I - - 0x02CD41 16:8D31: 18        .byte $18   ; <ね>
- D - I - - 0x02CD42 16:8D32: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CD43 16:8D33: 51        .byte $51   ; <チ>
- D - I - - 0x02CD44 16:8D34: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD45 16:8D35: 54        .byte $54   ; <ト>

- D - I - - 0x02CD46 16:8D36: 10        .byte $10   ; <た>
- D - I - - 0x02CD47 16:8D37: 19        .byte $19   ; <の>
- D - I - - 0x02CD48 16:8D38: 0B        .byte $0B   ; <さ>
- D - I - - 0x02CD49 16:8D39: 53        .byte $53   ; <テ>
- D - I - - 0x02CD4A 16:8D3A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD4B 16:8D3B: 55        .byte $55   ; <ナ>
- D - I - - 0x02CD4C 16:8D3C: 13        .byte $13   ; <て>
- D - I - - 0x02CD4D 16:8D3D: 57        .byte $57   ; <ヌ>

- D - I - - 0x02CD4E 16:8D3E: 00        .byte $00
- D - I - - 0x02CD4F 16:8D3F: 1A        .byte $1A   ; <は>
- D - I - - 0x02CD50 16:8D40: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD51 16:8D41: 59        .byte $59   ; <ノ>

- D - I - - 0x02CD52 16:8D42: 02        .byte $02   ; <い>
- D - I - - 0x02CD53 16:8D43: 81 8B     .word off_8B81



off_8D45_18:
- D - I - - 0x02CD55 16:8D45: 08        .byte $08   ; <く>
- D - I - - 0x02CD56 16:8D46: 03        .byte $03   ; <う>
- D - I - - 0x02CD57 16:8D47: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD58 16:8D48: 51        .byte $51   ; <チ>
- D - I - - 0x02CD59 16:8D49: 13        .byte $13   ; <て>
- D - I - - 0x02CD5A 16:8D4A: 54        .byte $54   ; <ト>

- D - I - - 0x02CD5B 16:8D4B: 08        .byte $08   ; <く>
- D - I - - 0x02CD5C 16:8D4C: 04        .byte $04   ; <え>
- D - I - - 0x02CD5D 16:8D4D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CD5E 16:8D4E: 53        .byte $53   ; <テ>
- D - I - - 0x02CD5F 16:8D4F: 13        .byte $13   ; <て>
- D - I - - 0x02CD60 16:8D50: 56        .byte $56   ; <ニ>

- D - I - - 0x02CD61 16:8D51: 01        .byte $01   ; <あ>



off_8D52_19:
off_8D52:
- D - I - - 0x02CD62 16:8D52: 03        .byte $03   ; <う>
- D - I - - 0x02CD63 16:8D53: 6B 8D     .word off_8D6B
- D - I - - 0x02CD65 16:8D55: 80 8D     .word off_8D80
- D - I - - 0x02CD67 16:8D57: A1 8D     .word off_8DA1
- D - I - - 0x02CD69 16:8D59: AC 8D     .word off_8DAC
- D - I - - 0x02CD6B 16:8D5B: CD 8D     .word off_8DCD
- D - I - - 0x02CD6D 16:8D5D: E8 8D     .word off_8DE8
- D - I - - 0x02CD6F 16:8D5F: 09 8E     .word off_8E09
- D - I - - 0x02CD71 16:8D61: 26 8E     .word off_8E26
- D - I - - 0x02CD73 16:8D63: 49 8E     .word off_8E49
- D - I - - 0x02CD75 16:8D65: 68 8E     .word off_8E68
- D - I - - 0x02CD77 16:8D67: 87 8E     .word off_8E87
- D - I - - 0x02CD79 16:8D69: A8 8E     .word off_8EA8



off_8D6B:
- D - I - - 0x02CD7B 16:8D6B: 10        .byte $10   ; <た>
- D - I - - 0x02CD7C 16:8D6C: 01        .byte $01   ; <あ>
- D - I - - 0x02CD7D 16:8D6D: 54        .byte $54   ; <ト>
- D - I - - 0x02CD7E 16:8D6E: A0        .byte $A0   ; <が>
- D - I - - 0x02CD7F 16:8D6F: 40        .byte $40   ; <「>
- D - I - - 0x02CD80 16:8D70: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02CD81 16:8D71: 44        .byte $44   ; <エ>
- D - I - - 0x02CD82 16:8D72: A4        .byte $A4   ; <ご>

- D - I - - 0x02CD83 16:8D73: 18        .byte $18   ; <ね>
- D - I - - 0x02CD84 16:8D74: 02        .byte $02   ; <い>
- D - I - - 0x02CD85 16:8D75: 54        .byte $54   ; <ト>
- D - I - - 0x02CD86 16:8D76: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02CD87 16:8D77: 40        .byte $40   ; <「>
- D - I - - 0x02CD88 16:8D78: A3        .byte $A3   ; <げ>
- D - I - - 0x02CD89 16:8D79: 45        .byte $45   ; <オ>
- D - I - - 0x02CD8A 16:8D7A: A6        .byte $A6   ; <じ>
- D - I - - 0x02CD8B 16:8D7B: 44        .byte $44   ; <エ>
- D - I - - 0x02CD8C 16:8D7C: 8E        .byte $8E   ; <L>

- D - I - - 0x02CD8D 16:8D7D: 02        .byte $02   ; <い>
- D - I - - 0x02CD8E 16:8D7E: BC 8E     .word off_8EBC



off_8D80:
- D - I - - 0x02CD90 16:8D80: 18        .byte $18   ; <ね>
- D - I - - 0x02CD91 16:8D81: 01        .byte $01   ; <あ>
- D - I - - 0x02CD92 16:8D82: 54        .byte $54   ; <ト>
- D - I - - 0x02CD93 16:8D83: AA        .byte $AA   ; <だ>
- D - I - - 0x02CD94 16:8D84: 40        .byte $40   ; <「>
- D - I - - 0x02CD95 16:8D85: AB        .byte $AB   ; <ぢ>
- D - I - - 0x02CD96 16:8D86: 44        .byte $44   ; <エ>
- D - I - - 0x02CD97 16:8D87: AE        .byte $AE   ; <ど>
- D - I - - 0x02CD98 16:8D88: 84        .byte $84   ; <D>
- D - I - - 0x02CD99 16:8D89: AF        .byte $AF   ; <ば>

- D - I - - 0x02CD9A 16:8D8A: 18        .byte $18   ; <ね>
- D - I - - 0x02CD9B 16:8D8B: 02        .byte $02   ; <い>
- D - I - - 0x02CD9C 16:8D8C: 54        .byte $54   ; <ト>
- D - I - - 0x02CD9D 16:8D8D: 90        .byte $90   ; <U>
- D - I - - 0x02CD9E 16:8D8E: 40        .byte $40   ; <「>
- D - I - - 0x02CD9F 16:8D8F: 91        .byte $91   ; <V>
- D - I - - 0x02CDA0 16:8D90: 45        .byte $45   ; <オ>
- D - I - - 0x02CDA1 16:8D91: 94        .byte $94
- D - I - - 0x02CDA2 16:8D92: 44        .byte $44   ; <エ>
- D - I - - 0x02CDA3 16:8D93: 93        .byte $93   ; <Y>

- D - I - - 0x02CDA4 16:8D94: 18        .byte $18   ; <ね>
- D - I - - 0x02CDA5 16:8D95: 03        .byte $03   ; <う>
- D - I - - 0x02CDA6 16:8D96: 55        .byte $55   ; <ナ>
- D - I - - 0x02CDA7 16:8D97: 92        .byte $92   ; <W>
- D - I - - 0x02CDA8 16:8D98: 41        .byte $41   ; <ア>
- D - I - - 0x02CDA9 16:8D99: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02CDAA 16:8D9A: 43        .byte $43   ; <ウ>
- D - I - - 0x02CDAB 16:8D9B: 05        .byte $05   ; <お>
- D - I - - 0x02CDAC 16:8D9C: 45        .byte $45   ; <オ>
- D - I - - 0x02CDAD 16:8D9D: AC        .byte $AC   ; <づ>

- D - I - - 0x02CDAE 16:8D9E: 02        .byte $02   ; <い>
- D - I - - 0x02CDAF 16:8D9F: C8 8E     .word off_8EC8



off_8DA1:
- D - I - - 0x02CDB1 16:8DA1: 10        .byte $10   ; <た>
- D - I - - 0x02CDB2 16:8DA2: 02        .byte $02   ; <い>
- D - I - - 0x02CDB3 16:8DA3: 40        .byte $40   ; <「>
- D - I - - 0x02CDB4 16:8DA4: 91        .byte $91   ; <V>
- D - I - - 0x02CDB5 16:8DA5: 45        .byte $45   ; <オ>
- D - I - - 0x02CDB6 16:8DA6: 9A        .byte $9A
- D - I - - 0x02CDB7 16:8DA7: 44        .byte $44   ; <エ>
- D - I - - 0x02CDB8 16:8DA8: 9B        .byte $9B

- D - I - - 0x02CDB9 16:8DA9: 02        .byte $02   ; <い>
- D - I - - 0x02CDBA 16:8DAA: B0 8E     .word off_8EB0



off_8DAC:
- D - I - - 0x02CDBC 16:8DAC: 10        .byte $10   ; <た>
- D - I - - 0x02CDBD 16:8DAD: 01        .byte $01   ; <あ>
- D - I - - 0x02CDBE 16:8DAE: 54        .byte $54   ; <ト>
- D - I - - 0x02CDBF 16:8DAF: A7        .byte $A7   ; <ず>
- D - I - - 0x02CDC0 16:8DB0: 40        .byte $40   ; <「>
- D - I - - 0x02CDC1 16:8DB1: B2        .byte $B2   ; <べ>
- D - I - - 0x02CDC2 16:8DB2: 44        .byte $44   ; <エ>
- D - I - - 0x02CDC3 16:8DB3: B3        .byte $B3   ; <ぼ>

- D - I - - 0x02CDC4 16:8DB4: 18        .byte $18   ; <ね>
- D - I - - 0x02CDC5 16:8DB5: 02        .byte $02   ; <い>
- D - I - - 0x02CDC6 16:8DB6: 54        .byte $54   ; <ト>
- D - I - - 0x02CDC7 16:8DB7: AD        .byte $AD   ; <で>
- D - I - - 0x02CDC8 16:8DB8: 40        .byte $40   ; <「>
- D - I - - 0x02CDC9 16:8DB9: B8        .byte $B8   ; <ゴ>
- D - I - - 0x02CDCA 16:8DBA: 45        .byte $45   ; <オ>
- D - I - - 0x02CDCB 16:8DBB: B9        .byte $B9   ; <ザ>
- D - I - - 0x02CDCC 16:8DBC: 44        .byte $44   ; <エ>
- D - I - - 0x02CDCD 16:8DBD: BB        .byte $BB   ; <ズ>

- D - I - - 0x02CDCE 16:8DBE: 20        .byte $20   ; <み>
- D - I - - 0x02CDCF 16:8DBF: 03        .byte $03   ; <う>
- D - I - - 0x02CDD0 16:8DC0: 55        .byte $55   ; <ナ>
- D - I - - 0x02CDD1 16:8DC1: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02CDD2 16:8DC2: 54        .byte $54   ; <ト>
- D - I - - 0x02CDD3 16:8DC3: 05        .byte $05   ; <お>
- D - I - - 0x02CDD4 16:8DC4: 41        .byte $41   ; <ア>
- D - I - - 0x02CDD5 16:8DC5: BA        .byte $BA   ; <ジ>
- D - I - - 0x02CDD6 16:8DC6: 43        .byte $43   ; <ウ>
- D - I - - 0x02CDD7 16:8DC7: 05        .byte $05   ; <お>
- D - I - - 0x02CDD8 16:8DC8: 45        .byte $45   ; <オ>
- D - I - - 0x02CDD9 16:8DC9: AC        .byte $AC   ; <づ>

- D - I - - 0x02CDDA 16:8DCA: 02        .byte $02   ; <い>
- D - I - - 0x02CDDB 16:8DCB: C8 8E     .word off_8EC8



off_8DCD:
- D - I - - 0x02CDDD 16:8DCD: 08        .byte $08   ; <く>
- D - I - - 0x02CDDE 16:8DCE: 01        .byte $01   ; <あ>
- D - I - - 0x02CDDF 16:8DCF: 54        .byte $54   ; <ト>
- D - I - - 0x02CDE0 16:8DD0: 95        .byte $95
- D - I - - 0x02CDE1 16:8DD1: 40        .byte $40   ; <「>
- D - I - - 0x02CDE2 16:8DD2: D5        .byte $D5

- D - I - - 0x02CDE3 16:8DD3: 10        .byte $10   ; <た>
- D - I - - 0x02CDE4 16:8DD4: 02        .byte $02   ; <い>
- D - I - - 0x02CDE5 16:8DD5: 54        .byte $54   ; <ト>
- D - I - - 0x02CDE6 16:8DD6: 96        .byte $96
- D - I - - 0x02CDE7 16:8DD7: 40        .byte $40   ; <「>
- D - I - - 0x02CDE8 16:8DD8: 97        .byte $97
- D - I - - 0x02CDE9 16:8DD9: 45        .byte $45   ; <オ>
- D - I - - 0x02CDEA 16:8DDA: C2        .byte $C2   ; <ド>

- D - I - - 0x02CDEB 16:8DDB: 18        .byte $18   ; <ね>
- D - I - - 0x02CDEC 16:8DDC: 03        .byte $03   ; <う>
- D - I - - 0x02CDED 16:8DDD: 55        .byte $55   ; <ナ>
- D - I - - 0x02CDEE 16:8DDE: 9D        .byte $9D
- D - I - - 0x02CDEF 16:8DDF: 41        .byte $41   ; <ア>
- D - I - - 0x02CDF0 16:8DE0: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02CDF1 16:8DE1: 43        .byte $43   ; <ウ>
- D - I - - 0x02CDF2 16:8DE2: 05        .byte $05   ; <お>
- D - I - - 0x02CDF3 16:8DE3: 45        .byte $45   ; <オ>
- D - I - - 0x02CDF4 16:8DE4: C9        .byte $C9   ; <ぴ>

- D - I - - 0x02CDF5 16:8DE5: 02        .byte $02   ; <い>
- D - I - - 0x02CDF6 16:8DE6: C8 8E     .word off_8EC8



off_8DE8:
- D - I - - 0x02CDF8 16:8DE8: 10        .byte $10   ; <た>
- D - I - - 0x02CDF9 16:8DE9: 01        .byte $01   ; <あ>
- D - I - - 0x02CDFA 16:8DEA: 54        .byte $54   ; <ト>
- D - I - - 0x02CDFB 16:8DEB: 9F        .byte $9F
- D - I - - 0x02CDFC 16:8DEC: 40        .byte $40   ; <「>
- D - I - - 0x02CDFD 16:8DED: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02CDFE 16:8DEE: 44        .byte $44   ; <エ>
- D - I - - 0x02CDFF 16:8DEF: CB        .byte $CB   ; <ぺ>

- D - I - - 0x02CE00 16:8DF0: 18        .byte $18   ; <ね>
- D - I - - 0x02CE01 16:8DF1: 02        .byte $02   ; <い>
- D - I - - 0x02CE02 16:8DF2: 54        .byte $54   ; <ト>
- D - I - - 0x02CE03 16:8DF3: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02CE04 16:8DF4: 40        .byte $40   ; <「>
- D - I - - 0x02CE05 16:8DF5: B4        .byte $B4   ; <ガ>
- D - I - - 0x02CE06 16:8DF6: 45        .byte $45   ; <オ>
- D - I - - 0x02CE07 16:8DF7: B5        .byte $B5   ; <ギ>
- D - I - - 0x02CE08 16:8DF8: 44        .byte $44   ; <エ>
- D - I - - 0x02CE09 16:8DF9: E0        .byte $E0

- D - I - - 0x02CE0A 16:8DFA: 20        .byte $20   ; <み>
- D - I - - 0x02CE0B 16:8DFB: 03        .byte $03   ; <う>
- D - I - - 0x02CE0C 16:8DFC: 55        .byte $55   ; <ナ>
- D - I - - 0x02CE0D 16:8DFD: B6        .byte $B6   ; <グ>
- D - I - - 0x02CE0E 16:8DFE: 54        .byte $54   ; <ト>
- D - I - - 0x02CE0F 16:8DFF: 05        .byte $05   ; <お>
- D - I - - 0x02CE10 16:8E00: 41        .byte $41   ; <ア>
- D - I - - 0x02CE11 16:8E01: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02CE12 16:8E02: 43        .byte $43   ; <ウ>
- D - I - - 0x02CE13 16:8E03: 05        .byte $05   ; <お>
- D - I - - 0x02CE14 16:8E04: 45        .byte $45   ; <オ>
- D - I - - 0x02CE15 16:8E05: C9        .byte $C9   ; <ぴ>

- D - I - - 0x02CE16 16:8E06: 02        .byte $02   ; <い>
- D - I - - 0x02CE17 16:8E07: C8 8E     .word off_8EC8



off_8E09:
- D - I - - 0x02CE19 16:8E09: 08        .byte $08   ; <く>
- D - I - - 0x02CE1A 16:8E0A: 01        .byte $01   ; <あ>
- D - I - - 0x02CE1B 16:8E0B: 54        .byte $54   ; <ト>
- D - I - - 0x02CE1C 16:8E0C: 36        .byte $36   ; <3>
- D - I - - 0x02CE1D 16:8E0D: 40        .byte $40   ; <「>
- D - I - - 0x02CE1E 16:8E0E: E2        .byte $E2

- D - I - - 0x02CE1F 16:8E0F: 10        .byte $10   ; <た>
- D - I - - 0x02CE20 16:8E10: 02        .byte $02   ; <い>
- D - I - - 0x02CE21 16:8E11: 54        .byte $54   ; <ト>
- D - I - - 0x02CE22 16:8E12: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02CE23 16:8E13: 40        .byte $40   ; <「>
- D - I - - 0x02CE24 16:8E14: BD        .byte $BD   ; <ゾ>
- D - I - - 0x02CE25 16:8E15: 45        .byte $45   ; <オ>
- D - I - - 0x02CE26 16:8E16: C2        .byte $C2   ; <ド>

- D - I - - 0x02CE27 16:8E17: 20        .byte $20   ; <み>
- D - I - - 0x02CE28 16:8E18: 03        .byte $03   ; <う>
- D - I - - 0x02CE29 16:8E19: 55        .byte $55   ; <ナ>
- D - I - - 0x02CE2A 16:8E1A: BE        .byte $BE   ; <ダ>
- D - I - - 0x02CE2B 16:8E1B: 54        .byte $54   ; <ト>
- D - I - - 0x02CE2C 16:8E1C: 05        .byte $05   ; <お>
- D - I - - 0x02CE2D 16:8E1D: 41        .byte $41   ; <ア>
- D - I - - 0x02CE2E 16:8E1E: BF        .byte $BF   ; <ヂ>
- D - I - - 0x02CE2F 16:8E1F: 43        .byte $43   ; <ウ>
- D - I - - 0x02CE30 16:8E20: 05        .byte $05   ; <お>
- D - I - - 0x02CE31 16:8E21: 45        .byte $45   ; <オ>
- D - I - - 0x02CE32 16:8E22: C9        .byte $C9   ; <ぴ>

- D - I - - 0x02CE33 16:8E23: 02        .byte $02   ; <い>
- D - I - - 0x02CE34 16:8E24: C8 8E     .word off_8EC8



off_8E26:
- D - I - - 0x02CE36 16:8E26: 10        .byte $10   ; <た>
- D - I - - 0x02CE37 16:8E27: 01        .byte $01   ; <あ>
- D - I - - 0x02CE38 16:8E28: 54        .byte $54   ; <ト>
- D - I - - 0x02CE39 16:8E29: E3        .byte $E3
- D - I - - 0x02CE3A 16:8E2A: 40        .byte $40   ; <「>
- D - I - - 0x02CE3B 16:8E2B: E6        .byte $E6
- D - I - - 0x02CE3C 16:8E2C: 44        .byte $44   ; <エ>
- D - I - - 0x02CE3D 16:8E2D: E7        .byte $E7
- D - I - - 0x02CE3E 16:8E2E: 20        .byte $20   ; <み>
- D - I - - 0x02CE3F 16:8E2F: 02        .byte $02   ; <い>
- D - I - - 0x02CE40 16:8E30: 54        .byte $54   ; <ト>
- D - I - - 0x02CE41 16:8E31: E8        .byte $E8
- D - I - - 0x02CE42 16:8E32: 40        .byte $40   ; <「>
- D - I - - 0x02CE43 16:8E33: E9        .byte $E9
- D - I - - 0x02CE44 16:8E34: 45        .byte $45   ; <オ>
- D - I - - 0x02CE45 16:8E35: EC        .byte $EC
- D - I - - 0x02CE46 16:8E36: 44        .byte $44   ; <エ>
- D - I - - 0x02CE47 16:8E37: E1        .byte $E1
- D - I - - 0x02CE48 16:8E38: 87        .byte $87   ; <G>
- D - I - - 0x02CE49 16:8E39: ED        .byte $ED
- D - I - - 0x02CE4A 16:8E3A: 20        .byte $20   ; <み>
- D - I - - 0x02CE4B 16:8E3B: 03        .byte $03   ; <う>
- D - I - - 0x02CE4C 16:8E3C: 54        .byte $54   ; <ト>
- D - I - - 0x02CE4D 16:8E3D: EA        .byte $EA
- D - I - - 0x02CE4E 16:8E3E: 41        .byte $41   ; <ア>
- D - I - - 0x02CE4F 16:8E3F: EB        .byte $EB
- D - I - - 0x02CE50 16:8E40: 43        .byte $43   ; <ウ>
- D - I - - 0x02CE51 16:8E41: 05        .byte $05   ; <お>
- D - I - - 0x02CE52 16:8E42: 45        .byte $45   ; <オ>
- D - I - - 0x02CE53 16:8E43: EE        .byte $EE
- D - I - - 0x02CE54 16:8E44: 87        .byte $87   ; <G>
- D - I - - 0x02CE55 16:8E45: EF        .byte $EF
- D - I - - 0x02CE56 16:8E46: 02        .byte $02   ; <い>
- D - I - - 0x02CE57 16:8E47: CC 8E     .word off_8ECC



off_8E49:
- D - I - - 0x02CE59 16:8E49: 10        .byte $10   ; <た>
- D - I - - 0x02CE5A 16:8E4A: 01        .byte $01   ; <あ>
- D - I - - 0x02CE5B 16:8E4B: 54        .byte $54   ; <ト>
- D - I - - 0x02CE5C 16:8E4C: D6        .byte $D6
- D - I - - 0x02CE5D 16:8E4D: 40        .byte $40   ; <「>
- D - I - - 0x02CE5E 16:8E4E: C4        .byte $C4   ; <ビ>
- D - I - - 0x02CE5F 16:8E4F: 44        .byte $44   ; <エ>
- D - I - - 0x02CE60 16:8E50: CB        .byte $CB   ; <ぺ>

- D - I - - 0x02CE61 16:8E51: 18        .byte $18   ; <ね>
- D - I - - 0x02CE62 16:8E52: 02        .byte $02   ; <い>
- D - I - - 0x02CE63 16:8E53: 54        .byte $54   ; <ト>
- D - I - - 0x02CE64 16:8E54: C3        .byte $C3   ; <バ>
- D - I - - 0x02CE65 16:8E55: 40        .byte $40   ; <「>
- D - I - - 0x02CE66 16:8E56: C6        .byte $C6   ; <ベ>
- D - I - - 0x02CE67 16:8E57: 45        .byte $45   ; <オ>
- D - I - - 0x02CE68 16:8E58: B5        .byte $B5   ; <ギ>
- D - I - - 0x02CE69 16:8E59: 44        .byte $44   ; <エ>
- D - I - - 0x02CE6A 16:8E5A: E0        .byte $E0

- D - I - - 0x02CE6B 16:8E5B: 18        .byte $18   ; <ね>
- D - I - - 0x02CE6C 16:8E5C: 03        .byte $03   ; <う>
- D - I - - 0x02CE6D 16:8E5D: 55        .byte $55   ; <ナ>
- D - I - - 0x02CE6E 16:8E5E: 92        .byte $92   ; <W>
- D - I - - 0x02CE6F 16:8E5F: 41        .byte $41   ; <ア>
- D - I - - 0x02CE70 16:8E60: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02CE71 16:8E61: 43        .byte $43   ; <ウ>
- D - I - - 0x02CE72 16:8E62: 05        .byte $05   ; <お>
- D - I - - 0x02CE73 16:8E63: 45        .byte $45   ; <オ>
- D - I - - 0x02CE74 16:8E64: CC        .byte $CC   ; <ぽ>

- D - I - - 0x02CE75 16:8E65: 02        .byte $02   ; <い>
- D - I - - 0x02CE76 16:8E66: C8 8E     .word off_8EC8



off_8E68:
- D - I - - 0x02CE78 16:8E68: 10        .byte $10   ; <た>
- D - I - - 0x02CE79 16:8E69: 01        .byte $01   ; <あ>
- D - I - - 0x02CE7A 16:8E6A: 54        .byte $54   ; <ト>
- D - I - - 0x02CE7B 16:8E6B: 95        .byte $95
- D - I - - 0x02CE7C 16:8E6C: 40        .byte $40   ; <「>
- D - I - - 0x02CE7D 16:8E6D: CE        .byte $CE   ; <ピ>
- D - I - - 0x02CE7E 16:8E6E: 44        .byte $44   ; <エ>
- D - I - - 0x02CE7F 16:8E6F: CF        .byte $CF   ; <プ>

- D - I - - 0x02CE80 16:8E70: 18        .byte $18   ; <ね>
- D - I - - 0x02CE81 16:8E71: 02        .byte $02   ; <い>
- D - I - - 0x02CE82 16:8E72: 54        .byte $54   ; <ト>
- D - I - - 0x02CE83 16:8E73: 96        .byte $96
- D - I - - 0x02CE84 16:8E74: 40        .byte $40   ; <「>
- D - I - - 0x02CE85 16:8E75: 97        .byte $97
- D - I - - 0x02CE86 16:8E76: 45        .byte $45   ; <オ>
- D - I - - 0x02CE87 16:8E77: E4        .byte $E4
- D - I - - 0x02CE88 16:8E78: 44        .byte $44   ; <エ>
- D - I - - 0x02CE89 16:8E79: E5        .byte $E5

- D - I - - 0x02CE8A 16:8E7A: 18        .byte $18   ; <ね>
- D - I - - 0x02CE8B 16:8E7B: 03        .byte $03   ; <う>
- D - I - - 0x02CE8C 16:8E7C: 55        .byte $55   ; <ナ>
- D - I - - 0x02CE8D 16:8E7D: 9D        .byte $9D
- D - I - - 0x02CE8E 16:8E7E: 41        .byte $41   ; <ア>
- D - I - - 0x02CE8F 16:8E7F: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02CE90 16:8E80: 43        .byte $43   ; <ウ>
- D - I - - 0x02CE91 16:8E81: 05        .byte $05   ; <お>
- D - I - - 0x02CE92 16:8E82: 45        .byte $45   ; <オ>
- D - I - - 0x02CE93 16:8E83: C9        .byte $C9   ; <ぴ>

- D - I - - 0x02CE94 16:8E84: 02        .byte $02   ; <い>
- D - I - - 0x02CE95 16:8E85: C8 8E     .word off_8EC8



off_8E87:
- D - I - - 0x02CE97 16:8E87: 10        .byte $10   ; <た>
- D - I - - 0x02CE98 16:8E88: 01        .byte $01   ; <あ>
- D - I - - 0x02CE99 16:8E89: 54        .byte $54   ; <ト>
- D - I - - 0x02CE9A 16:8E8A: 9F        .byte $9F
- D - I - - 0x02CE9B 16:8E8B: 40        .byte $40   ; <「>
- D - I - - 0x02CE9C 16:8E8C: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02CE9D 16:8E8D: 44        .byte $44   ; <エ>
- D - I - - 0x02CE9E 16:8E8E: CB        .byte $CB   ; <ぺ>

- D - I - - 0x02CE9F 16:8E8F: 18        .byte $18   ; <ね>
- D - I - - 0x02CEA0 16:8E90: 02        .byte $02   ; <い>
- D - I - - 0x02CEA1 16:8E91: 54        .byte $54   ; <ト>
- D - I - - 0x02CEA2 16:8E92: C7        .byte $C7   ; <ボ>
- D - I - - 0x02CEA3 16:8E93: 40        .byte $40   ; <「>
- D - I - - 0x02CEA4 16:8E94: B4        .byte $B4   ; <ガ>
- D - I - - 0x02CEA5 16:8E95: 45        .byte $45   ; <オ>
- D - I - - 0x02CEA6 16:8E96: B5        .byte $B5   ; <ギ>
- D - I - - 0x02CEA7 16:8E97: 44        .byte $44   ; <エ>
- D - I - - 0x02CEA8 16:8E98: E0        .byte $E0

- D - I - - 0x02CEA9 16:8E99: 20        .byte $20   ; <み>
- D - I - - 0x02CEAA 16:8E9A: 03        .byte $03   ; <う>
- D - I - - 0x02CEAB 16:8E9B: 55        .byte $55   ; <ナ>
- D - I - - 0x02CEAC 16:8E9C: CD        .byte $CD   ; <パ>
- D - I - - 0x02CEAD 16:8E9D: 54        .byte $54   ; <ト>
- D - I - - 0x02CEAE 16:8E9E: 05        .byte $05   ; <お>
- D - I - - 0x02CEAF 16:8E9F: 41        .byte $41   ; <ア>
- D - I - - 0x02CEB0 16:8EA0: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02CEB1 16:8EA1: 43        .byte $43   ; <ウ>
- D - I - - 0x02CEB2 16:8EA2: 05        .byte $05   ; <お>
- D - I - - 0x02CEB3 16:8EA3: 45        .byte $45   ; <オ>
- D - I - - 0x02CEB4 16:8EA4: C9        .byte $C9   ; <ぴ>

- D - I - - 0x02CEB5 16:8EA5: 02        .byte $02   ; <い>
- D - I - - 0x02CEB6 16:8EA6: C8 8E     .word off_8EC8



off_8EA8:
- D - I - - 0x02CEB8 16:8EA8: 10        .byte $10   ; <た>
- D - I - - 0x02CEB9 16:8EA9: 02        .byte $02   ; <い>
- D - I - - 0x02CEBA 16:8EAA: 40        .byte $40   ; <「>
- D - I - - 0x02CEBB 16:8EAB: 9E        .byte $9E
- D - I - - 0x02CEBC 16:8EAC: 45        .byte $45   ; <オ>
- D - I - - 0x02CEBD 16:8EAD: A5        .byte $A5   ; <ざ>
- D - I - - 0x02CEBE 16:8EAE: 44        .byte $44   ; <エ>
- D - I - - 0x02CEBF 16:8EAF: B0        .byte $B0   ; <び>
; продолжение


off_8EB0:
- D - I - - 0x02CEC0 16:8EB0: 10        .byte $10   ; <た>
- D - I - - 0x02CEC1 16:8EB1: 01        .byte $01   ; <あ>
- D - I - - 0x02CEC2 16:8EB2: 54        .byte $54   ; <ト>
- D - I - - 0x02CEC3 16:8EB3: 98        .byte $98
- D - I - - 0x02CEC4 16:8EB4: 40        .byte $40   ; <「>
- D - I - - 0x02CEC5 16:8EB5: 99        .byte $99
- D - I - - 0x02CEC6 16:8EB6: 44        .byte $44   ; <エ>
- D - I - - 0x02CEC7 16:8EB7: 9C        .byte $9C

- D - I - - 0x02CEC8 16:8EB8: 00        .byte $00
- D - I - - 0x02CEC9 16:8EB9: 02        .byte $02   ; <い>
- D - I - - 0x02CECA 16:8EBA: 54        .byte $54   ; <ト>
- D - I - - 0x02CECB 16:8EBB: 8F        .byte $8F   ; <S>
; продолжение


off_8EBC:
- D - I - - 0x02CECC 16:8EBC: 20        .byte $20   ; <み>
- D - I - - 0x02CECD 16:8EBD: 03        .byte $03   ; <う>
- D - I - - 0x02CECE 16:8EBE: 55        .byte $55   ; <ナ>
- D - I - - 0x02CECF 16:8EBF: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02CED0 16:8EC0: 54        .byte $54   ; <ト>
- D - I - - 0x02CED1 16:8EC1: 05        .byte $05   ; <お>
- D - I - - 0x02CED2 16:8EC2: 41        .byte $41   ; <ア>
- D - I - - 0x02CED3 16:8EC3: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02CED4 16:8EC4: 43        .byte $43   ; <ウ>
- D - I - - 0x02CED5 16:8EC5: 05        .byte $05   ; <お>
- D - I - - 0x02CED6 16:8EC6: 45        .byte $45   ; <オ>
- D - I - - 0x02CED7 16:8EC7: AC        .byte $AC   ; <づ>
; продолжение


off_8EC8:
- D - I - - 0x02CED8 16:8EC8: 00        .byte $00
- D - I - - 0x02CED9 16:8EC9: 02        .byte $02   ; <い>
- D - I - - 0x02CEDA 16:8ECA: 85        .byte $85   ; <E>
- D - I - - 0x02CEDB 16:8ECB: 5F        .byte $5F   ; <マ>
; продолжение


off_8ECC:
- D - I - - 0x02CEDC 16:8ECC: 00        .byte $00
- D - I - - 0x02CEDD 16:8ECD: 02        .byte $02   ; <い>
- D - I - - 0x02CEDE 16:8ECE: 90        .byte $90   ; <U>
- D - I - - 0x02CEDF 16:8ECF: 75        .byte $75   ; <ェ>

- D - I - - 0x02CEE0 16:8ED0: 10        .byte $10   ; <た>
- D - I - - 0x02CEE1 16:8ED1: 03        .byte $03   ; <う>
- D - I - - 0x02CEE2 16:8ED2: 53        .byte $53   ; <テ>
- D - I - - 0x02CEE3 16:8ED3: 89        .byte $89   ; <I>
- D - I - - 0x02CEE4 16:8ED4: 85        .byte $85   ; <E>
- D - I - - 0x02CEE5 16:8ED5: 71        .byte $71   ; <ュ>
- D - I - - 0x02CEE6 16:8ED6: 93        .byte $93   ; <Y>
- D - I - - 0x02CEE7 16:8ED7: 74        .byte $74   ; <ィ>

- D - I - - 0x02CEE8 16:8ED8: 30        .byte $30   ; <ゃ>
- D - I - - 0x02CEE9 16:8ED9: 04        .byte $04   ; <え>
- D - I - - 0x02CEEA 16:8EDA: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02CEEB 16:8EDB: 8A        .byte $8A   ; <N>
- D - I - - 0x02CEEC 16:8EDC: 50        .byte $50   ; <タ>
- D - I - - 0x02CEED 16:8EDD: 8B        .byte $8B   ; <K>
- D - I - - 0x02CEEE 16:8EDE: 41        .byte $41   ; <ア>
- D - I - - 0x02CEEF 16:8EDF: 72        .byte $72   ; <ョ>
- D - I - - 0x02CEF0 16:8EE0: 45        .byte $45   ; <オ>
- D - I - - 0x02CEF1 16:8EE1: 73        .byte $73   ; <ヮ>
- D - I - - 0x02CEF2 16:8EE2: 85        .byte $85   ; <E>
- D - I - - 0x02CEF3 16:8EE3: 76        .byte $76   ; <ォ>
- D - I - - 0x02CEF4 16:8EE4: 86        .byte $86   ; <F>
- D - I - - 0x02CEF5 16:8EE5: 05        .byte $05   ; <お>
- D - I - - 0x02CEF6 16:8EE6: 92        .byte $92   ; <W>
- D - I - - 0x02CEF7 16:8EE7: 77        .byte $77   ; <:>

- D - I - - 0x02CEF8 16:8EE8: 18        .byte $18   ; <ね>
- D - I - - 0x02CEF9 16:8EE9: 05        .byte $05   ; <お>
- D - I - - 0x02CEFA 16:8EEA: 42        .byte $42   ; <イ>
- D - I - - 0x02CEFB 16:8EEB: 78        .byte $78   ; <?>
- D - I - - 0x02CEFC 16:8EEC: 46        .byte $46   ; <カ>
- D - I - - 0x02CEFD 16:8EED: 79        .byte $79   ; <!>
- D - I - - 0x02CEFE 16:8EEE: 86        .byte $86   ; <F>
- D - I - - 0x02CEFF 16:8EEF: 7C        .byte $7C   ; <~>
- D - I - - 0x02CF00 16:8EF0: 92        .byte $92   ; <W>
- D - I - - 0x02CF01 16:8EF1: 7D        .byte $7D   ; <ー>

- D - I - - 0x02CF02 16:8EF2: 20        .byte $20   ; <み>
- D - I - - 0x02CF03 16:8EF3: 06        .byte $06   ; <か>
- D - I - - 0x02CF04 16:8EF4: 55        .byte $55   ; <ナ>
- D - I - - 0x02CF05 16:8EF5: 70        .byte $70   ; <ャ>
- D - I - - 0x02CF06 16:8EF6: 41        .byte $41   ; <ア>
- D - I - - 0x02CF07 16:8EF7: 7A        .byte $7A   ; <、>
- D - I - - 0x02CF08 16:8EF8: 44        .byte $44   ; <エ>
- D - I - - 0x02CF09 16:8EF9: 7B        .byte $7B   ; <。>
- D - I - - 0x02CF0A 16:8EFA: 87        .byte $87   ; <G>
- D - I - - 0x02CF0B 16:8EFB: 7E        .byte $7E   ; <.>
- D - I - - 0x02CF0C 16:8EFC: 90        .byte $90   ; <U>
- D - I - - 0x02CF0D 16:8EFD: 7F        .byte $7F   ; <,>

- D - I - - 0x02CF0E 16:8EFE: 18        .byte $18   ; <ね>
- D - I - - 0x02CF0F 16:8EFF: 07        .byte $07   ; <き>
- D - I - - 0x02CF10 16:8F00: 03        .byte $03   ; <う>
- D - I - - 0x02CF11 16:8F01: 80        .byte $80
- D - I - - 0x02CF12 16:8F02: 05        .byte $05   ; <お>
- D - I - - 0x02CF13 16:8F03: 81        .byte $81   ; <A>
- D - I - - 0x02CF14 16:8F04: 09        .byte $09   ; <け>
- D - I - - 0x02CF15 16:8F05: 84        .byte $84   ; <D>
- D - I - - 0x02CF16 16:8F06: 85        .byte $85   ; <E>
- D - I - - 0x02CF17 16:8F07: 85        .byte $85   ; <E>

- D - I - - 0x02CF18 16:8F08: 18        .byte $18   ; <ね>
- D - I - - 0x02CF19 16:8F09: 08        .byte $08   ; <く>
- D - I - - 0x02CF1A 16:8F0A: 03        .byte $03   ; <う>
- D - I - - 0x02CF1B 16:8F0B: 82        .byte $82   ; <B>
- D - I - - 0x02CF1C 16:8F0C: 05        .byte $05   ; <お>
- D - I - - 0x02CF1D 16:8F0D: 83        .byte $83   ; <C>
- D - I - - 0x02CF1E 16:8F0E: 47        .byte $47   ; <キ>
- D - I - - 0x02CF1F 16:8F0F: 86        .byte $86   ; <F>
- D - I - - 0x02CF20 16:8F10: 85        .byte $85   ; <E>
- D - I - - 0x02CF21 16:8F11: 87        .byte $87   ; <G>

- D - I - - 0x02CF22 16:8F12: 08        .byte $08   ; <く>
- D - I - - 0x02CF23 16:8F13: 09        .byte $09   ; <け>
- D - I - - 0x02CF24 16:8F14: 47        .byte $47   ; <キ>
- D - I - - 0x02CF25 16:8F15: 8C        .byte $8C   ; <M>
- D - I - - 0x02CF26 16:8F16: 85        .byte $85   ; <E>
- D - I - - 0x02CF27 16:8F17: 8D        .byte $8D   ; <P>

- D - I - - 0x02CF28 16:8F18: 00        .byte $00
- D - I - - 0x02CF29 16:8F19: 16        .byte $16   ; <に>
- D - I - - 0x02CF2A 16:8F1A: 13        .byte $13   ; <て>
- D - I - - 0x02CF2B 16:8F1B: 88        .byte $88   ; <H>

- D - I - - 0x02CF2C 16:8F1C: 01        .byte $01   ; <あ>



off_8F1D_1A:
- - - - - - 0x02CF2D 16:8F1D: 08        .byte $08   ; <く>
- - - - - - 0x02CF2E 16:8F1E: 01        .byte $01   ; <あ>
- - - - - - 0x02CF2F 16:8F1F: 53        .byte $53   ; <テ>
- - - - - - 0x02CF30 16:8F20: 51        .byte $51   ; <チ>
- - - - - - 0x02CF31 16:8F21: 57        .byte $57   ; <ヌ>
- - - - - - 0x02CF32 16:8F22: 54        .byte $54   ; <ト>

- - - - - - 0x02CF33 16:8F23: 08        .byte $08   ; <く>
- - - - - - 0x02CF34 16:8F24: 02        .byte $02   ; <い>
- - - - - - 0x02CF35 16:8F25: 53        .byte $53   ; <テ>
- - - - - - 0x02CF36 16:8F26: 53        .byte $53   ; <テ>
- - - - - - 0x02CF37 16:8F27: 57        .byte $57   ; <ヌ>
- - - - - - 0x02CF38 16:8F28: 56        .byte $56   ; <ニ>

- - - - - - 0x02CF39 16:8F29: 02        .byte $02   ; <い>
- - - - - - 0x02CF3A 16:8F2A: 52 8D     .word off_8D52



off_8F2C_1B:
- D - I - - 0x02CF3C 16:8F2C: 00        .byte $00
- D - I - - 0x02CF3D 16:8F2D: 00        .byte $00
- D - I - - 0x02CF3E 16:8F2E: 57        .byte $57   ; <ヌ>
- D - I - - 0x02CF3F 16:8F2F: C5        .byte $C5   ; <ブ>

- D - I - - 0x02CF40 16:8F30: 10        .byte $10   ; <た>
- D - I - - 0x02CF41 16:8F31: 01        .byte $01   ; <あ>
- D - I - - 0x02CF42 16:8F32: 53        .byte $53   ; <テ>
- D - I - - 0x02CF43 16:8F33: 51        .byte $51   ; <チ>
- D - I - - 0x02CF44 16:8F34: 57        .byte $57   ; <ヌ>
- D - I - - 0x02CF45 16:8F35: D0        .byte $D0   ; <ペ>
- D - I - - 0x02CF46 16:8F36: 43        .byte $43   ; <ウ>
- D - I - - 0x02CF47 16:8F37: D2        .byte $D2

- D - I - - 0x02CF48 16:8F38: 08        .byte $08   ; <く>
- D - I - - 0x02CF49 16:8F39: 02        .byte $02   ; <い>
- D - I - - 0x02CF4A 16:8F3A: 53        .byte $53   ; <テ>
- D - I - - 0x02CF4B 16:8F3B: 53        .byte $53   ; <テ>
- D - I - - 0x02CF4C 16:8F3C: 57        .byte $57   ; <ヌ>
- D - I - - 0x02CF4D 16:8F3D: 56        .byte $56   ; <ニ>

- D - I - - 0x02CF4E 16:8F3E: 02        .byte $02   ; <い>
- D - I - - 0x02CF4F 16:8F3F: 52 8D     .word off_8D52



off_8F41_1C:
- - - - - - 0x02CF51 16:8F41: 00        .byte $00
- - - - - - 0x02CF52 16:8F42: 00        .byte $00
- - - - - - 0x02CF53 16:8F43: 57        .byte $57   ; <ヌ>
- - - - - - 0x02CF54 16:8F44: D1        .byte $D1   ; <ポ>

- - - - - - 0x02CF55 16:8F45: 10        .byte $10   ; <た>
- - - - - - 0x02CF56 16:8F46: 01        .byte $01   ; <あ>
- - - - - - 0x02CF57 16:8F47: 53        .byte $53   ; <テ>
- - - - - - 0x02CF58 16:8F48: 51        .byte $51   ; <チ>
- - - - - - 0x02CF59 16:8F49: 57        .byte $57   ; <ヌ>
- - - - - - 0x02CF5A 16:8F4A: D3        .byte $D3
- - - - - - 0x02CF5B 16:8F4B: 43        .byte $43   ; <ウ>
- - - - - - 0x02CF5C 16:8F4C: D4        .byte $D4

- - - - - - 0x02CF5D 16:8F4D: 08        .byte $08   ; <く>
- - - - - - 0x02CF5E 16:8F4E: 02        .byte $02   ; <い>
- - - - - - 0x02CF5F 16:8F4F: 53        .byte $53   ; <テ>
- - - - - - 0x02CF60 16:8F50: 53        .byte $53   ; <テ>
- - - - - - 0x02CF61 16:8F51: 57        .byte $57   ; <ヌ>
- - - - - - 0x02CF62 16:8F52: 56        .byte $56   ; <ニ>

- - - - - - 0x02CF63 16:8F53: 02        .byte $02   ; <い>
- - - - - - 0x02CF64 16:8F54: 52 8D     .word off_8D52



off_8F56_1D:
- D - I - - 0x02CF66 16:8F56: 08        .byte $08   ; <く>
- D - I - - 0x02CF67 16:8F57: 03        .byte $03   ; <う>
- D - I - - 0x02CF68 16:8F58: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CF69 16:8F59: 51        .byte $51   ; <チ>
- D - I - - 0x02CF6A 16:8F5A: 13        .byte $13   ; <て>
- D - I - - 0x02CF6B 16:8F5B: 54        .byte $54   ; <ト>

- D - I - - 0x02CF6C 16:8F5C: 08        .byte $08   ; <く>
- D - I - - 0x02CF6D 16:8F5D: 04        .byte $04   ; <え>
- D - I - - 0x02CF6E 16:8F5E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CF6F 16:8F5F: 53        .byte $53   ; <テ>
- D - I - - 0x02CF70 16:8F60: 13        .byte $13   ; <て>
- D - I - - 0x02CF71 16:8F61: 56        .byte $56   ; <ニ>

- D - I - - 0x02CF72 16:8F62: 01        .byte $01   ; <あ>



off_8F63_1E:
- D - I - - 0x02CF73 16:8F63: 03        .byte $03   ; <う>
- D - I - - 0x02CF74 16:8F64: 7C 8F     .word off_8F7C
- D - I - - 0x02CF76 16:8F66: A9 8F     .word off_8FA9
- D - I - - 0x02CF78 16:8F68: B2 8F     .word off_8FB2
- D - I - - 0x02CF7A 16:8F6A: 7C 8F     .word off_8F7C
- D - I - - 0x02CF7C 16:8F6C: BB 8F     .word off_8FBB
- D - I - - 0x02CF7E 16:8F6E: B2 8F     .word off_8FB2
- D - I - - 0x02CF80 16:8F70: B2 8F     .word off_8FB2
- D - I - - 0x02CF82 16:8F72: C8 8F     .word off_8FC8
- D - I - - 0x02CF84 16:8F74: B2 8F     .word off_8FB2
- D - I - - 0x02CF86 16:8F76: DB 8F     .word off_8FDB
- D - I - - 0x02CF88 16:8F78: B2 8F     .word off_8FB2
- D - I - - 0x02CF8A 16:8F7A: B2 8F     .word off_8FB2



off_8F7C:
- D - I - - 0x02CF8C 16:8F7C: 08        .byte $08   ; <く>
- D - I - - 0x02CF8D 16:8F7D: 02        .byte $02   ; <い>
- D - I - - 0x02CF8E 16:8F7E: 11        .byte $11   ; <ち>
- D - I - - 0x02CF8F 16:8F7F: 9D        .byte $9D
- D - I - - 0x02CF90 16:8F80: 10        .byte $10   ; <た>
- D - I - - 0x02CF91 16:8F81: B2        .byte $B2   ; <べ>
; продолжение


off_8F82:
- D - I - - 0x02CF92 16:8F82: 08        .byte $08   ; <く>
- D - I - - 0x02CF93 16:8F83: 02        .byte $02   ; <い>
- D - I - - 0x02CF94 16:8F84: 0C        .byte $0C   ; <し>
- D - I - - 0x02CF95 16:8F85: 9C        .byte $9C
- D - I - - 0x02CF96 16:8F86: 15        .byte $15   ; <な>
- D - I - - 0x02CF97 16:8F87: B5        .byte $B5   ; <ギ>
; продолжение


off_8F88:
- D - I - - 0x02CF98 16:8F88: 08        .byte $08   ; <く>
- D - I - - 0x02CF99 16:8F89: 03        .byte $03   ; <う>
- D - I - - 0x02CF9A 16:8F8A: 11        .byte $11   ; <ち>
- D - I - - 0x02CF9B 16:8F8B: 9E        .byte $9E
- D - I - - 0x02CF9C 16:8F8C: 15        .byte $15   ; <な>
- D - I - - 0x02CF9D 16:8F8D: 9F        .byte $9F
; продолжение


off_8F8E:
- D - I - - 0x02CF9E 16:8F8E: 00        .byte $00
- D - I - - 0x02CF9F 16:8F8F: 02        .byte $02   ; <い>
- D - I - - 0x02CFA0 16:8F90: 18        .byte $18   ; <ね>
- D - I - - 0x02CFA1 16:8F91: 97        .byte $97

- D - I - - 0x02CFA2 16:8F92: 00        .byte $00
- D - I - - 0x02CFA3 16:8F93: 03        .byte $03   ; <う>
- D - I - - 0x02CFA4 16:8F94: 0D        .byte $0D   ; <す>
- D - I - - 0x02CFA5 16:8F95: 98        .byte $98

- D - I - - 0x02CFA6 16:8F96: 10        .byte $10   ; <た>
- D - I - - 0x02CFA7 16:8F97: 04        .byte $04   ; <え>
- D - I - - 0x02CFA8 16:8F98: 0D        .byte $0D   ; <す>
- D - I - - 0x02CFA9 16:8F99: 9A        .byte $9A
- D - I - - 0x02CFAA 16:8F9A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02CFAB 16:8F9B: 99        .byte $99
- D - I - - 0x02CFAC 16:8F9C: 12        .byte $12   ; <つ>
- D - I - - 0x02CFAD 16:8F9D: 9B        .byte $9B

- D - I - - 0x02CFAE 16:8F9E: 08        .byte $08   ; <く>
- D - I - - 0x02CFAF 16:8F9F: 05        .byte $05   ; <お>
- D - I - - 0x02CFB0 16:8FA0: 11        .byte $11   ; <ち>
- D - I - - 0x02CFB1 16:8FA1: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02CFB2 16:8FA2: 15        .byte $15   ; <な>
- D - I - - 0x02CFB3 16:8FA3: B4        .byte $B4   ; <ガ>

- D - I - - 0x02CFB4 16:8FA4: 00        .byte $00
- D - I - - 0x02CFB5 16:8FA5: 06        .byte $06   ; <か>
- D - I - - 0x02CFB6 16:8FA6: 75        .byte $75   ; <ェ>
- D - I - - 0x02CFB7 16:8FA7: B0        .byte $B0   ; <び>

- D - I - - 0x02CFB8 16:8FA8: 01        .byte $01   ; <あ>



off_8FA9:
- D - I - - 0x02CFB9 16:8FA9: 08        .byte $08   ; <く>
- D - I - - 0x02CFBA 16:8FAA: 02        .byte $02   ; <い>
- D - I - - 0x02CFBB 16:8FAB: 11        .byte $11   ; <ち>
- D - I - - 0x02CFBC 16:8FAC: B8        .byte $B8   ; <ゴ>
- D - I - - 0x02CFBD 16:8FAD: 10        .byte $10   ; <た>
- D - I - - 0x02CFBE 16:8FAE: B3        .byte $B3   ; <ぼ>

- D - I - - 0x02CFBF 16:8FAF: 02        .byte $02   ; <い>
- D - I - - 0x02CFC0 16:8FB0: 82 8F     .word off_8F82



off_8FB2:
- D - I - - 0x02CFC2 16:8FB2: 08        .byte $08   ; <く>
- D - I - - 0x02CFC3 16:8FB3: 02        .byte $02   ; <い>
- D - I - - 0x02CFC4 16:8FB4: 11        .byte $11   ; <ち>
- D - I - - 0x02CFC5 16:8FB5: B9        .byte $B9   ; <ザ>
- D - I - - 0x02CFC6 16:8FB6: 10        .byte $10   ; <た>
- D - I - - 0x02CFC7 16:8FB7: BA        .byte $BA   ; <ジ>

- D - I - - 0x02CFC8 16:8FB8: 02        .byte $02   ; <い>
- D - I - - 0x02CFC9 16:8FB9: 82 8F     .word off_8F82



off_8FBB:
- D - I - - 0x02CFCB 16:8FBB: 18        .byte $18   ; <ね>
- D - I - - 0x02CFCC 16:8FBC: 02        .byte $02   ; <い>
- D - I - - 0x02CFCD 16:8FBD: 0C        .byte $0C   ; <し>
- D - I - - 0x02CFCE 16:8FBE: BB        .byte $BB   ; <ズ>
- D - I - - 0x02CFCF 16:8FBF: 11        .byte $11   ; <ち>
- D - I - - 0x02CFD0 16:8FC0: B9        .byte $B9   ; <ザ>
- D - I - - 0x02CFD1 16:8FC1: 10        .byte $10   ; <た>
- D - I - - 0x02CFD2 16:8FC2: BA        .byte $BA   ; <ジ>
- D - I - - 0x02CFD3 16:8FC3: 15        .byte $15   ; <な>
- D - I - - 0x02CFD4 16:8FC4: B5        .byte $B5   ; <ギ>

- D - I - - 0x02CFD5 16:8FC5: 02        .byte $02   ; <い>
- D - I - - 0x02CFD6 16:8FC6: 88 8F     .word off_8F88



off_8FC8:
- D - I - - 0x02CFD8 16:8FC8: 18        .byte $18   ; <ね>
- D - I - - 0x02CFD9 16:8FC9: 02        .byte $02   ; <い>
- D - I - - 0x02CFDA 16:8FCA: 0C        .byte $0C   ; <し>
- D - I - - 0x02CFDB 16:8FCB: 9C        .byte $9C
- D - I - - 0x02CFDC 16:8FCC: 11        .byte $11   ; <ち>
- D - I - - 0x02CFDD 16:8FCD: B6        .byte $B6   ; <グ>
- D - I - - 0x02CFDE 16:8FCE: 10        .byte $10   ; <た>
- D - I - - 0x02CFDF 16:8FCF: BE        .byte $BE   ; <ダ>
- D - I - - 0x02CFE0 16:8FD0: 15        .byte $15   ; <な>
- D - I - - 0x02CFE1 16:8FD1: B7        .byte $B7   ; <ゲ>

- D - I - - 0x02CFE2 16:8FD2: 08        .byte $08   ; <く>
- D - I - - 0x02CFE3 16:8FD3: 03        .byte $03   ; <う>
- D - I - - 0x02CFE4 16:8FD4: 11        .byte $11   ; <ち>
- D - I - - 0x02CFE5 16:8FD5: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02CFE6 16:8FD6: 15        .byte $15   ; <な>
- D - I - - 0x02CFE7 16:8FD7: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02CFE8 16:8FD8: 02        .byte $02   ; <い>
- D - I - - 0x02CFE9 16:8FD9: 8E 8F     .word off_8F8E




off_8FDB:
- D - I - - 0x02CFEB 16:8FDB: 18        .byte $18   ; <ね>
- D - I - - 0x02CFEC 16:8FDC: 02        .byte $02   ; <い>
- D - I - - 0x02CFED 16:8FDD: 0C        .byte $0C   ; <し>
- D - I - - 0x02CFEE 16:8FDE: BB        .byte $BB   ; <ズ>
- D - I - - 0x02CFEF 16:8FDF: 11        .byte $11   ; <ち>
- D - I - - 0x02CFF0 16:8FE0: 9D        .byte $9D
- D - I - - 0x02CFF1 16:8FE1: 10        .byte $10   ; <た>
- D - I - - 0x02CFF2 16:8FE2: B2        .byte $B2   ; <べ>
- D - I - - 0x02CFF3 16:8FE3: 15        .byte $15   ; <な>
- D - I - - 0x02CFF4 16:8FE4: B5        .byte $B5   ; <ギ>

- D - I - - 0x02CFF5 16:8FE5: 02        .byte $02   ; <い>
- D - I - - 0x02CFF6 16:8FE6: 88 8F     .word off_8F88



off_8FE8_1F:
- D - I - - 0x02CFF8 16:8FE8: 08        .byte $08   ; <く>
- D - I - - 0x02CFF9 16:8FE9: 16        .byte $16   ; <に>
- D - I - - 0x02CFFA 16:8FEA: 9F        .byte $9F
- D - I - - 0x02CFFB 16:8FEB: 7C        .byte $7C   ; <~>
- D - I - - 0x02CFFC 16:8FEC: A3        .byte $A3   ; <げ>
- D - I - - 0x02CFFD 16:8FED: 7D        .byte $7D   ; <ー>

- D - I - - 0x02CFFE 16:8FEE: 08        .byte $08   ; <く>
- D - I - - 0x02CFFF 16:8FEF: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D000 16:8FF0: 9F        .byte $9F
- D - I - - 0x02D001 16:8FF1: 7E        .byte $7E   ; <.>
- D - I - - 0x02D002 16:8FF2: A3        .byte $A3   ; <げ>
- D - I - - 0x02D003 16:8FF3: 7F        .byte $7F   ; <,>
; продолжение


off_8FF4_D2:
- D - I - - 0x02D004 16:8FF4: 03        .byte $03   ; <う>
- D - I - - 0x02D005 16:8FF5: 0D 90     .word off_900D
- D - I - - 0x02D007 16:8FF7: 26 90     .word off_9026
- D - I - - 0x02D009 16:8FF9: 47 90     .word off_9047
- D - I - - 0x02D00B 16:8FFB: 58 90     .word off_9058
- D - I - - 0x02D00D 16:8FFD: 71 90     .word off_9071
- D - I - - 0x02D00F 16:8FFF: 88 90     .word off_9088
- D - I - - 0x02D011 16:9001: 9F 90     .word off_909F
- D - I - - 0x02D013 16:9003: B6 90     .word off_90B6
- D - I - - 0x02D015 16:9005: E5 90     .word off_90E5
- D - I - - 0x02D017 16:9007: FC 90     .word off_90FC
- D - I - - 0x02D019 16:9009: 15 91     .word off_9115
- D - I - - 0x02D01B 16:900B: 2C 91     .word off_912C



off_900D:
- D - I - - 0x02D01D 16:900D: 10        .byte $10   ; <た>
- D - I - - 0x02D01E 16:900E: 02        .byte $02   ; <い>
- D - I - - 0x02D01F 16:900F: 04        .byte $04   ; <え>
- D - I - - 0x02D020 16:9010: 11        .byte $11   ; <ち>
- D - I - - 0x02D021 16:9011: 08        .byte $08   ; <く>
- D - I - - 0x02D022 16:9012: 14        .byte $14   ; <と>
- D - I - - 0x02D023 16:9013: 0C        .byte $0C   ; <し>
- D - I - - 0x02D024 16:9014: 15        .byte $15   ; <な>

- D - I - - 0x02D025 16:9015: 10        .byte $10   ; <た>
- D - I - - 0x02D026 16:9016: 03        .byte $03   ; <う>
- D - I - - 0x02D027 16:9017: 04        .byte $04   ; <え>
- D - I - - 0x02D028 16:9018: 13        .byte $13   ; <て>
- D - I - - 0x02D029 16:9019: 08        .byte $08   ; <く>
- D - I - - 0x02D02A 16:901A: 16        .byte $16   ; <に>
- D - I - - 0x02D02B 16:901B: 0C        .byte $0C   ; <し>
- D - I - - 0x02D02C 16:901C: 17        .byte $17   ; <ぬ>

- D - I - - 0x02D02D 16:901D: 08        .byte $08   ; <く>
- D - I - - 0x02D02E 16:901E: 04        .byte $04   ; <え>
- D - I - - 0x02D02F 16:901F: 08        .byte $08   ; <く>
- D - I - - 0x02D030 16:9020: 19        .byte $19   ; <の>
- D - I - - 0x02D031 16:9021: 0C        .byte $0C   ; <し>
- D - I - - 0x02D032 16:9022: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D033 16:9023: 02        .byte $02   ; <い>
- D - I - - 0x02D034 16:9024: 42 91     .word off_9142



off_9026:
- D - I - - 0x02D036 16:9026: 08        .byte $08   ; <く>
- D - I - - 0x02D037 16:9027: 01        .byte $01   ; <あ>
- D - I - - 0x02D038 16:9028: 0C        .byte $0C   ; <し>
- D - I - - 0x02D039 16:9029: 1D        .byte $1D   ; <へ>
- D - I - - 0x02D03A 16:902A: 10        .byte $10   ; <た>
- D - I - - 0x02D03B 16:902B: 48        .byte $48   ; <ク>

- D - I - - 0x02D03C 16:902C: 18        .byte $18   ; <ね>
- D - I - - 0x02D03D 16:902D: 02        .byte $02   ; <い>
- D - I - - 0x02D03E 16:902E: 04        .byte $04   ; <え>
- D - I - - 0x02D03F 16:902F: 11        .byte $11   ; <ち>
- D - I - - 0x02D040 16:9030: 08        .byte $08   ; <く>
- D - I - - 0x02D041 16:9031: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02D042 16:9032: 0C        .byte $0C   ; <し>
- D - I - - 0x02D043 16:9033: 1F        .byte $1F   ; <ま>
- D - I - - 0x02D044 16:9034: 10        .byte $10   ; <た>
- D - I - - 0x02D045 16:9035: 4A        .byte $4A   ; <コ>

- D - I - - 0x02D046 16:9036: 10        .byte $10   ; <た>
- D - I - - 0x02D047 16:9037: 03        .byte $03   ; <う>
- D - I - - 0x02D048 16:9038: 54        .byte $54   ; <ト>
- D - I - - 0x02D049 16:9039: 34        .byte $34   ; <1>
- D - I - - 0x02D04A 16:903A: 40        .byte $40   ; <「>
- D - I - - 0x02D04B 16:903B: 35        .byte $35   ; <2>
- D - I - - 0x02D04C 16:903C: 44        .byte $44   ; <エ>
- D - I - - 0x02D04D 16:903D: 60        .byte $60   ; <ミ>

- D - I - - 0x02D04E 16:903E: 08        .byte $08   ; <く>
- D - I - - 0x02D04F 16:903F: 04        .byte $04   ; <え>
- D - I - - 0x02D050 16:9040: 08        .byte $08   ; <く>
- D - I - - 0x02D051 16:9041: 19        .byte $19   ; <の>
- D - I - - 0x02D052 16:9042: 0C        .byte $0C   ; <し>
- D - I - - 0x02D053 16:9043: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02D054 16:9044: 02        .byte $02   ; <い>
- D - I - - 0x02D055 16:9045: 42 91     .word off_9142



off_9047:
- D - I - - 0x02D057 16:9047: 10        .byte $10   ; <た>
- D - I - - 0x02D058 16:9048: 03        .byte $03   ; <う>
- D - I - - 0x02D059 16:9049: 04        .byte $04   ; <え>
- D - I - - 0x02D05A 16:904A: 13        .byte $13   ; <て>
- D - I - - 0x02D05B 16:904B: 08        .byte $08   ; <く>
- D - I - - 0x02D05C 16:904C: 3C        .byte $3C   ; <9>
- D - I - - 0x02D05D 16:904D: 0C        .byte $0C   ; <し>
- D - I - - 0x02D05E 16:904E: 3D        .byte $3D   ; <+>

- D - I - - 0x02D05F 16:904F: 08        .byte $08   ; <く>
- D - I - - 0x02D060 16:9050: 04        .byte $04   ; <え>
- D - I - - 0x02D061 16:9051: 08        .byte $08   ; <く>
- D - I - - 0x02D062 16:9052: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02D063 16:9053: 0C        .byte $0C   ; <し>
- D - I - - 0x02D064 16:9054: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D065 16:9055: 02        .byte $02   ; <い>
- D - I - - 0x02D066 16:9056: 3A 91     .word off_913A



off_9058:
- D - I - - 0x02D068 16:9058: 10        .byte $10   ; <た>
- D - I - - 0x02D069 16:9059: 02        .byte $02   ; <い>
- D - I - - 0x02D06A 16:905A: 54        .byte $54   ; <ト>
- D - I - - 0x02D06B 16:905B: 44        .byte $44   ; <エ>
- D - I - - 0x02D06C 16:905C: 40        .byte $40   ; <「>
- D - I - - 0x02D06D 16:905D: 45        .byte $45   ; <オ>
- D - I - - 0x02D06E 16:905E: 44        .byte $44   ; <エ>
- D - I - - 0x02D06F 16:905F: 50        .byte $50   ; <タ>

- D - I - - 0x02D070 16:9060: 10        .byte $10   ; <た>
- D - I - - 0x02D071 16:9061: 03        .byte $03   ; <う>
- D - I - - 0x02D072 16:9062: 04        .byte $04   ; <え>
- D - I - - 0x02D073 16:9063: 46        .byte $46   ; <カ>
- D - I - - 0x02D074 16:9064: 08        .byte $08   ; <く>
- D - I - - 0x02D075 16:9065: 47        .byte $47   ; <キ>
- D - I - - 0x02D076 16:9066: 0C        .byte $0C   ; <し>
- D - I - - 0x02D077 16:9067: 52        .byte $52   ; <ツ>

- D - I - - 0x02D078 16:9068: 08        .byte $08   ; <く>
- D - I - - 0x02D079 16:9069: 04        .byte $04   ; <え>
- D - I - - 0x02D07A 16:906A: 08        .byte $08   ; <く>
- D - I - - 0x02D07B 16:906B: 3F        .byte $3F   ; <•>
- D - I - - 0x02D07C 16:906C: 0C        .byte $0C   ; <し>
- D - I - - 0x02D07D 16:906D: 6A        .byte $6A   ; <レ>

- D - I - - 0x02D07E 16:906E: 02        .byte $02   ; <い>
- D - I - - 0x02D07F 16:906F: 42 91     .word off_9142



off_9071:
- D - I - - 0x02D081 16:9071: 08        .byte $08   ; <く>
- D - I - - 0x02D082 16:9072: 02        .byte $02   ; <い>
- D - I - - 0x02D083 16:9073: 08        .byte $08   ; <く>
- D - I - - 0x02D084 16:9074: 63        .byte $63   ; <モ>
- D - I - - 0x02D085 16:9075: 0C        .byte $0C   ; <し>
- D - I - - 0x02D086 16:9076: 66        .byte $66   ; <ヨ>

- D - I - - 0x02D087 16:9077: 10        .byte $10   ; <た>
- D - I - - 0x02D088 16:9078: 03        .byte $03   ; <う>
- D - I - - 0x02D089 16:9079: 04        .byte $04   ; <え>
- D - I - - 0x02D08A 16:907A: 68        .byte $68   ; <リ>
- D - I - - 0x02D08B 16:907B: 08        .byte $08   ; <く>
- D - I - - 0x02D08C 16:907C: 69        .byte $69   ; <ル>
- D - I - - 0x02D08D 16:907D: 0C        .byte $0C   ; <し>
- D - I - - 0x02D08E 16:907E: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02D08F 16:907F: 08        .byte $08   ; <く>
- D - I - - 0x02D090 16:9080: 04        .byte $04   ; <え>
- D - I - - 0x02D091 16:9081: 08        .byte $08   ; <く>
- D - I - - 0x02D092 16:9082: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D093 16:9083: 0C        .byte $0C   ; <し>
- D - I - - 0x02D094 16:9084: 6E        .byte $6E   ; <ン>

- D - I - - 0x02D095 16:9085: 02        .byte $02   ; <い>
- D - I - - 0x02D096 16:9086: 42 91     .word off_9142



off_9088:
- D - I - - 0x02D098 16:9088: 08        .byte $08   ; <く>
- D - I - - 0x02D099 16:9089: 02        .byte $02   ; <い>
- D - I - - 0x02D09A 16:908A: 98        .byte $98
- D - I - - 0x02D09B 16:908B: 49        .byte $49   ; <ケ>
- D - I - - 0x02D09C 16:908C: 34        .byte $34   ; <1>
- D - I - - 0x02D09D 16:908D: 4C        .byte $4C   ; <シ>

- D - I - - 0x02D09E 16:908E: 10        .byte $10   ; <た>
- D - I - - 0x02D09F 16:908F: 03        .byte $03   ; <う>
- D - I - - 0x02D0A0 16:9090: 04        .byte $04   ; <え>
- D - I - - 0x02D0A1 16:9091: 4B        .byte $4B   ; <サ>
- D - I - - 0x02D0A2 16:9092: 08        .byte $08   ; <く>
- D - I - - 0x02D0A3 16:9093: 4E        .byte $4E   ; <セ>
- D - I - - 0x02D0A4 16:9094: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0A5 16:9095: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02D0A6 16:9096: 08        .byte $08   ; <く>
- D - I - - 0x02D0A7 16:9097: 04        .byte $04   ; <え>
- D - I - - 0x02D0A8 16:9098: 08        .byte $08   ; <く>
- D - I - - 0x02D0A9 16:9099: 61        .byte $61   ; <ム>
- D - I - - 0x02D0AA 16:909A: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0AB 16:909B: 64        .byte $64   ; <ヤ>

- D - I - - 0x02D0AC 16:909C: 02        .byte $02   ; <い>
- D - I - - 0x02D0AD 16:909D: 42 91     .word off_9142



off_909F:
- D - I - - 0x02D0AF 16:909F: 08        .byte $08   ; <く>
- D - I - - 0x02D0B0 16:90A0: 02        .byte $02   ; <い>
- D - I - - 0x02D0B1 16:90A1: 08        .byte $08   ; <く>
- D - I - - 0x02D0B2 16:90A2: 63        .byte $63   ; <モ>
- D - I - - 0x02D0B3 16:90A3: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0B4 16:90A4: 66        .byte $66   ; <ヨ>

- D - I - - 0x02D0B5 16:90A5: 10        .byte $10   ; <た>
- D - I - - 0x02D0B6 16:90A6: 03        .byte $03   ; <う>
- D - I - - 0x02D0B7 16:90A7: 04        .byte $04   ; <え>
- D - I - - 0x02D0B8 16:90A8: 4D        .byte $4D   ; <ス>
- D - I - - 0x02D0B9 16:90A9: 08        .byte $08   ; <く>
- D - I - - 0x02D0BA 16:90AA: 58        .byte $58   ; <ネ>
- D - I - - 0x02D0BB 16:90AB: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0BC 16:90AC: 59        .byte $59   ; <ノ>

- D - I - - 0x02D0BD 16:90AD: 08        .byte $08   ; <く>
- D - I - - 0x02D0BE 16:90AE: 04        .byte $04   ; <え>
- D - I - - 0x02D0BF 16:90AF: 08        .byte $08   ; <く>
- D - I - - 0x02D0C0 16:90B0: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02D0C1 16:90B1: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0C2 16:90B2: 6E        .byte $6E   ; <ン>

- D - I - - 0x02D0C3 16:90B3: 02        .byte $02   ; <い>
- D - I - - 0x02D0C4 16:90B4: 42 91     .word off_9142



off_90B6:
- D - I - - 0x02D0C6 16:90B6: 10        .byte $10   ; <た>
- D - I - - 0x02D0C7 16:90B7: 02        .byte $02   ; <い>
- D - I - - 0x02D0C8 16:90B8: 04        .byte $04   ; <え>
- D - I - - 0x02D0C9 16:90B9: 51        .byte $51   ; <チ>
- D - I - - 0x02D0CA 16:90BA: 08        .byte $08   ; <く>
- D - I - - 0x02D0CB 16:90BB: 54        .byte $54   ; <ト>
- D - I - - 0x02D0CC 16:90BC: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0CD 16:90BD: 55        .byte $55   ; <ナ>

- D - I - - 0x02D0CE 16:90BE: 10        .byte $10   ; <た>
- D - I - - 0x02D0CF 16:90BF: 03        .byte $03   ; <う>
- D - I - - 0x02D0D0 16:90C0: 04        .byte $04   ; <え>
- D - I - - 0x02D0D1 16:90C1: 53        .byte $53   ; <テ>
- D - I - - 0x02D0D2 16:90C2: 08        .byte $08   ; <く>
- D - I - - 0x02D0D3 16:90C3: 56        .byte $56   ; <ニ>
- D - I - - 0x02D0D4 16:90C4: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0D5 16:90C5: 57        .byte $57   ; <ヌ>

- D - I - - 0x02D0D6 16:90C6: 08        .byte $08   ; <く>
- D - I - - 0x02D0D7 16:90C7: 04        .byte $04   ; <え>
- D - I - - 0x02D0D8 16:90C8: 08        .byte $08   ; <く>
- D - I - - 0x02D0D9 16:90C9: 5C        .byte $5C   ; <フ>
- D - I - - 0x02D0DA 16:90CA: 0C        .byte $0C   ; <し>
- D - I - - 0x02D0DB 16:90CB: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D0DC 16:90CC: 00        .byte $00
- D - I - - 0x02D0DD 16:90CD: 01        .byte $01   ; <あ>
- D - I - - 0x02D0DE 16:90CE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D0DF 16:90CF: 31        .byte $31   ; <ゅ>

- D - I - - 0x02D0E0 16:90D0: 08        .byte $08   ; <く>
- D - I - - 0x02D0E1 16:90D1: 02        .byte $02   ; <い>
- D - I - - 0x02D0E2 16:90D2: 09        .byte $09   ; <け>
- D - I - - 0x02D0E3 16:90D3: 32        .byte $32   ; <ょ>
- D - I - - 0x02D0E4 16:90D4: 0D        .byte $0D   ; <す>
- D - I - - 0x02D0E5 16:90D5: 33        .byte $33   ; <0>

- D - I - - 0x02D0E6 16:90D6: 08        .byte $08   ; <く>
- D - I - - 0x02D0E7 16:90D7: 04        .byte $04   ; <え>
- D - I - - 0x02D0E8 16:90D8: 0D        .byte $0D   ; <す>
- D - I - - 0x02D0E9 16:90D9: 38        .byte $38   ; <5>
- D - I - - 0x02D0EA 16:90DA: 11        .byte $11   ; <ち>
- D - I - - 0x02D0EB 16:90DB: 39        .byte $39   ; <6>

- D - I - - 0x02D0EC 16:90DC: 08        .byte $08   ; <く>
- D - I - - 0x02D0ED 16:90DD: 05        .byte $05   ; <お>
- D - I - - 0x02D0EE 16:90DE: 0D        .byte $0D   ; <す>
- D - I - - 0x02D0EF 16:90DF: 3A        .byte $3A   ; <7>
- D - I - - 0x02D0F0 16:90E0: 11        .byte $11   ; <ち>
- D - I - - 0x02D0F1 16:90E1: 3B        .byte $3B   ; <8>

- D - I - - 0x02D0F2 16:90E2: 02        .byte $02   ; <い>
- D - I - - 0x02D0F3 16:90E3: 58 91     .word off_9158



off_90E5:
- D - I - - 0x02D0F5 16:90E5: 08        .byte $08   ; <く>
- D - I - - 0x02D0F6 16:90E6: 02        .byte $02   ; <い>
- D - I - - 0x02D0F7 16:90E7: 94        .byte $94
- D - I - - 0x02D0F8 16:90E8: 65        .byte $65   ; <ユ>
- D - I - - 0x02D0F9 16:90E9: 20        .byte $20   ; <み>
- D - I - - 0x02D0FA 16:90EA: 70        .byte $70   ; <ャ>

- D - I - - 0x02D0FB 16:90EB: 10        .byte $10   ; <た>
- D - I - - 0x02D0FC 16:90EC: 03        .byte $03   ; <う>
- D - I - - 0x02D0FD 16:90ED: 04        .byte $04   ; <え>
- D - I - - 0x02D0FE 16:90EE: 67        .byte $67   ; <ラ>
- D - I - - 0x02D0FF 16:90EF: 08        .byte $08   ; <く>
- D - I - - 0x02D100 16:90F0: 72        .byte $72   ; <ョ>
- D - I - - 0x02D101 16:90F1: 0C        .byte $0C   ; <し>
- D - I - - 0x02D102 16:90F2: 73        .byte $73   ; <ヮ>

- D - I - - 0x02D103 16:90F3: 08        .byte $08   ; <く>
- D - I - - 0x02D104 16:90F4: 04        .byte $04   ; <え>
- D - I - - 0x02D105 16:90F5: 08        .byte $08   ; <く>
- D - I - - 0x02D106 16:90F6: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02D107 16:90F7: 0C        .byte $0C   ; <し>
- D - I - - 0x02D108 16:90F8: 6F        .byte $6F   ; <ッ>

- D - I - - 0x02D109 16:90F9: 02        .byte $02   ; <い>
- D - I - - 0x02D10A 16:90FA: 42 91     .word off_9142



off_90FC:
- D - I - - 0x02D10C 16:90FC: 10        .byte $10   ; <た>
- D - I - - 0x02D10D 16:90FD: 02        .byte $02   ; <い>
- D - I - - 0x02D10E 16:90FE: 04        .byte $04   ; <え>
- D - I - - 0x02D10F 16:90FF: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02D110 16:9100: 08        .byte $08   ; <く>
- D - I - - 0x02D111 16:9101: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02D112 16:9102: 0C        .byte $0C   ; <し>
- D - I - - 0x02D113 16:9103: 5F        .byte $5F   ; <マ>

- D - I - - 0x02D114 16:9104: 10        .byte $10   ; <た>
- D - I - - 0x02D115 16:9105: 03        .byte $03   ; <う>
- D - I - - 0x02D116 16:9106: 04        .byte $04   ; <え>
- D - I - - 0x02D117 16:9107: 71        .byte $71   ; <ュ>
- D - I - - 0x02D118 16:9108: 08        .byte $08   ; <く>
- D - I - - 0x02D119 16:9109: 74        .byte $74   ; <ィ>
- D - I - - 0x02D11A 16:910A: 0C        .byte $0C   ; <し>
- D - I - - 0x02D11B 16:910B: 75        .byte $75   ; <ェ>

- D - I - - 0x02D11C 16:910C: 08        .byte $08   ; <く>
- D - I - - 0x02D11D 16:910D: 04        .byte $04   ; <え>
- D - I - - 0x02D11E 16:910E: 08        .byte $08   ; <く>
- D - I - - 0x02D11F 16:910F: 76        .byte $76   ; <ォ>
- D - I - - 0x02D120 16:9110: 0C        .byte $0C   ; <し>
- D - I - - 0x02D121 16:9111: 77        .byte $77   ; <:>

- D - I - - 0x02D122 16:9112: 02        .byte $02   ; <い>
- D - I - - 0x02D123 16:9113: 42 91     .word off_9142



off_9115:
- D - I - - 0x02D125 16:9115: 08        .byte $08   ; <く>
- D - I - - 0x02D126 16:9116: 02        .byte $02   ; <い>
- D - I - - 0x02D127 16:9117: 98        .byte $98
- D - I - - 0x02D128 16:9118: 78        .byte $78   ; <?>
- D - I - - 0x02D129 16:9119: 34        .byte $34   ; <1>
- D - I - - 0x02D12A 16:911A: 4C        .byte $4C   ; <シ>

- D - I - - 0x02D12B 16:911B: 10        .byte $10   ; <た>
- D - I - - 0x02D12C 16:911C: 03        .byte $03   ; <う>
- D - I - - 0x02D12D 16:911D: 04        .byte $04   ; <え>
- D - I - - 0x02D12E 16:911E: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02D12F 16:911F: 08        .byte $08   ; <く>
- D - I - - 0x02D130 16:9120: 7A        .byte $7A   ; <、>
- D - I - - 0x02D131 16:9121: 0C        .byte $0C   ; <し>
- D - I - - 0x02D132 16:9122: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02D133 16:9123: 08        .byte $08   ; <く>
- D - I - - 0x02D134 16:9124: 04        .byte $04   ; <え>
- D - I - - 0x02D135 16:9125: 08        .byte $08   ; <く>
- D - I - - 0x02D136 16:9126: 79        .byte $79   ; <!>
- D - I - - 0x02D137 16:9127: 0C        .byte $0C   ; <し>
- D - I - - 0x02D138 16:9128: 64        .byte $64   ; <ヤ>

- D - I - - 0x02D139 16:9129: 02        .byte $02   ; <い>
- D - I - - 0x02D13A 16:912A: 42 91     .word off_9142



off_912C:
- D - I - - 0x02D13C 16:912C: 10        .byte $10   ; <た>
- D - I - - 0x02D13D 16:912D: 03        .byte $03   ; <う>
- D - I - - 0x02D13E 16:912E: 04        .byte $04   ; <え>
- D - I - - 0x02D13F 16:912F: 13        .byte $13   ; <て>
- D - I - - 0x02D140 16:9130: 08        .byte $08   ; <く>
- D - I - - 0x02D141 16:9131: 40        .byte $40   ; <「>
- D - I - - 0x02D142 16:9132: 0C        .byte $0C   ; <し>
- D - I - - 0x02D143 16:9133: 41        .byte $41   ; <ア>

- D - I - - 0x02D144 16:9134: 08        .byte $08   ; <く>
- D - I - - 0x02D145 16:9135: 04        .byte $04   ; <え>
- D - I - - 0x02D146 16:9136: 08        .byte $08   ; <く>
- D - I - - 0x02D147 16:9137: 42        .byte $42   ; <イ>
- D - I - - 0x02D148 16:9138: 0C        .byte $0C   ; <し>
- D - I - - 0x02D149 16:9139: 43        .byte $43   ; <ウ>
; продолжение


off_913A:
- D - I - - 0x02D14A 16:913A: 10        .byte $10   ; <た>
- D - I - - 0x02D14B 16:913B: 02        .byte $02   ; <い>
- D - I - - 0x02D14C 16:913C: 94        .byte $94
- D - I - - 0x02D14D 16:913D: 36        .byte $36   ; <3>
- D - I - - 0x02D14E 16:913E: 20        .byte $20   ; <み>
- D - I - - 0x02D14F 16:913F: 37        .byte $37   ; <4>
- D - I - - 0x02D150 16:9140: 28        .byte $28   ; <り>
- D - I - - 0x02D151 16:9141: 62        .byte $62   ; <メ>
; продолжение


off_9142:
- D - I - - 0x02D152 16:9142: 00        .byte $00
- D - I - - 0x02D153 16:9143: 01        .byte $01   ; <あ>
- D - I - - 0x02D154 16:9144: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D155 16:9145: 08        .byte $08   ; <く>

- D - I - - 0x02D156 16:9146: 08        .byte $08   ; <く>
- D - I - - 0x02D157 16:9147: 02        .byte $02   ; <い>
- D - I - - 0x02D158 16:9148: 09        .byte $09   ; <け>
- D - I - - 0x02D159 16:9149: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D15A 16:914A: 0D        .byte $0D   ; <す>
- D - I - - 0x02D15B 16:914B: 0B        .byte $0B   ; <さ>

- D - I - - 0x02D15C 16:914C: 08        .byte $08   ; <く>
- D - I - - 0x02D15D 16:914D: 04        .byte $04   ; <え>
- D - I - - 0x02D15E 16:914E: 0D        .byte $0D   ; <す>
- D - I - - 0x02D15F 16:914F: 23        .byte $23   ; <も>
- D - I - - 0x02D160 16:9150: 11        .byte $11   ; <ち>
- D - I - - 0x02D161 16:9151: 26        .byte $26   ; <よ>

- D - I - - 0x02D162 16:9152: 08        .byte $08   ; <く>
- D - I - - 0x02D163 16:9153: 05        .byte $05   ; <お>
- D - I - - 0x02D164 16:9154: 0D        .byte $0D   ; <す>
- D - I - - 0x02D165 16:9155: 29        .byte $29   ; <る>
- D - I - - 0x02D166 16:9156: 11        .byte $11   ; <ち>
- D - I - - 0x02D167 16:9157: 2C        .byte $2C   ; <わ>
; продолжение


off_9158:
- D - I - - 0x02D168 16:9158: 00        .byte $00
- D - I - - 0x02D169 16:9159: 00        .byte $00
- D - I - - 0x02D16A 16:915A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D16B 16:915B: 02        .byte $02   ; <い>

- D - I - - 0x02D16C 16:915C: 00        .byte $00
- D - I - - 0x02D16D 16:915D: 0D        .byte $0D   ; <す>
- D - I - - 0x02D16E 16:915E: 04        .byte $04   ; <え>
- D - I - - 0x02D16F 16:915F: 2A        .byte $2A   ; <れ>

- D - I - - 0x02D170 16:9160: 00        .byte $00
- D - I - - 0x02D171 16:9161: 01        .byte $01   ; <あ>
- D - I - - 0x02D172 16:9162: 0C        .byte $0C   ; <し>
- D - I - - 0x02D173 16:9163: 09        .byte $09   ; <け>

- D - I - - 0x02D174 16:9164: 10        .byte $10   ; <た>
- D - I - - 0x02D175 16:9165: 03        .byte $03   ; <う>
- D - I - - 0x02D176 16:9166: 0D        .byte $0D   ; <す>
- D - I - - 0x02D177 16:9167: 21        .byte $21   ; <む>
- D - I - - 0x02D178 16:9168: 11        .byte $11   ; <ち>
- D - I - - 0x02D179 16:9169: 24        .byte $24   ; <や>
- D - I - - 0x02D17A 16:916A: 09        .byte $09   ; <け>
- D - I - - 0x02D17B 16:916B: 20        .byte $20   ; <み>

- D - I - - 0x02D17C 16:916C: 08        .byte $08   ; <く>
- D - I - - 0x02D17D 16:916D: 04        .byte $04   ; <え>
- D - I - - 0x02D17E 16:916E: 09        .byte $09   ; <け>
- D - I - - 0x02D17F 16:916F: 22        .byte $22   ; <め>
- D - I - - 0x02D180 16:9170: 14        .byte $14   ; <と>
- D - I - - 0x02D181 16:9171: 27        .byte $27   ; <ら>

- D - I - - 0x02D182 16:9172: 10        .byte $10   ; <た>
- D - I - - 0x02D183 16:9173: 05        .byte $05   ; <お>
- D - I - - 0x02D184 16:9174: 09        .byte $09   ; <け>
- D - I - - 0x02D185 16:9175: 28        .byte $28   ; <り>
- D - I - - 0x02D186 16:9176: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D187 16:9177: 03        .byte $03   ; <う>
- D - I - - 0x02D188 16:9178: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D189 16:9179: 2D        .byte $2D   ; <を>

- D - I - - 0x02D18A 16:917A: 20        .byte $20   ; <み>
- D - I - - 0x02D18B 16:917B: 06        .byte $06   ; <か>
- D - I - - 0x02D18C 16:917C: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D18D 16:917D: 04        .byte $04   ; <え>
- D - I - - 0x02D18E 16:917E: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D18F 16:917F: 05        .byte $05   ; <お>
- D - I - - 0x02D190 16:9180: 12        .byte $12   ; <つ>
- D - I - - 0x02D191 16:9181: 10        .byte $10   ; <た>
- D - I - - 0x02D192 16:9182: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D193 16:9183: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02D194 16:9184: 18        .byte $18   ; <ね>
- D - I - - 0x02D195 16:9185: 2E        .byte $2E   ; <ん>

- D - I - - 0x02D196 16:9186: 10        .byte $10   ; <た>
- D - I - - 0x02D197 16:9187: 07        .byte $07   ; <き>
- D - I - - 0x02D198 16:9188: 95        .byte $95
- D - I - - 0x02D199 16:9189: 06        .byte $06   ; <か>
- D - I - - 0x02D19A 16:918A: 20        .byte $20   ; <み>
- D - I - - 0x02D19B 16:918B: 07        .byte $07   ; <き>
- D - I - - 0x02D19C 16:918C: 18        .byte $18   ; <ね>
- D - I - - 0x02D19D 16:918D: 2F        .byte $2F   ; <っ>

- D - I - - 0x02D19E 16:918E: 08        .byte $08   ; <く>
- D - I - - 0x02D19F 16:918F: 08        .byte $08   ; <く>
- D - I - - 0x02D1A0 16:9190: 05        .byte $05   ; <お>
- D - I - - 0x02D1A1 16:9191: 0C        .byte $0C   ; <し>
- D - I - - 0x02D1A2 16:9192: 09        .byte $09   ; <け>
- D - I - - 0x02D1A3 16:9193: 0D        .byte $0D   ; <す>

- D - I - - 0x02D1A4 16:9194: 08        .byte $08   ; <く>
- D - I - - 0x02D1A5 16:9195: 09        .byte $09   ; <け>
- D - I - - 0x02D1A6 16:9196: 51        .byte $51   ; <チ>
- D - I - - 0x02D1A7 16:9197: 12        .byte $12   ; <つ>
- D - I - - 0x02D1A8 16:9198: 55        .byte $55   ; <ナ>
- D - I - - 0x02D1A9 16:9199: 18        .byte $18   ; <ね>

- D - I - - 0x02D1AA 16:919A: 10        .byte $10   ; <た>
- D - I - - 0x02D1AB 16:919B: 16        .byte $16   ; <に>
- D - I - - 0x02D1AC 16:919C: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02D1AD 16:919D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D1AE 16:919E: 51        .byte $51   ; <チ>
- D - I - - 0x02D1AF 16:919F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1B0 16:91A0: 55        .byte $55   ; <ナ>
- D - I - - 0x02D1B1 16:91A1: 1A        .byte $1A   ; <は>

- D - I - - 0x02D1B2 16:91A2: 08        .byte $08   ; <く>
- D - I - - 0x02D1B3 16:91A3: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D1B4 16:91A4: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02D1B5 16:91A5: 25        .byte $25   ; <ゆ>
- D - I - - 0x02D1B6 16:91A6: 53        .byte $53   ; <テ>
- D - I - - 0x02D1B7 16:91A7: 30        .byte $30   ; <ゃ>

- D - I - - 0x02D1B8 16:91A8: 01        .byte $01   ; <あ>



off_91A9_20:
- D - I - - 0x02D1B9 16:91A9: 00        .byte $00
- D - I - - 0x02D1BA 16:91AA: 01        .byte $01   ; <あ>
- D - I - - 0x02D1BB 16:91AB: 15        .byte $15   ; <な>
- D - I - - 0x02D1BC 16:91AC: 8C        .byte $8C   ; <M>

- D - I - - 0x02D1BD 16:91AD: 08        .byte $08   ; <く>
- D - I - - 0x02D1BE 16:91AE: 02        .byte $02   ; <い>
- D - I - - 0x02D1BF 16:91AF: 11        .byte $11   ; <ち>
- D - I - - 0x02D1C0 16:91B0: 88        .byte $88   ; <H>
- D - I - - 0x02D1C1 16:91B1: 15        .byte $15   ; <な>
- D - I - - 0x02D1C2 16:91B2: 89        .byte $89   ; <I>

- D - I - - 0x02D1C3 16:91B3: 08        .byte $08   ; <く>
- D - I - - 0x02D1C4 16:91B4: 03        .byte $03   ; <う>
- D - I - - 0x02D1C5 16:91B5: 0C        .byte $0C   ; <し>
- D - I - - 0x02D1C6 16:91B6: 82        .byte $82   ; <B>
- D - I - - 0x02D1C7 16:91B7: 11        .byte $11   ; <ち>
- D - I - - 0x02D1C8 16:91B8: 83        .byte $83   ; <C>

- D - I - - 0x02D1C9 16:91B9: 08        .byte $08   ; <く>
- D - I - - 0x02D1CA 16:91BA: 04        .byte $04   ; <え>
- D - I - - 0x02D1CB 16:91BB: 08        .byte $08   ; <く>
- D - I - - 0x02D1CC 16:91BC: 84        .byte $84   ; <D>
- D - I - - 0x02D1CD 16:91BD: 0C        .byte $0C   ; <し>
- D - I - - 0x02D1CE 16:91BE: 85        .byte $85   ; <E>

- D - I - - 0x02D1CF 16:91BF: 08        .byte $08   ; <く>
- D - I - - 0x02D1D0 16:91C0: 05        .byte $05   ; <お>
- D - I - - 0x02D1D1 16:91C1: 04        .byte $04   ; <え>
- D - I - - 0x02D1D2 16:91C2: 86        .byte $86   ; <F>
- D - I - - 0x02D1D3 16:91C3: 08        .byte $08   ; <く>
- D - I - - 0x02D1D4 16:91C4: 87        .byte $87   ; <G>

- D - I - - 0x02D1D5 16:91C5: 01        .byte $01   ; <あ>



off_91C6_21:
- D - I - - 0x02D1D6 16:91C6: 08        .byte $08   ; <く>
- D - I - - 0x02D1D7 16:91C7: 02        .byte $02   ; <い>
- D - I - - 0x02D1D8 16:91C8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1D9 16:91C9: B8        .byte $B8   ; <ゴ>
- D - I - - 0x02D1DA 16:91CA: 13        .byte $13   ; <て>
- D - I - - 0x02D1DB 16:91CB: B9        .byte $B9   ; <ザ>

- D - I - - 0x02D1DC 16:91CC: 08        .byte $08   ; <く>
- D - I - - 0x02D1DD 16:91CD: 03        .byte $03   ; <う>
- D - I - - 0x02D1DE 16:91CE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1DF 16:91CF: BA        .byte $BA   ; <ジ>
- D - I - - 0x02D1E0 16:91D0: 13        .byte $13   ; <て>
- D - I - - 0x02D1E1 16:91D1: BB        .byte $BB   ; <ズ>

- D - I - - 0x02D1E2 16:91D2: 08        .byte $08   ; <く>
- D - I - - 0x02D1E3 16:91D3: 04        .byte $04   ; <え>
- D - I - - 0x02D1E4 16:91D4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1E5 16:91D5: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02D1E6 16:91D6: 13        .byte $13   ; <て>
- D - I - - 0x02D1E7 16:91D7: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02D1E8 16:91D8: 08        .byte $08   ; <く>
- D - I - - 0x02D1E9 16:91D9: 05        .byte $05   ; <お>
- D - I - - 0x02D1EA 16:91DA: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1EB 16:91DB: BE        .byte $BE   ; <ダ>
- D - I - - 0x02D1EC 16:91DC: 13        .byte $13   ; <て>
- D - I - - 0x02D1ED 16:91DD: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02D1EE 16:91DE: 01        .byte $01   ; <あ>



off_91DF_22:
- D - I - - 0x02D1EF 16:91DF: 08        .byte $08   ; <く>
- D - I - - 0x02D1F0 16:91E0: 02        .byte $02   ; <い>
- D - I - - 0x02D1F1 16:91E1: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1F2 16:91E2: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D1F3 16:91E3: 13        .byte $13   ; <て>
- D - I - - 0x02D1F4 16:91E4: B6        .byte $B6   ; <グ>

- D - I - - 0x02D1F5 16:91E5: 08        .byte $08   ; <く>
- D - I - - 0x02D1F6 16:91E6: 03        .byte $03   ; <う>
- D - I - - 0x02D1F7 16:91E7: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1F8 16:91E8: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D1F9 16:91E9: 13        .byte $13   ; <て>
- D - I - - 0x02D1FA 16:91EA: E2        .byte $E2

- D - I - - 0x02D1FB 16:91EB: 08        .byte $08   ; <く>
- D - I - - 0x02D1FC 16:91EC: 04        .byte $04   ; <え>
- D - I - - 0x02D1FD 16:91ED: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D1FE 16:91EE: E8        .byte $E8
- D - I - - 0x02D1FF 16:91EF: 13        .byte $13   ; <て>
- D - I - - 0x02D200 16:91F0: E9        .byte $E9

- D - I - - 0x02D201 16:91F1: 08        .byte $08   ; <く>
- D - I - - 0x02D202 16:91F2: 05        .byte $05   ; <お>
- D - I - - 0x02D203 16:91F3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D204 16:91F4: EA        .byte $EA
- D - I - - 0x02D205 16:91F5: 13        .byte $13   ; <て>
- D - I - - 0x02D206 16:91F6: EB        .byte $EB

- D - I - - 0x02D207 16:91F7: 01        .byte $01   ; <あ>



off_91F8_23:
- D - I - - 0x02D208 16:91F8: 00        .byte $00
- D - I - - 0x02D209 16:91F9: 03        .byte $03   ; <う>
- D - I - - 0x02D20A 16:91FA: 13        .byte $13   ; <て>
- D - I - - 0x02D20B 16:91FB: B4        .byte $B4   ; <ガ>

- D - I - - 0x02D20C 16:91FC: 08        .byte $08   ; <く>
- D - I - - 0x02D20D 16:91FD: 04        .byte $04   ; <え>
- D - I - - 0x02D20E 16:91FE: 0D        .byte $0D   ; <す>
- D - I - - 0x02D20F 16:91FF: FC        .byte $FC
- D - I - - 0x02D210 16:9200: 11        .byte $11   ; <ち>
- D - I - - 0x02D211 16:9201: FD        .byte $FD

- D - I - - 0x02D212 16:9202: 08        .byte $08   ; <く>
- D - I - - 0x02D213 16:9203: 05        .byte $05   ; <お>
- D - I - - 0x02D214 16:9204: 11        .byte $11   ; <ち>
- D - I - - 0x02D215 16:9205: FE        .byte $FE
- D - I - - 0x02D216 16:9206: 15        .byte $15   ; <な>
- D - I - - 0x02D217 16:9207: FF        .byte $FF

- D - I - - 0x02D218 16:9208: 01        .byte $01   ; <あ>



off_9209_24:
- D - I - - 0x02D219 16:9209: 03        .byte $03   ; <う>
- D - I - - 0x02D21A 16:920A: 16 92     .word off_9216
- D - I - - 0x02D21C 16:920C: 5F 92     .word off_925F
- D - I - - 0x02D21E 16:920E: 70 92     .word off_9270
- D - I - - 0x02D220 16:9210: 5F 92     .word off_925F
- D - I - - 0x02D222 16:9212: 5F 92     .word off_925F
- - - - - - 0x02D224 16:9214: 5F 92     .word off_925F



off_9216:
- D - I - - 0x02D226 16:9216: 00        .byte $00
- D - I - - 0x02D227 16:9217: 19        .byte $19   ; <の>
- D - I - - 0x02D228 16:9218: 16        .byte $16   ; <に>
- D - I - - 0x02D229 16:9219: 30        .byte $30   ; <ゃ>

- D - I - - 0x02D22A 16:921A: 18        .byte $18   ; <ね>
- D - I - - 0x02D22B 16:921B: 1A        .byte $1A   ; <は>
- D - I - - 0x02D22C 16:921C: 11        .byte $11   ; <ち>
- D - I - - 0x02D22D 16:921D: 27        .byte $27   ; <ら>
- D - I - - 0x02D22E 16:921E: 13        .byte $13   ; <て>
- D - I - - 0x02D22F 16:921F: 2C        .byte $2C   ; <わ>
- D - I - - 0x02D230 16:9220: 12        .byte $12   ; <つ>
- D - I - - 0x02D231 16:9221: 2D        .byte $2D   ; <を>
- D - I - - 0x02D232 16:9222: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D233 16:9223: 32        .byte $32   ; <ょ>
; продолжение


off_9224:
- D - I - - 0x02D234 16:9224: 00        .byte $00
- D - I - - 0x02D235 16:9225: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02D236 16:9226: 1A        .byte $1A   ; <は>
- D - I - - 0x02D237 16:9227: 12        .byte $12   ; <つ>

- D - I - - 0x02D238 16:9228: 10        .byte $10   ; <た>
- D - I - - 0x02D239 16:9229: 18        .byte $18   ; <ね>
- D - I - - 0x02D23A 16:922A: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D23B 16:922B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D23C 16:922C: 16        .byte $16   ; <に>
- D - I - - 0x02D23D 16:922D: 1A        .byte $1A   ; <は>
- D - I - - 0x02D23E 16:922E: 1A        .byte $1A   ; <は>
- D - I - - 0x02D23F 16:922F: 18        .byte $18   ; <ね>

- D - I - - 0x02D240 16:9230: 08        .byte $08   ; <く>
- D - I - - 0x02D241 16:9231: 19        .byte $19   ; <の>
- D - I - - 0x02D242 16:9232: 06        .byte $06   ; <か>
- D - I - - 0x02D243 16:9233: 20        .byte $20   ; <み>
- D - I - - 0x02D244 16:9234: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D245 16:9235: 21        .byte $21   ; <む>

- D - I - - 0x02D246 16:9236: 10        .byte $10   ; <た>
- D - I - - 0x02D247 16:9237: 1A        .byte $1A   ; <は>
- D - I - - 0x02D248 16:9238: 06        .byte $06   ; <か>
- D - I - - 0x02D249 16:9239: 22        .byte $22   ; <め>
- D - I - - 0x02D24A 16:923A: 07        .byte $07   ; <き>
- D - I - - 0x02D24B 16:923B: 2A        .byte $2A   ; <れ>
- D - I - - 0x02D24C 16:923C: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D24D 16:923D: 26        .byte $26   ; <よ>

- D - I - - 0x02D24E 16:923E: 00        .byte $00
- D - I - - 0x02D24F 16:923F: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D250 16:9240: 06        .byte $06   ; <か>
- D - I - - 0x02D251 16:9241: 29        .byte $29   ; <る>
; продолжение


off_9242:
- D - I - - 0x02D252 16:9242: 00        .byte $00
- D - I - - 0x02D253 16:9243: 0D        .byte $0D   ; <す>
- D - I - - 0x02D254 16:9244: 18        .byte $18   ; <ね>
- D - I - - 0x02D255 16:9245: 10        .byte $10   ; <た>

- D - I - - 0x02D256 16:9246: 10        .byte $10   ; <た>
- D - I - - 0x02D257 16:9247: 18        .byte $18   ; <ね>
- D - I - - 0x02D258 16:9248: 04        .byte $04   ; <え>
- D - I - - 0x02D259 16:9249: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D25A 16:924A: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D25B 16:924B: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D25C 16:924C: 11        .byte $11   ; <ち>
- D - I - - 0x02D25D 16:924D: 0F        .byte $0F   ; <そ>

- D - I - - 0x02D25E 16:924E: 10        .byte $10   ; <た>
- D - I - - 0x02D25F 16:924F: 19        .byte $19   ; <の>
- D - I - - 0x02D260 16:9250: 0D        .byte $0D   ; <す>
- D - I - - 0x02D261 16:9251: 24        .byte $24   ; <や>
- D - I - - 0x02D262 16:9252: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D263 16:9253: 0D        .byte $0D   ; <す>
- D - I - - 0x02D264 16:9254: 11        .byte $11   ; <ち>
- D - I - - 0x02D265 16:9255: 25        .byte $25   ; <ゆ>

- D - I - - 0x02D266 16:9256: 00        .byte $00
- D - I - - 0x02D267 16:9257: 1A        .byte $1A   ; <は>
- D - I - - 0x02D268 16:9258: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D269 16:9259: 23        .byte $23   ; <も>

- D - I - - 0x02D26A 16:925A: 00        .byte $00
- D - I - - 0x02D26B 16:925B: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D26C 16:925C: 03        .byte $03   ; <う>
- D - I - - 0x02D26D 16:925D: 28        .byte $28   ; <り>

- D - I - - 0x02D26E 16:925E: 01        .byte $01   ; <あ>



off_925F:
- D - I - - 0x02D26F 16:925F: 00        .byte $00
- D - I - - 0x02D270 16:9260: 19        .byte $19   ; <の>
- D - I - - 0x02D271 16:9261: 16        .byte $16   ; <に>
- D - I - - 0x02D272 16:9262: 33        .byte $33   ; <0>

- D - I - - 0x02D273 16:9263: 18        .byte $18   ; <ね>
- D - I - - 0x02D274 16:9264: 1A        .byte $1A   ; <は>
- D - I - - 0x02D275 16:9265: 11        .byte $11   ; <ち>
- D - I - - 0x02D276 16:9266: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02D277 16:9267: 10        .byte $10   ; <た>
- D - I - - 0x02D278 16:9268: 2E        .byte $2E   ; <ん>
- D - I - - 0x02D279 16:9269: 12        .byte $12   ; <つ>
- D - I - - 0x02D27A 16:926A: 2D        .byte $2D   ; <を>
- D - I - - 0x02D27B 16:926B: 14        .byte $14   ; <と>
- D - I - - 0x02D27C 16:926C: 2F        .byte $2F   ; <っ>

- D - I - - 0x02D27D 16:926D: 02        .byte $02   ; <い>
- D - I - - 0x02D27E 16:926E: 24 92     .word off_9224



off_9270:
- D - I - - 0x02D280 16:9270: 00        .byte $00
- D - I - - 0x02D281 16:9271: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02D282 16:9272: 18        .byte $18   ; <ね>
- D - I - - 0x02D283 16:9273: 15        .byte $15   ; <な>

- D - I - - 0x02D284 16:9274: 18        .byte $18   ; <ね>
- D - I - - 0x02D285 16:9275: 18        .byte $18   ; <ね>
- D - I - - 0x02D286 16:9276: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D287 16:9277: 1D        .byte $1D   ; <へ>
- D - I - - 0x02D288 16:9278: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D289 16:9279: 1F        .byte $1F   ; <ま>
- D - I - - 0x02D28A 16:927A: 16        .byte $16   ; <に>
- D - I - - 0x02D28B 16:927B: 16        .byte $16   ; <に>
- D - I - - 0x02D28C 16:927C: 1A        .byte $1A   ; <は>
- D - I - - 0x02D28D 16:927D: 17        .byte $17   ; <ぬ>

- D - I - - 0x02D28E 16:927E: 10        .byte $10   ; <た>
- D - I - - 0x02D28F 16:927F: 19        .byte $19   ; <の>
- D - I - - 0x02D290 16:9280: 06        .byte $06   ; <か>
- D - I - - 0x02D291 16:9281: 11        .byte $11   ; <ち>
- D - I - - 0x02D292 16:9282: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D293 16:9283: 14        .byte $14   ; <と>
- D - I - - 0x02D294 16:9284: 16        .byte $16   ; <に>
- D - I - - 0x02D295 16:9285: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D296 16:9286: 20        .byte $20   ; <み>
- D - I - - 0x02D297 16:9287: 1A        .byte $1A   ; <は>
- D - I - - 0x02D298 16:9288: 07        .byte $07   ; <き>
- D - I - - 0x02D299 16:9289: 13        .byte $13   ; <て>
- D - I - - 0x02D29A 16:928A: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D29B 16:928B: 34        .byte $34   ; <1>
- D - I - - 0x02D29C 16:928C: 11        .byte $11   ; <ち>
- D - I - - 0x02D29D 16:928D: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D29E 16:928E: 12        .byte $12   ; <つ>
- D - I - - 0x02D29F 16:928F: 2D        .byte $2D   ; <を>
- D - I - - 0x02D2A0 16:9290: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D2A1 16:9291: 1E        .byte $1E   ; <ほ>

- D - I - - 0x02D2A2 16:9292: 08        .byte $08   ; <く>
- D - I - - 0x02D2A3 16:9293: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D2A4 16:9294: 07        .byte $07   ; <き>
- D - I - - 0x02D2A5 16:9295: 19        .byte $19   ; <の>
- D - I - - 0x02D2A6 16:9296: 10        .byte $10   ; <た>
- D - I - - 0x02D2A7 16:9297: 31        .byte $31   ; <ゅ>

- D - I - - 0x02D2A8 16:9298: 02        .byte $02   ; <い>
- D - I - - 0x02D2A9 16:9299: 42 92     .word off_9242



off_929B_25:
- D - I - - 0x02D2AB 16:929B: 03        .byte $03   ; <う>
- D - I - - 0x02D2AC 16:929C: B4 92     .word off_92B4
- D - I - - 0x02D2AE 16:929E: C7 92     .word off_92C7
- D - I - - 0x02D2B0 16:92A0: DC 92     .word off_92DC
- D - I - - 0x02D2B2 16:92A2: B4 92     .word off_92B4
- D - I - - 0x02D2B4 16:92A4: EF 92     .word off_92EF
- D - I - - 0x02D2B6 16:92A6: 02 93     .word off_9302
- D - I - - 0x02D2B8 16:92A8: 15 93     .word off_9315
- D - I - - 0x02D2BA 16:92AA: 28 93     .word off_9328
- D - I - - 0x02D2BC 16:92AC: 02 93     .word off_9302
- D - I - - 0x02D2BE 16:92AE: 41 93     .word off_9341
- D - I - - 0x02D2C0 16:92B0: 02 93     .word off_9302
- D - I - - 0x02D2C2 16:92B2: DC 92     .word off_92DC



off_92B4:
- D - I - - 0x02D2C4 16:92B4: 08        .byte $08   ; <く>
- D - I - - 0x02D2C5 16:92B5: 00        .byte $00
- D - I - - 0x02D2C6 16:92B6: 40        .byte $40   ; <「>
- D - I - - 0x02D2C7 16:92B7: 05        .byte $05   ; <お>
- D - I - - 0x02D2C8 16:92B8: 44        .byte $44   ; <エ>
- D - I - - 0x02D2C9 16:92B9: 10        .byte $10   ; <た>

- D - I - - 0x02D2CA 16:92BA: 18        .byte $18   ; <ね>
- D - I - - 0x02D2CB 16:92BB: 01        .byte $01   ; <あ>
- D - I - - 0x02D2CC 16:92BC: 40        .byte $40   ; <「>
- D - I - - 0x02D2CD 16:92BD: 07        .byte $07   ; <き>
- D - I - - 0x02D2CE 16:92BE: 45        .byte $45   ; <オ>
- D - I - - 0x02D2CF 16:92BF: 12        .byte $12   ; <つ>
- D - I - - 0x02D2D0 16:92C0: 44        .byte $44   ; <エ>
- D - I - - 0x02D2D1 16:92C1: 11        .byte $11   ; <ち>
- D - I - - 0x02D2D2 16:92C2: 85        .byte $85   ; <E>
- D - I - - 0x02D2D3 16:92C3: 13        .byte $13   ; <て>

- D - I - - 0x02D2D4 16:92C4: 02        .byte $02   ; <い>
- D - I - - 0x02D2D5 16:92C5: 53 93     .word off_9353



off_92C7:
- D - I - - 0x02D2D7 16:92C7: 08        .byte $08   ; <く>
- D - I - - 0x02D2D8 16:92C8: 00        .byte $00
- D - I - - 0x02D2D9 16:92C9: 40        .byte $40   ; <「>
- D - I - - 0x02D2DA 16:92CA: 05        .byte $05   ; <お>
- D - I - - 0x02D2DB 16:92CB: 44        .byte $44   ; <エ>
- D - I - - 0x02D2DC 16:92CC: 14        .byte $14   ; <と>

- D - I - - 0x02D2DD 16:92CD: 20        .byte $20   ; <み>
- D - I - - 0x02D2DE 16:92CE: 01        .byte $01   ; <あ>
- D - I - - 0x02D2DF 16:92CF: 40        .byte $40   ; <「>
- D - I - - 0x02D2E0 16:92D0: 16        .byte $16   ; <に>
- D - I - - 0x02D2E1 16:92D1: 45        .byte $45   ; <オ>
- D - I - - 0x02D2E2 16:92D2: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D2E3 16:92D3: 44        .byte $44   ; <エ>
- D - I - - 0x02D2E4 16:92D4: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D2E5 16:92D5: 85        .byte $85   ; <E>
- D - I - - 0x02D2E6 16:92D6: 19        .byte $19   ; <の>
- D - I - - 0x02D2E7 16:92D7: 84        .byte $84   ; <D>
- D - I - - 0x02D2E8 16:92D8: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D2E9 16:92D9: 02        .byte $02   ; <い>
- D - I - - 0x02D2EA 16:92DA: 53 93     .word off_9353



off_92DC:
- D - I - - 0x02D2EC 16:92DC: 08        .byte $08   ; <く>
- D - I - - 0x02D2ED 16:92DD: 00        .byte $00
- D - I - - 0x02D2EE 16:92DE: 40        .byte $40   ; <「>
- D - I - - 0x02D2EF 16:92DF: 05        .byte $05   ; <お>
- D - I - - 0x02D2F0 16:92E0: 44        .byte $44   ; <エ>
- D - I - - 0x02D2F1 16:92E1: 1D        .byte $1D   ; <へ>

- D - I - - 0x02D2F2 16:92E2: 18        .byte $18   ; <ね>
- D - I - - 0x02D2F3 16:92E3: 01        .byte $01   ; <あ>
- D - I - - 0x02D2F4 16:92E4: 40        .byte $40   ; <「>
- D - I - - 0x02D2F5 16:92E5: 07        .byte $07   ; <き>
- D - I - - 0x02D2F6 16:92E6: 45        .byte $45   ; <オ>
- D - I - - 0x02D2F7 16:92E7: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D2F8 16:92E8: 44        .byte $44   ; <エ>
- D - I - - 0x02D2F9 16:92E9: 31        .byte $31   ; <ゅ>
- D - I - - 0x02D2FA 16:92EA: 85        .byte $85   ; <E>
- D - I - - 0x02D2FB 16:92EB: 13        .byte $13   ; <て>

- D - I - - 0x02D2FC 16:92EC: 02        .byte $02   ; <い>
- D - I - - 0x02D2FD 16:92ED: 53 93     .word off_9353



off_92EF:
- D - I - - 0x02D2FF 16:92EF: 08        .byte $08   ; <く>
- D - I - - 0x02D300 16:92F0: 00        .byte $00
- D - I - - 0x02D301 16:92F1: 40        .byte $40   ; <「>
- D - I - - 0x02D302 16:92F2: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D303 16:92F3: 44        .byte $44   ; <エ>
- D - I - - 0x02D304 16:92F4: 1A        .byte $1A   ; <は>

- D - I - - 0x02D305 16:92F5: 18        .byte $18   ; <ね>
- D - I - - 0x02D306 16:92F6: 01        .byte $01   ; <あ>
- D - I - - 0x02D307 16:92F7: 40        .byte $40   ; <「>
- D - I - - 0x02D308 16:92F8: 25        .byte $25   ; <ゆ>
- D - I - - 0x02D309 16:92F9: 45        .byte $45   ; <オ>
- D - I - - 0x02D30A 16:92FA: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D30B 16:92FB: 44        .byte $44   ; <エ>
- D - I - - 0x02D30C 16:92FC: 2E        .byte $2E   ; <ん>
- D - I - - 0x02D30D 16:92FD: 85        .byte $85   ; <E>
- D - I - - 0x02D30E 16:92FE: 13        .byte $13   ; <て>

- D - I - - 0x02D30F 16:92FF: 02        .byte $02   ; <い>
- D - I - - 0x02D310 16:9300: 53 93     .word off_9353



off_9302:
- D - I - - 0x02D312 16:9302: 08        .byte $08   ; <く>
- D - I - - 0x02D313 16:9303: 00        .byte $00
- D - I - - 0x02D314 16:9304: 40        .byte $40   ; <「>
- D - I - - 0x02D315 16:9305: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02D316 16:9306: 44        .byte $44   ; <エ>
- D - I - - 0x02D317 16:9307: 1F        .byte $1F   ; <ま>

- D - I - - 0x02D318 16:9308: 18        .byte $18   ; <ね>
- D - I - - 0x02D319 16:9309: 01        .byte $01   ; <あ>
- D - I - - 0x02D31A 16:930A: 40        .byte $40   ; <「>
- D - I - - 0x02D31B 16:930B: 34        .byte $34   ; <1>
- D - I - - 0x02D31C 16:930C: 45        .byte $45   ; <オ>
- D - I - - 0x02D31D 16:930D: 35        .byte $35   ; <2>
- D - I - - 0x02D31E 16:930E: 44        .byte $44   ; <エ>
- D - I - - 0x02D31F 16:930F: 15        .byte $15   ; <な>
- D - I - - 0x02D320 16:9310: 85        .byte $85   ; <E>
- D - I - - 0x02D321 16:9311: 13        .byte $13   ; <て>

- D - I - - 0x02D322 16:9312: 02        .byte $02   ; <い>
- D - I - - 0x02D323 16:9313: 53 93     .word off_9353



off_9315:
- D - I - - 0x02D325 16:9315: 08        .byte $08   ; <く>
- D - I - - 0x02D326 16:9316: 00        .byte $00
- D - I - - 0x02D327 16:9317: 40        .byte $40   ; <「>
- D - I - - 0x02D328 16:9318: 27        .byte $27   ; <ら>
- D - I - - 0x02D329 16:9319: 44        .byte $44   ; <エ>
- D - I - - 0x02D32A 16:931A: 1A        .byte $1A   ; <は>

- D - I - - 0x02D32B 16:931B: 18        .byte $18   ; <ね>
- D - I - - 0x02D32C 16:931C: 01        .byte $01   ; <あ>
- D - I - - 0x02D32D 16:931D: 40        .byte $40   ; <「>
- D - I - - 0x02D32E 16:931E: 32        .byte $32   ; <ょ>
- D - I - - 0x02D32F 16:931F: 45        .byte $45   ; <オ>
- D - I - - 0x02D330 16:9320: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D331 16:9321: 44        .byte $44   ; <エ>
- D - I - - 0x02D332 16:9322: 2E        .byte $2E   ; <ん>
- D - I - - 0x02D333 16:9323: 85        .byte $85   ; <E>
- D - I - - 0x02D334 16:9324: 13        .byte $13   ; <て>

- D - I - - 0x02D335 16:9325: 02        .byte $02   ; <い>
- D - I - - 0x02D336 16:9326: 53 93     .word off_9353



off_9328:
- D - I - - 0x02D338 16:9328: 08        .byte $08   ; <く>
- D - I - - 0x02D339 16:9329: 00        .byte $00
- D - I - - 0x02D33A 16:932A: 40        .byte $40   ; <「>
- D - I - - 0x02D33B 16:932B: 05        .byte $05   ; <お>
- D - I - - 0x02D33C 16:932C: 44        .byte $44   ; <エ>
- D - I - - 0x02D33D 16:932D: 10        .byte $10   ; <た>

- D - I - - 0x02D33E 16:932E: 18        .byte $18   ; <ね>
- D - I - - 0x02D33F 16:932F: 01        .byte $01   ; <あ>
- D - I - - 0x02D340 16:9330: 40        .byte $40   ; <「>
- D - I - - 0x02D341 16:9331: 07        .byte $07   ; <き>
- D - I - - 0x02D342 16:9332: 45        .byte $45   ; <オ>
- D - I - - 0x02D343 16:9333: 2D        .byte $2D   ; <を>
- D - I - - 0x02D344 16:9334: 44        .byte $44   ; <エ>
- D - I - - 0x02D345 16:9335: 11        .byte $11   ; <ち>
- D - I - - 0x02D346 16:9336: 85        .byte $85   ; <E>
- D - I - - 0x02D347 16:9337: 38        .byte $38   ; <5>

- D - I - - 0x02D348 16:9338: 08        .byte $08   ; <く>
- D - I - - 0x02D349 16:9339: 02        .byte $02   ; <い>
- D - I - - 0x02D34A 16:933A: 45        .byte $45   ; <オ>
- D - I - - 0x02D34B 16:933B: 2F        .byte $2F   ; <っ>
- D - I - - 0x02D34C 16:933C: 85        .byte $85   ; <E>
- D - I - - 0x02D34D 16:933D: 3A        .byte $3A   ; <7>

- D - I - - 0x02D34E 16:933E: 02        .byte $02   ; <い>
- D - I - - 0x02D34F 16:933F: 59 93     .word off_9359



off_9341:
- D - I - - 0x02D351 16:9341: 08        .byte $08   ; <く>
- D - I - - 0x02D352 16:9342: 00        .byte $00
- D - I - - 0x02D353 16:9343: 40        .byte $40   ; <「>
- D - I - - 0x02D354 16:9344: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D355 16:9345: 44        .byte $44   ; <エ>
- D - I - - 0x02D356 16:9346: 33        .byte $33   ; <0>

- D - I - - 0x02D357 16:9347: 20        .byte $20   ; <み>
- D - I - - 0x02D358 16:9348: 01        .byte $01   ; <あ>
- D - I - - 0x02D359 16:9349: 54        .byte $54   ; <ト>
- D - I - - 0x02D35A 16:934A: 3B        .byte $3B   ; <8>
- D - I - - 0x02D35B 16:934B: 40        .byte $40   ; <「>
- D - I - - 0x02D35C 16:934C: 25        .byte $25   ; <ゆ>
- D - I - - 0x02D35D 16:934D: 45        .byte $45   ; <オ>
- D - I - - 0x02D35E 16:934E: 39        .byte $39   ; <6>
- D - I - - 0x02D35F 16:934F: 44        .byte $44   ; <エ>
- D - I - - 0x02D360 16:9350: 36        .byte $36   ; <3>
- D - I - - 0x02D361 16:9351: 85        .byte $85   ; <E>
- D - I - - 0x02D362 16:9352: 13        .byte $13   ; <て>
; продолжение


off_9353:
- D - I - - 0x02D363 16:9353: 08        .byte $08   ; <く>
- D - I - - 0x02D364 16:9354: 02        .byte $02   ; <い>
- D - I - - 0x02D365 16:9355: 45        .byte $45   ; <オ>
- D - I - - 0x02D366 16:9356: 0D        .byte $0D   ; <す>
- D - I - - 0x02D367 16:9357: 85        .byte $85   ; <E>
- D - I - - 0x02D368 16:9358: 18        .byte $18   ; <ね>
; продолжение


off_9359:
- D - I - - 0x02D369 16:9359: 00        .byte $00
- D - I - - 0x02D36A 16:935A: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02D36B 16:935B: 90        .byte $90   ; <U>
- D - I - - 0x02D36C 16:935C: 04        .byte $04   ; <え>

- D - I - - 0x02D36D 16:935D: 00        .byte $00
- D - I - - 0x02D36E 16:935E: 18        .byte $18   ; <ね>
- D - I - - 0x02D36F 16:935F: 90        .byte $90   ; <U>
- D - I - - 0x02D370 16:9360: 06        .byte $06   ; <か>

- D - I - - 0x02D371 16:9361: 00        .byte $00
- D - I - - 0x02D372 16:9362: 02        .byte $02   ; <い>
- D - I - - 0x02D373 16:9363: 41        .byte $41   ; <ア>
- D - I - - 0x02D374 16:9364: 02        .byte $02   ; <い>

- D - I - - 0x02D375 16:9365: 10        .byte $10   ; <た>
- D - I - - 0x02D376 16:9366: 03        .byte $03   ; <う>
- D - I - - 0x02D377 16:9367: 41        .byte $41   ; <ア>
- D - I - - 0x02D378 16:9368: 08        .byte $08   ; <く>
- D - I - - 0x02D379 16:9369: 45        .byte $45   ; <オ>
- D - I - - 0x02D37A 16:936A: 03        .byte $03   ; <う>
- D - I - - 0x02D37B 16:936B: 84        .byte $84   ; <D>
- D - I - - 0x02D37C 16:936C: 0C        .byte $0C   ; <し>

- D - I - - 0x02D37D 16:936D: 28        .byte $28   ; <り>
- D - I - - 0x02D37E 16:936E: 04        .byte $04   ; <え>
- D - I - - 0x02D37F 16:936F: 54        .byte $54   ; <ト>
- D - I - - 0x02D380 16:9370: 37        .byte $37   ; <4>
- D - I - - 0x02D381 16:9371: 42        .byte $42   ; <イ>
- D - I - - 0x02D382 16:9372: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D383 16:9373: 43        .byte $43   ; <ウ>
- D - I - - 0x02D384 16:9374: 24        .byte $24   ; <や>
- D - I - - 0x02D385 16:9375: 47        .byte $47   ; <キ>
- D - I - - 0x02D386 16:9376: 09        .byte $09   ; <け>
- D - I - - 0x02D387 16:9377: 45        .byte $45   ; <オ>
- D - I - - 0x02D388 16:9378: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D389 16:9379: 86        .byte $86   ; <F>
- D - I - - 0x02D38A 16:937A: 26        .byte $26   ; <よ>

- D - I - - 0x02D38B 16:937B: 08        .byte $08   ; <く>
- D - I - - 0x02D38C 16:937C: 05        .byte $05   ; <お>
- D - I - - 0x02D38D 16:937D: 42        .byte $42   ; <イ>
- D - I - - 0x02D38E 16:937E: 20        .byte $20   ; <み>
- D - I - - 0x02D38F 16:937F: 47        .byte $47   ; <キ>
- D - I - - 0x02D390 16:9380: 0B        .byte $0B   ; <さ>

- D - I - - 0x02D391 16:9381: 08        .byte $08   ; <く>
- D - I - - 0x02D392 16:9382: 06        .byte $06   ; <か>
- D - I - - 0x02D393 16:9383: 41        .byte $41   ; <ア>
- D - I - - 0x02D394 16:9384: 3C        .byte $3C   ; <9>
- D - I - - 0x02D395 16:9385: 45        .byte $45   ; <オ>
- D - I - - 0x02D396 16:9386: 21        .byte $21   ; <む>

- D - I - - 0x02D397 16:9387: 08        .byte $08   ; <く>
- D - I - - 0x02D398 16:9388: 07        .byte $07   ; <き>
- D - I - - 0x02D399 16:9389: 41        .byte $41   ; <ア>
- D - I - - 0x02D39A 16:938A: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02D39B 16:938B: 45        .byte $45   ; <オ>
- D - I - - 0x02D39C 16:938C: 23        .byte $23   ; <も>

- D - I - - 0x02D39D 16:938D: 08        .byte $08   ; <く>
- D - I - - 0x02D39E 16:938E: 08        .byte $08   ; <く>
- D - I - - 0x02D39F 16:938F: 45        .byte $45   ; <オ>
- D - I - - 0x02D3A0 16:9390: 3D        .byte $3D   ; <+>
- D - I - - 0x02D3A1 16:9391: 47        .byte $47   ; <キ>
- D - I - - 0x02D3A2 16:9392: 2C        .byte $2C   ; <わ>

- D - I - - 0x02D3A3 16:9393: 00        .byte $00
- D - I - - 0x02D3A4 16:9394: 09        .byte $09   ; <け>
- D - I - - 0x02D3A5 16:9395: 47        .byte $47   ; <キ>
- D - I - - 0x02D3A6 16:9396: 3F        .byte $3F   ; <•>

- D - I - - 0x02D3A7 16:9397: 01        .byte $01   ; <あ>



off_9398_26:
- D - I - - 0x02D3A8 16:9398: 18        .byte $18   ; <ね>
- D - I - - 0x02D3A9 16:9399: 04        .byte $04   ; <え>
- D - I - - 0x02D3AA 16:939A: E9        .byte $E9
- D - I - - 0x02D3AB 16:939B: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02D3AC 16:939C: ED        .byte $ED
- D - I - - 0x02D3AD 16:939D: 2E        .byte $2E   ; <ん>
- D - I - - 0x02D3AE 16:939E: F1        .byte $F1
- D - I - - 0x02D3AF 16:939F: 31        .byte $31   ; <ゅ>
- D - I - - 0x02D3B0 16:93A0: 9D        .byte $9D
- D - I - - 0x02D3B1 16:93A1: 34        .byte $34   ; <1>

- D - I - - 0x02D3B2 16:93A2: 20        .byte $20   ; <み>
- D - I - - 0x02D3B3 16:93A3: 05        .byte $05   ; <お>
- D - I - - 0x02D3B4 16:93A4: E9        .byte $E9
- D - I - - 0x02D3B5 16:93A5: 2F        .byte $2F   ; <っ>
- D - I - - 0x02D3B6 16:93A6: ED        .byte $ED
- D - I - - 0x02D3B7 16:93A7: 3A        .byte $3A   ; <7>
- D - I - - 0x02D3B8 16:93A8: F1        .byte $F1
- D - I - - 0x02D3B9 16:93A9: 33        .byte $33   ; <0>
- D - I - - 0x02D3BA 16:93AA: F2        .byte $F2
- D - I - - 0x02D3BB 16:93AB: 3F        .byte $3F   ; <•>
- D - I - - 0x02D3BC 16:93AC: 9E        .byte $9E
- D - I - - 0x02D3BD 16:93AD: 36        .byte $36   ; <3>

- D - I - - 0x02D3BE 16:93AE: 18        .byte $18   ; <ね>
- D - I - - 0x02D3BF 16:93AF: 06        .byte $06   ; <か>
- D - I - - 0x02D3C0 16:93B0: E9        .byte $E9
- D - I - - 0x02D3C1 16:93B1: 3B        .byte $3B   ; <8>
- D - I - - 0x02D3C2 16:93B2: ED        .byte $ED
- D - I - - 0x02D3C3 16:93B3: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02D3C4 16:93B4: F2        .byte $F2
- D - I - - 0x02D3C5 16:93B5: 39        .byte $39   ; <6>
- D - I - - 0x02D3C6 16:93B6: 9E        .byte $9E
- D - I - - 0x02D3C7 16:93B7: 3C        .byte $3C   ; <9>

- D - I - - 0x02D3C8 16:93B8: 00        .byte $00
- D - I - - 0x02D3C9 16:93B9: 00        .byte $00
- D - I - - 0x02D3CA 16:93BA: 9D        .byte $9D
- D - I - - 0x02D3CB 16:93BB: 04        .byte $04   ; <え>

- D - I - - 0x02D3CC 16:93BC: 10        .byte $10   ; <た>
- D - I - - 0x02D3CD 16:93BD: 01        .byte $01   ; <あ>
- D - I - - 0x02D3CE 16:93BE: ED        .byte $ED
- D - I - - 0x02D3CF 16:93BF: 02        .byte $02   ; <い>
- D - I - - 0x02D3D0 16:93C0: F1        .byte $F1
- D - I - - 0x02D3D1 16:93C1: 03        .byte $03   ; <う>
- D - I - - 0x02D3D2 16:93C2: 9D        .byte $9D
- D - I - - 0x02D3D3 16:93C3: 06        .byte $06   ; <か>

- D - I - - 0x02D3D4 16:93C4: 10        .byte $10   ; <た>
- D - I - - 0x02D3D5 16:93C5: 02        .byte $02   ; <い>
- D - I - - 0x02D3D6 16:93C6: ED        .byte $ED
- D - I - - 0x02D3D7 16:93C7: 08        .byte $08   ; <く>
- D - I - - 0x02D3D8 16:93C8: F1        .byte $F1
- D - I - - 0x02D3D9 16:93C9: 09        .byte $09   ; <け>
- D - I - - 0x02D3DA 16:93CA: 9D        .byte $9D
- D - I - - 0x02D3DB 16:93CB: 0C        .byte $0C   ; <し>

- D - I - - 0x02D3DC 16:93CC: 00        .byte $00
- D - I - - 0x02D3DD 16:93CD: 26        .byte $26   ; <よ>
- D - I - - 0x02D3DE 16:93CE: E9        .byte $E9
- D - I - - 0x02D3DF 16:93CF: 14        .byte $14   ; <と>

- D - I - - 0x02D3E0 16:93D0: 10        .byte $10   ; <た>
- D - I - - 0x02D3E1 16:93D1: 03        .byte $03   ; <う>
- D - I - - 0x02D3E2 16:93D2: ED        .byte $ED
- D - I - - 0x02D3E3 16:93D3: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D3E4 16:93D4: F1        .byte $F1
- D - I - - 0x02D3E5 16:93D5: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D3E6 16:93D6: 9D        .byte $9D
- D - I - - 0x02D3E7 16:93D7: 0E        .byte $0E   ; <せ>

- D - I - - 0x02D3E8 16:93D8: 01        .byte $01   ; <あ>



off_93D9_27:
off_93D9:
- D - I - - 0x02D3E9 16:93D9: 10        .byte $10   ; <た>
- D - I - - 0x02D3EA 16:93DA: 00        .byte $00
- D - I - - 0x02D3EB 16:93DB: 10        .byte $10   ; <た>
- D - I - - 0x02D3EC 16:93DC: 15        .byte $15   ; <な>
- D - I - - 0x02D3ED 16:93DD: 14        .byte $14   ; <と>
- D - I - - 0x02D3EE 16:93DE: 40        .byte $40   ; <「>
- D - I - - 0x02D3EF 16:93DF: 18        .byte $18   ; <ね>
- D - I - - 0x02D3F0 16:93E0: 41        .byte $41   ; <ア>

- D - I - - 0x02D3F1 16:93E1: 10        .byte $10   ; <た>
- D - I - - 0x02D3F2 16:93E2: 01        .byte $01   ; <あ>
- D - I - - 0x02D3F3 16:93E3: 11        .byte $11   ; <ち>
- D - I - - 0x02D3F4 16:93E4: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D3F5 16:93E5: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D3F6 16:93E6: 42        .byte $42   ; <イ>
- D - I - - 0x02D3F7 16:93E7: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D3F8 16:93E8: 43        .byte $43   ; <ウ>

- D - I - - 0x02D3F9 16:93E9: 10        .byte $10   ; <た>
- D - I - - 0x02D3FA 16:93EA: 02        .byte $02   ; <い>
- D - I - - 0x02D3FB 16:93EB: 11        .byte $11   ; <ち>
- D - I - - 0x02D3FC 16:93EC: 1D        .byte $1D   ; <へ>
- D - I - - 0x02D3FD 16:93ED: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D3FE 16:93EE: 48        .byte $48   ; <ク>
- D - I - - 0x02D3FF 16:93EF: 19        .byte $19   ; <の>
- D - I - - 0x02D400 16:93F0: 49        .byte $49   ; <ケ>
; продолжение


off_93F1:
- D - I - - 0x02D401 16:93F1: 00        .byte $00
- D - I - - 0x02D402 16:93F2: 0D        .byte $0D   ; <す>
- D - I - - 0x02D403 16:93F3: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D404 16:93F4: 4E        .byte $4E   ; <セ>

- D - I - - 0x02D405 16:93F5: 00        .byte $00
- D - I - - 0x02D406 16:93F6: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02D407 16:93F7: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D408 16:93F8: 64        .byte $64   ; <ヤ>

- D - I - - 0x02D409 16:93F9: 00        .byte $00
- D - I - - 0x02D40A 16:93FA: 00        .byte $00
- D - I - - 0x02D40B 16:93FB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D40C 16:93FC: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02D40D 16:93FD: 08        .byte $08   ; <く>
- D - I - - 0x02D40E 16:93FE: 01        .byte $01   ; <あ>
- D - I - - 0x02D40F 16:93FF: 0D        .byte $0D   ; <す>
- D - I - - 0x02D410 16:9400: 65        .byte $65   ; <ユ>
- D - I - - 0x02D411 16:9401: 83        .byte $83   ; <C>
- D - I - - 0x02D412 16:9402: 68        .byte $68   ; <リ>

- D - I - - 0x02D413 16:9403: 10        .byte $10   ; <た>
- D - I - - 0x02D414 16:9404: 02        .byte $02   ; <い>
- D - I - - 0x02D415 16:9405: 0D        .byte $0D   ; <す>
- D - I - - 0x02D416 16:9406: 67        .byte $67   ; <ラ>
- D - I - - 0x02D417 16:9407: 83        .byte $83   ; <C>
- D - I - - 0x02D418 16:9408: 6A        .byte $6A   ; <レ>
- D - I - - 0x02D419 16:9409: C3        .byte $C3   ; <バ>
- D - I - - 0x02D41A 16:940A: 69        .byte $69   ; <ル>

- D - I - - 0x02D41B 16:940B: 28        .byte $28   ; <り>
- D - I - - 0x02D41C 16:940C: 03        .byte $03   ; <う>
- D - I - - 0x02D41D 16:940D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D41E 16:940E: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02D41F 16:940F: 0D        .byte $0D   ; <す>
- D - I - - 0x02D420 16:9410: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02D421 16:9411: 11        .byte $11   ; <ち>
- D - I - - 0x02D422 16:9412: 78        .byte $78   ; <?>
- D - I - - 0x02D423 16:9413: 15        .byte $15   ; <な>
- D - I - - 0x02D424 16:9414: 79        .byte $79   ; <!>
- D - I - - 0x02D425 16:9415: 19        .byte $19   ; <の>
- D - I - - 0x02D426 16:9416: 7C        .byte $7C   ; <~>
- D - I - - 0x02D427 16:9417: C3        .byte $C3   ; <バ>
- D - I - - 0x02D428 16:9418: 6B        .byte $6B   ; <ロ>

- D - I - - 0x02D429 16:9419: 10        .byte $10   ; <た>
- D - I - - 0x02D42A 16:941A: 04        .byte $04   ; <え>
- D - I - - 0x02D42B 16:941B: 59        .byte $59   ; <ノ>
- D - I - - 0x02D42C 16:941C: 7A        .byte $7A   ; <、>
- D - I - - 0x02D42D 16:941D: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02D42E 16:941E: 7B        .byte $7B   ; <。>
- D - I - - 0x02D42F 16:941F: 62        .byte $62   ; <メ>
- D - I - - 0x02D430 16:9420: 7E        .byte $7E   ; <.>

- D - I - - 0x02D431 16:9421: 10        .byte $10   ; <た>
- D - I - - 0x02D432 16:9422: 05        .byte $05   ; <お>
- D - I - - 0x02D433 16:9423: 09        .byte $09   ; <け>
- D - I - - 0x02D434 16:9424: 73        .byte $73   ; <ヮ>
- D - I - - 0x02D435 16:9425: 0D        .byte $0D   ; <す>
- D - I - - 0x02D436 16:9426: 70        .byte $70   ; <ャ>
- D - I - - 0x02D437 16:9427: 11        .byte $11   ; <ち>
- D - I - - 0x02D438 16:9428: 71        .byte $71   ; <ュ>

- D - I - - 0x02D439 16:9429: 00        .byte $00
- D - I - - 0x02D43A 16:942A: 06        .byte $06   ; <か>
- D - I - - 0x02D43B 16:942B: 0D        .byte $0D   ; <す>
- D - I - - 0x02D43C 16:942C: 72        .byte $72   ; <ョ>

- D - I - - 0x02D43D 16:942D: 00        .byte $00
- D - I - - 0x02D43E 16:942E: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D43F 16:942F: 05        .byte $05   ; <お>
- D - I - - 0x02D440 16:9430: 7D        .byte $7D   ; <ー>

- D - I - - 0x02D441 16:9431: 01        .byte $01   ; <あ>



off_9432_28:
- D - I - - 0x02D442 16:9432: 00        .byte $00
- D - I - - 0x02D443 16:9433: 00        .byte $00
- D - I - - 0x02D444 16:9434: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02D445 16:9435: 04        .byte $04   ; <え>

- D - I - - 0x02D446 16:9436: 28        .byte $28   ; <り>
- D - I - - 0x02D447 16:9437: 01        .byte $01   ; <あ>
- D - I - - 0x02D448 16:9438: F1        .byte $F1
- D - I - - 0x02D449 16:9439: 02        .byte $02   ; <い>
- D - I - - 0x02D44A 16:943A: 9D        .byte $9D
- D - I - - 0x02D44B 16:943B: 03        .byte $03   ; <う>
- D - I - - 0x02D44C 16:943C: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02D44D 16:943D: 06        .byte $06   ; <か>
- D - I - - 0x02D44E 16:943E: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D44F 16:943F: 07        .byte $07   ; <き>
- D - I - - 0x02D450 16:9440: 69        .byte $69   ; <ル>
- D - I - - 0x02D451 16:9441: 12        .byte $12   ; <つ>
- D - I - - 0x02D452 16:9442: 01        .byte $01   ; <あ>
- D - I - - 0x02D453 16:9443: 13        .byte $13   ; <て>

- D - I - - 0x02D454 16:9444: 28        .byte $28   ; <り>
- D - I - - 0x02D455 16:9445: 02        .byte $02   ; <い>
- D - I - - 0x02D456 16:9446: F1        .byte $F1
- D - I - - 0x02D457 16:9447: 08        .byte $08   ; <く>
- D - I - - 0x02D458 16:9448: 9D        .byte $9D
- D - I - - 0x02D459 16:9449: 09        .byte $09   ; <け>
- D - I - - 0x02D45A 16:944A: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02D45B 16:944B: 0C        .byte $0C   ; <し>
- D - I - - 0x02D45C 16:944C: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D45D 16:944D: 0D        .byte $0D   ; <す>
- D - I - - 0x02D45E 16:944E: 69        .byte $69   ; <ル>
- D - I - - 0x02D45F 16:944F: 18        .byte $18   ; <ね>
- D - I - - 0x02D460 16:9450: 01        .byte $01   ; <あ>
- D - I - - 0x02D461 16:9451: 19        .byte $19   ; <の>

- D - I - - 0x02D462 16:9452: 00        .byte $00
- D - I - - 0x02D463 16:9453: 26        .byte $26   ; <よ>
- D - I - - 0x02D464 16:9454: ED        .byte $ED
- D - I - - 0x02D465 16:9455: 14        .byte $14   ; <と>

- D - I - - 0x02D466 16:9456: 00        .byte $00
- D - I - - 0x02D467 16:9457: 18        .byte $18   ; <ね>
- D - I - - 0x02D468 16:9458: 05        .byte $05   ; <お>
- D - I - - 0x02D469 16:9459: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D46A 16:945A: 28        .byte $28   ; <り>
- D - I - - 0x02D46B 16:945B: 03        .byte $03   ; <う>
- D - I - - 0x02D46C 16:945C: F1        .byte $F1
- D - I - - 0x02D46D 16:945D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D46E 16:945E: 9D        .byte $9D
- D - I - - 0x02D46F 16:945F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D470 16:9460: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02D471 16:9461: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D472 16:9462: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D473 16:9463: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D474 16:9464: 69        .byte $69   ; <ル>
- D - I - - 0x02D475 16:9465: 1A        .byte $1A   ; <は>
- D - I - - 0x02D476 16:9466: 01        .byte $01   ; <あ>
- D - I - - 0x02D477 16:9467: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02D478 16:9468: 28        .byte $28   ; <り>
- D - I - - 0x02D479 16:9469: 04        .byte $04   ; <え>
- D - I - - 0x02D47A 16:946A: ED        .byte $ED
- D - I - - 0x02D47B 16:946B: 05        .byte $05   ; <お>
- D - I - - 0x02D47C 16:946C: F1        .byte $F1
- D - I - - 0x02D47D 16:946D: 20        .byte $20   ; <み>
- D - I - - 0x02D47E 16:946E: 9D        .byte $9D
- D - I - - 0x02D47F 16:946F: 21        .byte $21   ; <む>
- D - I - - 0x02D480 16:9470: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02D481 16:9471: 24        .byte $24   ; <や>
- D - I - - 0x02D482 16:9472: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D483 16:9473: 25        .byte $25   ; <ゆ>
- D - I - - 0x02D484 16:9474: 69        .byte $69   ; <ル>
- D - I - - 0x02D485 16:9475: 30        .byte $30   ; <ゃ>

- D - I - - 0x02D486 16:9476: 28        .byte $28   ; <り>
- D - I - - 0x02D487 16:9477: 05        .byte $05   ; <お>
- D - I - - 0x02D488 16:9478: E9        .byte $E9
- D - I - - 0x02D489 16:9479: 10        .byte $10   ; <た>
- D - I - - 0x02D48A 16:947A: ED        .byte $ED
- D - I - - 0x02D48B 16:947B: 22        .byte $22   ; <め>
- D - I - - 0x02D48C 16:947C: F1        .byte $F1
- D - I - - 0x02D48D 16:947D: 23        .byte $23   ; <も>
- D - I - - 0x02D48E 16:947E: 9E        .byte $9E
- D - I - - 0x02D48F 16:947F: 26        .byte $26   ; <よ>
- D - I - - 0x02D490 16:9480: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02D491 16:9481: 27        .byte $27   ; <ら>
- D - I - - 0x02D492 16:9482: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D493 16:9483: 32        .byte $32   ; <ょ>

- D - I - - 0x02D494 16:9484: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D495 16:9485: 06        .byte $06   ; <か>
- D - I - - 0x02D496 16:9486: E9        .byte $E9
- D - I - - 0x02D497 16:9487: 11        .byte $11   ; <ち>
- D - I - - 0x02D498 16:9488: ED        .byte $ED
- D - I - - 0x02D499 16:9489: 28        .byte $28   ; <り>
- D - I - - 0x02D49A 16:948A: F1        .byte $F1
- D - I - - 0x02D49B 16:948B: 29        .byte $29   ; <る>
- D - I - - 0x02D49C 16:948C: F2        .byte $F2
- D - I - - 0x02D49D 16:948D: 2A        .byte $2A   ; <れ>
- D - I - - 0x02D49E 16:948E: 9E        .byte $9E
- D - I - - 0x02D49F 16:948F: 2C        .byte $2C   ; <わ>
- D - I - - 0x02D4A0 16:9490: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02D4A1 16:9491: 2D        .byte $2D   ; <を>
- D - I - - 0x02D4A2 16:9492: B5        .byte $B5   ; <ギ>
- D - I - - 0x02D4A3 16:9493: 38        .byte $38   ; <5>

- D - I - - 0x02D4A4 16:9494: 01        .byte $01   ; <あ>



off_9495_29:
- D - I - - 0x02D4A5 16:9495: 00        .byte $00
- D - I - - 0x02D4A6 16:9496: 02        .byte $02   ; <い>
- D - I - - 0x02D4A7 16:9497: C3        .byte $C3   ; <バ>
- D - I - - 0x02D4A8 16:9498: 6E        .byte $6E   ; <ン>

- D - I - - 0x02D4A9 16:9499: 10        .byte $10   ; <た>
- D - I - - 0x02D4AA 16:949A: 03        .byte $03   ; <う>
- D - I - - 0x02D4AB 16:949B: C3        .byte $C3   ; <バ>
- D - I - - 0x02D4AC 16:949C: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02D4AD 16:949D: C7        .byte $C7   ; <ボ>
- D - I - - 0x02D4AE 16:949E: 51        .byte $51   ; <チ>
- D - I - - 0x02D4AF 16:949F: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02D4B0 16:94A0: 54        .byte $54   ; <ト>

- D - I - - 0x02D4B1 16:94A1: 20        .byte $20   ; <み>
- D - I - - 0x02D4B2 16:94A2: 04        .byte $04   ; <え>
- D - I - - 0x02D4B3 16:94A3: C5        .byte $C5   ; <ブ>
- D - I - - 0x02D4B4 16:94A4: 53        .byte $53   ; <テ>
- D - I - - 0x02D4B5 16:94A5: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D4B6 16:94A6: 56        .byte $56   ; <ニ>
- D - I - - 0x02D4B7 16:94A7: CD        .byte $CD   ; <パ>
- D - I - - 0x02D4B8 16:94A8: 57        .byte $57   ; <ヌ>
- D - I - - 0x02D4B9 16:94A9: D1        .byte $D1   ; <ポ>
- D - I - - 0x02D4BA 16:94AA: 74        .byte $74   ; <ィ>
- D - I - - 0x02D4BB 16:94AB: D5        .byte $D5
- D - I - - 0x02D4BC 16:94AC: 75        .byte $75   ; <ェ>

- D - I - - 0x02D4BD 16:94AD: 18        .byte $18   ; <ね>
- D - I - - 0x02D4BE 16:94AE: 05        .byte $05   ; <お>
- D - I - - 0x02D4BF 16:94AF: A5        .byte $A5   ; <ざ>
- D - I - - 0x02D4C0 16:94B0: 59        .byte $59   ; <ノ>
- D - I - - 0x02D4C1 16:94B1: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02D4C2 16:94B2: 5C        .byte $5C   ; <フ>
- D - I - - 0x02D4C3 16:94B3: AF        .byte $AF   ; <ば>
- D - I - - 0x02D4C4 16:94B4: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02D4C5 16:94B5: B3        .byte $B3   ; <ぼ>
- D - I - - 0x02D4C6 16:94B6: 55        .byte $55   ; <ナ>

- D - I - - 0x02D4C7 16:94B7: 18        .byte $18   ; <ね>
- D - I - - 0x02D4C8 16:94B8: 06        .byte $06   ; <か>
- D - I - - 0x02D4C9 16:94B9: C6        .byte $C6   ; <ベ>
- D - I - - 0x02D4CA 16:94BA: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02D4CB 16:94BB: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D4CC 16:94BC: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02D4CD 16:94BD: CD        .byte $CD   ; <パ>
- D - I - - 0x02D4CE 16:94BE: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02D4CF 16:94BF: D1        .byte $D1   ; <ポ>
- D - I - - 0x02D4D0 16:94C0: 5F        .byte $5F   ; <マ>

- D - I - - 0x02D4D1 16:94C1: 28        .byte $28   ; <り>
- D - I - - 0x02D4D2 16:94C2: 07        .byte $07   ; <き>
- D - I - - 0x02D4D3 16:94C3: C1        .byte $C1   ; <デ>
- D - I - - 0x02D4D4 16:94C4: 16        .byte $16   ; <に>
- D - I - - 0x02D4D5 16:94C5: C6        .byte $C6   ; <ベ>
- D - I - - 0x02D4D6 16:94C6: 66        .byte $66   ; <ヨ>
- D - I - - 0x02D4D7 16:94C7: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D4D8 16:94C8: 84        .byte $84   ; <D>
- D - I - - 0x02D4D9 16:94C9: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02D4DA 16:94CA: 77        .byte $77   ; <:>
- D - I - - 0x02D4DB 16:94CB: CD        .byte $CD   ; <パ>
- D - I - - 0x02D4DC 16:94CC: 85        .byte $85   ; <E>
- D - I - - 0x02D4DD 16:94CD: D1        .byte $D1   ; <ポ>
- D - I - - 0x02D4DE 16:94CE: 7F        .byte $7F   ; <,>

- D - I - - 0x02D4DF 16:94CF: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D4E0 16:94D0: 08        .byte $08   ; <く>
- D - I - - 0x02D4E1 16:94D1: 81        .byte $81   ; <A>
- D - I - - 0x02D4E2 16:94D2: 82        .byte $82   ; <B>
- D - I - - 0x02D4E3 16:94D3: C1        .byte $C1   ; <デ>
- D - I - - 0x02D4E4 16:94D4: 88        .byte $88   ; <H>
- D - I - - 0x02D4E5 16:94D5: C5        .byte $C5   ; <ブ>
- D - I - - 0x02D4E6 16:94D6: 89        .byte $89   ; <I>
- D - I - - 0x02D4E7 16:94D7: C6        .byte $C6   ; <ベ>
- D - I - - 0x02D4E8 16:94D8: 76        .byte $76   ; <ォ>
- D - I - - 0x02D4E9 16:94D9: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02D4EA 16:94DA: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02D4EB 16:94DB: CE        .byte $CE   ; <ピ>
- D - I - - 0x02D4EC 16:94DC: 83        .byte $83   ; <C>
- D - I - - 0x02D4ED 16:94DD: D2        .byte $D2
- D - I - - 0x02D4EE 16:94DE: 86        .byte $86   ; <F>

- D - I - - 0x02D4EF 16:94DF: 08        .byte $08   ; <く>
- D - I - - 0x02D4F0 16:94E0: 09        .byte $09   ; <け>
- D - I - - 0x02D4F1 16:94E1: C1        .byte $C1   ; <デ>
- D - I - - 0x02D4F2 16:94E2: 8A        .byte $8A   ; <N>
- D - I - - 0x02D4F3 16:94E3: C5        .byte $C5   ; <ブ>
- D - I - - 0x02D4F4 16:94E4: 8B        .byte $8B   ; <K>

- D - I - - 0x02D4F5 16:94E5: 02        .byte $02   ; <い>
- D - I - - 0x02D4F6 16:94E6: D9 93     .word off_93D9



off_94E8_2A:
- D - I - - 0x02D4F8 16:94E8: 10        .byte $10   ; <た>
- D - I - - 0x02D4F9 16:94E9: 00        .byte $00
- D - I - - 0x02D4FA 16:94EA: 10        .byte $10   ; <た>
- D - I - - 0x02D4FB 16:94EB: 1F        .byte $1F   ; <ま>
- D - I - - 0x02D4FC 16:94EC: 14        .byte $14   ; <と>
- D - I - - 0x02D4FD 16:94ED: 4A        .byte $4A   ; <コ>
- D - I - - 0x02D4FE 16:94EE: 18        .byte $18   ; <ね>
- D - I - - 0x02D4FF 16:94EF: 4B        .byte $4B   ; <サ>

- D - I - - 0x02D500 16:94F0: 18        .byte $18   ; <ね>
- D - I - - 0x02D501 16:94F1: 01        .byte $01   ; <あ>
- D - I - - 0x02D502 16:94F2: 11        .byte $11   ; <ち>
- D - I - - 0x02D503 16:94F3: 3D        .byte $3D   ; <+>
- D - I - - 0x02D504 16:94F4: 10        .byte $10   ; <た>
- D - I - - 0x02D505 16:94F5: 35        .byte $35   ; <2>
- D - I - - 0x02D506 16:94F6: 14        .byte $14   ; <と>
- D - I - - 0x02D507 16:94F7: 60        .byte $60   ; <ミ>
- D - I - - 0x02D508 16:94F8: 18        .byte $18   ; <ね>
- D - I - - 0x02D509 16:94F9: 61        .byte $61   ; <ム>

- D - I - - 0x02D50A 16:94FA: 10        .byte $10   ; <た>
- D - I - - 0x02D50B 16:94FB: 02        .byte $02   ; <い>
- D - I - - 0x02D50C 16:94FC: 11        .byte $11   ; <ち>
- D - I - - 0x02D50D 16:94FD: 37        .byte $37   ; <4>
- D - I - - 0x02D50E 16:94FE: 15        .byte $15   ; <な>
- D - I - - 0x02D50F 16:94FF: 62        .byte $62   ; <メ>
- D - I - - 0x02D510 16:9500: 19        .byte $19   ; <の>
- D - I - - 0x02D511 16:9501: 63        .byte $63   ; <モ>

- D - I - - 0x02D512 16:9502: 02        .byte $02   ; <い>
- D - I - - 0x02D513 16:9503: F1 93     .word off_93F1



off_9505_2B:
- D - I - - 0x02D515 16:9505: 10        .byte $10   ; <た>
- D - I - - 0x02D516 16:9506: 00        .byte $00
- D - I - - 0x02D517 16:9507: 10        .byte $10   ; <た>
- D - I - - 0x02D518 16:9508: 44        .byte $44   ; <エ>
- D - I - - 0x02D519 16:9509: 14        .byte $14   ; <と>
- D - I - - 0x02D51A 16:950A: 45        .byte $45   ; <オ>
- D - I - - 0x02D51B 16:950B: 18        .byte $18   ; <ね>
- D - I - - 0x02D51C 16:950C: 50        .byte $50   ; <タ>

- D - I - - 0x02D51D 16:950D: 10        .byte $10   ; <た>
- D - I - - 0x02D51E 16:950E: 01        .byte $01   ; <あ>
- D - I - - 0x02D51F 16:950F: 11        .byte $11   ; <ち>
- D - I - - 0x02D520 16:9510: 46        .byte $46   ; <カ>
- D - I - - 0x02D521 16:9511: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D522 16:9512: 47        .byte $47   ; <キ>
- D - I - - 0x02D523 16:9513: 18        .byte $18   ; <ね>
- D - I - - 0x02D524 16:9514: 52        .byte $52   ; <ツ>

- D - I - - 0x02D525 16:9515: 10        .byte $10   ; <た>
- D - I - - 0x02D526 16:9516: 02        .byte $02   ; <い>
- D - I - - 0x02D527 16:9517: 11        .byte $11   ; <ち>
- D - I - - 0x02D528 16:9518: 4C        .byte $4C   ; <シ>
- D - I - - 0x02D529 16:9519: 15        .byte $15   ; <な>
- D - I - - 0x02D52A 16:951A: 4D        .byte $4D   ; <ス>
- D - I - - 0x02D52B 16:951B: 19        .byte $19   ; <の>
- D - I - - 0x02D52C 16:951C: 58        .byte $58   ; <ネ>

- D - I - - 0x02D52D 16:951D: 02        .byte $02   ; <い>
- D - I - - 0x02D52E 16:951E: F1 93     .word off_93F1



off_9520_2C:
- D - I - - 0x02D530 16:9520: 00        .byte $00
- D - I - - 0x02D531 16:9521: 09        .byte $09   ; <け>
- D - I - - 0x02D532 16:9522: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D533 16:9523: 69        .byte $69   ; <ル>

- D - I - - 0x02D534 16:9524: 08        .byte $08   ; <く>
- D - I - - 0x02D535 16:9525: 16        .byte $16   ; <に>
- D - I - - 0x02D536 16:9526: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D537 16:9527: 3F        .byte $3F   ; <•>
- D - I - - 0x02D538 16:9528: 13        .byte $13   ; <て>
- D - I - - 0x02D539 16:9529: 6A        .byte $6A   ; <レ>
; продолжение


off_952A:
- D - I - - 0x02D53A 16:952A: 03        .byte $03   ; <う>
- D - I - - 0x02D53B 16:952B: 43 95     .word off_9543
- - - - - - 0x02D53D 16:952D: C2 95     .word off_95C2
- D - I - - 0x02D53F 16:952F: E1 95     .word off_95E1
- D - I - - 0x02D541 16:9531: FA 95     .word off_95FA
- - - - - - 0x02D543 16:9533: 13 96     .word off_9613
- - - - - - 0x02D545 16:9535: 43 95     .word off_9543
- - - - - - 0x02D547 16:9537: 43 95     .word off_9543
- D - I - - 0x02D549 16:9539: 28 96     .word off_9628
- - - - - - 0x02D54B 16:953B: 43 95     .word off_9543
- - - - - - 0x02D54D 16:953D: 43 95     .word off_9543
- D - I - - 0x02D54F 16:953F: 43 95     .word off_9543
- - - - - - 0x02D551 16:9541: 43 95     .word off_9543



off_9543:
- D - I - - 0x02D553 16:9543: 08        .byte $08   ; <く>
- D - I - - 0x02D554 16:9544: 02        .byte $02   ; <い>
- D - I - - 0x02D555 16:9545: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D556 16:9546: 07        .byte $07   ; <き>
- D - I - - 0x02D557 16:9547: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D558 16:9548: 12        .byte $12   ; <つ>

- D - I - - 0x02D559 16:9549: 10        .byte $10   ; <た>
- D - I - - 0x02D55A 16:954A: 03        .byte $03   ; <う>
- D - I - - 0x02D55B 16:954B: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02D55C 16:954C: 0C        .byte $0C   ; <し>
- D - I - - 0x02D55D 16:954D: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D55E 16:954E: 0D        .byte $0D   ; <す>
- D - I - - 0x02D55F 16:954F: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D560 16:9550: 18        .byte $18   ; <ね>

- D - I - - 0x02D561 16:9551: 08        .byte $08   ; <く>
- D - I - - 0x02D562 16:9552: 04        .byte $04   ; <え>
- D - I - - 0x02D563 16:9553: CF        .byte $CF   ; <プ>
- D - I - - 0x02D564 16:9554: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D565 16:9555: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D566 16:9556: 1A        .byte $1A   ; <は>
; продолжение


off_9557:
- D - I - - 0x02D567 16:9557: 08        .byte $08   ; <く>
- D - I - - 0x02D568 16:9558: 02        .byte $02   ; <い>
- D - I - - 0x02D569 16:9559: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D56A 16:955A: 40        .byte $40   ; <「>
- D - I - - 0x02D56B 16:955B: CD        .byte $CD   ; <パ>
- D - I - - 0x02D56C 16:955C: 41        .byte $41   ; <ア>

- D - I - - 0x02D56D 16:955D: 00        .byte $00
- D - I - - 0x02D56E 16:955E: 03        .byte $03   ; <う>
- D - I - - 0x02D56F 16:955F: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D570 16:9560: 42        .byte $42   ; <イ>

- D - I - - 0x02D571 16:9561: 08        .byte $08   ; <く>
- D - I - - 0x02D572 16:9562: 04        .byte $04   ; <え>
- D - I - - 0x02D573 16:9563: D1        .byte $D1   ; <ポ>
- D - I - - 0x02D574 16:9564: 51        .byte $51   ; <チ>
- D - I - - 0x02D575 16:9565: D5        .byte $D5
- D - I - - 0x02D576 16:9566: 54        .byte $54   ; <ト>
; продолжение


off_9567:
- D - I - - 0x02D577 16:9567: 08        .byte $08   ; <く>
- D - I - - 0x02D578 16:9568: 00        .byte $00
- D - I - - 0x02D579 16:9569: C3        .byte $C3   ; <バ>
- D - I - - 0x02D57A 16:956A: 66        .byte $66   ; <ヨ>
- D - I - - 0x02D57B 16:956B: C6        .byte $C6   ; <ベ>
- D - I - - 0x02D57C 16:956C: 67        .byte $67   ; <ラ>

- D - I - - 0x02D57D 16:956D: 08        .byte $08   ; <く>
- D - I - - 0x02D57E 16:956E: 01        .byte $01   ; <あ>
- D - I - - 0x02D57F 16:956F: C7        .byte $C7   ; <ボ>
- D - I - - 0x02D580 16:9570: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02D581 16:9571: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02D582 16:9572: 78        .byte $78   ; <?>

- D - I - - 0x02D583 16:9573: 00        .byte $00
- D - I - - 0x02D584 16:9574: 02        .byte $02   ; <い>
- D - I - - 0x02D585 16:9575: C7        .byte $C7   ; <ボ>
- D - I - - 0x02D586 16:9576: 6F        .byte $6F   ; <ッ>

- D - I - - 0x02D587 16:9577: 18        .byte $18   ; <ね>
- D - I - - 0x02D588 16:9578: 04        .byte $04   ; <え>
- D - I - - 0x02D589 16:9579: C6        .byte $C6   ; <ベ>
- D - I - - 0x02D58A 16:957A: 44        .byte $44   ; <エ>
- D - I - - 0x02D58B 16:957B: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D58C 16:957C: 45        .byte $45   ; <オ>
- D - I - - 0x02D58D 16:957D: CD        .byte $CD   ; <パ>
- D - I - - 0x02D58E 16:957E: 50        .byte $50   ; <タ>
- D - I - - 0x02D58F 16:957F: DB        .byte $DB
- D - I - - 0x02D590 16:9580: 55        .byte $55   ; <ナ>

- D - I - - 0x02D591 16:9581: 38        .byte $38   ; <5>
- D - I - - 0x02D592 16:9582: 05        .byte $05   ; <お>
- D - I - - 0x02D593 16:9583: C3        .byte $C3   ; <バ>
- D - I - - 0x02D594 16:9584: 43        .byte $43   ; <ウ>
- D - I - - 0x02D595 16:9585: C6        .byte $C6   ; <ベ>
- D - I - - 0x02D596 16:9586: 46        .byte $46   ; <カ>
- D - I - - 0x02D597 16:9587: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D598 16:9588: 47        .byte $47   ; <キ>
- D - I - - 0x02D599 16:9589: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02D59A 16:958A: 50        .byte $50   ; <タ>
- D - I - - 0x02D59B 16:958B: CD        .byte $CD   ; <パ>
- D - I - - 0x02D59C 16:958C: 52        .byte $52   ; <ツ>
- D - I - - 0x02D59D 16:958D: D1        .byte $D1   ; <ポ>
- D - I - - 0x02D59E 16:958E: 53        .byte $53   ; <テ>
- D - I - - 0x02D59F 16:958F: D7        .byte $D7
- D - I - - 0x02D5A0 16:9590: 56        .byte $56   ; <ニ>
- D - I - - 0x02D5A1 16:9591: DB        .byte $DB
- D - I - - 0x02D5A2 16:9592: 57        .byte $57   ; <ヌ>

- D - I - - 0x02D5A3 16:9593: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D5A4 16:9594: 06        .byte $06   ; <か>
- D - I - - 0x02D5A5 16:9595: 19        .byte $19   ; <の>
- D - I - - 0x02D5A6 16:9596: 1D        .byte $1D   ; <へ>
- D - I - - 0x02D5A7 16:9597: 81        .byte $81   ; <A>
- D - I - - 0x02D5A8 16:9598: 48        .byte $48   ; <ク>
- D - I - - 0x02D5A9 16:9599: C3        .byte $C3   ; <バ>
- D - I - - 0x02D5AA 16:959A: 49        .byte $49   ; <ケ>
- D - I - - 0x02D5AB 16:959B: C7        .byte $C7   ; <ボ>
- D - I - - 0x02D5AC 16:959C: 4C        .byte $4C   ; <シ>
- D - I - - 0x02D5AD 16:959D: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02D5AE 16:959E: 4D        .byte $4D   ; <ス>
- D - I - - 0x02D5AF 16:959F: CE        .byte $CE   ; <ピ>
- D - I - - 0x02D5B0 16:95A0: 58        .byte $58   ; <ネ>
- D - I - - 0x02D5B1 16:95A1: D2        .byte $D2
- D - I - - 0x02D5B2 16:95A2: 59        .byte $59   ; <ノ>

- D - I - - 0x02D5B3 16:95A3: 20        .byte $20   ; <み>
- D - I - - 0x02D5B4 16:95A4: 07        .byte $07   ; <き>
- D - I - - 0x02D5B5 16:95A5: 15        .byte $15   ; <な>
- D - I - - 0x02D5B6 16:95A6: 61        .byte $61   ; <ム>
- D - I - - 0x02D5B7 16:95A7: 19        .byte $19   ; <の>
- D - I - - 0x02D5B8 16:95A8: 1F        .byte $1F   ; <ま>
- D - I - - 0x02D5B9 16:95A9: 81        .byte $81   ; <A>
- D - I - - 0x02D5BA 16:95AA: 4A        .byte $4A   ; <コ>
- D - I - - 0x02D5BB 16:95AB: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02D5BC 16:95AC: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02D5BD 16:95AD: CF        .byte $CF   ; <プ>
- D - I - - 0x02D5BE 16:95AE: 5A        .byte $5A   ; <ハ>

- D - I - - 0x02D5BF 16:95AF: 20        .byte $20   ; <み>
- D - I - - 0x02D5C0 16:95B0: 08        .byte $08   ; <く>
- D - I - - 0x02D5C1 16:95B1: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D5C2 16:95B2: 37        .byte $37   ; <4>
- D - I - - 0x02D5C3 16:95B3: 13        .byte $13   ; <て>
- D - I - - 0x02D5C4 16:95B4: 62        .byte $62   ; <メ>
- D - I - - 0x02D5C5 16:95B5: 15        .byte $15   ; <な>
- D - I - - 0x02D5C6 16:95B6: 63        .byte $63   ; <モ>
- D - I - - 0x02D5C7 16:95B7: 19        .byte $19   ; <の>
- D - I - - 0x02D5C8 16:95B8: 35        .byte $35   ; <2>
- D - I - - 0x02D5C9 16:95B9: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02D5CA 16:95BA: 65        .byte $65   ; <ユ>

- D - I - - 0x02D5CB 16:95BB: 08        .byte $08   ; <く>
- D - I - - 0x02D5CC 16:95BC: 09        .byte $09   ; <け>
- D - I - - 0x02D5CD 16:95BD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D5CE 16:95BE: 3D        .byte $3D   ; <+>
- D - I - - 0x02D5CF 16:95BF: 13        .byte $13   ; <て>
- D - I - - 0x02D5D0 16:95C0: 68        .byte $68   ; <リ>

- D - I - - 0x02D5D1 16:95C1: 01        .byte $01   ; <あ>



off_95C2:
- - - - - - 0x02D5D2 16:95C2: 00        .byte $00
- - - - - - 0x02D5D3 16:95C3: 01        .byte $01   ; <あ>
- - - - - - 0x02D5D4 16:95C4: D4        .byte $D4
- - - - - - 0x02D5D5 16:95C5: 10        .byte $10   ; <た>

- - - - - - 0x02D5D6 16:95C6: 10        .byte $10   ; <た>
- - - - - - 0x02D5D7 16:95C7: 02        .byte $02   ; <い>
- - - - - - 0x02D5D8 16:95C8: CC        .byte $CC   ; <ぽ>
- - - - - - 0x02D5D9 16:95C9: 11        .byte $11   ; <ち>
- - - - - - 0x02D5DA 16:95CA: D0        .byte $D0   ; <ペ>
- - - - - - 0x02D5DB 16:95CB: 14        .byte $14   ; <と>
- - - - - - 0x02D5DC 16:95CC: D4        .byte $D4
- - - - - - 0x02D5DD 16:95CD: 15        .byte $15   ; <な>

- - - - - - 0x02D5DE 16:95CE: 18        .byte $18   ; <ね>
- - - - - - 0x02D5DF 16:95CF: 03        .byte $03   ; <う>
- - - - - - 0x02D5E0 16:95D0: C8        .byte $C8   ; <ぱ>
- - - - - - 0x02D5E1 16:95D1: 0C        .byte $0C   ; <し>
- - - - - - 0x02D5E2 16:95D2: CC        .byte $CC   ; <ぽ>
- - - - - - 0x02D5E3 16:95D3: 13        .byte $13   ; <て>
- - - - - - 0x02D5E4 16:95D4: D0        .byte $D0   ; <ペ>
- - - - - - 0x02D5E5 16:95D5: 16        .byte $16   ; <に>
- - - - - - 0x02D5E6 16:95D6: D4        .byte $D4
- - - - - - 0x02D5E7 16:95D7: 17        .byte $17   ; <ぬ>

- - - - - - 0x02D5E8 16:95D8: 08        .byte $08   ; <く>
- - - - - - 0x02D5E9 16:95D9: 04        .byte $04   ; <え>
- - - - - - 0x02D5EA 16:95DA: CF        .byte $CF   ; <プ>
- - - - - - 0x02D5EB 16:95DB: 19        .byte $19   ; <の>
- - - - - - 0x02D5EC 16:95DC: D0        .byte $D0   ; <ペ>
- - - - - - 0x02D5ED 16:95DD: 1C        .byte $1C   ; <ふ>

- - - - - - 0x02D5EE 16:95DE: 02        .byte $02   ; <い>
- - - - - - 0x02D5EF 16:95DF: 57 95     .word off_9557



off_95E1:
- D - I - - 0x02D5F1 16:95E1: 08        .byte $08   ; <く>
- D - I - - 0x02D5F2 16:95E2: 02        .byte $02   ; <い>
- D - I - - 0x02D5F3 16:95E3: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D5F4 16:95E4: 20        .byte $20   ; <み>
- D - I - - 0x02D5F5 16:95E5: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D5F6 16:95E6: 21        .byte $21   ; <む>

- D - I - - 0x02D5F7 16:95E7: 18        .byte $18   ; <ね>
- D - I - - 0x02D5F8 16:95E8: 03        .byte $03   ; <う>
- D - I - - 0x02D5F9 16:95E9: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02D5FA 16:95EA: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D5FB 16:95EB: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D5FC 16:95EC: 22        .byte $22   ; <め>
- D - I - - 0x02D5FD 16:95ED: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D5FE 16:95EE: 23        .byte $23   ; <も>
- D - I - - 0x02D5FF 16:95EF: D4        .byte $D4
- D - I - - 0x02D600 16:95F0: 26        .byte $26   ; <よ>

- D - I - - 0x02D601 16:95F1: 08        .byte $08   ; <く>
- D - I - - 0x02D602 16:95F2: 04        .byte $04   ; <え>
- D - I - - 0x02D603 16:95F3: CF        .byte $CF   ; <プ>
- D - I - - 0x02D604 16:95F4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D605 16:95F5: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D606 16:95F6: 1A        .byte $1A   ; <は>

- D - I - - 0x02D607 16:95F7: 02        .byte $02   ; <い>
- D - I - - 0x02D608 16:95F8: 57 95     .word off_9557



off_95FA:
- D - I - - 0x02D60A 16:95FA: 08        .byte $08   ; <く>
- D - I - - 0x02D60B 16:95FB: 02        .byte $02   ; <い>
- D - I - - 0x02D60C 16:95FC: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D60D 16:95FD: 20        .byte $20   ; <み>
- D - I - - 0x02D60E 16:95FE: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D60F 16:95FF: 21        .byte $21   ; <む>

- D - I - - 0x02D610 16:9600: 18        .byte $18   ; <ね>
- D - I - - 0x02D611 16:9601: 03        .byte $03   ; <う>
- D - I - - 0x02D612 16:9602: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02D613 16:9603: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D614 16:9604: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D615 16:9605: 29        .byte $29   ; <る>
- D - I - - 0x02D616 16:9606: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D617 16:9607: 23        .byte $23   ; <も>
- D - I - - 0x02D618 16:9608: D4        .byte $D4
- D - I - - 0x02D619 16:9609: 26        .byte $26   ; <よ>

- D - I - - 0x02D61A 16:960A: 08        .byte $08   ; <く>
- D - I - - 0x02D61B 16:960B: 04        .byte $04   ; <え>
- D - I - - 0x02D61C 16:960C: CF        .byte $CF   ; <プ>
- D - I - - 0x02D61D 16:960D: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02D61E 16:960E: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D61F 16:960F: 1A        .byte $1A   ; <は>

- D - I - - 0x02D620 16:9610: 02        .byte $02   ; <い>
- D - I - - 0x02D621 16:9611: 57 95     .word off_9557



off_9613:
- - - - - - 0x02D623 16:9613: 00        .byte $00
- - - - - - 0x02D624 16:9614: 02        .byte $02   ; <い>
- - - - - - 0x02D625 16:9615: CC        .byte $CC   ; <ぽ>
- - - - - - 0x02D626 16:9616: 3A        .byte $3A   ; <7>

- - - - - - 0x02D627 16:9617: 10        .byte $10   ; <た>
- - - - - - 0x02D628 16:9618: 03        .byte $03   ; <う>
- - - - - - 0x02D629 16:9619: C8        .byte $C8   ; <ぱ>
- - - - - - 0x02D62A 16:961A: 38        .byte $38   ; <5>
- - - - - - 0x02D62B 16:961B: CC        .byte $CC   ; <ぽ>
- - - - - - 0x02D62C 16:961C: 2C        .byte $2C   ; <わ>
- - - - - - 0x02D62D 16:961D: D0        .byte $D0   ; <ペ>
- - - - - - 0x02D62E 16:961E: 2D        .byte $2D   ; <を>

- - - - - - 0x02D62F 16:961F: 08        .byte $08   ; <く>
- - - - - - 0x02D630 16:9620: 04        .byte $04   ; <え>
- - - - - - 0x02D631 16:9621: CF        .byte $CF   ; <プ>
- - - - - - 0x02D632 16:9622: 2E        .byte $2E   ; <ん>
- - - - - - 0x02D633 16:9623: D0        .byte $D0   ; <ペ>
- - - - - - 0x02D634 16:9624: 2F        .byte $2F   ; <っ>

- - - - - - 0x02D635 16:9625: 02        .byte $02   ; <い>
- - - - - - 0x02D636 16:9626: 57 95     .word off_9557



off_9628:
- D - I - - 0x02D638 16:9628: 10        .byte $10   ; <た>
- D - I - - 0x02D639 16:9629: 02        .byte $02   ; <い>
- D - I - - 0x02D63A 16:962A: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02D63B 16:962B: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02D63C 16:962C: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D63D 16:962D: 5F        .byte $5F   ; <マ>
- D - I - - 0x02D63E 16:962E: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D63F 16:962F: 12        .byte $12   ; <つ>

- D - I - - 0x02D640 16:9630: 10        .byte $10   ; <た>
- D - I - - 0x02D641 16:9631: 03        .byte $03   ; <う>
- D - I - - 0x02D642 16:9632: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02D643 16:9633: 74        .byte $74   ; <ィ>
- D - I - - 0x02D644 16:9634: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02D645 16:9635: 70        .byte $70   ; <ャ>
- D - I - - 0x02D646 16:9636: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D647 16:9637: 71        .byte $71   ; <ュ>

- D - I - - 0x02D648 16:9638: 08        .byte $08   ; <く>
- D - I - - 0x02D649 16:9639: 04        .byte $04   ; <え>
- D - I - - 0x02D64A 16:963A: CF        .byte $CF   ; <プ>
- D - I - - 0x02D64B 16:963B: 72        .byte $72   ; <ョ>
- D - I - - 0x02D64C 16:963C: D0        .byte $D0   ; <ペ>
- D - I - - 0x02D64D 16:963D: 73        .byte $73   ; <ヮ>

- D - I - - 0x02D64E 16:963E: 08        .byte $08   ; <く>
- D - I - - 0x02D64F 16:963F: 02        .byte $02   ; <い>
- D - I - - 0x02D650 16:9640: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D651 16:9641: 4B        .byte $4B   ; <サ>
- D - I - - 0x02D652 16:9642: CD        .byte $CD   ; <パ>
- D - I - - 0x02D653 16:9643: 4E        .byte $4E   ; <セ>

- D - I - - 0x02D654 16:9644: 00        .byte $00
- D - I - - 0x02D655 16:9645: 03        .byte $03   ; <う>
- D - I - - 0x02D656 16:9646: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02D657 16:9647: 60        .byte $60   ; <ミ>

- D - I - - 0x02D658 16:9648: 08        .byte $08   ; <く>
- D - I - - 0x02D659 16:9649: 04        .byte $04   ; <え>
- D - I - - 0x02D65A 16:964A: D1        .byte $D1   ; <ポ>
- D - I - - 0x02D65B 16:964B: 5C        .byte $5C   ; <フ>
- D - I - - 0x02D65C 16:964C: D5        .byte $D5
- D - I - - 0x02D65D 16:964D: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02D65E 16:964E: 02        .byte $02   ; <い>
- D - I - - 0x02D65F 16:964F: 67 95     .word off_9567



off_9651_2D:
- - - - - - 0x02D661 16:9651: 00        .byte $00
- - - - - - 0x02D662 16:9652: 09        .byte $09   ; <け>
- - - - - - 0x02D663 16:9653: 17        .byte $17   ; <ぬ>
- - - - - - 0x02D664 16:9654: 69        .byte $69   ; <ル>

- - - - - - 0x02D665 16:9655: 08        .byte $08   ; <く>
- - - - - - 0x02D666 16:9656: 16        .byte $16   ; <に>
- - - - - - 0x02D667 16:9657: 0F        .byte $0F   ; <そ>
- - - - - - 0x02D668 16:9658: 3F        .byte $3F   ; <•>
- - - - - - 0x02D669 16:9659: 13        .byte $13   ; <て>
- - - - - - 0x02D66A 16:965A: 6A        .byte $6A   ; <レ>

- - - - - - 0x02D66B 16:965B: 08        .byte $08   ; <く>
- - - - - - 0x02D66C 16:965C: 09        .byte $09   ; <け>
- - - - - - 0x02D66D 16:965D: 0B        .byte $0B   ; <さ>
- - - - - - 0x02D66E 16:965E: 7D        .byte $7D   ; <ー>
- - - - - - 0x02D66F 16:965F: 17        .byte $17   ; <ぬ>
- - - - - - 0x02D670 16:9660: 6C        .byte $6C   ; <ワ>

- - - - - - 0x02D671 16:9661: 18        .byte $18   ; <ね>
- - - - - - 0x02D672 16:9662: 16        .byte $16   ; <に>
- - - - - - 0x02D673 16:9663: 0B        .byte $0B   ; <さ>
- - - - - - 0x02D674 16:9664: BE        .byte $BE   ; <ダ>
- - - - - - 0x02D675 16:9665: 0F        .byte $0F   ; <そ>
- - - - - - 0x02D676 16:9666: BF        .byte $BF   ; <ヂ>
- - - - - - 0x02D677 16:9667: 13        .byte $13   ; <て>
- - - - - - 0x02D678 16:9668: 6B        .byte $6B   ; <ロ>
- - - - - - 0x02D679 16:9669: 17        .byte $17   ; <ぬ>
- - - - - - 0x02D67A 16:966A: 6E        .byte $6E   ; <ン>

- - - - - - 0x02D67B 16:966B: 02        .byte $02   ; <い>
- - - - - - 0x02D67C 16:966C: 2A 95     .word off_952A



off_966E_2E:
- - - - - - 0x02D67E 16:966E: 00        .byte $00
- - - - - - 0x02D67F 16:966F: 09        .byte $09   ; <け>
- - - - - - 0x02D680 16:9670: 17        .byte $17   ; <ぬ>
- - - - - - 0x02D681 16:9671: 69        .byte $69   ; <ル>

- - - - - - 0x02D682 16:9672: 08        .byte $08   ; <く>
- - - - - - 0x02D683 16:9673: 16        .byte $16   ; <に>
- - - - - - 0x02D684 16:9674: 0F        .byte $0F   ; <そ>
- - - - - - 0x02D685 16:9675: 3F        .byte $3F   ; <•>
- - - - - - 0x02D686 16:9676: 13        .byte $13   ; <て>
- - - - - - 0x02D687 16:9677: 6A        .byte $6A   ; <レ>

- - - - - - 0x02D688 16:9678: 08        .byte $08   ; <く>
- - - - - - 0x02D689 16:9679: 09        .byte $09   ; <け>
- - - - - - 0x02D68A 16:967A: 0B        .byte $0B   ; <さ>
- - - - - - 0x02D68B 16:967B: 7C        .byte $7C   ; <~>
- - - - - - 0x02D68C 16:967C: 17        .byte $17   ; <ぬ>
- - - - - - 0x02D68D 16:967D: 79        .byte $79   ; <!>

- - - - - - 0x02D68E 16:967E: 18        .byte $18   ; <ね>
- - - - - - 0x02D68F 16:967F: 16        .byte $16   ; <に>
- - - - - - 0x02D690 16:9680: 0B        .byte $0B   ; <さ>
- - - - - - 0x02D691 16:9681: 7E        .byte $7E   ; <.>
- - - - - - 0x02D692 16:9682: 0F        .byte $0F   ; <そ>
- - - - - - 0x02D693 16:9683: 7F        .byte $7F   ; <,>
- - - - - - 0x02D694 16:9684: 13        .byte $13   ; <て>
- - - - - - 0x02D695 16:9685: 7A        .byte $7A   ; <、>
- - - - - - 0x02D696 16:9686: 17        .byte $17   ; <ぬ>
- - - - - - 0x02D697 16:9687: 7B        .byte $7B   ; <。>

- - - - - - 0x02D698 16:9688: 02        .byte $02   ; <い>
- - - - - - 0x02D699 16:9689: 2A 95     .word off_952A



off_968B_30:
- D - I - - 0x02D69B 16:968B: 08        .byte $08   ; <く>
- D - I - - 0x02D69C 16:968C: 00        .byte $00
- D - I - - 0x02D69D 16:968D: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02D69E 16:968E: 2E        .byte $2E   ; <ん>
- D - I - - 0x02D69F 16:968F: 5F        .byte $5F   ; <マ>
- D - I - - 0x02D6A0 16:9690: 2F        .byte $2F   ; <っ>

- D - I - - 0x02D6A1 16:9691: 18        .byte $18   ; <ね>
- D - I - - 0x02D6A2 16:9692: 01        .byte $01   ; <あ>
- D - I - - 0x02D6A3 16:9693: 09        .byte $09   ; <け>
- D - I - - 0x02D6A4 16:9694: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D6A5 16:9695: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D6A6 16:9696: 31        .byte $31   ; <ゅ>
- D - I - - 0x02D6A7 16:9697: 0D        .byte $0D   ; <す>
- D - I - - 0x02D6A8 16:9698: 46        .byte $46   ; <カ>
- D - I - - 0x02D6A9 16:9699: 11        .byte $11   ; <ち>
- D - I - - 0x02D6AA 16:969A: 40        .byte $40   ; <「>

- D - I - - 0x02D6AB 16:969B: 20        .byte $20   ; <み>
- D - I - - 0x02D6AC 16:969C: 02        .byte $02   ; <い>
- D - I - - 0x02D6AD 16:969D: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D6AE 16:969E: 32        .byte $32   ; <ょ>
- D - I - - 0x02D6AF 16:969F: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D6B0 16:96A0: 44        .byte $44   ; <エ>
- D - I - - 0x02D6B1 16:96A1: 0D        .byte $0D   ; <す>
- D - I - - 0x02D6B2 16:96A2: 33        .byte $33   ; <0>
- D - I - - 0x02D6B3 16:96A3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D6B4 16:96A4: 02        .byte $02   ; <い>
- D - I - - 0x02D6B5 16:96A5: 12        .byte $12   ; <つ>
- D - I - - 0x02D6B6 16:96A6: 42        .byte $42   ; <イ>

- D - I - - 0x02D6B7 16:96A7: 28        .byte $28   ; <り>
- D - I - - 0x02D6B8 16:96A8: 03        .byte $03   ; <う>
- D - I - - 0x02D6B9 16:96A9: 04        .byte $04   ; <え>
- D - I - - 0x02D6BA 16:96AA: 2D        .byte $2D   ; <を>
- D - I - - 0x02D6BB 16:96AB: 08        .byte $08   ; <く>
- D - I - - 0x02D6BC 16:96AC: 38        .byte $38   ; <5>
- D - I - - 0x02D6BD 16:96AD: 0C        .byte $0C   ; <し>
- D - I - - 0x02D6BE 16:96AE: 39        .byte $39   ; <6>
- D - I - - 0x02D6BF 16:96AF: 10        .byte $10   ; <た>
- D - I - - 0x02D6C0 16:96B0: 41        .byte $41   ; <ア>
- D - I - - 0x02D6C1 16:96B1: 43        .byte $43   ; <ウ>
- D - I - - 0x02D6C2 16:96B2: 02        .byte $02   ; <い>
- D - I - - 0x02D6C3 16:96B3: 47        .byte $47   ; <キ>
- D - I - - 0x02D6C4 16:96B4: 02        .byte $02   ; <い>

- D - I - - 0x02D6C5 16:96B5: 10        .byte $10   ; <た>
- D - I - - 0x02D6C6 16:96B6: 04        .byte $04   ; <え>
- D - I - - 0x02D6C7 16:96B7: 08        .byte $08   ; <く>
- D - I - - 0x02D6C8 16:96B8: 3A        .byte $3A   ; <7>
- D - I - - 0x02D6C9 16:96B9: 0C        .byte $0C   ; <し>
- D - I - - 0x02D6CA 16:96BA: 3B        .byte $3B   ; <8>
- D - I - - 0x02D6CB 16:96BB: 10        .byte $10   ; <た>
- D - I - - 0x02D6CC 16:96BC: 43        .byte $43   ; <ウ>

- D - I - - 0x02D6CD 16:96BD: 10        .byte $10   ; <た>
- D - I - - 0x02D6CE 16:96BE: 05        .byte $05   ; <お>
- D - I - - 0x02D6CF 16:96BF: 09        .byte $09   ; <け>
- D - I - - 0x02D6D0 16:96C0: 34        .byte $34   ; <1>
- D - I - - 0x02D6D1 16:96C1: 0D        .byte $0D   ; <す>
- D - I - - 0x02D6D2 16:96C2: 35        .byte $35   ; <2>
- D - I - - 0x02D6D3 16:96C3: 11        .byte $11   ; <ち>
- D - I - - 0x02D6D4 16:96C4: 37        .byte $37   ; <4>

- D - I - - 0x02D6D5 16:96C5: 08        .byte $08   ; <く>
- D - I - - 0x02D6D6 16:96C6: 06        .byte $06   ; <か>
- D - I - - 0x02D6D7 16:96C7: 09        .byte $09   ; <け>
- D - I - - 0x02D6D8 16:96C8: 36        .byte $36   ; <3>
- D - I - - 0x02D6D9 16:96C9: 31        .byte $31   ; <ゅ>
- D - I - - 0x02D6DA 16:96CA: 3D        .byte $3D   ; <+>

- D - I - - 0x02D6DB 16:96CB: 20        .byte $20   ; <み>
- D - I - - 0x02D6DC 16:96CC: 07        .byte $07   ; <き>
- D - I - - 0x02D6DD 16:96CD: 07        .byte $07   ; <き>
- D - I - - 0x02D6DE 16:96CE: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02D6DF 16:96CF: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D6E0 16:96D0: 3F        .byte $3F   ; <•>
- D - I - - 0x02D6E1 16:96D1: 09        .byte $09   ; <け>
- D - I - - 0x02D6E2 16:96D2: 45        .byte $45   ; <オ>
- D - I - - 0x02D6E3 16:96D3: 13        .byte $13   ; <て>
- D - I - - 0x02D6E4 16:96D4: 3C        .byte $3C   ; <9>
- D - I - - 0x02D6E5 16:96D5: BD        .byte $BD   ; <ゾ>
- D - I - - 0x02D6E6 16:96D6: 45        .byte $45   ; <オ>

- D - I - - 0x02D6E7 16:96D7: 01        .byte $01   ; <あ>



off_96D8_31:
- D - I - - 0x02D6E8 16:96D8: 08        .byte $08   ; <く>
- D - I - - 0x02D6E9 16:96D9: 00        .byte $00
- D - I - - 0x02D6EA 16:96DA: 40        .byte $40   ; <「>
- D - I - - 0x02D6EB 16:96DB: 50        .byte $50   ; <タ>
- D - I - - 0x02D6EC 16:96DC: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02D6ED 16:96DD: E6        .byte $E6

- D - I - - 0x02D6EE 16:96DE: 18        .byte $18   ; <ね>
- D - I - - 0x02D6EF 16:96DF: 01        .byte $01   ; <あ>
- D - I - - 0x02D6F0 16:96E0: 5C        .byte $5C   ; <フ>
- D - I - - 0x02D6F1 16:96E1: 52        .byte $52   ; <ツ>
- D - I - - 0x02D6F2 16:96E2: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02D6F3 16:96E3: FA        .byte $FA
- D - I - - 0x02D6F4 16:96E4: 60        .byte $60   ; <ミ>
- D - I - - 0x02D6F5 16:96E5: 53        .byte $53   ; <テ>
- D - I - - 0x02D6F6 16:96E6: 61        .byte $61   ; <ム>
- D - I - - 0x02D6F7 16:96E7: FB        .byte $FB

- D - I - - 0x02D6F8 16:96E8: 18        .byte $18   ; <ね>
- D - I - - 0x02D6F9 16:96E9: 02        .byte $02   ; <い>
- D - I - - 0x02D6FA 16:96EA: 44        .byte $44   ; <エ>
- D - I - - 0x02D6FB 16:96EB: 58        .byte $58   ; <ネ>
- D - I - - 0x02D6FC 16:96EC: 45        .byte $45   ; <オ>
- D - I - - 0x02D6FD 16:96ED: E5        .byte $E5
- D - I - - 0x02D6FE 16:96EE: 84        .byte $84   ; <D>
- D - I - - 0x02D6FF 16:96EF: 59        .byte $59   ; <ノ>
- D - I - - 0x02D700 16:96F0: 85        .byte $85   ; <E>
- D - I - - 0x02D701 16:96F1: F0        .byte $F0

- D - I - - 0x02D702 16:96F2: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D703 16:96F3: 03        .byte $03   ; <う>
- D - I - - 0x02D704 16:96F4: 44        .byte $44   ; <エ>
- D - I - - 0x02D705 16:96F5: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02D706 16:96F6: 45        .byte $45   ; <オ>
- D - I - - 0x02D707 16:96F7: E7        .byte $E7
- D - I - - 0x02D708 16:96F8: 84        .byte $84   ; <D>
- D - I - - 0x02D709 16:96F9: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02D70A 16:96FA: 85        .byte $85   ; <E>
- D - I - - 0x02D70B 16:96FB: F2        .byte $F2
- D - I - - 0x02D70C 16:96FC: 92        .byte $92   ; <W>
- D - I - - 0x02D70D 16:96FD: F7        .byte $F7
- D - I - - 0x02D70E 16:96FE: 90        .byte $90   ; <U>
- D - I - - 0x02D70F 16:96FF: 51        .byte $51   ; <チ>
- D - I - - 0x02D710 16:9700: 91        .byte $91   ; <V>
- D - I - - 0x02D711 16:9701: F3        .byte $F3

- D - I - - 0x02D712 16:9702: 38        .byte $38   ; <5>
- D - I - - 0x02D713 16:9703: 04        .byte $04   ; <え>
- D - I - - 0x02D714 16:9704: 0C        .byte $0C   ; <し>
- D - I - - 0x02D715 16:9705: 56        .byte $56   ; <ニ>
- D - I - - 0x02D716 16:9706: 10        .byte $10   ; <た>
- D - I - - 0x02D717 16:9707: 57        .byte $57   ; <ヌ>
- D - I - - 0x02D718 16:9708: 14        .byte $14   ; <と>
- D - I - - 0x02D719 16:9709: 54        .byte $54   ; <ト>
- D - I - - 0x02D71A 16:970A: 41        .byte $41   ; <ア>
- D - I - - 0x02D71B 16:970B: EC        .byte $EC
- D - I - - 0x02D71C 16:970C: 45        .byte $45   ; <オ>
- D - I - - 0x02D71D 16:970D: ED        .byte $ED
- D - I - - 0x02D71E 16:970E: 85        .byte $85   ; <E>
- D - I - - 0x02D71F 16:970F: F8        .byte $F8
- D - I - - 0x02D720 16:9710: 91        .byte $91   ; <V>
- D - I - - 0x02D721 16:9711: F9        .byte $F9
- D - I - - 0x02D722 16:9712: 92        .byte $92   ; <W>
- D - I - - 0x02D723 16:9713: FD        .byte $FD

- D - I - - 0x02D724 16:9714: 20        .byte $20   ; <み>
- D - I - - 0x02D725 16:9715: 05        .byte $05   ; <お>
- D - I - - 0x02D726 16:9716: 42        .byte $42   ; <イ>
- D - I - - 0x02D727 16:9717: F6        .byte $F6
- D - I - - 0x02D728 16:9718: 0C        .byte $0C   ; <し>
- D - I - - 0x02D729 16:9719: 5C        .byte $5C   ; <フ>
- D - I - - 0x02D72A 16:971A: 10        .byte $10   ; <た>
- D - I - - 0x02D72B 16:971B: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02D72C 16:971C: 35        .byte $35   ; <2>
- D - I - - 0x02D72D 16:971D: EE        .byte $EE
- D - I - - 0x02D72E 16:971E: 39        .byte $39   ; <6>
- D - I - - 0x02D72F 16:971F: EF        .byte $EF

- D - I - - 0x02D730 16:9720: 20        .byte $20   ; <み>
- D - I - - 0x02D731 16:9721: 06        .byte $06   ; <か>
- D - I - - 0x02D732 16:9722: 42        .byte $42   ; <イ>
- D - I - - 0x02D733 16:9723: FC        .byte $FC
- D - I - - 0x02D734 16:9724: 0C        .byte $0C   ; <し>
- D - I - - 0x02D735 16:9725: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02D736 16:9726: 10        .byte $10   ; <た>
- D - I - - 0x02D737 16:9727: 5F        .byte $5F   ; <マ>
- D - I - - 0x02D738 16:9728: 35        .byte $35   ; <2>
- D - I - - 0x02D739 16:9729: E8        .byte $E8
- D - I - - 0x02D73A 16:972A: 39        .byte $39   ; <6>
- D - I - - 0x02D73B 16:972B: E9        .byte $E9

- D - I - - 0x02D73C 16:972C: 20        .byte $20   ; <み>
- D - I - - 0x02D73D 16:972D: 07        .byte $07   ; <き>
- D - I - - 0x02D73E 16:972E: 41        .byte $41   ; <ア>
- D - I - - 0x02D73F 16:972F: EA        .byte $EA
- D - I - - 0x02D740 16:9730: 42        .byte $42   ; <イ>
- D - I - - 0x02D741 16:9731: FE        .byte $FE
- D - I - - 0x02D742 16:9732: 44        .byte $44   ; <エ>
- D - I - - 0x02D743 16:9733: 55        .byte $55   ; <ナ>
- D - I - - 0x02D744 16:9734: 45        .byte $45   ; <オ>
- D - I - - 0x02D745 16:9735: EB        .byte $EB
- D - I - - 0x02D746 16:9736: 46        .byte $46   ; <カ>
- D - I - - 0x02D747 16:9737: FF        .byte $FF

- D - I - - 0x02D748 16:9738: 01        .byte $01   ; <あ>



off_9739_3E:
- - - - - - 0x02D749 16:9739: 00        .byte $00
- - - - - - 0x02D74A 16:973A: 09        .byte $09   ; <け>
- - - - - - 0x02D74B 16:973B: 6B        .byte $6B   ; <ロ>
- - - - - - 0x02D74C 16:973C: 69        .byte $69   ; <ル>

- - - - - - 0x02D74D 16:973D: 08        .byte $08   ; <く>
- - - - - - 0x02D74E 16:973E: 16        .byte $16   ; <に>
- - - - - - 0x02D74F 16:973F: A3        .byte $A3   ; <げ>
- - - - - - 0x02D750 16:9740: 3F        .byte $3F   ; <•>
- - - - - - 0x02D751 16:9741: B7        .byte $B7   ; <ゲ>
- - - - - - 0x02D752 16:9742: 6A        .byte $6A   ; <レ>
; продолжение


off_9743:
- D - I - - 0x02D753 16:9743: 08        .byte $08   ; <く>
- D - I - - 0x02D754 16:9744: 08        .byte $08   ; <く>
- D - I - - 0x02D755 16:9745: A3        .byte $A3   ; <げ>
- D - I - - 0x02D756 16:9746: 37        .byte $37   ; <4>
- D - I - - 0x02D757 16:9747: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D758 16:9748: 62        .byte $62   ; <メ>

- D - I - - 0x02D759 16:9749: 08        .byte $08   ; <く>
- D - I - - 0x02D75A 16:974A: 09        .byte $09   ; <け>
- D - I - - 0x02D75B 16:974B: A3        .byte $A3   ; <げ>
- D - I - - 0x02D75C 16:974C: 3D        .byte $3D   ; <+>
- D - I - - 0x02D75D 16:974D: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D75E 16:974E: 68        .byte $68   ; <リ>
; продолжение


off_974F:
- D - I - - 0x02D75F 16:974F: 03        .byte $03   ; <う>
- D - I - - 0x02D760 16:9750: 68 97     .word off_9768
- D - I - - 0x02D762 16:9752: DD 97     .word off_97DD
- D - I - - 0x02D764 16:9754: FC 97     .word off_97FC
- D - I - - 0x02D766 16:9756: 17 98     .word off_9817
- D - I - - 0x02D768 16:9758: 26 98     .word off_9826
- D - I - - 0x02D76A 16:975A: 3B 98     .word off_983B
- D - I - - 0x02D76C 16:975C: 52 98     .word off_9852
- D - I - - 0x02D76E 16:975E: 69 98     .word off_9869
- D - I - - 0x02D770 16:9760: 92 98     .word off_9892
- D - I - - 0x02D772 16:9762: A9 98     .word off_98A9
- D - I - - 0x02D774 16:9764: BE 98     .word off_98BE
- D - I - - 0x02D776 16:9766: D5 98     .word off_98D5

off_9768:
- D - I - - 0x02D778 16:9768: 08        .byte $08   ; <く>
- D - I - - 0x02D779 16:9769: 02        .byte $02   ; <い>
- D - I - - 0x02D77A 16:976A: 14        .byte $14   ; <と>
- D - I - - 0x02D77B 16:976B: 07        .byte $07   ; <き>
- D - I - - 0x02D77C 16:976C: 18        .byte $18   ; <ね>
- D - I - - 0x02D77D 16:976D: 12        .byte $12   ; <つ>

- D - I - - 0x02D77E 16:976E: 10        .byte $10   ; <た>
- D - I - - 0x02D77F 16:976F: 03        .byte $03   ; <う>
- D - I - - 0x02D780 16:9770: 10        .byte $10   ; <た>
- D - I - - 0x02D781 16:9771: 0C        .byte $0C   ; <し>
- D - I - - 0x02D782 16:9772: 14        .byte $14   ; <と>
- D - I - - 0x02D783 16:9773: 0D        .byte $0D   ; <す>
- D - I - - 0x02D784 16:9774: 18        .byte $18   ; <ね>
- D - I - - 0x02D785 16:9775: 18        .byte $18   ; <ね>

- D - I - - 0x02D786 16:9776: 08        .byte $08   ; <く>
- D - I - - 0x02D787 16:9777: 04        .byte $04   ; <え>
- D - I - - 0x02D788 16:9778: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D789 16:9779: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D78A 16:977A: 18        .byte $18   ; <ね>
- D - I - - 0x02D78B 16:977B: 1A        .byte $1A   ; <は>
; продолжение


off_977C:
- D - I - - 0x02D78C 16:977C: 08        .byte $08   ; <く>
- D - I - - 0x02D78D 16:977D: 02        .byte $02   ; <い>
- D - I - - 0x02D78E 16:977E: 11        .byte $11   ; <ち>
- D - I - - 0x02D78F 16:977F: 40        .byte $40   ; <「>
- D - I - - 0x02D790 16:9780: 15        .byte $15   ; <な>
- D - I - - 0x02D791 16:9781: 41        .byte $41   ; <ア>

- D - I - - 0x02D792 16:9782: 00        .byte $00
- D - I - - 0x02D793 16:9783: 03        .byte $03   ; <う>
- D - I - - 0x02D794 16:9784: 11        .byte $11   ; <ち>
- D - I - - 0x02D795 16:9785: 42        .byte $42   ; <イ>

- D - I - - 0x02D796 16:9786: 08        .byte $08   ; <く>
- D - I - - 0x02D797 16:9787: 04        .byte $04   ; <え>
- D - I - - 0x02D798 16:9788: 19        .byte $19   ; <の>
- D - I - - 0x02D799 16:9789: 51        .byte $51   ; <チ>
- D - I - - 0x02D79A 16:978A: 81        .byte $81   ; <A>
- D - I - - 0x02D79B 16:978B: 54        .byte $54   ; <ト>

off_978C:
- D - I - - 0x02D79C 16:978C: 08        .byte $08   ; <く>
- D - I - - 0x02D79D 16:978D: 00        .byte $00
- D - I - - 0x02D79E 16:978E: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D79F 16:978F: 66        .byte $66   ; <ヨ>
- D - I - - 0x02D7A0 16:9790: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D7A1 16:9791: 67        .byte $67   ; <ラ>

- D - I - - 0x02D7A2 16:9792: 08        .byte $08   ; <く>
- D - I - - 0x02D7A3 16:9793: 01        .byte $01   ; <あ>
- D - I - - 0x02D7A4 16:9794: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D7A5 16:9795: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02D7A6 16:9796: 13        .byte $13   ; <て>
- D - I - - 0x02D7A7 16:9797: 78        .byte $78   ; <?>

- D - I - - 0x02D7A8 16:9798: 00        .byte $00
- D - I - - 0x02D7A9 16:9799: 02        .byte $02   ; <い>
- D - I - - 0x02D7AA 16:979A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D7AB 16:979B: 6F        .byte $6F   ; <ッ>

- D - I - - 0x02D7AC 16:979C: 18        .byte $18   ; <ね>
- D - I - - 0x02D7AD 16:979D: 04        .byte $04   ; <え>
- D - I - - 0x02D7AE 16:979E: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D7AF 16:979F: 44        .byte $44   ; <エ>
- D - I - - 0x02D7B0 16:97A0: 11        .byte $11   ; <ち>
- D - I - - 0x02D7B1 16:97A1: 45        .byte $45   ; <オ>
- D - I - - 0x02D7B2 16:97A2: 15        .byte $15   ; <な>
- D - I - - 0x02D7B3 16:97A3: 50        .byte $50   ; <タ>
- D - I - - 0x02D7B4 16:97A4: C3        .byte $C3   ; <バ>
- D - I - - 0x02D7B5 16:97A5: 55        .byte $55   ; <ナ>

- D - I - - 0x02D7B6 16:97A6: 38        .byte $38   ; <5>
- D - I - - 0x02D7B7 16:97A7: 05        .byte $05   ; <お>
- D - I - - 0x02D7B8 16:97A8: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D7B9 16:97A9: 43        .byte $43   ; <ウ>
- D - I - - 0x02D7BA 16:97AA: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D7BB 16:97AB: 46        .byte $46   ; <カ>
- D - I - - 0x02D7BC 16:97AC: 11        .byte $11   ; <ち>
- D - I - - 0x02D7BD 16:97AD: 47        .byte $47   ; <キ>
- D - I - - 0x02D7BE 16:97AE: 12        .byte $12   ; <つ>
- D - I - - 0x02D7BF 16:97AF: 50        .byte $50   ; <タ>
- D - I - - 0x02D7C0 16:97B0: 15        .byte $15   ; <な>
- D - I - - 0x02D7C1 16:97B1: 52        .byte $52   ; <ツ>
- D - I - - 0x02D7C2 16:97B2: 19        .byte $19   ; <の>
- D - I - - 0x02D7C3 16:97B3: 53        .byte $53   ; <テ>
- D - I - - 0x02D7C4 16:97B4: 83        .byte $83   ; <C>
- D - I - - 0x02D7C5 16:97B5: 56        .byte $56   ; <ニ>
- D - I - - 0x02D7C6 16:97B6: C3        .byte $C3   ; <バ>
- D - I - - 0x02D7C7 16:97B7: 57        .byte $57   ; <ヌ>

- D - I - - 0x02D7C8 16:97B8: 30        .byte $30   ; <ゃ>
- D - I - - 0x02D7C9 16:97B9: 06        .byte $06   ; <か>
- D - I - - 0x02D7CA 16:97BA: 01        .byte $01   ; <あ>
- D - I - - 0x02D7CB 16:97BB: 1D        .byte $1D   ; <へ>
- D - I - - 0x02D7CC 16:97BC: 05        .byte $05   ; <お>
- D - I - - 0x02D7CD 16:97BD: 48        .byte $48   ; <ク>
- D - I - - 0x02D7CE 16:97BE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D7CF 16:97BF: 49        .byte $49   ; <ケ>
- D - I - - 0x02D7D0 16:97C0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D7D1 16:97C1: 4C        .byte $4C   ; <シ>
- D - I - - 0x02D7D2 16:97C2: 12        .byte $12   ; <つ>
- D - I - - 0x02D7D3 16:97C3: 4D        .byte $4D   ; <ス>
- D - I - - 0x02D7D4 16:97C4: 16        .byte $16   ; <に>
- D - I - - 0x02D7D5 16:97C5: 58        .byte $58   ; <ネ>
- D - I - - 0x02D7D6 16:97C6: 1A        .byte $1A   ; <は>
- D - I - - 0x02D7D7 16:97C7: 59        .byte $59   ; <ノ>

- D - I - - 0x02D7D8 16:97C8: 20        .byte $20   ; <み>
- D - I - - 0x02D7D9 16:97C9: 07        .byte $07   ; <き>
- D - I - - 0x02D7DA 16:97CA: 69        .byte $69   ; <ル>
- D - I - - 0x02D7DB 16:97CB: 61        .byte $61   ; <ム>
- D - I - - 0x02D7DC 16:97CC: 01        .byte $01   ; <あ>
- D - I - - 0x02D7DD 16:97CD: 1F        .byte $1F   ; <ま>
- D - I - - 0x02D7DE 16:97CE: 05        .byte $05   ; <お>
- D - I - - 0x02D7DF 16:97CF: 4A        .byte $4A   ; <コ>
- D - I - - 0x02D7E0 16:97D0: 13        .byte $13   ; <て>
- D - I - - 0x02D7E1 16:97D1: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02D7E2 16:97D2: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D7E3 16:97D3: 5A        .byte $5A   ; <ハ>

- D - I - - 0x02D7E4 16:97D4: 10        .byte $10   ; <た>
- D - I - - 0x02D7E5 16:97D5: 08        .byte $08   ; <く>
- D - I - - 0x02D7E6 16:97D6: 69        .byte $69   ; <ル>
- D - I - - 0x02D7E7 16:97D7: 63        .byte $63   ; <モ>
- D - I - - 0x02D7E8 16:97D8: 01        .byte $01   ; <あ>
- D - I - - 0x02D7E9 16:97D9: 35        .byte $35   ; <2>
- D - I - - 0x02D7EA 16:97DA: 13        .byte $13   ; <て>
- D - I - - 0x02D7EB 16:97DB: 65        .byte $65   ; <ユ>

- D - I - - 0x02D7EC 16:97DC: 01        .byte $01   ; <あ>



off_97DD:
- D - I - - 0x02D7ED 16:97DD: 00        .byte $00
- D - I - - 0x02D7EE 16:97DE: 01        .byte $01   ; <あ>
- D - I - - 0x02D7EF 16:97DF: 80        .byte $80
- D - I - - 0x02D7F0 16:97E0: 10        .byte $10   ; <た>

- D - I - - 0x02D7F1 16:97E1: 10        .byte $10   ; <た>
- D - I - - 0x02D7F2 16:97E2: 02        .byte $02   ; <い>
- D - I - - 0x02D7F3 16:97E3: 14        .byte $14   ; <と>
- D - I - - 0x02D7F4 16:97E4: 11        .byte $11   ; <ち>
- D - I - - 0x02D7F5 16:97E5: 18        .byte $18   ; <ね>
- D - I - - 0x02D7F6 16:97E6: 14        .byte $14   ; <と>
- D - I - - 0x02D7F7 16:97E7: 80        .byte $80
- D - I - - 0x02D7F8 16:97E8: 15        .byte $15   ; <な>

- D - I - - 0x02D7F9 16:97E9: 18        .byte $18   ; <ね>
- D - I - - 0x02D7FA 16:97EA: 03        .byte $03   ; <う>
- D - I - - 0x02D7FB 16:97EB: 10        .byte $10   ; <た>
- D - I - - 0x02D7FC 16:97EC: 0C        .byte $0C   ; <し>
- D - I - - 0x02D7FD 16:97ED: 14        .byte $14   ; <と>
- D - I - - 0x02D7FE 16:97EE: 13        .byte $13   ; <て>
- D - I - - 0x02D7FF 16:97EF: 18        .byte $18   ; <ね>
- D - I - - 0x02D800 16:97F0: 16        .byte $16   ; <に>
- D - I - - 0x02D801 16:97F1: 80        .byte $80
- D - I - - 0x02D802 16:97F2: 17        .byte $17   ; <ぬ>

- D - I - - 0x02D803 16:97F3: 08        .byte $08   ; <く>
- D - I - - 0x02D804 16:97F4: 04        .byte $04   ; <え>
- D - I - - 0x02D805 16:97F5: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D806 16:97F6: 19        .byte $19   ; <の>
- D - I - - 0x02D807 16:97F7: 18        .byte $18   ; <ね>
- D - I - - 0x02D808 16:97F8: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02D809 16:97F9: 02        .byte $02   ; <い>
- D - I - - 0x02D80A 16:97FA: 7C 97     .word off_977C



off_97FC:
- D - I - - 0x02D80C 16:97FC: 08        .byte $08   ; <く>
- D - I - - 0x02D80D 16:97FD: 03        .byte $03   ; <う>
- D - I - - 0x02D80E 16:97FE: 14        .byte $14   ; <と>
- D - I - - 0x02D80F 16:97FF: 22        .byte $22   ; <め>
- D - I - - 0x02D810 16:9800: 18        .byte $18   ; <ね>
- D - I - - 0x02D811 16:9801: 23        .byte $23   ; <も>

- D - I - - 0x02D812 16:9802: 08        .byte $08   ; <く>
- D - I - - 0x02D813 16:9803: 04        .byte $04   ; <え>
- D - I - - 0x02D814 16:9804: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D815 16:9805: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D816 16:9806: 18        .byte $18   ; <ね>
- D - I - - 0x02D817 16:9807: 1A        .byte $1A   ; <は>

off_9808:
- D - I - - 0x02D818 16:9808: 08        .byte $08   ; <く>
- D - I - - 0x02D819 16:9809: 02        .byte $02   ; <い>
- D - I - - 0x02D81A 16:980A: 14        .byte $14   ; <と>
- D - I - - 0x02D81B 16:980B: 20        .byte $20   ; <み>
- D - I - - 0x02D81C 16:980C: 18        .byte $18   ; <ね>
- D - I - - 0x02D81D 16:980D: 21        .byte $21   ; <む>

- D - I - - 0x02D81E 16:980E: 08        .byte $08   ; <く>
- D - I - - 0x02D81F 16:980F: 03        .byte $03   ; <う>
- D - I - - 0x02D820 16:9810: 10        .byte $10   ; <た>
- D - I - - 0x02D821 16:9811: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D822 16:9812: 80        .byte $80
- D - I - - 0x02D823 16:9813: 26        .byte $26   ; <よ>

- D - I - - 0x02D824 16:9814: 02        .byte $02   ; <い>
- D - I - - 0x02D825 16:9815: 7C 97     .word off_977C



off_9817:
- D - I - - 0x02D827 16:9817: 08        .byte $08   ; <く>
- D - I - - 0x02D828 16:9818: 03        .byte $03   ; <う>
- D - I - - 0x02D829 16:9819: 14        .byte $14   ; <と>
- D - I - - 0x02D82A 16:981A: 29        .byte $29   ; <る>
- D - I - - 0x02D82B 16:981B: 18        .byte $18   ; <ね>
- D - I - - 0x02D82C 16:981C: 23        .byte $23   ; <も>

- D - I - - 0x02D82D 16:981D: 08        .byte $08   ; <く>
- D - I - - 0x02D82E 16:981E: 04        .byte $04   ; <え>
- D - I - - 0x02D82F 16:981F: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D830 16:9820: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02D831 16:9821: 18        .byte $18   ; <ね>
- D - I - - 0x02D832 16:9822: 1A        .byte $1A   ; <は>

- D - I - - 0x02D833 16:9823: 02        .byte $02   ; <い>
- D - I - - 0x02D834 16:9824: 08 98     .word off_9808



off_9826:
- D - I - - 0x02D836 16:9826: 00        .byte $00
- D - I - - 0x02D837 16:9827: 02        .byte $02   ; <い>
- D - I - - 0x02D838 16:9828: 14        .byte $14   ; <と>
- D - I - - 0x02D839 16:9829: 3A        .byte $3A   ; <7>

- D - I - - 0x02D83A 16:982A: 10        .byte $10   ; <た>
- D - I - - 0x02D83B 16:982B: 03        .byte $03   ; <う>
- D - I - - 0x02D83C 16:982C: 10        .byte $10   ; <た>
- D - I - - 0x02D83D 16:982D: 38        .byte $38   ; <5>
- D - I - - 0x02D83E 16:982E: 14        .byte $14   ; <と>
- D - I - - 0x02D83F 16:982F: 2C        .byte $2C   ; <わ>
- D - I - - 0x02D840 16:9830: 18        .byte $18   ; <ね>
- D - I - - 0x02D841 16:9831: 2D        .byte $2D   ; <を>

- D - I - - 0x02D842 16:9832: 08        .byte $08   ; <く>
- D - I - - 0x02D843 16:9833: 04        .byte $04   ; <え>
- D - I - - 0x02D844 16:9834: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D845 16:9835: 2E        .byte $2E   ; <ん>
- D - I - - 0x02D846 16:9836: 18        .byte $18   ; <ね>
- D - I - - 0x02D847 16:9837: 2F        .byte $2F   ; <っ>

- D - I - - 0x02D848 16:9838: 02        .byte $02   ; <い>
- D - I - - 0x02D849 16:9839: 7C 97     .word off_977C



off_983B:
- D - I - - 0x02D84B 16:983B: 08        .byte $08   ; <く>
- D - I - - 0x02D84C 16:983C: 02        .byte $02   ; <い>
- D - I - - 0x02D84D 16:983D: 14        .byte $14   ; <と>
- D - I - - 0x02D84E 16:983E: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D84F 16:983F: 18        .byte $18   ; <ね>
- D - I - - 0x02D850 16:9840: 1E        .byte $1E   ; <ほ>

- D - I - - 0x02D851 16:9841: 10        .byte $10   ; <た>
- D - I - - 0x02D852 16:9842: 03        .byte $03   ; <う>
- D - I - - 0x02D853 16:9843: 10        .byte $10   ; <た>
- D - I - - 0x02D854 16:9844: 24        .byte $24   ; <や>
- D - I - - 0x02D855 16:9845: 14        .byte $14   ; <と>
- D - I - - 0x02D856 16:9846: 25        .byte $25   ; <ゆ>
- D - I - - 0x02D857 16:9847: 18        .byte $18   ; <ね>
- D - I - - 0x02D858 16:9848: 30        .byte $30   ; <ゃ>

- D - I - - 0x02D859 16:9849: 08        .byte $08   ; <く>
- D - I - - 0x02D85A 16:984A: 04        .byte $04   ; <え>
- D - I - - 0x02D85B 16:984B: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D85C 16:984C: 27        .byte $27   ; <ら>
- D - I - - 0x02D85D 16:984D: 18        .byte $18   ; <ね>
- D - I - - 0x02D85E 16:984E: 32        .byte $32   ; <ょ>

- D - I - - 0x02D85F 16:984F: 02        .byte $02   ; <い>
- D - I - - 0x02D860 16:9850: 7C 97     .word off_977C



off_9852:
- D - I - - 0x02D862 16:9852: 08        .byte $08   ; <く>
- D - I - - 0x02D863 16:9853: 02        .byte $02   ; <い>
- D - I - - 0x02D864 16:9854: 14        .byte $14   ; <と>
- D - I - - 0x02D865 16:9855: 31        .byte $31   ; <ゅ>
- D - I - - 0x02D866 16:9856: 18        .byte $18   ; <ね>
- D - I - - 0x02D867 16:9857: 34        .byte $34   ; <1>

- D - I - - 0x02D868 16:9858: 10        .byte $10   ; <た>
- D - I - - 0x02D869 16:9859: 03        .byte $03   ; <う>
- D - I - - 0x02D86A 16:985A: 10        .byte $10   ; <た>
- D - I - - 0x02D86B 16:985B: 3B        .byte $3B   ; <8>
- D - I - - 0x02D86C 16:985C: 14        .byte $14   ; <と>
- D - I - - 0x02D86D 16:985D: 33        .byte $33   ; <0>
- D - I - - 0x02D86E 16:985E: 18        .byte $18   ; <ね>
- D - I - - 0x02D86F 16:985F: 36        .byte $36   ; <3>

- D - I - - 0x02D870 16:9860: 08        .byte $08   ; <く>
- D - I - - 0x02D871 16:9861: 04        .byte $04   ; <え>
- D - I - - 0x02D872 16:9862: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D873 16:9863: 39        .byte $39   ; <6>
- D - I - - 0x02D874 16:9864: 18        .byte $18   ; <ね>
- D - I - - 0x02D875 16:9865: 3C        .byte $3C   ; <9>

- D - I - - 0x02D876 16:9866: 02        .byte $02   ; <い>
- D - I - - 0x02D877 16:9867: 7C 97     .word off_977C



off_9869:
- D - I - - 0x02D879 16:9869: 10        .byte $10   ; <た>
- D - I - - 0x02D87A 16:986A: 02        .byte $02   ; <い>
- D - I - - 0x02D87B 16:986B: 10        .byte $10   ; <た>
- D - I - - 0x02D87C 16:986C: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02D87D 16:986D: 14        .byte $14   ; <と>
- D - I - - 0x02D87E 16:986E: 5F        .byte $5F   ; <マ>
- D - I - - 0x02D87F 16:986F: 18        .byte $18   ; <ね>
- D - I - - 0x02D880 16:9870: 12        .byte $12   ; <つ>

- D - I - - 0x02D881 16:9871: 10        .byte $10   ; <た>
- D - I - - 0x02D882 16:9872: 03        .byte $03   ; <う>
- D - I - - 0x02D883 16:9873: 10        .byte $10   ; <た>
- D - I - - 0x02D884 16:9874: 74        .byte $74   ; <ィ>
- D - I - - 0x02D885 16:9875: 14        .byte $14   ; <と>
- D - I - - 0x02D886 16:9876: 70        .byte $70   ; <ャ>
- D - I - - 0x02D887 16:9877: 18        .byte $18   ; <ね>
- D - I - - 0x02D888 16:9878: 71        .byte $71   ; <ュ>

- D - I - - 0x02D889 16:9879: 08        .byte $08   ; <く>
- D - I - - 0x02D88A 16:987A: 04        .byte $04   ; <え>
- D - I - - 0x02D88B 16:987B: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D88C 16:987C: 72        .byte $72   ; <ョ>
- D - I - - 0x02D88D 16:987D: 18        .byte $18   ; <ね>
- D - I - - 0x02D88E 16:987E: 73        .byte $73   ; <ヮ>

- D - I - - 0x02D88F 16:987F: 08        .byte $08   ; <く>
- D - I - - 0x02D890 16:9880: 02        .byte $02   ; <い>
- D - I - - 0x02D891 16:9881: 11        .byte $11   ; <ち>
- D - I - - 0x02D892 16:9882: 4B        .byte $4B   ; <サ>
- D - I - - 0x02D893 16:9883: 15        .byte $15   ; <な>
- D - I - - 0x02D894 16:9884: 4E        .byte $4E   ; <セ>

- D - I - - 0x02D895 16:9885: 00        .byte $00
- D - I - - 0x02D896 16:9886: 03        .byte $03   ; <う>
- D - I - - 0x02D897 16:9887: 11        .byte $11   ; <ち>
- D - I - - 0x02D898 16:9888: 60        .byte $60   ; <ミ>

- D - I - - 0x02D899 16:9889: 08        .byte $08   ; <く>
- D - I - - 0x02D89A 16:988A: 04        .byte $04   ; <え>
- D - I - - 0x02D89B 16:988B: 19        .byte $19   ; <の>
- D - I - - 0x02D89C 16:988C: 5C        .byte $5C   ; <フ>
- D - I - - 0x02D89D 16:988D: 81        .byte $81   ; <A>
- D - I - - 0x02D89E 16:988E: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02D89F 16:988F: 02        .byte $02   ; <い>
- D - I - - 0x02D8A0 16:9890: 8C 97     .word off_978C



off_9892:
- D - I - - 0x02D8A2 16:9892: 08        .byte $08   ; <く>
- D - I - - 0x02D8A3 16:9893: 02        .byte $02   ; <い>
- D - I - - 0x02D8A4 16:9894: 14        .byte $14   ; <と>
- D - I - - 0x02D8A5 16:9895: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02D8A6 16:9896: 18        .byte $18   ; <ね>
- D - I - - 0x02D8A7 16:9897: 76        .byte $76   ; <ォ>

- D - I - - 0x02D8A8 16:9898: 10        .byte $10   ; <た>
- D - I - - 0x02D8A9 16:9899: 03        .byte $03   ; <う>
- D - I - - 0x02D8AA 16:989A: 10        .byte $10   ; <た>
- D - I - - 0x02D8AB 16:989B: 64        .byte $64   ; <ヤ>
- D - I - - 0x02D8AC 16:989C: 14        .byte $14   ; <と>
- D - I - - 0x02D8AD 16:989D: 0D        .byte $0D   ; <す>
- D - I - - 0x02D8AE 16:989E: 18        .byte $18   ; <ね>
- D - I - - 0x02D8AF 16:989F: 75        .byte $75   ; <ェ>

- D - I - - 0x02D8B0 16:98A0: 08        .byte $08   ; <く>
- D - I - - 0x02D8B1 16:98A1: 04        .byte $04   ; <え>
- D - I - - 0x02D8B2 16:98A2: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D8B3 16:98A3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D8B4 16:98A4: 18        .byte $18   ; <ね>
- D - I - - 0x02D8B5 16:98A5: 77        .byte $77   ; <:>

- D - I - - 0x02D8B6 16:98A6: 02        .byte $02   ; <い>
- D - I - - 0x02D8B7 16:98A7: 7C 97     .word off_977C



off_98A9:
- D - I - - 0x02D8B9 16:98A9: 00        .byte $00
- D - I - - 0x02D8BA 16:98AA: 02        .byte $02   ; <い>
- D - I - - 0x02D8BB 16:98AB: 14        .byte $14   ; <と>
- D - I - - 0x02D8BC 16:98AC: 3A        .byte $3A   ; <7>

- D - I - - 0x02D8BD 16:98AD: 10        .byte $10   ; <た>
- D - I - - 0x02D8BE 16:98AE: 03        .byte $03   ; <う>
- D - I - - 0x02D8BF 16:98AF: 10        .byte $10   ; <た>
- D - I - - 0x02D8C0 16:98B0: 38        .byte $38   ; <5>
- D - I - - 0x02D8C1 16:98B1: 14        .byte $14   ; <と>
- D - I - - 0x02D8C2 16:98B2: 2C        .byte $2C   ; <わ>
- D - I - - 0x02D8C3 16:98B3: 18        .byte $18   ; <ね>
- D - I - - 0x02D8C4 16:98B4: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02D8C5 16:98B5: 08        .byte $08   ; <く>
- D - I - - 0x02D8C6 16:98B6: 04        .byte $04   ; <え>
- D - I - - 0x02D8C7 16:98B7: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D8C8 16:98B8: 39        .byte $39   ; <6>
- D - I - - 0x02D8C9 16:98B9: 18        .byte $18   ; <ね>
- D - I - - 0x02D8CA 16:98BA: 3C        .byte $3C   ; <9>

- D - I - - 0x02D8CB 16:98BB: 02        .byte $02   ; <い>
- D - I - - 0x02D8CC 16:98BC: 7C 97     .word off_977C



off_98BE:
- D - I - - 0x02D8CE 16:98BE: 08        .byte $08   ; <く>
- D - I - - 0x02D8CF 16:98BF: 02        .byte $02   ; <い>
- D - I - - 0x02D8D0 16:98C0: 14        .byte $14   ; <と>
- D - I - - 0x02D8D1 16:98C1: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D8D2 16:98C2: 18        .byte $18   ; <ね>
- D - I - - 0x02D8D3 16:98C3: 1E        .byte $1E   ; <ほ>

- D - I - - 0x02D8D4 16:98C4: 10        .byte $10   ; <た>
- D - I - - 0x02D8D5 16:98C5: 03        .byte $03   ; <う>
- D - I - - 0x02D8D6 16:98C6: 10        .byte $10   ; <た>
- D - I - - 0x02D8D7 16:98C7: 24        .byte $24   ; <や>
- D - I - - 0x02D8D8 16:98C8: 14        .byte $14   ; <と>
- D - I - - 0x02D8D9 16:98C9: 25        .byte $25   ; <ゆ>
- D - I - - 0x02D8DA 16:98CA: 18        .byte $18   ; <ね>
- D - I - - 0x02D8DB 16:98CB: 30        .byte $30   ; <ゃ>

- D - I - - 0x02D8DC 16:98CC: 08        .byte $08   ; <く>
- D - I - - 0x02D8DD 16:98CD: 04        .byte $04   ; <え>
- D - I - - 0x02D8DE 16:98CE: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D8DF 16:98CF: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D8E0 16:98D0: 18        .byte $18   ; <ね>
- D - I - - 0x02D8E1 16:98D1: 32        .byte $32   ; <ょ>

- D - I - - 0x02D8E2 16:98D2: 02        .byte $02   ; <い>
- D - I - - 0x02D8E3 16:98D3: 7C 97     .word off_977C



off_98D5:
- D - I - - 0x02D8E5 16:98D5: 08        .byte $08   ; <く>
- D - I - - 0x02D8E6 16:98D6: 03        .byte $03   ; <う>
- D - I - - 0x02D8E7 16:98D7: 14        .byte $14   ; <と>
- D - I - - 0x02D8E8 16:98D8: 22        .byte $22   ; <め>
- D - I - - 0x02D8E9 16:98D9: 18        .byte $18   ; <ね>
- D - I - - 0x02D8EA 16:98DA: 28        .byte $28   ; <り>

- D - I - - 0x02D8EB 16:98DB: 08        .byte $08   ; <く>
- D - I - - 0x02D8EC 16:98DC: 04        .byte $04   ; <え>
- D - I - - 0x02D8ED 16:98DD: 17        .byte $17   ; <ぬ>
- D - I - - 0x02D8EE 16:98DE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D8EF 16:98DF: 18        .byte $18   ; <ね>
- D - I - - 0x02D8F0 16:98E0: 2A        .byte $2A   ; <れ>

- D - I - - 0x02D8F1 16:98E1: 02        .byte $02   ; <い>
- D - I - - 0x02D8F2 16:98E2: 08 98     .word off_9808



off_98E4_3F:
- D - I - - 0x02D8F4 16:98E4: 00        .byte $00
- D - I - - 0x02D8F5 16:98E5: 09        .byte $09   ; <け>
- D - I - - 0x02D8F6 16:98E6: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D8F7 16:98E7: 69        .byte $69   ; <ル>

- D - I - - 0x02D8F8 16:98E8: 08        .byte $08   ; <く>
- D - I - - 0x02D8F9 16:98E9: 16        .byte $16   ; <に>
- D - I - - 0x02D8FA 16:98EA: A3        .byte $A3   ; <げ>
- D - I - - 0x02D8FB 16:98EB: 3F        .byte $3F   ; <•>
- D - I - - 0x02D8FC 16:98EC: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D8FD 16:98ED: 6A        .byte $6A   ; <レ>

- D - I - - 0x02D8FE 16:98EE: 08        .byte $08   ; <く>
- D - I - - 0x02D8FF 16:98EF: 09        .byte $09   ; <け>
- D - I - - 0x02D900 16:98F0: 9F        .byte $9F
- D - I - - 0x02D901 16:98F1: 7D        .byte $7D   ; <ー>
- D - I - - 0x02D902 16:98F2: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D903 16:98F3: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02D904 16:98F4: 18        .byte $18   ; <ね>
- D - I - - 0x02D905 16:98F5: 16        .byte $16   ; <に>
- D - I - - 0x02D906 16:98F6: 9F        .byte $9F
- D - I - - 0x02D907 16:98F7: BE        .byte $BE   ; <ダ>
- D - I - - 0x02D908 16:98F8: A3        .byte $A3   ; <げ>
- D - I - - 0x02D909 16:98F9: BF        .byte $BF   ; <ヂ>
- D - I - - 0x02D90A 16:98FA: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D90B 16:98FB: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D90C 16:98FC: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D90D 16:98FD: 6E        .byte $6E   ; <ン>

- D - I - - 0x02D90E 16:98FE: 02        .byte $02   ; <い>
- D - I - - 0x02D90F 16:98FF: 43 97     .word off_9743



off_9901_40:
- D - I - - 0x02D911 16:9901: 00        .byte $00
- D - I - - 0x02D912 16:9902: 09        .byte $09   ; <け>
- D - I - - 0x02D913 16:9903: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D914 16:9904: 69        .byte $69   ; <ル>

- D - I - - 0x02D915 16:9905: 08        .byte $08   ; <く>
- D - I - - 0x02D916 16:9906: 16        .byte $16   ; <に>
- D - I - - 0x02D917 16:9907: A3        .byte $A3   ; <げ>
- D - I - - 0x02D918 16:9908: 3F        .byte $3F   ; <•>
- D - I - - 0x02D919 16:9909: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D91A 16:990A: 6A        .byte $6A   ; <レ>

- D - I - - 0x02D91B 16:990B: 08        .byte $08   ; <く>
- D - I - - 0x02D91C 16:990C: 09        .byte $09   ; <け>
- D - I - - 0x02D91D 16:990D: 9F        .byte $9F
- D - I - - 0x02D91E 16:990E: 7C        .byte $7C   ; <~>
- D - I - - 0x02D91F 16:990F: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D920 16:9910: 79        .byte $79   ; <!>

- D - I - - 0x02D921 16:9911: 18        .byte $18   ; <ね>
- D - I - - 0x02D922 16:9912: 16        .byte $16   ; <に>
- D - I - - 0x02D923 16:9913: 9F        .byte $9F
- D - I - - 0x02D924 16:9914: 7E        .byte $7E   ; <.>
- D - I - - 0x02D925 16:9915: A3        .byte $A3   ; <げ>
- D - I - - 0x02D926 16:9916: 7F        .byte $7F   ; <,>
- D - I - - 0x02D927 16:9917: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02D928 16:9918: 7A        .byte $7A   ; <、>
- D - I - - 0x02D929 16:9919: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02D92A 16:991A: 7B        .byte $7B   ; <。>

- D - I - - 0x02D92B 16:991B: 02        .byte $02   ; <い>
- D - I - - 0x02D92C 16:991C: 43 97     .word off_9743



off_991E_41:
- D - I - - 0x02D92E 16:991E: 03        .byte $03   ; <う>
- D - I - - 0x02D92F 16:991F: 2B 99     .word off_992B
- D - I - - 0x02D931 16:9921: 59 99     .word off_9959
- D - I - - 0x02D933 16:9923: 4C 99     .word off_994C
- D - I - - 0x02D935 16:9925: 2B 99     .word off_992B
- D - I - - 0x02D937 16:9927: 2B 99     .word off_992B
- D - I - - 0x02D939 16:9929: 59 99     .word off_9959



off_992B:
- D - I - - 0x02D93B 16:992B: 08        .byte $08   ; <く>
- D - I - - 0x02D93C 16:992C: 05        .byte $05   ; <お>
- D - I - - 0x02D93D 16:992D: 06        .byte $06   ; <か>
- D - I - - 0x02D93E 16:992E: 50        .byte $50   ; <タ>
- D - I - - 0x02D93F 16:992F: 09        .byte $09   ; <け>
- D - I - - 0x02D940 16:9930: 51        .byte $51   ; <チ>

- D - I - - 0x02D941 16:9931: 00        .byte $00
- D - I - - 0x02D942 16:9932: 06        .byte $06   ; <か>
- D - I - - 0x02D943 16:9933: 06        .byte $06   ; <か>
- D - I - - 0x02D944 16:9934: 52        .byte $52   ; <ツ>
; продолжение


off_9935:
- D - I - - 0x02D945 16:9935: 08        .byte $08   ; <く>
- D - I - - 0x02D946 16:9936: 05        .byte $05   ; <お>
- D - I - - 0x02D947 16:9937: 0D        .byte $0D   ; <す>
- D - I - - 0x02D948 16:9938: 54        .byte $54   ; <ト>
- D - I - - 0x02D949 16:9939: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D94A 16:993A: 02        .byte $02   ; <い>

- D - I - - 0x02D94B 16:993B: 08        .byte $08   ; <く>
- D - I - - 0x02D94C 16:993C: 06        .byte $06   ; <か>
- D - I - - 0x02D94D 16:993D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D94E 16:993E: 53        .byte $53   ; <テ>
- D - I - - 0x02D94F 16:993F: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D950 16:9940: 56        .byte $56   ; <ニ>

- D - I - - 0x02D951 16:9941: 10        .byte $10   ; <た>
- D - I - - 0x02D952 16:9942: 07        .byte $07   ; <き>
- D - I - - 0x02D953 16:9943: 06        .byte $06   ; <か>
- D - I - - 0x02D954 16:9944: 58        .byte $58   ; <ネ>
- D - I - - 0x02D955 16:9945: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D956 16:9946: 59        .byte $59   ; <ノ>
- D - I - - 0x02D957 16:9947: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D958 16:9948: 5C        .byte $5C   ; <フ>

- D - I - - 0x02D959 16:9949: 02        .byte $02   ; <い>
- D - I - - 0x02D95A 16:994A: 73 99     .word off_9973



off_994C:
- D - I - - 0x02D95C 16:994C: 08        .byte $08   ; <く>
- D - I - - 0x02D95D 16:994D: 05        .byte $05   ; <お>
- D - I - - 0x02D95E 16:994E: 06        .byte $06   ; <か>
- D - I - - 0x02D95F 16:994F: 57        .byte $57   ; <ヌ>
- D - I - - 0x02D960 16:9950: 09        .byte $09   ; <け>
- D - I - - 0x02D961 16:9951: 55        .byte $55   ; <ナ>

- D - I - - 0x02D962 16:9952: 00        .byte $00
- D - I - - 0x02D963 16:9953: 06        .byte $06   ; <か>
- D - I - - 0x02D964 16:9954: 06        .byte $06   ; <か>
- D - I - - 0x02D965 16:9955: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02D966 16:9956: 02        .byte $02   ; <い>
- D - I - - 0x02D967 16:9957: 35 99     .word off_9935



off_9959:
- D - I - - 0x02D969 16:9959: 18        .byte $18   ; <ね>
- D - I - - 0x02D96A 16:995A: 05        .byte $05   ; <お>
- D - I - - 0x02D96B 16:995B: 06        .byte $06   ; <か>
- D - I - - 0x02D96C 16:995C: 63        .byte $63   ; <モ>
- D - I - - 0x02D96D 16:995D: 09        .byte $09   ; <け>
- D - I - - 0x02D96E 16:995E: 66        .byte $66   ; <ヨ>
- D - I - - 0x02D96F 16:995F: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D970 16:9960: 02        .byte $02   ; <い>
- D - I - - 0x02D971 16:9961: 0D        .byte $0D   ; <す>
- D - I - - 0x02D972 16:9962: 67        .byte $67   ; <ラ>

- D - I - - 0x02D973 16:9963: 10        .byte $10   ; <た>
- D - I - - 0x02D974 16:9964: 06        .byte $06   ; <か>
- D - I - - 0x02D975 16:9965: 06        .byte $06   ; <か>
- D - I - - 0x02D976 16:9966: 52        .byte $52   ; <ツ>
- D - I - - 0x02D977 16:9967: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D978 16:9968: 53        .byte $53   ; <テ>
- D - I - - 0x02D979 16:9969: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D97A 16:996A: 56        .byte $56   ; <ニ>

- D - I - - 0x02D97B 16:996B: 10        .byte $10   ; <た>
- D - I - - 0x02D97C 16:996C: 07        .byte $07   ; <き>
- D - I - - 0x02D97D 16:996D: 06        .byte $06   ; <か>
- D - I - - 0x02D97E 16:996E: 58        .byte $58   ; <ネ>
- D - I - - 0x02D97F 16:996F: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D980 16:9970: 59        .byte $59   ; <ノ>
- D - I - - 0x02D981 16:9971: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D982 16:9972: 5C        .byte $5C   ; <フ>
; продолжение


off_9973:
- D - I - - 0x02D983 16:9973: 03        .byte $03   ; <う>
- D - I - - 0x02D984 16:9974: 80 99     .word off_9980
- D - I - - 0x02D986 16:9976: C5 99     .word off_99C5
- D - I - - 0x02D988 16:9978: 0E 9A     .word off_9A0E
- D - I - - 0x02D98A 16:997A: 5B 9A     .word off_9A5B
- D - I - - 0x02D98C 16:997C: A0 9A     .word off_9AA0
- D - I - - 0x02D98E 16:997E: E7 9A     .word off_9AE7



off_9980:
- D - I - - 0x02D990 16:9980: 10        .byte $10   ; <た>
- D - I - - 0x02D991 16:9981: 03        .byte $03   ; <う>
- D - I - - 0x02D992 16:9982: 16        .byte $16   ; <に>
- D - I - - 0x02D993 16:9983: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D994 16:9984: 1A        .byte $1A   ; <は>
- D - I - - 0x02D995 16:9985: 1A        .byte $1A   ; <は>
- D - I - - 0x02D996 16:9986: 83        .byte $83   ; <C>
- D - I - - 0x02D997 16:9987: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02D998 16:9988: 00        .byte $00
- D - I - - 0x02D999 16:9989: 04        .byte $04   ; <え>
- D - I - - 0x02D99A 16:998A: 16        .byte $16   ; <に>
- D - I - - 0x02D99B 16:998B: 25        .byte $25   ; <ゆ>

- D - I - - 0x02D99C 16:998C: 08        .byte $08   ; <く>
- D - I - - 0x02D99D 16:998D: 05        .byte $05   ; <お>
- D - I - - 0x02D99E 16:998E: 11        .byte $11   ; <ち>
- D - I - - 0x02D99F 16:998F: 26        .byte $26   ; <よ>
- D - I - - 0x02D9A0 16:9990: 12        .byte $12   ; <つ>
- D - I - - 0x02D9A1 16:9991: 2A        .byte $2A   ; <れ>

- D - I - - 0x02D9A2 16:9992: 00        .byte $00
- D - I - - 0x02D9A3 16:9993: 06        .byte $06   ; <か>
- D - I - - 0x02D9A4 16:9994: 12        .byte $12   ; <つ>
- D - I - - 0x02D9A5 16:9995: 2C        .byte $2C   ; <わ>
; продолжение


off_9996:
- D - I - - 0x02D9A6 16:9996: 10        .byte $10   ; <た>
- D - I - - 0x02D9A7 16:9997: 00        .byte $00
- D - I - - 0x02D9A8 16:9998: 12        .byte $12   ; <つ>
- D - I - - 0x02D9A9 16:9999: 04        .byte $04   ; <え>
- D - I - - 0x02D9AA 16:999A: 16        .byte $16   ; <に>
- D - I - - 0x02D9AB 16:999B: 05        .byte $05   ; <お>
- D - I - - 0x02D9AC 16:999C: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D9AD 16:999D: 10        .byte $10   ; <た>

- D - I - - 0x02D9AE 16:999E: 10        .byte $10   ; <た>
- D - I - - 0x02D9AF 16:999F: 01        .byte $01   ; <あ>
- D - I - - 0x02D9B0 16:99A0: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D9B1 16:99A1: 03        .byte $03   ; <う>
- D - I - - 0x02D9B2 16:99A2: 12        .byte $12   ; <つ>
- D - I - - 0x02D9B3 16:99A3: 06        .byte $06   ; <か>
- D - I - - 0x02D9B4 16:99A4: 16        .byte $16   ; <に>
- D - I - - 0x02D9B5 16:99A5: 07        .byte $07   ; <き>

- D - I - - 0x02D9B6 16:99A6: 18        .byte $18   ; <ね>
- D - I - - 0x02D9B7 16:99A7: 02        .byte $02   ; <い>
- D - I - - 0x02D9B8 16:99A8: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D9B9 16:99A9: 08        .byte $08   ; <く>
- D - I - - 0x02D9BA 16:99AA: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D9BB 16:99AB: 09        .byte $09   ; <け>
- D - I - - 0x02D9BC 16:99AC: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D9BD 16:99AD: 02        .byte $02   ; <い>
- D - I - - 0x02D9BE 16:99AE: 12        .byte $12   ; <つ>
- D - I - - 0x02D9BF 16:99AF: 0C        .byte $0C   ; <し>

- D - I - - 0x02D9C0 16:99B0: 18        .byte $18   ; <ね>
- D - I - - 0x02D9C1 16:99B1: 03        .byte $03   ; <う>
- D - I - - 0x02D9C2 16:99B2: 07        .byte $07   ; <き>
- D - I - - 0x02D9C3 16:99B3: 22        .byte $22   ; <め>
- D - I - - 0x02D9C4 16:99B4: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D9C5 16:99B5: 0A        .byte $0A   ; <こ>
- D - I - - 0x02D9C6 16:99B6: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D9C7 16:99B7: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D9C8 16:99B8: 11        .byte $11   ; <ち>
- D - I - - 0x02D9C9 16:99B9: 0E        .byte $0E   ; <せ>

- D - I - - 0x02D9CA 16:99BA: 18        .byte $18   ; <ね>
- D - I - - 0x02D9CB 16:99BB: 04        .byte $04   ; <え>
- D - I - - 0x02D9CC 16:99BC: 06        .byte $06   ; <か>
- D - I - - 0x02D9CD 16:99BD: 28        .byte $28   ; <り>
- D - I - - 0x02D9CE 16:99BE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02D9CF 16:99BF: 20        .byte $20   ; <み>
- D - I - - 0x02D9D0 16:99C0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D9D1 16:99C1: 21        .byte $21   ; <む>
- D - I - - 0x02D9D2 16:99C2: 11        .byte $11   ; <ち>
- D - I - - 0x02D9D3 16:99C3: 24        .byte $24   ; <や>

- D - I - - 0x02D9D4 16:99C4: 01        .byte $01   ; <あ>



off_99C5:
- D - I - - 0x02D9D5 16:99C5: 10        .byte $10   ; <た>
- D - I - - 0x02D9D6 16:99C6: 03        .byte $03   ; <う>
- D - I - - 0x02D9D7 16:99C7: 16        .byte $16   ; <に>
- D - I - - 0x02D9D8 16:99C8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02D9D9 16:99C9: 1A        .byte $1A   ; <は>
- D - I - - 0x02D9DA 16:99CA: 1A        .byte $1A   ; <は>
- D - I - - 0x02D9DB 16:99CB: 83        .byte $83   ; <C>
- D - I - - 0x02D9DC 16:99CC: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02D9DD 16:99CD: 00        .byte $00
- D - I - - 0x02D9DE 16:99CE: 04        .byte $04   ; <え>
- D - I - - 0x02D9DF 16:99CF: 16        .byte $16   ; <に>
- D - I - - 0x02D9E0 16:99D0: 25        .byte $25   ; <ゆ>

- D - I - - 0x02D9E1 16:99D1: 08        .byte $08   ; <く>
- D - I - - 0x02D9E2 16:99D2: 05        .byte $05   ; <お>
- D - I - - 0x02D9E3 16:99D3: 11        .byte $11   ; <ち>
- D - I - - 0x02D9E4 16:99D4: 18        .byte $18   ; <ね>
- D - I - - 0x02D9E5 16:99D5: 12        .byte $12   ; <つ>
- D - I - - 0x02D9E6 16:99D6: 2A        .byte $2A   ; <れ>

- D - I - - 0x02D9E7 16:99D7: 00        .byte $00
- D - I - - 0x02D9E8 16:99D8: 06        .byte $06   ; <か>
- D - I - - 0x02D9E9 16:99D9: 12        .byte $12   ; <つ>
- D - I - - 0x02D9EA 16:99DA: 2C        .byte $2C   ; <わ>
; продолжение


off_99DB:
- D - I - - 0x02D9EB 16:99DB: 10        .byte $10   ; <た>
- D - I - - 0x02D9EC 16:99DC: 00        .byte $00
- D - I - - 0x02D9ED 16:99DD: 12        .byte $12   ; <つ>
- D - I - - 0x02D9EE 16:99DE: 04        .byte $04   ; <え>
- D - I - - 0x02D9EF 16:99DF: 16        .byte $16   ; <に>
- D - I - - 0x02D9F0 16:99E0: 05        .byte $05   ; <お>
- D - I - - 0x02D9F1 16:99E1: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02D9F2 16:99E2: 10        .byte $10   ; <た>

- D - I - - 0x02D9F3 16:99E3: 10        .byte $10   ; <た>
- D - I - - 0x02D9F4 16:99E4: 01        .byte $01   ; <あ>
- D - I - - 0x02D9F5 16:99E5: 0E        .byte $0E   ; <せ>
- D - I - - 0x02D9F6 16:99E6: 03        .byte $03   ; <う>
- D - I - - 0x02D9F7 16:99E7: 12        .byte $12   ; <つ>
- D - I - - 0x02D9F8 16:99E8: 06        .byte $06   ; <か>
- D - I - - 0x02D9F9 16:99E9: 16        .byte $16   ; <に>
- D - I - - 0x02D9FA 16:99EA: 07        .byte $07   ; <き>

- D - I - - 0x02D9FB 16:99EB: 18        .byte $18   ; <ね>
- D - I - - 0x02D9FC 16:99EC: 02        .byte $02   ; <い>
- D - I - - 0x02D9FD 16:99ED: 08        .byte $08   ; <く>
- D - I - - 0x02D9FE 16:99EE: 11        .byte $11   ; <ち>
- D - I - - 0x02D9FF 16:99EF: 0C        .byte $0C   ; <し>
- D - I - - 0x02DA00 16:99F0: 14        .byte $14   ; <と>
- D - I - - 0x02DA01 16:99F1: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DA02 16:99F2: 02        .byte $02   ; <い>
- D - I - - 0x02DA03 16:99F3: 12        .byte $12   ; <つ>
- D - I - - 0x02DA04 16:99F4: 0C        .byte $0C   ; <し>

- D - I - - 0x02DA05 16:99F5: 20        .byte $20   ; <み>
- D - I - - 0x02DA06 16:99F6: 03        .byte $03   ; <う>
- D - I - - 0x02DA07 16:99F7: 04        .byte $04   ; <え>
- D - I - - 0x02DA08 16:99F8: 12        .byte $12   ; <つ>
- D - I - - 0x02DA09 16:99F9: 08        .byte $08   ; <く>
- D - I - - 0x02DA0A 16:99FA: 13        .byte $13   ; <て>
- D - I - - 0x02DA0B 16:99FB: 0C        .byte $0C   ; <し>
- D - I - - 0x02DA0C 16:99FC: 16        .byte $16   ; <に>
- D - I - - 0x02DA0D 16:99FD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DA0E 16:99FE: 02        .byte $02   ; <い>
- D - I - - 0x02DA0F 16:99FF: 11        .byte $11   ; <ち>
- D - I - - 0x02DA10 16:9A00: 0E        .byte $0E   ; <せ>

- D - I - - 0x02DA11 16:9A01: 20        .byte $20   ; <み>
- D - I - - 0x02DA12 16:9A02: 04        .byte $04   ; <え>
- D - I - - 0x02DA13 16:9A03: 06        .byte $06   ; <か>
- D - I - - 0x02DA14 16:9A04: 28        .byte $28   ; <り>
- D - I - - 0x02DA15 16:9A05: 08        .byte $08   ; <く>
- D - I - - 0x02DA16 16:9A06: 19        .byte $19   ; <の>
- D - I - - 0x02DA17 16:9A07: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DA18 16:9A08: 02        .byte $02   ; <い>
- D - I - - 0x02DA19 16:9A09: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DA1A 16:9A0A: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02DA1B 16:9A0B: 11        .byte $11   ; <ち>
- D - I - - 0x02DA1C 16:9A0C: 0D        .byte $0D   ; <す>

- D - I - - 0x02DA1D 16:9A0D: 01        .byte $01   ; <あ>



off_9A0E:
- D - I - - 0x02DA1E 16:9A0E: 18        .byte $18   ; <ね>
- D - I - - 0x02DA1F 16:9A0F: 03        .byte $03   ; <う>
- D - I - - 0x02DA20 16:9A10: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DA21 16:9A11: 33        .byte $33   ; <0>
- D - I - - 0x02DA22 16:9A12: 16        .byte $16   ; <に>
- D - I - - 0x02DA23 16:9A13: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02DA24 16:9A14: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DA25 16:9A15: 36        .byte $36   ; <3>
- D - I - - 0x02DA26 16:9A16: 83        .byte $83   ; <C>
- D - I - - 0x02DA27 16:9A17: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02DA28 16:9A18: 08        .byte $08   ; <く>
- D - I - - 0x02DA29 16:9A19: 04        .byte $04   ; <え>
- D - I - - 0x02DA2A 16:9A1A: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DA2B 16:9A1B: 39        .byte $39   ; <6>
- D - I - - 0x02DA2C 16:9A1C: 16        .byte $16   ; <に>
- D - I - - 0x02DA2D 16:9A1D: 2F        .byte $2F   ; <っ>

- D - I - - 0x02DA2E 16:9A1E: 08        .byte $08   ; <く>
- D - I - - 0x02DA2F 16:9A1F: 05        .byte $05   ; <お>
- D - I - - 0x02DA30 16:9A20: 11        .byte $11   ; <ち>
- D - I - - 0x02DA31 16:9A21: 26        .byte $26   ; <よ>
- D - I - - 0x02DA32 16:9A22: 12        .byte $12   ; <つ>
- D - I - - 0x02DA33 16:9A23: 2A        .byte $2A   ; <れ>

- D - I - - 0x02DA34 16:9A24: 00        .byte $00
- D - I - - 0x02DA35 16:9A25: 06        .byte $06   ; <か>
- D - I - - 0x02DA36 16:9A26: 12        .byte $12   ; <つ>
- D - I - - 0x02DA37 16:9A27: 2C        .byte $2C   ; <わ>
; продолжение


off_9A28:
- D - I - - 0x02DA38 16:9A28: 10        .byte $10   ; <た>
- D - I - - 0x02DA39 16:9A29: 00        .byte $00
- D - I - - 0x02DA3A 16:9A2A: 13        .byte $13   ; <て>
- D - I - - 0x02DA3B 16:9A2B: 1F        .byte $1F   ; <ま>
- D - I - - 0x02DA3C 16:9A2C: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DA3D 16:9A2D: 27        .byte $27   ; <ら>
- D - I - - 0x02DA3E 16:9A2E: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DA3F 16:9A2F: 10        .byte $10   ; <た>

- D - I - - 0x02DA40 16:9A30: 20        .byte $20   ; <み>
- D - I - - 0x02DA41 16:9A31: 01        .byte $01   ; <あ>
- D - I - - 0x02DA42 16:9A32: 04        .byte $04   ; <え>
- D - I - - 0x02DA43 16:9A33: 30        .byte $30   ; <ゃ>
- D - I - - 0x02DA44 16:9A34: 08        .byte $08   ; <く>
- D - I - - 0x02DA45 16:9A35: 31        .byte $31   ; <ゅ>
- D - I - - 0x02DA46 16:9A36: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DA47 16:9A37: 34        .byte $34   ; <1>
- D - I - - 0x02DA48 16:9A38: 12        .byte $12   ; <つ>
- D - I - - 0x02DA49 16:9A39: 35        .byte $35   ; <2>
- D - I - - 0x02DA4A 16:9A3A: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DA4B 16:9A3B: 2D        .byte $2D   ; <を>

- D - I - - 0x02DA4C 16:9A3C: 18        .byte $18   ; <ね>
- D - I - - 0x02DA4D 16:9A3D: 02        .byte $02   ; <い>
- D - I - - 0x02DA4E 16:9A3E: 04        .byte $04   ; <え>
- D - I - - 0x02DA4F 16:9A3F: 32        .byte $32   ; <ょ>
- D - I - - 0x02DA50 16:9A40: 08        .byte $08   ; <く>
- D - I - - 0x02DA51 16:9A41: 01        .byte $01   ; <あ>
- D - I - - 0x02DA52 16:9A42: 0C        .byte $0C   ; <し>
- D - I - - 0x02DA53 16:9A43: 01        .byte $01   ; <あ>
- D - I - - 0x02DA54 16:9A44: 12        .byte $12   ; <つ>
- D - I - - 0x02DA55 16:9A45: 37        .byte $37   ; <4>

- D - I - - 0x02DA56 16:9A46: 18        .byte $18   ; <ね>
- D - I - - 0x02DA57 16:9A47: 03        .byte $03   ; <う>
- D - I - - 0x02DA58 16:9A48: 04        .byte $04   ; <え>
- D - I - - 0x02DA59 16:9A49: 38        .byte $38   ; <5>
- D - I - - 0x02DA5A 16:9A4A: 08        .byte $08   ; <く>
- D - I - - 0x02DA5B 16:9A4B: 3C        .byte $3C   ; <9>
- D - I - - 0x02DA5C 16:9A4C: 0C        .byte $0C   ; <し>
- D - I - - 0x02DA5D 16:9A4D: 3C        .byte $3C   ; <9>
- D - I - - 0x02DA5E 16:9A4E: 11        .byte $11   ; <ち>
- D - I - - 0x02DA5F 16:9A4F: 3D        .byte $3D   ; <+>

- D - I - - 0x02DA60 16:9A50: 18        .byte $18   ; <ね>
- D - I - - 0x02DA61 16:9A51: 04        .byte $04   ; <え>
- D - I - - 0x02DA62 16:9A52: 06        .byte $06   ; <か>
- D - I - - 0x02DA63 16:9A53: 3A        .byte $3A   ; <7>
- D - I - - 0x02DA64 16:9A54: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DA65 16:9A55: 3B        .byte $3B   ; <8>
- D - I - - 0x02DA66 16:9A56: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DA67 16:9A57: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02DA68 16:9A58: 11        .byte $11   ; <ち>
- D - I - - 0x02DA69 16:9A59: 3F        .byte $3F   ; <•>

- D - I - - 0x02DA6A 16:9A5A: 01        .byte $01   ; <あ>



off_9A5B:
- D - I - - 0x02DA6B 16:9A5B: 10        .byte $10   ; <た>
- D - I - - 0x02DA6C 16:9A5C: 03        .byte $03   ; <う>
- D - I - - 0x02DA6D 16:9A5D: 16        .byte $16   ; <に>
- D - I - - 0x02DA6E 16:9A5E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DA6F 16:9A5F: 1A        .byte $1A   ; <は>
- D - I - - 0x02DA70 16:9A60: 1A        .byte $1A   ; <は>
- D - I - - 0x02DA71 16:9A61: 83        .byte $83   ; <C>
- D - I - - 0x02DA72 16:9A62: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02DA73 16:9A63: 00        .byte $00
- D - I - - 0x02DA74 16:9A64: 04        .byte $04   ; <え>
- D - I - - 0x02DA75 16:9A65: 16        .byte $16   ; <に>
- D - I - - 0x02DA76 16:9A66: 25        .byte $25   ; <ゆ>

- D - I - - 0x02DA77 16:9A67: 08        .byte $08   ; <く>
- D - I - - 0x02DA78 16:9A68: 05        .byte $05   ; <お>
- D - I - - 0x02DA79 16:9A69: 11        .byte $11   ; <ち>
- D - I - - 0x02DA7A 16:9A6A: 26        .byte $26   ; <よ>
- D - I - - 0x02DA7B 16:9A6B: 12        .byte $12   ; <つ>
- D - I - - 0x02DA7C 16:9A6C: 2A        .byte $2A   ; <れ>

- D - I - - 0x02DA7D 16:9A6D: 00        .byte $00
- D - I - - 0x02DA7E 16:9A6E: 06        .byte $06   ; <か>
- D - I - - 0x02DA7F 16:9A6F: 12        .byte $12   ; <つ>
- D - I - - 0x02DA80 16:9A70: 2C        .byte $2C   ; <わ>
; продолжение


off_9A71:
- D - I - - 0x02DA81 16:9A71: 10        .byte $10   ; <た>
- D - I - - 0x02DA82 16:9A72: 00        .byte $00
- D - I - - 0x02DA83 16:9A73: 12        .byte $12   ; <つ>
- D - I - - 0x02DA84 16:9A74: 04        .byte $04   ; <え>
- D - I - - 0x02DA85 16:9A75: 16        .byte $16   ; <に>
- D - I - - 0x02DA86 16:9A76: 05        .byte $05   ; <お>
- D - I - - 0x02DA87 16:9A77: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DA88 16:9A78: 10        .byte $10   ; <た>

- D - I - - 0x02DA89 16:9A79: 10        .byte $10   ; <た>
- D - I - - 0x02DA8A 16:9A7A: 01        .byte $01   ; <あ>
- D - I - - 0x02DA8B 16:9A7B: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DA8C 16:9A7C: 03        .byte $03   ; <う>
- D - I - - 0x02DA8D 16:9A7D: 12        .byte $12   ; <つ>
- D - I - - 0x02DA8E 16:9A7E: 06        .byte $06   ; <か>
- D - I - - 0x02DA8F 16:9A7F: 16        .byte $16   ; <に>
- D - I - - 0x02DA90 16:9A80: 07        .byte $07   ; <き>

- D - I - - 0x02DA91 16:9A81: 18        .byte $18   ; <ね>
- D - I - - 0x02DA92 16:9A82: 02        .byte $02   ; <い>
- D - I - - 0x02DA93 16:9A83: 08        .byte $08   ; <く>
- D - I - - 0x02DA94 16:9A84: 11        .byte $11   ; <ち>
- D - I - - 0x02DA95 16:9A85: 0C        .byte $0C   ; <し>
- D - I - - 0x02DA96 16:9A86: 14        .byte $14   ; <と>
- D - I - - 0x02DA97 16:9A87: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DA98 16:9A88: 02        .byte $02   ; <い>
- D - I - - 0x02DA99 16:9A89: 12        .byte $12   ; <つ>
- D - I - - 0x02DA9A 16:9A8A: 0C        .byte $0C   ; <し>

- D - I - - 0x02DA9B 16:9A8B: 18        .byte $18   ; <ね>
- D - I - - 0x02DA9C 16:9A8C: 03        .byte $03   ; <う>
- D - I - - 0x02DA9D 16:9A8D: 04        .byte $04   ; <え>
- D - I - - 0x02DA9E 16:9A8E: 15        .byte $15   ; <な>
- D - I - - 0x02DA9F 16:9A8F: 08        .byte $08   ; <く>
- D - I - - 0x02DAA0 16:9A90: 29        .byte $29   ; <る>
- D - I - - 0x02DAA1 16:9A91: 0C        .byte $0C   ; <し>
- D - I - - 0x02DAA2 16:9A92: 23        .byte $23   ; <も>
- D - I - - 0x02DAA3 16:9A93: 11        .byte $11   ; <ち>
- D - I - - 0x02DAA4 16:9A94: 0E        .byte $0E   ; <せ>

- D - I - - 0x02DAA5 16:9A95: 18        .byte $18   ; <ね>
- D - I - - 0x02DAA6 16:9A96: 04        .byte $04   ; <え>
- D - I - - 0x02DAA7 16:9A97: 04        .byte $04   ; <え>
- D - I - - 0x02DAA8 16:9A98: 44        .byte $44   ; <エ>
- D - I - - 0x02DAA9 16:9A99: 08        .byte $08   ; <く>
- D - I - - 0x02DAAA 16:9A9A: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02DAAB 16:9A9B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DAAC 16:9A9C: 2E        .byte $2E   ; <ん>
- D - I - - 0x02DAAD 16:9A9D: 11        .byte $11   ; <ち>
- D - I - - 0x02DAAE 16:9A9E: 24        .byte $24   ; <や>

- D - I - - 0x02DAAF 16:9A9F: 01        .byte $01   ; <あ>



off_9AA0:
- D - I - - 0x02DAB0 16:9AA0: 10        .byte $10   ; <た>
- D - I - - 0x02DAB1 16:9AA1: 03        .byte $03   ; <う>
- D - I - - 0x02DAB2 16:9AA2: 16        .byte $16   ; <に>
- D - I - - 0x02DAB3 16:9AA3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DAB4 16:9AA4: 1A        .byte $1A   ; <は>
- D - I - - 0x02DAB5 16:9AA5: 1A        .byte $1A   ; <は>
- D - I - - 0x02DAB6 16:9AA6: 83        .byte $83   ; <C>
- D - I - - 0x02DAB7 16:9AA7: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02DAB8 16:9AA8: 00        .byte $00
- D - I - - 0x02DAB9 16:9AA9: 04        .byte $04   ; <え>
- D - I - - 0x02DABA 16:9AAA: 16        .byte $16   ; <に>
- D - I - - 0x02DABB 16:9AAB: 25        .byte $25   ; <ゆ>

- D - I - - 0x02DABC 16:9AAC: 08        .byte $08   ; <く>
- D - I - - 0x02DABD 16:9AAD: 05        .byte $05   ; <お>
- D - I - - 0x02DABE 16:9AAE: 11        .byte $11   ; <ち>
- D - I - - 0x02DABF 16:9AAF: 26        .byte $26   ; <よ>
- D - I - - 0x02DAC0 16:9AB0: 12        .byte $12   ; <つ>
- D - I - - 0x02DAC1 16:9AB1: 2A        .byte $2A   ; <れ>

- D - I - - 0x02DAC2 16:9AB2: 00        .byte $00
- D - I - - 0x02DAC3 16:9AB3: 06        .byte $06   ; <か>
- D - I - - 0x02DAC4 16:9AB4: 12        .byte $12   ; <つ>
- D - I - - 0x02DAC5 16:9AB5: 2C        .byte $2C   ; <わ>
; продолжение


off_9AB6:
- D - I - - 0x02DAC6 16:9AB6: 10        .byte $10   ; <た>
- D - I - - 0x02DAC7 16:9AB7: 00        .byte $00
- D - I - - 0x02DAC8 16:9AB8: 12        .byte $12   ; <つ>
- D - I - - 0x02DAC9 16:9AB9: 04        .byte $04   ; <え>
- D - I - - 0x02DACA 16:9ABA: 16        .byte $16   ; <に>
- D - I - - 0x02DACB 16:9ABB: 05        .byte $05   ; <お>
- D - I - - 0x02DACC 16:9ABC: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DACD 16:9ABD: 10        .byte $10   ; <た>

- D - I - - 0x02DACE 16:9ABE: 10        .byte $10   ; <た>
- D - I - - 0x02DACF 16:9ABF: 01        .byte $01   ; <あ>
- D - I - - 0x02DAD0 16:9AC0: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DAD1 16:9AC1: 03        .byte $03   ; <う>
- D - I - - 0x02DAD2 16:9AC2: 12        .byte $12   ; <つ>
- D - I - - 0x02DAD3 16:9AC3: 06        .byte $06   ; <か>
- D - I - - 0x02DAD4 16:9AC4: 16        .byte $16   ; <に>
- D - I - - 0x02DAD5 16:9AC5: 07        .byte $07   ; <き>

- D - I - - 0x02DAD6 16:9AC6: 18        .byte $18   ; <ね>
- D - I - - 0x02DAD7 16:9AC7: 02        .byte $02   ; <い>
- D - I - - 0x02DAD8 16:9AC8: 08        .byte $08   ; <く>
- D - I - - 0x02DAD9 16:9AC9: 11        .byte $11   ; <ち>
- D - I - - 0x02DADA 16:9ACA: 0C        .byte $0C   ; <し>
- D - I - - 0x02DADB 16:9ACB: 14        .byte $14   ; <と>
- D - I - - 0x02DADC 16:9ACC: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DADD 16:9ACD: 02        .byte $02   ; <い>
- D - I - - 0x02DADE 16:9ACE: 12        .byte $12   ; <つ>
- D - I - - 0x02DADF 16:9ACF: 0C        .byte $0C   ; <し>

- D - I - - 0x02DAE0 16:9AD0: 18        .byte $18   ; <ね>
- D - I - - 0x02DAE1 16:9AD1: 03        .byte $03   ; <う>
- D - I - - 0x02DAE2 16:9AD2: 04        .byte $04   ; <え>
- D - I - - 0x02DAE3 16:9AD3: 15        .byte $15   ; <な>
- D - I - - 0x02DAE4 16:9AD4: 08        .byte $08   ; <く>
- D - I - - 0x02DAE5 16:9AD5: 29        .byte $29   ; <る>
- D - I - - 0x02DAE6 16:9AD6: 0C        .byte $0C   ; <し>
- D - I - - 0x02DAE7 16:9AD7: 45        .byte $45   ; <オ>
- D - I - - 0x02DAE8 16:9AD8: 11        .byte $11   ; <ち>
- D - I - - 0x02DAE9 16:9AD9: 0E        .byte $0E   ; <せ>

- D - I - - 0x02DAEA 16:9ADA: 20        .byte $20   ; <み>
- D - I - - 0x02DAEB 16:9ADB: 04        .byte $04   ; <え>
- D - I - - 0x02DAEC 16:9ADC: 04        .byte $04   ; <え>
- D - I - - 0x02DAED 16:9ADD: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DAEE 16:9ADE: 06        .byte $06   ; <か>
- D - I - - 0x02DAEF 16:9ADF: 1D        .byte $1D   ; <へ>
- D - I - - 0x02DAF0 16:9AE0: 08        .byte $08   ; <く>
- D - I - - 0x02DAF1 16:9AE1: 46        .byte $46   ; <カ>
- D - I - - 0x02DAF2 16:9AE2: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DAF3 16:9AE3: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02DAF4 16:9AE4: 11        .byte $11   ; <ち>
- D - I - - 0x02DAF5 16:9AE5: 24        .byte $24   ; <や>

- D - I - - 0x02DAF6 16:9AE6: 01        .byte $01   ; <あ>



off_9AE7:
- D - I - - 0x02DAF7 16:9AE7: 10        .byte $10   ; <た>
- D - I - - 0x02DAF8 16:9AE8: 03        .byte $03   ; <う>
- D - I - - 0x02DAF9 16:9AE9: 16        .byte $16   ; <に>
- D - I - - 0x02DAFA 16:9AEA: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DAFB 16:9AEB: 1A        .byte $1A   ; <は>
- D - I - - 0x02DAFC 16:9AEC: 1A        .byte $1A   ; <は>
- D - I - - 0x02DAFD 16:9AED: 83        .byte $83   ; <C>
- D - I - - 0x02DAFE 16:9AEE: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02DAFF 16:9AEF: 00        .byte $00
- D - I - - 0x02DB00 16:9AF0: 04        .byte $04   ; <え>
- D - I - - 0x02DB01 16:9AF1: 16        .byte $16   ; <に>
- D - I - - 0x02DB02 16:9AF2: 25        .byte $25   ; <ゆ>

- D - I - - 0x02DB03 16:9AF3: 08        .byte $08   ; <く>
- D - I - - 0x02DB04 16:9AF4: 05        .byte $05   ; <お>
- D - I - - 0x02DB05 16:9AF5: 11        .byte $11   ; <ち>
- D - I - - 0x02DB06 16:9AF6: 18        .byte $18   ; <ね>
- D - I - - 0x02DB07 16:9AF7: 12        .byte $12   ; <つ>
- D - I - - 0x02DB08 16:9AF8: 2A        .byte $2A   ; <れ>

- D - I - - 0x02DB09 16:9AF9: 00        .byte $00
- D - I - - 0x02DB0A 16:9AFA: 06        .byte $06   ; <か>
- D - I - - 0x02DB0B 16:9AFB: 12        .byte $12   ; <つ>
- D - I - - 0x02DB0C 16:9AFC: 2C        .byte $2C   ; <わ>
; продолжение


off_9AFD:
- D - I - - 0x02DB0D 16:9AFD: 10        .byte $10   ; <た>
- D - I - - 0x02DB0E 16:9AFE: 00        .byte $00
- D - I - - 0x02DB0F 16:9AFF: 12        .byte $12   ; <つ>
- D - I - - 0x02DB10 16:9B00: 04        .byte $04   ; <え>
- D - I - - 0x02DB11 16:9B01: 16        .byte $16   ; <に>
- D - I - - 0x02DB12 16:9B02: 05        .byte $05   ; <お>
- D - I - - 0x02DB13 16:9B03: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DB14 16:9B04: 10        .byte $10   ; <た>

- D - I - - 0x02DB15 16:9B05: 10        .byte $10   ; <た>
- D - I - - 0x02DB16 16:9B06: 01        .byte $01   ; <あ>
- D - I - - 0x02DB17 16:9B07: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DB18 16:9B08: 03        .byte $03   ; <う>
- D - I - - 0x02DB19 16:9B09: 12        .byte $12   ; <つ>
- D - I - - 0x02DB1A 16:9B0A: 06        .byte $06   ; <か>
- D - I - - 0x02DB1B 16:9B0B: 16        .byte $16   ; <に>
- D - I - - 0x02DB1C 16:9B0C: 07        .byte $07   ; <き>

- D - I - - 0x02DB1D 16:9B0D: 18        .byte $18   ; <ね>
- D - I - - 0x02DB1E 16:9B0E: 02        .byte $02   ; <い>
- D - I - - 0x02DB1F 16:9B0F: 08        .byte $08   ; <く>
- D - I - - 0x02DB20 16:9B10: 11        .byte $11   ; <ち>
- D - I - - 0x02DB21 16:9B11: 0C        .byte $0C   ; <し>
- D - I - - 0x02DB22 16:9B12: 14        .byte $14   ; <と>
- D - I - - 0x02DB23 16:9B13: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DB24 16:9B14: 02        .byte $02   ; <い>
- D - I - - 0x02DB25 16:9B15: 12        .byte $12   ; <つ>
- D - I - - 0x02DB26 16:9B16: 0C        .byte $0C   ; <し>

- D - I - - 0x02DB27 16:9B17: 18        .byte $18   ; <ね>
- D - I - - 0x02DB28 16:9B18: 03        .byte $03   ; <う>
- D - I - - 0x02DB29 16:9B19: 04        .byte $04   ; <え>
- D - I - - 0x02DB2A 16:9B1A: 15        .byte $15   ; <な>
- D - I - - 0x02DB2B 16:9B1B: 08        .byte $08   ; <く>
- D - I - - 0x02DB2C 16:9B1C: 40        .byte $40   ; <「>
- D - I - - 0x02DB2D 16:9B1D: 0C        .byte $0C   ; <し>
- D - I - - 0x02DB2E 16:9B1E: 41        .byte $41   ; <ア>
- D - I - - 0x02DB2F 16:9B1F: 11        .byte $11   ; <ち>
- D - I - - 0x02DB30 16:9B20: 47        .byte $47   ; <キ>

- D - I - - 0x02DB31 16:9B21: 18        .byte $18   ; <ね>
- D - I - - 0x02DB32 16:9B22: 04        .byte $04   ; <え>
- D - I - - 0x02DB33 16:9B23: 06        .byte $06   ; <か>
- D - I - - 0x02DB34 16:9B24: 28        .byte $28   ; <り>
- D - I - - 0x02DB35 16:9B25: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DB36 16:9B26: 42        .byte $42   ; <イ>
- D - I - - 0x02DB37 16:9B27: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DB38 16:9B28: 43        .byte $43   ; <ウ>
- D - I - - 0x02DB39 16:9B29: 11        .byte $11   ; <ち>
- D - I - - 0x02DB3A 16:9B2A: 0D        .byte $0D   ; <す>

- D - I - - 0x02DB3B 16:9B2B: 01        .byte $01   ; <あ>



off_9B2C_42:
- - - - - - 0x02DB3C 16:9B2C: 03        .byte $03   ; <う>
- - - - - - 0x02DB3D 16:9B2D: 39 9B     .word off_9B39
- - - - - - 0x02DB3F 16:9B2F: 68 9B     .word off_9B68
- - - - - - 0x02DB41 16:9B31: 39 9B     .word off_9B39
- - - - - - 0x02DB43 16:9B33: 39 9B     .word off_9B39
- - - - - - 0x02DB45 16:9B35: 39 9B     .word off_9B39
- - - - - - 0x02DB47 16:9B37: 68 9B     .word off_9B68



off_9B39:
- - - - - - 0x02DB49 16:9B39: 10        .byte $10   ; <た>
- - - - - - 0x02DB4A 16:9B3A: 07        .byte $07   ; <き>
- - - - - - 0x02DB4B 16:9B3B: 03        .byte $03   ; <う>
- - - - - - 0x02DB4C 16:9B3C: 75        .byte $75   ; <ェ>
- - - - - - 0x02DB4D 16:9B3D: 07        .byte $07   ; <き>
- - - - - - 0x02DB4E 16:9B3E: 72        .byte $72   ; <ョ>
- - - - - - 0x02DB4F 16:9B3F: 0F        .byte $0F   ; <そ>
- - - - - - 0x02DB50 16:9B40: 76        .byte $76   ; <ォ>

- - - - - - 0x02DB51 16:9B41: 08        .byte $08   ; <く>
- - - - - - 0x02DB52 16:9B42: 08        .byte $08   ; <く>
- - - - - - 0x02DB53 16:9B43: 07        .byte $07   ; <き>
- - - - - - 0x02DB54 16:9B44: 78        .byte $78   ; <?>
- - - - - - 0x02DB55 16:9B45: 0F        .byte $0F   ; <そ>
- - - - - - 0x02DB56 16:9B46: 7C        .byte $7C   ; <~>
; продолжение


off_9B47:
- D - I - - 0x02DB57 16:9B47: 18        .byte $18   ; <ね>
- D - I - - 0x02DB58 16:9B48: 05        .byte $05   ; <お>
- D - I - - 0x02DB59 16:9B49: 06        .byte $06   ; <か>
- D - I - - 0x02DB5A 16:9B4A: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02DB5B 16:9B4B: 09        .byte $09   ; <け>
- D - I - - 0x02DB5C 16:9B4C: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02DB5D 16:9B4D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DB5E 16:9B4E: 02        .byte $02   ; <い>
- D - I - - 0x02DB5F 16:9B4F: 0D        .byte $0D   ; <す>
- D - I - - 0x02DB60 16:9B50: 5E        .byte $5E   ; <ホ>

- D - I - - 0x02DB61 16:9B51: 20        .byte $20   ; <み>
- D - I - - 0x02DB62 16:9B52: 06        .byte $06   ; <か>
- D - I - - 0x02DB63 16:9B53: 03        .byte $03   ; <う>
- D - I - - 0x02DB64 16:9B54: 5F        .byte $5F   ; <マ>
- D - I - - 0x02DB65 16:9B55: 07        .byte $07   ; <き>
- D - I - - 0x02DB66 16:9B56: 70        .byte $70   ; <ャ>
- D - I - - 0x02DB67 16:9B57: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DB68 16:9B58: 71        .byte $71   ; <ュ>
- D - I - - 0x02DB69 16:9B59: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DB6A 16:9B5A: 74        .byte $74   ; <ィ>
- D - I - - 0x02DB6B 16:9B5B: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DB6C 16:9B5C: 77        .byte $77   ; <:>

- D - I - - 0x02DB6D 16:9B5D: 00        .byte $00
- D - I - - 0x02DB6E 16:9B5E: 07        .byte $07   ; <き>
- D - I - - 0x02DB6F 16:9B5F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DB70 16:9B60: 73        .byte $73   ; <ヮ>

- D - I - - 0x02DB71 16:9B61: 00        .byte $00
- D - I - - 0x02DB72 16:9B62: 08        .byte $08   ; <く>
- D - I - - 0x02DB73 16:9B63: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DB74 16:9B64: 79        .byte $79   ; <!>

- D - I - - 0x02DB75 16:9B65: 02        .byte $02   ; <い>
- D - I - - 0x02DB76 16:9B66: 73 99     .word off_9973



off_9B68:
- - - - - - 0x02DB78 16:9B68: 10        .byte $10   ; <た>
- - - - - - 0x02DB79 16:9B69: 07        .byte $07   ; <き>
- - - - - - 0x02DB7A 16:9B6A: 07        .byte $07   ; <き>
- - - - - - 0x02DB7B 16:9B6B: A0        .byte $A0   ; <が>
- - - - - - 0x02DB7C 16:9B6C: 0B        .byte $0B   ; <さ>
- - - - - - 0x02DB7D 16:9B6D: A1        .byte $A1   ; <ぎ>
- - - - - - 0x02DB7E 16:9B6E: 0F        .byte $0F   ; <そ>
- - - - - - 0x02DB7F 16:9B6F: A4        .byte $A4   ; <ご>
; продолжение


off_9B70:
- D - I - - 0x02DB80 16:9B70: 18        .byte $18   ; <ね>
- D - I - - 0x02DB81 16:9B71: 05        .byte $05   ; <お>
- D - I - - 0x02DB82 16:9B72: 06        .byte $06   ; <か>
- D - I - - 0x02DB83 16:9B73: 63        .byte $63   ; <モ>
- D - I - - 0x02DB84 16:9B74: 09        .byte $09   ; <け>
- D - I - - 0x02DB85 16:9B75: 89        .byte $89   ; <I>
- D - I - - 0x02DB86 16:9B76: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DB87 16:9B77: 02        .byte $02   ; <い>
- D - I - - 0x02DB88 16:9B78: 0D        .byte $0D   ; <す>
- D - I - - 0x02DB89 16:9B79: 8C        .byte $8C   ; <M>

- D - I - - 0x02DB8A 16:9B7A: 20        .byte $20   ; <み>
- D - I - - 0x02DB8B 16:9B7B: 06        .byte $06   ; <か>
- D - I - - 0x02DB8C 16:9B7C: 07        .byte $07   ; <き>
- D - I - - 0x02DB8D 16:9B7D: 8A        .byte $8A   ; <N>
- D - I - - 0x02DB8E 16:9B7E: 06        .byte $06   ; <か>
- D - I - - 0x02DB8F 16:9B7F: 88        .byte $88   ; <H>
- D - I - - 0x02DB90 16:9B80: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DB91 16:9B81: 8B        .byte $8B   ; <K>
- D - I - - 0x02DB92 16:9B82: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DB93 16:9B83: 8E        .byte $8E   ; <L>
- D - I - - 0x02DB94 16:9B84: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DB95 16:9B85: 02        .byte $02   ; <い>

- D - I - - 0x02DB96 16:9B86: 02        .byte $02   ; <い>
- D - I - - 0x02DB97 16:9B87: 73 99     .word off_9973



off_9B89_43:
- D - I - - 0x02DB99 16:9B89: 03        .byte $03   ; <う>
- D - I - - 0x02DB9A 16:9B8A: 96 9B     .word off_9B96
- D - I - - 0x02DB9C 16:9B8C: A9 9B     .word off_9BA9
- D - I - - 0x02DB9E 16:9B8E: 96 9B     .word off_9B96
- D - I - - 0x02DBA0 16:9B90: 96 9B     .word off_9B96
- D - I - - 0x02DBA2 16:9B92: 96 9B     .word off_9B96
- D - I - - 0x02DBA4 16:9B94: A9 9B     .word off_9BA9



off_9B96:
- D - I - - 0x02DBA6 16:9B96: 10        .byte $10   ; <た>
- D - I - - 0x02DBA7 16:9B97: 07        .byte $07   ; <き>
- D - I - - 0x02DBA8 16:9B98: 03        .byte $03   ; <う>
- D - I - - 0x02DBA9 16:9B99: 68        .byte $68   ; <リ>
- D - I - - 0x02DBAA 16:9B9A: 07        .byte $07   ; <き>
- D - I - - 0x02DBAB 16:9B9B: 69        .byte $69   ; <ル>
- D - I - - 0x02DBAC 16:9B9C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DBAD 16:9B9D: 76        .byte $76   ; <ォ>

- D - I - - 0x02DBAE 16:9B9E: 10        .byte $10   ; <た>
- D - I - - 0x02DBAF 16:9B9F: 08        .byte $08   ; <く>
- D - I - - 0x02DBB0 16:9BA0: 03        .byte $03   ; <う>
- D - I - - 0x02DBB1 16:9BA1: 6A        .byte $6A   ; <レ>
- D - I - - 0x02DBB2 16:9BA2: 07        .byte $07   ; <き>
- D - I - - 0x02DBB3 16:9BA3: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02DBB4 16:9BA4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DBB5 16:9BA5: 7C        .byte $7C   ; <~>

- D - I - - 0x02DBB6 16:9BA6: 02        .byte $02   ; <い>
- D - I - - 0x02DBB7 16:9BA7: 47 9B     .word off_9B47



off_9BA9:
- D - I - - 0x02DBB9 16:9BA9: 10        .byte $10   ; <た>
- D - I - - 0x02DBBA 16:9BAA: 07        .byte $07   ; <き>
- D - I - - 0x02DBBB 16:9BAB: 07        .byte $07   ; <き>
- D - I - - 0x02DBBC 16:9BAC: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02DBBD 16:9BAD: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DBBE 16:9BAE: A3        .byte $A3   ; <げ>
- D - I - - 0x02DBBF 16:9BAF: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DBC0 16:9BB0: A4        .byte $A4   ; <ご>

- D - I - - 0x02DBC1 16:9BB1: 08        .byte $08   ; <く>
- D - I - - 0x02DBC2 16:9BB2: 08        .byte $08   ; <く>
- D - I - - 0x02DBC3 16:9BB3: 07        .byte $07   ; <き>
- D - I - - 0x02DBC4 16:9BB4: 75        .byte $75   ; <ェ>
- D - I - - 0x02DBC5 16:9BB5: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DBC6 16:9BB6: A9        .byte $A9   ; <ぞ>

- D - I - - 0x02DBC7 16:9BB7: 02        .byte $02   ; <い>
- D - I - - 0x02DBC8 16:9BB8: 70 9B     .word off_9B70



off_9BBA_44:
- D - I - - 0x02DBCA 16:9BBA: 03        .byte $03   ; <う>
- D - I - - 0x02DBCB 16:9BBB: C7 9B     .word off_9BC7
- D - I - - 0x02DBCD 16:9BBD: DA 9B     .word off_9BDA
- D - I - - 0x02DBCF 16:9BBF: C7 9B     .word off_9BC7
- D - I - - 0x02DBD1 16:9BC1: C7 9B     .word off_9BC7
- D - I - - 0x02DBD3 16:9BC3: C7 9B     .word off_9BC7
- D - I - - 0x02DBD5 16:9BC5: DA 9B     .word off_9BDA



off_9BC7:
- D - I - - 0x02DBD7 16:9BC7: 10        .byte $10   ; <た>
- D - I - - 0x02DBD8 16:9BC8: 07        .byte $07   ; <き>
- D - I - - 0x02DBD9 16:9BC9: 03        .byte $03   ; <う>
- D - I - - 0x02DBDA 16:9BCA: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02DBDB 16:9BCB: 07        .byte $07   ; <き>
- D - I - - 0x02DBDC 16:9BCC: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02DBDD 16:9BCD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DBDE 16:9BCE: 76        .byte $76   ; <ォ>

- D - I - - 0x02DBDF 16:9BCF: 10        .byte $10   ; <た>
- D - I - - 0x02DBE0 16:9BD0: 08        .byte $08   ; <く>
- D - I - - 0x02DBE1 16:9BD1: 03        .byte $03   ; <う>
- D - I - - 0x02DBE2 16:9BD2: 6E        .byte $6E   ; <ン>
- D - I - - 0x02DBE3 16:9BD3: 07        .byte $07   ; <き>
- D - I - - 0x02DBE4 16:9BD4: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02DBE5 16:9BD5: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DBE6 16:9BD6: 7C        .byte $7C   ; <~>

- D - I - - 0x02DBE7 16:9BD7: 02        .byte $02   ; <い>
- D - I - - 0x02DBE8 16:9BD8: 47 9B     .word off_9B47



off_9BDA:
- D - I - - 0x02DBEA 16:9BDA: 10        .byte $10   ; <た>
- D - I - - 0x02DBEB 16:9BDB: 07        .byte $07   ; <き>
- D - I - - 0x02DBEC 16:9BDC: 07        .byte $07   ; <き>
- D - I - - 0x02DBED 16:9BDD: A6        .byte $A6   ; <じ>
- D - I - - 0x02DBEE 16:9BDE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DBEF 16:9BDF: A7        .byte $A7   ; <ず>
- D - I - - 0x02DBF0 16:9BE0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DBF1 16:9BE1: A4        .byte $A4   ; <ご>

- D - I - - 0x02DBF2 16:9BE2: 08        .byte $08   ; <く>
- D - I - - 0x02DBF3 16:9BE3: 08        .byte $08   ; <く>
- D - I - - 0x02DBF4 16:9BE4: 07        .byte $07   ; <き>
- D - I - - 0x02DBF5 16:9BE5: 75        .byte $75   ; <ェ>
- D - I - - 0x02DBF6 16:9BE6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DBF7 16:9BE7: AD        .byte $AD   ; <で>

- D - I - - 0x02DBF8 16:9BE8: 02        .byte $02   ; <い>
- D - I - - 0x02DBF9 16:9BE9: 70 9B     .word off_9B70



off_9BEB_45:
- D - I - - 0x02DBFB 16:9BEB: 03        .byte $03   ; <う>
- D - I - - 0x02DBFC 16:9BEC: F8 9B     .word off_9BF8
- D - I - - 0x02DBFE 16:9BEE: 0D 9C     .word off_9C0D
- D - I - - 0x02DC00 16:9BF0: F8 9B     .word off_9BF8
- D - I - - 0x02DC02 16:9BF2: F8 9B     .word off_9BF8
- D - I - - 0x02DC04 16:9BF4: F8 9B     .word off_9BF8
- D - I - - 0x02DC06 16:9BF6: 0D 9C     .word off_9C0D



off_9BF8:
- D - I - - 0x02DC08 16:9BF8: 18        .byte $18   ; <ね>
- D - I - - 0x02DC09 16:9BF9: 07        .byte $07   ; <き>
- D - I - - 0x02DC0A 16:9BFA: 03        .byte $03   ; <う>
- D - I - - 0x02DC0B 16:9BFB: 75        .byte $75   ; <ェ>
- D - I - - 0x02DC0C 16:9BFC: 07        .byte $07   ; <き>
- D - I - - 0x02DC0D 16:9BFD: 72        .byte $72   ; <ョ>
- D - I - - 0x02DC0E 16:9BFE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC0F 16:9BFF: 84        .byte $84   ; <D>
- D - I - - 0x02DC10 16:9C00: 13        .byte $13   ; <て>
- D - I - - 0x02DC11 16:9C01: 85        .byte $85   ; <E>

- D - I - - 0x02DC12 16:9C02: 10        .byte $10   ; <た>
- D - I - - 0x02DC13 16:9C03: 08        .byte $08   ; <く>
- D - I - - 0x02DC14 16:9C04: 07        .byte $07   ; <き>
- D - I - - 0x02DC15 16:9C05: 78        .byte $78   ; <?>
- D - I - - 0x02DC16 16:9C06: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC17 16:9C07: 86        .byte $86   ; <F>
- D - I - - 0x02DC18 16:9C08: 13        .byte $13   ; <て>
- D - I - - 0x02DC19 16:9C09: 87        .byte $87   ; <G>

- D - I - - 0x02DC1A 16:9C0A: 02        .byte $02   ; <い>
- D - I - - 0x02DC1B 16:9C0B: 47 9B     .word off_9B47



off_9C0D:
- D - I - - 0x02DC1D 16:9C0D: 18        .byte $18   ; <ね>
- D - I - - 0x02DC1E 16:9C0E: 07        .byte $07   ; <き>
- D - I - - 0x02DC1F 16:9C0F: 07        .byte $07   ; <き>
- D - I - - 0x02DC20 16:9C10: A0        .byte $A0   ; <が>
- D - I - - 0x02DC21 16:9C11: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DC22 16:9C12: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02DC23 16:9C13: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC24 16:9C14: 7D        .byte $7D   ; <ー>
- D - I - - 0x02DC25 16:9C15: 13        .byte $13   ; <て>
- D - I - - 0x02DC26 16:9C16: 7E        .byte $7E   ; <.>

- D - I - - 0x02DC27 16:9C17: 00        .byte $00
- D - I - - 0x02DC28 16:9C18: 08        .byte $08   ; <く>
- D - I - - 0x02DC29 16:9C19: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC2A 16:9C1A: 7F        .byte $7F   ; <,>

- D - I - - 0x02DC2B 16:9C1B: 02        .byte $02   ; <い>
- D - I - - 0x02DC2C 16:9C1C: 70 9B     .word off_9B70



off_9C1E_46:
- D - I - - 0x02DC2E 16:9C1E: 03        .byte $03   ; <う>
- D - I - - 0x02DC2F 16:9C1F: 2B 9C     .word off_9C2B
- D - I - - 0x02DC31 16:9C21: 40 9C     .word off_9C40
- D - I - - 0x02DC33 16:9C23: 2B 9C     .word off_9C2B
- D - I - - 0x02DC35 16:9C25: 2B 9C     .word off_9C2B
- D - I - - 0x02DC37 16:9C27: 2B 9C     .word off_9C2B
- D - I - - 0x02DC39 16:9C29: 40 9C     .word off_9C40



off_9C2B:
- D - I - - 0x02DC3B 16:9C2B: 18        .byte $18   ; <ね>
- D - I - - 0x02DC3C 16:9C2C: 07        .byte $07   ; <き>
- D - I - - 0x02DC3D 16:9C2D: 03        .byte $03   ; <う>
- D - I - - 0x02DC3E 16:9C2E: 75        .byte $75   ; <ェ>
- D - I - - 0x02DC3F 16:9C2F: 07        .byte $07   ; <き>
- D - I - - 0x02DC40 16:9C30: 72        .byte $72   ; <ョ>
- D - I - - 0x02DC41 16:9C31: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC42 16:9C32: 80        .byte $80
- D - I - - 0x02DC43 16:9C33: 13        .byte $13   ; <て>
- D - I - - 0x02DC44 16:9C34: 81        .byte $81   ; <A>

- D - I - - 0x02DC45 16:9C35: 10        .byte $10   ; <た>
- D - I - - 0x02DC46 16:9C36: 08        .byte $08   ; <く>
- D - I - - 0x02DC47 16:9C37: 07        .byte $07   ; <き>
- D - I - - 0x02DC48 16:9C38: 78        .byte $78   ; <?>
- D - I - - 0x02DC49 16:9C39: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC4A 16:9C3A: 82        .byte $82   ; <B>
- D - I - - 0x02DC4B 16:9C3B: 13        .byte $13   ; <て>
- D - I - - 0x02DC4C 16:9C3C: 83        .byte $83   ; <C>

- D - I - - 0x02DC4D 16:9C3D: 02        .byte $02   ; <い>
- D - I - - 0x02DC4E 16:9C3E: 47 9B     .word off_9B47



off_9C40:
- D - I - - 0x02DC50 16:9C40: 18        .byte $18   ; <ね>
- D - I - - 0x02DC51 16:9C41: 07        .byte $07   ; <き>
- D - I - - 0x02DC52 16:9C42: 07        .byte $07   ; <き>
- D - I - - 0x02DC53 16:9C43: A0        .byte $A0   ; <が>
- D - I - - 0x02DC54 16:9C44: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DC55 16:9C45: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02DC56 16:9C46: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC57 16:9C47: 7A        .byte $7A   ; <、>
- D - I - - 0x02DC58 16:9C48: 13        .byte $13   ; <て>
- D - I - - 0x02DC59 16:9C49: 7B        .byte $7B   ; <。>

- D - I - - 0x02DC5A 16:9C4A: 00        .byte $00
- D - I - - 0x02DC5B 16:9C4B: 08        .byte $08   ; <く>
- D - I - - 0x02DC5C 16:9C4C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DC5D 16:9C4D: A8        .byte $A8   ; <ぜ>

- D - I - - 0x02DC5E 16:9C4E: 02        .byte $02   ; <い>
- D - I - - 0x02DC5F 16:9C4F: 70 9B     .word off_9B70



off_9C51_47:
- D - I - - 0x02DC61 16:9C51: 03        .byte $03   ; <う>
- D - I - - 0x02DC62 16:9C52: 5E 9C     .word off_9C5E
- D - I - - 0x02DC64 16:9C54: 77 9C     .word off_9C77
- D - I - - 0x02DC66 16:9C56: 5E 9C     .word off_9C5E
- D - I - - 0x02DC68 16:9C58: 5E 9C     .word off_9C5E
- D - I - - 0x02DC6A 16:9C5A: 5E 9C     .word off_9C5E
- D - I - - 0x02DC6C 16:9C5C: 77 9C     .word off_9C77



off_9C5E:
- D - I - - 0x02DC6E 16:9C5E: 10        .byte $10   ; <た>
- D - I - - 0x02DC6F 16:9C5F: 18        .byte $18   ; <ね>
- D - I - - 0x02DC70 16:9C60: 43        .byte $43   ; <ウ>
- D - I - - 0x02DC71 16:9C61: 48        .byte $48   ; <ク>
- D - I - - 0x02DC72 16:9C62: 47        .byte $47   ; <キ>
- D - I - - 0x02DC73 16:9C63: 49        .byte $49   ; <ケ>
- D - I - - 0x02DC74 16:9C64: 87        .byte $87   ; <G>
- D - I - - 0x02DC75 16:9C65: FD        .byte $FD

- D - I - - 0x02DC76 16:9C66: 10        .byte $10   ; <た>
- D - I - - 0x02DC77 16:9C67: 19        .byte $19   ; <の>
- D - I - - 0x02DC78 16:9C68: 43        .byte $43   ; <ウ>
- D - I - - 0x02DC79 16:9C69: 4A        .byte $4A   ; <コ>
- D - I - - 0x02DC7A 16:9C6A: 47        .byte $47   ; <キ>
- D - I - - 0x02DC7B 16:9C6B: 4B        .byte $4B   ; <サ>
- D - I - - 0x02DC7C 16:9C6C: 87        .byte $87   ; <G>
- D - I - - 0x02DC7D 16:9C6D: FF        .byte $FF

- D - I - - 0x02DC7E 16:9C6E: 10        .byte $10   ; <た>
- D - I - - 0x02DC7F 16:9C6F: 1A        .byte $1A   ; <は>
- D - I - - 0x02DC80 16:9C70: 43        .byte $43   ; <ウ>
- D - I - - 0x02DC81 16:9C71: 60        .byte $60   ; <ミ>
- D - I - - 0x02DC82 16:9C72: 47        .byte $47   ; <キ>
- D - I - - 0x02DC83 16:9C73: 61        .byte $61   ; <ム>
- D - I - - 0x02DC84 16:9C74: 87        .byte $87   ; <G>
- D - I - - 0x02DC85 16:9C75: FE        .byte $FE

- D - I - - 0x02DC86 16:9C76: 01        .byte $01   ; <あ>



off_9C77:
- D - I - - 0x02DC87 16:9C77: 08        .byte $08   ; <く>
- D - I - - 0x02DC88 16:9C78: 18        .byte $18   ; <ね>
- D - I - - 0x02DC89 16:9C79: 43        .byte $43   ; <ウ>
- D - I - - 0x02DC8A 16:9C7A: 4C        .byte $4C   ; <シ>
- D - I - - 0x02DC8B 16:9C7B: 47        .byte $47   ; <キ>
- D - I - - 0x02DC8C 16:9C7C: 4D        .byte $4D   ; <ス>

- D - I - - 0x02DC8D 16:9C7D: 10        .byte $10   ; <た>
- D - I - - 0x02DC8E 16:9C7E: 19        .byte $19   ; <の>
- D - I - - 0x02DC8F 16:9C7F: 43        .byte $43   ; <ウ>
- D - I - - 0x02DC90 16:9C80: 4E        .byte $4E   ; <セ>
- D - I - - 0x02DC91 16:9C81: 47        .byte $47   ; <キ>
- D - I - - 0x02DC92 16:9C82: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02DC93 16:9C83: 87        .byte $87   ; <G>
- D - I - - 0x02DC94 16:9C84: 62        .byte $62   ; <メ>

- D - I - - 0x02DC95 16:9C85: 08        .byte $08   ; <く>
- D - I - - 0x02DC96 16:9C86: 1A        .byte $1A   ; <は>
- D - I - - 0x02DC97 16:9C87: 43        .byte $43   ; <ウ>
- D - I - - 0x02DC98 16:9C88: 64        .byte $64   ; <ヤ>
- D - I - - 0x02DC99 16:9C89: 47        .byte $47   ; <キ>
- D - I - - 0x02DC9A 16:9C8A: 65        .byte $65   ; <ユ>

- D - I - - 0x02DC9B 16:9C8B: 01        .byte $01   ; <あ>



off_9C8C_48:
- D - I - - 0x02DC9C 16:9C8C: 03        .byte $03   ; <う>
- D - I - - 0x02DC9D 16:9C8D: 99 9C     .word off_9C99
- - - - - - 0x02DC9F 16:9C8F: B4 9C     .word off_9CB4
- D - I - - 0x02DCA1 16:9C91: 99 9C     .word off_9C99
- D - I - - 0x02DCA3 16:9C93: 99 9C     .word off_9C99
- D - I - - 0x02DCA5 16:9C95: 99 9C     .word off_9C99
- D - I - - 0x02DCA7 16:9C97: B4 9C     .word off_9CB4



off_9C99:
- D - I - - 0x02DCA9 16:9C99: 08        .byte $08   ; <く>
- D - I - - 0x02DCAA 16:9C9A: 05        .byte $05   ; <お>
- D - I - - 0x02DCAB 16:9C9B: 09        .byte $09   ; <け>
- D - I - - 0x02DCAC 16:9C9C: 91        .byte $91   ; <V>
- D - I - - 0x02DCAD 16:9C9D: 0D        .byte $0D   ; <す>
- D - I - - 0x02DCAE 16:9C9E: 94        .byte $94
; продолжение


off_9C9F:
- D - I - - 0x02DCAF 16:9C9F: 08        .byte $08   ; <く>
- D - I - - 0x02DCB0 16:9CA0: 05        .byte $05   ; <お>
- D - I - - 0x02DCB1 16:9CA1: 06        .byte $06   ; <か>
- D - I - - 0x02DCB2 16:9CA2: 90        .byte $90   ; <U>
- D - I - - 0x02DCB3 16:9CA3: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DCB4 16:9CA4: 02        .byte $02   ; <い>

- D - I - - 0x02DCB5 16:9CA5: 10        .byte $10   ; <た>
- D - I - - 0x02DCB6 16:9CA6: 06        .byte $06   ; <か>
- D - I - - 0x02DCB7 16:9CA7: 06        .byte $06   ; <か>
- D - I - - 0x02DCB8 16:9CA8: 92        .byte $92   ; <W>
- D - I - - 0x02DCB9 16:9CA9: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DCBA 16:9CAA: 93        .byte $93   ; <Y>
- D - I - - 0x02DCBB 16:9CAB: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DCBC 16:9CAC: 96        .byte $96

- D - I - - 0x02DCBD 16:9CAD: 00        .byte $00
- D - I - - 0x02DCBE 16:9CAE: 07        .byte $07   ; <き>
- D - I - - 0x02DCBF 16:9CAF: 06        .byte $06   ; <か>
- D - I - - 0x02DCC0 16:9CB0: 98        .byte $98

- D - I - - 0x02DCC1 16:9CB1: 02        .byte $02   ; <い>
- D - I - - 0x02DCC2 16:9CB2: 73 99     .word off_9973



off_9CB4:
- D - I - - 0x02DCC4 16:9CB4: 08        .byte $08   ; <く>
- D - I - - 0x02DCC5 16:9CB5: 05        .byte $05   ; <お>
- D - I - - 0x02DCC6 16:9CB6: 09        .byte $09   ; <け>
- D - I - - 0x02DCC7 16:9CB7: 95        .byte $95
- D - I - - 0x02DCC8 16:9CB8: 0D        .byte $0D   ; <す>
- D - I - - 0x02DCC9 16:9CB9: 97        .byte $97

- D - I - - 0x02DCCA 16:9CBA: 02        .byte $02   ; <い>
- D - I - - 0x02DCCB 16:9CBB: 9F 9C     .word off_9C9F



off_9CBD_49:
- D - I - - 0x02DCCD 16:9CBD: 03        .byte $03   ; <う>
- D - I - - 0x02DCCE 16:9CBE: CA 9C     .word off_9CCA
- - - - - - 0x02DCD0 16:9CC0: E9 9C     .word off_9CE9
- D - I - - 0x02DCD2 16:9CC2: CA 9C     .word off_9CCA
- D - I - - 0x02DCD4 16:9CC4: CA 9C     .word off_9CCA
- D - I - - 0x02DCD6 16:9CC6: CA 9C     .word off_9CCA
- D - I - - 0x02DCD8 16:9CC8: E9 9C     .word off_9CE9



off_9CCA:
- D - I - - 0x02DCDA 16:9CCA: 08        .byte $08   ; <く>
- D - I - - 0x02DCDB 16:9CCB: 07        .byte $07   ; <き>
- D - I - - 0x02DCDC 16:9CCC: 07        .byte $07   ; <き>
- D - I - - 0x02DCDD 16:9CCD: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02DCDE 16:9CCE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DCDF 16:9CCF: B5        .byte $B5   ; <ギ>
; продолжение


off_9CD0:
- D - I - - 0x02DCE0 16:9CD0: 18        .byte $18   ; <ね>
- D - I - - 0x02DCE1 16:9CD1: 05        .byte $05   ; <お>
- D - I - - 0x02DCE2 16:9CD2: 06        .byte $06   ; <か>
- D - I - - 0x02DCE3 16:9CD3: 99        .byte $99
- D - I - - 0x02DCE4 16:9CD4: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DCE5 16:9CD5: 9C        .byte $9C
- D - I - - 0x02DCE6 16:9CD6: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DCE7 16:9CD7: 9D        .byte $9D
- D - I - - 0x02DCE8 16:9CD8: 0D        .byte $0D   ; <す>
- D - I - - 0x02DCE9 16:9CD9: 02        .byte $02   ; <い>

- D - I - - 0x02DCEA 16:9CDA: 10        .byte $10   ; <た>
- D - I - - 0x02DCEB 16:9CDB: 06        .byte $06   ; <か>
- D - I - - 0x02DCEC 16:9CDC: 07        .byte $07   ; <き>
- D - I - - 0x02DCED 16:9CDD: 9B        .byte $9B
- D - I - - 0x02DCEE 16:9CDE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DCEF 16:9CDF: 4B        .byte $4B   ; <サ>
- D - I - - 0x02DCF0 16:9CE0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DCF1 16:9CE1: 9F        .byte $9F

- D - I - - 0x02DCF2 16:9CE2: 00        .byte $00
- D - I - - 0x02DCF3 16:9CE3: 07        .byte $07   ; <き>
- D - I - - 0x02DCF4 16:9CE4: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DCF5 16:9CE5: B4        .byte $B4   ; <ガ>

- D - I - - 0x02DCF6 16:9CE6: 02        .byte $02   ; <い>
- D - I - - 0x02DCF7 16:9CE7: 73 99     .word off_9973



off_9CE9:
- D - I - - 0x02DCF9 16:9CE9: 10        .byte $10   ; <た>
- D - I - - 0x02DCFA 16:9CEA: 07        .byte $07   ; <き>
- D - I - - 0x02DCFB 16:9CEB: 07        .byte $07   ; <き>
- D - I - - 0x02DCFC 16:9CEC: BB        .byte $BB   ; <ズ>
- D - I - - 0x02DCFD 16:9CED: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DCFE 16:9CEE: BE        .byte $BE   ; <ダ>
- D - I - - 0x02DCFF 16:9CEF: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD00 16:9CF0: BF        .byte $BF   ; <ヂ>
; продолжение


off_9CF1:
- D - I - - 0x02DD01 16:9CF1: 28        .byte $28   ; <り>
- D - I - - 0x02DD02 16:9CF2: 05        .byte $05   ; <お>
- D - I - - 0x02DD03 16:9CF3: 06        .byte $06   ; <か>
- D - I - - 0x02DD04 16:9CF4: B3        .byte $B3   ; <ぼ>
- D - I - - 0x02DD05 16:9CF5: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DD06 16:9CF6: B6        .byte $B6   ; <グ>
- D - I - - 0x02DD07 16:9CF7: 09        .byte $09   ; <け>
- D - I - - 0x02DD08 16:9CF8: C2        .byte $C2   ; <ド>
- D - I - - 0x02DD09 16:9CF9: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DD0A 16:9CFA: 02        .byte $02   ; <い>
- D - I - - 0x02DD0B 16:9CFB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD0C 16:9CFC: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02DD0D 16:9CFD: 0D        .byte $0D   ; <す>
- D - I - - 0x02DD0E 16:9CFE: C3        .byte $C3   ; <バ>

- D - I - - 0x02DD0F 16:9CFF: 18        .byte $18   ; <ね>
- D - I - - 0x02DD10 16:9D00: 06        .byte $06   ; <か>
- D - I - - 0x02DD11 16:9D01: 06        .byte $06   ; <か>
- D - I - - 0x02DD12 16:9D02: B9        .byte $B9   ; <ザ>
- D - I - - 0x02DD13 16:9D03: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DD14 16:9D04: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02DD15 16:9D05: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD16 16:9D06: BD        .byte $BD   ; <ゾ>
- D - I - - 0x02DD17 16:9D07: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DD18 16:9D08: BA        .byte $BA   ; <ジ>

- D - I - - 0x02DD19 16:9D09: 02        .byte $02   ; <い>
- D - I - - 0x02DD1A 16:9D0A: 73 99     .word off_9973



off_9D0C_4A:
- D - I - - 0x02DD1C 16:9D0C: 03        .byte $03   ; <う>
- D - I - - 0x02DD1D 16:9D0D: 19 9D     .word off_9D19
- - - - - - 0x02DD1F 16:9D0F: 28 9D     .word off_9D28
- D - I - - 0x02DD21 16:9D11: 19 9D     .word off_9D19
- D - I - - 0x02DD23 16:9D13: 19 9D     .word off_9D19
- D - I - - 0x02DD25 16:9D15: 19 9D     .word off_9D19
- D - I - - 0x02DD27 16:9D17: 28 9D     .word off_9D28



off_9D19:
- D - I - - 0x02DD29 16:9D19: 00        .byte $00
- D - I - - 0x02DD2A 16:9D1A: 06        .byte $06   ; <か>
- D - I - - 0x02DD2B 16:9D1B: 03        .byte $03   ; <う>
- D - I - - 0x02DD2C 16:9D1C: 8D        .byte $8D   ; <P>

- D - I - - 0x02DD2D 16:9D1D: 10        .byte $10   ; <た>
- D - I - - 0x02DD2E 16:9D1E: 07        .byte $07   ; <き>
- D - I - - 0x02DD2F 16:9D1F: 03        .byte $03   ; <う>
- D - I - - 0x02DD30 16:9D20: 8F        .byte $8F   ; <S>
- D - I - - 0x02DD31 16:9D21: 07        .byte $07   ; <き>
- D - I - - 0x02DD32 16:9D22: 9A        .byte $9A
- D - I - - 0x02DD33 16:9D23: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD34 16:9D24: B5        .byte $B5   ; <ギ>

- D - I - - 0x02DD35 16:9D25: 02        .byte $02   ; <い>
- D - I - - 0x02DD36 16:9D26: D0 9C     .word off_9CD0



off_9D28:
- D - I - - 0x02DD38 16:9D28: 18        .byte $18   ; <ね>
- D - I - - 0x02DD39 16:9D29: 07        .byte $07   ; <き>
- D - I - - 0x02DD3A 16:9D2A: 03        .byte $03   ; <う>
- D - I - - 0x02DD3B 16:9D2B: C4        .byte $C4   ; <ビ>
- D - I - - 0x02DD3C 16:9D2C: 07        .byte $07   ; <き>
- D - I - - 0x02DD3D 16:9D2D: C5        .byte $C5   ; <ブ>
- D - I - - 0x02DD3E 16:9D2E: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DD3F 16:9D2F: BE        .byte $BE   ; <ダ>
- D - I - - 0x02DD40 16:9D30: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD41 16:9D31: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02DD42 16:9D32: 00        .byte $00
- D - I - - 0x02DD43 16:9D33: 08        .byte $08   ; <く>
- D - I - - 0x02DD44 16:9D34: 07        .byte $07   ; <き>
- D - I - - 0x02DD45 16:9D35: C7        .byte $C7   ; <ボ>

- D - I - - 0x02DD46 16:9D36: 02        .byte $02   ; <い>
- D - I - - 0x02DD47 16:9D37: F1 9C     .word off_9CF1



off_9D39_4B:
- D - I - - 0x02DD49 16:9D39: 03        .byte $03   ; <う>
- D - I - - 0x02DD4A 16:9D3A: 46 9D     .word off_9D46
- - - - - - 0x02DD4C 16:9D3C: 55 9D     .word off_9D55
- D - I - - 0x02DD4E 16:9D3E: 46 9D     .word off_9D46
- D - I - - 0x02DD50 16:9D40: 46 9D     .word off_9D46
- D - I - - 0x02DD52 16:9D42: 46 9D     .word off_9D46
- D - I - - 0x02DD54 16:9D44: 55 9D     .word off_9D55



off_9D46:
- D - I - - 0x02DD56 16:9D46: 00        .byte $00
- D - I - - 0x02DD57 16:9D47: 06        .byte $06   ; <か>
- D - I - - 0x02DD58 16:9D48: 03        .byte $03   ; <う>
- D - I - - 0x02DD59 16:9D49: AC        .byte $AC   ; <づ>

- D - I - - 0x02DD5A 16:9D4A: 10        .byte $10   ; <た>
- D - I - - 0x02DD5B 16:9D4B: 07        .byte $07   ; <き>
- D - I - - 0x02DD5C 16:9D4C: 03        .byte $03   ; <う>
- D - I - - 0x02DD5D 16:9D4D: AE        .byte $AE   ; <ど>
- D - I - - 0x02DD5E 16:9D4E: 07        .byte $07   ; <き>
- D - I - - 0x02DD5F 16:9D4F: AF        .byte $AF   ; <ば>
- D - I - - 0x02DD60 16:9D50: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD61 16:9D51: B5        .byte $B5   ; <ギ>

- D - I - - 0x02DD62 16:9D52: 02        .byte $02   ; <い>
- D - I - - 0x02DD63 16:9D53: D0 9C     .word off_9CD0



off_9D55:
- D - I - - 0x02DD65 16:9D55: 18        .byte $18   ; <ね>
- D - I - - 0x02DD66 16:9D56: 07        .byte $07   ; <き>
- D - I - - 0x02DD67 16:9D57: 03        .byte $03   ; <う>
- D - I - - 0x02DD68 16:9D58: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02DD69 16:9D59: 07        .byte $07   ; <き>
- D - I - - 0x02DD6A 16:9D5A: CD        .byte $CD   ; <パ>
- D - I - - 0x02DD6B 16:9D5B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DD6C 16:9D5C: BE        .byte $BE   ; <ダ>
- D - I - - 0x02DD6D 16:9D5D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD6E 16:9D5E: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02DD6F 16:9D5F: 00        .byte $00
- D - I - - 0x02DD70 16:9D60: 08        .byte $08   ; <く>
- D - I - - 0x02DD71 16:9D61: 07        .byte $07   ; <き>
- D - I - - 0x02DD72 16:9D62: C6        .byte $C6   ; <ベ>

- D - I - - 0x02DD73 16:9D63: 02        .byte $02   ; <い>
- D - I - - 0x02DD74 16:9D64: F1 9C     .word off_9CF1



off_9D66_4C:
- D - I - - 0x02DD76 16:9D66: 03        .byte $03   ; <う>
- D - I - - 0x02DD77 16:9D67: 73 9D     .word off_9D73
- - - - - - 0x02DD79 16:9D69: 82 9D     .word off_9D82
- D - I - - 0x02DD7B 16:9D6B: 73 9D     .word off_9D73
- D - I - - 0x02DD7D 16:9D6D: 73 9D     .word off_9D73
- D - I - - 0x02DD7F 16:9D6F: 73 9D     .word off_9D73
- D - I - - 0x02DD81 16:9D71: 82 9D     .word off_9D82



off_9D73:
- D - I - - 0x02DD83 16:9D73: 08        .byte $08   ; <く>
- D - I - - 0x02DD84 16:9D74: 07        .byte $07   ; <き>
- D - I - - 0x02DD85 16:9D75: 07        .byte $07   ; <き>
- D - I - - 0x02DD86 16:9D76: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02DD87 16:9D77: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD88 16:9D78: B0        .byte $B0   ; <び>

- D - I - - 0x02DD89 16:9D79: 08        .byte $08   ; <く>
- D - I - - 0x02DD8A 16:9D7A: 08        .byte $08   ; <く>
- D - I - - 0x02DD8B 16:9D7B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DD8C 16:9D7C: A5        .byte $A5   ; <ざ>
- D - I - - 0x02DD8D 16:9D7D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD8E 16:9D7E: B2        .byte $B2   ; <べ>

- D - I - - 0x02DD8F 16:9D7F: 02        .byte $02   ; <い>
- D - I - - 0x02DD90 16:9D80: D0 9C     .word off_9CD0



off_9D82:
- D - I - - 0x02DD92 16:9D82: 10        .byte $10   ; <た>
- D - I - - 0x02DD93 16:9D83: 07        .byte $07   ; <き>
- D - I - - 0x02DD94 16:9D84: 07        .byte $07   ; <き>
- D - I - - 0x02DD95 16:9D85: BB        .byte $BB   ; <ズ>
- D - I - - 0x02DD96 16:9D86: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DD97 16:9D87: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02DD98 16:9D88: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD99 16:9D89: C9        .byte $C9   ; <ぴ>

- D - I - - 0x02DD9A 16:9D8A: 00        .byte $00
- D - I - - 0x02DD9B 16:9D8B: 08        .byte $08   ; <く>
- D - I - - 0x02DD9C 16:9D8C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DD9D 16:9D8D: CB        .byte $CB   ; <ぺ>

- D - I - - 0x02DD9E 16:9D8E: 02        .byte $02   ; <い>
- D - I - - 0x02DD9F 16:9D8F: F1 9C     .word off_9CF1



off_9D91_4D:
- D - I - - 0x02DDA1 16:9D91: 03        .byte $03   ; <う>
- D - I - - 0x02DDA2 16:9D92: 9E 9D     .word off_9D9E
- - - - - - 0x02DDA4 16:9D94: AD 9D     .word off_9DAD
- D - I - - 0x02DDA6 16:9D96: 9E 9D     .word off_9D9E
- D - I - - 0x02DDA8 16:9D98: 9E 9D     .word off_9D9E
- D - I - - 0x02DDAA 16:9D9A: 9E 9D     .word off_9D9E
- D - I - - 0x02DDAC 16:9D9C: AD 9D     .word off_9DAD



off_9D9E:
- D - I - - 0x02DDAE 16:9D9E: 08        .byte $08   ; <く>
- D - I - - 0x02DDAF 16:9D9F: 07        .byte $07   ; <き>
- D - I - - 0x02DDB0 16:9DA0: 07        .byte $07   ; <き>
- D - I - - 0x02DDB1 16:9DA1: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02DDB2 16:9DA2: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DDB3 16:9DA3: B8        .byte $B8   ; <ゴ>

- D - I - - 0x02DDB4 16:9DA4: 08        .byte $08   ; <く>
- D - I - - 0x02DDB5 16:9DA5: 08        .byte $08   ; <く>
- D - I - - 0x02DDB6 16:9DA6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DDB7 16:9DA7: AA        .byte $AA   ; <だ>
- D - I - - 0x02DDB8 16:9DA8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DDB9 16:9DA9: AB        .byte $AB   ; <ぢ>

- D - I - - 0x02DDBA 16:9DAA: 02        .byte $02   ; <い>
- D - I - - 0x02DDBB 16:9DAB: D0 9C     .word off_9CD0



off_9DAD:
- D - I - - 0x02DDBD 16:9DAD: 10        .byte $10   ; <た>
- D - I - - 0x02DDBE 16:9DAE: 07        .byte $07   ; <き>
- D - I - - 0x02DDBF 16:9DAF: 07        .byte $07   ; <き>
- D - I - - 0x02DDC0 16:9DB0: BB        .byte $BB   ; <ズ>
- D - I - - 0x02DDC1 16:9DB1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DDC2 16:9DB2: CE        .byte $CE   ; <ピ>
- D - I - - 0x02DDC3 16:9DB3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DDC4 16:9DB4: 9E        .byte $9E

- D - I - - 0x02DDC5 16:9DB5: 00        .byte $00
- D - I - - 0x02DDC6 16:9DB6: 08        .byte $08   ; <く>
- D - I - - 0x02DDC7 16:9DB7: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DDC8 16:9DB8: CA        .byte $CA   ; <ぷ>

- D - I - - 0x02DDC9 16:9DB9: 02        .byte $02   ; <い>
- D - I - - 0x02DDCA 16:9DBA: F1 9C     .word off_9CF1



off_9DBC_4E:
- D - I - - 0x02DDCC 16:9DBC: 20        .byte $20   ; <み>
- D - I - - 0x02DDCD 16:9DBD: 00        .byte $00
- D - I - - 0x02DDCE 16:9DBE: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DDCF 16:9DBF: 20        .byte $20   ; <み>
- D - I - - 0x02DDD0 16:9DC0: 83        .byte $83   ; <C>
- D - I - - 0x02DDD1 16:9DC1: 21        .byte $21   ; <む>
- D - I - - 0x02DDD2 16:9DC2: C3        .byte $C3   ; <バ>
- D - I - - 0x02DDD3 16:9DC3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DDD4 16:9DC4: C2        .byte $C2   ; <ド>
- D - I - - 0x02DDD5 16:9DC5: 24        .byte $24   ; <や>
- D - I - - 0x02DDD6 16:9DC6: C6        .byte $C6   ; <ベ>
- D - I - - 0x02DDD7 16:9DC7: 25        .byte $25   ; <ゆ>

- D - I - - 0x02DDD8 16:9DC8: 28        .byte $28   ; <り>
- D - I - - 0x02DDD9 16:9DC9: 01        .byte $01   ; <あ>
- D - I - - 0x02DDDA 16:9DCA: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DDDB 16:9DCB: 20        .byte $20   ; <み>
- D - I - - 0x02DDDC 16:9DCC: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DDDD 16:9DCD: 22        .byte $22   ; <め>
- D - I - - 0x02DDDE 16:9DCE: 83        .byte $83   ; <C>
- D - I - - 0x02DDDF 16:9DCF: 23        .byte $23   ; <も>
- D - I - - 0x02DDE0 16:9DD0: C3        .byte $C3   ; <バ>
- D - I - - 0x02DDE1 16:9DD1: 26        .byte $26   ; <よ>
- D - I - - 0x02DDE2 16:9DD2: C7        .byte $C7   ; <ボ>
- D - I - - 0x02DDE3 16:9DD3: 32        .byte $32   ; <ょ>
- D - I - - 0x02DDE4 16:9DD4: C6        .byte $C6   ; <ベ>
- D - I - - 0x02DDE5 16:9DD5: 27        .byte $27   ; <ら>

- D - I - - 0x02DDE6 16:9DD6: 20        .byte $20   ; <み>
- D - I - - 0x02DDE7 16:9DD7: 02        .byte $02   ; <い>
- D - I - - 0x02DDE8 16:9DD8: 13        .byte $13   ; <て>
- D - I - - 0x02DDE9 16:9DD9: 20        .byte $20   ; <み>
- D - I - - 0x02DDEA 16:9DDA: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DDEB 16:9DDB: 22        .byte $22   ; <め>
- D - I - - 0x02DDEC 16:9DDC: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DDED 16:9DDD: 23        .byte $23   ; <も>
- D - I - - 0x02DDEE 16:9DDE: 83        .byte $83   ; <C>
- D - I - - 0x02DDEF 16:9DDF: 30        .byte $30   ; <ゃ>
- D - I - - 0x02DDF0 16:9DE0: C3        .byte $C3   ; <バ>
- D - I - - 0x02DDF1 16:9DE1: 31        .byte $31   ; <ゅ>

- D - I - - 0x02DDF2 16:9DE2: 28        .byte $28   ; <り>
- D - I - - 0x02DDF3 16:9DE3: 03        .byte $03   ; <う>
- D - I - - 0x02DDF4 16:9DE4: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DDF5 16:9DE5: 28        .byte $28   ; <り>
- D - I - - 0x02DDF6 16:9DE6: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DDF7 16:9DE7: 29        .byte $29   ; <る>
- D - I - - 0x02DDF8 16:9DE8: 13        .byte $13   ; <て>
- D - I - - 0x02DDF9 16:9DE9: 2C        .byte $2C   ; <わ>
- D - I - - 0x02DDFA 16:9DEA: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DDFB 16:9DEB: 2D        .byte $2D   ; <を>
- D - I - - 0x02DDFC 16:9DEC: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DDFD 16:9DED: 38        .byte $38   ; <5>
- D - I - - 0x02DDFE 16:9DEE: 83        .byte $83   ; <C>
- D - I - - 0x02DDFF 16:9DEF: 39        .byte $39   ; <6>

- D - I - - 0x02DE00 16:9DF0: 18        .byte $18   ; <ね>
- D - I - - 0x02DE01 16:9DF1: 04        .byte $04   ; <え>
- D - I - - 0x02DE02 16:9DF2: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE03 16:9DF3: 10        .byte $10   ; <た>
- D - I - - 0x02DE04 16:9DF4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DE05 16:9DF5: 11        .byte $11   ; <ち>
- D - I - - 0x02DE06 16:9DF6: 13        .byte $13   ; <て>
- D - I - - 0x02DE07 16:9DF7: 14        .byte $14   ; <と>
- D - I - - 0x02DE08 16:9DF8: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DE09 16:9DF9: 15        .byte $15   ; <な>

- D - I - - 0x02DE0A 16:9DFA: 20        .byte $20   ; <み>
- D - I - - 0x02DE0B 16:9DFB: 05        .byte $05   ; <お>
- D - I - - 0x02DE0C 16:9DFC: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE0D 16:9DFD: 12        .byte $12   ; <つ>
- D - I - - 0x02DE0E 16:9DFE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DE0F 16:9DFF: 15        .byte $15   ; <な>
- D - I - - 0x02DE10 16:9E00: 83        .byte $83   ; <C>
- D - I - - 0x02DE11 16:9E01: 13        .byte $13   ; <て>
- D - I - - 0x02DE12 16:9E02: C3        .byte $C3   ; <バ>
- D - I - - 0x02DE13 16:9E03: 16        .byte $16   ; <に>
- D - I - - 0x02DE14 16:9E04: C7        .byte $C7   ; <ボ>
- D - I - - 0x02DE15 16:9E05: 17        .byte $17   ; <ぬ>

- D - I - - 0x02DE16 16:9E06: 38        .byte $38   ; <5>
- D - I - - 0x02DE17 16:9E07: 06        .byte $06   ; <か>
- D - I - - 0x02DE18 16:9E08: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE19 16:9E09: 18        .byte $18   ; <ね>
- D - I - - 0x02DE1A 16:9E0A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DE1B 16:9E0B: 19        .byte $19   ; <の>
- D - I - - 0x02DE1C 16:9E0C: 13        .byte $13   ; <て>
- D - I - - 0x02DE1D 16:9E0D: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02DE1E 16:9E0E: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DE1F 16:9E0F: 1D        .byte $1D   ; <へ>
- D - I - - 0x02DE20 16:9E10: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DE21 16:9E11: 1A        .byte $1A   ; <は>
- D - I - - 0x02DE22 16:9E12: 83        .byte $83   ; <C>
- D - I - - 0x02DE23 16:9E13: 23        .byte $23   ; <も>
- D - I - - 0x02DE24 16:9E14: C3        .byte $C3   ; <バ>
- D - I - - 0x02DE25 16:9E15: 23        .byte $23   ; <も>
- D - I - - 0x02DE26 16:9E16: C7        .byte $C7   ; <ボ>
- D - I - - 0x02DE27 16:9E17: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02DE28 16:9E18: 38        .byte $38   ; <5>
- D - I - - 0x02DE29 16:9E19: 07        .byte $07   ; <き>
- D - I - - 0x02DE2A 16:9E1A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE2B 16:9E1B: 2A        .byte $2A   ; <れ>
- D - I - - 0x02DE2C 16:9E1C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DE2D 16:9E1D: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02DE2E 16:9E1E: 13        .byte $13   ; <て>
- D - I - - 0x02DE2F 16:9E1F: 2E        .byte $2E   ; <ん>
- D - I - - 0x02DE30 16:9E20: 17        .byte $17   ; <ぬ>
- D - I - - 0x02DE31 16:9E21: 2F        .byte $2F   ; <っ>
- D - I - - 0x02DE32 16:9E22: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DE33 16:9E23: 3A        .byte $3A   ; <7>
- D - I - - 0x02DE34 16:9E24: 83        .byte $83   ; <C>
- D - I - - 0x02DE35 16:9E25: 3B        .byte $3B   ; <8>
- D - I - - 0x02DE36 16:9E26: C3        .byte $C3   ; <バ>
- D - I - - 0x02DE37 16:9E27: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02DE38 16:9E28: C7        .byte $C7   ; <ボ>
- D - I - - 0x02DE39 16:9E29: 1F        .byte $1F   ; <ま>

- D - I - - 0x02DE3A 16:9E2A: 30        .byte $30   ; <ゃ>
- D - I - - 0x02DE3B 16:9E2B: 08        .byte $08   ; <く>
- D - I - - 0x02DE3C 16:9E2C: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE3D 16:9E2D: 34        .byte $34   ; <1>
- D - I - - 0x02DE3E 16:9E2E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DE3F 16:9E2F: 35        .byte $35   ; <2>
- D - I - - 0x02DE40 16:9E30: 13        .byte $13   ; <て>
- D - I - - 0x02DE41 16:9E31: 15        .byte $15   ; <な>
- D - I - - 0x02DE42 16:9E32: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DE43 16:9E33: 33        .byte $33   ; <0>
- D - I - - 0x02DE44 16:9E34: 83        .byte $83   ; <C>
- D - I - - 0x02DE45 16:9E35: 36        .byte $36   ; <3>
- D - I - - 0x02DE46 16:9E36: C3        .byte $C3   ; <バ>
- D - I - - 0x02DE47 16:9E37: 37        .byte $37   ; <4>
- D - I - - 0x02DE48 16:9E38: C7        .byte $C7   ; <ボ>
- D - I - - 0x02DE49 16:9E39: 3C        .byte $3C   ; <9>

- D - I - - 0x02DE4A 16:9E3A: 01        .byte $01   ; <あ>



off_9E3B_4F:
- D - I - - 0x02DE4B 16:9E3B: 03        .byte $03   ; <う>
- D - I - - 0x02DE4C 16:9E3C: 54 9E     .word off_9E54
- D - I - - 0x02DE4E 16:9E3E: C3 9E     .word off_9EC3
- D - I - - 0x02DE50 16:9E40: 54 9E     .word off_9E54
- D - I - - 0x02DE52 16:9E42: 54 9E     .word off_9E54
- D - I - - 0x02DE54 16:9E44: 54 9E     .word off_9E54
- D - I - - 0x02DE56 16:9E46: 54 9E     .word off_9E54
- D - I - - 0x02DE58 16:9E48: 54 9E     .word off_9E54
- D - I - - 0x02DE5A 16:9E4A: D4 9E     .word off_9ED4
- D - I - - 0x02DE5C 16:9E4C: 54 9E     .word off_9E54
- D - I - - 0x02DE5E 16:9E4E: 54 9E     .word off_9E54
- D - I - - 0x02DE60 16:9E50: 54 9E     .word off_9E54
- - - - - - 0x02DE62 16:9E52: 54 9E     .word off_9E54



off_9E54:
- D - I - - 0x02DE64 16:9E54: 00        .byte $00
- D - I - - 0x02DE65 16:9E55: 04        .byte $04   ; <え>
- D - I - - 0x02DE66 16:9E56: 09        .byte $09   ; <け>
- D - I - - 0x02DE67 16:9E57: 22        .byte $22   ; <め>

- D - I - - 0x02DE68 16:9E58: 08        .byte $08   ; <く>
- D - I - - 0x02DE69 16:9E59: 05        .byte $05   ; <お>
- D - I - - 0x02DE6A 16:9E5A: 09        .byte $09   ; <け>
- D - I - - 0x02DE6B 16:9E5B: 28        .byte $28   ; <り>
- D - I - - 0x02DE6C 16:9E5C: 0D        .byte $0D   ; <す>
- D - I - - 0x02DE6D 16:9E5D: 29        .byte $29   ; <る>
; продолжение


off_9E5E:
- D - I - - 0x02DE6E 16:9E5E: 10        .byte $10   ; <た>
- D - I - - 0x02DE6F 16:9E5F: 06        .byte $06   ; <か>
- D - I - - 0x02DE70 16:9E60: 09        .byte $09   ; <け>
- D - I - - 0x02DE71 16:9E61: 2A        .byte $2A   ; <れ>
- D - I - - 0x02DE72 16:9E62: 0C        .byte $0C   ; <し>
- D - I - - 0x02DE73 16:9E63: 23        .byte $23   ; <も>
- D - I - - 0x02DE74 16:9E64: 0D        .byte $0D   ; <す>
- D - I - - 0x02DE75 16:9E65: 2B        .byte $2B   ; <ろ>
; продолжение


off_9E66:
- D - I - - 0x02DE76 16:9E66: 10        .byte $10   ; <た>
- D - I - - 0x02DE77 16:9E67: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02DE78 16:9E68: B5        .byte $B5   ; <ギ>
- D - I - - 0x02DE79 16:9E69: 02        .byte $02   ; <い>
- D - I - - 0x02DE7A 16:9E6A: 05        .byte $05   ; <お>
- D - I - - 0x02DE7B 16:9E6B: 04        .byte $04   ; <え>
- D - I - - 0x02DE7C 16:9E6C: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE7D 16:9E6D: 05        .byte $05   ; <お>

- D - I - - 0x02DE7E 16:9E6E: 20        .byte $20   ; <み>
- D - I - - 0x02DE7F 16:9E6F: 00        .byte $00
- D - I - - 0x02DE80 16:9E70: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02DE81 16:9E71: 08        .byte $08   ; <く>
- D - I - - 0x02DE82 16:9E72: 69        .byte $69   ; <ル>
- D - I - - 0x02DE83 16:9E73: 03        .byte $03   ; <う>
- D - I - - 0x02DE84 16:9E74: 01        .byte $01   ; <あ>
- D - I - - 0x02DE85 16:9E75: 06        .byte $06   ; <か>
- D - I - - 0x02DE86 16:9E76: 09        .byte $09   ; <け>
- D - I - - 0x02DE87 16:9E77: 07        .byte $07   ; <き>
- D - I - - 0x02DE88 16:9E78: 0D        .byte $0D   ; <す>
- D - I - - 0x02DE89 16:9E79: 12        .byte $12   ; <つ>

- D - I - - 0x02DE8A 16:9E7A: 28        .byte $28   ; <り>
- D - I - - 0x02DE8B 16:9E7B: 01        .byte $01   ; <あ>
- D - I - - 0x02DE8C 16:9E7C: 69        .byte $69   ; <ル>
- D - I - - 0x02DE8D 16:9E7D: 09        .byte $09   ; <け>
- D - I - - 0x02DE8E 16:9E7E: 01        .byte $01   ; <あ>
- D - I - - 0x02DE8F 16:9E7F: 0C        .byte $0C   ; <し>
- D - I - - 0x02DE90 16:9E80: 05        .byte $05   ; <お>
- D - I - - 0x02DE91 16:9E81: 0D        .byte $0D   ; <す>
- D - I - - 0x02DE92 16:9E82: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DE93 16:9E83: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DE94 16:9E84: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DE95 16:9E85: 0B        .byte $0B   ; <さ>
- D - I - - 0x02DE96 16:9E86: 10        .byte $10   ; <た>
- D - I - - 0x02DE97 16:9E87: 0E        .byte $0E   ; <せ>

- D - I - - 0x02DE98 16:9E88: 20        .byte $20   ; <み>
- D - I - - 0x02DE99 16:9E89: 02        .byte $02   ; <い>
- D - I - - 0x02DE9A 16:9E8A: 01        .byte $01   ; <あ>
- D - I - - 0x02DE9B 16:9E8B: 20        .byte $20   ; <み>
- D - I - - 0x02DE9C 16:9E8C: 05        .byte $05   ; <お>
- D - I - - 0x02DE9D 16:9E8D: 21        .byte $21   ; <む>
- D - I - - 0x02DE9E 16:9E8E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DE9F 16:9E8F: 24        .byte $24   ; <や>
- D - I - - 0x02DEA0 16:9E90: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DEA1 16:9E91: 25        .byte $25   ; <ゆ>
- D - I - - 0x02DEA2 16:9E92: 12        .byte $12   ; <つ>
- D - I - - 0x02DEA3 16:9E93: 30        .byte $30   ; <ゃ>

- D - I - - 0x02DEA4 16:9E94: 30        .byte $30   ; <ゃ>
- D - I - - 0x02DEA5 16:9E95: 03        .byte $03   ; <う>
- D - I - - 0x02DEA6 16:9E96: 04        .byte $04   ; <え>
- D - I - - 0x02DEA7 16:9E97: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DEA8 16:9E98: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DEA9 16:9E99: 1A        .byte $1A   ; <は>
- D - I - - 0x02DEAA 16:9E9A: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DEAB 16:9E9B: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DEAC 16:9E9C: 0D        .byte $0D   ; <す>
- D - I - - 0x02DEAD 16:9E9D: 18        .byte $18   ; <ね>
- D - I - - 0x02DEAE 16:9E9E: 12        .byte $12   ; <つ>
- D - I - - 0x02DEAF 16:9E9F: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02DEB0 16:9EA0: 11        .byte $11   ; <ち>
- D - I - - 0x02DEB1 16:9EA1: 19        .byte $19   ; <の>
- D - I - - 0x02DEB2 16:9EA2: 14        .byte $14   ; <と>
- D - I - - 0x02DEB3 16:9EA3: 1F        .byte $1F   ; <ま>

- D - I - - 0x02DEB4 16:9EA4: 08        .byte $08   ; <く>
- D - I - - 0x02DEB5 16:9EA5: 04        .byte $04   ; <え>
- D - I - - 0x02DEB6 16:9EA6: 0D        .byte $0D   ; <す>
- D - I - - 0x02DEB7 16:9EA7: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02DEB8 16:9EA8: 11        .byte $11   ; <ち>
- D - I - - 0x02DEB9 16:9EA9: 1D        .byte $1D   ; <へ>

- D - I - - 0x02DEBA 16:9EAA: 00        .byte $00
- D - I - - 0x02DEBB 16:9EAB: 05        .byte $05   ; <お>
- D - I - - 0x02DEBC 16:9EAC: 11        .byte $11   ; <ち>
- D - I - - 0x02DEBD 16:9EAD: 15        .byte $15   ; <な>

- D - I - - 0x02DEBE 16:9EAE: 08        .byte $08   ; <く>
- D - I - - 0x02DEBF 16:9EAF: 06        .byte $06   ; <か>
- D - I - - 0x02DEC0 16:9EB0: 04        .byte $04   ; <え>
- D - I - - 0x02DEC1 16:9EB1: 31        .byte $31   ; <ゅ>
- D - I - - 0x02DEC2 16:9EB2: 11        .byte $11   ; <ち>
- D - I - - 0x02DEC3 16:9EB3: 17        .byte $17   ; <ぬ>

- D - I - - 0x02DEC4 16:9EB4: 10        .byte $10   ; <た>
- D - I - - 0x02DEC5 16:9EB5: 07        .byte $07   ; <き>
- D - I - - 0x02DEC6 16:9EB6: 00        .byte $00
- D - I - - 0x02DEC7 16:9EB7: 14        .byte $14   ; <と>
- D - I - - 0x02DEC8 16:9EB8: 04        .byte $04   ; <え>
- D - I - - 0x02DEC9 16:9EB9: 10        .byte $10   ; <た>
- D - I - - 0x02DECA 16:9EBA: 08        .byte $08   ; <く>
- D - I - - 0x02DECB 16:9EBB: 11        .byte $11   ; <ち>

- D - I - - 0x02DECC 16:9EBC: 08        .byte $08   ; <く>
- D - I - - 0x02DECD 16:9EBD: 08        .byte $08   ; <く>
- D - I - - 0x02DECE 16:9EBE: 00        .byte $00
- D - I - - 0x02DECF 16:9EBF: 13        .byte $13   ; <て>
- D - I - - 0x02DED0 16:9EC0: 04        .byte $04   ; <え>
- D - I - - 0x02DED1 16:9EC1: 16        .byte $16   ; <に>

- D - I - - 0x02DED2 16:9EC2: 01        .byte $01   ; <あ>



off_9EC3:
- D - I - - 0x02DED3 16:9EC3: 08        .byte $08   ; <く>
- D - I - - 0x02DED4 16:9EC4: 04        .byte $04   ; <え>
- D - I - - 0x02DED5 16:9EC5: 08        .byte $08   ; <く>
- D - I - - 0x02DED6 16:9EC6: 26        .byte $26   ; <よ>
- D - I - - 0x02DED7 16:9EC7: 09        .byte $09   ; <け>
- D - I - - 0x02DED8 16:9EC8: 27        .byte $27   ; <ら>

- D - I - - 0x02DED9 16:9EC9: 10        .byte $10   ; <た>
- D - I - - 0x02DEDA 16:9ECA: 05        .byte $05   ; <お>
- D - I - - 0x02DEDB 16:9ECB: 08        .byte $08   ; <く>
- D - I - - 0x02DEDC 16:9ECC: 2C        .byte $2C   ; <わ>
- D - I - - 0x02DEDD 16:9ECD: 09        .byte $09   ; <け>
- D - I - - 0x02DEDE 16:9ECE: 2D        .byte $2D   ; <を>
- D - I - - 0x02DEDF 16:9ECF: 0D        .byte $0D   ; <す>
- D - I - - 0x02DEE0 16:9ED0: 29        .byte $29   ; <る>

- D - I - - 0x02DEE1 16:9ED1: 02        .byte $02   ; <い>
- D - I - - 0x02DEE2 16:9ED2: 5E 9E     .word off_9E5E



off_9ED4:
- D - I - - 0x02DEE4 16:9ED4: 00        .byte $00
- D - I - - 0x02DEE5 16:9ED5: 04        .byte $04   ; <え>
- D - I - - 0x02DEE6 16:9ED6: 09        .byte $09   ; <け>
- D - I - - 0x02DEE7 16:9ED7: 22        .byte $22   ; <め>

- D - I - - 0x02DEE8 16:9ED8: 08        .byte $08   ; <く>
- D - I - - 0x02DEE9 16:9ED9: 05        .byte $05   ; <お>
- D - I - - 0x02DEEA 16:9EDA: 09        .byte $09   ; <け>
- D - I - - 0x02DEEB 16:9EDB: 2E        .byte $2E   ; <ん>
- D - I - - 0x02DEEC 16:9EDC: 0D        .byte $0D   ; <す>
- D - I - - 0x02DEED 16:9EDD: 2F        .byte $2F   ; <っ>

- D - I - - 0x02DEEE 16:9EDE: 10        .byte $10   ; <た>
- D - I - - 0x02DEEF 16:9EDF: 06        .byte $06   ; <か>
- D - I - - 0x02DEF0 16:9EE0: 08        .byte $08   ; <く>
- D - I - - 0x02DEF1 16:9EE1: 32        .byte $32   ; <ょ>
- D - I - - 0x02DEF2 16:9EE2: 0C        .byte $0C   ; <し>
- D - I - - 0x02DEF3 16:9EE3: 23        .byte $23   ; <も>
- D - I - - 0x02DEF4 16:9EE4: 0D        .byte $0D   ; <す>
- D - I - - 0x02DEF5 16:9EE5: 33        .byte $33   ; <0>

- D - I - - 0x02DEF6 16:9EE6: 02        .byte $02   ; <い>
- D - I - - 0x02DEF7 16:9EE7: 66 9E     .word off_9E66



off_9EE9_50:
- D - I - - 0x02DEF9 16:9EE9: 03        .byte $03   ; <う>
- D - I - - 0x02DEFA 16:9EEA: 02 9F     .word off_9F02
- D - I - - 0x02DEFC 16:9EEC: 15 9F     .word off_9F15
- D - I - - 0x02DEFE 16:9EEE: 02 9F     .word off_9F02
- D - I - - 0x02DF00 16:9EF0: 02 9F     .word off_9F02
- D - I - - 0x02DF02 16:9EF2: 2A 9F     .word off_9F2A
- D - I - - 0x02DF04 16:9EF4: 2A 9F     .word off_9F2A
- D - I - - 0x02DF06 16:9EF6: 2A 9F     .word off_9F2A
- D - I - - 0x02DF08 16:9EF8: 3D 9F     .word off_9F3D
- D - I - - 0x02DF0A 16:9EFA: 2A 9F     .word off_9F2A
- D - I - - 0x02DF0C 16:9EFC: 2A 9F     .word off_9F2A
- - - - - - 0x02DF0E 16:9EFE: 2A 9F     .word off_9F2A
- D - I - - 0x02DF10 16:9F00: 2A 9F     .word off_9F2A



off_9F02:
- D - I - - 0x02DF12 16:9F02: 18        .byte $18   ; <ね>
- D - I - - 0x02DF13 16:9F03: 05        .byte $05   ; <お>
- D - I - - 0x02DF14 16:9F04: 10        .byte $10   ; <た>
- D - I - - 0x02DF15 16:9F05: 42        .byte $42   ; <イ>
- D - I - - 0x02DF16 16:9F06: 15        .byte $15   ; <な>
- D - I - - 0x02DF17 16:9F07: 49        .byte $49   ; <ケ>
- D - I - - 0x02DF18 16:9F08: 14        .byte $14   ; <と>
- D - I - - 0x02DF19 16:9F09: 46        .byte $46   ; <カ>
- D - I - - 0x02DF1A 16:9F0A: 19        .byte $19   ; <の>
- D - I - - 0x02DF1B 16:9F0B: 4C        .byte $4C   ; <シ>

- D - I - - 0x02DF1C 16:9F0C: 08        .byte $08   ; <く>
- D - I - - 0x02DF1D 16:9F0D: 06        .byte $06   ; <か>
- D - I - - 0x02DF1E 16:9F0E: 14        .byte $14   ; <と>
- D - I - - 0x02DF1F 16:9F0F: 44        .byte $44   ; <エ>
- D - I - - 0x02DF20 16:9F10: 19        .byte $19   ; <の>
- D - I - - 0x02DF21 16:9F11: 45        .byte $45   ; <オ>

- D - I - - 0x02DF22 16:9F12: 02        .byte $02   ; <い>
- D - I - - 0x02DF23 16:9F13: 4D 9F     .word off_9F4D



off_9F15:
- D - I - - 0x02DF25 16:9F15: 18        .byte $18   ; <ね>
- D - I - - 0x02DF26 16:9F16: 05        .byte $05   ; <お>
- D - I - - 0x02DF27 16:9F17: 10        .byte $10   ; <た>
- D - I - - 0x02DF28 16:9F18: 63        .byte $63   ; <モ>
- D - I - - 0x02DF29 16:9F19: 15        .byte $15   ; <な>
- D - I - - 0x02DF2A 16:9F1A: 66        .byte $66   ; <ヨ>
- D - I - - 0x02DF2B 16:9F1B: 14        .byte $14   ; <と>
- D - I - - 0x02DF2C 16:9F1C: 18        .byte $18   ; <ね>
- D - I - - 0x02DF2D 16:9F1D: 19        .byte $19   ; <の>
- D - I - - 0x02DF2E 16:9F1E: 4C        .byte $4C   ; <シ>

- D - I - - 0x02DF2F 16:9F1F: 10        .byte $10   ; <た>
- D - I - - 0x02DF30 16:9F20: 06        .byte $06   ; <か>
- D - I - - 0x02DF31 16:9F21: 10        .byte $10   ; <た>
- D - I - - 0x02DF32 16:9F22: 69        .byte $69   ; <ル>
- D - I - - 0x02DF33 16:9F23: 14        .byte $14   ; <と>
- D - I - - 0x02DF34 16:9F24: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02DF35 16:9F25: 19        .byte $19   ; <の>
- D - I - - 0x02DF36 16:9F26: 45        .byte $45   ; <オ>

- D - I - - 0x02DF37 16:9F27: 02        .byte $02   ; <い>
- D - I - - 0x02DF38 16:9F28: 4D 9F     .word off_9F4D



off_9F2A:
- D - I - - 0x02DF3A 16:9F2A: 18        .byte $18   ; <ね>
- D - I - - 0x02DF3B 16:9F2B: 05        .byte $05   ; <お>
- D - I - - 0x02DF3C 16:9F2C: 10        .byte $10   ; <た>
- D - I - - 0x02DF3D 16:9F2D: 42        .byte $42   ; <イ>
- D - I - - 0x02DF3E 16:9F2E: 15        .byte $15   ; <な>
- D - I - - 0x02DF3F 16:9F2F: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02DF40 16:9F30: 14        .byte $14   ; <と>
- D - I - - 0x02DF41 16:9F31: 6A        .byte $6A   ; <レ>
- D - I - - 0x02DF42 16:9F32: 19        .byte $19   ; <の>
- D - I - - 0x02DF43 16:9F33: 4C        .byte $4C   ; <シ>

- D - I - - 0x02DF44 16:9F34: 08        .byte $08   ; <く>
- D - I - - 0x02DF45 16:9F35: 06        .byte $06   ; <か>
- D - I - - 0x02DF46 16:9F36: 14        .byte $14   ; <と>
- D - I - - 0x02DF47 16:9F37: 6E        .byte $6E   ; <ン>
- D - I - - 0x02DF48 16:9F38: 19        .byte $19   ; <の>
- D - I - - 0x02DF49 16:9F39: 45        .byte $45   ; <オ>

- D - I - - 0x02DF4A 16:9F3A: 02        .byte $02   ; <い>
- D - I - - 0x02DF4B 16:9F3B: 4D 9F     .word off_9F4D



off_9F3D:
- D - I - - 0x02DF4D 16:9F3D: 18        .byte $18   ; <ね>
- D - I - - 0x02DF4E 16:9F3E: 05        .byte $05   ; <お>
- D - I - - 0x02DF4F 16:9F3F: 10        .byte $10   ; <た>
- D - I - - 0x02DF50 16:9F40: 42        .byte $42   ; <イ>
- D - I - - 0x02DF51 16:9F41: 15        .byte $15   ; <な>
- D - I - - 0x02DF52 16:9F42: 4E        .byte $4E   ; <セ>
- D - I - - 0x02DF53 16:9F43: 14        .byte $14   ; <と>
- D - I - - 0x02DF54 16:9F44: 46        .byte $46   ; <カ>
- D - I - - 0x02DF55 16:9F45: 19        .byte $19   ; <の>
- D - I - - 0x02DF56 16:9F46: 47        .byte $47   ; <キ>

- D - I - - 0x02DF57 16:9F47: 08        .byte $08   ; <く>
- D - I - - 0x02DF58 16:9F48: 06        .byte $06   ; <か>
- D - I - - 0x02DF59 16:9F49: 14        .byte $14   ; <と>
- D - I - - 0x02DF5A 16:9F4A: 64        .byte $64   ; <ヤ>
- D - I - - 0x02DF5B 16:9F4B: 18        .byte $18   ; <ね>
- D - I - - 0x02DF5C 16:9F4C: 4D        .byte $4D   ; <ス>
; продолжение


off_9F4D:
- D - I - - 0x02DF5D 16:9F4D: 00        .byte $00
- D - I - - 0x02DF5E 16:9F4E: 18        .byte $18   ; <ね>
- D - I - - 0x02DF5F 16:9F4F: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02DF60 16:9F50: 38        .byte $38   ; <5>

- D - I - - 0x02DF61 16:9F51: 28        .byte $28   ; <り>
- D - I - - 0x02DF62 16:9F52: 02        .byte $02   ; <い>
- D - I - - 0x02DF63 16:9F53: 03        .byte $03   ; <う>
- D - I - - 0x02DF64 16:9F54: 34        .byte $34   ; <1>
- D - I - - 0x02DF65 16:9F55: 05        .byte $05   ; <お>
- D - I - - 0x02DF66 16:9F56: 36        .byte $36   ; <3>
- D - I - - 0x02DF67 16:9F57: 09        .byte $09   ; <け>
- D - I - - 0x02DF68 16:9F58: 37        .byte $37   ; <4>
- D - I - - 0x02DF69 16:9F59: 0D        .byte $0D   ; <す>
- D - I - - 0x02DF6A 16:9F5A: 62        .byte $62   ; <メ>
- D - I - - 0x02DF6B 16:9F5B: 11        .byte $11   ; <ち>
- D - I - - 0x02DF6C 16:9F5C: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02DF6D 16:9F5D: 15        .byte $15   ; <な>
- D - I - - 0x02DF6E 16:9F5E: 65        .byte $65   ; <ユ>

- D - I - - 0x02DF6F 16:9F5F: 30        .byte $30   ; <ゃ>
- D - I - - 0x02DF70 16:9F60: 03        .byte $03   ; <う>
- D - I - - 0x02DF71 16:9F61: 03        .byte $03   ; <う>
- D - I - - 0x02DF72 16:9F62: 39        .byte $39   ; <6>
- D - I - - 0x02DF73 16:9F63: 05        .byte $05   ; <お>
- D - I - - 0x02DF74 16:9F64: 3C        .byte $3C   ; <9>
- D - I - - 0x02DF75 16:9F65: 09        .byte $09   ; <け>
- D - I - - 0x02DF76 16:9F66: 3D        .byte $3D   ; <+>
- D - I - - 0x02DF77 16:9F67: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DF78 16:9F68: 68        .byte $68   ; <リ>
- D - I - - 0x02DF79 16:9F69: 11        .byte $11   ; <ち>
- D - I - - 0x02DF7A 16:9F6A: 35        .byte $35   ; <2>
- D - I - - 0x02DF7B 16:9F6B: 15        .byte $15   ; <な>
- D - I - - 0x02DF7C 16:9F6C: 60        .byte $60   ; <ミ>
- D - I - - 0x02DF7D 16:9F6D: 18        .byte $18   ; <ね>
- D - I - - 0x02DF7E 16:9F6E: 61        .byte $61   ; <ム>

- D - I - - 0x02DF7F 16:9F6F: 30        .byte $30   ; <ゃ>
- D - I - - 0x02DF80 16:9F70: 04        .byte $04   ; <え>
- D - I - - 0x02DF81 16:9F71: 0F        .byte $0F   ; <そ>
- D - I - - 0x02DF82 16:9F72: 3A        .byte $3A   ; <7>
- D - I - - 0x02DF83 16:9F73: 12        .byte $12   ; <つ>
- D - I - - 0x02DF84 16:9F74: 43        .byte $43   ; <ウ>
- D - I - - 0x02DF85 16:9F75: 12        .byte $12   ; <つ>
- D - I - - 0x02DF86 16:9F76: 3B        .byte $3B   ; <8>
- D - I - - 0x02DF87 16:9F77: 11        .byte $11   ; <ち>
- D - I - - 0x02DF88 16:9F78: 18        .byte $18   ; <ね>
- D - I - - 0x02DF89 16:9F79: 16        .byte $16   ; <に>
- D - I - - 0x02DF8A 16:9F7A: 48        .byte $48   ; <ク>
- D - I - - 0x02DF8B 16:9F7B: 15        .byte $15   ; <な>
- D - I - - 0x02DF8C 16:9F7C: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02DF8D 16:9F7D: 19        .byte $19   ; <の>
- D - I - - 0x02DF8E 16:9F7E: 3F        .byte $3F   ; <•>

- D - I - - 0x02DF8F 16:9F7F: 08        .byte $08   ; <く>
- D - I - - 0x02DF90 16:9F80: 07        .byte $07   ; <き>
- D - I - - 0x02DF91 16:9F81: 18        .byte $18   ; <ね>
- D - I - - 0x02DF92 16:9F82: 4A        .byte $4A   ; <コ>
- D - I - - 0x02DF93 16:9F83: 80        .byte $80
- D - I - - 0x02DF94 16:9F84: 4B        .byte $4B   ; <サ>

- D - I - - 0x02DF95 16:9F85: 01        .byte $01   ; <あ>



off_9F86_51:
- D - I - - 0x02DF96 16:9F86: 00        .byte $00
- D - I - - 0x02DF97 16:9F87: 04        .byte $04   ; <え>
- D - I - - 0x02DF98 16:9F88: 16        .byte $16   ; <に>
- D - I - - 0x02DF99 16:9F89: FD        .byte $FD

- D - I - - 0x02DF9A 16:9F8A: 08        .byte $08   ; <く>
- D - I - - 0x02DF9B 16:9F8B: 05        .byte $05   ; <お>
- D - I - - 0x02DF9C 16:9F8C: 12        .byte $12   ; <つ>
- D - I - - 0x02DF9D 16:9F8D: F9        .byte $F9
- D - I - - 0x02DF9E 16:9F8E: 16        .byte $16   ; <に>
- D - I - - 0x02DF9F 16:9F8F: FC        .byte $FC

- D - I - - 0x02DFA0 16:9F90: 20        .byte $20   ; <み>
- D - I - - 0x02DFA1 16:9F91: 06        .byte $06   ; <か>
- D - I - - 0x02DFA2 16:9F92: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DFA3 16:9F93: 53        .byte $53   ; <テ>
- D - I - - 0x02DFA4 16:9F94: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DFA5 16:9F95: 56        .byte $56   ; <ニ>
- D - I - - 0x02DFA6 16:9F96: 12        .byte $12   ; <つ>
- D - I - - 0x02DFA7 16:9F97: FB        .byte $FB
- D - I - - 0x02DFA8 16:9F98: 16        .byte $16   ; <に>
- D - I - - 0x02DFA9 16:9F99: FE        .byte $FE
- D - I - - 0x02DFAA 16:9F9A: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02DFAB 16:9F9B: FF        .byte $FF

- D - I - - 0x02DFAC 16:9F9C: 10        .byte $10   ; <た>
- D - I - - 0x02DFAD 16:9F9D: 07        .byte $07   ; <き>
- D - I - - 0x02DFAE 16:9F9E: 06        .byte $06   ; <か>
- D - I - - 0x02DFAF 16:9F9F: 58        .byte $58   ; <ネ>
- D - I - - 0x02DFB0 16:9FA0: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DFB1 16:9FA1: 59        .byte $59   ; <ノ>
- D - I - - 0x02DFB2 16:9FA2: 0E        .byte $0E   ; <せ>
- D - I - - 0x02DFB3 16:9FA3: 5C        .byte $5C   ; <フ>

- D - I - - 0x02DFB4 16:9FA4: 03        .byte $03   ; <う>
- D - I - - 0x02DFB5 16:9FA5: B1 9F     .word off_9FB1
- - - - - - 0x02DFB7 16:9FA7: C4 9F     .word off_9FC4
- D - I - - 0x02DFB9 16:9FA9: D7 9F     .word off_9FD7
- D - I - - 0x02DFBB 16:9FAB: EA 9F     .word off_9FEA
- D - I - - 0x02DFBD 16:9FAD: FD 9F     .word off_9FFD
- D - I - - 0x02DFBF 16:9FAF: 10 A0     .word off_A010



off_9FB1:
- D - I - - 0x02DFC1 16:9FB1: 20        .byte $20   ; <み>
- D - I - - 0x02DFC2 16:9FB2: 05        .byte $05   ; <お>
- D - I - - 0x02DFC3 16:9FB3: 06        .byte $06   ; <か>
- D - I - - 0x02DFC4 16:9FB4: 50        .byte $50   ; <タ>
- D - I - - 0x02DFC5 16:9FB5: 09        .byte $09   ; <け>
- D - I - - 0x02DFC6 16:9FB6: 51        .byte $51   ; <チ>
- D - I - - 0x02DFC7 16:9FB7: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DFC8 16:9FB8: 02        .byte $02   ; <い>
- D - I - - 0x02DFC9 16:9FB9: 0D        .byte $0D   ; <す>
- D - I - - 0x02DFCA 16:9FBA: 54        .byte $54   ; <ト>
- D - I - - 0x02DFCB 16:9FBB: 11        .byte $11   ; <ち>
- D - I - - 0x02DFCC 16:9FBC: 26        .byte $26   ; <よ>

- D - I - - 0x02DFCD 16:9FBD: 00        .byte $00
- D - I - - 0x02DFCE 16:9FBE: 06        .byte $06   ; <か>
- D - I - - 0x02DFCF 16:9FBF: 06        .byte $06   ; <か>
- D - I - - 0x02DFD0 16:9FC0: 52        .byte $52   ; <ツ>

- D - I - - 0x02DFD1 16:9FC1: 02        .byte $02   ; <い>
- D - I - - 0x02DFD2 16:9FC2: 96 99     .word off_9996



off_9FC4:
- - - - - - 0x02DFD4 16:9FC4: 20        .byte $20   ; <み>
- - - - - - 0x02DFD5 16:9FC5: 05        .byte $05   ; <お>
- - - - - - 0x02DFD6 16:9FC6: 06        .byte $06   ; <か>
- - - - - - 0x02DFD7 16:9FC7: 63        .byte $63   ; <モ>
- - - - - - 0x02DFD8 16:9FC8: 09        .byte $09   ; <け>
- - - - - - 0x02DFD9 16:9FC9: 66        .byte $66   ; <ヨ>
- - - - - - 0x02DFDA 16:9FCA: 0A        .byte $0A   ; <こ>
- - - - - - 0x02DFDB 16:9FCB: 02        .byte $02   ; <い>
- - - - - - 0x02DFDC 16:9FCC: 0D        .byte $0D   ; <す>
- - - - - - 0x02DFDD 16:9FCD: 67        .byte $67   ; <ラ>
- - - - - - 0x02DFDE 16:9FCE: 11        .byte $11   ; <ち>
- - - - - - 0x02DFDF 16:9FCF: 18        .byte $18   ; <ね>

- - - - - - 0x02DFE0 16:9FD0: 00        .byte $00
- - - - - - 0x02DFE1 16:9FD1: 06        .byte $06   ; <か>
- - - - - - 0x02DFE2 16:9FD2: 06        .byte $06   ; <か>
- - - - - - 0x02DFE3 16:9FD3: 52        .byte $52   ; <ツ>

- - - - - - 0x02DFE4 16:9FD4: 02        .byte $02   ; <い>
- - - - - - 0x02DFE5 16:9FD5: DB 99     .word off_99DB



off_9FD7:
- D - I - - 0x02DFE7 16:9FD7: 20        .byte $20   ; <み>
- D - I - - 0x02DFE8 16:9FD8: 05        .byte $05   ; <お>
- D - I - - 0x02DFE9 16:9FD9: 06        .byte $06   ; <か>
- D - I - - 0x02DFEA 16:9FDA: 57        .byte $57   ; <ヌ>
- D - I - - 0x02DFEB 16:9FDB: 09        .byte $09   ; <け>
- D - I - - 0x02DFEC 16:9FDC: 55        .byte $55   ; <ナ>
- D - I - - 0x02DFED 16:9FDD: 0A        .byte $0A   ; <こ>
- D - I - - 0x02DFEE 16:9FDE: 02        .byte $02   ; <い>
- D - I - - 0x02DFEF 16:9FDF: 0D        .byte $0D   ; <す>
- D - I - - 0x02DFF0 16:9FE0: 54        .byte $54   ; <ト>
- D - I - - 0x02DFF1 16:9FE1: 11        .byte $11   ; <ち>
- D - I - - 0x02DFF2 16:9FE2: 26        .byte $26   ; <よ>

- D - I - - 0x02DFF3 16:9FE3: 00        .byte $00
- D - I - - 0x02DFF4 16:9FE4: 06        .byte $06   ; <か>
- D - I - - 0x02DFF5 16:9FE5: 06        .byte $06   ; <か>
- D - I - - 0x02DFF6 16:9FE6: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02DFF7 16:9FE7: 02        .byte $02   ; <い>
- D - I - - 0x02DFF8 16:9FE8: 28 9A     .word off_9A28



off_9FEA:
- D - I - - 0x02DFFA 16:9FEA: 20        .byte $20   ; <み>
- D - I - - 0x02DFFB 16:9FEB: 05        .byte $05   ; <お>
- D - I - - 0x02DFFC 16:9FEC: 06        .byte $06   ; <か>
- D - I - - 0x02DFFD 16:9FED: 50        .byte $50   ; <タ>
- D - I - - 0x02DFFE 16:9FEE: 09        .byte $09   ; <け>
- D - I - - 0x02DFFF 16:9FEF: 51        .byte $51   ; <チ>
- D - I - - 0x02E000 16:9FF0: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E001 16:9FF1: 02        .byte $02   ; <い>
- D - I - - 0x02E002 16:9FF2: 0D        .byte $0D   ; <す>
- D - I - - 0x02E003 16:9FF3: 54        .byte $54   ; <ト>
- D - I - - 0x02E004 16:9FF4: 11        .byte $11   ; <ち>
- D - I - - 0x02E005 16:9FF5: 26        .byte $26   ; <よ>

- D - I - - 0x02E006 16:9FF6: 00        .byte $00
- D - I - - 0x02E007 16:9FF7: 06        .byte $06   ; <か>
- D - I - - 0x02E008 16:9FF8: 06        .byte $06   ; <か>
- D - I - - 0x02E009 16:9FF9: 52        .byte $52   ; <ツ>

- D - I - - 0x02E00A 16:9FFA: 02        .byte $02   ; <い>
- D - I - - 0x02E00B 16:9FFB: 71 9A     .word off_9A71



off_9FFD:
- D - I - - 0x02E00D 16:9FFD: 20        .byte $20   ; <み>
- D - I - - 0x02E00E 16:9FFE: 05        .byte $05   ; <お>
- D - I - - 0x02E00F 16:9FFF: 06        .byte $06   ; <か>
- D - - - - 0x02E010 16:A000: 50        .byte $50   ; <タ>
- D - I - - 0x02E011 16:A001: 09        .byte $09   ; <け>
- D - I - - 0x02E012 16:A002: 51        .byte $51   ; <チ>
- D - I - - 0x02E013 16:A003: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E014 16:A004: 02        .byte $02   ; <い>
- D - I - - 0x02E015 16:A005: 0D        .byte $0D   ; <す>
- D - I - - 0x02E016 16:A006: 54        .byte $54   ; <ト>
- D - I - - 0x02E017 16:A007: 11        .byte $11   ; <ち>
- D - I - - 0x02E018 16:A008: 26        .byte $26   ; <よ>

- D - I - - 0x02E019 16:A009: 00        .byte $00
- D - I - - 0x02E01A 16:A00A: 06        .byte $06   ; <か>
- D - I - - 0x02E01B 16:A00B: 06        .byte $06   ; <か>
- D - I - - 0x02E01C 16:A00C: 52        .byte $52   ; <ツ>

- D - I - - 0x02E01D 16:A00D: 02        .byte $02   ; <い>
- D - I - - 0x02E01E 16:A00E: B6 9A     .word off_9AB6



off_A010:
- D - I - - 0x02E020 16:A010: 20        .byte $20   ; <み>
- D - I - - 0x02E021 16:A011: 05        .byte $05   ; <お>
- D - I - - 0x02E022 16:A012: 06        .byte $06   ; <か>
- D - I - - 0x02E023 16:A013: 63        .byte $63   ; <モ>
- D - I - - 0x02E024 16:A014: 09        .byte $09   ; <け>
- D - I - - 0x02E025 16:A015: 66        .byte $66   ; <ヨ>
- D - I - - 0x02E026 16:A016: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E027 16:A017: 02        .byte $02   ; <い>
- D - I - - 0x02E028 16:A018: 0D        .byte $0D   ; <す>
- D - I - - 0x02E029 16:A019: 67        .byte $67   ; <ラ>
- D - I - - 0x02E02A 16:A01A: 11        .byte $11   ; <ち>
- D - I - - 0x02E02B 16:A01B: 18        .byte $18   ; <ね>

- D - I - - 0x02E02C 16:A01C: 00        .byte $00
- D - I - - 0x02E02D 16:A01D: 06        .byte $06   ; <か>
- D - I - - 0x02E02E 16:A01E: 06        .byte $06   ; <か>
- D - I - - 0x02E02F 16:A01F: 52        .byte $52   ; <ツ>

- D - I - - 0x02E030 16:A020: 02        .byte $02   ; <い>
- D - I - - 0x02E031 16:A021: FD 9A     .word off_9AFD



off_A023_52:
- D - I - - 0x02E033 16:A023: 03        .byte $03   ; <う>
- D - I - - 0x02E034 16:A024: 30 A0     .word off_A030
- D - I - - 0x02E036 16:A026: 57 A0     .word off_A057
- D - I - - 0x02E038 16:A028: 6A A0     .word off_A06A
- D - I - - 0x02E03A 16:A02A: 8D A0     .word off_A08D
- D - I - - 0x02E03C 16:A02C: 8D A0     .word off_A08D
- D - I - - 0x02E03E 16:A02E: 57 A0     .word off_A057



off_A030:
- D - I - - 0x02E040 16:A030: 08        .byte $08   ; <く>
- D - I - - 0x02E041 16:A031: 02        .byte $02   ; <い>
- D - I - - 0x02E042 16:A032: 47        .byte $47   ; <キ>
- D - I - - 0x02E043 16:A033: 83        .byte $83   ; <C>
- D - I - - 0x02E044 16:A034: 84        .byte $84   ; <D>
- D - I - - 0x02E045 16:A035: 86        .byte $86   ; <F>
; продолжение


off_A036:
- D - I - - 0x02E046 16:A036: 18        .byte $18   ; <ね>
- D - I - - 0x02E047 16:A037: 03        .byte $03   ; <う>
- D - I - - 0x02E048 16:A038: 42        .byte $42   ; <イ>
- D - I - - 0x02E049 16:A039: 88        .byte $88   ; <H>
- D - I - - 0x02E04A 16:A03A: 46        .byte $46   ; <カ>
- D - I - - 0x02E04B 16:A03B: 84        .byte $84   ; <D>
- D - I - - 0x02E04C 16:A03C: 45        .byte $45   ; <オ>
- D - I - - 0x02E04D 16:A03D: 89        .byte $89   ; <I>
- D - I - - 0x02E04E 16:A03E: 86        .byte $86   ; <F>
- D - I - - 0x02E04F 16:A03F: 8C        .byte $8C   ; <M>
; продолжение


off_A040:
- D - I - - 0x02E050 16:A040: 00        .byte $00
- D - I - - 0x02E051 16:A041: 02        .byte $02   ; <い>
- D - I - - 0x02E052 16:A042: 40        .byte $40   ; <「>
- D - I - - 0x02E053 16:A043: 82        .byte $82   ; <B>

- D - I - - 0x02E054 16:A044: 18        .byte $18   ; <ね>
- D - I - - 0x02E055 16:A045: 04        .byte $04   ; <え>
- D - I - - 0x02E056 16:A046: 42        .byte $42   ; <イ>
- D - I - - 0x02E057 16:A047: 8A        .byte $8A   ; <N>
- D - I - - 0x02E058 16:A048: 46        .byte $46   ; <カ>
- D - I - - 0x02E059 16:A049: 85        .byte $85   ; <E>
- D - I - - 0x02E05A 16:A04A: 45        .byte $45   ; <オ>
- D - I - - 0x02E05B 16:A04B: 8B        .byte $8B   ; <K>
- D - I - - 0x02E05C 16:A04C: 86        .byte $86   ; <F>
- D - I - - 0x02E05D 16:A04D: 8E        .byte $8E   ; <L>

- D - I - - 0x02E05E 16:A04E: 10        .byte $10   ; <た>
- D - I - - 0x02E05F 16:A04F: 05        .byte $05   ; <お>
- D - I - - 0x02E060 16:A050: 42        .byte $42   ; <イ>
- D - I - - 0x02E061 16:A051: A0        .byte $A0   ; <が>
- D - I - - 0x02E062 16:A052: 46        .byte $46   ; <カ>
- D - I - - 0x02E063 16:A053: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02E064 16:A054: 86        .byte $86   ; <F>
- D - I - - 0x02E065 16:A055: A4        .byte $A4   ; <ご>

- D - I - - 0x02E066 16:A056: 01        .byte $01   ; <あ>



off_A057:
- D - I - - 0x02E067 16:A057: 08        .byte $08   ; <く>
- D - I - - 0x02E068 16:A058: 02        .byte $02   ; <い>
- D - I - - 0x02E069 16:A059: 44        .byte $44   ; <エ>
- D - I - - 0x02E06A 16:A05A: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02E06B 16:A05B: 84        .byte $84   ; <D>
- D - I - - 0x02E06C 16:A05C: 8F        .byte $8F   ; <S>

- D - I - - 0x02E06D 16:A05D: 18        .byte $18   ; <ね>
- D - I - - 0x02E06E 16:A05E: 03        .byte $03   ; <う>
- D - I - - 0x02E06F 16:A05F: 42        .byte $42   ; <イ>
- D - I - - 0x02E070 16:A060: A3        .byte $A3   ; <げ>
- D - I - - 0x02E071 16:A061: 46        .byte $46   ; <カ>
- D - I - - 0x02E072 16:A062: A5        .byte $A5   ; <ざ>
- D - I - - 0x02E073 16:A063: 45        .byte $45   ; <オ>
- D - I - - 0x02E074 16:A064: A6        .byte $A6   ; <じ>
- D - I - - 0x02E075 16:A065: 86        .byte $86   ; <F>
- D - I - - 0x02E076 16:A066: A7        .byte $A7   ; <ず>

- D - I - - 0x02E077 16:A067: 02        .byte $02   ; <い>
- D - I - - 0x02E078 16:A068: 40 A0     .word off_A040



off_A06A:
- D - I - - 0x02E07A 16:A06A: 08        .byte $08   ; <く>
- D - I - - 0x02E07B 16:A06B: 02        .byte $02   ; <い>
- D - I - - 0x02E07C 16:A06C: 40        .byte $40   ; <「>
- D - I - - 0x02E07D 16:A06D: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02E07E 16:A06E: 44        .byte $44   ; <エ>
- D - I - - 0x02E07F 16:A06F: A9        .byte $A9   ; <ぞ>

- D - I - - 0x02E080 16:A070: 18        .byte $18   ; <ね>
- D - I - - 0x02E081 16:A071: 03        .byte $03   ; <う>
- D - I - - 0x02E082 16:A072: 42        .byte $42   ; <イ>
- D - I - - 0x02E083 16:A073: AA        .byte $AA   ; <だ>
- D - I - - 0x02E084 16:A074: 45        .byte $45   ; <オ>
- D - I - - 0x02E085 16:A075: 87        .byte $87   ; <G>
- D - I - - 0x02E086 16:A076: 46        .byte $46   ; <カ>
- D - I - - 0x02E087 16:A077: AB        .byte $AB   ; <ぢ>
- D - I - - 0x02E088 16:A078: 86        .byte $86   ; <F>
- D - I - - 0x02E089 16:A079: AE        .byte $AE   ; <ど>

- D - I - - 0x02E08A 16:A07A: 18        .byte $18   ; <ね>
- D - I - - 0x02E08B 16:A07B: 04        .byte $04   ; <え>
- D - I - - 0x02E08C 16:A07C: 42        .byte $42   ; <イ>
- D - I - - 0x02E08D 16:A07D: AC        .byte $AC   ; <づ>
- D - I - - 0x02E08E 16:A07E: 46        .byte $46   ; <カ>
- D - I - - 0x02E08F 16:A07F: 8D        .byte $8D   ; <P>
- D - I - - 0x02E090 16:A080: 45        .byte $45   ; <オ>
- D - I - - 0x02E091 16:A081: AD        .byte $AD   ; <で>
- D - I - - 0x02E092 16:A082: 86        .byte $86   ; <F>
- D - I - - 0x02E093 16:A083: B8        .byte $B8   ; <ゴ>

- D - I - - 0x02E094 16:A084: 10        .byte $10   ; <た>
- D - I - - 0x02E095 16:A085: 05        .byte $05   ; <お>
- D - I - - 0x02E096 16:A086: 43        .byte $43   ; <ウ>
- D - I - - 0x02E097 16:A087: AF        .byte $AF   ; <ば>
- D - I - - 0x02E098 16:A088: 44        .byte $44   ; <エ>
- D - I - - 0x02E099 16:A089: BA        .byte $BA   ; <ジ>
- D - I - - 0x02E09A 16:A08A: 87        .byte $87   ; <G>
- D - I - - 0x02E09B 16:A08B: BB        .byte $BB   ; <ズ>

- D - I - - 0x02E09C 16:A08C: 01        .byte $01   ; <あ>



off_A08D:
- D - I - - 0x02E09D 16:A08D: 08        .byte $08   ; <く>
- D - I - - 0x02E09E 16:A08E: 02        .byte $02   ; <い>
- D - I - - 0x02E09F 16:A08F: 44        .byte $44   ; <エ>
- D - I - - 0x02E0A0 16:A090: B9        .byte $B9   ; <ザ>
- D - I - - 0x02E0A1 16:A091: 84        .byte $84   ; <D>
- D - I - - 0x02E0A2 16:A092: 86        .byte $86   ; <F>

- D - I - - 0x02E0A3 16:A093: 02        .byte $02   ; <い>
- D - I - - 0x02E0A4 16:A094: 36 A0     .word off_A036



off_A096_53:
- D - I - - 0x02E0A6 16:A096: 03        .byte $03   ; <う>
- D - I - - 0x02E0A7 16:A097: A3 A0     .word off_A0A3
- - - - - - 0x02E0A9 16:A099: D2 A0     .word off_A0D2
- - - - - - 0x02E0AB 16:A09B: F5 A0     .word off_A0F5
- D - I - - 0x02E0AD 16:A09D: 20 A1     .word off_A120
- D - I - - 0x02E0AF 16:A09F: 20 A1     .word off_A120
- D - I - - 0x02E0B1 16:A0A1: D2 A0     .word off_A0D2



off_A0A3:
- D - I - - 0x02E0B3 16:A0A3: 08        .byte $08   ; <く>
- D - I - - 0x02E0B4 16:A0A4: 03        .byte $03   ; <う>
- D - I - - 0x02E0B5 16:A0A5: 86        .byte $86   ; <F>
- D - I - - 0x02E0B6 16:A0A6: 95        .byte $95
- D - I - - 0x02E0B7 16:A0A7: 87        .byte $87   ; <G>
- D - I - - 0x02E0B8 16:A0A8: 96        .byte $96
; продолжение


off_A0A9:
- D - I - - 0x02E0B9 16:A0A9: 08        .byte $08   ; <く>
- D - I - - 0x02E0BA 16:A0AA: 02        .byte $02   ; <い>
- D - I - - 0x02E0BB 16:A0AB: 46        .byte $46   ; <カ>
- D - I - - 0x02E0BC 16:A0AC: 90        .byte $90   ; <U>
- D - I - - 0x02E0BD 16:A0AD: 86        .byte $86   ; <F>
- D - I - - 0x02E0BE 16:A0AE: 91        .byte $91   ; <V>

- D - I - - 0x02E0BF 16:A0AF: 18        .byte $18   ; <ね>
- D - I - - 0x02E0C0 16:A0B0: 03        .byte $03   ; <う>
- D - I - - 0x02E0C1 16:A0B1: 40        .byte $40   ; <「>
- D - I - - 0x02E0C2 16:A0B2: 92        .byte $92   ; <W>
- D - I - - 0x02E0C3 16:A0B3: 46        .byte $46   ; <カ>
- D - I - - 0x02E0C4 16:A0B4: 94        .byte $94
- D - I - - 0x02E0C5 16:A0B5: 45        .byte $45   ; <オ>
- D - I - - 0x02E0C6 16:A0B6: 93        .byte $93   ; <Y>
- D - I - - 0x02E0C7 16:A0B7: 92        .byte $92   ; <W>
- D - I - - 0x02E0C8 16:A0B8: 97        .byte $97

- D - I - - 0x02E0C9 16:A0B9: 20        .byte $20   ; <み>
- D - I - - 0x02E0CA 16:A0BA: 04        .byte $04   ; <え>
- D - I - - 0x02E0CB 16:A0BB: 42        .byte $42   ; <イ>
- D - I - - 0x02E0CC 16:A0BC: 9C        .byte $9C
- D - I - - 0x02E0CD 16:A0BD: 46        .byte $46   ; <カ>
- D - I - - 0x02E0CE 16:A0BE: 9F        .byte $9F
- D - I - - 0x02E0CF 16:A0BF: 45        .byte $45   ; <オ>
- D - I - - 0x02E0D0 16:A0C0: 9D        .byte $9D
- D - I - - 0x02E0D1 16:A0C1: 86        .byte $86   ; <F>
- D - I - - 0x02E0D2 16:A0C2: B0        .byte $B0   ; <び>
- D - I - - 0x02E0D3 16:A0C3: 85        .byte $85   ; <E>
- D - I - - 0x02E0D4 16:A0C4: 9A        .byte $9A
; продолжение


off_A0C5:
- D - I - - 0x02E0D5 16:A0C5: 08        .byte $08   ; <く>
- D - I - - 0x02E0D6 16:A0C6: 04        .byte $04   ; <え>
- D - I - - 0x02E0D7 16:A0C7: 50        .byte $50   ; <タ>
- D - I - - 0x02E0D8 16:A0C8: 98        .byte $98
- D - I - - 0x02E0D9 16:A0C9: 56        .byte $56   ; <ニ>
- D - I - - 0x02E0DA 16:A0CA: 99        .byte $99

- D - I - - 0x02E0DB 16:A0CB: 08        .byte $08   ; <く>
- D - I - - 0x02E0DC 16:A0CC: 05        .byte $05   ; <お>
- D - I - - 0x02E0DD 16:A0CD: 56        .byte $56   ; <ニ>
- D - I - - 0x02E0DE 16:A0CE: 9B        .byte $9B
- D - I - - 0x02E0DF 16:A0CF: 42        .byte $42   ; <イ>
- D - I - - 0x02E0E0 16:A0D0: 9E        .byte $9E

- D - I - - 0x02E0E1 16:A0D1: 01        .byte $01   ; <あ>



off_A0D2:
- D - I - - 0x02E0E2 16:A0D2: 08        .byte $08   ; <く>
- D - I - - 0x02E0E3 16:A0D3: 02        .byte $02   ; <い>
- D - I - - 0x02E0E4 16:A0D4: 42        .byte $42   ; <イ>
- D - I - - 0x02E0E5 16:A0D5: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02E0E6 16:A0D6: 46        .byte $46   ; <カ>
- D - I - - 0x02E0E7 16:A0D7: B4        .byte $B4   ; <ガ>

- D - I - - 0x02E0E8 16:A0D8: 28        .byte $28   ; <り>
- D - I - - 0x02E0E9 16:A0D9: 03        .byte $03   ; <う>
- D - I - - 0x02E0EA 16:A0DA: 42        .byte $42   ; <イ>
- D - I - - 0x02E0EB 16:A0DB: B2        .byte $B2   ; <べ>
- D - I - - 0x02E0EC 16:A0DC: 46        .byte $46   ; <カ>
- D - I - - 0x02E0ED 16:A0DD: BE        .byte $BE   ; <ダ>
- D - I - - 0x02E0EE 16:A0DE: 45        .byte $45   ; <オ>
- D - I - - 0x02E0EF 16:A0DF: B3        .byte $B3   ; <ぼ>
- D - I - - 0x02E0F0 16:A0E0: 86        .byte $86   ; <F>
- D - I - - 0x02E0F1 16:A0E1: BF        .byte $BF   ; <ヂ>
- D - I - - 0x02E0F2 16:A0E2: 84        .byte $84   ; <D>
- D - I - - 0x02E0F3 16:A0E3: B6        .byte $B6   ; <グ>
- D - I - - 0x02E0F4 16:A0E4: 92        .byte $92   ; <W>
- D - I - - 0x02E0F5 16:A0E5: B5        .byte $B5   ; <ギ>

- D - I - - 0x02E0F6 16:A0E6: 20        .byte $20   ; <み>
- D - I - - 0x02E0F7 16:A0E7: 04        .byte $04   ; <え>
- D - I - - 0x02E0F8 16:A0E8: 42        .byte $42   ; <イ>
- D - I - - 0x02E0F9 16:A0E9: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02E0FA 16:A0EA: 46        .byte $46   ; <カ>
- D - I - - 0x02E0FB 16:A0EB: C2        .byte $C2   ; <ド>
- D - I - - 0x02E0FC 16:A0EC: 45        .byte $45   ; <オ>
- D - I - - 0x02E0FD 16:A0ED: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02E0FE 16:A0EE: 86        .byte $86   ; <F>
- D - I - - 0x02E0FF 16:A0EF: C3        .byte $C3   ; <バ>
- D - I - - 0x02E100 16:A0F0: 85        .byte $85   ; <E>
- D - I - - 0x02E101 16:A0F1: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02E102 16:A0F2: 02        .byte $02   ; <い>
- D - I - - 0x02E103 16:A0F3: C5 A0     .word off_A0C5



off_A0F5:
- - - - - - 0x02E105 16:A0F5: 08        .byte $08   ; <く>
- - - - - - 0x02E106 16:A0F6: 02        .byte $02   ; <い>
- - - - - - 0x02E107 16:A0F7: 46        .byte $46   ; <カ>
- - - - - - 0x02E108 16:A0F8: 90        .byte $90   ; <U>
- - - - - - 0x02E109 16:A0F9: 86        .byte $86   ; <F>
- - - - - - 0x02E10A 16:A0FA: 91        .byte $91   ; <V>

- - - - - - 0x02E10B 16:A0FB: 28        .byte $28   ; <り>
- - - - - - 0x02E10C 16:A0FC: 03        .byte $03   ; <う>
- - - - - - 0x02E10D 16:A0FD: 40        .byte $40   ; <「>
- - - - - - 0x02E10E 16:A0FE: 92        .byte $92   ; <W>
- - - - - - 0x02E10F 16:A0FF: 45        .byte $45   ; <オ>
- - - - - - 0x02E110 16:A100: C8        .byte $C8   ; <ぱ>
- - - - - - 0x02E111 16:A101: 46        .byte $46   ; <カ>
- - - - - - 0x02E112 16:A102: C4        .byte $C4   ; <ビ>
- - - - - - 0x02E113 16:A103: 85        .byte $85   ; <E>
- - - - - - 0x02E114 16:A104: C9        .byte $C9   ; <ぴ>
- - - - - - 0x02E115 16:A105: 86        .byte $86   ; <F>
- - - - - - 0x02E116 16:A106: C5        .byte $C5   ; <ブ>
- - - - - - 0x02E117 16:A107: 92        .byte $92   ; <W>
- - - - - - 0x02E118 16:A108: 97        .byte $97

- - - - - - 0x02E119 16:A109: 30        .byte $30   ; <ゃ>
- - - - - - 0x02E11A 16:A10A: 04        .byte $04   ; <え>
- - - - - - 0x02E11B 16:A10B: 50        .byte $50   ; <タ>
- - - - - - 0x02E11C 16:A10C: 98        .byte $98
- - - - - - 0x02E11D 16:A10D: 57        .byte $57   ; <ヌ>
- - - - - - 0x02E11E 16:A10E: C6        .byte $C6   ; <ベ>
- - - - - - 0x02E11F 16:A10F: 42        .byte $42   ; <イ>
- - - - - - 0x02E120 16:A110: C7        .byte $C7   ; <ボ>
- - - - - - 0x02E121 16:A111: 46        .byte $46   ; <カ>
- - - - - - 0x02E122 16:A112: CE        .byte $CE   ; <ピ>
- - - - - - 0x02E123 16:A113: 45        .byte $45   ; <オ>
- - - - - - 0x02E124 16:A114: CC        .byte $CC   ; <ぽ>
- - - - - - 0x02E125 16:A115: 85        .byte $85   ; <E>
- - - - - - 0x02E126 16:A116: CF        .byte $CF   ; <プ>
- - - - - - 0x02E127 16:A117: 86        .byte $86   ; <F>
- - - - - - 0x02E128 16:A118: CD        .byte $CD   ; <パ>

- - - - - - 0x02E129 16:A119: 08        .byte $08   ; <く>
- - - - - - 0x02E12A 16:A11A: 05        .byte $05   ; <お>
- - - - - - 0x02E12B 16:A11B: 57        .byte $57   ; <ヌ>
- - - - - - 0x02E12C 16:A11C: CA        .byte $CA   ; <ぷ>
- - - - - - 0x02E12D 16:A11D: 43        .byte $43   ; <ウ>
- - - - - - 0x02E12E 16:A11E: CB        .byte $CB   ; <ぺ>

- - - - - - 0x02E12F 16:A11F: 01        .byte $01   ; <あ>



off_A120:
- D - I - - 0x02E130 16:A120: 08        .byte $08   ; <く>
- D - I - - 0x02E131 16:A121: 03        .byte $03   ; <う>
- D - I - - 0x02E132 16:A122: 86        .byte $86   ; <F>
- D - I - - 0x02E133 16:A123: E1        .byte $E1
- D - I - - 0x02E134 16:A124: 84        .byte $84   ; <D>
- D - I - - 0x02E135 16:A125: E0        .byte $E0

- D - I - - 0x02E136 16:A126: 02        .byte $02   ; <い>
- D - I - - 0x02E137 16:A127: A9 A0     .word off_A0A9



off_A129_54:
- D - I - - 0x02E139 16:A129: 18        .byte $18   ; <ね>
- D - I - - 0x02E13A 16:A12A: 02        .byte $02   ; <い>
- D - I - - 0x02E13B 16:A12B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E13C 16:A12C: E4        .byte $E4
- D - I - - 0x02E13D 16:A12D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E13E 16:A12E: E5        .byte $E5
- D - I - - 0x02E13F 16:A12F: 13        .byte $13   ; <て>
- D - I - - 0x02E140 16:A130: E2        .byte $E2
- D - I - - 0x02E141 16:A131: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E142 16:A132: E3        .byte $E3

- D - I - - 0x02E143 16:A133: 18        .byte $18   ; <ね>
- D - I - - 0x02E144 16:A134: 03        .byte $03   ; <う>
- D - I - - 0x02E145 16:A135: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E146 16:A136: E6        .byte $E6
- D - I - - 0x02E147 16:A137: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E148 16:A138: E7        .byte $E7
- D - I - - 0x02E149 16:A139: 13        .byte $13   ; <て>
- D - I - - 0x02E14A 16:A13A: E8        .byte $E8
- D - I - - 0x02E14B 16:A13B: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E14C 16:A13C: E9        .byte $E9

- D - I - - 0x02E14D 16:A13D: 18        .byte $18   ; <ね>
- D - I - - 0x02E14E 16:A13E: 04        .byte $04   ; <え>
- D - I - - 0x02E14F 16:A13F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E150 16:A140: EC        .byte $EC
- D - I - - 0x02E151 16:A141: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E152 16:A142: ED        .byte $ED
- D - I - - 0x02E153 16:A143: 13        .byte $13   ; <て>
- D - I - - 0x02E154 16:A144: EA        .byte $EA
- D - I - - 0x02E155 16:A145: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E156 16:A146: EB        .byte $EB

- D - I - - 0x02E157 16:A147: 10        .byte $10   ; <た>
- D - I - - 0x02E158 16:A148: 05        .byte $05   ; <お>
- D - I - - 0x02E159 16:A149: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E15A 16:A14A: EE        .byte $EE
- D - I - - 0x02E15B 16:A14B: 13        .byte $13   ; <て>
- D - I - - 0x02E15C 16:A14C: EF        .byte $EF
- D - I - - 0x02E15D 16:A14D: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E15E 16:A14E: D0        .byte $D0   ; <ペ>

- D - I - - 0x02E15F 16:A14F: 01        .byte $01   ; <あ>



off_A150_55:
- D - I - - 0x02E160 16:A150: 18        .byte $18   ; <ね>
- D - I - - 0x02E161 16:A151: 04        .byte $04   ; <え>
- D - I - - 0x02E162 16:A152: 04        .byte $04   ; <え>
- D - I - - 0x02E163 16:A153: 20        .byte $20   ; <み>
- D - I - - 0x02E164 16:A154: 08        .byte $08   ; <く>
- D - I - - 0x02E165 16:A155: 21        .byte $21   ; <む>
- D - I - - 0x02E166 16:A156: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E167 16:A157: 24        .byte $24   ; <や>
- D - I - - 0x02E168 16:A158: 12        .byte $12   ; <つ>
- D - I - - 0x02E169 16:A159: 25        .byte $25   ; <ゆ>

- D - I - - 0x02E16A 16:A15A: 18        .byte $18   ; <ね>
- D - I - - 0x02E16B 16:A15B: 05        .byte $05   ; <お>
- D - I - - 0x02E16C 16:A15C: 04        .byte $04   ; <え>
- D - I - - 0x02E16D 16:A15D: 22        .byte $22   ; <め>
- D - I - - 0x02E16E 16:A15E: 09        .byte $09   ; <け>
- D - I - - 0x02E16F 16:A15F: 23        .byte $23   ; <も>
- D - I - - 0x02E170 16:A160: 0D        .byte $0D   ; <す>
- D - I - - 0x02E171 16:A161: 26        .byte $26   ; <よ>
- D - I - - 0x02E172 16:A162: 11        .byte $11   ; <ち>
- D - I - - 0x02E173 16:A163: 27        .byte $27   ; <ら>
; продолжение


off_A164:
- D - I - - 0x02E174 16:A164: 10        .byte $10   ; <た>
- D - I - - 0x02E175 16:A165: 01        .byte $01   ; <あ>
- D - I - - 0x02E176 16:A166: 04        .byte $04   ; <え>
- D - I - - 0x02E177 16:A167: 02        .byte $02   ; <い>
- D - I - - 0x02E178 16:A168: 18        .byte $18   ; <ね>
- D - I - - 0x02E179 16:A169: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E17A 16:A16A: 80        .byte $80
- D - I - - 0x02E17B 16:A16B: 0F        .byte $0F   ; <そ>

- D - I - - 0x02E17C 16:A16C: 10        .byte $10   ; <た>
- D - I - - 0x02E17D 16:A16D: 02        .byte $02   ; <い>
- D - I - - 0x02E17E 16:A16E: 00        .byte $00
- D - I - - 0x02E17F 16:A16F: 28        .byte $28   ; <り>
- D - I - - 0x02E180 16:A170: 04        .byte $04   ; <え>
- D - I - - 0x02E181 16:A171: 08        .byte $08   ; <く>
- D - I - - 0x02E182 16:A172: 80        .byte $80
- D - I - - 0x02E183 16:A173: 03        .byte $03   ; <う>

- D - I - - 0x02E184 16:A174: 18        .byte $18   ; <ね>
- D - I - - 0x02E185 16:A175: 03        .byte $03   ; <う>
- D - I - - 0x02E186 16:A176: 04        .byte $04   ; <え>
- D - I - - 0x02E187 16:A177: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E188 16:A178: 08        .byte $08   ; <く>
- D - I - - 0x02E189 16:A179: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E18A 16:A17A: 18        .byte $18   ; <ね>
- D - I - - 0x02E18B 16:A17B: 01        .byte $01   ; <あ>
- D - I - - 0x02E18C 16:A17C: 80        .byte $80
- D - I - - 0x02E18D 16:A17D: 09        .byte $09   ; <け>

- D - I - - 0x02E18E 16:A17E: 10        .byte $10   ; <た>
- D - I - - 0x02E18F 16:A17F: 04        .byte $04   ; <え>
- D - I - - 0x02E190 16:A180: 14        .byte $14   ; <と>
- D - I - - 0x02E191 16:A181: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E192 16:A182: 18        .byte $18   ; <ね>
- D - I - - 0x02E193 16:A183: 31        .byte $31   ; <ゅ>
- D - I - - 0x02E194 16:A184: 80        .byte $80
- D - I - - 0x02E195 16:A185: 39        .byte $39   ; <6>

- D - I - - 0x02E196 16:A186: 08        .byte $08   ; <く>
- D - I - - 0x02E197 16:A187: 05        .byte $05   ; <お>
- D - I - - 0x02E198 16:A188: 14        .byte $14   ; <と>
- D - I - - 0x02E199 16:A189: 32        .byte $32   ; <ょ>
- D - I - - 0x02E19A 16:A18A: 18        .byte $18   ; <ね>
- D - I - - 0x02E19B 16:A18B: 33        .byte $33   ; <0>

- D - I - - 0x02E19C 16:A18C: 18        .byte $18   ; <ね>
- D - I - - 0x02E19D 16:A18D: 06        .byte $06   ; <か>
- D - I - - 0x02E19E 16:A18E: 08        .byte $08   ; <く>
- D - I - - 0x02E19F 16:A18F: 29        .byte $29   ; <る>
- D - I - - 0x02E1A0 16:A190: 0C        .byte $0C   ; <し>
- D - I - - 0x02E1A1 16:A191: 2C        .byte $2C   ; <わ>
- D - I - - 0x02E1A2 16:A192: 10        .byte $10   ; <た>
- D - I - - 0x02E1A3 16:A193: 2D        .byte $2D   ; <を>
- D - I - - 0x02E1A4 16:A194: 14        .byte $14   ; <と>
- D - I - - 0x02E1A5 16:A195: 38        .byte $38   ; <5>
; продолжение


off_A196:
- D - I - - 0x02E1A6 16:A196: 18        .byte $18   ; <ね>
- D - I - - 0x02E1A7 16:A197: 01        .byte $01   ; <あ>
- D - I - - 0x02E1A8 16:A198: 08        .byte $08   ; <く>
- D - I - - 0x02E1A9 16:A199: 01        .byte $01   ; <あ>
- D - I - - 0x02E1AA 16:A19A: 0C        .byte $0C   ; <し>
- D - I - - 0x02E1AB 16:A19B: 01        .byte $01   ; <あ>
- D - I - - 0x02E1AC 16:A19C: 10        .byte $10   ; <た>
- D - I - - 0x02E1AD 16:A19D: 01        .byte $01   ; <あ>
- D - I - - 0x02E1AE 16:A19E: 14        .byte $14   ; <と>
- D - I - - 0x02E1AF 16:A19F: 01        .byte $01   ; <あ>

- D - I - - 0x02E1B0 16:A1A0: 20        .byte $20   ; <み>
- D - I - - 0x02E1B1 16:A1A1: 02        .byte $02   ; <い>
- D - I - - 0x02E1B2 16:A1A2: 08        .byte $08   ; <く>
- D - I - - 0x02E1B3 16:A1A3: 01        .byte $01   ; <あ>
- D - I - - 0x02E1B4 16:A1A4: 0C        .byte $0C   ; <し>
- D - I - - 0x02E1B5 16:A1A5: 01        .byte $01   ; <あ>
- D - I - - 0x02E1B6 16:A1A6: 10        .byte $10   ; <た>
- D - I - - 0x02E1B7 16:A1A7: 01        .byte $01   ; <あ>
- D - I - - 0x02E1B8 16:A1A8: 14        .byte $14   ; <と>
- D - I - - 0x02E1B9 16:A1A9: 01        .byte $01   ; <あ>
- D - I - - 0x02E1BA 16:A1AA: 18        .byte $18   ; <ね>
- D - I - - 0x02E1BB 16:A1AB: 01        .byte $01   ; <あ>

- D - I - - 0x02E1BC 16:A1AC: 10        .byte $10   ; <た>
- D - I - - 0x02E1BD 16:A1AD: 03        .byte $03   ; <う>
- D - I - - 0x02E1BE 16:A1AE: 0C        .byte $0C   ; <し>
- D - I - - 0x02E1BF 16:A1AF: 01        .byte $01   ; <あ>
- D - I - - 0x02E1C0 16:A1B0: 10        .byte $10   ; <た>
- D - I - - 0x02E1C1 16:A1B1: 01        .byte $01   ; <あ>
- D - I - - 0x02E1C2 16:A1B2: 14        .byte $14   ; <と>
- D - I - - 0x02E1C3 16:A1B3: 01        .byte $01   ; <あ>

- D - I - - 0x02E1C4 16:A1B4: 01        .byte $01   ; <あ>



off_A1B5_56:
- D - I - - 0x02E1C5 16:A1B5: 18        .byte $18   ; <ね>
- D - I - - 0x02E1C6 16:A1B6: 04        .byte $04   ; <え>
- D - I - - 0x02E1C7 16:A1B7: 04        .byte $04   ; <え>
- D - I - - 0x02E1C8 16:A1B8: 04        .byte $04   ; <え>
- D - I - - 0x02E1C9 16:A1B9: 08        .byte $08   ; <く>
- D - I - - 0x02E1CA 16:A1BA: 05        .byte $05   ; <お>
- D - I - - 0x02E1CB 16:A1BB: 0C        .byte $0C   ; <し>
- D - I - - 0x02E1CC 16:A1BC: 10        .byte $10   ; <た>
- D - I - - 0x02E1CD 16:A1BD: 12        .byte $12   ; <つ>
- D - I - - 0x02E1CE 16:A1BE: 11        .byte $11   ; <ち>

- D - I - - 0x02E1CF 16:A1BF: 18        .byte $18   ; <ね>
- D - I - - 0x02E1D0 16:A1C0: 05        .byte $05   ; <お>
- D - I - - 0x02E1D1 16:A1C1: 04        .byte $04   ; <え>
- D - I - - 0x02E1D2 16:A1C2: 06        .byte $06   ; <か>
- D - I - - 0x02E1D3 16:A1C3: 09        .byte $09   ; <け>
- D - I - - 0x02E1D4 16:A1C4: 07        .byte $07   ; <き>
- D - I - - 0x02E1D5 16:A1C5: 0D        .byte $0D   ; <す>
- D - I - - 0x02E1D6 16:A1C6: 12        .byte $12   ; <つ>
- D - I - - 0x02E1D7 16:A1C7: 11        .byte $11   ; <ち>
- D - I - - 0x02E1D8 16:A1C8: 13        .byte $13   ; <て>

- D - I - - 0x02E1D9 16:A1C9: 02        .byte $02   ; <い>
- D - I - - 0x02E1DA 16:A1CA: 64 A1     .word off_A164



off_A1CC_57:
- D - I - - 0x02E1DC 16:A1CC: 28        .byte $28   ; <り>
- D - I - - 0x02E1DD 16:A1CD: 01        .byte $01   ; <あ>
- D - I - - 0x02E1DE 16:A1CE: 07        .byte $07   ; <き>
- D - I - - 0x02E1DF 16:A1CF: 0C        .byte $0C   ; <し>
- D - I - - 0x02E1E0 16:A1D0: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E1E1 16:A1D1: 42        .byte $42   ; <イ>
- D - I - - 0x02E1E2 16:A1D2: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E1E3 16:A1D3: 42        .byte $42   ; <イ>
- D - I - - 0x02E1E4 16:A1D4: 13        .byte $13   ; <て>
- D - I - - 0x02E1E5 16:A1D5: 42        .byte $42   ; <イ>
- D - I - - 0x02E1E6 16:A1D6: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E1E7 16:A1D7: 0D        .byte $0D   ; <す>
- D - I - - 0x02E1E8 16:A1D8: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E1E9 16:A1D9: 16        .byte $16   ; <に>

- D - I - - 0x02E1EA 16:A1DA: 28        .byte $28   ; <り>
- D - I - - 0x02E1EB 16:A1DB: 02        .byte $02   ; <い>
- D - I - - 0x02E1EC 16:A1DC: 07        .byte $07   ; <き>
- D - I - - 0x02E1ED 16:A1DD: 18        .byte $18   ; <ね>
- D - I - - 0x02E1EE 16:A1DE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E1EF 16:A1DF: 19        .byte $19   ; <の>
- D - I - - 0x02E1F0 16:A1E0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E1F1 16:A1E1: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02E1F2 16:A1E2: 13        .byte $13   ; <て>
- D - I - - 0x02E1F3 16:A1E3: 42        .byte $42   ; <イ>
- D - I - - 0x02E1F4 16:A1E4: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E1F5 16:A1E5: 42        .byte $42   ; <イ>
- D - I - - 0x02E1F6 16:A1E6: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E1F7 16:A1E7: 1D        .byte $1D   ; <へ>

- D - I - - 0x02E1F8 16:A1E8: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E1F9 16:A1E9: 03        .byte $03   ; <う>
- D - I - - 0x02E1FA 16:A1EA: 04        .byte $04   ; <え>
- D - I - - 0x02E1FB 16:A1EB: 1A        .byte $1A   ; <は>
- D - I - - 0x02E1FC 16:A1EC: 08        .byte $08   ; <く>
- D - I - - 0x02E1FD 16:A1ED: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E1FE 16:A1EE: 09        .byte $09   ; <け>
- D - I - - 0x02E1FF 16:A1EF: 14        .byte $14   ; <と>
- D - I - - 0x02E200 16:A1F0: 0C        .byte $0C   ; <し>
- D - I - - 0x02E201 16:A1F1: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E202 16:A1F2: 13        .byte $13   ; <て>
- D - I - - 0x02E203 16:A1F3: 1F        .byte $1F   ; <ま>
- D - I - - 0x02E204 16:A1F4: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E205 16:A1F5: 3A        .byte $3A   ; <7>
- D - I - - 0x02E206 16:A1F6: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E207 16:A1F7: 3B        .byte $3B   ; <8>

- D - I - - 0x02E208 16:A1F8: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E209 16:A1F9: 04        .byte $04   ; <え>
- D - I - - 0x02E20A 16:A1FA: 04        .byte $04   ; <え>
- D - I - - 0x02E20B 16:A1FB: 2A        .byte $2A   ; <れ>
- D - I - - 0x02E20C 16:A1FC: 09        .byte $09   ; <け>
- D - I - - 0x02E20D 16:A1FD: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02E20E 16:A1FE: 0C        .byte $0C   ; <し>
- D - I - - 0x02E20F 16:A1FF: 34        .byte $34   ; <1>
- D - I - - 0x02E210 16:A200: 10        .byte $10   ; <た>
- D - I - - 0x02E211 16:A201: 35        .byte $35   ; <2>
- D - I - - 0x02E212 16:A202: 11        .byte $11   ; <ち>
- D - I - - 0x02E213 16:A203: 15        .byte $15   ; <な>
- D - I - - 0x02E214 16:A204: 14        .byte $14   ; <と>
- D - I - - 0x02E215 16:A205: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02E216 16:A206: 18        .byte $18   ; <ね>
- D - I - - 0x02E217 16:A207: 3F        .byte $3F   ; <•>

- D - I - - 0x02E218 16:A208: 20        .byte $20   ; <み>
- D - I - - 0x02E219 16:A209: 05        .byte $05   ; <お>
- D - I - - 0x02E21A 16:A20A: 04        .byte $04   ; <え>
- D - I - - 0x02E21B 16:A20B: 22        .byte $22   ; <め>
- D - I - - 0x02E21C 16:A20C: 09        .byte $09   ; <け>
- D - I - - 0x02E21D 16:A20D: 2E        .byte $2E   ; <ん>
- D - I - - 0x02E21E 16:A20E: 0D        .byte $0D   ; <す>
- D - I - - 0x02E21F 16:A20F: 36        .byte $36   ; <3>
- D - I - - 0x02E220 16:A210: 10        .byte $10   ; <た>
- D - I - - 0x02E221 16:A211: 37        .byte $37   ; <4>
- D - I - - 0x02E222 16:A212: 14        .byte $14   ; <と>
- D - I - - 0x02E223 16:A213: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E224 16:A214: 18        .byte $18   ; <ね>
- D - I - - 0x02E225 16:A215: 06        .byte $06   ; <か>
- D - I - - 0x02E226 16:A216: 08        .byte $08   ; <く>
- D - I - - 0x02E227 16:A217: 2F        .byte $2F   ; <っ>
- D - I - - 0x02E228 16:A218: 0C        .byte $0C   ; <し>
- D - I - - 0x02E229 16:A219: 3C        .byte $3C   ; <9>
- D - I - - 0x02E22A 16:A21A: 10        .byte $10   ; <た>
- D - I - - 0x02E22B 16:A21B: 2D        .byte $2D   ; <を>
- D - I - - 0x02E22C 16:A21C: 14        .byte $14   ; <と>
- D - I - - 0x02E22D 16:A21D: 3D        .byte $3D   ; <+>

- D - I - - 0x02E22E 16:A21E: 01        .byte $01   ; <あ>



off_A21F_58:
- D - I - - 0x02E22F 16:A21F: 18        .byte $18   ; <ね>
- D - I - - 0x02E230 16:A220: 01        .byte $01   ; <あ>
- D - I - - 0x02E231 16:A221: 00        .byte $00
- D - I - - 0x02E232 16:A222: 81        .byte $81   ; <A>
- D - I - - 0x02E233 16:A223: 04        .byte $04   ; <え>
- D - I - - 0x02E234 16:A224: 80        .byte $80
- D - I - - 0x02E235 16:A225: 18        .byte $18   ; <ね>
- D - I - - 0x02E236 16:A226: 84        .byte $84   ; <D>
- D - I - - 0x02E237 16:A227: 80        .byte $80
- D - I - - 0x02E238 16:A228: 85        .byte $85   ; <E>

- D - I - - 0x02E239 16:A229: 08        .byte $08   ; <く>
- D - I - - 0x02E23A 16:A22A: 02        .byte $02   ; <い>
- D - I - - 0x02E23B 16:A22B: 04        .byte $04   ; <え>
- D - I - - 0x02E23C 16:A22C: 82        .byte $82   ; <B>
- D - I - - 0x02E23D 16:A22D: 80        .byte $80
- D - I - - 0x02E23E 16:A22E: 87        .byte $87   ; <G>

- D - I - - 0x02E23F 16:A22F: 18        .byte $18   ; <ね>
- D - I - - 0x02E240 16:A230: 03        .byte $03   ; <う>
- D - I - - 0x02E241 16:A231: 04        .byte $04   ; <え>
- D - I - - 0x02E242 16:A232: 88        .byte $88   ; <H>
- D - I - - 0x02E243 16:A233: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E244 16:A234: 89        .byte $89   ; <I>
- D - I - - 0x02E245 16:A235: 18        .byte $18   ; <ね>
- D - I - - 0x02E246 16:A236: 90        .byte $90   ; <U>
- D - I - - 0x02E247 16:A237: 80        .byte $80
- D - I - - 0x02E248 16:A238: 91        .byte $91   ; <V>

- D - I - - 0x02E249 16:A239: 38        .byte $38   ; <5>
- D - I - - 0x02E24A 16:A23A: 04        .byte $04   ; <え>
- D - I - - 0x02E24B 16:A23B: 04        .byte $04   ; <え>
- D - I - - 0x02E24C 16:A23C: 8A        .byte $8A   ; <N>
- D - I - - 0x02E24D 16:A23D: 08        .byte $08   ; <く>
- D - I - - 0x02E24E 16:A23E: 8B        .byte $8B   ; <K>
- D - I - - 0x02E24F 16:A23F: 09        .byte $09   ; <け>
- D - I - - 0x02E250 16:A240: 83        .byte $83   ; <C>
- D - I - - 0x02E251 16:A241: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E252 16:A242: 8C        .byte $8C   ; <M>
- D - I - - 0x02E253 16:A243: 10        .byte $10   ; <た>
- D - I - - 0x02E254 16:A244: 8D        .byte $8D   ; <P>
- D - I - - 0x02E255 16:A245: 14        .byte $14   ; <と>
- D - I - - 0x02E256 16:A246: 98        .byte $98
- D - I - - 0x02E257 16:A247: 18        .byte $18   ; <ね>
- D - I - - 0x02E258 16:A248: 92        .byte $92   ; <W>
- D - I - - 0x02E259 16:A249: 80        .byte $80
- D - I - - 0x02E25A 16:A24A: 93        .byte $93   ; <Y>

- D - I - - 0x02E25B 16:A24B: 28        .byte $28   ; <り>
- D - I - - 0x02E25C 16:A24C: 05        .byte $05   ; <お>
- D - I - - 0x02E25D 16:A24D: 04        .byte $04   ; <え>
- D - I - - 0x02E25E 16:A24E: 22        .byte $22   ; <め>
- D - I - - 0x02E25F 16:A24F: 09        .byte $09   ; <け>
- D - I - - 0x02E260 16:A250: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02E261 16:A251: 0D        .byte $0D   ; <す>
- D - I - - 0x02E262 16:A252: 8E        .byte $8E   ; <L>
- D - I - - 0x02E263 16:A253: 10        .byte $10   ; <た>
- D - I - - 0x02E264 16:A254: 8F        .byte $8F   ; <S>
- D - I - - 0x02E265 16:A255: 14        .byte $14   ; <と>
- D - I - - 0x02E266 16:A256: 9A        .byte $9A
- D - I - - 0x02E267 16:A257: 18        .byte $18   ; <ね>
- D - I - - 0x02E268 16:A258: 86        .byte $86   ; <F>

- D - I - - 0x02E269 16:A259: 28        .byte $28   ; <り>
- D - I - - 0x02E26A 16:A25A: 06        .byte $06   ; <か>
- D - I - - 0x02E26B 16:A25B: 08        .byte $08   ; <く>
- D - I - - 0x02E26C 16:A25C: 46        .byte $46   ; <カ>
- D - I - - 0x02E26D 16:A25D: 0C        .byte $0C   ; <し>
- D - I - - 0x02E26E 16:A25E: A4        .byte $A4   ; <ご>
- D - I - - 0x02E26F 16:A25F: 10        .byte $10   ; <た>
- D - I - - 0x02E270 16:A260: 2D        .byte $2D   ; <を>
- D - I - - 0x02E271 16:A261: 14        .byte $14   ; <と>
- D - I - - 0x02E272 16:A262: 53        .byte $53   ; <テ>
- D - I - - 0x02E273 16:A263: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02E274 16:A264: A5        .byte $A5   ; <ざ>
- D - I - - 0x02E275 16:A265: C4        .byte $C4   ; <ビ>
- D - I - - 0x02E276 16:A266: B0        .byte $B0   ; <び>

- D - I - - 0x02E277 16:A267: 02        .byte $02   ; <い>
- D - I - - 0x02E278 16:A268: 96 A1     .word off_A196



off_A26A_59:
- D - I - - 0x02E27A 16:A26A: 28        .byte $28   ; <り>
- D - I - - 0x02E27B 16:A26B: 01        .byte $01   ; <あ>
- D - I - - 0x02E27C 16:A26C: 04        .byte $04   ; <え>
- D - I - - 0x02E27D 16:A26D: 04        .byte $04   ; <え>
- D - I - - 0x02E27E 16:A26E: 08        .byte $08   ; <く>
- D - I - - 0x02E27F 16:A26F: 01        .byte $01   ; <あ>
- D - I - - 0x02E280 16:A270: 0C        .byte $0C   ; <し>
- D - I - - 0x02E281 16:A271: 01        .byte $01   ; <あ>
- D - I - - 0x02E282 16:A272: 10        .byte $10   ; <た>
- D - I - - 0x02E283 16:A273: 01        .byte $01   ; <あ>
- D - I - - 0x02E284 16:A274: 14        .byte $14   ; <と>
- D - I - - 0x02E285 16:A275: 10        .byte $10   ; <た>
- D - I - - 0x02E286 16:A276: 18        .byte $18   ; <ね>
- D - I - - 0x02E287 16:A277: 11        .byte $11   ; <ち>

- D - I - - 0x02E288 16:A278: 28        .byte $28   ; <り>
- D - I - - 0x02E289 16:A279: 02        .byte $02   ; <い>
- D - I - - 0x02E28A 16:A27A: 04        .byte $04   ; <え>
- D - I - - 0x02E28B 16:A27B: 02        .byte $02   ; <い>
- D - I - - 0x02E28C 16:A27C: 08        .byte $08   ; <く>
- D - I - - 0x02E28D 16:A27D: 03        .byte $03   ; <う>
- D - I - - 0x02E28E 16:A27E: 0C        .byte $0C   ; <し>
- D - I - - 0x02E28F 16:A27F: 06        .byte $06   ; <か>
- D - I - - 0x02E290 16:A280: 10        .byte $10   ; <た>
- D - I - - 0x02E291 16:A281: 01        .byte $01   ; <あ>
- D - I - - 0x02E292 16:A282: 14        .byte $14   ; <と>
- D - I - - 0x02E293 16:A283: 01        .byte $01   ; <あ>
- D - I - - 0x02E294 16:A284: 18        .byte $18   ; <ね>
- D - I - - 0x02E295 16:A285: 13        .byte $13   ; <て>

- D - I - - 0x02E296 16:A286: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E297 16:A287: 03        .byte $03   ; <う>
- D - I - - 0x02E298 16:A288: 04        .byte $04   ; <え>
- D - I - - 0x02E299 16:A289: 08        .byte $08   ; <く>
- D - I - - 0x02E29A 16:A28A: 09        .byte $09   ; <け>
- D - I - - 0x02E29B 16:A28B: 09        .byte $09   ; <け>
- D - I - - 0x02E29C 16:A28C: 0D        .byte $0D   ; <す>
- D - I - - 0x02E29D 16:A28D: 0C        .byte $0C   ; <し>
- D - I - - 0x02E29E 16:A28E: 0C        .byte $0C   ; <し>
- D - I - - 0x02E29F 16:A28F: 05        .byte $05   ; <お>
- D - I - - 0x02E2A0 16:A290: 10        .byte $10   ; <た>
- D - I - - 0x02E2A1 16:A291: 0D        .byte $0D   ; <す>
- D - I - - 0x02E2A2 16:A292: 14        .byte $14   ; <と>
- D - I - - 0x02E2A3 16:A293: 18        .byte $18   ; <ね>
- D - I - - 0x02E2A4 16:A294: 18        .byte $18   ; <ね>
- D - I - - 0x02E2A5 16:A295: 19        .byte $19   ; <の>

- D - I - - 0x02E2A6 16:A296: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E2A7 16:A297: 04        .byte $04   ; <え>
- D - I - - 0x02E2A8 16:A298: 04        .byte $04   ; <え>
- D - I - - 0x02E2A9 16:A299: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E2AA 16:A29A: 09        .byte $09   ; <け>
- D - I - - 0x02E2AB 16:A29B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E2AC 16:A29C: 0C        .byte $0C   ; <し>
- D - I - - 0x02E2AD 16:A29D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E2AE 16:A29E: 11        .byte $11   ; <ち>
- D - I - - 0x02E2AF 16:A29F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E2B0 16:A2A0: 10        .byte $10   ; <た>
- D - I - - 0x02E2B1 16:A2A1: 07        .byte $07   ; <き>
- D - I - - 0x02E2B2 16:A2A2: 15        .byte $15   ; <な>
- D - I - - 0x02E2B3 16:A2A3: 1A        .byte $1A   ; <は>
- D - I - - 0x02E2B4 16:A2A4: 18        .byte $18   ; <ね>
- D - I - - 0x02E2B5 16:A2A5: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02E2B6 16:A2A6: 28        .byte $28   ; <り>
- D - I - - 0x02E2B7 16:A2A7: 05        .byte $05   ; <お>
- D - I - - 0x02E2B8 16:A2A8: 04        .byte $04   ; <え>
- D - I - - 0x02E2B9 16:A2A9: 20        .byte $20   ; <み>
- D - I - - 0x02E2BA 16:A2AA: 09        .byte $09   ; <け>
- D - I - - 0x02E2BB 16:A2AB: 21        .byte $21   ; <む>
- D - I - - 0x02E2BC 16:A2AC: 0D        .byte $0D   ; <す>
- D - I - - 0x02E2BD 16:A2AD: 24        .byte $24   ; <や>
- D - I - - 0x02E2BE 16:A2AE: 10        .byte $10   ; <た>
- D - I - - 0x02E2BF 16:A2AF: 25        .byte $25   ; <ゆ>
- D - I - - 0x02E2C0 16:A2B0: 14        .byte $14   ; <と>
- D - I - - 0x02E2C1 16:A2B1: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E2C2 16:A2B2: 18        .byte $18   ; <ね>
- D - I - - 0x02E2C3 16:A2B3: 31        .byte $31   ; <ゅ>

- D - I - - 0x02E2C4 16:A2B4: 18        .byte $18   ; <ね>
- D - I - - 0x02E2C5 16:A2B5: 06        .byte $06   ; <か>
- D - I - - 0x02E2C6 16:A2B6: 08        .byte $08   ; <く>
- D - I - - 0x02E2C7 16:A2B7: 23        .byte $23   ; <も>
- D - I - - 0x02E2C8 16:A2B8: 0C        .byte $0C   ; <し>
- D - I - - 0x02E2C9 16:A2B9: 26        .byte $26   ; <よ>
- D - I - - 0x02E2CA 16:A2BA: 10        .byte $10   ; <た>
- D - I - - 0x02E2CB 16:A2BB: 27        .byte $27   ; <ら>
- D - I - - 0x02E2CC 16:A2BC: 14        .byte $14   ; <と>
- D - I - - 0x02E2CD 16:A2BD: 32        .byte $32   ; <ょ>

- D - I - - 0x02E2CE 16:A2BE: 01        .byte $01   ; <あ>



off_A2BF_5A:
- D - I - - 0x02E2CF 16:A2BF: 28        .byte $28   ; <り>
- D - I - - 0x02E2D0 16:A2C0: 01        .byte $01   ; <あ>
- D - I - - 0x02E2D1 16:A2C1: 04        .byte $04   ; <え>
- D - I - - 0x02E2D2 16:A2C2: 14        .byte $14   ; <と>
- D - I - - 0x02E2D3 16:A2C3: 08        .byte $08   ; <く>
- D - I - - 0x02E2D4 16:A2C4: 15        .byte $15   ; <な>
- D - I - - 0x02E2D5 16:A2C5: 0C        .byte $0C   ; <し>
- D - I - - 0x02E2D6 16:A2C6: 01        .byte $01   ; <あ>
- D - I - - 0x02E2D7 16:A2C7: 10        .byte $10   ; <た>
- D - I - - 0x02E2D8 16:A2C8: 01        .byte $01   ; <あ>
- D - I - - 0x02E2D9 16:A2C9: 14        .byte $14   ; <と>
- D - I - - 0x02E2DA 16:A2CA: 38        .byte $38   ; <5>
- D - I - - 0x02E2DB 16:A2CB: 18        .byte $18   ; <ね>
- D - I - - 0x02E2DC 16:A2CC: 39        .byte $39   ; <6>

- D - I - - 0x02E2DD 16:A2CD: 28        .byte $28   ; <り>
- D - I - - 0x02E2DE 16:A2CE: 02        .byte $02   ; <い>
- D - I - - 0x02E2DF 16:A2CF: 04        .byte $04   ; <え>
- D - I - - 0x02E2E0 16:A2D0: 16        .byte $16   ; <に>
- D - I - - 0x02E2E1 16:A2D1: 08        .byte $08   ; <く>
- D - I - - 0x02E2E2 16:A2D2: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E2E3 16:A2D3: 0C        .byte $0C   ; <し>
- D - I - - 0x02E2E4 16:A2D4: 01        .byte $01   ; <あ>
- D - I - - 0x02E2E5 16:A2D5: 10        .byte $10   ; <た>
- D - I - - 0x02E2E6 16:A2D6: 01        .byte $01   ; <あ>
- D - I - - 0x02E2E7 16:A2D7: 14        .byte $14   ; <と>
- D - I - - 0x02E2E8 16:A2D8: 01        .byte $01   ; <あ>
- D - I - - 0x02E2E9 16:A2D9: 18        .byte $18   ; <ね>
- D - I - - 0x02E2EA 16:A2DA: 3B        .byte $3B   ; <8>

- D - I - - 0x02E2EB 16:A2DB: 28        .byte $28   ; <り>
- D - I - - 0x02E2EC 16:A2DC: 03        .byte $03   ; <う>
- D - I - - 0x02E2ED 16:A2DD: 04        .byte $04   ; <え>
- D - I - - 0x02E2EE 16:A2DE: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02E2EF 16:A2DF: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E2F0 16:A2E0: 1D        .byte $1D   ; <へ>
- D - I - - 0x02E2F1 16:A2E1: 0C        .byte $0C   ; <し>
- D - I - - 0x02E2F2 16:A2E2: 28        .byte $28   ; <り>
- D - I - - 0x02E2F3 16:A2E3: 12        .byte $12   ; <つ>
- D - I - - 0x02E2F4 16:A2E4: 29        .byte $29   ; <る>
- D - I - - 0x02E2F5 16:A2E5: 14        .byte $14   ; <と>
- D - I - - 0x02E2F6 16:A2E6: 2C        .byte $2C   ; <わ>
- D - I - - 0x02E2F7 16:A2E7: 18        .byte $18   ; <ね>
- D - I - - 0x02E2F8 16:A2E8: 2D        .byte $2D   ; <を>

- D - I - - 0x02E2F9 16:A2E9: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E2FA 16:A2EA: 04        .byte $04   ; <え>
- D - I - - 0x02E2FB 16:A2EB: 04        .byte $04   ; <え>
- D - I - - 0x02E2FC 16:A2EC: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E2FD 16:A2ED: 09        .byte $09   ; <け>
- D - I - - 0x02E2FE 16:A2EE: 1F        .byte $1F   ; <ま>
- D - I - - 0x02E2FF 16:A2EF: 0C        .byte $0C   ; <し>
- D - I - - 0x02E300 16:A2F0: 2A        .byte $2A   ; <れ>
- D - I - - 0x02E301 16:A2F1: 10        .byte $10   ; <た>
- D - I - - 0x02E302 16:A2F2: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02E303 16:A2F3: 11        .byte $11   ; <ち>
- D - I - - 0x02E304 16:A2F4: 2A        .byte $2A   ; <れ>
- D - I - - 0x02E305 16:A2F5: 14        .byte $14   ; <と>
- D - I - - 0x02E306 16:A2F6: 2E        .byte $2E   ; <ん>
- D - I - - 0x02E307 16:A2F7: 18        .byte $18   ; <ね>
- D - I - - 0x02E308 16:A2F8: 2F        .byte $2F   ; <っ>

- D - I - - 0x02E309 16:A2F9: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E30A 16:A2FA: 05        .byte $05   ; <お>
- D - I - - 0x02E30B 16:A2FB: 04        .byte $04   ; <え>
- D - I - - 0x02E30C 16:A2FC: 34        .byte $34   ; <1>
- D - I - - 0x02E30D 16:A2FD: 08        .byte $08   ; <く>
- D - I - - 0x02E30E 16:A2FE: 35        .byte $35   ; <2>
- D - I - - 0x02E30F 16:A2FF: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E310 16:A300: 12        .byte $12   ; <つ>
- D - I - - 0x02E311 16:A301: 0D        .byte $0D   ; <す>
- D - I - - 0x02E312 16:A302: 3C        .byte $3C   ; <9>
- D - I - - 0x02E313 16:A303: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E314 16:A304: 22        .byte $22   ; <め>
- D - I - - 0x02E315 16:A305: 10        .byte $10   ; <た>
- D - I - - 0x02E316 16:A306: 3D        .byte $3D   ; <+>
- D - I - - 0x02E317 16:A307: 14        .byte $14   ; <と>
- D - I - - 0x02E318 16:A308: 33        .byte $33   ; <0>

- D - I - - 0x02E319 16:A309: 18        .byte $18   ; <ね>
- D - I - - 0x02E31A 16:A30A: 06        .byte $06   ; <か>
- D - I - - 0x02E31B 16:A30B: 08        .byte $08   ; <く>
- D - I - - 0x02E31C 16:A30C: 37        .byte $37   ; <4>
- D - I - - 0x02E31D 16:A30D: 0C        .byte $0C   ; <し>
- D - I - - 0x02E31E 16:A30E: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02E31F 16:A30F: 10        .byte $10   ; <た>
- D - I - - 0x02E320 16:A310: 3F        .byte $3F   ; <•>
- D - I - - 0x02E321 16:A311: 14        .byte $14   ; <と>
- D - I - - 0x02E322 16:A312: 36        .byte $36   ; <3>

- D - I - - 0x02E323 16:A313: 01        .byte $01   ; <あ>



off_A314_5B:
- D - I - - 0x02E324 16:A314: 08        .byte $08   ; <く>
- D - I - - 0x02E325 16:A315: 02        .byte $02   ; <い>
- D - I - - 0x02E326 16:A316: 09        .byte $09   ; <け>
- D - I - - 0x02E327 16:A317: 03        .byte $03   ; <う>
- D - I - - 0x02E328 16:A318: 0D        .byte $0D   ; <す>
- D - I - - 0x02E329 16:A319: 06        .byte $06   ; <か>

- D - I - - 0x02E32A 16:A31A: 10        .byte $10   ; <た>
- D - I - - 0x02E32B 16:A31B: 03        .byte $03   ; <う>
- D - I - - 0x02E32C 16:A31C: 05        .byte $05   ; <お>
- D - I - - 0x02E32D 16:A31D: 08        .byte $08   ; <く>
- D - I - - 0x02E32E 16:A31E: 09        .byte $09   ; <け>
- D - I - - 0x02E32F 16:A31F: 09        .byte $09   ; <け>
- D - I - - 0x02E330 16:A320: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E331 16:A321: 05        .byte $05   ; <お>

- D - I - - 0x02E332 16:A322: 20        .byte $20   ; <み>
- D - I - - 0x02E333 16:A323: 04        .byte $04   ; <え>
- D - I - - 0x02E334 16:A324: 04        .byte $04   ; <え>
- D - I - - 0x02E335 16:A325: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E336 16:A326: 08        .byte $08   ; <く>
- D - I - - 0x02E337 16:A327: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E338 16:A328: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E339 16:A329: 07        .byte $07   ; <き>
- D - I - - 0x02E33A 16:A32A: 0D        .byte $0D   ; <す>
- D - I - - 0x02E33B 16:A32B: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E33C 16:A32C: 11        .byte $11   ; <ち>
- D - I - - 0x02E33D 16:A32D: 0F        .byte $0F   ; <そ>

- D - I - - 0x02E33E 16:A32E: 10        .byte $10   ; <た>
- D - I - - 0x02E33F 16:A32F: 05        .byte $05   ; <お>
- D - I - - 0x02E340 16:A330: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E341 16:A331: 21        .byte $21   ; <む>
- D - I - - 0x02E342 16:A332: 10        .byte $10   ; <た>
- D - I - - 0x02E343 16:A333: 25        .byte $25   ; <ゆ>
- D - I - - 0x02E344 16:A334: 12        .byte $12   ; <つ>
- D - I - - 0x02E345 16:A335: 22        .byte $22   ; <め>

- D - I - - 0x02E346 16:A336: 00        .byte $00
- D - I - - 0x02E347 16:A337: 06        .byte $06   ; <か>
- D - I - - 0x02E348 16:A338: 08        .byte $08   ; <く>
- D - I - - 0x02E349 16:A339: 23        .byte $23   ; <も>
; продолжение


off_A33A:
- D - I - - 0x02E34A 16:A33A: 08        .byte $08   ; <く>
- D - I - - 0x02E34B 16:A33B: 01        .byte $01   ; <あ>
- D - I - - 0x02E34C 16:A33C: 19        .byte $19   ; <の>
- D - I - - 0x02E34D 16:A33D: 11        .byte $11   ; <ち>
- D - I - - 0x02E34E 16:A33E: 81        .byte $81   ; <A>
- D - I - - 0x02E34F 16:A33F: 13        .byte $13   ; <て>

- D - I - - 0x02E350 16:A340: 00        .byte $00
- D - I - - 0x02E351 16:A341: 02        .byte $02   ; <い>
- D - I - - 0x02E352 16:A342: 81        .byte $81   ; <A>
- D - I - - 0x02E353 16:A343: 19        .byte $19   ; <の>

- D - I - - 0x02E354 16:A344: 18        .byte $18   ; <ね>
- D - I - - 0x02E355 16:A345: 03        .byte $03   ; <う>
- D - I - - 0x02E356 16:A346: 0D        .byte $0D   ; <す>
- D - I - - 0x02E357 16:A347: 0C        .byte $0C   ; <し>
- D - I - - 0x02E358 16:A348: 11        .byte $11   ; <ち>
- D - I - - 0x02E359 16:A349: 0D        .byte $0D   ; <す>
- D - I - - 0x02E35A 16:A34A: 19        .byte $19   ; <の>
- D - I - - 0x02E35B 16:A34B: 10        .byte $10   ; <た>
- D - I - - 0x02E35C 16:A34C: 81        .byte $81   ; <A>
- D - I - - 0x02E35D 16:A34D: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02E35E 16:A34E: 10        .byte $10   ; <た>
- D - I - - 0x02E35F 16:A34F: 04        .byte $04   ; <え>
- D - I - - 0x02E360 16:A350: 15        .byte $15   ; <な>
- D - I - - 0x02E361 16:A351: 1A        .byte $1A   ; <は>
- D - I - - 0x02E362 16:A352: 19        .byte $19   ; <の>
- D - I - - 0x02E363 16:A353: 12        .byte $12   ; <つ>
- D - I - - 0x02E364 16:A354: 81        .byte $81   ; <A>
- D - I - - 0x02E365 16:A355: 31        .byte $31   ; <ゅ>

- D - I - - 0x02E366 16:A356: 10        .byte $10   ; <た>
- D - I - - 0x02E367 16:A357: 05        .byte $05   ; <お>
- D - I - - 0x02E368 16:A358: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E369 16:A359: 24        .byte $24   ; <や>
- D - I - - 0x02E36A 16:A35A: 15        .byte $15   ; <な>
- D - I - - 0x02E36B 16:A35B: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E36C 16:A35C: 19        .byte $19   ; <の>
- D - I - - 0x02E36D 16:A35D: 18        .byte $18   ; <ね>

- D - I - - 0x02E36E 16:A35E: 00        .byte $00
- D - I - - 0x02E36F 16:A35F: 06        .byte $06   ; <か>
- D - I - - 0x02E370 16:A360: 14        .byte $14   ; <と>
- D - I - - 0x02E371 16:A361: 32        .byte $32   ; <ょ>
; продолжение


off_A362:
- D - I - - 0x02E372 16:A362: 20        .byte $20   ; <み>
- D - I - - 0x02E373 16:A363: 01        .byte $01   ; <あ>
- D - I - - 0x02E374 16:A364: 05        .byte $05   ; <お>
- D - I - - 0x02E375 16:A365: 04        .byte $04   ; <え>
- D - I - - 0x02E376 16:A366: 09        .byte $09   ; <け>
- D - I - - 0x02E377 16:A367: 33        .byte $33   ; <0>
- D - I - - 0x02E378 16:A368: 0D        .byte $0D   ; <す>
- D - I - - 0x02E379 16:A369: 33        .byte $33   ; <0>
- D - I - - 0x02E37A 16:A36A: 11        .byte $11   ; <ち>
- D - I - - 0x02E37B 16:A36B: 33        .byte $33   ; <0>
- D - I - - 0x02E37C 16:A36C: 15        .byte $15   ; <な>
- D - I - - 0x02E37D 16:A36D: 33        .byte $33   ; <0>

- D - I - - 0x02E37E 16:A36E: 18        .byte $18   ; <ね>
- D - I - - 0x02E37F 16:A36F: 02        .byte $02   ; <い>
- D - I - - 0x02E380 16:A370: 05        .byte $05   ; <お>
- D - I - - 0x02E381 16:A371: 02        .byte $02   ; <い>
- D - I - - 0x02E382 16:A372: 11        .byte $11   ; <ち>
- D - I - - 0x02E383 16:A373: 33        .byte $33   ; <0>
- D - I - - 0x02E384 16:A374: 15        .byte $15   ; <な>
- D - I - - 0x02E385 16:A375: 33        .byte $33   ; <0>
- D - I - - 0x02E386 16:A376: 19        .byte $19   ; <の>
- D - I - - 0x02E387 16:A377: 33        .byte $33   ; <0>

- D - I - - 0x02E388 16:A378: 00        .byte $00
- D - I - - 0x02E389 16:A379: 03        .byte $03   ; <う>
- D - I - - 0x02E38A 16:A37A: 15        .byte $15   ; <な>
- D - I - - 0x02E38B 16:A37B: 33        .byte $33   ; <0>

- D - I - - 0x02E38C 16:A37C: 00        .byte $00
- D - I - - 0x02E38D 16:A37D: 05        .byte $05   ; <お>
- D - I - - 0x02E38E 16:A37E: 04        .byte $04   ; <え>
- D - I - - 0x02E38F 16:A37F: 20        .byte $20   ; <み>

- D - I - - 0x02E390 16:A380: 08        .byte $08   ; <く>
- D - I - - 0x02E391 16:A381: 06        .byte $06   ; <か>
- D - I - - 0x02E392 16:A382: 0C        .byte $0C   ; <し>
- D - I - - 0x02E393 16:A383: 26        .byte $26   ; <よ>
- D - I - - 0x02E394 16:A384: 10        .byte $10   ; <た>
- D - I - - 0x02E395 16:A385: 27        .byte $27   ; <ら>

- D - I - - 0x02E396 16:A386: 01        .byte $01   ; <あ>



off_A387_5C:
- D - I - - 0x02E397 16:A387: 28        .byte $28   ; <り>
- D - I - - 0x02E398 16:A388: 01        .byte $01   ; <あ>
- D - I - - 0x02E399 16:A389: 05        .byte $05   ; <お>
- D - I - - 0x02E39A 16:A38A: 3C        .byte $3C   ; <9>
- D - I - - 0x02E39B 16:A38B: 09        .byte $09   ; <け>
- D - I - - 0x02E39C 16:A38C: 3D        .byte $3D   ; <+>
- D - I - - 0x02E39D 16:A38D: 0D        .byte $0D   ; <す>
- D - I - - 0x02E39E 16:A38E: 02        .byte $02   ; <い>
- D - I - - 0x02E39F 16:A38F: 11        .byte $11   ; <ち>
- D - I - - 0x02E3A0 16:A390: 02        .byte $02   ; <い>
- D - I - - 0x02E3A1 16:A391: 15        .byte $15   ; <な>
- D - I - - 0x02E3A2 16:A392: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02E3A3 16:A393: 19        .byte $19   ; <の>
- D - I - - 0x02E3A4 16:A394: 28        .byte $28   ; <り>

- D - I - - 0x02E3A5 16:A395: 28        .byte $28   ; <り>
- D - I - - 0x02E3A6 16:A396: 02        .byte $02   ; <い>
- D - I - - 0x02E3A7 16:A397: 05        .byte $05   ; <お>
- D - I - - 0x02E3A8 16:A398: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02E3A9 16:A399: 09        .byte $09   ; <け>
- D - I - - 0x02E3AA 16:A39A: 3F        .byte $3F   ; <•>
- D - I - - 0x02E3AB 16:A39B: 0D        .byte $0D   ; <す>
- D - I - - 0x02E3AC 16:A39C: 02        .byte $02   ; <い>
- D - I - - 0x02E3AD 16:A39D: 11        .byte $11   ; <ち>
- D - I - - 0x02E3AE 16:A39E: 02        .byte $02   ; <い>
- D - I - - 0x02E3AF 16:A39F: 15        .byte $15   ; <な>
- D - I - - 0x02E3B0 16:A3A0: 02        .byte $02   ; <い>
- D - I - - 0x02E3B1 16:A3A1: 19        .byte $19   ; <の>
- D - I - - 0x02E3B2 16:A3A2: 2A        .byte $2A   ; <れ>

- D - I - - 0x02E3B3 16:A3A3: 28        .byte $28   ; <り>
- D - I - - 0x02E3B4 16:A3A4: 03        .byte $03   ; <う>
- D - I - - 0x02E3B5 16:A3A5: 05        .byte $05   ; <お>
- D - I - - 0x02E3B6 16:A3A6: 04        .byte $04   ; <え>
- D - I - - 0x02E3B7 16:A3A7: 09        .byte $09   ; <け>
- D - I - - 0x02E3B8 16:A3A8: 05        .byte $05   ; <お>
- D - I - - 0x02E3B9 16:A3A9: 0D        .byte $0D   ; <す>
- D - I - - 0x02E3BA 16:A3AA: 10        .byte $10   ; <た>
- D - I - - 0x02E3BB 16:A3AB: 11        .byte $11   ; <ち>
- D - I - - 0x02E3BC 16:A3AC: 11        .byte $11   ; <ち>
- D - I - - 0x02E3BD 16:A3AD: 15        .byte $15   ; <な>
- D - I - - 0x02E3BE 16:A3AE: 02        .byte $02   ; <い>
- D - I - - 0x02E3BF 16:A3AF: 19        .byte $19   ; <の>
- D - I - - 0x02E3C0 16:A3B0: 15        .byte $15   ; <な>

- D - I - - 0x02E3C1 16:A3B1: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E3C2 16:A3B2: 04        .byte $04   ; <え>
- D - I - - 0x02E3C3 16:A3B3: 04        .byte $04   ; <え>
- D - I - - 0x02E3C4 16:A3B4: 06        .byte $06   ; <か>
- D - I - - 0x02E3C5 16:A3B5: 08        .byte $08   ; <く>
- D - I - - 0x02E3C6 16:A3B6: 07        .byte $07   ; <き>
- D - I - - 0x02E3C7 16:A3B7: 0C        .byte $0C   ; <し>
- D - I - - 0x02E3C8 16:A3B8: 12        .byte $12   ; <つ>
- D - I - - 0x02E3C9 16:A3B9: 0D        .byte $0D   ; <す>
- D - I - - 0x02E3CA 16:A3BA: 14        .byte $14   ; <と>
- D - I - - 0x02E3CB 16:A3BB: 11        .byte $11   ; <ち>
- D - I - - 0x02E3CC 16:A3BC: 13        .byte $13   ; <て>
- D - I - - 0x02E3CD 16:A3BD: 15        .byte $15   ; <な>
- D - I - - 0x02E3CE 16:A3BE: 16        .byte $16   ; <に>
- D - I - - 0x02E3CF 16:A3BF: 19        .byte $19   ; <の>
- D - I - - 0x02E3D0 16:A3C0: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E3D1 16:A3C1: 28        .byte $28   ; <り>
- D - I - - 0x02E3D2 16:A3C2: 05        .byte $05   ; <お>
- D - I - - 0x02E3D3 16:A3C3: 04        .byte $04   ; <え>
- D - I - - 0x02E3D4 16:A3C4: 22        .byte $22   ; <め>
- D - I - - 0x02E3D5 16:A3C5: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E3D6 16:A3C6: 1D        .byte $1D   ; <へ>
- D - I - - 0x02E3D7 16:A3C7: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E3D8 16:A3C8: 35        .byte $35   ; <2>
- D - I - - 0x02E3D9 16:A3C9: 12        .byte $12   ; <つ>
- D - I - - 0x02E3DA 16:A3CA: 2E        .byte $2E   ; <ん>
- D - I - - 0x02E3DB 16:A3CB: 15        .byte $15   ; <な>
- D - I - - 0x02E3DC 16:A3CC: 2F        .byte $2F   ; <っ>
- D - I - - 0x02E3DD 16:A3CD: 19        .byte $19   ; <の>
- D - I - - 0x02E3DE 16:A3CE: 3A        .byte $3A   ; <7>

- D - I - - 0x02E3DF 16:A3CF: 18        .byte $18   ; <ね>
- D - I - - 0x02E3E0 16:A3D0: 06        .byte $06   ; <か>
- D - I - - 0x02E3E1 16:A3D1: 08        .byte $08   ; <く>
- D - I - - 0x02E3E2 16:A3D2: 1F        .byte $1F   ; <ま>
- D - I - - 0x02E3E3 16:A3D3: 0C        .byte $0C   ; <し>
- D - I - - 0x02E3E4 16:A3D4: 37        .byte $37   ; <4>
- D - I - - 0x02E3E5 16:A3D5: 10        .byte $10   ; <た>
- D - I - - 0x02E3E6 16:A3D6: 3B        .byte $3B   ; <8>
- D - I - - 0x02E3E7 16:A3D7: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E3E8 16:A3D8: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02E3E9 16:A3D9: 01        .byte $01   ; <あ>



off_A3DA_5D:
- D - I - - 0x02E3EA 16:A3DA: 08        .byte $08   ; <く>
- D - I - - 0x02E3EB 16:A3DB: 01        .byte $01   ; <あ>
- D - I - - 0x02E3EC 16:A3DC: 05        .byte $05   ; <お>
- D - I - - 0x02E3ED 16:A3DD: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02E3EE 16:A3DE: 09        .byte $09   ; <け>
- D - I - - 0x02E3EF 16:A3DF: 5E        .byte $5E   ; <ホ>

- D - I - - 0x02E3F0 16:A3E0: 00        .byte $00
- D - I - - 0x02E3F1 16:A3E1: 02        .byte $02   ; <い>
- D - I - - 0x02E3F2 16:A3E2: 05        .byte $05   ; <お>
- D - I - - 0x02E3F3 16:A3E3: 71        .byte $71   ; <ュ>

- D - I - - 0x02E3F4 16:A3E4: 00        .byte $00
- D - I - - 0x02E3F5 16:A3E5: 03        .byte $03   ; <う>
- D - I - - 0x02E3F6 16:A3E6: 09        .byte $09   ; <け>
- D - I - - 0x02E3F7 16:A3E7: 74        .byte $74   ; <ィ>

- D - I - - 0x02E3F8 16:A3E8: 00        .byte $00
- D - I - - 0x02E3F9 16:A3E9: 05        .byte $05   ; <お>
- D - I - - 0x02E3FA 16:A3EA: 04        .byte $04   ; <え>
- D - I - - 0x02E3FB 16:A3EB: 5F        .byte $5F   ; <マ>

- D - I - - 0x02E3FC 16:A3EC: 00        .byte $00
- D - I - - 0x02E3FD 16:A3ED: 06        .byte $06   ; <か>
- D - I - - 0x02E3FE 16:A3EE: 08        .byte $08   ; <く>
- D - I - - 0x02E3FF 16:A3EF: 4A        .byte $4A   ; <コ>
; продолжение


off_A3F0:
- D - I - - 0x02E400 16:A3F0: 08        .byte $08   ; <く>
- D - I - - 0x02E401 16:A3F1: 02        .byte $02   ; <い>
- D - I - - 0x02E402 16:A3F2: 09        .byte $09   ; <け>
- D - I - - 0x02E403 16:A3F3: 51        .byte $51   ; <チ>
- D - I - - 0x02E404 16:A3F4: 0D        .byte $0D   ; <す>
- D - I - - 0x02E405 16:A3F5: 54        .byte $54   ; <ト>

- D - I - - 0x02E406 16:A3F6: 18        .byte $18   ; <ね>
- D - I - - 0x02E407 16:A3F7: 03        .byte $03   ; <う>
- D - I - - 0x02E408 16:A3F8: 05        .byte $05   ; <お>
- D - I - - 0x02E409 16:A3F9: 52        .byte $52   ; <ツ>
- D - I - - 0x02E40A 16:A3FA: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E40B 16:A3FB: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02E40C 16:A3FC: 0D        .byte $0D   ; <す>
- D - I - - 0x02E40D 16:A3FD: 56        .byte $56   ; <ニ>
- D - I - - 0x02E40E 16:A3FE: 11        .byte $11   ; <ち>
- D - I - - 0x02E40F 16:A3FF: 33        .byte $33   ; <0>

- D - I - - 0x02E410 16:A400: 28        .byte $28   ; <り>
- D - I - - 0x02E411 16:A401: 04        .byte $04   ; <え>
- D - I - - 0x02E412 16:A402: 04        .byte $04   ; <え>
- D - I - - 0x02E413 16:A403: 58        .byte $58   ; <ネ>
- D - I - - 0x02E414 16:A404: 08        .byte $08   ; <く>
- D - I - - 0x02E415 16:A405: 59        .byte $59   ; <ノ>
- D - I - - 0x02E416 16:A406: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E417 16:A407: 70        .byte $70   ; <ャ>
- D - I - - 0x02E418 16:A408: 0D        .byte $0D   ; <す>
- D - I - - 0x02E419 16:A409: 5C        .byte $5C   ; <フ>
- D - I - - 0x02E41A 16:A40A: 11        .byte $11   ; <ち>
- D - I - - 0x02E41B 16:A40B: 57        .byte $57   ; <ヌ>
- D - I - - 0x02E41C 16:A40C: 15        .byte $15   ; <な>
- D - I - - 0x02E41D 16:A40D: 45        .byte $45   ; <オ>

- D - I - - 0x02E41E 16:A40E: 10        .byte $10   ; <た>
- D - I - - 0x02E41F 16:A40F: 05        .byte $05   ; <お>
- D - I - - 0x02E420 16:A410: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E421 16:A411: 21        .byte $21   ; <む>
- D - I - - 0x02E422 16:A412: 15        .byte $15   ; <な>
- D - I - - 0x02E423 16:A413: 47        .byte $47   ; <キ>
- D - I - - 0x02E424 16:A414: 19        .byte $19   ; <の>
- D - I - - 0x02E425 16:A415: 50        .byte $50   ; <タ>

- D - I - - 0x02E426 16:A416: 00        .byte $00
- D - I - - 0x02E427 16:A417: 06        .byte $06   ; <か>
- D - I - - 0x02E428 16:A418: 14        .byte $14   ; <と>
- D - I - - 0x02E429 16:A419: 61        .byte $61   ; <ム>
; продолжение


off_A41A:
- D - I - - 0x02E42A 16:A41A: 20        .byte $20   ; <み>
- D - I - - 0x02E42B 16:A41B: 01        .byte $01   ; <あ>
- D - I - - 0x02E42C 16:A41C: 0D        .byte $0D   ; <す>
- D - I - - 0x02E42D 16:A41D: 33        .byte $33   ; <0>
- D - I - - 0x02E42E 16:A41E: 11        .byte $11   ; <ち>
- D - I - - 0x02E42F 16:A41F: 33        .byte $33   ; <0>
- D - I - - 0x02E430 16:A420: 15        .byte $15   ; <な>
- D - I - - 0x02E431 16:A421: 33        .byte $33   ; <0>
- D - I - - 0x02E432 16:A422: 19        .byte $19   ; <の>
- D - I - - 0x02E433 16:A423: 55        .byte $55   ; <ナ>
- D - I - - 0x02E434 16:A424: 81        .byte $81   ; <A>
- D - I - - 0x02E435 16:A425: 13        .byte $13   ; <て>

- D - I - - 0x02E436 16:A426: 18        .byte $18   ; <ね>
- D - I - - 0x02E437 16:A427: 02        .byte $02   ; <い>
- D - I - - 0x02E438 16:A428: 11        .byte $11   ; <ち>
- D - I - - 0x02E439 16:A429: 33        .byte $33   ; <0>
- D - I - - 0x02E43A 16:A42A: 15        .byte $15   ; <な>
- D - I - - 0x02E43B 16:A42B: 33        .byte $33   ; <0>
- D - I - - 0x02E43C 16:A42C: 19        .byte $19   ; <の>
- D - I - - 0x02E43D 16:A42D: 33        .byte $33   ; <0>
- D - I - - 0x02E43E 16:A42E: 81        .byte $81   ; <A>
- D - I - - 0x02E43F 16:A42F: 19        .byte $19   ; <の>

- D - I - - 0x02E440 16:A430: 10        .byte $10   ; <た>
- D - I - - 0x02E441 16:A431: 03        .byte $03   ; <う>
- D - I - - 0x02E442 16:A432: 15        .byte $15   ; <な>
- D - I - - 0x02E443 16:A433: 33        .byte $33   ; <0>
- D - I - - 0x02E444 16:A434: 19        .byte $19   ; <の>
- D - I - - 0x02E445 16:A435: 10        .byte $10   ; <た>
- D - I - - 0x02E446 16:A436: 81        .byte $81   ; <A>
- D - I - - 0x02E447 16:A437: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02E448 16:A438: 08        .byte $08   ; <く>
- D - I - - 0x02E449 16:A439: 04        .byte $04   ; <え>
- D - I - - 0x02E44A 16:A43A: 19        .byte $19   ; <の>
- D - I - - 0x02E44B 16:A43B: 12        .byte $12   ; <つ>
- D - I - - 0x02E44C 16:A43C: 81        .byte $81   ; <A>
- D - I - - 0x02E44D 16:A43D: 31        .byte $31   ; <ゅ>

- D - I - - 0x02E44E 16:A43E: 10        .byte $10   ; <た>
- D - I - - 0x02E44F 16:A43F: 05        .byte $05   ; <お>
- D - I - - 0x02E450 16:A440: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E451 16:A441: 24        .byte $24   ; <や>
- D - I - - 0x02E452 16:A442: 11        .byte $11   ; <ち>
- D - I - - 0x02E453 16:A443: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02E454 16:A444: 10        .byte $10   ; <た>
- D - I - - 0x02E455 16:A445: 73        .byte $73   ; <ヮ>

- D - I - - 0x02E456 16:A446: 08        .byte $08   ; <く>
- D - I - - 0x02E457 16:A447: 06        .byte $06   ; <か>
- D - I - - 0x02E458 16:A448: 0C        .byte $0C   ; <し>
- D - I - - 0x02E459 16:A449: 26        .byte $26   ; <よ>
- D - I - - 0x02E45A 16:A44A: 10        .byte $10   ; <た>
- D - I - - 0x02E45B 16:A44B: 27        .byte $27   ; <ら>

- D - I - - 0x02E45C 16:A44C: 01        .byte $01   ; <あ>



off_A44D_5E:
- D - I - - 0x02E45D 16:A44D: 10        .byte $10   ; <た>
- D - I - - 0x02E45E 16:A44E: 01        .byte $01   ; <あ>
- D - I - - 0x02E45F 16:A44F: 09        .byte $09   ; <け>
- D - I - - 0x02E460 16:A450: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02E461 16:A451: 15        .byte $15   ; <な>
- D - I - - 0x02E462 16:A452: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02E463 16:A453: 19        .byte $19   ; <の>
- D - I - - 0x02E464 16:A454: 28        .byte $28   ; <り>

- D - I - - 0x02E465 16:A455: 00        .byte $00
- D - I - - 0x02E466 16:A456: 02        .byte $02   ; <い>
- D - I - - 0x02E467 16:A457: 19        .byte $19   ; <の>
- D - I - - 0x02E468 16:A458: 2A        .byte $2A   ; <れ>

- D - I - - 0x02E469 16:A459: 08        .byte $08   ; <く>
- D - I - - 0x02E46A 16:A45A: 03        .byte $03   ; <う>
- D - I - - 0x02E46B 16:A45B: 09        .byte $09   ; <け>
- D - I - - 0x02E46C 16:A45C: 60        .byte $60   ; <ミ>
- D - I - - 0x02E46D 16:A45D: 19        .byte $19   ; <の>
- D - I - - 0x02E46E 16:A45E: 15        .byte $15   ; <な>

- D - I - - 0x02E46F 16:A45F: 20        .byte $20   ; <み>
- D - I - - 0x02E470 16:A460: 04        .byte $04   ; <え>
- D - I - - 0x02E471 16:A461: 08        .byte $08   ; <く>
- D - I - - 0x02E472 16:A462: 62        .byte $62   ; <メ>
- D - I - - 0x02E473 16:A463: 0D        .byte $0D   ; <す>
- D - I - - 0x02E474 16:A464: 63        .byte $63   ; <モ>
- D - I - - 0x02E475 16:A465: 11        .byte $11   ; <ち>
- D - I - - 0x02E476 16:A466: 66        .byte $66   ; <ヨ>
- D - I - - 0x02E477 16:A467: 13        .byte $13   ; <て>
- D - I - - 0x02E478 16:A468: 61        .byte $61   ; <ム>
- D - I - - 0x02E479 16:A469: 19        .byte $19   ; <の>
- D - I - - 0x02E47A 16:A46A: 69        .byte $69   ; <ル>

- D - I - - 0x02E47B 16:A46B: 08        .byte $08   ; <く>
- D - I - - 0x02E47C 16:A46C: 05        .byte $05   ; <お>
- D - I - - 0x02E47D 16:A46D: 15        .byte $15   ; <な>
- D - I - - 0x02E47E 16:A46E: 68        .byte $68   ; <リ>
- D - I - - 0x02E47F 16:A46F: 19        .byte $19   ; <の>
- D - I - - 0x02E480 16:A470: 6B        .byte $6B   ; <ロ>

- D - I - - 0x02E481 16:A471: 08        .byte $08   ; <く>
- D - I - - 0x02E482 16:A472: 06        .byte $06   ; <か>
- D - I - - 0x02E483 16:A473: 15        .byte $15   ; <な>
- D - I - - 0x02E484 16:A474: 6A        .byte $6A   ; <レ>
- D - I - - 0x02E485 16:A475: 14        .byte $14   ; <と>
- D - I - - 0x02E486 16:A476: 53        .byte $53   ; <テ>
; продолжение


off_A477:
- D - I - - 0x02E487 16:A477: 08        .byte $08   ; <く>
- D - I - - 0x02E488 16:A478: 03        .byte $03   ; <う>
- D - I - - 0x02E489 16:A479: 05        .byte $05   ; <お>
- D - I - - 0x02E48A 16:A47A: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E48B 16:A47B: 0D        .byte $0D   ; <す>
- D - I - - 0x02E48C 16:A47C: 0E        .byte $0E   ; <せ>

- D - I - - 0x02E48D 16:A47D: 08        .byte $08   ; <く>
- D - I - - 0x02E48E 16:A47E: 04        .byte $04   ; <え>
- D - I - - 0x02E48F 16:A47F: 04        .byte $04   ; <え>
- D - I - - 0x02E490 16:A480: 20        .byte $20   ; <み>
- D - I - - 0x02E491 16:A481: 15        .byte $15   ; <な>
- D - I - - 0x02E492 16:A482: 30        .byte $30   ; <ゃ>

- D - I - - 0x02E493 16:A483: 20        .byte $20   ; <み>
- D - I - - 0x02E494 16:A484: 05        .byte $05   ; <お>
- D - I - - 0x02E495 16:A485: 04        .byte $04   ; <え>
- D - I - - 0x02E496 16:A486: 22        .byte $22   ; <め>
- D - I - - 0x02E497 16:A487: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E498 16:A488: 23        .byte $23   ; <も>
- D - I - - 0x02E499 16:A489: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E49A 16:A48A: 26        .byte $26   ; <よ>
- D - I - - 0x02E49B 16:A48B: 12        .byte $12   ; <つ>
- D - I - - 0x02E49C 16:A48C: 27        .byte $27   ; <ら>
- D - I - - 0x02E49D 16:A48D: 13        .byte $13   ; <て>
- D - I - - 0x02E49E 16:A48E: 1A        .byte $1A   ; <は>

- D - I - - 0x02E49F 16:A48F: 10        .byte $10   ; <た>
- D - I - - 0x02E4A0 16:A490: 06        .byte $06   ; <か>
- D - I - - 0x02E4A1 16:A491: 08        .byte $08   ; <く>
- D - I - - 0x02E4A2 16:A492: 29        .byte $29   ; <る>
- D - I - - 0x02E4A3 16:A493: 0C        .byte $0C   ; <し>
- D - I - - 0x02E4A4 16:A494: 2C        .byte $2C   ; <わ>
- D - I - - 0x02E4A5 16:A495: 10        .byte $10   ; <た>
- D - I - - 0x02E4A6 16:A496: 2D        .byte $2D   ; <を>
; продолжение


off_A497:
- D - I - - 0x02E4A7 16:A497: 00        .byte $00
- D - I - - 0x02E4A8 16:A498: 01        .byte $01   ; <あ>
- D - I - - 0x02E4A9 16:A499: 05        .byte $05   ; <お>
- D - I - - 0x02E4AA 16:A49A: 09        .byte $09   ; <け>

- D - I - - 0x02E4AB 16:A49B: 00        .byte $00
- D - I - - 0x02E4AC 16:A49C: 02        .byte $02   ; <い>
- D - I - - 0x02E4AD 16:A49D: 05        .byte $05   ; <お>
- D - I - - 0x02E4AE 16:A49E: 08        .byte $08   ; <く>

- D - I - - 0x02E4AF 16:A49F: 08        .byte $08   ; <く>
- D - I - - 0x02E4B0 16:A4A0: 03        .byte $03   ; <う>
- D - I - - 0x02E4B1 16:A4A1: 11        .byte $11   ; <ち>
- D - I - - 0x02E4B2 16:A4A2: 02        .byte $02   ; <い>
- D - I - - 0x02E4B3 16:A4A3: 15        .byte $15   ; <な>
- D - I - - 0x02E4B4 16:A4A4: 02        .byte $02   ; <い>
; продолжение


off_A4A5:
- D - I - - 0x02E4B5 16:A4A5: 08        .byte $08   ; <く>
- D - I - - 0x02E4B6 16:A4A6: 01        .byte $01   ; <あ>
- D - I - - 0x02E4B7 16:A4A7: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4B8 16:A4A8: 02        .byte $02   ; <い>
- D - I - - 0x02E4B9 16:A4A9: 11        .byte $11   ; <ち>
- D - I - - 0x02E4BA 16:A4AA: 02        .byte $02   ; <い>

- D - I - - 0x02E4BB 16:A4AB: 18        .byte $18   ; <ね>
- D - I - - 0x02E4BC 16:A4AC: 02        .byte $02   ; <い>
- D - I - - 0x02E4BD 16:A4AD: 09        .byte $09   ; <け>
- D - I - - 0x02E4BE 16:A4AE: 02        .byte $02   ; <い>
- D - I - - 0x02E4BF 16:A4AF: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4C0 16:A4B0: 02        .byte $02   ; <い>
- D - I - - 0x02E4C1 16:A4B1: 11        .byte $11   ; <ち>
- D - I - - 0x02E4C2 16:A4B2: 02        .byte $02   ; <い>
- D - I - - 0x02E4C3 16:A4B3: 15        .byte $15   ; <な>
- D - I - - 0x02E4C4 16:A4B4: 02        .byte $02   ; <い>

- D - I - - 0x02E4C5 16:A4B5: 01        .byte $01   ; <あ>



off_A4B6_5F:
- D - I - - 0x02E4C6 16:A4B6: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E4C7 16:A4B7: 01        .byte $01   ; <あ>
- D - I - - 0x02E4C8 16:A4B8: 01        .byte $01   ; <あ>
- D - I - - 0x02E4C9 16:A4B9: 12        .byte $12   ; <つ>
- D - I - - 0x02E4CA 16:A4BA: 05        .byte $05   ; <お>
- D - I - - 0x02E4CB 16:A4BB: 04        .byte $04   ; <え>
- D - I - - 0x02E4CC 16:A4BC: 09        .byte $09   ; <け>
- D - I - - 0x02E4CD 16:A4BD: 05        .byte $05   ; <お>
- D - I - - 0x02E4CE 16:A4BE: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4CF 16:A4BF: 10        .byte $10   ; <た>
- D - I - - 0x02E4D0 16:A4C0: 11        .byte $11   ; <ち>
- D - I - - 0x02E4D1 16:A4C1: 11        .byte $11   ; <ち>
- D - I - - 0x02E4D2 16:A4C2: 15        .byte $15   ; <な>
- D - I - - 0x02E4D3 16:A4C3: 14        .byte $14   ; <と>
- D - I - - 0x02E4D4 16:A4C4: 19        .byte $19   ; <の>
- D - I - - 0x02E4D5 16:A4C5: 15        .byte $15   ; <な>

- D - I - - 0x02E4D6 16:A4C6: 28        .byte $28   ; <り>
- D - I - - 0x02E4D7 16:A4C7: 02        .byte $02   ; <い>
- D - I - - 0x02E4D8 16:A4C8: 05        .byte $05   ; <お>
- D - I - - 0x02E4D9 16:A4C9: 06        .byte $06   ; <か>
- D - I - - 0x02E4DA 16:A4CA: 09        .byte $09   ; <け>
- D - I - - 0x02E4DB 16:A4CB: 07        .byte $07   ; <き>
- D - I - - 0x02E4DC 16:A4CC: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4DD 16:A4CD: 10        .byte $10   ; <た>
- D - I - - 0x02E4DE 16:A4CE: 11        .byte $11   ; <ち>
- D - I - - 0x02E4DF 16:A4CF: 13        .byte $13   ; <て>
- D - I - - 0x02E4E0 16:A4D0: 15        .byte $15   ; <な>
- D - I - - 0x02E4E1 16:A4D1: 10        .byte $10   ; <た>
- D - I - - 0x02E4E2 16:A4D2: 19        .byte $19   ; <の>
- D - I - - 0x02E4E3 16:A4D3: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E4E4 16:A4D4: 28        .byte $28   ; <り>
- D - I - - 0x02E4E5 16:A4D5: 03        .byte $03   ; <う>
- D - I - - 0x02E4E6 16:A4D6: 05        .byte $05   ; <お>
- D - I - - 0x02E4E7 16:A4D7: 0C        .byte $0C   ; <し>
- D - I - - 0x02E4E8 16:A4D8: 09        .byte $09   ; <け>
- D - I - - 0x02E4E9 16:A4D9: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4EA 16:A4DA: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4EB 16:A4DB: 18        .byte $18   ; <ね>
- D - I - - 0x02E4EC 16:A4DC: 11        .byte $11   ; <ち>
- D - I - - 0x02E4ED 16:A4DD: 19        .byte $19   ; <の>
- D - I - - 0x02E4EE 16:A4DE: 15        .byte $15   ; <な>
- D - I - - 0x02E4EF 16:A4DF: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02E4F0 16:A4E0: 19        .byte $19   ; <の>
- D - I - - 0x02E4F1 16:A4E1: 1D        .byte $1D   ; <へ>

- D - I - - 0x02E4F2 16:A4E2: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E4F3 16:A4E3: 04        .byte $04   ; <え>
- D - I - - 0x02E4F4 16:A4E4: 04        .byte $04   ; <え>
- D - I - - 0x02E4F5 16:A4E5: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E4F6 16:A4E6: 08        .byte $08   ; <く>
- D - I - - 0x02E4F7 16:A4E7: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E4F8 16:A4E8: 0D        .byte $0D   ; <す>
- D - I - - 0x02E4F9 16:A4E9: 1A        .byte $1A   ; <は>
- D - I - - 0x02E4FA 16:A4EA: 0C        .byte $0C   ; <し>
- D - I - - 0x02E4FB 16:A4EB: 16        .byte $16   ; <に>
- D - I - - 0x02E4FC 16:A4EC: 11        .byte $11   ; <ち>
- D - I - - 0x02E4FD 16:A4ED: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E4FE 16:A4EE: 15        .byte $15   ; <な>
- D - I - - 0x02E4FF 16:A4EF: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E500 16:A4F0: 19        .byte $19   ; <の>
- D - I - - 0x02E501 16:A4F1: 1F        .byte $1F   ; <ま>

- D - I - - 0x02E502 16:A4F2: 28        .byte $28   ; <り>
- D - I - - 0x02E503 16:A4F3: 05        .byte $05   ; <お>
- D - I - - 0x02E504 16:A4F4: 06        .byte $06   ; <か>
- D - I - - 0x02E505 16:A4F5: 24        .byte $24   ; <や>
- D - I - - 0x02E506 16:A4F6: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E507 16:A4F7: 25        .byte $25   ; <ゆ>
- D - I - - 0x02E508 16:A4F8: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E509 16:A4F9: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E50A 16:A4FA: 10        .byte $10   ; <た>
- D - I - - 0x02E50B 16:A4FB: 31        .byte $31   ; <ゅ>
- D - I - - 0x02E50C 16:A4FC: 14        .byte $14   ; <と>
- D - I - - 0x02E50D 16:A4FD: 34        .byte $34   ; <1>
- D - I - - 0x02E50E 16:A4FE: 18        .byte $18   ; <ね>
- D - I - - 0x02E50F 16:A4FF: 35        .byte $35   ; <2>

- D - I - - 0x02E510 16:A500: 20        .byte $20   ; <み>
- D - I - - 0x02E511 16:A501: 06        .byte $06   ; <か>
- D - I - - 0x02E512 16:A502: 04        .byte $04   ; <え>
- D - I - - 0x02E513 16:A503: 26        .byte $26   ; <よ>
- D - I - - 0x02E514 16:A504: 08        .byte $08   ; <く>
- D - I - - 0x02E515 16:A505: 27        .byte $27   ; <ら>
- D - I - - 0x02E516 16:A506: 0C        .byte $0C   ; <し>
- D - I - - 0x02E517 16:A507: 32        .byte $32   ; <ょ>
- D - I - - 0x02E518 16:A508: 10        .byte $10   ; <た>
- D - I - - 0x02E519 16:A509: 33        .byte $33   ; <0>
- D - I - - 0x02E51A 16:A50A: 14        .byte $14   ; <と>
- D - I - - 0x02E51B 16:A50B: 36        .byte $36   ; <3>

- D - I - - 0x02E51C 16:A50C: 01        .byte $01   ; <あ>



off_A50D_60:
- D - I - - 0x02E51D 16:A50D: 20        .byte $20   ; <み>
- D - I - - 0x02E51E 16:A50E: 01        .byte $01   ; <あ>
- D - I - - 0x02E51F 16:A50F: 09        .byte $09   ; <け>
- D - I - - 0x02E520 16:A510: 0C        .byte $0C   ; <し>
- D - I - - 0x02E521 16:A511: 15        .byte $15   ; <な>
- D - I - - 0x02E522 16:A512: 02        .byte $02   ; <い>
- D - I - - 0x02E523 16:A513: 19        .byte $19   ; <の>
- D - I - - 0x02E524 16:A514: 19        .byte $19   ; <の>
- D - I - - 0x02E525 16:A515: 81        .byte $81   ; <A>
- D - I - - 0x02E526 16:A516: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02E527 16:A517: C1        .byte $C1   ; <デ>
- D - I - - 0x02E528 16:A518: 0D        .byte $0D   ; <す>

- D - I - - 0x02E529 16:A519: 10        .byte $10   ; <た>
- D - I - - 0x02E52A 16:A51A: 02        .byte $02   ; <い>
- D - I - - 0x02E52B 16:A51B: 19        .byte $19   ; <の>
- D - I - - 0x02E52C 16:A51C: 02        .byte $02   ; <い>
- D - I - - 0x02E52D 16:A51D: 81        .byte $81   ; <A>
- D - I - - 0x02E52E 16:A51E: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E52F 16:A51F: C1        .byte $C1   ; <デ>
- D - I - - 0x02E530 16:A520: 0F        .byte $0F   ; <そ>

- D - I - - 0x02E531 16:A521: 10        .byte $10   ; <た>
- D - I - - 0x02E532 16:A522: 03        .byte $03   ; <う>
- D - I - - 0x02E533 16:A523: 09        .byte $09   ; <け>
- D - I - - 0x02E534 16:A524: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E535 16:A525: 19        .byte $19   ; <の>
- D - I - - 0x02E536 16:A526: 31        .byte $31   ; <ゅ>
- D - I - - 0x02E537 16:A527: 81        .byte $81   ; <A>
- D - I - - 0x02E538 16:A528: 34        .byte $34   ; <1>

- D - I - - 0x02E539 16:A529: 28        .byte $28   ; <り>
- D - I - - 0x02E53A 16:A52A: 04        .byte $04   ; <え>
- D - I - - 0x02E53B 16:A52B: 08        .byte $08   ; <く>
- D - I - - 0x02E53C 16:A52C: 21        .byte $21   ; <む>
- D - I - - 0x02E53D 16:A52D: 0D        .byte $0D   ; <す>
- D - I - - 0x02E53E 16:A52E: 24        .byte $24   ; <や>
- D - I - - 0x02E53F 16:A52F: 11        .byte $11   ; <ち>
- D - I - - 0x02E540 16:A530: 25        .byte $25   ; <ゆ>
- D - I - - 0x02E541 16:A531: 13        .byte $13   ; <て>
- D - I - - 0x02E542 16:A532: 18        .byte $18   ; <ね>
- D - I - - 0x02E543 16:A533: 19        .byte $19   ; <の>
- D - I - - 0x02E544 16:A534: 33        .byte $33   ; <0>
- D - I - - 0x02E545 16:A535: 81        .byte $81   ; <A>
- D - I - - 0x02E546 16:A536: 36        .byte $36   ; <3>

- D - I - - 0x02E547 16:A537: 08        .byte $08   ; <く>
- D - I - - 0x02E548 16:A538: 05        .byte $05   ; <お>
- D - I - - 0x02E549 16:A539: 15        .byte $15   ; <な>
- D - I - - 0x02E54A 16:A53A: 32        .byte $32   ; <ょ>
- D - I - - 0x02E54B 16:A53B: 19        .byte $19   ; <の>
- D - I - - 0x02E54C 16:A53C: 39        .byte $39   ; <6>

- D - I - - 0x02E54D 16:A53D: 00        .byte $00
- D - I - - 0x02E54E 16:A53E: 06        .byte $06   ; <か>
- D - I - - 0x02E54F 16:A53F: 14        .byte $14   ; <と>
- D - I - - 0x02E550 16:A540: 38        .byte $38   ; <5>

- D - I - - 0x02E551 16:A541: 02        .byte $02   ; <い>
- D - I - - 0x02E552 16:A542: 77 A4     .word off_A477



off_A544_61:
- D - I - - 0x02E554 16:A544: 08        .byte $08   ; <く>
- D - I - - 0x02E555 16:A545: 01        .byte $01   ; <あ>
- D - I - - 0x02E556 16:A546: 05        .byte $05   ; <お>
- D - I - - 0x02E557 16:A547: 04        .byte $04   ; <え>
- D - I - - 0x02E558 16:A548: 09        .byte $09   ; <け>
- D - I - - 0x02E559 16:A549: 33        .byte $33   ; <0>

- D - I - - 0x02E55A 16:A54A: 00        .byte $00
- D - I - - 0x02E55B 16:A54B: 02        .byte $02   ; <い>
- D - I - - 0x02E55C 16:A54C: 05        .byte $05   ; <お>
- D - I - - 0x02E55D 16:A54D: 02        .byte $02   ; <い>

- D - I - - 0x02E55E 16:A54E: 00        .byte $00
- D - I - - 0x02E55F 16:A54F: 03        .byte $03   ; <う>
- D - I - - 0x02E560 16:A550: 09        .byte $09   ; <け>
- D - I - - 0x02E561 16:A551: 53        .byte $53   ; <テ>

- D - I - - 0x02E562 16:A552: 00        .byte $00
- D - I - - 0x02E563 16:A553: 05        .byte $05   ; <お>
- D - I - - 0x02E564 16:A554: 04        .byte $04   ; <え>
- D - I - - 0x02E565 16:A555: 20        .byte $20   ; <み>

- D - I - - 0x02E566 16:A556: 00        .byte $00
- D - I - - 0x02E567 16:A557: 06        .byte $06   ; <か>
- D - I - - 0x02E568 16:A558: 08        .byte $08   ; <く>
- D - I - - 0x02E569 16:A559: 3F        .byte $3F   ; <•>

- D - I - - 0x02E56A 16:A55A: 02        .byte $02   ; <い>
- D - I - - 0x02E56B 16:A55B: F0 A3     .word off_A3F0



off_A55D_62:
- D - I - - 0x02E56D 16:A55D: 38        .byte $38   ; <5>
- D - I - - 0x02E56E 16:A55E: 01        .byte $01   ; <あ>
- D - I - - 0x02E56F 16:A55F: 01        .byte $01   ; <あ>
- D - I - - 0x02E570 16:A560: 40        .byte $40   ; <「>
- D - I - - 0x02E571 16:A561: 05        .byte $05   ; <お>
- D - I - - 0x02E572 16:A562: 41        .byte $41   ; <ア>
- D - I - - 0x02E573 16:A563: 09        .byte $09   ; <け>
- D - I - - 0x02E574 16:A564: 02        .byte $02   ; <い>
- D - I - - 0x02E575 16:A565: 15        .byte $15   ; <な>
- D - I - - 0x02E576 16:A566: 02        .byte $02   ; <い>
- D - I - - 0x02E577 16:A567: 19        .byte $19   ; <の>
- D - I - - 0x02E578 16:A568: 02        .byte $02   ; <い>
- D - I - - 0x02E579 16:A569: 81        .byte $81   ; <A>
- D - I - - 0x02E57A 16:A56A: 02        .byte $02   ; <い>
- D - I - - 0x02E57B 16:A56B: C1        .byte $C1   ; <デ>
- D - I - - 0x02E57C 16:A56C: 02        .byte $02   ; <い>
- D - I - - 0x02E57D 16:A56D: C5        .byte $C5   ; <ブ>
- D - I - - 0x02E57E 16:A56E: 57        .byte $57   ; <ヌ>

- D - I - - 0x02E57F 16:A56F: 28        .byte $28   ; <り>
- D - I - - 0x02E580 16:A570: 02        .byte $02   ; <い>
- D - I - - 0x02E581 16:A571: 01        .byte $01   ; <あ>
- D - I - - 0x02E582 16:A572: 42        .byte $42   ; <イ>
- D - I - - 0x02E583 16:A573: 05        .byte $05   ; <お>
- D - I - - 0x02E584 16:A574: 43        .byte $43   ; <ウ>
- D - I - - 0x02E585 16:A575: 19        .byte $19   ; <の>
- D - I - - 0x02E586 16:A576: 02        .byte $02   ; <い>
- D - I - - 0x02E587 16:A577: 81        .byte $81   ; <A>
- D - I - - 0x02E588 16:A578: 56        .byte $56   ; <ニ>
- D - I - - 0x02E589 16:A579: C1        .byte $C1   ; <デ>
- D - I - - 0x02E58A 16:A57A: 5C        .byte $5C   ; <フ>
- D - I - - 0x02E58B 16:A57B: C5        .byte $C5   ; <ブ>
- D - I - - 0x02E58C 16:A57C: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02E58D 16:A57D: 38        .byte $38   ; <5>
- D - I - - 0x02E58E 16:A57E: 03        .byte $03   ; <う>
- D - I - - 0x02E58F 16:A57F: 01        .byte $01   ; <あ>
- D - I - - 0x02E590 16:A580: 48        .byte $48   ; <ク>
- D - I - - 0x02E591 16:A581: 05        .byte $05   ; <お>
- D - I - - 0x02E592 16:A582: 49        .byte $49   ; <ケ>
- D - I - - 0x02E593 16:A583: 09        .byte $09   ; <け>
- D - I - - 0x02E594 16:A584: 4C        .byte $4C   ; <シ>
- D - I - - 0x02E595 16:A585: 0D        .byte $0D   ; <す>
- D - I - - 0x02E596 16:A586: 4D        .byte $4D   ; <ス>
- D - I - - 0x02E597 16:A587: 19        .byte $19   ; <の>
- D - I - - 0x02E598 16:A588: 02        .byte $02   ; <い>
- D - I - - 0x02E599 16:A589: 81        .byte $81   ; <A>
- D - I - - 0x02E59A 16:A58A: 02        .byte $02   ; <い>
- D - I - - 0x02E59B 16:A58B: C1        .byte $C1   ; <デ>
- D - I - - 0x02E59C 16:A58C: 52        .byte $52   ; <ツ>
- D - I - - 0x02E59D 16:A58D: C5        .byte $C5   ; <ブ>
- D - I - - 0x02E59E 16:A58E: 59        .byte $59   ; <ノ>

- D - I - - 0x02E59F 16:A58F: 38        .byte $38   ; <5>
- D - I - - 0x02E5A0 16:A590: 04        .byte $04   ; <え>
- D - I - - 0x02E5A1 16:A591: 04        .byte $04   ; <え>
- D - I - - 0x02E5A2 16:A592: 4B        .byte $4B   ; <サ>
- D - I - - 0x02E5A3 16:A593: 08        .byte $08   ; <く>
- D - I - - 0x02E5A4 16:A594: 4E        .byte $4E   ; <セ>
- D - I - - 0x02E5A5 16:A595: 0C        .byte $0C   ; <し>
- D - I - - 0x02E5A6 16:A596: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02E5A7 16:A597: 13        .byte $13   ; <て>
- D - I - - 0x02E5A8 16:A598: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02E5A9 16:A599: 15        .byte $15   ; <な>
- D - I - - 0x02E5AA 16:A59A: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02E5AB 16:A59B: 19        .byte $19   ; <の>
- D - I - - 0x02E5AC 16:A59C: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02E5AD 16:A59D: 81        .byte $81   ; <A>
- D - I - - 0x02E5AE 16:A59E: 5F        .byte $5F   ; <マ>
- D - I - - 0x02E5AF 16:A59F: C1        .byte $C1   ; <デ>
- D - I - - 0x02E5B0 16:A5A0: 58        .byte $58   ; <ネ>

- D - I - - 0x02E5B1 16:A5A1: 38        .byte $38   ; <5>
- D - I - - 0x02E5B2 16:A5A2: 05        .byte $05   ; <お>
- D - I - - 0x02E5B3 16:A5A3: 04        .byte $04   ; <え>
- D - I - - 0x02E5B4 16:A5A4: 22        .byte $22   ; <め>
- D - I - - 0x02E5B5 16:A5A5: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E5B6 16:A5A6: 44        .byte $44   ; <エ>
- D - I - - 0x02E5B7 16:A5A7: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E5B8 16:A5A8: 45        .byte $45   ; <オ>
- D - I - - 0x02E5B9 16:A5A9: 10        .byte $10   ; <た>
- D - I - - 0x02E5BA 16:A5AA: 50        .byte $50   ; <タ>
- D - I - - 0x02E5BB 16:A5AB: 12        .byte $12   ; <つ>
- D - I - - 0x02E5BC 16:A5AC: 4A        .byte $4A   ; <コ>
- D - I - - 0x02E5BD 16:A5AD: 15        .byte $15   ; <な>
- D - I - - 0x02E5BE 16:A5AE: 51        .byte $51   ; <チ>
- D - I - - 0x02E5BF 16:A5AF: 19        .byte $19   ; <の>
- D - I - - 0x02E5C0 16:A5B0: 54        .byte $54   ; <ト>
- D - I - - 0x02E5C1 16:A5B1: 81        .byte $81   ; <A>
- D - I - - 0x02E5C2 16:A5B2: 55        .byte $55   ; <ナ>

- D - I - - 0x02E5C3 16:A5B3: 18        .byte $18   ; <ね>
- D - I - - 0x02E5C4 16:A5B4: 06        .byte $06   ; <か>
- D - I - - 0x02E5C5 16:A5B5: 08        .byte $08   ; <く>
- D - I - - 0x02E5C6 16:A5B6: 46        .byte $46   ; <カ>
- D - I - - 0x02E5C7 16:A5B7: 0C        .byte $0C   ; <し>
- D - I - - 0x02E5C8 16:A5B8: 47        .byte $47   ; <キ>
- D - I - - 0x02E5C9 16:A5B9: 10        .byte $10   ; <た>
- D - I - - 0x02E5CA 16:A5BA: 2D        .byte $2D   ; <を>
- D - I - - 0x02E5CB 16:A5BB: 14        .byte $14   ; <と>
- D - I - - 0x02E5CC 16:A5BC: 53        .byte $53   ; <テ>

- D - I - - 0x02E5CD 16:A5BD: 01        .byte $01   ; <あ>



off_A5BE_63:
- D - I - - 0x02E5CE 16:A5BE: 28        .byte $28   ; <り>
- D - I - - 0x02E5CF 16:A5BF: 01        .byte $01   ; <あ>
- D - I - - 0x02E5D0 16:A5C0: 69        .byte $69   ; <ル>
- D - I - - 0x02E5D1 16:A5C1: A0        .byte $A0   ; <が>
- D - I - - 0x02E5D2 16:A5C2: 01        .byte $01   ; <あ>
- D - I - - 0x02E5D3 16:A5C3: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02E5D4 16:A5C4: 05        .byte $05   ; <お>
- D - I - - 0x02E5D5 16:A5C5: A3        .byte $A3   ; <げ>
- D - I - - 0x02E5D6 16:A5C6: 09        .byte $09   ; <け>
- D - I - - 0x02E5D7 16:A5C7: 02        .byte $02   ; <い>
- D - I - - 0x02E5D8 16:A5C8: 15        .byte $15   ; <な>
- D - I - - 0x02E5D9 16:A5C9: 02        .byte $02   ; <い>
- D - I - - 0x02E5DA 16:A5CA: 19        .byte $19   ; <の>
- D - I - - 0x02E5DB 16:A5CB: AA        .byte $AA   ; <だ>

- D - I - - 0x02E5DC 16:A5CC: 10        .byte $10   ; <た>
- D - I - - 0x02E5DD 16:A5CD: 02        .byte $02   ; <い>
- D - I - - 0x02E5DE 16:A5CE: 01        .byte $01   ; <あ>
- D - I - - 0x02E5DF 16:A5CF: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02E5E0 16:A5D0: 05        .byte $05   ; <お>
- D - I - - 0x02E5E1 16:A5D1: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02E5E2 16:A5D2: 19        .byte $19   ; <の>
- D - I - - 0x02E5E3 16:A5D3: AB        .byte $AB   ; <ぢ>

- D - I - - 0x02E5E4 16:A5D4: 28        .byte $28   ; <り>
- D - I - - 0x02E5E5 16:A5D5: 03        .byte $03   ; <う>
- D - I - - 0x02E5E6 16:A5D6: 05        .byte $05   ; <お>
- D - I - - 0x02E5E7 16:A5D7: A6        .byte $A6   ; <じ>
- D - I - - 0x02E5E8 16:A5D8: 09        .byte $09   ; <け>
- D - I - - 0x02E5E9 16:A5D9: A7        .byte $A7   ; <ず>
- D - I - - 0x02E5EA 16:A5DA: 0D        .byte $0D   ; <す>
- D - I - - 0x02E5EB 16:A5DB: B2        .byte $B2   ; <べ>
- D - I - - 0x02E5EC 16:A5DC: 11        .byte $11   ; <ち>
- D - I - - 0x02E5ED 16:A5DD: B3        .byte $B3   ; <ぼ>
- D - I - - 0x02E5EE 16:A5DE: 15        .byte $15   ; <な>
- D - I - - 0x02E5EF 16:A5DF: 94        .byte $94
- D - I - - 0x02E5F0 16:A5E0: 19        .byte $19   ; <の>
- D - I - - 0x02E5F1 16:A5E1: 95        .byte $95

- D - I - - 0x02E5F2 16:A5E2: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E5F3 16:A5E3: 04        .byte $04   ; <え>
- D - I - - 0x02E5F4 16:A5E4: 04        .byte $04   ; <え>
- D - I - - 0x02E5F5 16:A5E5: AC        .byte $AC   ; <づ>
- D - I - - 0x02E5F6 16:A5E6: 08        .byte $08   ; <く>
- D - I - - 0x02E5F7 16:A5E7: AD        .byte $AD   ; <で>
- D - I - - 0x02E5F8 16:A5E8: 0C        .byte $0C   ; <し>
- D - I - - 0x02E5F9 16:A5E9: B8        .byte $B8   ; <ゴ>
- D - I - - 0x02E5FA 16:A5EA: 10        .byte $10   ; <た>
- D - I - - 0x02E5FB 16:A5EB: B9        .byte $B9   ; <ザ>
- D - I - - 0x02E5FC 16:A5EC: 13        .byte $13   ; <て>
- D - I - - 0x02E5FD 16:A5ED: AE        .byte $AE   ; <ど>
- D - I - - 0x02E5FE 16:A5EE: 15        .byte $15   ; <な>
- D - I - - 0x02E5FF 16:A5EF: 96        .byte $96
- D - I - - 0x02E600 16:A5F0: 19        .byte $19   ; <の>
- D - I - - 0x02E601 16:A5F1: 97        .byte $97

- D - I - - 0x02E602 16:A5F2: 20        .byte $20   ; <み>
- D - I - - 0x02E603 16:A5F3: 05        .byte $05   ; <お>
- D - I - - 0x02E604 16:A5F4: 04        .byte $04   ; <え>
- D - I - - 0x02E605 16:A5F5: 22        .byte $22   ; <め>
- D - I - - 0x02E606 16:A5F6: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E607 16:A5F7: AF        .byte $AF   ; <ば>
- D - I - - 0x02E608 16:A5F8: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E609 16:A5F9: BA        .byte $BA   ; <ジ>
- D - I - - 0x02E60A 16:A5FA: 10        .byte $10   ; <た>
- D - I - - 0x02E60B 16:A5FB: BB        .byte $BB   ; <ズ>
- D - I - - 0x02E60C 16:A5FC: 15        .byte $15   ; <な>
- D - I - - 0x02E60D 16:A5FD: 99        .byte $99

- D - I - - 0x02E60E 16:A5FE: 18        .byte $18   ; <ね>
- D - I - - 0x02E60F 16:A5FF: 06        .byte $06   ; <か>
- D - I - - 0x02E610 16:A600: 08        .byte $08   ; <く>
- D - I - - 0x02E611 16:A601: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02E612 16:A602: 0C        .byte $0C   ; <し>
- D - I - - 0x02E613 16:A603: 9B        .byte $9B
- D - I - - 0x02E614 16:A604: 10        .byte $10   ; <た>
- D - I - - 0x02E615 16:A605: 2D        .byte $2D   ; <を>
- D - I - - 0x02E616 16:A606: 14        .byte $14   ; <と>
- D - I - - 0x02E617 16:A607: 53        .byte $53   ; <テ>

- D - I - - 0x02E618 16:A608: 02        .byte $02   ; <い>
- D - I - - 0x02E619 16:A609: A5 A4     .word off_A4A5



off_A60B_64:
- D - I - - 0x02E61B 16:A60B: 08        .byte $08   ; <く>
- D - I - - 0x02E61C 16:A60C: 02        .byte $02   ; <い>
- D - I - - 0x02E61D 16:A60D: 09        .byte $09   ; <け>
- D - I - - 0x02E61E 16:A60E: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E61F 16:A60F: 0D        .byte $0D   ; <す>
- D - I - - 0x02E620 16:A610: 1F        .byte $1F   ; <ま>

- D - I - - 0x02E621 16:A611: 10        .byte $10   ; <た>
- D - I - - 0x02E622 16:A612: 03        .byte $03   ; <う>
- D - I - - 0x02E623 16:A613: 05        .byte $05   ; <お>
- D - I - - 0x02E624 16:A614: 34        .byte $34   ; <1>
- D - I - - 0x02E625 16:A615: 09        .byte $09   ; <け>
- D - I - - 0x02E626 16:A616: 35        .byte $35   ; <2>
- D - I - - 0x02E627 16:A617: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E628 16:A618: 39        .byte $39   ; <6>

- D - I - - 0x02E629 16:A619: 20        .byte $20   ; <み>
- D - I - - 0x02E62A 16:A61A: 04        .byte $04   ; <え>
- D - I - - 0x02E62B 16:A61B: 04        .byte $04   ; <え>
- D - I - - 0x02E62C 16:A61C: 36        .byte $36   ; <3>
- D - I - - 0x02E62D 16:A61D: 08        .byte $08   ; <く>
- D - I - - 0x02E62E 16:A61E: 37        .byte $37   ; <4>
- D - I - - 0x02E62F 16:A61F: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E630 16:A620: 3B        .byte $3B   ; <8>
- D - I - - 0x02E631 16:A621: 0D        .byte $0D   ; <す>
- D - I - - 0x02E632 16:A622: 2C        .byte $2C   ; <わ>
- D - I - - 0x02E633 16:A623: 11        .byte $11   ; <ち>
- D - I - - 0x02E634 16:A624: 3C        .byte $3C   ; <9>

- D - I - - 0x02E635 16:A625: 08        .byte $08   ; <く>
- D - I - - 0x02E636 16:A626: 05        .byte $05   ; <お>
- D - I - - 0x02E637 16:A627: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E638 16:A628: 3D        .byte $3D   ; <+>
- D - I - - 0x02E639 16:A629: 10        .byte $10   ; <た>
- D - I - - 0x02E63A 16:A62A: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02E63B 16:A62B: 00        .byte $00
- D - I - - 0x02E63C 16:A62C: 06        .byte $06   ; <か>
- D - I - - 0x02E63D 16:A62D: 08        .byte $08   ; <く>
- D - I - - 0x02E63E 16:A62E: 3F        .byte $3F   ; <•>

- D - I - - 0x02E63F 16:A62F: 02        .byte $02   ; <い>
- D - I - - 0x02E640 16:A630: 3A A3     .word off_A33A



off_A632_65:
- D - I - - 0x02E642 16:A632: 38        .byte $38   ; <5>
- D - I - - 0x02E643 16:A633: 01        .byte $01   ; <あ>
- D - I - - 0x02E644 16:A634: 07        .byte $07   ; <き>
- D - I - - 0x02E645 16:A635: 04        .byte $04   ; <え>
- D - I - - 0x02E646 16:A636: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E647 16:A637: 33        .byte $33   ; <0>
- D - I - - 0x02E648 16:A638: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E649 16:A639: 33        .byte $33   ; <0>
- D - I - - 0x02E64A 16:A63A: 13        .byte $13   ; <て>
- D - I - - 0x02E64B 16:A63B: 33        .byte $33   ; <0>
- D - I - - 0x02E64C 16:A63C: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E64D 16:A63D: 33        .byte $33   ; <0>
- D - I - - 0x02E64E 16:A63E: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E64F 16:A63F: 1D        .byte $1D   ; <へ>
- D - I - - 0x02E650 16:A640: 83        .byte $83   ; <C>
- D - I - - 0x02E651 16:A641: 14        .byte $14   ; <と>
- D - I - - 0x02E652 16:A642: C3        .byte $C3   ; <バ>
- D - I - - 0x02E653 16:A643: 15        .byte $15   ; <な>

- D - I - - 0x02E654 16:A644: 38        .byte $38   ; <5>
- D - I - - 0x02E655 16:A645: 02        .byte $02   ; <い>
- D - I - - 0x02E656 16:A646: 07        .byte $07   ; <き>
- D - I - - 0x02E657 16:A647: 02        .byte $02   ; <い>
- D - I - - 0x02E658 16:A648: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E659 16:A649: 29        .byte $29   ; <る>
- D - I - - 0x02E65A 16:A64A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E65B 16:A64B: 06        .byte $06   ; <か>
- D - I - - 0x02E65C 16:A64C: 13        .byte $13   ; <て>
- D - I - - 0x02E65D 16:A64D: 33        .byte $33   ; <0>
- D - I - - 0x02E65E 16:A64E: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E65F 16:A64F: 33        .byte $33   ; <0>
- D - I - - 0x02E660 16:A650: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E661 16:A651: 33        .byte $33   ; <0>
- D - I - - 0x02E662 16:A652: 83        .byte $83   ; <C>
- D - I - - 0x02E663 16:A653: 16        .byte $16   ; <に>
- D - I - - 0x02E664 16:A654: C3        .byte $C3   ; <バ>
- D - I - - 0x02E665 16:A655: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E666 16:A656: 38        .byte $38   ; <5>
- D - I - - 0x02E667 16:A657: 03        .byte $03   ; <う>
- D - I - - 0x02E668 16:A658: 07        .byte $07   ; <き>
- D - I - - 0x02E669 16:A659: 08        .byte $08   ; <く>
- D - I - - 0x02E66A 16:A65A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E66B 16:A65B: 28        .byte $28   ; <り>
- D - I - - 0x02E66C 16:A65C: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E66D 16:A65D: 38        .byte $38   ; <5>
- D - I - - 0x02E66E 16:A65E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E66F 16:A65F: 0C        .byte $0C   ; <し>
- D - I - - 0x02E670 16:A660: 13        .byte $13   ; <て>
- D - I - - 0x02E671 16:A661: 0D        .byte $0D   ; <す>
- D - I - - 0x02E672 16:A662: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E673 16:A663: 33        .byte $33   ; <0>
- D - I - - 0x02E674 16:A664: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E675 16:A665: 10        .byte $10   ; <た>
- D - I - - 0x02E676 16:A666: 83        .byte $83   ; <C>
- D - I - - 0x02E677 16:A667: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02E678 16:A668: 38        .byte $38   ; <5>
- D - I - - 0x02E679 16:A669: 04        .byte $04   ; <え>
- D - I - - 0x02E67A 16:A66A: 04        .byte $04   ; <え>
- D - I - - 0x02E67B 16:A66B: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E67C 16:A66C: 08        .byte $08   ; <く>
- D - I - - 0x02E67D 16:A66D: 2A        .byte $2A   ; <れ>
- D - I - - 0x02E67E 16:A66E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E67F 16:A66F: 3A        .byte $3A   ; <7>
- D - I - - 0x02E680 16:A670: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E681 16:A671: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02E682 16:A672: 13        .byte $13   ; <て>
- D - I - - 0x02E683 16:A673: 2E        .byte $2E   ; <ん>
- D - I - - 0x02E684 16:A674: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E685 16:A675: 1A        .byte $1A   ; <は>
- D - I - - 0x02E686 16:A676: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E687 16:A677: 12        .byte $12   ; <つ>
- D - I - - 0x02E688 16:A678: 83        .byte $83   ; <C>
- D - I - - 0x02E689 16:A679: 31        .byte $31   ; <ゅ>

- D - I - - 0x02E68A 16:A67A: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E68B 16:A67B: 05        .byte $05   ; <お>
- D - I - - 0x02E68C 16:A67C: 04        .byte $04   ; <え>
- D - I - - 0x02E68D 16:A67D: 20        .byte $20   ; <み>
- D - I - - 0x02E68E 16:A67E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E68F 16:A67F: 2D        .byte $2D   ; <を>
- D - I - - 0x02E690 16:A680: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E691 16:A681: 24        .byte $24   ; <や>
- D - I - - 0x02E692 16:A682: 10        .byte $10   ; <た>
- D - I - - 0x02E693 16:A683: 25        .byte $25   ; <ゆ>
- D - I - - 0x02E694 16:A684: 12        .byte $12   ; <つ>
- D - I - - 0x02E695 16:A685: 22        .byte $22   ; <め>
- D - I - - 0x02E696 16:A686: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E697 16:A687: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E698 16:A688: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E699 16:A689: 18        .byte $18   ; <ね>

- D - I - - 0x02E69A 16:A68A: 18        .byte $18   ; <ね>
- D - I - - 0x02E69B 16:A68B: 06        .byte $06   ; <か>
- D - I - - 0x02E69C 16:A68C: 08        .byte $08   ; <く>
- D - I - - 0x02E69D 16:A68D: 2F        .byte $2F   ; <っ>
- D - I - - 0x02E69E 16:A68E: 0C        .byte $0C   ; <し>
- D - I - - 0x02E69F 16:A68F: 26        .byte $26   ; <よ>
- D - I - - 0x02E6A0 16:A690: 10        .byte $10   ; <た>
- D - I - - 0x02E6A1 16:A691: 27        .byte $27   ; <ら>
- D - I - - 0x02E6A2 16:A692: 14        .byte $14   ; <と>
- D - I - - 0x02E6A3 16:A693: 32        .byte $32   ; <ょ>

- D - I - - 0x02E6A4 16:A694: 01        .byte $01   ; <あ>



off_A695_66:
- D - I - - 0x02E6A5 16:A695: 28        .byte $28   ; <り>
- D - I - - 0x02E6A6 16:A696: 01        .byte $01   ; <あ>
- D - I - - 0x02E6A7 16:A697: 07        .byte $07   ; <き>
- D - I - - 0x02E6A8 16:A698: 22        .byte $22   ; <め>
- D - I - - 0x02E6A9 16:A699: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E6AA 16:A69A: 05        .byte $05   ; <お>
- D - I - - 0x02E6AB 16:A69B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E6AC 16:A69C: 10        .byte $10   ; <た>
- D - I - - 0x02E6AD 16:A69D: 13        .byte $13   ; <て>
- D - I - - 0x02E6AE 16:A69E: 10        .byte $10   ; <た>
- D - I - - 0x02E6AF 16:A69F: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E6B0 16:A6A0: 10        .byte $10   ; <た>
- D - I - - 0x02E6B1 16:A6A1: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E6B2 16:A6A2: 37        .byte $37   ; <4>

- D - I - - 0x02E6B3 16:A6A3: 28        .byte $28   ; <り>
- D - I - - 0x02E6B4 16:A6A4: 02        .byte $02   ; <い>
- D - I - - 0x02E6B5 16:A6A5: 07        .byte $07   ; <き>
- D - I - - 0x02E6B6 16:A6A6: 02        .byte $02   ; <い>
- D - I - - 0x02E6B7 16:A6A7: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E6B8 16:A6A8: 03        .byte $03   ; <う>
- D - I - - 0x02E6B9 16:A6A9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E6BA 16:A6AA: 10        .byte $10   ; <た>
- D - I - - 0x02E6BB 16:A6AB: 13        .byte $13   ; <て>
- D - I - - 0x02E6BC 16:A6AC: 10        .byte $10   ; <た>
- D - I - - 0x02E6BD 16:A6AD: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E6BE 16:A6AE: 10        .byte $10   ; <た>
- D - I - - 0x02E6BF 16:A6AF: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E6C0 16:A6B0: 3D        .byte $3D   ; <+>

- D - I - - 0x02E6C1 16:A6B1: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E6C2 16:A6B2: 03        .byte $03   ; <う>
- D - I - - 0x02E6C3 16:A6B3: 04        .byte $04   ; <え>
- D - I - - 0x02E6C4 16:A6B4: 08        .byte $08   ; <く>
- D - I - - 0x02E6C5 16:A6B5: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E6C6 16:A6B6: 09        .byte $09   ; <け>
- D - I - - 0x02E6C7 16:A6B7: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E6C8 16:A6B8: 59        .byte $59   ; <ノ>
- D - I - - 0x02E6C9 16:A6B9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E6CA 16:A6BA: 28        .byte $28   ; <り>
- D - I - - 0x02E6CB 16:A6BB: 13        .byte $13   ; <て>
- D - I - - 0x02E6CC 16:A6BC: 29        .byte $29   ; <る>
- D - I - - 0x02E6CD 16:A6BD: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E6CE 16:A6BE: 2C        .byte $2C   ; <わ>
- D - I - - 0x02E6CF 16:A6BF: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E6D0 16:A6C0: 2D        .byte $2D   ; <を>

- D - I - - 0x02E6D1 16:A6C1: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E6D2 16:A6C2: 04        .byte $04   ; <え>
- D - I - - 0x02E6D3 16:A6C3: 04        .byte $04   ; <え>
- D - I - - 0x02E6D4 16:A6C4: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E6D5 16:A6C5: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E6D6 16:A6C6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E6D7 16:A6C7: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E6D8 16:A6C8: 2A        .byte $2A   ; <れ>
- D - I - - 0x02E6D9 16:A6C9: 0C        .byte $0C   ; <し>
- D - I - - 0x02E6DA 16:A6CA: 3F        .byte $3F   ; <•>
- D - I - - 0x02E6DB 16:A6CB: 12        .byte $12   ; <つ>
- D - I - - 0x02E6DC 16:A6CC: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02E6DD 16:A6CD: 14        .byte $14   ; <と>
- D - I - - 0x02E6DE 16:A6CE: 2E        .byte $2E   ; <ん>
- D - I - - 0x02E6DF 16:A6CF: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E6E0 16:A6D0: 2F        .byte $2F   ; <っ>

- D - I - - 0x02E6E1 16:A6D1: 20        .byte $20   ; <み>
- D - I - - 0x02E6E2 16:A6D2: 05        .byte $05   ; <お>
- D - I - - 0x02E6E3 16:A6D3: 04        .byte $04   ; <え>
- D - I - - 0x02E6E4 16:A6D4: 20        .byte $20   ; <み>
- D - I - - 0x02E6E5 16:A6D5: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E6E6 16:A6D6: 21        .byte $21   ; <む>
- D - I - - 0x02E6E7 16:A6D7: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E6E8 16:A6D8: 38        .byte $38   ; <5>
- D - I - - 0x02E6E9 16:A6D9: 10        .byte $10   ; <た>
- D - I - - 0x02E6EA 16:A6DA: 39        .byte $39   ; <6>
- D - I - - 0x02E6EB 16:A6DB: 14        .byte $14   ; <と>
- D - I - - 0x02E6EC 16:A6DC: 3C        .byte $3C   ; <9>

- D - I - - 0x02E6ED 16:A6DD: 18        .byte $18   ; <ね>
- D - I - - 0x02E6EE 16:A6DE: 06        .byte $06   ; <か>
- D - I - - 0x02E6EF 16:A6DF: 08        .byte $08   ; <く>
- D - I - - 0x02E6F0 16:A6E0: 23        .byte $23   ; <も>
- D - I - - 0x02E6F1 16:A6E1: 0C        .byte $0C   ; <し>
- D - I - - 0x02E6F2 16:A6E2: 3A        .byte $3A   ; <7>
- D - I - - 0x02E6F3 16:A6E3: 10        .byte $10   ; <た>
- D - I - - 0x02E6F4 16:A6E4: 3B        .byte $3B   ; <8>
- D - I - - 0x02E6F5 16:A6E5: 14        .byte $14   ; <と>
- D - I - - 0x02E6F6 16:A6E6: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02E6F7 16:A6E7: 01        .byte $01   ; <あ>



off_A6E8_67:
- D - I - - 0x02E6F8 16:A6E8: 10        .byte $10   ; <た>
- D - I - - 0x02E6F9 16:A6E9: 01        .byte $01   ; <あ>
- D - I - - 0x02E6FA 16:A6EA: 19        .byte $19   ; <の>
- D - I - - 0x02E6FB 16:A6EB: 1D        .byte $1D   ; <へ>
- D - I - - 0x02E6FC 16:A6EC: 81        .byte $81   ; <A>
- D - I - - 0x02E6FD 16:A6ED: 14        .byte $14   ; <と>
- D - I - - 0x02E6FE 16:A6EE: C1        .byte $C1   ; <デ>
- D - I - - 0x02E6FF 16:A6EF: 15        .byte $15   ; <な>

- D - I - - 0x02E700 16:A6F0: 18        .byte $18   ; <ね>
- D - I - - 0x02E701 16:A6F1: 02        .byte $02   ; <い>
- D - I - - 0x02E702 16:A6F2: 09        .byte $09   ; <け>
- D - I - - 0x02E703 16:A6F3: 41        .byte $41   ; <ア>
- D - I - - 0x02E704 16:A6F4: 0D        .byte $0D   ; <す>
- D - I - - 0x02E705 16:A6F5: 44        .byte $44   ; <エ>
- D - I - - 0x02E706 16:A6F6: 81        .byte $81   ; <A>
- D - I - - 0x02E707 16:A6F7: 16        .byte $16   ; <に>
- D - I - - 0x02E708 16:A6F8: C1        .byte $C1   ; <デ>
- D - I - - 0x02E709 16:A6F9: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E70A 16:A6FA: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E70B 16:A6FB: 03        .byte $03   ; <う>
- D - I - - 0x02E70C 16:A6FC: 05        .byte $05   ; <お>
- D - I - - 0x02E70D 16:A6FD: 42        .byte $42   ; <イ>
- D - I - - 0x02E70E 16:A6FE: 09        .byte $09   ; <け>
- D - I - - 0x02E70F 16:A6FF: 43        .byte $43   ; <ウ>
- D - I - - 0x02E710 16:A700: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E711 16:A701: 4D        .byte $4D   ; <ス>
- D - I - - 0x02E712 16:A702: 0D        .byte $0D   ; <す>
- D - I - - 0x02E713 16:A703: 46        .byte $46   ; <カ>
- D - I - - 0x02E714 16:A704: 11        .byte $11   ; <ち>
- D - I - - 0x02E715 16:A705: 33        .byte $33   ; <0>
- D - I - - 0x02E716 16:A706: 19        .byte $19   ; <の>
- D - I - - 0x02E717 16:A707: 33        .byte $33   ; <0>
- D - I - - 0x02E718 16:A708: 81        .byte $81   ; <A>
- D - I - - 0x02E719 16:A709: 65        .byte $65   ; <ユ>

- D - I - - 0x02E71A 16:A70A: 38        .byte $38   ; <5>
- D - I - - 0x02E71B 16:A70B: 04        .byte $04   ; <え>
- D - I - - 0x02E71C 16:A70C: 04        .byte $04   ; <え>
- D - I - - 0x02E71D 16:A70D: 48        .byte $48   ; <ク>
- D - I - - 0x02E71E 16:A70E: 08        .byte $08   ; <く>
- D - I - - 0x02E71F 16:A70F: 49        .byte $49   ; <ケ>
- D - I - - 0x02E720 16:A710: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E721 16:A711: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02E722 16:A712: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E723 16:A713: 4C        .byte $4C   ; <シ>
- D - I - - 0x02E724 16:A714: 11        .byte $11   ; <ち>
- D - I - - 0x02E725 16:A715: 60        .byte $60   ; <ミ>
- D - I - - 0x02E726 16:A716: 15        .byte $15   ; <な>
- D - I - - 0x02E727 16:A717: 33        .byte $33   ; <0>
- D - I - - 0x02E728 16:A718: 19        .byte $19   ; <の>
- D - I - - 0x02E729 16:A719: 64        .byte $64   ; <ヤ>
- D - I - - 0x02E72A 16:A71A: 81        .byte $81   ; <A>
- D - I - - 0x02E72B 16:A71B: 67        .byte $67   ; <ラ>

- D - I - - 0x02E72C 16:A71C: 28        .byte $28   ; <り>
- D - I - - 0x02E72D 16:A71D: 05        .byte $05   ; <お>
- D - I - - 0x02E72E 16:A71E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E72F 16:A71F: 4B        .byte $4B   ; <サ>
- D - I - - 0x02E730 16:A720: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E731 16:A721: 4E        .byte $4E   ; <セ>
- D - I - - 0x02E732 16:A722: 10        .byte $10   ; <た>
- D - I - - 0x02E733 16:A723: 62        .byte $62   ; <メ>
- D - I - - 0x02E734 16:A724: 11        .byte $11   ; <ち>
- D - I - - 0x02E735 16:A725: 40        .byte $40   ; <「>
- D - I - - 0x02E736 16:A726: 15        .byte $15   ; <な>
- D - I - - 0x02E737 16:A727: 63        .byte $63   ; <モ>
- D - I - - 0x02E738 16:A728: 19        .byte $19   ; <の>
- D - I - - 0x02E739 16:A729: 66        .byte $66   ; <ヨ>

- D - I - - 0x02E73A 16:A72A: 08        .byte $08   ; <く>
- D - I - - 0x02E73B 16:A72B: 06        .byte $06   ; <か>
- D - I - - 0x02E73C 16:A72C: 08        .byte $08   ; <く>
- D - I - - 0x02E73D 16:A72D: 4A        .byte $4A   ; <コ>
- D - I - - 0x02E73E 16:A72E: 14        .byte $14   ; <と>
- D - I - - 0x02E73F 16:A72F: 61        .byte $61   ; <ム>

- D - I - - 0x02E740 16:A730: 02        .byte $02   ; <い>
- D - I - - 0x02E741 16:A731: 62 A3     .word off_A362



off_A733_68:
- D - I - - 0x02E743 16:A733: 20        .byte $20   ; <み>
- D - I - - 0x02E744 16:A734: 01        .byte $01   ; <あ>
- D - I - - 0x02E745 16:A735: 09        .byte $09   ; <け>
- D - I - - 0x02E746 16:A736: 0C        .byte $0C   ; <し>
- D - I - - 0x02E747 16:A737: 15        .byte $15   ; <な>
- D - I - - 0x02E748 16:A738: 02        .byte $02   ; <い>
- D - I - - 0x02E749 16:A739: 19        .byte $19   ; <の>
- D - I - - 0x02E74A 16:A73A: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02E74B 16:A73B: 81        .byte $81   ; <A>
- D - I - - 0x02E74C 16:A73C: 78        .byte $78   ; <?>
- D - I - - 0x02E74D 16:A73D: C1        .byte $C1   ; <デ>
- D - I - - 0x02E74E 16:A73E: 79        .byte $79   ; <!>

- D - I - - 0x02E74F 16:A73F: 10        .byte $10   ; <た>
- D - I - - 0x02E750 16:A740: 02        .byte $02   ; <い>
- D - I - - 0x02E751 16:A741: 19        .byte $19   ; <の>
- D - I - - 0x02E752 16:A742: 02        .byte $02   ; <い>
- D - I - - 0x02E753 16:A743: 81        .byte $81   ; <A>
- D - I - - 0x02E754 16:A744: 7A        .byte $7A   ; <、>
- D - I - - 0x02E755 16:A745: C1        .byte $C1   ; <デ>
- D - I - - 0x02E756 16:A746: 7B        .byte $7B   ; <。>

- D - I - - 0x02E757 16:A747: 28        .byte $28   ; <り>
- D - I - - 0x02E758 16:A748: 03        .byte $03   ; <う>
- D - I - - 0x02E759 16:A749: 05        .byte $05   ; <お>
- D - I - - 0x02E75A 16:A74A: 65        .byte $65   ; <ユ>
- D - I - - 0x02E75B 16:A74B: 09        .byte $09   ; <け>
- D - I - - 0x02E75C 16:A74C: 70        .byte $70   ; <ャ>
- D - I - - 0x02E75D 16:A74D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E75E 16:A74E: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02E75F 16:A74F: 0D        .byte $0D   ; <す>
- D - I - - 0x02E760 16:A750: 02        .byte $02   ; <い>
- D - I - - 0x02E761 16:A751: 19        .byte $19   ; <の>
- D - I - - 0x02E762 16:A752: 02        .byte $02   ; <い>
- D - I - - 0x02E763 16:A753: 81        .byte $81   ; <A>
- D - I - - 0x02E764 16:A754: 7D        .byte $7D   ; <ー>

- D - I - - 0x02E765 16:A755: 38        .byte $38   ; <5>
- D - I - - 0x02E766 16:A756: 04        .byte $04   ; <え>
- D - I - - 0x02E767 16:A757: 07        .byte $07   ; <き>
- D - I - - 0x02E768 16:A758: 67        .byte $67   ; <ラ>
- D - I - - 0x02E769 16:A759: 08        .byte $08   ; <く>
- D - I - - 0x02E76A 16:A75A: 72        .byte $72   ; <ョ>
- D - I - - 0x02E76B 16:A75B: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E76C 16:A75C: 6E        .byte $6E   ; <ン>
- D - I - - 0x02E76D 16:A75D: 0D        .byte $0D   ; <す>
- D - I - - 0x02E76E 16:A75E: 73        .byte $73   ; <ヮ>
- D - I - - 0x02E76F 16:A75F: 11        .byte $11   ; <ち>
- D - I - - 0x02E770 16:A760: 74        .byte $74   ; <ィ>
- D - I - - 0x02E771 16:A761: 15        .byte $15   ; <な>
- D - I - - 0x02E772 16:A762: 75        .byte $75   ; <ェ>
- D - I - - 0x02E773 16:A763: 19        .byte $19   ; <の>
- D - I - - 0x02E774 16:A764: 7C        .byte $7C   ; <~>
- D - I - - 0x02E775 16:A765: 81        .byte $81   ; <A>
- D - I - - 0x02E776 16:A766: 7F        .byte $7F   ; <,>

- D - I - - 0x02E777 16:A767: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E778 16:A768: 05        .byte $05   ; <お>
- D - I - - 0x02E779 16:A769: 07        .byte $07   ; <き>
- D - I - - 0x02E77A 16:A76A: 64        .byte $64   ; <ヤ>
- D - I - - 0x02E77B 16:A76B: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E77C 16:A76C: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02E77D 16:A76D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E77E 16:A76E: 8E        .byte $8E   ; <L>
- D - I - - 0x02E77F 16:A76F: 11        .byte $11   ; <ち>
- D - I - - 0x02E780 16:A770: 76        .byte $76   ; <ォ>
- D - I - - 0x02E781 16:A771: 10        .byte $10   ; <た>
- D - I - - 0x02E782 16:A772: 9C        .byte $9C
- D - I - - 0x02E783 16:A773: 15        .byte $15   ; <な>
- D - I - - 0x02E784 16:A774: 77        .byte $77   ; <:>
- D - I - - 0x02E785 16:A775: 19        .byte $19   ; <の>
- D - I - - 0x02E786 16:A776: 7E        .byte $7E   ; <.>

- D - I - - 0x02E787 16:A777: 18        .byte $18   ; <ね>
- D - I - - 0x02E788 16:A778: 06        .byte $06   ; <か>
- D - I - - 0x02E789 16:A779: 08        .byte $08   ; <く>
- D - I - - 0x02E78A 16:A77A: 46        .byte $46   ; <カ>
- D - I - - 0x02E78B 16:A77B: 0C        .byte $0C   ; <し>
- D - I - - 0x02E78C 16:A77C: A4        .byte $A4   ; <ご>
- D - I - - 0x02E78D 16:A77D: 10        .byte $10   ; <た>
- D - I - - 0x02E78E 16:A77E: 2D        .byte $2D   ; <を>
- D - I - - 0x02E78F 16:A77F: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E790 16:A780: 71        .byte $71   ; <ュ>

- D - I - - 0x02E791 16:A781: 02        .byte $02   ; <い>
- D - I - - 0x02E792 16:A782: 97 A4     .word off_A497



off_A784_69:
- D - I - - 0x02E794 16:A784: 08        .byte $08   ; <く>
- D - I - - 0x02E795 16:A785: 01        .byte $01   ; <あ>
- D - I - - 0x02E796 16:A786: 05        .byte $05   ; <お>
- D - I - - 0x02E797 16:A787: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02E798 16:A788: 09        .byte $09   ; <け>
- D - I - - 0x02E799 16:A789: 5E        .byte $5E   ; <ホ>

- D - I - - 0x02E79A 16:A78A: 10        .byte $10   ; <た>
- D - I - - 0x02E79B 16:A78B: 02        .byte $02   ; <い>
- D - I - - 0x02E79C 16:A78C: 05        .byte $05   ; <お>
- D - I - - 0x02E79D 16:A78D: 71        .byte $71   ; <ュ>
- D - I - - 0x02E79E 16:A78E: 09        .byte $09   ; <け>
- D - I - - 0x02E79F 16:A78F: 29        .byte $29   ; <る>
- D - I - - 0x02E7A0 16:A790: 0D        .byte $0D   ; <す>
- D - I - - 0x02E7A1 16:A791: 06        .byte $06   ; <か>

- D - I - - 0x02E7A2 16:A792: 00        .byte $00
- D - I - - 0x02E7A3 16:A793: 19        .byte $19   ; <の>
- D - I - - 0x02E7A4 16:A794: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E7A5 16:A795: 6E        .byte $6E   ; <ン>

- D - I - - 0x02E7A6 16:A796: 00        .byte $00
- D - I - - 0x02E7A7 16:A797: 1A        .byte $1A   ; <は>
- D - I - - 0x02E7A8 16:A798: 13        .byte $13   ; <て>
- D - I - - 0x02E7A9 16:A799: 6F        .byte $6F   ; <ッ>

- D - I - - 0x02E7AA 16:A79A: 18        .byte $18   ; <ね>
- D - I - - 0x02E7AB 16:A79B: 03        .byte $03   ; <う>
- D - I - - 0x02E7AC 16:A79C: 05        .byte $05   ; <お>
- D - I - - 0x02E7AD 16:A79D: 42        .byte $42   ; <イ>
- D - I - - 0x02E7AE 16:A79E: 09        .byte $09   ; <け>
- D - I - - 0x02E7AF 16:A79F: 69        .byte $69   ; <ル>
- D - I - - 0x02E7B0 16:A7A0: 0D        .byte $0D   ; <す>
- D - I - - 0x02E7B1 16:A7A1: 0C        .byte $0C   ; <し>
- D - I - - 0x02E7B2 16:A7A2: 11        .byte $11   ; <ち>
- D - I - - 0x02E7B3 16:A7A3: 0D        .byte $0D   ; <す>

- D - I - - 0x02E7B4 16:A7A4: 20        .byte $20   ; <み>
- D - I - - 0x02E7B5 16:A7A5: 04        .byte $04   ; <え>
- D - I - - 0x02E7B6 16:A7A6: 04        .byte $04   ; <え>
- D - I - - 0x02E7B7 16:A7A7: 68        .byte $68   ; <リ>
- D - I - - 0x02E7B8 16:A7A8: 08        .byte $08   ; <く>
- D - I - - 0x02E7B9 16:A7A9: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02E7BA 16:A7AA: 0D        .byte $0D   ; <す>
- D - I - - 0x02E7BB 16:A7AB: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02E7BC 16:A7AC: 11        .byte $11   ; <ち>
- D - I - - 0x02E7BD 16:A7AD: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02E7BE 16:A7AE: 15        .byte $15   ; <な>
- D - I - - 0x02E7BF 16:A7AF: 78        .byte $78   ; <?>

- D - I - - 0x02E7C0 16:A7B0: 18        .byte $18   ; <ね>
- D - I - - 0x02E7C1 16:A7B1: 05        .byte $05   ; <お>
- D - I - - 0x02E7C2 16:A7B2: 04        .byte $04   ; <え>
- D - I - - 0x02E7C3 16:A7B3: 6A        .byte $6A   ; <レ>
- D - I - - 0x02E7C4 16:A7B4: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E7C5 16:A7B5: 2D        .byte $2D   ; <を>
- D - I - - 0x02E7C6 16:A7B6: 15        .byte $15   ; <な>
- D - I - - 0x02E7C7 16:A7B7: 7A        .byte $7A   ; <、>
- D - I - - 0x02E7C8 16:A7B8: 19        .byte $19   ; <の>
- D - I - - 0x02E7C9 16:A7B9: 72        .byte $72   ; <ョ>

- D - I - - 0x02E7CA 16:A7BA: 08        .byte $08   ; <く>
- D - I - - 0x02E7CB 16:A7BB: 06        .byte $06   ; <か>
- D - I - - 0x02E7CC 16:A7BC: 08        .byte $08   ; <く>
- D - I - - 0x02E7CD 16:A7BD: 2F        .byte $2F   ; <っ>
- D - I - - 0x02E7CE 16:A7BE: 14        .byte $14   ; <と>
- D - I - - 0x02E7CF 16:A7BF: 75        .byte $75   ; <ェ>

- D - I - - 0x02E7D0 16:A7C0: 02        .byte $02   ; <い>
- D - I - - 0x02E7D1 16:A7C1: 1A A4     .word off_A41A



off_A7C3_6A:
- D - I - - 0x02E7D3 16:A7C3: 20        .byte $20   ; <み>
- D - I - - 0x02E7D4 16:A7C4: 01        .byte $01   ; <あ>
- D - I - - 0x02E7D5 16:A7C5: 0C        .byte $0C   ; <し>
- D - I - - 0x02E7D6 16:A7C6: 10        .byte $10   ; <た>
- D - I - - 0x02E7D7 16:A7C7: 10        .byte $10   ; <た>
- D - I - - 0x02E7D8 16:A7C8: 11        .byte $11   ; <ち>
- D - I - - 0x02E7D9 16:A7C9: 14        .byte $14   ; <と>
- D - I - - 0x02E7DA 16:A7CA: 14        .byte $14   ; <と>
- D - I - - 0x02E7DB 16:A7CB: 18        .byte $18   ; <ね>
- D - I - - 0x02E7DC 16:A7CC: 15        .byte $15   ; <な>
- D - I - - 0x02E7DD 16:A7CD: 80        .byte $80
- D - I - - 0x02E7DE 16:A7CE: 18        .byte $18   ; <ね>

- D - I - - 0x02E7DF 16:A7CF: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E7E0 16:A7D0: 02        .byte $02   ; <い>
- D - I - - 0x02E7E1 16:A7D1: 05        .byte $05   ; <お>
- D - I - - 0x02E7E2 16:A7D2: 49        .byte $49   ; <ケ>
- D - I - - 0x02E7E3 16:A7D3: 09        .byte $09   ; <け>
- D - I - - 0x02E7E4 16:A7D4: 4C        .byte $4C   ; <シ>
- D - I - - 0x02E7E5 16:A7D5: 0C        .byte $0C   ; <し>
- D - I - - 0x02E7E6 16:A7D6: 12        .byte $12   ; <つ>
- D - I - - 0x02E7E7 16:A7D7: 11        .byte $11   ; <ち>
- D - I - - 0x02E7E8 16:A7D8: 58        .byte $58   ; <ネ>
- D - I - - 0x02E7E9 16:A7D9: 10        .byte $10   ; <た>
- D - I - - 0x02E7EA 16:A7DA: 13        .byte $13   ; <て>
- D - I - - 0x02E7EB 16:A7DB: 14        .byte $14   ; <と>
- D - I - - 0x02E7EC 16:A7DC: 16        .byte $16   ; <に>
- D - I - - 0x02E7ED 16:A7DD: 18        .byte $18   ; <ね>
- D - I - - 0x02E7EE 16:A7DE: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E7EF 16:A7DF: 18        .byte $18   ; <ね>
- D - I - - 0x02E7F0 16:A7E0: 03        .byte $03   ; <う>
- D - I - - 0x02E7F1 16:A7E1: 05        .byte $05   ; <お>
- D - I - - 0x02E7F2 16:A7E2: 4A        .byte $4A   ; <コ>
- D - I - - 0x02E7F3 16:A7E3: 09        .byte $09   ; <け>
- D - I - - 0x02E7F4 16:A7E4: 4B        .byte $4B   ; <サ>
- D - I - - 0x02E7F5 16:A7E5: 0D        .byte $0D   ; <す>
- D - I - - 0x02E7F6 16:A7E6: 4E        .byte $4E   ; <セ>
- D - I - - 0x02E7F7 16:A7E7: 14        .byte $14   ; <と>
- D - I - - 0x02E7F8 16:A7E8: 19        .byte $19   ; <の>

- D - I - - 0x02E7F9 16:A7E9: 18        .byte $18   ; <ね>
- D - I - - 0x02E7FA 16:A7EA: 04        .byte $04   ; <え>
- D - I - - 0x02E7FB 16:A7EB: 01        .byte $01   ; <あ>
- D - I - - 0x02E7FC 16:A7EC: 1A        .byte $1A   ; <は>
- D - I - - 0x02E7FD 16:A7ED: 09        .byte $09   ; <け>
- D - I - - 0x02E7FE 16:A7EE: 65        .byte $65   ; <ユ>
- D - I - - 0x02E7FF 16:A7EF: 0D        .byte $0D   ; <す>
- D - I - - 0x02E800 16:A7F0: 70        .byte $70   ; <ャ>
- D - I - - 0x02E801 16:A7F1: 11        .byte $11   ; <ち>
- D - I - - 0x02E802 16:A7F2: 71        .byte $71   ; <ュ>

- D - I - - 0x02E803 16:A7F3: 20        .byte $20   ; <み>
- D - I - - 0x02E804 16:A7F4: 05        .byte $05   ; <お>
- D - I - - 0x02E805 16:A7F5: 01        .byte $01   ; <あ>
- D - I - - 0x02E806 16:A7F6: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02E807 16:A7F7: 05        .byte $05   ; <お>
- D - I - - 0x02E808 16:A7F8: 1D        .byte $1D   ; <へ>
- D - I - - 0x02E809 16:A7F9: 09        .byte $09   ; <け>
- D - I - - 0x02E80A 16:A7FA: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E80B 16:A7FB: 0D        .byte $0D   ; <す>
- D - I - - 0x02E80C 16:A7FC: 72        .byte $72   ; <ョ>
- D - I - - 0x02E80D 16:A7FD: 11        .byte $11   ; <ち>
- D - I - - 0x02E80E 16:A7FE: 73        .byte $73   ; <ヮ>

- D - I - - 0x02E80F 16:A7FF: 10        .byte $10   ; <た>
- D - I - - 0x02E810 16:A800: 06        .byte $06   ; <か>
- D - I - - 0x02E811 16:A801: 01        .byte $01   ; <あ>
- D - I - - 0x02E812 16:A802: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E813 16:A803: 05        .byte $05   ; <お>
- D - I - - 0x02E814 16:A804: 1F        .byte $1F   ; <ま>
- D - I - - 0x02E815 16:A805: 09        .byte $09   ; <け>
- D - I - - 0x02E816 16:A806: 35        .byte $35   ; <2>

- D - I - - 0x02E817 16:A807: 01        .byte $01   ; <あ>



off_A808_6B:
- D - I - - 0x02E818 16:A808: 20        .byte $20   ; <み>
- D - I - - 0x02E819 16:A809: 01        .byte $01   ; <あ>
- D - I - - 0x02E81A 16:A80A: 09        .byte $09   ; <け>
- D - I - - 0x02E81B 16:A80B: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02E81C 16:A80C: 0D        .byte $0D   ; <す>
- D - I - - 0x02E81D 16:A80D: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02E81E 16:A80E: 11        .byte $11   ; <ち>
- D - I - - 0x02E81F 16:A80F: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02E820 16:A810: 15        .byte $15   ; <な>
- D - I - - 0x02E821 16:A811: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02E822 16:A812: 19        .byte $19   ; <の>
- D - I - - 0x02E823 16:A813: 5F        .byte $5F   ; <マ>

- D - I - - 0x02E824 16:A814: 20        .byte $20   ; <み>
- D - I - - 0x02E825 16:A815: 02        .byte $02   ; <い>
- D - I - - 0x02E826 16:A816: 09        .byte $09   ; <け>
- D - I - - 0x02E827 16:A817: 65        .byte $65   ; <ユ>
- D - I - - 0x02E828 16:A818: 0D        .byte $0D   ; <す>
- D - I - - 0x02E829 16:A819: 70        .byte $70   ; <ャ>
- D - I - - 0x02E82A 16:A81A: 11        .byte $11   ; <ち>
- D - I - - 0x02E82B 16:A81B: 71        .byte $71   ; <ュ>
- D - I - - 0x02E82C 16:A81C: 15        .byte $15   ; <な>
- D - I - - 0x02E82D 16:A81D: 74        .byte $74   ; <ィ>
- D - I - - 0x02E82E 16:A81E: 19        .byte $19   ; <の>
- D - I - - 0x02E82F 16:A81F: 75        .byte $75   ; <ェ>

- D - I - - 0x02E830 16:A820: 20        .byte $20   ; <み>
- D - I - - 0x02E831 16:A821: 03        .byte $03   ; <う>
- D - I - - 0x02E832 16:A822: 09        .byte $09   ; <け>
- D - I - - 0x02E833 16:A823: 67        .byte $67   ; <ラ>
- D - I - - 0x02E834 16:A824: 0D        .byte $0D   ; <す>
- D - I - - 0x02E835 16:A825: 72        .byte $72   ; <ョ>
- D - I - - 0x02E836 16:A826: 11        .byte $11   ; <ち>
- D - I - - 0x02E837 16:A827: 73        .byte $73   ; <ヮ>
- D - I - - 0x02E838 16:A828: 15        .byte $15   ; <な>
- D - I - - 0x02E839 16:A829: 76        .byte $76   ; <ォ>
- D - I - - 0x02E83A 16:A82A: 19        .byte $19   ; <の>
- D - I - - 0x02E83B 16:A82B: 77        .byte $77   ; <:>

- D - I - - 0x02E83C 16:A82C: 20        .byte $20   ; <み>
- D - I - - 0x02E83D 16:A82D: 04        .byte $04   ; <え>
- D - I - - 0x02E83E 16:A82E: 09        .byte $09   ; <け>
- D - I - - 0x02E83F 16:A82F: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02E840 16:A830: 0D        .byte $0D   ; <す>
- D - I - - 0x02E841 16:A831: 78        .byte $78   ; <?>
- D - I - - 0x02E842 16:A832: 11        .byte $11   ; <ち>
- D - I - - 0x02E843 16:A833: 79        .byte $79   ; <!>
- D - I - - 0x02E844 16:A834: 15        .byte $15   ; <な>
- D - I - - 0x02E845 16:A835: 7C        .byte $7C   ; <~>
- D - I - - 0x02E846 16:A836: 19        .byte $19   ; <の>
- D - I - - 0x02E847 16:A837: 7D        .byte $7D   ; <ー>

- D - I - - 0x02E848 16:A838: 20        .byte $20   ; <み>
- D - I - - 0x02E849 16:A839: 05        .byte $05   ; <お>
- D - I - - 0x02E84A 16:A83A: 09        .byte $09   ; <け>
- D - I - - 0x02E84B 16:A83B: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02E84C 16:A83C: 0D        .byte $0D   ; <す>
- D - I - - 0x02E84D 16:A83D: 7A        .byte $7A   ; <、>
- D - I - - 0x02E84E 16:A83E: 11        .byte $11   ; <ち>
- D - I - - 0x02E84F 16:A83F: 7B        .byte $7B   ; <。>
- D - I - - 0x02E850 16:A840: 15        .byte $15   ; <な>
- D - I - - 0x02E851 16:A841: 7E        .byte $7E   ; <.>
- D - I - - 0x02E852 16:A842: 19        .byte $19   ; <の>
- D - I - - 0x02E853 16:A843: 7F        .byte $7F   ; <,>

- D - I - - 0x02E854 16:A844: 01        .byte $01   ; <あ>



off_A845_6C:
- D - I - - 0x02E855 16:A845: 10        .byte $10   ; <た>
- D - I - - 0x02E856 16:A846: 02        .byte $02   ; <い>
- D - I - - 0x02E857 16:A847: 08        .byte $08   ; <く>
- D - I - - 0x02E858 16:A848: 42        .byte $42   ; <イ>
- D - I - - 0x02E859 16:A849: 0C        .byte $0C   ; <し>
- D - I - - 0x02E85A 16:A84A: 43        .byte $43   ; <ウ>
- D - I - - 0x02E85B 16:A84B: 10        .byte $10   ; <た>
- D - I - - 0x02E85C 16:A84C: 41        .byte $41   ; <ア>

- D - I - - 0x02E85D 16:A84D: 10        .byte $10   ; <た>
- D - I - - 0x02E85E 16:A84E: 03        .byte $03   ; <う>
- D - I - - 0x02E85F 16:A84F: 40        .byte $40   ; <「>
- D - I - - 0x02E860 16:A850: 44        .byte $44   ; <エ>
- D - I - - 0x02E861 16:A851: 44        .byte $44   ; <エ>
- D - I - - 0x02E862 16:A852: 45        .byte $45   ; <オ>
- D - I - - 0x02E863 16:A853: 11        .byte $11   ; <ち>
- D - I - - 0x02E864 16:A854: 50        .byte $50   ; <タ>

- D - I - - 0x02E865 16:A855: 10        .byte $10   ; <た>
- D - I - - 0x02E866 16:A856: 04        .byte $04   ; <え>
- D - I - - 0x02E867 16:A857: 0D        .byte $0D   ; <す>
- D - I - - 0x02E868 16:A858: 47        .byte $47   ; <キ>
- D - I - - 0x02E869 16:A859: 10        .byte $10   ; <た>
- D - I - - 0x02E86A 16:A85A: 46        .byte $46   ; <カ>
- D - I - - 0x02E86B 16:A85B: 11        .byte $11   ; <ち>
- D - I - - 0x02E86C 16:A85C: 52        .byte $52   ; <ツ>

- D - I - - 0x02E86D 16:A85D: 08        .byte $08   ; <く>
- D - I - - 0x02E86E 16:A85E: 05        .byte $05   ; <お>
- D - I - - 0x02E86F 16:A85F: 0D        .byte $0D   ; <す>
- D - I - - 0x02E870 16:A860: 51        .byte $51   ; <チ>
- D - I - - 0x02E871 16:A861: 11        .byte $11   ; <ち>
- D - I - - 0x02E872 16:A862: 54        .byte $54   ; <ト>

- D - I - - 0x02E873 16:A863: 08        .byte $08   ; <く>
- D - I - - 0x02E874 16:A864: 06        .byte $06   ; <か>
- D - I - - 0x02E875 16:A865: 0D        .byte $0D   ; <す>
- D - I - - 0x02E876 16:A866: 53        .byte $53   ; <テ>
- D - I - - 0x02E877 16:A867: 11        .byte $11   ; <ち>
- D - I - - 0x02E878 16:A868: 56        .byte $56   ; <ニ>

- D - I - - 0x02E879 16:A869: 01        .byte $01   ; <あ>



off_A86A_6D:
- D - I - - 0x02E87A 16:A86A: 08        .byte $08   ; <く>
- D - I - - 0x02E87B 16:A86B: 01        .byte $01   ; <あ>
- D - I - - 0x02E87C 16:A86C: 09        .byte $09   ; <け>
- D - I - - 0x02E87D 16:A86D: 4A        .byte $4A   ; <コ>
- D - I - - 0x02E87E 16:A86E: 0D        .byte $0D   ; <す>
- D - I - - 0x02E87F 16:A86F: 4B        .byte $4B   ; <サ>

- D - I - - 0x02E880 16:A870: 10        .byte $10   ; <た>
- D - I - - 0x02E881 16:A871: 02        .byte $02   ; <い>
- D - I - - 0x02E882 16:A872: 09        .byte $09   ; <け>
- D - I - - 0x02E883 16:A873: 60        .byte $60   ; <ミ>
- D - I - - 0x02E884 16:A874: 0D        .byte $0D   ; <す>
- D - I - - 0x02E885 16:A875: 61        .byte $61   ; <ム>
- D - I - - 0x02E886 16:A876: 11        .byte $11   ; <ち>
- D - I - - 0x02E887 16:A877: 64        .byte $64   ; <ヤ>

- D - I - - 0x02E888 16:A878: 20        .byte $20   ; <み>
- D - I - - 0x02E889 16:A879: 03        .byte $03   ; <う>
- D - I - - 0x02E88A 16:A87A: 09        .byte $09   ; <け>
- D - I - - 0x02E88B 16:A87B: 62        .byte $62   ; <メ>
- D - I - - 0x02E88C 16:A87C: 0D        .byte $0D   ; <す>
- D - I - - 0x02E88D 16:A87D: 63        .byte $63   ; <モ>
- D - I - - 0x02E88E 16:A87E: 11        .byte $11   ; <ち>
- D - I - - 0x02E88F 16:A87F: 66        .byte $66   ; <ヨ>
- D - I - - 0x02E890 16:A880: 15        .byte $15   ; <な>
- D - I - - 0x02E891 16:A881: 4D        .byte $4D   ; <ス>
- D - I - - 0x02E892 16:A882: 19        .byte $19   ; <の>
- D - I - - 0x02E893 16:A883: 58        .byte $58   ; <ネ>

- D - I - - 0x02E894 16:A884: 20        .byte $20   ; <み>
- D - I - - 0x02E895 16:A885: 04        .byte $04   ; <え>
- D - I - - 0x02E896 16:A886: 09        .byte $09   ; <け>
- D - I - - 0x02E897 16:A887: 68        .byte $68   ; <リ>
- D - I - - 0x02E898 16:A888: 0D        .byte $0D   ; <す>
- D - I - - 0x02E899 16:A889: 69        .byte $69   ; <ル>
- D - I - - 0x02E89A 16:A88A: 11        .byte $11   ; <ち>
- D - I - - 0x02E89B 16:A88B: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02E89C 16:A88C: 15        .byte $15   ; <な>
- D - I - - 0x02E89D 16:A88D: 4C        .byte $4C   ; <シ>
- D - I - - 0x02E89E 16:A88E: 19        .byte $19   ; <の>
- D - I - - 0x02E89F 16:A88F: 59        .byte $59   ; <ノ>

- D - I - - 0x02E8A0 16:A890: 20        .byte $20   ; <み>
- D - I - - 0x02E8A1 16:A891: 05        .byte $05   ; <お>
- D - I - - 0x02E8A2 16:A892: 09        .byte $09   ; <け>
- D - I - - 0x02E8A3 16:A893: 6A        .byte $6A   ; <レ>
- D - I - - 0x02E8A4 16:A894: 0D        .byte $0D   ; <す>
- D - I - - 0x02E8A5 16:A895: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02E8A6 16:A896: 11        .byte $11   ; <ち>
- D - I - - 0x02E8A7 16:A897: 6E        .byte $6E   ; <ン>
- D - I - - 0x02E8A8 16:A898: 15        .byte $15   ; <な>
- D - I - - 0x02E8A9 16:A899: 4E        .byte $4E   ; <セ>
- D - I - - 0x02E8AA 16:A89A: 19        .byte $19   ; <の>
- D - I - - 0x02E8AB 16:A89B: 5C        .byte $5C   ; <フ>

- D - I - - 0x02E8AC 16:A89C: 01        .byte $01   ; <あ>



off_A89D_6E:
- D - I - - 0x02E8AD 16:A89D: 08        .byte $08   ; <く>
- D - I - - 0x02E8AE 16:A89E: 01        .byte $01   ; <あ>
- D - I - - 0x02E8AF 16:A89F: 10        .byte $10   ; <た>
- D - I - - 0x02E8B0 16:A8A0: 55        .byte $55   ; <ナ>
- D - I - - 0x02E8B1 16:A8A1: 14        .byte $14   ; <と>
- D - I - - 0x02E8B2 16:A8A2: 48        .byte $48   ; <ク>

- D - I - - 0x02E8B3 16:A8A3: 08        .byte $08   ; <く>
- D - I - - 0x02E8B4 16:A8A4: 02        .byte $02   ; <い>
- D - I - - 0x02E8B5 16:A8A5: 10        .byte $10   ; <た>
- D - I - - 0x02E8B6 16:A8A6: 57        .byte $57   ; <ヌ>
- D - I - - 0x02E8B7 16:A8A7: 14        .byte $14   ; <と>
- D - I - - 0x02E8B8 16:A8A8: 49        .byte $49   ; <ケ>

- D - I - - 0x02E8B9 16:A8A9: 00        .byte $00
- D - I - - 0x02E8BA 16:A8AA: 03        .byte $03   ; <う>
- D - I - - 0x02E8BB 16:A8AB: 14        .byte $14   ; <と>
- D - I - - 0x02E8BC 16:A8AC: 40        .byte $40   ; <「>

- D - I - - 0x02E8BD 16:A8AD: 08        .byte $08   ; <く>
- D - I - - 0x02E8BE 16:A8AE: 06        .byte $06   ; <か>
- D - I - - 0x02E8BF 16:A8AF: 11        .byte $11   ; <ち>
- D - I - - 0x02E8C0 16:A8B0: 53        .byte $53   ; <テ>
- D - I - - 0x02E8C1 16:A8B1: 15        .byte $15   ; <な>
- D - I - - 0x02E8C2 16:A8B2: 56        .byte $56   ; <ニ>

- D - I - - 0x02E8C3 16:A8B3: 01        .byte $01   ; <あ>



off_A8B4_6F:
- D - I - - 0x02E8C4 16:A8B4: 00        .byte $00
- D - I - - 0x02E8C5 16:A8B5: 03        .byte $03   ; <う>
- D - I - - 0x02E8C6 16:A8B6: 11        .byte $11   ; <ち>
- D - I - - 0x02E8C7 16:A8B7: 58        .byte $58   ; <ネ>

- D - I - - 0x02E8C8 16:A8B8: 00        .byte $00
- D - I - - 0x02E8C9 16:A8B9: 04        .byte $04   ; <え>
- D - I - - 0x02E8CA 16:A8BA: 11        .byte $11   ; <ち>
- D - I - - 0x02E8CB 16:A8BB: 59        .byte $59   ; <ノ>

- D - I - - 0x02E8CC 16:A8BC: 00        .byte $00
- D - I - - 0x02E8CD 16:A8BD: 05        .byte $05   ; <お>
- D - I - - 0x02E8CE 16:A8BE: 11        .byte $11   ; <ち>
- D - I - - 0x02E8CF 16:A8BF: 5C        .byte $5C   ; <フ>

- D - I - - 0x02E8D0 16:A8C0: 01        .byte $01   ; <あ>



off_A8C1_70:
- D - I - - 0x02E8D1 16:A8C1: 03        .byte $03   ; <う>
- D - I - - 0x02E8D2 16:A8C2: DA A8     .word off_A8DA
- D - I - - 0x02E8D4 16:A8C4: 05 A9     .word off_A905
- D - I - - 0x02E8D6 16:A8C6: 18 A9     .word off_A918
- D - I - - 0x02E8D8 16:A8C8: DA A8     .word off_A8DA
- D - I - - 0x02E8DA 16:A8CA: 27 A9     .word off_A927
- D - I - - 0x02E8DC 16:A8CC: 36 A9     .word off_A936
- D - I - - 0x02E8DE 16:A8CE: 36 A9     .word off_A936
- D - I - - 0x02E8E0 16:A8D0: 45 A9     .word off_A945
- D - I - - 0x02E8E2 16:A8D2: 18 A9     .word off_A918
- D - I - - 0x02E8E4 16:A8D4: 60 A9     .word off_A960
- D - I - - 0x02E8E6 16:A8D6: 36 A9     .word off_A936
- D - I - - 0x02E8E8 16:A8D8: 18 A9     .word off_A918



off_A8DA:
- D - I - - 0x02E8EA 16:A8DA: 08        .byte $08   ; <く>
- D - I - - 0x02E8EB 16:A8DB: 02        .byte $02   ; <い>
- D - I - - 0x02E8EC 16:A8DC: 0C        .byte $0C   ; <し>
- D - I - - 0x02E8ED 16:A8DD: 90        .byte $90   ; <U>
- D - I - - 0x02E8EE 16:A8DE: 10        .byte $10   ; <た>
- D - I - - 0x02E8EF 16:A8DF: 91        .byte $91   ; <V>

- D - I - - 0x02E8F0 16:A8E0: 08        .byte $08   ; <く>
- D - I - - 0x02E8F1 16:A8E1: 03        .byte $03   ; <う>
- D - I - - 0x02E8F2 16:A8E2: 0C        .byte $0C   ; <し>
- D - I - - 0x02E8F3 16:A8E3: 92        .byte $92   ; <W>
- D - I - - 0x02E8F4 16:A8E4: 10        .byte $10   ; <た>
- D - I - - 0x02E8F5 16:A8E5: 93        .byte $93   ; <Y>

off_A8E6:
- D - I - - 0x02E8F6 16:A8E6: 08        .byte $08   ; <く>
- D - I - - 0x02E8F7 16:A8E7: 02        .byte $02   ; <い>
- D - I - - 0x02E8F8 16:A8E8: 11        .byte $11   ; <ち>
- D - I - - 0x02E8F9 16:A8E9: 88        .byte $88   ; <H>
- D - I - - 0x02E8FA 16:A8EA: 15        .byte $15   ; <な>
- D - I - - 0x02E8FB 16:A8EB: 89        .byte $89   ; <I>

- D - I - - 0x02E8FC 16:A8EC: 08        .byte $08   ; <く>
- D - I - - 0x02E8FD 16:A8ED: 03        .byte $03   ; <う>
- D - I - - 0x02E8FE 16:A8EE: 0D        .byte $0D   ; <す>
- D - I - - 0x02E8FF 16:A8EF: 8A        .byte $8A   ; <N>
- D - I - - 0x02E900 16:A8F0: 11        .byte $11   ; <ち>
- D - I - - 0x02E901 16:A8F1: 8B        .byte $8B   ; <K>

off_A8F2:
- D - I - - 0x02E902 16:A8F2: 00        .byte $00
- D - I - - 0x02E903 16:A8F3: 01        .byte $01   ; <あ>
- D - I - - 0x02E904 16:A8F4: 14        .byte $14   ; <と>
- D - I - - 0x02E905 16:A8F5: 82        .byte $82   ; <B>

- D - I - - 0x02E906 16:A8F6: 08        .byte $08   ; <く>
- D - I - - 0x02E907 16:A8F7: 04        .byte $04   ; <え>
- D - I - - 0x02E908 16:A8F8: 5F        .byte $5F   ; <マ>
- D - I - - 0x02E909 16:A8F9: A0        .byte $A0   ; <が>
- D - I - - 0x02E90A 16:A8FA: 62        .byte $62   ; <メ>
- D - I - - 0x02E90B 16:A8FB: A1        .byte $A1   ; <ぎ>

- D - I - - 0x02E90C 16:A8FC: 00        .byte $00
- D - I - - 0x02E90D 16:A8FD: 05        .byte $05   ; <お>
- D - I - - 0x02E90E 16:A8FE: 45        .byte $45   ; <オ>
- D - I - - 0x02E90F 16:A8FF: A2        .byte $A2   ; <ぐ>

- D - I - - 0x02E910 16:A900: 00        .byte $00
- D - I - - 0x02E911 16:A901: 06        .byte $06   ; <か>
- D - I - - 0x02E912 16:A902: 0D        .byte $0D   ; <す>
- D - I - - 0x02E913 16:A903: A3        .byte $A3   ; <げ>

- D - I - - 0x02E914 16:A904: 01        .byte $01   ; <あ>



off_A905:
- D - I - - 0x02E915 16:A905: 00        .byte $00
- D - I - - 0x02E916 16:A906: 01        .byte $01   ; <あ>
- D - I - - 0x02E917 16:A907: 10        .byte $10   ; <た>
- D - I - - 0x02E918 16:A908: 87        .byte $87   ; <G>

- D - I - - 0x02E919 16:A909: 08        .byte $08   ; <く>
- D - I - - 0x02E91A 16:A90A: 02        .byte $02   ; <い>
- D - I - - 0x02E91B 16:A90B: 0C        .byte $0C   ; <し>
- D - I - - 0x02E91C 16:A90C: 8C        .byte $8C   ; <M>
- D - I - - 0x02E91D 16:A90D: 10        .byte $10   ; <た>
- D - I - - 0x02E91E 16:A90E: 8D        .byte $8D   ; <P>

- D - I - - 0x02E91F 16:A90F: 08        .byte $08   ; <く>
- D - I - - 0x02E920 16:A910: 03        .byte $03   ; <う>
- D - I - - 0x02E921 16:A911: 0C        .byte $0C   ; <し>
- D - I - - 0x02E922 16:A912: 92        .byte $92   ; <W>
- D - I - - 0x02E923 16:A913: 10        .byte $10   ; <た>
- D - I - - 0x02E924 16:A914: 8F        .byte $8F   ; <S>

- D - I - - 0x02E925 16:A915: 02        .byte $02   ; <い>
- D - I - - 0x02E926 16:A916: E6 A8     .word off_A8E6



off_A918:
- D - I - - 0x02E928 16:A918: 08        .byte $08   ; <く>
- D - I - - 0x02E929 16:A919: 02        .byte $02   ; <い>
- D - I - - 0x02E92A 16:A91A: 0C        .byte $0C   ; <し>
- D - I - - 0x02E92B 16:A91B: A5        .byte $A5   ; <ざ>
- D - I - - 0x02E92C 16:A91C: 10        .byte $10   ; <た>
- D - I - - 0x02E92D 16:A91D: 8E        .byte $8E   ; <L>

- D - I - - 0x02E92E 16:A91E: 08        .byte $08   ; <く>
- D - I - - 0x02E92F 16:A91F: 03        .byte $03   ; <う>
- D - I - - 0x02E930 16:A920: 0C        .byte $0C   ; <し>
- D - I - - 0x02E931 16:A921: 92        .byte $92   ; <W>
- D - I - - 0x02E932 16:A922: 10        .byte $10   ; <た>
- D - I - - 0x02E933 16:A923: A4        .byte $A4   ; <ご>

- D - I - - 0x02E934 16:A924: 02        .byte $02   ; <い>
- D - I - - 0x02E935 16:A925: E6 A8     .word off_A8E6



off_A927:
- D - I - - 0x02E937 16:A927: 08        .byte $08   ; <く>
- D - I - - 0x02E938 16:A928: 02        .byte $02   ; <い>
- D - I - - 0x02E939 16:A929: 0C        .byte $0C   ; <し>
- D - I - - 0x02E93A 16:A92A: 94        .byte $94
- D - I - - 0x02E93B 16:A92B: 10        .byte $10   ; <た>
- D - I - - 0x02E93C 16:A92C: 95        .byte $95

- D - I - - 0x02E93D 16:A92D: 08        .byte $08   ; <く>
- D - I - - 0x02E93E 16:A92E: 03        .byte $03   ; <う>
- D - I - - 0x02E93F 16:A92F: 0C        .byte $0C   ; <し>
- D - I - - 0x02E940 16:A930: 96        .byte $96
- D - I - - 0x02E941 16:A931: 10        .byte $10   ; <た>
- D - I - - 0x02E942 16:A932: 97        .byte $97

- D - I - - 0x02E943 16:A933: 02        .byte $02   ; <い>
- D - I - - 0x02E944 16:A934: E6 A8     .word off_A8E6



off_A936:
- D - I - - 0x02E946 16:A936: 08        .byte $08   ; <く>
- D - I - - 0x02E947 16:A937: 02        .byte $02   ; <い>
- D - I - - 0x02E948 16:A938: 0C        .byte $0C   ; <し>
- D - I - - 0x02E949 16:A939: 98        .byte $98
- D - I - - 0x02E94A 16:A93A: 10        .byte $10   ; <た>
- D - I - - 0x02E94B 16:A93B: 8E        .byte $8E   ; <L>

- D - I - - 0x02E94C 16:A93C: 08        .byte $08   ; <く>
- D - I - - 0x02E94D 16:A93D: 03        .byte $03   ; <う>
- D - I - - 0x02E94E 16:A93E: 0C        .byte $0C   ; <し>
- D - I - - 0x02E94F 16:A93F: 9A        .byte $9A
- D - I - - 0x02E950 16:A940: 10        .byte $10   ; <た>
- D - I - - 0x02E951 16:A941: 9B        .byte $9B

- D - I - - 0x02E952 16:A942: 02        .byte $02   ; <い>
- D - I - - 0x02E953 16:A943: E6 A8     .word off_A8E6



off_A945:
- D - I - - 0x02E955 16:A945: 08        .byte $08   ; <く>
- D - I - - 0x02E956 16:A946: 02        .byte $02   ; <い>
- D - I - - 0x02E957 16:A947: 0C        .byte $0C   ; <し>
- D - I - - 0x02E958 16:A948: 90        .byte $90   ; <U>
- D - I - - 0x02E959 16:A949: 10        .byte $10   ; <た>
- D - I - - 0x02E95A 16:A94A: 91        .byte $91   ; <V>

- D - I - - 0x02E95B 16:A94B: 08        .byte $08   ; <く>
- D - I - - 0x02E95C 16:A94C: 03        .byte $03   ; <う>
- D - I - - 0x02E95D 16:A94D: 0C        .byte $0C   ; <し>
- D - I - - 0x02E95E 16:A94E: 92        .byte $92   ; <W>
- D - I - - 0x02E95F 16:A94F: 10        .byte $10   ; <た>
- D - I - - 0x02E960 16:A950: 93        .byte $93   ; <Y>

- D - I - - 0x02E961 16:A951: 08        .byte $08   ; <く>
- D - I - - 0x02E962 16:A952: 02        .byte $02   ; <い>
- D - I - - 0x02E963 16:A953: 11        .byte $11   ; <ち>
- D - I - - 0x02E964 16:A954: 84        .byte $84   ; <D>
- D - I - - 0x02E965 16:A955: 15        .byte $15   ; <な>
- D - I - - 0x02E966 16:A956: 85        .byte $85   ; <E>

- D - I - - 0x02E967 16:A957: 08        .byte $08   ; <く>
- D - I - - 0x02E968 16:A958: 03        .byte $03   ; <う>
- D - I - - 0x02E969 16:A959: 0D        .byte $0D   ; <す>
- D - I - - 0x02E96A 16:A95A: 83        .byte $83   ; <C>
- D - I - - 0x02E96B 16:A95B: 11        .byte $11   ; <ち>
- D - I - - 0x02E96C 16:A95C: 86        .byte $86   ; <F>

- D - I - - 0x02E96D 16:A95D: 02        .byte $02   ; <い>
- D - I - - 0x02E96E 16:A95E: F2 A8     .word off_A8F2



off_A960:
- D - I - - 0x02E970 16:A960: 08        .byte $08   ; <く>
- D - I - - 0x02E971 16:A961: 02        .byte $02   ; <い>
- D - I - - 0x02E972 16:A962: 0C        .byte $0C   ; <し>
- D - I - - 0x02E973 16:A963: 94        .byte $94
- D - I - - 0x02E974 16:A964: 10        .byte $10   ; <た>
- D - I - - 0x02E975 16:A965: 99        .byte $99

- D - I - - 0x02E976 16:A966: 08        .byte $08   ; <く>
- D - I - - 0x02E977 16:A967: 03        .byte $03   ; <う>
- D - I - - 0x02E978 16:A968: 0C        .byte $0C   ; <し>
- D - I - - 0x02E979 16:A969: 96        .byte $96
- D - I - - 0x02E97A 16:A96A: 10        .byte $10   ; <た>
- D - I - - 0x02E97B 16:A96B: 9C        .byte $9C

- D - I - - 0x02E97C 16:A96C: 02        .byte $02   ; <い>
- D - I - - 0x02E97D 16:A96D: E6 A8     .word off_A8E6



off_A96F_71:
- D - I - - 0x02E97F 16:A96F: 10        .byte $10   ; <た>
- D - I - - 0x02E980 16:A970: 01        .byte $01   ; <あ>
- D - I - - 0x02E981 16:A971: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E982 16:A972: 02        .byte $02   ; <い>
- D - I - - 0x02E983 16:A973: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E984 16:A974: 03        .byte $03   ; <う>
- D - I - - 0x02E985 16:A975: 13        .byte $13   ; <て>
- D - I - - 0x02E986 16:A976: 06        .byte $06   ; <か>

- D - I - - 0x02E987 16:A977: 20        .byte $20   ; <み>
- D - I - - 0x02E988 16:A978: 02        .byte $02   ; <い>
- D - I - - 0x02E989 16:A979: 07        .byte $07   ; <き>
- D - I - - 0x02E98A 16:A97A: 08        .byte $08   ; <く>
- D - I - - 0x02E98B 16:A97B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E98C 16:A97C: 09        .byte $09   ; <け>
- D - I - - 0x02E98D 16:A97D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E98E 16:A97E: 0C        .byte $0C   ; <し>
- D - I - - 0x02E98F 16:A97F: 13        .byte $13   ; <て>
- D - I - - 0x02E990 16:A980: 0D        .byte $0D   ; <す>
- D - I - - 0x02E991 16:A981: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E992 16:A982: 18        .byte $18   ; <ね>

- D - I - - 0x02E993 16:A983: 28        .byte $28   ; <り>
- D - I - - 0x02E994 16:A984: 03        .byte $03   ; <う>
- D - I - - 0x02E995 16:A985: 07        .byte $07   ; <き>
- D - I - - 0x02E996 16:A986: 20        .byte $20   ; <み>
- D - I - - 0x02E997 16:A987: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E998 16:A988: 0A        .byte $0A   ; <こ>
- D - I - - 0x02E999 16:A989: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E99A 16:A98A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E99B 16:A98B: 13        .byte $13   ; <て>
- D - I - - 0x02E99C 16:A98C: 0E        .byte $0E   ; <せ>
- D - I - - 0x02E99D 16:A98D: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E99E 16:A98E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E99F 16:A98F: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E9A0 16:A990: 1A        .byte $1A   ; <は>

- D - I - - 0x02E9A1 16:A991: 28        .byte $28   ; <り>
- D - I - - 0x02E9A2 16:A992: 04        .byte $04   ; <え>
- D - I - - 0x02E9A3 16:A993: 07        .byte $07   ; <き>
- D - I - - 0x02E9A4 16:A994: 21        .byte $21   ; <む>
- D - I - - 0x02E9A5 16:A995: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9A6 16:A996: 24        .byte $24   ; <や>
- D - I - - 0x02E9A7 16:A997: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9A8 16:A998: 25        .byte $25   ; <ゆ>
- D - I - - 0x02E9A9 16:A999: 13        .byte $13   ; <て>
- D - I - - 0x02E9AA 16:A99A: 30        .byte $30   ; <ゃ>
- D - I - - 0x02E9AB 16:A99B: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E9AC 16:A99C: 31        .byte $31   ; <ゅ>
- D - I - - 0x02E9AD 16:A99D: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E9AE 16:A99E: 34        .byte $34   ; <1>

- D - I - - 0x02E9AF 16:A99F: 20        .byte $20   ; <み>
- D - I - - 0x02E9B0 16:A9A0: 05        .byte $05   ; <お>
- D - I - - 0x02E9B1 16:A9A1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9B2 16:A9A2: 26        .byte $26   ; <よ>
- D - I - - 0x02E9B3 16:A9A3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9B4 16:A9A4: 27        .byte $27   ; <ら>
- D - I - - 0x02E9B5 16:A9A5: 13        .byte $13   ; <て>
- D - I - - 0x02E9B6 16:A9A6: 32        .byte $32   ; <ょ>
- D - I - - 0x02E9B7 16:A9A7: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E9B8 16:A9A8: 33        .byte $33   ; <0>
- D - I - - 0x02E9B9 16:A9A9: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E9BA 16:A9AA: 36        .byte $36   ; <3>

- D - I - - 0x02E9BB 16:A9AB: 08        .byte $08   ; <く>
- D - I - - 0x02E9BC 16:A9AC: 06        .byte $06   ; <か>
- D - I - - 0x02E9BD 16:A9AD: 13        .byte $13   ; <て>
- D - I - - 0x02E9BE 16:A9AE: 22        .byte $22   ; <め>
- D - I - - 0x02E9BF 16:A9AF: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E9C0 16:A9B0: 23        .byte $23   ; <も>

- D - I - - 0x02E9C1 16:A9B1: 01        .byte $01   ; <あ>



off_A9B2_72:
- D - I - - 0x02E9C2 16:A9B2: 18        .byte $18   ; <ね>
- D - I - - 0x02E9C3 16:A9B3: 02        .byte $02   ; <い>
- D - I - - 0x02E9C4 16:A9B4: 07        .byte $07   ; <き>
- D - I - - 0x02E9C5 16:A9B5: 04        .byte $04   ; <え>
- D - I - - 0x02E9C6 16:A9B6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9C7 16:A9B7: 05        .byte $05   ; <お>
- D - I - - 0x02E9C8 16:A9B8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9C9 16:A9B9: 10        .byte $10   ; <た>
- D - I - - 0x02E9CA 16:A9BA: 13        .byte $13   ; <て>
- D - I - - 0x02E9CB 16:A9BB: 11        .byte $11   ; <ち>

- D - I - - 0x02E9CC 16:A9BC: 20        .byte $20   ; <み>
- D - I - - 0x02E9CD 16:A9BD: 03        .byte $03   ; <う>
- D - I - - 0x02E9CE 16:A9BE: 07        .byte $07   ; <き>
- D - I - - 0x02E9CF 16:A9BF: 07        .byte $07   ; <き>
- D - I - - 0x02E9D0 16:A9C0: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9D1 16:A9C1: 12        .byte $12   ; <つ>
- D - I - - 0x02E9D2 16:A9C2: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9D3 16:A9C3: 13        .byte $13   ; <て>
- D - I - - 0x02E9D4 16:A9C4: 13        .byte $13   ; <て>
- D - I - - 0x02E9D5 16:A9C5: 16        .byte $16   ; <に>
- D - I - - 0x02E9D6 16:A9C6: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E9D7 16:A9C7: 17        .byte $17   ; <ぬ>

- D - I - - 0x02E9D8 16:A9C8: 20        .byte $20   ; <み>
- D - I - - 0x02E9D9 16:A9C9: 04        .byte $04   ; <え>
- D - I - - 0x02E9DA 16:A9CA: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9DB 16:A9CB: 19        .byte $19   ; <の>
- D - I - - 0x02E9DC 16:A9CC: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9DD 16:A9CD: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02E9DE 16:A9CE: 13        .byte $13   ; <て>
- D - I - - 0x02E9DF 16:A9CF: 1D        .byte $1D   ; <へ>
- D - I - - 0x02E9E0 16:A9D0: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E9E1 16:A9D1: 48        .byte $48   ; <ク>
- D - I - - 0x02E9E2 16:A9D2: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E9E3 16:A9D3: 49        .byte $49   ; <ケ>

- D - I - - 0x02E9E4 16:A9D4: 20        .byte $20   ; <み>
- D - I - - 0x02E9E5 16:A9D5: 05        .byte $05   ; <お>
- D - I - - 0x02E9E6 16:A9D6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9E7 16:A9D7: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E9E8 16:A9D8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9E9 16:A9D9: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02E9EA 16:A9DA: 13        .byte $13   ; <て>
- D - I - - 0x02E9EB 16:A9DB: 1F        .byte $1F   ; <ま>
- D - I - - 0x02E9EC 16:A9DC: 17        .byte $17   ; <ぬ>
- D - I - - 0x02E9ED 16:A9DD: 4A        .byte $4A   ; <コ>
- D - I - - 0x02E9EE 16:A9DE: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02E9EF 16:A9DF: 4B        .byte $4B   ; <サ>

- D - I - - 0x02E9F0 16:A9E0: 01        .byte $01   ; <あ>



off_A9E1_73:
- D - I - - 0x02E9F1 16:A9E1: 10        .byte $10   ; <た>
- D - I - - 0x02E9F2 16:A9E2: 02        .byte $02   ; <い>
- D - I - - 0x02E9F3 16:A9E3: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9F4 16:A9E4: 35        .byte $35   ; <2>
- D - I - - 0x02E9F5 16:A9E5: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9F6 16:A9E6: 60        .byte $60   ; <ミ>
- D - I - - 0x02E9F7 16:A9E7: 13        .byte $13   ; <て>
- D - I - - 0x02E9F8 16:A9E8: 61        .byte $61   ; <ム>

- D - I - - 0x02E9F9 16:A9E9: 18        .byte $18   ; <ね>
- D - I - - 0x02E9FA 16:A9EA: 03        .byte $03   ; <う>
- D - I - - 0x02E9FB 16:A9EB: 0B        .byte $0B   ; <さ>
- D - I - - 0x02E9FC 16:A9EC: 37        .byte $37   ; <4>
- D - I - - 0x02E9FD 16:A9ED: 0F        .byte $0F   ; <そ>
- D - I - - 0x02E9FE 16:A9EE: 62        .byte $62   ; <メ>
- D - I - - 0x02E9FF 16:A9EF: 13        .byte $13   ; <て>
- D - I - - 0x02EA00 16:A9F0: 63        .byte $63   ; <モ>
- D - I - - 0x02EA01 16:A9F1: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA02 16:A9F2: 66        .byte $66   ; <ヨ>

- D - I - - 0x02EA03 16:A9F3: 18        .byte $18   ; <ね>
- D - I - - 0x02EA04 16:A9F4: 04        .byte $04   ; <え>
- D - I - - 0x02EA05 16:A9F5: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EA06 16:A9F6: 3D        .byte $3D   ; <+>
- D - I - - 0x02EA07 16:A9F7: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA08 16:A9F8: 68        .byte $68   ; <リ>
- D - I - - 0x02EA09 16:A9F9: 13        .byte $13   ; <て>
- D - I - - 0x02EA0A 16:A9FA: 69        .byte $69   ; <ル>
- D - I - - 0x02EA0B 16:A9FB: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA0C 16:A9FC: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02EA0D 16:A9FD: 10        .byte $10   ; <た>
- D - I - - 0x02EA0E 16:A9FE: 05        .byte $05   ; <お>
- D - I - - 0x02EA0F 16:A9FF: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA10 16:AA00: 6A        .byte $6A   ; <レ>
- D - I - - 0x02EA11 16:AA01: 13        .byte $13   ; <て>
- D - I - - 0x02EA12 16:AA02: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02EA13 16:AA03: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA14 16:AA04: 6E        .byte $6E   ; <ン>

- D - I - - 0x02EA15 16:AA05: 01        .byte $01   ; <あ>



off_AA06_74:
- D - I - - 0x02EA16 16:AA06: 10        .byte $10   ; <た>
- D - I - - 0x02EA17 16:AA07: 18        .byte $18   ; <ね>
- D - I - - 0x02EA18 16:AA08: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EA19 16:AA09: 14        .byte $14   ; <と>
- D - I - - 0x02EA1A 16:AA0A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA1B 16:AA0B: 15        .byte $15   ; <な>
- D - I - - 0x02EA1C 16:AA0C: 13        .byte $13   ; <て>
- D - I - - 0x02EA1D 16:AA0D: 40        .byte $40   ; <「>

- D - I - - 0x02EA1E 16:AA0E: 18        .byte $18   ; <ね>
- D - I - - 0x02EA1F 16:AA0F: 19        .byte $19   ; <の>
- D - I - - 0x02EA20 16:AA10: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EA21 16:AA11: 42        .byte $42   ; <イ>
- D - I - - 0x02EA22 16:AA12: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA23 16:AA13: 43        .byte $43   ; <ウ>
- D - I - - 0x02EA24 16:AA14: 13        .byte $13   ; <て>
- D - I - - 0x02EA25 16:AA15: 46        .byte $46   ; <カ>
- D - I - - 0x02EA26 16:AA16: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA27 16:AA17: 47        .byte $47   ; <キ>

- D - I - - 0x02EA28 16:AA18: 18        .byte $18   ; <ね>
- D - I - - 0x02EA29 16:AA19: 1A        .byte $1A   ; <は>
- D - I - - 0x02EA2A 16:AA1A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EA2B 16:AA1B: 4C        .byte $4C   ; <シ>
- D - I - - 0x02EA2C 16:AA1C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA2D 16:AA1D: 4D        .byte $4D   ; <ス>
- D - I - - 0x02EA2E 16:AA1E: 13        .byte $13   ; <て>
- D - I - - 0x02EA2F 16:AA1F: 58        .byte $58   ; <ネ>
- D - I - - 0x02EA30 16:AA20: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA31 16:AA21: 59        .byte $59   ; <ノ>

- D - I - - 0x02EA32 16:AA22: 01        .byte $01   ; <あ>



off_AA23_75:
- D - I - - 0x02EA33 16:AA23: 10        .byte $10   ; <た>
- D - I - - 0x02EA34 16:AA24: 03        .byte $03   ; <う>
- D - I - - 0x02EA35 16:AA25: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA36 16:AA26: 28        .byte $28   ; <り>
- D - I - - 0x02EA37 16:AA27: 13        .byte $13   ; <て>
- D - I - - 0x02EA38 16:AA28: 29        .byte $29   ; <る>
- D - I - - 0x02EA39 16:AA29: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA3A 16:AA2A: 2C        .byte $2C   ; <わ>

- D - I - - 0x02EA3B 16:AA2B: 10        .byte $10   ; <た>
- D - I - - 0x02EA3C 16:AA2C: 04        .byte $04   ; <え>
- D - I - - 0x02EA3D 16:AA2D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA3E 16:AA2E: 2A        .byte $2A   ; <れ>
- D - I - - 0x02EA3F 16:AA2F: 13        .byte $13   ; <て>
- D - I - - 0x02EA40 16:AA30: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02EA41 16:AA31: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA42 16:AA32: 2E        .byte $2E   ; <ん>

- D - I - - 0x02EA43 16:AA33: 01        .byte $01   ; <あ>



off_AA34_76:
- D - I - - 0x02EA44 16:AA34: 10        .byte $10   ; <た>
- D - I - - 0x02EA45 16:AA35: 03        .byte $03   ; <う>
- D - I - - 0x02EA46 16:AA36: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA47 16:AA37: 2D        .byte $2D   ; <を>
- D - I - - 0x02EA48 16:AA38: 13        .byte $13   ; <て>
- D - I - - 0x02EA49 16:AA39: 38        .byte $38   ; <5>
- D - I - - 0x02EA4A 16:AA3A: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA4B 16:AA3B: 39        .byte $39   ; <6>

- D - I - - 0x02EA4C 16:AA3C: 10        .byte $10   ; <た>
- D - I - - 0x02EA4D 16:AA3D: 04        .byte $04   ; <え>
- D - I - - 0x02EA4E 16:AA3E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA4F 16:AA3F: 2F        .byte $2F   ; <っ>
- D - I - - 0x02EA50 16:AA40: 13        .byte $13   ; <て>
- D - I - - 0x02EA51 16:AA41: 3A        .byte $3A   ; <7>
- D - I - - 0x02EA52 16:AA42: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EA53 16:AA43: 3B        .byte $3B   ; <8>

- D - I - - 0x02EA54 16:AA44: 01        .byte $01   ; <あ>



off_AA45_77:
- D - I - - 0x02EA55 16:AA45: 08        .byte $08   ; <く>
- D - I - - 0x02EA56 16:AA46: 03        .byte $03   ; <う>
- D - I - - 0x02EA57 16:AA47: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA58 16:AA48: 4E        .byte $4E   ; <セ>
- D - I - - 0x02EA59 16:AA49: 13        .byte $13   ; <て>
- D - I - - 0x02EA5A 16:AA4A: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02EA5B 16:AA4B: 08        .byte $08   ; <く>
- D - I - - 0x02EA5C 16:AA4C: 04        .byte $04   ; <え>
- D - I - - 0x02EA5D 16:AA4D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA5E 16:AA4E: 64        .byte $64   ; <ヤ>
- D - I - - 0x02EA5F 16:AA4F: 13        .byte $13   ; <て>
- D - I - - 0x02EA60 16:AA50: 65        .byte $65   ; <ユ>

- D - I - - 0x02EA61 16:AA51: 01        .byte $01   ; <あ>



off_AA52_78:
- D - I - - 0x02EA62 16:AA52: 08        .byte $08   ; <く>
- D - I - - 0x02EA63 16:AA53: 03        .byte $03   ; <う>
- D - I - - 0x02EA64 16:AA54: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA65 16:AA55: 41        .byte $41   ; <ア>
- D - I - - 0x02EA66 16:AA56: 13        .byte $13   ; <て>
- D - I - - 0x02EA67 16:AA57: 44        .byte $44   ; <エ>

- D - I - - 0x02EA68 16:AA58: 08        .byte $08   ; <く>
- D - I - - 0x02EA69 16:AA59: 04        .byte $04   ; <え>
- D - I - - 0x02EA6A 16:AA5A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA6B 16:AA5B: 45        .byte $45   ; <オ>
- D - I - - 0x02EA6C 16:AA5C: 13        .byte $13   ; <て>
- D - I - - 0x02EA6D 16:AA5D: 50        .byte $50   ; <タ>

- D - I - - 0x02EA6E 16:AA5E: 01        .byte $01   ; <あ>



off_AA5F_79:
- D - I - - 0x02EA6F 16:AA5F: 08        .byte $08   ; <く>
- D - I - - 0x02EA70 16:AA60: 03        .byte $03   ; <う>
- D - I - - 0x02EA71 16:AA61: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA72 16:AA62: 51        .byte $51   ; <チ>
- D - I - - 0x02EA73 16:AA63: 13        .byte $13   ; <て>
- D - I - - 0x02EA74 16:AA64: 54        .byte $54   ; <ト>

- D - I - - 0x02EA75 16:AA65: 08        .byte $08   ; <く>
- D - I - - 0x02EA76 16:AA66: 04        .byte $04   ; <え>
- D - I - - 0x02EA77 16:AA67: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA78 16:AA68: 52        .byte $52   ; <ツ>
- D - I - - 0x02EA79 16:AA69: 13        .byte $13   ; <て>
- D - I - - 0x02EA7A 16:AA6A: 53        .byte $53   ; <テ>

- D - I - - 0x02EA7B 16:AA6B: 01        .byte $01   ; <あ>



off_AA6C_7A:
- D - I - - 0x02EA7C 16:AA6C: 08        .byte $08   ; <く>
- D - I - - 0x02EA7D 16:AA6D: 03        .byte $03   ; <う>
- D - I - - 0x02EA7E 16:AA6E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA7F 16:AA6F: 3C        .byte $3C   ; <9>
- D - I - - 0x02EA80 16:AA70: 13        .byte $13   ; <て>
- D - I - - 0x02EA81 16:AA71: 55        .byte $55   ; <ナ>

- D - I - - 0x02EA82 16:AA72: 08        .byte $08   ; <く>
- D - I - - 0x02EA83 16:AA73: 04        .byte $04   ; <え>
- D - I - - 0x02EA84 16:AA74: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA85 16:AA75: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02EA86 16:AA76: 13        .byte $13   ; <て>
- D - I - - 0x02EA87 16:AA77: 3F        .byte $3F   ; <•>

- D - I - - 0x02EA88 16:AA78: 01        .byte $01   ; <あ>



off_AA79_7B:
- D - I - - 0x02EA89 16:AA79: 00        .byte $00
- D - I - - 0x02EA8A 16:AA7A: 19        .byte $19   ; <の>
- D - I - - 0x02EA8B 16:AA7B: 47        .byte $47   ; <キ>
- D - I - - 0x02EA8C 16:AA7C: 67        .byte $67   ; <ラ>

- D - I - - 0x02EA8D 16:AA7D: 01        .byte $01   ; <あ>



off_AA7E_7C:
- D - I - - 0x02EA8E 16:AA7E: 00        .byte $00
- D - I - - 0x02EA8F 16:AA7F: 19        .byte $19   ; <の>
- D - I - - 0x02EA90 16:AA80: 47        .byte $47   ; <キ>
- D - I - - 0x02EA91 16:AA81: 6D        .byte $6D   ; <ヲ>

- D - I - - 0x02EA92 16:AA82: 01        .byte $01   ; <あ>



off_AA83_7D:
- D - I - - 0x02EA93 16:AA83: 00        .byte $00
- D - I - - 0x02EA94 16:AA84: 19        .byte $19   ; <の>
- D - I - - 0x02EA95 16:AA85: 47        .byte $47   ; <キ>
- D - I - - 0x02EA96 16:AA86: 6F        .byte $6F   ; <ッ>

- D - I - - 0x02EA97 16:AA87: 01        .byte $01   ; <あ>



off_AA88_7E:
- D - I - - 0x02EA98 16:AA88: 08        .byte $08   ; <く>
- D - I - - 0x02EA99 16:AA89: 02        .byte $02   ; <い>
- D - I - - 0x02EA9A 16:AA8A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EA9B 16:AA8B: 02        .byte $02   ; <い>
- D - I - - 0x02EA9C 16:AA8C: 13        .byte $13   ; <て>
- D - I - - 0x02EA9D 16:AA8D: 03        .byte $03   ; <う>

- D - I - - 0x02EA9E 16:AA8E: 18        .byte $18   ; <ね>
- D - I - - 0x02EA9F 16:AA8F: 03        .byte $03   ; <う>
- D - I - - 0x02EAA0 16:AA90: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EAA1 16:AA91: 08        .byte $08   ; <く>
- D - I - - 0x02EAA2 16:AA92: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAA3 16:AA93: 09        .byte $09   ; <け>
- D - I - - 0x02EAA4 16:AA94: 13        .byte $13   ; <て>
- D - I - - 0x02EAA5 16:AA95: 0C        .byte $0C   ; <し>
- D - I - - 0x02EAA6 16:AA96: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EAA7 16:AA97: 0D        .byte $0D   ; <す>

- D - I - - 0x02EAA8 16:AA98: 18        .byte $18   ; <ね>
- D - I - - 0x02EAA9 16:AA99: 04        .byte $04   ; <え>
- D - I - - 0x02EAAA 16:AA9A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EAAB 16:AA9B: 0A        .byte $0A   ; <こ>
- D - I - - 0x02EAAC 16:AA9C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAAD 16:AA9D: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EAAE 16:AA9E: 13        .byte $13   ; <て>
- D - I - - 0x02EAAF 16:AA9F: 0E        .byte $0E   ; <せ>
- D - I - - 0x02EAB0 16:AAA0: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EAB1 16:AAA1: 0F        .byte $0F   ; <そ>

- D - I - - 0x02EAB2 16:AAA2: 08        .byte $08   ; <く>
- D - I - - 0x02EAB3 16:AAA3: 05        .byte $05   ; <お>
- D - I - - 0x02EAB4 16:AAA4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAB5 16:AAA5: 20        .byte $20   ; <み>
- D - I - - 0x02EAB6 16:AAA6: 13        .byte $13   ; <て>
- D - I - - 0x02EAB7 16:AAA7: 21        .byte $21   ; <む>

- D - I - - 0x02EAB8 16:AAA8: 01        .byte $01   ; <あ>



off_AAA9_7F:
- D - I - - 0x02EAB9 16:AAA9: 08        .byte $08   ; <く>
- D - I - - 0x02EABA 16:AAAA: 02        .byte $02   ; <い>
- D - I - - 0x02EABB 16:AAAB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EABC 16:AAAC: 24        .byte $24   ; <や>
- D - I - - 0x02EABD 16:AAAD: 13        .byte $13   ; <て>
- D - I - - 0x02EABE 16:AAAE: 25        .byte $25   ; <ゆ>

- D - I - - 0x02EABF 16:AAAF: 18        .byte $18   ; <ね>
- D - I - - 0x02EAC0 16:AAB0: 03        .byte $03   ; <う>
- D - I - - 0x02EAC1 16:AAB1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EAC2 16:AAB2: 22        .byte $22   ; <め>
- D - I - - 0x02EAC3 16:AAB3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAC4 16:AAB4: 23        .byte $23   ; <も>
- D - I - - 0x02EAC5 16:AAB5: 13        .byte $13   ; <て>
- D - I - - 0x02EAC6 16:AAB6: 26        .byte $26   ; <よ>
- D - I - - 0x02EAC7 16:AAB7: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EAC8 16:AAB8: 27        .byte $27   ; <ら>

- D - I - - 0x02EAC9 16:AAB9: 10        .byte $10   ; <た>
- D - I - - 0x02EACA 16:AABA: 04        .byte $04   ; <え>
- D - I - - 0x02EACB 16:AABB: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EACC 16:AABC: 28        .byte $28   ; <り>
- D - I - - 0x02EACD 16:AABD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EACE 16:AABE: 29        .byte $29   ; <る>
- D - I - - 0x02EACF 16:AABF: 13        .byte $13   ; <て>
- D - I - - 0x02EAD0 16:AAC0: 2C        .byte $2C   ; <わ>

- D - I - - 0x02EAD1 16:AAC1: 01        .byte $01   ; <あ>



off_AAC2_80:
- D - I - - 0x02EAD2 16:AAC2: 08        .byte $08   ; <く>
- D - I - - 0x02EAD3 16:AAC3: 18        .byte $18   ; <ね>
- D - I - - 0x02EAD4 16:AAC4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAD5 16:AAC5: 04        .byte $04   ; <え>
- D - I - - 0x02EAD6 16:AAC6: 13        .byte $13   ; <て>
- D - I - - 0x02EAD7 16:AAC7: 05        .byte $05   ; <お>

- D - I - - 0x02EAD8 16:AAC8: 10        .byte $10   ; <た>
- D - I - - 0x02EAD9 16:AAC9: 19        .byte $19   ; <の>
- D - I - - 0x02EADA 16:AACA: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EADB 16:AACB: 06        .byte $06   ; <か>
- D - I - - 0x02EADC 16:AACC: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EADD 16:AACD: 07        .byte $07   ; <き>
- D - I - - 0x02EADE 16:AACE: 13        .byte $13   ; <て>
- D - I - - 0x02EADF 16:AACF: 12        .byte $12   ; <つ>

- D - I - - 0x02EAE0 16:AAD0: 10        .byte $10   ; <た>
- D - I - - 0x02EAE1 16:AAD1: 1A        .byte $1A   ; <は>
- D - I - - 0x02EAE2 16:AAD2: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EAE3 16:AAD3: 28        .byte $28   ; <り>
- D - I - - 0x02EAE4 16:AAD4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAE5 16:AAD5: 18        .byte $18   ; <ね>
- D - I - - 0x02EAE6 16:AAD6: 13        .byte $13   ; <て>
- D - I - - 0x02EAE7 16:AAD7: 19        .byte $19   ; <の>

- D - I - - 0x02EAE8 16:AAD8: 01        .byte $01   ; <あ>



off_AAD9_81:
- D - I - - 0x02EAE9 16:AAD9: 08        .byte $08   ; <く>
- D - I - - 0x02EAEA 16:AADA: 03        .byte $03   ; <う>
- D - I - - 0x02EAEB 16:AADB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAEC 16:AADC: 10        .byte $10   ; <た>
- D - I - - 0x02EAED 16:AADD: 13        .byte $13   ; <て>
- D - I - - 0x02EAEE 16:AADE: 11        .byte $11   ; <ち>

- D - I - - 0x02EAEF 16:AADF: 08        .byte $08   ; <く>
- D - I - - 0x02EAF0 16:AAE0: 04        .byte $04   ; <え>
- D - I - - 0x02EAF1 16:AAE1: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAF2 16:AAE2: 2D        .byte $2D   ; <を>
- D - I - - 0x02EAF3 16:AAE3: 13        .byte $13   ; <て>
- D - I - - 0x02EAF4 16:AAE4: 13        .byte $13   ; <て>

- D - I - - 0x02EAF5 16:AAE5: 01        .byte $01   ; <あ>



off_AAE6_82:
- D - I - - 0x02EAF6 16:AAE6: 08        .byte $08   ; <く>
- D - I - - 0x02EAF7 16:AAE7: 03        .byte $03   ; <う>
- D - I - - 0x02EAF8 16:AAE8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAF9 16:AAE9: 1A        .byte $1A   ; <は>
- D - I - - 0x02EAFA 16:AAEA: 13        .byte $13   ; <て>
- D - I - - 0x02EAFB 16:AAEB: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02EAFC 16:AAEC: 08        .byte $08   ; <く>
- D - I - - 0x02EAFD 16:AAED: 04        .byte $04   ; <え>
- D - I - - 0x02EAFE 16:AAEE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EAFF 16:AAEF: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EB00 16:AAF0: 13        .byte $13   ; <て>
- D - I - - 0x02EB01 16:AAF1: 31        .byte $31   ; <ゅ>

- D - I - - 0x02EB02 16:AAF2: 01        .byte $01   ; <あ>



off_AAF3_83:
- D - I - - 0x02EB03 16:AAF3: 08        .byte $08   ; <く>
- D - I - - 0x02EB04 16:AAF4: 03        .byte $03   ; <う>
- D - I - - 0x02EB05 16:AAF5: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB06 16:AAF6: 32        .byte $32   ; <ょ>
- D - I - - 0x02EB07 16:AAF7: 13        .byte $13   ; <て>
- D - I - - 0x02EB08 16:AAF8: 33        .byte $33   ; <0>

- D - I - - 0x02EB09 16:AAF9: 08        .byte $08   ; <く>
- D - I - - 0x02EB0A 16:AAFA: 04        .byte $04   ; <え>
- D - I - - 0x02EB0B 16:AAFB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB0C 16:AAFC: 38        .byte $38   ; <5>
- D - I - - 0x02EB0D 16:AAFD: 13        .byte $13   ; <て>
- D - I - - 0x02EB0E 16:AAFE: 39        .byte $39   ; <6>

- D - I - - 0x02EB0F 16:AAFF: 01        .byte $01   ; <あ>



off_AB00_84:
- D - I - - 0x02EB10 16:AB00: 08        .byte $08   ; <く>
- D - I - - 0x02EB11 16:AB01: 03        .byte $03   ; <う>
- D - I - - 0x02EB12 16:AB02: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB13 16:AB03: 2A        .byte $2A   ; <れ>
- D - I - - 0x02EB14 16:AB04: 13        .byte $13   ; <て>
- D - I - - 0x02EB15 16:AB05: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02EB16 16:AB06: 08        .byte $08   ; <く>
- D - I - - 0x02EB17 16:AB07: 04        .byte $04   ; <え>
- D - I - - 0x02EB18 16:AB08: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB19 16:AB09: 2E        .byte $2E   ; <ん>
- D - I - - 0x02EB1A 16:AB0A: 13        .byte $13   ; <て>
- D - I - - 0x02EB1B 16:AB0B: 2F        .byte $2F   ; <っ>

- D - I - - 0x02EB1C 16:AB0C: 01        .byte $01   ; <あ>



off_AB0D_85:
- D - I - - 0x02EB1D 16:AB0D: 00        .byte $00
- D - I - - 0x02EB1E 16:AB0E: 19        .byte $19   ; <の>
- D - I - - 0x02EB1F 16:AB0F: 47        .byte $47   ; <キ>
- D - I - - 0x02EB20 16:AB10: 3A        .byte $3A   ; <7>

- D - I - - 0x02EB21 16:AB11: 01        .byte $01   ; <あ>



off_AB12_86:
- D - I - - 0x02EB22 16:AB12: 00        .byte $00
- D - I - - 0x02EB23 16:AB13: 19        .byte $19   ; <の>
- D - I - - 0x02EB24 16:AB14: 47        .byte $47   ; <キ>
- D - I - - 0x02EB25 16:AB15: 3B        .byte $3B   ; <8>

- D - I - - 0x02EB26 16:AB16: 01        .byte $01   ; <あ>



off_AB17_87:
- D - I - - 0x02EB27 16:AB17: 00        .byte $00
- D - I - - 0x02EB28 16:AB18: 19        .byte $19   ; <の>
- D - I - - 0x02EB29 16:AB19: 47        .byte $47   ; <キ>
- D - I - - 0x02EB2A 16:AB1A: 14        .byte $14   ; <と>

- D - I - - 0x02EB2B 16:AB1B: 01        .byte $01   ; <あ>



off_AB1C_88:
- D - I - - 0x02EB2C 16:AB1C: 08        .byte $08   ; <く>
- D - I - - 0x02EB2D 16:AB1D: 01        .byte $01   ; <あ>
- D - I - - 0x02EB2E 16:AB1E: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB2F 16:AB1F: 02        .byte $02   ; <い>
- D - I - - 0x02EB30 16:AB20: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB31 16:AB21: 56        .byte $56   ; <ニ>

- D - I - - 0x02EB32 16:AB22: 18        .byte $18   ; <ね>
- D - I - - 0x02EB33 16:AB23: 02        .byte $02   ; <い>
- D - I - - 0x02EB34 16:AB24: 07        .byte $07   ; <き>
- D - I - - 0x02EB35 16:AB25: 08        .byte $08   ; <く>
- D - I - - 0x02EB36 16:AB26: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB37 16:AB27: 09        .byte $09   ; <け>
- D - I - - 0x02EB38 16:AB28: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB39 16:AB29: 5C        .byte $5C   ; <フ>
- D - I - - 0x02EB3A 16:AB2A: 13        .byte $13   ; <て>
- D - I - - 0x02EB3B 16:AB2B: 57        .byte $57   ; <ヌ>

- D - I - - 0x02EB3C 16:AB2C: 20        .byte $20   ; <み>
- D - I - - 0x02EB3D 16:AB2D: 03        .byte $03   ; <う>
- D - I - - 0x02EB3E 16:AB2E: 07        .byte $07   ; <き>
- D - I - - 0x02EB3F 16:AB2F: 20        .byte $20   ; <み>
- D - I - - 0x02EB40 16:AB30: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB41 16:AB31: 0A        .byte $0A   ; <こ>
- D - I - - 0x02EB42 16:AB32: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB43 16:AB33: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB44 16:AB34: 13        .byte $13   ; <て>
- D - I - - 0x02EB45 16:AB35: 0E        .byte $0E   ; <せ>
- D - I - - 0x02EB46 16:AB36: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EB47 16:AB37: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02EB48 16:AB38: 28        .byte $28   ; <り>
- D - I - - 0x02EB49 16:AB39: 04        .byte $04   ; <え>
- D - I - - 0x02EB4A 16:AB3A: 07        .byte $07   ; <き>
- D - I - - 0x02EB4B 16:AB3B: 21        .byte $21   ; <む>
- D - I - - 0x02EB4C 16:AB3C: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB4D 16:AB3D: 24        .byte $24   ; <や>
- D - I - - 0x02EB4E 16:AB3E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB4F 16:AB3F: 25        .byte $25   ; <ゆ>
- D - I - - 0x02EB50 16:AB40: 13        .byte $13   ; <て>
- D - I - - 0x02EB51 16:AB41: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EB52 16:AB42: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EB53 16:AB43: 31        .byte $31   ; <ゅ>
- D - I - - 0x02EB54 16:AB44: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02EB55 16:AB45: 5A        .byte $5A   ; <ハ>

- D - I - - 0x02EB56 16:AB46: 20        .byte $20   ; <み>
- D - I - - 0x02EB57 16:AB47: 05        .byte $05   ; <お>
- D - I - - 0x02EB58 16:AB48: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB59 16:AB49: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02EB5A 16:AB4A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB5B 16:AB4B: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02EB5C 16:AB4C: 13        .byte $13   ; <て>
- D - I - - 0x02EB5D 16:AB4D: 5F        .byte $5F   ; <マ>
- D - I - - 0x02EB5E 16:AB4E: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EB5F 16:AB4F: 70        .byte $70   ; <ャ>
- D - I - - 0x02EB60 16:AB50: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02EB61 16:AB51: 71        .byte $71   ; <ュ>

- D - I - - 0x02EB62 16:AB52: 01        .byte $01   ; <あ>



off_AB53_89:
- D - I - - 0x02EB63 16:AB53: 08        .byte $08   ; <く>
- D - I - - 0x02EB64 16:AB54: 06        .byte $06   ; <か>
- D - I - - 0x02EB65 16:AB55: 11        .byte $11   ; <ち>
- D - I - - 0x02EB66 16:AB56: 56        .byte $56   ; <ニ>
- D - I - - 0x02EB67 16:AB57: 13        .byte $13   ; <て>
- D - I - - 0x02EB68 16:AB58: 2E        .byte $2E   ; <ん>
; продолжение


off_AB59:
- D - I - - 0x02EB69 16:AB59: 10        .byte $10   ; <た>
- D - I - - 0x02EB6A 16:AB5A: 05        .byte $05   ; <お>
- D - I - - 0x02EB6B 16:AB5B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB6C 16:AB5C: 50        .byte $50   ; <タ>
- D - I - - 0x02EB6D 16:AB5D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB6E 16:AB5E: 51        .byte $51   ; <チ>
- D - I - - 0x02EB6F 16:AB5F: 13        .byte $13   ; <て>
- D - I - - 0x02EB70 16:AB60: 54        .byte $54   ; <ト>

- D - I - - 0x02EB71 16:AB61: 08        .byte $08   ; <く>
- D - I - - 0x02EB72 16:AB62: 06        .byte $06   ; <か>
- D - I - - 0x02EB73 16:AB63: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EB74 16:AB64: 52        .byte $52   ; <ツ>
- D - I - - 0x02EB75 16:AB65: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EB76 16:AB66: 53        .byte $53   ; <テ>
; продолжение


off_AB67:
- D - I - - 0x02EB77 16:AB67: 03        .byte $03   ; <う>
- D - I - - 0x02EB78 16:AB68: 80 AB     .word off_AB80
- D - I - - 0x02EB7A 16:AB6A: F9 AB     .word off_ABF9
- D - I - - 0x02EB7C 16:AB6C: 14 AC     .word off_AC14
- D - I - - 0x02EB7E 16:AB6E: 43 AC     .word off_AC43
- D - I - - 0x02EB80 16:AB70: 56 AC     .word off_AC56
- D - I - - 0x02EB82 16:AB72: 81 AC     .word off_AC81
- D - I - - 0x02EB84 16:AB74: 9A AC     .word off_AC9A
- D - I - - 0x02EB86 16:AB76: AF AC     .word off_ACAF
- D - I - - 0x02EB88 16:AB78: DA AC     .word off_ACDA
- D - I - - 0x02EB8A 16:AB7A: F3 AC     .word off_ACF3
- D - I - - 0x02EB8C 16:AB7C: 0C AD     .word off_AD0C
- D - I - - 0x02EB8E 16:AB7E: 25 AD     .word off_AD25



off_AB80:
- D - I - - 0x02EB90 16:AB80: 10        .byte $10   ; <た>
- D - I - - 0x02EB91 16:AB81: 02        .byte $02   ; <い>
- D - I - - 0x02EB92 16:AB82: 11        .byte $11   ; <ち>
- D - I - - 0x02EB93 16:AB83: 24        .byte $24   ; <や>
- D - I - - 0x02EB94 16:AB84: 15        .byte $15   ; <な>
- D - I - - 0x02EB95 16:AB85: 25        .byte $25   ; <ゆ>
- D - I - - 0x02EB96 16:AB86: 18        .byte $18   ; <ね>
- D - I - - 0x02EB97 16:AB87: 30        .byte $30   ; <ゃ>

- D - I - - 0x02EB98 16:AB88: 20        .byte $20   ; <み>
- D - I - - 0x02EB99 16:AB89: 03        .byte $03   ; <う>
- D - I - - 0x02EB9A 16:AB8A: 11        .byte $11   ; <ち>
- D - I - - 0x02EB9B 16:AB8B: 26        .byte $26   ; <よ>
- D - I - - 0x02EB9C 16:AB8C: 14        .byte $14   ; <と>
- D - I - - 0x02EB9D 16:AB8D: 31        .byte $31   ; <ゅ>
- D - I - - 0x02EB9E 16:AB8E: 15        .byte $15   ; <な>
- D - I - - 0x02EB9F 16:AB8F: 27        .byte $27   ; <ら>
- D - I - - 0x02EBA0 16:AB90: 18        .byte $18   ; <ね>
- D - I - - 0x02EBA1 16:AB91: 32        .byte $32   ; <ょ>
- D - I - - 0x02EBA2 16:AB92: 80        .byte $80
- D - I - - 0x02EBA3 16:AB93: 13        .byte $13   ; <て>
; продолжение


off_AB94:
- D - I - - 0x02EBA4 16:AB94: 00        .byte $00
- D - I - - 0x02EBA5 16:AB95: 06        .byte $06   ; <か>
- D - I - - 0x02EBA6 16:AB96: 18        .byte $18   ; <ね>
- D - I - - 0x02EBA7 16:AB97: 11        .byte $11   ; <ち>

- D - I - - 0x02EBA8 16:AB98: 18        .byte $18   ; <ね>
- D - I - - 0x02EBA9 16:AB99: 04        .byte $04   ; <え>
- D - I - - 0x02EBAA 16:AB9A: 11        .byte $11   ; <ち>
- D - I - - 0x02EBAB 16:AB9B: 2C        .byte $2C   ; <わ>
- D - I - - 0x02EBAC 16:AB9C: 15        .byte $15   ; <な>
- D - I - - 0x02EBAD 16:AB9D: 2D        .byte $2D   ; <を>
- D - I - - 0x02EBAE 16:AB9E: 18        .byte $18   ; <ね>
- D - I - - 0x02EBAF 16:AB9F: 38        .byte $38   ; <5>
- D - I - - 0x02EBB0 16:ABA0: 80        .byte $80
- D - I - - 0x02EBB1 16:ABA1: 19        .byte $19   ; <の>

- D - I - - 0x02EBB2 16:ABA2: 08        .byte $08   ; <く>
- D - I - - 0x02EBB3 16:ABA3: 05        .byte $05   ; <お>
- D - I - - 0x02EBB4 16:ABA4: 18        .byte $18   ; <ね>
- D - I - - 0x02EBB5 16:ABA5: 3A        .byte $3A   ; <7>
- D - I - - 0x02EBB6 16:ABA6: 80        .byte $80
- D - I - - 0x02EBB7 16:ABA7: 1B        .byte $1B   ; <ひ>
; продолжение


off_ABA8:
- D - I - - 0x02EBB8 16:ABA8: 08        .byte $08   ; <く>
- D - I - - 0x02EBB9 16:ABA9: 05        .byte $05   ; <お>
- D - I - - 0x02EBBA 16:ABAA: 15        .byte $15   ; <な>
- D - I - - 0x02EBBB 16:ABAB: 2F        .byte $2F   ; <っ>
- D - I - - 0x02EBBC 16:ABAC: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EBBD 16:ABAD: 2E        .byte $2E   ; <ん>

- D - I - - 0x02EBBE 16:ABAE: 08        .byte $08   ; <く>
- D - I - - 0x02EBBF 16:ABAF: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02EBC0 16:ABB0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EBC1 16:ABB1: 02        .byte $02   ; <い>
- D - I - - 0x02EBC2 16:ABB2: 13        .byte $13   ; <て>
- D - I - - 0x02EBC3 16:ABB3: 03        .byte $03   ; <う>

- D - I - - 0x02EBC4 16:ABB4: 08        .byte $08   ; <く>
- D - I - - 0x02EBC5 16:ABB5: 00        .byte $00
- D - I - - 0x02EBC6 16:ABB6: 0C        .byte $0C   ; <し>
- D - I - - 0x02EBC7 16:ABB7: 08        .byte $08   ; <く>
- D - I - - 0x02EBC8 16:ABB8: 13        .byte $13   ; <て>
- D - I - - 0x02EBC9 16:ABB9: 09        .byte $09   ; <け>

- D - I - - 0x02EBCA 16:ABBA: 08        .byte $08   ; <く>
- D - I - - 0x02EBCB 16:ABBB: 01        .byte $01   ; <あ>
- D - I - - 0x02EBCC 16:ABBC: 0C        .byte $0C   ; <し>
- D - I - - 0x02EBCD 16:ABBD: 0A        .byte $0A   ; <こ>
- D - I - - 0x02EBCE 16:ABBE: 13        .byte $13   ; <て>
- D - I - - 0x02EBCF 16:ABBF: 0B        .byte $0B   ; <さ>

- D - I - - 0x02EBD0 16:ABC0: 00        .byte $00
- D - I - - 0x02EBD1 16:ABC1: 02        .byte $02   ; <い>
- D - I - - 0x02EBD2 16:ABC2: 0C        .byte $0C   ; <し>
- D - I - - 0x02EBD3 16:ABC3: 20        .byte $20   ; <み>

- D - I - - 0x02EBD4 16:ABC4: 00        .byte $00
- D - I - - 0x02EBD5 16:ABC5: 03        .byte $03   ; <う>
- D - I - - 0x02EBD6 16:ABC6: 0D        .byte $0D   ; <す>
- D - I - - 0x02EBD7 16:ABC7: 22        .byte $22   ; <め>

- D - I - - 0x02EBD8 16:ABC8: 00        .byte $00
- D - I - - 0x02EBD9 16:ABC9: 04        .byte $04   ; <え>
- D - I - - 0x02EBDA 16:ABCA: 0D        .byte $0D   ; <す>
- D - I - - 0x02EBDB 16:ABCB: 28        .byte $28   ; <り>

- D - I - - 0x02EBDC 16:ABCC: 00        .byte $00
- D - I - - 0x02EBDD 16:ABCD: 06        .byte $06   ; <か>
- D - I - - 0x02EBDE 16:ABCE: 15        .byte $15   ; <な>
- D - I - - 0x02EBDF 16:ABCF: 2A        .byte $2A   ; <れ>

- D - I - - 0x02EBE0 16:ABD0: 20        .byte $20   ; <み>
- D - I - - 0x02EBE1 16:ABD1: 07        .byte $07   ; <き>
- D - I - - 0x02EBE2 16:ABD2: 0A        .byte $0A   ; <こ>
- D - I - - 0x02EBE3 16:ABD3: 04        .byte $04   ; <え>
- D - I - - 0x02EBE4 16:ABD4: 0E        .byte $0E   ; <せ>
- D - I - - 0x02EBE5 16:ABD5: 05        .byte $05   ; <お>
- D - I - - 0x02EBE6 16:ABD6: 12        .byte $12   ; <つ>
- D - I - - 0x02EBE7 16:ABD7: 10        .byte $10   ; <た>
- D - I - - 0x02EBE8 16:ABD8: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EBE9 16:ABD9: 23        .byte $23   ; <も>
- D - I - - 0x02EBEA 16:ABDA: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02EBEB 16:ABDB: 21        .byte $21   ; <む>

- D - I - - 0x02EBEC 16:ABDC: 10        .byte $10   ; <た>
- D - I - - 0x02EBED 16:ABDD: 08        .byte $08   ; <く>
- D - I - - 0x02EBEE 16:ABDE: 0A        .byte $0A   ; <こ>
- D - I - - 0x02EBEF 16:ABDF: 06        .byte $06   ; <か>
- D - I - - 0x02EBF0 16:ABE0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EBF1 16:ABE1: 07        .byte $07   ; <き>
- D - I - - 0x02EBF2 16:ABE2: 13        .byte $13   ; <て>
- D - I - - 0x02EBF3 16:ABE3: 12        .byte $12   ; <つ>

- D - I - - 0x02EBF4 16:ABE4: 20        .byte $20   ; <み>
- D - I - - 0x02EBF5 16:ABE5: 09        .byte $09   ; <け>
- D - I - - 0x02EBF6 16:ABE6: 03        .byte $03   ; <う>
- D - I - - 0x02EBF7 16:ABE7: 29        .byte $29   ; <る>
- D - I - - 0x02EBF8 16:ABE8: 05        .byte $05   ; <お>
- D - I - - 0x02EBF9 16:ABE9: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02EBFA 16:ABEA: 09        .byte $09   ; <け>
- D - I - - 0x02EBFB 16:ABEB: 0C        .byte $0C   ; <し>
- D - I - - 0x02EBFC 16:ABEC: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EBFD 16:ABED: 0D        .byte $0D   ; <す>
- D - I - - 0x02EBFE 16:ABEE: 13        .byte $13   ; <て>
- D - I - - 0x02EBFF 16:ABEF: 18        .byte $18   ; <ね>

- D - I - - 0x02EC00 16:ABF0: 10        .byte $10   ; <た>
- D - I - - 0x02EC01 16:ABF1: 16        .byte $16   ; <に>
- D - I - - 0x02EC02 16:ABF2: 05        .byte $05   ; <お>
- D - I - - 0x02EC03 16:ABF3: 0E        .byte $0E   ; <せ>
- D - I - - 0x02EC04 16:ABF4: 09        .byte $09   ; <け>
- D - I - - 0x02EC05 16:ABF5: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EC06 16:ABF6: 0C        .byte $0C   ; <し>
- D - I - - 0x02EC07 16:ABF7: 1A        .byte $1A   ; <は>

- D - I - - 0x02EC08 16:ABF8: 01        .byte $01   ; <あ>



off_ABF9:
- D - I - - 0x02EC09 16:ABF9: 20        .byte $20   ; <み>
- D - I - - 0x02EC0A 16:ABFA: 02        .byte $02   ; <い>
- D - I - - 0x02EC0B 16:ABFB: 11        .byte $11   ; <ち>
- D - I - - 0x02EC0C 16:ABFC: 24        .byte $24   ; <や>
- D - I - - 0x02EC0D 16:ABFD: 14        .byte $14   ; <と>
- D - I - - 0x02EC0E 16:ABFE: 39        .byte $39   ; <6>
- D - I - - 0x02EC0F 16:ABFF: 15        .byte $15   ; <な>
- D - I - - 0x02EC10 16:AC00: 33        .byte $33   ; <0>
- D - I - - 0x02EC11 16:AC01: 18        .byte $18   ; <ね>
- D - I - - 0x02EC12 16:AC02: 14        .byte $14   ; <と>
- D - I - - 0x02EC13 16:AC03: 80        .byte $80
- D - I - - 0x02EC14 16:AC04: 15        .byte $15   ; <な>

- D - I - - 0x02EC15 16:AC05: 20        .byte $20   ; <み>
- D - I - - 0x02EC16 16:AC06: 03        .byte $03   ; <う>
- D - I - - 0x02EC17 16:AC07: 11        .byte $11   ; <ち>
- D - I - - 0x02EC18 16:AC08: 26        .byte $26   ; <よ>
- D - I - - 0x02EC19 16:AC09: 14        .byte $14   ; <と>
- D - I - - 0x02EC1A 16:AC0A: 3B        .byte $3B   ; <8>
- D - I - - 0x02EC1B 16:AC0B: 15        .byte $15   ; <な>
- D - I - - 0x02EC1C 16:AC0C: 27        .byte $27   ; <ら>
- D - I - - 0x02EC1D 16:AC0D: 18        .byte $18   ; <ね>
- D - I - - 0x02EC1E 16:AC0E: 16        .byte $16   ; <に>
- D - I - - 0x02EC1F 16:AC0F: 80        .byte $80
- D - I - - 0x02EC20 16:AC10: 17        .byte $17   ; <ぬ>

- D - I - - 0x02EC21 16:AC11: 02        .byte $02   ; <い>
- D - I - - 0x02EC22 16:AC12: 94 AB     .word off_AB94



off_AC14:
- D - I - - 0x02EC24 16:AC14: 08        .byte $08   ; <く>
- D - I - - 0x02EC25 16:AC15: 04        .byte $04   ; <え>
- D - I - - 0x02EC26 16:AC16: 15        .byte $15   ; <な>
- D - I - - 0x02EC27 16:AC17: 2D        .byte $2D   ; <を>
- D - I - - 0x02EC28 16:AC18: 18        .byte $18   ; <ね>
- D - I - - 0x02EC29 16:AC19: 38        .byte $38   ; <5>

- D - I - - 0x02EC2A 16:AC1A: 00        .byte $00
- D - I - - 0x02EC2B 16:AC1B: 06        .byte $06   ; <か>
- D - I - - 0x02EC2C 16:AC1C: 18        .byte $18   ; <ね>
- D - I - - 0x02EC2D 16:AC1D: 11        .byte $11   ; <ち>

- D - I - - 0x02EC2E 16:AC1E: 08        .byte $08   ; <く>
- D - I - - 0x02EC2F 16:AC1F: 05        .byte $05   ; <お>
- D - I - - 0x02EC30 16:AC20: 18        .byte $18   ; <ね>
- D - I - - 0x02EC31 16:AC21: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02EC32 16:AC22: 80        .byte $80
- D - I - - 0x02EC33 16:AC23: 1D        .byte $1D   ; <へ>
; продолжение


off_AC24:
- D - I - - 0x02EC34 16:AC24: 08        .byte $08   ; <く>
- D - I - - 0x02EC35 16:AC25: 04        .byte $04   ; <え>
- D - I - - 0x02EC36 16:AC26: 11        .byte $11   ; <ち>
- D - I - - 0x02EC37 16:AC27: 2C        .byte $2C   ; <わ>
- D - I - - 0x02EC38 16:AC28: 80        .byte $80
- D - I - - 0x02EC39 16:AC29: 19        .byte $19   ; <の>
; продолжение


off_AC2A:
- D - I - - 0x02EC3A 16:AC2A: 00        .byte $00
- D - I - - 0x02EC3B 16:AC2B: 03        .byte $03   ; <う>
- D - I - - 0x02EC3C 16:AC2C: 18        .byte $18   ; <ね>
- D - I - - 0x02EC3D 16:AC2D: 32        .byte $32   ; <ょ>
; продолжение


off_AC2E:
- D - I - - 0x02EC3E 16:AC2E: 18        .byte $18   ; <ね>
- D - I - - 0x02EC3F 16:AC2F: 03        .byte $03   ; <う>
- D - I - - 0x02EC40 16:AC30: 11        .byte $11   ; <ち>
- D - I - - 0x02EC41 16:AC31: 26        .byte $26   ; <よ>
- D - I - - 0x02EC42 16:AC32: 14        .byte $14   ; <と>
- D - I - - 0x02EC43 16:AC33: 31        .byte $31   ; <ゅ>
- D - I - - 0x02EC44 16:AC34: 15        .byte $15   ; <な>
- D - I - - 0x02EC45 16:AC35: 27        .byte $27   ; <ら>
- D - I - - 0x02EC46 16:AC36: 80        .byte $80
- D - I - - 0x02EC47 16:AC37: 13        .byte $13   ; <て>

- D - I - - 0x02EC48 16:AC38: 10        .byte $10   ; <た>
- D - I - - 0x02EC49 16:AC39: 02        .byte $02   ; <い>
- D - I - - 0x02EC4A 16:AC3A: 11        .byte $11   ; <ち>
- D - I - - 0x02EC4B 16:AC3B: 24        .byte $24   ; <や>
- D - I - - 0x02EC4C 16:AC3C: 15        .byte $15   ; <な>
- D - I - - 0x02EC4D 16:AC3D: 25        .byte $25   ; <ゆ>
- D - I - - 0x02EC4E 16:AC3E: 18        .byte $18   ; <ね>
- D - I - - 0x02EC4F 16:AC3F: 30        .byte $30   ; <ゃ>

- D - I - - 0x02EC50 16:AC40: 02        .byte $02   ; <い>
- D - I - - 0x02EC51 16:AC41: A8 AB     .word off_ABA8



off_AC43:
- D - I - - 0x02EC53 16:AC43: 08        .byte $08   ; <く>
- D - I - - 0x02EC54 16:AC44: 04        .byte $04   ; <え>
- D - I - - 0x02EC55 16:AC45: 15        .byte $15   ; <な>
- D - I - - 0x02EC56 16:AC46: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02EC57 16:AC47: 18        .byte $18   ; <ね>
- D - I - - 0x02EC58 16:AC48: 1F        .byte $1F   ; <ま>

- D - I - - 0x02EC59 16:AC49: 08        .byte $08   ; <く>
- D - I - - 0x02EC5A 16:AC4A: 05        .byte $05   ; <お>
- D - I - - 0x02EC5B 16:AC4B: 18        .byte $18   ; <ね>
- D - I - - 0x02EC5C 16:AC4C: 35        .byte $35   ; <2>
- D - I - - 0x02EC5D 16:AC4D: 80        .byte $80
- D - I - - 0x02EC5E 16:AC4E: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02EC5F 16:AC4F: 00        .byte $00
- D - I - - 0x02EC60 16:AC50: 06        .byte $06   ; <か>
- D - I - - 0x02EC61 16:AC51: 18        .byte $18   ; <ね>
- D - I - - 0x02EC62 16:AC52: 11        .byte $11   ; <ち>

- D - I - - 0x02EC63 16:AC53: 02        .byte $02   ; <い>
- D - I - - 0x02EC64 16:AC54: 24 AC     .word off_AC24



off_AC56:
- D - I - - 0x02EC66 16:AC56: 08        .byte $08   ; <く>
- D - I - - 0x02EC67 16:AC57: 03        .byte $03   ; <う>
- D - I - - 0x02EC68 16:AC58: 18        .byte $18   ; <ね>
- D - I - - 0x02EC69 16:AC59: 36        .byte $36   ; <3>
- D - I - - 0x02EC6A 16:AC5A: 80        .byte $80
- D - I - - 0x02EC6B 16:AC5B: 37        .byte $37   ; <4>

- D - I - - 0x02EC6C 16:AC5C: 08        .byte $08   ; <く>
- D - I - - 0x02EC6D 16:AC5D: 04        .byte $04   ; <え>
- D - I - - 0x02EC6E 16:AC5E: 18        .byte $18   ; <ね>
- D - I - - 0x02EC6F 16:AC5F: 3C        .byte $3C   ; <9>
- D - I - - 0x02EC70 16:AC60: 80        .byte $80
- D - I - - 0x02EC71 16:AC61: 3D        .byte $3D   ; <+>

- D - I - - 0x02EC72 16:AC62: 08        .byte $08   ; <く>
- D - I - - 0x02EC73 16:AC63: 05        .byte $05   ; <お>
- D - I - - 0x02EC74 16:AC64: 18        .byte $18   ; <ね>
- D - I - - 0x02EC75 16:AC65: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02EC76 16:AC66: 80        .byte $80
- D - I - - 0x02EC77 16:AC67: 3F        .byte $3F   ; <•>

- D - I - - 0x02EC78 16:AC68: 00        .byte $00
- D - I - - 0x02EC79 16:AC69: 06        .byte $06   ; <か>
- D - I - - 0x02EC7A 16:AC6A: 80        .byte $80
- D - I - - 0x02EC7B 16:AC6B: 40        .byte $40   ; <「>
; продолжение


off_AC6C:
- D - I - - 0x02EC7C 16:AC6C: 08        .byte $08   ; <く>
- D - I - - 0x02EC7D 16:AC6D: 02        .byte $02   ; <い>
- D - I - - 0x02EC7E 16:AC6E: 11        .byte $11   ; <ち>
- D - I - - 0x02EC7F 16:AC6F: 24        .byte $24   ; <や>
- D - I - - 0x02EC80 16:AC70: 15        .byte $15   ; <な>
- D - I - - 0x02EC81 16:AC71: 25        .byte $25   ; <ゆ>

- D - I - - 0x02EC82 16:AC72: 08        .byte $08   ; <く>
- D - I - - 0x02EC83 16:AC73: 03        .byte $03   ; <う>
- D - I - - 0x02EC84 16:AC74: 11        .byte $11   ; <ち>
- D - I - - 0x02EC85 16:AC75: 26        .byte $26   ; <よ>
- D - I - - 0x02EC86 16:AC76: 15        .byte $15   ; <な>
- D - I - - 0x02EC87 16:AC77: 34        .byte $34   ; <1>

- D - I - - 0x02EC88 16:AC78: 08        .byte $08   ; <く>
- D - I - - 0x02EC89 16:AC79: 04        .byte $04   ; <え>
- D - I - - 0x02EC8A 16:AC7A: 11        .byte $11   ; <ち>
- D - I - - 0x02EC8B 16:AC7B: 2C        .byte $2C   ; <わ>
- D - I - - 0x02EC8C 16:AC7C: 15        .byte $15   ; <な>
- D - I - - 0x02EC8D 16:AC7D: 2D        .byte $2D   ; <を>

- D - I - - 0x02EC8E 16:AC7E: 02        .byte $02   ; <い>
- D - I - - 0x02EC8F 16:AC7F: A8 AB     .word off_ABA8



off_AC81:
- D - I - - 0x02EC91 16:AC81: 08        .byte $08   ; <く>
- D - I - - 0x02EC92 16:AC82: 03        .byte $03   ; <う>
- D - I - - 0x02EC93 16:AC83: 18        .byte $18   ; <ね>
- D - I - - 0x02EC94 16:AC84: 42        .byte $42   ; <イ>
- D - I - - 0x02EC95 16:AC85: 80        .byte $80
- D - I - - 0x02EC96 16:AC86: 48        .byte $48   ; <ク>

- D - I - - 0x02EC97 16:AC87: 08        .byte $08   ; <く>
- D - I - - 0x02EC98 16:AC88: 04        .byte $04   ; <え>
- D - I - - 0x02EC99 16:AC89: 18        .byte $18   ; <ね>
- D - I - - 0x02EC9A 16:AC8A: 38        .byte $38   ; <5>
- D - I - - 0x02EC9B 16:AC8B: 80        .byte $80
- D - I - - 0x02EC9C 16:AC8C: 4A        .byte $4A   ; <コ>

- D - I - - 0x02EC9D 16:AC8D: 08        .byte $08   ; <く>
- D - I - - 0x02EC9E 16:AC8E: 05        .byte $05   ; <お>
- D - I - - 0x02EC9F 16:AC8F: 18        .byte $18   ; <ね>
- D - I - - 0x02ECA0 16:AC90: 3A        .byte $3A   ; <7>
- D - I - - 0x02ECA1 16:AC91: 80        .byte $80
- D - I - - 0x02ECA2 16:AC92: 60        .byte $60   ; <ミ>

- D - I - - 0x02ECA3 16:AC93: 00        .byte $00
- D - I - - 0x02ECA4 16:AC94: 06        .byte $06   ; <か>
- D - I - - 0x02ECA5 16:AC95: 18        .byte $18   ; <ね>
- D - I - - 0x02ECA6 16:AC96: 11        .byte $11   ; <ち>

- D - I - - 0x02ECA7 16:AC97: 02        .byte $02   ; <い>
- D - I - - 0x02ECA8 16:AC98: 6C AC     .word off_AC6C



off_AC9A:
- D - I - - 0x02ECAA 16:AC9A: 08        .byte $08   ; <く>
- D - I - - 0x02ECAB 16:AC9B: 03        .byte $03   ; <う>
- D - I - - 0x02ECAC 16:AC9C: 18        .byte $18   ; <ね>
- D - I - - 0x02ECAD 16:AC9D: 62        .byte $62   ; <メ>
- D - I - - 0x02ECAE 16:AC9E: 80        .byte $80
- D - I - - 0x02ECAF 16:AC9F: 63        .byte $63   ; <モ>

- D - I - - 0x02ECB0 16:ACA0: 08        .byte $08   ; <く>
- D - I - - 0x02ECB1 16:ACA1: 04        .byte $04   ; <え>
- D - I - - 0x02ECB2 16:ACA2: 18        .byte $18   ; <ね>
- D - I - - 0x02ECB3 16:ACA3: 68        .byte $68   ; <リ>
- D - I - - 0x02ECB4 16:ACA4: 80        .byte $80
- D - I - - 0x02ECB5 16:ACA5: 69        .byte $69   ; <ル>

- D - I - - 0x02ECB6 16:ACA6: 08        .byte $08   ; <く>
- D - I - - 0x02ECB7 16:ACA7: 05        .byte $05   ; <お>
- D - I - - 0x02ECB8 16:ACA8: 18        .byte $18   ; <ね>
- D - I - - 0x02ECB9 16:ACA9: 6A        .byte $6A   ; <レ>
- D - I - - 0x02ECBA 16:ACAA: 80        .byte $80
- D - I - - 0x02ECBB 16:ACAB: 6B        .byte $6B   ; <ロ>

- D - I - - 0x02ECBC 16:ACAC: 02        .byte $02   ; <い>
- D - I - - 0x02ECBD 16:ACAD: 6C AC     .word off_AC6C



off_ACAF:
- D - I - - 0x02ECBF 16:ACAF: 10        .byte $10   ; <た>
- D - I - - 0x02ECC0 16:ACB0: 02        .byte $02   ; <い>
- D - I - - 0x02ECC1 16:ACB1: 10        .byte $10   ; <た>
- D - I - - 0x02ECC2 16:ACB2: 41        .byte $41   ; <ア>
- D - I - - 0x02ECC3 16:ACB3: 14        .byte $14   ; <と>
- D - I - - 0x02ECC4 16:ACB4: 44        .byte $44   ; <エ>
- D - I - - 0x02ECC5 16:ACB5: 18        .byte $18   ; <ね>
- D - I - - 0x02ECC6 16:ACB6: 30        .byte $30   ; <ゃ>

- D - I - - 0x02ECC7 16:ACB7: 20        .byte $20   ; <み>
- D - I - - 0x02ECC8 16:ACB8: 03        .byte $03   ; <う>
- D - I - - 0x02ECC9 16:ACB9: 11        .byte $11   ; <ち>
- D - I - - 0x02ECCA 16:ACBA: 43        .byte $43   ; <ウ>
- D - I - - 0x02ECCB 16:ACBB: 14        .byte $14   ; <と>
- D - I - - 0x02ECCC 16:ACBC: 46        .byte $46   ; <カ>
- D - I - - 0x02ECCD 16:ACBD: 15        .byte $15   ; <な>
- D - I - - 0x02ECCE 16:ACBE: 27        .byte $27   ; <ら>
- D - I - - 0x02ECCF 16:ACBF: 18        .byte $18   ; <ね>
- D - I - - 0x02ECD0 16:ACC0: 32        .byte $32   ; <ょ>
- D - I - - 0x02ECD1 16:ACC1: 80        .byte $80
- D - I - - 0x02ECD2 16:ACC2: 13        .byte $13   ; <て>

- D - I - - 0x02ECD3 16:ACC3: 18        .byte $18   ; <ね>
- D - I - - 0x02ECD4 16:ACC4: 04        .byte $04   ; <え>
- D - I - - 0x02ECD5 16:ACC5: 11        .byte $11   ; <ち>
- D - I - - 0x02ECD6 16:ACC6: 49        .byte $49   ; <ケ>
- D - I - - 0x02ECD7 16:ACC7: 15        .byte $15   ; <な>
- D - I - - 0x02ECD8 16:ACC8: 4C        .byte $4C   ; <シ>
- D - I - - 0x02ECD9 16:ACC9: 18        .byte $18   ; <ね>
- D - I - - 0x02ECDA 16:ACCA: 4B        .byte $4B   ; <サ>
- D - I - - 0x02ECDB 16:ACCB: 80        .byte $80
- D - I - - 0x02ECDC 16:ACCC: 19        .byte $19   ; <の>

- D - I - - 0x02ECDD 16:ACCD: 08        .byte $08   ; <く>
- D - I - - 0x02ECDE 16:ACCE: 05        .byte $05   ; <お>
- D - I - - 0x02ECDF 16:ACCF: 18        .byte $18   ; <ね>
- D - I - - 0x02ECE0 16:ACD0: 61        .byte $61   ; <ム>
- D - I - - 0x02ECE1 16:ACD1: 80        .byte $80
- D - I - - 0x02ECE2 16:ACD2: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02ECE3 16:ACD3: 00        .byte $00
- D - I - - 0x02ECE4 16:ACD4: 06        .byte $06   ; <か>
- D - I - - 0x02ECE5 16:ACD5: 18        .byte $18   ; <ね>
- D - I - - 0x02ECE6 16:ACD6: 11        .byte $11   ; <ち>

- D - I - - 0x02ECE7 16:ACD7: 02        .byte $02   ; <い>
- D - I - - 0x02ECE8 16:ACD8: A8 AB     .word off_ABA8



off_ACDA:
- D - I - - 0x02ECEA 16:ACDA: 08        .byte $08   ; <く>
- D - I - - 0x02ECEB 16:ACDB: 03        .byte $03   ; <う>
- D - I - - 0x02ECEC 16:ACDC: 18        .byte $18   ; <ね>
- D - I - - 0x02ECED 16:ACDD: 36        .byte $36   ; <3>
- D - I - - 0x02ECEE 16:ACDE: 80        .byte $80
- D - I - - 0x02ECEF 16:ACDF: 37        .byte $37   ; <4>

- D - I - - 0x02ECF0 16:ACE0: 08        .byte $08   ; <く>
- D - I - - 0x02ECF1 16:ACE1: 04        .byte $04   ; <え>
- D - I - - 0x02ECF2 16:ACE2: 18        .byte $18   ; <ね>
- D - I - - 0x02ECF3 16:ACE3: 38        .byte $38   ; <5>
- D - I - - 0x02ECF4 16:ACE4: 80        .byte $80
- D - I - - 0x02ECF5 16:ACE5: 19        .byte $19   ; <の>

- D - I - - 0x02ECF6 16:ACE6: 08        .byte $08   ; <く>
- D - I - - 0x02ECF7 16:ACE7: 05        .byte $05   ; <お>
- D - I - - 0x02ECF8 16:ACE8: 18        .byte $18   ; <ね>
- D - I - - 0x02ECF9 16:ACE9: 4E        .byte $4E   ; <セ>
- D - I - - 0x02ECFA 16:ACEA: 80        .byte $80
- D - I - - 0x02ECFB 16:ACEB: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02ECFC 16:ACEC: 00        .byte $00
- D - I - - 0x02ECFD 16:ACED: 06        .byte $06   ; <か>
- D - I - - 0x02ECFE 16:ACEE: 18        .byte $18   ; <ね>
- D - I - - 0x02ECFF 16:ACEF: 11        .byte $11   ; <ち>

- D - I - - 0x02ED00 16:ACF0: 02        .byte $02   ; <い>
- D - I - - 0x02ED01 16:ACF1: 6C AC     .word off_AC6C



off_ACF3:
- D - I - - 0x02ED03 16:ACF3: 18        .byte $18   ; <ね>
- D - I - - 0x02ED04 16:ACF4: 04        .byte $04   ; <え>
- D - I - - 0x02ED05 16:ACF5: 11        .byte $11   ; <ち>
- D - I - - 0x02ED06 16:ACF6: 2C        .byte $2C   ; <わ>
- D - I - - 0x02ED07 16:ACF7: 15        .byte $15   ; <な>
- D - I - - 0x02ED08 16:ACF8: 2D        .byte $2D   ; <を>
- D - I - - 0x02ED09 16:ACF9: 18        .byte $18   ; <ね>
- D - I - - 0x02ED0A 16:ACFA: 38        .byte $38   ; <5>
- D - I - - 0x02ED0B 16:ACFB: 80        .byte $80
- D - I - - 0x02ED0C 16:ACFC: 64        .byte $64   ; <ヤ>

- D - I - - 0x02ED0D 16:ACFD: 08        .byte $08   ; <く>
- D - I - - 0x02ED0E 16:ACFE: 05        .byte $05   ; <お>
- D - I - - 0x02ED0F 16:ACFF: 18        .byte $18   ; <ね>
- D - I - - 0x02ED10 16:AD00: 3A        .byte $3A   ; <7>
- D - I - - 0x02ED11 16:AD01: 80        .byte $80
- D - I - - 0x02ED12 16:AD02: 66        .byte $66   ; <ヨ>

- D - I - - 0x02ED13 16:AD03: 08        .byte $08   ; <く>
- D - I - - 0x02ED14 16:AD04: 06        .byte $06   ; <か>
- D - I - - 0x02ED15 16:AD05: 18        .byte $18   ; <ね>
- D - I - - 0x02ED16 16:AD06: 6E        .byte $6E   ; <ン>
- D - I - - 0x02ED17 16:AD07: 80        .byte $80
- D - I - - 0x02ED18 16:AD08: 6C        .byte $6C   ; <ワ>

- D - I - - 0x02ED19 16:AD09: 02        .byte $02   ; <い>
- D - I - - 0x02ED1A 16:AD0A: 2A AC     .word off_AC2A



off_AD0C:
- D - I - - 0x02ED1C 16:AD0C: 08        .byte $08   ; <く>
- D - I - - 0x02ED1D 16:AD0D: 03        .byte $03   ; <う>
- D - I - - 0x02ED1E 16:AD0E: 18        .byte $18   ; <ね>
- D - I - - 0x02ED1F 16:AD0F: 42        .byte $42   ; <イ>
- D - I - - 0x02ED20 16:AD10: 80        .byte $80
- D - I - - 0x02ED21 16:AD11: 48        .byte $48   ; <ク>

- D - I - - 0x02ED22 16:AD12: 08        .byte $08   ; <く>
- D - I - - 0x02ED23 16:AD13: 04        .byte $04   ; <え>
- D - I - - 0x02ED24 16:AD14: 18        .byte $18   ; <ね>
- D - I - - 0x02ED25 16:AD15: 38        .byte $38   ; <5>
- D - I - - 0x02ED26 16:AD16: 80        .byte $80
- D - I - - 0x02ED27 16:AD17: 4A        .byte $4A   ; <コ>

- D - I - - 0x02ED28 16:AD18: 08        .byte $08   ; <く>
- D - I - - 0x02ED29 16:AD19: 05        .byte $05   ; <お>
- D - I - - 0x02ED2A 16:AD1A: 18        .byte $18   ; <ね>
- D - I - - 0x02ED2B 16:AD1B: 3A        .byte $3A   ; <7>
- D - I - - 0x02ED2C 16:AD1C: 80        .byte $80
- D - I - - 0x02ED2D 16:AD1D: 45        .byte $45   ; <オ>

- D - I - - 0x02ED2E 16:AD1E: 00        .byte $00
- D - I - - 0x02ED2F 16:AD1F: 06        .byte $06   ; <か>
- D - I - - 0x02ED30 16:AD20: 18        .byte $18   ; <ね>
- D - I - - 0x02ED31 16:AD21: 11        .byte $11   ; <ち>

- D - I - - 0x02ED32 16:AD22: 02        .byte $02   ; <い>
- D - I - - 0x02ED33 16:AD23: 6C AC     .word off_AC6C



off_AD25:
- D - I - - 0x02ED35 16:AD25: 00        .byte $00
- D - I - - 0x02ED36 16:AD26: 03        .byte $03   ; <う>
- D - I - - 0x02ED37 16:AD27: 18        .byte $18   ; <ね>
- D - I - - 0x02ED38 16:AD28: 4D        .byte $4D   ; <ス>

- D - I - - 0x02ED39 16:AD29: 18        .byte $18   ; <ね>
- D - I - - 0x02ED3A 16:AD2A: 04        .byte $04   ; <え>
- D - I - - 0x02ED3B 16:AD2B: 11        .byte $11   ; <ち>
- D - I - - 0x02ED3C 16:AD2C: 2C        .byte $2C   ; <わ>
- D - I - - 0x02ED3D 16:AD2D: 15        .byte $15   ; <な>
- D - I - - 0x02ED3E 16:AD2E: 2D        .byte $2D   ; <を>
- D - I - - 0x02ED3F 16:AD2F: 18        .byte $18   ; <ね>
- D - I - - 0x02ED40 16:AD30: 47        .byte $47   ; <キ>
- D - I - - 0x02ED41 16:AD31: 80        .byte $80
- D - I - - 0x02ED42 16:AD32: 19        .byte $19   ; <の>

- D - I - - 0x02ED43 16:AD33: 08        .byte $08   ; <く>
- D - I - - 0x02ED44 16:AD34: 05        .byte $05   ; <お>
- D - I - - 0x02ED45 16:AD35: 18        .byte $18   ; <ね>
- D - I - - 0x02ED46 16:AD36: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02ED47 16:AD37: 80        .byte $80
- D - I - - 0x02ED48 16:AD38: 1D        .byte $1D   ; <へ>

- D - I - - 0x02ED49 16:AD39: 02        .byte $02   ; <い>
- D - I - - 0x02ED4A 16:AD3A: 2E AC     .word off_AC2E



off_AD3C_8A:
- D - I - - 0x02ED4C 16:AD3C: 08        .byte $08   ; <く>
- D - I - - 0x02ED4D 16:AD3D: 04        .byte $04   ; <え>
- D - I - - 0x02ED4E 16:AD3E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02ED4F 16:AD3F: 55        .byte $55   ; <ナ>
- D - I - - 0x02ED50 16:AD40: 13        .byte $13   ; <て>
- D - I - - 0x02ED51 16:AD41: 57        .byte $57   ; <ヌ>

- D - I - - 0x02ED52 16:AD42: 08        .byte $08   ; <く>
- D - I - - 0x02ED53 16:AD43: 05        .byte $05   ; <お>
- D - I - - 0x02ED54 16:AD44: 0B        .byte $0B   ; <さ>
- D - I - - 0x02ED55 16:AD45: 58        .byte $58   ; <ネ>
- D - I - - 0x02ED56 16:AD46: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED57 16:AD47: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02ED58 16:AD48: 08        .byte $08   ; <く>
- D - I - - 0x02ED59 16:AD49: 06        .byte $06   ; <か>
- D - I - - 0x02ED5A 16:AD4A: 0B        .byte $0B   ; <さ>
- D - I - - 0x02ED5B 16:AD4B: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02ED5C 16:AD4C: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED5D 16:AD4D: 5F        .byte $5F   ; <マ>
; продолжение


off_AD4E:
- D - I - - 0x02ED5E 16:AD4E: 00        .byte $00
- D - I - - 0x02ED5F 16:AD4F: 07        .byte $07   ; <き>
- D - I - - 0x02ED60 16:AD50: 0F        .byte $0F   ; <そ>
- D - I - - 0x02ED61 16:AD51: 71        .byte $71   ; <ュ>
; продолжение


off_AD52:
- D - I - - 0x02ED62 16:AD52: 08        .byte $08   ; <く>
- D - I - - 0x02ED63 16:AD53: 05        .byte $05   ; <お>
- D - I - - 0x02ED64 16:AD54: 0F        .byte $0F   ; <そ>
- D - I - - 0x02ED65 16:AD55: 59        .byte $59   ; <ノ>
- D - I - - 0x02ED66 16:AD56: 13        .byte $13   ; <て>
- D - I - - 0x02ED67 16:AD57: 5C        .byte $5C   ; <フ>

- D - I - - 0x02ED68 16:AD58: 08        .byte $08   ; <く>
- D - I - - 0x02ED69 16:AD59: 06        .byte $06   ; <か>
- D - I - - 0x02ED6A 16:AD5A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02ED6B 16:AD5B: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02ED6C 16:AD5C: 13        .byte $13   ; <て>
- D - I - - 0x02ED6D 16:AD5D: 5E        .byte $5E   ; <ホ>

- D - I - - 0x02ED6E 16:AD5E: 00        .byte $00
- D - I - - 0x02ED6F 16:AD5F: 07        .byte $07   ; <き>
- D - I - - 0x02ED70 16:AD60: 13        .byte $13   ; <て>
- D - I - - 0x02ED71 16:AD61: 74        .byte $74   ; <ィ>

- D - I - - 0x02ED72 16:AD62: 02        .byte $02   ; <い>
- D - I - - 0x02ED73 16:AD63: 67 AB     .word off_AB67



off_AD65_8B:
- D - I - - 0x02ED75 16:AD65: 10        .byte $10   ; <た>
- D - I - - 0x02ED76 16:AD66: 04        .byte $04   ; <え>
- D - I - - 0x02ED77 16:AD67: 0F        .byte $0F   ; <そ>
- D - I - - 0x02ED78 16:AD68: 65        .byte $65   ; <ユ>
- D - I - - 0x02ED79 16:AD69: 13        .byte $13   ; <て>
- D - I - - 0x02ED7A 16:AD6A: 70        .byte $70   ; <ャ>
- D - I - - 0x02ED7B 16:AD6B: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED7C 16:AD6C: 75        .byte $75   ; <ェ>

- D - I - - 0x02ED7D 16:AD6D: 08        .byte $08   ; <く>
- D - I - - 0x02ED7E 16:AD6E: 05        .byte $05   ; <お>
- D - I - - 0x02ED7F 16:AD6F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02ED80 16:AD70: 58        .byte $58   ; <ネ>
- D - I - - 0x02ED81 16:AD71: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED82 16:AD72: 77        .byte $77   ; <:>

- D - I - - 0x02ED83 16:AD73: 08        .byte $08   ; <く>
- D - I - - 0x02ED84 16:AD74: 06        .byte $06   ; <か>
- D - I - - 0x02ED85 16:AD75: 0B        .byte $0B   ; <さ>
- D - I - - 0x02ED86 16:AD76: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02ED87 16:AD77: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED88 16:AD78: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02ED89 16:AD79: 02        .byte $02   ; <い>
- D - I - - 0x02ED8A 16:AD7A: 4E AD     .word off_AD4E



off_AD7C_8C:
- D - I - - 0x02ED8C 16:AD7C: 10        .byte $10   ; <た>
- D - I - - 0x02ED8D 16:AD7D: 04        .byte $04   ; <え>
- D - I - - 0x02ED8E 16:AD7E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02ED8F 16:AD7F: 65        .byte $65   ; <ユ>
- D - I - - 0x02ED90 16:AD80: 13        .byte $13   ; <て>
- D - I - - 0x02ED91 16:AD81: 67        .byte $67   ; <ラ>
- D - I - - 0x02ED92 16:AD82: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED93 16:AD83: 72        .byte $72   ; <ョ>

- D - I - - 0x02ED94 16:AD84: 08        .byte $08   ; <く>
- D - I - - 0x02ED95 16:AD85: 05        .byte $05   ; <お>
- D - I - - 0x02ED96 16:AD86: 0B        .byte $0B   ; <さ>
- D - I - - 0x02ED97 16:AD87: 58        .byte $58   ; <ネ>
- D - I - - 0x02ED98 16:AD88: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED99 16:AD89: 73        .byte $73   ; <ヮ>

- D - I - - 0x02ED9A 16:AD8A: 08        .byte $08   ; <く>
- D - I - - 0x02ED9B 16:AD8B: 06        .byte $06   ; <か>
- D - I - - 0x02ED9C 16:AD8C: 0B        .byte $0B   ; <さ>
- D - I - - 0x02ED9D 16:AD8D: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02ED9E 16:AD8E: 17        .byte $17   ; <ぬ>
- D - I - - 0x02ED9F 16:AD8F: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02EDA0 16:AD90: 02        .byte $02   ; <い>
- D - I - - 0x02EDA1 16:AD91: 4E AD     .word off_AD4E



off_AD93_8D:
- D - I - - 0x02EDA3 16:AD93: 08        .byte $08   ; <く>
- D - I - - 0x02EDA4 16:AD94: 04        .byte $04   ; <え>
- D - I - - 0x02EDA5 16:AD95: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EDA6 16:AD96: 55        .byte $55   ; <ナ>
- D - I - - 0x02EDA7 16:AD97: 13        .byte $13   ; <て>
- D - I - - 0x02EDA8 16:AD98: 57        .byte $57   ; <ヌ>

- D - I - - 0x02EDA9 16:AD99: 08        .byte $08   ; <く>
- D - I - - 0x02EDAA 16:AD9A: 05        .byte $05   ; <お>
- D - I - - 0x02EDAB 16:AD9B: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EDAC 16:AD9C: 76        .byte $76   ; <ォ>
- D - I - - 0x02EDAD 16:AD9D: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EDAE 16:AD9E: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02EDAF 16:AD9F: 08        .byte $08   ; <く>
- D - I - - 0x02EDB0 16:ADA0: 06        .byte $06   ; <か>
- D - I - - 0x02EDB1 16:ADA1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EDB2 16:ADA2: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02EDB3 16:ADA3: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EDB4 16:ADA4: 5F        .byte $5F   ; <マ>

- D - I - - 0x02EDB5 16:ADA5: 08        .byte $08   ; <く>
- D - I - - 0x02EDB6 16:ADA6: 07        .byte $07   ; <き>
- D - I - - 0x02EDB7 16:ADA7: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EDB8 16:ADA8: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02EDB9 16:ADA9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EDBA 16:ADAA: 7A        .byte $7A   ; <、>

- D - I - - 0x02EDBB 16:ADAB: 02        .byte $02   ; <い>
- D - I - - 0x02EDBC 16:ADAC: 52 AD     .word off_AD52



off_ADAE_8E:
- D - I - - 0x02EDBE 16:ADAE: 08        .byte $08   ; <く>
- D - I - - 0x02EDBF 16:ADAF: 04        .byte $04   ; <え>
- D - I - - 0x02EDC0 16:ADB0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EDC1 16:ADB1: 55        .byte $55   ; <ナ>
- D - I - - 0x02EDC2 16:ADB2: 13        .byte $13   ; <て>
- D - I - - 0x02EDC3 16:ADB3: 57        .byte $57   ; <ヌ>

- D - I - - 0x02EDC4 16:ADB4: 08        .byte $08   ; <く>
- D - I - - 0x02EDC5 16:ADB5: 05        .byte $05   ; <お>
- D - I - - 0x02EDC6 16:ADB6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EDC7 16:ADB7: 78        .byte $78   ; <?>
- D - I - - 0x02EDC8 16:ADB8: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EDC9 16:ADB9: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02EDCA 16:ADBA: 08        .byte $08   ; <く>
- D - I - - 0x02EDCB 16:ADBB: 06        .byte $06   ; <か>
- D - I - - 0x02EDCC 16:ADBC: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EDCD 16:ADBD: 79        .byte $79   ; <!>
- D - I - - 0x02EDCE 16:ADBE: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EDCF 16:ADBF: 5F        .byte $5F   ; <マ>

- D - I - - 0x02EDD0 16:ADC0: 08        .byte $08   ; <く>
- D - I - - 0x02EDD1 16:ADC1: 07        .byte $07   ; <き>
- D - I - - 0x02EDD2 16:ADC2: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EDD3 16:ADC3: 7B        .byte $7B   ; <。>
- D - I - - 0x02EDD4 16:ADC4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EDD5 16:ADC5: 7C        .byte $7C   ; <~>

- D - I - - 0x02EDD6 16:ADC6: 02        .byte $02   ; <い>
- D - I - - 0x02EDD7 16:ADC7: 52 AD     .word off_AD52



off_ADC9_8F:
- D - I - - 0x02EDD9 16:ADC9: 10        .byte $10   ; <た>
- D - I - - 0x02EDDA 16:ADCA: 18        .byte $18   ; <ね>
- D - I - - 0x02EDDB 16:ADCB: 43        .byte $43   ; <ウ>
- D - I - - 0x02EDDC 16:ADCC: 85        .byte $85   ; <E>
- D - I - - 0x02EDDD 16:ADCD: 47        .byte $47   ; <キ>
- D - I - - 0x02EDDE 16:ADCE: 7D        .byte $7D   ; <ー>
- D - I - - 0x02EDDF 16:ADCF: 87        .byte $87   ; <G>
- D - I - - 0x02EDE0 16:ADD0: 84        .byte $84   ; <D>

- D - I - - 0x02EDE1 16:ADD1: 10        .byte $10   ; <た>
- D - I - - 0x02EDE2 16:ADD2: 19        .byte $19   ; <の>
- D - I - - 0x02EDE3 16:ADD3: 43        .byte $43   ; <ウ>
- D - I - - 0x02EDE4 16:ADD4: 7E        .byte $7E   ; <.>
- D - I - - 0x02EDE5 16:ADD5: 47        .byte $47   ; <キ>
- D - I - - 0x02EDE6 16:ADD6: 7F        .byte $7F   ; <,>
- D - I - - 0x02EDE7 16:ADD7: 87        .byte $87   ; <G>
- D - I - - 0x02EDE8 16:ADD8: 86        .byte $86   ; <F>

- D - I - - 0x02EDE9 16:ADD9: 10        .byte $10   ; <た>
- D - I - - 0x02EDEA 16:ADDA: 1A        .byte $1A   ; <は>
- D - I - - 0x02EDEB 16:ADDB: 43        .byte $43   ; <ウ>
- D - I - - 0x02EDEC 16:ADDC: 82        .byte $82   ; <B>
- D - I - - 0x02EDED 16:ADDD: 47        .byte $47   ; <キ>
- D - I - - 0x02EDEE 16:ADDE: 83        .byte $83   ; <C>
- D - I - - 0x02EDEF 16:ADDF: 87        .byte $87   ; <G>
- D - I - - 0x02EDF0 16:ADE0: 87        .byte $87   ; <G>

- D - I - - 0x02EDF1 16:ADE1: 01        .byte $01   ; <あ>



off_ADE2_90:
- D - I - - 0x02EDF2 16:ADE2: 28        .byte $28   ; <り>
- D - I - - 0x02EDF3 16:ADE3: 02        .byte $02   ; <い>
- D - I - - 0x02EDF4 16:ADE4: 14        .byte $14   ; <と>
- D - I - - 0x02EDF5 16:ADE5: 09        .byte $09   ; <け>
- D - I - - 0x02EDF6 16:ADE6: 18        .byte $18   ; <ね>
- D - I - - 0x02EDF7 16:ADE7: 0C        .byte $0C   ; <し>
- D - I - - 0x02EDF8 16:ADE8: 80        .byte $80
- D - I - - 0x02EDF9 16:ADE9: 0D        .byte $0D   ; <す>
- D - I - - 0x02EDFA 16:ADEA: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EDFB 16:ADEB: 18        .byte $18   ; <ね>
- D - I - - 0x02EDFC 16:ADEC: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EDFD 16:ADED: 19        .byte $19   ; <の>
- D - I - - 0x02EDFE 16:ADEE: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EDFF 16:ADEF: 17        .byte $17   ; <ぬ>

- D - I - - 0x02EE00 16:ADF0: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE01 16:ADF1: 03        .byte $03   ; <う>
- D - I - - 0x02EE02 16:ADF2: 10        .byte $10   ; <た>
- D - I - - 0x02EE03 16:ADF3: 0A        .byte $0A   ; <こ>
- D - I - - 0x02EE04 16:ADF4: 14        .byte $14   ; <と>
- D - I - - 0x02EE05 16:ADF5: 0B        .byte $0B   ; <さ>
- D - I - - 0x02EE06 16:ADF6: 18        .byte $18   ; <ね>
- D - I - - 0x02EE07 16:ADF7: 0E        .byte $0E   ; <せ>
- D - I - - 0x02EE08 16:ADF8: 80        .byte $80
- D - I - - 0x02EE09 16:ADF9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02EE0A 16:ADFA: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE0B 16:ADFB: 1A        .byte $1A   ; <は>
- D - I - - 0x02EE0C 16:ADFC: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE0D 16:ADFD: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02EE0E 16:ADFE: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE0F 16:ADFF: 08        .byte $08   ; <く>

- D - I - - 0x02EE10 16:AE00: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE11 16:AE01: 04        .byte $04   ; <え>
- D - I - - 0x02EE12 16:AE02: 10        .byte $10   ; <た>
- D - I - - 0x02EE13 16:AE03: 20        .byte $20   ; <み>
- D - I - - 0x02EE14 16:AE04: 14        .byte $14   ; <と>
- D - I - - 0x02EE15 16:AE05: 21        .byte $21   ; <む>
- D - I - - 0x02EE16 16:AE06: 18        .byte $18   ; <ね>
- D - I - - 0x02EE17 16:AE07: 24        .byte $24   ; <や>
- D - I - - 0x02EE18 16:AE08: 80        .byte $80
- D - I - - 0x02EE19 16:AE09: 25        .byte $25   ; <ゆ>
- D - I - - 0x02EE1A 16:AE0A: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE1B 16:AE0B: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE1C 16:AE0C: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE1D 16:AE0D: 31        .byte $31   ; <ゅ>
- D - I - - 0x02EE1E 16:AE0E: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE1F 16:AE0F: 34        .byte $34   ; <1>

- D - I - - 0x02EE20 16:AE10: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE21 16:AE11: 05        .byte $05   ; <お>
- D - I - - 0x02EE22 16:AE12: 10        .byte $10   ; <た>
- D - I - - 0x02EE23 16:AE13: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02EE24 16:AE14: 14        .byte $14   ; <と>
- D - I - - 0x02EE25 16:AE15: 1D        .byte $1D   ; <へ>
- D - I - - 0x02EE26 16:AE16: 18        .byte $18   ; <ね>
- D - I - - 0x02EE27 16:AE17: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02EE28 16:AE18: 80        .byte $80
- D - I - - 0x02EE29 16:AE19: 1F        .byte $1F   ; <ま>
- D - I - - 0x02EE2A 16:AE1A: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE2B 16:AE1B: 35        .byte $35   ; <2>
- D - I - - 0x02EE2C 16:AE1C: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE2D 16:AE1D: 22        .byte $22   ; <め>
- D - I - - 0x02EE2E 16:AE1E: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE2F 16:AE1F: 36        .byte $36   ; <3>
; продолжение


off_AE20:
- D - I - - 0x02EE30 16:AE20: 00        .byte $00
- D - I - - 0x02EE31 16:AE21: 00        .byte $00
- D - I - - 0x02EE32 16:AE22: 10        .byte $10   ; <た>
- D - I - - 0x02EE33 16:AE23: 04        .byte $04   ; <え>

- D - I - - 0x02EE34 16:AE24: 20        .byte $20   ; <み>
- D - I - - 0x02EE35 16:AE25: 01        .byte $01   ; <あ>
- D - I - - 0x02EE36 16:AE26: 10        .byte $10   ; <た>
- D - I - - 0x02EE37 16:AE27: 06        .byte $06   ; <か>
- D - I - - 0x02EE38 16:AE28: 14        .byte $14   ; <と>
- D - I - - 0x02EE39 16:AE29: 07        .byte $07   ; <き>
- D - I - - 0x02EE3A 16:AE2A: 18        .byte $18   ; <ね>
- D - I - - 0x02EE3B 16:AE2B: 12        .byte $12   ; <つ>
- D - I - - 0x02EE3C 16:AE2C: 80        .byte $80
- D - I - - 0x02EE3D 16:AE2D: 13        .byte $13   ; <て>
- D - I - - 0x02EE3E 16:AE2E: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE3F 16:AE2F: 16        .byte $16   ; <に>

- D - I - - 0x02EE40 16:AE30: 20        .byte $20   ; <み>
- D - I - - 0x02EE41 16:AE31: 06        .byte $06   ; <か>
- D - I - - 0x02EE42 16:AE32: 10        .byte $10   ; <た>
- D - I - - 0x02EE43 16:AE33: 05        .byte $05   ; <お>
- D - I - - 0x02EE44 16:AE34: 14        .byte $14   ; <と>
- D - I - - 0x02EE45 16:AE35: 10        .byte $10   ; <た>
- D - I - - 0x02EE46 16:AE36: 18        .byte $18   ; <ね>
- D - I - - 0x02EE47 16:AE37: 11        .byte $11   ; <ち>
- D - I - - 0x02EE48 16:AE38: 80        .byte $80
- D - I - - 0x02EE49 16:AE39: 14        .byte $14   ; <と>
- D - I - - 0x02EE4A 16:AE3A: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE4B 16:AE3B: 15        .byte $15   ; <な>

- D - I - - 0x02EE4C 16:AE3C: 08        .byte $08   ; <く>
- D - I - - 0x02EE4D 16:AE3D: 07        .byte $07   ; <き>
- D - I - - 0x02EE4E 16:AE3E: 10        .byte $10   ; <た>
- D - I - - 0x02EE4F 16:AE3F: 02        .byte $02   ; <い>
- D - I - - 0x02EE50 16:AE40: 14        .byte $14   ; <と>
- D - I - - 0x02EE51 16:AE41: 03        .byte $03   ; <う>

- D - I - - 0x02EE52 16:AE42: 00        .byte $00
- D - I - - 0x02EE53 16:AE43: 02        .byte $02   ; <い>
- D - I - - 0x02EE54 16:AE44: 10        .byte $10   ; <た>
- D - I - - 0x02EE55 16:AE45: 4E        .byte $4E   ; <セ>

- D - I - - 0x02EE56 16:AE46: 01        .byte $01   ; <あ>



off_AE47_91:
- D - I - - 0x02EE57 16:AE47: 28        .byte $28   ; <り>
- D - I - - 0x02EE58 16:AE48: 02        .byte $02   ; <い>
- D - I - - 0x02EE59 16:AE49: 14        .byte $14   ; <と>
- D - I - - 0x02EE5A 16:AE4A: 23        .byte $23   ; <も>
- D - I - - 0x02EE5B 16:AE4B: 18        .byte $18   ; <ね>
- D - I - - 0x02EE5C 16:AE4C: 26        .byte $26   ; <よ>
- D - I - - 0x02EE5D 16:AE4D: 80        .byte $80
- D - I - - 0x02EE5E 16:AE4E: 27        .byte $27   ; <ら>
- D - I - - 0x02EE5F 16:AE4F: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE60 16:AE50: 32        .byte $32   ; <ょ>
- D - I - - 0x02EE61 16:AE51: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE62 16:AE52: 33        .byte $33   ; <0>
- D - I - - 0x02EE63 16:AE53: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE64 16:AE54: 17        .byte $17   ; <ぬ>

- D - I - - 0x02EE65 16:AE55: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE66 16:AE56: 03        .byte $03   ; <う>
- D - I - - 0x02EE67 16:AE57: 10        .byte $10   ; <た>
- D - I - - 0x02EE68 16:AE58: 28        .byte $28   ; <り>
- D - I - - 0x02EE69 16:AE59: 14        .byte $14   ; <と>
- D - I - - 0x02EE6A 16:AE5A: 29        .byte $29   ; <る>
- D - I - - 0x02EE6B 16:AE5B: 18        .byte $18   ; <ね>
- D - I - - 0x02EE6C 16:AE5C: 2C        .byte $2C   ; <わ>
- D - I - - 0x02EE6D 16:AE5D: 80        .byte $80
- D - I - - 0x02EE6E 16:AE5E: 2D        .byte $2D   ; <を>
- D - I - - 0x02EE6F 16:AE5F: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE70 16:AE60: 38        .byte $38   ; <5>
- D - I - - 0x02EE71 16:AE61: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE72 16:AE62: 39        .byte $39   ; <6>
- D - I - - 0x02EE73 16:AE63: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE74 16:AE64: 3C        .byte $3C   ; <9>

- D - I - - 0x02EE75 16:AE65: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE76 16:AE66: 04        .byte $04   ; <え>
- D - I - - 0x02EE77 16:AE67: 10        .byte $10   ; <た>
- D - I - - 0x02EE78 16:AE68: 2A        .byte $2A   ; <れ>
- D - I - - 0x02EE79 16:AE69: 14        .byte $14   ; <と>
- D - I - - 0x02EE7A 16:AE6A: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02EE7B 16:AE6B: 18        .byte $18   ; <ね>
- D - I - - 0x02EE7C 16:AE6C: 2E        .byte $2E   ; <ん>
- D - I - - 0x02EE7D 16:AE6D: 80        .byte $80
- D - I - - 0x02EE7E 16:AE6E: 2F        .byte $2F   ; <っ>
- D - I - - 0x02EE7F 16:AE6F: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE80 16:AE70: 3A        .byte $3A   ; <7>
- D - I - - 0x02EE81 16:AE71: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE82 16:AE72: 3B        .byte $3B   ; <8>
- D - I - - 0x02EE83 16:AE73: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE84 16:AE74: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02EE85 16:AE75: 30        .byte $30   ; <ゃ>
- D - I - - 0x02EE86 16:AE76: 05        .byte $05   ; <お>
- D - I - - 0x02EE87 16:AE77: 10        .byte $10   ; <た>
- D - I - - 0x02EE88 16:AE78: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02EE89 16:AE79: 14        .byte $14   ; <と>
- D - I - - 0x02EE8A 16:AE7A: 37        .byte $37   ; <4>
- D - I - - 0x02EE8B 16:AE7B: 18        .byte $18   ; <ね>
- D - I - - 0x02EE8C 16:AE7C: 3D        .byte $3D   ; <+>
- D - I - - 0x02EE8D 16:AE7D: 80        .byte $80
- D - I - - 0x02EE8E 16:AE7E: 3F        .byte $3F   ; <•>
- D - I - - 0x02EE8F 16:AE7F: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EE90 16:AE80: 58        .byte $58   ; <ネ>
- D - I - - 0x02EE91 16:AE81: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EE92 16:AE82: 59        .byte $59   ; <ノ>
- D - I - - 0x02EE93 16:AE83: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EE94 16:AE84: 36        .byte $36   ; <3>

- D - I - - 0x02EE95 16:AE85: 02        .byte $02   ; <い>
- D - I - - 0x02EE96 16:AE86: 20 AE     .word off_AE20



off_AE88_92:
- D - I - - 0x02EE98 16:AE88: 20        .byte $20   ; <み>
- D - I - - 0x02EE99 16:AE89: 02        .byte $02   ; <い>
- D - I - - 0x02EE9A 16:AE8A: 14        .byte $14   ; <と>
- D - I - - 0x02EE9B 16:AE8B: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02EE9C 16:AE8C: 18        .byte $18   ; <ね>
- D - I - - 0x02EE9D 16:AE8D: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02EE9E 16:AE8E: 80        .byte $80
- D - I - - 0x02EE9F 16:AE8F: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02EEA0 16:AE90: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EEA1 16:AE91: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02EEA2 16:AE92: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EEA3 16:AE93: 5F        .byte $5F   ; <マ>

- D - I - - 0x02EEA4 16:AE94: 20        .byte $20   ; <み>
- D - I - - 0x02EEA5 16:AE95: 03        .byte $03   ; <う>
- D - I - - 0x02EEA6 16:AE96: 14        .byte $14   ; <と>
- D - I - - 0x02EEA7 16:AE97: 64        .byte $64   ; <ヤ>
- D - I - - 0x02EEA8 16:AE98: 18        .byte $18   ; <ね>
- D - I - - 0x02EEA9 16:AE99: 65        .byte $65   ; <ユ>
- D - I - - 0x02EEAA 16:AE9A: 80        .byte $80
- D - I - - 0x02EEAB 16:AE9B: 51        .byte $51   ; <チ>
- D - I - - 0x02EEAC 16:AE9C: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EEAD 16:AE9D: 54        .byte $54   ; <ト>
- D - I - - 0x02EEAE 16:AE9E: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EEAF 16:AE9F: 55        .byte $55   ; <ナ>

- D - I - - 0x02EEB0 16:AEA0: 08        .byte $08   ; <く>
- D - I - - 0x02EEB1 16:AEA1: 04        .byte $04   ; <え>
- D - I - - 0x02EEB2 16:AEA2: 14        .byte $14   ; <と>
- D - I - - 0x02EEB3 16:AEA3: 66        .byte $66   ; <ヨ>
- D - I - - 0x02EEB4 16:AEA4: 18        .byte $18   ; <ね>
- D - I - - 0x02EEB5 16:AEA5: 67        .byte $67   ; <ラ>

- D - I - - 0x02EEB6 16:AEA6: 20        .byte $20   ; <み>
- D - I - - 0x02EEB7 16:AEA7: 05        .byte $05   ; <お>
- D - I - - 0x02EEB8 16:AEA8: 10        .byte $10   ; <た>
- D - I - - 0x02EEB9 16:AEA9: 53        .byte $53   ; <テ>
- D - I - - 0x02EEBA 16:AEAA: 14        .byte $14   ; <と>
- D - I - - 0x02EEBB 16:AEAB: 56        .byte $56   ; <ニ>
- D - I - - 0x02EEBC 16:AEAC: 18        .byte $18   ; <ね>
- D - I - - 0x02EEBD 16:AEAD: 57        .byte $57   ; <ヌ>
- D - I - - 0x02EEBE 16:AEAE: 80        .byte $80
- D - I - - 0x02EEBF 16:AEAF: 5C        .byte $5C   ; <フ>
- D - I - - 0x02EEC0 16:AEB0: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02EEC1 16:AEB1: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02EEC2 16:AEB2: 02        .byte $02   ; <い>
- D - I - - 0x02EEC3 16:AEB3: 20 AE     .word off_AE20



off_AEB5_93:
- D - I - - 0x02EEC5 16:AEB5: 03        .byte $03   ; <う>
- D - I - - 0x02EEC6 16:AEB6: CE AE     .word off_AECE
- D - I - - 0x02EEC8 16:AEB8: 07 AF     .word off_AF07
- D - I - - 0x02EECA 16:AEBA: 16 AF     .word off_AF16
- D - I - - 0x02EECC 16:AEBC: CE AE     .word off_AECE
- D - I - - 0x02EECE 16:AEBE: 25 AF     .word off_AF25
- D - I - - 0x02EED0 16:AEC0: 16 AF     .word off_AF16
- D - I - - 0x02EED2 16:AEC2: 34 AF     .word off_AF34
- D - I - - 0x02EED4 16:AEC4: 3D AF     .word off_AF3D
- D - I - - 0x02EED6 16:AEC6: 16 AF     .word off_AF16
- D - I - - 0x02EED8 16:AEC8: 5E AF     .word off_AF5E
- D - I - - 0x02EEDA 16:AECA: 16 AF     .word off_AF16
- D - I - - 0x02EEDC 16:AECC: 16 AF     .word off_AF16



off_AECE:
- D - I - - 0x02EEDE 16:AECE: 08        .byte $08   ; <く>
- D - I - - 0x02EEDF 16:AECF: 03        .byte $03   ; <う>
- D - I - - 0x02EEE0 16:AED0: 08        .byte $08   ; <く>
- D - I - - 0x02EEE1 16:AED1: B4        .byte $B4   ; <ガ>
- D - I - - 0x02EEE2 16:AED2: 0C        .byte $0C   ; <し>
- D - I - - 0x02EEE3 16:AED3: B5        .byte $B5   ; <ギ>

- D - I - - 0x02EEE4 16:AED4: 08        .byte $08   ; <く>
- D - I - - 0x02EEE5 16:AED5: 04        .byte $04   ; <え>
- D - I - - 0x02EEE6 16:AED6: 08        .byte $08   ; <く>
- D - I - - 0x02EEE7 16:AED7: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02EEE8 16:AED8: 0C        .byte $0C   ; <し>
- D - I - - 0x02EEE9 16:AED9: E2        .byte $E2
; продолжение


off_AEDA:
- D - I - - 0x02EEEA 16:AEDA: 00        .byte $00
- D - I - - 0x02EEEB 16:AEDB: 02        .byte $02   ; <い>
- D - I - - 0x02EEEC 16:AEDC: 0D        .byte $0D   ; <す>
- D - I - - 0x02EEED 16:AEDD: B6        .byte $B6   ; <グ>

- D - I - - 0x02EEEE 16:AEDE: 00        .byte $00
- D - I - - 0x02EEEF 16:AEDF: 03        .byte $03   ; <う>
- D - I - - 0x02EEF0 16:AEE0: 0D        .byte $0D   ; <す>
- D - I - - 0x02EEF1 16:AEE1: B9        .byte $B9   ; <ザ>

- D - I - - 0x02EEF2 16:AEE2: 08        .byte $08   ; <く>
- D - I - - 0x02EEF3 16:AEE3: 04        .byte $04   ; <え>
- D - I - - 0x02EEF4 16:AEE4: 0D        .byte $0D   ; <す>
- D - I - - 0x02EEF5 16:AEE5: BB        .byte $BB   ; <ズ>
- D - I - - 0x02EEF6 16:AEE6: 11        .byte $11   ; <ち>
- D - I - - 0x02EEF7 16:AEE7: BE        .byte $BE   ; <ダ>

- D - I - - 0x02EEF8 16:AEE8: 00        .byte $00
- D - I - - 0x02EEF9 16:AEE9: 05        .byte $05   ; <お>
- D - I - - 0x02EEFA 16:AEEA: 0D        .byte $0D   ; <す>
- D - I - - 0x02EEFB 16:AEEB: 9C        .byte $9C
; продолжение


off_AEEC:
- D - I - - 0x02EEFC 16:AEEC: 10        .byte $10   ; <た>
- D - I - - 0x02EEFD 16:AEED: 02        .byte $02   ; <い>
- D - I - - 0x02EEFE 16:AEEE: 08        .byte $08   ; <く>
- D - I - - 0x02EEFF 16:AEEF: B3        .byte $B3   ; <ぼ>
- D - I - - 0x02EF00 16:AEF0: 11        .byte $11   ; <ち>
- D - I - - 0x02EF01 16:AEF1: 94        .byte $94
- D - I - - 0x02EF02 16:AEF2: 17        .byte $17   ; <ぬ>
- D - I - - 0x02EF03 16:AEF3: 95        .byte $95

- D - I - - 0x02EF04 16:AEF4: 08        .byte $08   ; <く>
- D - I - - 0x02EF05 16:AEF5: 03        .byte $03   ; <う>
- D - I - - 0x02EF06 16:AEF6: 12        .byte $12   ; <つ>
- D - I - - 0x02EF07 16:AEF7: 96        .byte $96
- D - I - - 0x02EF08 16:AEF8: 11        .byte $11   ; <ち>
- D - I - - 0x02EF09 16:AEF9: BC        .byte $BC   ; <ゼ>

- D - I - - 0x02EF0A 16:AEFA: 00        .byte $00
- D - I - - 0x02EF0B 16:AEFB: 05        .byte $05   ; <お>
- D - I - - 0x02EF0C 16:AEFC: 10        .byte $10   ; <た>
- D - I - - 0x02EF0D 16:AEFD: 97        .byte $97

- D - I - - 0x02EF0E 16:AEFE: 00        .byte $00
- D - I - - 0x02EF0F 16:AEFF: 06        .byte $06   ; <か>
- D - I - - 0x02EF10 16:AF00: 11        .byte $11   ; <ち>
- D - I - - 0x02EF11 16:AF01: 9D        .byte $9D

- D - I - - 0x02EF12 16:AF02: 00        .byte $00
- D - I - - 0x02EF13 16:AF03: 20        .byte $20   ; <み>
- D - I - - 0x02EF14 16:AF04: 09        .byte $09   ; <け>
- D - I - - 0x02EF15 16:AF05: 9E        .byte $9E

- D - I - - 0x02EF16 16:AF06: 01        .byte $01   ; <あ>



off_AF07:
- D - I - - 0x02EF17 16:AF07: 08        .byte $08   ; <く>
- D - I - - 0x02EF18 16:AF08: 03        .byte $03   ; <う>
- D - I - - 0x02EF19 16:AF09: 08        .byte $08   ; <く>
- D - I - - 0x02EF1A 16:AF0A: BD        .byte $BD   ; <ゾ>
- D - I - - 0x02EF1B 16:AF0B: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF1C 16:AF0C: E8        .byte $E8

- D - I - - 0x02EF1D 16:AF0D: 08        .byte $08   ; <く>
- D - I - - 0x02EF1E 16:AF0E: 04        .byte $04   ; <え>
- D - I - - 0x02EF1F 16:AF0F: 08        .byte $08   ; <く>
- D - I - - 0x02EF20 16:AF10: BF        .byte $BF   ; <ヂ>
- D - I - - 0x02EF21 16:AF11: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF22 16:AF12: EA        .byte $EA

- D - I - - 0x02EF23 16:AF13: 02        .byte $02   ; <い>
- D - I - - 0x02EF24 16:AF14: DA AE     .word off_AEDA



off_AF16:
- D - I - - 0x02EF26 16:AF16: 08        .byte $08   ; <く>
- D - I - - 0x02EF27 16:AF17: 03        .byte $03   ; <う>
- D - I - - 0x02EF28 16:AF18: 08        .byte $08   ; <く>
- D - I - - 0x02EF29 16:AF19: B4        .byte $B4   ; <ガ>
- D - I - - 0x02EF2A 16:AF1A: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF2B 16:AF1B: DF        .byte $DF

- D - I - - 0x02EF2C 16:AF1C: 08        .byte $08   ; <く>
- D - I - - 0x02EF2D 16:AF1D: 04        .byte $04   ; <え>
- D - I - - 0x02EF2E 16:AF1E: 08        .byte $08   ; <く>
- D - I - - 0x02EF2F 16:AF1F: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02EF30 16:AF20: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF31 16:AF21: C3        .byte $C3   ; <バ>

- D - I - - 0x02EF32 16:AF22: 02        .byte $02   ; <い>
- D - I - - 0x02EF33 16:AF23: DA AE     .word off_AEDA



off_AF25:
- D - I - - 0x02EF35 16:AF25: 08        .byte $08   ; <く>
- D - I - - 0x02EF36 16:AF26: 03        .byte $03   ; <う>
- D - I - - 0x02EF37 16:AF27: 08        .byte $08   ; <く>
- D - I - - 0x02EF38 16:AF28: E0        .byte $E0
- D - I - - 0x02EF39 16:AF29: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF3A 16:AF2A: CC        .byte $CC   ; <ぽ>
; продолжение


off_AF2B:
- D - I - - 0x02EF3B 16:AF2B: 08        .byte $08   ; <く>
- D - I - - 0x02EF3C 16:AF2C: 04        .byte $04   ; <え>
- D - I - - 0x02EF3D 16:AF2D: 08        .byte $08   ; <く>
- D - I - - 0x02EF3E 16:AF2E: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02EF3F 16:AF2F: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF40 16:AF30: CE        .byte $CE   ; <ピ>

- D - I - - 0x02EF41 16:AF31: 02        .byte $02   ; <い>
- D - I - - 0x02EF42 16:AF32: DA AE     .word off_AEDA



off_AF34:
- D - I - - 0x02EF44 16:AF34: 08        .byte $08   ; <く>
- D - I - - 0x02EF45 16:AF35: 03        .byte $03   ; <う>
- D - I - - 0x02EF46 16:AF36: 08        .byte $08   ; <く>
- D - I - - 0x02EF47 16:AF37: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02EF48 16:AF38: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF49 16:AF39: CC        .byte $CC   ; <ぽ>

- D - I - - 0x02EF4A 16:AF3A: 02        .byte $02   ; <い>
- D - I - - 0x02EF4B 16:AF3B: 2B AF     .word off_AF2B



off_AF3D:
- D - I - - 0x02EF4D 16:AF3D: 08        .byte $08   ; <く>
- D - I - - 0x02EF4E 16:AF3E: 03        .byte $03   ; <う>
- D - I - - 0x02EF4F 16:AF3F: 08        .byte $08   ; <く>
- D - I - - 0x02EF50 16:AF40: B4        .byte $B4   ; <ガ>
- D - I - - 0x02EF51 16:AF41: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF52 16:AF42: B5        .byte $B5   ; <ギ>

- D - I - - 0x02EF53 16:AF43: 08        .byte $08   ; <く>
- D - I - - 0x02EF54 16:AF44: 04        .byte $04   ; <え>
- D - I - - 0x02EF55 16:AF45: 08        .byte $08   ; <く>
- D - I - - 0x02EF56 16:AF46: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02EF57 16:AF47: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF58 16:AF48: E2        .byte $E2

- D - I - - 0x02EF59 16:AF49: 00        .byte $00
- D - I - - 0x02EF5A 16:AF4A: 02        .byte $02   ; <い>
- D - I - - 0x02EF5B 16:AF4B: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF5C 16:AF4C: F1        .byte $F1

- D - I - - 0x02EF5D 16:AF4D: 00        .byte $00
- D - I - - 0x02EF5E 16:AF4E: 03        .byte $03   ; <う>
- D - I - - 0x02EF5F 16:AF4F: 0D        .byte $0D   ; <す>
- D - I - - 0x02EF60 16:AF50: C2        .byte $C2   ; <ド>

- D - I - - 0x02EF61 16:AF51: 08        .byte $08   ; <く>
- D - I - - 0x02EF62 16:AF52: 04        .byte $04   ; <え>
- D - I - - 0x02EF63 16:AF53: 0D        .byte $0D   ; <す>
- D - I - - 0x02EF64 16:AF54: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02EF65 16:AF55: 11        .byte $11   ; <ち>
- D - I - - 0x02EF66 16:AF56: 9F        .byte $9F

- D - I - - 0x02EF67 16:AF57: 00        .byte $00
- D - I - - 0x02EF68 16:AF58: 05        .byte $05   ; <お>
- D - I - - 0x02EF69 16:AF59: 0D        .byte $0D   ; <す>
- D - I - - 0x02EF6A 16:AF5A: CA        .byte $CA   ; <ぷ>

- D - I - - 0x02EF6B 16:AF5B: 02        .byte $02   ; <い>
- D - I - - 0x02EF6C 16:AF5C: EC AE     .word off_AEEC



off_AF5E:
- D - I - - 0x02EF6E 16:AF5E: 08        .byte $08   ; <く>
- D - I - - 0x02EF6F 16:AF5F: 03        .byte $03   ; <う>
- D - I - - 0x02EF70 16:AF60: 08        .byte $08   ; <く>
- D - I - - 0x02EF71 16:AF61: E0        .byte $E0
- D - I - - 0x02EF72 16:AF62: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF73 16:AF63: CC        .byte $CC   ; <ぽ>

- D - I - - 0x02EF74 16:AF64: 08        .byte $08   ; <く>
- D - I - - 0x02EF75 16:AF65: 04        .byte $04   ; <え>
- D - I - - 0x02EF76 16:AF66: 08        .byte $08   ; <く>
- D - I - - 0x02EF77 16:AF67: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02EF78 16:AF68: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF79 16:AF69: E1        .byte $E1

- D - I - - 0x02EF7A 16:AF6A: 02        .byte $02   ; <い>
- D - I - - 0x02EF7B 16:AF6B: DA AE     .word off_AEDA



off_AF6D_94:
- D - I - - 0x02EF7D 16:AF6D: 03        .byte $03   ; <う>
- D - I - - 0x02EF7E 16:AF6E: 86 AF     .word off_AF86
- D - I - - 0x02EF80 16:AF70: C3 AF     .word off_AFC3
- D - I - - 0x02EF82 16:AF72: D2 AF     .word off_AFD2
- D - I - - 0x02EF84 16:AF74: 86 AF     .word off_AF86
- D - I - - 0x02EF86 16:AF76: 0D B0     .word off_B00D
- D - I - - 0x02EF88 16:AF78: D2 AF     .word off_AFD2
- D - I - - 0x02EF8A 16:AF7A: E1 AF     .word off_AFE1
- D - I - - 0x02EF8C 16:AF7C: F0 AF     .word off_AFF0
- D - I - - 0x02EF8E 16:AF7E: D2 AF     .word off_AFD2
- D - I - - 0x02EF90 16:AF80: 1C B0     .word off_B01C
- D - I - - 0x02EF92 16:AF82: D2 AF     .word off_AFD2
- D - I - - 0x02EF94 16:AF84: D2 AF     .word off_AFD2



off_AF86:
- D - I - - 0x02EF96 16:AF86: 08        .byte $08   ; <く>
- D - I - - 0x02EF97 16:AF87: 02        .byte $02   ; <い>
- D - I - - 0x02EF98 16:AF88: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF99 16:AF89: F6        .byte $F6
- D - I - - 0x02EF9A 16:AF8A: 10        .byte $10   ; <た>
- D - I - - 0x02EF9B 16:AF8B: FD        .byte $FD

- D - I - - 0x02EF9C 16:AF8C: 08        .byte $08   ; <く>
- D - I - - 0x02EF9D 16:AF8D: 03        .byte $03   ; <う>
- D - I - - 0x02EF9E 16:AF8E: 0C        .byte $0C   ; <し>
- D - I - - 0x02EF9F 16:AF8F: FE        .byte $FE
- D - I - - 0x02EFA0 16:AF90: 10        .byte $10   ; <た>
- D - I - - 0x02EFA1 16:AF91: D9        .byte $D9

off_AF92:
- D - I - - 0x02EFA2 16:AF92: 08        .byte $08   ; <く>
- D - I - - 0x02EFA3 16:AF93: 02        .byte $02   ; <い>
- D - I - - 0x02EFA4 16:AF94: 11        .byte $11   ; <ち>
- D - I - - 0x02EFA5 16:AF95: E3        .byte $E3
- D - I - - 0x02EFA6 16:AF96: 15        .byte $15   ; <な>
- D - I - - 0x02EFA7 16:AF97: E6        .byte $E6

- D - I - - 0x02EFA8 16:AF98: 00        .byte $00
- D - I - - 0x02EFA9 16:AF99: 03        .byte $03   ; <う>
- D - I - - 0x02EFAA 16:AF9A: 41        .byte $41   ; <ア>
- D - I - - 0x02EFAB 16:AF9B: E9        .byte $E9

- D - I - - 0x02EFAC 16:AF9C: 00        .byte $00
- D - I - - 0x02EFAD 16:AF9D: 04        .byte $04   ; <え>
- D - I - - 0x02EFAE 16:AF9E: 0E        .byte $0E   ; <せ>
- D - I - - 0x02EFAF 16:AF9F: EB        .byte $EB
; продолжение


off_AFA0:
- D - I - - 0x02EFB0 16:AFA0: 00        .byte $00
- D - I - - 0x02EFB1 16:AFA1: 01        .byte $01   ; <あ>
- D - I - - 0x02EFB2 16:AFA2: 14        .byte $14   ; <と>
- D - I - - 0x02EFB3 16:AFA3: E4        .byte $E4

- D - I - - 0x02EFB4 16:AFA4: 08        .byte $08   ; <く>
- D - I - - 0x02EFB5 16:AFA5: 03        .byte $03   ; <う>
- D - I - - 0x02EFB6 16:AFA6: 45        .byte $45   ; <オ>
- D - I - - 0x02EFB7 16:AFA7: EC        .byte $EC
- D - I - - 0x02EFB8 16:AFA8: 85        .byte $85   ; <E>
- D - I - - 0x02EFB9 16:AFA9: ED        .byte $ED

- D - I - - 0x02EFBA 16:AFAA: 10        .byte $10   ; <た>
- D - I - - 0x02EFBB 16:AFAB: 04        .byte $04   ; <え>
- D - I - - 0x02EFBC 16:AFAC: 0D        .byte $0D   ; <す>
- D - I - - 0x02EFBD 16:AFAD: C4        .byte $C4   ; <ビ>
- D - I - - 0x02EFBE 16:AFAE: 12        .byte $12   ; <つ>
- D - I - - 0x02EFBF 16:AFAF: EE        .byte $EE
- D - I - - 0x02EFC0 16:AFB0: 11        .byte $11   ; <ち>
- D - I - - 0x02EFC1 16:AFB1: F3        .byte $F3

- D - I - - 0x02EFC2 16:AFB2: 10        .byte $10   ; <た>
- D - I - - 0x02EFC3 16:AFB3: 05        .byte $05   ; <お>
- D - I - - 0x02EFC4 16:AFB4: 09        .byte $09   ; <け>
- D - I - - 0x02EFC5 16:AFB5: C6        .byte $C6   ; <ベ>
- D - I - - 0x02EFC6 16:AFB6: 0D        .byte $0D   ; <す>
- D - I - - 0x02EFC7 16:AFB7: F9        .byte $F9
- D - I - - 0x02EFC8 16:AFB8: 11        .byte $11   ; <ち>
- D - I - - 0x02EFC9 16:AFB9: FC        .byte $FC

- D - I - - 0x02EFCA 16:AFBA: 00        .byte $00
- D - I - - 0x02EFCB 16:AFBB: 06        .byte $06   ; <か>
- D - I - - 0x02EFCC 16:AFBC: 08        .byte $08   ; <く>
- D - I - - 0x02EFCD 16:AFBD: FB        .byte $FB

- D - I - - 0x02EFCE 16:AFBE: 00        .byte $00
- D - I - - 0x02EFCF 16:AFBF: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02EFD0 16:AFC0: 14        .byte $14   ; <と>
- D - I - - 0x02EFD1 16:AFC1: FF        .byte $FF

- D - I - - 0x02EFD2 16:AFC2: 01        .byte $01   ; <あ>



off_AFC3:
- D - I - - 0x02EFD3 16:AFC3: 08        .byte $08   ; <く>
- D - I - - 0x02EFD4 16:AFC4: 02        .byte $02   ; <い>
- D - I - - 0x02EFD5 16:AFC5: 0C        .byte $0C   ; <し>
- D - I - - 0x02EFD6 16:AFC6: E7        .byte $E7
- D - I - - 0x02EFD7 16:AFC7: 10        .byte $10   ; <た>
- D - I - - 0x02EFD8 16:AFC8: F2        .byte $F2

- D - I - - 0x02EFD9 16:AFC9: 08        .byte $08   ; <く>
- D - I - - 0x02EFDA 16:AFCA: 03        .byte $03   ; <う>
- D - I - - 0x02EFDB 16:AFCB: 0C        .byte $0C   ; <し>
- D - I - - 0x02EFDC 16:AFCC: FE        .byte $FE
- D - I - - 0x02EFDD 16:AFCD: 10        .byte $10   ; <た>
- D - I - - 0x02EFDE 16:AFCE: F8        .byte $F8

- D - I - - 0x02EFDF 16:AFCF: 02        .byte $02   ; <い>
- D - I - - 0x02EFE0 16:AFD0: 92 AF     .word off_AF92



off_AFD2:
- D - I - - 0x02EFE2 16:AFD2: 08        .byte $08   ; <く>
- D - I - - 0x02EFE3 16:AFD3: 02        .byte $02   ; <い>
- D - I - - 0x02EFE4 16:AFD4: 0C        .byte $0C   ; <し>
- D - I - - 0x02EFE5 16:AFD5: F6        .byte $F6
- D - I - - 0x02EFE6 16:AFD6: 10        .byte $10   ; <た>
- D - I - - 0x02EFE7 16:AFD7: EF        .byte $EF

- D - I - - 0x02EFE8 16:AFD8: 08        .byte $08   ; <く>
- D - I - - 0x02EFE9 16:AFD9: 03        .byte $03   ; <う>
- D - I - - 0x02EFEA 16:AFDA: 0C        .byte $0C   ; <し>
- D - I - - 0x02EFEB 16:AFDB: FA        .byte $FA
- D - I - - 0x02EFEC 16:AFDC: 10        .byte $10   ; <た>
- D - I - - 0x02EFED 16:AFDD: D9        .byte $D9

- D - I - - 0x02EFEE 16:AFDE: 02        .byte $02   ; <い>
- D - I - - 0x02EFEF 16:AFDF: 92 AF     .word off_AF92



off_AFE1:
- D - I - - 0x02EFF1 16:AFE1: 08        .byte $08   ; <く>
- D - I - - 0x02EFF2 16:AFE2: 02        .byte $02   ; <い>
- D - I - - 0x02EFF3 16:AFE3: 0C        .byte $0C   ; <し>
- D - I - - 0x02EFF4 16:AFE4: F5        .byte $F5
- D - I - - 0x02EFF5 16:AFE5: 10        .byte $10   ; <た>
- D - I - - 0x02EFF6 16:AFE6: D5        .byte $D5

- D - I - - 0x02EFF7 16:AFE7: 08        .byte $08   ; <く>
- D - I - - 0x02EFF8 16:AFE8: 03        .byte $03   ; <う>
- D - I - - 0x02EFF9 16:AFE9: 0C        .byte $0C   ; <し>
- D - I - - 0x02EFFA 16:AFEA: F7        .byte $F7
- D - I - - 0x02EFFB 16:AFEB: 10        .byte $10   ; <た>
- D - I - - 0x02EFFC 16:AFEC: D9        .byte $D9

- D - I - - 0x02EFFD 16:AFED: 02        .byte $02   ; <い>
- D - I - - 0x02EFFE 16:AFEE: 92 AF     .word off_AF92



off_AFF0:
- D - I - - 0x02F000 16:AFF0: 08        .byte $08   ; <く>
- D - I - - 0x02F001 16:AFF1: 02        .byte $02   ; <い>
- D - I - - 0x02F002 16:AFF2: 0C        .byte $0C   ; <し>
- D - I - - 0x02F003 16:AFF3: F6        .byte $F6
- D - I - - 0x02F004 16:AFF4: 10        .byte $10   ; <た>
- D - I - - 0x02F005 16:AFF5: FD        .byte $FD

- D - I - - 0x02F006 16:AFF6: 08        .byte $08   ; <く>
- D - I - - 0x02F007 16:AFF7: 03        .byte $03   ; <う>
- D - I - - 0x02F008 16:AFF8: 0C        .byte $0C   ; <し>
- D - I - - 0x02F009 16:AFF9: FE        .byte $FE
- D - I - - 0x02F00A 16:AFFA: 10        .byte $10   ; <た>
- D - I - - 0x02F00B 16:AFFB: D9        .byte $D9

- D - I - - 0x02F00C 16:AFFC: 08        .byte $08   ; <く>
- D - I - - 0x02F00D 16:AFFD: 02        .byte $02   ; <い>
- D - I - - 0x02F00E 16:AFFE: 11        .byte $11   ; <ち>
- D - I - - 0x02F00F 16:AFFF: CF        .byte $CF   ; <プ>
- D - I - - 0x02F010 16:B000: 15        .byte $15   ; <な>
- D - I - - 0x02F011 16:B001: DA        .byte $DA

- D - I - - 0x02F012 16:B002: 00        .byte $00
- D - I - - 0x02F013 16:B003: 03        .byte $03   ; <う>
- D - I - - 0x02F014 16:B004: 41        .byte $41   ; <ア>
- D - I - - 0x02F015 16:B005: E5        .byte $E5

- D - I - - 0x02F016 16:B006: 00        .byte $00
- D - I - - 0x02F017 16:B007: 04        .byte $04   ; <え>
- D - I - - 0x02F018 16:B008: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F019 16:B009: F0        .byte $F0

- D - I - - 0x02F01A 16:B00A: 02        .byte $02   ; <い>
- D - I - - 0x02F01B 16:B00B: A0 AF     .word off_AFA0



off_B00D:
- D - I - - 0x02F01D 16:B00D: 08        .byte $08   ; <く>
- D - I - - 0x02F01E 16:B00E: 02        .byte $02   ; <い>
- D - I - - 0x02F01F 16:B00F: 0C        .byte $0C   ; <し>
- D - I - - 0x02F020 16:B010: D7        .byte $D7
- D - I - - 0x02F021 16:B011: 10        .byte $10   ; <た>
- D - I - - 0x02F022 16:B012: DC        .byte $DC

- D - I - - 0x02F023 16:B013: 08        .byte $08   ; <く>
- D - I - - 0x02F024 16:B014: 03        .byte $03   ; <う>
- D - I - - 0x02F025 16:B015: 0C        .byte $0C   ; <し>
- D - I - - 0x02F026 16:B016: DB        .byte $DB
- D - I - - 0x02F027 16:B017: 10        .byte $10   ; <た>
- D - I - - 0x02F028 16:B018: DE        .byte $DE

- D - I - - 0x02F029 16:B019: 02        .byte $02   ; <い>
- D - I - - 0x02F02A 16:B01A: 92 AF     .word off_AF92



off_B01C:
- D - I - - 0x02F02C 16:B01C: 08        .byte $08   ; <く>
- D - I - - 0x02F02D 16:B01D: 02        .byte $02   ; <い>
- D - I - - 0x02F02E 16:B01E: 0C        .byte $0C   ; <し>
- D - I - - 0x02F02F 16:B01F: D7        .byte $D7
- D - I - - 0x02F030 16:B020: 10        .byte $10   ; <た>
- D - I - - 0x02F031 16:B021: DC        .byte $DC

- D - I - - 0x02F032 16:B022: 08        .byte $08   ; <く>
- D - I - - 0x02F033 16:B023: 03        .byte $03   ; <う>
- D - I - - 0x02F034 16:B024: 0C        .byte $0C   ; <し>
- D - I - - 0x02F035 16:B025: DB        .byte $DB
- D - I - - 0x02F036 16:B026: 10        .byte $10   ; <た>
- D - I - - 0x02F037 16:B027: DD        .byte $DD

- D - I - - 0x02F038 16:B028: 02        .byte $02   ; <い>
- D - I - - 0x02F039 16:B029: 92 AF     .word off_AF92



off_B02B_95:
- D - I - - 0x02F03B 16:B02B: 00        .byte $00
- D - I - - 0x02F03C 16:B02C: 03        .byte $03   ; <う>
- D - I - - 0x02F03D 16:B02D: 46        .byte $46   ; <カ>
- D - I - - 0x02F03E 16:B02E: 3C        .byte $3C   ; <9>

- D - I - - 0x02F03F 16:B02F: 00        .byte $00
- D - I - - 0x02F040 16:B030: 04        .byte $04   ; <え>
- D - I - - 0x02F041 16:B031: 46        .byte $46   ; <カ>
- D - I - - 0x02F042 16:B032: 3E        .byte $3E   ; <Jr>

- D - I - - 0x02F043 16:B033: 01        .byte $01   ; <あ>



off_B034_96:
- D - I - - 0x02F044 16:B034: 00        .byte $00
- D - I - - 0x02F045 16:B035: 03        .byte $03   ; <う>
- D - I - - 0x02F046 16:B036: 46        .byte $46   ; <カ>
- D - I - - 0x02F047 16:B037: 3D        .byte $3D   ; <+>

- D - I - - 0x02F048 16:B038: 00        .byte $00
- D - I - - 0x02F049 16:B039: 04        .byte $04   ; <え>
- D - I - - 0x02F04A 16:B03A: 46        .byte $46   ; <カ>
- D - I - - 0x02F04B 16:B03B: 3F        .byte $3F   ; <•>

- D - I - - 0x02F04C 16:B03C: 01        .byte $01   ; <あ>



off_B03D_97:
- D - I - - 0x02F04D 16:B03D: 00        .byte $00
- D - I - - 0x02F04E 16:B03E: 03        .byte $03   ; <う>
- D - I - - 0x02F04F 16:B03F: 46        .byte $46   ; <カ>
- D - I - - 0x02F050 16:B040: 7E        .byte $7E   ; <.>

- D - I - - 0x02F051 16:B041: 00        .byte $00
- D - I - - 0x02F052 16:B042: 04        .byte $04   ; <え>
- D - I - - 0x02F053 16:B043: 46        .byte $46   ; <カ>
- D - I - - 0x02F054 16:B044: 7F        .byte $7F   ; <,>

- D - I - - 0x02F055 16:B045: 01        .byte $01   ; <あ>



off_B046_98:
- D - I - - 0x02F056 16:B046: 03        .byte $03   ; <う>
- - - - - - 0x02F057 16:B047: 5F B0     .word off_B05F
- D - I - - 0x02F059 16:B049: 90 B0     .word off_B090
- D - I - - 0x02F05B 16:B04B: 9D B0     .word off_B09D
- D - I - - 0x02F05D 16:B04D: 5F B0     .word off_B05F
- D - I - - 0x02F05F 16:B04F: AA B0     .word off_B0AA
- - - - - - 0x02F061 16:B051: 9D B0     .word off_B09D
- - - - - - 0x02F063 16:B053: B7 B0     .word off_B0B7
- - - - - - 0x02F065 16:B055: C2 B0     .word off_B0C2
- - - - - - 0x02F067 16:B057: 9D B0     .word off_B09D
- - - - - - 0x02F069 16:B059: 9D B0     .word off_B09D
- - - - - - 0x02F06B 16:B05B: 9D B0     .word off_B09D
- - - - - - 0x02F06D 16:B05D: 9D B0     .word off_B09D



off_B05F:
- D - I - - 0x02F06F 16:B05F: 08        .byte $08   ; <く>
- D - I - - 0x02F070 16:B060: 02        .byte $02   ; <い>
- D - I - - 0x02F071 16:B061: 0C        .byte $0C   ; <し>
- D - I - - 0x02F072 16:B062: 9E        .byte $9E
- D - I - - 0x02F073 16:B063: 10        .byte $10   ; <た>
- D - I - - 0x02F074 16:B064: 9F        .byte $9F

- D - I - - 0x02F075 16:B065: 00        .byte $00
- D - I - - 0x02F076 16:B066: 03        .byte $03   ; <う>
- D - I - - 0x02F077 16:B067: 5C        .byte $5C   ; <フ>
- D - I - - 0x02F078 16:B068: 9D        .byte $9D
; продолжение


off_B069:
- D - I - - 0x02F079 16:B069: 10        .byte $10   ; <た>
- D - I - - 0x02F07A 16:B06A: 03        .byte $03   ; <う>
- D - I - - 0x02F07B 16:B06B: 09        .byte $09   ; <け>
- D - I - - 0x02F07C 16:B06C: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02F07D 16:B06D: 0D        .byte $0D   ; <す>
- D - I - - 0x02F07E 16:B06E: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02F07F 16:B06F: 11        .byte $11   ; <ち>
- D - I - - 0x02F080 16:B070: AC        .byte $AC   ; <づ>
; продолжение


off_B071:
- D - I - - 0x02F081 16:B071: 18        .byte $18   ; <ね>
- D - I - - 0x02F082 16:B072: 04        .byte $04   ; <え>
- D - I - - 0x02F083 16:B073: 08        .byte $08   ; <く>
- D - I - - 0x02F084 16:B074: AA        .byte $AA   ; <だ>
- D - I - - 0x02F085 16:B075: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F086 16:B076: AB        .byte $AB   ; <ぢ>
- D - I - - 0x02F087 16:B077: 11        .byte $11   ; <ち>
- D - I - - 0x02F088 16:B078: A6        .byte $A6   ; <じ>
- D - I - - 0x02F089 16:B079: 12        .byte $12   ; <つ>
- D - I - - 0x02F08A 16:B07A: AE        .byte $AE   ; <ど>

- D - I - - 0x02F08B 16:B07B: 08        .byte $08   ; <く>
- D - I - - 0x02F08C 16:B07C: 05        .byte $05   ; <お>
- D - I - - 0x02F08D 16:B07D: 46        .byte $46   ; <カ>
- D - I - - 0x02F08E 16:B07E: A7        .byte $A7   ; <ず>
- D - I - - 0x02F08F 16:B07F: 86        .byte $86   ; <F>
- D - I - - 0x02F090 16:B080: B2        .byte $B2   ; <べ>

- D - I - - 0x02F091 16:B081: 10        .byte $10   ; <た>
- D - I - - 0x02F092 16:B082: 06        .byte $06   ; <か>
- D - I - - 0x02F093 16:B083: 45        .byte $45   ; <オ>
- D - I - - 0x02F094 16:B084: AD        .byte $AD   ; <で>
- D - I - - 0x02F095 16:B085: 85        .byte $85   ; <E>
- D - I - - 0x02F096 16:B086: B8        .byte $B8   ; <ゴ>
- D - I - - 0x02F097 16:B087: 91        .byte $91   ; <V>
- D - I - - 0x02F098 16:B088: BB        .byte $BB   ; <ズ>

- D - I - - 0x02F099 16:B089: 08        .byte $08   ; <く>
- D - I - - 0x02F09A 16:B08A: 07        .byte $07   ; <き>
- D - I - - 0x02F09B 16:B08B: 45        .byte $45   ; <オ>
- D - I - - 0x02F09C 16:B08C: AF        .byte $AF   ; <ば>
- D - I - - 0x02F09D 16:B08D: 15        .byte $15   ; <な>
- D - I - - 0x02F09E 16:B08E: BA        .byte $BA   ; <ジ>

- D - I - - 0x02F09F 16:B08F: 01        .byte $01   ; <あ>



off_B090:
- D - I - - 0x02F0A0 16:B090: 08        .byte $08   ; <く>
- D - I - - 0x02F0A1 16:B091: 02        .byte $02   ; <い>
- D - I - - 0x02F0A2 16:B092: 0C        .byte $0C   ; <し>
- D - I - - 0x02F0A3 16:B093: B3        .byte $B3   ; <ぼ>
- D - I - - 0x02F0A4 16:B094: 10        .byte $10   ; <た>
- D - I - - 0x02F0A5 16:B095: B6        .byte $B6   ; <グ>

- D - I - - 0x02F0A6 16:B096: 00        .byte $00
- D - I - - 0x02F0A7 16:B097: 03        .byte $03   ; <う>
- D - I - - 0x02F0A8 16:B098: 5C        .byte $5C   ; <フ>
- D - I - - 0x02F0A9 16:B099: 9D        .byte $9D

- D - I - - 0x02F0AA 16:B09A: 02        .byte $02   ; <い>
- D - I - - 0x02F0AB 16:B09B: 69 B0     .word off_B069



off_B09D:
- D - I - - 0x02F0AD 16:B09D: 08        .byte $08   ; <く>
- D - I - - 0x02F0AE 16:B09E: 02        .byte $02   ; <い>
- D - I - - 0x02F0AF 16:B09F: 0C        .byte $0C   ; <し>
- D - I - - 0x02F0B0 16:B0A0: 9E        .byte $9E
- D - I - - 0x02F0B1 16:B0A1: 10        .byte $10   ; <た>
- D - I - - 0x02F0B2 16:B0A2: B5        .byte $B5   ; <ギ>

- D - I - - 0x02F0B3 16:B0A3: 00        .byte $00
- D - I - - 0x02F0B4 16:B0A4: 03        .byte $03   ; <う>
- D - I - - 0x02F0B5 16:B0A5: 5C        .byte $5C   ; <フ>
- D - I - - 0x02F0B6 16:B0A6: 9D        .byte $9D

- D - I - - 0x02F0B7 16:B0A7: 02        .byte $02   ; <い>
- D - I - - 0x02F0B8 16:B0A8: 69 B0     .word off_B069



off_B0AA:
- D - I - - 0x02F0BA 16:B0AA: 08        .byte $08   ; <く>
- D - I - - 0x02F0BB 16:B0AB: 02        .byte $02   ; <い>
- D - I - - 0x02F0BC 16:B0AC: 0C        .byte $0C   ; <し>
- D - I - - 0x02F0BD 16:B0AD: B9        .byte $B9   ; <ザ>
- D - I - - 0x02F0BE 16:B0AE: 10        .byte $10   ; <た>
- D - I - - 0x02F0BF 16:B0AF: BC        .byte $BC   ; <ゼ>

- D - I - - 0x02F0C0 16:B0B0: 00        .byte $00
- D - I - - 0x02F0C1 16:B0B1: 03        .byte $03   ; <う>
- D - I - - 0x02F0C2 16:B0B2: 5C        .byte $5C   ; <フ>
- D - I - - 0x02F0C3 16:B0B3: 9D        .byte $9D

- D - I - - 0x02F0C4 16:B0B4: 02        .byte $02   ; <い>
- D - I - - 0x02F0C5 16:B0B5: 69 B0     .word off_B069



off_B0B7:
- - - - - - 0x02F0C7 16:B0B7: 00        .byte $00
- - - - - - 0x02F0C8 16:B0B8: 02        .byte $02   ; <い>
- - - - - - 0x02F0C9 16:B0B9: 5C        .byte $5C   ; <フ>
- - - - - - 0x02F0CA 16:B0BA: B7        .byte $B7   ; <ゲ>

- - - - - - 0x02F0CB 16:B0BB: 00        .byte $00
- - - - - - 0x02F0CC 16:B0BC: 03        .byte $03   ; <う>
- - - - - - 0x02F0CD 16:B0BD: 5C        .byte $5C   ; <フ>
- - - - - - 0x02F0CE 16:B0BE: 9D        .byte $9D

- - - - - - 0x02F0CF 16:B0BF: 02        .byte $02   ; <い>
- - - - - - 0x02F0D0 16:B0C0: 69 B0     .word off_B069



off_B0C2:
- - - - - - 0x02F0D2 16:B0C2: 08        .byte $08   ; <く>
- - - - - - 0x02F0D3 16:B0C3: 02        .byte $02   ; <い>
- - - - - - 0x02F0D4 16:B0C4: 0C        .byte $0C   ; <し>
- - - - - - 0x02F0D5 16:B0C5: 9E        .byte $9E
- - - - - - 0x02F0D6 16:B0C6: 10        .byte $10   ; <た>
- - - - - - 0x02F0D7 16:B0C7: 9F        .byte $9F

- - - - - - 0x02F0D8 16:B0C8: 00        .byte $00
- - - - - - 0x02F0D9 16:B0C9: 03        .byte $03   ; <う>
- - - - - - 0x02F0DA 16:B0CA: 5C        .byte $5C   ; <フ>
- - - - - - 0x02F0DB 16:B0CB: 9D        .byte $9D

- - - - - - 0x02F0DC 16:B0CC: 10        .byte $10   ; <た>
- - - - - - 0x02F0DD 16:B0CD: 03        .byte $03   ; <う>
- - - - - - 0x02F0DE 16:B0CE: 09        .byte $09   ; <け>
- - - - - - 0x02F0DF 16:B0CF: B0        .byte $B0   ; <び>
- - - - - - 0x02F0E0 16:B0D0: 0D        .byte $0D   ; <す>
- - - - - - 0x02F0E1 16:B0D1: B1        .byte $B1   ; <ぶ>
- - - - - - 0x02F0E2 16:B0D2: 11        .byte $11   ; <ち>
- - - - - - 0x02F0E3 16:B0D3: B4        .byte $B4   ; <ガ>

- - - - - - 0x02F0E4 16:B0D4: 02        .byte $02   ; <い>
- - - - - - 0x02F0E5 16:B0D5: 71 B0     .word off_B071



off_B0D7_99:
- D - I - - 0x02F0E7 16:B0D7: 03        .byte $03   ; <う>
- D - I - - 0x02F0E8 16:B0D8: E4 B0     .word off_B0E4
- - - - - - 0x02F0EA 16:B0DA: 4F B1     .word off_B14F
- D - I - - 0x02F0EC 16:B0DC: 9B B1     .word off_B19B
- D - I - - 0x02F0EE 16:B0DE: 62 B1     .word off_B162
- D - I - - 0x02F0F0 16:B0E0: 75 B1     .word off_B175
- - - - - - 0x02F0F2 16:B0E2: 88 B1     .word off_B188



off_B0E4:
- D - I - - 0x02F0F4 16:B0E4: 08        .byte $08   ; <く>
- D - I - - 0x02F0F5 16:B0E5: 01        .byte $01   ; <あ>
- D - I - - 0x02F0F6 16:B0E6: 47        .byte $47   ; <キ>
- D - I - - 0x02F0F7 16:B0E7: 3C        .byte $3C   ; <9>
- D - I - - 0x02F0F8 16:B0E8: 87        .byte $87   ; <G>
- D - I - - 0x02F0F9 16:B0E9: 3D        .byte $3D   ; <+>

- D - I - - 0x02F0FA 16:B0EA: 18        .byte $18   ; <ね>
- D - I - - 0x02F0FB 16:B0EB: 02        .byte $02   ; <い>
- D - I - - 0x02F0FC 16:B0EC: 45        .byte $45   ; <オ>
- D - I - - 0x02F0FD 16:B0ED: 3A        .byte $3A   ; <7>
- D - I - - 0x02F0FE 16:B0EE: 47        .byte $47   ; <キ>
- D - I - - 0x02F0FF 16:B0EF: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02F100 16:B0F0: 85        .byte $85   ; <E>
- D - I - - 0x02F101 16:B0F1: 3B        .byte $3B   ; <8>
- D - I - - 0x02F102 16:B0F2: 86        .byte $86   ; <F>
- D - I - - 0x02F103 16:B0F3: 3F        .byte $3F   ; <•>
; продолжение


off_B0F4:
- D - I - - 0x02F104 16:B0F4: 08        .byte $08   ; <く>
- D - I - - 0x02F105 16:B0F5: 01        .byte $01   ; <あ>
- D - I - - 0x02F106 16:B0F6: 92        .byte $92   ; <W>
- D - I - - 0x02F107 16:B0F7: 16        .byte $16   ; <に>
- D - I - - 0x02F108 16:B0F8: DE        .byte $DE
- D - I - - 0x02F109 16:B0F9: 17        .byte $17   ; <ぬ>

- D - I - - 0x02F10A 16:B0FA: 10        .byte $10   ; <た>
- D - I - - 0x02F10B 16:B0FB: 03        .byte $03   ; <う>
- D - I - - 0x02F10C 16:B0FC: 56        .byte $56   ; <ニ>
- D - I - - 0x02F10D 16:B0FD: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02F10E 16:B0FE: 41        .byte $41   ; <ア>
- D - I - - 0x02F10F 16:B0FF: 1A        .byte $1A   ; <は>
- D - I - - 0x02F110 16:B100: 42        .byte $42   ; <イ>
- D - I - - 0x02F111 16:B101: 1D        .byte $1D   ; <へ>

- D - I - - 0x02F112 16:B102: 08        .byte $08   ; <く>
- D - I - - 0x02F113 16:B103: 05        .byte $05   ; <お>
- D - I - - 0x02F114 16:B104: 46        .byte $46   ; <カ>
- D - I - - 0x02F115 16:B105: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F116 16:B106: 86        .byte $86   ; <F>
- D - I - - 0x02F117 16:B107: 31        .byte $31   ; <ゅ>

- D - I - - 0x02F118 16:B108: 08        .byte $08   ; <く>
- D - I - - 0x02F119 16:B109: 06        .byte $06   ; <か>
- D - I - - 0x02F11A 16:B10A: 52        .byte $52   ; <ツ>
- D - I - - 0x02F11B 16:B10B: 15        .byte $15   ; <な>
- D - I - - 0x02F11C 16:B10C: 6E        .byte $6E   ; <ン>
- D - I - - 0x02F11D 16:B10D: 08        .byte $08   ; <く>

- D - I - - 0x02F11E 16:B10E: 10        .byte $10   ; <た>
- D - I - - 0x02F11F 16:B10F: 07        .byte $07   ; <き>
- D - I - - 0x02F120 16:B110: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02F121 16:B111: 22        .byte $22   ; <め>
- D - I - - 0x02F122 16:B112: 6E        .byte $6E   ; <ン>
- D - I - - 0x02F123 16:B113: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F124 16:B114: 52        .byte $52   ; <ツ>
- D - I - - 0x02F125 16:B115: 21        .byte $21   ; <む>
; продолжение


off_B116:
- D - I - - 0x02F126 16:B116: 08        .byte $08   ; <く>
- D - I - - 0x02F127 16:B117: 00        .byte $00
- D - I - - 0x02F128 16:B118: DC        .byte $DC
- D - I - - 0x02F129 16:B119: 11        .byte $11   ; <ち>
- D - I - - 0x02F12A 16:B11A: E0        .byte $E0
- D - I - - 0x02F12B 16:B11B: 14        .byte $14   ; <と>

- D - I - - 0x02F12C 16:B11C: 08        .byte $08   ; <く>
- D - I - - 0x02F12D 16:B11D: 02        .byte $02   ; <い>
- D - I - - 0x02F12E 16:B11E: 41        .byte $41   ; <ア>
- D - I - - 0x02F12F 16:B11F: 0D        .byte $0D   ; <す>
- D - I - - 0x02F130 16:B120: 92        .byte $92   ; <W>
- D - I - - 0x02F131 16:B121: 12        .byte $12   ; <つ>

- D - I - - 0x02F132 16:B122: 18        .byte $18   ; <ね>
- D - I - - 0x02F133 16:B123: 03        .byte $03   ; <う>
- D - I - - 0x02F134 16:B124: 45        .byte $45   ; <オ>
- D - I - - 0x02F135 16:B125: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F136 16:B126: 46        .byte $46   ; <カ>
- D - I - - 0x02F137 16:B127: 28        .byte $28   ; <り>
- D - I - - 0x02F138 16:B128: 85        .byte $85   ; <E>
- D - I - - 0x02F139 16:B129: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F13A 16:B12A: 86        .byte $86   ; <F>
- D - I - - 0x02F13B 16:B12B: 29        .byte $29   ; <る>

- D - I - - 0x02F13C 16:B12C: 18        .byte $18   ; <ね>
- D - I - - 0x02F13D 16:B12D: 04        .byte $04   ; <え>
- D - I - - 0x02F13E 16:B12E: 56        .byte $56   ; <ニ>
- D - I - - 0x02F13F 16:B12F: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F140 16:B130: 42        .byte $42   ; <イ>
- D - I - - 0x02F141 16:B131: 25        .byte $25   ; <ゆ>
- D - I - - 0x02F142 16:B132: 46        .byte $46   ; <カ>
- D - I - - 0x02F143 16:B133: 2A        .byte $2A   ; <れ>
- D - I - - 0x02F144 16:B134: 86        .byte $86   ; <F>
- D - I - - 0x02F145 16:B135: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02F146 16:B136: 20        .byte $20   ; <み>
- D - I - - 0x02F147 16:B137: 05        .byte $05   ; <お>
- D - I - - 0x02F148 16:B138: 52        .byte $52   ; <ツ>
- D - I - - 0x02F149 16:B139: 09        .byte $09   ; <け>
- D - I - - 0x02F14A 16:B13A: 56        .byte $56   ; <ニ>
- D - I - - 0x02F14B 16:B13B: 24        .byte $24   ; <や>
- D - I - - 0x02F14C 16:B13C: 42        .byte $42   ; <イ>
- D - I - - 0x02F14D 16:B13D: 27        .byte $27   ; <ら>
- D - I - - 0x02F14E 16:B13E: 47        .byte $47   ; <キ>
- D - I - - 0x02F14F 16:B13F: 2C        .byte $2C   ; <わ>
- D - I - - 0x02F150 16:B140: 87        .byte $87   ; <G>
- D - I - - 0x02F151 16:B141: 2D        .byte $2D   ; <を>

- D - I - - 0x02F152 16:B142: 10        .byte $10   ; <た>
- D - I - - 0x02F153 16:B143: 06        .byte $06   ; <か>
- D - I - - 0x02F154 16:B144: 56        .byte $56   ; <ニ>
- D - I - - 0x02F155 16:B145: 26        .byte $26   ; <よ>
- D - I - - 0x02F156 16:B146: 47        .byte $47   ; <キ>
- D - I - - 0x02F157 16:B147: 2E        .byte $2E   ; <ん>
- D - I - - 0x02F158 16:B148: 87        .byte $87   ; <G>
- D - I - - 0x02F159 16:B149: 2F        .byte $2F   ; <っ>

- D - I - - 0x02F15A 16:B14A: 00        .byte $00
- D - I - - 0x02F15B 16:B14B: 08        .byte $08   ; <く>
- D - I - - 0x02F15C 16:B14C: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02F15D 16:B14D: 20        .byte $20   ; <み>

- D - I - - 0x02F15E 16:B14E: 01        .byte $01   ; <あ>



off_B14F:
- - - - - - 0x02F15F 16:B14F: 08        .byte $08   ; <く>
- - - - - - 0x02F160 16:B150: 01        .byte $01   ; <あ>
- - - - - - 0x02F161 16:B151: 44        .byte $44   ; <エ>
- - - - - - 0x02F162 16:B152: 1F        .byte $1F   ; <ま>
- - - - - - 0x02F163 16:B153: 84        .byte $84   ; <D>
- - - - - - 0x02F164 16:B154: 37        .byte $37   ; <4>

- - - - - - 0x02F165 16:B155: 18        .byte $18   ; <ね>
- - - - - - 0x02F166 16:B156: 02        .byte $02   ; <い>
- - - - - - 0x02F167 16:B157: 45        .byte $45   ; <オ>
- - - - - - 0x02F168 16:B158: 3A        .byte $3A   ; <7>
- - - - - - 0x02F169 16:B159: 44        .byte $44   ; <エ>
- - - - - - 0x02F16A 16:B15A: 34        .byte $34   ; <1>
- - - - - - 0x02F16B 16:B15B: 85        .byte $85   ; <E>
- - - - - - 0x02F16C 16:B15C: 3B        .byte $3B   ; <8>
- - - - - - 0x02F16D 16:B15D: 86        .byte $86   ; <F>
- - - - - - 0x02F16E 16:B15E: 35        .byte $35   ; <2>

- - - - - - 0x02F16F 16:B15F: 02        .byte $02   ; <い>
- - - - - - 0x02F170 16:B160: F4 B0     .word off_B0F4



off_B162:
- D - I - - 0x02F172 16:B162: 08        .byte $08   ; <く>
- D - I - - 0x02F173 16:B163: 01        .byte $01   ; <あ>
- D - I - - 0x02F174 16:B164: 44        .byte $44   ; <エ>
- D - I - - 0x02F175 16:B165: 48        .byte $48   ; <ク>
- D - I - - 0x02F176 16:B166: 84        .byte $84   ; <D>
- D - I - - 0x02F177 16:B167: 49        .byte $49   ; <ケ>

- D - I - - 0x02F178 16:B168: 18        .byte $18   ; <ね>
- D - I - - 0x02F179 16:B169: 02        .byte $02   ; <い>
- D - I - - 0x02F17A 16:B16A: 45        .byte $45   ; <オ>
- D - I - - 0x02F17B 16:B16B: 3A        .byte $3A   ; <7>
- D - I - - 0x02F17C 16:B16C: 44        .byte $44   ; <エ>
- D - I - - 0x02F17D 16:B16D: 4A        .byte $4A   ; <コ>
- D - I - - 0x02F17E 16:B16E: 85        .byte $85   ; <E>
- D - I - - 0x02F17F 16:B16F: 3B        .byte $3B   ; <8>
- D - I - - 0x02F180 16:B170: 86        .byte $86   ; <F>
- D - I - - 0x02F181 16:B171: 3F        .byte $3F   ; <•>

- D - I - - 0x02F182 16:B172: 02        .byte $02   ; <い>
- D - I - - 0x02F183 16:B173: F4 B0     .word off_B0F4



off_B175:
- D - I - - 0x02F185 16:B175: 08        .byte $08   ; <く>
- D - I - - 0x02F186 16:B176: 01        .byte $01   ; <あ>
- D - I - - 0x02F187 16:B177: 44        .byte $44   ; <エ>
- D - I - - 0x02F188 16:B178: 46        .byte $46   ; <カ>
- D - I - - 0x02F189 16:B179: 84        .byte $84   ; <D>
- D - I - - 0x02F18A 16:B17A: 47        .byte $47   ; <キ>

- D - I - - 0x02F18B 16:B17B: 18        .byte $18   ; <ね>
- D - I - - 0x02F18C 16:B17C: 02        .byte $02   ; <い>
- D - I - - 0x02F18D 16:B17D: 45        .byte $45   ; <オ>
- D - I - - 0x02F18E 16:B17E: 3A        .byte $3A   ; <7>
- D - I - - 0x02F18F 16:B17F: 44        .byte $44   ; <エ>
- D - I - - 0x02F190 16:B180: 4B        .byte $4B   ; <サ>
- D - I - - 0x02F191 16:B181: 85        .byte $85   ; <E>
- D - I - - 0x02F192 16:B182: 3B        .byte $3B   ; <8>
- D - I - - 0x02F193 16:B183: 86        .byte $86   ; <F>
- D - I - - 0x02F194 16:B184: 3F        .byte $3F   ; <•>

- D - I - - 0x02F195 16:B185: 02        .byte $02   ; <い>
- D - I - - 0x02F196 16:B186: F4 B0     .word off_B0F4



off_B188:
- - - - - - 0x02F198 16:B188: 08        .byte $08   ; <く>
- - - - - - 0x02F199 16:B189: 01        .byte $01   ; <あ>
- - - - - - 0x02F19A 16:B18A: 44        .byte $44   ; <エ>
- - - - - - 0x02F19B 16:B18B: 44        .byte $44   ; <エ>
- - - - - - 0x02F19C 16:B18C: 84        .byte $84   ; <D>
- - - - - - 0x02F19D 16:B18D: 45        .byte $45   ; <オ>

- - - - - - 0x02F19E 16:B18E: 18        .byte $18   ; <ね>
- - - - - - 0x02F19F 16:B18F: 02        .byte $02   ; <い>
- - - - - - 0x02F1A0 16:B190: 45        .byte $45   ; <オ>
- - - - - - 0x02F1A1 16:B191: 3A        .byte $3A   ; <7>
- - - - - - 0x02F1A2 16:B192: 44        .byte $44   ; <エ>
- - - - - - 0x02F1A3 16:B193: 42        .byte $42   ; <イ>
- - - - - - 0x02F1A4 16:B194: 85        .byte $85   ; <E>
- - - - - - 0x02F1A5 16:B195: 3B        .byte $3B   ; <8>
- - - - - - 0x02F1A6 16:B196: 86        .byte $86   ; <F>
- - - - - - 0x02F1A7 16:B197: 43        .byte $43   ; <ウ>

- - - - - - 0x02F1A8 16:B198: 02        .byte $02   ; <い>
- - - - - - 0x02F1A9 16:B199: F4 B0     .word off_B0F4



off_B19B:
- D - I - - 0x02F1AB 16:B19B: 10        .byte $10   ; <た>
- D - I - - 0x02F1AC 16:B19C: 01        .byte $01   ; <あ>
- D - I - - 0x02F1AD 16:B19D: 40        .byte $40   ; <「>
- D - I - - 0x02F1AE 16:B19E: 32        .byte $32   ; <ょ>
- D - I - - 0x02F1AF 16:B19F: 44        .byte $44   ; <エ>
- D - I - - 0x02F1B0 16:B1A0: 33        .byte $33   ; <0>
- D - I - - 0x02F1B1 16:B1A1: 84        .byte $84   ; <D>
- D - I - - 0x02F1B2 16:B1A2: 36        .byte $36   ; <3>

- D - I - - 0x02F1B3 16:B1A3: 18        .byte $18   ; <ね>
- D - I - - 0x02F1B4 16:B1A4: 02        .byte $02   ; <い>
- D - I - - 0x02F1B5 16:B1A5: 45        .byte $45   ; <オ>
- D - I - - 0x02F1B6 16:B1A6: 3A        .byte $3A   ; <7>
- D - I - - 0x02F1B7 16:B1A7: 44        .byte $44   ; <エ>
- D - I - - 0x02F1B8 16:B1A8: 38        .byte $38   ; <5>
- D - I - - 0x02F1B9 16:B1A9: 85        .byte $85   ; <E>
- D - I - - 0x02F1BA 16:B1AA: 3B        .byte $3B   ; <8>
- D - I - - 0x02F1BB 16:B1AB: 86        .byte $86   ; <F>
- D - I - - 0x02F1BC 16:B1AC: 39        .byte $39   ; <6>

- D - I - - 0x02F1BD 16:B1AD: 08        .byte $08   ; <く>
- D - I - - 0x02F1BE 16:B1AE: 01        .byte $01   ; <あ>
- D - I - - 0x02F1BF 16:B1AF: 92        .byte $92   ; <W>
- D - I - - 0x02F1C0 16:B1B0: 10        .byte $10   ; <た>
- D - I - - 0x02F1C1 16:B1B1: DF        .byte $DF
- D - I - - 0x02F1C2 16:B1B2: 13        .byte $13   ; <て>

- D - I - - 0x02F1C3 16:B1B3: 10        .byte $10   ; <た>
- D - I - - 0x02F1C4 16:B1B4: 03        .byte $03   ; <う>
- D - I - - 0x02F1C5 16:B1B5: 57        .byte $57   ; <ヌ>
- D - I - - 0x02F1C6 16:B1B6: 0C        .byte $0C   ; <し>
- D - I - - 0x02F1C7 16:B1B7: 41        .byte $41   ; <ア>
- D - I - - 0x02F1C8 16:B1B8: 1A        .byte $1A   ; <は>
- D - I - - 0x02F1C9 16:B1B9: 42        .byte $42   ; <イ>
- D - I - - 0x02F1CA 16:B1BA: 0F        .byte $0F   ; <そ>

- D - I - - 0x02F1CB 16:B1BB: 08        .byte $08   ; <く>
- D - I - - 0x02F1CC 16:B1BC: 04        .byte $04   ; <え>
- D - I - - 0x02F1CD 16:B1BD: 47        .byte $47   ; <キ>
- D - I - - 0x02F1CE 16:B1BE: 18        .byte $18   ; <ね>
- D - I - - 0x02F1CF 16:B1BF: 87        .byte $87   ; <G>
- D - I - - 0x02F1D0 16:B1C0: 19        .byte $19   ; <の>

- D - I - - 0x02F1D1 16:B1C1: 00        .byte $00
- D - I - - 0x02F1D2 16:B1C2: 05        .byte $05   ; <お>
- D - I - - 0x02F1D3 16:B1C3: 53        .byte $53   ; <テ>
- D - I - - 0x02F1D4 16:B1C4: 23        .byte $23   ; <も>

- D - I - - 0x02F1D5 16:B1C5: 08        .byte $08   ; <く>
- D - I - - 0x02F1D6 16:B1C6: 06        .byte $06   ; <か>
- D - I - - 0x02F1D7 16:B1C7: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02F1D8 16:B1C8: 08        .byte $08   ; <く>
- D - I - - 0x02F1D9 16:B1C9: 53        .byte $53   ; <テ>
- D - I - - 0x02F1DA 16:B1CA: 0B        .byte $0B   ; <さ>

- D - I - - 0x02F1DB 16:B1CB: 08        .byte $08   ; <く>
- D - I - - 0x02F1DC 16:B1CC: 07        .byte $07   ; <き>
- D - I - - 0x02F1DD 16:B1CD: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02F1DE 16:B1CE: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F1DF 16:B1CF: 53        .byte $53   ; <テ>
- D - I - - 0x02F1E0 16:B1D0: 21        .byte $21   ; <む>

- D - I - - 0x02F1E1 16:B1D1: 02        .byte $02   ; <い>
- D - I - - 0x02F1E2 16:B1D2: 16 B1     .word off_B116



off_B1D4_9A:
- D - I - - 0x02F1E4 16:B1D4: 08        .byte $08   ; <く>
- D - I - - 0x02F1E5 16:B1D5: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F1E6 16:B1D6: 83        .byte $83   ; <C>
- D - I - - 0x02F1E7 16:B1D7: 4C        .byte $4C   ; <シ>
- D - I - - 0x02F1E8 16:B1D8: C3        .byte $C3   ; <バ>
- D - I - - 0x02F1E9 16:B1D9: 4D        .byte $4D   ; <ス>

- D - I - - 0x02F1EA 16:B1DA: 08        .byte $08   ; <く>
- D - I - - 0x02F1EB 16:B1DB: 00        .byte $00
- D - I - - 0x02F1EC 16:B1DC: 83        .byte $83   ; <C>
- D - I - - 0x02F1ED 16:B1DD: 4E        .byte $4E   ; <セ>
- D - I - - 0x02F1EE 16:B1DE: C3        .byte $C3   ; <バ>
- D - I - - 0x02F1EF 16:B1DF: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02F1F0 16:B1E0: 02        .byte $02   ; <い>
- D - I - - 0x02F1F1 16:B1E1: 9B B1     .word off_B19B



off_B1E3_9B:
- D - I - - 0x02F1F3 16:B1E3: 10        .byte $10   ; <た>
- D - I - - 0x02F1F4 16:B1E4: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F1F5 16:B1E5: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F1F6 16:B1E6: 51        .byte $51   ; <チ>
- D - I - - 0x02F1F7 16:B1E7: 83        .byte $83   ; <C>
- D - I - - 0x02F1F8 16:B1E8: 54        .byte $54   ; <ト>
- D - I - - 0x02F1F9 16:B1E9: C3        .byte $C3   ; <バ>
- D - I - - 0x02F1FA 16:B1EA: 55        .byte $55   ; <ナ>

- D - I - - 0x02F1FB 16:B1EB: 10        .byte $10   ; <た>
- D - I - - 0x02F1FC 16:B1EC: 00        .byte $00
- D - I - - 0x02F1FD 16:B1ED: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F1FE 16:B1EE: 53        .byte $53   ; <テ>
- D - I - - 0x02F1FF 16:B1EF: 83        .byte $83   ; <C>
- D - I - - 0x02F200 16:B1F0: 56        .byte $56   ; <ニ>
- D - I - - 0x02F201 16:B1F1: C3        .byte $C3   ; <バ>
- D - I - - 0x02F202 16:B1F2: 57        .byte $57   ; <ヌ>

- D - I - - 0x02F203 16:B1F3: 00        .byte $00
- D - I - - 0x02F204 16:B1F4: 01        .byte $01   ; <あ>
- D - I - - 0x02F205 16:B1F5: C3        .byte $C3   ; <バ>
- D - I - - 0x02F206 16:B1F6: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02F207 16:B1F7: 02        .byte $02   ; <い>
- D - I - - 0x02F208 16:B1F8: 9B B1     .word off_B19B



off_B1FA_9C:
- D - I - - 0x02F20A 16:B1FA: 10        .byte $10   ; <た>
- D - I - - 0x02F20B 16:B1FB: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F20C 16:B1FC: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F20D 16:B1FD: 50        .byte $50   ; <タ>
- D - I - - 0x02F20E 16:B1FE: 83        .byte $83   ; <C>
- D - I - - 0x02F20F 16:B1FF: 58        .byte $58   ; <ネ>
- D - I - - 0x02F210 16:B200: C3        .byte $C3   ; <バ>
- D - I - - 0x02F211 16:B201: 59        .byte $59   ; <ノ>

- D - I - - 0x02F212 16:B202: 10        .byte $10   ; <た>
- D - I - - 0x02F213 16:B203: 00        .byte $00
- D - I - - 0x02F214 16:B204: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F215 16:B205: 52        .byte $52   ; <ツ>
- D - I - - 0x02F216 16:B206: 83        .byte $83   ; <C>
- D - I - - 0x02F217 16:B207: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02F218 16:B208: C3        .byte $C3   ; <バ>
- D - I - - 0x02F219 16:B209: 5B        .byte $5B   ; <ヒ>

- D - I - - 0x02F21A 16:B20A: 00        .byte $00
- D - I - - 0x02F21B 16:B20B: 01        .byte $01   ; <あ>
- D - I - - 0x02F21C 16:B20C: C3        .byte $C3   ; <バ>
- D - I - - 0x02F21D 16:B20D: 5C        .byte $5C   ; <フ>

- D - I - - 0x02F21E 16:B20E: 02        .byte $02   ; <い>
- D - I - - 0x02F21F 16:B20F: 9B B1     .word off_B19B



off_B211_9D:
- D - I - - 0x02F221 16:B211: 08        .byte $08   ; <く>
- D - I - - 0x02F222 16:B212: 03        .byte $03   ; <う>
- D - I - - 0x02F223 16:B213: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F224 16:B214: 4C        .byte $4C   ; <シ>
- D - I - - 0x02F225 16:B215: 13        .byte $13   ; <て>
- D - I - - 0x02F226 16:B216: 4D        .byte $4D   ; <ス>
- D - I - - 0x02F227 16:B217: 08        .byte $08   ; <く>

- D - I - - 0x02F228 16:B218: 04        .byte $04   ; <え>
- D - I - - 0x02F229 16:B219: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F22A 16:B21A: 4E        .byte $4E   ; <セ>
- D - I - - 0x02F22B 16:B21B: 13        .byte $13   ; <て>
- D - I - - 0x02F22C 16:B21C: 4F        .byte $4F   ; <ソ>

- D - I - - 0x02F22D 16:B21D: 01        .byte $01   ; <あ>



off_B21E_9E:
- D - I - - 0x02F22E 16:B21E: 00        .byte $00
- D - I - - 0x02F22F 16:B21F: 04        .byte $04   ; <え>
- D - I - - 0x02F230 16:B220: 45        .byte $45   ; <オ>
- D - I - - 0x02F231 16:B221: 91        .byte $91   ; <V>

- D - I - - 0x02F232 16:B222: 00        .byte $00
- D - I - - 0x02F233 16:B223: 05        .byte $05   ; <お>
- D - I - - 0x02F234 16:B224: 45        .byte $45   ; <オ>
- D - I - - 0x02F235 16:B225: 93        .byte $93   ; <Y>

- D - I - - 0x02F236 16:B226: 00        .byte $00
- D - I - - 0x02F237 16:B227: 06        .byte $06   ; <か>
- D - I - - 0x02F238 16:B228: 45        .byte $45   ; <オ>
- D - I - - 0x02F239 16:B229: 99        .byte $99
; продолжение

off_B22A:
- D - I - - 0x02F23A 16:B22A: 03        .byte $03   ; <う>
- D - I - - 0x02F23B 16:B22B: 43 B2     .word off_B243
- D - I - - 0x02F23D 16:B22D: 76 B2     .word off_B276
- D - I - - 0x02F23F 16:B22F: 87 B2     .word off_B287
- D - I - - 0x02F241 16:B231: 43 B2     .word off_B243
- D - I - - 0x02F243 16:B233: 92 B2     .word off_B292
- D - I - - 0x02F245 16:B235: 43 B2     .word off_B243
- D - I - - 0x02F247 16:B237: 9F B2     .word off_B29F
- D - I - - 0x02F249 16:B239: B7 B2     .word off_B2B7
- D - I - - 0x02F24B 16:B23B: 87 B2     .word off_B287
- D - I - - 0x02F24D 16:B23D: AA B2     .word off_B2AA
- D - I - - 0x02F24F 16:B23F: 87 B2     .word off_B287
- D - I - - 0x02F251 16:B241: 87 B2     .word off_B287



off_B243:
- D - I - - 0x02F253 16:B243: 00        .byte $00
- D - I - - 0x02F254 16:B244: 02        .byte $02   ; <い>
- D - I - - 0x02F255 16:B245: 44        .byte $44   ; <エ>
- D - I - - 0x02F256 16:B246: A8        .byte $A8   ; <ぜ>

- D - I - - 0x02F257 16:B247: 00        .byte $00
- D - I - - 0x02F258 16:B248: 03        .byte $03   ; <う>
- D - I - - 0x02F259 16:B249: 44        .byte $44   ; <エ>
- D - I - - 0x02F25A 16:B24A: AA        .byte $AA   ; <だ>

off_B24B:
- D - I - - 0x02F25B 16:B24B: 00        .byte $00
- D - I - - 0x02F25C 16:B24C: 02        .byte $02   ; <い>
- D - I - - 0x02F25D 16:B24D: 85        .byte $85   ; <E>
- D - I - - 0x02F25E 16:B24E: 87        .byte $87   ; <G>

- D - I - - 0x02F25F 16:B24F: 08        .byte $08   ; <く>
- D - I - - 0x02F260 16:B250: 03        .byte $03   ; <う>
- D - I - - 0x02F261 16:B251: 41        .byte $41   ; <ア>
- D - I - - 0x02F262 16:B252: 89        .byte $89   ; <I>
- D - I - - 0x02F263 16:B253: 85        .byte $85   ; <E>
- D - I - - 0x02F264 16:B254: 8D        .byte $8D   ; <P>
; продолжение


off_B255:
- D - I - - 0x02F265 16:B255: 00        .byte $00
- D - I - - 0x02F266 16:B256: 01        .byte $01   ; <あ>
- D - I - - 0x02F267 16:B257: 85        .byte $85   ; <E>
- D - I - - 0x02F268 16:B258: 85        .byte $85   ; <E>

- D - I - - 0x02F269 16:B259: 00        .byte $00
- D - I - - 0x02F26A 16:B25A: 02        .byte $02   ; <い>
- D - I - - 0x02F26B 16:B25B: 45        .byte $45   ; <オ>
- D - I - - 0x02F26C 16:B25C: 86        .byte $86   ; <F>

- D - I - - 0x02F26D 16:B25D: 00        .byte $00
- D - I - - 0x02F26E 16:B25E: 03        .byte $03   ; <う>
- D - I - - 0x02F26F 16:B25F: 45        .byte $45   ; <オ>
- D - I - - 0x02F270 16:B260: 8C        .byte $8C   ; <M>

- D - I - - 0x02F271 16:B261: 10        .byte $10   ; <た>
- D - I - - 0x02F272 16:B262: 04        .byte $04   ; <え>
- D - I - - 0x02F273 16:B263: 42        .byte $42   ; <イ>
- D - I - - 0x02F274 16:B264: 8B        .byte $8B   ; <K>
- D - I - - 0x02F275 16:B265: 46        .byte $46   ; <カ>
- D - I - - 0x02F276 16:B266: 8E        .byte $8E   ; <L>
- D - I - - 0x02F277 16:B267: 86        .byte $86   ; <F>
- D - I - - 0x02F278 16:B268: 94        .byte $94

- D - I - - 0x02F279 16:B269: 08        .byte $08   ; <く>
- D - I - - 0x02F27A 16:B26A: 05        .byte $05   ; <お>
- D - I - - 0x02F27B 16:B26B: 55        .byte $55   ; <ナ>
- D - I - - 0x02F27C 16:B26C: A0        .byte $A0   ; <が>
- D - I - - 0x02F27D 16:B26D: 41        .byte $41   ; <ア>
- D - I - - 0x02F27E 16:B26E: A1        .byte $A1   ; <ぎ>

- D - I - - 0x02F27F 16:B26F: 08        .byte $08   ; <く>
- D - I - - 0x02F280 16:B270: 06        .byte $06   ; <か>
- D - I - - 0x02F281 16:B271: 55        .byte $55   ; <ナ>
- D - I - - 0x02F282 16:B272: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02F283 16:B273: 41        .byte $41   ; <ア>
- D - I - - 0x02F284 16:B274: A3        .byte $A3   ; <げ>

- D - I - - 0x02F285 16:B275: 01        .byte $01   ; <あ>



off_B276:
- D - I - - 0x02F286 16:B276: 00        .byte $00
- D - I - - 0x02F287 16:B277: 01        .byte $01   ; <あ>
- D - I - - 0x02F288 16:B278: 44        .byte $44   ; <エ>
- D - I - - 0x02F289 16:B279: A9        .byte $A9   ; <ぞ>

- D - I - - 0x02F28A 16:B27A: 08        .byte $08   ; <く>
- D - I - - 0x02F28B 16:B27B: 02        .byte $02   ; <い>
- D - I - - 0x02F28C 16:B27C: 44        .byte $44   ; <エ>
- D - I - - 0x02F28D 16:B27D: AB        .byte $AB   ; <ぢ>
- D - I - - 0x02F28E 16:B27E: 84        .byte $84   ; <D>
- D - I - - 0x02F28F 16:B27F: AE        .byte $AE   ; <ど>

- D - I - - 0x02F290 16:B280: 00        .byte $00
- D - I - - 0x02F291 16:B281: 03        .byte $03   ; <う>
- D - I - - 0x02F292 16:B282: 44        .byte $44   ; <エ>
- D - I - - 0x02F293 16:B283: AA        .byte $AA   ; <だ>

- D - I - - 0x02F294 16:B284: 02        .byte $02   ; <い>
- D - I - - 0x02F295 16:B285: 4B B2     .word off_B24B



off_B287:
- D - I - - 0x02F297 16:B287: 00        .byte $00
- D - I - - 0x02F298 16:B288: 02        .byte $02   ; <い>
- D - I - - 0x02F299 16:B289: 44        .byte $44   ; <エ>
- D - I - - 0x02F29A 16:B28A: AC        .byte $AC   ; <づ>

- D - I - - 0x02F29B 16:B28B: 00        .byte $00
- D - I - - 0x02F29C 16:B28C: 03        .byte $03   ; <う>
- D - I - - 0x02F29D 16:B28D: 44        .byte $44   ; <エ>
- D - I - - 0x02F29E 16:B28E: AA        .byte $AA   ; <だ>

- D - I - - 0x02F29F 16:B28F: 02        .byte $02   ; <い>
- D - I - - 0x02F2A0 16:B290: 4B B2     .word off_B24B



off_B292:
- D - I - - 0x02F2A2 16:B292: 08        .byte $08   ; <く>
- D - I - - 0x02F2A3 16:B293: 02        .byte $02   ; <い>
- D - I - - 0x02F2A4 16:B294: 40        .byte $40   ; <「>
- D - I - - 0x02F2A5 16:B295: A7        .byte $A7   ; <ず>
- D - I - - 0x02F2A6 16:B296: 44        .byte $44   ; <エ>
- D - I - - 0x02F2A7 16:B297: B2        .byte $B2   ; <べ>

- D - I - - 0x02F2A8 16:B298: 00        .byte $00
- D - I - - 0x02F2A9 16:B299: 03        .byte $03   ; <う>
- D - I - - 0x02F2AA 16:B29A: 44        .byte $44   ; <エ>
- D - I - - 0x02F2AB 16:B29B: AA        .byte $AA   ; <だ>

- D - I - - 0x02F2AC 16:B29C: 02        .byte $02   ; <い>
- D - I - - 0x02F2AD 16:B29D: 4B B2     .word off_B24B



off_B29F:
- D - I - - 0x02F2AF 16:B29F: 00        .byte $00
- D - I - - 0x02F2B0 16:B2A0: 02        .byte $02   ; <い>
- D - I - - 0x02F2B1 16:B2A1: 44        .byte $44   ; <エ>
- D - I - - 0x02F2B2 16:B2A2: AD        .byte $AD   ; <で>

- D - I - - 0x02F2B3 16:B2A3: 00        .byte $00
- D - I - - 0x02F2B4 16:B2A4: 03        .byte $03   ; <う>
- D - I - - 0x02F2B5 16:B2A5: 44        .byte $44   ; <エ>
- D - I - - 0x02F2B6 16:B2A6: AA        .byte $AA   ; <だ>

- D - I - - 0x02F2B7 16:B2A7: 02        .byte $02   ; <い>
- D - I - - 0x02F2B8 16:B2A8: 4B B2     .word off_B24B



off_B2AA:
- D - I - - 0x02F2BA 16:B2AA: 08        .byte $08   ; <く>
- D - I - - 0x02F2BB 16:B2AB: 02        .byte $02   ; <い>
- D - I - - 0x02F2BC 16:B2AC: 40        .byte $40   ; <「>
- D - I - - 0x02F2BD 16:B2AD: A7        .byte $A7   ; <ず>
- D - I - - 0x02F2BE 16:B2AE: 44        .byte $44   ; <エ>
- D - I - - 0x02F2BF 16:B2AF: A8        .byte $A8   ; <ぜ>

- D - I - - 0x02F2C0 16:B2B0: 00        .byte $00
- D - I - - 0x02F2C1 16:B2B1: 03        .byte $03   ; <う>
- D - I - - 0x02F2C2 16:B2B2: 44        .byte $44   ; <エ>
- D - I - - 0x02F2C3 16:B2B3: AA        .byte $AA   ; <だ>

- D - I - - 0x02F2C4 16:B2B4: 02        .byte $02   ; <い>
- D - I - - 0x02F2C5 16:B2B5: 4B B2     .word off_B24B



off_B2B7:
- D - I - - 0x02F2C7 16:B2B7: 00        .byte $00
- D - I - - 0x02F2C8 16:B2B8: 02        .byte $02   ; <い>
- D - I - - 0x02F2C9 16:B2B9: 44        .byte $44   ; <エ>
- D - I - - 0x02F2CA 16:B2BA: A8        .byte $A8   ; <ぜ>

- D - I - - 0x02F2CB 16:B2BB: 00        .byte $00
- D - I - - 0x02F2CC 16:B2BC: 03        .byte $03   ; <う>
- D - I - - 0x02F2CD 16:B2BD: 44        .byte $44   ; <エ>
- D - I - - 0x02F2CE 16:B2BE: AA        .byte $AA   ; <だ>

- D - I - - 0x02F2CF 16:B2BF: 00        .byte $00
- D - I - - 0x02F2D0 16:B2C0: 02        .byte $02   ; <い>
- D - I - - 0x02F2D1 16:B2C1: 85        .byte $85   ; <E>
- D - I - - 0x02F2D2 16:B2C2: 90        .byte $90   ; <U>

- D - I - - 0x02F2D3 16:B2C3: 08        .byte $08   ; <く>
- D - I - - 0x02F2D4 16:B2C4: 03        .byte $03   ; <う>
- D - I - - 0x02F2D5 16:B2C5: 41        .byte $41   ; <ア>
- D - I - - 0x02F2D6 16:B2C6: 8A        .byte $8A   ; <N>
- D - I - - 0x02F2D7 16:B2C7: 85        .byte $85   ; <E>
- D - I - - 0x02F2D8 16:B2C8: 92        .byte $92   ; <W>

- D - I - - 0x02F2D9 16:B2C9: 02        .byte $02   ; <い>
- D - I - - 0x02F2DA 16:B2CA: 55 B2     .word off_B255



off_B2CC_9F:
- D - I - - 0x02F2DC 16:B2CC: 00        .byte $00
- D - I - - 0x02F2DD 16:B2CD: 03        .byte $03   ; <う>
- D - I - - 0x02F2DE 16:B2CE: 45        .byte $45   ; <オ>
- D - I - - 0x02F2DF 16:B2CF: 95        .byte $95

- D - I - - 0x02F2E0 16:B2D0: 08        .byte $08   ; <く>
- D - I - - 0x02F2E1 16:B2D1: 04        .byte $04   ; <え>
- D - I - - 0x02F2E2 16:B2D2: 43        .byte $43   ; <ウ>
- D - I - - 0x02F2E3 16:B2D3: 96        .byte $96
- D - I - - 0x02F2E4 16:B2D4: 45        .byte $45   ; <オ>
- D - I - - 0x02F2E5 16:B2D5: 97        .byte $97

- D - I - - 0x02F2E6 16:B2D6: 02        .byte $02   ; <い>
- D - I - - 0x02F2E7 16:B2D7: 2A B2     .word off_B22A



off_B2D9_A0:
- D - I - - 0x02F2E9 16:B2D9: 03        .byte $03   ; <う>
- D - I - - 0x02F2EA 16:B2DA: E6 B2     .word off_B2E6
- - - - - - 0x02F2EC 16:B2DC: 25 B3     .word off_B325
- D - I - - 0x02F2EE 16:B2DE: 3C B3     .word off_B33C
- D - I - - 0x02F2F0 16:B2E0: 81 B3     .word off_B381
- D - I - - 0x02F2F2 16:B2E2: 9A B3     .word off_B39A
- D - I - - 0x02F2F4 16:B2E4: B1 B3     .word off_B3B1



off_B2E6:
- D - I - - 0x02F2F6 16:B2E6: 00        .byte $00
- D - I - - 0x02F2F7 16:B2E7: 04        .byte $04   ; <え>
- D - I - - 0x02F2F8 16:B2E8: 46        .byte $46   ; <カ>
- D - I - - 0x02F2F9 16:B2E9: 9C        .byte $9C

- D - I - - 0x02F2FA 16:B2EA: 00        .byte $00
- D - I - - 0x02F2FB 16:B2EB: 05        .byte $05   ; <お>
- D - I - - 0x02F2FC 16:B2EC: 46        .byte $46   ; <カ>
- D - I - - 0x02F2FD 16:B2ED: 93        .byte $93   ; <Y>

- D - I - - 0x02F2FE 16:B2EE: 00        .byte $00
- D - I - - 0x02F2FF 16:B2EF: 06        .byte $06   ; <か>
- D - I - - 0x02F300 16:B2F0: 46        .byte $46   ; <カ>
- D - I - - 0x02F301 16:B2F1: 99        .byte $99
; продолжение


off_B2F2:
- D - I - - 0x02F302 16:B2F2: 08        .byte $08   ; <く>
- D - I - - 0x02F303 16:B2F3: 02        .byte $02   ; <い>
- D - I - - 0x02F304 16:B2F4: 43        .byte $43   ; <ウ>
- D - I - - 0x02F305 16:B2F5: AF        .byte $AF   ; <ば>
- D - I - - 0x02F306 16:B2F6: 47        .byte $47   ; <キ>
- D - I - - 0x02F307 16:B2F7: BA        .byte $BA   ; <ジ>

- D - I - - 0x02F308 16:B2F8: 00        .byte $00
- D - I - - 0x02F309 16:B2F9: 03        .byte $03   ; <う>
- D - I - - 0x02F30A 16:B2FA: 44        .byte $44   ; <エ>
- D - I - - 0x02F30B 16:B2FB: AA        .byte $AA   ; <だ>
; продолжение


off_B2FC:
- D - I - - 0x02F30C 16:B2FC: 00        .byte $00
- D - I - - 0x02F30D 16:B2FD: 01        .byte $01   ; <あ>
- D - I - - 0x02F30E 16:B2FE: 86        .byte $86   ; <F>
- D - I - - 0x02F30F 16:B2FF: 98        .byte $98

- D - I - - 0x02F310 16:B300: 10        .byte $10   ; <た>
- D - I - - 0x02F311 16:B301: 02        .byte $02   ; <い>
- D - I - - 0x02F312 16:B302: 45        .byte $45   ; <オ>
- D - I - - 0x02F313 16:B303: 82        .byte $82   ; <B>
- D - I - - 0x02F314 16:B304: 46        .byte $46   ; <カ>
- D - I - - 0x02F315 16:B305: 8F        .byte $8F   ; <S>
- D - I - - 0x02F316 16:B306: 86        .byte $86   ; <F>
- D - I - - 0x02F317 16:B307: 9A        .byte $9A

- D - I - - 0x02F318 16:B308: 10        .byte $10   ; <た>
- D - I - - 0x02F319 16:B309: 03        .byte $03   ; <う>
- D - I - - 0x02F31A 16:B30A: 42        .byte $42   ; <イ>
- D - I - - 0x02F31B 16:B30B: 88        .byte $88   ; <H>
- D - I - - 0x02F31C 16:B30C: 45        .byte $45   ; <オ>
- D - I - - 0x02F31D 16:B30D: 8C        .byte $8C   ; <M>
- D - I - - 0x02F31E 16:B30E: 85        .byte $85   ; <E>
- D - I - - 0x02F31F 16:B30F: 8D        .byte $8D   ; <P>

- D - I - - 0x02F320 16:B310: 10        .byte $10   ; <た>
- D - I - - 0x02F321 16:B311: 04        .byte $04   ; <え>
- D - I - - 0x02F322 16:B312: 42        .byte $42   ; <イ>
- D - I - - 0x02F323 16:B313: A4        .byte $A4   ; <ご>
- D - I - - 0x02F324 16:B314: 46        .byte $46   ; <カ>
- D - I - - 0x02F325 16:B315: A5        .byte $A5   ; <ざ>
- D - I - - 0x02F326 16:B316: 86        .byte $86   ; <F>
- D - I - - 0x02F327 16:B317: 9D        .byte $9D

- D - I - - 0x02F328 16:B318: 08        .byte $08   ; <く>
- D - I - - 0x02F329 16:B319: 05        .byte $05   ; <お>
- D - I - - 0x02F32A 16:B31A: 56        .byte $56   ; <ニ>
- D - I - - 0x02F32B 16:B31B: A0        .byte $A0   ; <が>
- D - I - - 0x02F32C 16:B31C: 42        .byte $42   ; <イ>
- D - I - - 0x02F32D 16:B31D: A6        .byte $A6   ; <じ>

- D - I - - 0x02F32E 16:B31E: 08        .byte $08   ; <く>
- D - I - - 0x02F32F 16:B31F: 06        .byte $06   ; <か>
- D - I - - 0x02F330 16:B320: 56        .byte $56   ; <ニ>
- D - I - - 0x02F331 16:B321: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02F332 16:B322: 42        .byte $42   ; <イ>
- D - I - - 0x02F333 16:B323: A3        .byte $A3   ; <げ>

- D - I - - 0x02F334 16:B324: 01        .byte $01   ; <あ>



off_B325:
- - - - - - 0x02F335 16:B325: 00        .byte $00
- - - - - - 0x02F336 16:B326: 04        .byte $04   ; <え>
- - - - - - 0x02F337 16:B327: 46        .byte $46   ; <カ>
- - - - - - 0x02F338 16:B328: 9C        .byte $9C

- - - - - - 0x02F339 16:B329: 00        .byte $00
- - - - - - 0x02F33A 16:B32A: 05        .byte $05   ; <お>
- - - - - - 0x02F33B 16:B32B: 46        .byte $46   ; <カ>
- - - - - - 0x02F33C 16:B32C: 93        .byte $93   ; <Y>

- - - - - - 0x02F33D 16:B32D: 00        .byte $00
- - - - - - 0x02F33E 16:B32E: 06        .byte $06   ; <か>
- - - - - - 0x02F33F 16:B32F: 46        .byte $46   ; <カ>
- - - - - - 0x02F340 16:B330: 99        .byte $99
; продолжение


off_B331:
- - - - - - 0x02F341 16:B331: 00        .byte $00
- - - - - - 0x02F342 16:B332: 02        .byte $02   ; <い>
- - - - - - 0x02F343 16:B333: 44        .byte $44   ; <エ>
- - - - - - 0x02F344 16:B334: 9F        .byte $9F

- - - - - - 0x02F345 16:B335: 00        .byte $00
- - - - - - 0x02F346 16:B336: 03        .byte $03   ; <う>
- - - - - - 0x02F347 16:B337: 44        .byte $44   ; <エ>
- - - - - - 0x02F348 16:B338: B5        .byte $B5   ; <ギ>

- - - - - - 0x02F349 16:B339: 02        .byte $02   ; <い>
- - - - - - 0x02F34A 16:B33A: FC B2     .word off_B2FC



off_B33C:
- D - I - - 0x02F34C 16:B33C: 00        .byte $00
- D - I - - 0x02F34D 16:B33D: 05        .byte $05   ; <お>
- D - I - - 0x02F34E 16:B33E: 47        .byte $47   ; <キ>
- D - I - - 0x02F34F 16:B33F: 93        .byte $93   ; <Y>

- D - I - - 0x02F350 16:B340: 00        .byte $00
- D - I - - 0x02F351 16:B341: 06        .byte $06   ; <か>
- D - I - - 0x02F352 16:B342: 47        .byte $47   ; <キ>
- D - I - - 0x02F353 16:B343: 99        .byte $99

- D - I - - 0x02F354 16:B344: 08        .byte $08   ; <く>
- D - I - - 0x02F355 16:B345: 04        .byte $04   ; <え>
- D - I - - 0x02F356 16:B346: 47        .byte $47   ; <キ>
- D - I - - 0x02F357 16:B347: 84        .byte $84   ; <D>
- D - I - - 0x02F358 16:B348: 46        .byte $46   ; <カ>
- D - I - - 0x02F359 16:B349: 9C        .byte $9C
; продолжение


off_B34A:
- D - I - - 0x02F35A 16:B34A: 00        .byte $00
- D - I - - 0x02F35B 16:B34B: 01        .byte $01   ; <あ>
- D - I - - 0x02F35C 16:B34C: 44        .byte $44   ; <エ>
- D - I - - 0x02F35D 16:B34D: B9        .byte $B9   ; <ザ>

- D - I - - 0x02F35E 16:B34E: 08        .byte $08   ; <く>
- D - I - - 0x02F35F 16:B34F: 02        .byte $02   ; <い>
- D - I - - 0x02F360 16:B350: 44        .byte $44   ; <エ>
- D - I - - 0x02F361 16:B351: BB        .byte $BB   ; <ズ>
- D - I - - 0x02F362 16:B352: 84        .byte $84   ; <D>
- D - I - - 0x02F363 16:B353: B3        .byte $B3   ; <ぼ>

- D - I - - 0x02F364 16:B354: 00        .byte $00
- D - I - - 0x02F365 16:B355: 03        .byte $03   ; <う>
- D - I - - 0x02F366 16:B356: 44        .byte $44   ; <エ>
- D - I - - 0x02F367 16:B357: AA        .byte $AA   ; <だ>

- D - I - - 0x02F368 16:B358: 00        .byte $00
- D - I - - 0x02F369 16:B359: 01        .byte $01   ; <あ>
- D - I - - 0x02F36A 16:B35A: 86        .byte $86   ; <F>
- D - I - - 0x02F36B 16:B35B: 85        .byte $85   ; <E>

- D - I - - 0x02F36C 16:B35C: 10        .byte $10   ; <た>
- D - I - - 0x02F36D 16:B35D: 02        .byte $02   ; <い>
- D - I - - 0x02F36E 16:B35E: 45        .byte $45   ; <オ>
- D - I - - 0x02F36F 16:B35F: 82        .byte $82   ; <B>
- D - I - - 0x02F370 16:B360: 46        .byte $46   ; <カ>
- D - I - - 0x02F371 16:B361: 8F        .byte $8F   ; <S>
- D - I - - 0x02F372 16:B362: 86        .byte $86   ; <F>
- D - I - - 0x02F373 16:B363: B0        .byte $B0   ; <び>

- D - I - - 0x02F374 16:B364: 10        .byte $10   ; <た>
- D - I - - 0x02F375 16:B365: 03        .byte $03   ; <う>
- D - I - - 0x02F376 16:B366: 42        .byte $42   ; <イ>
- D - I - - 0x02F377 16:B367: 89        .byte $89   ; <I>
- D - I - - 0x02F378 16:B368: 45        .byte $45   ; <オ>
- D - I - - 0x02F379 16:B369: 8C        .byte $8C   ; <M>
- D - I - - 0x02F37A 16:B36A: 85        .byte $85   ; <E>
- D - I - - 0x02F37B 16:B36B: 8D        .byte $8D   ; <P>

- D - I - - 0x02F37C 16:B36C: 10        .byte $10   ; <た>
- D - I - - 0x02F37D 16:B36D: 04        .byte $04   ; <え>
- D - I - - 0x02F37E 16:B36E: 42        .byte $42   ; <イ>
- D - I - - 0x02F37F 16:B36F: A4        .byte $A4   ; <ご>
- D - I - - 0x02F380 16:B370: 46        .byte $46   ; <カ>
- D - I - - 0x02F381 16:B371: A5        .byte $A5   ; <ざ>
- D - I - - 0x02F382 16:B372: 86        .byte $86   ; <F>
- D - I - - 0x02F383 16:B373: 9D        .byte $9D

- D - I - - 0x02F384 16:B374: 08        .byte $08   ; <く>
- D - I - - 0x02F385 16:B375: 05        .byte $05   ; <お>
- D - I - - 0x02F386 16:B376: 57        .byte $57   ; <ヌ>
- D - I - - 0x02F387 16:B377: A0        .byte $A0   ; <が>
- D - I - - 0x02F388 16:B378: 43        .byte $43   ; <ウ>
- D - I - - 0x02F389 16:B379: A6        .byte $A6   ; <じ>

- D - I - - 0x02F38A 16:B37A: 08        .byte $08   ; <く>
- D - I - - 0x02F38B 16:B37B: 06        .byte $06   ; <か>
- D - I - - 0x02F38C 16:B37C: 57        .byte $57   ; <ヌ>
- D - I - - 0x02F38D 16:B37D: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02F38E 16:B37E: 43        .byte $43   ; <ウ>
- D - I - - 0x02F38F 16:B37F: A3        .byte $A3   ; <げ>

- D - I - - 0x02F390 16:B380: 01        .byte $01   ; <あ>



off_B381:
- D - I - - 0x02F391 16:B381: 00        .byte $00
- D - I - - 0x02F392 16:B382: 04        .byte $04   ; <え>
- D - I - - 0x02F393 16:B383: 46        .byte $46   ; <カ>
- D - I - - 0x02F394 16:B384: 9C        .byte $9C

- D - I - - 0x02F395 16:B385: 00        .byte $00
- D - I - - 0x02F396 16:B386: 05        .byte $05   ; <お>
- D - I - - 0x02F397 16:B387: 46        .byte $46   ; <カ>
- D - I - - 0x02F398 16:B388: 93        .byte $93   ; <Y>

- D - I - - 0x02F399 16:B389: 00        .byte $00
- D - I - - 0x02F39A 16:B38A: 06        .byte $06   ; <か>
- D - I - - 0x02F39B 16:B38B: 46        .byte $46   ; <カ>
- D - I - - 0x02F39C 16:B38C: 99        .byte $99
; продолжение


off_B38D:
- D - I - - 0x02F39D 16:B38D: 08        .byte $08   ; <く>
- D - I - - 0x02F39E 16:B38E: 02        .byte $02   ; <い>
- D - I - - 0x02F39F 16:B38F: 40        .byte $40   ; <「>
- D - I - - 0x02F3A0 16:B390: A7        .byte $A7   ; <ず>
- D - I - - 0x02F3A1 16:B391: 44        .byte $44   ; <エ>
- D - I - - 0x02F3A2 16:B392: B2        .byte $B2   ; <べ>

- D - I - - 0x02F3A3 16:B393: 00        .byte $00
- D - I - - 0x02F3A4 16:B394: 03        .byte $03   ; <う>
- D - I - - 0x02F3A5 16:B395: 44        .byte $44   ; <エ>
- D - I - - 0x02F3A6 16:B396: AA        .byte $AA   ; <だ>

- D - I - - 0x02F3A7 16:B397: 02        .byte $02   ; <い>
- D - I - - 0x02F3A8 16:B398: FC B2     .word off_B2FC



off_B39A:
- D - I - - 0x02F3AA 16:B39A: 00        .byte $00
- D - I - - 0x02F3AB 16:B39B: 04        .byte $04   ; <え>
- D - I - - 0x02F3AC 16:B39C: 46        .byte $46   ; <カ>
- D - I - - 0x02F3AD 16:B39D: 9C        .byte $9C

- D - I - - 0x02F3AE 16:B39E: 00        .byte $00
- D - I - - 0x02F3AF 16:B39F: 05        .byte $05   ; <お>
- D - I - - 0x02F3B0 16:B3A0: 46        .byte $46   ; <カ>
- D - I - - 0x02F3B1 16:B3A1: 93        .byte $93   ; <Y>

- D - I - - 0x02F3B2 16:B3A2: 00        .byte $00
- D - I - - 0x02F3B3 16:B3A3: 06        .byte $06   ; <か>
- D - I - - 0x02F3B4 16:B3A4: 46        .byte $46   ; <カ>
- D - I - - 0x02F3B5 16:B3A5: 99        .byte $99
; продолжение


off_B3A6:
- D - I - - 0x02F3B6 16:B3A6: 00        .byte $00
- D - I - - 0x02F3B7 16:B3A7: 02        .byte $02   ; <い>
- D - I - - 0x02F3B8 16:B3A8: 44        .byte $44   ; <エ>
- D - I - - 0x02F3B9 16:B3A9: B7        .byte $B7   ; <ゲ>

- D - I - - 0x02F3BA 16:B3AA: 00        .byte $00
- D - I - - 0x02F3BB 16:B3AB: 03        .byte $03   ; <う>
- D - I - - 0x02F3BC 16:B3AC: 44        .byte $44   ; <エ>
- D - I - - 0x02F3BD 16:B3AD: AA        .byte $AA   ; <だ>

- D - I - - 0x02F3BE 16:B3AE: 02        .byte $02   ; <い>
- D - I - - 0x02F3BF 16:B3AF: FC B2     .word off_B2FC



off_B3B1:
- D - I - - 0x02F3C1 16:B3B1: 00        .byte $00
- D - I - - 0x02F3C2 16:B3B2: 04        .byte $04   ; <え>
- D - I - - 0x02F3C3 16:B3B3: 46        .byte $46   ; <カ>
- D - I - - 0x02F3C4 16:B3B4: 9C        .byte $9C

- D - I - - 0x02F3C5 16:B3B5: 00        .byte $00
- D - I - - 0x02F3C6 16:B3B6: 05        .byte $05   ; <お>
- D - I - - 0x02F3C7 16:B3B7: 46        .byte $46   ; <カ>
- D - I - - 0x02F3C8 16:B3B8: 93        .byte $93   ; <Y>

- D - I - - 0x02F3C9 16:B3B9: 00        .byte $00
- D - I - - 0x02F3CA 16:B3BA: 06        .byte $06   ; <か>
- D - I - - 0x02F3CB 16:B3BB: 46        .byte $46   ; <カ>
- D - I - - 0x02F3CC 16:B3BC: 99        .byte $99
; продолжение


off_B3BD:
- D - I - - 0x02F3CD 16:B3BD: 00        .byte $00
- D - I - - 0x02F3CE 16:B3BE: 02        .byte $02   ; <い>
- D - I - - 0x02F3CF 16:B3BF: 44        .byte $44   ; <エ>
- D - I - - 0x02F3D0 16:B3C0: B4        .byte $B4   ; <ガ>

- D - I - - 0x02F3D1 16:B3C1: 00        .byte $00
- D - I - - 0x02F3D2 16:B3C2: 03        .byte $03   ; <う>
- D - I - - 0x02F3D3 16:B3C3: 44        .byte $44   ; <エ>
- D - I - - 0x02F3D4 16:B3C4: B6        .byte $B6   ; <グ>

- D - I - - 0x02F3D5 16:B3C5: 02        .byte $02   ; <い>
- D - I - - 0x02F3D6 16:B3C6: FC B2     .word off_B2FC



off_B3C8_A1:
- D - I - - 0x02F3D8 16:B3C8: 03        .byte $03   ; <う>
- D - I - - 0x02F3D9 16:B3C9: D5 B3     .word off_B3D5
- - - - - - 0x02F3DB 16:B3CB: E2 B3     .word off_B3E2
- D - I - - 0x02F3DD 16:B3CD: EF B3     .word off_B3EF
- D - I - - 0x02F3DF 16:B3CF: FE B3     .word off_B3FE
- D - I - - 0x02F3E1 16:B3D1: 0B B4     .word off_B40B
- D - I - - 0x02F3E3 16:B3D3: 18 B4     .word off_B418



off_B3D5:
- D - I - - 0x02F3E5 16:B3D5: 00        .byte $00
- D - I - - 0x02F3E6 16:B3D6: 03        .byte $03   ; <う>
- D - I - - 0x02F3E7 16:B3D7: 46        .byte $46   ; <カ>
- D - I - - 0x02F3E8 16:B3D8: 9B        .byte $9B

- D - I - - 0x02F3E9 16:B3D9: 08        .byte $08   ; <く>
- D - I - - 0x02F3EA 16:B3DA: 04        .byte $04   ; <え>
- D - I - - 0x02F3EB 16:B3DB: 43        .byte $43   ; <ウ>
- D - I - - 0x02F3EC 16:B3DC: 96        .byte $96
- D - I - - 0x02F3ED 16:B3DD: 46        .byte $46   ; <カ>
- D - I - - 0x02F3EE 16:B3DE: B1        .byte $B1   ; <ぶ>

- D - I - - 0x02F3EF 16:B3DF: 02        .byte $02   ; <い>
- D - I - - 0x02F3F0 16:B3E0: F2 B2     .word off_B2F2



off_B3E2:
- - - - - - 0x02F3F2 16:B3E2: 00        .byte $00
- - - - - - 0x02F3F3 16:B3E3: 03        .byte $03   ; <う>
- - - - - - 0x02F3F4 16:B3E4: 46        .byte $46   ; <カ>
- - - - - - 0x02F3F5 16:B3E5: 9B        .byte $9B

- - - - - - 0x02F3F6 16:B3E6: 08        .byte $08   ; <く>
- - - - - - 0x02F3F7 16:B3E7: 04        .byte $04   ; <え>
- - - - - - 0x02F3F8 16:B3E8: 43        .byte $43   ; <ウ>
- - - - - - 0x02F3F9 16:B3E9: 96        .byte $96
- - - - - - 0x02F3FA 16:B3EA: 46        .byte $46   ; <カ>
- - - - - - 0x02F3FB 16:B3EB: B1        .byte $B1   ; <ぶ>

- - - - - - 0x02F3FC 16:B3EC: 02        .byte $02   ; <い>
- - - - - - 0x02F3FD 16:B3ED: 31 B3     .word off_B331



off_B3EF:
- D - I - - 0x02F3FF 16:B3EF: 00        .byte $00
- D - I - - 0x02F400 16:B3F0: 03        .byte $03   ; <う>
- D - I - - 0x02F401 16:B3F1: 46        .byte $46   ; <カ>
- D - I - - 0x02F402 16:B3F2: 9E        .byte $9E

- D - I - - 0x02F403 16:B3F3: 10        .byte $10   ; <た>
- D - I - - 0x02F404 16:B3F4: 04        .byte $04   ; <え>
- D - I - - 0x02F405 16:B3F5: 43        .byte $43   ; <ウ>
- D - I - - 0x02F406 16:B3F6: 96        .byte $96
- D - I - - 0x02F407 16:B3F7: 47        .byte $47   ; <キ>
- D - I - - 0x02F408 16:B3F8: 83        .byte $83   ; <C>
- D - I - - 0x02F409 16:B3F9: 46        .byte $46   ; <カ>
- D - I - - 0x02F40A 16:B3FA: B1        .byte $B1   ; <ぶ>

- D - I - - 0x02F40B 16:B3FB: 02        .byte $02   ; <い>
- D - I - - 0x02F40C 16:B3FC: 4A B3     .word off_B34A



off_B3FE:
- D - I - - 0x02F40E 16:B3FE: 00        .byte $00
- D - I - - 0x02F40F 16:B3FF: 03        .byte $03   ; <う>
- D - I - - 0x02F410 16:B400: 46        .byte $46   ; <カ>
- D - I - - 0x02F411 16:B401: 9B        .byte $9B

- D - I - - 0x02F412 16:B402: 08        .byte $08   ; <く>
- D - I - - 0x02F413 16:B403: 04        .byte $04   ; <え>
- D - I - - 0x02F414 16:B404: 43        .byte $43   ; <ウ>
- D - I - - 0x02F415 16:B405: 96        .byte $96
- D - I - - 0x02F416 16:B406: 46        .byte $46   ; <カ>
- D - I - - 0x02F417 16:B407: B1        .byte $B1   ; <ぶ>

- D - I - - 0x02F418 16:B408: 02        .byte $02   ; <い>
- D - I - - 0x02F419 16:B409: 8D B3     .word off_B38D



off_B40B:
- D - I - - 0x02F41B 16:B40B: 00        .byte $00
- D - I - - 0x02F41C 16:B40C: 03        .byte $03   ; <う>
- D - I - - 0x02F41D 16:B40D: 46        .byte $46   ; <カ>
- D - I - - 0x02F41E 16:B40E: 9B        .byte $9B

- D - I - - 0x02F41F 16:B40F: 08        .byte $08   ; <く>
- D - I - - 0x02F420 16:B410: 04        .byte $04   ; <え>
- D - I - - 0x02F421 16:B411: 43        .byte $43   ; <ウ>
- D - I - - 0x02F422 16:B412: 96        .byte $96
- D - I - - 0x02F423 16:B413: 46        .byte $46   ; <カ>
- D - I - - 0x02F424 16:B414: B1        .byte $B1   ; <ぶ>

- D - I - - 0x02F425 16:B415: 02        .byte $02   ; <い>
- D - I - - 0x02F426 16:B416: A6 B3     .word off_B3A6



off_B418:
- D - I - - 0x02F428 16:B418: 00        .byte $00
- D - I - - 0x02F429 16:B419: 03        .byte $03   ; <う>
- D - I - - 0x02F42A 16:B41A: 46        .byte $46   ; <カ>
- D - I - - 0x02F42B 16:B41B: 9B        .byte $9B

- D - I - - 0x02F42C 16:B41C: 08        .byte $08   ; <く>
- D - I - - 0x02F42D 16:B41D: 04        .byte $04   ; <え>
- D - I - - 0x02F42E 16:B41E: 43        .byte $43   ; <ウ>
- D - I - - 0x02F42F 16:B41F: 96        .byte $96
- D - I - - 0x02F430 16:B420: 46        .byte $46   ; <カ>
- D - I - - 0x02F431 16:B421: B1        .byte $B1   ; <ぶ>

- D - I - - 0x02F432 16:B422: 02        .byte $02   ; <い>
- D - I - - 0x02F433 16:B423: BD B3     .word off_B3BD



off_B425_A2:
- D - I - - 0x02F435 16:B425: 08        .byte $08   ; <く>
- D - I - - 0x02F436 16:B426: 04        .byte $04   ; <え>
- D - I - - 0x02F437 16:B427: 05        .byte $05   ; <お>
- D - I - - 0x02F438 16:B428: A6        .byte $A6   ; <じ>
- D - I - - 0x02F439 16:B429: 09        .byte $09   ; <け>
- D - I - - 0x02F43A 16:B42A: A7        .byte $A7   ; <ず>

- D - I - - 0x02F43B 16:B42B: 10        .byte $10   ; <た>
- D - I - - 0x02F43C 16:B42C: 05        .byte $05   ; <お>
- D - I - - 0x02F43D 16:B42D: 05        .byte $05   ; <お>
- D - I - - 0x02F43E 16:B42E: DF        .byte $DF
- D - I - - 0x02F43F 16:B42F: 07        .byte $07   ; <き>
- D - I - - 0x02F440 16:B430: FD        .byte $FD
- D - I - - 0x02F441 16:B431: 09        .byte $09   ; <け>
- D - I - - 0x02F442 16:B432: AD        .byte $AD   ; <で>

- D - I - - 0x02F443 16:B433: 10        .byte $10   ; <た>
- D - I - - 0x02F444 16:B434: 06        .byte $06   ; <か>
- D - I - - 0x02F445 16:B435: 03        .byte $03   ; <う>
- D - I - - 0x02F446 16:B436: F4        .byte $F4
- D - I - - 0x02F447 16:B437: 07        .byte $07   ; <き>
- D - I - - 0x02F448 16:B438: F5        .byte $F5
- D - I - - 0x02F449 16:B439: 09        .byte $09   ; <け>
- D - I - - 0x02F44A 16:B43A: F6        .byte $F6

- D - I - - 0x02F44B 16:B43B: 08        .byte $08   ; <く>
- D - I - - 0x02F44C 16:B43C: 07        .byte $07   ; <き>
- D - I - - 0x02F44D 16:B43D: 03        .byte $03   ; <う>
- D - I - - 0x02F44E 16:B43E: F7        .byte $F7
- D - I - - 0x02F44F 16:B43F: 07        .byte $07   ; <き>
- D - I - - 0x02F450 16:B440: FC        .byte $FC
; продолжение


off_B441:
- D - I - - 0x02F451 16:B441: 18        .byte $18   ; <ね>
- D - I - - 0x02F452 16:B442: 03        .byte $03   ; <う>
- D - I - - 0x02F453 16:B443: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F454 16:B444: A2        .byte $A2   ; <ぐ>
- D - I - - 0x02F455 16:B445: 0D        .byte $0D   ; <す>
- D - I - - 0x02F456 16:B446: A3        .byte $A3   ; <げ>
- D - I - - 0x02F457 16:B447: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F458 16:B448: 15        .byte $15   ; <な>
- D - I - - 0x02F459 16:B449: 11        .byte $11   ; <ち>
- D - I - - 0x02F45A 16:B44A: 7C        .byte $7C   ; <~>

- D - I - - 0x02F45B 16:B44B: 10        .byte $10   ; <た>
- D - I - - 0x02F45C 16:B44C: 04        .byte $04   ; <え>
- D - I - - 0x02F45D 16:B44D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F45E 16:B44E: A8        .byte $A8   ; <ぜ>
- D - I - - 0x02F45F 16:B44F: 12        .byte $12   ; <つ>
- D - I - - 0x02F460 16:B450: A9        .byte $A9   ; <ぞ>
- D - I - - 0x02F461 16:B451: 11        .byte $11   ; <ち>
- D - I - - 0x02F462 16:B452: 15        .byte $15   ; <な>

- D - I - - 0x02F463 16:B453: 08        .byte $08   ; <く>
- D - I - - 0x02F464 16:B454: 05        .byte $05   ; <お>
- D - I - - 0x02F465 16:B455: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F466 16:B456: AA        .byte $AA   ; <だ>
- D - I - - 0x02F467 16:B457: 12        .byte $12   ; <つ>
- D - I - - 0x02F468 16:B458: AB        .byte $AB   ; <ぢ>
; продолжение


off_B459:
- D - I - - 0x02F469 16:B459: 03        .byte $03   ; <う>
- D - I - - 0x02F46A 16:B45A: 72 B4     .word off_B472
- D - I - - 0x02F46C 16:B45C: D9 B4     .word off_B4D9
- D - I - - 0x02F46E 16:B45E: 08 B5     .word off_B508
- D - I - - 0x02F470 16:B460: 27 B5     .word off_B527
- D - I - - 0x02F472 16:B462: 44 B5     .word off_B544
- D - I - - 0x02F474 16:B464: 69 B5     .word off_B569
- D - I - - 0x02F476 16:B466: 94 B5     .word off_B594
- D - I - - 0x02F478 16:B468: BF B5     .word off_B5BF
- D - I - - 0x02F47A 16:B46A: F0 B5     .word off_B5F0
- D - I - - 0x02F47C 16:B46C: 17 B6     .word off_B617
- D - I - - 0x02F47E 16:B46E: 42 B6     .word off_B642
- D - I - - 0x02F480 16:B470: 6D B6     .word off_B66D



off_B472:
- D - I - - 0x02F482 16:B472: 20        .byte $20   ; <み>
- D - I - - 0x02F483 16:B473: 01        .byte $01   ; <あ>
- D - I - - 0x02F484 16:B474: 09        .byte $09   ; <け>
- D - I - - 0x02F485 16:B475: 07        .byte $07   ; <き>
- D - I - - 0x02F486 16:B476: 0C        .byte $0C   ; <し>
- D - I - - 0x02F487 16:B477: 12        .byte $12   ; <つ>
- D - I - - 0x02F488 16:B478: 0D        .byte $0D   ; <す>
- D - I - - 0x02F489 16:B479: 15        .byte $15   ; <な>
- D - I - - 0x02F48A 16:B47A: 10        .byte $10   ; <た>
- D - I - - 0x02F48B 16:B47B: 13        .byte $13   ; <て>
- D - I - - 0x02F48C 16:B47C: 14        .byte $14   ; <と>
- D - I - - 0x02F48D 16:B47D: 16        .byte $16   ; <に>

- D - I - - 0x02F48E 16:B47E: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F48F 16:B47F: 02        .byte $02   ; <い>
- D - I - - 0x02F490 16:B480: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F491 16:B481: 0D        .byte $0D   ; <す>
- D - I - - 0x02F492 16:B482: 0D        .byte $0D   ; <す>
- D - I - - 0x02F493 16:B483: 15        .byte $15   ; <な>
- D - I - - 0x02F494 16:B484: 13        .byte $13   ; <て>
- D - I - - 0x02F495 16:B485: 18        .byte $18   ; <ね>
- D - I - - 0x02F496 16:B486: 10        .byte $10   ; <た>
- D - I - - 0x02F497 16:B487: 15        .byte $15   ; <な>
- D - I - - 0x02F498 16:B488: 14        .byte $14   ; <と>
- D - I - - 0x02F499 16:B489: 19        .byte $19   ; <の>
- D - I - - 0x02F49A 16:B48A: 15        .byte $15   ; <な>
- D - I - - 0x02F49B 16:B48B: 15        .byte $15   ; <な>
- D - I - - 0x02F49C 16:B48C: 19        .byte $19   ; <の>
- D - I - - 0x02F49D 16:B48D: 1C        .byte $1C   ; <ふ>
; продолжение


off_B48E:
- D - I - - 0x02F49E 16:B48E: 20        .byte $20   ; <み>
- D - I - - 0x02F49F 16:B48F: 00        .byte $00
- D - I - - 0x02F4A0 16:B490: 09        .byte $09   ; <け>
- D - I - - 0x02F4A1 16:B491: 05        .byte $05   ; <お>
- D - I - - 0x02F4A2 16:B492: 0C        .byte $0C   ; <し>
- D - I - - 0x02F4A3 16:B493: 10        .byte $10   ; <た>
- D - I - - 0x02F4A4 16:B494: 0D        .byte $0D   ; <す>
- D - I - - 0x02F4A5 16:B495: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F4A6 16:B496: 10        .byte $10   ; <た>
- D - I - - 0x02F4A7 16:B497: 11        .byte $11   ; <ち>
- D - I - - 0x02F4A8 16:B498: 14        .byte $14   ; <と>
- D - I - - 0x02F4A9 16:B499: 14        .byte $14   ; <と>
; продолжение


off_B49A:
- D - I - - 0x02F4AA 16:B49A: 08        .byte $08   ; <く>
- D - I - - 0x02F4AB 16:B49B: 03        .byte $03   ; <う>
- D - I - - 0x02F4AC 16:B49C: 15        .byte $15   ; <な>
- D - I - - 0x02F4AD 16:B49D: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F4AE 16:B49E: 19        .byte $19   ; <の>
- D - I - - 0x02F4AF 16:B49F: 1A        .byte $1A   ; <は>
; продолжение


off_B4A0:
- D - I - - 0x02F4B0 16:B4A0: 08        .byte $08   ; <く>
- D - I - - 0x02F4B1 16:B4A1: 00        .byte $00
- D - I - - 0x02F4B2 16:B4A2: 03        .byte $03   ; <う>
- D - I - - 0x02F4B3 16:B4A3: 02        .byte $02   ; <い>
- D - I - - 0x02F4B4 16:B4A4: 07        .byte $07   ; <き>
- D - I - - 0x02F4B5 16:B4A5: 03        .byte $03   ; <う>

- D - I - - 0x02F4B6 16:B4A6: 00        .byte $00
- D - I - - 0x02F4B7 16:B4A7: 02        .byte $02   ; <い>
- D - I - - 0x02F4B8 16:B4A8: 09        .byte $09   ; <け>
- D - I - - 0x02F4B9 16:B4A9: 28        .byte $28   ; <り>

- D - I - - 0x02F4BA 16:B4AA: 00        .byte $00
- D - I - - 0x02F4BB 16:B4AB: 03        .byte $03   ; <う>
- D - I - - 0x02F4BC 16:B4AC: 83        .byte $83   ; <C>
- D - I - - 0x02F4BD 16:B4AD: 06        .byte $06   ; <か>

- D - I - - 0x02F4BE 16:B4AE: 10        .byte $10   ; <た>
- D - I - - 0x02F4BF 16:B4AF: 04        .byte $04   ; <え>
- D - I - - 0x02F4C0 16:B4B0: 16        .byte $16   ; <に>
- D - I - - 0x02F4C1 16:B4B1: 08        .byte $08   ; <く>
- D - I - - 0x02F4C2 16:B4B2: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F4C3 16:B4B3: 09        .byte $09   ; <け>
- D - I - - 0x02F4C4 16:B4B4: 83        .byte $83   ; <C>
- D - I - - 0x02F4C5 16:B4B5: 0C        .byte $0C   ; <し>

- D - I - - 0x02F4C6 16:B4B6: 00        .byte $00
- D - I - - 0x02F4C7 16:B4B7: 05        .byte $05   ; <お>
- D - I - - 0x02F4C8 16:B4B8: 16        .byte $16   ; <に>
- D - I - - 0x02F4C9 16:B4B9: 04        .byte $04   ; <え>

- D - I - - 0x02F4CA 16:B4BA: 10        .byte $10   ; <た>
- D - I - - 0x02F4CB 16:B4BB: 06        .byte $06   ; <か>
- D - I - - 0x02F4CC 16:B4BC: 13        .byte $13   ; <て>
- D - I - - 0x02F4CD 16:B4BD: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F4CE 16:B4BE: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F4CF 16:B4BF: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F4D0 16:B4C0: 18        .byte $18   ; <ね>
- D - I - - 0x02F4D1 16:B4C1: 0E        .byte $0E   ; <せ>

- D - I - - 0x02F4D2 16:B4C2: 08        .byte $08   ; <く>
- D - I - - 0x02F4D3 16:B4C3: 07        .byte $07   ; <き>
- D - I - - 0x02F4D4 16:B4C4: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F4D5 16:B4C5: 20        .byte $20   ; <み>
- D - I - - 0x02F4D6 16:B4C6: 19        .byte $19   ; <の>
- D - I - - 0x02F4D7 16:B4C7: 21        .byte $21   ; <む>

- D - I - - 0x02F4D8 16:B4C8: 08        .byte $08   ; <く>
- D - I - - 0x02F4D9 16:B4C9: 08        .byte $08   ; <く>
- D - I - - 0x02F4DA 16:B4CA: 15        .byte $15   ; <な>
- D - I - - 0x02F4DB 16:B4CB: 22        .byte $22   ; <め>
- D - I - - 0x02F4DC 16:B4CC: 19        .byte $19   ; <の>
- D - I - - 0x02F4DD 16:B4CD: 23        .byte $23   ; <も>

- D - I - - 0x02F4DE 16:B4CE: 00        .byte $00
- D - I - - 0x02F4DF 16:B4CF: 09        .byte $09   ; <け>
- D - I - - 0x02F4E0 16:B4D0: 19        .byte $19   ; <の>
- D - I - - 0x02F4E1 16:B4D1: 29        .byte $29   ; <る>

- D - I - - 0x02F4E2 16:B4D2: 08        .byte $08   ; <く>
- D - I - - 0x02F4E3 16:B4D3: 16        .byte $16   ; <に>
- D - I - - 0x02F4E4 16:B4D4: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F4E5 16:B4D5: 2A        .byte $2A   ; <れ>
- D - I - - 0x02F4E6 16:B4D6: 83        .byte $83   ; <C>
- D - I - - 0x02F4E7 16:B4D7: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02F4E8 16:B4D8: 01        .byte $01   ; <あ>



off_B4D9:
- D - I - - 0x02F4E9 16:B4D9: 08        .byte $08   ; <く>
- D - I - - 0x02F4EA 16:B4DA: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F4EB 16:B4DB: 10        .byte $10   ; <た>
- D - I - - 0x02F4EC 16:B4DC: 24        .byte $24   ; <や>
- D - I - - 0x02F4ED 16:B4DD: 14        .byte $14   ; <と>
- D - I - - 0x02F4EE 16:B4DE: 25        .byte $25   ; <ゆ>

- D - I - - 0x02F4EF 16:B4DF: 20        .byte $20   ; <み>
- D - I - - 0x02F4F0 16:B4E0: 00        .byte $00
- D - I - - 0x02F4F1 16:B4E1: 09        .byte $09   ; <け>
- D - I - - 0x02F4F2 16:B4E2: 05        .byte $05   ; <お>
- D - I - - 0x02F4F3 16:B4E3: 0C        .byte $0C   ; <し>
- D - I - - 0x02F4F4 16:B4E4: 10        .byte $10   ; <た>
- D - I - - 0x02F4F5 16:B4E5: 0D        .byte $0D   ; <す>
- D - I - - 0x02F4F6 16:B4E6: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F4F7 16:B4E7: 10        .byte $10   ; <た>
- D - I - - 0x02F4F8 16:B4E8: 26        .byte $26   ; <よ>
- D - I - - 0x02F4F9 16:B4E9: 14        .byte $14   ; <と>
- D - I - - 0x02F4FA 16:B4EA: 27        .byte $27   ; <ら>

- D - I - - 0x02F4FB 16:B4EB: 20        .byte $20   ; <み>
- D - I - - 0x02F4FC 16:B4EC: 01        .byte $01   ; <あ>
- D - I - - 0x02F4FD 16:B4ED: 09        .byte $09   ; <け>
- D - I - - 0x02F4FE 16:B4EE: 07        .byte $07   ; <き>
- D - I - - 0x02F4FF 16:B4EF: 0C        .byte $0C   ; <し>
- D - I - - 0x02F500 16:B4F0: 12        .byte $12   ; <つ>
- D - I - - 0x02F501 16:B4F1: 0D        .byte $0D   ; <す>
- D - I - - 0x02F502 16:B4F2: 15        .byte $15   ; <な>
- D - I - - 0x02F503 16:B4F3: 10        .byte $10   ; <た>
- D - I - - 0x02F504 16:B4F4: 2C        .byte $2C   ; <わ>
- D - I - - 0x02F505 16:B4F5: 14        .byte $14   ; <と>
- D - I - - 0x02F506 16:B4F6: 2D        .byte $2D   ; <を>

- D - I - - 0x02F507 16:B4F7: 28        .byte $28   ; <り>
- D - I - - 0x02F508 16:B4F8: 02        .byte $02   ; <い>
- D - I - - 0x02F509 16:B4F9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F50A 16:B4FA: 2E        .byte $2E   ; <ん>
- D - I - - 0x02F50B 16:B4FB: 0D        .byte $0D   ; <す>
- D - I - - 0x02F50C 16:B4FC: 15        .byte $15   ; <な>
- D - I - - 0x02F50D 16:B4FD: 13        .byte $13   ; <て>
- D - I - - 0x02F50E 16:B4FE: 2F        .byte $2F   ; <っ>
- D - I - - 0x02F50F 16:B4FF: 14        .byte $14   ; <と>
- D - I - - 0x02F510 16:B500: 19        .byte $19   ; <の>
- D - I - - 0x02F511 16:B501: 15        .byte $15   ; <な>
- D - I - - 0x02F512 16:B502: 15        .byte $15   ; <な>
- D - I - - 0x02F513 16:B503: 19        .byte $19   ; <の>
- D - I - - 0x02F514 16:B504: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F515 16:B505: 02        .byte $02   ; <い>
- D - I - - 0x02F516 16:B506: 9A B4     .word off_B49A



off_B508:
- D - I - - 0x02F518 16:B508: 20        .byte $20   ; <み>
- D - I - - 0x02F519 16:B509: 01        .byte $01   ; <あ>
- D - I - - 0x02F51A 16:B50A: 09        .byte $09   ; <け>
- D - I - - 0x02F51B 16:B50B: 07        .byte $07   ; <き>
- D - I - - 0x02F51C 16:B50C: 0C        .byte $0C   ; <し>
- D - I - - 0x02F51D 16:B50D: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F51E 16:B50E: 0D        .byte $0D   ; <す>
- D - I - - 0x02F51F 16:B50F: 15        .byte $15   ; <な>
- D - I - - 0x02F520 16:B510: 10        .byte $10   ; <た>
- D - I - - 0x02F521 16:B511: 31        .byte $31   ; <ゅ>
- D - I - - 0x02F522 16:B512: 14        .byte $14   ; <と>
- D - I - - 0x02F523 16:B513: 16        .byte $16   ; <に>

- D - I - - 0x02F524 16:B514: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F525 16:B515: 02        .byte $02   ; <い>
- D - I - - 0x02F526 16:B516: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F527 16:B517: 32        .byte $32   ; <ょ>
- D - I - - 0x02F528 16:B518: 0D        .byte $0D   ; <す>
- D - I - - 0x02F529 16:B519: 15        .byte $15   ; <な>
- D - I - - 0x02F52A 16:B51A: 13        .byte $13   ; <て>
- D - I - - 0x02F52B 16:B51B: 33        .byte $33   ; <0>
- D - I - - 0x02F52C 16:B51C: 10        .byte $10   ; <た>
- D - I - - 0x02F52D 16:B51D: 15        .byte $15   ; <な>
- D - I - - 0x02F52E 16:B51E: 14        .byte $14   ; <と>
- D - I - - 0x02F52F 16:B51F: 19        .byte $19   ; <の>
- D - I - - 0x02F530 16:B520: 15        .byte $15   ; <な>
- D - I - - 0x02F531 16:B521: 15        .byte $15   ; <な>
- D - I - - 0x02F532 16:B522: 19        .byte $19   ; <の>
- D - I - - 0x02F533 16:B523: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F534 16:B524: 02        .byte $02   ; <い>
- D - I - - 0x02F535 16:B525: 8E B4     .word off_B48E



off_B527:
- D - I - - 0x02F537 16:B527: 20        .byte $20   ; <み>
- D - I - - 0x02F538 16:B528: 01        .byte $01   ; <あ>
- D - I - - 0x02F539 16:B529: 09        .byte $09   ; <け>
- D - I - - 0x02F53A 16:B52A: 07        .byte $07   ; <き>
- D - I - - 0x02F53B 16:B52B: 0C        .byte $0C   ; <し>
- D - I - - 0x02F53C 16:B52C: 38        .byte $38   ; <5>
- D - I - - 0x02F53D 16:B52D: 0D        .byte $0D   ; <す>
- D - I - - 0x02F53E 16:B52E: 15        .byte $15   ; <な>
- D - I - - 0x02F53F 16:B52F: 10        .byte $10   ; <た>
- D - I - - 0x02F540 16:B530: 39        .byte $39   ; <6>
- D - I - - 0x02F541 16:B531: 14        .byte $14   ; <と>
- D - I - - 0x02F542 16:B532: 16        .byte $16   ; <に>

- D - I - - 0x02F543 16:B533: 28        .byte $28   ; <り>
- D - I - - 0x02F544 16:B534: 02        .byte $02   ; <い>
- D - I - - 0x02F545 16:B535: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F546 16:B536: 3A        .byte $3A   ; <7>
- D - I - - 0x02F547 16:B537: 0D        .byte $0D   ; <す>
- D - I - - 0x02F548 16:B538: 15        .byte $15   ; <な>
- D - I - - 0x02F549 16:B539: 13        .byte $13   ; <て>
- D - I - - 0x02F54A 16:B53A: 3B        .byte $3B   ; <8>
- D - I - - 0x02F54B 16:B53B: 14        .byte $14   ; <と>
- D - I - - 0x02F54C 16:B53C: 19        .byte $19   ; <の>
- D - I - - 0x02F54D 16:B53D: 15        .byte $15   ; <な>
- D - I - - 0x02F54E 16:B53E: 15        .byte $15   ; <な>
- D - I - - 0x02F54F 16:B53F: 19        .byte $19   ; <の>
- D - I - - 0x02F550 16:B540: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F551 16:B541: 02        .byte $02   ; <い>
- D - I - - 0x02F552 16:B542: 8E B4     .word off_B48E



off_B544:
- D - I - - 0x02F554 16:B544: 18        .byte $18   ; <ね>
- D - I - - 0x02F555 16:B545: 00        .byte $00
- D - I - - 0x02F556 16:B546: 09        .byte $09   ; <け>
- D - I - - 0x02F557 16:B547: 05        .byte $05   ; <お>
- D - I - - 0x02F558 16:B548: 0C        .byte $0C   ; <し>
- D - I - - 0x02F559 16:B549: 36        .byte $36   ; <3>
- D - I - - 0x02F55A 16:B54A: 10        .byte $10   ; <た>
- D - I - - 0x02F55B 16:B54B: 37        .byte $37   ; <4>
- D - I - - 0x02F55C 16:B54C: 14        .byte $14   ; <と>
- D - I - - 0x02F55D 16:B54D: 62        .byte $62   ; <メ>

- D - I - - 0x02F55E 16:B54E: 20        .byte $20   ; <み>
- D - I - - 0x02F55F 16:B54F: 01        .byte $01   ; <あ>
- D - I - - 0x02F560 16:B550: 09        .byte $09   ; <け>
- D - I - - 0x02F561 16:B551: 07        .byte $07   ; <き>
- D - I - - 0x02F562 16:B552: 0C        .byte $0C   ; <し>
- D - I - - 0x02F563 16:B553: 3C        .byte $3C   ; <9>
- D - I - - 0x02F564 16:B554: 0D        .byte $0D   ; <す>
- D - I - - 0x02F565 16:B555: 15        .byte $15   ; <な>
- D - I - - 0x02F566 16:B556: 10        .byte $10   ; <た>
- D - I - - 0x02F567 16:B557: 3D        .byte $3D   ; <+>
- D - I - - 0x02F568 16:B558: 14        .byte $14   ; <と>
- D - I - - 0x02F569 16:B559: 68        .byte $68   ; <リ>

- D - I - - 0x02F56A 16:B55A: 20        .byte $20   ; <み>
- D - I - - 0x02F56B 16:B55B: 02        .byte $02   ; <い>
- D - I - - 0x02F56C 16:B55C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F56D 16:B55D: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02F56E 16:B55E: 0D        .byte $0D   ; <す>
- D - I - - 0x02F56F 16:B55F: 15        .byte $15   ; <な>
- D - I - - 0x02F570 16:B560: 13        .byte $13   ; <て>
- D - I - - 0x02F571 16:B561: 3F        .byte $3F   ; <•>
- D - I - - 0x02F572 16:B562: 15        .byte $15   ; <な>
- D - I - - 0x02F573 16:B563: 6A        .byte $6A   ; <レ>
- D - I - - 0x02F574 16:B564: 19        .byte $19   ; <の>
- D - I - - 0x02F575 16:B565: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F576 16:B566: 02        .byte $02   ; <い>
- D - I - - 0x02F577 16:B567: 9A B4     .word off_B49A



off_B569:
- D - I - - 0x02F579 16:B569: 20        .byte $20   ; <み>
- D - I - - 0x02F57A 16:B56A: 00        .byte $00
- D - I - - 0x02F57B 16:B56B: 09        .byte $09   ; <け>
- D - I - - 0x02F57C 16:B56C: 05        .byte $05   ; <お>
- D - I - - 0x02F57D 16:B56D: 0C        .byte $0C   ; <し>
- D - I - - 0x02F57E 16:B56E: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F57F 16:B56F: 0D        .byte $0D   ; <す>
- D - I - - 0x02F580 16:B570: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F581 16:B571: 10        .byte $10   ; <た>
- D - I - - 0x02F582 16:B572: 1D        .byte $1D   ; <へ>
- D - I - - 0x02F583 16:B573: 14        .byte $14   ; <と>
- D - I - - 0x02F584 16:B574: 62        .byte $62   ; <メ>

- D - I - - 0x02F585 16:B575: 20        .byte $20   ; <み>
- D - I - - 0x02F586 16:B576: 01        .byte $01   ; <あ>
- D - I - - 0x02F587 16:B577: 09        .byte $09   ; <け>
- D - I - - 0x02F588 16:B578: 07        .byte $07   ; <き>
- D - I - - 0x02F589 16:B579: 0C        .byte $0C   ; <し>
- D - I - - 0x02F58A 16:B57A: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F58B 16:B57B: 0D        .byte $0D   ; <す>
- D - I - - 0x02F58C 16:B57C: 15        .byte $15   ; <な>
- D - I - - 0x02F58D 16:B57D: 10        .byte $10   ; <た>
- D - I - - 0x02F58E 16:B57E: 1F        .byte $1F   ; <ま>
- D - I - - 0x02F58F 16:B57F: 14        .byte $14   ; <と>
- D - I - - 0x02F590 16:B580: 4A        .byte $4A   ; <コ>

- D - I - - 0x02F591 16:B581: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F592 16:B582: 02        .byte $02   ; <い>
- D - I - - 0x02F593 16:B583: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F594 16:B584: 34        .byte $34   ; <1>
- D - I - - 0x02F595 16:B585: 0D        .byte $0D   ; <す>
- D - I - - 0x02F596 16:B586: 15        .byte $15   ; <な>
- D - I - - 0x02F597 16:B587: 13        .byte $13   ; <て>
- D - I - - 0x02F598 16:B588: 35        .byte $35   ; <2>
- D - I - - 0x02F599 16:B589: 10        .byte $10   ; <た>
- D - I - - 0x02F59A 16:B58A: 15        .byte $15   ; <な>
- D - I - - 0x02F59B 16:B58B: 14        .byte $14   ; <と>
- D - I - - 0x02F59C 16:B58C: 60        .byte $60   ; <ミ>
- D - I - - 0x02F59D 16:B58D: 15        .byte $15   ; <な>
- D - I - - 0x02F59E 16:B58E: 15        .byte $15   ; <な>
- D - I - - 0x02F59F 16:B58F: 19        .byte $19   ; <の>
- D - I - - 0x02F5A0 16:B590: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F5A1 16:B591: 02        .byte $02   ; <い>
- D - I - - 0x02F5A2 16:B592: 9A B4     .word off_B49A



off_B594:
- D - I - - 0x02F5A4 16:B594: 20        .byte $20   ; <み>
- D - I - - 0x02F5A5 16:B595: 00        .byte $00
- D - I - - 0x02F5A6 16:B596: 09        .byte $09   ; <け>
- D - I - - 0x02F5A7 16:B597: 05        .byte $05   ; <お>
- D - I - - 0x02F5A8 16:B598: 0C        .byte $0C   ; <し>
- D - I - - 0x02F5A9 16:B599: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F5AA 16:B59A: 0D        .byte $0D   ; <す>
- D - I - - 0x02F5AB 16:B59B: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F5AC 16:B59C: 10        .byte $10   ; <た>
- D - I - - 0x02F5AD 16:B59D: 41        .byte $41   ; <ア>
- D - I - - 0x02F5AE 16:B59E: 14        .byte $14   ; <と>
- D - I - - 0x02F5AF 16:B59F: 44        .byte $44   ; <エ>

- D - I - - 0x02F5B0 16:B5A0: 28        .byte $28   ; <り>
- D - I - - 0x02F5B1 16:B5A1: 01        .byte $01   ; <あ>
- D - I - - 0x02F5B2 16:B5A2: 09        .byte $09   ; <け>
- D - I - - 0x02F5B3 16:B5A3: 07        .byte $07   ; <き>
- D - I - - 0x02F5B4 16:B5A4: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F5B5 16:B5A5: 42        .byte $42   ; <イ>
- D - I - - 0x02F5B6 16:B5A6: 0C        .byte $0C   ; <し>
- D - I - - 0x02F5B7 16:B5A7: 40        .byte $40   ; <「>
- D - I - - 0x02F5B8 16:B5A8: 0D        .byte $0D   ; <す>
- D - I - - 0x02F5B9 16:B5A9: 15        .byte $15   ; <な>
- D - I - - 0x02F5BA 16:B5AA: 10        .byte $10   ; <た>
- D - I - - 0x02F5BB 16:B5AB: 43        .byte $43   ; <ウ>
- D - I - - 0x02F5BC 16:B5AC: 14        .byte $14   ; <と>
- D - I - - 0x02F5BD 16:B5AD: 46        .byte $46   ; <カ>

- D - I - - 0x02F5BE 16:B5AE: 28        .byte $28   ; <り>
- D - I - - 0x02F5BF 16:B5AF: 02        .byte $02   ; <い>
- D - I - - 0x02F5C0 16:B5B0: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F5C1 16:B5B1: 48        .byte $48   ; <ク>
- D - I - - 0x02F5C2 16:B5B2: 0D        .byte $0D   ; <す>
- D - I - - 0x02F5C3 16:B5B3: 15        .byte $15   ; <な>
- D - I - - 0x02F5C4 16:B5B4: 13        .byte $13   ; <て>
- D - I - - 0x02F5C5 16:B5B5: 49        .byte $49   ; <ケ>
- D - I - - 0x02F5C6 16:B5B6: 14        .byte $14   ; <と>
- D - I - - 0x02F5C7 16:B5B7: 4C        .byte $4C   ; <シ>
- D - I - - 0x02F5C8 16:B5B8: 15        .byte $15   ; <な>
- D - I - - 0x02F5C9 16:B5B9: 15        .byte $15   ; <な>
- D - I - - 0x02F5CA 16:B5BA: 19        .byte $19   ; <の>
- D - I - - 0x02F5CB 16:B5BB: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F5CC 16:B5BC: 02        .byte $02   ; <い>
- D - I - - 0x02F5CD 16:B5BD: 9A B4     .word off_B49A



off_B5BF:
- D - I - - 0x02F5CF 16:B5BF: 20        .byte $20   ; <み>
- D - I - - 0x02F5D0 16:B5C0: 00        .byte $00
- D - I - - 0x02F5D1 16:B5C1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F5D2 16:B5C2: 4B        .byte $4B   ; <サ>
- D - I - - 0x02F5D3 16:B5C3: 0C        .byte $0C   ; <し>
- D - I - - 0x02F5D4 16:B5C4: 4E        .byte $4E   ; <セ>
- D - I - - 0x02F5D5 16:B5C5: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F5D6 16:B5C6: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F5D7 16:B5C7: 10        .byte $10   ; <た>
- D - I - - 0x02F5D8 16:B5C8: 11        .byte $11   ; <ち>
- D - I - - 0x02F5D9 16:B5C9: 14        .byte $14   ; <と>
- D - I - - 0x02F5DA 16:B5CA: 14        .byte $14   ; <と>

- D - I - - 0x02F5DB 16:B5CB: 20        .byte $20   ; <み>
- D - I - - 0x02F5DC 16:B5CC: 01        .byte $01   ; <あ>
- D - I - - 0x02F5DD 16:B5CD: 09        .byte $09   ; <け>
- D - I - - 0x02F5DE 16:B5CE: 61        .byte $61   ; <ム>
- D - I - - 0x02F5DF 16:B5CF: 0C        .byte $0C   ; <し>
- D - I - - 0x02F5E0 16:B5D0: 64        .byte $64   ; <ヤ>
- D - I - - 0x02F5E1 16:B5D1: 0D        .byte $0D   ; <す>
- D - I - - 0x02F5E2 16:B5D2: 15        .byte $15   ; <な>
- D - I - - 0x02F5E3 16:B5D3: 10        .byte $10   ; <た>
- D - I - - 0x02F5E4 16:B5D4: 65        .byte $65   ; <ユ>
- D - I - - 0x02F5E5 16:B5D5: 14        .byte $14   ; <と>
- D - I - - 0x02F5E6 16:B5D6: 16        .byte $16   ; <に>

- D - I - - 0x02F5E7 16:B5D7: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F5E8 16:B5D8: 02        .byte $02   ; <い>
- D - I - - 0x02F5E9 16:B5D9: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F5EA 16:B5DA: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02F5EB 16:B5DB: 0D        .byte $0D   ; <す>
- D - I - - 0x02F5EC 16:B5DC: 15        .byte $15   ; <な>
- D - I - - 0x02F5ED 16:B5DD: 13        .byte $13   ; <て>
- D - I - - 0x02F5EE 16:B5DE: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02F5EF 16:B5DF: 10        .byte $10   ; <た>
- D - I - - 0x02F5F0 16:B5E0: 15        .byte $15   ; <な>
- D - I - - 0x02F5F1 16:B5E1: 14        .byte $14   ; <と>
- D - I - - 0x02F5F2 16:B5E2: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02F5F3 16:B5E3: 15        .byte $15   ; <な>
- D - I - - 0x02F5F4 16:B5E4: 15        .byte $15   ; <な>
- D - I - - 0x02F5F5 16:B5E5: 19        .byte $19   ; <の>
- D - I - - 0x02F5F6 16:B5E6: 5E        .byte $5E   ; <ホ>

- D - I - - 0x02F5F7 16:B5E7: 08        .byte $08   ; <く>
- D - I - - 0x02F5F8 16:B5E8: 03        .byte $03   ; <う>
- D - I - - 0x02F5F9 16:B5E9: 15        .byte $15   ; <な>
- D - I - - 0x02F5FA 16:B5EA: 70        .byte $70   ; <ャ>
- D - I - - 0x02F5FB 16:B5EB: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F5FC 16:B5EC: 71        .byte $71   ; <ュ>

- D - I - - 0x02F5FD 16:B5ED: 02        .byte $02   ; <い>
- D - I - - 0x02F5FE 16:B5EE: A0 B4     .word off_B4A0



off_B5F0:
- D - I - - 0x02F600 16:B5F0: 20        .byte $20   ; <み>
- D - I - - 0x02F601 16:B5F1: 00        .byte $00
- D - I - - 0x02F602 16:B5F2: 09        .byte $09   ; <け>
- D - I - - 0x02F603 16:B5F3: 05        .byte $05   ; <お>
- D - I - - 0x02F604 16:B5F4: 0C        .byte $0C   ; <し>
- D - I - - 0x02F605 16:B5F5: 10        .byte $10   ; <た>
- D - I - - 0x02F606 16:B5F6: 0D        .byte $0D   ; <す>
- D - I - - 0x02F607 16:B5F7: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F608 16:B5F8: 10        .byte $10   ; <た>
- D - I - - 0x02F609 16:B5F9: 45        .byte $45   ; <オ>
- D - I - - 0x02F60A 16:B5FA: 14        .byte $14   ; <と>
- D - I - - 0x02F60B 16:B5FB: 50        .byte $50   ; <タ>

- D - I - - 0x02F60C 16:B5FC: 20        .byte $20   ; <み>
- D - I - - 0x02F60D 16:B5FD: 01        .byte $01   ; <あ>
- D - I - - 0x02F60E 16:B5FE: 09        .byte $09   ; <け>
- D - I - - 0x02F60F 16:B5FF: 07        .byte $07   ; <き>
- D - I - - 0x02F610 16:B600: 0C        .byte $0C   ; <し>
- D - I - - 0x02F611 16:B601: 47        .byte $47   ; <キ>
- D - I - - 0x02F612 16:B602: 0D        .byte $0D   ; <す>
- D - I - - 0x02F613 16:B603: 15        .byte $15   ; <な>
- D - I - - 0x02F614 16:B604: 10        .byte $10   ; <た>
- D - I - - 0x02F615 16:B605: 52        .byte $52   ; <ツ>
- D - I - - 0x02F616 16:B606: 14        .byte $14   ; <と>
- D - I - - 0x02F617 16:B607: 68        .byte $68   ; <リ>

- D - I - - 0x02F618 16:B608: 20        .byte $20   ; <み>
- D - I - - 0x02F619 16:B609: 02        .byte $02   ; <い>
- D - I - - 0x02F61A 16:B60A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F61B 16:B60B: 4D        .byte $4D   ; <ス>
- D - I - - 0x02F61C 16:B60C: 0D        .byte $0D   ; <す>
- D - I - - 0x02F61D 16:B60D: 15        .byte $15   ; <な>
- D - I - - 0x02F61E 16:B60E: 13        .byte $13   ; <て>
- D - I - - 0x02F61F 16:B60F: 58        .byte $58   ; <ネ>
- D - I - - 0x02F620 16:B610: 15        .byte $15   ; <な>
- D - I - - 0x02F621 16:B611: 6A        .byte $6A   ; <レ>
- D - I - - 0x02F622 16:B612: 19        .byte $19   ; <の>
- D - I - - 0x02F623 16:B613: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F624 16:B614: 02        .byte $02   ; <い>
- D - I - - 0x02F625 16:B615: 9A B4     .word off_B49A



off_B617:
- D - I - - 0x02F627 16:B617: 20        .byte $20   ; <み>
- D - I - - 0x02F628 16:B618: 00        .byte $00
- D - I - - 0x02F629 16:B619: 09        .byte $09   ; <け>
- D - I - - 0x02F62A 16:B61A: 05        .byte $05   ; <お>
- D - I - - 0x02F62B 16:B61B: 0C        .byte $0C   ; <し>
- D - I - - 0x02F62C 16:B61C: 63        .byte $63   ; <モ>
- D - I - - 0x02F62D 16:B61D: 0D        .byte $0D   ; <す>
- D - I - - 0x02F62E 16:B61E: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F62F 16:B61F: 10        .byte $10   ; <た>
- D - I - - 0x02F630 16:B620: 66        .byte $66   ; <ヨ>
- D - I - - 0x02F631 16:B621: 14        .byte $14   ; <と>
- D - I - - 0x02F632 16:B622: 67        .byte $67   ; <ラ>

- D - I - - 0x02F633 16:B623: 28        .byte $28   ; <り>
- D - I - - 0x02F634 16:B624: 01        .byte $01   ; <あ>
- D - I - - 0x02F635 16:B625: 09        .byte $09   ; <け>
- D - I - - 0x02F636 16:B626: 07        .byte $07   ; <き>
- D - I - - 0x02F637 16:B627: 0C        .byte $0C   ; <し>
- D - I - - 0x02F638 16:B628: 69        .byte $69   ; <ル>
- D - I - - 0x02F639 16:B629: 0D        .byte $0D   ; <す>
- D - I - - 0x02F63A 16:B62A: 15        .byte $15   ; <な>
- D - I - - 0x02F63B 16:B62B: 10        .byte $10   ; <た>
- D - I - - 0x02F63C 16:B62C: 13        .byte $13   ; <て>
- D - I - - 0x02F63D 16:B62D: 14        .byte $14   ; <と>
- D - I - - 0x02F63E 16:B62E: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02F63F 16:B62F: 18        .byte $18   ; <ね>
- D - I - - 0x02F640 16:B630: 6D        .byte $6D   ; <ヲ>

- D - I - - 0x02F641 16:B631: 28        .byte $28   ; <り>
- D - I - - 0x02F642 16:B632: 02        .byte $02   ; <い>
- D - I - - 0x02F643 16:B633: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F644 16:B634: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02F645 16:B635: 0D        .byte $0D   ; <す>
- D - I - - 0x02F646 16:B636: 15        .byte $15   ; <な>
- D - I - - 0x02F647 16:B637: 13        .byte $13   ; <て>
- D - I - - 0x02F648 16:B638: 6E        .byte $6E   ; <ン>
- D - I - - 0x02F649 16:B639: 14        .byte $14   ; <と>
- D - I - - 0x02F64A 16:B63A: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02F64B 16:B63B: 15        .byte $15   ; <な>
- D - I - - 0x02F64C 16:B63C: 15        .byte $15   ; <な>
- D - I - - 0x02F64D 16:B63D: 19        .byte $19   ; <の>
- D - I - - 0x02F64E 16:B63E: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F64F 16:B63F: 02        .byte $02   ; <い>
- D - I - - 0x02F650 16:B640: 9A B4     .word off_B49A



off_B642:
- D - I - - 0x02F652 16:B642: 20        .byte $20   ; <み>
- D - I - - 0x02F653 16:B643: 00        .byte $00
- D - I - - 0x02F654 16:B644: 09        .byte $09   ; <け>
- D - I - - 0x02F655 16:B645: 05        .byte $05   ; <お>
- D - I - - 0x02F656 16:B646: 0C        .byte $0C   ; <し>
- D - I - - 0x02F657 16:B647: 51        .byte $51   ; <チ>
- D - I - - 0x02F658 16:B648: 0D        .byte $0D   ; <す>
- D - I - - 0x02F659 16:B649: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F65A 16:B64A: 10        .byte $10   ; <た>
- D - I - - 0x02F65B 16:B64B: 54        .byte $54   ; <ト>
- D - I - - 0x02F65C 16:B64C: 14        .byte $14   ; <と>
- D - I - - 0x02F65D 16:B64D: 55        .byte $55   ; <ナ>

- D - I - - 0x02F65E 16:B64E: 20        .byte $20   ; <み>
- D - I - - 0x02F65F 16:B64F: 01        .byte $01   ; <あ>
- D - I - - 0x02F660 16:B650: 09        .byte $09   ; <け>
- D - I - - 0x02F661 16:B651: 07        .byte $07   ; <き>
- D - I - - 0x02F662 16:B652: 0C        .byte $0C   ; <し>
- D - I - - 0x02F663 16:B653: 53        .byte $53   ; <テ>
- D - I - - 0x02F664 16:B654: 0D        .byte $0D   ; <す>
- D - I - - 0x02F665 16:B655: 15        .byte $15   ; <な>
- D - I - - 0x02F666 16:B656: 10        .byte $10   ; <た>
- D - I - - 0x02F667 16:B657: 56        .byte $56   ; <ニ>
- D - I - - 0x02F668 16:B658: 14        .byte $14   ; <と>
- D - I - - 0x02F669 16:B659: 57        .byte $57   ; <ヌ>

- D - I - - 0x02F66A 16:B65A: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F66B 16:B65B: 02        .byte $02   ; <い>
- D - I - - 0x02F66C 16:B65C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F66D 16:B65D: 59        .byte $59   ; <ノ>
- D - I - - 0x02F66E 16:B65E: 0D        .byte $0D   ; <す>
- D - I - - 0x02F66F 16:B65F: 15        .byte $15   ; <な>
- D - I - - 0x02F670 16:B660: 13        .byte $13   ; <て>
- D - I - - 0x02F671 16:B661: 5C        .byte $5C   ; <フ>
- D - I - - 0x02F672 16:B662: 10        .byte $10   ; <た>
- D - I - - 0x02F673 16:B663: 15        .byte $15   ; <な>
- D - I - - 0x02F674 16:B664: 14        .byte $14   ; <と>
- D - I - - 0x02F675 16:B665: 5D        .byte $5D   ; <ヘ>
- D - I - - 0x02F676 16:B666: 15        .byte $15   ; <な>
- D - I - - 0x02F677 16:B667: 15        .byte $15   ; <な>
- D - I - - 0x02F678 16:B668: 19        .byte $19   ; <の>
- D - I - - 0x02F679 16:B669: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F67A 16:B66A: 02        .byte $02   ; <い>
- D - I - - 0x02F67B 16:B66B: 9A B4     .word off_B49A



off_B66D:
- D - I - - 0x02F67D 16:B66D: 20        .byte $20   ; <み>
- D - I - - 0x02F67E 16:B66E: 01        .byte $01   ; <あ>
- D - I - - 0x02F67F 16:B66F: 09        .byte $09   ; <け>
- D - I - - 0x02F680 16:B670: 07        .byte $07   ; <き>
- D - I - - 0x02F681 16:B671: 0C        .byte $0C   ; <し>
- D - I - - 0x02F682 16:B672: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F683 16:B673: 0D        .byte $0D   ; <す>
- D - I - - 0x02F684 16:B674: 15        .byte $15   ; <な>
- D - I - - 0x02F685 16:B675: 10        .byte $10   ; <た>
- D - I - - 0x02F686 16:B676: 31        .byte $31   ; <ゅ>
- D - I - - 0x02F687 16:B677: 14        .byte $14   ; <と>
- D - I - - 0x02F688 16:B678: 16        .byte $16   ; <に>

- D - I - - 0x02F689 16:B679: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F68A 16:B67A: 02        .byte $02   ; <い>
- D - I - - 0x02F68B 16:B67B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F68C 16:B67C: 32        .byte $32   ; <ょ>
- D - I - - 0x02F68D 16:B67D: 0D        .byte $0D   ; <す>
- D - I - - 0x02F68E 16:B67E: 15        .byte $15   ; <な>
- D - I - - 0x02F68F 16:B67F: 13        .byte $13   ; <て>
- D - I - - 0x02F690 16:B680: 33        .byte $33   ; <0>
- D - I - - 0x02F691 16:B681: 10        .byte $10   ; <た>
- D - I - - 0x02F692 16:B682: 15        .byte $15   ; <な>
- D - I - - 0x02F693 16:B683: 14        .byte $14   ; <と>
- D - I - - 0x02F694 16:B684: 19        .byte $19   ; <の>
- D - I - - 0x02F695 16:B685: 15        .byte $15   ; <な>
- D - I - - 0x02F696 16:B686: 15        .byte $15   ; <な>
- D - I - - 0x02F697 16:B687: 19        .byte $19   ; <の>
- D - I - - 0x02F698 16:B688: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F699 16:B689: 02        .byte $02   ; <い>
- D - I - - 0x02F69A 16:B68A: 8E B4     .word off_B48E



off_B68C_A3:
- D - I - - 0x02F69C 16:B68C: 00        .byte $00
- D - I - - 0x02F69D 16:B68D: 07        .byte $07   ; <き>
- D - I - - 0x02F69E 16:B68E: 03        .byte $03   ; <う>
- D - I - - 0x02F69F 16:B68F: 98        .byte $98
; продолжение


off_B690:
- D - I - - 0x02F6A0 16:B690: 00        .byte $00
- D - I - - 0x02F6A1 16:B691: 06        .byte $06   ; <か>
- D - I - - 0x02F6A2 16:B692: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6A3 16:B693: 96        .byte $96

- D - I - - 0x02F6A4 16:B694: 00        .byte $00
- D - I - - 0x02F6A5 16:B695: 07        .byte $07   ; <き>
- D - I - - 0x02F6A6 16:B696: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6A7 16:B697: 9C        .byte $9C

- D - I - - 0x02F6A8 16:B698: 08        .byte $08   ; <く>
- D - I - - 0x02F6A9 16:B699: 04        .byte $04   ; <え>
- D - I - - 0x02F6AA 16:B69A: 05        .byte $05   ; <お>
- D - I - - 0x02F6AB 16:B69B: A6        .byte $A6   ; <じ>
- D - I - - 0x02F6AC 16:B69C: 09        .byte $09   ; <け>
- D - I - - 0x02F6AD 16:B69D: A7        .byte $A7   ; <ず>

- D - I - - 0x02F6AE 16:B69E: 18        .byte $18   ; <ね>
- D - I - - 0x02F6AF 16:B69F: 05        .byte $05   ; <お>
- D - I - - 0x02F6B0 16:B6A0: 07        .byte $07   ; <き>
- D - I - - 0x02F6B1 16:B6A1: AE        .byte $AE   ; <ど>
- D - I - - 0x02F6B2 16:B6A2: 05        .byte $05   ; <お>
- D - I - - 0x02F6B3 16:B6A3: AC        .byte $AC   ; <づ>
- D - I - - 0x02F6B4 16:B6A4: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6B5 16:B6A5: AF        .byte $AF   ; <ば>
- D - I - - 0x02F6B6 16:B6A6: 09        .byte $09   ; <け>
- D - I - - 0x02F6B7 16:B6A7: AD        .byte $AD   ; <で>
; продолжение


off_B6A8:
- D - I - - 0x02F6B8 16:B6A8: 00        .byte $00
- D - I - - 0x02F6B9 16:B6A9: 05        .byte $05   ; <お>
- D - I - - 0x02F6BA 16:B6AA: 03        .byte $03   ; <う>
- D - I - - 0x02F6BB 16:B6AB: 90        .byte $90   ; <U>

- D - I - - 0x02F6BC 16:B6AC: 08        .byte $08   ; <く>
- D - I - - 0x02F6BD 16:B6AD: 06        .byte $06   ; <か>
- D - I - - 0x02F6BE 16:B6AE: 03        .byte $03   ; <う>
- D - I - - 0x02F6BF 16:B6AF: 92        .byte $92   ; <W>
- D - I - - 0x02F6C0 16:B6B0: 07        .byte $07   ; <き>
- D - I - - 0x02F6C1 16:B6B1: 93        .byte $93   ; <Y>

- D - I - - 0x02F6C2 16:B6B2: 00        .byte $00
- D - I - - 0x02F6C3 16:B6B3: 07        .byte $07   ; <き>
- D - I - - 0x02F6C4 16:B6B4: 07        .byte $07   ; <き>
- D - I - - 0x02F6C5 16:B6B5: 99        .byte $99

- D - I - - 0x02F6C6 16:B6B6: 02        .byte $02   ; <い>
- D - I - - 0x02F6C7 16:B6B7: 41 B4     .word off_B441



off_B6B9_A4:
- D - I - - 0x02F6C9 16:B6B9: 08        .byte $08   ; <く>
- D - I - - 0x02F6CA 16:B6BA: 04        .byte $04   ; <え>
- D - I - - 0x02F6CB 16:B6BB: 05        .byte $05   ; <お>
- D - I - - 0x02F6CC 16:B6BC: 9A        .byte $9A
- D - I - - 0x02F6CD 16:B6BD: 09        .byte $09   ; <け>
- D - I - - 0x02F6CE 16:B6BE: 9B        .byte $9B

- D - I - - 0x02F6CF 16:B6BF: 10        .byte $10   ; <た>
- D - I - - 0x02F6D0 16:B6C0: 05        .byte $05   ; <お>
- D - I - - 0x02F6D1 16:B6C1: 07        .byte $07   ; <き>
- D - I - - 0x02F6D2 16:B6C2: B1        .byte $B1   ; <ぶ>
- D - I - - 0x02F6D3 16:B6C3: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6D4 16:B6C4: B0        .byte $B0   ; <び>
- D - I - - 0x02F6D5 16:B6C5: 09        .byte $09   ; <け>
- D - I - - 0x02F6D6 16:B6C6: 15        .byte $15   ; <な>

- D - I - - 0x02F6D7 16:B6C7: 08        .byte $08   ; <く>
- D - I - - 0x02F6D8 16:B6C8: 06        .byte $06   ; <か>
- D - I - - 0x02F6D9 16:B6C9: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6DA 16:B6CA: B2        .byte $B2   ; <べ>
- D - I - - 0x02F6DB 16:B6CB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F6DC 16:B6CC: B3        .byte $B3   ; <ぼ>

- D - I - - 0x02F6DD 16:B6CD: 08        .byte $08   ; <く>
- D - I - - 0x02F6DE 16:B6CE: 07        .byte $07   ; <き>
- D - I - - 0x02F6DF 16:B6CF: 03        .byte $03   ; <う>
- D - I - - 0x02F6E0 16:B6D0: 98        .byte $98
- D - I - - 0x02F6E1 16:B6D1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6E2 16:B6D2: B8        .byte $B8   ; <ゴ>

- D - I - - 0x02F6E3 16:B6D3: 02        .byte $02   ; <い>
- D - I - - 0x02F6E4 16:B6D4: A8 B6     .word off_B6A8



off_B6D6_A5:
- D - I - - 0x02F6E6 16:B6D6: 08        .byte $08   ; <く>
- D - I - - 0x02F6E7 16:B6D7: 04        .byte $04   ; <え>
- D - I - - 0x02F6E8 16:B6D8: 05        .byte $05   ; <お>
- D - I - - 0x02F6E9 16:B6D9: 9A        .byte $9A
- D - I - - 0x02F6EA 16:B6DA: 09        .byte $09   ; <け>
- D - I - - 0x02F6EB 16:B6DB: 9B        .byte $9B

- D - I - - 0x02F6EC 16:B6DC: 10        .byte $10   ; <た>
- D - I - - 0x02F6ED 16:B6DD: 05        .byte $05   ; <お>
- D - I - - 0x02F6EE 16:B6DE: 07        .byte $07   ; <き>
- D - I - - 0x02F6EF 16:B6DF: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02F6F0 16:B6E0: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6F1 16:B6E1: 9E        .byte $9E
- D - I - - 0x02F6F2 16:B6E2: 09        .byte $09   ; <け>
- D - I - - 0x02F6F3 16:B6E3: 15        .byte $15   ; <な>

- D - I - - 0x02F6F4 16:B6E4: 08        .byte $08   ; <く>
- D - I - - 0x02F6F5 16:B6E5: 06        .byte $06   ; <か>
- D - I - - 0x02F6F6 16:B6E6: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6F7 16:B6E7: B4        .byte $B4   ; <ガ>
- D - I - - 0x02F6F8 16:B6E8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F6F9 16:B6E9: B5        .byte $B5   ; <ギ>

- D - I - - 0x02F6FA 16:B6EA: 08        .byte $08   ; <く>
- D - I - - 0x02F6FB 16:B6EB: 07        .byte $07   ; <き>
- D - I - - 0x02F6FC 16:B6EC: 03        .byte $03   ; <う>
- D - I - - 0x02F6FD 16:B6ED: 98        .byte $98
- D - I - - 0x02F6FE 16:B6EE: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F6FF 16:B6EF: B6        .byte $B6   ; <グ>

- D - I - - 0x02F700 16:B6F0: 02        .byte $02   ; <い>
- D - I - - 0x02F701 16:B6F1: A8 B6     .word off_B6A8



off_B6F3_A6:
- D - I - - 0x02F703 16:B6F3: 00        .byte $00
- D - I - - 0x02F704 16:B6F4: 06        .byte $06   ; <か>
- D - I - - 0x02F705 16:B6F5: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02F706 16:B6F6: 91        .byte $91   ; <V>

- D - I - - 0x02F707 16:B6F7: 08        .byte $08   ; <く>
- D - I - - 0x02F708 16:B6F8: 07        .byte $07   ; <き>
- D - I - - 0x02F709 16:B6F9: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02F70A 16:B6FA: 94        .byte $94
- D - I - - 0x02F70B 16:B6FB: 03        .byte $03   ; <う>
- D - I - - 0x02F70C 16:B6FC: 95        .byte $95

- D - I - - 0x02F70D 16:B6FD: 02        .byte $02   ; <い>
- D - I - - 0x02F70E 16:B6FE: 90 B6     .word off_B690



off_B700_A7:
- D - I - - 0x02F710 16:B700: 00        .byte $00
- D - I - - 0x02F711 16:B701: 06        .byte $06   ; <か>
- D - I - - 0x02F712 16:B702: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02F713 16:B703: 97        .byte $97

- D - I - - 0x02F714 16:B704: 08        .byte $08   ; <く>
- D - I - - 0x02F715 16:B705: 07        .byte $07   ; <き>
- D - I - - 0x02F716 16:B706: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02F717 16:B707: 9D        .byte $9D
- D - I - - 0x02F718 16:B708: 03        .byte $03   ; <う>
- D - I - - 0x02F719 16:B709: 9F        .byte $9F

- D - I - - 0x02F71A 16:B70A: 02        .byte $02   ; <い>
- D - I - - 0x02F71B 16:B70B: 90 B6     .word off_B690



off_B70D_A8:
- D - I - - 0x02F71D 16:B70D: 10        .byte $10   ; <た>
- D - I - - 0x02F71E 16:B70E: 18        .byte $18   ; <ね>
- D - I - - 0x02F71F 16:B70F: 43        .byte $43   ; <ウ>
- D - I - - 0x02F720 16:B710: 90        .byte $90   ; <U>
- D - I - - 0x02F721 16:B711: 47        .byte $47   ; <キ>
- D - I - - 0x02F722 16:B712: AE        .byte $AE   ; <ど>
- D - I - - 0x02F723 16:B713: 87        .byte $87   ; <G>
- D - I - - 0x02F724 16:B714: AF        .byte $AF   ; <ば>

- D - I - - 0x02F725 16:B715: 10        .byte $10   ; <た>
- D - I - - 0x02F726 16:B716: 19        .byte $19   ; <の>
- D - I - - 0x02F727 16:B717: 43        .byte $43   ; <ウ>
- D - I - - 0x02F728 16:B718: 92        .byte $92   ; <W>
- D - I - - 0x02F729 16:B719: 47        .byte $47   ; <キ>
- D - I - - 0x02F72A 16:B71A: 93        .byte $93   ; <Y>
- D - I - - 0x02F72B 16:B71B: 87        .byte $87   ; <G>
- D - I - - 0x02F72C 16:B71C: 96        .byte $96

- D - I - - 0x02F72D 16:B71D: 10        .byte $10   ; <た>
- D - I - - 0x02F72E 16:B71E: 1A        .byte $1A   ; <は>
- D - I - - 0x02F72F 16:B71F: 43        .byte $43   ; <ウ>
- D - I - - 0x02F730 16:B720: 98        .byte $98
- D - I - - 0x02F731 16:B721: 47        .byte $47   ; <キ>
- D - I - - 0x02F732 16:B722: 99        .byte $99
- D - I - - 0x02F733 16:B723: 87        .byte $87   ; <G>
- D - I - - 0x02F734 16:B724: 9C        .byte $9C

- D - I - - 0x02F735 16:B725: 01        .byte $01   ; <あ>



off_B726_A9:
- D - I - - 0x02F736 16:B726: 08        .byte $08   ; <く>
- D - I - - 0x02F737 16:B727: 03        .byte $03   ; <う>
- D - I - - 0x02F738 16:B728: 0D        .byte $0D   ; <す>
- D - I - - 0x02F739 16:B729: 79        .byte $79   ; <!>
- D - I - - 0x02F73A 16:B72A: 11        .byte $11   ; <ち>
- D - I - - 0x02F73B 16:B72B: 7C        .byte $7C   ; <~>

- D - I - - 0x02F73C 16:B72C: 18        .byte $18   ; <ね>
- D - I - - 0x02F73D 16:B72D: 04        .byte $04   ; <え>
- D - I - - 0x02F73E 16:B72E: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F73F 16:B72F: 7A        .byte $7A   ; <、>
- D - I - - 0x02F740 16:B730: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F741 16:B731: 7B        .byte $7B   ; <。>
- D - I - - 0x02F742 16:B732: 12        .byte $12   ; <つ>
- D - I - - 0x02F743 16:B733: 7E        .byte $7E   ; <.>
- D - I - - 0x02F744 16:B734: 11        .byte $11   ; <ち>
- D - I - - 0x02F745 16:B735: 15        .byte $15   ; <な>

- D - I - - 0x02F746 16:B736: 10        .byte $10   ; <た>
- D - I - - 0x02F747 16:B737: 05        .byte $05   ; <お>
- D - I - - 0x02F748 16:B738: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F749 16:B739: B9        .byte $B9   ; <ザ>
- D - I - - 0x02F74A 16:B73A: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F74B 16:B73B: BB        .byte $BB   ; <ズ>
- D - I - - 0x02F74C 16:B73C: 12        .byte $12   ; <つ>
- D - I - - 0x02F74D 16:B73D: 7D        .byte $7D   ; <ー>

- D - I - - 0x02F74E 16:B73E: 00        .byte $00
- D - I - - 0x02F74F 16:B73F: 06        .byte $06   ; <か>
- D - I - - 0x02F750 16:B740: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F751 16:B741: 7F        .byte $7F   ; <,>

- D - I - - 0x02F752 16:B742: 02        .byte $02   ; <い>
- D - I - - 0x02F753 16:B743: 59 B4     .word off_B459



off_B745_AA:
- D - I - - 0x02F755 16:B745: 10        .byte $10   ; <た>
- D - I - - 0x02F756 16:B746: 04        .byte $04   ; <え>
- D - I - - 0x02F757 16:B747: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F758 16:B748: 84        .byte $84   ; <D>
- D - I - - 0x02F759 16:B749: 13        .byte $13   ; <て>
- D - I - - 0x02F75A 16:B74A: 85        .byte $85   ; <E>
- D - I - - 0x02F75B 16:B74B: 12        .byte $12   ; <つ>
- D - I - - 0x02F75C 16:B74C: 15        .byte $15   ; <な>

- D - I - - 0x02F75D 16:B74D: 00        .byte $00
- D - I - - 0x02F75E 16:B74E: 05        .byte $05   ; <お>
- D - I - - 0x02F75F 16:B74F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F760 16:B750: 86        .byte $86   ; <F>

- D - I - - 0x02F761 16:B751: 00        .byte $00
- D - I - - 0x02F762 16:B752: 25        .byte $25   ; <ゆ>
- D - I - - 0x02F763 16:B753: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F764 16:B754: 15        .byte $15   ; <な>
; продолжение


off_B755:
- D - I - - 0x02F765 16:B755: 20        .byte $20   ; <み>
- D - I - - 0x02F766 16:B756: 03        .byte $03   ; <う>
- D - I - - 0x02F767 16:B757: 07        .byte $07   ; <き>
- D - I - - 0x02F768 16:B758: 74        .byte $74   ; <ィ>
- D - I - - 0x02F769 16:B759: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F76A 16:B75A: 73        .byte $73   ; <ヮ>
- D - I - - 0x02F76B 16:B75B: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F76C 16:B75C: 82        .byte $82   ; <B>
- D - I - - 0x02F76D 16:B75D: 0D        .byte $0D   ; <す>
- D - I - - 0x02F76E 16:B75E: 15        .byte $15   ; <な>
- D - I - - 0x02F76F 16:B75F: 11        .byte $11   ; <ち>
- D - I - - 0x02F770 16:B760: 83        .byte $83   ; <C>

- D - I - - 0x02F771 16:B761: 08        .byte $08   ; <く>
- D - I - - 0x02F772 16:B762: 04        .byte $04   ; <え>
- D - I - - 0x02F773 16:B763: 07        .byte $07   ; <き>
- D - I - - 0x02F774 16:B764: 76        .byte $76   ; <ォ>
- D - I - - 0x02F775 16:B765: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F776 16:B766: 72        .byte $72   ; <ョ>

- D - I - - 0x02F777 16:B767: 08        .byte $08   ; <く>
- D - I - - 0x02F778 16:B768: 05        .byte $05   ; <お>
- D - I - - 0x02F779 16:B769: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F77A 16:B76A: 87        .byte $87   ; <G>
- D - I - - 0x02F77B 16:B76B: 12        .byte $12   ; <つ>
- D - I - - 0x02F77C 16:B76C: 7D        .byte $7D   ; <ー>

- D - I - - 0x02F77D 16:B76D: 00        .byte $00
- D - I - - 0x02F77E 16:B76E: 06        .byte $06   ; <か>
- D - I - - 0x02F77F 16:B76F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F780 16:B770: 7F        .byte $7F   ; <,>

- D - I - - 0x02F781 16:B771: 02        .byte $02   ; <い>
- D - I - - 0x02F782 16:B772: 59 B4     .word off_B459



off_B774_AB:
- D - I - - 0x02F784 16:B774: 08        .byte $08   ; <く>
- D - I - - 0x02F785 16:B775: 04        .byte $04   ; <え>
- D - I - - 0x02F786 16:B776: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F787 16:B777: 88        .byte $88   ; <H>
- D - I - - 0x02F788 16:B778: 12        .byte $12   ; <つ>
- D - I - - 0x02F789 16:B779: 89        .byte $89   ; <I>

- D - I - - 0x02F78A 16:B77A: 00        .byte $00
- D - I - - 0x02F78B 16:B77B: 05        .byte $05   ; <お>
- D - I - - 0x02F78C 16:B77C: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F78D 16:B77D: 8A        .byte $8A   ; <N>

- D - I - - 0x02F78E 16:B77E: 02        .byte $02   ; <い>
- D - I - - 0x02F78F 16:B77F: 55 B7     .word off_B755



off_B781_AC:
- D - I - - 0x02F791 16:B781: 08        .byte $08   ; <く>
- D - I - - 0x02F792 16:B782: 03        .byte $03   ; <う>
- D - I - - 0x02F793 16:B783: 07        .byte $07   ; <き>
- D - I - - 0x02F794 16:B784: 8C        .byte $8C   ; <M>
- D - I - - 0x02F795 16:B785: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F796 16:B786: 8D        .byte $8D   ; <P>

- D - I - - 0x02F797 16:B787: 00        .byte $00
- D - I - - 0x02F798 16:B788: 04        .byte $04   ; <え>
- D - I - - 0x02F799 16:B789: 07        .byte $07   ; <き>
- D - I - - 0x02F79A 16:B78A: 8E        .byte $8E   ; <L>
; продолжение


off_B78B:
- D - I - - 0x02F79B 16:B78B: 00        .byte $00
- D - I - - 0x02F79C 16:B78C: 05        .byte $05   ; <お>
- D - I - - 0x02F79D 16:B78D: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F79E 16:B78E: A0        .byte $A0   ; <が>
; продолжение


off_B78F:
- D - I - - 0x02F79F 16:B78F: 10        .byte $10   ; <た>
- D - I - - 0x02F7A0 16:B790: 03        .byte $03   ; <う>
- D - I - - 0x02F7A1 16:B791: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F7A2 16:B792: 82        .byte $82   ; <B>
- D - I - - 0x02F7A3 16:B793: 0D        .byte $0D   ; <す>
- D - I - - 0x02F7A4 16:B794: 15        .byte $15   ; <な>
- D - I - - 0x02F7A5 16:B795: 11        .byte $11   ; <ち>
- D - I - - 0x02F7A6 16:B796: 7C        .byte $7C   ; <~>

- D - I - - 0x02F7A7 16:B797: 08        .byte $08   ; <く>
- D - I - - 0x02F7A8 16:B798: 05        .byte $05   ; <お>
- D - I - - 0x02F7A9 16:B799: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F7AA 16:B79A: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02F7AB 16:B79B: 12        .byte $12   ; <つ>
- D - I - - 0x02F7AC 16:B79C: 7D        .byte $7D   ; <ー>

- D - I - - 0x02F7AD 16:B79D: 00        .byte $00
- D - I - - 0x02F7AE 16:B79E: 04        .byte $04   ; <え>
- D - I - - 0x02F7AF 16:B79F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F7B0 16:B7A0: 8B        .byte $8B   ; <K>

- D - I - - 0x02F7B1 16:B7A1: 00        .byte $00
- D - I - - 0x02F7B2 16:B7A2: 25        .byte $25   ; <ゆ>
- D - I - - 0x02F7B3 16:B7A3: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F7B4 16:B7A4: 15        .byte $15   ; <な>

- D - I - - 0x02F7B5 16:B7A5: 10        .byte $10   ; <た>
- D - I - - 0x02F7B6 16:B7A6: 04        .byte $04   ; <え>
- D - I - - 0x02F7B7 16:B7A7: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F7B8 16:B7A8: 72        .byte $72   ; <ョ>
- D - I - - 0x02F7B9 16:B7A9: 12        .byte $12   ; <つ>
- D - I - - 0x02F7BA 16:B7AA: 7E        .byte $7E   ; <.>
- D - I - - 0x02F7BB 16:B7AB: 11        .byte $11   ; <ち>
- D - I - - 0x02F7BC 16:B7AC: 15        .byte $15   ; <な>

- D - I - - 0x02F7BD 16:B7AD: 00        .byte $00
- D - I - - 0x02F7BE 16:B7AE: 06        .byte $06   ; <か>
- D - I - - 0x02F7BF 16:B7AF: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F7C0 16:B7B0: 7F        .byte $7F   ; <,>

- D - I - - 0x02F7C1 16:B7B1: 02        .byte $02   ; <い>
- D - I - - 0x02F7C2 16:B7B2: 59 B4     .word off_B459



off_B7B4_AD:
- D - I - - 0x02F7C4 16:B7B4: 08        .byte $08   ; <く>
- D - I - - 0x02F7C5 16:B7B5: 03        .byte $03   ; <う>
- D - I - - 0x02F7C6 16:B7B6: 07        .byte $07   ; <き>
- D - I - - 0x02F7C7 16:B7B7: 8F        .byte $8F   ; <S>
- D - I - - 0x02F7C8 16:B7B8: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F7C9 16:B7B9: A4        .byte $A4   ; <ご>

- D - I - - 0x02F7CA 16:B7BA: 00        .byte $00
- D - I - - 0x02F7CB 16:B7BB: 04        .byte $04   ; <え>
- D - I - - 0x02F7CC 16:B7BC: 07        .byte $07   ; <き>
- D - I - - 0x02F7CD 16:B7BD: A5        .byte $A5   ; <ざ>

- D - I - - 0x02F7CE 16:B7BE: 02        .byte $02   ; <い>
- D - I - - 0x02F7CF 16:B7BF: 8B B7     .word off_B78B



off_B7C1_AE:
- D - I - - 0x02F7D1 16:B7C1: 10        .byte $10   ; <た>
- D - I - - 0x02F7D2 16:B7C2: 03        .byte $03   ; <う>
- D - I - - 0x02F7D3 16:B7C3: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F7D4 16:B7C4: 74        .byte $74   ; <ィ>
- D - I - - 0x02F7D5 16:B7C5: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F7D6 16:B7C6: 73        .byte $73   ; <ヮ>
- D - I - - 0x02F7D7 16:B7C7: 13        .byte $13   ; <て>
- D - I - - 0x02F7D8 16:B7C8: 5F        .byte $5F   ; <マ>

- D - I - - 0x02F7D9 16:B7C9: 10        .byte $10   ; <た>
- D - I - - 0x02F7DA 16:B7CA: 04        .byte $04   ; <え>
- D - I - - 0x02F7DB 16:B7CB: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F7DC 16:B7CC: 76        .byte $76   ; <ォ>
- D - I - - 0x02F7DD 16:B7CD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F7DE 16:B7CE: 72        .byte $72   ; <ョ>
- D - I - - 0x02F7DF 16:B7CF: 13        .byte $13   ; <て>
- D - I - - 0x02F7E0 16:B7D0: 75        .byte $75   ; <ェ>

- D - I - - 0x02F7E1 16:B7D1: 08        .byte $08   ; <く>
- D - I - - 0x02F7E2 16:B7D2: 05        .byte $05   ; <お>
- D - I - - 0x02F7E3 16:B7D3: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F7E4 16:B7D4: 78        .byte $78   ; <?>
- D - I - - 0x02F7E5 16:B7D5: 13        .byte $13   ; <て>
- D - I - - 0x02F7E6 16:B7D6: 77        .byte $77   ; <:>

- D - I - - 0x02F7E7 16:B7D7: 01        .byte $01   ; <あ>



off_B7D8_AF:
- D - I - - 0x02F7E8 16:B7D8: 00        .byte $00
- D - I - - 0x02F7E9 16:B7D9: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F7EA 16:B7DA: 0C        .byte $0C   ; <し>
- D - I - - 0x02F7EB 16:B7DB: 34        .byte $34   ; <1>

- D - I - - 0x02F7EC 16:B7DC: 18        .byte $18   ; <ね>
- D - I - - 0x02F7ED 16:B7DD: 00        .byte $00
- D - I - - 0x02F7EE 16:B7DE: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F7EF 16:B7DF: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F7F0 16:B7E0: 0D        .byte $0D   ; <す>
- D - I - - 0x02F7F1 16:B7E1: 36        .byte $36   ; <3>
- D - I - - 0x02F7F2 16:B7E2: 13        .byte $13   ; <て>
- D - I - - 0x02F7F3 16:B7E3: 31        .byte $31   ; <ゅ>
- D - I - - 0x02F7F4 16:B7E4: 11        .byte $11   ; <ち>
- D - I - - 0x02F7F5 16:B7E5: 37        .byte $37   ; <4>

- D - I - - 0x02F7F6 16:B7E6: 08        .byte $08   ; <く>
- D - I - - 0x02F7F7 16:B7E7: 01        .byte $01   ; <あ>
- D - I - - 0x02F7F8 16:B7E8: 0D        .byte $0D   ; <す>
- D - I - - 0x02F7F9 16:B7E9: 3C        .byte $3C   ; <9>
- D - I - - 0x02F7FA 16:B7EA: 11        .byte $11   ; <ち>
- D - I - - 0x02F7FB 16:B7EB: 3D        .byte $3D   ; <+>

- D - I - - 0x02F7FC 16:B7EC: 08        .byte $08   ; <く>
- D - I - - 0x02F7FD 16:B7ED: 02        .byte $02   ; <い>
- D - I - - 0x02F7FE 16:B7EE: 0D        .byte $0D   ; <す>
- D - I - - 0x02F7FF 16:B7EF: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02F800 16:B7F0: 11        .byte $11   ; <ち>
- D - I - - 0x02F801 16:B7F1: 19        .byte $19   ; <の>

- D - I - - 0x02F802 16:B7F2: 08        .byte $08   ; <く>
- D - I - - 0x02F803 16:B7F3: 03        .byte $03   ; <う>
- D - I - - 0x02F804 16:B7F4: 10        .byte $10   ; <た>
- D - I - - 0x02F805 16:B7F5: 1A        .byte $1A   ; <は>
- D - I - - 0x02F806 16:B7F6: 14        .byte $14   ; <と>
- D - I - - 0x02F807 16:B7F7: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02F808 16:B7F8: 03        .byte $03   ; <う>
- D - I - - 0x02F809 16:B7F9: 11 B8     .word off_B811
- D - I - - 0x02F80B 16:B7FB: 71 B8     .word off_B871
- D - I - - 0x02F80D 16:B7FD: 11 B8     .word off_B811
- - - - - - 0x02F80F 16:B7FF: 11 B8     .word off_B811
- - - - - - 0x02F811 16:B801: 11 B8     .word off_B811
- D - I - - 0x02F813 16:B803: 11 B8     .word off_B811
- - - - - - 0x02F815 16:B805: 11 B8     .word off_B811
- D - I - - 0x02F817 16:B807: 60 B8     .word off_B860
- - - - - - 0x02F819 16:B809: 11 B8     .word off_B811
- - - - - - 0x02F81B 16:B80B: 11 B8     .word off_B811
- D - I - - 0x02F81D 16:B80D: 11 B8     .word off_B811
- - - - - - 0x02F81F 16:B80F: 11 B8     .word off_B811



off_B811:
- D - I - - 0x02F821 16:B811: 08        .byte $08   ; <く>
- D - I - - 0x02F822 16:B812: 06        .byte $06   ; <か>
- D - I - - 0x02F823 16:B813: 09        .byte $09   ; <け>
- D - I - - 0x02F824 16:B814: 22        .byte $22   ; <め>
- D - I - - 0x02F825 16:B815: 0D        .byte $0D   ; <す>
- D - I - - 0x02F826 16:B816: 0B        .byte $0B   ; <さ>
; продолжение


off_B817:
- D - I - - 0x02F827 16:B817: 08        .byte $08   ; <く>
- D - I - - 0x02F828 16:B818: 04        .byte $04   ; <え>
- D - I - - 0x02F829 16:B819: 0D        .byte $0D   ; <す>
- D - I - - 0x02F82A 16:B81A: 03        .byte $03   ; <う>
- D - I - - 0x02F82B 16:B81B: 0C        .byte $0C   ; <し>
- D - I - - 0x02F82C 16:B81C: 2E        .byte $2E   ; <ん>

- D - I - - 0x02F82D 16:B81D: 00        .byte $00
- D - I - - 0x02F82E 16:B81E: 05        .byte $05   ; <お>
- D - I - - 0x02F82F 16:B81F: 0D        .byte $0D   ; <す>
- D - I - - 0x02F830 16:B820: 09        .byte $09   ; <け>
; продолжение


off_B821:
- D - I - - 0x02F831 16:B821: 08        .byte $08   ; <く>
- D - I - - 0x02F832 16:B822: 03        .byte $03   ; <う>
- D - I - - 0x02F833 16:B823: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F834 16:B824: 08        .byte $08   ; <く>
- D - I - - 0x02F835 16:B825: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F836 16:B826: 32        .byte $32   ; <ょ>

- D - I - - 0x02F837 16:B827: 10        .byte $10   ; <た>
- D - I - - 0x02F838 16:B828: 04        .byte $04   ; <え>
- D - I - - 0x02F839 16:B829: 08        .byte $08   ; <く>
- D - I - - 0x02F83A 16:B82A: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F83B 16:B82B: 12        .byte $12   ; <つ>
- D - I - - 0x02F83C 16:B82C: 04        .byte $04   ; <え>
- D - I - - 0x02F83D 16:B82D: 16        .byte $16   ; <に>
- D - I - - 0x02F83E 16:B82E: 33        .byte $33   ; <0>

- D - I - - 0x02F83F 16:B82F: 28        .byte $28   ; <り>
- D - I - - 0x02F840 16:B830: 05        .byte $05   ; <お>
- D - I - - 0x02F841 16:B831: 08        .byte $08   ; <く>
- D - I - - 0x02F842 16:B832: 20        .byte $20   ; <み>
- D - I - - 0x02F843 16:B833: 12        .byte $12   ; <つ>
- D - I - - 0x02F844 16:B834: 06        .byte $06   ; <か>
- D - I - - 0x02F845 16:B835: 16        .byte $16   ; <に>
- D - I - - 0x02F846 16:B836: 39        .byte $39   ; <6>
- D - I - - 0x02F847 16:B837: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F848 16:B838: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F849 16:B839: 81        .byte $81   ; <A>
- D - I - - 0x02F84A 16:B83A: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F84B 16:B83B: C1        .byte $C1   ; <デ>
- D - I - - 0x02F84C 16:B83C: 23        .byte $23   ; <も>

- D - I - - 0x02F84D 16:B83D: 28        .byte $28   ; <り>
- D - I - - 0x02F84E 16:B83E: 06        .byte $06   ; <か>
- D - I - - 0x02F84F 16:B83F: 12        .byte $12   ; <つ>
- D - I - - 0x02F850 16:B840: 0C        .byte $0C   ; <し>
- D - I - - 0x02F851 16:B841: 11        .byte $11   ; <ち>
- D - I - - 0x02F852 16:B842: 2C        .byte $2C   ; <わ>
- D - I - - 0x02F853 16:B843: 1A        .byte $1A   ; <は>
- D - I - - 0x02F854 16:B844: 24        .byte $24   ; <や>
- D - I - - 0x02F855 16:B845: 81        .byte $81   ; <A>
- D - I - - 0x02F856 16:B846: 25        .byte $25   ; <ゆ>
- D - I - - 0x02F857 16:B847: C1        .byte $C1   ; <デ>
- D - I - - 0x02F858 16:B848: 29        .byte $29   ; <る>
- D - I - - 0x02F859 16:B849: 16        .byte $16   ; <に>
- D - I - - 0x02F85A 16:B84A: 3B        .byte $3B   ; <8>

- D - I - - 0x02F85B 16:B84B: 20        .byte $20   ; <み>
- D - I - - 0x02F85C 16:B84C: 07        .byte $07   ; <き>
- D - I - - 0x02F85D 16:B84D: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F85E 16:B84E: 28        .byte $28   ; <り>
- D - I - - 0x02F85F 16:B84F: 0C        .byte $0C   ; <し>
- D - I - - 0x02F860 16:B850: 21        .byte $21   ; <む>
- D - I - - 0x02F861 16:B851: 80        .byte $80
- D - I - - 0x02F862 16:B852: 2A        .byte $2A   ; <れ>
- D - I - - 0x02F863 16:B853: C1        .byte $C1   ; <デ>
- D - I - - 0x02F864 16:B854: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02F865 16:B855: C7        .byte $C7   ; <ボ>
- D - I - - 0x02F866 16:B856: 27        .byte $27   ; <ら>

- D - I - - 0x02F867 16:B857: 00        .byte $00
- D - I - - 0x02F868 16:B858: 08        .byte $08   ; <く>
- D - I - - 0x02F869 16:B859: E7        .byte $E7
- D - I - - 0x02F86A 16:B85A: 02        .byte $02   ; <い>

- D - I - - 0x02F86B 16:B85B: 00        .byte $00
- D - I - - 0x02F86C 16:B85C: 21        .byte $21   ; <む>
- D - I - - 0x02F86D 16:B85D: 07        .byte $07   ; <き>
- D - I - - 0x02F86E 16:B85E: 26        .byte $26   ; <よ>

- D - I - - 0x02F86F 16:B85F: 01        .byte $01   ; <あ>



off_B860:
- D - I - - 0x02F870 16:B860: 00        .byte $00
- D - I - - 0x02F871 16:B861: 04        .byte $04   ; <え>
- D - I - - 0x02F872 16:B862: 0C        .byte $0C   ; <し>
- D - I - - 0x02F873 16:B863: 78        .byte $78   ; <?>

- D - I - - 0x02F874 16:B864: 00        .byte $00
- D - I - - 0x02F875 16:B865: 05        .byte $05   ; <お>
- D - I - - 0x02F876 16:B866: 0D        .byte $0D   ; <す>
- D - I - - 0x02F877 16:B867: 7A        .byte $7A   ; <、>

- D - I - - 0x02F878 16:B868: 08        .byte $08   ; <く>
- D - I - - 0x02F879 16:B869: 06        .byte $06   ; <か>
- D - I - - 0x02F87A 16:B86A: 08        .byte $08   ; <く>
- D - I - - 0x02F87B 16:B86B: 7B        .byte $7B   ; <。>
- D - I - - 0x02F87C 16:B86C: 0D        .byte $0D   ; <す>
- D - I - - 0x02F87D 16:B86D: 79        .byte $79   ; <!>

- D - I - - 0x02F87E 16:B86E: 02        .byte $02   ; <い>
- D - I - - 0x02F87F 16:B86F: 21 B8     .word off_B821



off_B871:
- D - I - - 0x02F881 16:B871: 08        .byte $08   ; <く>
- D - I - - 0x02F882 16:B872: 06        .byte $06   ; <か>
- D - I - - 0x02F883 16:B873: 09        .byte $09   ; <け>
- D - I - - 0x02F884 16:B874: 22        .byte $22   ; <め>
- D - I - - 0x02F885 16:B875: 0D        .byte $0D   ; <す>
- D - I - - 0x02F886 16:B876: 7E        .byte $7E   ; <.>

- D - I - - 0x02F887 16:B877: 00        .byte $00
- D - I - - 0x02F888 16:B878: 27        .byte $27   ; <ら>
- D - I - - 0x02F889 16:B879: 10        .byte $10   ; <た>
- D - I - - 0x02F88A 16:B87A: 7F        .byte $7F   ; <,>

- D - I - - 0x02F88B 16:B87B: 02        .byte $02   ; <い>
- D - I - - 0x02F88C 16:B87C: 17 B8     .word off_B817



off_B87E_B0:
- D - I - - 0x02F88E 16:B87E: 00        .byte $00
- D - I - - 0x02F88F 16:B87F: 00        .byte $00
- D - I - - 0x02F890 16:B880: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F891 16:B881: 15        .byte $15   ; <な>

- D - I - - 0x02F892 16:B882: 08        .byte $08   ; <く>
- D - I - - 0x02F893 16:B883: 01        .byte $01   ; <あ>
- D - I - - 0x02F894 16:B884: 11        .byte $11   ; <ち>
- D - I - - 0x02F895 16:B885: 35        .byte $35   ; <2>
- D - I - - 0x02F896 16:B886: 15        .byte $15   ; <な>
- D - I - - 0x02F897 16:B887: 17        .byte $17   ; <ぬ>

- D - I - - 0x02F898 16:B888: 08        .byte $08   ; <く>
- D - I - - 0x02F899 16:B889: 02        .byte $02   ; <い>
- D - I - - 0x02F89A 16:B88A: 11        .byte $11   ; <ち>
- D - I - - 0x02F89B 16:B88B: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02F89C 16:B88C: 15        .byte $15   ; <な>
- D - I - - 0x02F89D 16:B88D: 1D        .byte $1D   ; <へ>

- D - I - - 0x02F89E 16:B88E: 08        .byte $08   ; <く>
- D - I - - 0x02F89F 16:B88F: 03        .byte $03   ; <う>
- D - I - - 0x02F8A0 16:B890: 11        .byte $11   ; <ち>
- D - I - - 0x02F8A1 16:B891: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F8A2 16:B892: 14        .byte $14   ; <と>
- D - I - - 0x02F8A3 16:B893: 1F        .byte $1F   ; <ま>

- D - I - - 0x02F8A4 16:B894: 02        .byte $02   ; <い>
- D - I - - 0x02F8A5 16:B895: 11 B8     .word off_B811



off_B897_2F:
- D - I - - 0x02F8A7 16:B897: 08        .byte $08   ; <く>
- D - I - - 0x02F8A8 16:B898: 03        .byte $03   ; <う>
- D - I - - 0x02F8A9 16:B899: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F8AA 16:B89A: 2D        .byte $2D   ; <を>
- D - I - - 0x02F8AB 16:B89B: 13        .byte $13   ; <て>
- D - I - - 0x02F8AC 16:B89C: 38        .byte $38   ; <5>

- D - I - - 0x02F8AD 16:B89D: 08        .byte $08   ; <く>
- D - I - - 0x02F8AE 16:B89E: 04        .byte $04   ; <え>
- D - I - - 0x02F8AF 16:B89F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F8B0 16:B8A0: 2F        .byte $2F   ; <っ>
- D - I - - 0x02F8B1 16:B8A1: 13        .byte $13   ; <て>
- D - I - - 0x02F8B2 16:B8A2: 3A        .byte $3A   ; <7>

- D - I - - 0x02F8B3 16:B8A3: 01        .byte $01   ; <あ>



off_B8A4_B1:
- D - I - - 0x02F8B4 16:B8A4: 00        .byte $00
- D - I - - 0x02F8B5 16:B8A5: 00        .byte $00
- D - I - - 0x02F8B6 16:B8A6: 0C        .byte $0C   ; <し>
- D - I - - 0x02F8B7 16:B8A7: 20        .byte $20   ; <み>

- D - I - - 0x02F8B8 16:B8A8: 20        .byte $20   ; <み>
- D - I - - 0x02F8B9 16:B8A9: 01        .byte $01   ; <あ>
- D - I - - 0x02F8BA 16:B8AA: 0C        .byte $0C   ; <し>
- D - I - - 0x02F8BB 16:B8AB: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F8BC 16:B8AC: 0D        .byte $0D   ; <す>
- D - I - - 0x02F8BD 16:B8AD: 22        .byte $22   ; <め>
- D - I - - 0x02F8BE 16:B8AE: 10        .byte $10   ; <た>
- D - I - - 0x02F8BF 16:B8AF: 1F        .byte $1F   ; <ま>
- D - I - - 0x02F8C0 16:B8B0: 11        .byte $11   ; <ち>
- D - I - - 0x02F8C1 16:B8B1: 23        .byte $23   ; <も>
- D - I - - 0x02F8C2 16:B8B2: 14        .byte $14   ; <と>
- D - I - - 0x02F8C3 16:B8B3: 26        .byte $26   ; <よ>

- D - I - - 0x02F8C4 16:B8B4: 20        .byte $20   ; <み>
- D - I - - 0x02F8C5 16:B8B5: 02        .byte $02   ; <い>
- D - I - - 0x02F8C6 16:B8B6: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F8C7 16:B8B7: 34        .byte $34   ; <1>
- D - I - - 0x02F8C8 16:B8B8: 0D        .byte $0D   ; <す>
- D - I - - 0x02F8C9 16:B8B9: 28        .byte $28   ; <り>
- D - I - - 0x02F8CA 16:B8BA: 12        .byte $12   ; <つ>
- D - I - - 0x02F8CB 16:B8BB: 35        .byte $35   ; <2>
- D - I - - 0x02F8CC 16:B8BC: 11        .byte $11   ; <ち>
- D - I - - 0x02F8CD 16:B8BD: 29        .byte $29   ; <る>
- D - I - - 0x02F8CE 16:B8BE: 14        .byte $14   ; <と>
- D - I - - 0x02F8CF 16:B8BF: 2C        .byte $2C   ; <わ>

- D - I - - 0x02F8D0 16:B8C0: 20        .byte $20   ; <み>
- D - I - - 0x02F8D1 16:B8C1: 03        .byte $03   ; <う>
- D - I - - 0x02F8D2 16:B8C2: 0C        .byte $0C   ; <し>
- D - I - - 0x02F8D3 16:B8C3: 36        .byte $36   ; <3>
- D - I - - 0x02F8D4 16:B8C4: 0D        .byte $0D   ; <す>
- D - I - - 0x02F8D5 16:B8C5: 2A        .byte $2A   ; <れ>
- D - I - - 0x02F8D6 16:B8C6: 10        .byte $10   ; <た>
- D - I - - 0x02F8D7 16:B8C7: 37        .byte $37   ; <4>
- D - I - - 0x02F8D8 16:B8C8: 11        .byte $11   ; <ち>
- D - I - - 0x02F8D9 16:B8C9: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02F8DA 16:B8CA: 14        .byte $14   ; <と>
- D - I - - 0x02F8DB 16:B8CB: 2E        .byte $2E   ; <ん>

- D - I - - 0x02F8DC 16:B8CC: 10        .byte $10   ; <た>
- D - I - - 0x02F8DD 16:B8CD: 04        .byte $04   ; <え>
- D - I - - 0x02F8DE 16:B8CE: 0D        .byte $0D   ; <す>
- D - I - - 0x02F8DF 16:B8CF: 25        .byte $25   ; <ゆ>
- D - I - - 0x02F8E0 16:B8D0: 11        .byte $11   ; <ち>
- D - I - - 0x02F8E1 16:B8D1: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F8E2 16:B8D2: 15        .byte $15   ; <な>
- D - I - - 0x02F8E3 16:B8D3: 31        .byte $31   ; <ゅ>

- D - I - - 0x02F8E4 16:B8D4: 18        .byte $18   ; <ね>
- D - I - - 0x02F8E5 16:B8D5: 05        .byte $05   ; <お>
- D - I - - 0x02F8E6 16:B8D6: 46        .byte $46   ; <カ>
- D - I - - 0x02F8E7 16:B8D7: 21        .byte $21   ; <む>
- D - I - - 0x02F8E8 16:B8D8: 45        .byte $45   ; <オ>
- D - I - - 0x02F8E9 16:B8D9: 2D        .byte $2D   ; <を>
- D - I - - 0x02F8EA 16:B8DA: 86        .byte $86   ; <F>
- D - I - - 0x02F8EB 16:B8DB: 24        .byte $24   ; <や>
- D - I - - 0x02F8EC 16:B8DC: 85        .byte $85   ; <E>
- D - I - - 0x02F8ED 16:B8DD: 38        .byte $38   ; <5>

- D - I - - 0x02F8EE 16:B8DE: 10        .byte $10   ; <た>
- D - I - - 0x02F8EF 16:B8DF: 06        .byte $06   ; <か>
- D - I - - 0x02F8F0 16:B8E0: 0D        .byte $0D   ; <す>
- D - I - - 0x02F8F1 16:B8E1: 27        .byte $27   ; <ら>
- D - I - - 0x02F8F2 16:B8E2: 11        .byte $11   ; <ち>
- D - I - - 0x02F8F3 16:B8E3: 32        .byte $32   ; <ょ>
- D - I - - 0x02F8F4 16:B8E4: 15        .byte $15   ; <な>
- D - I - - 0x02F8F5 16:B8E5: 33        .byte $33   ; <0>

- D - I - - 0x02F8F6 16:B8E6: 08        .byte $08   ; <く>
- D - I - - 0x02F8F7 16:B8E7: 07        .byte $07   ; <き>
- D - I - - 0x02F8F8 16:B8E8: 45        .byte $45   ; <オ>
- D - I - - 0x02F8F9 16:B8E9: 2F        .byte $2F   ; <っ>
- D - I - - 0x02F8FA 16:B8EA: 85        .byte $85   ; <E>
- D - I - - 0x02F8FB 16:B8EB: 3A        .byte $3A   ; <7>

- D - I - - 0x02F8FC 16:B8EC: 01        .byte $01   ; <あ>



off_B8ED_B2:
- D - I - - 0x02F8FD 16:B8ED: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F8FE 16:B8EE: 01        .byte $01   ; <あ>
- D - I - - 0x02F8FF 16:B8EF: 00        .byte $00
- D - I - - 0x02F900 16:B8F0: 02        .byte $02   ; <い>
- D - I - - 0x02F901 16:B8F1: 05        .byte $05   ; <お>
- D - I - - 0x02F902 16:B8F2: 03        .byte $03   ; <う>
- D - I - - 0x02F903 16:B8F3: 09        .byte $09   ; <け>
- D - I - - 0x02F904 16:B8F4: 06        .byte $06   ; <か>
- D - I - - 0x02F905 16:B8F5: 0D        .byte $0D   ; <す>
- D - I - - 0x02F906 16:B8F6: 07        .byte $07   ; <き>
- D - I - - 0x02F907 16:B8F7: 11        .byte $11   ; <ち>
- D - I - - 0x02F908 16:B8F8: 12        .byte $12   ; <つ>
- D - I - - 0x02F909 16:B8F9: 15        .byte $15   ; <な>
- D - I - - 0x02F90A 16:B8FA: 13        .byte $13   ; <て>
- D - I - - 0x02F90B 16:B8FB: 19        .byte $19   ; <の>
- D - I - - 0x02F90C 16:B8FC: 16        .byte $16   ; <に>

- D - I - - 0x02F90D 16:B8FD: 38        .byte $38   ; <5>
- D - I - - 0x02F90E 16:B8FE: 02        .byte $02   ; <い>
- D - I - - 0x02F90F 16:B8FF: 00        .byte $00
- D - I - - 0x02F910 16:B900: 08        .byte $08   ; <く>
- D - I - - 0x02F911 16:B901: 04        .byte $04   ; <え>
- D - I - - 0x02F912 16:B902: 09        .byte $09   ; <け>
- D - I - - 0x02F913 16:B903: 09        .byte $09   ; <け>
- D - I - - 0x02F914 16:B904: 1D        .byte $1D   ; <へ>
- D - I - - 0x02F915 16:B905: 08        .byte $08   ; <く>
- D - I - - 0x02F916 16:B906: 0C        .byte $0C   ; <し>
- D - I - - 0x02F917 16:B907: 0D        .byte $0D   ; <す>
- D - I - - 0x02F918 16:B908: 0D        .byte $0D   ; <す>
- D - I - - 0x02F919 16:B909: 11        .byte $11   ; <ち>
- D - I - - 0x02F91A 16:B90A: 18        .byte $18   ; <ね>
- D - I - - 0x02F91B 16:B90B: 15        .byte $15   ; <な>
- D - I - - 0x02F91C 16:B90C: 19        .byte $19   ; <の>
- D - I - - 0x02F91D 16:B90D: 19        .byte $19   ; <の>
- D - I - - 0x02F91E 16:B90E: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02F91F 16:B90F: 38        .byte $38   ; <5>
- D - I - - 0x02F920 16:B910: 03        .byte $03   ; <う>
- D - I - - 0x02F921 16:B911: 02        .byte $02   ; <い>
- D - I - - 0x02F922 16:B912: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F923 16:B913: 04        .byte $04   ; <え>
- D - I - - 0x02F924 16:B914: 0B        .byte $0B   ; <さ>
- D - I - - 0x02F925 16:B915: 08        .byte $08   ; <く>
- D - I - - 0x02F926 16:B916: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F927 16:B917: 0C        .byte $0C   ; <し>
- D - I - - 0x02F928 16:B918: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F929 16:B919: 10        .byte $10   ; <た>
- D - I - - 0x02F92A 16:B91A: 1A        .byte $1A   ; <は>
- D - I - - 0x02F92B 16:B91B: 15        .byte $15   ; <な>
- D - I - - 0x02F92C 16:B91C: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02F92D 16:B91D: 19        .byte $19   ; <の>
- D - I - - 0x02F92E 16:B91E: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02F92F 16:B91F: 81        .byte $81   ; <A>
- D - I - - 0x02F930 16:B920: 1F        .byte $1F   ; <ま>

- D - I - - 0x02F931 16:B921: 38        .byte $38   ; <5>
- D - I - - 0x02F932 16:B922: 04        .byte $04   ; <え>
- D - I - - 0x02F933 16:B923: 02        .byte $02   ; <い>
- D - I - - 0x02F934 16:B924: 20        .byte $20   ; <み>
- D - I - - 0x02F935 16:B925: 06        .byte $06   ; <か>
- D - I - - 0x02F936 16:B926: 21        .byte $21   ; <む>
- D - I - - 0x02F937 16:B927: 09        .byte $09   ; <け>
- D - I - - 0x02F938 16:B928: 24        .byte $24   ; <や>
- D - I - - 0x02F939 16:B929: 0D        .byte $0D   ; <す>
- D - I - - 0x02F93A 16:B92A: 25        .byte $25   ; <ゆ>
- D - I - - 0x02F93B 16:B92B: 10        .byte $10   ; <た>
- D - I - - 0x02F93C 16:B92C: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F93D 16:B92D: 14        .byte $14   ; <と>
- D - I - - 0x02F93E 16:B92E: 31        .byte $31   ; <ゅ>
- D - I - - 0x02F93F 16:B92F: 81        .byte $81   ; <A>
- D - I - - 0x02F940 16:B930: 34        .byte $34   ; <1>
- D - I - - 0x02F941 16:B931: C1        .byte $C1   ; <デ>
- D - I - - 0x02F942 16:B932: 35        .byte $35   ; <2>

- D - I - - 0x02F943 16:B933: 28        .byte $28   ; <り>
- D - I - - 0x02F944 16:B934: 05        .byte $05   ; <お>
- D - I - - 0x02F945 16:B935: 02        .byte $02   ; <い>
- D - I - - 0x02F946 16:B936: 22        .byte $22   ; <め>
- D - I - - 0x02F947 16:B937: 06        .byte $06   ; <か>
- D - I - - 0x02F948 16:B938: 23        .byte $23   ; <も>
- D - I - - 0x02F949 16:B939: 09        .byte $09   ; <け>
- D - I - - 0x02F94A 16:B93A: 26        .byte $26   ; <よ>
- D - I - - 0x02F94B 16:B93B: 0D        .byte $0D   ; <す>
- D - I - - 0x02F94C 16:B93C: 27        .byte $27   ; <ら>
- D - I - - 0x02F94D 16:B93D: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F94E 16:B93E: 05        .byte $05   ; <お>
- D - I - - 0x02F94F 16:B93F: 12        .byte $12   ; <つ>
- D - I - - 0x02F950 16:B940: 32        .byte $32   ; <ょ>

- D - I - - 0x02F951 16:B941: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F952 16:B942: 06        .byte $06   ; <か>
- D - I - - 0x02F953 16:B943: 03        .byte $03   ; <う>
- D - I - - 0x02F954 16:B944: 28        .byte $28   ; <り>
- D - I - - 0x02F955 16:B945: 07        .byte $07   ; <き>
- D - I - - 0x02F956 16:B946: 33        .byte $33   ; <0>
- D - I - - 0x02F957 16:B947: 06        .byte $06   ; <か>
- D - I - - 0x02F958 16:B948: 29        .byte $29   ; <る>
- D - I - - 0x02F959 16:B949: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F95A 16:B94A: 2C        .byte $2C   ; <わ>
- D - I - - 0x02F95B 16:B94B: 0E        .byte $0E   ; <せ>
- D - I - - 0x02F95C 16:B94C: 2D        .byte $2D   ; <を>
- D - I - - 0x02F95D 16:B94D: 13        .byte $13   ; <て>
- D - I - - 0x02F95E 16:B94E: 38        .byte $38   ; <5>
- D - I - - 0x02F95F 16:B94F: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F960 16:B950: 39        .byte $39   ; <6>

- D - I - - 0x02F961 16:B951: 01        .byte $01   ; <あ>



off_B952_B3:
- D - I - - 0x02F962 16:B952: 00        .byte $00
- D - I - - 0x02F963 16:B953: 19        .byte $19   ; <の>
- D - I - - 0x02F964 16:B954: 86        .byte $86   ; <F>
- D - I - - 0x02F965 16:B955: 60        .byte $60   ; <ミ>

- D - I - - 0x02F966 16:B956: 00        .byte $00
- D - I - - 0x02F967 16:B957: 24        .byte $24   ; <や>
- D - I - - 0x02F968 16:B958: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F969 16:B959: 48        .byte $48   ; <ク>

- D - I - - 0x02F96A 16:B95A: 10        .byte $10   ; <た>
- D - I - - 0x02F96B 16:B95B: 02        .byte $02   ; <い>
- D - I - - 0x02F96C 16:B95C: 09        .byte $09   ; <け>
- D - I - - 0x02F96D 16:B95D: 67        .byte $67   ; <ラ>
- D - I - - 0x02F96E 16:B95E: 0D        .byte $0D   ; <す>
- D - I - - 0x02F96F 16:B95F: 45        .byte $45   ; <オ>
- D - I - - 0x02F970 16:B960: 11        .byte $11   ; <ち>
- D - I - - 0x02F971 16:B961: 50        .byte $50   ; <タ>

- D - I - - 0x02F972 16:B962: 18        .byte $18   ; <ね>
- D - I - - 0x02F973 16:B963: 03        .byte $03   ; <う>
- D - I - - 0x02F974 16:B964: 05        .byte $05   ; <お>
- D - I - - 0x02F975 16:B965: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02F976 16:B966: 09        .byte $09   ; <け>
- D - I - - 0x02F977 16:B967: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02F978 16:B968: 0D        .byte $0D   ; <す>
- D - I - - 0x02F979 16:B969: 47        .byte $47   ; <キ>
- D - I - - 0x02F97A 16:B96A: 10        .byte $10   ; <た>
- D - I - - 0x02F97B 16:B96B: 52        .byte $52   ; <ツ>
; продолжение


off_B96C:
- D - I - - 0x02F97C 16:B96C: 28        .byte $28   ; <り>
- D - I - - 0x02F97D 16:B96D: 01        .byte $01   ; <あ>
- D - I - - 0x02F97E 16:B96E: 05        .byte $05   ; <お>
- D - I - - 0x02F97F 16:B96F: 61        .byte $61   ; <ム>
- D - I - - 0x02F980 16:B970: 09        .byte $09   ; <け>
- D - I - - 0x02F981 16:B971: 70        .byte $70   ; <ャ>
- D - I - - 0x02F982 16:B972: 0D        .byte $0D   ; <す>
- D - I - - 0x02F983 16:B973: 70        .byte $70   ; <ャ>
- D - I - - 0x02F984 16:B974: 11        .byte $11   ; <ち>
- D - I - - 0x02F985 16:B975: 70        .byte $70   ; <ャ>
- D - I - - 0x02F986 16:B976: 15        .byte $15   ; <な>
- D - I - - 0x02F987 16:B977: 70        .byte $70   ; <ャ>
- D - I - - 0x02F988 16:B978: 19        .byte $19   ; <の>
- D - I - - 0x02F989 16:B979: 6B        .byte $6B   ; <ロ>

- D - I - - 0x02F98A 16:B97A: 18        .byte $18   ; <ね>
- D - I - - 0x02F98B 16:B97B: 02        .byte $02   ; <い>
- D - I - - 0x02F98C 16:B97C: 69        .byte $69   ; <ル>
- D - I - - 0x02F98D 16:B97D: 62        .byte $62   ; <メ>
- D - I - - 0x02F98E 16:B97E: 05        .byte $05   ; <お>
- D - I - - 0x02F98F 16:B97F: 70        .byte $70   ; <ャ>
- D - I - - 0x02F990 16:B980: 15        .byte $15   ; <な>
- D - I - - 0x02F991 16:B981: 70        .byte $70   ; <ャ>
- D - I - - 0x02F992 16:B982: 19        .byte $19   ; <の>
- D - I - - 0x02F993 16:B983: 55        .byte $55   ; <ナ>

- D - I - - 0x02F994 16:B984: 08        .byte $08   ; <く>
- D - I - - 0x02F995 16:B985: 03        .byte $03   ; <う>
- D - I - - 0x02F996 16:B986: 15        .byte $15   ; <な>
- D - I - - 0x02F997 16:B987: 56        .byte $56   ; <ニ>
- D - I - - 0x02F998 16:B988: 19        .byte $19   ; <の>
- D - I - - 0x02F999 16:B989: 57        .byte $57   ; <ヌ>

- D - I - - 0x02F99A 16:B98A: 28        .byte $28   ; <り>
- D - I - - 0x02F99B 16:B98B: 04        .byte $04   ; <え>
- D - I - - 0x02F99C 16:B98C: 04        .byte $04   ; <え>
- D - I - - 0x02F99D 16:B98D: 75        .byte $75   ; <ェ>
- D - I - - 0x02F99E 16:B98E: 08        .byte $08   ; <く>
- D - I - - 0x02F99F 16:B98F: 68        .byte $68   ; <リ>
- D - I - - 0x02F9A0 16:B990: 0C        .byte $0C   ; <し>
- D - I - - 0x02F9A1 16:B991: 4D        .byte $4D   ; <ス>
- D - I - - 0x02F9A2 16:B992: 13        .byte $13   ; <て>
- D - I - - 0x02F9A3 16:B993: 58        .byte $58   ; <ネ>
- D - I - - 0x02F9A4 16:B994: 14        .byte $14   ; <と>
- D - I - - 0x02F9A5 16:B995: 5C        .byte $5C   ; <フ>
- D - I - - 0x02F9A6 16:B996: 19        .byte $19   ; <の>
- D - I - - 0x02F9A7 16:B997: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02F9A8 16:B998: 20        .byte $20   ; <み>
- D - I - - 0x02F9A9 16:B999: 05        .byte $05   ; <お>
- D - I - - 0x02F9AA 16:B99A: 08        .byte $08   ; <く>
- D - I - - 0x02F9AB 16:B99B: 6A        .byte $6A   ; <レ>
- D - I - - 0x02F9AC 16:B99C: 0F        .byte $0F   ; <そ>
- D - I - - 0x02F9AD 16:B99D: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02F9AE 16:B99E: 13        .byte $13   ; <て>
- D - I - - 0x02F9AF 16:B99F: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02F9B0 16:B9A0: 14        .byte $14   ; <と>
- D - I - - 0x02F9B1 16:B9A1: 5E        .byte $5E   ; <ホ>
- D - I - - 0x02F9B2 16:B9A2: 19        .byte $19   ; <の>
- D - I - - 0x02F9B3 16:B9A3: 5F        .byte $5F   ; <マ>

- D - I - - 0x02F9B4 16:B9A4: 38        .byte $38   ; <5>
- D - I - - 0x02F9B5 16:B9A5: 06        .byte $06   ; <か>
- D - I - - 0x02F9B6 16:B9A6: 00        .byte $00
- D - I - - 0x02F9B7 16:B9A7: 04        .byte $04   ; <え>
- D - I - - 0x02F9B8 16:B9A8: 04        .byte $04   ; <え>
- D - I - - 0x02F9B9 16:B9A9: 05        .byte $05   ; <お>
- D - I - - 0x02F9BA 16:B9AA: 08        .byte $08   ; <く>
- D - I - - 0x02F9BB 16:B9AB: 2C        .byte $2C   ; <わ>
- D - I - - 0x02F9BC 16:B9AC: 0A        .byte $0A   ; <こ>
- D - I - - 0x02F9BD 16:B9AD: 10        .byte $10   ; <た>
- D - I - - 0x02F9BE 16:B9AE: 0C        .byte $0C   ; <し>
- D - I - - 0x02F9BF 16:B9AF: 65        .byte $65   ; <ユ>
- D - I - - 0x02F9C0 16:B9B0: 10        .byte $10   ; <た>
- D - I - - 0x02F9C1 16:B9B1: 51        .byte $51   ; <チ>
- D - I - - 0x02F9C2 16:B9B2: 14        .byte $14   ; <と>
- D - I - - 0x02F9C3 16:B9B3: 54        .byte $54   ; <ト>
- D - I - - 0x02F9C4 16:B9B4: 18        .byte $18   ; <ね>
- D - I - - 0x02F9C5 16:B9B5: 6E        .byte $6E   ; <ン>

- D - I - - 0x02F9C6 16:B9B6: 00        .byte $00
- D - I - - 0x02F9C7 16:B9B7: 12        .byte $12   ; <つ>
- D - I - - 0x02F9C8 16:B9B8: 01        .byte $01   ; <あ>
- D - I - - 0x02F9C9 16:B9B9: 63        .byte $63   ; <モ>

- D - I - - 0x02F9CA 16:B9BA: 00        .byte $00
- D - I - - 0x02F9CB 16:B9BB: 22        .byte $22   ; <め>
- D - I - - 0x02F9CC 16:B9BC: 01        .byte $01   ; <あ>
- D - I - - 0x02F9CD 16:B9BD: 69        .byte $69   ; <ル>

- D - I - - 0x02F9CE 16:B9BE: 01        .byte $01   ; <あ>



off_B9BF_B4:
- D - I - - 0x02F9CF 16:B9BF: 28        .byte $28   ; <り>
- D - I - - 0x02F9D0 16:B9C0: 01        .byte $01   ; <あ>
- D - I - - 0x02F9D1 16:B9C1: 04        .byte $04   ; <え>
- D - I - - 0x02F9D2 16:B9C2: 17        .byte $17   ; <ぬ>
- D - I - - 0x02F9D3 16:B9C3: 08        .byte $08   ; <く>
- D - I - - 0x02F9D4 16:B9C4: 15        .byte $15   ; <な>
- D - I - - 0x02F9D5 16:B9C5: 0C        .byte $0C   ; <し>
- D - I - - 0x02F9D6 16:B9C6: 01        .byte $01   ; <あ>
- D - I - - 0x02F9D7 16:B9C7: 10        .byte $10   ; <た>
- D - I - - 0x02F9D8 16:B9C8: 01        .byte $01   ; <あ>
- D - I - - 0x02F9D9 16:B9C9: 14        .byte $14   ; <と>
- D - I - - 0x02F9DA 16:B9CA: 01        .byte $01   ; <あ>
- D - I - - 0x02F9DB 16:B9CB: 18        .byte $18   ; <ね>
- D - I - - 0x02F9DC 16:B9CC: 23        .byte $23   ; <も>

- D - I - - 0x02F9DD 16:B9CD: 28        .byte $28   ; <り>
- D - I - - 0x02F9DE 16:B9CE: 02        .byte $02   ; <い>
- D - I - - 0x02F9DF 16:B9CF: 04        .byte $04   ; <え>
- D - I - - 0x02F9E0 16:B9D0: 1D        .byte $1D   ; <へ>
- D - I - - 0x02F9E1 16:B9D1: 08        .byte $08   ; <く>
- D - I - - 0x02F9E2 16:B9D2: 01        .byte $01   ; <あ>
- D - I - - 0x02F9E3 16:B9D3: 0C        .byte $0C   ; <し>
- D - I - - 0x02F9E4 16:B9D4: 01        .byte $01   ; <あ>
- D - I - - 0x02F9E5 16:B9D5: 10        .byte $10   ; <た>
- D - I - - 0x02F9E6 16:B9D6: 01        .byte $01   ; <あ>
- D - I - - 0x02F9E7 16:B9D7: 14        .byte $14   ; <と>
- D - I - - 0x02F9E8 16:B9D8: 28        .byte $28   ; <り>
- D - I - - 0x02F9E9 16:B9D9: 18        .byte $18   ; <ね>
- D - I - - 0x02F9EA 16:B9DA: 29        .byte $29   ; <る>

- D - I - - 0x02F9EB 16:B9DB: 28        .byte $28   ; <り>
- D - I - - 0x02F9EC 16:B9DC: 03        .byte $03   ; <う>
- D - I - - 0x02F9ED 16:B9DD: 04        .byte $04   ; <え>
- D - I - - 0x02F9EE 16:B9DE: 2A        .byte $2A   ; <れ>
- D - I - - 0x02F9EF 16:B9DF: 08        .byte $08   ; <く>
- D - I - - 0x02F9F0 16:B9E0: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02F9F1 16:B9E1: 0C        .byte $0C   ; <し>
- D - I - - 0x02F9F2 16:B9E2: 2E        .byte $2E   ; <ん>
- D - I - - 0x02F9F3 16:B9E3: 11        .byte $11   ; <ち>
- D - I - - 0x02F9F4 16:B9E4: 2F        .byte $2F   ; <っ>
- D - I - - 0x02F9F5 16:B9E5: 15        .byte $15   ; <な>
- D - I - - 0x02F9F6 16:B9E6: 3A        .byte $3A   ; <7>
- D - I - - 0x02F9F7 16:B9E7: 18        .byte $18   ; <ね>
- D - I - - 0x02F9F8 16:B9E8: 3B        .byte $3B   ; <8>

- D - I - - 0x02F9F9 16:B9E9: 30        .byte $30   ; <ゃ>
- D - I - - 0x02F9FA 16:B9EA: 04        .byte $04   ; <え>
- D - I - - 0x02F9FB 16:B9EB: 04        .byte $04   ; <え>
- D - I - - 0x02F9FC 16:B9EC: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02F9FD 16:B9ED: 09        .byte $09   ; <け>
- D - I - - 0x02F9FE 16:B9EE: 3F        .byte $3F   ; <•>
- D - I - - 0x02F9FF 16:B9EF: 0D        .byte $0D   ; <す>
- D - I - - 0x02FA00 16:B9F0: 22        .byte $22   ; <め>
- D - I - - 0x02FA01 16:B9F1: 11        .byte $11   ; <ち>
- D - I - - 0x02FA02 16:B9F2: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FA03 16:B9F3: 15        .byte $15   ; <な>
- D - I - - 0x02FA04 16:B9F4: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02FA05 16:B9F5: 14        .byte $14   ; <と>
- D - I - - 0x02FA06 16:B9F6: 31        .byte $31   ; <ゅ>
- D - I - - 0x02FA07 16:B9F7: 18        .byte $18   ; <ね>
- D - I - - 0x02FA08 16:B9F8: 14        .byte $14   ; <と>

- D - I - - 0x02FA09 16:B9F9: 20        .byte $20   ; <み>
- D - I - - 0x02FA0A 16:B9FA: 05        .byte $05   ; <お>
- D - I - - 0x02FA0B 16:B9FB: 08        .byte $08   ; <く>
- D - I - - 0x02FA0C 16:B9FC: 26        .byte $26   ; <よ>
- D - I - - 0x02FA0D 16:B9FD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FA0E 16:B9FE: 27        .byte $27   ; <ら>
- D - I - - 0x02FA0F 16:B9FF: 13        .byte $13   ; <て>
- D - I - - 0x02FA10 16:BA00: 32        .byte $32   ; <ょ>
- D - I - - 0x02FA11 16:BA01: 14        .byte $14   ; <と>
- D - I - - 0x02FA12 16:BA02: 33        .byte $33   ; <0>
- D - I - - 0x02FA13 16:BA03: 18        .byte $18   ; <ね>
- D - I - - 0x02FA14 16:BA04: 16        .byte $16   ; <に>

- D - I - - 0x02FA15 16:BA05: 38        .byte $38   ; <5>
- D - I - - 0x02FA16 16:BA06: 06        .byte $06   ; <か>
- D - I - - 0x02FA17 16:BA07: 00        .byte $00
- D - I - - 0x02FA18 16:BA08: 04        .byte $04   ; <え>
- D - I - - 0x02FA19 16:BA09: 04        .byte $04   ; <え>
- D - I - - 0x02FA1A 16:BA0A: 05        .byte $05   ; <お>
- D - I - - 0x02FA1B 16:BA0B: 08        .byte $08   ; <く>
- D - I - - 0x02FA1C 16:BA0C: 2C        .byte $2C   ; <わ>
- D - I - - 0x02FA1D 16:BA0D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FA1E 16:BA0E: 11        .byte $11   ; <ち>
- D - I - - 0x02FA1F 16:BA0F: 0C        .byte $0C   ; <し>
- D - I - - 0x02FA20 16:BA10: 2D        .byte $2D   ; <を>
- D - I - - 0x02FA21 16:BA11: 10        .byte $10   ; <た>
- D - I - - 0x02FA22 16:BA12: 38        .byte $38   ; <5>
- D - I - - 0x02FA23 16:BA13: 14        .byte $14   ; <と>
- D - I - - 0x02FA24 16:BA14: 39        .byte $39   ; <6>
- D - I - - 0x02FA25 16:BA15: 18        .byte $18   ; <ね>
- D - I - - 0x02FA26 16:BA16: 3C        .byte $3C   ; <9>

- D - I - - 0x02FA27 16:BA17: 01        .byte $01   ; <あ>



off_BA18_B5:
- D - I - - 0x02FA28 16:BA18: 00        .byte $00
- D - I - - 0x02FA29 16:BA19: 19        .byte $19   ; <の>
- D - I - - 0x02FA2A 16:BA1A: 86        .byte $86   ; <F>
- D - I - - 0x02FA2B 16:BA1B: 60        .byte $60   ; <ミ>

- D - I - - 0x02FA2C 16:BA1C: 00        .byte $00
- D - I - - 0x02FA2D 16:BA1D: 24        .byte $24   ; <や>
- D - I - - 0x02FA2E 16:BA1E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FA2F 16:BA1F: 48        .byte $48   ; <ク>

- D - I - - 0x02FA30 16:BA20: 28        .byte $28   ; <り>
- D - I - - 0x02FA31 16:BA21: 01        .byte $01   ; <あ>
- D - I - - 0x02FA32 16:BA22: 04        .byte $04   ; <え>
- D - I - - 0x02FA33 16:BA23: 35        .byte $35   ; <2>
- D - I - - 0x02FA34 16:BA24: 08        .byte $08   ; <く>
- D - I - - 0x02FA35 16:BA25: 01        .byte $01   ; <あ>
- D - I - - 0x02FA36 16:BA26: 0C        .byte $0C   ; <し>
- D - I - - 0x02FA37 16:BA27: 01        .byte $01   ; <あ>
- D - I - - 0x02FA38 16:BA28: 10        .byte $10   ; <た>
- D - I - - 0x02FA39 16:BA29: 01        .byte $01   ; <あ>
- D - I - - 0x02FA3A 16:BA2A: 14        .byte $14   ; <と>
- D - I - - 0x02FA3B 16:BA2B: 01        .byte $01   ; <あ>
- D - I - - 0x02FA3C 16:BA2C: 18        .byte $18   ; <ね>
- D - I - - 0x02FA3D 16:BA2D: 1F        .byte $1F   ; <ま>

- D - I - - 0x02FA3E 16:BA2E: 28        .byte $28   ; <り>
- D - I - - 0x02FA3F 16:BA2F: 02        .byte $02   ; <い>
- D - I - - 0x02FA40 16:BA30: 04        .byte $04   ; <え>
- D - I - - 0x02FA41 16:BA31: 41        .byte $41   ; <ア>
- D - I - - 0x02FA42 16:BA32: 08        .byte $08   ; <く>
- D - I - - 0x02FA43 16:BA33: 44        .byte $44   ; <エ>
- D - I - - 0x02FA44 16:BA34: 0D        .byte $0D   ; <す>
- D - I - - 0x02FA45 16:BA35: 45        .byte $45   ; <オ>
- D - I - - 0x02FA46 16:BA36: 11        .byte $11   ; <ち>
- D - I - - 0x02FA47 16:BA37: 50        .byte $50   ; <タ>
- D - I - - 0x02FA48 16:BA38: 14        .byte $14   ; <と>
- D - I - - 0x02FA49 16:BA39: 01        .byte $01   ; <あ>
- D - I - - 0x02FA4A 16:BA3A: 18        .byte $18   ; <ね>
- D - I - - 0x02FA4B 16:BA3B: 01        .byte $01   ; <あ>

- D - I - - 0x02FA4C 16:BA3C: 28        .byte $28   ; <り>
- D - I - - 0x02FA4D 16:BA3D: 03        .byte $03   ; <う>
- D - I - - 0x02FA4E 16:BA3E: 04        .byte $04   ; <え>
- D - I - - 0x02FA4F 16:BA3F: 43        .byte $43   ; <ウ>
- D - I - - 0x02FA50 16:BA40: 08        .byte $08   ; <く>
- D - I - - 0x02FA51 16:BA41: 46        .byte $46   ; <カ>
- D - I - - 0x02FA52 16:BA42: 0D        .byte $0D   ; <す>
- D - I - - 0x02FA53 16:BA43: 47        .byte $47   ; <キ>
- D - I - - 0x02FA54 16:BA44: 10        .byte $10   ; <た>
- D - I - - 0x02FA55 16:BA45: 52        .byte $52   ; <ツ>
- D - I - - 0x02FA56 16:BA46: 14        .byte $14   ; <と>
- D - I - - 0x02FA57 16:BA47: 53        .byte $53   ; <テ>
- D - I - - 0x02FA58 16:BA48: 18        .byte $18   ; <ね>
- D - I - - 0x02FA59 16:BA49: 01        .byte $01   ; <あ>

- D - I - - 0x02FA5A 16:BA4A: 28        .byte $28   ; <り>
- D - I - - 0x02FA5B 16:BA4B: 04        .byte $04   ; <え>
- D - I - - 0x02FA5C 16:BA4C: 04        .byte $04   ; <え>
- D - I - - 0x02FA5D 16:BA4D: 49        .byte $49   ; <ケ>
- D - I - - 0x02FA5E 16:BA4E: 08        .byte $08   ; <く>
- D - I - - 0x02FA5F 16:BA4F: 4C        .byte $4C   ; <シ>
- D - I - - 0x02FA60 16:BA50: 0C        .byte $0C   ; <し>
- D - I - - 0x02FA61 16:BA51: 4D        .byte $4D   ; <ス>
- D - I - - 0x02FA62 16:BA52: 13        .byte $13   ; <て>
- D - I - - 0x02FA63 16:BA53: 58        .byte $58   ; <ネ>
- D - I - - 0x02FA64 16:BA54: 14        .byte $14   ; <と>
- D - I - - 0x02FA65 16:BA55: 59        .byte $59   ; <ノ>
- D - I - - 0x02FA66 16:BA56: 18        .byte $18   ; <ね>
- D - I - - 0x02FA67 16:BA57: 01        .byte $01   ; <あ>

- D - I - - 0x02FA68 16:BA58: 28        .byte $28   ; <り>
- D - I - - 0x02FA69 16:BA59: 05        .byte $05   ; <お>
- D - I - - 0x02FA6A 16:BA5A: 04        .byte $04   ; <え>
- D - I - - 0x02FA6B 16:BA5B: 4B        .byte $4B   ; <サ>
- D - I - - 0x02FA6C 16:BA5C: 08        .byte $08   ; <く>
- D - I - - 0x02FA6D 16:BA5D: 4E        .byte $4E   ; <セ>
- D - I - - 0x02FA6E 16:BA5E: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FA6F 16:BA5F: 4F        .byte $4F   ; <ソ>
- D - I - - 0x02FA70 16:BA60: 13        .byte $13   ; <て>
- D - I - - 0x02FA71 16:BA61: 5A        .byte $5A   ; <ハ>
- D - I - - 0x02FA72 16:BA62: 14        .byte $14   ; <と>
- D - I - - 0x02FA73 16:BA63: 5B        .byte $5B   ; <ヒ>
- D - I - - 0x02FA74 16:BA64: 18        .byte $18   ; <ね>
- D - I - - 0x02FA75 16:BA65: 37        .byte $37   ; <4>

- D - I - - 0x02FA76 16:BA66: 38        .byte $38   ; <5>
- D - I - - 0x02FA77 16:BA67: 06        .byte $06   ; <か>
- D - I - - 0x02FA78 16:BA68: 00        .byte $00
- D - I - - 0x02FA79 16:BA69: 04        .byte $04   ; <え>
- D - I - - 0x02FA7A 16:BA6A: 04        .byte $04   ; <え>
- D - I - - 0x02FA7B 16:BA6B: 05        .byte $05   ; <お>
- D - I - - 0x02FA7C 16:BA6C: 08        .byte $08   ; <く>
- D - I - - 0x02FA7D 16:BA6D: 64        .byte $64   ; <ヤ>
- D - I - - 0x02FA7E 16:BA6E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FA7F 16:BA6F: 11        .byte $11   ; <ち>
- D - I - - 0x02FA80 16:BA70: 0C        .byte $0C   ; <し>
- D - I - - 0x02FA81 16:BA71: 65        .byte $65   ; <ユ>
- D - I - - 0x02FA82 16:BA72: 10        .byte $10   ; <た>
- D - I - - 0x02FA83 16:BA73: 51        .byte $51   ; <チ>
- D - I - - 0x02FA84 16:BA74: 14        .byte $14   ; <と>
- D - I - - 0x02FA85 16:BA75: 54        .byte $54   ; <ト>
- D - I - - 0x02FA86 16:BA76: 18        .byte $18   ; <ね>
- D - I - - 0x02FA87 16:BA77: 3D        .byte $3D   ; <+>

- D - I - - 0x02FA88 16:BA78: 00        .byte $00
- D - I - - 0x02FA89 16:BA79: 12        .byte $12   ; <つ>
- D - I - - 0x02FA8A 16:BA7A: 00        .byte $00
- D - I - - 0x02FA8B 16:BA7B: 40        .byte $40   ; <「>

- D - I - - 0x02FA8C 16:BA7C: 00        .byte $00
- D - I - - 0x02FA8D 16:BA7D: 22        .byte $22   ; <め>
- D - I - - 0x02FA8E 16:BA7E: 00        .byte $00
- D - I - - 0x02FA8F 16:BA7F: 42        .byte $42   ; <イ>

- D - I - - 0x02FA90 16:BA80: 01        .byte $01   ; <あ>



off_BA81_B6:
- D - I - - 0x02FA91 16:BA81: 28        .byte $28   ; <り>
- D - I - - 0x02FA92 16:BA82: 01        .byte $01   ; <あ>
- D - I - - 0x02FA93 16:BA83: 06        .byte $06   ; <か>
- D - I - - 0x02FA94 16:BA84: 02        .byte $02   ; <い>
- D - I - - 0x02FA95 16:BA85: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FA96 16:BA86: 03        .byte $03   ; <う>
- D - I - - 0x02FA97 16:BA87: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FA98 16:BA88: 06        .byte $06   ; <か>
- D - I - - 0x02FA99 16:BA89: 12        .byte $12   ; <つ>
- D - I - - 0x02FA9A 16:BA8A: 07        .byte $07   ; <き>
- D - I - - 0x02FA9B 16:BA8B: 16        .byte $16   ; <に>
- D - I - - 0x02FA9C 16:BA8C: 12        .byte $12   ; <つ>
- D - I - - 0x02FA9D 16:BA8D: 1A        .byte $1A   ; <は>
- D - I - - 0x02FA9E 16:BA8E: 13        .byte $13   ; <て>

- D - I - - 0x02FA9F 16:BA8F: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FAA0 16:BA90: 02        .byte $02   ; <い>
- D - I - - 0x02FAA1 16:BA91: 06        .byte $06   ; <か>
- D - I - - 0x02FAA2 16:BA92: 08        .byte $08   ; <く>
- D - I - - 0x02FAA3 16:BA93: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FAA4 16:BA94: 09        .byte $09   ; <け>
- D - I - - 0x02FAA5 16:BA95: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FAA6 16:BA96: 0C        .byte $0C   ; <し>
- D - I - - 0x02FAA7 16:BA97: 12        .byte $12   ; <つ>
- D - I - - 0x02FAA8 16:BA98: 0D        .byte $0D   ; <す>
- D - I - - 0x02FAA9 16:BA99: 16        .byte $16   ; <に>
- D - I - - 0x02FAAA 16:BA9A: 18        .byte $18   ; <ね>
- D - I - - 0x02FAAB 16:BA9B: 18        .byte $18   ; <ね>
- D - I - - 0x02FAAC 16:BA9C: 19        .byte $19   ; <の>
- D - I - - 0x02FAAD 16:BA9D: 1A        .byte $1A   ; <は>
- D - I - - 0x02FAAE 16:BA9E: 1C        .byte $1C   ; <ふ>

- D - I - - 0x02FAAF 16:BA9F: 28        .byte $28   ; <り>
- D - I - - 0x02FAB0 16:BAA0: 03        .byte $03   ; <う>
- D - I - - 0x02FAB1 16:BAA1: 06        .byte $06   ; <か>
- D - I - - 0x02FAB2 16:BAA2: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FAB3 16:BAA3: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FAB4 16:BAA4: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FAB5 16:BAA5: 0D        .byte $0D   ; <す>
- D - I - - 0x02FAB6 16:BAA6: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FAB7 16:BAA7: 11        .byte $11   ; <ち>
- D - I - - 0x02FAB8 16:BAA8: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FAB9 16:BAA9: 15        .byte $15   ; <な>
- D - I - - 0x02FABA 16:BAAA: 1A        .byte $1A   ; <は>
- D - I - - 0x02FABB 16:BAAB: 18        .byte $18   ; <ね>
- D - I - - 0x02FABC 16:BAAC: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02FABD 16:BAAD: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FABE 16:BAAE: 04        .byte $04   ; <え>
- D - I - - 0x02FABF 16:BAAF: 05        .byte $05   ; <お>
- D - I - - 0x02FAC0 16:BAB0: 21        .byte $21   ; <む>
- D - I - - 0x02FAC1 16:BAB1: 09        .byte $09   ; <け>
- D - I - - 0x02FAC2 16:BAB2: 24        .byte $24   ; <や>
- D - I - - 0x02FAC3 16:BAB3: 0D        .byte $0D   ; <す>
- D - I - - 0x02FAC4 16:BAB4: 25        .byte $25   ; <ゆ>
- D - I - - 0x02FAC5 16:BAB5: 11        .byte $11   ; <ち>
- D - I - - 0x02FAC6 16:BAB6: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FAC7 16:BAB7: 15        .byte $15   ; <な>
- D - I - - 0x02FAC8 16:BAB8: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02FAC9 16:BAB9: 14        .byte $14   ; <と>
- D - I - - 0x02FACA 16:BABA: 31        .byte $31   ; <ゅ>
- D - I - - 0x02FACB 16:BABB: 18        .byte $18   ; <ね>
- D - I - - 0x02FACC 16:BABC: 34        .byte $34   ; <1>

- D - I - - 0x02FACD 16:BABD: 20        .byte $20   ; <み>
- D - I - - 0x02FACE 16:BABE: 05        .byte $05   ; <お>
- D - I - - 0x02FACF 16:BABF: 08        .byte $08   ; <く>
- D - I - - 0x02FAD0 16:BAC0: 26        .byte $26   ; <よ>
- D - I - - 0x02FAD1 16:BAC1: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FAD2 16:BAC2: 27        .byte $27   ; <ら>
- D - I - - 0x02FAD3 16:BAC3: 13        .byte $13   ; <て>
- D - I - - 0x02FAD4 16:BAC4: 32        .byte $32   ; <ょ>
- D - I - - 0x02FAD5 16:BAC5: 14        .byte $14   ; <と>
- D - I - - 0x02FAD6 16:BAC6: 33        .byte $33   ; <0>
- D - I - - 0x02FAD7 16:BAC7: 18        .byte $18   ; <ね>
- D - I - - 0x02FAD8 16:BAC8: 36        .byte $36   ; <3>

- D - I - - 0x02FAD9 16:BAC9: 38        .byte $38   ; <5>
- D - I - - 0x02FADA 16:BACA: 06        .byte $06   ; <か>
- D - I - - 0x02FADB 16:BACB: 00        .byte $00
- D - I - - 0x02FADC 16:BACC: 04        .byte $04   ; <え>
- D - I - - 0x02FADD 16:BACD: 04        .byte $04   ; <え>
- D - I - - 0x02FADE 16:BACE: 05        .byte $05   ; <お>
- D - I - - 0x02FADF 16:BACF: 08        .byte $08   ; <く>
- D - I - - 0x02FAE0 16:BAD0: 2C        .byte $2C   ; <わ>
- D - I - - 0x02FAE1 16:BAD1: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FAE2 16:BAD2: 10        .byte $10   ; <た>
- D - I - - 0x02FAE3 16:BAD3: 0C        .byte $0C   ; <し>
- D - I - - 0x02FAE4 16:BAD4: 2D        .byte $2D   ; <を>
- D - I - - 0x02FAE5 16:BAD5: 10        .byte $10   ; <た>
- D - I - - 0x02FAE6 16:BAD6: 38        .byte $38   ; <5>
- D - I - - 0x02FAE7 16:BAD7: 14        .byte $14   ; <と>
- D - I - - 0x02FAE8 16:BAD8: 39        .byte $39   ; <6>
- D - I - - 0x02FAE9 16:BAD9: 18        .byte $18   ; <ね>
- D - I - - 0x02FAEA 16:BADA: 3C        .byte $3C   ; <9>

- D - I - - 0x02FAEB 16:BADB: 00        .byte $00
- D - I - - 0x02FAEC 16:BADC: 23        .byte $23   ; <も>
- D - I - - 0x02FAED 16:BADD: 02        .byte $02   ; <い>
- D - I - - 0x02FAEE 16:BADE: 20        .byte $20   ; <み>

- D - I - - 0x02FAEF 16:BADF: 01        .byte $01   ; <あ>



off_BAE0_B7:
- D - I - - 0x02FAF0 16:BAE0: 18        .byte $18   ; <ね>
- D - I - - 0x02FAF1 16:BAE1: 01        .byte $01   ; <あ>
- D - I - - 0x02FAF2 16:BAE2: 06        .byte $06   ; <か>
- D - I - - 0x02FAF3 16:BAE3: 02        .byte $02   ; <い>
- D - I - - 0x02FAF4 16:BAE4: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FAF5 16:BAE5: 03        .byte $03   ; <う>
- D - I - - 0x02FAF6 16:BAE6: 19        .byte $19   ; <の>
- D - I - - 0x02FAF7 16:BAE7: 27        .byte $27   ; <ら>
- D - I - - 0x02FAF8 16:BAE8: 81        .byte $81   ; <A>
- D - I - - 0x02FAF9 16:BAE9: 32        .byte $32   ; <ょ>

- D - I - - 0x02FAFA 16:BAEA: 28        .byte $28   ; <り>
- D - I - - 0x02FAFB 16:BAEB: 02        .byte $02   ; <い>
- D - I - - 0x02FAFC 16:BAEC: 52        .byte $52   ; <ツ>
- D - I - - 0x02FAFD 16:BAED: 08        .byte $08   ; <く>
- D - I - - 0x02FAFE 16:BAEE: 56        .byte $56   ; <ニ>
- D - I - - 0x02FAFF 16:BAEF: 09        .byte $09   ; <け>
- D - I - - 0x02FB00 16:BAF0: 42        .byte $42   ; <イ>
- D - I - - 0x02FB01 16:BAF1: 0C        .byte $0C   ; <し>
- D - I - - 0x02FB02 16:BAF2: 15        .byte $15   ; <な>
- D - I - - 0x02FB03 16:BAF3: 2C        .byte $2C   ; <わ>
- D - I - - 0x02FB04 16:BAF4: 19        .byte $19   ; <の>
- D - I - - 0x02FB05 16:BAF5: 2D        .byte $2D   ; <を>
- D - I - - 0x02FB06 16:BAF6: 81        .byte $81   ; <A>
- D - I - - 0x02FB07 16:BAF7: 38        .byte $38   ; <5>

- D - I - - 0x02FB08 16:BAF8: 28        .byte $28   ; <り>
- D - I - - 0x02FB09 16:BAF9: 03        .byte $03   ; <う>
- D - I - - 0x02FB0A 16:BAFA: 05        .byte $05   ; <お>
- D - I - - 0x02FB0B 16:BAFB: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FB0C 16:BAFC: 09        .byte $09   ; <け>
- D - I - - 0x02FB0D 16:BAFD: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FB0E 16:BAFE: 0D        .byte $0D   ; <す>
- D - I - - 0x02FB0F 16:BAFF: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FB10 16:BB00: 11        .byte $11   ; <ち>
- D - I - - 0x02FB11 16:BB01: 2A        .byte $2A   ; <れ>
- D - I - - 0x02FB12 16:BB02: 15        .byte $15   ; <な>
- D - I - - 0x02FB13 16:BB03: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02FB14 16:BB04: 19        .byte $19   ; <の>
- D - I - - 0x02FB15 16:BB05: 2E        .byte $2E   ; <ん>

- D - I - - 0x02FB16 16:BB06: 20        .byte $20   ; <み>
- D - I - - 0x02FB17 16:BB07: 04        .byte $04   ; <え>
- D - I - - 0x02FB18 16:BB08: 01        .byte $01   ; <あ>
- D - I - - 0x02FB19 16:BB09: 24        .byte $24   ; <や>
- D - I - - 0x02FB1A 16:BB0A: 05        .byte $05   ; <お>
- D - I - - 0x02FB1B 16:BB0B: 20        .byte $20   ; <み>
- D - I - - 0x02FB1C 16:BB0C: 09        .byte $09   ; <け>
- D - I - - 0x02FB1D 16:BB0D: 21        .byte $21   ; <む>
- D - I - - 0x02FB1E 16:BB0E: 11        .byte $11   ; <ち>
- D - I - - 0x02FB1F 16:BB0F: 2F        .byte $2F   ; <っ>
- D - I - - 0x02FB20 16:BB10: 15        .byte $15   ; <な>
- D - I - - 0x02FB21 16:BB11: 3A        .byte $3A   ; <7>

- D - I - - 0x02FB22 16:BB12: 10        .byte $10   ; <た>
- D - I - - 0x02FB23 16:BB13: 05        .byte $05   ; <お>
- D - I - - 0x02FB24 16:BB14: 69        .byte $69   ; <ル>
- D - I - - 0x02FB25 16:BB15: 22        .byte $22   ; <め>
- D - I - - 0x02FB26 16:BB16: 01        .byte $01   ; <あ>
- D - I - - 0x02FB27 16:BB17: 23        .byte $23   ; <も>
- D - I - - 0x02FB28 16:BB18: 05        .byte $05   ; <お>
- D - I - - 0x02FB29 16:BB19: 26        .byte $26   ; <よ>

- D - I - - 0x02FB2A 16:BB1A: 08        .byte $08   ; <く>
- D - I - - 0x02FB2B 16:BB1B: 06        .byte $06   ; <か>
- D - I - - 0x02FB2C 16:BB1C: 69        .byte $69   ; <ル>
- D - I - - 0x02FB2D 16:BB1D: 28        .byte $28   ; <り>
- D - I - - 0x02FB2E 16:BB1E: 01        .byte $01   ; <あ>
- D - I - - 0x02FB2F 16:BB1F: 29        .byte $29   ; <る>

- D - I - - 0x02FB30 16:BB20: 01        .byte $01   ; <あ>



off_BB21_B8:
- D - I - - 0x02FB31 16:BB21: 08        .byte $08   ; <く>
- D - I - - 0x02FB32 16:BB22: 00        .byte $00
- D - I - - 0x02FB33 16:BB23: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FB34 16:BB24: 02        .byte $02   ; <い>
- D - I - - 0x02FB35 16:BB25: 12        .byte $12   ; <つ>
- D - I - - 0x02FB36 16:BB26: 03        .byte $03   ; <う>

- D - I - - 0x02FB37 16:BB27: 10        .byte $10   ; <た>
- D - I - - 0x02FB38 16:BB28: 01        .byte $01   ; <あ>
- D - I - - 0x02FB39 16:BB29: 42        .byte $42   ; <イ>
- D - I - - 0x02FB3A 16:BB2A: 04        .byte $04   ; <え>
- D - I - - 0x02FB3B 16:BB2B: 46        .byte $46   ; <カ>
- D - I - - 0x02FB3C 16:BB2C: 05        .byte $05   ; <お>
- D - I - - 0x02FB3D 16:BB2D: 86        .byte $86   ; <F>
- D - I - - 0x02FB3E 16:BB2E: 10        .byte $10   ; <た>

- D - I - - 0x02FB3F 16:BB2F: 10        .byte $10   ; <た>
- D - I - - 0x02FB40 16:BB30: 02        .byte $02   ; <い>
- D - I - - 0x02FB41 16:BB31: 0D        .byte $0D   ; <す>
- D - I - - 0x02FB42 16:BB32: 06        .byte $06   ; <か>
- D - I - - 0x02FB43 16:BB33: 11        .byte $11   ; <ち>
- D - I - - 0x02FB44 16:BB34: 07        .byte $07   ; <き>
- D - I - - 0x02FB45 16:BB35: 15        .byte $15   ; <な>
- D - I - - 0x02FB46 16:BB36: 0E        .byte $0E   ; <せ>

- D - I - - 0x02FB47 16:BB37: 08        .byte $08   ; <く>
- D - I - - 0x02FB48 16:BB38: 03        .byte $03   ; <う>
- D - I - - 0x02FB49 16:BB39: 0D        .byte $0D   ; <す>
- D - I - - 0x02FB4A 16:BB3A: 0D        .byte $0D   ; <す>
- D - I - - 0x02FB4B 16:BB3B: 11        .byte $11   ; <ち>
- D - I - - 0x02FB4C 16:BB3C: 18        .byte $18   ; <ね>

- D - I - - 0x02FB4D 16:BB3D: 28        .byte $28   ; <り>
- D - I - - 0x02FB4E 16:BB3E: 04        .byte $04   ; <え>
- D - I - - 0x02FB4F 16:BB3F: 05        .byte $05   ; <お>
- D - I - - 0x02FB50 16:BB40: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FB51 16:BB41: 09        .byte $09   ; <け>
- D - I - - 0x02FB52 16:BB42: 1A        .byte $1A   ; <は>
- D - I - - 0x02FB53 16:BB43: 0D        .byte $0D   ; <す>
- D - I - - 0x02FB54 16:BB44: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FB55 16:BB45: 11        .byte $11   ; <ち>
- D - I - - 0x02FB56 16:BB46: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02FB57 16:BB47: 15        .byte $15   ; <な>
- D - I - - 0x02FB58 16:BB48: 11        .byte $11   ; <ち>
- D - I - - 0x02FB59 16:BB49: 19        .byte $19   ; <の>
- D - I - - 0x02FB5A 16:BB4A: 14        .byte $14   ; <と>

- D - I - - 0x02FB5B 16:BB4B: 28        .byte $28   ; <り>
- D - I - - 0x02FB5C 16:BB4C: 05        .byte $05   ; <お>
- D - I - - 0x02FB5D 16:BB4D: 05        .byte $05   ; <お>
- D - I - - 0x02FB5E 16:BB4E: 25        .byte $25   ; <ゆ>
- D - I - - 0x02FB5F 16:BB4F: 09        .byte $09   ; <け>
- D - I - - 0x02FB60 16:BB50: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FB61 16:BB51: 0D        .byte $0D   ; <す>
- D - I - - 0x02FB62 16:BB52: 31        .byte $31   ; <ゅ>
- D - I - - 0x02FB63 16:BB53: 11        .byte $11   ; <ち>
- D - I - - 0x02FB64 16:BB54: 34        .byte $34   ; <1>
- D - I - - 0x02FB65 16:BB55: 15        .byte $15   ; <な>
- D - I - - 0x02FB66 16:BB56: 13        .byte $13   ; <て>
- D - I - - 0x02FB67 16:BB57: 19        .byte $19   ; <の>
- D - I - - 0x02FB68 16:BB58: 16        .byte $16   ; <に>

- D - I - - 0x02FB69 16:BB59: 10        .byte $10   ; <た>
- D - I - - 0x02FB6A 16:BB5A: 06        .byte $06   ; <か>
- D - I - - 0x02FB6B 16:BB5B: 05        .byte $05   ; <お>
- D - I - - 0x02FB6C 16:BB5C: 33        .byte $33   ; <0>
- D - I - - 0x02FB6D 16:BB5D: 09        .byte $09   ; <け>
- D - I - - 0x02FB6E 16:BB5E: 36        .byte $36   ; <3>
- D - I - - 0x02FB6F 16:BB5F: 11        .byte $11   ; <ち>
- D - I - - 0x02FB70 16:BB60: 12        .byte $12   ; <つ>

- D - I - - 0x02FB71 16:BB61: 01        .byte $01   ; <あ>



off_BB62_B9:
- D - I - - 0x02FB72 16:BB62: 18        .byte $18   ; <ね>
- D - I - - 0x02FB73 16:BB63: 03        .byte $03   ; <う>
- D - I - - 0x02FB74 16:BB64: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FB75 16:BB65: DD        .byte $DD
- D - I - - 0x02FB76 16:BB66: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FB77 16:BB67: BD        .byte $BD   ; <ゾ>
- D - I - - 0x02FB78 16:BB68: 13        .byte $13   ; <て>
- D - I - - 0x02FB79 16:BB69: 7E        .byte $7E   ; <.>
- D - I - - 0x02FB7A 16:BB6A: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FB7B 16:BB6B: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02FB7C 16:BB6C: 01        .byte $01   ; <あ>



off_BB6D_BA:
- D - I - - 0x02FB7D 16:BB6D: 10        .byte $10   ; <た>
- D - I - - 0x02FB7E 16:BB6E: 03        .byte $03   ; <う>
- D - I - - 0x02FB7F 16:BB6F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FB80 16:BB70: 78        .byte $78   ; <?>
- D - I - - 0x02FB81 16:BB71: 13        .byte $13   ; <て>
- D - I - - 0x02FB82 16:BB72: 79        .byte $79   ; <!>
- D - I - - 0x02FB83 16:BB73: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FB84 16:BB74: BE        .byte $BE   ; <ダ>

- D - I - - 0x02FB85 16:BB75: 08        .byte $08   ; <く>
- D - I - - 0x02FB86 16:BB76: 04        .byte $04   ; <え>
- D - I - - 0x02FB87 16:BB77: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FB88 16:BB78: 7A        .byte $7A   ; <、>
- D - I - - 0x02FB89 16:BB79: 13        .byte $13   ; <て>
- D - I - - 0x02FB8A 16:BB7A: 7B        .byte $7B   ; <。>

- D - I - - 0x02FB8B 16:BB7B: 01        .byte $01   ; <あ>



off_BB7C_BB:
- D - I - - 0x02FB8C 16:BB7C: 38        .byte $38   ; <5>
- D - I - - 0x02FB8D 16:BB7D: 04        .byte $04   ; <え>
- D - I - - 0x02FB8E 16:BB7E: 10        .byte $10   ; <た>
- D - I - - 0x02FB8F 16:BB7F: 00        .byte $00
- D - I - - 0x02FB90 16:BB80: 10        .byte $10   ; <た>
- D - I - - 0x02FB91 16:BB81: 00        .byte $00
- D - I - - 0x02FB92 16:BB82: 10        .byte $10   ; <た>
- D - I - - 0x02FB93 16:BB83: 00        .byte $00
- D - I - - 0x02FB94 16:BB84: 10        .byte $10   ; <た>
- D - I - - 0x02FB95 16:BB85: 00        .byte $00
- D - I - - 0x02FB96 16:BB86: 10        .byte $10   ; <た>
- D - I - - 0x02FB97 16:BB87: 00        .byte $00
- D - I - - 0x02FB98 16:BB88: 10        .byte $10   ; <た>
- D - I - - 0x02FB99 16:BB89: 00        .byte $00
- D - I - - 0x02FB9A 16:BB8A: 10        .byte $10   ; <た>
- D - I - - 0x02FB9B 16:BB8B: 00        .byte $00
- D - I - - 0x02FB9C 16:BB8C: 10        .byte $10   ; <た>
- D - I - - 0x02FB9D 16:BB8D: 00        .byte $00

- D - I - - 0x02FB9E 16:BB8E: 01        .byte $01   ; <あ>



off_BB8F_BC:
- D - I - - 0x02FB9F 16:BB8F: 10        .byte $10   ; <た>
- D - I - - 0x02FBA0 16:BB90: 00        .byte $00
- D - I - - 0x02FBA1 16:BB91: 00        .byte $00
- D - I - - 0x02FBA2 16:BB92: 3C        .byte $3C   ; <9>
- D - I - - 0x02FBA3 16:BB93: 04        .byte $04   ; <え>
- D - I - - 0x02FBA4 16:BB94: 3D        .byte $3D   ; <+>
- D - I - - 0x02FBA5 16:BB95: 08        .byte $08   ; <く>
- D - I - - 0x02FBA6 16:BB96: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02FBA7 16:BB97: 10        .byte $10   ; <た>
- D - I - - 0x02FBA8 16:BB98: 01        .byte $01   ; <あ>
- D - I - - 0x02FBA9 16:BB99: 00        .byte $00
- D - I - - 0x02FBAA 16:BB9A: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FBAB 16:BB9B: 04        .byte $04   ; <え>
- D - I - - 0x02FBAC 16:BB9C: 3F        .byte $3F   ; <•>
- D - I - - 0x02FBAD 16:BB9D: 08        .byte $08   ; <く>
- D - I - - 0x02FBAE 16:BB9E: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02FBAF 16:BB9F: 10        .byte $10   ; <た>
- D - I - - 0x02FBB0 16:BBA0: 02        .byte $02   ; <い>
- D - I - - 0x02FBB1 16:BBA1: C4        .byte $C4   ; <ビ>
- D - I - - 0x02FBB2 16:BBA2: 3C        .byte $3C   ; <9>
- D - I - - 0x02FBB3 16:BBA3: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02FBB4 16:BBA4: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02FBB5 16:BBA5: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02FBB6 16:BBA6: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02FBB7 16:BBA7: 28        .byte $28   ; <り>
- D - I - - 0x02FBB8 16:BBA8: 03        .byte $03   ; <う>
- D - I - - 0x02FBB9 16:BBA9: 9D        .byte $9D
- D - I - - 0x02FBBA 16:BBAA: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FBBB 16:BBAB: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02FBBC 16:BBAC: 31        .byte $31   ; <ゅ>
- D - I - - 0x02FBBD 16:BBAD: B5        .byte $B5   ; <ギ>
- D - I - - 0x02FBBE 16:BBAE: 34        .byte $34   ; <1>
- D - I - - 0x02FBBF 16:BBAF: C4        .byte $C4   ; <ビ>
- D - I - - 0x02FBC0 16:BBB0: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FBC1 16:BBB1: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02FBC2 16:BBB2: BE        .byte $BE   ; <ダ>
- D - I - - 0x02FBC3 16:BBB3: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02FBC4 16:BBB4: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02FBC5 16:BBB5: 28        .byte $28   ; <り>
- D - I - - 0x02FBC6 16:BBB6: 04        .byte $04   ; <え>
- D - I - - 0x02FBC7 16:BBB7: 9D        .byte $9D
- D - I - - 0x02FBC8 16:BBB8: 32        .byte $32   ; <ょ>
- D - I - - 0x02FBC9 16:BBB9: A1        .byte $A1   ; <ぎ>
- D - I - - 0x02FBCA 16:BBBA: 33        .byte $33   ; <0>
- D - I - - 0x02FBCB 16:BBBB: B5        .byte $B5   ; <ギ>
- D - I - - 0x02FBCC 16:BBBC: 36        .byte $36   ; <3>
- D - I - - 0x02FBCD 16:BBBD: 0C        .byte $0C   ; <し>
- D - I - - 0x02FBCE 16:BBBE: 37        .byte $37   ; <4>
- D - I - - 0x02FBCF 16:BBBF: D1        .byte $D1   ; <ポ>
- D - I - - 0x02FBD0 16:BBC0: 2C        .byte $2C   ; <わ>
- D - I - - 0x02FBD1 16:BBC1: D5        .byte $D5
- D - I - - 0x02FBD2 16:BBC2: 2D        .byte $2D   ; <を>

- D - I - - 0x02FBD3 16:BBC3: 10        .byte $10   ; <た>
- D - I - - 0x02FBD4 16:BBC4: 05        .byte $05   ; <お>
- D - I - - 0x02FBD5 16:BBC5: 9D        .byte $9D
- D - I - - 0x02FBD6 16:BBC6: 35        .byte $35   ; <2>
- D - I - - 0x02FBD7 16:BBC7: D1        .byte $D1   ; <ポ>
- D - I - - 0x02FBD8 16:BBC8: 2E        .byte $2E   ; <ん>
- D - I - - 0x02FBD9 16:BBC9: D5        .byte $D5
- D - I - - 0x02FBDA 16:BBCA: 2F        .byte $2F   ; <っ>

- D - I - - 0x02FBDB 16:BBCB: 08        .byte $08   ; <く>
- D - I - - 0x02FBDC 16:BBCC: 06        .byte $06   ; <か>
- D - I - - 0x02FBDD 16:BBCD: 00        .byte $00
- D - I - - 0x02FBDE 16:BBCE: 38        .byte $38   ; <5>
- D - I - - 0x02FBDF 16:BBCF: 04        .byte $04   ; <え>
- D - I - - 0x02FBE0 16:BBD0: 39        .byte $39   ; <6>

- D - I - - 0x02FBE1 16:BBD1: 08        .byte $08   ; <く>
- D - I - - 0x02FBE2 16:BBD2: 07        .byte $07   ; <き>
- D - I - - 0x02FBE3 16:BBD3: 00        .byte $00
- D - I - - 0x02FBE4 16:BBD4: 3A        .byte $3A   ; <7>
- D - I - - 0x02FBE5 16:BBD5: 04        .byte $04   ; <え>
- D - I - - 0x02FBE6 16:BBD6: 3B        .byte $3B   ; <8>

- D - I - - 0x02FBE7 16:BBD7: 01        .byte $01   ; <あ>



off_BBD8_BD:
- D - I - - 0x02FBE8 16:BBD8: 08        .byte $08   ; <く>
- D - I - - 0x02FBE9 16:BBD9: 00        .byte $00
- D - I - - 0x02FBEA 16:BBDA: 10        .byte $10   ; <た>
- D - I - - 0x02FBEB 16:BBDB: 3C        .byte $3C   ; <9>
- D - I - - 0x02FBEC 16:BBDC: 14        .byte $14   ; <と>
- D - I - - 0x02FBED 16:BBDD: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02FBEE 16:BBDE: 08        .byte $08   ; <く>
- D - I - - 0x02FBEF 16:BBDF: 01        .byte $01   ; <あ>
- D - I - - 0x02FBF0 16:BBE0: 10        .byte $10   ; <た>
- D - I - - 0x02FBF1 16:BBE1: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FBF2 16:BBE2: 14        .byte $14   ; <と>
- D - I - - 0x02FBF3 16:BBE3: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02FBF4 16:BBE4: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FBF5 16:BBE5: 02        .byte $02   ; <い>
- D - I - - 0x02FBF6 16:BBE6: 00        .byte $00
- D - I - - 0x02FBF7 16:BBE7: 79        .byte $79   ; <!>
- D - I - - 0x02FBF8 16:BBE8: 04        .byte $04   ; <え>
- D - I - - 0x02FBF9 16:BBE9: 7C        .byte $7C   ; <~>
- D - I - - 0x02FBFA 16:BBEA: 08        .byte $08   ; <く>
- D - I - - 0x02FBFB 16:BBEB: 7D        .byte $7D   ; <ー>
- D - I - - 0x02FBFC 16:BBEC: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02FBFD 16:BBED: 3C        .byte $3C   ; <9>
- D - I - - 0x02FBFE 16:BBEE: C4        .byte $C4   ; <ビ>
- D - I - - 0x02FBFF 16:BBEF: 3D        .byte $3D   ; <+>
- D - I - - 0x02FC00 16:BBF0: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02FC01 16:BBF1: 3D        .byte $3D   ; <+>
- D - I - - 0x02FC02 16:BBF2: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02FC03 16:BBF3: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02FC04 16:BBF4: 38        .byte $38   ; <5>
- D - I - - 0x02FC05 16:BBF5: 03        .byte $03   ; <う>
- D - I - - 0x02FC06 16:BBF6: 68        .byte $68   ; <リ>
- D - I - - 0x02FC07 16:BBF7: 7A        .byte $7A   ; <、>
- D - I - - 0x02FC08 16:BBF8: 00        .byte $00
- D - I - - 0x02FC09 16:BBF9: 7B        .byte $7B   ; <。>
- D - I - - 0x02FC0A 16:BBFA: 04        .byte $04   ; <え>
- D - I - - 0x02FC0B 16:BBFB: 7E        .byte $7E   ; <.>
- D - I - - 0x02FC0C 16:BBFC: 08        .byte $08   ; <く>
- D - I - - 0x02FC0D 16:BBFD: 7F        .byte $7F   ; <,>
- D - I - - 0x02FC0E 16:BBFE: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02FC0F 16:BBFF: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FC10 16:BC00: C4        .byte $C4   ; <ビ>
- D - I - - 0x02FC11 16:BC01: BE        .byte $BE   ; <ダ>
- D - I - - 0x02FC12 16:BC02: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02FC13 16:BC03: 3F        .byte $3F   ; <•>
- D - I - - 0x02FC14 16:BC04: CC        .byte $CC   ; <ぽ>
- D - I - - 0x02FC15 16:BC05: 3F        .byte $3F   ; <•>

- D - I - - 0x02FC16 16:BC06: 00        .byte $00
- D - I - - 0x02FC17 16:BC07: 04        .byte $04   ; <え>
- D - I - - 0x02FC18 16:BC08: 69        .byte $69   ; <ル>
- D - I - - 0x02FC19 16:BC09: 78        .byte $78   ; <?>

- D - I - - 0x02FC1A 16:BC0A: 01        .byte $01   ; <あ>



off_BC0B_BE:
- D - I - - 0x02FC1B 16:BC0B: 08        .byte $08   ; <く>
- D - I - - 0x02FC1C 16:BC0C: 00        .byte $00
- D - I - - 0x02FC1D 16:BC0D: D4        .byte $D4
- D - I - - 0x02FC1E 16:BC0E: 3C        .byte $3C   ; <9>
- D - I - - 0x02FC1F 16:BC0F: D8        .byte $D8
- D - I - - 0x02FC20 16:BC10: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02FC21 16:BC11: 08        .byte $08   ; <く>
- D - I - - 0x02FC22 16:BC12: 01        .byte $01   ; <あ>
- D - I - - 0x02FC23 16:BC13: D4        .byte $D4
- D - I - - 0x02FC24 16:BC14: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FC25 16:BC15: D8        .byte $D8
- D - I - - 0x02FC26 16:BC16: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02FC27 16:BC17: 18        .byte $18   ; <ね>
- D - I - - 0x02FC28 16:BC18: 02        .byte $02   ; <い>
- D - I - - 0x02FC29 16:BC19: 08        .byte $08   ; <く>
- D - I - - 0x02FC2A 16:BC1A: 3C        .byte $3C   ; <9>
- D - I - - 0x02FC2B 16:BC1B: 0C        .byte $0C   ; <し>
- D - I - - 0x02FC2C 16:BC1C: 3D        .byte $3D   ; <+>
- D - I - - 0x02FC2D 16:BC1D: 10        .byte $10   ; <た>
- D - I - - 0x02FC2E 16:BC1E: BC        .byte $BC   ; <ゼ>
- D - I - - 0x02FC2F 16:BC1F: 14        .byte $14   ; <と>
- D - I - - 0x02FC30 16:BC20: BD        .byte $BD   ; <ゾ>

- D - I - - 0x02FC31 16:BC21: 18        .byte $18   ; <ね>
- D - I - - 0x02FC32 16:BC22: 03        .byte $03   ; <う>
- D - I - - 0x02FC33 16:BC23: 08        .byte $08   ; <く>
- D - I - - 0x02FC34 16:BC24: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FC35 16:BC25: 0C        .byte $0C   ; <し>
- D - I - - 0x02FC36 16:BC26: 3F        .byte $3F   ; <•>
- D - I - - 0x02FC37 16:BC27: 10        .byte $10   ; <た>
- D - I - - 0x02FC38 16:BC28: BE        .byte $BE   ; <ダ>
- D - I - - 0x02FC39 16:BC29: 14        .byte $14   ; <と>
- D - I - - 0x02FC3A 16:BC2A: BF        .byte $BF   ; <ヂ>

- D - I - - 0x02FC3B 16:BC2B: 08        .byte $08   ; <く>
- D - I - - 0x02FC3C 16:BC2C: 04        .byte $04   ; <え>
- D - I - - 0x02FC3D 16:BC2D: 00        .byte $00
- D - I - - 0x02FC3E 16:BC2E: D4        .byte $D4
- D - I - - 0x02FC3F 16:BC2F: C4        .byte $C4   ; <ビ>
- D - I - - 0x02FC40 16:BC30: 37        .byte $37   ; <4>

- D - I - - 0x02FC41 16:BC31: 10        .byte $10   ; <た>
- D - I - - 0x02FC42 16:BC32: 06        .byte $06   ; <か>
- D - I - - 0x02FC43 16:BC33: 18        .byte $18   ; <ね>
- D - I - - 0x02FC44 16:BC34: 74        .byte $74   ; <ィ>
- D - I - - 0x02FC45 16:BC35: 80        .byte $80
- D - I - - 0x02FC46 16:BC36: 75        .byte $75   ; <ェ>
- D - I - - 0x02FC47 16:BC37: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02FC48 16:BC38: 2A        .byte $2A   ; <れ>

- D - I - - 0x02FC49 16:BC39: 10        .byte $10   ; <た>
- D - I - - 0x02FC4A 16:BC3A: 07        .byte $07   ; <き>
- D - I - - 0x02FC4B 16:BC3B: 18        .byte $18   ; <ね>
- D - I - - 0x02FC4C 16:BC3C: 76        .byte $76   ; <ォ>
- D - I - - 0x02FC4D 16:BC3D: 80        .byte $80
- D - I - - 0x02FC4E 16:BC3E: 77        .byte $77   ; <:>
- D - I - - 0x02FC4F 16:BC3F: C0        .byte $C0   ; <ヅ>
- D - I - - 0x02FC50 16:BC40: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02FC51 16:BC41: 00        .byte $00
- D - I - - 0x02FC52 16:BC42: 08        .byte $08   ; <く>
- D - I - - 0x02FC53 16:BC43: 08        .byte $08   ; <く>
- D - I - - 0x02FC54 16:BC44: D5        .byte $D5

- D - I - - 0x02FC55 16:BC45: 01        .byte $01   ; <あ>



off_BC46_BF:
- D - I - - 0x02FC56 16:BC46: 10        .byte $10   ; <た>
- D - I - - 0x02FC57 16:BC47: 00        .byte $00
- D - I - - 0x02FC58 16:BC48: 05        .byte $05   ; <お>
- D - I - - 0x02FC59 16:BC49: 10        .byte $10   ; <た>
- D - I - - 0x02FC5A 16:BC4A: 09        .byte $09   ; <け>
- D - I - - 0x02FC5B 16:BC4B: 11        .byte $11   ; <ち>
- D - I - - 0x02FC5C 16:BC4C: 0D        .byte $0D   ; <す>
- D - I - - 0x02FC5D 16:BC4D: 14        .byte $14   ; <と>

- D - I - - 0x02FC5E 16:BC4E: 20        .byte $20   ; <み>
- D - I - - 0x02FC5F 16:BC4F: 01        .byte $01   ; <あ>
- D - I - - 0x02FC60 16:BC50: 01        .byte $01   ; <あ>
- D - I - - 0x02FC61 16:BC51: 15        .byte $15   ; <な>
- D - I - - 0x02FC62 16:BC52: 05        .byte $05   ; <お>
- D - I - - 0x02FC63 16:BC53: 12        .byte $12   ; <つ>
- D - I - - 0x02FC64 16:BC54: 09        .byte $09   ; <け>
- D - I - - 0x02FC65 16:BC55: 13        .byte $13   ; <て>
- D - I - - 0x02FC66 16:BC56: 0D        .byte $0D   ; <す>
- D - I - - 0x02FC67 16:BC57: 16        .byte $16   ; <に>
- D - I - - 0x02FC68 16:BC58: 11        .byte $11   ; <ち>
- D - I - - 0x02FC69 16:BC59: 17        .byte $17   ; <ぬ>

- D - I - - 0x02FC6A 16:BC5A: 20        .byte $20   ; <み>
- D - I - - 0x02FC6B 16:BC5B: 02        .byte $02   ; <い>
- D - I - - 0x02FC6C 16:BC5C: 01        .byte $01   ; <あ>
- D - I - - 0x02FC6D 16:BC5D: 18        .byte $18   ; <ね>
- D - I - - 0x02FC6E 16:BC5E: 05        .byte $05   ; <お>
- D - I - - 0x02FC6F 16:BC5F: 19        .byte $19   ; <の>
- D - I - - 0x02FC70 16:BC60: 09        .byte $09   ; <け>
- D - I - - 0x02FC71 16:BC61: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02FC72 16:BC62: 0D        .byte $0D   ; <す>
- D - I - - 0x02FC73 16:BC63: 1D        .byte $1D   ; <へ>
- D - I - - 0x02FC74 16:BC64: 11        .byte $11   ; <ち>
- D - I - - 0x02FC75 16:BC65: 1A        .byte $1A   ; <は>

- D - I - - 0x02FC76 16:BC66: 20        .byte $20   ; <み>
- D - I - - 0x02FC77 16:BC67: 03        .byte $03   ; <う>
- D - I - - 0x02FC78 16:BC68: 01        .byte $01   ; <あ>
- D - I - - 0x02FC79 16:BC69: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02FC7A 16:BC6A: 05        .byte $05   ; <お>
- D - I - - 0x02FC7B 16:BC6B: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FC7C 16:BC6C: 09        .byte $09   ; <け>
- D - I - - 0x02FC7D 16:BC6D: 1F        .byte $1F   ; <ま>
- D - I - - 0x02FC7E 16:BC6E: 0D        .byte $0D   ; <す>
- D - I - - 0x02FC7F 16:BC6F: 31        .byte $31   ; <ゅ>
- D - I - - 0x02FC80 16:BC70: 11        .byte $11   ; <ち>
- D - I - - 0x02FC81 16:BC71: 34        .byte $34   ; <1>

- D - I - - 0x02FC82 16:BC72: 38        .byte $38   ; <5>
- D - I - - 0x02FC83 16:BC73: 04        .byte $04   ; <え>
- D - I - - 0x02FC84 16:BC74: 01        .byte $01   ; <あ>
- D - I - - 0x02FC85 16:BC75: 27        .byte $27   ; <ら>
- D - I - - 0x02FC86 16:BC76: 05        .byte $05   ; <お>
- D - I - - 0x02FC87 16:BC77: 32        .byte $32   ; <ょ>
- D - I - - 0x02FC88 16:BC78: 09        .byte $09   ; <け>
- D - I - - 0x02FC89 16:BC79: 33        .byte $33   ; <0>
- D - I - - 0x02FC8A 16:BC7A: 0D        .byte $0D   ; <す>
- D - I - - 0x02FC8B 16:BC7B: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FC8C 16:BC7C: 0C        .byte $0C   ; <し>
- D - I - - 0x02FC8D 16:BC7D: 36        .byte $36   ; <3>
- D - I - - 0x02FC8E 16:BC7E: 10        .byte $10   ; <た>
- D - I - - 0x02FC8F 16:BC7F: 37        .byte $37   ; <4>
- D - I - - 0x02FC90 16:BC80: 14        .byte $14   ; <と>
- D - I - - 0x02FC91 16:BC81: 2D        .byte $2D   ; <を>
- D - I - - 0x02FC92 16:BC82: 18        .byte $18   ; <ね>
- D - I - - 0x02FC93 16:BC83: 38        .byte $38   ; <5>

- D - I - - 0x02FC94 16:BC84: 38        .byte $38   ; <5>
- D - I - - 0x02FC95 16:BC85: 05        .byte $05   ; <お>
- D - I - - 0x02FC96 16:BC86: 09        .byte $09   ; <け>
- D - I - - 0x02FC97 16:BC87: 3F        .byte $3F   ; <•>
- D - I - - 0x02FC98 16:BC88: 08        .byte $08   ; <く>
- D - I - - 0x02FC99 16:BC89: 39        .byte $39   ; <6>
- D - I - - 0x02FC9A 16:BC8A: 0C        .byte $0C   ; <し>
- D - I - - 0x02FC9B 16:BC8B: 3C        .byte $3C   ; <9>
- D - I - - 0x02FC9C 16:BC8C: 10        .byte $10   ; <た>
- D - I - - 0x02FC9D 16:BC8D: 3D        .byte $3D   ; <+>
- D - I - - 0x02FC9E 16:BC8E: 15        .byte $15   ; <な>
- D - I - - 0x02FC9F 16:BC8F: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FCA0 16:BC90: 14        .byte $14   ; <と>
- D - I - - 0x02FCA1 16:BC91: 2F        .byte $2F   ; <っ>
- D - I - - 0x02FCA2 16:BC92: 19        .byte $19   ; <の>
- D - I - - 0x02FCA3 16:BC93: 35        .byte $35   ; <2>
- D - I - - 0x02FCA4 16:BC94: 18        .byte $18   ; <ね>
- D - I - - 0x02FCA5 16:BC95: 3A        .byte $3A   ; <7>

- D - I - - 0x02FCA6 16:BC96: 00        .byte $00
- D - I - - 0x02FCA7 16:BC97: 1F        .byte $1F   ; <ま>
- D - I - - 0x02FCA8 16:BC98: BA        .byte $BA   ; <ジ>
- D - I - - 0x02FCA9 16:BC99: 3B        .byte $3B   ; <8>

- D - I - - 0x02FCAA 16:BC9A: 01        .byte $01   ; <あ>



off_BC9B_C0:
- D - I - - 0x02FCAB 16:BC9B: 18        .byte $18   ; <ね>
- D - I - - 0x02FCAC 16:BC9C: 00        .byte $00
- D - I - - 0x02FCAD 16:BC9D: 07        .byte $07   ; <き>
- D - I - - 0x02FCAE 16:BC9E: C3        .byte $C3   ; <バ>
- D - I - - 0x02FCAF 16:BC9F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FCB0 16:BCA0: C6        .byte $C6   ; <ベ>
- D - I - - 0x02FCB1 16:BCA1: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FCB2 16:BCA2: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FCB3 16:BCA3: 13        .byte $13   ; <て>
- D - I - - 0x02FCB4 16:BCA4: D2        .byte $D2

- D - I - - 0x02FCB5 16:BCA5: 28        .byte $28   ; <り>
- D - I - - 0x02FCB6 16:BCA6: 01        .byte $01   ; <あ>
- D - I - - 0x02FCB7 16:BCA7: 03        .byte $03   ; <う>
- D - I - - 0x02FCB8 16:BCA8: 99        .byte $99
- D - I - - 0x02FCB9 16:BCA9: 07        .byte $07   ; <き>
- D - I - - 0x02FCBA 16:BCAA: 9C        .byte $9C
- D - I - - 0x02FCBB 16:BCAB: 08        .byte $08   ; <く>
- D - I - - 0x02FCBC 16:BCAC: 9D        .byte $9D
- D - I - - 0x02FCBD 16:BCAD: 0C        .byte $0C   ; <し>
- D - I - - 0x02FCBE 16:BCAE: C8        .byte $C8   ; <ぱ>
- D - I - - 0x02FCBF 16:BCAF: 13        .byte $13   ; <て>
- D - I - - 0x02FCC0 16:BCB0: 01        .byte $01   ; <あ>
- D - I - - 0x02FCC1 16:BCB1: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FCC2 16:BCB2: CE        .byte $CE   ; <ピ>

- D - I - - 0x02FCC3 16:BCB3: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FCC4 16:BCB4: 02        .byte $02   ; <い>
- D - I - - 0x02FCC5 16:BCB5: 03        .byte $03   ; <う>
- D - I - - 0x02FCC6 16:BCB6: 9B        .byte $9B
- D - I - - 0x02FCC7 16:BCB7: 04        .byte $04   ; <え>
- D - I - - 0x02FCC8 16:BCB8: 9E        .byte $9E
- D - I - - 0x02FCC9 16:BCB9: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FCCA 16:BCBA: 9F        .byte $9F
- D - I - - 0x02FCCB 16:BCBB: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FCCC 16:BCBC: CA        .byte $CA   ; <ぷ>
- D - I - - 0x02FCCD 16:BCBD: 10        .byte $10   ; <た>
- D - I - - 0x02FCCE 16:BCBE: CB        .byte $CB   ; <ぺ>
- D - I - - 0x02FCCF 16:BCBF: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FCD0 16:BCC0: C9        .byte $C9   ; <ぴ>
- D - I - - 0x02FCD1 16:BCC1: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FCD2 16:BCC2: 77        .byte $77   ; <:>

- D - I - - 0x02FCD3 16:BCC3: 28        .byte $28   ; <り>
- D - I - - 0x02FCD4 16:BCC4: 03        .byte $03   ; <う>
- D - I - - 0x02FCD5 16:BCC5: 04        .byte $04   ; <え>
- D - I - - 0x02FCD6 16:BCC6: 6F        .byte $6F   ; <ッ>
- D - I - - 0x02FCD7 16:BCC7: 08        .byte $08   ; <く>
- D - I - - 0x02FCD8 16:BCC8: 7A        .byte $7A   ; <、>
- D - I - - 0x02FCD9 16:BCC9: 0C        .byte $0C   ; <し>
- D - I - - 0x02FCDA 16:BCCA: 7B        .byte $7B   ; <。>
- D - I - - 0x02FCDB 16:BCCB: 10        .byte $10   ; <た>
- D - I - - 0x02FCDC 16:BCCC: 7E        .byte $7E   ; <.>
- D - I - - 0x02FCDD 16:BCCD: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FCDE 16:BCCE: 7F        .byte $7F   ; <,>
- D - I - - 0x02FCDF 16:BCCF: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FCE0 16:BCD0: 7D        .byte $7D   ; <ー>

- D - I - - 0x02FCE1 16:BCD1: 20        .byte $20   ; <み>
- D - I - - 0x02FCE2 16:BCD2: 04        .byte $04   ; <え>
- D - I - - 0x02FCE3 16:BCD3: 04        .byte $04   ; <え>
- D - I - - 0x02FCE4 16:BCD4: 63        .byte $63   ; <モ>
- D - I - - 0x02FCE5 16:BCD5: 08        .byte $08   ; <く>
- D - I - - 0x02FCE6 16:BCD6: 66        .byte $66   ; <ヨ>
- D - I - - 0x02FCE7 16:BCD7: 0C        .byte $0C   ; <し>
- D - I - - 0x02FCE8 16:BCD8: 67        .byte $67   ; <ラ>
- D - I - - 0x02FCE9 16:BCD9: 10        .byte $10   ; <た>
- D - I - - 0x02FCEA 16:BCDA: 72        .byte $72   ; <ョ>
- D - I - - 0x02FCEB 16:BCDB: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FCEC 16:BCDC: 73        .byte $73   ; <ヮ>

- D - I - - 0x02FCED 16:BCDD: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FCEE 16:BCDE: 05        .byte $05   ; <お>
- D - I - - 0x02FCEF 16:BCDF: 01        .byte $01   ; <あ>
- D - I - - 0x02FCF0 16:BCE0: 68        .byte $68   ; <リ>
- D - I - - 0x02FCF1 16:BCE1: 05        .byte $05   ; <お>
- D - I - - 0x02FCF2 16:BCE2: 69        .byte $69   ; <ル>
- D - I - - 0x02FCF3 16:BCE3: 09        .byte $09   ; <け>
- D - I - - 0x02FCF4 16:BCE4: 6C        .byte $6C   ; <ワ>
- D - I - - 0x02FCF5 16:BCE5: 0D        .byte $0D   ; <す>
- D - I - - 0x02FCF6 16:BCE6: 6D        .byte $6D   ; <ヲ>
- D - I - - 0x02FCF7 16:BCE7: 11        .byte $11   ; <ち>
- D - I - - 0x02FCF8 16:BCE8: 78        .byte $78   ; <?>
- D - I - - 0x02FCF9 16:BCE9: 15        .byte $15   ; <な>
- D - I - - 0x02FCFA 16:BCEA: 79        .byte $79   ; <!>
- D - I - - 0x02FCFB 16:BCEB: 19        .byte $19   ; <の>
- D - I - - 0x02FCFC 16:BCEC: 7C        .byte $7C   ; <~>

- D - I - - 0x02FCFD 16:BCED: 38        .byte $38   ; <5>
- D - I - - 0x02FCFE 16:BCEE: 06        .byte $06   ; <か>
- D - I - - 0x02FCFF 16:BCEF: 01        .byte $01   ; <あ>
- D - I - - 0x02FD00 16:BCF0: 6A        .byte $6A   ; <レ>
- D - I - - 0x02FD01 16:BCF1: 05        .byte $05   ; <お>
- D - I - - 0x02FD02 16:BCF2: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02FD03 16:BCF3: 09        .byte $09   ; <け>
- D - I - - 0x02FD04 16:BCF4: 6E        .byte $6E   ; <ン>
- D - I - - 0x02FD05 16:BCF5: 0D        .byte $0D   ; <す>
- D - I - - 0x02FD06 16:BCF6: 2F        .byte $2F   ; <っ>
- D - I - - 0x02FD07 16:BCF7: 11        .byte $11   ; <ち>
- D - I - - 0x02FD08 16:BCF8: 3A        .byte $3A   ; <7>
- D - I - - 0x02FD09 16:BCF9: 15        .byte $15   ; <な>
- D - I - - 0x02FD0A 16:BCFA: 3B        .byte $3B   ; <8>
- D - I - - 0x02FD0B 16:BCFB: 19        .byte $19   ; <の>
- D - I - - 0x02FD0C 16:BCFC: 3E        .byte $3E   ; <Jr>
- D - I - - 0x02FD0D 16:BCFD: 81        .byte $81   ; <A>
- D - I - - 0x02FD0E 16:BCFE: 76        .byte $76   ; <ォ>

- D - I - - 0x02FD0F 16:BCFF: 01        .byte $01   ; <あ>



off_BD00_C1:
- D - I - - 0x02FD10 16:BD00: 38        .byte $38   ; <5>
- D - I - - 0x02FD11 16:BD01: 03        .byte $03   ; <う>
- D - I - - 0x02FD12 16:BD02: B5        .byte $B5   ; <ギ>
- D - I - - 0x02FD13 16:BD03: 1A        .byte $1A   ; <は>
- D - I - - 0x02FD14 16:BD04: 69        .byte $69   ; <ル>
- D - I - - 0x02FD15 16:BD05: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FD16 16:BD06: 01        .byte $01   ; <あ>
- D - I - - 0x02FD17 16:BD07: 1E        .byte $1E   ; <ほ>
- D - I - - 0x02FD18 16:BD08: 05        .byte $05   ; <お>
- D - I - - 0x02FD19 16:BD09: 1F        .byte $1F   ; <ま>
- D - I - - 0x02FD1A 16:BD0A: 15        .byte $15   ; <な>
- D - I - - 0x02FD1B 16:BD0B: 18        .byte $18   ; <ね>
- D - I - - 0x02FD1C 16:BD0C: 19        .byte $19   ; <の>
- D - I - - 0x02FD1D 16:BD0D: 19        .byte $19   ; <の>
- D - I - - 0x02FD1E 16:BD0E: 81        .byte $81   ; <A>
- D - I - - 0x02FD1F 16:BD0F: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02FD20 16:BD10: C1        .byte $C1   ; <デ>
- D - I - - 0x02FD21 16:BD11: 1D        .byte $1D   ; <へ>

- D - I - - 0x02FD22 16:BD12: 28        .byte $28   ; <り>
- D - I - - 0x02FD23 16:BD13: 04        .byte $04   ; <え>
- D - I - - 0x02FD24 16:BD14: 69        .byte $69   ; <ル>
- D - I - - 0x02FD25 16:BD15: 30        .byte $30   ; <ゃ>
- D - I - - 0x02FD26 16:BD16: 01        .byte $01   ; <あ>
- D - I - - 0x02FD27 16:BD17: 31        .byte $31   ; <ゅ>
- D - I - - 0x02FD28 16:BD18: 15        .byte $15   ; <な>
- D - I - - 0x02FD29 16:BD19: 34        .byte $34   ; <1>
- D - I - - 0x02FD2A 16:BD1A: 19        .byte $19   ; <の>
- D - I - - 0x02FD2B 16:BD1B: 35        .byte $35   ; <2>
- D - I - - 0x02FD2C 16:BD1C: 81        .byte $81   ; <A>
- D - I - - 0x02FD2D 16:BD1D: 37        .byte $37   ; <4>
- D - I - - 0x02FD2E 16:BD1E: C1        .byte $C1   ; <デ>
- D - I - - 0x02FD2F 16:BD1F: 22        .byte $22   ; <め>

- D - I - - 0x02FD30 16:BD20: 28        .byte $28   ; <り>
- D - I - - 0x02FD31 16:BD21: 05        .byte $05   ; <お>
- D - I - - 0x02FD32 16:BD22: 69        .byte $69   ; <ル>
- D - I - - 0x02FD33 16:BD23: 32        .byte $32   ; <ょ>
- D - I - - 0x02FD34 16:BD24: 01        .byte $01   ; <あ>
- D - I - - 0x02FD35 16:BD25: 33        .byte $33   ; <0>
- D - I - - 0x02FD36 16:BD26: 05        .byte $05   ; <お>
- D - I - - 0x02FD37 16:BD27: 36        .byte $36   ; <3>
- D - I - - 0x02FD38 16:BD28: 19        .byte $19   ; <の>
- D - I - - 0x02FD39 16:BD29: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02FD3A 16:BD2A: 81        .byte $81   ; <A>
- D - I - - 0x02FD3B 16:BD2B: 2E        .byte $2E   ; <ん>
- D - I - - 0x02FD3C 16:BD2C: C1        .byte $C1   ; <デ>
- D - I - - 0x02FD3D 16:BD2D: 2F        .byte $2F   ; <っ>

- D - I - - 0x02FD3E 16:BD2E: 01        .byte $01   ; <あ>



off_BD2F_C2:
- D - I - - 0x02FD3F 16:BD2F: 10        .byte $10   ; <た>
- D - I - - 0x02FD40 16:BD30: 03        .byte $03   ; <う>
- D - I - - 0x02FD41 16:BD31: 19        .byte $19   ; <の>
- D - I - - 0x02FD42 16:BD32: 2A        .byte $2A   ; <れ>
- D - I - - 0x02FD43 16:BD33: 81        .byte $81   ; <A>
- D - I - - 0x02FD44 16:BD34: 14        .byte $14   ; <と>
- D - I - - 0x02FD45 16:BD35: C1        .byte $C1   ; <デ>
- D - I - - 0x02FD46 16:BD36: 15        .byte $15   ; <な>

- D - I - - 0x02FD47 16:BD37: 38        .byte $38   ; <5>
- D - I - - 0x02FD48 16:BD38: 04        .byte $04   ; <え>
- D - I - - 0x02FD49 16:BD39: B5        .byte $B5   ; <ギ>
- D - I - - 0x02FD4A 16:BD3A: 20        .byte $20   ; <み>
- D - I - - 0x02FD4B 16:BD3B: 69        .byte $69   ; <ル>
- D - I - - 0x02FD4C 16:BD3C: 21        .byte $21   ; <む>
- D - I - - 0x02FD4D 16:BD3D: 01        .byte $01   ; <あ>
- D - I - - 0x02FD4E 16:BD3E: 24        .byte $24   ; <や>
- D - I - - 0x02FD4F 16:BD3F: 05        .byte $05   ; <お>
- D - I - - 0x02FD50 16:BD40: 25        .byte $25   ; <ゆ>
- D - I - - 0x02FD51 16:BD41: 11        .byte $11   ; <ち>
- D - I - - 0x02FD52 16:BD42: 28        .byte $28   ; <り>
- D - I - - 0x02FD53 16:BD43: 15        .byte $15   ; <な>
- D - I - - 0x02FD54 16:BD44: 29        .byte $29   ; <る>
- D - I - - 0x02FD55 16:BD45: 19        .byte $19   ; <の>
- D - I - - 0x02FD56 16:BD46: 2C        .byte $2C   ; <わ>
- D - I - - 0x02FD57 16:BD47: 81        .byte $81   ; <A>
- D - I - - 0x02FD58 16:BD48: 2D        .byte $2D   ; <を>

- D - I - - 0x02FD59 16:BD49: 28        .byte $28   ; <り>
- D - I - - 0x02FD5A 16:BD4A: 05        .byte $05   ; <お>
- D - I - - 0x02FD5B 16:BD4B: 69        .byte $69   ; <ル>
- D - I - - 0x02FD5C 16:BD4C: 23        .byte $23   ; <も>
- D - I - - 0x02FD5D 16:BD4D: 01        .byte $01   ; <あ>
- D - I - - 0x02FD5E 16:BD4E: 26        .byte $26   ; <よ>
- D - I - - 0x02FD5F 16:BD4F: 05        .byte $05   ; <お>
- D - I - - 0x02FD60 16:BD50: 36        .byte $36   ; <3>
- D - I - - 0x02FD61 16:BD51: 19        .byte $19   ; <の>
- D - I - - 0x02FD62 16:BD52: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02FD63 16:BD53: 81        .byte $81   ; <A>
- D - I - - 0x02FD64 16:BD54: 2E        .byte $2E   ; <ん>
- D - I - - 0x02FD65 16:BD55: C1        .byte $C1   ; <デ>
- D - I - - 0x02FD66 16:BD56: 2F        .byte $2F   ; <っ>

- D - I - - 0x02FD67 16:BD57: 01        .byte $01   ; <あ>



off_BD58_C3:
- D - I - - 0x02FD68 16:BD58: 00        .byte $00
- D - I - - 0x02FD69 16:BD59: 08        .byte $08   ; <く>
- D - I - - 0x02FD6A 16:BD5A: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02FD6B 16:BD5B: DF        .byte $DF

- D - I - - 0x02FD6C 16:BD5C: 10        .byte $10   ; <た>
- D - I - - 0x02FD6D 16:BD5D: 09        .byte $09   ; <け>
- D - I - - 0x02FD6E 16:BD5E: A3        .byte $A3   ; <げ>
- D - I - - 0x02FD6F 16:BD5F: F1        .byte $F1
- D - I - - 0x02FD70 16:BD60: B7        .byte $B7   ; <ゲ>
- D - I - - 0x02FD71 16:BD61: F4        .byte $F4
- D - I - - 0x02FD72 16:BD62: 6B        .byte $6B   ; <ロ>
- D - I - - 0x02FD73 16:BD63: F5        .byte $F5

- D - I - - 0x02FD74 16:BD64: 02        .byte $02   ; <い>
- D - I - - 0x02FD75 16:BD65: 4F 97     .word off_974F



off_BD67_C4:
- D - I - - 0x02FD77 16:BD67: 10        .byte $10   ; <た>
- D - I - - 0x02FD78 16:BD68: 03        .byte $03   ; <う>
- D - I - - 0x02FD79 16:BD69: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FD7A 16:BD6A: 37        .byte $37   ; <4>
- D - I - - 0x02FD7B 16:BD6B: 13        .byte $13   ; <て>
- D - I - - 0x02FD7C 16:BD6C: 62        .byte $62   ; <メ>
- D - I - - 0x02FD7D 16:BD6D: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FD7E 16:BD6E: CF        .byte $CF   ; <プ>

- D - I - - 0x02FD7F 16:BD6F: 10        .byte $10   ; <た>
- D - I - - 0x02FD80 16:BD70: 04        .byte $04   ; <え>
- D - I - - 0x02FD81 16:BD71: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FD82 16:BD72: 3D        .byte $3D   ; <+>
- D - I - - 0x02FD83 16:BD73: 13        .byte $13   ; <て>
- D - I - - 0x02FD84 16:BD74: 68        .byte $68   ; <リ>
- D - I - - 0x02FD85 16:BD75: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FD86 16:BD76: 69        .byte $69   ; <ル>

- D - I - - 0x02FD87 16:BD77: 08        .byte $08   ; <く>
- D - I - - 0x02FD88 16:BD78: 05        .byte $05   ; <お>
- D - I - - 0x02FD89 16:BD79: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FD8A 16:BD7A: 3F        .byte $3F   ; <•>
- D - I - - 0x02FD8B 16:BD7B: 13        .byte $13   ; <て>
- D - I - - 0x02FD8C 16:BD7C: 6A        .byte $6A   ; <レ>

- D - I - - 0x02FD8D 16:BD7D: 01        .byte $01   ; <あ>



off_BD7E_C5:
- D - I - - 0x02FD8E 16:BD7E: 00        .byte $00
- D - I - - 0x02FD8F 16:BD7F: 04        .byte $04   ; <え>
- D - I - - 0x02FD90 16:BD80: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FD91 16:BD81: 57        .byte $57   ; <ヌ>

- D - I - - 0x02FD92 16:BD82: 00        .byte $00
- D - I - - 0x02FD93 16:BD83: 05        .byte $05   ; <お>
- D - I - - 0x02FD94 16:BD84: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FD95 16:BD85: 5D        .byte $5D   ; <ヘ>

- D - I - - 0x02FD96 16:BD86: 00        .byte $00
- D - I - - 0x02FD97 16:BD87: 06        .byte $06   ; <か>
- D - I - - 0x02FD98 16:BD88: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FD99 16:BD89: 5F        .byte $5F   ; <マ>
; продолжение


off_BD8A:
- D - I - - 0x02FD9A 16:BD8A: 00        .byte $00
- D - I - - 0x02FD9B 16:BD8B: 04        .byte $04   ; <え>
- D - I - - 0x02FD9C 16:BD8C: 13        .byte $13   ; <て>
- D - I - - 0x02FD9D 16:BD8D: F6        .byte $F6

- D - I - - 0x02FD9E 16:BD8E: 00        .byte $00
- D - I - - 0x02FD9F 16:BD8F: 05        .byte $05   ; <お>
- D - I - - 0x02FDA0 16:BD90: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FDA1 16:BD91: F7        .byte $F7

- D - I - - 0x02FDA2 16:BD92: 08        .byte $08   ; <く>
- D - I - - 0x02FDA3 16:BD93: 06        .byte $06   ; <か>
- D - I - - 0x02FDA4 16:BD94: 13        .byte $13   ; <て>
- D - I - - 0x02FDA5 16:BD95: FC        .byte $FC
- D - I - - 0x02FDA6 16:BD96: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FDA7 16:BD97: FD        .byte $FD

- D - I - - 0x02FDA8 16:BD98: 08        .byte $08   ; <く>
- D - I - - 0x02FDA9 16:BD99: 07        .byte $07   ; <き>
- D - I - - 0x02FDAA 16:BD9A: 13        .byte $13   ; <て>
- D - I - - 0x02FDAB 16:BD9B: 71        .byte $71   ; <ュ>
- D - I - - 0x02FDAC 16:BD9C: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FDAD 16:BD9D: 74        .byte $74   ; <ィ>

- D - I - - 0x02FDAE 16:BD9E: 02        .byte $02   ; <い>
- D - I - - 0x02FDAF 16:BD9F: 59 AB     .word off_AB59



off_BDA1_C6:
- - - - - - 0x02FDB1 16:BDA1: 08        .byte $08   ; <く>
- - - - - - 0x02FDB2 16:BDA2: 04        .byte $04   ; <え>
- - - - - - 0x02FDB3 16:BDA3: 17        .byte $17   ; <ぬ>
- - - - - - 0x02FDB4 16:BDA4: 70        .byte $70   ; <ャ>
- - - - - - 0x02FDB5 16:BDA5: 1B        .byte $1B   ; <ひ>
- - - - - - 0x02FDB6 16:BDA6: 75        .byte $75   ; <ェ>

- - - - - - 0x02FDB7 16:BDA7: 00        .byte $00
- - - - - - 0x02FDB8 16:BDA8: 05        .byte $05   ; <お>
- - - - - - 0x02FDB9 16:BDA9: 1B        .byte $1B   ; <ひ>
- - - - - - 0x02FDBA 16:BDAA: 77        .byte $77   ; <:>
; продолжение


off_BDAB:
- - - - - - 0x02FDBB 16:BDAB: 00        .byte $00
- - - - - - 0x02FDBC 16:BDAC: 06        .byte $06   ; <か>
- - - - - - 0x02FDBD 16:BDAD: 1B        .byte $1B   ; <ひ>
- - - - - - 0x02FDBE 16:BDAE: 4F        .byte $4F   ; <ソ>

- - - - - - 0x02FDBF 16:BDAF: 02        .byte $02   ; <い>
- - - - - - 0x02FDC0 16:BDB0: 8A BD     .word off_BD8A



off_BDB2_C7:
- - - - - - 0x02FDC2 16:BDB2: 08        .byte $08   ; <く>
- - - - - - 0x02FDC3 16:BDB3: 04        .byte $04   ; <え>
- - - - - - 0x02FDC4 16:BDB4: 17        .byte $17   ; <ぬ>
- - - - - - 0x02FDC5 16:BDB5: 67        .byte $67   ; <ラ>
- - - - - - 0x02FDC6 16:BDB6: 1B        .byte $1B   ; <ひ>
- - - - - - 0x02FDC7 16:BDB7: 72        .byte $72   ; <ョ>

- - - - - - 0x02FDC8 16:BDB8: 00        .byte $00
- - - - - - 0x02FDC9 16:BDB9: 05        .byte $05   ; <お>
- - - - - - 0x02FDCA 16:BDBA: 1B        .byte $1B   ; <ひ>
- - - - - - 0x02FDCB 16:BDBB: 73        .byte $73   ; <ヮ>

- - - - - - 0x02FDCC 16:BDBC: 02        .byte $02   ; <い>
- - - - - - 0x02FDCD 16:BDBD: AB BD     .word off_BDAB



off_BDBF_32_33_34_35_36_37_38_39_3A_3B_3D_3D_C8_CD:
- D - I - - 0x02FDCF 16:BDBF: 00        .byte $00
- D - I - - 0x02FDD0 16:BDC0: 04        .byte $04   ; <え>
- D - I - - 0x02FDD1 16:BDC1: 10        .byte $10   ; <た>
- D - I - - 0x02FDD2 16:BDC2: 00        .byte $00

- D - I - - 0x02FDD3 16:BDC3: 01        .byte $01   ; <あ>



off_BDC4_C9:
- D - I - - 0x02FDD4 16:BDC4: 08        .byte $08   ; <く>
- D - I - - 0x02FDD5 16:BDC5: 03        .byte $03   ; <う>
- D - I - - 0x02FDD6 16:BDC6: 07        .byte $07   ; <き>
- D - I - - 0x02FDD7 16:BDC7: 74        .byte $74   ; <ィ>
- D - I - - 0x02FDD8 16:BDC8: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FDD9 16:BDC9: 73        .byte $73   ; <ヮ>

- D - I - - 0x02FDDA 16:BDCA: 00        .byte $00
- D - I - - 0x02FDDB 16:BDCB: 04        .byte $04   ; <え>
- D - I - - 0x02FDDC 16:BDCC: 07        .byte $07   ; <き>
- D - I - - 0x02FDDD 16:BDCD: 76        .byte $76   ; <ォ>

- D - I - - 0x02FDDE 16:BDCE: 00        .byte $00
- D - I - - 0x02FDDF 16:BDCF: 05        .byte $05   ; <お>
- D - I - - 0x02FDE0 16:BDD0: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FDE1 16:BDD1: 87        .byte $87   ; <G>

- D - I - - 0x02FDE2 16:BDD2: 02        .byte $02   ; <い>
- D - I - - 0x02FDE3 16:BDD3: 8F B7     .word off_B78F



off_BDD5_CA:
- D - I - - 0x02FDE5 16:BDD5: 08        .byte $08   ; <く>
- D - I - - 0x02FDE6 16:BDD6: 03        .byte $03   ; <う>
- D - I - - 0x02FDE7 16:BDD7: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FDE8 16:BDD8: F2        .byte $F2
- D - I - - 0x02FDE9 16:BDD9: 13        .byte $13   ; <て>
- D - I - - 0x02FDEA 16:BDDA: F3        .byte $F3

- D - I - - 0x02FDEB 16:BDDB: 08        .byte $08   ; <く>
- D - I - - 0x02FDEC 16:BDDC: 04        .byte $04   ; <え>
- D - I - - 0x02FDED 16:BDDD: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FDEE 16:BDDE: F4        .byte $F4
- D - I - - 0x02FDEF 16:BDDF: 13        .byte $13   ; <て>
- D - I - - 0x02FDF0 16:BDE0: F5        .byte $F5

- D - I - - 0x02FDF1 16:BDE1: 01        .byte $01   ; <あ>



off_BDE2_CB:
- - - - - - 0x02FDF2 16:BDE2: 00        .byte $00
- - - - - - 0x02FDF3 16:BDE3: 04        .byte $04   ; <え>
- - - - - - 0x02FDF4 16:BDE4: 13        .byte $13   ; <て>
- - - - - - 0x02FDF5 16:BDE5: 94        .byte $94

- - - - - - 0x02FDF6 16:BDE6: 01        .byte $01   ; <あ>



off_BDE7_CC:
- - - - - - 0x02FDF7 16:BDE7: 00        .byte $00
- - - - - - 0x02FDF8 16:BDE8: 04        .byte $04   ; <え>
- - - - - - 0x02FDF9 16:BDE9: 13        .byte $13   ; <て>
- - - - - - 0x02FDFA 16:BDEA: 95        .byte $95

- - - - - - 0x02FDFB 16:BDEB: 01        .byte $01   ; <あ>



off_BDEC_CE:
- D - I - - 0x02FDFC 16:BDEC: 00        .byte $00
- D - I - - 0x02FDFD 16:BDED: 01        .byte $01   ; <あ>
- D - I - - 0x02FDFE 16:BDEE: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FDFF 16:BDEF: 20        .byte $20   ; <み>

- D - I - - 0x02FE00 16:BDF0: 08        .byte $08   ; <く>
- D - I - - 0x02FE01 16:BDF1: 02        .byte $02   ; <い>
- D - I - - 0x02FE02 16:BDF2: C3        .byte $C3   ; <バ>
- D - I - - 0x02FE03 16:BDF3: 20        .byte $20   ; <み>
- D - I - - 0x02FE04 16:BDF4: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FE05 16:BDF5: 22        .byte $22   ; <め>

- D - I - - 0x02FE06 16:BDF6: 18        .byte $18   ; <ね>
- D - I - - 0x02FE07 16:BDF7: 03        .byte $03   ; <う>
- D - I - - 0x02FE08 16:BDF8: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FE09 16:BDF9: 28        .byte $28   ; <り>
- D - I - - 0x02FE0A 16:BDFA: 83        .byte $83   ; <C>
- D - I - - 0x02FE0B 16:BDFB: 29        .byte $29   ; <る>
- D - I - - 0x02FE0C 16:BDFC: C3        .byte $C3   ; <バ>
- D - I - - 0x02FE0D 16:BDFD: 2C        .byte $2C   ; <わ>
- D - I - - 0x02FE0E 16:BDFE: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FE0F 16:BDFF: 2D        .byte $2D   ; <を>

- D - I - - 0x02FE10 16:BE00: 18        .byte $18   ; <ね>
- D - I - - 0x02FE11 16:BE01: 04        .byte $04   ; <え>
- D - I - - 0x02FE12 16:BE02: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FE13 16:BE03: 10        .byte $10   ; <た>
- D - I - - 0x02FE14 16:BE04: 83        .byte $83   ; <C>
- D - I - - 0x02FE15 16:BE05: 11        .byte $11   ; <ち>
- D - I - - 0x02FE16 16:BE06: C3        .byte $C3   ; <バ>
- D - I - - 0x02FE17 16:BE07: 14        .byte $14   ; <と>
- D - I - - 0x02FE18 16:BE08: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FE19 16:BE09: 15        .byte $15   ; <な>

- D - I - - 0x02FE1A 16:BE0A: 08        .byte $08   ; <く>
- D - I - - 0x02FE1B 16:BE0B: 05        .byte $05   ; <お>
- D - I - - 0x02FE1C 16:BE0C: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FE1D 16:BE0D: 12        .byte $12   ; <つ>
- D - I - - 0x02FE1E 16:BE0E: 83        .byte $83   ; <C>
- D - I - - 0x02FE1F 16:BE0F: 15        .byte $15   ; <な>

- D - I - - 0x02FE20 16:BE10: 18        .byte $18   ; <ね>
- D - I - - 0x02FE21 16:BE11: 06        .byte $06   ; <か>
- D - I - - 0x02FE22 16:BE12: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FE23 16:BE13: 18        .byte $18   ; <ね>
- D - I - - 0x02FE24 16:BE14: 83        .byte $83   ; <C>
- D - I - - 0x02FE25 16:BE15: 19        .byte $19   ; <の>
- D - I - - 0x02FE26 16:BE16: C3        .byte $C3   ; <バ>
- D - I - - 0x02FE27 16:BE17: 1C        .byte $1C   ; <ふ>
- D - I - - 0x02FE28 16:BE18: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FE29 16:BE19: 1D        .byte $1D   ; <へ>

- D - I - - 0x02FE2A 16:BE1A: 18        .byte $18   ; <ね>
- D - I - - 0x02FE2B 16:BE1B: 07        .byte $07   ; <き>
- D - I - - 0x02FE2C 16:BE1C: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FE2D 16:BE1D: 2A        .byte $2A   ; <れ>
- D - I - - 0x02FE2E 16:BE1E: 83        .byte $83   ; <C>
- D - I - - 0x02FE2F 16:BE1F: 2B        .byte $2B   ; <ろ>
- D - I - - 0x02FE30 16:BE20: C3        .byte $C3   ; <バ>
- D - I - - 0x02FE31 16:BE21: 2E        .byte $2E   ; <ん>
- D - I - - 0x02FE32 16:BE22: C7        .byte $C7   ; <ボ>
- D - I - - 0x02FE33 16:BE23: 2F        .byte $2F   ; <っ>

- D - I - - 0x02FE34 16:BE24: 10        .byte $10   ; <た>
- D - I - - 0x02FE35 16:BE25: 08        .byte $08   ; <く>
- D - I - - 0x02FE36 16:BE26: 1B        .byte $1B   ; <ひ>
- D - I - - 0x02FE37 16:BE27: 34        .byte $34   ; <1>
- D - I - - 0x02FE38 16:BE28: 83        .byte $83   ; <C>
- D - I - - 0x02FE39 16:BE29: 35        .byte $35   ; <2>
- D - I - - 0x02FE3A 16:BE2A: C3        .byte $C3   ; <バ>
- D - I - - 0x02FE3B 16:BE2B: 15        .byte $15   ; <な>

- D - I - - 0x02FE3C 16:BE2C: 01        .byte $01   ; <あ>



off_BE2D_CF:
- D - I - - 0x02FE3D 16:BE2D: 00        .byte $00
- D - I - - 0x02FE3E 16:BE2E: 06        .byte $06   ; <か>
- D - I - - 0x02FE3F 16:BE2F: 13        .byte $13   ; <て>
- D - I - - 0x02FE40 16:BE30: 1B        .byte $1B   ; <ひ>

- D - I - - 0x02FE41 16:BE31: 03        .byte $03   ; <う>
- D - I - - 0x02FE42 16:BE32: 4A BE     .word off_BE4A
- D - I - - 0x02FE44 16:BE34: 81 BE     .word off_BE81
- D - I - - 0x02FE46 16:BE36: 4A BE     .word off_BE4A
- D - I - - 0x02FE48 16:BE38: 4A BE     .word off_BE4A
- D - I - - 0x02FE4A 16:BE3A: 90 BE     .word off_BE90
- D - I - - 0x02FE4C 16:BE3C: 9F BE     .word off_BE9F
- D - I - - 0x02FE4E 16:BE3E: 9F BE     .word off_BE9F
- D - I - - 0x02FE50 16:BE40: AE BE     .word off_BEAE
- D - I - - 0x02FE52 16:BE42: 9F BE     .word off_BE9F
- D - I - - 0x02FE54 16:BE44: C7 BE     .word off_BEC7
- D - I - - 0x02FE56 16:BE46: 9F BE     .word off_BE9F
- D - I - - 0x02FE58 16:BE48: 9F BE     .word off_BE9F



off_BE4A:
- D - I - - 0x02FE5A 16:BE4A: 08        .byte $08   ; <く>
- D - I - - 0x02FE5B 16:BE4B: 01        .byte $01   ; <あ>
- D - I - - 0x02FE5C 16:BE4C: 0C        .byte $0C   ; <し>
- D - I - - 0x02FE5D 16:BE4D: 05        .byte $05   ; <お>
- D - I - - 0x02FE5E 16:BE4E: 10        .byte $10   ; <た>
- D - I - - 0x02FE5F 16:BE4F: 10        .byte $10   ; <た>

- D - I - - 0x02FE60 16:BE50: 08        .byte $08   ; <く>
- D - I - - 0x02FE61 16:BE51: 02        .byte $02   ; <い>
- D - I - - 0x02FE62 16:BE52: 0C        .byte $0C   ; <し>
- D - I - - 0x02FE63 16:BE53: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE64 16:BE54: 10        .byte $10   ; <た>
- D - I - - 0x02FE65 16:BE55: 12        .byte $12   ; <つ>
; продолжение


off_BE56:
- D - I - - 0x02FE66 16:BE56: 00        .byte $00
- D - I - - 0x02FE67 16:BE57: 01        .byte $01   ; <あ>
- D - I - - 0x02FE68 16:BE58: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE69 16:BE59: 03        .byte $03   ; <う>

- D - I - - 0x02FE6A 16:BE5A: 08        .byte $08   ; <く>
- D - I - - 0x02FE6B 16:BE5B: 02        .byte $02   ; <い>
- D - I - - 0x02FE6C 16:BE5C: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE6D 16:BE5D: 08        .byte $08   ; <く>
- D - I - - 0x02FE6E 16:BE5E: 11        .byte $11   ; <ち>
- D - I - - 0x02FE6F 16:BE5F: 09        .byte $09   ; <け>
; продолжение


off_BE60:
- D - I - - 0x02FE70 16:BE60: 00        .byte $00
- D - I - - 0x02FE71 16:BE61: 01        .byte $01   ; <あ>
- D - I - - 0x02FE72 16:BE62: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FE73 16:BE63: 02        .byte $02   ; <い>

- D - I - - 0x02FE74 16:BE64: 00        .byte $00
- D - I - - 0x02FE75 16:BE65: 02        .byte $02   ; <い>
- D - I - - 0x02FE76 16:BE66: 17        .byte $17   ; <ぬ>
- D - I - - 0x02FE77 16:BE67: 0C        .byte $0C   ; <し>

- D - I - - 0x02FE78 16:BE68: 18        .byte $18   ; <ね>
- D - I - - 0x02FE79 16:BE69: 03        .byte $03   ; <う>
- D - I - - 0x02FE7A 16:BE6A: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FE7B 16:BE6B: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FE7C 16:BE6C: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE7D 16:BE6D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FE7E 16:BE6E: 12        .byte $12   ; <つ>
- D - I - - 0x02FE7F 16:BE6F: 0F        .byte $0F   ; <そ>
- D - I - - 0x02FE80 16:BE70: 11        .byte $11   ; <ち>
- D - I - - 0x02FE81 16:BE71: 0B        .byte $0B   ; <さ>

- D - I - - 0x02FE82 16:BE72: 08        .byte $08   ; <く>
- D - I - - 0x02FE83 16:BE73: 04        .byte $04   ; <え>
- D - I - - 0x02FE84 16:BE74: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE85 16:BE75: 20        .byte $20   ; <み>
- D - I - - 0x02FE86 16:BE76: 11        .byte $11   ; <ち>
- D - I - - 0x02FE87 16:BE77: 21        .byte $21   ; <む>

- D - I - - 0x02FE88 16:BE78: 00        .byte $00
- D - I - - 0x02FE89 16:BE79: 05        .byte $05   ; <お>
- D - I - - 0x02FE8A 16:BE7A: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE8B 16:BE7B: 22        .byte $22   ; <め>

- D - I - - 0x02FE8C 16:BE7C: 00        .byte $00
- D - I - - 0x02FE8D 16:BE7D: 06        .byte $06   ; <か>
- D - I - - 0x02FE8E 16:BE7E: 0D        .byte $0D   ; <す>
- D - I - - 0x02FE8F 16:BE7F: 28        .byte $28   ; <り>

- D - I - - 0x02FE90 16:BE80: 01        .byte $01   ; <あ>



off_BE81:
- D - I - - 0x02FE91 16:BE81: 08        .byte $08   ; <く>
- D - I - - 0x02FE92 16:BE82: 01        .byte $01   ; <あ>
- D - I - - 0x02FE93 16:BE83: 0C        .byte $0C   ; <し>
- D - I - - 0x02FE94 16:BE84: 18        .byte $18   ; <ね>
- D - I - - 0x02FE95 16:BE85: 10        .byte $10   ; <た>
- D - I - - 0x02FE96 16:BE86: 19        .byte $19   ; <の>

- D - I - - 0x02FE97 16:BE87: 08        .byte $08   ; <く>
- D - I - - 0x02FE98 16:BE88: 02        .byte $02   ; <い>
- D - I - - 0x02FE99 16:BE89: 0C        .byte $0C   ; <し>
- D - I - - 0x02FE9A 16:BE8A: 1A        .byte $1A   ; <は>
- D - I - - 0x02FE9B 16:BE8B: 10        .byte $10   ; <た>
- D - I - - 0x02FE9C 16:BE8C: 12        .byte $12   ; <つ>

- D - I - - 0x02FE9D 16:BE8D: 02        .byte $02   ; <い>
- D - I - - 0x02FE9E 16:BE8E: 56 BE     .word off_BE56



off_BE90:
- D - I - - 0x02FEA0 16:BE90: 08        .byte $08   ; <く>
- D - I - - 0x02FEA1 16:BE91: 01        .byte $01   ; <あ>
- D - I - - 0x02FEA2 16:BE92: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEA3 16:BE93: 23        .byte $23   ; <も>
- D - I - - 0x02FEA4 16:BE94: 10        .byte $10   ; <た>
- D - I - - 0x02FEA5 16:BE95: 26        .byte $26   ; <よ>

- D - I - - 0x02FEA6 16:BE96: 08        .byte $08   ; <く>
- D - I - - 0x02FEA7 16:BE97: 02        .byte $02   ; <い>
- D - I - - 0x02FEA8 16:BE98: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEA9 16:BE99: 29        .byte $29   ; <る>
- D - I - - 0x02FEAA 16:BE9A: 10        .byte $10   ; <た>
- D - I - - 0x02FEAB 16:BE9B: 2C        .byte $2C   ; <わ>

- D - I - - 0x02FEAC 16:BE9C: 02        .byte $02   ; <い>
- D - I - - 0x02FEAD 16:BE9D: 56 BE     .word off_BE56



off_BE9F:
- D - I - - 0x02FEAF 16:BE9F: 08        .byte $08   ; <く>
- D - I - - 0x02FEB0 16:BEA0: 01        .byte $01   ; <あ>
- D - I - - 0x02FEB1 16:BEA1: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEB2 16:BEA2: 2A        .byte $2A   ; <れ>
- D - I - - 0x02FEB3 16:BEA3: 10        .byte $10   ; <た>
- D - I - - 0x02FEB4 16:BEA4: 2B        .byte $2B   ; <ろ>

- D - I - - 0x02FEB5 16:BEA5: 08        .byte $08   ; <く>
- D - I - - 0x02FEB6 16:BEA6: 02        .byte $02   ; <い>
- D - I - - 0x02FEB7 16:BEA7: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEB8 16:BEA8: 29        .byte $29   ; <る>
- D - I - - 0x02FEB9 16:BEA9: 10        .byte $10   ; <た>
- D - I - - 0x02FEBA 16:BEAA: 12        .byte $12   ; <つ>

- D - I - - 0x02FEBB 16:BEAB: 02        .byte $02   ; <い>
- D - I - - 0x02FEBC 16:BEAC: 56 BE     .word off_BE56



off_BEAE:
- D - I - - 0x02FEBE 16:BEAE: 08        .byte $08   ; <く>
- D - I - - 0x02FEBF 16:BEAF: 01        .byte $01   ; <あ>
- D - I - - 0x02FEC0 16:BEB0: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEC1 16:BEB1: 05        .byte $05   ; <お>
- D - I - - 0x02FEC2 16:BEB2: 10        .byte $10   ; <た>
- D - I - - 0x02FEC3 16:BEB3: 10        .byte $10   ; <た>

- D - I - - 0x02FEC4 16:BEB4: 08        .byte $08   ; <く>
- D - I - - 0x02FEC5 16:BEB5: 02        .byte $02   ; <い>
- D - I - - 0x02FEC6 16:BEB6: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEC7 16:BEB7: 0D        .byte $0D   ; <す>
- D - I - - 0x02FEC8 16:BEB8: 10        .byte $10   ; <た>
- D - I - - 0x02FEC9 16:BEB9: 12        .byte $12   ; <つ>
; продолжение


off_BEBA:
- D - I - - 0x02FECA 16:BEBA: 00        .byte $00
- D - I - - 0x02FECB 16:BEBB: 01        .byte $01   ; <あ>
- D - I - - 0x02FECC 16:BEBC: 0D        .byte $0D   ; <す>
- D - I - - 0x02FECD 16:BEBD: 04        .byte $04   ; <え>

- D - I - - 0x02FECE 16:BEBE: 08        .byte $08   ; <く>
- D - I - - 0x02FECF 16:BEBF: 02        .byte $02   ; <い>
- D - I - - 0x02FED0 16:BEC0: 0D        .byte $0D   ; <す>
- D - I - - 0x02FED1 16:BEC1: 06        .byte $06   ; <か>
- D - I - - 0x02FED2 16:BEC2: 11        .byte $11   ; <ち>
- D - I - - 0x02FED3 16:BEC3: 07        .byte $07   ; <き>

- D - I - - 0x02FED4 16:BEC4: 02        .byte $02   ; <い>
- D - I - - 0x02FED5 16:BEC5: 60 BE     .word off_BE60



off_BEC7:
- D - I - - 0x02FED7 16:BEC7: 08        .byte $08   ; <く>
- D - I - - 0x02FED8 16:BEC8: 01        .byte $01   ; <あ>
- D - I - - 0x02FED9 16:BEC9: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEDA 16:BECA: 24        .byte $24   ; <や>
- D - I - - 0x02FEDB 16:BECB: 10        .byte $10   ; <た>
- D - I - - 0x02FEDC 16:BECC: 26        .byte $26   ; <よ>

- D - I - - 0x02FEDD 16:BECD: 08        .byte $08   ; <く>
- D - I - - 0x02FEDE 16:BECE: 02        .byte $02   ; <い>
- D - I - - 0x02FEDF 16:BECF: 0C        .byte $0C   ; <し>
- D - I - - 0x02FEE0 16:BED0: 1A        .byte $1A   ; <は>
- D - I - - 0x02FEE1 16:BED1: 10        .byte $10   ; <た>
- D - I - - 0x02FEE2 16:BED2: 2C        .byte $2C   ; <わ>

- D - I - - 0x02FEE3 16:BED3: 02        .byte $02   ; <い>
- D - I - - 0x02FEE4 16:BED4: 56 BE     .word off_BE56



off_BED6_D0:
- D - I - - 0x02FEE6 16:BED6: 00        .byte $00
- D - I - - 0x02FEE7 16:BED7: 00        .byte $00
- D - I - - 0x02FEE8 16:BED8: 03        .byte $03   ; <う>
- D - I - - 0x02FEE9 16:BED9: 31        .byte $31   ; <ゅ>

- D - I - - 0x02FEEA 16:BEDA: 03        .byte $03   ; <う>
- D - I - - 0x02FEEB 16:BEDB: F3 BE     .word off_BEF3
- D - I - - 0x02FEED 16:BEDD: 02 BF     .word off_BF02
- D - I - - 0x02FEEF 16:BEDF: 11 BF     .word off_BF11
- D - I - - 0x02FEF1 16:BEE1: F3 BE     .word off_BEF3
- D - I - - 0x02FEF3 16:BEE3: 20 BF     .word off_BF20
- D - I - - 0x02FEF5 16:BEE5: 11 BF     .word off_BF11
- D - I - - 0x02FEF7 16:BEE7: 11 BF     .word off_BF11
- D - I - - 0x02FEF9 16:BEE9: 2F BF     .word off_BF2F
- D - I - - 0x02FEFB 16:BEEB: 11 BF     .word off_BF11
- D - I - - 0x02FEFD 16:BEED: 3E BF     .word off_BF3E
- D - I - - 0x02FEFF 16:BEEF: 11 BF     .word off_BF11
- D - I - - 0x02FF01 16:BEF1: 11 BF     .word off_BF11



off_BEF3:
- D - I - - 0x02FF03 16:BEF3: 08        .byte $08   ; <く>
- D - I - - 0x02FF04 16:BEF4: 01        .byte $01   ; <あ>
- D - I - - 0x02FF05 16:BEF5: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF06 16:BEF6: 25        .byte $25   ; <ゆ>
- D - I - - 0x02FF07 16:BEF7: 10        .byte $10   ; <た>
- D - I - - 0x02FF08 16:BEF8: 30        .byte $30   ; <ゃ>

- D - I - - 0x02FF09 16:BEF9: 08        .byte $08   ; <く>
- D - I - - 0x02FF0A 16:BEFA: 02        .byte $02   ; <い>
- D - I - - 0x02FF0B 16:BEFB: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF0C 16:BEFC: 27        .byte $27   ; <ら>
- D - I - - 0x02FF0D 16:BEFD: 10        .byte $10   ; <た>
- D - I - - 0x02FF0E 16:BEFE: 32        .byte $32   ; <ょ>

- D - I - - 0x02FF0F 16:BEFF: 02        .byte $02   ; <い>
- D - I - - 0x02FF10 16:BF00: 56 BE     .word off_BE56



off_BF02:
- D - I - - 0x02FF12 16:BF02: 08        .byte $08   ; <く>
- D - I - - 0x02FF13 16:BF03: 01        .byte $01   ; <あ>
- D - I - - 0x02FF14 16:BF04: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF15 16:BF05: 25        .byte $25   ; <ゆ>
- D - I - - 0x02FF16 16:BF06: 10        .byte $10   ; <た>
- D - I - - 0x02FF17 16:BF07: 11        .byte $11   ; <ち>

- D - I - - 0x02FF18 16:BF08: 08        .byte $08   ; <く>
- D - I - - 0x02FF19 16:BF09: 02        .byte $02   ; <い>
- D - I - - 0x02FF1A 16:BF0A: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF1B 16:BF0B: 27        .byte $27   ; <ら>
- D - I - - 0x02FF1C 16:BF0C: 10        .byte $10   ; <た>
- D - I - - 0x02FF1D 16:BF0D: 13        .byte $13   ; <て>

- D - I - - 0x02FF1E 16:BF0E: 02        .byte $02   ; <い>
- D - I - - 0x02FF1F 16:BF0F: 56 BE     .word off_BE56



off_BF11:
- D - I - - 0x02FF21 16:BF11: 08        .byte $08   ; <く>
- D - I - - 0x02FF22 16:BF12: 01        .byte $01   ; <あ>
- D - I - - 0x02FF23 16:BF13: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF24 16:BF14: 2D        .byte $2D   ; <を>
- D - I - - 0x02FF25 16:BF15: 10        .byte $10   ; <た>
- D - I - - 0x02FF26 16:BF16: 38        .byte $38   ; <5>

- D - I - - 0x02FF27 16:BF17: 08        .byte $08   ; <く>
- D - I - - 0x02FF28 16:BF18: 02        .byte $02   ; <い>
- D - I - - 0x02FF29 16:BF19: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF2A 16:BF1A: 27        .byte $27   ; <ら>
- D - I - - 0x02FF2B 16:BF1B: 10        .byte $10   ; <た>
- D - I - - 0x02FF2C 16:BF1C: 32        .byte $32   ; <ょ>

- D - I - - 0x02FF2D 16:BF1D: 02        .byte $02   ; <い>
- D - I - - 0x02FF2E 16:BF1E: 56 BE     .word off_BE56



off_BF20:
- D - I - - 0x02FF30 16:BF20: 08        .byte $08   ; <く>
- D - I - - 0x02FF31 16:BF21: 01        .byte $01   ; <あ>
- D - I - - 0x02FF32 16:BF22: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF33 16:BF23: 2E        .byte $2E   ; <ん>
- D - I - - 0x02FF34 16:BF24: 10        .byte $10   ; <た>
- D - I - - 0x02FF35 16:BF25: 38        .byte $38   ; <5>

- D - I - - 0x02FF36 16:BF26: 08        .byte $08   ; <く>
- D - I - - 0x02FF37 16:BF27: 02        .byte $02   ; <い>
- D - I - - 0x02FF38 16:BF28: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF39 16:BF29: 27        .byte $27   ; <ら>
- D - I - - 0x02FF3A 16:BF2A: 10        .byte $10   ; <た>
- D - I - - 0x02FF3B 16:BF2B: 32        .byte $32   ; <ょ>

- D - I - - 0x02FF3C 16:BF2C: 02        .byte $02   ; <い>
- D - I - - 0x02FF3D 16:BF2D: 56 BE     .word off_BE56



off_BF2F:
- D - I - - 0x02FF3F 16:BF2F: 08        .byte $08   ; <く>
- D - I - - 0x02FF40 16:BF30: 01        .byte $01   ; <あ>
- D - I - - 0x02FF41 16:BF31: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF42 16:BF32: 25        .byte $25   ; <ゆ>
- D - I - - 0x02FF43 16:BF33: 10        .byte $10   ; <た>
- D - I - - 0x02FF44 16:BF34: 30        .byte $30   ; <ゃ>

- D - I - - 0x02FF45 16:BF35: 08        .byte $08   ; <く>
- D - I - - 0x02FF46 16:BF36: 02        .byte $02   ; <い>
- D - I - - 0x02FF47 16:BF37: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF48 16:BF38: 27        .byte $27   ; <ら>
- D - I - - 0x02FF49 16:BF39: 10        .byte $10   ; <た>
- D - I - - 0x02FF4A 16:BF3A: 32        .byte $32   ; <ょ>

- D - I - - 0x02FF4B 16:BF3B: 02        .byte $02   ; <い>
- D - I - - 0x02FF4C 16:BF3C: BA BE     .word off_BEBA



off_BF3E:
- D - I - - 0x02FF4E 16:BF3E: 08        .byte $08   ; <く>
- D - I - - 0x02FF4F 16:BF3F: 01        .byte $01   ; <あ>
- D - I - - 0x02FF50 16:BF40: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF51 16:BF41: 2E        .byte $2E   ; <ん>
- D - I - - 0x02FF52 16:BF42: 10        .byte $10   ; <た>
- D - I - - 0x02FF53 16:BF43: 2F        .byte $2F   ; <っ>

- D - I - - 0x02FF54 16:BF44: 08        .byte $08   ; <く>
- D - I - - 0x02FF55 16:BF45: 02        .byte $02   ; <い>
- D - I - - 0x02FF56 16:BF46: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF57 16:BF47: 27        .byte $27   ; <ら>
- D - I - - 0x02FF58 16:BF48: 10        .byte $10   ; <た>
- D - I - - 0x02FF59 16:BF49: 3A        .byte $3A   ; <7>

- D - I - - 0x02FF5A 16:BF4A: 02        .byte $02   ; <い>
- D - I - - 0x02FF5B 16:BF4B: 56 BE     .word off_BE56



off_BF4D_D1:
- D - I - - 0x02FF5D 16:BF4D: 00        .byte $00
- D - I - - 0x02FF5E 16:BF4E: 19        .byte $19   ; <の>
- D - I - - 0x02FF5F 16:BF4F: 86        .byte $86   ; <F>
- D - I - - 0x02FF60 16:BF50: 60        .byte $60   ; <ミ>

- D - I - - 0x02FF61 16:BF51: 00        .byte $00
- D - I - - 0x02FF62 16:BF52: 24        .byte $24   ; <や>
- D - I - - 0x02FF63 16:BF53: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FF64 16:BF54: 48        .byte $48   ; <ク>

- D - I - - 0x02FF65 16:BF55: 10        .byte $10   ; <た>
- D - I - - 0x02FF66 16:BF56: 02        .byte $02   ; <い>
- D - I - - 0x02FF67 16:BF57: 09        .byte $09   ; <け>
- D - I - - 0x02FF68 16:BF58: 70        .byte $70   ; <ャ>
- D - I - - 0x02FF69 16:BF59: 0D        .byte $0D   ; <す>
- D - I - - 0x02FF6A 16:BF5A: FE        .byte $FE
- D - I - - 0x02FF6B 16:BF5B: 11        .byte $11   ; <ち>
- D - I - - 0x02FF6C 16:BF5C: FD        .byte $FD

- D - I - - 0x02FF6D 16:BF5D: 18        .byte $18   ; <ね>
- D - I - - 0x02FF6E 16:BF5E: 03        .byte $03   ; <う>
- D - I - - 0x02FF6F 16:BF5F: 05        .byte $05   ; <お>
- D - I - - 0x02FF70 16:BF60: 66        .byte $66   ; <ヨ>
- D - I - - 0x02FF71 16:BF61: 09        .byte $09   ; <け>
- D - I - - 0x02FF72 16:BF62: 94        .byte $94
- D - I - - 0x02FF73 16:BF63: 0D        .byte $0D   ; <す>
- D - I - - 0x02FF74 16:BF64: 95        .byte $95
- D - I - - 0x02FF75 16:BF65: 11        .byte $11   ; <ち>
- D - I - - 0x02FF76 16:BF66: FF        .byte $FF

- D - I - - 0x02FF77 16:BF67: 02        .byte $02   ; <い>
- D - I - - 0x02FF78 16:BF68: 6C B9     .word off_B96C



off_BF6A_D3:
- D - I - - 0x02FF7A 16:BF6A: 08        .byte $08   ; <く>
- D - I - - 0x02FF7B 16:BF6B: 02        .byte $02   ; <い>
- D - I - - 0x02FF7C 16:BF6C: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF7D 16:BF6D: 02        .byte $02   ; <い>
- D - I - - 0x02FF7E 16:BF6E: 10        .byte $10   ; <た>
- D - I - - 0x02FF7F 16:BF6F: 03        .byte $03   ; <う>

- D - I - - 0x02FF80 16:BF70: 18        .byte $18   ; <ね>
- D - I - - 0x02FF81 16:BF71: 03        .byte $03   ; <う>
- D - I - - 0x02FF82 16:BF72: 08        .byte $08   ; <く>
- D - I - - 0x02FF83 16:BF73: 08        .byte $08   ; <く>
- D - I - - 0x02FF84 16:BF74: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF85 16:BF75: 09        .byte $09   ; <け>
- D - I - - 0x02FF86 16:BF76: 10        .byte $10   ; <た>
- D - I - - 0x02FF87 16:BF77: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF88 16:BF78: 14        .byte $14   ; <と>
- D - I - - 0x02FF89 16:BF79: 0D        .byte $0D   ; <す>

- D - I - - 0x02FF8A 16:BF7A: 18        .byte $18   ; <ね>
- D - I - - 0x02FF8B 16:BF7B: 04        .byte $04   ; <え>
- D - I - - 0x02FF8C 16:BF7C: 08        .byte $08   ; <く>
- D - I - - 0x02FF8D 16:BF7D: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FF8E 16:BF7E: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF8F 16:BF7F: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FF90 16:BF80: 10        .byte $10   ; <た>
- D - I - - 0x02FF91 16:BF81: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FF92 16:BF82: 14        .byte $14   ; <と>
- D - I - - 0x02FF93 16:BF83: 0F        .byte $0F   ; <そ>

- D - I - - 0x02FF94 16:BF84: 08        .byte $08   ; <く>
- D - I - - 0x02FF95 16:BF85: 05        .byte $05   ; <お>
- D - I - - 0x02FF96 16:BF86: 0C        .byte $0C   ; <し>
- D - I - - 0x02FF97 16:BF87: 20        .byte $20   ; <み>
- D - I - - 0x02FF98 16:BF88: 10        .byte $10   ; <た>
- D - I - - 0x02FF99 16:BF89: 21        .byte $21   ; <む>

- D - I - - 0x02FF9A 16:BF8A: 01        .byte $01   ; <あ>



off_BF8B_D4:
- D - I - - 0x02FF9B 16:BF8B: 08        .byte $08   ; <く>
- D - I - - 0x02FF9C 16:BF8C: 02        .byte $02   ; <い>
- D - I - - 0x02FF9D 16:BF8D: 0D        .byte $0D   ; <す>
- D - I - - 0x02FF9E 16:BF8E: 02        .byte $02   ; <い>
- D - I - - 0x02FF9F 16:BF8F: 11        .byte $11   ; <ち>
- D - I - - 0x02FFA0 16:BF90: 03        .byte $03   ; <う>

- D - I - - 0x02FFA1 16:BF91: 18        .byte $18   ; <ね>
- D - I - - 0x02FFA2 16:BF92: 03        .byte $03   ; <う>
- D - I - - 0x02FFA3 16:BF93: 09        .byte $09   ; <け>
- D - I - - 0x02FFA4 16:BF94: 08        .byte $08   ; <く>
- D - I - - 0x02FFA5 16:BF95: 0D        .byte $0D   ; <す>
- D - I - - 0x02FFA6 16:BF96: 09        .byte $09   ; <け>
- D - I - - 0x02FFA7 16:BF97: 11        .byte $11   ; <ち>
- D - I - - 0x02FFA8 16:BF98: 0C        .byte $0C   ; <し>
- D - I - - 0x02FFA9 16:BF99: 15        .byte $15   ; <な>
- D - I - - 0x02FFAA 16:BF9A: 0D        .byte $0D   ; <す>

- D - I - - 0x02FFAB 16:BF9B: 18        .byte $18   ; <ね>
- D - I - - 0x02FFAC 16:BF9C: 04        .byte $04   ; <え>
- D - I - - 0x02FFAD 16:BF9D: 09        .byte $09   ; <け>
- D - I - - 0x02FFAE 16:BF9E: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FFAF 16:BF9F: 0D        .byte $0D   ; <す>
- D - I - - 0x02FFB0 16:BFA0: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FFB1 16:BFA1: 11        .byte $11   ; <ち>
- D - I - - 0x02FFB2 16:BFA2: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FFB3 16:BFA3: 15        .byte $15   ; <な>
- D - I - - 0x02FFB4 16:BFA4: 0F        .byte $0F   ; <そ>

- D - I - - 0x02FFB5 16:BFA5: 08        .byte $08   ; <く>
- D - I - - 0x02FFB6 16:BFA6: 05        .byte $05   ; <お>
- D - I - - 0x02FFB7 16:BFA7: 0D        .byte $0D   ; <す>
- D - I - - 0x02FFB8 16:BFA8: 20        .byte $20   ; <み>
- D - I - - 0x02FFB9 16:BFA9: 11        .byte $11   ; <ち>
- D - I - - 0x02FFBA 16:BFAA: 21        .byte $21   ; <む>

- D - I - - 0x02FFBB 16:BFAB: 01        .byte $01   ; <あ>



off_BFAC_D5:
- D - I - - 0x02FFBC 16:BFAC: 08        .byte $08   ; <く>
- D - I - - 0x02FFBD 16:BFAD: 02        .byte $02   ; <い>
- D - I - - 0x02FFBE 16:BFAE: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FFBF 16:BFAF: 02        .byte $02   ; <い>
- D - I - - 0x02FFC0 16:BFB0: 12        .byte $12   ; <つ>
- D - I - - 0x02FFC1 16:BFB1: 03        .byte $03   ; <う>

- D - I - - 0x02FFC2 16:BFB2: 18        .byte $18   ; <ね>
- D - I - - 0x02FFC3 16:BFB3: 03        .byte $03   ; <う>
- D - I - - 0x02FFC4 16:BFB4: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FFC5 16:BFB5: 08        .byte $08   ; <く>
- D - I - - 0x02FFC6 16:BFB6: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FFC7 16:BFB7: 09        .byte $09   ; <け>
- D - I - - 0x02FFC8 16:BFB8: 12        .byte $12   ; <つ>
- D - I - - 0x02FFC9 16:BFB9: 0C        .byte $0C   ; <し>
- D - I - - 0x02FFCA 16:BFBA: 16        .byte $16   ; <に>
- D - I - - 0x02FFCB 16:BFBB: 0D        .byte $0D   ; <す>

- D - I - - 0x02FFCC 16:BFBC: 18        .byte $18   ; <ね>
- D - I - - 0x02FFCD 16:BFBD: 04        .byte $04   ; <え>
- D - I - - 0x02FFCE 16:BFBE: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FFCF 16:BFBF: 0A        .byte $0A   ; <こ>
- D - I - - 0x02FFD0 16:BFC0: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FFD1 16:BFC1: 0B        .byte $0B   ; <さ>
- D - I - - 0x02FFD2 16:BFC2: 12        .byte $12   ; <つ>
- D - I - - 0x02FFD3 16:BFC3: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FFD4 16:BFC4: 16        .byte $16   ; <に>
- D - I - - 0x02FFD5 16:BFC5: 0F        .byte $0F   ; <そ>

- D - I - - 0x02FFD6 16:BFC6: 08        .byte $08   ; <く>
- D - I - - 0x02FFD7 16:BFC7: 05        .byte $05   ; <お>
- D - I - - 0x02FFD8 16:BFC8: 0E        .byte $0E   ; <せ>
- D - I - - 0x02FFD9 16:BFC9: 20        .byte $20   ; <み>
- D - I - - 0x02FFDA 16:BFCA: 12        .byte $12   ; <つ>
- D - I - - 0x02FFDB 16:BFCB: 21        .byte $21   ; <む>

- D - I - - 0x02FFDC 16:BFCC: 01        .byte $01   ; <あ>
