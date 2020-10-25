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
    .word ram_имя_клона
    .word off_F509_01_цубаса
    .word off_F50D_02_ренато
    .word off_F512_03_лима
    .word off_F515_04_марини
    .word off_F51A_05_амарал
    .word off_F51F_06_дотор
    .word off_F524_07_батиста
    .word off_F529_08_тахамата
    .word off_F52E_09_бабинтон
    .word off_F534_0A_гил
    .word off_F537_0B_платон
    .word off_F53C_0C_урабэ
    .word off_F540_0D_кишида
    .word off_F544_0E_накаяма
    .word off_F549_0F_морисаки
    .word off_F54E_10_такасуги
    .word off_F553_11_мисаки
    .word off_F557_12_изава
    .word off_F55B_13_таки
    .word off_F55E_14_ишизаки
    .word off_F563_15_нитта
    .word off_F567_16_кисуги
    .word off_F56B_17_масао
    .word off_F56F_18_казуо
    .word off_F573_19_сано
    .word off_F576_1A_хюга
    .word off_F57B_1B_сода
    .word off_F57F_1C_джито
    .word off_F583_1D_мацуяма
    .word off_F588_1E_соримачи
    .word off_F58D_1F_савада
    .word off_F591_20_мисуги
    .word off_F595_21_вакабаяши
    .word off_F59B_22_вакашимазу
    .word off_F5A1_23_сатрустеги
    .word off_F5A8_24_рибейро
    .word off_F5AD_25_данил_сильва
    .word off_F5B3_26_меон
    .word off_F5B7_27_тониньо
    .word off_F5BD_28_ней
    .word off_F5C0_29_загалло
    .word off_F5C4_2A_дирсеу
    .word off_F5CA_2B_карлос
    .word off_F5CF_2C_сантамария
    .word off_F5D6_2D_джеторио
    .word off_F5DD_2E_джито
    .word off_F5E1_2F_сано
    .word off_F5E4_30_масао
    .word off_F5E8_31_казуо
    .word off_F5EC_32_сода
    .word off_F5F0_33_наканиши
    .word off_F5F5_34_мисуги
    .word off_F5F9_35_мацуяма
    .word off_F5FE_36_хюга
    .word off_F603_37_соримачи
    .word off_F608_38_савада
    .word off_F60C_39_вакашимазу
    .word off_F612_3A_рампион
    .word off_F618_3B_викторино
    .word off_F61F_3C_данил_сильва
    .word off_F625_3D_капельман
    .word off_F62B_3E_кальц
    .word off_F62F_3F_метза
    .word off_F634_40_вакабаяши
    .word off_F63A_41_хюга
    .word off_F63F_42_нитта
    .word off_F643_43_сано
    .word off_F646_44_мисаки
    .word off_F64A_45_мисуги
    .word off_F64E_46_масао
    .word off_F652_47_казуо
    .word off_F656_48_джито
    .word off_F65A_49_ишизаки
    .word off_F65F_4A_сода
    .word off_F663_4B_мацуяма
    .word off_F668_4C_вакашимазу
    .word off_F66E_4D_ли_хан
    .word off_F674_4E_ли_банкун
    .word off_F67B_4F_ша
    .word off_F67E_50_ким
    .word off_F681_51_мачер
    .word off_F686_52_дзажик
    .word off_F68C_53_лоримар
    .word off_F691_54_робсон
    .word off_F696_55_беляев
    .word off_F69B_56_рашин
    .word off_F69F_57_наполеон
    .word off_F6A5_58_пьер
    .word off_F6AA_59_эспана
    .word off_F6B1_5A_рампион
    .word off_F6B7_5B_эрнандес
    .word off_F6BE_5C_ислас
    .word off_F6C3_5D_либута
    .word off_F6C7_5E_паскаль
    .word off_F6CC_5F_сатрустеги
    .word off_F6D3_60_диас
    .word off_F6D8_61_бабинтон
    .word off_F6DE_62_гальван
    .word off_F6E3_63_шнайдер
    .word off_F6EA_64_маргус
    .word off_F6EF_65_кальц
    .word off_F6F3_66_метза
    .word off_F6F8_67_шестер
    .word off_F6FE_68_капельман
    .word off_F704_69_мюллер
    .word off_F70A_6A_карлос
    .word off_F70F_6B_загалло
    .word off_F713_6C_рибейро
    .word off_F718_6D_ней
    .word off_F71B_6E_сантамария
    .word off_F722_6F_тониньо
    .word off_F728_70_дотор
    .word off_F72D_71_амарал
    .word off_F732_72_дирсеу
    .word off_F738_73_джеторио
    .word off_F73F_74_гертис
    .word off_F745_75_коимбра
    .word txt_76_my_team_sao_paulo
    .word txt_77_my_team_nankatsu
    .word txt_78_my_team_japan
    .word txt_79_opponent_team_fluminense
    .word txt_7A_opponent_team_corinthians
    .word txt_7B_opponent_team_gremio
    .word txt_7C_opponent_team_palmeiras
    .word txt_7D_opponent_team_santos
    .word txt_7E_opponent_team_flamengo
    .word txt_7F_opponent_team_kunimi
    .word txt_80_opponent_team_akita
    .word txt_81_opponent_team_tatsunami
    .word txt_82_opponent_team_musashi
    .word txt_83_opponent_team_furano
    .word txt_84_opponent_team_toho
    .word txt_85_opponent_team_as_roma
    .word txt_86_opponent_team_uruguay
    .word txt_87_opponent_team_hamburger_sv
    .word txt_88_opponent_team_japan
    .word txt_89_opponent_team_syria
    .word txt_8A_opponent_team_china
    .word txt_8B_opponent_team_iran
    .word txt_8C_opponent_team_north_korea
    .word txt_8D_opponent_team_saudi_arabia
    .word txt_8E_opponent_team_south_korea
    .word txt_8F_opponent_team_turkey
    .word txt_90_opponent_team_poland
    .word txt_91_opponent_team_england
    .word txt_92_opponent_team_soviet_union
    .word txt_93_opponent_team_france
    .word txt_94_opponent_team_mexico
    .word txt_95_opponent_team_italy
    .word txt_96_opponent_team_netherlands
    .word txt_97_opponent_team_argentina
    .word txt_98_opponent_team_west_germany
    .word txt_99_opponent_team_brazil
    .word off_F813_9A
    .word off_F818_9B
    .word off_F820_9C
    .word off_F826_9D
    .word off_F82F_9E
    .word off_F83B_9F
    .word off_F844_A0
    .word off_F850_A1
    .word off_F859_A2
    .word off_F864_A3
    .word off_F86C_A4
    .word off_F879_A5
    .word off_F882_A6
    .word off_F88B_A7
    .word off_F897_A8
    .word off_F8A2_A9
    .word off_F8AE_AA
    .word off_F8BC_AB
    .word off_F8C5_AC
    .word off_F8CB_AD
    .word off_F8D6_AE
    .word off_F8DE_AF
    .word off_F8E8_B0
    .word off_F8F2_B1
    .word off_F8FA_B2
    .word off_F903_B3
    .word off_F90D_B4
    .word off_F916_B5
    .word off_F920_B6
    .word off_F92A_B7       ; unused
    .word off_F932_B8
    .word off_F93A_B9
    .word off_F944_BA
    .word off_F94D_BB
    .word off_F957_BC
    .word off_F95E_BD
    .word off_F963_BE
    .word off_F96A_BF
    .word off_F974_C0
    .word off_F97D_C1
    .word off_F986_C2
    .word off_F98F_C3
    .word off_F999_C4
    .word off_F99C_C5
    .word off_F9A3_C6
    .word off_F9AA_C7
    .word off_F9B3_C8
    .word off_F9BC_C9
    .word off_F9C5_CA
    .word off_F9CD_CB
    .word off_F9D6_CC       ; unused
    .word off_F9E0_CD
    .word off_F9E5_CE
    .word off_F9EE_CF
    .word off_F9F8_D0
    .word off_FA00_D1
    .word off_FA05_D2
    .word off_FA0F_D3
    .word off_FA18_D4
    .word off_FA20_D5
    .word off_FA29_D6       ; unused
    .word off_FA2E_D7
    .word off_FA34_D8
    .word off_FA3F_D9
    .word off_FA44_DA
    .word off_FA48_DB
    .word off_FA4D_DC       ; unused
    .word off_FA52_DD       ; unused
    .word off_FA57_DE       ; unused
    .word off_FA5C_DF       ; unused
    .word off_FA61_E0
    .word off_FA68_E1       ; unused
    .word off_FA71_E2       ; unused
    .word off_FA79_E3       ; unused
    .word off_FA83_E4
    .word off_FA89_E5
    .word off_FA90_E6
    .word off_FA96_E7
    .word off_FA9C_E8
    .word off_FAA4_E9
    .word off_FAA9_EA
    .word off_FAB0_EB
    .word off_FAB7_EC
    .word off_FAC0_ED
    .word off_FAC4_EE
    .word off_FAC8_EF

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

txt_76_my_team_sao_paulo:
    .text "Sao Paulo"
    .byte $FC

txt_77_my_team_nankatsu:
    .text "Nankatsu"
    .byte $FC

txt_78_my_team_japan:
    .text "Japan"
    .byte $FC

txt_79_opponent_team_fluminense:
    .text "Fluminense"
    .byte $FC

txt_7A_opponent_team_corinthians:
    .text "Corinthians"
    .byte $FC

txt_7B_opponent_team_gremio:
    .text "Gremio"
    .byte $FC

txt_7C_opponent_team_palmeiras:
    .text "Palmeiras"
    .byte $FC

txt_7D_opponent_team_santos:
    .text "Santos"
    .byte $FC

txt_7E_opponent_team_flamengo:
    .text "Flamengo"
    .byte $FC

txt_7F_opponent_team_kunimi:
    .text "Kunimi"
    .byte $FC

txt_80_opponent_team_akita:
    .text "Akita"
    .byte $FC

txt_81_opponent_team_tatsunami:
    .text "Tatsunami"
    .byte $FC

txt_82_opponent_team_musashi:
    .text "Musashi"
    .byte $FC

txt_83_opponent_team_furano:
    .text "Furano"
    .byte $FC

txt_84_opponent_team_toho:
    .text "Toho"
    .byte $FC

txt_85_opponent_team_as_roma:
    .text "AS Roma"
    .byte $FC

txt_86_opponent_team_uruguay:
    .text "Uruguay"
    .byte $FC

txt_87_opponent_team_hamburger_sv:
    .text "Hamburger SV"
    .byte $FC

txt_88_opponent_team_japan:
    .text "Japan"
    .byte $FC

txt_89_opponent_team_syria:
    .text "Syria"
    .byte $FC

txt_8A_opponent_team_china:
    .text "China"
    .byte $FC

txt_8B_opponent_team_iran:
    .text "Iran"
    .byte $FC

txt_8C_opponent_team_north_korea:
    .text "North Korea"
    .byte $FC

txt_8D_opponent_team_saudi_arabia:
    .text "Saudi Arabia"
    .byte $FC

txt_8E_opponent_team_south_korea:
    .text "South Korea"
    .byte $FC

txt_8F_opponent_team_turkey:
    .text "Turkey"
    .byte $FC

txt_90_opponent_team_poland:
    .text "Poland"
    .byte $FC

txt_91_opponent_team_england:
    .text "England"
    .byte $FC

txt_92_opponent_team_soviet_union:
    .text "Soviet Union"
    .byte $FC

txt_93_opponent_team_france:
    .text "France"
    .byte $FC

txt_94_opponent_team_mexico:
    .text "Mexico"
    .byte $FC

txt_95_opponent_team_italy:
    .text "Italy"
    .byte $FC

txt_96_opponent_team_netherlands:
    .text "Netherlands"
    .byte $FC

txt_97_opponent_team_argentina:
    .text "Argentina"
    .byte $FC

txt_98_opponent_team_west_germany:
    .text "West Germany"
    .byte $FC

txt_99_opponent_team_brazil:
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

off_F92A_B7:          ; unused
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

off_F9D6_CC:          ; unused
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

off_FA29_D6:          ; unused
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

off_FA4D_DC:          ; unused
    .text "DC "     ; <クリアー>
    .byte $FC

off_FA52_DD:          ; unused
    .text "DD "     ; <せりあい>
    .byte $FC

off_FA57_DE:          ; unused
    .text "DE "     ; <せりあい>
    .byte $FC

off_FA5C_DF:          ; unused
    .text "DF "     ; <フォロー>
    .byte $FC

off_FA61_E0:
    .text "E0 "     ; <キャッチング>
    .byte $FC

off_FA68_E1:          ; unused
    .text "E1 "     ; <ローリングセーブ>
    .byte $FC

off_FA71_E2:          ; unused
    .text "E2 "     ; <ぶんしんセーブ>
    .byte $FC

off_FA79_E3:          ; unused
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