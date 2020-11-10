.segment "BANK_FE"
.include "copy_bank_ram.inc"

vec_FFF0_обработчик_RESET:
                    LDA #$08
                    STA $2000
                    SEI
                    LDX #$FF
                    TXS
                    LDA #$00
                    STA ram_0000
                    STA ram_0001
                    TAY
                    LDX #$08
@очистка_оперативки:
                    STA (ram_0000),Y
                    INY
                    BNE @очистка_оперативки
                    INC ram_0001
                    DEX
                    BNE @очистка_оперативки
                    STA $4010
                    LDA #$44
                    STA $5105
                    LDA #$08
                    STA ram_0020
                    LDA #$06
                    STA ram_для_2001
                    STA $2001
                    LDA #$40
                    STA $4017
                    CLI
                    LDA #$00
.export loc_0x03CF0E
loc_0x03CF0E:
loc_CEFE:
                    PHA
                    LDA #$00
                    STA $0469
                    STA $5204
                    JSR sub_CB8B_очистить_память_спрайтов
                    JSR sub_CB35_очистить_nametable
                    LDA ram_0020
                    AND #$7F
                    STA $2000
                    STA ram_0020
                    LDA #$08
                    STA ram_0020
                    STA $2000
                    LDA #$1E
                    STA ram_для_2001
                    STA $2001
                    LDX #$00
                    JSR sub_C4B2_банксвич_PRG_5114
                    LDX #$02
                    JSR sub_C4B9_банксвич_PRG_5115
                    PLA
                    JMP loc_0x00422B

loc_C421:
C D - - - 0x03C431 FF:C421: 24 3B     BIT ram_003B
C - - - - 0x03C433 FF:C423: 30 4D     BMI bra_C472
C - - - - 0x03C435 FF:C425: 38        SEC
C - - - - 0x03C436 FF:C426: 66 3B     ROR ram_003B
C - - - - 0x03C438 FF:C428: 85 3C     STA ram_003C
C - - - - 0x03C43A FF:C42A: 86 3D     STX ram_003D
C - - - - 0x03C43C FF:C42C: 84 3E     STY ram_003E
C - - - - 0x03C445 FF:C435: A9 02     LDA #$82
C - - - - 0x03C447 FF:C437: 8D 01 80  STA $5115
C - - - - 0x03C44A FF:C43A: 20 00 A0  JSR sub_0x004010
C - - - - 0x03C454 FF:C444: A9 0C     LDA #$8C
C - - - - 0x03C456 FF:C446: 8D 01 80  STA $5114
C - - - - 0x03C459 FF:C449: 20 00 80  JSR sub_0x018010_звуковой_движок
C - - - - 0x03C463 FF:C453: A5 24     LDA ram_для_5114
                                      ORA #$80
C - - - - 0x03C465 FF:C455: 8D 01 80  STA $5114
C - - - - 0x03C46F FF:C45F: A5 25     LDA ram_для_5115
                                      ORA #$80
C - - - - 0x03C471 FF:C461: 8D 01 80  STA $5115
C - - - - 0x03C479 FF:C469: A4 3E     LDY ram_003E
C - - - - 0x03C47B FF:C46B: A6 3D     LDX ram_003D
C - - - - 0x03C47D FF:C46D: A5 3C     LDA ram_003C
C - - - - 0x03C47F FF:C46F: 46 3B     LSR ram_003B
C - - - - 0x03C481 FF:C471: 40        RTI
bra_C472:
; bzk можно просто BIT, нахрена прям считывать 2002
C - - - - 0x03C482 FF:C472: 48        PHA
C - - - - 0x03C483 FF:C473: AD 02 20  LDA $2002
C - - - - 0x03C486 FF:C476: 68        PLA
C - - - - 0x03C487 FF:C477: 40        RTI

loc_C478:
C D - - - 0x03C488 FF:C478: 24 3B     BIT ram_003B
C - - - - 0x03C48A FF:C47A: 30 32     BMI bra_C4AE
C - - - - 0x03C48C FF:C47C: 38        SEC
C - - - - 0x03C48D FF:C47D: 66 3B     ROR ram_003B
C - - - - 0x03C48F FF:C47F: 85 3C     STA ram_003C
C - - - - 0x03C491 FF:C481: 86 3D     STX ram_003D
C - - - - 0x03C493 FF:C483: 84 3E     STY ram_003E
C - - - - 0x03C49C FF:C48C: A9 02     LDA #$82
C - - - - 0x03C49E FF:C48E: 8D 01 80  STA $5115
C - - - - 0x03C4A1 FF:C491: 20 60 A1  JSR sub_0x004170
C - - - - 0x03C4AB FF:C49B: A5 25     LDA ram_для_5115
                                      ORA #$80
C - - - - 0x03C4AD FF:C49D: 8D 01 80  STA $5115
C - - - - 0x03C4B5 FF:C4A5: A4 3E     LDY ram_003E
C - - - - 0x03C4B7 FF:C4A7: A6 3D     LDX ram_003D
C - - - - 0x03C4B9 FF:C4A9: A5 3C     LDA ram_003C
C - - - - 0x03C4BB FF:C4AB: 46 3B     LSR ram_003B
C - - - - 0x03C4BD FF:C4AD: 40        RTI
bra_C4AE:
                                      LDA #$00
- - - - - 0x03C4BE FF:C4AE: 8D 00 E0  STA $5204
- - - - - 0x03C4C1 FF:C4B1: 40        RTI

sub_C4B2_банксвич_PRG_5114:
; bzk оптимизировать
C - - - - 0x03C4C2 FF:C4B2: 86 24     STX ram_для_5114
                                      TXA
                                      ORA #$80
                                      STA $5114
                                      RTS

.export sub_0x03C4C9_банксвич_PRG_5115
sub_0x03C4C9_банксвич_PRG_5115:
.export loc_0x03C4C9_банксвич_PRG_5115
loc_0x03C4C9_банксвич_PRG_5115:
sub_C4B9_банксвич_PRG_5115:
; bzk оптимизировать
C D - - - 0x03C4C9 FF:C4B9: 86 25     STX ram_для_5115
                                      TXA
                                      ORA #$80
C - - - - 0x03C4D4 FF:C4C4: 8E 01 80  STA $5115
C - - - - 0x03C4D7 FF:C4C7: 60        RTS

.export sub_0x03C4D8_начислить_опыт
sub_0x03C4D8_начислить_опыт:
; срабатывает когда цубаса ударил, игроки напариваются на мяч, и после этого бряк
; на вход подается
    ; A = номер игрока
    ; X = 02 (игрок) или 03 (кипер), также может быть 00 и 01
; A и X менять нельзя до прыжка в подпрограмму
    BEQ bra_C4F3_выход      ; это клон
    CMP #$23
    BCS bra_C4F3_выход      ; это игрок команды соперника
    LDY #$80
    STY $5114
    LDY #$81
    STY $5115
    JSR sub_0x002FD2_начислить_опыт
    LDA ram_для_5114
    ORA #$80
    STA $5114
    LDA ram_для_5115
    ORA #$80
    STA $5115
bra_C4F3_выход:
    RTS

.export loc_0x03C6CE
loc_0x03C6CE:
C D - - - 0x03C6CE FF:C6BE: A2 E0     LDX #$E0
C - - - - 0x03C6D0 FF:C6C0: 9A        TXS
C - - - - 0x03C6D1 FF:C6C1: A9 00     LDA #$00
C - - - - 0x03C6D3 FF:C6C3: 85 01     STA ram_0001
C - - - - 0x03C6D5 FF:C6C5: 85 02     STA ram_0002
C - - - - 0x03C6D9 FF:C6C9: 85 05     STA ram_0005
C - - - - 0x03C6DB FF:C6CB: 85 06     STA ram_0006
C - - - - 0x03C6DF FF:C6CF: 85 09     STA ram_0009
C - - - - 0x03C6E1 FF:C6D1: 85 0A     STA ram_000A
C - - - - 0x03C6E5 FF:C6D5: 85 0D     STA ram_000D
C - - - - 0x03C6E7 FF:C6D7: 85 0E     STA ram_000E
C - - - - 0x03C6EB FF:C6DB: 85 11     STA ram_0011
C - - - - 0x03C6ED FF:C6DD: 85 12     STA ram_0012
C - - - - 0x03C6F1 FF:C6E1: 85 15     STA ram_0015
C - - - - 0x03C6F3 FF:C6E3: 85 16     STA ram_0016
C - - - - 0x03C6F5 FF:C6E5: 20 1F CF  JSR sub_CF1F
C - - - - 0x03C707 FF:C6F7: A9 20     LDA #$20
C - - - - 0x03C709 FF:C6F9: 8D 6C 04  STA $046C
C - - - - 0x03C70C FF:C6FC: A9 00     LDA #$00
C - - - - 0x03C70E FF:C6FE: 8D 6D 04  STA $046D
C - - - - 0x03C6FA FF:C6EA: 85 1B     STA ram_001B
C - - - - 0x03C6FC FF:C6EC: 8D 3F 06  STA $063F
C - - - - 0x03C6FF FF:C6EF: A9 08     LDA #$08
C - - - - 0x03C701 FF:C6F1: 85 20     STA ram_0020
C - - - - 0x03C703 FF:C6F3: A9 1E     LDA #$1E
C - - - - 0x03C705 FF:C6F5: 85 21     STA ram_для_2001
C - - - - 0x03C711 FF:C701: A9 3F     LDA #$3F
C - - - - 0x03C713 FF:C703: 8D 6E 04  STA $046E
C - - - - 0x03C716 FF:C706: A2 00     LDX #$00
C - - - - 0x03C718 FF:C708: A9 12     LDA #$12
C - - - - 0x03C71A FF:C70A: 20 02 CC  JSR sub_CC02
C - - - - 0x03C71D FF:C70D: A2 10     LDX #$10
C - - - - 0x03C71F FF:C70F: A9 12     LDA #$12
C - - - - 0x03C721 FF:C711: 20 02 CC  JSR sub_CC02
C - - - - 0x03C724 FF:C714: 20 D2 CC  JSR sub_CCD3
C - - - - 0x03C735 FF:C725: A2 01     LDX #$01
C - - - - 0x03C737 FF:C727: A9 28     LDA #$28
C - - - - 0x03C739 FF:C729: 95 01     STA ram_0001,X
C - - - - 0x03C73B FF:C72B: A9 00     LDA #$00
C - - - - 0x03C73D FF:C72D: 95 02     STA ram_0002,X
C - - - - 0x03C73F FF:C72F: A9 CA     LDA #> ofs_CA22
C - - - - 0x03C741 FF:C731: A0 21     LDY #< ofs_CA22
C - - - - 0x03C743 FF:C733: 20 E7 CA  JSR sub_CAE7_подготовить_подпрограмму_в_стеке
C - - - - 0x03C746 FF:C736: A2 05     LDX #$05
C - - - - 0x03C748 FF:C738: A9 50     LDA #$50
C - - - - 0x03C74A FF:C73A: 95 01     STA ram_0001,X
C - - - - 0x03C74C FF:C73C: A9 00     LDA #$00
C - - - - 0x03C74E FF:C73E: 95 02     STA ram_0002,X
C - - - - 0x03C750 FF:C740: A9 D1     LDA #> ofs_D11E
C - - - - 0x03C752 FF:C742: A0 1D     LDY #< ofs_D11E
C - - - - 0x03C754 FF:C744: 20 E7 CA  JSR sub_CAE7_подготовить_подпрограмму_в_стеке
C - - - - 0x03C757 FF:C747: A2 09     LDX #$09
C - - - - 0x03C759 FF:C749: A9 78     LDA #$78
C - - - - 0x03C75B FF:C74B: 95 01     STA ram_0001,X
C - - - - 0x03C75D FF:C74D: A9 00     LDA #$00
C - - - - 0x03C75F FF:C74F: 95 02     STA ram_0002,X
C - - - - 0x03C761 FF:C751: A9 EB     LDA #> ofs_EB86
C - - - - 0x03C763 FF:C753: A0 85     LDY #< ofs_EB86
C - - - - 0x03C765 FF:C755: 20 E7 CA  JSR sub_CAE7_подготовить_подпрограмму_в_стеке
C - - - - 0x03C768 FF:C758: A5 20     LDA ram_0020
C - - - - 0x03C76A FF:C75A: 09 80     ORA #$80
C - - - - 0x03C76C FF:C75C: 85 20     STA ram_0020
C - - - - 0x03C76E FF:C75E: 85 19     STA ram_0019
C - - - - 0x03C770 FF:C760: 8D 00 20  STA $2000
C - - - - 0x03C773 FF:C763: 4C 97 CA  JMP loc_CA97

vec_C500_обработчик_NMI:
C D - - - 0x03C77E FF:C76E: 24 1B     BIT ram_001B
C - - - - 0x03C780 FF:C770: 50 03     BVC bra_C775
C - - - - 0x03C782 FF:C772: 4C 21 C4  JMP loc_C421
bra_C775:
C - - - - 0x03C785 FF:C775: 48        PHA
C - - - - 0x03C786 FF:C776: 8A        TXA
C - - - - 0x03C787 FF:C777: 48        PHA
C - - - - 0x03C788 FF:C778: 98        TYA
C - - - - 0x03C789 FF:C779: 48        PHA
C - - - - 0x03C78A FF:C77A: A5 20     LDA ram_0020
C - - - - 0x03C78C FF:C77C: 29 7F     AND #$7F
C - - - - 0x03C78E FF:C77E: 8D 00 20  STA $2000
C - - - - 0x03C791 FF:C781: 85 20     STA ram_0020
C - - - - 0x03C793 FF:C783: BA        TSX
C - - - - 0x03C794 FF:C784: 8A        TXA
C - - - - 0x03C795 FF:C785: A2 FF     LDX #$FF
C - - - - 0x03C797 FF:C787: 9A        TXS
C - - - - 0x03C798 FF:C788: 48        PHA
C - - - - 0x03C799 FF:C789: A9 00     LDA #$00
C - - - - 0x03C79B FF:C78B: 8D 03 20  STA $2003
C - - - - 0x03C79E FF:C78E: A9 02     LDA #$02
C - - - - 0x03C7A0 FF:C790: 8D 14 40  STA $4014
C - - - - 0x03C7A3 FF:C793: AD 6B 04  LDA ram_mirroring
C - - - - 0x03C7A6 FF:C796: 8D 00 A0  STA $5105
C - - - - 0x03C7A9 FF:C799: 20 FB C8  JSR sub_C8FB
C - - - - 0x03C7AC FF:C79C: 2C 02 20  BIT $2002
C - - - - 0x03C7AF FF:C79F: A9 3F     LDA #$3F
C - - - - 0x03C7B1 FF:C7A1: 8D 06 20  STA $2006
C - - - - 0x03C7B4 FF:C7A4: A9 00     LDA #$00
C - - - - 0x03C7B6 FF:C7A6: 8D 06 20  STA $2006
C - - - - 0x03C7B9 FF:C7A9: 8D 06 20  STA $2006
C - - - - 0x03C7BC FF:C7AC: 8D 06 20  STA $2006
C - - - - 0x03C7BF FF:C7AF: A5 20     LDA ram_0020
C - - - - 0x03C7C1 FF:C7B1: 8D 00 20  STA $2000
C - - - - 0x03C7C4 FF:C7B4: 2C 02 20  BIT $2002
C - - - - 0x03C7C7 FF:C7B7: A5 4A     LDA ram_004A
C - - - - 0x03C7C9 FF:C7B9: 18        CLC
C - - - - 0x03C7CA FF:C7BA: 6D 38 05  ADC $0538
C - - - - 0x03C7CD FF:C7BD: 8D 05 20  STA $2005
C - - - - 0x03C7D0 FF:C7C0: A5 4B     LDA ram_004B
C - - - - 0x03C7D2 FF:C7C2: 8D 05 20  STA $2005
C - - - - 0x03C7D5 FF:C7C5: A5 21     LDA ram_для_2001
C - - - - 0x03C7D7 FF:C7C7: 8D 01 20  STA $2001
C - - - - 0x03C7DA FF:C7CA: 20 E9 C9  JSR sub_C9E9_банксвич_CHR
C - - - - 0x03C7DD FF:C7CD: A6 8E     LDX ram_008E
C - - - - 0x03C7DF FF:C7CF: 86 8C     STX ram_008C
C - - - - 0x03C7E1 FF:C7D1: 86 8D     STX ram_008D
C - - - - 0x03C7E3 FF:C7D3: BD F7 C8  LDA tbl_C8F7_значение_для_регистра_IRQ,X
C - - - - 0x03C7E6 FF:C7D6: 29 7F     AND #$7F
                                      SEC
                                      SBC #$01
                                      STA ram_линия_irq
C - - - - 0x03C7E8 FF:C7D8: 8D 00 C0  STA $5203
C - - - - 0x03C7EE FF:C7DE: AE 69 04  LDA $0469
C - - - - 0x03C7F1 FF:C7E1: 9D 00 E0  STA $5204
C - - - - 0x03C7F4 FF:C7E4: 20 C5 C9  JSR sub_C9C5_генератор_рандома
C - - - - 0x03C7F7 FF:C7E7: 20 82 C9  JSR sub_C982
C - - - - 0x03C7FA FF:C7EA: A5 1B     LDA ram_001B
C - - - - 0x03C7FC FF:C7EC: 09 80     ORA #$80
C - - - - 0x03C7FE FF:C7EE: 85 1B     STA ram_001B
C - - - - 0x03C807 FF:C7F7: A5 25     LDA ram_для_5115
                                      ORA #$80
C - - - - 0x03C809 FF:C7F9: 8D 01 80  STA $5115
C - - - - 0x03C813 FF:C803: A5 24     LDA ram_для_5114
                                      ORA #$80
C - - - - 0x03C815 FF:C805: 8D 01 80  STA $5114
C - - - - 0x03C818 FF:C808: 68        PLA
C - - - - 0x03C819 FF:C809: AA        TAX
C - - - - 0x03C81A FF:C80A: 9A        TXS
C - - - - 0x03C820 FF:C810: A5 20     LDA ram_0020
C - - - - 0x03C822 FF:C812: 09 80     ORA #$80
C - - - - 0x03C824 FF:C814: 85 20     STA ram_0020
C - - - - 0x03C826 FF:C816: 85 19     STA ram_0019
C - - - - 0x03C828 FF:C818: 8D 00 20  STA $2000
C - - - - 0x03C82B FF:C81B: 68        PLA
C - - - - 0x03C82C FF:C81C: A8        TAY
C - - - - 0x03C82D FF:C81D: 68        PLA
C - - - - 0x03C82E FF:C81E: AA        TAX
C - - - - 0x03C82F FF:C81F: 68        PLA
C - - - - 0x03C830 FF:C820: 40        RTI

vec_C506_обработчик_IRQ:
                                      PHA
                                      LDA #$0C
@мусорный_цикл:
                                      SEC
                                      SBC #$01
                                      BNE @мусорный_цикл
                                      PLA
C D - - - 0x03C831 FF:C821: 24 1B     BIT ram_001B
C - - - - 0x03C833 FF:C823: 50 03     BVC bra_C828
C - - - - 0x03C835 FF:C825: 4C 78 C4  JMP loc_C478
bra_C828:
C - - - - 0x03C83E FF:C82E: 46 19     LSR ram_0019
C - - - - 0x03C840 FF:C830: 85 80     STA ram_0080
C - - - - 0x03C842 FF:C832: 86 81     STX ram_0081
C - - - - 0x03C844 FF:C834: 84 82     STY ram_0082
                                      BIT $5204
                                      LDA #$80
                                      STA $5204
C - - - - 0x03C846 FF:C836: BA        TSX
C - - - - 0x03C847 FF:C837: 8A        TXA
C - - - - 0x03C848 FF:C838: A2 FF     LDX #$FF
C - - - - 0x03C84A FF:C83A: 9A        TXS
C - - - - 0x03C84B FF:C83B: 48        PHA
C - - - - 0x03C84C FF:C83C: 20 52 C8  JSR sub_C852
C - - - - 0x03C84F FF:C83F: 68        PLA
C - - - - 0x03C850 FF:C840: AA        TAX
C - - - - 0x03C851 FF:C841: 9A        TXS
C - - - - 0x03C852 FF:C842: A4 82     LDY ram_0082
C - - - - 0x03C854 FF:C844: A6 81     LDX ram_0081
C - - - - 0x03C85C FF:C84C: A5 80     LDA ram_0080
C - - - - 0x03C85E FF:C84E: 38        SEC
C - - - - 0x03C85F FF:C84F: 66 19     ROR ram_0019
C - - - - 0x03C861 FF:C851: 40        RTI

sub_C852:
C - - - - 0x03C862 FF:C852: A6 8D     LDX ram_008D
C - - - - 0x03C864 FF:C854: BD F7 C8  LDA tbl_C8F7_значение_для_регистра_IRQ,X
C - - - - 0x03C867 FF:C857: 30 1D     BMI bra_C876
C - - - - 0x03C869 FF:C859: A0 02     LDY #$02
bra_C85B:
C - - - - 0x03C86B FF:C85B: 88        DEY
C - - - - 0x03C86C FF:C85C: D0 FD     BNE bra_C85B
C - - - - 0x03C86E FF:C85E: E8        INX
C - - - - 0x03C86F FF:C85F: 86 8D     STX ram_008D
C - - - - 0x03C871 FF:C861: BD F7 C8  LDA tbl_C8F7_значение_для_регистра_IRQ,X
C - - - - 0x03C874 FF:C864: 29 7F     AND #$7F
                                      CLC
                                      ADC ram_линия_irq
                                      ADC #$01
                                      STA ram_линия_irq
C - - - - 0x03C876 FF:C866: 8D 00 C0  STA $5203
C - - - - 0x03C87C FF:C86C: 2C 02 20  BIT $2002
C - - - - 0x03C87F FF:C86F: AD 43 06  LDA $0643
C - - - - 0x03C882 FF:C872: 8D 05 20  STA $2005
C - - - - 0x03C885 FF:C875: 60        RTS
bra_C876:
C - - - - 0x03C886 FF:C876: A2 07     LDX #$07
bra_C878:
C - - - - 0x03C888 FF:C878: CA        DEX
C - - - - 0x03C889 FF:C879: D0 FD     BNE bra_C878
C - - - - 0x03C88B FF:C87B: AD 02 20  LDA $2002
C - - - - 0x03C88E FF:C87E: A9 22     LDA #$22
C - - - - 0x03C890 FF:C880: 8D 06 20  STA $2006
C - - - - 0x03C893 FF:C883: A9 00     LDA #$00
C - - - - 0x03C895 FF:C885: 8D 06 20  STA $2006
C - - - - 0x03C898 FF:C888: A5 20     LDA ram_0020
C - - - - 0x03C89A FF:C88A: 29 FE     AND #$FE
C - - - - 0x03C89C FF:C88C: 8D 00 20  STA $2000
C - - - - 0x03C89F FF:C88F: 2C 02 20  BIT $2002
C - - - - 0x03C8A2 FF:C892: A9 00     LDA #$00
C - - - - 0x03C8A4 FF:C894: 8D 05 20  STA $2005
C - - - - 0x03C8A7 FF:C897: 8D 05 20  STA $2005
                                      LDA ram_матч
                                      ASL
                                      ADC #$80
                                      TAX
C - - - - 0x03C8B2 FF:C8A2: 8D 01 80  STX $5120
                                      INX
                                      STX $5121
C - - - - 0x03C8BD FF:C8AD: A5 87     LDX ram_0087
C - - - - 0x03C8BF FF:C8AF: 8D 01 80  STX $5122
                                      INX
                                      STX $5123
C - - - - 0x03C8CA FF:C8BA: A9 1F     LDA #$1F
C - - - - 0x03C8CC FF:C8BC: 8D 01 80  STA $5124
C - - - - 0x03C8D7 FF:C8C7: A9 2E     LDA #$2E
C - - - - 0x03C8D9 FF:C8C9: 8D 01 80  STA $5125
                                      LDA #$00
C - - - - 0x03C8DC FF:C8CC: 4E 00 E0  STA $5204
C - - - - 0x03C8E6 FF:C8D6: A9 0C     LDA #$8C
C - - - - 0x03C8E8 FF:C8D8: 8D 01 80  STA $5114
C - - - - 0x03C8EB FF:C8DB: 20 00 80  JSR sub_0x018010_звуковой_движок
C - - - - 0x03C8F5 FF:C8E5: A5 25     LDA ram_для_5115
                                      ORA #$80
C - - - - 0x03C8F7 FF:C8E7: 8D 01 80  STA $5115
C - - - - 0x03C901 FF:C8F1: A5 24     LDA ram_для_5114
                                      ORA #$80
C - - - - 0x03C903 FF:C8F3: 8D 01 80  STA $5114
C - - - - 0x03C906 FF:C8F6: 60        RTS

tbl_C8F7_значение_для_регистра_IRQ:
; bzk могут возникнуть проблемы с байтом 80, так как после AND 7F + SBC 01 будет FF
; но по видимому этот байт не используется
- D - - - 0x03C907 FF:C8F7: FB        .byte $FB
- - - - - 0x03C908 FF:C8F8: 80        .byte $80
- D - - - 0x03C909 FF:C8F9: 1E        .byte $1E
- D - - - 0x03C90A FF:C8FA: DC        .byte $DC

sub_C8FB:
C - - - - 0x03C90B FF:C8FB: AD 98 04  LDA $0498
C - - - - 0x03C90E FF:C8FE: F0 51     BNE bra_C900
                                      JMP loc_C951
bra_C900:
C - - - - 0x03C910 FF:C900: CE 98 04  DEC $0498
C - - - - 0x03C913 FF:C903: 38        SEC
C - - - - 0x03C914 FF:C904: E9 01     SBC #$01
C - - - - 0x03C916 FF:C906: 0A        ASL
C - - - - 0x03C917 FF:C907: 6D 98 04  ADC $0498
C - - - - 0x03C91A FF:C90A: AA        TAX
C - - - - 0x03C91B FF:C90B: BD 99 04  LDA $0499,X
C - - - - 0x03C91E FF:C90E: A8        TAY
C - - - - 0x03C91F FF:C90F: BD 9A 04  LDA $049A,X
C - - - - 0x03C922 FF:C912: 85 77     STA ram_0077
C - - - - 0x03C924 FF:C914: BD 9B 04  LDA $049B,X
C - - - - 0x03C927 FF:C917: 85 78     STA ram_0078
C - - - - 0x03C929 FF:C919: 10 11     BPL bra_C92C
C - - - - 0x03C92B FF:C91B: A2 06     LDX #$00
C - - - - 0x03C92D FF:C91D: 29 20     AND #$20
C - - - - 0x03C92F FF:C91F: F0 01     BEQ bra_C922
C - - - - 0x03C931 FF:C921: E8        INX
bra_C922:
                                      TYA
                                      ORA #$80
C - - - - 0x03C936 FF:C926: 8D 00 80  STA $5114,X
bra_C92C:
C - - - - 0x03C93C FF:C92C: A0 00     LDY #$00
bra_C92E:
C - - - - 0x03C93E FF:C92E: B1 77     LDA (ram_0077),Y
C - - - - 0x03C940 FF:C930: F0 1E     BEQ bra_C950_выход
C - - - - 0x03C942 FF:C932: AA        TAX
C - - - - 0x03C943 FF:C933: C8        INY
C - - - - 0x03C944 FF:C934: B1 77     LDA (ram_0077),Y
C - - - - 0x03C946 FF:C936: 48        PHA
C - - - - 0x03C947 FF:C937: C8        INY
C - - - - 0x03C948 FF:C938: B1 77     LDA (ram_0077),Y
C - - - - 0x03C94A FF:C93A: 2C 02 20  BIT $2002
C - - - - 0x03C94D FF:C93D: 8D 06 20  STA $2006
C - - - - 0x03C950 FF:C940: 68        PLA
C - - - - 0x03C951 FF:C941: 8D 06 20  STA $2006
C - - - - 0x03C954 FF:C944: C8        INY
bra_C945:
C - - - - 0x03C955 FF:C945: B1 77     LDA (ram_0077),Y
C - - - - 0x03C957 FF:C947: 8D 07 20  STA $2007
C - - - - 0x03C95A FF:C94A: C8        INY
C - - - - 0x03C95B FF:C94B: CA        DEX
C - - - - 0x03C95C FF:C94C: D0 F7     BNE bra_C945
C - - - - 0x03C95E FF:C94E: F0 DE     BEQ bra_C92E
bra_C950_выход:
C - - - - 0x03C960 FF:C950: 60        RTS

loc_C951:
    LDA $0515
    BPL @выход
    AND #$01
    STA ram_temp_1
    LDX #$00
    STX $0515
@цикл_записи_в_ppu:
    LDA $04A5,X
    BEQ @выход        ; 00 = конец буфера
    TAY
    INX
    LDA $04A5,X
    PHA
    INX
    LDA $04A5,X
    BIT $2002
    STA $2006
    PLA
    STA $2006
    INX
    LDA ram_temp_1
    BNE @запись_одного_байта
@основной_цикл_записи_в_2007:
    LDA $04A5,X
    STA $2007
    INX
    DEY
    BNE @основной_цикл_записи_в_2007
    BEQ @цикл_записи_в_ppu
@выход:
    RTS

@запись_одного_байта:
    LDA $04A5,X
    INX
@цикл_записи_в_2007:
    STA $2007
    DEY
    BNE @цикл_записи_в_2007
    BEQ @цикл_записи_в_ppu

sub_C982:
C - - - - 0x03C992 FF:C982: A2 00     LDX #$00
C - - - - 0x03C994 FF:C984: AD 1C 00  LDA ram_удержанные
; bzk опт удалить прыжок и rts
C - - - - 0x03C997 FF:C987: 20 8B C9  JSR sub_C98B
C - - - - 0x03C99A FF:C98A: 60        RTS

bra_C98B:
sub_C98B:
C - - - - 0x03C99B FF:C98B: 85 84     STA ram_0084
C - - - - 0x03C99D FF:C98D: A0 01     LDY #$01
C - - - - 0x03C99F FF:C98F: 8C 16 40  STY $4016
C - - - - 0x03C9A2 FF:C992: 88        DEY
C - - - - 0x03C9A3 FF:C993: 8C 16 40  STY $4016
C - - - - 0x03C9A6 FF:C996: A9 04     LDA #$04
C - - - - 0x03C9A8 FF:C998: 85 85     STA ram_0085
C - - - - 0x03C9AA FF:C99A: A0 08     LDY #$08
bra_C99C:
C - - - - 0x03C9AC FF:C99C: BD 16 40  LDA $4016,X
C - - - - 0x03C9AF FF:C99F: 4A        LSR
C - - - - 0x03C9B0 FF:C9A0: 26 83     ROL ram_0083
C - - - - 0x03C9B2 FF:C9A2: 29 01     AND #$01
C - - - - 0x03C9B4 FF:C9A4: 05 83     ORA ram_0083
C - - - - 0x03C9B6 FF:C9A6: 85 83     STA ram_0083
C - - - - 0x03C9B8 FF:C9A8: 88        DEY
C - - - - 0x03C9B9 FF:C9A9: D0 F1     BNE bra_C99C
C - - - - 0x03C9BB FF:C9AB: C5 84     CMP ram_0084
C - - - - 0x03C9BD FF:C9AD: F0 06     BEQ bra_C9B5
C - - - - 0x03C9BF FF:C9AF: C6 85     DEC ram_0085
C - - - - 0x03C9C1 FF:C9B1: D0 D8     BNE bra_C98B
- - - - - 0x03C9C3 FF:C9B3: F0 0F     BEQ bra_C9C4_выход
bra_C9B5:
C - - - - 0x03C9C5 FF:C9B5: BD 1C 00  LDA ram_удержанные,X
C - - - - 0x03C9C8 FF:C9B8: 45 83     EOR ram_0083
C - - - - 0x03C9CA FF:C9BA: 25 83     AND ram_0083
C - - - - 0x03C9CC FF:C9BC: 9D 1E 00  STA ram_одноразовые,X
C - - - - 0x03C9CF FF:C9BF: A5 83     LDA ram_0083
C - - - - 0x03C9D1 FF:C9C1: 9D 1C 00  STA ram_удержанные,X
bra_C9C4_выход:
C - - - - 0x03C9D4 FF:C9C4: 60        RTS

sub_C9C5_генератор_рандома:
C - - - - 0x03C9D5 FF:C9C5: AE E1 00  LDX ram_рандом_1
C - - - - 0x03C9D8 FF:C9C8: BD 00 03  LDA $0300,X
C - - - - 0x03C9DB FF:C9CB: 7D 00 07  ADC $0700,X
C - - - - 0x03C9DE FF:C9CE: 2E E2 00  ROL ram_рандом_2
C - - - - 0x03C9E1 FF:C9D1: 49 FF     EOR #$FF
C - - - - 0x03C9E3 FF:C9D3: 2E E2 00  ROL ram_рандом_2
C - - - - 0x03C9E6 FF:C9D6: 6D E2 00  ADC ram_рандом_2
C - - - - 0x03C9E9 FF:C9D9: 8D E2 00  STA ram_рандом_2
C - - - - 0x03C9EC FF:C9DC: FD 80 07  SBC $0780,X
C - - - - 0x03C9EF FF:C9DF: 6D E1 00  ADC ram_рандом_1
C - - - - 0x03C9F2 FF:C9E2: 8D E3 00  STA ram_рандом_3
C - - - - 0x03C9F5 FF:C9E5: EE E1 00  INC ram_рандом_1
C - - - - 0x03C9F8 FF:C9E8: 60        RTS

sub_C9E9_банксвич_CHR:
C - - - - 0x03CA06 FF:C9F6: BD 90 04  LDY $0490
                                      STY $5120
                                      INY
                                      STY $5121
                                      LDY $0491
                                      STY $5122
                                      INY
                                      STY $5123
                                      LDX #$03
bra_CA0F_цикл:
                                      LDA $0494,X
                                      STA $5124,X
                                      DEX
                                      BPL bra_CA0F_цикл
                                      RTS

ofs_CA22_minus:
ofs_CA22 = ofs_CA22_minus - 1
; срабатывает перед началом матча после каждого тайма
C - - - - 0x03CA32 FF:CA22: A5 21     LDA ram_для_2001
C - - - - 0x03CA34 FF:CA24: 09 1E     ORA #$1E
C - - - - 0x03CA36 FF:CA26: 85 21     STA ram_для_2001
C - - - - 0x03CA38 FF:CA28: A9 00     LDA #$00
C - - - - 0x03CA3A FF:CA2A: 8D 90 04  STA $0490
C - - - - 0x03CA3D FF:CA2D: A9 02     LDA #$02
C - - - - 0x03CA3F FF:CA2F: 8D 91 04  STA $0491
C - - - - 0x03CA42 FF:CA32: 8D 87 00  STA ram_0087
C - - - - 0x03CA45 FF:CA35: A9 00     LDA #$00
C - - - - 0x03CA47 FF:CA37: 85 8E     STA ram_008E
C - - - - 0x03CA49 FF:CA39: A9 01     LDA #$80
C - - - - 0x03CA4B FF:CA3B: 8D 69 04  STA $0469
C - - - - 0x03CA4E FF:CA3E: A9 01     LDA #$01
C - - - - 0x03CA50 FF:CA40: 8D 43 05  STA $0543
C - - - - 0x03CA53 FF:CA43: A9 23     LDA #$23
C - - - - 0x03CA55 FF:CA45: 8D 44 05  STA $0544
C - - - - 0x03CA58 FF:CA48: A9 45     LDA #$45
C - - - - 0x03CA5A FF:CA4A: 8D 45 05  STA $0545
loc_CA4D:
C D - - - 0x03CA5D FF:CA4D: A9 01     LDA #$01
C - - - - 0x03CA5F FF:CA4F: 20 0F CB  JSR sub_CB0F
C - - - - 0x03CA62 FF:CA52: 20 9F EE  JSR sub_EE9F
C - - - - 0x03CA65 FF:CA55: 20 CA E3  JSR sub_E3CA
C - - - - 0x03CA68 FF:CA58: 4C 4D CA  JMP loc_CA4D

loc_CA97:
C D - - - 0x03CAA7 FF:CA97: A2 01     LDX #$01
bra_CA99:
C - - - - 0x03CAA9 FF:CA99: B5 00     LDA ram_0000,X
C - - - - 0x03CAAB FF:CA9B: F0 08     BEQ bra_CAA5
C - - - - 0x03CAAD FF:CA9D: C9 FF     CMP #$FF
C - - - - 0x03CAAF FF:CA9F: F0 33     BEQ bra_CAD4
C - - - - 0x03CAB1 FF:CAA1: D6 00     DEC ram_0000,X
C - - - - 0x03CAB3 FF:CAA3: F0 14     BEQ bra_CAB9
bra_CAA5:
loc_CAA5:
C D - - - 0x03CAB5 FF:CAA5: 8A        TXA
C - - - - 0x03CAB6 FF:CAA6: 18        CLC
C - - - - 0x03CAB7 FF:CAA7: 69 04     ADC #$04
C - - - - 0x03CAB9 FF:CAA9: AA        TAX
C - - - - 0x03CABA FF:CAAA: E0 19     CPX #$19
C - - - - 0x03CABC FF:CAAC: D0 EB     BNE bra_CA99
bra_CAAE:
C - - - - 0x03CABE FF:CAAE: A5 1B     LDA ram_001B
C - - - - 0x03CAC0 FF:CAB0: 10 FC     BPL bra_CAAE
C - - - - 0x03CAC2 FF:CAB2: 29 7F     AND #$7F
C - - - - 0x03CAC4 FF:CAB4: 85 1B     STA ram_001B
C - - - - 0x03CAC6 FF:CAB6: 4C 97 CA  JMP loc_CA97
bra_CAB9:
C - - - - 0x03CAC9 FF:CAB9: 46 19     LSR ram_0019
C - - - - 0x03CACB FF:CABB: 86 00     STX ram_0000
C - - - - 0x03CACD FF:CABD: B5 02     LDA ram_0002,X
C - - - - 0x03CACF FF:CABF: 85 24     STA ram_для_5114
C - - - - 0x03CAD1 FF:CAC1: B5 03     LDA ram_0003,X
C - - - - 0x03CAD3 FF:CAC3: 85 25     STA ram_для_5115
C - - - - 0x03CAD5 FF:CAC5: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03CAD8 FF:CAC8: B5 01     LDA ram_0001,X
C - - - - 0x03CADA FF:CACA: AA        TAX
C - - - - 0x03CADB FF:CACB: 9A        TXS
C - - - - 0x03CADC FF:CACC: 38        SEC
C - - - - 0x03CADD FF:CACD: 66 19     ROR ram_0019
C - - - - 0x03CADF FF:CACF: 68        PLA
C - - - - 0x03CAE0 FF:CAD0: A8        TAY
C - - - - 0x03CAE1 FF:CAD1: 68        PLA
C - - - - 0x03CAE2 FF:CAD2: AA        TAX
C - - - - 0x03CAE3 FF:CAD3: 60        RTS
bra_CAD4:
C - - - - 0x03CAE4 FF:CAD4: 86 00     STX ram_0000
C - - - - 0x03CAE6 FF:CAD6: B5 02     LDA ram_0002,X
C - - - - 0x03CAE8 FF:CAD8: 85 24     STA ram_для_5114
C - - - - 0x03CAEA FF:CADA: 18        CLC
C - - - - 0x03CAEB FF:CADB: 69 01     ADC #$01
C - - - - 0x03CAED FF:CADD: 85 25     STA ram_для_5115
C - - - - 0x03CAEF FF:CADF: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03CAF2 FF:CAE2: B5 01     LDA ram_0001,X
C - - - - 0x03CAF4 FF:CAE4: AA        TAX
C - - - - 0x03CAF5 FF:CAE5: 9A        TXS
C - - - - 0x03CAF6 FF:CAE6: 60        RTS

.export sub_0x03CAF7_подготовить_подпрограмму_в_стеке
sub_0x03CAF7_подготовить_подпрограмму_в_стеке:
sub_CAE7_подготовить_подпрограмму_в_стеке:
C D - - - 0x03CAF7 FF:CAE7: 48        PHA
C - - - - 0x03CAF8 FF:CAE8: 98        TYA
C - - - - 0x03CAF9 FF:CAE9: B4 01     LDY ram_0001,X
C - - - - 0x03CAFB FF:CAEB: 99 01 01  STA $0101,Y
C - - - - 0x03CAFE FF:CAEE: 68        PLA
C - - - - 0x03CAFF FF:CAEF: 99 02 01  STA $0102,Y
C - - - - 0x03CB02 FF:CAF2: A9 FF     LDA #$FF
C - - - - 0x03CB04 FF:CAF4: 95 00     STA ram_0000,X
C - - - - 0x03CB06 FF:CAF6: 60        RTS

.export loc_0x03CB07
loc_0x03CB07:
C D - - - 0x03CB07 FF:CAF7: A9 00     LDA #$00
C - - - - 0x03CB09 FF:CAF9: A6 00     LDX ram_0000
C - - - - 0x03CB0B FF:CAFB: 95 00     STA ram_0000,X
C - - - - 0x03CB0D FF:CAFD: 95 01     STA ram_0001,X
C - - - - 0x03CB0F FF:CAFF: 4C A5 CA  JMP loc_CAA5

.export sub_0x03CB12
sub_0x03CB12:
C D - - - 0x03CB12 FF:CB02: B5 01     LDA ram_0001,X
C - - - - 0x03CB14 FF:CB04: F0 06     BEQ bra_CB0C_выход
C - - - - 0x03CB16 FF:CB06: B5 00     LDA ram_0000,X
C - - - - 0x03CB18 FF:CB08: D0 02     BNE bra_CB0C_выход
C - - - - 0x03CB1A FF:CB0A: F6 00     INC ram_0000,X
bra_CB0C_выход:
C - - - - 0x03CB1C FF:CB0C: 60        RTS

.export sub_0x03CB1F
sub_0x03CB1F:
sub_CB0F:
C D - - - 0x03CB1F FF:CB0F: 85 7F     STA ram_007F
C - - - - 0x03CB21 FF:CB11: 8A        TXA
C - - - - 0x03CB22 FF:CB12: 48        PHA
C - - - - 0x03CB23 FF:CB13: 98        TYA
C - - - - 0x03CB24 FF:CB14: 48        PHA
C - - - - 0x03CB25 FF:CB15: A6 00     LDX ram_0000
C - - - - 0x03CB27 FF:CB17: A5 24     LDA ram_для_5114
C - - - - 0x03CB29 FF:CB19: 95 02     STA ram_0002,X
C - - - - 0x03CB2B FF:CB1B: A5 25     LDA ram_для_5115
C - - - - 0x03CB2D FF:CB1D: 95 03     STA ram_0003,X
C - - - - 0x03CB2F FF:CB1F: A5 7F     LDA ram_007F
C - - - - 0x03CB31 FF:CB21: 95 00     STA ram_0000,X
C - - - - 0x03CB33 FF:CB23: 8A        TXA
C - - - - 0x03CB34 FF:CB24: A8        TAY
C - - - - 0x03CB35 FF:CB25: BA        TSX
C - - - - 0x03CB36 FF:CB26: 96 01     STX ram_0001,Y
C - - - - 0x03CB38 FF:CB28: A6 00     LDX ram_0000
C - - - - 0x03CB3A FF:CB2A: 4C A5 CA  JMP loc_CAA5

.export sub_0x03CB45_очистить_nametable
sub_0x03CB45_очистить_nametable:
sub_CB35_очистить_nametable:
                    LDA ram_0020
                    AND #$7F
                    STA ram_0020
                    STA $2000
                    LDA #$06
                    STA $2001
                    BIT $2002
                    LDA #$20
                    STA $2006
                    LDA #$00
                    STA $2006
                    TAX
                    LDY #$08
@цикл:
                    STA $2007
                    DEX
                    BNE @цикл
                    DEY
                    BNE @цикл
                    STA $2005
                    STA $2005
                    LDA #$1E
                    STA $2001
                    LDA ram_0020
                    ORA #$80
                    STA ram_0020
                    STA $2000
                    RTS

sub_CB8B_очистить_память_спрайтов:
    LDY #$00
    LDA #$F8
@цикл:
    STA ram_спрайт_Y,Y
    INY
    INY
    INY
    INY
    BNE @цикл
    RTS

.export sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка
sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка:
sub_CB99_байты_после_JSR_для_непрямого_прыжка:
C D - - - 0x03CBA9 FF:CB99: 0A        ASL
C - - - - 0x03CBAA FF:CB9A: A8        TAY
C - - - - 0x03CBAB FF:CB9B: 68        PLA
C - - - - 0x03CBAC FF:CB9C: 85 36     STA ram_0036
C - - - - 0x03CBAE FF:CB9E: 68        PLA
C - - - - 0x03CBAF FF:CB9F: 85 37     STA ram_0037
C - - - - 0x03CBB1 FF:CBA1: C8        INY
C - - - - 0x03CBB2 FF:CBA2: B1 36     LDA (ram_0036),Y
C - - - - 0x03CBB4 FF:CBA4: 48        PHA
C - - - - 0x03CBB5 FF:CBA5: C8        INY
C - - - - 0x03CBB6 FF:CBA6: B1 36     LDA (ram_0036),Y
C - - - - 0x03CBB8 FF:CBA8: 85 37     STA ram_0037
C - - - - 0x03CBBA FF:CBAA: 68        PLA
C - - - - 0x03CBBB FF:CBAB: 85 36     STA ram_0036
C - - - - 0x03CBBD FF:CBAD: 6C 36 00  JMP (ram_0036)

.export sub_0x03CBC0_запись_номера_сценария
sub_0x03CBC0_запись_номера_сценария:
sub_CBB0_запись_номера_сценария:
C D - - - 0x03CBC0 FF:CBB0: 8D 18 05  STA ram_сценарий
C - - - - 0x03CBC3 FF:CBB3: A9 80     LDA #$80
C - - - - 0x03CBC5 FF:CBB5: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03CBCC FF:CBBC: A9 00     LDA #$00
C - - - - 0x03CBCE FF:CBBE: 20 0F CB  JSR sub_CB0F
C - - - - 0x03CBD1 FF:CBC1: 60        RTS

.export sub_0x03CC01_запись_звука
sub_0x03CC01_запись_звука:
sub_CBF1_запись_звука:
; выбор свободного адреса для записи
C D - - - 0x03CC01 FF:CBF1: A2 00     LDX #$00
bra_CBF3_цикл_поиска:
C - - - - 0x03CC03 FF:CBF3: BC 00 07  LDY ram_звук,X
C - - - - 0x03CC06 FF:CBF6: F0 06     BEQ bra_CBFE_адрес_свободен
C - - - - 0x03CC08 FF:CBF8: E8        INX
C - - - - 0x03CC09 FF:CBF9: E0 05     CPX #$05
C - - - - 0x03CC0B FF:CBFB: D0 F6     BNE bra_CBF3_цикл_поиска
- - - - - 0x03CC0D FF:CBFD: 60        RTS
bra_CBFE_адрес_свободен:
C - - - - 0x03CC0E FF:CBFE: 9D 00 07  STA ram_звук,X
C - - - - 0x03CC11 FF:CC01: 60        RTS

.export sub_0x03CC12
sub_0x03CC12:
sub_CC02:
C D - - - 0x03CC12 FF:CC02: A0 00     LDY #$00
C - - - - 0x03CC14 FF:CC04: 84 66     STY ram_0066
C - - - - 0x03CC16 FF:CC06: 0A        ASL
C - - - - 0x03CC17 FF:CC07: 26 66     ROL ram_0066
C - - - - 0x03CC19 FF:CC09: 0A        ASL
C - - - - 0x03CC1A FF:CC0A: A8        TAY
C - - - - 0x03CC1B FF:CC0B: 26 66     ROL ram_0066
C - - - - 0x03CC1D FF:CC0D: 0A        ASL
C - - - - 0x03CC1E FF:CC0E: 26 66     ROL ram_0066
C - - - - 0x03CC20 FF:CC10: 85 65     STA ram_0065
C - - - - 0x03CC22 FF:CC12: 98        TYA
C - - - - 0x03CC23 FF:CC13: 65 65     ADC ram_0065
C - - - - 0x03CC25 FF:CC15: 90 02     BCC bra_CC19
C - - - - 0x03CC27 FF:CC17: E6 66     INC ram_0066
bra_CC19:
C - - - - 0x03CC29 FF:CC19: 18        CLC
C - - - - 0x03CC2A FF:CC1A: 69 CC     ADC #< tbl_FBCC
C - - - - 0x03CC2C FF:CC1C: 85 65     STA ram_0065
C - - - - 0x03CC2E FF:CC1E: A5 66     LDA ram_0066
C - - - - 0x03CC30 FF:CC20: 69 FB     ADC #> tbl_FBCC
C - - - - 0x03CC32 FF:CC22: 85 66     STA ram_0066
C - - - - 0x03CC34 FF:CC24: A9 10     LDA #$10
C - - - - 0x03CC36 FF:CC26: 8D 6C 04  STA $046C
C - - - - 0x03CC39 FF:CC29: A0 00     LDY #$00
bra_CC2B:
C - - - - 0x03CC3B FF:CC2B: 8A        TXA
C - - - - 0x03CC3C FF:CC2C: 29 03     AND #$03
C - - - - 0x03CC3E FF:CC2E: F0 05     BEQ bra_CC35
C - - - - 0x03CC40 FF:CC30: B1 65     LDA (ram_0065),Y
C - - - - 0x03CC42 FF:CC32: C8        INY
C - - - - 0x03CC43 FF:CC33: D0 02     BNE bra_CC37
bra_CC35:
C - - - - 0x03CC45 FF:CC35: A9 0F     LDA #$0F
bra_CC37:
C - - - - 0x03CC47 FF:CC37: 9D 6F 04  STA $046F,X
C - - - - 0x03CC4A FF:CC3A: E8        INX
C - - - - 0x03CC4B FF:CC3B: CE 6C 04  DEC $046C
C - - - - 0x03CC4E FF:CC3E: D0 EB     BNE bra_CC2B
C - - - - 0x03CC50 FF:CC40: A9 20     LDA #$20
C - - - - 0x03CC52 FF:CC42: 8D 6C 04  STA $046C
C - - - - 0x03CC55 FF:CC45: 60        RTS


.export sub_0x03CC55_полностью_очистить_нижнюю_половину_экрана
sub_0x03CC55_полностью_очистить_нижнюю_половину_экрана:
    LDA #$07
    STA ram_temp_2
    BNE bra_CC47
.export sub_0x03CC56_очистить_нижнюю_половину_экрана
sub_0x03CC56_очистить_нижнюю_половину_экрана:
.export loc_0x03CC56_очистить_нижнюю_половину_экрана
loc_0x03CC56_очистить_нижнюю_половину_экрана:
loc_CC46_очистить_нижнюю_половину_экрана:
sub_CC46_очистить_нижнюю_половину_экрана:
; первые 8 тайлов не очищаются для сохранения отображения таймера и счета
    ; буфер 1
        ; 04A5 - счетчик тайлов
        ; 04A6 - 2006 lo
        ; 04A7 - 2006 hi
        ; 04A8 - тайл
    ; буфер 2
        ; 04A9 - счетчик тайлов/конец буфера
        ; 04AA - 2006 lo
        ; 04AB - 2006 hi
        ; 04AC - тайл
    ; 04AD - конец буфера
    LDA #$00
    STA $05F4
    STA ram_temp_2
bra_CC47:
@ожидание_освобождения_буфера_1:
    LDA #$01
    JSR sub_CB0F
    LDA $0515
    BNE @ожидание_освобождения_буфера_1
    LDA #$01
    STA $0515
    LDA #$06        ; счетчик цикла
bra_CC4D_цикл_очистки_экрана:
    PHA
    TAX
    LDA #$23
    CPX #$04
    BCS @пропустить
    LDA #$22
@пропустить:
    STA $04A7
    STA $04AB
    LDA tbl_CC46_2006_lo,X
    SEC
    SBC ram_temp_2
    STA $04A6
    CLC
    ADC #$20
    STA $04AA
    LDA #$19        ; количество записей
    CLC
    ADC ram_temp_2
    STA $04A5
    STA $04A9
    LDA #$00
    STA $04A8
    STA $04AC
    STA $04AD
    LDA #$81
    STA $0515
@ожидание_освобождения_буфера_2:
    LDA #$01
    JSR sub_CB0F
    LDA $0515
    BNE @ожидание_освобождения_буфера_2
    LDA #$01
    STA $0515
    PLA
    SEC
    SBC #$01
    BPL bra_CC4D_цикл_очистки_экрана
    LDX #$14
@цикл:
    LDA tbl_CC47_ppu_байты_затирания_чарли_и_атрибутов_фона,X
    STA $04A5,X
    DEX
    BPL @цикл
    LDA #$81
    STA $0515
    LDA #$01
    JSR sub_CB0F
    RTS

tbl_CC46_2006_lo:
    .byte $07, $47, $87, $C7, $07, $47, $87

tbl_CC47_ppu_байты_затирания_чарли_и_атрибутов_фона:
    .byte $03
    .word $2302
    .byte $00
    
    .byte $03
    .word $2322
    .byte $00
    
    .byte $03
    .word $2342
    .byte $00
    
    .byte $03
    .word $2362
    .byte $00
    
    .byte $20
    .word $23E0
    .byte $00, $00      ; дополнительный байт для закрытия буфера



.export sub_0x03CCE2
sub_0x03CCE2:
; уникальный случай для надписи текмо в финальной заставке 0x0273CC
    LDA #$03
    .byte $2C
.export sub_0x03CCE3
sub_0x03CCE3:
sub_CCD3:
; срабатывает раз перед показом новой анимации
    LDA #$00
    STA ram_temp_1
    TYA
    PHA
    LDA $0498
    ASL
    ADC $0498
    TAX
    LDY ram_temp_1
    LDA tbl_0000,Y
    STA $0499,X
    LDA tbl_0000 + 1,Y
    STA $049A,X
    LDA tbl_0000 + 2,Y
    STA $049B,X
    INC $0498
    PLA
    TAY
    RTS



tbl_0000:
    .byte $00
    .word ram_0468 + 4
    
    .byte $13
    .word tbl_0x02745E_финальная_надпись_TECMO



.export sub_0x03CD1D
sub_0x03CD1D:
C D - - - 0x03CD1D FF:CD0D: 8A        TXA
C - - - - 0x03CD1E FF:CD0E: 48        PHA
C - - - - 0x03CD1F FF:CD0F: A9 00     LDA #$00
C - - - - 0x03CD21 FF:CD11: 85 6B     STA ram_006B
C - - - - 0x03CD23 FF:CD13: 85 6C     STA ram_006C
C - - - - 0x03CD25 FF:CD15: 85 6D     STA ram_006D
C - - - - 0x03CD27 FF:CD17: 85 6E     STA ram_006E
C - - - - 0x03CD29 FF:CD19: A2 10     LDX #$10
bra_CD1B:
C - - - - 0x03CD2B FF:CD1B: 66 68     ROR ram_0068
C - - - - 0x03CD2D FF:CD1D: 66 67     ROR ram_0067
C - - - - 0x03CD2F FF:CD1F: 90 0D     BCC bra_CD2E
C - - - - 0x03CD31 FF:CD21: 18        CLC
C - - - - 0x03CD32 FF:CD22: A5 6D     LDA ram_006D
C - - - - 0x03CD34 FF:CD24: 65 69     ADC ram_0069
C - - - - 0x03CD36 FF:CD26: 85 6D     STA ram_006D
C - - - - 0x03CD38 FF:CD28: A5 6E     LDA ram_006E
C - - - - 0x03CD3A FF:CD2A: 65 6A     ADC ram_006A
C - - - - 0x03CD3C FF:CD2C: 85 6E     STA ram_006E
bra_CD2E:
C - - - - 0x03CD3E FF:CD2E: 66 6E     ROR ram_006E
C - - - - 0x03CD40 FF:CD30: 66 6D     ROR ram_006D
C - - - - 0x03CD42 FF:CD32: 66 6C     ROR ram_006C
C - - - - 0x03CD44 FF:CD34: 66 6B     ROR ram_006B
C - - - - 0x03CD46 FF:CD36: CA        DEX
C - - - - 0x03CD47 FF:CD37: D0 E2     BNE bra_CD1B
C - - - - 0x03CD49 FF:CD39: 68        PLA
C - - - - 0x03CD4A FF:CD3A: AA        TAX
C - - - - 0x03CD4B FF:CD3B: 60        RTS

.export sub_0x03CD4C_получить_младший_разряд_числа
sub_0x03CD4C_получить_младший_разряд_числа:
sub_CD3C_получить_младший_разряд_числа:
; 16-битное число
    ; 006F = low
    ; 0070 = high
    ; 0071 = система счисления (0A - DEC)
; после вычисления подпрограммы
    ; 0072 младший разряд числа данной системы счисления
    ; 006F (low) + 0070 (high) = остальные 4 разряда числа, переведенного в HEX
    ; можно сразу же запустить подпрограмму повторно, получив на выходе следующий разряд

; например, число 3039h = 12345, значит 006F = 39, 0070 = 30, 0071 = 0A
    ; после вычисления программы
        ; 0072 = 05 (младший разряд 12345)
        ; остается 1234 (4D2), значит 006F = D2, 0070 = 04
    ; повторно прогоняем остаток через подпрограмму
        ; 0072 = 04  младший разряд 1234)
        ; остается 123 (7B), значит 006F = 7B, 0070 = 00
C D - - - 0x03CD4C FF:CD3C: 8A        TXA
C - - - - 0x03CD4D FF:CD3D: 48        PHA
C - - - - 0x03CD4E FF:CD3E: A9 00     LDA #$00
C - - - - 0x03CD50 FF:CD40: 85 72     STA ram_0072
C - - - - 0x03CD52 FF:CD42: 85 73     STA ram_0073
C - - - - 0x03CD54 FF:CD44: A2 10     LDX #$10
C - - - - 0x03CD56 FF:CD46: 26 6F     ROL ram_006F
C - - - - 0x03CD58 FF:CD48: 26 70     ROL ram_0070
bra_CD4A_цикл:
C - - - - 0x03CD5A FF:CD4A: 26 72     ROL ram_0072
C - - - - 0x03CD5C FF:CD4C: 26 73     ROL ram_0073
C - - - - 0x03CD5E FF:CD4E: B0 10     BCS bra_CD60
C - - - - 0x03CD60 FF:CD50: A5 73     LDA ram_0073
C - - - - 0x03CD62 FF:CD52: C5 74     CMP ram_0074
C - - - - 0x03CD64 FF:CD54: F0 04     BEQ bra_CD5A
C - - - - 0x03CD66 FF:CD56: 90 15     BCC bra_CD6D
C - - - - 0x03CD68 FF:CD58: B0 06     BCS bra_CD60
bra_CD5A:
C - - - - 0x03CD6A FF:CD5A: A5 72     LDA ram_0072
C - - - - 0x03CD6C FF:CD5C: C5 71     CMP ram_0071
C - - - - 0x03CD6E FF:CD5E: 90 0D     BCC bra_CD6D
bra_CD60:
C - - - - 0x03CD70 FF:CD60: A5 72     LDA ram_0072
C - - - - 0x03CD72 FF:CD62: E5 71     SBC ram_0071
C - - - - 0x03CD74 FF:CD64: 85 72     STA ram_0072
C - - - - 0x03CD76 FF:CD66: A5 73     LDA ram_0073
C - - - - 0x03CD78 FF:CD68: E5 74     SBC ram_0074
C - - - - 0x03CD7A FF:CD6A: 85 73     STA ram_0073
C - - - - 0x03CD7C FF:CD6C: 38        SEC
bra_CD6D:
C - - - - 0x03CD7D FF:CD6D: 26 6F     ROL ram_006F
C - - - - 0x03CD7F FF:CD6F: 26 70     ROL ram_0070
C - - - - 0x03CD81 FF:CD71: CA        DEX
C - - - - 0x03CD82 FF:CD72: D0 D6     BNE bra_CD4A_цикл
C - - - - 0x03CD84 FF:CD74: 68        PLA
C - - - - 0x03CD85 FF:CD75: AA        TAX
C - - - - 0x03CD86 FF:CD76: 60        RTS

.export sub_0x03CD87_адрес_игрока_команды_без_мяча
sub_0x03CD87_адрес_игрока_команды_без_мяча:
sub_CD77_адрес_игрока_адрес_игрока_команды_без_мяча:
    LDA ram_команда_с_мячом
    EOR #$0B
.export sub_0x03CD8C_адрес_игрока
sub_0x03CD8C_адрес_игрока:
.export loc_0x03CD8C_адрес_игрока
loc_0x03CD8C_адрес_игрока:
sub_CD7C_адрес_игрока:
; здесь нельзя использовать X
    STA ram_копия_номера_игрока
    ASL
    TAY
    LDA tbl_CD89_адреса_игроков,Y
    STA ram_plr_data
    LDA tbl_CD89_адреса_игроков + 1,Y
    STA ram_plr_data + 1
    RTS



tbl_CD89_адреса_игроков:
    .word ram_player_GK
    .word ram_player_2
    .word ram_player_3
    .word ram_player_4
    .word ram_player_5
    .word ram_player_6
    .word ram_player_7
    .word ram_player_8
    .word ram_player_9
    .word ram_player_10
    .word ram_player_11
    
    .word ram_opponent_GK
    .word ram_opponent_2
    .word ram_opponent_3
    .word ram_opponent_4
    .word ram_opponent_5
    .word ram_opponent_6
    .word ram_opponent_7
    .word ram_opponent_8
    .word ram_opponent_9
    .word ram_opponent_10
    .word ram_opponent_11
    
    .word ram_bench_1
    .word ram_bench_2
    .word ram_bench_3
    .word ram_bench_4
    .word ram_bench_5
    .word ram_bench_6
    .word ram_bench_7
    .word ram_bench_8
    .word ram_bench_GK_1
    .word ram_bench_GK_2



.export sub_0x03CDD9_проверить_координаты_игрока
sub_0x03CDD9_проверить_координаты_игрока:
sub_CDC9_проверить_координаты_игрока:
; на выходе интересует X и Y
C D - - - 0x03CDD9 FF:CDC9: A2 00     LDX #$00
bra_CDCB_цикл:
C - - - - 0x03CDDB FF:CDCB: C9 0C     CMP #$0C
C - - - - 0x03CDDD FF:CDCD: 90 05     BCC bra_CDD4_продолжить
C - - - - 0x03CDDF FF:CDCF: E9 0C     SBC #$0C
C - - - - 0x03CDE1 FF:CDD1: E8        INX
C - - - - 0x03CDE2 FF:CDD2: D0 F7     BNE bra_CDCB_цикл
bra_CDD4_продолжить:
C - - - - 0x03CDE4 FF:CDD4: 0A        ASL
C - - - - 0x03CDE5 FF:CDD5: 0A        ASL
C - - - - 0x03CDE6 FF:CDD6: 0A        ASL
C - - - - 0x03CDE7 FF:CDD7: 69 54     ADC #$54
C - - - - 0x03CDE9 FF:CDD9: A8        TAY
C - - - - 0x03CDEA FF:CDDA: 8A        TXA
C - - - - 0x03CDEB FF:CDDB: 0A        ASL
C - - - - 0x03CDEC FF:CDDC: 0A        ASL
C - - - - 0x03CDED FF:CDDD: 0A        ASL
C - - - - 0x03CDEE FF:CDDE: 69 34     ADC #$34
C - - - - 0x03CDF0 FF:CDE0: AA        TAX
C - - - - 0x03CDF1 FF:CDE1: 60        RTS

.export sub_0x03CDF2
sub_0x03CDF2:
sub_CDE2:
C D - - - 0x03CDF2 FF:CDE2: 8A        TXA
C - - - - 0x03CDF3 FF:CDE3: 38        SEC
C - - - - 0x03CDF4 FF:CDE4: E9 30     SBC #$30
C - - - - 0x03CDF6 FF:CDE6: 90 1D     BCC bra_CE05
C - - - - 0x03CDF8 FF:CDE8: C9 A0     CMP #$A0
C - - - - 0x03CDFA FF:CDEA: B0 19     BCS bra_CE05
C - - - - 0x03CDFC FF:CDEC: 4A        LSR
C - - - - 0x03CDFD FF:CDED: 4A        LSR
C - - - - 0x03CDFE FF:CDEE: 4A        LSR
C - - - - 0x03CDFF FF:CDEF: AA        TAX
C - - - - 0x03CE00 FF:CDF0: 98        TYA
C - - - - 0x03CE01 FF:CDF1: 38        SEC
C - - - - 0x03CE02 FF:CDF2: E9 50     SBC #$50
C - - - - 0x03CE04 FF:CDF4: 90 0F     BCC bra_CE05
C - - - - 0x03CE06 FF:CDF6: C9 60     CMP #$60
C - - - - 0x03CE08 FF:CDF8: B0 0B     BCS bra_CE05
C - - - - 0x03CE0A FF:CDFA: 4A        LSR
C - - - - 0x03CE0B FF:CDFB: 4A        LSR
C - - - - 0x03CE0C FF:CDFC: 4A        LSR
bra_CDFD:
C - - - - 0x03CE0D FF:CDFD: CA        DEX
C - - - - 0x03CE0E FF:CDFE: 30 07     BMI bra_CE07_выход
C - - - - 0x03CE10 FF:CE00: 18        CLC
C - - - - 0x03CE11 FF:CE01: 69 0C     ADC #$0C
C - - - - 0x03CE13 FF:CE03: D0 F8     BNE bra_CDFD
bra_CE05:
C - - - - 0x03CE15 FF:CE05: A9 FF     LDA #$FF
bra_CE07_выход:
C - - - - 0x03CE17 FF:CE07: 60        RTS


.export sub_0x03CE18_банксвич_PRG_06_07_с_возвратом
sub_0x03CE18_банксвич_PRG_06_07_с_возвратом:
sub_CE08_банксвич_PRG_06_07_с_возвратом:
; в A подается обычный номер игрока из plr_data
C D - - - 0x03CE18 FF:CE08: A8        TAY
C - - - - 0x03CE19 FF:CE09: AD 24 00  LDA ram_для_5114
C - - - - 0x03CE1C FF:CE0C: 48        PHA
C - - - - 0x03CE1D FF:CE0D: AD 25 00  LDA ram_для_5115
C - - - - 0x03CE20 FF:CE10: 48        PHA
C - - - - 0x03CE21 FF:CE11: 98        TYA
; сохранить номер игрока
C - - - - 0x03CE22 FF:CE12: 48        PHA
; переключить 06 и 07 на предпоследние банки
C - - - - 0x03CE25 FF:CE15: A9 1C     LDA #$1C
C - - - - 0x03CE27 FF:CE17: 85 24     STA ram_для_5114
C - - - - 0x03CE29 FF:CE19: A9 1D     LDA #$1D
C - - - - 0x03CE2B FF:CE1B: 85 25     STA ram_для_5115
C - - - - 0x03CE2D FF:CE1D: 20 2D CE  JSR sub_CE2D_банксвич_PRG
; здесь номер игрока вытаскивается из стека
C - - - - 0x03CE30 FF:CE20: 68        PLA
; что-то связанное с уровнем и энергией игрока
; бряк срабатывает при отрисовке статов во время игры, а также при попытке выбрать действие
C - - - - 0x03CE31 FF:CE21: 20 00 80  JSR sub_0x038010
C - - - - 0x03CE34 FF:CE24: 68        PLA
C - - - - 0x03CE35 FF:CE25: 85 25     STA ram_для_5115
C - - - - 0x03CE37 FF:CE27: 68        PLA
C - - - - 0x03CE38 FF:CE28: 85 24     STA ram_для_5114
; восстановить банк 06 и 07
loc_CE2D_банксвич_PRG:
sub_CE2D_банксвич_PRG:
C - - - - 0x03CE46 FF:CE36: A5 24     LDA ram_для_5114
                                      ORA #$80
C - - - - 0x03CE48 FF:CE38: 8D 01 80  STA $5114
C - - - - 0x03CE54 FF:CE44: A5 25     LDA ram_для_5115
                                      ORA #$80
C - - - - 0x03CE56 FF:CE46: 8D 01 80  STA $5115
C - - - - 0x03CE59 FF:CE49: 60        RTS

.export sub_0x03CE5A
sub_0x03CE5A:
sub_CE4A:
C D - - - 0x03CE5A FF:CE4A: 18        CLC
C - - - - 0x03CE5B FF:CE4B: 69 40     ADC #$40
.export sub_0x03CE5D
sub_0x03CE5D:
sub_CE4D:
C D - - - 0x03CE5D FF:CE4D: 0A        ASL
C - - - - 0x03CE5E FF:CE4E: 08        PHP
C - - - - 0x03CE5F FF:CE4F: 10 02     BPL bra_CE53
C - - - - 0x03CE61 FF:CE51: 49 FF     EOR #$FF
bra_CE53:
C - - - - 0x03CE63 FF:CE53: 29 7E     AND #$7E
C - - - - 0x03CE65 FF:CE55: AA        TAX
C - - - - 0x03CE66 FF:CE56: BD 4D FB  LDA tbl_FB4C + 1,X
C - - - - 0x03CE69 FF:CE59: A8        TAY
C - - - - 0x03CE6A FF:CE5A: BD 4C FB  LDA tbl_FB4C,X
C - - - - 0x03CE6D FF:CE5D: AA        TAX
C - - - - 0x03CE6E FF:CE5E: 28        PLP
C - - - - 0x03CE6F FF:CE5F: 90 0C     BCC bra_CE6D_выход
C - - - - 0x03CE71 FF:CE61: 8A        TXA
C - - - - 0x03CE72 FF:CE62: 49 FF     EOR #$FF
C - - - - 0x03CE74 FF:CE64: AA        TAX
C - - - - 0x03CE75 FF:CE65: 98        TYA
C - - - - 0x03CE76 FF:CE66: 49 FF     EOR #$FF
C - - - - 0x03CE78 FF:CE68: A8        TAY
C - - - - 0x03CE79 FF:CE69: E8        INX
C - - - - 0x03CE7A FF:CE6A: D0 01     BNE bra_CE6D_выход
C - - - - 0x03CE7C FF:CE6C: C8        INY
bra_CE6D_выход:
C - - - - 0x03CE7D FF:CE6D: 60        RTS

.export sub_0x03CE7E_прыжки_в_начале_банка_24
sub_0x03CE7E_прыжки_в_начале_банка_24:
C D - - - 0x03CE7E FF:CE6E: 85 36     STA ram_0036
C - - - - 0x03CE80 FF:CE70: 0A        ASL
C - - - - 0x03CE81 FF:CE71: 65 36     ADC ram_0036
C - - - - 0x03CE83 FF:CE73: 85 36     STA ram_0036
C - - - - 0x03CE85 FF:CE75: A9 80     LDA #$80
C - - - - 0x03CE87 FF:CE77: 85 37     STA ram_0037
C - - - - 0x03CE89 FF:CE79: A5 24     LDA ram_для_5114
C - - - - 0x03CE8B FF:CE7B: 48        PHA
C - - - - 0x03CE8C FF:CE7C: A5 25     LDA ram_для_5115
C - - - - 0x03CE8E FF:CE7E: 48        PHA
C - - - - 0x03CE8F FF:CE7F: A9 1C     LDA #$1C
C - - - - 0x03CE91 FF:CE81: 85 24     STA ram_для_5114
C - - - - 0x03CE93 FF:CE83: A9 1D     LDA #$1D
C - - - - 0x03CE95 FF:CE85: 85 25     STA ram_для_5115
; !!! флаг D, хз где прыжок
C D - - - 0x03CE97 FF:CE87: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03CE9A FF:CE8A: 20 96 CE  JSR sub_CE96_непрямой_прыжок
C - - - - 0x03CE9D FF:CE8D: 68        PLA
C - - - - 0x03CE9E FF:CE8E: 85 25     STA ram_для_5115
C - - - - 0x03CEA0 FF:CE90: 68        PLA
C - - - - 0x03CEA1 FF:CE91: 85 24     STA ram_для_5114
C - - - - 0x03CEA3 FF:CE93: 4C 2D CE  JMP loc_CE2D_банксвич_PRG

sub_CE96_непрямой_прыжок:
C - - - - 0x03CEA6 FF:CE96: 6C 36 00  JMP (ram_0036)

.export sub_0x03CEA9_вычислить_управляемого
sub_0x03CEA9_вычислить_управляемого:
sub_CE99_вычислить_управляемого:
; может использоваться когда бот принимает пас, и надо определить базового управляемого
C D - - - 0x03CEA9 FF:CE99: 85 46     STA ram_0046
C - - - - 0x03CEAB FF:CE9B: E6 46     INC ram_0046
C - - - - 0x03CEAD FF:CE9D: A9 08     LDA #$08
C - - - - 0x03CEAF FF:CE9F: 85 47     STA ram_0047
loc_CEA1:
C D - - - 0x03CEB1 FF:CEA1: A5 46     LDA ram_0046
C - - - - 0x03CEB3 FF:CEA3: 85 48     STA ram_0048
C - - - - 0x03CEB5 FF:CEA5: A9 0A     LDA #$0A
C - - - - 0x03CEB7 FF:CEA7: 85 49     STA ram_0049
bra_CEA9:
C - - - - 0x03CEB9 FF:CEA9: A5 48     LDA ram_0048
C - - - - 0x03CEBB FF:CEAB: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03CEBE FF:CEAE: F0 13     BEQ bra_CEC3
C - - - - 0x03CEC0 FF:CEB0: CD 42 04  CMP ram_игрок_без_мяча
C - - - - 0x03CEC3 FF:CEB3: F0 0E     BEQ bra_CEC3
C - - - - 0x03CEC5 FF:CEB5: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03CEC8 FF:CEB8: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03CECA FF:CEBA: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03CECC FF:CEBC: D0 05     BNE bra_CEC3
C - - - - 0x03CECE FF:CEBE: 20 D6 CE  JSR sub_CED6
C - - - - 0x03CED1 FF:CEC1: B0 10     BCS bra_CED3
bra_CEC3:
C - - - - 0x03CED3 FF:CEC3: E6 48     INC ram_0048
C - - - - 0x03CED5 FF:CEC5: C6 49     DEC ram_0049
C - - - - 0x03CED7 FF:CEC7: D0 E0     BNE bra_CEA9
C - - - - 0x03CED9 FF:CEC9: A5 47     LDA ram_0047
C - - - - 0x03CEDB FF:CECB: 18        CLC
C - - - - 0x03CEDC FF:CECC: 69 08     ADC #$08
C - - - - 0x03CEDE FF:CECE: 85 47     STA ram_0047
C - - - - 0x03CEE0 FF:CED0: 4C A1 CE  JMP loc_CEA1
bra_CED3:
C - - - - 0x03CEE3 FF:CED3: A5 48     LDA ram_0048
C - - - - 0x03CEE5 FF:CED5: 60        RTS

sub_CED6:
C - - - - 0x03CEE6 FF:CED6: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03CEE8 FF:CED8: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03CEEA FF:CEDA: 38        SEC
C - - - - 0x03CEEB FF:CEDB: ED 35 06  SBC $0635
C - - - - 0x03CEEE FF:CEDE: B0 04     BCS bra_CEE4
C - - - - 0x03CEF0 FF:CEE0: 49 FF     EOR #$FF
C - - - - 0x03CEF2 FF:CEE2: 69 01     ADC #$01
bra_CEE4:
C - - - - 0x03CEF4 FF:CEE4: C5 47     CMP ram_0047
C - - - - 0x03CEF6 FF:CEE6: B0 14     BCS bra_CEFC
C - - - - 0x03CEF8 FF:CEE8: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03CEFA FF:CEEA: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03CEFC FF:CEEC: 38        SEC
C - - - - 0x03CEFD FF:CEED: ED 37 06  SBC $0637
C - - - - 0x03CF00 FF:CEF0: B0 04     BCS bra_CEF6
C - - - - 0x03CF02 FF:CEF2: 49 FF     EOR #$FF
C - - - - 0x03CF04 FF:CEF4: 69 01     ADC #$01
bra_CEF6:
C - - - - 0x03CF06 FF:CEF6: C5 47     CMP ram_0047
C - - - - 0x03CF08 FF:CEF8: B0 02     BCS bra_CEFC
C - - - - 0x03CF0A FF:CEFA: 38        SEC
C - - - - 0x03CF0B FF:CEFB: 60        RTS
bra_CEFC:
C - - - - 0x03CF0C FF:CEFC: 18        CLC
C - - - - 0x03CF0D FF:CEFD: 60        RTS



sub_CF1F:
C - - - - 0x03CF2F FF:CF1F: A9 68     LDA #$68
C - - - - 0x03CF31 FF:CF21: 85 3A     STA ram_003A
C - - - - 0x03CF33 FF:CF23: A9 04     LDA #$04
C - - - - 0x03CF35 FF:CF25: 85 3B     STA ram_003B
C - - - - 0x03CF37 FF:CF27: A9 97     LDA #$97
C - - - - 0x03CF39 FF:CF29: 85 3C     STA ram_003C
C - - - - 0x03CF3B FF:CF2B: A9 02     LDA #$02
C - - - - 0x03CF3D FF:CF2D: 85 3D     STA ram_003D
C - - - - 0x03CF3F FF:CF2F: A9 00     LDA #$00
C - - - - 0x03CF41 FF:CF31: A8        TAY
bra_CF32:
C - - - - 0x03CF42 FF:CF32: 91 3A     STA (ram_003A),Y
C - - - - 0x03CF44 FF:CF34: C8        INY
C - - - - 0x03CF45 FF:CF35: D0 FB     BNE bra_CF32
C - - - - 0x03CF47 FF:CF37: E6 3B     INC ram_003B
C - - - - 0x03CF49 FF:CF39: C6 3D     DEC ram_003D
C - - - - 0x03CF4B FF:CF3B: D0 F5     BNE bra_CF32
bra_CF3D:
C - - - - 0x03CF4D FF:CF3D: 91 3A     STA (ram_003A),Y
C - - - - 0x03CF4F FF:CF3F: C8        INY
C - - - - 0x03CF50 FF:CF40: C6 3C     DEC ram_003C
C - - - - 0x03CF52 FF:CF42: D0 F9     BNE bra_CF3D
C - - - - 0x03CF54 FF:CF44: A2 A5     LDX #$A5
C - - - - 0x03CF56 FF:CF46: A9 00     LDA #$00
bra_CF48:
C - - - - 0x03CF58 FF:CF48: 9D 3A 00  STA ram_003A,X
C - - - - 0x03CF5B FF:CF4B: CA        DEX
C - - - - 0x03CF5C FF:CF4C: D0 FA     BNE bra_CF48
C - - - - 0x03CF5E FF:CF4E: 60        RTS

.export sub_0x03CF5F
sub_0x03CF5F:
sub_CF4F:
ofs_DC03_04:
C D - - - 0x03CF5F FF:CF4F: A9 00     LDA #$00
bra_CF51:
C - - - - 0x03CF61 FF:CF51: 48        PHA
C - - - - 0x03CF62 FF:CF52: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03CF65 FF:CF55: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03CF67 FF:CF57: A9 00     LDA #$00
C - - - - 0x03CF69 FF:CF59: 91 34     STA (ram_plr_data),Y
C - - - - 0x03CF6B FF:CF5B: 68        PLA
C - - - - 0x03CF6C FF:CF5C: 48        PHA
C - - - - 0x03CF6D FF:CF5D: F0 04     BEQ bra_CF63_это_кипер
C - - - - 0x03CF6F FF:CF5F: C9 0B     CMP #$0B
C - - - - 0x03CF71 FF:CF61: D0 06     BNE bra_CF69
bra_CF63_это_кипер:
C - - - - 0x03CF73 FF:CF63: A0 07     LDY #con_величина_дисбаланса
C - - - - 0x03CF75 FF:CF65: A9 00     LDA #$00
C - - - - 0x03CF77 FF:CF67: 91 34     STA (ram_plr_data),Y
bra_CF69:
C - - - - 0x03CF79 FF:CF69: 68        PLA
C - - - - 0x03CF7A FF:CF6A: 18        CLC
C - - - - 0x03CF7B FF:CF6B: 69 01     ADC #$01
C - - - - 0x03CF7D FF:CF6D: C9 16     CMP #$16
C - - - - 0x03CF7F FF:CF6F: D0 E0     BNE bra_CF51
C - - - - 0x03CF81 FF:CF71: 60        RTS

.export sub_0x03CF82_отрисовка_чарли_на_фоне
sub_0x03CF82_отрисовка_чарли_на_фоне:
C D - - - 0x03CF82 FF:CF72: 48        PHA
C - - - - 0x03CF85 FF:CF75: A9 1A     LDA #$1A
C - - - - 0x03CF87 FF:CF77: 85 24     STA ram_для_5114
C - - - - 0x03CF89 FF:CF79: A9 1B     LDA #$1B
C - - - - 0x03CF8B FF:CF7B: 85 25     STA ram_для_5115
C - - - - 0x03CF8D FF:CF7D: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03CF90 FF:CF80: 68        PLA
C - - - - 0x03CF91 FF:CF81: 20 2A 80  JSR sub_0x0361FB_отрисовка_чарли_на_фоне
C - - - - 0x03CF94 FF:CF84: A9 18     LDA #$18
C - - - - 0x03CF96 FF:CF86: 85 24     STA ram_для_5114
C - - - - 0x03CF98 FF:CF88: A9 19     LDA #$19
C - - - - 0x03CF9A FF:CF8A: 85 25     STA ram_для_5115
C - - - - 0x03CF9C FF:CF8C: 4C 2D CE  JMP loc_CE2D_банксвич_PRG

.export sub_0x03CF9F_курсор_меню_после_гола
sub_0x03CF9F_курсор_меню_после_гола:
sub_CF8F_курсор_меню_после_гола:
; на выходе код ожидает получить A (номер меню) и C (кнопка A была нажата = 1)
; 0622 - номер меню
; 0623 - номер опции меню
    STA ram_позиция_курсора
    TAX
    LDA tbl_D002_горизонталь_спрайта,X
    STA ram_спрайт_X + $FC
    LDA tbl_D01A_номер_тайла,X
    STA ram_спрайт_тайл + $FC
    LDA #$03
    STA ram_спрайт_атрибут + $FC
bra_CFA4_цикл_ожидания_нажатия:
    LDA #$01
    JSR sub_CB0F
    LDA ram_номер_опции
    ASL
    ASL
    ASL
    ASL
    LDX ram_позиция_курсора
    CLC
    ADC tbl_D00A_вертикаль_спрайта,X
    STA ram_спрайт_Y + $FC
    LDA #con_btn_Down + con_btn_Up
    AND ram_одноразовые
    BEQ bra_CFE7_проверка_кнопок_A_и_B
    LDX #$01
    AND #$08
    BEQ bra_CFC9_нажата_кнопка_вниз
    LDX #$FF
bra_CFC9_нажата_кнопка_вниз:
    TXA
    CLC
    ADC ram_номер_опции
    BPL bra_CFD0_курсор_еще_не_достиг_вершины_списка
    LDX ram_позиция_курсора
    LDA tbl_D012_лимит_позиции_курсора,X
    STA ram_номер_опции
    BNE bra_CFE7_проверка_кнопок_A_и_B
bra_CFD0_курсор_еще_не_достиг_вершины_списка:
    LDX ram_позиция_курсора
    CMP tbl_D012_лимит_позиции_курсора,X
    BEQ bra_CFDA
    BCC bra_CFDA
    LDA #$00
    STA ram_номер_опции
    BEQ bra_CFE7_проверка_кнопок_A_и_B
bra_CFDA:
    STA ram_номер_опции
    LDX ram_позиция_курсора
    CPX #$05
    BNE bra_CFE7_проверка_кнопок_A_и_B
    STA ram_расстановка_слева
bra_CFE7_проверка_кнопок_A_и_B:
    LDA #con_btn_A
    AND ram_одноразовые
    BNE bra_CFF8_была_нажата_A
    LDA #con_btn_B
    AND ram_одноразовые
    BEQ bra_CFA4_цикл_ожидания_нажатия
    CLC
    BCC bra_CFFC_убрать_спрайт_с_экрана
bra_CFF8_была_нажата_A:
    SEC
    LDA ram_номер_опции
bra_CFFC_убрать_спрайт_с_экрана:
    LDX #$F8
    STX ram_спрайт_Y + $FC
    RTS

tbl_D002_горизонталь_спрайта:
    .byte $FF     ; unused
    .byte $46     ; выбор 2х спешалов
    .byte $46     ; выбор 3х спешалов
    .byte $46     ; выбор 4х спешалов
    .byte $40     ; все 5 опций после гола
    .byte $48     ; formation
    .byte $48     ; defense
    .byte $48     ; swap players/positions

tbl_D00A_вертикаль_спрайта:
    .byte $FF     ; unused
    .byte $A1     ; выбор 2х спешалов
    .byte $A1     ; выбор 3х спешалов
    .byte $A1     ; выбор 4х спешалов
    .byte $92     ; все 5 опций после гола
    .byte $A2     ; formation
    .byte $B2     ; defense
    .byte $C2     ; swap players/positions

tbl_D012_лимит_позиции_курсора:
; на всякий случай заметка, один из бранчей ожидает что тут не будет 00
    .byte $FF     ; unused
    .byte $01     ; выбор 2х спешалов
    .byte $02     ; выбор 3х спешалов
    .byte $03     ; выбор 4х спешалов
    .byte $04     ; все 5 опций после гола
    .byte $03     ; formation
    .byte $02     ; defense
    .byte $01     ; swap players/positions

tbl_D01A_номер_тайла:
    .byte $FF     ; unused
    .byte $70     ; выбор 2х спешалов
    .byte $70     ; выбор 3х спешалов
    .byte $70     ; выбор 4х спешалов
    .byte $71     ; все 5 опций после гола
    .byte $71     ; formation
    .byte $71     ; defense
    .byte $71     ; swap players/positions

.export sub_0x03D032_восстановить_энергию_в_перерыве
sub_0x03D032_восстановить_энергию_в_перерыве:
C D - - - 0x03D032 FF:D022: AD 27 00  LDA ram_тайм
C - - - - 0x03D035 FF:D025: C9 01     CMP #$01
C - - - - 0x03D037 FF:D027: F0 07     BEQ bra_D030
C - - - - 0x03D039 FF:D029: C9 02     CMP #$02
C - - - - 0x03D03B FF:D02B: F0 03     BEQ bra_D030
- - - - - 0x03D03D FF:D02D: 4C 92 D0  RTS
bra_D030:
C - - - - 0x03D040 FF:D030: A9 00     LDA #$00
bra_D032:
C - - - - 0x03D042 FF:D032: 48        PHA
C - - - - 0x03D043 FF:D033: A2 00     LDX #$00
C - - - - 0x03D045 FF:D035: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03D048 FF:D038: A5 33     LDA ram_0033
C - - - - 0x03D04A FF:D03A: 85 37     STA ram_0037
C - - - - 0x03D04C FF:D03C: A5 32     LDA ram_0032
C - - - - 0x03D04E FF:D03E: 85 36     STA ram_0036
C - - - - 0x03D050 FF:D040: A0 00     LDY #con_игрок_номер
C - - - - 0x03D052 FF:D042: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D054 FF:D044: C9 20     CMP #$20
C - - - - 0x03D056 FF:D046: D0 0C     BNE bra_D054
C - - - - 0x03D058 FF:D048: A2 04     LDX #$04
C - - - - 0x03D05A FF:D04A: AD 27 00  LDA ram_тайм
C - - - - 0x03D05D FF:D04D: C9 01     CMP #$01
C - - - - 0x03D05F FF:D04F: F0 0D     BEQ bra_D05E
- - - - - 0x03D061 FF:D051: CA        DEX
- - - - - 0x03D062 FF:D052: D0 0A     BNE bra_D05E
bra_D054:
C - - - - 0x03D064 FF:D054: A2 03     LDX #$03
C - - - - 0x03D066 FF:D056: AD 27 00  LDA ram_тайм
C - - - - 0x03D069 FF:D059: C9 01     CMP #$01
C - - - - 0x03D06B FF:D05B: F0 01     BEQ bra_D05E
C - - - - 0x03D06D FF:D05D: CA        DEX
bra_D05E:
C - - - - 0x03D06E FF:D05E: 46 33     LSR ram_0033
C - - - - 0x03D070 FF:D060: 66 32     ROR ram_0032
C - - - - 0x03D072 FF:D062: CA        DEX
C - - - - 0x03D073 FF:D063: D0 F9     BNE bra_D05E
C - - - - 0x03D075 FF:D065: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03D077 FF:D067: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D079 FF:D069: 18        CLC
C - - - - 0x03D07A FF:D06A: 65 32     ADC ram_0032
C - - - - 0x03D07C FF:D06C: AA        TAX
C - - - - 0x03D07D FF:D06D: C8        INY
C - - - - 0x03D07E FF:D06E: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D080 FF:D070: 65 33     ADC ram_0033
C - - - - 0x03D082 FF:D072: C5 37     CMP ram_0037
C - - - - 0x03D084 FF:D074: 08        PHP
C - - - - 0x03D085 FF:D075: 90 02     BCC bra_D079
C - - - - 0x03D087 FF:D077: A5 37     LDA ram_0037
bra_D079:
C - - - - 0x03D089 FF:D079: 91 34     STA (ram_plr_data),Y
C - - - - 0x03D08B FF:D07B: 8A        TXA
C - - - - 0x03D08C FF:D07C: 28        PLP
C - - - - 0x03D08D FF:D07D: 90 08     BCC bra_D087
C - - - - 0x03D08F FF:D07F: D0 04     BNE bra_D085
C - - - - 0x03D091 FF:D081: C5 36     CMP ram_0036
C - - - - 0x03D093 FF:D083: 90 02     BCC bra_D087
bra_D085:
C - - - - 0x03D095 FF:D085: A5 36     LDA ram_0036
bra_D087:
C - - - - 0x03D097 FF:D087: 88        DEY
C - - - - 0x03D098 FF:D088: 91 34     STA (ram_plr_data),Y
C - - - - 0x03D09A FF:D08A: 68        PLA
C - - - - 0x03D09B FF:D08B: 18        CLC
C - - - - 0x03D09C FF:D08C: 69 01     ADC #$01
C - - - - 0x03D09E FF:D08E: C9 0B     CMP #$0B
C - - - - 0x03D0A0 FF:D090: D0 A0     BNE bra_D032
C - - - - 0x03D0A2 FF:D092: 60        RTS

.export sub_0x03D0A3_выбор_мелодии_команды
sub_0x03D0A3_выбор_мелодии_команды:
sub_D093_выбор_мелодии_команды:
; 32 = музыка добавочного времени
C D - - - 0x03D0A3 FF:D093: A9 32     LDA #con_музыка_добавочное_время
C - - - - 0x03D0A5 FF:D095: 2C 3E 06  BIT ram_флаг_loss
C - - - - 0x03D0A8 FF:D098: 30 0E     BMI bra_D0A8
C - - - - 0x03D0AA FF:D09A: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03D0AD FF:D09D: F0 02     BEQ bra_D0A1_это_твоя_команда
; в противном случае считывается номер команды соперников
C - - - - 0x03D0AF FF:D09F: A2 01     LDX #$01
bra_D0A1_это_твоя_команда:
C - - - - 0x03D0B1 FF:D0A1: BD 2A 00  LDA ram_твоя_команда,X
C - - - - 0x03D0B4 FF:D0A4: AA        TAX
C - - - - 0x03D0B5 FF:D0A5: BD AC D0  LDA tbl_D0AC_мелодии_команд,X
bra_D0A8:
C - - - - 0x03D0B8 FF:D0A8: 20 F1 CB  JSR sub_CBF1_запись_звука
C - - - - 0x03D0BB FF:D0AB: 60        RTS



tbl_D0AC_мелодии_команд:
- D - - - 0x03D0BC FF:D0AC: 3C        .byte $3C    ; сан-паулу
- D - - - 0x03D0BD FF:D0AD: 39        .byte $39    ; нанкацу
- D - - - 0x03D0BE FF:D0AE: 3F        .byte $3F    ; япония

- D - - - 0x03D0BF FF:D0AF: 35        .byte $35    ; кубок рио
- D - - - 0x03D0C0 FF:D0B0: 35        .byte $35    ; кубок рио
- D - - - 0x03D0C1 FF:D0B1: 35        .byte $35    ; кубок рио
- D - - - 0x03D0C2 FF:D0B2: 35        .byte $35    ; кубок рио
- D - - - 0x03D0C3 FF:D0B3: 35        .byte $35    ; кубок рио
- D - - - 0x03D0C4 FF:D0B4: 40        .byte $40    ; фламенго

- D - - - 0x03D0C5 FF:D0B5: 34        .byte $34    ; нац чемп
- D - - - 0x03D0C6 FF:D0B6: 34        .byte $34    ; нац чемп
- D - - - 0x03D0C7 FF:D0B7: 34        .byte $34    ; нац чемп
- D - - - 0x03D0C8 FF:D0B8: 34        .byte $34    ; нац чемп
- D - - - 0x03D0C9 FF:D0B9: 34        .byte $34    ; нац чемп
- D - - - 0x03D0CA FF:D0BA: 37        .byte $37    ; тохо

- D - - - 0x03D0CB FF:D0BB: 3B        .byte $3B    ; кубок японии
- D - - - 0x03D0CC FF:D0BC: 3B        .byte $3B    ; кубок японии
- D - - - 0x03D0CD FF:D0BD: 3B        .byte $3B    ; кубок японии
- D - - - 0x03D0CE FF:D0BE: 3B        .byte $3B    ; кубок японии

- D - - - 0x03D0CF FF:D0BF: 3A        .byte $3A    ; чемп азии
- D - - - 0x03D0D0 FF:D0C0: 3A        .byte $3A    ; чемп азии
- D - - - 0x03D0D1 FF:D0C1: 3A        .byte $3A    ; чемп азии
- D - - - 0x03D0D2 FF:D0C2: 3A        .byte $3A    ; чемп азии
- D - - - 0x03D0D3 FF:D0C3: 3A        .byte $3A    ; чемп азии
- D - - - 0x03D0D4 FF:D0C4: 3A        .byte $3A    ; чемп азии

- D - - - 0x03D0D5 FF:D0C5: 36        .byte $36    ; товарняки
- D - - - 0x03D0D6 FF:D0C6: 36        .byte $36    ; товарняки
- D - - - 0x03D0D7 FF:D0C7: 36        .byte $36    ; товарняки
- D - - - 0x03D0D8 FF:D0C8: 36        .byte $36    ; товарняки
- D - - - 0x03D0D9 FF:D0C9: 36        .byte $36    ; товарняки

- D - - - 0x03D0DA FF:D0CA: 3D        .byte $3D    ; кубок мира
- D - - - 0x03D0DB FF:D0CB: 3D        .byte $3D    ; кубок мира
- D - - - 0x03D0DC FF:D0CC: 3D        .byte $3D    ; кубок мира
- D - - - 0x03D0DD FF:D0CD: 3D        .byte $3D    ; кубок мира
- D - - - 0x03D0DE FF:D0CE: 38        .byte $38    ; германия
- D - - - 0x03D0DF FF:D0CF: 3E        .byte $3E    ; бразилия
- - - - - 0x03D0E0 FF:D0D0: 3E        .byte $3E    ; 



.export sub_0x03D0E1_попытка_убить_мисуги
sub_0x03D0E1_попытка_убить_мисуги:
C D - - - 0x03D0E1 FF:D0D1: AD 2A 00  LDA ram_твоя_команда
C - - - - 0x03D0E4 FF:D0D4: C9 02     CMP #$02      ; japan
C - - - - 0x03D0E6 FF:D0D6: D0 37     BNE bra_D10F_выход
C - - - - 0x03D0E8 FF:D0D8: A9 00     LDA #$00
bra_D0DA_цикл_поиска_мисуги:
C - - - - 0x03D0EA FF:D0DA: 48        PHA
; сначала поиск по основным игрокам, затем по запасным
C - - - - 0x03D0EB FF:D0DB: C9 0B     CMP #$0B
C - - - - 0x03D0ED FF:D0DD: 90 02     BCC bra_D0E1_это_основной_состав
C - - - - 0x03D0EF FF:D0DF: 69 0A     ADC #$0A
bra_D0E1_это_основной_состав:
C - - - - 0x03D0F1 FF:D0E1: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03D0F4 FF:D0E4: A0 00     LDY #con_игрок_номер
C - - - - 0x03D0F6 FF:D0E6: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D0F8 FF:D0E8: AA        TAX
C - - - - 0x03D0F9 FF:D0E9: 68        PLA
C - - - - 0x03D0FA FF:D0EA: E0 20     CPX #$20      ; misugi
C - - - - 0x03D0FC FF:D0EC: F0 08     BEQ bra_D0F6_мисуги_найден
C - - - - 0x03D0FE FF:D0EE: 18        CLC
C - - - - 0x03D0FF FF:D0EF: 69 01     ADC #$01
C - - - - 0x03D101 FF:D0F1: C9 16     CMP #$16
C - - - - 0x03D103 FF:D0F3: D0 E5     BNE bra_D0DA_цикл_поиска_мисуги
; bzk не обязательно делать проверку счетчика и rts, достаточно сразу jmp после увеличения
; поскольку в японии всегда где-то да присутствует мисуги
; и рано или поздно цикл его найдет

; bzk2 однако флаг C тут стоит, значит rts все таки использовался, что не логично
C - - - - 0x03D105 FF:D0F5: 60        RTS
bra_D0F6_мисуги_найден:
C - - - - 0x03D106 FF:D0F6: A2 00     LDX #$00
C - - - - 0x03D108 FF:D0F8: AD 4D 04  LDA ram_флаг_мисуги_0_хп
C - - - - 0x03D10B FF:D0FB: D0 0F     BNE bra_D10C_запись_флага
C - - - - 0x03D10D FF:D0FD: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03D10F FF:D0FF: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D111 FF:D101: 38        SEC
C - - - - 0x03D112 FF:D102: E9 64     SBC #$64
C - - - - 0x03D114 FF:D104: C8        INY
C - - - - 0x03D115 FF:D105: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D117 FF:D107: E9 00     SBC #$00
C - - - - 0x03D119 FF:D109: 10 01     BPL bra_D10C_запись_флага
; X 01 если он дохлый
C - - - - 0x03D11B FF:D10B: E8        INX
bra_D10C_запись_флага:
C - - - - 0x03D11C FF:D10C: 8E 4D 04  STX ram_флаг_мисуги_0_хп
bra_D10F_выход:
C - - - - 0x03D11F FF:D10F: 60        RTS

loc_D110:
C D - - - 0x03D120 FF:D110: A9 12     LDA #$12
C - - - - 0x03D122 FF:D112: 85 24     STA ram_для_5114
C - - - - 0x03D124 FF:D114: A9 13     LDA #$13
C - - - - 0x03D126 FF:D116: 85 25     STA ram_для_5115
C - - - - 0x03D128 FF:D118: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D12B FF:D11B: 4C 00 B0  JMP loc_0x027010

ofs_D11E_minus:
ofs_D11E = ofs_D11E_minus - 1
C - - - - 0x03D12E FF:D11E: AD 27 00  LDA ram_тайм
C - - - - 0x03D131 FF:D121: C9 05     CMP #$05
C - - - - 0x03D133 FF:D123: D0 03     BNE bra_D128
C - - - - 0x03D135 FF:D125: 4C 10 D1  JMP loc_D110
bra_D128:
C - - - - 0x03D138 FF:D128: A9 00     LDA #$00
C - - - - 0x03D13A FF:D12A: 8D 3E 06  STA ram_флаг_loss
C - - - - 0x03D13D FF:D12D: 8D 40 06  STA ram_счетчик_анимации_мяча_миникарты_lo
C - - - - 0x03D140 FF:D130: 8D 41 06  STA ram_счетчик_анимации_мяча_миникарты_hi
C - - - - 0x03D143 FF:D133: 8D 13 06  STA $0613
C - - - - 0x03D146 FF:D136: AD 27 00  LDA ram_тайм
C - - - - 0x03D149 FF:D139: C9 04     CMP #$04
C - - - - 0x03D14B FF:D13B: D0 12     BNE bra_D14F
C - - - - 0x03D14D FF:D13D: 48        PHA
C - - - - 0x03D150 FF:D140: A9 1A     LDA #$1A
C - - - - 0x03D152 FF:D142: 85 24     STA ram_для_5114
C - - - - 0x03D154 FF:D144: A9 1B     LDA #$1B
C - - - - 0x03D156 FF:D146: 85 25     STA ram_для_5115
C - - - - 0x03D158 FF:D148: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D15B FF:D14B: 68        PLA
C - - - - 0x03D15C FF:D14C: 20 30 80  JSR sub_0x0355F1_вычисление_счета_пенальти
bra_D14F:
C - - - - 0x03D15F FF:D14F: 8D 29 06  STA ram_флаг_разводки
C - - - - 0x03D162 FF:D152: 0A        ASL
C - - - - 0x03D163 FF:D153: 85 3A     STA ram_003A
C - - - - 0x03D165 FF:D155: A9 08     LDA #$08
C - - - - 0x03D167 FF:D157: AE 2B 00  LDX ram_команда_соперника
C - - - - 0x03D16A FF:D15A: E0 0E     CPX #$0E
C - - - - 0x03D16C FF:D15C: F0 0A     BEQ bra_D168
C - - - - 0x03D16E FF:D15E: E0 12     CPX #$12
C - - - - 0x03D170 FF:D160: F0 06     BEQ bra_D168
C - - - - 0x03D172 FF:D162: E0 1A     CPX #$1A
C - - - - 0x03D174 FF:D164: B0 02     BCS bra_D168
C - - - - 0x03D176 FF:D166: A9 00     LDA #$00
bra_D168:
C - - - - 0x03D178 FF:D168: 18        CLC
C - - - - 0x03D179 FF:D169: 65 3A     ADC ram_003A
C - - - - 0x03D17B FF:D16B: AA        TAX
C - - - - 0x03D17C FF:D16C: BD 83 D1  LDA tbl_D183_время_тайма,X
C - - - - 0x03D17F FF:D16F: 8D F7 05  STA ram_время_lo
C - - - - 0x03D182 FF:D172: BD 84 D1  LDA tbl_D183_время_тайма + 1,X
C - - - - 0x03D185 FF:D175: 8D F8 05  STA ram_время_hi
C - - - - 0x03D188 FF:D178: A9 00     LDA #$00
C - - - - 0x03D18A FF:D17A: 8D F9 05  STA ram_loss
C - - - - 0x03D18D FF:D17D: A2 50     LDX #$50
C - - - - 0x03D18F FF:D17F: 9A        TXS
C - - - - 0x03D190 FF:D180: 4C AA DA  JMP loc_DAAA

tbl_D183_время_тайма:
- D - - - 0x03D193 FF:D183: B4 00     .word $00B4
- D - - - 0x03D195 FF:D185: B4 00     .word $00B4
- D - - - 0x03D197 FF:D187: 5A 00     .word $005A
- - - - - 0x03D199 FF:D189: 5A 00     .word $005A
- D - - - 0x03D19B FF:D18B: D2 00     .word $00D2
- D - - - 0x03D19D FF:D18D: D2 00     .word $00D2
- - - - - 0x03D19F FF:D18F: 5A 00     .word $005A
- - - - - 0x03D1A1 FF:D191: 5A 00     .word $005A

.export sub_0x03D1A3_уменьшить_таймер_времени_тайма
sub_0x03D1A3_уменьшить_таймер_времени_тайма:
.export loc_0x03D1A3_уменьшить_таймер_времени_тайма
loc_0x03D1A3_уменьшить_таймер_времени_тайма:
sub_D193_уменьшить_таймер_времени_тайма:
C D - - - 0x03D1A3 FF:D193: AA        TAX
C - - - - 0x03D1A4 FF:D194: 18        CLC
C - - - - 0x03D1A5 FF:D195: 6D FF 05  ADC $05FF
C - - - - 0x03D1A8 FF:D198: 8D FF 05  STA $05FF
C - - - - 0x03D1AB FF:D19B: 8A        TXA
C - - - - 0x03D1AC FF:D19C: 48        PHA
C - - - - 0x03D1AD FF:D19D: 20 35 D2  JSR sub_D235_уменьшить_таймер_драйв_тигра
C - - - - 0x03D1B0 FF:D1A0: 68        PLA
C - - - - 0x03D1B1 FF:D1A1: AE F8 05  LDX ram_время_hi
C - - - - 0x03D1B4 FF:D1A4: D0 08     BNE bra_D1AE
C - - - - 0x03D1B6 FF:D1A6: EC F7 05  CPX ram_время_lo
C - - - - 0x03D1B9 FF:D1A9: D0 03     BNE bra_D1AE
C - - - - 0x03D1BB FF:D1AB: 4C 20 D2  JMP loc_D220
bra_D1AE:
C - - - - 0x03D1BE FF:D1AE: 49 FF     EOR #$FF
C - - - - 0x03D1C0 FF:D1B0: 18        CLC
C - - - - 0x03D1C1 FF:D1B1: 69 01     ADC #$01
C - - - - 0x03D1C3 FF:D1B3: D0 03     BNE bra_D1B8
C - - - - 0x03D1C5 FF:D1B5: 4C 1F D2  RTS
bra_D1B8:
C - - - - 0x03D1C8 FF:D1B8: 18        CLC
C - - - - 0x03D1C9 FF:D1B9: 6D F7 05  ADC ram_время_lo
C - - - - 0x03D1CC FF:D1BC: AA        TAX
C - - - - 0x03D1CD FF:D1BD: AD F8 05  LDA ram_время_hi
C - - - - 0x03D1D0 FF:D1C0: 69 FF     ADC #$FF
C - - - - 0x03D1D2 FF:D1C2: 10 03     BPL bra_D1C7
C - - - - 0x03D1D4 FF:D1C4: A9 00     LDA #$00
C - - - - 0x03D1D6 FF:D1C6: AA        TAX
bra_D1C7:
C - - - - 0x03D1D7 FF:D1C7: 8D F8 05  STA ram_время_hi
C - - - - 0x03D1DA FF:D1CA: 8E F7 05  STX ram_время_lo
C - - - - 0x03D1DD FF:D1CD: A9 00     LDA #$00      ; period_number_and_time 
C - - - - 0x03D1DF FF:D1CF: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D1E2 FF:D1D2: 2C 3E 06  BIT ram_флаг_loss
C - - - - 0x03D1E5 FF:D1D5: 30 14     BMI bra_D1EB_сейчас_не_loss
C - - - - 0x03D1E7 FF:D1D7: AD F7 05  LDA ram_время_lo
C - - - - 0x03D1EA FF:D1DA: C9 1E     CMP #$1E      ; 5 минут
C - - - - 0x03D1EC FF:D1DC: B0 0D     BCS bra_D1EB_сейчас_не_loss
C - - - - 0x03D1EE FF:D1DE: AD 3E 06  LDA #$80
C - - - - 0x03D1F3 FF:D1E3: 8D 3E 06  STA ram_флаг_loss
C - - - - 0x03D1F6 FF:D1E6: A9 32     LDA #con_музыка_добавочное_время
C - - - - 0x03D1F8 FF:D1E8: 20 F1 CB  JSR sub_CBF1_запись_звука
bra_D1EB_сейчас_не_loss:
C - - - - 0x03D1FB FF:D1EB: AD F8 05  LDA ram_время_hi
C - - - - 0x03D1FE FF:D1EE: 0D F7 05  ORA ram_время_lo
C - - - - 0x03D201 FF:D1F1: D0 2C     BNE bra_D21F_выход
C - - - - 0x03D203 FF:D1F3: A9 00     LDA #$00
C - - - - 0x03D205 FF:D1F5: 2C E2 00  BIT ram_рандом_2
C - - - - 0x03D208 FF:D1F8: 10 02     BPL bra_D1FC
C - - - - 0x03D20A FF:D1FA: A9 0C     LDA #$0C
bra_D1FC:
C - - - - 0x03D20C FF:D1FC: 18        CLC
C - - - - 0x03D20D FF:D1FD: 6D F9 05  ADC ram_loss
C - - - - 0x03D210 FF:D200: 8D F9 05  STA ram_loss
C - - - - 0x03D213 FF:D203: F0 1A     BEQ bra_D21F_выход
C - - - - 0x03D215 FF:D205: A9 00     LDA #$00
C - - - - 0x03D217 FF:D207: 8D 2D 06  STA $062D
C - - - - 0x03D21A FF:D20A: AD 15 06  LDA $0615
C - - - - 0x03D21D FF:D20D: 29 BF     AND #$BF
C - - - - 0x03D21F FF:D20F: 8D 15 06  STA $0615
C - - - - 0x03D222 FF:D212: A9 43     LDA #$43
C - - - - 0x03D224 FF:D214: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D227 FF:D217: 2C 15 06  BIT $0615
C - - - - 0x03D22A FF:D21A: 10 03     BPL bra_D21F_выход
C - - - - 0x03D22C FF:D21C: 20 33 E2  JSR sub_E233
bra_D21F_выход:
C D - - - 0x03D22F FF:D21F: 60        RTS

loc_D220:
C D - - - 0x03D230 FF:D220: 49 FF     EOR #$FF
C - - - - 0x03D232 FF:D222: 18        CLC
C - - - - 0x03D233 FF:D223: 69 01     ADC #$01
C - - - - 0x03D235 FF:D225: 18        CLC
C - - - - 0x03D236 FF:D226: 6D F9 05  ADC ram_loss
C - - - - 0x03D239 FF:D229: 10 06     BPL bra_D231_записать_loss
C - - - - 0x03D23B FF:D22B: A2 50     LDX #$50
C - - - - 0x03D23D FF:D22D: 9A        TXS
C D - - - 0x03DAA8 FF:DA98: A9 00     LDA #$00
C - - - - 0x03DAAA FF:DA9A: 8D 2D 06  STA $062D
C - - - - 0x03DAAD FF:DA9D: 8D 15 06  STA $0615
C - - - - 0x03DAB0 FF:DAA0: A9 33     LDA #$33
C - - - - 0x03DAB2 FF:DAA2: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DAB5 FF:DAA5: A9 FF     LDA #$FF
C - - - - 0x03DAB7 FF:DAA7: 4C FE CE  JMP loc_CEFE
bra_D231_записать_loss:
C - - - - 0x03D241 FF:D231: 8D F9 05  STA ram_loss
C - - - - 0x03D244 FF:D234: 60        RTS

sub_D235_уменьшить_таймер_драйв_тигра:
C - - - - 0x03D245 FF:D235: 49 FF     EOR #$FF
C - - - - 0x03D247 FF:D237: 18        CLC
C - - - - 0x03D248 FF:D238: 69 01     ADC #$01
C - - - - 0x03D24A FF:D23A: AA        TAX
C - - - - 0x03D24B FF:D23B: 2C 49 04  BIT ram_флаг_драйв_тигра
C - - - - 0x03D24E FF:D23E: 10 0E     BPL bra_D24E
C - - - - 0x03D250 FF:D240: 18        CLC
C - - - - 0x03D251 FF:D241: 6D 4A 04  ADC ram_таймер_драйв_тигра
C - - - - 0x03D254 FF:D244: 8D 4A 04  STA ram_таймер_драйв_тигра
C - - - - 0x03D257 FF:D247: 10 05     BPL bra_D24E
C - - - - 0x03D259 FF:D249: A9 00     LDA #$00
C - - - - 0x03D25B FF:D24B: 8D 49 04  STA ram_флаг_драйв_тигра
bra_D24E:
C - - - - 0x03D25E FF:D24E: 8A        TXA
C - - - - 0x03D25F FF:D24F: 48        PHA
; твой кипер
C - - - - 0x03D260 FF:D250: A9 00     LDA #$00
C - - - - 0x03D262 FF:D252: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03D265 FF:D255: 68        PLA
C - - - - 0x03D266 FF:D256: 48        PHA
C - - - - 0x03D267 FF:D257: 20 63 D2  JSR sub_D263
; кипер соперника
C - - - - 0x03D26A FF:D25A: A9 0B     LDA #$0B
C - - - - 0x03D26C FF:D25C: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03D26F FF:D25F: 68        PLA
C - - - - 0x03D270 FF:D260: 4C 63 D2  JMP loc_D263

sub_D263:
loc_D263:
C D - - - 0x03D273 FF:D263: AA        TAX
C - - - - 0x03D274 FF:D264: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03D276 FF:D266: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D278 FF:D268: F0 0B     BEQ bra_D275_кипер_в_воротах
C - - - - 0x03D27A FF:D26A: 8A        TXA
C - - - - 0x03D27B FF:D26B: 18        CLC
C - - - - 0x03D27C FF:D26C: 71 34     ADC (ram_plr_data),Y
C - - - - 0x03D27E FF:D26E: 10 02     BPL bra_D272_не_overflow
C - - - - 0x03D280 FF:D270: A9 00     LDA #$00
bra_D272_не_overflow:
C - - - - 0x03D282 FF:D272: 91 34     STA (ram_plr_data),Y
C - - - - 0x03D284 FF:D274: 60        RTS
bra_D275_кипер_в_воротах:
C - - - - 0x03D285 FF:D275: A0 07     LDY #con_величина_дисбаланса
C - - - - 0x03D287 FF:D277: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D289 FF:D279: F0 1E     BEQ bra_D299_выход
C - - - - 0x03D28B FF:D27B: A0 06     LDY #$06
C - - - - 0x03D28D FF:D27D: 8A        TXA
C - - - - 0x03D28E FF:D27E: 18        CLC
C - - - - 0x03D28F FF:D27F: 71 34     ADC (ram_plr_data),Y
C - - - - 0x03D291 FF:D281: 10 14     BPL bra_D297
C - - - - 0x03D293 FF:D283: 18        CLC
C - - - - 0x03D294 FF:D284: 69 03     ADC #$03
C - - - - 0x03D296 FF:D286: 48        PHA
C - - - - 0x03D297 FF:D287: A0 07     LDY #con_величина_дисбаланса
C - - - - 0x03D299 FF:D289: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D29B FF:D28B: 38        SEC
C - - - - 0x03D29C FF:D28C: E9 19     SBC #$19
C - - - - 0x03D29E FF:D28E: 10 02     BPL bra_D292
C - - - - 0x03D2A0 FF:D290: A9 00     LDA #$00
bra_D292:
C - - - - 0x03D2A2 FF:D292: 91 34     STA (ram_plr_data),Y
C - - - - 0x03D2A4 FF:D294: 68        PLA
C - - - - 0x03D2A5 FF:D295: A0 06     LDY #$06
bra_D297:
C - - - - 0x03D2A7 FF:D297: 91 34     STA (ram_plr_data),Y
bra_D299_выход:
C - - - - 0x03D2A9 FF:D299: 60        RTS

loc_D29A_отрисовка_меню_для_киперов:
; сработало когда появляется рожа кипера чтобы выбрать действие
C D - - - 0x03D2AA FF:D29A: AE 21 06  LDX $0621
C - - - - 0x03D2AD FF:D29D: BD 59 D3  LDA tbl_D35C_окно_с_действием - 3,X
C - - - - 0x03D2B0 FF:D2A0: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D2B3 FF:D2A3: AE 21 06  LDX $0621
C - - - - 0x03D2B6 FF:D2A6: BD 5C D3  LDA tbl_D35F_статы_кипера - 3,X
C - - - - 0x03D2B9 FF:D2A9: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D2BC FF:D2AC: A9 00     LDA #$00
C - - - - 0x03D2BE FF:D2AE: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - 0x03D2C1 FF:D2B1: 8D 1E 06  STA $061E
bra_D2B4:
loc_D2B4:
C D - - - 0x03D2C4 FF:D2B4: A9 01     LDA #$01
C - - - - 0x03D2C6 FF:D2B6: 20 0F CB  JSR sub_CB0F
C - - - - 0x03D2C9 FF:D2B9: A9 0F     LDA #con_btns_Dpad
C - - - - 0x03D2CB FF:D2BB: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D2CE FF:D2BE: F0 49     BEQ bra_D309
C - - - - 0x03D2D0 FF:D2C0: A2 00     LDX #$00
bra_D2C2:
C - - - - 0x03D2D2 FF:D2C2: 4A        LSR
C - - - - 0x03D2D3 FF:D2C3: B0 03     BCS bra_D2C8
C - - - - 0x03D2D5 FF:D2C5: E8        INX
C - - - - 0x03D2D6 FF:D2C6: D0 FA     BNE bra_D2C2
bra_D2C8:
C - - - - 0x03D2D8 FF:D2C8: 86 3A     STX ram_003A
C - - - - 0x03D2DA FF:D2CA: AD 21 06  LDA $0621
C - - - - 0x03D2DD FF:D2CD: 38        SEC
C - - - - 0x03D2DE FF:D2CE: E9 03     SBC #$03
C - - - - 0x03D2E0 FF:D2D0: 0A        ASL
C - - - - 0x03D2E1 FF:D2D1: 0A        ASL
C - - - - 0x03D2E2 FF:D2D2: 65 3A     ADC ram_003A
C - - - - 0x03D2E4 FF:D2D4: AA        TAX
C - - - - 0x03D2E5 FF:D2D5: BD 62 D3  LDA tbl_D362_действие_кипера,X
C - - - - 0x03D2E8 FF:D2D8: C9 FF     CMP #$FF
C - - - - 0x03D2EA FF:D2DA: F0 2D     BEQ bra_D309
C - - - - 0x03D2EC FF:D2DC: C9 02     CMP #$02
C - - - - 0x03D2EE FF:D2DE: D0 0D     BNE bra_D2ED
; bzk прыжок чтобы вычислить адрес кипера, тут можно сразу проверить адрес кипера без косвенной адресации
C - - - - 0x03D2F0 FF:D2E0: 20 77 CD  JSR sub_CD77_адрес_игрока_адрес_игрока_команды_без_мяча
C - - - - 0x03D2F3 FF:D2E3: A0 00     LDY #con_игрок_номер
C - - - - 0x03D2F5 FF:D2E5: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D2F7 FF:D2E7: C9 22     CMP #$22      ; wakashimazu чтобы отобразить ему действие прыжка от штанги при нажатии вниз
C - - - - 0x03D2F9 FF:D2E9: D0 1E     BNE bra_D309
C - - - - 0x03D2FB FF:D2EB: A9 02     LDA #$02
bra_D2ED:
C - - - - 0x03D2FD FF:D2ED: 8D 3D 04  STA ram_действие_защиты
C - - - - 0x03D300 FF:D2F0: A6 3A     LDX ram_003A
C - - - - 0x03D302 FF:D2F2: AD 1E 06  LDA $061E
C - - - - 0x03D305 FF:D2F5: 8E 1E 06  STX $061E
C - - - - 0x03D308 FF:D2F8: 48        PHA
C - - - - 0x03D309 FF:D2F9: 29 03     AND #$03
C - - - - 0x03D30B FF:D2FB: CD 1E 06  CMP $061E
C - - - - 0x03D30E FF:D2FE: F0 03     BEQ bra_D303
C - - - - 0x03D310 FF:D300: 68        PLA
C - - - - 0x03D311 FF:D301: 8A        TXA
C - - - - 0x03D312 FF:D302: 48        PHA
bra_D303:
C - - - - 0x03D313 FF:D303: 68        PLA
C - - - - 0x03D314 FF:D304: 09 80     ORA #$80
C - - - - 0x03D316 FF:D306: 8D 1E 06  STA $061E
bra_D309:
C - - - - 0x03D319 FF:D309: A9 80     LDA #con_btn_A
C - - - - 0x03D31B FF:D30B: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D31E FF:D30E: F0 08     BEQ bra_D318
C - - - - 0x03D320 FF:D310: 2C 1E 06  BIT $061E
C - - - - 0x03D323 FF:D313: 10 03     BPL bra_D318
C - - - - 0x03D325 FF:D315: 4C 46 CC  JMP loc_CC46_очистить_нижнюю_половину_экрана
bra_D318:
C - - - - 0x03D328 FF:D318: 2C 1E 06  BIT $061E
C - - - - 0x03D32B FF:D31B: 10 97     BPL bra_D2B4
C - - - - 0x03D32D FF:D31D: A9 20     LDA #$20
C - - - - 0x03D32F FF:D31F: 2C 1E 06  BIT $061E
C - - - - 0x03D332 FF:D322: D0 0B     BNE bra_D32F
C - - - - 0x03D334 FF:D324: 0D 1E 06  ORA $061E
C - - - - 0x03D337 FF:D327: 8D 1E 06  STA $061E
C - - - - 0x03D33A FF:D32A: A9 00     LDA #$00
C - - - - 0x03D33C FF:D32C: 8D 1F 06  STA $061F
bra_D32F:
C - - - - 0x03D33F FF:D32F: AE 1F 06  LDX $061F
C - - - - 0x03D342 FF:D332: F0 06     BEQ bra_D33A
C - - - - 0x03D344 FF:D334: CE 1F 06  DEC $061F
C - - - - 0x03D347 FF:D337: 4C B4 D2  JMP loc_D2B4
bra_D33A:
C - - - - 0x03D34A FF:D33A: A9 0D     LDA #$0D
C - - - - 0x03D34C FF:D33C: 8D 1F 06  STA $061F
C - - - - 0x03D34F FF:D33F: AD 1E 06  LDA $061E
C - - - - 0x03D352 FF:D342: 49 40     EOR #$40
C - - - - 0x03D354 FF:D344: 8D 1E 06  STA $061E
C - - - - 0x03D357 FF:D347: AC 3D 04  LDY ram_действие_защиты
C - - - - 0x03D35A FF:D34A: B9 48 D5  LDA tbl_D548,Y
C - - - - 0x03D35D FF:D34D: 2C 1E 06  BIT $061E
C - - - - 0x03D360 FF:D350: 70 02     BVS bra_D354
; +80 значит надпись сейчас должна быть скрыта
C - - - - 0x03D362 FF:D352: 09 80     ORA #$80
bra_D354:
C - - - - 0x03D364 FF:D354: A2 00     LDX #$00
C - - - - 0x03D366 FF:D356: 20 3D E9  JSR sub_E93D_отображение_выбранного_действия
C - - - - 0x03D369 FF:D359: 4C B4 D2  JMP loc_D2B4

; на кипера напали
; кипер отбивает удар
; кипер отбивает пк
tbl_D35C_окно_с_действием:
    .byte $07       ; gk_action_window_vs_player
    .byte $02       ; player_action_window
    .byte $2D       ; pk_dive

tbl_D35F_статы_кипера:
    .byte $08       ; gk_counter_drib_shot
    .byte $06       ; gk_punch_catch
    .byte $06       ; gk_punch_catch



tbl_D362_действие_кипера:
; при нажатии вправо, влево, вниз, вверх
- D - - - 0x03D372 FF:D362: 06        .byte $06    ; <か>
- D - - - 0x03D373 FF:D363: 06        .byte $06    ; <か>
- D - - - 0x03D374 FF:D364: FF        .byte $FF
- D - - - 0x03D375 FF:D365: 05        .byte $05    ; <お>

- D - - - 0x03D376 FF:D366: 00        .byte $00
- D - - - 0x03D377 FF:D367: 00        .byte $00
- D - - - 0x03D378 FF:D368: 02        .byte $02    ; <い>
- D - - - 0x03D379 FF:D369: 01        .byte $01    ; <あ>

- D - - - 0x03D37A FF:D36A: 09        .byte $09    ; <け>
- D - - - 0x03D37B FF:D36B: 07        .byte $07    ; <き>
- - - - - 0x03D37C FF:D36C: FF        .byte $FF
- D - - - 0x03D37D FF:D36D: 08        .byte $08    ; <く>



loc_D36E:
C D - - - 0x03D37E FF:D36E: AD 21 06  LDA $0621
C - - - - 0x03D381 FF:D371: C9 03     CMP #$03
C - - - - 0x03D383 FF:D373: 90 03     BCC bra_D378
C - - - - 0x03D385 FF:D375: 4C 9A D2  JMP loc_D29A_отрисовка_меню_для_киперов
bra_D378:
C - - - - 0x03D388 FF:D378: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03D38B FF:D37B: D0 01     BNE bra_D37E
C - - - - 0x03D38D FF:D37D: 60        RTS
bra_D37E:
C - - - - 0x03D38E FF:D37E: 20 46 CC  JSR sub_CC46_очистить_нижнюю_половину_экрана
C - - - - 0x03D391 FF:D381: A2 03     LDX #$03
C - - - - 0x03D393 FF:D383: A9 FF     LDA #$FF
bra_D385:
C - - - - 0x03D395 FF:D385: 9D 0B 06  STA ram_действие_защитника,X
C - - - - 0x03D398 FF:D388: CA        DEX
C - - - - 0x03D399 FF:D389: 10 FA     BPL bra_D385
C - - - - 0x03D39B FF:D38B: A9 00     LDA #$00
C - - - - 0x03D39D FF:D38D: 8D 1E 06  STA $061E
C - - - - 0x03D3A0 FF:D390: 20 EA D4  JSR sub_D4EA
loc_D393:
C D - - - 0x03D3A3 FF:D393: A9 0D     LDA #$0D
C - - - - 0x03D3A5 FF:D395: AE 1E 06  LDX $061E
C - - - - 0x03D3A8 FF:D398: BC 01 06  LDY ram_номер_нападающего,X
C - - - - 0x03D3AB FF:D39B: F0 06     BEQ bra_D3A3
C - - - - 0x03D3AD FF:D39D: AE 21 06  LDX $0621
C - - - - 0x03D3B0 FF:D3A0: BD 52 D5  LDA tbl_D552,X
bra_D3A3:
C - - - - 0x03D3B3 FF:D3A3: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
loc_D3A6:
C D - - - 0x03D3B6 FF:D3A6: A9 01     LDA #$01
C - - - - 0x03D3B8 FF:D3A8: 20 0F CB  JSR sub_CB0F
C - - - - 0x03D3BB FF:D3AB: A9 80     LDA #con_btn_A
C - - - - 0x03D3BD FF:D3AD: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D3C0 FF:D3B0: D0 03     BNE bra_D3B5
C - - - - 0x03D3C2 FF:D3B2: 4C 38 D4  JMP loc_D438
bra_D3B5:
C - - - - 0x03D3C5 FF:D3B5: AE 1E 06  LDX $061E
C - - - - 0x03D3C8 FF:D3B8: EC 00 06  CPX ram_колво_нападающих
C - - - - 0x03D3CB FF:D3BB: D0 03     BNE bra_D3C0
C - - - - 0x03D3CD FF:D3BD: 4C 46 CC  JMP loc_CC46_очистить_нижнюю_половину_экрана
bra_D3C0:
C - - - - 0x03D3D0 FF:D3C0: BD 0B 06  LDA ram_действие_защитника,X
C - - - - 0x03D3D3 FF:D3C3: C9 FF     CMP #$FF
C - - - - 0x03D3D5 FF:D3C5: F0 71     BEQ bra_D438
C - - - - 0x03D3D7 FF:D3C7: 8D 3D 04  STA ram_действие_защиты
C - - - - 0x03D3DA FF:D3CA: AA        TAX
C - - - - 0x03D3DB FF:D3CB: AC 1E 06  LDY $061E
C - - - - 0x03D3DE FF:D3CE: B9 01 06  LDA ram_номер_нападающего,Y
C - - - - 0x03D3E1 FF:D3D1: 8D 42 04  STA ram_игрок_без_мяча
C - - - - 0x03D3E4 FF:D3D4: 48        PHA
C - - - - 0x03D3E7 FF:D3D7: A9 1C     LDA #$1C
C - - - - 0x03D3E9 FF:D3D9: 85 24     STA ram_для_5114
C - - - - 0x03D3EB FF:D3DB: A9 1D     LDA #$1D
C - - - - 0x03D3ED FF:D3DD: 85 25     STA ram_для_5115
C - - - - 0x03D3EF FF:D3DF: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D3F2 FF:D3E2: 68        PLA
C - - - - 0x03D3F3 FF:D3E3: 20 0C 80  JSR sub_0x03801C
C - - - - 0x03D3F6 FF:D3E6: AD 30 04  LDA $0430
C - - - - 0x03D3F9 FF:D3E9: F0 39     BEQ bra_D424
C - - - - 0x03D3FB FF:D3EB: 18        CLC
C - - - - 0x03D3FC FF:D3EC: 69 0B     ADC #$0B
C - - - - 0x03D3FE FF:D3EE: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D401 FF:D3F1: 20 7A D7  JSR sub_D77A
C - - - - 0x03D404 FF:D3F4: 0A        ASL
C - - - - 0x03D405 FF:D3F5: 08        PHP
C - - - - 0x03D406 FF:D3F6: B0 14     BCS bra_D40C
C - - - - 0x03D408 FF:D3F8: 4A        LSR
C - - - - 0x03D409 FF:D3F9: 48        PHA
C - - - - 0x03D40A FF:D3FA: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - 0x03D40D FF:D3FD: 20 46 D7  JSR sub_D746
C - - - - 0x03D410 FF:D400: 68        PLA
C - - - - 0x03D411 FF:D401: 90 09     BCC bra_D40C
C - - - - 0x03D413 FF:D403: AE 1E 06  LDX $061E
C - - - - 0x03D416 FF:D406: 9D 06 06  STA ram_подтип_действия_защитника,X
C - - - - 0x03D419 FF:D409: EE 1E 06  INC $061E
bra_D40C:
C - - - - 0x03D41C FF:D40C: 20 46 CC  JSR sub_CC46_очистить_нижнюю_половину_экрана
C - - - - 0x03D41F FF:D40F: 20 EA D4  JSR sub_D4EA
C - - - - 0x03D422 FF:D412: AD 1E 06  LDA $061E
C - - - - 0x03D425 FF:D415: CD 00 06  CMP ram_колво_нападающих
C - - - - 0x03D428 FF:D418: F0 05     BEQ bra_D41F
C - - - - 0x03D42A FF:D41A: A9 16     LDA #$16      ; defender_tackle_block_passcut
C - - - - 0x03D42C FF:D41C: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
bra_D41F:
C - - - - 0x03D42F FF:D41F: 28        PLP
C - - - - 0x03D430 FF:D420: B0 16     BCS bra_D438
C - - - - 0x03D432 FF:D422: 90 0C     BCC bra_D430
bra_D424:
C - - - - 0x03D434 FF:D424: AE 1E 06  LDX $061E
C - - - - 0x03D437 FF:D427: 9D 06 06  STA ram_подтип_действия_защитника,X
C - - - - 0x03D43A FF:D42A: 20 E4 D4  JSR sub_D4E4
C - - - - 0x03D43D FF:D42D: EE 1E 06  INC $061E
bra_D430:
C - - - - 0x03D440 FF:D430: AD 1E 06  LDA $061E
C - - - - 0x03D443 FF:D433: CD 00 06  CMP ram_колво_нападающих
C - - - - 0x03D446 FF:D436: D0 17     BNE bra_D44F
bra_D438:
loc_D438:
C D - - - 0x03D448 FF:D438: A9 40     LDA #con_btn_B
C - - - - 0x03D44A FF:D43A: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D44D FF:D43D: F0 20     BEQ bra_D45F
C - - - - 0x03D44F FF:D43F: AE 1E 06  LDX $061E
C - - - - 0x03D452 FF:D442: F0 1B     BEQ bra_D45F
C - - - - 0x03D454 FF:D444: EC 00 06  CPX ram_колво_нападающих
C - - - - 0x03D457 FF:D447: F0 03     BEQ bra_D44C
C - - - - 0x03D459 FF:D449: 20 E4 D4  JSR sub_D4E4
bra_D44C:
C - - - - 0x03D45C FF:D44C: CE 1E 06  DEC $061E
bra_D44F:
C - - - - 0x03D45F FF:D44F: AD 1F 06  LDA $061F
C - - - - 0x03D462 FF:D452: 09 40     ORA #$40
C - - - - 0x03D464 FF:D454: 8D 1F 06  STA $061F
C - - - - 0x03D467 FF:D457: A9 00     LDA #$00
C - - - - 0x03D469 FF:D459: 8D 20 06  STA $0620
C - - - - 0x03D46C FF:D45C: 4C 93 D3  JMP loc_D393
bra_D45F:
C - - - - 0x03D46F FF:D45F: A9 0F     LDA #con_btns_Dpad
C - - - - 0x03D471 FF:D461: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D474 FF:D464: F0 39     BEQ bra_D49F
C - - - - 0x03D476 FF:D466: A2 00     LDX #$00
bra_D468:
C - - - - 0x03D478 FF:D468: 4A        LSR
C - - - - 0x03D479 FF:D469: B0 03     BCS bra_D46E
C - - - - 0x03D47B FF:D46B: E8        INX
C - - - - 0x03D47C FF:D46C: D0 FA     BNE bra_D468
bra_D46E:
C - - - - 0x03D47E FF:D46E: 86 3A     STX ram_003A
C - - - - 0x03D480 FF:D470: AD 21 06  LDA $0621
C - - - - 0x03D483 FF:D473: 0A        ASL
C - - - - 0x03D484 FF:D474: 0A        ASL
C - - - - 0x03D485 FF:D475: 65 3A     ADC ram_003A
C - - - - 0x03D487 FF:D477: AA        TAX
C - - - - 0x03D488 FF:D478: BD 55 D5  LDA tbl_D555_действие_против_соперника,X
C - - - - 0x03D48B FF:D47B: AC 1E 06  LDY $061E
C - - - - 0x03D48E FF:D47E: BE 01 06  LDX ram_номер_нападающего,Y
C - - - - 0x03D491 FF:D481: D0 05     BNE bra_D488
C - - - - 0x03D493 FF:D483: A6 3A     LDX ram_003A
C - - - - 0x03D495 FF:D485: BD 61 D5  LDA tbl_D561_действие_кипера_если_соперник_принимает_мяч_в_штрафной,X
bra_D488:
C - - - - 0x03D498 FF:D488: C9 FF     CMP #$FF
C - - - - 0x03D49A FF:D48A: F0 13     BEQ bra_D49F
C - - - - 0x03D49C FF:D48C: AE 1E 06  LDX $061E
C - - - - 0x03D49F FF:D48F: DD 0B 06  CMP ram_действие_защитника,X
C - - - - 0x03D4A2 FF:D492: F0 0B     BEQ bra_D49F
C - - - - 0x03D4A4 FF:D494: 9D 0B 06  STA ram_действие_защитника,X
C - - - - 0x03D4A7 FF:D497: A9 00     LDA #$00
C - - - - 0x03D4A9 FF:D499: 9D 06 06  STA ram_подтип_действия_защитника,X
C - - - - 0x03D4AC FF:D49C: 8D 1F 06  STA $061F
bra_D49F:
C - - - - 0x03D4AF FF:D49F: AD 1E 06  LDA $061E
C - - - - 0x03D4B2 FF:D4A2: CD 00 06  CMP ram_колво_нападающих
C - - - - 0x03D4B5 FF:D4A5: D0 03     BNE bra_D4AA
C - - - - 0x03D4B7 FF:D4A7: 4C A6 D3  JMP loc_D3A6
bra_D4AA:
C - - - - 0x03D4BA FF:D4AA: 2C 1F 06  BIT $061F
C - - - - 0x03D4BD FF:D4AD: 30 0A     BMI bra_D4B9
C - - - - 0x03D4BF FF:D4AF: A9 80     LDA #$80
C - - - - 0x03D4C1 FF:D4B1: 8D 1F 06  STA $061F
C - - - - 0x03D4C4 FF:D4B4: A9 00     LDA #$00
C - - - - 0x03D4C6 FF:D4B6: 8D 20 06  STA $0620
bra_D4B9:
C - - - - 0x03D4C9 FF:D4B9: AD 20 06  LDA $0620
C - - - - 0x03D4CC FF:D4BC: F0 06     BEQ bra_D4C4
C - - - - 0x03D4CE FF:D4BE: CE 20 06  DEC $0620
C - - - - 0x03D4D1 FF:D4C1: 4C A6 D3  JMP loc_D3A6
bra_D4C4:
C - - - - 0x03D4D4 FF:D4C4: A9 0D     LDA #$0D
C - - - - 0x03D4D6 FF:D4C6: 8D 20 06  STA $0620
C - - - - 0x03D4D9 FF:D4C9: AD 1F 06  LDA $061F
C - - - - 0x03D4DC FF:D4CC: 49 40     EOR #$40
C - - - - 0x03D4DE FF:D4CE: 8D 1F 06  STA $061F
C - - - - 0x03D4E1 FF:D4D1: AE 1E 06  LDX $061E
C - - - - 0x03D4E4 FF:D4D4: 20 04 D5  JSR sub_D504
C - - - - 0x03D4E7 FF:D4D7: 2C 1F 06  BIT $061F
C - - - - 0x03D4EA FF:D4DA: 70 02     BVS bra_D4DE
; +80 значит надпись сейчас должна быть скрыта
C - - - - 0x03D4EC FF:D4DC: 09 80     ORA #$80
bra_D4DE:
C - - - - 0x03D4EE FF:D4DE: 20 3D E9  JSR sub_E93D_отображение_выбранного_действия
C - - - - 0x03D4F1 FF:D4E1: 4C A6 D3  JMP loc_D3A6

sub_D4E4:
C - - - - 0x03D4F4 FF:D4E4: 20 04 D5  JSR sub_D504
C - - - - 0x03D4F7 FF:D4E7: 4C 3D E9  JMP loc_E93D_отображение_выбранного_действия

sub_D4EA:
C - - - - 0x03D4FA FF:D4EA: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03D4FD FF:D4ED: 18        CLC
C - - - - 0x03D4FE FF:D4EE: 69 11     ADC #$11      ; ?_players_action_window
C - - - - 0x03D500 FF:D4F0: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D503 FF:D4F3: A9 00     LDA #$00
bra_D4F5:
C - - - - 0x03D505 FF:D4F5: 48        PHA
C - - - - 0x03D506 FF:D4F6: AA        TAX
C - - - - 0x03D507 FF:D4F7: 20 E4 D4  JSR sub_D4E4
C - - - - 0x03D50A FF:D4FA: 68        PLA
C - - - - 0x03D50B FF:D4FB: 18        CLC
C - - - - 0x03D50C FF:D4FC: 69 01     ADC #$01
C - - - - 0x03D50E FF:D4FE: CD 00 06  CMP ram_колво_нападающих
C - - - - 0x03D511 FF:D501: D0 F2     BNE bra_D4F5
C - - - - 0x03D513 FF:D503: 60        RTS

sub_D504:
C - - - - 0x03D514 FF:D504: BD 0B 06  LDA ram_действие_защитника,X
C - - - - 0x03D517 FF:D507: C9 FF     CMP #$FF
C - - - - 0x03D519 FF:D509: D0 03     BNE bra_D50E
C - - - - 0x03D51B FF:D50B: A9 1D     LDA #$1D
C - - - - 0x03D51D FF:D50D: 60        RTS
bra_D50E:
C - - - - 0x03D51E FF:D50E: BC 01 06  LDY ram_номер_нападающего,X
C - - - - 0x03D521 FF:D511: D0 05     BNE bra_D518
C - - - - 0x03D523 FF:D513: A8        TAY
C - - - - 0x03D524 FF:D514: B9 48 D5  LDA tbl_D548,Y
C - - - - 0x03D527 FF:D517: 60        RTS
bra_D518:
C - - - - 0x03D528 FF:D518: 0A        ASL
C - - - - 0x03D529 FF:D519: A8        TAY
C - - - - 0x03D52A FF:D51A: B9 2B D5  LDA tbl_D52B,Y
C - - - - 0x03D52D FF:D51D: 85 3A     STA ram_003A
C - - - - 0x03D52F FF:D51F: B9 2C D5  LDA tbl_D52B + 1,Y
C - - - - 0x03D532 FF:D522: 85 3B     STA ram_003B
C - - - - 0x03D534 FF:D524: BD 06 06  LDA ram_подтип_действия_защитника,X
C - - - - 0x03D537 FF:D527: A8        TAY
C - - - - 0x03D538 FF:D528: B1 3A     LDA (ram_003A),Y
C - - - - 0x03D53A FF:D52A: 60        RTS



tbl_D52B:
- D - - - 0x03D53B FF:D52B: 39 D5     .word off_D539_00
- D - - - 0x03D53D FF:D52D: 3D D5     .word off_D53D_01
- D - - - 0x03D53F FF:D52F: 42 D5     .word off_D542_02
- D - - - 0x03D541 FF:D531: 44 D5     .word off_D544_03
- D - - - 0x03D543 FF:D533: 45 D5     .word off_D545_04
- D - - - 0x03D545 FF:D535: 46 D5     .word off_D546_05
- D - - - 0x03D547 FF:D537: 47 D5     .word off_D547_06

off_D539_00:
- D - I - 0x03D549 FF:D539: 0C        .byte $0C    ; <し>
- D - I - 0x03D54A FF:D53A: 0E        .byte $0E    ; <せ>
- - - - - 0x03D54B FF:D53B: 0D        .byte $0D    ; <す>
- D - I - 0x03D54C FF:D53C: 0F        .byte $0F    ; <そ>
off_D53D_01:
- D - I - 0x03D54D FF:D53D: 07        .byte $07    ; <き>
- D - I - 0x03D54E FF:D53E: 08        .byte $08    ; <く>
- D - I - 0x03D54F FF:D53F: 09        .byte $09    ; <け>
- D - I - 0x03D550 FF:D540: 0A        .byte $0A    ; <こ>
- D - I - 0x03D551 FF:D541: 0B        .byte $0B    ; <さ>
off_D542_02:
- D - I - 0x03D552 FF:D542: 10        .byte $10    ; <た>
- D - I - 0x03D553 FF:D543: 11        .byte $11    ; <ち>
off_D544_03:
- D - I - 0x03D554 FF:D544: 15        .byte $15    ; <な>
off_D545_04:
- D - I - 0x03D555 FF:D545: 14        .byte $14    ; <と>
off_D546_05:
- D - I - 0x03D556 FF:D546: 13        .byte $13    ; <て>
off_D547_06:
- D - I - 0x03D557 FF:D547: 12        .byte $12    ; <つ>
; bzk мозможно тут продолжение, хз


tbl_D548:
- D - - - 0x03D558 FF:D548: 17        .byte $17    ; <ぬ>
- D - - - 0x03D559 FF:D549: 16        .byte $16    ; <に>
- D - - - 0x03D55A FF:D54A: 18        .byte $18    ; <ね>
- D - - - 0x03D55B FF:D54B: 19        .byte $19    ; <の>
- D - - - 0x03D55C FF:D54C: 1A        .byte $1A    ; <は>
- D - - - 0x03D55D FF:D54D: 1C        .byte $1C    ; <ふ>
- D - - - 0x03D55E FF:D54E: 1B        .byte $1B    ; <ひ>
- D - - - 0x03D55F FF:D54F: 1E        .byte $1E    ; <ほ>
- D - - - 0x03D560 FF:D550: 1F        .byte $1F    ; <ま>
- - - - - 0x03D561 FF:D551: 20        .byte $20    ; <み>

tbl_D552:
    .byte $16       ; defender_tackle_block_passcut
    .byte $18       ; player_clearing_passcut
    .byte $17       ; player_interfere_passcut



tbl_D555_действие_против_соперника:
; вправо, влево, вниз, вверх
; при нападении на игрока на земле
- D - - - 0x03D565 FF:D555: 00        .byte $00 ; блок
- D - - - 0x03D566 FF:D556: 02        .byte $02 ; passcut
- D - - - 0x03D567 FF:D557: 06        .byte $06 ; wait
- D - - - 0x03D568 FF:D558: 01        .byte $01 ; подкат
; соперник в нашей штрафной и ты на него нападаешь
- D - - - 0x03D569 FF:D559: 03        .byte $03 ; compete
- D - - - 0x03D56A FF:D55A: 02        .byte $02 ; passcut
- D - - - 0x03D56B FF:D55B: 06        .byte $06 ; wait
- D - - - 0x03D56C FF:D55C: 05        .byte $05 ; mark
; соперник в своей штрафной и ты на него нападаешь
- D - - - 0x03D56D FF:D55D: 04        .byte $04 ; clear
- D - - - 0x03D56E FF:D55E: 02        .byte $02 ; passcut
- D - - - 0x03D56F FF:D55F: 06        .byte $06 ; wait
- D - - - 0x03D570 FF:D560: 05        .byte $05 ; mark



tbl_D561_действие_кипера_если_соперник_принимает_мяч_в_штрафной:
; вправо, влево, вниз, вверх
- D - - - 0x03D571 FF:D561: 04        .byte $04 ; wait
- D - - - 0x03D572 FF:D562: 04        .byte $04 ; wait
- D - - - 0x03D573 FF:D563: FF        .byte $FF ; 
- D - - - 0x03D574 FF:D564: 03        .byte $03 ; jump

.export sub_0x03D575
sub_0x03D575:
C D - - - 0x03D575 FF:D565: 20 73 D5  JSR sub_D573
C - - - - 0x03D578 FF:D568: A9 1A     LDA #$1A
C - - - - 0x03D57A FF:D56A: 85 24     STA ram_для_5114
C - - - - 0x03D57C FF:D56C: A9 1B     LDA #$1B
C - - - - 0x03D57E FF:D56E: 85 25     STA ram_для_5115
C - - - - 0x03D580 FF:D570: 4C 2D CE  JMP loc_CE2D_банксвич_PRG

sub_D573:
C - - - - 0x03D583 FF:D573: A9 00     LDA #$00
C - - - - 0x03D585 FF:D575: 8D 2D 06  STA $062D
C - - - - 0x03D588 FF:D578: 8D 28 06  STA ram_индекс_буфера
C - - - - 0x03D58B FF:D57B: 20 77 CD  JSR sub_CD77_адрес_игрока_адрес_игрока_команды_без_мяча
C - - - - 0x03D58E FF:D57E: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03D590 FF:D580: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D592 FF:D582: F0 08     BEQ bra_D58C
C - - - - 0x03D594 FF:D584: A9 40     LDA #$40
C - - - - 0x03D596 FF:D586: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D599 FF:D589: 4C B2 D5  JMP loc_D5B2
bra_D58C:
C - - - - 0x03D59C FF:D58C: AD 21 06  LDA $0621
C - - - - 0x03D59F FF:D58F: C9 03     CMP #$03
C - - - - 0x03D5A1 FF:D591: F0 1F     BEQ bra_D5B2
C - - - - 0x03D5A3 FF:D593: C9 01     CMP #$01
C - - - - 0x03D5A5 FF:D595: D0 0E     BNE bra_D5A5
C - - - - 0x03D5A7 FF:D597: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03D5AA FF:D59A: F0 09     BEQ bra_D5A5
C - - - - 0x03D5AC FF:D59C: AD 01 06  LDA ram_номер_нападающего
C - - - - 0x03D5AF FF:D59F: F0 11     BEQ bra_D5B2
C - - - - 0x03D5B1 FF:D5A1: C9 0B     CMP #$0B
C - - - - 0x03D5B3 FF:D5A3: F0 0D     BEQ bra_D5B2
bra_D5A5:
C - - - - 0x03D5B5 FF:D5A5: A0 07     LDY #con_величина_дисбаланса
C - - - - 0x03D5B7 FF:D5A7: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D5B9 FF:D5A9: C9 18     CMP #$18
C - - - - 0x03D5BB FF:D5AB: 90 05     BCC bra_D5B2
C - - - - 0x03D5BD FF:D5AD: A9 41     LDA #$41
C - - - - 0x03D5BF FF:D5AF: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
bra_D5B2:
loc_D5B2:
C D - - - 0x03D5C2 FF:D5B2: 20 A2 EF  JSR sub_EFA2
C - - - - 0x03D5C5 FF:D5B5: A9 00     LDA #$00
C - - - - 0x03D5C7 FF:D5B7: 85 11     STA ram_0011
C - - - - 0x03D5C9 FF:D5B9: 85 12     STA ram_0012
C - - - - 0x03D5CB FF:D5BB: A9 02     LDA #$02
C - - - - 0x03D5CD FF:D5BD: 20 0F CB  JSR sub_CB0F
loc_D5C3:
C D - - - 0x03D5D3 FF:D5C3: 20 46 CC  JSR sub_CC46_очистить_нижнюю_половину_экрана
C - - - - 0x03D5D6 FF:D5C6: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03D5D9 FF:D5C9: F0 03     BEQ bra_D5CE
C - - - - 0x03D5DB FF:D5CB: 4C 6E D3  JMP loc_D36E
bra_D5CE:
C - - - - 0x03D5F0 FF:D5E0: A9 00     LDA #$00
C - - - - 0x03D5F2 FF:D5E2: 8D 1E 06  STA $061E
C - - - - 0x03D5DE FF:D5CE: AE 21 06  LDX $0621
C - - - - 0x03D5E1 FF:D5D1: BD 06 D7  LDA tbl_D706_окно_action,X
C - - - - 0x03D5E4 FF:D5D4: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
loc_D5D7:
C - - - - 0x03D5E7 FF:D5D7: AE 21 06  LDX $0621
C - - - - 0x03D5EA FF:D5DA: BD 00 D7  LDA tbl_D700_статы,X
C - - - - 0x03D5ED FF:D5DD: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
loc_D5E5:
C D - - - 0x03D5F5 FF:D5E5: A9 01     LDA #$01
C - - - - 0x03D5F7 FF:D5E7: 20 0F CB  JSR sub_CB0F
                                      LDA $0621
                                      CMP #$05      ; не показывать список в пенальти
                                      BEQ @читать_другие_кнопки
                                      LDA ram_удержанные
                                      AND #con_btn_Select
                                      BEQ @читать_другие_кнопки
                                      LDX ram_колво_нападающих
                                      CPX #$05
                                      BNE @меньше_4х_защитников
                                      DEX      ; максимум отображать 4 защитника
@меньше_4х_защитников:
                                      DEX
                                      TXA
                                      CLC
                                      ADC #$44      ; show_?_defenders
                                      JSR sub_EF7F_отрисовка_меню_во_время_матча
@продолжать_отображение_соперников:
                                      LDA #$01
                                      JSR sub_CB0F
                                      LDA ram_удержанные
                                      AND #con_btn_Select
                                      BNE @продолжать_отображение_соперников
                                      JMP loc_D5D7
@читать_другие_кнопки:
C - - - - 0x03D5FA FF:D5EA: A9 0F     LDA #con_btns_Dpad
C - - - - 0x03D5FC FF:D5EC: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D5FF FF:D5EF: F0 35     BEQ bra_D626
C - - - - 0x03D601 FF:D5F1: A2 00     LDX #$00
bra_D5F3:
C - - - - 0x03D603 FF:D5F3: 4A        LSR
C - - - - 0x03D604 FF:D5F4: B0 03     BCS bra_D5F9
C - - - - 0x03D606 FF:D5F6: E8        INX
C - - - - 0x03D607 FF:D5F7: D0 FA     BNE bra_D5F3
bra_D5F9:
C - - - - 0x03D609 FF:D5F9: 86 3A     STX ram_003A
C - - - - 0x03D60B FF:D5FB: AD 21 06  LDA $0621
C - - - - 0x03D60E FF:D5FE: 0A        ASL
C - - - - 0x03D60F FF:D5FF: 0A        ASL
C - - - - 0x03D610 FF:D600: 65 3A     ADC ram_003A
C - - - - 0x03D612 FF:D602: AA        TAX
C - - - - 0x03D613 FF:D603: BD E8 D6  LDA tbl_D6E8_действие_при_владении_мячом,X
C - - - - 0x03D616 FF:D606: C9 FF     CMP #$FF
C - - - - 0x03D618 FF:D608: F0 1C     BEQ bra_D626
C - - - - 0x03D61A FF:D60A: 8D 3B 04  STA ram_действие_атаки
C - - - - 0x03D61D FF:D60D: A6 3A     LDX ram_003A
C - - - - 0x03D61F FF:D60F: AD 1E 06  LDA $061E
C - - - - 0x03D622 FF:D612: 8E 1E 06  STX $061E
C - - - - 0x03D625 FF:D615: 48        PHA
C - - - - 0x03D626 FF:D616: 29 03     AND #$03
C - - - - 0x03D628 FF:D618: CD 1E 06  CMP $061E
C - - - - 0x03D62B FF:D61B: F0 03     BEQ bra_D620
C - - - - 0x03D62D FF:D61D: 68        PLA
C - - - - 0x03D62E FF:D61E: 8A        TXA
C - - - - 0x03D62F FF:D61F: 48        PHA
bra_D620:
C - - - - 0x03D630 FF:D620: 68        PLA
C - - - - 0x03D631 FF:D621: 09 80     ORA #$80
C - - - - 0x03D633 FF:D623: 8D 1E 06  STA $061E
bra_D626:
C - - - - 0x03D636 FF:D626: A9 80     LDA #con_btn_A
C - - - - 0x03D638 FF:D628: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D63B FF:D62B: F0 0B     BEQ bra_D638
C - - - - 0x03D63D FF:D62D: 2C 1E 06  BIT $061E
C - - - - 0x03D640 FF:D630: 10 06     BPL bra_D638
C - - - - 0x03D642 FF:D632: 20 7C D6  JSR sub_D67C
C - - - - 0x03D645 FF:D635: 4C C3 D5  JMP loc_D5C3
bra_D638:
C - - - - 0x03D648 FF:D638: 2C 1E 06  BIT $061E
C - - - - 0x03D64B FF:D63B: 10 A8     BMI bra_D63D
                                      JMP loc_D5E5
bra_D63D:
C - - - - 0x03D64D FF:D63D: A9 20     LDA #$20
C - - - - 0x03D64F FF:D63F: 2C 1E 06  BIT $061E
C - - - - 0x03D652 FF:D642: D0 0B     BNE bra_D64F
C - - - - 0x03D654 FF:D644: 0D 1E 06  ORA $061E
C - - - - 0x03D657 FF:D647: 8D 1E 06  STA $061E
C - - - - 0x03D65A FF:D64A: A9 00     LDA #$00
C - - - - 0x03D65C FF:D64C: 8D 1F 06  STA $061F
bra_D64F:
C - - - - 0x03D65F FF:D64F: AE 1F 06  LDX $061F
C - - - - 0x03D662 FF:D652: F0 06     BEQ bra_D65A
C - - - - 0x03D664 FF:D654: CE 1F 06  DEC $061F
C - - - - 0x03D667 FF:D657: 4C E5 D5  JMP loc_D5E5
bra_D65A:
C - - - - 0x03D66A FF:D65A: A9 0D     LDA #$0D
C - - - - 0x03D66C FF:D65C: 8D 1F 06  STA $061F
C - - - - 0x03D66F FF:D65F: AD 1E 06  LDA $061E
C - - - - 0x03D672 FF:D662: 49 40     EOR #$40
C - - - - 0x03D674 FF:D664: 8D 1E 06  STA $061E
C - - - - 0x03D677 FF:D667: AC 3B 04  LDY ram_действие_атаки
C - - - - 0x03D67A FF:D66A: B9 DE D6  LDA tbl_D6DE,Y
C - - - - 0x03D67D FF:D66D: 2C 1E 06  BIT $061E
C - - - - 0x03D680 FF:D670: 70 02     BVS bra_D674
; +80 значит надпись сейчас должна быть скрыта
C - - - - 0x03D682 FF:D672: 09 80     ORA #$80
bra_D674:
C - - - - 0x03D684 FF:D674: A2 00     LDX #$00
C - - - - 0x03D686 FF:D676: 20 3D E9  JSR sub_E93D_отображение_выбранного_действия
C - - - - 0x03D689 FF:D679: 4C E5 D5  JMP loc_D5E5

sub_D67C:
C - - - - 0x03D68C FF:D67C: AE 3B 04  LDX ram_действие_атаки
C - - - - 0x03D68F FF:D67F: BD DE D6  LDA tbl_D6DE,X
C - - - - 0x03D692 FF:D682: A2 00     LDX #$00
C - - - - 0x03D694 FF:D684: 8E 3C 04  STX ram_подтип_действия_атаки
C - - - - 0x03D697 FF:D687: 20 3D E9  JSR sub_E93D_отображение_выбранного_действия
C - - - - 0x03D69A FF:D68A: AE 3B 04  LDX ram_действие_атаки
C - - - - 0x03D69D FF:D68D: E0 02     CPX #$02
C - - - - 0x03D69F FF:D68F: D0 05     BNE bra_D696
C - - - - 0x03D6A1 FF:D691: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03D6A4 FF:D694: F0 2E     BEQ bra_D6C4
bra_D696:
C - - - - 0x03D6A6 FF:D696: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03D6A9 FF:D699: 48        PHA
C - - - - 0x03D6AC FF:D69C: A9 1C     LDA #$1C
C - - - - 0x03D6AE FF:D69E: 85 24     STA ram_для_5114
C - - - - 0x03D6B0 FF:D6A0: A9 1D     LDA #$1D
C - - - - 0x03D6B2 FF:D6A2: 85 25     STA ram_для_5115
C - - - - 0x03D6B4 FF:D6A4: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D6B7 FF:D6A7: 68        PLA
C - - - - 0x03D6B8 FF:D6A8: 20 09 80  JSR sub_0x038019
C - - - - 0x03D6BB FF:D6AB: AD 30 04  LDA $0430
C - - - - 0x03D6BE FF:D6AE: F0 0E     BEQ bra_D6BE
C - - - - 0x03D6C0 FF:D6B0: 18        CLC
C - - - - 0x03D6C1 FF:D6B1: 69 08     ADC #$08
C - - - - 0x03D6C3 FF:D6B3: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D6C6 FF:D6B6: 20 7A D7  JSR sub_D77A
C - - - - 0x03D6C9 FF:D6B9: 0A        ASL
C - - - - 0x03D6CA FF:D6BA: 90 01     BCC bra_D6BD
C - - - - 0x03D6CC FF:D6BC: 60        RTS
bra_D6BD:
C - - - - 0x03D6CD FF:D6BD: 4A        LSR
bra_D6BE:
C - - - - 0x03D6CE FF:D6BE: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - 0x03D6D1 FF:D6C1: 20 17 D7  JSR sub_D717
bra_D6C4:
C - - - - 0x03D6D4 FF:D6C4: AD 3B 04  LDA ram_действие_атаки
C - - - - 0x03D6D7 FF:D6C7: 20 99 CB  JSR sub_CB99_байты_после_JSR_для_непрямого_прыжка
- D - I - 0x03D6DA FF:D6CA: 92 D7     .word ofs_D792_F0
- D - I - 0x03D6DC FF:D6CC: E8 D7     .word ofs_D7E8_F1
- D - I - 0x03D6DE FF:D6CE: 0C D7     .word ofs_D70C_F2_F4_F6_F7_F8_F9
- D - I - 0x03D6E0 FF:D6D0: 79 D9     .word ofs_D979_F3
- D - I - 0x03D6E2 FF:D6D2: 0C D7     .word ofs_D70C_F2_F4_F6_F7_F8_F9
- D - I - 0x03D6E4 FF:D6D4: 65 DA     .word ofs_DA65_F5
- D - I - 0x03D6E6 FF:D6D6: 0C D7     .word ofs_D70C_F2_F4_F6_F7_F8_F9
- D - I - 0x03D6E8 FF:D6D8: 0C D7     .word ofs_D70C_F2_F4_F6_F7_F8_F9
- D - I - 0x03D6EA FF:D6DA: 0C D7     .word ofs_D70C_F2_F4_F6_F7_F8_F9
- D - I - 0x03D6EC FF:D6DC: 0C D7     .word ofs_D70C_F2_F4_F6_F7_F8_F9

tbl_D6DE:
- D - - - 0x03D6EE FF:D6DE: 02        .byte $02    ; <い>
- D - - - 0x03D6EF FF:D6DF: 01        .byte $01    ; <あ>
- D - - - 0x03D6F0 FF:D6E0: 00        .byte $00
- D - - - 0x03D6F1 FF:D6E1: 03        .byte $03    ; <う>
- D - - - 0x03D6F2 FF:D6E2: 04        .byte $04    ; <え>
- D - - - 0x03D6F3 FF:D6E3: 05        .byte $05    ; <お>
- D - - - 0x03D6F4 FF:D6E4: 06        .byte $06    ; <か>
- D - - - 0x03D6F5 FF:D6E5: 1E        .byte $1E    ; <ほ>
- D - - - 0x03D6F6 FF:D6E6: 1F        .byte $1F    ; <ま>
- D - - - 0x03D6F7 FF:D6E7: 20        .byte $20    ; <み>



tbl_D6E8_действие_при_владении_мячом:
; вправо, влево, вниз, вверх
; на земле
- D - - - 0x03D6F8 FF:D6E8: 00        .byte $00 ; удар
- D - - - 0x03D6F9 FF:D6E9: 01        .byte $01 ; пас
- D - - - 0x03D6FA FF:D6EA: 03        .byte $03 ; 1-2
- D - - - 0x03D6FB FF:D6EB: 02        .byte $02 ; дриблинг
; мяч в штрафной соперника
- D - - - 0x03D6FC FF:D6EC: 00        .byte $00 ; удар
- D - - - 0x03D6FD FF:D6ED: 01        .byte $01 ; пас
- D - - - 0x03D6FE FF:D6EE: 05        .byte $05 ; наебка
- D - - - 0x03D6FF FF:D6EF: 04        .byte $04 ; трап
; мяч в своей штрафной
- D - - - 0x03D700 FF:D6F0: 06        .byte $06 ; clear
- D - - - 0x03D701 FF:D6F1: 01        .byte $01 ; пас
- D - - - 0x03D702 FF:D6F2: FF        .byte $FF ; 
- D - - - 0x03D703 FF:D6F3: 04        .byte $04 ; трап
; нападение на кипера соперника
- D - - - 0x03D704 FF:D6F4: 00        .byte $00 ; удар
- - - - - 0x03D705 FF:D6F5: 01        .byte $01 ; пас
- - - - - 0x03D706 FF:D6F6: FF        .byte $FF ; 
- D - - - 0x03D707 FF:D6F7: 02        .byte $02 ; дриблинг
; ???
- D - - - 0x03D708 FF:D6F8: 00        .byte $00 ; удар
- D - - - 0x03D709 FF:D6F9: 01        .byte $01 ; пас
- - - - - 0x03D70A FF:D6FA: FF        .byte $FF ; 
- - - - - 0x03D70B FF:D6FB: FF        .byte $FF ; 
; ты пробиваешь пенальти, выбор стороны удара
- D - - - 0x03D70C FF:D6FC: 09        .byte $09 ; вправо
- D - - - 0x03D70D FF:D6FD: 07        .byte $07 ; влево
- D - - - 0x03D70E FF:D6FE: FF        .byte $FF ; 
- D - - - 0x03D70F FF:D6FF: 08        .byte $08 ; прямо



tbl_D700_статы:
    .byte $03       ; player_dribble_pass_shoot
    .byte $04       ; player_trap_pass_shot
    .byte $05       ; player_trap_pass_clearing
    .byte $03       ; player_dribble_pass_shoot
    .byte $03       ; player_dribble_pass_shoot
    .byte $03       ; player_dribble_pass_shoot

tbl_D706_окно_action:
    .byte $02       ; player_action_window
    .byte $02       ; player_action_window
    .byte $02       ; player_action_window
    .byte $02       ; player_action_window
    .byte $02       ; player_action_window
    .byte $2C       ; pk_aim

loc_D70C:
ofs_D70C_F2_F4_F6_F7_F8_F9:
C D J - - 0x03D71C FF:D70C: 20 46 CC  JSR sub_CC46_очистить_нижнюю_половину_экрана
C - - - - 0x03D71F FF:D70F: A9 00     LDA #$00
C - - - - 0x03D721 FF:D711: 8D 2D 06  STA $062D
C - - - - 0x03D724 FF:D714: 68        PLA
C - - - - 0x03D725 FF:D715: 68        PLA
C - - - - 0x03D726 FF:D716: 60        RTS

sub_D717:
C - - - - 0x03D727 FF:D717: 48        PHA
C - - - - 0x03D72A FF:D71A: A9 1C     LDA #$1C
C - - - - 0x03D72C FF:D71C: 85 24     STA ram_для_5114
C - - - - 0x03D72E FF:D71E: A9 1D     LDA #$1D
C - - - - 0x03D730 FF:D720: 85 25     STA ram_для_5115
C - - - - 0x03D732 FF:D722: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D735 FF:D725: 68        PLA
C - - - - 0x03D736 FF:D726: 20 12 80  JSR sub_0x038022
C - - - - 0x03D739 FF:D729: 20 6B D7  JSR sub_D76B
C - - - - 0x03D73C FF:D72C: 10 17     BPL bra_D745_выход
C - - - - 0x03D73E FF:D72E: AD 3B 04  LDA ram_действие_атаки
C - - - - 0x03D743 FF:D733: F0 09     BEQ bra_D73E
C - - - - 0x03D745 FF:D735: C9 03     CMP #$03
C - - - - 0x03D747 FF:D737: F0 05     BEQ bra_D73E
C - - - - 0x03D749 FF:D739: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - 0x03D74C FF:D73C: F0 07     BEQ bra_D745_выход
bra_D73E:
C - - - - 0x03D74E FF:D73E: A9 3D     LDA #$3D
C - - - - 0x03D750 FF:D740: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D753 FF:D743: 68        PLA
C - - - - 0x03D754 FF:D744: 68        PLA
bra_D745_выход:
C - - - - 0x03D755 FF:D745: 60        RTS

sub_D746:
C - - - - 0x03D756 FF:D746: 48        PHA
C - - - - 0x03D759 FF:D749: A9 1C     LDA #$1C
C - - - - 0x03D75B FF:D74B: 85 24     STA ram_для_5114
C - - - - 0x03D75D FF:D74D: A9 1D     LDA #$1D
C - - - - 0x03D75F FF:D74F: 85 25     STA ram_для_5115
C - - - - 0x03D761 FF:D751: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D764 FF:D754: 68        PLA
C - - - - 0x03D765 FF:D755: 20 15 80  JSR sub_0x038025
C - - - - 0x03D768 FF:D758: 20 6B D7  JSR sub_D76B
C - - - - 0x03D76B FF:D75B: 10 0C     BPL bra_D769
C - - - - 0x03D76D FF:D75D: AD 3E 04  LDA ram_подтип_действия_защиты
C - - - - 0x03D770 FF:D760: F0 07     BEQ bra_D769
C - - - - 0x03D772 FF:D762: A9 3D     LDA #$3D
C - - - - 0x03D774 FF:D764: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D777 FF:D767: 18        CLC
C - - - - 0x03D778 FF:D768: 60        RTS
bra_D769:
C - - - - 0x03D779 FF:D769: 38        SEC
C - - - - 0x03D77A FF:D76A: 60        RTS

sub_D76B:
C - - - - 0x03D77B FF:D76B: 38        SEC
C - - - - 0x03D77C FF:D76C: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03D77E FF:D76E: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D780 FF:D770: ED 3F 04  SBC ram_затрата_энергии_lo
C - - - - 0x03D783 FF:D773: C8        INY
C - - - - 0x03D784 FF:D774: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D786 FF:D776: ED 40 04  SBC ram_затрата_энергии_hi
C - - - - 0x03D789 FF:D779: 60        RTS

sub_D77A:
; обнуление опции супер приемов, ожидание выбора или отмена выбора
C - - - - 0x03D78A FF:D77A: A9 00     LDA #$00
C - - - - 0x03D78C FF:D77C: 8D 22 06  STA ram_номер_опции
C - - - - 0x03D78F FF:D77F: AD 30 04  LDA $0430
C - - - - 0x03D792 FF:D782: 20 8F CF  JSR sub_CF8F_курсор_меню_после_гола
C - - - - 0x03D795 FF:D785: A2 80     LDX #$80
C - - - - 0x03D797 FF:D787: 90 07     BCC bra_D790
C - - - - 0x03D799 FF:D789: AA        TAX
C - - - - 0x03D79A FF:D78A: F0 04     BEQ bra_D790
C - - - - 0x03D79C FF:D78C: BD 30 04  LDA $0430,X
C - - - - 0x03D79F FF:D78F: AA        TAX
bra_D790:
C - - - - 0x03D7A0 FF:D790: 8A        TXA
C - - - - 0x03D7A1 FF:D791: 60        RTS

ofs_D792_F0:
C - J - - 0x03D7A2 FF:D792: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - 0x03D7A5 FF:D795: C9 03     CMP #$03
C - - - - 0x03D7A7 FF:D797: B0 06     BCS bra_D79F
C - - - - 0x03D7A9 FF:D799: AE 4E 04  LDX ram_высота_мяча
C - - - - 0x03D7AC FF:D79C: 8E 3C 04  STX ram_подтип_действия_атаки
bra_D79F:
C - - - - 0x03D7AF FF:D79F: C9 12     CMP #$12
C - - - - 0x03D7B1 FF:D7A1: D0 36     BNE bra_D7D9
C - - - - 0x03D7B3 FF:D7A3: AE 48 04  LDX ram_флаг_циклона
C - - - - 0x03D7B6 FF:D7A6: D0 31     BNE bra_D7D9
C - - - - 0x03D7B8 FF:D7A8: EE 48 04  INC ram_флаг_циклона
C - - - - 0x03D7BB FF:D7AB: A9 00     LDA #$00
C - - - - 0x03D7BD FF:D7AD: 8D 2D 06  STA $062D
C - - - - 0x03D7C0 FF:D7B0: A9 46     LDA #$46
C - - - - 0x03D7C2 FF:D7B2: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D7C5 FF:D7B5: 48        PHA
C - - - - 0x03D7C8 FF:D7B8: A9 1A     LDA #$1A
C - - - - 0x03D7CA FF:D7BA: 85 24     STA ram_для_5114
C - - - - 0x03D7CC FF:D7BC: A9 1B     LDA #$1B
C - - - - 0x03D7CE FF:D7BE: 85 25     STA ram_для_5115
C - - - - 0x03D7D0 FF:D7C0: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D7D3 FF:D7C3: 68        PLA
C - - - - 0x03D7D4 FF:D7C4: 20 21 80  JSR sub_0x034F82
C - - - - 0x03D7D7 FF:D7C7: 48        PHA
C - - - - 0x03D7DA FF:D7CA: A9 1A     LDA #$1A
C - - - - 0x03D7DC FF:D7CC: 85 24     STA ram_для_5114
C - - - - 0x03D7DE FF:D7CE: A9 1B     LDA #$1B
C - - - - 0x03D7E0 FF:D7D0: 85 25     STA ram_для_5115
C - - - - 0x03D7E2 FF:D7D2: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03D7E5 FF:D7D5: 68        PLA
C - - - - 0x03D7E6 FF:D7D6: 20 36 80  JSR sub_0x0345BC
bra_D7D9:
C - - - - 0x03D7E9 FF:D7D9: C9 11     CMP #$11
C - - - - 0x03D7EB FF:D7DB: D0 08     BNE bra_D7E5
C - - - - 0x03D7ED FF:D7DD: A9 00     LDA #$00
C - - - - 0x03D7EF FF:D7DF: 8D 49 04  STA ram_флаг_драйв_тигра
C - - - - 0x03D7F2 FF:D7E2: 8D 4A 04  STA ram_таймер_драйв_тигра
bra_D7E5:
C - - - - 0x03D7F5 FF:D7E5: 4C 0C D7  JMP loc_D70C

.export sub_0x03D7F8
sub_0x03D7F8:
ofs_D7E8_F1:
C D J - - 0x03D7F8 FF:D7E8: A9 38     LDA #$38
C - - - - 0x03D7FA FF:D7EA: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D7FD FF:D7ED: A9 0F     LDA #$0F      ; pass_select_a_teammate
C - - - - 0x03D7FF FF:D7EF: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D802 FF:D7F2: A9 81     LDA #$81
C - - - - 0x03D804 FF:D7F4: 8D 2D 06  STA $062D
C - - - - 0x03D807 FF:D7F7: A9 1F     LDA #$1F
C - - - - 0x03D809 FF:D7F9: 8D 94 04  STA $0494
C - - - - 0x03D80C FF:D7FC: 20 EC E6  JSR sub_E6EC
C - - - - 0x03D80F FF:D7FF: A9 00     LDA #$00
C - - - - 0x03D811 FF:D801: 8D 25 06  STA $0625
C - - - - 0x03D814 FF:D804: AD FE 05  LDA $05FE
C - - - - 0x03D817 FF:D807: 8D 24 06  STA $0624
bra_D80A:
C - - - - 0x03D81A FF:D80A: A9 01     LDA #$01
C - - - - 0x03D81C FF:D80C: 20 0F CB  JSR sub_CB0F
C - - - - 0x03D81F FF:D80F: AD 1C 00  LDA ram_удержанные
C - - - - 0x03D822 FF:D812: 29 0F     AND #con_btns_Dpad
C - - - - 0x03D824 FF:D814: F0 21     BEQ bra_D837
C - - - - 0x03D826 FF:D816: A2 00     LDX #$00
bra_D818:
C - - - - 0x03D828 FF:D818: 4A        LSR
C - - - - 0x03D829 FF:D819: B0 03     BCS bra_D81E
C - - - - 0x03D82B FF:D81B: E8        INX
C - - - - 0x03D82C FF:D81C: D0 FA     BNE bra_D818
bra_D81E:
C - - - - 0x03D82E FF:D81E: BD 4E D8  LDA tbl_D84E,X
C - - - - 0x03D831 FF:D821: 18        CLC
C - - - - 0x03D832 FF:D822: 6D 24 06  ADC $0624
C - - - - 0x03D835 FF:D825: C9 F0     CMP #$F0
C - - - - 0x03D837 FF:D827: 90 03     BCC bra_D82C
C - - - - 0x03D839 FF:D829: AD 24 06  LDA $0624
bra_D82C:
C - - - - 0x03D83C FF:D82C: CD 24 06  CMP $0624
C - - - - 0x03D83F FF:D82F: 8D 24 06  STA $0624
C - - - - 0x03D842 FF:D832: F0 03     BEQ bra_D837
C - - - - 0x03D844 FF:D834: 20 F7 D8  JSR sub_D8F7
bra_D837:
C - - - - 0x03D847 FF:D837: A9 40     LDA #con_btn_B
C - - - - 0x03D849 FF:D839: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D84C FF:D83C: F0 01     BEQ bra_D83F
C - - - - 0x03D84E FF:D83E: 60        RTS
bra_D83F:
C - - - - 0x03D84F FF:D83F: A9 80     LDA #con_btn_A
C - - - - 0x03D851 FF:D841: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D854 FF:D844: F0 C4     BEQ bra_D80A
C - - - - 0x03D856 FF:D846: 20 52 D8  JSR sub_D852
C - - - - 0x03D859 FF:D849: 90 BF     BCC bra_D80A
C - - - - 0x03D85B FF:D84B: 4C 0C D7  JMP loc_D70C

tbl_D84E:
- D - - - 0x03D85E FF:D84E: 0C        .byte $0C    ; <し>
- D - - - 0x03D85F FF:D84F: F4        .byte $F4
- D - - - 0x03D860 FF:D850: 01        .byte $01    ; <あ>
- D - - - 0x03D861 FF:D851: FF        .byte $FF

.export loc_0x03D862
loc_0x03D862:
sub_D852:
C D - - - 0x03D862 FF:D852: A9 FF     LDA #$FF
C - - - - 0x03D864 FF:D854: AE 25 06  LDX $0625
C - - - - 0x03D867 FF:D857: F0 09     BEQ bra_D862
C - - - - 0x03D869 FF:D859: AE 30 04  LDX $0430
C - - - - 0x03D86C FF:D85C: CA        DEX
C - - - - 0x03D86D FF:D85D: D0 09     BNE bra_D868
C - - - - 0x03D86F FF:D85F: AD 31 04  LDA $0431
bra_D862:
C - - - - 0x03D872 FF:D862: 8D FC 05  STA ram_принимающий
C - - - - 0x03D875 FF:D865: 4C D2 D8  JMP loc_D8D2
bra_D868:
C - - - - 0x03D878 FF:D868: AD 30 04  LDA $0430
C - - - - 0x03D87B FF:D86B: 18        CLC
C - - - - 0x03D87C FF:D86C: 69 22     ADC #$22      ; ??? select_1_of_?_teammates_for_pass
C - - - - 0x03D87E FF:D86E: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D881 FF:D871: A9 00     LDA #$00
C - - - - 0x03D883 FF:D873: 8D 25 06  STA $0625
C - - - - 0x03D886 FF:D876: 4C B5 D8  JMP loc_D8B5
bra_D879:
C - - - - 0x03D889 FF:D879: A9 01     LDA #$01
C - - - - 0x03D88B FF:D87B: 20 0F CB  JSR sub_CB0F
C - - - - 0x03D88E FF:D87E: A9 40     LDA #con_btn_B
C - - - - 0x03D890 FF:D880: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D893 FF:D883: F0 0A     BEQ bra_D88F
- - - - - 0x03D895 FF:D885: A9 0F     LDA #$0F      ; pass_select_a_teammate
- - - - - 0x03D897 FF:D887: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
- - - - - 0x03D89A FF:D88A: 20 F7 D8  JSR sub_D8F7
- - - - - 0x03D89D FF:D88D: 18        CLC
- - - - - 0x03D89E FF:D88E: 60        RTS
bra_D88F:
C - - - - 0x03D89F FF:D88F: A9 0C     LDA #con_btn_Down + con_btn_Up
C - - - - 0x03D8A1 FF:D891: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D8A4 FF:D894: F0 2D     BEQ bra_D8C3
C - - - - 0x03D8A6 FF:D896: A2 01     LDX #$01
C - - - - 0x03D8A8 FF:D898: 29 04     AND #$04
C - - - - 0x03D8AA FF:D89A: D0 02     BNE bra_D89E
- - - - - 0x03D8AC FF:D89C: A2 FF     LDX #$FF
bra_D89E:
C - - - - 0x03D8AE FF:D89E: 8A        TXA
C - - - - 0x03D8AF FF:D89F: 18        CLC
C - - - - 0x03D8B0 FF:D8A0: 6D 25 06  ADC $0625
C - - - - 0x03D8B3 FF:D8A3: 30 05     BMI bra_D8AA
C - - - - 0x03D8B5 FF:D8A5: CD 30 04  CMP $0430
C - - - - 0x03D8B8 FF:D8A8: 90 03     BCC bra_D8AD
bra_D8AA:
- - - - - 0x03D8BA FF:D8AA: AD 25 06  LDA $0625
bra_D8AD:
C - - - - 0x03D8BD FF:D8AD: CD 25 06  CMP $0625
C - - - - 0x03D8C0 FF:D8B0: 8D 25 06  STA $0625
C - - - - 0x03D8C3 FF:D8B3: F0 0E     BEQ bra_D8C3
loc_D8B5:
C D - - - 0x03D8C5 FF:D8B5: AE 25 06  LDX $0625
C - - - - 0x03D8C8 FF:D8B8: BD 31 04  LDA $0431,X
C - - - - 0x03D8CB FF:D8BB: 8D FC 05  STA ram_принимающий
C - - - - 0x03D8CE FF:D8BE: A9 1D     LDA #$1D      ; reciever_dribble_pass_shoot
C - - - - 0x03D8D0 FF:D8C0: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
bra_D8C3:
C - - - - 0x03D8D3 FF:D8C3: 20 DA D8  JSR sub_D8DA_курсор_выбора_из_нескольких_напарников_для_паса
C - - - - 0x03D8D6 FF:D8C6: A9 80     LDA #con_btn_A
C - - - - 0x03D8D8 FF:D8C8: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D8DB FF:D8CB: F0 AC     BEQ bra_D879
C - - - - 0x03D8DD FF:D8CD: A9 F8     LDA #$F8
C - - - - 0x03D8DF FF:D8CF: 8D FC 02  STA ram_спрайт_Y + $FC
loc_D8D2:
C D - - - 0x03D8E2 FF:D8D2: AD 24 06  LDA $0624
C - - - - 0x03D8E5 FF:D8D5: 8D 38 06  STA $0638
C - - - - 0x03D8E8 FF:D8D8: 38        SEC
C - - - - 0x03D8E9 FF:D8D9: 60        RTS

sub_D8DA_курсор_выбора_из_нескольких_напарников_для_паса:
C - - - - 0x03D8EA FF:D8DA: AD 25 06  LDA $0625
C - - - - 0x03D8ED FF:D8DD: 0A        ASL
C - - - - 0x03D8EE FF:D8DE: 0A        ASL
C - - - - 0x03D8EF FF:D8DF: 0A        ASL
C - - - - 0x03D8F0 FF:D8E0: 0A        ASL
C - - - - 0x03D8F1 FF:D8E1: 18        CLC
C - - - - 0x03D8F2 FF:D8E2: 69 9A     ADC #$99
C - - - - 0x03D8F4 FF:D8E4: 8D FC 02  STA ram_спрайт_Y + $FC
C - - - - 0x03D8F7 FF:D8E7: A9 11     LDA #$70
C - - - - 0x03D8F9 FF:D8E9: 8D FD 02  STA ram_спрайт_тайл + $FC
C - - - - 0x03D8FC FF:D8EC: A9 03     LDA #$03
C - - - - 0x03D8FE FF:D8EE: 8D FE 02  STA ram_спрайт_атрибут + $FC
C - - - - 0x03D901 FF:D8F1: A9 50     LDA #$3E
C - - - - 0x03D903 FF:D8F3: 8D FF 02  STA ram_спрайт_X + $FC
C - - - - 0x03D906 FF:D8F6: 60        RTS

.export loc_0x03D907
loc_0x03D907:
sub_D8F7:
C D - - - 0x03D907 FF:D8F7: A9 00     LDA #$00
C - - - - 0x03D909 FF:D8F9: 8D 30 04  STA $0430
C - - - - 0x03D90C FF:D8FC: 8D 25 06  STA $0625
bra_D8FF:
C - - - - 0x03D90F FF:D8FF: 48        PHA
C - - - - 0x03D910 FF:D900: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03D913 FF:D903: F0 3C     BEQ bra_D941
C - - - - 0x03D915 FF:D905: C9 00     CMP #$00
C - - - - 0x03D917 FF:D907: F0 38     BEQ bra_D941
C - - - - 0x03D919 FF:D909: C9 0B     CMP #$0B
C - - - - 0x03D91B FF:D90B: F0 34     BEQ bra_D941
C - - - - 0x03D91D FF:D90D: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03D920 FF:D910: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03D922 FF:D912: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D924 FF:D914: AA        TAX
C - - - - 0x03D925 FF:D915: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03D927 FF:D917: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03D929 FF:D919: A8        TAY
C - - - - 0x03D92A FF:D91A: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03D92D FF:D91D: CD 24 06  CMP $0624
C - - - - 0x03D930 FF:D920: D0 1F     BNE bra_D941
C - - - - 0x03D932 FF:D922: AE 30 04  LDX $0430
C - - - - 0x03D935 FF:D925: E0 04     CPX #$04
C - - - - 0x03D937 FF:D927: B0 18     BCS bra_D941
C - - - - 0x03D939 FF:D929: 68        PLA
C - - - - 0x03D93A FF:D92A: 48        PHA
C - - - - 0x03D93B FF:D92B: C9 0B     CMP #$0B
C - - - - 0x03D93D FF:D92D: 90 05     BCC bra_D934
C - - - - 0x03D93F FF:D92F: AC 25 06  LDY $0625
C - - - - 0x03D942 FF:D932: D0 0D     BNE bra_D941
bra_D934:
C - - - - 0x03D944 FF:D934: 9D 31 04  STA $0431,X
C - - - - 0x03D947 FF:D937: EE 30 04  INC $0430
C - - - - 0x03D94A FF:D93A: C9 0B     CMP #$0B
C - - - - 0x03D94C FF:D93C: B0 03     BCS bra_D941
C - - - - 0x03D94E FF:D93E: EE 25 06  INC $0625
bra_D941:
C - - - - 0x03D951 FF:D941: 68        PLA
C - - - - 0x03D952 FF:D942: 18        CLC
C - - - - 0x03D953 FF:D943: 69 01     ADC #$01
C - - - - 0x03D955 FF:D945: C9 16     CMP #$16
C - - - - 0x03D957 FF:D947: D0 B6     BNE bra_D8FF
C - - - - 0x03D959 FF:D949: AE 30 04  LDX $0430
C - - - - 0x03D95C FF:D94C: D0 06     BNE bra_D954
C - - - - 0x03D95E FF:D94E: A9 1C     LDA #$1C      ; clear_reciever_stats_window
C - - - - 0x03D960 FF:D950: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D963 FF:D953: 60        RTS
bra_D954:
C - - - - 0x03D964 FF:D954: AD 25 06  LDA $0625
C - - - - 0x03D967 FF:D957: D0 08     BNE bra_D961
C - - - - 0x03D969 FF:D959: 8A        TXA
C - - - - 0x03D96A FF:D95A: 18        CLC
C - - - - 0x03D96B FF:D95B: 69 1F     ADC #$1F      ; ??? show_?_opponents
C - - - - 0x03D96D FF:D95D: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D970 FF:D960: 60        RTS
bra_D961:
C - - - - 0x03D971 FF:D961: CA        DEX
C - - - - 0x03D972 FF:D962: D0 0C     BNE bra_D970
C - - - - 0x03D974 FF:D964: AD 31 04  LDA $0431
C - - - - 0x03D977 FF:D967: 8D FC 05  STA ram_принимающий
C - - - - 0x03D97A FF:D96A: A9 1D     LDA #$1D      ; reciever_dribble_pass_shoot
C - - - - 0x03D97C FF:D96C: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D97F FF:D96F: 60        RTS
bra_D970:
C - - - - 0x03D980 FF:D970: 8A        TXA
C - - - - 0x03D981 FF:D971: 18        CLC
C - - - - 0x03D982 FF:D972: 69 18     ADC #$18      ; ? show_?_teammates
C - - - - 0x03D984 FF:D974: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D987 FF:D977: 60        RTS

ofs_D979_F3:
C - J - - 0x03D989 FF:D979: A9 38     LDA #$38
C - - - - 0x03D98B FF:D97B: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03D98E FF:D97E: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - 0x03D991 FF:D981: F0 03     BEQ bra_D986
C - - - - 0x03D993 FF:D983: 4C 0C D7  JMP loc_D70C
bra_D986:
C - - - - 0x03D996 FF:D986: 20 EC E6  JSR sub_E6EC
C - - - - 0x03D999 FF:D989: A9 01     LDA #$01
C - - - - 0x03D99B FF:D98B: 85 3A     STA ram_003A
C - - - - 0x03D99D FF:D98D: A9 00     LDA #$00
C - - - - 0x03D99F FF:D98F: 8D 30 04  STA $0430
bra_D992:
C - - - - 0x03D9A2 FF:D992: A5 3A     LDA ram_003A
C - - - - 0x03D9A4 FF:D994: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03D9A7 FF:D997: F0 10     BEQ bra_D9A9
C - - - - 0x03D9A9 FF:D999: 20 3A DA  JSR sub_DA3A
C - - - - 0x03D9AC FF:D99C: 90 0B     BCC bra_D9A9
C - - - - 0x03D9AE FF:D99E: AE 30 04  LDX $0430
C - - - - 0x03D9B1 FF:D9A1: A5 3A     LDA ram_003A
C - - - - 0x03D9B3 FF:D9A3: 9D 31 04  STA $0431,X
C - - - - 0x03D9B6 FF:D9A6: EE 30 04  INC $0430
bra_D9A9:
C - - - - 0x03D9B9 FF:D9A9: E6 3A     INC ram_003A
C - - - - 0x03D9BB FF:D9AB: A5 3A     LDA ram_003A
C - - - - 0x03D9BD FF:D9AD: C9 0B     CMP #$0B
C - - - - 0x03D9BF FF:D9AF: D0 E1     BNE bra_D992
C - - - - 0x03D9C1 FF:D9B1: AD 30 04  LDA $0430
C - - - - 0x03D9C4 FF:D9B4: D0 12     BNE bra_D9C8
C - - - - 0x03D9C6 FF:D9B6: A9 11     LDA #$11      ; no_players_nearby
C - - - - 0x03D9C8 FF:D9B8: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
bra_D9BB:
C - - - - 0x03D9CB FF:D9BB: A9 01     LDA #$01
C - - - - 0x03D9CD FF:D9BD: 20 0F CB  JSR sub_CB0F
C - - - - 0x03D9D0 FF:D9C0: A9 C0     LDA #con_btn_B + con_btn_A
C - - - - 0x03D9D2 FF:D9C2: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D9D5 FF:D9C5: F0 F4     BEQ bra_D9BB
C - - - - 0x03D9D7 FF:D9C7: 60        RTS
bra_D9C8:
C - - - - 0x03D9D8 FF:D9C8: A9 10     LDA #$10      ; 1_2_pass_choose_a_partner
C - - - - 0x03D9DA FF:D9CA: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03D9DD FF:D9CD: A9 82     LDA #$82
C - - - - 0x03D9DF FF:D9CF: 8D 2D 06  STA $062D
C - - - - 0x03D9E2 FF:D9D2: A9 1F     LDA #$1F
C - - - - 0x03D9E4 FF:D9D4: 8D 94 04  STA $0494
C - - - - 0x03D9E7 FF:D9D7: A9 00     LDA #$00
C - - - - 0x03D9E9 FF:D9D9: 4C 03 DA  JMP loc_DA03
bra_D9DC:
C - - - - 0x03D9EC FF:D9DC: A9 01     LDA #$01
C - - - - 0x03D9EE FF:D9DE: 20 0F CB  JSR sub_CB0F
C - - - - 0x03D9F1 FF:D9E1: A9 03     LDA #con_btn_Right + con_btn_Left
C - - - - 0x03D9F3 FF:D9E3: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03D9F6 FF:D9E6: F0 2A     BEQ bra_DA12
C - - - - 0x03D9F8 FF:D9E8: A2 01     LDX #$01
C - - - - 0x03D9FA FF:D9EA: 4A        LSR
C - - - - 0x03D9FB FF:D9EB: B0 02     BCS bra_D9EF
C - - - - 0x03D9FD FF:D9ED: A2 FF     LDX #$FF
bra_D9EF:
C - - - - 0x03D9FF FF:D9EF: 8A        TXA
C - - - - 0x03DA00 FF:D9F0: 18        CLC
C - - - - 0x03DA01 FF:D9F1: 6D 25 06  ADC $0625
C - - - - 0x03DA04 FF:D9F4: 10 06     BPL bra_D9FC
C - - - - 0x03DA06 FF:D9F6: AD 30 04  LDA $0430
C - - - - 0x03DA09 FF:D9F9: 38        SEC
C - - - - 0x03DA0A FF:D9FA: E9 01     SBC #$01
bra_D9FC:
C - - - - 0x03DA0C FF:D9FC: CD 30 04  CMP $0430
C - - - - 0x03DA0F FF:D9FF: 90 02     BCC bra_DA03
C - - - - 0x03DA11 FF:DA01: A9 00     LDA #$00
bra_DA03:
loc_DA03:
C D - - - 0x03DA13 FF:DA03: 8D 25 06  STA $0625
C - - - - 0x03DA16 FF:DA06: AA        TAX
C - - - - 0x03DA17 FF:DA07: BD 31 04  LDA $0431,X
C - - - - 0x03DA1A FF:DA0A: 8D FC 05  STA ram_принимающий
C - - - - 0x03DA1D FF:DA0D: A9 1D     LDA #$1D      ; reciever_dribble_pass_shoot 
C - - - - 0x03DA1F FF:DA0F: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
bra_DA12:
C - - - - 0x03DA22 FF:DA12: A9 40     LDA #con_btn_B
C - - - - 0x03DA24 FF:DA14: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03DA27 FF:DA17: F0 01     BEQ bra_DA1A
C - - - - 0x03DA29 FF:DA19: 60        RTS
bra_DA1A:
C - - - - 0x03DA2A FF:DA1A: A9 80     LDA #con_btn_A
C - - - - 0x03DA2C FF:DA1C: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03DA2F FF:DA1F: F0 BB     BEQ bra_D9DC
C - - - - 0x03DA31 FF:DA21: AD FC 05  LDA ram_принимающий
C - - - - 0x03DA34 FF:DA24: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DA37 FF:DA27: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03DA39 FF:DA29: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DA3B FF:DA2B: AA        TAX
C - - - - 0x03DA3C FF:DA2C: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03DA3E FF:DA2E: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DA40 FF:DA30: A8        TAY
C - - - - 0x03DA41 FF:DA31: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03DA44 FF:DA34: 8D 38 06  STA $0638
C - - - - 0x03DA47 FF:DA37: 4C 0C D7  JMP loc_D70C

sub_DA3A:
C - - - - 0x03DA4A FF:DA3A: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DA4D FF:DA3D: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03DA4F FF:DA3F: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DA51 FF:DA41: 38        SEC
C - - - - 0x03DA52 FF:DA42: ED 35 06  SBC $0635
C - - - - 0x03DA55 FF:DA45: B0 04     BCS bra_DA4B
C - - - - 0x03DA57 FF:DA47: 49 FF     EOR #$FF
C - - - - 0x03DA59 FF:DA49: 69 01     ADC #$01
bra_DA4B:
C - - - - 0x03DA5B FF:DA4B: C9 14     CMP #$14
C - - - - 0x03DA5D FF:DA4D: B0 14     BCS bra_DA63
C - - - - 0x03DA5F FF:DA4F: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03DA61 FF:DA51: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DA63 FF:DA53: 38        SEC
C - - - - 0x03DA64 FF:DA54: ED 37 06  SBC $0637
C - - - - 0x03DA67 FF:DA57: B0 04     BCS bra_DA5D
C - - - - 0x03DA69 FF:DA59: 49 FF     EOR #$FF
C - - - - 0x03DA6B FF:DA5B: 69 01     ADC #$01
bra_DA5D:
C - - - - 0x03DA6D FF:DA5D: C9 14     CMP #$14
C - - - - 0x03DA6F FF:DA5F: B0 02     BCS bra_DA63
C - - - - 0x03DA71 FF:DA61: 38        SEC
C - - - - 0x03DA72 FF:DA62: 60        RTS
bra_DA63:
C - - - - 0x03DA73 FF:DA63: 18        CLC
C - - - - 0x03DA74 FF:DA64: 60        RTS

ofs_DA65_F5:
C - J - - 0x03DA75 FF:DA65: A9 38     LDA #$38
C - - - - 0x03DA77 FF:DA67: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DA7A FF:DA6A: A9 83     LDA #$83
C - - - - 0x03DA7C FF:DA6C: 8D 2D 06  STA $062D
C - - - - 0x03DA7F FF:DA6F: A9 00     LDA #$00
C - - - - 0x03DA81 FF:DA71: 8D 24 06  STA $0624
bra_DA74:
C - - - - 0x03DA84 FF:DA74: A9 01     LDA #$01
C - - - - 0x03DA86 FF:DA76: 20 0F CB  JSR sub_CB0F
C - - - - 0x03DA89 FF:DA79: AE 24 06  LDX $0624
C - - - - 0x03DA8C FF:DA7C: E8        INX
C - - - - 0x03DA8D FF:DA7D: E0 10     CPX #$10
C - - - - 0x03DA8F FF:DA7F: 90 02     BCC bra_DA83
C - - - - 0x03DA91 FF:DA81: A2 00     LDX #$00
bra_DA83:
C - - - - 0x03DA93 FF:DA83: 8E 24 06  STX $0624
C - - - - 0x03DA96 FF:DA86: A9 40     LDA #con_btn_B
C - - - - 0x03DA98 FF:DA88: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03DA9B FF:DA8B: F0 01     BEQ bra_DA8E
C - - - - 0x03DA9D FF:DA8D: 60        RTS
bra_DA8E:
C - - - - 0x03DA9E FF:DA8E: A9 80     LDA #con_btn_A
C - - - - 0x03DAA0 FF:DA90: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03DAA3 FF:DA93: F0 DF     BEQ bra_DA74
C - - - - 0x03DAA5 FF:DA95: 4C 0C D7  JMP loc_D70C

.export loc_0x03DABA
loc_0x03DABA:
loc_DAAA:
; срабатывает до первой разводки тайма, и каждый раз перед разводкой после гола
C D - - - 0x03DABA FF:DAAA: A9 01     LDA #con_музыка_выключить_все
C - - - - 0x03DABC FF:DAAC: 20 F1 CB  JSR sub_CBF1_запись_звука
C - - - - 0x03DABF FF:DAAF: 20 4F CF  JSR sub_CF4F
C - - - - 0x03DAC2 FF:DAB2: 48        PHA
C - - - - 0x03DAC5 FF:DAB5: A9 1A     LDA #$1A
C - - - - 0x03DAC7 FF:DAB7: 85 24     STA ram_для_5114
C - - - - 0x03DAC9 FF:DAB9: A9 1B     LDA #$1B
C - - - - 0x03DACB FF:DABB: 85 25     STA ram_для_5115
C - - - - 0x03DACD FF:DABD: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03DAD0 FF:DAC0: 68        PLA
C - - - - 0x03DAD1 FF:DAC1: 20 39 80  JSR sub_0x03505E
C - - - - 0x03DAD4 FF:DAC4: 20 24 DB  JSR sub_DB24
C - - - - 0x03DAE1 FF:DAD1: AD 29 06  LDA ram_флаг_разводки
C - - - - 0x03DAE4 FF:DAD4: C9 04     CMP #$04
C - - - - 0x03DAE6 FF:DAD6: F0 11     BEQ bra_DAE9_пропуск_отрисовки_и_ожидания_разводки
                                      LDA #$42      ; booth_for_charlie_time_score_period_number
                                      JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03DAE8 FF:DAD8: A9 35     LDA #$35
C - - - - 0x03DAEA FF:DADA: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
bra_DADD_ожидание_разводки:
C - - - - 0x03DAED FF:DADD: A9 01     LDA #$01
C - - - - 0x03DAEF FF:DADF: 20 0F CB  JSR sub_CB0F
C - - - - 0x03DAF2 FF:DAE2: AD 1C 00  LDA ram_удержанные
C - - - - 0x03DAF5 FF:DAE5: 29 C0     AND #con_btn_B + con_btn_A
C - - - - 0x03DAF7 FF:DAE7: F0 F4     BEQ bra_DADD_ожидание_разводки
bra_DAE9_пропуск_отрисовки_и_ожидания_разводки:
C - - - - 0x03DAF9 FF:DAE9: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03DAFC FF:DAEC: 18        CLC
C - - - - 0x03DAFD FF:DAED: 69 08     ADC #$08
C - - - - 0x03DAFF FF:DAEF: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x03DB02 FF:DAF2: 20 07 DC  JSR sub_DC07_задать_начальные_координаты_игрокам_по_расстановке_команды
C - - - - 0x03DB05 FF:DAF5: AD E2 00  LDA ram_рандом_2
C - - - - 0x03DB08 FF:DAF8: 29 07     AND #$07
C - - - - 0x03DB0A FF:DAFA: C9 05     CMP #$05
C - - - - 0x03DB0C FF:DAFC: 90 02     BCC bra_DB00
C - - - - 0x03DB0E FF:DAFE: E9 05     SBC #$05
bra_DB00:
C - - - - 0x03DB10 FF:DB00: AA        TAX
C - - - - 0x03DB11 FF:DB01: BD 82 DC  LDA tbl_DC82,X
C - - - - 0x03DB14 FF:DB04: 18        CLC
C - - - - 0x03DB15 FF:DB05: 6D FB 05  ADC ram_команда_с_мячом
C - - - - 0x03DB18 FF:DB08: 8D FC 05  STA ram_принимающий
C - - - - 0x03DB1B FF:DB0B: 20 EC E6  JSR sub_E6EC
C - - - - 0x03DB1E FF:DB0E: A9 36     LDA #$36
C - - - - 0x03DB20 FF:DB10: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DB23 FF:DB13: AD FC 05  LDA ram_принимающий
C - - - - 0x03DB26 FF:DB16: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x03DB29 FF:DB19: A9 01     LDA #$01
C - - - - 0x03DB2B FF:DB1B: 8D FD 05  STA ram_управляемый
C - - - - 0x03DB2E FF:DB1E: A2 50     LDX #$50
C - - - - 0x03DB30 FF:DB20: 9A        TXS
C - - - - 0x03DB31 FF:DB21: 4C DF E0  JMP loc_E0DF

sub_DB24:
C - - - - 0x03DB34 FF:DB24: AD 29 06  LDA ram_флаг_разводки
C - - - - 0x03DB37 FF:DB27: 20 99 CB  JSR sub_CB99_байты_после_JSR_для_непрямого_прыжка
- D - I - 0x03DB3A FF:DB2A: 34 DB     .word ofs_DB34_00
- D - I - 0x03DB3C FF:DB2C: 9E DB     .word ofs_DB9E_01
- D - I - 0x03DB3E FF:DB2E: FC DB     .word ofs_DBFC_02
- - - - - 0x03DB40 FF:DB30: F3 DB     .word ofs_DBF3_03
- D - I - 0x03DB42 FF:DB32: 03 DC     .word ofs_DC03_04

ofs_DB34_00:
C - J - - 0x03DB44 FF:DB34: 48        PHA
C - - - - 0x03DB47 FF:DB37: A9 1C     LDA #$1C
C - - - - 0x03DB49 FF:DB39: 85 24     STA ram_для_5114
C - - - - 0x03DB4B FF:DB3B: A9 1D     LDA #$1D
C - - - - 0x03DB4D FF:DB3D: 85 25     STA ram_для_5115
C - - - - 0x03DB4F FF:DB3F: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03DB52 FF:DB42: 68        PLA
C - - - - 0x03DB53 FF:DB43: 20 03 80  JSR sub_0x038013
C - - - - 0x03DB56 FF:DB46: A9 00     LDA #$00
C - - - - 0x03DB58 FF:DB48: 8D 47 04  STA ram_флаг_удара_франции_коимбры
C - - - - 0x03DB5B FF:DB4B: A2 00     LDX #$00
C - - - - 0x03DB5D FF:DB4D: AD 2B 00  LDA ram_команда_соперника
C - - - - 0x03DB60 FF:DB50: C9 03     CMP #$03
C - - - - 0x03DB62 FF:DB52: F0 07     BEQ bra_DB5B
C - - - - 0x03DB64 FF:DB54: 2C E2 00  BIT ram_рандом_2
C - - - - 0x03DB67 FF:DB57: 10 02     BPL bra_DB5B
C - - - - 0x03DB69 FF:DB59: A2 0B     LDX #$0B
bra_DB5B:
C - - - - 0x03DB6B FF:DB5B: 8E 4F 04  STX $044F
C - - - - 0x03DB6E FF:DB5E: 8E FB 05  STX ram_команда_с_мячом
C - - - - 0x03DB71 FF:DB61: 60        RTS

.export sub_0x03DB72
sub_0x03DB72:
C D - - - 0x03DB72 FF:DB62: A9 0A     LDA #$0A
C - - - - 0x03DB74 FF:DB64: AE 2A 00  LDX ram_твоя_команда
C - - - - 0x03DB77 FF:DB67: E0 02     CPX #$02
C - - - - 0x03DB79 FF:DB69: D0 02     BNE bra_DB6D
C - - - - 0x03DB7B FF:DB6B: A9 14     LDA #$14
bra_DB6D:
C - - - - 0x03DB7D FF:DB6D: 48        PHA
C - - - - 0x03DB7E FF:DB6E: C9 0B     CMP #$0B
C - - - - 0x03DB80 FF:DB70: 90 02     BCC bra_DB74
C - - - - 0x03DB82 FF:DB72: 69 0A     ADC #$0A
bra_DB74:
C - - - - 0x03DB84 FF:DB74: A2 00     LDX #$00
C - - - - 0x03DB86 FF:DB76: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03DB89 FF:DB79: A0 00     LDY #con_игрок_номер
C - - - - 0x03DB8B FF:DB7B: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DB8D FF:DB7D: C9 20     CMP #$20
C - - - - 0x03DB8F FF:DB7F: D0 0B     BNE bra_DB8C
C - - - - 0x03DB91 FF:DB81: AD 4D 04  LDA ram_флаг_мисуги_0_хп
C - - - - 0x03DB94 FF:DB84: F0 06     BEQ bra_DB8C
C - - - - 0x03DB96 FF:DB86: A9 00     LDA #$00
C - - - - 0x03DB98 FF:DB88: 85 32     STA ram_0032
C - - - - 0x03DB9A FF:DB8A: 85 33     STA ram_0033
bra_DB8C:
C - - - - 0x03DB9C FF:DB8C: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03DB9E FF:DB8E: A5 32     LDA ram_0032
C - - - - 0x03DBA0 FF:DB90: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DBA2 FF:DB92: C8        INY
C - - - - 0x03DBA3 FF:DB93: A5 33     LDA ram_0033
C - - - - 0x03DBA5 FF:DB95: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DBA7 FF:DB97: 68        PLA
C - - - - 0x03DBA8 FF:DB98: 38        SEC
C - - - - 0x03DBA9 FF:DB99: E9 01     SBC #$01
C - - - - 0x03DBAB FF:DB9B: 10 D0     BPL bra_DB6D
C - - - - 0x03DBAD FF:DB9D: 60        RTS

ofs_DB9E_01:
C - J - - 0x03DBAE FF:DB9E: 20 F3 DB  JSR sub_DBF3
C - - - - 0x03DBB1 FF:DBA1: A2 00     LDX #$00
C - - - - 0x03DBB3 FF:DBA3: AD 2B 00  LDA ram_команда_соперника
bra_DBA6:
C - - - - 0x03DBB6 FF:DBA6: DD EA DB  CMP tbl_DBEA,X
C - - - - 0x03DBB9 FF:DBA9: F0 09     BEQ bra_DBB4
C - - - - 0x03DBBB FF:DBAB: E8        INX
C - - - - 0x03DBBC FF:DBAC: E8        INX
C - - - - 0x03DBBD FF:DBAD: E8        INX
C - - - - 0x03DBBE FF:DBAE: E0 09     CPX #$09
C - - - - 0x03DBC0 FF:DBB0: F0 19     BEQ bra_DBCB_выход
C - - - - 0x03DBC2 FF:DBB2: D0 F2     BNE bra_DBA6
bra_DBB4:
C - - - - 0x03DBC4 FF:DBB4: BD EB DB  LDA tbl_DBEA + 1,X
C - - - - 0x03DBC7 FF:DBB7: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DBCA FF:DBBA: A0 00     LDY #con_игрок_номер
C - - - - 0x03DBCC FF:DBBC: BD EC DB  LDA tbl_DBEA + 2,X
C - - - - 0x03DBCF FF:DBBF: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DBD1 FF:DBC1: AD 2B 00  LDA ram_команда_соперника
C - - - - 0x03DBD4 FF:DBC4: C9 0C     CMP #$0C
C - - - - 0x03DBD6 FF:DBC6: D0 03     BNE bra_DBCB_выход
C - - - - 0x03DBD8 FF:DBC8: 20 CC DB  JSR sub_DBCC
bra_DBCB_выход:
C - - - - 0x03DBDB FF:DBCB: 60        RTS

sub_DBCC:
C - - - - 0x03DBDC FF:DBCC: A9 0C     LDA #$0C
bra_DBCE:
C - - - - 0x03DBDE FF:DBCE: 48        PHA
; почему-то 10-й игрок команды соперников пропускается
C - - - - 0x03DBDF FF:DBCF: C9 14     CMP #$14
C - - - - 0x03DBE1 FF:DBD1: F0 0E     BEQ bra_DBE1
C - - - - 0x03DBE3 FF:DBD3: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DBE6 FF:DBD6: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03DBE8 FF:DBD8: A9 80     LDA #$80
C - - - - 0x03DBEA FF:DBDA: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DBEC FF:DBDC: C8        INY
C - - - - 0x03DBED FF:DBDD: A9 CB     LDA #$CB
C - - - - 0x03DBEF FF:DBDF: 91 34     STA (ram_plr_data),Y
bra_DBE1:
C - - - - 0x03DBF1 FF:DBE1: 68        PLA
C - - - - 0x03DBF2 FF:DBE2: 18        CLC
C - - - - 0x03DBF3 FF:DBE3: 69 01     ADC #$01
C - - - - 0x03DBF5 FF:DBE5: C9 16     CMP #$16
C - - - - 0x03DBF7 FF:DBE7: D0 E5     BNE bra_DBCE
C - - - - 0x03DBF9 FF:DBE9: 60        RTS

tbl_DBEA:
- D - - - 0x03DBFA FF:DBEA: 23        .byte $23    ; <も>
- D - - - 0x03DBFB FF:DBEB: 14        .byte $14    ; <と>
- D - - - 0x03DBFC FF:DBEC: 75        .byte $75    ; <ェ>

- D - - - 0x03DBFD FF:DBED: 0C        .byte $0C    ; <し>
- D - - - 0x03DBFE FF:DBEE: 14        .byte $14    ; <と>
- D - - - 0x03DBFF FF:DBEF: 34        .byte $34    ; <1>

- D - - - 0x03DC00 FF:DBF0: 12        .byte $12    ; <つ>
- D - - - 0x03DC01 FF:DBF1: 15        .byte $15    ; <な>
- D - - - 0x03DC02 FF:DBF2: 45        .byte $45    ; <オ>

sub_DBF3:
ofs_DBF3_03:
C - - - - 0x03DC03 FF:DBF3: AD 4F 04  LDA $044F
C - - - - 0x03DC06 FF:DBF6: 49 0B     EOR #$0B
C - - - - 0x03DC08 FF:DBF8: 8D FB 05  STA ram_команда_с_мячом
C - - - - 0x03DC0B FF:DBFB: 60        RTS

ofs_DBFC_02:
C - J - - 0x03DC0C FF:DBFC: AD 4F 04  LDA $044F
C - - - - 0x03DC0F FF:DBFF: 8D FB 05  STA ram_команда_с_мячом
C - - - - 0x03DC12 FF:DC02: 60        RTS

sub_DC07_задать_начальные_координаты_игрокам_по_расстановке_команды:
; умножение номера расстановки на 0B
C - - - - 0x03DC17 FF:DC07: AD 2C 00  LDA ram_расстановка_слева
C - - - - 0x03DC1A FF:DC0A: 0A        ASL
C - - - - 0x03DC1B FF:DC0B: 48        PHA
C - - - - 0x03DC1C FF:DC0C: 6D 2C 00  ADC ram_расстановка_слева
C - - - - 0x03DC1F FF:DC0F: 85 3A     STA ram_003A
C - - - - 0x03DC21 FF:DC11: 68        PLA
C - - - - 0x03DC22 FF:DC12: 0A        ASL
C - - - - 0x03DC23 FF:DC13: 0A        ASL
C - - - - 0x03DC24 FF:DC14: 65 3A     ADC ram_003A
C - - - - 0x03DC26 FF:DC16: 85 3A     STA ram_003A
C - - - - 0x03DC28 FF:DC18: AD 2E 00  LDA ram_расстановка_справа
C - - - - 0x03DC2B FF:DC1B: 0A        ASL
C - - - - 0x03DC2C FF:DC1C: 48        PHA
C - - - - 0x03DC2D FF:DC1D: 6D 2E 00  ADC ram_расстановка_справа
C - - - - 0x03DC30 FF:DC20: 85 3B     STA ram_003B
C - - - - 0x03DC32 FF:DC22: 68        PLA
C - - - - 0x03DC33 FF:DC23: 0A        ASL
C - - - - 0x03DC34 FF:DC24: 0A        ASL
C - - - - 0x03DC35 FF:DC25: 65 3B     ADC ram_003B
C - - - - 0x03DC37 FF:DC27: 85 3B     STA ram_003B
C - - - - 0x03DC39 FF:DC29: A9 00     LDA #$00
loc_DC2B_цикл:
; bzk тут несколько pla + pha для счетчика чтобы обновить флаги, по тактам будет экономичнее хранить счетчик в адресе
C D - - - 0x03DC3B FF:DC2B: 48        PHA
C - - - - 0x03DC3C FF:DC2C: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DC3F FF:DC2F: A6 3A     LDX ram_003A
C - - - - 0x03DC41 FF:DC31: E6 3A     INC ram_003A
C - - - - 0x03DC43 FF:DC33: 68        PLA
C - - - - 0x03DC44 FF:DC34: 48        PHA
C - - - - 0x03DC45 FF:DC35: C9 0B     CMP #$0B
C - - - - 0x03DC47 FF:DC37: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03DC4A FF:DC3A: 90 06     BCC bra_DC42
C - - - - 0x03DC4C FF:DC3C: A6 3B     LDX ram_003B
C - - - - 0x03DC4E FF:DC3E: 49 0B     EOR #$0B
C - - - - 0x03DC50 FF:DC40: E6 3B     INC ram_003B
bra_DC42:
C - - - - 0x03DC52 FF:DC42: A8        TAY
C - - - - 0x03DC53 FF:DC43: BD 87 DC  LDA tbl_DC87,X
C - - - - 0x03DC56 FF:DC46: 88        DEY
C - - - - 0x03DC57 FF:DC47: 30 03     BMI bra_DC4C
C - - - - 0x03DC59 FF:DC49: BD B3 DC  LDA tbl_DCB3,X
bra_DC4C:
C - - - - 0x03DC5C FF:DC4C: 20 C9 CD  JSR sub_CDC9_проверить_координаты_игрока
C - - - - 0x03DC5F FF:DC4F: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03DC62 FF:DC52: F0 0A     BEQ bra_DC5E
C - - - - 0x03DC64 FF:DC54: 98        TYA
C - - - - 0x03DC65 FF:DC55: 49 FF     EOR #$FF
C - - - - 0x03DC67 FF:DC57: A8        TAY
C - - - - 0x03DC68 FF:DC58: 8A        TXA
C - - - - 0x03DC69 FF:DC59: 49 FF     EOR #$FF
C - - - - 0x03DC6B FF:DC5B: AA        TAX
C - - - - 0x03DC6C FF:DC5C: C8        INY
C - - - - 0x03DC6D FF:DC5D: E8        INX
bra_DC5E:
C - - - - 0x03DC6E FF:DC5E: 98        TYA
C - - - - 0x03DC6F FF:DC5F: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03DC71 FF:DC61: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DC73 FF:DC63: 8A        TXA
C - - - - 0x03DC74 FF:DC64: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03DC76 FF:DC66: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DC78 FF:DC68: 68        PLA
C - - - - 0x03DC79 FF:DC69: 48        PHA
C - - - - 0x03DC7A FF:DC6A: F0 04     BEQ bra_DC70_кипер
C - - - - 0x03DC7C FF:DC6C: C9 0B     CMP #$0B
C - - - - 0x03DC7E FF:DC6E: D0 06     BNE bra_DC76_не_кипер
bra_DC70_кипер:
C - - - - 0x03DC80 FF:DC70: A9 00     LDA #$00
C - - - - 0x03DC82 FF:DC72: A0 07     LDY #con_величина_дисбаланса
C - - - - 0x03DC84 FF:DC74: 91 34     STA (ram_plr_data),Y
bra_DC76_не_кипер:
C - - - - 0x03DC86 FF:DC76: 68        PLA
C - - - - 0x03DC87 FF:DC77: 18        CLC
C - - - - 0x03DC88 FF:DC78: 69 01     ADC #$01
C - - - - 0x03DC8A FF:DC7A: C9 16     CMP #$16
C - - - - 0x03DC8C FF:DC7C: F0 03     BEQ bra_DC81
C - - - - 0x03DC8E FF:DC7E: 4C 2B DC  JMP loc_DC2B_цикл
bra_DC81:
C - - - - 0x03DC91 FF:DC81: 60        RTS

tbl_DC82:
- D - - - 0x03DC92 FF:DC82: 05        .byte $05    ; <お>
- D - - - 0x03DC93 FF:DC83: 06        .byte $06    ; <か>
- D - - - 0x03DC94 FF:DC84: 07        .byte $07    ; <き>
- D - - - 0x03DC95 FF:DC85: 09        .byte $09    ; <け>
- D - - - 0x03DC96 FF:DC86: 0A        .byte $0A    ; <こ>

tbl_DC87:
- D - - - 0x03DC97 FF:DC87: 05        .byte $05    ; <お>
- D - - - 0x03DC98 FF:DC88: 3D        .byte $3D    ; <+>
- D - - - 0x03DC99 FF:DC89: 46        .byte $46    ; <カ>
- D - - - 0x03DC9A FF:DC8A: 41        .byte $41    ; <ア>
- D - - - 0x03DC9B FF:DC8B: 2A        .byte $2A    ; <れ>
- D - - - 0x03DC9C FF:DC8C: 57        .byte $57    ; <ヌ>
- D - - - 0x03DC9D FF:DC8D: 77        .byte $77    ; <:>
- D - - - 0x03DC9E FF:DC8E: 5C        .byte $5C    ; <フ>
- D - - - 0x03DC9F FF:DC8F: 71        .byte $71    ; <ュ>
- D - - - 0x03DCA0 FF:DC90: 72        .byte $72    ; <ョ>
- D - - - 0x03DCA1 FF:DC91: 6C        .byte $6C    ; <ワ>
- D - - - 0x03DCA2 FF:DC92: 05        .byte $05    ; <お>
- D - - - 0x03DCA3 FF:DC93: 3D        .byte $3D    ; <+>
- D - - - 0x03DCA4 FF:DC94: 46        .byte $46    ; <カ>
- D - - - 0x03DCA5 FF:DC95: 41        .byte $41    ; <ア>
- D - - - 0x03DCA6 FF:DC96: 2A        .byte $2A    ; <れ>
- D - - - 0x03DCA7 FF:DC97: 63        .byte $63    ; <モ>
- D - - - 0x03DCA8 FF:DC98: 68        .byte $68    ; <リ>
- D - - - 0x03DCA9 FF:DC99: 5A        .byte $5A    ; <ハ>
- D - - - 0x03DCAA FF:DC9A: 72        .byte $72    ; <ョ>
- D - - - 0x03DCAB FF:DC9B: 59        .byte $59    ; <ノ>
- D - - - 0x03DCAC FF:DC9C: 71        .byte $71    ; <ュ>
- D - - - 0x03DCAD FF:DC9D: 05        .byte $05    ; <お>
- D - - - 0x03DCAE FF:DC9E: 3D        .byte $3D    ; <+>
- D - - - 0x03DCAF FF:DC9F: 46        .byte $46    ; <カ>
- D - - - 0x03DCB0 FF:DCA0: 35        .byte $35    ; <2>
- D - - - 0x03DCB1 FF:DCA1: 4C        .byte $4C    ; <シ>
- D - - - 0x03DCB2 FF:DCA2: 63        .byte $63    ; <モ>
- D - - - 0x03DCB3 FF:DCA3: 68        .byte $68    ; <リ>
- D - - - 0x03DCB4 FF:DCA4: 4F        .byte $4F    ; <ソ>
- D - - - 0x03DCB5 FF:DCA5: 72        .byte $72    ; <ョ>
- D - - - 0x03DCB6 FF:DCA6: 5A        .byte $5A    ; <ハ>
- D - - - 0x03DCB7 FF:DCA7: 71        .byte $71    ; <ュ>
- D - - - 0x03DCB8 FF:DCA8: 05        .byte $05    ; <お>
- D - - - 0x03DCB9 FF:DCA9: 3D        .byte $3D    ; <+>
- D - - - 0x03DCBA FF:DCAA: 46        .byte $46    ; <カ>
- D - - - 0x03DCBB FF:DCAB: 35        .byte $35    ; <2>
- D - - - 0x03DCBC FF:DCAC: 37        .byte $37    ; <4>
- D - - - 0x03DCBD FF:DCAD: 59        .byte $59    ; <ノ>
- D - - - 0x03DCBE FF:DCAE: 77        .byte $77    ; <:>
- D - - - 0x03DCBF FF:DCAF: 68        .byte $68    ; <リ>
- D - - - 0x03DCC0 FF:DCB0: 72        .byte $72    ; <ョ>
- D - - - 0x03DCC1 FF:DCB1: 71        .byte $71    ; <ュ>
- D - - - 0x03DCC2 FF:DCB2: 63        .byte $63    ; <モ>

tbl_DCB3:
- D - - - 0x03DCC3 FF:DCB3: EA        .byte $EA
- D - - - 0x03DCC4 FF:DCB4: BE        .byte $BE    ; <ダ>
- D - - - 0x03DCC5 FF:DCB5: B5        .byte $B5    ; <ギ>
- D - - - 0x03DCC6 FF:DCB6: AE        .byte $AE    ; <ど>
- D - - - 0x03DCC7 FF:DCB7: C5        .byte $C5    ; <ブ>
- D - - - 0x03DCC8 FF:DCB8: A4        .byte $A4    ; <ご>
- D - - - 0x03DCC9 FF:DCB9: 79        .byte $79    ; <!>
- D - - - 0x03DCCA FF:DCBA: 9F        .byte $9F
- D - - - 0x03DCCB FF:DCBB: 97        .byte $97
- D - - - 0x03DCCC FF:DCBC: 94        .byte $94
- D - - - 0x03DCCD FF:DCBD: 82        .byte $82    ; <B>
- D - - - 0x03DCCE FF:DCBE: EA        .byte $EA
- D - - - 0x03DCCF FF:DCBF: BE        .byte $BE    ; <ダ>
- D - - - 0x03DCD0 FF:DCC0: B5        .byte $B5    ; <ギ>
- D - - - 0x03DCD1 FF:DCC1: AE        .byte $AE    ; <ど>
- D - - - 0x03DCD2 FF:DCC2: C5        .byte $C5    ; <ブ>
- D - - - 0x03DCD3 FF:DCC3: 99        .byte $99
- D - - - 0x03DCD4 FF:DCC4: 92        .byte $92    ; <W>
- D - - - 0x03DCD5 FF:DCC5: 95        .byte $95
- D - - - 0x03DCD6 FF:DCC6: 7B        .byte $7B    ; <。>
- D - - - 0x03DCD7 FF:DCC7: 96        .byte $96
- D - - - 0x03DCD8 FF:DCC8: 80        .byte $80
- D - - - 0x03DCD9 FF:DCC9: EA        .byte $EA
- D - - - 0x03DCDA FF:DCCA: B2        .byte $B2    ; <べ>
- D - - - 0x03DCDB FF:DCCB: A9        .byte $A9    ; <ぞ>
- D - - - 0x03DCDC FF:DCCC: BA        .byte $BA    ; <ジ>
- D - - - 0x03DCDD FF:DCCD: 96        .byte $96
- D - - - 0x03DCDE FF:DCCE: 99        .byte $99
- D - - - 0x03DCDF FF:DCCF: 92        .byte $92    ; <W>
- D - - - 0x03DCE0 FF:DCD0: 94        .byte $94
- D - - - 0x03DCE1 FF:DCD1: 7B        .byte $7B    ; <。>
- D - - - 0x03DCE2 FF:DCD2: 95        .byte $95
- D - - - 0x03DCE3 FF:DCD3: 80        .byte $80
- D - - - 0x03DCE4 FF:DCD4: EA        .byte $EA
- D - - - 0x03DCE5 FF:DCD5: B2        .byte $B2    ; <べ>
- D - - - 0x03DCE6 FF:DCD6: A9        .byte $A9    ; <ぞ>
- D - - - 0x03DCE7 FF:DCD7: BB        .byte $BB    ; <ズ>
- D - - - 0x03DCE8 FF:DCD8: B9        .byte $B9    ; <ザ>
- D - - - 0x03DCE9 FF:DCD9: A2        .byte $A2    ; <ぐ>
- D - - - 0x03DCEA FF:DCDA: 79        .byte $79    ; <!>
- D - - - 0x03DCEB FF:DCDB: 9F        .byte $9F
- D - - - 0x03DCEC FF:DCDC: 95        .byte $95
- D - - - 0x03DCED FF:DCDD: 97        .byte $97
- D - - - 0x03DCEE FF:DCDE: A4        .byte $A4    ; <ご>

.export sub_0x03DCEF
sub_0x03DCEF:
sub_DCDF:
C D - - - 0x03DCEF FF:DCDF: AD 4E 04  LDA ram_высота_мяча
C - - - - 0x03DCF2 FF:DCE2: D0 0B     BNE bra_DCEF_выход
C - - - - 0x03DCF4 FF:DCE4: AD E2 00  LDA ram_рандом_2
C - - - - 0x03DCF7 FF:DCE7: 29 01     AND #$01
C - - - - 0x03DCF9 FF:DCE9: 18        CLC
C - - - - 0x03DCFA FF:DCEA: 69 01     ADC #$01
C - - - - 0x03DCFC FF:DCEC: 8D 4E 04  STA ram_высота_мяча
bra_DCEF_выход:
C - - - - 0x03DCFF FF:DCEF: 60        RTS

.export loc_0x03DD0D
loc_0x03DD0D:
C D - - - 0x03DD0D FF:DCFD: A9 FF     LDA #$FF
C - - - - 0x03DD0F FF:DCFF: 8D 1A 06  STA $061A
.export loc_0x03DD12
loc_0x03DD12:
.export ofs_0x03DD12
ofs_0x03DD12:
C D - - - 0x03DD12 FF:DD02: 20 81 DD  JSR sub_DD81
C - - - - 0x03DD15 FF:DD05: 20 47 DD  JSR sub_DD47
C - - - - 0x03DD18 FF:DD08: 08        PHP
C - - - - 0x03DD19 FF:DD09: A9 00     LDA #$00
C - - - - 0x03DD1B FF:DD0B: 8D 1B 06  STA $061B
C - - - - 0x03DD1E FF:DD0E: 20 3E E7  JSR sub_E73E
C - - - - 0x03DD21 FF:DD11: 28        PLP
C - - - - 0x03DD22 FF:DD12: 90 08     BCC bra_DD1C
C - - - - 0x03DD24 FF:DD14: A9 2D     LDA #$2D
C - - - - 0x03DD26 FF:DD16: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DD29 FF:DD19: 4C 1B 80  JMP loc_0x034BF5
bra_DD1C:
C - - - - 0x03DD2C FF:DD1C: 20 77 CD  JSR sub_CD77_адрес_игрока_адрес_игрока_команды_без_мяча
C - - - - 0x03DD2F FF:DD1F: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03DD31 FF:DD21: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DD33 FF:DD23: D0 11     BNE bra_DD36
C - - - - 0x03DD35 FF:DD25: A9 1A     LDA #$1A
C - - - - 0x03DD37 FF:DD27: 85 24     STA ram_для_5114
C - - - - 0x03DD39 FF:DD29: A9 1B     LDA #$1B
C - - - - 0x03DD3B FF:DD2B: 85 25     STA ram_для_5115
C - - - - 0x03DD3D FF:DD2D: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03DD40 FF:DD30: A2 50     LDX #$50
C - - - - 0x03DD42 FF:DD32: 9A        TXS
C - - - - 0x03DD43 FF:DD33: 4C 06 80  JMP loc_0x034508
bra_DD36:
C - - - - 0x03DD46 FF:DD36: A9 1A     LDA #$1A
C - - - - 0x03DD48 FF:DD38: 85 24     STA ram_для_5114
C - - - - 0x03DD4A FF:DD3A: A9 1B     LDA #$1B
C - - - - 0x03DD4C FF:DD3C: 85 25     STA ram_для_5115
C - - - - 0x03DD4E FF:DD3E: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03DD51 FF:DD41: A2 50     LDX #$50
C - - - - 0x03DD53 FF:DD43: 9A        TXS
; сработало при volley в пустые ворота
C - - - - 0x03DD54 FF:DD44: 4C 18 80  JMP loc_0x034903

sub_DD47:
C - - - - 0x03DD57 FF:DD47: AD 3C 04  LDA ram_подтип_действия_атаки
C - - - - 0x03DD5A FF:DD4A: D0 22     BNE bra_DD6E
C - - - - 0x03DD5C FF:DD4C: AD 35 06  LDA $0635
C - - - - 0x03DD5F FF:DD4F: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03DD62 FF:DD52: F0 02     BEQ bra_DD56
C - - - - 0x03DD64 FF:DD54: 49 FF     EOR #$FF
bra_DD56:
C - - - - 0x03DD66 FF:DD56: C9 80     CMP #$80
C - - - - 0x03DD68 FF:DD58: B0 14     BCS bra_DD6E
C - - - - 0x03DD6A FF:DD5A: 69 4F     ADC #$4F
C - - - - 0x03DD6C FF:DD5C: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03DD6F FF:DD5F: F0 02     BEQ bra_DD63
- - - - - 0x03DD71 FF:DD61: 49 FF     EOR #$FF
bra_DD63:
C - - - - 0x03DD73 FF:DD63: AA        TAX
C - - - - 0x03DD74 FF:DD64: A0 7C     LDY #$7C
C - - - - 0x03DD76 FF:DD66: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03DD79 FF:DD69: 8D 38 06  STA $0638
C - - - - 0x03DD7C FF:DD6C: 38        SEC
C - - - - 0x03DD7D FF:DD6D: 60        RTS
bra_DD6E:
C - - - - 0x03DD7E FF:DD6E: A9 E9     LDA #$E9
C - - - - 0x03DD80 FF:DD70: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03DD83 FF:DD73: F0 02     BEQ bra_DD77
C - - - - 0x03DD85 FF:DD75: A9 05     LDA #$05
bra_DD77:
C - - - - 0x03DD87 FF:DD77: 4E E2 00  LSR ram_рандом_2
C - - - - 0x03DD8A FF:DD7A: 69 00     ADC #$00
C - - - - 0x03DD8C FF:DD7C: 8D 38 06  STA $0638
C - - - - 0x03DD8F FF:DD7F: 18        CLC
C - - - - 0x03DD90 FF:DD80: 60        RTS

sub_DD81:
C - - - - 0x03DD91 FF:DD81: AD 35 06  LDA $0635
C - - - - 0x03DD94 FF:DD84: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03DD97 FF:DD87: F0 05     BEQ bra_DD8E
C - - - - 0x03DD99 FF:DD89: 49 FF     EOR #$FF
C - - - - 0x03DD9B FF:DD8B: 18        CLC
C - - - - 0x03DD9C FF:DD8C: 69 01     ADC #$01
bra_DD8E:
C - - - - 0x03DD9E FF:DD8E: C9 A0     CMP #$A0
C - - - - 0x03DDA0 FF:DD90: B0 0C     BCS bra_DD9E
C - - - - 0x03DDA2 FF:DD92: 38        SEC
C - - - - 0x03DDA3 FF:DD93: E9 30     SBC #$30
C - - - - 0x03DDA5 FF:DD95: 4A        LSR
C - - - - 0x03DDA6 FF:DD96: 4A        LSR
C - - - - 0x03DDA7 FF:DD97: 4A        LSR
C - - - - 0x03DDA8 FF:DD98: AA        TAX
C - - - - 0x03DDA9 FF:DD99: BD CB DD  LDA tbl_DDCB,X
C - - - - 0x03DDAC FF:DD9C: D0 20     BNE bra_DDBE
bra_DD9E:
C - - - - 0x03DDAE FF:DD9E: 38        SEC
C - - - - 0x03DDAF FF:DD9F: E9 A0     SBC #$A0
C - - - - 0x03DDB1 FF:DDA1: 4A        LSR
C - - - - 0x03DDB2 FF:DDA2: 4A        LSR
C - - - - 0x03DDB3 FF:DDA3: 4A        LSR
C - - - - 0x03DDB4 FF:DDA4: 85 3A     STA ram_003A
C - - - - 0x03DDB6 FF:DDA6: AD 37 06  LDA $0637
C - - - - 0x03DDB9 FF:DDA9: 10 02     BPL bra_DDAD
C - - - - 0x03DDBB FF:DDAB: 49 FF     EOR #$FF
bra_DDAD:
C - - - - 0x03DDBD FF:DDAD: 38        SEC
C - - - - 0x03DDBE FF:DDAE: E9 50     SBC #$50
C - - - - 0x03DDC0 FF:DDB0: 29 38     AND #$38
C - - - - 0x03DDC2 FF:DDB2: 4A        LSR
C - - - - 0x03DDC3 FF:DDB3: 85 3B     STA ram_003B
C - - - - 0x03DDC5 FF:DDB5: 4A        LSR
C - - - - 0x03DDC6 FF:DDB6: 65 3B     ADC ram_003B
C - - - - 0x03DDC8 FF:DDB8: 65 3A     ADC ram_003A
C - - - - 0x03DDCA FF:DDBA: AA        TAX
C - - - - 0x03DDCB FF:DDBB: BD D9 DD  LDA tbl_DDD9,X
bra_DDBE:
C - - - - 0x03DDCE FF:DDBE: 8D 2B 06  STA $062B
C - - - - 0x03DDD1 FF:DDC1: 0A        ASL
C - - - - 0x03DDD2 FF:DDC2: 0A        ASL
C - - - - 0x03DDD3 FF:DDC3: 0A        ASL
C - - - - 0x03DDD4 FF:DDC4: 6D 2B 06  ADC $062B
C - - - - 0x03DDD7 FF:DDC7: 8D 2B 06  STA $062B
C - - - - 0x03DDDA FF:DDCA: 60        RTS

tbl_DDCB:
- - - - - 0x03DDDB FF:DDCB: 13        .byte $13    ; <て>
- D - - - 0x03DDDC FF:DDCC: 12        .byte $12    ; <つ>
- D - - - 0x03DDDD FF:DDCD: 11        .byte $11    ; <ち>
- - - - - 0x03DDDE FF:DDCE: 10        .byte $10    ; <た>
- D - - - 0x03DDDF FF:DDCF: 0F        .byte $0F    ; <そ>
- D - - - 0x03DDE0 FF:DDD0: 0E        .byte $0E    ; <せ>
- D - - - 0x03DDE1 FF:DDD1: 0D        .byte $0D    ; <す>
- D - - - 0x03DDE2 FF:DDD2: 0C        .byte $0C    ; <し>
- D - - - 0x03DDE3 FF:DDD3: 0B        .byte $0B    ; <さ>
- D - - - 0x03DDE4 FF:DDD4: 0A        .byte $0A    ; <こ>
- D - - - 0x03DDE5 FF:DDD5: 09        .byte $09    ; <け>
- D - - - 0x03DDE6 FF:DDD6: 08        .byte $08    ; <く>
- D - - - 0x03DDE7 FF:DDD7: 07        .byte $07    ; <き>
- D - - - 0x03DDE8 FF:DDD8: 06        .byte $06    ; <か>

tbl_DDD9:
- D - - - 0x03DDE9 FF:DDD9: 05        .byte $05    ; <お>
- - - - - 0x03DDEA FF:DDDA: 05        .byte $05    ; <お>
- D - - - 0x03DDEB FF:DDDB: 05        .byte $05    ; <お>
- - - - - 0x03DDEC FF:DDDC: 05        .byte $05    ; <お>
- - - - - 0x03DDED FF:DDDD: 05        .byte $05    ; <お>
- D - - - 0x03DDEE FF:DDDE: 05        .byte $05    ; <お>
- - - - - 0x03DDEF FF:DDDF: 05        .byte $05    ; <お>
- D - - - 0x03DDF0 FF:DDE0: 04        .byte $04    ; <え>
- D - - - 0x03DDF1 FF:DDE1: 04        .byte $04    ; <え>
- D - - - 0x03DDF2 FF:DDE2: 04        .byte $04    ; <え>
- D - - - 0x03DDF3 FF:DDE3: 04        .byte $04    ; <え>
- D - - - 0x03DDF4 FF:DDE4: 04        .byte $04    ; <え>
- D - - - 0x03DDF5 FF:DDE5: 05        .byte $05    ; <お>
- D - - - 0x03DDF6 FF:DDE6: 04        .byte $04    ; <え>
- D - - - 0x03DDF7 FF:DDE7: 03        .byte $03    ; <う>
- D - - - 0x03DDF8 FF:DDE8: 03        .byte $03    ; <う>
- D - - - 0x03DDF9 FF:DDE9: 03        .byte $03    ; <う>
- D - - - 0x03DDFA FF:DDEA: 03        .byte $03    ; <う>
- D - - - 0x03DDFB FF:DDEB: 05        .byte $05    ; <お>
- D - - - 0x03DDFC FF:DDEC: 04        .byte $04    ; <え>
- D - - - 0x03DDFD FF:DDED: 03        .byte $03    ; <う>
- D - - - 0x03DDFE FF:DDEE: 02        .byte $02    ; <い>
- D - - - 0x03DDFF FF:DDEF: 02        .byte $02    ; <い>
- D - - - 0x03DE00 FF:DDF0: 02        .byte $02    ; <い>
- D - - - 0x03DE01 FF:DDF1: 05        .byte $05    ; <お>
- D - - - 0x03DE02 FF:DDF2: 04        .byte $04    ; <え>
- D - - - 0x03DE03 FF:DDF3: 03        .byte $03    ; <う>
- D - - - 0x03DE04 FF:DDF4: 02        .byte $02    ; <い>
- D - - - 0x03DE05 FF:DDF5: 01        .byte $01    ; <あ>
- D - - - 0x03DE06 FF:DDF6: 01        .byte $01    ; <あ>
- D - - - 0x03DE07 FF:DDF7: 05        .byte $05    ; <お>
- D - - - 0x03DE08 FF:DDF8: 04        .byte $04    ; <え>
- D - - - 0x03DE09 FF:DDF9: 03        .byte $03    ; <う>
- D - - - 0x03DE0A FF:DDFA: 02        .byte $02    ; <い>
- D - - - 0x03DE0B FF:DDFB: 01        .byte $01    ; <あ>
- D - - - 0x03DE0C FF:DDFC: 00        .byte $00

.export loc_0x03DE0D
loc_0x03DE0D:
C D - - - 0x03DE0D FF:DDFD: AD E2 00  LDA ram_рандом_2
C - - - - 0x03DE10 FF:DE00: 29 07     AND #$07
C - - - - 0x03DE12 FF:DE02: C9 06     CMP #$06
C - - - - 0x03DE14 FF:DE04: 90 02     BCC bra_DE08
C - - - - 0x03DE16 FF:DE06: E9 06     SBC #$06
bra_DE08:
C - - - - 0x03DE18 FF:DE08: 18        CLC
C - - - - 0x03DE19 FF:DE09: 69 05     ADC #$05
C - - - - 0x03DE1B FF:DE0B: 6D FB 05  ADC ram_команда_с_мячом
C - - - - 0x03DE1E FF:DE0E: 8D FC 05  STA ram_принимающий
C - - - - 0x03DE21 FF:DE11: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03DE24 FF:DE14: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x03DE27 FF:DE17: 20 EC E6  JSR sub_E6EC
C - - - - 0x03DE2A FF:DE1A: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03DE2C FF:DE1C: A9 00     LDA #$00
C - - - - 0x03DE2E FF:DE1E: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DE30 FF:DE20: A9 00     LDA #$00
C - - - - 0x03DE32 FF:DE22: 8D 28 06  STA ram_индекс_буфера
C - - - - 0x03DE35 FF:DE25: 8D 4E 04  STA ram_высота_мяча
C - - - - 0x03DE38 FF:DE28: 20 DF DC  JSR sub_DCDF
C - - - - 0x03DE3B FF:DE2B: A9 01     LDA #$01
C - - - - 0x03DE3D FF:DE2D: 8D 3B 04  STA ram_действие_атаки
C - - - - 0x03DE40 FF:DE30: A9 00     LDA #$00
C - - - - 0x03DE42 FF:DE32: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - 0x03DE45 FF:DE35: 20 93 D0  JSR sub_D093_выбор_мелодии_команды
C - - - - 0x03DE48 FF:DE38: A9 3A     LDA #$3A
C - - - - 0x03DE4A FF:DE3A: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DE4D FF:DE3D: A9 1A     LDA #$1A
C - - - - 0x03DE4F FF:DE3F: 8D 1A 06  STA $061A
C - - - - 0x03DE52 FF:DE42: 4C 5E DE  BNE bra_DE5E

.export loc_0x03DE62
loc_0x03DE62:
.export ofs_0x03DE62
ofs_0x03DE62:
C D - - - 0x03DE62 FF:DE52: A9 FF     LDA #$FF
C - - - - 0x03DE64 FF:DE54: 2C 28 06  BIT ram_индекс_буфера
C - - - - 0x03DE67 FF:DE57: 10 02     BPL bra_DE5B
C - - - - 0x03DE69 FF:DE59: A9 26     LDA #$26
bra_DE5B:
C - - - - 0x03DE6B FF:DE5B: 8D 1A 06  STA $061A
.export loc_0x03DE6E
loc_0x03DE6E:
bra_DE5E:
C D - - - 0x03DE6E FF:DE5E: 20 59 E0  JSR sub_E059
C - - - - 0x03DE71 FF:DE61: 20 8B DF  JSR sub_DF8B
C - - - - 0x03DE74 FF:DE64: A9 01     LDA #$01
C - - - - 0x03DE76 FF:DE66: 8D 1B 06  STA $061B
C - - - - 0x03DE79 FF:DE69: 20 3E E7  JSR sub_E73E
.export loc_0x03DE7C
loc_0x03DE7C:
C D - - - 0x03DE7C FF:DE6C: AD FC 05  LDA ram_принимающий
C - - - - 0x03DE7F FF:DE6F: C9 FF     CMP #$FF
C - - - - 0x03DE81 FF:DE71: F0 23     BEQ bra_DE96
C - - - - 0x03DE83 FF:DE73: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x03DE86 FF:DE76: 20 EC E6  JSR sub_E6EC
C - - - - 0x03DE89 FF:DE79: 48        PHA
C - - - - 0x03DE8C FF:DE7C: A9 1A     LDA #$1A
C - - - - 0x03DE8E FF:DE7E: 85 24     STA ram_для_5114
C - - - - 0x03DE90 FF:DE80: A9 1B     LDA #$1B
C - - - - 0x03DE92 FF:DE82: 85 25     STA ram_для_5115
C - - - - 0x03DE94 FF:DE84: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03DE97 FF:DE87: 68        PLA
C - - - - 0x03DE98 FF:DE88: 20 1E 80  JSR sub_0x034B5A
C - - - - 0x03DE9B FF:DE8B: A9 1C     LDA #$1C
C - - - - 0x03DE9D FF:DE8D: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DEA0 FF:DE90: A2 50     LDX #$50
C - - - - 0x03DEA2 FF:DE92: 9A        TXS
C - - - - 0x03DEA3 FF:DE93: 4C DF E0  JMP loc_E0DF
bra_DE96:
loc_DE96:
C D - - - 0x03DEA6 FF:DE96: AD 2B 06  LDA $062B
C - - - - 0x03DEA9 FF:DE99: 8D 30 04  STA $0430
C - - - - 0x03DEAC FF:DE9C: A9 01     LDA #$01
C - - - - 0x03DEAE FF:DE9E: 8D FF 05  STA $05FF
C - - - - 0x03DEB1 FF:DEA1: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03DEB4 FF:DEA4: 20 4A DF  JSR sub_DF4A
C - - - - 0x03DEB7 FF:DEA7: 8D 31 04  STA $0431
C - - - - 0x03DEBA FF:DEAA: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03DEBD FF:DEAD: 49 0B     EOR #$0B
C - - - - 0x03DEBF FF:DEAF: 20 4A DF  JSR sub_DF4A
C - - - - 0x03DEC2 FF:DEB2: 8D 32 04  STA $0432
bra_DEB5:
C - - - - 0x03DEC5 FF:DEB5: AD 31 04  LDA $0431
C - - - - 0x03DEC8 FF:DEB8: A2 23     LDX #$23
C - - - - 0x03DECA FF:DEBA: 20 29 DF  JSR sub_DF29
C - - - - 0x03DECD FF:DEBD: AD 31 04  LDA $0431
C - - - - 0x03DED0 FF:DEC0: B0 1A     BCS bra_DEDC
C - - - - 0x03DED2 FF:DEC2: AD 32 04  LDA $0432
C - - - - 0x03DED5 FF:DEC5: A2 24     LDX #$24
C - - - - 0x03DED7 FF:DEC7: 20 29 DF  JSR sub_DF29
C - - - - 0x03DEDA FF:DECA: AD 32 04  LDA $0432
C - - - - 0x03DEDD FF:DECD: B0 0D     BCS bra_DEDC
C - - - - 0x03DEDF FF:DECF: CE 30 04  DEC $0430
C - - - - 0x03DEE2 FF:DED2: D0 E1     BNE bra_DEB5
C - - - - 0x03DEE4 FF:DED4: A9 34     LDA #$34
C - - - - 0x03DEE6 FF:DED6: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
; сработало когда мой перс с быстрой анимацией выбивает головой мяч из моей штрафной в поле, и мяч ударился об землю
C - - - - 0x03DEE9 FF:DED9: 4C 1B 80  JMP loc_0x034BF5
bra_DEDC:
C - - - - 0x03DEEC FF:DEDC: A2 00     LDX #$00
C - - - - 0x03DEEE FF:DEDE: C9 0B     CMP #$0B
C - - - - 0x03DEF0 FF:DEE0: 90 02     BCC bra_DEE4
C - - - - 0x03DEF2 FF:DEE2: A2 0B     LDX #$0B
bra_DEE4:
C - - - - 0x03DEF4 FF:DEE4: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x03DEF7 FF:DEE7: A0 1C     LDY #$1C
C - - - - 0x03DEF9 FF:DEE9: 8A        TXA
C - - - - 0x03DEFA FF:DEEA: 4D FB 05  EOR ram_команда_с_мячом
C - - - - 0x03DEFD FF:DEED: 8E FB 05  STX ram_команда_с_мячом
C - - - - 0x03DF00 FF:DEF0: F0 05     BEQ bra_DEF7
C - - - - 0x03DF02 FF:DEF2: 20 93 D0  JSR sub_D093_выбор_мелодии_команды
C - - - - 0x03DF05 FF:DEF5: A0 3E     LDY #$3E
bra_DEF7:
C - - - - 0x03DF07 FF:DEF7: 98        TYA
C - - - - 0x03DF08 FF:DEF8: 48        PHA
C - - - - 0x03DF09 FF:DEF9: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03DF0C FF:DEFC: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DF0F FF:DEFF: AD 35 06  LDA $0635
C - - - - 0x03DF12 FF:DF02: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03DF14 FF:DF04: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DF16 FF:DF06: AD 37 06  LDA $0637
C - - - - 0x03DF19 FF:DF09: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03DF1B FF:DF0B: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DF1D FF:DF0D: 48        PHA
C - - - - 0x03DF20 FF:DF10: A9 1A     LDA #$1A
C - - - - 0x03DF22 FF:DF12: 85 24     STA ram_для_5114
C - - - - 0x03DF24 FF:DF14: A9 1B     LDA #$1B
C - - - - 0x03DF26 FF:DF16: 85 25     STA ram_для_5115
C - - - - 0x03DF28 FF:DF18: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03DF2B FF:DF1B: 68        PLA
C - - - - 0x03DF2C FF:DF1C: 20 1E 80  JSR sub_0x034B5A
C - - - - 0x03DF2F FF:DF1F: 68        PLA
C - - - - 0x03DF30 FF:DF20: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DF33 FF:DF23: A2 50     LDX #$50
C - - - - 0x03DF35 FF:DF25: 9A        TXS
C - - - - 0x03DF36 FF:DF26: 4C DF E0  JMP loc_E0DF

sub_DF29:
C - - - - 0x03DF39 FF:DF29: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03DF3C FF:DF2C: A9 01     LDA #$01
C - - - - 0x03DF3E FF:DF2E: 8D FF 05  STA $05FF
C - - - - 0x03DF41 FF:DF31: 20 54 E8  JSR sub_E854
C - - - - 0x03DF44 FF:DF34: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03DF46 FF:DF36: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DF48 FF:DF38: AA        TAX
C - - - - 0x03DF49 FF:DF39: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03DF4B FF:DF3B: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03DF4D FF:DF3D: A8        TAY
C - - - - 0x03DF4E FF:DF3E: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03DF51 FF:DF41: CD FE 05  CMP $05FE
C - - - - 0x03DF54 FF:DF44: D0 02     BNE bra_DF48
C - - - - 0x03DF56 FF:DF46: 38        SEC
C - - - - 0x03DF57 FF:DF47: 60        RTS
bra_DF48:
C - - - - 0x03DF58 FF:DF48: 18        CLC
C - - - - 0x03DF59 FF:DF49: 60        RTS

sub_DF4A:
C - - - - 0x03DF5A FF:DF4A: 20 99 CE  JSR sub_CE99_вычислить_управляемого
C - - - - 0x03DF5D FF:DF4D: 48        PHA
C - - - - 0x03DF5E FF:DF4E: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03DF61 FF:DF51: AD FE 05  LDA $05FE
C - - - - 0x03DF64 FF:DF54: A0 09     LDY #con_игрок_09
C - - - - 0x03DF66 FF:DF56: 91 34     STA (ram_plr_data),Y
C - - - - 0x03DF68 FF:DF58: 68        PLA
C - - - - 0x03DF69 FF:DF59: 60        RTS

sub_DF8B:
C - - - - 0x03DF9B FF:DF8B: AD 38 06  LDA $0638
C - - - - 0x03DF9E FF:DF8E: 20 C9 CD  JSR sub_CDC9_проверить_координаты_игрока
C - - - - 0x03DFA1 FF:DF91: 8A        TXA
C - - - - 0x03DFA2 FF:DF92: 38        SEC
C - - - - 0x03DFA3 FF:DF93: ED 35 06  SBC $0635
C - - - - 0x03DFA6 FF:DF96: B0 04     BCS bra_DF9C
C - - - - 0x03DFA8 FF:DF98: 49 FF     EOR #$FF
C - - - - 0x03DFAA FF:DF9A: 69 01     ADC #$01
bra_DF9C:
C - - - - 0x03DFAC FF:DF9C: 85 3A     STA ram_003A
C - - - - 0x03DFAE FF:DF9E: 98        TYA
C - - - - 0x03DFAF FF:DF9F: 38        SEC
C - - - - 0x03DFB0 FF:DFA0: ED 37 06  SBC $0637
C - - - - 0x03DFB3 FF:DFA3: B0 04     BCS bra_DFA9
C - - - - 0x03DFB5 FF:DFA5: 49 FF     EOR #$FF
C - - - - 0x03DFB7 FF:DFA7: 69 01     ADC #$01
bra_DFA9:
C - - - - 0x03DFB9 FF:DFA9: A8        TAY
C - - - - 0x03DFBA FF:DFAA: 38        SEC
C - - - - 0x03DFBB FF:DFAB: E5 3A     SBC ram_003A
C - - - - 0x03DFBD FF:DFAD: B0 02     BCS bra_DFB1
C - - - - 0x03DFBF FF:DFAF: A4 3A     LDY ram_003A
bra_DFB1:
C - - - - 0x03DFC1 FF:DFB1: 98        TYA
C - - - - 0x03DFC2 FF:DFB2: 4A        LSR
C - - - - 0x03DFC3 FF:DFB3: 4A        LSR
C - - - - 0x03DFC4 FF:DFB4: 4A        LSR
C - - - - 0x03DFC5 FF:DFB5: AA        TAX
C - - - - 0x03DFC6 FF:DFB6: BD BD DF  LDA tbl_DFBD,X
C - - - - 0x03DFC9 FF:DFB9: 8D 2B 06  STA $062B
C - - - - 0x03DFCC FF:DFBC: 60        RTS

tbl_DFBD:
- D - - - 0x03DFCD FF:DFBD: 02        .byte $02    ; <い>
- D - - - 0x03DFCE FF:DFBE: 03        .byte $03    ; <う>
- D - - - 0x03DFCF FF:DFBF: 03        .byte $03    ; <う>
- D - - - 0x03DFD0 FF:DFC0: 03        .byte $03    ; <う>
- D - - - 0x03DFD1 FF:DFC1: 03        .byte $03    ; <う>
- D - - - 0x03DFD2 FF:DFC2: 04        .byte $04    ; <え>
- D - - - 0x03DFD3 FF:DFC3: 04        .byte $04    ; <え>
- D - - - 0x03DFD4 FF:DFC4: 04        .byte $04    ; <え>
- D - - - 0x03DFD5 FF:DFC5: 04        .byte $04    ; <え>
- D - - - 0x03DFD6 FF:DFC6: 04        .byte $04    ; <え>
- D - - - 0x03DFD7 FF:DFC7: 04        .byte $04    ; <え>
- D - - - 0x03DFD8 FF:DFC8: 05        .byte $05    ; <お>
- D - - - 0x03DFD9 FF:DFC9: 05        .byte $05    ; <お>
- D - - - 0x03DFDA FF:DFCA: 05        .byte $05    ; <お>
- - - - - 0x03DFDB FF:DFCB: 05        .byte $05    ; <お>
- D - - - 0x03DFDC FF:DFCC: 05        .byte $05    ; <お>
- D - - - 0x03DFDD FF:DFCD: 05        .byte $05    ; <お>
- D - - - 0x03DFDE FF:DFCE: 05        .byte $05    ; <お>
- D - - - 0x03DFDF FF:DFCF: 05        .byte $05    ; <お>
- - - - - 0x03DFE0 FF:DFD0: 05        .byte $05    ; <お>
- D - - - 0x03DFE1 FF:DFD1: 20        .byte $20    ; <み>
- - - - - 0x03DFE2 FF:DFD2: DF        .byte $DF
- D - - - 0x03DFE3 FF:DFD3: DC        .byte $DC
- - - - - 0x03DFE4 FF:DFD4: A9        .byte $A9    ; <ぞ>
- D - - - 0x03DFE5 FF:DFD5: 19        .byte $19    ; <の>
- - - - - 0x03DFE6 FF:DFD6: 20        .byte $20    ; <み>
- - - - - 0x03DFE7 FF:DFD7: B0        .byte $B0    ; <び>
- - - - - 0x03DFE8 FF:DFD8: CB        .byte $CB    ; <ぺ>

.export loc_0x03DFE9
loc_0x03DFE9:
C D - - - 0x03DFE9 FF:DFD9: 20 59 E0  JSR sub_E059
C - - - - 0x03DFEC FF:DFDC: A9 FF     LDA #$FF
C - - - - 0x03DFEE FF:DFDE: 8D 1A 06  STA $061A
C - - - - 0x03DFF1 FF:DFE1: A9 01     LDA #$01
C - - - - 0x03DFF3 FF:DFE3: 8D 1B 06  STA $061B
C - - - - 0x03DFF6 FF:DFE6: 20 3E E7  JSR sub_E73E
C - - - - 0x03DFF9 FF:DFE9: A9 1A     LDA #$1A
C - - - - 0x03DFFB FF:DFEB: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03DFFE FF:DFEE: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E001 FF:DFF1: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E004 FF:DFF4: AD 43 04  LDA $0443
C - - - - 0x03E007 FF:DFF7: 0A        ASL
C - - - - 0x03E008 FF:DFF8: 0A        ASL
C - - - - 0x03E009 FF:DFF9: 0A        ASL
C - - - - 0x03E00A FF:DFFA: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03E00D FF:DFFD: F0 05     BEQ bra_E004
C - - - - 0x03E00F FF:DFFF: 49 FF     EOR #$FF
; !!! флаг D, должен быть прыжок
C D - - - 0x03E011 FF:E001: 18        CLC
C - - - - 0x03E012 FF:E002: 69 01     ADC #$01
bra_E004:
C - - - - 0x03E014 FF:E004: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E016 FF:E006: 18        CLC
C - - - - 0x03E017 FF:E007: 71 34     ADC (ram_plr_data),Y
C - - - - 0x03E019 FF:E009: C9 D0     CMP #$D0
C - - - - 0x03E01B FF:E00B: 90 02     BCC bra_E00F
C - - - - 0x03E01D FF:E00D: A9 CF     LDA #$CF
bra_E00F:
C - - - - 0x03E01F FF:E00F: C9 30     CMP #$30
C - - - - 0x03E021 FF:E011: B0 02     BCS bra_E015
C - - - - 0x03E023 FF:E013: A9 30     LDA #$30
bra_E015:
C - - - - 0x03E025 FF:E015: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E027 FF:E017: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E02A FF:E01A: AE FC 05  LDX ram_принимающий
C - - - - 0x03E02D FF:E01D: 8E 41 04  STX ram_игрок_с_мячом
C - - - - 0x03E030 FF:E020: 8D FC 05  STA ram_принимающий
C - - - - 0x03E033 FF:E023: 20 59 E0  JSR sub_E059
C - - - - 0x03E036 FF:E026: A9 FF     LDA #$FF
C - - - - 0x03E038 FF:E028: 8D 1A 06  STA $061A
C - - - - 0x03E03B FF:E02B: A9 01     LDA #$01
C - - - - 0x03E03D FF:E02D: 8D 1B 06  STA $061B
C - - - - 0x03E040 FF:E030: 20 3E E7  JSR sub_E73E
C - - - - 0x03E043 FF:E033: AD FC 05  LDA ram_принимающий
C - - - - 0x03E046 FF:E036: 8D 41 04  STA ram_игрок_с_мячом
C - - - - 0x03E049 FF:E039: 20 EC E6  JSR sub_E6EC
C - - - - 0x03E04C FF:E03C: 48        PHA
C - - - - 0x03E04F FF:E03F: A9 1A     LDA #$1A
C - - - - 0x03E051 FF:E041: 85 24     STA ram_для_5114
C - - - - 0x03E053 FF:E043: A9 1B     LDA #$1B
C - - - - 0x03E055 FF:E045: 85 25     STA ram_для_5115
C - - - - 0x03E057 FF:E047: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E05A FF:E04A: 68        PLA
C - - - - 0x03E05B FF:E04B: 20 1E 80  JSR sub_0x034B5A
C - - - - 0x03E05E FF:E04E: A9 1B     LDA #$1B
C - - - - 0x03E060 FF:E050: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03E063 FF:E053: A2 50     LDX #$50
C - - - - 0x03E065 FF:E055: 9A        TXS
C - - - - 0x03E066 FF:E056: 4C DF E0  JMP loc_E0DF

.export sub_0x03E069
sub_0x03E069:
sub_E059:
C D - - - 0x03E069 FF:E059: AD FC 05  LDA ram_принимающий
C - - - - 0x03E06C FF:E05C: C9 FF     CMP #$FF
C - - - - 0x03E06E FF:E05E: F0 13     BEQ bra_E073_выход
C - - - - 0x03E070 FF:E060: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E073 FF:E063: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E075 FF:E065: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E077 FF:E067: AA        TAX
C - - - - 0x03E078 FF:E068: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03E07A FF:E06A: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E07C FF:E06C: A8        TAY
C - - - - 0x03E07D FF:E06D: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E080 FF:E070: 8D 38 06  STA $0638
bra_E073_выход:
C - - - - 0x03E083 FF:E073: 60        RTS

.export sub_0x03E084
sub_0x03E084:
C D - - - 0x03E084 FF:E074: AD FF 05  LDA $05FF
C - - - - 0x03E087 FF:E077: F0 65     BEQ bra_E0DE_выход
C - - - - 0x03E089 FF:E079: A9 0F     LDA #$0F
C - - - - 0x03E08B FF:E07B: 8D 2A 06  STA $062A
C - - - - 0x03E08E FF:E07E: 20 09 E7  JSR sub_E709
C - - - - 0x03E091 FF:E081: A9 00     LDA #$00
bra_E083:
C - - - - 0x03E093 FF:E083: 48        PHA
C - - - - 0x03E094 FF:E084: A9 01     LDA #$01
C - - - - 0x03E096 FF:E086: 20 0F CB  JSR sub_CB0F
C - - - - 0x03E099 FF:E089: 68        PLA
C - - - - 0x03E09A FF:E08A: 48        PHA
C - - - - 0x03E09B FF:E08B: F0 44     BEQ bra_E0D1
C - - - - 0x03E09D FF:E08D: C9 0B     CMP #$0B
C - - - - 0x03E09F FF:E08F: F0 40     BEQ bra_E0D1
C - - - - 0x03E0A1 FF:E091: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03E0A4 FF:E094: F0 3B     BEQ bra_E0D1
C - - - - 0x03E0A6 FF:E096: 2C 2A 06  BIT $062A
C - - - - 0x03E0A9 FF:E099: 10 14     BPL bra_E0AF
C - - - - 0x03E0AB FF:E09B: 48        PHA
C - - - - 0x03E0AC FF:E09C: 48        PHA
C - - - - 0x03E0AF FF:E09F: A9 1A     LDA #$1A
C - - - - 0x03E0B1 FF:E0A1: 85 24     STA ram_для_5114
C - - - - 0x03E0B3 FF:E0A3: A9 1B     LDA #$1B
C - - - - 0x03E0B5 FF:E0A5: 85 25     STA ram_для_5115
C - - - - 0x03E0B7 FF:E0A7: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E0BA FF:E0AA: 68        PLA
C - - - - 0x03E0BB FF:E0AB: 20 00 80  JSR sub_0x036113
C - - - - 0x03E0BE FF:E0AE: 68        PLA
bra_E0AF:
C - - - - 0x03E0BF FF:E0AF: 85 41     STA ram_0041
C - - - - 0x03E0C1 FF:E0B1: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E0C4 FF:E0B4: A5 41     LDA ram_0041
C - - - - 0x03E0C6 FF:E0B6: C9 0B     CMP #$0B
C - - - - 0x03E0C8 FF:E0B8: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03E0CB FF:E0BB: F0 06     BEQ bra_E0C3
C - - - - 0x03E0CD FF:E0BD: 08        PHP
C - - - - 0x03E0CE FF:E0BE: 68        PLA
C - - - - 0x03E0CF FF:E0BF: 49 01     EOR #$01
C - - - - 0x03E0D1 FF:E0C1: 48        PHA
C - - - - 0x03E0D2 FF:E0C2: 28        PLP
bra_E0C3:
C - - - - 0x03E0D3 FF:E0C3: A2 21     LDX #$21
C - - - - 0x03E0D5 FF:E0C5: 90 02     BCC bra_E0C9
C - - - - 0x03E0D7 FF:E0C7: A2 22     LDX #$22
bra_E0C9:
C - - - - 0x03E0D9 FF:E0C9: A5 41     LDA ram_0041
C - - - - 0x03E0DB FF:E0CB: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03E0DE FF:E0CE: 20 54 E8  JSR sub_E854
bra_E0D1:
C - - - - 0x03E0E1 FF:E0D1: 68        PLA
C - - - - 0x03E0E2 FF:E0D2: 18        CLC
C - - - - 0x03E0E3 FF:E0D3: 69 01     ADC #$01
C - - - - 0x03E0E5 FF:E0D5: C9 16     CMP #$16
C - - - - 0x03E0E7 FF:E0D7: D0 AA     BNE bra_E083
C - - - - 0x03E0E9 FF:E0D9: A9 00     LDA #$00
C - - - - 0x03E0EB FF:E0DB: 8D FF 05  STA $05FF
bra_E0DE_выход:
C - - - - 0x03E0EE FF:E0DE: 60        RTS

.export loc_0x03E0EF
loc_0x03E0EF:
loc_E0DF:
C D - - - 0x03E0EF FF:E0DF: A9 00     LDA #$00      ; period_number_and_time
C - - - - 0x03E0F1 FF:E0E1: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03E0F4 FF:E0E4: A9 01     LDA #$01      ; team_names_and_score
C - - - - 0x03E0F6 FF:E0E6: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03E0F9 FF:E0E9: 20 33 E2  JSR sub_E233
C - - - - 0x03E0FC FF:E0EC: A9 0A     LDA #$0A
C - - - - 0x03E0FE FF:E0EE: 8D 14 06  STA $0614
C - - - - 0x03E101 FF:E0F1: A9 FF     LDA #$FF
C - - - - 0x03E103 FF:E0F3: 8D 2A 06  STA $062A
C - - - - 0x03E106 FF:E0F6: 20 EC E6  JSR sub_E6EC
C - - - - 0x03E109 FF:E0F9: A0 40     LDY #$40
C - - - - 0x03E10B FF:E0FB: A2 00     LDX #$00
C - - - - 0x03E10D FF:E0FD: 8E 4E 04  STX ram_высота_мяча
C - - - - 0x03E110 FF:E100: 8E 00 06  STX ram_колво_нападающих
C - - - - 0x03E113 FF:E103: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E116 FF:E106: C9 0B     CMP #$0B
C - - - - 0x03E118 FF:E108: 90 04     BCC bra_E10E
C - - - - 0x03E11A FF:E10A: A2 0B     LDX #$0B
C - - - - 0x03E11C FF:E10C: A0 00     LDY #$00
bra_E10E:
C - - - - 0x03E11E FF:E10E: 8E FB 05  STX ram_команда_с_мячом
C - - - - 0x03E121 FF:E111: 8C 17 05  STY $0517
C - - - - 0x03E124 FF:E114: 8A        TXA
C - - - - 0x03E125 FF:E115: D0 0E     BNE bra_E125
C - - - - 0x03E127 FF:E117: 2C 4C 04  BIT $044C
C - - - - 0x03E12A FF:E11A: 10 26     BPL bra_E142
C - - - - 0x03E12C FF:E11C: 8D 4C 04  STA $044C
C - - - - 0x03E12F FF:E11F: 8D F1 03  STA $03F1
C - - - - 0x03E132 FF:E122: 4C 42 E1  JMP loc_E142
bra_E125:
C - - - - 0x03E135 FF:E125: A9 00     LDA #$00
C - - - - 0x03E137 FF:E127: 8D 42 04  STA ram_игрок_без_мяча
C - - - - 0x03E13A FF:E12A: 20 99 CE  JSR sub_CE99_вычислить_управляемого
C - - - - 0x03E13D FF:E12D: 8D FD 05  STA ram_управляемый
C - - - - 0x03E140 FF:E130: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E143 FF:E133: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E146 FF:E136: A9 05     LDA #$05
C - - - - 0x03E148 FF:E138: A0 09     LDY #con_игрок_09
C - - - - 0x03E14A FF:E13A: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E14C FF:E13C: AD FE 05  LDA $05FE
C - - - - 0x03E14F FF:E13F: 8D 17 06  STA $0617
bra_E142:
loc_E142:
C D - - - 0x03E152 FF:E142: 20 67 E2  JSR sub_E267
loc_E145:
C D - - - 0x03E155 FF:E145: A9 01     LDA #$01
C - - - - 0x03E157 FF:E147: 20 0F CB  JSR sub_CB0F
C - - - - 0x03E15A FF:E14A: 20 49 E3  JSR sub_E349
C - - - - 0x03E15D FF:E14D: AD 14 06  LDA $0614
C - - - - 0x03E160 FF:E150: F0 06     BEQ bra_E158
C - - - - 0x03E162 FF:E152: CE 14 06  DEC $0614
C - - - - 0x03E165 FF:E155: 4C 45 E1  JMP loc_E145
bra_E158:
C - - - - 0x03E168 FF:E158: A9 0A     LDA #$0A
C - - - - 0x03E16A FF:E15A: 8D 14 06  STA $0614
C - - - - 0x03E16D FF:E15D: AD 1C 00  LDA ram_удержанные
C - - - - 0x03E170 FF:E160: 29 0F     AND #con_btns_Dpad
C - - - - 0x03E172 FF:E162: F0 22     BEQ bra_E186
C - - - - 0x03E174 FF:E164: 48        PHA
C - - - - 0x03E175 FF:E165: A2 20     LDX #$20
C - - - - 0x03E177 FF:E167: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E17A FF:E16A: AC FB 05  LDY ram_команда_с_мячом
C - - - - 0x03E17D FF:E16D: F0 05     BEQ bra_E174
C - - - - 0x03E17F FF:E16F: A2 22     LDX #$22
C - - - - 0x03E181 FF:E171: AD FD 05  LDA ram_управляемый
bra_E174:
C - - - - 0x03E184 FF:E174: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03E187 FF:E177: 68        PLA
C - - - - 0x03E188 FF:E178: 48        PHA
C - - - - 0x03E189 FF:E179: A0 05     LDY #con_игрок_координата_X_lo
C - - - - 0x03E18B FF:E17B: 20 F5 E8  JSR sub_E8F5
C - - - - 0x03E18E FF:E17E: 68        PLA
C - - - - 0x03E18F FF:E17F: 4A        LSR
C - - - - 0x03E190 FF:E180: 4A        LSR
C - - - - 0x03E191 FF:E181: A0 07     LDY #con_игрок_координата_Y_lo
C - - - - 0x03E193 FF:E183: 20 F5 E8  JSR sub_E8F5
bra_E186:
C - - - - 0x03E196 FF:E186: 20 EC E6  JSR sub_E6EC
C - - - - 0x03E199 FF:E189: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E19C FF:E18C: C9 0B     CMP #$0B
C - - - - 0x03E19E FF:E18E: 90 57     BCC bra_E1E7
C - - - - 0x03E1A0 FF:E190: AD FE 05  LDA $05FE
C - - - - 0x03E1A3 FF:E193: CD 17 06  CMP $0617
C - - - - 0x03E1A6 FF:E196: F0 4F     BEQ bra_E1E7
C - - - - 0x03E1A8 FF:E198: 8D 17 06  STA $0617
C - - - - 0x03E1AB FF:E19B: A9 00     LDA #$00
C - - - - 0x03E1AD FF:E19D: 8D 21 06  STA $0621
C - - - - 0x03E1B0 FF:E1A0: 48        PHA
C - - - - 0x03E1B3 FF:E1A3: A9 1C     LDA #$1C
C - - - - 0x03E1B5 FF:E1A5: 85 24     STA ram_для_5114
C - - - - 0x03E1B7 FF:E1A7: A9 1D     LDA #$1D
C - - - - 0x03E1B9 FF:E1A9: 85 25     STA ram_для_5115
C - - - - 0x03E1BB FF:E1AB: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E1BE FF:E1AE: 68        PLA
C - - - - 0x03E1BF FF:E1AF: 20 06 80  JSR sub_0x038016
C - - - - 0x03E1C2 FF:E1B2: AD 3B 04  LDA ram_действие_атаки
C - - - - 0x03E1C5 FF:E1B5: C9 02     CMP #$02
C - - - - 0x03E1C7 FF:E1B7: F0 2E     BEQ bra_E1E7
C - - - - 0x03E1C9 FF:E1B9: 48        PHA
C - - - - 0x03E1CC FF:E1BC: A9 1A     LDA #$1A
C - - - - 0x03E1CE FF:E1BE: 85 24     STA ram_для_5114
C - - - - 0x03E1D0 FF:E1C0: A9 1B     LDA #$1B
C - - - - 0x03E1D2 FF:E1C2: 85 25     STA ram_для_5115
C - - - - 0x03E1D4 FF:E1C4: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E1D7 FF:E1C7: 68        PLA
C - - - - 0x03E1D8 FF:E1C8: 20 21 80  JSR sub_0x034F82
C - - - - 0x03E1DB FF:E1CB: 20 46 CC  JSR sub_CC46_очистить_нижнюю_половину_экрана
C - - - - 0x03E1DE FF:E1CE: A9 00     LDA #$00
C - - - - 0x03E1E0 FF:E1D0: 8D 2D 06  STA $062D
C - - - - 0x03E1E3 FF:E1D3: 8D 15 06  STA $0615
C - - - - 0x03E1E6 FF:E1D6: A9 1A     LDA #$1A
C - - - - 0x03E1E8 FF:E1D8: 85 24     STA ram_для_5114
C - - - - 0x03E1EA FF:E1DA: A9 1B     LDA #$1B
C - - - - 0x03E1EC FF:E1DC: 85 25     STA ram_для_5115
C - - - - 0x03E1EE FF:E1DE: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E1F1 FF:E1E1: A2 50     LDX #$50
C - - - - 0x03E1F3 FF:E1E3: 9A        TXS
C - - - - 0x03E1F4 FF:E1E4: 4C 27 80  JMP loc_0x034137
bra_E1E7:
C - - - - 0x03E1F7 FF:E1E7: A2 00     LDX #$00
C - - - - 0x03E1F9 FF:E1E9: 8E FF 05  STX $05FF
C - - - - 0x03E1FC FF:E1EC: E8        INX
C - - - - 0x03E1FD FF:E1ED: 8A        TXA
C - - - - 0x03E1FE FF:E1EE: 20 93 D1  JSR sub_D193_уменьшить_таймер_времени_тайма
C - - - - 0x03E201 FF:E1F1: 20 7D E2  JSR sub_E27D
C - - - - 0x03E204 FF:E1F4: EE 13 06  INC $0613
C - - - - 0x03E207 FF:E1F7: 20 BC E2  JSR sub_E2BC_регенерация_и_усталость
C - - - - 0x03E20A FF:E1FA: 20 07 E4  JSR sub_E407
C - - - - 0x03E20D FF:E1FD: 2C 4B 04  BIT $044B
C - - - - 0x03E210 FF:E200: 10 1C     BPL bra_E21E
C - - - - 0x03E212 FF:E202: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E215 FF:E205: D0 17     BNE bra_E21E

; bzk
- - - - - 0x03E217 FF:E207: 2C 35 06  BIT $0635
- - - - - 0x03E21A FF:E20A: 10 12     BPL bra_E21E
- - - - - 0x03E21C FF:E20C: 48        PHA
- - - - - 0x03E21F FF:E20F: A9 1A     LDA #$1A
- - - - - 0x03E221 FF:E211: 85 24     STA ram_для_5114
- - - - - 0x03E223 FF:E213: A9 1B     LDA #$1B
- - - - - 0x03E225 FF:E215: 85 25     STA ram_для_5115
- - - - - 0x03E227 FF:E217: 20 2D CE  JSR sub_CE2D_банксвич_PRG
- - - - - 0x03E22A FF:E21A: 68        PLA
- - - - - 0x03E22B FF:E21B: 20 39 80  JSR sub_0x03505E

bra_E21E:
C - - - - 0x03E22E FF:E21E: 48        PHA
C - - - - 0x03E231 FF:E221: A9 1A     LDA #$1A
C - - - - 0x03E233 FF:E223: 85 24     STA ram_для_5114
C - - - - 0x03E235 FF:E225: A9 1B     LDA #$1B
C - - - - 0x03E237 FF:E227: 85 25     STA ram_для_5115
C - - - - 0x03E239 FF:E229: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E23C FF:E22C: 68        PLA
C - - - - 0x03E23D FF:E22D: 20 33 80  JSR sub_0x034E96_катсцена_драйв_оверхеда
C - - - - 0x03E240 FF:E230: 4C 45 E1  JMP loc_E145

.export sub_0x03E243
sub_0x03E243:
sub_E233:
C D - - - 0x03E243 FF:E233: A9 1E     LDA #$1E
C - - - - 0x03E245 FF:E235: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03E248 FF:E238: 48        PHA
C - - - - 0x03E24B FF:E23B: A9 1C     LDA #$1C
C - - - - 0x03E24D FF:E23D: 85 24     STA ram_для_5114
C - - - - 0x03E24F FF:E23F: A9 1D     LDA #$1D
C - - - - 0x03E251 FF:E241: 85 25     STA ram_для_5115
C - - - - 0x03E253 FF:E243: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E256 FF:E246: 68        PLA
C - - - - 0x03E257 FF:E247: 20 24 80  JSR sub_0x038034
C - - - - 0x03E25A FF:E24A: 20 67 E2  JSR sub_E267
C - - - - 0x03E25D FF:E24D: A9 80     LDA #$80
C - - - - 0x03E25F FF:E24F: 8D 15 06  STA $0615
C - - - - 0x03E262 FF:E252: 8D 2D 06  STA $062D
C - - - - 0x03E265 FF:E255: A9 00     LDA #$00
C - - - - 0x03E267 FF:E257: 8D 42 06  STA $0642
C - - - - 0x03E26A FF:E25A: 8D 43 06  STA $0643
C - - - - 0x03E26D FF:E25D: A9 02     LDA #$02
C - - - - 0x03E26F FF:E25F: 85 8E     STA ram_008E
C - - - - 0x03E271 FF:E261: A9 01     LDA #$80
C - - - - 0x03E273 FF:E263: 8D 69 04  STA $0469
C - - - - 0x03E276 FF:E266: 60        RTS

sub_E267:
C - - - - 0x03E277 FF:E267: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E27A FF:E26A: F0 0B     BEQ bra_E277_мяч_у_нашей_команды
C - - - - 0x03E27C FF:E26C: A9 31     LDA #$31      ; display_name_number_at_the_top
C - - - - 0x03E27E FF:E26E: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03E281 FF:E271: A9 32     LDA #$32      ; display_name_opponent_at_the_top 
C - - - - 0x03E283 FF:E273: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03E286 FF:E276: 60        RTS
bra_E277_мяч_у_нашей_команды:
C - - - - 0x03E287 FF:E277: A9 30     LDA #$30      ; display_name_stamina_at_the_top
C - - - - 0x03E289 FF:E279: 20 7F EF  JSR sub_EF7F_отрисовка_меню_во_время_матча
C - - - - 0x03E28C FF:E27C: 60        RTS

sub_E27D:
C - - - - 0x03E28D FF:E27D: 20 77 CD  JSR sub_CD77_адрес_игрока_адрес_игрока_команды_без_мяча
C - - - - 0x03E290 FF:E280: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03E292 FF:E282: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E294 FF:E284: D0 1C     BNE bra_E2A2_выход
C - - - - 0x03E296 FF:E286: AE 35 06  LDX $0635
C - - - - 0x03E299 FF:E289: AC 37 06  LDY $0637
C - - - - 0x03E29C FF:E28C: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E29F FF:E28F: F0 05     BEQ bra_E296
C - - - - 0x03E2A1 FF:E291: 8A        TXA
C - - - - 0x03E2A2 FF:E292: 49 FF     EOR #$FF
C - - - - 0x03E2A4 FF:E294: AA        TAX
C - - - - 0x03E2A5 FF:E295: E8        INX
bra_E296:
C - - - - 0x03E2A6 FF:E296: E0 C4     CPX #$C4
C - - - - 0x03E2A8 FF:E298: 90 08     BCC bra_E2A2_выход
C - - - - 0x03E2AA FF:E29A: C0 74     CPY #$74
C - - - - 0x03E2AC FF:E29C: 90 04     BCC bra_E2A2_выход
C - - - - 0x03E2AE FF:E29E: C0 8C     CPY #$8C
C - - - - 0x03E2B0 FF:E2A0: 90 01     BCC bra_E2A3
bra_E2A2_выход:
C - - - - 0x03E2B2 FF:E2A2: 60        RTS
bra_E2A3:
C - - - - 0x03E2B3 FF:E2A3: A9 00     LDA #$00
C - - - - 0x03E2B5 FF:E2A5: 8D 2D 06  STA $062D
C - - - - 0x03E2B8 FF:E2A8: 8D 15 06  STA $0615
C - - - - 0x03E2BB FF:E2AB: A9 1A     LDA #$1A
C - - - - 0x03E2BD FF:E2AD: 85 24     STA ram_для_5114
C - - - - 0x03E2BF FF:E2AF: A9 1B     LDA #$1B
C - - - - 0x03E2C1 FF:E2B1: 85 25     STA ram_для_5115
C - - - - 0x03E2C3 FF:E2B3: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E2C6 FF:E2B6: A2 50     LDX #$50
C - - - - 0x03E2C8 FF:E2B8: 9A        TXS
; сработало при нападении соперника на моего кипера
C - - - - 0x03E2C9 FF:E2B9: 4C 09 80  JMP loc_0x034706



sub_E2BC_регенерация_и_усталость:
.scope
temp_макс_энергия_lo = ram_0032
temp_макс_энергия_hi = ram_0033
temp_затрата_энергии = ram_003A
C - - - - 0x03E2D6 FF:E2C6: A9 00     LDA #$00
bra_E2CB_цикл_регенерации_игроков:
C - - - - 0x03E2DB FF:E2CB: 48        PHA
C - - - - 0x03E2DC FF:E2CC: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03E2DF FF:E2CF: F0 3C     BEQ bra_E30D_не_регенерировать
C - - - - 0x03E2E1 FF:E2D1: A2 00     LDX #$00
C - - - - 0x03E2E3 FF:E2D3: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03E2E6 FF:E2D6: A2 02     LDX #$02      ; регенерация энергии
C - - - - 0x03E2E8 FF:E2D8: A0 00     LDY #con_игрок_номер
C - - - - 0x03E2EA FF:E2DA: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E2EC FF:E2DC: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03E2EE FF:E2DE: C9 20     CMP #$20
C - - - - 0x03E2F0 FF:E2E0: D0 0A     BNE bra_E2EC_это_не_мисуги
C - - - - 0x03E2F2 FF:E2E2: A2 01     LDX #$01
C - - - - 0x03E2F4 FF:E2E4: B1 34     LDA (ram_plr_data),Y      ; con_игрок_энергия_lo
C - - - - 0x03E2F6 FF:E2E6: C8        INY
C - - - - 0x03E2F7 FF:E2E7: 11 34     ORA (ram_plr_data),Y      ; con_игрок_энергия_hi
C - - - - 0x03E2F9 FF:E2E9: F0 22     BEQ bra_E30D_не_регенерировать      ; проверка на дохлого misugi
C - - - - 0x03E2FB FF:E2EB: 88        DEY
bra_E2EC_это_не_мисуги:
C - - - - 0x03E2FC FF:E2EC: 8A        TXA
C - - - - 0x03E2FD FF:E2ED: 18        CLC
C - - - - 0x03E2FE FF:E2EE: 71 34     ADC (ram_plr_data),Y      ; con_игрок_энергия_lo
C - - - - 0x03E300 FF:E2F0: AA        TAX
C - - - - 0x03E301 FF:E2F1: C8        INY
C - - - - 0x03E302 FF:E2F2: B1 34     LDA (ram_plr_data),Y      ; con_игрок_энергия_hi
C - - - - 0x03E304 FF:E2F4: 69 00     ADC #$00
C - - - - 0x03E306 FF:E2F6: A8        TAY
C - - - - 0x03E307 FF:E2F7: 38        SEC
C - - - - 0x03E308 FF:E2F8: 8A        TXA
C - - - - 0x03E309 FF:E2F9: E5 32     SBC temp_макс_энергия_lo
C - - - - 0x03E30B FF:E2FB: 98        TYA
C - - - - 0x03E30C FF:E2FC: E5 33     SBC temp_макс_энергия_hi
C - - - - 0x03E30E FF:E2FE: 90 04     BCC bra_E304_игрок_не_полностью_восстановился
C - - - - 0x03E310 FF:E300: A6 32     LDX temp_макс_энергия_lo      ; иначе запись максимальной энергии
C - - - - 0x03E312 FF:E302: A4 33     LDY temp_макс_энергия_hi
bra_E304_игрок_не_полностью_восстановился:
C - - - - 0x03E314 FF:E304: 98        TYA
C - - - - 0x03E315 FF:E305: A0 02     LDY #con_игрок_энергия_hi
C - - - - 0x03E317 FF:E307: 91 34     STA (ram_plr_data),Y      ; con_игрок_энергия_hi
C - - - - 0x03E319 FF:E309: 8A        TXA
C - - - - 0x03E31A FF:E30A: 88        DEY
C - - - - 0x03E31B FF:E30B: 91 34     STA (ram_plr_data),Y      ; con_игрок_энергия_lo
bra_E30D_не_регенерировать:
C - - - - 0x03E31D FF:E30D: 68        PLA
C - - - - 0x03E31E FF:E30E: 18        CLC
C - - - - 0x03E31F FF:E30F: 69 01     ADC #$01
C - - - - 0x03E321 FF:E311: C9 0B     CMP #$0B
C - - - - 0x03E323 FF:E313: D0 B6     BNE bra_E2CB_цикл_регенерации_игроков
C - - - - 0x03E325 FF:E315: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E328 FF:E318: C9 0B     CMP #$0B
C - - - - 0x03E32A FF:E31A: B0 2C     BCS bra_E348_выход
C - - - - 0x03E32C FF:E31C: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E32F FF:E31F: A2 03     LDX #$03      ; уменьшение энергии во время бега
C - - - - 0x03E331 FF:E321: A0 00     LDY #con_игрок_номер
C - - - - 0x03E333 FF:E323: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E335 FF:E325: C9 20     CMP #$20
C - - - - 0x03E337 FF:E327: D0 02     BNE bra_E32B_это_не_мисуги
C - - - - 0x03E339 FF:E329: A2 05     LDX #$05
bra_E32B_это_не_мисуги:
C - - - - 0x03E33B FF:E32B: 86 3A     STX temp_затрата_энергии
C - - - - 0x03E33D FF:E32D: A0 01     LDY #con_игрок_энергия_lo
C - - - - 0x03E33F FF:E32F: B1 34     LDA (ram_plr_data),Y      ; con_игрок_энергия_lo
C - - - - 0x03E341 FF:E331: 38        SEC
C - - - - 0x03E342 FF:E332: E5 3A     SBC temp_затрата_энергии
C - - - - 0x03E344 FF:E334: AA        TAX
C - - - - 0x03E345 FF:E335: C8        INY
C - - - - 0x03E346 FF:E336: B1 34     LDA (ram_plr_data),Y      ; con_игрок_энергия_hi
C - - - - 0x03E348 FF:E338: E9 00     SBC #$00
C - - - - 0x03E34A FF:E33A: B0 03     BCS bra_E33F_игрок_еще_не_выдохся
C - - - - 0x03E34C FF:E33C: A2 00     LDX #$00      ; иначе обнуление энергии
C - - - - 0x03E34E FF:E33E: 8A        TXA
bra_E33F_игрок_еще_не_выдохся:
C - - - - 0x03E34F FF:E33F: 91 34     STA (ram_plr_data),Y      ; con_игрок_энергия_hi
C - - - - 0x03E351 FF:E341: 8A        TXA
C - - - - 0x03E352 FF:E342: 88        DEY
C - - - - 0x03E353 FF:E343: 91 34     STA (ram_plr_data),Y      ; con_игрок_энергия_lo
C - - - - 0x03E355 FF:E345: 20 67 E2  JSR sub_E267
bra_E348_выход:
C - - - - 0x03E358 FF:E348: 60        RTS
.endscope



sub_E349:
C - - - - 0x03E359 FF:E349: A9 00     LDA #$00
C - - - - 0x03E35B FF:E34B: 8D 32 05  STA $0532
C - - - - 0x03E35E FF:E34E: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E361 FF:E351: D0 50     BNE bra_E3A3_переключить_управляемого
C - - - - 0x03E363 FF:E353: AD 15 06  LDA $0615
C - - - - 0x03E366 FF:E356: 09 40     ORA #$40
C - - - - 0x03E368 FF:E358: 8D 15 06  STA $0615
C - - - - 0x03E36B FF:E35B: AD 1C 00  LDA ram_удержанные
C - - - - 0x03E36E FF:E35E: 29 40     AND #con_btn_B
C - - - - 0x03E370 FF:E360: D0 20     BNE bra_E382
C - - - - 0x03E372 FF:E362: AD 1C 00  LDA ram_удержанные
C - - - - 0x03E375 FF:E365: 29 0F     AND #con_btns_Dpad
C - - - - 0x03E377 FF:E367: F0 60     BEQ bra_E3C9_выход
C - - - - 0x03E379 FF:E369: EE 32 05  INC $0532
C - - - - 0x03E37C FF:E36C: A2 00     LDX #$00
C - - - - 0x03E37E FF:E36E: 29 02     AND #$02
C - - - - 0x03E380 FF:E370: D0 02     BNE bra_E374
C - - - - 0x03E382 FF:E372: A2 40     LDX #$40
bra_E374:
C - - - - 0x03E384 FF:E374: 8E 17 05  STX $0517
C - - - - 0x03E387 FF:E377: AD 15 06  LDA $0615
C - - - - 0x03E38A FF:E37A: 29 BF     AND #$BF
C - - - - 0x03E38C FF:E37C: 8D 15 06  STA $0615
C - - - - 0x03E38F FF:E37F: 4C C9 E3  RTS
bra_E382:
C - - - - 0x03E392 FF:E382: A9 00     LDA #$00
C - - - - 0x03E394 FF:E384: 8D 00 06  STA ram_колво_нападающих
C - - - - 0x03E397 FF:E387: 8D 15 06  STA $0615
C - - - - 0x03E39A FF:E38A: A9 44     LDA #$44
C - - - - 0x03E39C FF:E38C: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03E39F FF:E38F: 20 8B CB  JSR sub_CB8B_очистить_память_спрайтов
C - - - - 0x03E3A2 FF:E392: A9 1A     LDA #$1A
C - - - - 0x03E3A4 FF:E394: 85 24     STA ram_для_5114
C - - - - 0x03E3A6 FF:E396: A9 1B     LDA #$1B
C - - - - 0x03E3A8 FF:E398: 85 25     STA ram_для_5115
C - - - - 0x03E3AA FF:E39A: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E3AD FF:E39D: A2 50     LDX #$50
C - - - - 0x03E3AF FF:E39F: 9A        TXS
C - - - - 0x03E3B0 FF:E3A0: 4C 03 80  JMP loc_0x03404C
bra_E3A3_переключить_управляемого:
C - - - - 0x03E3B3 FF:E3A3: EE 32 05  INC $0532
C - - - - 0x03E3B6 FF:E3A6: A9 C0     LDA #(con_btn_B + con_btn_A)
C - - - - 0x03E3B8 FF:E3A8: 2D 1E 00  AND ram_одноразовые
C - - - - 0x03E3BB FF:E3AB: F0 1C     BEQ bra_E3C9_выход
C - - - - 0x03E3BD FF:E3AD: A2 01     LDX #$01
C - - - - 0x03E3BF FF:E3AF: A8        TAY
C - - - - 0x03E3C0 FF:E3B0: 30 02     BMI bra_E3B4
C - - - - 0x03E3C2 FF:E3B2: A2 FF     LDX #$FF
bra_E3B4:
C - - - - 0x03E3C4 FF:E3B4: 8A        TXA
C - - - - 0x03E3C5 FF:E3B5: 18        CLC
C - - - - 0x03E3C6 FF:E3B6: 6D FD 05  ADC ram_управляемый
C - - - - 0x03E3C9 FF:E3B9: D0 02     BNE bra_E3BD
C - - - - 0x03E3CB FF:E3BB: A9 0A     LDA #$0A
bra_E3BD:
C - - - - 0x03E3CD FF:E3BD: C9 0B     CMP #$0B
C - - - - 0x03E3CF FF:E3BF: 90 02     BCC bra_E3C3
C - - - - 0x03E3D1 FF:E3C1: A9 01     LDA #$01
bra_E3C3:
C - - - - 0x03E3D3 FF:E3C3: 8D FD 05  STA ram_управляемый
C - - - - 0x03E3D6 FF:E3C6: 20 67 E2  JSR sub_E267
bra_E3C9_выход:
C D - - - 0x03E3D9 FF:E3C9: 60        RTS

sub_E3CA:
C - - - - 0x03E3DA FF:E3CA: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E3DD FF:E3CD: D0 07     BNE bra_E3D6
C - - - - 0x03E3DF FF:E3CF: AD 1C 00  LDA ram_удержанные
C - - - - 0x03E3E2 FF:E3D2: 29 0F     AND #con_btns_Dpad
C - - - - 0x03E3E4 FF:E3D4: F0 30     BEQ bra_E406_выход
bra_E3D6:
C - - - - 0x03E3E6 FF:E3D6: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E3E9 FF:E3D9: A2 20     LDX #$20
C - - - - 0x03E3EB FF:E3DB: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03E3EE FF:E3DE: 46 33     LSR ram_0033
C - - - - 0x03E3F0 FF:E3E0: 66 32     ROR ram_0032
C - - - - 0x03E3F2 FF:E3E2: 46 33     LSR ram_0033
C - - - - 0x03E3F4 FF:E3E4: 66 32     ROR ram_0032
C - - - - 0x03E3F6 FF:E3E6: A6 32     LDX ram_0032
C - - - - 0x03E3F8 FF:E3E8: A4 33     LDY ram_0033
C - - - - 0x03E3FA FF:E3EA: 2C 17 05  BIT $0517
C - - - - 0x03E3FD FF:E3ED: 70 08     BVS bra_E3F7
C - - - - 0x03E3FF FF:E3EF: 8A        TXA
C - - - - 0x03E400 FF:E3F0: 49 FF     EOR #$FF
C - - - - 0x03E402 FF:E3F2: AA        TAX
C - - - - 0x03E403 FF:E3F3: 98        TYA
C - - - - 0x03E404 FF:E3F4: 49 FF     EOR #$FF
C - - - - 0x03E406 FF:E3F6: A8        TAY
bra_E3F7:
C - - - - 0x03E407 FF:E3F7: 8A        TXA
C - - - - 0x03E408 FF:E3F8: 18        CLC
C - - - - 0x03E409 FF:E3F9: 6D 42 06  ADC $0642
C - - - - 0x03E40C FF:E3FC: 8D 42 06  STA $0642
C - - - - 0x03E40F FF:E3FF: 98        TYA
C - - - - 0x03E410 FF:E400: 6D 43 06  ADC $0643
C - - - - 0x03E413 FF:E403: 8D 43 06  STA $0643
bra_E406_выход:
C - - - - 0x03E416 FF:E406: 60        RTS

sub_E407:
C - - - - 0x03E417 FF:E407: 20 09 E7  JSR sub_E709
C - - - - 0x03E41A FF:E40A: A9 00     LDA #$00
loc_E40C:
C D - - - 0x03E41C FF:E40C: 48        PHA
C - - - - 0x03E41D FF:E40D: A9 01     LDA #$01
C - - - - 0x03E41F FF:E40F: 20 0F CB  JSR sub_CB0F
C - - - - 0x03E422 FF:E412: 20 49 E3  JSR sub_E349
C - - - - 0x03E425 FF:E415: 68        PLA
C - - - - 0x03E426 FF:E416: 48        PHA
C - - - - 0x03E427 FF:E417: F0 76     BEQ bra_E48F
C - - - - 0x03E429 FF:E419: C9 0B     CMP #$0B
C - - - - 0x03E42B FF:E41B: F0 72     BEQ bra_E48F
C - - - - 0x03E42D FF:E41D: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03E430 FF:E420: F0 05     BEQ bra_E427
C - - - - 0x03E432 FF:E422: CD FD 05  CMP ram_управляемый
C - - - - 0x03E435 FF:E425: F0 68     BEQ bra_E48F
bra_E427:
C - - - - 0x03E437 FF:E427: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03E43A FF:E42A: D0 04     BNE bra_E430
C - - - - 0x03E43C FF:E42C: C9 0B     CMP #$0B
C - - - - 0x03E43E FF:E42E: 90 5F     BCC bra_E48F
bra_E430:
C - - - - 0x03E440 FF:E430: 2C 2A 06  BIT $062A
C - - - - 0x03E443 FF:E433: 10 19     BPL bra_E44E
C - - - - 0x03E445 FF:E435: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03E448 FF:E438: F0 14     BEQ bra_E44E
C - - - - 0x03E44A FF:E43A: 48        PHA
C - - - - 0x03E44B FF:E43B: 48        PHA
C - - - - 0x03E44E FF:E43E: A9 1A     LDA #$1A
C - - - - 0x03E450 FF:E440: 85 24     STA ram_для_5114
C - - - - 0x03E452 FF:E442: A9 1B     LDA #$1B
C - - - - 0x03E454 FF:E444: 85 25     STA ram_для_5115
C - - - - 0x03E456 FF:E446: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E459 FF:E449: 68        PLA
C - - - - 0x03E45A FF:E44A: 20 00 80  JSR sub_0x036113
C - - - - 0x03E45D FF:E44D: 68        PLA
bra_E44E:
C - - - - 0x03E45E FF:E44E: 85 41     STA ram_0041
C - - - - 0x03E460 FF:E450: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E463 FF:E453: A5 41     LDA ram_0041
C - - - - 0x03E465 FF:E455: C9 0B     CMP #$0B
C - - - - 0x03E467 FF:E457: AE FB 05  LDX ram_команда_с_мячом
C - - - - 0x03E46A FF:E45A: F0 06     BEQ bra_E462
C - - - - 0x03E46C FF:E45C: 08        PHP
C - - - - 0x03E46D FF:E45D: 68        PLA
C - - - - 0x03E46E FF:E45E: 49 01     EOR #$01
C - - - - 0x03E470 FF:E460: 48        PHA
C - - - - 0x03E471 FF:E461: 28        PLP
bra_E462:
C - - - - 0x03E472 FF:E462: A2 21     LDX #$21
C - - - - 0x03E474 FF:E464: 90 0C     BCC bra_E472
C - - - - 0x03E476 FF:E466: A2 22     LDX #$22
C - - - - 0x03E478 FF:E468: A0 09     LDY #con_игрок_09
C - - - - 0x03E47A FF:E46A: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E47C FF:E46C: C9 F0     CMP #$F0
C - - - - 0x03E47E FF:E46E: D0 02     BNE bra_E472
C - - - - 0x03E480 FF:E470: A2 1F     LDX #$1F
bra_E472:
C - - - - 0x03E482 FF:E472: A5 41     LDA ram_0041
C - - - - 0x03E484 FF:E474: CD 41 04  CMP ram_игрок_с_мячом
C - - - - 0x03E487 FF:E477: D0 02     BNE bra_E47B
C - - - - 0x03E489 FF:E479: A2 20     LDX #$20
bra_E47B:
C - - - - 0x03E48B FF:E47B: 20 08 CE  JSR sub_CE08_банксвич_PRG_06_07_с_возвратом
C - - - - 0x03E48E FF:E47E: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03E490 FF:E480: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E492 FF:E482: F0 08     BEQ bra_E48C
C - - - - 0x03E494 FF:E484: 38        SEC
C - - - - 0x03E495 FF:E485: E9 01     SBC #$01
C - - - - 0x03E497 FF:E487: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E499 FF:E489: 4C 8F E4  JMP loc_E48F
bra_E48C:
C - - - - 0x03E49C FF:E48C: 20 54 E8  JSR sub_E854
bra_E48F:
loc_E48F:
C D - - - 0x03E49F FF:E48F: 68        PLA
C - - - - 0x03E4A0 FF:E490: 18        CLC
C - - - - 0x03E4A1 FF:E491: 69 01     ADC #$01
C - - - - 0x03E4A3 FF:E493: C9 16     CMP #$16
C - - - - 0x03E4A5 FF:E495: F0 03     BEQ bra_E49A
C - - - - 0x03E4A7 FF:E497: 4C 0C E4  JMP loc_E40C
bra_E49A:
C - - - - 0x03E4AA FF:E49A: A9 00     LDA #$00
C - - - - 0x03E4AC FF:E49C: 8D 00 06  STA ram_колво_нападающих
C - - - - 0x03E4AF FF:E49F: AD 13 06  LDA $0613
C - - - - 0x03E4B2 FF:E4A2: C9 05     CMP #$05
C - - - - 0x03E4B4 FF:E4A4: 90 0A     BCC bra_E4B0
C - - - - 0x03E4B6 FF:E4A6: A9 00     LDA #$00
C - - - - 0x03E4B8 FF:E4A8: 8D 13 06  STA $0613
C - - - - 0x03E4BB FF:E4AB: A9 07     LDA #$07
C - - - - 0x03E4BD FF:E4AD: 20 D7 E4  JSR sub_E4D7
bra_E4B0:
C - - - - 0x03E4C0 FF:E4B0: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03E4C3 FF:E4B3: D0 01     BNE bra_E4B6_есть_напавшие
C - - - - 0x03E4C5 FF:E4B5: 60        RTS
bra_E4B6_есть_напавшие:
C - - - - 0x03E4C6 FF:E4B6: A9 00     LDA #$00
C - - - - 0x03E4C8 FF:E4B8: 8D 2D 06  STA $062D
C - - - - 0x03E4CB FF:E4BB: 8D 15 06  STA $0615
C - - - - 0x03E4CE FF:E4BE: 20 8B CB  JSR sub_CB8B_очистить_память_спрайтов
C - - - - 0x03E4D1 FF:E4C1: A9 2E     LDA #$2E
C - - - - 0x03E4D3 FF:E4C3: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03E4D6 FF:E4C6: A9 1A     LDA #$1A
C - - - - 0x03E4D8 FF:E4C8: 85 24     STA ram_для_5114
C - - - - 0x03E4DA FF:E4CA: A9 1B     LDA #$1B
C - - - - 0x03E4DC FF:E4CC: 85 25     STA ram_для_5115
C - - - - 0x03E4DE FF:E4CE: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E4E1 FF:E4D1: A2 50     LDX #$50
C - - - - 0x03E4E3 FF:E4D3: 9A        TXS
C - - - - 0x03E4E4 FF:E4D4: 4C 03 80  JMP loc_0x03404C
































.segment "BANK_FF"
.incbin "DPCM.bin"


.export sub_0x03E4E7
sub_0x03E4E7:
sub_E4D7:
C D - - - 0x03E4E7 FF:E4D7: 85 43     STA ram_0043
C - - - - 0x03E4E9 FF:E4D9: A9 00     LDA #$00
C - - - - 0x03E4EB FF:E4DB: 8D 00 06  STA ram_колво_нападающих
C - - - - 0x03E4EE FF:E4DE: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E4F1 FF:E4E1: 49 0B     EOR #$0B
C - - - - 0x03E4F3 FF:E4E3: 18        CLC
C - - - - 0x03E4F4 FF:E4E4: 69 01     ADC #$01
C - - - - 0x03E4F6 FF:E4E6: 85 41     STA ram_0041
C - - - - 0x03E4F8 FF:E4E8: A9 0A     LDA #$0A
C - - - - 0x03E4FA FF:E4EA: 85 42     STA ram_0042
bra_E4EC:
C - - - - 0x03E4FC FF:E4EC: A5 41     LDA ram_0041
C - - - - 0x03E4FE FF:E4EE: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E501 FF:E4F1: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03E503 FF:E4F3: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E505 FF:E4F5: D0 03     BNE bra_E4FA
C - - - - 0x03E507 FF:E4F7: 20 01 E5  JSR sub_E501
bra_E4FA:
C - - - - 0x03E50A FF:E4FA: E6 41     INC ram_0041
C - - - - 0x03E50C FF:E4FC: C6 42     DEC ram_0042
C - - - - 0x03E50E FF:E4FE: D0 EC     BNE bra_E4EC
C - - - - 0x03E510 FF:E500: 60        RTS

sub_E501:
C - - - - 0x03E511 FF:E501: A9 00     LDA #$00
C - - - - 0x03E513 FF:E503: 85 44     STA ram_0044
C - - - - 0x03E515 FF:E505: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E517 FF:E507: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E519 FF:E509: 38        SEC
C - - - - 0x03E51A FF:E50A: ED 35 06  SBC $0635
C - - - - 0x03E51D FF:E50D: B0 04     BCS bra_E513
C - - - - 0x03E51F FF:E50F: 49 FF     EOR #$FF
C - - - - 0x03E521 FF:E511: 69 01     ADC #$01
bra_E513:
C - - - - 0x03E523 FF:E513: C5 43     CMP ram_0043
C - - - - 0x03E525 FF:E515: B0 02     BCS bra_E519
C - - - - 0x03E527 FF:E517: E6 44     INC ram_0044
bra_E519:
C - - - - 0x03E529 FF:E519: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03E52B FF:E51B: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E52D FF:E51D: 38        SEC
C - - - - 0x03E52E FF:E51E: ED 37 06  SBC $0637
C - - - - 0x03E531 FF:E521: B0 04     BCS bra_E527
C - - - - 0x03E533 FF:E523: 49 FF     EOR #$FF
C - - - - 0x03E535 FF:E525: 69 01     ADC #$01
bra_E527:
C - - - - 0x03E537 FF:E527: C5 43     CMP ram_0043
C - - - - 0x03E539 FF:E529: B0 02     BCS bra_E52D
C - - - - 0x03E53B FF:E52B: E6 44     INC ram_0044
bra_E52D:
C - - - - 0x03E53D FF:E52D: A5 44     LDA ram_0044
C - - - - 0x03E53F FF:E52F: C9 02     CMP #$02
C - - - - 0x03E541 FF:E531: D0 18     BNE bra_E54B_выход
C - - - - 0x03E543 FF:E533: AE 00 06  LDX ram_колво_нападающих
C - - - - 0x03E546 FF:E536: E0 05     CPX #$05
C - - - - 0x03E548 FF:E538: B0 11     BCS bra_E54B_выход
C - - - - 0x03E54A FF:E53A: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E54D FF:E53D: F0 04     BEQ bra_E543
C - - - - 0x03E54F FF:E53F: E0 04     CPX #$04
C - - - - 0x03E551 FF:E541: B0 08     BCS bra_E54B_выход
bra_E543:
C - - - - 0x03E553 FF:E543: A5 41     LDA ram_0041
C - - - - 0x03E555 FF:E545: 9D 01 06  STA ram_номер_нападающего,X
C - - - - 0x03E558 FF:E548: EE 00 06  INC ram_колво_нападающих
bra_E54B_выход:
C - - - - 0x03E55B FF:E54B: 60        RTS

.export ofs_0x03E55C
ofs_0x03E55C:
C D - - - 0x03E55C FF:E54C: A9 00     LDA #$00
C - - - - 0x03E55E FF:E54E: 8D 4E 04  STA ram_высота_мяча
C - - - - 0x03E561 FF:E551: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03E564 FF:E554: F0 3A     BEQ bra_E590
C - - - - 0x03E566 FF:E556: A2 00     LDX #$00
C - - - - 0x03E568 FF:E558: A0 00     LDY #$00
bra_E55A:
C - - - - 0x03E56A FF:E55A: BD 0B 06  LDA ram_действие_защитника,X
C - - - - 0x03E56D FF:E55D: C9 05     CMP #$05      ; mark
C - - - - 0x03E56F FF:E55F: D0 0D     BNE bra_E56E
C - - - - 0x03E571 FF:E561: BD 01 06  LDA ram_номер_нападающего,X
C - - - - 0x03E574 FF:E564: F0 08     BEQ bra_E56E
C - - - - 0x03E576 FF:E566: C9 0B     CMP #$0B
C - - - - 0x03E578 FF:E568: F0 04     BEQ bra_E56E
C - - - - 0x03E57A FF:E56A: 99 01 06  STA ram_номер_нападающего,Y
C - - - - 0x03E57D FF:E56D: C8        INY
bra_E56E:
C - - - - 0x03E57E FF:E56E: E8        INX
C - - - - 0x03E57F FF:E56F: EC 00 06  CPX ram_колво_нападающих
C - - - - 0x03E582 FF:E572: D0 E6     BNE bra_E55A
C - - - - 0x03E584 FF:E574: 98        TYA
C - - - - 0x03E585 FF:E575: F0 19     BEQ bra_E590
C - - - - 0x03E587 FF:E577: 8C 00 06  STY ram_колво_нападающих
C - - - - 0x03E58A FF:E57A: A9 2E     LDA #$2E
C - - - - 0x03E58C FF:E57C: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
C - - - - 0x03E58F FF:E57F: A9 1A     LDA #$1A
C - - - - 0x03E591 FF:E581: 85 24     STA ram_для_5114
C - - - - 0x03E593 FF:E583: A9 1B     LDA #$1B
C - - - - 0x03E595 FF:E585: 85 25     STA ram_для_5115
C - - - - 0x03E597 FF:E587: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E59A FF:E58A: A2 50     LDX #$50
C - - - - 0x03E59C FF:E58C: 9A        TXS
C - - - - 0x03E59D FF:E58D: 4C 03 80  JMP loc_0x03404C
bra_E590:
C - - - - 0x03E5A0 FF:E590: A2 50     LDX #$50
C - - - - 0x03E5A2 FF:E592: 9A        TXS
C - - - - 0x03E5A3 FF:E593: 4C DF E0  JMP loc_E0DF

.export ofs_0x03E5A6
ofs_0x03E5A6:
C D - - - 0x03E5A6 FF:E596: AD E2 00  LDA ram_рандом_2
C - - - - 0x03E5A9 FF:E599: C9 E0     CMP #$E0
C - - - - 0x03E5AB FF:E59B: B0 1D     BCS bra_E5BA
C - - - - 0x03E5AD FF:E59D: 20 77 CD  JSR sub_CD77_адрес_игрока_адрес_игрока_команды_без_мяча
C - - - - 0x03E5B0 FF:E5A0: A0 07     LDY #con_игрок_координата_Y_lo
C - - - - 0x03E5B2 FF:E5A2: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E5B4 FF:E5A4: 18        CLC
C - - - - 0x03E5B5 FF:E5A5: 69 1A     ADC #$1A
C - - - - 0x03E5B7 FF:E5A7: C9 80     CMP #$80
C - - - - 0x03E5B9 FF:E5A9: 90 02     BCC bra_E5AD
- - - - - 0x03E5BB FF:E5AB: A9 7F     LDA #$7F
bra_E5AD:
C - - - - 0x03E5BD FF:E5AD: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E5BF FF:E5AF: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E5C1 FF:E5B1: A9 04     LDA #$04
C - - - - 0x03E5C3 FF:E5B3: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E5C5 FF:E5B5: A9 42     LDA #$42
C - - - - 0x03E5C7 FF:E5B7: 20 B0 CB  JSR sub_CBB0_запись_номера_сценария
bra_E5BA:
C - - - - 0x03E5CA FF:E5BA: 48        PHA
C - - - - 0x03E5CD FF:E5BD: A9 14     LDA #$14
C - - - - 0x03E5CF FF:E5BF: 85 24     STA ram_для_5114
C - - - - 0x03E5D1 FF:E5C1: A9 15     LDA #$15
C - - - - 0x03E5D3 FF:E5C3: 85 25     STA ram_для_5115
C - - - - 0x03E5D5 FF:E5C5: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E5D8 FF:E5C8: 68        PLA
; сработало при наебке кипера
C - - - - 0x03E5D9 FF:E5C9: 20 0C 80  JSR sub_0x0287A6
C - - - - 0x03E5DC FF:E5CC: A9 01     LDA #$01
C - - - - 0x03E5DE FF:E5CE: 48        PHA
C - - - - 0x03E5E1 FF:E5D1: A9 1A     LDA #$1A
C - - - - 0x03E5E3 FF:E5D3: 85 24     STA ram_для_5114
C - - - - 0x03E5E5 FF:E5D5: A9 1B     LDA #$1B
C - - - - 0x03E5E7 FF:E5D7: 85 25     STA ram_для_5115
C - - - - 0x03E5E9 FF:E5D9: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E5EC FF:E5DC: 68        PLA
C - - - - 0x03E5ED FF:E5DD: 20 24 80  JSR sub_0x034CB4
C - - - - 0x03E5F0 FF:E5E0: AE 35 06  LDX $0635
C - - - - 0x03E5F3 FF:E5E3: AC 37 06  LDY $0637
C - - - - 0x03E5F6 FF:E5E6: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E5F9 FF:E5E9: 8D FE 05  STA $05FE
C - - - - 0x03E5FC FF:E5EC: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03E5FF FF:E5EF: F0 1D     BEQ bra_E60E
C - - - - 0x03E601 FF:E5F1: A9 00     LDA #$00
C - - - - 0x03E603 FF:E5F3: 8D 16 06  STA ram_номер_защитника
bra_E5F6_цикл:
C - - - - 0x03E606 FF:E5F6: AE 16 06  LDX ram_номер_защитника
C - - - - 0x03E609 FF:E5F9: BD 0B 06  LDA ram_действие_защитника,X
C - - - - 0x03E60C FF:E5FC: C9 05     CMP #$05
C - - - - 0x03E60E FF:E5FE: D0 03     BNE bra_E603_достигнут_лимит
C - - - - 0x03E610 FF:E600: 20 16 E6  JSR sub_E616
bra_E603_достигнут_лимит:
C - - - - 0x03E613 FF:E603: EE 16 06  INC ram_номер_защитника
C - - - - 0x03E616 FF:E606: AD 16 06  LDA ram_номер_защитника
C - - - - 0x03E619 FF:E609: CD 00 06  CMP ram_колво_нападающих
C - - - - 0x03E61C FF:E60C: D0 E8     BNE bra_E5F6_цикл
bra_E60E:
C - - - - 0x03E61E FF:E60E: A9 04     LDA #$04
C - - - - 0x03E620 FF:E610: 8D 2B 06  STA $062B
C - - - - 0x03E623 FF:E613: 4C 96 DE  JMP loc_DE96

sub_E616:
C - - - - 0x03E626 FF:E616: A9 01     LDA #$01
C - - - - 0x03E628 FF:E618: 8D 3B 04  STA ram_действие_атаки
C - - - - 0x03E62B FF:E61B: A9 00     LDA #$00
C - - - - 0x03E62D FF:E61D: 8D 3C 04  STA ram_подтип_действия_атаки
C - - - - 0x03E630 FF:E620: A9 02     LDA #$02
C - - - - 0x03E632 FF:E622: 8D 3D 04  STA ram_действие_защиты
C - - - - 0x03E635 FF:E625: A9 00     LDA #$00
C - - - - 0x03E637 FF:E627: 8D 3E 04  STA ram_подтип_действия_защиты
C - - - - 0x03E63A FF:E62A: BD 01 06  LDA ram_номер_нападающего,X
C - - - - 0x03E63D FF:E62D: F0 48     BEQ bra_E677_выход
C - - - - 0x03E63F FF:E62F: C9 0B     CMP #$0B
C - - - - 0x03E641 FF:E631: F0 44     BEQ bra_E677_выход
C - - - - 0x03E643 FF:E633: 8D 42 04  STA ram_игрок_без_мяча
C - - - - 0x03E646 FF:E636: 48        PHA
C - - - - 0x03E649 FF:E639: A9 1C     LDA #$1C
C - - - - 0x03E64B FF:E63B: 85 24     STA ram_для_5114
C - - - - 0x03E64D FF:E63D: A9 1D     LDA #$1D
C - - - - 0x03E64F FF:E63F: 85 25     STA ram_для_5115
C - - - - 0x03E651 FF:E641: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E654 FF:E644: 68        PLA
; сработало когда соперник пытается наебать моего кипера
C - - - - 0x03E655 FF:E645: 20 15 80  JSR sub_0x038025
C - - - - 0x03E658 FF:E648: A5 32     LDA ram_0032
C - - - - 0x03E65A FF:E64A: 18        CLC
C - - - - 0x03E65B FF:E64B: 69 04     ADC #$04
C - - - - 0x03E65D FF:E64D: 90 02     BCC bra_E651
- - - - - 0x03E65F FF:E64F: A9 FF     LDA #$FF
bra_E651:
C - - - - 0x03E661 FF:E651: 85 32     STA ram_0032
C - - - - 0x03E663 FF:E653: 48        PHA
C - - - - 0x03E666 FF:E656: A9 1A     LDA #$1A
C - - - - 0x03E668 FF:E658: 85 24     STA ram_для_5114
C - - - - 0x03E66A FF:E65A: A9 1B     LDA #$1B
C - - - - 0x03E66C FF:E65C: 85 25     STA ram_для_5115
C - - - - 0x03E66E FF:E65E: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E671 FF:E661: 68        PLA
C - - - - 0x03E672 FF:E662: 20 12 80  JSR sub_0x03489D
C - - - - 0x03E675 FF:E665: 48        PHA
C - - - - 0x03E678 FF:E668: A9 1A     LDA #$1A
C - - - - 0x03E67A FF:E66A: 85 24     STA ram_для_5114
C - - - - 0x03E67C FF:E66C: A9 1B     LDA #$1B
C - - - - 0x03E67E FF:E66E: 85 25     STA ram_для_5115
C - - - - 0x03E680 FF:E670: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03E683 FF:E673: 68        PLA
C - - - - 0x03E684 FF:E674: 20 15 80  JSR sub_0x0348B8
bra_E677_выход:
C - - - - 0x03E687 FF:E677: 60        RTS

.export loc_0x03E688
loc_0x03E688:
C D - - - 0x03E688 FF:E678: AD FB 05  LDA ram_команда_с_мячом
C - - - - 0x03E68B FF:E67B: 49 0B     EOR #$0B
C - - - - 0x03E68D FF:E67D: 8D FB 05  STA ram_команда_с_мячом
C - - - - 0x03E690 FF:E680: 20 93 D0  JSR sub_D093_выбор_мелодии_команды
C - - - - 0x03E693 FF:E683: A9 02     LDA #$02
C - - - - 0x03E695 FF:E685: 20 0F CB  JSR sub_CB0F
.export ofs_0x03E698
ofs_0x03E698:
C D - - - 0x03E698 FF:E688: A9 00     LDA #$00
C - - - - 0x03E69A FF:E68A: 2C 35 06  BIT $0635
C - - - - 0x03E69D FF:E68D: 10 02     BPL bra_E691
C - - - - 0x03E69F FF:E68F: 09 01     ORA #$01
bra_E691:
C - - - - 0x03E6A1 FF:E691: 2C 37 06  BIT $0637
C - - - - 0x03E6A4 FF:E694: 10 02     BPL bra_E698
C - - - - 0x03E6A6 FF:E696: 09 02     ORA #$02
bra_E698:
C - - - - 0x03E6A8 FF:E698: 85 3A     STA ram_003A
C - - - - 0x03E6AA FF:E69A: AD E2 00  LDA ram_рандом_2
C - - - - 0x03E6AD FF:E69D: 29 07     AND #$07
C - - - - 0x03E6AF FF:E69F: 0A        ASL
C - - - - 0x03E6B0 FF:E6A0: AA        TAX
C - - - - 0x03E6B1 FF:E6A1: BC D0 E6  LDY tbl_E6D0,X
C - - - - 0x03E6B4 FF:E6A4: BD CF E6  LDA tbl_E6CF,X
C - - - - 0x03E6B7 FF:E6A7: AA        TAX
C - - - - 0x03E6B8 FF:E6A8: 46 3A     LSR ram_003A
C - - - - 0x03E6BA FF:E6AA: 90 04     BCC bra_E6B0
C - - - - 0x03E6BC FF:E6AC: 8A        TXA
C - - - - 0x03E6BD FF:E6AD: 49 FF     EOR #$FF
C - - - - 0x03E6BF FF:E6AF: AA        TAX
bra_E6B0:
C - - - - 0x03E6C0 FF:E6B0: 46 3A     LSR ram_003A
C - - - - 0x03E6C2 FF:E6B2: 90 04     BCC bra_E6B8
C - - - - 0x03E6C4 FF:E6B4: 98        TYA
C - - - - 0x03E6C5 FF:E6B5: 49 FF     EOR #$FF
C - - - - 0x03E6C7 FF:E6B7: A8        TAY
bra_E6B8:
C - - - - 0x03E6C8 FF:E6B8: 8E 35 06  STX $0635
C - - - - 0x03E6CB FF:E6BB: 8C 37 06  STY $0637
C - - - - 0x03E6CE FF:E6BE: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E6D1 FF:E6C1: 8D 38 06  STA $0638
C - - - - 0x03E6D4 FF:E6C4: 8D FE 05  STA $05FE
C - - - - 0x03E6D7 FF:E6C7: A9 04     LDA #$04
C - - - - 0x03E6D9 FF:E6C9: 8D 2B 06  STA $062B
C - - - - 0x03E6DC FF:E6CC: 4C 96 DE  JMP loc_DE96

; bzk хз как лучше оформить
tbl_E6CF:
- D - - - 0x03E6DF FF:E6CF: 4C        .byte $4C    ; <シ>
tbl_E6D0:
- D - - - 0x03E6E0 FF:E6D0: 54        .byte $54    ; <ト>
- D - - - 0x03E6E1 FF:E6D1: 5C        .byte $5C    ; <フ>
- D - - - 0x03E6E2 FF:E6D2: 54        .byte $54    ; <ト>
- D - - - 0x03E6E3 FF:E6D3: 6C        .byte $6C    ; <ワ>
- D - - - 0x03E6E4 FF:E6D4: 5C        .byte $5C    ; <フ>
- D - - - 0x03E6E5 FF:E6D5: 5C        .byte $5C    ; <フ>
- D - - - 0x03E6E6 FF:E6D6: 64        .byte $64    ; <ヤ>
- D - - - 0x03E6E7 FF:E6D7: 74        .byte $74    ; <ィ>
- D - - - 0x03E6E8 FF:E6D8: 6C        .byte $6C    ; <ワ>
- D - - - 0x03E6E9 FF:E6D9: 64        .byte $64    ; <ヤ>
- D - - - 0x03E6EA FF:E6DA: 74        .byte $74    ; <ィ>
- D - - - 0x03E6EB FF:E6DB: 7C        .byte $7C    ; <~>
- D - - - 0x03E6EC FF:E6DC: 7C        .byte $7C    ; <~>
- D - - - 0x03E6ED FF:E6DD: 74        .byte $74    ; <ィ>
- D - - - 0x03E6EE FF:E6DE: 8C        .byte $8C    ; <M>

.export sub_0x03E6FC
sub_0x03E6FC:
sub_E6EC:
C D - - - 0x03E6FC FF:E6EC: AD 41 04  LDA ram_игрок_с_мячом
C - - - - 0x03E6FF FF:E6EF: 20 7C CD  JSR sub_CD7C_адрес_игрока
C - - - - 0x03E702 FF:E6F2: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E704 FF:E6F4: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E706 FF:E6F6: 8D 35 06  STA $0635
C - - - - 0x03E709 FF:E6F9: AA        TAX
C - - - - 0x03E70A FF:E6FA: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03E70C FF:E6FC: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E70E FF:E6FE: 8D 37 06  STA $0637
C - - - - 0x03E711 FF:E701: A8        TAY
C - - - - 0x03E712 FF:E702: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E715 FF:E705: 8D FE 05  STA $05FE
C - - - - 0x03E718 FF:E708: 60        RTS

sub_E709:
C - - - - 0x03E719 FF:E709: AD 2A 06  LDA $062A
C - - - - 0x03E71C FF:E70C: 29 7F     AND #$7F
C - - - - 0x03E71E FF:E70E: 8D 2A 06  STA $062A
C - - - - 0x03E721 FF:E711: AD 37 06  LDA $0637
C - - - - 0x03E724 FF:E714: 38        SEC
C - - - - 0x03E725 FF:E715: E9 50     SBC #$50
C - - - - 0x03E727 FF:E717: 29 E0     AND #$E0
C - - - - 0x03E729 FF:E719: 4A        LSR
C - - - - 0x03E72A FF:E71A: 4A        LSR
C - - - - 0x03E72B FF:E71B: 4A        LSR
C - - - - 0x03E72C FF:E71C: 85 3A     STA ram_003A
C - - - - 0x03E72E FF:E71E: 4A        LSR
C - - - - 0x03E72F FF:E71F: 4A        LSR
C - - - - 0x03E730 FF:E720: 65 3A     ADC ram_003A
C - - - - 0x03E732 FF:E722: 85 3A     STA ram_003A
C - - - - 0x03E734 FF:E724: AD 35 06  LDA $0635
C - - - - 0x03E737 FF:E727: 38        SEC
C - - - - 0x03E738 FF:E728: E9 30     SBC #$30
C - - - - 0x03E73A FF:E72A: 29 E0     AND #$E0
C - - - - 0x03E73C FF:E72C: 4A        LSR
C - - - - 0x03E73D FF:E72D: 4A        LSR
C - - - - 0x03E73E FF:E72E: 4A        LSR
C - - - - 0x03E73F FF:E72F: 4A        LSR
C - - - - 0x03E740 FF:E730: 4A        LSR
C - - - - 0x03E741 FF:E731: 65 3A     ADC ram_003A
C - - - - 0x03E743 FF:E733: CD 2A 06  CMP $062A
C - - - - 0x03E746 FF:E736: F0 05     BEQ bra_E73D_выход
C - - - - 0x03E748 FF:E738: 09 80     ORA #$80
C - - - - 0x03E74A FF:E73A: 8D 2A 06  STA $062A
bra_E73D_выход:
C - - - - 0x03E74D FF:E73D: 60        RTS

.export sub_0x03E74E
sub_0x03E74E:
sub_E73E:
C D - - - 0x03E74E FF:E73E: A9 00     LDA #$00
C - - - - 0x03E750 FF:E740: 8D 00 06  STA ram_колво_нападающих
C - - - - 0x03E753 FF:E743: 8D FF 05  STA $05FF
C - - - - 0x03E756 FF:E746: AD FE 05  LDA $05FE
C - - - - 0x03E759 FF:E749: CD 38 06  CMP $0638
C - - - - 0x03E75C FF:E74C: D0 03     BNE bra_E751
C - - - - 0x03E75E FF:E74E: 4C CF E7  RTS
bra_E751:
; bzk тут используются indirect адреса для игроков, выяснить нахрена
C - - - - 0x03E761 FF:E751: A9 2F     LDA #$2F
C - - - - 0x03E763 FF:E753: 85 34     STA ram_plr_data
C - - - - 0x03E765 FF:E755: A9 06     LDA #$06
C - - - - 0x03E767 FF:E757: 85 35     STA ram_plr_data + 1
C - - - - 0x03E769 FF:E759: 20 D0 E7  JSR sub_E7D0
C - - - - 0x03E76C FF:E75C: 8D 2C 06  STA $062C
C - - - - 0x03E76F FF:E75F: 48        PHA
C - - - - 0x03E770 FF:E760: 20 4A CE  JSR sub_CE4A
C - - - - 0x03E773 FF:E763: 8E 39 06  STX $0639
C - - - - 0x03E776 FF:E766: 8C 3A 06  STY $063A
C - - - - 0x03E779 FF:E769: 68        PLA
C - - - - 0x03E77A FF:E76A: 20 4D CE  JSR sub_CE4D
C - - - - 0x03E77D FF:E76D: 8E 3B 06  STX $063B
C - - - - 0x03E780 FF:E770: 8C 3C 06  STY $063C
loc_E773:
C D - - - 0x03E783 FF:E773: A9 01     LDA #$01
C - - - - 0x03E785 FF:E775: 20 0F CB  JSR sub_CB0F
bra_E778:
C - - - - 0x03E788 FF:E778: AD 39 06  LDA $0639
C - - - - 0x03E78B FF:E77B: 18        CLC
C - - - - 0x03E78C FF:E77C: 6D 34 06  ADC $0634
C - - - - 0x03E78F FF:E77F: 8D 34 06  STA $0634
C - - - - 0x03E792 FF:E782: AD 3A 06  LDA $063A
C - - - - 0x03E795 FF:E785: 6D 35 06  ADC $0635
C - - - - 0x03E798 FF:E788: 8D 35 06  STA $0635
C - - - - 0x03E79B FF:E78B: AA        TAX
C - - - - 0x03E79C FF:E78C: AD 3B 06  LDA $063B
C - - - - 0x03E79F FF:E78F: 18        CLC
C - - - - 0x03E7A0 FF:E790: 6D 36 06  ADC $0636
C - - - - 0x03E7A3 FF:E793: 8D 36 06  STA $0636
C - - - - 0x03E7A6 FF:E796: AD 3C 06  LDA $063C
C - - - - 0x03E7A9 FF:E799: 6D 37 06  ADC $0637
C - - - - 0x03E7AC FF:E79C: 8D 37 06  STA $0637
C - - - - 0x03E7AF FF:E79F: A8        TAY
C - - - - 0x03E7B0 FF:E7A0: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E7B3 FF:E7A3: C9 FF     CMP #$FF
C - - - - 0x03E7B5 FF:E7A5: F0 13     BEQ bra_E7BA
C - - - - 0x03E7B7 FF:E7A7: CD FE 05  CMP $05FE
C - - - - 0x03E7BA FF:E7AA: F0 CC     BEQ bra_E778
C - - - - 0x03E7BC FF:E7AC: 8D FE 05  STA $05FE
C - - - - 0x03E7BF FF:E7AF: CD 38 06  CMP $0638
C - - - - 0x03E7C2 FF:E7B2: F0 0C     BEQ bra_E7C0
C - - - - 0x03E7C4 FF:E7B4: 20 0F 80  JSR sub_0x0347F1
C - - - - 0x03E7C7 FF:E7B7: 4C 73 E7  JMP loc_E773
bra_E7BA:
C - - - - 0x03E7CA FF:E7BA: AD 38 06  LDA $0638
C - - - - 0x03E7CD FF:E7BD: 8D FE 05  STA $05FE
bra_E7C0:
C - - - - 0x03E7D0 FF:E7C0: AD FE 05  LDA $05FE
C - - - - 0x03E7D3 FF:E7C3: 20 C9 CD  JSR sub_CDC9_проверить_координаты_игрока
C - - - - 0x03E7D6 FF:E7C6: 8E 35 06  STX $0635
C - - - - 0x03E7D9 FF:E7C9: 8C 37 06  STY $0637
C - - - - 0x03E7DC FF:E7CC: 20 0C 80  JMP sub_0x034845

sub_E7D0:
; код хочет получить A на выходе для 0044
C - - - - 0x03E7E0 FF:E7D0: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E7E2 FF:E7D2: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E7E4 FF:E7D4: AA        TAX
C - - - - 0x03E7E5 FF:E7D5: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03E7E7 FF:E7D7: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E7E9 FF:E7D9: A8        TAY
C - - - - 0x03E7EA FF:E7DA: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E7ED FF:E7DD: A0 09     LDY #con_игрок_09
C - - - - 0x03E7EF FF:E7DF: D1 34     CMP (ram_plr_data),Y
C - - - - 0x03E7F1 FF:E7E1: D0 01     BNE bra_E7E4
C - - - - 0x03E7F3 FF:E7E3: 60        RTS
bra_E7E4:
C - - - - 0x03E7F4 FF:E7E4: A0 09     LDY #con_игрок_09
C - - - - 0x03E7F6 FF:E7E6: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E7F8 FF:E7E8: C9 F0     CMP #$F0
C - - - - 0x03E7FA FF:E7EA: D0 03     BNE bra_E7EF
C - - - - 0x03E7FC FF:E7EC: AD FE 05  LDA $05FE
bra_E7EF:
C - - - - 0x03E7FF FF:E7EF: 20 C9 CD  JSR sub_CDC9_проверить_координаты_игрока
C - - - - 0x03E802 FF:E7F2: 8A        TXA
C - - - - 0x03E803 FF:E7F3: 85 3A     STA ram_003A
C - - - - 0x03E805 FF:E7F5: 98        TYA
C - - - - 0x03E806 FF:E7F6: 85 3B     STA ram_003B
C - - - - 0x03E808 FF:E7F8: A9 00     LDA #$00
C - - - - 0x03E80A FF:E7FA: 85 3C     STA ram_003C
C - - - - 0x03E80C FF:E7FC: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E80E FF:E7FE: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E810 FF:E800: 38        SEC
C - - - - 0x03E811 FF:E801: E5 3A     SBC ram_003A
C - - - - 0x03E813 FF:E803: B0 06     BCS bra_E80B
C - - - - 0x03E815 FF:E805: 49 FF     EOR #$FF
C - - - - 0x03E817 FF:E807: 69 01     ADC #$01
C - - - - 0x03E819 FF:E809: E6 3C     INC ram_003C
bra_E80B:
C - - - - 0x03E81B FF:E80B: 85 71     STA ram_0071
C - - - - 0x03E81D FF:E80D: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03E81F FF:E80F: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E821 FF:E811: 38        SEC
C - - - - 0x03E822 FF:E812: E5 3B     SBC ram_003B
C - - - - 0x03E824 FF:E814: B0 08     BCS bra_E81E
C - - - - 0x03E826 FF:E816: 49 FF     EOR #$FF
C - - - - 0x03E828 FF:E818: 69 01     ADC #$01
C - - - - 0x03E82A FF:E81A: E6 3C     INC ram_003C
C - - - - 0x03E82C FF:E81C: E6 3C     INC ram_003C
bra_E81E:
C - - - - 0x03E82E FF:E81E: 85 70     STA ram_0070
C - - - - 0x03E830 FF:E820: A9 00     LDA #$00
C - - - - 0x03E832 FF:E822: 85 6F     STA ram_006F
C - - - - 0x03E834 FF:E824: 85 74     STA ram_0074
C - - - - 0x03E836 FF:E826: 20 3C CD  JSR sub_CD3C_получить_младший_разряд_числа
C - - - - 0x03E839 FF:E829: A2 00     LDX #$00
bra_E82B:
C - - - - 0x03E83B FF:E82B: BD CD FA  LDA tbl_FACC_скорость + 1,X
C - - - - 0x03E83E FF:E82E: C5 70     CMP ram_0070
C - - - - 0x03E840 FF:E830: F0 04     BEQ bra_E836
C - - - - 0x03E842 FF:E832: B0 0F     BCS bra_E843
C - - - - 0x03E844 FF:E834: 90 09     BCC bra_E83F
bra_E836:
C - - - - 0x03E846 FF:E836: BD CC FA  LDA tbl_FACC_скорость,X
C - - - - 0x03E849 FF:E839: E5 6F     SBC ram_006F
C - - - - 0x03E84B FF:E83B: F0 06     BEQ bra_E843
C - - - - 0x03E84D FF:E83D: B0 04     BCS bra_E843
bra_E83F:
C - - - - 0x03E84F FF:E83F: E8        INX
C - - - - 0x03E850 FF:E840: E8        INX
C - - - - 0x03E851 FF:E841: D0 E8     BNE bra_E82B
bra_E843:
C - - - - 0x03E853 FF:E843: 8A        TXA
C - - - - 0x03E854 FF:E844: 4A        LSR
C - - - - 0x03E855 FF:E845: 46 3C     LSR ram_003C
C - - - - 0x03E857 FF:E847: B0 04     BCS bra_E84D
C - - - - 0x03E859 FF:E849: 49 FF     EOR #$FF
C - - - - 0x03E85B FF:E84B: 29 7F     AND #$7F
bra_E84D:
C - - - - 0x03E85D FF:E84D: 46 3C     LSR ram_003C
C - - - - 0x03E85F FF:E84F: B0 02     BCS bra_E853_выход
C - - - - 0x03E861 FF:E851: 49 FF     EOR #$FF
bra_E853_выход:
C - - - - 0x03E863 FF:E853: 60        RTS

sub_E854:
C - - - - 0x03E864 FF:E854: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03E866 FF:E856: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E868 FF:E858: D0 45     BNE bra_E89F_выход
C - - - - 0x03E86A FF:E85A: AD FF 05  LDA $05FF
C - - - - 0x03E86D FF:E85D: 85 43     STA ram_0043
C - - - - 0x03E86F FF:E85F: 20 D0 E7  JSR sub_E7D0
C - - - - 0x03E872 FF:E862: 85 44     STA ram_0044
bra_E864:
C - - - - 0x03E874 FF:E864: A0 06     LDY #con_игрок_координата_X_hi
C - - - - 0x03E876 FF:E866: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E878 FF:E868: AA        TAX
C - - - - 0x03E879 FF:E869: A0 08     LDY #con_игрок_координата_Y_hi
C - - - - 0x03E87B FF:E86B: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E87D FF:E86D: A8        TAY
C - - - - 0x03E87E FF:E86E: 20 E2 CD  JSR sub_CDE2
C - - - - 0x03E881 FF:E871: A0 09     LDY #con_игрок_09
C - - - - 0x03E883 FF:E873: D1 34     CMP (ram_plr_data),Y
C - - - - 0x03E885 FF:E875: F0 21     BEQ bra_E898
C - - - - 0x03E887 FF:E877: AA        TAX
C - - - - 0x03E888 FF:E878: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E88A FF:E87A: C9 F0     CMP #$F0
C - - - - 0x03E88C FF:E87C: D0 05     BNE bra_E883
C - - - - 0x03E88E FF:E87E: EC FE 05  CPX $05FE
C - - - - 0x03E891 FF:E881: F0 15     BEQ bra_E898
bra_E883:
C - - - - 0x03E893 FF:E883: A0 07     LDY #con_игрок_координата_Y_lo
C - - - - 0x03E895 FF:E885: A5 44     LDA ram_0044
C - - - - 0x03E897 FF:E887: 20 A0 E8  JSR sub_E8A0
C - - - - 0x03E89A FF:E88A: A5 44     LDA ram_0044
C - - - - 0x03E89C FF:E88C: 18        CLC
C - - - - 0x03E89D FF:E88D: 69 40     ADC #$40
C - - - - 0x03E89F FF:E88F: A0 05     LDY #con_игрок_координата_X_lo
C - - - - 0x03E8A1 FF:E891: 20 A0 E8  JSR sub_E8A0
C - - - - 0x03E8A4 FF:E894: C6 43     DEC ram_0043
C - - - - 0x03E8A6 FF:E896: D0 CC     BNE bra_E864
bra_E898:
C - - - - 0x03E8A8 FF:E898: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03E8AA FF:E89A: A9 00     LDA #$00
C - - - - 0x03E8AC FF:E89C: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E8AE FF:E89E: 60        RTS
bra_E89F_выход:
C - - - - 0x03E8AF FF:E89F: 60        RTS

sub_E8A0:
; на вход в Y подается ось координат и хранится в 0046
C - - - - 0x03E8B0 FF:E8A0: 84 46     STY ram_0046
C - - - - 0x03E8B2 FF:E8A2: 18        CLC
C - - - - 0x03E8B3 FF:E8A3: 69 10     ADC #$10
C - - - - 0x03E8B5 FF:E8A5: 4A        LSR
C - - - - 0x03E8B6 FF:E8A6: 4A        LSR
C - - - - 0x03E8B7 FF:E8A7: 4A        LSR
C - - - - 0x03E8B8 FF:E8A8: 4A        LSR
C - - - - 0x03E8B9 FF:E8A9: 4A        LSR
C - - - - 0x03E8BA FF:E8AA: AA        TAX
C - - - - 0x03E8BB FF:E8AB: BD ED E8  LDA tbl_E8ED_диагональ,X
C - - - - 0x03E8BE FF:E8AE: 85 47     STA ram_0047
C - - - - 0x03E8C0 FF:E8B0: A4 32     LDY ram_0032
C - - - - 0x03E8C2 FF:E8B2: A6 33     LDX ram_0033
C - - - - 0x03E8C4 FF:E8B4: C6 47     DEC ram_0047
C - - - - 0x03E8C6 FF:E8B6: 10 06     BPL bra_E8BE
C - - - - 0x03E8C8 FF:E8B8: A2 00     LDX #$00
C - - - - 0x03E8CA FF:E8BA: A0 00     LDY #$00
C - - - - 0x03E8CC FF:E8BC: F0 10     BEQ bra_E8CE
bra_E8BE:
C - - - - 0x03E8CE FF:E8BE: C6 47     DEC ram_0047
C - - - - 0x03E8D0 FF:E8C0: 30 0C     BMI bra_E8CE
C - - - - 0x03E8D2 FF:E8C2: 98        TYA
C - - - - 0x03E8D3 FF:E8C3: 49 FF     EOR #$FF
C - - - - 0x03E8D5 FF:E8C5: A8        TAY
C - - - - 0x03E8D6 FF:E8C6: 8A        TXA
C - - - - 0x03E8D7 FF:E8C7: 49 FF     EOR #$FF
C - - - - 0x03E8D9 FF:E8C9: AA        TAX
C - - - - 0x03E8DA FF:E8CA: C8        INY
C - - - - 0x03E8DB FF:E8CB: D0 01     BNE bra_E8CE
C - - - - 0x03E8DD FF:E8CD: E8        INX
bra_E8CE:
C - - - - 0x03E8DE FF:E8CE: 84 48     STY ram_0048
C - - - - 0x03E8E0 FF:E8D0: 86 49     STX ram_0049
C - - - - 0x03E8E2 FF:E8D2: A0 0A     LDY #con_игрок_бездействие
C - - - - 0x03E8E4 FF:E8D4: B1 34     LDA (ram_plr_data),Y
C - - - - 0x03E8E6 FF:E8D6: 38        SEC
C - - - - 0x03E8E7 FF:E8D7: ED FF 05  SBC $05FF
C - - - - 0x03E8EA FF:E8DA: 10 10     BPL bra_E8EC_выход
C - - - - 0x03E8EC FF:E8DC: 49 FF     EOR #$FF
C - - - - 0x03E8EE FF:E8DE: 18        CLC
C - - - - 0x03E8EF FF:E8DF: 69 01     ADC #$01
C - - - - 0x03E8F1 FF:E8E1: F0 09     BEQ bra_E8EC_выход
C - - - - 0x03E8F3 FF:E8E3: A5 48     LDA ram_0048
C - - - - 0x03E8F5 FF:E8E5: A6 49     LDX ram_0049
C - - - - 0x03E8F7 FF:E8E7: A4 46     LDY ram_0046
C - - - - 0x03E8F9 FF:E8E9: 20 12 E9  JSR sub_E912_границы_поля
bra_E8EC_выход:
C - - - - 0x03E8FC FF:E8EC: 60        RTS

tbl_E8ED_диагональ:
; 00 - без движения, 01 - диагональ вправо вниз, 02 - диагональ влево вверх
; изменение байтов влияет только на автоматическое передвижение ботов
- D - - - 0x03E8FD FF:E8ED: 00        .byte $00
- D - - - 0x03E8FE FF:E8EE: 01        .byte $01    ; <あ>
- D - - - 0x03E8FF FF:E8EF: 01        .byte $01    ; <あ>
- D - - - 0x03E900 FF:E8F0: 01        .byte $01    ; <あ>
- D - - - 0x03E901 FF:E8F1: 00        .byte $00
- D - - - 0x03E902 FF:E8F2: 02        .byte $02    ; <い>
- D - - - 0x03E903 FF:E8F3: 02        .byte $02    ; <い>
- D - - - 0x03E904 FF:E8F4: 02        .byte $02    ; <い>

sub_E8F5:
; в 0047 сохраняется Y, который содержит в себе указатель на соответствующую ось координат
; в 0033 предположительно индикатор стороны движения, и границы не проверяются у неподвижного
C - - - - 0x03E905 FF:E8F5: 84 47     STY ram_0047
C - - - - 0x03E907 FF:E8F7: A4 32     LDY ram_0032
C - - - - 0x03E909 FF:E8F9: A6 33     LDX ram_0033
C - - - - 0x03E90B FF:E8FB: 29 03     AND #$03
; bzk тут вполне можно достать до послежнего rts
C - - - - 0x03E90D FF:E8FD: D0 01     BNE bra_E900
C - - - - 0x03E90F FF:E8FF: 60        RTS
bra_E900:
C - - - - 0x03E910 FF:E900: 4A        LSR
C - - - - 0x03E911 FF:E901: B0 0C     BCS bra_E90F
C - - - - 0x03E913 FF:E903: 98        TYA
C - - - - 0x03E914 FF:E904: 49 FF     EOR #$FF
C - - - - 0x03E916 FF:E906: A8        TAY
C - - - - 0x03E917 FF:E907: 8A        TXA
C - - - - 0x03E918 FF:E908: 49 FF     EOR #$FF
C - - - - 0x03E91A FF:E90A: AA        TAX
C - - - - 0x03E91B FF:E90B: C8        INY
C - - - - 0x03E91C FF:E90C: D0 01     BNE bra_E90F
- - - - - 0x03E91E FF:E90E: E8        INX
bra_E90F:
C - - - - 0x03E91F FF:E90F: 98        TYA
C - - - - 0x03E920 FF:E910: A4 47     LDY ram_0047
sub_E912_границы_поля:
; по соответствующей оси сначала проверяется граница слева, потом справа
C - - - - 0x03E922 FF:E912: 18        CLC
C - - - - 0x03E923 FF:E913: 71 34     ADC (ram_plr_data),Y
C - - - - 0x03E925 FF:E915: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E927 FF:E917: C8        INY
C - - - - 0x03E928 FF:E918: 8A        TXA
C - - - - 0x03E929 FF:E919: 71 34     ADC (ram_plr_data),Y
C - - - - 0x03E92B FF:E91B: C0 06     CPY #con_игрок_координата_X_hi
C - - - - 0x03E92D FF:E91D: F0 0E     BEQ bra_E92D_горизонталь
C - - - - 0x03E92F FF:E91F: A2 50     LDX #$50
C - - - - 0x03E931 FF:E921: C9 50     CMP #$50
C - - - - 0x03E933 FF:E923: 90 14     BCC bra_E939_ограничить_движение
C - - - - 0x03E935 FF:E925: A2 AF     LDX #$AF
C - - - - 0x03E937 FF:E927: C9 B0     CMP #$B0
C - - - - 0x03E939 FF:E929: B0 0E     BCS bra_E939_ограничить_движение
C - - - - 0x03E93B FF:E92B: 90 0D     BCC bra_E93A_запись_координаты
bra_E92D_горизонталь:
C - - - - 0x03E93D FF:E92D: A2 30     LDX #$30
C - - - - 0x03E93F FF:E92F: C9 30     CMP #$30
C - - - - 0x03E941 FF:E931: 90 06     BCC bra_E939_ограничить_движение
C - - - - 0x03E943 FF:E933: A2 CF     LDX #$CF
C - - - - 0x03E945 FF:E935: C9 D0     CMP #$D0
C - - - - 0x03E947 FF:E937: 90 01     BCC bra_E93A_запись_координаты
bra_E939_ограничить_движение:
; перед проверкой в X пишется максимальное значение, которое будет записано в адрес при попытке пересечь границу
C - - - - 0x03E949 FF:E939: 8A        TXA
bra_E93A_запись_координаты:
C - - - - 0x03E94A FF:E93A: 91 34     STA (ram_plr_data),Y
C - - - - 0x03E94C FF:E93C: 60        RTS

sub_E93D_отображение_выбранного_действия:
loc_E93D_отображение_выбранного_действия:
C D - - - 0x03E94D FF:E93D: 48        PHA
C - - - - 0x03E94E FF:E93E: 8A        TXA
C - - - - 0x03E94F FF:E93F: 48        PHA
bra_E940_ожидание_освобождения_буфера:
C - - - - 0x03E950 FF:E940: A9 01     LDA #$01
C - - - - 0x03E952 FF:E942: 20 0F CB  JSR sub_CB0F
C - - - - 0x03E955 FF:E945: AD 15 05  LDA $0515
C - - - - 0x03E958 FF:E948: D0 F6     BNE bra_E940_ожидание_освобождения_буфера
C - - - - 0x03E95A FF:E94A: A9 01     LDA #$01
C - - - - 0x03E95C FF:E94C: 8D 15 05  STA $0515
C - - - - 0x03E95F FF:E94F: A9 00     LDA #$00
C - - - - 0x03E961 FF:E951: 85 3E     STA ram_003E
C - - - - 0x03E963 FF:E953: 68        PLA
C - - - - 0x03E964 FF:E954: 4A        LSR
C - - - - 0x03E965 FF:E955: 66 3E     ROR ram_003E
C - - - - 0x03E967 FF:E957: 4A        LSR
C - - - - 0x03E968 FF:E958: 66 3E     ROR ram_003E
C - - - - 0x03E96A FF:E95A: 85 3F     STA ram_003F
C - - - - 0x03E96C FF:E95C: 68        PLA
C - - - - 0x03E96D FF:E95D: 0A        ASL
C - - - - 0x03E96E FF:E95E: 66 3A     ROR ram_003A
C - - - - 0x03E970 FF:E960: A8        TAY
C - - - - 0x03E972 FF:E962: B9 DA E9  LDA tbl_E9DA_действия,Y
C - - - - 0x03E975 FF:E965: 85 3C     STA ram_003C
C - - - - 0x03E977 FF:E967: B9 DB E9  LDA tbl_E9DA_действия + 1,Y
C - - - - 0x03E97A FF:E96A: 85 3D     STA ram_003D
C - - - - 0x03E97C FF:E96C: A0 00     LDY #$00
C - - - - 0x03E97E FF:E96E: 18        CLC
C - - - - 0x03E97F FF:E96F: B1 3C     LDA (ram_003C),Y
C - - - - 0x03E981 FF:E971: 65 3E     ADC ram_003E
C - - - - 0x03E983 FF:E973: 85 3E     STA ram_003E
C - - - - 0x03E985 FF:E975: C8        INY
C - - - - 0x03E986 FF:E976: B1 3C     LDA (ram_003C),Y
C - - - - 0x03E988 FF:E978: 65 3F     ADC ram_003F
C - - - - 0x03E98A FF:E97A: 85 3F     STA ram_003F
C - - - - 0x03E98C FF:E97C: C8        INY
C - - - - 0x03E98D FF:E97D: B1 3C     LDA (ram_003C),Y
C - - - - 0x03E98F FF:E97F: 29 03     AND #$03
C - - - - 0x03E991 FF:E981: 85 40     STA ram_0040
C - - - - 0x03E993 FF:E983: B1 3C     LDA (ram_003C),Y
C - - - - 0x03E995 FF:E985: 4A        LSR
C - - - - 0x03E996 FF:E986: 4A        LSR
C - - - - 0x03E997 FF:E987: 85 41     STA ram_0041
C - - - - 0x03E999 FF:E989: C8        INY
C - - - - 0x03E99A FF:E98A: A2 00     LDX #$00
bra_E98C_цикл_новой_строки:
C - - - - 0x03E99C FF:E98C: A5 41     LDA ram_0041
C - - - - 0x03E99E FF:E98E: 9D A5 04  STA $04A5,X
C - - - - 0x03E9A1 FF:E991: 18        CLC
C - - - - 0x03E9A2 FF:E992: A5 3E     LDA ram_003E
C - - - - 0x03E9A4 FF:E994: 9D A6 04  STA $04A6,X
C - - - - 0x03E9A7 FF:E997: 69 20     ADC #$20
C - - - - 0x03E9A9 FF:E999: 85 3E     STA ram_003E
C - - - - 0x03E9AB FF:E99B: A5 3F     LDA ram_003F
C - - - - 0x03E9AD FF:E99D: 9D A7 04  STA $04A7,X
C - - - - 0x03E9B0 FF:E9A0: 69 00     ADC #$00
C - - - - 0x03E9B2 FF:E9A2: 85 3F     STA ram_003F
C - - - - 0x03E9B4 FF:E9A4: E8        INX
C - - - - 0x03E9B5 FF:E9A5: E8        INX
C - - - - 0x03E9B6 FF:E9A6: E8        INX
C - - - - 0x03E9B7 FF:E9A7: A5 41     LDA ram_0041
C - - - - 0x03E9B9 FF:E9A9: 85 43     STA ram_0043
C - - - - 0x03E9BB FF:E9AB: 2C 3A 00  BIT ram_003A
C - - - - 0x03E9BE FF:E9AE: 30 11     BMI bra_E9C1
bra_E9B0_цикл_чтения_строки:
C - - - - 0x03E9C0 FF:E9B0: B1 3C     LDA (ram_003C),Y
C - - - - 0x03E9C2 FF:E9B2: C8        INY
C - - - - 0x03E9C3 FF:E9B3: C9 FE     CMP #$FE
C - - - - 0x03E9C5 FF:E9B5: F0 0A     BEQ bra_E9C1
C - - - - 0x03E9C7 FF:E9B7: 9D A5 04  STA $04A5,X
C - - - - 0x03E9CA FF:E9BA: E8        INX
C - - - - 0x03E9CB FF:E9BB: C6 43     DEC ram_0043
C - - - - 0x03E9CD FF:E9BD: D0 F1     BNE bra_E9B0_цикл_чтения_строки
C - - - - 0x03E9CF FF:E9BF: F0 0A     BEQ bra_E9CB
bra_E9C1:
C - - - - 0x03E9D1 FF:E9C1: A9 00     LDA #$00
bra_E9C3:
C - - - - 0x03E9D3 FF:E9C3: 9D A5 04  STA $04A5,X
C - - - - 0x03E9D6 FF:E9C6: E8        INX
C - - - - 0x03E9D7 FF:E9C7: C6 43     DEC ram_0043
C - - - - 0x03E9D9 FF:E9C9: D0 F8     BNE bra_E9C3
bra_E9CB:
C - - - - 0x03E9DB FF:E9CB: A9 00     LDA #$00
C - - - - 0x03E9DD FF:E9CD: 9D A5 04  STA $04A5,X
C - - - - 0x03E9E0 FF:E9D0: C6 40     DEC ram_0040
C - - - - 0x03E9E2 FF:E9D2: D0 B8     BNE bra_E98C_цикл_новой_строки
C - - - - 0x03E9E4 FF:E9D4: A9 80     LDA #$80
C - - - - 0x03E9E6 FF:E9D6: 8D 15 05  STA $0515
C - - - - 0x03E9E9 FF:E9D9: 60        RTS



tbl_E9DA_действия:
; почему-то 0D не считывалось
- D - - - 0x03E9EA FF:E9DA: 1C EA     .word off_EA1C_00_dribble
- D - - - 0x03E9EC FF:E9DC: 29 EA     .word off_EA29_01_pass
- D - - - 0x03E9EE FF:E9DE: 34 EA     .word off_EA34_02_shoot
- D - - - 0x03E9F0 FF:E9E0: 3D EA     .word off_EA3D_03_1_2_pass
- D - - - 0x03E9F2 FF:E9E2: 46 EA     .word off_EA46_04_trap
- D - - - 0x03E9F4 FF:E9E4: 51 EA     .word off_EA51_05_through
- D - - - 0x03E9F6 FF:E9E6: 59 EA     .word off_EA59_06_clearing
- D - - - 0x03E9F8 FF:E9E8: 61 EA     .word off_EA61_07_подкат
- D - - - 0x03E9FA FF:E9EA: 6A EA     .word off_EA6A_08_skylab_tackle
- D - - - 0x03E9FC FF:E9EC: 73 EA     .word off_EA73_09_razor_tackle
- D - - - 0x03E9FE FF:E9EE: 7C EA     .word off_EA7C_0A_power_tackle
- D - - - 0x03EA00 FF:E9F0: 87 EA     .word off_EA87_0B_tiger_tackle
- D - - - 0x03EA02 FF:E9F2: 94 EA     .word off_EA94_0C_block
- - - - - 0x03EA04 FF:E9F4: 9F EA     .word off_EA9F_0D_skylab_block
- D - - - 0x03EA06 FF:E9F6: AC EA     .word off_EAAC_0E_face_block
- D - - - 0x03EA08 FF:E9F8: B7 EA     .word off_EAB7_0F_power_block
- D - - - 0x03EA0A FF:E9FA: C4 EA     .word off_EAC4_10_passcut
- D - - - 0x03EA0C FF:E9FC: CE EA     .word off_EACE_11_skylab_passcut
- D - - - 0x03EA0E FF:E9FE: DB EA     .word off_EADB_12_wait
- D - - - 0x03EA10 FF:EA00: E6 EA     .word off_EAE6_13_mark
- D - - - 0x03EA12 FF:EA02: EF EA     .word off_EAEF_14_interfere
- D - - - 0x03EA14 FF:EA04: F8 EA     .word off_EAF8_15_clearing
- D - - - 0x03EA16 FF:EA06: 01 EB     .word off_EB01_16_punch
- D - - - 0x03EA18 FF:EA08: 0D EB     .word off_EB0D_17_catch
- D - - - 0x03EA1A FF:EA0A: 17 EB     .word off_EB17_18_triangle_jump
- D - - - 0x03EA1C FF:EA0C: 26 EB     .word off_EB26_19_dive
- D - - - 0x03EA1E FF:EA0E: 33 EB     .word off_EB33_1A_stay
- D - - - 0x03EA20 FF:EA10: 3E EB     .word off_EB3E_1B_stop_shot
- D - - - 0x03EA22 FF:EA12: 4C EB     .word off_EB4C_1C_stop_dribble
- D - - - 0x03EA24 FF:EA14: 5E EB     .word off_EB5E_1D_________lines
- D - - - 0x03EA26 FF:EA16: 67 EB     .word off_EB67_1E_left
- D - - - 0x03EA28 FF:EA18: 72 EB     .word off_EB72_1F_center
- D - - - 0x03EA2A FF:EA1A: 7B EB     .word off_EB7B_20_right

off_EA1C_00_dribble:
    .word $2288         ; адрес ppu
    .byte $25           ; AND 03 = количество строк, LSR LSR = количество символов в строке
    .text " Dribble "

off_EA29_01_pass:
    .word $2288
    .byte $25
    .text "  Pass   "

off_EA34_02_shoot:
    .word $2288
    .byte $25
    .text "  Shoot  "

off_EA3D_03_1_2_pass:
    .word $2288
    .byte $25
    .text "1-2 Pass "

off_EA46_04_trap:
    .word $2288
    .byte $25
    .text "  Trap   "

off_EA51_05_through:
    .word $2288
    .byte $25
    .text " Through "

off_EA59_06_clearing:       ; когда ты в своей штрафной с мячом
    .word $2288
    .byte $25
    .text " Clearing"

off_EA61_07_подкат:
    .word $2288
    .byte $25
    .text "   Tackle"

off_EA6A_08_skylab_tackle:
    .word $2288
    .byte $25
    .text "SkLab Tkl"

off_EA73_09_razor_tackle:
    .word $2288
    .byte $25
    .text "Razor Tkl"

off_EA7C_0A_power_tackle:
    .word $2288
    .byte $25
    .text "Power Tkl"

off_EA87_0B_tiger_tackle:
    .word $2288
    .byte $25
    .text "Tiger Tkl"

off_EA94_0C_block:
    .word $2288
    .byte $25
    .text "    Block"

off_EA9F_0D_skylab_block:
    .word $2288
    .byte $25
    .text "SkLab Blk"

off_EAAC_0E_face_block:
    .word $2288
    .byte $25
    .text " Face Blk"

off_EAB7_0F_power_block:
    .word $2288
    .byte $25
    .text "Power Blk"

off_EAC4_10_passcut:      ; в воздухе понизу
    .word $2288
    .byte $25
    .text " Pass cut"

off_EACE_11_skylab_passcut:
    .word $2288
    .byte $25
    .text "SkLab Cut"

off_EADB_12_wait:       ; player
    .word $2288
    .byte $25
    .text "     Wait"

off_EAE6_13_mark:           ; когда соперник в твоей штрафной принимает мяч
    .word $2288
    .byte $25
    .text "     Mark"

off_EAEF_14_interfere:
    .word $2288
    .byte $25
    .text "Interfere"

off_EAF8_15_clearing:       ; когда соперник в твоей штрафной принимает мяч
    .word $2288
    .byte $25
    .text " Clearing"

off_EB01_16_punch:
    .word $2288
    .byte $25
    .text "  Punch  "

off_EB0D_17_catch:
    .word $2288
    .byte $25
    .text "  Catch  "

off_EB17_18_triangle_jump:
    .word $2288
    .byte $26
    .text "Triangle "
    .text "  Jump   "

off_EB26_19_dive:
    .word $2288
    .byte $25
    .text "     Dive"

off_EB33_1A_stay:       ; GK
    .word $2288
    .byte $25
    .text "     Stay"

off_EB3E_1B_stop_shot:
    .word $2288
    .byte $26
    .text "Stop shot"
    .text "         "

off_EB4C_1C_stop_dribble:
    .word $2288
    .byte $26
    .text "  Stop   "
    .text " dribble "

off_EB5E_1D_________lines:
    .word $2288
    .byte $25
    .text "---------"

off_EB67_1E_left:
    .word $2288
    .byte $25
    .text "Left     "

off_EB72_1F_center:
    .word $2288
    .byte $25
    .text "  Center "

off_EB7B_20_right:
    .word $2288
    .byte $25
    .text "    Right"



loc_EB86:
ofs_EB86_minus:
ofs_EB86 = ofs_EB86_minus - 1
C D - - - 0x03EB96 FF:EB86: A9 01     LDA #$01
C - - - - 0x03EB98 FF:EB88: 20 0F CB  JSR sub_CB0F
C - - - - 0x03EB9B FF:EB8B: A5 21     LDA ram_для_2001
C - - - - 0x03EB9D FF:EB8D: 29 1E     AND #$1E
C - - - - 0x03EB9F FF:EB8F: AE 39 05  LDX $0539
C - - - - 0x03EBA2 FF:EB92: F0 05     BEQ bra_EB99
C - - - - 0x03EBA4 FF:EB94: A5 21     LDA ram_для_2001
C - - - - 0x03EBA6 FF:EB96: 4D 39 05  EOR $0539
bra_EB99:
C - - - - 0x03EBA9 FF:EB99: 85 21     STA ram_для_2001
C - - - - 0x03EBAB FF:EB9B: 20 08 EC  JSR sub_EC08
C - - - - 0x03EBAE FF:EB9E: 20 85 ED  JSR sub_ED85
C - - - - 0x03EBB1 FF:EBA1: 48        PHA
C - - - - 0x03EBB4 FF:EBA4: A9 18     LDA #$18
C - - - - 0x03EBB6 FF:EBA6: 85 24     STA ram_для_5114
C - - - - 0x03EBB8 FF:EBA8: A9 19     LDA #$19
C - - - - 0x03EBBA FF:EBAA: 85 25     STA ram_для_5115
C - - - - 0x03EBBC FF:EBAC: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EBBF FF:EBAF: 68        PLA
C - - - - 0x03EBC0 FF:EBB0: 20 03 80  JSR sub_0x030708
C - - - - 0x03EBC3 FF:EBB3: 48        PHA
C - - - - 0x03EBC6 FF:EBB6: A9 18     LDA #$18
C - - - - 0x03EBC8 FF:EBB8: 85 24     STA ram_для_5114
C - - - - 0x03EBCA FF:EBBA: A9 19     LDA #$19
C - - - - 0x03EBCC FF:EBBC: 85 25     STA ram_для_5115
C - - - - 0x03EBCE FF:EBBE: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EBD1 FF:EBC1: 68        PLA
C - - - - 0x03EBD2 FF:EBC2: 20 06 80  JSR sub_0x030789_движущийся_фон
C - - - - 0x03EBD5 FF:EBC5: 48        PHA
C - - - - 0x03EBD8 FF:EBC8: A9 18     LDA #$18
C - - - - 0x03EBDA FF:EBCA: 85 24     STA ram_для_5114
C - - - - 0x03EBDC FF:EBCC: A9 19     LDA #$19
C - - - - 0x03EBDE FF:EBCE: 85 25     STA ram_для_5115
C - - - - 0x03EBE0 FF:EBD0: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EBE3 FF:EBD3: 68        PLA
C - - - - 0x03EBE4 FF:EBD4: 20 09 80  JSR sub_0x0307F6
C - - - - 0x03EBE7 FF:EBD7: AD 2E 05  LDA ram_задержка_звука_анимации
C - - - - 0x03EBEA FF:EBDA: F0 29     BEQ bra_EC05
C - - - - 0x03EBEC FF:EBDC: CE 2E 05  DEC ram_задержка_звука_анимации
C - - - - 0x03EBEF FF:EBDF: D0 24     BNE bra_EC05
C - - - - 0x03EBF1 FF:EBE1: AD 2F 05  LDA ram_звук_анимации
C - - - - 0x03EBF4 FF:EBE4: C9 7E     CMP #$7E
C - - - - 0x03EBF6 FF:EBE6: 90 11     BCC bra_EBF9
C - - - - 0x03EBF8 FF:EBE8: C9 7F     CMP #$7F
C - - - - 0x03EBFA FF:EBEA: F0 07     BEQ bra_EBF3_7F
C - - - - 0x03EBFC FF:EBEC: AD 27 00  LDA ram_тайм
C - - - - 0x03EBFF FF:EBEF: C9 04     CMP #$04
C - - - - 0x03EC01 FF:EBF1: F0 12     BEQ bra_EC05
bra_EBF3_7F:
C - - - - 0x03EC03 FF:EBF3: 20 93 D0  JSR sub_D093_выбор_мелодии_команды
C - - - - 0x03EC06 FF:EBF6: 4C 05 EC  JMP loc_EB86
bra_EBF9:
C - - - - 0x03EC09 FF:EBF9: 2C 3F 06  BIT $063F
C - - - - 0x03EC0C FF:EBFC: 10 04     BPL bra_EC02
C - - - - 0x03EC0E FF:EBFE: C9 63     CMP #$63
C - - - - 0x03EC10 FF:EC00: D0 03     BNE bra_EC05
bra_EC02:
C - - - - 0x03EC12 FF:EC02: 20 F1 CB  JSR sub_CBF1_запись_звука
bra_EC05:
C D - - - 0x03EC15 FF:EC05: 4C 86 EB  JMP loc_EB86

sub_EC08:
C - - - - 0x03EC18 FF:EC08: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - 0x03EC1B FF:EC0B: 29 81     AND #$81
C - - - - 0x03EC1D FF:EC0D: D0 01     BNE bra_EC10
C - - - - 0x03EC1F FF:EC0F: 60        RTS
bra_EC10:
C - - - - 0x03EC20 FF:EC10: 2C 16 05  BIT ram_флаг_сценария_ХЗ
C - - - - 0x03EC23 FF:EC13: 10 1F     BPL bra_EC34
C - - - - 0x03EC25 FF:EC15: A9 01     LDA #$01
C - - - - 0x03EC27 FF:EC17: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03EC2A FF:EC1A: 48        PHA
C - - - - 0x03EC2D FF:EC1D: A9 10     LDA #$10
C - - - - 0x03EC2F FF:EC1F: 85 24     STA ram_для_5114
C - - - - 0x03EC31 FF:EC21: A9 11     LDA #$11
C - - - - 0x03EC33 FF:EC23: 85 25     STA ram_для_5115
C - - - - 0x03EC35 FF:EC25: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EC38 FF:EC28: 68        PLA
C - - - - 0x03EC39 FF:EC29: 20 00 80  JSR sub_0x020016_прочитать_поинтеры_сценария
C - - - - 0x03EC3C FF:EC2C: A9 00     LDA #$00
C - - - - 0x03EC3E FF:EC2E: 8D 22 05  STA ram_указатель_стека_сценария
C - - - - 0x03EC41 FF:EC31: 8D 39 05  STA $0539
bra_EC34:
C - - - - 0x03EC44 FF:EC34: AE 19 05  LDX ram_задержка_следующей_анимации
C - - - - 0x03EC47 FF:EC37: F0 03     BEQ bra_EC3C
C - - - - 0x03EC49 FF:EC39: 4C 5B ED  JMP loc_ED5B
bra_EC3C:
C - - - - 0x03EC4C FF:EC3C: A9 00     LDA #$00
C - - - - 0x03EC4E FF:EC3E: 8D 32 05  STA $0532
C - - - - 0x03EC51 FF:EC41: 8D 34 05  STA $0534
C - - - - 0x03EC54 FF:EC44: 8D 36 05  STA $0536
C - - - - 0x03EC57 FF:EC47: 8D 38 05  STA $0538
C - - - - 0x03EC5A FF:EC4A: 8D 39 05  STA $0539
C - - - - 0x03EC5D FF:EC4D: A9 08     LDA #$08
C - - - - 0x03EC5F FF:EC4F: 2C 16 05  BIT ram_флаг_сценария_ХЗ
C - - - - 0x03EC62 FF:EC52: D0 21     BNE bra_EC75
C - - - - 0x03EC64 FF:EC54: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - 0x03EC67 FF:EC57: 29 50     AND #$50
C - - - - 0x03EC69 FF:EC59: C9 50     CMP #$50
C - - - - 0x03EC6B FF:EC5B: F0 2F     BEQ bra_EC8C
C - - - - 0x03EC6D FF:EC5D: 2C 16 05  BIT ram_флаг_сценария_ХЗ
C - - - - 0x03EC70 FF:EC60: 70 12     BVS bra_EC74_выход
C - - - - 0x03EC72 FF:EC62: 48        PHA
C - - - - 0x03EC75 FF:EC65: A9 10     LDA #$10
C - - - - 0x03EC77 FF:EC67: 85 24     STA ram_для_5114
C - - - - 0x03EC79 FF:EC69: A9 11     LDA #$11
C - - - - 0x03EC7B FF:EC6B: 85 25     STA ram_для_5115
C - - - - 0x03EC7D FF:EC6D: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EC80 FF:EC70: 68        PLA
C - - - - 0x03EC81 FF:EC71: 20 03 80  JSR sub_0x020031_обработка_байтов_сценария
bra_EC74_выход:
C - - - - 0x03EC84 FF:EC74: 60        RTS
bra_EC75:
C - - - - 0x03EC85 FF:EC75: 4D 16 05  EOR ram_флаг_сценария_ХЗ
C - - - - 0x03EC88 FF:EC78: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03EC8B FF:EC7B: A9 00     LDA #$00
C - - - - 0x03EC8D FF:EC7D: 8D D2 05  STA $05D2
C - - - - 0x03EC92 FF:EC82: 85 0D     STA ram_000D
C - - - - 0x03EC94 FF:EC84: 85 0E     STA ram_000E
C - - - - 0x03EC98 FF:EC88: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03EC9B FF:EC8B: 60        RTS
bra_EC8C:
C - - - - 0x03EC9C FF:EC8C: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - 0x03EC9F FF:EC8F: 29 8F     AND #$8F
C - - - - 0x03ECA1 FF:EC91: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03ECA4 FF:EC94: AD 23 05  LDA ram_для_0519_задержка_следующей_анимации
C - - - - 0x03ECA7 FF:EC97: 8D 19 05  STA ram_задержка_следующей_анимации
C - - - - 0x03ECAA FF:EC9A: AD 24 05  LDA ram_фон_анимации
C - - - - 0x03ECAD FF:EC9D: C9 FF     CMP #$FF
C - - - - 0x03ECAF FF:EC9F: F0 56     BEQ bra_ECF7
C - - - - 0x03ECB1 FF:ECA1: A9 04     LDA #$04
C - - - - 0x03ECB3 FF:ECA3: 2C 16 05  BIT ram_флаг_сценария_ХЗ
C - - - - 0x03ECB6 FF:ECA6: F0 0F     BEQ bra_ECB7
C - - - - 0x03ECB8 FF:ECA8: 4D 16 05  EOR ram_флаг_сценария_ХЗ
C - - - - 0x03ECBB FF:ECAB: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03ECBE FF:ECAE: A9 00     LDA #$00
C - - - - 0x03ECC0 FF:ECB0: 85 11     STA ram_0011
C - - - - 0x03ECC2 FF:ECB2: 85 12     STA ram_0012
C - - - - 0x03ECC4 FF:ECB4: 20 46 CC  JSR sub_CC46_очистить_нижнюю_половину_экрана
bra_ECB7:
C - - - - 0x03ECC7 FF:ECB7: AD 26 05  LDA $0526
C - - - - 0x03ECCA FF:ECBA: 10 0E     BPL bra_ECCA
C - - - - 0x03ECCC FF:ECBC: 29 7F     AND #$7F
C - - - - 0x03ECCE FF:ECBE: 8D 26 05  STA $0526
                                      BNE bra_ECC1
                                      LDA ram_матч
                                      ASL
                                      ADC #$80
bra_ECC1:
C - - - - 0x03ECD1 FF:ECC1: 8D 90 04  STA $0490
C - - - - 0x03ECD4 FF:ECC4: AD 27 05  LDA $0527
C - - - - 0x03ECD7 FF:ECC7: 8D 91 04  STA $0491
bra_ECCA:
C - - - - 0x03ECDA FF:ECCA: AD 25 05  LDA $0525
C - - - - 0x03ECDD FF:ECCD: A2 00     LDX #$00
C - - - - 0x03ECDF FF:ECCF: 20 02 CC  JSR sub_CC02
C - - - - 0x03ECE2 FF:ECD2: 20 D2 CC  JSR sub_CCD3
C - - - - 0x03ECE8 FF:ECD8: AD CE 05  LDA $05CE
C - - - - 0x03ECEB FF:ECDB: 48        PHA
C - - - - 0x03ECEE FF:ECDE: A9 0B     LDA #$0B
C - - - - 0x03ECF0 FF:ECE0: 85 24     STA ram_для_5114
C - - - - 0x03ECF2 FF:ECE2: A9 0C     LDA #$0C
C - - - - 0x03ECF4 FF:ECE4: 85 25     STA ram_для_5115
C - - - - 0x03ECF6 FF:ECE6: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03ECF9 FF:ECE9: 68        PLA
C - - - - 0x03ECFA FF:ECEA: 20 06 80  JSR sub_0x0164B1
C - - - - 0x03ECFD FF:ECED: A9 00     LDA #$00
C - - - - 0x03ECFF FF:ECEF: 85 4A     STA ram_004A
C - - - - 0x03ED01 FF:ECF1: AD D1 05  LDA $05D1
C - - - - 0x03ED04 FF:ECF4: 8D D2 05  STA $05D2
bra_ECF7:
C - - - - 0x03ED07 FF:ECF7: AD 28 05  LDA ram_для_053C_номер_анимации
C - - - - 0x03ED0A FF:ECFA: C9 FF     CMP #$FF
C - - - - 0x03ED0C FF:ECFC: F0 08     BEQ bra_ED06
C - - - - 0x03ED0E FF:ECFE: 8D 3C 05  STA ram_номер_анимации
C - - - - 0x03ED11 FF:ED01: A9 80     LDA #$80
C - - - - 0x03ED13 FF:ED03: 8D 3A 05  STA $053A
bra_ED06:
C - - - - 0x03ED16 FF:ED06: A9 00     LDA #$00
C - - - - 0x03ED18 FF:ED08: 85 0D     STA ram_000D
C - - - - 0x03ED1A FF:ED0A: 85 0E     STA ram_000E
C - - - - 0x03ED1C FF:ED0C: AD 2A 05  LDA ram_флаг_зеркала_анимации
C - - - - 0x03ED1F FF:ED0F: 8D 17 05  STA $0517
C - - - - 0x03ED22 FF:ED12: AD 29 05  LDA ram_для_05EA_облако
C - - - - 0x03ED25 FF:ED15: C9 FF     CMP #$FF
C - - - - 0x03ED27 FF:ED17: F0 14     BEQ bra_ED2D
C - - - - 0x03ED29 FF:ED19: 8D EA 05  STA ram_облако
C - - - - 0x03ED2C FF:ED1C: A2 11     LDX #$11
C - - - - 0x03ED2E FF:ED1E: A9 C8     LDA #$C8
C - - - - 0x03ED30 FF:ED20: 95 01     STA ram_0001,X
C - - - - 0x03ED32 FF:ED22: A9 18     LDA #$18
C - - - - 0x03ED34 FF:ED24: 95 02     STA ram_0002,X
C - - - - 0x03ED36 FF:ED26: A9 7F     LDA #> ofs_0x03001F_чтение_байтов_облака
C - - - - 0x03ED38 FF:ED28: A0 FF     LDY #< ofs_0x03001F_чтение_байтов_облака
C - - - - 0x03ED3A FF:ED2A: 20 E7 CA  JSR sub_CAE7_подготовить_подпрограмму_в_стеке
bra_ED2D:
C - - - - 0x03ED3D FF:ED2D: AD 2B 05  LDA $052B
C - - - - 0x03ED40 FF:ED30: 09 80     ORA #$80
C - - - - 0x03ED42 FF:ED32: 8D 32 05  STA $0532
C - - - - 0x03ED45 FF:ED35: AD 2C 05  LDA $052C
C - - - - 0x03ED48 FF:ED38: 09 80     ORA #$80
C - - - - 0x03ED4A FF:ED3A: 8D 36 05  STA $0536
C - - - - 0x03ED4D FF:ED3D: AD 2D 05  LDA $052D
C - - - - 0x03ED50 FF:ED40: 09 80     ORA #$80
C - - - - 0x03ED52 FF:ED42: 8D 34 05  STA $0534
C - - - - 0x03ED55 FF:ED45: AD 30 05  LDA ram_для_052E_задержка_звука_анимации
C - - - - 0x03ED58 FF:ED48: 8D 2E 05  STA ram_задержка_звука_анимации
C - - - - 0x03ED5B FF:ED4B: AD 31 05  LDA ram_для_052F_звук_анимации
C - - - - 0x03ED5E FF:ED4E: 8D 2F 05  STA ram_звук_анимации
C - - - - 0x03ED61 FF:ED51: A9 00     LDA #$00
C - - - - 0x03ED63 FF:ED53: 85 8E     STA ram_008E
C - - - - 0x03ED65 FF:ED55: A9 01     LDA #$80
C - - - - 0x03ED67 FF:ED57: 8D 69 04  STA $0469
C - - - - 0x03ED6A FF:ED5A: 60        RTS

loc_ED5B:
C D - - - 0x03ED6B FF:ED5B: CA        DEX
C - - - - 0x03ED6C FF:ED5C: 8E 19 05  STX ram_задержка_следующей_анимации
C - - - - 0x03ED6F FF:ED5F: E0 28     CPX #$28
C - - - - 0x03ED71 FF:ED61: B0 21     BCS bra_ED84_выход
C - - - - 0x03ED73 FF:ED63: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - 0x03ED76 FF:ED66: 29 20     AND #$20
C - - - - 0x03ED78 FF:ED68: D0 1A     BNE bra_ED84_выход
C - - - - 0x03ED7A FF:ED6A: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - 0x03ED7D FF:ED6D: 09 20     ORA #$20
C - - - - 0x03ED7F FF:ED6F: 8D 16 05  STA ram_флаг_сценария_ХЗ
C - - - - 0x03ED82 FF:ED72: 48        PHA
C - - - - 0x03ED85 FF:ED75: A9 10     LDA #$10
C - - - - 0x03ED87 FF:ED77: 85 24     STA ram_для_5114
C - - - - 0x03ED89 FF:ED79: A9 11     LDA #$11
C - - - - 0x03ED8B FF:ED7B: 85 25     STA ram_для_5115
C - - - - 0x03ED8D FF:ED7D: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03ED90 FF:ED80: 68        PLA
C - - - - 0x03ED91 FF:ED81: 20 03 80  JSR sub_0x020031_обработка_байтов_сценария
bra_ED84_выход:
C - - - - 0x03ED94 FF:ED84: 60        RTS

sub_ED85:
C - - - - 0x03ED95 FF:ED85: AD D2 05  LDA $05D2
C - - - - 0x03ED98 FF:ED88: D0 01     BNE bra_ED8B
C - - - - 0x03ED9A FF:ED8A: 60        RTS
bra_ED8B:
C - - - - 0x03ED9B FF:ED8B: 10 68     BPL bra_EDF5
C - - - - 0x03ED9D FF:ED8D: 29 7F     AND #$7F
C - - - - 0x03ED9F FF:ED8F: 09 01     ORA #$01
C - - - - 0x03EDA1 FF:ED91: 8D D2 05  STA $05D2
C - - - - 0x03EDA4 FF:ED94: AD DB 05  LDA $05DB
C - - - - 0x03EDA7 FF:ED97: 8D D3 05  STA $05D3
C - - - - 0x03EDAA FF:ED9A: AD DC 05  LDA $05DC
C - - - - 0x03EDAD FF:ED9D: 8D D4 05  STA $05D4
C - - - - 0x03EDB0 FF:EDA0: AD DD 05  LDA $05DD
C - - - - 0x03EDB3 FF:EDA3: 8D D5 05  STA $05D5
C - - - - 0x03EDB6 FF:EDA6: AE DE 05  LDX $05DE
C - - - - 0x03EDB9 FF:EDA9: AC DF 05  LDY $05DF
C - - - - 0x03EDBC FF:EDAC: 8E D6 05  STX $05D6
C - - - - 0x03EDBF FF:EDAF: 8C D7 05  STY $05D7
C - - - - 0x03EDC2 FF:EDB2: AD E0 05  LDA $05E0
C - - - - 0x03EDC5 FF:EDB5: 8D D8 05  STA $05D8
C - - - - 0x03EDC8 FF:EDB8: AD E1 05  LDA $05E1
C - - - - 0x03EDCB FF:EDBB: 8D D9 05  STA $05D9
C - - - - 0x03EDCE FF:EDBE: AD E2 05  LDA $05E2
C - - - - 0x03EDD1 FF:EDC1: 8D DA 05  STA $05DA
C - - - - 0x03EDD4 FF:EDC4: AD D2 05  LDA $05D2
C - - - - 0x03EDD7 FF:EDC7: 29 02     AND #$02
C - - - - 0x03EDD9 FF:EDC9: F0 2A     BEQ bra_EDF5
C - - - - 0x03EDDB FF:EDCB: 2C D2 05  BIT $05D2
C - - - - 0x03EDDE FF:EDCE: 50 14     BVC bra_EDE4
C - - - - 0x03EDE0 FF:EDD0: A2 0D     LDX #$0D
C - - - - 0x03EDE2 FF:EDD2: A9 A0     LDA #$A0
C - - - - 0x03EDE4 FF:EDD4: 95 01     STA ram_0001,X
C - - - - 0x03EDE6 FF:EDD6: A9 0B     LDA #$0B
C - - - - 0x03EDE8 FF:EDD8: 95 02     STA ram_0002,X
; сработало при нападении кипера соперника верхним олвэйсом
C - - - - 0x03EDEA FF:EDDA: A9 7F     LDA #> ofs_0x01601C
C - - - - 0x03EDEC FF:EDDC: A0 FF     LDY #< ofs_0x01601C
C - - - - 0x03EDEE FF:EDDE: 20 E7 CA  JSR sub_CAE7_подготовить_подпрограмму_в_стеке
C - - - - 0x03EDF1 FF:EDE1: 4C F5 ED  JMP loc_EDF5
bra_EDE4:
C - - - - 0x03EDF4 FF:EDE4: A2 0D     LDX #$0D
C - - - - 0x03EDF6 FF:EDE6: A9 A0     LDA #$A0
C - - - - 0x03EDF8 FF:EDE8: 95 01     STA ram_0001,X
C - - - - 0x03EDFA FF:EDEA: A9 0B     LDA #$0B
C - - - - 0x03EDFC FF:EDEC: 95 02     STA ram_0002,X
C - - - - 0x03EDFE FF:EDEE: A9 80     LDA #> ofs_0x016093
C - - - - 0x03EE00 FF:EDF0: A0 02     LDY #< ofs_0x016093
C - - - - 0x03EE02 FF:EDF2: 20 E7 CA  JSR sub_CAE7_подготовить_подпрограмму_в_стеке
bra_EDF5:
loc_EDF5:
C D - - - 0x03EE05 FF:EDF5: 2C D2 05  BIT $05D2
C - - - - 0x03EE08 FF:EDF8: 50 37     BVC bra_EE31
C - - - - 0x03EE0A FF:EDFA: 18        CLC
C - - - - 0x03EE0B FF:EDFB: AD D6 05  LDA $05D6
C - - - - 0x03EE0E FF:EDFE: 6D D3 05  ADC $05D3
C - - - - 0x03EE11 FF:EE01: 8D D3 05  STA $05D3
C - - - - 0x03EE14 FF:EE04: A2 00     LDX #$00
C - - - - 0x03EE16 FF:EE06: AD D7 05  LDA $05D7
C - - - - 0x03EE19 FF:EE09: 65 4B     ADC ram_004B
C - - - - 0x03EE1B FF:EE0B: 85 4B     STA ram_004B
C - - - - 0x03EE1D FF:EE0D: C9 F0     CMP #$F0
C - - - - 0x03EE1F FF:EE0F: 90 0F     BCC bra_EE20
C - - - - 0x03EE21 FF:EE11: E8        INX
C - - - - 0x03EE22 FF:EE12: A9 10     LDA #$10
C - - - - 0x03EE24 FF:EE14: 2C D7 05  BIT $05D7
C - - - - 0x03EE27 FF:EE17: 10 04     BPL bra_EE1D
C - - - - 0x03EE29 FF:EE19: A9 F0     LDA #$F0
C - - - - 0x03EE2B FF:EE1B: CA        DEX
C - - - - 0x03EE2C FF:EE1C: CA        DEX
bra_EE1D:
C - - - - 0x03EE2D FF:EE1D: 18        CLC
C - - - - 0x03EE2E FF:EE1E: 65 4B     ADC ram_004B
bra_EE20:
C - - - - 0x03EE30 FF:EE20: 85 4B     STA ram_004B
C - - - - 0x03EE32 FF:EE22: 8D D4 05  STA $05D4
C - - - - 0x03EE35 FF:EE25: 18        CLC
C - - - - 0x03EE36 FF:EE26: 8A        TXA
C - - - - 0x03EE37 FF:EE27: 6D D5 05  ADC $05D5
C - - - - 0x03EE3A FF:EE2A: 8D D5 05  STA $05D5
C - - - - 0x03EE3D FF:EE2D: 20 6D EE  JSR sub_EE6D
C - - - - 0x03EE40 FF:EE30: 60        RTS
bra_EE31:
C - - - - 0x03EE41 FF:EE31: A5 20     LDA ram_0020
C - - - - 0x03EE43 FF:EE33: 29 FE     AND #$FE
C - - - - 0x03EE45 FF:EE35: 85 20     STA ram_0020
C - - - - 0x03EE47 FF:EE37: 18        CLC
C - - - - 0x03EE48 FF:EE38: AD D6 05  LDA $05D6
C - - - - 0x03EE4B FF:EE3B: 6D D3 05  ADC $05D3
C - - - - 0x03EE4E FF:EE3E: 8D D3 05  STA $05D3
C - - - - 0x03EE51 FF:EE41: AD D7 05  LDA $05D7
C - - - - 0x03EE54 FF:EE44: 6D D4 05  ADC $05D4
C - - - - 0x03EE57 FF:EE47: 8D D4 05  STA $05D4
C - - - - 0x03EE5A FF:EE4A: 85 4A     STA ram_004A
C - - - - 0x03EE5C FF:EE4C: AA        TAX
C - - - - 0x03EE5D FF:EE4D: A9 00     LDA #$00
C - - - - 0x03EE5F FF:EE4F: 2C D7 05  BIT $05D7
C - - - - 0x03EE62 FF:EE52: 10 02     BPL bra_EE56
C - - - - 0x03EE64 FF:EE54: A9 FF     LDA #$FF
bra_EE56:
C - - - - 0x03EE66 FF:EE56: 08        PHP
C - - - - 0x03EE67 FF:EE57: AA        TAX
C - - - - 0x03EE68 FF:EE58: 6D D5 05  ADC $05D5
C - - - - 0x03EE6B FF:EE5B: 8D D5 05  STA $05D5
C - - - - 0x03EE6E FF:EE5E: 29 01     AND #$01
C - - - - 0x03EE70 FF:EE60: 05 20     ORA ram_0020
C - - - - 0x03EE72 FF:EE62: 85 20     STA ram_0020
C - - - - 0x03EE74 FF:EE64: 8A        TXA
C - - - - 0x03EE75 FF:EE65: 28        PLP
C - - - - 0x03EE76 FF:EE66: 69 00     ADC #$00
C - - - - 0x03EE78 FF:EE68: AA        TAX
C - - - - 0x03EE79 FF:EE69: 20 6D EE  JSR sub_EE6D
C - - - - 0x03EE7C FF:EE6C: 60        RTS

sub_EE6D:
C - - - - 0x03EE7D FF:EE6D: AD D2 05  LDA $05D2
C - - - - 0x03EE80 FF:EE70: 29 02     AND #$02
C - - - - 0x03EE82 FF:EE72: F0 2A     BEQ bra_EE9E_выход
C - - - - 0x03EE84 FF:EE74: AE D4 05  LDX $05D4
C - - - - 0x03EE87 FF:EE77: AC D5 05  LDY $05D5
C - - - - 0x03EE8A FF:EE7A: 10 0C     BPL bra_EE88
C - - - - 0x03EE8C FF:EE7C: 8A        TXA
C - - - - 0x03EE8D FF:EE7D: 49 FF     EOR #$FF
C - - - - 0x03EE8F FF:EE7F: AA        TAX
C - - - - 0x03EE90 FF:EE80: 98        TYA
C - - - - 0x03EE91 FF:EE81: 49 FF     EOR #$FF
C - - - - 0x03EE93 FF:EE83: A8        TAY
C - - - - 0x03EE94 FF:EE84: E8        INX
C - - - - 0x03EE95 FF:EE85: D0 01     BNE bra_EE88
C - - - - 0x03EE97 FF:EE87: C8        INY
bra_EE88:
C - - - - 0x03EE98 FF:EE88: 8A        TXA
C - - - - 0x03EE99 FF:EE89: 38        SEC
C - - - - 0x03EE9A FF:EE8A: ED D9 05  SBC $05D9
C - - - - 0x03EE9D FF:EE8D: 98        TYA
C - - - - 0x03EE9E FF:EE8E: ED DA 05  SBC $05DA
C - - - - 0x03EEA1 FF:EE91: 90 0B     BCC bra_EE9E_выход
C - - - - 0x03EEA3 FF:EE93: A9 00     LDA #$00
C - - - - 0x03EEA5 FF:EE95: 8D D2 05  STA $05D2
C - - - - 0x03EEAA FF:EE9A: 85 0D     STA ram_000D
C - - - - 0x03EEAC FF:EE9C: 85 0E     STA ram_000E
bra_EE9E_выход:
C - - - - 0x03EEAE FF:EE9E: 60        RTS

sub_EE9F:
C - - - - 0x03EEAF FF:EE9F: 48        PHA
C - - - - 0x03EEB2 FF:EEA2: A9 14     LDA #$14
C - - - - 0x03EEB4 FF:EEA4: 85 24     STA ram_для_5114
C - - - - 0x03EEB6 FF:EEA6: A9 15     LDA #$15
C - - - - 0x03EEB8 FF:EEA8: 85 25     STA ram_для_5115
C - - - - 0x03EEBA FF:EEAA: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EEBD FF:EEAD: 68        PLA
C - - - - 0x03EEBE FF:EEAE: 20 00 80  JSR sub_0x02801F
C - - - - 0x03EEC1 FF:EEB1: A9 00     LDA #$00
C - - - - 0x03EEC3 FF:EEB3: 85 3A     STA ram_003A
C - - - - 0x03EEC5 FF:EEB5: 85 48     STA ram_0048
C - - - - 0x03EEC7 FF:EEB7: AE 3D 05  LDX $053D
C - - - - 0x03EECA FF:EEBA: F0 1E     BEQ bra_EEDA

; bzk
- - - - - 0x03EECC FF:EEBC: A9 40     LDA #$40
- - - - - 0x03EECE FF:EEBE: 38        SEC
- - - - - 0x03EECF FF:EEBF: ED 3F 05  SBC $053F
- - - - - 0x03EED2 FF:EEC2: CD 3E 05  CMP $053E
- - - - - 0x03EED5 FF:EEC5: AD 3E 05  LDA $053E
- - - - - 0x03EED8 FF:EEC8: B0 02     BCS bra_EECC
- - - - - 0x03EEDA FF:EECA: A9 00     LDA #$00
bra_EECC:
- - - - - 0x03EEDC FF:EECC: AA        TAX
- - - - - 0x03EEDD FF:EECD: 18        CLC
- - - - - 0x03EEDE FF:EECE: 69 08     ADC #$08
- - - - - 0x03EEE0 FF:EED0: 8D 3E 05  STA $053E
- - - - - 0x03EEE3 FF:EED3: 8A        TXA
- - - - - 0x03EEE4 FF:EED4: 18        CLC
- - - - - 0x03EEE5 FF:EED5: 6D 3F 05  ADC $053F
- - - - - 0x03EEE8 FF:EED8: 0A        ASL
- - - - - 0x03EEE9 FF:EED9: 0A        ASL

bra_EEDA:
C - - - - 0x03EEEA FF:EEDA: 85 3B     STA ram_003B
bra_EEDC:
C - - - - 0x03EEEC FF:EEDC: A5 3A     LDA ram_003A
C - - - - 0x03EEEE FF:EEDE: 4A        LSR
C - - - - 0x03EEEF FF:EEDF: AA        TAX
C - - - - 0x03EEF0 FF:EEE0: BD 43 05  LDA $0543,X
C - - - - 0x03EEF3 FF:EEE3: B0 04     BCS bra_EEE9
C - - - - 0x03EEF5 FF:EEE5: 4A        LSR
C - - - - 0x03EEF6 FF:EEE6: 4A        LSR
C - - - - 0x03EEF7 FF:EEE7: 4A        LSR
C - - - - 0x03EEF8 FF:EEE8: 4A        LSR
bra_EEE9:
C - - - - 0x03EEF9 FF:EEE9: 29 0F     AND #$0F
C - - - - 0x03EEFB FF:EEEB: 0A        ASL
C - - - - 0x03EEFC FF:EEEC: AA        TAX
C - - - - 0x03EEFD FF:EEED: BD 73 EF  LDA tbl_EF73,X
C - - - - 0x03EF00 FF:EEF0: 85 3C     STA ram_003C
C - - - - 0x03EF02 FF:EEF2: BD 74 EF  LDA tbl_EF73 + 1,X
C - - - - 0x03EF05 FF:EEF5: 85 3D     STA ram_003D
C - - - - 0x03EF07 FF:EEF7: A0 00     LDY #$00
C - - - - 0x03EF09 FF:EEF9: B1 3C     LDA (ram_003C),Y
C - - - - 0x03EF0B FF:EEFB: 10 3B     BPL bra_EF38
C - - - - 0x03EF0D FF:EEFD: 2C 15 06  BIT $0615
C - - - - 0x03EF10 FF:EF00: 70 12     BVS bra_EF14
C - - - - 0x03EF12 FF:EF02: 48        PHA
C - - - - 0x03EF15 FF:EF05: A9 14     LDA #$14
C - - - - 0x03EF17 FF:EF07: 85 24     STA ram_для_5114
C - - - - 0x03EF19 FF:EF09: A9 15     LDA #$15
C - - - - 0x03EF1B FF:EF0B: 85 25     STA ram_для_5115
C - - - - 0x03EF1D FF:EF0D: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EF20 FF:EF10: 68        PLA
C - - - - 0x03EF21 FF:EF11: 20 06 80  JSR sub_0x0283E9
bra_EF14:
C - - - - 0x03EF24 FF:EF14: 48        PHA
C - - - - 0x03EF27 FF:EF17: A9 14     LDA #$14
C - - - - 0x03EF29 FF:EF19: 85 24     STA ram_для_5114
C - - - - 0x03EF2B FF:EF1B: A9 15     LDA #$15
C - - - - 0x03EF2D FF:EF1D: 85 25     STA ram_для_5115
C - - - - 0x03EF2F FF:EF1F: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EF32 FF:EF22: 68        PLA
C - - - - 0x03EF33 FF:EF23: 20 03 80  JSR sub_0x0284EC
C - - - - 0x03EF36 FF:EF26: 48        PHA
C - - - - 0x03EF39 FF:EF29: A9 16     LDA #$16
C - - - - 0x03EF3B FF:EF2B: 85 24     STA ram_для_5114
C - - - - 0x03EF3D FF:EF2D: A9 17     LDA #$17
C - - - - 0x03EF3F FF:EF2F: 85 25     STA ram_для_5115
C - - - - 0x03EF41 FF:EF31: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EF44 FF:EF34: 68        PLA
C - - - - 0x03EF45 FF:EF35: 20 00 80  JSR sub_0x02C010
bra_EF38:
C - - - - 0x03EF48 FF:EF38: E6 3A     INC ram_003A
C - - - - 0x03EF4A FF:EF3A: A5 3A     LDA ram_003A
C - - - - 0x03EF4C FF:EF3C: C9 06     CMP #$06
C - - - - 0x03EF4E FF:EF3E: D0 9C     BNE bra_EEDC
C - - - - 0x03EF50 FF:EF40: 2C 2D 06  BIT $062D
C - - - - 0x03EF53 FF:EF43: 10 12     BPL bra_EF57
C - - - - 0x03EF55 FF:EF45: 48        PHA
C - - - - 0x03EF58 FF:EF48: A9 14     LDA #$14
C - - - - 0x03EF5A FF:EF4A: 85 24     STA ram_для_5114
C - - - - 0x03EF5C FF:EF4C: A9 15     LDA #$15
C - - - - 0x03EF5E FF:EF4E: 85 25     STA ram_для_5115
C - - - - 0x03EF60 FF:EF50: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EF63 FF:EF53: 68        PLA
C - - - - 0x03EF64 FF:EF54: 20 09 80  JSR sub_0x028634
bra_EF57:
C - - - - 0x03EF67 FF:EF57: A9 40     LDA #$40
C - - - - 0x03EF69 FF:EF59: 38        SEC
C - - - - 0x03EF6A FF:EF5A: E5 48     SBC ram_0048
C - - - - 0x03EF6C FF:EF5C: 8D 3F 05  STA $053F
C - - - - 0x03EF6F FF:EF5F: 90 11     BCC bra_EF72_выход
C - - - - 0x03EF71 FF:EF61: F0 0F     BEQ bra_EF72_выход
C - - - - 0x03EF73 FF:EF63: A8        TAY
C - - - - 0x03EF74 FF:EF64: A6 3B     LDX ram_003B
C - - - - 0x03EF76 FF:EF66: A9 F8     LDA #$F8
bra_EF68:
C - - - - 0x03EF78 FF:EF68: 9D 00 02  STA ram_спрайт_Y,X
C - - - - 0x03EF7B FF:EF6B: E8        INX
C - - - - 0x03EF7C FF:EF6C: E8        INX
C - - - - 0x03EF7D FF:EF6D: E8        INX
C - - - - 0x03EF7E FF:EF6E: E8        INX
C - - - - 0x03EF7F FF:EF6F: 88        DEY
C - - - - 0x03EF80 FF:EF70: D0 F6     BNE bra_EF68
bra_EF72_выход:
C - - - - 0x03EF82 FF:EF72: 60        RTS

tbl_EF73:
; какие-то адреса RAM с интервалом 15
- D - - - 0x03EF83 FF:EF73: 47 05     .word $0547
- D - - - 0x03EF85 FF:EF75: 5C 05     .word $055C
- D - - - 0x03EF87 FF:EF77: 71 05     .word $0571
- D - - - 0x03EF89 FF:EF79: 86 05     .word $0586
- D - - - 0x03EF8B FF:EF7B: 9B 05     .word $059B
- D - - - 0x03EF8D FF:EF7D: B0 05     .word $05B0

.export sub_0x03EF8F_отрисовка_меню_во_время_матча
sub_0x03EF8F_отрисовка_меню_во_время_матча:
sub_EF7F_отрисовка_меню_во_время_матча:
C D - - - 0x03EF8F FF:EF7F: A8        TAY
C - - - - 0x03EF90 FF:EF80: A5 24     LDA ram_для_5114
C - - - - 0x03EF92 FF:EF82: 48        PHA
C - - - - 0x03EF93 FF:EF83: A5 25     LDA ram_для_5115
C - - - - 0x03EF95 FF:EF85: 48        PHA
C - - - - 0x03EF96 FF:EF86: 98        TYA
C - - - - 0x03EF97 FF:EF87: 48        PHA
C - - - - 0x03EF9A FF:EF8A: A9 18     LDA #$18
C - - - - 0x03EF9C FF:EF8C: 85 24     STA ram_для_5114
C - - - - 0x03EF9E FF:EF8E: A9 19     LDA #$19
C - - - - 0x03EFA0 FF:EF90: 85 25     STA ram_для_5115
C - - - - 0x03EFA2 FF:EF92: 20 2D CE  JSR sub_CE2D_банксвич_PRG
C - - - - 0x03EFA5 FF:EF95: 68        PLA
C - - - - 0x03EFA6 FF:EF96: 20 0C 80  JSR sub_0x030861_отрисовка_меню_во_время_матча
C - - - - 0x03EFA9 FF:EF99: 68        PLA
C - - - - 0x03EFAA FF:EF9A: 85 25     STA ram_для_5115
C - - - - 0x03EFAC FF:EF9C: 68        PLA
C - - - - 0x03EFAD FF:EF9D: 85 24     STA ram_для_5114
C - - - - 0x03EFAF FF:EF9F: 4C 2D CE  JMP loc_CE2D_банксвич_PRG

sub_EFA2:
C - - - - 0x03EFB2 FF:EFA2: AD 21 06  LDA $0621
C - - - - 0x03EFB5 FF:EFA5: C9 04     CMP #$04
C - - - - 0x03EFB7 FF:EFA7: 90 01     BCC bra_EFAA
C - - - - 0x03EFB9 FF:EFA9: 60        RTS
bra_EFAA:
C - - - - 0x03EFBA FF:EFAA: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03EFBD FF:EFAD: D0 03     BNE bra_EFB2
C - - - - 0x03EFBF FF:EFAF: 4C F6 EF  JMP loc_EFF6
bra_EFB2:
C - - - - 0x03EFC2 FF:EFB2: A9 00     LDA #$00
bra_EFB4:
C - - - - 0x03EFC4 FF:EFB4: 48        PHA
bra_EFB5_ожидание_освобождения_буфера:
C - - - - 0x03EFC5 FF:EFB5: A9 01     LDA #$01
C - - - - 0x03EFC7 FF:EFB7: 20 0F CB  JSR sub_CB0F
C - - - - 0x03EFCA FF:EFBA: AD 15 05  LDA $0515
C - - - - 0x03EFCD FF:EFBD: D0 F6     BNE bra_EFB5_ожидание_освобождения_буфера
C - - - - 0x03EFCF FF:EFBF: A9 01     LDA #$01
C - - - - 0x03EFD1 FF:EFC1: 8D 15 05  STA $0515
C - - - - 0x03EFD4 FF:EFC4: 68        PLA
C - - - - 0x03EFD5 FF:EFC5: 48        PHA
C - - - - 0x03EFD6 FF:EFC6: AE 21 06  LDX $0621
C - - - - 0x03EFD9 FF:EFC9: E0 03     CPX #$03
C - - - - 0x03EFDB FF:EFCB: D0 02     BNE bra_EFCF
C - - - - 0x03EFDD FF:EFCD: A9 05     LDA #$05
bra_EFCF:
C - - - - 0x03EFDF FF:EFCF: 0A        ASL
C - - - - 0x03EFE0 FF:EFD0: AA        TAX
C - - - - 0x03EFE1 FF:EFD1: BD 06 F2  LDA tbl_F206,X
C - - - - 0x03EFE4 FF:EFD4: 85 3A     STA ram_003A
C - - - - 0x03EFE6 FF:EFD6: BD 07 F2  LDA tbl_F206 + 1,X
C - - - - 0x03EFE9 FF:EFD9: 85 3B     STA ram_003B
C - - - - 0x03EFEB FF:EFDB: A9 00     LDA #$00
C - - - - 0x03EFED FF:EFDD: 85 3C     STA ram_003C
C - - - - 0x03EFEF FF:EFDF: A9 21     LDA #$21
C - - - - 0x03EFF1 FF:EFE1: 85 3D     STA ram_003D
C - - - - 0x03EFF3 FF:EFE3: A2 00     LDX #$00
C - - - - 0x03EFF5 FF:EFE5: 20 14 F1  JSR sub_F114
C - - - - 0x03EFF8 FF:EFE8: A9 04     LDA #$04
C - - - - 0x03EFFA FF:EFEA: 20 0F CB  JSR sub_CB0F
C - - - - 0x03EFFD FF:EFED: 68        PLA
C - - - - 0x03EFFE FF:EFEE: 18        CLC
C - - - - 0x03EFFF FF:EFEF: 69 01     ADC #$01
C - - - - 0x03F001 FF:EFF1: CD 00 06  CMP ram_колво_нападающих
C - - - - 0x03F004 FF:EFF4: D0 BE     BNE bra_EFB4
loc_EFF6:
C D - - - 0x03F006 FF:EFF6: AE 21 06  LDX $0621
C - - - - 0x03F009 FF:EFF9: BD 0F F0  LDA tbl_F00F,X
C - - - - 0x03F00C FF:EFFC: 8D 3D 06  STA $063D
C - - - - 0x03F00F FF:EFFF: 8A        TXA
C - - - - 0x03F010 FF:F000: D0 11     BNE bra_F013
C - - - - 0x03F012 FF:F002: AD 00 06  LDA ram_колво_нападающих
C - - - - 0x03F015 FF:F005: D0 0C     BNE bra_F013
C - - - - 0x03F017 FF:F007: A9 02     LDA #$02
C - - - - 0x03F019 FF:F009: 8D 3D 06  STA $063D
bra_F013:
.export sub_0x03F023
sub_0x03F023:
C D - - - 0x03F023 FF:F013: A9 00     LDA #$00
loc_F015:
C D - - - 0x03F025 FF:F015: 48        PHA
bra_F016_ожидание_освобождения_буфера:
C - - - - 0x03F026 FF:F016: A9 01     LDA #$01
C - - - - 0x03F028 FF:F018: 20 0F CB  JSR sub_CB0F
C - - - - 0x03F02B FF:F01B: AD 15 05  LDA $0515
C - - - - 0x03F02E FF:F01E: D0 F6     BNE bra_F016_ожидание_освобождения_буфера
C - - - - 0x03F030 FF:F020: A9 01     LDA #$01
C - - - - 0x03F032 FF:F022: 8D 15 05  STA $0515
C - - - - 0x03F035 FF:F025: AD 3D 06  LDA $063D
C - - - - 0x03F038 FF:F028: 0A        ASL
C - - - - 0x03F039 FF:F029: 0A        ASL
C - - - - 0x03F03A FF:F02A: A8        TAY
C - - - - 0x03F03B FF:F02B: B9 5A F1  LDA tbl_F15A,Y
C - - - - 0x03F03E FF:F02E: 85 3C     STA ram_003C
C - - - - 0x03F040 FF:F030: B9 5B F1  LDA tbl_F15A + 1,Y
C - - - - 0x03F043 FF:F033: 85 3D     STA ram_003D
C - - - - 0x03F045 FF:F035: 68        PLA
C - - - - 0x03F046 FF:F036: 48        PHA
C - - - - 0x03F047 FF:F037: AA        TAX
C - - - - 0x03F048 FF:F038: 18        CLC
C - - - - 0x03F049 FF:F039: B9 5C F1  LDA tbl_F15A + 2,Y
C - - - - 0x03F04C FF:F03C: 7D 0E F1  ADC tbl_F10E,X
C - - - - 0x03F04F FF:F03F: 8D A6 04  STA $04A6
C - - - - 0x03F052 FF:F042: AD 3D 06  LDA $063D
C - - - - 0x03F055 FF:F045: C9 03     CMP #$03
C - - - - 0x03F057 FF:F047: F0 18     BEQ bra_F061
C - - - - 0x03F059 FF:F049: AD CE 05  LDA $05CE
C - - - - 0x03F05C FF:F04C: 29 20     AND #$20
C - - - - 0x03F05E FF:F04E: 0D A6 04  ORA $04A6
C - - - - 0x03F061 FF:F051: 8D A6 04  STA $04A6
C - - - - 0x03F064 FF:F054: AD CE 05  LDA $05CE
C - - - - 0x03F067 FF:F057: 4A        LSR
C - - - - 0x03F068 FF:F058: 4A        LSR
C - - - - 0x03F069 FF:F059: 4A        LSR
C - - - - 0x03F06A FF:F05A: 4A        LSR
C - - - - 0x03F06B FF:F05B: 19 5D F1  ORA tbl_F15A + 3,Y
C - - - - 0x03F06E FF:F05E: 4C 64 F0  JMP loc_F064
bra_F061:
C - - - - 0x03F071 FF:F061: B9 5D F1  LDA tbl_F15A + 3,Y
loc_F064:
C D - - - 0x03F074 FF:F064: 8D A7 04  STA $04A7
C - - - - 0x03F077 FF:F067: A9 01     LDA #$01
C - - - - 0x03F079 FF:F069: 8D A5 04  STA $04A5
C - - - - 0x03F07C FF:F06C: AD 3D 06  LDA $063D
C - - - - 0x03F07F FF:F06F: 0A        ASL
C - - - - 0x03F080 FF:F070: 85 3B     STA ram_003B
C - - - - 0x03F082 FF:F072: 0A        ASL
C - - - - 0x03F083 FF:F073: 65 3B     ADC ram_003B
C - - - - 0x03F085 FF:F075: 85 3B     STA ram_003B
C - - - - 0x03F087 FF:F077: 8A        TXA
C - - - - 0x03F088 FF:F078: 65 3B     ADC ram_003B
C - - - - 0x03F08A FF:F07A: AA        TAX
C - - - - 0x03F08B FF:F07B: BD 6A F1  LDA tbl_F16A,X
C - - - - 0x03F08E FF:F07E: 8D A8 04  STA $04A8
C - - - - 0x03F091 FF:F081: 68        PLA
C - - - - 0x03F092 FF:F082: 48        PHA
C - - - - 0x03F093 FF:F083: 0A        ASL
C - - - - 0x03F094 FF:F084: AA        TAX
C - - - - 0x03F095 FF:F085: BD 82 F1  LDA tbl_F182,X
C - - - - 0x03F098 FF:F088: 85 3A     STA ram_003A
C - - - - 0x03F09A FF:F08A: BD 83 F1  LDA tbl_F182 + 1,X
C - - - - 0x03F09D FF:F08D: 85 3B     STA ram_003B
C - - - - 0x03F09F FF:F08F: A2 04     LDX #$04
C - - - - 0x03F0A1 FF:F091: 20 14 F1  JSR sub_F114
C - - - - 0x03F0A4 FF:F094: 68        PLA
C - - - - 0x03F0A5 FF:F095: 18        CLC
C - - - - 0x03F0A6 FF:F096: 69 01     ADC #$01
C - - - - 0x03F0A8 FF:F098: C9 06     CMP #$06
C - - - - 0x03F0AA FF:F09A: F0 03     BEQ bra_F09F
C - - - - 0x03F0AC FF:F09C: 4C 15 F0  JMP loc_F015
bra_F09F:
C - - - - 0x03F0AF FF:F09F: AD 3D 06  LDA $063D
C - - - - 0x03F0B2 FF:F0A2: C9 03     CMP #$03
C - - - - 0x03F0B4 FF:F0A4: F0 67     BEQ bra_F10D_выход
bra_F0A6_ожидание_освобождения_буфера:
C - - - - 0x03F0B6 FF:F0A6: A9 01     LDA #$01
C - - - - 0x03F0B8 FF:F0A8: 20 0F CB  JSR sub_CB0F
C - - - - 0x03F0BB FF:F0AB: AD 15 05  LDA $0515
C - - - - 0x03F0BE FF:F0AE: D0 F6     BNE bra_F0A6_ожидание_освобождения_буфера
C - - - - 0x03F0C0 FF:F0B0: A9 01     LDA #$01
C - - - - 0x03F0C2 FF:F0B2: 8D 15 05  STA $0515
C - - - - 0x03F0C5 FF:F0B5: A9 01     LDA #$01
C - - - - 0x03F0C7 FF:F0B7: 8D A5 04  STA $04A5
C - - - - 0x03F0CA FF:F0BA: A9 A2     LDA #$A2
C - - - - 0x03F0CC FF:F0BC: 8D A8 04  STA $04A8
C - - - - 0x03F0CF FF:F0BF: A9 00     LDA #$00
C - - - - 0x03F0D1 FF:F0C1: 85 3B     STA ram_003B
C - - - - 0x03F0D3 FF:F0C3: 8D A9 04  STA $04A9
C - - - - 0x03F0D6 FF:F0C6: AD 3D 06  LDA $063D
C - - - - 0x03F0D9 FF:F0C9: 0A        ASL
C - - - - 0x03F0DA FF:F0CA: 0A        ASL
C - - - - 0x03F0DB FF:F0CB: AA        TAX
C - - - - 0x03F0DC FF:F0CC: AD 37 06  LDA $0637
C - - - - 0x03F0DF FF:F0CF: 38        SEC
C - - - - 0x03F0E0 FF:F0D0: E9 50     SBC #$50
C - - - - 0x03F0E2 FF:F0D2: 29 F0     AND #$F0
C - - - - 0x03F0E4 FF:F0D4: 0A        ASL
C - - - - 0x03F0E5 FF:F0D5: 85 3A     STA ram_003A
C - - - - 0x03F0E7 FF:F0D7: 26 3B     ROL ram_003B
C - - - - 0x03F0E9 FF:F0D9: AD 35 06  LDA $0635
C - - - - 0x03F0EC FF:F0DC: 38        SEC
C - - - - 0x03F0ED FF:F0DD: E9 30     SBC #$30
C - - - - 0x03F0EF FF:F0DF: 4A        LSR
C - - - - 0x03F0F0 FF:F0E0: 4A        LSR
C - - - - 0x03F0F1 FF:F0E1: 4A        LSR
C - - - - 0x03F0F2 FF:F0E2: 4A        LSR
C - - - - 0x03F0F3 FF:F0E3: 18        CLC
C - - - - 0x03F0F4 FF:F0E4: 65 3A     ADC ram_003A
C - - - - 0x03F0F6 FF:F0E6: 85 3A     STA ram_003A
C - - - - 0x03F0F8 FF:F0E8: 90 02     BCC bra_F0EC
- - - - - 0x03F0FA FF:F0EA: E6 3B     INC ram_003B
bra_F0EC:
C - - - - 0x03F0FC FF:F0EC: 18        CLC
C - - - - 0x03F0FD FF:F0ED: 7D 5A F1  ADC tbl_F15A,X
C - - - - 0x03F100 FF:F0F0: 8D A6 04  STA $04A6
C - - - - 0x03F103 FF:F0F3: BD 5B F1  LDA tbl_F15A + 1,X
C - - - - 0x03F106 FF:F0F6: 65 3B     ADC ram_003B
C - - - - 0x03F108 FF:F0F8: 8D A7 04  STA $04A7
C - - - - 0x03F10B FF:F0FB: AD CE 05  LDA $05CE
C - - - - 0x03F10E FF:F0FE: 4A        LSR
C - - - - 0x03F10F FF:F0FF: 4A        LSR
C - - - - 0x03F110 FF:F100: 4A        LSR
C - - - - 0x03F111 FF:F101: 4A        LSR
C - - - - 0x03F112 FF:F102: 0D A7 04  ORA $04A7
C - - - - 0x03F115 FF:F105: 8D A7 04  STA $04A7
C - - - - 0x03F118 FF:F108: A9 80     LDA #$80
C - - - - 0x03F11A FF:F10A: 8D 15 05  STA $0515
bra_F10D_выход:
C - - - - 0x03F11D FF:F10D: 60        RTS

tbl_F00F:
- D - - - 0x03F01F FF:F00F: 00        .byte $00
- D - - - 0x03F020 FF:F010: 00        .byte $00
- D - - - 0x03F021 FF:F011: 01        .byte $01    ; <あ>
- D - - - 0x03F022 FF:F012: 00        .byte $00

tbl_F10E:
- D - - - 0x03F11E FF:F10E: 00        .byte $00
- D - - - 0x03F11F FF:F10F: 01        .byte $01    ; <あ>
- D - - - 0x03F120 FF:F110: 02        .byte $02    ; <い>
- D - - - 0x03F121 FF:F111: 08        .byte $08    ; <く>
- D - - - 0x03F122 FF:F112: 09        .byte $09    ; <け>
- D - - - 0x03F123 FF:F113: 0A        .byte $0A    ; <こ>

sub_F114:
C - - - - 0x03F124 FF:F114: A0 00     LDY #$00
bra_F116:
C - - - - 0x03F126 FF:F116: B1 3A     LDA (ram_003A),Y
C - - - - 0x03F128 FF:F118: 9D A5 04  STA $04A5,X
C - - - - 0x03F12B FF:F11B: F0 37     BEQ bra_F154
C - - - - 0x03F12D FF:F11D: 85 3E     STA ram_003E
C - - - - 0x03F12F FF:F11F: C8        INY
C - - - - 0x03F130 FF:F120: B1 3A     LDA (ram_003A),Y
C - - - - 0x03F132 FF:F122: 18        CLC
C - - - - 0x03F133 FF:F123: 65 3C     ADC ram_003C
C - - - - 0x03F135 FF:F125: 9D A6 04  STA $04A6,X
C - - - - 0x03F138 FF:F128: 08        PHP
C - - - - 0x03F139 FF:F129: C8        INY
C - - - - 0x03F13A FF:F12A: A5 3D     LDA ram_003D
C - - - - 0x03F13C FF:F12C: C9 22     CMP #$22
C - - - - 0x03F13E FF:F12E: 90 04     BCC bra_F134
C - - - - 0x03F140 FF:F130: A9 00     LDA #$00
C - - - - 0x03F142 FF:F132: F0 07     BEQ bra_F13B
bra_F134:
C - - - - 0x03F144 FF:F134: AD CE 05  LDA $05CE
C - - - - 0x03F147 FF:F137: 4A        LSR
C - - - - 0x03F148 FF:F138: 4A        LSR
C - - - - 0x03F149 FF:F139: 4A        LSR
C - - - - 0x03F14A FF:F13A: 4A        LSR
bra_F13B:
C - - - - 0x03F14B FF:F13B: 11 3A     ORA (ram_003A),Y
C - - - - 0x03F14D FF:F13D: 28        PLP
C - - - - 0x03F14E FF:F13E: 65 3D     ADC ram_003D
C - - - - 0x03F150 FF:F140: 9D A7 04  STA $04A7,X
C - - - - 0x03F153 FF:F143: C8        INY
C - - - - 0x03F154 FF:F144: E8        INX
C - - - - 0x03F155 FF:F145: E8        INX
C - - - - 0x03F156 FF:F146: E8        INX
bra_F147:
C - - - - 0x03F157 FF:F147: B1 3A     LDA (ram_003A),Y
C - - - - 0x03F159 FF:F149: 9D A5 04  STA $04A5,X
C - - - - 0x03F15C FF:F14C: C8        INY
C - - - - 0x03F15D FF:F14D: E8        INX
C - - - - 0x03F15E FF:F14E: C6 3E     DEC ram_003E
C - - - - 0x03F160 FF:F150: D0 F5     BNE bra_F147
C - - - - 0x03F162 FF:F152: F0 C2     BEQ bra_F116
bra_F154:
C - - - - 0x03F164 FF:F154: A9 80     LDA #$80
C - - - - 0x03F166 FF:F156: 8D 15 05  STA $0515
C - - - - 0x03F169 FF:F159: 60        RTS

; первые 2 байта читаются из 2х мест
tbl_F15A:
- D - - - 0x03F16A FF:F15A: 42        .byte $42    ; <イ>
- D - - - 0x03F16B FF:F15B: 20        .byte $20    ; <み>
- D - - - 0x03F16C FF:F15C: C0        .byte $C0    ; <ヅ>
- D - - - 0x03F16D FF:F15D: 23        .byte $23    ; <も>

- D - - - 0x03F16E FF:F15E: 42        .byte $42    ; <イ>
- D - - - 0x03F16F FF:F15F: 20        .byte $20    ; <み>
- D - - - 0x03F170 FF:F160: C0        .byte $C0    ; <ヅ>
- D - - - 0x03F171 FF:F161: 23        .byte $23    ; <も>

- D - - - 0x03F172 FF:F162: 42        .byte $42    ; <イ>
- D - - - 0x03F173 FF:F163: 20        .byte $20    ; <み>
- D - - - 0x03F174 FF:F164: C0        .byte $C0    ; <ヅ>
- D - - - 0x03F175 FF:F165: 23        .byte $23    ; <も>

- D - - - 0x03F176 FF:F166: B4        .byte $B4    ; <ガ>
- D - - - 0x03F177 FF:F167: 22        .byte $22    ; <め>
- D - - - 0x03F178 FF:F168: ED        .byte $ED
- D - - - 0x03F179 FF:F169: 23        .byte $23    ; <も>



tbl_F16A:
- D - - - 0x03F17A FF:F16A: 3A        .byte $3A    ; <7>
- D - - - 0x03F17B FF:F16B: 0A        .byte $0A    ; <こ>
- D - - - 0x03F17C FF:F16C: 0A        .byte $0A    ; <こ>
- D - - - 0x03F17D FF:F16D: 03        .byte $03    ; <う>
- D - - - 0x03F17E FF:F16E: 00        .byte $00
- D - - - 0x03F17F FF:F16F: 00        .byte $00
- D - - - 0x03F180 FF:F170: 3F        .byte $3F    ; <•>
- D - - - 0x03F181 FF:F171: 0F        .byte $0F    ; <そ>
- D - - - 0x03F182 FF:F172: 0F        .byte $0F    ; <そ>
- D - - - 0x03F183 FF:F173: 03        .byte $03    ; <う>
- D - - - 0x03F184 FF:F174: 00        .byte $00
- D - - - 0x03F185 FF:F175: 00        .byte $00
- D - - - 0x03F186 FF:F176: 2A        .byte $2A    ; <れ>
- D - - - 0x03F187 FF:F177: 0A        .byte $0A    ; <こ>
- D - - - 0x03F188 FF:F178: 0A        .byte $0A    ; <こ>
- D - - - 0x03F189 FF:F179: 22        .byte $22    ; <め>
- D - - - 0x03F18A FF:F17A: 00        .byte $00
- D - - - 0x03F18B FF:F17B: 00        .byte $00
- D - - - 0x03F18C FF:F17C: 00        .byte $00
- D - - - 0x03F18D FF:F17D: 00        .byte $00
- D - - - 0x03F18E FF:F17E: 00        .byte $00
- D - - - 0x03F18F FF:F17F: 00        .byte $00
- D - - - 0x03F190 FF:F180: 00        .byte $00
- D - - - 0x03F191 FF:F181: 00        .byte $00



tbl_F182:
- D - - - 0x03F192 FF:F182: 8E F1     .word off_F18E_00
- D - - - 0x03F194 FF:F184: 99 F1     .word off_F199_01
- D - - - 0x03F196 FF:F186: A8 F1     .word off_F1A8_02
- D - - - 0x03F198 FF:F188: B7 F1     .word off_F1B7_03
- D - - - 0x03F19A FF:F18A: CC F1     .word off_F1CC_04
- D - - - 0x03F19C FF:F18C: E9 F1     .word off_F1E9_05

off_F18E_00:
- D - I - 0x03F19E FF:F18E: 02        .byte $02    ; <い>
- D - I - 0x03F19F FF:F18F: 00        .byte $00
- D - I - 0x03F1A0 FF:F190: 00        .byte $00
- D - I - 0x03F1A1 FF:F191: 98        .byte $98
- D - I - 0x03F1A2 FF:F192: AC        .byte $AC    ; <づ>
- D - I - 0x03F1A3 FF:F193: 02        .byte $02    ; <い>
- D - I - 0x03F1A4 FF:F194: 20        .byte $20    ; <み>
- D - I - 0x03F1A5 FF:F195: 00        .byte $00
- D - I - 0x03F1A6 FF:F196: 98        .byte $98
- D - I - 0x03F1A7 FF:F197: 99        .byte $99
- D - I - 0x03F1A8 FF:F198: 00        .byte $00

off_F199_01:
- D - I - 0x03F1A9 FF:F199: 04        .byte $04    ; <え>
- D - I - 0x03F1AA FF:F19A: 02        .byte $02    ; <い>
- D - I - 0x03F1AB FF:F19B: 00        .byte $00
- D - I - 0x03F1AC FF:F19C: AC        .byte $AC    ; <づ>
- D - I - 0x03F1AD FF:F19D: AC        .byte $AC    ; <づ>
- D - I - 0x03F1AE FF:F19E: 99        .byte $99
- D - I - 0x03F1AF FF:F19F: AC        .byte $AC    ; <づ>
- D - I - 0x03F1B0 FF:F1A0: 04        .byte $04    ; <え>
- D - I - 0x03F1B1 FF:F1A1: 22        .byte $22    ; <め>
- D - I - 0x03F1B2 FF:F1A2: 00        .byte $00
- D - I - 0x03F1B3 FF:F1A3: A0        .byte $A0    ; <が>
- D - I - 0x03F1B4 FF:F1A4: A0        .byte $A0    ; <が>
- D - I - 0x03F1B5 FF:F1A5: AF        .byte $AF    ; <ば>
- D - I - 0x03F1B6 FF:F1A6: A0        .byte $A0    ; <が>
- D - I - 0x03F1B7 FF:F1A7: 00        .byte $00

off_F1A8_02:
- D - I - 0x03F1B8 FF:F1A8: 04        .byte $04    ; <え>
- D - I - 0x03F1B9 FF:F1A9: 06        .byte $06    ; <か>
- D - I - 0x03F1BA FF:F1AA: 00        .byte $00
- D - I - 0x03F1BB FF:F1AB: AC        .byte $AC    ; <づ>
- D - I - 0x03F1BC FF:F1AC: AC        .byte $AC    ; <づ>
- D - I - 0x03F1BD FF:F1AD: AC        .byte $AC    ; <づ>
- D - I - 0x03F1BE FF:F1AE: 99        .byte $99
- D - I - 0x03F1BF FF:F1AF: 04        .byte $04    ; <え>
- D - I - 0x03F1C0 FF:F1B0: 26        .byte $26    ; <よ>
- D - I - 0x03F1C1 FF:F1B1: 00        .byte $00
- D - I - 0x03F1C2 FF:F1B2: A0        .byte $A0    ; <が>
- D - I - 0x03F1C3 FF:F1B3: A0        .byte $A0    ; <が>
- D - I - 0x03F1C4 FF:F1B4: 98        .byte $98
- D - I - 0x03F1C5 FF:F1B5: 99        .byte $99
- D - I - 0x03F1C6 FF:F1B6: 00        .byte $00

off_F1B7_03:
- D - I - 0x03F1C7 FF:F1B7: 02        .byte $02    ; <い>
- D - I - 0x03F1C8 FF:F1B8: 40        .byte $40    ; <「>
- D - I - 0x03F1C9 FF:F1B9: 00        .byte $00
- D - I - 0x03F1CA FF:F1BA: A1        .byte $A1    ; <ぎ>
- D - I - 0x03F1CB FF:F1BB: AF        .byte $AF    ; <ば>
- D - I - 0x03F1CC FF:F1BC: 02        .byte $02    ; <い>
- D - I - 0x03F1CD FF:F1BD: 60        .byte $60    ; <ミ>
- D - I - 0x03F1CE FF:F1BE: 00        .byte $00
- D - I - 0x03F1CF FF:F1BF: A3        .byte $A3    ; <げ>
- D - I - 0x03F1D0 FF:F1C0: AF        .byte $AF    ; <ば>
- D - I - 0x03F1D1 FF:F1C1: 02        .byte $02    ; <い>
- D - I - 0x03F1D2 FF:F1C2: 80        .byte $80
- D - I - 0x03F1D3 FF:F1C3: 00        .byte $00
- D - I - 0x03F1D4 FF:F1C4: 9A        .byte $9A
- D - I - 0x03F1D5 FF:F1C5: 9B        .byte $9B
- D - I - 0x03F1D6 FF:F1C6: 02        .byte $02    ; <い>
- D - I - 0x03F1D7 FF:F1C7: A0        .byte $A0    ; <が>
- D - I - 0x03F1D8 FF:F1C8: 00        .byte $00
- D - I - 0x03F1D9 FF:F1C9: 9A        .byte $9A
- D - I - 0x03F1DA FF:F1CA: AD        .byte $AD    ; <で>
- D - I - 0x03F1DB FF:F1CB: 00        .byte $00

off_F1CC_04:
- D - I - 0x03F1DC FF:F1CC: 04        .byte $04    ; <え>
- D - I - 0x03F1DD FF:F1CD: 42        .byte $42    ; <イ>
- D - I - 0x03F1DE FF:F1CE: 00        .byte $00
- D - I - 0x03F1DF FF:F1CF: A0        .byte $A0    ; <が>
- D - I - 0x03F1E0 FF:F1D0: A0        .byte $A0    ; <が>
- D - I - 0x03F1E1 FF:F1D1: A4        .byte $A4    ; <ご>
- D - I - 0x03F1E2 FF:F1D2: A5        .byte $A5    ; <ざ>
- D - I - 0x03F1E3 FF:F1D3: 04        .byte $04    ; <え>
- D - I - 0x03F1E4 FF:F1D4: 62        .byte $62    ; <メ>
- D - I - 0x03F1E5 FF:F1D5: 00        .byte $00
- D - I - 0x03F1E6 FF:F1D6: A0        .byte $A0    ; <が>
- D - I - 0x03F1E7 FF:F1D7: A0        .byte $A0    ; <が>
- D - I - 0x03F1E8 FF:F1D8: A6        .byte $A6    ; <じ>
- D - I - 0x03F1E9 FF:F1D9: A7        .byte $A7    ; <ず>
- D - I - 0x03F1EA FF:F1DA: 04        .byte $04    ; <え>
- D - I - 0x03F1EB FF:F1DB: 82        .byte $82    ; <B>
- D - I - 0x03F1EC FF:F1DC: 00        .byte $00
- D - I - 0x03F1ED FF:F1DD: A0        .byte $A0    ; <が>
- D - I - 0x03F1EE FF:F1DE: A0        .byte $A0    ; <が>
- D - I - 0x03F1EF FF:F1DF: AF        .byte $AF    ; <ば>
- D - I - 0x03F1F0 FF:F1E0: A0        .byte $A0    ; <が>
- D - I - 0x03F1F1 FF:F1E1: 04        .byte $04    ; <え>
- D - I - 0x03F1F2 FF:F1E2: A2        .byte $A2    ; <ぐ>
- D - I - 0x03F1F3 FF:F1E3: 00        .byte $00
- D - I - 0x03F1F4 FF:F1E4: AD        .byte $AD    ; <で>
- D - I - 0x03F1F5 FF:F1E5: AD        .byte $AD    ; <で>
- D - I - 0x03F1F6 FF:F1E6: 9B        .byte $9B
- D - I - 0x03F1F7 FF:F1E7: AD        .byte $AD    ; <で>
- D - I - 0x03F1F8 FF:F1E8: 00        .byte $00

off_F1E9_05:
- D - I - 0x03F1F9 FF:F1E9: 04        .byte $04    ; <え>
- D - I - 0x03F1FA FF:F1EA: 46        .byte $46    ; <カ>
- D - I - 0x03F1FB FF:F1EB: 00        .byte $00
- D - I - 0x03F1FC FF:F1EC: A0        .byte $A0    ; <が>
- D - I - 0x03F1FD FF:F1ED: A0        .byte $A0    ; <が>
- D - I - 0x03F1FE FF:F1EE: AE        .byte $AE    ; <ど>
- D - I - 0x03F1FF FF:F1EF: A1        .byte $A1    ; <ぎ>
- D - I - 0x03F200 FF:F1F0: 04        .byte $04    ; <え>
- D - I - 0x03F201 FF:F1F1: 66        .byte $66    ; <ヨ>
- D - I - 0x03F202 FF:F1F2: 00        .byte $00
- D - I - 0x03F203 FF:F1F3: A0        .byte $A0    ; <が>
- D - I - 0x03F204 FF:F1F4: A0        .byte $A0    ; <が>
- D - I - 0x03F205 FF:F1F5: AE        .byte $AE    ; <ど>
- D - I - 0x03F206 FF:F1F6: A3        .byte $A3    ; <げ>
- D - I - 0x03F207 FF:F1F7: 04        .byte $04    ; <え>
- D - I - 0x03F208 FF:F1F8: 86        .byte $86    ; <F>
- D - I - 0x03F209 FF:F1F9: 00        .byte $00
- D - I - 0x03F20A FF:F1FA: A0        .byte $A0    ; <が>
- D - I - 0x03F20B FF:F1FB: A0        .byte $A0    ; <が>
- D - I - 0x03F20C FF:F1FC: 9A        .byte $9A
- D - I - 0x03F20D FF:F1FD: 9B        .byte $9B
- D - I - 0x03F20E FF:F1FE: 04        .byte $04    ; <え>
- D - I - 0x03F20F FF:F1FF: A6        .byte $A6    ; <じ>
- D - I - 0x03F210 FF:F200: 00        .byte $00
- D - I - 0x03F211 FF:F201: AD        .byte $AD    ; <で>
- D - I - 0x03F212 FF:F202: AD        .byte $AD    ; <で>
- D - I - 0x03F213 FF:F203: AD        .byte $AD    ; <で>
- D - I - 0x03F214 FF:F204: 9B        .byte $9B
- D - I - 0x03F215 FF:F205: 00        .byte $00



tbl_F206:
- D - - - 0x03F216 FF:F206: 12 F2     .word off_F212_00
- D - - - 0x03F218 FF:F208: 2E F2     .word off_F22E_01
- D - - - 0x03F21A FF:F20A: 51 F2     .word off_F251_02
- D - - - 0x03F21C FF:F20C: 77 F2     .word off_F277_03
- D - - - 0x03F21E FF:F20E: AD F2     .word off_F2AD_04
- D - - - 0x03F220 FF:F210: ED F2     .word off_F2ED_05

off_F212_00:
- D - I - 0x03F222 FF:F212: 04        .byte $04    ; <え>
- D - I - 0x03F223 FF:F213: 4E        .byte $4E    ; <セ>
- D - I - 0x03F224 FF:F214: 00        .byte $00
- D - I - 0x03F225 FF:F215: 94        .byte $94
- D - I - 0x03F226 FF:F216: 95        .byte $95
- D - I - 0x03F227 FF:F217: C0        .byte $C0    ; <ヅ>
- D - I - 0x03F228 FF:F218: C1        .byte $C1    ; <デ>
- D - I - 0x03F229 FF:F219: 05        .byte $05    ; <お>
- D - I - 0x03F22A FF:F21A: 6E        .byte $6E    ; <ン>
- D - I - 0x03F22B FF:F21B: 00        .byte $00
- D - I - 0x03F22C FF:F21C: 96        .byte $96
- D - I - 0x03F22D FF:F21D: 97        .byte $97
- D - I - 0x03F22E FF:F21E: 80        .byte $80
- D - I - 0x03F22F FF:F21F: C2        .byte $C2    ; <ド>
- D - I - 0x03F230 FF:F220: E0        .byte $E0
- D - I - 0x03F231 FF:F221: 03        .byte $03    ; <う>
- D - I - 0x03F232 FF:F222: 8F        .byte $8F    ; <S>
- D - I - 0x03F233 FF:F223: 00        .byte $00
- D - I - 0x03F234 FF:F224: 9D        .byte $9D
- D - I - 0x03F235 FF:F225: 80        .byte $80
- D - I - 0x03F236 FF:F226: C8        .byte $C8    ; <ぱ>
- D - I - 0x03F237 FF:F227: 03        .byte $03    ; <う>
- D - I - 0x03F238 FF:F228: AF        .byte $AF    ; <ば>
- D - I - 0x03F239 FF:F229: 00        .byte $00
- D - I - 0x03F23A FF:F22A: 9F        .byte $9F
- D - I - 0x03F23B FF:F22B: CA        .byte $CA    ; <ぷ>
- D - I - 0x03F23C FF:F22C: E2        .byte $E2
- D - I - 0x03F23D FF:F22D: 00        .byte $00

off_F22E_01:
- D - I - 0x03F23E FF:F22E: 05        .byte $05    ; <お>
- D - I - 0x03F23F FF:F22F: 34        .byte $34    ; <1>
- D - I - 0x03F240 FF:F230: 00        .byte $00
- D - I - 0x03F241 FF:F231: C3        .byte $C3    ; <バ>
- D - I - 0x03F242 FF:F232: C6        .byte $C6    ; <ベ>
- D - I - 0x03F243 FF:F233: C4        .byte $C4    ; <ビ>
- D - I - 0x03F244 FF:F234: C5        .byte $C5    ; <ブ>
- D - I - 0x03F245 FF:F235: C7        .byte $C7    ; <ボ>
- D - I - 0x03F246 FF:F236: 04        .byte $04    ; <え>
- D - I - 0x03F247 FF:F237: 53        .byte $53    ; <テ>
- D - I - 0x03F248 FF:F238: 00        .byte $00
- D - I - 0x03F249 FF:F239: BD        .byte $BD    ; <ゾ>
- D - I - 0x03F24A FF:F23A: C9        .byte $C9    ; <ぴ>
- D - I - 0x03F24B FF:F23B: 80        .byte $80
- D - I - 0x03F24C FF:F23C: CC        .byte $CC    ; <ぽ>
- D - I - 0x03F24D FF:F23D: 04        .byte $04    ; <え>
- D - I - 0x03F24E FF:F23E: 73        .byte $73    ; <ヮ>
- D - I - 0x03F24F FF:F23F: 00        .byte $00
- D - I - 0x03F250 FF:F240: BF        .byte $BF    ; <ヂ>
- D - I - 0x03F251 FF:F241: CB        .byte $CB    ; <ぺ>
- D - I - 0x03F252 FF:F242: 80        .byte $80
- D - I - 0x03F253 FF:F243: CE        .byte $CE    ; <ピ>
- D - I - 0x03F254 FF:F244: 03        .byte $03    ; <う>
- D - I - 0x03F255 FF:F245: 94        .byte $94
- D - I - 0x03F256 FF:F246: 00        .byte $00
- D - I - 0x03F257 FF:F247: E1        .byte $E1
- D - I - 0x03F258 FF:F248: BE        .byte $BE    ; <ダ>
- D - I - 0x03F259 FF:F249: E4        .byte $E4
- D - I - 0x03F25A FF:F24A: 03        .byte $03    ; <う>
- D - I - 0x03F25B FF:F24B: B4        .byte $B4    ; <ガ>
- D - I - 0x03F25C FF:F24C: 00        .byte $00
- D - I - 0x03F25D FF:F24D: E3        .byte $E3
- D - I - 0x03F25E FF:F24E: E6        .byte $E6
- D - I - 0x03F25F FF:F24F: E7        .byte $E7
- D - I - 0x03F260 FF:F250: 00        .byte $00

off_F251_02:
- D - I - 0x03F261 FF:F251: 03        .byte $03    ; <う>
- D - I - 0x03F262 FF:F252: 2A        .byte $2A    ; <れ>
- D - I - 0x03F263 FF:F253: 00        .byte $00
- D - I - 0x03F264 FF:F254: A8        .byte $A8    ; <ぜ>
- D - I - 0x03F265 FF:F255: A9        .byte $A9    ; <ぞ>
- D - I - 0x03F266 FF:F256: 9C        .byte $9C
- D - I - 0x03F267 FF:F257: 04        .byte $04    ; <え>
- D - I - 0x03F268 FF:F258: 49        .byte $49    ; <ケ>
- D - I - 0x03F269 FF:F259: 00        .byte $00
- D - I - 0x03F26A FF:F25A: AA        .byte $AA    ; <だ>
- D - I - 0x03F26B FF:F25B: 80        .byte $80
- D - I - 0x03F26C FF:F25C: AB        .byte $AB    ; <ぢ>
- D - I - 0x03F26D FF:F25D: 9E        .byte $9E
- D - I - 0x03F26E FF:F25E: 05        .byte $05    ; <お>
- D - I - 0x03F26F FF:F25F: 69        .byte $69    ; <ル>
- D - I - 0x03F270 FF:F260: 00        .byte $00
- D - I - 0x03F271 FF:F261: B0        .byte $B0    ; <び>
- D - I - 0x03F272 FF:F262: 80        .byte $80
- D - I - 0x03F273 FF:F263: B1        .byte $B1    ; <ぶ>
- D - I - 0x03F274 FF:F264: B4        .byte $B4    ; <ガ>
- D - I - 0x03F275 FF:F265: B5        .byte $B5    ; <ギ>
- D - I - 0x03F276 FF:F266: 06        .byte $06    ; <か>
- D - I - 0x03F277 FF:F267: 88        .byte $88    ; <H>
- D - I - 0x03F278 FF:F268: 00        .byte $00
- D - I - 0x03F279 FF:F269: B2        .byte $B2    ; <べ>
- D - I - 0x03F27A FF:F26A: B3        .byte $B3    ; <ぼ>
- D - I - 0x03F27B FF:F26B: 80        .byte $80
- D - I - 0x03F27C FF:F26C: BC        .byte $BC    ; <ゼ>
- D - I - 0x03F27D FF:F26D: B6        .byte $B6    ; <グ>
- D - I - 0x03F27E FF:F26E: B7        .byte $B7    ; <ゲ>
- D - I - 0x03F27F FF:F26F: 04        .byte $04    ; <え>
- D - I - 0x03F280 FF:F270: A8        .byte $A8    ; <ぜ>
- D - I - 0x03F281 FF:F271: 00        .byte $00
- D - I - 0x03F282 FF:F272: B8        .byte $B8    ; <ゴ>
- D - I - 0x03F283 FF:F273: BA        .byte $BA    ; <ジ>
- D - I - 0x03F284 FF:F274: B9        .byte $B9    ; <ザ>
- D - I - 0x03F285 FF:F275: BB        .byte $BB    ; <ズ>
- D - I - 0x03F286 FF:F276: 00        .byte $00

off_F277_03:
- D - I - 0x03F287 FF:F277: 05        .byte $05    ; <お>
- D - I - 0x03F288 FF:F278: 1A        .byte $1A    ; <は>
- D - I - 0x03F289 FF:F279: 00        .byte $00
- D - I - 0x03F28A FF:F27A: D0        .byte $D0    ; <ペ>
- D - I - 0x03F28B FF:F27B: D1        .byte $D1    ; <ポ>
- D - I - 0x03F28C FF:F27C: D4        .byte $D4
- D - I - 0x03F28D FF:F27D: D5        .byte $D5
- D - I - 0x03F28E FF:F27E: FB        .byte $FB
- D - I - 0x03F28F FF:F27F: 07        .byte $07    ; <き>
- D - I - 0x03F290 FF:F280: 39        .byte $39    ; <6>
- D - I - 0x03F291 FF:F281: 00        .byte $00
- D - I - 0x03F292 FF:F282: CD        .byte $CD    ; <パ>
- D - I - 0x03F293 FF:F283: D2        .byte $D2
- D - I - 0x03F294 FF:F284: D3        .byte $D3
- D - I - 0x03F295 FF:F285: 80        .byte $80
- D - I - 0x03F296 FF:F286: 80        .byte $80
- D - I - 0x03F297 FF:F287: D6        .byte $D6
- D - I - 0x03F298 FF:F288: D7        .byte $D7
- D - I - 0x03F299 FF:F289: 06        .byte $06    ; <か>
- D - I - 0x03F29A FF:F28A: 59        .byte $59    ; <ノ>
- D - I - 0x03F29B FF:F28B: 00        .byte $00
- D - I - 0x03F29C FF:F28C: CF        .byte $CF    ; <プ>
- D - I - 0x03F29D FF:F28D: D8        .byte $D8
- D - I - 0x03F29E FF:F28E: 80        .byte $80
- D - I - 0x03F29F FF:F28F: 80        .byte $80
- D - I - 0x03F2A0 FF:F290: 80        .byte $80
- D - I - 0x03F2A1 FF:F291: D9        .byte $D9
- D - I - 0x03F2A2 FF:F292: 07        .byte $07    ; <き>
- D - I - 0x03F2A3 FF:F293: 79        .byte $79    ; <!>
- D - I - 0x03F2A4 FF:F294: 00        .byte $00
- D - I - 0x03F2A5 FF:F295: E5        .byte $E5
- D - I - 0x03F2A6 FF:F296: DA        .byte $DA
- D - I - 0x03F2A7 FF:F297: FC        .byte $FC
- D - I - 0x03F2A8 FF:F298: FD        .byte $FD
- D - I - 0x03F2A9 FF:F299: 80        .byte $80
- D - I - 0x03F2AA FF:F29A: 80        .byte $80
- D - I - 0x03F2AB FF:F29B: DC        .byte $DC
- D - I - 0x03F2AC FF:F29C: 05        .byte $05    ; <お>
- D - I - 0x03F2AD FF:F29D: 9B        .byte $9B
- D - I - 0x03F2AE FF:F29E: 00        .byte $00
- D - I - 0x03F2AF FF:F29F: DB        .byte $DB
- D - I - 0x03F2B0 FF:F2A0: DD        .byte $DD
- D - I - 0x03F2B1 FF:F2A1: 80        .byte $80
- D - I - 0x03F2B2 FF:F2A2: 80        .byte $80
- D - I - 0x03F2B3 FF:F2A3: 80        .byte $80
- D - I - 0x03F2B4 FF:F2A4: 05        .byte $05    ; <お>
- D - I - 0x03F2B5 FF:F2A5: BB        .byte $BB    ; <ズ>
- D - I - 0x03F2B6 FF:F2A6: 00        .byte $00
- D - I - 0x03F2B7 FF:F2A7: 9F        .byte $9F
- D - I - 0x03F2B8 FF:F2A8: 80        .byte $80
- D - I - 0x03F2B9 FF:F2A9: BA        .byte $BA    ; <ジ>
- D - I - 0x03F2BA FF:F2AA: DE        .byte $DE
- D - I - 0x03F2BB FF:F2AB: DF        .byte $DF
- D - I - 0x03F2BC FF:F2AC: 00        .byte $00

off_F2AD_04:
- D - I - 0x03F2BD FF:F2AD: 04        .byte $04    ; <え>
- D - I - 0x03F2BE FF:F2AE: 01        .byte $01    ; <あ>
- D - I - 0x03F2BF FF:F2AF: 00        .byte $00
- D - I - 0x03F2C0 FF:F2B0: 84        .byte $84    ; <D>
- D - I - 0x03F2C1 FF:F2B1: 85        .byte $85    ; <E>
- D - I - 0x03F2C2 FF:F2B2: 90        .byte $90    ; <U>
- D - I - 0x03F2C3 FF:F2B3: 91        .byte $91    ; <V>
- D - I - 0x03F2C4 FF:F2B4: 05        .byte $05    ; <お>
- D - I - 0x03F2C5 FF:F2B5: 20        .byte $20    ; <み>
- D - I - 0x03F2C6 FF:F2B6: 00        .byte $00
- D - I - 0x03F2C7 FF:F2B7: 82        .byte $82    ; <B>
- D - I - 0x03F2C8 FF:F2B8: 80        .byte $80
- D - I - 0x03F2C9 FF:F2B9: 80        .byte $80
- D - I - 0x03F2CA FF:F2BA: 80        .byte $80
- D - I - 0x03F2CB FF:F2BB: 93        .byte $93    ; <Y>
- D - I - 0x03F2CC FF:F2BC: 06        .byte $06    ; <か>
- D - I - 0x03F2CD FF:F2BD: 40        .byte $40    ; <「>
- D - I - 0x03F2CE FF:F2BE: 00        .byte $00
- D - I - 0x03F2CF FF:F2BF: 80        .byte $80
- D - I - 0x03F2D0 FF:F2C0: 80        .byte $80
- D - I - 0x03F2D1 FF:F2C1: 80        .byte $80
- D - I - 0x03F2D2 FF:F2C2: 80        .byte $80
- D - I - 0x03F2D3 FF:F2C3: 80        .byte $80
- D - I - 0x03F2D4 FF:F2C4: 88        .byte $88    ; <H>
- D - I - 0x03F2D5 FF:F2C5: 02        .byte $02    ; <い>
- D - I - 0x03F2D6 FF:F2C6: 47        .byte $47    ; <キ>
- D - I - 0x03F2D7 FF:F2C7: 00        .byte $00
- D - I - 0x03F2D8 FF:F2C8: 83        .byte $83    ; <C>
- D - I - 0x03F2D9 FF:F2C9: 86        .byte $86    ; <F>
- D - I - 0x03F2DA FF:F2CA: 09        .byte $09    ; <け>
- D - I - 0x03F2DB FF:F2CB: 60        .byte $60    ; <ミ>
- D - I - 0x03F2DC FF:F2CC: 00        .byte $00
- D - I - 0x03F2DD FF:F2CD: 80        .byte $80
- D - I - 0x03F2DE FF:F2CE: 80        .byte $80
- D - I - 0x03F2DF FF:F2CF: 80        .byte $80
- D - I - 0x03F2E0 FF:F2D0: 80        .byte $80
- D - I - 0x03F2E1 FF:F2D1: 80        .byte $80
- D - I - 0x03F2E2 FF:F2D2: 80        .byte $80
- D - I - 0x03F2E3 FF:F2D3: 8A        .byte $8A    ; <N>
- D - I - 0x03F2E4 FF:F2D4: 89        .byte $89    ; <I>
- D - I - 0x03F2E5 FF:F2D5: 8C        .byte $8C    ; <M>
- D - I - 0x03F2E6 FF:F2D6: 08        .byte $08    ; <く>
- D - I - 0x03F2E7 FF:F2D7: 80        .byte $80
- D - I - 0x03F2E8 FF:F2D8: 00        .byte $00
- D - I - 0x03F2E9 FF:F2D9: 80        .byte $80
- D - I - 0x03F2EA FF:F2DA: 80        .byte $80
- D - I - 0x03F2EB FF:F2DB: 80        .byte $80
- D - I - 0x03F2EC FF:F2DC: 80        .byte $80
- D - I - 0x03F2ED FF:F2DD: 80        .byte $80
- D - I - 0x03F2EE FF:F2DE: 8D        .byte $8D    ; <P>
- D - I - 0x03F2EF FF:F2DF: 80        .byte $80
- D - I - 0x03F2F0 FF:F2E0: 8B        .byte $8B    ; <K>
- D - I - 0x03F2F1 FF:F2E1: 08        .byte $08    ; <く>
- D - I - 0x03F2F2 FF:F2E2: A0        .byte $A0    ; <が>
- D - I - 0x03F2F3 FF:F2E3: 00        .byte $00
- D - I - 0x03F2F4 FF:F2E4: 80        .byte $80
- D - I - 0x03F2F5 FF:F2E5: 80        .byte $80
- D - I - 0x03F2F6 FF:F2E6: 80        .byte $80
- D - I - 0x03F2F7 FF:F2E7: 80        .byte $80
- D - I - 0x03F2F8 FF:F2E8: 8E        .byte $8E    ; <L>
- D - I - 0x03F2F9 FF:F2E9: 8F        .byte $8F    ; <S>
- D - I - 0x03F2FA FF:F2EA: 87        .byte $87    ; <G>
- D - I - 0x03F2FB FF:F2EB: 92        .byte $92    ; <W>
- D - I - 0x03F2FC FF:F2EC: 00        .byte $00

off_F2ED_05:
- D - I - 0x03F2FD FF:F2ED: 02        .byte $02    ; <い>
- D - I - 0x03F2FE FF:F2EE: 4F        .byte $4F    ; <ソ>
- D - I - 0x03F2FF FF:F2EF: 00        .byte $00
- D - I - 0x03F300 FF:F2F0: D4        .byte $D4
- D - I - 0x03F301 FF:F2F1: D5        .byte $D5
- D - I - 0x03F302 FF:F2F2: 04        .byte $04    ; <え>
- D - I - 0x03F303 FF:F2F3: 6D        .byte $6D    ; <ヲ>
- D - I - 0x03F304 FF:F2F4: 00        .byte $00
- D - I - 0x03F305 FF:F2F5: D2        .byte $D2
- D - I - 0x03F306 FF:F2F6: D3        .byte $D3
- D - I - 0x03F307 FF:F2F7: 00        .byte $00
- D - I - 0x03F308 FF:F2F8: D7        .byte $D7
- D - I - 0x03F309 FF:F2F9: 01        .byte $01    ; <あ>
- D - I - 0x03F30A FF:F2FA: 72        .byte $72    ; <ョ>
- D - I - 0x03F30B FF:F2FB: 00        .byte $00
- D - I - 0x03F30C FF:F2FC: D6        .byte $D6
- D - I - 0x03F30D FF:F2FD: 06        .byte $06    ; <か>
- D - I - 0x03F30E FF:F2FE: 8D        .byte $8D    ; <P>
- D - I - 0x03F30F FF:F2FF: 00        .byte $00
- D - I - 0x03F310 FF:F300: D8        .byte $D8
- D - I - 0x03F311 FF:F301: 00        .byte $00
- D - I - 0x03F312 FF:F302: 00        .byte $00
- D - I - 0x03F313 FF:F303: DD        .byte $DD
- D - I - 0x03F314 FF:F304: D9        .byte $D9
- D - I - 0x03F315 FF:F305: DC        .byte $DC
- D - I - 0x03F316 FF:F306: 05        .byte $05    ; <お>
- D - I - 0x03F317 FF:F307: AD        .byte $AD    ; <で>
- D - I - 0x03F318 FF:F308: 00        .byte $00
- D - I - 0x03F319 FF:F309: DA        .byte $DA
- D - I - 0x03F31A FF:F30A: DB        .byte $DB
- D - I - 0x03F31B FF:F30B: DE        .byte $DE
- D - I - 0x03F31C FF:F30C: DF        .byte $DF
- D - I - 0x03F31D FF:F30D: D1        .byte $D1    ; <ポ>
- D - I - 0x03F31E FF:F30E: 00        .byte $00

.export sub_0x03F31F_таблица_слов
sub_0x03F31F_таблица_слов:
    TAY
    LDA #$A6
    STA $5116
    JSR sub_0x40005_таблица_слов
    LDA ram_для_5116
    STA $5116
    RTS

tbl_FACC_скорость:
; по очереди сравниваются скорости, увеличивая счетчик в процессе
- D - - - 0x03FADC FF:FACC: 06 00     .word $0006
- D - - - 0x03FADE FF:FACE: 0D 00     .word $000D
- D - - - 0x03FAE0 FF:FAD0: 13 00     .word $0013
- D - - - 0x03FAE2 FF:FAD2: 19 00     .word $0019
- D - - - 0x03FAE4 FF:FAD4: 20 00     .word $0020
- D - - - 0x03FAE6 FF:FAD6: 26 00     .word $0026
- D - - - 0x03FAE8 FF:FAD8: 2C 00     .word $002C
- D - - - 0x03FAEA FF:FADA: 33 00     .word $0033
- D - - - 0x03FAEC FF:FADC: 39 00     .word $0039
- D - - - 0x03FAEE FF:FADE: 40 00     .word $0040
- D - - - 0x03FAF0 FF:FAE0: 47 00     .word $0047
- D - - - 0x03FAF2 FF:FAE2: 4E 00     .word $004E
- D - - - 0x03FAF4 FF:FAE4: 55 00     .word $0055
- D - - - 0x03FAF6 FF:FAE6: 5C 00     .word $005C
- D - - - 0x03FAF8 FF:FAE8: 63 00     .word $0063
- D - - - 0x03FAFA FF:FAEA: 6A 00     .word $006A
- D - - - 0x03FAFC FF:FAEC: 71 00     .word $0071
- D - - - 0x03FAFE FF:FAEE: 79 00     .word $0079
- D - - - 0x03FB00 FF:FAF0: 81 00     .word $0081
- D - - - 0x03FB02 FF:FAF2: 89 00     .word $0089
- D - - - 0x03FB04 FF:FAF4: 91 00     .word $0091
- D - - - 0x03FB06 FF:FAF6: 99 00     .word $0099
- D - - - 0x03FB08 FF:FAF8: A2 00     .word $00A2
- D - - - 0x03FB0A FF:FAFA: AB 00     .word $00AB
- D - - - 0x03FB0C FF:FAFC: B4 00     .word $00B4
- D - - - 0x03FB0E FF:FAFE: BE 00     .word $00BE
- D - - - 0x03FB10 FF:FB00: C8 00     .word $00C8
- D - - - 0x03FB12 FF:FB02: D2 00     .word $00D2
- D - - - 0x03FB14 FF:FB04: DD 00     .word $00DD
- D - - - 0x03FB16 FF:FB06: E8 00     .word $00E8
- D - - - 0x03FB18 FF:FB08: F4 00     .word $00F4
- D - - - 0x03FB1A FF:FB0A: 00 01     .word $0100
- D - - - 0x03FB1C FF:FB0C: 0D 01     .word $010D
- D - - - 0x03FB1E FF:FB0E: 1A 01     .word $011A
- D - - - 0x03FB20 FF:FB10: 29 01     .word $0129
- D - - - 0x03FB22 FF:FB12: 38 01     .word $0138
- D - - - 0x03FB24 FF:FB14: 48 01     .word $0148
- D - - - 0x03FB26 FF:FB16: 59 01     .word $0159
- D - - - 0x03FB28 FF:FB18: 6B 01     .word $016B
- D - - - 0x03FB2A FF:FB1A: 7F 01     .word $017F
- D - - - 0x03FB2C FF:FB1C: 94 01     .word $0194
- D - - - 0x03FB2E FF:FB1E: AB 01     .word $01AB
- D - - - 0x03FB30 FF:FB20: C4 01     .word $01C4
- D - - - 0x03FB32 FF:FB22: DF 01     .word $01DF
- D - - - 0x03FB34 FF:FB24: FD 01     .word $01FD
- D - - - 0x03FB36 FF:FB26: 1D 02     .word $021D
- D - - - 0x03FB38 FF:FB28: 42 02     .word $0242
- D - - - 0x03FB3A FF:FB2A: 6A 02     .word $026A
- D - - - 0x03FB3C FF:FB2C: 98 02     .word $0298
- D - - - 0x03FB3E FF:FB2E: DB 02     .word $02DB
- D - - - 0x03FB40 FF:FB30: 07 03     .word $0307
- D - - - 0x03FB42 FF:FB32: 4C 03     .word $034C
- D - - - 0x03FB44 FF:FB34: 9D 03     .word $039D
- D - - - 0x03FB46 FF:FB36: FE 03     .word $03FE
- D - - - 0x03FB48 FF:FB38: 74 04     .word $0474
- D - - - 0x03FB4A FF:FB3A: 07 05     .word $0507
- D - - - 0x03FB4C FF:FB3C: C3 05     .word $05C3
- D - - - 0x03FB4E FF:FB3E: BE 06     .word $06BE
- D - - - 0x03FB50 FF:FB40: 1B 08     .word $081B
- D - - - 0x03FB52 FF:FB42: 27 0A     .word $0A27
- D - - - 0x03FB54 FF:FB44: 8F 0D     .word $0D8F
- D - - - 0x03FB56 FF:FB46: 5B 20     .word $205B
- D - - - 0x03FB58 FF:FB48: BC 40     .word $40BC
- D - - - 0x03FB5A FF:FB4A: FF FF     .word $FFFF

tbl_FB4C:
- D - - - 0x03FB5C FF:FB4C: 00 00     .word $0000
- D - - - 0x03FB5E FF:FB4E: 00 00     .word $0000
- D - - - 0x03FB60 FF:FB50: 06 00     .word $0006
- D - - - 0x03FB62 FF:FB52: 0C 00     .word $000C
- D - - - 0x03FB64 FF:FB54: 12 00     .word $0012
- D - - - 0x03FB66 FF:FB56: 19 00     .word $0019
- D - - - 0x03FB68 FF:FB58: 1F 00     .word $001F
- D - - - 0x03FB6A FF:FB5A: 25 00     .word $0025
- D - - - 0x03FB6C FF:FB5C: 2B 00     .word $002B
- D - - - 0x03FB6E FF:FB5E: 31 00     .word $0031
- D - - - 0x03FB70 FF:FB60: 38 00     .word $0038
- D - - - 0x03FB72 FF:FB62: 3E 00     .word $003E
- D - - - 0x03FB74 FF:FB64: 44 00     .word $0044
- D - - - 0x03FB76 FF:FB66: 4A 00     .word $004A
- D - - - 0x03FB78 FF:FB68: 50 00     .word $0050
- D - - - 0x03FB7A FF:FB6A: 56 00     .word $0056
- D - - - 0x03FB7C FF:FB6C: 5C 00     .word $005C
- D - - - 0x03FB7E FF:FB6E: 61 00     .word $0061
- D - - - 0x03FB80 FF:FB70: 67 00     .word $0067
- D - - - 0x03FB82 FF:FB72: 6D 00     .word $006D
- D - - - 0x03FB84 FF:FB74: 73 00     .word $0073
- D - - - 0x03FB86 FF:FB76: 78 00     .word $0078
- D - - - 0x03FB88 FF:FB78: 7E 00     .word $007E
- D - - - 0x03FB8A FF:FB7A: 83 00     .word $0083
- D - - - 0x03FB8C FF:FB7C: 88 00     .word $0088
- D - - - 0x03FB8E FF:FB7E: 8E 00     .word $008E
- D - - - 0x03FB90 FF:FB80: 93 00     .word $0093
- D - - - 0x03FB92 FF:FB82: 98 00     .word $0098
- D - - - 0x03FB94 FF:FB84: 9D 00     .word $009D
- D - - - 0x03FB96 FF:FB86: A2 00     .word $00A2
- D - - - 0x03FB98 FF:FB88: A7 00     .word $00A7
- D - - - 0x03FB9A FF:FB8A: AB 00     .word $00AB
- D - - - 0x03FB9C FF:FB8C: B0 00     .word $00B0
- D - - - 0x03FB9E FF:FB8E: B5 00     .word $00B5
- D - - - 0x03FBA0 FF:FB90: B9 00     .word $00B9
- D - - - 0x03FBA2 FF:FB92: BD 00     .word $00BD
- D - - - 0x03FBA4 FF:FB94: C1 00     .word $00C1
- D - - - 0x03FBA6 FF:FB96: C5 00     .word $00C5
- D - - - 0x03FBA8 FF:FB98: C9 00     .word $00C9
- D - - - 0x03FBAA FF:FB9A: CD 00     .word $00CD
- D - - - 0x03FBAC FF:FB9C: D1 00     .word $00D1
- D - - - 0x03FBAE FF:FB9E: D4 00     .word $00D4
- D - - - 0x03FBB0 FF:FBA0: D8 00     .word $00D8
- D - - - 0x03FBB2 FF:FBA2: DB 00     .word $00DB
- D - - - 0x03FBB4 FF:FBA4: DE 00     .word $00DE
- D - - - 0x03FBB6 FF:FBA6: E1 00     .word $00E1
- D - - - 0x03FBB8 FF:FBA8: E4 00     .word $00E4
- D - - - 0x03FBBA FF:FBAA: E7 00     .word $00E7
- D - - - 0x03FBBC FF:FBAC: EA 00     .word $00EA
- D - - - 0x03FBBE FF:FBAE: EC 00     .word $00EC
- D - - - 0x03FBC0 FF:FBB0: EE 00     .word $00EE
- D - - - 0x03FBC2 FF:FBB2: F1 00     .word $00F1
- D - - - 0x03FBC4 FF:FBB4: F3 00     .word $00F3
- D - - - 0x03FBC6 FF:FBB6: F4 00     .word $00F4
- D - - - 0x03FBC8 FF:FBB8: F6 00     .word $00F6
- D - - - 0x03FBCA FF:FBBA: F8 00     .word $00F8
- D - - - 0x03FBCC FF:FBBC: F9 00     .word $00F9
- D - - - 0x03FBCE FF:FBBE: FB 00     .word $00FB
- D - - - 0x03FBD0 FF:FBC0: FC 00     .word $00FC
- D - - - 0x03FBD2 FF:FBC2: FD 00     .word $00FD
- D - - - 0x03FBD4 FF:FBC4: FE 00     .word $00FE
- D - - - 0x03FBD6 FF:FBC6: FE 00     .word $00FE
- D - - - 0x03FBD8 FF:FBC8: FF 00     .word $00FF
- D - - - 0x03FBDA FF:FBCA: 00 01     .word $0100

tbl_FBCC:
- D - I - 0x03FBDC FF:FBCC: 00        .byte $00
- D - I - 0x03FBDD FF:FBCD: 00        .byte $00
- D - I - 0x03FBDE FF:FBCE: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBDF FF:FBCF: 36        .byte $36    ; <3>
- D - I - 0x03FBE0 FF:FBD0: 25        .byte $25    ; <ゆ>
- D - I - 0x03FBE1 FF:FBD1: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBE2 FF:FBD2: 1A        .byte $1A    ; <は>
- D - I - 0x03FBE3 FF:FBD3: 00        .byte $00
- D - I - 0x03FBE4 FF:FBD4: 18        .byte $18    ; <ね>
- D - I - 0x03FBE5 FF:FBD5: 1A        .byte $1A    ; <は>
- D - I - 0x03FBE6 FF:FBD6: 18        .byte $18    ; <ね>
- D - I - 0x03FBE7 FF:FBD7: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBE8 FF:FBD8: 21        .byte $21    ; <む>
- D - I - 0x03FBE9 FF:FBD9: 10        .byte $10    ; <た>
- D - I - 0x03FBEA FF:FBDA: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBEB FF:FBDB: 36        .byte $36    ; <3>
- D - I - 0x03FBEC FF:FBDC: 25        .byte $25    ; <ゆ>
- D - I - 0x03FBED FF:FBDD: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBEE FF:FBDE: 19        .byte $19    ; <の>
- D - I - 0x03FBEF FF:FBDF: 00        .byte $00
- D - I - 0x03FBF0 FF:FBE0: 2A        .byte $2A    ; <れ>
- D - I - 0x03FBF1 FF:FBE1: 21        .byte $21    ; <む>
- D - I - 0x03FBF2 FF:FBE2: 3A        .byte $3A    ; <7>
- D - I - 0x03FBF3 FF:FBE3: 1A        .byte $1A    ; <は>
- D - I - 0x03FBF4 FF:FBE4: 1A        .byte $1A    ; <は>
- D - I - 0x03FBF5 FF:FBE5: 10        .byte $10    ; <た>
- D - I - 0x03FBF6 FF:FBE6: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBF7 FF:FBE7: 36        .byte $36    ; <3>
- D - I - 0x03FBF8 FF:FBE8: 25        .byte $25    ; <ゆ>
- D - I - 0x03FBF9 FF:FBE9: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBFA FF:FBEA: 21        .byte $21    ; <む>
- D - I - 0x03FBFB FF:FBEB: 31        .byte $31    ; <ゅ>
- D - I - 0x03FBFC FF:FBEC: 30        .byte $30    ; <ゃ>
- D - I - 0x03FBFD FF:FBED: 21        .byte $21    ; <む>
- D - I - 0x03FBFE FF:FBEE: 10        .byte $10    ; <た>
- D - I - 0x03FBFF FF:FBEF: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC00 FF:FBF0: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC01 FF:FBF1: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC02 FF:FBF2: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC03 FF:FBF3: 21        .byte $21    ; <む>
- D - I - 0x03FC04 FF:FBF4: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC05 FF:FBF5: 31        .byte $31    ; <ゅ>
- D - I - 0x03FC06 FF:FBF6: 21        .byte $21    ; <む>
- D - I - 0x03FC07 FF:FBF7: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC08 FF:FBF8: 37        .byte $37    ; <4>
- D - I - 0x03FC09 FF:FBF9: 21        .byte $21    ; <む>
- D - I - 0x03FC0A FF:FBFA: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC0B FF:FBFB: 37        .byte $37    ; <4>
- D - I - 0x03FC0C FF:FBFC: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC0D FF:FBFD: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC0E FF:FBFE: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC0F FF:FBFF: 21        .byte $21    ; <む>
- D - I - 0x03FC10 FF:FC00: 36        .byte $36    ; <3>
- D - I - 0x03FC11 FF:FC01: 27        .byte $27    ; <ら>
- D - I - 0x03FC12 FF:FC02: 21        .byte $21    ; <む>
- D - I - 0x03FC13 FF:FC03: 11        .byte $11    ; <ち>
- D - I - 0x03FC14 FF:FC04: 16        .byte $16    ; <に>
- D - I - 0x03FC15 FF:FC05: 21        .byte $21    ; <む>
- D - I - 0x03FC16 FF:FC06: 11        .byte $11    ; <ち>
- D - I - 0x03FC17 FF:FC07: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC18 FF:FC08: 36        .byte $36    ; <3>
- D - I - 0x03FC19 FF:FC09: 25        .byte $25    ; <ゆ>
- D - I - 0x03FC1A FF:FC0A: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC1B FF:FC0B: 21        .byte $21    ; <む>
- D - I - 0x03FC1C FF:FC0C: 27        .byte $27    ; <ら>
- D - I - 0x03FC1D FF:FC0D: 36        .byte $36    ; <3>
- D - I - 0x03FC1E FF:FC0E: 21        .byte $21    ; <む>
- D - I - 0x03FC1F FF:FC0F: 27        .byte $27    ; <ら>
- D - I - 0x03FC20 FF:FC10: 36        .byte $36    ; <3>
- D - I - 0x03FC21 FF:FC11: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC22 FF:FC12: 27        .byte $27    ; <ら>
- D - I - 0x03FC23 FF:FC13: 36        .byte $36    ; <3>
- D - I - 0x03FC24 FF:FC14: 1A        .byte $1A    ; <は>
- D - I - 0x03FC25 FF:FC15: 18        .byte $18    ; <ね>
- D - I - 0x03FC26 FF:FC16: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC27 FF:FC17: 36        .byte $36    ; <3>
- D - I - 0x03FC28 FF:FC18: 25        .byte $25    ; <ゆ>
- D - I - 0x03FC29 FF:FC19: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC2A FF:FC1A: 21        .byte $21    ; <む>
- D - I - 0x03FC2B FF:FC1B: 31        .byte $31    ; <ゅ>
- D - I - 0x03FC2C FF:FC1C: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC2D FF:FC1D: 3A        .byte $3A    ; <7>
- D - I - 0x03FC2E FF:FC1E: 1A        .byte $1A    ; <は>
- D - I - 0x03FC2F FF:FC1F: 1A        .byte $1A    ; <は>
- D - I - 0x03FC30 FF:FC20: 1A        .byte $1A    ; <は>
- D - I - 0x03FC31 FF:FC21: 10        .byte $10    ; <た>
- D - I - 0x03FC32 FF:FC22: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC33 FF:FC23: 36        .byte $36    ; <3>
- D - I - 0x03FC34 FF:FC24: 25        .byte $25    ; <ゆ>
- D - I - 0x03FC35 FF:FC25: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC36 FF:FC26: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC37 FF:FC27: 21        .byte $21    ; <む>
- D - I - 0x03FC38 FF:FC28: 07        .byte $07    ; <き>
- D - I - 0x03FC39 FF:FC29: 21        .byte $21    ; <む>
- D - I - 0x03FC3A FF:FC2A: 36        .byte $36    ; <3>
- D - I - 0x03FC3B FF:FC2B: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC3C FF:FC2C: 2A        .byte $2A    ; <れ>
- D - I - 0x03FC3D FF:FC2D: 10        .byte $10    ; <た>
- D - I - 0x03FC3E FF:FC2E: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC3F FF:FC2F: 36        .byte $36    ; <3>
- D - I - 0x03FC40 FF:FC30: 25        .byte $25    ; <ゆ>
- D - I - 0x03FC41 FF:FC31: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC42 FF:FC32: 36        .byte $36    ; <3>
- D - I - 0x03FC43 FF:FC33: 21        .byte $21    ; <む>
- D - I - 0x03FC44 FF:FC34: 07        .byte $07    ; <き>
- D - I - 0x03FC45 FF:FC35: 21        .byte $21    ; <む>
- D - I - 0x03FC46 FF:FC36: 36        .byte $36    ; <3>
- D - I - 0x03FC47 FF:FC37: 15        .byte $15    ; <な>
- D - I - 0x03FC48 FF:FC38: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC49 FF:FC39: 10        .byte $10    ; <た>
- D - I - 0x03FC4A FF:FC3A: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC4B FF:FC3B: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC4C FF:FC3C: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC4D FF:FC3D: 00        .byte $00
- D - I - 0x03FC4E FF:FC3E: 31        .byte $31    ; <ゅ>
- D - I - 0x03FC4F FF:FC3F: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC50 FF:FC40: 10        .byte $10    ; <た>
- D - I - 0x03FC51 FF:FC41: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC52 FF:FC42: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC53 FF:FC43: 00        .byte $00
- D - I - 0x03FC54 FF:FC44: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC55 FF:FC45: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC56 FF:FC46: 36        .byte $36    ; <3>
- D - I - 0x03FC57 FF:FC47: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC58 FF:FC48: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC59 FF:FC49: 36        .byte $36    ; <3>
- D - I - 0x03FC5A FF:FC4A: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC5B FF:FC4B: 17        .byte $17    ; <ぬ>
- D - I - 0x03FC5C FF:FC4C: 36        .byte $36    ; <3>
- D - I - 0x03FC5D FF:FC4D: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC5E FF:FC4E: 31        .byte $31    ; <ゅ>
- D - I - 0x03FC5F FF:FC4F: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC60 FF:FC50: 36        .byte $36    ; <3>
- D - I - 0x03FC61 FF:FC51: 31        .byte $31    ; <ゅ>
- D - I - 0x03FC62 FF:FC52: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC63 FF:FC53: 07        .byte $07    ; <き>
- D - I - 0x03FC64 FF:FC54: 18        .byte $18    ; <ね>
- D - I - 0x03FC65 FF:FC55: 28        .byte $28    ; <り>
- D - I - 0x03FC66 FF:FC56: 00        .byte $00
- D - I - 0x03FC67 FF:FC57: 00        .byte $00
- D - I - 0x03FC68 FF:FC58: 00        .byte $00
- D - I - 0x03FC69 FF:FC59: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC6A FF:FC5A: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC6B FF:FC5B: 11        .byte $11    ; <ち>
- D - I - 0x03FC6C FF:FC5C: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC6D FF:FC5D: 27        .byte $27    ; <ら>
- D - I - 0x03FC6E FF:FC5E: 36        .byte $36    ; <3>
- D - I - 0x03FC6F FF:FC5F: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC70 FF:FC60: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC71 FF:FC61: 31        .byte $31    ; <ゅ>
- D - I - 0x03FC72 FF:FC62: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC73 FF:FC63: 00        .byte $00
- D - I - 0x03FC74 FF:FC64: 00        .byte $00
- D - I - 0x03FC75 FF:FC65: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC76 FF:FC66: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC77 FF:FC67: 36        .byte $36    ; <3>
- D - I - 0x03FC78 FF:FC68: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC79 FF:FC69: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC7A FF:FC6A: 36        .byte $36    ; <3>
- D - I - 0x03FC7B FF:FC6B: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC7C FF:FC6C: 16        .byte $16    ; <に>
- D - I - 0x03FC7D FF:FC6D: 36        .byte $36    ; <3>
- D - I - 0x03FC7E FF:FC6E: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC7F FF:FC6F: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC80 FF:FC70: 36        .byte $36    ; <3>
- D - I - 0x03FC81 FF:FC71: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC82 FF:FC72: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC83 FF:FC73: 36        .byte $36    ; <3>
- D - I - 0x03FC84 FF:FC74: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC85 FF:FC75: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC86 FF:FC76: 36        .byte $36    ; <3>
- D - I - 0x03FC87 FF:FC77: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC88 FF:FC78: 19        .byte $19    ; <の>
- D - I - 0x03FC89 FF:FC79: 36        .byte $36    ; <3>
- D - I - 0x03FC8A FF:FC7A: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC8B FF:FC7B: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC8C FF:FC7C: 36        .byte $36    ; <3>
- D - I - 0x03FC8D FF:FC7D: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC8E FF:FC7E: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC8F FF:FC7F: 36        .byte $36    ; <3>
- D - I - 0x03FC90 FF:FC80: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC91 FF:FC81: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC92 FF:FC82: 36        .byte $36    ; <3>
- D - I - 0x03FC93 FF:FC83: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC94 FF:FC84: 16        .byte $16    ; <に>
- D - I - 0x03FC95 FF:FC85: 36        .byte $36    ; <3>
- D - I - 0x03FC96 FF:FC86: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC97 FF:FC87: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC98 FF:FC88: 36        .byte $36    ; <3>
- D - I - 0x03FC99 FF:FC89: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC9A FF:FC8A: 30        .byte $30    ; <ゃ>
- D - I - 0x03FC9B FF:FC8B: 36        .byte $36    ; <3>
- D - I - 0x03FC9C FF:FC8C: 0F        .byte $0F    ; <そ>
- D - I - 0x03FC9D FF:FC8D: 07        .byte $07    ; <き>
- D - I - 0x03FC9E FF:FC8E: 36        .byte $36    ; <3>
- D - I - 0x03FC9F FF:FC8F: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCA0 FF:FC90: 16        .byte $16    ; <に>
- D - I - 0x03FCA1 FF:FC91: 36        .byte $36    ; <3>
- D - I - 0x03FCA2 FF:FC92: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCA3 FF:FC93: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCA4 FF:FC94: 36        .byte $36    ; <3>
- D - I - 0x03FCA5 FF:FC95: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCA6 FF:FC96: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCA7 FF:FC97: 36        .byte $36    ; <3>
- D - I - 0x03FCA8 FF:FC98: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCA9 FF:FC99: 00        .byte $00
- D - I - 0x03FCAA FF:FC9A: 36        .byte $36    ; <3>
- D - I - 0x03FCAB FF:FC9B: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCAC FF:FC9C: 16        .byte $16    ; <に>
- D - I - 0x03FCAD FF:FC9D: 36        .byte $36    ; <3>
- D - I - 0x03FCAE FF:FC9E: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCAF FF:FC9F: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCB0 FF:FCA0: 36        .byte $36    ; <3>
- D - I - 0x03FCB1 FF:FCA1: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCB2 FF:FCA2: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCB3 FF:FCA3: 36        .byte $36    ; <3>
- D - I - 0x03FCB4 FF:FCA4: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCB5 FF:FCA5: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCB6 FF:FCA6: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCB7 FF:FCA7: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCB8 FF:FCA8: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCB9 FF:FCA9: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCBA FF:FCAA: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCBB FF:FCAB: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCBC FF:FCAC: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCBD FF:FCAD: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCBE FF:FCAE: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCBF FF:FCAF: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCC0 FF:FCB0: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCC1 FF:FCB1: 26        .byte $26    ; <よ>
- D - I - 0x03FCC2 FF:FCB2: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCC3 FF:FCB3: 26        .byte $26    ; <よ>
- D - I - 0x03FCC4 FF:FCB4: 25        .byte $25    ; <ゆ>
- D - I - 0x03FCC5 FF:FCB5: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCC6 FF:FCB6: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCC7 FF:FCB7: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCC8 FF:FCB8: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCC9 FF:FCB9: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCCA FF:FCBA: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCCB FF:FCBB: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCCC FF:FCBC: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCCD FF:FCBD: 27        .byte $27    ; <ら>
- D - I - 0x03FCCE FF:FCBE: 36        .byte $36    ; <3>
- D - I - 0x03FCCF FF:FCBF: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCD0 FF:FCC0: 31        .byte $31    ; <ゅ>
- D - I - 0x03FCD1 FF:FCC1: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCD2 FF:FCC2: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCD3 FF:FCC3: 31        .byte $31    ; <ゅ>
- D - I - 0x03FCD4 FF:FCC4: 27        .byte $27    ; <ら>
- D - I - 0x03FCD5 FF:FCC5: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCD6 FF:FCC6: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCD7 FF:FCC7: 36        .byte $36    ; <3>
- D - I - 0x03FCD8 FF:FCC8: 05        .byte $05    ; <お>
- D - I - 0x03FCD9 FF:FCC9: 16        .byte $16    ; <に>
- D - I - 0x03FCDA FF:FCCA: 15        .byte $15    ; <な>
- D - I - 0x03FCDB FF:FCCB: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCDC FF:FCCC: 27        .byte $27    ; <ら>
- D - I - 0x03FCDD FF:FCCD: 37        .byte $37    ; <4>
- D - I - 0x03FCDE FF:FCCE: 10        .byte $10    ; <た>
- D - I - 0x03FCDF FF:FCCF: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCE0 FF:FCD0: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCE1 FF:FCD1: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCE2 FF:FCD2: 00        .byte $00
- D - I - 0x03FCE3 FF:FCD3: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCE4 FF:FCD4: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCE5 FF:FCD5: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCE6 FF:FCD6: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCE7 FF:FCD7: 36        .byte $36    ; <3>
- D - I - 0x03FCE8 FF:FCD8: 25        .byte $25    ; <ゆ>
- D - I - 0x03FCE9 FF:FCD9: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCEA FF:FCDA: 11        .byte $11    ; <ち>
- D - I - 0x03FCEB FF:FCDB: 00        .byte $00
- D - I - 0x03FCEC FF:FCDC: 30        .byte $30    ; <ゃ>
- D - I - 0x03FCED FF:FCDD: 0F        .byte $0F    ; <そ>
- D - I - 0x03FCEE FF:FCDE: 15        .byte $15    ; <な>
- D - I - 0x03FCEF FF:FCDF: 25        .byte $25    ; <ゆ>
- - - - - 0x03FCF0 FF:FCE0: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCF1 FF:FCE1: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCF2 FF:FCE2: 35        .byte $35    ; <2>
- - - - - 0x03FCF3 FF:FCE3: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCF4 FF:FCE4: 31        .byte $31    ; <ゅ>
- - - - - 0x03FCF5 FF:FCE5: 35        .byte $35    ; <2>
- - - - - 0x03FCF6 FF:FCE6: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCF7 FF:FCE7: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCF8 FF:FCE8: 35        .byte $35    ; <2>
- - - - - 0x03FCF9 FF:FCE9: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCFA FF:FCEA: 30        .byte $30    ; <ゃ>
- - - - - 0x03FCFB FF:FCEB: 35        .byte $35    ; <2>
- - - - - 0x03FCFC FF:FCEC: 0F        .byte $0F    ; <そ>
- - - - - 0x03FCFD FF:FCED: 16        .byte $16    ; <に>
- - - - - 0x03FCFE FF:FCEE: 35        .byte $35    ; <2>
- - - - - 0x03FCFF FF:FCEF: 0F        .byte $0F    ; <そ>
- - - - - 0x03FD00 FF:FCF0: 31        .byte $31    ; <ゅ>
- - - - - 0x03FD01 FF:FCF1: 35        .byte $35    ; <2>
- - - - - 0x03FD02 FF:FCF2: 0F        .byte $0F    ; <そ>
- - - - - 0x03FD03 FF:FCF3: 0F        .byte $0F    ; <そ>
- - - - - 0x03FD04 FF:FCF4: 35        .byte $35    ; <2>
- - - - - 0x03FD05 FF:FCF5: 0F        .byte $0F    ; <そ>
- - - - - 0x03FD06 FF:FCF6: 30        .byte $30    ; <ゃ>
- - - - - 0x03FD07 FF:FCF7: 35        .byte $35    ; <2>
- - - - - 0x03FD08 FF:FCF8: 21        .byte $21    ; <む>
- - - - - 0x03FD09 FF:FCF9: 0F        .byte $0F    ; <そ>
- - - - - 0x03FD0A FF:FCFA: 30        .byte $30    ; <ゃ>
- - - - - 0x03FD0B FF:FCFB: 21        .byte $21    ; <む>
- - - - - 0x03FD0C FF:FCFC: 36        .byte $36    ; <3>
- - - - - 0x03FD0D FF:FCFD: 27        .byte $27    ; <ら>
- - - - - 0x03FD0E FF:FCFE: 21        .byte $21    ; <む>
- - - - - 0x03FD0F FF:FCFF: 16        .byte $16    ; <に>
- - - - - 0x03FD10 FF:FD00: 16        .byte $16    ; <に>
- - - - - 0x03FD11 FF:FD01: 21        .byte $21    ; <む>
- - - - - 0x03FD12 FF:FD02: 16        .byte $16    ; <に>
- - - - - 0x03FD13 FF:FD03: 30        .byte $30    ; <ゃ>
- D - I - 0x03FD14 FF:FD04: 0F        .byte $0F    ; <そ>
- D - I - 0x03FD15 FF:FD05: 36        .byte $36    ; <3>
- D - I - 0x03FD16 FF:FD06: 27        .byte $27    ; <ら>
- D - I - 0x03FD17 FF:FD07: 0F        .byte $0F    ; <そ>
- D - I - 0x03FD18 FF:FD08: 0F        .byte $0F    ; <そ>
- D - I - 0x03FD19 FF:FD09: 27        .byte $27    ; <ら>
- D - I - 0x03FD1A FF:FD0A: 0F        .byte $0F    ; <そ>
- D - I - 0x03FD1B FF:FD0B: 30        .byte $30    ; <ゃ>
- D - I - 0x03FD1C FF:FD0C: 0F        .byte $0F    ; <そ>
- D - I - 0x03FD1D FF:FD0D: 0F        .byte $0F    ; <そ>
- D - I - 0x03FD1E FF:FD0E: 36        .byte $36    ; <3>
- D - I - 0x03FD1F FF:FD0F: 30        .byte $30    ; <ゃ>



.export _общий_RTS
_общий_RTS:
                    RTS

.segment "MMC5_INIT"
@подготовка_mmc5:
                    LDA #$03
                    STA $5100
                    STA $5101
                    LDX #$02
                    STX $5104
                    STX $5102
                    DEX
                    STX $5103
                    LDA #$BE
                    STA $5116
                    LDY #$00
                    STY ram_0000
                    STY ram_0002
                    LDA #$C0
                    STA ram_0001
                    LDA #$60
                    STA ram_0003
                    LDX #$1F
@цикл_копирования_на_батарейку:
                    LDA (ram_0000),Y
                    STA (ram_0002),Y
                    INY
                    BNE @цикл_копирования_на_батарейку
                    INC ram_0001
                    INC ram_0003
                    DEX
                    BPL @цикл_копирования_на_батарейку
                    JMP vec_FFF0_обработчик_RESET

.segment "VECTORS"
    .word vec_C500_обработчик_NMI
    .word @подготовка_mmc5
    .word vec_C506_обработчик_IRQ
