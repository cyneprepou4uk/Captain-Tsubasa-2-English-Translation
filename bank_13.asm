.segment "BANK_13"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; в середине есть немного кода начиная с 0x027010, используется при отображении финальных титров после самолета



.export loc_0x027010
.export tbl_0x02745E_финальная_надпись_TECMO



; поинтеры в 0x01667A (старший байт A0)
- D - - - - 0x026010 19:A000: 00        .byte $00
- D - I - - 0x026011 19:A001: 00        .byte $00
- D - I - - 0x026012 19:A002: 00        .byte $00
- D - I - - 0x026013 19:A003: 00        .byte $00
- D - I - - 0x026014 19:A004: 00        .byte $00
- D - I - - 0x026015 19:A005: 00        .byte $00
- D - I - - 0x026016 19:A006: 00        .byte $00
- D - I - - 0x026017 19:A007: 00        .byte $00
- D - I - - 0x026018 19:A008: 00        .byte $00
- D - I - - 0x026019 19:A009: 00        .byte $00
- D - I - - 0x02601A 19:A00A: 00        .byte $00
- D - I - - 0x02601B 19:A00B: 00        .byte $00
- D - I - - 0x02601C 19:A00C: 00        .byte $00
- D - I - - 0x02601D 19:A00D: 00        .byte $00
- D - I - - 0x02601E 19:A00E: 00        .byte $00
- D - I - - 0x02601F 19:A00F: 00        .byte $00
- D - I - - 0x026020 19:A010: 01        .byte $01    ; <あ>
- D - I - - 0x026021 19:A011: 01        .byte $01    ; <あ>
- D - I - - 0x026022 19:A012: 01        .byte $01    ; <あ>
- D - I - - 0x026023 19:A013: 01        .byte $01    ; <あ>
- D - I - - 0x026024 19:A014: 01        .byte $01    ; <あ>
- D - I - - 0x026025 19:A015: 01        .byte $01    ; <あ>
- D - I - - 0x026026 19:A016: 01        .byte $01    ; <あ>
- D - I - - 0x026027 19:A017: 01        .byte $01    ; <あ>
- D - I - - 0x026028 19:A018: 01        .byte $01    ; <あ>
- D - I - - 0x026029 19:A019: 01        .byte $01    ; <あ>
- D - I - - 0x02602A 19:A01A: 01        .byte $01    ; <あ>
- D - I - - 0x02602B 19:A01B: 01        .byte $01    ; <あ>
- D - I - - 0x02602C 19:A01C: 01        .byte $01    ; <あ>
- D - I - - 0x02602D 19:A01D: 01        .byte $01    ; <あ>
- D - I - - 0x02602E 19:A01E: 01        .byte $01    ; <あ>
- D - I - - 0x02602F 19:A01F: 01        .byte $01    ; <あ>
- D - I - - 0x026030 19:A020: 01        .byte $01    ; <あ>
- D - I - - 0x026031 19:A021: 01        .byte $01    ; <あ>
- D - I - - 0x026032 19:A022: 5F        .byte $5F    ; <マ>
- D - I - - 0x026033 19:A023: 75        .byte $75    ; <ェ>
- D - I - - 0x026034 19:A024: 01        .byte $01    ; <あ>
- D - I - - 0x026035 19:A025: 01        .byte $01    ; <あ>
- D - I - - 0x026036 19:A026: 5F        .byte $5F    ; <マ>
- D - I - - 0x026037 19:A027: 75        .byte $75    ; <ェ>
- D - I - - 0x026038 19:A028: 01        .byte $01    ; <あ>
- D - I - - 0x026039 19:A029: 01        .byte $01    ; <あ>
- D - I - - 0x02603A 19:A02A: 5F        .byte $5F    ; <マ>
- D - I - - 0x02603B 19:A02B: 75        .byte $75    ; <ェ>
- D - I - - 0x02603C 19:A02C: 01        .byte $01    ; <あ>
- D - I - - 0x02603D 19:A02D: 01        .byte $01    ; <あ>
- D - I - - 0x02603E 19:A02E: 5F        .byte $5F    ; <マ>
- D - I - - 0x02603F 19:A02F: 75        .byte $75    ; <ェ>
- D - I - - 0x026040 19:A030: 77        .byte $77    ; <:>
- D - I - - 0x026041 19:A031: 7D        .byte $7D    ; <ー>
- D - I - - 0x026042 19:A032: 77        .byte $77    ; <:>
- D - I - - 0x026043 19:A033: 7D        .byte $7D    ; <ー>
- D - I - - 0x026044 19:A034: 7D        .byte $7D    ; <ー>
- D - I - - 0x026045 19:A035: 77        .byte $77    ; <:>
- D - I - - 0x026046 19:A036: 7D        .byte $7D    ; <ー>
- D - I - - 0x026047 19:A037: 77        .byte $77    ; <:>
- D - I - - 0x026048 19:A038: 77        .byte $77    ; <:>
- D - I - - 0x026049 19:A039: 7D        .byte $7D    ; <ー>
- D - I - - 0x02604A 19:A03A: 77        .byte $77    ; <:>
- D - I - - 0x02604B 19:A03B: 7D        .byte $7D    ; <ー>
- D - I - - 0x02604C 19:A03C: 7D        .byte $7D    ; <ー>
- D - I - - 0x02604D 19:A03D: 77        .byte $77    ; <:>
- D - I - - 0x02604E 19:A03E: 7D        .byte $7D    ; <ー>
- D - I - - 0x02604F 19:A03F: 77        .byte $77    ; <:>
- D - I - - 0x026050 19:A040: 7E        .byte $7E    ; <.>
- D - I - - 0x026051 19:A041: 7C        .byte $7C    ; <~>
- D - I - - 0x026052 19:A042: 7E        .byte $7E    ; <.>
- D - I - - 0x026053 19:A043: 7C        .byte $7C    ; <~>
- D - I - - 0x026054 19:A044: 7C        .byte $7C    ; <~>
- D - I - - 0x026055 19:A045: 7E        .byte $7E    ; <.>
- D - I - - 0x026056 19:A046: 7C        .byte $7C    ; <~>
- D - I - - 0x026057 19:A047: 7E        .byte $7E    ; <.>
- D - I - - 0x026058 19:A048: 7E        .byte $7E    ; <.>
- D - I - - 0x026059 19:A049: 7C        .byte $7C    ; <~>
- D - I - - 0x02605A 19:A04A: 7E        .byte $7E    ; <.>
- D - I - - 0x02605B 19:A04B: 7C        .byte $7C    ; <~>
- D - I - - 0x02605C 19:A04C: 7C        .byte $7C    ; <~>
- D - I - - 0x02605D 19:A04D: 7E        .byte $7E    ; <.>
- D - I - - 0x02605E 19:A04E: 7C        .byte $7C    ; <~>
- D - I - - 0x02605F 19:A04F: 7E        .byte $7E    ; <.>
- D - I - - 0x026060 19:A050: 76        .byte $76    ; <ォ>
- D - I - - 0x026061 19:A051: 74        .byte $74    ; <ィ>
- D - I - - 0x026062 19:A052: 01        .byte $01    ; <あ>
- D - I - - 0x026063 19:A053: 01        .byte $01    ; <あ>
- D - I - - 0x026064 19:A054: 76        .byte $76    ; <ォ>
- D - I - - 0x026065 19:A055: 74        .byte $74    ; <ィ>
- D - I - - 0x026066 19:A056: 01        .byte $01    ; <あ>
- D - I - - 0x026067 19:A057: 01        .byte $01    ; <あ>
- D - I - - 0x026068 19:A058: 76        .byte $76    ; <ォ>
- D - I - - 0x026069 19:A059: 74        .byte $74    ; <ィ>
- D - I - - 0x02606A 19:A05A: 01        .byte $01    ; <あ>
- D - I - - 0x02606B 19:A05B: 01        .byte $01    ; <あ>
- D - I - - 0x02606C 19:A05C: 76        .byte $76    ; <ォ>
- D - I - - 0x02606D 19:A05D: 74        .byte $74    ; <ィ>
- D - I - - 0x02606E 19:A05E: 01        .byte $01    ; <あ>
- D - I - - 0x02606F 19:A05F: 01        .byte $01    ; <あ>
- D - I - - 0x026070 19:A060: 01        .byte $01    ; <あ>
- D - I - - 0x026071 19:A061: 01        .byte $01    ; <あ>
- D - I - - 0x026072 19:A062: C0        .byte $C0    ; <ヅ>
- D - I - - 0x026073 19:A063: 00        .byte $00
- D - I - - 0x026074 19:A064: 01        .byte $01    ; <あ>
- D - I - - 0x026075 19:A065: 01        .byte $01    ; <あ>
- D - I - - 0x026076 19:A066: 01        .byte $01    ; <あ>
- D - I - - 0x026077 19:A067: 83        .byte $83    ; <C>
- D - I - - 0x026078 19:A068: 01        .byte $01    ; <あ>
- D - I - - 0x026079 19:A069: 01        .byte $01    ; <あ>
- D - I - - 0x02607A 19:A06A: 01        .byte $01    ; <あ>
- D - I - - 0x02607B 19:A06B: 01        .byte $01    ; <あ>
- D - I - - 0x02607C 19:A06C: 01        .byte $01    ; <あ>
- D - I - - 0x02607D 19:A06D: 01        .byte $01    ; <あ>
- D - I - - 0x02607E 19:A06E: 01        .byte $01    ; <あ>
- D - I - - 0x02607F 19:A06F: 01        .byte $01    ; <あ>
- D - I - - 0x026080 19:A070: 84        .byte $84    ; <D>
- D - I - - 0x026081 19:A071: 85        .byte $85    ; <E>
- D - I - - 0x026082 19:A072: 90        .byte $90    ; <U>
- D - I - - 0x026083 19:A073: 91        .byte $91    ; <V>
- D - I - - 0x026084 19:A074: 86        .byte $86    ; <F>
- D - I - - 0x026085 19:A075: 87        .byte $87    ; <G>
- D - I - - 0x026086 19:A076: 92        .byte $92    ; <W>
- D - I - - 0x026087 19:A077: 93        .byte $93    ; <Y>
- D - I - - 0x026088 19:A078: 8C        .byte $8C    ; <M>
- D - I - - 0x026089 19:A079: 8D        .byte $8D    ; <P>
- D - I - - 0x02608A 19:A07A: 98        .byte $98
- D - I - - 0x02608B 19:A07B: 99        .byte $99
- D - I - - 0x02608C 19:A07C: 8E        .byte $8E    ; <L>
- D - I - - 0x02608D 19:A07D: 8F        .byte $8F    ; <S>
- D - I - - 0x02608E 19:A07E: 9A        .byte $9A
- D - I - - 0x02608F 19:A07F: 9B        .byte $9B
- D - I - - 0x026090 19:A080: 94        .byte $94
- D - I - - 0x026091 19:A081: 95        .byte $95
- D - I - - 0x026092 19:A082: C2        .byte $C2    ; <ド>
- D - I - - 0x026093 19:A083: C1        .byte $C1    ; <デ>
- D - I - - 0x026094 19:A084: 96        .byte $96
- D - I - - 0x026095 19:A085: C2        .byte $C2    ; <ド>
- D - I - - 0x026096 19:A086: C2        .byte $C2    ; <ド>
- D - I - - 0x026097 19:A087: C1        .byte $C1    ; <デ>
- D - I - - 0x026098 19:A088: 99        .byte $99
- D - I - - 0x026099 19:A089: 9D        .byte $9D
- D - I - - 0x02609A 19:A08A: 9D        .byte $9D
- D - I - - 0x02609B 19:A08B: C9        .byte $C9    ; <ぴ>
- D - I - - 0x02609C 19:A08C: 9B        .byte $9B
- D - I - - 0x02609D 19:A08D: 9F        .byte $9F
- D - I - - 0x02609E 19:A08E: CA        .byte $CA    ; <ぷ>
- D - I - - 0x02609F 19:A08F: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0260A0 19:A090: 01        .byte $01    ; <あ>
- D - I - - 0x0260A1 19:A091: A5        .byte $A5    ; <ざ>
- D - I - - 0x0260A2 19:A092: B0        .byte $B0    ; <び>
- D - I - - 0x0260A3 19:A093: B1        .byte $B1    ; <ぶ>
- D - I - - 0x0260A4 19:A094: 01        .byte $01    ; <あ>
- D - I - - 0x0260A5 19:A095: 01        .byte $01    ; <あ>
- D - I - - 0x0260A6 19:A096: B2        .byte $B2    ; <べ>
- D - I - - 0x0260A7 19:A097: B3        .byte $B3    ; <ぼ>
- D - I - - 0x0260A8 19:A098: 01        .byte $01    ; <あ>
- D - I - - 0x0260A9 19:A099: 01        .byte $01    ; <あ>
- D - I - - 0x0260AA 19:A09A: 01        .byte $01    ; <あ>
- D - I - - 0x0260AB 19:A09B: B9        .byte $B9    ; <ザ>
- D - I - - 0x0260AC 19:A09C: 01        .byte $01    ; <あ>
- D - I - - 0x0260AD 19:A09D: 01        .byte $01    ; <あ>
- D - I - - 0x0260AE 19:A09E: 01        .byte $01    ; <あ>
- D - I - - 0x0260AF 19:A09F: 01        .byte $01    ; <あ>
- D - I - - 0x0260B0 19:A0A0: B4        .byte $B4    ; <ガ>
- D - I - - 0x0260B1 19:A0A1: B5        .byte $B5    ; <ギ>
- D - I - - 0x0260B2 19:A0A2: E0        .byte $E0
- D - I - - 0x0260B3 19:A0A3: E1        .byte $E1
- D - I - - 0x0260B4 19:A0A4: B6        .byte $B6    ; <グ>
- D - I - - 0x0260B5 19:A0A5: B7        .byte $B7    ; <ゲ>
- D - I - - 0x0260B6 19:A0A6: E2        .byte $E2
- D - I - - 0x0260B7 19:A0A7: E3        .byte $E3
- D - I - - 0x0260B8 19:A0A8: BC        .byte $BC    ; <ゼ>
- D - I - - 0x0260B9 19:A0A9: BD        .byte $BD    ; <ゾ>
- D - I - - 0x0260BA 19:A0AA: E8        .byte $E8
- D - I - - 0x0260BB 19:A0AB: E9        .byte $E9
- D - I - - 0x0260BC 19:A0AC: BE        .byte $BE    ; <ダ>
- D - I - - 0x0260BD 19:A0AD: BF        .byte $BF    ; <ヂ>
- D - I - - 0x0260BE 19:A0AE: EA        .byte $EA
- D - I - - 0x0260BF 19:A0AF: EB        .byte $EB
- D - I - - 0x0260C0 19:A0B0: 97        .byte $97
- D - I - - 0x0260C1 19:A0B1: C3        .byte $C3    ; <バ>
- D - I - - 0x0260C2 19:A0B2: 9C        .byte $9C
- D - I - - 0x0260C3 19:A0B3: 9C        .byte $9C
- D - I - - 0x0260C4 19:A0B4: 97        .byte $97
- D - I - - 0x0260C5 19:A0B5: C3        .byte $C3    ; <バ>
- D - I - - 0x0260C6 19:A0B6: 9C        .byte $9C
- D - I - - 0x0260C7 19:A0B7: 9C        .byte $9C
- D - I - - 0x0260C8 19:A0B8: 97        .byte $97
- D - I - - 0x0260C9 19:A0B9: C3        .byte $C3    ; <バ>
- D - I - - 0x0260CA 19:A0BA: 9C        .byte $9C
- D - I - - 0x0260CB 19:A0BB: 9C        .byte $9C
- D - I - - 0x0260CC 19:A0BC: BA        .byte $BA    ; <ジ>
- D - I - - 0x0260CD 19:A0BD: BB        .byte $BB    ; <ズ>
- D - I - - 0x0260CE 19:A0BE: BB        .byte $BB    ; <ズ>
- D - I - - 0x0260CF 19:A0BF: BB        .byte $BB    ; <ズ>
- D - I - - 0x0260D0 19:A0C0: C8        .byte $C8    ; <ぱ>
- D - I - - 0x0260D1 19:A0C1: 82        .byte $82    ; <B>
- D - I - - 0x0260D2 19:A0C2: 8A        .byte $8A    ; <N>
- D - I - - 0x0260D3 19:A0C3: 8A        .byte $8A    ; <N>
- D - I - - 0x0260D4 19:A0C4: 9E        .byte $9E
- D - I - - 0x0260D5 19:A0C5: 88        .byte $88    ; <H>
- D - I - - 0x0260D6 19:A0C6: A0        .byte $A0    ; <が>
- D - I - - 0x0260D7 19:A0C7: A0        .byte $A0    ; <が>
- D - I - - 0x0260D8 19:A0C8: 00        .byte $00
- D - I - - 0x0260D9 19:A0C9: 00        .byte $00
- D - I - - 0x0260DA 19:A0CA: 00        .byte $00
- D - I - - 0x0260DB 19:A0CB: 00        .byte $00
- D - I - - 0x0260DC 19:A0CC: 00        .byte $00
- D - I - - 0x0260DD 19:A0CD: 00        .byte $00
- D - I - - 0x0260DE 19:A0CE: 00        .byte $00
- D - I - - 0x0260DF 19:A0CF: 00        .byte $00
- D - I - - 0x0260E0 19:A0D0: C4        .byte $C4    ; <ビ>
- D - I - - 0x0260E1 19:A0D1: C5        .byte $C5    ; <ブ>
- D - I - - 0x0260E2 19:A0D2: D0        .byte $D0    ; <ペ>
- D - I - - 0x0260E3 19:A0D3: D1        .byte $D1    ; <ポ>
- D - I - - 0x0260E4 19:A0D4: C4        .byte $C4    ; <ビ>
- D - I - - 0x0260E5 19:A0D5: C5        .byte $C5    ; <ブ>
- D - I - - 0x0260E6 19:A0D6: C5        .byte $C5    ; <ブ>
- D - I - - 0x0260E7 19:A0D7: D3        .byte $D3
- D - I - - 0x0260E8 19:A0D8: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0260E9 19:A0D9: CD        .byte $CD    ; <パ>
- D - I - - 0x0260EA 19:A0DA: CD        .byte $CD    ; <パ>
- D - I - - 0x0260EB 19:A0DB: D9        .byte $D9
- D - I - - 0x0260EC 19:A0DC: CE        .byte $CE    ; <ピ>
- D - I - - 0x0260ED 19:A0DD: CF        .byte $CF    ; <プ>
- D - I - - 0x0260EE 19:A0DE: DA        .byte $DA
- D - I - - 0x0260EF 19:A0DF: DB        .byte $DB
- D - I - - 0x0260F0 19:A0E0: D4        .byte $D4
- D - I - - 0x0260F1 19:A0E1: D5        .byte $D5
- D - I - - 0x0260F2 19:A0E2: 89        .byte $89    ; <I>
- D - I - - 0x0260F3 19:A0E3: 8B        .byte $8B    ; <K>
- D - I - - 0x0260F4 19:A0E4: D6        .byte $D6
- D - I - - 0x0260F5 19:A0E5: D7        .byte $D7
- D - I - - 0x0260F6 19:A0E6: A4        .byte $A4    ; <ご>
- D - I - - 0x0260F7 19:A0E7: A2        .byte $A2    ; <ぐ>
- D - I - - 0x0260F8 19:A0E8: D9        .byte $D9
- D - I - - 0x0260F9 19:A0E9: DD        .byte $DD
- D - I - - 0x0260FA 19:A0EA: A6        .byte $A6    ; <じ>
- D - I - - 0x0260FB 19:A0EB: A7        .byte $A7    ; <ず>
- D - I - - 0x0260FC 19:A0EC: DB        .byte $DB
- D - I - - 0x0260FD 19:A0ED: DF        .byte $DF
- D - I - - 0x0260FE 19:A0EE: A8        .byte $A8    ; <ぜ>
- D - I - - 0x0260FF 19:A0EF: A9        .byte $A9    ; <ぞ>
- D - I - - 0x026100 19:A0F0: 00        .byte $00
- D - I - - 0x026101 19:A0F1: A1        .byte $A1    ; <ぎ>
- D - I - - 0x026102 19:A0F2: 01        .byte $01    ; <あ>
- D - I - - 0x026103 19:A0F3: 01        .byte $01    ; <あ>
- D - I - - 0x026104 19:A0F4: A3        .byte $A3    ; <げ>
- D - I - - 0x026105 19:A0F5: 01        .byte $01    ; <あ>
- D - I - - 0x026106 19:A0F6: 01        .byte $01    ; <あ>
- D - I - - 0x026107 19:A0F7: 01        .byte $01    ; <あ>
- D - I - - 0x026108 19:A0F8: 01        .byte $01    ; <あ>
- D - I - - 0x026109 19:A0F9: 01        .byte $01    ; <あ>
- D - I - - 0x02610A 19:A0FA: 01        .byte $01    ; <あ>
- D - I - - 0x02610B 19:A0FB: 01        .byte $01    ; <あ>
- D - I - - 0x02610C 19:A0FC: 01        .byte $01    ; <あ>
- D - I - - 0x02610D 19:A0FD: 01        .byte $01    ; <あ>
- D - I - - 0x02610E 19:A0FE: 01        .byte $01    ; <あ>
- D - I - - 0x02610F 19:A0FF: 01        .byte $01    ; <あ>
- D - I - - 0x026110 19:A100: 01        .byte $01    ; <あ>
- D - I - - 0x026111 19:A101: 01        .byte $01    ; <あ>
- D - I - - 0x026112 19:A102: 01        .byte $01    ; <あ>
- D - I - - 0x026113 19:A103: 01        .byte $01    ; <あ>
- D - I - - 0x026114 19:A104: 01        .byte $01    ; <あ>
- D - I - - 0x026115 19:A105: 01        .byte $01    ; <あ>
- D - I - - 0x026116 19:A106: 01        .byte $01    ; <あ>
- D - I - - 0x026117 19:A107: 01        .byte $01    ; <あ>
- D - I - - 0x026118 19:A108: 01        .byte $01    ; <あ>
- D - I - - 0x026119 19:A109: 01        .byte $01    ; <あ>
- D - I - - 0x02611A 19:A10A: 01        .byte $01    ; <あ>
- D - I - - 0x02611B 19:A10B: 01        .byte $01    ; <あ>
- D - I - - 0x02611C 19:A10C: 0D        .byte $0D    ; <す>
- D - I - - 0x02611D 19:A10D: 0D        .byte $0D    ; <す>
- D - I - - 0x02611E 19:A10E: 0D        .byte $0D    ; <す>
- D - I - - 0x02611F 19:A10F: 0D        .byte $0D    ; <す>
- D - I - - 0x026120 19:A110: 11        .byte $11    ; <ち>
- D - I - - 0x026121 19:A111: 10        .byte $10    ; <た>
- D - I - - 0x026122 19:A112: 3C        .byte $3C    ; <9>
- D - I - - 0x026123 19:A113: 18        .byte $18    ; <ね>
- D - I - - 0x026124 19:A114: 13        .byte $13    ; <て>
- D - I - - 0x026125 19:A115: 12        .byte $12    ; <つ>
- D - I - - 0x026126 19:A116: 0A        .byte $0A    ; <こ>
- D - I - - 0x026127 19:A117: 0B        .byte $0B    ; <さ>
- D - I - - 0x026128 19:A118: 00        .byte $00
- D - I - - 0x026129 19:A119: 00        .byte $00
- D - I - - 0x02612A 19:A11A: 00        .byte $00
- D - I - - 0x02612B 19:A11B: 00        .byte $00
- D - I - - 0x02612C 19:A11C: 00        .byte $00
- D - I - - 0x02612D 19:A11D: 00        .byte $00
- D - I - - 0x02612E 19:A11E: 00        .byte $00
- D - I - - 0x02612F 19:A11F: 00        .byte $00
- D - I - - 0x026130 19:A120: 19        .byte $19    ; <の>
- D - I - - 0x026131 19:A121: 10        .byte $10    ; <た>
- D - I - - 0x026132 19:A122: 3C        .byte $3C    ; <9>
- D - I - - 0x026133 19:A123: 10        .byte $10    ; <た>
- D - I - - 0x026134 19:A124: 0E        .byte $0E    ; <せ>
- D - I - - 0x026135 19:A125: 12        .byte $12    ; <つ>
- D - I - - 0x026136 19:A126: 0A        .byte $0A    ; <こ>
- D - I - - 0x026137 19:A127: 12        .byte $12    ; <つ>
- D - I - - 0x026138 19:A128: 00        .byte $00
- D - I - - 0x026139 19:A129: 00        .byte $00
- D - I - - 0x02613A 19:A12A: 00        .byte $00
- D - I - - 0x02613B 19:A12B: 00        .byte $00
- D - I - - 0x02613C 19:A12C: 00        .byte $00
- D - I - - 0x02613D 19:A12D: 00        .byte $00
- D - I - - 0x02613E 19:A12E: 00        .byte $00
- D - I - - 0x02613F 19:A12F: 00        .byte $00
- D - I - - 0x026140 19:A130: 3C        .byte $3C    ; <9>
- D - I - - 0x026141 19:A131: 3C        .byte $3C    ; <9>
- D - I - - 0x026142 19:A132: 18        .byte $18    ; <ね>
- D - I - - 0x026143 19:A133: 19        .byte $19    ; <の>
- D - I - - 0x026144 19:A134: 0A        .byte $0A    ; <こ>
- D - I - - 0x026145 19:A135: 12        .byte $12    ; <つ>
- D - I - - 0x026146 19:A136: 0B        .byte $0B    ; <さ>
- D - I - - 0x026147 19:A137: 0E        .byte $0E    ; <せ>
- D - I - - 0x026148 19:A138: 18        .byte $18    ; <ね>
- D - I - - 0x026149 19:A139: 19        .byte $19    ; <の>
- D - I - - 0x02614A 19:A13A: 3C        .byte $3C    ; <9>
- D - I - - 0x02614B 19:A13B: 10        .byte $10    ; <た>
- D - I - - 0x02614C 19:A13C: 0B        .byte $0B    ; <さ>
- D - I - - 0x02614D 19:A13D: 0E        .byte $0E    ; <せ>
- D - I - - 0x02614E 19:A13E: 12        .byte $12    ; <つ>
- D - I - - 0x02614F 19:A13F: 0A        .byte $0A    ; <こ>
- D - I - - 0x026150 19:A140: 3C        .byte $3C    ; <9>
- D - I - - 0x026151 19:A141: 3C        .byte $3C    ; <9>
- D - I - - 0x026152 19:A142: 10        .byte $10    ; <た>
- D - I - - 0x026153 19:A143: 11        .byte $11    ; <ち>
- D - I - - 0x026154 19:A144: 12        .byte $12    ; <つ>
- D - I - - 0x026155 19:A145: 0A        .byte $0A    ; <こ>
- D - I - - 0x026156 19:A146: 0A        .byte $0A    ; <こ>
- D - I - - 0x026157 19:A147: 13        .byte $13    ; <て>
- D - I - - 0x026158 19:A148: 11        .byte $11    ; <ち>
- D - I - - 0x026159 19:A149: 10        .byte $10    ; <た>
- D - I - - 0x02615A 19:A14A: 3C        .byte $3C    ; <9>
- D - I - - 0x02615B 19:A14B: 3C        .byte $3C    ; <9>
- D - I - - 0x02615C 19:A14C: 13        .byte $13    ; <て>
- D - I - - 0x02615D 19:A14D: 0A        .byte $0A    ; <こ>
- D - I - - 0x02615E 19:A14E: 0A        .byte $0A    ; <こ>
- D - I - - 0x02615F 19:A14F: 12        .byte $12    ; <つ>
- D - I - - 0x026160 19:A150: 01        .byte $01    ; <あ>
- D - I - - 0x026161 19:A151: 01        .byte $01    ; <あ>
- D - I - - 0x026162 19:A152: 01        .byte $01    ; <あ>
- D - I - - 0x026163 19:A153: 01        .byte $01    ; <あ>
- D - I - - 0x026164 19:A154: 01        .byte $01    ; <あ>
- D - I - - 0x026165 19:A155: 01        .byte $01    ; <あ>
- D - I - - 0x026166 19:A156: 01        .byte $01    ; <あ>
- D - I - - 0x026167 19:A157: 01        .byte $01    ; <あ>
- D - I - - 0x026168 19:A158: 01        .byte $01    ; <あ>
- D - I - - 0x026169 19:A159: 01        .byte $01    ; <あ>
- D - I - - 0x02616A 19:A15A: 01        .byte $01    ; <あ>
- D - I - - 0x02616B 19:A15B: 01        .byte $01    ; <あ>
- D - I - - 0x02616C 19:A15C: 01        .byte $01    ; <あ>
- D - I - - 0x02616D 19:A15D: 01        .byte $01    ; <あ>
- D - I - - 0x02616E 19:A15E: 01        .byte $01    ; <あ>
- D - I - - 0x02616F 19:A15F: 01        .byte $01    ; <あ>
- D - I - - 0x026170 19:A160: 50        .byte $50    ; <タ>
- D - I - - 0x026171 19:A161: 51        .byte $51    ; <チ>
- D - I - - 0x026172 19:A162: 54        .byte $54    ; <ト>
- D - I - - 0x026173 19:A163: 55        .byte $55    ; <ナ>
- D - I - - 0x026174 19:A164: 52        .byte $52    ; <ツ>
- D - I - - 0x026175 19:A165: 53        .byte $53    ; <テ>
- D - I - - 0x026176 19:A166: 56        .byte $56    ; <ニ>
- D - I - - 0x026177 19:A167: 57        .byte $57    ; <ヌ>
- D - I - - 0x026178 19:A168: 01        .byte $01    ; <あ>
- D - I - - 0x026179 19:A169: 01        .byte $01    ; <あ>
- D - I - - 0x02617A 19:A16A: 01        .byte $01    ; <あ>
- D - I - - 0x02617B 19:A16B: 01        .byte $01    ; <あ>
- D - I - - 0x02617C 19:A16C: 01        .byte $01    ; <あ>
- D - I - - 0x02617D 19:A16D: 01        .byte $01    ; <あ>
- D - I - - 0x02617E 19:A16E: 01        .byte $01    ; <あ>
- D - I - - 0x02617F 19:A16F: 01        .byte $01    ; <あ>
- D - I - - 0x026180 19:A170: 52        .byte $52    ; <ツ>
- D - I - - 0x026181 19:A171: 53        .byte $53    ; <テ>
- D - I - - 0x026182 19:A172: 56        .byte $56    ; <ニ>
- D - I - - 0x026183 19:A173: 57        .byte $57    ; <ヌ>
- D - I - - 0x026184 19:A174: 01        .byte $01    ; <あ>
- D - I - - 0x026185 19:A175: 01        .byte $01    ; <あ>
- D - I - - 0x026186 19:A176: 01        .byte $01    ; <あ>
- D - I - - 0x026187 19:A177: 01        .byte $01    ; <あ>
- D - I - - 0x026188 19:A178: 01        .byte $01    ; <あ>
- D - I - - 0x026189 19:A179: 01        .byte $01    ; <あ>
- D - I - - 0x02618A 19:A17A: 01        .byte $01    ; <あ>
- D - I - - 0x02618B 19:A17B: 01        .byte $01    ; <あ>
- D - I - - 0x02618C 19:A17C: 01        .byte $01    ; <あ>
- D - I - - 0x02618D 19:A17D: 01        .byte $01    ; <あ>
- D - I - - 0x02618E 19:A17E: 01        .byte $01    ; <あ>
- D - I - - 0x02618F 19:A17F: 01        .byte $01    ; <あ>
- D - I - - 0x026190 19:A180: 50        .byte $50    ; <タ>
- D - I - - 0x026191 19:A181: 54        .byte $54    ; <ト>
- D - I - - 0x026192 19:A182: 55        .byte $55    ; <ナ>
- D - I - - 0x026193 19:A183: 01        .byte $01    ; <あ>
- D - I - - 0x026194 19:A184: 52        .byte $52    ; <ツ>
- D - I - - 0x026195 19:A185: 56        .byte $56    ; <ニ>
- D - I - - 0x026196 19:A186: 57        .byte $57    ; <ヌ>
- D - I - - 0x026197 19:A187: 01        .byte $01    ; <あ>
- D - I - - 0x026198 19:A188: 01        .byte $01    ; <あ>
- D - I - - 0x026199 19:A189: 01        .byte $01    ; <あ>
- D - I - - 0x02619A 19:A18A: 01        .byte $01    ; <あ>
- D - I - - 0x02619B 19:A18B: 01        .byte $01    ; <あ>
- D - I - - 0x02619C 19:A18C: 01        .byte $01    ; <あ>
- D - I - - 0x02619D 19:A18D: 01        .byte $01    ; <あ>
- D - I - - 0x02619E 19:A18E: 01        .byte $01    ; <あ>
- D - I - - 0x02619F 19:A18F: 01        .byte $01    ; <あ>
- D - I - - 0x0261A0 19:A190: 01        .byte $01    ; <あ>
- D - I - - 0x0261A1 19:A191: 01        .byte $01    ; <あ>
- D - I - - 0x0261A2 19:A192: 01        .byte $01    ; <あ>
- D - I - - 0x0261A3 19:A193: 01        .byte $01    ; <あ>
- D - I - - 0x0261A4 19:A194: 01        .byte $01    ; <あ>
- D - I - - 0x0261A5 19:A195: 01        .byte $01    ; <あ>
- D - I - - 0x0261A6 19:A196: 01        .byte $01    ; <あ>
- D - I - - 0x0261A7 19:A197: 01        .byte $01    ; <あ>
- D - I - - 0x0261A8 19:A198: 01        .byte $01    ; <あ>
- D - I - - 0x0261A9 19:A199: 01        .byte $01    ; <あ>
- D - I - - 0x0261AA 19:A19A: 01        .byte $01    ; <あ>
- D - I - - 0x0261AB 19:A19B: 01        .byte $01    ; <あ>
- D - I - - 0x0261AC 19:A19C: 0D        .byte $0D    ; <す>
- D - I - - 0x0261AD 19:A19D: 0D        .byte $0D    ; <す>
- D - I - - 0x0261AE 19:A19E: 0D        .byte $0D    ; <す>
- D - I - - 0x0261AF 19:A19F: 0D        .byte $0D    ; <す>
- D - I - - 0x0261B0 19:A1A0: 01        .byte $01    ; <あ>
- D - I - - 0x0261B1 19:A1A1: 01        .byte $01    ; <あ>
- D - I - - 0x0261B2 19:A1A2: 01        .byte $01    ; <あ>
- D - I - - 0x0261B3 19:A1A3: 01        .byte $01    ; <あ>
- D - I - - 0x0261B4 19:A1A4: 01        .byte $01    ; <あ>
- D - I - - 0x0261B5 19:A1A5: 01        .byte $01    ; <あ>
- D - I - - 0x0261B6 19:A1A6: 01        .byte $01    ; <あ>
- D - I - - 0x0261B7 19:A1A7: 01        .byte $01    ; <あ>
- D - I - - 0x0261B8 19:A1A8: 50        .byte $50    ; <タ>
- D - I - - 0x0261B9 19:A1A9: 51        .byte $51    ; <チ>
- D - I - - 0x0261BA 19:A1AA: 54        .byte $54    ; <ト>
- D - I - - 0x0261BB 19:A1AB: 55        .byte $55    ; <ナ>
- D - I - - 0x0261BC 19:A1AC: 52        .byte $52    ; <ツ>
- D - I - - 0x0261BD 19:A1AD: 53        .byte $53    ; <テ>
- D - I - - 0x0261BE 19:A1AE: 56        .byte $56    ; <ニ>
- D - I - - 0x0261BF 19:A1AF: 57        .byte $57    ; <ヌ>
- D - I - - 0x0261C0 19:A1B0: 01        .byte $01    ; <あ>
- D - I - - 0x0261C1 19:A1B1: 01        .byte $01    ; <あ>
- D - I - - 0x0261C2 19:A1B2: 01        .byte $01    ; <あ>
- D - I - - 0x0261C3 19:A1B3: 01        .byte $01    ; <あ>
- D - I - - 0x0261C4 19:A1B4: 58        .byte $58    ; <ネ>
- D - I - - 0x0261C5 19:A1B5: 59        .byte $59    ; <ノ>
- D - I - - 0x0261C6 19:A1B6: 5C        .byte $5C    ; <フ>
- D - I - - 0x0261C7 19:A1B7: 01        .byte $01    ; <あ>
- D - I - - 0x0261C8 19:A1B8: 5A        .byte $5A    ; <ハ>
- D - I - - 0x0261C9 19:A1B9: 5B        .byte $5B    ; <ヒ>
- D - I - - 0x0261CA 19:A1BA: 5E        .byte $5E    ; <ホ>
- D - I - - 0x0261CB 19:A1BB: 5F        .byte $5F    ; <マ>
- D - I - - 0x0261CC 19:A1BC: 0F        .byte $0F    ; <そ>
- D - I - - 0x0261CD 19:A1BD: 0F        .byte $0F    ; <そ>
- D - I - - 0x0261CE 19:A1BE: 0F        .byte $0F    ; <そ>
- D - I - - 0x0261CF 19:A1BF: 0F        .byte $0F    ; <そ>
- D - I - - 0x0261D0 19:A1C0: 01        .byte $01    ; <あ>
- D - I - - 0x0261D1 19:A1C1: 01        .byte $01    ; <あ>
- D - I - - 0x0261D2 19:A1C2: 01        .byte $01    ; <あ>
- D - I - - 0x0261D3 19:A1C3: 01        .byte $01    ; <あ>
- D - I - - 0x0261D4 19:A1C4: 01        .byte $01    ; <あ>
- D - I - - 0x0261D5 19:A1C5: 01        .byte $01    ; <あ>
- D - I - - 0x0261D6 19:A1C6: 01        .byte $01    ; <あ>
- D - I - - 0x0261D7 19:A1C7: 01        .byte $01    ; <あ>
- D - I - - 0x0261D8 19:A1C8: 00        .byte $00
- D - I - - 0x0261D9 19:A1C9: 00        .byte $00
- D - I - - 0x0261DA 19:A1CA: 00        .byte $00
- D - I - - 0x0261DB 19:A1CB: 00        .byte $00
- D - I - - 0x0261DC 19:A1CC: 00        .byte $00
- D - I - - 0x0261DD 19:A1CD: 00        .byte $00
- D - I - - 0x0261DE 19:A1CE: 00        .byte $00
- D - I - - 0x0261DF 19:A1CF: 00        .byte $00
- D - I - - 0x0261E0 19:A1D0: E4        .byte $E4
- D - I - - 0x0261E1 19:A1D1: E5        .byte $E5
- D - I - - 0x0261E2 19:A1D2: F0        .byte $F0
- D - I - - 0x0261E3 19:A1D3: F1        .byte $F1
- D - I - - 0x0261E4 19:A1D4: E6        .byte $E6
- D - I - - 0x0261E5 19:A1D5: E7        .byte $E7
- D - I - - 0x0261E6 19:A1D6: F2        .byte $F2
- D - I - - 0x0261E7 19:A1D7: F3        .byte $F3
- D - I - - 0x0261E8 19:A1D8: EC        .byte $EC
- D - I - - 0x0261E9 19:A1D9: ED        .byte $ED
- D - I - - 0x0261EA 19:A1DA: F8        .byte $F8
- D - I - - 0x0261EB 19:A1DB: F9        .byte $F9
- D - I - - 0x0261EC 19:A1DC: EE        .byte $EE
- D - I - - 0x0261ED 19:A1DD: EF        .byte $EF
- D - I - - 0x0261EE 19:A1DE: FA        .byte $FA
- D - I - - 0x0261EF 19:A1DF: FB        .byte $FB
- D - I - - 0x0261F0 19:A1E0: F4        .byte $F4
- D - I - - 0x0261F1 19:A1E1: F5        .byte $F5
- D - I - - 0x0261F2 19:A1E2: FD        .byte $FD
- D - I - - 0x0261F3 19:A1E3: 01        .byte $01    ; <あ>
- D - I - - 0x0261F4 19:A1E4: F6        .byte $F6
- D - I - - 0x0261F5 19:A1E5: F7        .byte $F7
- D - I - - 0x0261F6 19:A1E6: 01        .byte $01    ; <あ>
- D - I - - 0x0261F7 19:A1E7: 01        .byte $01    ; <あ>
- D - I - - 0x0261F8 19:A1E8: FC        .byte $FC
- D - I - - 0x0261F9 19:A1E9: 01        .byte $01    ; <あ>
- D - I - - 0x0261FA 19:A1EA: 01        .byte $01    ; <あ>
- D - I - - 0x0261FB 19:A1EB: 01        .byte $01    ; <あ>
- D - I - - 0x0261FC 19:A1EC: 01        .byte $01    ; <あ>
- D - I - - 0x0261FD 19:A1ED: 01        .byte $01    ; <あ>
- D - I - - 0x0261FE 19:A1EE: 01        .byte $01    ; <あ>
- D - I - - 0x0261FF 19:A1EF: 01        .byte $01    ; <あ>
- D - I - - 0x026200 19:A1F0: 9C        .byte $9C
- D - I - - 0x026201 19:A1F1: 9C        .byte $9C
- D - I - - 0x026202 19:A1F2: FE        .byte $FE
- D - I - - 0x026203 19:A1F3: FF        .byte $FF
- D - I - - 0x026204 19:A1F4: 9C        .byte $9C
- D - I - - 0x026205 19:A1F5: 9C        .byte $9C
- D - I - - 0x026206 19:A1F6: FE        .byte $FE
- D - I - - 0x026207 19:A1F7: FF        .byte $FF
- D - I - - 0x026208 19:A1F8: 9C        .byte $9C
- D - I - - 0x026209 19:A1F9: 9C        .byte $9C
- D - I - - 0x02620A 19:A1FA: FE        .byte $FE
- D - I - - 0x02620B 19:A1FB: FF        .byte $FF
- D - I - - 0x02620C 19:A1FC: 22        .byte $22    ; <め>
- D - I - - 0x02620D 19:A1FD: 22        .byte $22    ; <め>
- D - I - - 0x02620E 19:A1FE: DE        .byte $DE
- D - I - - 0x02620F 19:A1FF: DC        .byte $DC
- D - I - - 0x026210 19:A200: 8A        .byte $8A    ; <N>
- D - I - - 0x026211 19:A201: 8A        .byte $8A    ; <N>
- D - I - - 0x026212 19:A202: C6        .byte $C6    ; <ベ>
- D - I - - 0x026213 19:A203: C7        .byte $C7    ; <ボ>
- D - I - - 0x026214 19:A204: A0        .byte $A0    ; <が>
- D - I - - 0x026215 19:A205: A0        .byte $A0    ; <が>
- D - I - - 0x026216 19:A206: D2        .byte $D2
- D - I - - 0x026217 19:A207: D8        .byte $D8
- D - I - - 0x026218 19:A208: 00        .byte $00
- D - I - - 0x026219 19:A209: 00        .byte $00
- D - I - - 0x02621A 19:A20A: 00        .byte $00
- D - I - - 0x02621B 19:A20B: 00        .byte $00
- D - I - - 0x02621C 19:A20C: 00        .byte $00
- D - I - - 0x02621D 19:A20D: 00        .byte $00
- D - I - - 0x02621E 19:A20E: 00        .byte $00
- D - I - - 0x02621F 19:A20F: 00        .byte $00
- D - I - - 0x026220 19:A210: DD        .byte $DD
- D - I - - 0x026221 19:A211: DD        .byte $DD
- D - I - - 0x026222 19:A212: DD        .byte $DD
- D - I - - 0x026223 19:A213: DD        .byte $DD
- D - I - - 0x026224 19:A214: D5        .byte $D5
- D - I - - 0x026225 19:A215: D5        .byte $D5
- D - I - - 0x026226 19:A216: D5        .byte $D5
- D - I - - 0x026227 19:A217: D5        .byte $D5
- D - I - - 0x026228 19:A218: DF        .byte $DF
- D - I - - 0x026229 19:A219: DF        .byte $DF
- D - I - - 0x02622A 19:A21A: DF        .byte $DF
- D - I - - 0x02622B 19:A21B: DF        .byte $DF
- D - I - - 0x02622C 19:A21C: D6        .byte $D6
- D - I - - 0x02622D 19:A21D: D6        .byte $D6
- D - I - - 0x02622E 19:A21E: D6        .byte $D6
- D - I - - 0x02622F 19:A21F: D6        .byte $D6
- D - I - - 0x026230 19:A220: DD        .byte $DD
- D - I - - 0x026231 19:A221: D4        .byte $D4
- D - I - - 0x026232 19:A222: D1        .byte $D1    ; <ポ>
- D - I - - 0x026233 19:A223: 01        .byte $01    ; <あ>
- D - I - - 0x026234 19:A224: D5        .byte $D5
- D - I - - 0x026235 19:A225: D5        .byte $D5
- D - I - - 0x026236 19:A226: D4        .byte $D4
- D - I - - 0x026237 19:A227: D3        .byte $D3
- D - I - - 0x026238 19:A228: DF        .byte $DF
- D - I - - 0x026239 19:A229: DF        .byte $DF
- D - I - - 0x02623A 19:A22A: DF        .byte $DF
- D - I - - 0x02623B 19:A22B: D9        .byte $D9
- D - I - - 0x02623C 19:A22C: D6        .byte $D6
- D - I - - 0x02623D 19:A22D: D6        .byte $D6
- D - I - - 0x02623E 19:A22E: D6        .byte $D6
- D - I - - 0x02623F 19:A22F: D0        .byte $D0    ; <ペ>
- D - I - - 0x026240 19:A230: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026241 19:A231: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026242 19:A232: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026243 19:A233: D2        .byte $D2
- D - I - - 0x026244 19:A234: CE        .byte $CE    ; <ピ>
- D - I - - 0x026245 19:A235: CE        .byte $CE    ; <ピ>
- D - I - - 0x026246 19:A236: CE        .byte $CE    ; <ピ>
- D - I - - 0x026247 19:A237: D8        .byte $D8
- D - I - - 0x026248 19:A238: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026249 19:A239: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02624A 19:A23A: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02624B 19:A23B: D2        .byte $D2
- D - I - - 0x02624C 19:A23C: CE        .byte $CE    ; <ピ>
- D - I - - 0x02624D 19:A23D: CE        .byte $CE    ; <ピ>
- D - I - - 0x02624E 19:A23E: CE        .byte $CE    ; <ピ>
- D - I - - 0x02624F 19:A23F: D8        .byte $D8
- D - I - - 0x026250 19:A240: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026251 19:A241: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026252 19:A242: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026253 19:A243: DA        .byte $DA
- D - I - - 0x026254 19:A244: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026255 19:A245: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026256 19:A246: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026257 19:A247: DA        .byte $DA
- D - I - - 0x026258 19:A248: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026259 19:A249: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02625A 19:A24A: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02625B 19:A24B: DA        .byte $DA
- D - I - - 0x02625C 19:A24C: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02625D 19:A24D: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02625E 19:A24E: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02625F 19:A24F: E5        .byte $E5
- D - I - - 0x026260 19:A250: F3        .byte $F3
- D - I - - 0x026261 19:A251: F3        .byte $F3
- D - I - - 0x026262 19:A252: EC        .byte $EC
- D - I - - 0x026263 19:A253: E7        .byte $E7
- D - I - - 0x026264 19:A254: 01        .byte $01    ; <あ>
- D - I - - 0x026265 19:A255: EF        .byte $EF
- D - I - - 0x026266 19:A256: EE        .byte $EE
- D - I - - 0x026267 19:A257: 01        .byte $01    ; <あ>
- D - I - - 0x026268 19:A258: 00        .byte $00
- D - I - - 0x026269 19:A259: 00        .byte $00
- D - I - - 0x02626A 19:A25A: 00        .byte $00
- D - I - - 0x02626B 19:A25B: 00        .byte $00
- D - I - - 0x02626C 19:A25C: 00        .byte $00
- D - I - - 0x02626D 19:A25D: 00        .byte $00
- D - I - - 0x02626E 19:A25E: 00        .byte $00
- D - I - - 0x02626F 19:A25F: 00        .byte $00
- D - I - - 0x026270 19:A260: F1        .byte $F1
- D - I - - 0x026271 19:A261: E0        .byte $E0
- D - I - - 0x026272 19:A262: 01        .byte $01    ; <あ>
- D - I - - 0x026273 19:A263: 01        .byte $01    ; <あ>
- D - I - - 0x026274 19:A264: F2        .byte $F2
- D - I - - 0x026275 19:A265: 4D        .byte $4D    ; <ス>
- D - I - - 0x026276 19:A266: E0        .byte $E0
- D - I - - 0x026277 19:A267: 01        .byte $01    ; <あ>
- D - I - - 0x026278 19:A268: 01        .byte $01    ; <あ>
- D - I - - 0x026279 19:A269: 01        .byte $01    ; <あ>
- D - I - - 0x02627A 19:A26A: E2        .byte $E2
- D - I - - 0x02627B 19:A26B: E0        .byte $E0
- D - I - - 0x02627C 19:A26C: 01        .byte $01    ; <あ>
- D - I - - 0x02627D 19:A26D: 01        .byte $01    ; <あ>
- D - I - - 0x02627E 19:A26E: 01        .byte $01    ; <あ>
- D - I - - 0x02627F 19:A26F: E2        .byte $E2
- D - I - - 0x026280 19:A270: F2        .byte $F2
- D - I - - 0x026281 19:A271: F2        .byte $F2
- D - I - - 0x026282 19:A272: F2        .byte $F2
- D - I - - 0x026283 19:A273: F2        .byte $F2
- D - I - - 0x026284 19:A274: F2        .byte $F2
- D - I - - 0x026285 19:A275: F2        .byte $F2
- D - I - - 0x026286 19:A276: F2        .byte $F2
- D - I - - 0x026287 19:A277: F2        .byte $F2
- D - I - - 0x026288 19:A278: 01        .byte $01    ; <あ>
- D - I - - 0x026289 19:A279: 01        .byte $01    ; <あ>
- D - I - - 0x02628A 19:A27A: 01        .byte $01    ; <あ>
- D - I - - 0x02628B 19:A27B: 01        .byte $01    ; <あ>
- D - I - - 0x02628C 19:A27C: 01        .byte $01    ; <あ>
- D - I - - 0x02628D 19:A27D: 01        .byte $01    ; <あ>
- D - I - - 0x02628E 19:A27E: 01        .byte $01    ; <あ>
- D - I - - 0x02628F 19:A27F: 01        .byte $01    ; <あ>
- D - I - - 0x026290 19:A280: 01        .byte $01    ; <あ>
- D - I - - 0x026291 19:A281: 01        .byte $01    ; <あ>
- D - I - - 0x026292 19:A282: E4        .byte $E4
- D - I - - 0x026293 19:A283: F0        .byte $F0
- D - I - - 0x026294 19:A284: 01        .byte $01    ; <あ>
- D - I - - 0x026295 19:A285: E4        .byte $E4
- D - I - - 0x026296 19:A286: 4C        .byte $4C    ; <シ>
- D - I - - 0x026297 19:A287: F2        .byte $F2
- D - I - - 0x026298 19:A288: E4        .byte $E4
- D - I - - 0x026299 19:A289: E6        .byte $E6
- D - I - - 0x02629A 19:A28A: 01        .byte $01    ; <あ>
- D - I - - 0x02629B 19:A28B: 01        .byte $01    ; <あ>
- D - I - - 0x02629C 19:A28C: E6        .byte $E6
- D - I - - 0x02629D 19:A28D: 01        .byte $01    ; <あ>
- D - I - - 0x02629E 19:A28E: 01        .byte $01    ; <あ>
- D - I - - 0x02629F 19:A28F: 01        .byte $01    ; <あ>
- D - I - - 0x0262A0 19:A290: 50        .byte $50    ; <タ>
- D - I - - 0x0262A1 19:A291: 51        .byte $51    ; <チ>
- D - I - - 0x0262A2 19:A292: 54        .byte $54    ; <ト>
- D - I - - 0x0262A3 19:A293: 55        .byte $55    ; <ナ>
- D - I - - 0x0262A4 19:A294: 52        .byte $52    ; <ツ>
- D - I - - 0x0262A5 19:A295: 53        .byte $53    ; <テ>
- D - I - - 0x0262A6 19:A296: 56        .byte $56    ; <ニ>
- D - I - - 0x0262A7 19:A297: 57        .byte $57    ; <ヌ>
- D - I - - 0x0262A8 19:A298: 01        .byte $01    ; <あ>
- D - I - - 0x0262A9 19:A299: 01        .byte $01    ; <あ>
- D - I - - 0x0262AA 19:A29A: 01        .byte $01    ; <あ>
- D - I - - 0x0262AB 19:A29B: 01        .byte $01    ; <あ>
- D - I - - 0x0262AC 19:A29C: 0D        .byte $0D    ; <す>
- D - I - - 0x0262AD 19:A29D: 0D        .byte $0D    ; <す>
- D - I - - 0x0262AE 19:A29E: 0D        .byte $0D    ; <す>
- D - I - - 0x0262AF 19:A29F: 0D        .byte $0D    ; <す>
- D - I - - 0x0262B0 19:A2A0: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262B1 19:A2A1: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262B2 19:A2A2: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262B3 19:A2A3: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262B4 19:A2A4: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262B5 19:A2A5: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262B6 19:A2A6: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262B7 19:A2A7: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262B8 19:A2A8: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262B9 19:A2A9: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262BA 19:A2AA: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262BB 19:A2AB: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0262BC 19:A2AC: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262BD 19:A2AD: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262BE 19:A2AE: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262BF 19:A2AF: CE        .byte $CE    ; <ピ>
- D - I - - 0x0262C0 19:A2B0: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C1 19:A2B1: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C2 19:A2B2: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C3 19:A2B3: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C4 19:A2B4: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C5 19:A2B5: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C6 19:A2B6: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C7 19:A2B7: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C8 19:A2B8: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262C9 19:A2B9: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262CA 19:A2BA: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262CB 19:A2BB: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262CC 19:A2BC: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262CD 19:A2BD: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262CE 19:A2BE: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262CF 19:A2BF: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0262D0 19:A2C0: F3        .byte $F3
- D - I - - 0x0262D1 19:A2C1: F3        .byte $F3
- D - I - - 0x0262D2 19:A2C2: F3        .byte $F3
- D - I - - 0x0262D3 19:A2C3: F3        .byte $F3
- D - I - - 0x0262D4 19:A2C4: 01        .byte $01    ; <あ>
- D - I - - 0x0262D5 19:A2C5: 01        .byte $01    ; <あ>
- D - I - - 0x0262D6 19:A2C6: 01        .byte $01    ; <あ>
- D - I - - 0x0262D7 19:A2C7: 01        .byte $01    ; <あ>
- D - I - - 0x0262D8 19:A2C8: 00        .byte $00
- D - I - - 0x0262D9 19:A2C9: 00        .byte $00
- D - I - - 0x0262DA 19:A2CA: 00        .byte $00
- D - I - - 0x0262DB 19:A2CB: 00        .byte $00
- D - I - - 0x0262DC 19:A2CC: 00        .byte $00
- D - I - - 0x0262DD 19:A2CD: 00        .byte $00
- D - I - - 0x0262DE 19:A2CE: 00        .byte $00
- D - I - - 0x0262DF 19:A2CF: 00        .byte $00
- D - I - - 0x0262E0 19:A2D0: 01        .byte $01    ; <あ>
- D - I - - 0x0262E1 19:A2D1: C1        .byte $C1    ; <デ>
- D - I - - 0x0262E2 19:A2D2: C4        .byte $C4    ; <ビ>
- D - I - - 0x0262E3 19:A2D3: CD        .byte $CD    ; <パ>
- D - I - - 0x0262E4 19:A2D4: C3        .byte $C3    ; <バ>
- D - I - - 0x0262E5 19:A2D5: C4        .byte $C4    ; <ビ>
- D - I - - 0x0262E6 19:A2D6: C5        .byte $C5    ; <ブ>
- D - I - - 0x0262E7 19:A2D7: C5        .byte $C5    ; <ブ>
- D - I - - 0x0262E8 19:A2D8: C9        .byte $C9    ; <ぴ>
- D - I - - 0x0262E9 19:A2D9: CF        .byte $CF    ; <プ>
- D - I - - 0x0262EA 19:A2DA: CF        .byte $CF    ; <プ>
- D - I - - 0x0262EB 19:A2DB: CF        .byte $CF    ; <プ>
- D - I - - 0x0262EC 19:A2DC: C0        .byte $C0    ; <ヅ>
- D - I - - 0x0262ED 19:A2DD: C6        .byte $C6    ; <ベ>
- D - I - - 0x0262EE 19:A2DE: C6        .byte $C6    ; <ベ>
- D - I - - 0x0262EF 19:A2DF: C6        .byte $C6    ; <ベ>
- D - I - - 0x0262F0 19:A2E0: CD        .byte $CD    ; <パ>
- D - I - - 0x0262F1 19:A2E1: CD        .byte $CD    ; <パ>
- D - I - - 0x0262F2 19:A2E2: CD        .byte $CD    ; <パ>
- D - I - - 0x0262F3 19:A2E3: CD        .byte $CD    ; <パ>
- D - I - - 0x0262F4 19:A2E4: C5        .byte $C5    ; <ブ>
- D - I - - 0x0262F5 19:A2E5: C5        .byte $C5    ; <ブ>
- D - I - - 0x0262F6 19:A2E6: C5        .byte $C5    ; <ブ>
- D - I - - 0x0262F7 19:A2E7: C5        .byte $C5    ; <ブ>
- D - I - - 0x0262F8 19:A2E8: CF        .byte $CF    ; <プ>
- D - I - - 0x0262F9 19:A2E9: CF        .byte $CF    ; <プ>
- D - I - - 0x0262FA 19:A2EA: CF        .byte $CF    ; <プ>
- D - I - - 0x0262FB 19:A2EB: CF        .byte $CF    ; <プ>
- D - I - - 0x0262FC 19:A2EC: C6        .byte $C6    ; <ベ>
- D - I - - 0x0262FD 19:A2ED: C6        .byte $C6    ; <ベ>
- D - I - - 0x0262FE 19:A2EE: C6        .byte $C6    ; <ベ>
- D - I - - 0x0262FF 19:A2EF: C6        .byte $C6    ; <ベ>
- D - I - - 0x026300 19:A2F0: C2        .byte $C2    ; <ド>
- D - I - - 0x026301 19:A2F1: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026302 19:A2F2: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026303 19:A2F3: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026304 19:A2F4: C8        .byte $C8    ; <ぱ>
- D - I - - 0x026305 19:A2F5: CE        .byte $CE    ; <ピ>
- D - I - - 0x026306 19:A2F6: CE        .byte $CE    ; <ピ>
- D - I - - 0x026307 19:A2F7: CE        .byte $CE    ; <ピ>
- D - I - - 0x026308 19:A2F8: C2        .byte $C2    ; <ド>
- D - I - - 0x026309 19:A2F9: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02630A 19:A2FA: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02630B 19:A2FB: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02630C 19:A2FC: C8        .byte $C8    ; <ぱ>
- D - I - - 0x02630D 19:A2FD: CE        .byte $CE    ; <ピ>
- D - I - - 0x02630E 19:A2FE: CE        .byte $CE    ; <ピ>
- D - I - - 0x02630F 19:A2FF: CE        .byte $CE    ; <ピ>
- D - I - - 0x026310 19:A300: CA        .byte $CA    ; <ぷ>
- D - I - - 0x026311 19:A301: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026312 19:A302: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026313 19:A303: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026314 19:A304: CA        .byte $CA    ; <ぷ>
- D - I - - 0x026315 19:A305: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026316 19:A306: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026317 19:A307: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026318 19:A308: CA        .byte $CA    ; <ぷ>
- D - I - - 0x026319 19:A309: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02631A 19:A30A: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02631B 19:A30B: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02631C 19:A30C: E1        .byte $E1
- D - I - - 0x02631D 19:A30D: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02631E 19:A30E: CB        .byte $CB    ; <ぺ>
- D - I - - 0x02631F 19:A30F: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026320 19:A310: E3        .byte $E3
- D - I - - 0x026321 19:A311: E8        .byte $E8
- D - I - - 0x026322 19:A312: F3        .byte $F3
- D - I - - 0x026323 19:A313: F3        .byte $F3
- D - I - - 0x026324 19:A314: 01        .byte $01    ; <あ>
- D - I - - 0x026325 19:A315: EA        .byte $EA
- D - I - - 0x026326 19:A316: EB        .byte $EB
- D - I - - 0x026327 19:A317: 01        .byte $01    ; <あ>
- D - I - - 0x026328 19:A318: 00        .byte $00
- D - I - - 0x026329 19:A319: 00        .byte $00
- D - I - - 0x02632A 19:A31A: 00        .byte $00
- D - I - - 0x02632B 19:A31B: 00        .byte $00
- D - I - - 0x02632C 19:A31C: 00        .byte $00
- D - I - - 0x02632D 19:A31D: 00        .byte $00
- D - I - - 0x02632E 19:A31E: 00        .byte $00
- D - I - - 0x02632F 19:A31F: 00        .byte $00
- D - I - - 0x026330 19:A320: 2A        .byte $2A    ; <れ>
- D - I - - 0x026331 19:A321: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026332 19:A322: 2A        .byte $2A    ; <れ>
- D - I - - 0x026333 19:A323: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026334 19:A324: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026335 19:A325: 2A        .byte $2A    ; <れ>
- D - I - - 0x026336 19:A326: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026337 19:A327: 2A        .byte $2A    ; <れ>
- D - I - - 0x026338 19:A328: 2A        .byte $2A    ; <れ>
- D - I - - 0x026339 19:A329: 2B        .byte $2B    ; <ろ>
- D - I - - 0x02633A 19:A32A: 2A        .byte $2A    ; <れ>
- D - I - - 0x02633B 19:A32B: 2B        .byte $2B    ; <ろ>
- D - I - - 0x02633C 19:A32C: 2B        .byte $2B    ; <ろ>
- D - I - - 0x02633D 19:A32D: 2C        .byte $2C    ; <わ>
- D - I - - 0x02633E 19:A32E: 2D        .byte $2D    ; <を>
- D - I - - 0x02633F 19:A32F: 38        .byte $38    ; <5>
- D - I - - 0x026340 19:A330: 2A        .byte $2A    ; <れ>
- D - I - - 0x026341 19:A331: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026342 19:A332: 2A        .byte $2A    ; <れ>
- D - I - - 0x026343 19:A333: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026344 19:A334: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026345 19:A335: 2A        .byte $2A    ; <れ>
- D - I - - 0x026346 19:A336: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026347 19:A337: 2A        .byte $2A    ; <れ>
- D - I - - 0x026348 19:A338: 2A        .byte $2A    ; <れ>
- D - I - - 0x026349 19:A339: 2B        .byte $2B    ; <ろ>
- D - I - - 0x02634A 19:A33A: 2A        .byte $2A    ; <れ>
- D - I - - 0x02634B 19:A33B: 2B        .byte $2B    ; <ろ>
- D - I - - 0x02634C 19:A33C: 00        .byte $00
- D - I - - 0x02634D 19:A33D: 2E        .byte $2E    ; <ん>
- D - I - - 0x02634E 19:A33E: 2F        .byte $2F    ; <っ>
- D - I - - 0x02634F 19:A33F: 2A        .byte $2A    ; <れ>
- - - - - - 0x026350 19:A340: CA        .byte $CA    ; <ぷ>
- - - - - - 0x026351 19:A341: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026352 19:A342: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026353 19:A343: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026354 19:A344: CA        .byte $CA    ; <ぷ>
- - - - - - 0x026355 19:A345: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026356 19:A346: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026357 19:A347: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026358 19:A348: 00        .byte $00
- - - - - - 0x026359 19:A349: 00        .byte $00
- - - - - - 0x02635A 19:A34A: 00        .byte $00
- - - - - - 0x02635B 19:A34B: 00        .byte $00
- - - - - - 0x02635C 19:A34C: 00        .byte $00
- - - - - - 0x02635D 19:A34D: 00        .byte $00
- - - - - - 0x02635E 19:A34E: 00        .byte $00
- - - - - - 0x02635F 19:A34F: 00        .byte $00
- - - - - - 0x026360 19:A350: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026361 19:A351: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026362 19:A352: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026363 19:A353: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026364 19:A354: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026365 19:A355: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026366 19:A356: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026367 19:A357: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026368 19:A358: 00        .byte $00
- - - - - - 0x026369 19:A359: 00        .byte $00
- - - - - - 0x02636A 19:A35A: 00        .byte $00
- - - - - - 0x02636B 19:A35B: 00        .byte $00
- - - - - - 0x02636C 19:A35C: 00        .byte $00
- - - - - - 0x02636D 19:A35D: 00        .byte $00
- - - - - - 0x02636E 19:A35E: 00        .byte $00
- - - - - - 0x02636F 19:A35F: 00        .byte $00
- - - - - - 0x026370 19:A360: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026371 19:A361: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026372 19:A362: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026373 19:A363: DA        .byte $DA
- - - - - - 0x026374 19:A364: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026375 19:A365: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026376 19:A366: CB        .byte $CB    ; <ぺ>
- - - - - - 0x026377 19:A367: DA        .byte $DA
- - - - - - 0x026378 19:A368: 00        .byte $00
- - - - - - 0x026379 19:A369: 00        .byte $00
- - - - - - 0x02637A 19:A36A: 00        .byte $00
- - - - - - 0x02637B 19:A36B: 00        .byte $00
- - - - - - 0x02637C 19:A36C: 00        .byte $00
- - - - - - 0x02637D 19:A36D: 00        .byte $00
- - - - - - 0x02637E 19:A36E: 00        .byte $00
- - - - - - 0x02637F 19:A36F: 00        .byte $00
- - - - - - 0x026380 19:A370: C9        .byte $C9    ; <ぴ>
- - - - - - 0x026381 19:A371: CF        .byte $CF    ; <プ>
- - - - - - 0x026382 19:A372: CF        .byte $CF    ; <プ>
- - - - - - 0x026383 19:A373: CF        .byte $CF    ; <プ>
- - - - - - 0x026384 19:A374: C9        .byte $C9    ; <ぴ>
- - - - - - 0x026385 19:A375: CF        .byte $CF    ; <プ>
- - - - - - 0x026386 19:A376: CF        .byte $CF    ; <プ>
- - - - - - 0x026387 19:A377: CF        .byte $CF    ; <プ>
- - - - - - 0x026388 19:A378: C9        .byte $C9    ; <ぴ>
- - - - - - 0x026389 19:A379: CF        .byte $CF    ; <プ>
- - - - - - 0x02638A 19:A37A: CF        .byte $CF    ; <プ>
- - - - - - 0x02638B 19:A37B: CF        .byte $CF    ; <プ>
- - - - - - 0x02638C 19:A37C: C0        .byte $C0    ; <ヅ>
- - - - - - 0x02638D 19:A37D: C6        .byte $C6    ; <ベ>
- - - - - - 0x02638E 19:A37E: C6        .byte $C6    ; <ベ>
- - - - - - 0x02638F 19:A37F: C6        .byte $C6    ; <ベ>
- - - - - - 0x026390 19:A380: CF        .byte $CF    ; <プ>
- - - - - - 0x026391 19:A381: CF        .byte $CF    ; <プ>
- - - - - - 0x026392 19:A382: CF        .byte $CF    ; <プ>
- - - - - - 0x026393 19:A383: CF        .byte $CF    ; <プ>
- - - - - - 0x026394 19:A384: CF        .byte $CF    ; <プ>
- - - - - - 0x026395 19:A385: CF        .byte $CF    ; <プ>
- - - - - - 0x026396 19:A386: CF        .byte $CF    ; <プ>
- - - - - - 0x026397 19:A387: CF        .byte $CF    ; <プ>
- - - - - - 0x026398 19:A388: CF        .byte $CF    ; <プ>
- - - - - - 0x026399 19:A389: CF        .byte $CF    ; <プ>
- - - - - - 0x02639A 19:A38A: CF        .byte $CF    ; <プ>
- - - - - - 0x02639B 19:A38B: CF        .byte $CF    ; <プ>
- - - - - - 0x02639C 19:A38C: C6        .byte $C6    ; <ベ>
- - - - - - 0x02639D 19:A38D: C6        .byte $C6    ; <ベ>
- - - - - - 0x02639E 19:A38E: C6        .byte $C6    ; <ベ>
- - - - - - 0x02639F 19:A38F: C6        .byte $C6    ; <ベ>
- - - - - - 0x0263A0 19:A390: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A1 19:A391: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A2 19:A392: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A3 19:A393: D9        .byte $D9
- - - - - - 0x0263A4 19:A394: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A5 19:A395: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A6 19:A396: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A7 19:A397: D9        .byte $D9
- - - - - - 0x0263A8 19:A398: CF        .byte $CF    ; <プ>
- - - - - - 0x0263A9 19:A399: CF        .byte $CF    ; <プ>
- - - - - - 0x0263AA 19:A39A: CF        .byte $CF    ; <プ>
- - - - - - 0x0263AB 19:A39B: D9        .byte $D9
- - - - - - 0x0263AC 19:A39C: C6        .byte $C6    ; <ベ>
- - - - - - 0x0263AD 19:A39D: C6        .byte $C6    ; <ベ>
- - - - - - 0x0263AE 19:A39E: C6        .byte $C6    ; <ベ>
- - - - - - 0x0263AF 19:A39F: D0        .byte $D0    ; <ペ>
- - - - - - 0x0263B0 19:A3A0: D5        .byte $D5
- - - - - - 0x0263B1 19:A3A1: D5        .byte $D5
- - - - - - 0x0263B2 19:A3A2: D5        .byte $D5
- - - - - - 0x0263B3 19:A3A3: D4        .byte $D4
- - - - - - 0x0263B4 19:A3A4: D7        .byte $D7
- - - - - - 0x0263B5 19:A3A5: D7        .byte $D7
- - - - - - 0x0263B6 19:A3A6: D7        .byte $D7
- - - - - - 0x0263B7 19:A3A7: D7        .byte $D7
- - - - - - 0x0263B8 19:A3A8: DD        .byte $DD
- - - - - - 0x0263B9 19:A3A9: DD        .byte $DD
- - - - - - 0x0263BA 19:A3AA: DD        .byte $DD
- - - - - - 0x0263BB 19:A3AB: DD        .byte $DD
- - - - - - 0x0263BC 19:A3AC: D5        .byte $D5
- - - - - - 0x0263BD 19:A3AD: D5        .byte $D5
- - - - - - 0x0263BE 19:A3AE: D5        .byte $D5
- - - - - - 0x0263BF 19:A3AF: D5        .byte $D5
- - - - - - 0x0263C0 19:A3B0: D1        .byte $D1    ; <ポ>
- - - - - - 0x0263C1 19:A3B1: 01        .byte $01    ; <あ>
- - - - - - 0x0263C2 19:A3B2: 01        .byte $01    ; <あ>
- - - - - - 0x0263C3 19:A3B3: 01        .byte $01    ; <あ>
- - - - - - 0x0263C4 19:A3B4: D4        .byte $D4
- - - - - - 0x0263C5 19:A3B5: D1        .byte $D1    ; <ポ>
- - - - - - 0x0263C6 19:A3B6: 01        .byte $01    ; <あ>
- - - - - - 0x0263C7 19:A3B7: 01        .byte $01    ; <あ>
- - - - - - 0x0263C8 19:A3B8: DD        .byte $DD
- - - - - - 0x0263C9 19:A3B9: D4        .byte $D4
- - - - - - 0x0263CA 19:A3BA: D1        .byte $D1    ; <ポ>
- - - - - - 0x0263CB 19:A3BB: 01        .byte $01    ; <あ>
- - - - - - 0x0263CC 19:A3BC: D5        .byte $D5
- - - - - - 0x0263CD 19:A3BD: D5        .byte $D5
- - - - - - 0x0263CE 19:A3BE: D4        .byte $D4
- - - - - - 0x0263CF 19:A3BF: D3        .byte $D3
- - - - - - 0x0263D0 19:A3C0: 01        .byte $01    ; <あ>
- - - - - - 0x0263D1 19:A3C1: 01        .byte $01    ; <あ>
- - - - - - 0x0263D2 19:A3C2: 01        .byte $01    ; <あ>
- - - - - - 0x0263D3 19:A3C3: C1        .byte $C1    ; <デ>
- - - - - - 0x0263D4 19:A3C4: 01        .byte $01    ; <あ>
- - - - - - 0x0263D5 19:A3C5: 01        .byte $01    ; <あ>
- - - - - - 0x0263D6 19:A3C6: C1        .byte $C1    ; <デ>
- - - - - - 0x0263D7 19:A3C7: C4        .byte $C4    ; <ビ>
- - - - - - 0x0263D8 19:A3C8: 01        .byte $01    ; <あ>
- - - - - - 0x0263D9 19:A3C9: C1        .byte $C1    ; <デ>
- - - - - - 0x0263DA 19:A3CA: C4        .byte $C4    ; <ビ>
- - - - - - 0x0263DB 19:A3CB: CD        .byte $CD    ; <パ>
- - - - - - 0x0263DC 19:A3CC: C3        .byte $C3    ; <バ>
- - - - - - 0x0263DD 19:A3CD: C4        .byte $C4    ; <ビ>
- - - - - - 0x0263DE 19:A3CE: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263DF 19:A3CF: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263E0 19:A3D0: C4        .byte $C4    ; <ビ>
- - - - - - 0x0263E1 19:A3D1: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263E2 19:A3D2: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263E3 19:A3D3: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263E4 19:A3D4: C7        .byte $C7    ; <ボ>
- - - - - - 0x0263E5 19:A3D5: C7        .byte $C7    ; <ボ>
- - - - - - 0x0263E6 19:A3D6: C7        .byte $C7    ; <ボ>
- - - - - - 0x0263E7 19:A3D7: C7        .byte $C7    ; <ボ>
- - - - - - 0x0263E8 19:A3D8: CD        .byte $CD    ; <パ>
- - - - - - 0x0263E9 19:A3D9: CD        .byte $CD    ; <パ>
- - - - - - 0x0263EA 19:A3DA: CD        .byte $CD    ; <パ>
- - - - - - 0x0263EB 19:A3DB: CD        .byte $CD    ; <パ>
- - - - - - 0x0263EC 19:A3DC: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263ED 19:A3DD: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263EE 19:A3DE: C5        .byte $C5    ; <ブ>
- - - - - - 0x0263EF 19:A3DF: C5        .byte $C5    ; <ブ>
- D - I - - 0x0263F0 19:A3E0: 01        .byte $01    ; <あ>
- D - I - - 0x0263F1 19:A3E1: 01        .byte $01    ; <あ>
- D - I - - 0x0263F2 19:A3E2: 01        .byte $01    ; <あ>
- D - I - - 0x0263F3 19:A3E3: 01        .byte $01    ; <あ>
- D - I - - 0x0263F4 19:A3E4: 01        .byte $01    ; <あ>
- D - I - - 0x0263F5 19:A3E5: 01        .byte $01    ; <あ>
- D - I - - 0x0263F6 19:A3E6: 01        .byte $01    ; <あ>
- D - I - - 0x0263F7 19:A3E7: 01        .byte $01    ; <あ>
- D - I - - 0x0263F8 19:A3E8: 00        .byte $00
- D - I - - 0x0263F9 19:A3E9: 00        .byte $00
- D - I - - 0x0263FA 19:A3EA: 00        .byte $00
- D - I - - 0x0263FB 19:A3EB: 00        .byte $00
- D - I - - 0x0263FC 19:A3EC: 00        .byte $00
- D - I - - 0x0263FD 19:A3ED: 00        .byte $00
- D - I - - 0x0263FE 19:A3EE: 00        .byte $00
- D - I - - 0x0263FF 19:A3EF: 00        .byte $00
- D - I - - 0x026400 19:A3F0: 01        .byte $01    ; <あ>
- D - I - - 0x026401 19:A3F1: 01        .byte $01    ; <あ>
- D - I - - 0x026402 19:A3F2: 01        .byte $01    ; <あ>
- D - I - - 0x026403 19:A3F3: C5        .byte $C5    ; <ブ>
- D - I - - 0x026404 19:A3F4: 01        .byte $01    ; <あ>
- D - I - - 0x026405 19:A3F5: C5        .byte $C5    ; <ブ>
- D - I - - 0x026406 19:A3F6: D0        .byte $D0    ; <ペ>
- D - I - - 0x026407 19:A3F7: D1        .byte $D1    ; <ポ>
- D - I - - 0x026408 19:A3F8: 00        .byte $00
- D - I - - 0x026409 19:A3F9: 00        .byte $00
- D - I - - 0x02640A 19:A3FA: 00        .byte $00
- D - I - - 0x02640B 19:A3FB: 00        .byte $00
- D - I - - 0x02640C 19:A3FC: 00        .byte $00
- D - I - - 0x02640D 19:A3FD: 00        .byte $00
- D - I - - 0x02640E 19:A3FE: 00        .byte $00
- D - I - - 0x02640F 19:A3FF: 00        .byte $00
- D - I - - 0x026410 19:A400: 01        .byte $01    ; <あ>
- D - I - - 0x026411 19:A401: 01        .byte $01    ; <あ>
- D - I - - 0x026412 19:A402: 01        .byte $01    ; <あ>
- D - I - - 0x026413 19:A403: 01        .byte $01    ; <あ>
- D - I - - 0x026414 19:A404: 01        .byte $01    ; <あ>
- D - I - - 0x026415 19:A405: 01        .byte $01    ; <あ>
- D - I - - 0x026416 19:A406: 01        .byte $01    ; <あ>
- D - I - - 0x026417 19:A407: 01        .byte $01    ; <あ>
- D - I - - 0x026418 19:A408: 01        .byte $01    ; <あ>
- D - I - - 0x026419 19:A409: 01        .byte $01    ; <あ>
- D - I - - 0x02641A 19:A40A: 01        .byte $01    ; <あ>
- D - I - - 0x02641B 19:A40B: C5        .byte $C5    ; <ブ>
- D - I - - 0x02641C 19:A40C: 01        .byte $01    ; <あ>
- D - I - - 0x02641D 19:A40D: C5        .byte $C5    ; <ブ>
- D - I - - 0x02641E 19:A40E: D0        .byte $D0    ; <ペ>
- D - I - - 0x02641F 19:A40F: D1        .byte $D1    ; <ポ>
- D - I - - 0x026420 19:A410: 01        .byte $01    ; <あ>
- D - I - - 0x026421 19:A411: 01        .byte $01    ; <あ>
- D - I - - 0x026422 19:A412: 01        .byte $01    ; <あ>
- D - I - - 0x026423 19:A413: C5        .byte $C5    ; <ブ>
- D - I - - 0x026424 19:A414: 01        .byte $01    ; <あ>
- D - I - - 0x026425 19:A415: C5        .byte $C5    ; <ブ>
- D - I - - 0x026426 19:A416: D0        .byte $D0    ; <ペ>
- D - I - - 0x026427 19:A417: D1        .byte $D1    ; <ポ>
- D - I - - 0x026428 19:A418: D0        .byte $D0    ; <ペ>
- D - I - - 0x026429 19:A419: D1        .byte $D1    ; <ポ>
- D - I - - 0x02642A 19:A41A: D4        .byte $D4
- D - I - - 0x02642B 19:A41B: CD        .byte $CD    ; <パ>
- D - I - - 0x02642C 19:A41C: D4        .byte $D4
- D - I - - 0x02642D 19:A41D: CD        .byte $CD    ; <パ>
- D - I - - 0x02642E 19:A41E: CD        .byte $CD    ; <パ>
- D - I - - 0x02642F 19:A41F: CD        .byte $CD    ; <パ>
- D - I - - 0x026430 19:A420: D0        .byte $D0    ; <ペ>
- D - I - - 0x026431 19:A421: D1        .byte $D1    ; <ポ>
- D - I - - 0x026432 19:A422: D4        .byte $D4
- D - I - - 0x026433 19:A423: CD        .byte $CD    ; <パ>
- D - I - - 0x026434 19:A424: D4        .byte $D4
- D - I - - 0x026435 19:A425: CD        .byte $CD    ; <パ>
- D - I - - 0x026436 19:A426: CD        .byte $CD    ; <パ>
- D - I - - 0x026437 19:A427: CD        .byte $CD    ; <パ>
- D - I - - 0x026438 19:A428: CD        .byte $CD    ; <パ>
- D - I - - 0x026439 19:A429: CD        .byte $CD    ; <パ>
- D - I - - 0x02643A 19:A42A: CD        .byte $CD    ; <パ>
- D - I - - 0x02643B 19:A42B: CD        .byte $CD    ; <パ>
- D - I - - 0x02643C 19:A42C: CD        .byte $CD    ; <パ>
- D - I - - 0x02643D 19:A42D: CD        .byte $CD    ; <パ>
- D - I - - 0x02643E 19:A42E: CD        .byte $CD    ; <パ>
- D - I - - 0x02643F 19:A42F: CD        .byte $CD    ; <パ>
- D - I - - 0x026440 19:A430: CD        .byte $CD    ; <パ>
- D - I - - 0x026441 19:A431: CD        .byte $CD    ; <パ>
- D - I - - 0x026442 19:A432: CD        .byte $CD    ; <パ>
- D - I - - 0x026443 19:A433: CD        .byte $CD    ; <パ>
- D - I - - 0x026444 19:A434: CD        .byte $CD    ; <パ>
- D - I - - 0x026445 19:A435: CD        .byte $CD    ; <パ>
- D - I - - 0x026446 19:A436: CD        .byte $CD    ; <パ>
- D - I - - 0x026447 19:A437: CD        .byte $CD    ; <パ>
- D - I - - 0x026448 19:A438: CD        .byte $CD    ; <パ>
- D - I - - 0x026449 19:A439: CD        .byte $CD    ; <パ>
- D - I - - 0x02644A 19:A43A: CD        .byte $CD    ; <パ>
- D - I - - 0x02644B 19:A43B: CD        .byte $CD    ; <パ>
- D - I - - 0x02644C 19:A43C: CD        .byte $CD    ; <パ>
- D - I - - 0x02644D 19:A43D: CD        .byte $CD    ; <パ>
- D - I - - 0x02644E 19:A43E: CD        .byte $CD    ; <パ>
- D - I - - 0x02644F 19:A43F: CD        .byte $CD    ; <パ>
- D - I - - 0x026450 19:A440: CD        .byte $CD    ; <パ>
- D - I - - 0x026451 19:A441: CD        .byte $CD    ; <パ>
- D - I - - 0x026452 19:A442: CD        .byte $CD    ; <パ>
- D - I - - 0x026453 19:A443: CD        .byte $CD    ; <パ>
- D - I - - 0x026454 19:A444: CD        .byte $CD    ; <パ>
- D - I - - 0x026455 19:A445: CD        .byte $CD    ; <パ>
- D - I - - 0x026456 19:A446: CD        .byte $CD    ; <パ>
- D - I - - 0x026457 19:A447: CD        .byte $CD    ; <パ>
- D - I - - 0x026458 19:A448: 00        .byte $00
- D - I - - 0x026459 19:A449: 00        .byte $00
- D - I - - 0x02645A 19:A44A: 00        .byte $00
- D - I - - 0x02645B 19:A44B: 00        .byte $00
- D - I - - 0x02645C 19:A44C: 00        .byte $00
- D - I - - 0x02645D 19:A44D: 00        .byte $00
- D - I - - 0x02645E 19:A44E: 00        .byte $00
- D - I - - 0x02645F 19:A44F: 00        .byte $00
- D - I - - 0x026460 19:A450: D0        .byte $D0    ; <ペ>
- D - I - - 0x026461 19:A451: D1        .byte $D1    ; <ポ>
- D - I - - 0x026462 19:A452: D4        .byte $D4
- D - I - - 0x026463 19:A453: CD        .byte $CD    ; <パ>
- D - I - - 0x026464 19:A454: D4        .byte $D4
- D - I - - 0x026465 19:A455: CD        .byte $CD    ; <パ>
- D - I - - 0x026466 19:A456: CD        .byte $CD    ; <パ>
- D - I - - 0x026467 19:A457: CD        .byte $CD    ; <パ>
- D - I - - 0x026468 19:A458: 00        .byte $00
- D - I - - 0x026469 19:A459: 00        .byte $00
- D - I - - 0x02646A 19:A45A: 00        .byte $00
- D - I - - 0x02646B 19:A45B: 00        .byte $00
- D - I - - 0x02646C 19:A45C: 00        .byte $00
- D - I - - 0x02646D 19:A45D: 00        .byte $00
- D - I - - 0x02646E 19:A45E: 00        .byte $00
- D - I - - 0x02646F 19:A45F: 00        .byte $00
- D - I - - 0x026470 19:A460: D8        .byte $D8
- D - I - - 0x026471 19:A461: C7        .byte $C7    ; <ボ>
- D - I - - 0x026472 19:A462: D2        .byte $D2
- D - I - - 0x026473 19:A463: D3        .byte $D3
- D - I - - 0x026474 19:A464: D8        .byte $D8
- D - I - - 0x026475 19:A465: D8        .byte $D8
- D - I - - 0x026476 19:A466: D8        .byte $D8
- D - I - - 0x026477 19:A467: C7        .byte $C7    ; <ボ>
- D - I - - 0x026478 19:A468: 00        .byte $00
- D - I - - 0x026479 19:A469: 00        .byte $00
- D - I - - 0x02647A 19:A46A: 00        .byte $00
- D - I - - 0x02647B 19:A46B: 00        .byte $00
- D - I - - 0x02647C 19:A46C: 00        .byte $00
- D - I - - 0x02647D 19:A46D: 00        .byte $00
- D - I - - 0x02647E 19:A46E: 00        .byte $00
- D - I - - 0x02647F 19:A46F: 00        .byte $00
- D - I - - 0x026480 19:A470: D6        .byte $D6
- D - I - - 0x026481 19:A471: 01        .byte $01    ; <あ>
- D - I - - 0x026482 19:A472: 01        .byte $01    ; <あ>
- D - I - - 0x026483 19:A473: 01        .byte $01    ; <あ>
- D - I - - 0x026484 19:A474: D2        .byte $D2
- D - I - - 0x026485 19:A475: D3        .byte $D3
- D - I - - 0x026486 19:A476: D6        .byte $D6
- D - I - - 0x026487 19:A477: 01        .byte $01    ; <あ>
- D - I - - 0x026488 19:A478: 00        .byte $00
- D - I - - 0x026489 19:A479: 00        .byte $00
- D - I - - 0x02648A 19:A47A: 00        .byte $00
- D - I - - 0x02648B 19:A47B: 00        .byte $00
- D - I - - 0x02648C 19:A47C: 00        .byte $00
- D - I - - 0x02648D 19:A47D: 00        .byte $00
- D - I - - 0x02648E 19:A47E: 00        .byte $00
- D - I - - 0x02648F 19:A47F: 00        .byte $00
- D - I - - 0x026490 19:A480: D8        .byte $D8
- D - I - - 0x026491 19:A481: C7        .byte $C7    ; <ボ>
- D - I - - 0x026492 19:A482: D2        .byte $D2
- D - I - - 0x026493 19:A483: D3        .byte $D3
- D - I - - 0x026494 19:A484: D8        .byte $D8
- D - I - - 0x026495 19:A485: D8        .byte $D8
- D - I - - 0x026496 19:A486: D8        .byte $D8
- D - I - - 0x026497 19:A487: C7        .byte $C7    ; <ボ>
- D - I - - 0x026498 19:A488: D8        .byte $D8
- D - I - - 0x026499 19:A489: D8        .byte $D8
- D - I - - 0x02649A 19:A48A: D8        .byte $D8
- D - I - - 0x02649B 19:A48B: D8        .byte $D8
- D - I - - 0x02649C 19:A48C: D8        .byte $D8
- D - I - - 0x02649D 19:A48D: D8        .byte $D8
- D - I - - 0x02649E 19:A48E: D8        .byte $D8
- D - I - - 0x02649F 19:A48F: D8        .byte $D8
- D - I - - 0x0264A0 19:A490: D6        .byte $D6
- D - I - - 0x0264A1 19:A491: 01        .byte $01    ; <あ>
- D - I - - 0x0264A2 19:A492: 01        .byte $01    ; <あ>
- D - I - - 0x0264A3 19:A493: 01        .byte $01    ; <あ>
- D - I - - 0x0264A4 19:A494: D2        .byte $D2
- D - I - - 0x0264A5 19:A495: D3        .byte $D3
- D - I - - 0x0264A6 19:A496: D6        .byte $D6
- D - I - - 0x0264A7 19:A497: 01        .byte $01    ; <あ>
- D - I - - 0x0264A8 19:A498: D8        .byte $D8
- D - I - - 0x0264A9 19:A499: C7        .byte $C7    ; <ボ>
- D - I - - 0x0264AA 19:A49A: D2        .byte $D2
- D - I - - 0x0264AB 19:A49B: D3        .byte $D3
- D - I - - 0x0264AC 19:A49C: D8        .byte $D8
- D - I - - 0x0264AD 19:A49D: D8        .byte $D8
- D - I - - 0x0264AE 19:A49E: D8        .byte $D8
- D - I - - 0x0264AF 19:A49F: C7        .byte $C7    ; <ボ>
- D - I - - 0x0264B0 19:A4A0: 01        .byte $01    ; <あ>
- D - I - - 0x0264B1 19:A4A1: 01        .byte $01    ; <あ>
- D - I - - 0x0264B2 19:A4A2: 01        .byte $01    ; <あ>
- D - I - - 0x0264B3 19:A4A3: 01        .byte $01    ; <あ>
- D - I - - 0x0264B4 19:A4A4: 01        .byte $01    ; <あ>
- D - I - - 0x0264B5 19:A4A5: 01        .byte $01    ; <あ>
- D - I - - 0x0264B6 19:A4A6: 01        .byte $01    ; <あ>
- D - I - - 0x0264B7 19:A4A7: 01        .byte $01    ; <あ>
- D - I - - 0x0264B8 19:A4A8: D6        .byte $D6
- D - I - - 0x0264B9 19:A4A9: 01        .byte $01    ; <あ>
- D - I - - 0x0264BA 19:A4AA: 01        .byte $01    ; <あ>
- D - I - - 0x0264BB 19:A4AB: 01        .byte $01    ; <あ>
- D - I - - 0x0264BC 19:A4AC: D2        .byte $D2
- D - I - - 0x0264BD 19:A4AD: D3        .byte $D3
- D - I - - 0x0264BE 19:A4AE: D6        .byte $D6
- D - I - - 0x0264BF 19:A4AF: 01        .byte $01    ; <あ>
- D - I - - 0x0264C0 19:A4B0: D8        .byte $D8
- D - I - - 0x0264C1 19:A4B1: D8        .byte $D8
- D - I - - 0x0264C2 19:A4B2: D8        .byte $D8
- D - I - - 0x0264C3 19:A4B3: D8        .byte $D8
- D - I - - 0x0264C4 19:A4B4: D8        .byte $D8
- D - I - - 0x0264C5 19:A4B5: D8        .byte $D8
- D - I - - 0x0264C6 19:A4B6: D8        .byte $D8
- D - I - - 0x0264C7 19:A4B7: D8        .byte $D8
- D - I - - 0x0264C8 19:A4B8: 00        .byte $00
- D - I - - 0x0264C9 19:A4B9: 00        .byte $00
- D - I - - 0x0264CA 19:A4BA: 00        .byte $00
- D - I - - 0x0264CB 19:A4BB: 00        .byte $00
- D - I - - 0x0264CC 19:A4BC: 00        .byte $00
- D - I - - 0x0264CD 19:A4BD: 00        .byte $00
- D - I - - 0x0264CE 19:A4BE: 00        .byte $00
- D - I - - 0x0264CF 19:A4BF: 00        .byte $00
- D - I - - 0x0264D0 19:A4C0: D8        .byte $D8
- D - I - - 0x0264D1 19:A4C1: D8        .byte $D8
- D - I - - 0x0264D2 19:A4C2: D8        .byte $D8
- D - I - - 0x0264D3 19:A4C3: D8        .byte $D8
- D - I - - 0x0264D4 19:A4C4: D8        .byte $D8
- D - I - - 0x0264D5 19:A4C5: D8        .byte $D8
- D - I - - 0x0264D6 19:A4C6: D8        .byte $D8
- D - I - - 0x0264D7 19:A4C7: D8        .byte $D8
- D - I - - 0x0264D8 19:A4C8: D8        .byte $D8
- D - I - - 0x0264D9 19:A4C9: D8        .byte $D8
- D - I - - 0x0264DA 19:A4CA: D8        .byte $D8
- D - I - - 0x0264DB 19:A4CB: D8        .byte $D8
- D - I - - 0x0264DC 19:A4CC: D8        .byte $D8
- D - I - - 0x0264DD 19:A4CD: D8        .byte $D8
- D - I - - 0x0264DE 19:A4CE: D8        .byte $D8
- D - I - - 0x0264DF 19:A4CF: D8        .byte $D8
- D - I - - 0x0264E0 19:A4D0: 7B        .byte $7B    ; <。>
- D - I - - 0x0264E1 19:A4D1: 79        .byte $79    ; <!>
- D - I - - 0x0264E2 19:A4D2: 01        .byte $01    ; <あ>
- D - I - - 0x0264E3 19:A4D3: 01        .byte $01    ; <あ>
- D - I - - 0x0264E4 19:A4D4: 01        .byte $01    ; <あ>
- D - I - - 0x0264E5 19:A4D5: 7B        .byte $7B    ; <。>
- D - I - - 0x0264E6 19:A4D6: 79        .byte $79    ; <!>
- D - I - - 0x0264E7 19:A4D7: 01        .byte $01    ; <あ>
- D - I - - 0x0264E8 19:A4D8: 01        .byte $01    ; <あ>
- D - I - - 0x0264E9 19:A4D9: 01        .byte $01    ; <あ>
- D - I - - 0x0264EA 19:A4DA: 7B        .byte $7B    ; <。>
- D - I - - 0x0264EB 19:A4DB: 79        .byte $79    ; <!>
- D - I - - 0x0264EC 19:A4DC: 01        .byte $01    ; <あ>
- D - I - - 0x0264ED 19:A4DD: 01        .byte $01    ; <あ>
- D - I - - 0x0264EE 19:A4DE: 01        .byte $01    ; <あ>
- D - I - - 0x0264EF 19:A4DF: 7B        .byte $7B    ; <。>
- D - I - - 0x0264F0 19:A4E0: 01        .byte $01    ; <あ>
- D - I - - 0x0264F1 19:A4E1: 01        .byte $01    ; <あ>
- D - I - - 0x0264F2 19:A4E2: 01        .byte $01    ; <あ>
- D - I - - 0x0264F3 19:A4E3: 01        .byte $01    ; <あ>
- D - I - - 0x0264F4 19:A4E4: 01        .byte $01    ; <あ>
- D - I - - 0x0264F5 19:A4E5: 01        .byte $01    ; <あ>
- D - I - - 0x0264F6 19:A4E6: 01        .byte $01    ; <あ>
- D - I - - 0x0264F7 19:A4E7: 01        .byte $01    ; <あ>
- D - I - - 0x0264F8 19:A4E8: 01        .byte $01    ; <あ>
- D - I - - 0x0264F9 19:A4E9: 01        .byte $01    ; <あ>
- D - I - - 0x0264FA 19:A4EA: 01        .byte $01    ; <あ>
- D - I - - 0x0264FB 19:A4EB: 01        .byte $01    ; <あ>
- D - I - - 0x0264FC 19:A4EC: 79        .byte $79    ; <!>
- D - I - - 0x0264FD 19:A4ED: 01        .byte $01    ; <あ>
- D - I - - 0x0264FE 19:A4EE: 01        .byte $01    ; <あ>
- D - I - - 0x0264FF 19:A4EF: 01        .byte $01    ; <あ>
- D - I - - 0x026500 19:A4F0: 7B        .byte $7B    ; <。>
- D - I - - 0x026501 19:A4F1: 79        .byte $79    ; <!>
- D - I - - 0x026502 19:A4F2: 01        .byte $01    ; <あ>
- D - I - - 0x026503 19:A4F3: 01        .byte $01    ; <あ>
- D - I - - 0x026504 19:A4F4: 01        .byte $01    ; <あ>
- D - I - - 0x026505 19:A4F5: 7B        .byte $7B    ; <。>
- D - I - - 0x026506 19:A4F6: 79        .byte $79    ; <!>
- D - I - - 0x026507 19:A4F7: 01        .byte $01    ; <あ>
- D - I - - 0x026508 19:A4F8: 00        .byte $00
- D - I - - 0x026509 19:A4F9: 00        .byte $00
- D - I - - 0x02650A 19:A4FA: 00        .byte $00
- D - I - - 0x02650B 19:A4FB: 00        .byte $00
- D - I - - 0x02650C 19:A4FC: 00        .byte $00
- D - I - - 0x02650D 19:A4FD: 00        .byte $00
- D - I - - 0x02650E 19:A4FE: 00        .byte $00
- D - I - - 0x02650F 19:A4FF: 00        .byte $00
- D - I - - 0x026510 19:A500: 6F        .byte $6F    ; <ッ>
- D - I - - 0x026511 19:A501: 74        .byte $74    ; <ィ>
- D - I - - 0x026512 19:A502: 01        .byte $01    ; <あ>
- D - I - - 0x026513 19:A503: 01        .byte $01    ; <あ>
- D - I - - 0x026514 19:A504: 76        .byte $76    ; <ォ>
- D - I - - 0x026515 19:A505: 77        .byte $77    ; <:>
- D - I - - 0x026516 19:A506: 7C        .byte $7C    ; <~>
- D - I - - 0x026517 19:A507: 01        .byte $01    ; <あ>
- D - I - - 0x026518 19:A508: 01        .byte $01    ; <あ>
- D - I - - 0x026519 19:A509: 15        .byte $15    ; <な>
- D - I - - 0x02651A 19:A50A: 14        .byte $14    ; <と>
- D - I - - 0x02651B 19:A50B: 01        .byte $01    ; <あ>
- D - I - - 0x02651C 19:A50C: 01        .byte $01    ; <あ>
- D - I - - 0x02651D 19:A50D: 01        .byte $01    ; <あ>
- D - I - - 0x02651E 19:A50E: 01        .byte $01    ; <あ>
- D - I - - 0x02651F 19:A50F: 01        .byte $01    ; <あ>
- D - I - - 0x026520 19:A510: 01        .byte $01    ; <あ>
- D - I - - 0x026521 19:A511: 73        .byte $73    ; <ヮ>
- D - I - - 0x026522 19:A512: 71        .byte $71    ; <ュ>
- D - I - - 0x026523 19:A513: 7B        .byte $7B    ; <。>
- D - I - - 0x026524 19:A514: 01        .byte $01    ; <あ>
- D - I - - 0x026525 19:A515: 01        .byte $01    ; <あ>
- D - I - - 0x026526 19:A516: 73        .byte $73    ; <ヮ>
- D - I - - 0x026527 19:A517: 71        .byte $71    ; <ュ>
- D - I - - 0x026528 19:A518: 00        .byte $00
- D - I - - 0x026529 19:A519: 00        .byte $00
- D - I - - 0x02652A 19:A51A: 00        .byte $00
- D - I - - 0x02652B 19:A51B: 00        .byte $00
- D - I - - 0x02652C 19:A51C: 00        .byte $00
- D - I - - 0x02652D 19:A51D: 00        .byte $00
- D - I - - 0x02652E 19:A51E: 00        .byte $00
- D - I - - 0x02652F 19:A51F: 00        .byte $00
- D - I - - 0x026530 19:A520: 79        .byte $79    ; <!>
- D - I - - 0x026531 19:A521: 01        .byte $01    ; <あ>
- D - I - - 0x026532 19:A522: 7A        .byte $7A    ; <、>
- D - I - - 0x026533 19:A523: 78        .byte $78    ; <?>
- D - I - - 0x026534 19:A524: 7B        .byte $7B    ; <。>
- D - I - - 0x026535 19:A525: 79        .byte $79    ; <!>
- D - I - - 0x026536 19:A526: 01        .byte $01    ; <あ>
- D - I - - 0x026537 19:A527: 7A        .byte $7A    ; <、>
- D - I - - 0x026538 19:A528: 00        .byte $00
- D - I - - 0x026539 19:A529: 00        .byte $00
- D - I - - 0x02653A 19:A52A: 00        .byte $00
- D - I - - 0x02653B 19:A52B: 00        .byte $00
- D - I - - 0x02653C 19:A52C: 00        .byte $00
- D - I - - 0x02653D 19:A52D: 00        .byte $00
- D - I - - 0x02653E 19:A52E: 00        .byte $00
- D - I - - 0x02653F 19:A52F: 00        .byte $00
- D - I - - 0x026540 19:A530: 01        .byte $01    ; <あ>
- D - I - - 0x026541 19:A531: 73        .byte $73    ; <ヮ>
- D - I - - 0x026542 19:A532: 71        .byte $71    ; <ュ>
- D - I - - 0x026543 19:A533: 7B        .byte $7B    ; <。>
- D - I - - 0x026544 19:A534: 01        .byte $01    ; <あ>
- D - I - - 0x026545 19:A535: 01        .byte $01    ; <あ>
- D - I - - 0x026546 19:A536: 73        .byte $73    ; <ヮ>
- D - I - - 0x026547 19:A537: 71        .byte $71    ; <ュ>
- D - I - - 0x026548 19:A538: 01        .byte $01    ; <あ>
- D - I - - 0x026549 19:A539: 01        .byte $01    ; <あ>
- D - I - - 0x02654A 19:A53A: 01        .byte $01    ; <あ>
- D - I - - 0x02654B 19:A53B: 73        .byte $73    ; <ヮ>
- D - I - - 0x02654C 19:A53C: 01        .byte $01    ; <あ>
- D - I - - 0x02654D 19:A53D: 01        .byte $01    ; <あ>
- D - I - - 0x02654E 19:A53E: 01        .byte $01    ; <あ>
- D - I - - 0x02654F 19:A53F: 01        .byte $01    ; <あ>
- D - I - - 0x026550 19:A540: 79        .byte $79    ; <!>
- D - I - - 0x026551 19:A541: 01        .byte $01    ; <あ>
- D - I - - 0x026552 19:A542: 7A        .byte $7A    ; <、>
- D - I - - 0x026553 19:A543: 78        .byte $78    ; <?>
- D - I - - 0x026554 19:A544: 7B        .byte $7B    ; <。>
- D - I - - 0x026555 19:A545: 79        .byte $79    ; <!>
- D - I - - 0x026556 19:A546: 01        .byte $01    ; <あ>
- D - I - - 0x026557 19:A547: 7A        .byte $7A    ; <、>
- D - I - - 0x026558 19:A548: 71        .byte $71    ; <ュ>
- D - I - - 0x026559 19:A549: 7B        .byte $7B    ; <。>
- D - I - - 0x02655A 19:A54A: 79        .byte $79    ; <!>
- D - I - - 0x02655B 19:A54B: 01        .byte $01    ; <あ>
- D - I - - 0x02655C 19:A54C: 73        .byte $73    ; <ヮ>
- D - I - - 0x02655D 19:A54D: 71        .byte $71    ; <ュ>
- D - I - - 0x02655E 19:A54E: 7B        .byte $7B    ; <。>
- D - I - - 0x02655F 19:A54F: 79        .byte $79    ; <!>
- D - I - - 0x026560 19:A550: 72        .byte $72    ; <ョ>
- D - I - - 0x026561 19:A551: 70        .byte $70    ; <ャ>
- D - I - - 0x026562 19:A552: 70        .byte $70    ; <ャ>
- D - I - - 0x026563 19:A553: 70        .byte $70    ; <ャ>
- D - I - - 0x026564 19:A554: 78        .byte $78    ; <?>
- D - I - - 0x026565 19:A555: 72        .byte $72    ; <ョ>
- D - I - - 0x026566 19:A556: 70        .byte $70    ; <ャ>
- D - I - - 0x026567 19:A557: 70        .byte $70    ; <ャ>
- D - I - - 0x026568 19:A558: 7A        .byte $7A    ; <、>
- D - I - - 0x026569 19:A559: 78        .byte $78    ; <?>
- D - I - - 0x02656A 19:A55A: 72        .byte $72    ; <ョ>
- D - I - - 0x02656B 19:A55B: 70        .byte $70    ; <ャ>
- D - I - - 0x02656C 19:A55C: 01        .byte $01    ; <あ>
- D - I - - 0x02656D 19:A55D: 7A        .byte $7A    ; <、>
- D - I - - 0x02656E 19:A55E: 78        .byte $78    ; <?>
- D - I - - 0x02656F 19:A55F: 72        .byte $72    ; <ョ>
- D - I - - 0x026570 19:A560: 70        .byte $70    ; <ャ>
- D - I - - 0x026571 19:A561: 70        .byte $70    ; <ャ>
- D - I - - 0x026572 19:A562: 70        .byte $70    ; <ャ>
- D - I - - 0x026573 19:A563: 70        .byte $70    ; <ャ>
- D - I - - 0x026574 19:A564: 70        .byte $70    ; <ャ>
- D - I - - 0x026575 19:A565: 70        .byte $70    ; <ャ>
- D - I - - 0x026576 19:A566: 70        .byte $70    ; <ャ>
- D - I - - 0x026577 19:A567: 70        .byte $70    ; <ャ>
- D - I - - 0x026578 19:A568: 70        .byte $70    ; <ャ>
- D - I - - 0x026579 19:A569: 70        .byte $70    ; <ャ>
- D - I - - 0x02657A 19:A56A: 70        .byte $70    ; <ャ>
- D - I - - 0x02657B 19:A56B: 70        .byte $70    ; <ャ>
- D - I - - 0x02657C 19:A56C: 70        .byte $70    ; <ャ>
- D - I - - 0x02657D 19:A56D: 70        .byte $70    ; <ャ>
- D - I - - 0x02657E 19:A56E: 70        .byte $70    ; <ャ>
- D - I - - 0x02657F 19:A56F: 70        .byte $70    ; <ャ>
- D - I - - 0x026580 19:A570: 01        .byte $01    ; <あ>
- D - I - - 0x026581 19:A571: 01        .byte $01    ; <あ>
- D - I - - 0x026582 19:A572: 64        .byte $64    ; <ヤ>
- D - I - - 0x026583 19:A573: 65        .byte $65    ; <ユ>
- D - I - - 0x026584 19:A574: 01        .byte $01    ; <あ>
- D - I - - 0x026585 19:A575: 66        .byte $66    ; <ヨ>
- D - I - - 0x026586 19:A576: 67        .byte $67    ; <ラ>
- D - I - - 0x026587 19:A577: 6C        .byte $6C    ; <ワ>
- D - I - - 0x026588 19:A578: 01        .byte $01    ; <あ>
- D - I - - 0x026589 19:A579: 6D        .byte $6D    ; <ヲ>
- D - I - - 0x02658A 19:A57A: 6E        .byte $6E    ; <ン>
- D - I - - 0x02658B 19:A57B: 01        .byte $01    ; <あ>
- D - I - - 0x02658C 19:A57C: 01        .byte $01    ; <あ>
- D - I - - 0x02658D 19:A57D: 01        .byte $01    ; <あ>
- D - I - - 0x02658E 19:A57E: 01        .byte $01    ; <あ>
- D - I - - 0x02658F 19:A57F: 01        .byte $01    ; <あ>
- D - I - - 0x026590 19:A580: 01        .byte $01    ; <あ>
- D - I - - 0x026591 19:A581: 01        .byte $01    ; <あ>
- D - I - - 0x026592 19:A582: 68        .byte $68    ; <リ>
- D - I - - 0x026593 19:A583: 6A        .byte $6A    ; <レ>
- D - I - - 0x026594 19:A584: 01        .byte $01    ; <あ>
- D - I - - 0x026595 19:A585: 68        .byte $68    ; <リ>
- D - I - - 0x026596 19:A586: 6A        .byte $6A    ; <レ>
- D - I - - 0x026597 19:A587: 01        .byte $01    ; <あ>
- D - I - - 0x026598 19:A588: 00        .byte $00
- D - I - - 0x026599 19:A589: 00        .byte $00
- D - I - - 0x02659A 19:A58A: 00        .byte $00
- D - I - - 0x02659B 19:A58B: 00        .byte $00
- D - I - - 0x02659C 19:A58C: 00        .byte $00
- D - I - - 0x02659D 19:A58D: 00        .byte $00
- D - I - - 0x02659E 19:A58E: 00        .byte $00
- D - I - - 0x02659F 19:A58F: 00        .byte $00
- D - I - - 0x0265A0 19:A590: 01        .byte $01    ; <あ>
- D - I - - 0x0265A1 19:A591: 01        .byte $01    ; <あ>
- D - I - - 0x0265A2 19:A592: 01        .byte $01    ; <あ>
- D - I - - 0x0265A3 19:A593: 01        .byte $01    ; <あ>
- D - I - - 0x0265A4 19:A594: 01        .byte $01    ; <あ>
- D - I - - 0x0265A5 19:A595: 01        .byte $01    ; <あ>
- D - I - - 0x0265A6 19:A596: 01        .byte $01    ; <あ>
- D - I - - 0x0265A7 19:A597: 01        .byte $01    ; <あ>
- D - I - - 0x0265A8 19:A598: 01        .byte $01    ; <あ>
- D - I - - 0x0265A9 19:A599: 01        .byte $01    ; <あ>
- D - I - - 0x0265AA 19:A59A: 01        .byte $01    ; <あ>
- D - I - - 0x0265AB 19:A59B: 01        .byte $01    ; <あ>
- D - I - - 0x0265AC 19:A59C: 01        .byte $01    ; <あ>
- D - I - - 0x0265AD 19:A59D: 01        .byte $01    ; <あ>
- D - I - - 0x0265AE 19:A59E: 01        .byte $01    ; <あ>
- D - I - - 0x0265AF 19:A59F: 68        .byte $68    ; <リ>
- D - I - - 0x0265B0 19:A5A0: 01        .byte $01    ; <あ>
- D - I - - 0x0265B1 19:A5A1: 01        .byte $01    ; <あ>
- D - I - - 0x0265B2 19:A5A2: 68        .byte $68    ; <リ>
- D - I - - 0x0265B3 19:A5A3: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265B4 19:A5A4: 01        .byte $01    ; <あ>
- D - I - - 0x0265B5 19:A5A5: 68        .byte $68    ; <リ>
- D - I - - 0x0265B6 19:A5A6: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265B7 19:A5A7: 01        .byte $01    ; <あ>
- D - I - - 0x0265B8 19:A5A8: 68        .byte $68    ; <リ>
- D - I - - 0x0265B9 19:A5A9: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265BA 19:A5AA: 01        .byte $01    ; <あ>
- D - I - - 0x0265BB 19:A5AB: 01        .byte $01    ; <あ>
- D - I - - 0x0265BC 19:A5AC: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265BD 19:A5AD: 01        .byte $01    ; <あ>
- D - I - - 0x0265BE 19:A5AE: 01        .byte $01    ; <あ>
- D - I - - 0x0265BF 19:A5AF: 01        .byte $01    ; <あ>
- D - I - - 0x0265C0 19:A5B0: 62        .byte $62    ; <メ>
- D - I - - 0x0265C1 19:A5B1: 63        .byte $63    ; <モ>
- D - I - - 0x0265C2 19:A5B2: 01        .byte $01    ; <あ>
- D - I - - 0x0265C3 19:A5B3: 68        .byte $68    ; <リ>
- D - I - - 0x0265C4 19:A5B4: 63        .byte $63    ; <モ>
- D - I - - 0x0265C5 19:A5B5: 01        .byte $01    ; <あ>
- D - I - - 0x0265C6 19:A5B6: 68        .byte $68    ; <リ>
- D - I - - 0x0265C7 19:A5B7: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265C8 19:A5B8: 00        .byte $00
- D - I - - 0x0265C9 19:A5B9: 00        .byte $00
- D - I - - 0x0265CA 19:A5BA: 00        .byte $00
- D - I - - 0x0265CB 19:A5BB: 00        .byte $00
- D - I - - 0x0265CC 19:A5BC: 00        .byte $00
- D - I - - 0x0265CD 19:A5BD: 00        .byte $00
- D - I - - 0x0265CE 19:A5BE: 00        .byte $00
- D - I - - 0x0265CF 19:A5BF: 00        .byte $00
- D - I - - 0x0265D0 19:A5C0: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265D1 19:A5C1: 69        .byte $69    ; <ル>
- D - I - - 0x0265D2 19:A5C2: 6B        .byte $6B    ; <ロ>
- D - I - - 0x0265D3 19:A5C3: 01        .byte $01    ; <あ>
- D - I - - 0x0265D4 19:A5C4: 69        .byte $69    ; <ル>
- D - I - - 0x0265D5 19:A5C5: 6B        .byte $6B    ; <ロ>
- D - I - - 0x0265D6 19:A5C6: 01        .byte $01    ; <あ>
- D - I - - 0x0265D7 19:A5C7: 01        .byte $01    ; <あ>
- D - I - - 0x0265D8 19:A5C8: 00        .byte $00
- D - I - - 0x0265D9 19:A5C9: 00        .byte $00
- D - I - - 0x0265DA 19:A5CA: 00        .byte $00
- D - I - - 0x0265DB 19:A5CB: 00        .byte $00
- D - I - - 0x0265DC 19:A5CC: 00        .byte $00
- D - I - - 0x0265DD 19:A5CD: 00        .byte $00
- D - I - - 0x0265DE 19:A5CE: 00        .byte $00
- D - I - - 0x0265DF 19:A5CF: 00        .byte $00
- D - I - - 0x0265E0 19:A5D0: 60        .byte $60    ; <ミ>
- D - I - - 0x0265E1 19:A5D1: 60        .byte $60    ; <ミ>
- D - I - - 0x0265E2 19:A5D2: 60        .byte $60    ; <ミ>
- D - I - - 0x0265E3 19:A5D3: 61        .byte $61    ; <ム>
- D - I - - 0x0265E4 19:A5D4: 60        .byte $60    ; <ミ>
- D - I - - 0x0265E5 19:A5D5: 60        .byte $60    ; <ミ>
- D - I - - 0x0265E6 19:A5D6: 61        .byte $61    ; <ム>
- D - I - - 0x0265E7 19:A5D7: 62        .byte $62    ; <メ>
- D - I - - 0x0265E8 19:A5D8: 60        .byte $60    ; <ミ>
- D - I - - 0x0265E9 19:A5D9: 61        .byte $61    ; <ム>
- D - I - - 0x0265EA 19:A5DA: 62        .byte $62    ; <メ>
- D - I - - 0x0265EB 19:A5DB: 63        .byte $63    ; <モ>
- D - I - - 0x0265EC 19:A5DC: 61        .byte $61    ; <ム>
- D - I - - 0x0265ED 19:A5DD: 62        .byte $62    ; <メ>
- D - I - - 0x0265EE 19:A5DE: 63        .byte $63    ; <モ>
- D - I - - 0x0265EF 19:A5DF: 01        .byte $01    ; <あ>
- D - I - - 0x0265F0 19:A5E0: 62        .byte $62    ; <メ>
- D - I - - 0x0265F1 19:A5E1: 63        .byte $63    ; <モ>
- D - I - - 0x0265F2 19:A5E2: 01        .byte $01    ; <あ>
- D - I - - 0x0265F3 19:A5E3: 68        .byte $68    ; <リ>
- D - I - - 0x0265F4 19:A5E4: 63        .byte $63    ; <モ>
- D - I - - 0x0265F5 19:A5E5: 01        .byte $01    ; <あ>
- D - I - - 0x0265F6 19:A5E6: 68        .byte $68    ; <リ>
- D - I - - 0x0265F7 19:A5E7: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265F8 19:A5E8: 01        .byte $01    ; <あ>
- D - I - - 0x0265F9 19:A5E9: 68        .byte $68    ; <リ>
- D - I - - 0x0265FA 19:A5EA: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265FB 19:A5EB: 69        .byte $69    ; <ル>
- D - I - - 0x0265FC 19:A5EC: 68        .byte $68    ; <リ>
- D - I - - 0x0265FD 19:A5ED: 6A        .byte $6A    ; <レ>
- D - I - - 0x0265FE 19:A5EE: 69        .byte $69    ; <ル>
- D - I - - 0x0265FF 19:A5EF: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026600 19:A5F0: 6A        .byte $6A    ; <レ>
- D - I - - 0x026601 19:A5F1: 69        .byte $69    ; <ル>
- D - I - - 0x026602 19:A5F2: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026603 19:A5F3: 01        .byte $01    ; <あ>
- D - I - - 0x026604 19:A5F4: 69        .byte $69    ; <ル>
- D - I - - 0x026605 19:A5F5: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026606 19:A5F6: 01        .byte $01    ; <あ>
- D - I - - 0x026607 19:A5F7: 01        .byte $01    ; <あ>
- D - I - - 0x026608 19:A5F8: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026609 19:A5F9: 01        .byte $01    ; <あ>
- D - I - - 0x02660A 19:A5FA: 01        .byte $01    ; <あ>
- D - I - - 0x02660B 19:A5FB: 01        .byte $01    ; <あ>
- D - I - - 0x02660C 19:A5FC: 01        .byte $01    ; <あ>
- D - I - - 0x02660D 19:A5FD: 01        .byte $01    ; <あ>
- D - I - - 0x02660E 19:A5FE: 01        .byte $01    ; <あ>
- D - I - - 0x02660F 19:A5FF: 01        .byte $01    ; <あ>
- D - I - - 0x026610 19:A600: 60        .byte $60    ; <ミ>
- D - I - - 0x026611 19:A601: 60        .byte $60    ; <ミ>
- D - I - - 0x026612 19:A602: 60        .byte $60    ; <ミ>
- D - I - - 0x026613 19:A603: 60        .byte $60    ; <ミ>
- D - I - - 0x026614 19:A604: 60        .byte $60    ; <ミ>
- D - I - - 0x026615 19:A605: 60        .byte $60    ; <ミ>
- D - I - - 0x026616 19:A606: 60        .byte $60    ; <ミ>
- D - I - - 0x026617 19:A607: 60        .byte $60    ; <ミ>
- D - I - - 0x026618 19:A608: 60        .byte $60    ; <ミ>
- D - I - - 0x026619 19:A609: 60        .byte $60    ; <ミ>
- D - I - - 0x02661A 19:A60A: 60        .byte $60    ; <ミ>
- D - I - - 0x02661B 19:A60B: 60        .byte $60    ; <ミ>
- D - I - - 0x02661C 19:A60C: 60        .byte $60    ; <ミ>
- D - I - - 0x02661D 19:A60D: 60        .byte $60    ; <ミ>
- D - I - - 0x02661E 19:A60E: 60        .byte $60    ; <ミ>
- D - I - - 0x02661F 19:A60F: 60        .byte $60    ; <ミ>
- D - I - - 0x026620 19:A610: 01        .byte $01    ; <あ>
- D - I - - 0x026621 19:A611: 01        .byte $01    ; <あ>
- D - I - - 0x026622 19:A612: 01        .byte $01    ; <あ>
- D - I - - 0x026623 19:A613: 01        .byte $01    ; <あ>
- D - I - - 0x026624 19:A614: 01        .byte $01    ; <あ>
- D - I - - 0x026625 19:A615: 01        .byte $01    ; <あ>
- D - I - - 0x026626 19:A616: 01        .byte $01    ; <あ>
- D - I - - 0x026627 19:A617: 01        .byte $01    ; <あ>
- D - I - - 0x026628 19:A618: 01        .byte $01    ; <あ>
- D - I - - 0x026629 19:A619: 01        .byte $01    ; <あ>
- D - I - - 0x02662A 19:A61A: 51        .byte $51    ; <チ>
- D - I - - 0x02662B 19:A61B: 01        .byte $01    ; <あ>
- D - I - - 0x02662C 19:A61C: 01        .byte $01    ; <あ>
- D - I - - 0x02662D 19:A61D: 01        .byte $01    ; <あ>
- D - I - - 0x02662E 19:A61E: 45        .byte $45    ; <オ>
- D - I - - 0x02662F 19:A61F: 50        .byte $50    ; <タ>
- D - I - - 0x026630 19:A620: 01        .byte $01    ; <あ>
- D - I - - 0x026631 19:A621: 01        .byte $01    ; <あ>
- D - I - - 0x026632 19:A622: 01        .byte $01    ; <あ>
- D - I - - 0x026633 19:A623: 01        .byte $01    ; <あ>
- D - I - - 0x026634 19:A624: 01        .byte $01    ; <あ>
- D - I - - 0x026635 19:A625: 01        .byte $01    ; <あ>
- D - I - - 0x026636 19:A626: 01        .byte $01    ; <あ>
- D - I - - 0x026637 19:A627: 01        .byte $01    ; <あ>
- D - I - - 0x026638 19:A628: 45        .byte $45    ; <オ>
- D - I - - 0x026639 19:A629: 50        .byte $50    ; <タ>
- D - I - - 0x02663A 19:A62A: 51        .byte $51    ; <チ>
- D - I - - 0x02663B 19:A62B: 01        .byte $01    ; <あ>
- D - I - - 0x02663C 19:A62C: 51        .byte $51    ; <チ>
- D - I - - 0x02663D 19:A62D: 01        .byte $01    ; <あ>
- D - I - - 0x02663E 19:A62E: 45        .byte $45    ; <オ>
- D - I - - 0x02663F 19:A62F: 50        .byte $50    ; <タ>
- D - I - - 0x026640 19:A630: 01        .byte $01    ; <あ>
- D - I - - 0x026641 19:A631: 01        .byte $01    ; <あ>
- D - I - - 0x026642 19:A632: 01        .byte $01    ; <あ>
- D - I - - 0x026643 19:A633: 01        .byte $01    ; <あ>
- D - I - - 0x026644 19:A634: 01        .byte $01    ; <あ>
- D - I - - 0x026645 19:A635: 01        .byte $01    ; <あ>
- D - I - - 0x026646 19:A636: 01        .byte $01    ; <あ>
- D - I - - 0x026647 19:A637: 01        .byte $01    ; <あ>
- D - I - - 0x026648 19:A638: 45        .byte $45    ; <オ>
- D - I - - 0x026649 19:A639: 05        .byte $05    ; <お>
- D - I - - 0x02664A 19:A63A: 58        .byte $58    ; <ネ>
- D - I - - 0x02664B 19:A63B: 54        .byte $54    ; <ト>
- D - I - - 0x02664C 19:A63C: 51        .byte $51    ; <チ>
- D - I - - 0x02664D 19:A63D: 05        .byte $05    ; <お>
- D - I - - 0x02664E 19:A63E: 58        .byte $58    ; <ネ>
- D - I - - 0x02664F 19:A63F: 54        .byte $54    ; <ト>
- D - I - - 0x026650 19:A640: 01        .byte $01    ; <あ>
- D - I - - 0x026651 19:A641: 01        .byte $01    ; <あ>
- D - I - - 0x026652 19:A642: 01        .byte $01    ; <あ>
- D - I - - 0x026653 19:A643: 01        .byte $01    ; <あ>
- D - I - - 0x026654 19:A644: 01        .byte $01    ; <あ>
- D - I - - 0x026655 19:A645: 01        .byte $01    ; <あ>
- D - I - - 0x026656 19:A646: 01        .byte $01    ; <あ>
- D - I - - 0x026657 19:A647: 01        .byte $01    ; <あ>
- D - I - - 0x026658 19:A648: 01        .byte $01    ; <あ>
- D - I - - 0x026659 19:A649: 01        .byte $01    ; <あ>
- D - I - - 0x02665A 19:A64A: 01        .byte $01    ; <あ>
- D - I - - 0x02665B 19:A64B: 01        .byte $01    ; <あ>
- D - I - - 0x02665C 19:A64C: 01        .byte $01    ; <あ>
- D - I - - 0x02665D 19:A64D: 01        .byte $01    ; <あ>
- D - I - - 0x02665E 19:A64E: 01        .byte $01    ; <あ>
- D - I - - 0x02665F 19:A64F: 01        .byte $01    ; <あ>
- D - I - - 0x026660 19:A650: 01        .byte $01    ; <あ>
- D - I - - 0x026661 19:A651: 01        .byte $01    ; <あ>
- D - I - - 0x026662 19:A652: 51        .byte $51    ; <チ>
- D - I - - 0x026663 19:A653: 01        .byte $01    ; <あ>
- D - I - - 0x026664 19:A654: 01        .byte $01    ; <あ>
- D - I - - 0x026665 19:A655: 01        .byte $01    ; <あ>
- D - I - - 0x026666 19:A656: 45        .byte $45    ; <オ>
- D - I - - 0x026667 19:A657: 50        .byte $50    ; <タ>
- D - I - - 0x026668 19:A658: 01        .byte $01    ; <あ>
- D - I - - 0x026669 19:A659: 01        .byte $01    ; <あ>
- D - I - - 0x02666A 19:A65A: 51        .byte $51    ; <チ>
- D - I - - 0x02666B 19:A65B: 01        .byte $01    ; <あ>
- D - I - - 0x02666C 19:A65C: 01        .byte $01    ; <あ>
- D - I - - 0x02666D 19:A65D: 01        .byte $01    ; <あ>
- D - I - - 0x02666E 19:A65E: 45        .byte $45    ; <オ>
- D - I - - 0x02666F 19:A65F: 50        .byte $50    ; <タ>
- D - I - - 0x026670 19:A660: 45        .byte $45    ; <オ>
- D - I - - 0x026671 19:A661: 50        .byte $50    ; <タ>
- D - I - - 0x026672 19:A662: 51        .byte $51    ; <チ>
- D - I - - 0x026673 19:A663: 01        .byte $01    ; <あ>
- D - I - - 0x026674 19:A664: 51        .byte $51    ; <チ>
- D - I - - 0x026675 19:A665: 01        .byte $01    ; <あ>
- D - I - - 0x026676 19:A666: 45        .byte $45    ; <オ>
- D - I - - 0x026677 19:A667: 50        .byte $50    ; <タ>
- D - I - - 0x026678 19:A668: 45        .byte $45    ; <オ>
- D - I - - 0x026679 19:A669: 50        .byte $50    ; <タ>
- D - I - - 0x02667A 19:A66A: 51        .byte $51    ; <チ>
- D - I - - 0x02667B 19:A66B: 01        .byte $01    ; <あ>
- D - I - - 0x02667C 19:A66C: 51        .byte $51    ; <チ>
- D - I - - 0x02667D 19:A66D: 01        .byte $01    ; <あ>
- D - I - - 0x02667E 19:A66E: 45        .byte $45    ; <オ>
- D - I - - 0x02667F 19:A66F: 50        .byte $50    ; <タ>
- D - I - - 0x026680 19:A670: 45        .byte $45    ; <オ>
- D - I - - 0x026681 19:A671: 05        .byte $05    ; <お>
- D - I - - 0x026682 19:A672: 58        .byte $58    ; <ネ>
- D - I - - 0x026683 19:A673: 54        .byte $54    ; <ト>
- D - I - - 0x026684 19:A674: 51        .byte $51    ; <チ>
- D - I - - 0x026685 19:A675: 05        .byte $05    ; <お>
- D - I - - 0x026686 19:A676: 58        .byte $58    ; <ネ>
- D - I - - 0x026687 19:A677: 54        .byte $54    ; <ト>
- D - I - - 0x026688 19:A678: 45        .byte $45    ; <オ>
- D - I - - 0x026689 19:A679: 05        .byte $05    ; <お>
- D - I - - 0x02668A 19:A67A: 58        .byte $58    ; <ネ>
- D - I - - 0x02668B 19:A67B: 54        .byte $54    ; <ト>
- D - I - - 0x02668C 19:A67C: 51        .byte $51    ; <チ>
- D - I - - 0x02668D 19:A67D: 05        .byte $05    ; <お>
- D - I - - 0x02668E 19:A67E: 58        .byte $58    ; <ネ>
- D - I - - 0x02668F 19:A67F: 54        .byte $54    ; <ト>
- D - I - - 0x026690 19:A680: 01        .byte $01    ; <あ>
- D - I - - 0x026691 19:A681: 01        .byte $01    ; <あ>
- D - I - - 0x026692 19:A682: 01        .byte $01    ; <あ>
- D - I - - 0x026693 19:A683: 01        .byte $01    ; <あ>
- D - I - - 0x026694 19:A684: 01        .byte $01    ; <あ>
- D - I - - 0x026695 19:A685: 01        .byte $01    ; <あ>
- D - I - - 0x026696 19:A686: 01        .byte $01    ; <あ>
- D - I - - 0x026697 19:A687: 01        .byte $01    ; <あ>
- D - I - - 0x026698 19:A688: 01        .byte $01    ; <あ>
- D - I - - 0x026699 19:A689: 01        .byte $01    ; <あ>
- D - I - - 0x02669A 19:A68A: 01        .byte $01    ; <あ>
- D - I - - 0x02669B 19:A68B: 01        .byte $01    ; <あ>
- D - I - - 0x02669C 19:A68C: 01        .byte $01    ; <あ>
- D - I - - 0x02669D 19:A68D: 01        .byte $01    ; <あ>
- D - I - - 0x02669E 19:A68E: 01        .byte $01    ; <あ>
- D - I - - 0x02669F 19:A68F: 01        .byte $01    ; <あ>
- D - I - - 0x0266A0 19:A690: 01        .byte $01    ; <あ>
- D - I - - 0x0266A1 19:A691: 01        .byte $01    ; <あ>
- D - I - - 0x0266A2 19:A692: 01        .byte $01    ; <あ>
- D - I - - 0x0266A3 19:A693: 01        .byte $01    ; <あ>
- D - I - - 0x0266A4 19:A694: 01        .byte $01    ; <あ>
- D - I - - 0x0266A5 19:A695: 01        .byte $01    ; <あ>
- D - I - - 0x0266A6 19:A696: 01        .byte $01    ; <あ>
- D - I - - 0x0266A7 19:A697: 01        .byte $01    ; <あ>
- D - I - - 0x0266A8 19:A698: 01        .byte $01    ; <あ>
- D - I - - 0x0266A9 19:A699: 01        .byte $01    ; <あ>
- D - I - - 0x0266AA 19:A69A: 01        .byte $01    ; <あ>
- D - I - - 0x0266AB 19:A69B: 01        .byte $01    ; <あ>
- D - I - - 0x0266AC 19:A69C: 01        .byte $01    ; <あ>
- D - I - - 0x0266AD 19:A69D: 01        .byte $01    ; <あ>
- D - I - - 0x0266AE 19:A69E: 01        .byte $01    ; <あ>
- D - I - - 0x0266AF 19:A69F: 01        .byte $01    ; <あ>
- D - I - - 0x0266B0 19:A6A0: 01        .byte $01    ; <あ>
- D - I - - 0x0266B1 19:A6A1: 01        .byte $01    ; <あ>
- D - I - - 0x0266B2 19:A6A2: 01        .byte $01    ; <あ>
- D - I - - 0x0266B3 19:A6A3: 01        .byte $01    ; <あ>
- D - I - - 0x0266B4 19:A6A4: 01        .byte $01    ; <あ>
- D - I - - 0x0266B5 19:A6A5: 01        .byte $01    ; <あ>
- D - I - - 0x0266B6 19:A6A6: 01        .byte $01    ; <あ>
- D - I - - 0x0266B7 19:A6A7: 01        .byte $01    ; <あ>
- D - I - - 0x0266B8 19:A6A8: 47        .byte $47    ; <キ>
- D - I - - 0x0266B9 19:A6A9: 58        .byte $58    ; <ネ>
- D - I - - 0x0266BA 19:A6AA: 05        .byte $05    ; <お>
- D - I - - 0x0266BB 19:A6AB: 56        .byte $56    ; <ニ>
- D - I - - 0x0266BC 19:A6AC: 47        .byte $47    ; <キ>
- D - I - - 0x0266BD 19:A6AD: 58        .byte $58    ; <ネ>
- D - I - - 0x0266BE 19:A6AE: 05        .byte $05    ; <お>
- D - I - - 0x0266BF 19:A6AF: 52        .byte $52    ; <ツ>
- D - I - - 0x0266C0 19:A6B0: 01        .byte $01    ; <あ>
- D - I - - 0x0266C1 19:A6B1: 01        .byte $01    ; <あ>
- D - I - - 0x0266C2 19:A6B2: 01        .byte $01    ; <あ>
- D - I - - 0x0266C3 19:A6B3: 01        .byte $01    ; <あ>
- D - I - - 0x0266C4 19:A6B4: 01        .byte $01    ; <あ>
- D - I - - 0x0266C5 19:A6B5: 01        .byte $01    ; <あ>
- D - I - - 0x0266C6 19:A6B6: 01        .byte $01    ; <あ>
- D - I - - 0x0266C7 19:A6B7: 01        .byte $01    ; <あ>
- D - I - - 0x0266C8 19:A6B8: 01        .byte $01    ; <あ>
- D - I - - 0x0266C9 19:A6B9: 52        .byte $52    ; <ツ>
- D - I - - 0x0266CA 19:A6BA: 53        .byte $53    ; <テ>
- D - I - - 0x0266CB 19:A6BB: 56        .byte $56    ; <ニ>
- D - I - - 0x0266CC 19:A6BC: 53        .byte $53    ; <テ>
- D - I - - 0x0266CD 19:A6BD: 56        .byte $56    ; <ニ>
- D - I - - 0x0266CE 19:A6BE: 01        .byte $01    ; <あ>
- D - I - - 0x0266CF 19:A6BF: 52        .byte $52    ; <ツ>
- D - I - - 0x0266D0 19:A6C0: 01        .byte $01    ; <あ>
- D - I - - 0x0266D1 19:A6C1: 01        .byte $01    ; <あ>
- D - I - - 0x0266D2 19:A6C2: 01        .byte $01    ; <あ>
- D - I - - 0x0266D3 19:A6C3: 01        .byte $01    ; <あ>
- D - I - - 0x0266D4 19:A6C4: 01        .byte $01    ; <あ>
- D - I - - 0x0266D5 19:A6C5: 01        .byte $01    ; <あ>
- D - I - - 0x0266D6 19:A6C6: 01        .byte $01    ; <あ>
- D - I - - 0x0266D7 19:A6C7: 01        .byte $01    ; <あ>
- D - I - - 0x0266D8 19:A6C8: 01        .byte $01    ; <あ>
- D - I - - 0x0266D9 19:A6C9: 52        .byte $52    ; <ツ>
- D - I - - 0x0266DA 19:A6CA: 01        .byte $01    ; <あ>
- D - I - - 0x0266DB 19:A6CB: 01        .byte $01    ; <あ>
- D - I - - 0x0266DC 19:A6CC: 53        .byte $53    ; <テ>
- D - I - - 0x0266DD 19:A6CD: 56        .byte $56    ; <ニ>
- D - I - - 0x0266DE 19:A6CE: 01        .byte $01    ; <あ>
- D - I - - 0x0266DF 19:A6CF: 01        .byte $01    ; <あ>
- D - I - - 0x0266E0 19:A6D0: 47        .byte $47    ; <キ>
- D - I - - 0x0266E1 19:A6D1: 58        .byte $58    ; <ネ>
- D - I - - 0x0266E2 19:A6D2: 05        .byte $05    ; <お>
- D - I - - 0x0266E3 19:A6D3: 56        .byte $56    ; <ニ>
- D - I - - 0x0266E4 19:A6D4: 47        .byte $47    ; <キ>
- D - I - - 0x0266E5 19:A6D5: 58        .byte $58    ; <ネ>
- D - I - - 0x0266E6 19:A6D6: 05        .byte $05    ; <お>
- D - I - - 0x0266E7 19:A6D7: 52        .byte $52    ; <ツ>
- D - I - - 0x0266E8 19:A6D8: 47        .byte $47    ; <キ>
- D - I - - 0x0266E9 19:A6D9: 58        .byte $58    ; <ネ>
- D - I - - 0x0266EA 19:A6DA: 05        .byte $05    ; <お>
- D - I - - 0x0266EB 19:A6DB: 56        .byte $56    ; <ニ>
- D - I - - 0x0266EC 19:A6DC: 47        .byte $47    ; <キ>
- D - I - - 0x0266ED 19:A6DD: 58        .byte $58    ; <ネ>
- D - I - - 0x0266EE 19:A6DE: 05        .byte $05    ; <お>
- D - I - - 0x0266EF 19:A6DF: 52        .byte $52    ; <ツ>
- D - I - - 0x0266F0 19:A6E0: 01        .byte $01    ; <あ>
- D - I - - 0x0266F1 19:A6E1: 52        .byte $52    ; <ツ>
- D - I - - 0x0266F2 19:A6E2: 53        .byte $53    ; <テ>
- D - I - - 0x0266F3 19:A6E3: 56        .byte $56    ; <ニ>
- D - I - - 0x0266F4 19:A6E4: 53        .byte $53    ; <テ>
- D - I - - 0x0266F5 19:A6E5: 56        .byte $56    ; <ニ>
- D - I - - 0x0266F6 19:A6E6: 01        .byte $01    ; <あ>
- D - I - - 0x0266F7 19:A6E7: 52        .byte $52    ; <ツ>
- D - I - - 0x0266F8 19:A6E8: 01        .byte $01    ; <あ>
- D - I - - 0x0266F9 19:A6E9: 52        .byte $52    ; <ツ>
- D - I - - 0x0266FA 19:A6EA: 53        .byte $53    ; <テ>
- D - I - - 0x0266FB 19:A6EB: 56        .byte $56    ; <ニ>
- D - I - - 0x0266FC 19:A6EC: 53        .byte $53    ; <テ>
- D - I - - 0x0266FD 19:A6ED: 56        .byte $56    ; <ニ>
- D - I - - 0x0266FE 19:A6EE: 01        .byte $01    ; <あ>
- D - I - - 0x0266FF 19:A6EF: 52        .byte $52    ; <ツ>
- D - I - - 0x026700 19:A6F0: 01        .byte $01    ; <あ>
- D - I - - 0x026701 19:A6F1: 52        .byte $52    ; <ツ>
- D - I - - 0x026702 19:A6F2: 01        .byte $01    ; <あ>
- D - I - - 0x026703 19:A6F3: 01        .byte $01    ; <あ>
- D - I - - 0x026704 19:A6F4: 53        .byte $53    ; <テ>
- D - I - - 0x026705 19:A6F5: 56        .byte $56    ; <ニ>
- D - I - - 0x026706 19:A6F6: 01        .byte $01    ; <あ>
- D - I - - 0x026707 19:A6F7: 01        .byte $01    ; <あ>
- D - I - - 0x026708 19:A6F8: 01        .byte $01    ; <あ>
- D - I - - 0x026709 19:A6F9: 52        .byte $52    ; <ツ>
- D - I - - 0x02670A 19:A6FA: 01        .byte $01    ; <あ>
- D - I - - 0x02670B 19:A6FB: 01        .byte $01    ; <あ>
- D - I - - 0x02670C 19:A6FC: 53        .byte $53    ; <テ>
- D - I - - 0x02670D 19:A6FD: 56        .byte $56    ; <ニ>
- D - I - - 0x02670E 19:A6FE: 01        .byte $01    ; <あ>
- D - I - - 0x02670F 19:A6FF: 01        .byte $01    ; <あ>
- D - I - - 0x026710 19:A700: 01        .byte $01    ; <あ>
- D - I - - 0x026711 19:A701: 01        .byte $01    ; <あ>
- D - I - - 0x026712 19:A702: 01        .byte $01    ; <あ>
- D - I - - 0x026713 19:A703: 01        .byte $01    ; <あ>
- D - I - - 0x026714 19:A704: 01        .byte $01    ; <あ>
- D - I - - 0x026715 19:A705: 01        .byte $01    ; <あ>
- D - I - - 0x026716 19:A706: 01        .byte $01    ; <あ>
- D - I - - 0x026717 19:A707: 01        .byte $01    ; <あ>
- D - I - - 0x026718 19:A708: 01        .byte $01    ; <あ>
- D - I - - 0x026719 19:A709: 01        .byte $01    ; <あ>
- D - I - - 0x02671A 19:A70A: 01        .byte $01    ; <あ>
- D - I - - 0x02671B 19:A70B: 01        .byte $01    ; <あ>
- D - I - - 0x02671C 19:A70C: 01        .byte $01    ; <あ>
- D - I - - 0x02671D 19:A70D: 01        .byte $01    ; <あ>
- D - I - - 0x02671E 19:A70E: 01        .byte $01    ; <あ>
- D - I - - 0x02671F 19:A70F: 01        .byte $01    ; <あ>


; миникарта во время паса/перепасовки
- D - I - - 0x026720 19:A710: 00        .byte $00
- D - I - - 0x026721 19:A711: 00        .byte $00
- D - I - - 0x026722 19:A712: 00        .byte $00
- D - I - - 0x026723 19:A713: 00        .byte $00
- D - I - - 0x026724 19:A714: 00        .byte $00
- D - I - - 0x026725 19:A715: 00        .byte $00
- D - I - - 0x026726 19:A716: 00        .byte $00
- D - I - - 0x026727 19:A717: 00        .byte $00
- D - I - - 0x026728 19:A718: 00        .byte $00
- D - I - - 0x026729 19:A719: 00        .byte $00
- D - I - - 0x02672A 19:A71A: C9        .byte $C9    ; <ぴ>
- D - I - - 0x02672B 19:A71B: D2        .byte $D2
- D - I - - 0x02672C 19:A71C: 00        .byte $00
- D - I - - 0x02672D 19:A71D: 00        .byte $00
- D - I - - 0x02672E 19:A71E: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02672F 19:A71F: FF        .byte $FF
- D - I - - 0x026730 19:A720: 00        .byte $00
- D - I - - 0x026731 19:A721: 00        .byte $00
- D - I - - 0x026732 19:A722: 00        .byte $00
- D - I - - 0x026733 19:A723: 00        .byte $00
- D - I - - 0x026734 19:A724: 00        .byte $00
- D - I - - 0x026735 19:A725: 00        .byte $00
- D - I - - 0x026736 19:A726: 00        .byte $00
- D - I - - 0x026737 19:A727: 00        .byte $00
- D - I - - 0x026738 19:A728: D2        .byte $D2
- D - I - - 0x026739 19:A729: D2        .byte $D2
- D - I - - 0x02673A 19:A72A: D2        .byte $D2
- D - I - - 0x02673B 19:A72B: D2        .byte $D2
- D - I - - 0x02673C 19:A72C: FF        .byte $FF
- D - I - - 0x02673D 19:A72D: FF        .byte $FF
- D - I - - 0x02673E 19:A72E: FF        .byte $FF
- D - I - - 0x02673F 19:A72F: FF        .byte $FF
- D - I - - 0x026740 19:A730: 00        .byte $00
- D - I - - 0x026741 19:A731: 00        .byte $00
- D - I - - 0x026742 19:A732: 00        .byte $00
- D - I - - 0x026743 19:A733: 00        .byte $00
- D - I - - 0x026744 19:A734: 00        .byte $00
- D - I - - 0x026745 19:A735: 00        .byte $00
- D - I - - 0x026746 19:A736: 00        .byte $00
- D - I - - 0x026747 19:A737: 00        .byte $00
- D - I - - 0x026748 19:A738: C9        .byte $C9    ; <ぴ>
- D - I - - 0x026749 19:A739: D2        .byte $D2
- D - I - - 0x02674A 19:A73A: D2        .byte $D2
- D - I - - 0x02674B 19:A73B: D2        .byte $D2
- D - I - - 0x02674C 19:A73C: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02674D 19:A73D: FF        .byte $FF
- D - I - - 0x02674E 19:A73E: FF        .byte $FF
- D - I - - 0x02674F 19:A73F: FF        .byte $FF
- D - I - - 0x026750 19:A740: 00        .byte $00
- D - I - - 0x026751 19:A741: 00        .byte $00
- D - I - - 0x026752 19:A742: 00        .byte $00
- D - I - - 0x026753 19:A743: 00        .byte $00
- D - I - - 0x026754 19:A744: 00        .byte $00
- D - I - - 0x026755 19:A745: 00        .byte $00
- D - I - - 0x026756 19:A746: 00        .byte $00
- D - I - - 0x026757 19:A747: 00        .byte $00
- D - I - - 0x026758 19:A748: D2        .byte $D2
- D - I - - 0x026759 19:A749: D2        .byte $D2
- D - I - - 0x02675A 19:A74A: D0        .byte $D0    ; <ペ>
- D - I - - 0x02675B 19:A74B: 00        .byte $00
- D - I - - 0x02675C 19:A74C: FF        .byte $FF
- D - I - - 0x02675D 19:A74D: FF        .byte $FF
- D - I - - 0x02675E 19:A74E: D0        .byte $D0    ; <ペ>
- D - I - - 0x02675F 19:A74F: 00        .byte $00
- D - I - - 0x026760 19:A750: 00        .byte $00
- D - I - - 0x026761 19:A751: 00        .byte $00
- D - I - - 0x026762 19:A752: C9        .byte $C9    ; <ぴ>
- D - I - - 0x026763 19:A753: D2        .byte $D2
- D - I - - 0x026764 19:A754: 00        .byte $00
- D - I - - 0x026765 19:A755: 00        .byte $00
- D - I - - 0x026766 19:A756: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026767 19:A757: FF        .byte $FF
- D - I - - 0x026768 19:A758: 00        .byte $00
- D - I - - 0x026769 19:A759: 00        .byte $00
- D - I - - 0x02676A 19:A75A: C9        .byte $C9    ; <ぴ>
- D - I - - 0x02676B 19:A75B: D2        .byte $D2
- D - I - - 0x02676C 19:A75C: 00        .byte $00
- D - I - - 0x02676D 19:A75D: C9        .byte $C9    ; <ぴ>
- D - I - - 0x02676E 19:A75E: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02676F 19:A75F: FF        .byte $FF
- D - I - - 0x026770 19:A760: D2        .byte $D2
- D - I - - 0x026771 19:A761: D2        .byte $D2
- D - I - - 0x026772 19:A762: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026773 19:A763: FF        .byte $FF
- D - I - - 0x026774 19:A764: FF        .byte $FF
- D - I - - 0x026775 19:A765: FF        .byte $FF
- D - I - - 0x026776 19:A766: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026777 19:A767: FF        .byte $FF
- D - I - - 0x026778 19:A768: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026779 19:A769: FF        .byte $FF
- D - I - - 0x02677A 19:A76A: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02677B 19:A76B: FF        .byte $FF
- D - I - - 0x02677C 19:A76C: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02677D 19:A76D: FF        .byte $FF
- D - I - - 0x02677E 19:A76E: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02677F 19:A76F: FF        .byte $FF
- D - I - - 0x026780 19:A770: FF        .byte $FF
- D - I - - 0x026781 19:A771: FF        .byte $FF
- D - I - - 0x026782 19:A772: FF        .byte $FF
- D - I - - 0x026783 19:A773: FF        .byte $FF
- D - I - - 0x026784 19:A774: FF        .byte $FF
- D - I - - 0x026785 19:A775: FF        .byte $FF
- D - I - - 0x026786 19:A776: FF        .byte $FF
- D - I - - 0x026787 19:A777: FF        .byte $FF
- D - I - - 0x026788 19:A778: FF        .byte $FF
- D - I - - 0x026789 19:A779: FF        .byte $FF
- D - I - - 0x02678A 19:A77A: C0        .byte $C0    ; <ヅ>
- D - I - - 0x02678B 19:A77B: C1        .byte $C1    ; <デ>
- D - I - - 0x02678C 19:A77C: FF        .byte $FF
- D - I - - 0x02678D 19:A77D: FF        .byte $FF
- D - I - - 0x02678E 19:A77E: C2        .byte $C2    ; <ド>
- D - I - - 0x02678F 19:A77F: FF        .byte $FF
- D - I - - 0x026790 19:A780: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026791 19:A781: FF        .byte $FF
- D - I - - 0x026792 19:A782: FF        .byte $FF
- D - I - - 0x026793 19:A783: FF        .byte $FF
- D - I - - 0x026794 19:A784: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026795 19:A785: FF        .byte $FF
- D - I - - 0x026796 19:A786: FF        .byte $FF
- D - I - - 0x026797 19:A787: FF        .byte $FF
- D - I - - 0x026798 19:A788: C4        .byte $C4    ; <ビ>
- D - I - - 0x026799 19:A789: C5        .byte $C5    ; <ブ>
- D - I - - 0x02679A 19:A78A: FF        .byte $FF
- D - I - - 0x02679B 19:A78B: FF        .byte $FF
- D - I - - 0x02679C 19:A78C: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02679D 19:A78D: C7        .byte $C7    ; <ボ>
- D - I - - 0x02679E 19:A78E: FF        .byte $FF
- D - I - - 0x02679F 19:A78F: FF        .byte $FF
- D - I - - 0x0267A0 19:A790: FF        .byte $FF
- D - I - - 0x0267A1 19:A791: FF        .byte $FF
- D - I - - 0x0267A2 19:A792: C9        .byte $C9    ; <ぴ>
- D - I - - 0x0267A3 19:A793: D2        .byte $D2
- D - I - - 0x0267A4 19:A794: FF        .byte $FF
- D - I - - 0x0267A5 19:A795: FF        .byte $FF
- D - I - - 0x0267A6 19:A796: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267A7 19:A797: FF        .byte $FF
- D - I - - 0x0267A8 19:A798: FF        .byte $FF
- D - I - - 0x0267A9 19:A799: FF        .byte $FF
- D - I - - 0x0267AA 19:A79A: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267AB 19:A79B: FF        .byte $FF
- D - I - - 0x0267AC 19:A79C: FF        .byte $FF
- D - I - - 0x0267AD 19:A79D: FF        .byte $FF
- D - I - - 0x0267AE 19:A79E: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267AF 19:A79F: FF        .byte $FF
- D - I - - 0x0267B0 19:A7A0: D2        .byte $D2
- D - I - - 0x0267B1 19:A7A1: D2        .byte $D2
- D - I - - 0x0267B2 19:A7A2: D0        .byte $D0    ; <ペ>
- D - I - - 0x0267B3 19:A7A3: 00        .byte $00
- D - I - - 0x0267B4 19:A7A4: FF        .byte $FF
- D - I - - 0x0267B5 19:A7A5: FF        .byte $FF
- D - I - - 0x0267B6 19:A7A6: D0        .byte $D0    ; <ペ>
- D - I - - 0x0267B7 19:A7A7: 00        .byte $00
- D - I - - 0x0267B8 19:A7A8: C9        .byte $C9    ; <ぴ>
- D - I - - 0x0267B9 19:A7A9: D2        .byte $D2
- D - I - - 0x0267BA 19:A7AA: D0        .byte $D0    ; <ペ>
- D - I - - 0x0267BB 19:A7AB: 00        .byte $00
- D - I - - 0x0267BC 19:A7AC: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267BD 19:A7AD: FF        .byte $FF
- D - I - - 0x0267BE 19:A7AE: C9        .byte $C9    ; <ぴ>
- D - I - - 0x0267BF 19:A7AF: D0        .byte $D0    ; <ペ>
- D - I - - 0x0267C0 19:A7B0: 00        .byte $00
- D - I - - 0x0267C1 19:A7B1: C6        .byte $C6    ; <ベ>
- D - I - - 0x0267C2 19:A7B2: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267C3 19:A7B3: FF        .byte $FF
- D - I - - 0x0267C4 19:A7B4: 00        .byte $00
- D - I - - 0x0267C5 19:A7B5: 00        .byte $00
- D - I - - 0x0267C6 19:A7B6: C6        .byte $C6    ; <ベ>
- D - I - - 0x0267C7 19:A7B7: C3        .byte $C3    ; <バ>
- D - I - - 0x0267C8 19:A7B8: 00        .byte $00
- D - I - - 0x0267C9 19:A7B9: 00        .byte $00
- D - I - - 0x0267CA 19:A7BA: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267CB 19:A7BB: FF        .byte $FF
- D - I - - 0x0267CC 19:A7BC: 00        .byte $00
- D - I - - 0x0267CD 19:A7BD: 00        .byte $00
- D - I - - 0x0267CE 19:A7BE: C6        .byte $C6    ; <ベ>
- D - I - - 0x0267CF 19:A7BF: C3        .byte $C3    ; <バ>
- D - I - - 0x0267D0 19:A7C0: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267D1 19:A7C1: FF        .byte $FF
- D - I - - 0x0267D2 19:A7C2: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267D3 19:A7C3: FF        .byte $FF
- D - I - - 0x0267D4 19:A7C4: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267D5 19:A7C5: FF        .byte $FF
- D - I - - 0x0267D6 19:A7C6: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267D7 19:A7C7: FF        .byte $FF
- D - I - - 0x0267D8 19:A7C8: FF        .byte $FF
- D - I - - 0x0267D9 19:A7C9: FF        .byte $FF
- D - I - - 0x0267DA 19:A7CA: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267DB 19:A7CB: FF        .byte $FF
- D - I - - 0x0267DC 19:A7CC: C3        .byte $C3    ; <バ>
- D - I - - 0x0267DD 19:A7CD: C3        .byte $C3    ; <バ>
- D - I - - 0x0267DE 19:A7CE: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267DF 19:A7CF: FF        .byte $FF
- D - I - - 0x0267E0 19:A7D0: FF        .byte $FF
- D - I - - 0x0267E1 19:A7D1: FF        .byte $FF
- D - I - - 0x0267E2 19:A7D2: C8        .byte $C8    ; <ぱ>
- D - I - - 0x0267E3 19:A7D3: FF        .byte $FF
- D - I - - 0x0267E4 19:A7D4: FF        .byte $FF
- D - I - - 0x0267E5 19:A7D5: FF        .byte $FF
- D - I - - 0x0267E6 19:A7D6: CA        .byte $CA    ; <ぷ>
- D - I - - 0x0267E7 19:A7D7: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0267E8 19:A7D8: FF        .byte $FF
- D - I - - 0x0267E9 19:A7D9: FF        .byte $FF
- D - I - - 0x0267EA 19:A7DA: FF        .byte $FF
- D - I - - 0x0267EB 19:A7DB: FF        .byte $FF
- D - I - - 0x0267EC 19:A7DC: FF        .byte $FF
- D - I - - 0x0267ED 19:A7DD: FF        .byte $FF
- D - I - - 0x0267EE 19:A7DE: FF        .byte $FF
- D - I - - 0x0267EF 19:A7DF: FF        .byte $FF
- D - I - - 0x0267F0 19:A7E0: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267F1 19:A7E1: CD        .byte $CD    ; <パ>
- D - I - - 0x0267F2 19:A7E2: FF        .byte $FF
- D - I - - 0x0267F3 19:A7E3: FF        .byte $FF
- D - I - - 0x0267F4 19:A7E4: CE        .byte $CE    ; <ピ>
- D - I - - 0x0267F5 19:A7E5: CF        .byte $CF    ; <プ>
- D - I - - 0x0267F6 19:A7E6: FF        .byte $FF
- D - I - - 0x0267F7 19:A7E7: FF        .byte $FF
- D - I - - 0x0267F8 19:A7E8: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267F9 19:A7E9: FF        .byte $FF
- D - I - - 0x0267FA 19:A7EA: FF        .byte $FF
- D - I - - 0x0267FB 19:A7EB: FF        .byte $FF
- D - I - - 0x0267FC 19:A7EC: CC        .byte $CC    ; <ぽ>
- D - I - - 0x0267FD 19:A7ED: FF        .byte $FF
- D - I - - 0x0267FE 19:A7EE: FF        .byte $FF
- D - I - - 0x0267FF 19:A7EF: FF        .byte $FF
- D - I - - 0x026800 19:A7F0: FF        .byte $FF
- D - I - - 0x026801 19:A7F1: FF        .byte $FF
- D - I - - 0x026802 19:A7F2: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026803 19:A7F3: FF        .byte $FF
- D - I - - 0x026804 19:A7F4: FF        .byte $FF
- D - I - - 0x026805 19:A7F5: FF        .byte $FF
- D - I - - 0x026806 19:A7F6: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026807 19:A7F7: FF        .byte $FF
- D - I - - 0x026808 19:A7F8: FF        .byte $FF
- D - I - - 0x026809 19:A7F9: FF        .byte $FF
- D - I - - 0x02680A 19:A7FA: CC        .byte $CC    ; <ぽ>
- D - I - - 0x02680B 19:A7FB: FF        .byte $FF
- D - I - - 0x02680C 19:A7FC: FF        .byte $FF
- D - I - - 0x02680D 19:A7FD: FF        .byte $FF
- D - I - - 0x02680E 19:A7FE: C6        .byte $C6    ; <ベ>
- D - I - - 0x02680F 19:A7FF: C3        .byte $C3    ; <バ>
- D - I - - 0x026810 19:A800: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026811 19:A801: FF        .byte $FF
- D - I - - 0x026812 19:A802: C6        .byte $C6    ; <ベ>
- D - I - - 0x026813 19:A803: D0        .byte $D0    ; <ペ>
- D - I - - 0x026814 19:A804: C6        .byte $C6    ; <ベ>
- D - I - - 0x026815 19:A805: C3        .byte $C3    ; <バ>
- D - I - - 0x026816 19:A806: D0        .byte $D0    ; <ペ>
- D - I - - 0x026817 19:A807: 00        .byte $00
- D - I - - 0x026818 19:A808: FF        .byte $FF
- D - I - - 0x026819 19:A809: FF        .byte $FF
- D - I - - 0x02681A 19:A80A: D0        .byte $D0    ; <ペ>
- D - I - - 0x02681B 19:A80B: 00        .byte $00
- D - I - - 0x02681C 19:A80C: C3        .byte $C3    ; <バ>
- D - I - - 0x02681D 19:A80D: C3        .byte $C3    ; <バ>
- D - I - - 0x02681E 19:A80E: D0        .byte $D0    ; <ペ>
- D - I - - 0x02681F 19:A80F: 00        .byte $00
- D - I - - 0x026820 19:A810: 00        .byte $00
- D - I - - 0x026821 19:A811: 00        .byte $00
- D - I - - 0x026822 19:A812: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026823 19:A813: FF        .byte $FF
- D - I - - 0x026824 19:A814: 00        .byte $00
- D - I - - 0x026825 19:A815: 00        .byte $00
- D - I - - 0x026826 19:A816: C6        .byte $C6    ; <ベ>
- D - I - - 0x026827 19:A817: C3        .byte $C3    ; <バ>
- D - I - - 0x026828 19:A818: 00        .byte $00
- D - I - - 0x026829 19:A819: 00        .byte $00
- D - I - - 0x02682A 19:A81A: 00        .byte $00
- D - I - - 0x02682B 19:A81B: 00        .byte $00
- D - I - - 0x02682C 19:A81C: 00        .byte $00
- D - I - - 0x02682D 19:A81D: 00        .byte $00
- D - I - - 0x02682E 19:A81E: 00        .byte $00
- D - I - - 0x02682F 19:A81F: 00        .byte $00
- D - I - - 0x026830 19:A820: FF        .byte $FF
- D - I - - 0x026831 19:A821: FF        .byte $FF
- D - I - - 0x026832 19:A822: FF        .byte $FF
- D - I - - 0x026833 19:A823: FF        .byte $FF
- D - I - - 0x026834 19:A824: C3        .byte $C3    ; <バ>
- D - I - - 0x026835 19:A825: C3        .byte $C3    ; <バ>
- D - I - - 0x026836 19:A826: C3        .byte $C3    ; <バ>
- D - I - - 0x026837 19:A827: C3        .byte $C3    ; <バ>
- D - I - - 0x026838 19:A828: 00        .byte $00
- D - I - - 0x026839 19:A829: 00        .byte $00
- D - I - - 0x02683A 19:A82A: 00        .byte $00
- D - I - - 0x02683B 19:A82B: 00        .byte $00
- D - I - - 0x02683C 19:A82C: 00        .byte $00
- D - I - - 0x02683D 19:A82D: 00        .byte $00
- D - I - - 0x02683E 19:A82E: 00        .byte $00
- D - I - - 0x02683F 19:A82F: 00        .byte $00
- D - I - - 0x026840 19:A830: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026841 19:A831: FF        .byte $FF
- D - I - - 0x026842 19:A832: FF        .byte $FF
- D - I - - 0x026843 19:A833: FF        .byte $FF
- D - I - - 0x026844 19:A834: C6        .byte $C6    ; <ベ>
- D - I - - 0x026845 19:A835: C3        .byte $C3    ; <バ>
- D - I - - 0x026846 19:A836: C3        .byte $C3    ; <バ>
- D - I - - 0x026847 19:A837: C3        .byte $C3    ; <バ>
- D - I - - 0x026848 19:A838: 00        .byte $00
- D - I - - 0x026849 19:A839: 00        .byte $00
- D - I - - 0x02684A 19:A83A: 00        .byte $00
- D - I - - 0x02684B 19:A83B: 00        .byte $00
- D - I - - 0x02684C 19:A83C: 00        .byte $00
- D - I - - 0x02684D 19:A83D: 00        .byte $00
- D - I - - 0x02684E 19:A83E: 00        .byte $00
- D - I - - 0x02684F 19:A83F: 00        .byte $00
- D - I - - 0x026850 19:A840: FF        .byte $FF
- D - I - - 0x026851 19:A841: FF        .byte $FF
- D - I - - 0x026852 19:A842: D0        .byte $D0    ; <ペ>
- D - I - - 0x026853 19:A843: 00        .byte $00
- D - I - - 0x026854 19:A844: C3        .byte $C3    ; <バ>
- D - I - - 0x026855 19:A845: C3        .byte $C3    ; <バ>
- D - I - - 0x026856 19:A846: D0        .byte $D0    ; <ペ>
- D - I - - 0x026857 19:A847: 00        .byte $00
- D - I - - 0x026858 19:A848: 00        .byte $00
- D - I - - 0x026859 19:A849: 00        .byte $00
- D - I - - 0x02685A 19:A84A: 00        .byte $00
- D - I - - 0x02685B 19:A84B: 00        .byte $00
- D - I - - 0x02685C 19:A84C: 00        .byte $00
- D - I - - 0x02685D 19:A84D: 00        .byte $00
- D - I - - 0x02685E 19:A84E: 00        .byte $00
- D - I - - 0x02685F 19:A84F: 00        .byte $00
- D - I - - 0x026860 19:A850: 01        .byte $01    ; <あ>
- D - I - - 0x026861 19:A851: 01        .byte $01    ; <あ>
- D - I - - 0x026862 19:A852: 81        .byte $81    ; <A>
- D - I - - 0x026863 19:A853: 82        .byte $82    ; <B>
- D - I - - 0x026864 19:A854: 01        .byte $01    ; <あ>
- D - I - - 0x026865 19:A855: 01        .byte $01    ; <あ>
- D - I - - 0x026866 19:A856: 81        .byte $81    ; <A>
- D - I - - 0x026867 19:A857: 81        .byte $81    ; <A>
- D - I - - 0x026868 19:A858: 01        .byte $01    ; <あ>
- D - I - - 0x026869 19:A859: 01        .byte $01    ; <あ>
- D - I - - 0x02686A 19:A85A: 81        .byte $81    ; <A>
- D - I - - 0x02686B 19:A85B: 81        .byte $81    ; <A>
- D - I - - 0x02686C 19:A85C: 01        .byte $01    ; <あ>
- D - I - - 0x02686D 19:A85D: 01        .byte $01    ; <あ>
- D - I - - 0x02686E 19:A85E: 0D        .byte $0D    ; <す>
- D - I - - 0x02686F 19:A85F: 0D        .byte $0D    ; <す>
- D - I - - 0x026870 19:A860: 83        .byte $83    ; <C>
- D - I - - 0x026871 19:A861: 86        .byte $86    ; <F>
- D - I - - 0x026872 19:A862: 87        .byte $87    ; <G>
- D - I - - 0x026873 19:A863: 81        .byte $81    ; <A>
- D - I - - 0x026874 19:A864: 81        .byte $81    ; <A>
- D - I - - 0x026875 19:A865: 8C        .byte $8C    ; <M>
- D - I - - 0x026876 19:A866: 8D        .byte $8D    ; <P>
- D - I - - 0x026877 19:A867: A0        .byte $A0    ; <が>
- D - I - - 0x026878 19:A868: 81        .byte $81    ; <A>
- D - I - - 0x026879 19:A869: 8E        .byte $8E    ; <L>
- D - I - - 0x02687A 19:A86A: 8F        .byte $8F    ; <S>
- D - I - - 0x02687B 19:A86B: 81        .byte $81    ; <A>
- D - I - - 0x02687C 19:A86C: 0D        .byte $0D    ; <す>
- D - I - - 0x02687D 19:A86D: A4        .byte $A4    ; <ご>
- D - I - - 0x02687E 19:A86E: 0D        .byte $0D    ; <す>
- D - I - - 0x02687F 19:A86F: 0D        .byte $0D    ; <す>
- D - I - - 0x026880 19:A870: 81        .byte $81    ; <A>
- D - I - - 0x026881 19:A871: 81        .byte $81    ; <A>
- D - I - - 0x026882 19:A872: 84        .byte $84    ; <D>
- D - I - - 0x026883 19:A873: 85        .byte $85    ; <E>
- D - I - - 0x026884 19:A874: A1        .byte $A1    ; <ぎ>
- D - I - - 0x026885 19:A875: A2        .byte $A2    ; <ぐ>
- D - I - - 0x026886 19:A876: A3        .byte $A3    ; <げ>
- D - I - - 0x026887 19:A877: 81        .byte $81    ; <A>
- D - I - - 0x026888 19:A878: 81        .byte $81    ; <A>
- D - I - - 0x026889 19:A879: A8        .byte $A8    ; <ぜ>
- D - I - - 0x02688A 19:A87A: 90        .byte $90    ; <U>
- D - I - - 0x02688B 19:A87B: 91        .byte $91    ; <V>
- D - I - - 0x02688C 19:A87C: 0D        .byte $0D    ; <す>
- D - I - - 0x02688D 19:A87D: 0D        .byte $0D    ; <す>
- D - I - - 0x02688E 19:A87E: 92        .byte $92    ; <W>
- D - I - - 0x02688F 19:A87F: 0D        .byte $0D    ; <す>
- D - I - - 0x026890 19:A880: 01        .byte $01    ; <あ>
- D - I - - 0x026891 19:A881: 01        .byte $01    ; <あ>
- D - I - - 0x026892 19:A882: 19        .byte $19    ; <の>
- D - I - - 0x026893 19:A883: 3C        .byte $3C    ; <9>
- D - I - - 0x026894 19:A884: 01        .byte $01    ; <あ>
- D - I - - 0x026895 19:A885: 01        .byte $01    ; <あ>
- D - I - - 0x026896 19:A886: 0E        .byte $0E    ; <せ>
- D - I - - 0x026897 19:A887: 0A        .byte $0A    ; <こ>
- D - I - - 0x026898 19:A888: 01        .byte $01    ; <あ>
- D - I - - 0x026899 19:A889: 01        .byte $01    ; <あ>
- D - I - - 0x02689A 19:A88A: 10        .byte $10    ; <た>
- D - I - - 0x02689B 19:A88B: AA        .byte $AA    ; <だ>
- D - I - - 0x02689C 19:A88C: 01        .byte $01    ; <あ>
- D - I - - 0x02689D 19:A88D: 01        .byte $01    ; <あ>
- D - I - - 0x02689E 19:A88E: 88        .byte $88    ; <H>
- D - I - - 0x02689F 19:A88F: 89        .byte $89    ; <I>
- D - I - - 0x0268A0 19:A890: 10        .byte $10    ; <た>
- D - I - - 0x0268A1 19:A891: A6        .byte $A6    ; <じ>
- D - I - - 0x0268A2 19:A892: 3C        .byte $3C    ; <9>
- D - I - - 0x0268A3 19:A893: 18        .byte $18    ; <ね>
- D - I - - 0x0268A4 19:A894: A9        .byte $A9    ; <ぞ>
- D - I - - 0x0268A5 19:A895: AC        .byte $AC    ; <づ>
- D - I - - 0x0268A6 19:A896: 0A        .byte $0A    ; <こ>
- D - I - - 0x0268A7 19:A897: 0B        .byte $0B    ; <さ>
- D - I - - 0x0268A8 19:A898: AB        .byte $AB    ; <ぢ>
- D - I - - 0x0268A9 19:A899: AE        .byte $AE    ; <ど>
- D - I - - 0x0268AA 19:A89A: 8B        .byte $8B    ; <K>
- D - I - - 0x0268AB 19:A89B: AD        .byte $AD    ; <で>
- D - I - - 0x0268AC 19:A89C: 8A        .byte $8A    ; <N>
- D - I - - 0x0268AD 19:A89D: 0B        .byte $0B    ; <さ>
- D - I - - 0x0268AE 19:A89E: 0E        .byte $0E    ; <せ>
- D - I - - 0x0268AF 19:A89F: AF        .byte $AF    ; <ば>
- D - I - - 0x0268B0 19:A8A0: 19        .byte $19    ; <の>
- D - I - - 0x0268B1 19:A8A1: B1        .byte $B1    ; <ぶ>
- D - I - - 0x0268B2 19:A8A2: 98        .byte $98
- D - I - - 0x0268B3 19:A8A3: 11        .byte $11    ; <ち>
- D - I - - 0x0268B4 19:A8A4: B2        .byte $B2    ; <べ>
- D - I - - 0x0268B5 19:A8A5: B3        .byte $B3    ; <ぼ>
- D - I - - 0x0268B6 19:A8A6: 9A        .byte $9A
- D - I - - 0x0268B7 19:A8A7: 93        .byte $93    ; <Y>
- D - I - - 0x0268B8 19:A8A8: B8        .byte $B8    ; <ゴ>
- D - I - - 0x0268B9 19:A8A9: B9        .byte $B9    ; <ザ>
- D - I - - 0x0268BA 19:A8AA: 3C        .byte $3C    ; <9>
- D - I - - 0x0268BB 19:A8AB: 99        .byte $99
- D - I - - 0x0268BC 19:A8AC: BA        .byte $BA    ; <ジ>
- D - I - - 0x0268BD 19:A8AD: 13        .byte $13    ; <て>
- D - I - - 0x0268BE 19:A8AE: B0        .byte $B0    ; <び>
- D - I - - 0x0268BF 19:A8AF: 9B        .byte $9B
- D - I - - 0x0268C0 19:A8B0: 3C        .byte $3C    ; <9>
- D - I - - 0x0268C1 19:A8B1: 3C        .byte $3C    ; <9>
- D - I - - 0x0268C2 19:A8B2: 01        .byte $01    ; <あ>
- D - I - - 0x0268C3 19:A8B3: 01        .byte $01    ; <あ>
- D - I - - 0x0268C4 19:A8B4: 0A        .byte $0A    ; <こ>
- D - I - - 0x0268C5 19:A8B5: 12        .byte $12    ; <つ>
- D - I - - 0x0268C6 19:A8B6: 01        .byte $01    ; <あ>
- D - I - - 0x0268C7 19:A8B7: 01        .byte $01    ; <あ>
- D - I - - 0x0268C8 19:A8B8: 18        .byte $18    ; <ね>
- D - I - - 0x0268C9 19:A8B9: 19        .byte $19    ; <の>
- D - I - - 0x0268CA 19:A8BA: 01        .byte $01    ; <あ>
- D - I - - 0x0268CB 19:A8BB: 01        .byte $01    ; <あ>
- D - I - - 0x0268CC 19:A8BC: 0B        .byte $0B    ; <さ>
- D - I - - 0x0268CD 19:A8BD: 0E        .byte $0E    ; <せ>
- D - I - - 0x0268CE 19:A8BE: 01        .byte $01    ; <あ>
- D - I - - 0x0268CF 19:A8BF: 01        .byte $01    ; <あ>
- D - I - - 0x0268D0 19:A8C0: 01        .byte $01    ; <あ>
- D - I - - 0x0268D1 19:A8C1: 01        .byte $01    ; <あ>
- D - I - - 0x0268D2 19:A8C2: 01        .byte $01    ; <あ>
- D - I - - 0x0268D3 19:A8C3: 01        .byte $01    ; <あ>
- D - I - - 0x0268D4 19:A8C4: 01        .byte $01    ; <あ>
- D - I - - 0x0268D5 19:A8C5: 01        .byte $01    ; <あ>
- D - I - - 0x0268D6 19:A8C6: 01        .byte $01    ; <あ>
- D - I - - 0x0268D7 19:A8C7: 01        .byte $01    ; <あ>
- D - I - - 0x0268D8 19:A8C8: 01        .byte $01    ; <あ>
- D - I - - 0x0268D9 19:A8C9: 01        .byte $01    ; <あ>
- D - I - - 0x0268DA 19:A8CA: 01        .byte $01    ; <あ>
- D - I - - 0x0268DB 19:A8CB: 01        .byte $01    ; <あ>
- D - I - - 0x0268DC 19:A8CC: 0D        .byte $0D    ; <す>
- D - I - - 0x0268DD 19:A8CD: 0D        .byte $0D    ; <す>
- D - I - - 0x0268DE 19:A8CE: 01        .byte $01    ; <あ>
- D - I - - 0x0268DF 19:A8CF: 01        .byte $01    ; <あ>
- D - I - - 0x0268E0 19:A8D0: 94        .byte $94
- D - I - - 0x0268E1 19:A8D1: 95        .byte $95
- D - I - - 0x0268E2 19:A8D2: 01        .byte $01    ; <あ>
- D - I - - 0x0268E3 19:A8D3: 01        .byte $01    ; <あ>
- D - I - - 0x0268E4 19:A8D4: 01        .byte $01    ; <あ>
- D - I - - 0x0268E5 19:A8D5: 97        .byte $97
- D - I - - 0x0268E6 19:A8D6: A5        .byte $A5    ; <ざ>
- D - I - - 0x0268E7 19:A8D7: BB        .byte $BB    ; <ズ>
- D - I - - 0x0268E8 19:A8D8: 9C        .byte $9C
- D - I - - 0x0268E9 19:A8D9: 9D        .byte $9D
- D - I - - 0x0268EA 19:A8DA: A7        .byte $A7    ; <ず>
- D - I - - 0x0268EB 19:A8DB: 01        .byte $01    ; <あ>
- D - I - - 0x0268EC 19:A8DC: 0D        .byte $0D    ; <す>
- D - I - - 0x0268ED 19:A8DD: 9F        .byte $9F
- D - I - - 0x0268EE 19:A8DE: 0D        .byte $0D    ; <す>
- D - I - - 0x0268EF 19:A8DF: 0D        .byte $0D    ; <す>
- D - I - - 0x0268F0 19:A8E0: 01        .byte $01    ; <あ>
- D - I - - 0x0268F1 19:A8E1: C0        .byte $C0    ; <ヅ>
- D - I - - 0x0268F2 19:A8E2: C1        .byte $C1    ; <デ>
- D - I - - 0x0268F3 19:A8E3: EA        .byte $EA
- D - I - - 0x0268F4 19:A8E4: BD        .byte $BD    ; <ゾ>
- D - I - - 0x0268F5 19:A8E5: C2        .byte $C2    ; <ド>
- D - I - - 0x0268F6 19:A8E6: C3        .byte $C3    ; <バ>
- D - I - - 0x0268F7 19:A8E7: 01        .byte $01    ; <あ>
- D - I - - 0x0268F8 19:A8E8: 01        .byte $01    ; <あ>
- D - I - - 0x0268F9 19:A8E9: C8        .byte $C8    ; <ぱ>
- D - I - - 0x0268FA 19:A8EA: C9        .byte $C9    ; <ぴ>
- D - I - - 0x0268FB 19:A8EB: 01        .byte $01    ; <あ>
- D - I - - 0x0268FC 19:A8EC: 0D        .byte $0D    ; <す>
- D - I - - 0x0268FD 19:A8ED: 0D        .byte $0D    ; <す>
- D - I - - 0x0268FE 19:A8EE: CB        .byte $CB    ; <ぺ>
- D - I - - 0x0268FF 19:A8EF: 0D        .byte $0D    ; <す>
- D - I - - 0x026900 19:A8F0: EB        .byte $EB
- D - I - - 0x026901 19:A8F1: 01        .byte $01    ; <あ>
- D - I - - 0x026902 19:A8F2: 01        .byte $01    ; <あ>
- D - I - - 0x026903 19:A8F3: 01        .byte $01    ; <あ>
- D - I - - 0x026904 19:A8F4: 01        .byte $01    ; <あ>
- D - I - - 0x026905 19:A8F5: 01        .byte $01    ; <あ>
- D - I - - 0x026906 19:A8F6: 01        .byte $01    ; <あ>
- D - I - - 0x026907 19:A8F7: 01        .byte $01    ; <あ>
- D - I - - 0x026908 19:A8F8: 01        .byte $01    ; <あ>
- D - I - - 0x026909 19:A8F9: 01        .byte $01    ; <あ>
- D - I - - 0x02690A 19:A8FA: 01        .byte $01    ; <あ>
- D - I - - 0x02690B 19:A8FB: 01        .byte $01    ; <あ>
- D - I - - 0x02690C 19:A8FC: 0D        .byte $0D    ; <す>
- D - I - - 0x02690D 19:A8FD: 0D        .byte $0D    ; <す>
- D - I - - 0x02690E 19:A8FE: 01        .byte $01    ; <あ>
- D - I - - 0x02690F 19:A8FF: 01        .byte $01    ; <あ>
- D - I - - 0x026910 19:A900: 01        .byte $01    ; <あ>
- D - I - - 0x026911 19:A901: 01        .byte $01    ; <あ>
- D - I - - 0x026912 19:A902: 10        .byte $10    ; <た>
- D - I - - 0x026913 19:A903: 11        .byte $11    ; <ち>
- D - I - - 0x026914 19:A904: 01        .byte $01    ; <あ>
- D - I - - 0x026915 19:A905: 01        .byte $01    ; <あ>
- D - I - - 0x026916 19:A906: 0A        .byte $0A    ; <こ>
- D - I - - 0x026917 19:A907: 13        .byte $13    ; <て>
- D - I - - 0x026918 19:A908: 01        .byte $01    ; <あ>
- D - I - - 0x026919 19:A909: 01        .byte $01    ; <あ>
- D - I - - 0x02691A 19:A90A: 3C        .byte $3C    ; <9>
- D - I - - 0x02691B 19:A90B: 3C        .byte $3C    ; <9>
- D - I - - 0x02691C 19:A90C: 01        .byte $01    ; <あ>
- D - I - - 0x02691D 19:A90D: 01        .byte $01    ; <あ>
- D - I - - 0x02691E 19:A90E: 0A        .byte $0A    ; <こ>
- D - I - - 0x02691F 19:A90F: 12        .byte $12    ; <つ>
- D - I - - 0x026920 19:A910: 10        .byte $10    ; <た>
- D - I - - 0x026921 19:A911: B5        .byte $B5    ; <ギ>
- D - I - - 0x026922 19:A912: 96        .byte $96
- D - I - - 0x026923 19:A913: 10        .byte $10    ; <た>
- D - I - - 0x026924 19:A914: B6        .byte $B6    ; <グ>
- D - I - - 0x026925 19:A915: B7        .byte $B7    ; <ゲ>
- D - I - - 0x026926 19:A916: 9E        .byte $9E
- D - I - - 0x026927 19:A917: 12        .byte $12    ; <つ>
- D - I - - 0x026928 19:A918: BC        .byte $BC    ; <ゼ>
- D - I - - 0x026929 19:A919: 10        .byte $10    ; <た>
- D - I - - 0x02692A 19:A91A: B4        .byte $B4    ; <ガ>
- D - I - - 0x02692B 19:A91B: E0        .byte $E0
- D - I - - 0x02692C 19:A91C: BE        .byte $BE    ; <ダ>
- D - I - - 0x02692D 19:A91D: BF        .byte $BF    ; <ヂ>
- D - I - - 0x02692E 19:A91E: 12        .byte $12    ; <つ>
- D - I - - 0x02692F 19:A91F: E2        .byte $E2
- D - I - - 0x026930 19:A920: 10        .byte $10    ; <た>
- D - I - - 0x026931 19:A921: 11        .byte $11    ; <ち>
- D - I - - 0x026932 19:A922: E1        .byte $E1
- D - I - - 0x026933 19:A923: 18        .byte $18    ; <ね>
- D - I - - 0x026934 19:A924: 12        .byte $12    ; <つ>
- D - I - - 0x026935 19:A925: 13        .byte $13    ; <て>
- D - I - - 0x026936 19:A926: E3        .byte $E3
- D - I - - 0x026937 19:A927: C4        .byte $C4    ; <ビ>
- D - I - - 0x026938 19:A928: C5        .byte $C5    ; <ブ>
- D - I - - 0x026939 19:A929: D0        .byte $D0    ; <ペ>
- D - I - - 0x02693A 19:A92A: E9        .byte $E9
- D - I - - 0x02693B 19:A92B: C6        .byte $C6    ; <ベ>
- D - I - - 0x02693C 19:A92C: E8        .byte $E8
- D - I - - 0x02693D 19:A92D: 0B        .byte $0B    ; <さ>
- D - I - - 0x02693E 19:A92E: 0E        .byte $0E    ; <せ>
- D - I - - 0x02693F 19:A92F: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026940 19:A930: 19        .byte $19    ; <の>
- D - I - - 0x026941 19:A931: 3C        .byte $3C    ; <9>
- D - I - - 0x026942 19:A932: 01        .byte $01    ; <あ>
- D - I - - 0x026943 19:A933: 01        .byte $01    ; <あ>
- D - I - - 0x026944 19:A934: 0E        .byte $0E    ; <せ>
- D - I - - 0x026945 19:A935: 0A        .byte $0A    ; <こ>
- D - I - - 0x026946 19:A936: 01        .byte $01    ; <あ>
- D - I - - 0x026947 19:A937: 01        .byte $01    ; <あ>
- D - I - - 0x026948 19:A938: C7        .byte $C7    ; <ボ>
- D - I - - 0x026949 19:A939: 11        .byte $11    ; <ち>
- D - I - - 0x02694A 19:A93A: 01        .byte $01    ; <あ>
- D - I - - 0x02694B 19:A93B: 01        .byte $01    ; <あ>
- D - I - - 0x02694C 19:A93C: CD        .byte $CD    ; <パ>
- D - I - - 0x02694D 19:A93D: D2        .byte $D2
- D - I - - 0x02694E 19:A93E: 01        .byte $01    ; <あ>
- D - I - - 0x02694F 19:A93F: 01        .byte $01    ; <あ>
- D - I - - 0x026950 19:A940: 01        .byte $01    ; <あ>
- D - I - - 0x026951 19:A941: 01        .byte $01    ; <あ>
- D - I - - 0x026952 19:A942: 01        .byte $01    ; <あ>
- D - I - - 0x026953 19:A943: 01        .byte $01    ; <あ>
- D - I - - 0x026954 19:A944: 01        .byte $01    ; <あ>
- D - I - - 0x026955 19:A945: 01        .byte $01    ; <あ>
- D - I - - 0x026956 19:A946: 01        .byte $01    ; <あ>
- D - I - - 0x026957 19:A947: 01        .byte $01    ; <あ>
- D - I - - 0x026958 19:A948: 01        .byte $01    ; <あ>
- D - I - - 0x026959 19:A949: 01        .byte $01    ; <あ>
- D - I - - 0x02695A 19:A94A: 01        .byte $01    ; <あ>
- D - I - - 0x02695B 19:A94B: 01        .byte $01    ; <あ>
- D - I - - 0x02695C 19:A94C: 01        .byte $01    ; <あ>
- D - I - - 0x02695D 19:A94D: 01        .byte $01    ; <あ>
- D - I - - 0x02695E 19:A94E: 0D        .byte $0D    ; <す>
- D - I - - 0x02695F 19:A94F: 0D        .byte $0D    ; <す>
- D - I - - 0x026960 19:A950: FA        .byte $FA
- D - I - - 0x026961 19:A951: 01        .byte $01    ; <あ>
- D - I - - 0x026962 19:A952: 01        .byte $01    ; <あ>
- D - I - - 0x026963 19:A953: 01        .byte $01    ; <あ>
- D - I - - 0x026964 19:A954: FA        .byte $FA
- D - I - - 0x026965 19:A955: 01        .byte $01    ; <あ>
- D - I - - 0x026966 19:A956: 01        .byte $01    ; <あ>
- D - I - - 0x026967 19:A957: 01        .byte $01    ; <あ>
- D - I - - 0x026968 19:A958: FA        .byte $FA
- D - I - - 0x026969 19:A959: 01        .byte $01    ; <あ>
- D - I - - 0x02696A 19:A95A: 01        .byte $01    ; <あ>
- D - I - - 0x02696B 19:A95B: 01        .byte $01    ; <あ>
- D - I - - 0x02696C 19:A95C: F7        .byte $F7
- D - I - - 0x02696D 19:A95D: FC        .byte $FC
- D - I - - 0x02696E 19:A95E: 01        .byte $01    ; <あ>
- D - I - - 0x02696F 19:A95F: 01        .byte $01    ; <あ>
- D - I - - 0x026970 19:A960: 3C        .byte $3C    ; <9>
- D - I - - 0x026971 19:A961: 3C        .byte $3C    ; <9>
- D - I - - 0x026972 19:A962: 18        .byte $18    ; <ね>
- D - I - - 0x026973 19:A963: 19        .byte $19    ; <の>
- D - I - - 0x026974 19:A964: 0A        .byte $0A    ; <こ>
- D - I - - 0x026975 19:A965: 12        .byte $12    ; <つ>
- D - I - - 0x026976 19:A966: 0B        .byte $0B    ; <さ>
- D - I - - 0x026977 19:A967: 0E        .byte $0E    ; <せ>
- D - I - - 0x026978 19:A968: F2        .byte $F2
- D - I - - 0x026979 19:A969: 19        .byte $19    ; <の>
- D - I - - 0x02697A 19:A96A: 10        .byte $10    ; <た>
- D - I - - 0x02697B 19:A96B: 3C        .byte $3C    ; <9>
- D - I - - 0x02697C 19:A96C: F8        .byte $F8
- D - I - - 0x02697D 19:A96D: F9        .byte $F9
- D - I - - 0x02697E 19:A96E: 0A        .byte $0A    ; <こ>
- D - I - - 0x02697F 19:A96F: 12        .byte $12    ; <つ>
- D - I - - 0x026980 19:A970: 01        .byte $01    ; <あ>
- D - I - - 0x026981 19:A971: 01        .byte $01    ; <あ>
- D - I - - 0x026982 19:A972: F5        .byte $F5
- D - I - - 0x026983 19:A973: 01        .byte $01    ; <あ>
- D - I - - 0x026984 19:A974: 01        .byte $01    ; <あ>
- D - I - - 0x026985 19:A975: 01        .byte $01    ; <あ>
- D - I - - 0x026986 19:A976: 01        .byte $01    ; <あ>
- D - I - - 0x026987 19:A977: F5        .byte $F5
- D - I - - 0x026988 19:A978: 00        .byte $00
- D - I - - 0x026989 19:A979: 00        .byte $00
- D - I - - 0x02698A 19:A97A: 00        .byte $00
- D - I - - 0x02698B 19:A97B: 00        .byte $00
- D - I - - 0x02698C 19:A97C: 00        .byte $00
- D - I - - 0x02698D 19:A97D: 00        .byte $00
- D - I - - 0x02698E 19:A97E: 00        .byte $00
- D - I - - 0x02698F 19:A97F: 00        .byte $00
- D - I - - 0x026990 19:A980: 01        .byte $01    ; <あ>
- D - I - - 0x026991 19:A981: 01        .byte $01    ; <あ>
- D - I - - 0x026992 19:A982: 01        .byte $01    ; <あ>
- D - I - - 0x026993 19:A983: 01        .byte $01    ; <あ>
- D - I - - 0x026994 19:A984: 01        .byte $01    ; <あ>
- D - I - - 0x026995 19:A985: 01        .byte $01    ; <あ>
- D - I - - 0x026996 19:A986: 01        .byte $01    ; <あ>
- D - I - - 0x026997 19:A987: 01        .byte $01    ; <あ>
- D - I - - 0x026998 19:A988: 01        .byte $01    ; <あ>
- D - I - - 0x026999 19:A989: 01        .byte $01    ; <あ>
- D - I - - 0x02699A 19:A98A: 01        .byte $01    ; <あ>
- D - I - - 0x02699B 19:A98B: 01        .byte $01    ; <あ>
- D - I - - 0x02699C 19:A98C: FB        .byte $FB
- D - I - - 0x02699D 19:A98D: FB        .byte $FB
- D - I - - 0x02699E 19:A98E: FB        .byte $FB
- D - I - - 0x02699F 19:A98F: FB        .byte $FB
- D - I - - 0x0269A0 19:A990: 01        .byte $01    ; <あ>
- D - I - - 0x0269A1 19:A991: B2        .byte $B2    ; <べ>
- D - I - - 0x0269A2 19:A992: 00        .byte $00
- D - I - - 0x0269A3 19:A993: 00        .byte $00
- D - I - - 0x0269A4 19:A994: 01        .byte $01    ; <あ>
- D - I - - 0x0269A5 19:A995: B8        .byte $B8    ; <ゴ>
- D - I - - 0x0269A6 19:A996: 00        .byte $00
- D - I - - 0x0269A7 19:A997: B4        .byte $B4    ; <ガ>
- D - I - - 0x0269A8 19:A998: 01        .byte $01    ; <あ>
- D - I - - 0x0269A9 19:A999: BA        .byte $BA    ; <ジ>
- D - I - - 0x0269AA 19:A99A: 00        .byte $00
- D - I - - 0x0269AB 19:A99B: B6        .byte $B6    ; <グ>
- D - I - - 0x0269AC 19:A99C: 01        .byte $01    ; <あ>
- D - I - - 0x0269AD 19:A99D: 01        .byte $01    ; <あ>
- D - I - - 0x0269AE 19:A99E: F8        .byte $F8
- D - I - - 0x0269AF 19:A99F: B3        .byte $B3    ; <ぼ>
- D - I - - 0x0269B0 19:A9A0: 00        .byte $00
- D - I - - 0x0269B1 19:A9A1: BD        .byte $BD    ; <ゾ>
- D - I - - 0x0269B2 19:A9A2: 00        .byte $00
- D - I - - 0x0269B3 19:A9A3: C0        .byte $C0    ; <ヅ>
- D - I - - 0x0269B4 19:A9A4: B5        .byte $B5    ; <ギ>
- D - I - - 0x0269B5 19:A9A5: BF        .byte $BF    ; <ヂ>
- D - I - - 0x0269B6 19:A9A6: C1        .byte $C1    ; <デ>
- D - I - - 0x0269B7 19:A9A7: C2        .byte $C2    ; <ド>
- D - I - - 0x0269B8 19:A9A8: B7        .byte $B7    ; <ゲ>
- D - I - - 0x0269B9 19:A9A9: 03        .byte $03    ; <う>
- D - I - - 0x0269BA 19:A9AA: 03        .byte $03    ; <う>
- D - I - - 0x0269BB 19:A9AB: 03        .byte $03    ; <う>
- D - I - - 0x0269BC 19:A9AC: 03        .byte $03    ; <う>
- D - I - - 0x0269BD 19:A9AD: 03        .byte $03    ; <う>
- D - I - - 0x0269BE 19:A9AE: 03        .byte $03    ; <う>
- D - I - - 0x0269BF 19:A9AF: 03        .byte $03    ; <う>
- D - I - - 0x0269C0 19:A9B0: 00        .byte $00
- D - I - - 0x0269C1 19:A9B1: C0        .byte $C0    ; <ヅ>
- D - I - - 0x0269C2 19:A9B2: 00        .byte $00
- D - I - - 0x0269C3 19:A9B3: C0        .byte $C0    ; <ヅ>
- D - I - - 0x0269C4 19:A9B4: C3        .byte $C3    ; <バ>
- D - I - - 0x0269C5 19:A9B5: C2        .byte $C2    ; <ド>
- D - I - - 0x0269C6 19:A9B6: C3        .byte $C3    ; <バ>
- D - I - - 0x0269C7 19:A9B7: E2        .byte $E2
- D - I - - 0x0269C8 19:A9B8: 03        .byte $03    ; <う>
- D - I - - 0x0269C9 19:A9B9: 03        .byte $03    ; <う>
- D - I - - 0x0269CA 19:A9BA: 03        .byte $03    ; <う>
- D - I - - 0x0269CB 19:A9BB: 03        .byte $03    ; <う>
- D - I - - 0x0269CC 19:A9BC: 03        .byte $03    ; <う>
- D - I - - 0x0269CD 19:A9BD: 03        .byte $03    ; <う>
- D - I - - 0x0269CE 19:A9BE: 03        .byte $03    ; <う>
- D - I - - 0x0269CF 19:A9BF: 03        .byte $03    ; <う>
- D - I - - 0x0269D0 19:A9C0: C0        .byte $C0    ; <ヅ>
- D - I - - 0x0269D1 19:A9C1: C5        .byte $C5    ; <ブ>
- D - I - - 0x0269D2 19:A9C2: C5        .byte $C5    ; <ブ>
- D - I - - 0x0269D3 19:A9C3: 00        .byte $00
- D - I - - 0x0269D4 19:A9C4: 3C        .byte $3C    ; <9>
- D - I - - 0x0269D5 19:A9C5: C6        .byte $C6    ; <ベ>
- D - I - - 0x0269D6 19:A9C6: C7        .byte $C7    ; <ボ>
- D - I - - 0x0269D7 19:A9C7: 00        .byte $00
- D - I - - 0x0269D8 19:A9C8: 03        .byte $03    ; <う>
- D - I - - 0x0269D9 19:A9C9: 02        .byte $02    ; <い>
- D - I - - 0x0269DA 19:A9CA: 02        .byte $02    ; <い>
- D - I - - 0x0269DB 19:A9CB: E9        .byte $E9
- D - I - - 0x0269DC 19:A9CC: 03        .byte $03    ; <う>
- D - I - - 0x0269DD 19:A9CD: 03        .byte $03    ; <う>
- D - I - - 0x0269DE 19:A9CE: 02        .byte $02    ; <い>
- D - I - - 0x0269DF 19:A9CF: EB        .byte $EB
- D - I - - 0x0269E0 19:A9D0: 00        .byte $00
- D - I - - 0x0269E1 19:A9D1: 00        .byte $00
- D - I - - 0x0269E2 19:A9D2: 00        .byte $00
- D - I - - 0x0269E3 19:A9D3: 00        .byte $00
- D - I - - 0x0269E4 19:A9D4: 00        .byte $00
- D - I - - 0x0269E5 19:A9D5: 00        .byte $00
- D - I - - 0x0269E6 19:A9D6: 00        .byte $00
- D - I - - 0x0269E7 19:A9D7: 00        .byte $00
- D - I - - 0x0269E8 19:A9D8: D0        .byte $D0    ; <ペ>
- D - I - - 0x0269E9 19:A9D9: D1        .byte $D1    ; <ポ>
- D - I - - 0x0269EA 19:A9DA: 00        .byte $00
- D - I - - 0x0269EB 19:A9DB: 00        .byte $00
- D - I - - 0x0269EC 19:A9DC: D2        .byte $D2
- D - I - - 0x0269ED 19:A9DD: D3        .byte $D3
- D - I - - 0x0269EE 19:A9DE: 00        .byte $00
- D - I - - 0x0269EF 19:A9DF: 00        .byte $00
- D - I - - 0x0269F0 19:A9E0: D4        .byte $D4
- D - I - - 0x0269F1 19:A9E1: 01        .byte $01    ; <あ>
- D - I - - 0x0269F2 19:A9E2: 01        .byte $01    ; <あ>
- D - I - - 0x0269F3 19:A9E3: 01        .byte $01    ; <あ>
- D - I - - 0x0269F4 19:A9E4: D6        .byte $D6
- D - I - - 0x0269F5 19:A9E5: D7        .byte $D7
- D - I - - 0x0269F6 19:A9E6: 01        .byte $01    ; <あ>
- D - I - - 0x0269F7 19:A9E7: 01        .byte $01    ; <あ>
- D - I - - 0x0269F8 19:A9E8: 00        .byte $00
- D - I - - 0x0269F9 19:A9E9: 00        .byte $00
- D - I - - 0x0269FA 19:A9EA: D5        .byte $D5
- D - I - - 0x0269FB 19:A9EB: 01        .byte $01    ; <あ>
- D - I - - 0x0269FC 19:A9EC: 00        .byte $00
- D - I - - 0x0269FD 19:A9ED: DE        .byte $DE
- D - I - - 0x0269FE 19:A9EE: DC        .byte $DC
- D - I - - 0x0269FF 19:A9EF: DD        .byte $DD
- D - I - - 0x026A00 19:A9F0: 01        .byte $01    ; <あ>
- D - I - - 0x026A01 19:A9F1: 01        .byte $01    ; <あ>
- D - I - - 0x026A02 19:A9F2: 01        .byte $01    ; <あ>
- D - I - - 0x026A03 19:A9F3: B9        .byte $B9    ; <ザ>
- D - I - - 0x026A04 19:A9F4: 01        .byte $01    ; <あ>
- D - I - - 0x026A05 19:A9F5: 01        .byte $01    ; <あ>
- D - I - - 0x026A06 19:A9F6: 01        .byte $01    ; <あ>
- D - I - - 0x026A07 19:A9F7: BB        .byte $BB    ; <ズ>
- D - I - - 0x026A08 19:A9F8: 01        .byte $01    ; <あ>
- D - I - - 0x026A09 19:A9F9: 01        .byte $01    ; <あ>
- D - I - - 0x026A0A 19:A9FA: 01        .byte $01    ; <あ>
- D - I - - 0x026A0B 19:A9FB: BC        .byte $BC    ; <ゼ>
- D - I - - 0x026A0C 19:A9FC: 01        .byte $01    ; <あ>
- D - I - - 0x026A0D 19:A9FD: 01        .byte $01    ; <あ>
- D - I - - 0x026A0E 19:A9FE: 01        .byte $01    ; <あ>
- D - I - - 0x026A0F 19:A9FF: BE        .byte $BE    ; <ダ>
- D - I - - 0x026A10 19:AA00: 03        .byte $03    ; <う>
- D - I - - 0x026A11 19:AA01: C8        .byte $C8    ; <ぱ>
- D - I - - 0x026A12 19:AA02: C9        .byte $C9    ; <ぴ>
- D - I - - 0x026A13 19:AA03: E3        .byte $E3
- D - I - - 0x026A14 19:AA04: 03        .byte $03    ; <う>
- D - I - - 0x026A15 19:AA05: CA        .byte $CA    ; <ぷ>
- D - I - - 0x026A16 19:AA06: CB        .byte $CB    ; <ぺ>
- D - I - - 0x026A17 19:AA07: E6        .byte $E6
- D - I - - 0x026A18 19:AA08: 03        .byte $03    ; <う>
- D - I - - 0x026A19 19:AA09: E0        .byte $E0
- D - I - - 0x026A1A 19:AA0A: E1        .byte $E1
- D - I - - 0x026A1B 19:AA0B: 03        .byte $03    ; <う>
- D - I - - 0x026A1C 19:AA0C: 03        .byte $03    ; <う>
- D - I - - 0x026A1D 19:AA0D: 03        .byte $03    ; <う>
- D - I - - 0x026A1E 19:AA0E: 03        .byte $03    ; <う>
- D - I - - 0x026A1F 19:AA0F: 03        .byte $03    ; <う>
- D - I - - 0x026A20 19:AA10: 03        .byte $03    ; <う>
- D - I - - 0x026A21 19:AA11: 03        .byte $03    ; <う>
- D - I - - 0x026A22 19:AA12: 03        .byte $03    ; <う>
- D - I - - 0x026A23 19:AA13: 03        .byte $03    ; <う>
- D - I - - 0x026A24 19:AA14: 03        .byte $03    ; <う>
- D - I - - 0x026A25 19:AA15: 03        .byte $03    ; <う>
- D - I - - 0x026A26 19:AA16: 03        .byte $03    ; <う>
- D - I - - 0x026A27 19:AA17: 03        .byte $03    ; <う>
- D - I - - 0x026A28 19:AA18: E8        .byte $E8
- D - I - - 0x026A29 19:AA19: 03        .byte $03    ; <う>
- D - I - - 0x026A2A 19:AA1A: 03        .byte $03    ; <う>
- D - I - - 0x026A2B 19:AA1B: 03        .byte $03    ; <う>
- D - I - - 0x026A2C 19:AA1C: EA        .byte $EA
- D - I - - 0x026A2D 19:AA1D: 03        .byte $03    ; <う>
- D - I - - 0x026A2E 19:AA1E: 03        .byte $03    ; <う>
- D - I - - 0x026A2F 19:AA1F: 03        .byte $03    ; <う>
- D - I - - 0x026A30 19:AA20: CC        .byte $CC    ; <ぽ>
- D - I - - 0x026A31 19:AA21: CD        .byte $CD    ; <パ>
- D - I - - 0x026A32 19:AA22: E7        .byte $E7
- D - I - - 0x026A33 19:AA23: EC        .byte $EC
- D - I - - 0x026A34 19:AA24: CE        .byte $CE    ; <ピ>
- D - I - - 0x026A35 19:AA25: CF        .byte $CF    ; <プ>
- D - I - - 0x026A36 19:AA26: C4        .byte $C4    ; <ビ>
- D - I - - 0x026A37 19:AA27: EE        .byte $EE
- D - I - - 0x026A38 19:AA28: E4        .byte $E4
- D - I - - 0x026A39 19:AA29: E5        .byte $E5
- D - I - - 0x026A3A 19:AA2A: 02        .byte $02    ; <い>
- D - I - - 0x026A3B 19:AA2B: 02        .byte $02    ; <い>
- D - I - - 0x026A3C 19:AA2C: 03        .byte $03    ; <う>
- D - I - - 0x026A3D 19:AA2D: 03        .byte $03    ; <う>
- D - I - - 0x026A3E 19:AA2E: 02        .byte $02    ; <い>
- D - I - - 0x026A3F 19:AA2F: 02        .byte $02    ; <い>
- D - I - - 0x026A40 19:AA30: D8        .byte $D8
- D - I - - 0x026A41 19:AA31: D9        .byte $D9
- D - I - - 0x026A42 19:AA32: 00        .byte $00
- D - I - - 0x026A43 19:AA33: 00        .byte $00
- D - I - - 0x026A44 19:AA34: DA        .byte $DA
- D - I - - 0x026A45 19:AA35: DB        .byte $DB
- D - I - - 0x026A46 19:AA36: 00        .byte $00
- D - I - - 0x026A47 19:AA37: 00        .byte $00
- D - I - - 0x026A48 19:AA38: F0        .byte $F0
- D - I - - 0x026A49 19:AA39: F1        .byte $F1
- D - I - - 0x026A4A 19:AA3A: 00        .byte $00
- D - I - - 0x026A4B 19:AA3B: 00        .byte $00
- D - I - - 0x026A4C 19:AA3C: F2        .byte $F2
- D - I - - 0x026A4D 19:AA3D: F3        .byte $F3
- D - I - - 0x026A4E 19:AA3E: 00        .byte $00
- D - I - - 0x026A4F 19:AA3F: 00        .byte $00
- D - I - - 0x026A50 19:AA40: 00        .byte $00
- D - I - - 0x026A51 19:AA41: 00        .byte $00
- D - I - - 0x026A52 19:AA42: 00        .byte $00
- D - I - - 0x026A53 19:AA43: DF        .byte $DF
- D - I - - 0x026A54 19:AA44: 00        .byte $00
- D - I - - 0x026A55 19:AA45: F4        .byte $F4
- D - I - - 0x026A56 19:AA46: F5        .byte $F5
- D - I - - 0x026A57 19:AA47: 01        .byte $01    ; <あ>
- D - I - - 0x026A58 19:AA48: F6        .byte $F6
- D - I - - 0x026A59 19:AA49: F7        .byte $F7
- D - I - - 0x026A5A 19:AA4A: 01        .byte $01    ; <あ>
- D - I - - 0x026A5B 19:AA4B: 01        .byte $01    ; <あ>
- D - I - - 0x026A5C 19:AA4C: ED        .byte $ED
- D - I - - 0x026A5D 19:AA4D: 01        .byte $01    ; <あ>
- D - I - - 0x026A5E 19:AA4E: 01        .byte $01    ; <あ>
- D - I - - 0x026A5F 19:AA4F: 01        .byte $01    ; <あ>
- D - I - - 0x026A60 19:AA50: 61        .byte $61    ; <ム>
- D - I - - 0x026A61 19:AA51: 61        .byte $61    ; <ム>
- D - I - - 0x026A62 19:AA52: 61        .byte $61    ; <ム>
- D - I - - 0x026A63 19:AA53: 61        .byte $61    ; <ム>
- D - I - - 0x026A64 19:AA54: 63        .byte $63    ; <モ>
- D - I - - 0x026A65 19:AA55: 63        .byte $63    ; <モ>
- D - I - - 0x026A66 19:AA56: 63        .byte $63    ; <モ>
- D - I - - 0x026A67 19:AA57: 63        .byte $63    ; <モ>
- D - I - - 0x026A68 19:AA58: 69        .byte $69    ; <ル>
- D - I - - 0x026A69 19:AA59: 69        .byte $69    ; <ル>
- D - I - - 0x026A6A 19:AA5A: 69        .byte $69    ; <ル>
- D - I - - 0x026A6B 19:AA5B: 69        .byte $69    ; <ル>
- D - I - - 0x026A6C 19:AA5C: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026A6D 19:AA5D: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026A6E 19:AA5E: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026A6F 19:AA5F: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026A70 19:AA60: 69        .byte $69    ; <ル>
- D - I - - 0x026A71 19:AA61: 69        .byte $69    ; <ル>
- D - I - - 0x026A72 19:AA62: 69        .byte $69    ; <ル>
- D - I - - 0x026A73 19:AA63: 69        .byte $69    ; <ル>
- D - I - - 0x026A74 19:AA64: F5        .byte $F5
- D - I - - 0x026A75 19:AA65: F5        .byte $F5
- D - I - - 0x026A76 19:AA66: F5        .byte $F5
- D - I - - 0x026A77 19:AA67: F5        .byte $F5
- D - I - - 0x026A78 19:AA68: F7        .byte $F7
- D - I - - 0x026A79 19:AA69: F7        .byte $F7
- D - I - - 0x026A7A 19:AA6A: F7        .byte $F7
- D - I - - 0x026A7B 19:AA6B: F7        .byte $F7
- D - I - - 0x026A7C 19:AA6C: FD        .byte $FD
- D - I - - 0x026A7D 19:AA6D: FD        .byte $FD
- D - I - - 0x026A7E 19:AA6E: FD        .byte $FD
- D - I - - 0x026A7F 19:AA6F: FD        .byte $FD
- D - I - - 0x026A80 19:AA70: FF        .byte $FF
- D - I - - 0x026A81 19:AA71: FF        .byte $FF
- D - I - - 0x026A82 19:AA72: FF        .byte $FF
- D - I - - 0x026A83 19:AA73: FF        .byte $FF
- D - I - - 0x026A84 19:AA74: FC        .byte $FC
- D - I - - 0x026A85 19:AA75: FC        .byte $FC
- D - I - - 0x026A86 19:AA76: FC        .byte $FC
- D - I - - 0x026A87 19:AA77: FC        .byte $FC
- D - I - - 0x026A88 19:AA78: FE        .byte $FE
- D - I - - 0x026A89 19:AA79: FE        .byte $FE
- D - I - - 0x026A8A 19:AA7A: FE        .byte $FE
- D - I - - 0x026A8B 19:AA7B: FE        .byte $FE
- D - I - - 0x026A8C 19:AA7C: FF        .byte $FF
- D - I - - 0x026A8D 19:AA7D: FF        .byte $FF
- D - I - - 0x026A8E 19:AA7E: FF        .byte $FF
- D - I - - 0x026A8F 19:AA7F: FF        .byte $FF
- D - I - - 0x026A90 19:AA80: FB        .byte $FB
- D - I - - 0x026A91 19:AA81: FB        .byte $FB
- D - I - - 0x026A92 19:AA82: FB        .byte $FB
- D - I - - 0x026A93 19:AA83: FB        .byte $FB
- D - I - - 0x026A94 19:AA84: F6        .byte $F6
- D - I - - 0x026A95 19:AA85: F6        .byte $F6
- D - I - - 0x026A96 19:AA86: F6        .byte $F6
- D - I - - 0x026A97 19:AA87: F6        .byte $F6
- D - I - - 0x026A98 19:AA88: 00        .byte $00
- D - I - - 0x026A99 19:AA89: 00        .byte $00
- D - I - - 0x026A9A 19:AA8A: 00        .byte $00
- D - I - - 0x026A9B 19:AA8B: 00        .byte $00
- D - I - - 0x026A9C 19:AA8C: 00        .byte $00
- D - I - - 0x026A9D 19:AA8D: 00        .byte $00
- D - I - - 0x026A9E 19:AA8E: 00        .byte $00
- D - I - - 0x026A9F 19:AA8F: 00        .byte $00
- D - I - - 0x026AA0 19:AA90: FC        .byte $FC
- D - I - - 0x026AA1 19:AA91: FE        .byte $FE
- D - I - - 0x026AA2 19:AA92: FE        .byte $FE
- D - I - - 0x026AA3 19:AA93: FE        .byte $FE
- D - I - - 0x026AA4 19:AA94: FE        .byte $FE
- D - I - - 0x026AA5 19:AA95: FC        .byte $FC
- D - I - - 0x026AA6 19:AA96: FE        .byte $FE
- D - I - - 0x026AA7 19:AA97: FE        .byte $FE
- D - I - - 0x026AA8 19:AA98: FE        .byte $FE
- D - I - - 0x026AA9 19:AA99: FE        .byte $FE
- D - I - - 0x026AAA 19:AA9A: FC        .byte $FC
- D - I - - 0x026AAB 19:AA9B: FE        .byte $FE
- D - I - - 0x026AAC 19:AA9C: FE        .byte $FE
- D - I - - 0x026AAD 19:AA9D: FE        .byte $FE
- D - I - - 0x026AAE 19:AA9E: FE        .byte $FE
- D - I - - 0x026AAF 19:AA9F: FC        .byte $FC
- D - I - - 0x026AB0 19:AAA0: FC        .byte $FC
- D - I - - 0x026AB1 19:AAA1: FE        .byte $FE
- D - I - - 0x026AB2 19:AAA2: FE        .byte $FE
- D - I - - 0x026AB3 19:AAA3: FE        .byte $FE
- D - I - - 0x026AB4 19:AAA4: FE        .byte $FE
- D - I - - 0x026AB5 19:AAA5: FC        .byte $FC
- D - I - - 0x026AB6 19:AAA6: FE        .byte $FE
- D - I - - 0x026AB7 19:AAA7: FE        .byte $FE
- D - I - - 0x026AB8 19:AAA8: 00        .byte $00
- D - I - - 0x026AB9 19:AAA9: 00        .byte $00
- D - I - - 0x026ABA 19:AAAA: 00        .byte $00
- D - I - - 0x026ABB 19:AAAB: 00        .byte $00
- D - I - - 0x026ABC 19:AAAC: 00        .byte $00
- D - I - - 0x026ABD 19:AAAD: 00        .byte $00
- D - I - - 0x026ABE 19:AAAE: 00        .byte $00
- D - I - - 0x026ABF 19:AAAF: 00        .byte $00
- D - I - - 0x026AC0 19:AAB0: FE        .byte $FE
- D - I - - 0x026AC1 19:AAB1: FE        .byte $FE
- D - I - - 0x026AC2 19:AAB2: FE        .byte $FE
- D - I - - 0x026AC3 19:AAB3: FE        .byte $FE
- D - I - - 0x026AC4 19:AAB4: FE        .byte $FE
- D - I - - 0x026AC5 19:AAB5: FE        .byte $FE
- D - I - - 0x026AC6 19:AAB6: FE        .byte $FE
- D - I - - 0x026AC7 19:AAB7: FE        .byte $FE
- D - I - - 0x026AC8 19:AAB8: FE        .byte $FE
- D - I - - 0x026AC9 19:AAB9: FE        .byte $FE
- D - I - - 0x026ACA 19:AABA: FE        .byte $FE
- D - I - - 0x026ACB 19:AABB: FE        .byte $FE
- D - I - - 0x026ACC 19:AABC: FE        .byte $FE
- D - I - - 0x026ACD 19:AABD: FE        .byte $FE
- D - I - - 0x026ACE 19:AABE: FE        .byte $FE
- D - I - - 0x026ACF 19:AABF: FE        .byte $FE
- D - I - - 0x026AD0 19:AAC0: FE        .byte $FE
- D - I - - 0x026AD1 19:AAC1: FE        .byte $FE
- D - I - - 0x026AD2 19:AAC2: FE        .byte $FE
- D - I - - 0x026AD3 19:AAC3: FE        .byte $FE
- D - I - - 0x026AD4 19:AAC4: FE        .byte $FE
- D - I - - 0x026AD5 19:AAC5: FE        .byte $FE
- D - I - - 0x026AD6 19:AAC6: FE        .byte $FE
- D - I - - 0x026AD7 19:AAC7: FE        .byte $FE
- D - I - - 0x026AD8 19:AAC8: 00        .byte $00
- D - I - - 0x026AD9 19:AAC9: 00        .byte $00
- D - I - - 0x026ADA 19:AACA: 00        .byte $00
- D - I - - 0x026ADB 19:AACB: 00        .byte $00
- D - I - - 0x026ADC 19:AACC: 00        .byte $00
- D - I - - 0x026ADD 19:AACD: 00        .byte $00
- D - I - - 0x026ADE 19:AACE: 00        .byte $00
- D - I - - 0x026ADF 19:AACF: 00        .byte $00
- D - I - - 0x026AE0 19:AAD0: 01        .byte $01    ; <あ>
- D - I - - 0x026AE1 19:AAD1: 01        .byte $01    ; <あ>
- D - I - - 0x026AE2 19:AAD2: 01        .byte $01    ; <あ>
- D - I - - 0x026AE3 19:AAD3: 01        .byte $01    ; <あ>
- D - I - - 0x026AE4 19:AAD4: 01        .byte $01    ; <あ>
- D - I - - 0x026AE5 19:AAD5: 01        .byte $01    ; <あ>
- D - I - - 0x026AE6 19:AAD6: 01        .byte $01    ; <あ>
- D - I - - 0x026AE7 19:AAD7: 01        .byte $01    ; <あ>
- D - I - - 0x026AE8 19:AAD8: 60        .byte $60    ; <ミ>
- D - I - - 0x026AE9 19:AAD9: 60        .byte $60    ; <ミ>
- D - I - - 0x026AEA 19:AADA: 60        .byte $60    ; <ミ>
- D - I - - 0x026AEB 19:AADB: 60        .byte $60    ; <ミ>
- D - I - - 0x026AEC 19:AADC: 62        .byte $62    ; <メ>
- D - I - - 0x026AED 19:AADD: 62        .byte $62    ; <メ>
- D - I - - 0x026AEE 19:AADE: 62        .byte $62    ; <メ>
- D - I - - 0x026AEF 19:AADF: 62        .byte $62    ; <メ>
- D - I - - 0x026AF0 19:AAE0: 68        .byte $68    ; <リ>
- D - I - - 0x026AF1 19:AAE1: 68        .byte $68    ; <リ>
- D - I - - 0x026AF2 19:AAE2: 68        .byte $68    ; <リ>
- D - I - - 0x026AF3 19:AAE3: 68        .byte $68    ; <リ>
- D - I - - 0x026AF4 19:AAE4: 6A        .byte $6A    ; <レ>
- D - I - - 0x026AF5 19:AAE5: 6A        .byte $6A    ; <レ>
- D - I - - 0x026AF6 19:AAE6: 6A        .byte $6A    ; <レ>
- D - I - - 0x026AF7 19:AAE7: 6A        .byte $6A    ; <レ>
- D - I - - 0x026AF8 19:AAE8: 61        .byte $61    ; <ム>
- D - I - - 0x026AF9 19:AAE9: 61        .byte $61    ; <ム>
- D - I - - 0x026AFA 19:AAEA: 61        .byte $61    ; <ム>
- D - I - - 0x026AFB 19:AAEB: 61        .byte $61    ; <ム>
- D - I - - 0x026AFC 19:AAEC: 63        .byte $63    ; <モ>
- D - I - - 0x026AFD 19:AAED: 63        .byte $63    ; <モ>
- D - I - - 0x026AFE 19:AAEE: 63        .byte $63    ; <モ>
- D - I - - 0x026AFF 19:AAEF: 63        .byte $63    ; <モ>
- D - I - - 0x026B00 19:AAF0: 69        .byte $69    ; <ル>
- D - I - - 0x026B01 19:AAF1: 69        .byte $69    ; <ル>
- D - I - - 0x026B02 19:AAF2: 69        .byte $69    ; <ル>
- D - I - - 0x026B03 19:AAF3: 69        .byte $69    ; <ル>
- D - I - - 0x026B04 19:AAF4: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026B05 19:AAF5: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026B06 19:AAF6: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026B07 19:AAF7: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026B08 19:AAF8: 00        .byte $00
- D - I - - 0x026B09 19:AAF9: 00        .byte $00
- D - I - - 0x026B0A 19:AAFA: 00        .byte $00
- D - I - - 0x026B0B 19:AAFB: 00        .byte $00
- D - I - - 0x026B0C 19:AAFC: 00        .byte $00
- D - I - - 0x026B0D 19:AAFD: 00        .byte $00
- D - I - - 0x026B0E 19:AAFE: 00        .byte $00
- D - I - - 0x026B0F 19:AAFF: 00        .byte $00
- D - I - - 0x026B10 19:AB00: 01        .byte $01    ; <あ>
- D - I - - 0x026B11 19:AB01: 01        .byte $01    ; <あ>
- D - I - - 0x026B12 19:AB02: 01        .byte $01    ; <あ>
- D - I - - 0x026B13 19:AB03: 01        .byte $01    ; <あ>
- D - I - - 0x026B14 19:AB04: 01        .byte $01    ; <あ>
- D - I - - 0x026B15 19:AB05: 01        .byte $01    ; <あ>
- D - I - - 0x026B16 19:AB06: 01        .byte $01    ; <あ>
- D - I - - 0x026B17 19:AB07: 01        .byte $01    ; <あ>
- D - I - - 0x026B18 19:AB08: 01        .byte $01    ; <あ>
- D - I - - 0x026B19 19:AB09: 01        .byte $01    ; <あ>
- D - I - - 0x026B1A 19:AB0A: 01        .byte $01    ; <あ>
- D - I - - 0x026B1B 19:AB0B: 01        .byte $01    ; <あ>
- D - I - - 0x026B1C 19:AB0C: 0D        .byte $0D    ; <す>
- D - I - - 0x026B1D 19:AB0D: 0D        .byte $0D    ; <す>
- D - I - - 0x026B1E 19:AB0E: 01        .byte $01    ; <あ>
- D - I - - 0x026B1F 19:AB0F: 1A        .byte $1A    ; <は>
- D - I - - 0x026B20 19:AB10: 01        .byte $01    ; <あ>
- D - I - - 0x026B21 19:AB11: 01        .byte $01    ; <あ>
- D - I - - 0x026B22 19:AB12: 01        .byte $01    ; <あ>
- D - I - - 0x026B23 19:AB13: 01        .byte $01    ; <あ>
- D - I - - 0x026B24 19:AB14: 01        .byte $01    ; <あ>
- D - I - - 0x026B25 19:AB15: 01        .byte $01    ; <あ>
- D - I - - 0x026B26 19:AB16: 01        .byte $01    ; <あ>
- D - I - - 0x026B27 19:AB17: 01        .byte $01    ; <あ>
- D - I - - 0x026B28 19:AB18: 01        .byte $01    ; <あ>
- D - I - - 0x026B29 19:AB19: 01        .byte $01    ; <あ>
- D - I - - 0x026B2A 19:AB1A: 1A        .byte $1A    ; <は>
- D - I - - 0x026B2B 19:AB1B: 1A        .byte $1A    ; <は>
- D - I - - 0x026B2C 19:AB1C: 1A        .byte $1A    ; <は>
- D - I - - 0x026B2D 19:AB1D: 01        .byte $01    ; <あ>
- D - I - - 0x026B2E 19:AB1E: 02        .byte $02    ; <い>
- D - I - - 0x026B2F 19:AB1F: 04        .byte $04    ; <え>
- D - I - - 0x026B30 19:AB20: 01        .byte $01    ; <あ>
- D - I - - 0x026B31 19:AB21: 01        .byte $01    ; <あ>
- D - I - - 0x026B32 19:AB22: 01        .byte $01    ; <あ>
- D - I - - 0x026B33 19:AB23: 01        .byte $01    ; <あ>
- D - I - - 0x026B34 19:AB24: 01        .byte $01    ; <あ>
- D - I - - 0x026B35 19:AB25: 01        .byte $01    ; <あ>
- D - I - - 0x026B36 19:AB26: 01        .byte $01    ; <あ>
- D - I - - 0x026B37 19:AB27: 01        .byte $01    ; <あ>
- D - I - - 0x026B38 19:AB28: 1A        .byte $1A    ; <は>
- D - I - - 0x026B39 19:AB29: 1A        .byte $1A    ; <は>
- D - I - - 0x026B3A 19:AB2A: 01        .byte $01    ; <あ>
- D - I - - 0x026B3B 19:AB2B: 01        .byte $01    ; <あ>
- D - I - - 0x026B3C 19:AB2C: 04        .byte $04    ; <え>
- D - I - - 0x026B3D 19:AB2D: 05        .byte $05    ; <お>
- D - I - - 0x026B3E 19:AB2E: 01        .byte $01    ; <あ>
- D - I - - 0x026B3F 19:AB2F: 1A        .byte $1A    ; <は>
- D - I - - 0x026B40 19:AB30: 01        .byte $01    ; <あ>
- D - I - - 0x026B41 19:AB31: 01        .byte $01    ; <あ>
- D - I - - 0x026B42 19:AB32: 01        .byte $01    ; <あ>
- D - I - - 0x026B43 19:AB33: 01        .byte $01    ; <あ>
- D - I - - 0x026B44 19:AB34: 01        .byte $01    ; <あ>
- D - I - - 0x026B45 19:AB35: 01        .byte $01    ; <あ>
- D - I - - 0x026B46 19:AB36: 01        .byte $01    ; <あ>
- D - I - - 0x026B47 19:AB37: 01        .byte $01    ; <あ>
- D - I - - 0x026B48 19:AB38: 01        .byte $01    ; <あ>
- D - I - - 0x026B49 19:AB39: 01        .byte $01    ; <あ>
- D - I - - 0x026B4A 19:AB3A: 01        .byte $01    ; <あ>
- D - I - - 0x026B4B 19:AB3B: 01        .byte $01    ; <あ>
- D - I - - 0x026B4C 19:AB3C: 1A        .byte $1A    ; <は>
- D - I - - 0x026B4D 19:AB3D: 01        .byte $01    ; <あ>
- D - I - - 0x026B4E 19:AB3E: 0D        .byte $0D    ; <す>
- D - I - - 0x026B4F 19:AB3F: 0D        .byte $0D    ; <す>
- D - I - - 0x026B50 19:AB40: 3C        .byte $3C    ; <9>
- D - I - - 0x026B51 19:AB41: 3C        .byte $3C    ; <9>
- D - I - - 0x026B52 19:AB42: 08        .byte $08    ; <く>
- D - I - - 0x026B53 19:AB43: 09        .byte $09    ; <け>
- D - I - - 0x026B54 19:AB44: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B55 19:AB45: 12        .byte $12    ; <つ>
- D - I - - 0x026B56 19:AB46: 12        .byte $12    ; <つ>
- D - I - - 0x026B57 19:AB47: 0B        .byte $0B    ; <さ>
- D - I - - 0x026B58 19:AB48: 18        .byte $18    ; <ね>
- D - I - - 0x026B59 19:AB49: 19        .byte $19    ; <の>
- D - I - - 0x026B5A 19:AB4A: 10        .byte $10    ; <た>
- D - I - - 0x026B5B 19:AB4B: 3C        .byte $3C    ; <9>
- D - I - - 0x026B5C 19:AB4C: 0B        .byte $0B    ; <さ>
- D - I - - 0x026B5D 19:AB4D: 0E        .byte $0E    ; <せ>
- D - I - - 0x026B5E 19:AB4E: 12        .byte $12    ; <つ>
- D - I - - 0x026B5F 19:AB4F: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B60 19:AB50: 0C        .byte $0C    ; <し>
- D - I - - 0x026B61 19:AB51: 08        .byte $08    ; <く>
- D - I - - 0x026B62 19:AB52: 03        .byte $03    ; <う>
- D - I - - 0x026B63 19:AB53: 06        .byte $06    ; <か>
- D - I - - 0x026B64 19:AB54: 0E        .byte $0E    ; <せ>
- D - I - - 0x026B65 19:AB55: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B66 19:AB56: 17        .byte $17    ; <ぬ>
- D - I - - 0x026B67 19:AB57: 17        .byte $17    ; <ぬ>
- D - I - - 0x026B68 19:AB58: 11        .byte $11    ; <ち>
- D - I - - 0x026B69 19:AB59: 10        .byte $10    ; <た>
- D - I - - 0x026B6A 19:AB5A: 3C        .byte $3C    ; <9>
- D - I - - 0x026B6B 19:AB5B: 3C        .byte $3C    ; <9>
- D - I - - 0x026B6C 19:AB5C: 13        .byte $13    ; <て>
- D - I - - 0x026B6D 19:AB5D: 12        .byte $12    ; <つ>
- D - I - - 0x026B6E 19:AB5E: 71        .byte $71    ; <ュ>
- D - I - - 0x026B6F 19:AB5F: 74        .byte $74    ; <ィ>
- D - I - - 0x026B70 19:AB60: 06        .byte $06    ; <か>
- D - I - - 0x026B71 19:AB61: 07        .byte $07    ; <き>
- D - I - - 0x026B72 19:AB62: 09        .byte $09    ; <け>
- D - I - - 0x026B73 19:AB63: 0C        .byte $0C    ; <し>
- D - I - - 0x026B74 19:AB64: 17        .byte $17    ; <ぬ>
- D - I - - 0x026B75 19:AB65: 17        .byte $17    ; <ぬ>
- D - I - - 0x026B76 19:AB66: 0B        .byte $0B    ; <さ>
- D - I - - 0x026B77 19:AB67: 0E        .byte $0E    ; <せ>
- D - I - - 0x026B78 19:AB68: 18        .byte $18    ; <ね>
- D - I - - 0x026B79 19:AB69: 19        .byte $19    ; <の>
- D - I - - 0x026B7A 19:AB6A: 3C        .byte $3C    ; <9>
- D - I - - 0x026B7B 19:AB6B: 10        .byte $10    ; <た>
- D - I - - 0x026B7C 19:AB6C: 75        .byte $75    ; <ェ>
- D - I - - 0x026B7D 19:AB6D: 0E        .byte $0E    ; <せ>
- D - I - - 0x026B7E 19:AB6E: 12        .byte $12    ; <つ>
- D - I - - 0x026B7F 19:AB6F: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B80 19:AB70: 08        .byte $08    ; <く>
- D - I - - 0x026B81 19:AB71: 08        .byte $08    ; <く>
- D - I - - 0x026B82 19:AB72: 3C        .byte $3C    ; <9>
- D - I - - 0x026B83 19:AB73: 11        .byte $11    ; <ち>
- D - I - - 0x026B84 19:AB74: 12        .byte $12    ; <つ>
- D - I - - 0x026B85 19:AB75: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B86 19:AB76: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B87 19:AB77: 13        .byte $13    ; <て>
- D - I - - 0x026B88 19:AB78: 11        .byte $11    ; <ち>
- D - I - - 0x026B89 19:AB79: 10        .byte $10    ; <た>
- D - I - - 0x026B8A 19:AB7A: 3C        .byte $3C    ; <9>
- D - I - - 0x026B8B 19:AB7B: 3C        .byte $3C    ; <9>
- D - I - - 0x026B8C 19:AB7C: 13        .byte $13    ; <て>
- D - I - - 0x026B8D 19:AB7D: 0A        .byte $0A    ; <こ>
- D - I - - 0x026B8E 19:AB7E: 12        .byte $12    ; <つ>
- D - I - - 0x026B8F 19:AB7F: 12        .byte $12    ; <つ>
- D - I - - 0x026B90 19:AB80: 01        .byte $01    ; <あ>
- D - I - - 0x026B91 19:AB81: 01        .byte $01    ; <あ>
- D - I - - 0x026B92 19:AB82: 01        .byte $01    ; <あ>
- D - I - - 0x026B93 19:AB83: 01        .byte $01    ; <あ>
- D - I - - 0x026B94 19:AB84: 01        .byte $01    ; <あ>
- D - I - - 0x026B95 19:AB85: 01        .byte $01    ; <あ>
- D - I - - 0x026B96 19:AB86: 01        .byte $01    ; <あ>
- D - I - - 0x026B97 19:AB87: 01        .byte $01    ; <あ>
- D - I - - 0x026B98 19:AB88: 16        .byte $16    ; <に>
- D - I - - 0x026B99 19:AB89: 16        .byte $16    ; <に>
- D - I - - 0x026B9A 19:AB8A: 16        .byte $16    ; <に>
- D - I - - 0x026B9B 19:AB8B: 16        .byte $16    ; <に>
- D - I - - 0x026B9C 19:AB8C: 01        .byte $01    ; <あ>
- D - I - - 0x026B9D 19:AB8D: 01        .byte $01    ; <あ>
- D - I - - 0x026B9E 19:AB8E: 01        .byte $01    ; <あ>
- D - I - - 0x026B9F 19:AB8F: 01        .byte $01    ; <あ>
- - - - - - 0x026BA0 19:AB90: 00        .byte $00
- - - - - - 0x026BA1 19:AB91: 00        .byte $00
- - - - - - 0x026BA2 19:AB92: 00        .byte $00
- - - - - - 0x026BA3 19:AB93: 00        .byte $00
- - - - - - 0x026BA4 19:AB94: 00        .byte $00
- - - - - - 0x026BA5 19:AB95: 00        .byte $00
- - - - - - 0x026BA6 19:AB96: 00        .byte $00
- - - - - - 0x026BA7 19:AB97: 00        .byte $00
- - - - - - 0x026BA8 19:AB98: 00        .byte $00
- - - - - - 0x026BA9 19:AB99: 00        .byte $00
- - - - - - 0x026BAA 19:AB9A: 00        .byte $00
- - - - - - 0x026BAB 19:AB9B: 00        .byte $00
- - - - - - 0x026BAC 19:AB9C: 00        .byte $00
- - - - - - 0x026BAD 19:AB9D: 00        .byte $00
- - - - - - 0x026BAE 19:AB9E: 00        .byte $00
- - - - - - 0x026BAF 19:AB9F: 00        .byte $00
- D - I - - 0x026BB0 19:ABA0: 00        .byte $00
- D - I - - 0x026BB1 19:ABA1: 00        .byte $00
- D - I - - 0x026BB2 19:ABA2: 00        .byte $00
- D - I - - 0x026BB3 19:ABA3: 00        .byte $00
- D - I - - 0x026BB4 19:ABA4: 00        .byte $00
- D - I - - 0x026BB5 19:ABA5: 00        .byte $00
- D - I - - 0x026BB6 19:ABA6: 00        .byte $00
- D - I - - 0x026BB7 19:ABA7: 01        .byte $01    ; <あ>
- D - I - - 0x026BB8 19:ABA8: 00        .byte $00
- D - I - - 0x026BB9 19:ABA9: 00        .byte $00
- D - I - - 0x026BBA 19:ABAA: 00        .byte $00
- D - I - - 0x026BBB 19:ABAB: 01        .byte $01    ; <あ>
- D - I - - 0x026BBC 19:ABAC: 00        .byte $00
- D - I - - 0x026BBD 19:ABAD: 00        .byte $00
- D - I - - 0x026BBE 19:ABAE: 00        .byte $00
- D - I - - 0x026BBF 19:ABAF: 01        .byte $01    ; <あ>
- D - I - - 0x026BC0 19:ABB0: 00        .byte $00
- D - I - - 0x026BC1 19:ABB1: 00        .byte $00
- D - I - - 0x026BC2 19:ABB2: 00        .byte $00
- D - I - - 0x026BC3 19:ABB3: 00        .byte $00
- D - I - - 0x026BC4 19:ABB4: 01        .byte $01    ; <あ>
- D - I - - 0x026BC5 19:ABB5: 00        .byte $00
- D - I - - 0x026BC6 19:ABB6: 00        .byte $00
- D - I - - 0x026BC7 19:ABB7: 00        .byte $00
- D - I - - 0x026BC8 19:ABB8: 01        .byte $01    ; <あ>
- D - I - - 0x026BC9 19:ABB9: 00        .byte $00
- D - I - - 0x026BCA 19:ABBA: 00        .byte $00
- D - I - - 0x026BCB 19:ABBB: 00        .byte $00
- D - I - - 0x026BCC 19:ABBC: 01        .byte $01    ; <あ>
- D - I - - 0x026BCD 19:ABBD: 00        .byte $00
- D - I - - 0x026BCE 19:ABBE: 00        .byte $00
- D - I - - 0x026BCF 19:ABBF: 00        .byte $00
- D - I - - 0x026BD0 19:ABC0: 00        .byte $00
- D - I - - 0x026BD1 19:ABC1: 00        .byte $00
- D - I - - 0x026BD2 19:ABC2: 00        .byte $00
- D - I - - 0x026BD3 19:ABC3: 00        .byte $00
- D - I - - 0x026BD4 19:ABC4: 01        .byte $01    ; <あ>
- D - I - - 0x026BD5 19:ABC5: 01        .byte $01    ; <あ>
- D - I - - 0x026BD6 19:ABC6: 01        .byte $01    ; <あ>
- D - I - - 0x026BD7 19:ABC7: 01        .byte $01    ; <あ>
- D - I - - 0x026BD8 19:ABC8: 01        .byte $01    ; <あ>
- D - I - - 0x026BD9 19:ABC9: 01        .byte $01    ; <あ>
- D - I - - 0x026BDA 19:ABCA: 01        .byte $01    ; <あ>
- D - I - - 0x026BDB 19:ABCB: 01        .byte $01    ; <あ>
- D - I - - 0x026BDC 19:ABCC: 01        .byte $01    ; <あ>
- D - I - - 0x026BDD 19:ABCD: 01        .byte $01    ; <あ>
- D - I - - 0x026BDE 19:ABCE: 01        .byte $01    ; <あ>
- D - I - - 0x026BDF 19:ABCF: 01        .byte $01    ; <あ>
- D - I - - 0x026BE0 19:ABD0: 00        .byte $00
- D - I - - 0x026BE1 19:ABD1: 00        .byte $00
- D - I - - 0x026BE2 19:ABD2: 00        .byte $00
- D - I - - 0x026BE3 19:ABD3: 01        .byte $01    ; <あ>
- D - I - - 0x026BE4 19:ABD4: 00        .byte $00
- D - I - - 0x026BE5 19:ABD5: 00        .byte $00
- D - I - - 0x026BE6 19:ABD6: 00        .byte $00
- D - I - - 0x026BE7 19:ABD7: 78        .byte $78    ; <?>
- D - I - - 0x026BE8 19:ABD8: 00        .byte $00
- D - I - - 0x026BE9 19:ABD9: 00        .byte $00
- D - I - - 0x026BEA 19:ABDA: 00        .byte $00
- D - I - - 0x026BEB 19:ABDB: 7A        .byte $7A    ; <、>
- D - I - - 0x026BEC 19:ABDC: 00        .byte $00
- D - I - - 0x026BED 19:ABDD: 00        .byte $00
- D - I - - 0x026BEE 19:ABDE: 00        .byte $00
- D - I - - 0x026BEF 19:ABDF: 00        .byte $00
- D - I - - 0x026BF0 19:ABE0: 73        .byte $73    ; <ヮ>
- D - I - - 0x026BF1 19:ABE1: 76        .byte $76    ; <ォ>
- D - I - - 0x026BF2 19:ABE2: 01        .byte $01    ; <あ>
- D - I - - 0x026BF3 19:ABE3: 01        .byte $01    ; <あ>
- D - I - - 0x026BF4 19:ABE4: 79        .byte $79    ; <!>
- D - I - - 0x026BF5 19:ABE5: 7C        .byte $7C    ; <~>
- D - I - - 0x026BF6 19:ABE6: 4A        .byte $4A    ; <コ>
- D - I - - 0x026BF7 19:ABE7: 6F        .byte $6F    ; <ッ>
- D - I - - 0x026BF8 19:ABE8: 7B        .byte $7B    ; <。>
- D - I - - 0x026BF9 19:ABE9: 7E        .byte $7E    ; <.>
- D - I - - 0x026BFA 19:ABEA: 70        .byte $70    ; <ャ>
- D - I - - 0x026BFB 19:ABEB: 71        .byte $71    ; <ュ>
- D - I - - 0x026BFC 19:ABEC: 00        .byte $00
- D - I - - 0x026BFD 19:ABED: 00        .byte $00
- D - I - - 0x026BFE 19:ABEE: 00        .byte $00
- D - I - - 0x026BFF 19:ABEF: 00        .byte $00
- D - I - - 0x026C00 19:ABF0: 01        .byte $01    ; <あ>
- D - I - - 0x026C01 19:ABF1: 01        .byte $01    ; <あ>
- D - I - - 0x026C02 19:ABF2: 01        .byte $01    ; <あ>
- D - I - - 0x026C03 19:ABF3: 01        .byte $01    ; <あ>
- D - I - - 0x026C04 19:ABF4: 70        .byte $70    ; <ャ>
- D - I - - 0x026C05 19:ABF5: 74        .byte $74    ; <ィ>
- D - I - - 0x026C06 19:ABF6: 12        .byte $12    ; <つ>
- D - I - - 0x026C07 19:ABF7: 70        .byte $70    ; <ャ>
- D - I - - 0x026C08 19:ABF8: 70        .byte $70    ; <ャ>
- D - I - - 0x026C09 19:ABF9: 74        .byte $74    ; <ィ>
- D - I - - 0x026C0A 19:ABFA: 12        .byte $12    ; <つ>
- D - I - - 0x026C0B 19:ABFB: 70        .byte $70    ; <ャ>
- D - I - - 0x026C0C 19:ABFC: 00        .byte $00
- D - I - - 0x026C0D 19:ABFD: 00        .byte $00
- D - I - - 0x026C0E 19:ABFE: 00        .byte $00
- D - I - - 0x026C0F 19:ABFF: 00        .byte $00
- D - I - - 0x026C10 19:AC00: 77        .byte $77    ; <:>
- D - I - - 0x026C11 19:AC01: 00        .byte $00
- D - I - - 0x026C12 19:AC02: 00        .byte $00
- D - I - - 0x026C13 19:AC03: 00        .byte $00
- D - I - - 0x026C14 19:AC04: 70        .byte $70    ; <ャ>
- D - I - - 0x026C15 19:AC05: 00        .byte $00
- D - I - - 0x026C16 19:AC06: 00        .byte $00
- D - I - - 0x026C17 19:AC07: 00        .byte $00
- D - I - - 0x026C18 19:AC08: 72        .byte $72    ; <ョ>
- D - I - - 0x026C19 19:AC09: 00        .byte $00
- D - I - - 0x026C1A 19:AC0A: 00        .byte $00
- D - I - - 0x026C1B 19:AC0B: 00        .byte $00
- D - I - - 0x026C1C 19:AC0C: 00        .byte $00
- D - I - - 0x026C1D 19:AC0D: 00        .byte $00
- D - I - - 0x026C1E 19:AC0E: 00        .byte $00
- D - I - - 0x026C1F 19:AC0F: 00        .byte $00
- D - I - - 0x026C20 19:AC10: 77        .byte $77    ; <:>
- D - I - - 0x026C21 19:AC11: 00        .byte $00
- D - I - - 0x026C22 19:AC12: 00        .byte $00
- D - I - - 0x026C23 19:AC13: 00        .byte $00
- D - I - - 0x026C24 19:AC14: 7D        .byte $7D    ; <ー>
- D - I - - 0x026C25 19:AC15: 00        .byte $00
- D - I - - 0x026C26 19:AC16: 00        .byte $00
- D - I - - 0x026C27 19:AC17: 00        .byte $00
- D - I - - 0x026C28 19:AC18: 7F        .byte $7F    ; <,>
- D - I - - 0x026C29 19:AC19: 00        .byte $00
- D - I - - 0x026C2A 19:AC1A: 00        .byte $00
- D - I - - 0x026C2B 19:AC1B: 00        .byte $00
- D - I - - 0x026C2C 19:AC1C: 00        .byte $00
- D - I - - 0x026C2D 19:AC1D: 00        .byte $00
- D - I - - 0x026C2E 19:AC1E: 00        .byte $00
- D - I - - 0x026C2F 19:AC1F: 00        .byte $00
- D - I - - 0x026C30 19:AC20: 01        .byte $01    ; <あ>
- D - I - - 0x026C31 19:AC21: 01        .byte $01    ; <あ>
- D - I - - 0x026C32 19:AC22: 01        .byte $01    ; <あ>
- D - I - - 0x026C33 19:AC23: 01        .byte $01    ; <あ>
- D - I - - 0x026C34 19:AC24: 01        .byte $01    ; <あ>
- D - I - - 0x026C35 19:AC25: 01        .byte $01    ; <あ>
- D - I - - 0x026C36 19:AC26: 01        .byte $01    ; <あ>
- D - I - - 0x026C37 19:AC27: 01        .byte $01    ; <あ>
- D - I - - 0x026C38 19:AC28: 01        .byte $01    ; <あ>
- D - I - - 0x026C39 19:AC29: 01        .byte $01    ; <あ>
- D - I - - 0x026C3A 19:AC2A: 01        .byte $01    ; <あ>
- D - I - - 0x026C3B 19:AC2B: 01        .byte $01    ; <あ>
- D - I - - 0x026C3C 19:AC2C: 01        .byte $01    ; <あ>
- D - I - - 0x026C3D 19:AC2D: 01        .byte $01    ; <あ>
- D - I - - 0x026C3E 19:AC2E: 01        .byte $01    ; <あ>
- D - I - - 0x026C3F 19:AC2F: 01        .byte $01    ; <あ>
- D - I - - 0x026C40 19:AC30: 01        .byte $01    ; <あ>
- D - I - - 0x026C41 19:AC31: 01        .byte $01    ; <あ>
- D - I - - 0x026C42 19:AC32: 01        .byte $01    ; <あ>
- D - I - - 0x026C43 19:AC33: 01        .byte $01    ; <あ>
- D - I - - 0x026C44 19:AC34: 01        .byte $01    ; <あ>
- D - I - - 0x026C45 19:AC35: 01        .byte $01    ; <あ>
- D - I - - 0x026C46 19:AC36: 01        .byte $01    ; <あ>
- D - I - - 0x026C47 19:AC37: 01        .byte $01    ; <あ>
- D - I - - 0x026C48 19:AC38: 03        .byte $03    ; <う>
- D - I - - 0x026C49 19:AC39: 01        .byte $01    ; <あ>
- D - I - - 0x026C4A 19:AC3A: 01        .byte $01    ; <あ>
- D - I - - 0x026C4B 19:AC3B: 01        .byte $01    ; <あ>
- D - I - - 0x026C4C 19:AC3C: 03        .byte $03    ; <う>
- D - I - - 0x026C4D 19:AC3D: 03        .byte $03    ; <う>
- D - I - - 0x026C4E 19:AC3E: 01        .byte $01    ; <あ>
- D - I - - 0x026C4F 19:AC3F: 01        .byte $01    ; <あ>
- D - I - - 0x026C50 19:AC40: 01        .byte $01    ; <あ>
- D - I - - 0x026C51 19:AC41: 01        .byte $01    ; <あ>
- D - I - - 0x026C52 19:AC42: 01        .byte $01    ; <あ>
- D - I - - 0x026C53 19:AC43: 01        .byte $01    ; <あ>
- D - I - - 0x026C54 19:AC44: 01        .byte $01    ; <あ>
- D - I - - 0x026C55 19:AC45: 01        .byte $01    ; <あ>
- D - I - - 0x026C56 19:AC46: 01        .byte $01    ; <あ>
- D - I - - 0x026C57 19:AC47: 01        .byte $01    ; <あ>
- D - I - - 0x026C58 19:AC48: 01        .byte $01    ; <あ>
- D - I - - 0x026C59 19:AC49: 01        .byte $01    ; <あ>
- D - I - - 0x026C5A 19:AC4A: 01        .byte $01    ; <あ>
- D - I - - 0x026C5B 19:AC4B: 01        .byte $01    ; <あ>
- D - I - - 0x026C5C 19:AC4C: 01        .byte $01    ; <あ>
- D - I - - 0x026C5D 19:AC4D: 01        .byte $01    ; <あ>
- D - I - - 0x026C5E 19:AC4E: 01        .byte $01    ; <あ>
- D - I - - 0x026C5F 19:AC4F: 01        .byte $01    ; <あ>
- D - I - - 0x026C60 19:AC50: 20        .byte $20    ; <み>
- D - I - - 0x026C61 19:AC51: 21        .byte $21    ; <む>
- D - I - - 0x026C62 19:AC52: 03        .byte $03    ; <う>
- D - I - - 0x026C63 19:AC53: 03        .byte $03    ; <う>
- D - I - - 0x026C64 19:AC54: 22        .byte $22    ; <め>
- D - I - - 0x026C65 19:AC55: 29        .byte $29    ; <る>
- D - I - - 0x026C66 19:AC56: 09        .byte $09    ; <け>
- D - I - - 0x026C67 19:AC57: 09        .byte $09    ; <け>
- D - I - - 0x026C68 19:AC58: 28        .byte $28    ; <り>
- D - I - - 0x026C69 19:AC59: 29        .byte $29    ; <る>
- D - I - - 0x026C6A 19:AC5A: 03        .byte $03    ; <う>
- D - I - - 0x026C6B 19:AC5B: 03        .byte $03    ; <う>
- D - I - - 0x026C6C 19:AC5C: 2A        .byte $2A    ; <れ>
- D - I - - 0x026C6D 19:AC5D: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026C6E 19:AC5E: 03        .byte $03    ; <う>
- D - I - - 0x026C6F 19:AC5F: 03        .byte $03    ; <う>
- D - I - - 0x026C70 19:AC60: 23        .byte $23    ; <も>
- D - I - - 0x026C71 19:AC61: 03        .byte $03    ; <う>
- D - I - - 0x026C72 19:AC62: 01        .byte $01    ; <あ>
- D - I - - 0x026C73 19:AC63: 01        .byte $01    ; <あ>
- D - I - - 0x026C74 19:AC64: 09        .byte $09    ; <け>
- D - I - - 0x026C75 19:AC65: 09        .byte $09    ; <け>
- D - I - - 0x026C76 19:AC66: 27        .byte $27    ; <ら>
- D - I - - 0x026C77 19:AC67: 01        .byte $01    ; <あ>
- D - I - - 0x026C78 19:AC68: 03        .byte $03    ; <う>
- D - I - - 0x026C79 19:AC69: 2C        .byte $2C    ; <わ>
- D - I - - 0x026C7A 19:AC6A: 2D        .byte $2D    ; <を>
- D - I - - 0x026C7B 19:AC6B: 24        .byte $24    ; <や>
- D - I - - 0x026C7C 19:AC6C: 03        .byte $03    ; <う>
- D - I - - 0x026C7D 19:AC6D: 2E        .byte $2E    ; <ん>
- D - I - - 0x026C7E 19:AC6E: 2F        .byte $2F    ; <っ>
- D - I - - 0x026C7F 19:AC6F: 26        .byte $26    ; <よ>
- D - I - - 0x026C80 19:AC70: 01        .byte $01    ; <あ>
- D - I - - 0x026C81 19:AC71: 01        .byte $01    ; <あ>
- D - I - - 0x026C82 19:AC72: 01        .byte $01    ; <あ>
- D - I - - 0x026C83 19:AC73: 01        .byte $01    ; <あ>
- D - I - - 0x026C84 19:AC74: 01        .byte $01    ; <あ>
- D - I - - 0x026C85 19:AC75: 01        .byte $01    ; <あ>
- D - I - - 0x026C86 19:AC76: 01        .byte $01    ; <あ>
- D - I - - 0x026C87 19:AC77: 01        .byte $01    ; <あ>
- D - I - - 0x026C88 19:AC78: 01        .byte $01    ; <あ>
- D - I - - 0x026C89 19:AC79: 01        .byte $01    ; <あ>
- D - I - - 0x026C8A 19:AC7A: 01        .byte $01    ; <あ>
- D - I - - 0x026C8B 19:AC7B: 01        .byte $01    ; <あ>
- D - I - - 0x026C8C 19:AC7C: 25        .byte $25    ; <ゆ>
- D - I - - 0x026C8D 19:AC7D: 0E        .byte $0E    ; <せ>
- D - I - - 0x026C8E 19:AC7E: 01        .byte $01    ; <あ>
- D - I - - 0x026C8F 19:AC7F: 01        .byte $01    ; <あ>
- D - I - - 0x026C90 19:AC80: 01        .byte $01    ; <あ>
- D - I - - 0x026C91 19:AC81: 01        .byte $01    ; <あ>
- D - I - - 0x026C92 19:AC82: 01        .byte $01    ; <あ>
- D - I - - 0x026C93 19:AC83: 01        .byte $01    ; <あ>
- D - I - - 0x026C94 19:AC84: 01        .byte $01    ; <あ>
- D - I - - 0x026C95 19:AC85: 01        .byte $01    ; <あ>
- D - I - - 0x026C96 19:AC86: 01        .byte $01    ; <あ>
- D - I - - 0x026C97 19:AC87: 01        .byte $01    ; <あ>
- D - I - - 0x026C98 19:AC88: 08        .byte $08    ; <く>
- D - I - - 0x026C99 19:AC89: 02        .byte $02    ; <い>
- D - I - - 0x026C9A 19:AC8A: 02        .byte $02    ; <い>
- D - I - - 0x026C9B 19:AC8B: 03        .byte $03    ; <う>
- D - I - - 0x026C9C 19:AC8C: 0A        .byte $0A    ; <こ>
- D - I - - 0x026C9D 19:AC8D: 0B        .byte $0B    ; <さ>
- D - I - - 0x026C9E 19:AC8E: 03        .byte $03    ; <う>
- D - I - - 0x026C9F 19:AC8F: 03        .byte $03    ; <う>
- D - I - - 0x026CA0 19:AC90: 01        .byte $01    ; <あ>
- D - I - - 0x026CA1 19:AC91: 01        .byte $01    ; <あ>
- D - I - - 0x026CA2 19:AC92: 01        .byte $01    ; <あ>
- D - I - - 0x026CA3 19:AC93: 01        .byte $01    ; <あ>
- D - I - - 0x026CA4 19:AC94: 01        .byte $01    ; <あ>
- D - I - - 0x026CA5 19:AC95: 01        .byte $01    ; <あ>
- D - I - - 0x026CA6 19:AC96: 01        .byte $01    ; <あ>
- D - I - - 0x026CA7 19:AC97: 01        .byte $01    ; <あ>
- D - I - - 0x026CA8 19:AC98: 01        .byte $01    ; <あ>
- D - I - - 0x026CA9 19:AC99: 01        .byte $01    ; <あ>
- D - I - - 0x026CAA 19:AC9A: 01        .byte $01    ; <あ>
- D - I - - 0x026CAB 19:AC9B: 03        .byte $03    ; <う>
- D - I - - 0x026CAC 19:AC9C: 01        .byte $01    ; <あ>
- D - I - - 0x026CAD 19:AC9D: 01        .byte $01    ; <あ>
- D - I - - 0x026CAE 19:AC9E: 03        .byte $03    ; <う>
- D - I - - 0x026CAF 19:AC9F: 03        .byte $03    ; <う>
- D - I - - 0x026CB0 19:ACA0: 01        .byte $01    ; <あ>
- D - I - - 0x026CB1 19:ACA1: 01        .byte $01    ; <あ>
- D - I - - 0x026CB2 19:ACA2: 01        .byte $01    ; <あ>
- D - I - - 0x026CB3 19:ACA3: 01        .byte $01    ; <あ>
- D - I - - 0x026CB4 19:ACA4: 01        .byte $01    ; <あ>
- D - I - - 0x026CB5 19:ACA5: 01        .byte $01    ; <あ>
- D - I - - 0x026CB6 19:ACA6: 01        .byte $01    ; <あ>
- D - I - - 0x026CB7 19:ACA7: 01        .byte $01    ; <あ>
- D - I - - 0x026CB8 19:ACA8: 03        .byte $03    ; <う>
- D - I - - 0x026CB9 19:ACA9: 02        .byte $02    ; <い>
- D - I - - 0x026CBA 19:ACAA: 02        .byte $02    ; <い>
- D - I - - 0x026CBB 19:ACAB: 18        .byte $18    ; <ね>
- D - I - - 0x026CBC 19:ACAC: 03        .byte $03    ; <う>
- D - I - - 0x026CBD 19:ACAD: 03        .byte $03    ; <う>
- D - I - - 0x026CBE 19:ACAE: 1B        .byte $1B    ; <ひ>
- D - I - - 0x026CBF 19:ACAF: 1A        .byte $1A    ; <は>
- D - I - - 0x026CC0 19:ACB0: 01        .byte $01    ; <あ>
- D - I - - 0x026CC1 19:ACB1: 01        .byte $01    ; <あ>
- D - I - - 0x026CC2 19:ACB2: 03        .byte $03    ; <う>
- D - I - - 0x026CC3 19:ACB3: 33        .byte $33    ; <0>
- D - I - - 0x026CC4 19:ACB4: 01        .byte $01    ; <あ>
- D - I - - 0x026CC5 19:ACB5: 37        .byte $37    ; <4>
- D - I - - 0x026CC6 19:ACB6: 09        .byte $09    ; <け>
- D - I - - 0x026CC7 19:ACB7: 09        .byte $09    ; <け>
- D - I - - 0x026CC8 19:ACB8: 34        .byte $34    ; <1>
- D - I - - 0x026CC9 19:ACB9: 3D        .byte $3D    ; <+>
- D - I - - 0x026CCA 19:ACBA: 3C        .byte $3C    ; <9>
- D - I - - 0x026CCB 19:ACBB: 03        .byte $03    ; <う>
- D - I - - 0x026CCC 19:ACBC: 36        .byte $36    ; <3>
- D - I - - 0x026CCD 19:ACBD: 3F        .byte $3F    ; <•>
- D - I - - 0x026CCE 19:ACBE: 3E        .byte $3E    ; <Jr>
- D - I - - 0x026CCF 19:ACBF: 03        .byte $03    ; <う>
- D - I - - 0x026CD0 19:ACC0: 03        .byte $03    ; <う>
- D - I - - 0x026CD1 19:ACC1: 03        .byte $03    ; <う>
- D - I - - 0x026CD2 19:ACC2: 31        .byte $31    ; <ゅ>
- D - I - - 0x026CD3 19:ACC3: 30        .byte $30    ; <ゃ>
- D - I - - 0x026CD4 19:ACC4: 09        .byte $09    ; <け>
- D - I - - 0x026CD5 19:ACC5: 09        .byte $09    ; <け>
- D - I - - 0x026CD6 19:ACC6: 39        .byte $39    ; <6>
- D - I - - 0x026CD7 19:ACC7: 32        .byte $32    ; <ょ>
- D - I - - 0x026CD8 19:ACC8: 03        .byte $03    ; <う>
- D - I - - 0x026CD9 19:ACC9: 03        .byte $03    ; <う>
- D - I - - 0x026CDA 19:ACCA: 39        .byte $39    ; <6>
- D - I - - 0x026CDB 19:ACCB: 38        .byte $38    ; <5>
- D - I - - 0x026CDC 19:ACCC: 03        .byte $03    ; <う>
- D - I - - 0x026CDD 19:ACCD: 03        .byte $03    ; <う>
- D - I - - 0x026CDE 19:ACCE: 3B        .byte $3B    ; <8>
- D - I - - 0x026CDF 19:ACCF: 3A        .byte $3A    ; <7>
- D - I - - 0x026CE0 19:ACD0: 01        .byte $01    ; <あ>
- D - I - - 0x026CE1 19:ACD1: 01        .byte $01    ; <あ>
- D - I - - 0x026CE2 19:ACD2: 01        .byte $01    ; <あ>
- D - I - - 0x026CE3 19:ACD3: 01        .byte $01    ; <あ>
- D - I - - 0x026CE4 19:ACD4: 01        .byte $01    ; <あ>
- D - I - - 0x026CE5 19:ACD5: 01        .byte $01    ; <あ>
- D - I - - 0x026CE6 19:ACD6: 01        .byte $01    ; <あ>
- D - I - - 0x026CE7 19:ACD7: 01        .byte $01    ; <あ>
- D - I - - 0x026CE8 19:ACD8: 01        .byte $01    ; <あ>
- D - I - - 0x026CE9 19:ACD9: 01        .byte $01    ; <あ>
- D - I - - 0x026CEA 19:ACDA: 01        .byte $01    ; <あ>
- D - I - - 0x026CEB 19:ACDB: 01        .byte $01    ; <あ>
- D - I - - 0x026CEC 19:ACDC: 01        .byte $01    ; <あ>
- D - I - - 0x026CED 19:ACDD: 01        .byte $01    ; <あ>
- D - I - - 0x026CEE 19:ACDE: 1E        .byte $1E    ; <ほ>
- D - I - - 0x026CEF 19:ACDF: 35        .byte $35    ; <2>
- D - I - - 0x026CF0 19:ACE0: 79        .byte $79    ; <!>
- D - I - - 0x026CF1 19:ACE1: 1C        .byte $1C    ; <ふ>
- D - I - - 0x026CF2 19:ACE2: 56        .byte $56    ; <ニ>
- D - I - - 0x026CF3 19:ACE3: 56        .byte $56    ; <ニ>
- D - I - - 0x026CF4 19:ACE4: 7B        .byte $7B    ; <。>
- D - I - - 0x026CF5 19:ACE5: 56        .byte $56    ; <ニ>
- D - I - - 0x026CF6 19:ACE6: 56        .byte $56    ; <ニ>
- D - I - - 0x026CF7 19:ACE7: 56        .byte $56    ; <ニ>
- D - I - - 0x026CF8 19:ACE8: 00        .byte $00
- D - I - - 0x026CF9 19:ACE9: 00        .byte $00
- D - I - - 0x026CFA 19:ACEA: 00        .byte $00
- D - I - - 0x026CFB 19:ACEB: 00        .byte $00
- D - I - - 0x026CFC 19:ACEC: 00        .byte $00
- D - I - - 0x026CFD 19:ACED: 00        .byte $00
- D - I - - 0x026CFE 19:ACEE: 00        .byte $00
- D - I - - 0x026CFF 19:ACEF: 00        .byte $00
- D - I - - 0x026D00 19:ACF0: 56        .byte $56    ; <ニ>
- D - I - - 0x026D01 19:ACF1: 22        .byte $22    ; <め>
- D - I - - 0x026D02 19:ACF2: 23        .byte $23    ; <も>
- D - I - - 0x026D03 19:ACF3: 26        .byte $26    ; <よ>
- D - I - - 0x026D04 19:ACF4: 56        .byte $56    ; <ニ>
- D - I - - 0x026D05 19:ACF5: 28        .byte $28    ; <り>
- D - I - - 0x026D06 19:ACF6: 29        .byte $29    ; <る>
- D - I - - 0x026D07 19:ACF7: 38        .byte $38    ; <5>
- D - I - - 0x026D08 19:ACF8: 00        .byte $00
- D - I - - 0x026D09 19:ACF9: 00        .byte $00
- D - I - - 0x026D0A 19:ACFA: 00        .byte $00
- D - I - - 0x026D0B 19:ACFB: 00        .byte $00
- D - I - - 0x026D0C 19:ACFC: 00        .byte $00
- D - I - - 0x026D0D 19:ACFD: 00        .byte $00
- D - I - - 0x026D0E 19:ACFE: 00        .byte $00
- D - I - - 0x026D0F 19:ACFF: 00        .byte $00
- D - I - - 0x026D10 19:AD00: 33        .byte $33    ; <0>
- D - I - - 0x026D11 19:AD01: 36        .byte $36    ; <3>
- D - I - - 0x026D12 19:AD02: 5C        .byte $5C    ; <フ>
- D - I - - 0x026D13 19:AD03: 6E        .byte $6E    ; <ン>
- D - I - - 0x026D14 19:AD04: 39        .byte $39    ; <6>
- D - I - - 0x026D15 19:AD05: 5B        .byte $5B    ; <ヒ>
- D - I - - 0x026D16 19:AD06: 5E        .byte $5E    ; <ホ>
- D - I - - 0x026D17 19:AD07: 15        .byte $15    ; <な>
- D - I - - 0x026D18 19:AD08: 00        .byte $00
- D - I - - 0x026D19 19:AD09: 00        .byte $00
- D - I - - 0x026D1A 19:AD0A: 00        .byte $00
- D - I - - 0x026D1B 19:AD0B: 00        .byte $00
- D - I - - 0x026D1C 19:AD0C: 00        .byte $00
- D - I - - 0x026D1D 19:AD0D: 00        .byte $00
- D - I - - 0x026D1E 19:AD0E: 00        .byte $00
- D - I - - 0x026D1F 19:AD0F: 00        .byte $00
- D - I - - 0x026D20 19:AD10: 50        .byte $50    ; <タ>
- D - I - - 0x026D21 19:AD11: 70        .byte $70    ; <ャ>
- D - I - - 0x026D22 19:AD12: 70        .byte $70    ; <ャ>
- D - I - - 0x026D23 19:AD13: 70        .byte $70    ; <ャ>
- D - I - - 0x026D24 19:AD14: 6D        .byte $6D    ; <ヲ>
- D - I - - 0x026D25 19:AD15: 60        .byte $60    ; <ミ>
- D - I - - 0x026D26 19:AD16: 60        .byte $60    ; <ミ>
- D - I - - 0x026D27 19:AD17: 60        .byte $60    ; <ミ>
- D - I - - 0x026D28 19:AD18: 00        .byte $00
- D - I - - 0x026D29 19:AD19: 00        .byte $00
- D - I - - 0x026D2A 19:AD1A: 00        .byte $00
- D - I - - 0x026D2B 19:AD1B: 00        .byte $00
- D - I - - 0x026D2C 19:AD1C: 00        .byte $00
- D - I - - 0x026D2D 19:AD1D: 00        .byte $00
- D - I - - 0x026D2E 19:AD1E: 00        .byte $00
- D - I - - 0x026D2F 19:AD1F: 00        .byte $00
- D - I - - 0x026D30 19:AD20: 01        .byte $01    ; <あ>
- D - I - - 0x026D31 19:AD21: 01        .byte $01    ; <あ>
- D - I - - 0x026D32 19:AD22: 01        .byte $01    ; <あ>
- D - I - - 0x026D33 19:AD23: 01        .byte $01    ; <あ>
- D - I - - 0x026D34 19:AD24: 01        .byte $01    ; <あ>
- D - I - - 0x026D35 19:AD25: 01        .byte $01    ; <あ>
- D - I - - 0x026D36 19:AD26: 01        .byte $01    ; <あ>
- D - I - - 0x026D37 19:AD27: 01        .byte $01    ; <あ>
- D - I - - 0x026D38 19:AD28: 01        .byte $01    ; <あ>
- D - I - - 0x026D39 19:AD29: 01        .byte $01    ; <あ>
- D - I - - 0x026D3A 19:AD2A: 01        .byte $01    ; <あ>
- D - I - - 0x026D3B 19:AD2B: 01        .byte $01    ; <あ>
- D - I - - 0x026D3C 19:AD2C: 01        .byte $01    ; <あ>
- D - I - - 0x026D3D 19:AD2D: 01        .byte $01    ; <あ>
- D - I - - 0x026D3E 19:AD2E: 01        .byte $01    ; <あ>
- D - I - - 0x026D3F 19:AD2F: 01        .byte $01    ; <あ>
- D - I - - 0x026D40 19:AD30: 02        .byte $02    ; <い>
- D - I - - 0x026D41 19:AD31: 03        .byte $03    ; <う>
- D - I - - 0x026D42 19:AD32: 06        .byte $06    ; <か>
- D - I - - 0x026D43 19:AD33: 07        .byte $07    ; <き>
- D - I - - 0x026D44 19:AD34: 08        .byte $08    ; <く>
- D - I - - 0x026D45 19:AD35: 09        .byte $09    ; <け>
- D - I - - 0x026D46 19:AD36: 0C        .byte $0C    ; <し>
- D - I - - 0x026D47 19:AD37: 0D        .byte $0D    ; <す>
- D - I - - 0x026D48 19:AD38: 0A        .byte $0A    ; <こ>
- D - I - - 0x026D49 19:AD39: 0B        .byte $0B    ; <さ>
- D - I - - 0x026D4A 19:AD3A: 0E        .byte $0E    ; <せ>
- D - I - - 0x026D4B 19:AD3B: 0F        .byte $0F    ; <そ>
- D - I - - 0x026D4C 19:AD3C: 20        .byte $20    ; <み>
- D - I - - 0x026D4D 19:AD3D: 20        .byte $20    ; <み>
- D - I - - 0x026D4E 19:AD3E: 24        .byte $24    ; <や>
- D - I - - 0x026D4F 19:AD3F: 25        .byte $25    ; <ゆ>
- D - I - - 0x026D50 19:AD40: 12        .byte $12    ; <つ>
- D - I - - 0x026D51 19:AD41: 13        .byte $13    ; <て>
- D - I - - 0x026D52 19:AD42: 01        .byte $01    ; <あ>
- D - I - - 0x026D53 19:AD43: 01        .byte $01    ; <あ>
- D - I - - 0x026D54 19:AD44: 18        .byte $18    ; <ね>
- D - I - - 0x026D55 19:AD45: 19        .byte $19    ; <の>
- D - I - - 0x026D56 19:AD46: 13        .byte $13    ; <て>
- D - I - - 0x026D57 19:AD47: 01        .byte $01    ; <あ>
- D - I - - 0x026D58 19:AD48: 1A        .byte $1A    ; <は>
- D - I - - 0x026D59 19:AD49: 1B        .byte $1B    ; <ひ>
- D - I - - 0x026D5A 19:AD4A: 1E        .byte $1E    ; <ほ>
- D - I - - 0x026D5B 19:AD4B: 13        .byte $13    ; <て>
- D - I - - 0x026D5C 19:AD4C: 30        .byte $30    ; <ゃ>
- D - I - - 0x026D5D 19:AD4D: 31        .byte $31    ; <ゅ>
- D - I - - 0x026D5E 19:AD4E: 34        .byte $34    ; <1>
- D - I - - 0x026D5F 19:AD4F: 35        .byte $35    ; <2>
- D - I - - 0x026D60 19:AD50: 01        .byte $01    ; <あ>
- D - I - - 0x026D61 19:AD51: 01        .byte $01    ; <あ>
- D - I - - 0x026D62 19:AD52: 01        .byte $01    ; <あ>
- D - I - - 0x026D63 19:AD53: 01        .byte $01    ; <あ>
- D - I - - 0x026D64 19:AD54: 01        .byte $01    ; <あ>
- D - I - - 0x026D65 19:AD55: 01        .byte $01    ; <あ>
- D - I - - 0x026D66 19:AD56: 01        .byte $01    ; <あ>
- D - I - - 0x026D67 19:AD57: 01        .byte $01    ; <あ>
- D - I - - 0x026D68 19:AD58: 01        .byte $01    ; <あ>
- D - I - - 0x026D69 19:AD59: 01        .byte $01    ; <あ>
- D - I - - 0x026D6A 19:AD5A: 01        .byte $01    ; <あ>
- D - I - - 0x026D6B 19:AD5B: 01        .byte $01    ; <あ>
- D - I - - 0x026D6C 19:AD5C: 13        .byte $13    ; <て>
- D - I - - 0x026D6D 19:AD5D: 01        .byte $01    ; <あ>
- D - I - - 0x026D6E 19:AD5E: 01        .byte $01    ; <あ>
- D - I - - 0x026D6F 19:AD5F: 01        .byte $01    ; <あ>
- D - I - - 0x026D70 19:AD60: 22        .byte $22    ; <め>
- D - I - - 0x026D71 19:AD61: 23        .byte $23    ; <も>
- D - I - - 0x026D72 19:AD62: 26        .byte $26    ; <よ>
- D - I - - 0x026D73 19:AD63: 27        .byte $27    ; <ら>
- D - I - - 0x026D74 19:AD64: 28        .byte $28    ; <り>
- D - I - - 0x026D75 19:AD65: 29        .byte $29    ; <る>
- D - I - - 0x026D76 19:AD66: 2C        .byte $2C    ; <わ>
- D - I - - 0x026D77 19:AD67: 2D        .byte $2D    ; <を>
- D - I - - 0x026D78 19:AD68: 2A        .byte $2A    ; <れ>
- D - I - - 0x026D79 19:AD69: 2A        .byte $2A    ; <れ>
- D - I - - 0x026D7A 19:AD6A: 03        .byte $03    ; <う>
- D - I - - 0x026D7B 19:AD6B: 2F        .byte $2F    ; <っ>
- D - I - - 0x026D7C 19:AD6C: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026D7D 19:AD6D: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026D7E 19:AD6E: 2E        .byte $2E    ; <ん>
- D - I - - 0x026D7F 19:AD6F: 78        .byte $78    ; <?>
- D - I - - 0x026D80 19:AD70: 32        .byte $32    ; <ょ>
- D - I - - 0x026D81 19:AD71: 1A        .byte $1A    ; <は>
- D - I - - 0x026D82 19:AD72: 36        .byte $36    ; <3>
- D - I - - 0x026D83 19:AD73: 37        .byte $37    ; <4>
- D - I - - 0x026D84 19:AD74: 38        .byte $38    ; <5>
- D - I - - 0x026D85 19:AD75: 39        .byte $39    ; <6>
- D - I - - 0x026D86 19:AD76: 3C        .byte $3C    ; <9>
- D - I - - 0x026D87 19:AD77: 0F        .byte $0F    ; <そ>
- D - I - - 0x026D88 19:AD78: 3A        .byte $3A    ; <7>
- D - I - - 0x026D89 19:AD79: 3B        .byte $3B    ; <8>
- D - I - - 0x026D8A 19:AD7A: 3E        .byte $3E    ; <Jr>
- D - I - - 0x026D8B 19:AD7B: 3F        .byte $3F    ; <•>
- D - I - - 0x026D8C 19:AD7C: 52        .byte $52    ; <ツ>
- D - I - - 0x026D8D 19:AD7D: 53        .byte $53    ; <テ>
- D - I - - 0x026D8E 19:AD7E: 14        .byte $14    ; <と>
- D - I - - 0x026D8F 19:AD7F: 15        .byte $15    ; <な>
- D - I - - 0x026D90 19:AD80: 62        .byte $62    ; <メ>
- D - I - - 0x026D91 19:AD81: 13        .byte $13    ; <て>
- D - I - - 0x026D92 19:AD82: 01        .byte $01    ; <あ>
- D - I - - 0x026D93 19:AD83: 01        .byte $01    ; <あ>
- D - I - - 0x026D94 19:AD84: 0D        .byte $0D    ; <す>
- D - I - - 0x026D95 19:AD85: 69        .byte $69    ; <ル>
- D - I - - 0x026D96 19:AD86: 6C        .byte $6C    ; <ワ>
- D - I - - 0x026D97 19:AD87: 01        .byte $01    ; <あ>
- D - I - - 0x026D98 19:AD88: 30        .byte $30    ; <ゃ>
- D - I - - 0x026D99 19:AD89: 1A        .byte $1A    ; <は>
- D - I - - 0x026D9A 19:AD8A: 6E        .byte $6E    ; <ン>
- D - I - - 0x026D9B 19:AD8B: 6F        .byte $6F    ; <ッ>
- D - I - - 0x026D9C 19:AD8C: 40        .byte $40    ; <「>
- D - I - - 0x026D9D 19:AD8D: 41        .byte $41    ; <ア>
- D - I - - 0x026D9E 19:AD8E: 44        .byte $44    ; <エ>
- D - I - - 0x026D9F 19:AD8F: 45        .byte $45    ; <オ>
- D - I - - 0x026DA0 19:AD90: 01        .byte $01    ; <あ>
- D - I - - 0x026DA1 19:AD91: 01        .byte $01    ; <あ>
- D - I - - 0x026DA2 19:AD92: 01        .byte $01    ; <あ>
- D - I - - 0x026DA3 19:AD93: 01        .byte $01    ; <あ>
- D - I - - 0x026DA4 19:AD94: 01        .byte $01    ; <あ>
- D - I - - 0x026DA5 19:AD95: 01        .byte $01    ; <あ>
- D - I - - 0x026DA6 19:AD96: 01        .byte $01    ; <あ>
- D - I - - 0x026DA7 19:AD97: 01        .byte $01    ; <あ>
- D - I - - 0x026DA8 19:AD98: 01        .byte $01    ; <あ>
- D - I - - 0x026DA9 19:AD99: 01        .byte $01    ; <あ>
- D - I - - 0x026DAA 19:AD9A: 01        .byte $01    ; <あ>
- D - I - - 0x026DAB 19:AD9B: 01        .byte $01    ; <あ>
- D - I - - 0x026DAC 19:AD9C: 65        .byte $65    ; <ユ>
- D - I - - 0x026DAD 19:AD9D: 01        .byte $01    ; <あ>
- D - I - - 0x026DAE 19:AD9E: 01        .byte $01    ; <あ>
- D - I - - 0x026DAF 19:AD9F: 01        .byte $01    ; <あ>
- D - I - - 0x026DB0 19:ADA0: 02        .byte $02    ; <い>
- D - I - - 0x026DB1 19:ADA1: 02        .byte $02    ; <い>
- D - I - - 0x026DB2 19:ADA2: 04        .byte $04    ; <え>
- D - I - - 0x026DB3 19:ADA3: 7A        .byte $7A    ; <、>
- D - I - - 0x026DB4 19:ADA4: 08        .byte $08    ; <く>
- D - I - - 0x026DB5 19:ADA5: 08        .byte $08    ; <く>
- D - I - - 0x026DB6 19:ADA6: 08        .byte $08    ; <く>
- D - I - - 0x026DB7 19:ADA7: 05        .byte $05    ; <お>
- D - I - - 0x026DB8 19:ADA8: 0A        .byte $0A    ; <こ>
- D - I - - 0x026DB9 19:ADA9: 0A        .byte $0A    ; <こ>
- D - I - - 0x026DBA 19:ADAA: 0A        .byte $0A    ; <こ>
- D - I - - 0x026DBB 19:ADAB: 10        .byte $10    ; <た>
- D - I - - 0x026DBC 19:ADAC: 20        .byte $20    ; <み>
- D - I - - 0x026DBD 19:ADAD: 20        .byte $20    ; <み>
- D - I - - 0x026DBE 19:ADAE: 20        .byte $20    ; <み>
- D - I - - 0x026DBF 19:ADAF: 11        .byte $11    ; <ち>
- D - I - - 0x026DC0 19:ADB0: 58        .byte $58    ; <ネ>
- D - I - - 0x026DC1 19:ADB1: 59        .byte $59    ; <ノ>
- D - I - - 0x026DC2 19:ADB2: 16        .byte $16    ; <に>
- D - I - - 0x026DC3 19:ADB3: 17        .byte $17    ; <ぬ>
- D - I - - 0x026DC4 19:ADB4: 5A        .byte $5A    ; <ハ>
- D - I - - 0x026DC5 19:ADB5: 5B        .byte $5B    ; <ヒ>
- D - I - - 0x026DC6 19:ADB6: 1C        .byte $1C    ; <ふ>
- D - I - - 0x026DC7 19:ADB7: 1D        .byte $1D    ; <へ>
- D - I - - 0x026DC8 19:ADB8: 70        .byte $70    ; <ャ>
- D - I - - 0x026DC9 19:ADB9: 71        .byte $71    ; <ュ>
- D - I - - 0x026DCA 19:ADBA: 33        .byte $33    ; <0>
- D - I - - 0x026DCB 19:ADBB: 1F        .byte $1F    ; <ま>
- D - I - - 0x026DCC 19:ADBC: 72        .byte $72    ; <ョ>
- D - I - - 0x026DCD 19:ADBD: 73        .byte $73    ; <ヮ>
- D - I - - 0x026DCE 19:ADBE: 5E        .byte $5E    ; <ホ>
- D - I - - 0x026DCF 19:ADBF: 21        .byte $21    ; <む>
- D - I - - 0x026DD0 19:ADC0: 42        .byte $42    ; <イ>
- D - I - - 0x026DD1 19:ADC1: 43        .byte $43    ; <ウ>
- D - I - - 0x026DD2 19:ADC2: 46        .byte $46    ; <カ>
- D - I - - 0x026DD3 19:ADC3: 47        .byte $47    ; <キ>
- D - I - - 0x026DD4 19:ADC4: 48        .byte $48    ; <ク>
- D - I - - 0x026DD5 19:ADC5: 49        .byte $49    ; <ケ>
- D - I - - 0x026DD6 19:ADC6: 4C        .byte $4C    ; <シ>
- D - I - - 0x026DD7 19:ADC7: 4D        .byte $4D    ; <ス>
- D - I - - 0x026DD8 19:ADC8: 4A        .byte $4A    ; <コ>
- D - I - - 0x026DD9 19:ADC9: 4B        .byte $4B    ; <サ>
- D - I - - 0x026DDA 19:ADCA: 4E        .byte $4E    ; <セ>
- D - I - - 0x026DDB 19:ADCB: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026DDC 19:ADCC: 60        .byte $60    ; <ミ>
- D - I - - 0x026DDD 19:ADCD: 61        .byte $61    ; <ム>
- D - I - - 0x026DDE 19:ADCE: 64        .byte $64    ; <ヤ>
- D - I - - 0x026DDF 19:ADCF: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026DE0 19:ADD0: 67        .byte $67    ; <ラ>
- D - I - - 0x026DE1 19:ADD1: 6D        .byte $6D    ; <ヲ>
- D - I - - 0x026DE2 19:ADD2: 01        .byte $01    ; <あ>
- D - I - - 0x026DE3 19:ADD3: 01        .byte $01    ; <あ>
- D - I - - 0x026DE4 19:ADD4: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026DE5 19:ADD5: 50        .byte $50    ; <タ>
- D - I - - 0x026DE6 19:ADD6: 01        .byte $01    ; <あ>
- D - I - - 0x026DE7 19:ADD7: 01        .byte $01    ; <あ>
- D - I - - 0x026DE8 19:ADD8: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026DE9 19:ADD9: 51        .byte $51    ; <チ>
- D - I - - 0x026DEA 19:ADDA: 6D        .byte $6D    ; <ヲ>
- D - I - - 0x026DEB 19:ADDB: 01        .byte $01    ; <あ>
- D - I - - 0x026DEC 19:ADDC: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026DED 19:ADDD: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026DEE 19:ADDE: 50        .byte $50    ; <タ>
- D - I - - 0x026DEF 19:ADDF: 01        .byte $01    ; <あ>
- D - I - - 0x026DF0 19:ADE0: 23        .byte $23    ; <も>
- D - I - - 0x026DF1 19:ADE1: 23        .byte $23    ; <も>
- D - I - - 0x026DF2 19:ADE2: 23        .byte $23    ; <も>
- D - I - - 0x026DF3 19:ADE3: 03        .byte $03    ; <う>
- D - I - - 0x026DF4 19:ADE4: 3D        .byte $3D    ; <+>
- D - I - - 0x026DF5 19:ADE5: 3D        .byte $3D    ; <+>
- D - I - - 0x026DF6 19:ADE6: 3D        .byte $3D    ; <+>
- D - I - - 0x026DF7 19:ADE7: 68        .byte $68    ; <リ>
- D - I - - 0x026DF8 19:ADE8: 00        .byte $00
- D - I - - 0x026DF9 19:ADE9: 00        .byte $00
- D - I - - 0x026DFA 19:ADEA: 00        .byte $00
- D - I - - 0x026DFB 19:ADEB: 00        .byte $00
- D - I - - 0x026DFC 19:ADEC: 00        .byte $00
- D - I - - 0x026DFD 19:ADED: 00        .byte $00
- D - I - - 0x026DFE 19:ADEE: 00        .byte $00
- D - I - - 0x026DFF 19:ADEF: 00        .byte $00
- D - I - - 0x026E00 19:ADF0: 78        .byte $78    ; <?>
- D - I - - 0x026E01 19:ADF1: 79        .byte $79    ; <!>
- D - I - - 0x026E02 19:ADF2: 54        .byte $54    ; <ト>
- D - I - - 0x026E03 19:ADF3: 55        .byte $55    ; <ナ>
- D - I - - 0x026E04 19:ADF4: 7A        .byte $7A    ; <、>
- D - I - - 0x026E05 19:ADF5: 7B        .byte $7B    ; <。>
- D - I - - 0x026E06 19:ADF6: 56        .byte $56    ; <ニ>
- D - I - - 0x026E07 19:ADF7: 57        .byte $57    ; <ヌ>
- D - I - - 0x026E08 19:ADF8: 00        .byte $00
- D - I - - 0x026E09 19:ADF9: 00        .byte $00
- D - I - - 0x026E0A 19:ADFA: 00        .byte $00
- D - I - - 0x026E0B 19:ADFB: 00        .byte $00
- D - I - - 0x026E0C 19:ADFC: 00        .byte $00
- D - I - - 0x026E0D 19:ADFD: 00        .byte $00
- D - I - - 0x026E0E 19:ADFE: 00        .byte $00
- D - I - - 0x026E0F 19:ADFF: 00        .byte $00
- D - I - - 0x026E10 19:AE00: 6A        .byte $6A    ; <レ>
- D - I - - 0x026E11 19:AE01: 63        .byte $63    ; <モ>
- D - I - - 0x026E12 19:AE02: 66        .byte $66    ; <ヨ>
- D - I - - 0x026E13 19:AE03: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E14 19:AE04: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026E15 19:AE05: 5C        .byte $5C    ; <フ>
- D - I - - 0x026E16 19:AE06: 5D        .byte $5D    ; <ヘ>
- D - I - - 0x026E17 19:AE07: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E18 19:AE08: 00        .byte $00
- D - I - - 0x026E19 19:AE09: 00        .byte $00
- D - I - - 0x026E1A 19:AE0A: 00        .byte $00
- D - I - - 0x026E1B 19:AE0B: 00        .byte $00
- D - I - - 0x026E1C 19:AE0C: 00        .byte $00
- D - I - - 0x026E1D 19:AE0D: 00        .byte $00
- D - I - - 0x026E1E 19:AE0E: 00        .byte $00
- D - I - - 0x026E1F 19:AE0F: 00        .byte $00
- D - I - - 0x026E20 19:AE10: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E21 19:AE11: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E22 19:AE12: 51        .byte $51    ; <チ>
- D - I - - 0x026E23 19:AE13: 6D        .byte $6D    ; <ヲ>
- D - I - - 0x026E24 19:AE14: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E25 19:AE15: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E26 19:AE16: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E27 19:AE17: 50        .byte $50    ; <タ>
- D - I - - 0x026E28 19:AE18: 00        .byte $00
- D - I - - 0x026E29 19:AE19: 00        .byte $00
- D - I - - 0x026E2A 19:AE1A: 00        .byte $00
- D - I - - 0x026E2B 19:AE1B: 00        .byte $00
- D - I - - 0x026E2C 19:AE1C: 00        .byte $00
- D - I - - 0x026E2D 19:AE1D: 00        .byte $00
- D - I - - 0x026E2E 19:AE1E: 00        .byte $00
- D - I - - 0x026E2F 19:AE1F: 00        .byte $00
- D - I - - 0x026E30 19:AE20: 01        .byte $01    ; <あ>
- D - I - - 0x026E31 19:AE21: 01        .byte $01    ; <あ>
- D - I - - 0x026E32 19:AE22: 01        .byte $01    ; <あ>
- D - I - - 0x026E33 19:AE23: 01        .byte $01    ; <あ>
- D - I - - 0x026E34 19:AE24: 01        .byte $01    ; <あ>
- D - I - - 0x026E35 19:AE25: 01        .byte $01    ; <あ>
- D - I - - 0x026E36 19:AE26: 01        .byte $01    ; <あ>
- D - I - - 0x026E37 19:AE27: 01        .byte $01    ; <あ>
- D - I - - 0x026E38 19:AE28: 01        .byte $01    ; <あ>
- D - I - - 0x026E39 19:AE29: 01        .byte $01    ; <あ>
- D - I - - 0x026E3A 19:AE2A: 01        .byte $01    ; <あ>
- D - I - - 0x026E3B 19:AE2B: 01        .byte $01    ; <あ>
- D - I - - 0x026E3C 19:AE2C: 01        .byte $01    ; <あ>
- D - I - - 0x026E3D 19:AE2D: 01        .byte $01    ; <あ>
- D - I - - 0x026E3E 19:AE2E: 01        .byte $01    ; <あ>
- D - I - - 0x026E3F 19:AE2F: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026E40 19:AE30: 01        .byte $01    ; <あ>
- D - I - - 0x026E41 19:AE31: 01        .byte $01    ; <あ>
- D - I - - 0x026E42 19:AE32: 01        .byte $01    ; <あ>
- D - I - - 0x026E43 19:AE33: 01        .byte $01    ; <あ>
- D - I - - 0x026E44 19:AE34: 01        .byte $01    ; <あ>
- D - I - - 0x026E45 19:AE35: 01        .byte $01    ; <あ>
- D - I - - 0x026E46 19:AE36: 01        .byte $01    ; <あ>
- D - I - - 0x026E47 19:AE37: 01        .byte $01    ; <あ>
- D - I - - 0x026E48 19:AE38: 01        .byte $01    ; <あ>
- D - I - - 0x026E49 19:AE39: 01        .byte $01    ; <あ>
- D - I - - 0x026E4A 19:AE3A: 01        .byte $01    ; <あ>
- D - I - - 0x026E4B 19:AE3B: 01        .byte $01    ; <あ>
- D - I - - 0x026E4C 19:AE3C: 01        .byte $01    ; <あ>
- D - I - - 0x026E4D 19:AE3D: 01        .byte $01    ; <あ>
- D - I - - 0x026E4E 19:AE3E: 01        .byte $01    ; <あ>
- D - I - - 0x026E4F 19:AE3F: 40        .byte $40    ; <「>
- D - I - - 0x026E50 19:AE40: 01        .byte $01    ; <あ>
- D - I - - 0x026E51 19:AE41: 01        .byte $01    ; <あ>
- D - I - - 0x026E52 19:AE42: 40        .byte $40    ; <「>
- D - I - - 0x026E53 19:AE43: 41        .byte $41    ; <ア>
- D - I - - 0x026E54 19:AE44: 01        .byte $01    ; <あ>
- D - I - - 0x026E55 19:AE45: 40        .byte $40    ; <「>
- D - I - - 0x026E56 19:AE46: 42        .byte $42    ; <イ>
- D - I - - 0x026E57 19:AE47: 43        .byte $43    ; <ウ>
- D - I - - 0x026E58 19:AE48: 40        .byte $40    ; <「>
- D - I - - 0x026E59 19:AE49: 1D        .byte $1D    ; <へ>
- D - I - - 0x026E5A 19:AE4A: 48        .byte $48    ; <ク>
- D - I - - 0x026E5B 19:AE4B: 49        .byte $49    ; <ケ>
- D - I - - 0x026E5C 19:AE4C: 1E        .byte $1E    ; <ほ>
- D - I - - 0x026E5D 19:AE4D: 1F        .byte $1F    ; <ま>
- D - I - - 0x026E5E 19:AE4E: 4A        .byte $4A    ; <コ>
- D - I - - 0x026E5F 19:AE4F: 4B        .byte $4B    ; <サ>
- D - I - - 0x026E60 19:AE50: 44        .byte $44    ; <エ>
- D - I - - 0x026E61 19:AE51: 45        .byte $45    ; <オ>
- D - I - - 0x026E62 19:AE52: 50        .byte $50    ; <タ>
- D - I - - 0x026E63 19:AE53: 51        .byte $51    ; <チ>
- D - I - - 0x026E64 19:AE54: 46        .byte $46    ; <カ>
- D - I - - 0x026E65 19:AE55: 47        .byte $47    ; <キ>
- D - I - - 0x026E66 19:AE56: 52        .byte $52    ; <ツ>
- D - I - - 0x026E67 19:AE57: 53        .byte $53    ; <テ>
- D - I - - 0x026E68 19:AE58: 4C        .byte $4C    ; <シ>
- D - I - - 0x026E69 19:AE59: 4D        .byte $4D    ; <ス>
- D - I - - 0x026E6A 19:AE5A: 58        .byte $58    ; <ネ>
- D - I - - 0x026E6B 19:AE5B: 59        .byte $59    ; <ノ>
- D - I - - 0x026E6C 19:AE5C: 4E        .byte $4E    ; <セ>
- D - I - - 0x026E6D 19:AE5D: 4F        .byte $4F    ; <ソ>
- D - I - - 0x026E6E 19:AE5E: 5A        .byte $5A    ; <ハ>
- D - I - - 0x026E6F 19:AE5F: 5A        .byte $5A    ; <ハ>
- D - I - - 0x026E70 19:AE60: 01        .byte $01    ; <あ>
- D - I - - 0x026E71 19:AE61: 01        .byte $01    ; <あ>
- D - I - - 0x026E72 19:AE62: 40        .byte $40    ; <「>
- D - I - - 0x026E73 19:AE63: 31        .byte $31    ; <ゅ>
- D - I - - 0x026E74 19:AE64: 01        .byte $01    ; <あ>
- D - I - - 0x026E75 19:AE65: 27        .byte $27    ; <ら>
- D - I - - 0x026E76 19:AE66: 32        .byte $32    ; <ょ>
- D - I - - 0x026E77 19:AE67: 46        .byte $46    ; <カ>
- D - I - - 0x026E78 19:AE68: 2C        .byte $2C    ; <わ>
- D - I - - 0x026E79 19:AE69: 2D        .byte $2D    ; <を>
- D - I - - 0x026E7A 19:AE6A: 49        .byte $49    ; <ケ>
- D - I - - 0x026E7B 19:AE6B: 4B        .byte $4B    ; <サ>
- D - I - - 0x026E7C 19:AE6C: 2E        .byte $2E    ; <ん>
- D - I - - 0x026E7D 19:AE6D: 2F        .byte $2F    ; <っ>
- D - I - - 0x026E7E 19:AE6E: 3A        .byte $3A    ; <7>
- D - I - - 0x026E7F 19:AE6F: 3B        .byte $3B    ; <8>
- D - I - - 0x026E80 19:AE70: 34        .byte $34    ; <1>
- D - I - - 0x026E81 19:AE71: 35        .byte $35    ; <2>
- D - I - - 0x026E82 19:AE72: 49        .byte $49    ; <ケ>
- D - I - - 0x026E83 19:AE73: 61        .byte $61    ; <ム>
- D - I - - 0x026E84 19:AE74: 4C        .byte $4C    ; <シ>
- D - I - - 0x026E85 19:AE75: 37        .byte $37    ; <4>
- D - I - - 0x026E86 19:AE76: 62        .byte $62    ; <メ>
- D - I - - 0x026E87 19:AE77: 63        .byte $63    ; <モ>
- D - I - - 0x026E88 19:AE78: 3C        .byte $3C    ; <9>
- D - I - - 0x026E89 19:AE79: 3D        .byte $3D    ; <+>
- D - I - - 0x026E8A 19:AE7A: 68        .byte $68    ; <リ>
- D - I - - 0x026E8B 19:AE7B: 69        .byte $69    ; <ル>
- D - I - - 0x026E8C 19:AE7C: 3E        .byte $3E    ; <Jr>
- D - I - - 0x026E8D 19:AE7D: 3F        .byte $3F    ; <•>
- D - I - - 0x026E8E 19:AE7E: 6A        .byte $6A    ; <レ>
- D - I - - 0x026E8F 19:AE7F: 6B        .byte $6B    ; <ロ>
- D - I - - 0x026E90 19:AE80: 64        .byte $64    ; <ヤ>
- D - I - - 0x026E91 19:AE81: 65        .byte $65    ; <ユ>
- D - I - - 0x026E92 19:AE82: 70        .byte $70    ; <ャ>
- D - I - - 0x026E93 19:AE83: 71        .byte $71    ; <ュ>
- D - I - - 0x026E94 19:AE84: 66        .byte $66    ; <ヨ>
- D - I - - 0x026E95 19:AE85: 67        .byte $67    ; <ラ>
- D - I - - 0x026E96 19:AE86: 72        .byte $72    ; <ョ>
- D - I - - 0x026E97 19:AE87: 73        .byte $73    ; <ヮ>
- D - I - - 0x026E98 19:AE88: 6C        .byte $6C    ; <ワ>
- D - I - - 0x026E99 19:AE89: 50        .byte $50    ; <タ>
- D - I - - 0x026E9A 19:AE8A: 78        .byte $78    ; <?>
- D - I - - 0x026E9B 19:AE8B: 78        .byte $78    ; <?>
- D - I - - 0x026E9C 19:AE8C: 6E        .byte $6E    ; <ン>
- D - I - - 0x026E9D 19:AE8D: 6F        .byte $6F    ; <ッ>
- D - I - - 0x026E9E 19:AE8E: 7A        .byte $7A    ; <、>
- D - I - - 0x026E9F 19:AE8F: 7A        .byte $7A    ; <、>
- D - I - - 0x026EA0 19:AE90: 01        .byte $01    ; <あ>
- D - I - - 0x026EA1 19:AE91: 01        .byte $01    ; <あ>
- D - I - - 0x026EA2 19:AE92: 79        .byte $79    ; <!>
- D - I - - 0x026EA3 19:AE93: 54        .byte $54    ; <ト>
- D - I - - 0x026EA4 19:AE94: 01        .byte $01    ; <あ>
- D - I - - 0x026EA5 19:AE95: 01        .byte $01    ; <あ>
- D - I - - 0x026EA6 19:AE96: 7B        .byte $7B    ; <。>
- D - I - - 0x026EA7 19:AE97: 56        .byte $56    ; <ニ>
- D - I - - 0x026EA8 19:AE98: 01        .byte $01    ; <あ>
- D - I - - 0x026EA9 19:AE99: 79        .byte $79    ; <!>
- D - I - - 0x026EAA 19:AE9A: 1C        .byte $1C    ; <ふ>
- D - I - - 0x026EAB 19:AE9B: 56        .byte $56    ; <ニ>
- D - I - - 0x026EAC 19:AE9C: 01        .byte $01    ; <あ>
- D - I - - 0x026EAD 19:AE9D: 7B        .byte $7B    ; <。>
- D - I - - 0x026EAE 19:AE9E: 56        .byte $56    ; <ニ>
- D - I - - 0x026EAF 19:AE9F: 56        .byte $56    ; <ニ>
- D - I - - 0x026EB0 19:AEA0: 55        .byte $55    ; <ナ>
- D - I - - 0x026EB1 19:AEA1: 02        .byte $02    ; <い>
- D - I - - 0x026EB2 19:AEA2: 02        .byte $02    ; <い>
- D - I - - 0x026EB3 19:AEA3: 06        .byte $06    ; <か>
- D - I - - 0x026EB4 19:AEA4: 57        .byte $57    ; <ヌ>
- D - I - - 0x026EB5 19:AEA5: 08        .byte $08    ; <く>
- D - I - - 0x026EB6 19:AEA6: 09        .byte $09    ; <け>
- D - I - - 0x026EB7 19:AEA7: 0C        .byte $0C    ; <し>
- D - I - - 0x026EB8 19:AEA8: 56        .byte $56    ; <ニ>
- D - I - - 0x026EB9 19:AEA9: 0A        .byte $0A    ; <こ>
- D - I - - 0x026EBA 19:AEAA: 0B        .byte $0B    ; <さ>
- D - I - - 0x026EBB 19:AEAB: 0E        .byte $0E    ; <せ>
- D - I - - 0x026EBC 19:AEAC: 56        .byte $56    ; <ニ>
- D - I - - 0x026EBD 19:AEAD: 20        .byte $20    ; <み>
- D - I - - 0x026EBE 19:AEAE: 21        .byte $21    ; <む>
- D - I - - 0x026EBF 19:AEAF: 24        .byte $24    ; <や>
- D - I - - 0x026EC0 19:AEB0: 07        .byte $07    ; <き>
- D - I - - 0x026EC1 19:AEB1: 12        .byte $12    ; <つ>
- D - I - - 0x026EC2 19:AEB2: 13        .byte $13    ; <て>
- D - I - - 0x026EC3 19:AEB3: 14        .byte $14    ; <と>
- D - I - - 0x026EC4 19:AEB4: 0D        .byte $0D    ; <す>
- D - I - - 0x026EC5 19:AEB5: 18        .byte $18    ; <ね>
- D - I - - 0x026EC6 19:AEB6: 19        .byte $19    ; <の>
- D - I - - 0x026EC7 19:AEB7: 16        .byte $16    ; <に>
- D - I - - 0x026EC8 19:AEB8: 0F        .byte $0F    ; <そ>
- D - I - - 0x026EC9 19:AEB9: 1A        .byte $1A    ; <は>
- D - I - - 0x026ECA 19:AEBA: 1B        .byte $1B    ; <ひ>
- D - I - - 0x026ECB 19:AEBB: 04        .byte $04    ; <え>
- D - I - - 0x026ECC 19:AEBC: 25        .byte $25    ; <ゆ>
- D - I - - 0x026ECD 19:AEBD: 30        .byte $30    ; <ゃ>
- D - I - - 0x026ECE 19:AEBE: 5D        .byte $5D    ; <ヘ>
- D - I - - 0x026ECF 19:AEBF: 10        .byte $10    ; <た>
- D - I - - 0x026ED0 19:AEC0: 15        .byte $15    ; <な>
- D - I - - 0x026ED1 19:AEC1: 2A        .byte $2A    ; <れ>
- D - I - - 0x026ED2 19:AEC2: 51        .byte $51    ; <チ>
- D - I - - 0x026ED3 19:AEC3: 51        .byte $51    ; <チ>
- D - I - - 0x026ED4 19:AEC4: 17        .byte $17    ; <ぬ>
- D - I - - 0x026ED5 19:AEC5: 53        .byte $53    ; <テ>
- D - I - - 0x026ED6 19:AEC6: 53        .byte $53    ; <テ>
- D - I - - 0x026ED7 19:AEC7: 53        .byte $53    ; <テ>
- D - I - - 0x026ED8 19:AEC8: 05        .byte $05    ; <お>
- D - I - - 0x026ED9 19:AEC9: 59        .byte $59    ; <ノ>
- D - I - - 0x026EDA 19:AECA: 59        .byte $59    ; <ノ>
- D - I - - 0x026EDB 19:AECB: 59        .byte $59    ; <ノ>
- D - I - - 0x026EDC 19:AECC: 11        .byte $11    ; <ち>
- D - I - - 0x026EDD 19:AECD: 5A        .byte $5A    ; <ハ>
- D - I - - 0x026EDE 19:AECE: 5A        .byte $5A    ; <ハ>
- D - I - - 0x026EDF 19:AECF: 5A        .byte $5A    ; <ハ>
- D - I - - 0x026EE0 19:AED0: 7F        .byte $7F    ; <,>
- D - I - - 0x026EE1 19:AED1: EF        .byte $EF
- D - I - - 0x026EE2 19:AED2: FA        .byte $FA
- D - I - - 0x026EE3 19:AED3: 01        .byte $01    ; <あ>
- D - I - - 0x026EE4 19:AED4: 7F        .byte $7F    ; <,>
- D - I - - 0x026EE5 19:AED5: 7F        .byte $7F    ; <,>
- D - I - - 0x026EE6 19:AED6: E0        .byte $E0
- D - I - - 0x026EE7 19:AED7: E1        .byte $E1
- D - I - - 0x026EE8 19:AED8: 00        .byte $00
- D - I - - 0x026EE9 19:AED9: 00        .byte $00
- D - I - - 0x026EEA 19:AEDA: 00        .byte $00
- D - I - - 0x026EEB 19:AEDB: 00        .byte $00
- D - I - - 0x026EEC 19:AEDC: 00        .byte $00
- D - I - - 0x026EED 19:AEDD: 00        .byte $00
- D - I - - 0x026EEE 19:AEDE: 00        .byte $00
- D - I - - 0x026EEF 19:AEDF: 00        .byte $00
- D - I - - 0x026EF0 19:AEE0: 01        .byte $01    ; <あ>
- D - I - - 0x026EF1 19:AEE1: E3        .byte $E3
- D - I - - 0x026EF2 19:AEE2: 7F        .byte $7F    ; <,>
- D - I - - 0x026EF3 19:AEE3: 7F        .byte $7F    ; <,>
- D - I - - 0x026EF4 19:AEE4: EA        .byte $EA
- D - I - - 0x026EF5 19:AEE5: EB        .byte $EB
- D - I - - 0x026EF6 19:AEE6: 7F        .byte $7F    ; <,>
- D - I - - 0x026EF7 19:AEE7: 7F        .byte $7F    ; <,>
- D - I - - 0x026EF8 19:AEE8: 00        .byte $00
- D - I - - 0x026EF9 19:AEE9: 00        .byte $00
- D - I - - 0x026EFA 19:AEEA: 00        .byte $00
- D - I - - 0x026EFB 19:AEEB: 00        .byte $00
- D - I - - 0x026EFC 19:AEEC: 00        .byte $00
- D - I - - 0x026EFD 19:AEED: 00        .byte $00
- D - I - - 0x026EFE 19:AEEE: 00        .byte $00
- D - I - - 0x026EFF 19:AEEF: 00        .byte $00
- D - I - - 0x026F00 19:AEF0: 01        .byte $01    ; <あ>
- D - I - - 0x026F01 19:AEF1: 01        .byte $01    ; <あ>
- D - I - - 0x026F02 19:AEF2: 01        .byte $01    ; <あ>
- D - I - - 0x026F03 19:AEF3: 01        .byte $01    ; <あ>
- D - I - - 0x026F04 19:AEF4: 01        .byte $01    ; <あ>
- D - I - - 0x026F05 19:AEF5: 01        .byte $01    ; <あ>
- D - I - - 0x026F06 19:AEF6: 01        .byte $01    ; <あ>
- D - I - - 0x026F07 19:AEF7: 01        .byte $01    ; <あ>
- D - I - - 0x026F08 19:AEF8: F8        .byte $F8
- D - I - - 0x026F09 19:AEF9: F9        .byte $F9
- D - I - - 0x026F0A 19:AEFA: 01        .byte $01    ; <あ>
- D - I - - 0x026F0B 19:AEFB: 01        .byte $01    ; <あ>
- D - I - - 0x026F0C 19:AEFC: 7F        .byte $7F    ; <,>
- D - I - - 0x026F0D 19:AEFD: E9        .byte $E9
- D - I - - 0x026F0E 19:AEFE: 01        .byte $01    ; <あ>
- D - I - - 0x026F0F 19:AEFF: 01        .byte $01    ; <あ>
- D - I - - 0x026F10 19:AF00: 7F        .byte $7F    ; <,>
- D - I - - 0x026F11 19:AF01: 7F        .byte $7F    ; <,>
- D - I - - 0x026F12 19:AF02: 7F        .byte $7F    ; <,>
- D - I - - 0x026F13 19:AF03: E9        .byte $E9
- D - I - - 0x026F14 19:AF04: 7F        .byte $7F    ; <,>
- D - I - - 0x026F15 19:AF05: 7F        .byte $7F    ; <,>
- D - I - - 0x026F16 19:AF06: 7F        .byte $7F    ; <,>
- D - I - - 0x026F17 19:AF07: E1        .byte $E1
- D - I - - 0x026F18 19:AF08: 7F        .byte $7F    ; <,>
- D - I - - 0x026F19 19:AF09: 7F        .byte $7F    ; <,>
- D - I - - 0x026F1A 19:AF0A: 7F        .byte $7F    ; <,>
- D - I - - 0x026F1B 19:AF0B: 7F        .byte $7F    ; <,>
- D - I - - 0x026F1C 19:AF0C: 7F        .byte $7F    ; <,>
- D - I - - 0x026F1D 19:AF0D: 7F        .byte $7F    ; <,>
- D - I - - 0x026F1E 19:AF0E: 7F        .byte $7F    ; <,>
- D - I - - 0x026F1F 19:AF0F: 7F        .byte $7F    ; <,>
- D - I - - 0x026F20 19:AF10: F0        .byte $F0
- D - I - - 0x026F21 19:AF11: F1        .byte $F1
- D - I - - 0x026F22 19:AF12: 01        .byte $01    ; <あ>
- D - I - - 0x026F23 19:AF13: 01        .byte $01    ; <あ>
- D - I - - 0x026F24 19:AF14: ED        .byte $ED
- D - I - - 0x026F25 19:AF15: 7F        .byte $7F    ; <,>
- D - I - - 0x026F26 19:AF16: F4        .byte $F4
- D - I - - 0x026F27 19:AF17: 01        .byte $01    ; <あ>
- D - I - - 0x026F28 19:AF18: 7F        .byte $7F    ; <,>
- D - I - - 0x026F29 19:AF19: 7F        .byte $7F    ; <,>
- D - I - - 0x026F2A 19:AF1A: F2        .byte $F2
- D - I - - 0x026F2B 19:AF1B: FA        .byte $FA
- D - I - - 0x026F2C 19:AF1C: 7F        .byte $7F    ; <,>
- D - I - - 0x026F2D 19:AF1D: 7F        .byte $7F    ; <,>
- D - I - - 0x026F2E 19:AF1E: 7F        .byte $7F    ; <,>
- D - I - - 0x026F2F 19:AF1F: F3        .byte $F3
- D - I - - 0x026F30 19:AF20: 01        .byte $01    ; <あ>
- D - I - - 0x026F31 19:AF21: 01        .byte $01    ; <あ>
- D - I - - 0x026F32 19:AF22: 01        .byte $01    ; <あ>
- D - I - - 0x026F33 19:AF23: 01        .byte $01    ; <あ>
- D - I - - 0x026F34 19:AF24: 01        .byte $01    ; <あ>
- D - I - - 0x026F35 19:AF25: 01        .byte $01    ; <あ>
- D - I - - 0x026F36 19:AF26: 01        .byte $01    ; <あ>
- D - I - - 0x026F37 19:AF27: E8        .byte $E8
- D - I - - 0x026F38 19:AF28: 01        .byte $01    ; <あ>
- D - I - - 0x026F39 19:AF29: 01        .byte $01    ; <あ>
- D - I - - 0x026F3A 19:AF2A: EC        .byte $EC
- D - I - - 0x026F3B 19:AF2B: 7F        .byte $7F    ; <,>
- D - I - - 0x026F3C 19:AF2C: 01        .byte $01    ; <あ>
- D - I - - 0x026F3D 19:AF2D: EA        .byte $EA
- D - I - - 0x026F3E 19:AF2E: 7F        .byte $7F    ; <,>
- D - I - - 0x026F3F 19:AF2F: 7F        .byte $7F    ; <,>
- D - I - - 0x026F40 19:AF30: EA        .byte $EA
- D - I - - 0x026F41 19:AF31: 7F        .byte $7F    ; <,>
- D - I - - 0x026F42 19:AF32: 7F        .byte $7F    ; <,>
- D - I - - 0x026F43 19:AF33: 7F        .byte $7F    ; <,>
- D - I - - 0x026F44 19:AF34: 7F        .byte $7F    ; <,>
- D - I - - 0x026F45 19:AF35: 7F        .byte $7F    ; <,>
- D - I - - 0x026F46 19:AF36: 7F        .byte $7F    ; <,>
- D - I - - 0x026F47 19:AF37: 7F        .byte $7F    ; <,>
- D - I - - 0x026F48 19:AF38: 7F        .byte $7F    ; <,>
- D - I - - 0x026F49 19:AF39: 7F        .byte $7F    ; <,>
- D - I - - 0x026F4A 19:AF3A: 7F        .byte $7F    ; <,>
- D - I - - 0x026F4B 19:AF3B: 7F        .byte $7F    ; <,>
- D - I - - 0x026F4C 19:AF3C: 7F        .byte $7F    ; <,>
- D - I - - 0x026F4D 19:AF3D: 7F        .byte $7F    ; <,>
- D - I - - 0x026F4E 19:AF3E: 7F        .byte $7F    ; <,>
- D - I - - 0x026F4F 19:AF3F: 7F        .byte $7F    ; <,>
- D - I - - 0x026F50 19:AF40: 01        .byte $01    ; <あ>
- D - I - - 0x026F51 19:AF41: 01        .byte $01    ; <あ>
- D - I - - 0x026F52 19:AF42: E6        .byte $E6
- D - I - - 0x026F53 19:AF43: E7        .byte $E7
- D - I - - 0x026F54 19:AF44: 01        .byte $01    ; <あ>
- D - I - - 0x026F55 19:AF45: E4        .byte $E4
- D - I - - 0x026F56 19:AF46: E5        .byte $E5
- D - I - - 0x026F57 19:AF47: 7F        .byte $7F    ; <,>
- D - I - - 0x026F58 19:AF48: EE        .byte $EE
- D - I - - 0x026F59 19:AF49: 7F        .byte $7F    ; <,>
- D - I - - 0x026F5A 19:AF4A: 7F        .byte $7F    ; <,>
- D - I - - 0x026F5B 19:AF4B: 7F        .byte $7F    ; <,>
- D - I - - 0x026F5C 19:AF4C: E3        .byte $E3
- D - I - - 0x026F5D 19:AF4D: 7F        .byte $7F    ; <,>
- D - I - - 0x026F5E 19:AF4E: 7F        .byte $7F    ; <,>
- D - I - - 0x026F5F 19:AF4F: 7F        .byte $7F    ; <,>
- - - - - - 0x026F60 19:AF50: 01        .byte $01    ; <あ>
- - - - - - 0x026F61 19:AF51: 01        .byte $01    ; <あ>
- - - - - - 0x026F62 19:AF52: 01        .byte $01    ; <あ>
- - - - - - 0x026F63 19:AF53: 01        .byte $01    ; <あ>
- - - - - - 0x026F64 19:AF54: 01        .byte $01    ; <あ>
- - - - - - 0x026F65 19:AF55: 01        .byte $01    ; <あ>
- - - - - - 0x026F66 19:AF56: 01        .byte $01    ; <あ>
- - - - - - 0x026F67 19:AF57: 01        .byte $01    ; <あ>
- - - - - - 0x026F68 19:AF58: 00        .byte $00
- - - - - - 0x026F69 19:AF59: 00        .byte $00
- - - - - - 0x026F6A 19:AF5A: 00        .byte $00
- - - - - - 0x026F6B 19:AF5B: 00        .byte $00
- - - - - - 0x026F6C 19:AF5C: 00        .byte $00
- - - - - - 0x026F6D 19:AF5D: 00        .byte $00
- - - - - - 0x026F6E 19:AF5E: 00        .byte $00
- - - - - - 0x026F6F 19:AF5F: 00        .byte $00
- D - I - - 0x026F70 19:AF60: 7F        .byte $7F    ; <,>
- D - I - - 0x026F71 19:AF61: 7F        .byte $7F    ; <,>
- D - I - - 0x026F72 19:AF62: 7F        .byte $7F    ; <,>
- D - I - - 0x026F73 19:AF63: 7F        .byte $7F    ; <,>
- D - I - - 0x026F74 19:AF64: 7F        .byte $7F    ; <,>
- D - I - - 0x026F75 19:AF65: 7F        .byte $7F    ; <,>
- D - I - - 0x026F76 19:AF66: 7F        .byte $7F    ; <,>
- D - I - - 0x026F77 19:AF67: 7F        .byte $7F    ; <,>
- D - I - - 0x026F78 19:AF68: 00        .byte $00
- D - I - - 0x026F79 19:AF69: 00        .byte $00
- D - I - - 0x026F7A 19:AF6A: 00        .byte $00
- D - I - - 0x026F7B 19:AF6B: 00        .byte $00
- D - I - - 0x026F7C 19:AF6C: 00        .byte $00
- D - I - - 0x026F7D 19:AF6D: 00        .byte $00
- D - I - - 0x026F7E 19:AF6E: 00        .byte $00
- D - I - - 0x026F7F 19:AF6F: 00        .byte $00
- D - I - - 0x026F80 19:AF70: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F81 19:AF71: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F82 19:AF72: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F83 19:AF73: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F84 19:AF74: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F85 19:AF75: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F86 19:AF76: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F87 19:AF77: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F88 19:AF78: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F89 19:AF79: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F8A 19:AF7A: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F8B 19:AF7B: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F8C 19:AF7C: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F8D 19:AF7D: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F8E 19:AF7E: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026F8F 19:AF7F: 2A        .byte $2A    ; <れ>
- D - I - - 0x026F90 19:AF80: 01        .byte $01    ; <あ>
- D - I - - 0x026F91 19:AF81: 01        .byte $01    ; <あ>
- D - I - - 0x026F92 19:AF82: 01        .byte $01    ; <あ>
- D - I - - 0x026F93 19:AF83: 01        .byte $01    ; <あ>
- D - I - - 0x026F94 19:AF84: 01        .byte $01    ; <あ>
- D - I - - 0x026F95 19:AF85: 01        .byte $01    ; <あ>
- D - I - - 0x026F96 19:AF86: 01        .byte $01    ; <あ>
- D - I - - 0x026F97 19:AF87: 01        .byte $01    ; <あ>
- D - I - - 0x026F98 19:AF88: 04        .byte $04    ; <え>
- D - I - - 0x026F99 19:AF89: 05        .byte $05    ; <お>
- D - I - - 0x026F9A 19:AF8A: 02        .byte $02    ; <い>
- D - I - - 0x026F9B 19:AF8B: 03        .byte $03    ; <う>
- D - I - - 0x026F9C 19:AF8C: 06        .byte $06    ; <か>
- D - I - - 0x026F9D 19:AF8D: 07        .byte $07    ; <き>
- D - I - - 0x026F9E 19:AF8E: 03        .byte $03    ; <う>
- D - I - - 0x026F9F 19:AF8F: 03        .byte $03    ; <う>
- D - I - - 0x026FA0 19:AF90: 23        .byte $23    ; <も>
- D - I - - 0x026FA1 19:AF91: 03        .byte $03    ; <う>
- D - I - - 0x026FA2 19:AF92: 01        .byte $01    ; <あ>
- D - I - - 0x026FA3 19:AF93: 01        .byte $01    ; <あ>
- D - I - - 0x026FA4 19:AF94: 09        .byte $09    ; <け>
- D - I - - 0x026FA5 19:AF95: 09        .byte $09    ; <け>
- D - I - - 0x026FA6 19:AF96: 27        .byte $27    ; <ら>
- D - I - - 0x026FA7 19:AF97: 01        .byte $01    ; <あ>
- D - I - - 0x026FA8 19:AF98: 03        .byte $03    ; <う>
- D - I - - 0x026FA9 19:AF99: 2C        .byte $2C    ; <わ>
- D - I - - 0x026FAA 19:AF9A: 2D        .byte $2D    ; <を>
- D - I - - 0x026FAB 19:AF9B: 0D        .byte $0D    ; <す>
- D - I - - 0x026FAC 19:AF9C: 03        .byte $03    ; <う>
- D - I - - 0x026FAD 19:AF9D: 2E        .byte $2E    ; <ん>
- D - I - - 0x026FAE 19:AF9E: 0C        .byte $0C    ; <し>
- D - I - - 0x026FAF 19:AF9F: 0F        .byte $0F    ; <そ>
- D - I - - 0x026FB0 19:AFA0: 01        .byte $01    ; <あ>
- D - I - - 0x026FB1 19:AFA1: 01        .byte $01    ; <あ>
- D - I - - 0x026FB2 19:AFA2: 01        .byte $01    ; <あ>
- D - I - - 0x026FB3 19:AFA3: 01        .byte $01    ; <あ>
- D - I - - 0x026FB4 19:AFA4: 01        .byte $01    ; <あ>
- D - I - - 0x026FB5 19:AFA5: 01        .byte $01    ; <あ>
- D - I - - 0x026FB6 19:AFA6: 01        .byte $01    ; <あ>
- D - I - - 0x026FB7 19:AFA7: 01        .byte $01    ; <あ>
- D - I - - 0x026FB8 19:AFA8: 10        .byte $10    ; <た>
- D - I - - 0x026FB9 19:AFA9: 01        .byte $01    ; <あ>
- D - I - - 0x026FBA 19:AFAA: 01        .byte $01    ; <あ>
- D - I - - 0x026FBB 19:AFAB: 01        .byte $01    ; <あ>
- D - I - - 0x026FBC 19:AFAC: 12        .byte $12    ; <つ>
- D - I - - 0x026FBD 19:AFAD: 01        .byte $01    ; <あ>
- D - I - - 0x026FBE 19:AFAE: 01        .byte $01    ; <あ>
- D - I - - 0x026FBF 19:AFAF: 01        .byte $01    ; <あ>
- D - I - - 0x026FC0 19:AFB0: 01        .byte $01    ; <あ>
- D - I - - 0x026FC1 19:AFB1: 01        .byte $01    ; <あ>
- D - I - - 0x026FC2 19:AFB2: 01        .byte $01    ; <あ>
- D - I - - 0x026FC3 19:AFB3: 01        .byte $01    ; <あ>
- D - I - - 0x026FC4 19:AFB4: 01        .byte $01    ; <あ>
- D - I - - 0x026FC5 19:AFB5: 01        .byte $01    ; <あ>
- D - I - - 0x026FC6 19:AFB6: 01        .byte $01    ; <あ>
- D - I - - 0x026FC7 19:AFB7: 01        .byte $01    ; <あ>
- D - I - - 0x026FC8 19:AFB8: 01        .byte $01    ; <あ>
- D - I - - 0x026FC9 19:AFB9: 01        .byte $01    ; <あ>
- D - I - - 0x026FCA 19:AFBA: 01        .byte $01    ; <あ>
- D - I - - 0x026FCB 19:AFBB: 11        .byte $11    ; <ち>
- D - I - - 0x026FCC 19:AFBC: 01        .byte $01    ; <あ>
- D - I - - 0x026FCD 19:AFBD: 01        .byte $01    ; <あ>
- D - I - - 0x026FCE 19:AFBE: 01        .byte $01    ; <あ>
- D - I - - 0x026FCF 19:AFBF: 13        .byte $13    ; <て>
- D - I - - 0x026FD0 19:AFC0: 01        .byte $01    ; <あ>
- D - I - - 0x026FD1 19:AFC1: 01        .byte $01    ; <あ>
- D - I - - 0x026FD2 19:AFC2: 03        .byte $03    ; <う>
- D - I - - 0x026FD3 19:AFC3: 33        .byte $33    ; <0>
- D - I - - 0x026FD4 19:AFC4: 01        .byte $01    ; <あ>
- D - I - - 0x026FD5 19:AFC5: 37        .byte $37    ; <4>
- D - I - - 0x026FD6 19:AFC6: 09        .byte $09    ; <け>
- D - I - - 0x026FD7 19:AFC7: 09        .byte $09    ; <け>
- D - I - - 0x026FD8 19:AFC8: 1D        .byte $1D    ; <へ>
- D - I - - 0x026FD9 19:AFC9: 3D        .byte $3D    ; <+>
- D - I - - 0x026FDA 19:AFCA: 3C        .byte $3C    ; <9>
- D - I - - 0x026FDB 19:AFCB: 03        .byte $03    ; <う>
- D - I - - 0x026FDC 19:AFCC: 1F        .byte $1F    ; <ま>
- D - I - - 0x026FDD 19:AFCD: 1C        .byte $1C    ; <ふ>
- D - I - - 0x026FDE 19:AFCE: 3E        .byte $3E    ; <Jr>
- D - I - - 0x026FDF 19:AFCF: 03        .byte $03    ; <う>
- D - I - - 0x026FE0 19:AFD0: 01        .byte $01    ; <あ>
- D - I - - 0x026FE1 19:AFD1: 01        .byte $01    ; <あ>
- D - I - - 0x026FE2 19:AFD2: 01        .byte $01    ; <あ>
- D - I - - 0x026FE3 19:AFD3: 01        .byte $01    ; <あ>
- D - I - - 0x026FE4 19:AFD4: 01        .byte $01    ; <あ>
- D - I - - 0x026FE5 19:AFD5: 01        .byte $01    ; <あ>
- D - I - - 0x026FE6 19:AFD6: 01        .byte $01    ; <あ>
- D - I - - 0x026FE7 19:AFD7: 01        .byte $01    ; <あ>
- D - I - - 0x026FE8 19:AFD8: 03        .byte $03    ; <う>
- D - I - - 0x026FE9 19:AFD9: 02        .byte $02    ; <い>
- D - I - - 0x026FEA 19:AFDA: 15        .byte $15    ; <な>
- D - I - - 0x026FEB 19:AFDB: 14        .byte $14    ; <と>
- D - I - - 0x026FEC 19:AFDC: 03        .byte $03    ; <う>
- D - I - - 0x026FED 19:AFDD: 03        .byte $03    ; <う>
- D - I - - 0x026FEE 19:AFDE: 17        .byte $17    ; <ぬ>
- D - I - - 0x026FEF 19:AFDF: 16        .byte $16    ; <に>
- D - I - - 0x026FF0 19:AFE0: 2A        .byte $2A    ; <れ>
- D - I - - 0x026FF1 19:AFE1: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026FF2 19:AFE2: 2A        .byte $2A    ; <れ>
- D - I - - 0x026FF3 19:AFE3: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026FF4 19:AFE4: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026FF5 19:AFE5: 2A        .byte $2A    ; <れ>
- D - I - - 0x026FF6 19:AFE6: 2B        .byte $2B    ; <ろ>
- D - I - - 0x026FF7 19:AFE7: 2A        .byte $2A    ; <れ>
- D - I - - 0x026FF8 19:AFE8: 00        .byte $00
- D - I - - 0x026FF9 19:AFE9: 00        .byte $00
- D - I - - 0x026FFA 19:AFEA: 00        .byte $00
- D - I - - 0x026FFB 19:AFEB: 00        .byte $00
- D - I - - 0x026FFC 19:AFEC: 00        .byte $00
- D - I - - 0x026FFD 19:AFED: 00        .byte $00
- D - I - - 0x026FFE 19:AFEE: 00        .byte $00
- D - I - - 0x026FFF 19:AFEF: 00        .byte $00
- - - - - - 0x027000 19:AFF0: 01        .byte $01    ; <あ>
- - - - - - 0x027001 19:AFF1: 01        .byte $01    ; <あ>
- - - - - - 0x027002 19:AFF2: 01        .byte $01    ; <あ>
- - - - - - 0x027003 19:AFF3: 01        .byte $01    ; <あ>
- - - - - - 0x027004 19:AFF4: 01        .byte $01    ; <あ>
- - - - - - 0x027005 19:AFF5: 01        .byte $01    ; <あ>
- - - - - - 0x027006 19:AFF6: 01        .byte $01    ; <あ>
- - - - - - 0x027007 19:AFF7: 01        .byte $01    ; <あ>
- - - - - - 0x027008 19:AFF8: 01        .byte $01    ; <あ>
- - - - - - 0x027009 19:AFF9: 01        .byte $01    ; <あ>
- - - - - - 0x02700A 19:AFFA: 01        .byte $01    ; <あ>
- - - - - - 0x02700B 19:AFFB: 01        .byte $01    ; <あ>
- - - - - - 0x02700C 19:AFFC: 01        .byte $01    ; <あ>
- - - - - - 0x02700D 19:AFFD: 01        .byte $01    ; <あ>
- - - - - - 0x02700E 19:AFFE: 01        .byte $01    ; <あ>
- - - - - - 0x02700F 19:AFFF: 01        .byte $01    ; <あ>

loc_0x027010:
C D - - - - 0x027010 19:B000: A9 00     LDA #$00
C - - - - - 0x027012 19:B002: 8D 90 04  STA ram_chr_bank
C - - - - - 0x027015 19:B005: A9 02     LDA #$02
C - - - - - 0x027017 19:B007: 8D 91 04  STA ram_chr_bank + 1
C - - - - - 0x02701A 19:B00A: 8D 87 00  STA ram_0087
C - - - - - 0x02701D 19:B00D: A9 67     LDA #< tbl_B467_титры
C - - - - - 0x02701F 19:B00F: 85 88     STA ram_0088
C - - - - - 0x027021 19:B011: A9 B4     LDA #> tbl_B467_титры
C - - - - - 0x027023 19:B013: 85 89     STA ram_0089
C - - - - - 0x027025 19:B015: A9 00     LDA #$00
C - - - - - 0x027027 19:B017: 8D FB 05  STA ram_команда_с_мячом
C - - - - - 0x02702A 19:B01A: A9 09     LDA #$09
C - - - - - 0x02702C 19:B01C: 8D 41 04  STA ram_игрок_с_мячом
C - - - - - 0x02702F 19:B01F: A9 14     LDA #$14
C - - - - - 0x027031 19:B021: 8D 42 04  STA ram_игрок_без_мяча
C - - - - - 0x027034 19:B024: A9 80     LDA #$80
C - - - - - 0x027036 19:B026: 8D 3F 06  STA ram_063F
C - - - - - 0x027039 19:B029: A9 00     LDA #$00
C - - - - - 0x02703B 19:B02B: 85 8A     STA ram_008A
loc_B02D:
C D - - - - 0x02703D 19:B02D: A4 8A     LDY ram_008A
C - - - - - 0x02703F 19:B02F: B1 88     LDA (ram_0088),Y
C - - - - - 0x027041 19:B031: C9 E0     CMP #$E0
C - - - - - 0x027043 19:B033: 90 08     BCC bra_B03D_меньше_E0
C - - - - - 0x027045 19:B035: E6 8A     INC ram_008A
C - - - - - 0x027047 19:B037: 20 5A B1  JSR sub_B15A_управляющие_байты_титров
C - - - - - 0x02704A 19:B03A: 4C 2D B0  JMP loc_B02D
bra_B03D_меньше_E0:
C - - - - - 0x02704D 19:B03D: 20 43 B0  JSR sub_B043
C - - - - - 0x027050 19:B040: 4C 2D B0  JMP loc_B02D

sub_B043:
C - - - - - 0x027053 19:B043: 2C 3F 06  BIT ram_063F
C - - - - - 0x027056 19:B046: 50 03     BVC bra_B04B
C - - - - - 0x027058 19:B048: 4C AF B0  JMP loc_B0AF_скрытие_букв_спрайтами
bra_B04B:
C - - - - - 0x02705B 19:B04B: A9 01     LDA #$01
C - - - - - 0x02705D 19:B04D: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x027060 19:B050: AD 15 05  LDA ram_0515
C - - - - - 0x027063 19:B053: D0 F6     BNE bra_B04B
C - - - - - 0x027065 19:B055: A9 01     LDA #$01
C - - - - - 0x027067 19:B057: 8D 15 05  STA ram_0515
C - - - - - 0x02706A 19:B05A: A2 47     LDX #$47
C - - - - - 0x02706C 19:B05C: A9 00     LDA #$00
bra_B05E_очистка_буфера:
C - - - - - 0x02706E 19:B05E: 9D A5 04  STA ram_04A5,X
C - - - - - 0x027071 19:B061: CA        DEX
C - - - - - 0x027072 19:B062: 10 FA     BPL bra_B05E_очистка_буфера
; количество символов в буфере
C - - - - - 0x027074 19:B064: A9 20     LDA #$20
C - - - - - 0x027076 19:B066: 8D A5 04  STA ram_04A5
C - - - - - 0x02707F 19:B06F: A5 8B     LDA ram_008B
C - - - - - 0x02708B 19:B07B: 8D A7 04  STA ram_04A7
C - - - - - 0x02709C 19:B08C: A5 8B     LDA ram_0086
                                        PHA
                                        AND #$E0
                                        STA ram_04A6
                                        PLA
                                        AND #$1F
                                        TAX
bra_B092_запись_текста_в_буфер:
C - - - - - 0x0270A2 19:B092: A4 8A     LDY ram_008A
C - - - - - 0x0270A4 19:B094: B1 88     LDA (ram_0088),Y
C - - - - - 0x0270A6 19:B096: C9 E0     CMP #$E0
C - - - - - 0x0270A8 19:B098: B0 0F     BCS bra_B0A9_E0_и_выше
C - - - - - 0x0270B1 19:B0A1: 9D A8 04  STA ram_04A8,X
C - - - - - 0x0270B4 19:B0A4: E8        INX
C - - - - - 0x0270B5 19:B0A5: E6 8A     INC ram_008A
C - - - - - 0x0270B7 19:B0A7: D0 E9     BNE bra_B092_запись_текста_в_буфер
bra_B0A9_E0_и_выше:
C - - - - - 0x0270B9 19:B0A9: A9 80     LDA #$80
C - - - - - 0x0270BB 19:B0AB: 8D 15 05  STA ram_0515
C - - - - - 0x0270BE 19:B0AE: 60        RTS

loc_B0AF_скрытие_букв_спрайтами:
C D - - - - 0x0270BF 19:B0AF: A4 8A     LDY ram_008A
C - - - - - 0x0270C1 19:B0B1: B1 88     LDA (ram_0088),Y
C - - - - - 0x0270C3 19:B0B3: C9 E0     CMP #$E0
C - - - - - 0x0270C5 19:B0B5: 90 01     BCC bra_B0B8_меньше_E0
C - - - - - 0x0270C7 19:B0B7: 60        RTS
bra_B0B8_меньше_E0:
C - - - - - 0x0270C8 19:B0B8: E6 8A     INC ram_008A
C - - - - - 0x0270CA 19:B0BA: 48        PHA
bra_B0BB:
C - - - - - 0x0270CB 19:B0BB: A9 01     LDA #$01
C - - - - - 0x0270CD 19:B0BD: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0270D0 19:B0C0: AD 15 05  LDA ram_0515
C - - - - - 0x0270D3 19:B0C3: D0 F6     BNE bra_B0BB
C - - - - - 0x0270D5 19:B0C5: A9 01     LDA #$01
C - - - - - 0x0270D7 19:B0C7: 8D 15 05  STA ram_0515
; закрытие буфера
C - - - - - 0x0270DA 19:B0CA: A2 00     LDX #$00
C - - - - - 0x0270DC 19:B0CC: 8E AD 04  STX ram_04A9
; bzk бесполезный адрес 003A
C - - - - - 0x0270DF 19:B0CF: 86 3A     STX ram_003A
C - - - - - 0x0270E1 19:B0D1: E8        INX
C - - - - - 0x0270E2 19:B0D2: 8E A5 04  STX ram_04A5
C - - - - - 0x0270E8 19:B0D8: A5 8B     LDA ram_008B
C - - - - - 0x0270F4 19:B0E4: 8D A7 04  STA ram_04A7
C - - - - - 0x0270FA 19:B0EA: A5 8B     LDA ram_0086
C - - - - - 0x027102 19:B0F2: 8D A6 04  STA ram_04A6
C - - - - - 0x02710B 19:B0FB: 68        PLA
C - - - - - 0x02710F 19:B0FF: 8D AC 04  STA ram_04A8
C - - - - - 0x027115 19:B105: A9 80     LDA #$80
C - - - - - 0x027117 19:B107: 8D 15 05  STA ram_0515
                                        LDA #$00
bra_B10C_задержка_следующей_буквы:
C - - - - - 0x02711C 19:B10C: 48        PHA
C - - - - - 0x02711D 19:B10D: 20 27 B1  JSR sub_B127_позиция_спрайта_для_скрытия_буквы
C - - - - - 0x027120 19:B110: A9 01     LDA #$01
C - - - - - 0x027122 19:B112: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x027125 19:B115: 68        PLA
C - - - - - 0x027126 19:B116: 18        CLC
C - - - - - 0x027127 19:B117: 69 02     ADC #$04
C - - - - - 0x027129 19:B119: C9 08     CMP #$08
C - - - - - 0x02712B 19:B11B: D0 EF     BNE bra_B10C_задержка_следующей_буквы
C - - - - - 0x02712D 19:B11D: A5 8B     INC ram_0086
C - - - - - 0x027134 19:B124: 4C AF B0  JMP loc_B0AF_скрытие_букв_спрайтами

sub_B127_позиция_спрайта_для_скрытия_буквы:
.scope
ram_temp = ram_003A
                                        STA ram_temp
                                        LDA ram_0086
                                        AND #$1F
                                        ASL
                                        ASL
                                        ASL
                                        CLC
                                        ADC ram_temp
                                        STA ram_spr_X + $FC
                                        LDA #$01
                                        STA ram_spr_T + $FC
                                        LDA #$00
                                        STA ram_spr_A + $FC
                                        LDA ram_0086
                                        AND #$E0
                                        LSR
                                        LSR
                                        SEC
                                        SBC #$10
                                        LDY ram_008B
                                        CPY #$23
                                        BNE @пропуск
                                        CLC
                                        ADC #$40
@пропуск:
                                        CLC
                                        ADC #$88
                                        STA ram_spr_Y + $FC
                                        RTS
.endscope

sub_B15A_управляющие_байты_титров:
C - - - - - 0x02716A 19:B15A: 20 60 B1  JSR sub_B160_управляющие_байты
C D - - - - 0x027349 19:B339: A5 8A     LDA ram_008A
C - - - - - 0x02734B 19:B33B: 18        CLC
C - - - - - 0x02734C 19:B33C: 65 88     ADC ram_0088
C - - - - - 0x02734E 19:B33E: 85 88     STA ram_0088
C - - - - - 0x027350 19:B340: 90 02     BCC bra_B344_не_overflow
C - - - - - 0x027352 19:B342: E6 89     INC ram_0089
bra_B344_не_overflow:
C - - - - - 0x027354 19:B344: A9 00     LDA #$00
C - - - - - 0x027356 19:B346: 85 8A     STA ram_008A
C - - - - - 0x027358 19:B348: 60        RTS

sub_B160_управляющие_байты:
C - - - - - 0x027170 19:B160: 38        SEC
C - - - - - 0x027171 19:B161: E9 E0     SBC #$E0
C - - - - - 0x027173 19:B163: 20 09 C5  JSR sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка
- D - I - - 0x027176 19:B166: A6 B1     .word ofs_020_B1A6_E0_рожа_игрока_или_фон
- D - I - - 0x027178 19:B168: E0 B1     .word ofs_020_B1E0_E1_таймер_перед_следующим_экраном
- D - I - - 0x02717A 19:B16A: F3 B1     .word ofs_020_B1F3_E2_параметры_игрока
- D - I - - 0x02717C 19:B16C: 18 B2     .word ofs_020_B218_E3_заяц
- D - I - - 0x02717E 19:B16E: 1B B2     .word ofs_020_B21B_E4_смещение_текста
- D - I - - 0x027180 19:B170: 24 B2     .word ofs_020_B224_E5_яркость_и_отображение_текста
- D - I - - 0x027182 19:B172: 35 B2     .word ofs_020_B235_E6_toggle_открывать_текст_движением_спрайта
- D - I - - 0x0271AE 19:B19E: 33 B3     .word ofs_020_B333_E7_закончить_чтение_строки

ofs_020_B1A6_E0_рожа_игрока_или_фон:
.scope
C - J - - - 0x0271B6 19:B1A6: 20 2D C5  JSR sub_очистить_текст
C - - - - - 0x0271B9 19:B1A9: A4 8A     LDY ram_008A
C - - - - - 0x0271BB 19:B1AB: E6 8A     INC ram_008A
C - - - - - 0x0271BD 19:B1AD: B1 88     LDA (ram_0088),Y
C - - - - - 0x0271BF 19:B1AF: 20 4E C5  JSR sub_0x03CBC0_запись_номера_сценария
bra_B1B2:
C - - - - - 0x0271C2 19:B1B2: A9 01     LDA #$01
C - - - - - 0x0271C4 19:B1B4: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0271C7 19:B1B7: AD 16 05  LDA ram_флаг_сценария_ХЗ
C - - - - - 0x0271CA 19:B1BA: D0 F6     BNE bra_B1B2
C - - - - - 0x0271CC 19:B1BC: A9 00     LDA #$00
C - - - - - 0x0271CE 19:B1BE: 85 11     STA ram_0011
C - - - - - 0x0271D0 19:B1C0: 85 12     STA ram_0012
C - - - - - 0x0271D4 19:B1C4: 85 0D     STA ram_000D
C - - - - - 0x0271D6 19:B1C6: 85 0E     STA ram_000E
C - - - - - 0x0271DA 19:B1CA: 8D D2 05  STA ram_05D2
C - - - - - 0x0271DD 19:B1CD: AA        TAX
bra_B1CE:
C - - - - - 0x0271DE 19:B1CE: A9 FF     LDA #$FF
C - - - - - 0x0271E0 19:B1D0: 9D 58 05  STA ram_0468 + $F0,X
C - - - - - 0x0271E3 19:B1D3: 9D 57 05  STA ram_046B + $EC,X
C - - - - - 0x0271E6 19:B1D6: 8A        TXA
C - - - - - 0x0271E7 19:B1D7: 18        CLC
C - - - - - 0x0271E8 19:B1D8: 69 15     ADC #$15
C - - - - - 0x0271EA 19:B1DA: AA        TAX
C - - - - - 0x0271EB 19:B1DB: E0 7E     CPX #$7E
C - - - - - 0x0271ED 19:B1DD: D0 EF     BNE bra_B1CE
C - - - - - 0x0271EF 19:B1DF: 60        RTS

sub_очистить_текст:
; 04A5 - счетчик тайлов
; 04A6 - 2006 lo
; 04A7 - 2006 hi
; 04A8 - тайл
; 04AD - конец буфера
    LDA #$01
    STA ram_0515
    LDA #$40
    STA ram_04A5
    LDA #$22
    STA ram_04A7
    LDA #$00
    STA ram_04A6
    STA ram_04A8
    STA ram_04A9
    STA ram_05F4       ; bzk возможно не обязательно, было скопировано из 0x03CC56
    LDA #$06        ; счетчик цикла
@цикл_очистки_экрана:
    PHA
@ожидание_очистки:
    LDA #$81
    STA ram_0515
    LDA #$01
    JSR sub_0x03CB1F_задержка
    LDA ram_0515
    BNE @ожидание_очистки
    LDA #$01
    STA ram_0515
    LDA ram_04A6
    CLC
    ADC #$40        ; увеличение адреса на 40, начиная с 2200
    STA ram_04A6
    BCC @пропуск
    INC ram_04A7
@пропуск:
    PLA
    SEC
    SBC #$01
    BPL @цикл_очистки_экрана
    LSR ram_04A5       ; 40 / 2 = 20
    LDA #$E0        ; очистка второй половины атрибутов
    STA ram_04A6
    LDA #$81
    STA ram_0515
    LDA #$01
    JSR sub_0x03CB1F_задержка
    RTS
.endscope

ofs_020_B1E0_E1_таймер_перед_следующим_экраном:
C - J - - - 0x0271F0 19:B1E0: A4 8A     LDY ram_008A
C - - - - - 0x0271F2 19:B1E2: E6 8A     INC ram_008A
C - - - - - 0x0271F4 19:B1E4: B1 88     LDA (ram_0088),Y
bra_B1E6:
C - - - - - 0x0271F6 19:B1E6: 48        PHA
C - - - - - 0x0271F7 19:B1E7: A9 01     LDA #$01
C - - - - - 0x0271F9 19:B1E9: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0271FC 19:B1EC: 68        PLA
C - - - - - 0x0271FD 19:B1ED: 38        SEC
C - - - - - 0x0271FE 19:B1EE: E9 01     SBC #$01
C - - - - - 0x027200 19:B1F0: D0 F4     BNE bra_B1E6
C - - - - - 0x027202 19:B1F2: 60        RTS

ofs_020_B1F3_E2_параметры_игрока:
C - J - - - 0x027203 19:B1F3: A4 8A     LDY ram_008A
C - - - - - 0x027205 19:B1F5: B1 88     LDA (ram_0088),Y
C - - - - - 0x027207 19:B1F7: AA        TAX
C - - - - - 0x027208 19:B1F8: C8        INY
C - - - - - 0x027209 19:B1F9: B1 88     LDA (ram_0088),Y
C - - - - - 0x02720B 19:B1FB: 48        PHA
C - - - - - 0x02720C 19:B1FC: C8        INY
C - - - - - 0x02720D 19:B1FD: B1 88     LDA (ram_0088),Y
C - - - - - 0x02720F 19:B1FF: C8        INY
C - - - - - 0x027210 19:B200: 84 8A     STY ram_008A
C - - - - - 0x027212 19:B202: C9 0B     CMP #$0B
C - - - - - 0x027214 19:B204: B0 06     BCS bra_B20C
C - - - - - 0x027216 19:B206: 8E 2A 00  STX ram_твоя_команда
C - - - - - 0x027219 19:B209: 4C 0F B2  JMP loc_B20F
bra_B20C:
C - - - - - 0x02721C 19:B20C: 8E 2B 00  STX ram_команда_соперника
loc_B20F:
C D - - - - 0x02721F 19:B20F: 20 0C C5  JSR sub_0x03CD8C_адрес_игрока
C - - - - - 0x027222 19:B212: 68        PLA
C - - - - - 0x027223 19:B213: A0 00     LDY #con_plr_id
C - - - - - 0x027225 19:B215: 91 34     STA (ram_plr_data),Y
C - - - - - 0x027227 19:B217: 60        RTS

ofs_020_B21B_E4_смещение_текста:
C - J - - - 0x02722B 19:B21B: A4 8A     LDY ram_008A
C - - - - - 0x02722F 19:B21F: B1 88     LDA (ram_0088),Y
C - - - - - 0x027231 19:B221: 85 8B     STA ram_0086
                                        INY
                                        LDA (ram_0088),Y
                                        STA ram_008B
                                        INY
                                        STY ram_008A
C - - - - - 0x027233 19:B223: 60        RTS

ofs_020_B224_E5_яркость_и_отображение_текста:
C - J - - - 0x027234 19:B224: A4 8A     LDY ram_008A
C - - - - - 0x027236 19:B226: E6 8A     INC ram_008A
C - - - - - 0x027238 19:B228: B1 88     LDA (ram_0088),Y
C - - - - - 0x02723A 19:B22A: 20 09 C5  JSR sub_0x03CBA9_байты_после_JSR_для_непрямого_прыжка
- D - I - - 0x02723D 19:B22D: 3E B2     .word ofs_021_B23E_00_осветление_экрана
- D - I - - 0x027241 19:B231: A6 B2     .word ofs_021_B2A6_01_затемнение_экрана
- D - I - - 0x027243 19:B233: DB B2     .word ofs_021_B2DB_02_отображение_текста

ofs_020_B235_E6_toggle_открывать_текст_движением_спрайта:
C - J - - - 0x027245 19:B235: AD 3F 06  LDA ram_063F
C - - - - - 0x027248 19:B238: 09 40     ORA #$40
C - - - - - 0x02724A 19:B23A: 8D 3F 06  STA ram_063F
C - - - - - 0x02724D 19:B23D: 60        RTS

ofs_021_B23E_00_осветление_экрана:
C - J - - - 0x02724E 19:B23E: A9 0F     LDA #$0F
C - - - - - 0x027250 19:B240: 8D 72 04  STA ram_046A + 8
C - - - - - 0x027253 19:B243: 4C F7 B2  JMP loc_B2F7

sub_B2A6:
ofs_021_B2A6_01_затемнение_экрана:
C - J - - - 0x0272B6 19:B2A6: A9 30     LDA #$30
bra_B2A8:
C - - - - - 0x0272B8 19:B2A8: 48        PHA
C - - - - - 0x0272B9 19:B2A9: A9 02     LDA #$02
C - - - - - 0x0272BB 19:B2AB: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0272BE 19:B2AE: 68        PLA
C - - - - - 0x0272BF 19:B2AF: 85 3A     STA ram_003A
C - - - - - 0x0272C1 19:B2B1: A2 00     LDX #$00
bra_B2B3:
C - - - - - 0x0272C3 19:B2B3: 8A        TXA
C - - - - - 0x0272C4 19:B2B4: 29 03     AND #$03
C - - - - - 0x0272C6 19:B2B6: F0 10     BEQ bra_B2C8
C - - - - - 0x0272C8 19:B2B8: BD 6F 04  LDA ram_046B + 4,X
C - - - - - 0x0272CB 19:B2BB: 29 0F     AND #$0F
C - - - - - 0x0272CD 19:B2BD: 05 3A     ORA ram_003A
C - - - - - 0x0272CF 19:B2BF: A4 3A     LDY ram_003A
C - - - - - 0x0272D1 19:B2C1: D0 02     BNE bra_B2C5
C - - - - - 0x0272D3 19:B2C3: A9 0F     LDA #$0F
bra_B2C5:
C - - - - - 0x0272D5 19:B2C5: 9D 6F 04  STA ram_046B + 4,X
bra_B2C8:
C - - - - - 0x0272D8 19:B2C8: E8        INX
C - - - - - 0x0272D9 19:B2C9: E0 20     CPX #$20
C - - - - - 0x0272DB 19:B2CB: D0 E6     BNE bra_B2B3
C - - - - - 0x0272DD 19:B2CD: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x0272E3 19:B2D3: A5 3A     LDA ram_003A
C - - - - - 0x0272E5 19:B2D5: 38        SEC
C - - - - - 0x0272E6 19:B2D6: E9 10     SBC #$10
C - - - - - 0x0272E8 19:B2D8: 10 CE     BPL bra_B2A8
C - - - - - 0x0272EA 19:B2DA: 60        RTS

ofs_021_B2DB_02_отображение_текста:
C - J - - - 0x0272EB 19:B2DB: A9 10     LDA #$10
bra_B2DD:
C - - - - - 0x0272ED 19:B2DD: 48        PHA
C - - - - - 0x0272EE 19:B2DE: A9 02     LDA #$02
C - - - - - 0x0272F0 19:B2E0: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0272F3 19:B2E3: 68        PLA
C - - - - - 0x0272F4 19:B2E4: 48        PHA
C - - - - - 0x0272F5 19:B2E5: 8D 72 04  STA ram_046A + 8
C - - - - - 0x0272F8 19:B2E8: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x0272FE 19:B2EE: 68        PLA
C - - - - - 0x0272FF 19:B2EF: 18        CLC
C - - - - - 0x027300 19:B2F0: 69 10     ADC #$10
C - - - - - 0x027302 19:B2F2: C9 40     CMP #$40
C - - - - - 0x027304 19:B2F4: D0 E7     BNE bra_B2DD
C - - - - - 0x027306 19:B2F6: 60        RTS

loc_B2F7:
C D - - - - 0x027307 19:B2F7: A2 00     LDX #$00
bra_B2F9:
C - - - - - 0x027309 19:B2F9: 9D 6F 04  STA ram_046B + 4,X
C - - - - - 0x02730C 19:B2FC: E8        INX
C - - - - - 0x02730D 19:B2FD: E8        INX
C - - - - - 0x02730E 19:B2FE: E8        INX
C - - - - - 0x02730F 19:B2FF: E8        INX
C - - - - - 0x027310 19:B300: E0 20     CPX #$20
C - - - - - 0x027312 19:B302: D0 F5     BNE bra_B2F9
C - - - - - 0x027314 19:B304: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x02731A 19:B30A: A9 01     LDA #$01
C - - - - - 0x02731C 19:B30C: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x02731F 19:B30F: 60        RTS

ofs_020_B333_E7_закончить_чтение_строки:
C - J - - - 0x027343 19:B333: A9 80     LDA #$80
C - - - - - 0x027345 19:B335: 8D 15 05  STA ram_0515
C - - - - - 0x027348 19:B338: 60        RTS

ofs_020_B218_E3_заяц:
C D - - - - 0x027359 19:B349: 20 A6 B2  JSR sub_B2A6
C - - - - - 0x02735C 19:B34C: A9 01     LDA #$01
C - - - - - 0x02735E 19:B34E: 8D 6B 04  STA ram_046B
C - - - - - 0x027361 19:B351: A9 00     LDA #$00
C - - - - - 0x027363 19:B353: 85 4B     STA ram_004B
C - - - - - 0x027365 19:B355: 8D 17 05  STA ram_046B + $AC
C - - - - - 0x027368 19:B358: 8D 3C 05  STA ram_номер_анимации
C - - - - - 0x02736B 19:B35B: A9 80     LDA #$80
C - - - - - 0x02736D 19:B35D: 8D 3A 05  STA ram_046A + $D0
C - - - - - 0x027370 19:B360: A9 24     LDA #$24
C - - - - - 0x027372 19:B362: 85 4A     STA ram_004A
C - - - - - 0x027374 19:B364: A9 20     LDA #$20
C - - - - - 0x027376 19:B366: 20 06 B4  JSR sub_B406
C - - - - - 0x027379 19:B369: A9 28     LDA #$28
C - - - - - 0x02737B 19:B36B: 20 06 B4  JSR sub_B406
C - - - - - 0x02737E 19:B36E: A5 20     LDA ram_0020
C - - - - - 0x027380 19:B370: 29 FC     AND #$FC
C - - - - - 0x027382 19:B372: 85 20     STA ram_0020
C - - - - - 0x027384 19:B374: A2 10     LDX #$10
C - - - - - 0x027386 19:B376: A9 15     LDA #$15
C - - - - - 0x027388 19:B378: 20 30 C5  JSR sub_0x03CC12
C - - - - - 0x02738B 19:B37B: A2 00     LDX #$00
C - - - - - 0x02738D 19:B37D: A9 16     LDA #$16
C - - - - - 0x02738F 19:B37F: 20 30 C5  JSR sub_0x03CC12
C - - - - - 0x027392 19:B382: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x027398 19:B388: A2 03     LDX #$03
bra_B38A_loop:
C - - - - - 0x02739A 19:B38A: BD 02 B4  LDA tbl_B402,X
C - - - - - 0x02739D 19:B38D: 9D 94 04  STA ram_0468 + $2C,X
C - - - - - 0x0273A0 19:B390: CA        DEX
C - - - - - 0x0273A1 19:B391: 10 F7     BPL bra_B38A_loop
C - - - - - 0x0273A3 19:B393: A9 7C     LDA #$7C
C - - - - - 0x0273A5 19:B395: 8D 90 04  STA ram_chr_bank
C - - - - - 0x0273A8 19:B398: A9 7E     LDA #$7E
C - - - - - 0x0273AA 19:B39A: 8D 91 04  STA ram_chr_bank + 1
C - - - - - 0x0273AD 19:B39D: A9 FF     LDA #$FF
C - - - - - 0x0273AF 19:B39F: 8D 57 05  STA ram_046B + $EC
C - - - - - 0x0273B2 19:B3A2: 8D 58 05  STA ram_0468 + $F0
C - - - - - 0x0273B5 19:B3A5: 8D 41 05  STA ram_0469 + $D8
C - - - - - 0x0273BA 19:B3AA: 8D 4F 05  STA ram_046B + $E4
C - - - - - 0x0273BD 19:B3AD: A9 DD     LDA #$DD
C - - - - - 0x0273BF 19:B3AF: 8D 53 05  STA ram_046B + $E8
C - - - - - 0x0273C2 19:B3B2: A9 80     LDA #$80
C - - - - - 0x0273C4 19:B3B4: 8D 47 05  STA ram_046B + $DC
C - - - - - 0x0273C7 19:B3B7: A9 31     LDA #$31
C - - - - - 0x0273C9 19:B3B9: 8D 59 05  STA ram_0469 + $F0
C - - - - - 0x0273CC 19:B3BC: 20 33 C5  JSR sub_0x03CCE2
C - - - - - 0x0273D2 19:B3C2: A9 60     LDA #$60
C - - - - - 0x0273D4 19:B3C4: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0273D7 19:B3C7: A9 00     LDA #$00
C - - - - - 0x0273D9 19:B3C9: 85 8A     STA ram_008A
bra_B3CB_loop:
loc_B3CB_цикл:
C D - - - - 0x0273DB 19:B3CB: A9 01     LDA #$01
C - - - - - 0x0273DD 19:B3CD: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x0273E0 19:B3D0: A5 8A     LDA ram_008A
C - - - - - 0x0273E2 19:B3D2: 18        CLC
C - - - - - 0x0273E3 19:B3D3: 69 60     ADC #$60
C - - - - - 0x0273E5 19:B3D5: 85 8A     STA ram_008A
C - - - - - 0x0273E7 19:B3D7: 90 F2     BCC bra_B3CB_loop
C - - - - - 0x0273E9 19:B3D9: CE 4F 05  DEC ram_046B + $E4
C - - - - - 0x0273EC 19:B3DC: C6 4A     DEC ram_004A
C - - - - - 0x0273EE 19:B3DE: F0 1A     BEQ bra_B3FA_закончить
C - - - - - 0x0273F0 19:B3E0: A2 06     LDX #$06
C - - - - - 0x0273F2 19:B3E2: A5 4A     LDA ram_004A
C - - - - - 0x0273F4 19:B3E4: C9 14     CMP #$14
C - - - - - 0x0273F6 19:B3E6: F0 06     BEQ bra_B3EE
C - - - - - 0x0273F8 19:B3E8: A2 16     LDX #$16
C - - - - - 0x0273FA 19:B3EA: C9 08     CMP #$08
C - - - - - 0x0273FC 19:B3EC: D0 DD     BNE bra_B3CB_loop
bra_B3EE:
C - - - - - 0x0273FE 19:B3EE: 8E 70 04  STX ram_0468 + 8
C - - - - - 0x027401 19:B3F1: 20 33 C5  JSR sub_0x03CCE3
C - - - - - 0x027407 19:B3F7: 4C CB B3  JMP loc_B3CB_цикл
bra_B3FA_закончить:
loc_B3FA_бесконечная_задержка:
C D - - - - 0x02740A 19:B3FA: A9 01     LDA #$01
C - - - - - 0x02740C 19:B3FC: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x02740F 19:B3FF: 4C FA B3  JMP loc_B3FA_бесконечная_задержка

tbl_B402:
    .byte $7C
    .byte $71
    .byte $52
    .byte $53

sub_B406:
C - - - - - 0x027416 19:B406: 48        PHA
C - - - - - 0x027417 19:B407: A2 00     LDX #$00
C - - - - - 0x027419 19:B409: 86 8B     STX ram_008B
C - - - - - 0x02741B 19:B40B: 86 8A     STX ram_008A
bra_B40D_ожидание_освобождения_буфера:
C - - - - - 0x02741D 19:B40D: A9 01     LDA #$01
C - - - - - 0x02741F 19:B40F: 20 15 C5  JSR sub_0x03CB1F_задержка
C - - - - - 0x027422 19:B412: AD 15 05  LDA ram_0515
C - - - - - 0x027425 19:B415: D0 F6     BNE bra_B40D_ожидание_освобождения_буфера
C - - - - - 0x027427 19:B417: A9 01     LDA #$01
C - - - - - 0x027429 19:B419: 8D 15 05  STA ram_0515
C - - - - - 0x02742C 19:B41C: A2 24     LDX #$24
C - - - - - 0x02742E 19:B41E: A9 00     LDA #$00
bra_B420:
C - - - - - 0x027430 19:B420: 9D A5 04  STA ram_04A5,X
C - - - - - 0x027433 19:B423: CA        DEX
C - - - - - 0x027434 19:B424: 10 FA     BPL bra_B420
C - - - - - 0x027436 19:B426: A9 20     LDA #$20
C - - - - - 0x027438 19:B428: 8D A5 04  STA ram_04A5
C - - - - - 0x02743B 19:B42B: A6 8A     LDX ram_008A
C - - - - - 0x02743D 19:B42D: 8E A6 04  STX ram_04A6
C - - - - - 0x027440 19:B430: 68        PLA
C - - - - - 0x027441 19:B431: 48        PHA
C - - - - - 0x027442 19:B432: 05 8B     ORA ram_008B
C - - - - - 0x027444 19:B434: 8D A7 04  STA ram_04A7
C - - - - - 0x027447 19:B437: A9 80     LDA #$80
C - - - - - 0x027449 19:B439: 8D 15 05  STA ram_0515
C - - - - - 0x02744C 19:B43C: 8A        TXA
C - - - - - 0x02744D 19:B43D: 18        CLC
C - - - - - 0x02744E 19:B43E: 69 20     ADC #$20
C - - - - - 0x027450 19:B440: 85 8A     STA ram_008A
C - - - - - 0x027452 19:B442: A5 8B     LDA ram_008B
C - - - - - 0x027454 19:B444: 69 00     ADC #$00
C - - - - - 0x027456 19:B446: 85 8B     STA ram_008B
C - - - - - 0x027458 19:B448: C9 04     CMP #$04
C - - - - - 0x02745A 19:B44A: 90 C1     BCC bra_B40D_ожидание_освобождения_буфера
C - - - - - 0x02745C 19:B44C: 68        PLA
C - - - - - 0x02745D 19:B44D: 60        RTS



tbl_0x02745E_финальная_надпись_TECMO:
    .byte $09
    .word $216E
    .byte $28, $29, $2C, $2D, $38, $37, $39, $3C, $3D
    
    .byte $09
    .word $218E
    .byte $2A, $2B, $2E, $2F, $3A, $2A, $3B, $3E, $3F
    
    .byte $00



tbl_B467_титры:

con_animation               = $E0   ; номер сценария из банка 17
con_timer                   = $E1   ; задержка перед чтением слеюущюих байтов
con_E2                      = $E2   ; ??? + номер игрока + ???
con_tecmo                   = $E3   ; показать зайца и логотип
con_offset                  = $E4   ; смещение по горизонтали и вертикали
con_brightness              = $E5   ; 00 = осветление экрана, 01 = затемнение экрана, 02 = показать текст
con_hide_letters            = $E6   ; toggle, текст до конца катсцены побуквенно открывается спрайтами
con_endline                 = $E7   ; закончить чтение текста

    .byte con_animation, $5C
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Carlos Santana"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5D
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Claudio Meon"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $01, $14, $09
    .byte con_animation, $56
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Ishizaki Ryo"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $59
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Jito Hiroshi"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5A
    .byte con_brightness, $00
    .byte con_offset, $67, $22
    .text "Tachibana brothers"
    .byte con_endline
    .byte con_offset, $A8, $22
    .text "Masao and Kazuo"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $57
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Soda Makoto"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $55
    .byte con_brightness, $00
    .byte con_offset, $6B, $22
    .text "Misugi Jun"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $54
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Matsuyama Hikaru"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $01, $15, $09
    .byte con_animation, $58
    .byte con_brightness, $00
    .byte con_offset, $6B, $22
    .text "Nitta Shun"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $64
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Ramon Victorino"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5E
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Hermann Kaltz"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5F
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Elle Sid Pierre"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $60
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Louis Napoleon"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $61
    .byte con_brightness, $00
    .byte con_offset, $6B, $22
    .text "Juan Diaz"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $62
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Alan Pascal"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $63
    .byte con_brightness, $00
    .byte con_offset, $66, $22
    .text "Karl Heinz Schneider"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $65
    .byte con_brightness, $00
    .byte con_offset, $65, $22
    .text "Arthur Antines Coimbra"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $51
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Misaki Taro"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $5B
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Wakashimazu Ken"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $52
    .byte con_brightness, $00
    .byte con_offset, $6A, $22
    .text "Hyuga Kojiro"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_animation, $53
    .byte con_brightness, $00
    .byte con_offset, $68, $22
    .text "Wakabayashi Genzo"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $02, $01, $09
    .byte con_animation, $50
    .byte con_brightness, $00
    .byte con_offset, $69, $22
    .text "Ozora Tsubasa"
    .byte con_endline
    .byte con_brightness, $02
    .byte con_timer, $68
    
    
    
    .byte con_brightness, $01
    .byte con_E2, $00, $58, $09
    .byte con_animation, $66
    .byte con_offset, $6D, $22
    .text "STAFF"
    .byte con_endline
    .byte con_timer, $A0
    
    
    
    .byte con_hide_letters
    .byte con_E2, $02, $01, $09
    .byte con_animation, $69
    .byte con_offset, $64, $22
    .text "Director"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EF, $22
    .text "Fighter Otomi"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $01, $15, $14
    .byte con_animation, $78
    .byte con_offset, $64, $22
    .text "In-Game Programming"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F6, $22
    .text "Yochin"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0B, $32, $14
    .byte con_animation, $6B
    .byte con_offset, $64, $22
    .text "Out-Game Programming"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F5, $22
    .text "Akihiko"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $01, $14, $14
    .byte con_animation, $6C
    .byte con_offset, $64, $22
    .text "Planning"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F5, $22
    .text "Red Fox"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $01, $09
    .byte con_animation, $6D
    .byte con_offset, $64, $22
    .text "Out-Game Director"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F7, $22
    .text "Horse"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0A, $30, $09
    .byte con_animation, $6E
    .byte con_offset, $64, $22
    .text "Animation Director"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F1, $22
    .text "Niwaka Maru"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0E, $39, $0B
    .byte con_animation, $6F
    .byte con_offset, $64, $22
    .text "Composers"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F1, $22
    .text "Yama-san"
    .byte con_endline
    
    .byte con_offset, $31, $23
    .text "Metal Yuhki"
    .byte con_endline
    
    .byte con_offset, $71, $23
    .text "Mayu"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $01, $0C, $09
    .byte con_animation, $70
    .byte con_offset, $64, $22
    .text "Sprite Animation"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $ED, $22
    .text "Super Gonta-kun"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0D, $00, $0B
    .byte con_E2, $0D, $35, $14
    .byte con_animation, $71
    .byte con_offset, $64, $22
    .text "Maintenence"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F5, $22
    .text "Mashian"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $09, $2E, $14
    .byte con_animation, $72
    .byte con_offset, $64, $22
    .text "Graphic Team #1"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F0, $22
    .text "Kena"
    .byte con_endline
    
    .byte con_offset, $30, $23
    .text "Perco"
    .byte con_endline
    
    .byte con_offset, $70, $23
    .text "Shinpero Ace"
    .byte con_endline
    
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $01, $09
    .byte con_animation, $6A
    .byte con_offset, $64, $22
    .text "Graphic Team #2"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F4, $22
    .text "Purple"
    .byte con_endline
    
    .byte con_offset, $34, $23
    .text "Zu"
    .byte con_endline
    
    .byte con_offset, $74, $23
    .text "Fuyufuyu"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $21, $0B
    .byte con_animation, $73
    .byte con_offset, $64, $22
    .text "Data Work"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F0, $22
    .text "Sugar Radish"
    .byte con_endline
    
    .byte con_offset, $30, $23
    .text "Yahemi"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $0E, $36, $09
    .byte con_E2, $01, $00, $14
    .byte con_E2, $01, $0F, $0B
    .byte con_animation, $74
    .byte con_offset, $64, $22
    .text "Chief Debugger"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $F1, $22
    .text "Today Jubei"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $02, $11, $09
    .byte con_animation, $75
    .byte con_offset, $64, $22
    .text "Out-Game Advisor"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EE, $22
    .text "Cherry Blossom"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_E2, $12, $44, $09
    .byte con_animation, $76
    .byte con_offset, $64, $22
    .text "Manual Design"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EC, $22
    .text "Mondo Eco"
    .byte con_endline
    
    .byte con_offset, $2C, $23
    .text "Pancho Taka-chan"
    .byte con_endline
    .byte con_timer, $50
    
    
    
    .byte con_animation, $77
    .byte con_offset, $64, $22
    .text "Original"
    .byte con_endline
    .byte con_timer, $20
    
    .byte con_offset, $EC, $22
    .text "Yoichi Takahashi"
    .byte con_endline
    .byte con_timer, $80
    
    
    
    .byte con_brightness, $01
    .byte con_tecmo
