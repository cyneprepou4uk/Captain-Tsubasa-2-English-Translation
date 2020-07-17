.segment "BANK_25"
.include "copy_bank_ram.inc"
; таблицы VS экрана


.export tbl_0x040003_vs_экран
tbl_0x040003_vs_экран:
	.word off_матч_01
	.word off_матч_02
	.word off_матч_03
	.word off_матч_04
	.word off_матч_05
	.word off_матч_06
	.word off_матч_07
	.word off_матч_08
	.word off_матч_09
	.word off_матч_10
	.word off_матч_11
	.word off_матч_12
	.word off_матч_13
	.word off_матч_14
	.word off_матч_15
	.word off_матч_16
	.word off_матч_17
	.word off_матч_18
	.word off_матч_19
	.word off_матч_20
	.word off_матч_21
	.word off_матч_22
	.word off_матч_23
	.word off_матч_24
	.word off_матч_25
	.word off_матч_26
	.word off_матч_27
	.word off_матч_28
	.word off_матч_29
	.word off_матч_30
	.word off_матч_31
	.word off_матч_32
	.word off_матч_33

off_матч_01:
; очистить nametable
	.byte $0D
; верхняя горизонтальная линия
	.byte $05
	.word $2185
	.byte $16
	.byte $8E
; центральная горизонтальная линия
	.byte $05
	.word $21E5
	.byte $16
	.byte $BA
; нижняя горизонтальная линия
	.byte $05
	.word $22E5
	.byte $16
	.byte $8E
; левая вертикальная линия
	.byte $04
	.word $21A4
	.byte $0A
	.byte $8F
; центральная вертикальная линия
	.byte $04
	.word $220F
	.byte $07
	.byte $BB
; правая вертикальная линия
	.byte $04
	.word $21BB
	.byte $0A
	.byte $8F
	
	.byte $00
	.word @углы
	
	.byte $00
	.word @текст
	
	.byte $0F



@углы:
; левый верхний угол
	.byte $01
	.word $2184
	.byte $90
; правый верхний угол
	.byte $01
	.word $219B
	.byte $91
; правый нижний угол
	.byte $01
	.word $22E4
	.byte $92
; левый нижний угол
	.byte $41
	.word $22FB
	.byte $93



@текст:
	.byte $09
	.word $20EC
	.text "Episode 1"
	
	.byte $1C
	.word $2122
	.byte $7B
	.text "#10,Sao Paulo's Lucky Star"
	.byte $7B
	
	.byte $0F
	.word $21C9
	.text "Rio Cup, Brazil"
	
	.byte $04
	.word $2247
	.text "1/32"
	
	.byte $05
	.word $2287
	.text "final"
	
	.byte $09
	.word $2230
	.text "Sao Paulo"
	
	.byte $02
	.word $2274
	.text "VS"
	
	.byte $4A
	.word $22B0
	.text "Fluminence"




off_матч_02:
off_матч_03:
off_матч_04:
off_матч_05:
off_матч_06:
off_матч_07:
off_матч_08:
off_матч_09:
off_матч_10:
off_матч_11:
off_матч_12:
off_матч_13:
off_матч_14:
off_матч_15:
off_матч_16:
off_матч_17:
off_матч_18:
off_матч_19:
off_матч_20:
off_матч_21:
off_матч_22:
off_матч_23:
off_матч_24:
off_матч_25:
off_матч_26:
off_матч_27:
off_матч_28:
off_матч_29:
off_матч_30:
off_матч_31:
off_матч_32:
off_матч_33:
	.byte $0D
	
	.byte $05
	.word $2145
	.byte $16
	.byte $89
	
	.byte $05
	.word $21A5
	.byte $16
	.byte $BA
	
	.byte $05
	.word $22A5
	.byte $16
	.byte $89
	
	.byte $04
	.word $2164
	.byte $0A
	.byte $8A
	
	.byte $04
	.word $217B
	.byte $0A
	.byte $8A
	
	.byte $04
	.word $21CF
	.byte $07
	.byte $BB
	
	.byte $00
	.word off_B328
	
	.byte $0F



off_B328:
	.byte $01
	.word $2144
	.byte $88
	.byte $01
	.word $215B
	.byte $90
	.byte $01
	.word $22A4
	.byte $8E
	.byte $01
	.word $22BB
	.byte $93
	.byte $42
	.word $2233
	.byte $91
	.byte $8F
