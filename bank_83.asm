.segment "BANK_83"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x006010-0x00800F



.out .sprintf("Free bytes in bank 83: 0x%04X [%d]", ($E000 - *), ($E000 - *))



