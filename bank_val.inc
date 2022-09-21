; keep your global constant values inside this file

; MISC разное
con_prg_bank                                = $00 ; номер prg банка
con_chr_bank                                = $00 ; номер chr банка
con_cutscene                                = $00 ; номер катсцены
con_сценарий                                = $00 ; номер сценария



; параметры игроков
con_plr_id                                  = $00 ; уникальный номер игрока. если 00, значит это обычный клон
con_plr_guts_lo                             = $01 ; 
con_plr_guts_hi                             = $02 ; энергия
con_plr_lvl                                 = $03 ; текущий уровень игрока
con_plr_04                                  = $04 ; видимо не используется
con_plr_pos_X_lo                            = $05 ; 
con_plr_pos_X_hi                            = $06 ; 
con_plr_pos_Y_lo                            = $07 ; 
con_plr_pos_Y_hi                            = $08 ; 
con_plr_09                                  = $09 ; какой-то параметр ???
con_plr_stun                                = $0A ; stunlock, таймер, во время которого игрок не может двигаться автоматически и нападать
con_plr_0B                                  = $0B ; какой-то параметр ??? видимо не используется



; особые параметры киперов
; bzk заменить константы на киперские в некоторых местах
con_таймер_наебки                           = $05 ; при наебке кипера (вероятно при постоянных отбиваниях тоже)
con_кипер_параметр_06                       = $06 ; 
con_величина_наебки                         = $07 ; при наебке кипера (вероятно при постоянных отбиваниях тоже)



; особые параметры ботов
con_бот_флаг_1_ХЗ                           = $01 ; флаг злого шнайдера если 80, пишется в 0x020467
con_бот_флаг_2_ХЗ                           = $02 ; ??? сила злого шнайдера



; кнопки
con_btn_Right                               = $01 ; 
con_btn_Left                                = $02 ; 
con_btn_Down                                = $04 ; 
con_btn_Up                                  = $08 ; 
con_btn_Start                               = $10 ; 
con_btn_Select                              = $20 ; 
con_btn_B                                   = $40 ; 
con_btn_A                                   = $80 ; 

con_btns_Dpad                               = $0F ; Right + Left + Down + Up



; ram_звук                                  = $0700
con_музыка_выключить_все                    = $01 ; 
con_музыка_добавочное_время                 = $32 ; 



; con_plr_id
; _my означает игрока нашей команды, который также может быть нашим японцем
; если указано _japan, значит это японцы-соперники
con_p_clone                                 = $00
con_p_tsubasa_my                            = $01
con_p_renato_my                             = $02
con_p_lima_my                               = $03
con_p_marini_my                             = $04
con_p_amaral_my                             = $05
con_p_dotor_my                              = $06
con_p_batista_my                            = $07
con_p_tahamata_my                           = $08
con_p_babington_my                          = $09
con_p_gil_my                                = $0A
con_p_platon_my                             = $0B
con_p_urabe_my                              = $0C
con_p_kishida_my                            = $0D
con_p_nakayama_my                           = $0E
con_p_morisaki_my                           = $0F
con_p_takasugi_my                           = $10
con_p_misaki_my                             = $11
con_p_izawa_my                              = $12
con_p_taki_my                               = $13
con_p_ishizaki_my                           = $14
con_p_nitta_my                              = $15
con_p_kisugi_my                             = $16
con_p_masao_my                              = $17
con_p_kazuo_my                              = $18
con_p_sano_my                               = $19
con_p_hyuga_my                              = $1A
con_p_soda_my                               = $1B
con_p_jito_my                               = $1C
con_p_matsuyama_my                          = $1D
con_p_sorimachi_my                          = $1E
con_p_sawada_my                             = $1F
con_p_misugi_my                             = $20
con_p_wakabayashi_my                        = $21
con_p_wakashimazu_my                        = $22
con_p_satrustegui_corinthians               = $23
con_p_ribeiro_corinthians                   = $24
con_p_da_silva_gremio                       = $25
con_p_meon_gremio                           = $26
con_p_toninho_palmeiras                     = $27
con_p_nei_palmeiras                         = $28
con_p_zagallo_santos                        = $29
con_p_dirceu_santos                         = $2A
con_p_carlos_flamengo                       = $2B
con_p_santamaria_flamengo                   = $2C
con_p_jetorio_flamengo                      = $2D
con_p_jito_kunimi                           = $2E
con_p_sano_kunimi                           = $2F
con_p_masao_akita                           = $30
con_p_kazuo_akita                           = $31
con_p_soda_tatsunami                        = $32
con_p_nakanishi_tatsunami                   = $33
con_p_misugi_musashi                        = $34
con_p_matsuyama_furano                      = $35
con_p_hyuga_toho                            = $36
con_p_sorimachi_toho                        = $37
con_p_sawada_toho                           = $38
con_p_wakashimazu_toho                      = $39
con_p_rampion_as_roma                       = $3A
con_p_victorino_uruguay                     = $3B
con_p_da_silva_uruguay                      = $3C
con_p_kappelman_hamburger_sv                = $3D
con_p_kaltz_hamburger_sv                    = $3E
con_p_metza_hamburger_sv                    = $3F
con_p_wakabayashi_hamburger_sv              = $40
con_p_hyuga_japan                           = $41
con_p_nitta_japan                           = $42
con_p_sano_japan                            = $43
con_p_misaki_japan                          = $44
con_p_misugi_japan                          = $45
con_p_masao_japan                           = $46
con_p_kazuo_japan                           = $47
con_p_jito_japan                            = $48
con_p_ishizaki_japan                        = $49
con_p_soda_japan                            = $4A
con_p_matsuyama_japan                       = $4B
con_p_wakashimazu_japan                     = $4C
con_p_li_han_ne_china                       = $4D
con_p_li_ban_kun_china                      = $4E
con_p_sha_south_korea                       = $4F
con_p_kim_south_korea                       = $50
con_p_macher_poland                         = $51
con_p_djazic_poland                         = $52
con_p_lorimar_england                       = $53
con_p_robson_england                        = $54
con_p_belyaev_soviet_union                  = $55
con_p_rashin_soviet_union                   = $56
con_p_napoleon_france                       = $57
con_p_pierre_france                         = $58
con_p_espana_mexico                         = $59
con_p_rampion_italy                         = $5A
con_p_hernandez_italy                       = $5B
con_p_islas_netherlands                     = $5C
con_p_libuta_netherlands                    = $5D
con_p_pascal_argentina                      = $5E
con_p_satrustegui_argentina                 = $5F
con_p_diaz_argentina                        = $60
con_p_babington_argentina                   = $61
con_p_galvan_argentina                      = $62
con_p_schneider_west_germany                = $63
con_p_margus_west_germany                   = $64
con_p_kaltz_west_germany                    = $65
con_p_metza_west_germany                    = $66
con_p_schester_west_germany                 = $67
con_p_kappelman_west_germany                = $68
con_p_muller_west_germany                   = $69
con_p_carlos_brazil                         = $6A
con_p_zagallo_brazil                        = $6B
con_p_ribeiro_brazil                        = $6C
con_p_nei_brazil                            = $6D
con_p_santamaria_brazil                     = $6E
con_p_toninho_brazil                        = $6F
con_p_dotor_brazil                          = $70
con_p_amaral_brazil                         = $71
con_p_dirceu_brazil                         = $72
con_p_jetorio_brazil                        = $73
con_p_gertise_brazil                        = $74
con_p_coimbra_brazil                        = $75
