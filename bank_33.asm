.segment "BANK_33"
.include "copy_bank_ram.inc"

.export sub_0x40005_таблица_слов
sub_0x40005_таблица_слов:
    TYA
    BNE @это_не_клон
    LDA #$EB
    STA ram_0030
    LDA #$05
    STA ram_0031
    RTS
@это_не_клон:
    LDY #< tbl_F329_таблица_сжатых_слов
    STY ram_0030
    LDY #> tbl_F329_таблица_сжатых_слов
    STY ram_0031
    ASL
    BCC bra_F31C_не_увеличивать_старший_байт
    INC ram_0031
bra_F31C_не_увеличивать_старший_байт:
    TAY
    LDA (ram_0030),Y
    PHA
    INY
    LDA (ram_0030),Y
    STA ram_0031
    PLA
    STA ram_0030
    LDY #$00
@цикл_копирования_текста:
    LDA (ram_0030),Y
    STA $7FE0,Y
    INY
    CMP #$FC
    BNE @цикл_копирования_текста
    LDA #$E0
    STA ram_0030
    LDA #$7F
    STA ram_0031
    RTS



tbl_F329_таблица_сжатых_слов:
; таблица с именами игроков, командами, спешалами и сокращений текста
- D - I - 0x03F339 FF:F329: EB 05     .word ram_имя_клона
- D - I - 0x03F33B FF:F32B: 09 F5     .word off_F509_01_цубаса
- D - I - 0x03F33D FF:F32D: 0D F5     .word off_F50D_02_ренато
- D - I - 0x03F33F FF:F32F: 12 F5     .word off_F512_03_лима
- D - I - 0x03F341 FF:F331: 15 F5     .word off_F515_04_марини
- D - I - 0x03F343 FF:F333: 1A F5     .word off_F51A_05_амарал
- D - I - 0x03F345 FF:F335: 1F F5     .word off_F51F_06_дотор
- D - I - 0x03F347 FF:F337: 24 F5     .word off_F524_07_батиста
- D - I - 0x03F349 FF:F339: 29 F5     .word off_F529_08_тахамата
- D - I - 0x03F34B FF:F33B: 2E F5     .word off_F52E_09_бабинтон
- D - I - 0x03F34D FF:F33D: 34 F5     .word off_F534_0A_гил
- D - I - 0x03F34F FF:F33F: 37 F5     .word off_F537_0B_платон
- D - I - 0x03F351 FF:F341: 3C F5     .word off_F53C_0C_урабэ
- D - I - 0x03F353 FF:F343: 40 F5     .word off_F540_0D_кишида
- D - I - 0x03F355 FF:F345: 44 F5     .word off_F544_0E_накаяма
- D - I - 0x03F357 FF:F347: 49 F5     .word off_F549_0F_морисаки
- D - I - 0x03F359 FF:F349: 4E F5     .word off_F54E_10_такасуги
- D - I - 0x03F35B FF:F34B: 53 F5     .word off_F553_11_мисаки
- D - I - 0x03F35D FF:F34D: 57 F5     .word off_F557_12_изава
- D - I - 0x03F35F FF:F34F: 5B F5     .word off_F55B_13_таки
- D - I - 0x03F361 FF:F351: 5E F5     .word off_F55E_14_ишизаки
- D - I - 0x03F363 FF:F353: 63 F5     .word off_F563_15_нитта
- D - I - 0x03F365 FF:F355: 67 F5     .word off_F567_16_кисуги
- D - I - 0x03F367 FF:F357: 6B F5     .word off_F56B_17_масао
- D - I - 0x03F369 FF:F359: 6F F5     .word off_F56F_18_казуо
- D - I - 0x03F36B FF:F35B: 73 F5     .word off_F573_19_сано
- D - I - 0x03F36D FF:F35D: 76 F5     .word off_F576_1A_хюга
- D - I - 0x03F36F FF:F35F: 7B F5     .word off_F57B_1B_сода
- D - I - 0x03F371 FF:F361: 7F F5     .word off_F57F_1C_джито
- D - I - 0x03F373 FF:F363: 83 F5     .word off_F583_1D_мацуяма
- D - I - 0x03F375 FF:F365: 88 F5     .word off_F588_1E_соримачи
- D - I - 0x03F377 FF:F367: 8D F5     .word off_F58D_1F_савада
- D - I - 0x03F379 FF:F369: 91 F5     .word off_F591_20_мисуги
- D - I - 0x03F37B FF:F36B: 95 F5     .word off_F595_21_вакабаяши
- D - I - 0x03F37D FF:F36D: 9B F5     .word off_F59B_22_вакашимазу
- D - I - 0x03F37F FF:F36F: A1 F5     .word off_F5A1_23_сатрустеги
- D - I - 0x03F381 FF:F371: A8 F5     .word off_F5A8_24_рибейро
- D - I - 0x03F383 FF:F373: AD F5     .word off_F5AD_25_данил_сильва
- D - I - 0x03F385 FF:F375: B3 F5     .word off_F5B3_26_меон
- D - I - 0x03F387 FF:F377: B7 F5     .word off_F5B7_27_тониньо
- D - I - 0x03F389 FF:F379: BD F5     .word off_F5BD_28_ней
- D - I - 0x03F38B FF:F37B: C0 F5     .word off_F5C0_29_загалло
- D - I - 0x03F38D FF:F37D: C4 F5     .word off_F5C4_2A_дирсеу
- D - I - 0x03F38F FF:F37F: CA F5     .word off_F5CA_2B_карлос
- D - I - 0x03F391 FF:F381: CF F5     .word off_F5CF_2C_сантамария
- D - I - 0x03F393 FF:F383: D6 F5     .word off_F5D6_2D_джеторио
- D - I - 0x03F395 FF:F385: DD F5     .word off_F5DD_2E_джито
- D - I - 0x03F397 FF:F387: E1 F5     .word off_F5E1_2F_сано
- D - I - 0x03F399 FF:F389: E4 F5     .word off_F5E4_30_масао
- D - I - 0x03F39B FF:F38B: E8 F5     .word off_F5E8_31_казуо
- D - I - 0x03F39D FF:F38D: EC F5     .word off_F5EC_32_сода
- D - I - 0x03F39F FF:F38F: F0 F5     .word off_F5F0_33_наканиши
- D - I - 0x03F3A1 FF:F391: F5 F5     .word off_F5F5_34_мисуги
- D - I - 0x03F3A3 FF:F393: F9 F5     .word off_F5F9_35_мацуяма
- D - I - 0x03F3A5 FF:F395: FE F5     .word off_F5FE_36_хюга
- D - I - 0x03F3A7 FF:F397: 03 F6     .word off_F603_37_соримачи
- D - I - 0x03F3A9 FF:F399: 08 F6     .word off_F608_38_савада
- D - I - 0x03F3AB FF:F39B: 0C F6     .word off_F60C_39_вакашимазу
- D - I - 0x03F3AD FF:F39D: 12 F6     .word off_F612_3A_рампион
- D - I - 0x03F3AF FF:F39F: 18 F6     .word off_F618_3B_викторино
- D - I - 0x03F3B1 FF:F3A1: 1F F6     .word off_F61F_3C_данил_сильва
- D - I - 0x03F3B3 FF:F3A3: 25 F6     .word off_F625_3D_капельман
- D - I - 0x03F3B5 FF:F3A5: 2B F6     .word off_F62B_3E_кальц
- D - I - 0x03F3B7 FF:F3A7: 2F F6     .word off_F62F_3F_метза
- D - I - 0x03F3B9 FF:F3A9: 34 F6     .word off_F634_40_вакабаяши
- D - I - 0x03F3BB FF:F3AB: 3A F6     .word off_F63A_41_хюга
- D - I - 0x03F3BD FF:F3AD: 3F F6     .word off_F63F_42_нитта
- D - I - 0x03F3BF FF:F3AF: 43 F6     .word off_F643_43_сано
- D - I - 0x03F3C1 FF:F3B1: 46 F6     .word off_F646_44_мисаки
- D - I - 0x03F3C3 FF:F3B3: 4A F6     .word off_F64A_45_мисуги
- D - I - 0x03F3C5 FF:F3B5: 4E F6     .word off_F64E_46_масао
- D - I - 0x03F3C7 FF:F3B7: 52 F6     .word off_F652_47_казуо
- D - I - 0x03F3C9 FF:F3B9: 56 F6     .word off_F656_48_джито
- D - I - 0x03F3CB FF:F3BB: 5A F6     .word off_F65A_49_ишизаки
- D - I - 0x03F3CD FF:F3BD: 5F F6     .word off_F65F_4A_сода
- D - I - 0x03F3CF FF:F3BF: 63 F6     .word off_F663_4B_мацуяма
- D - I - 0x03F3D1 FF:F3C1: 68 F6     .word off_F668_4C_вакашимазу
- D - I - 0x03F3D3 FF:F3C3: 6E F6     .word off_F66E_4D_ли_хан
- D - I - 0x03F3D5 FF:F3C5: 74 F6     .word off_F674_4E_ли_банкун
- D - I - 0x03F3D7 FF:F3C7: 7B F6     .word off_F67B_4F_ша
- D - I - 0x03F3D9 FF:F3C9: 7E F6     .word off_F67E_50_ким
- D - I - 0x03F3DB FF:F3CB: 81 F6     .word off_F681_51_мачер
- D - I - 0x03F3DD FF:F3CD: 86 F6     .word off_F686_52_дзажик
- D - I - 0x03F3DF FF:F3CF: 8C F6     .word off_F68C_53_лоримар
- D - I - 0x03F3E1 FF:F3D1: 91 F6     .word off_F691_54_робсон
- D - I - 0x03F3E3 FF:F3D3: 96 F6     .word off_F696_55_беляев
- D - I - 0x03F3E5 FF:F3D5: 9B F6     .word off_F69B_56_рашин
- D - I - 0x03F3E7 FF:F3D7: 9F F6     .word off_F69F_57_наполеон
- D - I - 0x03F3E9 FF:F3D9: A5 F6     .word off_F6A5_58_пьер
- D - I - 0x03F3EB FF:F3DB: AA F6     .word off_F6AA_59_эспана
- D - I - 0x03F3ED FF:F3DD: B1 F6     .word off_F6B1_5A_рампион
- D - I - 0x03F3EF FF:F3DF: B7 F6     .word off_F6B7_5B_эрнандес
- D - I - 0x03F3F1 FF:F3E1: BE F6     .word off_F6BE_5C_ислас
- D - I - 0x03F3F3 FF:F3E3: C3 F6     .word off_F6C3_5D_либута
- D - I - 0x03F3F5 FF:F3E5: C7 F6     .word off_F6C7_5E_паскаль
- D - I - 0x03F3F7 FF:F3E7: CC F6     .word off_F6CC_5F_сатрустеги
- D - I - 0x03F3F9 FF:F3E9: D3 F6     .word off_F6D3_60_диас
- D - I - 0x03F3FB FF:F3EB: D8 F6     .word off_F6D8_61_бабинтон
- D - I - 0x03F3FD FF:F3ED: DE F6     .word off_F6DE_62_гальван
- D - I - 0x03F3FF FF:F3EF: E3 F6     .word off_F6E3_63_шнайдер
- D - I - 0x03F401 FF:F3F1: EA F6     .word off_F6EA_64_маргус
- D - I - 0x03F403 FF:F3F3: EF F6     .word off_F6EF_65_кальц
- D - I - 0x03F405 FF:F3F5: F3 F6     .word off_F6F3_66_метза
- D - I - 0x03F407 FF:F3F7: F8 F6     .word off_F6F8_67_шестер
- D - I - 0x03F409 FF:F3F9: FE F6     .word off_F6FE_68_капельман
- D - I - 0x03F40B FF:F3FB: 04 F7     .word off_F704_69_мюллер
- D - I - 0x03F40D FF:F3FD: 0A F7     .word off_F70A_6A_карлос
- D - I - 0x03F40F FF:F3FF: 0F F7     .word off_F70F_6B_загалло
- D - I - 0x03F411 FF:F401: 13 F7     .word off_F713_6C_рибейро
- D - I - 0x03F413 FF:F403: 18 F7     .word off_F718_6D_ней
- D - I - 0x03F415 FF:F405: 1B F7     .word off_F71B_6E_сантамария
- D - I - 0x03F417 FF:F407: 22 F7     .word off_F722_6F_тониньо
- D - I - 0x03F419 FF:F409: 28 F7     .word off_F728_70_дотор
- D - I - 0x03F41B FF:F40B: 2D F7     .word off_F72D_71_амарал
- D - I - 0x03F41D FF:F40D: 32 F7     .word off_F732_72_дирсеу
- D - I - 0x03F41F FF:F40F: 38 F7     .word off_F738_73_джеторио
- D - I - 0x03F421 FF:F411: 3F F7     .word off_F73F_74_гертис
- D - I - 0x03F423 FF:F413: 45 F7     .word off_F745_75_коимбра
- D - I - 0x03F425 FF:F415: 4B F7     .word off_F74B_76
- D - I - 0x03F427 FF:F417: 51 F7     .word off_F751_77
- D - I - 0x03F429 FF:F419: 56 F7     .word off_F756_78
- D - I - 0x03F42B FF:F41B: 5A F7     .word off_F75A_79
- D - I - 0x03F42D FF:F41D: 61 F7     .word off_F761_7A
- D - I - 0x03F42F FF:F41F: 69 F7     .word off_F769_7B
- D - I - 0x03F431 FF:F421: 6E F7     .word off_F76E_7C
- D - I - 0x03F433 FF:F423: 75 F7     .word off_F775_7D
- D - I - 0x03F435 FF:F425: 7A F7     .word off_F77A_7E
- D - I - 0x03F437 FF:F427: 80 F7     .word off_F780_7F
- D - I - 0x03F439 FF:F429: 84 F7     .word off_F784_80
- D - I - 0x03F43B FF:F42B: 88 F7     .word off_F788_81
- D - I - 0x03F43D FF:F42D: 8D F7     .word off_F78D_82
- D - I - 0x03F43F FF:F42F: 91 F7     .word off_F791_83
- D - I - 0x03F441 FF:F431: 95 F7     .word off_F795_84
- D - I - 0x03F443 FF:F433: 9A F7     .word off_F79A_85
- D - I - 0x03F445 FF:F435: 9E F7     .word off_F79E_86
- D - I - 0x03F447 FF:F437: A4 F7     .word off_F7A4_87
- D - I - 0x03F449 FF:F439: AB F7     .word off_F7AB_88
- D - I - 0x03F44B FF:F43B: AF F7     .word off_F7AF_89
- D - I - 0x03F44D FF:F43D: B3 F7     .word off_F7B3_8A
- D - I - 0x03F44F FF:F43F: B9 F7     .word off_F7B9_8B
- D - I - 0x03F451 FF:F441: BD F7     .word off_F7BD_8C
- D - I - 0x03F453 FF:F443: C5 F7     .word off_F7C5_8D
- D - I - 0x03F455 FF:F445: CD F7     .word off_F7CD_8E
- D - I - 0x03F457 FF:F447: D2 F7     .word off_F7D2_8F
- D - I - 0x03F459 FF:F449: DB F7     .word off_F7DB_90
- D - I - 0x03F45B FF:F44B: E1 F7     .word off_F7E1_91
- D - I - 0x03F45D FF:F44D: E8 F7     .word off_F7E8_92
- D - I - 0x03F45F FF:F44F: ED F7     .word off_F7ED_93
- D - I - 0x03F461 FF:F451: F2 F7     .word off_F7F2_94
- D - I - 0x03F463 FF:F453: F7 F7     .word off_F7F7_95
- D - I - 0x03F465 FF:F455: FC F7     .word off_F7FC_96
- D - I - 0x03F467 FF:F457: 01 F8     .word off_F801_97
- D - I - 0x03F469 FF:F459: 08 F8     .word off_F808_98
- D - I - 0x03F46B FF:F45B: 0E F8     .word off_F80E_99
- D - I - 0x03F46D FF:F45D: 13 F8     .word off_F813_9A
- D - I - 0x03F46F FF:F45F: 18 F8     .word off_F818_9B
- D - I - 0x03F471 FF:F461: 20 F8     .word off_F820_9C
- D - I - 0x03F473 FF:F463: 26 F8     .word off_F826_9D
- D - I - 0x03F475 FF:F465: 2F F8     .word off_F82F_9E
- D - I - 0x03F477 FF:F467: 3B F8     .word off_F83B_9F
- D - I - 0x03F479 FF:F469: 44 F8     .word off_F844_A0
- D - I - 0x03F47B FF:F46B: 50 F8     .word off_F850_A1
- D - I - 0x03F47D FF:F46D: 59 F8     .word off_F859_A2
- D - I - 0x03F47F FF:F46F: 64 F8     .word off_F864_A3
- D - I - 0x03F481 FF:F471: 6C F8     .word off_F86C_A4
- D - I - 0x03F483 FF:F473: 79 F8     .word off_F879_A5
- D - I - 0x03F485 FF:F475: 82 F8     .word off_F882_A6
- D - I - 0x03F487 FF:F477: 8B F8     .word off_F88B_A7
- D - I - 0x03F489 FF:F479: 97 F8     .word off_F897_A8
- D - I - 0x03F48B FF:F47B: A2 F8     .word off_F8A2_A9
- D - I - 0x03F48D FF:F47D: AE F8     .word off_F8AE_AA
- D - I - 0x03F48F FF:F47F: BC F8     .word off_F8BC_AB
- D - I - 0x03F491 FF:F481: C5 F8     .word off_F8C5_AC
- D - I - 0x03F493 FF:F483: CB F8     .word off_F8CB_AD
- D - I - 0x03F495 FF:F485: D6 F8     .word off_F8D6_AE
- D - I - 0x03F497 FF:F487: DE F8     .word off_F8DE_AF
- D - I - 0x03F499 FF:F489: E8 F8     .word off_F8E8_B0
- D - I - 0x03F49B FF:F48B: F2 F8     .word off_F8F2_B1
- D - I - 0x03F49D FF:F48D: FA F8     .word off_F8FA_B2
- D - I - 0x03F49F FF:F48F: 03 F9     .word off_F903_B3
- D - I - 0x03F4A1 FF:F491: 0D F9     .word off_F90D_B4
- D - I - 0x03F4A3 FF:F493: 16 F9     .word off_F916_B5
- D - I - 0x03F4A5 FF:F495: 20 F9     .word off_F920_B6
- - - - - 0x03F4A7 FF:F497: 2A F9     .word off_F92A_B7     ; unused
- D - I - 0x03F4A9 FF:F499: 32 F9     .word off_F932_B8
- D - I - 0x03F4AB FF:F49B: 3A F9     .word off_F93A_B9
- D - I - 0x03F4AD FF:F49D: 44 F9     .word off_F944_BA
- D - I - 0x03F4AF FF:F49F: 4D F9     .word off_F94D_BB
- D - I - 0x03F4B1 FF:F4A1: 57 F9     .word off_F957_BC
- D - I - 0x03F4B3 FF:F4A3: 5E F9     .word off_F95E_BD
- D - I - 0x03F4B5 FF:F4A5: 63 F9     .word off_F963_BE
- D - I - 0x03F4B7 FF:F4A7: 6A F9     .word off_F96A_BF
- D - I - 0x03F4B9 FF:F4A9: 74 F9     .word off_F974_C0
- D - I - 0x03F4BB FF:F4AB: 7D F9     .word off_F97D_C1
- D - I - 0x03F4BD FF:F4AD: 86 F9     .word off_F986_C2
- D - I - 0x03F4BF FF:F4AF: 8F F9     .word off_F98F_C3
- D - I - 0x03F4C1 FF:F4B1: 99 F9     .word off_F999_C4
- D - I - 0x03F4C3 FF:F4B3: 9C F9     .word off_F99C_C5
- D - I - 0x03F4C5 FF:F4B5: A3 F9     .word off_F9A3_C6
- D - I - 0x03F4C7 FF:F4B7: AA F9     .word off_F9AA_C7
- D - I - 0x03F4C9 FF:F4B9: B3 F9     .word off_F9B3_C8
- D - I - 0x03F4CB FF:F4BB: BC F9     .word off_F9BC_C9
- D - I - 0x03F4CD FF:F4BD: C5 F9     .word off_F9C5_CA
- D - I - 0x03F4CF FF:F4BF: CD F9     .word off_F9CD_CB
- - - - - 0x03F4D1 FF:F4C1: D6 F9     .word off_F9D6_CC     ; unused
- D - I - 0x03F4D3 FF:F4C3: E0 F9     .word off_F9E0_CD
- D - I - 0x03F4D5 FF:F4C5: E5 F9     .word off_F9E5_CE
- D - I - 0x03F4D7 FF:F4C7: EE F9     .word off_F9EE_CF
- D - I - 0x03F4D9 FF:F4C9: F8 F9     .word off_F9F8_D0
- D - I - 0x03F4DB FF:F4CB: 00 FA     .word off_FA00_D1
- D - I - 0x03F4DD FF:F4CD: 05 FA     .word off_FA05_D2
- D - I - 0x03F4DF FF:F4CF: 0F FA     .word off_FA0F_D3
- D - I - 0x03F4E1 FF:F4D1: 18 FA     .word off_FA18_D4
- D - I - 0x03F4E3 FF:F4D3: 20 FA     .word off_FA20_D5
- - - - - 0x03F4E5 FF:F4D5: 29 FA     .word off_FA29_D6     ; unused
- D - I - 0x03F4E7 FF:F4D7: 2E FA     .word off_FA2E_D7
- D - I - 0x03F4E9 FF:F4D9: 34 FA     .word off_FA34_D8
- D - I - 0x03F4EB FF:F4DB: 3F FA     .word off_FA3F_D9
- D - I - 0x03F4ED FF:F4DD: 44 FA     .word off_FA44_DA
- D - I - 0x03F4EF FF:F4DF: 48 FA     .word off_FA48_DB
- - - - - 0x03F4F1 FF:F4E1: 4D FA     .word off_FA4D_DC     ; unused
- - - - - 0x03F4F3 FF:F4E3: 52 FA     .word off_FA52_DD     ; unused
- - - - - 0x03F4F5 FF:F4E5: 57 FA     .word off_FA57_DE     ; unused
- - - - - 0x03F4F7 FF:F4E7: 5C FA     .word off_FA5C_DF     ; unused
- D - I - 0x03F4F9 FF:F4E9: 61 FA     .word off_FA61_E0
- - - - - 0x03F4FB FF:F4EB: 68 FA     .word off_FA68_E1     ; unused
- - - - - 0x03F4FD FF:F4ED: 71 FA     .word off_FA71_E2     ; unused
- - - - - 0x03F4FF FF:F4EF: 79 FA     .word off_FA79_E3     ; unused
- D - I - 0x03F501 FF:F4F1: 83 FA     .word off_FA83_E4
- D - I - 0x03F503 FF:F4F3: 89 FA     .word off_FA89_E5
- D - I - 0x03F505 FF:F4F5: 90 FA     .word off_FA90_E6
- D - I - 0x03F507 FF:F4F7: 96 FA     .word off_FA96_E7
- D - I - 0x03F509 FF:F4F9: 9C FA     .word off_FA9C_E8
- D - I - 0x03F50B FF:F4FB: A4 FA     .word off_FAA4_E9
- D - I - 0x03F50D FF:F4FD: A9 FA     .word off_FAA9_EA
- D - I - 0x03F50F FF:F4FF: B0 FA     .word off_FAB0_EB
- D - I - 0x03F511 FF:F501: B7 FA     .word off_FAB7_EC
- D - I - 0x03F513 FF:F503: C0 FA     .word off_FAC0_ED
- D - I - 0x03F515 FF:F505: C4 FA     .word off_FAC4_EE
- D - I - 0x03F517 FF:F507: C8 FA     .word off_FAC8_EF

off_F509_01_цубаса:
    .text "Tsubasa"
    .byte $FC

off_F50D_02_ренато:
    .text "Renato"
    .byte $FC

off_F512_03_лима:
    .text "Lima"
    .byte $FC

off_F515_04_марини:
    .text "Marini"
    .byte $FC

off_F51A_05_амарал:
    .text "Amaral"
    .byte $FC

off_F51F_06_дотор:
    .text "Dotor"
    .byte $FC

off_F524_07_батиста:
    .text "Batista"
    .byte $FC

off_F529_08_тахамата:
    .text "Tahamata"
    .byte $FC

off_F52E_09_бабинтон:
; Babington
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

off_F534_0A_гил:
    .text "Gil"
    .byte $FC

off_F537_0B_платон:
    .text "Platon"
    .byte $FC

off_F53C_0C_урабэ:
    .text "Urabe"
    .byte $FC

off_F540_0D_кишида:
    .text "Kishida"
    .byte $FC

off_F544_0E_накаяма:
    .text "Nakayama"
    .byte $FC

off_F549_0F_морисаки:
    .text "Morisaki"
    .byte $FC

off_F54E_10_такасуги:
    .text "Takasugi"
    .byte $FC

off_F553_11_мисаки:
    .text "Misaki"
    .byte $FC

off_F557_12_изава:
    .text "Izawa"
    .byte $FC

off_F55B_13_таки:
    .text "Taki"
    .byte $FC

off_F55E_14_ишизаки:
    .text "Ishizaki"
    .byte $FC

off_F563_15_нитта:
    .text "Nitta"
    .byte $FC

off_F567_16_кисуги:
    .text "Kisugi"
    .byte $FC

off_F56B_17_масао:
    .text "Masao"
    .byte $FC

off_F56F_18_казуо:
    .text "Kazuo"
    .byte $FC

off_F573_19_сано:
    .text "Sano"
    .byte $FC

off_F576_1A_хюга:
    .text "Hyuga"
    .byte $FC

off_F57B_1B_сода:
    .text "Souda"
    .byte $FC

off_F57F_1C_джито:
    .text "Jitou"
    .byte $FC

off_F583_1D_мацуяма:
; Matsuyama
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

off_F588_1E_соримачи:
; Sorimachi
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

off_F58D_1F_савада:
    .text "Sawada"
    .byte $FC

off_F591_20_мисуги:
    .text "Misugi"
    .byte $FC

off_F595_21_вакабаяши:
; Wakabayashi
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

off_F59B_22_вакашимазу:
; Wakashimazu
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

off_F5A1_23_сатрустеги:
; Satrustegui
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

off_F5A8_24_рибейро:
    .text "Ribeiro"
    .byte $FC

off_F5AD_25_данил_сильва:
; Danil Silva
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

off_F5B3_26_меон:
    .text "Meon"
    .byte $FC

off_F5B7_27_тониньо:
    .text "Toninho"
    .byte $FC

off_F5BD_28_ней:
    .text "Nei"
    .byte $FC

off_F5C0_29_загалло:
    .text "Zagallo"
    .byte $FC

off_F5C4_2A_дирсеу:
    .text "Dirceu"
    .byte $FC

off_F5CA_2B_карлос:
    .text "Carlos"
    .byte $FC

off_F5CF_2C_сантамария:
; Santamaria
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

off_F5D6_2D_джеторио:
    .text "Jetorio"
    .byte $FC

off_F5DD_2E_джито:
    .text "Jitou"
    .byte $FC

off_F5E1_2F_сано:
    .text "Sano"
    .byte $FC

off_F5E4_30_масао:
    .text "Masao"
    .byte $FC

off_F5E8_31_казуо:
    .text "Kazuo"
    .byte $FC

off_F5EC_32_сода:
    .text "Souda"
    .byte $FC

off_F5F0_33_наканиши:
; Nakanishi
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

off_F5F5_34_мисуги:
    .text "Misugi"
    .byte $FC

off_F5F9_35_мацуяма:
; Matsuyama
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

off_F5FE_36_хюга:
    .text "Hyuga"
    .byte $FC

off_F603_37_соримачи:
; Sorimachi
    .byte $60, $21, $22, $23, $24, $25, $26, $27
    .byte $FC

off_F608_38_савада:
    .text "Sawada"
    .byte $FC

off_F60C_39_вакашимазу:
; Wakashimazu
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

off_F612_3A_рампион:
    .text "Rampion"
    .byte $FC

off_F618_3B_викторино:
; Victorino
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

off_F61F_3C_данил_сильва:
; Danil Silva
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

off_F625_3D_капельман:
; Kappelman
    .byte $18, $19, $1A, $1B, $1C, $1D, $1E, $1F
    .byte $FC

off_F62B_3E_кальц:
    .text "Kaltz"
    .byte $FC

off_F62F_3F_метза:
    .text "Metza"
    .byte $FC

off_F634_40_вакабаяши:
; Wakabayashi
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

off_F63A_41_хюга:
    .text "Hyuga"
    .byte $FC

off_F63F_42_нитта:
    .text "Nitta"
    .byte $FC

off_F643_43_сано:
    .text "Sano"
    .byte $FC

off_F646_44_мисаки:
    .text "Misaki"
    .byte $FC

off_F64A_45_мисуги:
    .text "Misugi"
    .byte $FC

off_F64E_46_масао:
    .text "Masao"
    .byte $FC

off_F652_47_казуо:
    .text "Kazuo"
    .byte $FC

off_F656_48_джито:
    .text "Jitou"
    .byte $FC

off_F65A_49_ишизаки:
    .text "Ishizaki"
    .byte $FC

off_F65F_4A_сода:
    .text "Souda"
    .byte $FC

off_F663_4B_мацуяма:
; Matsuyama
    .byte $10, $11, $12, $13, $14, $15, $16, $17
    .byte $FC

off_F668_4C_вакашимазу:
; Wakashimazu
    .byte $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    .byte $FC

off_F66E_4D_ли_хан:
; Li Han-ne
    .byte $01, $02, $03, $04, $05, $06, $07
    .byte $FC

off_F674_4E_ли_банкун:
; Li Ban-kun
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

off_F67B_4F_ша:
    .text "Sha"
    .byte $FC

off_F67E_50_ким:
    .text "Kim"
    .byte $FC

off_F681_51_мачер:
    .text "Macher"
    .byte $FC

off_F686_52_дзажик:
    .text "Djazic"
    .byte $FC

off_F68C_53_лоримар:
    .text "Lorimar"
    .byte $FC

off_F691_54_робсон:
    .text "Robson"
    .byte $FC

off_F696_55_беляев:
    .text "Belaev"
    .byte $FC

off_F69B_56_рашин:
    .text "Rashin"
    .byte $FC

off_F69F_57_наполеон:
    .text "Napoleon"
    .byte $FC

off_F6A5_58_пьер:
    .text "Pierre"
    .byte $FC

off_F6AA_59_эспана:
    .text "Espana"
    .byte $FC

off_F6B1_5A_рампион:
    .text "Rampion"
    .byte $FC

off_F6B7_5B_эрнандес:
; Hernandez
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

off_F6BE_5C_ислас:
    .text "Islas"
    .byte $FC

off_F6C3_5D_либута:
    .text "Libuta"
    .byte $FC

off_F6C7_5E_паскаль:
    .text "Pasqal"
    .byte $FC

off_F6CC_5F_сатрустеги:
; Satrustegui
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

off_F6D3_60_диас:
    .text "Diaz"
    .byte $FC

off_F6D8_61_бабинтон:
; Babington
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

off_F6DE_62_гальван:
    .text "Galvan"
    .byte $FC

off_F6E3_63_шнайдер:
; Schneider
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

off_F6EA_64_маргус:
    .text "Margus"
    .byte $FC

off_F6EF_65_кальц:
    .text "Kaltz"
    .byte $FC

off_F6F3_66_метза:
    .text "Metza"
    .byte $FC

off_F6F8_67_шестер:
    .text "Schester"
    .byte $FC

off_F6FE_68_капельман:
; Kappelman
    .byte $08, $09, $0A, $0B, $0C, $0D, $0E, $0F
    .byte $FC

off_F704_69_мюллер:
    .text "Muller"
    .byte $FC

off_F70A_6A_карлос:
    .text "Carlos"
    .byte $FC

off_F70F_6B_загалло:
    .text "Zagallo"
    .byte $FC

off_F713_6C_рибейро:
    .text "Ribeiro"
    .byte $FC

off_F718_6D_ней:
    .text "Nei"
    .byte $FC

off_F71B_6E_сантамария:
; Santamaria
    .byte $40, $01, $02, $03, $04, $05, $06, $07
    .byte $FC

off_F722_6F_тониньо:
    .text "Toninho"
    .byte $FC

off_F728_70_дотор:
    .text "Dotor"
    .byte $FC

off_F72D_71_амарал:
    .text "Amaral"
    .byte $FC

off_F732_72_дирсеу:
    .text "Dirceu"
    .byte $FC

off_F738_73_джеторио:
    .text "Jetorio"
    .byte $FC

off_F73F_74_гертис:
    .text "Gertise"
    .byte $FC

off_F745_75_коимбра:
    .text "Coimbra"
    .byte $FC

off_F74B_76:
    .text "Sao Paulo"
    .byte $FC

off_F751_77:
    .text "Nankatsu"
    .byte $FC

off_F756_78:
    .text "Japan"
    .byte $FC

off_F75A_79:
    .text "Fluminense"
    .byte $FC

off_F761_7A:
    .text "Corinthians"
    .byte $FC

off_F769_7B:
    .text "Gremio"
    .byte $FC

off_F76E_7C:
    .text "Palmeiras"
    .byte $FC

off_F775_7D:
    .text "Santos"
    .byte $FC

off_F77A_7E:
    .text "Flamengo"
    .byte $FC

off_F780_7F:
    .text "Kunimi"
    .byte $FC

off_F784_80:
    .text "Akita"
    .byte $FC

off_F788_81:
    .text "Tatsunami"
    .byte $FC

off_F78D_82:
    .text "Musashi"
    .byte $FC

off_F791_83:
    .text "Furano"
    .byte $FC

off_F795_84:
    .text "Toho"
    .byte $FC

off_F79A_85:
    .text "AS Roma"
    .byte $FC

off_F79E_86:
    .text "Uruguay"
    .byte $FC

off_F7A4_87:
    .text "Hamburger SV"
    .byte $FC

off_F7AB_88:
    .text "Japan"
    .byte $FC

off_F7AF_89:
    .text "Syria"
    .byte $FC

off_F7B3_8A:
    .text "China"
    .byte $FC

off_F7B9_8B:
    .text "Iran"
    .byte $FC

off_F7BD_8C:
    .text "North Korea"
    .byte $FC

off_F7C5_8D:
    .text "Saudi Arabia"
    .byte $FC

off_F7CD_8E:
    .text "South Korea"
    .byte $FC

off_F7D2_8F:
    .text "Turkey"
    .byte $FC

off_F7DB_90:
    .text "Poland"
    .byte $FC

off_F7E1_91:
    .text "England"
    .byte $FC

off_F7E8_92:
    .text "Soviet Union"
    .byte $FC

off_F7ED_93:
    .text "France"
    .byte $FC

off_F7F2_94:
    .text "Mexico"
    .byte $FC

off_F7F7_95:
    .text "Italy"
    .byte $FC

off_F7FC_96:
    .text "Netherlands"
    .byte $FC

off_F801_97:
    .text "Argentina"
    .byte $FC

off_F808_98:
    .text "West Germany"
    .byte $FC

off_F80E_99:
    .text "Brazil"
    .byte $FC

off_F813_9A:        ; shoot
    .text "9A "     ; <シュート>
    .byte $FC

off_F818_9B:
    .text "9B "     ; <ボレーシュート>
    .byte $FC

off_F820_9C:
    .text "9C "     ; <ヘディング>
    .byte $FC

off_F826_9D:        ; drive shot
    .text "9D "     ; <ドライブシュート>
    .byte $FC

off_F82F_9E:        ; drive overhead
    .text "9E "     ; <ドライブオーバーヘッド>
    .byte $FC

off_F83B_9F:        ; falcon shot
    .text "9F "     ; <はやぶさシュート>
    .byte $FC

off_F844_A0:        ; falcon volley
    .text "A0 "     ; <はやぶさボレーシュート>
    .byte $FC

off_F850_A1:        ; razor shot
    .text "A1 "     ; <カミソリシュート>
    .byte $FC

off_F859_A2:        ; skylb hurricane
    .text "A2 "     ; <スカイラブハリケーン>
    .byte $FC

off_F864_A3:        ; twin shot
    .text "A3 "     ; <ツインシュート>
    .byte $FC

off_F86C_A4:        ; skylab twin shot
    .text "A4 "     ; <スカイラブツインシュート>
    .byte $FC

off_F879_A5:        ; eagle shot
    .text "A5 "     ; <イーグルショット>
    .byte $FC

off_F882_A6:        ; tiger shot
    .text "A6 "     ; <タイガーショット>
    .byte $FC

off_F88B_A7:        ; neo-tiger shot
    .text "A7 "     ; <ネオ • タイガーショット>
    .byte $FC

off_F897_A8:        ; overhead kick
    .text "A8 "     ; <オーバーヘッドキック>
    .byte $FC

off_F8A2_A9:        ; hyper overhead
    .text "A9 "     ; <ハイパーオーバーヘッド>
    .byte $FC

off_F8AE_AA:        ; jumping volley
    .text "AA "     ; <ジャンピングボレーシュート>
    .byte $FC

off_F8BC_AB:
    .text "AB "     ; <ドライブタイガー>
    .byte $FC

off_F8C5_AC:        ; cyclone
    .text "AC "     ; <サイクロン>
    .byte $FC

off_F8CB_AD:        ; sano combo
    .text "AD "     ; <さのとのコンビプレイ>
    .byte $FC

off_F8D6_AE:
    .text "AE "     ; <バナナシュート>
    .byte $FC

off_F8DE_AF:
    .text "AF "     ; <ブースターシュート>
    .byte $FC

off_F8E8_B0:
    .text "B0 "     ; <ミラージュシュート>
    .byte $FC

off_F8F2_B1:
    .text "B1 "     ; <マッハシュート>
    .byte $FC

off_F8FA_B2:
    .text "B2 "     ; <サイドワインダー>
    .byte $FC

off_F903_B3:
    .text "B3 "     ; <スライダーシュート>
    .byte $FC

off_F90D_B4:
    .text "B4 "     ; <キャノンシュート>
    .byte $FC

off_F916_B5:
    .text "B5 "     ; <フヮイヤーショット>
    .byte $FC

off_F920_B6:
    .text "B6 "     ; <ダイナマイトヘッド>
    .byte $FC

off_F92A_B7:    ; unused
    .text "B7 "     ; <キャノンヘッド>
    .byte $FC

off_F932_B8:
    .text "B8 "     ; <ロケットヘッド>
    .byte $FC

off_F93A_B9:
    .text "B9 "     ; <しょうりゅうきゃく>
    .byte $FC

off_F944_BA:
    .text "BA "     ; <ぜんてんシュート>
    .byte $FC

off_F94D_BB:
    .text "BB "     ; <スライダーキャノン>
    .byte $FC

off_F957_BC:
    .text "BC "     ; <ダブルイール>
    .byte $FC

off_F95E_BD:
    .text "BD "     ; <ドリブル>
    .byte $FC

off_F963_BE:        ; heel lift
    .text "BE "     ; <ヒールリフト>
    .byte $FC

off_F96A_BF:        ; force dribble
    .text "BF "     ; <ごういんなドリブル>
    .byte $FC

off_F974_C0:
    .text "C0 "     ; <きえるフェイント>
    .byte $FC

off_F97D_C1:
    .text "C1 "     ; <ぶんしんドリブル>
    .byte $FC

off_F986_C2:
    .text "C2 "     ; <こうそくドリブル>
    .byte $FC

off_F98F_C3:
    .text "C3 "     ; <はりねずみドリブル>
    .byte $FC

off_F999_C4:
    .text "C4 "     ; <パス>
    .byte $FC

off_F99C_C5:        ; drive pass
    .text "C5 "     ; <ドライブパス>
    .byte $FC

off_F9A3_C6:        ; razor pass
    .text "C6 "     ; <カミソリパス>
    .byte $FC

off_F9AA_C7:
    .text "C7 "     ; <トップスピンパス>
    .byte $FC

off_F9B3_C8:
    .text "C8 "     ; <ワンツーリターン>
    .byte $FC

off_F9BC_C9:        ; golden combo
    .text "C9 "     ; <ゴールデンコンビ>
    .byte $FC

off_F9C5_CA:        ; toho combo
    .text "CA "     ; <とうほうコンビ>
    .byte $FC

off_F9CD_CB:        ; gemini attack
    .text "CB "     ; <ジェミニアタック>
    .byte $FC

off_F9D6_CC:        ; unused
    .text "CC "     ; <エッフェルこうげき>
    .byte $FC

off_F9E0_CD:
    .text "CD "     ; <ブロック>
    .byte $FC

off_F9E5_CE:        ; face block
    .text "CE "     ; <がんめんブロック>
    .byte $FC

off_F9EE_CF:        ; skylab block
    .text "CF "     ; <スカイラブブロック>
    .byte $FC

off_F9F8_D0:        ; power block
    .text "D0 "     ; <パワーブロック>
    .byte $FC

off_FA00_D1:
    .text "D1 "     ; <タックル>
    .byte $FC

off_FA05_D2:        ; skylab tackle
    .text "D2 "     ; <スカイラブタックル>
    .byte $FC

off_FA0F_D3:        ; razor tackle
    .text "D3 "     ; <カミソリタックル>
    .byte $FC

off_FA18_D4:        ; power tackle
    .text "D4 "     ; <パワータックル>
    .byte $FC

off_FA20_D5:        ; tiger tackle
    .text "D5 "     ; <タイガータックル>
    .byte $FC

off_FA29_D6:        ; unused
    .text "D6 "     ; <タックル>
    .byte $FC

off_FA2E_D7:
    .text "D7 "     ; <パスカット>
    .byte $FC

off_FA34_D8:        ; skylab pass cut
    .text "D8 "     ; <スカイラブパスカット>
    .byte $FC

off_FA3F_D9:
    .text "D9 "     ; <トラップ>
    .byte $FC

off_FA44_DA:
    .text "DA "     ; <スルー>
    .byte $FC

off_FA48_DB:
    .text "DB "     ; <クリアー>
    .byte $FC

off_FA4D_DC:        ; unused
    .text "DC "     ; <クリアー>
    .byte $FC

off_FA52_DD:        ; unused
    .text "DD "     ; <せりあい>
    .byte $FC

off_FA57_DE:        ; unused
    .text "DE "     ; <せりあい>
    .byte $FC

off_FA5C_DF:        ; unused
    .text "DF "     ; <フォロー>
    .byte $FC

off_FA61_E0:
    .text "E0 "     ; <キャッチング>
    .byte $FC

off_FA68_E1:        ; unused
    .text "E1 "     ; <ローリングセーブ>
    .byte $FC

off_FA71_E2:        ; unused
    .text "E2 "     ; <ぶんしんセーブ>
    .byte $FC

off_FA79_E3:        ; unused
    .text "E3 "     ; <だいかいてんセーブ>
    .byte $FC

off_FA83_E4:
    .text "E4 "     ; <パンチング>
    .byte $FC

off_FA89_E5:        ; triangle jump
    .text "E5 "     ; <さんかくとび>
    .byte $FC

off_FA90_E6:
    .text "E6 "     ; <するどい  >
    .byte $FC

off_FA96_E7:
    .text "E7 "     ; <すばやく  >
    .byte $FC

off_FA9C_E8:
    .text "E8 "     ; <きょうれつな  >
    .byte $FC

off_FAA4_E9:
    .text "E9 "     ; <うまい  >
    .byte $FC

off_FAA9_EA:
    .text "EA "     ; <きょうれつな>
    .byte $FC

off_FAB0_EB:
    .text "EB "     ; <センタリング>
    .byte $FC

off_FAB7_EC:
    .text "EC "     ; <ペナルティキック>
    .byte $FC

off_FAC0_ED:
    .text "ED "     ; <ボール>
    .byte $FC

off_FAC4_EE:
    .text "EE "     ; <ゴール>
    .byte $FC

off_FAC8_EF:
    .text "EF "     ; <タイ!>
    .byte $FC