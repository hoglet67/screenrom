INCLUDE_ATM_HDR =? 1

zp = &0088

; Memory locations
l0003                           = &0003
l0005                           = &0005
l0080                           = zp + &00
l0081                           = zp + &01
l0082                           = zp + &02
l0083                           = zp + &03
l0084                           = zp + &04
l0085                           = zp + &05
l0086                           = zp + &06
l0087                           = zp + &07
l0088                           = zp + &08
l0089                           = zp + &09
l008a                           = zp + &0a
l008b                           = zp + &0b
l008c                           = zp + &0c
l00c0                           = &00c0
l00c1                           = &00c1
l00c3                           = &00c3
l00c4                           = &00c4
l00c9                           = &00c9
l00ca                           = &00ca
l00dc                           = &00dc
l00de                           = &00de
l00df                           = &00df
l00e0                           = &00e0
l00e1                           = &00e1
l00e4                           = &00e4
l00e5                           = &00e5
l00e6                           = &00e6
l00e7                           = &00e7
l00e8                           = &00e8
l00e9                           = &00e9
l00ec                           = &00ec
wrcvec                          = &0208
rdcvec                          = &020a
lodvec                          = &020c
bgtvec                          = &0214
plotvec                         = &03fe
l803f                           = &803f
debounce_delay                  = &9839
workspace_ram                   = &9900
var_inv_screen                  = &9903
var_inv_charset                 = &9904
var_tmp                         = &9905
font_ram                        = &9908
font_end                        = &9c01
lb001                           = &b001
lb002                           = &b002
basic_execute_command           = &c2b6
basic_post_test                 = &c4e6
basic_next_statement            = &c55b
kern_print_string               = &f7d1
kern_load                       = &f96e
kern_save                       = &fae5
kern_wait_x_vsyncs              = &fb83
kern_wait_100ms                 = &fb8a
kern_tape_get_byte              = &fbee
kern_tape_byte_to_checksum      = &fc23
kern_tape_put_byte              = &fc7c
kern_count_tape_pulse_duration  = &fcbd
kern_test_tape_input            = &fccd
kern_wait_for_2400_falling      = &fcd8
kern_wait_for_N_2400_falling    = &fcda
kern_BEL                        = &fd1a
kern_nvwrch                     = &fe52
kern_wait_vsync                 = &fe66
kern_scan_keyboard              = &fe71
kern_nvrdch                     = &fe94
kern_handle_key                 = &feb1
kern_send_A_to_printer          = &fefb
kern_rts                        = &ff37
OSCRLF                          = &ffed
OSWRCH                          = &fff4

if INCLUDE_ATM_HDR
    org &a000 - 22
.pydis_start
    equs "screen"

    org $a000 - 6
    equw &a000
    equw jump_block
    equw &1000
else
.pydis_start
    org &a000
endif

    equb &40, &bf

.initialize
    jmp caa99

.workspace_rom
    equb &0d, &ff,   0,   0,   0,   0,   0,   0
    equb   0,   0,   0,   0,   0,   0,   0,   0
    equb   0, &10, &10, &10, &10,   0, &10,   0
    equb   0, &28, &28,   0,   0,   0,   0,   0
    equb   0, &28, &28, &7c, &28, &7c, &28, &28
    equb   0, &10, &7c, &50, &7c, &14, &7c, &10
    equb   0,   0, &64, &68, &10, &2c, &4c,   0
    equb   0, &20, &50, &20, &54, &48, &34,   0
    equb   0, &18, &18, &20,   0,   0,   0,   0
    equb   0,   8, &10, &20, &20, &10,   8,   0
    equb   0, &20, &10,   8,   8, &10, &20,   0
    equb   0,   0, &28, &10, &7c, &10, &28,   0
    equb   0,   0, &10, &10, &7c, &10, &10,   0
    equb   0,   0,   0,   0,   0, &18, &18, &20
    equb   0,   0,   0,   0, &7c,   0,   0,   0
    equb   0,   0,   0,   0,   0, &30, &30,   0
    equb   0,   0,   4,   8, &10, &20, &40,   0
    equb   0, &38, &44, &4c, &54, &64, &38,   0
    equb   0, &10, &30, &10, &10, &10, &10,   0
    equb   0, &38, &44,   4, &18, &20, &7c,   0
    equb   0, &7c,   4, &18,   4, &44, &38,   0
    equb   0,   8, &18, &28, &7c,   8,   8,   0
    equb   0, &7c, &40, &78,   4,   4, &7c,   0
    equb   0, &3c, &40, &78, &44, &44, &38,   0
    equb   0, &7c,   4,   8, &10, &20, &40,   0
    equb   0, &38, &44, &38, &44, &44, &38,   0
    equb   0, &38, &44, &44, &3c,   4, &38,   0
    equb   0,   0, &30, &30,   0, &30, &30,   0
    equb   0,   0, &30, &30,   0, &30, &30, &40
    equb   0,   8, &10, &20, &40, &20, &10,   8
    equb   0,   0,   0, &3c,   0, &3c,   0,   0
    equb   0, &40, &20, &10,   8, &10, &20, &40
    equb   0, &38, &44,   8, &10,   0, &10,   0
    equb &38, &44, &5c, &54, &5c, &40, &38,   0
    equb   0, &38, &44, &44, &7c, &44, &44,   0
    equb   0, &78, &24, &3c, &24, &24, &78,   0
    equb   0, &38, &44, &40, &40, &44, &38,   0
    equb   0, &78, &24, &24, &24, &24, &78,   0
    equb   0, &7c, &40, &70, &40, &40, &7c,   0
    equb   0, &7c, &40, &70, &40, &40, &40,   0
    equb   0, &3c, &40, &40, &48, &44, &78,   0
    equb   0, &44, &44, &7c, &44, &44, &44,   0
    equb   0, &38, &10, &10, &10, &10, &38,   0
    equb   0, &3c,   8,   8,   8, &48, &30,   0
    equb   0, &48, &50, &60, &60, &50, &48,   0
    equb   0, &40, &40, &40, &40, &40, &7c,   0
    equb   0, &44, &6c, &54, &44, &44, &44,   0
    equb   0, &44, &64, &54, &4c, &44, &44,   0
    equb   0, &38, &44, &44, &44, &44, &38,   0
    equb   0, &78, &44, &44, &78, &40, &40,   0
    equb   0, &38, &44, &44, &54, &4c, &3c,   0
    equb   0, &78, &44, &44, &78, &48, &44,   0
    equb   0, &38, &44, &30,   8, &44, &38,   0
    equb   0, &7c, &10, &10, &10, &10, &10,   0
    equb   0, &44, &44, &44, &44, &44, &38,   0
    equb   0, &44, &44, &44, &28, &28, &10,   0
    equb   0, &44, &44, &54, &54, &6c, &44,   0
    equb   0, &44, &28, &10, &28, &44, &44,   0
    equb   0, &44, &44, &28, &10, &10, &10,   0
    equb   0, &7c,   4,   8, &10, &20, &7c,   0
    equb   0, &38, &20, &20, &20, &20, &38,   0
    equb   0,   0, &40, &20, &10,   8,   4,   0
    equb   0, &38,   8,   8,   8,   8, &38,   0
    equb   0, &10, &38, &54, &10, &10, &10,   0
    equb   0,   0, &10, &20, &7c, &20, &10,   0
    equb   0, &20, &10,   0,   0,   0,   0,   0
    equb   0,   0, &38,   8, &78, &48, &7c,   0
    equb   0, &40, &40, &78, &48, &48, &78,   0
    equb   0,   0, &30, &48, &40, &40, &38,   0
    equb   0,   8,   8, &38, &48, &48, &7c,   0
    equb   0,   0, &30, &48, &70, &40, &38,   0
    equb   0, &18, &20, &70, &20, &20, &20,   0
    equb   0,   0, &38, &48, &48, &38,   8, &70
    equb   0, &40, &40, &70, &48, &48, &48,   0
    equb   0, &10,   0, &10, &10, &10, &10,   0
    equb   0, &10,   0, &10, &10, &10, &50, &20
    equb   0, &40, &48, &50, &60, &50, &48,   0
    equb   0, &30, &10, &10, &10, &10, &38,   0
    equb   0,   0, &78, &54, &54, &54, &54,   0
    equb   0,   0, &70, &48, &48, &48, &48,   0
    equb   0,   0, &30, &48, &48, &48, &30,   0
    equb   0,   0, &70, &48, &48, &70, &40, &40
    equb   0,   0, &38, &48, &48, &38,   8, &0c
    equb   0,   0, &58, &60, &40, &40, &40,   0
    equb   0,   0, &38, &40, &30,   8, &70,   0
    equb   0, &20, &70, &20, &20, &28, &10,   0
    equb   0,   0, &48, &48, &48, &48, &3c,   0
    equb   0,   0, &44, &44, &28, &28, &10,   0
    equb   0,   0, &44, &44, &54, &54, &28,   0
    equb   0,   0, &44, &28, &10, &28, &44,   0
    equb   0,   0, &48, &48, &58, &28,   8, &38
    equb   0,   0, &7c,   8, &10, &20, &7c,   0
    equb   0,   8, &10, &10, &20, &10, &10,   8
    equb &10, &10, &10, &10, &10, &10, &10, &10
    equb   0, &20, &10, &10,   8, &10, &10, &20
    equb   0,   0,   0, &34, &58,   0,   0,   0

.sub_ca305
    jsr ca6fb
    lda l008b
    sta l00e0
    lda l008c
    sta l00e1
    lda #&20
    sta l0080
.ca314
    lda #0
    sta l0082
    sta l0083
.ca31a
    lda l008a
    and #3
    clc
    asl a
    tax
    dec l00de
    ldy l0082
    cpx #6
    bne ca32a
    iny
.ca32a
    lda (l00de),y
    sta var_tmp
    inc l00de
    lda (l00de),y
    cpx #0
    beq ca33e
.loop_ca337
    lsr var_tmp
    ror a
    dex
    bne loop_ca337
.ca33e
    bit l0084
    bpl ca34b
    and #&fc
    ldx font_ram
    beq ca34b
    ora #3
.ca34b
    ldy l0083
    cmp (l00e0),y
    bne ca362
    cpy #7
    beq ca37e
    iny
    sty l0083
    clc
    lda l0082
    adc #&20
    sta l0082
    jmp ca31a

.ca362
    inc l0080
    lda l0080
    cmp #&7f
    bcs ca37a
    clc
    lda l00e0
    adc #8
    sta l00e0
    lda l00e1
    adc #0
    sta l00e1
    jmp ca314

.ca37a
    lda #&20
    sta l0080
.ca37e
    jmp ca6fb

.ca381
    jsr sub_ca7d7
    lda #&2c
    nop
    nop
    lda #<rdch
    sta rdcvec
    lda #>rdch
    sta rdcvec+1
    rts
;   jmp basic_next_statement

.rdch
    cld
    stx l00e4
    sty l00e5
.ca39a
    jmp cac70

.unreachable1
    bvc ca3a4
    jsr kern_scan_keyboard
    bcc ca39a
.ca3a4
    jsr kern_wait_100ms
.ca3a7
    jsr kern_scan_keyboard
    bcs ca3a7
    jsr kern_scan_keyboard
    bcs ca3a7
.ca3b1
    cpy #5
    bne ca3bd
    lda l00e7
    eor #&60
    sta l00e7
    bcs ca39a
.ca3bd
    cpy #&0e
    beq ca40d
    cpy #6
    beq ca3ca
    cpy #7
    bne ca3db
    iny
.ca3ca
    lda lb001
    asl a
    tya
    adc #2
    ldx l00e4
    ldy l00e5
    bcc ca3de
.sub_ca3d7
    php
    jmp kern_handle_key

.ca3db
    jsr sub_ca3d7
.ca3de
    cmp #&20
    bcc ca3e3
.ca3e2
    rts

.ca3e3
    cmp #&0d
    beq ca3e2
    cmp #&17
    beq ca39a
    cmp #&18
    beq ca3e2
    cmp #&1b
    beq ca3e2
    cmp #&1c
    beq ca39a
    cmp #&1f
    beq ca39a
    sta l0080
    txa
    pha
    tya
    pha
    lda l0080
    jsr vdu_code_lookup
    pla
    tay
    pla
    tax
    jmp rdch

.ca40d
    jsr sub_ca305
    ldx l00e4
    ldy l00e5
    lda l0080
    rts

.vdu28_entry
    lda #0
    sta l0080
    lda #<wrch_vdu28a
    sta wrcvec
    lda #>wrch_vdu28a
    sta wrcvec+1
    rts

.wrch_vdu28a
    php
    pha
    cmp #&20
    bcc ca42e
    lda #&1f
.ca42e
    sta l0089
    cmp l00de
    bcc ca438
    lda #&80
    sta l0080
.ca438
    lda #<wrch_vdu28b
    sta wrcvec
    lda #>wrch_vdu28b
    sta wrcvec+1
    pla
    plp
    rts

.wrch_vdu28b
    php
    pha
    clc
    adc #1
    cmp #&19
    bcc ca44d
    lda #&18
.ca44d
    cmp #2
    bcs ca453
    lda #2
.ca453
    clc
    adc #&80
    sta l0086
    cmp l00df
    beq ca45e
    bcs ca462
.ca45e
    lda #&80
    sta l0080
.ca462
    lda #<wrch_vdu28c
    sta wrcvec
    lda #>wrch_vdu28c
    sta wrcvec+1
    pla
    plp
    rts

.wrch_vdu28c
    php
    pha
    cmp #&20
    bcc ca477
    lda #&1f
.ca477
    cmp l0089
    bcs ca47d
    lda l0089
.ca47d
    sta l0088
    cmp l00de
    beq ca485
    bcs ca489
.ca485
    lda #&80
    sta l0080
.ca489
    lda l0088
    sec
    sbc l0089
    sta l0081
    inc l0081
    lda #<wrch_vdu28d
    sta wrcvec
    lda #>wrch_vdu28d
    sta wrcvec+1
    pla
    plp
    rts

.wrch_vdu28d
    php
    pha
    stx l00e4
    sty l00e5
    cmp #&17
    bcc ca4ab
    lda #&16
.ca4ab
    clc
    adc #&80
    sta l0087
    tay
    iny
    cpy l0086
    bcc ca4bd
    ldy l0086
    dey
    dey
    sty l0087
    tya
.ca4bd
    cmp l00df
    bcs ca4c5
    bit l0080
    bpl ca4c8
.ca4c5
    jsr vdu30_entry
.ca4c8
    jmp ca5c2

.vdu23_entry
    lda #<wrch_vdu23a
    sta wrcvec
    lda #>wrch_vdu23a
    sta wrcvec+1
    rts

.wrch_vdu23a
    php
    pha
    stx l00e4
    sty l00e5
    cmp #&7f
    bcs ca4e4
    cmp #&20
    bcs ca4e6
.ca4e4                     ; character out of range
    lda #&7e               ; redefine the lttle used ~ character (was space)
.ca4e6
    jsr sub_ca977
    lda l00e0
    sta l0082
    lda l00e1
    sta l0083
    lda #0
    sta l0080
    lda #<wrch_vdu23b
    sta wrcvec
    lda #>wrch_vdu23b
    sta wrcvec+1
    jmp ca5cc

.wrch_vdu23b
    php
    pha
    stx l00e4
    sty l00e5
    ldy l0080
    sta (l0082),y
    iny
    sty l0080
    cpy #8
    bcc ca516
    jmp ca5c2

.ca516
    jmp ca5cc

.vdu01_entry
    lda #<wrch_vdu01
    sta wrcvec
    lda #>wrch_vdu01
    sta wrcvec+1
    rts

.wrch_vdu01
    php
    pha
    stx l00e4
    sty l00e5
    jsr kern_send_A_to_printer
    jmp ca5c2

.vdu31_entry
    lda #<wrch_vdu31a
    sta wrcvec
    lda #>wrch_vdu31a
    sta wrcvec+1
    rts

.wrch_vdu31a
    php
    pha
    sta l0080
    stx l00e4
    sty l00e5
    jsr vdu30_entry
    inc l0080
.loop_ca548
    dec l0080
    beq ca552
    jsr vdu09_entry
    jmp loop_ca548

.ca552
    lda #<wrch_vdu31b
    sta wrcvec
    lda #>wrch_vdu31b
    sta wrcvec+1
    jmp ca5cc

.wrch_vdu31b
    php
    pha
    sta l0080
    stx l00e4
    sty l00e5
    inc l0080
.loop_ca569
    dec l0080
    beq ca573
    jsr ca6b3
    jmp loop_ca569

.ca573
    jmp ca5c2

.vdu22_entry
    lda #<wrch_vdu22
    sta wrcvec
    lda #>wrch_vdu22
    sta wrcvec+1
    rts

.wrch_vdu22
    php
    pha
    stx l00e4
    sty l00e5
    jsr vdu26_entry
    jsr vdu12_entry
    pla
    pha
    cmp #1
    bcc ca5c2
    bne ca59d
    lda #&30
    ldx #&84
.ca599
    ldy #&0f
    bne ca5bb
.ca59d
    cmp #2
    bne ca5a7
    lda #&70
    ldx #&86
    bne ca599
.ca5a7
    cmp #3
    bne ca5b1
    lda #&b0
    ldx #&8c
    bne ca599
.ca5b1
    cmp #4
    bne ca5c2
    lda #&f0
    ldx #&98
    ldy #&1f
.ca5bb
    sta pydis_end
    stx l0086
    sty l0088
.ca5c2
    lda #<wrch_default
    sta wrcvec
    lda #>wrch_default
    sta wrcvec+1
.ca5cc
    ldx l00e4
    ldy l00e5
    pla
    plp
    rts

.vdu04_entry
    jsr ca6fb
    lda #0
    sta l0084
    beq ca622
.vdu05_entry
    lda #&80
    sta l0084
    rts

.vdu14_entry
    lda #0
    beq ca5e7
.vdu15_entry
    lda #&80
.ca5e7
    sta l00e6
    rts

.vdu17_entry
    lda #<wrch_vdu17a
    sta wrcvec
    lda #>wrch_vdu17a
    sta wrcvec+1
    rts

.wrch_vdu17a
{
    php
    pha
    stx l00e4
    sty l00e5
    cmp #&80
    bcs done         ; Ignore background text colour changres
    and #&07
    beq black_text
.white_text          ; white text on black bachround
    lda font_ram     ; test the space character
    beq done
    bne invert
.black_text          ; black text on white background
    lda font_ram     ; test the space character
    bne done
.invert
    jsr vdu20_entry
.done
    jmp ca5c2
}

;.vdu17_entry
;    jsr sub_caa4e
;    jmp vdu20_entry

.vdu18_entry
    jsr sub_caa08
    jmp vdu20_entry

.vdu19_entry
    jsr sub_caa14
    jsr sub_ca7d7
    jmp ca6fb

.vdu21_entry
    lda #&80
    sta l0085
    rts

.vdu26_entry
    lda #&98
    sta l0086
    lda #&80
    sta l0087
    lda #0
    sta l0089
    lda #&1f
    sta l0088
    lda #&20
    sta l0081
    rts

.vdu12_entry
    jsr vdu30_entry
    jsr sub_caa5a
    jsr sub_ca7d7
.ca622
    jmp ca6fb

.sub_ca625
    jsr vdu08_entry
    lda l00e4
    pha
    lda l00e5
    pha
    lda #&20
    jsr sub_ca931
    pla
    sta l00e5
    pla
    sta l00e4
    jmp vdu08_entry

.vdu09_entry
    jsr ca6fb
    bit l0084
    bpl ca64f
    inc l008a
    lda l008a
    cmp #5
    bne ca64f
    lda #1
    sta l008a
.ca64f
    lda l008a
    cmp #3
    beq ca658
    jsr ca8ad
.ca658
    jmp ca6fb

.vdu30_entry
    jsr ca6fb
    lda l0089
    sta l00de
    lda l0087
    sta l00df
    lda #4
    sta l008a
    bne ca658
.vdu11_entry
    jsr ca6fb
    dec l00df
    lda l00df
    cmp l0087
    bcs ca679
    inc l00df
.ca679
    jmp ca6fb

.vdu08_entry
    jsr ca6fb
    lda l00de
    cmp l0089
    bne ca69a
    lda l00df
    cmp l0087
    beq ca6ae
    dec l00df
    jsr ca6fb
.loop_ca690
    jsr vdu09_entry
    lda l00de
    cmp l0088
    bcc loop_ca690
    rts

.ca69a
    bit l0084
    bpl ca6a6
    dec l008a
    bne ca6a6
    lda #4
    sta l008a
.ca6a6
    lda l008a
    cmp #2
    beq ca6ae
    dec l00de
.ca6ae
    jmp ca6fb

    equb &29, &3b

.ca6b3
    jsr ca6fb
.sub_ca6b6
    inc l00df
    lda l00df
    cmp l0086
    bcc ca6d1
    dec l00df
    bit l00e6
    bmi ca6f8
.loop_ca6c4
    bit lb001
    bmi loop_ca6c4
    lda l0087
    sta l00df
    lda l0089
    sta l00de
.ca6d1
    bit l00e6
    bmi ca6f5
    ldy #0
    ldx var_inv_screen
    lda l0089
    sta l0082
    lda l00df
    sta l0083
.ca6e2
    txa
    sta (l0082),y
    iny
    cpy l0081
    bcc ca6e2
    clc
    lda l0082
    adc #&20
    sta l0082
    ldy #0
    bcc ca6e2
.ca6f5
    jmp ca6fb

.ca6f8
    jsr sub_ca9c0
.ca6fb
    ldy #&e0
    bit l0084
    bpl ca707
    lda l008a
    cmp #4
    bcc ca70e
.ca707
    lda (l00de),y
    eor #&fc
    sta (l00de),y
    rts

.ca70e
    cmp #1
    bne ca720
    lda (l00de),y
    eor #&f0
    sta (l00de),y
    dey
    lda (l00de),y
    eor #3
    sta (l00de),y
    rts

.ca720
    cmp #2
    bne ca732
    lda (l00de),y
    eor #&c0
    sta (l00de),y
    dey
    lda (l00de),y
    eor #&0f
    sta (l00de),y
    rts

.ca732
    lda (l00de),y
    eor #&3f
    sta (l00de),y
    rts

.ca739
    ldy #0
    ldx #0
.loop_ca73d
    lda (l00e0,x)
    lsr a
    lsr a
    sta l0082
    lda (l00de),y
    and #&c0
    ora l0082
    sta (l00de),y
    cpy #&e0
    beq ca758
    clc
    tya
    adc #&20
    tay
    inc l00e0
    bne loop_ca73d
.ca758
    jmp ca8ad

.ca75b
    dec l00de
    ldx #0
    ldy #1
.ca761
    dey
    stx l0082
    lda (l00e0,x)
    lsr a
    ror l0082
    lsr a
    ror l0082
    lsr a
    ror l0082
    lsr a
    ror l0082
    pha
    lda #&c0
    and l0082
    sta l0082
    pla
    and #&0f
    sta l0083
    lda (l00de),y
    and #&f0
    ora l0083
    sta (l00de),y
    iny
    lda (l00de),y
    and #&3f
    ora l0082
    sta (l00de),y
    cpy #&e1
    beq ca79c
    clc
    tya
    adc #&20
    tay
    inc l00e0
    bne ca761
.ca79c
    inc l00de
    rts

.ca79f
    dec l00de
    lda #0
    tay
    tax
.ca7a5
    iny
    stx l0082
    lda (l00e0,x)
    asl a
    rol l0082
    asl a
    rol l0082
    and #&f0
    sta l0083
    lda (l00de),y
    and #&0f
    ora l0083
    sta (l00de),y
    dey
    lda (l00de),y
    and #&fc
    ora l0082
    sta (l00de),y
    cpy #&e0
    beq ca7d2
    clc
    tya
    adc #&20
    tay
    inc l00e0
    bne ca7a5
.ca7d2
    inc l00de
    jmp ca8ad

.sub_ca7d7
    lda font_ram
    beq ca7f8
.vdu20_entry
    ldx #&ff
    ldy #0
    sty l0082
    ldy #<font_ram
    lda #>font_ram
    sta l0083
.ca7e8
    txa
    eor (l0082),y
    sta (l0082),y
    iny
    bne ca7e8
    inc l0083
    lda l0083
    cmp #>font_end
    bcc ca7e8
.ca7f8
    rts

.vdu06_entry
    lda #0
    sta l0085
    rts

.vdu_code_table
    equb 1
    equw vdu01_entry
    equb 2
    equw kern_send_A_to_printer
    equb 3
    equw kern_send_A_to_printer
    equb 4
    equw vdu04_entry
    equb 5
    equw vdu05_entry
    equb 6
    equw vdu06_entry
    equb 7
    equw kern_BEL
    equb 8
    equw vdu08_entry
    equb 9
    equw vdu09_entry
    equb &0a
    equw vdu10_entry
    equb &0b
    equw vdu11_entry
    equb &0c
    equw vdu12_entry
    equb &0d
    equw vdu13_entry
    equb &0e
    equw vdu14_entry
    equb &0f
    equw vdu15_entry
    equb &11
    equw vdu17_entry
    equb &12
    equw vdu18_entry
;   equb &13
;   equw vdu19_entry
    equb &14
    equw vdu20_entry
    equb &15
    equw vdu21_entry
    equb &16
    equw vdu22_entry
    equb &17
    equw vdu23_entry
    equb &1a
    equw vdu26_entry
    equb &1c
    equw vdu28_entry
    equb &1e
    equw vdu30_entry
    equb &1f
    equw vdu31_entry

.vdu_code_lookup
    ldy #0
.loop_ca84e
    cmp vdu_code_table,y
    beq ca85c
    iny
    iny
    iny
    cpy #vdu_code_lookup - vdu_code_table
    bcc loop_ca84e
    bcs ca86b
.ca85c
    iny
    ldx vdu_code_table,y
    stx l0082
    iny
    ldx vdu_code_table,y
    stx l0083
    jmp (l0082)

.ca86b
    rts

.vdu13_entry
    jsr sub_ca872
    jmp ca6fb

.sub_ca872
    jsr ca6fb
    lda l0089
    sta l00de
    lda #4
    sta l008a
    rts

.unreachable2
    jsr ca6fb
    lda l0089
    sta l00de
    lda l0087
    sta l00df
    jmp ca6fb

.ca88c
    ldx #0
    lda (l00e0,x)
    bit l0084
    bpl ca89e
    and #&fc
    sta l0082
    lda (l00de),y
    and #3
    ora l0082
.ca89e
    sta (l00de),y
    cpy #&e0
    bcs ca8ad
    clc
    tya
    adc #&20
    tay
    inc l00e0
    bne ca88c
.ca8ad
    lda l00de
    and #&1f
    cmp l0088
    bcs ca8b9
    inc l00de
    bne ca8bf
.ca8b9
    jsr sub_ca6b6
    jsr sub_ca872
.ca8bf
    rts

.ca8c0
    lda #<workspace_rom
    sta l0088
    lda #>workspace_rom
    sta l0089
    lda #<workspace_ram
    sta l008a
    lda #>workspace_ram
    sta l008b
    ldx #3
    ldy #0
.ca8d4
    lda (l0088),y
    sta (l008a),y
    iny
    bne ca8d4
    inc l0089
    inc l008b
    dex
    bne ca8d4
.ca8e2
    jmp cac00

    equb &52, &fe

.ca8e7
    lda #<wrch_default
    sta wrcvec
    lda #>wrch_default
    sta wrcvec+1
    lda #&80
    sta l00df
    sta l0087
    sta l00e6
    sta l0084
    lda #0
    sta l00de
    sta l0089
    sta l0085
    lda #<font_ram
    sta l008b
    lda #>font_ram
    sta l008c
    lda #&98
    sta l0086
    lda #4
    sta l008a
    lda #&1f
    sta l0088
    lda #&20
    sta l0081
    lda #&ff
    nop
    nop
    nop
    jsr sub_caa14
    lda pydis_end
    ora #&f0
    sta pydis_end
    jmp ca381

.wrch_default
    jsr kern_send_A_to_printer
.sub_ca931
    sty l00e5
    stx l00e4
    php
    pha
    cld
    bit l0085
    bpl ca94e
    cmp #6
    bne ca970
    lda #0
    sta l0085
    lda #&f0
    ora pydis_end
    sta pydis_end
    bne ca970
.ca94e
    cmp #&7f
    bne ca956
    jsr sub_ca625
    sec
.ca956
    bcs ca970
    cmp #&20
    bcs ca962
    jsr vdu_code_lookup
    clc
    bcc ca970
.ca962
    jsr ca6fb
    pla
    pha
    jsr sub_ca977
    jsr sub_ca996
    jsr ca6fb
.ca970
    pla
    plp
    ldy l00e5
    ldx l00e4
    rts

.sub_ca977
    sec
    sbc #&20
    sta l00e0
    lda #0
    asl l00e0
    rol a
    asl l00e0
    rol a
    asl l00e0
    rol a
    sta l00e1
    lda l008b
    adc l00e0
    sta l00e0
    lda l008c
    adc l00e1
    sta l00e1
    rts

.sub_ca996
    bit l0084
    bpl ca9aa
    inc l008a
    lda l008a
    cmp #5
    bne ca9a6
    lda #1
    sta l008a
.ca9a6
    cmp #1
    bne ca9af
.ca9aa
    ldy #0
    jmp ca88c

.ca9af
    cmp #2
    bne ca9b6
    jmp ca79f

.ca9b6
    cmp #3
    bne ca9bd
    jmp ca75b

.ca9bd
    jmp ca739

.sub_ca9c0
    ldy #0
    lda l0087
    sta l0083
    inc l0083
    lda l0089
    sta l0082
.ca9cc
    lda (l0082),y
    dec l0083
    sta (l0082),y
    inc l0083
    iny
    cpy l0081
    bcc ca9cc
    clc
    lda l0082
    adc #&20
    sta l0082
    ldy #0
    bcc ca9cc
    inc l0083
    lda l0083
    cmp l0086
    bcc ca9cc
    dec l0083
    ldy #0
    lda var_inv_screen
    tax
.ca9f4
    sta (l0082),y
    iny
    cpy l0081
    bcc ca9f4
    clc
    lda l0082
    adc #&20
    sta l0082
    txa
    ldy #0
    bcc ca9f4
    rts

.sub_caa08
    lda #&ff
    eor var_inv_screen
    sta var_inv_screen
    lda #&ff
    bne caa19
.sub_caa14
    lda #0
    sta var_inv_screen
.caa19
    sta var_inv_charset
    lda l0081
    pha
    lda l0086
    pha
    lda l0087
    pha
    lda l0088
    pha
    lda l0089
    pha
    lda #&98
    sta l0086
    lda #&80
    sta l0087
    lda #&1f
    sta l0088
    lda #0
    sta l0089
    jsr sub_caa62
    pla
    sta l0089
    pla
    sta l0088
    pla
    sta l0087
    pla
    sta l0086
    pla
    sta l0081
    rts

.sub_caa4e
    lda #&ff
    eor var_inv_screen
    sta var_inv_screen
    lda #&ff
    bne caa5f
.sub_caa5a
    lda #0
    sta var_inv_screen
.caa5f
    sta var_inv_charset
.sub_caa62
    lda l0087
    sta l0083
    lda l0089
    sta l0082
    ldy #0
    lda l0088
    sec
    sbc l0089
    sta l0081
    inc l0081
    ldx var_inv_charset
.caa78
    txa
    and (l0082),y
    eor var_inv_charset
    sta (l0082),y
    iny
    cpy l0081
    bcc caa78
    lda l0082
    clc
    adc #&20
    sta l0082
    ldy #0
    bcc caa78
    inc l0083
    lda l0083
    cmp l0086
    bcc caa78
    rts

.caa99
    ldx #0
.loop_caa9b
    ldy l0003
    dey
.loop_caa9e
    iny
    lda (l0005),y
    cmp #&20
    beq loop_caa9e
.loop_caaa5
    lda command_table,x
    bmi caabc
    cmp (l0005),y
    bne caab2
    inx
    iny
    bne loop_caaa5
.caab2
    inx
    lda command_table,x
    bpl caab2
    inx
    inx
    bne loop_caa9b
.caabc
    sta l00ca
    lda command_table+1,x
    sta l00c9
    jsr basic_post_test
    jmp (l00c9)

.command_table
    equs "COLD"
    equb >(ca8c0)
    equb <(ca8c0)
    equs "WARM"
    equb >(ca8e2)
    equb <(ca8e2)
    equs 5, "["
    equb >(basic_next_statement)
    equb <(basic_next_statement)
    equs "FAST"
    equb >(cab7e)
    equb <(cab7e)
    equs "SLOW"
    equb >(cab8d)
    equb <(cab8d)
    equb >(basic_next_statement)
    equb <(basic_next_statement)
.bget_bput_vectors
    equw bget_slow, bput_slow, bget_fast, bput_fast

.bput_slow
    stx l00ec
    sty l00c3
    php
    sei
    pha
    jsr kern_tape_byte_to_checksum
    sta l00c0
    jsr kern_wait_for_2400_falling
    lda #&0a
    sta l00c1
    clc
.cab03
    bcc cab11
    ldx #7
    stx lb002
    ldx #1
    jsr kern_wait_for_N_2400_falling
    bmi cab1f
.cab11
    lda #4
    sta lb002
    jsr kern_wait_for_2400_falling
    inc lb002
    jsr kern_wait_for_2400_falling
.cab1f
    sec
    ror l00c0
    dec l00c1
    bne cab03
    ldy l00c3
    ldx l00ec
    pla
    plp
    sta l803f
    rts

.bget_slow
    stx l00ec
    sty l00c3
    php
    sei
.loop_cab36
    lda #&7e
    sta l00c0
.loop_cab3a
    jsr kern_count_tape_pulse_duration
    bcc loop_cab36
    inc l00c0
    bpl loop_cab3a
.loop_cab43
    lda #&12
    sta l00c4
    ldx #0
    ldy lb002
.loop_cab4c
    jsr kern_test_tape_input
    beq cab51
.cab51
    beq cab54
    inx
.cab54
    dec l00c4
    nop
    nop
    bne loop_cab4c
    cpx #3
    ror l00c0
    bcc loop_cab43
    lda l00c0
    plp
    ldy l00c3
    ldx l00ec
    pha
    clc
    adc l00dc
    sta l00dc
    pla
.loop_cab6e
    sta l803f
    rts

.bget_fast
    jsr kern_tape_get_byte
    jmp loop_cab6e

.bput_fast
    sta l803f
    jmp kern_tape_put_byte

.cab7e
    jsr kern_print_string
    equs "FAST COS"

    ldy #3
    bne cab9a
.cab8d
    jsr kern_print_string
    equs "SLOW COS"

    ldy #7
.cab9a
    ldx #3
.loop_cab9c
    lda bget_bput_vectors,y
    sta bgtvec,x
    dey
    dex
    bpl loop_cab9c
    jsr OSCRLF
    jsr kern_rts
    jmp basic_next_statement

    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff

.cac00
    lda #&aa
    sta plotvec
    lda #&f7
    sta plotvec+1
    lda #&15
    jsr kern_nvwrch
    lda lodvec+1
    cmp #&f9
    bne cac19
    jsr sub_cacb0
.cac19
    jmp ca8e7

    equb &ff, &ff, &ff, &ff

.vdu10_entry
    bit lb001
    bvs cac64
    txa
    pha
    tya
    pha
    jsr kern_scan_keyboard
    cpy #0
    bne cac60
    jsr kern_wait_100ms
.loop_cac33
    jsr kern_scan_keyboard
    bcc loop_cac33
.cac38
    jsr kern_scan_keyboard
    bcs cac38
    cpy #&3b
    beq cac60
    bit lb001
    bvs cac38
    cpy #0
    php
    beq cac55
    tya
    sbc #&20
    ldx l00e4
    ldy l00e5
    jsr wrch_default
.cac55
    jsr kern_wait_100ms
.loop_cac58
    jsr kern_scan_keyboard
    bcc loop_cac58
    plp
    bne cac38
.cac60
    pla
    tay
    pla
    tax
.cac64
    jmp ca6b3

    equb &ff, &ff, &ff, &ff

.loop_cac6b
    jsr kern_wait_100ms
    beq cac87
.cac70
    jsr kern_scan_keyboard
    ldx #5
    bcs loop_cac6b
    bit l00e8
    bpl cac7d
    ldx #&20
.cac7d
    bit lb002
    bvs cac84
    ldx #2
.cac84
    jsr cac96
.cac87
    sty l00e8
    jsr kern_scan_keyboard
    bcs cac87
    jsr kern_scan_keyboard
    bcs cac87
    jmp ca3b1

.cac96
    stx l00e9
    jsr kern_wait_vsync
    jsr kern_scan_keyboard
    bcs caca5
    ldx l00e9
    dex
    bne cac96
.caca5
    rts

    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff

.sub_cacb0
    ldx #7
    bne cacb6
    ldx #3
.cacb6
    ldy #3
.loop_cacb8
    lda load_save_vectors,x
    sta lodvec,y
    dex
    dey
    bpl loop_cacb8
    rts

.load_save_vectors
    equw kern_load, kern_save, load_fast, save_fast

.load_fast
    jsr kern_load
    jmp cacd4

.save_fast
    jsr kern_save
.cacd4
    ldx #3
.loop_cacd6
    lda #7
    jsr OSWRCH
    dex
    bpl loop_cacd6
    rts

    equb &ff

.cace0
    ldx #3
.loop_cace2
    lda mos_vectors,x
    sta wrcvec,x
    dex
    bpl loop_cace2
    jsr kern_print_string
    equs 6, &0c

    nop
    rts

    equb &ff, &ff
.mos_vectors
    equw kern_nvwrch, kern_nvrdch
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff

.debounce
    ldx #0
.loop_cad02
    lda cad10,x
    sta debounce_ram,x
    inx
    cpx #&37
    bne loop_cad02
    jmp debounce_ram

.cad10

    org &9800
.debounce_ram
    lda #6
    sta debounce_delay
    lda rdcvec
    cmp #<rdch_with_delay
    bne c9816
    lda rdcvec+1
    cmp #>rdch_with_delay
    beq c9829
    lda rdcvec
.c9816
    sta old_rdcvec
    lda rdcvec+1
    sta old_rdcvec+1
    lda #<rdch_with_delay
    sta rdcvec
    lda #>rdch_with_delay
    sta rdcvec+1
.c9829
    rts

.rdch_with_delay
    txa
    pha
    ldx debounce_delay
    jsr kern_wait_x_vsyncs
    pla
    tax
    jmp (old_rdcvec)

.old_rdcvec
    org cad10 + (old_rdcvec - debounce_ram)
    copyblock debounce_ram, old_rdcvec, cad10
    clear debounce_ram, old_rdcvec

.pad1
    for i,1,&afd0-pad1
        equb &ff
    next

    equs "(C) A.E.KNOWLES 1983."
    equb &0d

.pad2
    for i,1,&aff0-pad2
        equb &ff
    next

.jump_block
    jmp ca8c0

    jmp ca8e2

    jmp cab7e

    jmp cab8d

    jmp cace0

    equb &ff

.pydis_end

save pydis_start, pydis_end
