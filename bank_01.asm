.segment "BANK_01"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"

sub_A01E_генерация_пароля:
C - - - - 0x00202E 02:A01E: AD 48 04  LDA ram_флаг_циклона
C - - - - 0x002031 02:A021: 4A        LSR
C - - - - 0x002032 02:A022: A5 26     LDA ram_матч
C - - - - 0x002034 02:A024: 2A        ROL
C - - - - 0x002035 02:A025: 18        CLC
C - - - - 0x002036 02:A026: AE 46 04  LDX ram_флаг_драйв_оверхеда
C - - - - 0x002039 02:A029: E0 05     CPX #$05
C - - - - 0x00203B 02:A02B: 2A        ROL
C - - - - 0x00203C 02:A02C: 8D 60 06  STA ram_0660
C - - - - 0x00203F 02:A02F: AD 4D 04  LDA ram_флаг_мисуги_0_хп
C - - - - 0x002042 02:A032: 6A        ROR
C - - - - 0x002043 02:A033: A5 E1     LDA ram_рандом_1
C - - - - 0x002045 02:A035: 6A        ROR
C - - - - 0x002046 02:A036: 29 B0     AND #$B0
C - - - - 0x002048 02:A038: 8D 61 06  STA ram_0661
C - - - - 0x00204B 02:A03B: A9 00     LDA #$00
bra_A03D_цикл:
C - - - - 0x00204D 02:A03D: 48        PHA
C - - - - 0x00204E 02:A03E: 20 16 B0  JSR sub_B016_чтение_опыта_из_оперативки
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
C - - - - 0x002094 02:A084: 9D 56 06  STA ram_0656,X
C - - - - 0x002097 02:A087: E8        INX
C - - - - 0x002098 02:A088: 8A        TXA
C - - - - 0x002099 02:A089: C9 0A     CMP #$0A
C - - - - 0x00209B 02:A08B: D0 B0     BNE bra_A03D_цикл
C - - - - 0x00209D 02:A08D: A5 E2     LDA ram_рандом_2
C - - - - 0x00209F 02:A08F: 29 F0     AND #$F0
C - - - - 0x0020A1 02:A091: 8D 63 06  STA ram_0663
C - - - - 0x0020A4 02:A094: 4A        LSR
C - - - - 0x0020A5 02:A095: 4A        LSR
C - - - - 0x0020A6 02:A096: 4A        LSR
C - - - - 0x0020A7 02:A097: 4A        LSR
C - - - - 0x0020A8 02:A098: 0D 61 06  ORA ram_0661
C - - - - 0x0020AB 02:A09B: 85 EB     STA ram_00EB
C - - - - 0x0020AD 02:A09D: 20 02 A4  JSR sub_A402
C - - - - 0x0020B0 02:A0A0: A5 EC     LDA ram_00EC
C - - - - 0x0020B2 02:A0A2: 8D 62 06  STA ram_0662
C - - - - 0x0020B5 02:A0A5: A5 ED     LDA ram_00ED
C - - - - 0x0020B7 02:A0A7: 29 0F     AND #$0F
C - - - - 0x0020B9 02:A0A9: 0D 61 06  ORA ram_0661
C - - - - 0x0020BC 02:A0AC: 8D 61 06  STA ram_0661
C - - - - 0x0020BF 02:A0AF: A9 00     LDA #$00
C - - - - 0x0020C1 02:A0B1: 85 ED     STA ram_00ED
bra_A0B3:
C - - - - 0x0020C3 02:A0B3: A6 ED     LDX ram_00ED
C - - - - 0x0020C5 02:A0B5: 20 38 A4  JSR sub_A438
C - - - - 0x0020C8 02:A0B8: A2 FF     LDX #$FF
bra_A0BA_цикл:
C - - - - 0x0020CA 02:A0BA: E8        INX
C - - - - 0x0020CB 02:A0BB: DD 55 B2  CMP tbl_B255_байт_буквы_алфавита,X
C - - - - 0x0020CE 02:A0BE: D0 FA     BNE bra_A0BA_цикл
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
C - - - - 0x0020E6 02:A0D6: BD 41 B2  LDA tbl_B241_lo_адрес_ppu_введенных_символов,X
C - - - - 0x0020E9 02:A0D9: 18        CLC
C - - - - 0x0020EA 02:A0DA: 69 80     ADC #$80
C - - - - 0x0020EC 02:A0DC: A8        TAY
C - - - - 0x0020ED 02:A0DD: A2 22     LDX #$22
C - - - - 0x0020EF 02:A0DF: A5 EC     LDA ram_00EC
C - - - - 0x0020F1 02:A0E1: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - 0x0020F4 02:A0E4: A5 99     LDA ram_0099
C - - - - 0x0020F6 02:A0E6: 10 04     BPL bra_A0EC
- - - - - 0x0020F8 02:A0E8: 49 41     EOR #$41
- - - - - 0x0020FA 02:A0EA: 85 99     STA ram_0099
bra_A0EC:
C - - - - 0x0020FC 02:A0EC: E6 ED     INC ram_00ED
C - - - - 0x0020FE 02:A0EE: A5 ED     LDA ram_00ED
C - - - - 0x002100 02:A0F0: C9 12     CMP #$12
C - - - - 0x002102 02:A0F2: 90 BF     BCC bra_A0B3
bra_A0F4_кнопка_не_нажата:
C - - - - 0x002104 02:A0F4: A9 01     LDA #$01
C - - - - 0x002106 02:A0F6: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002109 02:A0F9: A5 1E     LDA ram_btn_press
; con_btn_A
C - - - - 0x00210B 02:A0FB: 10 F7     BPL bra_A0F4_кнопка_не_нажата
C - - - - 0x00210D 02:A0FD: A9 8A     LDA #$AB      ; адрес ppu затирания пароля
C - - - - 0x00210F 02:A0FF: 85 E6     STA ram_00E6
C - - - - 0x002111 02:A101: A9 22     LDA #$22
C - - - - 0x002113 02:A103: 85 E7     STA ram_00E7
C - - - - 0x002115 02:A105: A0 04     LDY #$03
C - - - - 0x002117 02:A107: A2 0B     LDX #$0B
C - - - - 0x002119 02:A109: 20 E8 98  JSR sub_0x0018F8_затереть_часть_экрана
C - - - - 0x00211C 02:A10C: 60        RTS

.export sub_0x00211D_экран_continue
sub_0x00211D_экран_continue:
C D - - - 0x00211D 02:A10D: 20 A0 9B  JSR sub_0x001BB0
C - - - - 0x002120 02:A110: A9 00     LDA #$00
C - - - - 0x002122 02:A112: A0 F0     LDY #$F0
bra_A114_цикл:
C - - - - 0x002124 02:A114: 99 66 05  STA ram_0566,Y
C - - - - 0x002127 02:A117: C8        INY
C - - - - 0x002128 02:A118: D0 FA     BNE bra_A114_цикл
C - - - - 0x00212A 02:A11A: A2 2C     LDX #$2C
C - - - - 0x00212C 02:A11C: A0 2D     LDY #$2D
C - - - - 0x00212E 02:A11E: 20 6F 9B  JSR sub_0x001B7F_запись_первых_двух_банков_спрайтов
C - - - - 0x002131 02:A121: A2 2E     LDX #$2E
C - - - - 0x002133 02:A123: A0 2F     LDY #$2F
C - - - - 0x002135 02:A125: 20 74 9B  JSR sub_0x001B84_запись_вторых_двух_банков_спрайтов
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
C - - - - 0x002153 02:A143: A9 C4     LDA #$E4      ; адрес ppu символов пароля
C - - - - 0x002155 02:A145: 85 E8     STA ram_00E8
C - - - - 0x002157 02:A147: A9 21     LDA #$21
C - - - - 0x002159 02:A149: 85 E9     STA ram_00E9
C - - - - 0x00215B 02:A14B: A9 00     LDA #$00
C - - - - 0x00215D 02:A14D: 85 EC     STA ram_00EC
C - - - - 0x00215F 02:A14F: A9 05     LDA #$05
C - - - - 0x002161 02:A151: 85 EB     STA ram_00EB
bra_A153_цикл_записи_символов_пароля:
C - - - - 0x002163 02:A153: A9 0D     LDA #$0D
C - - - - 0x002165 02:A155: 85 ED     STA ram_00ED
bra_A157_цикл_записи_строки:
C - - - - 0x002167 02:A157: A4 EC     LDY ram_00EC
C - - - - 0x002169 02:A159: B1 E6     LDA (ram_00E6),Y
C - - - - 0x00216B 02:A15B: A4 E8     LDY ram_00E8
C - - - - 0x00216D 02:A15D: A6 E9     LDX ram_00E9
C - - - - 0x00216F 02:A15F: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - 0x002172 02:A162: E6 E8     INC ram_00E8
C - - - - 0x002174 02:A164: E6 E8     INC ram_00E8
C - - - - 0x002176 02:A166: E6 EC     INC ram_00EC
C - - - - 0x002178 02:A168: C6 ED     DEC ram_00ED
C - - - - 0x00217A 02:A16A: D0 EB     BNE bra_A157_цикл_записи_строки
C - - - - 0x00217C 02:A16C: A5 E8     LDA ram_00E8
C - - - - 0x00217E 02:A16E: 18        CLC
C - - - - 0x00217F 02:A16F: 69 26     ADC #$26
C - - - - 0x002181 02:A171: 85 E8     STA ram_00E8
C - - - - 0x002183 02:A173: A5 E9     LDA ram_00E9
C - - - - 0x002185 02:A175: 69 00     ADC #$00
C - - - - 0x002187 02:A177: 85 E9     STA ram_00E9
C - - - - 0x002189 02:A179: C6 EB     DEC ram_00EB
C - - - - 0x00218B 02:A17B: D0 D6     BNE bra_A153_цикл_записи_символов_пароля
C - - - - 0x00218D 02:A17D: A0 F8     LDY #$F8
bra_A17F_цикл:
C - - - - 0x00218F 02:A17F: B9 05 B2  LDA tbl_B2FD - $F8,Y
C - - - - 0x002192 02:A182: 99 60 04  STA ram_0558 - $F8,Y
C - - - - 0x002195 02:A185: C8        INY
C - - - - 0x002196 02:A186: D0 F7     BNE bra_A17F_цикл
C - - - - 0x002198 02:A188: A0 96     LDY #< tbl_B296_экран_continue_1
C - - - - 0x00219A 02:A18A: A2 B2     LDX #> tbl_B296_экран_continue_1
C - - - - 0x00219C 02:A18C: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x00219F 02:A18F: A9 04     LDA #$04
C - - - - 0x0021A1 02:A191: A2 30     LDX #$30
C - - - - 0x0021A3 02:A193: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
C - - - - 0x0021A6 02:A196: A9 8A     LDA #$8A
C - - - - 0x0021A8 02:A198: 85 4C     STA ram_004C
C - - - - 0x0021AA 02:A19A: A9 33     LDA #$33      ; музыка пенальти для пароля
C - - - - 0x0021AC 02:A19C: 8D 00 07  STA ram_звук
loc_A19F:
C D - - - 0x0021AF 02:A19F: A9 00     LDA #$00
C - - - - 0x0021B1 02:A1A1: 85 ED     STA ram_00ED
C - - - - 0x0021B3 02:A1A3: 4C 01 A2  JMP loc_A201

loc_A1A6:
bra_A1A6_в_итоге_ничего_не_нажато:
C D - - - 0x0021B6 02:A1A6: A9 01     LDA #$01
C - - - - 0x0021B8 02:A1A8: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x0021BB 02:A1AB: 20 D0 A3  JSR sub_A3D0_мигание_курсора
C - - - - 0x0021BE 02:A1AE: 24 1E     BIT ram_btn_press
C - - - - 0x0021C0 02:A1B0: 10 03     BPL bra_A1B5_A_не_нажата       ; con_btn_A
C - - - - 0x0021C2 02:A1B2: 4C 31 A2  JMP loc_A231_ввести_букву
bra_A1B5_A_не_нажата:
C - - - - 0x0021C5 02:A1B5: 50 03     BVC bra_A1BA_B_не_нажата       ; con_btn_B
C - - - - 0x0021C7 02:A1B7: 4C 60 A2  JMP loc_A260_сместить_курсор_пароля_влево
bra_A1BA_B_не_нажата:
C - - - - 0x0021CA 02:A1BA: A5 1E     LDA ram_btn_press
C - - - - 0x0021CC 02:A1BC: 29 20     AND #con_btn_Select
C - - - - 0x0021CE 02:A1BE: F0 03     BEQ bra_A1C3_select_не_нажата
C - - - - 0x0021D0 02:A1C0: 4C 52 A2  JMP loc_A252_сместить_курсор_пароля_вправо
bra_A1C3_select_не_нажата:
C - - - - 0x0021D3 02:A1C3: A5 1E     LDA ram_btn_press
C - - - - 0x0021D5 02:A1C5: 29 10     AND #con_btn_Start
C - - - - 0x0021D7 02:A1C7: F0 03     BEQ bra_A1CC_start_не_нажата
C - - - - 0x0021D9 02:A1C9: 4C 6C A2  JMP loc_A26C_проверить_введенный_пароль
bra_A1CC_start_не_нажата:
C - - - - 0x0021DC 02:A1CC: A5 1C     LDA ram_btn_hold
C - - - - 0x0021DE 02:A1CE: 29 0F     AND #con_btns_Dpad
C - - - - 0x0021E0 02:A1D0: F0 D4     BEQ bra_A1A6_в_итоге_ничего_не_нажато
C - - - - 0x0021E2 02:A1D2: A0 14     LDY #$14      ; если нажата кнопка d-pad, то писать таймер удержания кнопки
loc_A1D4:
C D - - - 0x0021E4 02:A1D4: 84 EA     STY ram_00EA
C - - - - 0x0021E6 02:A1D6: A6 EC     LDX ram_00EC
C - - - - 0x0021E8 02:A1D8: BD E8 B1  LDA tbl_B1E8,X
C - - - - 0x0021EB 02:A1DB: A0 00     LDY #$00
C - - - - 0x0021ED 02:A1DD: 20 D8 A4  JSR sub_A4D8
C - - - - 0x0021F0 02:A1E0: A5 1C     LDA ram_btn_hold
C - - - - 0x0021F2 02:A1E2: 29 0F     AND #con_btns_Dpad
C - - - - 0x0021F4 02:A1E4: AA        TAX
C - - - - 0x0021F5 02:A1E5: BD ED B2  LDA tbl_B2ED_смещение_курсора_алфавита,X
C - - - - 0x0021F8 02:A1E8: 30 0D     BMI bra_A1F7_сместить_назад
C - - - - 0x0021FA 02:A1EA: 18        CLC
C - - - - 0x0021FB 02:A1EB: 65 EC     ADC ram_00EC
C - - - - 0x0021FD 02:A1ED: C9 41     CMP #$41
C - - - - 0x0021FF 02:A1EF: 90 10     BCC bra_A201_не_overflow
C - - - - 0x002201 02:A1F1: 38        SEC
C - - - - 0x002202 02:A1F2: E9 41     SBC #$41
C - - - - 0x002204 02:A1F4: 4C 01 A2  JMP loc_A201
bra_A1F7_сместить_назад:
C - - - - 0x002207 02:A1F7: 18        CLC
C - - - - 0x002208 02:A1F8: 65 EC     ADC ram_00EC
C - - - - 0x00220A 02:A1FA: C9 41     CMP #$41
C - - - - 0x00220C 02:A1FC: 90 03     BCC bra_A201_не_overflow
C - - - - 0x00220E 02:A1FE: 18        CLC
C - - - - 0x00220F 02:A1FF: 69 41     ADC #$41
bra_A201_не_overflow:
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
bra_A217_цикл:
C - - - - 0x002227 02:A217: A9 01     LDA #$01
C - - - - 0x002229 02:A219: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x00222C 02:A21C: 20 D0 A3  JSR sub_A3D0_мигание_курсора
C - - - - 0x00222F 02:A21F: A5 1C     LDA ram_btn_hold
C - - - - 0x002231 02:A221: 29 0F     AND #con_btns_Dpad
C - - - - 0x002233 02:A223: D0 03     BNE bra_A228
C - - - - 0x002235 02:A225: 4C A6 A1  JMP loc_A1A6
bra_A228:
C - - - - 0x002238 02:A228: C6 EA     DEC ram_00EA
C - - - - 0x00223A 02:A22A: D0 EB     BNE bra_A217_цикл
C - - - - 0x00223C 02:A22C: A0 08     LDY #$08
C - - - - 0x00223E 02:A22E: 4C D4 A1  JMP loc_A1D4
loc_A231_ввести_букву:
C D - - - 0x002241 02:A231: A6 EC     LDX ram_00EC
C - - - - 0x002243 02:A233: BD 55 B2  LDA tbl_B255_байт_буквы_алфавита,X
C - - - - 0x002246 02:A236: C9 FF     CMP #$FF      ; символ GO
C - - - - 0x002248 02:A238: F0 32     BEQ bra_A26C_проверить_введенный_пароль
C - - - - 0x00224A 02:A23A: 8A        TXA
C - - - - 0x00224B 02:A23B: A4 ED     LDY ram_00ED
C - - - - 0x00224D 02:A23D: 99 64 06  STA ram_байт_введенного_пароля,Y
C - - - - 0x002250 02:A240: BD 6E BC  LDA tbl_BC6E_символы_пароля,X
C - - - - 0x002253 02:A243: A6 ED     LDX ram_00ED
C - - - - 0x002255 02:A245: BC 41 B2  LDY tbl_B241_lo_адрес_ppu_введенных_символов,X
C - - - - 0x002258 02:A248: A2 21     LDX #$21
C - - - - 0x00225A 02:A24A: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - 0x00225D 02:A24D: A9 12     LDA #$12
C - - - - 0x00225F 02:A24F: 8D 01 07  STA ram_звук + 1
loc_A252_сместить_курсор_пароля_вправо:
C D - - - 0x002262 02:A252: A6 ED     LDX ram_00ED
C - - - - 0x002264 02:A254: E8        INX
C - - - - 0x002265 02:A255: E0 12     CPX #$12
C - - - - 0x002267 02:A257: 90 02     BCC bra_A25B_не_overflow
C - - - - 0x002269 02:A259: A2 00     LDX #$00
bra_A25B_не_overflow:
C - - - - 0x00226B 02:A25B: 86 ED     STX ram_00ED
C - - - - 0x00226D 02:A25D: 4C A6 A1  JMP loc_A1A6
loc_A260_сместить_курсор_пароля_влево:
C D - - - 0x002270 02:A260: A6 ED     LDX ram_00ED
C - - - - 0x002272 02:A262: CA        DEX
C - - - - 0x002273 02:A263: 10 02     BPL bra_A267_не_overflow
C - - - - 0x002275 02:A265: A2 11     LDX #$11
bra_A267_не_overflow:
C - - - - 0x002277 02:A267: 86 ED     STX ram_00ED
C - - - - 0x002279 02:A269: 4C A6 A1  JMP loc_A1A6
bra_A26C_проверить_введенный_пароль:
loc_A26C_проверить_введенный_пароль:
C D - - - 0x00227C 02:A26C: A6 EC     LDX ram_00EC
C - - - - 0x00227E 02:A26E: BD E8 B1  LDA tbl_B1E8,X
C - - - - 0x002281 02:A271: A0 00     LDY #$00
C - - - - 0x002283 02:A273: 20 D8 A4  JSR sub_A4D8
C - - - - 0x002286 02:A276: AE 73 06  LDX ram_байт_введенного_пароля + $0F
C - - - - 0x002289 02:A279: BD 55 B2  LDA tbl_B255_байт_буквы_алфавита,X
C - - - - 0x00228C 02:A27C: 29 30     AND #$30
C - - - - 0x00228E 02:A27E: 85 EB     STA ram_00EB
C - - - - 0x002290 02:A280: AE 75 06  LDX ram_байт_введенного_пароля + $11
C - - - - 0x002293 02:A283: BD 55 B2  LDA tbl_B255_байт_буквы_алфавита,X
C - - - - 0x002296 02:A286: 29 0F     AND #$0F
C - - - - 0x002298 02:A288: 05 EB     ORA ram_00EB
C - - - - 0x00229A 02:A28A: 85 EB     STA ram_00EB
C - - - - 0x00229C 02:A28C: A2 00     LDX #$00
bra_A28E_цикл:
C - - - - 0x00229E 02:A28E: BD 64 06  LDA ram_байт_введенного_пароля,X
C - - - - 0x0022A1 02:A291: E0 0F     CPX #$0F
C - - - - 0x0022A3 02:A293: B0 07     BCS bra_A29C
C - - - - 0x0022A5 02:A295: E6 EB     INC ram_00EB
C - - - - 0x0022A7 02:A297: 38        SEC
C - - - - 0x0022A8 02:A298: E5 EB     SBC ram_00EB
C - - - - 0x0022AA 02:A29A: 29 3F     AND #$3F
bra_A29C:
C - - - - 0x0022AC 02:A29C: A8        TAY
C - - - - 0x0022AD 02:A29D: B9 55 B2  LDA tbl_B255_байт_буквы_алфавита,Y
C - - - - 0x0022B0 02:A2A0: 20 74 A4  JSR sub_A474
C - - - - 0x0022B3 02:A2A3: E8        INX
C - - - - 0x0022B4 02:A2A4: E0 12     CPX #$12
C - - - - 0x0022B6 02:A2A6: D0 E6     BNE bra_A28E_цикл
C - - - - 0x0022B8 02:A2A8: 20 02 A4  JSR sub_A402
C - - - - 0x0022BB 02:A2AB: AD 62 06  LDA ram_0662
C - - - - 0x0022BE 02:A2AE: C5 EC     CMP ram_00EC
C - - - - 0x0022C0 02:A2B0: D0 09     BNE bra_A2BB_пароль_неверный
- - - - - 0x0022C2 02:A2B2: AD 61 06  LDA ram_0661
- - - - - 0x0022C5 02:A2B5: 29 0F     AND #$0F
- - - - - 0x0022C7 02:A2B7: C5 ED     CMP ram_00ED
- - - - - 0x0022C9 02:A2B9: F0 22     BEQ bra_A2DD_пароль_введен_правильно
bra_A2BB_пароль_неверный:
C - - - - 0x0022CB 02:A2BB: A9 F8     LDA #$F8          ; отобразить спрятанные символы
C - - - - 0x0022CD 02:A2BD: 8D 58 05  STA ram_0558
C - - - - 0x0022D0 02:A2C0: 8D 5C 05  STA ram_055C
                                      LDA #$01          ; выключить музыку
                                      STA ram_звук
                                      LDA #$01
                                      JSR sub_0x001FB8_задержка_кадра
                                      LDA #$63          ; звук штанги
                                      STA ram_звук
                                      LDA #$3C
                                      JSR sub_0x001FB8_задержка_кадра
C - - - - 0x0022D3 02:A2C3: A9 43     LDA #$43          ; звук неправильного пароля
C - - - - 0x0022D5 02:A2C5: 8D 00 07  STA ram_звук
C - - - - 0x0022D8 02:A2C8: A9 01     LDA #$01
C - - - - 0x0022DA 02:A2CA: 85 7E     STA ram_007E      ; включить вторую nametable
C - - - - 0x0022DC 02:A2CC: A9 78     LDA #$78
C - - - - 0x0022DE 02:A2CE: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x0022E1 02:A2D1: A9 00     LDA #$00
C - - - - 0x0022E3 02:A2D3: 85 7E     STA ram_007E      ; включить первую nametable
C - - - - 0x0022E5 02:A2D5: A9 33     LDA #$33          ; музыка пенальти для пароля
C - - - - 0x0022E7 02:A2D7: 8D 00 07  STA ram_звук
C - - - - 0x0022EA 02:A2DA: 4C 9F A1  JMP loc_A19F
bra_A2DD_пароль_введен_правильно:
- - - - - 0x0022ED 02:A2DD: A9 00     LDA #$00
loc_A2DF_цикл:
- - - - - 0x0022EF 02:A2DF: 85 E6     STA ram_00E6
- - - - - 0x0022F1 02:A2E1: AA        TAX
- - - - - 0x0022F2 02:A2E2: BD 56 06  LDA ram_0656,X
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
- - - - - 0x002321 02:A311: BD 56 06  LDA ram_0656,X
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
- - - - - 0x002368 02:A358: 9D 54 04  STA ram_опыт_lo,X
- - - - - 0x00236B 02:A35B: A5 ED     LDA ram_00ED
- - - - - 0x00236D 02:A35D: 9D 55 04  STA ram_опыт_hi,X
- - - - - 0x002370 02:A360: E6 E6     INC ram_00E6
- - - - - 0x002372 02:A362: A5 E6     LDA ram_00E6
- - - - - 0x002374 02:A364: C9 0A     CMP #$0A
- - - - - 0x002376 02:A366: F0 03     BEQ bra_A36B_продолжить
- - - - - 0x002378 02:A368: 4C DF A2  JMP loc_A2DF_цикл
bra_A36B_продолжить:
- - - - - 0x00237B 02:A36B: AD 60 06  LDA ram_0660
- - - - - 0x00237E 02:A36E: 4A        LSR
- - - - - 0x00237F 02:A36F: 4A        LSR
- - - - - 0x002380 02:A370: 85 26     STA ram_матч
- - - - - 0x002382 02:A372: AD 60 06  LDA ram_0660
- - - - - 0x002385 02:A375: 29 03     AND #$03
- - - - - 0x002387 02:A377: 4A        LSR
- - - - - 0x002388 02:A378: 8D 48 04  STA ram_флаг_циклона
- - - - - 0x00238B 02:A37B: A9 00     LDA #$00
- - - - - 0x00238D 02:A37D: 90 02     BCC bra_A381
- - - - - 0x00238F 02:A37F: A9 05     LDA #$05
bra_A381:
- - - - - 0x002391 02:A381: 8D 46 04  STA ram_флаг_драйв_оверхеда
- - - - - 0x002394 02:A384: AD 61 06  LDA ram_0661
- - - - - 0x002397 02:A387: 2A        ROL
- - - - - 0x002398 02:A388: A9 00     LDA #$00
- - - - - 0x00239A 02:A38A: 2A        ROL
- - - - - 0x00239B 02:A38B: 8D 4D 04  STA ram_флаг_мисуги_0_хп
- - - - - 0x00239E 02:A38E: A9 00     LDA #$00
- - - - - 0x0023A0 02:A390: 85 4C     STA ram_004C
                                      LDY #< tbl_B200_экран_continue_2_верный_пароль
                                      LDX #> tbl_B200_экран_continue_2_верный_пароль
                                      JSR sub_B0C0_обработать_таблицу_с_байтами_фона
                                      LDA #$01          ; дождаться отрисовки, чтоб не на 1 кадр не показывалась старая фраза
                                      JSR sub_0x001FB8_задержка_кадра
                                      LDA #$60          ; звук забитого гола
                                      STA ram_звук
                                      LDA #$01          ; включить вторую nametable
                                      STA ram_007E
                                      LDA #$3C
                                      JSR sub_0x001FB8_задержка_кадра
                                      LDA #$31          ; уменьшение громкости
                                      STA ram_звук
                                      LDA #$F0
                                      JSR sub_0x001FB8_задержка_кадра
- - - - - 0x0023A7 02:A397: 20 A0 9B  JSR sub_0x001BB0
- - - - - 0x0023AA 02:A39A: 60        RTS

.export sub_0x0023AB
sub_0x0023AB:
; вероятно выполнится при правильном вводе пароля
- - - - - 0x0023AB 02:A39B: A9 00     LDA #$00
- - - - - 0x0023AD 02:A39D: 85 EA     STA ram_00EA
- - - - - 0x0023AF 02:A39F: A9 0B     LDA #$0B
- - - - - 0x0023B1 02:A3A1: 20 B4 A3  JSR sub_A3B4
- - - - - 0x0023B4 02:A3A4: A5 26     LDA ram_матч
- - - - - 0x0023B6 02:A3A6: C9 10     CMP #$10
- - - - - 0x0023B8 02:A3A8: 90 09     BCC bra_A3B3_выход
- - - - - 0x0023BA 02:A3AA: A9 16     LDA #$16
- - - - - 0x0023BC 02:A3AC: 85 EA     STA ram_00EA
- - - - - 0x0023BE 02:A3AE: A9 0A     LDA #$0A
- - - - - 0x0023C0 02:A3B0: 20 B4 A3  JSR sub_A3B4
bra_A3B3_выход:
- - - - - 0x0023C3 02:A3B3: 60        RTS

sub_A3B4:
- - - - - 0x0023C4 02:A3B4: 85 EB     STA ram_00EB
bra_A3B6_цикл:
- - - - - 0x0023C6 02:A3B6: A5 EA     LDA ram_00EA
- - - - - 0x0023C8 02:A3B8: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
- - - - - 0x0023CB 02:A3BB: A0 00     LDY #con_игрок_номер
- - - - - 0x0023CD 02:A3BD: B1 34     LDA (ram_plr_data),Y
- - - - - 0x0023CF 02:A3BF: 20 13 B0  JSR sub_B013_чтение_опыта_из_оперативки_для_игрока
- - - - - 0x0023D2 02:A3C2: 20 2E B0  JSR sub_B02E
- - - - - 0x0023D5 02:A3C5: A0 03     LDY #con_игрок_уровень
- - - - - 0x0023D7 02:A3C7: 91 34     STA (ram_plr_data),Y
- - - - - 0x0023D9 02:A3C9: E6 EA     INC ram_00EA
- - - - - 0x0023DB 02:A3CB: C6 EB     DEC ram_00EB
- - - - - 0x0023DD 02:A3CD: D0 E7     BNE bra_A3B6_цикл
- - - - - 0x0023DF 02:A3CF: 60        RTS

sub_A3D0_мигание_курсора:
C - - - - 0x0023E0 02:A3D0: A5 3A     LDA ram_003A
C - - - - 0x0023E2 02:A3D2: 29 04     AND #$04
C - - - - 0x0023E4 02:A3D4: F0 23     BEQ bra_A3F9_отобразить_введенный_символ
C - - - - 0x0023E6 02:A3D6: A6 ED     LDX ram_00ED
C - - - - 0x0023E8 02:A3D8: BD 2D B2  LDA tbl_B22D_X_мигающего_курсора,X
C - - - - 0x0023EB 02:A3DB: 29 80     AND #$80
C - - - - 0x0023ED 02:A3DD: 4A        LSR
C - - - - 0x0023EE 02:A3DE: 38        SEC
C - - - - 0x0023EF 02:A3DF: 6A        ROR
C - - - - 0x0023F0 02:A3E0: 4A        LSR
C - - - - 0x0023F1 02:A3E1: 8D 58 05  STA ram_0558
C - - - - 0x0023F4 02:A3E4: 18        CLC
C - - - - 0x0023F5 02:A3E5: 69 08     ADC #$08
C - - - - 0x0023F7 02:A3E7: 8D 5C 05  STA ram_055C
C - - - - 0x0023FA 02:A3EA: BD 2D B2  LDA tbl_B22D_X_мигающего_курсора,X
C - - - - 0x0023FD 02:A3ED: 29 7F     AND #$7F
C - - - - 0x0023FF 02:A3EF: 18        CLC
C - - - - 0x002400 02:A3F0: 69 50     ADC #$50
C - - - - 0x002402 02:A3F2: 8D 5B 05  STA ram_055B
C - - - - 0x002405 02:A3F5: 8D 5F 05  STA ram_055F
C - - - - 0x002408 02:A3F8: 60        RTS
bra_A3F9_отобразить_введенный_символ:
C - - - - 0x002409 02:A3F9: A9 F8     LDA #$F8
C - - - - 0x00240B 02:A3FB: 8D 58 05  STA ram_0558
C - - - - 0x00240E 02:A3FE: 8D 5C 05  STA ram_055C
C - - - - 0x002411 02:A401: 60        RTS

sub_A402:
C - - - - 0x002412 02:A402: AD 61 06  LDA ram_0661
C - - - - 0x002415 02:A405: 29 F0     AND #$F0
C - - - - 0x002417 02:A407: 18        CLC
C - - - - 0x002418 02:A408: 6D 63 06  ADC ram_0663
C - - - - 0x00241B 02:A40B: 85 EC     STA ram_00EC
C - - - - 0x00241D 02:A40D: A9 00     LDA #$00
C - - - - 0x00241F 02:A40F: 69 00     ADC #$00
C - - - - 0x002421 02:A411: 85 ED     STA ram_00ED
C - - - - 0x002423 02:A413: A2 00     LDX #$00
bra_A415_цикл:
C - - - - 0x002425 02:A415: BD 56 06  LDA ram_0656,X
C - - - - 0x002428 02:A418: 18        CLC
C - - - - 0x002429 02:A419: 65 EC     ADC ram_00EC
C - - - - 0x00242B 02:A41B: 85 EC     STA ram_00EC
C - - - - 0x00242D 02:A41D: A5 ED     LDA ram_00ED
C - - - - 0x00242F 02:A41F: 69 00     ADC #$00
C - - - - 0x002431 02:A421: 85 ED     STA ram_00ED
C - - - - 0x002433 02:A423: E8        INX
C - - - - 0x002434 02:A424: E0 0B     CPX #$0B
C - - - - 0x002436 02:A426: D0 ED     BNE bra_A415_цикл
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
C - - - - 0x002458 02:A448: B9 56 06  LDA ram_0656,Y
C - - - - 0x00245B 02:A44B: 29 3F     AND #$3F
C - - - - 0x00245D 02:A44D: 60        RTS
bra_A44E:
C - - - - 0x00245E 02:A44E: B9 57 06  LDA ram_0657,Y
C - - - - 0x002461 02:A451: 0A        ASL
C - - - - 0x002462 02:A452: 85 EC     STA ram_00EC
C - - - - 0x002464 02:A454: B9 56 06  LDA ram_0656,Y
C - - - - 0x002467 02:A457: 29 0F     AND #$0F
C - - - - 0x002469 02:A459: 2A        ROL
C - - - - 0x00246A 02:A45A: 06 EC     ASL ram_00EC
C - - - - 0x00246C 02:A45C: 2A        ROL
C - - - - 0x00246D 02:A45D: 60        RTS
bra_A45E:
C - - - - 0x00246E 02:A45E: B9 56 06  LDA ram_0656,Y
C - - - - 0x002471 02:A461: 4A        LSR
C - - - - 0x002472 02:A462: 85 EC     STA ram_00EC
C - - - - 0x002474 02:A464: B9 57 06  LDA ram_0657,Y
C - - - - 0x002477 02:A467: 6A        ROR
C - - - - 0x002478 02:A468: 46 EC     LSR ram_00EC
C - - - - 0x00247A 02:A46A: 6A        ROR
C - - - - 0x00247B 02:A46B: 4A        LSR
C - - - - 0x00247C 02:A46C: 4A        LSR
C - - - - 0x00247D 02:A46D: 60        RTS
bra_A46E:
C - - - - 0x00247E 02:A46E: B9 56 06  LDA ram_0656,Y
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
C - - - - 0x002498 02:A488: B9 56 06  LDA ram_0656,Y
C - - - - 0x00249B 02:A48B: 29 C0     AND #$C0
C - - - - 0x00249D 02:A48D: 05 EC     ORA ram_00EC
C - - - - 0x00249F 02:A48F: 99 56 06  STA ram_0656,Y
C - - - - 0x0024A2 02:A492: 60        RTS
bra_A493:
C - - - - 0x0024A3 02:A493: B9 57 06  LDA ram_0657,Y
C - - - - 0x0024A6 02:A496: 0A        ASL
C - - - - 0x0024A7 02:A497: 0A        ASL
C - - - - 0x0024A8 02:A498: 46 EC     LSR ram_00EC
C - - - - 0x0024AA 02:A49A: 6A        ROR
C - - - - 0x0024AB 02:A49B: 46 EC     LSR ram_00EC
C - - - - 0x0024AD 02:A49D: 6A        ROR
C - - - - 0x0024AE 02:A49E: 99 57 06  STA ram_0657,Y
C - - - - 0x0024B1 02:A4A1: B9 56 06  LDA ram_0656,Y
C - - - - 0x0024B4 02:A4A4: 29 F0     AND #$F0
C - - - - 0x0024B6 02:A4A6: 05 EC     ORA ram_00EC
C - - - - 0x0024B8 02:A4A8: 99 56 06  STA ram_0656,Y
C - - - - 0x0024BB 02:A4AB: 60        RTS
bra_A4AC:
C - - - - 0x0024BC 02:A4AC: 06 EC     ASL ram_00EC
C - - - - 0x0024BE 02:A4AE: 06 EC     ASL ram_00EC
C - - - - 0x0024C0 02:A4B0: B9 56 06  LDA ram_0656,Y
C - - - - 0x0024C3 02:A4B3: 4A        LSR
C - - - - 0x0024C4 02:A4B4: 4A        LSR
C - - - - 0x0024C5 02:A4B5: 06 EC     ASL ram_00EC
C - - - - 0x0024C7 02:A4B7: 2A        ROL
C - - - - 0x0024C8 02:A4B8: 06 EC     ASL ram_00EC
C - - - - 0x0024CA 02:A4BA: 2A        ROL
C - - - - 0x0024CB 02:A4BB: 99 56 06  STA ram_0656,Y
C - - - - 0x0024CE 02:A4BE: B9 57 06  LDA ram_0657,Y
C - - - - 0x0024D1 02:A4C1: 29 0F     AND #$0F
C - - - - 0x0024D3 02:A4C3: 05 EC     ORA ram_00EC
C - - - - 0x0024D5 02:A4C5: 99 57 06  STA ram_0657,Y
C - - - - 0x0024D8 02:A4C8: 60        RTS
bra_A4C9:
C - - - - 0x0024D9 02:A4C9: 06 EC     ASL ram_00EC
C - - - - 0x0024DB 02:A4CB: 06 EC     ASL ram_00EC
C - - - - 0x0024DD 02:A4CD: B9 56 06  LDA ram_0656,Y
C - - - - 0x0024E0 02:A4D0: 29 03     AND #$03
C - - - - 0x0024E2 02:A4D2: 05 EC     ORA ram_00EC
C - - - - 0x0024E4 02:A4D4: 99 56 06  STA ram_0656,Y
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

.export sub_0x0024FB_VS_экран_и_повышение_уровня
sub_0x0024FB_VS_экран_и_повышение_уровня:
                                      LDA ram_матч
                                      ASL
                                      ADC #$80
                                      STA a: $90
C D - - - 0x0024FB 02:A4EB: A2 6A     LDX #$6A
C - - - - 0x0024FD 02:A4ED: A0 6B     LDY #$6B
C - - - - 0x0024FF 02:A4EF: 20 6F 9B  JSR sub_0x001B7F_запись_первых_двух_банков_спрайтов
C - - - - 0x002502 02:A4F2: A2 7A     LDX #$7A
C - - - - 0x002504 02:A4F4: A0 7B     LDY #$7B
C - - - - 0x002506 02:A4F6: 20 74 9B  JSR sub_0x001B84_запись_вторых_двух_банков_спрайтов
C - - - - 0x002509 02:A4F9: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
                                      LDA #con_prg_bank + $9E
                                      STA ram_для_5116
                                      STA $5116
                                      LDA ram_матч
                                      ASL
                                      TAX
                                      LDY tbl_0x040003_vs_экран,X
                                      LDA tbl_0x040003_vs_экран + 1,X
                                      TAX
C - - - - 0x002510 02:A500: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x002513 02:A503: A9 00     LDA #$00
C - - - - 0x002515 02:A505: 85 44     STA ram_0044
C - - - - 0x002517 02:A507: 85 45     STA ram_0045
C - - - - 0x00256E 02:A55E: 85 7B     STA ram_007B
C - - - - 0x002572 02:A562: 85 8E     STA ram_008E
C - - - - 0x002574 02:A564: A9 2E     LDA #$2E
C - - - - 0x002576 02:A566: 85 8F     STA ram_008F
C - - - - 0x002578 02:A568: A9 04     LDA #$04
C - - - - 0x00257A 02:A56A: A2 37     LDX #$37
C - - - - 0x00257C 02:A56C: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
bra_A571_ожидание_нажатия:
C - - - - 0x002581 02:A571: A9 01     LDA #$01
C - - - - 0x002583 02:A573: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002586 02:A576: A5 1E     LDA ram_btn_press
                                      AND #con_btn_A + con_btn_Start
C - - - - 0x002588 02:A578: 30 03     BEQ bra_A571_ожидание_нажатия
C - - - - 0x00258D 02:A57D: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x002590 02:A580: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x002593 02:A583: A9 00     LDA #$00
C - - - - 0x002595 02:A585: 85 ED     STA ram_00ED
C - - - - 0x002597 02:A587: 85 EC     STA ram_00EC
C - - - - 0x002599 02:A589: A9 0B     LDA #$0B
C - - - - 0x00259B 02:A58B: 20 11 A6  JSR sub_A611
C - - - - 0x00259E 02:A58E: A5 26     LDA ram_матч
C - - - - 0x0025A0 02:A590: C9 10     CMP #$10
C - - - - 0x0025A2 02:A592: 90 09     BCC bra_A59D_матчи_до_японии
C - - - - 0x0025A4 02:A594: A9 16     LDA #$16
C - - - - 0x0025A6 02:A596: 85 ED     STA ram_00ED
C - - - - 0x0025A8 02:A598: A9 0A     LDA #$0A
C - - - - 0x0025AA 02:A59A: 20 11 A6  JSR sub_A611
bra_A59D_матчи_до_японии:
C - - - - 0x0025AD 02:A59D: A5 E4     LDA ram_00E4
C - - - - 0x0025AF 02:A59F: C5 26     CMP ram_матч
C - - - - 0x0025B1 02:A5A1: B0 0E     BCS bra_A5B1
C - - - - 0x0025B3 02:A5A3: A5 26     LDA ram_матч
C - - - - 0x0025B5 02:A5A5: C9 06     CMP #$06      ; не повышать уровень при определенных матчах
C - - - - 0x0025B7 02:A5A7: F0 67     BEQ bra_A610_выход
C - - - - 0x0025B9 02:A5A9: C9 0C     CMP #$0C
C - - - - 0x0025BB 02:A5AB: F0 63     BEQ bra_A610_выход
C - - - - 0x0025BD 02:A5AD: C9 10     CMP #$10
C - - - - 0x0025BF 02:A5AF: F0 5F     BEQ bra_A610_выход
bra_A5B1:
C - - - - 0x0025C1 02:A5B1: A5 EC     LDA ram_00EC      ; ? никто не набрал уровень
C - - - - 0x0025C3 02:A5B3: F0 5B     BEQ bra_A610_выход
C - - - - 0x0025C5 02:A5B5: A6 26     LDX ram_матч
C - - - - 0x0025C7 02:A5B7: BD F9 B3  LDA tbl_B3F9_cutscene_level_up,X
                                      CLC
                                      ADC #$5B
C - - - - 0x0025CA 02:A5BA: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0025CD 02:A5BD: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - 0x0025D0 02:A5C0: A9 00     LDA #$00
C - - - - 0x0025D2 02:A5C2: 85 ED     STA ram_00ED
C - - - - 0x0025D4 02:A5C4: 85 EA     STA ram_00EA
loc_A5C6_следующий_экран_имен_игроков_с_новым_уровнем:
bra_A5C6_цикл:
C D - - - 0x0025D6 02:A5C6: A6 ED     LDX ram_00ED
C - - - - 0x0025D8 02:A5C8: BD 56 06  LDA ram_0656,X
C - - - - 0x0025DB 02:A5CB: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - 0x0025DE 02:A5CE: A5 EA     LDA ram_00EA
C - - - - 0x0025E0 02:A5D0: 0A        ASL
C - - - - 0x0025E1 02:A5D1: AA        TAX
C - - - - 0x0025E2 02:A5D2: BD 58 BC  LDA tbl_BC58_адрес_ppu_для_имен_игроков,X
C - - - - 0x0025E5 02:A5D5: 85 E8     STA ram_00E8
C - - - - 0x0025E7 02:A5D7: BD 59 BC  LDA tbl_BC58_адрес_ppu_для_имен_игроков + 1,X
C - - - - 0x0025EA 02:A5DA: 85 E9     STA ram_00E9
C - - - - 0x0025EC 02:A5DC: A4 30     LDY ram_0030
C - - - - 0x0025EE 02:A5DE: A6 31     LDX ram_0031
C - - - - 0x0025F0 02:A5E0: 20 50 9D  JSR sub_0x001D60_запись_имени_в_буфер
C - - - - 0x0025F3 02:A5E3: E6 EA     INC ram_00EA
C - - - - 0x0025F5 02:A5E5: E6 ED     INC ram_00ED
C - - - - 0x0025F7 02:A5E7: C6 EC     DEC ram_00EC
C - - - - 0x0025F9 02:A5E9: F0 1F     BEQ bra_A60A_закончить
C - - - - 0x0025FB 02:A5EB: A5 ED     LDA ram_00ED
C - - - - 0x0025FD 02:A5ED: C9 0B     CMP #$0B
C - - - - 0x0025FF 02:A5EF: D0 D5     BNE bra_A5C6_цикл
C - - - - 0x002601 02:A5F1: 20 A3 89  JSR sub_0x0009B3_ожидание_перехода_к_след_диалогу
C - - - - 0x002604 02:A5F4: A9 44     LDA #$43      ; адрес ppu для затирания текста
C - - - - 0x002606 02:A5F6: 85 E6     STA ram_00E6
C - - - - 0x002608 02:A5F8: A9 22     LDA #$22
C - - - - 0x00260A 02:A5FA: 85 E7     STA ram_00E7
C - - - - 0x00260C 02:A5FC: A0 08     LDY #$08
C - - - - 0x00260E 02:A5FE: A2 18     LDX #$1B      ; количество символов в буфере
C - - - - 0x002610 02:A600: 20 E8 98  JSR sub_0x0018F8_затереть_часть_экрана
C - - - - 0x002613 02:A603: A9 00     LDA #$00
C - - - - 0x002615 02:A605: 85 EA     STA ram_00EA
C - - - - 0x002617 02:A607: 4C C6 A5  JMP loc_A5C6_следующий_экран_имен_игроков_с_новым_уровнем
bra_A60A_закончить:
C - - - - 0x00261A 02:A60A: 20 A3 89  JSR sub_0x0009B3_ожидание_перехода_к_след_диалогу
C - - - - 0x00261D 02:A60D: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
bra_A610_выход:
C - - - - 0x002620 02:A610: 60        RTS

sub_A611:
C - - - - 0x002621 02:A611: 85 EB     STA ram_00EB
bra_A613_цикл:
C - - - - 0x002623 02:A613: A5 ED     LDA ram_00ED
C - - - - 0x002625 02:A615: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
C - - - - 0x002628 02:A618: A0 00     LDY #con_игрок_номер
C - - - - 0x00262A 02:A61A: B1 34     LDA (ram_plr_data),Y
C - - - - 0x00262C 02:A61C: 20 13 B0  JSR sub_B013_чтение_опыта_из_оперативки_для_игрока
C - - - - 0x00262F 02:A61F: 20 2E B0  JSR sub_B02E
C - - - - 0x002632 02:A622: A0 03     LDY #con_игрок_уровень
C - - - - 0x002634 02:A624: D1 34     CMP (ram_plr_data),Y
C - - - - 0x002636 02:A626: F0 0D     BEQ bra_A635
C - - - - 0x002638 02:A628: 91 34     STA (ram_plr_data),Y
C - - - - 0x00263A 02:A62A: A0 00     LDY #con_игрок_номер
C - - - - 0x00263C 02:A62C: B1 34     LDA (ram_plr_data),Y
C - - - - 0x00263E 02:A62E: A6 EC     LDX ram_00EC
C - - - - 0x002640 02:A630: 9D 56 06  STA ram_0656,X
C - - - - 0x002643 02:A633: E6 EC     INC ram_00EC
bra_A635:
C - - - - 0x002645 02:A635: E6 ED     INC ram_00ED
C - - - - 0x002647 02:A637: C6 EB     DEC ram_00EB
C - - - - 0x002649 02:A639: D0 D8     BNE bra_A613_цикл
C - - - - 0x00264B 02:A63B: 60        RTS

.export sub_0x00265C
sub_0x00265C:
loc_A64C:
C D - - - 0x00265C 02:A64C: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - 0x00265F 02:A64F: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
loc_A652:
C D - - - 0x002662 02:A652: A6 26     LDX ram_матч
C - - - - 0x002664 02:A654: BD 93 B3  LDA tbl_B393_cutscene_coach_advice,X
                                      CLC
                                      ADC #$44
C - - - - 0x002667 02:A657: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x00266A 02:A65A: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - 0x00266D 02:A65D: A9 01     LDA #$01
C - - - - 0x00266F 02:A65F: 20 20 89  JSR sub_0x000930
bra_A662:
C - - - - 0x002672 02:A662: A0 D0     LDY #< tbl_ADD0_курсор_тренера
C - - - - 0x002674 02:A664: A2 AD     LDX #> tbl_ADD0_курсор_тренера
C - - - - 0x002676 02:A666: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - 0x002679 02:A669: 20 E8 9B  JSR sub_0x001BF8
C - - - - 0x00267C 02:A66C: A0 73     LDY #< tbl_A673_опции
C - - - - 0x00267E 02:A66E: A2 A6     LDX #> tbl_A673_опции
C - - - - 0x002680 02:A670: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок

tbl_A673_опции:
- D - I - 0x002683 02:A673: 7B A6     .word ofs_A67B_00_advice
- D - I - 0x002685 02:A675: 9F A6     .word ofs_A69F_01_score_memo
- D - I - 0x002687 02:A677: BE A6     .word ofs_A6BE_02_options
- D - I - 0x002689 02:A679: C4 A6     .word ofs_A6C4_03_kickoff

ofs_A67B_00_advice:
C - J - - 0x00268B 02:A67B: A6 26     LDA ram_матч
                                      CLC
                                      ADC #$23
C - - - - 0x002690 02:A680: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
bra_A683_кнопка_не_нажата:
C - - - - 0x002693 02:A683: A9 01     LDA #$01
C - - - - 0x002695 02:A685: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002698 02:A688: A5 4D     LDA ram_004D
C - - - - 0x00269A 02:A68A: 05 4E     ORA ram_004E
C - - - - 0x00269C 02:A68C: F0 D4     BEQ bra_A662
C - - - - 0x00269E 02:A68E: A5 1E     LDA ram_btn_press
C - - - - 0x0026A0 02:A690: 29 10     AND #con_btn_Start
C - - - - 0x0026A2 02:A692: F0 EF     BEQ bra_A683_кнопка_не_нажата
C - - - - 0x0026A4 02:A694: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x0026A7 02:A697: A9 02     LDA #$02
C - - - - 0x0026A9 02:A699: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x0026AC 02:A69C: 4C 52 A6  JMP loc_A652

ofs_A69F_01_score_memo:
C - J - - 0x0026AF 02:A69F: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x0026B2 02:A6A2: A6 26     LDX ram_матч
C - - - - 0x0026B4 02:A6A4: BD D7 B3  LDA tbl_B3D7_cutscene_score_memo,X
                                      CLC
                                      ADC #$55
                                      PHA
C - - - - 0x0026B7 02:A6A7: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026BA 02:A6AA: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - 0x0026BD 02:A6AD: 20 1E A0  JSR sub_A01E_генерация_пароля
C - - - - 0x0026C0 02:A6B0: A9 4E     PLA
                                      CLC
                                      ADC #$01
C - - - - 0x0026C2 02:A6B2: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026C5 02:A6B5: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - 0x0026C8 02:A6B8: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x0026CB 02:A6BB: 4C 4C A6  JMP loc_A64C

ofs_A6BE_02_options:
C - J - - 0x0026CE 02:A6BE: 20 21 A7  JSR sub_A721_экран_с_опциями_команды
C - - - - 0x0026D1 02:A6C1: 4C 4C A6  JMP loc_A64C

ofs_A6C4_03_kickoff:
C - J - - 0x0026D4 02:A6C4: A6 26     LDX ram_матч
C - - - - 0x0026D6 02:A6C6: BD 1B B4  LDA tbl_B41B_cutscene_team_before_match,X
                                      CLC
                                      ADC #$5E
C - - - - 0x0026D9 02:A6C9: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - 0x0026DC 02:A6CC: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - 0x0026DF 02:A6CF: 4C 15 A7  JSR sub_0x001BB0
                                      RTS

.export loc_0x0026E2_перерыв
loc_0x0026E2_перерыв:
    LDA #$55
    STA ram_звук
    JSR sub_0x0018B0_очистка_двух_nametable
    JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
    LDX ram_матч
    LDY #$01
    LDA ram_голы
    CMP ram_голы + 1
    BEQ @запись_катсцены        ; сейчас ничья
    LDY #$02
    BCS @запись_катсцены        ; мы проигрываем
    LDY #$03                    ; мы выигрываем
@запись_катсцены:
    TYA
    CLC
    ADC tbl_B3B5_cutscene_half_time,X
    ADC #$49
    JSR sub_0x000474_воспроизвести_катсцену
    JMP loc_A6F9_продолжить

loc_A6E8_цикл:
    JSR sub_0x0018B0_очистка_двух_nametable
    JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
    LDX ram_матч
    LDA tbl_B3B5_cutscene_half_time,X
    CLC
    ADC #$49
    JSR sub_0x000474_воспроизвести_катсцену
loc_A6F9_продолжить:
    JSR sub_0x0002B9_ожидание_завершения_катсцены
    LDY #< tbl_ADD6_курсор_в_перерыве
    LDX #> tbl_ADD6_курсор_в_перерыве
    JSR sub_0x001C4A_отобразить_курсор
    JSR sub_0x001BF8
    CMP #$02
    BEQ bra_A710_продолжить_матч
    JSR sub_A721_экран_с_опциями_команды
    JMP loc_A6E8_цикл
bra_A710_продолжить_матч:
    LDA #$31
    STA ram_звук
    JSR sub_0x001BB0
    RTS

sub_A719:
C - - - - 0x002729 02:A719: A0 83     LDY #< tbl_B583_опции_японии
C - - - - 0x00272B 02:A71B: A2 B5     LDX #> tbl_B583_опции_японии
C - - - - 0x00272D 02:A71D: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x002730 02:A720: 60        RTS

sub_A721_экран_с_опциями_команды:
loc_A721_экран_с_опциями_команды:
C D - - - 0x002731 02:A721: 20 A0 9B  JSR sub_0x001BB0
C - - - - 0x002734 02:A724: A2 1F     LDX #$1F
C - - - - 0x002736 02:A726: A0 2E     LDY #$2E
C - - - - 0x002738 02:A728: 20 6F 9B  JSR sub_0x001B7F_запись_первых_двух_банков_спрайтов
C - - - - 0x00273B 02:A72B: A9 00     LDA #$00
C - - - - 0x00273D 02:A72D: 85 7B     STA ram_007B
C - - - - 0x00273F 02:A72F: 20 20 89  JSR sub_0x000930
; выбор банка фона
                                      LDA ram_матч
                                      ASL
                                      ADC #$80
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
C - - - - 0x002757 02:A747: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x00275A 02:A74A: A9 00     LDA #$00
C - - - - 0x00275C 02:A74C: 20 E9 AD  JSR sub_ADE9
C - - - - 0x00275F 02:A74F: A9 88     LDA #$A6      ; адрес ppu имен основных игроков
C - - - - 0x002761 02:A751: 85 E6     STA ram_00E6
C - - - - 0x002763 02:A753: A9 20     LDA #$20
C - - - - 0x002765 02:A755: 85 E7     STA ram_00E7
C - - - - 0x002767 02:A757: 20 AC AE  JSR sub_AEAC
C - - - - 0x00276A 02:A75A: A9 00     LDA #$08
C - - - - 0x00276C 02:A75C: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - 0x00276F 02:A75F: A0 FC     LDY #$FC
bra_A761_цикл:
C - - - - 0x002771 02:A761: B9 A2 AC  LDA tbl_AD9E_курсор_опции_сан_паулу_нанкацу - $FC,Y
C - - - - 0x002774 02:A764: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x002777 02:A767: C8        INY
C - - - - 0x002778 02:A768: D0 F7     BNE bra_A761_цикл
C - - - - 0x00277A 02:A76A: A9 03     LDA #$03
C - - - - 0x00277C 02:A76C: A2 39     LDX #$39
C - - - - 0x00277E 02:A76E: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
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
C - J - - 0x00279B 02:A78B: A0 EB     LDY #< tbl_B6EB_расстановка_сан_паулу_нанкацу
C - - - - 0x00279D 02:A78D: A2 B6     LDX #> tbl_B6EB_расстановка_сан_паулу_нанкацу
C - - - - 0x00279F 02:A78F: 20 AB 97  JSR sub_0x0017BB
; X курсора
C - - - - 0x0027A2 02:A792: A2 90     LDX #$98
C - - - - 0x0027A4 02:A794: 20 1E AE  JSR sub_AE1E
; смещение спрайтов миникарты
C - - - - 0x0027A7 02:A797: A9 00     LDA #$08
C - - - - 0x0027A9 02:A799: 20 3A AE  JSR sub_AE3A_обновить_расстановку_миникарты
C - - - - 0x0027AC 02:A79C: A9 F8     LDA #$F8
C - - - - 0x0027AE 02:A79E: 8D 60 05  STA ram_0560
C - - - - 0x0027B1 02:A7A1: 20 77 AA  JSR sub_AA77_повторная_отрисовка_опций
; Y курсора
C - - - - 0x0027B4 02:A7A4: A9 38     LDA #$38
C - - - - 0x0027B6 02:A7A6: 8D 64 05  STA ram_0564
C - - - - 0x0027B9 02:A7A9: 4C 71 A7  JMP loc_A771

ofs_A7AC_опция_defense_сан_паулу_нанкацу:
C - J - - 0x0027BC 02:A7AC: A0 90     LDY #< tbl_B790_защита_сан_паулу_нанкацу
C - - - - 0x0027BE 02:A7AE: A2 B7     LDX #> tbl_B790_защита_сан_паулу_нанкацу
C - - - - 0x0027C0 02:A7B0: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x0027C3 02:A7B3: A0 A2     LDY #< tbl_ADA2_курсор_защиты_сан_паулу_нанкацу
C - - - - 0x0027C5 02:A7B5: A2 AD     LDX #> tbl_ADA2_курсор_защиты_сан_паулу_нанкацу
C - - - - 0x0027C7 02:A7B7: 20 77 AE  JSR sub_AE77
C - - - - 0x0027CA 02:A7BA: 20 77 AA  JSR sub_AA77_повторная_отрисовка_опций
C - - - - 0x0027CD 02:A7BD: A9 48     LDA #$48
C - - - - 0x0027CF 02:A7BF: 8D 64 05  STA ram_0564
C - - - - 0x0027D2 02:A7C2: 4C 71 A7  JMP loc_A771

ofs_A7C5_опция_lineup_сан_паулу_нанкацу:
C - J - - 0x0027D5 02:A7C5: A9 58     LDA #$58
C - - - - 0x0027D7 02:A7C7: 8D 64 05  STA ram_0564
C - - - - 0x0027DA 02:A7CA: A9 94     LDA #$94
C - - - - 0x0027DC 02:A7CC: 85 4C     STA ram_004C
loc_A7CE:
C D - - - 0x0027DE 02:A7CE: A0 A8     LDY #< tbl_ADA8_курсор_замены_1
C - - - - 0x0027E0 02:A7D0: A2 AD     LDX #> tbl_ADA8_курсор_замены_1
C - - - - 0x0027E2 02:A7D2: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
bra_A7D5:
C - - - - 0x0027E5 02:A7D5: A9 01     LDA #$01
C - - - - 0x0027E7 02:A7D7: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x0027EA 02:A7DA: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x0027ED 02:A7DD: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x0027EF 02:A7DF: 70 5B     BVS bra_A83C_отменить_выбор
; con_btn_A
C - - - - 0x0027F1 02:A7E1: 10 F2     BPL bra_A7D5
C - - - - 0x0027F3 02:A7E3: A9 01     LDA #$01
C - - - - 0x0027F5 02:A7E5: 8D 62 05  STA ram_0562
C - - - - 0x0027F8 02:A7E8: 20 D3 9C  JSR sub_0x001CE3
C - - - - 0x0027FB 02:A7EB: A0 AE     LDY #< tbl_ADAE_курсор_замены_2
C - - - - 0x0027FD 02:A7ED: A2 AD     LDX #> tbl_ADAE_курсор_замены_2
C - - - - 0x0027FF 02:A7EF: AD 60 05  LDA ram_0560
C - - - - 0x002802 02:A7F2: 20 3C 9C  JSR sub_0x001C4C_отобразить_курсор_со_смещением
bra_A7F5_кнопки_не_нажаты:
C - - - - 0x002805 02:A7F5: A9 01     LDA #$01
C - - - - 0x002807 02:A7F7: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x00280A 02:A7FA: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x00280D 02:A7FD: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x00280F 02:A7FF: 70 3B     BVS bra_A83C_отменить_выбор
; con_btn_A
C - - - - 0x002811 02:A801: 10 F2     BPL bra_A7F5_кнопки_не_нажаты
C - - - - 0x002813 02:A803: AC 60 05  LDY ram_0560
C - - - - 0x002816 02:A806: A2 00     LDX #$00
C - - - - 0x002818 02:A808: 20 08 9D  JSR sub_0x001D18
C - - - - 0x00281B 02:A80B: A5 34     LDA ram_plr_data
C - - - - 0x00281D 02:A80D: 85 E6     STA ram_00E6
C - - - - 0x00281F 02:A80F: A5 35     LDA ram_plr_data + 1
C - - - - 0x002821 02:A811: 85 E7     STA ram_00E7
C - - - - 0x002823 02:A813: AC 5C 05  LDY ram_055C
C - - - - 0x002826 02:A816: A2 00     LDX #$00
C - - - - 0x002828 02:A818: 20 08 9D  JSR sub_0x001D18
C - - - - 0x00282B 02:A81B: 20 67 AF  JSR sub_AF67
C - - - - 0x00282E 02:A81E: A9 88     LDA #$A6      ; адрес ppu имен игроков после замены
C - - - - 0x002830 02:A820: 85 E6     STA ram_00E6
C - - - - 0x002832 02:A822: A9 20     LDA #$20
C - - - - 0x002834 02:A824: 85 E7     STA ram_00E7
C - - - - 0x002836 02:A826: 20 AC AE  JSR sub_AEAC
C - - - - 0x002839 02:A829: A9 F8     LDA #$F8
C - - - - 0x00283B 02:A82B: 8D 5C 05  STA ram_055C
C - - - - 0x00283E 02:A82E: 8D 60 05  STA ram_0560
C - - - - 0x002841 02:A831: A9 00     LDA #$00
C - - - - 0x002843 02:A833: 8D 62 05  STA ram_0562
C - - - - 0x002846 02:A836: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - 0x002849 02:A839: 4C CE A7  JMP loc_A7CE
bra_A83C_отменить_выбор:
C - - - - 0x00284C 02:A83C: A9 00     LDA #$00
C - - - - 0x00284E 02:A83E: 85 4C     STA ram_004C
C - - - - 0x002850 02:A840: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - 0x002853 02:A843: A9 F8     LDA #$F8
C - - - - 0x002855 02:A845: 8D 5C 05  STA ram_055C
C - - - - 0x002858 02:A848: 8D 60 05  STA ram_0560
C - - - - 0x00285B 02:A84B: 4C 71 A7  JMP loc_A771

loc_A84E_экран_опций_японии:
C D - - - 0x00285E 02:A84E: A0 51     LDY #< tbl_B451_экран_с_опциями_с_запасными
C - - - - 0x002860 02:A850: A2 B4     LDX #> tbl_B451_экран_с_опциями_с_запасными
C - - - - 0x002862 02:A852: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x002865 02:A855: A9 FC     LDA #$FC
C - - - - 0x002867 02:A857: 20 E9 AD  JSR sub_ADE9
C - - - - 0x00286A 02:A85A: A9 85     LDA #$A2      ; адрес ppu имен основных игроков
C - - - - 0x00286C 02:A85C: 85 E6     STA ram_00E6
C - - - - 0x00286E 02:A85E: A9 20     LDA #$20
C - - - - 0x002870 02:A860: 85 E7     STA ram_00E7
C - - - - 0x002872 02:A862: 20 AC AE  JSR sub_AEAC
C - - - - 0x002875 02:A865: A9 99     LDA #$B7      ; адрес ppu имен запасных игроков
C - - - - 0x002877 02:A867: 85 E6     STA ram_00E6
C - - - - 0x002879 02:A869: A9 20     LDA #$20
C - - - - 0x00287B 02:A86B: 85 E7     STA ram_00E7
C - - - - 0x00287D 02:A86D: 20 BE AE  JSR sub_AEBE
C - - - - 0x002880 02:A870: A9 D8     LDA #$D8
C - - - - 0x002882 02:A872: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - 0x002885 02:A875: 20 A1 B0  JSR sub_B0A1_отобразить_количество_замен
C - - - - 0x002888 02:A878: 20 7F AA  JSR sub_AA7F
C - - - - 0x00288B 02:A87B: A0 FC     LDY #$FC
bra_A87D_цикл:
C - - - - 0x00288D 02:A87D: B9 B8 AC  LDA tbl_ADB4 - $FC,Y
C - - - - 0x002890 02:A880: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x002893 02:A883: C8        INY
C - - - - 0x002894 02:A884: D0 F7     BNE bra_A87D_цикл
C - - - - 0x002896 02:A886: A9 03     LDA #$03
C - - - - 0x002898 02:A888: A2 39     LDX #$39
C - - - - 0x00289A 02:A88A: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
loc_A88D:
C D - - - 0x00289D 02:A88D: A9 FC     LDA #$FC
C - - - - 0x00289F 02:A88F: A2 38     LDX #$38
C - - - - 0x0028A1 02:A891: A0 78     LDY #$78
C - - - - 0x0028A3 02:A893: 20 E3 9B  JSR sub_0x001BF3
C - - - - 0x0028A6 02:A896: A0 9D     LDY #< tbl_A89D_опции_японии
C - - - - 0x0028A8 02:A898: A2 A8     LDX #> tbl_A89D_опции_японии
C - - - - 0x0028AA 02:A89A: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок

tbl_A89D_опции_японии:
    .word ofs_A8A7_опция_formation_япония
    .word ofs_A8CA_опция_defense_япония
    .word ofs_A8E5_опция_lineup_япония
    .word ofs_AADD_экран_status
    .word sub_0x001A00_выход_из_экрана

ofs_A8A7_опция_formation_япония:
C - J - - 0x0028B7 02:A8A7: A0 EB     LDY #< tbl_B791_расстановка_япония
C - - - - 0x0028B9 02:A8A9: A2 B6     LDX #> tbl_B791_расстановка_япония
C - - - - 0x0028BD 02:A8AD: 20 AD 97  JSR sub_0x0017BB
C - - - - 0x0028C0 02:A8B0: A2 68     LDX #$68
C - - - - 0x0028C2 02:A8B2: 20 1E AE  JSR sub_AE1E
C - - - - 0x0028C5 02:A8B5: A9 D8     LDA #$D8
C - - - - 0x0028C7 02:A8B7: 20 3A AE  JSR sub_AE3A_обновить_расстановку_миникарты
C - - - - 0x0028CA 02:A8BA: A9 F8     LDA #$F8
C - - - - 0x0028CC 02:A8BC: 8D 60 05  STA ram_0560
C - - - - 0x0028CF 02:A8BF: 20 19 A7  JSR sub_A719
C - - - - 0x0028D2 02:A8C2: A9 38     LDA #$38
C - - - - 0x0028D4 02:A8C4: 8D 64 05  STA ram_0564
C - - - - 0x0028D7 02:A8C7: 4C 8D A8  JMP loc_A88D

ofs_A8CA_опция_defense_япония:
C - J - - 0x0028DA 02:A8CA: A0 90     LDY #< tbl_B792_защита_япония
C - - - - 0x0028DC 02:A8CC: A2 B7     LDX #> tbl_B792_защита_япония
C - - - - 0x0028E0 02:A8D0: 20 AD 97  JSR sub_0x0017BB
C - - - - 0x0028E3 02:A8D3: A0 B8     LDY #< tbl_ADB8_курсор_защиты_японии
C - - - - 0x0028E5 02:A8D5: A2 AD     LDX #> tbl_ADB8_курсор_защиты_японии
C - - - - 0x0028E7 02:A8D7: 20 77 AE  JSR sub_AE77
C - - - - 0x0028EA 02:A8DA: 20 19 A7  JSR sub_A719
C - - - - 0x0028ED 02:A8DD: A9 48     LDA #$48
C - - - - 0x0028EF 02:A8DF: 8D 64 05  STA ram_0564
C - - - - 0x0028F2 02:A8E2: 4C 8D A8  JMP loc_A88D

ofs_A8E5_опция_lineup_япония:
C - J - - 0x0028F5 02:A8E5: A9 58     LDA #$58
C - - - - 0x0028F7 02:A8E7: 8D 64 05  STA ram_0564
C - - - - 0x0028FA 02:A8EA: A9 94     LDA #$94
C - - - - 0x0028FC 02:A8EC: 85 4C     STA ram_004C
loc_A8EE:
C D - - - 0x0028FE 02:A8EE: A0 BE     LDY #< tbl_ADBE_курсор_замены_игроков_японии_1
C - - - - 0x002900 02:A8F0: A2 AD     LDX #> tbl_ADBE_курсор_замены_игроков_японии_1
C - - - - 0x002902 02:A8F2: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - 0x002905 02:A8F5: AD 50 04  LDA ram_счетчик_замен
C - - - - 0x002908 02:A8F8: C9 03     CMP #$03
C - - - - 0x00290A 02:A8FA: 90 04     BCC bra_A900
C - - - - 0x00290C 02:A8FC: A9 B8     LDA #$B8
C - - - - 0x00290E 02:A8FE: 85 E6     STA ram_00E6
bra_A900:
C - - - - 0x002910 02:A900: A9 01     LDA #$01
C - - - - 0x002912 02:A902: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002915 02:A905: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x002918 02:A908: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x00291A 02:A90A: 50 03     BVC bra_A90F
C - - - - 0x00291C 02:A90C: 4C 5F AA  JMP loc_AA5F
bra_A90F:
C - - - - 0x00291F 02:A90F: 10 EF     BPL bra_A900
C - - - - 0x002921 02:A911: A9 01     LDA #$01
C - - - - 0x002923 02:A913: 8D 62 05  STA ram_0562
C - - - - 0x002926 02:A916: AD 60 05  LDA ram_0560
C - - - - 0x002929 02:A919: C9 C8     CMP #$C8
C - - - - 0x00292B 02:A91B: 90 03     BCC bra_A920
C - - - - 0x00292D 02:A91D: 4C C0 A9  JMP loc_A9C0
bra_A920:
C - - - - 0x002930 02:A920: A9 01     LDA #$01
C - - - - 0x002932 02:A922: 20 D3 9C  JSR sub_0x001CE3
C - - - - 0x002935 02:A925: A0 C4     LDY #< tbl_ADC4_курсор_замены_игроков_японии_2
C - - - - 0x002937 02:A927: A2 AD     LDX #> tbl_ADC4_курсор_замены_игроков_японии_2
C - - - - 0x002939 02:A929: AD 60 05  LDA ram_0560
C - - - - 0x00293C 02:A92C: 20 3C 9C  JSR sub_0x001C4C_отобразить_курсор_со_смещением
C - - - - 0x00293F 02:A92F: AD 50 04  LDA ram_счетчик_замен
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
C - - - - 0x002956 02:A946: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002959 02:A949: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x00295C 02:A94C: AD 50 04  LDA ram_счетчик_замен
C - - - - 0x00295F 02:A94F: C9 03     CMP #$03
C - - - - 0x002961 02:A951: B0 61     BCS bra_A9B4
C - - - - 0x002963 02:A953: A5 1E     LDA ram_btn_press
C - - - - 0x002965 02:A955: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - 0x002967 02:A957: F0 5B     BEQ bra_A9B4
C - - - - 0x002969 02:A959: 4A        LSR
C - - - - 0x00296A 02:A95A: B0 1B     BCS bra_A977
C - - - - 0x00296C 02:A95C: A9 20     LDA #$08      ; X курсора при замене игроков японцев слева
C - - - - 0x00296E 02:A95E: 8D 5F 05  STA ram_055F
C - - - - 0x002971 02:A961: A9 B8     LDA #$B8
C - - - - 0x002973 02:A963: 85 E6     STA ram_00E6
C - - - - 0x002975 02:A965: A5 EA     LDA ram_00EA
C - - - - 0x002977 02:A967: 85 EB     STA ram_00EB
C - - - - 0x002979 02:A969: CD 5C 05  CMP ram_055C
C - - - - 0x00297C 02:A96C: D0 46     BNE bra_A9B4
- - - - - 0x00297E 02:A96E: 18        CLC
- - - - - 0x00297F 02:A96F: 69 10     ADC #$10
- - - - - 0x002981 02:A971: 8D 5C 05  STA ram_055C
- - - - - 0x002984 02:A974: 4C B4 A9  JMP loc_A9B4
bra_A977:
C - - - - 0x002987 02:A977: A9 00     LDA #$00
C - - - - 0x002989 02:A979: 20 D3 9C  JSR sub_0x001CE3
C - - - - 0x00298C 02:A97C: A9 C0     LDA #$B0      ; X курсора при замене игроков японцев справа
C - - - - 0x00298E 02:A97E: 8D 5F 05  STA ram_055F
C - - - - 0x002991 02:A981: A9 00     LDA #$00
C - - - - 0x002993 02:A983: 85 EB     STA ram_00EB
C - - - - 0x002995 02:A985: A9 98     LDA #$98
C - - - - 0x002997 02:A987: 85 E6     STA ram_00E6
C - - - - 0x002999 02:A989: AD 5C 05  LDA ram_055C
C - - - - 0x00299C 02:A98C: C9 A8     CMP #$A8
C - - - - 0x00299E 02:A98E: 90 05     BCC bra_A995
C - - - - 0x0029A0 02:A990: A9 98     LDA #$98
C - - - - 0x0029A2 02:A992: 8D 5C 05  STA ram_055C
bra_A995:
loc_A995:
C D - - - 0x0029A5 02:A995: AC 5C 05  LDY ram_055C
C - - - - 0x0029A8 02:A998: AE 5F 05  LDX ram_055F
C - - - - 0x0029AB 02:A99B: 20 BF AA  JSR sub_AABF
C - - - - 0x0029AE 02:A99E: 90 12     BCC bra_A9B2
C - - - - 0x0029B0 02:A9A0: AD 5C 05  LDA ram_055C
C - - - - 0x0029B3 02:A9A3: 18        CLC
C - - - - 0x0029B4 02:A9A4: 69 10     ADC #$10
C - - - - 0x0029B6 02:A9A6: C9 A8     CMP #$A8
C - - - - 0x0029B8 02:A9A8: 90 02     BCC bra_A9AC
- - - - - 0x0029BA 02:A9AA: A9 28     LDA #$28
bra_A9AC:
C - - - - 0x0029BC 02:A9AC: 8D 5C 05  STA ram_055C
C - - - - 0x0029BF 02:A9AF: 4C 95 A9  JMP loc_A995
bra_A9B2:
C - - - - 0x0029C2 02:A9B2: A0 F4     LDY #$F4
bra_A9B4:
loc_A9B4:
C - - - - 0x0029C4 02:A9B4: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x0029C6 02:A9B6: 50 03     BVC bra_A9BB
C - - - - 0x0029C8 02:A9B8: 4C 5F AA  JMP loc_AA5F
bra_A9BB:
C - - - - 0x0029CB 02:A9BB: 10 87     BPL bra_A944
C - - - - 0x0029CD 02:A9BD: 4C FB A9  JMP loc_A9FB
loc_A9C0:
C D - - - 0x0029D0 02:A9C0: A0 CA     LDY #< tbl_ADCA_курсор_замены_киперов_японии
C - - - - 0x0029D2 02:A9C2: A2 AD     LDX #> tbl_ADCA_курсор_замены_киперов_японии
C - - - - 0x0029D4 02:A9C4: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - 0x0029D7 02:A9C7: A9 FF     LDA #$FF
C - - - - 0x0029D9 02:A9C9: 85 E9     STA ram_00E9
C - - - - 0x0029DB 02:A9CB: A0 A8     LDY #$A8
C - - - - 0x0029DD 02:A9CD: A2 C0     LDX #$C0
C - - - - 0x0029DF 02:A9CF: 20 BF AA  JSR sub_AABF
C - - - - 0x0029E2 02:A9D2: 90 0E     BCC bra_A9E2
C - - - - 0x0029E4 02:A9D4: A9 C8     LDA #$C8      ; если первый запасной кипер уже забанен
C - - - - 0x0029E6 02:A9D6: 8D 5C 05  STA ram_055C
C - - - - 0x0029E9 02:A9D9: A0 B8     LDY #$B8
C - - - - 0x0029EB 02:A9DB: A2 C0     LDX #$C0
C - - - - 0x0029ED 02:A9DD: 20 BF AA  JSR sub_AABF
C - - - - 0x0029F0 02:A9E0: B0 7D     BCS bra_AA5F
bra_A9E2:
C - - - - 0x0029F2 02:A9E2: A0 F4     LDY #$F4
bra_A9E4:
C - - - - 0x0029F4 02:A9E4: A9 01     LDA #$01
C - - - - 0x0029F6 02:A9E6: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x0029F9 02:A9E9: 20 C9 9C  JSR sub_0x001CD9
C - - - - 0x0029FC 02:A9EC: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x0029FE 02:A9EE: 70 6F     BVS bra_AA5F
; con_btn_A
C - - - - 0x002A00 02:A9F0: 10 F2     BPL bra_A9E4
C - - - - 0x002A02 02:A9F2: AD 5C 05  LDA ram_055C
C - - - - 0x002A05 02:A9F5: 38        SEC
C - - - - 0x002A06 02:A9F6: E9 10     SBC #$10
C - - - - 0x002A08 02:A9F8: 8D 5C 05  STA ram_055C
loc_A9FB:
C D - - - 0x002A0B 02:A9FB: AC 60 05  LDY ram_0560
C - - - - 0x002A0E 02:A9FE: AE 63 05  LDX ram_0563
C - - - - 0x002A11 02:AA01: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002A14 02:AA04: A5 34     LDA ram_plr_data
C - - - - 0x002A16 02:AA06: 85 E6     STA ram_00E6
C - - - - 0x002A18 02:AA08: A5 35     LDA ram_plr_data + 1
C - - - - 0x002A1A 02:AA0A: 85 E7     STA ram_00E7
C - - - - 0x002A1C 02:AA0C: AC 5C 05  LDY ram_055C
C - - - - 0x002A1F 02:AA0F: AE 5F 05  LDX ram_055F
C - - - - 0x002A22 02:AA12: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002A25 02:AA15: 20 67 AF  JSR sub_AF67
C - - - - 0x002A28 02:AA18: A9 F8     LDA #$F8
C - - - - 0x002A2A 02:AA1A: 8D 5C 05  STA ram_055C
C - - - - 0x002A2D 02:AA1D: 8D 60 05  STA ram_0560
C - - - - 0x002A30 02:AA20: AD 5F 05  LDA ram_055F
C - - - - 0x002A33 02:AA23: 10 17     BPL bra_AA3C
C - - - - 0x002A35 02:AA25: A5 27     LDA ram_тайм
C - - - - 0x002A37 02:AA27: F0 13     BEQ bra_AA3C
C - - - - 0x002A39 02:AA29: EE 50 04  INC ram_счетчик_замен
C - - - - 0x002A3C 02:AA2C: A0 00     LDY #con_игрок_номер
C - - - - 0x002A3E 02:AA2E: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002A40 02:AA30: AE 50 04  LDX ram_счетчик_замен
C - - - - 0x002A43 02:AA33: 9D 50 04  STA ram_забаненный_игрок - 1,X
C - - - - 0x002A46 02:AA36: 20 A1 B0  JSR sub_B0A1_отобразить_количество_замен
C - - - - 0x002A49 02:AA39: 20 7F AA  JSR sub_AA7F
bra_AA3C:
C - - - - 0x002A4C 02:AA3C: A9 85     LDA #$A2      ; адрес ppu основных игроков после замены
C - - - - 0x002A4E 02:AA3E: 85 E6     STA ram_00E6
C - - - - 0x002A50 02:AA40: A9 20     LDA #$20
C - - - - 0x002A52 02:AA42: 85 E7     STA ram_00E7
C - - - - 0x002A54 02:AA44: 20 AC AE  JSR sub_AEAC
C - - - - 0x002A57 02:AA47: A9 99     LDA #$B7      ; адрес ppu запасных игроков после замены
C - - - - 0x002A59 02:AA49: 85 E6     STA ram_00E6
C - - - - 0x002A5B 02:AA4B: A9 20     LDA #$20
C - - - - 0x002A5D 02:AA4D: 85 E7     STA ram_00E7
C - - - - 0x002A5F 02:AA4F: 20 BE AE  JSR sub_AEBE
C - - - - 0x002A62 02:AA52: A9 00     LDA #$00
C - - - - 0x002A64 02:AA54: 8D 62 05  STA ram_0562
C - - - - 0x002A67 02:AA57: A9 D8     LDA #$D8
C - - - - 0x002A69 02:AA59: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - 0x002A6C 02:AA5C: 4C EE A8  JMP loc_A8EE
bra_AA5F:
loc_AA5F:
C D - - - 0x002A6F 02:AA5F: A9 00     LDA #$00
C - - - - 0x002A71 02:AA61: 85 4C     STA ram_004C
C - - - - 0x002A73 02:AA63: A9 D8     LDA #$D8
C - - - - 0x002A75 02:AA65: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - 0x002A78 02:AA68: A9 F8     LDA #$F8
C - - - - 0x002A7A 02:AA6A: 8D 5C 05  STA ram_055C
C - - - - 0x002A7D 02:AA6D: 8D 60 05  STA ram_0560
C - - - - 0x002A80 02:AA70: 4C 8D A8  JMP loc_A88D

sub_AA77_повторная_отрисовка_опций:
; повторно отрисовать опции в меню команды после подтверждения/отмены выбора опции во внутреннем окне
C - - - - 0x002A87 02:AA77: A0 B3     LDY #< tbl_B4B3_опции_сан_паулу_нанкацу
C - - - - 0x002A89 02:AA79: A2 B4     LDX #> tbl_B4B3_опции_сан_паулу_нанкацу
C - - - - 0x002A8B 02:AA7B: 20 AB 97  JSR sub_0x0017BB
C - - - - 0x002A8E 02:AA7E: 60        RTS

sub_AA7F:
C - - - - 0x002A8F 02:AA7F: AD 50 04  LDA ram_счетчик_замен
C - - - - 0x002A92 02:AA82: F0 3A     BEQ bra_AABE_выход
C - - - - 0x002A94 02:AA84: A9 28     LDA #$28
C - - - - 0x002A96 02:AA86: 85 E7     STA ram_00E7
bra_AA88_цикл:
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
C - - - - 0x002AB4 02:AAA4: A9 C0     LDA #$AF
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
C - - - - 0x002ACC 02:AABC: 90 CA     BCC bra_AA88_цикл
bra_AABE_выход:
C - - - - 0x002ACE 02:AABE: 60        RTS

sub_AABF:
C - - - - 0x002ACF 02:AABF: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002AD2 02:AAC2: A2 00     LDX #$00
C - - - - 0x002AD4 02:AAC4: A0 00     LDY #con_игрок_номер
C - - - - 0x002AD6 02:AAC6: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002AD8 02:AAC8: CD 51 04  CMP ram_забаненный_игрок
C - - - - 0x002ADB 02:AACB: F0 0C     BEQ bra_AAD9
C - - - - 0x002ADD 02:AACD: E8        INX
C - - - - 0x002ADE 02:AACE: CD 52 04  CMP ram_забаненный_игрок + 1
C - - - - 0x002AE1 02:AAD1: F0 06     BEQ bra_AAD9
C - - - - 0x002AE3 02:AAD3: E8        INX
C - - - - 0x002AE4 02:AAD4: CD 53 04  CMP ram_забаненный_игрок + 2
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
C - - - - 0x002AFC 02:AAEC: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x002AFF 02:AAEF: A9 84     LDA #$A3      ; ppu адрес для отображения имен основного состава
C - - - - 0x002B01 02:AAF1: 85 E6     STA ram_00E6
C - - - - 0x002B03 02:AAF3: A9 20     LDA #$20
C - - - - 0x002B05 02:AAF5: 85 E7     STA ram_00E7
C - - - - 0x002B07 02:AAF7: 20 AC AE  JSR sub_AEAC
C - - - - 0x002B0A 02:AAFA: A9 AA     LDA #$AC      ; ppu адрес для отображения энергии основного состава
C - - - - 0x002B0C 02:AAFC: 85 5C     STA ram_005C
C - - - - 0x002B0E 02:AAFE: A9 20     LDA #$20
C - - - - 0x002B10 02:AB00: 85 5D     STA ram_005D
C - - - - 0x002B12 02:AB02: A9 0A     LDA #$0A
C - - - - 0x002B14 02:AB04: 85 5E     STA ram_005E
bra_AB06_цикл:
C - - - - 0x002B16 02:AB06: 20 37 AF  JSR sub_AF37_отображение_текущей_энергии
C - - - - 0x002B19 02:AB09: C6 5E     DEC ram_005E
C - - - - 0x002B1B 02:AB0B: A5 5E     LDA ram_005E
C - - - - 0x002B1D 02:AB0D: 10 F7     BPL bra_AB06_цикл
C - - - - 0x002B1F 02:AB0F: A5 2A     LDA ram_твоя_команда
C - - - - 0x002B21 02:AB11: C9 02     CMP #$02
C - - - - 0x002B23 02:AB13: D0 22     BNE bra_AB37
C - - - - 0x002B25 02:AB15: A9 92     LDA #$B1      ; начальный адрес для отображения имен запасного состава
C - - - - 0x002B27 02:AB17: 85 E6     STA ram_00E6
C - - - - 0x002B29 02:AB19: A9 20     LDA #$20
C - - - - 0x002B2B 02:AB1B: 85 E7     STA ram_00E7
C - - - - 0x002B2D 02:AB1D: 20 B5 AE  JSR sub_AEB5
C - - - - 0x002B30 02:AB20: A9 B8     LDA #$BA      ; начальный адрес для отображения энергии запасного состава
C - - - - 0x002B32 02:AB22: 85 5C     STA ram_005C
C - - - - 0x002B34 02:AB24: A9 20     LDA #$20
C - - - - 0x002B36 02:AB26: 85 5D     STA ram_005D
C - - - - 0x002B38 02:AB28: A9 16     LDA #$16
C - - - - 0x002B3A 02:AB2A: 85 5E     STA ram_005E
bra_AB2C_цикл:
C - - - - 0x002B3C 02:AB2C: 20 37 AF  JSR sub_AF37_отображение_текущей_энергии
C - - - - 0x002B3F 02:AB2F: E6 5E     INC ram_005E
C - - - - 0x002B41 02:AB31: A5 5E     LDA ram_005E
C - - - - 0x002B43 02:AB33: C9 20     CMP #$20
C - - - - 0x002B45 02:AB35: D0 F5     BNE bra_AB2C_цикл
bra_AB37:
C - - - - 0x002B47 02:AB37: 20 7E 99  JSR sub_0x00198E_запись_палитры_фона_и_спрайтов
; X курсора потом перезаписывается в 0x002AF1
C - - - - 0x002B4A 02:AB3A: A0 DC     LDY #< tbl_ADDC_курсор_на_экране_со_списком_игроков
C - - - - 0x002B4C 02:AB3C: A2 AD     LDX #> tbl_ADDC_курсор_на_экране_со_списком_игроков
C - - - - 0x002B4E 02:AB3E: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - 0x002B51 02:AB41: A5 60     LDA ram_0060
C - - - - 0x002B53 02:AB43: 8D 5C 05  STA ram_055C
C - - - - 0x002B56 02:AB46: A5 61     LDA ram_0061
C - - - - 0x002B58 02:AB48: 8D 5F 05  STA ram_055F
C - - - - 0x002B5B 02:AB4B: 10 04     BPL bra_AB51
C - - - - 0x002B5D 02:AB4D: A9 B8     LDA #$B8
C - - - - 0x002B5F 02:AB4F: 85 E6     STA ram_00E6
bra_AB51:
C - - - - 0x002B61 02:AB51: A9 01     LDA #$01
C - - - - 0x002B63 02:AB53: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002B66 02:AB56: 20 71 9C  JSR sub_0x001C81
C - - - - 0x002B69 02:AB59: A5 2A     LDA ram_твоя_команда
C - - - - 0x002B6B 02:AB5B: C9 02     CMP #$02
C - - - - 0x002B6D 02:AB5D: D0 28     BNE bra_AB87
C - - - - 0x002B6F 02:AB5F: A5 1E     LDA ram_btn_press
C - - - - 0x002B71 02:AB61: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - 0x002B73 02:AB63: F0 22     BEQ bra_AB87
C - - - - 0x002B75 02:AB65: 4A        LSR
C - - - - 0x002B76 02:AB66: B0 0C     BCS bra_AB74_нажато_вправо
C - - - - 0x002B78 02:AB68: A9 18     LDA #$10      ; X курсора слева на экране со списком игроков
C - - - - 0x002B7A 02:AB6A: 8D 5F 05  STA ram_055F
C - - - - 0x002B7D 02:AB6D: A9 C8     LDA #$C8
C - - - - 0x002B7F 02:AB6F: 85 E6     STA ram_00E6
C - - - - 0x002B81 02:AB71: 4C 87 AB  JMP loc_AB87
bra_AB74_нажато_вправо:
C - - - - 0x002B84 02:AB74: A9 88     LDA #$80      ; X курсора справа на экране со списком игроков
C - - - - 0x002B86 02:AB76: 8D 5F 05  STA ram_055F
C - - - - 0x002B89 02:AB79: A9 B8     LDA #$B8
C - - - - 0x002B8B 02:AB7B: 85 E6     STA ram_00E6
C - - - - 0x002B8D 02:AB7D: AE 5C 05  LDX ram_055C
C - - - - 0x002B90 02:AB80: E0 C8     CPX #$C8
C - - - - 0x002B92 02:AB82: D0 03     BNE bra_AB87
- - - - - 0x002B94 02:AB84: 8D 5C 05  STA ram_055C
bra_AB87:
loc_AB87:
C D - - - 0x002B97 02:AB87: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x002B99 02:AB89: 50 03     BVC bra_AB8E_кнопка_не_нажата
C - - - - 0x002B9B 02:AB8B: 4C 21 A7  JMP loc_A721_экран_с_опциями_команды
bra_AB8E_кнопка_не_нажата:
C - - - - 0x002B9E 02:AB8E: 10 C1     BPL bra_AB51
C - - - - 0x002BA0 02:AB90: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - 0x002BA3 02:AB93: AC 5C 05  LDY ram_055C
C - - - - 0x002BA6 02:AB96: AE 5F 05  LDX ram_055F
C - - - - 0x002BA9 02:AB99: 84 60     STY ram_0060
C - - - - 0x002BAB 02:AB9B: 86 61     STX ram_0061
C - - - - 0x002BAD 02:AB9D: 20 08 9D  JSR sub_0x001D18
C - - - - 0x002BB0 02:ABA0: A9 F8     LDA #$F8
C - - - - 0x002BB2 02:ABA2: 8D 5C 05  STA ram_055C
C - - - - 0x002BB5 02:ABA5: A5 ED     LDA ram_00ED
C - - - - 0x002BB7 02:ABA7: 85 5F     STA ram_005F
C - - - - 0x002BB9 02:ABA9: A0 00     LDY #con_игрок_номер
C - - - - 0x002BBB 02:ABAB: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002BBD 02:ABAD: A0 46     LDY #$64      ; адрес ppu для имени игрока
C - - - - 0x002BBF 02:ABAF: A2 20     LDX #$20
C - - - - 0x002BC1 02:ABB1: 20 05 AF  JSR sub_AF05
C - - - - 0x002BC4 02:ABB4: A0 03     LDY #con_игрок_уровень
C - - - - 0x002BC6 02:ABB6: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002BC8 02:ABB8: 18        CLC
C - - - - 0x002BC9 02:ABB9: 69 01     ADC #$01
C - - - - 0x002BCB 02:ABBB: 20 7C 9E  JSR sub_0x001E8C_перевод_из_HEX_в_DEC
C - - - - 0x002BCE 02:ABBE: A0 AB     LDY #$AB      ; адрес ppu для номера уровня
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
C - - - - 0x002BE7 02:ABD7: A0 29     LDY #$2A      ; адрес ppu для максимальной энергии
C - - - - 0x002BE9 02:ABD9: A2 21     LDX #$21
C - - - - 0x002BEB 02:ABDB: A5 E8     LDA ram_00E8
C - - - - 0x002BED 02:ABDD: 85 EC     STA ram_00EC
C - - - - 0x002BEF 02:ABDF: A5 E9     LDA ram_00E9
C - - - - 0x002BF1 02:ABE1: 85 ED     STA ram_00ED
C - - - - 0x002BF3 02:ABE3: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
                                      LDA #$26      ; адрес ppu для текущей энергии
                                      STA ram_005C
                                      LDA #$21
                                      STA ram_005D
                                      LDA ram_005F
                                      JSR sub_AF39_отображение_текущей_энергии
C - - - - 0x002BF6 02:ABE6: A5 5F     LDA ram_005F
C - - - - 0x002BF8 02:ABE8: F0 10     BEQ bra_ABFA_кипер
C - - - - 0x002BFA 02:ABEA: C9 1E     CMP #$1E
C - - - - 0x002BFC 02:ABEC: B0 0C     BCS bra_ABFA_кипер
C - - - - 0x002BFE 02:ABEE: A0 A9     LDY #< tbl_B8A9_экран_статов_полевого
C - - - - 0x002C00 02:ABF0: A2 B8     LDX #> tbl_B8A9_экран_статов_полевого
C - - - - 0x002C02 02:ABF2: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x002C05 02:ABF5: A0 00     LDY #$00
C - - - - 0x002C07 02:ABF7: 4C 03 AC  JMP loc_AC03
bra_ABFA_кипер:
C - - - - 0x002C0A 02:ABFA: A0 B0     LDY #< tbl_B8B0_экран_статов_кипера
C - - - - 0x002C0C 02:ABFC: A2 B8     LDX #> tbl_B8B0_экран_статов_кипера
C - - - - 0x002C0E 02:ABFE: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - 0x002C11 02:AC01: A0 31     LDY # tbl_B9B2_позиция_числовых_статов_кипера - tbl_B981_позиция_числовых_статов_полевого
loc_AC03:
C D - - - 0x002C13 02:AC03: 84 E6     STY ram_00E6
loc_AC05_повторить_запись_числа:
C D - - - 0x002C15 02:AC05: A4 E6     LDY ram_00E6
C - - - - 0x002C17 02:AC07: BE 81 B9  LDX tbl_B981_позиция_числовых_статов_полевого,Y
C - - - - 0x002C1A 02:AC0A: E0 FF     CPX #$FF
C - - - - 0x002C1C 02:AC0C: F0 20     BEQ bra_AC2E_закончить_запись_чисел
C - - - - 0x002C1E 02:AC0E: A5 5F     LDA ram_005F
C - - - - 0x002C20 02:AC10: 20 27 C5  JSR sub_0x03CE18_банксвич_PRG_06_07_с_возвратом
C - - - - 0x002C23 02:AC13: A5 32     LDA ram_0032
C - - - - 0x002C25 02:AC15: 20 7C 9E  JSR sub_0x001E8C_перевод_из_HEX_в_DEC
C - - - - 0x002C28 02:AC18: A4 E6     LDY ram_00E6
C - - - - 0x002C2A 02:AC1A: B9 82 B9  LDA tbl_B981_позиция_числовых_статов_полевого + 1,Y
C - - - - 0x002C2D 02:AC1D: BE 83 B9  LDX tbl_B981_позиция_числовых_статов_полевого + 2,Y
C - - - - 0x002C30 02:AC20: A8        TAY
C - - - - 0x002C31 02:AC21: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - 0x002C34 02:AC24: A5 E6     LDA ram_00E6
C - - - - 0x002C36 02:AC26: 18        CLC
C - - - - 0x002C37 02:AC27: 69 03     ADC #$03
C - - - - 0x002C39 02:AC29: 85 E6     STA ram_00E6
C - - - - 0x002C3B 02:AC2B: 4C 05 AC  JMP loc_AC05_повторить_запись_числа
bra_AC2E_закончить_запись_чисел:
C - - - - 0x002C3E 02:AC2E: 20 7E 99  JSR sub_0x00198E_запись_палитры_фона_и_спрайтов
bra_AC31_B_не_нажата:
C - - - - 0x002C41 02:AC31: A9 01     LDA #$01
C - - - - 0x002C43 02:AC33: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002C46 02:AC36: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x002C48 02:AC38: 50 03     BVC bra_AC3D_A_не_нажата
C - - - - 0x002C4A 02:AC3A: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AC3D_A_не_нажата:
C - - - - 0x002C4D 02:AC3D: 10 F2     BPL bra_AC31_B_не_нажата
C - - - - 0x002C4F 02:AC3F: A0 00     LDY #con_игрок_номер
C - - - - 0x002C51 02:AC41: B1 34     LDA (ram_plr_data),Y
C - - - - 0x002C53 02:AC43: A2 27     LDX #$2A
bra_AC45_цикл:
C - - - - 0x002C55 02:AC45: CA        DEX
C - - - - 0x002C56 02:AC46: CA        DEX
C - - - - 0x002C57 02:AC47: CA        DEX
C - - - - 0x002C58 02:AC48: 10 03     BPL bra_AC4D
C - - - - 0x002C5A 02:AC4A: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AC4D:
C - - - - 0x002C5D 02:AC4D: DD 2E BB  CMP tbl_BB2E_список_спешалов_игроков,X
C - - - - 0x002C60 02:AC50: D0 F3     BNE bra_AC45_цикл
C - - - - 0x002C62 02:AC52: BD 2F BB  LDA tbl_BB2E_список_спешалов_игроков + 1,X
C - - - - 0x002C65 02:AC55: 85 5C     STA ram_005C
C - - - - 0x002C67 02:AC57: BD 30 BB  LDA tbl_BB2E_список_спешалов_игроков + 2,X
C - - - - 0x002C6A 02:AC5A: 85 5D     STA ram_005D
C - - - - 0x002C6C 02:AC5C: A9 00     LDA #$00
C - - - - 0x002C6E 02:AC5E: 85 5E     STA ram_005E
loc_AC60_цикл_чтения_спешалов_игрока:
C D - - - 0x002C70 02:AC60: A0 00     LDY #$00
C - - - - 0x002C72 02:AC62: B1 5C     LDA (ram_005C),Y
C - - - - 0x002C74 02:AC64: 10 1D     BPL bra_AC83_проверить_матч
C - - - - 0x002C76 02:AC66: C9 FF     CMP #$FF
C - - - - 0x002C78 02:AC68: D0 03     BNE bra_AC6D
C - - - - 0x002C7A 02:AC6A: 4C 23 AD  JMP loc_AD23_нижняя_полоска_окна_special
bra_AC6D:
C - - - - 0x002C7D 02:AC6D: C9 FE     CMP #$FE
C - - - - 0x002C7F 02:AC6F: D0 0A     BNE bra_AC7B_циклон
C - - - - 0x002C81 02:AC71: AD 46 04  LDA ram_флаг_драйв_оверхеда
C - - - - 0x002C84 02:AC74: C9 05     CMP #$05
C - - - - 0x002C86 02:AC76: F0 14     BEQ bra_AC8C_узнать_имя_спешала
C - - - - 0x002C88 02:AC78: 4C 13 AD  JMP loc_AD13_новая_строка
bra_AC7B_циклон:
C - - - - 0x002C8B 02:AC7B: AD 48 04  LDA ram_флаг_циклона
C - - - - 0x002C8E 02:AC7E: 4A        LSR
C - - - - 0x002C8F 02:AC7F: B0 0B     BCS bra_AC8C_узнать_имя_спешала
; bzk проверка на матч с аргентиной для отображения циклона в списке спешалов
; по идее это не нужно, если только флаг циклона не отвечает за что-то еще
C - - - - 0x002C91 02:AC81: A9 1E     LDA #$1E
bra_AC83_проверить_матч:
C - - - - 0x002C93 02:AC83: C5 26     CMP ram_матч
C - - - - 0x002C95 02:AC85: 90 05     BCC bra_AC8C_узнать_имя_спешала
C - - - - 0x002C97 02:AC87: F0 03     BEQ bra_AC8C_узнать_имя_спешала
C - - - - 0x002C99 02:AC89: 4C 13 AD  JMP loc_AD13_новая_строка
bra_AC8C_узнать_имя_спешала:
C - - - - 0x002C9C 02:AC8C: C8        INY
C - - - - 0x002C9D 02:AC8D: B1 5C     LDA (ram_005C),Y
C - - - - 0x002C9F 02:AC8F: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - 0x002CA2 02:AC92: A5 5E     LDA ram_005E
C - - - - 0x002CA4 02:AC94: 0A        ASL
C - - - - 0x002CA5 02:AC95: AA        TAX
C - - - - 0x002CA6 02:AC96: BD 48 BC  LDA tbl_BC48_адрес_ppu_спешалов,X
C - - - - 0x002CA9 02:AC99: 85 E8     STA ram_00E8
C - - - - 0x002CAB 02:AC9B: BD 49 BC  LDA tbl_BC48_адрес_ppu_спешалов + 1,X
C - - - - 0x002CAE 02:AC9E: 85 E9     STA ram_00E9
loc_ACA0_цикл_чтения_имени_спешала:
C D - - - 0x002CB0 02:ACA0: A0 00     LDY #$00
C - - - - 0x002CB2 02:ACA2: B1 30     LDA (ram_0030),Y
C - - - - 0x002CB4 02:ACA4: C9 FC     CMP #$FC
C - - - - 0x002CB6 02:ACA6: B0 16     BCS bra_ACBE_закончить_чтение_имени
C - - - - 0x002CB8 02:ACA8: A4 E8     LDY ram_00E8
C - - - - 0x002CBA 02:ACAA: A6 E9     LDX ram_00E9
C - - - - 0x002CBC 02:ACAC: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - 0x002CBF 02:ACAF: E6 30     INC ram_0030
C - - - - 0x002CC1 02:ACB1: D0 02     BNE bra_ACB5_пропуск
- - - - - 0x002CC3 02:ACB3: E6 31     INC ram_0031
bra_ACB5_пропуск:
C - - - - 0x002CC5 02:ACB5: E6 E8     INC ram_00E8
C - - - - 0x002CC7 02:ACB7: D0 02     BNE bra_ACBB_пропуск
- - - - - 0x002CC9 02:ACB9: E6 E9     INC ram_00E9
bra_ACBB_пропуск:
C - - - - 0x002CCB 02:ACBB: 4C A0 AC  JMP loc_ACA0_цикл_чтения_имени_спешала
bra_ACBE_закончить_чтение_имени:
C - - - - 0x002CCE 02:ACBE: A9 00     LDA #$00
C - - - - 0x002CD0 02:ACC0: 8D 4E 04  STA ram_высота_мяча
C - - - - 0x002CD3 02:ACC3: A0 02     LDY #$02
C - - - - 0x002CD5 02:ACC5: B1 5C     LDA (ram_005C),Y
C - - - - 0x002CD7 02:ACC7: 8D 3B 04  STA ram_действие_атаки
C - - - - 0x002CDA 02:ACCA: 8D 3D 04  STA ram_действие_защиты
C - - - - 0x002CDD 02:ACCD: C8        INY
C - - - - 0x002CDE 02:ACCE: B1 5C     LDA (ram_005C),Y
C - - - - 0x002CE0 02:ACD0: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - 0x002CE3 02:ACD3: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - 0x002CE6 02:ACD6: A5 5F     LDA ram_005F      ; хранит номер игрока в меню статов
C - - - - 0x002CE8 02:ACD8: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x002CEB 02:ACDB: 8D 42 04  STA ram_игрок_без_мяча
C - - - - 0x002CEE 02:ACDE: C8        INY
C - - - - 0x002CEF 02:ACDF: B1 5C     LDA (ram_005C),Y
C - - - - 0x002CF1 02:ACE1: 20 4B C5  JSR sub_0x03CE7E_прыжки_в_начале_банка_24
C - - - - 0x002CF4 02:ACE4: AD 3F 04  LDA ram_затрата_энергии_lo
C - - - - 0x002CF7 02:ACE7: 85 EC     STA ram_00EC
C - - - - 0x002CF9 02:ACE9: AD 40 04  LDA ram_затрата_энергии_hi
C - - - - 0x002CFC 02:ACEC: 85 ED     STA ram_00ED
C - - - - 0x002CFE 02:ACEE: 20 4F 9E  JSR sub_0x001E5F
C - - - - 0x002D01 02:ACF1: A5 E8     LDA ram_00E8
C - - - - 0x002D03 02:ACF3: 85 EC     STA ram_00EC
C - - - - 0x002D05 02:ACF5: A5 E9     LDA ram_00E9
C - - - - 0x002D07 02:ACF7: 85 ED     STA ram_00ED
C - - - - 0x002D09 02:ACF9: A5 5E     LDA ram_005E
C - - - - 0x002D0B 02:ACFB: 0A        ASL
C - - - - 0x002D0C 02:ACFC: AA        TAX
C - - - - 0x002D0D 02:ACFD: BD 48 BC  LDA tbl_BC48_адрес_ppu_спешалов,X
C - - - - 0x002D10 02:AD00: 29 E0     AND #$E0
C - - - - 0x002D12 02:AD02: 09 15     ORA #$19      ; + к адресу ppu для cost
C - - - - 0x002D17 02:AD07: A8        TAY
C - - - - 0x002D18 02:AD08: BD 49 BC  LDA tbl_BC48_адрес_ppu_спешалов + 1,X
C - - - - 0x002D1B 02:AD0B: 69 00     ADC #$00
C - - - - 0x002D1D 02:AD0D: AA        TAX
C - - - - 0x002D1E 02:AD0E: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - 0x002D21 02:AD11: E6 5E     INC ram_005E
loc_AD13_новая_строка:
C D - - - 0x002D23 02:AD13: A5 5C     LDA ram_005C
C - - - - 0x002D25 02:AD15: 18        CLC
C - - - - 0x002D26 02:AD16: 69 05     ADC #$05
C - - - - 0x002D28 02:AD18: 85 5C     STA ram_005C
C - - - - 0x002D2A 02:AD1A: A5 5D     LDA ram_005D
C - - - - 0x002D2C 02:AD1C: 69 00     ADC #$00
C - - - - 0x002D2E 02:AD1E: 85 5D     STA ram_005D
C - - - - 0x002D30 02:AD20: 4C 60 AC  JMP loc_AC60_цикл_чтения_спешалов_игрока

loc_AD23_нижняя_полоска_окна_special:
C D - - - 0x002D33 02:AD23: A5 5E     LDA ram_005E
C - - - - 0x002D35 02:AD25: AA        TAX
C - - - - 0x002D36 02:AD26: 0A        ASL
C - - - - 0x002D37 02:AD27: 0A        ASL
C - - - - 0x002D38 02:AD28: 0A        ASL
C - - - - 0x002D39 02:AD29: 18        CLC
C - - - - 0x002D3A 02:AD2A: 69 17     ADC #$17
C - - - - 0x002D3C 02:AD2C: 85 7C     STA ram_007C
C - - - - 0x002D3E 02:AD2E: A9 40     LDA #$40
C - - - - 0x002D40 02:AD30: 20 EE 9D  JSR sub_0x001DFE_умножить_A_на_X
C - - - - 0x002D43 02:AD33: A5 EC     LDA ram_00EC
C - - - - 0x002D45 02:AD35: 18        CLC
C - - - - 0x002D46 02:AD36: 69 63     ADC #$61      ; начало
C - - - - 0x002D48 02:AD38: A8        TAY
C - - - - 0x002D49 02:AD39: A5 ED     LDA ram_00ED
C - - - - 0x002D4B 02:AD3B: 69 25     ADC #$25
C - - - - 0x002D4D 02:AD3D: AA        TAX
C - - - - 0x002D4E 02:AD3E: A9 67     LDA #< tbl_B967_тайлы_закрывающей_полоски_special
C - - - - 0x002D50 02:AD40: 85 E6     STA ram_00E6
C - - - - 0x002D52 02:AD42: A9 B9     LDA #> tbl_B967_тайлы_закрывающей_полоски_special
C - - - - 0x002D54 02:AD44: 85 E7     STA ram_00E7
C - - - - 0x002D56 02:AD46: A9 1A     LDA #$1E      ; длина полоски
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
C - - - - 0x002D6D 02:AD5D: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002D70 02:AD60: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x002D72 02:AD62: 70 14     BVS bra_AD78
; con_btn_A
C - - - - 0x002D74 02:AD64: 10 F5     BPL bra_AD5B
C - - - - 0x002D76 02:AD66: A9 00     LDA #$00
C - - - - 0x002D78 02:AD68: 85 7E     STA ram_007E
bra_AD6A:
C - - - - 0x002D7A 02:AD6A: A9 01     LDA #$01
C - - - - 0x002D7C 02:AD6C: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002D7F 02:AD6F: 24 1E     BIT ram_btn_press
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
C - - - - 0x002D8E 02:AD7E: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002D91 02:AD81: 24 1E     BIT ram_btn_press
; con_btn_A
C - - - - 0x002D93 02:AD83: 30 C6     BMI bra_AD4B
; con_btn_B
C - - - - 0x002D95 02:AD85: 50 F5     BVC bra_AD7C
C - - - - 0x002D97 02:AD87: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса



tbl_AD8A:
- D - - - 0x002D9A 02:AD8A: 00        .byte $00
- D - - - 0x002D9B 02:AD8B: 00        .byte $00
- D - - - 0x002D9C 02:AD8C: 01        .byte $01    ; <あ>
- D - - - 0x002D9D 02:AD8D: 02        .byte $02    ; <い>

- D - - - 0x002D9E 02:AD8E: 03        .byte $03    ; <う>
- D - - - 0x002D9F 02:AD8F: 03        .byte $03    ; <う>
- D - - - 0x002DA0 02:AD90: 04        .byte $04    ; <え>
- D - - - 0x002DA1 02:AD91: 05        .byte $05    ; <お>

- D - - - 0x002DA2 02:AD92: 06        .byte $06    ; <か>
- D - - - 0x002DA3 02:AD93: 06        .byte $06    ; <か>
- D - - - 0x002DA4 02:AD94: 07        .byte $07    ; <き>
- D - - - 0x002DA5 02:AD95: 08        .byte $08    ; <く>

- D - - - 0x002DA6 02:AD96: 09        .byte $09    ; <け>
- D - - - 0x002DA7 02:AD97: 09        .byte $09    ; <け>
- D - - - 0x002DA8 02:AD98: 0A        .byte $0A    ; <こ>
- D - - - 0x002DA9 02:AD99: 0B        .byte $0B    ; <さ>

- D - - - 0x002DAA 02:AD9A: 0C        .byte $0C    ; <し>
- D - - - 0x002DAB 02:AD9B: 0C        .byte $0C    ; <し>
- - - - - 0x002DAC 02:AD9C: 0D        .byte $0D    ; <す>
- - - - - 0x002DAD 02:AD9D: 0E        .byte $0E    ; <せ>



tbl_AD9E_курсор_опции_сан_паулу_нанкацу:
- D - - - 0x002DAE 02:AD9E: 38        .byte $38
- D - - - 0x002DAF 02:AD9F: 71        .byte $71
- D - - - 0x002DB0 02:ADA0: 00        .byte $00
- D - - - 0x002DB1 02:ADA1: 88        .byte $90

tbl_ADA2_курсор_защиты_сан_паулу_нанкацу:
    .byte $F8       ; ???
    .byte $58       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $98       ; X
    .byte $78       ; максимальное значение Y внизу

tbl_ADA8_курсор_замены_1:
    .byte $F8       ; ???
    .byte $28       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $28       ; X
    .byte $B8       ; максимальное значение Y внизу

tbl_ADAE_курсор_замены_2:
    .byte $F4       ; ???
    .byte $28       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $28       ; X
    .byte $B8       ; максимальное значение Y внизу

tbl_ADB4:
    .byte $38    ; <5>
    .byte $71    ; <ュ>
    .byte $00
    .byte $60    ; <ミ>

tbl_ADB8_курсор_защиты_японии:
    .byte $F8       ; ???
    .byte $58       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $68       ; X
    .byte $78       ; максимальное значение Y внизу

tbl_ADBE_курсор_замены_игроков_японии_1:
    .byte $F8       ; ???
    .byte $28       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $08       ; X
    .byte $C8       ; максимальное значение Y внизу

tbl_ADC4_курсор_замены_игроков_японии_2:
    .byte $F4       ; ???
    .byte $28       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $08       ; X
    .byte $B8       ; максимальное значение Y внизу

tbl_ADCA_курсор_замены_киперов_японии:
    .byte $F4       ; ???
    .byte $B8       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $B0       ; X
    .byte $C8       ; максимальное значение Y внизу

tbl_ADD0_курсор_тренера:
    .byte $FC       ; ???
    .byte $96       ; Y
    .byte $FF       ; тайл
    .byte $03       ; палитра
    .byte $0E       ; X
    .byte $C6       ; максимальное значение Y внизу

tbl_ADD6_курсор_в_перерыве:
    .byte $FC       ; ???
    .byte $AE       ; Y
    .byte $FF       ; тайл
    .byte $03       ; палитра
    .byte $38       ; X
    .byte $BE       ; максимальное значение Y внизу

tbl_ADDC_курсор_на_экране_со_списком_игроков:
    .byte $F4       ; ???
    .byte $28       ; Y
    .byte $71       ; тайл
    .byte $00       ; палитра
    .byte $18       ; X
    .byte $C8       ; максимальное значение Y внизу

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

sub_AE01_обновить_расстановку_миникарты:
C - - - - 0x002E11 02:AE01: 85 E7     STA ram_00E7
C - - - - 0x002E13 02:AE03: A0 24     LDY #$24
C - - - - 0x002E15 02:AE05: A2 00     LDX #$00
bra_AE07_цикл:
C - - - - 0x002E17 02:AE07: BD 23 B8  LDA tbl_B823,X
C - - - - 0x002E1A 02:AE0A: 99 69 04  STA ram_копия_спрайт_тайл,Y
C - - - - 0x002E1D 02:AE0D: A9 00     LDA #$00
C - - - - 0x002E1F 02:AE0F: 99 6A 04  STA ram_копия_спрайт_атрибут,Y
C - - - - 0x002E22 02:AE12: E8        INX
C - - - - 0x002E23 02:AE13: 88        DEY
C - - - - 0x002E24 02:AE14: 88        DEY
C - - - - 0x002E25 02:AE15: 88        DEY
C - - - - 0x002E26 02:AE16: 88        DEY
C - - - - 0x002E27 02:AE17: 10 EE     BPL bra_AE07_цикл
C - - - - 0x002E29 02:AE19: A4 2C     LDY ram_расстановка_слева
C - - - - 0x002E2B 02:AE1B: 4C 8F AE  JMP loc_AE8F_спрайты_миникарты

sub_AE1E:
C - - - - 0x002E2E 02:AE1E: 85 E7     STA ram_00E7
C - - - - 0x002E30 02:AE20: A9 71     LDA #$71
C - - - - 0x002E32 02:AE22: 8D 61 05  STA ram_0561
C - - - - 0x002E35 02:AE25: A9 00     LDA #$00
C - - - - 0x002E37 02:AE27: 8D 62 05  STA ram_0562
C - - - - 0x002E3A 02:AE2A: 8E 63 05  STX ram_0563
C - - - - 0x002E3D 02:AE2D: A5 2C     LDA ram_расстановка_слева
C - - - - 0x002E3F 02:AE2F: 0A        ASL
C - - - - 0x002E40 02:AE30: 0A        ASL
C - - - - 0x002E41 02:AE31: 0A        ASL
C - - - - 0x002E42 02:AE32: 0A        ASL
C - - - - 0x002E43 02:AE33: 18        CLC
C - - - - 0x002E44 02:AE34: 69 48     ADC #$48
C - - - - 0x002E46 02:AE36: 8D 60 05  STA ram_0560
C - - - - 0x002E49 02:AE39: 60        RTS

sub_AE3A_обновить_расстановку_миникарты:
C - - - - 0x002E4A 02:AE3A: 85 E7     STA ram_00E7
C - - - - 0x002E4C 02:AE3C: A5 2C     LDA ram_расстановка_слева
C - - - - 0x002E4E 02:AE3E: 85 E6     STA ram_00E6
bra_AE40:
C - - - - 0x002E50 02:AE40: A9 01     LDA #$01
C - - - - 0x002E52 02:AE42: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - 0x002E55 02:AE45: A5 1E     LDA ram_btn_press
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
C - - - - 0x002E6F 02:AE5F: 8D 60 05  STA ram_0560
C - - - - 0x002E72 02:AE62: A4 E6     LDY ram_00E6
C - - - - 0x002E74 02:AE64: 20 8F AE  JSR sub_AE8F_спрайты_миникарты
bra_AE67:
C - - - - 0x002E77 02:AE67: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - 0x002E79 02:AE69: 70 07     BVS bra_AE72
; con_btn_A
C - - - - 0x002E7B 02:AE6B: 10 D3     BPL bra_AE40
C - - - - 0x002E7D 02:AE6D: A5 E6     LDA ram_00E6
C - - - - 0x002E7F 02:AE6F: 85 2C     STA ram_расстановка_слева
C - - - - 0x002E81 02:AE71: 60        RTS
bra_AE72:
C - - - - 0x002E82 02:AE72: A4 2C     LDY ram_расстановка_слева
C - - - - 0x002E84 02:AE74: 4C 8F AE  JMP loc_AE8F_спрайты_миникарты

sub_AE77:
C - - - - 0x002E87 02:AE77: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - 0x002E8A 02:AE7A: A5 2D     LDA ram_защита_слева
C - - - - 0x002E8C 02:AE7C: 0A        ASL
C - - - - 0x002E8D 02:AE7D: 0A        ASL
C - - - - 0x002E8E 02:AE7E: 0A        ASL
C - - - - 0x002E8F 02:AE7F: 0A        ASL
C - - - - 0x002E90 02:AE80: 18        CLC
C - - - - 0x002E91 02:AE81: 69 58     ADC #$58
C - - - - 0x002E93 02:AE83: 8D 60 05  STA ram_0560
C - - - - 0x002E96 02:AE86: 20 0D 9C  JSR sub_0x001C1D_скрыть_курсор_после_выбора_опции
C - - - - 0x002E99 02:AE89: B0 03     BCS bra_AE8E_выход
C - - - - 0x002E9B 02:AE8B: 4A        LSR
C - - - - 0x002E9C 02:AE8C: 85 2D     STA ram_защита_слева
bra_AE8E_выход:
C - - - - 0x002E9E 02:AE8E: 60        RTS

loc_AE8F_спрайты_миникарты:
sub_AE8F_спрайты_миникарты:
; отображение позиций игроков на миникарте в экране с меню команды исходя из опции расстановки
C D - - - 0x002E9F 02:AE8F: BE 2D B8  LDX tbl_B82D_офсет_спрайтов_миникарты,Y
C - - - - 0x002EA2 02:AE92: A0 24     LDY #$24
bra_AE94:
C - - - - 0x002EA4 02:AE94: BD 31 B8  LDA tbl_B831_спрайты_миникарты,X
C - - - - 0x002EA7 02:AE97: 99 68 04  STA ram_копия_спрайт_Y,Y
C - - - - 0x002EAA 02:AE9A: BD 32 B8  LDA tbl_B831_спрайты_миникарты + 1,X
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
C - - - - 0x002F1C 02:AF0C: A9 05     LDA #$08      ; ограничение по количеству символов для имен
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
C - - - - 0x002F36 02:AF26: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - 0x002F39 02:AF29: E6 E6     INC ram_00E6
C - - - - 0x002F3B 02:AF2B: C6 ED     DEC ram_00ED
C - - - - 0x002F3D 02:AF2D: D0 E1     BNE bra_AF10
C - - - - 0x002F3F 02:AF2F: A5 E6     LDA ram_00E6
C - - - - 0x002F41 02:AF31: 38        SEC
C - - - - 0x002F42 02:AF32: E9 05     SBC #$08      ; здесь также нужно корректировать ограничение
C - - - - 0x002F44 02:AF34: 85 E6     STA ram_00E6
C - - - - 0x002F46 02:AF36: 60        RTS

sub_AF37_отображение_текущей_энергии:
C - - - - 0x002F47 02:AF37: A5 5E     LDA ram_005E
sub_AF39_отображение_текущей_энергии:
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

.export sub_0x002F89_начислить_опыт_за_победу
sub_0x002F89_начислить_опыт_за_победу:
C D - - - 0x002F89 02:AF79: A5 26     LDA ram_матч
C - - - - 0x002F8B 02:AF7B: 0A        ASL
C - - - - 0x002F8C 02:AF7C: AA        TAX
C - - - - 0x002F8D 02:AF7D: BD 4C BA  LDA tbl_BA4C_опыт_за_победу_над_командой,X
C - - - - 0x002F90 02:AF80: 85 E6     STA ram_00E6
C - - - - 0x002F92 02:AF82: BD 4D BA  LDA tbl_BA4C_опыт_за_победу_над_командой + 1,X
C - - - - 0x002F95 02:AF85: 85 E7     STA ram_00E7
C - - - - 0x002F97 02:AF87: 4C 9E AF  JMP loc_AF9E_начислить_опыт

.export sub_0x002F9A_начислить_опыт_за_поражение
sub_0x002F9A_начислить_опыт_за_поражение:
C D - - - 0x002F9A 02:AF8A: A5 26     LDA ram_матч
C - - - - 0x002F9C 02:AF8C: 0A        ASL
C - - - - 0x002F9D 02:AF8D: AA        TAX
C - - - - 0x002F9E 02:AF8E: BD 4C BA  LDA tbl_BA4C_опыт_за_победу_над_командой,X
C - - - - 0x002FA1 02:AF91: 85 E6     STA ram_00E6
C - - - - 0x002FA3 02:AF93: BD 4D BA  LDA tbl_BA4C_опыт_за_победу_над_командой + 1,X
C - - - - 0x002FA6 02:AF96: 4A        LSR               ; поделить на 4
C - - - - 0x002FA7 02:AF97: 66 E6     ROR ram_00E6
C - - - - 0x002FA9 02:AF99: 4A        LSR
C - - - - 0x002FAA 02:AF9A: 66 E6     ROR ram_00E6
C - - - - 0x002FAC 02:AF9C: 85 E7     STA ram_00E7
loc_AF9E_начислить_опыт:
C D - - - 0x002FAE 02:AF9E: A2 00     LDX #$00
bra_AFA0_цикл:
C - - - - 0x002FB0 02:AFA0: BD 54 04  LDA ram_опыт_lo,X
C - - - - 0x002FB3 02:AFA3: 18        CLC
C - - - - 0x002FB4 02:AFA4: 65 E6     ADC ram_00E6
C - - - - 0x002FB6 02:AFA6: 9D 54 04  STA ram_опыт_lo,X
C - - - - 0x002FB9 02:AFA9: BD 55 04  LDA ram_опыт_hi,X
C - - - - 0x002FBC 02:AFAC: 65 E7     ADC ram_00E7
C - - - - 0x002FBE 02:AFAE: 9D 55 04  STA ram_опыт_hi,X
C - - - - 0x002FC1 02:AFB1: 90 08     BCC bra_AFBB_не_overflow
- - - - - 0x002FC3 02:AFB3: A9 FF     LDA #$FF
- - - - - 0x002FC5 02:AFB5: 9D 54 04  STA ram_опыт_lo,X
- - - - - 0x002FC8 02:AFB8: 9D 55 04  STA ram_опыт_hi,X
bra_AFBB_не_overflow:
C - - - - 0x002FCB 02:AFBB: E8        INX
C - - - - 0x002FCC 02:AFBC: E8        INX
C - - - - 0x002FCD 02:AFBD: E0 16     CPX #$16
C - - - - 0x002FCF 02:AFBF: 90 DF     BCC bra_AFA0_цикл
C - - - - 0x002FD1 02:AFC1: 60        RTS

.export sub_0x002FD2_начислить_опыт
sub_0x002FD2_начислить_опыт:
; на вход подается
    ; A = номер игрока из твоей команды
    ; X = 02 (игрок) или 03 (кипер), также может быть 00 и 01
C D - - - 0x002FD2 02:AFC2: 86 EC     STX ram_00EC
C - - - - 0x002FD4 02:AFC4: 20 23 B0  JSR sub_B023_вычислить_указатели_опыта
C - - - - 0x002FD7 02:AFC7: 85 EB     STA ram_00EB
C - - - - 0x002FD9 02:AFC9: 29 F0     AND #$F0
C - - - - 0x002FDB 02:AFCB: 4A        LSR
                                      LSR
C - - - - 0x002FDC 02:AFCC: 18        CLC
C - - - - 0x002FDD 02:AFCD: 65 EC     ADC ram_00EC
C - - - - 0x002FDF 02:AFCF: AA        TAX
C - - - - 0x002FE0 02:AFD0: BD 1C BA  LDA tbl_BA1C_множитель_опыта,X
C - - - - 0x002FE3 02:AFD3: AA        TAX
C - - - - 0x002FE4 02:AFD4: A5 26     LDA ram_матч
C - - - - 0x002FE6 02:AFD6: 0A        ASL
C - - - - 0x002FE7 02:AFD7: A8        TAY
C - - - - 0x002FE8 02:AFD8: B9 4D BA  LDA tbl_BA4C_опыт_за_победу_над_командой + 1,Y
C - - - - 0x002FEB 02:AFDB: 85 ED     STA ram_00ED
C - - - - 0x002FED 02:AFDD: B9 4C BA  LDA tbl_BA4C_опыт_за_победу_над_командой,Y
C - - - - 0x002FF0 02:AFE0: 66 ED     ROR ram_00ED      ; поделить на 4
C - - - - 0x002FF2 02:AFE2: 4A        LSR
C - - - - 0x002FF3 02:AFE3: 66 ED     ROR ram_00ED
C - - - - 0x002FF5 02:AFE5: 4A        LSR
C - - - - 0x002FF6 02:AFE6: 20 EE 9D  JSR sub_0x001DFE_умножить_A_на_X
C - - - - 0x002FF9 02:AFE9: 06 EC     ASL ram_00EC      ; умножить результат на 4
C - - - - 0x002FFB 02:AFEB: 26 ED     ROL ram_00ED
C - - - - 0x002FFD 02:AFED: 06 EC     ASL ram_00EC
C - - - - 0x002FFF 02:AFEF: 26 ED     ROL ram_00ED
C - - - - 0x003001 02:AFF1: A5 EB     LDA ram_00EB      ; число из таблицы команды для текущего игрока
C - - - - 0x003003 02:AFF3: 29 0F     AND #$0F
C - - - - 0x003005 02:AFF5: 0A        ASL
C - - - - 0x003006 02:AFF6: AA        TAX
C - - - - 0x003007 02:AFF7: BD 54 04  LDA ram_опыт_lo,X
C - - - - 0x00300A 02:AFFA: 18        CLC
C - - - - 0x00300B 02:AFFB: 65 ED     ADC ram_00ED
C - - - - 0x00300D 02:AFFD: 9D 54 04  STA ram_опыт_lo,X
C - - - - 0x003010 02:B000: BD 55 04  LDA ram_опыт_hi,X
C - - - - 0x003013 02:B003: 69 00     ADC #$00
C - - - - 0x003015 02:B005: 9D 55 04  STA ram_опыт_hi,X
C - - - - 0x003018 02:B008: 90 08     BCC bra_B012_выход
- - - - - 0x00301A 02:B00A: A9 FF     LDA #$FF      ; если overflow
- - - - - 0x00301C 02:B00C: 9D 54 04  STA ram_опыт_lo,X
- - - - - 0x00301F 02:B00F: 9D 55 04  STA ram_опыт_hi,X
bra_B012_выход:
C - - - - 0x003022 02:B012: 60        RTS

sub_B013_чтение_опыта_из_оперативки_для_игрока:
C - - - - 0x003023 02:B013: 20 23 B0  JSR sub_B023_вычислить_указатели_опыта
sub_B016_чтение_опыта_из_оперативки:
C - - - - 0x003026 02:B016: 29 0F     AND #$0F
C - - - - 0x003028 02:B018: 0A        ASL
C - - - - 0x003029 02:B019: AA        TAX
C - - - - 0x00302A 02:B01A: BD 54 04  LDA ram_опыт_lo,X
C - - - - 0x00302D 02:B01D: A8        TAY
C - - - - 0x00302E 02:B01E: BD 55 04  LDA ram_опыт_hi,X
C - - - - 0x003031 02:B021: AA        TAX
C - - - - 0x003032 02:B022: 60        RTS

sub_B023_вычислить_указатели_опыта:
C - - - - 0x003033 02:B023: A6 2A     LDX ram_твоя_команда
C - - - - 0x003035 02:B025: 18        CLC
C - - - - 0x003036 02:B026: 7D D3 B9  ADC tbl_B9D3_смещение_указателя_таблицы_исходя_из_команды,X
C - - - - 0x003039 02:B029: AA        TAX
C - - - - 0x00303A 02:B02A: BD D6 B9  LDA tbl_B9D6_указатели_опыта_игрока,X
C - - - - 0x00303D 02:B02D: 60        RTS

sub_B02E:
C - - - - 0x00303E 02:B02E: 84 E6     STY ram_00E6
C - - - - 0x003040 02:B030: 86 E7     STX ram_00E7
C - - - - 0x003042 02:B032: A2 80     LDX #$80
bra_B034:
C - - - - 0x003044 02:B034: CA        DEX
C - - - - 0x003045 02:B035: CA        DEX
C - - - - 0x003046 02:B036: A5 E6     LDA ram_00E6
C - - - - 0x003048 02:B038: DD 90 BA  CMP tbl_BA90_опыт_для_достижения_уровня,X
C - - - - 0x00304B 02:B03B: A5 E7     LDA ram_00E7
C - - - - 0x00304D 02:B03D: FD 91 BA  SBC tbl_BA90_опыт_для_достижения_уровня + 1,X
C - - - - 0x003050 02:B040: 90 F2     BCC bra_B034
C - - - - 0x003052 02:B042: 8A        TXA
C - - - - 0x003053 02:B043: 4A        LSR
C - - - - 0x003054 02:B044: 60        RTS

sub_B045:
C - - - - 0x003055 02:B045: 0A        ASL
C - - - - 0x003056 02:B046: AA        TAX
C - - - - 0x003057 02:B047: BD 90 BA  LDA tbl_BA90_опыт_для_достижения_уровня,X
C - - - - 0x00305A 02:B04A: A8        TAY
C - - - - 0x00305B 02:B04B: BD 91 BA  LDA tbl_BA90_опыт_для_достижения_уровня + 1,X
C - - - - 0x00305E 02:B04E: AA        TAX
C - - - - 0x00305F 02:B04F: 60        RTS

.export sub_0x003060
sub_0x003060:
C D - - - 0x003060 02:B050: A5 26     LDA ram_матч
C - - - - 0x003062 02:B052: C9 10     CMP #$10
C - - - - 0x003064 02:B054: F0 16     BEQ bra_B06C_япония
C - - - - 0x003066 02:B056: C9 0C     CMP #$0C
C - - - - 0x003068 02:B058: F0 0B     BEQ bra_B065_сан_паулу_2
C - - - - 0x00306A 02:B05A: C9 06     CMP #$06
C - - - - 0x00306C 02:B05C: D0 42     BNE bra_B0A0_выход
C - - - - 0x00306E 02:B05E: A0 10     LDY #< tbl_BB10_нанкацу
C - - - - 0x003070 02:B060: A2 BB     LDX #> tbl_BB10_нанкацу
C - - - - 0x003072 02:B062: 4C 70 B0  JMP loc_B070
bra_B065_сан_паулу_2:
C - - - - 0x003075 02:B065: A0 1A     LDY #< tbl_BB1A_сан_паулу_2
C - - - - 0x003077 02:B067: A2 BB     LDX #> tbl_BB1A_сан_паулу_2
C - - - - 0x003079 02:B069: 4C 70 B0  JMP loc_B070
bra_B06C_япония:
C - - - - 0x00307C 02:B06C: A0 24     LDY #< tbl_BB24_япония
C - - - - 0x00307E 02:B06E: A2 BB     LDX #> tbl_BB24_япония
loc_B070:
C D - - - 0x003080 02:B070: 84 E6     STY ram_00E6
C - - - - 0x003082 02:B072: 86 E7     STX ram_00E7
C - - - - 0x003084 02:B074: A0 EC     LDY #$EC
bra_B076_цикл_копирования:
C - - - - 0x003086 02:B076: B9 68 03  LDA ram_опыт_lo - $EC,Y
C - - - - 0x003089 02:B079: 99 6A 05  STA ram_0656 - $EC,Y
C - - - - 0x00308C 02:B07C: C8        INY
C - - - - 0x00308D 02:B07D: D0 F7     BNE bra_B076_цикл_копирования
C - - - - 0x00308F 02:B07F: A9 00     LDA #$00
C - - - - 0x003091 02:B081: 85 E9     STA ram_00E9
bra_B083_цикл:
C - - - - 0x003093 02:B083: 4A        LSR
C - - - - 0x003094 02:B084: A8        TAY
C - - - - 0x003095 02:B085: B1 E6     LDA (ram_00E6),Y
C - - - - 0x003097 02:B087: AA        TAX
C - - - - 0x003098 02:B088: A4 E9     LDY ram_00E9
C - - - - 0x00309A 02:B08A: BD 56 06  LDA ram_0656,X
C - - - - 0x00309D 02:B08D: 99 54 04  STA ram_опыт_lo,Y
C - - - - 0x0030A0 02:B090: BD 57 06  LDA ram_0657,X
C - - - - 0x0030A3 02:B093: 99 55 04  STA ram_опыт_hi,Y
C - - - - 0x0030A6 02:B096: E6 E9     INC ram_00E9
C - - - - 0x0030A8 02:B098: E6 E9     INC ram_00E9
C - - - - 0x0030AA 02:B09A: A5 E9     LDA ram_00E9
C - - - - 0x0030AC 02:B09C: C9 14     CMP #$14
C - - - - 0x0030AE 02:B09E: D0 E3     BNE bra_B083_цикл
bra_B0A0_выход:
C - - - - 0x0030B0 02:B0A0: 60        RTS

sub_B0A1_отобразить_количество_замен:
C - - - - 0x0030B1 02:B0A1: A6 27     LDX ram_тайм
C - - - - 0x0030B3 02:B0A3: F0 1A     BEQ bra_B0BF_выход
C - - - - 0x0030B5 02:B0A5: A0 C8     LDY #< tbl_B9C8_количество_замен_для_японии
C - - - - 0x0030B7 02:B0A7: A2 B9     LDX #> tbl_B9C8_количество_замен_для_японии
C - - - - 0x0030B9 02:B0A9: 20 B6 97  JSR sub_0x0017C6_запись_в_буфер_без_смещения
; адрес ppu для цифры количества замен
C - - - - 0x0030BC 02:B0AC: A0 52     LDY #$53
C - - - - 0x0030BE 02:B0AE: A2 22     LDX #$22
C - - - - 0x0030C0 02:B0B0: A9 01     LDA #$01
C - - - - 0x0030C2 02:B0B2: 85 E9     STA ram_00E9
C - - - - 0x0030C4 02:B0B4: AD 50 04  LDA ram_счетчик_замен
C - - - - 0x0030C7 02:B0B7: 49 FF     EOR #$FF
C - - - - 0x0030C9 02:B0B9: 18        CLC
C - - - - 0x0030CA 02:B0BA: 69 37     ADC #$34
C - - - - 0x0030CC 02:B0BC: 20 95 98  JSR sub_0x0018A5
bra_B0BF_выход:
C - - - - 0x0030CF 02:B0BF: 60        RTS

sub_B0C0_обработать_таблицу_с_байтами_фона:
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

; bzk почистить мусор
tbl_B0D7:
    .word ofs_B0F7_00_запись_в_буфер_без_смещения
    .word ofs_B102_01_запись_в_буфер_со_смещением
    .word ofs_B113_02       ; unused
    .word ofs_B11E_03       ; unused
    .word ofs_B12F_04_вертикальная_полоска
    .word ofs_B13B_05_горизонтальная_полоска
    .word ofs_B14D_06       ; unused
    .word ofs_B160_07       ; unused
    .word ofs_B173_08       ; unused
    .word ofs_B186_09       ; unused
    .word ofs_B199_0A_запись_в_буфер_с_учетом_кодировки_японских_символов
    .word _общий_RTS        ; unused
    .word _общий_RTS        ; unused
    .word ofs_B1A4_0D_очистить_nametable
    .word ofs_B1AC_0E_прыжок
    .word _общий_RTS        ; 0F закончить чтение

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
C - - - - 0x003155 02:B145: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
C - - - - 0x003158 02:B148: A9 05     LDA #$05
C - - - - 0x00315A 02:B14A: 4C BB B1  JMP loc_B1BB

ofs_B14D_06:
- - - - - 0x00315D 02:B14D: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - 0x003160 02:B150: 20 DE B1  JSR sub_B1DE
- - - - - 0x003163 02:B153: AA        TAX
- - - - - 0x003164 02:B154: A9 00     LDA #$00
- - - - - 0x003166 02:B156: A4 E9     LDY ram_00E9
- - - - - 0x003168 02:B158: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
- - - - - 0x00316B 02:B15B: A9 05     LDA #$05
- - - - - 0x00316D 02:B15D: 4C BB B1  JMP loc_B1BB

ofs_B160_07:
- - - - - 0x003170 02:B160: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - 0x003173 02:B163: 20 DE B1  JSR sub_B1DE
- - - - - 0x003176 02:B166: AA        TAX
- - - - - 0x003177 02:B167: B1 EC     LDA (ram_00EC),Y
- - - - - 0x003179 02:B169: A4 E9     LDY ram_00E9
- - - - - 0x00317B 02:B16B: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
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
; bzk избавиться от всех местоположений в таблицах с байтами, заменить на 00
; вроде бы больше нету .byte $0A, тогда просто поудалять эти японские коды
C - J - - 0x0031A9 02:B199: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - 0x0031AC 02:B19C: 20 27 9D  JSR sub_0x001D37_запись_в_буфер
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
    .byte $81, $C1, $82, $C2, $83, $C3, $84, $C4, $85, $C5, $86, $C6, $87
    .byte $09, $49, $0A, $4A, $0B, $4B, $0C, $4C, $0D, $4D, $0E, $4E, $0F
    .byte $89, $C9, $8A, $CA, $8B, $CB, $8C, $CC, $8D, $CD, $8E, $CE, $8F
    .byte $11, $51, $12, $52, $13, $53, $14, $54, $15, $55, $16, $56, $17
    .byte $91, $D1, $92, $D2, $93, $D3, $94, $D4, $95, $D5, $96, $D6, $97

tbl_B229:
    .byte $01
    .byte $04
    .byte $10
    .byte $40

tbl_B22D_X_мигающего_курсора:
    .byte $08, $10, $18, $20, $28,      $38, $40, $48, $50, $58
    .byte $88, $90, $98, $A0, $A8,      $B8, $C0, $C8

tbl_B241_lo_адрес_ppu_введенных_символов:
    .byte $2B, $2C, $2D, $2E, $2F,      $31, $32, $33, $34, $35
    .byte $6B, $6C, $6D, $6E, $6F,      $71, $72, $73

tbl_B255_байт_буквы_алфавита:
    .byte $0A, $31, $04, $13, $3B, $21, $02, $1A, $39, $06, $0F, $2A, $22
    .byte $1C, $09, $11, $34, $15, $23, $16, $01, $3C, $19, $28, $30, $27
    .byte $10, $20, $26, $03, $2F, $0D, $1D, $2B, $05, $2D, $3E, $0E, $24
    .byte $2E, $14, $0B, $07, $35, $1E, $00, $17, $37, $25, $38, $3D, $32
    .byte $08, $3A, $1B, $0C, $12, $36, $2C, $1F, $3F, $18, $29, $33, $FF

tbl_B296_экран_continue_1:
; верхняя горизонтальная линия главного окна
    .byte $05
    .word $20C3
    .byte $1B
    .byte $8E
; центральная горизонтальная линия главного окна
    .byte $05
    .word $21A3
    .byte $1B
    .byte $BA
; нижняя горизонтальная линия главного окна
    .byte $05
    .word $2323
    .byte $1B
    .byte $8E
; левая вертикальная линия главного окна
    .byte $04
    .word $20E2
    .byte $12
    .byte $8F
; правая вертикальная линия главного окна
    .byte $04
    .word $20FE
    .byte $12
    .byte $8F

    .byte $00
    .word off_B2C3_углы_окна_и_прочерки_для_символов_пароля

    .byte $00
    .word off_BCAF_фраза_пароль_над_символами_пароля
; левая вертикальная линия всплывающего окна с неверным паролем
    .byte $04
    .word $24E2
    .byte $08
    .byte $8F
; правая вертикальная линия всплывающего окна с неверным паролем
    .byte $04
    .word $24FE
    .byte $08
    .byte $8F

    .byte $00
    .word off_BCBE_фраза_неверный_пароль

    .byte $0F



off_B2C3_углы_окна_и_прочерки_для_символов_пароля:
; левый верхний угол
    .byte $01
    .word $20C2
    .byte $90
; правый верхний угол
    .byte $01
    .word $20DE
    .byte $91
; левый нижний угол
    .byte $01
    .word $2322
    .byte $92
; правый нижний угол
    .byte $01
    .word $233E
    .byte $93

    .byte $0B
    .word $212B
    .text "----- -----"

    .byte $49
    .word $216B
    .text "----- ---"



off_BCAF_фраза_пароль_над_символами_пароля:
    .byte $5D
    .word $2082
    .text "It's the Score Memo Shootout!"

off_BCBE_фраза_неверный_пароль:
    .byte $54
    .word $2547
    .text "Oops _ YOU MISSED!!"



tbl_B200_экран_continue_2_верный_пароль:
    .byte $00
    .word off_B201_фраза_верный_пароль
    .byte $0F

off_B201_фраза_верный_пароль:
    .byte $54
    .word $2546
    .text "It's in! GOOO~~~AL!!!"



tbl_B2ED_смещение_курсора_алфавита:
    .byte $00
    .byte $01     ; right
    .byte $FF     ; left
    .byte $00
    .byte $0D     ; down
    .byte $0E     ; down + right
    .byte $0C     ; down + left
    .byte $00
    .byte $F3     ; up
    .byte $F4     ; up + right
    .byte $F2     ; up + left
    .byte $00
    .byte $00
    .byte $00
    .byte $00
    .byte $00

tbl_B2FD:
- D - - - 0x00330D 02:B2FD: 40        .byte $40    ; <「>
- D - - - 0x00330E 02:B2FE: 01        .byte $01    ; <あ>
- D - - - 0x00330F 02:B2FF: 00        .byte $00
- D - - - 0x003310 02:B300: 50        .byte $50    ; <タ>
- D - - - 0x003311 02:B301: 48        .byte $48    ; <ク>
- D - - - 0x003312 02:B302: 01        .byte $01    ; <あ>
- D - - - 0x003313 02:B303: 00        .byte $00
- D - - - 0x003314 02:B304: 50        .byte $50    ; <タ>

tbl_B393_cutscene_coach_advice:
    .byte $00, $00, $00, $00, $00, $00
    .byte $01, $01, $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $02, $02, $02, $02, $02, $02, $02
    .byte $02, $02, $02, $02
    .byte $02, $02, $02, $02, $02, $02

tbl_B3B5_cutscene_half_time:
    .byte $00, $00, $00, $00, $00, $00
    .byte $04, $04, $04, $04, $04, $04
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00, $00, $00, $08
    .byte $08, $08, $00, $00
    .byte $00, $00, $00, $00, $00, $00

tbl_B3D7_cutscene_score_memo:
    .byte $00, $00, $00, $00, $00, $00
    .byte $02, $02, $02, $02, $02, $02
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00, $00, $00, $04
    .byte $04, $04, $00, $00
    .byte $00, $00, $00, $00, $00, $00

tbl_B3F9_cutscene_level_up:
    .byte $00, $00, $00, $00, $00, $00
    .byte $01, $01, $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $00, $00, $00, $00, $00, $00, $02
    .byte $02, $02, $00, $00
    .byte $00, $00, $00, $00, $00, $00

tbl_B41B_cutscene_team_before_match:
    .byte $00, $00, $00, $00, $00, $00
    .byte $01, $01, $01, $01, $01, $01
    .byte $00, $00, $00, $00
    .byte $02, $02, $02, $02, $02, $02, $02
    .byte $02, $02, $02, $02
    .byte $02, $02, $02, $02, $02, $02
    .byte $02, $02, $02, $02, $02, $02

tbl_B43D_экран_с_опциями_без_запасных:
; вертикальная полоска слева от имен игроков
- D - I - 0x00344D 02:B43D: 04        .byte $04
- D - I - 0x00344E 02:B43E: 84 20     .word $2082
- D - I - 0x003450 02:B440: 16        .byte $16
- D - I - 0x003451 02:B441: AA        .byte $AA
; вертикальная полоска справа от имен игроков
- D - I - 0x003452 02:B442: 04        .byte $04
- D - I - 0x003453 02:B443: 8D 20     .word $208F
- D - I - 0x003455 02:B445: 16        .byte $16
- D - I - 0x003456 02:B446: AB        .byte $AB

- D - I - 0x003457 02:B447: 00        .byte $00
- D - I - 0x003458 02:B448: 74 B4     .word off_B474_окно_основных_игроков_сан_паулу_нанкацу

- D - I - 0x00345A 02:B44A: 00        .byte $00
- D - I - 0x00345B 02:B44B: B3 B4     .word off_B4B3_опции_сан_паулу_нанкацу

- D - I - 0x00345D 02:B44D: 00        .byte $00
- D - I - 0x00345E 02:B44E: 53 B6     .word off_B653_миникарта
; закончить отрисовку
- D - I - 0x003460 02:B450: 0F        .byte $0F



tbl_B451_экран_с_опциями_с_запасными:
; вертикальная полоска слева от имен основных игроков
- D - I - 0x003461 02:B451: 04        .byte $04
- D - I - 0x003462 02:B452: 81 20     .word $2080
- D - I - 0x003464 02:B454: 16        .byte $16
- D - I - 0x003465 02:B455: AA        .byte $AA
; вертикальная полоска справа от имен основных игроков
- D - I - 0x003466 02:B456: 04        .byte $04
- D - I - 0x003467 02:B457: 8A 20     .word $208A
- D - I - 0x003469 02:B459: 16        .byte $16
- D - I - 0x00346A 02:B45A: AB        .byte $AB

- D - I - 0x00346F 02:B45F: 00        .byte $00
- D - I - 0x003470 02:B460: 83 B5     .word off_B583_опции_японии
; + смещение влево
- D - I - 0x003472 02:B462: 01        .byte $01
- D - I - 0x003473 02:B463: 53 B6     .word off_B653_миникарта
- D - I - 0x003475 02:B465: FB        .byte $FA

- D - I - 0x00346B 02:B45B: 01        .byte $00
- D - I - 0x00346C 02:B45C: 74 B4     .word off_B474_окно_основных_игроков_япония
; вертикальная полоска слева от имен запасных игроков
- D - I - 0x003476 02:B466: 04        .byte $04
- D - I - 0x003477 02:B467: 97 20     .word $2095
- D - I - 0x003479 02:B469: 16        .byte $16
- D - I - 0x00347A 02:B46A: AA        .byte $AA
; вертикальная полоска справа от имен запасных игроков
- D - I - 0x00347B 02:B46B: 04        .byte $04
- D - I - 0x00347C 02:B46C: 9E 20     .word $209F
- D - I - 0x00347E 02:B46E: 16        .byte $16
- D - I - 0x00347F 02:B46F: AB        .byte $AB

- D - I - 0x003480 02:B470: 00        .byte $00
- D - I - 0x003481 02:B471: A1 B6     .word off_B6A1_окно_запасных_игроков

- D - I - 0x003483 02:B473: 0F        .byte $0F



off_B474_окно_основных_игроков_сан_паулу_нанкацу:
; верхняя обводка
- D - I - 0x003488 02:B478: 0A        .byte $0E
- D - I - 0x003489 02:B479: 64 20     .word $2062
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
- D - I - 0x003496 02:B486: 44 23     .word $2342
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
- D - I - 0x0034A3 02:B493: A5 20     .word $20A3
- D - I - 0x0034A5 02:B495: 34        .byte $31
- D - I - 0x0034A6 02:B496: 00        .byte $00
- D - I - 0x0034A7 02:B497: 34        .byte $31
; цифры слева от игроков
- D - I - 0x0034A8 02:B498: 93        .byte $93
- D - I - 0x0034A9 02:B499: A6 20     .word $20A4
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
- D - I - 0x0034BF 02:B4AF: 25 23     .word $2323
- D - I - 0x0034C1 02:B4B1: 87        .byte $47
- D - I - 0x0034C2 02:B4B2: 8B        .byte $4B



off_B474_окно_основных_игроков_япония:
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



tbl_B4B3_опции_сан_паулу_нанкацу:
off_B4B3_опции_сан_паулу_нанкацу:
    .byte $0D
    .word $20B1
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D, $00
    
    .byte $0D
    .word $20D1
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $00

    .byte $0D
    .word $20F1
    .byte $AA
    .text " Formation"
    .byte $AB, $00
    
    .byte $0D
    .word $2111
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $00

    .byte $0D
    .word $2131
    .byte $AA
    .text " Defense  "
    .byte $AB, $00
    
    .byte $0D
    .word $2151
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $00

    .byte $0D
    .word $2171
    .byte $AA
    .text " Line-up  "
    .byte $AB, $00
    
    .byte $0D
    .word $2191
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $00
    
    .byte $0D
    .word $21B1
    .byte $AA
    .text " Status   "
    .byte $AB, $00
    
    .byte $0D
    .word $21D1
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $00
    
    .byte $0D
    .word $21F1
    .byte $AA
    .text " Done     "
    .byte $AB, $00
    
    .byte $0D
    .word $2211
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F, $00
    
    .byte $4D
    .word $2231
    .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00



tbl_B583_опции_японии:
off_B583_опции_японии:
    .byte $0B
    .word $20AB
    .byte $9C, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $A8, $9D, $AA
    
    .byte $0B
    .word $20CB
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $AA
; formation
    .byte $0B
    .word $20EB
    .byte $AA, $00, $80, $81, $82, $83, $84, $85, $86, $AB, $AA
    
    .byte $0B
    .word $210B
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $AA
    
    .byte $0B
    .word $212B
    .byte $AA
    .text " Defense"
    .byte $AB, $AA
    
    .byte $0B
    .word $214B
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $AA
    
    .byte $0B
    .word $216B
    .byte $AA
    .text " Line-up"
    .byte $AB, $AA
    
    .byte $0B
    .word $218B
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $AA
    
    .byte $0B
    .word $21AB
    .byte $AA
    .text " Status "
    .byte $AB, $AA
    
    .byte $0B
    .word $21CB
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB, $AA
    
    .byte $0B
    .word $21EB
    .byte $AA
    .text " Done   "
    .byte $AB, $AA
    
    .byte $0B
    .word $220B
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F, $AA
    
    .byte $4B
    .word $222B
    .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AA



off_B653_миникарта:
    .byte $0A
    .word $2292
    .byte $98, $AC, $AC, $AC, $99, $AC, $AC, $AC, $AC, $99

    .byte $0A
    .word $22B2
    .byte $98, $99, $A0, $A0, $AF, $A0, $A0, $A0, $98, $99

    .byte $0A
    .word $22D2
    .byte $A1, $AF, $A0, $A0, $A4, $A5, $A0, $A0, $AE, $A1

    .byte $0A
    .word $22F2
    .byte $A3, $AF, $A0, $A0, $A6, $A7, $A0, $A0, $AE, $A3

    .byte $0A
    .word $2312
    .byte $9A, $9B, $A0, $A0, $AF, $A0, $A0, $A0, $9A, $9B

    .byte $4A
    .word $2332
    .byte $9A, $AD, $AD, $AD, $9B, $AD, $AD, $AD, $AD, $9B



off_B6A1_окно_запасных_игроков:
; верхняя обводка
    .byte $0B
    .word $2075
    .byte $9C, $A8, $00, $42, $65, $6E, $63, $68, $00, $A8, $9D
; нижняя обводка
    .byte $4B
    .word $2355
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F



tbl_B6BB_название_твоей_команды_в_опциях:
    .word off_0000_сан_паулу
    .word off_0000_нанкацу
    .word off_0000_япония

off_0000_сан_паулу:
    .byte $49
    .word $2073
    .text "Sao Paulo"

off_0000_нанкацу:
    .byte $48
    .word $2073
    .text "Nankatsu"

off_0000_япония:
    .byte $45
    .word $2071
    .text "Japan"



tbl_B6EB_расстановка_сан_паулу_нанкацу:
    .byte $0C
    .word $20F2
    .byte $9C
    .text "Formation"
    .byte $A8, $9D

    .byte $0C
    .word $2112
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $2132
    .byte $AA
    .text " 4:3:3    "
    .byte $AB

    .byte $0C
    .word $2152
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $2172
    .byte $AA
    .text " 4:4:2    "
    .byte $AB

    .byte $0C
    .word $2192
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $21B2
    .byte $AA
    .text " 3:5:2    "
    .byte $AB

    .byte $0C
    .word $21D2
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $21F2
    .byte $AA
    .text " Brazil   "
    .byte $AB

    .byte $0C
    .word $2212
    .byte $AA
    .text "  tactics "
    .byte $AB

    .byte $4C
    .word $2232
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F



tbl_B790_защита_сан_паулу_нанкацу:
    .byte $0C
    .word $2132
    .byte $9C
    .text "Defense"
    .byte $A8, $A8, $A8, $9D

    .byte $0C
    .word $2152
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $2172
    .byte $AA
    .text " Normal   "
    .byte $AB

    .byte $0C
    .word $2192
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $21B2
    .byte $AA
    .text " Press    "
    .byte $AB

    .byte $0C
    .word $21D2
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $0C
    .word $21F2
    .byte $AA
    .text " Counter  "
    .byte $AB

    .byte $0C
    .word $2212
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AB

    .byte $4C
    .word $2232
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F



.export tbl_B791_расстановка_япония
tbl_B791_расстановка_япония:
; formation
    .byte $0A
    .word $20EC
    .byte $9C, $80, $81, $82, $83, $84, $85, $86, $A8, $9D
    
    .byte $0A
    .word $210C
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $212C
    .byte $AA
    .text " 4:3:3  "
    .byte $AB
    
    .byte $0A
    .word $214C
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $216C
    .byte $AA
    .text " 4:4:2  "
    .byte $AB
    
    .byte $0A
    .word $218C
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $21AC
    .byte $AA
    .text " 3:5:2  "
    .byte $AB
    
    .byte $0A
    .word $21CC
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $21EC
    .byte $AA
    .text " Brazil "
    .byte $AB
; tactics
    .byte $0A
    .word $220C
    .byte $AA, $00, $00, $87, $88, $89, $8A, $8B, $8C, $AB
    
    .byte $4A
    .word $222C
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F



.export tbl_B792_защита_япония
tbl_B792_защита_япония:
    .byte $0A
    .word $212C
    .byte $9C
    .text "Defense"
    .byte $A8, $9D
    
    .byte $0A
    .word $214C
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $216C
    .byte $AA
    .text " Normal "
    .byte $AB
    
    .byte $0A
    .word $218C
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $21AC
    .byte $AA
    .text " Press  "
    .byte $AB
    
    .byte $0A
    .word $21CC
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $0A
    .word $21EC
    .byte $AA
    .text " Counter"
    .byte $AB
    
    .byte $0A
    .word $220C
    .byte $AA, $00, $00, $00, $00, $00, $00, $00, $00, $AB
    
    .byte $4A
    .word $222C
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F



tbl_B823:
- D - - - 0x003833 02:B823: 1C        .byte $1C    ; <ふ>
- D - - - 0x003834 02:B824: 1D        .byte $1D    ; <へ>
- D - - - 0x003835 02:B825: 1E        .byte $1E    ; <ほ>
- D - - - 0x003836 02:B826: 1F        .byte $1F    ; <ま>
- D - - - 0x003837 02:B827: 30        .byte $30    ; <ゃ>
- D - - - 0x003838 02:B828: 31        .byte $31    ; <ゅ>
- D - - - 0x003839 02:B829: 32        .byte $32    ; <ょ>
- D - - - 0x00383A 02:B82A: 33        .byte $33    ; <0>
- D - - - 0x00383B 02:B82B: 34        .byte $34    ; <1>
- D - - - 0x00383C 02:B82C: 35        .byte $35    ; <2>

tbl_B82D_офсет_спрайтов_миникарты:
- D - - - 0x00383D 02:B82D: 00        .byte off_B831_4_3_3 - tbl_B831_спрайты_миникарты
- D - - - 0x00383E 02:B82E: 14        .byte off_B845_4_4_2 - tbl_B831_спрайты_миникарты
- D - - - 0x00383F 02:B82F: 28        .byte off_B859_3_5_2 - tbl_B831_спрайты_миникарты
- D - - - 0x003840 02:B830: 3C        .byte off_B86D_бразильская - tbl_B831_спрайты_миникарты



tbl_B831_спрайты_миникарты:
off_B831_4_3_3:
    .byte $A0        ; Y 2
    .byte $A0        ; X 2
    .byte $C8        ; Y 3
    .byte $A0        ; X 3
    .byte $B4        ; Y 4
    .byte $A0        ; X Y
    .byte $B4        ; Y 5
    .byte $98        ; X 5
    .byte $A8        ; Y 6
    .byte $B0        ; X 6
    .byte $C8        ; Y 7
    .byte $C0        ; X 7
    .byte $C0        ; Y 8
    .byte $B0        ; X 8
    .byte $B4        ; Y 9
    .byte $C0        ; X 9
    .byte $B4        ; Y 10
    .byte $B0        ; X 10
    .byte $A0        ; Y 11
    .byte $C0        ; X 11

off_B845_4_4_2:
    .byte $A0        ; Y 2
    .byte $98        ; X 2
    .byte $C8        ; Y 3
    .byte $98        ; X 3
    .byte $B4        ; Y 4
    .byte $98        ; X Y
    .byte $B4        ; Y 5
    .byte $90        ; X 5
    .byte $A4        ; Y 6
    .byte $B0        ; X 6
    .byte $C4        ; Y 7
    .byte $B0        ; X 7
    .byte $B8        ; Y 8
    .byte $A8        ; X 8
    .byte $BC        ; Y 9
    .byte $C0        ; X 9
    .byte $B0        ; Y 10
    .byte $A8        ; X 10
    .byte $AC        ; Y 11
    .byte $C0        ; X 11

off_B859_3_5_2:
    .byte $A0        ; Y 2
    .byte $98        ; X 2
    .byte $C8        ; Y 3
    .byte $98        ; X 3
    .byte $B4        ; Y 4
    .byte $98        ; X Y
    .byte $AC        ; Y 5
    .byte $A8        ; X 5
    .byte $A4        ; Y 6
    .byte $B0        ; X 6
    .byte $C4        ; Y 7
    .byte $B0        ; X 7
    .byte $BC        ; Y 8
    .byte $A8        ; X 8
    .byte $BC        ; Y 9
    .byte $C0        ; X 9
    .byte $B4        ; Y 10
    .byte $B0        ; X 10
    .byte $AC        ; Y 11
    .byte $C0        ; X 11

off_B86D_бразильская:
    .byte $A0        ; Y 2
    .byte $98        ; X 2
    .byte $C8        ; Y 3
    .byte $98        ; X 3
    .byte $B0        ; Y 4
    .byte $98        ; X Y
    .byte $B8        ; Y 5
    .byte $98        ; X 5
    .byte $B4        ; Y 6
    .byte $A8        ; X 6
    .byte $C8        ; Y 7
    .byte $C0        ; X 7
    .byte $C0        ; Y 8
    .byte $A8        ; X 8
    .byte $B4        ; Y 9
    .byte $C0        ; X 9
    .byte $AC        ; Y 10
    .byte $B8        ; X 10
    .byte $A8        ; Y 11
    .byte $A8        ; X 11



tbl_B881_экран_со_списком_игроков:
; верхняя синяя полоска
    .byte $05
    .word $2062
    .byte $1C
    .byte $8E
; нижняя синяя полоска
    .byte $05
    .word $2362
    .byte $1C
    .byte $8E
; левая синяя полоска
    .byte $04
    .word $2081
    .byte $17
    .byte $8F
; правая синяя полоска
    .byte $04
    .word $209E
    .byte $17
    .byte $8F

    .byte $00
    .word off_B899_углы

    .byte $0F

off_B899_углы:
; левый верхний угол
    .byte $01
    .word $2061
    .byte $90
; правый верхний угол
    .byte $01
    .word $207E
    .byte $91
; левый нижний угол
    .byte $01
    .word $2361
    .byte $92
; правый нижний угол
    .byte $41
    .word $237E
    .byte $93



tbl_B8A9_экран_статов_полевого:
; очистить nametable
    .byte $0D

    .byte $00
    .word off_BF4E_названия_действий_полевого
    
    .byte $0E
    .word off_B8B4_оформление_окон



tbl_B8B0_экран_статов_кипера:
; очистить nametable
    .byte $0D

    .byte $00
    .word off_BFBB_названия_действий_кипера



off_B8B4_оформление_окон:
; это общая подпрограмма, используется и для кипера тоже
; левая синяя полоска
    .byte $04
    .word $2081
    .byte $07
    .byte $8F
; правая синяя полоска
    .byte $04
    .word $208E
    .byte $07
    .byte $8F
; нижняя синяя полоска
    .byte $05
    .word $2162
    .byte $0C
    .byte $8E
; левая полоска high ball
    .byte $04
    .word $2090
    .byte $0A
    .byte $AA
; правая полоска high ball
    .byte $04
    .word $209E
    .byte $0A
    .byte $AB
; нижняя полоска high ball
    .byte $05
    .word $21D1
    .byte $0D
    .byte $A9
; левая полоска stats
    .byte $04
    .word $21E1
    .byte $0C
    .byte $AA
; правая полоска stats
    .byte $04
    .word $21EE
    .byte $0C
    .byte $AB
; нижняя полоска stats
    .byte $05
    .word $2362
    .byte $0C
    .byte $A9
; левая полоска low ball
    .byte $04
    .word $2230
    .byte $0A
    .byte $AA
; правая полоска low ball
    .byte $04
    .word $223E
    .byte $0A
    .byte $AB
; нижняя полоска low ball
    .byte $05
    .word $2371
    .byte $0D
    .byte $A9
; левая полоска special
    .byte $04
    .word $2501
    .byte $13
    .byte $AA
; правая полоска special
    .byte $04
    .word $251E
    .byte $13
    .byte $AB
; верхняя полоска special по центру
    .byte $05
    .word $24EC
    .byte $0B
    .byte $A8
    
    .byte $00
    .word off_BF15_оформление_окон_и_текст

    .byte $0F


tbl_B967_тайлы_закрывающей_полоски_special:
    .byte $9E, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9
    .byte $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $A9, $9F


tbl_B981_позиция_числовых_статов_полевого:
; dribble
    .byte $03
    .word $220B
; pass
    .byte $02
    .word $224B
; shoot
    .byte $01
    .word $228B
; tackle
    .byte $05
    .word $22CB
; block
    .byte $04
    .word $230B
; intercept
    .byte $06
    .word $234B
; trap high
    .byte $11
    .word $20BB
; shoot high
    .byte $0F
    .word $20FB
; through high
    .byte $12
    .word $213B
; clearance high
    .byte $14
    .word $217B
; interfere high
    .byte $15
    .word $21BB
; trap low
    .byte $09
    .word $225B
; shoot low
    .byte $07
    .word $229B
; through low
    .byte $0A
    .word $22DB
; clearance low
    .byte $0C
    .word $231B
; interfere low
    .byte $0D
    .word $235B

    .byte $FF



tbl_B9B2_позиция_числовых_статов_кипера:
; pass
    .byte $18
    .word $220B
; catch
    .byte $19
    .word $224B
; punch
    .byte $1A
    .word $228B
; stop dribble
    .byte $1C
    .word $22EB
; stop shot
    .byte $1B
    .word $234B
; dive high
    .byte $1E
    .word $20BB
; dive low
    .byte $1D
    .word $225B

    .byte $FF



tbl_B9C8_количество_замен_для_японии:
    .byte $45
    .word $224D
    .text "Subs:"

tbl_B9D3_смещение_указателя_таблицы_исходя_из_команды:
tbl__B9D3:
    .byte tbl_sao_paulo_B9D6 - tbl__B9D3 - $03
    .byte tbl_nankatsu__B9D6 - tbl__B9D3 - $03
    .byte tbl_japan_____B9D6 - tbl__B9D3 - $03

tbl_B9D6_указатели_опыта_игрока:
; AND 0F = указатель на адрес адрес опыта в оперативке
; AND F0 = указатель на множитель опыта из другой таблицы
tbl_sao_paulo_B9D6:
    .byte $00       ; unused клон
    .byte $00       ; Tsubasa
    .byte $01       ; Renato
    .byte $12       ; Lima
    .byte $12       ; Marini
    .byte $03       ; Amaral
    .byte $04       ; Dotor
    .byte $05       ; Batista
    .byte $06       ; Tahamata
    .byte $07       ; Babington
    .byte $08       ; Gil
    .byte $09       ; Platon

tbl_nankatsu__B9D6:
    .byte $00       ; unused клон
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; Urabe
    .byte $11       ; Kishida
    .byte $11       ; Nakayama
    .byte $02       ; Morisaki
    .byte $03       ; Takasugi
    .byte $04       ; Misaki
    .byte $05       ; Izawa
    .byte $06       ; Taki
    .byte $07       ; Ishizaki
    .byte $08       ; Nitta
    .byte $09       ; Kisugi

tbl_japan_____B9D6:
    .byte $00       ; unused клон
    .byte $00       ; Tsubasa
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $00       ; unused
    .byte $21       ; Morisaki
    .byte $21       ; Takasugi
    .byte $02       ; Misaki
    .byte $21       ; Izawa
    .byte $21       ; Taki
    .byte $03       ; Ishizaki
    .byte $24       ; Nitta
    .byte $21       ; Kisugi
    .byte $24       ; Masao
    .byte $24       ; Kazuo
    .byte $35       ; Sano
    .byte $06       ; Hyuga
    .byte $35       ; Soda
    .byte $24       ; Jito
    .byte $07       ; Matsuyama
    .byte $35       ; Sorimachi
    .byte $35       ; Sawada
    .byte $24       ; Misugi
    .byte $08       ; Wakabayashi
    .byte $09       ; Wakashimazu



tbl_BA1C_множитель_опыта:
; +00
    .byte $30       ; забить гол
    .byte $0C       ; обвести игрока/игрок не смог перехватить твой пас/удар
    .byte $04       ; выиграть борьбу на чужой штрафной
    .byte $08       ; засейвить кипером
; +10
    .byte $20       ; забить гол
    .byte $08       ; обвести игрока/игрок не смог перехватить твой пас/удар
    .byte $02       ; выиграть борьбу на чужой штрафной
    .byte $06       ; засейвить кипером
; +20
    .byte $18       ; забить гол
    .byte $04       ; обвести игрока/игрок не смог перехватить твой пас/удар
    .byte $02       ; выиграть борьбу на чужой штрафной
    .byte $04       ; засейвить кипером
; +30
    .byte $1A       ; забить гол
    .byte $06       ; обвести игрока/игрок не смог перехватить твой пас/удар
    .byte $02       ; выиграть борьбу на чужой штрафной
    .byte $04       ; засейвить кипером



tbl_BA4C_опыт_за_победу_над_командой:
    .word $0052     ; 00
    .word $0054     ; 01
    .word $0056     ; 02
    .word $0058     ; 03
    .word $005A     ; 04
    .word $0000     ; 05
    
    .word $006D     ; 06
    .word $007B     ; 07
    .word $008E     ; 08
    .word $009A     ; 09
    .word $00A0     ; 0A
    .word $0000     ; 0B
    
    .word $00B1     ; 0C
    .word $00BD     ; 0D
    .word $00D5     ; 0E
    .word $0000     ; 0F
    
    .word $00C8     ; 10
    .word $00E7     ; 11
    .word $00EA     ; 12
    .word $00ED     ; 13
    .word $00F0     ; 14
    .word $00F2     ; 15
    .word $00F2     ; 16
    
    .word $00F5     ; 17
    .word $00F8     ; 18
    .word $00FE     ; 19
    .word $010A     ; 1A
    
    .word $010A     ; 1B
    .word $010D     ; 1C
    .word $0110     ; 1D
    .word $0137     ; 1E
    .word $013D     ; 1F
    .word $0145     ; 20



tbl_BA90_опыт_для_достижения_уровня:
; предположительно количество опыта для набора уровня
    .word $0000     ; 1
    .word $0060     ; 2
    .word $00D0     ; 3
    .word $0150     ; 4
    .word $0210     ; 5
    .word $0300     ; 6
    .word $03F8     ; 7
    .word $0500     ; 8
    .word $0628     ; 9
    .word $0780     ; 10
    .word $0900     ; 11
    .word $0A90     ; 12
    .word $0C30     ; 13
    .word $0DE0     ; 14
    .word $0FA0     ; 15
    .word $1170     ; 16
    .word $1350     ; 17
    .word $1550     ; 18
    .word $1770     ; 19
    .word $19B0     ; 20
    .word $1C00     ; 21
    .word $1E60     ; 22
    .word $20D0     ; 23
    .word $2348     ; 24
    .word $25C8     ; 25
    .word $2850     ; 26
    .word $2AE0     ; 27
    .word $2D78     ; 28
    .word $3018     ; 29
    .word $32C8     ; 30
    .word $3588     ; 31
    .word $3858     ; 32
    .word $3B30     ; 33
    .word $3E10     ; 34
    .word $40F8     ; 35
    .word $4440     ; 36
    .word $4790     ; 37
    .word $4AE8     ; 38
    .word $4E48     ; 39
    .word $51B0     ; 40
    .word $5520     ; 41
    .word $5900     ; 42
    .word $5D20     ; 43
    .word $6150     ; 44
    .word $6590     ; 45
    .word $69E0     ; 46
    .word $6E40     ; 47
    .word $7300     ; 48
    .word $77E0     ; 49
    .word $7CD0     ; 50
    .word $8200     ; 51
    .word $8780     ; 52
    .word $8D80     ; 53
    .word $93E0     ; 54
    .word $9AD0     ; 55
    .word $A1E0     ; 56
    .word $A9C0     ; 57
    .word $B1C0     ; 58
    .word $B9D0     ; 59
    .word $C204     ; 60
    .word $CB80     ; 61
    .word $D7A0     ; 62
    .word $E800     ; 63
    .word $FFFF     ; 64

tbl_BB10_нанкацу:
- D - I - 0x003B20 02:BB10: 0A        .byte $0A    ; <こ>
- D - I - 0x003B21 02:BB11: 04        .byte $04    ; <え>
- D - I - 0x003B22 02:BB12: 02        .byte $02    ; <い>
- D - I - 0x003B23 02:BB13: 06        .byte $06    ; <か>
- D - I - 0x003B24 02:BB14: 00        .byte $00
- D - I - 0x003B25 02:BB15: 10        .byte $10    ; <た>
- D - I - 0x003B26 02:BB16: 12        .byte $12    ; <つ>
- D - I - 0x003B27 02:BB17: 08        .byte $08    ; <く>
- D - I - 0x003B28 02:BB18: 0E        .byte $0E    ; <せ>
- D - I - 0x003B29 02:BB19: 0C        .byte $0C    ; <し>

tbl_BB1A_сан_паулу_2:
- D - I - 0x003B2A 02:BB1A: 08        .byte $08    ; <く>
- D - I - 0x003B2B 02:BB1B: 04        .byte $04    ; <え>
- D - I - 0x003B2C 02:BB1C: 02        .byte $02    ; <い>
- D - I - 0x003B2D 02:BB1D: 06        .byte $06    ; <か>
- D - I - 0x003B2E 02:BB1E: 0E        .byte $0E    ; <せ>
- D - I - 0x003B2F 02:BB1F: 00        .byte $00
- D - I - 0x003B30 02:BB20: 12        .byte $12    ; <つ>
- D - I - 0x003B31 02:BB21: 10        .byte $10    ; <た>
- D - I - 0x003B32 02:BB22: 0A        .byte $0A    ; <こ>
- D - I - 0x003B33 02:BB23: 0C        .byte $0C    ; <し>

tbl_BB24_япония:
- D - I - 0x003B34 02:BB24: 00        .byte $00
- D - I - 0x003B35 02:BB25: 04        .byte $04    ; <え>
- D - I - 0x003B36 02:BB26: 00        .byte $00
- D - I - 0x003B37 02:BB27: 08        .byte $08    ; <く>
- D - I - 0x003B38 02:BB28: 0E        .byte $0E    ; <せ>
- D - I - 0x003B39 02:BB29: 06        .byte $06    ; <か>
- D - I - 0x003B3A 02:BB2A: 00        .byte $00
- D - I - 0x003B3B 02:BB2B: 0E        .byte $0E    ; <せ>
- D - I - 0x003B3C 02:BB2C: 02        .byte $02    ; <い>
- D - I - 0x003B3D 02:BB2D: 02        .byte $02    ; <い>



tbl_BB2E_список_спешалов_игроков:
; первый байт это номер игрока, код ищет по таблице игроков со спешалами
    .byte $01
    .word off_BB55_цубаса

    .byte $11
    .word off_BB7E_мисаки

    .byte $14
    .word off_BB93_ишизаки

    .byte $15
    .word off_BB99_нитта

    .byte $17
    .word off_BBA4_масао

    .byte $18
    .word off_BBC8_казуо

    .byte $19
    .word off_BBEB_сано

    .byte $1A
    .word off_BBEC_хюга

    .byte $1B
    .word off_BC0B_сода

    .byte $1C
    .word off_BC1B_джито

    .byte $1D
    .word off_BC30_мацуяма

    .byte $1F
    .word off_BC36_савада

    .byte $20
    .word off_BC3C_мисуги

    .byte $22
    .word off_BC42_вакашимазу



off_BB55_цубаса:
    .byte $00       ; номер матча, если текущий меньше значит спешала еще нету
    .byte $9D       ; drive shot
    .byte $00
    .byte $03
    .byte $06       ; номер прыжка в начале банка 24
    
    .byte $00
    .byte $A8       ; overhead kick
    .byte $00
    .byte $0E
    .byte $06
    
    .byte $FE
    .byte $9E       ; drive overhead
    .byte $00
    .byte $04
    .byte $06
    
    .byte $10
    .byte $A3       ; twin shot
    .byte $00
    .byte $09
    .byte $06
    
    .byte $FD
    .byte $AC       ; cyclone
    .byte $00
    .byte $12
    .byte $06
    
    .byte $00
    .byte $BE       ; heel lift
    .byte $02
    .byte $01
    .byte $06
    
    .byte $00
    .byte $C5       ; drive pass
    .byte $01
    .byte $01
    .byte $06
    
    .byte $10
    .byte $C9       ; golden combo
    .byte $03
    .byte $01
    .byte $06
    
    .byte $FF



off_BB7E_мисаки:
    .byte $00
    .byte $A8       ; overhead kick
    .byte $00
    .byte $0E
    .byte $06
    
    .byte $10
    .byte $A3       ; twin shot
    .byte $00
    .byte $09
    .byte $06
    
    .byte $00
    .byte $AA       ; jumping volley
    .byte $00
    .byte $10
    .byte $06
    
    .byte $10
    .byte $C9       ; golden combo
    .byte $03
    .byte $01
    .byte $06
    
    .byte $FF



off_BB93_ишизаки:
    .byte $00
    .byte $CE       ; face block
    .byte $00
    .byte $01
    .byte $07
    
    .byte $FF



off_BB99_нитта:
    .byte $00
    .byte $9F       ; falcon shot
    .byte $00
    .byte $05
    .byte $06
    
    .byte $00
    .byte $A0       ; falcon volley
    .byte $00
    .byte $06
    .byte $06
    
    .byte $FF



off_BBA4_масао:
    .byte $00
    .byte $A2       ; skylb hurricane
    .byte $00
    .byte $08
    .byte $06
    
    .byte $00
    .byte $A4       ; skylab twin shot
    .byte $00
    .byte $0A
    .byte $06
    
    .byte $00
    .byte $A3       ; twin shot
    .byte $00
    .byte $09
    .byte $06
    
    .byte $00
    .byte $CB       ; gemini attack
    .byte $03
    .byte $03
    .byte $06
    
    .byte $00
    .byte $D2       ; skylab tackle
    .byte $01
    .byte $01       ; у другого брата 03
    .byte $07
    
    .byte $00
    .byte $CF       ; skylab block
    .byte $00
    .byte $02
    .byte $07
    
    .byte $00
    .byte $D8       ; skylab pass cut
    .byte $02
    .byte $01
    .byte $07
    
    .byte $FF



off_BBC8_казуо:
    .byte $00
    .byte $A2       ; skylb hurricane
    .byte $00
    .byte $08
    .byte $06
             
    .byte $00
    .byte $A4       ; skylab twin shot
    .byte $00
    .byte $0A
    .byte $06
             
    .byte $00
    .byte $A3       ; twin shot
    .byte $00
    .byte $09
    .byte $06
             
    .byte $00
    .byte $CB       ; gemini attack
    .byte $03
    .byte $03
    .byte $06
             
    .byte $00
    .byte $D2       ; skylab tackle
    .byte $01
    .byte $03       ; у другого брата 01
    .byte $07
             
    .byte $00
    .byte $CF       ; skylab block
    .byte $00
    .byte $02
    .byte $07
             
    .byte $00
    .byte $D8       ; skylab pass cut
    .byte $02
    .byte $01
    .byte $07
    
    .byte $FF





off_BBEB_сано:
    .byte $00
    .byte $A8       ; overhead kick
    .byte $00
    .byte $0E
    .byte $06
    
    .byte $FF





off_BBEC_хюга:
    .byte $00
    .byte $A6       ; tiger shot
    .byte $00
    .byte $0C
    .byte $06
    
    .byte $00
    .byte $A7       ; neo-tiger shot
    .byte $00
    .byte $0D
    .byte $06
    
    .byte $00
    .byte $A8       ; overhead kick
    .byte $00
    .byte $0E
    .byte $06
    
    .byte $00
    .byte $BF       ; force dribble
    .byte $02
    .byte $02
    .byte $06
    
    .byte $00
    .byte $CA       ; toho combo
    .byte $03
    .byte $02
    .byte $06
    
    .byte $00
    .byte $D5       ; tiger tackle
    .byte $01
    .byte $04
    .byte $07
    
    .byte $FF



off_BC0B_сода:
    .byte $00
    .byte $A1       ; razor shot
    .byte $00
    .byte $07
    .byte $06
    
    .byte $00
    .byte $D3       ; razor tackle
    .byte $01
    .byte $02
    .byte $07
    
    .byte $00
    .byte $C6       ; razor pass
    .byte $01
    .byte $02
    .byte $06
    
    .byte $FF



off_BC1B_джито:
    .byte $00
    .byte $AD       ; sano combo
    .byte $00
    .byte $13
    .byte $06
    
    .byte $00
    .byte $BF       ; force dribble
    .byte $02
    .byte $02
    .byte $06
    
    .byte $00
    .byte $D4       ; power tackle
    .byte $01
    .byte $03
    .byte $07
    
    .byte $00
    .byte $D0       ; power block
    .byte $00
    .byte $03
    .byte $07
    
    .byte $FF



off_BC30_мацуяма:
    .byte $00
    .byte $A5       ; eagle shot
    .byte $00
    .byte $0B
    .byte $06
    
    .byte $00
    .byte $A8       ; overhead kick
    .byte $00
    .byte $0E
    .byte $06
    
    .byte $FF



off_BC36_савада:
    .byte $00
    .byte $CA       ; toho combo
    .byte $03
    .byte $02
    .byte $06
    
    .byte $FF



off_BC3C_мисуги:
    .byte $00
    .byte $A9       ; hyper overhead
    .byte $00
    .byte $0F
    .byte $06
    
    .byte $FF



off_BC42_вакашимазу:
    .byte $00
    .byte $E5       ; triangle jump
    .byte $02
    .byte $00
    .byte $08
    
    .byte $FF



tbl_BC48_адрес_ppu_спешалов:
    .word $2544
    .word $2584
    .word $25C4
    .word $2604
    .word $2644
    .word $2684
    .word $26C4
    .word $2704

tbl_BC58_адрес_ppu_для_имен_игроков:
    .word $2263
    .word $226C
    .word $2275
    .word $22A3
    .word $22AC
    .word $22B5
    .word $22E3
    .word $22EC
    .word $22F5
    .word $2323
    .word $232C

tbl_BC6E_символы_пароля:
; читается из 3х мест
; 5 строк по 13 символов
    .text "ABCDEFGHIJKLM"
    .text "NOPQRSTUVWXYZ"
    .text "abcdefghijklm"
    .text "nopqrstuvwxyz"
    .text "0123456789!?"
; последний символ GO
    .byte $D0



off_BF15_оформление_окон_и_текст:
; левый верхний угол синего окна
    .byte $02
    .word $2061
    .byte $90, $8E
; правый верхний угол синего окна и верхняя полоска high ball
    .byte $12
    .word $206D
    .byte $8E, $91, $00, $9C, $A8
    .text " High ball "
    .byte $A8, $9D
; левый нижний синего окна
    .byte $01
    .word $2161
    .byte $92
; правый нижний синего окна
    .byte $01
    .word $216E
    .byte $93
; текст level
    .byte $05
    .word $20A3
    .text "Level"
; текст mastaminax
    .byte $07
    .word $20E3
    .text "Stamina"
; текст / для разделителя текущей и максимальной энергии
    .byte $01
    .word $2129
    .text "/"
; верхняя полоска stats и нижняя полоска high ball
    .byte $10
    .word $21C1
    .byte $9C, $A8, $A8
    .text " Stats "
    .byte $A8, $A8, $A8, $9D, $00, $9E
; правый нижний угол high ball
    .byte $01
    .word $21DE
    .byte $9F
; верхняя полоска low ball
    .byte $0F
    .word $2210
    .byte $9C, $A8
    .text " Low ball "
    .byte $A8, $A8, $9D
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

    .byte $0A
    .word $24E1
    .byte $9C
    .byte $A8
    .text " Special"

    .byte $05
    .word $24F8
    .text "Cost "
; читерный кусок синей полоски слева (чтобы окно special сливалось с основным экраном)
    .byte $01
    .word $24C1
    .byte $8F
; читерный кусок синей полоски и кусок белой полоски в центре
    .byte $03
    .word $24CE
    .byte $8F, $00, $AA
; читерный кусок белой полоски справа
    .byte $01
    .word $24DE
    .byte $AB
; полоска до конца окна после cost
    .byte $42
    .word $24FD
    .byte $A8, $9D



off_BF4E_названия_действий_полевого:
; stats
    .byte $07
    .word $2202
    .text "Dribble"
    
    .byte $04
    .word $2242
    .text "Pass"
    
    .byte $05
    .word $2282
    .text "Shoot"
    
    .byte $06
    .word $22C2
    .text "Tackle"
    
    .byte $05
    .word $2302
    .text "Block"
    
    .byte $08
    .word $2342
    .text "Pass cut"
; high ball
    .byte $04
    .word $20B1
    .text "Trap"
    
    .byte $05
    .word $20F1
    .text "Shoot"
    
    .byte $07
    .word $2131
    .text "Through"
    
    .byte $08
    .word $2171
    .text "Clearing"
    
    .byte $09
    .word $21B1
    .text "Interfere"
; low ball
    .byte $04
    .word $2251
    .text "Trap"
    
    .byte $05
    .word $2291
    .text "Shoot"
    
    .byte $07
    .word $22D1
    .text "Through"
    
    .byte $08
    .word $2311
    .text "Clearing"
    
    .byte $49
    .word $2351
    .text "Interfere"



off_BFBB_названия_действий_кипера:
    .byte $04
    .word $2202
    .text "Pass"
    
    .byte $05
    .word $2242
    .text "Catch"
    
    .byte $05
    .word $2282
    .text "Punch"
    
    .byte $04
    .word $22C2
    .text "Stop"
    
    .byte $07
    .word $22E3
    .text "dribble"
    
    .byte $04
    .word $2322
    .text "Stop"
    
    .byte $04
    .word $2343
    .text "shot"
    
    .byte $04
    .word $20B1
    .text "Dive"
    
    .byte $44
    .word $2251
    .text "Dive"
