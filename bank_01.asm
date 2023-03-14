.segment "BANK_01"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000



.export sub_0x00211D_экран_continue
.export sub_0x0023AB
.export sub_0x0024FB_VS_экран_и_повышение_уровня
.export sub_0x00265C
.export loc_0x0026E2_перерыв
.export sub_0x002F89_начислить_опыт_за_победу
.export sub_0x002F9A_начислить_опыт_за_поражение
.export sub_0x002FD2_начислить_опыт
.export sub_0x003060
.export tbl_B791_расстановка_япония
.export tbl_B792_защита_япония



sub_A01E_генерация_пароля:
C - - - - - 0x00202E 01:A01E: AD 48 04  LDA ram_флаг_циклона
C - - - - - 0x002031 01:A021: 4A        LSR
C - - - - - 0x002032 01:A022: A5 26     LDA ram_матч
C - - - - - 0x002034 01:A024: 2A        ROL
C - - - - - 0x002035 01:A025: 18        CLC
C - - - - - 0x002036 01:A026: AE 46 04  LDX ram_флаг_драйв_оверхеда
C - - - - - 0x002039 01:A029: E0 05     CPX #$05
C - - - - - 0x00203B 01:A02B: 2A        ROL
C - - - - - 0x00203C 01:A02C: 8D 60 06  STA ram_0660
C - - - - - 0x00203F 01:A02F: AD 4D 04  LDA ram_флаг_мисуги_0_хп
C - - - - - 0x002042 01:A032: 6A        ROR
C - - - - - 0x002043 01:A033: A5 E1     LDA ram_рандом_1
C - - - - - 0x002045 01:A035: 6A        ROR
C - - - - - 0x002046 01:A036: 29 B0     AND #$B0
C - - - - - 0x002048 01:A038: 8D 61 06  STA ram_0661
C - - - - - 0x00204B 01:A03B: A9 00     LDA #$00
bra_A03D_loop:
C - - - - - 0x00204D 01:A03D: 48        PHA
C - - - - - 0x00204E 01:A03E: 20 16 B0  JSR sub_B016_чтение_опыта_из_оперативки
C - - - - - 0x002051 01:A041: 84 EC     STY ram_00EC
C - - - - - 0x002053 01:A043: 86 ED     STX ram_00ED
C - - - - - 0x002055 01:A045: 20 2E B0  JSR sub_B02E
C - - - - - 0x002058 01:A048: 85 E7     STA ram_00E7
C - - - - - 0x00205A 01:A04A: 20 45 B0  JSR sub_B045
C - - - - - 0x00205D 01:A04D: 84 EA     STY ram_00EA
C - - - - - 0x00205F 01:A04F: 86 EB     STX ram_00EB
C - - - - - 0x002061 01:A051: A5 EC     LDA ram_00EC
C - - - - - 0x002063 01:A053: 38        SEC
C - - - - - 0x002064 01:A054: E5 EA     SBC ram_00EA
C - - - - - 0x002066 01:A056: 85 EC     STA ram_00EC
C - - - - - 0x002068 01:A058: A5 ED     LDA ram_00ED
C - - - - - 0x00206A 01:A05A: E5 EB     SBC ram_00EB
C - - - - - 0x00206C 01:A05C: 85 ED     STA ram_00ED
C - - - - - 0x00206E 01:A05E: A5 E7     LDA ram_00E7
C - - - - - 0x002070 01:A060: 18        CLC
C - - - - - 0x002071 01:A061: 69 01     ADC #$01
C - - - - - 0x002073 01:A063: 20 45 B0  JSR sub_B045
C - - - - - 0x002076 01:A066: 98        TYA
C - - - - - 0x002077 01:A067: 38        SEC
C - - - - - 0x002078 01:A068: E5 EA     SBC ram_00EA
C - - - - - 0x00207A 01:A06A: 85 EA     STA ram_00EA
C - - - - - 0x00207C 01:A06C: 8A        TXA
C - - - - - 0x00207D 01:A06D: E5 EB     SBC ram_00EB
C - - - - - 0x00207F 01:A06F: 85 EB     STA ram_00EB
C - - - - - 0x002081 01:A071: 46 EB     LSR ram_00EB
C - - - - - 0x002083 01:A073: 66 EA     ROR ram_00EA
C - - - - - 0x002085 01:A075: 46 EB     LSR ram_00EB
C - - - - - 0x002087 01:A077: 66 EA     ROR ram_00EA
C - - - - - 0x002089 01:A079: 20 0C 9E  JSR sub_0x001E1C
C - - - - - 0x00208C 01:A07C: 68        PLA
C - - - - - 0x00208D 01:A07D: AA        TAX
C - - - - - 0x00208E 01:A07E: A5 E7     LDA ram_00E7
C - - - - - 0x002090 01:A080: 0A        ASL
C - - - - - 0x002091 01:A081: 0A        ASL
C - - - - - 0x002092 01:A082: 05 EC     ORA ram_00EC
C - - - - - 0x002094 01:A084: 9D 56 06  STA ram_0656,X
C - - - - - 0x002097 01:A087: E8        INX
C - - - - - 0x002098 01:A088: 8A        TXA
C - - - - - 0x002099 01:A089: C9 0A     CMP #$0A
C - - - - - 0x00209B 01:A08B: D0 B0     BNE bra_A03D_loop
C - - - - - 0x00209D 01:A08D: A5 E2     LDA ram_рандом_2
C - - - - - 0x00209F 01:A08F: 29 F0     AND #$F0
C - - - - - 0x0020A1 01:A091: 8D 63 06  STA ram_0663
C - - - - - 0x0020A4 01:A094: 4A        LSR
C - - - - - 0x0020A5 01:A095: 4A        LSR
C - - - - - 0x0020A6 01:A096: 4A        LSR
C - - - - - 0x0020A7 01:A097: 4A        LSR
C - - - - - 0x0020A8 01:A098: 0D 61 06  ORA ram_0661
C - - - - - 0x0020AB 01:A09B: 85 EB     STA ram_00EB
C - - - - - 0x0020AD 01:A09D: 20 02 A4  JSR sub_A402
C - - - - - 0x0020B0 01:A0A0: A5 EC     LDA ram_00EC
C - - - - - 0x0020B2 01:A0A2: 8D 62 06  STA ram_0662
C - - - - - 0x0020B5 01:A0A5: A5 ED     LDA ram_00ED
C - - - - - 0x0020B7 01:A0A7: 29 0F     AND #$0F
C - - - - - 0x0020B9 01:A0A9: 0D 61 06  ORA ram_0661
C - - - - - 0x0020BC 01:A0AC: 8D 61 06  STA ram_0661
C - - - - - 0x0020BF 01:A0AF: A9 00     LDA #$00
C - - - - - 0x0020C1 01:A0B1: 85 ED     STA ram_00ED
bra_A0B3_loop:
C - - - - - 0x0020C3 01:A0B3: A6 ED     LDX ram_00ED
C - - - - - 0x0020C5 01:A0B5: 20 38 A4  JSR sub_A438
C - - - - - 0x0020C8 01:A0B8: A2 FF     LDX #$FF
bra_A0BA_loop:
C - - - - - 0x0020CA 01:A0BA: E8        INX
C - - - - - 0x0020CB 01:A0BB: DD 55 B2  CMP tbl_B255_байт_буквы_алфавита,X
C - - - - - 0x0020CE 01:A0BE: D0 FA     BNE bra_A0BA_loop
C - - - - - 0x0020D0 01:A0C0: A5 ED     LDA ram_00ED
C - - - - - 0x0020D2 01:A0C2: C9 0F     CMP #$0F
C - - - - - 0x0020D4 01:A0C4: B0 09     BCS bra_A0CF
C - - - - - 0x0020D6 01:A0C6: E6 EB     INC ram_00EB
C - - - - - 0x0020D8 01:A0C8: 8A        TXA
C - - - - - 0x0020D9 01:A0C9: 18        CLC
C - - - - - 0x0020DA 01:A0CA: 65 EB     ADC ram_00EB
C - - - - - 0x0020DC 01:A0CC: 29 3F     AND #$3F
C - - - - - 0x0020DE 01:A0CE: AA        TAX
bra_A0CF:
C - - - - - 0x0020DF 01:A0CF: BD 6E BC  LDA tbl_BC6E_символы_пароля,X
C - - - - - 0x0020E2 01:A0D2: 85 EC     STA ram_00EC
C - - - - - 0x0020E4 01:A0D4: A6 ED     LDX ram_00ED
C - - - - - 0x0020E6 01:A0D6: BD 41 B2  LDA tbl_B241_lo_адрес_ppu_введенных_символов,X
C - - - - - 0x0020E9 01:A0D9: 18        CLC
C - - - - - 0x0020EA 01:A0DA: 69 80     ADC #$80
C - - - - - 0x0020EC 01:A0DC: A8        TAY
C - - - - - 0x0020ED 01:A0DD: A2 22     LDX #$22
C - - - - - 0x0020EF 01:A0DF: A5 EC     LDA ram_00EC
C - - - - - 0x0020F1 01:A0E1: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x0020F4 01:A0E4: A5 99     LDA ram_0099
C - - - - - 0x0020F6 01:A0E6: 10 04     BPL bra_A0EC
- - - - - - 0x0020F8 01:A0E8: 49 41     EOR #$41
- - - - - - 0x0020FA 01:A0EA: 85 99     STA ram_0099
bra_A0EC:
C - - - - - 0x0020FC 01:A0EC: E6 ED     INC ram_00ED
C - - - - - 0x0020FE 01:A0EE: A5 ED     LDA ram_00ED
C - - - - - 0x002100 01:A0F0: C9 12     CMP #$12
C - - - - - 0x002102 01:A0F2: 90 BF     BCC bra_A0B3_loop
bra_A0F4_кнопка_не_нажата:
C - - - - - 0x002104 01:A0F4: A9 01     LDA #$01
C - - - - - 0x002106 01:A0F6: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002109 01:A0F9: A5 1E     LDA ram_btn_press
; con_btn_A
C - - - - - 0x00210B 01:A0FB: 10 F7     BPL bra_A0F4_кнопка_не_нажата
C - - - - - 0x00210D 01:A0FD: A9 8A     LDA #$AB      ; адрес ppu затирания пароля
C - - - - - 0x00210F 01:A0FF: 85 E6     STA ram_00E6
C - - - - - 0x002111 01:A101: A9 22     LDA #$22
C - - - - - 0x002113 01:A103: 85 E7     STA ram_00E7
C - - - - - 0x002115 01:A105: A0 04     LDY #$03
C - - - - - 0x002117 01:A107: A2 0B     LDX #$0B
C - - - - - 0x002119 01:A109: 20 E8 98  JSR sub_0x0018F8_затереть_часть_экрана
C - - - - - 0x00211C 01:A10C: 60        RTS



sub_0x00211D_экран_continue:
C D - - - - 0x00211D 01:A10D: 20 A0 9B  JSR sub_0x001BB0
C - - - - - 0x002120 01:A110: A9 00     LDA #$00
C - - - - - 0x002122 01:A112: A0 F0     LDY #$F0
bra_A114_loop:
C - - - - - 0x002124 01:A114: 99 66 05  STA ram_0566,Y
C - - - - - 0x002127 01:A117: C8        INY
C - - - - - 0x002128 01:A118: D0 FA     BNE bra_A114_loop
C - - - - - 0x00212A 01:A11A: A2 2C     LDX #$2C
C - - - - - 0x00212C 01:A11C: A0 2D     LDY #$2D
C - - - - - 0x00212E 01:A11E: 20 6F 9B  JSR sub_0x001B7F_запись_первых_двух_банков_спрайтов
C - - - - - 0x002131 01:A121: A2 2E     LDX #$2E
C - - - - - 0x002133 01:A123: A0 2F     LDY #$2F
C - - - - - 0x002135 01:A125: 20 74 9B  JSR sub_0x001B84_запись_вторых_двух_банков_спрайтов
C - - - - - 0x002138 01:A128: A9 00     LDA #con_chr_bank + $00
C - - - - - 0x00213A 01:A12A: 85 8E     STA ram_008E
C - - - - - 0x00213C 01:A12C: 85 90     STA ram_0090
C - - - - - 0x00213E 01:A12E: 85 7B     STA ram_007B
C - - - - - 0x002140 01:A130: A9 2E     LDA #con_chr_bank + $2E
C - - - - - 0x002142 01:A132: 85 8F     STA ram_008F
C - - - - - 0x002144 01:A134: 85 91     STA ram_0091
C - - - - - 0x002146 01:A136: A9 09     LDA #con_BF00_09
C - - - - - 0x002148 01:A138: 20 20 89  JSR sub_0x000930
C - - - - - 0x00214B 01:A13B: A9 6E     LDA #< tbl_BC6E_символы_пароля
C - - - - - 0x00214D 01:A13D: 85 E6     STA ram_00E6
C - - - - - 0x00214F 01:A13F: A9 BC     LDA #> tbl_BC6E_символы_пароля
C - - - - - 0x002151 01:A141: 85 E7     STA ram_00E7
C - - - - - 0x002153 01:A143: A9 C4     LDA #$E4      ; адрес ppu символов пароля
C - - - - - 0x002155 01:A145: 85 E8     STA ram_00E8
C - - - - - 0x002157 01:A147: A9 21     LDA #$21
C - - - - - 0x002159 01:A149: 85 E9     STA ram_00E9
C - - - - - 0x00215B 01:A14B: A9 00     LDA #$00
C - - - - - 0x00215D 01:A14D: 85 EC     STA ram_00EC
C - - - - - 0x00215F 01:A14F: A9 05     LDA #$05
C - - - - - 0x002161 01:A151: 85 EB     STA ram_00EB
bra_A153_loop_записи_символов_пароля:
C - - - - - 0x002163 01:A153: A9 0D     LDA #$0D
C - - - - - 0x002165 01:A155: 85 ED     STA ram_00ED
bra_A157_loop_записи_строки:
C - - - - - 0x002167 01:A157: A4 EC     LDY ram_00EC
C - - - - - 0x002169 01:A159: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x00216B 01:A15B: A4 E8     LDY ram_00E8
C - - - - - 0x00216D 01:A15D: A6 E9     LDX ram_00E9
C - - - - - 0x00216F 01:A15F: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x002172 01:A162: E6 E8     INC ram_00E8
C - - - - - 0x002174 01:A164: E6 E8     INC ram_00E8
C - - - - - 0x002176 01:A166: E6 EC     INC ram_00EC
C - - - - - 0x002178 01:A168: C6 ED     DEC ram_00ED
C - - - - - 0x00217A 01:A16A: D0 EB     BNE bra_A157_loop_записи_строки
C - - - - - 0x00217C 01:A16C: A5 E8     LDA ram_00E8
C - - - - - 0x00217E 01:A16E: 18        CLC
C - - - - - 0x00217F 01:A16F: 69 26     ADC #< $0026
C - - - - - 0x002181 01:A171: 85 E8     STA ram_00E8
C - - - - - 0x002183 01:A173: A5 E9     LDA ram_00E9
C - - - - - 0x002185 01:A175: 69 00     ADC #> $0026
C - - - - - 0x002187 01:A177: 85 E9     STA ram_00E9
C - - - - - 0x002189 01:A179: C6 EB     DEC ram_00EB
C - - - - - 0x00218B 01:A17B: D0 D6     BNE bra_A153_loop_записи_символов_пароля
C - - - - - 0x00218D 01:A17D: A0 F8     LDY #$F8
bra_A17F_loop:
C - - - - - 0x00218F 01:A17F: B9 05 B2  LDA tbl_B2FD - $F8,Y
C - - - - - 0x002192 01:A182: 99 60 04  STA ram_0558 - $F8,Y
C - - - - - 0x002195 01:A185: C8        INY
C - - - - - 0x002196 01:A186: D0 F7     BNE bra_A17F_loop
C - - - - - 0x002198 01:A188: A0 96     LDY #< tbl_B296_экран_continue_1
C - - - - - 0x00219A 01:A18A: A2 B2     LDX #> tbl_B296_экран_continue_1
C - - - - - 0x00219C 01:A18C: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - - 0x00219F 01:A18F: A9 04     LDA #$04
C - - - - - 0x0021A1 01:A191: A2 30     LDX #$30
C - - - - - 0x0021A3 01:A193: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
C - - - - - 0x0021A6 01:A196: A9 8A     LDA #$8A
C - - - - - 0x0021A8 01:A198: 85 4C     STA ram_004C
C - - - - - 0x0021AA 01:A19A: A9 33     LDA #$33      ; музыка пенальти для пароля
C - - - - - 0x0021AC 01:A19C: 8D 00 07  STA ram_звук
loc_A19F:
C D - - - - 0x0021AF 01:A19F: A9 00     LDA #$00
C - - - - - 0x0021B1 01:A1A1: 85 ED     STA ram_00ED
C - - - - - 0x0021B3 01:A1A3: 4C 01 A2  JMP loc_A201



loc_A1A6:
bra_A1A6_в_итоге_ничего_не_нажато:
C D - - - - 0x0021B6 01:A1A6: A9 01     LDA #$01
C - - - - - 0x0021B8 01:A1A8: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0021BB 01:A1AB: 20 D0 A3  JSR sub_A3D0_мигание_курсора
C - - - - - 0x0021BE 01:A1AE: 24 1E     BIT ram_btn_press
C - - - - - 0x0021C0 01:A1B0: 10 03     BPL bra_A1B5_A_не_нажата       ; con_btn_A
C - - - - - 0x0021C2 01:A1B2: 4C 31 A2  JMP loc_A231_ввести_букву
bra_A1B5_A_не_нажата:
C - - - - - 0x0021C5 01:A1B5: 50 03     BVC bra_A1BA_B_не_нажата       ; con_btn_B
C - - - - - 0x0021C7 01:A1B7: 4C 60 A2  JMP loc_A260_сместить_курсор_пароля_влево
bra_A1BA_B_не_нажата:
C - - - - - 0x0021CA 01:A1BA: A5 1E     LDA ram_btn_press
C - - - - - 0x0021CC 01:A1BC: 29 20     AND #con_btn_Select
C - - - - - 0x0021CE 01:A1BE: F0 03     BEQ bra_A1C3_select_не_нажата
C - - - - - 0x0021D0 01:A1C0: 4C 52 A2  JMP loc_A252_сместить_курсор_пароля_вправо
bra_A1C3_select_не_нажата:
C - - - - - 0x0021D3 01:A1C3: A5 1E     LDA ram_btn_press
C - - - - - 0x0021D5 01:A1C5: 29 10     AND #con_btn_Start
C - - - - - 0x0021D7 01:A1C7: F0 03     BEQ bra_A1CC_start_не_нажата
C - - - - - 0x0021D9 01:A1C9: 4C 6C A2  JMP loc_A26C_проверить_введенный_пароль
bra_A1CC_start_не_нажата:
C - - - - - 0x0021DC 01:A1CC: A5 1C     LDA ram_btn_hold
C - - - - - 0x0021DE 01:A1CE: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0021E0 01:A1D0: F0 D4     BEQ bra_A1A6_в_итоге_ничего_не_нажато
C - - - - - 0x0021E2 01:A1D2: A0 14     LDY #$14      ; если нажата кнопка d-pad, то писать таймер удержания кнопки
loc_A1D4:
C D - - - - 0x0021E4 01:A1D4: 84 EA     STY ram_00EA
C - - - - - 0x0021E6 01:A1D6: A6 EC     LDX ram_00EC
C - - - - - 0x0021E8 01:A1D8: BD E8 B1  LDA tbl_B1E8,X
C - - - - - 0x0021EB 01:A1DB: A0 00     LDY #$00
C - - - - - 0x0021ED 01:A1DD: 20 D8 A4  JSR sub_A4D8
C - - - - - 0x0021F0 01:A1E0: A5 1C     LDA ram_btn_hold
C - - - - - 0x0021F2 01:A1E2: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0021F4 01:A1E4: AA        TAX
C - - - - - 0x0021F5 01:A1E5: BD ED B2  LDA tbl_B2ED_смещение_курсора_алфавита,X
C - - - - - 0x0021F8 01:A1E8: 30 0D     BMI bra_A1F7_сместить_назад
C - - - - - 0x0021FA 01:A1EA: 18        CLC
C - - - - - 0x0021FB 01:A1EB: 65 EC     ADC ram_00EC
C - - - - - 0x0021FD 01:A1ED: C9 41     CMP #$41
C - - - - - 0x0021FF 01:A1EF: 90 10     BCC bra_A201_not_overflow
C - - - - - 0x002201 01:A1F1: 38        SEC
C - - - - - 0x002202 01:A1F2: E9 41     SBC #$41
C - - - - - 0x002204 01:A1F4: 4C 01 A2  JMP loc_A201
bra_A1F7_сместить_назад:
C - - - - - 0x002207 01:A1F7: 18        CLC
C - - - - - 0x002208 01:A1F8: 65 EC     ADC ram_00EC
C - - - - - 0x00220A 01:A1FA: C9 41     CMP #$41
C - - - - - 0x00220C 01:A1FC: 90 03     BCC bra_A201_not_overflow
C - - - - - 0x00220E 01:A1FE: 18        CLC
C - - - - - 0x00220F 01:A1FF: 69 41     ADC #$41
bra_A201_not_overflow:
loc_A201:
C D - - - - 0x002211 01:A201: 85 EC     STA ram_00EC
C - - - - - 0x002213 01:A203: AA        TAX
C - - - - - 0x002214 01:A204: BD E8 B1  LDA tbl_B1E8,X
C - - - - - 0x002217 01:A207: 29 C0     AND #$C0
C - - - - - 0x002219 01:A209: 0A        ASL
C - - - - - 0x00221A 01:A20A: 2A        ROL
C - - - - - 0x00221B 01:A20B: 2A        ROL
C - - - - - 0x00221C 01:A20C: A8        TAY
C - - - - - 0x00221D 01:A20D: B9 29 B2  LDA tbl_B229,Y
C - - - - - 0x002220 01:A210: A8        TAY
C - - - - - 0x002221 01:A211: BD E8 B1  LDA tbl_B1E8,X
C - - - - - 0x002224 01:A214: 20 D8 A4  JSR sub_A4D8
bra_A217_loop:
C - - - - - 0x002227 01:A217: A9 01     LDA #$01
C - - - - - 0x002229 01:A219: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x00222C 01:A21C: 20 D0 A3  JSR sub_A3D0_мигание_курсора
C - - - - - 0x00222F 01:A21F: A5 1C     LDA ram_btn_hold
C - - - - - 0x002231 01:A221: 29 0F     AND #con_btns_Dpad
C - - - - - 0x002233 01:A223: D0 03     BNE bra_A228
C - - - - - 0x002235 01:A225: 4C A6 A1  JMP loc_A1A6
bra_A228:
C - - - - - 0x002238 01:A228: C6 EA     DEC ram_00EA
C - - - - - 0x00223A 01:A22A: D0 EB     BNE bra_A217_loop
C - - - - - 0x00223C 01:A22C: A0 08     LDY #$08
C - - - - - 0x00223E 01:A22E: 4C D4 A1  JMP loc_A1D4
loc_A231_ввести_букву:
C D - - - - 0x002241 01:A231: A6 EC     LDX ram_00EC
C - - - - - 0x002243 01:A233: BD 55 B2  LDA tbl_B255_байт_буквы_алфавита,X
C - - - - - 0x002246 01:A236: C9 FF     CMP #$FF      ; символ GO
C - - - - - 0x002248 01:A238: F0 32     BEQ bra_A26C_проверить_введенный_пароль
C - - - - - 0x00224A 01:A23A: 8A        TXA
C - - - - - 0x00224B 01:A23B: A4 ED     LDY ram_00ED
C - - - - - 0x00224D 01:A23D: 99 64 06  STA ram_байт_введенного_пароля,Y
C - - - - - 0x002250 01:A240: BD 6E BC  LDA tbl_BC6E_символы_пароля,X
C - - - - - 0x002253 01:A243: A6 ED     LDX ram_00ED
C - - - - - 0x002255 01:A245: BC 41 B2  LDY tbl_B241_lo_адрес_ppu_введенных_символов,X
C - - - - - 0x002258 01:A248: A2 21     LDX #$21
C - - - - - 0x00225A 01:A24A: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x00225D 01:A24D: A9 12     LDA #$12
C - - - - - 0x00225F 01:A24F: 8D 01 07  STA ram_звук + $01
loc_A252_сместить_курсор_пароля_вправо:
C D - - - - 0x002262 01:A252: A6 ED     LDX ram_00ED
C - - - - - 0x002264 01:A254: E8        INX
C - - - - - 0x002265 01:A255: E0 12     CPX #$12
C - - - - - 0x002267 01:A257: 90 02     BCC bra_A25B_not_overflow
C - - - - - 0x002269 01:A259: A2 00     LDX #$00
bra_A25B_not_overflow:
C - - - - - 0x00226B 01:A25B: 86 ED     STX ram_00ED
C - - - - - 0x00226D 01:A25D: 4C A6 A1  JMP loc_A1A6
loc_A260_сместить_курсор_пароля_влево:
C D - - - - 0x002270 01:A260: A6 ED     LDX ram_00ED
C - - - - - 0x002272 01:A262: CA        DEX
C - - - - - 0x002273 01:A263: 10 02     BPL bra_A267_not_overflow
C - - - - - 0x002275 01:A265: A2 11     LDX #$11
bra_A267_not_overflow:
C - - - - - 0x002277 01:A267: 86 ED     STX ram_00ED
C - - - - - 0x002279 01:A269: 4C A6 A1  JMP loc_A1A6
bra_A26C_проверить_введенный_пароль:
loc_A26C_проверить_введенный_пароль:
C D - - - - 0x00227C 01:A26C: A6 EC     LDX ram_00EC
C - - - - - 0x00227E 01:A26E: BD E8 B1  LDA tbl_B1E8,X
C - - - - - 0x002281 01:A271: A0 00     LDY #$00
C - - - - - 0x002283 01:A273: 20 D8 A4  JSR sub_A4D8
C - - - - - 0x002286 01:A276: AE 73 06  LDX ram_байт_введенного_пароля + $0F
C - - - - - 0x002289 01:A279: BD 55 B2  LDA tbl_B255_байт_буквы_алфавита,X
C - - - - - 0x00228C 01:A27C: 29 30     AND #$30
C - - - - - 0x00228E 01:A27E: 85 EB     STA ram_00EB
C - - - - - 0x002290 01:A280: AE 75 06  LDX ram_байт_введенного_пароля + $11
C - - - - - 0x002293 01:A283: BD 55 B2  LDA tbl_B255_байт_буквы_алфавита,X
C - - - - - 0x002296 01:A286: 29 0F     AND #$0F
C - - - - - 0x002298 01:A288: 05 EB     ORA ram_00EB
C - - - - - 0x00229A 01:A28A: 85 EB     STA ram_00EB
C - - - - - 0x00229C 01:A28C: A2 00     LDX #$00
bra_A28E_loop:
C - - - - - 0x00229E 01:A28E: BD 64 06  LDA ram_байт_введенного_пароля,X
C - - - - - 0x0022A1 01:A291: E0 0F     CPX #$0F
C - - - - - 0x0022A3 01:A293: B0 07     BCS bra_A29C
C - - - - - 0x0022A5 01:A295: E6 EB     INC ram_00EB
C - - - - - 0x0022A7 01:A297: 38        SEC
C - - - - - 0x0022A8 01:A298: E5 EB     SBC ram_00EB
C - - - - - 0x0022AA 01:A29A: 29 3F     AND #$3F
bra_A29C:
C - - - - - 0x0022AC 01:A29C: A8        TAY
C - - - - - 0x0022AD 01:A29D: B9 55 B2  LDA tbl_B255_байт_буквы_алфавита,Y
C - - - - - 0x0022B0 01:A2A0: 20 74 A4  JSR sub_A474
C - - - - - 0x0022B3 01:A2A3: E8        INX
C - - - - - 0x0022B4 01:A2A4: E0 12     CPX #$12
C - - - - - 0x0022B6 01:A2A6: D0 E6     BNE bra_A28E_loop
C - - - - - 0x0022B8 01:A2A8: 20 02 A4  JSR sub_A402
C - - - - - 0x0022BB 01:A2AB: AD 62 06  LDA ram_0662
C - - - - - 0x0022BE 01:A2AE: C5 EC     CMP ram_00EC
C - - - - - 0x0022C0 01:A2B0: D0 09     BNE bra_A2BB_пароль_неверный
- - - - - - 0x0022C2 01:A2B2: AD 61 06  LDA ram_0661
- - - - - - 0x0022C5 01:A2B5: 29 0F     AND #$0F
- - - - - - 0x0022C7 01:A2B7: C5 ED     CMP ram_00ED
- - - - - - 0x0022C9 01:A2B9: F0 22     BEQ bra_A2DD_пароль_введен_правильно
bra_A2BB_пароль_неверный:
C - - - - - 0x0022CB 01:A2BB: A9 F8     LDA #$F8          ; отобразить спрятанные символы
C - - - - - 0x0022CD 01:A2BD: 8D 58 05  STA ram_0558
C - - - - - 0x0022D0 01:A2C0: 8D 5C 05  STA ram_055C
                                        LDA #$01          ; выключить музыку
                                        STA ram_звук
                                        LDA #$01
                                        JSR sub_0x001FB8_задержка_кадра
                                        LDA #$63          ; звук штанги
                                        STA ram_звук
                                        LDA #$3C
                                        JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0022D3 01:A2C3: A9 43     LDA #$43          ; звук неправильного пароля
C - - - - - 0x0022D5 01:A2C5: 8D 00 07  STA ram_звук
C - - - - - 0x0022D8 01:A2C8: A9 01     LDA #$01
C - - - - - 0x0022DA 01:A2CA: 85 7E     STA ram_007E      ; включить вторую nametable
C - - - - - 0x0022DC 01:A2CC: A9 78     LDA #$78
C - - - - - 0x0022DE 01:A2CE: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0022E1 01:A2D1: A9 00     LDA #$00
C - - - - - 0x0022E3 01:A2D3: 85 7E     STA ram_007E      ; включить первую nametable
C - - - - - 0x0022E5 01:A2D5: A9 33     LDA #$33          ; музыка пенальти для пароля
C - - - - - 0x0022E7 01:A2D7: 8D 00 07  STA ram_звук
C - - - - - 0x0022EA 01:A2DA: 4C 9F A1  JMP loc_A19F
bra_A2DD_пароль_введен_правильно:
- - - - - - 0x0022ED 01:A2DD: A9 00     LDA #$00
loc_A2DF_loop:
- - - - - - 0x0022EF 01:A2DF: 85 E6     STA ram_00E6
- - - - - - 0x0022F1 01:A2E1: AA        TAX
- - - - - - 0x0022F2 01:A2E2: BD 56 06  LDA ram_0656,X
- - - - - - 0x0022F5 01:A2E5: 4A        LSR
- - - - - - 0x0022F6 01:A2E6: 4A        LSR
- - - - - - 0x0022F7 01:A2E7: 85 E7     STA ram_00E7
- - - - - - 0x0022F9 01:A2E9: 20 45 B0  JSR sub_B045
- - - - - - 0x0022FC 01:A2EC: 84 EC     STY ram_00EC
- - - - - - 0x0022FE 01:A2EE: 86 ED     STX ram_00ED
- - - - - - 0x002300 01:A2F0: A5 E7     LDA ram_00E7
- - - - - - 0x002302 01:A2F2: C9 3F     CMP #$3F
- - - - - - 0x002304 01:A2F4: B0 5C     BCS bra_A352
- - - - - - 0x002306 01:A2F6: 18        CLC
- - - - - - 0x002307 01:A2F7: 69 01     ADC #$01
- - - - - - 0x002309 01:A2F9: 20 45 B0  JSR sub_B045
- - - - - - 0x00230C 01:A2FC: 98        TYA
- - - - - - 0x00230D 01:A2FD: 38        SEC
- - - - - - 0x00230E 01:A2FE: E5 EC     SBC ram_00EC
- - - - - - 0x002310 01:A300: 85 EA     STA ram_00EA
- - - - - - 0x002312 01:A302: 8A        TXA
- - - - - - 0x002313 01:A303: E5 ED     SBC ram_00ED
- - - - - - 0x002315 01:A305: 85 EB     STA ram_00EB
- - - - - - 0x002317 01:A307: 46 EB     LSR ram_00EB
- - - - - - 0x002319 01:A309: 66 EA     ROR ram_00EA
- - - - - - 0x00231B 01:A30B: 46 EB     LSR ram_00EB
- - - - - - 0x00231D 01:A30D: 66 EA     ROR ram_00EA
- - - - - - 0x00231F 01:A30F: A6 E6     LDX ram_00E6
- - - - - - 0x002321 01:A311: BD 56 06  LDA ram_0656,X
- - - - - - 0x002324 01:A314: A4 EA     LDY ram_00EA
- - - - - - 0x002326 01:A316: A6 EB     LDX ram_00EB
- - - - - - 0x002328 01:A318: 29 03     AND #$03
- - - - - - 0x00232A 01:A31A: F0 1C     BEQ bra_A338
- - - - - - 0x00232C 01:A31C: 06 EA     ASL ram_00EA
- - - - - - 0x00232E 01:A31E: 26 EB     ROL ram_00EB
- - - - - - 0x002330 01:A320: C9 02     CMP #$02
- - - - - - 0x002332 01:A322: F0 09     BEQ bra_A32D
- - - - - - 0x002334 01:A324: 90 12     BCC bra_A338
- - - - - - 0x002336 01:A326: 06 EA     ASL ram_00EA
- - - - - - 0x002338 01:A328: 26 EB     ROL ram_00EB
- - - - - - 0x00233A 01:A32A: 4C 38 A3  JMP loc_A338
bra_A32D:
- - - - - - 0x00233D 01:A32D: 98        TYA
- - - - - - 0x00233E 01:A32E: 18        CLC
- - - - - - 0x00233F 01:A32F: 65 EA     ADC ram_00EA
- - - - - - 0x002341 01:A331: 85 EA     STA ram_00EA
- - - - - - 0x002343 01:A333: 8A        TXA
- - - - - - 0x002344 01:A334: 65 EB     ADC ram_00EB
- - - - - - 0x002346 01:A336: 85 EB     STA ram_00EB
bra_A338:
loc_A338:
- - - - - - 0x002348 01:A338: A5 EC     LDA ram_00EC
- - - - - - 0x00234A 01:A33A: 18        CLC
- - - - - - 0x00234B 01:A33B: 65 EA     ADC ram_00EA
- - - - - - 0x00234D 01:A33D: 85 EC     STA ram_00EC
- - - - - - 0x00234F 01:A33F: A5 ED     LDA ram_00ED
- - - - - - 0x002351 01:A341: 65 EB     ADC ram_00EB
- - - - - - 0x002353 01:A343: 85 ED     STA ram_00ED
- - - - - - 0x002355 01:A345: A5 EC     LDA ram_00EC
- - - - - - 0x002357 01:A347: 38        SEC
- - - - - - 0x002358 01:A348: E9 01     SBC #< $0001
- - - - - - 0x00235A 01:A34A: 85 EC     STA ram_00EC
- - - - - - 0x00235C 01:A34C: A5 ED     LDA ram_00ED
- - - - - - 0x00235E 01:A34E: E9 00     SBC #> $0001
- - - - - - 0x002360 01:A350: 85 ED     STA ram_00ED
bra_A352:
- - - - - - 0x002362 01:A352: A5 E6     LDA ram_00E6
- - - - - - 0x002364 01:A354: 0A        ASL
- - - - - - 0x002365 01:A355: AA        TAX
- - - - - - 0x002366 01:A356: A5 EC     LDA ram_00EC
- - - - - - 0x002368 01:A358: 9D 54 04  STA ram_опыт_lo,X
- - - - - - 0x00236B 01:A35B: A5 ED     LDA ram_00ED
- - - - - - 0x00236D 01:A35D: 9D 55 04  STA ram_опыт_hi,X
- - - - - - 0x002370 01:A360: E6 E6     INC ram_00E6
- - - - - - 0x002372 01:A362: A5 E6     LDA ram_00E6
- - - - - - 0x002374 01:A364: C9 0A     CMP #$0A
- - - - - - 0x002376 01:A366: F0 03     BEQ bra_A36B_продолжить
- - - - - - 0x002378 01:A368: 4C DF A2  JMP loc_A2DF_loop
bra_A36B_продолжить:
- - - - - - 0x00237B 01:A36B: AD 60 06  LDA ram_0660
- - - - - - 0x00237E 01:A36E: 4A        LSR
- - - - - - 0x00237F 01:A36F: 4A        LSR
- - - - - - 0x002380 01:A370: 85 26     STA ram_матч
- - - - - - 0x002382 01:A372: AD 60 06  LDA ram_0660
- - - - - - 0x002385 01:A375: 29 03     AND #$03
- - - - - - 0x002387 01:A377: 4A        LSR
- - - - - - 0x002388 01:A378: 8D 48 04  STA ram_флаг_циклона
- - - - - - 0x00238B 01:A37B: A9 00     LDA #$00
- - - - - - 0x00238D 01:A37D: 90 02     BCC bra_A381
- - - - - - 0x00238F 01:A37F: A9 05     LDA #$05
bra_A381:
- - - - - - 0x002391 01:A381: 8D 46 04  STA ram_флаг_драйв_оверхеда
- - - - - - 0x002394 01:A384: AD 61 06  LDA ram_0661
- - - - - - 0x002397 01:A387: 2A        ROL
- - - - - - 0x002398 01:A388: A9 00     LDA #$00
- - - - - - 0x00239A 01:A38A: 2A        ROL
- - - - - - 0x00239B 01:A38B: 8D 4D 04  STA ram_флаг_мисуги_0_хп
- - - - - - 0x00239E 01:A38E: A9 00     LDA #$00
- - - - - - 0x0023A0 01:A390: 85 4C     STA ram_004C
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
- - - - - - 0x0023A7 01:A397: 20 A0 9B  JSR sub_0x001BB0
- - - - - - 0x0023AA 01:A39A: 60        RTS



sub_0x0023AB:
; вероятно выполнится при правильном вводе пароля
- - - - - - 0x0023AB 01:A39B: A9 00     LDA #$00
- - - - - - 0x0023AD 01:A39D: 85 EA     STA ram_00EA
- - - - - - 0x0023AF 01:A39F: A9 0B     LDA #$0B
- - - - - - 0x0023B1 01:A3A1: 20 B4 A3  JSR sub_A3B4
- - - - - - 0x0023B4 01:A3A4: A5 26     LDA ram_матч
- - - - - - 0x0023B6 01:A3A6: C9 10     CMP #$10
- - - - - - 0x0023B8 01:A3A8: 90 09     BCC bra_A3B3_RTS
- - - - - - 0x0023BA 01:A3AA: A9 16     LDA #$16
- - - - - - 0x0023BC 01:A3AC: 85 EA     STA ram_00EA
- - - - - - 0x0023BE 01:A3AE: A9 0A     LDA #$0A
- - - - - - 0x0023C0 01:A3B0: 20 B4 A3  JSR sub_A3B4
bra_A3B3_RTS:
- - - - - - 0x0023C3 01:A3B3: 60        RTS



sub_A3B4:
- - - - - - 0x0023C4 01:A3B4: 85 EB     STA ram_00EB
bra_A3B6_loop:
- - - - - - 0x0023C6 01:A3B6: A5 EA     LDA ram_00EA
- - - - - - 0x0023C8 01:A3B8: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
- - - - - - 0x0023CB 01:A3BB: A0 00     LDY #con_plr_id
- - - - - - 0x0023CD 01:A3BD: B1 34     LDA (ram_plr_data),Y
- - - - - - 0x0023CF 01:A3BF: 20 13 B0  JSR sub_B013_чтение_опыта_из_оперативки_для_игрока
- - - - - - 0x0023D2 01:A3C2: 20 2E B0  JSR sub_B02E
- - - - - - 0x0023D5 01:A3C5: A0 03     LDY #con_plr_lvl
- - - - - - 0x0023D7 01:A3C7: 91 34     STA (ram_plr_data),Y
- - - - - - 0x0023D9 01:A3C9: E6 EA     INC ram_00EA
- - - - - - 0x0023DB 01:A3CB: C6 EB     DEC ram_00EB
- - - - - - 0x0023DD 01:A3CD: D0 E7     BNE bra_A3B6_loop
- - - - - - 0x0023DF 01:A3CF: 60        RTS



sub_A3D0_мигание_курсора:
C - - - - - 0x0023E0 01:A3D0: A5 3A     LDA ram_003A
C - - - - - 0x0023E2 01:A3D2: 29 04     AND #$04
C - - - - - 0x0023E4 01:A3D4: F0 23     BEQ bra_A3F9_отобразить_введенный_символ
C - - - - - 0x0023E6 01:A3D6: A6 ED     LDX ram_00ED
C - - - - - 0x0023E8 01:A3D8: BD 2D B2  LDA tbl_B22D_X_мигающего_курсора,X
C - - - - - 0x0023EB 01:A3DB: 29 80     AND #$80
C - - - - - 0x0023ED 01:A3DD: 4A        LSR
C - - - - - 0x0023EE 01:A3DE: 38        SEC
C - - - - - 0x0023EF 01:A3DF: 6A        ROR
C - - - - - 0x0023F0 01:A3E0: 4A        LSR
C - - - - - 0x0023F1 01:A3E1: 8D 58 05  STA ram_0558
C - - - - - 0x0023F4 01:A3E4: 18        CLC
C - - - - - 0x0023F5 01:A3E5: 69 08     ADC #$08
C - - - - - 0x0023F7 01:A3E7: 8D 5C 05  STA ram_055C
C - - - - - 0x0023FA 01:A3EA: BD 2D B2  LDA tbl_B22D_X_мигающего_курсора,X
C - - - - - 0x0023FD 01:A3ED: 29 7F     AND #$7F
C - - - - - 0x0023FF 01:A3EF: 18        CLC
C - - - - - 0x002400 01:A3F0: 69 50     ADC #$50
C - - - - - 0x002402 01:A3F2: 8D 5B 05  STA ram_055B
C - - - - - 0x002405 01:A3F5: 8D 5F 05  STA ram_055F
C - - - - - 0x002408 01:A3F8: 60        RTS
bra_A3F9_отобразить_введенный_символ:
C - - - - - 0x002409 01:A3F9: A9 F8     LDA #$F8
C - - - - - 0x00240B 01:A3FB: 8D 58 05  STA ram_0558
C - - - - - 0x00240E 01:A3FE: 8D 5C 05  STA ram_055C
C - - - - - 0x002411 01:A401: 60        RTS



sub_A402:
C - - - - - 0x002412 01:A402: AD 61 06  LDA ram_0661
C - - - - - 0x002415 01:A405: 29 F0     AND #$F0
C - - - - - 0x002417 01:A407: 18        CLC
C - - - - - 0x002418 01:A408: 6D 63 06  ADC ram_0663
C - - - - - 0x00241B 01:A40B: 85 EC     STA ram_00EC
C - - - - - 0x00241D 01:A40D: A9 00     LDA #$00
C - - - - - 0x00241F 01:A40F: 69 00     ADC #$00
C - - - - - 0x002421 01:A411: 85 ED     STA ram_00ED
C - - - - - 0x002423 01:A413: A2 00     LDX #$00
bra_A415_loop:
C - - - - - 0x002425 01:A415: BD 56 06  LDA ram_0656,X
C - - - - - 0x002428 01:A418: 18        CLC
C - - - - - 0x002429 01:A419: 65 EC     ADC ram_00EC
C - - - - - 0x00242B 01:A41B: 85 EC     STA ram_00EC
C - - - - - 0x00242D 01:A41D: A5 ED     LDA ram_00ED
C - - - - - 0x00242F 01:A41F: 69 00     ADC #$00
C - - - - - 0x002431 01:A421: 85 ED     STA ram_00ED
C - - - - - 0x002433 01:A423: E8        INX
C - - - - - 0x002434 01:A424: E0 0B     CPX #$0B
C - - - - - 0x002436 01:A426: D0 ED     BNE bra_A415_loop
C - - - - - 0x002438 01:A428: A5 EC     LDA ram_00EC
C - - - - - 0x00243A 01:A42A: 18        CLC
C - - - - - 0x00243B 01:A42B: 69 09     ADC #$09
C - - - - - 0x00243D 01:A42D: 85 EC     STA ram_00EC
C - - - - - 0x00243F 01:A42F: A5 ED     LDA ram_00ED
C - - - - - 0x002441 01:A431: 69 03     ADC #$03
C - - - - - 0x002443 01:A433: 29 0F     AND #$0F
C - - - - - 0x002445 01:A435: 85 ED     STA ram_00ED
C - - - - - 0x002447 01:A437: 60        RTS



sub_A438:
C - - - - - 0x002448 01:A438: BC 8A AD  LDY tbl_AD8A,X
C - - - - - 0x00244B 01:A43B: 8A        TXA
C - - - - - 0x00244C 01:A43C: 29 03     AND #$03
C - - - - - 0x00244E 01:A43E: F0 2E     BEQ bra_A46E
C - - - - - 0x002450 01:A440: C9 01     CMP #$01
C - - - - - 0x002452 01:A442: F0 1A     BEQ bra_A45E
C - - - - - 0x002454 01:A444: C9 02     CMP #$02
C - - - - - 0x002456 01:A446: F0 06     BEQ bra_A44E
C - - - - - 0x002458 01:A448: B9 56 06  LDA ram_0656,Y
C - - - - - 0x00245B 01:A44B: 29 3F     AND #$3F
C - - - - - 0x00245D 01:A44D: 60        RTS
bra_A44E:
C - - - - - 0x00245E 01:A44E: B9 57 06  LDA ram_0657,Y
C - - - - - 0x002461 01:A451: 0A        ASL
C - - - - - 0x002462 01:A452: 85 EC     STA ram_00EC
C - - - - - 0x002464 01:A454: B9 56 06  LDA ram_0656,Y
C - - - - - 0x002467 01:A457: 29 0F     AND #$0F
C - - - - - 0x002469 01:A459: 2A        ROL
C - - - - - 0x00246A 01:A45A: 06 EC     ASL ram_00EC
C - - - - - 0x00246C 01:A45C: 2A        ROL
C - - - - - 0x00246D 01:A45D: 60        RTS
bra_A45E:
C - - - - - 0x00246E 01:A45E: B9 56 06  LDA ram_0656,Y
C - - - - - 0x002471 01:A461: 4A        LSR
C - - - - - 0x002472 01:A462: 85 EC     STA ram_00EC
C - - - - - 0x002474 01:A464: B9 57 06  LDA ram_0657,Y
C - - - - - 0x002477 01:A467: 6A        ROR
C - - - - - 0x002478 01:A468: 46 EC     LSR ram_00EC
C - - - - - 0x00247A 01:A46A: 6A        ROR
C - - - - - 0x00247B 01:A46B: 4A        LSR
C - - - - - 0x00247C 01:A46C: 4A        LSR
C - - - - - 0x00247D 01:A46D: 60        RTS
bra_A46E:
C - - - - - 0x00247E 01:A46E: B9 56 06  LDA ram_0656,Y
C - - - - - 0x002481 01:A471: 4A        LSR
C - - - - - 0x002482 01:A472: 4A        LSR
C - - - - - 0x002483 01:A473: 60        RTS



sub_A474:
C - - - - - 0x002484 01:A474: 29 3F     AND #$3F
C - - - - - 0x002486 01:A476: 85 EC     STA ram_00EC
C - - - - - 0x002488 01:A478: BC 8A AD  LDY tbl_AD8A,X
C - - - - - 0x00248B 01:A47B: 8A        TXA
C - - - - - 0x00248C 01:A47C: 29 03     AND #$03
C - - - - - 0x00248E 01:A47E: F0 49     BEQ bra_A4C9
C - - - - - 0x002490 01:A480: C9 01     CMP #$01
C - - - - - 0x002492 01:A482: F0 28     BEQ bra_A4AC
C - - - - - 0x002494 01:A484: C9 02     CMP #$02
C - - - - - 0x002496 01:A486: F0 0B     BEQ bra_A493
C - - - - - 0x002498 01:A488: B9 56 06  LDA ram_0656,Y
C - - - - - 0x00249B 01:A48B: 29 C0     AND #$C0
C - - - - - 0x00249D 01:A48D: 05 EC     ORA ram_00EC
C - - - - - 0x00249F 01:A48F: 99 56 06  STA ram_0656,Y
C - - - - - 0x0024A2 01:A492: 60        RTS
bra_A493:
C - - - - - 0x0024A3 01:A493: B9 57 06  LDA ram_0657,Y
C - - - - - 0x0024A6 01:A496: 0A        ASL
C - - - - - 0x0024A7 01:A497: 0A        ASL
C - - - - - 0x0024A8 01:A498: 46 EC     LSR ram_00EC
C - - - - - 0x0024AA 01:A49A: 6A        ROR
C - - - - - 0x0024AB 01:A49B: 46 EC     LSR ram_00EC
C - - - - - 0x0024AD 01:A49D: 6A        ROR
C - - - - - 0x0024AE 01:A49E: 99 57 06  STA ram_0657,Y
C - - - - - 0x0024B1 01:A4A1: B9 56 06  LDA ram_0656,Y
C - - - - - 0x0024B4 01:A4A4: 29 F0     AND #$F0
C - - - - - 0x0024B6 01:A4A6: 05 EC     ORA ram_00EC
C - - - - - 0x0024B8 01:A4A8: 99 56 06  STA ram_0656,Y
C - - - - - 0x0024BB 01:A4AB: 60        RTS
bra_A4AC:
C - - - - - 0x0024BC 01:A4AC: 06 EC     ASL ram_00EC
C - - - - - 0x0024BE 01:A4AE: 06 EC     ASL ram_00EC
C - - - - - 0x0024C0 01:A4B0: B9 56 06  LDA ram_0656,Y
C - - - - - 0x0024C3 01:A4B3: 4A        LSR
C - - - - - 0x0024C4 01:A4B4: 4A        LSR
C - - - - - 0x0024C5 01:A4B5: 06 EC     ASL ram_00EC
C - - - - - 0x0024C7 01:A4B7: 2A        ROL
C - - - - - 0x0024C8 01:A4B8: 06 EC     ASL ram_00EC
C - - - - - 0x0024CA 01:A4BA: 2A        ROL
C - - - - - 0x0024CB 01:A4BB: 99 56 06  STA ram_0656,Y
C - - - - - 0x0024CE 01:A4BE: B9 57 06  LDA ram_0657,Y
C - - - - - 0x0024D1 01:A4C1: 29 0F     AND #$0F
C - - - - - 0x0024D3 01:A4C3: 05 EC     ORA ram_00EC
C - - - - - 0x0024D5 01:A4C5: 99 57 06  STA ram_0657,Y
C - - - - - 0x0024D8 01:A4C8: 60        RTS
bra_A4C9:
C - - - - - 0x0024D9 01:A4C9: 06 EC     ASL ram_00EC
C - - - - - 0x0024DB 01:A4CB: 06 EC     ASL ram_00EC
C - - - - - 0x0024DD 01:A4CD: B9 56 06  LDA ram_0656,Y
C - - - - - 0x0024E0 01:A4D0: 29 03     AND #$03
C - - - - - 0x0024E2 01:A4D2: 05 EC     ORA ram_00EC
C - - - - - 0x0024E4 01:A4D4: 99 56 06  STA ram_0656,Y
C - - - - - 0x0024E7 01:A4D7: 60        RTS



sub_A4D8:
C - - - - - 0x0024E8 01:A4D8: 84 E8     STY ram_00E8
C - - - - - 0x0024EA 01:A4DA: 29 3F     AND #$3F
C - - - - - 0x0024EC 01:A4DC: 18        CLC
C - - - - - 0x0024ED 01:A4DD: 69 D8     ADC #$D8
C - - - - - 0x0024EF 01:A4DF: A8        TAY
C - - - - - 0x0024F0 01:A4E0: A2 23     LDX #$23
C - - - - - 0x0024F2 01:A4E2: A9 01     LDA #$01
C - - - - - 0x0024F4 01:A4E4: 85 E9     STA ram_00E9
C - - - - - 0x0024F6 01:A4E6: A5 E8     LDA ram_00E8
C - - - - - 0x0024F8 01:A4E8: 4C 95 98  JMP loc_0x0018A5



sub_0x0024FB_VS_экран_и_повышение_уровня:
                                        LDA ram_матч
                                        ASL
                                        ADC #$80
                                        STA a: $90
C D - - - - 0x0024FB 01:A4EB: A2 6A     LDX #$6A
C - - - - - 0x0024FD 01:A4ED: A0 6B     LDY #$6B
C - - - - - 0x0024FF 01:A4EF: 20 6F 9B  JSR sub_0x001B7F_запись_первых_двух_банков_спрайтов
C - - - - - 0x002502 01:A4F2: A2 7A     LDX #$7A
C - - - - - 0x002504 01:A4F4: A0 7B     LDY #$7B
C - - - - - 0x002506 01:A4F6: 20 74 9B  JSR sub_0x001B84_запись_вторых_двух_банков_спрайтов
C - - - - - 0x002509 01:A4F9: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
                                        LDA #con_prg_bank + $9E
                                        STA ram_for_5116
                                        STA $5116
                                        LDA ram_матч
                                        ASL
                                        TAX
                                        LDY tbl_0x040003_vs_экран,X
                                        LDA tbl_0x040003_vs_экран + $01,X
                                        TAX
C - - - - - 0x002510 01:A500: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - - 0x002513 01:A503: A9 00     LDA #$00
C - - - - - 0x002515 01:A505: 85 44     STA ram_0044
C - - - - - 0x002517 01:A507: 85 45     STA ram_0045
C - - - - - 0x00256E 01:A55E: 85 7B     STA ram_007B
C - - - - - 0x002572 01:A562: 85 8E     STA ram_008E
C - - - - - 0x002574 01:A564: A9 2E     LDA #con_chr_bank + $2E
C - - - - - 0x002576 01:A566: 85 8F     STA ram_008F
C - - - - - 0x002578 01:A568: A9 04     LDA #$04
C - - - - - 0x00257A 01:A56A: A2 37     LDX #$37
C - - - - - 0x00257C 01:A56C: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
bra_A571_ожидание_нажатия:
C - - - - - 0x002581 01:A571: A9 01     LDA #$01
C - - - - - 0x002583 01:A573: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002586 01:A576: A5 1E     LDA ram_btn_press
                                        AND #con_btn_A + con_btn_Start
C - - - - - 0x002588 01:A578: 30 03     BEQ bra_A571_ожидание_нажатия
C - - - - - 0x00258D 01:A57D: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x002590 01:A580: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - - 0x002593 01:A583: A9 00     LDA #$00
C - - - - - 0x002595 01:A585: 85 ED     STA ram_00ED
C - - - - - 0x002597 01:A587: 85 EC     STA ram_00EC
C - - - - - 0x002599 01:A589: A9 0B     LDA #$0B
C - - - - - 0x00259B 01:A58B: 20 11 A6  JSR sub_A611
C - - - - - 0x00259E 01:A58E: A5 26     LDA ram_матч
C - - - - - 0x0025A0 01:A590: C9 10     CMP #$10
C - - - - - 0x0025A2 01:A592: 90 09     BCC bra_A59D_матчи_до_японии
C - - - - - 0x0025A4 01:A594: A9 16     LDA #$16
C - - - - - 0x0025A6 01:A596: 85 ED     STA ram_00ED
C - - - - - 0x0025A8 01:A598: A9 0A     LDA #$0A
C - - - - - 0x0025AA 01:A59A: 20 11 A6  JSR sub_A611
bra_A59D_матчи_до_японии:
C - - - - - 0x0025AD 01:A59D: A5 E4     LDA ram_00E4
C - - - - - 0x0025AF 01:A59F: C5 26     CMP ram_матч
C - - - - - 0x0025B1 01:A5A1: B0 0E     BCS bra_A5B1
C - - - - - 0x0025B3 01:A5A3: A5 26     LDA ram_матч
C - - - - - 0x0025B5 01:A5A5: C9 06     CMP #$06      ; не повышать уровень при определенных матчах
C - - - - - 0x0025B7 01:A5A7: F0 67     BEQ bra_A610_RTS
C - - - - - 0x0025B9 01:A5A9: C9 0C     CMP #$0C
C - - - - - 0x0025BB 01:A5AB: F0 63     BEQ bra_A610_RTS
C - - - - - 0x0025BD 01:A5AD: C9 10     CMP #$10
C - - - - - 0x0025BF 01:A5AF: F0 5F     BEQ bra_A610_RTS
bra_A5B1:
C - - - - - 0x0025C1 01:A5B1: A5 EC     LDA ram_00EC      ; ? никто не набрал уровень
C - - - - - 0x0025C3 01:A5B3: F0 5B     BEQ bra_A610_RTS
C - - - - - 0x0025C5 01:A5B5: A6 26     LDX ram_матч
C - - - - - 0x0025C7 01:A5B7: BD F9 B3  LDA tbl_B3F9_cutscene_level_up,X
                                        CLC
                                        ADC #$5B
C - - - - - 0x0025CA 01:A5BA: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - - 0x0025CD 01:A5BD: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - - 0x0025D0 01:A5C0: A9 00     LDA #$00
C - - - - - 0x0025D2 01:A5C2: 85 ED     STA ram_00ED
C - - - - - 0x0025D4 01:A5C4: 85 EA     STA ram_00EA
loc_A5C6_следующий_экран_имен_игроков_с_новым_уровнем:
bra_A5C6_loop:
C D - - - - 0x0025D6 01:A5C6: A6 ED     LDX ram_00ED
C - - - - - 0x0025D8 01:A5C8: BD 56 06  LDA ram_0656,X
C - - - - - 0x0025DB 01:A5CB: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - - 0x0025DE 01:A5CE: A5 EA     LDA ram_00EA
C - - - - - 0x0025E0 01:A5D0: 0A        ASL
C - - - - - 0x0025E1 01:A5D1: AA        TAX
C - - - - - 0x0025E2 01:A5D2: BD 58 BC  LDA tbl_BC58_адрес_ppu_для_имен_игроков,X
C - - - - - 0x0025E5 01:A5D5: 85 E8     STA ram_00E8
C - - - - - 0x0025E7 01:A5D7: BD 59 BC  LDA tbl_BC58_адрес_ppu_для_имен_игроков + $01,X
C - - - - - 0x0025EA 01:A5DA: 85 E9     STA ram_00E9
C - - - - - 0x0025EC 01:A5DC: A4 30     LDY ram_0030
C - - - - - 0x0025EE 01:A5DE: A6 31     LDX ram_0031
C - - - - - 0x0025F0 01:A5E0: 20 50 9D  JSR sub_0x001D60_запись_имени_в_буфер
C - - - - - 0x0025F3 01:A5E3: E6 EA     INC ram_00EA
C - - - - - 0x0025F5 01:A5E5: E6 ED     INC ram_00ED
C - - - - - 0x0025F7 01:A5E7: C6 EC     DEC ram_00EC
C - - - - - 0x0025F9 01:A5E9: F0 1F     BEQ bra_A60A_закончить
C - - - - - 0x0025FB 01:A5EB: A5 ED     LDA ram_00ED
C - - - - - 0x0025FD 01:A5ED: C9 0B     CMP #$0B
C - - - - - 0x0025FF 01:A5EF: D0 D5     BNE bra_A5C6_loop
C - - - - - 0x002601 01:A5F1: 20 A3 89  JSR sub_0x0009B3_ожидание_перехода_к_след_диалогу
C - - - - - 0x002604 01:A5F4: A9 44     LDA #$43      ; адрес ppu для затирания текста
C - - - - - 0x002606 01:A5F6: 85 E6     STA ram_00E6
C - - - - - 0x002608 01:A5F8: A9 22     LDA #$22
C - - - - - 0x00260A 01:A5FA: 85 E7     STA ram_00E7
C - - - - - 0x00260C 01:A5FC: A0 08     LDY #$08
C - - - - - 0x00260E 01:A5FE: A2 18     LDX #$1B      ; количество символов в буфере
C - - - - - 0x002610 01:A600: 20 E8 98  JSR sub_0x0018F8_затереть_часть_экрана
C - - - - - 0x002613 01:A603: A9 00     LDA #$00
C - - - - - 0x002615 01:A605: 85 EA     STA ram_00EA
C - - - - - 0x002617 01:A607: 4C C6 A5  JMP loc_A5C6_следующий_экран_имен_игроков_с_новым_уровнем
bra_A60A_закончить:
C - - - - - 0x00261A 01:A60A: 20 A3 89  JSR sub_0x0009B3_ожидание_перехода_к_след_диалогу
C - - - - - 0x00261D 01:A60D: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
bra_A610_RTS:
C - - - - - 0x002620 01:A610: 60        RTS



sub_A611:
C - - - - - 0x002621 01:A611: 85 EB     STA ram_00EB
bra_A613_loop:
C - - - - - 0x002623 01:A613: A5 ED     LDA ram_00ED
C - - - - - 0x002625 01:A615: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x002628 01:A618: A0 00     LDY #con_plr_id
C - - - - - 0x00262A 01:A61A: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x00262C 01:A61C: 20 13 B0  JSR sub_B013_чтение_опыта_из_оперативки_для_игрока
C - - - - - 0x00262F 01:A61F: 20 2E B0  JSR sub_B02E
C - - - - - 0x002632 01:A622: A0 03     LDY #con_plr_lvl
C - - - - - 0x002634 01:A624: D1 34     CMP (ram_plr_data),Y
C - - - - - 0x002636 01:A626: F0 0D     BEQ bra_A635
C - - - - - 0x002638 01:A628: 91 34     STA (ram_plr_data),Y
C - - - - - 0x00263A 01:A62A: A0 00     LDY #con_plr_id
C - - - - - 0x00263C 01:A62C: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x00263E 01:A62E: A6 EC     LDX ram_00EC
C - - - - - 0x002640 01:A630: 9D 56 06  STA ram_0656,X
C - - - - - 0x002643 01:A633: E6 EC     INC ram_00EC
bra_A635:
C - - - - - 0x002645 01:A635: E6 ED     INC ram_00ED
C - - - - - 0x002647 01:A637: C6 EB     DEC ram_00EB
C - - - - - 0x002649 01:A639: D0 D8     BNE bra_A613_loop
C - - - - - 0x00264B 01:A63B: 60        RTS



loc_A64C:
sub_0x00265C:
C D - - - - 0x00265C 01:A64C: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - - 0x00265F 01:A64F: 20 7F 9B  JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
loc_A652:
C D - - - - 0x002662 01:A652: A6 26     LDX ram_матч
C - - - - - 0x002664 01:A654: BD 93 B3  LDA tbl_B393_cutscene_coach_advice,X
                                        CLC
                                        ADC #$44
C - - - - - 0x002667 01:A657: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - - 0x00266A 01:A65A: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - - 0x00266D 01:A65D: A9 01     LDA #con_BF00_01
C - - - - - 0x00266F 01:A65F: 20 20 89  JSR sub_0x000930
bra_A662:
C - - - - - 0x002672 01:A662: A0 D0     LDY #< tbl_ADD0_курсор_тренера
C - - - - - 0x002674 01:A664: A2 AD     LDX #> tbl_ADD0_курсор_тренера
C - - - - - 0x002676 01:A666: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - - 0x002679 01:A669: 20 E8 9B  JSR sub_0x001BF8
C - - - - - 0x00267C 01:A66C: A0 73     LDY #< tbl_A673_опции
C - - - - - 0x00267E 01:A66E: A2 A6     LDX #> tbl_A673_опции
C - - - - - 0x002680 01:A670: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок



tbl_A673_опции:
- D - I - - 0x002683 01:A673: 7B A6     .word ofs_005_A67B_00_advice
- D - I - - 0x002685 01:A675: 9F A6     .word ofs_005_A69F_01_score_memo
- D - I - - 0x002687 01:A677: BE A6     .word ofs_005_A6BE_02_options
- D - I - - 0x002689 01:A679: C4 A6     .word ofs_005_A6C4_03_kickoff



ofs_005_A67B_00_advice:
C - J - - - 0x00268B 01:A67B: A6 26     LDA ram_матч
                                        CLC
                                        ADC #$23
C - - - - - 0x002690 01:A680: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
bra_A683_кнопка_не_нажата:
C - - - - - 0x002693 01:A683: A9 01     LDA #$01
C - - - - - 0x002695 01:A685: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002698 01:A688: A5 4D     LDA ram_004D
C - - - - - 0x00269A 01:A68A: 05 4E     ORA ram_004E
C - - - - - 0x00269C 01:A68C: F0 D4     BEQ bra_A662
C - - - - - 0x00269E 01:A68E: A5 1E     LDA ram_btn_press
C - - - - - 0x0026A0 01:A690: 29 10     AND #con_btn_Start
C - - - - - 0x0026A2 01:A692: F0 EF     BEQ bra_A683_кнопка_не_нажата
C - - - - - 0x0026A4 01:A694: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x0026A7 01:A697: A9 02     LDA #$02
C - - - - - 0x0026A9 01:A699: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0026AC 01:A69C: 4C 52 A6  JMP loc_A652



ofs_005_A69F_01_score_memo:
C - J - - - 0x0026AF 01:A69F: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x0026B2 01:A6A2: A6 26     LDX ram_матч
C - - - - - 0x0026B4 01:A6A4: BD D7 B3  LDA tbl_B3D7_cutscene_score_memo,X
                                        CLC
                                        ADC #$55
                                        PHA
C - - - - - 0x0026B7 01:A6A7: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - - 0x0026BA 01:A6AA: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - - 0x0026BD 01:A6AD: 20 1E A0  JSR sub_A01E_генерация_пароля
C - - - - - 0x0026C0 01:A6B0: A9 4E     PLA
                                        CLC
                                        ADC #$01
C - - - - - 0x0026C2 01:A6B2: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - - 0x0026C5 01:A6B5: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - - 0x0026C8 01:A6B8: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x0026CB 01:A6BB: 4C 4C A6  JMP loc_A64C



ofs_005_A6BE_02_options:
C - J - - - 0x0026CE 01:A6BE: 20 21 A7  JSR sub_A721_экран_с_опциями_команды
C - - - - - 0x0026D1 01:A6C1: 4C 4C A6  JMP loc_A64C



ofs_005_A6C4_03_kickoff:
C - J - - - 0x0026D4 01:A6C4: A6 26     LDX ram_матч
C - - - - - 0x0026D6 01:A6C6: BD 1B B4  LDA tbl_B41B_cutscene_team_before_match,X
                                        CLC
                                        ADC #$5E
C - - - - - 0x0026D9 01:A6C9: 20 64 84  JSR sub_0x000474_воспроизвести_катсцену
C - - - - - 0x0026DC 01:A6CC: 20 A9 82  JSR sub_0x0002B9_ожидание_завершения_катсцены
C - - - - - 0x0026DF 01:A6CF: 4C 15 A7  JSR sub_0x001BB0
                                        RTS



loc_0x0026E2_перерыв:
    LDA #$55
    STA ram_звук
    JSR sub_0x0018B0_очистка_двух_nametable
    JSR sub_0x001B8F_очистить_обе_памяти_спрайтов
    LDX ram_матч
    LDY #$01
    LDA ram_голы
    CMP ram_голы + $01
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



loc_A6E8_loop:
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
    JMP loc_A6E8_loop
bra_A710_продолжить_матч:
    LDA #$31
    STA ram_звук
    JSR sub_0x001BB0
    RTS



sub_A719:
C - - - - - 0x002729 01:A719: A0 83     LDY #< tbl_B583_опции_японии
C - - - - - 0x00272B 01:A71B: A2 B5     LDX #> tbl_B583_опции_японии
C - - - - - 0x00272D 01:A71D: 20 AB 97  JSR sub_0x0017BB
C - - - - - 0x002730 01:A720: 60        RTS



sub_A721_экран_с_опциями_команды:
loc_A721_экран_с_опциями_команды:
C D - - - - 0x002731 01:A721: 20 A0 9B  JSR sub_0x001BB0
C - - - - - 0x002734 01:A724: A2 1F     LDX #$1F
C - - - - - 0x002736 01:A726: A0 2E     LDY #$2E
C - - - - - 0x002738 01:A728: 20 6F 9B  JSR sub_0x001B7F_запись_первых_двух_банков_спрайтов
C - - - - - 0x00273B 01:A72B: A9 00     LDA #$00
C - - - - - 0x00273D 01:A72D: 85 7B     STA ram_007B
; bzk optimize
                                       ;LDA #con_BF00_00
C - - - - - 0x00273F 01:A72F: 20 20 89  JSR sub_0x000930
; выбор банка фона
                                        LDA ram_матч
                                        ASL
                                        ADC #$80
C - - - - - 0x002744 01:A734: 85 8E     STA ram_008E
C - - - - - 0x002746 01:A736: A9 2E     LDA #con_chr_bank + $2E
C - - - - - 0x002748 01:A738: 85 8F     STA ram_008F
C - - - - - 0x00274A 01:A73A: A5 2A     LDA ram_твоя_команда
C - - - - - 0x00274C 01:A73C: C9 02     CMP #$02
C - - - - - 0x00274E 01:A73E: D0 03     BNE bra_A743_это_не_япония
C - - - - - 0x002750 01:A740: 4C 4E A8  JMP loc_A84E_экран_опций_японии
bra_A743_это_не_япония:
C - - - - - 0x002753 01:A743: A0 3D     LDY #< tbl_B43D_экран_с_опциями_без_запасных
C - - - - - 0x002755 01:A745: A2 B4     LDX #> tbl_B43D_экран_с_опциями_без_запасных
C - - - - - 0x002757 01:A747: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - - 0x00275A 01:A74A: A9 00     LDA #$00
C - - - - - 0x00275C 01:A74C: 20 E9 AD  JSR sub_ADE9
C - - - - - 0x00275F 01:A74F: A9 88     LDA #$A6      ; адрес ppu имен основных игроков
C - - - - - 0x002761 01:A751: 85 E6     STA ram_00E6
C - - - - - 0x002763 01:A753: A9 20     LDA #$20
C - - - - - 0x002765 01:A755: 85 E7     STA ram_00E7
C - - - - - 0x002767 01:A757: 20 AC AE  JSR sub_AEAC
C - - - - - 0x00276A 01:A75A: A9 00     LDA #$08
C - - - - - 0x00276C 01:A75C: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - - 0x00276F 01:A75F: A0 FC     LDY #$FC
bra_A761_loop:
C - - - - - 0x002771 01:A761: B9 A2 AC  LDA tbl_AD9E_курсор_опции_сан_паулу_нанкацу - $FC,Y
C - - - - - 0x002774 01:A764: 99 68 04  STA ram_copy_spr_Y,Y
C - - - - - 0x002777 01:A767: C8        INY
C - - - - - 0x002778 01:A768: D0 F7     BNE bra_A761_loop
C - - - - - 0x00277A 01:A76A: A9 03     LDA #$03
C - - - - - 0x00277C 01:A76C: A2 39     LDX #$39
C - - - - - 0x00277E 01:A76E: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
loc_A771:
C D - - - - 0x002781 01:A771: A9 FC     LDA #$FC
C - - - - - 0x002783 01:A773: A2 38     LDX #$38
C - - - - - 0x002785 01:A775: A0 78     LDY #$78
C - - - - - 0x002787 01:A777: 20 E3 9B  JSR sub_0x001BF3
C - - - - - 0x00278A 01:A77A: A0 81     LDY #< tbl_A781_опции_сан_паулу_нанкацу
C - - - - - 0x00278C 01:A77C: A2 A7     LDX #> tbl_A781_опции_сан_паулу_нанкацу
C - - - - - 0x00278E 01:A77E: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок



tbl_A781_опции_сан_паулу_нанкацу:
- D - I - - 0x002791 01:A781: 8B A7     .word ofs_006_A78B_опция_formation_сан_паулу_нанкацу
- D - I - - 0x002793 01:A783: AC A7     .word ofs_006_A7AC_опция_defense_сан_паулу_нанкацу
- D - I - - 0x002795 01:A785: C5 A7     .word ofs_006_A7C5_опция_lineup_сан_паулу_нанкацу
- D - I - - 0x002797 01:A787: DD AA     .word ofs_006_AADD_экран_status
- D - I - - 0x002799 01:A789: 73 AA     .word sub_0x001A00_выход_из_экрана



ofs_006_A78B_опция_formation_сан_паулу_нанкацу:
C - J - - - 0x00279B 01:A78B: A0 EB     LDY #< tbl_B6EB_расстановка_сан_паулу_нанкацу
C - - - - - 0x00279D 01:A78D: A2 B6     LDX #> tbl_B6EB_расстановка_сан_паулу_нанкацу
C - - - - - 0x00279F 01:A78F: 20 AB 97  JSR sub_0x0017BB
; X курсора
C - - - - - 0x0027A2 01:A792: A2 90     LDX #$98
C - - - - - 0x0027A4 01:A794: 20 1E AE  JSR sub_AE1E
; смещение спрайтов миникарты
C - - - - - 0x0027A7 01:A797: A9 00     LDA #$08
C - - - - - 0x0027A9 01:A799: 20 3A AE  JSR sub_AE3A_обновить_расстановку_миникарты
C - - - - - 0x0027AC 01:A79C: A9 F8     LDA #$F8
C - - - - - 0x0027AE 01:A79E: 8D 60 05  STA ram_0560
C - - - - - 0x0027B1 01:A7A1: 20 77 AA  JSR sub_AA77_повторная_отрисовка_опций
; Y курсора
C - - - - - 0x0027B4 01:A7A4: A9 38     LDA #$38
C - - - - - 0x0027B6 01:A7A6: 8D 64 05  STA ram_0564
C - - - - - 0x0027B9 01:A7A9: 4C 71 A7  JMP loc_A771



ofs_006_A7AC_опция_defense_сан_паулу_нанкацу:
C - J - - - 0x0027BC 01:A7AC: A0 90     LDY #< tbl_B790_защита_сан_паулу_нанкацу
C - - - - - 0x0027BE 01:A7AE: A2 B7     LDX #> tbl_B790_защита_сан_паулу_нанкацу
C - - - - - 0x0027C0 01:A7B0: 20 AB 97  JSR sub_0x0017BB
C - - - - - 0x0027C3 01:A7B3: A0 A2     LDY #< tbl_ADA2_курсор_защиты_сан_паулу_нанкацу
C - - - - - 0x0027C5 01:A7B5: A2 AD     LDX #> tbl_ADA2_курсор_защиты_сан_паулу_нанкацу
C - - - - - 0x0027C7 01:A7B7: 20 77 AE  JSR sub_AE77
C - - - - - 0x0027CA 01:A7BA: 20 77 AA  JSR sub_AA77_повторная_отрисовка_опций
C - - - - - 0x0027CD 01:A7BD: A9 48     LDA #$48
C - - - - - 0x0027CF 01:A7BF: 8D 64 05  STA ram_0564
C - - - - - 0x0027D2 01:A7C2: 4C 71 A7  JMP loc_A771



ofs_006_A7C5_опция_lineup_сан_паулу_нанкацу:
C - J - - - 0x0027D5 01:A7C5: A9 58     LDA #$58
C - - - - - 0x0027D7 01:A7C7: 8D 64 05  STA ram_0564
C - - - - - 0x0027DA 01:A7CA: A9 94     LDA #$94
C - - - - - 0x0027DC 01:A7CC: 85 4C     STA ram_004C
loc_A7CE:
C D - - - - 0x0027DE 01:A7CE: A0 A8     LDY #< tbl_ADA8_курсор_замены_1
C - - - - - 0x0027E0 01:A7D0: A2 AD     LDX #> tbl_ADA8_курсор_замены_1
C - - - - - 0x0027E2 01:A7D2: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
bra_A7D5_loop:
C - - - - - 0x0027E5 01:A7D5: A9 01     LDA #$01
C - - - - - 0x0027E7 01:A7D7: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0027EA 01:A7DA: 20 C9 9C  JSR sub_0x001CD9
C - - - - - 0x0027ED 01:A7DD: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x0027EF 01:A7DF: 70 5B     BVS bra_A83C_отменить_выбор
; con_btn_A
C - - - - - 0x0027F1 01:A7E1: 10 F2     BPL bra_A7D5_loop
C - - - - - 0x0027F3 01:A7E3: A9 01     LDA #$01
C - - - - - 0x0027F5 01:A7E5: 8D 62 05  STA ram_0562
C - - - - - 0x0027F8 01:A7E8: 20 D3 9C  JSR sub_0x001CE3
C - - - - - 0x0027FB 01:A7EB: A0 AE     LDY #< tbl_ADAE_курсор_замены_2
C - - - - - 0x0027FD 01:A7ED: A2 AD     LDX #> tbl_ADAE_курсор_замены_2
C - - - - - 0x0027FF 01:A7EF: AD 60 05  LDA ram_0560
C - - - - - 0x002802 01:A7F2: 20 3C 9C  JSR sub_0x001C4C_отобразить_курсор_со_смещением
bra_A7F5_кнопки_не_нажаты:
C - - - - - 0x002805 01:A7F5: A9 01     LDA #$01
C - - - - - 0x002807 01:A7F7: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x00280A 01:A7FA: 20 C9 9C  JSR sub_0x001CD9
C - - - - - 0x00280D 01:A7FD: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x00280F 01:A7FF: 70 3B     BVS bra_A83C_отменить_выбор
; con_btn_A
C - - - - - 0x002811 01:A801: 10 F2     BPL bra_A7F5_кнопки_не_нажаты
C - - - - - 0x002813 01:A803: AC 60 05  LDY ram_0560
C - - - - - 0x002816 01:A806: A2 00     LDX #$00
C - - - - - 0x002818 01:A808: 20 08 9D  JSR sub_0x001D18
C - - - - - 0x00281B 01:A80B: A5 34     LDA ram_plr_data
C - - - - - 0x00281D 01:A80D: 85 E6     STA ram_00E6
C - - - - - 0x00281F 01:A80F: A5 35     LDA ram_plr_data + $01
C - - - - - 0x002821 01:A811: 85 E7     STA ram_00E7
C - - - - - 0x002823 01:A813: AC 5C 05  LDY ram_055C
C - - - - - 0x002826 01:A816: A2 00     LDX #$00
C - - - - - 0x002828 01:A818: 20 08 9D  JSR sub_0x001D18
C - - - - - 0x00282B 01:A81B: 20 67 AF  JSR sub_AF67
C - - - - - 0x00282E 01:A81E: A9 88     LDA #$A6      ; адрес ppu имен игроков после замены
C - - - - - 0x002830 01:A820: 85 E6     STA ram_00E6
C - - - - - 0x002832 01:A822: A9 20     LDA #$20
C - - - - - 0x002834 01:A824: 85 E7     STA ram_00E7
C - - - - - 0x002836 01:A826: 20 AC AE  JSR sub_AEAC
C - - - - - 0x002839 01:A829: A9 F8     LDA #$F8
C - - - - - 0x00283B 01:A82B: 8D 5C 05  STA ram_055C
C - - - - - 0x00283E 01:A82E: 8D 60 05  STA ram_0560
C - - - - - 0x002841 01:A831: A9 00     LDA #$00
C - - - - - 0x002843 01:A833: 8D 62 05  STA ram_0562
C - - - - - 0x002846 01:A836: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - - 0x002849 01:A839: 4C CE A7  JMP loc_A7CE
bra_A83C_отменить_выбор:
C - - - - - 0x00284C 01:A83C: A9 00     LDA #$00
C - - - - - 0x00284E 01:A83E: 85 4C     STA ram_004C
C - - - - - 0x002850 01:A840: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - - 0x002853 01:A843: A9 F8     LDA #$F8
C - - - - - 0x002855 01:A845: 8D 5C 05  STA ram_055C
C - - - - - 0x002858 01:A848: 8D 60 05  STA ram_0560
C - - - - - 0x00285B 01:A84B: 4C 71 A7  JMP loc_A771



loc_A84E_экран_опций_японии:
C D - - - - 0x00285E 01:A84E: A0 51     LDY #< tbl_B451_экран_с_опциями_с_запасными
C - - - - - 0x002860 01:A850: A2 B4     LDX #> tbl_B451_экран_с_опциями_с_запасными
C - - - - - 0x002862 01:A852: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - - 0x002865 01:A855: A9 FC     LDA #$FC
C - - - - - 0x002867 01:A857: 20 E9 AD  JSR sub_ADE9
C - - - - - 0x00286A 01:A85A: A9 85     LDA #$A2      ; адрес ppu имен основных игроков
C - - - - - 0x00286C 01:A85C: 85 E6     STA ram_00E6
C - - - - - 0x00286E 01:A85E: A9 20     LDA #$20
C - - - - - 0x002870 01:A860: 85 E7     STA ram_00E7
C - - - - - 0x002872 01:A862: 20 AC AE  JSR sub_AEAC
C - - - - - 0x002875 01:A865: A9 99     LDA #$B7      ; адрес ppu имен запасных игроков
C - - - - - 0x002877 01:A867: 85 E6     STA ram_00E6
C - - - - - 0x002879 01:A869: A9 20     LDA #$20
C - - - - - 0x00287B 01:A86B: 85 E7     STA ram_00E7
C - - - - - 0x00287D 01:A86D: 20 BE AE  JSR sub_AEBE
C - - - - - 0x002880 01:A870: A9 D8     LDA #$D8
C - - - - - 0x002882 01:A872: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - - 0x002885 01:A875: 20 A1 B0  JSR sub_B0A1_отобразить_количество_замен
C - - - - - 0x002888 01:A878: 20 7F AA  JSR sub_AA7F
C - - - - - 0x00288B 01:A87B: A0 FC     LDY #$FC
bra_A87D_loop:
C - - - - - 0x00288D 01:A87D: B9 B8 AC  LDA tbl_ADB4 - $FC,Y
C - - - - - 0x002890 01:A880: 99 68 04  STA ram_copy_spr_Y,Y
C - - - - - 0x002893 01:A883: C8        INY
C - - - - - 0x002894 01:A884: D0 F7     BNE bra_A87D_loop
C - - - - - 0x002896 01:A886: A9 03     LDA #$03
C - - - - - 0x002898 01:A888: A2 39     LDX #$39
C - - - - - 0x00289A 01:A88A: 20 7A 99  JSR sub_0x00198A_запись_палитры_фона_и_спрайтов
loc_A88D:
C D - - - - 0x00289D 01:A88D: A9 FC     LDA #$FC
C - - - - - 0x00289F 01:A88F: A2 38     LDX #$38
C - - - - - 0x0028A1 01:A891: A0 78     LDY #$78
C - - - - - 0x0028A3 01:A893: 20 E3 9B  JSR sub_0x001BF3
C - - - - - 0x0028A6 01:A896: A0 9D     LDY #< tbl_A89D_опции_японии
C - - - - - 0x0028A8 01:A898: A2 A8     LDX #> tbl_A89D_опции_японии
C - - - - - 0x0028AA 01:A89A: 4C 28 9C  JMP loc_0x001C38_непрямой_прыжок



tbl_A89D_опции_японии:
    .word ofs_006_A8A7_опция_formation_япония
    .word ofs_006_A8CA_опция_defense_япония
    .word ofs_006_A8E5_опция_lineup_япония
    .word ofs_006_AADD_экран_status
    .word sub_0x001A00_выход_из_экрана



ofs_006_A8A7_опция_formation_япония:
C - J - - - 0x0028B7 01:A8A7: A0 EB     LDY #< tbl_B791_расстановка_япония
C - - - - - 0x0028B9 01:A8A9: A2 B6     LDX #> tbl_B791_расстановка_япония
C - - - - - 0x0028BD 01:A8AD: 20 AD 97  JSR sub_0x0017BB
C - - - - - 0x0028C0 01:A8B0: A2 68     LDX #$68
C - - - - - 0x0028C2 01:A8B2: 20 1E AE  JSR sub_AE1E
C - - - - - 0x0028C5 01:A8B5: A9 D8     LDA #$D8
C - - - - - 0x0028C7 01:A8B7: 20 3A AE  JSR sub_AE3A_обновить_расстановку_миникарты
C - - - - - 0x0028CA 01:A8BA: A9 F8     LDA #$F8
C - - - - - 0x0028CC 01:A8BC: 8D 60 05  STA ram_0560
C - - - - - 0x0028CF 01:A8BF: 20 19 A7  JSR sub_A719
C - - - - - 0x0028D2 01:A8C2: A9 38     LDA #$38
C - - - - - 0x0028D4 01:A8C4: 8D 64 05  STA ram_0564
C - - - - - 0x0028D7 01:A8C7: 4C 8D A8  JMP loc_A88D



ofs_006_A8CA_опция_defense_япония:
C - J - - - 0x0028DA 01:A8CA: A0 90     LDY #< tbl_B792_защита_япония
C - - - - - 0x0028DC 01:A8CC: A2 B7     LDX #> tbl_B792_защита_япония
C - - - - - 0x0028E0 01:A8D0: 20 AD 97  JSR sub_0x0017BB
C - - - - - 0x0028E3 01:A8D3: A0 B8     LDY #< tbl_ADB8_курсор_защиты_японии
C - - - - - 0x0028E5 01:A8D5: A2 AD     LDX #> tbl_ADB8_курсор_защиты_японии
C - - - - - 0x0028E7 01:A8D7: 20 77 AE  JSR sub_AE77
C - - - - - 0x0028EA 01:A8DA: 20 19 A7  JSR sub_A719
C - - - - - 0x0028ED 01:A8DD: A9 48     LDA #$48
C - - - - - 0x0028EF 01:A8DF: 8D 64 05  STA ram_0564
C - - - - - 0x0028F2 01:A8E2: 4C 8D A8  JMP loc_A88D



ofs_006_A8E5_опция_lineup_япония:
C - J - - - 0x0028F5 01:A8E5: A9 58     LDA #$58
C - - - - - 0x0028F7 01:A8E7: 8D 64 05  STA ram_0564
C - - - - - 0x0028FA 01:A8EA: A9 94     LDA #$94
C - - - - - 0x0028FC 01:A8EC: 85 4C     STA ram_004C
loc_A8EE:
C D - - - - 0x0028FE 01:A8EE: A0 BE     LDY #< tbl_ADBE_курсор_замены_игроков_японии_1
C - - - - - 0x002900 01:A8F0: A2 AD     LDX #> tbl_ADBE_курсор_замены_игроков_японии_1
C - - - - - 0x002902 01:A8F2: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - - 0x002905 01:A8F5: AD 50 04  LDA ram_счетчик_замен
C - - - - - 0x002908 01:A8F8: C9 03     CMP #$03
C - - - - - 0x00290A 01:A8FA: 90 04     BCC bra_A900
C - - - - - 0x00290C 01:A8FC: A9 B8     LDA #$B8
C - - - - - 0x00290E 01:A8FE: 85 E6     STA ram_00E6
bra_A900:
bra_A900_loop:
C - - - - - 0x002910 01:A900: A9 01     LDA #$01
C - - - - - 0x002912 01:A902: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002915 01:A905: 20 C9 9C  JSR sub_0x001CD9
C - - - - - 0x002918 01:A908: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x00291A 01:A90A: 50 03     BVC bra_A90F
C - - - - - 0x00291C 01:A90C: 4C 5F AA  JMP loc_AA5F
bra_A90F:
C - - - - - 0x00291F 01:A90F: 10 EF     BPL bra_A900_loop
C - - - - - 0x002921 01:A911: A9 01     LDA #$01
C - - - - - 0x002923 01:A913: 8D 62 05  STA ram_0562
C - - - - - 0x002926 01:A916: AD 60 05  LDA ram_0560
C - - - - - 0x002929 01:A919: C9 C8     CMP #$C8
C - - - - - 0x00292B 01:A91B: 90 03     BCC bra_A920
C - - - - - 0x00292D 01:A91D: 4C C0 A9  JMP loc_A9C0
bra_A920:
C - - - - - 0x002930 01:A920: A9 01     LDA #$01
C - - - - - 0x002932 01:A922: 20 D3 9C  JSR sub_0x001CE3
C - - - - - 0x002935 01:A925: A0 C4     LDY #< tbl_ADC4_курсор_замены_игроков_японии_2
C - - - - - 0x002937 01:A927: A2 AD     LDX #> tbl_ADC4_курсор_замены_игроков_японии_2
C - - - - - 0x002939 01:A929: AD 60 05  LDA ram_0560
C - - - - - 0x00293C 01:A92C: 20 3C 9C  JSR sub_0x001C4C_отобразить_курсор_со_смещением
C - - - - - 0x00293F 01:A92F: AD 50 04  LDA ram_счетчик_замен
C - - - - - 0x002942 01:A932: C9 03     CMP #$03
C - - - - - 0x002944 01:A934: B0 0E     BCS bra_A944
C - - - - - 0x002946 01:A936: A9 B8     LDA #$B8
C - - - - - 0x002948 01:A938: 85 E6     STA ram_00E6
C - - - - - 0x00294A 01:A93A: A5 E9     LDA ram_00E9
C - - - - - 0x00294C 01:A93C: 85 EB     STA ram_00EB
C - - - - - 0x00294E 01:A93E: 85 EA     STA ram_00EA
C - - - - - 0x002950 01:A940: A9 FF     LDA #$FF
C - - - - - 0x002952 01:A942: 85 E9     STA ram_00E9
bra_A944:
bra_A944_loop:
C - - - - - 0x002954 01:A944: A9 01     LDA #$01
C - - - - - 0x002956 01:A946: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002959 01:A949: 20 C9 9C  JSR sub_0x001CD9
C - - - - - 0x00295C 01:A94C: AD 50 04  LDA ram_счетчик_замен
C - - - - - 0x00295F 01:A94F: C9 03     CMP #$03
C - - - - - 0x002961 01:A951: B0 61     BCS bra_A9B4
C - - - - - 0x002963 01:A953: A5 1E     LDA ram_btn_press
C - - - - - 0x002965 01:A955: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - - 0x002967 01:A957: F0 5B     BEQ bra_A9B4
C - - - - - 0x002969 01:A959: 4A        LSR
C - - - - - 0x00296A 01:A95A: B0 1B     BCS bra_A977
C - - - - - 0x00296C 01:A95C: A9 20     LDA #$08      ; X курсора при замене игроков японцев слева
C - - - - - 0x00296E 01:A95E: 8D 5F 05  STA ram_055F
C - - - - - 0x002971 01:A961: A9 B8     LDA #$B8
C - - - - - 0x002973 01:A963: 85 E6     STA ram_00E6
C - - - - - 0x002975 01:A965: A5 EA     LDA ram_00EA
C - - - - - 0x002977 01:A967: 85 EB     STA ram_00EB
C - - - - - 0x002979 01:A969: CD 5C 05  CMP ram_055C
C - - - - - 0x00297C 01:A96C: D0 46     BNE bra_A9B4
- - - - - - 0x00297E 01:A96E: 18        CLC
- - - - - - 0x00297F 01:A96F: 69 10     ADC #$10
- - - - - - 0x002981 01:A971: 8D 5C 05  STA ram_055C
- - - - - - 0x002984 01:A974: 4C B4 A9  JMP loc_A9B4
bra_A977:
C - - - - - 0x002987 01:A977: A9 00     LDA #$00
C - - - - - 0x002989 01:A979: 20 D3 9C  JSR sub_0x001CE3
C - - - - - 0x00298C 01:A97C: A9 C0     LDA #$B0      ; X курсора при замене игроков японцев справа
C - - - - - 0x00298E 01:A97E: 8D 5F 05  STA ram_055F
C - - - - - 0x002991 01:A981: A9 00     LDA #$00
C - - - - - 0x002993 01:A983: 85 EB     STA ram_00EB
C - - - - - 0x002995 01:A985: A9 98     LDA #$98
C - - - - - 0x002997 01:A987: 85 E6     STA ram_00E6
C - - - - - 0x002999 01:A989: AD 5C 05  LDA ram_055C
C - - - - - 0x00299C 01:A98C: C9 A8     CMP #$A8
C - - - - - 0x00299E 01:A98E: 90 05     BCC bra_A995
C - - - - - 0x0029A0 01:A990: A9 98     LDA #$98
C - - - - - 0x0029A2 01:A992: 8D 5C 05  STA ram_055C
bra_A995:
loc_A995:
C D - - - - 0x0029A5 01:A995: AC 5C 05  LDY ram_055C
C - - - - - 0x0029A8 01:A998: AE 5F 05  LDX ram_055F
C - - - - - 0x0029AB 01:A99B: 20 BF AA  JSR sub_AABF
C - - - - - 0x0029AE 01:A99E: 90 12     BCC bra_A9B2
C - - - - - 0x0029B0 01:A9A0: AD 5C 05  LDA ram_055C
C - - - - - 0x0029B3 01:A9A3: 18        CLC
C - - - - - 0x0029B4 01:A9A4: 69 10     ADC #$10
C - - - - - 0x0029B6 01:A9A6: C9 A8     CMP #$A8
C - - - - - 0x0029B8 01:A9A8: 90 02     BCC bra_A9AC
- - - - - - 0x0029BA 01:A9AA: A9 28     LDA #$28
bra_A9AC:
C - - - - - 0x0029BC 01:A9AC: 8D 5C 05  STA ram_055C
C - - - - - 0x0029BF 01:A9AF: 4C 95 A9  JMP loc_A995
bra_A9B2:
C - - - - - 0x0029C2 01:A9B2: A0 F4     LDY #$F4
bra_A9B4:
loc_A9B4:
C - - - - - 0x0029C4 01:A9B4: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x0029C6 01:A9B6: 50 03     BVC bra_A9BB
C - - - - - 0x0029C8 01:A9B8: 4C 5F AA  JMP loc_AA5F
bra_A9BB:
C - - - - - 0x0029CB 01:A9BB: 10 87     BPL bra_A944_loop
C - - - - - 0x0029CD 01:A9BD: 4C FB A9  JMP loc_A9FB
loc_A9C0:
C D - - - - 0x0029D0 01:A9C0: A0 CA     LDY #< tbl_ADCA_курсор_замены_киперов_японии
C - - - - - 0x0029D2 01:A9C2: A2 AD     LDX #> tbl_ADCA_курсор_замены_киперов_японии
C - - - - - 0x0029D4 01:A9C4: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - - 0x0029D7 01:A9C7: A9 FF     LDA #$FF
C - - - - - 0x0029D9 01:A9C9: 85 E9     STA ram_00E9
C - - - - - 0x0029DB 01:A9CB: A0 A8     LDY #$A8
C - - - - - 0x0029DD 01:A9CD: A2 C0     LDX #$C0
C - - - - - 0x0029DF 01:A9CF: 20 BF AA  JSR sub_AABF
C - - - - - 0x0029E2 01:A9D2: 90 0E     BCC bra_A9E2
C - - - - - 0x0029E4 01:A9D4: A9 C8     LDA #$C8      ; если первый запасной кипер уже забанен
C - - - - - 0x0029E6 01:A9D6: 8D 5C 05  STA ram_055C
C - - - - - 0x0029E9 01:A9D9: A0 B8     LDY #$B8
C - - - - - 0x0029EB 01:A9DB: A2 C0     LDX #$C0
C - - - - - 0x0029ED 01:A9DD: 20 BF AA  JSR sub_AABF
C - - - - - 0x0029F0 01:A9E0: B0 7D     BCS bra_AA5F
bra_A9E2:
C - - - - - 0x0029F2 01:A9E2: A0 F4     LDY #$F4
bra_A9E4_loop:
C - - - - - 0x0029F4 01:A9E4: A9 01     LDA #$01
C - - - - - 0x0029F6 01:A9E6: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x0029F9 01:A9E9: 20 C9 9C  JSR sub_0x001CD9
C - - - - - 0x0029FC 01:A9EC: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x0029FE 01:A9EE: 70 6F     BVS bra_AA5F
; con_btn_A
C - - - - - 0x002A00 01:A9F0: 10 F2     BPL bra_A9E4_loop
C - - - - - 0x002A02 01:A9F2: AD 5C 05  LDA ram_055C
C - - - - - 0x002A05 01:A9F5: 38        SEC
C - - - - - 0x002A06 01:A9F6: E9 10     SBC #$10
C - - - - - 0x002A08 01:A9F8: 8D 5C 05  STA ram_055C
loc_A9FB:
C D - - - - 0x002A0B 01:A9FB: AC 60 05  LDY ram_0560
C - - - - - 0x002A0E 01:A9FE: AE 63 05  LDX ram_0563
C - - - - - 0x002A11 01:AA01: 20 08 9D  JSR sub_0x001D18
C - - - - - 0x002A14 01:AA04: A5 34     LDA ram_plr_data
C - - - - - 0x002A16 01:AA06: 85 E6     STA ram_00E6
C - - - - - 0x002A18 01:AA08: A5 35     LDA ram_plr_data + $01
C - - - - - 0x002A1A 01:AA0A: 85 E7     STA ram_00E7
C - - - - - 0x002A1C 01:AA0C: AC 5C 05  LDY ram_055C
C - - - - - 0x002A1F 01:AA0F: AE 5F 05  LDX ram_055F
C - - - - - 0x002A22 01:AA12: 20 08 9D  JSR sub_0x001D18
C - - - - - 0x002A25 01:AA15: 20 67 AF  JSR sub_AF67
C - - - - - 0x002A28 01:AA18: A9 F8     LDA #$F8
C - - - - - 0x002A2A 01:AA1A: 8D 5C 05  STA ram_055C
C - - - - - 0x002A2D 01:AA1D: 8D 60 05  STA ram_0560
C - - - - - 0x002A30 01:AA20: AD 5F 05  LDA ram_055F
C - - - - - 0x002A33 01:AA23: 10 17     BPL bra_AA3C
C - - - - - 0x002A35 01:AA25: A5 27     LDA ram_номер_тайма
C - - - - - 0x002A37 01:AA27: F0 13     BEQ bra_AA3C
C - - - - - 0x002A39 01:AA29: EE 50 04  INC ram_счетчик_замен
C - - - - - 0x002A3C 01:AA2C: A0 00     LDY #con_plr_id
C - - - - - 0x002A3E 01:AA2E: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002A40 01:AA30: AE 50 04  LDX ram_счетчик_замен
C - - - - - 0x002A43 01:AA33: 9D 50 04  STA ram_забаненный_игрок - $01,X
C - - - - - 0x002A46 01:AA36: 20 A1 B0  JSR sub_B0A1_отобразить_количество_замен
C - - - - - 0x002A49 01:AA39: 20 7F AA  JSR sub_AA7F
bra_AA3C:
C - - - - - 0x002A4C 01:AA3C: A9 85     LDA #$A2      ; адрес ppu основных игроков после замены
C - - - - - 0x002A4E 01:AA3E: 85 E6     STA ram_00E6
C - - - - - 0x002A50 01:AA40: A9 20     LDA #$20
C - - - - - 0x002A52 01:AA42: 85 E7     STA ram_00E7
C - - - - - 0x002A54 01:AA44: 20 AC AE  JSR sub_AEAC
C - - - - - 0x002A57 01:AA47: A9 99     LDA #$B7      ; адрес ppu запасных игроков после замены
C - - - - - 0x002A59 01:AA49: 85 E6     STA ram_00E6
C - - - - - 0x002A5B 01:AA4B: A9 20     LDA #$20
C - - - - - 0x002A5D 01:AA4D: 85 E7     STA ram_00E7
C - - - - - 0x002A5F 01:AA4F: 20 BE AE  JSR sub_AEBE
C - - - - - 0x002A62 01:AA52: A9 00     LDA #$00
C - - - - - 0x002A64 01:AA54: 8D 62 05  STA ram_0562
C - - - - - 0x002A67 01:AA57: A9 D8     LDA #$D8
C - - - - - 0x002A69 01:AA59: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - - 0x002A6C 01:AA5C: 4C EE A8  JMP loc_A8EE
bra_AA5F:
loc_AA5F:
C D - - - - 0x002A6F 01:AA5F: A9 00     LDA #$00
C - - - - - 0x002A71 01:AA61: 85 4C     STA ram_004C
C - - - - - 0x002A73 01:AA63: A9 D8     LDA #$D8
C - - - - - 0x002A75 01:AA65: 20 01 AE  JSR sub_AE01_обновить_расстановку_миникарты
C - - - - - 0x002A78 01:AA68: A9 F8     LDA #$F8
C - - - - - 0x002A7A 01:AA6A: 8D 5C 05  STA ram_055C
C - - - - - 0x002A7D 01:AA6D: 8D 60 05  STA ram_0560
C - - - - - 0x002A80 01:AA70: 4C 8D A8  JMP loc_A88D



sub_AA77_повторная_отрисовка_опций:
; повторно отрисовать опции в меню команды после подтверждения/отмены выбора опции во внутреннем окне
C - - - - - 0x002A87 01:AA77: A0 B3     LDY #< tbl_B4B3_опции_сан_паулу_нанкацу
C - - - - - 0x002A89 01:AA79: A2 B4     LDX #> tbl_B4B3_опции_сан_паулу_нанкацу
C - - - - - 0x002A8B 01:AA7B: 20 AB 97  JSR sub_0x0017BB
C - - - - - 0x002A8E 01:AA7E: 60        RTS



sub_AA7F:
C - - - - - 0x002A8F 01:AA7F: AD 50 04  LDA ram_счетчик_замен
C - - - - - 0x002A92 01:AA82: F0 3A     BEQ bra_AABE_RTS
C - - - - - 0x002A94 01:AA84: A9 28     LDA #$28
C - - - - - 0x002A96 01:AA86: 85 E7     STA ram_00E7
bra_AA88_loop:
C - - - - - 0x002A98 01:AA88: A4 E7     LDY ram_00E7
C - - - - - 0x002A9A 01:AA8A: A2 C0     LDX #$C0
C - - - - - 0x002A9C 01:AA8C: 20 BF AA  JSR sub_AABF
C - - - - - 0x002A9F 01:AA8F: 90 22     BCC bra_AAB3
C - - - - - 0x002AA1 01:AA91: 8A        TXA
C - - - - - 0x002AA2 01:AA92: 0A        ASL
C - - - - - 0x002AA3 01:AA93: 0A        ASL
C - - - - - 0x002AA4 01:AA94: 18        CLC
C - - - - - 0x002AA5 01:AA95: 69 E0     ADC #$E0
C - - - - - 0x002AA7 01:AA97: AA        TAX
C - - - - - 0x002AA8 01:AA98: A5 E7     LDA ram_00E7
C - - - - - 0x002AAA 01:AA9A: C9 A8     CMP #$A8
C - - - - - 0x002AAC 01:AA9C: 90 03     BCC bra_AAA1
C - - - - - 0x002AAE 01:AA9E: 18        CLC
C - - - - - 0x002AAF 01:AA9F: 69 10     ADC #$10
bra_AAA1:
C - - - - - 0x002AB1 01:AAA1: 9D 68 04  STA ram_copy_spr_Y,X
C - - - - - 0x002AB4 01:AAA4: A9 C0     LDA #$AF
C - - - - - 0x002AB6 01:AAA6: 9D 6B 04  STA ram_copy_spr_X,X
C - - - - - 0x002AB9 01:AAA9: A9 72     LDA #$72
C - - - - - 0x002ABB 01:AAAB: 9D 69 04  STA ram_copy_spr_T,X
C - - - - - 0x002ABE 01:AAAE: A9 00     LDA #$00
C - - - - - 0x002AC0 01:AAB0: 9D 6A 04  STA ram_copy_spr_A,X
bra_AAB3:
C - - - - - 0x002AC3 01:AAB3: A5 E7     LDA ram_00E7
C - - - - - 0x002AC5 01:AAB5: 18        CLC
C - - - - - 0x002AC6 01:AAB6: 69 10     ADC #$10
C - - - - - 0x002AC8 01:AAB8: 85 E7     STA ram_00E7
C - - - - - 0x002ACA 01:AABA: C9 B9     CMP #$B9
C - - - - - 0x002ACC 01:AABC: 90 CA     BCC bra_AA88_loop
bra_AABE_RTS:
C - - - - - 0x002ACE 01:AABE: 60        RTS



sub_AABF:
C - - - - - 0x002ACF 01:AABF: 20 08 9D  JSR sub_0x001D18
C - - - - - 0x002AD2 01:AAC2: A2 00     LDX #$00
C - - - - - 0x002AD4 01:AAC4: A0 00     LDY #con_plr_id
C - - - - - 0x002AD6 01:AAC6: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002AD8 01:AAC8: CD 51 04  CMP ram_забаненный_игрок
C - - - - - 0x002ADB 01:AACB: F0 0C     BEQ bra_AAD9
C - - - - - 0x002ADD 01:AACD: E8        INX
C - - - - - 0x002ADE 01:AACE: CD 52 04  CMP ram_забаненный_игрок + $01
C - - - - - 0x002AE1 01:AAD1: F0 06     BEQ bra_AAD9
C - - - - - 0x002AE3 01:AAD3: E8        INX
C - - - - - 0x002AE4 01:AAD4: CD 53 04  CMP ram_забаненный_игрок + $02
C - - - - - 0x002AE7 01:AAD7: D0 02     BNE bra_AADB
bra_AAD9:
C - - - - - 0x002AE9 01:AAD9: 38        SEC
C - - - - - 0x002AEA 01:AADA: 60        RTS
bra_AADB:
C - - - - - 0x002AEB 01:AADB: 18        CLC
C - - - - - 0x002AEC 01:AADC: 60        RTS



ofs_006_AADD_экран_status:
C - J - - - 0x002AED 01:AADD: A9 28     LDA #$28
C - - - - - 0x002AEF 01:AADF: 85 60     STA ram_0060
; X курсора на экране со списком игроков
C - - - - - 0x002AF1 01:AAE1: A9 18     LDA #$10
C - - - - - 0x002AF3 01:AAE3: 85 61     STA ram_0061
loc_AAE5_выйти_на_экран_статуса:
C D - - - - 0x002AF5 01:AAE5: 20 A0 9B  JSR sub_0x001BB0
C - - - - - 0x002AF8 01:AAE8: A0 81     LDY #< tbl_B881_экран_со_списком_игроков
C - - - - - 0x002AFA 01:AAEA: A2 B8     LDX #> tbl_B881_экран_со_списком_игроков
C - - - - - 0x002AFC 01:AAEC: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
; имена основного состава
C - - - - - 0x002AFF 01:AAEF: A9 84     LDA #< $20A3
C - - - - - 0x002B01 01:AAF1: 85 E6     STA ram_00E6
C - - - - - 0x002B03 01:AAF3: A9 20     LDA #> $20A3
C - - - - - 0x002B05 01:AAF5: 85 E7     STA ram_00E7
C - - - - - 0x002B07 01:AAF7: 20 AC AE  JSR sub_AEAC
; энергиия основного состава
C - - - - - 0x002B0A 01:AAFA: A9 AA     LDA #< $20AC
C - - - - - 0x002B0C 01:AAFC: 85 5C     STA ram_005C
C - - - - - 0x002B0E 01:AAFE: A9 20     LDA #> $20AC
C - - - - - 0x002B10 01:AB00: 85 5D     STA ram_005D
C - - - - - 0x002B12 01:AB02: A9 0A     LDA #$0A
C - - - - - 0x002B14 01:AB04: 85 5E     STA ram_005E
bra_AB06_loop:
C - - - - - 0x002B16 01:AB06: 20 37 AF  JSR sub_AF37_отображение_текущей_энергии
C - - - - - 0x002B19 01:AB09: C6 5E     DEC ram_005E
C - - - - - 0x002B1B 01:AB0B: A5 5E     LDA ram_005E
C - - - - - 0x002B1D 01:AB0D: 10 F7     BPL bra_AB06_loop
C - - - - - 0x002B1F 01:AB0F: A5 2A     LDA ram_твоя_команда
C - - - - - 0x002B21 01:AB11: C9 02     CMP #$02
C - - - - - 0x002B23 01:AB13: D0 22     BNE bra_AB37
; имена запасного состава
C - - - - - 0x002B25 01:AB15: A9 92     LDA #< $20B1
C - - - - - 0x002B27 01:AB17: 85 E6     STA ram_00E6
C - - - - - 0x002B29 01:AB19: A9 20     LDA #> $20B1
C - - - - - 0x002B2B 01:AB1B: 85 E7     STA ram_00E7
C - - - - - 0x002B2D 01:AB1D: 20 B5 AE  JSR sub_AEB5
; энергиия запасного состава
C - - - - - 0x002B30 01:AB20: A9 B8     LDA #< $20BA
C - - - - - 0x002B32 01:AB22: 85 5C     STA ram_005C
C - - - - - 0x002B34 01:AB24: A9 20     LDA #> $20BA
C - - - - - 0x002B36 01:AB26: 85 5D     STA ram_005D
C - - - - - 0x002B38 01:AB28: A9 16     LDA #$16
C - - - - - 0x002B3A 01:AB2A: 85 5E     STA ram_005E
bra_AB2C_loop:
C - - - - - 0x002B3C 01:AB2C: 20 37 AF  JSR sub_AF37_отображение_текущей_энергии
C - - - - - 0x002B3F 01:AB2F: E6 5E     INC ram_005E
C - - - - - 0x002B41 01:AB31: A5 5E     LDA ram_005E
C - - - - - 0x002B43 01:AB33: C9 20     CMP #$20
C - - - - - 0x002B45 01:AB35: D0 F5     BNE bra_AB2C_loop
bra_AB37:
C - - - - - 0x002B47 01:AB37: 20 7E 99  JSR sub_0x00198E_запись_палитры_фона_и_спрайтов
; X курсора потом перезаписывается в 0x002AF1
C - - - - - 0x002B4A 01:AB3A: A0 DC     LDY #< tbl_ADDC_курсор_на_экране_со_списком_игроков
C - - - - - 0x002B4C 01:AB3C: A2 AD     LDX #> tbl_ADDC_курсор_на_экране_со_списком_игроков
C - - - - - 0x002B4E 01:AB3E: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - - 0x002B51 01:AB41: A5 60     LDA ram_0060
C - - - - - 0x002B53 01:AB43: 8D 5C 05  STA ram_055C
C - - - - - 0x002B56 01:AB46: A5 61     LDA ram_0061
C - - - - - 0x002B58 01:AB48: 8D 5F 05  STA ram_055F
C - - - - - 0x002B5B 01:AB4B: 10 04     BPL bra_AB51_loop
C - - - - - 0x002B5D 01:AB4D: A9 B8     LDA #$B8
C - - - - - 0x002B5F 01:AB4F: 85 E6     STA ram_00E6
bra_AB51_loop:
C - - - - - 0x002B61 01:AB51: A9 01     LDA #$01
C - - - - - 0x002B63 01:AB53: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002B66 01:AB56: 20 71 9C  JSR sub_0x001C81_поиск_забаненых_игроков
C - - - - - 0x002B69 01:AB59: A5 2A     LDA ram_твоя_команда
C - - - - - 0x002B6B 01:AB5B: C9 02     CMP #$02
C - - - - - 0x002B6D 01:AB5D: D0 28     BNE bra_AB87
C - - - - - 0x002B6F 01:AB5F: A5 1E     LDA ram_btn_press
C - - - - - 0x002B71 01:AB61: 29 03     AND #con_btn_Right + con_btn_Left
C - - - - - 0x002B73 01:AB63: F0 22     BEQ bra_AB87
C - - - - - 0x002B75 01:AB65: 4A        LSR
C - - - - - 0x002B76 01:AB66: B0 0C     BCS bra_AB74_нажато_вправо
C - - - - - 0x002B78 01:AB68: A9 18     LDA #$10      ; X курсора слева на экране со списком игроков
C - - - - - 0x002B7A 01:AB6A: 8D 5F 05  STA ram_055F
C - - - - - 0x002B7D 01:AB6D: A9 C8     LDA #$C8
C - - - - - 0x002B7F 01:AB6F: 85 E6     STA ram_00E6
C - - - - - 0x002B81 01:AB71: 4C 87 AB  JMP loc_AB87
bra_AB74_нажато_вправо:
C - - - - - 0x002B84 01:AB74: A9 88     LDA #$80      ; X курсора справа на экране со списком игроков
C - - - - - 0x002B86 01:AB76: 8D 5F 05  STA ram_055F
C - - - - - 0x002B89 01:AB79: A9 B8     LDA #$B8
C - - - - - 0x002B8B 01:AB7B: 85 E6     STA ram_00E6
C - - - - - 0x002B8D 01:AB7D: AE 5C 05  LDX ram_055C
C - - - - - 0x002B90 01:AB80: E0 C8     CPX #$C8
C - - - - - 0x002B92 01:AB82: D0 03     BNE bra_AB87
- - - - - - 0x002B94 01:AB84: 8D 5C 05  STA ram_055C
bra_AB87:
loc_AB87:
C D - - - - 0x002B97 01:AB87: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x002B99 01:AB89: 50 03     BVC bra_AB8E_кнопка_не_нажата
C - - - - - 0x002B9B 01:AB8B: 4C 21 A7  JMP loc_A721_экран_с_опциями_команды
bra_AB8E_кнопка_не_нажата:
C - - - - - 0x002B9E 01:AB8E: 10 C1     BPL bra_AB51_loop
C - - - - - 0x002BA0 01:AB90: 20 F0 99  JSR sub_0x001A00_выход_из_экрана
C - - - - - 0x002BA3 01:AB93: AC 5C 05  LDY ram_055C
C - - - - - 0x002BA6 01:AB96: AE 5F 05  LDX ram_055F
C - - - - - 0x002BA9 01:AB99: 84 60     STY ram_0060
C - - - - - 0x002BAB 01:AB9B: 86 61     STX ram_0061
C - - - - - 0x002BAD 01:AB9D: 20 08 9D  JSR sub_0x001D18
C - - - - - 0x002BB0 01:ABA0: A9 F8     LDA #$F8
C - - - - - 0x002BB2 01:ABA2: 8D 5C 05  STA ram_055C
C - - - - - 0x002BB5 01:ABA5: A5 ED     LDA ram_00ED
C - - - - - 0x002BB7 01:ABA7: 85 5F     STA ram_005F
C - - - - - 0x002BB9 01:ABA9: A0 00     LDY #con_plr_id
C - - - - - 0x002BBB 01:ABAB: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002BBD 01:ABAD: A0 46     LDY #$64      ; адрес ppu для имени игрока
C - - - - - 0x002BBF 01:ABAF: A2 20     LDX #$20
C - - - - - 0x002BC1 01:ABB1: 20 05 AF  JSR sub_AF05
C - - - - - 0x002BC4 01:ABB4: A0 03     LDY #con_plr_lvl
C - - - - - 0x002BC6 01:ABB6: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002BC8 01:ABB8: 18        CLC
C - - - - - 0x002BC9 01:ABB9: 69 01     ADC #$01
C - - - - - 0x002BCB 01:ABBB: 20 7C 9E  JSR sub_0x001E8C_перевод_из_HEX_в_DEC
C - - - - - 0x002BCE 01:ABBE: A0 AB     LDY #$AB      ; адрес ppu для номера уровня
C - - - - - 0x002BD0 01:ABC0: A2 20     LDX #$20
C - - - - - 0x002BD2 01:ABC2: 20 8E 9D  JSR sub_0x001D9E_запись_в_буфер_уровня_игрока
C - - - - - 0x002BD5 01:ABC5: A5 5F     LDA ram_005F
C - - - - - 0x002BD7 01:ABC7: A2 00     LDX #$00
C - - - - - 0x002BD9 01:ABC9: 20 27 C5  JSR sub_0x03CE18_банксвич_PRG_1C_1D_с_возвратом
C - - - - - 0x002BDC 01:ABCC: A5 32     LDA ram_0032
C - - - - - 0x002BDE 01:ABCE: 85 EC     STA ram_00EC
C - - - - - 0x002BE0 01:ABD0: A5 33     LDA ram_0033
C - - - - - 0x002BE2 01:ABD2: 85 ED     STA ram_00ED
C - - - - - 0x002BE4 01:ABD4: 20 4F 9E  JSR sub_0x001E5F
; максимальная энергия
C - - - - - 0x002BE7 01:ABD7: A0 29     LDY #< $212A
C - - - - - 0x002BE9 01:ABD9: A2 21     LDX #> $212A
C - - - - - 0x002BEB 01:ABDB: A5 E8     LDA ram_00E8
C - - - - - 0x002BED 01:ABDD: 85 EC     STA ram_00EC
C - - - - - 0x002BEF 01:ABDF: A5 E9     LDA ram_00E9
C - - - - - 0x002BF1 01:ABE1: 85 ED     STA ram_00ED
C - - - - - 0x002BF3 01:ABE3: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
; текущая энергии
                                        LDA #< $2126
                                        STA ram_005C
                                        LDA #> $2126
                                        STA ram_005D
                                        LDA ram_005F
                                        JSR sub_AF39_отображение_текущей_энергии
C - - - - - 0x002BF6 01:ABE6: A5 5F     LDA ram_005F
C - - - - - 0x002BF8 01:ABE8: F0 10     BEQ bra_ABFA_кипер
C - - - - - 0x002BFA 01:ABEA: C9 1E     CMP #$1E
C - - - - - 0x002BFC 01:ABEC: B0 0C     BCS bra_ABFA_кипер
C - - - - - 0x002BFE 01:ABEE: A0 A9     LDY #< tbl_B8A9_экран_статов_полевого
C - - - - - 0x002C00 01:ABF0: A2 B8     LDX #> tbl_B8A9_экран_статов_полевого
C - - - - - 0x002C02 01:ABF2: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - - 0x002C05 01:ABF5: A0 00     LDY #$00
C - - - - - 0x002C07 01:ABF7: 4C 03 AC  JMP loc_AC03
bra_ABFA_кипер:
C - - - - - 0x002C0A 01:ABFA: A0 B0     LDY #< tbl_B8B0_экран_статов_кипера
C - - - - - 0x002C0C 01:ABFC: A2 B8     LDX #> tbl_B8B0_экран_статов_кипера
C - - - - - 0x002C0E 01:ABFE: 20 C0 B0  JSR sub_B0C0_обработать_таблицу_с_байтами_фона
C - - - - - 0x002C11 01:AC01: A0 31     LDY # tbl_B9B2_позиция_числовых_статов_кипера - tbl_B981_позиция_числовых_статов_полевого
loc_AC03:
C D - - - - 0x002C13 01:AC03: 84 E6     STY ram_00E6
loc_AC05_повторить_запись_числа:
C D - - - - 0x002C15 01:AC05: A4 E6     LDY ram_00E6
C - - - - - 0x002C17 01:AC07: BE 81 B9  LDX tbl_B981_позиция_числовых_статов_полевого,Y
C - - - - - 0x002C1A 01:AC0A: E0 FF     CPX #$FF
C - - - - - 0x002C1C 01:AC0C: F0 20     BEQ bra_AC2E_закончить_запись_чисел
C - - - - - 0x002C1E 01:AC0E: A5 5F     LDA ram_005F
C - - - - - 0x002C20 01:AC10: 20 27 C5  JSR sub_0x03CE18_банксвич_PRG_1C_1D_с_возвратом
C - - - - - 0x002C23 01:AC13: A5 32     LDA ram_0032
C - - - - - 0x002C25 01:AC15: 20 7C 9E  JSR sub_0x001E8C_перевод_из_HEX_в_DEC
C - - - - - 0x002C28 01:AC18: A4 E6     LDY ram_00E6
C - - - - - 0x002C2A 01:AC1A: B9 82 B9  LDA tbl_B981_позиция_числовых_статов_полевого + $01,Y
C - - - - - 0x002C2D 01:AC1D: BE 83 B9  LDX tbl_B981_позиция_числовых_статов_полевого + $02,Y
C - - - - - 0x002C30 01:AC20: A8        TAY
C - - - - - 0x002C31 01:AC21: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - - 0x002C34 01:AC24: A5 E6     LDA ram_00E6
C - - - - - 0x002C36 01:AC26: 18        CLC
C - - - - - 0x002C37 01:AC27: 69 03     ADC #$03
C - - - - - 0x002C39 01:AC29: 85 E6     STA ram_00E6
C - - - - - 0x002C3B 01:AC2B: 4C 05 AC  JMP loc_AC05_повторить_запись_числа
bra_AC2E_закончить_запись_чисел:
C - - - - - 0x002C3E 01:AC2E: 20 7E 99  JSR sub_0x00198E_запись_палитры_фона_и_спрайтов
bra_AC31_B_не_нажата:
C - - - - - 0x002C41 01:AC31: A9 01     LDA #$01
C - - - - - 0x002C43 01:AC33: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002C46 01:AC36: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x002C48 01:AC38: 50 03     BVC bra_AC3D_A_не_нажата
C - - - - - 0x002C4A 01:AC3A: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AC3D_A_не_нажата:
C - - - - - 0x002C4D 01:AC3D: 10 F2     BPL bra_AC31_B_не_нажата
C - - - - - 0x002C4F 01:AC3F: A0 00     LDY #con_plr_id
C - - - - - 0x002C51 01:AC41: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002C53 01:AC43: A2 27     LDX #$2A
bra_AC45_loop:
C - - - - - 0x002C55 01:AC45: CA        DEX
C - - - - - 0x002C56 01:AC46: CA        DEX
C - - - - - 0x002C57 01:AC47: CA        DEX
C - - - - - 0x002C58 01:AC48: 10 03     BPL bra_AC4D
C - - - - - 0x002C5A 01:AC4A: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AC4D:
C - - - - - 0x002C5D 01:AC4D: DD 2E BB  CMP tbl_BB2E_список_спешалов_игроков,X
C - - - - - 0x002C60 01:AC50: D0 F3     BNE bra_AC45_loop
C - - - - - 0x002C62 01:AC52: BD 2F BB  LDA tbl_BB2E_список_спешалов_игроков + $01,X
C - - - - - 0x002C65 01:AC55: 85 5C     STA ram_005C
C - - - - - 0x002C67 01:AC57: BD 30 BB  LDA tbl_BB2E_список_спешалов_игроков + $02,X
C - - - - - 0x002C6A 01:AC5A: 85 5D     STA ram_005D
C - - - - - 0x002C6C 01:AC5C: A9 00     LDA #$00
C - - - - - 0x002C6E 01:AC5E: 85 5E     STA ram_005E
loc_AC60_loop_чтение_спешалов_игрока:
C D - - - - 0x002C70 01:AC60: A0 00     LDY #$00
C - - - - - 0x002C72 01:AC62: B1 5C     LDA (ram_005C),Y
C - - - - - 0x002C74 01:AC64: 10 1D     BPL bra_AC83_проверить_матч
C - - - - - 0x002C76 01:AC66: C9 FF     CMP #$FF
C - - - - - 0x002C78 01:AC68: D0 03     BNE bra_AC6D
C - - - - - 0x002C7A 01:AC6A: 4C 23 AD  JMP loc_AD23_нижняя_полоска_окна_special
bra_AC6D:
C - - - - - 0x002C7D 01:AC6D: C9 FE     CMP #$FE
C - - - - - 0x002C7F 01:AC6F: D0 0A     BNE bra_AC7B_loopон
C - - - - - 0x002C81 01:AC71: AD 46 04  LDA ram_флаг_драйв_оверхеда
C - - - - - 0x002C84 01:AC74: C9 05     CMP #$05
C - - - - - 0x002C86 01:AC76: F0 14     BEQ bra_AC8C_узнать_имя_спешала
C - - - - - 0x002C88 01:AC78: 4C 13 AD  JMP loc_AD13_новая_строка
bra_AC7B_loopон:
C - - - - - 0x002C8B 01:AC7B: AD 48 04  LDA ram_флаг_циклона
C - - - - - 0x002C8E 01:AC7E: 4A        LSR
C - - - - - 0x002C8F 01:AC7F: B0 0B     BCS bra_AC8C_узнать_имя_спешала
; bzk optimize, проверка на матч с аргентиной для отображения циклона в списке спешалов
; по идее это не нужно, если только флаг циклона не отвечает за что-то еще
C - - - - - 0x002C91 01:AC81: A9 1E     LDA #$1E
bra_AC83_проверить_матч:
C - - - - - 0x002C93 01:AC83: C5 26     CMP ram_матч
C - - - - - 0x002C95 01:AC85: 90 05     BCC bra_AC8C_узнать_имя_спешала
C - - - - - 0x002C97 01:AC87: F0 03     BEQ bra_AC8C_узнать_имя_спешала
C - - - - - 0x002C99 01:AC89: 4C 13 AD  JMP loc_AD13_новая_строка
bra_AC8C_узнать_имя_спешала:
C - - - - - 0x002C9C 01:AC8C: C8        INY
C - - - - - 0x002C9D 01:AC8D: B1 5C     LDA (ram_005C),Y
C - - - - - 0x002C9F 01:AC8F: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - - 0x002CA2 01:AC92: A5 5E     LDA ram_005E
C - - - - - 0x002CA4 01:AC94: 0A        ASL
C - - - - - 0x002CA5 01:AC95: AA        TAX
C - - - - - 0x002CA6 01:AC96: BD 48 BC  LDA tbl_BC48_адрес_ppu_спешалов,X
C - - - - - 0x002CA9 01:AC99: 85 E8     STA ram_00E8
C - - - - - 0x002CAB 01:AC9B: BD 49 BC  LDA tbl_BC48_адрес_ppu_спешалов + $01,X
C - - - - - 0x002CAE 01:AC9E: 85 E9     STA ram_00E9
loc_ACA0_loop_чтение_имени_спешала:
C D - - - - 0x002CB0 01:ACA0: A0 00     LDY #$00
C - - - - - 0x002CB2 01:ACA2: B1 30     LDA (ram_0030),Y
C - - - - - 0x002CB4 01:ACA4: C9 FC     CMP #$FC
C - - - - - 0x002CB6 01:ACA6: B0 16     BCS bra_ACBE_закончить_чтение_имени
C - - - - - 0x002CB8 01:ACA8: A4 E8     LDY ram_00E8
C - - - - - 0x002CBA 01:ACAA: A6 E9     LDX ram_00E9
C - - - - - 0x002CBC 01:ACAC: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x002CBF 01:ACAF: E6 30     INC ram_0030
C - - - - - 0x002CC1 01:ACB1: D0 02     BNE bra_ACB5_пропуск
- - - - - - 0x002CC3 01:ACB3: E6 31     INC ram_0031
bra_ACB5_пропуск:
C - - - - - 0x002CC5 01:ACB5: E6 E8     INC ram_00E8
C - - - - - 0x002CC7 01:ACB7: D0 02     BNE bra_ACBB_пропуск
- - - - - - 0x002CC9 01:ACB9: E6 E9     INC ram_00E9
bra_ACBB_пропуск:
C - - - - - 0x002CCB 01:ACBB: 4C A0 AC  JMP loc_ACA0_loop_чтение_имени_спешала
bra_ACBE_закончить_чтение_имени:
C - - - - - 0x002CCE 01:ACBE: A9 00     LDA #$00
C - - - - - 0x002CD0 01:ACC0: 8D 4E 04  STA ram_высота_мяча
C - - - - - 0x002CD3 01:ACC3: A0 02     LDY #$02
C - - - - - 0x002CD5 01:ACC5: B1 5C     LDA (ram_005C),Y
C - - - - - 0x002CD7 01:ACC7: 8D 3B 04  STA ram_действие_атаки
C - - - - - 0x002CDA 01:ACCA: 8D 3D 04  STA ram_действие_защиты
C - - - - - 0x002CDD 01:ACCD: C8        INY
C - - - - - 0x002CDE 01:ACCE: B1 5C     LDA (ram_005C),Y
C - - - - - 0x002CE0 01:ACD0: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - - 0x002CE3 01:ACD3: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - - 0x002CE6 01:ACD6: A5 5F     LDA ram_005F      ; хранит номер игрока в меню статов
C - - - - - 0x002CE8 01:ACD8: 8D 41 04  STA ram_игрок_с_мячом
C - - - - - 0x002CEB 01:ACDB: 8D 42 04  STA ram_игрок_без_мяча
C - - - - - 0x002CEE 01:ACDE: C8        INY
C - - - - - 0x002CEF 01:ACDF: B1 5C     LDA (ram_005C),Y
C - - - - - 0x002CF1 01:ACE1: 20 4B C5  JSR sub_0x03CE7E_прыжки_в_начале_банка_1C
C - - - - - 0x002CF4 01:ACE4: AD 3F 04  LDA ram_затрата_энергии_lo
C - - - - - 0x002CF7 01:ACE7: 85 EC     STA ram_00EC
C - - - - - 0x002CF9 01:ACE9: AD 40 04  LDA ram_затрата_энергии_hi
C - - - - - 0x002CFC 01:ACEC: 85 ED     STA ram_00ED
C - - - - - 0x002CFE 01:ACEE: 20 4F 9E  JSR sub_0x001E5F
C - - - - - 0x002D01 01:ACF1: A5 E8     LDA ram_00E8
C - - - - - 0x002D03 01:ACF3: 85 EC     STA ram_00EC
C - - - - - 0x002D05 01:ACF5: A5 E9     LDA ram_00E9
C - - - - - 0x002D07 01:ACF7: 85 ED     STA ram_00ED
C - - - - - 0x002D09 01:ACF9: A5 5E     LDA ram_005E
C - - - - - 0x002D0B 01:ACFB: 0A        ASL
C - - - - - 0x002D0C 01:ACFC: AA        TAX
C - - - - - 0x002D0D 01:ACFD: BD 48 BC  LDA tbl_BC48_адрес_ppu_спешалов,X
C - - - - - 0x002D10 01:AD00: 29 E0     AND #$E0
C - - - - - 0x002D12 01:AD02: 09 15     ORA #$19      ; + к адресу ppu для cost
C - - - - - 0x002D17 01:AD07: A8        TAY
C - - - - - 0x002D18 01:AD08: BD 49 BC  LDA tbl_BC48_адрес_ppu_спешалов + $01,X
C - - - - - 0x002D1B 01:AD0B: 69 00     ADC #$00
C - - - - - 0x002D1D 01:AD0D: AA        TAX
C - - - - - 0x002D1E 01:AD0E: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - - 0x002D21 01:AD11: E6 5E     INC ram_005E
loc_AD13_новая_строка:
C D - - - - 0x002D23 01:AD13: A5 5C     LDA ram_005C
C - - - - - 0x002D25 01:AD15: 18        CLC
C - - - - - 0x002D26 01:AD16: 69 05     ADC #< $0005
C - - - - - 0x002D28 01:AD18: 85 5C     STA ram_005C
C - - - - - 0x002D2A 01:AD1A: A5 5D     LDA ram_005D
C - - - - - 0x002D2C 01:AD1C: 69 00     ADC #> $0005
C - - - - - 0x002D2E 01:AD1E: 85 5D     STA ram_005D
C - - - - - 0x002D30 01:AD20: 4C 60 AC  JMP loc_AC60_loop_чтение_спешалов_игрока



loc_AD23_нижняя_полоска_окна_special:
C D - - - - 0x002D33 01:AD23: A5 5E     LDA ram_005E
C - - - - - 0x002D35 01:AD25: AA        TAX
C - - - - - 0x002D36 01:AD26: 0A        ASL
C - - - - - 0x002D37 01:AD27: 0A        ASL
C - - - - - 0x002D38 01:AD28: 0A        ASL
C - - - - - 0x002D39 01:AD29: 18        CLC
C - - - - - 0x002D3A 01:AD2A: 69 17     ADC #$17
C - - - - - 0x002D3C 01:AD2C: 85 7C     STA ram_007C
C - - - - - 0x002D3E 01:AD2E: A9 40     LDA #$40
C - - - - - 0x002D40 01:AD30: 20 EE 9D  JSR sub_0x001DFE_умножить_A_на_X
C - - - - - 0x002D43 01:AD33: A5 EC     LDA ram_00EC
C - - - - - 0x002D45 01:AD35: 18        CLC
C - - - - - 0x002D46 01:AD36: 69 63     ADC #< $2561
C - - - - - 0x002D48 01:AD38: A8        TAY
C - - - - - 0x002D49 01:AD39: A5 ED     LDA ram_00ED
C - - - - - 0x002D4B 01:AD3B: 69 25     ADC #> $2561
C - - - - - 0x002D4D 01:AD3D: AA        TAX
C - - - - - 0x002D4E 01:AD3E: A9 67     LDA #< tbl_B967_тайлы_закрывающей_полоски_special
C - - - - - 0x002D50 01:AD40: 85 E6     STA ram_00E6
C - - - - - 0x002D52 01:AD42: A9 B9     LDA #> tbl_B967_тайлы_закрывающей_полоски_special
C - - - - - 0x002D54 01:AD44: 85 E7     STA ram_00E7
C - - - - - 0x002D56 01:AD46: A9 1A     LDA #$1E      ; длина полоски
C - - - - - 0x002D58 01:AD48: 20 73 9D  JSR sub_0x001D83
bra_AD4B_loop:
C - - - - - 0x002D5B 01:AD4B: A9 18     LDA #$18
C - - - - - 0x002D5D 01:AD4D: 85 79     STA ram_0079
C - - - - - 0x002D5F 01:AD4F: A9 01     LDA #$01
C - - - - - 0x002D61 01:AD51: 85 7E     STA ram_007E
C - - - - - 0x002D63 01:AD53: A5 8E     LDA ram_008E
C - - - - - 0x002D65 01:AD55: 85 90     STA ram_0090
C - - - - - 0x002D67 01:AD57: A5 8F     LDA ram_008F
C - - - - - 0x002D69 01:AD59: 85 91     STA ram_0091
bra_AD5B:
C - - - - - 0x002D6B 01:AD5B: A9 01     LDA #$01
C - - - - - 0x002D6D 01:AD5D: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002D70 01:AD60: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x002D72 01:AD62: 70 14     BVS bra_AD78
; con_btn_A
C - - - - - 0x002D74 01:AD64: 10 F5     BPL bra_AD5B
C - - - - - 0x002D76 01:AD66: A9 00     LDA #$00
C - - - - - 0x002D78 01:AD68: 85 7E     STA ram_007E
bra_AD6A:
C - - - - - 0x002D7A 01:AD6A: A9 01     LDA #$01
C - - - - - 0x002D7C 01:AD6C: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002D7F 01:AD6F: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x002D81 01:AD71: 70 D8     BVS bra_AD4B_loop
; con_btn_A
C - - - - - 0x002D83 01:AD73: 10 F5     BPL bra_AD6A
C - - - - - 0x002D85 01:AD75: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса
bra_AD78:
C - - - - - 0x002D88 01:AD78: A9 00     LDA #$00
C - - - - - 0x002D8A 01:AD7A: 85 7E     STA ram_007E
bra_AD7C_loop:
C - - - - - 0x002D8C 01:AD7C: A9 01     LDA #$01
C - - - - - 0x002D8E 01:AD7E: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002D91 01:AD81: 24 1E     BIT ram_btn_press
; con_btn_A
C - - - - - 0x002D93 01:AD83: 30 C6     BMI bra_AD4B_loop
; con_btn_B
C - - - - - 0x002D95 01:AD85: 50 F5     BVC bra_AD7C_loop
C - - - - - 0x002D97 01:AD87: 4C E5 AA  JMP loc_AAE5_выйти_на_экран_статуса



tbl_AD8A:
- D - - - - 0x002D9A 01:AD8A: 00        .byte $00
- D - - - - 0x002D9B 01:AD8B: 00        .byte $00
- D - - - - 0x002D9C 01:AD8C: 01        .byte $01
- D - - - - 0x002D9D 01:AD8D: 02        .byte $02

- D - - - - 0x002D9E 01:AD8E: 03        .byte $03
- D - - - - 0x002D9F 01:AD8F: 03        .byte $03
- D - - - - 0x002DA0 01:AD90: 04        .byte $04
- D - - - - 0x002DA1 01:AD91: 05        .byte $05

- D - - - - 0x002DA2 01:AD92: 06        .byte $06
- D - - - - 0x002DA3 01:AD93: 06        .byte $06
- D - - - - 0x002DA4 01:AD94: 07        .byte $07
- D - - - - 0x002DA5 01:AD95: 08        .byte $08

- D - - - - 0x002DA6 01:AD96: 09        .byte $09
- D - - - - 0x002DA7 01:AD97: 09        .byte $09
- D - - - - 0x002DA8 01:AD98: 0A        .byte $0A
- D - - - - 0x002DA9 01:AD99: 0B        .byte $0B

- D - - - - 0x002DAA 01:AD9A: 0C        .byte $0C
- D - - - - 0x002DAB 01:AD9B: 0C        .byte $0C
- - - - - - 0x002DAC 01:AD9C: 0D        .byte $0D
- - - - - - 0x002DAD 01:AD9D: 0E        .byte $0E



tbl_AD9E_курсор_опции_сан_паулу_нанкацу:
- D - - - - 0x002DAE 01:AD9E: 38        .byte $38
- D - - - - 0x002DAF 01:AD9F: 71        .byte $71
- D - - - - 0x002DB0 01:ADA0: 00        .byte $00
- D - - - - 0x002DB1 01:ADA1: 88        .byte $90



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
    .byte $38   ; <5>
    .byte $71   ; <ュ>
    .byte $00
    .byte $60   ; <ミ>



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
C - - - - - 0x002DF9 01:ADE9: 85 EC     STA ram_00EC
C - - - - - 0x002DFB 01:ADEB: A5 2A     LDA ram_твоя_команда
C - - - - - 0x002DFD 01:ADED: 0A        ASL
                                        TAX
                                        LDA tbl_B6BB_название_твоей_команды_в_опциях,X
                                        TAY
                                        LDA tbl_B6BB_название_твоей_команды_в_опциях + $01,X
                                        TAX
C - - - - - 0x002E0A 01:ADFA: AD EC 00  LDA ram_00EC
C - - - - - 0x002E0D 01:ADFD: 20 B8 97  JSR sub_0x0017C8_запись_в_буфер_со_смещением
C - - - - - 0x002E10 01:AE00: 60        RTS



sub_AE01_обновить_расстановку_миникарты:
C - - - - - 0x002E11 01:AE01: 85 E7     STA ram_00E7
C - - - - - 0x002E13 01:AE03: A0 24     LDY #$24
C - - - - - 0x002E15 01:AE05: A2 00     LDX #$00
bra_AE07_loop:
C - - - - - 0x002E17 01:AE07: BD 23 B8  LDA tbl_B823_spr_T,X
C - - - - - 0x002E1A 01:AE0A: 99 69 04  STA ram_copy_spr_T,Y
C - - - - - 0x002E1D 01:AE0D: A9 00     LDA #$00
C - - - - - 0x002E1F 01:AE0F: 99 6A 04  STA ram_copy_spr_A,Y
C - - - - - 0x002E22 01:AE12: E8        INX
C - - - - - 0x002E23 01:AE13: 88        DEY
C - - - - - 0x002E24 01:AE14: 88        DEY
C - - - - - 0x002E25 01:AE15: 88        DEY
C - - - - - 0x002E26 01:AE16: 88        DEY
C - - - - - 0x002E27 01:AE17: 10 EE     BPL bra_AE07_loop
C - - - - - 0x002E29 01:AE19: A4 2C     LDY ram_расстановка_слева
C - - - - - 0x002E2B 01:AE1B: 4C 8F AE  JMP loc_AE8F_спрайты_миникарты



sub_AE1E:
C - - - - - 0x002E2E 01:AE1E: 85 E7     STA ram_00E7
C - - - - - 0x002E30 01:AE20: A9 71     LDA #$71
C - - - - - 0x002E32 01:AE22: 8D 61 05  STA ram_0561
C - - - - - 0x002E35 01:AE25: A9 00     LDA #$00
C - - - - - 0x002E37 01:AE27: 8D 62 05  STA ram_0562
C - - - - - 0x002E3A 01:AE2A: 8E 63 05  STX ram_0563
C - - - - - 0x002E3D 01:AE2D: A5 2C     LDA ram_расстановка_слева
C - - - - - 0x002E3F 01:AE2F: 0A        ASL
C - - - - - 0x002E40 01:AE30: 0A        ASL
C - - - - - 0x002E41 01:AE31: 0A        ASL
C - - - - - 0x002E42 01:AE32: 0A        ASL
C - - - - - 0x002E43 01:AE33: 18        CLC
C - - - - - 0x002E44 01:AE34: 69 48     ADC #$48
C - - - - - 0x002E46 01:AE36: 8D 60 05  STA ram_0560
C - - - - - 0x002E49 01:AE39: 60        RTS



sub_AE3A_обновить_расстановку_миникарты:
C - - - - - 0x002E4A 01:AE3A: 85 E7     STA ram_00E7
C - - - - - 0x002E4C 01:AE3C: A5 2C     LDA ram_расстановка_слева
C - - - - - 0x002E4E 01:AE3E: 85 E6     STA ram_00E6
bra_AE40_loop:
C - - - - - 0x002E50 01:AE40: A9 01     LDA #$01
C - - - - - 0x002E52 01:AE42: 20 A8 9F  JSR sub_0x001FB8_задержка_кадра
C - - - - - 0x002E55 01:AE45: A5 1E     LDA ram_btn_press
C - - - - - 0x002E57 01:AE47: 29 0C     AND #con_btn_Down + con_btn_Up
C - - - - - 0x002E59 01:AE49: F0 1C     BEQ bra_AE67
C - - - - - 0x002E5B 01:AE4B: 49 0C     EOR #$0C
C - - - - - 0x002E5D 01:AE4D: 4A        LSR
C - - - - - 0x002E5E 01:AE4E: 38        SEC
C - - - - - 0x002E5F 01:AE4F: E9 03     SBC #$03
C - - - - - 0x002E61 01:AE51: 18        CLC
C - - - - - 0x002E62 01:AE52: 65 E6     ADC ram_00E6
C - - - - - 0x002E64 01:AE54: 29 03     AND #$03
C - - - - - 0x002E66 01:AE56: 85 E6     STA ram_00E6
C - - - - - 0x002E68 01:AE58: 0A        ASL
C - - - - - 0x002E69 01:AE59: 0A        ASL
C - - - - - 0x002E6A 01:AE5A: 0A        ASL
C - - - - - 0x002E6B 01:AE5B: 0A        ASL
C - - - - - 0x002E6C 01:AE5C: 18        CLC
C - - - - - 0x002E6D 01:AE5D: 69 48     ADC #$48
C - - - - - 0x002E6F 01:AE5F: 8D 60 05  STA ram_0560
C - - - - - 0x002E72 01:AE62: A4 E6     LDY ram_00E6
C - - - - - 0x002E74 01:AE64: 20 8F AE  JSR sub_AE8F_спрайты_миникарты
bra_AE67:
C - - - - - 0x002E77 01:AE67: 24 1E     BIT ram_btn_press
; con_btn_B
C - - - - - 0x002E79 01:AE69: 70 07     BVS bra_AE72
; con_btn_A
C - - - - - 0x002E7B 01:AE6B: 10 D3     BPL bra_AE40_loop
C - - - - - 0x002E7D 01:AE6D: A5 E6     LDA ram_00E6
C - - - - - 0x002E7F 01:AE6F: 85 2C     STA ram_расстановка_слева
C - - - - - 0x002E81 01:AE71: 60        RTS
bra_AE72:
C - - - - - 0x002E82 01:AE72: A4 2C     LDY ram_расстановка_слева
C - - - - - 0x002E84 01:AE74: 4C 8F AE  JMP loc_AE8F_спрайты_миникарты



sub_AE77:
C - - - - - 0x002E87 01:AE77: 20 3A 9C  JSR sub_0x001C4A_отобразить_курсор
C - - - - - 0x002E8A 01:AE7A: A5 2D     LDA ram_защита_слева
C - - - - - 0x002E8C 01:AE7C: 0A        ASL
C - - - - - 0x002E8D 01:AE7D: 0A        ASL
C - - - - - 0x002E8E 01:AE7E: 0A        ASL
C - - - - - 0x002E8F 01:AE7F: 0A        ASL
C - - - - - 0x002E90 01:AE80: 18        CLC
C - - - - - 0x002E91 01:AE81: 69 58     ADC #$58
C - - - - - 0x002E93 01:AE83: 8D 60 05  STA ram_0560
C - - - - - 0x002E96 01:AE86: 20 0D 9C  JSR sub_0x001C1D_скрыть_курсор_после_выбора_опции
C - - - - - 0x002E99 01:AE89: B0 03     BCS bra_AE8E_RTS
C - - - - - 0x002E9B 01:AE8B: 4A        LSR
C - - - - - 0x002E9C 01:AE8C: 85 2D     STA ram_защита_слева
bra_AE8E_RTS:
C - - - - - 0x002E9E 01:AE8E: 60        RTS



loc_AE8F_спрайты_миникарты:
sub_AE8F_спрайты_миникарты:
; отображение позиций игроков на миникарте в экране с меню команды исходя из опции расстановки
C D - - - - 0x002E9F 01:AE8F: BE 2D B8  LDX tbl_B82D_офсет_спрайтов_миникарты,Y
C - - - - - 0x002EA2 01:AE92: A0 24     LDY #$24
bra_AE94_loop:
C - - - - - 0x002EA4 01:AE94: BD 31 B8  LDA tbl_B831_спрайты_миникарты,X
C - - - - - 0x002EA7 01:AE97: 99 68 04  STA ram_copy_spr_Y,Y
C - - - - - 0x002EAA 01:AE9A: BD 32 B8  LDA tbl_B831_спрайты_миникарты + $01,X
C - - - - - 0x002EAD 01:AE9D: 18        CLC
C - - - - - 0x002EAE 01:AE9E: 65 E7     ADC ram_00E7
C - - - - - 0x002EB0 01:AEA0: 99 6B 04  STA ram_copy_spr_X,Y
C - - - - - 0x002EB3 01:AEA3: E8        INX
C - - - - - 0x002EB4 01:AEA4: E8        INX
C - - - - - 0x002EB5 01:AEA5: 88        DEY
C - - - - - 0x002EB6 01:AEA6: 88        DEY
C - - - - - 0x002EB7 01:AEA7: 88        DEY
C - - - - - 0x002EB8 01:AEA8: 88        DEY
C - - - - - 0x002EB9 01:AEA9: 10 E9     BPL bra_AE94_loop
C - - - - - 0x002EBB 01:AEAB: 60        RTS



sub_AEAC:
C - - - - - 0x002EBC 01:AEAC: A9 0A     LDA #$0A
C - - - - - 0x002EBE 01:AEAE: A2 0B     LDX #$0B
C - - - - - 0x002EC0 01:AEB0: A0 FF     LDY #$FF
C - - - - - 0x002EC2 01:AEB2: 4C DA AE  JMP loc_AEDA



sub_AEB5:
C - - - - - 0x002EC5 01:AEB5: A9 16     LDA #$16
C - - - - - 0x002EC7 01:AEB7: A2 0A     LDX #$0A
C - - - - - 0x002EC9 01:AEB9: A0 01     LDY #$01
C - - - - - 0x002ECB 01:AEBB: 4C DA AE  JMP loc_AEDA



sub_AEBE:
C - - - - - 0x002ECE 01:AEBE: A9 16     LDA #$16
C - - - - - 0x002ED0 01:AEC0: A2 08     LDX #$08
C - - - - - 0x002ED2 01:AEC2: A0 01     LDY #$01
C - - - - - 0x002ED4 01:AEC4: 20 DA AE  JSR sub_AEDA
C - - - - - 0x002ED7 01:AEC7: A5 E6     LDA ram_00E6
C - - - - - 0x002ED9 01:AEC9: 18        CLC
C - - - - - 0x002EDA 01:AECA: 69 40     ADC #< $0040
C - - - - - 0x002EDC 01:AECC: 85 E6     STA ram_00E6
C - - - - - 0x002EDE 01:AECE: A5 E7     LDA ram_00E7
C - - - - - 0x002EE0 01:AED0: 69 00     ADC #> $0040
C - - - - - 0x002EE2 01:AED2: 85 E7     STA ram_00E7
C - - - - - 0x002EE4 01:AED4: A9 1E     LDA #$1E
C - - - - - 0x002EE6 01:AED6: A2 02     LDX #$02
C - - - - - 0x002EE8 01:AED8: A0 01     LDY #$01
loc_AEDA:
sub_AEDA:
C D - - - - 0x002EEA 01:AEDA: 85 E8     STA ram_00E8
C - - - - - 0x002EEC 01:AEDC: 86 E9     STX ram_00E9
C - - - - - 0x002EEE 01:AEDE: 84 EB     STY ram_00EB
bra_AEE0_loop:
C - - - - - 0x002EF0 01:AEE0: A5 E8     LDA ram_00E8
C - - - - - 0x002EF2 01:AEE2: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x002EF5 01:AEE5: A0 00     LDY #con_plr_id
C - - - - - 0x002EF7 01:AEE7: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002EF9 01:AEE9: 20 09 AF  JSR sub_AF09
C - - - - - 0x002EFC 01:AEEC: A5 E8     LDA ram_00E8
C - - - - - 0x002EFE 01:AEEE: 18        CLC
C - - - - - 0x002EFF 01:AEEF: 65 EB     ADC ram_00EB
C - - - - - 0x002F01 01:AEF1: 85 E8     STA ram_00E8
C - - - - - 0x002F03 01:AEF3: A5 E6     LDA ram_00E6
C - - - - - 0x002F05 01:AEF5: 18        CLC
C - - - - - 0x002F06 01:AEF6: 69 40     ADC #< $0040
C - - - - - 0x002F08 01:AEF8: 85 E6     STA ram_00E6
C - - - - - 0x002F0A 01:AEFA: A5 E7     LDA ram_00E7
C - - - - - 0x002F0C 01:AEFC: 69 00     ADC #> $0040
C - - - - - 0x002F0E 01:AEFE: 85 E7     STA ram_00E7
C - - - - - 0x002F10 01:AF00: C6 E9     DEC ram_00E9
C - - - - - 0x002F12 01:AF02: D0 DC     BNE bra_AEE0_loop
C - - - - - 0x002F14 01:AF04: 60        RTS



sub_AF05:
C - - - - - 0x002F15 01:AF05: 84 E6     STY ram_00E6
C - - - - - 0x002F17 01:AF07: 86 E7     STX ram_00E7
sub_AF09:
C - - - - - 0x002F19 01:AF09: 20 3C C5  JSR sub_0x03F31F_таблица_слов
C - - - - - 0x002F1C 01:AF0C: A9 05     LDA #$08      ; ограничение по количеству символов для имен
C - - - - - 0x002F1E 01:AF0E: 85 ED     STA ram_00ED
bra_AF10_loop:
C - - - - - 0x002F20 01:AF10: A2 00     LDX #$00
C - - - - - 0x002F22 01:AF12: A0 00     LDY #$00
C - - - - - 0x002F24 01:AF14: B1 30     LDA (ram_0030),Y
C - - - - - 0x002F26 01:AF16: C9 FC     CMP #$FC
C - - - - - 0x002F28 01:AF18: B0 07     BCS bra_AF21
C - - - - - 0x002F2A 01:AF1A: E6 30     INC ram_0030
C - - - - - 0x002F2C 01:AF1C: D0 02     BNE bra_AF20
- - - - - - 0x002F2E 01:AF1E: E6 31     INC ram_0031
bra_AF20:
C - - - - - 0x002F30 01:AF20: AA        TAX
bra_AF21:
C - - - - - 0x002F31 01:AF21: 8A        TXA
C - - - - - 0x002F32 01:AF22: A4 E6     LDY ram_00E6
C - - - - - 0x002F34 01:AF24: A6 E7     LDX ram_00E7
C - - - - - 0x002F36 01:AF26: 20 CA 88  JSR sub_0x0008DA_запись_символа_в_буфер
C - - - - - 0x002F39 01:AF29: E6 E6     INC ram_00E6
C - - - - - 0x002F3B 01:AF2B: C6 ED     DEC ram_00ED
C - - - - - 0x002F3D 01:AF2D: D0 E1     BNE bra_AF10_loop
C - - - - - 0x002F3F 01:AF2F: A5 E6     LDA ram_00E6
C - - - - - 0x002F41 01:AF31: 38        SEC
C - - - - - 0x002F42 01:AF32: E9 05     SBC #$08      ; здесь также нужно корректировать ограничение
C - - - - - 0x002F44 01:AF34: 85 E6     STA ram_00E6
C - - - - - 0x002F46 01:AF36: 60        RTS



sub_AF37_отображение_текущей_энергии:
C - - - - - 0x002F47 01:AF37: A5 5E     LDA ram_005E
sub_AF39_отображение_текущей_энергии:
C - - - - - 0x002F49 01:AF39: 20 0C C5  JSR sub_0x03CD8C_получить_адрес_игрока
C - - - - - 0x002F4C 01:AF3C: A0 01     LDY #con_plr_guts_lo
C - - - - - 0x002F4E 01:AF3E: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002F50 01:AF40: 85 EC     STA ram_00EC
C - - - - - 0x002F52 01:AF42: C8        INY
C - - - - - 0x002F53 01:AF43: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002F55 01:AF45: 85 ED     STA ram_00ED
C - - - - - 0x002F57 01:AF47: 20 4F 9E  JSR sub_0x001E5F
C - - - - - 0x002F5A 01:AF4A: A4 5C     LDY ram_005C
C - - - - - 0x002F5C 01:AF4C: A6 5D     LDX ram_005D
C - - - - - 0x002F5E 01:AF4E: A5 E8     LDA ram_00E8
C - - - - - 0x002F60 01:AF50: 85 EC     STA ram_00EC
C - - - - - 0x002F62 01:AF52: A5 E9     LDA ram_00E9
C - - - - - 0x002F64 01:AF54: 85 ED     STA ram_00ED
C - - - - - 0x002F66 01:AF56: 20 B5 9D  JSR sub_0x001DC5_запись_чисел_в_буфер
C - - - - - 0x002F69 01:AF59: A5 5C     LDA ram_005C
C - - - - - 0x002F6B 01:AF5B: 18        CLC
C - - - - - 0x002F6C 01:AF5C: 69 40     ADC #< $0040
C - - - - - 0x002F6E 01:AF5E: 85 5C     STA ram_005C
C - - - - - 0x002F70 01:AF60: A5 5D     LDA ram_005D
C - - - - - 0x002F72 01:AF62: 69 00     ADC #> $0040
C - - - - - 0x002F74 01:AF64: 85 5D     STA ram_005D
C - - - - - 0x002F76 01:AF66: 60        RTS



sub_AF67:
C - - - - - 0x002F77 01:AF67: A0 00     LDY #$00
; con_plr_id
; con_plr_guts_lo
; con_plr_guts_hi
; con_plr_lvl
bra_AF69_loop:
C - - - - - 0x002F79 01:AF69: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x002F7B 01:AF6B: AA        TAX
C - - - - - 0x002F7C 01:AF6C: B1 34     LDA (ram_plr_data),Y
C - - - - - 0x002F7E 01:AF6E: 91 E6     STA (ram_00E6),Y
C - - - - - 0x002F80 01:AF70: 8A        TXA
C - - - - - 0x002F81 01:AF71: 91 34     STA (ram_plr_data),Y
C - - - - - 0x002F83 01:AF73: C8        INY
C - - - - - 0x002F84 01:AF74: C0 04     CPY #$04
C - - - - - 0x002F86 01:AF76: D0 F1     BNE bra_AF69_loop
C - - - - - 0x002F88 01:AF78: 60        RTS



sub_0x002F89_начислить_опыт_за_победу:
C D - - - - 0x002F89 01:AF79: A5 26     LDA ram_матч
C - - - - - 0x002F8B 01:AF7B: 0A        ASL
C - - - - - 0x002F8C 01:AF7C: AA        TAX
C - - - - - 0x002F8D 01:AF7D: BD 4C BA  LDA tbl_BA4C_опыт_за_победу_над_командой,X
C - - - - - 0x002F90 01:AF80: 85 E6     STA ram_00E6
C - - - - - 0x002F92 01:AF82: BD 4D BA  LDA tbl_BA4C_опыт_за_победу_над_командой + $01,X
C - - - - - 0x002F95 01:AF85: 85 E7     STA ram_00E7
C - - - - - 0x002F97 01:AF87: 4C 9E AF  JMP loc_AF9E_начислить_опыт



sub_0x002F9A_начислить_опыт_за_поражение:
C D - - - - 0x002F9A 01:AF8A: A5 26     LDA ram_матч
C - - - - - 0x002F9C 01:AF8C: 0A        ASL
C - - - - - 0x002F9D 01:AF8D: AA        TAX
C - - - - - 0x002F9E 01:AF8E: BD 4C BA  LDA tbl_BA4C_опыт_за_победу_над_командой,X
C - - - - - 0x002FA1 01:AF91: 85 E6     STA ram_00E6
C - - - - - 0x002FA3 01:AF93: BD 4D BA  LDA tbl_BA4C_опыт_за_победу_над_командой + $01,X
C - - - - - 0x002FA6 01:AF96: 4A        LSR               ; поделить на 4
C - - - - - 0x002FA7 01:AF97: 66 E6     ROR ram_00E6
C - - - - - 0x002FA9 01:AF99: 4A        LSR
C - - - - - 0x002FAA 01:AF9A: 66 E6     ROR ram_00E6
C - - - - - 0x002FAC 01:AF9C: 85 E7     STA ram_00E7
loc_AF9E_начислить_опыт:
C D - - - - 0x002FAE 01:AF9E: A2 00     LDX #$00
bra_AFA0_loop:
C - - - - - 0x002FB0 01:AFA0: BD 54 04  LDA ram_опыт_lo,X
C - - - - - 0x002FB3 01:AFA3: 18        CLC
C - - - - - 0x002FB4 01:AFA4: 65 E6     ADC ram_00E6
C - - - - - 0x002FB6 01:AFA6: 9D 54 04  STA ram_опыт_lo,X
C - - - - - 0x002FB9 01:AFA9: BD 55 04  LDA ram_опыт_hi,X
C - - - - - 0x002FBC 01:AFAC: 65 E7     ADC ram_00E7
C - - - - - 0x002FBE 01:AFAE: 9D 55 04  STA ram_опыт_hi,X
C - - - - - 0x002FC1 01:AFB1: 90 08     BCC bra_AFBB_not_overflow
- - - - - - 0x002FC3 01:AFB3: A9 FF     LDA #$FF
- - - - - - 0x002FC5 01:AFB5: 9D 54 04  STA ram_опыт_lo,X
- - - - - - 0x002FC8 01:AFB8: 9D 55 04  STA ram_опыт_hi,X
bra_AFBB_not_overflow:
C - - - - - 0x002FCB 01:AFBB: E8        INX
C - - - - - 0x002FCC 01:AFBC: E8        INX
C - - - - - 0x002FCD 01:AFBD: E0 16     CPX #$16
C - - - - - 0x002FCF 01:AFBF: 90 DF     BCC bra_AFA0_loop
C - - - - - 0x002FD1 01:AFC1: 60        RTS



sub_0x002FD2_начислить_опыт:
; на вход подается
    ; A = номер игрока из твоей команды
    ; X = 02 (игрок) или 03 (кипер), также может быть 00 и 01
C D - - - - 0x002FD2 01:AFC2: 86 EC     STX ram_00EC
C - - - - - 0x002FD4 01:AFC4: 20 23 B0  JSR sub_B023_вычислить_указатели_опыта
C - - - - - 0x002FD7 01:AFC7: 85 EB     STA ram_00EB
C - - - - - 0x002FD9 01:AFC9: 29 F0     AND #$F0
C - - - - - 0x002FDB 01:AFCB: 4A        LSR
                                        LSR
C - - - - - 0x002FDC 01:AFCC: 18        CLC
C - - - - - 0x002FDD 01:AFCD: 65 EC     ADC ram_00EC
C - - - - - 0x002FDF 01:AFCF: AA        TAX
C - - - - - 0x002FE0 01:AFD0: BD 1C BA  LDA tbl_BA1C_множитель_опыта,X
C - - - - - 0x002FE3 01:AFD3: AA        TAX
C - - - - - 0x002FE4 01:AFD4: A5 26     LDA ram_матч
C - - - - - 0x002FE6 01:AFD6: 0A        ASL
C - - - - - 0x002FE7 01:AFD7: A8        TAY
C - - - - - 0x002FE8 01:AFD8: B9 4D BA  LDA tbl_BA4C_опыт_за_победу_над_командой + $01,Y
C - - - - - 0x002FEB 01:AFDB: 85 ED     STA ram_00ED
C - - - - - 0x002FED 01:AFDD: B9 4C BA  LDA tbl_BA4C_опыт_за_победу_над_командой,Y
C - - - - - 0x002FF0 01:AFE0: 66 ED     ROR ram_00ED      ; поделить на 4
C - - - - - 0x002FF2 01:AFE2: 4A        LSR
C - - - - - 0x002FF3 01:AFE3: 66 ED     ROR ram_00ED
C - - - - - 0x002FF5 01:AFE5: 4A        LSR
C - - - - - 0x002FF6 01:AFE6: 20 EE 9D  JSR sub_0x001DFE_умножить_A_на_X
C - - - - - 0x002FF9 01:AFE9: 06 EC     ASL ram_00EC      ; умножить результат на 4
C - - - - - 0x002FFB 01:AFEB: 26 ED     ROL ram_00ED
C - - - - - 0x002FFD 01:AFED: 06 EC     ASL ram_00EC
C - - - - - 0x002FFF 01:AFEF: 26 ED     ROL ram_00ED
C - - - - - 0x003001 01:AFF1: A5 EB     LDA ram_00EB      ; число из таблицы команды для текущего игрока
C - - - - - 0x003003 01:AFF3: 29 0F     AND #$0F
C - - - - - 0x003005 01:AFF5: 0A        ASL
C - - - - - 0x003006 01:AFF6: AA        TAX
C - - - - - 0x003007 01:AFF7: BD 54 04  LDA ram_опыт_lo,X
C - - - - - 0x00300A 01:AFFA: 18        CLC
C - - - - - 0x00300B 01:AFFB: 65 ED     ADC ram_00ED
C - - - - - 0x00300D 01:AFFD: 9D 54 04  STA ram_опыт_lo,X
C - - - - - 0x003010 01:B000: BD 55 04  LDA ram_опыт_hi,X
C - - - - - 0x003013 01:B003: 69 00     ADC #$00
C - - - - - 0x003015 01:B005: 9D 55 04  STA ram_опыт_hi,X
C - - - - - 0x003018 01:B008: 90 08     BCC bra_B012_RTS
- - - - - - 0x00301A 01:B00A: A9 FF     LDA #$FF      ; если overflow
- - - - - - 0x00301C 01:B00C: 9D 54 04  STA ram_опыт_lo,X
- - - - - - 0x00301F 01:B00F: 9D 55 04  STA ram_опыт_hi,X
bra_B012_RTS:
C - - - - - 0x003022 01:B012: 60        RTS



sub_B013_чтение_опыта_из_оперативки_для_игрока:
C - - - - - 0x003023 01:B013: 20 23 B0  JSR sub_B023_вычислить_указатели_опыта
sub_B016_чтение_опыта_из_оперативки:
C - - - - - 0x003026 01:B016: 29 0F     AND #$0F
C - - - - - 0x003028 01:B018: 0A        ASL
C - - - - - 0x003029 01:B019: AA        TAX
C - - - - - 0x00302A 01:B01A: BD 54 04  LDA ram_опыт_lo,X
C - - - - - 0x00302D 01:B01D: A8        TAY
C - - - - - 0x00302E 01:B01E: BD 55 04  LDA ram_опыт_hi,X
C - - - - - 0x003031 01:B021: AA        TAX
C - - - - - 0x003032 01:B022: 60        RTS



sub_B023_вычислить_указатели_опыта:
C - - - - - 0x003033 01:B023: A6 2A     LDX ram_твоя_команда
C - - - - - 0x003035 01:B025: 18        CLC
C - - - - - 0x003036 01:B026: 7D D3 B9  ADC tbl_B9D3_смещение_указателя_таблицы_исходя_из_команды,X
C - - - - - 0x003039 01:B029: AA        TAX
C - - - - - 0x00303A 01:B02A: BD D6 B9  LDA tbl_B9D6_указатели_опыта_игрока,X
C - - - - - 0x00303D 01:B02D: 60        RTS



sub_B02E:
C - - - - - 0x00303E 01:B02E: 84 E6     STY ram_00E6
C - - - - - 0x003040 01:B030: 86 E7     STX ram_00E7
C - - - - - 0x003042 01:B032: A2 80     LDX #$80
bra_B034_loop:
C - - - - - 0x003044 01:B034: CA        DEX
C - - - - - 0x003045 01:B035: CA        DEX
C - - - - - 0x003046 01:B036: A5 E6     LDA ram_00E6
C - - - - - 0x003048 01:B038: DD 90 BA  CMP tbl_BA90_опыт_для_достижения_уровня,X
C - - - - - 0x00304B 01:B03B: A5 E7     LDA ram_00E7
C - - - - - 0x00304D 01:B03D: FD 91 BA  SBC tbl_BA90_опыт_для_достижения_уровня + $01,X
C - - - - - 0x003050 01:B040: 90 F2     BCC bra_B034_loop
C - - - - - 0x003052 01:B042: 8A        TXA
C - - - - - 0x003053 01:B043: 4A        LSR
C - - - - - 0x003054 01:B044: 60        RTS



sub_B045:
C - - - - - 0x003055 01:B045: 0A        ASL
C - - - - - 0x003056 01:B046: AA        TAX
C - - - - - 0x003057 01:B047: BD 90 BA  LDA tbl_BA90_опыт_для_достижения_уровня,X
C - - - - - 0x00305A 01:B04A: A8        TAY
C - - - - - 0x00305B 01:B04B: BD 91 BA  LDA tbl_BA90_опыт_для_достижения_уровня + $01,X
C - - - - - 0x00305E 01:B04E: AA        TAX
C - - - - - 0x00305F 01:B04F: 60        RTS



sub_0x003060:
C D - - - - 0x003060 01:B050: A5 26     LDA ram_матч
C - - - - - 0x003062 01:B052: C9 10     CMP #$10
C - - - - - 0x003064 01:B054: F0 16     BEQ bra_B06C_япония
C - - - - - 0x003066 01:B056: C9 0C     CMP #$0C
C - - - - - 0x003068 01:B058: F0 0B     BEQ bra_B065_сан_паулу_2
C - - - - - 0x00306A 01:B05A: C9 06     CMP #$06
C - - - - - 0x00306C 01:B05C: D0 42     BNE bra_B0A0_RTS
C - - - - - 0x00306E 01:B05E: A0 10     LDY #< tbl_BB10_нанкацу
C - - - - - 0x003070 01:B060: A2 BB     LDX #> tbl_BB10_нанкацу
C - - - - - 0x003072 01:B062: 4C 70 B0  JMP loc_B070
bra_B065_сан_паулу_2:
C - - - - - 0x003075 01:B065: A0 1A     LDY #< tbl_BB1A_сан_паулу_2
C - - - - - 0x003077 01:B067: A2 BB     LDX #> tbl_BB1A_сан_паулу_2
C - - - - - 0x003079 01:B069: 4C 70 B0  JMP loc_B070
bra_B06C_япония:
C - - - - - 0x00307C 01:B06C: A0 24     LDY #< tbl_BB24_япония
C - - - - - 0x00307E 01:B06E: A2 BB     LDX #> tbl_BB24_япония
loc_B070:
C D - - - - 0x003080 01:B070: 84 E6     STY ram_00E6
C - - - - - 0x003082 01:B072: 86 E7     STX ram_00E7
C - - - - - 0x003084 01:B074: A0 EC     LDY #$EC
bra_B076_loop_копирования:
C - - - - - 0x003086 01:B076: B9 68 03  LDA ram_опыт_lo - $EC,Y
C - - - - - 0x003089 01:B079: 99 6A 05  STA ram_0656 - $EC,Y
C - - - - - 0x00308C 01:B07C: C8        INY
C - - - - - 0x00308D 01:B07D: D0 F7     BNE bra_B076_loop_копирования
C - - - - - 0x00308F 01:B07F: A9 00     LDA #$00
C - - - - - 0x003091 01:B081: 85 E9     STA ram_00E9
bra_B083_loop:
C - - - - - 0x003093 01:B083: 4A        LSR
C - - - - - 0x003094 01:B084: A8        TAY
C - - - - - 0x003095 01:B085: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x003097 01:B087: AA        TAX
C - - - - - 0x003098 01:B088: A4 E9     LDY ram_00E9
C - - - - - 0x00309A 01:B08A: BD 56 06  LDA ram_0656,X
C - - - - - 0x00309D 01:B08D: 99 54 04  STA ram_опыт_lo,Y
C - - - - - 0x0030A0 01:B090: BD 57 06  LDA ram_0657,X
C - - - - - 0x0030A3 01:B093: 99 55 04  STA ram_опыт_hi,Y
C - - - - - 0x0030A6 01:B096: E6 E9     INC ram_00E9
C - - - - - 0x0030A8 01:B098: E6 E9     INC ram_00E9
C - - - - - 0x0030AA 01:B09A: A5 E9     LDA ram_00E9
C - - - - - 0x0030AC 01:B09C: C9 14     CMP #$14
C - - - - - 0x0030AE 01:B09E: D0 E3     BNE bra_B083_loop
bra_B0A0_RTS:
C - - - - - 0x0030B0 01:B0A0: 60        RTS



sub_B0A1_отобразить_количество_замен:
C - - - - - 0x0030B1 01:B0A1: A6 27     LDX ram_номер_тайма
C - - - - - 0x0030B3 01:B0A3: F0 1A     BEQ bra_B0BF_RTS
C - - - - - 0x0030B5 01:B0A5: A0 C8     LDY #< tbl_B9C8_количество_замен_для_японии
C - - - - - 0x0030B7 01:B0A7: A2 B9     LDX #> tbl_B9C8_количество_замен_для_японии
C - - - - - 0x0030B9 01:B0A9: 20 B6 97  JSR sub_0x0017C6_запись_в_буфер_без_смещения
; адрес ppu для цифры количества замен
C - - - - - 0x0030BC 01:B0AC: A0 52     LDY #$53
C - - - - - 0x0030BE 01:B0AE: A2 22     LDX #$22
C - - - - - 0x0030C0 01:B0B0: A9 01     LDA #$01
C - - - - - 0x0030C2 01:B0B2: 85 E9     STA ram_00E9
C - - - - - 0x0030C4 01:B0B4: AD 50 04  LDA ram_счетчик_замен
C - - - - - 0x0030C7 01:B0B7: 49 FF     EOR #$FF
C - - - - - 0x0030C9 01:B0B9: 18        CLC
C - - - - - 0x0030CA 01:B0BA: 69 37     ADC #$34
C - - - - - 0x0030CC 01:B0BC: 20 95 98  JSR sub_0x0018A5
bra_B0BF_RTS:
C - - - - - 0x0030CF 01:B0BF: 60        RTS



sub_B0C0_обработать_таблицу_с_байтами_фона:
C - - - - - 0x0030D0 01:B0C0: 84 EC     STY ram_00EC
C - - - - - 0x0030D2 01:B0C2: 86 ED     STX ram_00ED
loc_B0C4:
C D - - - - 0x0030D4 01:B0C4: A0 00     LDY #$00
C - - - - - 0x0030D6 01:B0C6: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0030D8 01:B0C8: 0A        ASL
C - - - - - 0x0030D9 01:B0C9: AA        TAX
C - - - - - 0x0030DA 01:B0CA: BD D7 B0  LDA tbl_B0D7,X
C - - - - - 0x0030DD 01:B0CD: 85 E6     STA ram_00E6
C - - - - - 0x0030DF 01:B0CF: BD D8 B0  LDA tbl_B0D7 + $01,X
C - - - - - 0x0030E2 01:B0D2: 85 E7     STA ram_00E7
C - - - - - 0x0030E4 01:B0D4: 6C E6 00  JMP (ram_00E6)



; bzk optimize, почистить мусор
tbl_B0D7:
    .word ofs_007_B0F7_00_запись_в_буфер_без_смещения
    .word ofs_007_B102_01_запись_в_буфер_со_смещением
    .word ofs_007_B113_02       ; unused
    .word ofs_007_B11E_03       ; unused
    .word ofs_007_B12F_04_вертикальная_полоска
    .word ofs_007_B13B_05_горизонтальная_полоска
    .word ofs_007_B14D_06       ; unused
    .word ofs_007_B160_07       ; unused
    .word ofs_007_B173_08       ; unused
    .word ofs_007_B186_09       ; unused
    .word ofs_007_B199_0A_запись_в_буфер_с_учетом_кодировки_японских_символов
    .word _общий_RTS        ; unused
    .word _общий_RTS        ; unused
    .word ofs_007_B1A4_0D_очистить_nametable
    .word ofs_007_B1AC_0E_jmp
    .word _общий_RTS        ; 0F закончить чтение



ofs_007_B0F7_00_запись_в_буфер_без_смещения:
C - J - - - 0x003107 01:B0F7: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - - 0x00310A 01:B0FA: 20 B6 97  JSR sub_0x0017C6_запись_в_буфер_без_смещения
C - - - - - 0x00310D 01:B0FD: A9 03     LDA #$03
C - - - - - 0x00310F 01:B0FF: 4C BB B1  JMP loc_B1BB



ofs_007_B102_01_запись_в_буфер_со_смещением:
C - J - - - 0x003112 01:B102: A0 03     LDY #$03
C - - - - - 0x003114 01:B104: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x003116 01:B106: 48        PHA
C - - - - - 0x003117 01:B107: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - - 0x00311A 01:B10A: 68        PLA
C - - - - - 0x00311B 01:B10B: 20 B8 97  JSR sub_0x0017C8_запись_в_буфер_со_смещением
C - - - - - 0x00311E 01:B10E: A9 04     LDA #$04
C - - - - - 0x003120 01:B110: 4C BB B1  JMP loc_B1BB



ofs_007_B113_02:
- - - - - - 0x003123 01:B113: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
- - - - - - 0x003126 01:B116: 20 AB 97  JSR sub_0x0017BB
- - - - - - 0x003129 01:B119: A9 03     LDA #$03
- - - - - - 0x00312B 01:B11B: 4C BB B1  JMP loc_B1BB



ofs_007_B11E_03:
- - - - - - 0x00312E 01:B11E: A0 03     LDY #$03
- - - - - - 0x003130 01:B120: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x003132 01:B122: 48        PHA
- - - - - - 0x003133 01:B123: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
- - - - - - 0x003136 01:B126: 68        PLA
- - - - - - 0x003137 01:B127: 20 AD 97  JSR sub_0x0017BD
- - - - - - 0x00313A 01:B12A: A9 04     LDA #$04
- - - - - - 0x00313C 01:B12C: 4C BB B1  JMP loc_B1BB



ofs_007_B12F_04_вертикальная_полоска:
C - J - - - 0x00313F 01:B12F: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
C - - - - - 0x003142 01:B132: 20 DE B1  JSR sub_B1DE
C - - - - - 0x003145 01:B135: A4 E9     LDY ram_00E9
C - - - - - 0x003147 01:B137: A2 01     LDX #$01
C - - - - - 0x003149 01:B139: 10 0A     BPL bra_B145



ofs_007_B13B_05_горизонтальная_полоска:
C - J - - - 0x00314B 01:B13B: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
C - - - - - 0x00314E 01:B13E: 20 DE B1  JSR sub_B1DE
C - - - - - 0x003151 01:B141: A6 E9     LDX ram_00E9
C - - - - - 0x003153 01:B143: A0 01     LDY #$01
bra_B145:
C - - - - - 0x003155 01:B145: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
C - - - - - 0x003158 01:B148: A9 05     LDA #$05
C - - - - - 0x00315A 01:B14A: 4C BB B1  JMP loc_B1BB



ofs_007_B14D_06:
- - - - - - 0x00315D 01:B14D: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - - 0x003160 01:B150: 20 DE B1  JSR sub_B1DE
- - - - - - 0x003163 01:B153: AA        TAX
- - - - - - 0x003164 01:B154: A9 00     LDA #$00
- - - - - - 0x003166 01:B156: A4 E9     LDY ram_00E9
- - - - - - 0x003168 01:B158: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
- - - - - - 0x00316B 01:B15B: A9 05     LDA #$05
- - - - - - 0x00316D 01:B15D: 4C BB B1  JMP loc_B1BB



ofs_007_B160_07:
- - - - - - 0x003170 01:B160: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - - 0x003173 01:B163: 20 DE B1  JSR sub_B1DE
- - - - - - 0x003176 01:B166: AA        TAX
- - - - - - 0x003177 01:B167: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x003179 01:B169: A4 E9     LDY ram_00E9
- - - - - - 0x00317B 01:B16B: 20 EA 98  JSR sub_0x0018FA_замостить_часть_экрана_тайлом
- - - - - - 0x00317E 01:B16E: A9 06     LDA #$06
- - - - - - 0x003180 01:B170: 4C BB B1  JMP loc_B1BB



ofs_007_B173_08:
- - - - - - 0x003183 01:B173: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - - 0x003186 01:B176: 20 DE B1  JSR sub_B1DE
- - - - - - 0x003189 01:B179: AA        TAX
- - - - - - 0x00318A 01:B17A: A9 00     LDA #$00
- - - - - - 0x00318C 01:B17C: A4 E9     LDY ram_00E9
- - - - - - 0x00318E 01:B17E: 20 DF 98  JSR sub_0x0018EF
- - - - - - 0x003191 01:B181: A9 05     LDA #$05
- - - - - - 0x003193 01:B183: 4C BB B1  JMP loc_B1BB



ofs_007_B186_09:
- - - - - - 0x003196 01:B186: 20 D3 B1  JSR sub_B1D3_прочитать_адрес_для_2006
- - - - - - 0x003199 01:B189: 20 DE B1  JSR sub_B1DE
- - - - - - 0x00319C 01:B18C: AA        TAX
- - - - - - 0x00319D 01:B18D: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x00319F 01:B18F: A4 E9     LDY ram_00E9
- - - - - - 0x0031A1 01:B191: 20 DF 98  JSR sub_0x0018EF
- - - - - - 0x0031A4 01:B194: A9 06     LDA #$06
- - - - - - 0x0031A6 01:B196: 4C BB B1  JMP loc_B1BB



ofs_007_B199_0A_запись_в_буфер_с_учетом_кодировки_японских_символов:
; bzk optimize, избавиться от всех местоположений в таблицах с байтами, заменить на 00
; вроде бы больше нету .byte $0A, тогда просто поудалять эти японские коды
C - J - - - 0x0031A9 01:B199: 20 C9 B1  JSR sub_B1C9_прочитать_поинтер
C - - - - - 0x0031AC 01:B19C: 20 27 9D  JSR sub_0x001D37_запись_в_буфер
C - - - - - 0x0031AF 01:B19F: A9 03     LDA #$03
C - - - - - 0x0031B1 01:B1A1: 4C BB B1  JMP loc_B1BB



ofs_007_B1A4_0D_очистить_nametable:
C - J - - - 0x0031B4 01:B1A4: 20 A0 98  JSR sub_0x0018B0_очистка_двух_nametable
C - - - - - 0x0031B7 01:B1A7: A9 01     LDA #$01
C - - - - - 0x0031B9 01:B1A9: 4C BB B1  JMP loc_B1BB



ofs_007_B1AC_0E_jmp:
; указать адрес и прыгнуть на него, затем продолжить чтение байтов
C - J - - - 0x0031BC 01:B1AC: C8        INY
C - - - - - 0x0031BD 01:B1AD: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031BF 01:B1AF: AA        TAX
C - - - - - 0x0031C0 01:B1B0: C8        INY
C - - - - - 0x0031C1 01:B1B1: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031C3 01:B1B3: 85 ED     STA ram_00ED
C - - - - - 0x0031C5 01:B1B5: 86 EC     STX ram_00EC
C - - - - - 0x0031C7 01:B1B7: 4C C4 B0  JMP loc_B0C4



loc_B1BB:
C D - - - - 0x0031CB 01:B1BB: 18        CLC
C - - - - - 0x0031CC 01:B1BC: 65 EC     ADC ram_00EC
C - - - - - 0x0031CE 01:B1BE: 85 EC     STA ram_00EC
C - - - - - 0x0031D0 01:B1C0: A5 ED     LDA ram_00ED
C - - - - - 0x0031D2 01:B1C2: 69 00     ADC #$00
C - - - - - 0x0031D4 01:B1C4: 85 ED     STA ram_00ED
C - - - - - 0x0031D6 01:B1C6: 4C C4 B0  JMP loc_B0C4



sub_B1C9_прочитать_поинтер:
; следующие 2 байта это младший и старший байты адреса
C - - - - - 0x0031D9 01:B1C9: A0 02     LDY #$02
C - - - - - 0x0031DB 01:B1CB: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031DD 01:B1CD: AA        TAX
C - - - - - 0x0031DE 01:B1CE: 88        DEY
C - - - - - 0x0031DF 01:B1CF: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031E1 01:B1D1: A8        TAY
C - - - - - 0x0031E2 01:B1D2: 60        RTS



sub_B1D3_прочитать_адрес_для_2006:
C - - - - - 0x0031E3 01:B1D3: C8        INY
C - - - - - 0x0031E4 01:B1D4: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031E6 01:B1D6: 85 E6     STA ram_00E6
C - - - - - 0x0031E8 01:B1D8: C8        INY
C - - - - - 0x0031E9 01:B1D9: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031EB 01:B1DB: 85 E7     STA ram_00E7
C - - - - - 0x0031ED 01:B1DD: 60        RTS



sub_B1DE:
C - - - - - 0x0031EE 01:B1DE: C8        INY
C - - - - - 0x0031EF 01:B1DF: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031F1 01:B1E1: 85 E9     STA ram_00E9
C - - - - - 0x0031F3 01:B1E3: C8        INY
C - - - - - 0x0031F4 01:B1E4: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0031F6 01:B1E6: C8        INY
C - - - - - 0x0031F7 01:B1E7: 60        RTS



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
- D - - - - 0x00330D 01:B2FD: 40        .byte $40
- D - - - - 0x00330E 01:B2FE: 01        .byte $01
- D - - - - 0x00330F 01:B2FF: 00        .byte $00
- D - - - - 0x003310 01:B300: 50        .byte $50
- D - - - - 0x003311 01:B301: 48        .byte $48
- D - - - - 0x003312 01:B302: 01        .byte $01
- D - - - - 0x003313 01:B303: 00        .byte $00
- D - - - - 0x003314 01:B304: 50        .byte $50



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
- D - I - - 0x00344D 01:B43D: 04        .byte $04
- D - I - - 0x00344E 01:B43E: 84 20     .word $2082
- D - I - - 0x003450 01:B440: 16        .byte $16
- D - I - - 0x003451 01:B441: AA        .byte $AA
; вертикальная полоска справа от имен игроков
- D - I - - 0x003452 01:B442: 04        .byte $04
- D - I - - 0x003453 01:B443: 8D 20     .word $208F
- D - I - - 0x003455 01:B445: 16        .byte $16
- D - I - - 0x003456 01:B446: AB        .byte $AB

- D - I - - 0x003457 01:B447: 00        .byte $00
- D - I - - 0x003458 01:B448: 74 B4     .word off_B474_окно_основных_игроков_сан_паулу_нанкацу

- D - I - - 0x00345A 01:B44A: 00        .byte $00
- D - I - - 0x00345B 01:B44B: B3 B4     .word off_B4B3_опции_сан_паулу_нанкацу

- D - I - - 0x00345D 01:B44D: 00        .byte $00
- D - I - - 0x00345E 01:B44E: 53 B6     .word off_B653_миникарта
; закончить отрисовку
- D - I - - 0x003460 01:B450: 0F        .byte $0F



tbl_B451_экран_с_опциями_с_запасными:
; вертикальная полоска слева от имен основных игроков
- D - I - - 0x003461 01:B451: 04        .byte $04
- D - I - - 0x003462 01:B452: 81 20     .word $2080
- D - I - - 0x003464 01:B454: 16        .byte $16
- D - I - - 0x003465 01:B455: AA        .byte $AA
; вертикальная полоска справа от имен основных игроков
- D - I - - 0x003466 01:B456: 04        .byte $04
- D - I - - 0x003467 01:B457: 8A 20     .word $208A
- D - I - - 0x003469 01:B459: 16        .byte $16
- D - I - - 0x00346A 01:B45A: AB        .byte $AB

- D - I - - 0x00346F 01:B45F: 00        .byte $00
- D - I - - 0x003470 01:B460: 83 B5     .word off_B583_опции_японии
; + смещение влево
- D - I - - 0x003472 01:B462: 01        .byte $01
- D - I - - 0x003473 01:B463: 53 B6     .word off_B653_миникарта
- D - I - - 0x003475 01:B465: FB        .byte $FA

- D - I - - 0x00346B 01:B45B: 01        .byte $00
- D - I - - 0x00346C 01:B45C: 74 B4     .word off_B474_окно_основных_игроков_япония
; вертикальная полоска слева от имен запасных игроков
- D - I - - 0x003476 01:B466: 04        .byte $04
- D - I - - 0x003477 01:B467: 97 20     .word $2095
- D - I - - 0x003479 01:B469: 16        .byte $16
- D - I - - 0x00347A 01:B46A: AA        .byte $AA
; вертикальная полоска справа от имен запасных игроков
- D - I - - 0x00347B 01:B46B: 04        .byte $04
- D - I - - 0x00347C 01:B46C: 9E 20     .word $209F
- D - I - - 0x00347E 01:B46E: 16        .byte $16
- D - I - - 0x00347F 01:B46F: AB        .byte $AB

- D - I - - 0x003480 01:B470: 00        .byte $00
- D - I - - 0x003481 01:B471: A1 B6     .word off_B6A1_окно_запасных_игроков

- D - I - - 0x003483 01:B473: 0F        .byte $0F



off_B474_окно_основных_игроков_сан_паулу_нанкацу:
; верхняя обводка
- D - I - - 0x003488 01:B478: 0A        .byte $0E
- D - I - - 0x003489 01:B479: 64 20     .word $2062
- D - I - - 0x00348B 01:B47B: 9C        .byte $9C
- D - I - - 0x00348C 01:B47C: A8        .byte $A8
- D - I - - 0x00348B 01:B47B: 9C        .byte $A8
- D - I - - 0x00348C 01:B47C: A8        .byte $A8
- D - I - - 0x00348D 01:B47D: 5C        .byte $00
- D - I - - 0x00348E 01:B47E: 6A        .byte $54
- D - I - - 0x00348F 01:B47F: 42        .byte $65
- D - I - - 0x003490 01:B480: 64        .byte $61
- D - I - - 0x003491 01:B481: 7D        .byte $6D
- D - I - - 0x003492 01:B482: 00        .byte $00
- D - I - - 0x003493 01:B483: A8        .byte $A8
- D - I - - 0x003494 01:B484: 9D        .byte $A8
- D - I - - 0x003493 01:B483: A8        .byte $A8
- D - I - - 0x003494 01:B484: 9D        .byte $9D
; нижняя обводка
- D - I - - 0x003495 01:B485: 0A        .byte $0E
- D - I - - 0x003496 01:B486: 44 23     .word $2342
- D - I - - 0x003498 01:B488: 9E        .byte $9E
- D - I - - 0x003499 01:B489: A9        .byte $A9
- D - I - - 0x00349A 01:B48A: A9        .byte $A9
- D - I - - 0x00349B 01:B48B: A9        .byte $A9
- D - I - - 0x00349C 01:B48C: A9        .byte $A9
- D - I - - 0x00349D 01:B48D: A9        .byte $A9
- D - I - - 0x00349E 01:B48E: A9        .byte $A9
- D - I - - 0x00349F 01:B48F: A9        .byte $A9
- D - I - - 0x00349C 01:B48C: A9        .byte $A9
- D - I - - 0x00349D 01:B48D: A9        .byte $A9
- D - I - - 0x00349E 01:B48E: A9        .byte $A9
- D - I - - 0x00349F 01:B48F: A9        .byte $A9
- D - I - - 0x0034A0 01:B490: A9        .byte $A9
- D - I - - 0x0034A1 01:B491: 9F        .byte $9F
; дополнительные цифры для 10 и 11 слева от игроков
- D - I - - 0x0034A2 01:B492: 83        .byte $83
- D - I - - 0x0034A3 01:B493: A5 20     .word $20A3
- D - I - - 0x0034A5 01:B495: 34        .byte $31
- D - I - - 0x0034A6 01:B496: 00        .byte $00
- D - I - - 0x0034A7 01:B497: 34        .byte $31
; цифры слева от игроков
- D - I - - 0x0034A8 01:B498: 93        .byte $93
- D - I - - 0x0034A9 01:B499: A6 20     .word $20A4
- D - I - - 0x0034AB 01:B49B: 34        .byte $31
- D - I - - 0x0034AC 01:B49C: 00        .byte $00
- D - I - - 0x0034AD 01:B49D: 33        .byte $30
- D - I - - 0x0034AE 01:B49E: 00        .byte $00
- D - I - - 0x0034AF 01:B49F: 3C        .byte $39
- D - I - - 0x0034B0 01:B4A0: 00        .byte $00
- D - I - - 0x0034B1 01:B4A1: 3B        .byte $38
- D - I - - 0x0034B2 01:B4A2: 00        .byte $00
- D - I - - 0x0034B3 01:B4A3: 3A        .byte $37
- D - I - - 0x0034B4 01:B4A4: 00        .byte $00
- D - I - - 0x0034B5 01:B4A5: 39        .byte $36
- D - I - - 0x0034B6 01:B4A6: 00        .byte $00
- D - I - - 0x0034B7 01:B4A7: 38        .byte $35
- D - I - - 0x0034B8 01:B4A8: 00        .byte $00
- D - I - - 0x0034B9 01:B4A9: 37        .byte $34
- D - I - - 0x0034BA 01:B4AA: 00        .byte $00
- D - I - - 0x0034BB 01:B4AB: 36        .byte $33
- D - I - - 0x0034BC 01:B4AC: 00        .byte $00
- D - I - - 0x0034BD 01:B4AD: 35        .byte $32
; GK
- D - I - - 0x0034BE 01:B4AE: 42        .byte $42
- D - I - - 0x0034BF 01:B4AF: 25 23     .word $2323
- D - I - - 0x0034C1 01:B4B1: 87        .byte $47
- D - I - - 0x0034C2 01:B4B2: 8B        .byte $4B



off_B474_окно_основных_игроков_япония:
; верхняя обводка
- D - I - - 0x003488 01:B478: 0A        .byte $0B
- D - I - - 0x003489 01:B479: 64 20     .word $2060
- D - I - - 0x00348B 01:B47B: 9C        .byte $9C
- D - I - - 0x00348C 01:B47C: A8        .byte $A8
- D - I - - 0x00348D 01:B47D: 5C        .byte $00
- D - I - - 0x00348E 01:B47E: 6A        .byte $54
- D - I - - 0x00348F 01:B47F: 42        .byte $65
- D - I - - 0x003490 01:B480: 64        .byte $61
- D - I - - 0x003491 01:B481: 7D        .byte $6D
- D - I - - 0x003492 01:B482: 00        .byte $00
- D - I - - 0x003493 01:B483: A8        .byte $A8
- D - I - - 0x003493 01:B483: A8        .byte $A8
- D - I - - 0x003494 01:B484: 9D        .byte $9D
; нижняя обводка
- D - I - - 0x003495 01:B485: 0A        .byte $4B
- D - I - - 0x003496 01:B486: 44 23     .word $2340
- D - I - - 0x003498 01:B488: 9E        .byte $9E
- D - I - - 0x003499 01:B489: A9        .byte $A9
- D - I - - 0x00349C 01:B48C: A9        .byte $A9
- D - I - - 0x00349D 01:B48D: A9        .byte $A9
- D - I - - 0x00349E 01:B48E: A9        .byte $A9
- D - I - - 0x00349F 01:B48F: A9        .byte $A9
- D - I - - 0x00349C 01:B48C: A9        .byte $A9
- D - I - - 0x00349D 01:B48D: A9        .byte $A9
- D - I - - 0x00349E 01:B48E: A9        .byte $A9
- D - I - - 0x0034A0 01:B490: A9        .byte $A9
- D - I - - 0x0034A1 01:B491: 9F        .byte $9F



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



tbl_B823_spr_T:
- D - - - - 0x003833 01:B823: 1C        .byte $1C
- D - - - - 0x003834 01:B824: 1D        .byte $1D
- D - - - - 0x003835 01:B825: 1E        .byte $1E
- D - - - - 0x003836 01:B826: 1F        .byte $1F
- D - - - - 0x003837 01:B827: 30        .byte $30
- D - - - - 0x003838 01:B828: 31        .byte $31
- D - - - - 0x003839 01:B829: 32        .byte $32
- D - - - - 0x00383A 01:B82A: 33        .byte $33
- D - - - - 0x00383B 01:B82B: 34        .byte $34
- D - - - - 0x00383C 01:B82C: 35        .byte $35



tbl_B82D_офсет_спрайтов_миникарты:
- D - - - - 0x00383D 01:B82D: 00        .byte off_B831_4_3_3 - tbl_B831_спрайты_миникарты
- D - - - - 0x00383E 01:B82E: 14        .byte off_B845_4_4_2 - tbl_B831_спрайты_миникарты
- D - - - - 0x00383F 01:B82F: 28        .byte off_B859_3_5_2 - tbl_B831_спрайты_миникарты
- D - - - - 0x003840 01:B830: 3C        .byte off_B86D_brazil_tactics - tbl_B831_спрайты_миникарты



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

off_B86D_brazil_tactics:
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
    .word $0000     ; 00 1
    .word $0060     ; 01 2
    .word $00D0     ; 02 3
    .word $0150     ; 03 4
    .word $0210     ; 04 5
    .word $0300     ; 05 6
    .word $03F8     ; 06 7
    .word $0500     ; 07 8
    .word $0628     ; 08 9
    .word $0780     ; 09 10
    .word $0900     ; 0A 11
    .word $0A90     ; 0B 12
    .word $0C30     ; 0C 13
    .word $0DE0     ; 0D 14
    .word $0FA0     ; 0E 15
    .word $1170     ; 0F 16
    .word $1350     ; 10 17
    .word $1550     ; 11 18
    .word $1770     ; 12 19
    .word $19B0     ; 13 20
    .word $1C00     ; 14 21
    .word $1E60     ; 15 22
    .word $20D0     ; 16 23
    .word $2348     ; 17 24
    .word $25C8     ; 18 25
    .word $2850     ; 19 26
    .word $2AE0     ; 1A 27
    .word $2D78     ; 1B 28
    .word $3018     ; 1C 29
    .word $32C8     ; 1D 30
    .word $3588     ; 1E 31
    .word $3858     ; 1F 32
    .word $3B30     ; 20 33
    .word $3E10     ; 21 34
    .word $40F8     ; 22 35
    .word $4440     ; 23 36
    .word $4790     ; 24 37
    .word $4AE8     ; 25 38
    .word $4E48     ; 26 39
    .word $51B0     ; 27 40
    .word $5520     ; 28 41
    .word $5900     ; 29 42
    .word $5D20     ; 2A 43
    .word $6150     ; 2B 44
    .word $6590     ; 2C 45
    .word $69E0     ; 2D 46
    .word $6E40     ; 2E 47
    .word $7300     ; 2F 48
    .word $77E0     ; 30 49
    .word $7CD0     ; 31 50
    .word $8200     ; 32 51
    .word $8780     ; 33 52
    .word $8D80     ; 34 53
    .word $93E0     ; 35 54
    .word $9AD0     ; 36 55
    .word $A1E0     ; 37 56
    .word $A9C0     ; 38 57
    .word $B1C0     ; 39 58
    .word $B9D0     ; 3A 59
    .word $C204     ; 3B 60
    .word $CB80     ; 3C 61
    .word $D7A0     ; 3D 62
    .word $E800     ; 3E 63
    .word $FFFF     ; 3F 64



tbl_BB10_нанкацу:
- D - I - - 0x003B20 01:BB10: 0A        .byte $0A   ; 00
- D - I - - 0x003B21 01:BB11: 04        .byte $04   ; 01
- D - I - - 0x003B22 01:BB12: 02        .byte $02   ; 02
- D - I - - 0x003B23 01:BB13: 06        .byte $06   ; 03
- D - I - - 0x003B24 01:BB14: 00        .byte $00   ; 04
- D - I - - 0x003B25 01:BB15: 10        .byte $10   ; 05
- D - I - - 0x003B26 01:BB16: 12        .byte $12   ; 06
- D - I - - 0x003B27 01:BB17: 08        .byte $08   ; 07
- D - I - - 0x003B28 01:BB18: 0E        .byte $0E   ; 08
- D - I - - 0x003B29 01:BB19: 0C        .byte $0C   ; 09

tbl_BB1A_сан_паулу_2:
- D - I - - 0x003B2A 01:BB1A: 08        .byte $08   ; 00
- D - I - - 0x003B2B 01:BB1B: 04        .byte $04   ; 01
- D - I - - 0x003B2C 01:BB1C: 02        .byte $02   ; 02
- D - I - - 0x003B2D 01:BB1D: 06        .byte $06   ; 03
- D - I - - 0x003B2E 01:BB1E: 0E        .byte $0E   ; 04
- D - I - - 0x003B2F 01:BB1F: 00        .byte $00   ; 05
- D - I - - 0x003B30 01:BB20: 12        .byte $12   ; 06
- D - I - - 0x003B31 01:BB21: 10        .byte $10   ; 07
- D - I - - 0x003B32 01:BB22: 0A        .byte $0A   ; 08
- D - I - - 0x003B33 01:BB23: 0C        .byte $0C   ; 09

tbl_BB24_япония:
- D - I - - 0x003B34 01:BB24: 00        .byte $00   ; 00
- D - I - - 0x003B35 01:BB25: 04        .byte $04   ; 01
- D - I - - 0x003B36 01:BB26: 00        .byte $00   ; 02
- D - I - - 0x003B37 01:BB27: 08        .byte $08   ; 03
- D - I - - 0x003B38 01:BB28: 0E        .byte $0E   ; 04
- D - I - - 0x003B39 01:BB29: 06        .byte $06   ; 05
- D - I - - 0x003B3A 01:BB2A: 00        .byte $00   ; 06
- D - I - - 0x003B3B 01:BB2B: 0E        .byte $0E   ; 07
- D - I - - 0x003B3C 01:BB2C: 02        .byte $02   ; 08
- D - I - - 0x003B3D 01:BB2D: 02        .byte $02   ; 09



tbl_BB2E_список_спешалов_игроков:
; 0x003B3E
; первый байт это номер игрока, код ищет по таблице игроков со спешалами
    .byte con_p_tsubasa_my
    .word off_BB55_p_tsubasa_my

    .byte con_p_misaki_my
    .word off_BB7E_p_misaki_my

    .byte con_p_ishizaki_my
    .word off_BB93_p_ishizaki_my

    .byte con_p_nitta_my
    .word off_BB99_p_nitta_my

    .byte con_p_masao_my
    .word off_BBA4_p_masao_my

    .byte con_p_kazuo_my
    .word off_BBC8_p_kazuo_my

    .byte con_p_sano_my
    .word off_BBEB_p_sano_my

    .byte con_p_hyuga_my
    .word off_BBEC_p_hyuga_my

    .byte con_p_soda_my
    .word off_BC0B_p_soda_my

    .byte con_p_jito_my
    .word off_BC1B_p_jito_my

    .byte con_p_matsuyama_my
    .word off_BC30_p_matsuyama_my

    .byte con_p_sawada_my
    .word off_BC36_p_sawada_my

    .byte con_p_misugi_my
    .word off_BC3C_p_misugi_my

    .byte con_p_wakashimazu_my
    .word off_BC42_p_wakashimazu_my



off_BB55_p_tsubasa_my:
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
    
    .byte $FF       ; end token



off_BB7E_p_misaki_my:
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
    
    .byte $FF       ; end token



off_BB93_p_ishizaki_my:
    .byte $00
    .byte $CE       ; face block
    .byte $00
    .byte $01
    .byte $07
    
    .byte $FF



off_BB99_p_nitta_my:
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
    
    .byte $FF       ; end token



off_BBA4_p_masao_my:
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
    
    .byte $FF       ; end token



off_BBC8_p_kazuo_my:
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
    
    .byte $FF       ; end token





off_BBEB_p_sano_my:
    .byte $00
    .byte $A8       ; overhead kick
    .byte $00
    .byte $0E
    .byte $06
    
    .byte $FF       ; end token





off_BBEC_p_hyuga_my:
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
    
    .byte $FF       ; end token



off_BC0B_p_soda_my:
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
    
    .byte $FF       ; end token



off_BC1B_p_jito_my:
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
    
    .byte $FF       ; end token



off_BC30_p_matsuyama_my:
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
    
    .byte $FF       ; end token



off_BC36_p_sawada_my:
    .byte $00
    .byte $CA       ; toho combo
    .byte $03
    .byte $02
    .byte $06
    
    .byte $FF       ; end token



off_BC3C_p_misugi_my:
    .byte $00
    .byte $A9       ; hyper overhead
    .byte $00
    .byte $0F
    .byte $06
    
    .byte $FF       ; end token



off_BC42_p_wakashimazu_my:
    .byte $00
    .byte $E5       ; triangle jump
    .byte $02
    .byte $00
    .byte $08
    
    .byte $FF       ; end token



tbl_BC48_адрес_ppu_спешалов:
    .word $2544 ; 00
    .word $2584 ; 01
    .word $25C4 ; 02
    .word $2604 ; 03
    .word $2644 ; 04
    .word $2684 ; 05
    .word $26C4 ; 06
    .word $2704 ; 07



tbl_BC58_адрес_ppu_для_имен_игроков:
    .word $2263 ; 00
    .word $226C ; 01
    .word $2275 ; 02
    .word $22A3 ; 03
    .word $22AC ; 04
    .word $22B5 ; 05
    .word $22E3 ; 06
    .word $22EC ; 07
    .word $22F5 ; 08
    .word $2323 ; 09
    .word $232C ; 0A



tbl_BC6E_символы_пароля:
; читается из 3х мест
; 5 строк по 13 символов
    .text "ABCDEFGHIJKLM"
    .text "NOPQRSTUVWXYZ"
    .text "abcdefghijklm"
    .text "nopqrstuvwxyz"
    .text "0123456789!?"
    .byte $D0   ; последний символ GO



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



