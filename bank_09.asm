.segment "BANK_09"
.include "copy_bank_ram.inc"
; блоки с 4x4 тайлами
; первый байт = атрибут блока
; остальные 16 = номера тайлов

.export tbl_0x010010_блоки_4x4_тайла
tbl_0x010010_блоки_4x4_тайла:
	; 00
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 01
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 02
	.byte $AA
	.byte $FB, $FB, $FB, $FB
	.byte $FB, $FB, $FB, $FB
	.byte $FB, $FB, $FB, $FB
	.byte $FB, $FB, $FB, $FB
	; 03
	.byte $AA
	.byte $27, $27, $27, $27
	.byte $27, $27, $27, $27
	.byte $27, $27, $27, $27
	.byte $27, $27, $27, $27
	; 04
	.byte $FF
	.byte $10, $11, $08, $3D
	.byte $12, $13, $0A, $12
	.byte $3C, $3C, $18, $19
	.byte $0A, $12, $0B, $0E
	; 05
	.byte $FF
	.byte $09, $0C, $03, $06
	.byte $0B, $0E, $17, $17
	.byte $3C, $3C, $10, $11
	.byte $0A, $12, $1C, $1D
	; 06
	.byte $FF
	.byte $06, $07, $08, $3D
	.byte $17, $17, $0A, $12
	.byte $3C, $3C, $18, $19
	.byte $1D, $1E, $0B, $0E
	; 07
	.byte $FF
	.byte $09, $0C, $3C, $3C
	.byte $0B, $0E, $0A, $12
	.byte $3C, $3C, $10, $11
	.byte $0A, $12, $12, $13
	; 08
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $01, $1A
	; 09
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $1A, $1A
	.byte $1A, $01, $02, $04
	; 0A
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $1A, $1A, $01, $01
	.byte $04, $05, $01, $1A
	; 0B
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $1A, $01, $0D, $0D
	; 0C
	.byte $FF
	.byte $40, $41, $4B, $4B
	.byte $42, $43, $42, $42
	.byte $40, $40, $44, $45
	.byte $42, $42, $46, $47
	; 0D
	.byte $FF
	.byte $48, $49, $03, $06
	.byte $46, $47, $4A, $4A
	.byte $40, $40, $40, $41
	.byte $42, $42, $1C, $1D
	; 0E
	.byte $FF
	.byte $06, $07, $4B, $4B
	.byte $4A, $4A, $42, $42
	.byte $40, $40, $44, $45
	.byte $1D, $1E, $46, $47
	; 0F
	.byte $FF
	.byte $48, $49, $40, $40
	.byte $46, $47, $42, $42
	.byte $40, $40, $40, $41
	.byte $42, $42, $42, $43
	; 10
	.byte $FF
	.byte $40, $41, $40, $40
	.byte $42, $43, $42, $42
	.byte $40, $40, $44, $45
	.byte $42, $42, $46, $47
	; 11
	.byte $FF
	.byte $44, $45, $40, $40
	.byte $46, $47, $42, $42
	.byte $40, $40, $40, $41
	.byte $42, $42, $42, $43
	; 12
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	.byte $10, $11, $3C, $3C
	.byte $12, $13, $0A, $12
	; 13
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	.byte $18, $19, $3C, $3C
	.byte $0B, $0E, $0A, $12
	; 14
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $01, $1A
	.byte $10, $11, $08, $3D
	.byte $12, $13, $0A, $12
	; 15
	.byte $FA
	.byte $01, $01, $1A, $1A
	.byte $1A, $01, $02, $04
	.byte $09, $0C, $03, $06
	.byte $0B, $0E, $17, $17
	; 16
	.byte $FA
	.byte $1A, $1A, $01, $01
	.byte $04, $05, $01, $1A
	.byte $06, $07, $08, $3D
	.byte $17, $17, $0A, $12
	; 17
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $1A, $01, $0D, $0D
	.byte $09, $0C, $3C, $3C
	.byte $0B, $0E, $0A, $12
	; 18
	.byte $0F
	.byte $3C, $3C, $18, $19
	.byte $0A, $12, $0B, $0E
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 19
	.byte $0F
	.byte $3C, $3C, $10, $11
	.byte $0A, $12, $1C, $1D
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 1A
	.byte $0F
	.byte $3C, $3C, $18, $19
	.byte $1D, $1E, $0B, $0E
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 1B
	.byte $0F
	.byte $3C, $3C, $10, $11
	.byte $0A, $12, $12, $13
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 1C
	.byte $0F
	.byte $40, $40, $44, $45
	.byte $42, $42, $46, $47
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 1D
	.byte $0F
	.byte $40, $40, $40, $41
	.byte $42, $42, $1C, $1D
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 1E
	.byte $0F
	.byte $40, $40, $44, $45
	.byte $1D, $1E, $46, $47
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 1F
	.byte $0F
	.byte $40, $40, $40, $41
	.byte $42, $42, $42, $43
	.byte $01, $01, $01, $01
	.byte $16, $16, $16, $16
	; 20
	.byte $FA
	.byte $50, $51, $5C, $55
	.byte $0F, $0F, $0F, $0F
	.byte $10, $11, $3C, $3C
	.byte $12, $13, $0A, $12
	; 21
	.byte $FA
	.byte $50, $51, $5C, $55
	.byte $0F, $0F, $0F, $0F
	.byte $40, $41, $40, $40
	.byte $42, $43, $42, $42
	; 22
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	.byte $40, $41, $40, $40
	.byte $42, $43, $42, $42
	; 23
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	.byte $44, $45, $40, $40
	.byte $46, $47, $42, $42
	; 24
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $01, $1A
	.byte $40, $41, $4B, $4B
	.byte $42, $43, $42, $42
	; 25
	.byte $FA
	.byte $01, $01, $1A, $1A
	.byte $1A, $01, $02, $04
	.byte $48, $49, $03, $06
	.byte $46, $47, $4A, $4A
	; 26
	.byte $FA
	.byte $1A, $1A, $01, $01
	.byte $04, $05, $01, $1A
	.byte $06, $07, $4B, $4B
	.byte $4A, $4A, $42, $42
	; 27
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $1A, $01, $0D, $0D
	.byte $48, $49, $40, $40
	.byte $46, $47, $42, $42
	; 28
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $01, $1A
	.byte $40, $41, $4B, $4B
	.byte $20, $21, $21, $21
	; 29
	.byte $FA
	.byte $01, $01, $1A, $1A
	.byte $1A, $01, $02, $04
	.byte $48, $49, $03, $06
	.byte $21, $21, $21, $21
	; 2A
	.byte $FA
	.byte $1A, $1A, $01, $01
	.byte $04, $05, $01, $1A
	.byte $06, $07, $4B, $4B
	.byte $21, $21, $21, $21
	; 2B
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $1A, $01, $0D, $0D
	.byte $48, $49, $40, $40
	.byte $21, $21, $21, $39
	; 2C
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	; 2D
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $58, $59, $5C, $01
	.byte $5A, $5B, $5E, $5F
	.byte $0F, $0F, $0F, $0F
	; 2E
	.byte $FF
	.byte $10, $11, $3C, $3C
	.byte $12, $13, $0A, $12
	.byte $3C, $3C, $18, $19
	.byte $0A, $12, $0B, $0E
	; 2F
	.byte $FF
	.byte $18, $19, $3C, $3C
	.byte $0B, $0E, $0A, $12
	.byte $3C, $3C, $10, $11
	.byte $0A, $12, $12, $13
	; 30
	.byte $AA
	.byte $01, $7E, $7F, $4E
	.byte $7E, $7F, $4E, $00
	.byte $7F, $4E, $00, $00
	.byte $4E, $00, $00, $00
	; 31
	.byte $FF
	.byte $4F, $00, $00, $00
	.byte $4F, $00, $00, $00
	.byte $4F, $00, $00, $00
	.byte $4F, $00, $00, $00
	; 32
	.byte $FA
	.byte $01, $01, $01, $F8
	.byte $01, $FA, $01, $01
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	; 33
	.byte $FA
	.byte $01, $01, $01, $01
	.byte $01, $01, $FD, $01
	.byte $FA, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	; 34
	.byte $00
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	; 35
	.byte $FF
	.byte $FB, $FB, $FB, $FB
	.byte $6C, $4D, $4D, $6D
	.byte $66, $68, $69, $67
	.byte $66, $6A, $6B, $67
	; 36
	.byte $AF
	.byte $6E, $4F, $4F, $6F
	.byte $FB, $FB, $FB, $FB
	.byte $F2, $F2, $F2, $F2
	.byte $01, $01, $01, $01
	; 37
	.byte $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	; 38
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $58, $59, $5C, $01
	.byte $5A, $5B, $5E, $5F
	; 39
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $5A
	.byte $01, $01, $50, $51
	; 3A
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $50, $55
	.byte $5C, $5A, $5B, $5B
	.byte $5B, $5B, $5B, $5E
	; 3B
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $5A, $5C, $01, $01
	.byte $5B, $5B, $5C, $01
	.byte $5B, $5E, $5E, $5F
	; 3C
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $50, $51, $54, $55
	.byte $52, $53, $56, $57
	; 3D
	.byte $AA
	.byte $50, $51, $54, $55
	.byte $52, $53, $56, $57
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 3E
	.byte $FA
	.byte $60, $60, $60, $60
	.byte $62, $62, $62, $62
	.byte $68, $68, $68, $68
	.byte $6A, $6A, $6A, $6A
	; 3F
	.byte $FF
	.byte $61, $61, $61, $61
	.byte $63, $63, $63, $63
	.byte $69, $69, $69, $69
	.byte $6B, $6B, $6B, $6B
	; 40
	.byte $AA
	.byte $7A, $7A, $7A, $7A
	.byte $6F, $6F, $6F, $6F
	.byte $6F, $6F, $6F, $6F
	.byte $6F, $6F, $6F, $6F
	; 41
	.byte $AA
	.byte $7A, $7A, $7A, $7A
	.byte $6F, $7B, $6F, $6F
	.byte $6F, $7B, $6F, $6F
	.byte $6F, $7B, $6F, $6F
	; 42
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 43
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	; 44
	.byte $AA
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	; 45
	.byte $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $BF, $BD, $01
	; 46
	.byte $F0
	.byte $81, $B5, $FA, $D4
	.byte $EA, $B7, $F6, $F7
	.byte $10, $18, $FC, $FD
	.byte $0A, $0B, $EB, $EE
	; 47
	.byte $F0
	.byte $D5, $B9, $BC, $81
	.byte $D7, $BB, $BE, $EA
	.byte $FB, $9D, $19, $10
	.byte $EF, $9F, $0E, $0A
	; 48
	.byte $FF
	.byte $00, $9C, $A8, $A8
	.byte $00, $AA, $00, $00
	.byte $00, $9E, $A9, $A9
	.byte $00, $00, $00, $00
	; 49
	.byte $FF
	.byte $A8, $A8, $9D, $00
	.byte $00, $00, $AB, $00
	.byte $A9, $A9, $9F, $00
	.byte $00, $00, $00, $00
	; 4A
	.byte $FF
	.byte $A8, $A8, $A8, $A8
	.byte $00, $00, $00, $88
	.byte $A9, $A9, $A9, $A9
	.byte $00, $00, $00, $00
	; 4B
	.byte $FF
	.byte $A8, $A8, $A8, $A8
	.byte $81, $8E, $86, $00
	.byte $A9, $A9, $A9, $A9
	.byte $00, $00, $00, $00
	; 4C
	.byte $FF
	.byte $A8, $A8, $A8, $A8
	.byte $FC, $89, $8C, $85
	.byte $A9, $A9, $A9, $A9
	.byte $00, $00, $00, $00
	; 4D
	.byte $FF
	.byte $A8, $A8, $A8, $A8
	.byte $8C, $85, $85, $FC
	.byte $A9, $A9, $A9, $A9
	.byte $00, $00, $00, $00
	; 4E
	.byte $FF
	.byte $A8, $A8, $A8, $A8
	.byte $89, $8A, $87, $00
	.byte $A9, $A9, $A9, $A9
	.byte $00, $00, $00, $00
	; 4F
	.byte $FF
	.byte $5D, $5D, $5D, $5D
	.byte $5D, $5D, $5D, $5D
	.byte $5D, $5D, $5D, $5D
	.byte $5D, $5D, $5D, $5D
	; 50
	.byte $AA
	.byte $01, $01, $73, $72
	.byte $01, $01, $73, $73
	.byte $01, $01, $73, $73
	.byte $01, $01, $73, $73
	; 51
	.byte $8A
	.byte $01, $01, $01, $01
	.byte $76, $77, $01, $01
	.byte $6E, $6F, $01, $01
	.byte $7C, $7D, $01, $01
	; 52
	.byte $AA
	.byte $78, $7A, $73, $73
	.byte $00, $7B, $7E, $79
	.byte $00, $00, $00, $7B
	.byte $00, $00, $00, $00
	; 53
	.byte $AA
	.byte $73, $01, $01, $01
	.byte $73, $01, $01, $01
	.byte $7E, $7A, $01, $01
	.byte $00, $7B, $78, $7A
	; 54
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	.byte $40, $41, $40, $40
	.byte $42, $43, $42, $42
	; 55
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $0D, $0D
	.byte $44, $45, $40, $40
	.byte $46, $47, $42, $42
	; 56
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $0D, $0D, $01, $1A
	.byte $40, $41, $4B, $4B
	.byte $42, $43, $42, $42
	; 57
	.byte $FF
	.byte $01, $01, $1A, $1A
	.byte $1A, $01, $02, $04
	.byte $48, $49, $03, $06
	.byte $46, $47, $4A, $4A
	; 58
	.byte $FF
	.byte $1A, $1A, $01, $01
	.byte $04, $05, $01, $1A
	.byte $06, $07, $4B, $4B
	.byte $4A, $4A, $42, $42
	; 59
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $1A, $01, $0D, $0D
	.byte $48, $49, $40, $40
	.byte $46, $47, $42, $42
	; 5A
	.byte $AA
	.byte $01, $01, $F7, $01
	.byte $01, $01, $F4, $01
	.byte $01, $01, $F1, $F6
	.byte $01, $01, $01, $F4
	; 5B
	.byte $AA
	.byte $01, $01, $01, $F5
	.byte $01, $01, $F4, $01
	.byte $F4, $F6, $F5, $F0
	.byte $F1, $01, $F7, $01
	; 5C
	.byte $FF
	.byte $A8, $A8, $A8, $A8
	.byte $00, $00, $00, $00
	.byte $A9, $A9, $A9, $A9
	.byte $00, $00, $00, $00
	; 5D
	.byte $0F
	.byte $24, $25, $25, $25
	.byte $24, $23, $23, $23
	.byte $24, $27, $27, $27
	.byte $32, $28, $28, $28
	; 5E
	.byte $0F
	.byte $25, $25, $25, $25
	.byte $23, $23, $23, $23
	.byte $27, $27, $27, $27
	.byte $28, $28, $28, $28
	; 5F
	.byte $0F
	.byte $25, $25, $25, $3A
	.byte $23, $23, $23, $3A
	.byte $27, $27, $27, $3A
	.byte $28, $28, $28, $3F
	; 60
	.byte $AA
	.byte $FB, $FB, $FB, $FA
	.byte $FB, $FB, $FB, $FA
	.byte $FB, $FB, $EE, $EF
	.byte $EE, $EF, $00, $00
	; 61
	.byte $AA
	.byte $EC, $ED, $00, $00
	.byte $01, $01, $EC, $ED
	.byte $FB, $FB, $EE, $EF
	.byte $EE, $EF, $00, $00
	; 62
	.byte $AA
	.byte $FB, $FB, $EE, $EF
	.byte $EE, $EF, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 63
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $F0, $F1
	; 64
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $F4, $F5, $F4, $F5
	; 65
	.byte $AA
	.byte $FB, $FB, $FB, $FB
	.byte $FB, $FB, $FB, $FB
	.byte $F2, $F2, $F2, $F2
	.byte $01, $01, $01, $01
	; 66
	.byte $AA
	.byte $FB, $FB, $FB, $FA
	.byte $FB, $FB, $FB, $FA
	.byte $F2, $F2, $F2, $F3
	.byte $01, $01, $01, $F6
	; 67
	.byte $AA
	.byte $F9, $01, $01, $01
	.byte $F8, $F9, $01, $01
	.byte $F8, $F8, $F9, $01
	.byte $F8, $F8, $F8, $F9
	; 68
	.byte $AA
	.byte $FB, $FB, $FB, $FA
	.byte $FB, $FB, $FB, $FA
	.byte $FB, $FB, $FB, $FA
	.byte $FB, $FB, $FB, $FA
	; 69
	.byte $AA
	.byte $F7, $27, $27, $27
	.byte $01, $F7, $27, $27
	.byte $01, $01, $F7, $27
	.byte $01, $01, $01, $F7
	; 6A
	.byte $AA
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $8D, $8D
	; 6B
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $8D, $8D, $8D, $8D
	; 6C
	.byte $AA
	.byte $14, $15, $01, $01
	.byte $01, $17, $25, $3B
	.byte $1C, $1D, $27, $01
	.byte $8D, $1F, $8D, $8D
	; 6D
	.byte $AA
	.byte $01, $40, $41, $6A
	.byte $3D, $42, $43, $01
	.byte $01, $48, $49, $01
	.byte $8D, $8D, $4B, $8D
	; 6E
	.byte $AA
	.byte $6B, $01, $00, $00
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	.byte $8D, $8D, $00, $00
	; 6F
	.byte $FF
	.byte $00, $00, $99, $BC
	.byte $00, $00, $8E, $8A
	.byte $00, $00, $90, $91
	.byte $00, $00, $92, $93
	; 70
	.byte $FF
	.byte $90, $91, $BC, $98
	.byte $92, $93, $8A, $8B
	.byte $BC, $98, $99, $BC
	.byte $8A, $8B, $8E, $8A
	; 71
	.byte $FF
	.byte $99, $BC, $90, $91
	.byte $8E, $8A, $92, $93
	.byte $90, $91, $BC, $98
	.byte $92, $93, $8A, $8B
	; 72
	.byte $FF
	.byte $BC, $35, $16, $BC
	.byte $36, $37, $1E, $4A
	.byte $3C, $BC, $34, $60
	.byte $3E, $3F, $92, $62
	; 73
	.byte $FF
	.byte $90, $91, $61, $98
	.byte $92, $93, $63, $44
	.byte $45, $50, $69, $46
	.byte $68, $8B, $8E, $4C
	; 74
	.byte $FF
	.byte $99, $BC, $00, $00
	.byte $8E, $8A, $00, $00
	.byte $47, $91, $00, $00
	.byte $4D, $52, $00, $00
	; 75
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $08, $02, $02, $02
	.byte $0A, $0B, $02, $02
	; 76
	.byte $EA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $01, $03, $03
	.byte $01, $01, $03, $03
	; 77
	.byte $AE
	.byte $20, $21, $03, $03
	.byte $22, $29, $09, $09
	.byte $28, $29, $03, $03
	.byte $2A, $2B, $03, $03
	; 78
	.byte $AB
	.byte $23, $03, $01, $01
	.byte $09, $09, $27, $01
	.byte $03, $2C, $2D, $24
	.byte $03, $2E, $2F, $26
	; 79
	.byte $AA
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	.byte $01, $01, $00, $00
	.byte $25, $0E, $00, $00
	; 7A
	.byte $AA
	.byte $F7, $FC, $F6, $01
	.byte $00, $F7, $FC, $F6
	.byte $00, $00, $F7, $FC
	.byte $00, $00, $00, $F7
	; 7B
	.byte $BA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $03, $03, $02, $18
	.byte $03, $03, $1B, $1A
	; 7C
	.byte $AA
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $1E, $35
	; 7D
	.byte $AE
	.byte $01, $01, $03, $33
	.byte $01, $37, $09, $09
	.byte $34, $3D, $3C, $03
	.byte $36, $3F, $3E, $03
	; 7E
	.byte $AB
	.byte $03, $03, $31, $30
	.byte $09, $09, $39, $32
	.byte $03, $03, $39, $38
	.byte $03, $03, $3B, $3A
	; 7F
	.byte $FF
	.byte $00, $00, $00, $FD
	.byte $00, $00, $00, $FD
	.byte $00, $00, $00, $FD
	.byte $00, $00, $00, $FD
	; 80
	.byte $BA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $03, $03, $15, $14
	.byte $02, $02, $17, $16
	; 81
	.byte $AA
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $11
	.byte $00, $00, $01, $13
	; 82
	.byte $AE
	.byte $01, $01, $03, $33
	.byte $01, $37, $09, $09
	.byte $1D, $3D, $3C, $03
	.byte $1F, $1C, $3E, $03
	; 83
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $50, $51, $5C, $50
	.byte $52, $53, $56, $53
	; 84
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $51, $54, $55, $01
	.byte $56, $56, $57, $01
	; 85
	.byte $55
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $F6, $F6
	.byte $00, $00, $F7, $00
	; 86
	.byte $55
	.byte $00, $F6, $F6, $F6
	.byte $00, $F7, $00, $00
	.byte $F6, $F3, $F6, $F6
	.byte $00, $00, $00, $00
	; 87
	.byte $55
	.byte $F6, $F6, $F6, $F6
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $F7, $00, $00, $00
	; 88
	.byte $AA
	.byte $01, $4F, $58, $03
	.byte $01, $4F, $58, $03
	.byte $01, $4F, $58, $03
	.byte $00, $00, $00, $00
	; 89
	.byte $AA
	.byte $00, $00, $02, $02
	.byte $00, $00, $02, $02
	.byte $00, $00, $02, $02
	.byte $00, $00, $00, $00
	; 8A
	.byte $AA
	.byte $02, $02, $00, $00
	.byte $02, $02, $00, $00
	.byte $02, $02, $00, $00
	.byte $00, $00, $00, $00
	; 8B
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $02, $02, $02, $02
	.byte $03, $03, $03, $03
	.byte $00, $00, $00, $00
	; 8C
	.byte $AA
	.byte $01, $01, $77, $01
	.byte $01, $01, $74, $01
	.byte $01, $01, $71, $76
	.byte $01, $01, $01, $74
	; 8D
	.byte $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $01
	.byte $00, $00, $00, $01
	; 8E
	.byte $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $00, $00, $00
	.byte $01, $00, $00, $00
	; 8F
	.byte $00
	.byte $00, $00, $00, $01
	.byte $00, $00, $00, $01
	.byte $00, $00, $00, $78
	.byte $00, $00, $00, $7A
	; 90
	.byte $C0
	.byte $01, $01, $01, $01
	.byte $73, $76, $01, $01
	.byte $79, $7C, $4A, $6F
	.byte $7B, $7E, $70, $71
	; 91
	.byte $A0
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $70, $74, $12, $70
	.byte $70, $74, $12, $70
	; 92
	.byte $FF
	.byte $01, $00, $00, $00
	.byte $77, $00, $00, $00
	.byte $70, $00, $00, $00
	.byte $72, $00, $00, $00
	; 93
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	; 94
	.byte $AA
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	.byte $00, $00, $01, $01
	; 95
	.byte $FF
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 96
	.byte $AA
	.byte $01, $01, $F5, $01
	.byte $01, $F4, $01, $01
	.byte $01, $F5, $F7, $01
	.byte $01, $01, $F1, $01
	; 97
	.byte $AA
	.byte $01, $01, $01, $75
	.byte $01, $01, $74, $01
	.byte $74, $76, $75, $70
	.byte $71, $01, $77, $01
	; 98
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $82, $83, $86, $87
	.byte $88, $89, $8C, $8D
	; 99
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $92, $93, $01, $01
	.byte $98, $99, $93, $01
	; 9A
	.byte $AA
	.byte $8A, $8B, $8E, $8F
	.byte $A0, $A0, $A4, $A5
	.byte $A2, $A3, $A6, $A7
	.byte $A8, $A9, $AC, $AD
	; 9B
	.byte $AA
	.byte $9A, $9B, $9E, $93
	.byte $B0, $B1, $B4, $B5
	.byte $B2, $9A, $B6, $B7
	.byte $B8, $B9, $BC, $8F
	; 9C
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $93, $01, $01, $01
	.byte $E2, $93, $01, $01
	.byte $8D, $E9, $EC, $01
	; 9D
	.byte $AA
	.byte $AA, $AA, $83, $AF
	.byte $AB, $AB, $AE, $F8
	.byte $82, $82, $84, $FA
	.byte $88, $88, $88, $85
	; 9E
	.byte $AA
	.byte $BA, $BB, $BE, $BF
	.byte $D2, $D3, $94, $95
	.byte $D8, $D9, $96, $97
	.byte $DA, $DB, $9C, $9D
	; 9F
	.byte $AA
	.byte $B0, $9A, $EE, $EF
	.byte $C0, $C1, $C4, $C5
	.byte $C2, $C3, $C6, $C7
	.byte $C8, $C9, $CC, $CD
	; A0
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $E5, $01, $01, $01
	.byte $E7, $ED, $01, $01
	.byte $CF, $D0, $01, $01
	; A1
	.byte $AA
	.byte $8A, $8A, $8A, $90
	.byte $A0, $A0, $A0, $91
	.byte $A3, $A3, $A3, $83
	.byte $BD, $BD, $BD, $E8
	; A2
	.byte $AA
	.byte $F0, $F1, $B3, $9F
	.byte $F2, $F3, $DE, $A1
	.byte $F8, $F9, $D4, $D5
	.byte $FA, $FB, $D6, $D7
	; A3
	.byte $AA
	.byte $CA, $CB, $CE, $CF
	.byte $E0, $E1, $E4, $CF
	.byte $EA, $E3, $E6, $CF
	.byte $EB, $DC, $DD, $CF
	; A4
	.byte $AA
	.byte $CF, $D1, $ED, $01
	.byte $CF, $CF, $D0, $01
	.byte $CF, $CF, $D1, $ED
	.byte $CF, $CF, $CF, $D0
	; A5
	.byte $FF
	.byte $00, $80, $82, $81
	.byte $80, $82, $81, $83
	.byte $82, $81, $83, $5D
	.byte $81, $83, $5D, $5D
	; A6
	.byte $FF
	.byte $83, $5D, $8A, $7F
	.byte $5D, $5D, $8A, $7F
	.byte $5D, $5D, $8B, $01
	.byte $5D, $5D, $5D, $8B
	; A7
	.byte $FF
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; A8
	.byte $FF
	.byte $7F, $8C, $8E, $8F
	.byte $8C, $8E, $8F, $83
	.byte $FC, $FE, $83, $5D
	.byte $FE, $83, $5D, $5D
	; A9
	.byte $FF
	.byte $86, $5D, $5D, $5D
	.byte $86, $5D, $5D, $5D
	.byte $86, $5D, $5D, $5D
	.byte $86, $5D, $5D, $5D
	; AA
	.byte $FF
	.byte $8B, $01, $01, $01
	.byte $5D, $8B, $01, $01
	.byte $5D, $5D, $8B, $01
	.byte $5D, $5D, $5D, $8B
	; AB
	.byte $D5
	.byte $90, $91, $94, $95
	.byte $92, $00, $92, $00
	.byte $94, $95, $00, $80
	.byte $92, $00, $80, $82
	; AC
	.byte $FF
	.byte $00, $80, $84, $85
	.byte $80, $82, $00, $87
	.byte $82, $81, $88, $89
	.byte $81, $83, $8A, $7F
	; AD
	.byte $FF
	.byte $84, $85, $84, $85
	.byte $00, $87, $00, $87
	.byte $89, $89, $89, $89
	.byte $7F, $7F, $7F, $7F
	; AE
	.byte $FF
	.byte $84, $85, $84, $85
	.byte $00, $87, $00, $87
	.byte $89, $89, $89, $8D
	.byte $7F, $7F, $8C, $8E
	; AF
	.byte $55
	.byte $90, $91, $93, $91
	.byte $92, $00, $00, $00
	.byte $93, $91, $91, $91
	.byte $00, $00, $92, $00
	; B0
	.byte $55
	.byte $90, $91, $94, $95
	.byte $92, $00, $92, $96
	.byte $94, $95, $96, $97
	.byte $92, $96, $97, $97
	; B1
	.byte $55
	.byte $96, $97, $97, $97
	.byte $97, $97, $97, $97
	.byte $97, $97, $98, $91
	.byte $97, $97, $9A, $00
	; B2
	.byte $55
	.byte $98, $91, $93, $91
	.byte $9A, $00, $00, $00
	.byte $93, $91, $91, $91
	.byte $00, $00, $92, $00
	; B3
	.byte $55
	.byte $98, $91, $93, $91
	.byte $9A, $00, $00, $00
	.byte $93, $91, $91, $91
	.byte $99, $84, $84, $84
	; B4
	.byte $55
	.byte $91, $91, $93, $91
	.byte $92, $00, $00, $00
	.byte $93, $91, $91, $91
	.byte $85, $84, $84, $84
	; B5
	.byte $55
	.byte $9B, $91, $91, $91
	.byte $87, $00, $00, $00
	.byte $93, $91, $91, $91
	.byte $00, $00, $92, $00
	; B6
	.byte $FF
	.byte $9E, $9E, $9E, $9E
	.byte $84, $84, $85, $84
	.byte $9E, $9E, $87, $9E
	.byte $9E, $9E, $87, $9E
	; B7
	.byte $FF
	.byte $9E, $9E, $9E, $9E
	.byte $9E, $9E, $9E, $9E
	.byte $9E, $9E, $9E, $9E
	.byte $9E, $9E, $9E, $9E
	; B8
	.byte $FF
	.byte $86, $00, $9E, $9E
	.byte $86, $00, $9E, $9E
	.byte $86, $00, $9E, $9E
	.byte $00, $00, $9E, $9E
	; B9
	.byte $FF
	.byte $9F, $9F, $9F, $9F
	.byte $9C, $9D, $00, $00
	.byte $00, $9C, $9D, $00
	.byte $00, $00, $9C, $9D
	; BA
	.byte $FF
	.byte $9F, $9F, $9F, $9F
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; BB
	.byte $AA
	.byte $A0, $01, $A0, $01
	.byte $A2, $A3, $A2, $A3
	.byte $A1, $A4, $A6, $A6
	.byte $90, $93, $90, $93
	; BC
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $A6, $A6, $A6, $A6
	.byte $90, $93, $90, $93
	; BD
	.byte $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $A8
	; BE
	.byte $00
	.byte $8B, $01, $A5, $B0
	.byte $5D, $8B, $A7, $B2
	.byte $5D, $A9, $AC, $AD
	.byte $AA, $AB, $AE, $00
	; BF
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $73, $01, $01, $01
	.byte $73, $01, $01, $01
	.byte $73, $01, $01, $01
	; C0
	.byte $55
	.byte $01, $01, $01, $01
	.byte $B8, $AF, $AF, $AF
	.byte $BA, $B1, $B4, $B5
	.byte $BA, $B3, $B6, $B1
	; C1
	.byte $55
	.byte $01, $01, $01, $01
	.byte $AF, $AF, $AF, $AF
	.byte $B9, $B9, $B9, $B9
	.byte $B4, $B5, $BB, $BB
	; C2
	.byte $55
	.byte $01, $01, $01, $01
	.byte $AF, $AF, $AF, $AF
	.byte $B9, $B9, $B9, $B9
	.byte $BB, $BB, $BB, $BB
	; C3
	.byte $55
	.byte $BA, $B3, $BC, $B3
	.byte $BA, $B3, $BC, $B3
	.byte $BA, $B3, $BC, $B3
	.byte $BA, $B3, $BC, $B3
	; C4
	.byte $55
	.byte $B6, $B7, $C0, $C1
	.byte $BC, $B3, $BD, $C5
	.byte $BC, $B3, $BF, $C7
	.byte $BC, $B3, $BE, $CD
	; C5
	.byte $55
	.byte $C2, $C3, $C0, $C1
	.byte $C5, $C5, $C5, $C5
	.byte $C7, $C7, $C7, $C7
	.byte $CD, $CD, $CD, $CD
	; C6
	.byte $55
	.byte $BC, $B3, $C8, $C9
	.byte $BC, $B3, $BC, $BD
	.byte $BC, $B3, $BC, $C6
	.byte $BC, $B3, $BC, $C4
	; C7
	.byte $55
	.byte $CF, $CF, $CF, $CF
	.byte $C5, $C5, $C5, $C5
	.byte $C7, $C7, $C7, $C7
	.byte $CD, $CD, $CD, $CD
	; C8
	.byte $55
	.byte $BC, $B3, $BC, $CA
	.byte $BC, $B3, $BC, $B3
	.byte $BC, $B3, $BC, $B3
	.byte $BC, $B3, $BC, $B3
	; C9
	.byte $55
	.byte $CB, $CF, $CF, $CF
	.byte $BD, $C5, $C5, $C5
	.byte $CC, $C7, $C7, $C7
	.byte $CE, $CD, $CD, $CD
	; CA
	.byte $55
	.byte $BC, $B3, $BC, $B3
	.byte $BC, $B3, $BC, $B3
	.byte $BC, $B3, $BC, $B3
	.byte $BC, $B3, $BC, $B3
	; CB
	.byte $55
	.byte $C8, $C9, $CF, $CF
	.byte $BC, $BD, $C5, $C5
	.byte $BC, $CC, $C7, $C7
	.byte $BC, $CE, $CD, $CD
	; CC
	.byte $55
	.byte $BC, $C8, $C9, $CF
	.byte $BC, $B3, $BD, $C5
	.byte $BC, $B3, $CC, $C7
	.byte $BC, $B3, $CE, $CD
	; CD
	.byte $FF
	.byte $D0, $D1, $D1, $D1
	.byte $D0, $D0, $D0, $D1
	.byte $D0, $D1, $D1, $D1
	.byte $D0, $D0, $D0, $D1
	; CE
	.byte $FF
	.byte $D1, $D1, $D0, $D0
	.byte $D1, $D1, $D1, $D0
	.byte $D1, $D1, $D1, $D1
	.byte $D1, $D1, $D2, $D3
	; CF
	.byte $FF
	.byte $D1, $D1, $D1, $D4
	.byte $D1, $D1, $D0, $D6
	.byte $D1, $D1, $D6, $D1
	.byte $D1, $D1, $D6, $D1
	; D0
	.byte $FF
	.byte $D1, $D1, $D1, $D5
	.byte $D1, $D1, $D1, $D5
	.byte $D1, $D1, $D1, $D5
	.byte $D0, $D1, $D1, $D5
	; D1
	.byte $FF
	.byte $D0, $D1, $D1, $D1
	.byte $D0, $D1, $D1, $D1
	.byte $D0, $D1, $D1, $D1
	.byte $D0, $D1, $D1, $D1
	; D2
	.byte $FF
	.byte $D1, $D6, $D6, $D1
	.byte $D1, $D5, $D1, $D1
	.byte $D1, $D6, $D6, $D1
	.byte $D6, $D5, $D1, $D1
	; D3
	.byte $FF
	.byte $D1, $D1, $D8, $D9
	.byte $D1, $D1, $D8, $D9
	.byte $D1, $D1, $D8, $D9
	.byte $D1, $D1, $D8, $D9
	; D4
	.byte $FF
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $00, $00
	; D5
	.byte $FF
	.byte $DA, $D6, $D6, $D5
	.byte $DA, $DA, $DA, $DB
	.byte $DA, $E0, $DC, $DD
	.byte $DA, $E2, $DE, $DF
	; D6
	.byte $FF
	.byte $D0, $E5, $E5, $D1
	.byte $E3, $E5, $E5, $E5
	.byte $E1, $E4, $E5, $E5
	.byte $00, $E6, $E7, $D0
	; D7
	.byte $FF
	.byte $D1, $E9, $EC, $ED
	.byte $D0, $EB, $EE, $EF
	.byte $EA, $EA, $E8, $F0
	.byte $EA, $EA, $EA, $D1
	; D8
	.byte $FF
	.byte $F4, $F5, $F1, $D1
	.byte $F6, $F7, $F3, $D0
	.byte $F8, $F9, $F2, $F2
	.byte $D1, $F2, $F2, $F2
	; D9
	.byte $FF
	.byte $D3, $D0, $D1, $D1
	.byte $D6, $D1, $D1, $D1
	.byte $D6, $D6, $D1, $D1
	.byte $D1, $D1, $D1, $D1
	; DA
	.byte $FF
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $00, $00
	; DB
	.byte $FF
	.byte $D4, $EA, $EA, $D6
	.byte $D4, $D4, $D0, $D6
	.byte $D1, $D1, $D1, $D1
	.byte $D1, $D1, $D1, $D1
	; DC
	.byte $FF
	.byte $D0, $F2, $D6, $D6
	.byte $D0, $D1, $D1, $D1
	.byte $D1, $D1, $D1, $D5
	.byte $D1, $D1, $D1, $D1
	; DD
	.byte $FF
	.byte $D9, $D7, $00, $00
	.byte $D9, $D7, $FD, $FD
	.byte $D9, $D7, $F4, $F4
	.byte $FA, $FB, $00, $00
	; DE
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	; DF
	.byte $FF
	.byte $00, $00, $00, $00
	.byte $FD, $FD, $FD, $FD
	.byte $F4, $F4, $F4, $F4
	.byte $00, $00, $00, $00
	; E0
	.byte $55
	.byte $70, $71, $71, $71
	.byte $74, $75, $75, $75
	.byte $46, $47, $47, $47
	.byte $5D, $5D, $5D, $5D
	; E1
	.byte $0F
	.byte $40, $41, $44, $40
	.byte $42, $43, $42, $43
	.byte $48, $49, $4C, $4D
	.byte $4A, $4B, $4E, $4A
	; E2
	.byte $0F
	.byte $44, $45, $45, $45
	.byte $42, $43, $42, $43
	.byte $48, $49, $4D, $4C
	.byte $4B, $4F, $60, $4E
	; E3
	.byte $0F
	.byte $40, $41, $44, $40
	.byte $42, $42, $43, $43
	.byte $48, $4D, $4B, $4D
	.byte $60, $4A, $49, $4B
	; E4
	.byte $0F
	.byte $40, $41, $44, $40
	.byte $42, $43, $42, $43
	.byte $48, $4C, $4D, $4B
	.byte $60, $4E, $60, $4D
	; E5
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $62, $63, $66, $67
	.byte $61, $64, $65, $61
	.byte $00, $00, $00, $00
	; E6
	.byte $AA
	.byte $7F, $67, $62, $69
	.byte $68, $64, $64, $64
	.byte $64, $64, $00, $00
	.byte $00, $00, $00, $00
	; E7
	.byte $AA
	.byte $63, $66, $7F, $7F
	.byte $64, $61, $6C, $66
	.byte $00, $00, $61, $61
	.byte $00, $00, $00, $00
	; E8
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	.byte $69, $63, $62, $6C
	.byte $00, $65, $64, $64
	; E9
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	.byte $66, $7F, $67, $68
	.byte $61, $6D, $64, $00
	; EA
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $67, $62, $63, $66
	.byte $64, $61, $61, $61
	.byte $00, $00, $00, $00
	; EB
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	.byte $6C, $66, $7F, $67
	.byte $64, $65, $6D, $64
	; EC
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	.byte $66, $67, $62, $6C
	.byte $61, $65, $64, $64
	; ED еще не использовалось
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $7F
	.byte $6C, $66, $67, $62
	.byte $64, $65, $61, $64
	; EE
	.byte $AA
	.byte $7F, $7F, $7F, $7F
	.byte $7F, $7F, $7F, $67
	.byte $66, $67, $68, $64
	.byte $61, $64, $64, $00
	; EF
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $01, $01, $02
	.byte $01, $01, $01, $08
	; F0
	.byte $FF
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $04, $04
	.byte $00, $06, $07, $12
	; F1
	.byte $FF
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $04, $04, $04, $05
	.byte $13, $16, $17, $0C
	; F2
	.byte $FF
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $10, $11, $00, $00
	.byte $00, $0D, $18, $19
	; F3
	.byte $BF
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $03
	.byte $1C, $1D, $00, $09
	; F4
	.byte $AA
	.byte $01, $01, $01, $0A
	.byte $01, $01, $01, $02
	.byte $01, $01, $01, $20
	.byte $01, $01, $01, $01
	; F5
	.byte $EF
	.byte $0E, $0F, $00, $00
	.byte $30, $00, $00, $00
	.byte $32, $00, $00, $00
	.byte $01, $2D, $38, $39
	; F6
	.byte $FF
	.byte $1A, $1B, $00, $00
	.byte $31, $34, $35, $00
	.byte $33, $7F, $36, $37
	.byte $3C, $7F, $7F, $3D
	; F7
	.byte $FF
	.byte $00, $00, $1E, $1F
	.byte $00, $00, $22, $23
	.byte $00, $00, $28, $5D
	.byte $2A, $2B, $2E, $2F
	; F8
	.byte $BB
	.byte $24, $25, $00, $0B
	.byte $26, $3E, $00, $03
	.byte $29, $2C, $00, $21
	.byte $3A, $3B, $14, $15
	; F9
	.byte $FF
	.byte $80, $81, $8B, $84
	.byte $82, $83, $01, $86
	.byte $88, $89, $01, $85
	.byte $8A, $01, $01, $87
	; FA
	.byte $08
	.byte $8C, $01, $01, $01
	.byte $8E, $8C, $01, $01
	.byte $B1, $8E, $8C, $01
	.byte $00, $B1, $8E, $8F
	; FB
	.byte $8A
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $8D, $01, $01, $01
	; FC
	.byte $FF
	.byte $90, $01, $01, $91
	.byte $92, $01, $93, $00
	.byte $94, $95, $98, $00
	.byte $96, $97, $9A, $00
	; FD
	.byte $FF
	.byte $00, $99, $9C, $9D
	.byte $00, $9B, $9E, $9F
	.byte $00, $A1, $A4, $A5
	.byte $B0, $A3, $A6, $A7
	; FE
	.byte $08
	.byte $A8, $01, $01, $01
	.byte $AA, $8C, $01, $01
	.byte $A9, $AC, $AD, $A0
	.byte $AB, $AE, $AF, $A2
	; FF
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 100
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 101
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 102 еще не использовалос
	.byte $AA
	.byte $02, $02, $02, $02
	.byte $02, $02, $02, $02
	.byte $02, $02, $02, $02
	.byte $02, $02, $02, $02
	; 103 еще не использовалос
	.byte $AA
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	; 104
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $80, $81
	.byte $00, $00, $82, $83
	.byte $00, $86, $88, $83
	; 105
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $84, $85, $90, $00
	.byte $83, $87, $92, $93
	.byte $8C, $8D, $98, $99
	; 106
	.byte $AA
	.byte $00, $00, $A1, $A8
	.byte $94, $84, $C0, $C1
	.byte $96, $97, $C2, $C3
	.byte $9C, $9D, $C8, $C9
	; 107
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $C4, $84, $D0, $D1
	.byte $C6, $C6, $D2, $D3
	.byte $83, $83, $D8, $D9
	; 108
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $D4, $D5, $AA, $AB
	.byte $D6, $D7, $BE, $BF
	.byte $DC, $DD, $EF, $FA
	; 109
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $AE, $AF, $BA, $BB
	.byte $EA, $EB, $EE, $00
	.byte $FB, $FE, $FF, $00
	; 10A
	.byte $AA
	.byte $00, $89, $8A, $83
	.byte $00, $82, $83, $83
	.byte $00, $8B, $A2, $A3
	.byte $00, $A0, $F8, $A9
	; 10B
	.byte $AA
	.byte $8E, $8F, $83, $83
	.byte $A4, $A5, $B0, $B1
	.byte $A6, $A7, $B2, $B3
	.byte $AC, $F8, $B8, $B9
	; 10C
	.byte $AA
	.byte $9E, $9F, $CA, $CB
	.byte $B4, $B5, $E0, $E1
	.byte $83, $B7, $E2, $83
	.byte $F8, $BD, $E8, $E9
	; 10D
	.byte $AA
	.byte $CE, $CF, $DA, $DB
	.byte $E4, $E5, $F0, $F1
	.byte $E6, $E7, $83, $F3
	.byte $EC, $ED, $F8, $F9
	; 10E
	.byte $AA
	.byte $DE, $83, $91, $9A
	.byte $F4, $F5, $AD, $B6
	.byte $F6, $83, $C7, $83
	.byte $FC, $FD, $DF, $E3
	; 10F
	.byte $AA
	.byte $9B, $95, $00, $00
	.byte $BC, $C5, $00, $00
	.byte $CC, $CD, $00, $00
	.byte $F2, $F7, $00, $00
	; 110
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $16, $10, $0D, $30
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 111
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $31, $00, $23, $27
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 112
	.byte $AA
	.byte $34, $00, $00, $00
	.byte $25, $27, $23, $24
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 113
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $26, $21, $22, $27
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 114
	.byte $AA
	.byte $0C, $0B, $05, $0C
	.byte $00, $00, $00, $00
	.byte $05, $10, $0F, $14
	.byte $00, $00, $00, $00
	; 115
	.byte $AA
	.byte $00, $10, $08, $08
	.byte $00, $00, $00, $00
	.byte $0B, $0F, $15, $07
	.byte $00, $00, $00, $00
	; 116
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $02, $00, $17
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $14
	; 117
	.byte $AA
	.byte $36, $00, $00, $00
	.byte $10, $0B, $05, $0A
	.byte $00, $00, $00, $00
	.byte $16, $00, $14, $10
	; 118
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $0B, $00, $14, $03
	.byte $00, $00, $00, $00
	.byte $0C, $17, $10, $00
	; 119
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $0C, $03, $0A, $03
	.byte $00, $00, $00, $00
	.byte $05, $0A, $35, $18
	; 11A
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $13, $0A, $0B, $33
	.byte $00, $00, $00, $00
	.byte $19, $33, $14, $13
	; 11B
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $13, $0A, $15, $07
	.byte $00, $00, $00, $00
	.byte $15, $05, $0A, $0B
	; 11C
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $0B, $13, $0A, $03
	.byte $00, $00, $00, $00
	.byte $06, $03, $00, $11
	; 11D
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $12, $10, $00, $00
	; 11E
	.byte $0A
	.byte $00, $00, $00, $00
	.byte $00, $00, $02, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 11F
	.byte $0F
	.byte $00, $00, $00, $00
	.byte $14, $07, $05, $0E
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 120
	.byte $0B
	.byte $00, $00, $00, $00
	.byte $10, $00, $18, $20
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 121
	.byte $0A
	.byte $00, $00, $00, $00
	.byte $20, $10, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 122
	.byte $00
	.byte $00, $28, $29, $2C
	.byte $00, $2A, $2B, $2E
	.byte $00, $00, $00, $00
	.byte $00, $00, $14, $0A
	; 123
	.byte $00
	.byte $2D, $38, $37, $39
	.byte $2F, $3A, $2A, $3B
	.byte $00, $00, $00, $00
	.byte $07, $03, $14, $07
	; 124
	.byte $00
	.byte $3C, $3D, $00, $00
	.byte $3E, $3F, $00, $00
	.byte $00, $00, $00, $00
	.byte $12, $00, $00, $00
	; 125
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $23, $27
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 126
	.byte $FF
	.byte $F9, $F9, $F9, $F9
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 127
	.byte $FF
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $FB, $FB, $FB, $FB
	; 128
	.byte $00
	.byte $1D, $1F, $1F, $35
	.byte $1F, $1F, $1F, $35
	.byte $1F, $1F, $1F, $35
	.byte $1F, $1F, $1F, $35
	; 129
	.byte $00
	.byte $3F, $35, $3D, $3D
	.byte $3F, $35, $3D, $3F
	.byte $3F, $35, $3D, $3F
	.byte $3F, $35, $3D, $3F
	; 12A
	.byte $00
	.byte $3D, $3F, $35, $3D
	.byte $3D, $3F, $35, $3D
	.byte $3D, $3F, $35, $3F
	.byte $3D, $3F, $35, $3F
	; 12B
	.byte $00
	.byte $1F, $1D, $1D, $1F
	.byte $1F, $1D, $1F, $1F
	.byte $1F, $1D, $1F, $1F
	.byte $1F, $1F, $1F, $1F
	; 12C
	.byte $00
	.byte $1F, $1F, $1D, $35
	.byte $1D, $1F, $1D, $35
	.byte $1D, $1F, $1D, $35
	.byte $1D, $1D, $1D, $35
	; 12D
	.byte $00
	.byte $3F, $35, $3F, $3F
	.byte $3F, $35, $3F, $3F
	.byte $3F, $35, $3F, $3F
	.byte $3F, $35, $3F, $3F
	; 12E
	.byte $00
	.byte $3D, $3F, $35, $3F
	.byte $3D, $3F, $35, $3F
	.byte $3D, $3D, $35, $3F
	.byte $3D, $3D, $35, $3F
	; 12F
	.byte $00
	.byte $1F, $1F, $1F, $1F
	.byte $1F, $1F, $1D, $1F
	.byte $1F, $1F, $1D, $1F
	.byte $1F, $1F, $1D, $1D
	; 130
	.byte $00
	.byte $1F, $1D, $1F, $35
	.byte $1F, $1D, $1F, $35
	.byte $1F, $1D, $1F, $35
	.byte $1F, $1D, $1F, $35
	; 131
	.byte $00
	.byte $3F, $35, $3F, $3D
	.byte $3F, $35, $3F, $3D
	.byte $3F, $35, $3F, $3D
	.byte $3F, $35, $3D, $3D
	; 132
	.byte $00
	.byte $3F, $3D, $35, $3F
	.byte $3F, $3D, $35, $3F
	.byte $3F, $3D, $35, $3D
	.byte $3F, $3D, $35, $3D
	; 133
	.byte $00
	.byte $1F, $1F, $1F, $1D
	.byte $1F, $1D, $1F, $1D
	.byte $1F, $1D, $1F, $1D
	.byte $1F, $1D, $1F, $1D
	; 134
	.byte $00
	.byte $1F, $1F, $1F, $35
	.byte $1D, $1F, $1F, $35
	.byte $1F, $1D, $1F, $35
	.byte $1F, $1D, $1F, $35
	; 135
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $0E, $03, $0F, $00
	; 136
	.byte $55
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $7D
	.byte $00, $00, $00, $00
	; 137
	.byte $55
	.byte $00, $00, $00, $00
	.byte $60, $61, $64, $65
	.byte $62, $63, $66, $67
	.byte $00, $00, $00, $00
	; 138
	.byte $55
	.byte $00, $00, $00, $00
	.byte $70, $60, $71, $74
	.byte $72, $62, $73, $76
	.byte $00, $00, $00, $00
	; 139
	.byte $55
	.byte $00, $00, $00, $00
	.byte $75, $68, $69, $6C
	.byte $77, $6A, $6B, $6E
	.byte $00, $00, $00, $00
	; 13A
	.byte $55
	.byte $00, $00, $00, $00
	.byte $6D, $00, $00, $00
	.byte $6F, $00, $00, $00
	.byte $00, $00, $00, $00
	; 13B
	.byte $A2
	.byte $01, $B2, $00, $00
	.byte $01, $B8, $00, $B4
	.byte $01, $BA, $00, $B6
	.byte $01, $01, $F8, $B3
	; 13C
	.byte $00
	.byte $00, $BD, $00, $C0
	.byte $B5, $BF, $C1, $C2
	.byte $B7, $03, $03, $03
	.byte $03, $03, $03, $03
	; 13D
	.byte $00
	.byte $00, $C0, $00, $C0
	.byte $C3, $C2, $C3, $E2
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	; 13E
	.byte $00
	.byte $C0, $C5, $C5, $00
	.byte $3C, $C6, $C7, $00
	.byte $03, $02, $02, $E9
	.byte $03, $03, $02, $EB
	; 13F
	.byte $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $D0, $D1, $00, $00
	.byte $D2, $D3, $00, $00
	; 140
	.byte $AA
	.byte $D4, $01, $01, $01
	.byte $D6, $D7, $01, $01
	.byte $00, $00, $D5, $01
	.byte $00, $DE, $DC, $DD
	; 141
	.byte $AA
	.byte $01, $01, $01, $B9
	.byte $01, $01, $01, $BB
	.byte $01, $01, $01, $BC
	.byte $01, $01, $01, $BE
	; 142
	.byte $FF
	.byte $03, $C8, $C9, $E3
	.byte $03, $CA, $CB, $E6
	.byte $03, $E0, $E1, $03
	.byte $03, $03, $03, $03
	; 143
	.byte $00
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	.byte $E8, $03, $03, $03
	.byte $EA, $03, $03, $03
	; 144
	.byte $FF
	.byte $CC, $CD, $E7, $EC
	.byte $CE, $CF, $C4, $EE
	.byte $E4, $E5, $02, $02
	.byte $03, $03, $02, $02
	; 145
	.byte $00
	.byte $D8, $D9, $00, $00
	.byte $DA, $DB, $00, $00
	.byte $F0, $F1, $00, $00
	.byte $F2, $F3, $00, $00
	; 146
	.byte $AA
	.byte $00, $00, $00, $DF
	.byte $00, $F4, $F5, $01
	.byte $F6, $F7, $01, $01
	.byte $ED, $01, $01, $01
	; 147
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $18, $20
	.byte $00, $00, $00, $00
	; 148
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $20, $10, $00, $00
	.byte $00, $00, $00, $00
	; 149
	.byte $C0
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $14, $07
	.byte $00, $00, $00, $00
	; 14A
	.byte $FA
	.byte $00, $00, $11, $12
	.byte $00, $00, $00, $00
	.byte $05, $0E, $10, $00
	.byte $00, $00, $00, $00
	; 14B
	.byte $AA
	.byte $07, $13, $07, $0F
	.byte $00, $00, $00, $00
	.byte $05, $03, $11, $27
	.byte $00, $00, $00, $00
	; 14C
	.byte $AA
	.byte $14, $07, $06, $00
	.byte $00, $00, $00, $00
	.byte $14, $13, $15, $04
	.byte $00, $00, $00, $00
	; 14D
	.byte $AA
	.byte $04, $17, $00, $00
	.byte $00, $00, $00, $00
	.byte $03, $00, $14, $07
	.byte $00, $00, $00, $00
	; 14E
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $03, $0E, $00, $00
	.byte $00, $00, $00, $00
	; 14F
	.byte $45
	.byte $01, $01, $01, $01
	.byte $04, $05, $10, $11
	.byte $06, $07, $12, $13
	.byte $0C, $0D, $18, $19
	; 150
	.byte $40
	.byte $01, $01, $01, $01
	.byte $01, $14, $15, $40
	.byte $01, $16, $17, $42
	.byte $01, $1C, $1D, $48
	; 151
	.byte $A0
	.byte $01, $34, $35, $01
	.byte $01, $36, $37, $01
	.byte $41, $3C, $3D, $01
	.byte $43, $3E, $3F, $01
	; 152
	.byte $55
	.byte $01, $01, $01, $01
	.byte $51, $05, $10, $11
	.byte $44, $45, $50, $13
	.byte $46, $47, $52, $53
	; 153
	.byte $BA
	.byte $0E, $0F, $1A, $1B
	.byte $03, $60, $61, $03
	.byte $24, $25, $03, $30
	.byte $26, $27, $03, $32
	; 154
	.byte $FE
	.byte $2E, $1E, $1F, $4A
	.byte $62, $63, $03, $03
	.byte $31, $2C, $2D, $38
	.byte $33, $02, $2F, $3A
	; 155
	.byte $AA
	.byte $03, $49, $01, $01
	.byte $03, $4B, $01, $68
	.byte $39, $01, $01, $69
	.byte $3B, $01, $6A, $6B
	; 156
	.byte $FE
	.byte $4C, $4D, $58, $59
	.byte $4E, $4F, $5A, $5B
	.byte $54, $03, $03, $55
	.byte $56, $03, $21, $57
	; 157
	.byte $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $5E, $5F, $20
	.byte $01, $74, $75, $22
	; 158
	.byte $40
	.byte $01, $01, $0A, $0B
	.byte $01, $64, $65, $70
	.byte $11, $66, $67, $72
	.byte $23, $6C, $6D, $78
	; 159
	.byte $00
	.byte $01, $01, $01, $01
	.byte $71, $01, $01, $01
	.byte $73, $01, $01, $01
	.byte $79, $01, $01, $01
	; 15A
	.byte $FA
	.byte $01, $76, $77, $28
	.byte $08, $7C, $7D, $2A
	.byte $24, $7E, $7F, $03
	.byte $26, $27, $03, $30
	; 15B
	.byte $FE
	.byte $29, $6E, $6F, $7A
	.byte $2B, $5C, $5D, $03
	.byte $62, $84, $85, $03
	.byte $31, $86, $87, $09
	; 15C
	.byte $AA
	.byte $7B, $01, $01, $01
	.byte $C8, $81, $01, $68
	.byte $82, $83, $01, $69
	.byte $88, $89, $6A, $6B
	; 15D
	.byte $AA
	.byte $80, $81, $03, $03
	.byte $82, $03, $03, $03
	.byte $88, $03, $03, $03
	.byte $A8, $03, $03, $03
	; 15E
	.byte $CC
	.byte $01, $84, $85, $90
	.byte $83, $86, $87, $92
	.byte $89, $B1, $03, $03
	.byte $8B, $02, $03, $03
	; 15F
	.byte $FF
	.byte $91, $94, $95, $8C
	.byte $93, $96, $97, $8E
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	; 160
	.byte $BB
	.byte $8D, $98, $02, $99
	.byte $8F, $9A, $B3, $9B
	.byte $03, $A4, $A5, $B0
	.byte $03, $A6, $A7, $01
	; 161
	.byte $AA
	.byte $A0, $03, $03, $03
	.byte $A2, $03, $03, $03
	.byte $A8, $AE, $03, $03
	.byte $AA, $AB, $AE, $03
	; 162
	.byte $00
	.byte $A1, $02, $02, $03
	.byte $A3, $02, $B2, $03
	.byte $A9, $02, $B8, $03
	.byte $AF, $8A, $BA, $03
	; 163
	.byte $00
	.byte $03, $03, $AC, $03
	.byte $03, $03, $AD, $03
	.byte $03, $03, $03, $03
	.byte $03, $03, $03, $03
	; 164
	.byte $BB
	.byte $03, $9C, $9D, $01
	.byte $03, $9E, $9F, $01
	.byte $B9, $B4, $B5, $01
	.byte $BB, $B6, $B7, $01
	; 165
	.byte $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $FF, $FF, $FF, $FF
	; 166
	.byte $AA
	.byte $F2, $F2, $F2, $F2
	.byte $F2, $F2, $F2, $F2
	.byte $F2, $F2, $F2, $F2
	.byte $F2, $F2, $F2, $F2
	; 167
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	; 168
	.byte $AA
	.byte $0B, $0C, $0D, $1A
	.byte $21, $0E, $0F, $30
	.byte $23, $24, $25, $32
	.byte $29, $26, $27, $2B
	; 169
	.byte $AA
	.byte $09, $06, $07, $18
	.byte $0B, $0C, $0D, $1A
	.byte $21, $0E, $0F, $30
	.byte $23, $24, $25, $32
	; 16A
	.byte $AA
	.byte $03, $04, $05, $12
	.byte $09, $06, $07, $18
	.byte $0B, $0C, $0D, $1A
	.byte $21, $0E, $0F, $30
	; 16B
	.byte $AA
	.byte $22, $28, $2A, $10
	.byte $03, $04, $05, $12
	.byte $09, $06, $07, $18
	.byte $0B, $0C, $0D, $1A
	; 16C
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $22, $28, $2A, $10
	.byte $03, $04, $05, $12
	.byte $09, $06, $07, $18
	; 16D
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $22, $28, $2A, $10
	.byte $03, $04, $05, $12
	; 16E
	.byte $AA
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $01, $01, $01, $01
	.byte $22, $28, $2A, $10
	; 16F
	.byte $AA
	.byte $13, $10, $15, $0F
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 170
	.byte $AA
	.byte $06, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	; 171
	.byte $FF
	.byte $00, $00, $F9, $F6
	.byte $00, $00, $F7, $00
	.byte $00, $00, $F7, $00
	.byte $00, $00, $F7, $00
	; 172
	.byte $FF
	.byte $F6, $F6, $F6, $F6
	.byte $FD, $FD, $FF, $00
	.byte $FD, $00, $FF, $00
	.byte $FD, $FD, $FF, $00
	; 173
	.byte $FF
	.byte $F6, $F6, $F6, $F6
	.byte $00, $FF, $FF, $FF
	.byte $00, $FF, $00, $FD
	.byte $00, $FF, $FD, $FF
	; 174
	.byte $FF
	.byte $F6, $FC, $00, $00
	.byte $00, $F7, $00, $00
	.byte $00, $F7, $00, $00
	.byte $00, $F7, $00, $00
	; 175
	.byte $FF
	.byte $00, $00, $F7, $00
	.byte $00, $00, $F7, $00
	.byte $00, $00, $FB, $F6
	.byte $00, $00, $00, $00
	; 176
	.byte $FF
	.byte $FD, $00, $FD, $00
	.byte $FD, $FD, $FF, $00
	.byte $F6, $F6, $F6, $F6
	.byte $00, $00, $00, $00
	; 177
	.byte $FF
	.byte $00, $FD, $00, $FF
	.byte $00, $FF, $FF, $FF
	.byte $F6, $F6, $F6, $F6
	.byte $00, $00, $00, $00
	; 178
	.byte $FF
	.byte $00, $F7, $00, $00
	.byte $00, $F7, $00, $00
	.byte $F6, $FE, $00, $00
	.byte $00, $00, $00, $00
	; 179
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $13, $15, $11
	; 17A
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $07, $12, $00, $0A
	; 17B
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $0B, $14, $00, $13
	; 17C
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $10, $05, $05, $07
	; 17D
	.byte $AA
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $12, $00, $12, $10
	; 17E
	.byte $00
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
	; 17F
	.byte $00
	.byte $FC, $FE, $FE, $FE
	.byte $FE, $FC, $FE, $FE
	.byte $FE, $FE, $FC, $FE
	.byte $FE, $FE, $FE, $FC
	; 180
	.byte $00
	.byte $FE, $FE, $FE, $FD
	.byte $FE, $FE, $FD, $FE
	.byte $FE, $FD, $FE, $FE
	.byte $FD, $FE, $FE, $FE
	; 181
	.byte $00
	.byte $00, $00, $00, $00
	.byte $00, $00, $00, $00
	.byte $FE, $FE, $FE, $FE
	.byte $FE, $FE, $FE, $FE
