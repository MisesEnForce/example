; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_006_4077

    ld h, h
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, d
    ld h, d
    ldh [c], a
    ldh [c], a
    cp c
    cp c
    or h
    or h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst RST_30
    rst RST_30
    rst RST_38
    rst RST_38
    ld a, a
    ld a, h
    ld [hl], a
    ld a, b
    rst RST_38
    ldh [$ffdd], a
    db $dd
    ld a, a
    ld a, a
    rst RST_30
    ld hl, sp-$21
    ldh [$ff7f], a
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rla
    jr jr_006_40c2

    add b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38

jr_006_404b:
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    ret nc

    jr nc, jr_006_404b

    ld [$00f8], sp
    ld hl, sp+$00
    pop af
    ld bc, $11f1
    db $eb
    dec hl
    jp nz, $0002

    nop
    ld b, b
    ld b, b
    ld h, d
    ld h, d
    inc h
    inc h
    ld h, d
    ld h, d
    or d
    or d
    or h
    or l
    ld sp, hl
    ld hl, sp+$00
    nop
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca

jr_006_4077:
    ld [$101f], sp
    rra
    nop
    rra
    nop
    rra
    jr nz, jr_006_4087

    ld b, $c7
    ld b, a
    jp $e723


jr_006_4087:
    rla
    rst RST_38
    rrca
    rst RST_38
    rlca
    rst RST_38
    rlca
    ei
    rlca
    ld h, b
    ld h, b
    ld c, b
    ld c, b
    ld h, b
    ld h, b
    jr nc, @+$32

    or d
    or d
    and e
    and e
    ld h, [hl]
    and $c6
    ld b, [hl]
    dec bc
    inc c
    sbc a
    sub b
    sbc a
    add b
    ld e, a
    ld b, b
    rrca
    nop
    rrca
    ld [$5457], sp
    rst RST_18
    call c, Call_000_18e8
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    nop

jr_006_40c2:
    add b
    add b
    add sp, $18
    ld a, [$fe06]
    ld bc, $00ff
    rst RST_38
    nop
    rst RST_38
    nop
    ld [$0008], sp
    nop
    db $10
    db $10
    jr jr_006_40f0

    adc h
    adc h
    db $fc
    inc a
    add sp, $18
    db $fd
    dec b
    nop
    nop
    db $10
    db $10
    jr nz, jr_006_4106

    jr nz, jr_006_4108

    ld [hl], c
    ld [hl], c
    ld [hl], e
    ld [hl], e
    ld a, [hl-]
    ld a, [hl-]
    ld a, b
    ld a, b

jr_006_40f0:
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    dec l
    dec l
    dec c
    dec c
    rrca
    rrca

jr_006_4106:
    ld a, [bc]
    ld a, [bc]

jr_006_4108:
    inc bc
    inc bc
    ld b, l
    ld b, l
    ld c, l
    ld c, l
    ld h, $26
    ei
    ei
    rst RST_38
    rst RST_38
    cp a
    cp [hl]
    rst RST_18
    call c, $f8ff
    ld a, a
    ld [hl], b
    rst RST_38
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_006_4128:
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    inc b
    inc b
    ld [$0c08], sp
    inc c
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, d
    inc d
    inc d
    inc e
    inc e
    cp [hl]
    cp [hl]
    ld [$1008], sp
    db $10
    sub b
    sub b
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, [hl]
    ld d, l
    ld d, l
    sbc $de
    cp [hl]
    cp [hl]
    jp z, $ec0a

    inc l
    ei
    dec sp
    ei
    dec sp
    rst RST_38
    rra
    rst RST_38
    rrca
    rst RST_38
    inc bc
    rst RST_38
    nop
    ld e, c
    ld e, b
    ei
    ld a, [$bebf]
    cp h
    cp l
    sbc $de
    cp $fe
    rst RST_38
    rst RST_38
    rst RST_30
    ld sp, hl
    cp a
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    ei
    inc c
    ld sp, hl
    ld a, [bc]
    ld [hl], c
    adc b
    rst RST_38
    ret nz

    rst RST_28
    ret nc

    rst RST_38
    ld [bc], a
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_18
    jr nc, jr_006_4128

    ld d, b
    adc [hl]
    ld de, $03ff
    rst RST_30
    dec bc

jr_006_4190:
    rst RST_10
    ld d, a
    di
    ld [hl], e
    rst RST_30
    ld [hl], a
    ld a, [hl]
    cp $fd
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_28
    sbc a
    ld a, a
    ld a, h
    rst RST_38
    db $fc
    rst RST_38
    db $fc
    rst RST_38
    db $fc
    rst RST_38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    db $fd
    inc bc
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    reti


    reti


    pop de
    pop de
    db $e3
    ld h, e
    or $36
    cp $1e
    rst RST_38
    rrca
    rst RST_38
    rlca
    rst RST_38
    inc bc
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nz, jr_006_4216

    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld [$2008], sp
    jr nz, jr_006_4190

    adc a
    ld c, a
    ld c, a
    ld d, $17
    xor l
    xor [hl]
    cpl
    inc l
    dec sp
    inc a
    cp a
    cp b
    or a
    cp b
    cp a
    ret nz

    ld a, a
    add b
    rst RST_38
    nop

jr_006_4216:
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1808], sp
    jr jr_006_427b

    db $10
    db $10
    stop
    nop
    rst RST_30
    ret c

    db $ed
    dec de
    ldh a, [rDIV]
    ld hl, sp+$08
    ldh a, [$ff0a]
    rst RST_38

jr_006_427b:
    dec b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_28
    dec de
    or a
    ret c

    rrca
    jr nz, jr_006_42a6

    db $10
    rrca
    ld d, b
    rst RST_38
    and b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_006_42a6:
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    jr nz, jr_006_42e2

    jr nz, jr_006_42e4

    nop
    nop
    ret nz

    ret nz

    add d
    add d
    inc h
    inc h
    ld h, $26
    ld h, d
    ld h, d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $fd
    inc bc

jr_006_42e2:
    cp $01

jr_006_42e4:
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    or c
    or c
    push af
    push af
    ld h, [hl]
    and $b2
    ld [hl], d
    db $e3
    inc hl
    jp z, $fa2a

    ld a, [de]
    db $ec
    inc e
    rrca
    ld [$0407], sp
    rlca
    inc b
    rst RST_00
    call nz, $04c7
    add d
    ld b, l
    adc a
    add hl, bc
    or $78
    jp $8342


    ld [bc], a
    ld bc, $8482
    add a
    rlca
    dec b
    rlca
    dec b
    ld b, $04
    nop
    ld b, $81
    add d
    nop
    ld bc, $0101
    add hl, sp
    add hl, sp
    add hl, sp
    ld hl, $2931
    jr jr_006_4357

    db $10
    ld hl, $20c0
    ret nz

    ld b, b
    nop
    add b
    sbc h
    sbc h
    sbc h
    sub b
    jr jr_006_434c

    jr jr_006_434e

    cpl
    scf
    ld [hl], h
    adc h
    jr nz, jr_006_4394

    ld h, b
    ld b, b
    ld b, e
    ld h, e
    ld h, a
    ld h, h
    rlca
    ld b, h

jr_006_434c:
    add $85

jr_006_434e:
    ld a, [bc]
    call z, $1213
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    nop

jr_006_4357:
    ld bc, $1919
    ld de, $1819
    db $10
    jr z, jr_006_4390

    call z, $884c
    ld [$1890], sp
    sub c
    sbc c
    add hl, bc
    add hl, de
    ld sp, $3121
    ld hl, $6151
    ld a, h
    inc b
    ld hl, sp-$80
    ldh a, [$ff88]
    ld [hl], b
    adc b
    ld hl, sp+$08
    pop af
    ld bc, $01f1
    ldh [rNR10], a
    inc b
    inc b
    ld [$080c], sp
    inc c
    rst RST_38
    ei
    cp $00
    db $fd
    ld bc, $02ff
    rra
    db $10

jr_006_4390:
    jr nc, @+$4a

    ld [hl], b
    ld d, b

jr_006_4394:
    ld b, b
    ld h, b
    ld h, a
    ld h, a
    rst RST_00
    add h
    add d
    ld b, h
    bit 1, l
    adc e
    inc c
    rra
    jr nz, jr_006_43b2

    db $10
    rra
    db $10
    ld e, $11
    rrca
    ld de, $203e
    sbc $e0
    db $fc
    ld [bc], a
    and c
    ld h, c

jr_006_43b2:
    nop
    add b
    nop
    nop
    jr @+$1a

    jr c, @+$22

    jr c, @+$22

    jr nc, jr_006_43e6

    ld e, b
    ld l, b
    db $e3
    ld [bc], a
    pop bc
    and d
    ld h, c
    ld [hl+], a
    ld h, l
    ld h, $c7
    add l
    rst RST_00
    add l
    ld b, d
    add h
    jp nz, Jump_000_1c44

    inc d
    jr @+$12

    jr jr_006_43e6

    nop
    jr jr_006_4411

    jr z, @+$33

    ld hl, $2131
    jr nc, jr_006_4400

    ld b, $05
    ld a, [bc]
    ld c, $08
    inc c

jr_006_43e6:
    db $f4
    db $fc
    ld hl, sp+$00
    ldh a, [$ff08]
    ld sp, hl
    add hl, bc
    ld de, $0611
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop hl
    db $e3
    ldh [$ff83], a
    ld b, h
    add a
    ld a, d
    cp l
    ld a, [hl]
    add c

jr_006_4400:
    db $fc
    ld [bc], a
    ld c, $0a
    inc c
    ld [$0c00], sp
    sbc h
    sub h
    add hl, de
    ld de, $3920
    add hl, sp
    jr z, jr_006_4451

jr_006_4411:
    ld b, [hl]
    ld c, [hl]
    ld c, d
    adc $ca
    ld c, h
    ret z

    adc h
    ld [$0884], sp
    nop
    adc h
    add h
    adc h
    inc bc
    inc bc
    rlca
    ld bc, $0406
    ld h, b
    ld h, d
    ld h, d
    ld b, d
    jr nz, jr_006_446c

    jr nz, jr_006_446e

    ret nz

    and b
    ccf
    jr nz, jr_006_4453

    jr nz, @+$22

    jr nz, jr_006_4458

    ld hl, $7959
    ld [hl], c
    ld b, c
    ld [hl], b
    ld b, c
    ld [hl], d
    ld d, e
    adc $48
    ld c, $88
    ld c, $88
    adc h
    adc d
    inc d
    sbc b
    sbc h
    sub b
    inc e
    db $10
    inc e
    db $10
    inc a

jr_006_4451:
    inc h
    inc a

jr_006_4453:
    inc h
    jr c, @+$22

    jr c, jr_006_4478

jr_006_4458:
    ld d, b
    ld l, b
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld hl, $6251
    ld d, e
    or e
    jp nc, $82e3

    db $e3
    add d
    ld b, e
    and d
    ld b, l
    and [hl]

jr_006_446c:
    rst RST_20
    inc h

jr_006_446e:
    rst RST_00
    inc b
    ldh [rNR10], a
    ldh a, [rNR10]
    pop hl
    ld bc, $02e3

jr_006_4478:
    jp $c322


    ld [hl+], a
    pop hl
    ld [hl+], a
    pop bc
    ld [bc], a
    cpl
    jr nc, @+$41

    jr nz, @+$01

    ldh [rIE], a
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    add b
    nop
    add b
    nop
    ret nz

    ld b, b
    cp $3e
    db $fc
    nop
    db $fc
    nop
    sbc h
    sub b
    inc e
    inc d
    cp $82
    ld a, h
    ld b, b
    ld a, h
    ld b, b
    ld a, h
    ld b, b
    ld a, b
    ld b, h
    inc a
    ld b, h
    jr c, jr_006_44ee

    jr c, jr_006_44f0

    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], b
    ld b, c
    ld h, b
    ld d, c
    or e
    jp nc, $82e3

    db $e3

Jump_006_44bd:
    add d
    pop hl
    add d
    jp z, $8e4c

    ld a, [bc]
    adc [hl]
    ld a, [bc]
    add h
    ld [$8804], sp
    sub h
    sbc b
    sbc h
    sub h
    jr @+$12

    jr nz, jr_006_4502

    ld d, b
    ld [hl], b
    ld h, c
    ld b, c
    ld h, e
    ld b, d
    ld h, e
    ld b, d
    ld b, e
    ld h, d
    ld h, c
    ld h, d
    add c
    jp nz, Jump_000_3020

    jr nc, @+$22

    ld hl, sp-$18
    rst RST_38
    rlca
    rst RST_38
    nop
    rst RST_38
    nop
    di
    ld [de], a

jr_006_44ee:
    db $e3
    ld [bc], a

jr_006_44f0:
    ld e, $11
    ld c, $09
    ld c, $09
    adc $c9
    adc [hl]
    add hl, bc
    add a
    add hl, bc
    add a
    add hl, bc
    add [hl]
    adc b
    inc hl
    ld [hl-], a

jr_006_4502:
    ld de, $6332
    ld b, b
    cp a
    call c, $807f
    rst RST_38
    nop
    ld a, a
    add b
    ld a, a
    add b
    sbc h
    sub h
    jr @+$12

    jr jr_006_4526

    rst RST_38
    rst RST_30
    ld hl, sp+$0f
    rst RST_38
    rra
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    db $e4
    and h
    call nz, $c484
    add [hl]

jr_006_4526:
    cp c
    rst RST_38
    ld b, [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    ld [bc], a
    dec b
    ld b, $07
    inc b
    ei
    db $fc
    rlca
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    nop
    nop
    add b
    add b
    ld bc, $be81
    ld a, a
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_30
    rrca
    rst RST_18
    ccf
    ldh [$ff81], a
    db $e3
    add d
    ld b, e
    and d
    db $dd
    ld a, $ff
    nop
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ret nz

    nop
    add b
    ld b, b
    add b
    ld b, b
    cp a
    ld a, a
    rst RST_38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst RST_38
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    ld b, b
    rst RST_38
    cp a
    db $fc
    inc bc
    rst RST_38
    rlca
    rst RST_38
    rrca
    rst RST_38
    rrca
    ld a, $21
    ld e, [hl]
    ld h, c
    ld a, [hl]
    ld b, c
    rst RST_38
    ret nz

    ccf
    ret nz

    rst RST_38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
    nop
    add c
    add c
    ld a, [hl]
    rst RST_38
    rst RST_38
    nop
    cp $01
    cp $01
    rst RST_38
    nop
    ld hl, sp-$80
    db $fc
    add h
    ld a, b
    add h
    db $fd
    inc bc
    rst RST_38
    nop
    cp $ff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rlca
    inc b
    ld bc, $0102
    nop
    di
    ldh a, [c]
    db $fd
    ld c, $ff
    nop
    rst RST_28
    ldh a, [$fffb]
    db $fc
    nop
    nop
    nop
    nop
    add c
    add c
    cp $7f
    pop af
    rrca
    rst RST_28
    rra
    rst RST_38
    rra
    rst RST_18
    ccf
    ret nz

    add b
    ret nz

    add b
    ld b, b
    ret nz

    rst RST_38
    rst RST_38
    ret nz

    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jr nz, jr_006_4602

    ld b, b
    ld h, b
    ld [hl], b
    ld d, b
    rst RST_08
    rst RST_38
    ccf
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst RST_38
    cp $1e
    db $10
    inc e
    ld [de], a
    inc l
    ld [hl-], a
    db $dd
    db $e3
    rst RST_38
    nop
    rst RST_38
    nop
    cp $01
    cp $01
    ld a, a
    add b

jr_006_4602:
    rst RST_38
    add c
    db $fd
    add e
    cp a
    jp $c7bf


    or a
    rst RST_08
    rst RST_38
    rst RST_08
    rst RST_28
    rst RST_18
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    jp $99c3


    sbc c
    ccf
    ccf
    inc hl
    inc hl
    dec sp
    dec sp
    ld [hl-], a
    ld [hl-], a
    add d
    add d
    rst RST_38
    db $fc
    ld h, $25
    ld h, $26
    inc h
    inc h
    inc b
    inc b
    ld l, h
    ld l, h
    ld c, h

Jump_006_463d:
    ld c, h
    ld c, [hl]
    ld c, [hl]
    rst RST_38
    ld a, a
    inc e
    inc e
    ld c, c
    ld c, c
    ret


    ret


    call z, $cfcc
    rst RST_08
    sub e
    sub e
    jr c, jr_006_4688

    rst RST_38
    rst RST_38
    jr c, jr_006_468c

    sub b
    sub b
    db $fc
    db $fc
    ld a, h
    ld a, h
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, c
    ld a, c
    ld a, a
    add b
    jr @+$0a

    ld h, $20
    db $e3
    db $e4
    ldh [$fff1], a
    db $fc
    ldh a, [$ffcc]
    ret nz

    pop bc
    ldh [rIE], a
    rrca
    ld b, e
    adc e
    ld l, c
    ld bc, $11c9
    ld hl, sp+$00
    ldh [c], a
    ld a, [de]
    or b
    ld [hl], d
    ld [hl], e
    di
    rst RST_38
    ldh a, [$ff2c]
    ld [hl-], a
    jr c, jr_006_468a

    jr c, jr_006_4689

jr_006_4688:
    ld a, c

jr_006_4689:
    ld h, b

jr_006_468a:
    ld [hl], c
    ld a, b

jr_006_468c:
    ld a, c
    ld a, b
    ld a, h
    ld a, h
    cp $01
    inc c
    ld [de], a
    add h
    ld c, h
    ret


    add hl, sp
    add hl, de
    add hl, de
    ret


    add hl, de
    sbc c
    add hl, bc
    inc d
    inc c
    rst RST_38
    rst RST_38
    jr c, jr_006_46dc

    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sub e
    sub e
    inc sp
    inc sp
    ld [hl], b
    ld [hl], b
    rst RST_38
    cp $73
    ld [hl], e
    or e
    or e
    inc sp
    inc sp
    ld [hl], a
    ld [hl], a
    daa
    daa
    daa
    daa
    ld h, c
    ld h, c
    rst RST_38
    ccf
    ld d, $96
    sub [hl]
    sub [hl]
    or d
    or d
    or b
    or b
    inc [hl]
    inc [hl]
    ld h, h
    ld h, h
    ld h, [hl]
    ld h, [hl]
    rst RST_38
    rst RST_38
    ld h, c
    ld h, c
    ld c, h
    ld c, h
    ld c, a
    ld c, a
    db $e3
    db $e3
    ld sp, hl
    ld sp, hl

jr_006_46dc:
    sbc c
    sbc c
    jp $ffc3


    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp $01
    rst RST_38
    add c
    cp a
    pop bc
    db $fd
    jp $e3fd


    db $ed
    di
    rst RST_38
    di
    rst RST_30
    ei
    rst RST_38
    rst RST_18
    rst RST_18
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp $ff
    rst RST_38
    rst RST_38
    xor $ff
    or $ff
    rst RST_20
    rst RST_38
    di
    rst RST_38
    cp c
    rst RST_38
    ld hl, sp-$01
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ccf
    rst RST_38
    ld a, l
    rst RST_38
    db $eb
    rst RST_38
    or e
    rst RST_38
    ret c

    rst RST_38
    ld l, b
    rst RST_38
    ld b, b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    sub b
    rst RST_38
    jr @+$01

    jr nc, @+$01

    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_28
    rst RST_38
    and $ff
    ld [hl], e
    rst RST_38
    ld a, e
    rst RST_38
    rst RST_10
    rst RST_38
    add $ff
    add d
    rst RST_38
    sbc $e1
    rst RST_38
    pop bc
    cp l
    jp $83fd


    cp $81
    cp a
    jp nz, $cbfd

    rst RST_38
    push hl
    rst RST_28
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_18
    rst RST_38
    ld a, [$72ff]
    rst RST_38
    ld d, l
    rst RST_38
    ld b, d
    rst RST_38
    add d
    rst RST_38
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    ld a, e
    add a
    rst RST_38
    add e
    cp l
    jp $c1bf


    ld a, a
    add c
    db $fd
    ld b, e
    cp a
    db $d3
    rst RST_38
    and a
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    ld a, a
    add b
    sbc a
    ld a, a
    xor $7f
    or e
    ld a, a
    add $7d
    call nc, $916f
    ld a, [hl]
    ld a, a
    add b
    cp $01
    db $dd
    cp $f3
    cp $81
    cp $d3
    db $fc
    dec c
    or $eb
    cp h
    ld a, [hl]
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_38
    ei
    ei
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    dec de
    dec de
    ld a, $25
    ld a, l
    ld b, e
    ei
    and a
    db $fd
    sub a
    and $9b
    sub $a9
    ei
    or l
    or b
    or b
    ld hl, sp+$48
    ld a, h
    add h
    cp [hl]
    jp z, $d27e

    adc $b2
    rst RST_10
    add hl, hl
    cp e
    ld e, l
    inc bc
    inc bc
    ld c, $0d
    dec e
    inc de
    scf
    dec hl
    ld l, d
    ld d, l
    ld l, l
    ld d, d
    rst RST_18
    and b
    sbc $a1
    add b
    add b
    ret nc

    ld d, b
    ld a, b
    xor b
    db $ec
    sub h
    ld d, [hl]
    xor d
    or [hl]
    ld c, d
    ei
    dec b
    ei
    dec b
    inc bc
    inc bc
    rrca
    inc c
    dec e
    inc de
    ld [hl], $2f
    ld l, h
    ld e, e
    ld a, [hl]
    ld d, e
    db $ec
    sub a
    db $dd
    cp [hl]
    ret z

    ret z

    db $fc
    inc [hl]
    halt
    xor d
    halt
    adc d
    db $db
    ld h, l
    cp e
    push bc
    ld a, a
    add c
    rst RST_20
    ld a, c
    inc bc
    inc bc
    rrca
    inc c
    dec e
    inc de
    ld [hl], $2f
    ld l, h
    ld e, e
    ld a, [hl]
    ld d, e
    db $ec
    sub a
    db $dd
    cp [hl]
    ret z

    ret z

    db $fc
    inc [hl]
    halt
    xor d
    halt
    adc d
    db $db
    ld h, l
    cp e
    push bc
    ld a, e
    add l
    rst RST_28
    ld [hl], c
    nop
    nop
    nop
    nop
    ld de, $3b11
    ld a, [hl+]
    ld a, [hl]
    ld b, l
    db $fd
    and e
    ret c

    or a
    call c, $00b7
    nop
    nop
    nop
    ld [$9c08], sp
    sub h
    cp $62
    ld a, a
    adc c
    scf
    reti


    ld [hl], a
    reti


    nop
    nop
    nop
    nop
    db $10
    db $10
    add hl, sp
    add hl, hl
    ld l, a
    ld d, [hl]
    sub $a9
    jp c, $fda5

    add d
    nop
    nop
    nop
    nop
    adc b
    adc b
    call c, Call_006_7654
    xor d
    xor e
    push de
    ld e, e
    and l
    cp a
    ld b, c
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec c
    ld a, [bc]
    ld a, [de]
    rla
    jr nc, jr_006_48fd

    ld [hl-], a
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_006_4900

    db $fc
    call nc, Call_000_2af6
    db $db
    ld h, l
    ld e, e
    push hl
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld c, $0a
    dec de
    dec d
    dec [hl]
    ld l, $61
    ld e, [hl]
    ld h, h
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld hl, sp-$58
    db $ec
    ld d, h
    or [hl]

jr_006_48fd:
    jp z, $cab6

jr_006_4900:
    db $eb
    or a
    db $dd
    xor e
    jp nc, Jump_006_79ad

    ld b, [hl]
    inc [hl]
    cpl
    ld a, e
    ld c, h
    ld a, l
    ld e, [hl]
    ccf
    nop
    or a
    db $dd
    ld a, e
    and l
    rst RST_18
    ld l, l
    scf
    call $e21e
    cp h
    ld [hl], h
    ld hl, sp+$00
    nop
    nop
    call c, $d8a3
    and a
    ld l, c
    ld d, a
    ld l, e
    ld d, a
    jr nc, @+$31

    ld [hl], a
    ld c, h
    cpl
    ld e, $3f
    nop
    ld a, e
    add l
    dec sp
    push bc
    sub [hl]
    ld [$cab6], a
    inc e
    db $e4
    xor h
    ld [hl], h
    ld hl, sp+$00
    nop
    nop
    rst RST_30
    cp d
    rst RST_38
    and l
    rst RST_30
    adc e
    ld a, h
    ld h, e
    rra
    dec de
    ld a, [de]
    rla
    ccf
    cpl
    rra
    nop
    dec de
    db $fd
    rst RST_30
    adc l
    ccf
    call $d23e
    ld a, $da
    ld h, h
    and h
    or b
    ld d, b
    ldh [rP1], a
    rst RST_30
    cp d
    rst RST_38
    and l
    rst RST_30
    adc e
    ld a, h
    ld h, e
    dec e
    inc de
    ld [hl], $29
    ld a, e
    ld e, h
    ccf
    nop
    rla
    ld sp, hl
    rst RST_30
    sbc c
    ld h, a
    cp c
    ld a, [hl]
    or d
    cp [hl]
    jp z, $ec5c

    db $fc
    db $f4
    ldh a, [rP1]
    and $9d
    ld [hl], d
    ld l, a

jr_006_4984:
    ld l, b
    ld d, a
    rst RST_10
    cp d
    ei
    and h
    ld a, b
    ld b, a
    inc sp
    inc l
    rra
    nop
    rst RST_08
    ld [hl], l
    sbc [hl]
    ldh [c], a
    dec sp
    db $dd
    rst RST_08
    or c
    sbc [hl]
    ld l, [hl]
    jr c, jr_006_4984

    db $fc
    ld [hl], h
    ld hl, sp+$00
    rst RST_38
    and b
    ld a, e
    ld b, h
    reti


    cp [hl]
    ldh a, [$ff8f]
    ld a, b
    ld [hl], a
    dec e
    rla
    ccf
    ld l, $1f
    nop
    rst RST_38
    ld bc, $956f
    ld b, [hl]
    cp d
    dec bc
    db $fd
    sbc a
    push hl
    sbc $e2
    call z, $f834
    nop
    ld l, [hl]
    ld d, a
    ld l, h
    ld e, a
    ld h, c
    ld e, [hl]
    ld a, [hl]
    ld c, c
    jr c, jr_006_4a01

    rrca
    add hl, bc
    rra
    rla
    rra
    db $10
    ccf
    pop bc
    ld e, a
    xor l
    xor [hl]
    halt
    ld e, h
    or h
    inc a
    call nc, $a878
    ld [hl], b
    or b
    ldh [rNR41], a
    call c, $d8af
    cp a
    jp $fcbc


    sub e
    ld [hl], b
    ld l, a
    dec sp
    ld h, $7d
    ld e, [hl]
    ld a, a
    ld b, c
    ld a, [hl]
    add d
    sbc [hl]
    ld l, d
    ld a, h
    db $f4
    db $ec
    inc d
    ld a, b
    xor b
    ldh a, [rNR10]
    jr @-$16

    ld hl, sp+$08
    rrca

jr_006_4a01:
    rrca
    ld a, [de]
    dec d
    ccf
    jr nz, jr_006_4a82

    ld b, a
    ld e, l
    ld l, e
    cp [hl]
    ret


    push de
    xor a
    rst RST_18
    or h
    ldh [$ffe0], a
    or b
    ld d, b
    ld hl, sp+$08
    cp h
    call nz, $ac74
    ld a, [$5e26]
    ld [$51ef], a
    rrca
    rrca
    ld a, [de]
    dec d
    ccf
    jr nz, jr_006_4aa6

    ld b, b
    ld e, e
    ld h, h
    cp h
    jp $b0df


    rst RST_18
    cp b
    ldh [$ffe0], a
    or b
    ld d, b
    ld hl, sp+$08
    db $fc
    inc b
    or h
    ld c, h
    ld a, d
    add [hl]
    or $1a
    or $3a
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    dec c
    dec bc
    ld e, $1b
    ccf
    ld [hl+], a
    ld l, a
    ld d, a
    rst RST_08
    or b
    ldh a, [$fff0]
    ld e, h
    xor h
    ld a, [$ee06]
    sub d
    or e
    ld c, l
    cp l
    ld b, e
    ld a, a
    or c
    rst RST_00
    ld a, c
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    dec c
    dec bc
    ld c, $0b
    rra
    ld a, [de]
    ld a, a
    ld h, b
    rst RST_28
    push de
    ldh a, [$fff0]
    ld e, h
    xor h
    ld a, [$ee06]
    sub d
    or e
    ld c, l
    cp l
    ld b, e
    rst RST_38
    ld sp, $f9c7
    rlca
    rlca

jr_006_4a82:
    rrca
    ld [$171a], sp
    dec c
    dec bc
    dec de
    rla
    ccf
    scf
    ld [hl], a
    ld c, a
    rst RST_10
    xor a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$ffa0], a
    ldh a, [$ffd0]
    ld hl, sp-$28
    call c, $dee4
    ld [$0707], a
    rrca
    ld [$171a], sp

jr_006_4aa6:
    dec c
    dec bc
    dec de
    rla
    ccf
    inc sp
    ld [hl], a
    ld c, c
    rst RST_10
    xor a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$ffa0], a
    ldh a, [$ffd0]
    ld hl, sp-$68
    call c, $de24
    ld [$0000], a
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $1f
    db $10
    dec [hl]
    ld a, [hl+]
    ld h, a
    ld e, b
    inc a
    inc a
    ld a, [hl]
    ld b, d
    db $db
    cp l
    rst RST_38
    ld [hl], c
    halt
    ld a, [$bae6]
    or $8a
    xor [hl]
    ld [hl], d
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    rrca
    dec c
    rra
    db $10
    ld a, $27
    ld a, b
    ld a, b
    db $fc
    add h
    or [hl]
    ld a, d
    cp $e2
    db $ec
    db $f4
    call z, $ec74
    inc d
    ld e, h
    db $e4
    rst RST_38
    add h
    rst RST_38
    or e
    db $eb
    or h
    halt
    ld c, a
    ld l, a
    ld e, c
    add hl, sp
    ld h, $3e
    cpl
    rra
    nop
    rst RST_38
    ld c, l
    rst RST_10
    xor l
    adc a
    ld [hl], c
    ld l, $d6
    db $fc
    add h
    sbc b
    ld l, b
    ldh a, [rP1]
    nop
    nop
    xor $9d
    ldh a, [$ffaf]
    sub $af
    ld h, [hl]
    ld e, a
    ld l, a
    ld e, c
    add hl, sp
    ld h, $37
    cpl
    rra
    nop
    rst RST_28
    ld [hl], l
    sbc e
    push hl
    ld c, $f2
    inc l
    call nc, $84fc
    sbc b
    ld l, b
    ldh a, [rP1]
    nop
    nop
    rst RST_18
    and l
    cp d
    call Call_006_6877
    ld l, $35
    ld e, $1d
    inc bc
    ld [bc], a
    rlca
    dec b
    inc bc
    nop
    add [hl]
    ld a, [$da26]
    jp Jump_006_633d


    db $fd
    db $eb
    sub l
    sbc [hl]
    ld h, d
    or $ea
    db $fc
    nop
    jp c, $d7ad

    xor b
    xor a
    sub $7e
    ld a, l
    ld b, $05
    rrca
    ld [$1718], sp
    rrca
    nop
    ld b, $fa
    and $1a
    inc bc
    db $fd
    dec de
    db $fd
    ld a, e
    and l
    rst RST_20
    add hl, de
    rst RST_38
    dec a
    ld a, $00
    ei
    or a
    rst RST_38
    xor b
    di
    xor a
    rst RST_10
    xor a
    or $cf
    ld l, a
    ld e, a
    ld [hl], $2f
    rrca
    nop
    cp a
    db $dd
    rst RST_30
    dec l
    di
    db $ed
    db $eb
    push af
    ld c, [hl]
    ldh a, [c]
    inc c
    db $f4
    ld hl, sp+$00
    nop
    nop
    ei
    or a
    db $fd
    adc e
    ld a, [$dba5]
    and [hl]
    or $8f
    ld l, a
    ld e, a
    ld [hl], $2f
    rrca
    nop
    cp a
    pop de
    ld a, a
    and l
    cp e
    ld h, l
    rst RST_28
    pop af
    ld b, [hl]
    ld a, [$f40c]
    ld hl, sp+$00
    nop
    nop
    dec a
    inc hl
    ccf
    dec hl
    ld [hl], a
    ld e, e
    ld a, h
    ld b, e
    ccf
    jr c, jr_006_4bd1

    dec b
    ld b, $05
    ld bc, $f600

jr_006_4bd1:
    ld a, [$fade]
    ld l, $da
    ld d, [hl]
    cp d
    or [hl]
    ld a, d
    ei
    db $fd
    ld a, e
    db $fd
    cp $00
    ld a, a
    ld d, a
    rst RST_28
    or a
    ld hl, sp-$79
    ld a, a
    ld [hl], b
    inc c
    dec bc
    dec c
    dec bc
    dec de
    rla
    rrca
    nop
    db $ec
    db $f4
    inc a
    db $f4
    ld e, h
    or h
    xor h
    ld [hl], h
    ld l, h
    db $f4
    or $fa
    ld a, [$fcfc]
    nop
    rst RST_20
    and a
    cp a
    ld e, b
    db $db
    ld h, a
    rst RST_38
    or a
    cp a
    ret


    ld a, a
    ld d, b
    ld a, a
    ld d, h
    ld a, e
    ld d, [hl]
    ld a, a
    ld d, b
    sub $a9
    jp $d6bc


    ld l, e
    db $fd
    ld l, e
    db $e4
    sbc e
    ret z

    or a
    ccf
    nop
    rra
    rra
    ccf
    jr nz, jr_006_4c94

    ld e, [hl]
    rst RST_18
    cp l
    rst RST_38
    and [hl]
    ld a, a
    ld b, e
    ld a, a
    ld c, c
    ld [hl], a
    ld e, c
    ret nz

    ld b, b
    ld h, b
    and b
    ldh a, [$ff90]
    ld e, b
    xor b
    ret c

    ld l, b
    db $ec
    db $f4
    ld l, h
    db $f4
    or $7a
    rst RST_20
    and a
    cp a
    ld e, b
    db $db
    ld h, a
    rst RST_38
    or a
    cp a
    rst RST_08
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld h, a
    ld e, a
    ld a, e
    ld b, a
    call nz, $c2bb
    cp l
    pop de
    ld l, [hl]
    rst RST_38
    ld l, a
    ldh [$ff9f], a
    ret nz

    cp a
    ccf
    nop
    inc bc
    inc bc
    rlca
    inc b
    dec c
    dec bc
    ld c, $0b
    rrca
    ld a, [bc]
    dec e
    inc de
    ld [hl-], a
    dec l
    ld l, [hl]
    ld e, l

jr_006_4c70:
    dec sp
    inc [hl]
    ld a, l
    ld [hl], e
    ld a, a
    ld e, b
    db $dd
    xor d
    rst RST_38
    xor d
    rst RST_28
    or d
    rst RST_10
    cp b
    xor d
    rst RST_10
    rst RST_38
    nop
    db $db
    rst RST_20
    scf
    ld hl, sp-$32
    dec a
    di
    adc a
    ld l, l
    rst RST_10
    xor a
    ld [hl], d
    cp a
    ld d, l
    or a
    rst RST_08
    db $e3
    cp a

jr_006_4c94:
    ret c

    cp a
    or a
    rst RST_08
    xor a
    ret nc

    xor a
    call c, $bedd
    ld sp, hl
    cp [hl]
    ld l, [hl]
    sbc c
    ld a, l
    adc a
    cpl
    sub $f7
    set 3, l
    ld a, [hl+]
    ld l, a
    db $f4
    ld [hl], a
    res 7, e
    ld a, h
    cp e
    ld b, h
    rst RST_10
    jr c, jr_006_4c70

    ld a, h
    ei
    inc h
    rst RST_30
    sbc b
    cp $bd
    db $db
    or l
    cp $91
    add $39
    cp $05
    rst RST_18

jr_006_4cc5:
    ld a, $fb
    rlca
    or l
    ld a, e
    ld a, [$b3bd]
    call c, $9867
    rlca
    rlca
    rrca
    ld [$161d], sp
    inc sp
    ld l, $75
    ld e, e
    ei
    cp l
    rst RST_18
    and l
    cp a
    ld a, c
    db $db
    and $37
    rst RST_08
    ld l, [hl]
    sbc a
    ld l, h
    sbc a
    rst RST_38
    jr jr_006_4cc5

    daa
    rst RST_18
    dec a
    ccf
    ld b, b
    jp z, Jump_006_7f35

Call_006_4cf3:
    cp h
    ld b, a
    cp h
    rst RST_10
    inc l
    rst RST_10
    inc a
    rst RST_00
    cp h
    and $5d
    db $fc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld [hl], a
    halt
    ld a, a
    ld b, l
    ld l, a
    ld d, b
    ld a, $29
    inc b
    inc b
    adc [hl]
    adc d
    cp $72
    rst RST_30
    add hl, hl
    ld l, e
    sbc h
    rst RST_38
    nop
    or l
    ld a, [hl]
    cp l
    jp $2b36


    ld a, c
    ld b, [hl]
    db $db
    xor h
    and $99
    ld l, l
    ld d, e
    ld a, [$db85]
    and [hl]
    ld a, l
    ld b, e
    rst RST_38
    nop
    or l
    ld a, [hl]
    ld [hl], h
    adc a
    db $eb
    ld d, a
    rst RST_28
    rla
    db $db
    daa
    ld [hl], h
    adc a
    srl h
    ld a, l
    ld b, e
    ld l, a
    ld d, d
    ld a, [hl]
    ld h, c
    dec sp
    dec [hl]
    rra
    dec d
    dec de
    inc d
    ld a, [de]
    dec d
    rrca
    nop
    or $1a
    ld d, $ea
    ld l, $d2
    inc l
    call nc, $94fc
    add $3a
    inc bc
    db $fd
    cp $00
    ld a, [hl]
    ld e, a
    ld a, a
    ld d, a
    ld l, a
    ld d, e
    ld l, a
    ld e, c
    inc sp
    cpl
    inc e
    inc de
    dec bc
    inc c
    rlca
    rlca
    rst RST_18
    ld h, c
    cp $59
    cp $25
    rst RST_38
    sbc b
    db $dd
    cp [hl]
    rst RST_28
    cp d
    rst RST_10
    xor b
    cp $81
    nop
    nop
    push hl
    ld a, a
    ei
    ld e, a
    db $d3
    inc l
    db $ed
    ld [hl-], a
    ld a, [$db17]
    cpl
    cp a
    ld [hl], a
    rlca
    rlca
    rrca
    ld [$161d], sp
    inc sp
    ld l, $75
    ld e, e
    db $db
    cp l
    rst RST_08
    or l
    or a
    ld a, c
    rst RST_18
    inc sp
    xor [hl]
    ld a, c
    db $db
    cp a
    cp a
    push de
    rst RST_38
    ld d, b
    ld a, a
    ret


    xor $57
    ld [hl], l
    jp c, $79ef

    sbc $61
    cp [hl]
    ld e, c
    rst RST_38
    and h
    rst RST_38
    sbc b
    db $dd
    cp [hl]
    rst RST_28
    cp d
    sub $a9
    cp $55
    xor $53
    xor $59
    xor l
    rst RST_10
    ld c, a
    cp b
    and a
    ld a, a
    ld [hl], c
    cp $fb
    db $fc
    ld l, a
    sub l
    cp $3d
    jp $c33c


    inc a
    db $d3
    inc a
    jp nc, Jump_006_652d

    sbc e
    cp a
    ret nz

    di
    db $fd
    call nz, Call_000_1efb
    pop hl
    cp $15
    ld a, d
    db $ec
    rst RST_30
    jr @-$0f

    ldh a, [$ff3c]
    jp nz, Jump_006_7fb2

    rst RST_10
    ccf
    rst RST_20
    rra
    or c
    ld a, [hl]
    xor e
    ld a, h
    nop
    rst RST_38
    inc h
    db $db
    rst RST_38
    nop
    rrca
    ld a, [bc]
    ld d, $19
    ld a, [hl-]
    dec h
    ld l, l
    ld d, a
    ld h, e
    ld e, a
    reti


    xor a
    db $ec
    or a
    rst RST_18
    or e
    rlca
    dec b
    dec c
    ld a, [bc]
    dec de
    rla
    scf
    cpl
    ld sp, $672f
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld h, l
    ld e, [hl]
    ei
    dec d
    ld l, $d9
    xor l
    rst RST_10
    push de
    db $eb
    xor [hl]
    push af
    ld [hl], a
    ld a, [$fd7b]
    cp l
    ld a, [hl]
    db $db
    cp h
    rst RST_38
    cp b
    rst RST_38
    cp b
    rst RST_10
    cp [hl]
    ld l, [hl]
    ld e, l
    ld l, l
    ld e, a
    ld h, [hl]
    ld e, a
    ld sp, $5e2e
    cp a
    xor [hl]
    ld e, a
    pop hl
    ccf
    or h
    ld e, a
    jp $d43f


    ccf
    cp e
    ld a, a
    halt
    db $fd
    ld e, $11
    rrca
    dec c
    rlca
    dec b
    ld b, $05
    inc bc
    ld [bc], a
    rra
    inc e
    ld a, $23
    dec a
    ld d, $ad
    cp $cb
    db $fc
    rst RST_18
    ldh a, [$ff37]
    ld hl, sp-$29
    ld hl, sp+$6f
    ldh a, [$ffc7]
    jr c, @-$23

    db $ec
    rst RST_38
    xor a
    rst RST_38
    ld d, e
    db $eb
    ld d, l
    rst RST_18
    ld h, l
    or l
    ld a, e
    ld l, e
    or [hl]
    rst RST_10
    cp d
    rst RST_30
    cp d
    rst RST_38
    nop
    cp $41
    cp e
    ld h, l
    rst RST_38
    dec [hl]
    xor $55
    ld [hl], a
    cp $ab
    rst RST_30
    db $fd
    and e
    push af
    cp d
    xor $b1
    jp z, $ddbd

    cp [hl]
    ldh [$ffdf], a
    ld a, a
    ld h, b
    halt
    ld l, a
    db $ec
    rst RST_18
    ld a, e
    xor h
    db $ed
    ld [hl], $df
    or b
    ld l, d
    push de
    db $dd
    ld h, e
    or a
    ld a, b
    ld a, a
    cp h
    sbc $3f
    reti


    and [hl]
    and a

jr_006_4eb3:
    ld a, b
    di
    ld a, h
    and a
    ld a, b
    db $db
    cp h
    or $bd
    rst RST_18
    or l
    xor $91
    db $eb
    inc e
    rst RST_38
    ld bc, $3adf
    ld a, e
    push hl
    rst RST_28
    dec e
    ld a, [$b3bd]
    call c, $906f
    ld [bc], a
    rlca
    ld c, $0f
    dec e
    rra
    add hl, de
    ccf
    dec sp
    ccf
    dec a
    dec sp
    inc e
    scf
    rra
    ld d, $0b
    rlca
    rlca
    ld [bc], a
    ld b, $01
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $08f8
    ldh a, [rSVBK]
    ret nz

    ld b, b
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    or b
    ld d, b
    ldh a, [rP1]
    rst RST_38
    sbc b
    ld a, [hl]
    ld b, e
    ld a, e
    ld e, h
    ld a, [hl]
    ld b, c
    cp a
    cp h
    call $6f4b
    xor b
    db $fd
    sub $e0
    jr nz, jr_006_4eb3

    ld b, b
    ldh [rNR41], a
    ldh [$ffa0], a
    ldh [$ff60], a
    ldh a, [rP1]
    add sp, -$10
    db $f4
    ld e, b
    ld a, l
    ld d, [hl]
    db $eb
    or h
    db $dd
    and e
    rst RST_38
    sub [hl]
    rst RST_30
    xor l
    halt
    ld l, l
    dec de
    inc d
    rrca
    ld [$a87f], sp
    sbc $21
    and l
    db $db
    ei
    cp l
    xor [hl]
    ld [hl], l
    rst RST_30
    ld e, b
    cp a
    ld l, b
    rst RST_18
    jr nz, @+$03

    ld bc, $0203
    ld b, $05
    dec c
    dec bc
    rrca
    dec bc
    ld c, $09
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    ld hl, sp-$08
    db $fc
    inc b
    or $fa
    db $e3
    db $fd
    jp $f3fd


    dec e
    rst RST_30
    add hl, sp
    sub $ea
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    inc b
    ld b, $05
    rrca
    dec c
    rra
    db $10
    scf
    cpl
    cpl
    ld a, [de]
    cp $82
    ei
    dec d
    rst RST_38
    db $10
    rst RST_28
    dec [hl]
    rst RST_18
    ldh [$ff3d], a
    sub $ff
    jr nc, @-$01

    add $3c
    inc a
    ld a, [hl]
    ld b, d
    db $d3
    cp l
    ei
    cp l
    db $d3
    cp l
    jp Jump_006_7ebd


    ld b, d
    inc a
    inc a
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    ld b, $05
    rrca
    dec bc
    ld c, $09
    dec c
    dec bc
    rst RST_28
    rst RST_28
    rst RST_38
    jr jr_006_4fff

    rst RST_20
    xor $f7
    sbc c
    rst RST_30
    jp z, $f5f7

    ld a, [$f9a6]
    dec de
    rla
    add hl, de
    rla
    inc e
    rla
    rra
    inc de
    add hl, de
    rla
    rrca
    dec bc
    rrca
    add hl, bc
    dec c
    dec bc
    dec e
    db $e3
    sub [hl]
    ei
    rst RST_20
    ld hl, sp-$23
    db $e3
    halt
    ld sp, hl
    dec h
    ld a, [$e77a]
    call Call_000_1ef3
    ld de, $2e35
    ld l, [hl]
    ld e, a
    ld a, e
    ld e, l
    ld [hl], l
    ld e, e
    ld [hl], h
    ld e, e
    xor $b1
    rst RST_38
    nop
    ld a, a
    jp $b74a


    or l
    ld a, d
    call $fa7a
    ld c, l
    sub $6d
    sbc e
    ld h, [hl]

jr_006_4fee:
    rst RST_38
    nop
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld [hl], e
    ld e, l
    pop de
    cp [hl]
    rst RST_18
    cp [hl]
    ld hl, sp-$41
    jp hl


jr_006_4fff:
    sbc a
    rst RST_18
    di
    rst RST_08
    jr nc, jr_006_4fee

    ld [hl], $a6
    rst RST_18
    rst RST_20
    rra
    ei
    dec l
    db $dd
    ld l, $fd
    ld e, [hl]
    db $ec
    inc [hl]
    halt
    sbc d
    cp e
    ld c, l
    sbc $25
    ld e, l
    and [hl]
    rst RST_28
    jp nc, $d2af

    rst RST_28
    ld [de], a
    dec sp
    inc [hl]
    ld a, [de]
    dec d
    rra
    rla
    rrca
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld e, a
    ei
    cp a
    add [hl]
    ld a, e
    rst RST_38

jr_006_5037:
    dec b
    rst RST_28
    or l
    ld a, e
    ld b, d
    nop
    nop
    nop
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    cp e
    ld b, h
    rst RST_28
    db $10
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    cp a
    ld b, b
    rst RST_38
    nop
    rst RST_38
    nop
    db $fd
    ld [bc], a
    rst RST_28
    db $10
    rst RST_38
    nop
    ld e, e
    and h
    ld a, [$b705]
    ld c, b
    db $fd
    ld [bc], a
    jr nc, jr_006_5037

    jp nz, Jump_006_5f3d

    cp l
    nop
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_28
    db $10
    dec bc
    db $f4
    rst RST_28
    db $10
    add hl, de
    and $75
    cp d
    adc [hl]
    ld [hl], a
    ld a, b
    rst RST_38
    ld a, [hl-]
    rst RST_38
    push de
    scf
    ld [hl+], a
    db $e3
    and e
    ld h, e
    or [hl]
    ld [hl], a
    sbc l
    ld a, a
    add d
    ld a, a
    ld b, l
    cp d
    or e
    call z, $8e75
    dec a
    jp nz, Jump_006_5daa

    ld h, l
    and [hl]
    rst RST_30
    inc [hl]
    db $db
    inc a
    xor [hl]
    ld d, c
    ld e, h
    db $e3
    ret c

    and a
    ld d, h
    xor h
    ret z

    ld a, b
    add sp, $58
    xor l
    ld e, l
    ld c, a
    cp a
    ld [hl], a
    xor a
    ret z

    scf
    ld a, d
    add a
    xor l
    jp nc, Jump_006_675a

    pop de
    jp hl


    ret


    ld sp, hl
    sbc d
    rst RST_20
    ld e, l
    ldh [c], a
    ld c, c
    cp [hl]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$ff80], a
    ld hl, sp-$1c
    ld hl, sp-$16
    db $fc
    ld [hl], d
    db $fc
    sub l
    ld [bc], a
    ld b, d
    add b
    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    ld e, l
    and d
    ld a, e
    and [hl]
    ld h, a
    cp h
    sbc e
    ld h, h
    or b
    ld c, a
    rst RST_08
    cp a
    ld d, e
    or e
    and c
    ld h, c
    xor b
    ld d, a
    ld l, l
    sub d
    ld c, d
    or a
    or c
    reti


    ld [hl], h
    sbc l
    dec hl
    sub $a5
    jp c, $fa4d

    and c
    ld h, c
    sub e
    ld [hl], e
    cp [hl]
    ld a, a
    sub l
    ld a, a
    and b
    rst RST_18
    ld l, [hl]
    sub c
    db $e4
    dec sp
    rst RST_38
    ld [hl+], a
    sbc l
    ld [$edd2], a
    sbc d
    push hl
    ld a, [hl-]
    push bc
    ld [hl], h
    adc e
    sbc a
    ld l, d
    db $ed
    ld a, [hl-]
    db $f4
    dec hl
    ret nc

    ld e, a
    rrca
    adc a
    ld b, b
    ret nz

    or d
    ld [hl], d
    ld h, a
    and a
    ld e, c
    cp a
    ld h, d
    sbc l
    db $dd
    ld a, $65
    and $d2
    db $d3
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    pop bc
    cp $1f
    jr nz, jr_006_5189

    or e
    xor c
    ld [hl], l
    and [hl]
    rst RST_20
    ld b, d
    jp Jump_006_67e6


    cp $7f
    cp l
    ld a, [hl]
    jp z, Jump_006_613d

    sbc [hl]
    ccf
    ret nz

    jp Jump_006_7d3f


    add e
    jp c, Jump_006_653d

    and [hl]
    rst RST_20
    inc h
    db $db
    inc a
    xor [hl]
    ld d, c
    ld e, h
    db $e3
    sub e
    ld l, a
    ld e, h
    and h
    ld l, b
    sub b
    adc b
    ld [hl], b
    ld e, d

jr_006_5189:
    jp nc, Jump_000_33bb

    cp b
    ld [hl-], a
    xor l
    scf
    db $fd
    cp $07
    rlca
    inc a
    ccf
    and b
    and c
    and d
    and a
    ld a, [hl+]
    xor a
    ret nc

    ld a, a
    jp c, $a877

    scf
    rra
    and b
    ld c, l
    ldh a, [c]
    db $dd
    ld h, e
    xor $52
    ld a, l
    pop de
    daa
    db $db
    sub [hl]
    ld l, c
    jp hl


    ld d, $bf
    ld b, b
    sbc $21
    di
    db $fd
    inc de
    dec e
    rst RST_20
    ld sp, hl
    xor h
    or e
    dec e
    ldh [c], a
    or e
    ld [hl], e
    ld b, d
    jp nz, $c242

    ld e, $9e
    ccf
    cp a
    add hl, sp
    cp c
    inc sp
    or e
    scf
    or a
    dec de
    inc e
    dec b
    ld b, $1d
    ld e, $7d
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld [hl], c
    halt
    ld b, l
    ld d, [hl]
    push bc
    sub $75
    push af
    dec [hl]
    or l
    ld h, l
    push af
    ld l, $bf
    ld l, [hl]
    rst RST_38
    dec l
    rst RST_38
    adc h
    ld a, a
    pop bc
    ld a, $81
    sub $0d
    ld e, [hl]
    add hl, hl

jr_006_51f5:
    ld a, [hl]
    adc c
    cp $89
    sbc $01
    sbc $23
    db $fc
    adc l
    ld [hl], d
    add h
    add h
    nop
    adc a
    add c
    pop af
    ld l, a
    ld a, a
    add b
    rst RST_38
    ld c, h
    rst RST_08
    ld a, h
    rst RST_38
    nop
    rst RST_38
    inc b
    add h
    nop
    adc a
    add hl, bc
    ld sp, hl
    ccf
    rst RST_38
    nop
    rst RST_38
    sbc l
    sbc a
    pop af
    rst RST_38
    nop
    rst RST_38
    ld a, e
    rst RST_38
    ld b, d
    rst RST_38
    jr nc, jr_006_51f5

    call c, $19e3
    and $7f
    add b
    db $eb
    inc d
    rst RST_38
    nop
    cp e
    rst RST_38
    jr nz, @+$01

    ld c, l
    cp a
    ld b, b
    cp a
    ld [hl], e
    adc h
    xor $11
    cp [hl]
    ld b, c
    rst RST_38
    nop
    ccf
    rst RST_38
    ld a, a
    rst RST_38
    xor d
    xor d
    xor d
    xor d
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ei
    ei
    pop de
    pop de
    db $fc
    rst RST_38
    cp $ff
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    cp $ff
    cp $ff
    cp a
    cp a
    rla
    rla
    or c
    or c
    pop de
    pop de
    xor d
    xor d
    call nz, $e4c4
    db $e4
    call nz, $aac4
    xor d
    pop de
    pop de
    dec de
    dec de
    rla
    rla
    xor e
    xor e
    ld b, a
    ld b, a
    ld c, a
    ld c, a
    ld b, a
    ld b, a
    xor e
    xor e
    rla
    rla
    or c
    or c
    pop de
    pop de
    xor d
    xor d
    call nz, $e4c4
    db $e4
    call nz, $aac4
    xor d
    pop de
    pop de
    dec de
    dec de
    rla
    rla
    xor e
    xor e
    ld b, a
    ld b, a
    ld c, a
    ld c, a
    ld b, a
    ld b, a
    xor e
    xor e
    rla
    rla
    or c
    or c
    pop de
    pop de
    xor d
    xor d
    call nz, $e4c4
    db $e4
    call nz, $aac4
    xor d
    pop de
    pop de
    dec de
    dec de
    rla
    rla
    xor e
    xor e
    ld b, a
    ld b, a
    ld c, a
    ld c, a
    ld b, a
    ld b, a
    xor e
    xor e
    rla
    rla
    cp a
    ld b, b
    or a
    ld c, b
    ld l, c
    sub [hl]
    sbc $21
    sbc $21
    db $fc
    inc bc
    xor e
    ld d, h
    rst RST_30
    ld [$847b], sp
    ld a, e
    add h
    dec a
    jp nz, $34cb

    rst RST_30
    ld [$926d], sp
    xor a
    ld d, b
    rst RST_38
    nop
    rst RST_38
    nop
    cp $01
    rst RST_28
    db $10
    cp e
    ld b, h
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_006_52f0:
    cp e
    ld b, h
    rst RST_38
    nop
    rst RST_28
    db $10
    db $fd
    ld [bc], a
    rst RST_38
    nop
    rst RST_38
    nop
    cp a
    ld b, b
    rst RST_38
    nop
    rst RST_38
    nop
    sbc $21

jr_006_5304:
    ei
    inc b
    rst RST_30
    ld [$08f7], sp

jr_006_530a:
    ld a, b
    add a
    rlca
    ld hl, sp-$19
    jr jr_006_52f0

    jr nz, @+$01

    nop
    rst RST_30
    ld [$18e7], sp
    sbc c
    ld h, [hl]
    ld a, $c1
    sbc a
    ld h, b
    rst RST_10
    jr z, jr_006_5304

    inc e
    sbc h
    ld h, e
    ld a, a
    add b
    ld l, [hl]
    sub c

jr_006_5328:
    ld a, [hl]
    add c
    ei
    inc b
    db $ed
    ld [de], a
    or $09
    rst RST_08
    jr nc, jr_006_5350

    ldh [c], a
    dec a
    jp nz, Jump_006_6a95

    and e
    ld e, h
    cp a
    ld b, b
    sbc a
    ld h, b
    ld h, a
    sbc b
    cp a
    ld b, b
    adc $31
    ldh a, [c]
    dec c
    ld sp, $c7ce
    jr c, @-$12

    inc de
    sbc e
    ld h, a
    ld [hl], l
    adc l

jr_006_5350:
    ld a, e
    add h
    add a
    ld a, b
    halt
    adc c
    cp c
    ld b, [hl]
    add a
    ld a, b
    halt
    adc c
    ld sp, $9bce
    db $e4
    rst RST_10
    cpl
    di
    rrca
    add sp, $17
    ld e, l
    and d
    sbc a
    ld h, b
    rst RST_00
    jr c, jr_006_5328

    ld b, h
    ld a, [hl]
    add c
    cp e
    call nz, $e41b

jr_006_5374:
    add hl, sp
    add $56
    xor c
    rst RST_20
    jr jr_006_530a

    ld [hl], b
    halt
    adc c
    ld sp, hl
    ld b, $40
    ret nz

    jr nc, jr_006_5374

    and b
    ldh [$ff60], a
    ldh [rLCDC], a
    ret nz

    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$ffa0], a
    ldh [$ff80], a
    ldh [$ffc8], a
    ld hl, sp+$21
    db $fd
    ld b, l
    rst RST_00
    ld a, a
    rst RST_38
    sbc a
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_20
    rst RST_38
    or e
    cp a
    sbc c
    sbc a
    add b
    rst RST_38
    ld c, h
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    sub b
    ld l, a
    ld e, e
    and a
    ld l, [hl]
    sub [hl]
    adc d
    ld [hl], d
    ld a, d
    ldh a, [c]
    jp hl


    ld [hl], e
    call $cc77
    ld [hl], a
    ld bc, $07fe
    rlca
    ldh [rIE], a
    ld a, [$a2ff]
    cp a
    db $10
    cp a
    ret nz

    ld a, a
    adc b
    ld [hl], a
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    scf
    jr c, jr_006_544e

    ld c, h
    ld [hl], $ce
    ld [$df37], a
    db $10
    rst RST_18
    ld de, $10ce
    adc $10
    or e
    ld [hl], e
    ld [$5a88], sp
    ld h, a
    or h
    db $db
    cpl
    ret z

    rst RST_20
    ld [$88e7], sp
    rst RST_30
    sbc b
    xor $30
    xor $30
    rst RST_38
    ld hl, $21df
    rst RST_18
    ld hl, $21df
    cp $01
    cp $01
    rst RST_38
    sub b
    ld a, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    rst RST_28
    db $10
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_006_5440:
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_30
    ld [$08ff], sp
    rst RST_30
    nop
    db $e3
    inc d

jr_006_544e:
    db $e3
    inc d
    rst RST_28
    db $10
    rst RST_38
    db $10
    rst RST_28
    nop
    rst RST_20
    ld [$28cf], sp
    rst RST_08
    jr z, jr_006_5440

    inc h
    db $e3
    inc h
    rst RST_30
    inc d
    rst RST_30
    inc d
    push de
    ld [hl], $c1
    ld [hl+], a
    ld [hl+], a
    db $e3
    inc sp
    di
    add $fe
    ld e, l
    ld e, l
    rst RST_20
    inc h
    and a
    ld h, h
    and l
    ld h, [hl]
    inc l
    rst RST_28
    inc c
    rst RST_38
    xor $ef
    ld b, e
    ld d, e
    sbc l
    cp l
    sbc a
    ldh [$ffa7], a
    cp b
    ld c, [hl]
    ld e, a
    jr nc, jr_006_5500

    ld e, a
    ld a, a
    xor c
    cp [hl]
    ccf
    xor b
    ld d, e
    db $ec
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    scf
    jr c, jr_006_54d8

    ret nz

    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    and $df
    ld e, a
    ld a, a
    ld [$2768], sp
    ld l, a
    or b
    rst RST_38
    inc bc
    db $fc
    rra
    ldh [$ff3f], a
    ret nz

    ld a, a
    add b
    rst RST_08
    ldh a, [rTMA]
    rlca
    rst RST_20
    ld hl, sp+$7f
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    di
    rrca
    ld h, b
    ldh [$ffe7], a
    rra
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    pop af
    rrca
    dec [hl]
    db $fd
    ldh a, [c]
    ld a, [$1e0c]

jr_006_54d8:
    jp c, Jump_000_15fe

    db $fd
    sbc h
    ld [hl], l
    ld [$ff37], a
    nop
    rst RST_38
    nop
    cp $01
    db $ec
    inc e
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_00
    dec sp
    ld [$701e], a
    or $14
    ld d, $6d
    rst RST_38
    ret nz

    ccf
    ld a, [$fc07]
    inc bc

jr_006_5500:
    db $10
    db $10
    or $fe
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    adc e
    ei
    jr nz, jr_006_552c

    inc h
    dec h
    ld sp, hl
    ei
    add c
    sbc a
    inc e
    ccf
    jr nc, jr_006_5589

    ld [hl+], a
    ld h, e
    daa
    ld h, a
    ld b, c
    pop bc
    sub c
    sub c
    ld [hl+], a
    inc hl
    ld b, d
    ld b, [hl]
    add [hl]
    adc [hl]
    inc c
    inc e
    inc e
    ld a, h
    ld e, c
    reti


    add b
    add c

jr_006_552c:
    ld b, d
    jp $feb9


    dec d
    ld e, $2b
    inc [hl]
    ld e, [hl]
    ld h, c
    adc d
    rst RST_30
    ld a, [hl+]
    rst RST_30
    ld c, c
    sub $a9
    halt
    pop de
    ld l, $00
    ld de, $bb00
    nop
    xor e
    nop
    add e
    ld b, h
    rst RST_10
    nop
    rst RST_10
    nop
    rst RST_38
    nop
    rst RST_38
    ld c, b
    rst RST_08
    and h
    or a
    nop
    inc sp
    nop
    inc sp
    sub h
    or a
    ld c, b
    rst RST_08
    nop
    rst RST_38
    nop
    rst RST_38
    ld [$040f], sp
    sub a
    nop
    sub e
    nop
    sub e
    inc d
    sub a
    ld [$000f], sp
    rst RST_38
    nop

jr_006_556f:
    rst RST_38
    nop
    add a
    nop
    inc sp
    nop
    ld c, e
    nop
    ld e, e
    nop
    ld c, e
    nop
    inc sp
    nop
    add a
    nop
    rst RST_38
    nop
    rst RST_08
    nop
    adc a
    nop
    rst RST_08
    nop
    rst RST_08
    nop

jr_006_5589:
    rst RST_08
    nop
    rst RST_08
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    add a
    nop
    inc sp
    nop
    inc sp
    nop
    add e
    nop
    rst RST_00
    nop
    adc a
    nop
    rst RST_38
    nop
    rst RST_38
    ld b, b
    rst RST_00
    and h
    or a
    ld [$203f], sp
    ccf
    sub b
    sbc e
    ld b, b
    jp $ff00


    nop
    rst RST_38
    nop
    cp e
    jr z, jr_006_556f

    nop
    add e
    nop
    xor e
    nop
    cp e
    nop
    ld de, $ff00
    nop
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38

jr_006_55f1:
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    rst RST_38
    ld a, [hl]
    add c
    ld h, d
    sbc l
    ld b, h
    cp e
    jr jr_006_55f1

    ld e, $e1
    ld e, $e1
    ld c, [hl]
    or c
    ld bc, $fdfe
    ld [bc], a
    push bc
    ld a, [hl-]
    and c
    ld e, [hl]
    sbc c
    ld h, [hl]
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $66
    sbc c
    ld [hl], d
    adc l
    ld a, b
    add a
    ld a, b
    add a
    ld e, b
    and a
    ld h, d
    sbc l
    ld a, [hl]
    add c
    nop
    rst RST_38
    push hl
    ld a, [de]
    call $9d32
    ld h, d
    sbc l
    ld h, d
    sbc c
    ld h, [hl]
    push bc
    ld a, [hl-]
    db $fd
    ld [bc], a
    ld bc, $fefe
    ld bc, $03ff
    ld a, [$fd05]
    inc bc
    rst RST_38
    nop
    db $fd
    inc bc
    rst RST_38
    nop
    cp $01
    rst RST_38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    ld b, a
    cp b
    ld a, a
    add b
    rst RST_38
    nop
    db $d3
    db $ec
    di
    rst RST_38
    cp l
    cp a
    ld e, [hl]
    rst RST_18
    ld c, a
    rst RST_08
    rst RST_38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    ld a, a
    add b
    rst RST_38
    ret nz

    ld e, a
    and b
    cp a
    ret nz

    rst RST_38
    nop
    cp a
    ret nz

    rst RST_38
    nop
    ld a, a
    add b
    ldh [c], a
    dec e
    cp $01
    rst RST_38
    nop
    swap a
    rst RST_08

Call_006_56a9:
    rst RST_38
    cp a
    rst RST_38
    ld a, [hl]
    rst RST_38
    cp $ff
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    adc [hl]
    ld a, a
    sbc l
    ld a, a
    xor [hl]
    ld a, a
    ret c

    ccf
    adc h
    ld a, a

jr_006_56ca:
    ret c

    ccf
    xor [hl]
    ld a, a
    sbc l
    ld a, a
    dec c
    ldh a, [c]
    dec l
    jp nc, $ea95

    ld l, c
    sub $5d
    ldh [c], a
    ld l, c
    sub $b5
    ld [$d22d], a

jr_006_56e0:
    adc [hl]
    ld a, a
    sbc l
    ld a, a
    xor [hl]
    ld a, a
    ret c

    ccf
    adc h
    ld a, a
    ret c

    ccf
    xor [hl]
    ld a, a
    sbc l
    ld a, a
    dec c
    ldh a, [c]
    dec l
    jp nc, $ea95

    ld l, c
    sub $5d
    ldh [c], a
    ld l, c
    sub $b5
    ld [$d22d], a
    rst RST_38
    nop
    rst RST_38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    rst RST_00
    jr c, jr_006_56ca

    ld a, h
    ld h, $e6
    or b
    ld [hl], b
    reti


    add hl, sp
    bit 7, e
    and h
    ld [hl], a
    pop de
    ccf
    sub h
    ld a, a
    db $e4
    dec a
    cp e
    ld a, h
    rst RST_00
    jr c, jr_006_56e0

    ld a, h
    xor $11
    push de
    dec sp
    ld a, [$da36]
    ld [hl], $eb
    rla
    add d
    ld a, [hl]
    push de
    cpl
    db $e4
    dec e
    dec de
    rst RST_20
    push af
    ei
    ld e, b
    ld a, a
    push bc
    rst RST_38
    sub b
    rst RST_38
    db $fc
    rst RST_38
    db $fd
    cp $bb
    cp h
    di
    cp $35
    cp $0b
    db $fc
    add hl, hl
    cp $43
    db $fc
    rst RST_38
    nop
    rst RST_38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    db $e3
    inc e
    db $dd
    ld a, $81

jr_006_5761:
    cp $0b
    db $f4
    ld d, a
    add sp, -$68
    rst RST_20
    dec l
    rst RST_18
    ld e, e
    cp a
    inc sp
    rst RST_38
    ld de, $ddff
    ld a, $e3
    inc e
    db $dd
    ld a, $77
    adc b
    xor e
    call c, Call_006_6c5f
    db $db
    db $ec
    rst RST_10
    add sp, -$13
    inc de
    push de
    dec sp
    push de
    dec sp
    push de
    dec sp
    db $ed
    inc de
    rst RST_38
    ld de, $11ff
    cp $11
    jr nc, jr_006_5761

    sbc c
    and $ae
    pop af
    cp b
    rst RST_30
    cp a
    ldh a, [$ff9f]
    ldh a, [$ffcf]
    ldh a, [$ffdf]
    ldh [$fffe], a
    ld de, $11fe
    rst RST_38
    nop
    sbc $31
    ei
    rlca
    or [hl]
    ld l, a
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_18
    ldh [$ff5f], a
    ldh [$ff7f], a
    ldh [$ff97], a
    ld hl, sp-$21
    ld hl, sp-$59
    ret c

    rst RST_38
    nop
    nop
    rst RST_38
    inc c
    di
    sbc c
    ld h, a
    ld [hl], l
    adc a
    dec e
    rst RST_28
    db $fd
    rrca
    ld sp, hl
    rrca
    di
    rrca
    ei
    rlca
    or a
    ret z

    xor e
    call c, $dcab
    xor e
    call c, $c8b7
    rst RST_38
    adc b
    rst RST_38
    adc b
    ld a, a
    adc b
    ei
    rlca
    ld a, [$fe07]
    rlca
    jp hl


    rra
    ei
    rra
    push hl
    dec de
    rst RST_38
    nop
    nop
    rst RST_38
    ld a, a
    adc b
    ld a, a
    adc b
    rst RST_38
    nop
    ld a, e
    adc h
    rst RST_18
    ldh [$ff6d], a
    or $ff
    nop
    nop
    rst RST_38
    nop
    nop
    ld [$2208], sp
    ld [hl+], a
    nop
    nop
    inc b
    inc b
    jr nz, @+$22

    nop
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld [de], a
    ld [de], a
    nop
    nop
    ld b, b
    ld b, b
    inc b
    inc b
    nop
    nop
    ld b, b
    ld b, b
    ld de, $0011
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld bc, $0001
    nop
    db $10
    stop
    nop
    ld b, d
    ld b, d
    nop
    nop
    inc b
    inc b
    ld b, b
    ld b, b
    ld bc, $0801
    ld [$8080], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    rst RST_30
    rst RST_28
    rrca
    rst RST_38
    db $dd
    rst RST_28
    ld a, [de]
    rst RST_28
    ld l, b
    rst RST_18
    ret nc

    xor h
    rst RST_38
    ld b, l
    rst RST_30
    ld sp, hl
    cp $ff
    adc h
    rst RST_38
    jp Jump_000_04ff


    rst RST_38
    ld b, l
    cp [hl]
    or [hl]
    call Call_006_64db
    rst RST_10
    ld l, $83
    ld a, [$f70b]
    db $dd
    ld [hl+], a
    dec bc
    db $f4
    cp b
    ld b, a
    cp l
    ld b, d
    dec [hl]
    jp z, Jump_000_3cc3

    pop de
    xor $b1
    adc $7f
    add b
    ld hl, sp+$07
    sbc b
    ld h, a
    ei
    inc b
    ld h, l
    sbc d
    sbc [hl]
    ld h, c
    ld b, b
    ld b, b
    inc b
    inc b
    ld d, $16
    add hl, hl
    add hl, hl
    ld l, $2e
    rrca
    rrca
    jr nz, jr_006_58ae

    ld bc, $0201
    ld [bc], a
    xor b
    xor b
    inc e
    inc e
    nop
    nop
    jr nz, jr_006_58ba

    ld l, d
    ld l, d
    ld d, h
    ld d, h
    ld e, d
    ld e, d
    ld e, b
    ld e, b
    ld [hl-], a
    ld [hl-], a
    ret c

    ret c

    ld [hl], b
    ld [hl], b
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    ld b, b
    ld b, b

jr_006_58ae:
    ld bc, $0001
    nop
    add b
    add b
    inc d
    inc d
    ld l, $2e
    xor b
    xor b

jr_006_58ba:
    ld d, $16
    ld c, b
    ld c, b
    nop
    nop
    add a
    add a
    add a
    add a
    add [hl]
    add a
    push bc
    rst RST_00
    ld h, c
    ld a, a
    rra
    ccf
    ld e, e
    ld a, a
    cp e
    rst RST_38
    ld b, e
    jp $e363


    ld a, $fe
    sbc $fe
    ld b, $fe
    ld a, [$d3fe]
    rst RST_38
    rst RST_10
    rst RST_38
    ldh [c], a
    rst RST_38
    rst RST_18
    rst RST_38
    ld a, $3f
    nop
    rra
    rrca
    rra
    ld e, $1f
    ld de, $1011
    db $10
    inc d
    db $fc
    db $fc
    db $fc
    db $f4
    db $fc
    di
    rst RST_38
    add [hl]
    cp $d4
    call c, $8c08
    ld b, $86
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    add b
    rst RST_38
    add hl, sp
    ld sp, hl
    ld l, b
    add sp, $02
    add d
    ld b, b
    ret nz

    ld [$0288], sp
    add d
    sub $d6
    nop
    rst RST_38
    ld hl, $0021
    nop
    ld d, b
    ld d, b
    db $10
    db $10
    jr jr_006_5974

    nop
    nop
    add hl, bc
    add hl, bc
    nop
    rst RST_38
    sub $d7
    add c
    add c
    ld bc, $c101
    pop bc
    add c
    add c
    add hl, bc
    add hl, bc
    add c
    add c
    add b
    rst RST_38
    ld [hl-], a
    ldh a, [c]

jr_006_5974:
    ld h, d
    ldh [c], a
    nop
    add b
    ld [hl+], a
    and d
    inc b
    add h
    nop
    add b
    inc c
    adc h
    ld [de], a
    rst RST_38
    dec b
    rst RST_38
    nop
    rst RST_38
    ld [bc], a
    rst RST_38
    db $10
    rst RST_38
    ld bc, $08ff
    rst RST_38
    ld [bc], a
    rst RST_38
    pop bc
    pop bc
    ld c, b
    ld c, b
    ret nz

    ret nz

    and c
    and c
    ldh [$ffe0], a
    ld c, d
    ld c, d
    ret nz

    ret nz

    ld h, b
    ldh [rP1], a
    rst RST_38
    inc b
    rst RST_38
    db $10
    rst RST_38
    nop
    rst RST_38
    ld [$02ff], sp
    rst RST_38
    jr nz, @+$01

    dec b
    rst RST_38
    call nz, Call_000_20c4
    and b
    ret nz

    ret nz

    ld d, h
    ld d, h
    ret nz

    ret nz

    ld h, c
    pop hl
    and h
    and h
    ld b, b
    ret nz

    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    rst RST_38
    rst RST_38
    ld [$2908], sp
    add hl, hl
    ld [$1008], sp
    db $10
    ldh a, [c]
    ldh a, [c]
    add hl, bc
    add hl, bc
    ld bc, $c101
    pop bc
    ld a, a
    ld a, a
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, d
    ld [hl], d
    ld [hl], d
    sbc a
    sbc a
    jr nc, jr_006_5a12

    ld a, $3e
    inc hl
    inc hl
    db $e3
    db $e3
    jr nz, @+$22

    ccf
    ccf
    ld b, d
    ld b, d
    ld [bc], a
    ld [bc], a
    adc b
    adc b
    adc d

jr_006_59f3:
    adc d
    sbc b
    sbc b
    rst RST_20
    rst RST_20
    db $fc
    db $fc
    add h
    add h
    inc b
    inc b
    ld h, $26
    ld e, a
    rst RST_28
    jr nc, jr_006_59f3

    xor c
    or $4f
    ldh a, [rVBK]
    ldh a, [$ff1f]
    ldh [rIE], a
    nop
    rst RST_08
    ldh a, [rIF]
    rst RST_38

jr_006_5a12:
    db $10
    rst RST_38
    ldh [$ff1f], a

jr_006_5a16:
    ld a, [$f407]
    rrca
    ld hl, sp+$07
    rst RST_30
    ld [$02ff], sp
    ld a, a
    ldh [$ff1f], a
    ldh [rIE], a
    nop
    ccf
    ret nz

    sbc a
    ld h, b
    rst RST_38
    nop
    sbc d
    ld h, l
    ld [hl], b
    adc a
    rst RST_38
    inc b
    ei
    inc b
    rst RST_38
    nop
    cp $01
    db $fd
    ld [bc], a
    ld e, a
    and b
    xor c
    ld d, [hl]
    add $f9
    add b
    cp $00
    add a
    inc b
    add [hl]
    inc d
    sub [hl]
    inc b
    add [hl]
    inc b
    add [hl]
    inc h
    and a
    inc c
    adc [hl]
    inc d
    sub [hl]
    inc b
    add a
    inc h
    and [hl]
    ld a, b
    cp $00
    cp $44
    add $04
    add a
    inc l
    xor [hl]
    add b
    or $00
    add [hl]
    inc h
    and a
    inc c
    adc [hl]
    inc b
    add [hl]
    ld h, h
    and $0c
    adc a
    inc e
    sbc [hl]
    inc b
    add [hl]
    inc d
    sub [hl]
    inc b
    add a
    jr jr_006_5a16

    nop
    cp $44
    add $24
    and a
    inc c
    adc [hl]
    rla
    rst RST_28
    ld c, $ff
    jp c, Jump_000_1aef

    rst RST_28
    dec de
    xor $51
    xor [hl]
    rst RST_38
    nop
    ld hl, sp-$01
    cp $ff
    nop
    rst RST_38
    ld d, c
    rst RST_38
    add h
    rst RST_38
    jp z, Jump_006_44bd

    cp e
    rst RST_30
    ld [$7ec7], sp
    ret nz

    cp a
    ld h, a
    sbc h
    ei
    inc b
    ld a, [hl+]
    push de
    db $dd
    ld [hl+], a
    rst RST_38
    nop
    ld sp, $cfce
    jr nc, jr_006_5b02

    xor $8b
    ld [hl], h
    cp a
    ld b, b
    ld hl, sp+$07
    adc e
    ld [hl], h
    cp a
    ld b, b
    ld h, e
    sbc h
    call c, $b023
    or b
    ldh [$ffe0], a
    db $e3
    db $e3
    ccf
    ccf
    inc e
    inc e
    ld [$1808], sp
    jr @-$02

    db $fc
    jp $81c3


    add c
    di
    di
    rra
    rra
    ld [$0808], sp
    ld [$0c0c], sp
    rra
    rra
    add $c6
    add a
    add a
    adc [hl]
    adc [hl]
    cp $fe
    ld [hl], e
    ld [hl], e
    inc sp
    inc sp
    ld [hl], $36
    rst RST_38
    rst RST_38
    add hl, sp
    add hl, sp
    ldh a, [$fff0]
    ld h, c
    ld h, c
    rst RST_30
    rst RST_30
    sbc h
    sbc h
    ld [$0c08], sp
    inc c
    rra
    rra
    ld e, c
    reti


jr_006_5b02:
    ld [hl], b
    ldh a, [$ff31]
    ld sp, hl
    ld c, a
    rst RST_38
    ld e, d
    ld a, [$f636]
    inc e
    db $fc
    inc c
    db $fc
    jp $81c3


    add c
    jp $ffc3


    rst RST_38
    inc e
    inc e
    ld [$0c08], sp
    inc c
    rra
    rra
    ld e, h
    db $fc
    inc l
    db $ec
    ld l, $fe
    rlca
    rst RST_38
    ld d, [hl]
    or $9f
    rst RST_38
    dec l
    db $fd
    rst RST_38
    rst RST_38
    add hl, de
    add hl, de
    jr nc, jr_006_5b64

    ld h, c
    ld h, c
    rst RST_30
    rst RST_30
    sbc h
    sbc h
    ld [$0c08], sp
    inc c
    rra
    rra
    ld c, b
    rst RST_38
    or d
    xor a
    or b
    ret z

    ld l, b
    sbc e
    ld c, h
    ld a, h
    ret nz

    ld hl, sp+$4b
    ld a, e
    adc a
    rst RST_28
    or l
    ld [hl], l
    ld a, [hl-]
    jp c, $ef53

    inc e
    db $e3
    db $fc
    add e
    sub $a9
    or [hl]
    ret


    ld l, [hl]
    or c
    and [hl]
    and $91
    reti


jr_006_5b64:
    or d

Jump_006_5b65:
    ei
    ld d, h
    ld a, a
    add l
    rst RST_38
    db $e4
    rst RST_18
    xor c
    or [hl]
    ld [hl], c
    ld a, a
    adc $b1
    ld l, h
    sub e
    add hl, hl
    rst RST_10
    cp e
    ld b, a
    cp d
    ld b, [hl]
    xor c
    ld e, a
    db $d3
    ld a, [hl-]
    ld [hl], b
    cp $80
    cp $00
    add a
    inc h
    and [hl]
    inc d
    sub [hl]
    inc b
    add [hl]
    inc e
    sbc [hl]
    dec a
    cp a
    add b
    rst RST_38
    inc d
    sub [hl]
    inc b
    add a
    inc h
    and [hl]
    ld a, b
    cp $00
    cp $44
    add $5c
    rst RST_18
    ld bc, $41ff
    pop bc
    sub b
    db $10
    add b
    ld b, b
    and h
    ld a, a
    cp b
    ld a, a
    cp e
    ld a, a
    rst RST_38
    ld a, a
    ld a, a
    add b
    adc c
    adc a
    ld de, $001f
    rrca
    ld bc, $e0eb
    rst RST_38
    db $10
    pop af
    cp $ff
    rst RST_38
    nop
    adc a
    rst RST_38
    jr nc, @+$01

    add hl, sp
    rst RST_38
    adc d
    ld [$f454], a
    add hl, bc
    ld sp, hl
    add h
    db $f4
    ld c, b
    ld hl, sp+$20
    rst RST_38
    sub $af
    ld l, a
    ld e, [hl]
    add hl, hl
    ld a, [hl+]
    sub [hl]
    sub l
    dec hl
    dec l
    ld c, h
    ld c, e
    sbc h
    sbc e
    ld a, [hl+]
    ei
    inc b
    db $f4

jr_006_5be4:
    ld d, e
    rst RST_30
    jr c, jr_006_5be4

    inc h
    db $ed
    or e
    rst RST_38
    xor l
    di
    ld de, $2dee
    db $eb
    ld d, e
    push de
    ld l, $bd
    ld l, c
    ld a, d
    inc hl
    ld a, d
    rst RST_28
    halt
    ld e, e

Call_006_5bfd:
    ld h, [hl]
    ld b, d
    cp l
    ld [bc], a
    ld [bc], a
    ld b, b
    ld d, c
    dec b
    rrca
    sub h
    cp e
    add a
    sbc b
    ld e, a
    ld d, b
    sbc b
    and a
    ld a, h
    inc bc
    ld b, d
    ld d, d
    and a
    push af
    sbc e
    ld l, h
    ld a, a
    add b
    or h
    ld c, e
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    or b
    rst RST_08
    ld h, b
    sbc a

jr_006_5c24:
    add $b9
    ld [hl], b
    adc a
    rst RST_30
    ld [$30cf], sp
    or $09
    ld [hl], c
    adc [hl]
    inc b
    ei
    nop
    rst RST_38
    ld [hl], e
    adc h
    ld h, a
    sbc b
    sbc e
    ld h, h
    cp h
    ld b, e
    dec a
    jp nz, Jump_000_24db

    ld l, c
    jp hl


    ret nz

    ld [hl], b
    ldh a, [rNR14]
    ld [$f21e], a
    ld a, [bc]
    jr nc, jr_006_5c24

    inc d
    db $e4
    ld a, [de]
    ld [$0000], a
    ld b, d
    ld b, d
    ld [$0088], sp
    add b
    nop
    nop
    ld c, c
    ld c, c
    ld d, b
    ld d, b
    call nc, Call_000_1ad4
    ldh [c], a
    or h
    ld c, h
    ld a, [$9002]
    ld a, b
    cp c
    ld e, c
    ld d, b
    or b
    push hl
    ld h, l
    ld d, h
    call nc, $9080
    ld bc, $0081
    nop
    ld c, b
    ld c, b
    nop
    nop
    ld b, c
    ld b, c
    ld b, h
    ld b, h
    nop
    ld b, b
    ld l, l
    sub d
    sbc $21
    db $ed
    sub d
    ld [hl], e
    xor h
    db $fd
    jp nz, $a1de

    cp c
    add [hl]
    ld c, a
    ld h, b
    db $e3
    inc e
    rst RST_28
    ld de, $e21c
    push bc
    ccf
    sbc [hl]
    ld h, d
    ld a, l
    add a
    sbc b
    ld h, h
    ldh [rNR23], a
    ld e, a
    call nz, $f1e6
    ld c, l
    ld c, d
    ld a, [de]
    ld e, d
    and d
    or d
    inc [hl]
    ld [hl], $00
    inc d
    ld b, b
    ld b, b
    sbc b
    ld h, b
    ld b, d

Jump_006_5cb3:
    sub d
    add sp, -$58
    xor b
    xor b
    add b
    and b
    inc b
    inc b
    nop
    nop
    add c
    add c
    ret z

    ld hl, sp-$52
    xor $58
    ret c

jr_006_5cc6:
    db $10
    sub b
    inc de
    sub e
    ld c, b
    ret z

    jr c, jr_006_5cc6

    ld b, b
    rst RST_18
    jp $21e3


    ld sp, $1b13
    ld b, a
    ld c, a
    nop
    ld [$1810], sp
    db $e4
    db $fc
    rla
    rst RST_18
    adc b
    rst RST_10
    and b
    ld hl, sp-$5b
    push af
    xor a
    ld a, [$ffe5]
    and a
    cp a
    nop
    ld a, a
    rst RST_38
    rst RST_38
    add a
    ld e, a
    inc hl
    rst RST_38
    and c
    rst RST_38
    and c
    rst RST_38
    ld sp, $22ff
    xor $04
    db $fc
    rst RST_38
    rst RST_38
    nop
    ld de, $1908
    ld [$e811], sp
    pop af
    rst RST_18
    cpl
    sbc $e1
    ld e, $2f
    db $10
    ld hl, $aca4
    add l
    add hl, bc
    or $7a
    ld [hl], e
    adc l
    db $db
    inc a
    ld b, d
    add l
    ld b, d
    add h
    add $08
    sub b
    and e
    cp c
    xor d
    cp c
    xor $bb
    xor $ee
    rst RST_38
    ld l, c
    ld l, c
    inc bc
    inc bc
    ld [$d608], sp
    ld e, d
    xor l
    or l
    xor l
    rst RST_30
    and a
    rst RST_38
    cp h
    db $fc
    sub $d6
    ld b, b
    ld b, b
    ld de, $0411
    inc b
    ld bc, $5e19
    ld d, a
    ld [$3815], sp
    daa
    ld bc, $4071
    ld h, b
    rrca
    ld l, a
    ld b, b
    ld b, b
    db $10
    sub b
    pop bc
    ld b, c

jr_006_5d56:
    add h
    ld b, h
    add b
    ld b, b
    ld d, d
    or d
    jr z, jr_006_5db6

    cp [hl]
    adc $0f
    ld h, a
    rra
    ld [hl], d
    rra
    ld a, a
    ret nz

    ccf
    ret


    ld c, c
    pop hl
    ld a, [hl]
    rst RST_38
    add b
    inc b
    inc b
    or c
    ld c, a
    or b
    ld c, a
    or b
    rst RST_08
    add hl, de
    rst RST_20
    add hl, hl
    scf
    ld a, [bc]
    or $f4
    inc c
    ld bc, $0101
    inc bc
    ld [hl+], a
    ld h, $01
    add hl, bc
    rlca
    dec e
    add hl, bc
    ld b, $08
    dec de
    ld [de], a
    ld [hl], a
    scf
    inc l
    add b
    nop
    ld c, b
    adc b
    jr nz, jr_006_5d56

    jp nc, $a022

    ld b, b
    ld [hl], b
    add b
    xor [hl]
    or $d7
    xor e
    dec d
    ld a, [hl-]
    ld hl, $177b
    dec l
    ld l, c
    rra
    inc b
    dec de

Jump_006_5daa:
    dec de
    inc h
    adc [hl]
    adc l
    rlca
    ld b, $af
    ld d, a
    rst RST_10
    ld l, e
    cpl
    pop af

jr_006_5db6:
    sbc c
    ld h, a
    ret


    scf
    cp $02
    call nz, $903c
    ld [hl], b

jr_006_5dc0:
    nop
    nop
    ld d, b
    ld e, b
    dec d
    dec e
    dec de
    ccf
    ld de, $4a3f
    ld l, l
    dec hl
    ld a, h
    add [hl]
    jp hl


    nop
    nop
    ld [$2008], sp
    ld h, b
    add d
    ldh [c], a
    ld d, b
    ldh a, [rP1]
    or b
    ret nz

    ld hl, sp+$0a
    or d
    ld [de], a
    db $dd
    adc h
    ld l, e
    and h
    ld a, e
    jp nc, Jump_006_463d

    cp c
    cp l
    jp nz, Jump_000_1f1e

    add c
    add c
    reti


    rst RST_20
    ld [$98b7], sp
    rst RST_20
    add hl, bc
    rst RST_30
    jr c, jr_006_5dc0

    ld [de], a
    xor $e4
    inc e
    ldh a, [$fff0]
    ld a, [hl-]
    ld a, [$ffa7]
    sbc b
    db $fc
    add a
    rst RST_38
    and d
    cp $0f
    rst RST_38
    xor e
    rst RST_38
    sub [hl]
    cp $da
    jp c, $2727

    ld e, h
    ld e, h
    ei
    ei
    ld h, [hl]
    ld h, [hl]
    sbc c
    sbc c
    or $f6
    ld c, h
    ld c, h
    push de
    db $fd
    ld c, e
    ld a, a
    ld e, h
    ld a, h
    sub a
    rst RST_38
    and [hl]
    or $9d
    db $fd
    add [hl]
    cp $ad
    db $fd
    ld a, [de]
    ld a, [de]
    ccf
    ccf
    ld a, h
    ld a, h
    cp e
    cp e
    ld l, [hl]
    ld l, [hl]
    reti


    reti


    or $f6
    ld c, b
    ld c, b
    jp c, Jump_000_27da

    daa
    ld e, h
    ld e, h
    ei
    ei
    ld h, [hl]
    ld h, [hl]
    sbc a
    sbc a
    ld l, a
    ld l, a
    sbc $de
    jp c, Jump_000_27da

    daa
    ld e, h
    ld e, h
    ei
    ei
    ld h, [hl]
    ld h, [hl]
    sbc c
    sbc c
    or $f6
    ld c, h
    ld c, h
    cp l
    cp l
    ld h, a
    ld h, a
    ld e, h
    ld e, h
    ei
    ei
    halt
    halt
    sbc c
    sbc c
    ld [hl], $36
    ld c, c
    ld c, c
    ld a, [de]
    ld a, [de]
    ccf
    ccf
    ld a, h
    ld a, h
    cp e
    cp e
    ld l, [hl]
    ld l, [hl]
    reti


    reti


    or $f6
    ld c, b
    ld c, b
    jp c, Jump_000_27da

    daa
    ld e, h
    ld e, h
    ei
    ei
    ld h, [hl]
    ld h, [hl]
    sbc a
    sbc a
    ld l, a
    ld l, a
    sbc $de
    jp c, Jump_000_27da

    daa
    ld e, h
    ld e, h
    ei
    ei
    ld h, [hl]
    ld h, [hl]
    sbc c
    sbc c
    or $f6
    ld c, a
    ld c, a
    cp l
    cp l
    ld h, a
    ld h, a
    ld e, h
    ld e, h
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    sbc b
    sbc b
    scf
    scf
    ld sp, hl
    ld sp, hl
    add hl, de
    add hl, de
    ldh a, [$fff0]
    ld [hl], b
    ld [hl], b
    dec sp
    dec sp
    ld l, h
    ld l, h
    ld e, b
    ld e, b
    db $f4
    db $f4
    rst RST_08
    rst RST_08
    db $fc
    rst RST_38
    pop af
    db $fd
    push bc
    push af
    sbc a
    rst RST_38
    xor h
    di
    sub c
    db $ed
    push hl
    sub l
    rst RST_18
    cp a
    rst RST_38
    rst RST_38
    rra
    rst RST_38
    ld h, l
    rst RST_38
    db $10
    sbc a
    ld e, h
    cp e
    inc a
    bit 1, h
    di
    db $10
    sbc a
    xor h
    di
    sub c
    db $ed
    push hl
    sub l
    sbc $bf
    xor h
    di
    sbc a
    ldh [$fff0], a
    adc a
    rst RST_38
    sbc a
    ld e, h
    cp e
    dec a
    bit 1, b
    rst RST_30
    inc e
    sub e
    sub h
    ld a, e
    db $ed
    dec de
    dec a
    jp $f3cc


    rst RST_38
    rst RST_38
    db $d3
    db $d3
    cp a
    cp a
    ld e, $9e
    ld h, l
    db $ed
    inc a
    db $fc
    adc h
    rst RST_38
    ld [hl], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_00
    rst RST_38
    rst RST_38
    rla
    ld a, a
    rst RST_38
    rst RST_38
    ldh [c], a
    db $e3
    adc h
    adc a
    ld e, l
    ld a, a
    push bc
    rst RST_00
    sbc a
    sbc a
    cp c
    cp a
    inc e
    cp [hl]
    or d
    cp [hl]
    adc l
    rst RST_38
    adc $ff
    sbc [hl]
    rst RST_38
    ld a, [hl]
    ld a, a
    rst RST_20
    rst RST_38
    dec b
    rlca
    ld a, a
    ld a, a
    ld [hl], $7f
    ld e, l
    rst RST_38
    inc sp

Jump_006_5f3d:
    rst RST_38
    ld [hl], a
    rst RST_38
    ld h, $e7
    ld h, $e7
    xor [hl]
    rst RST_28
    adc e
    db $eb
    reti


    ei
    ret


    ei
    call z, $ddff
    xor [hl]
    jp nz, $c0ce

    call z, $dd51
    ld de, $92dd
    rst RST_18
    cp d
    rst RST_38
    cp d
    rst RST_38
    cp [hl]
    ei
    call c, $c4ad
    cp l
    jp nc, $b6bf

    db $db
    and a
    jp c, $daa5

    ld l, a
    sub b
    call c, $ef23
    ld a, e
    xor l
    ld [hl], e
    cp l
    di
    push af
    cp e
    dec [hl]
    ei
    ld [hl], l
    cp e
    adc $31
    or c
    ld c, [hl]
    ld d, e
    rst RST_38
    ld c, l
    rst RST_38
    inc [hl]
    rst RST_38
    db $d3
    rst RST_38
    ld c, l
    rst RST_38
    inc [hl]
    rst RST_38
    db $d3
    rst RST_38
    ld c, l
    rst RST_38
    jp z, Jump_006_72ff

    rst RST_38
    inc l
    rst RST_38
    set 7, a
    ld [hl], d
    rst RST_38
    inc l
    rst RST_38
    set 7, a
    ld [hl], d
    rst RST_38
    inc [hl]
    rst RST_38
    db $d3
    rst RST_38
    ld c, l
    rst RST_38
    jr c, @+$01

    rst RST_10
    rst RST_38
    ld c, l
    rst RST_38
    dec [hl]
    rst RST_38
    call nc, $2cff
    rst RST_38
    set 7, a
    ld [hl], d
    rst RST_38
    inc l
    rst RST_38
    set 7, a
    ld [hl], d
    rst RST_38
    ld l, h
    rst RST_38
    dec hl
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_38
    rst RST_30
    rst RST_38
    ldh [c], a
    rst RST_38
    ldh [rIE], a
    ld bc, $ff00
    cp $ff
    cp $ff
    cp $df

jr_006_5fd9:
    cp $df
    cp $8f
    cp $0f
    cp $c0
    rst RST_38
    ret nz

    rst RST_38
    call $dfff
    rst RST_38
    rst RST_18
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    rlca
    cp $07
    cp $67
    cp $f7
    cp $f7
    cp $ff
    cp $ff
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ei
    ld a, h
    cp e
    rst RST_00
    jr c, jr_006_5fd9

    add e
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    inc a
    ret nz

    daa
    ret c

    db $e4
    db $db
    rst RST_38
    db $db
    rst RST_38
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    sbc h
    ld h, b
    di
    ld l, h
    pop de
    or c
    adc $bf
    ld [hl], c
    ld c, [hl]
    rla
    jr z, jr_006_60c1

    ld e, b
    or d
    db $d3
    ld b, l
    or [hl]
    ldh a, [c]
    inc c
    ld hl, sp+$06
    ld h, b
    add c
    rst RST_18
    rra
    rst RST_18
    rra
    and d
    db $dd
    pop bc
    ld [hl+], a
    nop
    inc c
    ld a, a
    ld a, a
    adc h
    ld [hl], d
    ldh [$ff7e], a
    ld e, [hl]
    sbc c
    ld l, b
    db $10
    ld d, e
    inc hl
    and a
    rst RST_30
    ld h, [hl]
    rst RST_30
    jp $f374


    rst RST_38
    and [hl]
    reti


    ld h, l
    and [hl]
    jr jr_006_6091

    db $fc
    db $fc
    ld h, a
    rst RST_38
    add e
    ld a, a
    ld a, e
    add h
    add e
    adc h
    ld a, h
    add b
    and b
    ld h, b
    reti


    ld e, c
    sbc [hl]
    ld a, a
    nop
    rst RST_38
    and [hl]
    rst RST_18
    ld sp, $f511

jr_006_6091:
    dec b
    dec e
    ld hl, $ccf2
    xor c
    adc $31
    sbc $13
    db $ec
    rla
    add sp, $66
    sbc b
    ld e, $2f
    or b
    rst RST_08
    db $e3
    inc e
    ld c, b
    cp a

jr_006_60a8:
    ld [hl+], a
    ld h, e
    ld l, $6f
    ld e, h
    ccf
    cp b
    rst RST_18
    ld a, l
    add c
    rst RST_10
    dec sp
    xor l
    ld [hl], c
    and $18
    ld e, e
    cp h
    ld [hl], e
    cp h
    and a
    ld a, b
    adc [hl]

Jump_006_60bf:
    ld [hl], b
    ld e, a

jr_006_60c1:
    ld h, b
    daa
    jr c, jr_006_60a8

    call c, Call_006_4cf3
    ei
    inc h
    add $39
    ld e, d
    ld h, [hl]
    ld a, b
    adc b
    ldh a, [rP1]
    rst RST_30
    rlca
    ld hl, sp+$06
    adc c
    ld [hl], c
    add a
    ld a, e
    ld l, l
    sub e

jr_006_60dc:
    sbc [hl]
    db $e3
    ld c, [hl]
    ld [hl], c
    and c
    ld d, c
    di
    sub e
    ld a, [hl]
    sbc c
    ld sp, hl
    ld b, $f5
    ld b, $53
    ld a, h
    add l
    ld a, [$fb94]
    rst RST_20
    ret c

    add $b9
    ld b, [hl]
    cp d
    ld a, a
    add b
    ret z

    inc d
    db $e3
    inc hl
    ld a, h
    ld a, h
    sbc a
    ld a, a
    rlca
    ld [$10e0], sp
    ld a, [de]
    db $e3
    jr nc, @+$3d

    dec b
    cp $9f
    ld h, b
    ld h, d
    sub e
    ld [$300f], sp
    ret nz

    ld d, [hl]
    ld h, a
    jr nc, jr_006_60dc

    ld h, b
    add b
    db $db
    dec de
    rst RST_10
    rra
    ld d, b
    cp a
    ld b, b
    cp a
    ret nc

    rst RST_18
    ld hl, $c7fe

jr_006_6125:
    jr c, jr_006_616c

    add $11
    ld e, $81
    cp [hl]
    ld b, e
    db $fc
    rst RST_08
    jr nc, @+$01

    nop
    nop
    rst RST_38
    add h
    ld a, h
    rst RST_38
    nop
    adc b
    inc d
    ld h, d

jr_006_613b:
    ld h, e
    cp h

Jump_006_613d:
    db $fc
    add a
    ld a, a
    adc c
    ld [hl], l
    jr jr_006_613b

    ld [hl], h
    ld a, e
    add e
    ld a, h
    jp $1003


    rla
    jr nc, jr_006_6125

    dec d
    ld l, $46
    adc d
    ld a, b
    cp a
    add hl, sp
    rst RST_18
    pop af
    ld c, $7f
    add b
    ld e, b
    cp b
    and $1f
    db $fc
    inc bc
    pop de
    cp $06
    ld sp, hl
    rst RST_38
    nop
    ld a, c
    cp $05
    ld b, $73
    ld a, h

jr_006_616c:
    dec b
    ld a, [$3bd4]
    rst RST_38
    ld [hl], b
    ld [$06fd], a
    ld a, [$38c7]
    sbc b
    inc b
    ld h, e
    ld h, e
    cp a
    rst RST_38
    add a
    ld a, a
    cp a
    ret nz

    ld [hl], e
    adc h
    rst RST_28
    inc a
    rst RST_10
    ld a, b
    adc c
    or $81
    cp $5f
    ldh [$ffe0], a
    rra
    ret nz

    ccf
    ld a, a
    add b
    add a
    nop
    ld a, d
    ld a, c
    inc a
    ld a, h
    and e
    ld a, a
    ret nz

    ccf
    ld a, h
    add e
    inc c
    rst RST_38
    db $fd
    cp $33
    db $fc
    rst RST_08
    jr nc, jr_006_61e5

    jp Jump_000_3f3e


    sbc b
    rst RST_18
    or h
    ld c, e
    ccf
    call nz, $07fc
    ei
    inc bc
    sbc [hl]
    ld h, e
    ld sp, $2ec1
    adc $20
    rst RST_08
    ldh a, [$ff08]
    ret nz

    ret nz

    adc h
    db $fd
    inc e
    inc hl
    jp Jump_000_3bc4


    ei
    ld [$09fb], sp
    cp $f6
    add hl, bc
    inc [hl]
    call z, $9070
    jp nz, $bf06

    inc b
    ei
    ld b, b
    di
    ld c, d
    call $7c13
    or c
    ld [bc], a
    cp $82
    add e
    ld a, d

jr_006_61e5:
    ld a, l
    ld b, e
    db $fc
    rlca
    ld a, b
    sbc l
    and a
    ld b, a
    rst RST_30
    add $75
    and c
    jp nz, $806d

    db $db
    ld bc, $3fde
    rst RST_38
    nop
    ret z

jr_006_61fb:
    call nc, $ebb3
    ld a, [hl+]
    reti


    ld d, a
    ld e, b
    ld a, a
    add b
    and a
    ld h, b
    db $db
    ld e, b
    ld d, $75
    push bc
    jr c, jr_006_61fb

    ld d, $f9
    dec b
    ld [hl], b
    add h
    db $fc
    add b
    ld [hl], e
    adc h
    ld l, l
    sbc [hl]
    push hl
    ld b, $ab
    ld l, h
    ld e, e
    sbc h
    rst RST_20
    sbc b
    ld l, a
    rst RST_30
    pop af
    dec bc
    db $e3
    inc d
    ret c

    ccf
    inc hl
    ld h, d
    dec l
    ld l, [hl]
    ld e, a
    inc a
    cp e
    call c, $e719
    rst RST_28
    ret nc

    db $eb
    inc [hl]
    add a
    ld l, b
    pop af
    ld [hl], $55
    or [hl]
    ld l, a
    sbc h
    ld l, [hl]
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    ld h, b
    ld h, b
    nop
    nop
    sbc e
    sbc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ld b, b
    rst RST_30
    rst RST_30
    cp d
    cp d
    ld b, a
    ld b, a
    cp [hl]
    cp [hl]
    db $e3
    db $e3
    inc a
    inc a
    db $eb
    db $eb
    dec hl
    dec hl
    add h
    add h
    ld l, a
    ld l, a
    db $f4
    db $f4
    ld e, [hl]
    ld e, [hl]
    and e
    and e
    inc a
    inc a
    set 1, e
    sbc h
    sbc h
    adc b
    adc b
    jr z, jr_006_62ae

    add hl, de
    add hl, de
    jr c, jr_006_62c2

    cp c
    cp c
    ld a, e
    ld a, e
    ld a, c
    ld a, c
    di
    di
    ldh a, [c]
    ldh a, [c]
    pop hl
    pop hl
    push hl
    push hl
    rst RST_00
    rst RST_00
    set 1, e
    adc $ce
    adc $ce
    dec e
    dec e
    dec a
    dec a
    ccf
    ccf
    sbc l
    sbc l
    call c, $d9dc
    reti


    pop af
    pop af

jr_006_62ae:
    ld [hl], e
    ld [hl], e
    call z, Call_006_6ccc
    ld l, h
    ld a, l
    ld a, l
    db $eb
    db $eb
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ei
    ei
    or b
    or b

jr_006_62c2:
    or c
    or c
    jr nc, @+$32

    add hl, sp
    add hl, sp
    dec sp
    dec sp
    cp c
    cp c
    ld [hl], c
    ld [hl], c
    ld [hl], e
    ld [hl], e
    di
    di
    rst RST_30
    rst RST_30
    db $e3
    db $e3
    rst RST_00
    rst RST_00
    adc a
    adc a
    rst RST_00
    rst RST_00
    adc $ce
    adc [hl]
    adc [hl]
    ld a, e
    ld a, e
    cp c
    cp c
    xor [hl]
    xor [hl]
    ld [hl], h
    ld [hl], h
    ld e, l
    ld e, l
    sbc c
    sbc c
    ld h, h
    ld h, h
    sub b
    sub b
    adc h
    adc h
    sbc h
    sbc h
    call c, $fbdc
    ei
    add hl, hl
    add hl, hl
    cp c
    cp c
    ld l, c
    ld l, c
    cp d
    cp d
    sub c
    sub c
    ret nz

    ret nz

    ld c, c
    ld c, c
    inc [hl]
    inc [hl]
    ld e, $1e
    ld b, e
    ld b, e
    ld [de], a
    ld [de], a
    dec b
    dec b
    db $db
    db $db
    or c
    or c
    ld d, h
    ld d, h
    ld hl, $8221
    add d
    ld c, b
    ld c, b
    add [hl]
    add [hl]
    xor e
    xor e
    xor b
    xor b
    call nc, $a8d4
    xor b
    ld d, c
    ld d, c
    ld l, h
    ld l, h
    dec d
    dec d
    ld b, d
    ld b, d
    rlca
    rlca
    ld d, l
    ld d, l
    cp d
    cp d
    ld h, b
    ld h, b
    ld [$0508], sp
    dec b
    ld a, [hl+]

Call_006_633b:
    ld a, [hl+]
    ld d, b

Jump_006_633d:
    ld d, b
    ld a, [hl+]
    ld a, [hl+]
    db $eb
    db $eb
    inc a
    inc a
    db $e3
    db $e3
    cp [hl]
    cp [hl]
    ld b, a
    ld b, a
    cp d
    cp d
    rst RST_30
    rst RST_30
    ld b, b
    ld b, b
    set 1, e
    inc a
    inc a
    and e
    and e
    ld e, [hl]
    ld e, [hl]
    db $f4
    db $f4
    ld l, a
    ld l, a
    add h
    add h
    dec hl
    dec hl
    sbc e
    sbc e
    nop
    nop
    ld h, b
    ld h, b
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_38
    ld a, [bc]
    ei
    ld h, c
    rst RST_38
    add d
    cp $79
    ld a, c
    ld c, h
    rst RST_08
    sub b
    ldh a, [$ffc8]
    ld hl, sp+$00
    rst RST_38
    inc de
    rst RST_30
    ret nz

    rst RST_38
    add hl, bc
    rrca
    add l
    db $fd
    ld b, d
    jp Jump_000_3f30


    adc a
    rst RST_38
    jr nz, @+$41

    ld c, a
    rst RST_08
    sub b
    ldh a, [$ff78]
    ld a, b
    rra
    rra
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    inc [hl]
    db $f4
    adc b
    adc a
    inc sp
    ccf
    ld hl, sp-$08
    pop bc
    pop bc
    ccf
    ccf
    ld bc, $0001
    nop
    and $e6
    ld sp, hl
    ld sp, hl
    ld a, h
    ld a, h
    rrca
    rrca
    jp $e0c3


    ldh [rNR23], a
    jr jr_006_63cf

jr_006_63cf:
    nop
    ld sp, $c731
    rst RST_00
    rra
    rra
    ld hl, sp-$08
    pop hl
    pop hl
    rlca
    rlca
    ld e, $1e
    nop
    nop
    add $c6
    pop af
    pop af
    inc a
    inc a
    rrca
    rrca
    jp $e0c3


    ldh [rNR23], a
    jr jr_006_63fb

    inc c
    jr c, @+$3a

    rst RST_00
    rst RST_00
    rra
    rra
    ld hl, sp-$08
    pop hl
    pop hl
    inc bc

jr_006_63fb:
    inc bc
    rlca
    rlca
    inc c
    inc c
    daa
    ld [hl], b
    ld d, a
    nop
    ld [hl], a
    jr nz, jr_006_645e

    ld hl, $0277
    inc hl
    ld d, h
    ld [hl], a
    ld d, b
    inc hl
    inc b
    ld [hl], l
    add d
    ldh a, [c]
    add l
    ld [hl], a
    dec b
    ld [hl], d
    ret nz

    ld [hl], b
    and d
    ldh [c], a
    sub d
    ldh a, [$ff80]
    ld h, b
    db $10
    rlca
    inc h
    inc bc
    jr nz, @+$23

    ld [hl+], a
    inc bc
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [hl], b
    db $10
    ldh [$ff80], a
    ld b, b
    and b
    ld h, b

jr_006_6437:
    and b
    add b
    ld b, b
    ret nz

    ld b, b
    nop
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0203
    ld hl, $0322
    jr nz, jr_006_6456

    inc h
    add b
    add b
    nop
    add b
    ret nz

    ld b, b

jr_006_6456:
    add b
    ld b, b
    ld h, b
    and b
    ld b, b
    and b
    ldh [$ff80], a

jr_006_645e:
    ld [hl], b
    db $10
    inc hl
    inc b
    ld [hl], a
    ld d, b
    inc hl
    ld d, h
    ld [hl], a
    ld [bc], a
    ld d, a
    ld hl, $2077
    ld d, a
    nop
    daa
    ld [hl], b
    ld h, b
    db $10
    ldh a, [$ff80]
    ldh [c], a
    sub d

jr_006_6476:
    ld [hl], b
    and d
    ld [hl], d
    ret nz

    ld [hl], a
    dec b
    ldh a, [c]
    add l
    ld [hl], l
    add d
    nop
    nop
    cp d
    add $2f
    jr nc, jr_006_64c1

    add $00
    nop
    ld a, [$ff05]
    ld [$10ff], sp
    nop
    nop
    nop

jr_006_6493:
    nop
    jr nz, jr_006_6476

    nop
    nop
    nop
    nop
    add b
    add b
    ret nc

    jr nc, jr_006_6493

    inc c
    ld b, [hl]
    sbc $ff
    db $10
    rst RST_38
    ld [$05fa], sp
    nop
    nop
    and b
    ldh [$fff4], a
    adc h
    nop
    nop
    ld c, l
    ld [hl], e
    db $f4
    inc c
    ret nc

    jr nc, jr_006_6437

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_64c1:
    nop
    nop
    nop
    inc b
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0b01
    inc c
    cpl
    jr nc, jr_006_64d1

jr_006_64d1:
    nop
    ld e, h
    ld h, d
    push af
    dec c
    ld e, l
    ld h, e
    nop
    nop
    ld e, a

Call_006_64db:
    and b

Call_006_64dc:
    rst RST_38
    db $10
    rst RST_38
    ld [$ceb2], sp
    cpl
    jr nc, jr_006_64f0

    inc c
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_64f0:
    ld h, e
    ld a, e
    rst RST_38
    ld [$10ff], sp
    ld e, a
    and b
    nop
    nop
    dec b
    ld b, $2e
    ld sp, $0605
    add $46
    add b
    add b
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    scf
    ld a, a
    dec [hl]
    ld d, [hl]
    dec bc
    dec d
    ld a, e
    ld a, h
    add l
    add [hl]
    dec h
    and [hl]
    dec a
    cp [hl]
    db $fd
    ld a, [hl]
    reti


    ld a, $11
    xor $2f
    jr nc, jr_006_656f

    ld b, b
    ld e, h
    ld d, [hl]
    ld [hl], b
    ld l, c
    ld h, [hl]
    halt
    rst RST_28
    rst RST_38
    ld b, a
    rst RST_38
    sub b

Jump_006_652d:
    ld l, a
    rst RST_38
    nop
    sub c
    sbc [hl]
    or c
    cp [hl]
    push de
    ld a, [$da55]
    ld [hl], e
    db $fc
    ld hl, $03fe

Jump_006_653d:
    db $fc
    rst RST_38
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

jr_006_656f:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld h, c
    ld h, c
    ld b, d
    ld b, d
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ld h, h
    ld h, h
    ld b, d
    ld b, d
    ld hl, $5e21
    ld e, [hl]
    xor d
    xor d
    ld d, [hl]
    ld d, [hl]
    ld l, $2e
    ld l, $2e
    ld d, [hl]
    ld d, [hl]
    xor d
    xor d
    ld e, [hl]
    ld e, [hl]
    ld b, c
    ld b, c
    ld b, d
    ld b, d
    ld h, h
    ld h, h
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld h, c
    ld h, c
    ld e, [hl]
    ld e, [hl]
    xor d
    xor d
    ld d, [hl]
    ld d, [hl]
    ld l, $2e
    ld l, $2e
    ld d, [hl]
    ld d, [hl]
    xor d
    xor d
    ld e, d
    ld e, [hl]
    jp $01c3


    ld bc, $9191
    rst RST_38
    rst RST_38
    ld [hl], $36
    ld [$0a08], sp
    ld a, [bc]
    ei
    ei
    add b
    add b
    ld de, $4111
    ld b, c
    ld a, a
    ld a, a
    rra
    rra
    ld [$0a08], sp
    ld a, [bc]
    cp e
    cp e
    ld [hl], b
    ld [hl], b
    ld de, $6111
    ld h, c
    ld e, a
    ld e, a
    ld c, $0e
    and c
    and c
    jr z, jr_006_6616

    db $eb
    db $eb
    ret c

    ret c

    inc bc
    inc bc
    ld b, c
    ld b, c
    ld a, a
    ld a, a
    dec e
    dec e
    and d
    and d
    jr z, @+$2a

    db $ed
    db $ed
    push af
    push af
    ld [$eaea], a
    ld [$d5d5], a
    push de
    push de
    jp c, $b9da

    cp c
    xor h
    xor h
    push hl
    push hl
    jp z, $14ca

    inc d

jr_006_6616:
    dec hl
    dec hl
    ld d, h
    ld d, h
    xor e
    xor e
    ld d, [hl]
    ld d, [hl]
    sbc l
    sbc l
    xor l
    xor l
    cp l
    cp l
    jp c, $d5da

    push de
    push de
    push de
    ld [$eaea], a
    ld [$f5f5], a
    sub [hl]
    sub [hl]
    ld d, e
    ld d, e
    xor b
    xor b
    ld d, h
    ld d, h
    dec hl
    dec hl
    inc d
    inc d
    jp z, $25ca

    dec h
    add l
    add l
    ld b, d
    ld b, d
    dec h
    dec h
    jp nc, $2bd2

    dec hl
    push de
    push de
    ld l, d
    ld l, d
    cp [hl]
    cp [hl]
    ld [hl], a
    ld [hl], a
    db $eb
    db $eb
    ld e, e
    ld e, e
    or l
    or l
    xor l
    xor l
    ld e, a
    ld e, a
    ld e, e
    ld e, e
    or a
    or a
    xor $ee
    jp z, $15ca

    dec d
    dec hl
    dec hl
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    ld d, l
    add d
    add d
    xor a
    xor a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    cp l
    cp l
    cp l
    cp l
    db $db
    db $db
    ld l, e
    ld l, e
    rst RST_30
    rst RST_30
    rst RST_38
    rst RST_38
    add b
    add b
    cp d
    cp d
    sub b
    sub b
    xor b
    xor b
    and l
    and l
    add h
    add h
    ld a, a
    ld a, a
    rst RST_08
    rst RST_08
    dec sp
    dec sp
    or c
    or c
    ld de, $1511
    dec d
    dec [hl]
    dec [hl]
    ld hl, $ff21
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop

jr_006_66a4:
    cp c
    cp c
    db $10
    db $10
    ld b, b
    ld b, b
    ld bc, $0301
    inc bc
    rst RST_38
    rst RST_38
    rst RST_00
    rst RST_00
    jr c, @+$3a

    or a
    or a
    ld [hl], h
    ld [hl], h
    or d
    or d
    jr nc, @+$32

    jr nc, @+$32

    rst RST_38
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $00
    nop
    nop
    nop

jr_006_66d4:
    rlca
    rlca
    dec sp
    inc a
    ld e, a
    ld h, b
    rst RST_38
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    rlca
    inc b
    rrca
    ld [$1817], sp
    rra
    db $10
    rra
    db $10
    cpl
    jr nc, jr_006_672c

    jr nz, @+$41

    jr nz, jr_006_66d4

    inc e
    rst RST_10
    jr c, jr_006_66a4

    ld [hl], b
    sbc a
    ld h, b
    or $09
    ld hl, sp+$07
    ld sp, hl
    rlca
    di
    rrca
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ldh a, [$fff8]
    ldh [$fff0], a

jr_006_672c:
    call nz, $a4ed
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    ld a, a
    rra
    rra
    adc a
    adc a
    ld b, e
    jp $ffff


    rst RST_38
    rst RST_38
    cp $fe
    db $fc
    db $fc

jr_006_6748:
    pop af
    pop af
    ld h, e
    ld h, e
    inc e
    rra
    ld a, b
    ld a, a
    rst RST_38
    rst RST_38
    cp $ff
    jr @+$21

    ld h, c
    ld a, a
    add [hl]
    rst RST_38

Jump_006_675a:
    dec a
    db $fd
    ld [$34fe], a
    inc a
    sub h
    sbc a
    ld a, [hl+]
    cpl
    dec e
    rra
    adc e
    adc e
    ld [hl], l
    ld [hl], l
    rrca
    rrca
    nop
    nop
    nop
    nop
    sbc h
    sbc h
    ld b, e
    jp $f030


    ld d, l
    rst RST_38
    cp $fe
    pop hl
    pop hl

jr_006_677c:
    rrca
    rrca
    or b
    or b
    jr nz, jr_006_677c

    ld h, b
    ldh [$ff30], a
    push af
    db $fc
    rst RST_38
    halt
    rst RST_30
    ret nc

    ret nc

    ld l, b
    ld l, b
    ld b, $06
    ld b, b
    ret nz

    jr nz, jr_006_67b4

    ld h, h
    ld h, h
    jr nc, jr_006_6748

    ld [$4608], sp
    ld b, [hl]
    nop
    nop
    add b
    add b
    inc [hl]
    inc [hl]
    ld h, c
    ld h, c
    jr jr_006_67c5

    and e
    rst RST_38
    ld c, l
    ld a, l
    rst RST_30
    rst RST_30
    call z, $bbcc
    cp e
    ld l, b
    ld l, b
    ld [de], a
    ldh a, [c]

jr_006_67b4:
    and h
    db $fc
    ld e, c
    rst RST_38
    sbc h
    sbc l
    ld [hl], e
    ld [hl], e
    call z, $b1cc
    or c
    rst RST_38
    rst RST_38
    ld h, a
    ld h, a
    ld [hl+], a

jr_006_67c5:
    ld [hl+], a
    dec d
    dec d
    ld a, [bc]
    dec bc
    add l
    add a
    ld b, d
    ld b, d
    add hl, bc
    add hl, bc
    rst RST_38
    rst RST_38
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    ld de, $0091
    ret nz

    sub d
    ldh a, [c]
    inc h
    cp h
    rlca
    rlca
    nop
    nop
    ld d, b
    ld d, b

Jump_006_67e6:
    xor d
    xor d
    rst RST_38
    rst RST_38
    cp d
    cp d
    db $e4
    db $e4
    ld bc, $cf01
    rst RST_38
    ld [hl], b
    ld [hl], b
    jr @+$1a

    ld b, $06
    and e
    and e
    ld [$3108], sp
    ld sp, $4a4a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    ld [hl], l
    ld a, e
    ei
    add a
    sbc $63
    nop
    nop
    ld e, $1e
    ld a, a
    ld h, c
    or l
    sbc $ef
    ld sp, $a6de
    ld hl, sp-$38
    rra
    rst RST_28
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ld b, b
    ldh [$ffa0], a
    cp b
    ld e, b
    ld b, $05
    rlca
    inc b
    dec c
    dec bc
    dec de
    inc d
    dec e
    inc de
    dec hl
    scf
    scf
    jr z, jr_006_688c

    ld h, $ab
    db $dd
    or a
    ld a, e
    db $ed
    di
    rst RST_20
    ld a, b
    ei
    scf
    call c, $65b7
    jp c, Jump_006_5cb3

    rst RST_28
    ldh a, [$fffb]
    rst RST_00
    dec c
    cp $c7
    jr c, jr_006_6898

    pop de
    ld b, e
    cp l
    cp a
    ld a, b
    ld l, c
    rst RST_38
    ld e, h
    db $e4
    ld a, b
    sbc b
    ldh [$ff60], a
    add b

Call_006_6877:
    add b
    ldh a, [$fff0]
    ld hl, sp-$78
    xor [hl]
    halt
    and a
    reti


    add hl, sp
    ld h, $3f
    ld hl, $2837
    jr z, @+$39

    inc e
    inc de
    dec de
    inc d

jr_006_688c:
    dec c
    dec bc
    rlca
    inc b
    di
    ld e, h
    or [hl]
    ld e, c
    or l
    sbc $ca
    or a

jr_006_6898:
    db $e4
    dec sp
    rst RST_08
    ld [hl], b
    sub l
    ei
    xor d
    ld e, l
    sub [hl]
    rst RST_28
    adc a
    ldh a, [$ffe7]
    ld sp, hl
    cp e
    ld a, l
    ld b, e
    cp l
    sub a
    ld a, c
    add hl, hl
    sbc $f6
    rst RST_08
    sbc $26
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [rSVBK]
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    db $e3
    adc c
    ld [hl], a
    db $fc
    add e
    scf
    jr c, jr_006_68e8

    ld c, $01
    ld bc, $0101
    ld bc, $7f01
    ldh [$ff9f], a
    rst RST_20
    jr c, @-$36

    sbc b
    ld l, b

jr_006_68e8:
    call z, $d634
    xor d
    cp a
    ld d, c
    xor $2e
    ld a, b
    adc b
    ldh a, [$ff30]
    ldh a, [$ff90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    dec a
    dec sp
    ld a, a
    ld d, e
    jp c, $fba5

    xor l
    jr c, jr_006_694a

    ld a, [hl]
    ld b, [hl]
    rst RST_10
    cp c
    cp c
    ld a, [hl]
    rst RST_28
    or c
    ld a, $c6
    rst RST_28
    pop af
    push af
    xor $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ld b, b
    ldh [$ffa0], a
    cp b
    ld e, b
    ld bc, $0101
    ld bc, $0302
    inc bc
    ld [bc], a
    ld b, $05
    ld b, $05
    dec b
    ld b, $03
    ld [bc], a
    rst RST_18
    ld a, c
    db $d3
    inc a
    ld sp, hl
    ld a, [hl]
    xor l
    sbc $76
    adc l

jr_006_694a:
    db $ed
    ld [hl], a
    ld a, e
    add [hl]
    db $dd
    ld h, e
    sbc [hl]
    rst RST_28
    add hl, bc
    rst RST_38
    call nz, Call_006_633b
    call c, $deed
    cp e
    call c, $be71
    jp nc, $dc3f

    ld h, h
    cp b
    ret c

    ldh [rNR41], a
    ldh [$ffe0], a
    ldh a, [$ff90]
    sbc b
    ld l, b
    ld l, [hl]
    or $a7
    reti


    inc bc
    ld [bc], a
    dec b
    ld b, $07
    inc b
    ld b, $05
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $679a
    db $fd
    inc de
    ld a, d
    add a
    xor l
    ld [hl], a
    halt
    adc l
    ld [hl], c
    sbc $89
    ld a, [hl]
    db $eb
    inc e
    adc a
    ld a, e
    add h
    ld a, e
    or e
    ld a, h
    ld e, c
    cp [hl]
    xor a
    call c, $de61
    xor $1f
    ld c, e
    rst RST_30
    ld a, [hl]
    add [hl]
    ld hl, sp+$78
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    ld [hl], b
    or b
    rst RST_10
    xor h
    jp hl


    or [hl]
    ld l, [hl]
    ld d, c
    inc a
    dec hl
    rra
    inc e
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $f837
    xor a
    db $d3
    ld a, h
    db $ec
    ld c, h
    or h
    db $ec
    inc d
    sub $aa
    cp a
    ld d, c
    cp $3e
    ld a, b
    adc b
    ldh a, [$ff30]
    ldh a, [$ff90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1b01
    ld a, [de]
    ld a, $25
    ld h, a
    ld e, c
    ld l, a
    ld e, l
    ld a, l
    ld l, a
    ld a, e
    ld b, a
    rst RST_18
    cp a
    jr nc, jr_006_6a22

    ld a, b
    ld c, b
    rst RST_08
    or a
    rst RST_18
    cp d
    ld a, d
    ld e, l
    dec [hl]
    cpl
    dec sp
    scf
    scf
    cpl
    nop
    nop
    ei
    ld a, e
    di
    ld [hl], l
    rst RST_30
    ld [hl], h
    sub h
    ld h, l
    xor b
    ld e, e
    sbc $37
    rst RST_38
    inc de
    cp e
    ld [hl], l
    xor $19
    db $dd
    cp a
    or l
    rst RST_18
    rst RST_28
    ld d, [hl]
    ld a, l
    set 7, a
    ld c, d
    ld l, a
    call nc, Call_006_5bfd

jr_006_6a22:
    cp $5d
    rst RST_28
    ld e, [hl]
    and b
    rst RST_18
    ld c, b
    or a
    cp d
    ld a, l
    ld [hl], c
    cp $fb
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    ccf
    ld h, $36
    add hl, hl
    dec a
    dec hl
    ld a, $2b
    nop
    nop
    nop
    nop
    nop
    nop
    add $c6
    rst RST_28
    add hl, hl
    cp a
    call nc, $ed1a
    ld c, a
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    ldh [$ffa0], a
    ret nz

    and b
    ld e, $17
    dec e
    inc de
    ld e, $11
    dec de
    rlca
    inc l
    rla
    ld a, e
    inc [hl]
    db $ed
    or d
    db $fd
    add e
    rst RST_28
    ld hl, sp+$67
    sbc b
    push af
    ld a, [de]
    rst RST_10
    rst RST_28
    or [hl]
    rst RST_08
    ld [hl], e
    sbc h
    cp a
    ld l, c
    ei
    call c, $c0a0
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld h, b
    add b
    and b
    ret nz

    ldh [$ffc0], a
    and b
    ret nz

    ldh [$ff80], a
    ld a, a
    ld [hl], b
    ld a, $39
    ccf

Jump_006_6a95:
    ld hl, $2b3f
    inc e
    rla
    rrca
    ld a, [bc]
    rlca
    inc b
    nop
    nop
    di
    inc a
    push hl
    cp $1f
    db $ec
    ld [hl], l
    adc e
    sbc [hl]
    inc de
    ld c, $0b
    rrca
    ld [$0000], sp
    ldh [rP1], a
    ld h, b
    nop
    and b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    ccf
    ld h, $36
    add hl, hl
    ld e, l
    ld l, e
    ld a, [hl]
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    rlca
    scf
    jr jr_006_6b4c

    jr nc, jr_006_6b46

    jr c, jr_006_6b50

    jr nc, jr_006_6b4a

    jr c, jr_006_6b54

    jr nc, jr_006_6b4e

    jr c, jr_006_6b35

    inc sp
    ld c, a
    jr nc, jr_006_6b5d

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $c6
    rst RST_28
    add hl, hl
    cp a
    push de
    dec de
    db $ed
    ld c, a
    ld sp, hl
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_6b35:
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    ld de, $2b36
    nop
    nop
    nop
    nop
    nop
    nop

jr_006_6b46:
    rst RST_38
    rst RST_38
    rst RST_38
    nop

jr_006_6b4a:
    inc de
    db $ec

jr_006_6b4c:
    ld [hl], l
    sbc e

jr_006_6b4e:
    xor e
    ld [hl], a

jr_006_6b50:
    nop
    nop
    nop
    nop

jr_006_6b54:
    nop
    nop
    add b
    add b
    ldh [$ff60], a
    ld [hl], b
    sub b
    sbc b

jr_006_6b5d:
    add sp, $7c
    add h
    ld l, e
    ld d, [hl]
    ld a, l
    ld d, [hl]
    sub $ad
    ei
    xor l
    rst RST_38
    xor c
    rst RST_38
    adc c
    db $db
    and h
    ld l, c
    ld d, [hl]
    halt
    rst RST_28
    db $dd
    xor $aa
    db $dd
    cp e
    db $dd
    ld [hl], a
    sbc c
    cp e
    ld d, l
    ld [hl], l
    adc $56
    rst RST_28

jr_006_6b80:
    or [hl]
    ld a, d
    ld a, e
    db $fd
    jp $9ffd


    db $e3
    ld l, e
    sbc l
    cp e
    ld a, l
    halt
    ld a, [$728e]
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    dec e
    ld [de], a
    scf
    dec l
    ld a, [hl]
    ld e, e
    db $db
    or [hl]
    rst RST_38
    and h
    ld a, a
    ld a, a
    rst RST_38
    add b
    sbc b
    ld h, a
    xor e
    call c, $bb75
    xor $77
    ld [hl], a
    call z, $aadf
    nop
    nop
    ret nz

    ret nz

    ldh a, [$ff30]
    jr c, jr_006_6b80

    db $ec
    db $f4
    ld a, h
    add h
    xor [hl]
    ld [hl], d
    or $fa
    db $fd
    sub d
    ld a, [hl]
    ld [hl], a
    dec [hl]
    ld l, $3f
    inc l
    ccf
    inc l
    dec [hl]
    ld l, $7e
    ld [hl], a
    db $fd
    sub d
    cp e
    ld h, l
    rst RST_18
    inc a
    rst RST_28
    rra
    ld a, $cf
    ld a, l
    xor a
    xor $1f
    db $d3
    inc a
    ei
    ld h, l
    ld l, e
    sbc l
    sub e
    ld l, l
    ld c, e
    push af
    and a
    ei
    dec bc
    push af
    db $db
    db $ed
    inc sp
    db $dd
    di
    dec a
    inc a
    nop
    ld e, d
    inc a
    cp l
    ld c, [hl]
    rst RST_38
    ld d, $ff
    ld b, $bd
    ld c, [hl]
    ld e, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld c, $02
    rrca
    dec b
    rrca
    ld b, $00
    nop
    ld [hl], b
    db $10
    sbc b
    ld l, b
    or $6e
    rst RST_28
    ld [hl], c
    db $eb
    ld [hl], l
    rst RST_28
    ld [hl], l
    rst RST_28
    ld de, $1e1e
    rra
    inc de
    rra
    ld de, $f8ff
    cp $99
    db $fd
    add e
    pop af
    rst RST_08
    ld l, h
    ld e, a
    ld a, [bc]
    dec b
    rra
    dec b
    dec a
    ld d, $37
    dec bc
    cpl
    db $10
    scf
    rrca
    ld e, $03
    ld d, $09
    xor [hl]
    ld d, [hl]
    ld a, a
    pop de
    db $dd
    ld [hl], $f7
    add sp, -$07
    ld b, $ef
    ldh a, [rIE]
    adc b
    rst RST_30
    ld [$070f], sp
    dec bc
    rlca
    adc a
    add b
    sub a
    adc a
    cp a
    add c
    db $ed
    sbc [hl]
    ld e, [hl]
    cp a
    sbc a

Call_006_6c5f:
    ld a, a
    sbc e
    ld l, h
    rst RST_28
    halt
    or $fb
    db $e4
    ei
    rst RST_08
    ldh a, [rNR10]
    rst RST_28
    and e
    ld e, h
    ld b, a
    cp [hl]
    ldh [rNR41], a
    ldh [$ffa0], a
    ldh [rNR41], a
    ld h, b
    and b
    jr nc, @-$2e

    ld hl, sp+$08
    db $fc
    ld [hl], h
    sbc h
    ld h, h
    ld b, $02
    dec bc
    dec b
    rrca
    dec b
    dec c
    ld b, $0f
    ld b, $0e
    rlca
    inc c
    rlca
    add hl, bc
    ld b, $1d
    ld c, $17
    ld c, $0f
    rlca
    adc a
    add h
    rst RST_38
    ldh a, [$fffb]
    inc b
    xor e
    ld [hl], l
    ld l, [hl]
    di
    ld [hl], c
    cp $e7
    ld a, b
    rst RST_18
    ldh [$fff7], a
    ld c, b
    rst RST_38
    ld [$18f7], sp
    rst RST_38
    ld d, b
    cp e
    db $e4
    cp [hl]
    ld a, a
    inc a
    rst RST_38
    call c, $f53f
    ld c, $fd
    ld [bc], a
    rst RST_38
    nop
    jp nz, $ba3d

    ld a, l
    ld e, e
    and h
    cp [hl]
    ld d, c
    cp h
    ld d, a
    ld a, h
    or a
    ld a, c
    or [hl]
    jp hl


    halt

Call_006_6ccc:
    ld [$daf5], a
    push hl
    ld l, h
    sub h
    ld c, $f2
    ld [hl], a
    adc l
    adc e
    ld [hl], l
    ld [hl], $fa
    halt
    ld a, [$fa46]
    sbc $e2
    dec [hl]
    ld [bc], a
    ld e, d
    ld sp, $1877
    sbc e
    ld h, a
    push hl
    ld a, $aa
    ld e, l
    cp a
    ld b, d
    halt
    add hl, sp
    rst RST_00
    ld hl, sp-$31
    ldh a, [$ffde]
    inc hl
    ccf
    ret nz

    cp a
    ld b, b
    sbc e
    ld h, h
    ld l, a
    ldh a, [c]
    rst RST_20
    ld hl, sp-$03
    ld [bc], a
    db $fd
    ld [bc], a
    di
    inc e
    rst RST_38
    ret nz

    ld a, a
    add b
    or a
    jp z, $936e

    ld a, $c3
    ld a, l
    cp $7d
    cp $70
    rst RST_38
    rra
    ldh [rIE], a
    nop
    db $d3
    inc a
    sub e
    ld a, h
    ei
    inc b
    ld a, $c1
    or $0d
    db $db
    inc h
    rst RST_18
    ld sp, $679b
    dec e
    db $e3
    dec a
    jp $837d


    or [hl]
    jp z, $dda3

    cpl
    db $dd
    xor e
    ld e, l
    ei
    add l
    db $db
    or l
    db $eb
    sub l
    cp $82
    cp $7f
    cp c
    ld a, [hl]
    rst RST_00
    jr c, @+$01

    ld b, h
    cp e
    ld b, h
    ld a, a
    nop
    ccf
    nop

jr_006_6d4e:
    ccf
    nop
    ld [hl], a
    ld hl, sp-$4a
    ld a, c
    rst RST_30
    jr c, jr_006_6d4e

    add hl, sp
    rst RST_30
    add hl, sp
    rst RST_28
    jr nc, jr_006_6ddc

    and c
    ld e, a
    and l
    ei
    adc h
    db $fc
    add a
    push af
    dec bc
    rst RST_10
    ld l, b
    xor $17
    rst RST_28
    rra
    rst RST_30
    rrca
    ret c

    ld h, a
    ld h, a
    ld hl, sp-$49
    ret z

    ld d, e
    xor h
    db $ed
    ld e, [hl]
    call c, $ce3f
    rst RST_38
    ld [hl], $cf
    cp $07
    rst RST_38
    ld bc, $05fb

jr_006_6d84:
    di
    dec c
    ldh [c], a
    dec e
    add $39
    rst RST_08
    jr nc, @+$01

    nop
    rst RST_38
    ld [bc], a
    cp $b2
    adc $b2
    sbc $a2
    db $fc
    add h
    db $fc
    add h
    ld hl, sp-$78
    ld hl, sp-$38
    ldh a, [$ff90]
    ccf
    nop
    ccf
    nop
    ccf
    ld [de], a
    ld l, $11
    rra
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    ld a, a
    add c
    ld h, l
    add d
    ld b, a
    add b
    jp $8000


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    adc b
    rst RST_10
    jr z, jr_006_6d84

    ret nz

    sbc e
    ld h, h
    rst RST_38
    inc b
    rrca
    nop
    dec bc
    rlca
    rlca
    nop
    cp $87
    ld l, [hl]
    sub a
    db $ed
    ld d, $6f
    or h
    db $eb
    or h
    db $dd
    ld h, b

jr_006_6ddc:
    or b
    ret nz

    ldh [rP1], a
    db $fd
    rlca
    cp $01
    ei
    inc b
    di
    inc c

jr_006_6de8:
    db $ed
    ld [de], a
    ldh [$ff1f], a
    ld e, [hl]
    ld hl, $0071
    or b
    ld d, b
    ret c

    add sp, $58
    add sp, -$48
    ld l, b
    cp b
    ld c, b
    ld hl, sp+$28
    ld a, b
    xor b
    ld hl, sp+$08
    dec b
    ld [bc], a
    ld b, $01
    inc bc
    nop
    ld bc, $0000
    nop
    ld sp, $5b00
    ld sp, $1877
    rst RST_08
    ldh a, [$ffcf]
    ldh a, [$ff0e]
    di
    rst RST_18
    jr nz, @+$01

    nop
    dec sp
    call nz, $e2dd
    rst RST_18
    jr nz, @+$01

    ld [bc], a
    cp $03
    cp $03
    ei
    call z, $877c
    or l
    bit 6, a
    adc b
    ld l, $d7
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    ld hl, sp+$07
    ld h, a
    ld hl, sp-$49
    ret z

    ld d, e
    xor h
    db $ed
    ld e, [hl]
    call c, $323f
    call Call_000_1ce3
    jp $c73c


    jr c, @-$2f

    jr nc, jr_006_6de8

    ld h, e
    cp [hl]
    ld c, c
    rst RST_38
    inc d
    or $0a
    ld h, e
    db $dd
    cp a
    ld b, l
    rst RST_38
    ld de, $79b7
    rst RST_10
    add hl, sp
    rst RST_10
    add hl, sp
    or $1a
    sbc e
    ld h, a
    push hl
    ld a, $aa
    ld e, l
    cp a
    ld b, d
    halt
    add hl, sp
    cp $7f
    cp c
    ld a, [hl]
    rst RST_00
    jr c, @+$41

    ret nz

    cp [hl]
    ld b, c
    sbc e
    ld h, h
    ld l, a
    pop af
    rst RST_20
    ld sp, hl
    ld [hl], a
    ld hl, sp-$49
    ld a, c
    rst RST_30
    add hl, sp

Call_006_6e80:
    rst RST_28
    sbc a
    rst RST_30
    adc a
    ld hl, sp+$07
    rst RST_18
    ld l, b
    rst RST_30
    ld [$00ff], sp
    rst RST_38
    nop
    rst RST_18
    ld h, b
    adc $ff
    ld [hl], $cf
    cp $07
    cp $87
    ld a, [hl]
    add a
    db $fd
    ld b, $ef
    inc d
    db $eb
    inc d
    swap a

jr_006_6ea2:
    sbc b
    ld h, a

jr_006_6ea4:
    sbc b
    ld h, a
    sub c

jr_006_6ea7:
    ld l, [hl]
    or e
    ld c, h
    and e
    ld e, h
    ld h, a
    sbc b
    rst RST_08
    jr nc, jr_006_6ea7

    ld a, [de]
    or $1a
    or $1a
    or $1a
    and $1a
    and $1a
    xor $1a
    cp [hl]
    ld d, d
    rst RST_38
    ld b, h
    cp e
    ld b, h
    ld a, a
    nop
    ld e, e
    dec h
    ld a, a
    dec h
    ld a, [hl]
    inc bc
    ld e, l
    ld a, $3f
    nop
    rst RST_30
    add hl, sp
    ld [hl], l
    cp d
    ld l, a
    or b
    ld [hl], e
    and b
    ld d, b
    and b
    ldh [rP1], a

jr_006_6edc:
    add b
    nop
    nop
    nop
    ld a, a
    add b
    rst RST_18
    jr nz, jr_006_6ea4

    jp nz, $629d

    rst RST_38
    ld bc, $0001
    nop
    nop
    nop
    nop
    rst RST_28
    db $10
    db $ed
    ld [de], a
    db $eb
    ld d, h
    rst RST_18
    jr nz, jr_006_6edc

    pop bc
    add $01
    dec b
    ld [bc], a
    rlca
    nop
    rst RST_08
    jr nc, jr_006_6ea2

    ld h, b
    sbc [hl]
    ld h, b
    inc l
    call nc, Call_000_3bdf
    rst RST_08
    db $fc
    rst RST_20
    dec de
    rra
    nop
    ld d, $ea
    srl l
    dec hl
    dec e
    rla
    dec c
    rla
    add hl, bc
    adc a
    add l
    rst RST_08
    ld b, l
    rst RST_00
    ld b, c
    nop
    nop
    nop
    nop
    rlca
    dec b
    dec c
    ld a, [bc]
    rrca
    ld a, [bc]
    ld c, $0b
    dec c
    dec bc
    rrca
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add c
    add c
    rst RST_38
    cp $f7
    ld [$778b], sp
    inc [hl]
    ei
    ld e, $15
    inc a
    daa
    dec a
    daa
    ld l, h
    ld d, e
    ld a, a
    ld e, a
    cp $a1
    push af
    adc [hl]
    db $db
    cp a
    ld a, e
    db $ec
    ldh a, [$ffcf]
    db $fc
    sbc a
    cp $3f
    ld a, l
    cp $f2
    db $fd
    push af
    dec bc
    rst RST_08
    ei
    ld [hl], b
    or b
    cp b
    ret z

    ld e, h
    db $ec
    cp $82
    sub $3a
    xor a
    pop de
    db $db
    db $ed
    cpl
    pop af
    ld h, b
    ld e, a
    ld a, b
    ld b, a
    scf
    jr z, jr_006_6fea

    ld c, h
    db $dd
    cp e
    rst RST_38
    add b
    nop
    nop
    nop
    nop
    ccf
    db $db
    ld [hl], l
    cp e
    and $79
    rst RST_08
    ldh a, [$ffdb]
    rst RST_20
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    ld e, e
    or l
    xor e
    db $dd
    rst RST_20
    reti


    ld a, [hl]
    ldh [c], a
    db $ec
    db $f4
    db $fc
    inc b
    nop
    nop
    nop
    nop
    ld a, e
    db $ec
    ldh a, [$ffcf]
    call c, $eeaf
    rra
    ld a, h
    rst RST_38
    di
    cp $f3
    inc c
    db $ec
    rst RST_18
    ld [hl], b
    or b
    cp b
    ret z

    ld e, h
    db $ec
    cp $82
    sub $3a
    rrca
    pop af
    ld l, e
    db $dd
    ld h, a
    sbc c
    ld a, a
    ld b, b
    rst RST_38
    adc d
    sbc $a7
    ld l, a
    ld d, e
    scf
    add hl, hl
    dec e
    ld [de], a
    rrca
    rrca
    nop
    nop
    ret c

    ccf
    ld [hl], l
    ld a, [$f0cf]
    ccf
    ret z

    or $35
    jp Jump_000_01c2


    ld bc, $0000
    db $eb
    push af
    ld h, a
    ld a, [$79f6]
    cp e
    ld a, l
    push de
    ccf

jr_006_6fea:
    ld [hl], $cf
    rst RST_28
    db $10
    rst RST_38
    rst RST_38
    ldh [rNR41], a
    ld [hl], b
    ret nc

    ld hl, sp-$18
    sbc h
    db $f4
    ld c, [hl]
    cp d
    cp $2a
    db $fc
    call nz, $3838
    nop
    nop
    nop
    nop
    inc e
    inc b
    inc a
    inc d
    ld a, h
    inc h
    ld a, h
    inc h
    db $ed
    ld d, h
    db $ed
    ld d, h
    ld d, $0a
    ld a, $12
    ld a, h
    inc h
    ld a, h
    inc h
    db $ec
    ld d, h
    db $ec
    ld d, h
    call z, $c6b4
    cp d
    ld h, c
    ld h, c
    ei
    sbc d
    and $a4
    ld a, l
    ld d, c
    ld e, a
    ld c, c
    ld a, $27
    ld l, a
    ld b, a
    db $db
    sbc a

jr_006_7030:
    ld b, $7a
    ld a, h
    db $e4
    ld hl, sp-$78
    or b
    ld d, b
    ld h, b
    and e
    ld h, e
    xor [hl]
    adc $5d
    call nc, Call_000_003b
    nop
    nop
    nop
    jr jr_006_706e

    jr jr_006_7030

    ld [hl], b
    sub b
    or b
    ld d, b
    ld h, b
    and b
    ld h, b
    and b
    rst RST_20
    ld e, d
    ldh [c], a
    ld e, l
    pop hl
    ld e, a
    pop hl
    ld e, a
    pop hl
    ld e, a
    pop de
    ld l, a
    ld [hl], c
    cpl
    ld a, c
    daa
    jp $c3bc


    cp l

jr_006_7064:
    push bc
    cp e
    rst RST_00
    cp e
    jp $e6bf


    sbc a
    rst RST_20
    sbc [hl]

jr_006_706e:
    xor a
    sub $b0
    rst RST_08
    pop hl
    sbc [hl]
    ld h, e

jr_006_7075:
    sbc l
    jp $c63f


    ccf
    push bc
    ld a, $cd
    ld a, $db
    inc a
    add sp, $77
    sub b
    rst RST_28
    and b
    rst RST_18
    ld b, c
    cp a
    add a
    ld a, [hl]
    sbc [hl]
    ld a, c
    jr c, jr_006_7075

    ld h, b
    sbc a
    ld h, b
    and b
    jr nc, jr_006_7064

    ld l, h
    db $f4
    ld hl, sp-$78
    or b
    ld d, b
    ld h, b
    and b
    ld h, b
    and b
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rlca
    inc bc
    rlca
    nop
    inc a
    inc de
    ld e, $09
    dec bc
    inc b
    push bc
    ld [bc], a
    and e
    pop bc
    db $fd
    jp nz, $dba6

    dec b
    ei
    rst RST_38
    add $7b
    add $fd
    ld [bc], a
    ld [hl], e
    db $fc
    db $fd
    cp $cc
    di
    cp [hl]
    db $fd
    ld h, d
    db $fd
    sub $39
    db $fd
    ld [hl-], a
    xor $31
    rst RST_18
    ld h, b
    sbc [hl]
    ld h, c
    cp l
    ld b, e
    pop hl
    rra
    and h
    ld a, e
    add e
    ld a, a
    rra
    db $fc
    inc a
    db $e3
    ldh a, [rIF]
    ret


    rst RST_30
    rst RST_20
    ld hl, sp-$7c
    ei
    ld a, l
    add d
    ldh [$ffa0], a
    ldh a, [rNR10]
    ld h, b
    and b
    ret nz

    ld b, b
    ldh [$ff60], a
    ldh a, [rNR10]
    ld h, b
    and b
    ret nz

    ret nz

    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    ld bc, $0304
    dec b
    inc bc
    and $19
    cp a
    call nz, $efdb
    sbc e
    ld h, h
    ld a, [hl]
    add l
    rst RST_18
    rst RST_20
    scf
    ret z

    ld a, e
    sub [hl]
    sbc c
    and $7d
    add [hl]
    sbc l
    cp $da
    db $fd
    adc h
    di
    add hl, de
    and $fb
    inc b
    ei
    and h
    ld a, b
    rst RST_38
    ld a, c
    cp $1f
    ldh [$ffb3], a
    ld c, a
    rst RST_30
    ld c, $ff
    nop
    sbc b
    ld h, a
    inc a
    jp $05fb


    or $0a
    ld a, h
    and h
    ld hl, sp+$38
    ld hl, sp+$18
    ld e, h
    and h
    ld a, [hl]
    add d
    xor e
    ld d, l
    dec bc
    rlca
    ld c, $07
    dec de
    rlca
    ld c, $07
    add hl, de
    ld b, $0e
    ld bc, $0619
    ld h, $1b
    ld a, c
    sub $dd
    xor d
    inc [hl]
    db $d3
    ld e, h
    xor e
    ldh a, [c]
    ld de, $e91a
    dec l
    call nc, Call_006_64dc
    ld d, [hl]
    xor c
    db $ec
    inc de
    ld hl, sp-$19
    di
    inc c
    ld b, $f9
    add hl, bc
    rst RST_30
    dec d
    xor $e6
    dec de
    ld l, a
    sbc a
    sbc $3f
    cp a
    ld a, a
    ld [$373f], a
    call $f60b
    inc h
    db $db
    db $d3
    ld l, h
    ld l, e
    push de
    xor e
    push de
    db $eb
    ld d, l
    or a
    ret


    xor $12
    ld a, h
    adc h
    ldh a, [rNR10]
    ldh [$ffe0], a
    scf
    ld e, $7d
    ld [hl], $6f
    inc [hl]
    ld a, a
    inc h
    ld a, a
    inc h
    cpl
    inc d
    add hl, de
    ld b, $0a
    nop
    xor $d2
    or [hl]
    jp z, $95eb

    rst RST_18
    and c
    rst RST_38
    adc c
    cp $8a
    ld a, $d2
    ld e, h
    inc l
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld c, $0a
    dec e
    inc d
    dec sp
    jr z, jr_006_7245

    ld d, b
    rst RST_28
    rst RST_38
    pop bc
    cp a
    ret


    cp $9a
    cp $92
    db $fc
    sub h
    db $fc
    sub h
    inc l
    call nc, $0858
    sbc c
    and $7d
    add [hl]
    sbc l
    cp $da
    db $fd
    adc [hl]
    pop af
    dec e
    ldh [c], a
    db $fd
    ld [bc], a
    db $fd
    and d
    ld e, c
    and [hl]
    ld a, [$f405]
    dec bc
    ei
    inc d
    or $e9
    jp hl


    rla
    dec d
    xor $e6
    dec de
    rlca
    ld bc, $040b
    ld c, $05
    dec bc
    ld b, $07
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $c3c1
    db $e3
    ld h, $33
    sub $9b
    ld l, [hl]
    adc $33
    db $e3
    sbc a
    ld [hl], c
    rst RST_08
    ld [hl], b
    sub b
    or b
    ld d, b
    jr @-$16

    inc c
    db $f4
    ld b, $fb
    add e
    ld a, l
    ld b, a
    cp e
    ldh [c], a
    sbc a
    inc bc
    rrca
    rrca
    inc a
    inc a
    ld [hl], e
    ld a, b
    rst RST_20
    ldh a, [$ffcf]
    ld h, b
    sbc a
    db $e3
    rra
    add $3f
    ld a, [hl]
    add d
    sbc h
    ld h, a
    inc hl

jr_006_7245:
    rst RST_18
    ld e, a
    cp h
    db $ec
    ld [hl], e
    or b
    rst RST_08
    ld h, b
    sbc a
    ret nz

    ccf
    ld bc, $7f7e
    pop hl
    di
    adc l
    add [hl]
    ld a, d
    ld b, $fa
    ld b, $fa
    ld b, $fa
    ld b, $fa
    xor b
    ld [hl], a
    halt
    add hl, de
    inc de
    inc c
    call $a302
    pop bc
    db $fd
    jp nz, $dba6

    dec b
    ei
    db $dd
    ld l, $fb
    inc e
    or $39
    rst RST_28
    ld [hl], b
    sbc [hl]
    ld h, c
    cp l
    ld b, e
    pop hl
    rra
    and h
    ld a, e
    add b
    ld a, a
    ld bc, $0eff
    rst RST_38
    ei
    inc b
    call z, $e4f3
    ei

jr_006_728c:
    add a
    ld hl, sp+$7c
    add e
    rlca
    ei
    rst RST_38
    db $fc
    ccf
    pop bc
    add $3a
    ld b, $fa
    adc [hl]
    ldh a, [c]
    db $ec
    ld [hl], h
    ld a, h
    sub h
    ld hl, sp+$07
    rst RST_38
    ld bc, $bc43
    ldh [$ff1f], a
    ldh a, [rIF]
    ld e, b
    and a
    ld l, b
    sub a
    xor l
    ld d, d
    ld d, $ea
    ld c, $f2
    sbc h
    db $ec
    ldh a, [$ff50]
    ld [hl], b
    sub b
    jr nc, jr_006_728c

    ldh a, [rNR10]
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    add c
    add c
    jp $c642


    ld b, l
    sbc $bf
    pop af
    cp [hl]
    db $db
    cp l
    ld a, a
    ld c, a
    ld l, h
    ld e, a
    scf
    ld l, $35
    dec hl
    dec de
    rla
    call z, $df4b
    ld d, h
    ld [hl], a
    xor b
    halt
    xor c
    xor [hl]
    ld d, c
    cp a
    ret nc

    ld a, [hl]
    add c
    call c, Call_006_7863
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop

Jump_006_72ff:
    nop
    ld a, a
    ld a, [hl+]
    ld c, e
    dec [hl]
    ld a, [hl+]
    dec d
    ld d, d
    dec l
    or h
    ld c, e
    add c
    ld a, [hl]
    add e
    db $fd
    add [hl]
    ei
    dec a
    cp $02
    db $fc
    inc a
    ret nz

    inc b
    ld hl, sp+$44
    ld hl, sp+$44
    ld hl, sp+$42
    db $fc
    ld h, e
    db $fc
    inc b
    nop
    dec bc
    inc b
    dec b
    inc bc
    inc bc
    nop
    ld a, $01
    ld e, e
    inc a
    pop hl
    ld a, [hl]
    add e
    db $fc
    ld [bc], a
    ld bc, $0113
    cp a
    ld de, $15bb
    ld sp, hl
    sub [hl]
    xor h
    ld e, e
    ld e, a
    xor b
    adc [hl]
    ld a, l
    ld h, c
    cp $61
    cp $67
    ld hl, sp+$25
    ld a, [$7a87]
    add [hl]
    ld a, e
    ld b, l
    dec sp
    ld e, a
    ld hl, $8f5f
    xor b
    rst RST_00
    ld h, a
    ret nz

    ld d, [hl]
    db $e3
    dec hl
    ldh a, [$ffa4]
    ld a, b
    sub d
    ld a, h
    ld c, c
    cp [hl]
    inc b
    ei
    adc b
    ld [hl], a
    ld c, $f1
    ld b, a
    cp d
    adc h
    ld [hl], e
    sub [hl]
    db $ed
    ld sp, hl
    ld b, $2d
    ld a, [de]
    ld l, [hl]
    rst RST_30
    jp z, $07f7

    ld hl, sp+$12
    db $ed
    sbc c
    ld h, a
    sub l
    ld l, e
    sub $2d
    ret


    ld [hl], $16
    add hl, bc
    inc de
    inc c
    dec c
    ld b, $0a
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    call z, $afbf
    rst RST_18
    daa
    rst RST_18
    sub a
    ld l, a
    db $d3
    cpl
    ld c, c
    or a
    ld h, $d9
    pop de
    ld l, $07
    inc bc
    add hl, bc
    rlca
    ld a, b
    rlca
    ldh a, [$ff6f]
    ld l, h
    or e
    or [hl]
    reti


    rst RST_10
    ld l, d
    ld a, a
    xor d
    rst RST_38
    add b
    pop bc
    cp $e0
    rst RST_38
    pop bc
    ld a, [hl]
    ld b, [hl]
    cp b
    ld e, b
    and b
    ld h, b
    add b
    ld b, b
    add b
    and $9b
    jp nz, $863f

    ld a, a
    sub [hl]
    ld a, a
    ld c, h
    ccf
    ld hl, $1e1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld hl, sp+$50
    db $f4
    ld e, b
    ld a, [$beac]
    call nc, Call_006_56a9
    sub c
    ld l, [hl]
    cp l
    ld d, d
    rst RST_18
    ld l, b
    rst RST_08
    ld [hl], h
    ret


    halt
    sub c
    ld l, [hl]
    ld d, c
    ld l, $2b
    inc d
    nop
    nop
    inc bc
    nop
    inc e
    inc bc
    db $e3
    rra
    ccf
    rst RST_38
    ld a, a
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    ld [hl], $09
    di
    inc c
    ld a, l
    add [hl]
    ld a, [hl+]
    rst RST_10
    and l
    db $db
    ld b, $f9
    inc bc
    db $fc
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    rlca
    nop
    dec b
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $03
    dec b
    inc bc
    inc bc
    ld bc, $0101
    rra
    ld e, $3f
    dec h
    ld a, a
    ld e, c
    ld a, d
    ld e, l
    ld [hl], l
    ld l, a
    ld a, e
    ld b, a
    rst RST_30
    cp a
    ld b, $06
    rrca
    add hl, bc
    rra
    ld d, $3f
    ld [hl], $7d
    ld b, e
    rst RST_38
    or e
    rst RST_30
    cp a
    ld a, a
    ld c, a
    nop
    nop
    nop
    ld bc, $0301
    ld bc, $0303
    rlca
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld a, a
    rlca
    rlca
    rra
    jr jr_006_748e

    daa
    ld h, a
    ld e, a
    ld l, a
    ld e, a
    rst RST_18
    cp a
    rst RST_18
    cp a
    rst RST_38
    cp a
    ldh [$ffe0], a
    ld hl, sp-$68
    db $dd
    and l
    ld [hl], a
    ld e, d
    ld l, [hl]
    ld e, l
    dec a
    cpl
    add hl, de
    rla
    scf
    cpl
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop

jr_006_7480:
    rst RST_38
    adc a
    ld l, a
    ld d, b
    ld a, [hl]
    ld d, a
    ld e, c
    ld l, [hl]
    ld [hl], d
    ld e, a
    rst RST_20
    cp a
    ei
    xor h

jr_006_748e:
    cp a
    jp nz, $4078

    ret nc

    and b
    ldh a, [rNR41]
    ld hl, sp-$40
    call c, $2438
    ld hl, sp-$48
    ld b, b
    jr jr_006_7480

    rst RST_28
    or c
    rst RST_30
    adc [hl]
    ei
    cp h
    cp a
    pop bc
    sbc $bf
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    sub b
    ldh [$ffd0], a
    ld h, b
    ldh a, [rLCDC]
    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    scf
    rrca
    ld l, a
    jr jr_006_7514

    inc sp
    db $ed
    ld e, $bf
    ld b, b
    cp $25
    xor a
    ld e, c
    rst RST_38
    db $10
    ld a, b
    add a
    or [hl]
    rst RST_08
    ld [hl], a
    xor a
    rst RST_30
    rrca
    rst RST_18
    cp a
    rst RST_20
    dec sp
    rst RST_20
    ei
    add [hl]
    inc c
    ld a, d
    sbc h
    ld h, h
    cp b
    ld c, b
    or b
    or b
    ret nz

    ret c

    ldh [rHDMA4], a
    add sp, -$66
    db $ec
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst RST_38
    cp a
    db $fd
    cp [hl]
    db $db
    cp h
    rst RST_38
    sbc b
    ld [hl], a
    rst RST_38
    sbc h
    ld h, e
    db $eb
    inc d
    rst RST_38
    ld d, l
    db $eb
    scf
    rst RST_28
    scf

jr_006_7514:
    rst RST_30
    ld l, a
    db $d3
    rst RST_28
    sub [hl]
    rst RST_28
    ld l, $df
    db $fc
    ccf
    ld hl, sp+$3f
    jp c, Jump_000_15ed

    xor $95
    xor $27
    sbc $2f
    sbc $4d
    cp [hl]
    ld e, e
    cp h
    add $38
    cp [hl]
    ld b, c
    ld l, e
    inc e
    ld e, $01
    dec c
    inc bc
    dec d
    dec bc
    dec d
    dec bc
    ld a, [bc]
    dec b
    rlca
    nop
    pop af
    ld a, [hl]
    ld [hl], a
    ld hl, sp-$1b
    ld hl, sp-$17
    ldh a, [$fff0]
    ret nz

    xor b
    ret nc

    add hl, bc
    ldh a, [$fff0]
    nop
    adc [hl]
    ld [hl], b
    ld [hl], d
    db $fc
    ld a, e
    db $fc
    adc e
    ld a, h
    rst RST_30
    ld [$46b9], sp
    and c
    sbc $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    cp a
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    inc c
    scf
    inc c
    ld l, a
    jr jr_006_75e2

    inc sp
    db $ed
    ld e, $bf
    ld b, b
    cp $25
    xor a
    ld e, c
    rst RST_38
    ccf
    ld hl, sp+$47
    or [hl]
    rst RST_08
    ld [hl], a
    xor a
    rst RST_30
    rrca
    db $db
    cp a
    push hl
    dec sp
    push hl
    ei
    push hl
    dec sp
    ld a, d
    sbc h
    ld h, h
    cp b
    ld c, b
    or b
    or b
    ret nz

    ret nc

    ldh [$ff98], a
    ldh [$ffe8], a
    ldh a, [$ffc8]
    ldh a, [rSB]
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    cp [hl]
    db $db
    cp h
    rst RST_38
    sbc b
    ld [hl], a
    rst RST_38
    sbc h
    ld h, e
    db $eb
    inc d
    rst RST_38
    ld d, l
    cp [hl]
    ld b, c
    and $39

jr_006_75e2:
    ldh [c], a
    ld a, l
    jp $83fc


    db $fc
    add hl, sp
    add $ec
    rra
    call c, $bd3f
    ld a, [hl]
    db $ec
    ldh a, [$ff74]
    ld hl, sp+$3c
    ld hl, sp+$7c
    ld hl, sp+$74
    ld hl, sp-$0c
    ld a, b
    db $e4
    ld a, b
    ld l, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    db $eb
    inc e
    ld a, a
    ldh [$ff67], a
    ld hl, sp+$13
    ld a, h
    rlca
    jr c, jr_006_7695

    db $fd
    and $9b
    swap h
    ld c, c
    cp $e7
    ld hl, sp+$72
    db $fd
    cp d
    ld a, l
    ldh [c], a
    dec e
    ldh a, [c]
    db $fd
    cp c
    ld a, [hl]
    ld c, c
    or $68
    ldh a, [rOBP0]
    ldh a, [$ff08]
    ldh a, [$ffd8]
    ldh [$ffd8], a
    ldh [$fff4], a
    add sp, $34
    ld hl, sp-$08
    nop
    rrca
    ld [$0b0e], sp
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $05
    dec bc
    dec c
    dec c
    dec bc
    nop
    nop
    ld hl, sp+$00

Call_006_7654:
    ld [hl], h
    cp b
    ldh [c], a
    ld a, h
    jp c, $dae4

    db $e4
    ldh [c], a
    db $fc
    jp nz, $0ffc

    dec bc
    rrca
    dec bc
    dec de
    rla
    ld e, $17
    rra
    rla
    ld e, $17
    inc [hl]
    cpl
    ld [hl], $2f
    add h
    ld hl, sp+$18
    ldh [$ffa0], a
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    ld sp, $5b2e
    ld l, h
    ld a, l
    ld e, [hl]
    ld a, c
    ld e, [hl]
    ld a, d
    ld e, l
    ld l, e
    ld e, h
    jr nc, jr_006_76bd

    rra
    db $10
    add b

jr_006_7691:
    nop
    nop
    nop
    nop

jr_006_7695:
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld bc, $0506
    inc e
    inc de
    ld [hl-], a
    cpl
    jr nz, jr_006_76b2

jr_006_76b2:
    ld [hl], b
    jr nz, jr_006_7691

    ld h, b
    ld [$5c9c], a
    and b
    ld a, [$9e04]

jr_006_76bd:
    ld [hl], b
    ld a, b
    ldh [$ff6e], a

jr_006_76c1:
    ld e, a
    db $dd
    cp [hl]
    cp c
    ld a, [hl]
    or d
    ld a, l
    and a
    ld a, e
    adc $bf
    ld [hl], h
    ld c, a
    ccf
    jr nc, jr_006_76c1

    nop
    sbc b
    ld h, b
    ld [hl], h
    ld hl, sp-$1e
    db $fc
    jp c, $dae4

    db $e4
    ldh [c], a
    db $fc
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $0f
    add hl, bc
    dec de
    rla
    halt
    ld c, a
    and $3f
    rrca
    ld [$0b0e], sp
    rlca
    dec b
    dec e
    ld [de], a
    ld [hl], a
    ld c, a
    rst RST_18
    ccf
    ld a, a
    rst RST_38
    push af
    rst RST_38
    nop
    nop
    xor b
    ld d, b
    ld [hl], h
    cp b
    ldh [c], a
    ld a, h
    jp c, $dae4

    db $e4
    jp nz, Jump_000_02fc

    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    ld [hl], b
    rst RST_38
    and e
    db $fc
    ld c, d
    db $fc
    ld e, d
    db $ec
    ld [hl], h
    ret z

    cp h
    ld b, b
    sub b
    ld h, b
    ld h, b
    nop
    ldh [rIE], a
    adc a
    ldh a, [rSVBK]
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld a, e
    ld c, d
    ld a, a
    ld d, [hl]
    ccf
    ld a, [hl+]
    scf
    dec l
    ld l, e
    ld d, l
    cp l
    sub $df
    or d
    inc bc
    inc bc
    add a
    add h
    db $ed
    ld l, e
    ei
    sub a
    rst RST_30
    ld l, a
    or $9f
    db $eb
    cp l
    rst RST_30
    add hl, de
    add hl, bc
    add hl, bc
    sbc l
    sub l
    db $fd
    ld h, l
    ld a, h
    sub h
    ld hl, sp+$68
    ld [hl], c
    sub c
    dec de
    ld [$ee1d], a
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$ff50]
    ld hl, sp-$58
    call c, $bcb4
    ld b, h
    ld l, h
    ld hl, sp-$24
    xor b
    cp $ab
    rst RST_38
    xor c
    rst RST_38
    xor c
    rst RST_38
    xor b
    rst RST_38
    xor b
    ei

Call_006_77ab:
    xor h
    rst RST_38
    and h
    rst RST_38
    and h
    rst RST_38
    ld de, $53be
    db $ec
    ccf
    db $db
    ld a, h
    or $99
    rst RST_28
    or c
    sbc $e3

Jump_006_77be:
    ld a, l
    and [hl]
    ccf
    reti


    ld a, [hl-]
    rst RST_00
    db $fd
    ld c, $fb
    add h
    rst RST_18
    or b
    ld l, a
    sbc b
    or a
    ld l, b
    rst RST_18
    jr nc, jr_006_7827

    xor h
    cp $24
    cp $25
    db $fd
    ld h, $fb
    ld h, $ff
    ld [hl+], a
    rst RST_38
    ld [hl+], a
    cp a
    ld h, d
    rst RST_18
    or h
    cp e
    sub $7d
    ld d, d
    ld l, a
    ld d, b
    ld e, l
    ld l, [hl]
    dec a
    cpl
    ld sp, $1f2e
    inc d
    db $eb
    inc e
    rst RST_38
    nop
    rst RST_10
    cpl
    rst RST_28
    jr @+$01

    db $10
    rst RST_38
    nop
    cp $8d
    ld [hl], d
    db $dd

Call_006_7800:
    ld h, a
    ret c

    or a
    ld l, b
    rst RST_08
    or b
    ld l, a
    ret nc

    sbc a
    ld h, b
    ld e, l
    and e
    db $fd
    rlca
    ld a, [$df4d]
    ld h, d
    rst RST_38
    ld b, d
    cp a
    jp nz, $867b

    db $fd
    ld b, $fe
    add l
    cp $84
    ld e, [hl]
    add h
    dec de
    ld d, $1f
    ld a, [de]
    dec a
    inc hl
    ld [hl], a

jr_006_7827:
    ld e, h
    db $fc
    xor a
    rst RST_38
    xor b
    ld l, b
    ld b, b
    nop
    nop
    or e
    ld e, h
    ldh a, [$ff1f]
    cp e
    dec c
    adc l
    nop
    ret nz

    add b
    ldh [rLCDC], a
    and b
    ld b, b
    ld b, b
    nop
    or [hl]
    db $db
    xor l
    sub $53
    xor h
    or a
    add hl, bc
    add hl, de
    rlca
    dec sp
    inc e
    ld l, $10
    jr c, jr_006_7850

jr_006_7850:
    adc d
    inc b
    inc b
    nop
    ret nz

    nop
    ld h, b
    ret nz

    ldh a, [$ffa0]
    ldh a, [$ffa0]
    and b
    nop
    nop
    nop
    ld bc, $0701

Call_006_7863:
    ld b, $0f
    ld a, [bc]
    dec de
    inc d
    rra
    inc d
    dec e
    ld d, $15
    ld a, [de]
    dec de
    rla
    inc bc
    inc bc
    add a
    add h
    db $ed
    ld l, e
    ei
    sub a
    rst RST_30
    ld l, a
    or $1f
    db $eb
    dec a
    ld [hl], a
    sbc c
    ld [$9c08], sp
    sub h
    db $fc
    ld h, h
    ld a, h
    sub h
    ld hl, sp+$68
    ld a, h
    sbc h
    ld e, $e2

jr_006_788e:
    cpl
    db $dd
    inc e
    inc de
    rra
    inc de
    ld l, $33
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld [hl], $2b
    dec a
    inc hl
    scf
    add hl, hl
    rst RST_18
    pop hl
    or a
    ld a, b
    adc $bf

jr_006_78a6:
    di
    adc a
    ld a, h
    jp Jump_006_60bf


    rst RST_28
    jr nc, jr_006_78a6

    jr jr_006_788e

    ld a, $79
    cp $e7
    ld hl, sp+$3f
    ret nz

    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $73
    adc h
    scf
    add hl, hl
    ld [hl], $29
    dec hl
    inc [hl]
    rra
    db $10
    dec a
    ld l, $3d
    cpl
    ld sp, $1e2e
    inc de
    ld a, e
    adc h
    rst RST_38
    add [hl]
    cp l
    jp $c07f


    rst RST_18
    ld h, b
    cp a
    ld h, b
    rst RST_28
    or b
    or a
    ld e, b
    adc $31
    cp $00
    cp h
    jp nz, $f874

    cp $00
    rst RST_28
    ld d, $d7
    ld l, $a9
    ld e, [hl]
    rrca
    add hl, bc
    ld c, $0d
    rra
    db $10
    dec sp
    ld l, $7e
    ld d, a
    ld a, a
    ld d, h
    inc [hl]
    jr nz, jr_006_78ff

jr_006_78ff:
    nop
    rst RST_38
    ld [$84ff], sp
    rst RST_18
    add d
    add $01
    ld h, e
    ret nz

    ldh a, [rNR41]
    ld d, b
    jr nz, jr_006_792f

    nop
    cp l
    ld d, [hl]
    ld a, d
    adc h
    ld [hl], a
    sbc b
    adc $33
    ld [hl], e
    rrca
    ld [hl], a
    add hl, sp
    ld e, l
    jr nz, jr_006_798f

    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld b, b
    nop
    nop

jr_006_792f:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec c
    ld c, $36
    add hl, sp
    ld e, e
    ld l, l
    or [hl]
    db $db
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    cp c
    rst RST_00
    cp a
    ld a, h
    ld d, [hl]
    rst RST_38
    rst RST_18
    dec hl
    xor [hl]
    push de
    sub h
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    rla
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, b
    ld h, [hl]
    cp $9d
    or a
    ld a, [hl]
    dec a
    ld [hl+], a
    ld a, e
    ld e, h
    cp [hl]
    db $dd
    and l
    sbc $db
    and [hl]
    or a
    ld hl, sp-$21
    cp l
    xor e
    call nc, $ff7e
    ld h, l
    rst RST_38
    rst RST_18
    db $e4
    cp $ed
    reti


    cp [hl]
    and a
    ret c

    ld e, d
    push hl
    db $ec

jr_006_798f:
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0b
    rrca
    dec d
    dec de
    ld l, $31
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc [hl]
    db $ed
    ld [hl], e
    jp hl


Jump_006_79ad:
    sbc [hl]
    ld d, h
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh [$ff90], a
    ldh a, [$ff78]
    ld l, b
    ldh a, [$ffb0]
    ld c, h
    ld e, l
    ld l, [hl]
    ld e, e
    ld l, [hl]
    dec l
    ld [hl-], a
    ld a, $2d
    dec a
    ld l, $19
    ld d, $17
    jr jr_006_79ed

    ld de, $5fbe
    ld a, l
    adc $5f
    db $e4
    ld a, a
    db $e4
    cp $ed
    reti


    cp [hl]
    rst RST_20
    sbc b
    rst RST_38
    add b
    db $ec
    ld e, $5a
    cp h
    ld h, h
    sbc d
    ld e, b
    and h
    call c, $a4b8
    ld e, b
    cp b

jr_006_79ed:
    ld b, b
    ldh [$ff50], a
    ld a, [de]
    dec d
    add hl, hl
    ld [hl], $33
    dec l
    ld [hl-], a
    dec l
    add hl, hl
    scf
    dec [hl]
    ld l, $55
    ld l, e
    ld h, e
    ld e, h
    cp e
    call nz, $cd76
    ld l, a
    rst RST_38
    cp [hl]
    ld a, e
    ld l, e
    sbc l
    sbc a
    rst RST_30
    xor e
    ld a, [hl]
    ld a, [hl+]
    push de
    ret nz

    ld h, b
    and b
    ret nz

    ld b, b
    ldh [$ffc0], a
    or b
    ldh a, [rLCDC]
    ld h, b
    sub b
    ld d, b
    add sp, $78
    or h
    ld b, $06
    ld c, $09
    ld e, $17
    inc a
    cpl
    ld a, c
    ld c, [hl]
    cp a
    ldh a, [$ffe6]
    cp c
    call Call_000_00b2
    nop
    nop
    nop
    ld e, $9e
    db $ed
    ld [hl], e
    and $1d
    sbc d
    ld a, a
    xor [hl]
    ld e, a
    ld [hl], l
    adc $30
    jr nc, @+$52

    ld l, b
    call nc, $b4b8
    ld a, b
    db $ec

jr_006_7a49:
    ld [hl], d
    sbc $6c
    ld a, d
    sbc a
    ld h, l
    sbc [hl]
    ld a, d
    ld b, a
    cp e
    push af
    res 6, a
    ld a, c
    ld b, a
    inc bc
    rrca
    dec c
    ld a, [bc]
    dec c
    dec bc
    dec d
    ld a, [de]
    rst RST_18
    db $e4
    rst RST_38
    db $e4
    ld l, $f5
    ld e, d
    cp a
    and $99
    rst RST_28
    sub b
    rst RST_38
    add b
    cp e
    call nz, $c1be
    sbc [hl]
    db $ec

jr_006_7a74:
    inc [hl]
    sbc $e2
    ld e, h
    sbc h
    ld h, b
    sbc b
    ld h, b
    and b
    ld b, b
    ret nz

    ld [hl], b
    ld a, [de]
    dec d
    dec d
    dec de
    dec c
    ld a, [bc]
    dec bc
    dec c
    ld b, $05
    dec b
    ld b, $02
    inc bc
    ld bc, $f601
    call $ff6e
    ld a, e
    or a
    ld [hl], l
    rst RST_18
    sbc $2b
    ld a, [hl]
    and l
    xor l
    ld d, d
    ld c, b
    db $e4
    and b
    ld [hl], b
    jr nz, jr_006_7a74

    ld d, b
    ldh [$ffe0], a
    jr nc, jr_006_7a49

    ld d, b
    ret nc

    jr nz, jr_006_7aad

jr_006_7aad:
    ld d, b
    nop
    nop
    and $bf
    ld l, c
    ld e, a
    ld l, l
    ld d, [hl]
    ld e, d
    ld l, a
    ld a, [hl+]
    dec [hl]
    rla
    inc e
    dec e
    ld d, $17
    ld a, [de]
    inc c
    rst RST_38
    ld [hl], l
    adc $5f
    db $e4
    ld h, h
    rst RST_38
    rst RST_28
    rst RST_38
    db $fd
    sbc [hl]
    or a
    ret z

jr_006_7ace:
    ld a, [$09c5]
    rrca
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    rst RST_28
    ld l, l
    rst RST_38
    ld sp, hl
    ld e, a
    ld e, [hl]
    or l
    push af
    srl [hl]
    ld a, $00
    nop
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    ei
    sub l
    rst RST_30
    xor c
    rst RST_28
    sub c
    rst RST_18
    and c

jr_006_7afc:
    ld a, [hl]
    ld b, d
    inc a
    inc a
    adc $ca
    xor $28
    ld a, d
    sub h
    or [hl]
    call z, $b87c
    jr z, jr_006_7afc

    jr nc, jr_006_7ace

    sub b
    ldh [$ff03], a
    inc bc
    rlca
    inc b
    inc c
    dec bc
    dec c
    dec bc
    dec e
    ld d, $1e

jr_006_7b1b:
    inc de
    rra
    ld de, $151a
    rst RST_28
    sbc $ff
    inc d
    rst RST_18
    pop hl
    adc [hl]
    ld [hl], a
    rst RST_30
    ld a, b
    rst RST_38
    adc b
    db $fc

jr_006_7b2d:
    dec de
    rst RST_38
    jr c, jr_006_7b2d

    nop
    ld [hl], d
    adc h
    ld l, l
    sbc [hl]
    jp hl


    ld e, $fe
    nop
    ld [hl], h
    sbc b
    db $ec
    jr nc, jr_006_7b1b

    ld h, b
    dec e
    inc de
    rra
    ld [de], a
    dec sp
    inc h

jr_006_7b46:
    ld l, a
    ld e, d
    or a
    reti


    rst RST_18
    or [hl]
    rst RST_38
    or c
    rst RST_38
    or d
    rst RST_18
    db $eb
    cp $89
    rst RST_30
    jr jr_006_7b46

    or b
    db $db
    rst RST_20
    rst RST_38
    rrca
    rra
    ld hl, sp-$41
    push af
    ei
    ret nz

    xor h
    db $d3
    db $db
    ld h, $f6
    dec c
    db $db
    db $ed
    xor l
    db $db
    cp a
    jp c, $da3f

    ldh a, [rP1]
    xor b
    ld [hl], b
    db $fc
    ld hl, sp+$72
    adc h
    cp $05
    ld [hl], l
    adc [hl]
    adc a
    ld a, [$72bf]
    db $db
    or h
    call $cfb3
    or c
    and a
    jp c, Jump_006_5b65

    ld [hl-], a
    dec l
    add hl, de
    ld d, $0f
    ld [$63ff], sp
    db $fd
    cp $ff
    ld d, b
    rst RST_38
    xor c
    rst RST_38
    rst RST_38
    xor b
    ld d, a
    rst RST_38
    nop
    ldh [rNR10], a
    xor a
    jp c, $daa7

    and l
    db $db
    sub e
    db $ed
    inc sp
    call $8669
    call nz, Call_000_0303
    nop
    cp a
    ld [hl], d
    cp a
    jp z, $8e75

    cp $05
    ld [hl], d
    adc h
    db $fc
    ld hl, sp-$58
    ld [hl], b
    ldh a, [rP1]
    ei
    ret nz

    xor h
    db $d3
    reti


    ld h, $f2
    dec c
    db $db
    db $ed
    xor l
    db $db
    cp a
    jp c, $db3f

    ldh a, [rP1]
    xor b
    ld [hl], b
    db $fc
    ld hl, sp+$52
    xor h
    cp $25
    db $fd
    ld h, $8f
    ld [hl], d
    scf
    cp $be
    db $db
    cp a
    jp c, $dbad

    sub e
    db $ed
    inc sp
    call $8669
    call nz, Call_000_0303
    nop
    cp e
    halt
    rst RST_18
    ld [hl+], a
    db $fd
    ld h, $fe
    dec h
    ld d, d
    xor h
    db $fc
    ld hl, sp-$58
    ld [hl], b
    ldh a, [rP1]
    ld a, a
    ld e, a
    rst RST_10
    xor b
    ei
    and a
    rst RST_30
    xor a
    or a
    rst RST_18
    ld a, a
    ld c, h
    ld [hl], a
    ld c, b
    ld a, a
    ld d, a
    db $db
    or h
    call $cfb3
    or c
    and a
    ret c

    ld h, a
    ld e, b
    scf
    ld a, [hl+]
    dec de
    dec d
    rrca
    ld [$63ff], sp
    db $fd
    cp $ff
    ld d, b
    rst RST_38
    nop
    rst RST_38
    ld bc, $abfd
    cp $ff
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    jr jr_006_7c3f

    daa
    rra
    inc l
    rra
    ld e, a
    ccf
    ld d, h

jr_006_7c3f:
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    inc l
    ret nz

    ld a, d
    adc h
    sbc h
    ldh [$ff2a], a
    ret nc

    ld d, h
    ld hl, sp-$06
    db $fc
    xor h
    ret nc

    ld d, h
    add sp, -$48
    ld b, b
    ld l, b
    or b
    or d
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    ld a, [bc]
    dec b
    add hl, de
    rrca
    dec l
    rla
    scf
    rra
    ld e, e
    cpl
    ld l, l
    ccf
    ld e, a
    scf
    ld a, a
    ld de, $193e
    dec a
    rrca
    add hl, de
    rlca
    ld d, $09
    dec bc
    inc b
    dec b
    inc bc
    inc bc
    nop
    dec b
    nop
    ld a, [de]
    dec b
    dec l
    rla
    inc sp
    rra
    ld e, e
    cpl
    ld l, l
    ccf
    ld a, a
    scf
    ld e, a
    ld sp, $197e
    dec l
    rra
    add hl, de
    rlca
    ld d, $09
    rla
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    add b
    nop
    call nz, Call_006_6e80
    call nz, $6cb6
    jp c, $dc7c

    cp b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0102
    ld bc, $0000
    nop
    ld a, [$b5dc]
    sbc $67
    cp a
    rst RST_30
    rrca
    dec bc
    rlca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    add b
    nop
    ld h, b
    add b
    sub b
    ldh [$ffec], a
    ldh a, [$ff83]
    db $fc
    cp d
    rst RST_38
    dec a
    rst RST_38
    cp [hl]
    ld a, a
    ld e, [hl]
    ccf
    ld [hl], $0f
    dec c
    ld [bc], a
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    rlca
    dec bc
    rlca
    dec de
    rlca
    dec hl
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    dec b
    inc bc
    dec bc
    rlca
    ld e, b
    ccf
    ld a, [hl]
    ccf
    cp [hl]
    ld a, a
    dec a
    cp $da
    db $fc
    db $ec
    ldh a, [$ffc8]
    ldh a, [$ff90]
    ldh [$ff37], a
    rrca
    ld e, h
    ccf
    xor a
    ld a, [hl]
    sbc d
    ld a, a
    ld l, a
    ld sp, $6cd3
    cp h
    ld b, b
    ret nz

Jump_006_7d3f:
    nop
    ld h, b
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_006_7d82

    ld l, h
    ld d, h
    ld a, [$feb6]
    ld c, d
    ld a, [hl]
    ld b, a
    xor l
    db $d3
    sbc $a1
    db $db
    and a
    db $fc
    add a
    db $eb
    sub h
    db $fd
    or d
    db $ed
    or e
    rst RST_28
    ld hl, sp+$67
    sbc c
    push af
    ld a, [de]
    sub $ef
    or a
    rst RST_08
    ld [hl], d
    sbc l
    cp a
    ld l, e
    ei
    db $dd
    db $dd
    xor e

jr_006_7d82:
    rst RST_38
    dec h
    cp $25
    ei
    ld h, $5f
    or d
    rst RST_38
    sub d
    rst RST_38
    sub d
    ld a, a
    sub d
    rst RST_38
    add b
    cp $9d
    rst RST_28
    xor l
    ld e, a
    ld d, c
    ld [hl], $2f
    dec e
    inc de
    rrca
    inc c
    nop
    nop
    di
    inc a
    push hl
    cp $1d
    xor $7f
    adc b
    rst RST_08
    add a
    adc h
    rlca
    add a
    nop
    nop
    nop
    db $fd
    ld [de], a
    dec sp
    db $10
    ld de, $8000
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld a, a
    ld c, h
    ld l, l
    ld d, e
    ld a, d
    ld d, a
    ld a, h
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    adc [hl]
    sbc $52
    ld a, a
    xor e
    ld [hl], $db
    sbc a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    ldh a, [rNR10]
    ret c

    add sp, $7d
    ld c, a
    ld a, [hl-]
    daa
    ld l, l
    ld d, d
    ld [hl], a
    ld c, a
    rst RST_18
    xor c
    rst RST_38
    and b
    ei
    and h
    ld a, e
    ld b, h
    dec c
    dec bc
    dec c
    dec bc
    inc c
    dec bc
    rlca
    dec b
    rlca
    dec b
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $5a01
    push hl
    ld a, [hl-]
    rst RST_20
    rst RST_10
    xor [hl]
    cp l
    add $3d
    jp z, $94ef

    or a
    ret c

    cp l
    ld c, e
    ld a, a
    add b
    rst RST_18
    and h
    jp z, $dcb4

    jr nc, jr_006_7e81

    jr nc, jr_006_7e4f

    jr @+$1a

    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_006_7800
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld c, $02
    ccf
    add hl, sp
    ld a, a
    ld c, d
    call $d7b2
    cp b
    db $eb

jr_006_7e4f:
    sbc h
    ld [hl], a
    ld c, [hl]
    ld l, a
    ld d, b
    ld l, e
    ld e, h
    ld a, a
    rrca
    reti


    and [hl]
    ld d, [hl]
    add hl, sp
    ld l, l
    ld e, [hl]
    db $db
    and a
    xor h
    ld [hl], b
    inc a
    ret nz

    db $e4
    jr jr_006_7eb5

    or b
    ld [$b274], a
    call z, Call_000_18e4
    xor [hl]
    ld [hl], b
    rst RST_10
    cp b
    rst RST_28
    sbc a
    ld a, c
    ld b, [hl]
    ld l, a
    ld d, b
    ld l, [hl]
    ld e, b
    inc a

jr_006_7e7b:
    jr z, jr_006_7eb4

    inc l
    ld e, $10
    ld [hl-], a

jr_006_7e81:
    call z, Call_000_38c6
    ld e, h
    ldh [$ffe8], a
    db $10
    ret z

    jr nc, jr_006_7e7b

    ld l, b
    ldh a, [$ffc0]
    ret nz

    jr nz, jr_006_7ea0

    rrca
    rra
    db $10
    scf
    cpl
    inc e
    inc de
    ccf
    jr nz, jr_006_7f01

    ld e, a
    ld a, l
    ld b, e
    ld a, $31

jr_006_7ea0:
    nop
    nop
    adc b
    adc b
    db $fc
    ld [hl], h
    cp $92
    sbc a
    push hl
    ld l, [hl]
    push af
    sub a
    ld l, d
    ld h, a
    sbc d
    dec a
    ld l, $72
    ld e, a

jr_006_7eb4:
    db $dd

jr_006_7eb5:
    and e
    rst RST_38
    sbc b
    ld a, e
    ld [hl], a
    inc a
    cpl
    ld [hl], a

Jump_006_7ebd:
    ld e, b
    ld a, b
    ld b, b
    rst RST_18
    cp d
    or d
    ld a, l
    ld [$b637], a
    ld l, a
    cp l
    ld h, [hl]
    cp l
    ld l, d
    xor a
    ld [hl], h
    or a
    ld a, b
    db $dd
    cp e
    rst RST_28
    sub b
    rst RST_18
    and d
    db $ed
    or d
    halt
    ld e, b
    ld [hl], h
    ld e, b
    ld a, [hl-]
    inc l
    inc e
    db $10
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    dec b
    ld b, $05
    rrca
    add hl, bc
    dec c
    dec bc
    dec c
    dec bc
    ld b, $05
    ld [$7c08], sp
    ld [hl], h
    cp $92
    rst RST_18
    dec h
    ld l, [hl]
    push af
    sbc a
    ldh [c], a
    rst RST_10
    ld [$caf5], a
    db $fc

jr_006_7f01:
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    ld h, d
    nop
    ld h, b
    nop
    ld a, b
    nop
    ld h, b
    nop
    ld h, d
    nop
    cp $00
    nop
    nop
    cp $00
    ld h, d
    nop
    ld h, b
    nop
    ld a, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ldh a, [rP1]
    nop
    nop
    ld a, h
    nop
    add $00
    ret nz

Jump_006_7f35:
    nop
    adc $00
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    jr nc, jr_006_7f72

    ld a, b
    ld c, b
    db $fc
    or h
    and $ba
    jp c, Jump_006_77be

    ld e, l
    ccf
    dec l
    dec de
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    db $fc
    adc h
    rst RST_38
    or e
    ld l, e
    ld e, h
    ccf
    jr nz, @+$78

    ld e, e
    rst RST_38
    or a
    xor $b7
    call c, Call_006_77ab
    ld e, b
    ld l, l
    ld d, d
    ccf
    dec hl
    rst RST_38
    inc bc

jr_006_7f72:
    rst RST_30
    inc e
    ld e, [hl]
    xor e
    ld a, a
    adc d
    push af
    ld a, [hl+]
    ld a, [$ffa5]
    xor b
    rst RST_38
    ld e, a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$ffa0], a
    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    xor $92
    jp c, $f66c

    sbc d
    db $fc
    ld h, h
    db $ec
    db $f4
    inc bc
    ld [bc], a

Jump_006_7fb2:
    inc bc
    ld [bc], a
    dec b
    ld b, $06
    dec b
    ld b, $05
    dec bc
    dec c
    dec c
    dec bc
    rrca
    dec bc
    ld c, h
    db $f4
    sbc a
    ld l, b
    ld a, a
    add [hl]
    jp c, $feac

    add b
    ld a, [$ef8c]
    or [hl]
    rst RST_30
    adc b
    rrca
    dec bc
    dec c
    dec bc
    ld b, $05
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    or d
    halt
    adc d
    or $3a
    db $fc
    call nz, $3838
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    db $f4
    sbc h
    ld l, h
    ld a, a
    add b
    rst RST_18
    xor [hl]
    rst RST_38
    add b
    rst RST_38
    adc [hl]
    rst RST_28
    or b
    or $8a
