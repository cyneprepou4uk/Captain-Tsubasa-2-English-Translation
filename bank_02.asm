.segment "BANK_02"
.include "copy_bank_ram.inc"

sub_A01E:
C - - - - 0x00202E 02:A01E: AD 48 04  LDA ram_флаг_циклона
C - - - - 0x002031 02:A021: 4A        LSR
C - - - - 0x002032 02:A022: A5 26     LDA ram_матч
C - - - - 0x002034 02:A024: 2A        ROL
C - - - - 0x002035 02:A025: 18        CLC
C - - - - 0x002036 02:A026: AE 46 04  LDX ram_флаг_драйв_оверхеда
C - - - - 0x002039 02:A029: E0 05     CPX #$05
C - - - - 0x00203B 02:A02B: 2A        ROL
C - - - - 0x00203C 02:A02C: 8D 60 06  STA $0660
C - - - - 0x00203F 02:A02F: AD 4D 04  LDA ram_флаг_мисуги_0_хп
C - - - - 0x002042 02:A032: 6A        ROR
C - - - - 0x002043 02:A033: A5 E1     LDA ram_рандом_1
C - - - - 0x002045 02:A035: 6A        ROR
C - - - - 0x002046 02:A036: 29 B0     AND #$B0
C - - - - 0x002048 02:A038: 8D 61 06  STA $0661
C - - - - 0x00204B 02:A03B: A9 00     LDA #$00
bra_A03D:
C - - - - 0x00204D 02:A03D: 48        PHA
C - - - - 0x00204E 02:A03E: 20 16 B0  JSR sub_B016
C - - - - 0x002051 02:A041: 84 EC     STY ram_00EC
C - - - - 0x002053 02:A043: 86 ED     STX ram_00ED
C - - - - 0x002055 02:A045: 20 2E B0  JSR sub_B02E
C - - - - 0x002058 02:A048: 85 E7     STA ram_00E7
C - - - - 0x00205A 02:A04A: 20 45 B0  JSR sub_B045
C - - - - 0x00205D 02:A04D: 84 EA     STY ram_00EA
C - - - - 0x00205F 02:A04F: 86 EB     STX ram_00EB
C - - - - 0x002061 02:A051: A5 EC     LDA ram_00EC
C - - - - 0x002063 02:A053: 38        SEC
C - - - - 0x002064 02:A054: E5 EA     SBC ram_00EA
C - - - - 0x002066 02:A056: 85 EC     STA ram_00EC
C - - - - 0x002068 02:A058: A5 ED     LDA ram_00ED
C - - - - 0x00206A 02:A05A: E5 EB     SBC ram_00EB
C - - - - 0x00206C 02:A05C: 85 ED     STA ram_00ED
C - - - - 0x00206E 02:A05E: A5 E7     LDA ram_00E7
C - - - - 0x002070 02:A060: 18        CLC
C - - - - 0x002071 02:A061: 69 01     ADC #$01
C - - - - 0x002073 02:A063: 20 45 B0  JSR sub_B045
C - - - - 0x002076 02:A066: 98        TYA
C - - - - 0x002077 02:A067: 38        SEC
C - - - - 0x002078 02:A068: E5 EA     SBC ram_00EA
C - - - - 0x00207A 02:A06A: 85 EA     STA ram_00EA
C - - - - 0x00207C 02:A06C: 8A        TXA
C - - - - 0x00207D 02:A06D: E5 EB     SBC ram_00EB
C - - - - 0x00207F 02:A06F: 85 EB     STA ram_00EB
C - - - - 0x002081 02:A071: 46 EB     LSR ram_00EB
C - - - - 0x002083 02:A073: 66 EA     ROR ram_00EA
C - - - - 0x002085 02:A075: 46 EB     LSR ram_00EB
C - - - - 0x002087 02:A077: 66 EA     ROR ram_00EA
C - - - - 0x002089 02:A079: 20 0C 9E  JSR sub_0x001E1C
C - - - - 0x00208C 02:A07C: 68        PLA
C - - - - 0x00208D 02:A07D: AA        TAX
C - - - - 0x00208E 02:A07E: A5 E7     LDA ram_00E7
C - - - - 0x002090 02:A080: 0A        ASL
C - - - - 0x002091 02:A081: 0A        ASL
C - - - - 0x002092 02:A082: 05 EC     ORA ram_00EC
C - - - - 0x002094 02:A084: 9D 56 06  STA $0656,X
C - - - - 0x002097 02:A087: E8        INX
C - - - - 0x002098 02:A088: 8A        TXA
C - - - - 0x002099 02:A089: C9 0A     CMP #$0A
C - - - - 0x00209B 02:A08B: D0 B0     BNE bra_A03D
C - - - - 0x00209D 02:A08D: A5 E2     LDA ram_рандом_2
C - - - - 0x00209F 02:A08F: 29 F0     AND #$F0
C - - - - 0x0020A1 02:A091: 8D 63 06  STA $0663
C - - - - 0x0020A4 02:A094: 4A        LSR
C - - - - 0x0020A5 02:A095: 4A        LSR
C - - - - 0x0020A6 02:A096: 4A        LSR
C - - - - 0x0020A7 02:A097: 4A        LSR
C - - - - 0x0020A8 02:A098: 0D 61 06  ORA $0661
C - - - - 0x0020AB 02:A09B: 85 EB     STA ram_00EB
C - - - - 0x0020AD 02:A09D: 20 02 A4  JSR sub_A402
C - - - - 0x0020B0 02:A0A0: A5 EC     LDA ram_00EC
C - - - - 0x0020B2 02:A0A2: 8D 62 06  STA $0662
C - - - - 0x0020B5 02:A0A5: A5 ED     LDA ram_00ED
C - - - - 0x0020B7 02:A0A7: 29 0F     AND #$0F
C - - - - 0x0020B9 02:A0A9: 0D 61 06  ORA $0661
C - - - - 0x0020BC 02:A0AC: 8D 61 06  STA $0661
C - - - - 0x0020BF 02:A0AF: A9 00     LDA #$00
C - - - - 0x0020C1 02:A0B1: 85 ED     STA ram_00ED
bra_A0B3:
C - - - - 0x0020C3 02:A0B3: A6 ED     LDX ram_00ED
C - - - - 0x0020C5 02:A0B5: 20 38 A4  JSR sub_A438
C - - - - 0x0020C8 02:A0B8: A2 FF     LDX #$FF
bra_A0BA:
C - - - - 0x0020CA 02:A0BA: E8        INX
C - - - - 0x0020CB 02:A0BB: DD 55 B2  CMP tbl_B255,X
C - - - - 0x0020CE 02:A0BE: D0 FA     BNE bra_A0BA
C - - - - 0x0020D0 02:A0C0: A5 ED     LDA ram_00ED
C - - - - 0x0020D2 02:A0C2: C9 0F     CMP #$0F
C - - - - 0x0020D4 02:A0C4: B0 09     BCS bra_A0CF
C - - - - 0x0020D6 02:A0C6: E6 EB     INC ram_00EB
C - - - - 0x0020D8 02:A0C8: 8A        TXA
C - - - - 0x0020D9 02:A0C9: 18        CLC
C - - - - 0x0020DA 02:A0CA: 65 EB     ADC ram_00EB
C - - - - 0x0020DC 02:A0CC: 29 3F     AND #$3F
C - - - - 0x0020DE 02:A0CE: AA        TAX
bra_A0CF:
C - - - - 0x0020DF 02:A0CF: BD 6E BC  LDA tbl_BC6E_символы_пароля,X
C - - - - 0x0020E2 02:A0D2: 85 EC     STA ram_00EC
C - - - - 0x0020E4 02:A0D4: A6 ED     LDX ram_00ED
C - - - - 0x0020E6 02:A0D6: BD 41 B2  LDA tbl_B241,X
C - - - - 0x0020E9 02:A0D9: 18        CLC
C - - - - 0x0020EA 02:A0DA: 69 80     ADC #$80
C - - - - 0x0020EC 02:A0DC: A8        TAY
C - - - - 0x0020ED 02:A0DD: A2 22     LDX #$22
C - - - - 0x0020EF 02:A0DF: A5 EC     LDA ram_00EC
C - - - - 0x0020F1 02:A0E1: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x0020F4 02:A0E4: A5 99     LDA ram_0099
C - - - - 0x0020F6 02:A0E6: 10 04     BPL bra_A0EC
- - - - - 0x0020F8 02:A0E8: 49 41     EOR #$41
- - - - - 0x0020FA 02:A0EA: 85 99     STA ram_0099
bra_A0EC:
C - - - - 0x0020FC 02:A0EC: E6 ED     INC ram_00ED
C - - - - 0x0020FE 02:A0EE: A5 ED     LDA ram_00ED
C - - - - 0x002100 02:A0F0: C9 12     CMP #$12
C - - - - 0x002102 02:A0F2: 90 BF     BCC bra_A0B3
bra_A0F4:
C - - - - 0x002104 02:A0F4: A9 01     LDA #$01
C - - - - 0x002106 02:A0F6: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002109 02:A0F9: A5 1E     LDA ram_одноразовые
; con_btn_A
C - - - - 0x00210B 02:A0FB: 10 F7     BPL bra_A0F4
C - - - - 0x00210D 02:A0FD: A9 8A     LDA #$8A
C - - - - 0x00210F 02:A0FF: 85 E6     STA ram_00E6
C - - - - 0x002111 02:A101: A9 22     LDA #$22
C - - - - 0x002113 02:A103: 85 E7     STA ram_00E7
C - - - - 0x002115 02:A105: A0 04     LDY #$04
C - - - - 0x002117 02:A107: A2 0B     LDX #$0B
C - - - - 0x002119 02:A109: 20 E8 98  JSR sub_0x0018F8
C - - - - 0x00211C 02:A10C: 60        RTS

.export sub_0x00211D_экран_continue
sub_0x00211D_экран_continue:
C D - - - 0x00211D 02:A10D: 20 A0 9B  JSR sub_0x001BB0
C - - - - 0x002120 02:A110: A9 00     LDA #$00
C - - - - 0x002122 02:A112: A0 F0     LDY #$F0
bra_A114:
C - - - - 0x002124 02:A114: 99 66 05  STA $0566,Y
C - - - - 0x002127 02:A117: C8        INY
C - - - - 0x002128 02:A118: D0 FA     BNE bra_A114
C - - - - 0x00212A 02:A11A: A2 2C     LDX #$2C
C - - - - 0x00212C 02:A11C: A0 2D     LDY #$2D
C - - - - 0x00212E 02:A11E: 20 6F 9B  JSR sub_0x001B7F
C - - - - 0x002131 02:A121: A2 2E     LDX #$2E
C - - - - 0x002133 02:A123: A0 2F     LDY #$2F
C - - - - 0x002135 02:A125: 20 74 9B  JSR sub_0x001B84
C - - - - 0x002138 02:A128: A9 00     LDA #$00
C - - - - 0x00213A 02:A12A: 85 8E     STA ram_008E
C - - - - 0x00213C 02:A12C: 85 90     STA ram_0090
C - - - - 0x00213E 02:A12E: 85 7B     STA ram_007B
C - - - - 0x002140 02:A130: A9 2E     LDA #$2E
C - - - - 0x002142 02:A132: 85 8F     STA ram_008F
C - - - - 0x002144 02:A134: 85 91     STA ram_0091
C - - - - 0x002146 02:A136: A9 09     LDA #$09
C - - - - 0x002148 02:A138: 20 20 89  JSR sub_0x000930
C - - - - 0x00214B 02:A13B: A9 6E     LDA #< tbl_BC6E_символы_пароля
C - - - - 0x00214D 02:A13D: 85 E6     STA ram_00E6
C - - - - 0x00214F 02:A13F: A9 BC     LDA #> tbl_BC6E_символы_пароля
C - - - - 0x002151 02:A141: 85 E7     STA ram_00E7
C - - - - 0x002153 02:A143: A9 C4     LDA #$C4
C - - - - 0x002155 02:A145: 85 E8     STA ram_00E8
C - - - - 0x002157 02:A147: A9 21     LDA #$21
C - - - - 0x002159 02:A149: 85 E9     STA ram_00E9
C - - - - 0x00215B 02:A14B: A9 00     LDA #$00
C - - - - 0x00215D 02:A14D: 85 EC     STA ram_00EC
C - - - - 0x00215F 02:A14F: A9 05     LDA #$05
C - - - - 0x002161 02:A151: 85 EB     STA ram_00EB
bra_A153:
C - - - - 0x002163 02:A153: A9 0D     LDA #$0D
C - - - - 0x002165 02:A155: 85 ED     STA ram_00ED
bra_A157:
C - - - - 0x002167 02:A157: A4 EC     LDY ram_00EC
C - - - - 0x002169 02:A159: B1 E6     LDA (ram_00E6),Y
C - - - - 0x00216B 02:A15B: A4 E8     LDY ram_00E8
C - - - - 0x00216D 02:A15D: A6 E9     LDX ram_00E9
C - - - - 0x00216F 02:A15F: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x002172 02:A162: E6 E8     INC ram_00E8
C - - - - 0x002174 02:A164: E6 E8     INC ram_00E8
C - - - - 0x002176 02:A166: E6 EC     INC ram_00EC
C - - - - 0x002178 02:A168: C6 ED     DEC ram_00ED
C - - - - 0x00217A 02:A16A: D0 EB     BNE bra_A157
C - - - - 0x00217C 02:A16C: A5 E8     LDA ram_00E8
C - - - - 0x00217E 02:A16E: 18        CLC
C - - - - 0x00217F 02:A16F: 69 26     ADC #$26
C - - - - 0x002181 02:A171: 85 E8     STA ram_00E8
C - - - - 0x002183 02:A173: A5 E9     LDA ram_00E9
C - - - - 0x002185 02:A175: 69 00     ADC #$00
C - - - - 0x002187 02:A177: 85 E9     STA ram_00E9
C - - - - 0x002189 02:A179: C6 EB     DEC ram_00EB
C - - - - 0x00218B 02:A17B: D0 D6     BNE bra_A153
C - - - - 0x00218D 02:A17D: A0 F8     LDY #$F8
bra_A17F:
C - - - - 0x00218F 02:A17F: B9 05 B2  LDA tbl_B205,Y
C - - - - 0x002192 02:A182: 99 60 04  STA $0460,Y
C - - - - 0x002195 02:A185: C8        INY
C - - - - 0x002196 02:A186: D0 F7     BNE bra_A17F
C - - - - 0x002198 02:A188: A0 96     LDY #< tbl_B296_экран_continue
C - - - - 0x00219A 02:A18A: A2 B2     LDX #> tbl_B296_экран_continue
C - - - - 0x00219C 02:A18C: 20 C0 B0  JSR sub_B0C0
C - - - - 0x00219F 02:A18F: A9 04     LDA #$04
C - - - - 0x0021A1 02:A191: A2 30     LDX #$30
C - - - - 0x0021A3 02:A193: 20 7A 99  JSR sub_0x00198A
C - - - - 0x0021A6 02:A196: A9 8A     LDA #$8A
C - - - - 0x0021A8 02:A198: 85 4C     STA ram_004C
C - - - - 0x0021AA 02:A19A: A9 33     LDA #$33
C - - - - 0x0021AC 02:A19C: 8D 00 07  STA ram_звук
loc_A19F:
C D - - - 0x0021AF 02:A19F: A9 00     LDA #$00
C - - - - 0x0021B1 02:A1A1: 85 ED     STA ram_00ED
C - - - - 0x0021B3 02:A1A3: 4C 01 A2  JMP loc_A201

bra_A1A6:
loc_A1A6:
C D - - - 0x0021B6 02:A1A6: A9 01     LDA #$01
C - - - - 0x0021B8 02:A1A8: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0021BB 02:A1AB: 20 D0 A3  JSR sub_A3D0
C - - - - 0x0021BE 02:A1AE: 24 1E     BIT ram_одноразовые
; con_btn_A
C - - - - 0x0021C0 02:A1B0: 10 03     BPL bra_A1B5
C - - - - 0x0021C2 02:A1B2: 4C 31 A2  JMP loc_A231
bra_A1B5:
C - - - - 0x0021C5 02:A1B5: 50 03     BVC bra_A1BA
C - - - - 0x0021C7 02:A1B7: 4C 60 A2  JMP loc_A260
bra_A1BA:
C - - - - 0x0021CA 02:A1BA: A5 1E     LDA ram_одноразовые
C - - - - 0x0021CC 02:A1BC: 29 20     AND #con_btn_Select
C - - - - 0x0021CE 02:A1BE: F0 03     BEQ bra_A1C3
C - - - - 0x0021D0 02:A1C0: 4C 52 A2  JMP loc_A252
bra_A1C3:
C - - - - 0x0021D3 02:A1C3: A5 1E     LDA ram_одноразовые
C - - - - 0x0021D5 02:A1C5: 29 10     AND #con_btn_Start
C - - - - 0x0021D7 02:A1C7: F0 03     BEQ bra_A1CC
C - - - - 0x0021D9 02:A1C9: 4C 6C A2  JMP loc_A26C
bra_A1CC:
C - - - - 0x0021DC 02:A1CC: A5 1C     LDA ram_удержанные
C - - - - 0x0021DE 02:A1CE: 29 0F     AND #con_btns_Dpad
C - - - - 0x0021E0 02:A1D0: F0 D4     BEQ bra_A1A6
C - - - - 0x0021E2 02:A1D2: A0 14     LDY #$14
loc_A1D4:
C D - - - 0x0021E4 02:A1D4: 84 EA     STY ram_00EA
C - - - - 0x0021E6 02:A1D6: A6 EC     LDX ram_00EC
C - - - - 0x0021E8 02:A1D8: BD E8 B1  LDA tbl_B1E8,X
C - - - - 0x0021EB 02:A1DB: A0 00     LDY #$00
C - - - - 0x0021ED 02:A1DD: 20 D8 A4  JSR sub_A4D8
C - - - - 0x0021F0 02:A1E0: A5 1C     LDA ram_удержанные
C - - - - 0x0021F2 02:A1E2: 29 0F     AND #con_btns_Dpad
C - - - - 0x0021F4 02:A1E4: AA        TAX
C - - - - 0x0021F5 02:A1E5: BD ED B2  LDA tbl_B2ED,X
C - - - - 0x0021F8 02:A1E8: 30 0D     BMI bra_A1F7
C - - - - 0x0021FA 02:A1EA: 18        CLC
C - - - - 0x0021FB 02:A1EB: 65 EC     ADC ram_00EC
C - - - - 0x0021FD 02:A1ED: C9 41     CMP #$41
C - - - - 0x0021FF 02:A1EF: 90 10     BCC bra_A201
C - - - - 0x002201 02:A1F1: 38        SEC
C - - - - 0x002202 02:A1F2: E9 41     SBC #$41
C - - - - 0x002204 02:A1F4: 4C 01 A2  JMP loc_A201
bra_A1F7:
C - - - - 0x002207 02:A1F7: 18        CLC
C - - - - 0x002208 02:A1F8: 65 EC     ADC ram_00EC
C - - - - 0x00220A 02:A1FA: C9 41     CMP #$41
C - - - - 0x00220C 02:A1FC: 90 03     BCC bra_A201
C - - - - 0x00220E 02:A1FE: 18        CLC
C - - - - 0x00220F 02:A1FF: 69 41     ADC #$41
bra_A201:
loc_A201:
C D - - - 0x002211 02:A201: 85 EC     STA ram_00EC
C - - - - 0x002213 02:A203: AA        TAX
C - - - - 0x002214 02:A204: BD E8 B1  LDA tbl_B1E8,X
C - - - - 0x002217 02:A207: 29 C0     AND #$C0
C - - - - 0x002219 02:A209: 0A        ASL
C - - - - 0x00221A 02:A20A: 2A        ROL
C - - - - 0x00221B 02:A20B: 2A        ROL
C - - - - 0x00221C 02:A20C: A8        TAY
C - - - - 0x00221D 02:A20D: B9 29 B2  LDA tbl_B229,Y
C - - - - 0x002220 02:A210: A8        TAY
C - - - - 0x002221 02:A211: BD E8 B1  LDA tbl_B1E8,X
C - - - - 0x002224 02:A214: 20 D8 A4  JSR sub_A4D8
bra_A217:
C - - - - 0x002227 02:A217: A9 01     LDA #$01
C - - - - 0x002229 02:A219: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x00222C 02:A21C: 20 D0 A3  JSR sub_A3D0
C - - - - 0x00222F 02:A21F: A5 1C     LDA ram_удержанные
C - - - - 0x002231 02:A221: 29 0F     AND #con_btns_Dpad
C - - - - 0x002233 02:A223: D0 03     BNE bra_A228
C - - - - 0x002235 02:A225: 4C A6 A1  JMP loc_A1A6
bra_A228:
C - - - - 0x002238 02:A228: C6 EA     DEC ram_00EA
C - - - - 0x00223A 02:A22A: D0 EB     BNE bra_A217
C - - - - 0x00223C 02:A22C: A0 08     LDY #$08
C - - - - 0x00223E 02:A22E: 4C D4 A1  JMP loc_A1D4
loc_A231:
C D - - - 0x002241 02:A231: A6 EC     LDX ram_00EC
C - - - - 0x002243 02:A233: BD 55 B2  LDA tbl_B255,X
C - - - - 0x002246 02:A236: C9 FF     CMP #$FF
C - - - - 0x002248 02:A238: F0 32     BEQ bra_A26C
C - - - - 0x00224A 02:A23A: 8A        TXA
C - - - - 0x00224B 02:A23B: A4 ED     LDY ram_00ED
C - - - - 0x00224D 02:A23D: 99 64 06  STA $0664,Y
C - - - - 0x002250 02:A240: BD 6E BC  LDA tbl_BC6E_символы_пароля,X
C - - - - 0x002253 02:A243: A6 ED     LDX ram_00ED
C - - - - 0x002255 02:A245: BC 41 B2  LDY tbl_B241,X
C - - - - 0x002258 02:A248: A2 21     LDX #$21
C - - - - 0x00225A 02:A24A: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x00225D 02:A24D: A9 12     LDA #$12
C - - - - 0x00225F 02:A24F: 8D 01 07  STA ram_звук + 1
loc_A252:
C D - - - 0x002262 02:A252: A6 ED     LDX ram_00ED
C - - - - 0x002264 02:A254: E8        INX
C - - - - 0x002265 02:A255: E0 12     CPX #$12
C - - - - 0x002267 02:A257: 90 02     BCC bra_A25B
C - - - - 0x002269 02:A259: A2 00     LDX #$00
bra_A25B:
C - - - - 0x00226B 02:A25B: 86 ED     STX ram_00ED
C - - - - 0x00226D 02:A25D: 4C A6 A1  JMP loc_A1A6
loc_A260:
C D - - - 0x002270 02:A260: A6 ED     LDX ram_00ED
C - - - - 0x002272 02:A262: CA        DEX
C - - - - 0x002273 02:A263: 10 02     BPL bra_A267
C - - - - 0x002275 02:A265: A2 11     LDX #$11
bra_A267:
C - - - - 0x002277 02:A267: 86 ED     STX ram_00ED
C - - - - 0x002279 02:A269: 4C A6 A1  JMP loc_A1A6
bra_A26C:
loc_A26C:
C D - - - 0x00227C 02:A26C: A6 EC     LDX ram_00EC
C - - - - 0x00227E 02:A26E: BD E8 B1  LDA tbl_B1E8,X
C - - - - 0x002281 02:A271: A0 00     LDY #$00
C - - - - 0x002283 02:A273: 20 D8 A4  JSR sub_A4D8
C - - - - 0x002286 02:A276: AE 73 06  LDX $0673
C - - - - 0x002289 02:A279: BD 55 B2  LDA tbl_B255,X
C - - - - 0x00228C 02:A27C: 29 30     AND #$30
C - - - - 0x00228E 02:A27E: 85 EB     STA ram_00EB
C - - - - 0x002290 02:A280: AE 75 06  LDX $0675
C - - - - 0x002293 02:A283: BD 55 B2  LDA tbl_B255,X
C - - - - 0x002296 02:A286: 29 0F     AND #$0F
C - - - - 0x002298 02:A288: 05 EB     ORA ram_00EB
C - - - - 0x00229A 02:A28A: 85 EB     STA ram_00EB
C - - - - 0x00229C 02:A28C: A2 00     LDX #$00
bra_A28E:
C - - - - 0x00229E 02:A28E: BD 64 06  LDA $0664,X
C - - - - 0x0022A1 02:A291: E0 0F     CPX #$0F
C - - - - 0x0022A3 02:A293: B0 07     BCS bra_A29C
C - - - - 0x0022A5 02:A295: E6 EB     INC ram_00EB
C - - - - 0x0022A7 02:A297: 38        SEC
C - - - - 0x0022A8 02:A298: E5 EB     SBC ram_00EB
C - - - - 0x0022AA 02:A29A: 29 3F     AND #$3F
bra_A29C:
C - - - - 0x0022AC 02:A29C: A8        TAY
C - - - - 0x0022AD 02:A29D: B9 55 B2  LDA tbl_B255,Y
C - - - - 0x0022B0 02:A2A0: 20 74 A4  JSR sub_A474
C - - - - 0x0022B3 02:A2A3: E8        INX
C - - - - 0x0022B4 02:A2A4: E0 12     CPX #$12
C - - - - 0x0022B6 02:A2A6: D0 E6     BNE bra_A28E
C - - - - 0x0022B8 02:A2A8: 20 02 A4  JSR sub_A402
C - - - - 0x0022BB 02:A2AB: AD 62 06  LDA $0662
C - - - - 0x0022BE 02:A2AE: C5 EC     CMP ram_00EC
C - - - - 0x0022C0 02:A2B0: D0 09     BNE bra_A2BB
- - - - - 0x0022C2 02:A2B2: AD 61 06  LDA $0661
- - - - - 0x0022C5 02:A2B5: 29 0F     AND #$0F
- - - - - 0x0022C7 02:A2B7: C5 ED     CMP ram_00ED
- - - - - 0x0022C9 02:A2B9: F0 22     BEQ bra_A2DD
bra_A2BB:
C - - - - 0x0022CB 02:A2BB: A9 F8     LDA #$F8
C - - - - 0x0022CD 02:A2BD: 8D 58 05  STA $0558
C - - - - 0x0022D0 02:A2C0: 8D 5C 05  STA $055C
C - - - - 0x0022D3 02:A2C3: A9 43     LDA #$43
C - - - - 0x0022D5 02:A2C5: 8D 00 07  STA ram_звук
; сработало при попытке ввода пароля
C - - - - 0x0022D8 02:A2C8: A9 01     LDA #$01
C - - - - 0x0022DA 02:A2CA: 85 7E     STA ram_007E
C - - - - 0x0022DC 02:A2CC: A9 78     LDA #$78
C - - - - 0x0022DE 02:A2CE: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0022E1 02:A2D1: A9 00     LDA #$00
C - - - - 0x0022E3 02:A2D3: 85 7E     STA ram_007E
C - - - - 0x0022E5 02:A2D5: A9 33     LDA #$33
C - - - - 0x0022E7 02:A2D7: 8D 00 07  STA ram_звук
C - - - - 0x0022EA 02:A2DA: 4C 9F A1  JMP loc_A19F
bra_A2DD:
; bzk тут дохерища мусора, надо проверить этот бранч и удалить все нахрена если можно
- - - - - 0x0022ED 02:A2DD: A9 00     LDA #$00
loc_A2DF:
- - - - - 0x0022EF 02:A2DF: 85 E6     STA ram_00E6
- - - - - 0x0022F1 02:A2E1: AA        TAX
- - - - - 0x0022F2 02:A2E2: BD 56 06  LDA $0656,X
- - - - - 0x0022F5 02:A2E5: 4A        LSR
- - - - - 0x0022F6 02:A2E6: 4A        LSR
- - - - - 0x0022F7 02:A2E7: 85 E7     STA ram_00E7
- - - - - 0x0022F9 02:A2E9: 20 45 B0  JSR sub_B045
- - - - - 0x0022FC 02:A2EC: 84 EC     STY ram_00EC
- - - - - 0x0022FE 02:A2EE: 86 ED     STX ram_00ED
- - - - - 0x002300 02:A2F0: A5 E7     LDA ram_00E7
- - - - - 0x002302 02:A2F2: C9 3F     CMP #$3F
- - - - - 0x002304 02:A2F4: B0 5C     BCS bra_A352
- - - - - 0x002306 02:A2F6: 18        CLC
- - - - - 0x002307 02:A2F7: 69 01     ADC #$01
- - - - - 0x002309 02:A2F9: 20 45 B0  JSR sub_B045
- - - - - 0x00230C 02:A2FC: 98        TYA
- - - - - 0x00230D 02:A2FD: 38        SEC
- - - - - 0x00230E 02:A2FE: E5 EC     SBC ram_00EC
- - - - - 0x002310 02:A300: 85 EA     STA ram_00EA
- - - - - 0x002312 02:A302: 8A        TXA
- - - - - 0x002313 02:A303: E5 ED     SBC ram_00ED
- - - - - 0x002315 02:A305: 85 EB     STA ram_00EB
- - - - - 0x002317 02:A307: 46 EB     LSR ram_00EB
- - - - - 0x002319 02:A309: 66 EA     ROR ram_00EA
- - - - - 0x00231B 02:A30B: 46 EB     LSR ram_00EB
- - - - - 0x00231D 02:A30D: 66 EA     ROR ram_00EA
- - - - - 0x00231F 02:A30F: A6 E6     LDX ram_00E6
- - - - - 0x002321 02:A311: BD 56 06  LDA $0656,X
- - - - - 0x002324 02:A314: A4 EA     LDY ram_00EA
- - - - - 0x002326 02:A316: A6 EB     LDX ram_00EB
- - - - - 0x002328 02:A318: 29 03     AND #$03
- - - - - 0x00232A 02:A31A: F0 1C     BEQ bra_A338
- - - - - 0x00232C 02:A31C: 06 EA     ASL ram_00EA
- - - - - 0x00232E 02:A31E: 26 EB     ROL ram_00EB
- - - - - 0x002330 02:A320: C9 02     CMP #$02
- - - - - 0x002332 02:A322: F0 09     BEQ bra_A32D
- - - - - 0x002334 02:A324: 90 12     BCC bra_A338
- - - - - 0x002336 02:A326: 06 EA     ASL ram_00EA
- - - - - 0x002338 02:A328: 26 EB     ROL ram_00EB
- - - - - 0x00233A 02:A32A: 4C 38 A3  JMP loc_A338
bra_A32D:
- - - - - 0x00233D 02:A32D: 98        TYA
- - - - - 0x00233E 02:A32E: 18        CLC
- - - - - 0x00233F 02:A32F: 65 EA     ADC ram_00EA
- - - - - 0x002341 02:A331: 85 EA     STA ram_00EA
- - - - - 0x002343 02:A333: 8A        TXA
- - - - - 0x002344 02:A334: 65 EB     ADC ram_00EB
- - - - - 0x002346 02:A336: 85 EB     STA ram_00EB
bra_A338:
loc_A338:
- - - - - 0x002348 02:A338: A5 EC     LDA ram_00EC
- - - - - 0x00234A 02:A33A: 18        CLC
- - - - - 0x00234B 02:A33B: 65 EA     ADC ram_00EA
- - - - - 0x00234D 02:A33D: 85 EC     STA ram_00EC
- - - - - 0x00234F 02:A33F: A5 ED     LDA ram_00ED
- - - - - 0x002351 02:A341: 65 EB     ADC ram_00EB
- - - - - 0x002353 02:A343: 85 ED     STA ram_00ED
- - - - - 0x002355 02:A345: A5 EC     LDA ram_00EC
- - - - - 0x002357 02:A347: 38        SEC
- - - - - 0x002358 02:A348: E9 01     SBC #$01
- - - - - 0x00235A 02:A34A: 85 EC     STA ram_00EC
- - - - - 0x00235C 02:A34C: A5 ED     LDA ram_00ED
- - - - - 0x00235E 02:A34E: E9 00     SBC #$00
- - - - - 0x002360 02:A350: 85 ED     STA ram_00ED
bra_A352:
- - - - - 0x002362 02:A352: A5 E6     LDA ram_00E6
- - - - - 0x002364 02:A354: 0A        ASL
- - - - - 0x002365 02:A355: AA        TAX
- - - - - 0x002366 02:A356: A5 EC     LDA ram_00EC
- - - - - 0x002368 02:A358: 9D 54 04  STA $0454,X
- - - - - 0x00236B 02:A35B: A5 ED     LDA ram_00ED
- - - - - 0x00236D 02:A35D: 9D 55 04  STA $0455,X
- - - - - 0x002370 02:A360: E6 E6     INC ram_00E6
- - - - - 0x002372 02:A362: A5 E6     LDA ram_00E6
- - - - - 0x002374 02:A364: C9 0A     CMP #$0A
- - - - - 0x002376 02:A366: F0 03     BEQ bra_A36B
- - - - - 0x002378 02:A368: 4C DF A2  JMP loc_A2DF
bra_A36B:
- - - - - 0x00237B 02:A36B: AD 60 06  LDA $0660
- - - - - 0x00237E 02:A36E: 4A        LSR
- - - - - 0x00237F 02:A36F: 4A        LSR
- - - - - 0x002380 02:A370: 85 26     STA ram_матч
- - - - - 0x002382 02:A372: AD 60 06  LDA $0660
- - - - - 0x002385 02:A375: 29 03     AND #$03
- - - - - 0x002387 02:A377: 4A        LSR
- - - - - 0x002388 02:A378: 8D 48 04  STA ram_флаг_циклона
- - - - - 0x00238B 02:A37B: A9 00     LDA #$00
- - - - - 0x00238D 02:A37D: 90 02     BCC bra_A381
- - - - - 0x00238F 02:A37F: A9 05     LDA #$05
bra_A381:
- - - - - 0x002391 02:A381: 8D 46 04  STA ram_флаг_драйв_оверхеда
- - - - - 0x002394 02:A384: AD 61 06  LDA $0661
- - - - - 0x002397 02:A387: 2A        ROL
- - - - - 0x002398 02:A388: A9 00     LDA #$00
- - - - - 0x00239A 02:A38A: 2A        ROL
- - - - - 0x00239B 02:A38B: 8D 4D 04  STA ram_флаг_мисуги_0_хп
- - - - - 0x00239E 02:A38E: A9 00     LDA #$00
- - - - - 0x0023A0 02:A390: 85 4C     STA ram_004C
- - - - - 0x0023A2 02:A392: A9 01     LDA #$01
- - - - - 0x0023A4 02:A394: 8D 00 07  STA ram_звук
- - - - - 0x0023A7 02:A397: 20 A0 9B  JSR sub_0x001BB0
- - - - - 0x0023AA 02:A39A: 60        RTS

.export sub_0x0023AB
sub_0x0023AB:
- - - - - 0x0023AB 02:A39B: A9 00     LDA #$00
- - - - - 0x0023AD 02:A39D: 85 EA     STA ram_00EA
- - - - - 0x0023AF 02:A39F: A9 0B     LDA #$0B
- - - - - 0x0023B1 02:A3A1: 20 B4 A3  JSR sub_A3B4
- - - - - 0x0023B4 02:A3A4: A5 26     LDA ram_матч
- - - - - 0x0023B6 02:A3A6: C9 10     CMP #$10
- - - - - 0x0023B8 02:A3A8: 90 09     BCC bra_A3B3
- - - - - 0x0023BA 02:A3AA: A9 16     LDA #$16
- - - - - 0x0023BC 02:A3AC: 85 EA     STA ram_00EA
- - - - - 0x0023BE 02:A3AE: A9 0A     LDA #$0A
- - - - - 0x0023C0 02:A3B0: 20 B4 A3  JSR sub_A3B4
bra_A3B3:
- - - - - 0x0023C3 02:A3B3: 60        RTS
sub_A3B4:
- - - - - 0x0023C4 02:A3B4: 85 EB     STA ram_00EB
bra_A3B6:
- - - - - 0x0023C6 02:A3B6: A5 EA     LDA ram_00EA
- - - - - 0x0023C8 02:A3B8: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
- - - - - 0x0023CB 02:A3BB: A0 00     LDY #con_игрок_номер
- - - - - 0x0023CD 02:A3BD: B1 34     LDA (ram_plr_data),Y
- - - - - 0x0023CF 02:A3BF: 20 13 B0  JSR sub_B013
- - - - - 0x0023D2 02:A3C2: 20 2E B0  JSR sub_B02E
- - - - - 0x0023D5 02:A3C5: A0 03     LDY #con_игрок_уровень
- - - - - 0x0023D7 02:A3C7: 91 34     STA (ram_plr_data),Y
- - - - - 0x0023D9 02:A3C9: E6 EA     INC ram_00EA
- - - - - 0x0023DB 02:A3CB: C6 EB     DEC ram_00EB
- - - - - 0x0023DD 02:A3CD: D0 E7     BNE bra_A3B6
- - - - - 0x0023DF 02:A3CF: 60        RTS
sub_A3D0:
C - - - - 0x0023E0 02:A3D0: A5 3A     LDA ram_003A
C - - - - 0x0023E2 02:A3D2: 29 04     AND #$04
C - - - - 0x0023E4 02:A3D4: F0 23     BEQ bra_A3F9
C - - - - 0x0023E6 02:A3D6: A6 ED     LDX ram_00ED
C - - - - 0x0023E8 02:A3D8: BD 2D B2  LDA tbl_B22D,X
C - - - - 0x0023EB 02:A3DB: 29 80     AND #$80
C - - - - 0x0023ED 02:A3DD: 4A        LSR
C - - - - 0x0023EE 02:A3DE: 38        SEC
C - - - - 0x0023EF 02:A3DF: 6A        ROR
C - - - - 0x0023F0 02:A3E0: 4A        LSR
C - - - - 0x0023F1 02:A3E1: 8D 58 05  STA $0558
C - - - - 0x0023F4 02:A3E4: 18        CLC
C - - - - 0x0023F5 02:A3E5: 69 08     ADC #$08
C - - - - 0x0023F7 02:A3E7: 8D 5C 05  STA $055C
C - - - - 0x0023FA 02:A3EA: BD 2D B2  LDA tbl_B22D,X
C - - - - 0x0023FD 02:A3ED: 29 7F     AND #$7F
C - - - - 0x0023FF 02:A3EF: 18        CLC
C - - - - 0x002400 02:A3F0: 69 50     ADC #$50
C - - - - 0x002402 02:A3F2: 8D 5B 05  STA $055B
C - - - - 0x002405 02:A3F5: 8D 5F 05  STA $055F
C - - - - 0x002408 02:A3F8: 60        RTS
bra_A3F9:
C - - - - 0x002409 02:A3F9: A9 F8     LDA #$F8
C - - - - 0x00240B 02:A3FB: 8D 58 05  STA $0558
C - - - - 0x00240E 02:A3FE: 8D 5C 05  STA $055C
C - - - - 0x002411 02:A401: 60        RTS

sub_A402:
C - - - - 0x002412 02:A402: AD 61 06  LDA $0661
C - - - - 0x002415 02:A405: 29 F0     AND #$F0
C - - - - 0x002417 02:A407: 18        CLC
C - - - - 0x002418 02:A408: 6D 63 06  ADC $0663
C - - - - 0x00241B 02:A40B: 85 EC     STA ram_00EC
C - - - - 0x00241D 02:A40D: A9 00     LDA #$00
C - - - - 0x00241F 02:A40F: 69 00     ADC #$00
C - - - - 0x002421 02:A411: 85 ED     STA ram_00ED
C - - - - 0x002423 02:A413: A2 00     LDX #$00
bra_A415:
C - - - - 0x002425 02:A415: BD 56 06  LDA $0656,X
C - - - - 0x002428 02:A418: 18        CLC
C - - - - 0x002429 02:A419: 65 EC     ADC ram_00EC
C - - - - 0x00242B 02:A41B: 85 EC     STA ram_00EC
C - - - - 0x00242D 02:A41D: A5 ED     LDA ram_00ED
C - - - - 0x00242F 02:A41F: 69 00     ADC #$00
C - - - - 0x002431 02:A421: 85 ED     STA ram_00ED
C - - - - 0x002433 02:A423: E8        INX
C - - - - 0x002434 02:A424: E0 0B     CPX #$0B
C - - - - 0x002436 02:A426: D0 ED     BNE bra_A415
C - - - - 0x002438 02:A428: A5 EC     LDA ram_00EC
C - - - - 0x00243A 02:A42A: 18        CLC
C - - - - 0x00243B 02:A42B: 69 09     ADC #$09
C - - - - 0x00243D 02:A42D: 85 EC     STA ram_00EC
C - - - - 0x00243F 02:A42F: A5 ED     LDA ram_00ED
C - - - - 0x002441 02:A431: 69 03     ADC #$03
C - - - - 0x002443 02:A433: 29 0F     AND #$0F
C - - - - 0x002445 02:A435: 85 ED     STA ram_00ED
C - - - - 0x002447 02:A437: 60        RTS

sub_A438:
C - - - - 0x002448 02:A438: BC 8A AD  LDY tbl_AD8A,X
C - - - - 0x00244B 02:A43B: 8A        TXA
C - - - - 0x00244C 02:A43C: 29 03     AND #$03
C - - - - 0x00244E 02:A43E: F0 2E     BEQ bra_A46E
C - - - - 0x002450 02:A440: C9 01     CMP #$01
C - - - - 0x002452 02:A442: F0 1A     BEQ bra_A45E
C - - - - 0x002454 02:A444: C9 02     CMP #$02
C - - - - 0x002456 02:A446: F0 06     BEQ bra_A44E
C - - - - 0x002458 02:A448: B9 56 06  LDA $0656,Y
C - - - - 0x00245B 02:A44B: 29 3F     AND #$3F
C - - - - 0x00245D 02:A44D: 60        RTS
bra_A44E:
C - - - - 0x00245E 02:A44E: B9 57 06  LDA $0657,Y
C - - - - 0x002461 02:A451: 0A        ASL
C - - - - 0x002462 02:A452: 85 EC     STA ram_00EC
C - - - - 0x002464 02:A454: B9 56 06  LDA $0656,Y
C - - - - 0x002467 02:A457: 29 0F     AND #$0F
C - - - - 0x002469 02:A459: 2A        ROL
C - - - - 0x00246A 02:A45A: 06 EC     ASL ram_00EC
C - - - - 0x00246C 02:A45C: 2A        ROL
C - - - - 0x00246D 02:A45D: 60        RTS
bra_A45E:
C - - - - 0x00246E 02:A45E: B9 56 06  LDA $0656,Y
C - - - - 0x002471 02:A461: 4A        LSR
C - - - - 0x002472 02:A462: 85 EC     STA ram_00EC
C - - - - 0x002474 02:A464: B9 57 06  LDA $0657,Y
C - - - - 0x002477 02:A467: 6A        ROR
C - - - - 0x002478 02:A468: 46 EC     LSR ram_00EC
C - - - - 0x00247A 02:A46A: 6A        ROR
C - - - - 0x00247B 02:A46B: 4A        LSR
C - - - - 0x00247C 02:A46C: 4A        LSR
C - - - - 0x00247D 02:A46D: 60        RTS
bra_A46E:
C - - - - 0x00247E 02:A46E: B9 56 06  LDA $0656,Y
C - - - - 0x002481 02:A471: 4A        LSR
C - - - - 0x002482 02:A472: 4A        LSR
C - - - - 0x002483 02:A473: 60        RTS

sub_A474:
C - - - - 0x002484 02:A474: 29 3F     AND #$3F
C - - - - 0x002486 02:A476: 85 EC     STA ram_00EC
C - - - - 0x002488 02:A478: BC 8A AD  LDY tbl_AD8A,X
C - - - - 0x00248B 02:A47B: 8A        TXA
C - - - - 0x00248C 02:A47C: 29 03     AND #$03
C - - - - 0x00248E 02:A47E: F0 49     BEQ bra_A4C9
C - - - - 0x002490 02:A480: C9 01     CMP #$01
C - - - - 0x002492 02:A482: F0 28     BEQ bra_A4AC
C - - - - 0x002494 02:A484: C9 02     CMP #$02
C - - - - 0x002496 02:A486: F0 0B     BEQ bra_A493
C - - - - 0x002498 02:A488: B9 56 06  LDA $0656,Y
C - - - - 0x00249B 02:A48B: 29 C0     AND #$C0
C - - - - 0x00249D 02:A48D: 05 EC     ORA ram_00EC
C - - - - 0x00249F 02:A48F: 99 56 06  STA $0656,Y
C - - - - 0x0024A2 02:A492: 60        RTS
bra_A493:
C - - - - 0x0024A3 02:A493: B9 57 06  LDA $0657,Y
C - - - - 0x0024A6 02:A496: 0A        ASL
C - - - - 0x0024A7 02:A497: 0A        ASL
C - - - - 0x0024A8 02:A498: 46 EC     LSR ram_00EC
C - - - - 0x0024AA 02:A49A: 6A        ROR
C - - - - 0x0024AB 02:A49B: 46 EC     LSR ram_00EC
C - - - - 0x0024AD 02:A49D: 6A        ROR
C - - - - 0x0024AE 02:A49E: 99 57 06  STA $0657,Y
C - - - - 0x0024B1 02:A4A1: B9 56 06  LDA $0656,Y
C - - - - 0x0024B4 02:A4A4: 29 F0     AND #$F0
C - - - - 0x0024B6 02:A4A6: 05 EC     ORA ram_00EC
C - - - - 0x0024B8 02:A4A8: 99 56 06  STA $0656,Y
C - - - - 0x0024BB 02:A4AB: 60        RTS
bra_A4AC:
C - - - - 0x0024BC 02:A4AC: 06 EC     ASL ram_00EC
C - - - - 0x0024BE 02:A4AE: 06 EC     ASL ram_00EC
C - - - - 0x0024C0 02:A4B0: B9 56 06  LDA $0656,Y
C - - - - 0x0024C3 02:A4B3: 4A        LSR
C - - - - 0x0024C4 02:A4B4: 4A        LSR
C - - - - 0x0024C5 02:A4B5: 06 EC     ASL ram_00EC
C - - - - 0x0024C7 02:A4B7: 2A        ROL
C - - - - 0x0024C8 02:A4B8: 06 EC     ASL ram_00EC
C - - - - 0x0024CA 02:A4BA: 2A        ROL
C - - - - 0x0024CB 02:A4BB: 99 56 06  STA $0656,Y
C - - - - 0x0024CE 02:A4BE: B9 57 06  LDA $0657,Y
C - - - - 0x0024D1 02:A4C1: 29 0F     AND #$0F
C - - - - 0x0024D3 02:A4C3: 05 EC     ORA ram_00EC
C - - - - 0x0024D5 02:A4C5: 99 57 06  STA $0657,Y
C - - - - 0x0024D8 02:A4C8: 60        RTS
bra_A4C9:
C - - - - 0x0024D9 02:A4C9: 06 EC     ASL ram_00EC
C - - - - 0x0024DB 02:A4CB: 06 EC     ASL ram_00EC
C - - - - 0x0024DD 02:A4CD: B9 56 06  LDA $0656,Y
C - - - - 0x0024E0 02:A4D0: 29 03     AND #$03
C - - - - 0x0024E2 02:A4D2: 05 EC     ORA ram_00EC
C - - - - 0x0024E4 02:A4D4: 99 56 06  STA $0656,Y
C - - - - 0x0024E7 02:A4D7: 60        RTS

sub_A4D8:
C - - - - 0x0024E8 02:A4D8: 84 E8     STY ram_00E8
C - - - - 0x0024EA 02:A4DA: 29 3F     AND #$3F
C - - - - 0x0024EC 02:A4DC: 18        CLC
C - - - - 0x0024ED 02:A4DD: 69 D8     ADC #$D8
C - - - - 0x0024EF 02:A4DF: A8        TAY
C - - - - 0x0024F0 02:A4E0: A2 23     LDX #$23
C - - - - 0x0024F2 02:A4E2: A9 01     LDA #$01
C - - - - 0x0024F4 02:A4E4: 85 E9     STA ram_00E9
C - - - - 0x0024F6 02:A4E6: A5 E8     LDA ram_00E8
C - - - - 0x0024F8 02:A4E8: 4C 95 98  JMP loc_0x0018A5

.export sub_0x0024FB
sub_0x0024FB:
C D - - - 0x0024FB 02:A4EB: A2 6A     LDX #$6A
C - - - - 0x0024FD 02:A4ED: A0 6B     LDY #$6B
C - - - - 0x0024FF 02:A4EF: 20 6F 9B  JSR sub_0x001B7F
C - - - - 0x002502 02:A4F2: A2 7A     LDX #$7A
C - - - - 0x002504 02:A4F4: A0 7B     LDY #$7B
C - - - - 0x002506 02:A4F6: 20 74 9B  JSR sub_0x001B84
C - - - - 0x002509 02:A4F9: 20 7F 9B  JSR sub_0x001B8F
C - - - - 0x00250C 02:A4FC: A0 05     LDY #< tbl_B305_экран_номера_матча
C - - - - 0x00250E 02:A4FE: A2 B3     LDX #> tbl_B305_экран_номера_матча
C - - - - 0x002510 02:A500: 20 C0 B0  JSR sub_B0C0
C - - - - 0x002513 02:A503: A9 00     LDA #$00
C - - - - 0x002515 02:A505: 85 44     STA ram_0044
C - - - - 0x002517 02:A507: 85 45     STA ram_0045
C - - - - 0x002519 02:A509: A0 CC     LDY #$CC
bra_A50B:
C - - - - 0x00251B 02:A50B: B9 71 B2  LDA tbl_B33D - $CC,Y
C - - - - 0x00251E 02:A50E: 99 9C 03  STA $039C,Y
C - - - - 0x002521 02:A511: C8        INY
C - - - - 0x002522 02:A512: D0 F7     BNE bra_A50B
C - - - - 0x002524 02:A514: A6 26     LDX ram_матч
C - - - - 0x002526 02:A516: BD D1 BC  LDA tbl_BCD1,X
C - - - - 0x002529 02:A519: 29 F0     AND #$F0
C - - - - 0x00252B 02:A51B: 4A        LSR
C - - - - 0x00252C 02:A51C: 4A        LSR
C - - - - 0x00252D 02:A51D: 4A        LSR
C - - - - 0x00252E 02:A51E: AA        TAX
C - - - - 0x00252F 02:A51F: BC F3 BC  LDY tbl_BCF3,X
C - - - - 0x002532 02:A522: BD F4 BC  LDA tbl_BCF3 + 1,X
C - - - - 0x002535 02:A525: AA        TAX
C - - - - 0x002536 02:A526: 20 27 9D  JSR sub_0x001D37_запись_в_буфер_с_учетом_кодировки_японских_символов
C - - - - 0x002539 02:A529: A6 26     LDX ram_матч
C - - - - 0x00253B 02:A52B: BD D1 BC  LDA tbl_BCD1,X
C - - - - 0x00253E 02:A52E: 29 0F     AND #$0F
C - - - - 0x002540 02:A530: 0A        ASL
C - - - - 0x002541 02:A531: AA        TAX
C - - - - 0x002542 02:A532: BC 64 BD  LDY tbl_BD64,X
C - - - - 0x002545 02:A535: BD 65 BD  LDA tbl_BD64 + 1,X
C - - - - 0x002548 02:A538: AA        TAX
C - - - - 0x002549 02:A539: A9 07     LDA #$07
C - - - - 0x00254B 02:A53B: 85 E8     STA ram_00E8
C - - - - 0x00254D 02:A53D: A9 22     LDA #$22
C - - - - 0x00254F 02:A53F: 85 E9     STA ram_00E9
C - - - - 0x002551 02:A541: 20 50 9D  JSR sub_0x001D60
C - - - - 0x002554 02:A544: A5 2A     LDA ram_твоя_команда
C - - - - 0x002556 02:A546: A0 D0     LDY #$D0
C - - - - 0x002558 02:A548: A2 21     LDX #$21
C - - - - 0x00255A 02:A54A: 20 3C A6  JSR sub_A63C
C - - - - 0x00255D 02:A54D: A9 24     LDA #$24
C - - - - 0x00255F 02:A54F: C5 2B     CMP ram_команда_соперника
C - - - - 0x002561 02:A551: A5 2B     LDA ram_команда_соперника
C - - - - 0x002563 02:A553: E9 00     SBC #$00
C - - - - 0x002565 02:A555: A0 50     LDY #$50
C - - - - 0x002567 02:A557: A2 22     LDX #$22
C - - - - 0x002569 02:A559: 20 3C A6  JSR sub_A63C
C - - - - 0x00256C 02:A55C: A9 00     LDA #$00
C - - - - 0x00256E 02:A55E: 85 7B     STA ram_007B
C - - - - 0x002570 02:A560: A9 00     LDA #$00
C - - - - 0x002572 02:A562: 85 8E     STA ram_008E
C - - - - 0x002574 02:A564: A9 2E     LDA #$2E
C - - - - 0x002576 02:A566: 85 8F     STA ram_008F
C - - - - 0x002578 02:A568: A9 04     LDA #$04
C - - - - 0x00257A 02:A56A: A2 37     LDX #$37
C - - - - 0x00257C 02:A56C: 20 7A 99  JSR sub_0x00198A
C - - - - 0x00257F 02:A56F: A2 F0     LDX #$F0
bra_A571:
C - - - - 0x002581 02:A571: A9 01     LDA #$01
C - - - - 0x002583 02:A573: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002586 02:A576: A5 1E     LDA ram_одноразовые
; пропуск VS экрана
; con_btn_A
C - - - - 0x002588 02:A578: 30 03     BMI bra_A57D
C - - - - 0x00258A 02:A57A: CA        DEX
C - - - - 0x00258B 02:A57B: D0 F4     BNE bra_A571
bra_A57D:
C - - - - 0x00258D 02:A57D: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x002590 02:A580: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x002593 02:A583: A9 00     LDA #$00
C - - - - 0x002595 02:A585: 85 ED     STA ram_00ED
C - - - - 0x002597 02:A587: 85 EC     STA ram_00EC
C - - - - 0x002599 02:A589: A9 0B     LDA #$0B
C - - - - 0x00259B 02:A58B: 20 11 A6  JSR sub_A611
C - - - - 0x00259E 02:A58E: A5 26     LDA ram_матч
C - - - - 0x0025A0 02:A590: C9 10     CMP #$10
C - - - - 0x0025A2 02:A592: 90 09     BCC bra_A59D
C - - - - 0x0025A4 02:A594: A9 16     LDA #$16
C - - - - 0x0025A6 02:A596: 85 ED     STA ram_00ED
C - - - - 0x0025A8 02:A598: A9 0A     LDA #$0A
C - - - - 0x0025AA 02:A59A: 20 11 A6  JSR sub_A611
bra_A59D:
C - - - - 0x0025AD 02:A59D: A5 E4     LDA ram_00E4
C - - - - 0x0025AF 02:A59F: C5 26     CMP ram_матч
C - - - - 0x0025B1 02:A5A1: B0 0E     BCS bra_A5B1
C - - - - 0x0025B3 02:A5A3: A5 26     LDA ram_матч
C - - - - 0x0025B5 02:A5A5: C9 06     CMP #$06
C - - - - 0x0025B7 02:A5A7: F0 67     BEQ bra_A610_выход
C - - - - 0x0025B9 02:A5A9: C9 0C     CMP #$0C
C - - - - 0x0025BB 02:A5AB: F0 63     BEQ bra_A610_выход
C - - - - 0x0025BD 02:A5AD: C9 10     CMP #$10
C - - - - 0x0025BF 02:A5AF: F0 5F     BEQ bra_A610_выход
bra_A5B1:
C - - - - 0x0025C1 02:A5B1: A5 EC     LDA ram_00EC
C - - - - 0x0025C3 02:A5B3: F0 5B     BEQ bra_A610_выход
C - - - - 0x0025C5 02:A5B5: A6 26     LDX ram_матч
C - - - - 0x0025C7 02:A5B7: BD F9 B3  LDA tbl_B3F9,X
C - - - - 0x0025CA 02:A5BA: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0025CD 02:A5BD: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x0025D0 02:A5C0: A9 00     LDA #$00
C - - - - 0x0025D2 02:A5C2: 85 ED     STA ram_00ED
C - - - - 0x0025D4 02:A5C4: 85 EA     STA ram_00EA
bra_A5C6:
loc_A5C6:
C D - - - 0x0025D6 02:A5C6: A6 ED     LDX ram_00ED
C - - - - 0x0025D8 02:A5C8: BD 56 06  LDA $0656,X
C - - - - 0x0025DB 02:A5CB: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - 0x0025DE 02:A5CE: A5 EA     LDA ram_00EA
C - - - - 0x0025E0 02:A5D0: 0A        ASL
C - - - - 0x0025E1 02:A5D1: AA        TAX
C - - - - 0x0025E2 02:A5D2: BD 58 BC  LDA tbl_BC58,X
C - - - - 0x0025E5 02:A5D5: 85 E8     STA ram_00E8
C - - - - 0x0025E7 02:A5D7: BD 59 BC  LDA tbl_BC58 + 1,X
C - - - - 0x0025EA 02:A5DA: 85 E9     STA ram_00E9
C - - - - 0x0025EC 02:A5DC: A4 30     LDY ram_0030
C - - - - 0x0025EE 02:A5DE: A6 31     LDX ram_0031
C - - - - 0x0025F0 02:A5E0: 20 50 9D  JSR sub_0x001D60
C - - - - 0x0025F3 02:A5E3: E6 EA     INC ram_00EA
C - - - - 0x0025F5 02:A5E5: E6 ED     INC ram_00ED
C - - - - 0x0025F7 02:A5E7: C6 EC     DEC ram_00EC
C - - - - 0x0025F9 02:A5E9: F0 1F     BEQ bra_A60A
C - - - - 0x0025FB 02:A5EB: A5 ED     LDA ram_00ED
C - - - - 0x0025FD 02:A5ED: C9 0B     CMP #$0B
C - - - - 0x0025FF 02:A5EF: D0 D5     BNE bra_A5C6
C - - - - 0x002601 02:A5F1: 20 A3 89  JSR sub_0x0009B3_ожидание_перехода_к_след_диалогу
C - - - - 0x002604 02:A5F4: A9 44     LDA #$44
C - - - - 0x002606 02:A5F6: 85 E6     STA ram_00E6
C - - - - 0x002608 02:A5F8: A9 22     LDA #$22
C - - - - 0x00260A 02:A5FA: 85 E7     STA ram_00E7
C - - - - 0x00260C 02:A5FC: A0 08     LDY #$08
C - - - - 0x00260E 02:A5FE: A2 18     LDX #$18
C - - - - 0x002610 02:A600: 20 E8 98  JSR sub_0x0018F8
C - - - - 0x002613 02:A603: A9 00     LDA #$00
C - - - - 0x002615 02:A605: 85 EA     STA ram_00EA
C - - - - 0x002617 02:A607: 4C C6 A5  JMP loc_A5C6
bra_A60A:
C - - - - 0x00261A 02:A60A: 20 A3 89  JSR sub_0x0009B3_ожидание_перехода_к_след_диалогу
C - - - - 0x00261D 02:A60D: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
bra_A610_выход:
C - - - - 0x002620 02:A610: 60        RTS

sub_A611:
C - - - - 0x002621 02:A611: 85 EB     STA ram_00EB
bra_A613:
C - - - - 0x002623 02:A613: A5 ED     LDA ram_00ED
C - - - - 0x002625 02:A615: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
C - - - - 0x002628 02:A618: A0 00     LDY #con_игрок_номер
C - - - - 0x00262A 02:A61A: B1 34     LDA (ram_plr_data),Y
C - - - - 0x00262C 02:A61C: 20 13 B0  JSR sub_B013
C - - - - 0x00262F 02:A61F: 20 2E B0  JSR sub_B02E
C - - - - 0x002632 02:A622: A0 03     LDY #con_игрок_уровень
C - - - - 0x002634 02:A624: D1 34     CMP (ram_plr_data),Y
C - - - - 0x002636 02:A626: F0 0D     BEQ bra_A635
C - - - - 0x002638 02:A628: 91 34     STA (ram_plr_data),Y
C - - - - 0x00263A 02:A62A: A0 00     LDY #con_игрок_номер
C - - - - 0x00263C 02:A62C: B1 34     LDA (ram_plr_data),Y
C - - - - 0x00263E 02:A62E: A6 EC     LDX ram_00EC
C - - - - 0x002640 02:A630: 9D 56 06  STA $0656,X
C - - - - 0x002643 02:A633: E6 EC     INC ram_00EC
bra_A635:
C - - - - 0x002645 02:A635: E6 ED     INC ram_00ED
C - - - - 0x002647 02:A637: C6 EB     DEC ram_00EB
C - - - - 0x002649 02:A639: D0 D8     BNE bra_A613
C - - - - 0x00264B 02:A63B: 60        RTS

sub_A63C:
C - - - - 0x00264C 02:A63C: 84 E8     STY ram_00E8
C - - - - 0x00264E 02:A63E: 86 E9     STX ram_00E9
C - - - - 0x002650 02:A640: 0A        ASL
C - - - - 0x002651 02:A641: AA        TAX
C - - - - 0x002652 02:A642: BC A8 BD  LDY tbl_BDA8,X
C - - - - 0x002655 02:A645: BD A9 BD  LDA tbl_BDA8 + 1,X
C - - - - 0x002658 02:A648: AA        TAX
C - - - - 0x002659 02:A649: 4C 50 9D  JMP loc_0x001D60

.export sub_0x00265C
sub_0x00265C:
loc_A64C:
C D - - - 0x00265C 02:A64C: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x00265F 02:A64F: 20 7F 9B  JSR sub_0x001B8F
loc_A652:
C D - - - 0x002662 02:A652: A6 26     LDX ram_матч
C - - - - 0x002664 02:A654: BD 93 B3  LDA tbl_B393,X
C - - - - 0x002667 02:A657: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x00266A 02:A65A: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x00266D 02:A65D: A9 01     LDA #$01
C - - - - 0x00266F 02:A65F: 20 20 89  JSR sub_0x000930
bra_A662:
C - - - - 0x002672 02:A662: A0 D0     LDY #< tbl_ADD0
C - - - - 0x002674 02:A664: A2 AD     LDX #> tbl_ADD0
C - - - - 0x002676 02:A666: 20 3A 9C  JSR sub_0x001C4A
C - - - - 0x002679 02:A669: 20 E8 9B  JSR sub_0x001BF8
C - - - - 0x00267C 02:A66C: A0 73     LDY #< tbl_A673_опции
C - - - - 0x00267E 02:A66E: A2 A6     LDX #> tbl_A673_опции
C - - - - 0x002680 02:A670: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок

tbl_A673_опции:
- D - I - 0x002683 02:A673: 7B A6     .word ofs_A67B_00_совет
- D - I - 0x002685 02:A675: 9F A6     .word ofs_A69F_01_пароль
- D - I - 0x002687 02:A677: BE A6     .word ofs_A6BE_02_команда
- D - I - 0x002689 02:A679: C4 A6     .word ofs_A6C4_03_матч

ofs_A67B_00_совет:
C - J - - 0x00268B 02:A67B: A6 26     LDA ram_матч
                                      CLC
                                      ADC #$23
C - - - - 0x002690 02:A680: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
bra_A683:
C - - - - 0x002693 02:A683: A9 01     LDA #$01
C - - - - 0x002695 02:A685: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002698 02:A688: A5 4D     LDA ram_004D
C - - - - 0x00269A 02:A68A: 05 4E     ORA ram_004E
C - - - - 0x00269C 02:A68C: F0 D4     BEQ bra_A662
C - - - - 0x00269E 02:A68E: A5 1E     LDA ram_одноразовые
C - - - - 0x0026A0 02:A690: 29 10     AND #con_btn_Start
C - - - - 0x0026A2 02:A692: F0 EF     BEQ bra_A683
C - - - - 0x0026A4 02:A694: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x0026A7 02:A697: A9 02     LDA #$02
C - - - - 0x0026A9 02:A699: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0026AC 02:A69C: 4C 52 A6  JMP loc_A652

ofs_A69F_01_пароль:
C - J - - 0x0026AF 02:A69F: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x0026B2 02:A6A2: A6 26     LDX ram_матч
C - - - - 0x0026B4 02:A6A4: BD D7 B3  LDA tbl_B3D7,X
C - - - - 0x0026B7 02:A6A7: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026BA 02:A6AA: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x0026BD 02:A6AD: 20 1E A0  JSR sub_A01E
C - - - - 0x0026C0 02:A6B0: A9 4E     LDA #$4E
C - - - - 0x0026C2 02:A6B2: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026C5 02:A6B5: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x0026C8 02:A6B8: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x0026CB 02:A6BB: 4C 4C A6  JMP loc_A64C

ofs_A6BE_02_команда:
C - J - - 0x0026CE 02:A6BE: 20 21 A7  JSR sub_A721_экран_с_опциями_команды
C - - - - 0x0026D1 02:A6C1: 4C 4C A6  JMP loc_A64C

ofs_A6C4_03_матч:
C - J - - 0x0026D4 02:A6C4: A6 26     LDX ram_матч
C - - - - 0x0026D6 02:A6C6: BD 1B B4  LDA tbl_B41B,X
C - - - - 0x0026D9 02:A6C9: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026DC 02:A6CC: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x0026DF 02:A6CF: 4C 15 A7  JMP loc_A715

.export loc_0x0026E2
loc_0x0026E2:
C D - - - 0x0026E2 02:A6D2: A9 55     LDA #$55
C - - - - 0x0026E4 02:A6D4: 8D 00 07  STA ram_звук
C - - - - 0x0026E7 02:A6D7: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x0026EA 02:A6DA: 20 7F 9B  JSR sub_0x001B8F
C - - - - 0x0026ED 02:A6DD: A6 26     LDX ram_матч
C - - - - 0x0026EF 02:A6DF: BD B5 B3  LDA tbl_B3B5,X
C - - - - 0x0026F2 02:A6E2: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026F5 02:A6E5: 4C F9 A6  JMP loc_A6F9

loc_A6E8:
C D - - - 0x0026F8 02:A6E8: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x0026FB 02:A6EB: 20 7F 9B  JSR sub_0x001B8F
C - - - - 0x0026FE 02:A6EE: A6 26     LDX ram_матч
C - - - - 0x002700 02:A6F0: BD B5 B3  LDA tbl_B3B5,X
C - - - - 0x002703 02:A6F3: 18        CLC
C - - - - 0x002704 02:A6F4: 69 01     ADC #$01
C - - - - 0x002706 02:A6F6: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
loc_A6F9:
C D - - - 0x002709 02:A6F9: 20 A9 82  JSR sub_0x0002B9
C - - - - 0x00270C 02:A6FC: A0 D6     LDY #< tbl_ADD6
C - - - - 0x00270E 02:A6FE: A2 AD     LDX #> tbl_ADD6
C - - - - 0x002710 02:A700: 20 3A 9C  JSR sub_0x001C4A
C - - - - 0x002713 02:A703: 20 E8 9B  JSR sub_0x001BF8
C - - - - 0x002716 02:A706: C9 02     CMP #$02
C - - - - 0x002718 02:A708: F0 06     BEQ bra_A710
C - - - - 0x00271A 02:A70A: 20 21 A7  JSR sub_A721_экран_с_опциями_команды
C - - - - 0x00271D 02:A70D: 4C E8 A6  JMP loc_A6E8
bra_A710:
C - - - - 0x002720 02:A710: A9 31     LDA #$31
C - - - - 0x002722 02:A712: 8D 00 07  STA ram_звук
loc_A715:
C D - - - 0x002725 02:A715: 20 A0 9B  JSR sub_0x001BB0
C - - - - 0x002728 02:A718: 60        RTS

sub_A719:
C - - - - 0x002729 02:A719: A0 83     LDY #< tbl_B583
C - - - - 0x00272B 02:A71B: A2 B5     LDX #> tbl_B583
C - - - - 0x00272D 02:A71D: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x002730 02:A720: 60        RTS

sub_A721_экран_с_опциями_команды:
loc_A721_экран_с_опциями_команды:
C D - - - 0x002731 02:A721: 20 A0 9B  JSR sub_0x001BB0
C - - - - 0x002734 02:A724: A2 1F     LDX #$1F
C - - - - 0x002736 02:A726: A0 2E     LDY #$2E
C - - - - 0x002738 02:A728: 20 6F 9B  JSR sub_0x001B7F
C - - - - 0x00273B 02:A72B: A9 00     LDA #$00
C - - - - 0x00273D 02:A72D: 85 7B     STA ram_007B
C - - - - 0x00273F 02:A72F: 20 20 89  JSR sub_0x000930
; выбор банка фона
                                      LDX ram_матч
									  LDA tbl_0x040000_банки_CHR_с_сокращенными_именами,X
C - - - - 0x002744 02:A734: 85 8E     STA ram_008E
C - - - - 0x002746 02:A736: A9 2E     LDA #$2E
C - - - - 0x002748 02:A738: 85 8F     STA ram_008F
C - - - - 0x00274A 02:A73A: A5 2A     LDA ram_твоя_команда
C - - - - 0x00274C 02:A73C: C9 02     CMP #$02
C - - - - 0x00274E 02:A73E: D0 03     BNE bra_A743_это_не_япония
C - - - - 0x002750 02:A740: 4C 4E A8  JMP loc_A84E_экран_опций_японии
bra_A743_это_не_япония:
C - - - - 0x002753 02:A743: A0 3D     LDY #< tbl_B43D_экран_с_опциями_без_запасных
C - - - - 0x002755 02:A745: A2 B4     LDX #> tbl_B43D_экран_с_опциями_без_запасных
C - - - - 0x002757 02:A747: 20 C0 B0  JSR sub_B0C0
C - - - - 0x00275A 02:A74A: A9 00     LDA #$00
C - - - - 0x00275C 02:A74C: 20 E9 AD  JSR sub_ADE9
; позиция имен основных игроков
C - - - - 0x00275F 02:A74F: A9 88     LDA #$85
C - - - - 0x002761 02:A751: 85 E6     STA ram_00E6
C - - - - 0x002763 02:A753: A9 20     LDA #$20
C - - - - 0x002765 02:A755: 85 E7     STA ram_00E7
C - - - - 0x002767 02:A757: 20 AC AE  JSR sub_AEAC
C - - - - 0x00276A 02:A75A: A9 00     LDA #$00
C - - - - 0x00276C 02:A75C: 20 01 AE  JSR sub_AE01
C - - - - 0x00276F 02:A75F: A0 FC     LDY #$FC
bra_A761_цикл:
C - - - - 0x002771 02:A761: B9 A2 AC  LDA tbl_AD9E - $FC,Y
C - - - - 0x002774 02:A764: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x002777 02:A767: C8        INY
C - - - - 0x002778 02:A768: D0 F7     BNE bra_A761_цикл
C - - - - 0x00277A 02:A76A: A9 03     LDA #$03
C - - - - 0x00277C 02:A76C: A2 39     LDX #$39
C - - - - 0x00277E 02:A76E: 20 7A 99  JSR sub_0x00198A
loc_A771:
C D - - - 0x002781 02:A771: A9 FC     LDA #$FC
C - - - - 0x002783 02:A773: A2 38     LDX #$38
C - - - - 0x002785 02:A775: A0 78     LDY #$78
C - - - - 0x002787 02:A777: 20 E3 9B  JSR sub_0x001BF3
C - - - - 0x00278A 02:A77A: A0 81     LDY #< tbl_A781_опции_сан_паулу_нанкацу
C - - - - 0x00278C 02:A77C: A2 A7     LDX #> tbl_A781_опции_сан_паулу_нанкацу
C - - - - 0x00278E 02:A77E: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок

tbl_A781_опции_сан_паулу_нанкацу:
- D - I - 0x002791 02:A781: 8B A7     .word ofs_A78B_опция_formation_сан_паулу_нанкацу
- D - I - 0x002793 02:A783: AC A7     .word ofs_A7AC_опция_defense_сан_паулу_нанкацу
- D - I - 0x002795 02:A785: C5 A7     .word ofs_A7C5_опция_lineup_сан_паулу_нанкацу
- D - I - 0x002797 02:A787: DD AA     .word ofs_AADD_экран_status
- D - I - 0x002799 02:A789: 73 AA     .word sub_0x001A00_выход_из_экрана

ofs_A78B_опция_formation_сан_паулу_нанкацу:
C - J - - 0x00279B 02:A78B: A0 EB     LDY #< tbl_B6EB_расстановка
C - - - - 0x00279D 02:A78D: A2 B6     LDX #> tbl_B6EB_расстановка
C - - - - 0x00279F 02:A78F: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x0027A2 02:A792: A2 90     LDX #$90
C - - - - 0x0027A4 02:A794: 20 1E AE  JSR sub_AE1E
C - - - - 0x0027A7 02:A797: A9 00     LDA #$00
C - - - - 0x0027A9 02:A799: 20 3A AE  JSR sub_AE3A
C - - - - 0x0027AC 02:A79C: A9 F8     LDA #$F8
C - - - - 0x0027AE 02:A79E: 8D 60 05  STA $0560
C - - - - 0x0027B1 02:A7A1: 20 77 AA  JSR sub_AA77
C - - - - 0x0027B4 02:A7A4: A9 38     LDA #$38
C - - - - 0x0027B6 02:A7A6: 8D 64 05  STA $0564
C - - - - 0x0027B9 02:A7A9: 4C 71 A7  JMP loc_A771

ofs_A7AC_опция_defense_сан_паулу_нанкацу:
C - J - - 0x0027BC 02:A7AC: A0 90     LDY #< tbl_B790_защита
C - - - - 0x0027BE 02:A7AE: A2 B7     LDX #> tbl_B790_защита
C - - - - 0x0027C0 02:A7B0: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x0027C3 02:A7B3: A0 A2     LDY #< tbl_ADA2
C - - - - 0x0027C5 02:A7B5: A2 AD     LDX #> tbl_ADA2
C - - - - 0x0027C7 02:A7B7: 20 77 AE  JSR sub_AE77
C - - - - 0x0027CA 02:A7BA: 20 77 AA  JSR sub_AA77
C - - - - 0x0027CD 02:A7BD: A9 48     LDA #$48
C - - - - 0x0027CF 02:A7BF: 8D 64 05  STA $0564
C - - - - 0x0027D2 02:A7C2: 4C 71 A7  JMP loc_A771

ofs_A7C5_опция_lineup_сан_паулу_нанкацу:
C - J - - 0x0027D5 02:A7C5: A9 58     LDA #$58
C - - - - 0x0027D7 02:A7C7: 8D 64 05  STA $0564
C - - - - 0x0027DA 02:A7CA: A9 94     LDA #$94
C - - - - 0x0027DC 02:A7CC: 85 4C     STA ram_004C
loc_A7CE:
C D - - - 0x0027DE 02:A7CE: A0 A8     LDY #< tbl_ADA8_курсор_замены_1
C - - - - 0x0027E0 02:A7D0: A2 AD     LDX #> tbl_ADA8_курсор_замены_1
C - - - - 0x0027E2 02:A7D2: 20 3A 9C  JSR sub_0x001C4A
bra_A7D5:
C - - - - 0x0027E5 02:A7D5: A9 01     LDA #$01
C - - - - 0x0027E7 02:A7D7: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0027EA 02:A7DA: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x0027ED 02:A7DD: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x0027EF 02:A7DF: 70 5B     BVS bra_A83C_отменить_выбор
; con_btn_A
C - - - - 0x0027F1 02:A7E1: 10 F2     BPL bra_A7D5
C - - - - 0x0027F3 02:A7E3: A9 01     LDA #$01
C - - - - 0x0027F5 02:A7E5: 8D 62 05  STA $0562
C - - - - 0x0027F8 02:A7E8: 20 D3 9C  JSR sub_0x001CE3
C - - - - 0x0027FB 02:A7EB: A0 AE     LDY #< tbl_ADAE_курсор_замены_2
C - - - - 0x0027FD 02:A7ED: A2 AD     LDX #> tbl_ADAE_курсор_замены_2
C - - - - 0x0027FF 02:A7EF: AD 60 05  LDA $0560
C - - - - 0x002802 02:A7F2: 20 3C 9C  JSR sub_0x001C4C
bra_A7F5_кнопки_не_нажаты:
C - - - - 0x002805 02:A7F5: A9 01     LDA #$01
C - - - - 0x002807 02:A7F7: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x00280A 02:A7FA: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x00280D 02:A7FD: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x00280F 02:A7FF: 70 3B     BVS bra_A83C_отменить_выбор
; con_btn_A
C - - - - 0x002811 02:A801: 10 F2     BPL bra_A7F5_кнопки_не_нажаты
C - - - - 0x002813 02:A803: AC 60 05  LDY $0560
C - - - - 0x002816 02:A806: A2 00     LDX #$00
C - - - - 0x002818 02:A808: 20 08 9D  JSR sub_0x001D18
C - - - - 0x00281B 02:A80B: A5 34     LDA ram_plr_data
C - - - - 0x00281D 02:A80D: 85 E6     STA ram_00E6
C - - - - 0x00281F 02:A80F: A5 35     LDA ram_plr_data + 1
C - - - - 0x002821 02:A811: 85 E7     STA ram_00E7
C - - - - 0x002823 02:A813: AC 5C 05  LDY $055C
C - - - - 0x002826 02:A816: A2 00     LDX #$00
C - - - - 0x002828 02:A818: 20 08 9D  JSR sub_0x001D18
C - - - - 0x00282B 02:A81B: 20 67 AF  JSR sub_AF67
; координата имен игроков после замены
C - - - - 0x00282E 02:A81E: A9 88     LDA #$85
C - - - - 0x002830 02:A820: 85 E6     STA ram_00E6
C - - - - 0x002832 02:A822: A9 20     LDA #$20
C - - - - 0x002834 02:A824: 85 E7     STA ram_00E7
C - - - - 0x002836 02:A826: 20 AC AE  JSR sub_AEAC
C - - - - 0x002839 02:A829: A9 F8     LDA #$F8
C - - - - 0x00283B 02:A82B: 8D 5C 05  STA $055C
C - - - - 0x00283E 02:A82E: 8D 60 05  STA $0560
C - - - - 0x002841 02:A831: A9 00     LDA #$00
C - - - - 0x002843 02:A833: 8D 62 05  STA $0562
C - - - - 0x002846 02:A836: 20 01 AE  JSR sub_AE01
C - - - - 0x002849 02:A839: 4C CE A7  JMP loc_A7CE
bra_A83C_отменить_выбор:
C - - - - 0x00284C 02:A83C: A9 00     LDA #$00
C - - - - 0x00284E 02:A83E: 85 4C     STA ram_004C
C - - - - 0x002850 02:A840: 20 01 AE  JSR sub_AE01
C - - - - 0x002853 02:A843: A9 F8     LDA #$F8
C - - - - 0x002855 02:A845: 8D 5C 05  STA $055C
C - - - - 0x002858 02:A848: 8D 60 05  STA $0560
C - - - - 0x00285B 02:A84B: 4C 71 A7  JMP loc_A771

loc_A84E_экран_опций_японии:
C D - - - 0x00285E 02:A84E: A0 51     LDY #< tbl_B451_экран_с_опциями_с_запасными
C - - - - 0x002860 02:A850: A2 B4     LDX #> tbl_B451_экран_с_опциями_с_запасными
C - - - - 0x002862 02:A852: 20 C0 B0  JSR sub_B0C0
C - - - - 0x002865 02:A855: A9 FC     LDA #$FC
C - - - - 0x002867 02:A857: 20 E9 AD  JSR sub_ADE9
; положение имен основных игроков
C - - - - 0x00286A 02:A85A: A9 85     LDA #$82
C - - - - 0x00286C 02:A85C: 85 E6     STA ram_00E6
C - - - - 0x00286E 02:A85E: A9 20     LDA #$20
C - - - - 0x002870 02:A860: 85 E7     STA ram_00E7
C - - - - 0x002872 02:A862: 20 AC AE  JSR sub_AEAC
; положение имен запасных игроков
C - - - - 0x002875 02:A865: A9 99     LDA #$97
C - - - - 0x002877 02:A867: 85 E6     STA ram_00E6
C - - - - 0x002879 02:A869: A9 20     LDA #$20
C - - - - 0x00287B 02:A86B: 85 E7     STA ram_00E7
C - - - - 0x00287D 02:A86D: 20 BE AE  JSR sub_AEBE
C - - - - 0x002880 02:A870: A9 D8     LDA #$D8
C - - - - 0x002882 02:A872: 20 01 AE  JSR sub_AE01
C - - - - 0x002885 02:A875: 20 A1 B0  JSR sub_B0A1
C - - - - 0x002888 02:A878: 20 7F AA  JSR sub_AA7F
C - - - - 0x00288B 02:A87B: A0 FC     LDY #$FC
bra_A87D:
C - - - - 0x00288D 02:A87D: B9 B8 AC  LDA tbl_ADB4 - $FC,Y
C - - - - 0x002890 02:A880: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x002893 02:A883: C8        INY
C - - - - 0x002894 02:A884: D0 F7     BNE bra_A87D
C - - - - 0x002896 02:A886: A9 03     LDA #$03
C - - - - 0x002898 02:A888: A2 39     LDX #$39
C - - - - 0x00289A 02:A88A: 20 7A 99  JSR sub_0x00198A
loc_A88D:
C D - - - 0x00289D 02:A88D: A9 FC     LDA #$FC
C - - - - 0x00289F 02:A88F: A2 38     LDX #$38
C - - - - 0x0028A1 02:A891: A0 78     LDY #$78
C - - - - 0x0028A3 02:A893: 20 E3 9B  JSR sub_0x001BF3
C - - - - 0x0028A6 02:A896: A0 9D     LDY #< tbl_A89D_опции_японии
C - - - - 0x0028A8 02:A898: A2 A8     LDX #> tbl_A89D_опции_японии
C - - - - 0x0028AA 02:A89A: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок

tbl_A89D_опции_японии:
- D - I - 0x0028AD 02:A89D: A7 A8     .word ofs_A8A7_опция_formation_япония
- D - I - 0x0028AF 02:A89F: CA A8     .word ofs_A8CA_опция_defense_япония
- D - I - 0x0028B1 02:A8A1: E5 A8     .word ofs_A8E5_опция_lineup_япония
- D - I - 0x0028B3 02:A8A3: DD AA     .word ofs_AADD_экран_status
- D - I - 0x0028B5 02:A8A5: 73 AA     .word sub_0x001A00_выход_из_экрана

ofs_A8A7_опция_formation_япония:
C - J - - 0x0028B7 02:A8A7: A0 EB     LDY #< tbl_B6EB_расстановка
C - - - - 0x0028B9 02:A8A9: A2 B6     LDX #> tbl_B6EB_расстановка
C - - - - 0x0028BB 02:A8AB: A9 FB     LDA #$FB
C - - - - 0x0028BD 02:A8AD: 20 AD 97  JSR sub_0x0017BD
C - - - - 0x0028C0 02:A8B0: A2 68     LDX #$68
C - - - - 0x0028C2 02:A8B2: 20 1E AE  JSR sub_AE1E
C - - - - 0x0028C5 02:A8B5: A9 D8     LDA #$D8
C - - - - 0x0028C7 02:A8B7: 20 3A AE  JSR sub_AE3A
C - - - - 0x0028CA 02:A8BA: A9 F8     LDA #$F8
C - - - - 0x0028CC 02:A8BC: 8D 60 05  STA $0560
C - - - - 0x0028CF 02:A8BF: 20 19 A7  JSR sub_A719
C - - - - 0x0028D2 02:A8C2: A9 38     LDA #$38
C - - - - 0x0028D4 02:A8C4: 8D 64 05  STA $0564
C - - - - 0x0028D7 02:A8C7: 4C 8D A8  JMP loc_A88D

ofs_A8CA_опция_defense_япония:
C - J - - 0x0028DA 02:A8CA: A0 90     LDY #< tbl_B790_защита
C - - - - 0x0028DC 02:A8CC: A2 B7     LDX #> tbl_B790_защита
C - - - - 0x0028DE 02:A8CE: A9 FB     LDA #$FB
C - - - - 0x0028E0 02:A8D0: 20 AD 97  JSR sub_0x0017BD
C - - - - 0x0028E3 02:A8D3: A0 B8     LDY #< tbl_ADB8_курсор_защиты
C - - - - 0x0028E5 02:A8D5: A2 AD     LDX #> tbl_ADB8_курсор_защиты
C - - - - 0x0028E7 02:A8D7: 20 77 AE  JSR sub_AE77
C - - - - 0x0028EA 02:A8DA: 20 19 A7  JSR sub_A719
C - - - - 0x0028ED 02:A8DD: A9 48     LDA #$48
C - - - - 0x0028EF 02:A8DF: 8D 64 05  STA $0564
C - - - - 0x0028F2 02:A8E2: 4C 8D A8  JMP loc_A88D

ofs_A8E5_опция_lineup_япония:
C - J - - 0x0028F5 02:A8E5: A9 58     LDA #$58
C - - - - 0x0028F7 02:A8E7: 8D 64 05  STA $0564
C - - - - 0x0028FA 02:A8EA: A9 94     LDA #$94
C - - - - 0x0028FC 02:A8EC: 85 4C     STA ram_004C
loc_A8EE:
C D - - - 0x0028FE 02:A8EE: A0 BE     LDY #< tbl_ADBE_курсор_замены_игроков_японии_1
C - - - - 0x002900 02:A8F0: A2 AD     LDX #> tbl_ADBE_курсор_замены_игроков_японии_1
C - - - - 0x002902 02:A8F2: 20 3A 9C  JSR sub_0x001C4A
C - - - - 0x002905 02:A8F5: AD 50 04  LDA $0450
C - - - - 0x002908 02:A8F8: C9 03     CMP #$03
C - - - - 0x00290A 02:A8FA: 90 04     BCC bra_A900
C - - - - 0x00290C 02:A8FC: A9 B8     LDA #$B8
C - - - - 0x00290E 02:A8FE: 85 E6     STA ram_00E6
bra_A900:
C - - - - 0x002910 02:A900: A9 01     LDA #$01
C - - - - 0x002912 02:A902: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002915 02:A905: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x002918 02:A908: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x00291A 02:A90A: 50 03     BVC bra_A90F
C - - - - 0x00291C 02:A90C: 4C 5F AA  JMP loc_AA5F
bra_A90F:
C - - - - 0x00291F 02:A90F: 10 EF     BPL bra_A900
C - - - - 0x002921 02:A911: A9 01     LDA #$01
C - - - - 0x002923 02:A913: 8D 62 05  STA $0562
C - - - - 0x002926 02:A916: AD 60 05  LDA $0560
C - - - - 0x002929 02:A919: C9 C8     CMP #$C8
C - - - - 0x00292B 02:A91B: 90 03     BCC bra_A920
C - - - - 0x00292D 02:A91D: 4C C0 A9  JMP loc_A9C0
bra_A920:
C - - - - 0x002930 02:A920: A9 01     LDA #$01
C - - - - 0x002932 02:A922: 20 D3 9C  JSR sub_0x001CE3
C - - - - 0x002935 02:A925: A0 C4     LDY #< tbl_ADC4_курсор_замены_игроков_японии_2
C - - - - 0x002937 02:A927: A2 AD     LDX #> tbl_ADC4_курсор_замены_игроков_японии_2
C - - - - 0x002939 02:A929: AD 60 05  LDA $0560
C - - - - 0x00293C 02:A92C: 20 3C 9C  JSR sub_0x001C4C
C - - - - 0x00293F 02:A92F: AD 50 04  LDA $0450
C - - - - 0x002942 02:A932: C9 03     CMP #$03
C - - - - 0x002944 02:A934: B0 0E     BCS bra_A944
C - - - - 0x002946 02:A936: A9 B8     LDA #$B8
C - - - - 0x002948 02:A938: 85 E6     STA ram_00E6
C - - - - 0x00294A 02:A93A: A5 E9     LDA ram_00E9
C - - - - 0x00294C 02:A93C: 85 EB     STA ram_00EB
C - - - - 0x00294E 02:A93E: 85 EA     STA ram_00EA
C - - - - 0x002950 02:A940: A9 FF     LDA #$FF
C - - - - 0x002952 02:A942: 85 E9     STA ram_00E9
bra_A944:
C - - - - 0x002954 02:A944: A9 01     LDA #$01
C - - - - 0x002956 02:A946: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002959 02:A949: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x00295C 02:A94C: AD 50 04  LDA $0450
C - - - - 0x00295F 02:A94F: C9 03     CMP #$03
C - - - - 0x002961 02:A951: B0 61     BCS bra_A9B4
C - - - - 0x002963 02:A953: A5 1E     LDA ram_одноразовые
C - - - - 0x002965 02:A955: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - 0x002967 02:A957: F0 5B     BEQ bra_A9B4
C - - - - 0x002969 02:A959: 4A        LSR
C - - - - 0x00296A 02:A95A: B0 1B     BCS bra_A977
; X курсора при замене игроков японцев слева
C - - - - 0x00296C 02:A95C: A9 20     LDA #$08
C - - - - 0x00296E 02:A95E: 8D 5F 05  STA $055F
C - - - - 0x002971 02:A961: A9 B8     LDA #$B8
C - - - - 0x002973 02:A963: 85 E6     STA ram_00E6
C - - - - 0x002975 02:A965: A5 EA     LDA ram_00EA
C - - - - 0x002977 02:A967: 85 EB     STA ram_00EB
C - - - - 0x002979 02:A969: CD 5C 05  CMP $055C
C - - - - 0x00297C 02:A96C: D0 46     BNE bra_A9B4
- - - - - 0x00297E 02:A96E: 18        CLC
- - - - - 0x00297F 02:A96F: 69 10     ADC #$10
- - - - - 0x002981 02:A971: 8D 5C 05  STA $055C
- - - - - 0x002984 02:A974: 4C B4 A9  JMP loc_A9B4
bra_A977:
C - - - - 0x002987 02:A977: A9 00     LDA #$00
C - - - - 0x002989 02:A979: 20 D3 9C  JSR sub_0x001CE3
; X курсора при замене игроков японцев справа
C - - - - 0x00298C 02:A97C: A9 C0     LDA #$B0
C - - - - 0x00298E 02:A97E: 8D 5F 05  STA $055F
C - - - - 0x002991 02:A981: A9 00     LDA #$00
C - - - - 0x002993 02:A983: 85 EB     STA ram_00EB
C - - - - 0x002995 02:A985: A9 98     LDA #$98
C - - - - 0x002997 02:A987: 85 E6     STA ram_00E6
C - - - - 0x002999 02:A989: AD 5C 05  LDA $055C
C - - - - 0x00299C 02:A98C: C9 A8     CMP #$A8
C - - - - 0x00299E 02:A98E: 90 05     BCC bra_A995
C - - - - 0x0029A0 02:A990: A9 98     LDA #$98
C - - - - 0x0029A2 02:A992: 8D 5C 05  STA $055C
bra_A995:
loc_A995:
C D - - - 0x0029A5 02:A995: AC 5C 05  LDY $055C
C - - - - 0x0029A8 02:A998: AE 5F 05  LDX $055F
C - - - - 0x0029AB 02:A99B: 20 BF AA  JSR sub_AABF
C - - - - 0x0029AE 02:A99E: 90 12     BCC bra_A9B2
C - - - - 0x0029B0 02:A9A0: AD 5C 05  LDA $055C
C - - - - 0x0029B3 02:A9A3: 18        CLC
C - - - - 0x0029B4 02:A9A4: 69 10     ADC #$10
C - - - - 0x0029B6 02:A9A6: C9 A8     CMP #$A8
C - - - - 0x0029B8 02:A9A8: 90 02     BCC bra_A9AC
- - - - - 0x0029BA 02:A9AA: A9 28     LDA #$28
bra_A9AC:
C - - - - 0x0029BC 02:A9AC: 8D 5C 05  STA $055C
C - - - - 0x0029BF 02:A9AF: 4C 95 A9  JMP loc_A995
bra_A9B2:
C - - - - 0x0029C2 02:A9B2: A0 F4     LDY #$F4
bra_A9B4:
loc_A9B4:
C - - - - 0x0029C4 02:A9B4: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x0029C6 02:A9B6: 50 03     BVC bra_A9BB
C - - - - 0x0029C8 02:A9B8: 4C 5F AA  JMP loc_AA5F
bra_A9BB:
C - - - - 0x0029CB 02:A9BB: 10 87     BPL bra_A944
C - - - - 0x0029CD 02:A9BD: 4C FB A9  JMP loc_A9FB
loc_A9C0:
C D - - - 0x0029D0 02:A9C0: A0 CA     LDY #< tbl_ADCA_курсор_замены_киперов_японии
C - - - - 0x0029D2 02:A9C2: A2 AD     LDX #> tbl_ADCA_курсор_замены_киперов_японии
C - - - - 0x0029D4 02:A9C4: 20 3A 9C  JSR sub_0x001C4A
C - - - - 0x0029D7 02:A9C7: A9 FF     LDA #$FF
C - - - - 0x0029D9 02:A9C9: 85 E9     STA ram_00E9
C - - - - 0x0029DB 02:A9CB: A0 A8     LDY #$A8
C - - - - 0x0029DD 02:A9CD: A2 C0     LDX #$C0
C - - - - 0x0029DF 02:A9CF: 20 BF AA  JSR sub_AABF
C - - - - 0x0029E2 02:A9D2: 90 0E     BCC bra_A9E2
- - - - - 0x0029E4 02:A9D4: A9 C8     LDA #$C8
- - - - - 0x0029E6 02:A9D6: 8D 5C 05  STA $055C
- - - - - 0x0029E9 02:A9D9: A0 B8     LDY #$B8
- - - - - 0x0029EB 02:A9DB: A2 C0     LDX #$C0
- - - - - 0x0029ED 02:A9DD: 20 BF AA  JSR sub_AABF
- - - - - 0x0029F0 02:A9E0: B0 7D     BCS bra_AA5F
bra_A9E2:
C - - - - 0x0029F2 02:A9E2: A0 F4     LDY #$F4
bra_A9E4:
C - - - - 0x0029F4 02:A9E4: A9 01     LDA #$01
C - - - - 0x0029F6 02:A9E6: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x0029F9 02:A9E9: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x0029FC 02:A9EC: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x0029FE 02:A9EE: 70 6F     BVS bra_AA5F
; con_btn_A
C - - - - 0x002A00 02:A9F0: 10 F2     BPL bra_A9E4
C - - - - 0x002A02 02:A9F2: AD 5C 05  LDA $055C
C - - - - 0x002A05 02:A9F5: 38        SEC
C - - - - 0x002A06 02:A9F6: E9 10     SBC #$10
C - - - - 0x002A08 02:A9F8: 8D 5C 05  STA $055C
loc_A9FB:
C D - - - 0x002A0B 02:A9FB: AC 60 05  LDY $0560
C - - - - 0x002A0E 02:A9FE: AE 63 05  LDX $0563
C - - - - 0x002A11 02:AA01: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002A14 02:AA04: A5 34     LDA ram_plr_data
C - - - - 0x002A16 02:AA06: 85 E6     STA ram_00E6
C - - - - 0x002A18 02:AA08: A5 35     LDA ram_plr_data + 1
C - - - - 0x002A1A 02:AA0A: 85 E7     STA ram_00E7
C - - - - 0x002A1C 02:AA0C: AC 5C 05  LDY $055C
C - - - - 0x002A1F 02:AA0F: AE 5F 05  LDX $055F
C - - - - 0x002A22 02:AA12: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002A25 02:AA15: 20 67 AF  JSR sub_AF67
C - - - - 0x002A28 02:AA18: A9 F8     LDA #$F8
C - - - - 0x002A2A 02:AA1A: 8D 5C 05  STA $055C
C - - - - 0x002A2D 02:AA1D: 8D 60 05  STA $0560
C - - - - 0x002A30 02:AA20: AD 5F 05  LDA $055F
C - - - - 0x002A33 02:AA23: 10 17     BPL bra_AA3C
C - - - - 0x002A35 02:AA25: A5 27     LDA ram_тайм
C - - - - 0x002A37 02:AA27: F0 13     BEQ bra_AA3C
C - - - - 0x002A39 02:AA29: EE 50 04  INC $0450
C - - - - 0x002A3C 02:AA2C: A0 00     LDY #con_игрок_номер
C - - - - 0x002A3E 02:AA2E: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002A40 02:AA30: AE 50 04  LDX $0450
C - - - - 0x002A43 02:AA33: 9D 50 04  STA $0450,X
C - - - - 0x002A46 02:AA36: 20 A1 B0  JSR sub_B0A1
C - - - - 0x002A49 02:AA39: 20 7F AA  JSR sub_AA7F
bra_AA3C:
; координата имен основных игроков после замены
C - - - - 0x002A4C 02:AA3C: A9 85     LDA #$82
C - - - - 0x002A4E 02:AA3E: 85 E6     STA ram_00E6
C - - - - 0x002A50 02:AA40: A9 20     LDA #$20
C - - - - 0x002A52 02:AA42: 85 E7     STA ram_00E7
C - - - - 0x002A54 02:AA44: 20 AC AE  JSR sub_AEAC
; координата имен запасных игроков после замены
C - - - - 0x002A57 02:AA47: A9 99     LDA #$97
C - - - - 0x002A59 02:AA49: 85 E6     STA ram_00E6
C - - - - 0x002A5B 02:AA4B: A9 20     LDA #$20
C - - - - 0x002A5D 02:AA4D: 85 E7     STA ram_00E7
C - - - - 0x002A5F 02:AA4F: 20 BE AE  JSR sub_AEBE
C - - - - 0x002A62 02:AA52: A9 00     LDA #$00
C - - - - 0x002A64 02:AA54: 8D 62 05  STA $0562
C - - - - 0x002A67 02:AA57: A9 D8     LDA #$D8
C - - - - 0x002A69 02:AA59: 20 01 AE  JSR sub_AE01
C - - - - 0x002A6C 02:AA5C: 4C EE A8  JMP loc_A8EE
bra_AA5F:
loc_AA5F:
C D - - - 0x002A6F 02:AA5F: A9 00     LDA #$00
C - - - - 0x002A71 02:AA61: 85 4C     STA ram_004C
C - - - - 0x002A73 02:AA63: A9 D8     LDA #$D8
C - - - - 0x002A75 02:AA65: 20 01 AE  JSR sub_AE01
C - - - - 0x002A78 02:AA68: A9 F8     LDA #$F8
C - - - - 0x002A7A 02:AA6A: 8D 5C 05  STA $055C
C - - - - 0x002A7D 02:AA6D: 8D 60 05  STA $0560
C - - - - 0x002A80 02:AA70: 4C 8D A8  JMP loc_A88D

sub_AA77:
; повторно отрисовать опции в меню команды после подтверждения/отмены выбора опции во внутреннем окне
C - - - - 0x002A87 02:AA77: A0 B3     LDY #< tbl_B4B3
C - - - - 0x002A89 02:AA79: A2 B4     LDX #> tbl_B4B3
C - - - - 0x002A8B 02:AA7B: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x002A8E 02:AA7E: 60        RTS

sub_AA7F:
C - - - - 0x002A8F 02:AA7F: AD 50 04  LDA $0450
C - - - - 0x002A92 02:AA82: F0 3A     BEQ bra_AABE_выход
C - - - - 0x002A94 02:AA84: A9 28     LDA #$28
C - - - - 0x002A96 02:AA86: 85 E7     STA ram_00E7
bra_AA88:
C - - - - 0x002A98 02:AA88: A4 E7     LDY ram_00E7
C - - - - 0x002A9A 02:AA8A: A2 C0     LDX #$C0
C - - - - 0x002A9C 02:AA8C: 20 BF AA  JSR sub_AABF
C - - - - 0x002A9F 02:AA8F: 90 22     BCC bra_AAB3
C - - - - 0x002AA1 02:AA91: 8A        TXA
C - - - - 0x002AA2 02:AA92: 0A        ASL
C - - - - 0x002AA3 02:AA93: 0A        ASL
C - - - - 0x002AA4 02:AA94: 18        CLC
C - - - - 0x002AA5 02:AA95: 69 E0     ADC #$E0
C - - - - 0x002AA7 02:AA97: AA        TAX
C - - - - 0x002AA8 02:AA98: A5 E7     LDA ram_00E7
C - - - - 0x002AAA 02:AA9A: C9 A8     CMP #$A8
C - - - - 0x002AAC 02:AA9C: 90 03     BCC bra_AAA1
C - - - - 0x002AAE 02:AA9E: 18        CLC
C - - - - 0x002AAF 02:AA9F: 69 10     ADC #$10
bra_AAA1:
C - - - - 0x002AB1 02:AAA1: 9D 68 04  STA ram_копия_спрайт_Y,X
C - - - - 0x002AB4 02:AAA4: A9 C0     LDA #$C0
C - - - - 0x002AB6 02:AAA6: 9D 6B 04  STA ram_копия_спрайт_X,X
C - - - - 0x002AB9 02:AAA9: A9 72     LDA #$72
C - - - - 0x002ABB 02:AAAB: 9D 69 04  STA ram_копия_спрайт_тайл,X
C - - - - 0x002ABE 02:AAAE: A9 00     LDA #$00
C - - - - 0x002AC0 02:AAB0: 9D 6A 04  STA ram_копия_спрайт_атрибут,X
bra_AAB3:
C - - - - 0x002AC3 02:AAB3: A5 E7     LDA ram_00E7
C - - - - 0x002AC5 02:AAB5: 18        CLC
C - - - - 0x002AC6 02:AAB6: 69 10     ADC #$10
C - - - - 0x002AC8 02:AAB8: 85 E7     STA ram_00E7
C - - - - 0x002ACA 02:AABA: C9 B9     CMP #$B9
C - - - - 0x002ACC 02:AABC: 90 CA     BCC bra_AA88
bra_AABE_выход:
C - - - - 0x002ACE 02:AABE: 60        RTS

sub_AABF:
C - - - - 0x002ACF 02:AABF: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002AD2 02:AAC2: A2 00     LDX #$00
C - - - - 0x002AD4 02:AAC4: A0 00     LDY #con_игрок_номер
C - - - - 0x002AD6 02:AAC6: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002AD8 02:AAC8: CD 51 04  CMP $0451
C - - - - 0x002ADB 02:AACB: F0 0C     BEQ bra_AAD9
C - - - - 0x002ADD 02:AACD: E8        INX
C - - - - 0x002ADE 02:AACE: CD 52 04  CMP $0452
C - - - - 0x002AE1 02:AAD1: F0 06     BEQ bra_AAD9
C - - - - 0x002AE3 02:AAD3: E8        INX
C - - - - 0x002AE4 02:AAD4: CD 53 04  CMP $0453
C - - - - 0x002AE7 02:AAD7: D0 02     BNE bra_AADB
bra_AAD9:
C - - - - 0x002AE9 02:AAD9: 38        SEC
C - - - - 0x002AEA 02:AADA: 60        RTS
bra_AADB:
C - - - - 0x002AEB 02:AADB: 18        CLC
C - - - - 0x002AEC 02:AADC: 60        RTS

ofs_AADD_экран_status:
C - J - - 0x002AED 02:AADD: A9 28     LDA #$28
C - - - - 0x002AEF 02:AADF: 85 60     STA ram_0060
; X курсора на экране со списком игроков
C - - - - 0x002AF1 02:AAE1: A9 18     LDA #$10
C - - - - 0x002AF3 02:AAE3: 85 61     STA ram_0061
loc_AAE5_выйти_на_экран_статуса:
C D - - - 0x002AF5 02:AAE5: 20 A0 9B  JSR sub_0x001BB0
C - - - - 0x002AF8 02:AAE8: A0 81     LDY #< tbl_B881_экран_со_списком_игроков
C - - - - 0x002AFA 02:AAEA: A2 B8     LDX #> tbl_B881_экран_со_списком_игроков
C - - - - 0x002AFC 02:AAEC: 20 C0 B0  JSR sub_B0C0
; ppu адрес для отображения имен основного состава
C - - - - 0x002AFF 02:AAEF: A9 84     LDA #$83
C - - - - 0x002B01 02:AAF1: 85 E6     STA ram_00E6
C - - - - 0x002B03 02:AAF3: A9 20     LDA #$20
C - - - - 0x002B05 02:AAF5: 85 E7     STA ram_00E7
C - - - - 0x002B07 02:AAF7: 20 AC AE  JSR sub_AEAC
; ppu адрес для отображения энергии основного состава
C - - - - 0x002B0A 02:AAFA: A9 AA     LDA #$AC
C - - - - 0x002B0C 02:AAFC: 85 5C     STA ram_005C
C - - - - 0x002B0E 02:AAFE: A9 20     LDA #$20
C - - - - 0x002B10 02:AB00: 85 5D     STA ram_005D
C - - - - 0x002B12 02:AB02: A9 0A     LDA #$0A
C - - - - 0x002B14 02:AB04: 85 5E     STA ram_005E
bra_AB06:
C - - - - 0x002B16 02:AB06: 20 37 AF  JSR sub_AF37
C - - - - 0x002B19 02:AB09: C6 5E     DEC ram_005E
C - - - - 0x002B1B 02:AB0B: A5 5E     LDA ram_005E
C - - - - 0x002B1D 02:AB0D: 10 F7     BPL bra_AB06
C - - - - 0x002B1F 02:AB0F: A5 2A     LDA ram_твоя_команда
C - - - - 0x002B21 02:AB11: C9 02     CMP #$02
C - - - - 0x002B23 02:AB13: D0 22     BNE bra_AB37
; начальный адрес для отображения имен запасного состава
C - - - - 0x002B25 02:AB15: A9 92     LDA #$91
C - - - - 0x002B27 02:AB17: 85 E6     STA ram_00E6
C - - - - 0x002B29 02:AB19: A9 20     LDA #$20
C - - - - 0x002B2B 02:AB1B: 85 E7     STA ram_00E7
C - - - - 0x002B2D 02:AB1D: 20 B5 AE  JSR sub_AEB5
; начальный адрес для отображения энергии запасного состава
C - - - - 0x002B30 02:AB20: A9 B8     LDA #$BA
C - - - - 0x002B32 02:AB22: 85 5C     STA ram_005C
C - - - - 0x002B34 02:AB24: A9 20     LDA #$20
C - - - - 0x002B36 02:AB26: 85 5D     STA ram_005D
C - - - - 0x002B38 02:AB28: A9 16     LDA #$16
C - - - - 0x002B3A 02:AB2A: 85 5E     STA ram_005E
bra_AB2C:
C - - - - 0x002B3C 02:AB2C: 20 37 AF  JSR sub_AF37
C - - - - 0x002B3F 02:AB2F: E6 5E     INC ram_005E
C - - - - 0x002B41 02:AB31: A5 5E     LDA ram_005E
C - - - - 0x002B43 02:AB33: C9 20     CMP #$20
C - - - - 0x002B45 02:AB35: D0 F5     BNE bra_AB2C
bra_AB37:
C - - - - 0x002B47 02:AB37: 20 7E 99  JSR sub_0x00198E
C - - - - 0x002B4A 02:AB3A: A0 DC     LDY #< tbl_ADDC_позиция_курсора_на_экране_со_списком_игроков
C - - - - 0x002B4C 02:AB3C: A2 AD     LDX #> tbl_ADDC_позиция_курсора_на_экране_со_списком_игроков
C - - - - 0x002B4E 02:AB3E: 20 3A 9C  JSR sub_0x001C4A
C - - - - 0x002B51 02:AB41: A5 60     LDA ram_0060
C - - - - 0x002B53 02:AB43: 8D 5C 05  STA $055C
C - - - - 0x002B56 02:AB46: A5 61     LDA ram_0061
C - - - - 0x002B58 02:AB48: 8D 5F 05  STA $055F
C - - - - 0x002B5B 02:AB4B: 10 04     BPL bra_AB51
C - - - - 0x002B5D 02:AB4D: A9 B8     LDA #$B8
C - - - - 0x002B5F 02:AB4F: 85 E6     STA ram_00E6
bra_AB51:
C - - - - 0x002B61 02:AB51: A9 01     LDA #$01
C - - - - 0x002B63 02:AB53: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002B66 02:AB56: 20 71 9C  JSR sub_0x001C81
C - - - - 0x002B69 02:AB59: A5 2A     LDA ram_твоя_команда
C - - - - 0x002B6B 02:AB5B: C9 02     CMP #$02
C - - - - 0x002B6D 02:AB5D: D0 28     BNE bra_AB87
C - - - - 0x002B6F 02:AB5F: A5 1E     LDA ram_одноразовые
C - - - - 0x002B71 02:AB61: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - 0x002B73 02:AB63: F0 22     BEQ bra_AB87
C - - - - 0x002B75 02:AB65: 4A        LSR
C - - - - 0x002B76 02:AB66: B0 0C     BCS bra_AB74
; X курсора слева на экране со списком игроков
C - - - - 0x002B78 02:AB68: A9 18     LDA #$10
C - - - - 0x002B7A 02:AB6A: 8D 5F 05  STA $055F
C - - - - 0x002B7D 02:AB6D: A9 C8     LDA #$C8
C - - - - 0x002B7F 02:AB6F: 85 E6     STA ram_00E6
C - - - - 0x002B81 02:AB71: 4C 87 AB  JMP loc_AB87
bra_AB74:
; X курсора справа на экране со списком игроков
C - - - - 0x002B84 02:AB74: A9 88     LDA #$80
C - - - - 0x002B86 02:AB76: 8D 5F 05  STA $055F
C - - - - 0x002B89 02:AB79: A9 B8     LDA #$B8
C - - - - 0x002B8B 02:AB7B: 85 E6     STA ram_00E6
C - - - - 0x002B8D 02:AB7D: AE 5C 05  LDX $055C
C - - - - 0x002B90 02:AB80: E0 C8     CPX #$C8
C - - - - 0x002B92 02:AB82: D0 03     BNE bra_AB87
- - - - - 0x002B94 02:AB84: 8D 5C 05  STA $055C
bra_AB87:
loc_AB87:
C D - - - 0x002B97 02:AB87: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x002B99 02:AB89: 50 03     BVC bra_AB8E_кнопка_не_нажата
C - - - - 0x002B9B 02:AB8B: 4C 21 A7  JMP loc_A721_экран_с_опциями_команды
bra_AB8E_кнопка_не_нажата:
C - - - - 0x002B9E 02:AB8E: 10 C1     BPL bra_AB51
C - - - - 0x002BA0 02:AB90: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x002BA3 02:AB93: AC 5C 05  LDY $055C
C - - - - 0x002BA6 02:AB96: AE 5F 05  LDX $055F
C - - - - 0x002BA9 02:AB99: 84 60     STY ram_0060
C - - - - 0x002BAB 02:AB9B: 86 61     STX ram_0061
C - - - - 0x002BAD 02:AB9D: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002BB0 02:ABA0: A9 F8     LDA #$F8
C - - - - 0x002BB2 02:ABA2: 8D 5C 05  STA $055C
C - - - - 0x002BB5 02:ABA5: A5 ED     LDA ram_00ED
C - - - - 0x002BB7 02:ABA7: 85 5F     STA ram_005F
C - - - - 0x002BB9 02:ABA9: A0 00     LDY #con_игрок_номер
C - - - - 0x002BBB 02:ABAB: B1 34     LDA (ram_plr_data),Y
; адрес ppu для имени игрока
C - - - - 0x002BBD 02:ABAD: A0 46     LDY #$44
C - - - - 0x002BBF 02:ABAF: A2 20     LDX #$20
C - - - - 0x002BC1 02:ABB1: 20 05 AF  JSR sub_AF05
C - - - - 0x002BC4 02:ABB4: A0 03     LDY #con_игрок_уровень
C - - - - 0x002BC6 02:ABB6: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002BC8 02:ABB8: 18        CLC
C - - - - 0x002BC9 02:ABB9: 69 01     ADC #$01
C - - - - 0x002BCB 02:ABBB: 20 7C 9E  JSR sub_0x001E8C
; адрес ppu для номера уровня
C - - - - 0x002BCE 02:ABBE: A0 AB     LDY #$AB
C - - - - 0x002BD0 02:ABC0: A2 20     LDX #$20
C - - - - 0x002BD2 02:ABC2: 20 8E 9D  JSR sub_0x001D9E_запись_в_буфер_уровня_игрока
C - - - - 0x002BD5 02:ABC5: A5 5F     LDA ram_005F
C - - - - 0x002BD7 02:ABC7: A2 00     LDX #$00
C - - - - 0x002BD9 02:ABC9: 20 27 C5  JSR sub_0x03CE18_банксвич_PRG_06_07_с_возвратом
C - - - - 0x002BDC 02:ABCC: A5 32     LDA ram_0032
C - - - - 0x002BDE 02:ABCE: 85 EC     STA ram_00EC
C - - - - 0x002BE0 02:ABD0: A5 33     LDA ram_0033
C - - - - 0x002BE2 02:ABD2: 85 ED     STA ram_00ED
C - - - - 0x002BE4 02:ABD4: 20 4F 9E  JSR sub_0x001E5F
; адрес ppu для максимальной энергии
C - - - - 0x002BE7 02:ABD7: A0 29     LDY #$EA
C - - - - 0x002BE9 02:ABD9: A2 21     LDX #$20
C - - - - 0x002BEB 02:ABDB: A5 E8     LDA ram_00E8
C - - - - 0x002BED 02:ABDD: 85 EC     STA ram_00EC
C - - - - 0x002BEF 02:ABDF: A5 E9     LDA ram_00E9
C - - - - 0x002BF1 02:ABE1: 85 ED     STA ram_00ED
C - - - - 0x002BF3 02:ABE3: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - 0x002BF6 02:ABE6: A5 5F     LDA ram_005F
C - - - - 0x002BF8 02:ABE8: F0 10     BEQ bra_ABFA_кипер
C - - - - 0x002BFA 02:ABEA: C9 1E     CMP #$1E
C - - - - 0x002BFC 02:ABEC: B0 0C     BCS bra_ABFA_кипер
C - - - - 0x002BFE 02:ABEE: A0 A9     LDY #< tbl_B8A9_экран_статов_полевого
C - - - - 0x002C00 02:ABF0: A2 B8     LDX #> tbl_B8A9_экран_статов_полевого
C - - - - 0x002C02 02:ABF2: 20 C0 B0  JSR sub_B0C0
C - - - - 0x002C05 02:ABF5: A0 00     LDY #$00
C - - - - 0x002C07 02:ABF7: 4C 03 AC  JMP loc_AC03
bra_ABFA_кипер:
C - - - - 0x002C0A 02:ABFA: A0 B0     LDY #< tbl_B8B0_экран_статов_кипера
C - - - - 0x002C0C 02:ABFC: A2 B8     LDX #> tbl_B8B0_экран_статов_кипера
C - - - - 0x002C0E 02:ABFE: 20 C0 B0  JSR sub_B0C0
C - - - - 0x002C11 02:AC01: A0 31     LDY # tbl_B9B2_позиция_статов_кипера - tbl_B981_позиция_статов_полевого
loc_AC03:
C D - - - 0x002C13 02:AC03: 84 E6     STY ram_00E6
loc_AC05_повторить_запись_числа:
C D - - - 0x002C15 02:AC05: A4 E6     LDY ram_00E6
C - - - - 0x002C17 02:AC07: BE 81 B9  LDX tbl_B981_позиция_статов_полевого,Y
C - - - - 0x002C1A 02:AC0A: E0 FF     CPX #$FF
C - - - - 0x002C1C 02:AC0C: F0 20     BEQ bra_AC2E_закончить_запись_чисел
C - - - - 0x002C1E 02:AC0E: A5 5F     LDA ram_005F
C - - - - 0x002C20 02:AC10: 20 27 C5  JSR sub_0x03CE18_банксвич_PRG_06_07_с_возвратом
C - - - - 0x002C23 02:AC13: A5 32     LDA ram_0032
C - - - - 0x002C25 02:AC15: 20 7C 9E  JSR sub_0x001E8C
C - - - - 0x002C28 02:AC18: A4 E6     LDY ram_00E6
C - - - - 0x002C2A 02:AC1A: B9 82 B9  LDA tbl_B981_позиция_статов_полевого + 1,Y
C - - - - 0x002C2D 02:AC1D: BE 83 B9  LDX tbl_B981_позиция_статов_полевого + 2,Y
C - - - - 0x002C30 02:AC20: A8        TAY
C - - - - 0x002C31 02:AC21: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - 0x002C34 02:AC24: A5 E6     LDA ram_00E6
C - - - - 0x002C36 02:AC26: 18        CLC
C - - - - 0x002C37 02:AC27: 69 03     ADC #$03
C - - - - 0x002C39 02:AC29: 85 E6     STA ram_00E6
C - - - - 0x002C3B 02:AC2B: 4C 05 AC  JMP loc_AC05_повторить_запись_числа
bra_AC2E_закончить_запись_чисел:
C - - - - 0x002C3E 02:AC2E: 20 7E 99  JSR sub_0x00198E
bra_AC31_B_не_нажата:
C - - - - 0x002C41 02:AC31: A9 01     LDA #$01
C - - - - 0x002C43 02:AC33: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002C46 02:AC36: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x002C48 02:AC38: 50 03     BVC bra_AC3D_A_не_нажата
C - - - - 0x002C4A 02:AC3A: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AC3D_A_не_нажата:
C - - - - 0x002C4D 02:AC3D: 10 F2     BPL bra_AC31_B_не_нажата
C - - - - 0x002C4F 02:AC3F: A0 00     LDY #con_игрок_номер
C - - - - 0x002C51 02:AC41: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002C53 02:AC43: A2 27     LDX #$27
bra_AC45:
C - - - - 0x002C55 02:AC45: CA        DEX
C - - - - 0x002C56 02:AC46: CA        DEX
C - - - - 0x002C57 02:AC47: CA        DEX
C - - - - 0x002C58 02:AC48: 10 03     BPL bra_AC4D
C - - - - 0x002C5A 02:AC4A: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AC4D:
C - - - - 0x002C5D 02:AC4D: DD 2E BB  CMP tbl_BB2E_список_спешалов_игроков,X
C - - - - 0x002C60 02:AC50: D0 F3     BNE bra_AC45
C - - - - 0x002C62 02:AC52: BD 2F BB  LDA tbl_BB2E_список_спешалов_игроков + 1,X
C - - - - 0x002C65 02:AC55: 85 5C     STA ram_005C
C - - - - 0x002C67 02:AC57: BD 30 BB  LDA tbl_BB2E_список_спешалов_игроков + 2,X
C - - - - 0x002C6A 02:AC5A: 85 5D     STA ram_005D
C - - - - 0x002C6C 02:AC5C: A9 00     LDA #$00
C - - - - 0x002C6E 02:AC5E: 85 5E     STA ram_005E
loc_AC60:
C D - - - 0x002C70 02:AC60: A0 00     LDY #$00
C - - - - 0x002C72 02:AC62: B1 5C     LDA (ram_005C),Y
C - - - - 0x002C74 02:AC64: 10 1D     BPL bra_AC83
C - - - - 0x002C76 02:AC66: C9 FF     CMP #$FF
C - - - - 0x002C78 02:AC68: D0 03     BNE bra_AC6D
C - - - - 0x002C7A 02:AC6A: 4C 23 AD  JMP loc_AD23
bra_AC6D:
C - - - - 0x002C7D 02:AC6D: C9 FE     CMP #$FE
C - - - - 0x002C7F 02:AC6F: D0 0A     BNE bra_AC7B
C - - - - 0x002C81 02:AC71: AD 46 04  LDA ram_флаг_драйв_оверхеда
C - - - - 0x002C84 02:AC74: C9 05     CMP #$05
C - - - - 0x002C86 02:AC76: F0 14     BEQ bra_AC8C
C - - - - 0x002C88 02:AC78: 4C 13 AD  JMP loc_AD13
bra_AC7B:
C - - - - 0x002C8B 02:AC7B: AD 48 04  LDA ram_флаг_циклона
C - - - - 0x002C8E 02:AC7E: 4A        LSR
C - - - - 0x002C8F 02:AC7F: B0 0B     BCS bra_AC8C
; bzk проверка на матч с аргентиной для отображения циклона в списке спешалов
; по идее это не нужно, если только флаг циклона не отвечает за что-то еще
C - - - - 0x002C91 02:AC81: A9 1E     LDA #$1E
bra_AC83:
C - - - - 0x002C93 02:AC83: C5 26     CMP ram_матч
C - - - - 0x002C95 02:AC85: 90 05     BCC bra_AC8C
C - - - - 0x002C97 02:AC87: F0 03     BEQ bra_AC8C
C - - - - 0x002C99 02:AC89: 4C 13 AD  JMP loc_AD13
bra_AC8C:
C - - - - 0x002C9C 02:AC8C: C8        INY
C - - - - 0x002C9D 02:AC8D: B1 5C     LDA (ram_005C),Y
C - - - - 0x002C9F 02:AC8F: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - 0x002CA2 02:AC92: A5 5E     LDA ram_005E
C - - - - 0x002CA4 02:AC94: 0A        ASL
C - - - - 0x002CA5 02:AC95: AA        TAX
C - - - - 0x002CA6 02:AC96: BD 48 BC  LDA tbl_BC48,X
C - - - - 0x002CA9 02:AC99: 85 E8     STA ram_00E8
C - - - - 0x002CAB 02:AC9B: BD 49 BC  LDA tbl_BC48 + 1,X
C - - - - 0x002CAE 02:AC9E: 85 E9     STA ram_00E9
loc_ACA0:
C D - - - 0x002CB0 02:ACA0: A0 00     LDY #$00
C - - - - 0x002CB2 02:ACA2: B1 30     LDA (ram_0030),Y
C - - - - 0x002CB4 02:ACA4: C9 FC     CMP #$FC
C - - - - 0x002CB6 02:ACA6: B0 16     BCS bra_ACBE
C - - - - 0x002CB8 02:ACA8: A4 E8     LDY ram_00E8
C - - - - 0x002CBA 02:ACAA: A6 E9     LDX ram_00E9
C - - - - 0x002CBC 02:ACAC: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x002CBF 02:ACAF: E6 30     INC ram_0030
C - - - - 0x002CC1 02:ACB1: D0 02     BNE bra_ACB5
- - - - - 0x002CC3 02:ACB3: E6 31     INC ram_0031
bra_ACB5:
C - - - - 0x002CC5 02:ACB5: E6 E8     INC ram_00E8
C - - - - 0x002CC7 02:ACB7: D0 02     BNE bra_ACBB
- - - - - 0x002CC9 02:ACB9: E6 E9     INC ram_00E9
bra_ACBB:
C - - - - 0x002CCB 02:ACBB: 4C A0 AC  JMP loc_ACA0
bra_ACBE:
C - - - - 0x002CCE 02:ACBE: A9 00     LDA #$00
C - - - - 0x002CD0 02:ACC0: 8D 4E 04  STA ram_высота_мяча
C - - - - 0x002CD3 02:ACC3: A0 02     LDY #$02
C - - - - 0x002CD5 02:ACC5: B1 5C     LDA (ram_005C),Y
C - - - - 0x002CD7 02:ACC7: 8D 3B 04  STA ram_действие_атаки
C - - - - 0x002CDA 02:ACCA: 8D 3D 04  STA $043D
C - - - - 0x002CDD 02:ACCD: C8        INY
C - - - - 0x002CDE 02:ACCE: B1 5C     LDA (ram_005C),Y
C - - - - 0x002CE0 02:ACD0: 8D 3C 04  STA ram_подтип_действия
C - - - - 0x002CE3 02:ACD3: 8D 3E 04  STA $043E
C - - - - 0x002CE6 02:ACD6: A5 5F     LDA ram_005F
C - - - - 0x002CE8 02:ACD8: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x002CEB 02:ACDB: 8D 42 04  STA ram_игрок_без_мяча
C - - - - 0x002CEE 02:ACDE: C8        INY
C - - - - 0x002CEF 02:ACDF: B1 5C     LDA (ram_005C),Y
C - - - - 0x002CF1 02:ACE1: 20 4B C5  JSR sub_0x03CE7E
C - - - - 0x002CF4 02:ACE4: AD 3F 04  LDA $043F
C - - - - 0x002CF7 02:ACE7: 85 EC     STA ram_00EC
C - - - - 0x002CF9 02:ACE9: AD 40 04  LDA $0440
C - - - - 0x002CFC 02:ACEC: 85 ED     STA ram_00ED
C - - - - 0x002CFE 02:ACEE: 20 4F 9E  JSR sub_0x001E5F
C - - - - 0x002D01 02:ACF1: A5 E8     LDA ram_00E8
C - - - - 0x002D03 02:ACF3: 85 EC     STA ram_00EC
C - - - - 0x002D05 02:ACF5: A5 E9     LDA ram_00E9
C - - - - 0x002D07 02:ACF7: 85 ED     STA ram_00ED
C - - - - 0x002D09 02:ACF9: A5 5E     LDA ram_005E
C - - - - 0x002D0B 02:ACFB: 0A        ASL
C - - - - 0x002D0C 02:ACFC: AA        TAX
C - - - - 0x002D0D 02:ACFD: BD 48 BC  LDA tbl_BC48,X
C - - - - 0x002D10 02:AD00: 29 E0     AND #$E0
C - - - - 0x002D12 02:AD02: 09 15     ORA #$15
C - - - - 0x002D14 02:AD04: 18        CLC
C - - - - 0x002D15 02:AD05: 69 20     ADC #$20
C - - - - 0x002D17 02:AD07: A8        TAY
C - - - - 0x002D18 02:AD08: BD 49 BC  LDA tbl_BC48 + 1,X
C - - - - 0x002D1B 02:AD0B: 69 00     ADC #$00
C - - - - 0x002D1D 02:AD0D: AA        TAX
C - - - - 0x002D1E 02:AD0E: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - 0x002D21 02:AD11: E6 5E     INC ram_005E
loc_AD13:
C D - - - 0x002D23 02:AD13: A5 5C     LDA ram_005C
C - - - - 0x002D25 02:AD15: 18        CLC
C - - - - 0x002D26 02:AD16: 69 05     ADC #$05
C - - - - 0x002D28 02:AD18: 85 5C     STA ram_005C
C - - - - 0x002D2A 02:AD1A: A5 5D     LDA ram_005D
C - - - - 0x002D2C 02:AD1C: 69 00     ADC #$00
C - - - - 0x002D2E 02:AD1E: 85 5D     STA ram_005D
C - - - - 0x002D30 02:AD20: 4C 60 AC  JMP loc_AC60

loc_AD23:
C D - - - 0x002D33 02:AD23: A5 5E     LDA ram_005E
C - - - - 0x002D35 02:AD25: AA        TAX
C - - - - 0x002D36 02:AD26: 0A        ASL
C - - - - 0x002D37 02:AD27: 0A        ASL
C - - - - 0x002D38 02:AD28: 0A        ASL
C - - - - 0x002D39 02:AD29: 18        CLC
C - - - - 0x002D3A 02:AD2A: 69 17     ADC #$17
C - - - - 0x002D3C 02:AD2C: 85 7C     STA ram_007C
C - - - - 0x002D3E 02:AD2E: A9 40     LDA #$40
C - - - - 0x002D40 02:AD30: 20 EE 9D  JSR sub_0x001DFE
C - - - - 0x002D43 02:AD33: A5 EC     LDA ram_00EC
C - - - - 0x002D45 02:AD35: 18        CLC
C - - - - 0x002D46 02:AD36: 69 63     ADC #$63
C - - - - 0x002D48 02:AD38: A8        TAY
C - - - - 0x002D49 02:AD39: A5 ED     LDA ram_00ED
C - - - - 0x002D4B 02:AD3B: 69 25     ADC #$25
C - - - - 0x002D4D 02:AD3D: AA        TAX
C - - - - 0x002D4E 02:AD3E: A9 67     LDA #< tbl_B967
C - - - - 0x002D50 02:AD40: 85 E6     STA ram_00E6
C - - - - 0x002D52 02:AD42: A9 B9     LDA #> tbl_B967
C - - - - 0x002D54 02:AD44: 85 E7     STA ram_00E7
C - - - - 0x002D56 02:AD46: A9 1A     LDA #$1A
C - - - - 0x002D58 02:AD48: 20 73 9D  JSR sub_0x001D83
bra_AD4B:
C - - - - 0x002D5B 02:AD4B: A9 18     LDA #$18
C - - - - 0x002D5D 02:AD4D: 85 79     STA ram_0079
C - - - - 0x002D5F 02:AD4F: A9 01     LDA #$01
C - - - - 0x002D61 02:AD51: 85 7E     STA ram_007E
C - - - - 0x002D63 02:AD53: A5 8E     LDA ram_008E
C - - - - 0x002D65 02:AD55: 85 90     STA ram_0090
C - - - - 0x002D67 02:AD57: A5 8F     LDA ram_008F
C - - - - 0x002D69 02:AD59: 85 91     STA ram_0091
bra_AD5B:
C - - - - 0x002D6B 02:AD5B: A9 01     LDA #$01
C - - - - 0x002D6D 02:AD5D: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002D70 02:AD60: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x002D72 02:AD62: 70 14     BVS bra_AD78
; con_btn_A
C - - - - 0x002D74 02:AD64: 10 F5     BPL bra_AD5B
C - - - - 0x002D76 02:AD66: A9 00     LDA #$00
C - - - - 0x002D78 02:AD68: 85 7E     STA ram_007E
bra_AD6A:
C - - - - 0x002D7A 02:AD6A: A9 01     LDA #$01
C - - - - 0x002D7C 02:AD6C: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002D7F 02:AD6F: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x002D81 02:AD71: 70 D8     BVS bra_AD4B
; con_btn_A
C - - - - 0x002D83 02:AD73: 10 F5     BPL bra_AD6A
C - - - - 0x002D85 02:AD75: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AD78:
C - - - - 0x002D88 02:AD78: A9 00     LDA #$00
C - - - - 0x002D8A 02:AD7A: 85 7E     STA ram_007E
bra_AD7C:
C - - - - 0x002D8C 02:AD7C: A9 01     LDA #$01
C - - - - 0x002D8E 02:AD7E: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002D91 02:AD81: 24 1E     BIT ram_одноразовые
; con_btn_A
C - - - - 0x002D93 02:AD83: 30 C6     BMI bra_AD4B
; con_btn_B
C - - - - 0x002D95 02:AD85: 50 F5     BVC bra_AD7C
C - - - - 0x002D97 02:AD87: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса

tbl_AD8A:
- D - - - 0x002D9A 02:AD8A: 00        .byte $00
- D - - - 0x002D9B 02:AD8B: 00        .byte $00
- D - - - 0x002D9C 02:AD8C: 01        .byte $01	; <あ>
- D - - - 0x002D9D 02:AD8D: 02        .byte $02	; <い>
- D - - - 0x002D9E 02:AD8E: 03        .byte $03	; <う>
- D - - - 0x002D9F 02:AD8F: 03        .byte $03	; <う>
- D - - - 0x002DA0 02:AD90: 04        .byte $04	; <え>
- D - - - 0x002DA1 02:AD91: 05        .byte $05	; <お>
- D - - - 0x002DA2 02:AD92: 06        .byte $06	; <か>
- D - - - 0x002DA3 02:AD93: 06        .byte $06	; <か>
- D - - - 0x002DA4 02:AD94: 07        .byte $07	; <き>
- D - - - 0x002DA5 02:AD95: 08        .byte $08	; <く>
- D - - - 0x002DA6 02:AD96: 09        .byte $09	; <け>
- D - - - 0x002DA7 02:AD97: 09        .byte $09	; <け>
- D - - - 0x002DA8 02:AD98: 0A        .byte $0A	; <こ>
- D - - - 0x002DA9 02:AD99: 0B        .byte $0B	; <さ>
- D - - - 0x002DAA 02:AD9A: 0C        .byte $0C	; <し>
- D - - - 0x002DAB 02:AD9B: 0C        .byte $0C	; <し>
- - - - - 0x002DAC 02:AD9C: 0D        .byte $0D	; <す>
- - - - - 0x002DAD 02:AD9D: 0E        .byte $0E	; <せ>

tbl_AD9E:
- D - - - 0x002DAE 02:AD9E: 38        .byte $38
- D - - - 0x002DAF 02:AD9F: 71        .byte $71
- D - - - 0x002DB0 02:ADA0: 00        .byte $00
- D - - - 0x002DB1 02:ADA1: 88        .byte $88

tbl_ADA2:
- D - I - 0x002DB2 02:ADA2: F8        .byte $F8
- D - I - 0x002DB3 02:ADA3: 58        .byte $58
- D - I - 0x002DB4 02:ADA4: 71        .byte $71
- D - I - 0x002DB5 02:ADA5: 00        .byte $00
- D - I - 0x002DB6 02:ADA6: 90        .byte $90
- D - I - 0x002DB7 02:ADA7: 78        .byte $78

tbl_ADA8_курсор_замены_1:
- D - I - 0x002DB8 02:ADA8: F8        .byte $F8
- D - I - 0x002DB9 02:ADA9: 28        .byte $28
- D - I - 0x002DBA 02:ADAA: 71        .byte $71
- D - I - 0x002DBB 02:ADAB: 00        .byte $00
- D - I - 0x002DBC 02:ADAC: 38        .byte $20
- D - I - 0x002DBD 02:ADAD: B8        .byte $B8

tbl_ADAE_курсор_замены_2:
- D - I - 0x002DBE 02:ADAE: F4        .byte $F4
- D - I - 0x002DBF 02:ADAF: 28        .byte $28
- D - I - 0x002DC0 02:ADB0: 71        .byte $71
- D - I - 0x002DC1 02:ADB1: 00        .byte $00
- D - I - 0x002DC2 02:ADB2: 38        .byte $20
- D - I - 0x002DC3 02:ADB3: B8        .byte $B8

tbl_ADB4:
- D - - - 0x002DC4 02:ADB4: 38        .byte $38	; <5>
- D - - - 0x002DC5 02:ADB5: 71        .byte $71	; <ュ>
- D - - - 0x002DC6 02:ADB6: 00        .byte $00
- D - - - 0x002DC7 02:ADB7: 60        .byte $60	; <ミ>

tbl_ADB8_курсор_защиты:
- D - I - 0x002DC8 02:ADB8: F8        .byte $F8
- D - I - 0x002DC9 02:ADB9: 58        .byte $58
- D - I - 0x002DCA 02:ADBA: 71        .byte $71
- D - I - 0x002DCB 02:ADBB: 00        .byte $00
- D - I - 0x002DCC 02:ADBC: 68        .byte $68
- D - I - 0x002DCD 02:ADBD: 78        .byte $78

tbl_ADBE_курсор_замены_игроков_японии_1:
- D - I - 0x002DCE 02:ADBE: F8        .byte $F8
- D - I - 0x002DCF 02:ADBF: 28        .byte $28
- D - I - 0x002DD0 02:ADC0: 71        .byte $71
- D - I - 0x002DD1 02:ADC1: 00        .byte $00
- D - I - 0x002DD2 02:ADC2: 20        .byte $08
- D - I - 0x002DD3 02:ADC3: C8        .byte $C8

tbl_ADC4_курсор_замены_игроков_японии_2:
- D - I - 0x002DD4 02:ADC4: F4        .byte $F4
- D - I - 0x002DD5 02:ADC5: 28        .byte $28
- D - I - 0x002DD6 02:ADC6: 71        .byte $71
- D - I - 0x002DD7 02:ADC7: 00        .byte $00
- D - I - 0x002DD8 02:ADC8: 20        .byte $08
- D - I - 0x002DD9 02:ADC9: B8        .byte $B8

tbl_ADCA_курсор_замены_киперов_японии:
- D - I - 0x002DDA 02:ADCA: F4        .byte $F4
- D - I - 0x002DDB 02:ADCB: B8        .byte $B8
- D - I - 0x002DDC 02:ADCC: 71        .byte $71
- D - I - 0x002DDD 02:ADCD: 00        .byte $00
- D - I - 0x002DDE 02:ADCE: C0        .byte $B0
- D - I - 0x002DDF 02:ADCF: C8        .byte $C8

tbl_ADD0:
- D - I - 0x002DE0 02:ADD0: FC        .byte $FC
- D - I - 0x002DE1 02:ADD1: 98        .byte $98
- D - I - 0x002DE2 02:ADD2: FF        .byte $FF
- D - I - 0x002DE3 02:ADD3: 03        .byte $03	; <う>
- D - I - 0x002DE4 02:ADD4: 10        .byte $10	; <た>
- D - I - 0x002DE5 02:ADD5: C8        .byte $C8	; <ぱ>

tbl_ADD6:
- D - I - 0x002DE6 02:ADD6: FC        .byte $FC
- D - I - 0x002DE7 02:ADD7: A8        .byte $A8	; <ぜ>
- D - I - 0x002DE8 02:ADD8: FF        .byte $FF
- D - I - 0x002DE9 02:ADD9: 03        .byte $03	; <う>
- D - I - 0x002DEA 02:ADDA: 40        .byte $40	; <「>
- D - I - 0x002DEB 02:ADDB: B8        .byte $B8	; <ゴ>

tbl_ADDC_позиция_курсора_на_экране_со_списком_игроков:
; но затем позиция перезаписывается в 0x002AF1
- D - I - 0x002DEC 02:ADDC: F4        .byte $F4
- D - I - 0x002DED 02:ADDD: 28        .byte $28
- D - I - 0x002DEE 02:ADDE: 71        .byte $71
- D - I - 0x002DEF 02:ADDF: 00        .byte $00
- D - I - 0x002DF0 02:ADE0: 18        .byte $18
- D - I - 0x002DF1 02:ADE1: C8        .byte $C8

sub_ADE9:
C - - - - 0x002DF9 02:ADE9: 85 EC     STA ram_00EC
C - - - - 0x002DFB 02:ADEB: A5 2A     LDA ram_твоя_команда
C - - - - 0x002DFD 02:ADED: 0A        ASL
                                      TAX
									  LDA tbl_B6BB_название_твоей_команды_в_опциях,X
									  TAY
									  LDA tbl_B6BB_название_твоей_команды_в_опциях + 1,X
									  TAX
C - - - - 0x002E0A 02:ADFA: AD EC 00  LDA ram_00EC
C - - - - 0x002E0D 02:ADFD: 20 B8 97  JSR sub_0x0017C8_запись_в_буфер_со_смещением
C - - - - 0x002E10 02:AE00: 60        RTS

sub_AE01:
C - - - - 0x002E11 02:AE01: 85 E7     STA ram_00E7
C - - - - 0x002E13 02:AE03: A0 24     LDY #$24
C - - - - 0x002E15 02:AE05: A2 00     LDX #$00
bra_AE07:
C - - - - 0x002E17 02:AE07: BD 23 B8  LDA tbl_B823,X
C - - - - 0x002E1A 02:AE0A: 99 69 04  STA ram_копия_спрайт_тайл,Y
C - - - - 0x002E1D 02:AE0D: A9 00     LDA #$00
C - - - - 0x002E1F 02:AE0F: 99 6A 04  STA ram_копия_спрайт_атрибут,Y
C - - - - 0x002E22 02:AE12: E8        INX
C - - - - 0x002E23 02:AE13: 88        DEY
C - - - - 0x002E24 02:AE14: 88        DEY
C - - - - 0x002E25 02:AE15: 88        DEY
C - - - - 0x002E26 02:AE16: 88        DEY
C - - - - 0x002E27 02:AE17: 10 EE     BPL bra_AE07
C - - - - 0x002E29 02:AE19: A4 2C     LDY ram_расстановка_слева
C - - - - 0x002E2B 02:AE1B: 4C 8F AE  JMP loc_AE8F_обновить_расстановку_миникарты

sub_AE1E:
C - - - - 0x002E2E 02:AE1E: 85 E7     STA ram_00E7
C - - - - 0x002E30 02:AE20: A9 71     LDA #$71
C - - - - 0x002E32 02:AE22: 8D 61 05  STA $0561
C - - - - 0x002E35 02:AE25: A9 00     LDA #$00
C - - - - 0x002E37 02:AE27: 8D 62 05  STA $0562
C - - - - 0x002E3A 02:AE2A: 8E 63 05  STX $0563
C - - - - 0x002E3D 02:AE2D: A5 2C     LDA ram_расстановка_слева
C - - - - 0x002E3F 02:AE2F: 0A        ASL
C - - - - 0x002E40 02:AE30: 0A        ASL
C - - - - 0x002E41 02:AE31: 0A        ASL
C - - - - 0x002E42 02:AE32: 0A        ASL
C - - - - 0x002E43 02:AE33: 18        CLC
C - - - - 0x002E44 02:AE34: 69 48     ADC #$48
C - - - - 0x002E46 02:AE36: 8D 60 05  STA $0560
C - - - - 0x002E49 02:AE39: 60        RTS

sub_AE3A:
C - - - - 0x002E4A 02:AE3A: 85 E7     STA ram_00E7
C - - - - 0x002E4C 02:AE3C: A5 2C     LDA ram_расстановка_слева
C - - - - 0x002E4E 02:AE3E: 85 E6     STA ram_00E6
bra_AE40:
C - - - - 0x002E50 02:AE40: A9 01     LDA #$01
C - - - - 0x002E52 02:AE42: 20 A8 9F  JSR sub_0x001FB8
C - - - - 0x002E55 02:AE45: A5 1E     LDA ram_одноразовые
C - - - - 0x002E57 02:AE47: 29 0C     AND #con_btn_Down + con_btn_Up
C - - - - 0x002E59 02:AE49: F0 1C     BEQ bra_AE67
C - - - - 0x002E5B 02:AE4B: 49 0C     EOR #$0C
C - - - - 0x002E5D 02:AE4D: 4A        LSR
C - - - - 0x002E5E 02:AE4E: 38        SEC
C - - - - 0x002E5F 02:AE4F: E9 03     SBC #$03
C - - - - 0x002E61 02:AE51: 18        CLC
C - - - - 0x002E62 02:AE52: 65 E6     ADC ram_00E6
C - - - - 0x002E64 02:AE54: 29 03     AND #$03
C - - - - 0x002E66 02:AE56: 85 E6     STA ram_00E6
C - - - - 0x002E68 02:AE58: 0A        ASL
C - - - - 0x002E69 02:AE59: 0A        ASL
C - - - - 0x002E6A 02:AE5A: 0A        ASL
C - - - - 0x002E6B 02:AE5B: 0A        ASL
C - - - - 0x002E6C 02:AE5C: 18        CLC
C - - - - 0x002E6D 02:AE5D: 69 48     ADC #$48
C - - - - 0x002E6F 02:AE5F: 8D 60 05  STA $0560
C - - - - 0x002E72 02:AE62: A4 E6     LDY ram_00E6
C - - - - 0x002E74 02:AE64: 20 8F AE  JSR sub_AE8F_обновить_расстановку_миникарты
bra_AE67:
C - - - - 0x002E77 02:AE67: 24 1E     BIT ram_одноразовые
; con_btn_B
C - - - - 0x002E79 02:AE69: 70 07     BVS bra_AE72
; con_btn_A
C - - - - 0x002E7B 02:AE6B: 10 D3     BPL bra_AE40
C - - - - 0x002E7D 02:AE6D: A5 E6     LDA ram_00E6
C - - - - 0x002E7F 02:AE6F: 85 2C     STA ram_расстановка_слева
C - - - - 0x002E81 02:AE71: 60        RTS
bra_AE72:
C - - - - 0x002E82 02:AE72: A4 2C     LDY ram_расстановка_слева
C - - - - 0x002E84 02:AE74: 4C 8F AE  JMP loc_AE8F_обновить_расстановку_миникарты

sub_AE77:
C - - - - 0x002E87 02:AE77: 20 3A 9C  JSR sub_0x001C4A
C - - - - 0x002E8A 02:AE7A: A5 2D     LDA ram_защита_слева
C - - - - 0x002E8C 02:AE7C: 0A        ASL
C - - - - 0x002E8D 02:AE7D: 0A        ASL
C - - - - 0x002E8E 02:AE7E: 0A        ASL
C - - - - 0x002E8F 02:AE7F: 0A        ASL
C - - - - 0x002E90 02:AE80: 18        CLC
C - - - - 0x002E91 02:AE81: 69 58     ADC #$58
C - - - - 0x002E93 02:AE83: 8D 60 05  STA $0560
C - - - - 0x002E96 02:AE86: 20 0D 9C  JSR sub_0x001C1D
C - - - - 0x002E99 02:AE89: B0 03     BCS bra_AE8E_выход
C - - - - 0x002E9B 02:AE8B: 4A        LSR
C - - - - 0x002E9C 02:AE8C: 85 2D     STA ram_защита_слева
bra_AE8E_выход:
C - - - - 0x002E9E 02:AE8E: 60        RTS

loc_AE8F_обновить_расстановку_миникарты:
sub_AE8F_обновить_расстановку_миникарты:
; отображение позиций игроков на миникарте в экране с меню команды исходя из опции расстановки
C D - - - 0x002E9F 02:AE8F: BE 2D B8  LDX tbl_B82D,Y
C - - - - 0x002EA2 02:AE92: A0 24     LDY #$24
bra_AE94:
C - - - - 0x002EA4 02:AE94: BD 31 B8  LDA tbl_B831,X
C - - - - 0x002EA7 02:AE97: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x002EAA 02:AE9A: BD 32 B8  LDA tbl_B831 + 1,X
C - - - - 0x002EAD 02:AE9D: 18        CLC
C - - - - 0x002EAE 02:AE9E: 65 E7     ADC ram_00E7
C - - - - 0x002EB0 02:AEA0: 99 6B 04  STA ram_копия_спрайт_X,Y
C - - - - 0x002EB3 02:AEA3: E8        INX
C - - - - 0x002EB4 02:AEA4: E8        INX
C - - - - 0x002EB5 02:AEA5: 88        DEY
C - - - - 0x002EB6 02:AEA6: 88        DEY
C - - - - 0x002EB7 02:AEA7: 88        DEY
C - - - - 0x002EB8 02:AEA8: 88        DEY
C - - - - 0x002EB9 02:AEA9: 10 E9     BPL bra_AE94
C - - - - 0x002EBB 02:AEAB: 60        RTS

sub_AEAC:
C - - - - 0x002EBC 02:AEAC: A9 0A     LDA #$0A
C - - - - 0x002EBE 02:AEAE: A2 0B     LDX #$0B
C - - - - 0x002EC0 02:AEB0: A0 FF     LDY #$FF
C - - - - 0x002EC2 02:AEB2: 4C DA AE  JMP loc_AEDA

sub_AEB5:
C - - - - 0x002EC5 02:AEB5: A9 16     LDA #$16
C - - - - 0x002EC7 02:AEB7: A2 0A     LDX #$0A
C - - - - 0x002EC9 02:AEB9: A0 01     LDY #$01
C - - - - 0x002ECB 02:AEBB: 4C DA AE  JMP loc_AEDA

sub_AEBE:
C - - - - 0x002ECE 02:AEBE: A9 16     LDA #$16
C - - - - 0x002ED0 02:AEC0: A2 08     LDX #$08
C - - - - 0x002ED2 02:AEC2: A0 01     LDY #$01
C - - - - 0x002ED4 02:AEC4: 20 DA AE  JSR sub_AEDA
C - - - - 0x002ED7 02:AEC7: A5 E6     LDA ram_00E6
C - - - - 0x002ED9 02:AEC9: 18        CLC
C - - - - 0x002EDA 02:AECA: 69 40     ADC #$40
C - - - - 0x002EDC 02:AECC: 85 E6     STA ram_00E6
C - - - - 0x002EDE 02:AECE: A5 E7     LDA ram_00E7
C - - - - 0x002EE0 02:AED0: 69 00     ADC #$00
C - - - - 0x002EE2 02:AED2: 85 E7     STA ram_00E7
C - - - - 0x002EE4 02:AED4: A9 1E     LDA #$1E
C - - - - 0x002EE6 02:AED6: A2 02     LDX #$02
C - - - - 0x002EE8 02:AED8: A0 01     LDY #$01
loc_AEDA:
sub_AEDA:
C D - - - 0x002EEA 02:AEDA: 85 E8     STA ram_00E8
C - - - - 0x002EEC 02:AEDC: 86 E9     STX ram_00E9
C - - - - 0x002EEE 02:AEDE: 84 EB     STY ram_00EB
bra_AEE0:
C - - - - 0x002EF0 02:AEE0: A5 E8     LDA ram_00E8
C - - - - 0x002EF2 02:AEE2: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
C - - - - 0x002EF5 02:AEE5: A0 00     LDY #con_игрок_номер
C - - - - 0x002EF7 02:AEE7: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002EF9 02:AEE9: 20 09 AF  JSR sub_AF09
C - - - - 0x002EFC 02:AEEC: A5 E8     LDA ram_00E8
C - - - - 0x002EFE 02:AEEE: 18        CLC
C - - - - 0x002EFF 02:AEEF: 65 EB     ADC ram_00EB
C - - - - 0x002F01 02:AEF1: 85 E8     STA ram_00E8
C - - - - 0x002F03 02:AEF3: A5 E6     LDA ram_00E6
C - - - - 0x002F05 02:AEF5: 18        CLC
C - - - - 0x002F06 02:AEF6: 69 40     ADC #$40
C - - - - 0x002F08 02:AEF8: 85 E6     STA ram_00E6
C - - - - 0x002F0A 02:AEFA: A5 E7     LDA ram_00E7
C - - - - 0x002F0C 02:AEFC: 69 00     ADC #$00
C - - - - 0x002F0E 02:AEFE: 85 E7     STA ram_00E7
C - - - - 0x002F10 02:AF00: C6 E9     DEC ram_00E9
C - - - - 0x002F12 02:AF02: D0 DC     BNE bra_AEE0
C - - - - 0x002F14 02:AF04: 60        RTS

sub_AF05:
C - - - - 0x002F15 02:AF05: 84 E6     STY ram_00E6
C - - - - 0x002F17 02:AF07: 86 E7     STX ram_00E7
sub_AF09:
C - - - - 0x002F19 02:AF09: 20 3C C5  JSR sub_0x03F31F_таблица_слов
; ограничени по количеству символов для имен
C - - - - 0x002F1C 02:AF0C: A9 05     LDA #$08
C - - - - 0x002F1E 02:AF0E: 85 ED     STA ram_00ED
bra_AF10:
C - - - - 0x002F20 02:AF10: A2 00     LDX #$00
C - - - - 0x002F22 02:AF12: A0 00     LDY #$00
C - - - - 0x002F24 02:AF14: B1 30     LDA (ram_0030),Y
C - - - - 0x002F26 02:AF16: C9 FC     CMP #$FC
C - - - - 0x002F28 02:AF18: B0 07     BCS bra_AF21
C - - - - 0x002F2A 02:AF1A: E6 30     INC ram_0030
C - - - - 0x002F2C 02:AF1C: D0 02     BNE bra_AF20
- - - - - 0x002F2E 02:AF1E: E6 31     INC ram_0031
bra_AF20:
C - - - - 0x002F30 02:AF20: AA        TAX
bra_AF21:
C - - - - 0x002F31 02:AF21: 8A        TXA
C - - - - 0x002F32 02:AF22: A4 E6     LDY ram_00E6
C - - - - 0x002F34 02:AF24: A6 E7     LDX ram_00E7
C - - - - 0x002F36 02:AF26: 20 CA 88  JSR sub_0x0008DA
C - - - - 0x002F39 02:AF29: E6 E6     INC ram_00E6
C - - - - 0x002F3B 02:AF2B: C6 ED     DEC ram_00ED
C - - - - 0x002F3D 02:AF2D: D0 E1     BNE bra_AF10
C - - - - 0x002F3F 02:AF2F: A5 E6     LDA ram_00E6
C - - - - 0x002F41 02:AF31: 38        SEC
; здесь также нужно корректировать
C - - - - 0x002F42 02:AF32: E9 05     SBC #$08
C - - - - 0x002F44 02:AF34: 85 E6     STA ram_00E6
C - - - - 0x002F46 02:AF36: 60        RTS

sub_AF37:
C - - - - 0x002F47 02:AF37: A5 5E     LDA ram_005E
C - - - - 0x002F49 02:AF39: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
C - - - - 0x002F4C 02:AF3C: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x002F4E 02:AF3E: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002F50 02:AF40: 85 EC     STA ram_00EC
C - - - - 0x002F52 02:AF42: C8        INY
C - - - - 0x002F53 02:AF43: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002F55 02:AF45: 85 ED     STA ram_00ED
C - - - - 0x002F57 02:AF47: 20 4F 9E  JSR sub_0x001E5F
C - - - - 0x002F5A 02:AF4A: A4 5C     LDY ram_005C
C - - - - 0x002F5C 02:AF4C: A6 5D     LDX ram_005D
C - - - - 0x002F5E 02:AF4E: A5 E8     LDA ram_00E8
C - - - - 0x002F60 02:AF50: 85 EC     STA ram_00EC
C - - - - 0x002F62 02:AF52: A5 E9     LDA ram_00E9
C - - - - 0x002F64 02:AF54: 85 ED     STA ram_00ED
C - - - - 0x002F66 02:AF56: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - 0x002F69 02:AF59: A5 5C     LDA ram_005C
C - - - - 0x002F6B 02:AF5B: 18        CLC
C - - - - 0x002F6C 02:AF5C: 69 40     ADC #$40
C - - - - 0x002F6E 02:AF5E: 85 5C     STA ram_005C
C - - - - 0x002F70 02:AF60: A5 5D     LDA ram_005D
C - - - - 0x002F72 02:AF62: 69 00     ADC #$00
C - - - - 0x002F74 02:AF64: 85 5D     STA ram_005D
C - - - - 0x002F76 02:AF66: 60        RTS

sub_AF67:
C - - - - 0x002F77 02:AF67: A0 00     LDY #$00
; con_игрок_номер
; con_игрок_энергия_lo
; con_игрок_энергия_hi
; con_игрок_уровень
bra_AF69:
C - - - - 0x002F79 02:AF69: B1 E6     LDA (ram_00E6),Y
C - - - - 0x002F7B 02:AF6B: AA        TAX
C - - - - 0x002F7C 02:AF6C: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002F7E 02:AF6E: 91 E6     STA (ram_00E6),Y
C - - - - 0x002F80 02:AF70: 8A        TXA
C - - - - 0x002F81 02:AF71: 91 34     STA (ram_plr_data),Y
C - - - - 0x002F83 02:AF73: C8        INY
C - - - - 0x002F84 02:AF74: C0 04     CPY #$04
C - - - - 0x002F86 02:AF76: D0 F1     BNE bra_AF69
C - - - - 0x002F88 02:AF78: 60        RTS

.export sub_0x002F89
sub_0x002F89:
C D - - - 0x002F89 02:AF79: A5 26     LDA ram_матч
C - - - - 0x002F8B 02:AF7B: 0A        ASL
C - - - - 0x002F8C 02:AF7C: AA        TAX
C - - - - 0x002F8D 02:AF7D: BD 4C BA  LDA tbl_BA4C,X
C - - - - 0x002F90 02:AF80: 85 E6     STA ram_00E6
C - - - - 0x002F92 02:AF82: BD 4D BA  LDA tbl_BA4C + 1,X
C - - - - 0x002F95 02:AF85: 85 E7     STA ram_00E7
C - - - - 0x002F97 02:AF87: 4C 9E AF  JMP loc_AF9E

.export sub_0x002F9A
sub_0x002F9A:
C D - - - 0x002F9A 02:AF8A: A5 26     LDA ram_матч
C - - - - 0x002F9C 02:AF8C: 0A        ASL
C - - - - 0x002F9D 02:AF8D: AA        TAX
C - - - - 0x002F9E 02:AF8E: BD 4C BA  LDA tbl_BA4C,X
C - - - - 0x002FA1 02:AF91: 85 E6     STA ram_00E6
C - - - - 0x002FA3 02:AF93: BD 4D BA  LDA tbl_BA4C + 1,X
C - - - - 0x002FA6 02:AF96: 4A        LSR
C - - - - 0x002FA7 02:AF97: 66 E6     ROR ram_00E6
C - - - - 0x002FA9 02:AF99: 4A        LSR
C - - - - 0x002FAA 02:AF9A: 66 E6     ROR ram_00E6
C - - - - 0x002FAC 02:AF9C: 85 E7     STA ram_00E7
loc_AF9E:
C D - - - 0x002FAE 02:AF9E: A2 00     LDX #$00
bra_AFA0:
C - - - - 0x002FB0 02:AFA0: BD 54 04  LDA $0454,X
C - - - - 0x002FB3 02:AFA3: 18        CLC
C - - - - 0x002FB4 02:AFA4: 65 E6     ADC ram_00E6
C - - - - 0x002FB6 02:AFA6: 9D 54 04  STA $0454,X
C - - - - 0x002FB9 02:AFA9: BD 55 04  LDA $0455,X
C - - - - 0x002FBC 02:AFAC: 65 E7     ADC ram_00E7
C - - - - 0x002FBE 02:AFAE: 9D 55 04  STA $0455,X
C - - - - 0x002FC1 02:AFB1: 90 08     BCC bra_AFBB
- - - - - 0x002FC3 02:AFB3: A9 FF     LDA #$FF
- - - - - 0x002FC5 02:AFB5: 9D 54 04  STA $0454,X
- - - - - 0x002FC8 02:AFB8: 9D 55 04  STA $0455,X
bra_AFBB:
C - - - - 0x002FCB 02:AFBB: E8        INX
C - - - - 0x002FCC 02:AFBC: E8        INX
C - - - - 0x002FCD 02:AFBD: E0 16     CPX #$16
C - - - - 0x002FCF 02:AFBF: 90 DF     BCC bra_AFA0
C - - - - 0x002FD1 02:AFC1: 60        RTS

.export sub_0x002FD2
sub_0x002FD2:
C D - - - 0x002FD2 02:AFC2: 86 EC     STX ram_00EC
C - - - - 0x002FD4 02:AFC4: 20 23 B0  JSR sub_B023
C - - - - 0x002FD7 02:AFC7: 85 EB     STA ram_00EB
C - - - - 0x002FD9 02:AFC9: 29 F0     AND #$F0
C - - - - 0x002FDB 02:AFCB: 4A        LSR
C - - - - 0x002FDC 02:AFCC: 18        CLC
C - - - - 0x002FDD 02:AFCD: 65 EC     ADC ram_00EC
C - - - - 0x002FDF 02:AFCF: AA        TAX
C - - - - 0x002FE0 02:AFD0: BD 1C BA  LDA tbl_BA1C,X
C - - - - 0x002FE3 02:AFD3: AA        TAX
C - - - - 0x002FE4 02:AFD4: A5 26     LDA ram_матч
C - - - - 0x002FE6 02:AFD6: 0A        ASL
C - - - - 0x002FE7 02:AFD7: A8        TAY
C - - - - 0x002FE8 02:AFD8: B9 4D BA  LDA tbl_BA4C + 1,Y
C - - - - 0x002FEB 02:AFDB: 85 ED     STA ram_00ED
C - - - - 0x002FED 02:AFDD: B9 4C BA  LDA tbl_BA4C,Y
C - - - - 0x002FF0 02:AFE0: 66 ED     ROR ram_00ED
C - - - - 0x002FF2 02:AFE2: 4A        LSR
C - - - - 0x002FF3 02:AFE3: 66 ED     ROR ram_00ED
C - - - - 0x002FF5 02:AFE5: 4A        LSR
C - - - - 0x002FF6 02:AFE6: 20 EE 9D  JSR sub_0x001DFE
C - - - - 0x002FF9 02:AFE9: 06 EC     ASL ram_00EC
C - - - - 0x002FFB 02:AFEB: 26 ED     ROL ram_00ED
C - - - - 0x002FFD 02:AFED: 06 EC     ASL ram_00EC
C - - - - 0x002FFF 02:AFEF: 26 ED     ROL ram_00ED
C - - - - 0x003001 02:AFF1: A5 EB     LDA ram_00EB
C - - - - 0x003003 02:AFF3: 29 0F     AND #$0F
C - - - - 0x003005 02:AFF5: 0A        ASL
C - - - - 0x003006 02:AFF6: AA        TAX
C - - - - 0x003007 02:AFF7: BD 54 04  LDA $0454,X
C - - - - 0x00300A 02:AFFA: 18        CLC
C - - - - 0x00300B 02:AFFB: 65 ED     ADC ram_00ED
C - - - - 0x00300D 02:AFFD: 9D 54 04  STA $0454,X
C - - - - 0x003010 02:B000: BD 55 04  LDA $0455,X
C - - - - 0x003013 02:B003: 69 00     ADC #$00
C - - - - 0x003015 02:B005: 9D 55 04  STA $0455,X
C - - - - 0x003018 02:B008: 90 08     BCC bra_B012_выход
- - - - - 0x00301A 02:B00A: A9 FF     LDA #$FF
- - - - - 0x00301C 02:B00C: 9D 54 04  STA $0454,X
- - - - - 0x00301F 02:B00F: 9D 55 04  STA $0455,X
bra_B012_выход:
C - - - - 0x003022 02:B012: 60        RTS

sub_B013:
C - - - - 0x003023 02:B013: 20 23 B0  JSR sub_B023
sub_B016:
C - - - - 0x003026 02:B016: 29 0F     AND #$0F
C - - - - 0x003028 02:B018: 0A        ASL
C - - - - 0x003029 02:B019: AA        TAX
C - - - - 0x00302A 02:B01A: BD 54 04  LDA $0454,X
C - - - - 0x00302D 02:B01D: A8        TAY
C - - - - 0x00302E 02:B01E: BD 55 04  LDA $0455,X
C - - - - 0x003031 02:B021: AA        TAX
C - - - - 0x003032 02:B022: 60        RTS

sub_B023:
C - - - - 0x003033 02:B023: A6 2A     LDX ram_твоя_команда
C - - - - 0x003035 02:B025: 18        CLC
C - - - - 0x003036 02:B026: 7D D3 B9  ADC tbl_B9D3,X
C - - - - 0x003039 02:B029: AA        TAX
C - - - - 0x00303A 02:B02A: BD D6 B9  LDA tbl_B9D6,X
C - - - - 0x00303D 02:B02D: 60        RTS

sub_B02E:
C - - - - 0x00303E 02:B02E: 84 E6     STY ram_00E6
C - - - - 0x003040 02:B030: 86 E7     STX ram_00E7
C - - - - 0x003042 02:B032: A2 80     LDX #$80
bra_B034:
C - - - - 0x003044 02:B034: CA        DEX
C - - - - 0x003045 02:B035: CA        DEX
C - - - - 0x003046 02:B036: A5 E6     LDA ram_00E6
C - - - - 0x003048 02:B038: DD 90 BA  CMP tbl_BA90,X
C - - - - 0x00304B 02:B03B: A5 E7     LDA ram_00E7
C - - - - 0x00304D 02:B03D: FD 91 BA  SBC tbl_BA90 + 1,X
C - - - - 0x003050 02:B040: 90 F2     BCC bra_B034
C - - - - 0x003052 02:B042: 8A        TXA
C - - - - 0x003053 02:B043: 4A        LSR
C - - - - 0x003054 02:B044: 60        RTS

sub_B045:
C - - - - 0x003055 02:B045: 0A        ASL
C - - - - 0x003056 02:B046: AA        TAX
C - - - - 0x003057 02:B047: BD 90 BA  LDA tbl_BA90,X
C - - - - 0x00305A 02:B04A: A8        TAY
C - - - - 0x00305B 02:B04B: BD 91 BA  LDA tbl_BA90 + 1,X
C - - - - 0x00305E 02:B04E: AA        TAX
C - - - - 0x00305F 02:B04F: 60        RTS

.export sub_0x003060
sub_0x003060:
C D - - - 0x003060 02:B050: A5 26     LDA ram_матч
C - - - - 0x003062 02:B052: C9 10     CMP #$10
C - - - - 0x003064 02:B054: F0 16     BEQ bra_B06C
C - - - - 0x003066 02:B056: C9 0C     CMP #$0C
C - - - - 0x003068 02:B058: F0 0B     BEQ bra_B065
C - - - - 0x00306A 02:B05A: C9 06     CMP #$06
C - - - - 0x00306C 02:B05C: D0 42     BNE bra_B0A0_выход
C - - - - 0x00306E 02:B05E: A0 10     LDY #< tbl_BB10
C - - - - 0x003070 02:B060: A2 BB     LDX #> tbl_BB10
C - - - - 0x003072 02:B062: 4C 70 B0  JMP loc_B070
bra_B065:
C - - - - 0x003075 02:B065: A0 1A     LDY #< tbl_BB1A
C - - - - 0x003077 02:B067: A2 BB     LDX #> tbl_BB1A
C - - - - 0x003079 02:B069: 4C 70 B0  JMP loc_B070
bra_B06C:
C - - - - 0x00307C 02:B06C: A0 24     LDY #< tbl_BB24
C - - - - 0x00307E 02:B06E: A2 BB     LDX #> tbl_BB24
loc_B070:
C D - - - 0x003080 02:B070: 84 E6     STY ram_00E6
C - - - - 0x003082 02:B072: 86 E7     STX ram_00E7
C - - - - 0x003084 02:B074: A0 EC     LDY #$EC
bra_B076:
C - - - - 0x003086 02:B076: B9 68 03  LDA $0368,Y
C - - - - 0x003089 02:B079: 99 6A 05  STA $056A,Y
C - - - - 0x00308C 02:B07C: C8        INY
C - - - - 0x00308D 02:B07D: D0 F7     BNE bra_B076
C - - - - 0x00308F 02:B07F: A9 00     LDA #$00
C - - - - 0x003091 02:B081: 85 E9     STA ram_00E9
bra_B083:
C - - - - 0x003093 02:B083: 4A        LSR
C - - - - 0x003094 02:B084: A8        TAY
C - - - - 0x003095 02:B085: B1 E6     LDA (ram_00E6),Y
C - - - - 0x003097 02:B087: AA        TAX
C - - - - 0x003098 02:B088: A4 E9     LDY ram_00E9
C - - - - 0x00309A 02:B08A: BD 56 06  LDA $0656,X
C - - - - 0x00309D 02:B08D: 99 54 04  STA $0454,Y
C - - - - 0x0030A0 02:B090: BD 57 06  LDA $0657,X
C - - - - 0x0030A3 02:B093: 99 55 04  STA $0455,Y
C - - - - 0x0030A6 02:B096: E6 E9     INC ram_00E9
C - - - - 0x0030A8 02:B098: E6 E9     INC ram_00E9
C - - - - 0x0030AA 02:B09A: A5 E9     LDA ram_00E9
C - - - - 0x0030AC 02:B09C: C9 14     CMP #$14
C - - - - 0x0030AE 02:B09E: D0 E3     BNE bra_B083
bra_B0A0_выход:
C - - - - 0x0030B0 02:B0A0: 60        RTS

sub_B0A1:
C - - - - 0x0030B1 02:B0A1: A6 27     LDX ram_тайм
C - - - - 0x0030B3 02:B0A3: F0 1A     BEQ bra_B0BF_выход
C - - - - 0x0030B5 02:B0A5: A0 C8     LDY #< tbl_B9C8
C - - - - 0x0030B7 02:B0A7: A2 B9     LDX #> tbl_B9C8
C - - - - 0x0030B9 02:B0A9: 20 B6 97  JSR sub_0x0017C6_запись_в_буфер_без_смещения
C - - - - 0x0030BC 02:B0AC: A0 52     LDY #$52
C - - - - 0x0030BE 02:B0AE: A2 22     LDX #$22
C - - - - 0x0030C0 02:B0B0: A9 01     LDA #$01
C - - - - 0x0030C2 02:B0B2: 85 E9     STA ram_00E9
C - - - - 0x0030C4 02:B0B4: AD 50 04  LDA $0450
C - - - - 0x0030C7 02:B0B7: 49 FF     EOR #$FF
C - - - - 0x0030C9 02:B0B9: 18        CLC
C - - - - 0x0030CA 02:B0BA: 69 37     ADC #$37
C - - - - 0x0030CC 02:B0BC: 20 95 98  JSR sub_0x0018A5
bra_B0BF_выход:
C - - - - 0x0030CF 02:B0BF: 60        RTS

sub_B0C0:
C - - - - 0x0030D0 02:B0C0: 84 EC     STY ram_00EC
C - - - - 0x0030D2 02:B0C2: 86 ED     STX ram_00ED
loc_B0C4:
C D - - - 0x0030D4 02:B0C4: A0 00     LDY #$00
C - - - - 0x0030D6 02:B0C6: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0030D8 02:B0C8: 0A        ASL
C - - - - 0x0030D9 02:B0C9: AA        TAX
C - - - - 0x0030DA 02:B0CA: BD D7 B0  LDA tbl_B0D7,X
C - - - - 0x0030DD 02:B0CD: 85 E6     STA ram_00E6
C - - - - 0x0030DF 02:B0CF: BD D8 B0  LDA tbl_B0D7 + 1,X
C - - - - 0x0030E2 02:B0D2: 85 E7     STA ram_00E7
C - - - - 0x0030E4 02:B0D4: 6C E6 00  JMP (ram_00E6)

tbl_B0D7:
- D - - - 0x0030E7 02:B0D7: F7 B0     .word ofs_B0F7_00_запись_в_буфер_без_смещения
- D - - - 0x0030E9 02:B0D9: 02 B1     .word ofs_B102_01_запись_в_буфер_со_смещением
- - - - - 0x0030EB 02:B0DB: 13 B1     .word ofs_B113_02
- - - - - 0x0030ED 02:B0DD: 1E B1     .word ofs_B11E_03
- D - - - 0x0030EF 02:B0DF: 2F B1     .word ofs_B12F_04_вертикальная_полоска
- D - - - 0x0030F1 02:B0E1: 3B B1     .word ofs_B13B_05_горизонтальная_полоска
- - - - - 0x0030F3 02:B0E3: 4D B1     .word ofs_B14D_06
- - - - - 0x0030F5 02:B0E5: 60 B1     .word ofs_B160_07
- - - - - 0x0030F7 02:B0E7: 73 B1     .word ofs_B173_08
- - - - - 0x0030F9 02:B0E9: 86 B1     .word ofs_B186_09
- D - - - 0x0030FB 02:B0EB: 99 B1     .word ofs_B199_0A_запись_в_буфер_с_учетом_кодировки_японских_символов
- - - - - 0x0030FD 02:B0ED: BA B1     .word _общий_RTS
- - - - - 0x0030FF 02:B0EF: BA B1     .word _общий_RTS
- D - - - 0x003101 02:B0F1: A4 B1     .word ofs_B1A4_0D_очистить_nametable
- D - - - 0x003103 02:B0F3: AC B1     .word ofs_B1AC_0E_прыжок
- D - - - 0x003105 02:B0F5: BA B1     .word _общий_RTS	; 0F

ofs_B0F7_00_запись_в_буфер_без_смещения:
C - J - - 0x003107 02:B0F7: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - 0x00310A 02:B0FA: 20 B6 97  JSR sub_0x0017C6_запись_в_буфер_без_смещения
C - - - - 0x00310D 02:B0FD: A9 03     LDA #$03
C - - - - 0x00310F 02:B0FF: 4C BB B1  JMP loc_B1BB

ofs_B102_01_запись_в_буфер_со_смещением:
C - J - - 0x003112 02:B102: A0 03     LDY #$03
C - - - - 0x003114 02:B104: B1 EC     LDA (ram_00EC),Y
C - - - - 0x003116 02:B106: 48        PHA
C - - - - 0x003117 02:B107: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - 0x00311A 02:B10A: 68        PLA
C - - - - 0x00311B 02:B10B: 20 B8 97  JSR sub_0x0017C8_запись_в_буфер_со_смещением
C - - - - 0x00311E 02:B10E: A9 04     LDA #$04
C - - - - 0x003120 02:B110: 4C BB B1  JMP loc_B1BB

ofs_B113_02:
- - - - - 0x003123 02:B113: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
- - - - - 0x003126 02:B116: 20 AB 97  JSR sub_0x0017BB
- - - - - 0x003129 02:B119: A9 03     LDA #$03
- - - - - 0x00312B 02:B11B: 4C BB B1  JMP loc_B1BB

ofs_B11E_03:
- - - - - 0x00312E 02:B11E: A0 03     LDY #$03
- - - - - 0x003130 02:B120: B1 EC     LDA (ram_00EC),Y
- - - - - 0x003132 02:B122: 48        PHA
- - - - - 0x003133 02:B123: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
- - - - - 0x003136 02:B126: 68        PLA
- - - - - 0x003137 02:B127: 20 AD 97  JSR sub_0x0017BD
- - - - - 0x00313A 02:B12A: A9 04     LDA #$04
- - - - - 0x00313C 02:B12C: 4C BB B1  JMP loc_B1BB

ofs_B12F_04_вертикальная_полоска:
C - J - - 0x00313F 02:B12F: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
C - - - - 0x003142 02:B132: 20 DE B1  JSR sub_B1DE
C - - - - 0x003145 02:B135: A4 E9     LDY ram_00E9
C - - - - 0x003147 02:B137: A2 01     LDX #$01
C - - - - 0x003149 02:B139: 10 0A     BPL bra_B145

ofs_B13B_05_горизонтальная_полоска:
C - J - - 0x00314B 02:B13B: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
C - - - - 0x00314E 02:B13E: 20 DE B1  JSR sub_B1DE
C - - - - 0x003151 02:B141: A6 E9     LDX ram_00E9
C - - - - 0x003153 02:B143: A0 01     LDY #$01
bra_B145:
C - - - - 0x003155 02:B145: 20 EA 98  JSR sub_0x0018FA
C - - - - 0x003158 02:B148: A9 05     LDA #$05
C - - - - 0x00315A 02:B14A: 4C BB B1  JMP loc_B1BB

ofs_B14D_06:
- - - - - 0x00315D 02:B14D: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - 0x003160 02:B150: 20 DE B1  JSR sub_B1DE
- - - - - 0x003163 02:B153: AA        TAX
- - - - - 0x003164 02:B154: A9 00     LDA #$00
- - - - - 0x003166 02:B156: A4 E9     LDY ram_00E9
- - - - - 0x003168 02:B158: 20 EA 98  JSR sub_0x0018FA
- - - - - 0x00316B 02:B15B: A9 05     LDA #$05
- - - - - 0x00316D 02:B15D: 4C BB B1  JMP loc_B1BB

ofs_B160_07:
- - - - - 0x003170 02:B160: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - 0x003173 02:B163: 20 DE B1  JSR sub_B1DE
- - - - - 0x003176 02:B166: AA        TAX
- - - - - 0x003177 02:B167: B1 EC     LDA (ram_00EC),Y
- - - - - 0x003179 02:B169: A4 E9     LDY ram_00E9
- - - - - 0x00317B 02:B16B: 20 EA 98  JSR sub_0x0018FA
- - - - - 0x00317E 02:B16E: A9 06     LDA #$06
- - - - - 0x003180 02:B170: 4C BB B1  JMP loc_B1BB

ofs_B173_08:
- - - - - 0x003183 02:B173: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - 0x003186 02:B176: 20 DE B1  JSR sub_B1DE
- - - - - 0x003189 02:B179: AA        TAX
- - - - - 0x00318A 02:B17A: A9 00     LDA #$00
- - - - - 0x00318C 02:B17C: A4 E9     LDY ram_00E9
- - - - - 0x00318E 02:B17E: 20 DF 98  JSR sub_0x0018EF
- - - - - 0x003191 02:B181: A9 05     LDA #$05
- - - - - 0x003193 02:B183: 4C BB B1  JMP loc_B1BB

ofs_B186_09:
- - - - - 0x003196 02:B186: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - 0x003199 02:B189: 20 DE B1  JSR sub_B1DE
- - - - - 0x00319C 02:B18C: AA        TAX
- - - - - 0x00319D 02:B18D: B1 EC     LDA (ram_00EC),Y
- - - - - 0x00319F 02:B18F: A4 E9     LDY ram_00E9
- - - - - 0x0031A1 02:B191: 20 DF 98  JSR sub_0x0018EF
- - - - - 0x0031A4 02:B194: A9 06     LDA #$06
- - - - - 0x0031A6 02:B196: 4C BB B1  JMP loc_B1BB

ofs_B199_0A_запись_в_буфер_с_учетом_кодировки_японских_символов:
C - J - - 0x0031A9 02:B199: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - 0x0031AC 02:B19C: 20 27 9D  JSR sub_0x001D37_запись_в_буфер_с_учетом_кодировки_японских_символов
C - - - - 0x0031AF 02:B19F: A9 03     LDA #$03
C - - - - 0x0031B1 02:B1A1: 4C BB B1  JMP loc_B1BB

ofs_B1A4_0D_очистить_nametable:
C - J - - 0x0031B4 02:B1A4: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x0031B7 02:B1A7: A9 01     LDA #$01
C - - - - 0x0031B9 02:B1A9: 4C BB B1  JMP loc_B1BB

ofs_B1AC_0E_прыжок:
; указать адрес и прыгнуть на него, затем продолжить чтение байтов
C - J - - 0x0031BC 02:B1AC: C8        INY
C - - - - 0x0031BD 02:B1AD: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031BF 02:B1AF: AA        TAX
C - - - - 0x0031C0 02:B1B0: C8        INY
C - - - - 0x0031C1 02:B1B1: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031C3 02:B1B3: 85 ED     STA ram_00ED
C - - - - 0x0031C5 02:B1B5: 86 EC     STX ram_00EC
C - - - - 0x0031C7 02:B1B7: 4C C4 B0  JMP loc_B0C4

loc_B1BB:
C D - - - 0x0031CB 02:B1BB: 18        CLC
C - - - - 0x0031CC 02:B1BC: 65 EC     ADC ram_00EC
C - - - - 0x0031CE 02:B1BE: 85 EC     STA ram_00EC
C - - - - 0x0031D0 02:B1C0: A5 ED     LDA ram_00ED
C - - - - 0x0031D2 02:B1C2: 69 00     ADC #$00
C - - - - 0x0031D4 02:B1C4: 85 ED     STA ram_00ED
C - - - - 0x0031D6 02:B1C6: 4C C4 B0  JMP loc_B0C4

sub_B1C9_прочитать_поинтер:
; следующие 2 байта это младший и старший байты адреса
C - - - - 0x0031D9 02:B1C9: A0 02     LDY #$02
C - - - - 0x0031DB 02:B1CB: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031DD 02:B1CD: AA        TAX
C - - - - 0x0031DE 02:B1CE: 88        DEY
C - - - - 0x0031DF 02:B1CF: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031E1 02:B1D1: A8        TAY
C - - - - 0x0031E2 02:B1D2: 60        RTS

sub_B1D3_прочитать_адрес_для_2006:
C - - - - 0x0031E3 02:B1D3: C8        INY
C - - - - 0x0031E4 02:B1D4: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031E6 02:B1D6: 85 E6     STA ram_00E6
C - - - - 0x0031E8 02:B1D8: C8        INY
C - - - - 0x0031E9 02:B1D9: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031EB 02:B1DB: 85 E7     STA ram_00E7
C - - - - 0x0031ED 02:B1DD: 60        RTS

sub_B1DE:
C - - - - 0x0031EE 02:B1DE: C8        INY
C - - - - 0x0031EF 02:B1DF: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031F1 02:B1E1: 85 E9     STA ram_00E9
C - - - - 0x0031F3 02:B1E3: C8        INY
C - - - - 0x0031F4 02:B1E4: B1 EC     LDA (ram_00EC),Y
C - - - - 0x0031F6 02:B1E6: C8        INY
C - - - - 0x0031F7 02:B1E7: 60        RTS

tbl_B1E8:
- D - - - 0x0031F8 02:B1E8: 81        .byte $81	; <A>
- D - - - 0x0031F9 02:B1E9: C1        .byte $C1	; <デ>
- D - - - 0x0031FA 02:B1EA: 82        .byte $82	; <B>
- D - - - 0x0031FB 02:B1EB: C2        .byte $C2	; <ド>
- D - - - 0x0031FC 02:B1EC: 83        .byte $83	; <C>
- D - - - 0x0031FD 02:B1ED: C3        .byte $C3	; <バ>
- D - - - 0x0031FE 02:B1EE: 84        .byte $84	; <D>
- D - - - 0x0031FF 02:B1EF: C4        .byte $C4	; <ビ>
- D - - - 0x003200 02:B1F0: 85        .byte $85	; <E>
- D - - - 0x003201 02:B1F1: C5        .byte $C5	; <ブ>
- D - - - 0x003202 02:B1F2: 86        .byte $86	; <F>
- D - - - 0x003203 02:B1F3: C6        .byte $C6	; <ベ>
- D - - - 0x003204 02:B1F4: 87        .byte $87	; <G>
- D - - - 0x003205 02:B1F5: 09        .byte $09	; <け>
- D - - - 0x003206 02:B1F6: 49        .byte $49	; <ケ>
- D - - - 0x003207 02:B1F7: 0A        .byte $0A	; <こ>
- D - - - 0x003208 02:B1F8: 4A        .byte $4A	; <コ>
- D - - - 0x003209 02:B1F9: 0B        .byte $0B	; <さ>
- D - - - 0x00320A 02:B1FA: 4B        .byte $4B	; <サ>
- D - - - 0x00320B 02:B1FB: 0C        .byte $0C	; <し>
- D - - - 0x00320C 02:B1FC: 4C        .byte $4C	; <シ>
- - - - - 0x00320D 02:B1FD: 0D        .byte $0D	; <す>
- - - - - 0x00320E 02:B1FE: 4D        .byte $4D	; <ス>
- - - - - 0x00320F 02:B1FF: 0E        .byte $0E	; <せ>
- D - - - 0x003210 02:B200: 4E        .byte $4E	; <セ>
- - - - - 0x003211 02:B201: 0F        .byte $0F	; <そ>
- - - - - 0x003212 02:B202: 89        .byte $89	; <I>
- D - - - 0x003213 02:B203: C9        .byte $C9	; <ぴ>
- - - - - 0x003214 02:B204: 8A        .byte $8A	; <N>

tbl_B205:
- - - - - 0x003215 02:B205: CA        .byte $CA	; <ぷ>
- D - - - 0x003216 02:B206: 8B        .byte $8B	; <K>
- - - - - 0x003217 02:B207: CB        .byte $CB	; <ぺ>
- - - - - 0x003218 02:B208: 8C        .byte $8C	; <M>
- - - - - 0x003219 02:B209: CC        .byte $CC	; <ぽ>
- - - - - 0x00321A 02:B20A: 8D        .byte $8D	; <P>
- - - - - 0x00321B 02:B20B: CD        .byte $CD	; <パ>
- - - - - 0x00321C 02:B20C: 8E        .byte $8E	; <L>
- D - - - 0x00321D 02:B20D: CE        .byte $CE	; <ピ>
- - - - - 0x00321E 02:B20E: 8F        .byte $8F	; <S>
- - - - - 0x00321F 02:B20F: 11        .byte $11	; <ち>
- D - - - 0x003220 02:B210: 51        .byte $51	; <チ>
- - - - - 0x003221 02:B211: 12        .byte $12	; <つ>
- - - - - 0x003222 02:B212: 52        .byte $52	; <ツ>
- D - - - 0x003223 02:B213: 13        .byte $13	; <て>
- D - - - 0x003224 02:B214: 53        .byte $53	; <テ>
- D - - - 0x003225 02:B215: 14        .byte $14	; <と>
- D - - - 0x003226 02:B216: 54        .byte $54	; <ト>
- D - - - 0x003227 02:B217: 15        .byte $15	; <な>
- - - - - 0x003228 02:B218: 55        .byte $55	; <ナ>
- - - - - 0x003229 02:B219: 16        .byte $16	; <に>
- D - - - 0x00322A 02:B21A: 56        .byte $56	; <ニ>
- D - - - 0x00322B 02:B21B: 17        .byte $17	; <ぬ>
- D - - - 0x00322C 02:B21C: 91        .byte $91	; <V>
- D - - - 0x00322D 02:B21D: D1        .byte $D1	; <ポ>
- - - - - 0x00322E 02:B21E: 92        .byte $92	; <W>
- - - - - 0x00322F 02:B21F: D2        .byte $D2
- - - - - 0x003230 02:B220: 93        .byte $93	; <Y>
- - - - - 0x003231 02:B221: D3        .byte $D3
- - - - - 0x003232 02:B222: 94        .byte $94
- - - - - 0x003233 02:B223: D4        .byte $D4
- - - - - 0x003234 02:B224: 95        .byte $95
- - - - - 0x003235 02:B225: D5        .byte $D5
- D - - - 0x003236 02:B226: 96        .byte $96
- D - - - 0x003237 02:B227: D6        .byte $D6
- D - - - 0x003238 02:B228: 97        .byte $97

tbl_B229:
- D - - - 0x003239 02:B229: 01        .byte $01	; <あ>
- D - - - 0x00323A 02:B22A: 04        .byte $04	; <え>
- D - - - 0x00323B 02:B22B: 10        .byte $10	; <た>
- D - - - 0x00323C 02:B22C: 40        .byte $40	; <「>

tbl_B22D:
- D - - - 0x00323D 02:B22D: 00        .byte $00
- D - - - 0x00323E 02:B22E: 08        .byte $08	; <く>
- D - - - 0x00323F 02:B22F: 10        .byte $10	; <た>
- D - - - 0x003240 02:B230: 18        .byte $18	; <ね>
- D - - - 0x003241 02:B231: 20        .byte $20	; <み>
- D - - - 0x003242 02:B232: 30        .byte $30	; <ゃ>
- D - - - 0x003243 02:B233: 38        .byte $38	; <5>
- D - - - 0x003244 02:B234: 40        .byte $40	; <「>
- D - - - 0x003245 02:B235: 48        .byte $48	; <ク>
- D - - - 0x003246 02:B236: 50        .byte $50	; <タ>
- D - - - 0x003247 02:B237: 80        .byte $80
- D - - - 0x003248 02:B238: 88        .byte $88	; <H>
- D - - - 0x003249 02:B239: 90        .byte $90	; <U>
- D - - - 0x00324A 02:B23A: 98        .byte $98
- D - - - 0x00324B 02:B23B: A0        .byte $A0	; <が>
- D - - - 0x00324C 02:B23C: B0        .byte $B0	; <び>
- D - - - 0x00324D 02:B23D: B8        .byte $B8	; <ゴ>
- D - - - 0x00324E 02:B23E: C0        .byte $C0	; <ヅ>
- - - - - 0x00324F 02:B23F: C8        .byte $C8	; <ぱ>
- - - - - 0x003250 02:B240: D0        .byte $D0	; <ペ>

tbl_B241:
- D - - - 0x003251 02:B241: 0A        .byte $0A	; <こ>
- D - - - 0x003252 02:B242: 0B        .byte $0B	; <さ>
- D - - - 0x003253 02:B243: 0C        .byte $0C	; <し>
- D - - - 0x003254 02:B244: 0D        .byte $0D	; <す>
- D - - - 0x003255 02:B245: 0E        .byte $0E	; <せ>
- D - - - 0x003256 02:B246: 10        .byte $10	; <た>
- D - - - 0x003257 02:B247: 11        .byte $11	; <ち>
- D - - - 0x003258 02:B248: 12        .byte $12	; <つ>
- D - - - 0x003259 02:B249: 13        .byte $13	; <て>
- D - - - 0x00325A 02:B24A: 14        .byte $14	; <と>
- D - - - 0x00325B 02:B24B: 4A        .byte $4A	; <コ>
- D - - - 0x00325C 02:B24C: 4B        .byte $4B	; <サ>
- D - - - 0x00325D 02:B24D: 4C        .byte $4C	; <シ>
- D - - - 0x00325E 02:B24E: 4D        .byte $4D	; <ス>
- D - - - 0x00325F 02:B24F: 4E        .byte $4E	; <セ>
- D - - - 0x003260 02:B250: 50        .byte $50	; <タ>
- D - - - 0x003261 02:B251: 51        .byte $51	; <チ>
- D - - - 0x003262 02:B252: 52        .byte $52	; <ツ>
- - - - - 0x003263 02:B253: 53        .byte $53	; <テ>
- - - - - 0x003264 02:B254: 54        .byte $54	; <ト>

tbl_B255:
- D - - - 0x003265 02:B255: 0A        .byte $0A	; <こ>
- D - - - 0x003266 02:B256: 31        .byte $31	; <ゅ>
- D - - - 0x003267 02:B257: 04        .byte $04	; <え>
- D - - - 0x003268 02:B258: 13        .byte $13	; <て>
- D - - - 0x003269 02:B259: 3B        .byte $3B	; <8>
- D - - - 0x00326A 02:B25A: 21        .byte $21	; <む>
- D - - - 0x00326B 02:B25B: 02        .byte $02	; <い>
- D - - - 0x00326C 02:B25C: 1A        .byte $1A	; <は>
- D - - - 0x00326D 02:B25D: 39        .byte $39	; <6>
- D - - - 0x00326E 02:B25E: 06        .byte $06	; <か>
- D - - - 0x00326F 02:B25F: 0F        .byte $0F	; <そ>
- D - - - 0x003270 02:B260: 2A        .byte $2A	; <れ>
- D - - - 0x003271 02:B261: 22        .byte $22	; <め>
- D - - - 0x003272 02:B262: 1C        .byte $1C	; <ふ>
- D - - - 0x003273 02:B263: 09        .byte $09	; <け>
- D - - - 0x003274 02:B264: 11        .byte $11	; <ち>
- D - - - 0x003275 02:B265: 34        .byte $34	; <1>
- D - - - 0x003276 02:B266: 15        .byte $15	; <な>
- D - - - 0x003277 02:B267: 23        .byte $23	; <も>
- D - - - 0x003278 02:B268: 16        .byte $16	; <に>
- D - - - 0x003279 02:B269: 01        .byte $01	; <あ>
- D - - - 0x00327A 02:B26A: 3C        .byte $3C	; <9>
- D - - - 0x00327B 02:B26B: 19        .byte $19	; <の>
- D - - - 0x00327C 02:B26C: 28        .byte $28	; <り>
- D - - - 0x00327D 02:B26D: 30        .byte $30	; <ゃ>
- D - - - 0x00327E 02:B26E: 27        .byte $27	; <ら>
- D - - - 0x00327F 02:B26F: 10        .byte $10	; <た>
- D - - - 0x003280 02:B270: 20        .byte $20	; <み>
- D - - - 0x003281 02:B271: 26        .byte $26	; <よ>
- D - - - 0x003282 02:B272: 03        .byte $03	; <う>
- D - - - 0x003283 02:B273: 2F        .byte $2F	; <っ>
- D - - - 0x003284 02:B274: 0D        .byte $0D	; <す>
- D - - - 0x003285 02:B275: 1D        .byte $1D	; <へ>
- D - - - 0x003286 02:B276: 2B        .byte $2B	; <ろ>
- D - - - 0x003287 02:B277: 05        .byte $05	; <お>
- D - - - 0x003288 02:B278: 2D        .byte $2D	; <を>
- D - - - 0x003289 02:B279: 3E        .byte $3E	; <Jr>
- D - - - 0x00328A 02:B27A: 0E        .byte $0E	; <せ>
- D - - - 0x00328B 02:B27B: 24        .byte $24	; <や>
- D - - - 0x00328C 02:B27C: 2E        .byte $2E	; <ん>
- D - - - 0x00328D 02:B27D: 14        .byte $14	; <と>
- D - - - 0x00328E 02:B27E: 0B        .byte $0B	; <さ>
- D - - - 0x00328F 02:B27F: 07        .byte $07	; <き>
- D - - - 0x003290 02:B280: 35        .byte $35	; <2>
- D - - - 0x003291 02:B281: 1E        .byte $1E	; <ほ>
- D - - - 0x003292 02:B282: 00        .byte $00
- D - - - 0x003293 02:B283: 17        .byte $17	; <ぬ>
- D - - - 0x003294 02:B284: 37        .byte $37	; <4>
- D - - - 0x003295 02:B285: 25        .byte $25	; <ゆ>
- D - - - 0x003296 02:B286: 38        .byte $38	; <5>
- D - - - 0x003297 02:B287: 3D        .byte $3D	; <+>
- D - - - 0x003298 02:B288: 32        .byte $32	; <ょ>
- D - - - 0x003299 02:B289: 08        .byte $08	; <く>
- D - - - 0x00329A 02:B28A: 3A        .byte $3A	; <7>
- D - - - 0x00329B 02:B28B: 1B        .byte $1B	; <ひ>
- D - - - 0x00329C 02:B28C: 0C        .byte $0C	; <し>
- D - - - 0x00329D 02:B28D: 12        .byte $12	; <つ>
- D - - - 0x00329E 02:B28E: 36        .byte $36	; <3>
- D - - - 0x00329F 02:B28F: 2C        .byte $2C	; <わ>
- D - - - 0x0032A0 02:B290: 1F        .byte $1F	; <ま>
- D - - - 0x0032A1 02:B291: 3F        .byte $3F	; <•>
- D - - - 0x0032A2 02:B292: 18        .byte $18	; <ね>
- D - - - 0x0032A3 02:B293: 29        .byte $29	; <る>
- D - - - 0x0032A4 02:B294: 33        .byte $33	; <0>
- D - - - 0x0032A5 02:B295: FF        .byte $FF



tbl_B296_экран_continue:
- D - I - 0x0032A6 02:B296: 05        .byte $05	; <お>
- D - I - 0x0032A7 02:B297: C3 20     .word $20C3
- D - I - 0x0032A9 02:B299: 1B        .byte $1B	; <ひ>
- D - I - 0x0032AA 02:B29A: 89        .byte $89	; <I>

- D - I - 0x0032AB 02:B29B: 05        .byte $05	; <お>
- D - I - 0x0032AC 02:B29C: A3 21     .word $21A3
- D - I - 0x0032AE 02:B29E: 1B        .byte $1B	; <ひ>
- D - I - 0x0032AF 02:B29F: BA        .byte $BA	; <ジ>

- D - I - 0x0032B0 02:B2A0: 05        .byte $05	; <お>
- D - I - 0x0032B1 02:B2A1: 23 23     .word $2323
- D - I - 0x0032B3 02:B2A3: 1B        .byte $1B	; <ひ>
- D - I - 0x0032B4 02:B2A4: 89        .byte $89	; <I>

- D - I - 0x0032B5 02:B2A5: 04        .byte $04	; <え>
- D - I - 0x0032B6 02:B2A6: E2 20     .word $20E2
- D - I - 0x0032B8 02:B2A8: 12        .byte $12	; <つ>
- D - I - 0x0032B9 02:B2A9: 8A        .byte $8A	; <N>

- D - I - 0x0032BA 02:B2AA: 04        .byte $04	; <え>
- D - I - 0x0032BB 02:B2AB: FE 20     .word $20FE
- D - I - 0x0032BD 02:B2AD: 12        .byte $12	; <つ>
- D - I - 0x0032BE 02:B2AE: 8A        .byte $8A	; <N>

- D - I - 0x0032BF 02:B2AF: 00        .byte $00
- D - I - 0x0032C0 02:B2B0: C3 B2     .word off_B2C3_прочерки_для_символов_пароля

- D - I - 0x0032C2 02:B2B2: 0A        .byte $0A	; <こ>
- D - I - 0x0032C3 02:B2B3: AF BC     .word off_BCAF_фраза_пароль_над_символами_пароля

- D - I - 0x0032C5 02:B2B5: 0A        .byte $0A	; <こ>
- D - I - 0x0032C6 02:B2B6: BE BC     .word off_BCBE_фраза_неверный_пароль

- D - I - 0x0032C8 02:B2B8: 04        .byte $04	; <え>
- D - I - 0x0032C9 02:B2B9: E2 24     .word $24E2
- D - I - 0x0032CB 02:B2BB: 08        .byte $08	; <く>
- D - I - 0x0032CC 02:B2BC: 8A        .byte $8A	; <N>

- D - I - 0x0032CD 02:B2BD: 04        .byte $04	; <え>
- D - I - 0x0032CE 02:B2BE: FE 24     .word $24FE
- D - I - 0x0032D0 02:B2C0: 08        .byte $08	; <く>
- D - I - 0x0032D1 02:B2C1: 8A        .byte $8A	; <N>

- D - I - 0x0032D2 02:B2C2: 0F        .byte $0F	; <そ>



off_B2C3_прочерки_для_символов_пароля:
- D - I - 0x0032D3 02:B2C3: 01        .byte $01	; <あ>
- D - I - 0x0032D4 02:B2C4: C2        .byte $C2	; <ド>
- D - I - 0x0032D5 02:B2C5: 20        .byte $20	; <み>
- D - I - 0x0032D6 02:B2C6: 88        .byte $88	; <H>
- D - I - 0x0032D7 02:B2C7: 01        .byte $01	; <あ>
- D - I - 0x0032D8 02:B2C8: DE        .byte $DE
- D - I - 0x0032D9 02:B2C9: 20        .byte $20	; <み>
- D - I - 0x0032DA 02:B2CA: 90        .byte $90	; <U>
- D - I - 0x0032DB 02:B2CB: 01        .byte $01	; <あ>
- D - I - 0x0032DC 02:B2CC: 22        .byte $22	; <め>
- D - I - 0x0032DD 02:B2CD: 23        .byte $23	; <も>
- D - I - 0x0032DE 02:B2CE: 8E        .byte $8E	; <L>
- D - I - 0x0032DF 02:B2CF: 01        .byte $01	; <あ>
- D - I - 0x0032E0 02:B2D0: 3E        .byte $3E	; <Jr>
- D - I - 0x0032E1 02:B2D1: 23        .byte $23	; <も>
- D - I - 0x0032E2 02:B2D2: 93        .byte $93	; <Y>
- D - I - 0x0032E3 02:B2D3: 0B        .byte $0B	; <さ>
- D - I - 0x0032E4 02:B2D4: 2A        .byte $2A	; <れ>
- D - I - 0x0032E5 02:B2D5: 21        .byte $21	; <む>
- D - I - 0x0032E6 02:B2D6: 7D        .byte $7D	; <ー>
- D - I - 0x0032E7 02:B2D7: 7D        .byte $7D	; <ー>
- D - I - 0x0032E8 02:B2D8: 7D        .byte $7D	; <ー>
- D - I - 0x0032E9 02:B2D9: 7D        .byte $7D	; <ー>
- D - I - 0x0032EA 02:B2DA: 7D        .byte $7D	; <ー>
- D - I - 0x0032EB 02:B2DB: 00        .byte $00
- D - I - 0x0032EC 02:B2DC: 7D        .byte $7D	; <ー>
- D - I - 0x0032ED 02:B2DD: 7D        .byte $7D	; <ー>
- D - I - 0x0032EE 02:B2DE: 7D        .byte $7D	; <ー>
- D - I - 0x0032EF 02:B2DF: 7D        .byte $7D	; <ー>
- D - I - 0x0032F0 02:B2E0: 7D        .byte $7D	; <ー>
- D - I - 0x0032F1 02:B2E1: 49        .byte $49	; <ケ>
- D - I - 0x0032F2 02:B2E2: 6A        .byte $6A	; <レ>
- D - I - 0x0032F3 02:B2E3: 21        .byte $21	; <む>
- D - I - 0x0032F4 02:B2E4: 7D        .byte $7D	; <ー>
- D - I - 0x0032F5 02:B2E5: 7D        .byte $7D	; <ー>
- D - I - 0x0032F6 02:B2E6: 7D        .byte $7D	; <ー>
- D - I - 0x0032F7 02:B2E7: 7D        .byte $7D	; <ー>
- D - I - 0x0032F8 02:B2E8: 7D        .byte $7D	; <ー>
- D - I - 0x0032F9 02:B2E9: 00        .byte $00
- D - I - 0x0032FA 02:B2EA: 7D        .byte $7D	; <ー>
- D - I - 0x0032FB 02:B2EB: 7D        .byte $7D	; <ー>
- D - I - 0x0032FC 02:B2EC: 7D        .byte $7D	; <ー>

tbl_B2ED:
- - - - - 0x0032FD 02:B2ED: 00        .byte $00
- D - - - 0x0032FE 02:B2EE: 01        .byte $01	; <あ>
- D - - - 0x0032FF 02:B2EF: FF        .byte $FF
- - - - - 0x003300 02:B2F0: 00        .byte $00
- D - - - 0x003301 02:B2F1: 0D        .byte $0D	; <す>
- - - - - 0x003302 02:B2F2: 0E        .byte $0E	; <せ>
- - - - - 0x003303 02:B2F3: 0C        .byte $0C	; <し>
- - - - - 0x003304 02:B2F4: 00        .byte $00
- D - - - 0x003305 02:B2F5: F3        .byte $F3
- - - - - 0x003306 02:B2F6: F4        .byte $F4
- - - - - 0x003307 02:B2F7: F2        .byte $F2
- - - - - 0x003308 02:B2F8: 00        .byte $00
- - - - - 0x003309 02:B2F9: 00        .byte $00
- - - - - 0x00330A 02:B2FA: 00        .byte $00
- - - - - 0x00330B 02:B2FB: 00        .byte $00
- - - - - 0x00330C 02:B2FC: 00        .byte $00
- D - - - 0x00330D 02:B2FD: 40        .byte $40	; <「>
- D - - - 0x00330E 02:B2FE: 01        .byte $01	; <あ>
- D - - - 0x00330F 02:B2FF: 00        .byte $00
- D - - - 0x003310 02:B300: 50        .byte $50	; <タ>
- D - - - 0x003311 02:B301: 48        .byte $48	; <ク>
- D - - - 0x003312 02:B302: 01        .byte $01	; <あ>
- D - - - 0x003313 02:B303: 00        .byte $00
- D - - - 0x003314 02:B304: 50        .byte $50	; <タ>



tbl_B305_экран_номера_матча:
- D - I - 0x003315 02:B305: 0D        .byte $0D	; <す>

- D - I - 0x003316 02:B306: 05        .byte $05	; <お>
- D - I - 0x003317 02:B307: 45 21     .word $2145
- D - I - 0x003319 02:B309: 16        .byte $16	; <に>
- D - I - 0x00331A 02:B30A: 89        .byte $89	; <I>

- D - I - 0x00331B 02:B30B: 05        .byte $05	; <お>
- D - I - 0x00331C 02:B30C: A5 21     .word $21A5
- D - I - 0x00331E 02:B30E: 16        .byte $16	; <に>
- D - I - 0x00331F 02:B30F: BA        .byte $BA	; <ジ>

- D - I - 0x003320 02:B310: 05        .byte $05	; <お>
- D - I - 0x003321 02:B311: A5 22     .word $22A5
- D - I - 0x003323 02:B313: 16        .byte $16	; <に>
- D - I - 0x003324 02:B314: 89        .byte $89	; <I>

- D - I - 0x003325 02:B315: 04        .byte $04	; <え>
- D - I - 0x003326 02:B316: 64 21     .word $2164
- D - I - 0x003328 02:B318: 0A        .byte $0A	; <こ>
- D - I - 0x003329 02:B319: 8A        .byte $8A	; <N>

- D - I - 0x00332A 02:B31A: 04        .byte $04	; <え>
- D - I - 0x00332B 02:B31B: 7B 21     .word $217B
- D - I - 0x00332D 02:B31D: 0A        .byte $0A	; <こ>
- D - I - 0x00332E 02:B31E: 8A        .byte $8A	; <N>

- D - I - 0x00332F 02:B31F: 04        .byte $04	; <え>
- D - I - 0x003330 02:B320: CF 21     .word $21CF
- D - I - 0x003332 02:B322: 07        .byte $07	; <き>
- D - I - 0x003333 02:B323: BB        .byte $BB	; <ズ>

- D - I - 0x003334 02:B324: 00        .byte $00
- D - I - 0x003335 02:B325: 28 B3     .word off_B328

- D - I - 0x003337 02:B327: 0F        .byte $0F	; <そ>



off_B328:
- D - I - 0x003338 02:B328: 01        .byte $01	; <あ>
- D - I - 0x003339 02:B329: 44        .byte $44	; <エ>
- D - I - 0x00333A 02:B32A: 21        .byte $21	; <む>
- D - I - 0x00333B 02:B32B: 88        .byte $88	; <H>
- D - I - 0x00333C 02:B32C: 01        .byte $01	; <あ>
- D - I - 0x00333D 02:B32D: 5B        .byte $5B	; <ヒ>
- D - I - 0x00333E 02:B32E: 21        .byte $21	; <む>
- D - I - 0x00333F 02:B32F: 90        .byte $90	; <U>
- D - I - 0x003340 02:B330: 01        .byte $01	; <あ>
- D - I - 0x003341 02:B331: A4        .byte $A4	; <ご>
- D - I - 0x003342 02:B332: 22        .byte $22	; <め>
- D - I - 0x003343 02:B333: 8E        .byte $8E	; <L>
- D - I - 0x003344 02:B334: 01        .byte $01	; <あ>
- D - I - 0x003345 02:B335: BB        .byte $BB	; <ズ>
- D - I - 0x003346 02:B336: 22        .byte $22	; <め>
- D - I - 0x003347 02:B337: 93        .byte $93	; <Y>
- D - I - 0x003348 02:B338: 42        .byte $42	; <イ>
- D - I - 0x003349 02:B339: 33        .byte $33	; <0>
- D - I - 0x00334A 02:B33A: 22        .byte $22	; <め>
- D - I - 0x00334B 02:B33B: 91        .byte $91	; <V>
- D - I - 0x00334C 02:B33C: 8F        .byte $8F	; <S>

tbl_B33D:
- D - - - 0x00334D 02:B33D: 30        .byte $30	; <ゃ>
- D - - - 0x00334E 02:B33E: DF        .byte $DF
- D - - - 0x00334F 02:B33F: 02        .byte $02	; <い>
- D - - - 0x003350 02:B340: 78        .byte $78	; <?>
- D - - - 0x003351 02:B341: 38        .byte $38	; <5>
- D - - - 0x003352 02:B342: F1        .byte $F1
- D - - - 0x003353 02:B343: 02        .byte $02	; <い>
- D - - - 0x003354 02:B344: 68        .byte $68	; <リ>
- D - - - 0x003355 02:B345: 38        .byte $38	; <5>
- D - - - 0x003356 02:B346: F4        .byte $F4
- D - - - 0x003357 02:B347: 02        .byte $02	; <い>
- D - - - 0x003358 02:B348: 70        .byte $70	; <ャ>
- D - - - 0x003359 02:B349: 38        .byte $38	; <5>
- D - - - 0x00335A 02:B34A: F5        .byte $F5
- D - - - 0x00335B 02:B34B: 02        .byte $02	; <い>
- D - - - 0x00335C 02:B34C: 78        .byte $78	; <?>
- D - - - 0x00335D 02:B34D: 38        .byte $38	; <5>
- D - - - 0x00335E 02:B34E: F8        .byte $F8
- D - - - 0x00335F 02:B34F: 02        .byte $02	; <い>
- D - - - 0x003360 02:B350: 80        .byte $80
- D - - - 0x003361 02:B351: 38        .byte $38	; <5>
- D - - - 0x003362 02:B352: F9        .byte $F9
- D - - - 0x003363 02:B353: 02        .byte $02	; <い>
- D - - - 0x003364 02:B354: 88        .byte $88	; <H>
- D - - - 0x003365 02:B355: 38        .byte $38	; <5>
- D - - - 0x003366 02:B356: FC        .byte $FC
- D - - - 0x003367 02:B357: 02        .byte $02	; <い>
- D - - - 0x003368 02:B358: 90        .byte $90	; <U>
- D - - - 0x003369 02:B359: 40        .byte $40	; <「>
- D - - - 0x00336A 02:B35A: F3        .byte $F3
- D - - - 0x00336B 02:B35B: 02        .byte $02	; <い>
- D - - - 0x00336C 02:B35C: 68        .byte $68	; <リ>
- D - - - 0x00336D 02:B35D: 40        .byte $40	; <「>
- D - - - 0x00336E 02:B35E: F6        .byte $F6
- D - - - 0x00336F 02:B35F: 02        .byte $02	; <い>
- D - - - 0x003370 02:B360: 70        .byte $70	; <ャ>
- D - - - 0x003371 02:B361: 40        .byte $40	; <「>
- D - - - 0x003372 02:B362: F7        .byte $F7
- D - - - 0x003373 02:B363: 02        .byte $02	; <い>
- D - - - 0x003374 02:B364: 78        .byte $78	; <?>
- D - - - 0x003375 02:B365: 40        .byte $40	; <「>
- D - - - 0x003376 02:B366: FA        .byte $FA
- D - - - 0x003377 02:B367: 02        .byte $02	; <い>
- D - - - 0x003378 02:B368: 80        .byte $80
- D - - - 0x003379 02:B369: 40        .byte $40	; <「>
- D - - - 0x00337A 02:B36A: FB        .byte $FB
- D - - - 0x00337B 02:B36B: 02        .byte $02	; <い>
- D - - - 0x00337C 02:B36C: 88        .byte $88	; <H>
- D - - - 0x00337D 02:B36D: 40        .byte $40	; <「>
- D - - - 0x00337E 02:B36E: FE        .byte $FE
- D - - - 0x00337F 02:B36F: 02        .byte $02	; <い>
- D - - - 0x003380 02:B370: 90        .byte $90	; <U>

tbl_B393:
; номер катсцены тренера, когда просто показывается его рожа
- D - - - 0x0033A3 02:B393: 44        .byte $44	; <エ>
- D - - - 0x0033A4 02:B394: 44        .byte $44	; <エ>
- D - - - 0x0033A5 02:B395: 44        .byte $44	; <エ>
- D - - - 0x0033A6 02:B396: 44        .byte $44	; <エ>
- D - - - 0x0033A7 02:B397: 44        .byte $44	; <エ>
- D - - - 0x0033A8 02:B398: 44        .byte $44	; <エ>
- D - - - 0x0033A9 02:B399: 45        .byte $45	; <オ>
- D - - - 0x0033AA 02:B39A: 45        .byte $45	; <オ>
- D - - - 0x0033AB 02:B39B: 45        .byte $45	; <オ>
- D - - - 0x0033AC 02:B39C: 45        .byte $45	; <オ>
- D - - - 0x0033AD 02:B39D: 45        .byte $45	; <オ>
- D - - - 0x0033AE 02:B39E: 45        .byte $45	; <オ>
- D - - - 0x0033AF 02:B39F: 44        .byte $44	; <エ>
- D - - - 0x0033B0 02:B3A0: 44        .byte $44	; <エ>
- D - - - 0x0033B1 02:B3A1: 44        .byte $44	; <エ>
- D - - - 0x0033B2 02:B3A2: 44        .byte $44	; <エ>
- D - - - 0x0033B3 02:B3A3: 46        .byte $46	; <カ>
- D - - - 0x0033B4 02:B3A4: 46        .byte $46	; <カ>
- D - - - 0x0033B5 02:B3A5: 46        .byte $46	; <カ>
- D - - - 0x0033B6 02:B3A6: 46        .byte $46	; <カ>
- D - - - 0x0033B7 02:B3A7: 46        .byte $46	; <カ>
- D - - - 0x0033B8 02:B3A8: 46        .byte $46	; <カ>
- D - - - 0x0033B9 02:B3A9: 46        .byte $46	; <カ>
- D - - - 0x0033BA 02:B3AA: 46        .byte $46	; <カ>
- D - - - 0x0033BB 02:B3AB: 46        .byte $46	; <カ>
- D - - - 0x0033BC 02:B3AC: 46        .byte $46	; <カ>
- D - - - 0x0033BD 02:B3AD: 46        .byte $46	; <カ>
- D - - - 0x0033BE 02:B3AE: 46        .byte $46	; <カ>
- D - - - 0x0033BF 02:B3AF: 46        .byte $46	; <カ>
- D - - - 0x0033C0 02:B3B0: 46        .byte $46	; <カ>
- D - - - 0x0033C1 02:B3B1: 46        .byte $46	; <カ>
- D - - - 0x0033C2 02:B3B2: 46        .byte $46	; <カ>
- D - - - 0x0033C3 02:B3B3: 46        .byte $46	; <カ>
- - - - - 0x0033C4 02:B3B4: 46        .byte $46	; <カ>

tbl_B3B5:
; номер катсцены в перерыве
- D - - - 0x0033C5 02:B3B5: 47        .byte $47	; <キ>
- D - - - 0x0033C6 02:B3B6: 47        .byte $47	; <キ>
- D - - - 0x0033C7 02:B3B7: 47        .byte $47	; <キ>
- D - - - 0x0033C8 02:B3B8: 47        .byte $47	; <キ>
- D - - - 0x0033C9 02:B3B9: 47        .byte $47	; <キ>
- D - - - 0x0033CA 02:B3BA: 47        .byte $47	; <キ>
- D - - - 0x0033CB 02:B3BB: 49        .byte $49	; <ケ>
- D - - - 0x0033CC 02:B3BC: 49        .byte $49	; <ケ>
- D - - - 0x0033CD 02:B3BD: 49        .byte $49	; <ケ>
- D - - - 0x0033CE 02:B3BE: 49        .byte $49	; <ケ>
- D - - - 0x0033CF 02:B3BF: 49        .byte $49	; <ケ>
- D - - - 0x0033D0 02:B3C0: 49        .byte $49	; <ケ>
- D - - - 0x0033D1 02:B3C1: 47        .byte $47	; <キ>
- D - - - 0x0033D2 02:B3C2: 47        .byte $47	; <キ>
- D - - - 0x0033D3 02:B3C3: 47        .byte $47	; <キ>
- D - - - 0x0033D4 02:B3C4: 47        .byte $47	; <キ>
- D - - - 0x0033D5 02:B3C5: 47        .byte $47	; <キ>
- D - - - 0x0033D6 02:B3C6: 47        .byte $47	; <キ>
- D - - - 0x0033D7 02:B3C7: 47        .byte $47	; <キ>
- D - - - 0x0033D8 02:B3C8: 47        .byte $47	; <キ>
- D - - - 0x0033D9 02:B3C9: 47        .byte $47	; <キ>
- D - - - 0x0033DA 02:B3CA: 47        .byte $47	; <キ>
- D - - - 0x0033DB 02:B3CB: 4B        .byte $4B	; <サ>
- D - - - 0x0033DC 02:B3CC: 4B        .byte $4B	; <サ>
- D - - - 0x0033DD 02:B3CD: 4B        .byte $4B	; <サ>
- D - - - 0x0033DE 02:B3CE: 47        .byte $47	; <キ>
- D - - - 0x0033DF 02:B3CF: 47        .byte $47	; <キ>
- D - - - 0x0033E0 02:B3D0: 47        .byte $47	; <キ>
- D - - - 0x0033E1 02:B3D1: 47        .byte $47	; <キ>
- D - - - 0x0033E2 02:B3D2: 47        .byte $47	; <キ>
- D - - - 0x0033E3 02:B3D3: 47        .byte $47	; <キ>
- D - - - 0x0033E4 02:B3D4: 47        .byte $47	; <キ>
- D - - - 0x0033E5 02:B3D5: 47        .byte $47	; <キ>
- - - - - 0x0033E6 02:B3D6: 47        .byte $47	; <キ>

tbl_B3D7:
; номер катсцены когда тебе сообщают пароль
- D - - - 0x0033E7 02:B3D7: 4D        .byte $4D	; <ス>
- D - - - 0x0033E8 02:B3D8: 4D        .byte $4D	; <ス>
- - - - - 0x0033E9 02:B3D9: 4D        .byte $4D	; <ス>
- - - - - 0x0033EA 02:B3DA: 4D        .byte $4D	; <ス>
- D - - - 0x0033EB 02:B3DB: 4D        .byte $4D	; <ス>
- - - - - 0x0033EC 02:B3DC: 4D        .byte $4D	; <ス>
- D - - - 0x0033ED 02:B3DD: 4F        .byte $4F	; <ソ>
- D - - - 0x0033EE 02:B3DE: 4F        .byte $4F	; <ソ>
- - - - - 0x0033EF 02:B3DF: 4F        .byte $4F	; <ソ>
- D - - - 0x0033F0 02:B3E0: 4F        .byte $4F	; <ソ>
- - - - - 0x0033F1 02:B3E1: 4F        .byte $4F	; <ソ>
- - - - - 0x0033F2 02:B3E2: 4F        .byte $4F	; <ソ>
- - - - - 0x0033F3 02:B3E3: 4D        .byte $4D	; <ス>
- - - - - 0x0033F4 02:B3E4: 4D        .byte $4D	; <ス>
- D - - - 0x0033F5 02:B3E5: 4D        .byte $4D	; <ス>
- - - - - 0x0033F6 02:B3E6: 4D        .byte $4D	; <ス>
- - - - - 0x0033F7 02:B3E7: 4D        .byte $4D	; <ス>
- - - - - 0x0033F8 02:B3E8: 4D        .byte $4D	; <ス>
- - - - - 0x0033F9 02:B3E9: 4D        .byte $4D	; <ス>
- D - - - 0x0033FA 02:B3EA: 4D        .byte $4D	; <ス>
- - - - - 0x0033FB 02:B3EB: 4D        .byte $4D	; <ス>
- D - - - 0x0033FC 02:B3EC: 4D        .byte $4D	; <ス>
- D - - - 0x0033FD 02:B3ED: 51        .byte $51	; <チ>
- D - - - 0x0033FE 02:B3EE: 51        .byte $51	; <チ>
- D - - - 0x0033FF 02:B3EF: 51        .byte $51	; <チ>
- D - - - 0x003400 02:B3F0: 4D        .byte $4D	; <ス>
- D - - - 0x003401 02:B3F1: 4D        .byte $4D	; <ス>
- - - - - 0x003402 02:B3F2: 4D        .byte $4D	; <ス>
- - - - - 0x003403 02:B3F3: 4D        .byte $4D	; <ス>
- - - - - 0x003404 02:B3F4: 4D        .byte $4D	; <ス>
- - - - - 0x003405 02:B3F5: 4D        .byte $4D	; <ス>
- - - - - 0x003406 02:B3F6: 4D        .byte $4D	; <ス>
- - - - - 0x003407 02:B3F7: 4D        .byte $4D	; <ス>
- - - - - 0x003408 02:B3F8: 4D        .byte $4D	; <ス>

tbl_B3F9:
; номер катсцены при повышении уровня
- - - - - 0x003409 02:B3F9: 53        .byte $53	; <テ>
- D - - - 0x00340A 02:B3FA: 53        .byte $53	; <テ>
- D - - - 0x00340B 02:B3FB: 53        .byte $53	; <テ>
- D - - - 0x00340C 02:B3FC: 53        .byte $53	; <テ>
- D - - - 0x00340D 02:B3FD: 53        .byte $53	; <テ>
- D - - - 0x00340E 02:B3FE: 53        .byte $53	; <テ>
- - - - - 0x00340F 02:B3FF: 54        .byte $54	; <ト>
- D - - - 0x003410 02:B400: 54        .byte $54	; <ト>
- D - - - 0x003411 02:B401: 54        .byte $54	; <ト>
- D - - - 0x003412 02:B402: 54        .byte $54	; <ト>
- D - - - 0x003413 02:B403: 54        .byte $54	; <ト>
- D - - - 0x003414 02:B404: 54        .byte $54	; <ト>
- - - - - 0x003415 02:B405: 53        .byte $53	; <テ>
- D - - - 0x003416 02:B406: 53        .byte $53	; <テ>
- D - - - 0x003417 02:B407: 53        .byte $53	; <テ>
- D - - - 0x003418 02:B408: 53        .byte $53	; <テ>
- - - - - 0x003419 02:B409: 53        .byte $53	; <テ>
- D - - - 0x00341A 02:B40A: 53        .byte $53	; <テ>
- D - - - 0x00341B 02:B40B: 53        .byte $53	; <テ>
- D - - - 0x00341C 02:B40C: 53        .byte $53	; <テ>
- D - - - 0x00341D 02:B40D: 53        .byte $53	; <テ>
- D - - - 0x00341E 02:B40E: 53        .byte $53	; <テ>
- D - - - 0x00341F 02:B40F: 55        .byte $55	; <ナ>
- D - - - 0x003420 02:B410: 55        .byte $55	; <ナ>
- D - - - 0x003421 02:B411: 55        .byte $55	; <ナ>
- D - - - 0x003422 02:B412: 53        .byte $53	; <テ>
- D - - - 0x003423 02:B413: 53        .byte $53	; <テ>
- D - - - 0x003424 02:B414: 53        .byte $53	; <テ>
- D - - - 0x003425 02:B415: 53        .byte $53	; <テ>
- D - - - 0x003426 02:B416: 53        .byte $53	; <テ>
- D - - - 0x003427 02:B417: 53        .byte $53	; <テ>
- D - - - 0x003428 02:B418: 53        .byte $53	; <テ>
- D - - - 0x003429 02:B419: 53        .byte $53	; <テ>
- - - - - 0x00342A 02:B41A: 53        .byte $53	; <テ>

tbl_B41B:
; номер катсцены когда игроки мотивируются перед началом игры
- D - - - 0x00342B 02:B41B: 56        .byte $56	; <ニ>
- D - - - 0x00342C 02:B41C: 56        .byte $56	; <ニ>
- D - - - 0x00342D 02:B41D: 56        .byte $56	; <ニ>
- D - - - 0x00342E 02:B41E: 56        .byte $56	; <ニ>
- D - - - 0x00342F 02:B41F: 56        .byte $56	; <ニ>
- D - - - 0x003430 02:B420: 56        .byte $56	; <ニ>
- D - - - 0x003431 02:B421: 57        .byte $57	; <ヌ>
- D - - - 0x003432 02:B422: 57        .byte $57	; <ヌ>
- D - - - 0x003433 02:B423: 57        .byte $57	; <ヌ>
- D - - - 0x003434 02:B424: 57        .byte $57	; <ヌ>
- D - - - 0x003435 02:B425: 57        .byte $57	; <ヌ>
- D - - - 0x003436 02:B426: 57        .byte $57	; <ヌ>
- D - - - 0x003437 02:B427: 56        .byte $56	; <ニ>
- D - - - 0x003438 02:B428: 56        .byte $56	; <ニ>
- D - - - 0x003439 02:B429: 56        .byte $56	; <ニ>
- D - - - 0x00343A 02:B42A: 56        .byte $56	; <ニ>
- D - - - 0x00343B 02:B42B: 58        .byte $58	; <ネ>
- D - - - 0x00343C 02:B42C: 58        .byte $58	; <ネ>
- D - - - 0x00343D 02:B42D: 58        .byte $58	; <ネ>
- D - - - 0x00343E 02:B42E: 58        .byte $58	; <ネ>
- D - - - 0x00343F 02:B42F: 58        .byte $58	; <ネ>
- D - - - 0x003440 02:B430: 58        .byte $58	; <ネ>
- D - - - 0x003441 02:B431: 58        .byte $58	; <ネ>
- D - - - 0x003442 02:B432: 58        .byte $58	; <ネ>
- D - - - 0x003443 02:B433: 58        .byte $58	; <ネ>
- D - - - 0x003444 02:B434: 58        .byte $58	; <ネ>
- D - - - 0x003445 02:B435: 58        .byte $58	; <ネ>
- D - - - 0x003446 02:B436: 58        .byte $58	; <ネ>
- D - - - 0x003447 02:B437: 58        .byte $58	; <ネ>
- D - - - 0x003448 02:B438: 58        .byte $58	; <ネ>
- D - - - 0x003449 02:B439: 58        .byte $58	; <ネ>
- D - - - 0x00344A 02:B43A: 58        .byte $58	; <ネ>
- D - - - 0x00344B 02:B43B: 58        .byte $58	; <ネ>
- - - - - 0x00344C 02:B43C: 58        .byte $58	; <ネ>

tbl_B43D_экран_с_опциями_без_запасных:
; вертикальная полоска слева от имен игроков
- D - I - 0x00344D 02:B43D: 04        .byte $04	; <え>
- D - I - 0x00344E 02:B43E: 84 20     .word $2081
- D - I - 0x003450 02:B440: 16        .byte $16	; <に>
- D - I - 0x003451 02:B441: AA        .byte $AA	; <だ>
; вертикальная полоска справа от имен игроков
- D - I - 0x003452 02:B442: 04        .byte $04	; <え>
- D - I - 0x003453 02:B443: 8D 20     .word $208E
- D - I - 0x003455 02:B445: 16        .byte $16	; <に>
- D - I - 0x003456 02:B446: AB        .byte $AB	; <ぢ>

- D - I - 0x003457 02:B447: 00        .byte $00
- D - I - 0x003458 02:B448: 74 B4     .word off_B474_окно_основных_игроков_1

- D - I - 0x00345A 02:B44A: 00        .byte $00
- D - I - 0x00345B 02:B44B: B3 B4     .word off_B4B3_опции_1

- D - I - 0x00345D 02:B44D: 00        .byte $00
- D - I - 0x00345E 02:B44E: 53 B6     .word off_B653_миникарта
; закончить отрисовку
- D - I - 0x003460 02:B450: 0F        .byte $0F	; <そ>



tbl_B451_экран_с_опциями_с_запасными:
; вертикальная полоска слева от имен основных игроков
- D - I - 0x003461 02:B451: 04        .byte $04	; <え>
- D - I - 0x003462 02:B452: 81 20     .word $2080
- D - I - 0x003464 02:B454: 16        .byte $16	; <に>
- D - I - 0x003465 02:B455: AA        .byte $AA	; <だ>
; вертикальная полоска справа от имен основных игроков
- D - I - 0x003466 02:B456: 04        .byte $04	; <え>
- D - I - 0x003467 02:B457: 8A 20     .word $208A
- D - I - 0x003469 02:B459: 16        .byte $16	; <に>
- D - I - 0x00346A 02:B45A: AB        .byte $AB	; <ぢ>

- D - I - 0x00346F 02:B45F: 00        .byte $00
- D - I - 0x003470 02:B460: 83 B5     .word off_B583_опции_2
; + смещение влево
- D - I - 0x003472 02:B462: 01        .byte $01	; <あ>
- D - I - 0x003473 02:B463: 53 B6     .word off_B653_миникарта
- D - I - 0x003475 02:B465: FB        .byte $FB

- D - I - 0x00346B 02:B45B: 01        .byte $00
- D - I - 0x00346C 02:B45C: 74 B4     .word off_B474_окно_основных_игроков_2
; вертикальная полоска слева от имен запасных игроков
- D - I - 0x003476 02:B466: 04        .byte $04	; <え>
- D - I - 0x003477 02:B467: 97 20     .word $2095
- D - I - 0x003479 02:B469: 16        .byte $16	; <に>
- D - I - 0x00347A 02:B46A: AA        .byte $AA	; <だ>
; вертикальная полоска справа от имен запасных игроков
- D - I - 0x00347B 02:B46B: 04        .byte $04	; <え>
- D - I - 0x00347C 02:B46C: 9E 20     .word $209F
- D - I - 0x00347E 02:B46E: 16        .byte $16	; <に>
- D - I - 0x00347F 02:B46F: AB        .byte $AB	; <ぢ>

- D - I - 0x003480 02:B470: 00        .byte $00
- D - I - 0x003481 02:B471: A1 B6     .word off_B6A1_окно_запасных_игроков

- D - I - 0x003483 02:B473: 0F        .byte $0F	; <そ>



off_B474_окно_основных_игроков_1:
; для сан-паулу и нанкацу
; верхняя обводка
- D - I - 0x003488 02:B478: 0A        .byte $0E
- D - I - 0x003489 02:B479: 64 20     .word $2061
- D - I - 0x00348B 02:B47B: 9C        .byte $9C
- D - I - 0x00348C 02:B47C: A8        .byte $A8
- D - I - 0x00348B 02:B47B: 9C        .byte $A8
- D - I - 0x00348C 02:B47C: A8        .byte $A8
- D - I - 0x00348D 02:B47D: 5C        .byte $00
- D - I - 0x00348E 02:B47E: 6A        .byte $54
- D - I - 0x00348F 02:B47F: 42        .byte $65
- D - I - 0x003490 02:B480: 64        .byte $61
- D - I - 0x003491 02:B481: 7D        .byte $6D
- D - I - 0x003492 02:B482: 00        .byte $00
- D - I - 0x003493 02:B483: A8        .byte $A8
- D - I - 0x003494 02:B484: 9D        .byte $A8
- D - I - 0x003493 02:B483: A8        .byte $A8
- D - I - 0x003494 02:B484: 9D        .byte $9D
; нижняя обводка
- D - I - 0x003495 02:B485: 0A        .byte $0E
- D - I - 0x003496 02:B486: 44 23     .word $2341
- D - I - 0x003498 02:B488: 9E        .byte $9E
- D - I - 0x003499 02:B489: A9        .byte $A9
- D - I - 0x00349A 02:B48A: A9        .byte $A9
- D - I - 0x00349B 02:B48B: A9        .byte $A9
- D - I - 0x00349C 02:B48C: A9        .byte $A9
- D - I - 0x00349D 02:B48D: A9        .byte $A9
- D - I - 0x00349E 02:B48E: A9        .byte $A9
- D - I - 0x00349F 02:B48F: A9        .byte $A9
- D - I - 0x00349C 02:B48C: A9        .byte $A9
- D - I - 0x00349D 02:B48D: A9        .byte $A9
- D - I - 0x00349E 02:B48E: A9        .byte $A9
- D - I - 0x00349F 02:B48F: A9        .byte $A9
- D - I - 0x0034A0 02:B490: A9        .byte $A9
- D - I - 0x0034A1 02:B491: 9F        .byte $9F
; дополнительные цифры для 10 и 11 слева от игроков
- D - I - 0x0034A2 02:B492: 83        .byte $83
- D - I - 0x0034A3 02:B493: A5 20     .word $20A2
- D - I - 0x0034A5 02:B495: 34        .byte $31
- D - I - 0x0034A6 02:B496: 00        .byte $00
- D - I - 0x0034A7 02:B497: 34        .byte $31
; цифры слева от игроков
- D - I - 0x0034A8 02:B498: 93        .byte $93
- D - I - 0x0034A9 02:B499: A6 20     .word $20A3
- D - I - 0x0034AB 02:B49B: 34        .byte $31
- D - I - 0x0034AC 02:B49C: 00        .byte $00
- D - I - 0x0034AD 02:B49D: 33        .byte $30
- D - I - 0x0034AE 02:B49E: 00        .byte $00
- D - I - 0x0034AF 02:B49F: 3C        .byte $39
- D - I - 0x0034B0 02:B4A0: 00        .byte $00
- D - I - 0x0034B1 02:B4A1: 3B        .byte $38
- D - I - 0x0034B2 02:B4A2: 00        .byte $00
- D - I - 0x0034B3 02:B4A3: 3A        .byte $37
- D - I - 0x0034B4 02:B4A4: 00        .byte $00
- D - I - 0x0034B5 02:B4A5: 39        .byte $36
- D - I - 0x0034B6 02:B4A6: 00        .byte $00
- D - I - 0x0034B7 02:B4A7: 38        .byte $35
- D - I - 0x0034B8 02:B4A8: 00        .byte $00
- D - I - 0x0034B9 02:B4A9: 37        .byte $34
- D - I - 0x0034BA 02:B4AA: 00        .byte $00
- D - I - 0x0034BB 02:B4AB: 36        .byte $33
- D - I - 0x0034BC 02:B4AC: 00        .byte $00
- D - I - 0x0034BD 02:B4AD: 35        .byte $32
; GK
- D - I - 0x0034BE 02:B4AE: 42        .byte $42
- D - I - 0x0034BF 02:B4AF: 25 23     .word $2322
- D - I - 0x0034C1 02:B4B1: 87        .byte $47
- D - I - 0x0034C2 02:B4B2: 8B        .byte $4B



off_B474_окно_основных_игроков_2:
; для японии
; верхняя обводка
- D - I - 0x003488 02:B478: 0A        .byte $0B
- D - I - 0x003489 02:B479: 64 20     .word $2060
- D - I - 0x00348B 02:B47B: 9C        .byte $9C
- D - I - 0x00348C 02:B47C: A8        .byte $A8
- D - I - 0x00348D 02:B47D: 5C        .byte $00
- D - I - 0x00348E 02:B47E: 6A        .byte $54
- D - I - 0x00348F 02:B47F: 42        .byte $65
- D - I - 0x003490 02:B480: 64        .byte $61
- D - I - 0x003491 02:B481: 7D        .byte $6D
- D - I - 0x003492 02:B482: 00        .byte $00
- D - I - 0x003493 02:B483: A8        .byte $A8
- D - I - 0x003493 02:B483: A8        .byte $A8
- D - I - 0x003494 02:B484: 9D        .byte $9D
; нижняя обводка
- D - I - 0x003495 02:B485: 0A        .byte $4B
- D - I - 0x003496 02:B486: 44 23     .word $2340
- D - I - 0x003498 02:B488: 9E        .byte $9E
- D - I - 0x003499 02:B489: A9        .byte $A9
- D - I - 0x00349C 02:B48C: A9        .byte $A9
- D - I - 0x00349D 02:B48D: A9        .byte $A9
- D - I - 0x00349E 02:B48E: A9        .byte $A9
- D - I - 0x00349F 02:B48F: A9        .byte $A9
- D - I - 0x00349C 02:B48C: A9        .byte $A9
- D - I - 0x00349D 02:B48D: A9        .byte $A9
- D - I - 0x00349E 02:B48E: A9        .byte $A9
- D - I - 0x0034A0 02:B490: A9        .byte $A9
- D - I - 0x0034A1 02:B491: 9F        .byte $9F



tbl_B4B3:
off_B4B3_опции_1:
; верхняя граница
- D - I - 0x0034C3 02:B4B3: 0D        .byte $0D
- D - I - 0x0034C4 02:B4B4: B0 20     .word $20B0
- D - I - 0x0034C6 02:B4B6: 9C        .byte $9C
- D - I - 0x0034C7 02:B4B7: A8        .byte $A8
- D - I - 0x0034C8 02:B4B8: A8        .byte $A8
- D - I - 0x0034C9 02:B4B9: A8        .byte $A8
- D - I - 0x0034CA 02:B4BA: A8        .byte $A8
- D - I - 0x0034CB 02:B4BB: A8        .byte $A8
- D - I - 0x0034CC 02:B4BC: A8        .byte $A8
- D - I - 0x0034CD 02:B4BD: A8        .byte $A8
- D - I - 0x0034CE 02:B4BE: A8        .byte $A8
- D - I - 0x0034CF 02:B4BF: A8        .byte $A8
- D - I - 0x0034D0 02:B4C0: A8        .byte $A8
- D - I - 0x0034D1 02:B4C1: 9D        .byte $9D
- D - I - 0x0034D2 02:B4C2: 00        .byte $00
; пустая строка
- D - I - 0x0034D3 02:B4C3: 0D        .byte $0D
- D - I - 0x0034D4 02:B4C4: D0 20     .word $20D0
- D - I - 0x0034D6 02:B4C6: AA        .byte $AA
- D - I - 0x0034D7 02:B4C7: 00        .byte $00
- D - I - 0x0034D8 02:B4C8: 00        .byte $00
- D - I - 0x0034D9 02:B4C9: 00        .byte $00
- D - I - 0x0034DA 02:B4CA: 00        .byte $00
- D - I - 0x0034DB 02:B4CB: 00        .byte $00
- D - I - 0x0034DC 02:B4CC: 00        .byte $00
- D - I - 0x0034DD 02:B4CD: 00        .byte $00
- D - I - 0x0034DE 02:B4CE: 00        .byte $00
- D - I - 0x0034DF 02:B4CF: 00        .byte $00
- D - I - 0x0034E0 02:B4D0: 00        .byte $00
- D - I - 0x0034E1 02:B4D1: AB        .byte $AB
- D - I - 0x0034E2 02:B4D2: 00        .byte $00
; расстановка
- D - I - 0x0034E3 02:B4D3: 0D        .byte $0D
- D - I - 0x0034E4 02:B4D4: F0 20     .word $20F0
- D - I - 0x0034E6 02:B4D6: AA        .byte $AA
- D - I - 0x0034E7 02:B4D7: 00        .byte $00
- D - I - 0x0034E8 02:B4D8: 5C        .byte $46
- D - I - 0x0034E9 02:B4D9: 76        .byte $6F
- D - I - 0x0034EA 02:B4DA: 7D        .byte $72
- D - I - 0x0034EB 02:B4DB: 62        .byte $6D
- D - I - 0x0034EC 02:B4DC: 7D        .byte $61
- D - I - 0x0034ED 02:B4DD: 4C        .byte $74
- D - I - 0x0034EE 02:B4DE: 72        .byte $69
- D - I - 0x0034EF 02:B4DF: 6E        .byte $6F
- D - I - 0x0034F0 02:B4E0: 00        .byte $6E
- D - I - 0x0034F1 02:B4E1: AB        .byte $AB
- D - I - 0x0034F2 02:B4E2: 00        .byte $00
; пустая строка
- D - I - 0x0034F3 02:B4E3: 0D        .byte $0D
- D - I - 0x0034F4 02:B4E4: 10 21     .word $2110
- D - I - 0x0034F6 02:B4E6: AA        .byte $AA
- D - I - 0x0034F7 02:B4E7: 00        .byte $00
- D - I - 0x0034F8 02:B4E8: 94        .byte $00
- D - I - 0x0034F9 02:B4E9: 00        .byte $00
- D - I - 0x0034FA 02:B4EA: 00        .byte $00
- D - I - 0x0034FB 02:B4EB: 00        .byte $00
- D - I - 0x0034FC 02:B4EC: 00        .byte $00
- D - I - 0x0034FD 02:B4ED: 00        .byte $00
- D - I - 0x0034FE 02:B4EE: 00        .byte $00
- D - I - 0x0034FF 02:B4EF: 00        .byte $00
- D - I - 0x003500 02:B4F0: 95        .byte $00
- D - I - 0x003501 02:B4F1: AB        .byte $AB
- D - I - 0x003502 02:B4F2: 00        .byte $00
; защита
- D - I - 0x003503 02:B4F3: 0D        .byte $0D
- D - I - 0x003504 02:B4F4: 30 21     .word $2130
- D - I - 0x003506 02:B4F6: AA        .byte $AA
- D - I - 0x003507 02:B4F7: 00        .byte $00
- D - I - 0x003508 02:B4F8: 53        .byte $44
- D - I - 0x003509 02:B4F9: 74        .byte $65
- D - I - 0x00350A 02:B4FA: 5C        .byte $66
- D - I - 0x00350B 02:B4FB: 75        .byte $65
- D - I - 0x00350C 02:B4FC: 6E        .byte $6E
- D - I - 0x00350D 02:B4FD: 4D        .byte $73
- D - I - 0x00350E 02:B4FE: 50        .byte $65
- D - I - 0x00350F 02:B4FF: 42        .byte $00
- D - I - 0x003510 02:B500: 5C        .byte $00
- D - I - 0x003511 02:B501: AB        .byte $AB
- D - I - 0x003512 02:B502: 00        .byte $00
; пустая строка
- D - I - 0x003513 02:B503: 0D        .byte $0D
- D - I - 0x003514 02:B504: 50 21     .word $2150
- D - I - 0x003516 02:B506: AA        .byte $AA
- D - I - 0x003517 02:B507: 00        .byte $00
- D - I - 0x003518 02:B508: 00        .byte $00
- D - I - 0x003519 02:B509: 00        .byte $00
- D - I - 0x00351A 02:B50A: 00        .byte $00
- D - I - 0x00351B 02:B50B: 94        .byte $00
- D - I - 0x00351C 02:B50C: 00        .byte $00
- D - I - 0x00351D 02:B50D: 00        .byte $00
- D - I - 0x00351E 02:B50E: 00        .byte $00
- D - I - 0x00351F 02:B50F: 00        .byte $00
- D - I - 0x003520 02:B510: 00        .byte $00
- D - I - 0x003521 02:B511: AB        .byte $AB
- D - I - 0x003522 02:B512: 00        .byte $00
; замена
- D - I - 0x003523 02:B513: 0D        .byte $0D
- D - I - 0x003524 02:B514: 70 21     .word $2170
- D - I - 0x003526 02:B516: AA        .byte $AA
- D - I - 0x003527 02:B517: 00        .byte $00
- D - I - 0x003528 02:B518: 51        .byte $4C
- D - I - 0x003529 02:B519: 75        .byte $69
- D - I - 0x00352A 02:B51A: 6E        .byte $6E
- D - I - 0x00352B 02:B51B: 4C        .byte $65
- D - I - 0x00352C 02:B51C: 00        .byte $5D
- D - I - 0x00352D 02:B51D: 00        .byte $75
- D - I - 0x00352E 02:B51E: 00        .byte $70
- D - I - 0x00352F 02:B51F: 00        .byte $00
- D - I - 0x003530 02:B520: 00        .byte $00
- D - I - 0x003531 02:B521: AB        .byte $AB
- D - I - 0x003532 02:B522: 00        .byte $00
; пустая строка
- D - I - 0x003533 02:B523: 0D        .byte $0D
- D - I - 0x003534 02:B524: 90 21     .word $2190
- D - I - 0x003536 02:B526: AA        .byte $AA
- D - I - 0x003537 02:B527: 00        .byte $00
- D - I - 0x003538 02:B528: 00        .byte $00
- D - I - 0x003539 02:B529: 94        .byte $00
- D - I - 0x00353A 02:B52A: 00        .byte $00
- D - I - 0x00353B 02:B52B: 00        .byte $00
- D - I - 0x00353C 02:B52C: 00        .byte $00
- D - I - 0x00353D 02:B52D: 00        .byte $00
- D - I - 0x00353E 02:B52E: 00        .byte $00
- D - I - 0x00353F 02:B52F: 00        .byte $00
- D - I - 0x003540 02:B530: 00        .byte $00
- D - I - 0x003541 02:B531: AB        .byte $AB
- D - I - 0x003542 02:B532: 00        .byte $00
; статус
- D - I - 0x003543 02:B533: 0D        .byte $0D
- D - I - 0x003544 02:B534: B0 21     .word $21B0
- D - I - 0x003546 02:B536: AA        .byte $AA
- D - I - 0x003547 02:B537: 00        .byte $00
- D - I - 0x003548 02:B538: 6A        .byte $53
- D - I - 0x003549 02:B539: 5D        .byte $74
- D - I - 0x00354A 02:B53A: 69        .byte $61
- D - I - 0x00354B 02:B53B: 00        .byte $74
- D - I - 0x00354C 02:B53C: 00        .byte $75
- D - I - 0x00354D 02:B53D: 00        .byte $73
- D - I - 0x00354E 02:B53E: 00        .byte $00
- D - I - 0x00354F 02:B53F: 00        .byte $00
- D - I - 0x003550 02:B540: 00        .byte $00
- D - I - 0x003551 02:B541: AB        .byte $AB
- D - I - 0x003552 02:B542: 00        .byte $00
; пустая строка
- D - I - 0x003553 02:B543: 0D        .byte $0D
- D - I - 0x003554 02:B544: D0 21     .word $21D0
- D - I - 0x003556 02:B546: AA        .byte $AA
- D - I - 0x003557 02:B547: 00        .byte $00
- D - I - 0x003558 02:B548: 00        .byte $00
- D - I - 0x003559 02:B549: 00        .byte $00
- D - I - 0x00355A 02:B54A: 00        .byte $00
- D - I - 0x00355B 02:B54B: 00        .byte $00
- D - I - 0x00355C 02:B54C: 00        .byte $00
- D - I - 0x00355D 02:B54D: 00        .byte $00
- D - I - 0x00355E 02:B54E: 00        .byte $00
- D - I - 0x00355F 02:B54F: 00        .byte $00
- D - I - 0x003560 02:B550: 00        .byte $00
- D - I - 0x003561 02:B551: AB        .byte $AB
- D - I - 0x003562 02:B552: 00        .byte $00
; выход
- D - I - 0x003563 02:B553: 0D        .byte $0D
- D - I - 0x003564 02:B554: F0 21     .word $21F0
- D - I - 0x003566 02:B556: AA        .byte $AA
- D - I - 0x003567 02:B557: 00        .byte $00
- D - I - 0x003568 02:B558: 05        .byte $44
- D - I - 0x003569 02:B559: 2C        .byte $6F
- D - I - 0x00356A 02:B55A: 28        .byte $6E
- D - I - 0x00356B 02:B55B: 00        .byte $65
- D - I - 0x00356C 02:B55C: 00        .byte $00
- D - I - 0x00356D 02:B55D: 00        .byte $00
- D - I - 0x00356E 02:B55E: 00        .byte $00
- D - I - 0x00356F 02:B55F: 00        .byte $00
- D - I - 0x003570 02:B560: 00        .byte $00
- D - I - 0x003571 02:B561: AB        .byte $AB
- D - I - 0x003572 02:B562: 00        .byte $00
; нижняя граница окна опций
- D - I - 0x003573 02:B563: 0D        .byte $0D
- D - I - 0x003574 02:B564: 10 22     .word $2210
- D - I - 0x003576 02:B566: 9E        .byte $9E
- D - I - 0x003577 02:B567: A9        .byte $A9
- D - I - 0x003578 02:B568: A9        .byte $A9
- D - I - 0x003579 02:B569: A9        .byte $A9
- D - I - 0x00357A 02:B56A: A9        .byte $A9
- D - I - 0x00357B 02:B56B: A9        .byte $A9
- D - I - 0x00357C 02:B56C: A9        .byte $A9
- D - I - 0x00357D 02:B56D: A9        .byte $A9
- D - I - 0x00357E 02:B56E: A9        .byte $A9
- D - I - 0x00357F 02:B56F: A9        .byte $A9
- D - I - 0x003580 02:B570: A9        .byte $A9
- D - I - 0x003581 02:B571: 9F        .byte $9F
- D - I - 0x003582 02:B572: 00        .byte $00
; пустая строка
- D - I - 0x003583 02:B573: 4D        .byte $4D
- D - I - 0x003584 02:B574: 30 22     .word $2230
- D - I - 0x003586 02:B576: 00        .byte $00
- D - I - 0x003587 02:B577: 00        .byte $00
- D - I - 0x003588 02:B578: 00        .byte $00
- D - I - 0x003589 02:B579: 00        .byte $00
- D - I - 0x00358A 02:B57A: 00        .byte $00
- D - I - 0x00358B 02:B57B: 00        .byte $00
- D - I - 0x00358C 02:B57C: 00        .byte $00
- D - I - 0x00358D 02:B57D: 00        .byte $00
- D - I - 0x00358E 02:B57E: 00        .byte $00
- D - I - 0x00358F 02:B57F: 00        .byte $00
- D - I - 0x003590 02:B580: 00        .byte $00
- D - I - 0x003591 02:B581: 00        .byte $00
- D - I - 0x003592 02:B582: 00        .byte $00



tbl_B583:
off_B583_опции_2:
; верхняя граница
- D - I - 0x003593 02:B583: 0D        .byte $0B
- D - I - 0x003594 02:B584: AB 20     .word $20AB
- D - I - 0x003596 02:B586: 9C        .byte $9C
- D - I - 0x003597 02:B587: A8        .byte $A8
- D - I - 0x003598 02:B588: A8        .byte $A8
- D - I - 0x003599 02:B589: A8        .byte $A8
- D - I - 0x00359A 02:B58A: A8        .byte $A8
- D - I - 0x00359B 02:B58B: A8        .byte $A8
- D - I - 0x00359C 02:B58C: A8        .byte $A8
- D - I - 0x00359D 02:B58D: A8        .byte $A8
- D - I - 0x00359E 02:B58E: A8        .byte $A8
- D - I - 0x0035A1 02:B591: 9D        .byte $9D
- D - I - 0x0035A2 02:B592: AA        .byte $AA
; пустая строка
- D - I - 0x0035A3 02:B593: 0D        .byte $0B
- D - I - 0x0035A4 02:B594: CB 20     .word $20CB
- D - I - 0x0035A6 02:B596: AA        .byte $AA
- D - I - 0x0035A7 02:B597: 00        .byte $00
- D - I - 0x0035A8 02:B598: 00        .byte $00
- D - I - 0x0035A9 02:B599: 00        .byte $00
- D - I - 0x0035AA 02:B59A: 00        .byte $00
- D - I - 0x0035AB 02:B59B: 00        .byte $00
- D - I - 0x0035AC 02:B59C: 00        .byte $00
- D - I - 0x0035AD 02:B59D: 00        .byte $00
- D - I - 0x0035AE 02:B59E: 00        .byte $00
- D - I - 0x0035B1 02:B5A1: AB        .byte $AB
- D - I - 0x0035B2 02:B5A2: AA        .byte $AA
; расстановка
- D - I - 0x0035B3 02:B5A3: 0D        .byte $0B
- D - I - 0x0035B4 02:B5A4: EB 20     .word $20EB
- D - I - 0x0035B6 02:B5A6: AA        .byte $AA
- D - I - 0x0035B7 02:B5A7: 00        .byte $00
- D - I - 0x0035B8 02:B5A8: 5C        .byte $46
- D - I - 0x0035B9 02:B5A9: 76        .byte $6F
- D - I - 0x0035BA 02:B5AA: 7D        .byte $72
- D - I - 0x0035BB 02:B5AB: 62        .byte $6D
- D - I - 0x0035BC 02:B5AC: 7D        .byte $61
- D - I - 0x0035BD 02:B5AD: 4C        .byte $74
- D - I - 0x0035BE 02:B5AE: 72        .byte $5B
- D - I - 0x0035C1 02:B5B1: AB        .byte $AB
- D - I - 0x0035C2 02:B5B2: AA        .byte $AA
; пустая строка
- D - I - 0x0035C3 02:B5B3: 0D        .byte $0B
- D - I - 0x0035C4 02:B5B4: 0B 21     .word $210B
- D - I - 0x0035C6 02:B5B6: AA        .byte $AA
- D - I - 0x0035C7 02:B5B7: 00        .byte $00
- D - I - 0x0035C8 02:B5B8: 94        .byte $00
- D - I - 0x0035C9 02:B5B9: 00        .byte $00
- D - I - 0x0035CA 02:B5BA: 00        .byte $00
- D - I - 0x0035CB 02:B5BB: 00        .byte $00
- D - I - 0x0035CC 02:B5BC: 00        .byte $00
- D - I - 0x0035CD 02:B5BD: 00        .byte $00
- D - I - 0x0035D0 02:B5C0: 95        .byte $00
- D - I - 0x0035D1 02:B5C1: AB        .byte $AB
- D - I - 0x0035D2 02:B5C2: AA        .byte $AA
; защита
- D - I - 0x0035D3 02:B5C3: 0D        .byte $0B
- D - I - 0x0035D4 02:B5C4: 2B 21     .word $212B
- D - I - 0x0035D6 02:B5C6: AA        .byte $AA
- D - I - 0x0035D7 02:B5C7: 00        .byte $00
- D - I - 0x0035D8 02:B5C8: 53        .byte $44
- D - I - 0x0035D9 02:B5C9: 74        .byte $65
- D - I - 0x0035DA 02:B5CA: 5C        .byte $66
- D - I - 0x0035DB 02:B5CB: 75        .byte $65
- D - I - 0x0035DC 02:B5CC: 6E        .byte $6E
- D - I - 0x0035DD 02:B5CD: 4D        .byte $73
- D - I - 0x0035DE 02:B5CE: 50        .byte $65
- D - I - 0x0035E1 02:B5D1: AB        .byte $AB
- D - I - 0x0035E2 02:B5D2: AA        .byte $AA
; пустая строка
- D - I - 0x0035E3 02:B5D3: 0D        .byte $0B
- D - I - 0x0035E4 02:B5D4: 4B 21     .word $214B
- D - I - 0x0035E6 02:B5D6: AA        .byte $AA
- D - I - 0x0035E7 02:B5D7: 00        .byte $00
- D - I - 0x0035E8 02:B5D8: 00        .byte $00
- D - I - 0x0035E9 02:B5D9: 00        .byte $00
- D - I - 0x0035EA 02:B5DA: 00        .byte $00
- D - I - 0x0035EB 02:B5DB: 94        .byte $00
- D - I - 0x0035EC 02:B5DC: 00        .byte $00
- D - I - 0x0035ED 02:B5DD: 00        .byte $00
- D - I - 0x0035EE 02:B5DE: 00        .byte $00
- D - I - 0x0035F1 02:B5E1: AB        .byte $AB
- D - I - 0x0035F2 02:B5E2: AA        .byte $AA
; замена
- D - I - 0x0035F3 02:B5E3: 0D        .byte $0B
- D - I - 0x0035F4 02:B5E4: 6B 21     .word $216B
- D - I - 0x0035F6 02:B5E6: AA        .byte $AA
- D - I - 0x0035F7 02:B5E7: 00        .byte $00
- D - I - 0x0035F8 02:B5E8: 51        .byte $4C
- D - I - 0x0035F9 02:B5E9: 75        .byte $69
- D - I - 0x0035FA 02:B5EA: 6E        .byte $6E
- D - I - 0x0035FB 02:B5EB: 4C        .byte $65
- D - I - 0x0035FC 02:B5EC: 00        .byte $5D
- D - I - 0x0035FD 02:B5ED: 00        .byte $75
- D - I - 0x0035FE 02:B5EE: 00        .byte $70
- D - I - 0x003601 02:B5F1: AB        .byte $AB
- D - I - 0x003602 02:B5F2: AA        .byte $AA
; пустая строка
- D - I - 0x003603 02:B5F3: 0D        .byte $0B
- D - I - 0x003604 02:B5F4: 8B 21     .word $218B
- D - I - 0x003606 02:B5F6: AA        .byte $AA
- D - I - 0x003607 02:B5F7: 00        .byte $00
- D - I - 0x003608 02:B5F8: 00        .byte $00
- D - I - 0x003609 02:B5F9: 94        .byte $00
- D - I - 0x00360A 02:B5FA: 00        .byte $00
- D - I - 0x00360B 02:B5FB: 00        .byte $00
- D - I - 0x00360C 02:B5FC: 00        .byte $00
- D - I - 0x00360D 02:B5FD: 00        .byte $00
- D - I - 0x00360E 02:B5FE: 00        .byte $00
- D - I - 0x003611 02:B601: AB        .byte $AB
- D - I - 0x003612 02:B602: AA        .byte $AA
; статус
- D - I - 0x003613 02:B603: 0D        .byte $0B
- D - I - 0x003614 02:B604: AB 21     .word $21AB
- D - I - 0x003616 02:B606: AA        .byte $AA
- D - I - 0x003617 02:B607: 00        .byte $00
- D - I - 0x003618 02:B608: 6A        .byte $53
- D - I - 0x003619 02:B609: 5D        .byte $74
- D - I - 0x00361A 02:B60A: 69        .byte $61
- D - I - 0x00361B 02:B60B: 00        .byte $74
- D - I - 0x00361C 02:B60C: 00        .byte $75
- D - I - 0x00361D 02:B60D: 00        .byte $73
- D - I - 0x00361E 02:B60E: 00        .byte $00
- D - I - 0x003621 02:B611: AB        .byte $AB
- D - I - 0x003622 02:B612: AA        .byte $AA
; пустая строка
- D - I - 0x003623 02:B613: 0D        .byte $0B
- D - I - 0x003624 02:B614: CB 21     .word $21CB
- D - I - 0x003626 02:B616: AA        .byte $AA
- D - I - 0x003627 02:B617: 00        .byte $00
- D - I - 0x003628 02:B618: 00        .byte $00
- D - I - 0x003629 02:B619: 00        .byte $00
- D - I - 0x00362A 02:B61A: 00        .byte $00
- D - I - 0x00362B 02:B61B: 00        .byte $00
- D - I - 0x00362C 02:B61C: 00        .byte $00
- D - I - 0x00362D 02:B61D: 00        .byte $00
- D - I - 0x00362E 02:B61E: 00        .byte $00
- D - I - 0x003631 02:B621: AB        .byte $AB
- D - I - 0x003632 02:B622: AA        .byte $AA
; выход
- D - I - 0x003633 02:B623: 0D        .byte $0B
- D - I - 0x003634 02:B624: EB 21     .word $21EB
- D - I - 0x003636 02:B626: AA        .byte $AA
- D - I - 0x003637 02:B627: 00        .byte $00
- D - I - 0x003638 02:B628: 05        .byte $44
- D - I - 0x003639 02:B629: 2C        .byte $6F
- D - I - 0x00363A 02:B62A: 28        .byte $6E
- D - I - 0x00363B 02:B62B: 00        .byte $65
- D - I - 0x00363C 02:B62C: 00        .byte $00
- D - I - 0x00363D 02:B62D: 00        .byte $00
- D - I - 0x00363E 02:B62E: 00        .byte $00
- D - I - 0x003641 02:B631: AB        .byte $AB
- D - I - 0x003642 02:B632: AA        .byte $AA
; выход
- D - I - 0x003643 02:B633: 0D        .byte $0B
- D - I - 0x003644 02:B634: 0B 22     .word $220B
- D - I - 0x003646 02:B636: 9E        .byte $9E
- D - I - 0x003647 02:B637: A9        .byte $A9
- D - I - 0x003648 02:B638: A9        .byte $A9
- D - I - 0x003649 02:B639: A9        .byte $A9
- D - I - 0x00364A 02:B63A: A9        .byte $A9
- D - I - 0x00364B 02:B63B: A9        .byte $A9
- D - I - 0x00364C 02:B63C: A9        .byte $A9
- D - I - 0x00364D 02:B63D: A9        .byte $A9
- D - I - 0x00364E 02:B63E: A9        .byte $A9
- D - I - 0x003651 02:B641: 9F        .byte $9F
- D - I - 0x003652 02:B642: AA        .byte $AA
; нижняя граница
- D - I - 0x003653 02:B643: 4D        .byte $4B
- D - I - 0x003654 02:B644: 2B 22     .word $222B
- D - I - 0x003656 02:B646: 00        .byte $00
- D - I - 0x003657 02:B647: 00        .byte $00
- D - I - 0x003658 02:B648: 00        .byte $00
- D - I - 0x003659 02:B649: 00        .byte $00
- D - I - 0x00365A 02:B64A: 00        .byte $00
- D - I - 0x00365B 02:B64B: 00        .byte $00
- D - I - 0x00365C 02:B64C: 00        .byte $00
- D - I - 0x00365D 02:B64D: 00        .byte $00
- D - I - 0x00365E 02:B64E: 00        .byte $00
- D - I - 0x00365F 02:B64F: 00        .byte $00
- D - I - 0x003662 02:B652: AA        .byte $AA



off_B653_миникарта:
- D - I - 0x003663 02:B653: 0A        .byte $0A
- D - I - 0x003664 02:B654: 91 22     .word $2291
- D - I - 0x003666 02:B656: 98        .byte $98
- D - I - 0x003667 02:B657: AC        .byte $AC
- D - I - 0x003668 02:B658: AC        .byte $AC
- D - I - 0x003669 02:B659: AC        .byte $AC
- D - I - 0x00366A 02:B65A: 99        .byte $99
- D - I - 0x00366B 02:B65B: AC        .byte $AC
- D - I - 0x00366C 02:B65C: AC        .byte $AC
- D - I - 0x00366D 02:B65D: AC        .byte $AC
- D - I - 0x00366E 02:B65E: AC        .byte $AC
- D - I - 0x00366F 02:B65F: 99        .byte $99

- D - I - 0x003670 02:B660: 0A        .byte $0A
- D - I - 0x003671 02:B661: B1 22     .word $22B1
- D - I - 0x003673 02:B663: 98        .byte $98
- D - I - 0x003674 02:B664: 99        .byte $99
- D - I - 0x003675 02:B665: A0        .byte $A0
- D - I - 0x003676 02:B666: A0        .byte $A0
- D - I - 0x003677 02:B667: AF        .byte $AF
- D - I - 0x003678 02:B668: A0        .byte $A0
- D - I - 0x003679 02:B669: A0        .byte $A0
- D - I - 0x00367A 02:B66A: A0        .byte $A0
- D - I - 0x00367B 02:B66B: 98        .byte $98
- D - I - 0x00367C 02:B66C: 99        .byte $99

- D - I - 0x00367D 02:B66D: 0A        .byte $0A
- D - I - 0x00367E 02:B66E: D1 22     .word $22D1
- D - I - 0x003680 02:B670: A1        .byte $A1
- D - I - 0x003681 02:B671: AF        .byte $AF
- D - I - 0x003682 02:B672: A0        .byte $A0
- D - I - 0x003683 02:B673: A0        .byte $A0
- D - I - 0x003684 02:B674: A4        .byte $A4
- D - I - 0x003685 02:B675: A5        .byte $A5
- D - I - 0x003686 02:B676: A0        .byte $A0
- D - I - 0x003687 02:B677: A0        .byte $A0
- D - I - 0x003688 02:B678: AE        .byte $AE
- D - I - 0x003689 02:B679: A1        .byte $A1

- D - I - 0x00368A 02:B67A: 0A        .byte $0A
- D - I - 0x00368B 02:B67B: F1 22     .word $22F1
- D - I - 0x00368D 02:B67D: A3        .byte $A3
- D - I - 0x00368E 02:B67E: AF        .byte $AF
- D - I - 0x00368F 02:B67F: A0        .byte $A0
- D - I - 0x003690 02:B680: A0        .byte $A0
- D - I - 0x003691 02:B681: A6        .byte $A6
- D - I - 0x003692 02:B682: A7        .byte $A7
- D - I - 0x003693 02:B683: A0        .byte $A0
- D - I - 0x003694 02:B684: A0        .byte $A0
- D - I - 0x003695 02:B685: AE        .byte $AE
- D - I - 0x003696 02:B686: A3        .byte $A3

- D - I - 0x003697 02:B687: 0A        .byte $0A
- D - I - 0x003698 02:B688: 11 23     .word $2311
- D - I - 0x00369A 02:B68A: 9A        .byte $9A
- D - I - 0x00369B 02:B68B: 9B        .byte $9B
- D - I - 0x00369C 02:B68C: A0        .byte $A0
- D - I - 0x00369D 02:B68D: A0        .byte $A0
- D - I - 0x00369E 02:B68E: AF        .byte $AF
- D - I - 0x00369F 02:B68F: A0        .byte $A0
- D - I - 0x0036A0 02:B690: A0        .byte $A0
- D - I - 0x0036A1 02:B691: A0        .byte $A0
- D - I - 0x0036A2 02:B692: 9A        .byte $9A
- D - I - 0x0036A3 02:B693: 9B        .byte $9B

- D - I - 0x0036A4 02:B694: 4A        .byte $4A
- D - I - 0x0036A5 02:B695: 31 23     .word $2331
- D - I - 0x0036A7 02:B697: 9A        .byte $9A
- D - I - 0x0036A8 02:B698: AD        .byte $AD
- D - I - 0x0036A9 02:B699: AD        .byte $AD
- D - I - 0x0036AA 02:B69A: AD        .byte $AD
- D - I - 0x0036AB 02:B69B: 9B        .byte $9B
- D - I - 0x0036AC 02:B69C: AD        .byte $AD
- D - I - 0x0036AD 02:B69D: AD        .byte $AD
- D - I - 0x0036AE 02:B69E: AD        .byte $AD
- D - I - 0x0036AF 02:B69F: AD        .byte $AD
- D - I - 0x0036B0 02:B6A0: 9B        .byte $9B



off_B6A1_окно_запасных_игроков:
; верхняя обводка
- D - I - 0x0036B5 02:B6A5: 08        .byte $0B
- D - I - 0x0036B6 02:B6A6: 77 20     .word $2075
- D - I - 0x0036B8 02:B6A8: 9C        .byte $9C
- D - I - 0x0036B9 02:B6A9: A8        .byte $A8
- D - I - 0x0036B9 02:B6A9: A8        .byte $00
- D - I - 0x0036BA 02:B6AA: 5D        .byte $42
- D - I - 0x0036BB 02:B6AB: 6E        .byte $65
- D - I - 0x0036BC 02:B6AC: 51        .byte $6E
- D - I - 0x0036BD 02:B6AD: 00        .byte $63
- D - I - 0x0036BE 02:B6AE: A8        .byte $68
- D - I - 0x0036BE 02:B6AE: A8        .byte $00
- D - I - 0x0036BE 02:B6AE: A8        .byte $A8
- D - I - 0x0036BF 02:B6AF: 9D        .byte $9D
; нижняя обводка
- D - I - 0x0036C0 02:B6B0: 48        .byte $4B
- D - I - 0x0036C1 02:B6B1: 57 23     .word $2355
- D - I - 0x0036C3 02:B6B3: 9E        .byte $9E
- D - I - 0x0036C4 02:B6B4: A9        .byte $A9
- D - I - 0x0036C5 02:B6B5: A9        .byte $A9
- D - I - 0x0036C6 02:B6B6: A9        .byte $A9
- D - I - 0x0036C7 02:B6B7: A9        .byte $A9
- D - I - 0x0036C8 02:B6B8: A9        .byte $A9
- D - I - 0x0036C9 02:B6B9: A9        .byte $A9
- D - I - 0x0036C8 02:B6B8: A9        .byte $A9
- D - I - 0x0036C8 02:B6B8: A9        .byte $A9
- D - I - 0x0036C9 02:B6B9: A9        .byte $A9
- D - I - 0x0036CA 02:B6BA: 9F        .byte $9F



tbl_B6BB_название_твоей_команды_в_опциях:
	.word off_0000_сан_паулу
	.word off_0000_нанкацу
	.word off_0000_япония

off_0000_сан_паулу:
- D - I - 0x0036CF 02:B6BF: 49        .byte $49
- D - I - 0x0036D0 02:B6C0: 71 20     .word $2071
- D - I - 0x0036CE 02:B6BE: 95        .byte $53
- D - I - 0x0036CE 02:B6BE: 95        .byte $61
- D - I - 0x0036CE 02:B6BE: 95        .byte $6F
- D - I - 0x0036D3 02:B6C3: 00        .byte $00
- D - I - 0x0036D4 02:B6C4: 4B        .byte $50
- D - I - 0x0036D5 02:B6C5: 6E        .byte $61
- D - I - 0x0036D6 02:B6C6: 5A        .byte $75
- D - I - 0x0036D7 02:B6C7: 43        .byte $6C
- D - I - 0x0036D8 02:B6C8: 6B        .byte $6F

off_0000_нанкацу:
- D - I - 0x0036DB 02:B6CB: 49        .byte $48
- D - I - 0x0036DC 02:B6CC: 71 20     .word $2072
- D - I - 0x0036DE 02:B6CE: B0        .byte $4E
- D - I - 0x0036DF 02:B6CF: 00        .byte $61
- D - I - 0x0036E0 02:B6D0: 15        .byte $6E
- D - I - 0x0036E1 02:B6D1: 2E        .byte $6B
- D - I - 0x0036E2 02:B6D2: 06        .byte $61
- D - I - 0x0036E3 02:B6D3: 12        .byte $74
- D - I - 0x0036E4 02:B6D4: 00        .byte $73
- D - I - 0x0036E5 02:B6D5: 00        .byte $75

off_0000_япония:
- D - I - 0x0036EB 02:B6DB: 01        .byte $45
- D - I - 0x0036EC 02:B6DC: 55 20     .word $2071
- D - I - 0x0036EE 02:B6DE: 95        .byte $4A
- D - I - 0x0036EE 02:B6DE: 95        .byte $61
- D - I - 0x0036EE 02:B6DE: 95        .byte $70
- D - I - 0x0036EE 02:B6DE: 95        .byte $61
- D - I - 0x0036EE 02:B6DE: 95        .byte $6E



tbl_B6EB_расстановка:
; расстановка
- D - I - 0x0036FB 02:B6EB: 0C        .byte $0C
- D - I - 0x0036FC 02:B6EC: F1 20     .word $20F1
- D - I - 0x0036FE 02:B6EE: 9C        .byte $9C
- D - I - 0x0036FF 02:B6EF: 5C        .byte $46
- D - I - 0x003700 02:B6F0: 76        .byte $6F
- D - I - 0x003701 02:B6F1: 7D        .byte $72
- D - I - 0x003702 02:B6F2: 62        .byte $6D
- D - I - 0x003703 02:B6F3: 7D        .byte $61
- D - I - 0x003704 02:B6F4: 4C        .byte $74
- D - I - 0x003705 02:B6F5: 72        .byte $69
- D - I - 0x003706 02:B6F6: 6E        .byte $6F
- D - I - 0x003707 02:B6F7: A8        .byte $6E
- D - I - 0x003708 02:B6F8: A8        .byte $A8
- D - I - 0x003709 02:B6F9: 9D        .byte $9D
; пустая строка
- D - I - 0x00370A 02:B6FA: 0C        .byte $0C
- D - I - 0x00370B 02:B6FB: 11 21     .word $2111
- D - I - 0x00370D 02:B6FD: AA        .byte $AA
- D - I - 0x00370E 02:B6FE: 00        .byte $00
- D - I - 0x00370F 02:B6FF: 00        .byte $00
- D - I - 0x003710 02:B700: 00        .byte $00
- D - I - 0x003711 02:B701: 00        .byte $00
- D - I - 0x003712 02:B702: 00        .byte $00
- D - I - 0x003713 02:B703: 00        .byte $00
- D - I - 0x003714 02:B704: 00        .byte $00
- D - I - 0x003715 02:B705: 00        .byte $00
- D - I - 0x003716 02:B706: 00        .byte $00
- D - I - 0x003717 02:B707: 00        .byte $00
- D - I - 0x003718 02:B708: AB        .byte $AB
; 4-3-3
- D - I - 0x003719 02:B709: 0C        .byte $0C
- D - I - 0x00371A 02:B70A: 31 21     .word $2131
- D - I - 0x00371C 02:B70C: AA        .byte $AA
- D - I - 0x00371D 02:B70D: 00        .byte $00
- D - I - 0x00371E 02:B70E: 37        .byte $34
- D - I - 0x00371F 02:B70F: 77        .byte $7D
- D - I - 0x003720 02:B710: 36        .byte $33
- D - I - 0x003721 02:B711: 77        .byte $7D
- D - I - 0x003722 02:B712: 36        .byte $33
- D - I - 0x003723 02:B713: 00        .byte $00
- D - I - 0x003724 02:B714: 00        .byte $00
- D - I - 0x003725 02:B715: 00        .byte $00
- D - I - 0x003726 02:B716: 00        .byte $00
- D - I - 0x003727 02:B717: AB        .byte $AB
; пустая строка
- D - I - 0x003728 02:B718: 0C        .byte $0C
- D - I - 0x003729 02:B719: 51 21     .word $2151
- D - I - 0x00372B 02:B71B: AA        .byte $AA
- D - I - 0x00372C 02:B71C: 00        .byte $00
- D - I - 0x00372D 02:B71D: 00        .byte $00
- D - I - 0x00372E 02:B71E: 00        .byte $00
- D - I - 0x00372F 02:B71F: 00        .byte $00
- D - I - 0x003730 02:B720: 00        .byte $00
- D - I - 0x003731 02:B721: 00        .byte $00
- D - I - 0x003732 02:B722: 00        .byte $00
- D - I - 0x003733 02:B723: 00        .byte $00
- D - I - 0x003734 02:B724: 00        .byte $00
- D - I - 0x003735 02:B725: 00        .byte $00
- D - I - 0x003736 02:B726: AB        .byte $AB
; 4-4-2
- D - I - 0x003737 02:B727: 0C        .byte $0C
- D - I - 0x003738 02:B728: 71 21     .word $2171
- D - I - 0x00373A 02:B72A: AA        .byte $AA
- D - I - 0x00373B 02:B72B: 00        .byte $00
- D - I - 0x00373C 02:B72C: 37        .byte $34
- D - I - 0x00373D 02:B72D: 77        .byte $7D
- D - I - 0x00373E 02:B72E: 37        .byte $34
- D - I - 0x00373F 02:B72F: 77        .byte $7D
- D - I - 0x003740 02:B730: 35        .byte $32
- D - I - 0x003741 02:B731: 00        .byte $00
- D - I - 0x003742 02:B732: 00        .byte $00
- D - I - 0x003743 02:B733: 00        .byte $00
- D - I - 0x003744 02:B734: 00        .byte $00
- D - I - 0x003745 02:B735: AB        .byte $AB
; пустая строка
- D - I - 0x003746 02:B736: 0C        .byte $0C
- D - I - 0x003747 02:B737: 91 21     .word $2191
- D - I - 0x003749 02:B739: AA        .byte $AA
- D - I - 0x00374A 02:B73A: 00        .byte $00
- D - I - 0x00374B 02:B73B: 00        .byte $00
- D - I - 0x00374C 02:B73C: 00        .byte $00
- D - I - 0x00374D 02:B73D: 00        .byte $00
- D - I - 0x00374E 02:B73E: 00        .byte $00
- D - I - 0x00374F 02:B73F: 00        .byte $00
- D - I - 0x003750 02:B740: 00        .byte $00
- D - I - 0x003751 02:B741: 00        .byte $00
- D - I - 0x003752 02:B742: 00        .byte $00
- D - I - 0x003753 02:B743: 00        .byte $00
- D - I - 0x003754 02:B744: AB        .byte $AB
; 3-5-2
- D - I - 0x003755 02:B745: 0C        .byte $0C
- D - I - 0x003756 02:B746: B1 21     .word $21B1
- D - I - 0x003758 02:B748: AA        .byte $AA
- D - I - 0x003759 02:B749: 00        .byte $00
- D - I - 0x00375A 02:B74A: 36        .byte $33
- D - I - 0x00375B 02:B74B: 77        .byte $7D
- D - I - 0x00375C 02:B74C: 38        .byte $35
- D - I - 0x00375D 02:B74D: 77        .byte $7D
- D - I - 0x00375E 02:B74E: 35        .byte $32
- D - I - 0x00375F 02:B74F: 00        .byte $00
- D - I - 0x003760 02:B750: 00        .byte $00
- D - I - 0x003761 02:B751: 00        .byte $00
- D - I - 0x003762 02:B752: 00        .byte $00
- D - I - 0x003763 02:B753: AB        .byte $AB
; пустая строка
- D - I - 0x003764 02:B754: 0C        .byte $0C
- D - I - 0x003765 02:B755: D1 21     .word $21D1
- D - I - 0x003767 02:B757: AA        .byte $AA
- D - I - 0x003768 02:B758: 00        .byte $00
- D - I - 0x003769 02:B759: 94        .byte $00
- D - I - 0x00376A 02:B75A: 00        .byte $00
- D - I - 0x00376B 02:B75B: 94        .byte $00
- D - I - 0x00376C 02:B75C: 00        .byte $00
- D - I - 0x00376D 02:B75D: 00        .byte $00
- D - I - 0x00376E 02:B75E: 00        .byte $00
- D - I - 0x00376F 02:B75F: 00        .byte $00
- D - I - 0x003770 02:B760: 95        .byte $00
- D - I - 0x003771 02:B761: 00        .byte $00
- D - I - 0x003772 02:B762: AB        .byte $AB
; бразильская
- D - I - 0x003773 02:B763: 0C        .byte $0C
- D - I - 0x003774 02:B764: F1 21     .word $21F1
- D - I - 0x003776 02:B766: AA        .byte $AA
- D - I - 0x003777 02:B767: 00        .byte $00
- D - I - 0x003778 02:B768: 5C        .byte $42
- D - I - 0x003779 02:B769: 67        .byte $72
- D - I - 0x00377A 02:B76A: 4C        .byte $61
- D - I - 0x00377B 02:B76B: 69        .byte $7A
- D - I - 0x00377C 02:B76C: 00        .byte $69
- D - I - 0x00377D 02:B76D: 50        .byte $6C
- D - I - 0x00377E 02:B76E: 42        .byte $00
- D - I - 0x00377F 02:B76F: 5C        .byte $00
- D - I - 0x003780 02:B770: 00        .byte $00
- D - I - 0x003781 02:B771: AB        .byte $AB
; тактика
- D - I - 0x003782 02:B772: 0C        .byte $0C
- D - I - 0x003783 02:B773: 11 22     .word $2211
- D - I - 0x003785 02:B775: AA        .byte $AA
- D - I - 0x003786 02:B776: 00        .byte $00
- D - I - 0x003787 02:B777: 00        .byte $00
- D - I - 0x003788 02:B778: 00        .byte $74
- D - I - 0x003789 02:B779: 00        .byte $61
- D - I - 0x00378A 02:B77A: 00        .byte $63
- D - I - 0x00378B 02:B77B: 00        .byte $74
- D - I - 0x00378C 02:B77C: 00        .byte $69
- D - I - 0x00378D 02:B77D: 00        .byte $63
- D - I - 0x00378E 02:B77E: 00        .byte $73
- D - I - 0x00378F 02:B77F: 00        .byte $00
- D - I - 0x003790 02:B780: AB        .byte $AB
; нижняя граница
- D - I - 0x003791 02:B781: 4C        .byte $4C
- D - I - 0x003792 02:B782: 31 22     .word $2231
- D - I - 0x003794 02:B784: 9E        .byte $9E
- D - I - 0x003795 02:B785: A9        .byte $A9
- D - I - 0x003796 02:B786: A9        .byte $A9
- D - I - 0x003797 02:B787: A9        .byte $A9
- D - I - 0x003798 02:B788: A9        .byte $A9
- D - I - 0x003799 02:B789: A9        .byte $A9
- D - I - 0x00379A 02:B78A: A9        .byte $A9
- D - I - 0x00379B 02:B78B: A9        .byte $A9
- D - I - 0x00379C 02:B78C: A9        .byte $A9
- D - I - 0x00379D 02:B78D: A9        .byte $A9
- D - I - 0x00379E 02:B78E: A9        .byte $A9
- D - I - 0x00379F 02:B78F: 9F        .byte $9F



tbl_B790_защита:
; защита
- D - I - 0x0037AC 02:B79C: 0C        .byte $0C
- D - I - 0x0037AD 02:B79D: 31 21     .word $2131
- D - I - 0x0037AF 02:B79F: 9C        .byte $9C
- D - I - 0x0037B0 02:B7A0: 53        .byte $44
- D - I - 0x0037B1 02:B7A1: 74        .byte $65
- D - I - 0x0037B2 02:B7A2: 5C        .byte $66
- D - I - 0x0037B3 02:B7A3: 75        .byte $65
- D - I - 0x0037B4 02:B7A4: 6E        .byte $6E
- D - I - 0x0037B5 02:B7A5: 4D        .byte $73
- D - I - 0x0037B6 02:B7A6: 50        .byte $65
- D - I - 0x0037B7 02:B7A7: 42        .byte $A8
- D - I - 0x0037B8 02:B7A8: 5C        .byte $A8
- D - I - 0x0037B9 02:B7A9: A8        .byte $A8
- D - I - 0x0037BA 02:B7AA: 9D        .byte $9D
; пустая строка
- D - I - 0x0037BB 02:B7AB: 0C        .byte $0C
- D - I - 0x0037BC 02:B7AC: 51 21     .word $2151
- D - I - 0x0037BE 02:B7AE: AA        .byte $AA
- D - I - 0x0037BF 02:B7AF: 00        .byte $00
- D - I - 0x0037C0 02:B7B0: 00        .byte $00
- D - I - 0x0037C1 02:B7B1: 00        .byte $00
- D - I - 0x0037C2 02:B7B2: 00        .byte $00
- D - I - 0x0037C3 02:B7B3: 00        .byte $00
- D - I - 0x0037C4 02:B7B4: 00        .byte $00
- D - I - 0x0037C5 02:B7B5: 00        .byte $00
- D - I - 0x0037C6 02:B7B6: 95        .byte $00
- D - I - 0x0037C7 02:B7B7: 00        .byte $00
- D - I - 0x0037C8 02:B7B8: 00        .byte $00
- D - I - 0x0037C9 02:B7B9: AB        .byte $AB
; normal
- D - I - 0x0037CA 02:B7BA: 0C        .byte $0C
- D - I - 0x0037CB 02:B7BB: 71 21     .word $2171
- D - I - 0x0037CD 02:B7BD: AA        .byte $AA
- D - I - 0x0037CE 02:B7BE: 00        .byte $00
- D - I - 0x0037CF 02:B7BF: 59        .byte $4E
- D - I - 0x0037D0 02:B7C0: 7D        .byte $6F
- D - I - 0x0037D1 02:B7C1: 5F        .byte $72
- D - I - 0x0037D2 02:B7C2: 69        .byte $6D
- D - I - 0x0037D3 02:B7C3: 50        .byte $61
- D - I - 0x0037D4 02:B7C4: 42        .byte $6C
- D - I - 0x0037D5 02:B7C5: 5C        .byte $00
- D - I - 0x0037D6 02:B7C6: 00        .byte $00
- D - I - 0x0037D7 02:B7C7: 00        .byte $00
- D - I - 0x0037D8 02:B7C8: AB        .byte $AB
; пустая строка
- D - I - 0x0037D9 02:B7C9: 0C        .byte $0C
- D - I - 0x0037DA 02:B7CA: 91 21     .word $2191
- D - I - 0x0037DC 02:B7CC: AA        .byte $AA
- D - I - 0x0037DD 02:B7CD: 00        .byte $00
- D - I - 0x0037DE 02:B7CE: 95        .byte $00
- D - I - 0x0037DF 02:B7CF: 00        .byte $00
- D - I - 0x0037E0 02:B7D0: 00        .byte $00
- D - I - 0x0037E1 02:B7D1: 00        .byte $00
- D - I - 0x0037E2 02:B7D2: 00        .byte $00
- D - I - 0x0037E3 02:B7D3: 95        .byte $00
- D - I - 0x0037E4 02:B7D4: 00        .byte $00
- D - I - 0x0037E5 02:B7D5: 00        .byte $00
- D - I - 0x0037E6 02:B7D6: 00        .byte $00
- D - I - 0x0037E7 02:B7D7: AB        .byte $AB
; press
- D - I - 0x0037E8 02:B7D8: 0C        .byte $0C
- D - I - 0x0037E9 02:B7D9: B1 21     .word $21B1
- D - I - 0x0037EB 02:B7DB: AA        .byte $AA
- D - I - 0x0037EC 02:B7DC: 00        .byte $00
- D - I - 0x0037ED 02:B7DD: 5C        .byte $50
- D - I - 0x0037EE 02:B7DE: 6A        .byte $72
- D - I - 0x0037EF 02:B7DF: 4D        .byte $65
- D - I - 0x0037F0 02:B7E0: 50        .byte $73
- D - I - 0x0037F1 02:B7E1: 42        .byte $73
- D - I - 0x0037F2 02:B7E2: 5C        .byte $00
- D - I - 0x0037F3 02:B7E3: 00        .byte $00
- D - I - 0x0037F4 02:B7E4: 00        .byte $00
- D - I - 0x0037F5 02:B7E5: 00        .byte $00
- D - I - 0x0037F6 02:B7E6: AB        .byte $AB
; пустая строка
- D - I - 0x0037F7 02:B7E7: 0C        .byte $0C
- D - I - 0x0037F8 02:B7E8: D1 21     .word $21D1
- D - I - 0x0037FA 02:B7EA: AA        .byte $AA
- D - I - 0x0037FB 02:B7EB: 00        .byte $00
- D - I - 0x0037FC 02:B7EC: 00        .byte $00
- D - I - 0x0037FD 02:B7ED: 00        .byte $00
- D - I - 0x0037FE 02:B7EE: 00        .byte $00
- D - I - 0x0037FF 02:B7EF: 00        .byte $00
- D - I - 0x003800 02:B7F0: 00        .byte $00
- D - I - 0x003801 02:B7F1: 00        .byte $00
- D - I - 0x003802 02:B7F2: 00        .byte $00
- D - I - 0x003803 02:B7F3: 95        .byte $00
- D - I - 0x003804 02:B7F4: 00        .byte $00
- D - I - 0x003805 02:B7F5: AB        .byte $AB
; counter
- D - I - 0x003806 02:B7F6: 0C        .byte $0C
- D - I - 0x003807 02:B7F7: F1 21     .word $21F1
- D - I - 0x003809 02:B7F9: AA        .byte $AA
- D - I - 0x00380A 02:B7FA: 00        .byte $00
- D - I - 0x00380B 02:B7FB: 46        .byte $43
- D - I - 0x00380C 02:B7FC: 43        .byte $6F
- D - I - 0x00380D 02:B7FD: 6E        .byte $75
- D - I - 0x00380E 02:B7FE: 50        .byte $6E
- D - I - 0x00380F 02:B7FF: 7D        .byte $74
- D - I - 0x003810 02:B800: 50        .byte $65
- D - I - 0x003811 02:B801: 42        .byte $72
- D - I - 0x003812 02:B802: 5C        .byte $00
- D - I - 0x003813 02:B803: 00        .byte $00
- D - I - 0x003814 02:B804: AB        .byte $AB
; пустая строка
- D - I - 0x003815 02:B805: 0C        .byte $0C
- D - I - 0x003816 02:B806: 11 22     .word $2211
- D - I - 0x003818 02:B808: AA        .byte $AA
- D - I - 0x003819 02:B809: 00        .byte $00
- D - I - 0x00381A 02:B80A: 00        .byte $00
- D - I - 0x00381B 02:B80B: 00        .byte $00
- D - I - 0x00381C 02:B80C: 00        .byte $00
- D - I - 0x00381D 02:B80D: 00        .byte $00
- D - I - 0x00381E 02:B80E: 00        .byte $00
- D - I - 0x00381F 02:B80F: 00        .byte $00
- D - I - 0x003820 02:B810: 00        .byte $00
- D - I - 0x003821 02:B811: 00        .byte $00
- D - I - 0x003822 02:B812: 00        .byte $00
- D - I - 0x003823 02:B813: AB        .byte $AB
; нижняя граница
- D - I - 0x003824 02:B814: 4C        .byte $4C
- D - I - 0x003825 02:B815: 31 22     .word $2231
- D - I - 0x003827 02:B817: 9E        .byte $9E
- D - I - 0x003828 02:B818: A9        .byte $A9
- D - I - 0x003829 02:B819: A9        .byte $A9
- D - I - 0x00382A 02:B81A: A9        .byte $A9
- D - I - 0x00382B 02:B81B: A9        .byte $A9
- D - I - 0x00382C 02:B81C: A9        .byte $A9
- D - I - 0x00382D 02:B81D: A9        .byte $A9
- D - I - 0x00382E 02:B81E: A9        .byte $A9
- D - I - 0x00382F 02:B81F: A9        .byte $A9
- D - I - 0x003830 02:B820: A9        .byte $A9
- D - I - 0x003831 02:B821: A9        .byte $A9
- D - I - 0x003832 02:B822: 9F        .byte $9F



tbl_B823:
- D - - - 0x003833 02:B823: 1C        .byte $1C	; <ふ>
- D - - - 0x003834 02:B824: 1D        .byte $1D	; <へ>
- D - - - 0x003835 02:B825: 1E        .byte $1E	; <ほ>
- D - - - 0x003836 02:B826: 1F        .byte $1F	; <ま>
- D - - - 0x003837 02:B827: 30        .byte $30	; <ゃ>
- D - - - 0x003838 02:B828: 31        .byte $31	; <ゅ>
- D - - - 0x003839 02:B829: 32        .byte $32	; <ょ>
- D - - - 0x00383A 02:B82A: 33        .byte $33	; <0>
- D - - - 0x00383B 02:B82B: 34        .byte $34	; <1>
- D - - - 0x00383C 02:B82C: 35        .byte $35	; <2>

tbl_B82D:
- D - - - 0x00383D 02:B82D: 00        .byte off_B831 - tbl_B831
- D - - - 0x00383E 02:B82E: 14        .byte off_B845 - tbl_B831
- D - - - 0x00383F 02:B82F: 28        .byte off_B859 - tbl_B831
- D - - - 0x003840 02:B830: 3C        .byte off_B86D - tbl_B831

tbl_B831:
off_B831:
- D - - - 0x003841 02:B831: A0        .byte $A0	; <が>
- D - - - 0x003842 02:B832: A0        .byte $A0	; <が>
- D - - - 0x003843 02:B833: C8        .byte $C8	; <ぱ>
- D - - - 0x003844 02:B834: A0        .byte $A0	; <が>
- D - - - 0x003845 02:B835: B4        .byte $B4	; <ガ>
- D - - - 0x003846 02:B836: A0        .byte $A0	; <が>
- D - - - 0x003847 02:B837: B4        .byte $B4	; <ガ>
- D - - - 0x003848 02:B838: 98        .byte $98
- D - - - 0x003849 02:B839: A8        .byte $A8	; <ぜ>
- D - - - 0x00384A 02:B83A: B0        .byte $B0	; <び>
- D - - - 0x00384B 02:B83B: C8        .byte $C8	; <ぱ>
- D - - - 0x00384C 02:B83C: C0        .byte $C0	; <ヅ>
- D - - - 0x00384D 02:B83D: C0        .byte $C0	; <ヅ>
- D - - - 0x00384E 02:B83E: B0        .byte $B0	; <び>
- D - - - 0x00384F 02:B83F: B4        .byte $B4	; <ガ>
- D - - - 0x003850 02:B840: C0        .byte $C0	; <ヅ>
- D - - - 0x003851 02:B841: B4        .byte $B4	; <ガ>
- D - - - 0x003852 02:B842: B0        .byte $B0	; <び>
- D - - - 0x003853 02:B843: A0        .byte $A0	; <が>
- D - - - 0x003854 02:B844: C0        .byte $C0	; <ヅ>
off_B845:
- D - - - 0x003855 02:B845: A0        .byte $A0	; <が>
- D - - - 0x003856 02:B846: 98        .byte $98
- D - - - 0x003857 02:B847: C8        .byte $C8	; <ぱ>
- D - - - 0x003858 02:B848: 98        .byte $98
- D - - - 0x003859 02:B849: B4        .byte $B4	; <ガ>
- D - - - 0x00385A 02:B84A: 98        .byte $98
- D - - - 0x00385B 02:B84B: B4        .byte $B4	; <ガ>
- D - - - 0x00385C 02:B84C: 90        .byte $90	; <U>
- D - - - 0x00385D 02:B84D: A4        .byte $A4	; <ご>
- D - - - 0x00385E 02:B84E: B0        .byte $B0	; <び>
- D - - - 0x00385F 02:B84F: C4        .byte $C4	; <ビ>
- D - - - 0x003860 02:B850: B0        .byte $B0	; <び>
- D - - - 0x003861 02:B851: B8        .byte $B8	; <ゴ>
- D - - - 0x003862 02:B852: A8        .byte $A8	; <ぜ>
- D - - - 0x003863 02:B853: BC        .byte $BC	; <ゼ>
- D - - - 0x003864 02:B854: C0        .byte $C0	; <ヅ>
- D - - - 0x003865 02:B855: B0        .byte $B0	; <び>
- D - - - 0x003866 02:B856: A8        .byte $A8	; <ぜ>
- D - - - 0x003867 02:B857: AC        .byte $AC	; <づ>
- D - - - 0x003868 02:B858: C0        .byte $C0	; <ヅ>
off_B859:
- D - - - 0x003869 02:B859: A0        .byte $A0	; <が>
- D - - - 0x00386A 02:B85A: 98        .byte $98
- D - - - 0x00386B 02:B85B: C8        .byte $C8	; <ぱ>
- D - - - 0x00386C 02:B85C: 98        .byte $98
- D - - - 0x00386D 02:B85D: B4        .byte $B4	; <ガ>
- D - - - 0x00386E 02:B85E: 98        .byte $98
- D - - - 0x00386F 02:B85F: AC        .byte $AC	; <づ>
- D - - - 0x003870 02:B860: A8        .byte $A8	; <ぜ>
- D - - - 0x003871 02:B861: A4        .byte $A4	; <ご>
- D - - - 0x003872 02:B862: B0        .byte $B0	; <び>
- D - - - 0x003873 02:B863: C4        .byte $C4	; <ビ>
- D - - - 0x003874 02:B864: B0        .byte $B0	; <び>
- D - - - 0x003875 02:B865: BC        .byte $BC	; <ゼ>
- D - - - 0x003876 02:B866: A8        .byte $A8	; <ぜ>
- D - - - 0x003877 02:B867: BC        .byte $BC	; <ゼ>
- D - - - 0x003878 02:B868: C0        .byte $C0	; <ヅ>
- D - - - 0x003879 02:B869: B4        .byte $B4	; <ガ>
- D - - - 0x00387A 02:B86A: B0        .byte $B0	; <び>
- D - - - 0x00387B 02:B86B: AC        .byte $AC	; <づ>
- D - - - 0x00387C 02:B86C: C0        .byte $C0	; <ヅ>
off_B86D:
- D - - - 0x00387D 02:B86D: A0        .byte $A0	; <が>
- D - - - 0x00387E 02:B86E: 98        .byte $98
- D - - - 0x00387F 02:B86F: C8        .byte $C8	; <ぱ>
- D - - - 0x003880 02:B870: 98        .byte $98
- D - - - 0x003881 02:B871: B0        .byte $B0	; <び>
- D - - - 0x003882 02:B872: 98        .byte $98
- D - - - 0x003883 02:B873: B8        .byte $B8	; <ゴ>
- D - - - 0x003884 02:B874: 98        .byte $98
- D - - - 0x003885 02:B875: B4        .byte $B4	; <ガ>
- D - - - 0x003886 02:B876: A8        .byte $A8	; <ぜ>
- D - - - 0x003887 02:B877: C8        .byte $C8	; <ぱ>
- D - - - 0x003888 02:B878: C0        .byte $C0	; <ヅ>
- D - - - 0x003889 02:B879: C0        .byte $C0	; <ヅ>
- D - - - 0x00388A 02:B87A: A8        .byte $A8	; <ぜ>
- D - - - 0x00388B 02:B87B: B4        .byte $B4	; <ガ>
- D - - - 0x00388C 02:B87C: C0        .byte $C0	; <ヅ>
- D - - - 0x00388D 02:B87D: AC        .byte $AC	; <づ>
- D - - - 0x00388E 02:B87E: B8        .byte $B8	; <ゴ>
- D - - - 0x00388F 02:B87F: A8        .byte $A8	; <ぜ>
- D - - - 0x003890 02:B880: A8        .byte $A8	; <ぜ>



tbl_B881_экран_со_списком_игроков:
; верхняя синяя полоска
- D - I - 0x003891 02:B881: 05        .byte $05	; <お>
- D - I - 0x003892 02:B882: 62 20     .word $2062
- D - I - 0x003894 02:B884: 1B        .byte $1C	; <ひ>
- D - I - 0x003895 02:B885: 89        .byte $8E	; <I>
; нижняя синяя полоска
- D - I - 0x003896 02:B886: 05        .byte $05	; <お>
- D - I - 0x003897 02:B887: 62 23     .word $2362
- D - I - 0x003899 02:B889: 1B        .byte $1C	; <ひ>
- D - I - 0x00389A 02:B88A: 89        .byte $8E	; <I>
; левая синяя полоска
- D - I - 0x00389B 02:B88B: 04        .byte $04	; <え>
- D - I - 0x00389C 02:B88C: 81 20     .word $2081
- D - I - 0x00389E 02:B88E: 17        .byte $17	; <ぬ>
- D - I - 0x00389F 02:B88F: 8A        .byte $8F	; <N>
; правая синяя полоска
- D - I - 0x0038A0 02:B890: 04        .byte $04	; <え>
- D - I - 0x0038A1 02:B891: 9D 20     .word $209E
- D - I - 0x0038A3 02:B893: 17        .byte $17	; <ぬ>
- D - I - 0x0038A4 02:B894: 8A        .byte $8F	; <N>
; bzk возможно можно обойтись без этой "подпрограммы", но при простом удалении и перемещении сюда зависает
- D - I - 0x0038A5 02:B895: 00        .byte $00
- D - I - 0x0038A6 02:B896: 99 B8     .word off_B899_углы

- D - I - 0x0038A8 02:B898: 0F        .byte $0F	; <そ>



off_B899_углы:
; левый верхний угол
- D - I - 0x0038A9 02:B899: 01        .byte $01
- D - I - 0x0038AA 02:B89A: 61 20     .word $2061
- D - I - 0x0038AC 02:B89C: 88        .byte $90
; правый верхний угол
- D - I - 0x0038B1 02:B8A1: 01        .byte $01
- D - I - 0x0038B2 02:B8A2: 7D 20     .word $207E
- D - I - 0x0038B4 02:B8A4: 90        .byte $91
; левый нижний угол
- D - I - 0x0038AD 02:B89D: 01        .byte $01
- D - I - 0x0038AE 02:B89E: 61 23     .word $2361
- D - I - 0x0038B0 02:B8A0: 8E        .byte $92
; правый нижний угол
- D - I - 0x0038B5 02:B8A5: 41        .byte $41
- D - I - 0x0038B6 02:B8A6: 7D 23     .word $237E
- D - I - 0x0038B8 02:B8A8: 93        .byte $93



tbl_B8A9_экран_статов_полевого:
; очистить nametable
- D - I - 0x0038B9 02:B8A9: 0D        .byte $0D

- D - I - 0x0038BA 02:B8AA: 0A        .byte $00
- D - I - 0x0038BB 02:B8AB: 4E BF     .word off_BF4E_названия_действий_полевого
; прыжок
- D - I - 0x0038BD 02:B8AD: 0E        .byte $0E
- D - I - 0x0038BE 02:B8AE: B4 B8     .word off_B8B4_оформление_окон



tbl_B8B0_экран_статов_кипера:
; очистить nametable
- D - I - 0x0038C0 02:B8B0: 0D        .byte $0D

- D - I - 0x0038C1 02:B8B1: 0A        .byte $00
- D - I - 0x0038C2 02:B8B2: BB BF     .word off_BFBB_названия_действий_кипера



off_B8B4_оформление_окон:
; это общая подпрограмма, используется и для кипера тоже
; левая синяя полоска
- D - I - 0x0038C7 02:B8B7: 04        .byte $04
- D - I - 0x0038C8 02:B8B8: 83 20     .word $2081
- D - I - 0x0038CA 02:B8BA: 07        .byte $07
- D - I - 0x0038CB 02:B8BB: 8A        .byte $8F
; правая синяя полоска
- D - I - 0x0038CC 02:B8BC: 04        .byte $04
- D - I - 0x0038CD 02:B8BD: 8E 20     .word $208E
- D - I - 0x0038CF 02:B8BF: 07        .byte $07
- D - I - 0x0038D0 02:B8C0: 8A        .byte $8F
; нижняя синяя полоска
- D - I - 0x0038D1 02:B8C1: 05        .byte $05
- D - I - 0x0038D2 02:B8C2: 64 21     .word $2162
- D - I - 0x0038D4 02:B8C4: 0A        .byte $0C
- D - I - 0x0038D5 02:B8C5: 89        .byte $8E
; левая полоска high ball
- D - I - 0x0038D6 02:B8C6: 04        .byte $04
- D - I - 0x0038D7 02:B8C7: 90 20     .word $2090
- D - I - 0x0038D9 02:B8C9: 0A        .byte $0A
- D - I - 0x0038DA 02:B8CA: AA        .byte $AA
; правая полоска high ball
- D - I - 0x0038DB 02:B8CB: 04        .byte $04
- D - I - 0x0038DC 02:B8CC: 9C 20     .word $209E
- D - I - 0x0038DE 02:B8CE: 0A        .byte $0A
- D - I - 0x0038DF 02:B8CF: AB        .byte $AB
; нижняя полоска high ball
- D - I - 0x0038E0 02:B8D0: 05        .byte $05
- D - I - 0x0038E1 02:B8D1: D1 21     .word $21D1
- D - I - 0x0038E3 02:B8D3: 0B        .byte $0D
- D - I - 0x0038E4 02:B8D4: A9        .byte $A9
; левая полоска stats
- D - I - 0x0038E5 02:B8D5: 04        .byte $04
- D - I - 0x0038E6 02:B8D6: C3 21     .word $21E1
- D - I - 0x0038E8 02:B8D8: 0D        .byte $0C
- D - I - 0x0038E9 02:B8D9: AA        .byte $AA
; правая полоска stats
- D - I - 0x0038EA 02:B8DA: 04        .byte $04
- D - I - 0x0038EB 02:B8DB: CE 21     .word $21EE
- D - I - 0x0038ED 02:B8DD: 0D        .byte $0C
- D - I - 0x0038EE 02:B8DE: AB        .byte $AB
; нижняя полоска stats
- D - I - 0x0038EF 02:B8DF: 05        .byte $05
- D - I - 0x0038F0 02:B8E0: 64 23     .word $2362
- D - I - 0x0038F2 02:B8E2: 0A        .byte $0C
- D - I - 0x0038F3 02:B8E3: A9        .byte $A9
; левая полоска low ball
- D - I - 0x0038F4 02:B8E4: 04        .byte $04
- D - I - 0x0038F5 02:B8E5: 30 22     .word $2230
- D - I - 0x0038F7 02:B8E7: 0A        .byte $0A
- D - I - 0x0038F8 02:B8E8: AA        .byte $AA
; правая полоска low ball
- D - I - 0x0038F9 02:B8E9: 04        .byte $04
- D - I - 0x0038FA 02:B8EA: 3C 22     .word $223E
- D - I - 0x0038FC 02:B8EC: 0A        .byte $0A
- D - I - 0x0038FD 02:B8ED: AB        .byte $AB
; нижняя полоска low ball
- D - I - 0x0038FE 02:B8EE: 05        .byte $05
- D - I - 0x0038FF 02:B8EF: 71 23     .word $2371
- D - I - 0x003901 02:B8F1: 0B        .byte $0D
- D - I - 0x003902 02:B8F2: A9        .byte $A9
; левая полоска special
- D - I - 0x003908 02:B8F8: 04        .byte $04
- D - I - 0x003909 02:B8F9: 03 25     .word $2501
- D - I - 0x00390B 02:B8FB: 13        .byte $13
- D - I - 0x00390C 02:B8FC: AA        .byte $AA
; правая полоска special
- D - I - 0x00390D 02:B8FD: 04        .byte $04
- D - I - 0x00390E 02:B8FE: 1C 25     .word $251E
- D - I - 0x003910 02:B900: 13        .byte $13
- D - I - 0x003911 02:B901: AB        .byte $AB
; верхняя полоска special по центру
- D - I - 0x003903 02:B8F3: 05        .byte $05
- D - I - 0x003904 02:B8F4: ED 24     .word $24EC
- D - I - 0x003906 02:B8F6: 08        .byte $08
- D - I - 0x003907 02:B8F7: A8        .byte $A8

- D - I - 0x0038C4 02:B8B4: 0A        .byte $00
- D - I - 0x0038C5 02:B8B5: 15 BF     .word off_BF15_оформление_окон_и_текст

- D - I - 0x003915 02:B905: 0F        .byte $0F


tbl_B967:
- D - I - 0x003977 02:B967: 9E        .byte $9E
- D - I - 0x003978 02:B968: A9        .byte $A9	; <ぞ>
- D - I - 0x003979 02:B969: A9        .byte $A9	; <ぞ>
- D - I - 0x00397A 02:B96A: A9        .byte $A9	; <ぞ>
- D - I - 0x00397B 02:B96B: A9        .byte $A9	; <ぞ>
- D - I - 0x00397C 02:B96C: A9        .byte $A9	; <ぞ>
- D - I - 0x00397D 02:B96D: A9        .byte $A9	; <ぞ>
- D - I - 0x00397E 02:B96E: A9        .byte $A9	; <ぞ>
- D - I - 0x00397F 02:B96F: A9        .byte $A9	; <ぞ>
- D - I - 0x003980 02:B970: A9        .byte $A9	; <ぞ>
- D - I - 0x003981 02:B971: A9        .byte $A9	; <ぞ>
- D - I - 0x003982 02:B972: A9        .byte $A9	; <ぞ>
- D - I - 0x003983 02:B973: A9        .byte $A9	; <ぞ>
- D - I - 0x003984 02:B974: A9        .byte $A9	; <ぞ>
- D - I - 0x003985 02:B975: A9        .byte $A9	; <ぞ>
- D - I - 0x003986 02:B976: A9        .byte $A9	; <ぞ>
- D - I - 0x003987 02:B977: A9        .byte $A9	; <ぞ>
- D - I - 0x003988 02:B978: A9        .byte $A9	; <ぞ>
- D - I - 0x003989 02:B979: A9        .byte $A9	; <ぞ>
- D - I - 0x00398A 02:B97A: A9        .byte $A9	; <ぞ>
- D - I - 0x00398B 02:B97B: A9        .byte $A9	; <ぞ>
- D - I - 0x00398C 02:B97C: A9        .byte $A9	; <ぞ>
- D - I - 0x00398D 02:B97D: A9        .byte $A9	; <ぞ>
- D - I - 0x00398E 02:B97E: A9        .byte $A9	; <ぞ>
- D - I - 0x00398F 02:B97F: A9        .byte $A9	; <ぞ>
- D - I - 0x003990 02:B980: 9F        .byte $9F



tbl_B981_позиция_статов_полевого:
; dribble
- D - - - 0x003991 02:B981: 03        .byte $03	; <う>
- D - - - 0x003992 02:B982: 09 22     .word $220B
; pass
- D - - - 0x003994 02:B984: 02        .byte $02	; <い>
- D - - - 0x003995 02:B985: 49 22     .word $224B
; shoot
- D - - - 0x003997 02:B987: 01        .byte $01	; <あ>
- D - - - 0x003998 02:B988: 89 22     .word $228B
; tackle
- D - - - 0x00399A 02:B98A: 05        .byte $05	; <お>
- D - - - 0x00399B 02:B98B: C9 22     .word $22CB
; block
- D - - - 0x00399D 02:B98D: 04        .byte $04	; <え>
- D - - - 0x00399E 02:B98E: 09 23     .word $230B
; intercept
- D - - - 0x0039A0 02:B990: 06        .byte $06	; <か>
- D - - - 0x0039A1 02:B991: 49 23     .word $234B
; trap high
- D - - - 0x0039A3 02:B993: 11        .byte $11	; <ち>
- D - - - 0x0039A4 02:B994: B7 20     .word $20BB
; shoot high
- D - - - 0x0039A6 02:B996: 0F        .byte $0F	; <そ>
- D - - - 0x0039A7 02:B997: F7 20     .word $20FB
; through high
- D - - - 0x0039A9 02:B999: 12        .byte $12	; <つ>
- D - - - 0x0039AA 02:B99A: 37 21     .word $213B
; clearance high
- D - - - 0x0039AC 02:B99C: 14        .byte $14	; <と>
- D - - - 0x0039AD 02:B99D: 77 21     .word $217B
; interfere high
- D - - - 0x0039AF 02:B99F: 15        .byte $15	; <な>
- D - - - 0x0039B0 02:B9A0: B7 21     .word $21BB
; trap low
- D - - - 0x0039B2 02:B9A2: 09        .byte $09	; <け>
- D - - - 0x0039B3 02:B9A3: 57 22     .word $225B
; shoot low
- D - - - 0x0039B5 02:B9A5: 07        .byte $07	; <き>
- D - - - 0x0039B6 02:B9A6: 97 22     .word $229B
; through low
- D - - - 0x0039B8 02:B9A8: 0A        .byte $0A	; <こ>
- D - - - 0x0039B9 02:B9A9: D7 22     .word $22DB
; clearance low
- D - - - 0x0039BB 02:B9AB: 0C        .byte $0C	; <し>
- D - - - 0x0039BC 02:B9AC: 17 23     .word $231B
; interfere low
- D - - - 0x0039BE 02:B9AE: 0D        .byte $0D	; <す>
- D - - - 0x0039BF 02:B9AF: 57 23     .word $235B

- D - - - 0x0039C1 02:B9B1: FF        .byte $FF



tbl_B9B2_позиция_статов_кипера:
- D - - - 0x0039C2 02:B9B2: 18        .byte $18	; <ね>
- D - - - 0x0039C3 02:B9B3: 09 22     .word $2209

- D - - - 0x0039C5 02:B9B5: 19        .byte $19	; <の>
- D - - - 0x0039C6 02:B9B6: 49 22     .word $2249

- D - - - 0x0039C8 02:B9B8: 1A        .byte $1A	; <は>
- D - - - 0x0039C9 02:B9B9: 89 22     .word $2289

- D - - - 0x0039CB 02:B9BB: 1C        .byte $1C	; <ふ>
- D - - - 0x0039CC 02:B9BC: E9 22     .word $22E9

- D - - - 0x0039CE 02:B9BE: 1B        .byte $1B	; <ひ>
- D - - - 0x0039CF 02:B9BF: 49 23     .word $2349

- D - - - 0x0039D1 02:B9C1: 1E        .byte $1E	; <ほ>
- D - - - 0x0039D2 02:B9C2: B7 20     .word $20B7

- D - - - 0x0039D4 02:B9C4: 1D        .byte $1D	; <へ>
- D - - - 0x0039D5 02:B9C5: 57 22     .word $2257

- D - - - 0x0039D7 02:B9C7: FF        .byte $FF



tbl_B9C8:
- D - I - 0x0039D8 02:B9C8: 48        .byte $48	; <ク>
- D - I - 0x0039D9 02:B9C9: 4D 22     .word $224D
- D - I - 0x0039DB 02:B9CB: 19        .byte $19	; <の>
- D - I - 0x0039DC 02:B9CC: 0A        .byte $0A	; <こ>
- D - I - 0x0039DD 02:B9CD: 28        .byte $28	; <り>
- D - I - 0x0039DE 02:B9CE: 00        .byte $00
- D - I - 0x0039DF 02:B9CF: 00        .byte $00
- D - I - 0x0039E0 02:B9D0: 00        .byte $00
- D - I - 0x0039E1 02:B9D1: 16        .byte $16	; <に>
- D - I - 0x0039E2 02:B9D2: 2E        .byte $2E	; <ん>

tbl_B9D3:
- D - - - 0x0039E3 02:B9D3: 00        .byte $00
- D - - - 0x0039E4 02:B9D4: 0C        .byte $0C	; <し>
- D - - - 0x0039E5 02:B9D5: 23        .byte $23	; <も>

tbl_B9D6:
- - - - - 0x0039E6 02:B9D6: 00        .byte $00
- D - - - 0x0039E7 02:B9D7: 00        .byte $00
- D - - - 0x0039E8 02:B9D8: 01        .byte $01	; <あ>
- D - - - 0x0039E9 02:B9D9: 12        .byte $12	; <つ>
- D - - - 0x0039EA 02:B9DA: 12        .byte $12	; <つ>
- D - - - 0x0039EB 02:B9DB: 03        .byte $03	; <う>
- D - - - 0x0039EC 02:B9DC: 04        .byte $04	; <え>
- D - - - 0x0039ED 02:B9DD: 05        .byte $05	; <お>
- D - - - 0x0039EE 02:B9DE: 06        .byte $06	; <か>
- D - - - 0x0039EF 02:B9DF: 07        .byte $07	; <き>
- D - - - 0x0039F0 02:B9E0: 08        .byte $08	; <く>
- D - - - 0x0039F1 02:B9E1: 09        .byte $09	; <け>
- - - - - 0x0039F2 02:B9E2: 00        .byte $00
- - - - - 0x0039F3 02:B9E3: 00        .byte $00
- - - - - 0x0039F4 02:B9E4: 00        .byte $00
- - - - - 0x0039F5 02:B9E5: 00        .byte $00
- - - - - 0x0039F6 02:B9E6: 00        .byte $00
- - - - - 0x0039F7 02:B9E7: 00        .byte $00
- - - - - 0x0039F8 02:B9E8: 00        .byte $00
- - - - - 0x0039F9 02:B9E9: 00        .byte $00
- - - - - 0x0039FA 02:B9EA: 00        .byte $00
- - - - - 0x0039FB 02:B9EB: 00        .byte $00
- - - - - 0x0039FC 02:B9EC: 00        .byte $00
- - - - - 0x0039FD 02:B9ED: 00        .byte $00
- D - - - 0x0039FE 02:B9EE: 00        .byte $00
- D - - - 0x0039FF 02:B9EF: 21        .byte $21	; <む>
- D - - - 0x003A00 02:B9F0: 21        .byte $21	; <む>
- D - - - 0x003A01 02:B9F1: 02        .byte $02	; <い>
- D - - - 0x003A02 02:B9F2: 03        .byte $03	; <う>
- D - - - 0x003A03 02:B9F3: 04        .byte $04	; <え>
- D - - - 0x003A04 02:B9F4: 05        .byte $05	; <お>
- D - - - 0x003A05 02:B9F5: 06        .byte $06	; <か>
- D - - - 0x003A06 02:B9F6: 07        .byte $07	; <き>
- D - - - 0x003A07 02:B9F7: 08        .byte $08	; <く>
- D - - - 0x003A08 02:B9F8: 09        .byte $09	; <け>
- - - - - 0x003A09 02:B9F9: 00        .byte $00
- D - - - 0x003A0A 02:B9FA: 00        .byte $00
- - - - - 0x003A0B 02:B9FB: 00        .byte $00
- - - - - 0x003A0C 02:B9FC: 00        .byte $00
- - - - - 0x003A0D 02:B9FD: 00        .byte $00
- - - - - 0x003A0E 02:B9FE: 00        .byte $00
- - - - - 0x003A0F 02:B9FF: 00        .byte $00
- - - - - 0x003A10 02:BA00: 00        .byte $00
- - - - - 0x003A11 02:BA01: 00        .byte $00
- - - - - 0x003A12 02:BA02: 00        .byte $00
- - - - - 0x003A13 02:BA03: 00        .byte $00
- - - - - 0x003A14 02:BA04: 00        .byte $00
- - - - - 0x003A15 02:BA05: 00        .byte $00
- - - - - 0x003A16 02:BA06: 00        .byte $00
- - - - - 0x003A17 02:BA07: 00        .byte $00
- D - - - 0x003A18 02:BA08: 31        .byte $31	; <ゅ>
- D - - - 0x003A19 02:BA09: 31        .byte $31	; <ゅ>
- D - - - 0x003A1A 02:BA0A: 02        .byte $02	; <い>
- D - - - 0x003A1B 02:BA0B: 31        .byte $31	; <ゅ>
- D - - - 0x003A1C 02:BA0C: 31        .byte $31	; <ゅ>
- D - - - 0x003A1D 02:BA0D: 03        .byte $03	; <う>
- D - - - 0x003A1E 02:BA0E: 44        .byte $44	; <エ>
- D - - - 0x003A1F 02:BA0F: 31        .byte $31	; <ゅ>
- D - - - 0x003A20 02:BA10: 44        .byte $44	; <エ>
- D - - - 0x003A21 02:BA11: 44        .byte $44	; <エ>
- D - - - 0x003A22 02:BA12: 55        .byte $55	; <ナ>
- D - - - 0x003A23 02:BA13: 06        .byte $06	; <か>
- D - - - 0x003A24 02:BA14: 55        .byte $55	; <ナ>
- D - - - 0x003A25 02:BA15: 44        .byte $44	; <エ>
- D - - - 0x003A26 02:BA16: 07        .byte $07	; <き>
- D - - - 0x003A27 02:BA17: 55        .byte $55	; <ナ>
- D - - - 0x003A28 02:BA18: 55        .byte $55	; <ナ>
- D - - - 0x003A29 02:BA19: 44        .byte $44	; <エ>
- D - - - 0x003A2A 02:BA1A: 08        .byte $08	; <く>
- D - - - 0x003A2B 02:BA1B: 09        .byte $09	; <け>

tbl_BA1C:
- D - - - 0x003A2C 02:BA1C: 30        .byte $30	; <ゃ>
- D - - - 0x003A2D 02:BA1D: 0C        .byte $0C	; <し>
- D - - - 0x003A2E 02:BA1E: 04        .byte $04	; <え>
- D - - - 0x003A2F 02:BA1F: 08        .byte $08	; <く>
- - - - - 0x003A30 02:BA20: 20        .byte $20	; <み>
- - - - - 0x003A31 02:BA21: 04        .byte $04	; <え>
- - - - - 0x003A32 02:BA22: 0A        .byte $0A	; <こ>
- - - - - 0x003A33 02:BA23: 00        .byte $00
- D - - - 0x003A34 02:BA24: 20        .byte $20	; <み>
- D - - - 0x003A35 02:BA25: 08        .byte $08	; <く>
- D - - - 0x003A36 02:BA26: 02        .byte $02	; <い>
- - - - - 0x003A37 02:BA27: 06        .byte $06	; <か>
- - - - - 0x003A38 02:BA28: 18        .byte $18	; <ね>
- - - - - 0x003A39 02:BA29: 00        .byte $00
- - - - - 0x003A3A 02:BA2A: 00        .byte $00
- - - - - 0x003A3B 02:BA2B: 00        .byte $00
- - - - - 0x003A3C 02:BA2C: 20        .byte $20	; <み>
- D - - - 0x003A3D 02:BA2D: 08        .byte $08	; <く>
- D - - - 0x003A3E 02:BA2E: 02        .byte $02	; <い>
- - - - - 0x003A3F 02:BA2F: 06        .byte $06	; <か>
- - - - - 0x003A40 02:BA30: 18        .byte $18	; <ね>
- - - - - 0x003A41 02:BA31: 04        .byte $04	; <え>
- - - - - 0x003A42 02:BA32: 06        .byte $06	; <か>
- - - - - 0x003A43 02:BA33: 00        .byte $00
- - - - - 0x003A44 02:BA34: 18        .byte $18	; <ね>
- D - - - 0x003A45 02:BA35: 04        .byte $04	; <え>
- - - - - 0x003A46 02:BA36: 02        .byte $02	; <い>
- D - - - 0x003A47 02:BA37: 04        .byte $04	; <え>
- - - - - 0x003A48 02:BA38: 10        .byte $10	; <た>
- - - - - 0x003A49 02:BA39: 00        .byte $00
- - - - - 0x003A4A 02:BA3A: 00        .byte $00
- - - - - 0x003A4B 02:BA3B: 00        .byte $00
- D - - - 0x003A4C 02:BA3C: 18        .byte $18	; <ね>
- D - - - 0x003A4D 02:BA3D: 04        .byte $04	; <え>
- D - - - 0x003A4E 02:BA3E: 02        .byte $02	; <い>
- - - - - 0x003A4F 02:BA3F: 04        .byte $04	; <え>
- - - - - 0x003A50 02:BA40: 10        .byte $10	; <た>
- - - - - 0x003A51 02:BA41: 00        .byte $00
- - - - - 0x003A52 02:BA42: 00        .byte $00
- - - - - 0x003A53 02:BA43: 00        .byte $00
- - - - - 0x003A54 02:BA44: 1A        .byte $1A	; <は>
- D - - - 0x003A55 02:BA45: 06        .byte $06	; <か>
- D - - - 0x003A56 02:BA46: 02        .byte $02	; <い>
- - - - - 0x003A57 02:BA47: 04        .byte $04	; <え>
- - - - - 0x003A58 02:BA48: 14        .byte $14	; <と>
- - - - - 0x003A59 02:BA49: 00        .byte $00
- - - - - 0x003A5A 02:BA4A: 00        .byte $00
- - - - - 0x003A5B 02:BA4B: 00        .byte $00

tbl_BA4C:
- D - - - 0x003A5C 02:BA4C: 52 00     .word $0052
- D - - - 0x003A5E 02:BA4E: 54 00     .word $0054
- D - - - 0x003A60 02:BA50: 56 00     .word $0056
- D - - - 0x003A62 02:BA52: 58 00     .word $0058
- D - - - 0x003A64 02:BA54: 5A 00     .word $005A
- D - - - 0x003A66 02:BA56: 00 00     .word $0000
- D - - - 0x003A68 02:BA58: 6D 00     .word $006D
- D - - - 0x003A6A 02:BA5A: 7B 00     .word $007B
- D - - - 0x003A6C 02:BA5C: 8E 00     .word $008E
- D - - - 0x003A6E 02:BA5E: 9A 00     .word $009A
- D - - - 0x003A70 02:BA60: A0 00     .word $00A0
- D - - - 0x003A72 02:BA62: 00 00     .word $0000
- D - - - 0x003A74 02:BA64: B1 00     .word $00B1
- D - - - 0x003A76 02:BA66: BD 00     .word $00BD
- D - - - 0x003A78 02:BA68: D5 00     .word $00D5
- D - - - 0x003A7A 02:BA6A: 00 00     .word $0000
- D - - - 0x003A7C 02:BA6C: C8 00     .word $00C8
- D - - - 0x003A7E 02:BA6E: E7 00     .word $00E7
- D - - - 0x003A80 02:BA70: EA 00     .word $00EA
- D - - - 0x003A82 02:BA72: ED 00     .word $00ED
- D - - - 0x003A84 02:BA74: F0 00     .word $00F0
- D - - - 0x003A86 02:BA76: F2 00     .word $00F2
- D - - - 0x003A88 02:BA78: F2 00     .word $00F2
- D - - - 0x003A8A 02:BA7A: F5 00     .word $00F5
- D - - - 0x003A8C 02:BA7C: F8 00     .word $00F8
- D - - - 0x003A8E 02:BA7E: FE 00     .word $00FE
- D - - - 0x003A90 02:BA80: 0A 01     .word $010A
- D - - - 0x003A92 02:BA82: 0A 01     .word $010A
- D - - - 0x003A94 02:BA84: 0D 01     .word $010D
- D - - - 0x003A96 02:BA86: 10 01     .word $0110
- D - - - 0x003A98 02:BA88: 37 01     .word $0137
- D - - - 0x003A9A 02:BA8A: 3D 01     .word $013D
- D - - - 0x003A9C 02:BA8C: 45 01     .word $0145
- - - - - 0x003A9E 02:BA8E: 45 01     .word $0145

tbl_BA90:
; предположительно количество опыта для набора уровня
- D - - - 0x003AA0 02:BA90: 00 00     .word $0000
- D - - - 0x003AA2 02:BA92: 60 00     .word $0060
- D - - - 0x003AA4 02:BA94: D0 00     .word $00D0
- D - - - 0x003AA6 02:BA96: 50 01     .word $0150
- D - - - 0x003AA8 02:BA98: 10 02     .word $0210
- D - - - 0x003AAA 02:BA9A: 00 03     .word $0300
- D - - - 0x003AAC 02:BA9C: F8 03     .word $03F8
- D - - - 0x003AAE 02:BA9E: 00 05     .word $0500
- D - - - 0x003AB0 02:BAA0: 28 06     .word $0628
- D - - - 0x003AB2 02:BAA2: 80 07     .word $0780
- D - - - 0x003AB4 02:BAA4: 00 09     .word $0900
- D - - - 0x003AB6 02:BAA6: 90 0A     .word $0A90
- D - - - 0x003AB8 02:BAA8: 30 0C     .word $0C30
- D - - - 0x003ABA 02:BAAA: E0 0D     .word $0DE0
- D - - - 0x003ABC 02:BAAC: A0 0F     .word $0FA0
- D - - - 0x003ABE 02:BAAE: 70 11     .word $1170
- D - - - 0x003AC0 02:BAB0: 50 13     .word $1350
- D - - - 0x003AC2 02:BAB2: 50 15     .word $1550
- D - - - 0x003AC4 02:BAB4: 70 17     .word $1770
- D - - - 0x003AC6 02:BAB6: B0 19     .word $19B0
- D - - - 0x003AC8 02:BAB8: 00 1C     .word $1C00
- D - - - 0x003ACA 02:BABA: 60 1E     .word $1E60
- D - - - 0x003ACC 02:BABC: D0 20     .word $20D0
- D - - - 0x003ACE 02:BABE: 48 23     .word $2348
- D - - - 0x003AD0 02:BAC0: C8 25     .word $25C8
- D - - - 0x003AD2 02:BAC2: 50 28     .word $2850
- D - - - 0x003AD4 02:BAC4: E0 2A     .word $2AE0
- D - - - 0x003AD6 02:BAC6: 78 2D     .word $2D78
- D - - - 0x003AD8 02:BAC8: 18 30     .word $3018
- D - - - 0x003ADA 02:BACA: C8 32     .word $32C8
- D - - - 0x003ADC 02:BACC: 88 35     .word $3588
- D - - - 0x003ADE 02:BACE: 58 38     .word $3858
- D - - - 0x003AE0 02:BAD0: 30 3B     .word $3B30
- D - - - 0x003AE2 02:BAD2: 10 3E     .word $3E10
- D - - - 0x003AE4 02:BAD4: F8 40     .word $40F8
- D - - - 0x003AE6 02:BAD6: 40 44     .word $4440
- D - - - 0x003AE8 02:BAD8: 90 47     .word $4790
- D - - - 0x003AEA 02:BADA: E8 4A     .word $4AE8
- D - - - 0x003AEC 02:BADC: 48 4E     .word $4E48
- D - - - 0x003AEE 02:BADE: B0 51     .word $51B0
- D - - - 0x003AF0 02:BAE0: 20 55     .word $5520
- D - - - 0x003AF2 02:BAE2: 00 59     .word $5900
- D - - - 0x003AF4 02:BAE4: 20 5D     .word $5D20
- D - - - 0x003AF6 02:BAE6: 50 61     .word $6150
- D - - - 0x003AF8 02:BAE8: 90 65     .word $6590
- D - - - 0x003AFA 02:BAEA: E0 69     .word $69E0
- D - - - 0x003AFC 02:BAEC: 40 6E     .word $6E40
- D - - - 0x003AFE 02:BAEE: 00 73     .word $7300
- D - - - 0x003B00 02:BAF0: E0 77     .word $77E0
- D - - - 0x003B02 02:BAF2: D0 7C     .word $7CD0
- D - - - 0x003B04 02:BAF4: 00 82     .word $8200
- D - - - 0x003B06 02:BAF6: 80 87     .word $8780
- D - - - 0x003B08 02:BAF8: 80 8D     .word $8D80
- D - - - 0x003B0A 02:BAFA: E0 93     .word $93E0
- D - - - 0x003B0C 02:BAFC: D0 9A     .word $9AD0
- D - - - 0x003B0E 02:BAFE: E0 A1     .word $A1E0
- D - - - 0x003B10 02:BB00: C0 A9     .word $A9C0
- D - - - 0x003B12 02:BB02: C0 B1     .word $B1C0
- D - - - 0x003B14 02:BB04: D0 B9     .word $B9D0
- D - - - 0x003B16 02:BB06: 04 C2     .word $C204
- D - - - 0x003B18 02:BB08: 80 CB     .word $CB80
- D - - - 0x003B1A 02:BB0A: A0 D7     .word $D7A0
- D - - - 0x003B1C 02:BB0C: 00 E8     .word $E800
- D - - - 0x003B1E 02:BB0E: FF FF     .word $FFFF

tbl_BB10:
- D - I - 0x003B20 02:BB10: 0A        .byte $0A	; <こ>
- D - I - 0x003B21 02:BB11: 04        .byte $04	; <え>
- D - I - 0x003B22 02:BB12: 02        .byte $02	; <い>
- D - I - 0x003B23 02:BB13: 06        .byte $06	; <か>
- D - I - 0x003B24 02:BB14: 00        .byte $00
- D - I - 0x003B25 02:BB15: 10        .byte $10	; <た>
- D - I - 0x003B26 02:BB16: 12        .byte $12	; <つ>
- D - I - 0x003B27 02:BB17: 08        .byte $08	; <く>
- D - I - 0x003B28 02:BB18: 0E        .byte $0E	; <せ>
- D - I - 0x003B29 02:BB19: 0C        .byte $0C	; <し>

tbl_BB1A:
- D - I - 0x003B2A 02:BB1A: 08        .byte $08	; <く>
- D - I - 0x003B2B 02:BB1B: 04        .byte $04	; <え>
- D - I - 0x003B2C 02:BB1C: 02        .byte $02	; <い>
- D - I - 0x003B2D 02:BB1D: 06        .byte $06	; <か>
- D - I - 0x003B2E 02:BB1E: 0E        .byte $0E	; <せ>
- D - I - 0x003B2F 02:BB1F: 00        .byte $00
- D - I - 0x003B30 02:BB20: 12        .byte $12	; <つ>
- D - I - 0x003B31 02:BB21: 10        .byte $10	; <た>
- D - I - 0x003B32 02:BB22: 0A        .byte $0A	; <こ>
- D - I - 0x003B33 02:BB23: 0C        .byte $0C	; <し>

tbl_BB24:
- D - I - 0x003B34 02:BB24: 00        .byte $00
- D - I - 0x003B35 02:BB25: 04        .byte $04	; <え>
- D - I - 0x003B36 02:BB26: 00        .byte $00
- D - I - 0x003B37 02:BB27: 08        .byte $08	; <く>
- D - I - 0x003B38 02:BB28: 0E        .byte $0E	; <せ>
- D - I - 0x003B39 02:BB29: 06        .byte $06	; <か>
- D - I - 0x003B3A 02:BB2A: 00        .byte $00
- D - I - 0x003B3B 02:BB2B: 0E        .byte $0E	; <せ>
- D - I - 0x003B3C 02:BB2C: 02        .byte $02	; <い>
- D - I - 0x003B3D 02:BB2D: 02        .byte $02	; <い>



tbl_BB2E_список_спешалов_игроков:
; первый байт это номер игрока, код ищет по таблице игроков со спешалами
- D - - - 0x003B3E 02:BB2E: 01        .byte $01	; <あ>
- D - - - 0x003B3F 02:BB2F: 55 BB     .word off_BB55_цубаса

- D - - - 0x003B41 02:BB31: 11        .byte $11	; <ち>
- D - - - 0x003B42 02:BB32: 7E BB     .word off_BB7E_мисаки

- D - - - 0x003B44 02:BB34: 14        .byte $14	; <と>
- D - - - 0x003B45 02:BB35: 93 BB     .word off_BB93_ишизаки

- D - - - 0x003B47 02:BB37: 15        .byte $15	; <な>
- D - - - 0x003B48 02:BB38: 99 BB     .word off_BB99_нитта

- D - - - 0x003B4A 02:BB3A: 17        .byte $17	; <ぬ>
- D - - - 0x003B4B 02:BB3B: A4 BB     .word off_BBA4_масао

- D - - - 0x003B4D 02:BB3D: 18        .byte $18	; <ね>
- D - - - 0x003B4E 02:BB3E: C8 BB     .word off_BBC8_казуо

- D - - - 0x003B50 02:BB40: 1A        .byte $1A	; <は>
- D - - - 0x003B51 02:BB41: EC BB     .word off_BBEC_хюга

- D - - - 0x003B53 02:BB43: 1B        .byte $1B	; <ひ>
- D - - - 0x003B54 02:BB44: 0B BC     .word off_BC0B_сода

- D - - - 0x003B56 02:BB46: 1C        .byte $1C	; <ふ>
- D - - - 0x003B57 02:BB47: 1B BC     .word off_BC1B_джито

- D - - - 0x003B59 02:BB49: 1D        .byte $1D	; <へ>
- D - - - 0x003B5A 02:BB4A: 30 BC     .word off_BC30_мацуяма

- D - - - 0x003B5C 02:BB4C: 1F        .byte $1F	; <ま>
- D - - - 0x003B5D 02:BB4D: 36 BC     .word off_BC36_савада

- D - - - 0x003B5F 02:BB4F: 20        .byte $20	; <み>
- D - - - 0x003B60 02:BB50: 3C BC     .word off_BC3C_мисуги

- D - - - 0x003B62 02:BB52: 22        .byte $22	; <め>
- D - - - 0x003B63 02:BB53: 42 BC     .word off_BC42_вакашимазу



off_BB55_цубаса:
- D - I - 0x003B65 02:BB55: 00        .byte $00
- D - I - 0x003B66 02:BB56: 9D        .byte $9D
- D - I - 0x003B67 02:BB57: 00        .byte $00
- D - I - 0x003B68 02:BB58: 03        .byte $03	; <う>
- D - I - 0x003B69 02:BB59: 06        .byte $06	; <か>
- D - I - 0x003B6A 02:BB5A: 00        .byte $00
- D - I - 0x003B6B 02:BB5B: A8        .byte $A8	; <ぜ>
- D - I - 0x003B6C 02:BB5C: 00        .byte $00
- D - I - 0x003B6D 02:BB5D: 0E        .byte $0E	; <せ>
- D - I - 0x003B6E 02:BB5E: 06        .byte $06	; <か>
- D - I - 0x003B6F 02:BB5F: FE        .byte $FE
- D - I - 0x003B70 02:BB60: 9E        .byte $9E
- D - I - 0x003B71 02:BB61: 00        .byte $00
- D - I - 0x003B72 02:BB62: 04        .byte $04	; <え>
- D - I - 0x003B73 02:BB63: 06        .byte $06	; <か>
- D - I - 0x003B74 02:BB64: 10        .byte $10	; <た>
- D - I - 0x003B75 02:BB65: A3        .byte $A3	; <げ>
- D - I - 0x003B76 02:BB66: 00        .byte $00
- D - I - 0x003B77 02:BB67: 09        .byte $09	; <け>
- D - I - 0x003B78 02:BB68: 06        .byte $06	; <か>
- D - I - 0x003B79 02:BB69: FD        .byte $FD
- D - I - 0x003B7A 02:BB6A: AC        .byte $AC	; <づ>
- D - I - 0x003B7B 02:BB6B: 00        .byte $00
- D - I - 0x003B7C 02:BB6C: 12        .byte $12	; <つ>
- D - I - 0x003B7D 02:BB6D: 06        .byte $06	; <か>
- D - I - 0x003B7E 02:BB6E: 00        .byte $00
- D - I - 0x003B7F 02:BB6F: BE        .byte $BE	; <ダ>
- D - I - 0x003B80 02:BB70: 02        .byte $02	; <い>
- D - I - 0x003B81 02:BB71: 01        .byte $01	; <あ>
- D - I - 0x003B82 02:BB72: 06        .byte $06	; <か>
- D - I - 0x003B83 02:BB73: 00        .byte $00
- D - I - 0x003B84 02:BB74: C5        .byte $C5	; <ブ>
- D - I - 0x003B85 02:BB75: 01        .byte $01	; <あ>
- D - I - 0x003B86 02:BB76: 01        .byte $01	; <あ>
- D - I - 0x003B87 02:BB77: 06        .byte $06	; <か>
- D - I - 0x003B88 02:BB78: 10        .byte $10	; <た>
- D - I - 0x003B89 02:BB79: C9        .byte $C9	; <ぴ>
- D - I - 0x003B8A 02:BB7A: 03        .byte $03	; <う>
- D - I - 0x003B8B 02:BB7B: 01        .byte $01	; <あ>
- D - I - 0x003B8C 02:BB7C: 06        .byte $06	; <か>

- D - I - 0x003B8D 02:BB7D: FF        .byte $FF



off_BB7E_мисаки:
- D - I - 0x003B8E 02:BB7E: 00        .byte $00
- D - I - 0x003B8F 02:BB7F: A8        .byte $A8	; <ぜ>
- D - I - 0x003B90 02:BB80: 00        .byte $00
- D - I - 0x003B91 02:BB81: 0E        .byte $0E	; <せ>
- D - I - 0x003B92 02:BB82: 06        .byte $06	; <か>
- D - I - 0x003B93 02:BB83: 10        .byte $10	; <た>
- D - I - 0x003B94 02:BB84: A3        .byte $A3	; <げ>
- D - I - 0x003B95 02:BB85: 00        .byte $00
- D - I - 0x003B96 02:BB86: 09        .byte $09	; <け>
- D - I - 0x003B97 02:BB87: 06        .byte $06	; <か>
- D - I - 0x003B98 02:BB88: 00        .byte $00
- D - I - 0x003B99 02:BB89: AA        .byte $AA	; <だ>
- D - I - 0x003B9A 02:BB8A: 00        .byte $00
- D - I - 0x003B9B 02:BB8B: 10        .byte $10	; <た>
- D - I - 0x003B9C 02:BB8C: 06        .byte $06	; <か>
- D - I - 0x003B9D 02:BB8D: 10        .byte $10	; <た>
- D - I - 0x003B9E 02:BB8E: C9        .byte $C9	; <ぴ>
- D - I - 0x003B9F 02:BB8F: 03        .byte $03	; <う>
- D - I - 0x003BA0 02:BB90: 01        .byte $01	; <あ>
- D - I - 0x003BA1 02:BB91: 06        .byte $06	; <か>

- D - I - 0x003BA2 02:BB92: FF        .byte $FF



off_BB93_ишизаки:
- D - I - 0x003BA3 02:BB93: 00        .byte $00
- D - I - 0x003BA4 02:BB94: CE        .byte $CE	; <ピ>
- D - I - 0x003BA5 02:BB95: 00        .byte $00
- D - I - 0x003BA6 02:BB96: 01        .byte $01	; <あ>
- D - I - 0x003BA7 02:BB97: 07        .byte $07	; <き>

- D - I - 0x003BA8 02:BB98: FF        .byte $FF



off_BB99_нитта:
- D - I - 0x003BA9 02:BB99: 00        .byte $00
- D - I - 0x003BAA 02:BB9A: 9F        .byte $9F
- D - I - 0x003BAB 02:BB9B: 00        .byte $00
- D - I - 0x003BAC 02:BB9C: 05        .byte $05	; <お>
- D - I - 0x003BAD 02:BB9D: 06        .byte $06	; <か>
- D - I - 0x003BAE 02:BB9E: 00        .byte $00
- D - I - 0x003BAF 02:BB9F: A0        .byte $A0	; <が>
- D - I - 0x003BB0 02:BBA0: 00        .byte $00
- D - I - 0x003BB1 02:BBA1: 06        .byte $06	; <か>
- D - I - 0x003BB2 02:BBA2: 06        .byte $06	; <か>

- D - I - 0x003BB3 02:BBA3: FF        .byte $FF



off_BBA4_масао:
- D - I - 0x003BB4 02:BBA4: 00        .byte $00
- D - I - 0x003BB5 02:BBA5: A2        .byte $A2	; <ぐ>
- D - I - 0x003BB6 02:BBA6: 00        .byte $00
- D - I - 0x003BB7 02:BBA7: 08        .byte $08	; <く>
- D - I - 0x003BB8 02:BBA8: 06        .byte $06	; <か>
- D - I - 0x003BB9 02:BBA9: 00        .byte $00
- D - I - 0x003BBA 02:BBAA: A4        .byte $A4	; <ご>
- D - I - 0x003BBB 02:BBAB: 00        .byte $00
- D - I - 0x003BBC 02:BBAC: 0A        .byte $0A	; <こ>
- D - I - 0x003BBD 02:BBAD: 06        .byte $06	; <か>
- D - I - 0x003BBE 02:BBAE: 00        .byte $00
- D - I - 0x003BBF 02:BBAF: A3        .byte $A3	; <げ>
- D - I - 0x003BC0 02:BBB0: 00        .byte $00
- D - I - 0x003BC1 02:BBB1: 09        .byte $09	; <け>
- D - I - 0x003BC2 02:BBB2: 06        .byte $06	; <か>
- D - I - 0x003BC3 02:BBB3: 00        .byte $00
- D - I - 0x003BC4 02:BBB4: CB        .byte $CB	; <ぺ>
- D - I - 0x003BC5 02:BBB5: 03        .byte $03	; <う>
- D - I - 0x003BC6 02:BBB6: 03        .byte $03	; <う>
- D - I - 0x003BC7 02:BBB7: 06        .byte $06	; <か>
- D - I - 0x003BC8 02:BBB8: 00        .byte $00
- D - I - 0x003BC9 02:BBB9: D2        .byte $D2
- D - I - 0x003BCA 02:BBBA: 01        .byte $01	; <あ>
- D - I - 0x003BCB 02:BBBB: 01        .byte $01	; <あ>
- D - I - 0x003BCC 02:BBBC: 07        .byte $07	; <き>
- D - I - 0x003BCD 02:BBBD: 00        .byte $00
- D - I - 0x003BCE 02:BBBE: CF        .byte $CF	; <プ>
- D - I - 0x003BCF 02:BBBF: 00        .byte $00
- D - I - 0x003BD0 02:BBC0: 02        .byte $02	; <い>
- D - I - 0x003BD1 02:BBC1: 07        .byte $07	; <き>
- D - I - 0x003BD2 02:BBC2: 00        .byte $00
- D - I - 0x003BD3 02:BBC3: D8        .byte $D8
- D - I - 0x003BD4 02:BBC4: 02        .byte $02	; <い>
- D - I - 0x003BD5 02:BBC5: 01        .byte $01	; <あ>
- D - I - 0x003BD6 02:BBC6: 07        .byte $07	; <き>

- D - I - 0x003BD7 02:BBC7: FF        .byte $FF



off_BBC8_казуо:
- D - I - 0x003BD8 02:BBC8: 00        .byte $00
- D - I - 0x003BD9 02:BBC9: A2        .byte $A2	; <ぐ>
- D - I - 0x003BDA 02:BBCA: 00        .byte $00
- D - I - 0x003BDB 02:BBCB: 08        .byte $08	; <く>
- D - I - 0x003BDC 02:BBCC: 06        .byte $06	; <か>
- D - I - 0x003BDD 02:BBCD: 00        .byte $00
- D - I - 0x003BDE 02:BBCE: A4        .byte $A4	; <ご>
- D - I - 0x003BDF 02:BBCF: 00        .byte $00
- D - I - 0x003BE0 02:BBD0: 0A        .byte $0A	; <こ>
- D - I - 0x003BE1 02:BBD1: 06        .byte $06	; <か>
- D - I - 0x003BE2 02:BBD2: 00        .byte $00
- D - I - 0x003BE3 02:BBD3: A3        .byte $A3	; <げ>
- D - I - 0x003BE4 02:BBD4: 00        .byte $00
- D - I - 0x003BE5 02:BBD5: 09        .byte $09	; <け>
- D - I - 0x003BE6 02:BBD6: 06        .byte $06	; <か>
- D - I - 0x003BE7 02:BBD7: 00        .byte $00
- D - I - 0x003BE8 02:BBD8: CB        .byte $CB	; <ぺ>
- D - I - 0x003BE9 02:BBD9: 03        .byte $03	; <う>
- D - I - 0x003BEA 02:BBDA: 03        .byte $03	; <う>
- D - I - 0x003BEB 02:BBDB: 06        .byte $06	; <か>
- D - I - 0x003BEC 02:BBDC: 00        .byte $00
- D - I - 0x003BED 02:BBDD: D2        .byte $D2
- D - I - 0x003BEE 02:BBDE: 01        .byte $01	; <あ>
- D - I - 0x003BEF 02:BBDF: 03        .byte $03	; <う>
- D - I - 0x003BF0 02:BBE0: 07        .byte $07	; <き>
- D - I - 0x003BF1 02:BBE1: 00        .byte $00
- D - I - 0x003BF2 02:BBE2: CF        .byte $CF	; <プ>
- D - I - 0x003BF3 02:BBE3: 00        .byte $00
- D - I - 0x003BF4 02:BBE4: 02        .byte $02	; <い>
- D - I - 0x003BF5 02:BBE5: 07        .byte $07	; <き>
- D - I - 0x003BF6 02:BBE6: 00        .byte $00
- D - I - 0x003BF7 02:BBE7: D8        .byte $D8
- D - I - 0x003BF8 02:BBE8: 02        .byte $02	; <い>
- D - I - 0x003BF9 02:BBE9: 01        .byte $01	; <あ>
- D - I - 0x003BFA 02:BBEA: 07        .byte $07	; <き>

- D - I - 0x003BFB 02:BBEB: FF        .byte $FF



off_BBEC_хюга:
- D - I - 0x003BFC 02:BBEC: 00        .byte $00
- D - I - 0x003BFD 02:BBED: A6        .byte $A6	; <じ>
- D - I - 0x003BFE 02:BBEE: 00        .byte $00
- D - I - 0x003BFF 02:BBEF: 0C        .byte $0C	; <し>
- D - I - 0x003C00 02:BBF0: 06        .byte $06	; <か>
- D - I - 0x003C01 02:BBF1: 00        .byte $00
- D - I - 0x003C02 02:BBF2: A7        .byte $A7	; <ず>
- D - I - 0x003C03 02:BBF3: 00        .byte $00
- D - I - 0x003C04 02:BBF4: 0D        .byte $0D	; <す>
- D - I - 0x003C05 02:BBF5: 06        .byte $06	; <か>
- D - I - 0x003C06 02:BBF6: 00        .byte $00
- D - I - 0x003C07 02:BBF7: A8        .byte $A8	; <ぜ>
- D - I - 0x003C08 02:BBF8: 00        .byte $00
- D - I - 0x003C09 02:BBF9: 0E        .byte $0E	; <せ>
- D - I - 0x003C0A 02:BBFA: 06        .byte $06	; <か>
- D - I - 0x003C0B 02:BBFB: 00        .byte $00
- D - I - 0x003C0C 02:BBFC: BF        .byte $BF	; <ヂ>
- D - I - 0x003C0D 02:BBFD: 02        .byte $02	; <い>
- D - I - 0x003C0E 02:BBFE: 02        .byte $02	; <い>
- D - I - 0x003C0F 02:BBFF: 06        .byte $06	; <か>
- D - I - 0x003C10 02:BC00: 00        .byte $00
- D - I - 0x003C11 02:BC01: CA        .byte $CA	; <ぷ>
- D - I - 0x003C12 02:BC02: 03        .byte $03	; <う>
- D - I - 0x003C13 02:BC03: 02        .byte $02	; <い>
- D - I - 0x003C14 02:BC04: 06        .byte $06	; <か>
- D - I - 0x003C15 02:BC05: 00        .byte $00
- D - I - 0x003C16 02:BC06: D5        .byte $D5
- D - I - 0x003C17 02:BC07: 01        .byte $01	; <あ>
- D - I - 0x003C18 02:BC08: 04        .byte $04	; <え>
- D - I - 0x003C19 02:BC09: 07        .byte $07	; <き>

- D - I - 0x003C1A 02:BC0A: FF        .byte $FF



off_BC0B_сода:
- D - I - 0x003C1B 02:BC0B: 00        .byte $00
- D - I - 0x003C1C 02:BC0C: A1        .byte $A1	; <ぎ>
- D - I - 0x003C1D 02:BC0D: 00        .byte $00
- D - I - 0x003C1E 02:BC0E: 07        .byte $07	; <き>
- D - I - 0x003C1F 02:BC0F: 06        .byte $06	; <か>
- D - I - 0x003C20 02:BC10: 00        .byte $00
- D - I - 0x003C21 02:BC11: D3        .byte $D3
- D - I - 0x003C22 02:BC12: 01        .byte $01	; <あ>
- D - I - 0x003C23 02:BC13: 02        .byte $02	; <い>
- D - I - 0x003C24 02:BC14: 07        .byte $07	; <き>
- D - I - 0x003C25 02:BC15: 00        .byte $00
- D - I - 0x003C26 02:BC16: C6        .byte $C6	; <ベ>
- D - I - 0x003C27 02:BC17: 01        .byte $01	; <あ>
- D - I - 0x003C28 02:BC18: 02        .byte $02	; <い>
- D - I - 0x003C29 02:BC19: 06        .byte $06	; <か>

- D - I - 0x003C2A 02:BC1A: FF        .byte $FF



off_BC1B_джито:
- D - I - 0x003C2B 02:BC1B: 00        .byte $00
- D - I - 0x003C2C 02:BC1C: AD        .byte $AD	; <で>
- D - I - 0x003C2D 02:BC1D: 00        .byte $00
- D - I - 0x003C2E 02:BC1E: 13        .byte $13	; <て>
- D - I - 0x003C2F 02:BC1F: 06        .byte $06	; <か>
- D - I - 0x003C30 02:BC20: 00        .byte $00
- D - I - 0x003C31 02:BC21: BF        .byte $BF	; <ヂ>
- D - I - 0x003C32 02:BC22: 02        .byte $02	; <い>
- D - I - 0x003C33 02:BC23: 02        .byte $02	; <い>
- D - I - 0x003C34 02:BC24: 06        .byte $06	; <か>
- D - I - 0x003C35 02:BC25: 00        .byte $00
- D - I - 0x003C36 02:BC26: D4        .byte $D4
- D - I - 0x003C37 02:BC27: 01        .byte $01	; <あ>
- D - I - 0x003C38 02:BC28: 03        .byte $03	; <う>
- D - I - 0x003C39 02:BC29: 07        .byte $07	; <き>
- D - I - 0x003C3A 02:BC2A: 00        .byte $00
- D - I - 0x003C3B 02:BC2B: D0        .byte $D0	; <ペ>
- D - I - 0x003C3C 02:BC2C: 00        .byte $00
- D - I - 0x003C3D 02:BC2D: 03        .byte $03	; <う>
- D - I - 0x003C3E 02:BC2E: 07        .byte $07	; <き>

- D - I - 0x003C3F 02:BC2F: FF        .byte $FF



off_BC30_мацуяма:
- D - I - 0x003C40 02:BC30: 00        .byte $00
- D - I - 0x003C41 02:BC31: A5        .byte $A5	; <ざ>
- D - I - 0x003C42 02:BC32: 00        .byte $00
- D - I - 0x003C43 02:BC33: 0B        .byte $0B	; <さ>
- D - I - 0x003C44 02:BC34: 06        .byte $06	; <か>

- D - I - 0x003C45 02:BC35: FF        .byte $FF



off_BC36_савада:
- D - I - 0x003C46 02:BC36: 00        .byte $00
- D - I - 0x003C47 02:BC37: CA        .byte $CA	; <ぷ>
- D - I - 0x003C48 02:BC38: 03        .byte $03	; <う>
- D - I - 0x003C49 02:BC39: 02        .byte $02	; <い>
- D - I - 0x003C4A 02:BC3A: 06        .byte $06	; <か>

- D - I - 0x003C4B 02:BC3B: FF        .byte $FF



off_BC3C_мисуги:
- D - I - 0x003C4C 02:BC3C: 00        .byte $00
- D - I - 0x003C4D 02:BC3D: A9        .byte $A9	; <ぞ>
- D - I - 0x003C4E 02:BC3E: 00        .byte $00
- D - I - 0x003C4F 02:BC3F: 0F        .byte $0F	; <そ>
- D - I - 0x003C50 02:BC40: 06        .byte $06	; <か>

- D - I - 0x003C51 02:BC41: FF        .byte $FF



off_BC42_вакашимазу:
- D - I - 0x003C52 02:BC42: 00        .byte $00
- D - I - 0x003C53 02:BC43: E5        .byte $E5
- D - I - 0x003C54 02:BC44: 02        .byte $02	; <い>
- D - I - 0x003C55 02:BC45: 00        .byte $00
- D - I - 0x003C56 02:BC46: 08        .byte $08	; <く>

- D - I - 0x003C57 02:BC47: FF        .byte $FF



tbl_BC48:
- D - - - 0x003C58 02:BC48: 26 25     .word $2526
- D - - - 0x003C5A 02:BC4A: 66 25     .word $2566
- D - - - 0x003C5C 02:BC4C: A6 25     .word $25A6
- D - - - 0x003C5E 02:BC4E: E6 25     .word $25E6
- D - - - 0x003C60 02:BC50: 26 26     .word $2626
- D - - - 0x003C62 02:BC52: 66 26     .word $2666
- D - - - 0x003C64 02:BC54: A6 26     .word $26A6
- D - - - 0x003C66 02:BC56: E6 26     .word $26E6

tbl_BC58:
- D - - - 0x003C68 02:BC58: 45 22     .word $2245
- D - - - 0x003C6A 02:BC5A: 4D 22     .word $224D
- D - - - 0x003C6C 02:BC5C: 55 22     .word $2255
- D - - - 0x003C6E 02:BC5E: 85 22     .word $2285
- D - - - 0x003C70 02:BC60: 8D 22     .word $228D
- D - - - 0x003C72 02:BC62: 95 22     .word $2295
- D - - - 0x003C74 02:BC64: C5 22     .word $22C5
- D - - - 0x003C76 02:BC66: CD 22     .word $22CD
- D - - - 0x003C78 02:BC68: D5 22     .word $22D5
- D - - - 0x003C7A 02:BC6A: 05 23     .word $2305
- D - - - 0x003C7C 02:BC6C: 0D 23     .word $230D



; читается из 3х мест
tbl_BC6E_символы_пароля:
; 5 строк по 13 символов
- D - I - 0x003C7E 02:BC6E: 01        .byte $01	; <あ>
- D - I - 0x003C7F 02:BC6F: 06        .byte $06	; <か>
- D - I - 0x003C80 02:BC70: 0B        .byte $0B	; <さ>
- D - I - 0x003C81 02:BC71: 10        .byte $10	; <た>
- D - I - 0x003C82 02:BC72: 15        .byte $15	; <な>
- D - I - 0x003C83 02:BC73: 1A        .byte $1A	; <は>
- D - I - 0x003C84 02:BC74: 1F        .byte $1F	; <ま>
- D - I - 0x003C85 02:BC75: 27        .byte $27	; <ら>
- D - I - 0x003C86 02:BC76: A0        .byte $A0	; <が>
- D - I - 0x003C87 02:BC77: A5        .byte $A5	; <ざ>
- D - I - 0x003C88 02:BC78: AF        .byte $AF	; <ば>
- D - I - 0x003C89 02:BC79: C8        .byte $C8	; <ぱ>
- D - I - 0x003C8A 02:BC7A: 24        .byte $24	; <や>

- D - I - 0x003C8B 02:BC7B: 02        .byte $02	; <い>
- D - I - 0x003C8C 02:BC7C: 07        .byte $07	; <き>
- D - I - 0x003C8D 02:BC7D: 0C        .byte $0C	; <し>
- D - I - 0x003C8E 02:BC7E: 11        .byte $11	; <ち>
- D - I - 0x003C8F 02:BC7F: 16        .byte $16	; <に>
- D - I - 0x003C90 02:BC80: 1B        .byte $1B	; <ひ>
- D - I - 0x003C91 02:BC81: 20        .byte $20	; <み>
- D - I - 0x003C92 02:BC82: 28        .byte $28	; <り>
- D - I - 0x003C93 02:BC83: A1        .byte $A1	; <ぎ>
- D - I - 0x003C94 02:BC84: A6        .byte $A6	; <じ>
- D - I - 0x003C95 02:BC85: B0        .byte $B0	; <び>
- D - I - 0x003C96 02:BC86: C9        .byte $C9	; <ぴ>
- D - I - 0x003C97 02:BC87: 25        .byte $25	; <ゆ>

- D - I - 0x003C98 02:BC88: 03        .byte $03	; <う>
- D - I - 0x003C99 02:BC89: 08        .byte $08	; <く>
- D - I - 0x003C9A 02:BC8A: 0D        .byte $0D	; <す>
- D - I - 0x003C9B 02:BC8B: 12        .byte $12	; <つ>
- D - I - 0x003C9C 02:BC8C: 17        .byte $17	; <ぬ>
- D - I - 0x003C9D 02:BC8D: 1C        .byte $1C	; <ふ>
- D - I - 0x003C9E 02:BC8E: 21        .byte $21	; <む>
- D - I - 0x003C9F 02:BC8F: 29        .byte $29	; <る>
- D - I - 0x003CA0 02:BC90: A2        .byte $A2	; <ぐ>
- D - I - 0x003CA1 02:BC91: A7        .byte $A7	; <ず>
- D - I - 0x003CA2 02:BC92: B1        .byte $B1	; <ぶ>
- D - I - 0x003CA3 02:BC93: CA        .byte $CA	; <ぷ>
- D - I - 0x003CA4 02:BC94: 26        .byte $26	; <よ>

- D - I - 0x003CA5 02:BC95: 04        .byte $04	; <え>
- D - I - 0x003CA6 02:BC96: 09        .byte $09	; <け>
- D - I - 0x003CA7 02:BC97: 0E        .byte $0E	; <せ>
- D - I - 0x003CA8 02:BC98: 13        .byte $13	; <て>
- D - I - 0x003CA9 02:BC99: 18        .byte $18	; <ね>
- D - I - 0x003CAA 02:BC9A: 1D        .byte $1D	; <へ>
- D - I - 0x003CAB 02:BC9B: 22        .byte $22	; <め>
- D - I - 0x003CAC 02:BC9C: 2A        .byte $2A	; <れ>
- D - I - 0x003CAD 02:BC9D: A3        .byte $A3	; <げ>
- D - I - 0x003CAE 02:BC9E: A8        .byte $A8	; <ぜ>
- D - I - 0x003CAF 02:BC9F: B2        .byte $B2	; <べ>
- D - I - 0x003CB0 02:BCA0: CB        .byte $CB	; <ぺ>
- D - I - 0x003CB1 02:BCA1: 2C        .byte $2C	; <わ>

- D - I - 0x003CB2 02:BCA2: 05        .byte $05	; <お>
- D - I - 0x003CB3 02:BCA3: 0A        .byte $0A	; <こ>
- D - I - 0x003CB4 02:BCA4: 0F        .byte $0F	; <そ>
- D - I - 0x003CB5 02:BCA5: 14        .byte $14	; <と>
- D - I - 0x003CB6 02:BCA6: 19        .byte $19	; <の>
- D - I - 0x003CB7 02:BCA7: 1E        .byte $1E	; <ほ>
- D - I - 0x003CB8 02:BCA8: 23        .byte $23	; <も>
- D - I - 0x003CB9 02:BCA9: 2B        .byte $2B	; <ろ>
- D - I - 0x003CBA 02:BCAA: A4        .byte $A4	; <ご>
- D - I - 0x003CBB 02:BCAB: A9        .byte $A9	; <ぞ>
- D - I - 0x003CBC 02:BCAC: B3        .byte $B3	; <ぼ>
- D - I - 0x003CBD 02:BCAD: CC        .byte $CC	; <ぽ>
- D - I - 0x003CBE 02:BCAE: 85        .byte $85	; <E>



off_BCAF_фраза_пароль_над_символами_пароля:
- D - I - 0x003CBF 02:BCAF: 6A        .byte $6A	; <レ>
- D - I - 0x003CC0 02:BCB0: 20        .byte $20	; <み>
- D - I - 0x003CC1 02:BCB1: 4D        .byte $4D	; <ス>
- D - I - 0x003CC2 02:BCB2: 4A        .byte $4A	; <コ>
- D - I - 0x003CC3 02:BCB3: 41        .byte $41	; <ア>
- D - I - 0x003CC4 02:BCB4: 62        .byte $62	; <メ>
- D - I - 0x003CC5 02:BCB5: 63        .byte $63	; <モ>
- D - I - 0x003CC6 02:BCB6: 2D        .byte $2D	; <を>
- D - I - 0x003CC7 02:BCB7: 4C        .byte $4C	; <シ>
- D - I - 0x003CC8 02:BCB8: 71        .byte $71	; <ュ>
- D - I - 0x003CC9 02:BCB9: 7D        .byte $7D	; <ー>
- D - I - 0x003CCA 02:BCBA: 54        .byte $54	; <ト>
- D - I - 0x003CCB 02:BCBB: AA        .byte $AA	; <だ>
- D - I - 0x003CCC 02:BCBC: 79        .byte $79	; <!>
- D - I - 0x003CCD 02:BCBD: FF        .byte $FF

off_BCBE_фраза_неверный_пароль:
- D - I - 0x003CCE 02:BCBE: 28        .byte $28	; <り>
- D - I - 0x003CCF 02:BCBF: 25        .byte $25	; <ゆ>
- D - I - 0x003CD0 02:BCC0: 05        .byte $05	; <お>
- D - I - 0x003CD1 02:BCC1: 2F        .byte $2F	; <っ>
- D - I - 0x003CD2 02:BCC2: 14        .byte $14	; <と>
- D - I - 0x003CD3 02:BCC3: 79        .byte $79	; <!>
- D - I - 0x003CD4 02:BCC4: 00        .byte $00
- D - I - 0x003CD5 02:BCC5: 0A        .byte $0A	; <こ>
- D - I - 0x003CD6 02:BCC6: 2A        .byte $2A	; <れ>
- D - I - 0x003CD7 02:BCC7: 1A        .byte $1A	; <は>
- D - I - 0x003CD8 02:BCC8: 60        .byte $60	; <ミ>
- D - I - 0x003CD9 02:BCC9: 4D        .byte $4D	; <ス>
- D - I - 0x003CDA 02:BCCA: 47        .byte $47	; <キ>
- D - I - 0x003CDB 02:BCCB: 6F        .byte $6F	; <ッ>
- D - I - 0x003CDC 02:BCCC: 48        .byte $48	; <ク>
- D - I - 0x003CDD 02:BCCD: AA        .byte $AA	; <だ>
- D - I - 0x003CDE 02:BCCE: 79        .byte $79	; <!>
- D - I - 0x003CDF 02:BCCF: 79        .byte $79	; <!>
- D - I - 0x003CE0 02:BCD0: FF        .byte $FF

tbl_BCD1:
- D - - - 0x003CE1 02:BCD1: 01        .byte $01	; <あ>
- D - - - 0x003CE2 02:BCD2: 02        .byte $02	; <い>
- D - - - 0x003CE3 02:BCD3: 03        .byte $03	; <う>
- D - - - 0x003CE4 02:BCD4: 04        .byte $04	; <え>
- D - - - 0x003CE5 02:BCD5: 05        .byte $05	; <お>
- D - - - 0x003CE6 02:BCD6: 06        .byte $06	; <か>
- D - - - 0x003CE7 02:BCD7: 11        .byte $11	; <ち>
- D - - - 0x003CE8 02:BCD8: 12        .byte $12	; <つ>
- D - - - 0x003CE9 02:BCD9: 13        .byte $13	; <て>
- D - - - 0x003CEA 02:BCDA: 14        .byte $14	; <と>
- D - - - 0x003CEB 02:BCDB: 15        .byte $15	; <な>
- D - - - 0x003CEC 02:BCDC: 16        .byte $16	; <に>
- D - - - 0x003CED 02:BCDD: 21        .byte $21	; <む>
- D - - - 0x003CEE 02:BCDE: 22        .byte $22	; <め>
- D - - - 0x003CEF 02:BCDF: 23        .byte $23	; <も>
- D - - - 0x003CF0 02:BCE0: 26        .byte $26	; <よ>
- D - - - 0x003CF1 02:BCE1: 31        .byte $31	; <ゅ>
- D - - - 0x003CF2 02:BCE2: 32        .byte $32	; <ょ>
- D - - - 0x003CF3 02:BCE3: 33        .byte $33	; <0>
- D - - - 0x003CF4 02:BCE4: 34        .byte $34	; <1>
- D - - - 0x003CF5 02:BCE5: 35        .byte $35	; <2>
- D - - - 0x003CF6 02:BCE6: 36        .byte $36	; <3>
- D - - - 0x003CF7 02:BCE7: 40        .byte $40	; <「>
- D - - - 0x003CF8 02:BCE8: 41        .byte $41	; <ア>
- D - - - 0x003CF9 02:BCE9: 42        .byte $42	; <イ>
- D - - - 0x003CFA 02:BCEA: 43        .byte $43	; <ウ>
- D - - - 0x003CFB 02:BCEB: 44        .byte $44	; <エ>
- D - - - 0x003CFC 02:BCEC: 51        .byte $51	; <チ>
- D - - - 0x003CFD 02:BCED: 52        .byte $52	; <ツ>
- D - - - 0x003CFE 02:BCEE: 53        .byte $53	; <テ>
- D - - - 0x003CFF 02:BCEF: 54        .byte $54	; <ト>
- D - - - 0x003D00 02:BCF0: 55        .byte $55	; <ナ>
- D - - - 0x003D01 02:BCF1: 56        .byte $56	; <ニ>
- - - - - 0x003D02 02:BCF2: 57        .byte $57	; <ヌ>



tbl_BCF3:
- D - - - 0x003D03 02:BCF3: FF BC     .word off_BCFF
- D - - - 0x003D05 02:BCF5: 0C BD     .word off_BD0C
- D - - - 0x003D07 02:BCF7: 22 BD     .word off_BD22
- D - - - 0x003D09 02:BCF9: 2C BD     .word off_BD2C
- D - - - 0x003D0B 02:BCFB: 3D BD     .word off_BD3D
- D - - - 0x003D0D 02:BCFD: 4E BD     .word off_BD4E

off_BCFF:
- D - I - 0x003D0F 02:BCFF: 6A        .byte $6A	; <レ>
- D - I - 0x003D10 02:BD00: 21        .byte $21	; <む>
- D - I - 0x003D11 02:BD01: C5        .byte $C5	; <ブ>
- D - I - 0x003D12 02:BD02: 67        .byte $67	; <ラ>
- D - I - 0x003D13 02:BD03: BA        .byte $BA	; <ジ>
- D - I - 0x003D14 02:BD04: 69        .byte $69	; <ル>
- D - I - 0x003D15 02:BD05: 00        .byte $00
- D - I - 0x003D16 02:BD06: 68        .byte $68	; <リ>
- D - I - 0x003D17 02:BD07: 45        .byte $45	; <オ>
- D - I - 0x003D18 02:BD08: 46        .byte $46	; <カ>
- D - I - 0x003D19 02:BD09: 6F        .byte $6F	; <ッ>
- D - I - 0x003D1A 02:BD0A: CF        .byte $CF	; <プ>
- D - I - 0x003D1B 02:BD0B: FF        .byte $FF
off_BD0C:
- D - I - 0x003D1C 02:BD0C: 66        .byte $66	; <ヨ>
- D - I - 0x003D1D 02:BD0D: 21        .byte $21	; <む>
- D - I - 0x003D1E 02:BD0E: A8        .byte $A8	; <ぜ>
- D - I - 0x003D1F 02:BD0F: 2E        .byte $2E	; <ん>
- D - I - 0x003D20 02:BD10: 0A        .byte $0A	; <こ>
- D - I - 0x003D21 02:BD11: 08        .byte $08	; <く>
- D - I - 0x003D22 02:BD12: 00        .byte $00
- D - I - 0x003D23 02:BD13: 0A        .byte $0A	; <こ>
- D - I - 0x003D24 02:BD14: 03        .byte $03	; <う>
- D - I - 0x003D25 02:BD15: 0A        .byte $0A	; <こ>
- D - I - 0x003D26 02:BD16: 03        .byte $03	; <う>
- D - I - 0x003D27 02:BD17: 4B        .byte $4B	; <サ>
- D - I - 0x003D28 02:BD18: 6F        .byte $6F	; <ッ>
- D - I - 0x003D29 02:BD19: 46        .byte $46	; <カ>
- D - I - 0x003D2A 02:BD1A: 7D        .byte $7D	; <ー>
- D - I - 0x003D2B 02:BD1B: 0E        .byte $0E	; <せ>
- D - I - 0x003D2C 02:BD1C: 2E        .byte $2E	; <ん>
- D - I - 0x003D2D 02:BD1D: 0C        .byte $0C	; <し>
- D - I - 0x003D2E 02:BD1E: 31        .byte $31	; <ゅ>
- D - I - 0x003D2F 02:BD1F: 09        .byte $09	; <け>
- D - I - 0x003D30 02:BD20: 2E        .byte $2E	; <ん>
- D - I - 0x003D31 02:BD21: FF        .byte $FF
off_BD22:
- D - I - 0x003D32 02:BD22: 6C        .byte $6C	; <ワ>
- D - I - 0x003D33 02:BD23: 21        .byte $21	; <む>
- D - I - 0x003D34 02:BD24: BA        .byte $BA	; <ジ>
- D - I - 0x003D35 02:BD25: 70        .byte $70	; <ャ>
- D - I - 0x003D36 02:BD26: CD        .byte $CD	; <パ>
- D - I - 0x003D37 02:BD27: 6E        .byte $6E	; <ン>
- D - I - 0x003D38 02:BD28: 46        .byte $46	; <カ>
- D - I - 0x003D39 02:BD29: 6F        .byte $6F	; <ッ>
- D - I - 0x003D3A 02:BD2A: CF        .byte $CF	; <プ>
- D - I - 0x003D3B 02:BD2B: FF        .byte $FF
off_BD2C:
- D - I - 0x003D3C 02:BD2C: 68        .byte $68	; <リ>
- D - I - 0x003D3D 02:BD2D: 21        .byte $21	; <む>
- D - I - 0x003D3E 02:BD2E: 6C        .byte $6C	; <ワ>
- D - I - 0x003D3F 02:BD2F: 7D        .byte $7D	; <ー>
- D - I - 0x003D40 02:BD30: 69        .byte $69	; <ル>
- D - I - 0x003D41 02:BD31: C2        .byte $C2	; <ド>
- D - I - 0x003D42 02:BD32: 65        .byte $65	; <ユ>
- D - I - 0x003D43 02:BD33: 7D        .byte $7D	; <ー>
- D - I - 0x003D44 02:BD34: 4D        .byte $4D	; <ス>
- D - I - 0x003D45 02:BD35: 00        .byte $00
- D - I - 0x003D46 02:BD36: 41        .byte $41	; <ア>
- D - I - 0x003D47 02:BD37: BA        .byte $BA	; <ジ>
- D - I - 0x003D48 02:BD38: 41        .byte $41	; <ア>
- D - I - 0x003D49 02:BD39: 26        .byte $26	; <よ>
- D - I - 0x003D4A 02:BD3A: 0E        .byte $0E	; <せ>
- D - I - 0x003D4B 02:BD3B: 2E        .byte $2E	; <ん>
- D - I - 0x003D4C 02:BD3C: FF        .byte $FF
off_BD3D:
- D - I - 0x003D4D 02:BD3D: 68        .byte $68	; <リ>
- D - I - 0x003D4E 02:BD3E: 21        .byte $21	; <む>
- D - I - 0x003D4F 02:BD3F: 6C        .byte $6C	; <ワ>
- D - I - 0x003D50 02:BD40: 7D        .byte $7D	; <ー>
- D - I - 0x003D51 02:BD41: 69        .byte $69	; <ル>
- D - I - 0x003D52 02:BD42: C2        .byte $C2	; <ド>
- D - I - 0x003D53 02:BD43: 65        .byte $65	; <ユ>
- D - I - 0x003D54 02:BD44: 7D        .byte $7D	; <ー>
- D - I - 0x003D55 02:BD45: 4D        .byte $4D	; <ス>
- D - I - 0x003D56 02:BD46: 00        .byte $00
- D - I - 0x003D57 02:BD47: 26        .byte $26	; <よ>
- D - I - 0x003D58 02:BD48: 0E        .byte $0E	; <せ>
- D - I - 0x003D59 02:BD49: 2E        .byte $2E	; <ん>
- D - I - 0x003D5A 02:BD4A: 68        .byte $68	; <リ>
- D - I - 0x003D5B 02:BD4B: 7D        .byte $7D	; <ー>
- D - I - 0x003D5C 02:BD4C: B6        .byte $B6	; <グ>
- D - I - 0x003D5D 02:BD4D: FF        .byte $FF
off_BD4E:
- D - I - 0x003D5E 02:BD4E: 66        .byte $66	; <ヨ>
- D - I - 0x003D5F 02:BD4F: 21        .byte $21	; <む>
- D - I - 0x003D60 02:BD50: 6C        .byte $6C	; <ワ>
- D - I - 0x003D61 02:BD51: 7D        .byte $7D	; <ー>
- D - I - 0x003D62 02:BD52: 69        .byte $69	; <ル>
- D - I - 0x003D63 02:BD53: C2        .byte $C2	; <ド>
- D - I - 0x003D64 02:BD54: 65        .byte $65	; <ユ>
- D - I - 0x003D65 02:BD55: 7D        .byte $7D	; <ー>
- D - I - 0x003D66 02:BD56: 4D        .byte $4D	; <ス>
- D - I - 0x003D67 02:BD57: 00        .byte $00
- D - I - 0x003D68 02:BD58: 09        .byte $09	; <け>
- D - I - 0x003D69 02:BD59: 2F        .byte $2F	; <っ>
- D - I - 0x003D6A 02:BD5A: 0C        .byte $0C	; <し>
- D - I - 0x003D6B 02:BD5B: 32        .byte $32	; <ょ>
- D - I - 0x003D6C 02:BD5C: 03        .byte $03	; <う>
- D - I - 0x003D6D 02:BD5D: 54        .byte $54	; <ト>
- D - I - 0x003D6E 02:BD5E: 7D        .byte $7D	; <ー>
- D - I - 0x003D6F 02:BD5F: 55        .byte $55	; <ナ>
- D - I - 0x003D70 02:BD60: 62        .byte $62	; <メ>
- D - I - 0x003D71 02:BD61: 6E        .byte $6E	; <ン>
- D - I - 0x003D72 02:BD62: 54        .byte $54	; <ト>
- D - I - 0x003D73 02:BD63: FF        .byte $FF



tbl_BD64:
- D - - - 0x003D74 02:BD64: 74 BD     .word off_BD74
- D - - - 0x003D76 02:BD66: 7C BD     .word off_BD7C
- D - - - 0x003D78 02:BD68: 82 BD     .word off_BD82
- D - - - 0x003D7A 02:BD6A: 88 BD     .word off_BD88
- D - - - 0x003D7C 02:BD6C: 8E BD     .word off_BD8E
- D - - - 0x003D7E 02:BD6E: 94 BD     .word off_BD94
- D - - - 0x003D80 02:BD70: 9A BD     .word off_BD9A
- - - - - 0x003D82 02:BD72: A2 BD     .word off_BDA2

off_BD74:
- D - I - 0x003D84 02:BD74: 04        .byte $04	; <え>
- D - I - 0x003D85 02:BD75: 2E        .byte $2E	; <ん>
- D - I - 0x003D86 02:BD76: 0E        .byte $0E	; <せ>
- D - I - 0x003D87 02:BD77: 02        .byte $02	; <い>
- D - I - 0x003D88 02:BD78: A6        .byte $A6	; <じ>
- D - I - 0x003D89 02:BD79: 01        .byte $01	; <あ>
- D - I - 0x003D8A 02:BD7A: 02        .byte $02	; <い>
- D - I - 0x003D8B 02:BD7B: FF        .byte $FF
off_BD7C:
- D - I - 0x003D8C 02:BD7C: 34        .byte $34	; <1>
- D - I - 0x003D8D 02:BD7D: 06        .byte $06	; <か>
- D - I - 0x003D8E 02:BD7E: 02        .byte $02	; <い>
- D - I - 0x003D8F 02:BD7F: 0E        .byte $0E	; <せ>
- D - I - 0x003D90 02:BD80: 2E        .byte $2E	; <ん>
- D - I - 0x003D91 02:BD81: FF        .byte $FF
off_BD82:
- D - I - 0x003D92 02:BD82: 35        .byte $35	; <2>
- D - I - 0x003D93 02:BD83: 06        .byte $06	; <か>
- D - I - 0x003D94 02:BD84: 02        .byte $02	; <い>
- D - I - 0x003D95 02:BD85: 0E        .byte $0E	; <せ>
- D - I - 0x003D96 02:BD86: 2E        .byte $2E	; <ん>
- D - I - 0x003D97 02:BD87: FF        .byte $FF
off_BD88:
- D - I - 0x003D98 02:BD88: 36        .byte $36	; <3>
- D - I - 0x003D99 02:BD89: 06        .byte $06	; <か>
- D - I - 0x003D9A 02:BD8A: 02        .byte $02	; <い>
- D - I - 0x003D9B 02:BD8B: 0E        .byte $0E	; <せ>
- D - I - 0x003D9C 02:BD8C: 2E        .byte $2E	; <ん>
- D - I - 0x003D9D 02:BD8D: FF        .byte $FF
off_BD8E:
- D - I - 0x003D9E 02:BD8E: 37        .byte $37	; <4>
- D - I - 0x003D9F 02:BD8F: 06        .byte $06	; <か>
- D - I - 0x003DA0 02:BD90: 02        .byte $02	; <い>
- D - I - 0x003DA1 02:BD91: 0E        .byte $0E	; <せ>
- D - I - 0x003DA2 02:BD92: 2E        .byte $2E	; <ん>
- D - I - 0x003DA3 02:BD93: FF        .byte $FF
off_BD94:
- D - I - 0x003DA4 02:BD94: 38        .byte $38	; <5>
- D - I - 0x003DA5 02:BD95: 06        .byte $06	; <か>
- D - I - 0x003DA6 02:BD96: 02        .byte $02	; <い>
- D - I - 0x003DA7 02:BD97: 0E        .byte $0E	; <せ>
- D - I - 0x003DA8 02:BD98: 2E        .byte $2E	; <ん>
- D - I - 0x003DA9 02:BD99: FF        .byte $FF
off_BD9A:
- D - I - 0x003DAA 02:BD9A: 09        .byte $09	; <け>
- D - I - 0x003DAB 02:BD9B: 2F        .byte $2F	; <っ>
- D - I - 0x003DAC 02:BD9C: 0C        .byte $0C	; <し>
- D - I - 0x003DAD 02:BD9D: 32        .byte $32	; <ょ>
- D - I - 0x003DAE 02:BD9E: 03        .byte $03	; <う>
- D - I - 0x003DAF 02:BD9F: 0E        .byte $0E	; <せ>
- D - I - 0x003DB0 02:BDA0: 2E        .byte $2E	; <ん>
- D - I - 0x003DB1 02:BDA1: FF        .byte $FF
off_BDA2:
- - - - - 0x003DB2 02:BDA2: 0B        .byte $0B	; <さ>
- - - - - 0x003DB3 02:BDA3: 02        .byte $02	; <い>
- - - - - 0x003DB4 02:BDA4: 0C        .byte $0C	; <し>
- - - - - 0x003DB5 02:BDA5: 01        .byte $01	; <あ>
- - - - - 0x003DB6 02:BDA6: 02        .byte $02	; <い>
- - - - - 0x003DB7 02:BDA7: FF        .byte $FF



tbl_BDA8:
- D - - - 0x003DB8 02:BDA8: F2 BD     .word off_BDF2_00
- D - - - 0x003DBA 02:BDAA: F9 BD     .word off_BDF9_01
- D - - - 0x003DBC 02:BDAC: 00 BE     .word off_BE00_02
- D - - - 0x003DBE 02:BDAE: 09 BE     .word off_BE09_03
- D - - - 0x003DC0 02:BDB0: 11 BE     .word off_BE11_04
- D - - - 0x003DC2 02:BDB2: 1A BE     .word off_BE1A_05
- D - - - 0x003DC4 02:BDB4: 21 BE     .word off_BE21_06
- D - - - 0x003DC6 02:BDB6: 29 BE     .word off_BE29_07
- D - - - 0x003DC8 02:BDB8: 30 BE     .word off_BE30_08
- D - - - 0x003DCA 02:BDBA: 37 BE     .word off_BE37_09
- D - - - 0x003DCC 02:BDBC: 3F BE     .word off_BE3F_0A
- D - - - 0x003DCE 02:BDBE: 48 BE     .word off_BE48_0B
- D - - - 0x003DD0 02:BDC0: 4F BE     .word off_BE4F_0C
- D - - - 0x003DD2 02:BDC2: 59 BE     .word off_BE59_0D
- D - - - 0x003DD4 02:BDC4: 5F BE     .word off_BE5F_0E
- D - - - 0x003DD6 02:BDC6: 66 BE     .word off_BE66_0F
- D - - - 0x003DD8 02:BDC8: 6D BE     .word off_BE6D_10
- D - - - 0x003DDA 02:BDCA: 74 BE     .word off_BE74_11
- D - - - 0x003DDC 02:BDCC: 7D BE     .word off_BE7D_12
- D - - - 0x003DDE 02:BDCE: 84 BE     .word off_BE84_13
- D - - - 0x003DE0 02:BDD0: 8A BE     .word off_BE8A_14
- D - - - 0x003DE2 02:BDD2: 91 BE     .word off_BE91_15
- D - - - 0x003DE4 02:BDD4: 97 BE     .word off_BE97_16
- D - - - 0x003DE6 02:BDD6: 9F BE     .word off_BE9F_17
- D - - - 0x003DE8 02:BDD8: A7 BE     .word off_BEA7_18
- D - - - 0x003DEA 02:BDDA: AE BE     .word off_BEAE_19
- D - - - 0x003DEC 02:BDDC: B7 BE     .word off_BEB7_1A
- D - - - 0x003DEE 02:BDDE: C0 BE     .word off_BEC0_1B
- D - - - 0x003DF0 02:BDE0: CA BE     .word off_BECA_1C
- D - - - 0x003DF2 02:BDE2: D2 BE     .word off_BED2_1D
- D - - - 0x003DF4 02:BDE4: DA BE     .word off_BEDA_1E
- D - - - 0x003DF6 02:BDE6: E2 BE     .word off_BEE2_1F
- D - - - 0x003DF8 02:BDE8: EA BE     .word off_BEEA_20
- D - - - 0x003DFA 02:BDEA: F2 BE     .word off_BEF2_21
- D - - - 0x003DFC 02:BDEC: FC BE     .word off_BEFC_22
- D - - - 0x003DFE 02:BDEE: 05 BF     .word off_BF05_23
- - - - - 0x003E00 02:BDF0: 0D BF     .word off_BF0D_24

off_BDF2_00:
- D - I - 0x003E02 02:BDF2: 00        .byte $00
- D - I - 0x003E03 02:BDF3: 4B        .byte $4B	; <サ>
- D - I - 0x003E04 02:BDF4: 6E        .byte $6E	; <ン>
- D - I - 0x003E05 02:BDF5: CD        .byte $CD	; <パ>
- D - I - 0x003E06 02:BDF6: 43        .byte $43	; <ウ>
- D - I - 0x003E07 02:BDF7: 6B        .byte $6B	; <ロ>
- D - I - 0x003E08 02:BDF8: FF        .byte $FF

off_BDF9_01:
- D - I - 0x003E09 02:BDF9: 00        .byte $00
- D - I - 0x003E0A 02:BDFA: 00        .byte $00
- D - I - 0x003E0B 02:BDFB: 15        .byte $15	; <な>
- D - I - 0x003E0C 02:BDFC: 2E        .byte $2E	; <ん>
- D - I - 0x003E0D 02:BDFD: 06        .byte $06	; <か>
- D - I - 0x003E0E 02:BDFE: 12        .byte $12	; <つ>
- D - I - 0x003E0F 02:BDFF: FF        .byte $FF

off_BE00_02:
- D - I - 0x003E10 02:BE00: A8        .byte $A8	; <ぜ>
- D - I - 0x003E11 02:BE01: 2E        .byte $2E	; <ん>
- D - I - 0x003E12 02:BE02: 16        .byte $16	; <に>
- D - I - 0x003E13 02:BE03: 1E        .byte $1E	; <ほ>
- D - I - 0x003E14 02:BE04: 2E        .byte $2E	; <ん>
- D - I - 0x003E15 02:BE05: 65        .byte $65	; <ユ>
- D - I - 0x003E16 02:BE06: 7D        .byte $7D	; <ー>
- D - I - 0x003E17 02:BE07: 4D        .byte $4D	; <ス>
- D - I - 0x003E18 02:BE08: FF        .byte $FF

off_BE09_03:
- D - I - 0x003E19 02:BE09: 00        .byte $00
- D - I - 0x003E1A 02:BE0A: 5C        .byte $5C	; <フ>
- D - I - 0x003E1B 02:BE0B: 69        .byte $69	; <ル>
- D - I - 0x003E1C 02:BE0C: 60        .byte $60	; <ミ>
- D - I - 0x003E1D 02:BE0D: 58        .byte $58	; <ネ>
- D - I - 0x003E1E 02:BE0E: 6E        .byte $6E	; <ン>
- D - I - 0x003E1F 02:BE0F: 4E        .byte $4E	; <セ>
- D - I - 0x003E20 02:BE10: FF        .byte $FF

off_BE11_04:
- D - I - 0x003E21 02:BE11: 00        .byte $00
- D - I - 0x003E22 02:BE12: 4A        .byte $4A	; <コ>
- D - I - 0x003E23 02:BE13: 68        .byte $68	; <リ>
- D - I - 0x003E24 02:BE14: 6E        .byte $6E	; <ン>
- D - I - 0x003E25 02:BE15: 51        .byte $51	; <チ>
- D - I - 0x003E26 02:BE16: 70        .byte $70	; <ャ>
- D - I - 0x003E27 02:BE17: 6E        .byte $6E	; <ン>
- D - I - 0x003E28 02:BE18: 4D        .byte $4D	; <ス>
- D - I - 0x003E29 02:BE19: FF        .byte $FF

off_BE1A_05:
- D - I - 0x003E2A 02:BE1A: 00        .byte $00
- D - I - 0x003E2B 02:BE1B: 00        .byte $00
- D - I - 0x003E2C 02:BE1C: B6        .byte $B6	; <グ>
- D - I - 0x003E2D 02:BE1D: 6A        .byte $6A	; <レ>
- D - I - 0x003E2E 02:BE1E: 60        .byte $60	; <ミ>
- D - I - 0x003E2F 02:BE1F: 45        .byte $45	; <オ>
- D - I - 0x003E30 02:BE20: FF        .byte $FF

off_BE21_06:
- D - I - 0x003E31 02:BE21: 00        .byte $00
- D - I - 0x003E32 02:BE22: CD        .byte $CD	; <パ>
- D - I - 0x003E33 02:BE23: 69        .byte $69	; <ル>
- D - I - 0x003E34 02:BE24: 62        .byte $62	; <メ>
- D - I - 0x003E35 02:BE25: 42        .byte $42	; <イ>
- D - I - 0x003E36 02:BE26: 67        .byte $67	; <ラ>
- D - I - 0x003E37 02:BE27: 4D        .byte $4D	; <ス>
- D - I - 0x003E38 02:BE28: FF        .byte $FF

off_BE29_07:
- D - I - 0x003E39 02:BE29: 00        .byte $00
- D - I - 0x003E3A 02:BE2A: 00        .byte $00
- D - I - 0x003E3B 02:BE2B: 4B        .byte $4B	; <サ>
- D - I - 0x003E3C 02:BE2C: 6E        .byte $6E	; <ン>
- D - I - 0x003E3D 02:BE2D: 54        .byte $54	; <ト>
- D - I - 0x003E3E 02:BE2E: 4D        .byte $4D	; <ス>
- D - I - 0x003E3F 02:BE2F: FF        .byte $FF

off_BE30_08:
- D - I - 0x003E40 02:BE30: 00        .byte $00
- D - I - 0x003E41 02:BE31: 5C        .byte $5C	; <フ>
- D - I - 0x003E42 02:BE32: 67        .byte $67	; <ラ>
- D - I - 0x003E43 02:BE33: 62        .byte $62	; <メ>
- D - I - 0x003E44 02:BE34: 6E        .byte $6E	; <ン>
- D - I - 0x003E45 02:BE35: B8        .byte $B8	; <ゴ>
- D - I - 0x003E46 02:BE36: FF        .byte $FF

off_BE37_09:
- D - I - 0x003E47 02:BE37: 08        .byte $08	; <く>
- D - I - 0x003E48 02:BE38: 16        .byte $16	; <に>
- D - I - 0x003E49 02:BE39: 20        .byte $20	; <み>
- D - I - 0x003E4A 02:BE3A: A0        .byte $A0	; <が>
- D - I - 0x003E4B 02:BE3B: 08        .byte $08	; <く>
- D - I - 0x003E4C 02:BE3C: 02        .byte $02	; <い>
- D - I - 0x003E4D 02:BE3D: 2E        .byte $2E	; <ん>
- D - I - 0x003E4E 02:BE3E: FF        .byte $FF

off_BE3F_0A:
- D - I - 0x003E4F 02:BE3F: 01        .byte $01	; <あ>
- D - I - 0x003E50 02:BE40: 07        .byte $07	; <き>
- D - I - 0x003E51 02:BE41: 10        .byte $10	; <た>
- D - I - 0x003E52 02:BE42: 0C        .byte $0C	; <し>
- D - I - 0x003E53 02:BE43: 32        .byte $32	; <ょ>
- D - I - 0x003E54 02:BE44: 03        .byte $03	; <う>
- D - I - 0x003E55 02:BE45: 0A        .byte $0A	; <こ>
- D - I - 0x003E56 02:BE46: 03        .byte $03	; <う>
- D - I - 0x003E57 02:BE47: FF        .byte $FF

off_BE48_0B:
- D - I - 0x003E58 02:BE48: 00        .byte $00
- D - I - 0x003E59 02:BE49: 00        .byte $00
- D - I - 0x003E5A 02:BE4A: 10        .byte $10	; <た>
- D - I - 0x003E5B 02:BE4B: 12        .byte $12	; <つ>
- D - I - 0x003E5C 02:BE4C: 15        .byte $15	; <な>
- D - I - 0x003E5D 02:BE4D: 20        .byte $20	; <み>
- D - I - 0x003E5E 02:BE4E: FF        .byte $FF

off_BE4F_0C:
- D - I - 0x003E5F 02:BE4F: 21        .byte $21	; <む>
- D - I - 0x003E60 02:BE50: 0B        .byte $0B	; <さ>
- D - I - 0x003E61 02:BE51: 0C        .byte $0C	; <し>
- D - I - 0x003E62 02:BE52: 02        .byte $02	; <い>
- D - I - 0x003E63 02:BE53: AA        .byte $AA	; <だ>
- D - I - 0x003E64 02:BE54: 02        .byte $02	; <い>
- D - I - 0x003E65 02:BE55: 1C        .byte $1C	; <ふ>
- D - I - 0x003E66 02:BE56: A9        .byte $A9	; <ぞ>
- D - I - 0x003E67 02:BE57: 08        .byte $08	; <く>
- D - I - 0x003E68 02:BE58: FF        .byte $FF

off_BE59_0D:
- D - I - 0x003E69 02:BE59: 00        .byte $00
- D - I - 0x003E6A 02:BE5A: 00        .byte $00
- D - I - 0x003E6B 02:BE5B: 1C        .byte $1C	; <ふ>
- D - I - 0x003E6C 02:BE5C: 27        .byte $27	; <ら>
- D - I - 0x003E6D 02:BE5D: 19        .byte $19	; <の>
- D - I - 0x003E6E 02:BE5E: FF        .byte $FF

off_BE5F_0E:
- D - I - 0x003E6F 02:BE5F: 00        .byte $00
- D - I - 0x003E70 02:BE60: 00        .byte $00
- D - I - 0x003E71 02:BE61: 14        .byte $14	; <と>
- D - I - 0x003E72 02:BE62: 03        .byte $03	; <う>
- D - I - 0x003E73 02:BE63: 1E        .byte $1E	; <ほ>
- D - I - 0x003E74 02:BE64: 03        .byte $03	; <う>
- D - I - 0x003E75 02:BE65: FF        .byte $FF

off_BE66_0F:
- D - I - 0x003E76 02:BE66: 00        .byte $00
- D - I - 0x003E77 02:BE67: 81        .byte $81	; <A>
- D - I - 0x003E78 02:BE68: 8F        .byte $8F	; <S>
- D - I - 0x003E79 02:BE69: 6B        .byte $6B	; <ロ>
- D - I - 0x003E7A 02:BE6A: 7D        .byte $7D	; <ー>
- D - I - 0x003E7B 02:BE6B: 5F        .byte $5F	; <マ>
- D - I - 0x003E7C 02:BE6C: FF        .byte $FF

off_BE6D_10:
- D - I - 0x003E7D 02:BE6D: 00        .byte $00
- D - I - 0x003E7E 02:BE6E: 43        .byte $43	; <ウ>
- D - I - 0x003E7F 02:BE6F: 69        .byte $69	; <ル>
- D - I - 0x003E80 02:BE70: B6        .byte $B6	; <グ>
- D - I - 0x003E81 02:BE71: 41        .byte $41	; <ア>
- D - I - 0x003E82 02:BE72: 42        .byte $42	; <イ>
- D - I - 0x003E83 02:BE73: FF        .byte $FF

off_BE74_11:
- D - I - 0x003E84 02:BE74: 5A        .byte $5A	; <ハ>
- D - I - 0x003E85 02:BE75: 6E        .byte $6E	; <ン>
- D - I - 0x003E86 02:BE76: C5        .byte $C5	; <ブ>
- D - I - 0x003E87 02:BE77: 69        .byte $69	; <ル>
- D - I - 0x003E88 02:BE78: B4        .byte $B4	; <ガ>
- D - I - 0x003E89 02:BE79: 7D        .byte $7D	; <ー>
- D - I - 0x003E8A 02:BE7A: 8F        .byte $8F	; <S>
- D - I - 0x003E8B 02:BE7B: 91        .byte $91	; <V>
- D - I - 0x003E8C 02:BE7C: FF        .byte $FF

off_BE7D_12:
- D - I - 0x003E8D 02:BE7D: 00        .byte $00
- D - I - 0x003E8E 02:BE7E: A8        .byte $A8	; <ぜ>
- D - I - 0x003E8F 02:BE7F: 2E        .byte $2E	; <ん>
- D - I - 0x003E90 02:BE80: 16        .byte $16	; <に>
- D - I - 0x003E91 02:BE81: 1E        .byte $1E	; <ほ>
- D - I - 0x003E92 02:BE82: 2E        .byte $2E	; <ん>
- D - I - 0x003E93 02:BE83: FF        .byte $FF

off_BE84_13:
- D - I - 0x003E94 02:BE84: 00        .byte $00
- D - I - 0x003E95 02:BE85: 00        .byte $00
- D - I - 0x003E96 02:BE86: 4C        .byte $4C	; <シ>
- D - I - 0x003E97 02:BE87: 68        .byte $68	; <リ>
- D - I - 0x003E98 02:BE88: 41        .byte $41	; <ア>
- D - I - 0x003E99 02:BE89: FF        .byte $FF

off_BE8A_14:
- D - I - 0x003E9A 02:BE8A: 00        .byte $00
- D - I - 0x003E9B 02:BE8B: 11        .byte $11	; <ち>
- D - I - 0x003E9C 02:BE8C: 31        .byte $31	; <ゅ>
- D - I - 0x003E9D 02:BE8D: 03        .byte $03	; <う>
- D - I - 0x003E9E 02:BE8E: A4        .byte $A4	; <ご>
- D - I - 0x003E9F 02:BE8F: 08        .byte $08	; <く>
- D - I - 0x003EA0 02:BE90: FF        .byte $FF

off_BE91_15:
- D - I - 0x003EA1 02:BE91: 00        .byte $00
- D - I - 0x003EA2 02:BE92: 00        .byte $00
- D - I - 0x003EA3 02:BE93: 42        .byte $42	; <イ>
- D - I - 0x003EA4 02:BE94: 67        .byte $67	; <ラ>
- D - I - 0x003EA5 02:BE95: 6E        .byte $6E	; <ン>
- D - I - 0x003EA6 02:BE96: FF        .byte $FF

off_BE97_16:
- D - I - 0x003EA7 02:BE97: 07        .byte $07	; <き>
- D - I - 0x003EA8 02:BE98: 10        .byte $10	; <た>
- D - I - 0x003EA9 02:BE99: 11        .byte $11	; <ち>
- D - I - 0x003EAA 02:BE9A: 32        .byte $32	; <ょ>
- D - I - 0x003EAB 02:BE9B: 03        .byte $03	; <う>
- D - I - 0x003EAC 02:BE9C: 0E        .byte $0E	; <せ>
- D - I - 0x003EAD 02:BE9D: 2E        .byte $2E	; <ん>
- D - I - 0x003EAE 02:BE9E: FF        .byte $FF

off_BE9F_17:
- D - I - 0x003EAF 02:BE9F: 4B        .byte $4B	; <サ>
- D - I - 0x003EB0 02:BEA0: 43        .byte $43	; <ウ>
- D - I - 0x003EB1 02:BEA1: BA        .byte $BA	; <ジ>
- D - I - 0x003EB2 02:BEA2: 41        .byte $41	; <ア>
- D - I - 0x003EB3 02:BEA3: 67        .byte $67	; <ラ>
- D - I - 0x003EB4 02:BEA4: C4        .byte $C4	; <ビ>
- D - I - 0x003EB5 02:BEA5: 41        .byte $41	; <ア>
- D - I - 0x003EB6 02:BEA6: FF        .byte $FF

off_BEA7_18:
- D - I - 0x003EB7 02:BEA7: 00        .byte $00
- D - I - 0x003EB8 02:BEA8: 00        .byte $00
- D - I - 0x003EB9 02:BEA9: 06        .byte $06	; <か>
- D - I - 0x003EBA 02:BEAA: 2E        .byte $2E	; <ん>
- D - I - 0x003EBB 02:BEAB: 0A        .byte $0A	; <こ>
- D - I - 0x003EBC 02:BEAC: 08        .byte $08	; <く>
- D - I - 0x003EBD 02:BEAD: FF        .byte $FF

off_BEAE_19:
- D - I - 0x003EBE 02:BEAE: C3        .byte $C3	; <バ>
- D - I - 0x003EBF 02:BEAF: 4D        .byte $4D	; <ス>
- D - I - 0x003EC0 02:BEB0: 4A        .byte $4A	; <コ>
- D - I - 0x003EC1 02:BEB1: 3F        .byte $3F	; <•>
- D - I - 0x003EC2 02:BEB2: BE        .byte $BE	; <ダ>
- D - I - 0x003EC3 02:BEB3: 3F        .byte $3F	; <•>
- D - I - 0x003EC4 02:BEB4: B4        .byte $B4	; <ガ>
- D - I - 0x003EC5 02:BEB5: 5F        .byte $5F	; <マ>
- D - I - 0x003EC6 02:BEB6: FF        .byte $FF

off_BEB7_1A:
- D - I - 0x003EC7 02:BEB7: D1        .byte $D1	; <ポ>
- D - I - 0x003EC8 02:BEB8: 7D        .byte $7D	; <ー>
- D - I - 0x003EC9 02:BEB9: 67        .byte $67	; <ラ>
- D - I - 0x003ECA 02:BEBA: 6E        .byte $6E	; <ン>
- D - I - 0x003ECB 02:BEBB: C2        .byte $C2	; <ド>
- D - I - 0x003ECC 02:BEBC: 65        .byte $65	; <ユ>
- D - I - 0x003ECD 02:BEBD: 7D        .byte $7D	; <ー>
- D - I - 0x003ECE 02:BEBE: 4D        .byte $4D	; <ス>
- D - I - 0x003ECF 02:BEBF: FF        .byte $FF

off_BEC0_1B:
- D - I - 0x003ED0 02:BEC0: 42        .byte $42	; <イ>
- D - I - 0x003ED1 02:BEC1: 6E        .byte $6E	; <ン>
- D - I - 0x003ED2 02:BEC2: B6        .byte $B6	; <グ>
- D - I - 0x003ED3 02:BEC3: 67        .byte $67	; <ラ>
- D - I - 0x003ED4 02:BEC4: 6E        .byte $6E	; <ン>
- D - I - 0x003ED5 02:BEC5: C2        .byte $C2	; <ド>
- D - I - 0x003ED6 02:BEC6: 65        .byte $65	; <ユ>
- D - I - 0x003ED7 02:BEC7: 7D        .byte $7D	; <ー>
- D - I - 0x003ED8 02:BEC8: 4D        .byte $4D	; <ス>
- D - I - 0x003ED9 02:BEC9: FF        .byte $FF

off_BECA_1C:
- D - I - 0x003EDA 02:BECA: 4F        .byte $4F	; <ソ>
- D - I - 0x003EDB 02:BECB: C4        .byte $C4	; <ビ>
- D - I - 0x003EDC 02:BECC: 44        .byte $44	; <エ>
- D - I - 0x003EDD 02:BECD: 54        .byte $54	; <ト>
- D - I - 0x003EDE 02:BECE: 65        .byte $65	; <ユ>
- D - I - 0x003EDF 02:BECF: 7D        .byte $7D	; <ー>
- D - I - 0x003EE0 02:BED0: 4D        .byte $4D	; <ス>
- D - I - 0x003EE1 02:BED1: FF        .byte $FF

off_BED2_1D:
- D - I - 0x003EE2 02:BED2: 5C        .byte $5C	; <フ>
- D - I - 0x003EE3 02:BED3: 67        .byte $67	; <ラ>
- D - I - 0x003EE4 02:BED4: 6E        .byte $6E	; <ン>
- D - I - 0x003EE5 02:BED5: 4D        .byte $4D	; <ス>
- D - I - 0x003EE6 02:BED6: 65        .byte $65	; <ユ>
- D - I - 0x003EE7 02:BED7: 7D        .byte $7D	; <ー>
- D - I - 0x003EE8 02:BED8: 4D        .byte $4D	; <ス>
- D - I - 0x003EE9 02:BED9: FF        .byte $FF

off_BEDA_1E:
- D - I - 0x003EEA 02:BEDA: 62        .byte $62	; <メ>
- D - I - 0x003EEB 02:BEDB: 47        .byte $47	; <キ>
- D - I - 0x003EEC 02:BEDC: 4C        .byte $4C	; <シ>
- D - I - 0x003EED 02:BEDD: 4A        .byte $4A	; <コ>
- D - I - 0x003EEE 02:BEDE: 65        .byte $65	; <ユ>
- D - I - 0x003EEF 02:BEDF: 7D        .byte $7D	; <ー>
- D - I - 0x003EF0 02:BEE0: 4D        .byte $4D	; <ス>
- D - I - 0x003EF1 02:BEE1: FF        .byte $FF

off_BEE2_1F:
- D - I - 0x003EF2 02:BEE2: 42        .byte $42	; <イ>
- D - I - 0x003EF3 02:BEE3: 50        .byte $50	; <タ>
- D - I - 0x003EF4 02:BEE4: 68        .byte $68	; <リ>
- D - I - 0x003EF5 02:BEE5: 41        .byte $41	; <ア>
- D - I - 0x003EF6 02:BEE6: 65        .byte $65	; <ユ>
- D - I - 0x003EF7 02:BEE7: 7D        .byte $7D	; <ー>
- D - I - 0x003EF8 02:BEE8: 4D        .byte $4D	; <ス>
- D - I - 0x003EF9 02:BEE9: FF        .byte $FF

off_BEEA_20:
- D - I - 0x003EFA 02:BEEA: 45        .byte $45	; <オ>
- D - I - 0x003EFB 02:BEEB: 67        .byte $67	; <ラ>
- D - I - 0x003EFC 02:BEEC: 6E        .byte $6E	; <ン>
- D - I - 0x003EFD 02:BEED: BE        .byte $BE	; <ダ>
- D - I - 0x003EFE 02:BEEE: 65        .byte $65	; <ユ>
- D - I - 0x003EFF 02:BEEF: 7D        .byte $7D	; <ー>
- D - I - 0x003F00 02:BEF0: 4D        .byte $4D	; <ス>
- D - I - 0x003F01 02:BEF1: FF        .byte $FF

off_BEF2_21:
- D - I - 0x003F02 02:BEF2: 41        .byte $41	; <ア>
- D - I - 0x003F03 02:BEF3: 69        .byte $69	; <ル>
- D - I - 0x003F04 02:BEF4: BC        .byte $BC	; <ゼ>
- D - I - 0x003F05 02:BEF5: 6E        .byte $6E	; <ン>
- D - I - 0x003F06 02:BEF6: 51        .byte $51	; <チ>
- D - I - 0x003F07 02:BEF7: 6E        .byte $6E	; <ン>
- D - I - 0x003F08 02:BEF8: 65        .byte $65	; <ユ>
- D - I - 0x003F09 02:BEF9: 7D        .byte $7D	; <ー>
- D - I - 0x003F0A 02:BEFA: 4D        .byte $4D	; <ス>
- D - I - 0x003F0B 02:BEFB: FF        .byte $FF

off_BEFC_22:
- D - I - 0x003F0C 02:BEFC: 56        .byte $56	; <ニ>
- D - I - 0x003F0D 02:BEFD: 4C        .byte $4C	; <シ>
- D - I - 0x003F0E 02:BEFE: C2        .byte $C2	; <ド>
- D - I - 0x003F0F 02:BEFF: 42        .byte $42	; <イ>
- D - I - 0x003F10 02:BF00: 52        .byte $52	; <ツ>
- D - I - 0x003F11 02:BF01: 65        .byte $65	; <ユ>
- D - I - 0x003F12 02:BF02: 7D        .byte $7D	; <ー>
- D - I - 0x003F13 02:BF03: 4D        .byte $4D	; <ス>
- D - I - 0x003F14 02:BF04: FF        .byte $FF

off_BF05_23:
- D - I - 0x003F15 02:BF05: C5        .byte $C5	; <ブ>
- D - I - 0x003F16 02:BF06: 67        .byte $67	; <ラ>
- D - I - 0x003F17 02:BF07: BA        .byte $BA	; <ジ>
- D - I - 0x003F18 02:BF08: 69        .byte $69	; <ル>
- D - I - 0x003F19 02:BF09: 65        .byte $65	; <ユ>
- D - I - 0x003F1A 02:BF0A: 7D        .byte $7D	; <ー>
- D - I - 0x003F1B 02:BF0B: 4D        .byte $4D	; <ス>
- D - I - 0x003F1C 02:BF0C: FF        .byte $FF

off_BF0D_24:
- - - - - 0x003F1D 02:BF0D: C5        .byte $C5	; <ブ>
- - - - - 0x003F1E 02:BF0E: 67        .byte $67	; <ラ>
- - - - - 0x003F1F 02:BF0F: BA        .byte $BA	; <ジ>
- - - - - 0x003F20 02:BF10: 69        .byte $69	; <ル>
- - - - - 0x003F21 02:BF11: 65        .byte $65	; <ユ>
- - - - - 0x003F22 02:BF12: 7D        .byte $7D	; <ー>
- - - - - 0x003F23 02:BF13: 4D        .byte $4D	; <ス>
- - - - - 0x003F24 02:BF14: FF        .byte $FF



off_BF15_оформление_окон_и_текст:
; левый верхний угол синего окна
                                      .byte $02
                                      .word $2061
                                      .byte $90
                                      .byte $8E
; правый верхний угол синего окна и верхняя полоска high ball
                                      .byte $12
                                      .word $206D
                                      .byte $8E
                                      .byte $91
                                      .byte $00
                                      .byte $9C
                                      .byte $A8
                                      .byte $00
                                      .byte $48
                                      .byte $69
                                      .byte $67
                                      .byte $68
                                      .byte $00
                                      .byte $62
                                      .byte $61
                                      .byte $6C
                                      .byte $6C
                                      .byte $00
                                      .byte $A8
                                      .byte $9D
; левый нижний синего окна
                                      .byte $01
                                      .word $2161
                                      .byte $92
; правый нижний синего окна
                                      .byte $01
                                      .word $216E
                                      .byte $93
; текст level
- D - I - 0x003F27 02:BF17: 6A        .byte $05
- D - I - 0x003F25 02:BF15: 85 20     .word $20A3
- D - I - 0x003F27 02:BF17: 6A        .byte $4C
- D - I - 0x003F28 02:BF18: C6        .byte $65
- D - I - 0x003F29 02:BF19: 69        .byte $76
- D - I - 0x003F29 02:BF19: 69        .byte $65
- D - I - 0x003F29 02:BF19: 69        .byte $6C
; текст max
- D - I - 0x003F2A 02:BF1A: FD        .byte $04
- D - I - 0x003F2B 02:BF1B: C5 20     .word $20E3
- D - I - 0x003F2D 02:BF1D: 0B        .byte $4D
- D - I - 0x003F2E 02:BF1E: 02        .byte $61
- D - I - 0x003F2F 02:BF1F: AA        .byte $78
- D - I - 0x003F30 02:BF20: 02        .byte $5B
; текст stamina
- D - I - 0x003F34 02:BF24: FD        .byte $07
- D - I - 0x003F2B 02:BF1B: C5 20     .word $2123
- D - I - 0x003F2D 02:BF1D: 0B        .byte $73
- D - I - 0x003F2E 02:BF1E: 02        .byte $74
- D - I - 0x003F2F 02:BF1F: AA        .byte $61
- D - I - 0x003F30 02:BF20: 02        .byte $6D
- D - I - 0x003F30 02:BF20: 02        .byte $69
- D - I - 0x003F30 02:BF20: 02        .byte $6E
- D - I - 0x003F30 02:BF20: 02        .byte $61
; верхняя полоска stats и нижняя полоска high ball
- D - I - 0x003F4E 02:BF3E: FD        .byte $10
- D - I - 0x003F47 02:BF37: 86 21     .word $21C1
                                      .byte $9C
                                      .byte $A8
                                      .byte $A8
                                      .byte $00
- D - I - 0x003F49 02:BF39: 19        .byte $53
- D - I - 0x003F4A 02:BF3A: 03        .byte $74
- D - I - 0x003F4B 02:BF3B: 28        .byte $61
- D - I - 0x003F4C 02:BF3C: 32        .byte $74
- D - I - 0x003F4D 02:BF3D: 08        .byte $73
                                      .byte $00
                                      .byte $A8
                                      .byte $A8
                                      .byte $A8
                                      .byte $9D
                                      .byte $00
                                      .byte $9E
; правый нижний угол high ball
- D - I - 0x003F4E 02:BF3E: FD        .byte $01
- D - I - 0x003F47 02:BF37: 86 21     .word $21DE
- D - I - 0x003F49 02:BF39: 19        .byte $9F
; верхняя полоска low ball
- D - I - 0x003F46 02:BF36: FD        .byte $0F
- D - I - 0x003F3E 02:BF2E: F3 21     .word $2210
                                      .byte $9C
                                      .byte $A8
                                      .byte $00
- D - I - 0x003F40 02:BF30: 1B        .byte $4C
- D - I - 0x003F41 02:BF31: 08        .byte $6F
- D - I - 0x003F42 02:BF32: 02        .byte $77
- D - I - 0x003F43 02:BF33: C7        .byte $00
- D - I - 0x003F44 02:BF34: 7D        .byte $62
- D - I - 0x003F45 02:BF35: 69        .byte $61
- D - I - 0x003F45 02:BF35: 69        .byte $6C
- D - I - 0x003F45 02:BF35: 69        .byte $6C
                                      .byte $00
                                      .byte $A8
                                      .byte $A8
                                      .byte $9D
; левый нижний угол stats
                                      .byte $01
                                      .word $2361
                                      .byte $9E
; правый нижний угол stats и левый нижний угол low ball
                                      .byte $03
                                      .word $236E
                                      .byte $9F
                                      .byte $00
                                      .byte $9E
; правый нижний угол high ball
                                      .byte $01
                                      .word $237E
                                      .byte $9F
; текст special
- D - I - 0x003F57 02:BF47: FD        .byte $0A
- D - I - 0x003F4F 02:BF3F: C6 24     .word $24E1
- D - I - 0x003F51 02:BF41: 1B        .byte $9C
- D - I - 0x003F51 02:BF41: 1B        .byte $A8
- D - I - 0x003F51 02:BF41: 1B        .byte $00
- D - I - 0x003F51 02:BF41: 1B        .byte $53
- D - I - 0x003F52 02:BF42: 2F        .byte $70
- D - I - 0x003F53 02:BF43: 0B        .byte $65
- D - I - 0x003F54 02:BF44: 12        .byte $63
- D - I - 0x003F55 02:BF45: 2C        .byte $69
- D - I - 0x003F56 02:BF46: A5        .byte $61
- D - I - 0x003F56 02:BF46: A5        .byte $6C
; cost
- D - I - 0x003F5D 02:BF4D: FF        .byte $44
- D - I - 0x003F58 02:BF48: D6 24     .word $24F5
- D - I - 0x003F5A 02:BF4A: B4        .byte $43
- D - I - 0x003F5B 02:BF4B: 6F        .byte $6F
- D - I - 0x003F5C 02:BF4C: 52        .byte $73
- D - I - 0x003F5C 02:BF4C: 52        .byte $74



off_BF4E_названия_действий_полевого:
; stats
; dribble
- D - I - 0x003F62 02:BF52: 6F        .byte $07
- D - I - 0x003F5E 02:BF4E: 91 20     .word $2202
- D - I - 0x003F60 02:BF50: 54        .byte $44
- D - I - 0x003F60 02:BF50: 54        .byte $72
- D - I - 0x003F60 02:BF50: 54        .byte $69
- D - I - 0x003F60 02:BF50: 54        .byte $62
- D - I - 0x003F60 02:BF50: 54        .byte $62
- D - I - 0x003F61 02:BF51: 67        .byte $6C
- D - I - 0x003F62 02:BF52: 6F        .byte $65
; pass
- D - I - 0x003F62 02:BF52: 6F        .byte $04
- D - I - 0x003F65 02:BF55: D1 20     .word $2242
- D - I - 0x003F67 02:BF57: 4C        .byte $50
- D - I - 0x003F68 02:BF58: 71        .byte $61
- D - I - 0x003F69 02:BF59: 7D        .byte $73
- D - I - 0x003F6A 02:BF5A: 54        .byte $73
; shoot
- D - I - 0x003F62 02:BF52: 6F        .byte $05
- D - I - 0x003F6C 02:BF5C: 11 21     .word $2282
- D - I - 0x003F6E 02:BF5E: 4D        .byte $53
- D - I - 0x003F6E 02:BF5E: 4D        .byte $68
- D - I - 0x003F6E 02:BF5E: 4D        .byte $6F
- D - I - 0x003F6F 02:BF5F: 69        .byte $6F
- D - I - 0x003F70 02:BF60: 7D        .byte $74
; tackle
- D - I - 0x003F62 02:BF52: 6F        .byte $06
- D - I - 0x003F72 02:BF62: 51 21     .word $22C2
- D - I - 0x003F74 02:BF64: 48        .byte $54
- D - I - 0x003F74 02:BF64: 48        .byte $61
- D - I - 0x003F74 02:BF64: 48        .byte $63
- D - I - 0x003F75 02:BF65: 68        .byte $6B
- D - I - 0x003F76 02:BF66: 41        .byte $6C
- D - I - 0x003F77 02:BF67: 7D        .byte $65
; block
- D - I - 0x003F62 02:BF52: 6F        .byte $05
- D - I - 0x003F79 02:BF69: 91 21     .word $2302
- D - I - 0x003F7B 02:BF6B: 0E        .byte $42
- D - I - 0x003F7C 02:BF6C: 28        .byte $6C
- D - I - 0x003F7D 02:BF6D: 01        .byte $6F
- D - I - 0x003F7E 02:BF6E: 02        .byte $63
- D - I - 0x003F7E 02:BF6E: 02        .byte $6B
; intercept
- D - I - 0x003F62 02:BF52: 6F        .byte $09
- D - I - 0x003F80 02:BF70: E4 21     .word $2342
- D - I - 0x003F82 02:BF72: C2        .byte $49
- D - I - 0x003F82 02:BF72: C2        .byte $6E
- D - I - 0x003F82 02:BF72: C2        .byte $74
- D - I - 0x003F82 02:BF72: C2        .byte $65
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F83 02:BF73: 68        .byte $63
- D - I - 0x003F84 02:BF74: C5        .byte $65
- D - I - 0x003F85 02:BF75: 69        .byte $70
- D - I - 0x003F82 02:BF72: C2        .byte $74
; trap high
- D - I - 0x003F62 02:BF52: 6F        .byte $04
- D - I - 0x003F80 02:BF70: E4 21     .word $20B1
- D - I - 0x003F82 02:BF72: C2        .byte $54
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F82 02:BF72: C2        .byte $61
- D - I - 0x003F82 02:BF72: C2        .byte $70
; shoot high
- D - I - 0x003F62 02:BF52: 6F        .byte $05
- D - I - 0x003F80 02:BF70: E4 21     .word $20F1
- D - I - 0x003F82 02:BF72: C2        .byte $53
- D - I - 0x003F82 02:BF72: C2        .byte $68
- D - I - 0x003F82 02:BF72: C2        .byte $6F
- D - I - 0x003F82 02:BF72: C2        .byte $6F
- D - I - 0x003F82 02:BF72: C2        .byte $74
; through high
- D - I - 0x003F62 02:BF52: 6F        .byte $07
- D - I - 0x003F80 02:BF70: E4 21     .word $2131
- D - I - 0x003F82 02:BF72: C2        .byte $54
- D - I - 0x003F82 02:BF72: C2        .byte $68
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F82 02:BF72: C2        .byte $6F
- D - I - 0x003F82 02:BF72: C2        .byte $75
- D - I - 0x003F83 02:BF73: 68        .byte $67
- D - I - 0x003F84 02:BF74: C5        .byte $68
; clearance high
- D - I - 0x003F62 02:BF52: 6F        .byte $09
- D - I - 0x003F80 02:BF70: E4 21     .word $2171
- D - I - 0x003F82 02:BF72: C2        .byte $43
- D - I - 0x003F82 02:BF72: C2        .byte $6C
- D - I - 0x003F82 02:BF72: C2        .byte $65
- D - I - 0x003F82 02:BF72: C2        .byte $61
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F83 02:BF73: 68        .byte $61
- D - I - 0x003F84 02:BF74: C5        .byte $6E
- D - I - 0x003F85 02:BF75: 69        .byte $63
- D - I - 0x003F82 02:BF72: C2        .byte $65
; interfere high
- D - I - 0x003F62 02:BF52: 6F        .byte $09
- D - I - 0x003F80 02:BF70: E4 21     .word $21B1
- D - I - 0x003F82 02:BF72: C2        .byte $49
- D - I - 0x003F82 02:BF72: C2        .byte $6E
- D - I - 0x003F82 02:BF72: C2        .byte $74
- D - I - 0x003F82 02:BF72: C2        .byte $65
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F83 02:BF73: 68        .byte $66
- D - I - 0x003F84 02:BF74: C5        .byte $65
- D - I - 0x003F85 02:BF75: 69        .byte $72
- D - I - 0x003F82 02:BF72: C2        .byte $65
; trap low
- D - I - 0x003F62 02:BF52: 6F        .byte $04
- D - I - 0x003F80 02:BF70: E4 21     .word $2251
- D - I - 0x003F82 02:BF72: C2        .byte $54
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F82 02:BF72: C2        .byte $61
- D - I - 0x003F82 02:BF72: C2        .byte $70
; shoot low
- D - I - 0x003F62 02:BF52: 6F        .byte $05
- D - I - 0x003F80 02:BF70: E4 21     .word $2291
- D - I - 0x003F82 02:BF72: C2        .byte $53
- D - I - 0x003F82 02:BF72: C2        .byte $68
- D - I - 0x003F82 02:BF72: C2        .byte $6F
- D - I - 0x003F82 02:BF72: C2        .byte $6F
- D - I - 0x003F82 02:BF72: C2        .byte $74
; through low
- D - I - 0x003F62 02:BF52: 6F        .byte $07
- D - I - 0x003F80 02:BF70: E4 21     .word $22D1
- D - I - 0x003F82 02:BF72: C2        .byte $54
- D - I - 0x003F82 02:BF72: C2        .byte $68
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F82 02:BF72: C2        .byte $6F
- D - I - 0x003F82 02:BF72: C2        .byte $75
- D - I - 0x003F83 02:BF73: 68        .byte $67
- D - I - 0x003F84 02:BF74: C5        .byte $68
; clearance low
- D - I - 0x003F62 02:BF52: 6F        .byte $09
- D - I - 0x003F80 02:BF70: E4 21     .word $2311
- D - I - 0x003F82 02:BF72: C2        .byte $43
- D - I - 0x003F82 02:BF72: C2        .byte $6C
- D - I - 0x003F82 02:BF72: C2        .byte $65
- D - I - 0x003F82 02:BF72: C2        .byte $61
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F83 02:BF73: 68        .byte $61
- D - I - 0x003F84 02:BF74: C5        .byte $6E
- D - I - 0x003F85 02:BF75: 69        .byte $63
- D - I - 0x003F82 02:BF72: C2        .byte $65
; interfere low
- D - I - 0x003F62 02:BF52: 6F        .byte $49
- D - I - 0x003F80 02:BF70: E4 21     .word $2351
- D - I - 0x003F82 02:BF72: C2        .byte $49
- D - I - 0x003F82 02:BF72: C2        .byte $6E
- D - I - 0x003F82 02:BF72: C2        .byte $74
- D - I - 0x003F82 02:BF72: C2        .byte $65
- D - I - 0x003F82 02:BF72: C2        .byte $72
- D - I - 0x003F83 02:BF73: 68        .byte $66
- D - I - 0x003F84 02:BF74: C5        .byte $65
- D - I - 0x003F85 02:BF75: 69        .byte $72
- D - I - 0x003F82 02:BF72: C2        .byte $65

off_BFBB_названия_действий_кипера:
- D - I - 0x003FD1 02:BFC1: FD        .byte $44
- D - I - 0x003FCB 02:BFBB: 91 20     .word $2091
- D - I - 0x003FCD 02:BFBD: 14        .byte $14
- D - I - 0x003FCE 02:BFBE: B0        .byte $B0
- D - I - 0x003FCF 02:BFBF: AA        .byte $AA
- D - I - 0x003FD0 02:BFC0: 0D        .byte $0D

- D - I - 0x003FD6 02:BFC6: FD        .byte $FD
- D - I - 0x003FD2 02:BFC2: E4 21     .word $21E4
- D - I - 0x003FD4 02:BFC4: CD        .byte $CD
- D - I - 0x003FD5 02:BFC5: 4D        .byte $4D

- D - I - 0x003FDD 02:BFCD: FD        .byte $FD
- D - I - 0x003FD7 02:BFC7: 24 22     .word $2224
- D - I - 0x003FD9 02:BFC9: 47        .byte $47
- D - I - 0x003FDA 02:BFCA: 70        .byte $70
- D - I - 0x003FDB 02:BFCB: 6F        .byte $6F
- D - I - 0x003FDC 02:BFCC: 51        .byte $51

- D - I - 0x003FE3 02:BFD3: FD        .byte $FD
- D - I - 0x003FDE 02:BFCE: 64 22     .word $2264
- D - I - 0x003FE0 02:BFD0: CD        .byte $CD
- D - I - 0x003FE1 02:BFD1: 6E        .byte $6E
- D - I - 0x003FE2 02:BFD2: 51        .byte $51

- D - I - 0x003FEA 02:BFDA: FD        .byte $FD
- D - I - 0x003FE4 02:BFD4: C4 22     .word $22C4
- D - I - 0x003FE6 02:BFD6: 0F        .byte $0F
- D - I - 0x003FE7 02:BFD7: 15        .byte $15
- D - I - 0x003FE8 02:BFD8: 04        .byte $04
- D - I - 0x003FE9 02:BFD9: 29        .byte $29

- D - I - 0x003FF2 02:BFE2: FD        .byte $FD
- D - I - 0x003FEB 02:BFDB: A4 22     .word $22A4
- D - I - 0x003FED 02:BFDD: C2        .byte $C2
- D - I - 0x003FEE 02:BFDE: 68        .byte $68
- D - I - 0x003FEF 02:BFDF: C5        .byte $C5
- D - I - 0x003FF0 02:BFE0: 69        .byte $69
- D - I - 0x003FF1 02:BFE1: 16        .byte $16

- D - I - 0x003FF9 02:BFE9: FD        .byte $FD
- D - I - 0x003FF3 02:BFE3: 24 23     .word $2324
- D - I - 0x003FF5 02:BFE5: 0F        .byte $0F
- D - I - 0x003FF6 02:BFE6: 15        .byte $15
- D - I - 0x003FF7 02:BFE7: 04        .byte $04
- D - I - 0x003FF8 02:BFE8: 29        .byte $29

- D - I - 0x004001 02:BFF1: FD        .byte $FD
- D - I - 0x003FFA 02:BFEA: 04 23     .word $2304
- D - I - 0x003FFC 02:BFEC: 4C        .byte $4C
- D - I - 0x003FFD 02:BFED: 71        .byte $71
- D - I - 0x003FFE 02:BFEE: 7D        .byte $7D
- D - I - 0x003FFF 02:BFEF: 54        .byte $54
- D - I - 0x004000 02:BFF0: 16        .byte $16

- D - I - 0x004008 02:BFF8: FF        .byte $FF
- D - I - 0x004002 02:BFF2: 31 22     .word $2231
- D - I - 0x004004 02:BFF4: 14        .byte $14
- D - I - 0x004005 02:BFF5: B0        .byte $B0
- D - I - 0x004006 02:BFF6: AA        .byte $AA
- D - I - 0x004007 02:BFF7: 0D        .byte $0D
