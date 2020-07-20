.segment "BANK_26"
.include "copy_bank_ram.inc"
; данные катсцен
; поинтеры в 0x000485

.word off_A020_00_самая_первая_заставка

off_A020_00_самая_первая_заставка:
	.byte $E8
	.byte $01
	.byte con_катсцена_задний_фон
	.byte $00
	.byte $FB
	.byte $01
	.byte $8D
	.byte $E9
	.byte con_катсцена_задержка + 7
	.byte $EA
	.byte con_катсцена_номер_звука
	.byte $58
	.byte con_катсцена_задержка + 4
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $00
	.byte con_катсцена_задний_фон
	.byte $01
	.byte $FB
	.byte $01
	.byte $6E
	.byte $F8
	.byte $0A
	.byte $F3
	.byte $00
	.byte $F5
	.byte $00
	.byte con_катсцена_номер_звука
	.byte $68
	.byte con_катсцена_скорость_текста
	.byte $02
	.text "So fast!"
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $04
	.text " Closing"
	.byte con_катсцена_новая_строка
	.text "down on Brazil's goal"
	.byte con_катсцена_новая_строка
	.text "is Japan's captain,"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_новая_строка
	.text "Ozora Tsubasa!"
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $E8
	.byte $01
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $03
	.byte $FB
	.byte $01
	.byte $75
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.text " Ozora Tsubasa"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.text "Sao Paulo FC,Brazil"
	.byte con_катсцена_новая_строка
	.text "  Midfielder"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte con_катсцена_задний_фон
	.byte $08
	.byte $FB
	.byte $02
	.byte $C1
	.byte $82
	.byte $F3
	.byte $00
	.byte $F5
	.byte $10
	.byte con_катсцена_номер_звука
	.byte $28
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $28
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $28
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $0E
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $05
	.byte con_катсцена_скорость_текста
	.byte $04
	.text "Hyuga"
	.byte con_катсцена_номер_звука
	.byte $6B
	.text " throws down"
	.byte con_катсцена_новая_строка
	.text "with his powerful"
	.byte con_катсцена_новая_строка
	.text "Tiger Tackle!!"
	.byte con_катсцена_задержка + 2
	.text " He's"
	.byte con_катсцена_новая_строка
	.text "like a wild beast!"
	.byte con_катсцена_задержка + 4
	.byte con_катсцена_номер_звука
	.byte $02
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $07
	.byte $FB
	.byte $01
	.byte $76
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.text " Hyuga Kojiro"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.text "Toho Academy,Japan"
	.byte con_катсцена_новая_строка
	.text " Center foward"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $02
	.byte con_катсцена_задний_фон
	.byte $09
	.byte $FB
	.byte $01
	.byte $84
	.byte $F3
	.byte $00
	.byte $F5
	.byte $01
	.byte con_катсцена_номер_звука
	.byte $0E
	.byte con_катсцена_скорость_текста
	.byte $04
	.text "Wow,"
	.byte con_катсцена_задержка + 2
	.text "look"
	.byte con_катсцена_номер_звука
	.byte $09
	.text " at that"
	.byte con_катсцена_новая_строка
	.text "Golden Combo!"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_номер_звука
	.byte $30
	.text " Their"
	.byte con_катсцена_новая_строка
	.text "super Twin Shot!"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_новая_строка
	.text "Perfect coordination!"
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $03
	.byte $FB
	.byte $01
	.byte $77
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.text " Misaki Tarou"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 1
	.text "Nankatsu High,Japan"
	.byte con_катсцена_новая_строка
	.text "  Midfielder"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte con_катсцена_вид_окна_текста
	.byte $01
	.byte $EC
	.byte $04
	.byte con_катсцена_задний_фон
	.byte $0A
	.byte $FB
	.byte $03
	.byte $C0
	.byte $A2
	.byte $7D
	.byte $F3
	.byte $00
	.byte con_катсцена_номер_звука
	.byte $07
	.byte con_катсцена_скорость_текста
	.byte $04
	.text "A one-hand"
	.byte con_катсцена_номер_звука
	.byte $12
	.text "ed save!"
	.byte con_катсцена_задержка + 2
	.byte con_катсцена_новая_строка
	.text "As expected from"
	.byte con_катсцена_новая_строка
	.text "Wakabyashi,"
	.byte con_катсцена_задержка + 2
	.text "Japan's"
	.byte con_катсцена_новая_строка
	.text "own Guardian Deity!"
	.byte con_катсцена_задержка + 4
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FA
	.byte $0B
	.byte $FB
	.byte $01
	.byte $7C
	.byte $F3
	.byte $00
	.byte con_катсцена_задержка + 3
	.byte con_катсцена_скорость_текста
	.byte $01
	.byte con_смещение_текста
	.text "Wakabayashi Genzo"
	.byte con_катсцена_новая_строка
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 2
	.text "Hamburger SV,Germany"
	.byte con_катсцена_новая_строка
	.text "  Goalkeeper"
	.byte con_катсцена_задержка + 6
	.byte $EA
	.byte con_катсцена_завершить_текст
	.byte $EC
	.byte $FF
	.byte $EE
	.byte $FB
	.byte $01
	.byte $0D
	.byte con_катсцена_скорость_текста
	.byte $00
	.byte con_смещение_текста + 5
	.text "Facing down our strongest"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "foe,Brazil,our dream and"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "goal:to be #1 in the world."
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "We stand as one team,"
	.byte con_катсцена_новая_строка
	.byte con_смещение_текста + 5
	.text "awaiting the final battle."
	.byte $E9
	.byte con_катсцена_задержка + 7
	.byte con_катсцена_задержка + 7
	.byte $F4
	.byte $05
	.byte con_катсцена_завершить_текст
	.byte $F8
	.byte $00
	.byte con_катсцена_прыжок
	.word off_A020_00_самая_первая_заставка
