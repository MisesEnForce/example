; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    dec bc
    ld b, $15
    ld c, $1d
    ld [bc], a
    dec de
    inc c
    dec de
    inc c
    rra
    ld [bc], a
    dec d
    ld c, $0f
    nop
    xor d
    ld e, l
    ld c, b
    rst RST_30
    sub h
    db $eb
    db $eb
    rla
    or a
    ld l, a
    or $0f
    ld c, h
    inc sp
    ld [hl-], a
    rra
    xor $f2
    dec de
    db $fd
    rst RST_08
    ld sp, $8d7b
    ld a, e
    adc l
    ccf
    pop de
    dec hl
    db $dd
    ld a, $c2
    rrca
    nop
    dec de
    rlca
    inc e
    dec bc
    ld a, [de]
    dec c
    rra
    nop
    ld a, [hl+]
    inc e
    ld [hl-], a
    inc e
    ld a, $00

Call_007_4040:
    cp [hl]
    ld a, a
    ld a, a
    add b
    add b
    rst RST_38
    ld b, c
    rst RST_38
    add b
    ld a, a
    ret c

    ld h, a
    db $d3
    ld l, a
    rst RST_10
    ld l, a
    cp $02
    dec sp
    db $fd
    rst RST_00
    db $fd
    rra
    db $ed
    ld a, a
    add c
    rst RST_28
    dec e
    inc sp
    db $dd
    ld a, $c2
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0103
    rlca
    nop
    ld c, $05
    rra
    add hl, bc
    rra
    ld [$bb55], sp
    sub e
    rst RST_28
    ld l, $d3
    ret nc

    cpl
    xor e
    call c, Call_000_3dda
    ld de, $62ff
    sbc a
    ld d, l
    cp e
    ld l, a
    or l
    ld l, d
    or l
    ld h, a
    cp c
    or [hl]
    reti


    rst RST_08
    or $8d
    push af
    rra
    db $ec
    rra
    rra
    jr nz, jr_007_40d3

    cpl
    ccf
    inc de
    rra
    rla
    rra
    cpl
    ccf
    ld e, a
    ld a, a
    ld d, e
    ld a, a
    cp c
    rst RST_38
    sbc l
    rst RST_38
    cp a
    rst RST_38
    sub d
    rst RST_38
    cp b
    rst RST_38
    rst RST_18
    rst RST_38
    ld h, b
    ld a, a
    ccf
    ccf
    dec c
    dec c
    rra
    ld [de], a
    ld a, $21
    ld a, l
    ld d, e
    ld a, a
    ld c, e
    ld [hl], e
    ld c, l
    db $eb
    sub h
    push de
    cp e
    inc e
    dec bc
    ld a, [de]
    dec c
    ld e, $01
    ld [hl-], a
    dec e
    ld a, [hl+]
    dec e

Jump_007_40ca:
    dec e
    nop
    nop
    nop
    nop
    nop
    ld b, e
    rst RST_38
    nop

jr_007_40d3:
    rst RST_38
    ld bc, $a6fe
    rst RST_18
    xor [hl]
    rst RST_18
    inc l
    rst RST_18
    sbc b
    ld h, a
    ld h, h
    ccf
    dec de
    db $ed
    ld a, e
    adc l
    rst RST_38
    ld bc, $1deb
    di
    dec e
    rst RST_38
    ld bc, $b54f
    ld [hl], a
    adc l
    ld a, [de]
    ld [de], a
    ccf
    dec h
    ccf

jr_007_40f5:
    add hl, hl
    ld a, a
    ld d, [hl]
    ld l, a
    ld d, l
    rst RST_38
    and h
    ei
    xor h

jr_007_40fe:
    ei
    xor h
    nop
    nop
    nop
    nop
    inc e
    nop
    rla
    inc c
    dec bc
    ld b, $05
    inc bc
    inc bc
    nop
    ld bc, $2c00
    rra
    ld b, c
    ld a, $b3
    ld l, l
    rst RST_08
    ld [hl], c
    adc $b5
    cp c
    ld c, b
    pop af
    sub b
    pop hl
    jr nz, jr_007_419d

    sbc h
    cp h
    call z, $807c
    db $ec
    jr c, jr_007_40f5

    ld [hl], h
    ld hl, sp-$78
    jr nc, jr_007_40fe

    ldh [rNR41], a
    inc c
    nop
    inc e
    ld [$0c1a], sp
    rla
    inc c
    rrca
    dec b
    ld c, $05
    dec c
    ld b, $06
    nop
    ld c, h
    inc sp
    ld [hl-], a
    rra
    db $ed
    ld e, $e3
    ld a, [hl]
    or e
    ld l, h
    adc a
    ld [hl], b
    pop af
    nop
    nop
    nop
    ld a, h
    sbc h
    cp b
    ld l, b
    cp b
    add sp, -$28
    add sp, $18
    add sp, -$10
    ret nc

    ldh a, [$ffd0]
    ldh [rNR41], a
    dec bc
    inc b
    dec b
    inc bc
    rlca
    inc bc
    ld a, [bc]
    rlca
    inc c
    rlca
    dec bc
    ld b, $07
    nop
    nop
    nop
    ld hl, sp+$07
    rst RST_38
    ret c

    or a
    ret c

    rst RST_20
    add hl, de
    ccf
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    pop hl
    rst RST_08
    push af
    ld c, e
    push af
    adc h
    ld [hl], e
    di
    add c
    add e
    add c
    ld [bc], a
    ld bc, $0001
    db $fd
    xor e
    sub $ad
    rst RST_38
    or [hl]
    reti


    or a
    ld a, h
    ld b, a
    dec a
    ld l, $3f

jr_007_419d:
    ld hl, $3e3e
    dec c
    dec c
    ld [de], a
    rra
    ld hl, $533f
    ld a, a
    ld c, e
    ld a, a
    ld c, l
    ld a, a
    sub h
    rst RST_38
    cp e
    rst RST_38
    xor e
    rst RST_38
    xor l
    rst RST_38
    or [hl]
    rst RST_38
    or a
    rst RST_38
    ld b, a
    ld a, a
    ld l, $3f
    ld hl, $3e3f
    ld a, $00
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
    rlca
    nop
    ld c, $07
    ld a, b
    rra
    ld b, b
    ccf
    xor l
    ld [hl], e
    adc $75
    ld a, a
    inc b
    ld l, l
    inc [hl]
    cp a
    ld b, h
    adc l
    di
    ld a, e
    and l
    ld a, [hl]
    cp d
    inc [hl]
    call nc, $d0b0
    ldh [rNR41], a
    or b
    ret nc

    ld hl, sp+$08
    ld l, b
    ldh a, [rIE]
    xor b
    rst RST_38
    xor b
    rst RST_38
    xor c
    or $aa
    cp $a2
    ld a, h
    ld d, h
    jr z, jr_007_4226

    nop
    nop
    inc bc
    ld [bc], a
    rlca
    dec b
    ld c, $0b
    inc e
    rla
    add hl, sp
    ld l, $3b
    inc l
    ld [hl], e
    ld e, h
    ld [hl], a
    ld e, b
    sub b
    sub b
    ld hl, sp+$68
    db $fc
    sub h
    rst RST_28
    ld a, e
    rst RST_28
    inc [hl]
    rst RST_18
    ld h, e
    rst RST_18
    ld h, b
    rst RST_18
    ld h, b
    rst RST_20
    cp b
    rst RST_20
    cp b
    rst RST_28
    or b

jr_007_4226:
    rst RST_28
    or [hl]
    db $db
    xor d
    ld [hl], c
    ld d, c
    jr nz, jr_007_424e

    nop
    nop
    cp a
    ret nz

    cp a
    pop bc
    cp [hl]
    add $b8
    ret c

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
    inc e
    inc e
    ld a, $22
    ld h, a
    ld e, c
    res 7, h
    db $dd
    cp [hl]
    sbc $bf

jr_007_424e:
    rst RST_28
    sbc a
    ld h, a
    ld e, a
    ld [hl], e
    ld c, a
    add hl, sp
    daa
    inc e
    inc de
    ld c, $09
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $5d
    ld a, a
    cp h
    rst RST_38
    cp [hl]
    rst RST_38
    cp a
    rst RST_38
    sbc a
    rst RST_38
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    daa
    ccf
    inc de
    rra
    add hl, bc
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0701
    rlca
    rrca
    ld [$171b], sp
    ld e, $11
    dec c
    dec bc
    dec c
    dec bc
    dec e
    dec de
    jr c, jr_007_42b7

    ld h, l
    ld e, a
    rst RST_18
    or e
    and $99
    rst RST_18
    cp l
    pop hl
    sbc a
    ld [hl], e
    ld c, a
    ccf
    jr nz, @+$21

    rra
    inc c
    nop
    ld [de], a
    inc c
    ld e, $0c
    inc c
    nop
    jr nc, jr_007_42aa

jr_007_42aa:
    ld c, b
    jr nc, jr_007_4325

    jr nc, jr_007_42df

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_42b7:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    rlca
    rlca
    ld [$170f], sp
    rra
    ld de, $0b1f
    rrca
    dec bc
    rrca
    dec de

Call_007_42cd:
    rra
    daa
    ccf
    ld e, a
    ld a, a
    or e
    rst RST_38
    sbc c
    rst RST_38
    cp l
    rst RST_38
    sbc a
    rst RST_38
    ld c, a
    ld a, a
    jr nz, jr_007_431d

    rra

jr_007_42df:
    rra
    rra
    rra
    ccf
    jr nz, jr_007_4318

    cpl
    inc e
    inc de
    add hl, de
    rla
    scf
    cpl
    ld h, c
    ld e, a
    ld l, a
    ld d, e
    rst RST_18
    cp c
    db $e3
    sbc l
    rst RST_10
    cp a
    rst RST_28
    sub d
    rst RST_00
    cp b
    db $e3
    rst RST_18
    ld a, a
    ld h, b
    ccf
    ccf
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
    inc c
    dec bc
    add hl, de
    rla
    dec de
    rla
    ld h, c
    ld h, c
    ei
    sbc d
    or $ad
    ld [hl], l
    ld e, e

jr_007_4318:
    ld c, c
    ld a, a
    ld [hl], $2f
    ld h, a

jr_007_431d:
    ld e, a
    db $db
    cp a
    nop
    jr nz, jr_007_4343

    ld [hl], b
    nop

jr_007_4325:
    jr nz, jr_007_4327

jr_007_4327:
    add b
    jr nz, jr_007_432a

jr_007_432a:
    ld b, b
    ld b, b
    nop
    nop
    nop
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $05
    dec c
    ld a, [bc]
    dec de
    inc d
    dec [hl]
    dec hl
    ld h, a

Jump_007_433d:
    ld e, [hl]
    rst RST_18
    cp a
    add b
    add b
    ret nz

jr_007_4343:
    ld b, b
    ldh [$ff60], a
    ldh a, [rNR10]
    or b
    ret nc

    ld h, b
    and b
    ldh a, [rNR10]
    cp b
    ret z

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    ld c, $09
    inc c
    dec bc
    ld b, $05
    dec c
    dec bc
    inc e
    inc e
    cp $e2
    di
    dec c
    adc [hl]
    ld [hl], d
    ld a, $c6
    ld [hl], a
    ld sp, hl
    cp [hl]
    jp nz, $fad6

    inc bc
    nop
    ld b, $03
    dec b
    ld [bc], a
    inc bc
    nop
    jr jr_007_437a

jr_007_437a:
    inc d
    ld [$0009], sp
    inc bc
    ld bc, $0000
    add b
    nop
    add b
    nop
    jr c, jr_007_4388

jr_007_4388:
    ld l, b
    jr nc, jr_007_43bb

    nop
    add b
    nop
    ld b, b
    add b
    nop
    nop
    ld h, $06
    halt
    ld h, $30
    nop
    jp nz, $d3c1

    ret z

    jr jr_007_439e

jr_007_439e:
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    adc b
    adc e
    nop
    scf
    add b
    sbc a
    inc b
    rst RST_00
    add b
    or e
    ld b, h

jr_007_43bb:
    ld b, a
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_007_43c1:
    inc bc
    nop
    ld c, e
    nop
    rst RST_08
    nop
    rst RST_08
    nop
    rst RST_08
    nop
    add a
    nop
    rst RST_38
    nop
    rst RST_38
    jr z, jr_007_43c1

    nop
    rst RST_00
    ld b, h
    rst RST_10
    nop
    add e
    nop
    cp e
    nop
    ld de, $ff00
    nop
    rst RST_38
    nop
    rlca
    ld [$009b], sp
    sbc e
    inc b
    add a
    nop
    sub e
    nop
    add hl, bc
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rlca
    ld [$009b], sp
    sbc e

jr_007_43f6:
    inc b
    add a
    nop
    sbc a
    nop
    rrca
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rlca
    dec b
    ld c, $0b
    ld c, $0b
    nop
    nop
    nop
    nop
    inc l
    inc d
    ld d, a
    ld a, [hl-]
    or d
    ld a, l
    push hl
    ld a, [hl]
    ld d, e
    db $fc
    or e
    db $ec
    nop
    nop
    nop
    nop

jr_007_4424:
    nop
    nop
    or b
    or b
    ld hl, sp+$48
    db $ec
    inc [hl]
    or [hl]
    ld a, d
    xor $1a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0107
    nop
    nop
    nop
    nop
    ld e, b
    jr z, jr_007_43f6

    ld [hl], l
    ld h, l
    ld a, [$fccb]
    and a
    ld hl, sp+$66
    reti


    nop
    nop
    nop
    nop

jr_007_4454:
    jr nc, jr_007_4486

    ld a, b
    ld c, b
    db $ec
    or h
    or $7a
    xor $1a
    ld a, e
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    nop
    nop
    nop
    ld e, b
    jr z, jr_007_4424

    ld [hl], l
    ld h, l
    ld a, [$fccb]
    and a
    ld hl, sp+$66
    reti


    ld d, l
    cp e
    nop
    nop
    jr nc, jr_007_44b4

    ld a, b
    ld c, b

jr_007_4486:
    db $ec
    or h
    or $7a
    xor $1a
    ld a, e
    adc l
    ccf
    push bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld b, $01
    dec bc
    dec b
    rla
    inc c
    nop
    nop
    ld e, b
    jr z, jr_007_4454

    ld [hl], l
    ld h, l
    ld a, [$fccb]
    and a
    ld hl, sp+$66
    reti


    ld d, l
    cp e
    nop
    nop
    ld h, b
    ld h, b

jr_007_44b4:
    ldh a, [$ff90]
    ret c

    ld l, b
    ld l, h
    db $f4
    db $fc
    inc d
    inc a
    call nz, $fac6
    ld [hl], h
    ld d, h
    cp $aa
    rst RST_18
    ld [hl], l
    xor a
    db $dd
    ld a, e
    adc [hl]
    ld [hl], a
    sbc c
    rst RST_30
    jr @+$01

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    inc d
    ld d, a
    ld a, [hl-]
    or d
    ld a, l
    push hl
    ld a, [hl]
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
    add b
    add b
    ret nz

    ld b, b
    ldh [$ff60], a
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    rlca
    dec b
    dec c
    dec bc
    ld c, $09
    inc bc
    nop
    dec b
    ld [bc], a
    rlca
    ld [bc], a
    dec bc
    ld b, $0f
    nop
    dec c
    ld b, $0d
    ld b, $0f
    nop
    xor d
    ld e, l
    ld c, c
    rst RST_30
    sub h
    db $eb
    ld [$d617], a
    ld l, a
    ld l, h
    sbc a
    sbc b
    ld h, a
    db $e4
    ccf
    ld a, $ca
    sbc e
    db $ed
    ld c, a
    push af
    xor a
    ld [hl], l
    rst RST_38
    dec b
    ld l, a
    or l
    ld l, a
    or l
    rst RST_38
    dec b
    dec bc
    inc b
    ld c, $05
    rla
    dec c
    rra
    nop
    dec de
    inc c
    dec de
    inc c
    rra
    ld bc, $0e15
    ld d, l
    cp e
    sub b
    rst RST_28
    add hl, hl
    sub $d6
    cpl
    xor [hl]
    rst RST_18
    db $ec
    rra
    sbc b
    ld h, a
    db $e4
    cp a
    cp a
    push bc
    ld e, a
    push hl
    cpl
    push af
    cp a
    ld b, l
    rst RST_28
    dec [hl]
    ld l, e
    or l
    ld a, e
    add l
    xor a
    ld [hl], c
    ld [bc], a
    ld bc, $0103
    inc bc
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    nop
    inc bc
    nop
    ld bc, $9000
    rst RST_28
    add hl, hl
    sub $d5
    ld l, $6d
    sbc $d9
    ld a, $33
    call z, Call_007_7bcd
    cp [hl]
    ld [hl], e
    cp a
    push bc
    ld e, a
    push hl
    ld e, a
    push hl
    rst RST_38
    dec b
    sbc a
    push hl
    cp a
    ld b, l
    ld a, a
    add c
    ld a, a
    add e
    ld a, [hl+]
    dec e
    scf
    add hl, bc
    ld l, l
    jr nc, jr_007_4600

    jr nc, jr_007_4612

    nop
    ld [hl], l
    jr c, jr_007_4601

    jr c, jr_007_45d8

    nop
    sub b
    rst RST_28
    dec hl
    rst RST_10
    rst RST_18
    daa
    halt
    rst RST_08
    ret nc

    cpl
    inc c
    di
    ret z

    ld a, a
    or b
    ld a, a
    ccf
    pop af
    sbc e
    ld l, l
    ld a, e
    adc l
    ld a, a
    add c
    ld l, e
    sbc l
    di
    dec e
    sbc $22
    db $fc
    inc c
    ld bc, $0f00
    nop
    rla
    ld c, $1d
    ld [bc], a
    dec de
    inc c
    dec de
    inc c
    dec e
    ld [bc], a
    dec d
    ld c, $53
    db $fc
    or e
    db $ec
    xor d
    ld e, l
    ld c, b
    rst RST_30

jr_007_45d8:
    sub h
    db $eb
    db $eb
    rla
    or a
    ld l, a
    or $0f
    db $fc
    inc e
    ld a, [hl]
    ldh [c], a
    sbc e
    db $fd
    rrca
    pop af
    ei
    dec c
    ld a, e
    adc l
    ccf
    pop de
    dec hl
    db $dd
    rlca
    dec b
    ld c, $0b
    rrca
    ld [$0407], sp
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld [bc], a

jr_007_4600:
    inc c

jr_007_4601:
    rlca
    ld c, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec c
    rlca
    ret c

    ccf

jr_007_4612:
    ret nz

    ccf
    and d
    ld a, a
    call $ff73
    inc b
    ld l, l
    inc [hl]
    cp l
    ld b, h
    rst RST_08
    push af
    xor e
    ld [hl], l
    bit 6, l
    ld e, a
    and e
    add hl, sp
    ret


    ldh a, [rNR10]
    cp b
    ret c

    db $fc
    inc b
    or [hl]
    ld a, [$0e19]
    rrca
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    ret c

    cp a
    add b
    ld a, a
    ld b, d
    rst RST_38
    sbc [hl]
    db $e3
    rst RST_38
    nop
    ld l, [hl]
    inc sp
    cp a
    ld b, b
    ei
    rst RST_08
    rst RST_08
    ld [hl], e
    db $fd
    dec b
    ld a, h
    and h
    ld a, b
    cp b
    ret nz

    ld b, b
    ret nz

    ld b, b

jr_007_465c:
    ret nz

    ld b, b
    ld h, b
    and b
    dec e
    ld d, $1d
    ld d, $1f
    inc d
    rra
    inc d
    rra
    dec d
    ld c, $0a
    inc b
    inc b
    nop
    nop
    rst RST_08
    inc [hl]
    ld l, $13
    ld a, a
    inc b
    ld a, l
    ld [hl-], a
    ld c, a
    jr c, jr_007_46a2

    ld e, $1f
    nop
    nop
    nop
    db $fd
    dec b
    jr c, jr_007_465c

    ldh [rNR41], a
    ld h, b
    and b
    ldh [$ffa0], a
    ld h, b
    and b
    ret nz

    ld b, b
    nop
    nop
    inc bc
    ld bc, $0003
    rra
    ld bc, $1c3f
    inc de
    ld c, $0d
    inc bc
    inc bc
    nop
    nop
    nop
    add d
    rst RST_38

jr_007_46a2:
    ld b, e
    rst RST_38
    cp h
    ld b, e
    ld h, e
    and b
    ldh [rNR41], a
    ldh [$ffa0], a
    ldh [rNR41], a
    nop
    nop
    ld a, b
    sbc b
    inc a
    call nz, $aa56
    sbc $6a
    ld l, [hl]
    ld a, [de]
    halt
    ld a, [hl-]
    inc a
    inc b
    nop
    nop
    ld c, $00
    inc e
    ld [$0c1a], sp
    rla
    inc c
    rrca
    dec b
    ld c, $05
    dec c
    ld b, $06
    nop
    ld l, h
    inc de
    ld [hl-], a
    rra
    db $ed
    ld e, $e3
    ld a, [hl]
    or e
    ld l, h
    adc a
    ld [hl], b
    pop af
    nop

Jump_007_46de:
    nop
    nop
    ld a, [hl]
    add d
    cp h
    ld l, h
    cp b
    add sp, -$28
    add sp, $18
    add sp, -$10
    ret nc

    ldh a, [$ffd0]
    ldh [rNR41], a
    nop
    nop
    ldh [$ffe0], a
    or h
    ld d, h
    ld e, [hl]
    ld [$f48a], a
    ld d, [hl]
    ld hl, sp-$34
    or b
    db $ec
    jr nc, jr_007_4701

jr_007_4701:
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
    ld bc, $0700
    nop
    nop
    nop
    nop
    nop
    inc l
    inc d
    ld d, a
    ld a, [hl-]
    or d
    ld a, l
    push hl
    ld a, [hl]
    ld d, e
    db $fc
    or e
    db $ec
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
    ret nz

    ld b, b
    ldh a, [$ff30]
    inc a
    call z, Call_000_0007
    ld c, $07
    dec de
    inc c
    ld d, $09
    rrca
    inc bc
    inc d
    rrca
    jr z, jr_007_475d

    dec sp
    inc b
    jp $823f


    ld a, a
    nop
    rst RST_38
    set 7, h
    ld a, [de]
    db $fd
    db $10
    rst RST_38
    jp $e03f


    rra
    scf
    jr jr_007_4789

    add hl, de
    ccf
    ld [bc], a
    dec hl
    dec e
    inc sp
    dec e
    ld e, $02
    nop

jr_007_475d:
    nop
    nop
    nop
    db $fc
    inc bc
    rst RST_38
    nop
    ld a, l
    add b
    cp $62
    ld a, a
    add hl, de
    dec e
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    dec a
    nop
    ld e, [hl]
    ld hl, $71af
    ld h, l
    ld a, [$fccb]
    and a
    ld sp, hl
    ld h, [hl]
    reti


    nop
    nop
    cp $02
    rst RST_30
    ld l, l
    sbc e
    ld l, l
    di

jr_007_4789:
    adc l
    rst RST_38
    add d
    ld a, [hl]
    add l
    rst RST_38
    dec b
    nop
    nop

jr_007_4792:
    rra
    nop
    ld [hl], a
    dec bc
    cp h
    ld l, e
    db $db
    ld l, h
    jp hl


jr_007_479b:
    ld e, [hl]
    ld a, e
    inc e
    ld [hl], b
    rra
    rst RST_28
    jr nc, jr_007_4792

    jr nc, @-$01

    inc hl
    ld a, [hl]
    and [hl]
    ld e, b
    xor b
    ld [hl], b
    ld d, b
    jr nz, jr_007_47ce

    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    ret c

    ld l, b
    sbc b
    ld l, b
    sbc b
    ld l, b
    di
    ld [de], a
    cp $1d
    rst RST_38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_47c7:
    nop
    nop
    nop
    rrca
    nop
    ld d, $0f

jr_007_47ce:
    add hl, de

jr_007_47cf:
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    cp $ff
    nop
    add b
    rst RST_38
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$78
    xor h
    ld [hl], h
    db $fc
    inc b
    or [hl]
    ld a, d
    adc $f2
    xor b
    ld d, b
    ld h, b
    sbc b
    add sp, $10
    add sp, $10
    ret nc

    jr nz, jr_007_479b

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    rrca
    rrca
    rla
    jr jr_007_4832

    scf
    jr nc, jr_007_4832

    jr c, jr_007_4834

    jr c, jr_007_4836

    jr c, jr_007_4838

    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    nop
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
    ldh [$ffe0], a
    ret nc

    jr nc, jr_007_47cf

    ret c

    jr jr_007_4852

    jr c, jr_007_4854

    jr c, jr_007_4856

    jr c, jr_007_4858

    jr c, jr_007_485a

jr_007_4832:
    jr c, jr_007_485c

jr_007_4834:
    jr c, jr_007_485e

jr_007_4836:
    jr c, jr_007_4860

jr_007_4838:
    jr c, jr_007_4862

    jr c, jr_007_4864

    jr c, jr_007_4866

    jr c, jr_007_4868

    ldh a, [rP1]
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, d
    nop
    cp $00
    nop
    nop
    add $00

jr_007_4852:
    add $00

jr_007_4854:
    sub $00

jr_007_4856:
    sub $00

jr_007_4858:
    cp $00

jr_007_485a:
    ld l, h
    nop

jr_007_485c:
    ld b, h
    nop

jr_007_485e:
    nop
    nop

jr_007_4860:
    nop
    nop

jr_007_4862:
    jr jr_007_4888

jr_007_4864:
    inc a
    ld e, d

jr_007_4866:
    ld h, [hl]
    inc h

jr_007_4868:
    ld h, [hl]
    inc h
    inc a
    ld e, d
    jr jr_007_4892

    nop
    nop
    nop
    nop
    jr jr_007_4898

    inc a
    ld b, d
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    ld b, d
    jr jr_007_48a2

    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

jr_007_4888:
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop

jr_007_4892:
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_007_4898:
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

jr_007_48a2:
    rrca
    nop
    stop
    stop
    stop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    and c
    nop
    ld b, c
    nop
    and c
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0039
    scf
    jr jr_007_4946

    ld c, $5f
    daa
    scf
    add hl, de
    inc e
    rrca
    stop
    xor c
    db $10
    ei
    sub c
    ld a, [hl]
    db $d3
    rst RST_18
    halt
    ld [hl], l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    rlca
    or l
    ld a, e
    ld l, a
    rra
    dec e
    inc bc
    rla
    rrca
    ld a, l
    rra
    xor a
    ld [hl], e
    ld a, a
    rlca
    ld a, [hl]
    ld b, $97
    ld a, e
    cp e
    ld a, l
    ld e, e
    cp l
    cp a
    ld a, l
    rst RST_38
    ld a, l
    cp a
    ld a, l
    ld e, a
    cp l
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $07
    dec e
    ld e, $77
    ld a, b
    cp a
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$ffdc]
    inc a
    ld a, [$0006]
    nop
    nop
    nop
    rlca
    rlca
    dec c
    ld c, $1e
    add hl, de
    add hl, sp
    scf
    dec hl
    scf
    scf
    cpl
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    or b
    ld [hl], b
    ld a, b
    sbc b
    sbc h
    db $ec
    call nc, $ecec
    db $f4

jr_007_4940:
    nop
    nop
    rrca
    rrca
    ccf
    add hl, sp

jr_007_4946:
    rrca
    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$ff60], a
    ld hl, sp+$38
    db $ec
    inc e
    cp $86
    rst RST_38
    jp Jump_007_7e7e


    cp a
    pop bc
    ld l, l
    ld e, [hl]
    scf
    cpl
    ld e, e
    rst RST_10
    inc c
    dec bc
    ld h, $65
    rlca
    inc b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$ff30]
    jr c, jr_007_4940

    call z, $e6f4
    ld a, [$fd7b]
    rra
    db $fd
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rlca
    rlca
    nop
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    dec c
    nop
    nop
    add b
    add b
    add b
    ld h, b
    nop
    ret nz

    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$ffc0], a
    ld h, b
    cp a
    pop bc
    ld [hl], a
    ld a, b
    dec e
    ld e, $06
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld a, [$dc06]
    inc a
    ld [hl], b
    ldh a, [$ffc0]
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    cpl
    dec hl
    scf
    add hl, sp
    scf
    ld e, $19
    dec c
    ld c, $07
    rlca
    nop
    nop
    nop
    nop
    db $ec
    db $f4
    call nc, $9cec
    db $ec
    ld a, b
    sbc b
    or b
    ld [hl], b
    ldh [$ffe0], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_49e2:
    ld bc, $0301
    inc bc
    rlca
    ld b, $0f
    inc c
    ccf
    add hl, sp
    rrca
    rrca
    nop
    nop
    rst RST_38
    jp $86fe


    db $ec

jr_007_49f5:
    inc e
    ld hl, sp+$38
    ldh [$ff60], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld e, $19
    add hl, sp
    daa
    ld a, a
    ld e, a
    adc $bf
    ld a, [hl]
    ld b, c
    ld d, c
    ld l, [hl]
    cp a
    pop bc
    ld a, [hl]
    ld a, [hl]
    rst RST_38
    db $fd
    di
    db $fd
    add $fa
    adc h
    ld [hl], h
    jr c, jr_007_49e2

    ldh a, [$ff30]
    ret nz

    ret nz

    nop
    nop
    rrca
    ld [$181f], sp
    rra
    inc e
    rra
    ld e, $07
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    ret nz

    jr nz, @-$3e

    jr nc, jr_007_49f5

    ld [hl], b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    jr c, jr_007_4a52

jr_007_4a52:
    ld b, h
    nop
    add $00
    add $00
    add $00
    ld b, h
    nop
    jr c, jr_007_4a5e

jr_007_4a5e:
    nop
    nop
    jr jr_007_4a62

jr_007_4a62:
    ld a, b
    nop
    jr jr_007_4a66

jr_007_4a66:
    jr jr_007_4a68

jr_007_4a68:
    jr jr_007_4a6a

jr_007_4a6a:
    jr jr_007_4a6c

jr_007_4a6c:
    ld a, [hl]
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ld b, $00
    inc e
    nop
    jr nc, jr_007_4a7a

jr_007_4a7a:
    ld h, d
    nop
    cp $00
    nop
    nop
    ld a, h
    nop
    add $00
    ld b, $00
    inc e
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    inc c
    nop
    inc e
    nop
    inc l
    nop
    ld c, h
    nop
    adc h
    nop
    cp $00
    inc c
    nop
    nop
    nop
    db $fc
    nop
    ret nz

    nop
    db $fc
    nop
    add $00
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    ret nz

    nop
    db $fc
    nop
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    cp $00
    add $00
    inc c
    nop
    jr jr_007_4ac8

jr_007_4ac8:
    jr nc, jr_007_4aca

jr_007_4aca:
    jr nc, jr_007_4acc

jr_007_4acc:
    jr nc, jr_007_4ace

jr_007_4ace:
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    ld a, h
    nop
    add $00
    add $00
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    add $00
    add $00
    ld a, [hl]
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    jr z, jr_007_4af6

jr_007_4af6:
    stop
    jr z, jr_007_4afa

jr_007_4afa:
    ld b, h
    nop
    nop
    nop
    nop
    nop
    ld de, $2b00
    ld de, $0a3c
    ld a, [hl]
    ld [bc], a
    ld a, l
    rla
    ld l, d
    inc bc
    ld h, l
    add hl, de
    cp [hl]
    ld h, l
    adc b
    nop
    ld d, h
    adc b
    cp h
    ret nc

    cp $c0
    cp [hl]
    add sp, $56
    ret nz

    and [hl]
    sbc b
    ld a, l
    and [hl]
    jp c, $9456

    ld [hl+], a
    db $fd
    ld c, e
    or d
    add hl, hl
    reti


    ld h, h
    ld l, l
    rlca
    add hl, de
    ld a, [bc]
    ld e, $00
    db $db
    ld [$c4a9], a
    cp a
    jp nc, $944d

    sbc e
    ld h, $b6
    ldh [$ff98], a
    ld d, b
    ld a, b

Call_007_4b3f:
    nop
    ld a, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    call z, Call_007_7800
    nop
    nop
    nop
    add $00
    add $00
    add $00
    add $00
    ld l, h
    nop
    jr c, jr_007_4b5c

jr_007_4b5c:
    stop
    nop
    nop
    inc a
    nop
    jr jr_007_4b64

jr_007_4b64:
    jr jr_007_4b66

jr_007_4b66:
    jr jr_007_4b68

jr_007_4b68:
    jr jr_007_4b6a

jr_007_4b6a:
    jr jr_007_4b6c

jr_007_4b6c:
    inc a
    nop
    nop
    nop
    jr c, jr_007_4b72

jr_007_4b72:
    ld l, h
    nop
    add $00
    add $00
    cp $00
    add $00
    add $00
    nop
    nop
    inc a
    nop
    ld h, d
    nop
    ld h, b
    nop
    inc a
    nop
    ld b, $00
    add $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, $00
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
    inc b
    ld h, b
    inc b
    jr nc, jr_007_4baa

    jr jr_007_4bac

jr_007_4baa:
    inc e
    nop

jr_007_4bac:
    ld c, $00
    rrca
    nop
    nop

jr_007_4bb1:
    nop
    jr nz, @+$22

    ld h, $26
    ld c, h
    ld c, h
    ld e, h
    ld e, h
    cp b
    cp b
    ld [hl], b
    ld [hl], b
    ldh a, [$fff0]
    nop
    nop
    jr nz, jr_007_4be4

    jr c, @+$3a

    inc e
    inc e
    rrca
    rrca
    ld h, a
    ld h, a
    dec de
    dec de
    dec b
    dec b
    ld bc, $0300
    jr jr_007_4bdc

    ld h, b
    rrca
    nop
    inc e
    nop
    jr nc, jr_007_4bdc

jr_007_4bdc:
    jr nz, jr_007_4bde

jr_007_4bde:
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a

jr_007_4be4:
    rst RST_38
    add b
    ld l, [hl]
    ld e, a
    scf
    cpl
    add hl, sp
    scf
    ld a, h
    ld b, e
    rst RST_18
    cp a
    nop
    nop
    nop
    db $10
    call nz, $f0c4
    jr nc, jr_007_4bb1

    ret z

    db $ec
    db $f4

Call_007_4bfc:
    halt
    ld a, [$fdff]
    rst RST_38
    rst RST_00
    rst RST_38
    sub e
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    ld bc, $39ff
    rst RST_38
    add hl, sp
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    sbc c
    rst RST_38
    sbc c
    rst RST_38
    sbc c
    rst RST_38
    sbc c
    rst RST_38
    sbc c
    rst RST_38
    inc bc
    rst RST_38
    rst RST_38
    rst RST_38
    ld bc, $9dff
    rst RST_38
    sbc a
    rst RST_38
    add a
    rst RST_38
    sbc a
    rst RST_38
    sbc l
    rst RST_38
    ld bc, $ffff
    rst RST_38
    add e
    rst RST_38
    add hl, sp
    rst RST_38
    ccf
    rst RST_38
    ld hl, $39ff
    rst RST_38
    add hl, sp
    rst RST_38
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    inc bc
    rst RST_38
    sbc c
    rst RST_38
    sbc c
    rst RST_38
    add e
    rst RST_38
    add a
    rst RST_38
    sub e
    rst RST_38
    add hl, bc
    rst RST_38
    rst RST_38
    rst RST_38
    dec a
    rst RST_38
    add hl, de
    rst RST_38
    ld bc, $25ff
    rst RST_38
    dec a
    rst RST_38
    dec a
    rst RST_38
    dec a
    rst RST_38
    rst RST_38
    rst RST_38
    add e
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    add e
    rst RST_38
    rst RST_38
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    sub e
    rst RST_38
    rst RST_00
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_08
    rst RST_38
    rst RST_38
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    add hl, sp
    rst RST_38
    sub e
    rst RST_38
    rst RST_00
    rst RST_38
    rst RST_28
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    or $89
    reti


    or [hl]
    ld l, a
    ld e, c
    scf
    cpl
    ld a, [hl]
    ld b, c
    ld l, a
    ld e, e
    ld a, [hl]
    ld b, c
    add hl, sp
    daa
    ld sp, $772f
    ld c, e
    ld h, l
    ld e, a
    di
    adc a
    rst RST_10
    cp a
    db $eb
    sbc a
    rst RST_10
    xor a
    res 7, a
    rst RST_10
    xor a
    push hl
    sbc e
    ld a, e
    ld b, a
    ld [hl], a
    ld c, e
    ld [hl], e
    ld c, a
    add hl, sp
    daa
    dec e
    inc de
    ld a, $21
    ld h, a
    ld e, a
    ld e, [hl]
    ld h, c
    ld l, a
    ld e, e
    ld a, [$cf85]
    or a
    rst RST_30
    adc b
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    or $09
    ld hl, sp+$07
    ld sp, hl
    rlca
    di
    rrca
    db $eb
    inc e
    or a
    ld a, b
    rst RST_28
    ld [hl], b
    ld e, a
    ldh [$fff6], a
    ret


    cp b
    rst RST_00
    ld a, c
    add a
    ld [hl], e
    adc a
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    sbc a
    ld h, b
    halt
    ret


    cp b
    rst RST_00
    ld sp, hl
    add a
    ld [hl], e
    adc a
    rlca
    dec b
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, a
    ld a, d
    rst RST_38
    add b
    sbc a
    ld a, a
    rst RST_38
    add b
    rst RST_38
    add d
    sbc a
    ld a, d
    rst RST_38
    add d
    ld a, a
    ld a, d
    rrca
    ld a, [bc]
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    rlca
    dec b
    cp a
    ld a, a
    rst RST_18
    ccf
    rst RST_18
    cp a
    rst RST_28
    sbc a
    ld h, a
    ld e, a
    add hl, sp
    daa
    ld e, $11
    rrca
    inc c
    dec c
    dec bc
    ld a, [de]
    rla
    dec e

Jump_007_4d35:
    ld d, $37
    add hl, hl
    ld l, [hl]
    ld d, [hl]
    ld a, b
    ld c, b
    ldh a, [$ffb0]
    ret nz

    ret nz

    ld h, b
    ld h, b
    sub b
    ldh a, [$ff6c]
    ld l, h
    inc [hl]
    inc a
    ld c, d
    ld a, d
    xor l
    rst RST_38
    ld d, l
    rst RST_30
    ld [hl+], a
    ldh [c], a
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
    dec bc
    rlca
    ld e, $07
    ld a, [de]
    rlca
    nop
    nop
    ld a, a
    add hl, bc
    rst RST_28
    halt
    push hl
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, e
    add l
    ld c, a
    or c
    or [hl]
    ld a, c
    nop
    nop
    ret nz

    ret nz

    ldh a, [$ff30]
    ldh a, [$ff30]
    ld a, b
    adc b
    cp b
    ret z

    cp b
    ret z

    ld a, [hl]
    add [hl]
    dec a
    ld [bc], a
    ld h, $1b
    ld e, b
    ccf
    ld e, e
    inc a
    ld h, a
    jr @+$40

    ld bc, $0c0f
    inc bc
    inc bc
    push af
    ld a, a

jr_007_4d92:
    dec hl
    push af
    rst RST_38
    nop
    sbc l
    ld h, d
    ld [$5315], a
    db $ec
    or l
    ld a, [hl]
    jp c, $f7bf

    cp c
    ld [hl], a
    cp c
    rst RST_00
    add hl, sp
    ld a, a
    add c
    sbc a
    ld h, c

jr_007_4daa:
    cp $06
    ld hl, sp+$78
    ldh [rNR41], a
    ld l, $1f
    ld e, $0f
    ld e, $0f
    dec e
    rrca
    dec l
    rra
    add hl, sp
    rra
    ld a, d
    ccf
    or l
    ld e, [hl]
    ld h, b
    and b
    ldh [rNR41], a
    ld [hl], b
    sub b
    ld a, b
    adc b
    jr c, jr_007_4d92

    cp h
    ld c, h
    xor [hl]
    ld [hl], d
    rst RST_10
    add hl, sp
    inc a
    inc a
    ld a, [hl]
    ld b, d
    db $db
    cp l
    rst RST_38
    cp l
    ei
    cp l
    rst RST_10
    cp c
    ld a, [hl]
    ld b, d
    inc a

Jump_007_4ddf:
    inc a
    ldh [$ffe0], a
    ld sp, hl
    sbc c
    rst RST_18
    and [hl]
    halt
    ld e, c
    ld l, a
    ld e, h
    dec a
    dec hl
    ld l, c
    ld d, [hl]
    sbc $bd
    add a
    add a
    rst RST_18
    ld e, c
    ld a, e
    and l
    xor [hl]
    jp c, $baf6

    cp h
    call nc, Call_007_649c
    or $aa
    rst RST_38
    inc c
    rst RST_28
    ret nz

    ld c, [hl]
    ld l, c
    dec e
    ld a, [hl-]
    dec c
    ld a, [de]
    dec bc
    inc e
    pop bc
    adc $e6
    ld h, c
    rst RST_18
    add hl, sp
    ld e, a
    or a
    ld l, e
    ld [hl], $cd
    db $d3
    db $db
    nop
    ccf
    and b
    db $ed
    jr nc, jr_007_4daa

    ld d, h
    pop de
    ld sp, $38d8
    add sp, $18
    db $e4
    inc e
    or h
    ld c, h
    cp d
    ld b, [hl]
    ret c

    ld h, $cc
    inc sp
    rst RST_38
    add e
    ld a, e
    ld a, h
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld b, $03
    inc c
    inc b
    dec de
    ei
    inc e
    ld a, [$d66d]
    ld l, h
    or e
    set 3, e
    nop
    db $fc
    dec b
    or a
    inc c
    pop de
    ld a, [hl+]
    rst RST_38
    jr nc, @+$01

    dec bc
    ld a, [hl]
    sbc d
    cp h
    ld e, b
    cp h
    ld d, h
    call c, $9b34
    ld l, e
    ld [hl], a
    sub [hl]
    rst RST_38
    pop bc
    sbc $3e
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    ret nz

    jr nc, jr_007_4e8f

    ret c

    adc e
    adc h
    dec de
    inc e
    rla
    jr @+$29

    jr c, jr_007_4ea6

    ld [hl-], a
    ld e, l
    ld h, d
    dec de
    ld h, h
    inc sp
    call z, Call_000_19e6
    rst RST_38
    nop
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    db $fc
    inc bc
    di
    rrca
    db $e4

jr_007_4e8f:
    inc e

jr_007_4e90:
    ld a, [bc]
    or $f0
    inc c
    call z, $cffa
    add hl, hl
    ld l, d
    db $ed
    db $fd
    inc sp
    xor e
    ldh a, [$ffaf]
    ldh a, [$ffc9]
    add hl, sp
    db $d3
    inc sp
    sub [hl]
    ld [hl], a

jr_007_4ea6:
    xor l
    ld l, a
    ld a, [hl-]
    cp $74
    db $fd
    ld l, c
    ld a, [$f463]
    push af
    xor b
    dec sp
    call nz, $f63a
    ld [hl], l
    ld l, d
    ld a, [hl-]
    call Call_000_17e1
    and a
    ld c, a
    scf
    rst RST_18
    ld d, b
    ld l, a
    rrca
    jr nc, @+$35

    ld e, a
    di
    sub h
    ld d, [hl]
    or a
    cp a
    call z, $0fd5
    push af
    rrca
    ld h, a
    sbc b
    rst RST_38
    nop
    ld a, a
    add b
    rst RST_38
    nop
    rst RST_38
    nop
    ccf
    ret nz

    rst RST_08
    ldh a, [$ff27]
    jr c, jr_007_4e90

    dec d
    call c, Call_007_5c23
    ld l, a
    xor [hl]
    ld d, [hl]
    ld e, h
    or e
    sub a
    ld hl, sp-$11
    ld hl, sp-$11
    ld a, [$9c93]
    ret


    adc $69
    xor $b5
    or $5c
    ld a, a
    ld l, $bf
    sub [hl]
    ld e, a
    add $2f
    ldh [c], a
    push af
    jp $8ded


    db $d3
    ld e, e
    rst RST_20
    inc sp
    rst RST_08
    ld h, a
    sbc a
    ld e, e
    add a
    jp hl


    ld h, a
    ld [$d8df], a
    xor $d5
    db $ed
    sbc $e7
    call c, $99e7
    rst RST_20
    cp [hl]
    jp $c33d


    db $fc
    ld a, e
    call c, $2a5b
    xor l
    ld a, e
    db $fc
    or a
    ld a, b
    ld c, a
    or b
    ld a, [hl]
    add c
    dec a
    jp $817e


    ld a, a
    add b
    rst RST_38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld d, a
    ei
    sbc e
    rst RST_30
    db $eb
    rst RST_30
    ld a, e
    rst RST_20
    inc sp
    rst RST_28
    sbc c
    rst RST_20
    ld a, c
    rst RST_00
    cp h
    jp Jump_000_2fc7


    jp $b1b7


    set 3, d
    rst RST_20
    call z, $e6f3
    ld sp, hl
    jp c, $97e1

    and $7e
    add c
    cp $01
    rst RST_38
    nop

jr_007_4f66:
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ccf
    sbc $3b
    jp c, $b554

    sbc $3f
    db $ed
    ld e, $f2
    dec c
    ld a, [hl]
    add c
    cp h
    jp $ff7f


    ld h, a
    rst RST_38
    inc bc
    rst RST_38
    cp h
    ld b, e
    and $19
    db $e3
    inc e
    ld hl, sp+$1f
    db $ec
    rra
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ei
    inc c
    ld h, a
    adc b
    ld [hl], a
    sbc b
    cp $0f
    rst RST_38
    ld [$07f8], sp
    ldh a, [rIF]
    pop hl
    ld [bc], a
    db $fd
    nop
    rst RST_38
    xor c
    ld d, e
    inc b
    ld [hl], a
    sbc b
    ld [hl], a

jr_007_4fb3:
    sbc b
    rst RST_10
    jr c, jr_007_4f66

    db $10
    ld e, a
    ld h, b
    cp a
    ld b, b
    rst RST_18
    jr nz, @+$21

    ldh [$fffc], a
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst RST_18
    jr nc, jr_007_4fb3

    ld de, $19ee
    cp $ff
    and $ff
    ret nz

    rst RST_38

jr_007_4fd6:
    dec a
    jp nz, $9867

    rst RST_00
    jr c, jr_007_4ffc

    ld hl, sp+$37
    ld hl, sp-$12
    add hl, de
    xor $19
    ld [$f51d], a
    ld [$06fa], sp
    db $fd
    ld [bc], a
    ei
    inc b
    ld hl, sp+$07
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    db $10
    rra
    ldh [$ff87], a
    ld b, b
    cp a
    nop

jr_007_4ffc:
    rst RST_38
    sub l
    jp z, Jump_007_7c20

    nop
    cp e
    ld a, h
    rst RST_38
    ld a, a
    or a
    ld a, a
    and d
    ld a, a
    xor d
    ld [hl], a
    ld c, l
    ld [hl-], a

Jump_007_500e:
    ld [hl-], a
    nop
    ld e, $00
    db $ed
    ld e, $ff
    cp $15
    cp $55
    cp $95
    ld a, [hl]
    ld l, [hl]
    db $10
    stop
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

jr_007_503e:
    nop
    nop
    ld bc, $0300
    nop
    dec b
    inc de
    ld d, $23
    ld a, [hl+]
    rla
    scf
    rra
    daa
    rra
    dec d
    dec hl
    jr jr_007_4fd6

    jr z, jr_007_5064

    ldh a, [$ff28]
    sub $61
    ld [$fcc4], a
    ld [$f8ec], a
    call nc, Call_000_16e8
    add hl, bc
    dec bc
    inc d

jr_007_5064:
    dec bc
    rlca
    dec bc
    rlca
    dec b
    dec bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    or h
    ret z

    add sp, -$6c
    add sp, -$10
    ldh a, [$ffe8]
    ret nc

    ldh [$ffa0], a
    ret nc

    jr nz, jr_007_503e

    ret nz

    nop
    nop
    nop
    ld bc, $0b08
    ld de, $0b17
    ld a, [de]
    adc a
    ld e, $0f
    rla
    ld c, a
    dec [hl]
    ld e, e
    call z, $d422
    adc b
    ld [hl], h
    sbc c
    ld hl, sp+$34
    ld l, e
    ldh a, [$ffed]
    ldh a, [c]
    cp $fc
    call c, $2ee8
    add hl, de
    rla
    inc l
    dec bc
    rla
    dec bc
    rlca
    dec bc
    rlca
    dec b
    dec bc
    ld [bc], a
    dec b
    ld bc, $b402
    ret z

jr_007_50b2:
    add sp, -$70
    add sp, -$10
    ret nc

    ldh [$ffd0], a
    ldh [$ffa0], a
    ret nc

    ld b, b
    and b
    add b
    ld b, b
    nop
    nop
    nop
    ld b, b
    jr jr_007_50ca

    jr z, jr_007_50d9

    add hl, sp
    db $10

jr_007_50ca:
    ld e, c
    inc [hl]
    ld e, [hl]
    cp c
    adc l
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc c
    db $10
    adc d

jr_007_50d9:
    inc b
    ld c, [hl]
    sub h
    cp [hl]
    call $fe99
    ld b, b
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    add d
    ld b, a
    ld [bc], a
    sla [hl]
    or [hl]
    ld c, a
    db $ec
    ld a, a
    nop
    nop
    ld b, b
    ld b, b
    nop
    ld [bc], a
    db $10
    jr z, @+$32

    ld b, b
    ld l, d
    jr nc, jr_007_50b2

    ld a, d
    ld h, a
    cp $01
    nop
    jp nz, $a501

    ld b, e
    db $db
    ld h, a
    db $ed
    ld [hl], e
    push hl
    ld a, e
    di
    ld a, l
    or e
    ld a, l
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld a, b
    add b
    ld l, b
    sub b
    ld l, b
    or b
    ld l, [hl]
    or b
    sbc $64
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_007_5128

jr_007_5128:
    jr c, @+$12

    inc e
    ld [$040e], sp
    rlca
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200

jr_007_513b:
    ld bc, $0305
    dec a
    inc bc
    cp e
    ld a, l
    ld [hl], a
    jr c, jr_007_51b4

    db $10
    rst RST_38
    nop
    ld a, a
    ldh [$ffeb], a
    db $f4
    set 6, h
    sub a
    add sp, -$46
    ld c, h
    and $18
    db $fc
    nop
    db $fc
    ld [$10fc], sp
    db $fc
    jr nz, jr_007_513b

    ld h, b
    cp [hl]
    ret nz

    call c, $ee33
    sub c
    rst RST_18
    ld h, b
    or h
    db $db
    dec sp
    rst RST_30
    rst RST_30
    ld l, a
    db $ec
    rst RST_38
    db $db
    rst RST_38
    rrca
    pop af
    ld a, [hl]
    add e
    cp h
    ld [hl], a
    ld a, c
    xor $6b
    db $f4
    scf
    ld hl, sp+$03
    db $fc
    add $f9
    ld d, a
    rst RST_38
    add [hl]
    rst RST_38
    adc l
    cp $5a
    db $fd
    push de
    ld a, e
    db $db
    inc h
    di
    ld a, a
    adc h
    rst RST_38
    or [hl]
    ret


    ld d, d
    xor l
    or d
    ld l, l
    rst RST_10
    db $ec
    ld l, a
    sbc h
    cp l
    ld a, [hl]
    ld sp, hl
    cp $f0
    rst RST_38
    ld e, c
    or [hl]
    sbc c
    halt
    ld [hl], a
    inc l
    ld [hl], $6c
    ld l, [hl]
    jr jr_007_51d7

    jr jr_007_51c9

    db $10
    jr jr_007_51b0

jr_007_51b0:
    ld [hl], e
    sbc l
    ld e, e
    xor h

jr_007_51b4:
    ld e, l
    and [hl]
    jp c, $b7a7

    ld c, e
    ld h, e
    sub c
    add c
    ld b, b
    nop
    add b
    sub h
    xor $4e
    di
    and a
    ld a, b
    call c, Call_000_3c30

jr_007_51c9:
    ret z

    ld c, h
    add b
    ret nz

    add b
    add b
    nop
    rlca
    ld bc, $011f
    ccf
    ld a, [de]
    ld h, [hl]

jr_007_51d7:
    add hl, sp
    ld l, d
    db $dd
    ld e, e
    or h
    or [hl]
    ld l, l
    db $ed
    ld e, d
    ld a, e
    add a
    add [hl]
    ld a, c
    ld a, l
    cp $fa
    add a
    add a
    ld a, c
    add hl, sp
    cp $7f
    rst RST_38
    ld a, a
    rst RST_38
    ld b, l
    ei
    adc l
    ei
    ld a, d
    rst RST_30
    ei
    ld b, $95
    xor $ed
    ld e, $1e
    db $fd
    ld a, [$3ffd]
    rst RST_38
    sbc a
    ld a, a
    ld b, b
    ccf
    jr nc, jr_007_5217

    rra
    nop
    rrca
    inc b
    rlca
    ld [bc], a
    ld bc, $f502
    ld a, [$f2cf]
    dec e
    ldh [c], a
    ld a, a

jr_007_5217:
    add h
    rst RST_38
    add hl, bc
    rst RST_38
    ld [de], a
    sub $2d
    rst RST_38
    nop
    rlca
    ld bc, $011f
    ccf
    ld a, [de]
    ld h, a
    jr c, jr_007_5294

    call c, $b55a
    or [hl]
    ld l, l
    db $ed
    ld e, d
    ld a, e
    add a
    cp $51
    rst RST_38
    ld d, h
    xor e
    push de
    ld a, [hl]
    add c
    rst RST_10
    ld a, [hl+]
    cp l
    ld l, d
    ld d, a
    xor c
    ld b, l
    ei
    adc l
    ei
    ld a, d
    rst RST_30
    rst RST_38
    ld b, $d7
    ld l, $bd
    ld c, [hl]
    xor [hl]
    db $dd
    ld e, d
    cp l
    cp [hl]
    ld b, a
    db $db
    inc a
    ld a, h
    inc bc
    jr nc, jr_007_5267

    rra
    nop
    rrca
    inc b
    rlca
    ld [bc], a
    ld bc, $b502
    ld a, d
    ld c, a
    ldh a, [c]
    dec e
    ldh [c], a
    ld a, a

jr_007_5267:
    add h
    rst RST_38
    add hl, bc
    rst RST_38
    ld [de], a
    sub $2d
    rst RST_38
    nop
    rlca
    ld bc, $011f
    ccf
    ld a, [de]
    ld h, a
    jr c, jr_007_52e2

    sbc $59
    or [hl]
    or h
    ld l, a
    db $ed
    ld e, d
    ld a, e
    add a
    cp $51
    rst RST_38
    ld d, h
    xor e
    push de
    ld a, [hl]
    add c
    rst RST_38
    nop
    rst RST_38
    nop
    ld a, a
    add b
    ld b, l
    ei
    adc l
    ei

jr_007_5294:
    ld a, a
    ldh a, [c]
    rst RST_38
    ld [bc], a
    cp a
    ld b, d
    db $eb
    ld d, $e9
    ld d, $ab
    ld d, h
    ld a, [hl]
    add c
    ld l, e
    or l
    cp $55
    db $eb
    ld d, h
    ld a, a
    ld hl, $1e3f
    ld e, $01
    ld bc, $f306
    inc l
    rst RST_30
    ld a, [hl+]
    db $fd
    ld b, d
    ld a, a
    call nz, $89ff
    rst RST_38
    ld [de], a
    sub $2d
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    dec b
    ld [bc], a
    dec c
    rlca
    ld a, $5f
    cp [hl]
    dec b
    inc bc
    ld [hl-], a
    ld bc, $103f
    dec e
    ld a, [bc]
    adc a
    nop
    ld b, l
    add d
    rst RST_08
    add h
    ld l, [hl]
    pop bc
    cp $41

jr_007_52e2:
    ld e, b
    ccf
    ld a, [hl-]
    rlca
    xor e
    ld a, a
    ei
    rlca
    dec de
    ld a, a
    ld sp, hl
    ld h, a
    db $fd
    ld c, $e5
    ld b, e
    or $e1
    rst RST_38
    ldh [$ff67], a
    ld a, [$fb9d]
    rst RST_38
    db $fc
    call c, $fdeb
    ld [bc], a
    ccf
    ccf
    ld a, a
    ld [hl], b
    di
    adc a
    rst RST_18
    cp h
    ei
    add [hl]
    db $fd
    xor e
    sub $a9
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    or b
    ret nc

    ld hl, sp+$28
    ld a, [hl]
    xor [hl]
    rst RST_18
    ld h, c
    cp d
    add $7f
    adc a
    ld a, a
    ld b, c
    cp $ab
    db $fd
    add [hl]
    db $db
    cp h
    ld a, a
    ld b, c
    dec a
    dec sp
    rrca
    dec bc
    dec b
    dec b
    rst RST_28
    db $10
    ei
    ld b, a
    rst RST_38
    cpl
    ld a, a
    sub b
    ei
    dec l
    or [hl]
    ld l, d
    db $fc
    ld h, h
    ld hl, sp+$68
    ld [bc], a
    ld [bc], a
    add hl, bc
    add hl, bc
    jr nz, jr_007_5366

    add d
    add d
    inc d
    inc d
    ld l, e
    ld l, e
    inc [hl]
    inc [hl]
    rrca
    rrca
    add b
    add b
    jr z, jr_007_537c

    ld [de], a
    ld [de], a
    adc c
    adc c
    and b
    and b
    ld d, d
    ld d, d
    db $ec
    db $ec
    jr nc, jr_007_5390

    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5366:
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

jr_007_5372:
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

jr_007_537c:
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
    db $e3
    nop
    cp [hl]
    ld h, d

jr_007_5390:
    inc bc
    ld [bc], a
    ld b, $05
    dec c
    dec bc
    dec e
    ld [de], a
    dec sp
    cpl
    ld l, d
    ld e, a
    ld l, l
    ld e, [hl]
    rst RST_18
    cp a
    ret nz

    ret nz

    ldh a, [$ff30]
    db $fc
    ld c, h
    xor h
    ld d, b
    jp c, $cee4

    jr nc, jr_007_5372

    ld a, [hl-]
    add [hl]
    ld hl, sp+$40
    ld b, b
    ld a, b
    ld a, b
    ld a, $3e
    rra
    rra
    inc de
    inc de
    add hl, sp
    add hl, sp
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    dec b
    dec b
    ld c, $0e
    dec bc
    dec bc
    inc a
    inc a
    ldh a, [c]
    ldh a, [c]
    ld hl, sp-$08
    cp $fe
    rst RST_10
    rst RST_10
    ld l, l
    ld l, l
    or d
    or d
    ld l, l
    ld l, l
    sub $d6
    ld h, d
    ld h, d
    dec l
    dec l
    add d
    add d
    inc h
    inc h
    ld bc, $2801
    jr z, jr_007_53ed

jr_007_53ed:
    nop
    nop
    nop
    jr z, jr_007_541a

    ld d, [hl]
    ld d, [hl]
    ld bc, $1201
    ld [de], a
    ld [$2008], sp
    jr nz, jr_007_5406

    add hl, bc
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    rrca
    rlca

jr_007_5406:
    inc e
    rrca
    dec hl
    rra

jr_007_540a:
    scf
    ld e, $37
    ld [$295e], sp
    ldh [rNR41], a
    or b
    ret nc

    ld hl, sp-$18
    ld c, h
    or h
    ld a, b
    adc b

jr_007_541a:
    ld h, b
    and b
    ld h, b
    and b
    ld [hl], b
    or b
    rrca
    nop
    ld e, $0b
    ccf
    dec de
    scf
    dec de
    ld l, $13
    ld e, $03
    add hl, de
    ld b, $0f
    nop
    sbc $3f
    jr @+$01

    dec e
    cp $a6
    ld sp, hl
    cp a
    ldh a, [c]
    rst RST_38
    or [hl]
    db $fd
    or [hl]
    ld e, e
    or h
    jr c, jr_007_540a

    ld c, h
    or h
    cp h
    ld [hl], h
    sub $fa
    sbc $fa
    cp $fa
    xor $fa
    and [hl]
    ld a, [$39ce]
    ld e, d
    dec a
    cp l
    ld a, [hl]
    db $fd
    ld d, a
    db $eb
    inc d
    ld e, [hl]
    ld hl, $738d
    rst RST_38
    nop
    or $aa
    and $1a
    inc c
    db $f4
    call z, $e6f4
    ld a, d
    db $fc
    add h
    ld hl, sp-$18
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    rrca
    rlca
    inc e
    rrca
    dec hl
    rra
    scf
    ld e, $37
    ld [$0000], sp
    ldh a, [rNR10]
    ret c

    add sp, $6c
    db $f4
    inc a
    call nz, $b858
    ld h, b
    and b
    ld h, b
    and b
    nop
    nop
    ld bc, $0e00
    ld bc, $0b1f
    ccf
    dec de
    scf
    dec de
    ld l, $13
    rra
    ld [bc], a
    ld e, [hl]
    add hl, hl
    rst RST_18
    inc a

Call_007_54a4:
    ld e, a
    ld a, [$f69f]
    xor l
    or $bb
    db $f4
    rst RST_38
    cp b
    ld e, [hl]
    cp c
    ld [hl], b
    or b
    ld hl, sp+$08
    xor h
    db $f4
    call c, $f6f4
    ld a, [$fafe]
    cp [hl]
    ld a, [$ba6e]
    add hl, bc
    ld b, $0a
    inc b
    dec b
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    ld bc, $0003
    adc $3d
    cp a
    ld a, [hl]
    ld [hl], e
    rst RST_38
    ldh a, [$ffaf]
    jp c, Jump_000_3d25

    ret nz

    add hl, bc
    ldh a, [$fff9]
    nop
    sub $2a
    inc a
    call nz, $f4cc
    and $fa
    ld e, [hl]
    ldh [c], a
    xor $1a
    ld a, h
    db $f4
    ld hl, sp+$08
    add hl, bc
    ld b, $0a
    inc b
    inc b
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
    jp c, Jump_007_433d

    ld a, $4f
    scf
    ld d, l
    cpl
    ccf
    ld [$071b], sp
    scf
    rrca
    ccf
    nop
    sub $2a
    inc l
    call nc, $e898
    sbc b
    add sp, -$34
    db $f4
    ld hl, sp+$08
    ldh a, [$ffb0]
    ldh [rNR41], a
    rst RST_38
    nop
    add a
    ld a, [hl]
    rst RST_18
    ld a, [hl]
    sub e
    ld a, [hl]
    rst RST_28
    ld [hl-], a
    rst RST_38
    ld h, $bf
    ld a, [hl]
    rst RST_38
    ld [bc], a
    db $fd
    ld b, $be
    ld c, h
    cp d
    ld a, h
    ld [hl], h
    jr c, jr_007_5581

    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    rst RST_18
    and c
    ld l, l
    ld e, [hl]
    ld l, [hl]
    ld e, a
    scf
    cpl
    ld a, e
    ld b, a
    call $feb2
    and c

jr_007_554e:
    push af
    xor e
    dec e
    ldh [c], a
    or a
    ld e, c
    ld [hl], l
    sbc d
    ccf
    ret nz

    adc $f1
    call z, Call_007_7d33
    add e
    sbc l

jr_007_555f:
    db $e3
    inc e
    inc e
    ld a, h
    ld h, b
    db $f4
    adc b
    db $fc
    db $10
    jr jr_007_554e

    call z, $e8f0
    db $f4
    db $ec
    ldh a, [$ffd2]
    xor l
    push hl
    sbc [hl]
    ldh [c], a
    sbc a
    ld [hl], a
    ld c, e
    ld [hl], l
    ld c, e
    scf
    add hl, hl
    ld a, e
    ld b, a
    ld l, e
    ld d, h
    or h

jr_007_5581:
    set 4, [hl]
    add hl, sp
    ld e, e
    db $ec
    cp a
    call z, $8c7b
    jp hl


    ld e, $f7
    ld hl, sp-$51
    ld [hl], b
    ret z

    ldh a, [rNR23]
    ldh [$ffe4], a
    jr @-$4a

    ld a, b
    ret z

    jr nc, jr_007_560f

    adc b
    ld [hl], h
    ld hl, sp-$1c
    ld hl, sp+$77
    ld e, b
    ld a, e
    ld d, h
    ld a, c
    ld d, [hl]
    dec a
    inc hl
    ld a, [hl-]
    dec h
    ld a, c
    ld d, [hl]
    ld l, d
    ld d, a
    ld [hl], l
    ld c, a
    ld a, [$f605]
    add hl, bc
    sub $39
    db $eb
    db $f4
    or d
    call Call_000_3bcd
    halt
    ld sp, hl
    call $e8fe
    ldh a, [$ffe8]
    ldh a, [$ffc8]
    ldh a, [$ff50]
    ldh [$ff90], a
    ld h, b
    ld h, b
    add b
    ret nc

    jr nz, jr_007_555f

    ld h, b
    rst RST_18
    or e
    ld a, a
    ld d, d
    ccf
    jr nz, jr_007_5616

    jr nz, jr_007_5644

    ld d, h
    rst RST_18
    or h
    rst RST_38
    and e
    rst RST_30
    xor b
    dec e
    ldh [c], a
    or a
    ld e, c
    push af
    ld a, [de]
    rst RST_38
    nop
    sbc [hl]
    ld h, c
    sbc h
    db $e3
    dec l
    db $d3
    db $dd
    inc hl
    ld bc, $0601
    rlca
    ld a, e
    ld a, h
    db $ed
    sub e
    rst RST_10
    xor a
    ld a, l
    ld e, a
    ccf
    dec h
    ld a, [de]
    dec d
    ld d, $38
    ld l, b
    jr nc, jr_007_5675

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

jr_007_560f:
    nop
    ld bc, $0202
    dec b
    ld [bc], a
    dec c

jr_007_5616:
    rlca
    ld a, $5f
    cp [hl]
    cp $41
    ld e, b
    ccf
    ld a, [hl-]
    rlca

Call_007_5620:
    dec b

jr_007_5621:
    inc bc
    or d
    ld bc, $907f
    db $dd
    adc d
    ld l, a
    ret nz

    push hl
    ld b, d
    rst RST_38
    db $e4
    cp $e1
    xor e
    ld a, a
    ei
    rlca
    dec de
    ld a, a
    ld sp, hl
    ld h, a
    db $fd
    ld c, $16
    jr c, jr_007_56a5

    jr nc, jr_007_56af

    nop
    ld h, l
    ei
    sbc [hl]
    ld sp, hl

jr_007_5644:
    rst RST_38
    ld hl, sp-$21
    ld [$03fd], a
    inc bc
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_007_7800
    nop
    nop
    nop
    ld a, a
    add b
    ld a, b
    add a
    rst RST_28
    rra
    db $d3
    inc a
    xor h
    ld [hl], e
    ld e, e
    rst RST_20
    ld [hl], a
    adc [hl]
    ei
    ld b, h
    inc bc
    nop
    rst RST_20
    ld [bc], a
    db $dd

jr_007_5675:
    and $fe
    inc c
    ld a, [$fe2c]
    ld b, b
    cp $60
    ld e, $e8
    ld a, a
    or c
    ld e, a
    cp a
    rst RST_28
    rra
    sub $2f
    sub b
    ld l, a
    dec c
    di
    inc b
    ei
    add e
    ld a, h
    sbc h
    ldh a, [c]
    ld e, h
    ld hl, sp-$72
    ldh a, [$ffde]
    db $f4
    sbc $f8
    adc h
    ldh a, [$ff3c]
    add sp, -$04
    jr nc, jr_007_5621

    ld a, a
    rst RST_38
    nop
    adc a

jr_007_56a5:
    ld a, a
    adc c
    ld a, [hl]
    ld b, $ff
    sbc l
    ld a, e
    adc a
    ld a, h
    ld a, d

jr_007_56af:
    or a
    ld [hl], b
    add b
    ldh [rP1], a
    sbc b
    ldh [$fffe], a
    ld a, b
    halt
    adc a
    adc a
    ldh a, [$ffe2]
    ld a, h
    ld a, d
    sbc h
    ld a, a
    add b
    ld a, b
    add a
    rst RST_28
    rra
    db $d3
    inc a
    xor h
    ld [hl], e

Jump_007_56ca:
    ld e, e
    rst RST_20
    or [hl]
    rst RST_08
    db $eb
    sbc h
    inc bc
    nop
    rst RST_20
    ld [bc], a
    db $dd
    and $fe
    inc c
    jp c, $feec

    ldh a, [$ff72]
    adc h
    ld a, [$f624]
    sbc c
    ld l, l
    sub d
    ei
    ld b, h
    rst RST_38
    ld sp, $3fdf
    cpl
    rst RST_18
    ld d, $ef
    sub b
    ld l, a
    db $f4
    ld c, d
    db $fc
    ld h, b
    inc e
    add sp, -$64
    ldh a, [$ff5c]

Call_007_56f9:
    ld hl, sp-$72
    ldh a, [$ffde]
    db $f4
    sbc [hl]
    ld hl, sp-$73
    ld [hl], e
    db $fc
    inc bc
    add e
    ld a, h
    adc b
    ld a, a
    ld b, $ff
    sbc l
    ld a, e
    adc a
    ld a, h
    halt
    cp e
    adc h
    ldh a, [$ff3c]
    add sp, -$08
    jr nc, jr_007_578d

    adc b
    ld b, $ff
    adc a
    ldh a, [$ffe2]
    ld a, h
    ld a, d
    sbc h
    db $fc
    db $fc
    ld a, [$7706]
    ld sp, hl
    db $fd
    cp $06
    rst RST_38
    di
    rst RST_38
    call $b97f
    ld b, a
    ld e, $1e
    ld a, $20
    ld l, l
    ld e, [hl]
    rst RST_30
    cp b
    cp [hl]
    ld b, b
    jp c, $bb3c

    ld h, [hl]
    ld l, l
    sbc [hl]
    rrca
    ld [$121d], sp
    ccf
    ld l, $33
    rra
    jr z, jr_007_5761

    ld d, $01
    ld bc, $0000
    nop
    cp $01
    ld d, a
    xor [hl]
    db $ec
    cp a
    pop af
    cp $02
    db $fc
    inc e
    ldh [$ffe0], a
    nop
    nop
    nop
    ld a, d

jr_007_5761:
    cp h
    add $38
    db $fc
    nop
    call c, Call_007_5620
    jr c, @+$2c

    inc e
    ld de, $0e0e
    nop
    ld b, $06
    rra
    add hl, de
    add hl, sp
    ld h, $6b
    ld e, l
    ld d, l
    dec sp
    db $fd
    and d
    rst RST_20
    sbc c
    ei
    cp h
    ldh [$ffe0], a
    xor $0e
    rst RST_38
    pop de
    ld [hl], a
    adc $ef
    ld e, d
    cp l
    add $56

jr_007_578d:
    cp b
    ld [$f51c], a
    adc [hl]
    db $db
    cp h
    and $99
    ld e, l
    ld [hl+], a
    dec [hl]
    dec de
    ld l, $19
    inc de
    inc c
    ld c, $00
    halt
    ld hl, sp-$76
    ld [hl], h
    ld [hl], l
    adc [hl]
    cp e
    call z, $58a4
    ld a, $c0
    or d
    ld c, h
    ld l, h
    nop
    rrca
    ld [$0605], sp
    rrca
    ld [$121d], sp

jr_007_57b8:
    ccf
    ld l, $33
    rra

jr_007_57bc:
    inc l
    inc de
    inc de
    nop
    or $09
    rst RST_08
    ld [hl], d
    ld a, [$5507]
    xor [hl]
    jp hl


    cp [hl]
    ldh a, [c]
    db $fc
    inc c
    ldh a, [$fff0]
    nop
    rra
    rra
    ccf
    jr nz, jr_007_5844

    ld e, a
    sbc $bf
    db $fc
    cp a
    rst RST_38
    sub c
    rst RST_28
    sub e
    db $fd
    xor [hl]
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    jr nc, jr_007_57b8

    jr nc, @-$2e

    jr nc, jr_007_57bc

    ld [hl], b
    sub b
    ld h, b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    db $10
    scf
    cpl
    ld l, a
    ld e, d
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
    jr c, jr_007_5846

    ld l, l
    ld l, l
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec bc
    dec bc
    inc sp
    inc sp
    ld b, c
    ld b, c
    add hl, bc
    add hl, bc
    db $10
    db $10
    xor d
    xor d
    adc $ce
    adc b
    adc b
    jr jr_007_5840

    inc hl
    inc hl
    jp nz, $0dc2

    dec c
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    ld h, d
    ld h, d
    jp nz, Jump_000_13c2

    inc de
    jr nz, jr_007_585a

    ld b, e
    ld b, e
    inc b
    inc b
    inc b
    inc b

jr_007_5840:
    nop
    nop
    add b
    add b

jr_007_5844:
    ret nz

    ret nz

jr_007_5846:
    ld [hl], b
    ld [hl], b
    jr c, jr_007_5882

    sub h
    sub h
    adc [hl]
    adc [hl]
    rst RST_00
    rst RST_00
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

jr_007_585a:
    ld [$1408], sp
    inc d
    ld b, $06
    pop hl
    pop hl
    ld d, b
    ld d, b
    inc [hl]
    inc [hl]
    jr z, jr_007_5890

    inc e
    inc e
    ld d, $16
    dec bc
    dec bc
    nop
    nop
    jp $93c3


    sub e
    ld hl, $0021
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_007_5882:
    push bc
    push bc
    xor e
    xor a
    ld h, a
    ld a, a
    or h
    or l
    ld h, c
    ld h, c
    rst RST_00
    rst RST_00
    xor e
    xor e

jr_007_5890:
    sbc $fe
    ld a, l
    db $fd
    add [hl]
    add [hl]
    ld [hl+], a
    ld [hl+], a
    dec d
    rla
    xor a
    xor a
    xor e
    rst RST_38
    sbc $fe
    db $dd
    rst RST_18
    ldh a, [c]
    cp $5a
    ld e, [hl]
    and $e6
    ldh a, [c]
    ldh a, [c]
    ld hl, sp-$08
    ld a, [$7efa]
    ld a, [hl]
    ld [hl], l
    ld [hl], l
    or e
    cp a
    ld e, l
    ld e, a
    scf
    ccf
    ld e, [hl]
    ld e, [hl]
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec c
    dec c
    ld a, [de]
    ld a, [de]
    ld [de], a
    ld [de], a
    inc e
    inc e
    nop
    nop
    nop
    nop
    ldh [$ffe0], a
    sbc b
    sbc b
    jr z, jr_007_5902

    inc e
    inc e
    ld c, h
    ld c, h
    sbc d
    sbc d
    ld l, [hl]
    ld l, [hl]
    ld d, d
    ld d, d
    push bc
    rst RST_00
    adc e
    adc e
    and l
    and a
    ld e, e
    ld e, a
    ld h, h
    ld [hl], h
    add hl, hl
    add hl, hl
    ld a, a
    ld a, a
    ld [$55ee], a
    push de
    xor [hl]
    xor [hl]
    add c
    add e
    and a
    and a
    jp c, $f5de

    rst RST_38
    nop
    nop

jr_007_5902:
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

Call_007_5932:
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
    dec e
    ld [hl+], a
    db $db
    ld h, a
    ld l, b
    sbc b
    ret nc

    jr nc, @-$54

    ld l, d
    rst RST_18
    ld b, h
    ld a, e
    call nz, $c67d
    add sp, $18
    cp h
    call nz, $f3ef
    ld h, d
    ld a, l
    ld [$d3f5], a
    ld l, h
    pop de
    ld l, $e1
    ld a, $b8
    ld l, e
    pop af
    inc sp
    xor $03
    jp c, Jump_007_6337

    and e
    sbc [hl]
    bit 6, l
    ld c, d
    ld e, [hl]
    ld h, c
    pop hl
    ld a, [hl]
    ld [hl-], a
    dec a
    ld b, a
    cp b
    rst RST_38
    nop
    db $eb
    inc e
    sub b
    ld l, e
    ld l, l
    push af
    jr jr_007_5994

    ld e, d
    ld h, [hl]
    sbc $e1
    sub c
    xor $1d
    xor $34
    rst RST_00
    ld l, h
    adc a
    ld hl, sp+$3f
    ld [$2eff], sp
    ld [hl-], a
    ret c

    db $e4

jr_007_5994:
    jp hl


    dec d
    cp h
    ld c, e
    db $d3
    ld l, h
    jp hl


    halt
    ret


    halt
    adc c
    halt
    dec sp
    call nz, $8877
    ld l, c
    or $fa
    dec h
    or h
    ld a, e
    rst RST_20
    ld a, b
    ld c, [hl]
    or b
    inc a
    ld b, b
    sbc d
    ld h, l
    ld [de], a
    db $ed
    daa
    ret c

    ccf
    ret nz

    ldh a, [c]
    inc de
    db $ec
    ld hl, $011d
    ld e, c
    dec b
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_007_7800
    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_007_7800
    nop
    nop
    nop
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_007_7800
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $77
    ld a, b
    cp a
    pop bc
    ld [hl], a
    ld a, b
    dec c
    ld c, $03
    inc bc
    cp [hl]
    cp [hl]
    rst RST_38
    rst RST_38
    pop hl
    pop hl
    pop bc
    pop bc
    ld a, l
    ld a, l
    rst RST_00
    rst RST_00
    adc e
    adc e
    add a
    add a
    ld a, [hl]
    ld a, [hl]
    add $c6
    inc bc
    inc bc
    reti


    reti


    db $db
    db $db
    inc hl
    inc hl
    adc [hl]
    adc [hl]
    db $f4
    db $f4
    adc e
    adc e
    rst RST_00
    rst RST_00
    ld a, c
    ld a, c
    or $f6
    adc [hl]
    adc [hl]
    ld a, [hl-]
    ld a, [hl-]
    ld h, a
    ld h, a
    jp c, $f8da

    ld hl, sp-$74
    adc h
    rlca
    rlca
    rst RST_18
    rst RST_18
    call c, Call_000_0bdc
    dec bc
    ld [hl-], a
    ld [hl-], a
    or $f6
    ld d, b
    xor a
    db $ec
    sub e
    ld e, h
    ld h, e
    cp b
    adc b
    and c
    sbc [hl]
    sbc a
    and b
    adc $51
    adc $09
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    jr jr_007_5a77

    db $fc
    inc bc
    add b
    ld a, a
    nop
    rst RST_38
    nop
    rst RST_38
    call z, $8904
    ld b, a
    ld e, a
    ret c

    cp e
    and h
    xor b
    sbc b
    inc l
    rra
    ld e, a
    ld h, b
    or b
    rst RST_08
    inc bc
    inc bc
    rst RST_08
    ldh a, [$fff8]
    rlca
    add b

jr_007_5a77:
    ld a, a
    jr c, @+$41

    db $fc
    inc bc
    add b
    ld a, a
    nop
    rst RST_38
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    db $10
    db $10
    ld bc, $0001
    nop
    ld c, h
    ld c, h
    inc bc
    inc bc
    nop
    nop
    jr nz, jr_007_5ab4

    add b
    add b
    ld [de], a
    ld [de], a
    nop
    nop
    ld bc, $c401
    call nz, $2020
    sub l
    sub l
    add hl, de
    add hl, de
    ld c, a
    ld c, a
    sbc c
    sbc c
    rst RST_30
    rst RST_30
    ld e, b
    ld e, b
    or b
    or b
    or l
    or l
    ld d, b
    ld d, b
    db $e4
    db $e4

jr_007_5ab4:
    ld [hl+], a
    ld [hl+], a
    xor l
    xor l
    cp $fe
    rst RST_20
    rst RST_20
    ld b, d
    ld b, d
    call z, $f6cc
    or $76
    halt
    ld c, c
    ld c, c
    db $e3
    db $e3
    ld l, e
    ld l, e
    cp a
    cp a
    ld h, a
    ld h, a
    ld a, h
    ld a, h
    and $e6
    or $f6
    adc e
    adc e
    dec b
    dec b
    ld d, a
    ld d, a
    adc a
    adc a
    ei
    ei
    xor $ee
    jr jr_007_5afa

    ld e, l
    ld e, l
    rla
    rla
    jr nz, jr_007_5b08

    add hl, bc
    add hl, bc
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    rst RST_38
    rst RST_38
    push de
    push de
    ld l, d
    ld l, d
    or c
    or c
    inc d
    inc d

jr_007_5afa:
    nop
    nop
    ld hl, $0021
    nop
    nop
    nop
    inc h
    inc h
    ld bc, $4701
    ld b, a

jr_007_5b08:
    dec e
    dec e
    ld l, d
    ld l, d
    sub h
    sub h
    ld h, b
    ld h, b
    ld e, $1e
    ld [hl], l
    ld [hl], a
    and $e7
    add e
    add e
    inc bc
    inc bc
    ld de, $0111
    ld bc, $9090
    pop de
    pop de
    ld hl, $4721
    ld b, a
    add [hl]
    add [hl]
    inc e
    inc e
    add hl, sp
    add hl, sp
    inc bc
    inc bc
    dec b
    dec b
    or b
    or b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    and b
    and b
    ld h, b
    ld h, b
    db $e4
    db $e4
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld e, b
    ld e, b
    dec hl
    cpl
    ld h, l
    rst RST_20
    ld [hl+], a
    db $e3
    ld b, e
    jp $8181


    ld c, c
    ld c, c
    ret nz

    ret nz

    inc d
    inc d
    and b
    and b
    ld a, [$fcfa]
    db $fc
    ld a, $fe
    sbc a
    rst RST_38
    rst RST_00
    rst RST_38
    and e
    cp a
    db $e4
    db $e4
    ld h, d
    ld h, d
    ld [hl], e
    ld [hl], e
    ld e, c
    ld e, c
    dec a
    dec a
    ld l, h
    ld l, h
    ld e, $1e
    xor b
    xor b
    ld [hl], c
    ld a, a
    dec hl
    cpl
    inc e
    ld e, $8b
    adc e
    rst RST_08
    rst RST_08
    db $e4
    db $e4
    ld [hl], b
    ld [hl], b
    jr nz, jr_007_5ba0

    rst RST_18
    rst RST_18
    rst RST_38
    rst RST_38
    ld hl, sp-$08
    call z, $87cc
    add a
    cp $fe
    rst RST_38
    rst RST_38
    ld a, c
    ld a, c
    rst RST_38
    rst RST_38
    jr c, jr_007_5bcc

    ld [bc], a
    ld [bc], a
    db $10
    db $10
    add h
    add h
    ldh [$ffe0], a
    db $f4
    db $f4
    pop bc
    pop bc

jr_007_5ba0:
    ret nz

    ret nz

    ldh [c], a
    ldh [c], a
    db $fc
    db $fc
    cp [hl]
    cp [hl]
    ldh a, [c]
    ldh a, [c]
    ldh a, [$fff0]
    push bc
    push bc
    adc b
    adc b
    ld a, [bc]
    ld a, [bc]
    add b
    add b
    ld a, [hl+]
    ld a, [hl+]
    add c
    add c
    ld d, h
    ld d, h
    ld [$4208], sp
    ld b, d
    ld de, $fe11
    cp $47
    ld b, a
    add hl, de
    add hl, de
    ld b, b
    ld b, b
    sbc l
    sbc l
    jr nz, jr_007_5bec

jr_007_5bcc:
    sub b
    sub b
    ld b, $06
    rst RST_38
    rst RST_38
    ei
    ei
    sbc a
    sbc a
    ccf
    ccf
    inc bc
    inc bc
    ld b, $06
    ld a, a
    ld a, a
    ei
    ei
    and a
    and a
    inc bc
    inc bc
    ld d, h
    ld d, h
    nop
    nop
    add a
    add a
    jr nc, jr_007_5c1c

jr_007_5bec:
    add h
    add h
    ld [bc], a
    ld [bc], a
    rst RST_08
    rst RST_08
    db $fd
    db $fd
    rst RST_08
    rst RST_08
    rrca
    rrca
    inc bc
    inc bc
    jp $31c3


    ld sp, $0000
    rst RST_30
    rst RST_30
    rst RST_38
    rst RST_38
    rst RST_18
    rst RST_18
    ei
    ei
    rst RST_18
    rst RST_18
    ld a, [hl]
    ld a, [hl]
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_30
    ei
    ei
    rst RST_38
    rst RST_38
    ld [hl], a
    ld [hl], a
    db $fd
    db $fd
    rst RST_38
    rst RST_38
    db $ed
    db $ed

jr_007_5c1c:
    cp a
    cp a
    rst RST_30
    rst RST_30
    rst RST_38
    rst RST_38
    cp e

Call_007_5c23:
    cp e
    rst RST_38
    rst RST_38
    ld l, a
    ld l, a
    rst RST_38
    rst RST_38
    db $fd
    db $fd
    rst RST_38
    rst RST_38
    cp a
    cp a
    ld a, [hl]
    ld a, [hl]
    rst RST_38
    rst RST_38
    db $db
    db $db
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    or $f6
    rst RST_38
    rst RST_38
    ld l, a
    ld l, a
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

jr_007_5c5f:
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
    nop
    rst RST_38
    ld b, d
    rst RST_38
    jr @+$01

    add b
    rst RST_38
    ld a, [hl+]
    rst RST_38
    add $ff
    sbc d
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    rst RST_38
    adc b
    rst RST_38
    ld [hl-], a
    rst RST_38
    db $10
    rst RST_38
    add l
    rst RST_38
    dec hl
    rst RST_38
    cp a
    rst RST_38
    rst RST_30
    rst RST_30
    cp $fe
    xor l
    xor l
    ld d, $16
    ld d, c
    ld d, c
    inc d
    inc d
    and d
    and d
    ld [$2008], sp
    jr nz, jr_007_5c5f

    xor $75
    ld [hl], l
    db $e3
    db $e3
    cpl
    cpl
    ld b, b
    ld b, b
    ld d, $16
    ld b, b
    ld b, b
    inc e
    inc e
    ld de, $4011

Jump_007_5cc3:
    ld b, b
    ld [de], a
    ld [de], a
    nop
    nop
    adc c
    adc c
    jr nz, jr_007_5cec

    add b
    add b
    inc d
    inc d
    inc b
    inc b
    ld b, c
    ld b, c
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    ld b, h
    ld b, h
    ld [bc], a
    ld [bc], a
    sub b
    sub b
    jr nz, jr_007_5d02

    ld bc, $a401
    and h
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_007_5d0c

jr_007_5cec:
    inc b
    inc b
    nop
    nop
    ld b, l
    ld b, l
    nop
    nop
    ld [$4008], sp
    ld b, b
    ld de, $8411
    add h
    ld bc, $2001
    jr nz, @-$09

    ld a, [bc]

jr_007_5d02:
    ret


    ld [hl], $a7
    ld e, b
    sbc [hl]
    ld h, c
    ld e, a
    and c
    cp [hl]
    ld b, c

jr_007_5d0c:
    ld a, [hl-]
    push bc
    ld a, c
    add a
    xor a
    ld d, b
    ld d, e
    xor h
    push hl
    ld a, [de]
    cp c
    ld b, [hl]
    cp d
    ld b, l
    ld e, l
    and d
    add sp, -$49
    ld l, $f1
    or h
    ld c, [hl]
    halt
    adc [hl]
    cp e
    ld b, a
    ld e, c
    and [hl]
    cp a
    ld b, b
    db $ed
    inc de
    cp $01
    rst RST_38
    ld bc, $e29d
    jp c, $9df5

    ldh [c], a
    cp d
    ld b, l
    db $fd
    ld [bc], a
    or a
    ret z

    rst RST_38
    nop
    ld a, a
    add b
    rst RST_38
    nop
    ei
    inc b
    push hl
    ld a, [de]
    rst RST_28
    db $10
    cp a
    ld b, b
    jp c, $ba25

    ld b, l
    db $fd
    inc bc
    rst RST_38
    nop
    ld e, a
    and b
    xor e
    ld d, h
    rst RST_30
    ld [$02fd], sp
    ei
    inc b
    db $dd
    ld [hl+], a
    cp a
    ld b, b
    or h
    ld c, d
    or e
    ld c, a
    ld a, [$da07]
    dec h
    rst RST_38
    nop
    db $fd
    inc bc
    cp $01
    rst RST_38
    ld bc, $c23d
    ld e, e
    db $e4
    db $dd
    ldh [c], a
    or a
    ld c, b
    rst RST_38
    nop
    cp a
    ret nz

    rst RST_38
    nop
    ld a, a
    add b
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
    ld a, [hl+]
    ld d, b
    ld d, b
    ld a, [hl+]
    ld a, [hl+]
    ld l, b
    ld l, b
    ld a, [hl-]
    ld a, [hl-]
    adc l
    adc l
    db $d3
    db $d3
    ld h, b
    ld h, b
    ld c, b
    ld c, b
    ld [hl], $36
    jr z, jr_007_5df8

    ld hl, $8021
    add b
    dec bc
    dec bc
    and l
    and l
    jp nc, $acd2

    xor h
    ld a, b
    ld a, b
    sub d
    sub d
    sub [hl]
    sub [hl]
    dec b
    dec b
    inc de
    inc de
    add d
    add d
    ld bc, $a401
    and h
    ret nc

    ret nc

    ld b, h
    call nz, Call_007_4040
    xor d
    xor d
    dec d
    dec d
    cp h
    cp h

jr_007_5df8:
    ld d, a
    ld d, a
    ldh [c], a
    ldh [c], a
    sub l

jr_007_5dfd:
    sub l
    ld b, b
    ld b, b
    rst RST_38
    rst RST_38
    or d
    or [hl]
    ld b, b
    ld c, b
    and b
    ldh [rP1], a
    ld b, l
    nop
    inc c
    inc b
    inc l
    ld [$c31c], sp
    jp $cece


    xor a
    cp a
    ld b, [hl]
    and $02
    and d
    nop
    call nc, $dd00
    ld [$00fd], sp
    sub l
    inc b
    or a
    ld c, $ff
    xor l
    db $fd
    inc [hl]
    db $f4
    ld d, [hl]
    sub $6e
    xor $cc
    call z, $f5d0
    ld [hl], h
    halt
    ld l, b
    ld l, [hl]
    xor h
    xor a
    db $e4
    rst RST_20
    ld b, [hl]
    ld b, a
    ld c, a
    ld c, a
    ldh [c], a
    db $e3
    rst RST_38
    rst RST_38
    or d
    cp d
    ld c, b
    ld c, l
    jr nz, jr_007_5dfd

    nop
    ld e, e
    nop
    db $db
    db $10
    cp a
    dec bc
    rst RST_28
    jp $cec3


    adc $bb
    cp a
    ld b, h
    and $82
    or d
    and b
    or h
    db $10
    jr c, jr_007_5e6f

jr_007_5e5f:
    cp c
    ld l, $6e
    ld d, $76
    dec [hl]
    push af
    daa
    rst RST_20
    ld l, e
    db $eb
    ldh a, [c]
    ldh a, [c]
    ld b, b
    ret nz

    and c

jr_007_5e6f:
    and c
    jr nz, jr_007_5e5f

    ld [hl], b
    rst RST_38
    or l
    rst RST_38
    xor h
    rst RST_28
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    dec de
    dec de
    ld sp, $ff31
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ei
    rst RST_38
    db $dd
    rst RST_38
    ld h, h
    rst RST_38
    or c
    rst RST_38
    add c
    cp $ff
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    cp a
    rst RST_38
    or a
    rst RST_38
    sub a
    rst RST_38
    dec d
    rst RST_38
    and c
    rst RST_38
    add hl, de
    rst RST_38
    add l
    cp $62
    rst RST_38
    dec d
    ld a, [$edda]
    ld l, l
    or [hl]
    or [hl]
    db $db
    db $dd
    ld l, e
    ld hl, $b4ff
    rst RST_18
    sbc $6b
    call c, Call_007_6aa7
    rst RST_30
    sub $3b
    xor e
    ld e, l
    rst RST_38
    ld d, l
    add $c6
    ld l, b
    ld l, c
    nop
    nop
    jr nz, jr_007_5eec

    nop
    inc h
    nop
    ld b, [hl]
    inc b
    ld h, [hl]
    inc b
    ld l, [hl]
    dec a
    dec a
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld b, b
    ld b, b
    add b
    adc b
    and b
    xor b
    nop
    jr nz, jr_007_5edf

jr_007_5edf:
    ld [hl-], a
    add b
    rst RST_38
    inc h
    rst RST_38
    ld b, [hl]

jr_007_5ee5:
    rst RST_18
    ld c, l
    db $dd
    db $fd
    db $fd
    reti


    reti


jr_007_5eec:
    sbc b
    sbc b
    adc b
    adc b
    db $10
    jr c, jr_007_5ef3

jr_007_5ef3:
    ld l, d
    jr nz, jr_007_5ee5

    ld a, d
    rst RST_38
    rst RST_18
    rst RST_18
    ld c, [hl]
    ld c, a
    set 1, e
    ld b, c
    ld b, c
    ld hl, sp+$00
    call nz, $c400
    nop
    ld hl, sp+$00
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    call nz, $e400
    nop
    db $e4
    nop
    call nc, $cc00
    nop
    call z, $c400
    nop
    nop
    nop
    db $fc
    nop
    jr nc, jr_007_5f24

jr_007_5f24:
    jr nc, jr_007_5f26

jr_007_5f26:
    jr nc, jr_007_5f28

jr_007_5f28:
    jr nc, jr_007_5f2a

jr_007_5f2a:
    jr nc, jr_007_5f2c

jr_007_5f2c:
    jr nc, jr_007_5f2e

jr_007_5f2e:
    nop
    nop
    ld hl, sp+$00
    call nz, $c400
    nop
    ld hl, sp+$00
    call nz, $c400
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    inc a
    nop
    halt
    nop
    ld h, h
    nop
    ld h, b
    nop
    ld [hl], d
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    ld [hl], $00
    ld a, $00
    ld [hl+], a
    nop
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld [hl], $00
    ld [hl-], a
    nop
    ld a, $00
    jr nc, jr_007_5f6c

jr_007_5f6c:
    ld a, b
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    halt
    nop
    ld h, h
    nop
    ld h, b
    nop
    halt
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    halt
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld l, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld b, [hl]
    nop
    rst RST_28
    nop
    nop
    nop
    call nz, $c0ff
    ei
    adc d
    ei
    and c
    pop af
    add b
    ret nc

    add b
    ret nz

    add b
    rst RST_38
    cp $ff
    ld bc, $813f
    sbc a
    dec d
    sbc a
    ld bc, $818b
    add e
    ld bc, $0103
    rst RST_38
    ccf
    rst RST_38
    ret z

    rst RST_38
    ret nz

    rst RST_38
    add h
    rst RST_38
    add b
    ei
    add d
    di
    add b
    ldh [$ff80], a
    rst RST_38
    cp $ff
    dec d
    rst RST_30
    add hl, bc
    rst RST_08
    ld b, c
    rst RST_08
    dec b
    adc a
    ld bc, $010b
    inc bc
    ld bc, $3fff
    rst RST_38
    ret nz

    rst RST_38
    jp nc, $a4f3

    rst RST_20
    add b
    rst RST_00
    add b
    rst RST_00
    add b
    pop bc
    add b
    rst RST_38
    cp $ff
    adc c
    ei
    dec b
    rst RST_38
    ld bc, $51ff
    rst RST_18
    add l
    add a
    ld b, c
    jp $ff01


    ccf
    rst RST_38
    ld [bc], a
    ld [hl-], a
    jr nz, jr_007_6024

    add c
    add c
    inc de
    inc bc
    ld a, [hl-]
    inc de
    adc h
    and a
    adc h
    and a
    and l
    ld [$0a2a], a
    ld [hl], $66
    inc d
    ld b, [hl]
    sbc c
    ld c, a
    reti


    ld [hl], a
    sbc b
    daa
    adc b
    scf
    xor h
    or e
    adc l
    jp c, Jump_007_500e

jr_007_6024:
    ld d, [hl]
    ret c

    ld a, [bc]
    adc h
    and e
    xor h
    ld l, l
    ld l, [hl]
    call nz, Call_007_47c7
    ld b, a
    dec d
    dec de
    ld c, l
    ld d, e
    rla
    add hl, de
    xor e
    xor l
    ld a, [bc]
    ld l, $14
    inc [hl]
    nop
    or b
    jr nz, jr_007_6060

    nop
    nop
    ld d, b
    ld d, b
    ld hl, $0021
    ld bc, $0b02
    ld d, h
    ld e, a
    ld bc, $291f
    ccf
    ret nz

    ret nz

    and b
    ldh [$ffb0], a
    ret nc

    ld l, $5e

jr_007_6058:
    ld d, e
    ld l, a
    reti


    rst RST_20
    sub h
    xor e
    sbc $e9

jr_007_6060:
    ld b, c
    ld [hl], a
    dec l
    ld a, a
    jr nz, jr_007_6058

    sub b
    or $40
    ld h, [hl]
    ldh [$ffe4], a
    inc [hl]
    inc [hl]
    add d
    add d
    inc [hl]
    ld l, e
    jr nz, @+$81

    ld a, [hl-]
    ld d, l
    ld l, h
    ld d, e
    push de
    db $eb
    sub d
    xor a
    ld c, b
    db $fc
    ld [hl+], a
    ldh [c], a
    ld b, b
    ld b, b
    ld b, h
    ld h, h
    dec d
    dec [hl]
    or b
    ld sp, hl
    ld b, $ff
    xor b
    cp a
    xor h
    xor a
    inc c
    ld c, h
    ld d, b
    ld d, b
    sub h
    sub h
    ld a, [bc]
    ld a, [de]
    and l
    cp a
    or b
    rst RST_38
    inc b
    rst RST_38
    ei
    ei
    ret


    call Call_000_3920
    ld [hl], h
    ld a, h
    ld c, d
    ld a, [$e4c4]
    ld c, $cf
    ld e, d
    rst RST_18
    inc d
    ld e, $60
    ld a, [hl]
    and h
    db $f4
    ld bc, $2ab1
    ld a, [hl+]
    add l
    add l
    xor b
    db $ec
    ld d, $bf
    ld a, [bc]
    sbc a
    inc h
    ld l, $e0
    db $f4
    add hl, bc
    ld l, c
    ld b, $07
    adc b
    sbc [hl]
    ld b, b
    ld l, b
    ld b, c
    ld h, e
    sub b
    push de
    ld a, [bc]
    adc a
    and b
    and d
    ld d, c
    push af
    jr z, jr_007_6152

    ld [hl+], a
    ld a, d
    adc l
    xor a
    ld b, b
    ld b, l
    sub d
    sbc e
    ld d, b
    ld hl, sp+$20
    add hl, sp
    ld [hl], h
    ld a, h
    ld c, d
    ld a, [$e4c4]
    ld c, $cf
    ld e, d
    rst RST_18
    inc d
    ld e, $60
    ld a, [hl]
    and h
    db $f4
    ld bc, $2ab1
    ld a, [hl+]
    add l
    add l
    xor b
    db $ec
    ld d, $bf
    ld a, [bc]
    sbc a
    inc h
    ld l, $e0
    db $f4
    add hl, bc
    ld l, c
    ld b, $07
    adc b
    sbc [hl]
    ld b, b
    ld l, b
    ld b, c
    ld h, e
    sub b
    push de
    ld a, [bc]
    adc a
    and b
    and d
    ld d, c
    push af
    jr z, jr_007_6192

    ld [hl+], a
    ld a, d
    adc l
    xor a
    ld b, b
    ld b, l
    sub d
    sbc e
    ld d, b
    ld hl, sp+$77
    ld [hl], a
    or h
    rst RST_38
    ld a, $bf
    rlca
    ld a, a
    inc [hl]
    rst RST_38
    adc c
    db $dd
    inc h
    ld h, h
    add b
    and b
    ld l, b
    ld l, l
    jp c, $9ddb

    db $fd
    inc hl
    rst RST_38
    ld e, b
    rst RST_18
    add e
    rst RST_10
    call Call_007_42cd
    ld b, d
    ld de, $141b
    dec e
    ld h, l
    ld a, a
    scf
    ccf
    nop
    inc e
    ld a, [hl-]
    ccf
    ld b, d
    ld e, [hl]
    ld de, $a01d
    and d

jr_007_6152:
    ld d, c
    push af
    jr z, jr_007_61d2

    ld [hl+], a
    ld a, d
    adc l
    xor a
    ld b, b
    ld b, l
    sub d
    sbc e
    ld d, b
    ld hl, sp+$0b
    rrca
    ld d, e
    ld e, a
    ld d, d
    ld a, [hl]
    inc h
    dec a
    cpl
    ccf
    ld c, d
    ld a, e
    add e
    sbc e
    daa
    ccf
    and h
    db $f4
    ld bc, $2ab1
    ld a, [hl+]
    add l
    add l
    xor b
    db $ec
    ld d, $bf
    ld a, [bc]
    sbc a
    inc h
    ld l, $e0
    db $f4
    add hl, bc
    ld l, c
    ld b, $07
    adc b
    sbc [hl]
    ld b, b
    ld l, b
    ld b, c
    ld h, e
    sub b
    push de
    ld a, [bc]
    adc a
    sub b
    ret c

jr_007_6192:
    ld [hl-], a
    cp [hl]
    and l
    db $fd
    ld hl, sp-$08
    ld h, $3e
    ld d, h
    db $f4
    ld b, b
    ld l, b
    adc h
    cp h
    jr nz, @+$3b

    ld [hl], h
    ld a, h
    ld c, d
    ld a, [$e4c4]
    ld c, $cf
    ld e, d
    rst RST_18
    inc d
    ld e, $60
    ld a, [hl]
    ret


    ld sp, hl
    add $fe
    ld l, b
    ld a, b
    dec d
    or a
    ldh [c], a
    cp $54
    call c, $fcf4
    db $e3
    rst RST_28
    nop
    nop
    nop
    nop
    ld de, $4011
    ld d, b
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_61d2:
    jr nc, jr_007_6204

    nop
    nop
    inc b
    inc b
    db $10
    inc d
    ld hl, $0a35
    ld a, [bc]
    nop
    nop
    ld de, $1111
    dec d
    ld [$000c], sp
    nop
    ld b, c
    ld b, c
    jp nz, Jump_000_00c3

    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_61f3:
    nop
    nop
    nop
    db $10
    db $10
    ld b, h
    ld d, h
    ld b, h
    ld e, h
    jr nz, jr_007_6226

    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6204:
    ld [bc], a
    inc bc
    inc d
    rlca
    inc l
    inc de
    dec hl
    ld e, h
    ld l, b
    dec a
    ld l, d
    cp [hl]
    nop
    nop
    nop
    nop
    sub h
    sbc h
    ld a, [bc]
    or $34
    jp z, Jump_000_3bed

    ld [bc], a
    ld d, l
    ld b, d
    push de
    xor b
    ld a, h
    xor c
    ld a, b
    xor d
    ld a, c

jr_007_6226:
    db $fd
    inc bc
    ld c, a
    inc sp
    ccf
    ld [de], a
    cpl
    ld e, $1f
    nop
    inc bc
    sub $91
    ld [hl], h
    ld d, c
    or h
    rst RST_38
    ret nz

    ldh a, [c]
    call Call_007_4bfc
    push af
    ld a, e
    ld a, [$0206]
    ld [bc], a
    jr nz, jr_007_62ae

    ld [hl], b
    ld e, d
    ld [de], a
    ld l, b
    ld a, [de]
    ld c, c
    ld e, d
    ld c, l
    ld d, l
    ld c, [hl]
    inc c
    inc de
    nop
    and b
    ld [bc], a
    xor d
    and h
    ld [$82ca], a
    add sp, -$50
    ldh a, [$ffc5]
    pop bc
    add h
    ld b, a
    adc c
    inc bc
    dec d
    nop
    ld [de], a
    ld [bc], a
    ld b, $01
    dec c
    ld b, $3f
    ld b, c
    ld c, a
    inc c
    ld [de], a
    ld bc, $cd23
    push af
    ld [hl], a
    adc a
    ld a, [hl]
    xor [hl]
    cp e
    ld l, e
    cp h
    ld a, h
    ld e, d
    cp d
    cp b
    ld b, b
    add b
    nop
    ld [$210c], sp
    ld hl, $0000
    dec h
    dec [hl]
    add b
    add b
    inc b
    ld b, $00
    nop
    ld b, h
    ld h, h
    ld [$0208], sp
    add d
    db $10
    jr @+$04

    ld [bc], a
    jr nz, @+$32

    inc b
    inc b
    add b
    ret nz

    db $10
    jr @+$03

    ld bc, $1810
    ld b, c
    ld b, c
    inc b
    inc b
    ld bc, $2201

jr_007_62ab:
    ld [hl-], a
    ld b, b
    ld b, b

jr_007_62ae:
    inc b

jr_007_62af:
    ld b, $02
    inc bc
    jr nz, @+$22

    ld [$008c], sp
    nop
    ld c, b
    ld c, b
    ld [bc], a
    inc bc
    jr nz, jr_007_62ee

    inc b
    inc b
    jr jr_007_62c6

    inc e
    jr z, @+$2d

    inc c

jr_007_62c6:
    ld l, a
    inc c
    ld d, c
    jr nc, jr_007_6343

    add hl, bc
    ld e, d
    and a
    cp [hl]
    ld h, b
    jr nc, jr_007_6312

    halt
    ld l, $89
    ld d, a
    db $dd
    ld d, e
    inc h
    dec sp
    ld e, h
    ld h, e
    ld [hl], $c9
    ld a, [$e60d]
    ld h, [hl]
    db $dd
    ld d, e
    sub a
    ld c, h
    db $db
    inc b
    ld a, a
    jr nz, jr_007_634a

    jr nz, @+$41

    ld b, b

jr_007_62ee:
    rlca
    jr jr_007_62ab

    ld a, l
    ldh [c], a
    dec e
    db $db
    ld l, l
    cp a
    ld c, c
    db $fd
    dec bc
    or $0a
    ld hl, sp+$04
    ret nz

    jr nc, jr_007_6341

    ld h, b
    ld c, $0f
    sub b
    sub b
    ld [$080d], sp
    dec a
    dec hl
    ld e, a
    inc h
    ld e, [hl]
    sub h
    ld l, [hl]
    ldh a, [$fff0]

jr_007_6312:
    inc d
    db $ec
    ld a, [hl+]
    ld [hl], $4c
    ld b, d
    ld d, e
    ld d, l
    ld c, c
    ld c, e
    xor d
    xor e
    and h
    and l
    sub $2e
    ld [$6216], a
    sbc [hl]
    ld sp, hl
    add a
    inc a
    ld b, e
    rra
    jr nz, jr_007_6344

    jr jr_007_62af

    ret nz

jr_007_6330:
    adc b
    adc l
    sbc c
    sbc l
    dec [hl]
    add hl, sp
    ld c, l

Jump_007_6337:
    ld [hl], l
    sub d
    db $eb
    ld h, l
    sub a
    and b
    ld l, h
    inc b
    inc b
    ld e, c

jr_007_6341:
    ld c, b
    or a

jr_007_6343:
    sub [hl]

jr_007_6344:
    ld [hl], a
    ld d, a
    sbc c
    adc c
    ld d, d
    ld b, e

jr_007_634a:
    sub [hl]
    add a
    halt
    ld d, a
    cp l
    sbc [hl]
    ld d, a
    ld e, e

jr_007_6352:
    ld [$ddf6], a
    ld h, a
    or $0a
    push de
    ld e, e
    or [hl]
    ld a, [hl-]
    xor l
    scf
    ld c, d
    halt
    ld a, a
    ld d, c
    or d
    and c
    ld d, a
    ld b, [hl]
    xor l
    adc [hl]
    ld l, l
    ld c, [hl]
    cp e
    sbc h
    ld h, [hl]
    ld e, c
    cp a
    sbc h
    dec l
    rst RST_30
    add [hl]
    sbc d
    ld [hl], l
    ld a, e
    halt
    ld a, d
    xor l
    or a
    ld a, [hl-]
    ld b, [hl]
    db $ed
    sub a
    sub [hl]
    ld a, [de]
    inc hl
    rst RST_38
    ld [$71ff], sp
    adc [hl]
    jr c, jr_007_63f9

    ld a, [bc]
    ld [de], a
    ld [hl], e
    rst RST_28
    add hl, sp
    xor l
    add hl, sp
    xor l
    adc b
    rst RST_38
    ld d, c
    rst RST_38
    adc [hl]
    ld [hl], c
    ld b, e
    and [hl]
    db $ed
    cp [hl]
    ld h, [hl]
    or l
    db $e3
    ld sp, $71a3
    jr @-$72

    jr jr_007_6330

    jr nc, jr_007_6352

    ld l, a
    rst RST_30
    add hl, sp
    ld sp, $434a
    ld sp, $aace
    cp e
    db $e3
    ld [hl], c
    rst RST_28
    ld a, l
    and a
    ld [hl], l
    xor $3d
    db $d3
    or d
    pop bc
    and h
    sub [hl]
    ld a, c
    and d
    cp a
    inc c
    inc c
    ld [hl+], a
    ld a, [hl-]
    pop bc
    pop hl
    nop
    nop
    ld b, d
    ld h, e
    nop
    nop
    ldh a, [$fff0]
    inc e
    inc e
    inc c
    inc c
    inc hl
    inc hl
    nop
    ret nz

    inc h
    inc h
    db $10
    db $10
    ld c, h
    ld l, h
    ld bc, $300f
    jr nc, jr_007_63e7

    rlca
    jr c, jr_007_6422

    ldh [$ffe0], a
    add h

jr_007_63e7:
    add [hl]
    ld [hl], b
    ld [hl], b
    ld [$4618], sp
    ld l, a
    nop
    ld [bc], a
    ld h, b
    ldh [rNR43], a
    inc hl
    sbc b
    ret c

    inc c
    inc c
    add hl, bc

jr_007_63f9:
    rrca
    ld [hl], b
    ld a, b
    ld [bc], a
    jp $3818


    ld [$1400], sp
    nop
    ld [hl+], a
    inc b
    ld h, l
    ld h, $65
    ld h, $73
    inc d
    ld e, l
    ld [hl+], a
    ld d, [hl]
    ld bc, $0c0f
    ld d, $1b
    add hl, hl
    dec [hl]
    di
    rrca
    jr nz, jr_007_642d

    ld c, b
    cp b
    call nz, $8f6c
    jr z, jr_007_6476

    inc hl

jr_007_6422:
    ld [hl], $42
    halt
    ld bc, $43f5
    sub l
    inc hl
    adc [hl]
    ld d, d
    ld h, [hl]

jr_007_642d:
    add hl, hl
    ld d, l
    ld [hl], $99
    ld [hl-], a
    rst RST_08
    ld e, b
    ldh [$ff2f], a
    or b
    ld d, b
    db $dd
    ld h, l
    sub a
    ld e, b
    ld b, h
    add a
    ldh a, [rNR10]
    rst RST_38
    rst RST_38
    add b
    ld a, a
    ld b, c
    cp [hl]
    ccf
    pop bc
    sub e
    pop hl
    ld c, e
    ld [hl], h
    and [hl]
    ld sp, hl
    rst RST_28
    ld a, d
    cp $be
    and e
    rra
    ld de, $292f
    scf
    add hl, hl
    scf
    sbc c
    and a
    jp hl


    rla
    xor c
    rla
    ld l, a
    dec sp
    call nc, Call_000_3c78
    di
    rst RST_10
    db $eb
    ld h, a
    sbc e
    sub h
    ld a, b
    jp hl


    or $de
    pop hl
    xor c
    rla
    cp c
    rlca
    cp c
    rlca

jr_007_6476:
    cp l
    dec bc
    and l
    inc de
    push bc
    dec hl
    sbc c
    ld d, a
    xor c
    or a
    ld l, b
    jr jr_007_64dd

    ld h, $4e
    ld sp, $3877
    ld l, l
    ld a, [hl+]
    ld c, [hl]
    dec hl
    ld a, [hl+]
    inc c
    ld [hl+], a
    dec d
    cp e
    rst RST_00
    rla
    jr @-$73

    adc h
    add a
    ld b, h
    db $d3
    inc [hl]
    ld h, l
    sbc c

Call_007_649c:
    ld d, d
    ld [hl-], a
    ld a, b
    add d
    ld [hl], $18
    ld h, $15
    dec d
    ld b, $11
    ld a, [bc]
    dec de
    inc c
    inc de
    ld a, [bc]
    rrca
    nop
    nop
    nop
    ld e, h
    ld de, $ad49
    ld l, h
    ld bc, $c02f
    ld [hl], a
    ret nz

    rst RST_38
    nop
    nop
    nop
    nop

jr_007_64bf:
    nop
    ld [hl], h
    adc h
    and c
    ld h, c
    ld b, l
    add $97
    sbc b
    cpl
    or c
    sbc c
    ld h, a
    ld c, h
    ld [hl], l
    ld a, b
    add a
    ld e, c
    ld h, a
    ld l, c
    sub a
    ret


    scf
    db $eb
    ld [hl], a
    ld a, [hl+]
    or [hl]
    ld a, [hl+]
    or [hl]
    sub h

jr_007_64dd:
    xor h
    ld d, h
    db $ec
    call c, $2815
    or a
    db $db
    inc hl
    ret nc

    rrca
    cp h
    ld c, $fe
    nop
    inc bc
    nop
    nop
    nop
    ld a, b
    ld [$6858], sp
    jr nz, jr_007_6546

    or b
    ret nc

    ldh [rP1], a
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    add hl, hl
    add hl, hl
    jr z, jr_007_6535

    ld de, $0118
    db $10
    stop
    add hl, hl
    nop
    ld b, [hl]
    db $10
    sub c
    add hl, hl
    or l
    rrca
    cp h
    rlca
    ld a, [hl-]
    ld b, l
    ld a, a
    nop
    inc bc
    ld [bc], a
    ld bc, $4202
    ld b, c
    ld d, [hl]
    ld d, l
    inc hl
    dec [hl]
    ld b, $21
    rrca
    ld a, [bc]
    dec b
    ld [$4039], sp
    db $10
    and [hl]
    adc [hl]

jr_007_6535:
    rst RST_08
    ld a, e
    dec de
    jr nc, jr_007_64bf

    ld e, a
    ld b, [hl]
    or [hl]
    or [hl]
    ld a, a
    rst RST_08
    sub b
    db $10
    ld b, e
    inc bc
    and h
    add a

jr_007_6546:
    ret c

    rst RST_08
    ret nc

    rst RST_08
    ld d, b
    rst RST_08
    jr z, jr_007_6535

    ld [$fce7], sp
    db $fc
    ld b, $fe
    ld [bc], a
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    xor b
    ld h, a
    adc b
    ld d, a
    inc h
    dec sp
    ld h, h
    sbc e
    db $e4
    dec sp
    add $79
    ld a, [hl+]
    ld [hl], l
    adc $35
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR14]
    db $f4
    db $10
    ldh a, [rNR10]
    ldh a, [$ff08]
    ld b, $1a
    ld d, $4c
    ld d, a
    ld [de], a
    ld c, $14
    inc c
    sbc d
    adc [hl]
    inc d
    inc c
    jr jr_007_6598

    or $40
    sbc a
    ld b, b
    ld h, c
    ld bc, $26b9

jr_007_6598:
    rst RST_08
    add hl, bc
    ld [hl], b
    sub b
    ld a, $4f
    ld c, d
    ld c, e
    dec d
    dec c
    inc c
    inc d
    ld [$2404], sp
    ld [hl+], a
    ld h, e
    ld [hl], c
    ld bc, $0820
    ld [$0000], sp
    ld sp, $5535
    rrca
    ld [hl], $40

jr_007_65b6:
    cp a
    add b
    sub $c0
    add hl, hl
    jp hl


jr_007_65bc:
    and $1f
    rra
    nop
    db $dd
    ld a, [hl+]
    reti


    ld l, [hl]
    pop af
    sbc [hl]
    or d
    ld l, a
    ld a, d
    ld c, l
    ld l, c
    sbc a
    push de
    ld a, $e4
    ei
    jr nz, @-$1e

    jr z, jr_007_65bc

    jr nz, jr_007_65b6

    and h
    ld h, h
    ret z

    ld c, b
    ret nz

    ld c, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add hl, bc
    rst RST_38
    cp c
    ld d, $f1
    ld e, $d2
    inc e
    and l
    add hl, sp
    ld c, c
    ld [hl], c
    ld [hl], b
    add b
    adc b
    ld [$0080], sp
    inc d
    sub h
    inc d
    inc d
    ld [$000c], sp
    ld [$4040], sp
    add h
    call nz, $8000
    jr nz, jr_007_6622

    ld [$000c], sp
    inc b
    nop
    dec b
    nop
    rlca
    add b
    add d
    nop
    adc d
    nop
    adc e
    nop
    nop
    db $10
    db $10
    ld bc, $0009
    ld [$5008], sp
    jr nz, @+$52

    ld b, b
    db $10
    ld b, d
    inc de
    ld [bc], a
    adc e

jr_007_6622:
    ld a, [de]
    db $d3
    ret nc

    xor e
    ld a, [hl+]
    ld e, c
    inc bc
    ld sp, $ae34
    ld d, $8e
    add hl, bc
    add a
    ld c, b
    adc [hl]
    sub [hl]
    ld e, b
    adc d
    inc d
    ld d, b
    ldh [c], a
    and b
    jp z, $8048

    ld e, h
    add c
    sbc l
    ld b, b
    ld bc, $05ef
    ld a, a
    ld [hl-], a
    ld l, [hl]
    ld c, h
    nop
    ld d, c
    dec d
    nop
    ld b, h
    ld b, d
    ld b, [hl]
    nop
    ld [bc], a
    sbc l
    ld b, d
    ld e, a
    sub c
    ld a, h
    and b
    or l
    ld b, c
    sub a
    ld [hl], a
    ld l, e
    xor e
    ld a, [hl]
    cp [hl]
    ccf
    ld e, a
    inc b
    ld a, [bc]
    dec bc
    dec sp
    ld [hl], $f9

Call_007_6666:
    ld [$3c16], sp
    ld a, $01
    ld bc, $0101
    ld b, b
    ld h, b
    cp [hl]
    sbc $ff
    adc a
    xor [hl]
    ldh a, [c]
    ld e, d
    cp h
    add b
    ld a, h
    nop
    ret nz

    adc b
    adc h
    nop
    nop
    jr nz, @+$22

    inc b
    rlca
    sub c
    sbc a
    inc b
    inc e
    ld [$2838], sp
    jr @+$72

    ld c, l
    add hl, de
    ld a, l
    nop
    nop
    ld [de], a
    ldh a, [c]
    db $e4
    db $fc
    ld bc, $2c05
    ld h, d
    ld l, [hl]
    add c
    push hl
    inc b
    call $a027
    ldh [$ff0d], a

jr_007_66a3:
    ld a, [hl]
    ld l, a
    ldh a, [$ff9f]
    sub l
    ld b, b
    xor d
    and b
    push de
    ld a, a
    ld l, d
    ld a, [bc]
    dec d
    rrca
    ld [bc], a
    add c
    nop
    db $ed
    jr nz, jr_007_66a3

    inc bc
    ld l, l
    rst RST_38
    ld [bc], a
    ld d, d
    ld d, l
    sub l
    adc b
    ld c, b
    nop
    nop
    jr nz, jr_007_66f4

    nop
    nop
    add hl, bc
    dec bc
    jr jr_007_66e9

    nop
    nop
    add b
    add b
    inc c
    inc c
    nop
    nop
    ld b, c
    ld b, c
    ld [$000c], sp
    nop
    jr nc, jr_007_670a

    inc b
    ld b, $80
    ret nz

    ld [$0008], sp
    nop
    db $10
    db $10
    ld b, d
    ld h, e
    nop
    nop
    ld c, b

jr_007_66e9:
    ld e, b
    ret nz

    ld hl, sp+$06
    ld b, $00
    nop
    nop
    nop
    nop
    nop

jr_007_66f4:
    inc h
    inc l
    ld h, b
    ld a, h
    ld bc, $0001
    nop
    jr nz, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add b
    and b
    ld c, b
    ld c, b

jr_007_670a:
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
    db $10
    stop
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    rlca
    add c
    add a
    jr nz, jr_007_6742

    ld hl, $0021
    ld bc, $0100
    add d
    add e
    sub c
    sub e
    ld [$241a], sp
    ld a, $09
    adc a
    ld b, h
    jp z, $8dc3

    and d
    call c, $dba1
    ld e, e
    ei
    ld b, d
    di
    ldh a, [c]
    ei
    ld b, b
    ld h, b

jr_007_6742:
    jr nc, jr_007_6794

    pop bc
    pop af
    ld d, b
    ldh [rNR41], a
    cp b
    xor b
    or b
    ld [$1535], sp
    jr c, jr_007_6751

jr_007_6751:
    nop
    ret nz

    ret nz

    nop
    nop
    db $10
    db $10
    ld b, b
    ld d, b
    add h
    call nc, Call_000_2828
    nop
    nop
    sub a
    cp b
    add a
    sbc b
    and e
    cp h
    rla
    jr z, jr_007_67a0

    jr z, jr_007_67a1

    add hl, hl
    cp d
    and l
    xor a
    or h
    nop
    nop
    add b
    add b
    inc c
    adc h
    nop
    add b
    add b
    nop
    ld hl, sp+$78
    cp [hl]
    ld a, [hl]
    xor $3e
    add hl, de
    scf
    ld c, e
    ld h, a
    xor d
    cp $d0
    call c, Call_007_7e76

jr_007_678a:
    and h
    cp h
    inc e
    inc a
    jr z, jr_007_6808

    ld d, d
    ld e, e
    ld b, e
    ld c, [hl]

jr_007_6794:
    ld c, d
    ld c, a
    xor e
    xor e
    add c
    xor c
    ld d, c
    ld a, l
    add hl, hl
    ld a, a
    jr z, jr_007_678a

jr_007_67a0:
    ld l, b

jr_007_67a1:
    ld l, c
    sub h
    or l
    ld d, b
    ld d, c
    nop
    inc bc
    sub d
    sub e
    add [hl]
    add [hl]
    ld [$0008], sp
    nop
    ld b, h
    add $92
    jp nc, $fb63

    ld d, d
    sbc $8b
    adc a
    and e
    xor a
    ld d, c
    ld d, a
    add c
    add c
    jp hl


    ldh a, [c]
    ld b, l
    cp $52
    rst RST_38

jr_007_67c6:
    ld e, d
    rst RST_10
    ld b, l
    sra e
    db $ed
    xor h
    rst RST_28
    db $dd
    cp [hl]
    ld e, a
    xor a
    or a
    ld c, a
    cp a
    ld b, a
    reti


    and a
    ld e, e
    and a
    ld [$a097], a
    sbc $8f
    rst RST_38
    or l
    sub $a7
    sub $56
    rst RST_30
    ld e, l
    rst RST_38
    ld l, l
    db $fd
    jr jr_007_67c6

    and h
    xor h
    jr jr_007_6808

    db $f4
    db $dd
    sbc $fe
    ldh a, [$ff72]
    ld b, e
    db $eb
    add d
    sub d
    db $10
    ld d, b
    add h
    call nc, $2020
    rlca
    rlca
    ld b, $06
    inc c
    inc c
    inc c
    inc c

jr_007_6808:
    inc a
    inc a
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ldh [$ffe0], a
    ldh [$ffe0], a
    ret nz

    ret nz

    add b
    add b
    ldh a, [$fff0]
    sbc b
    sbc b
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    rlca
    ld b, $06
    inc c
    inc c
    inc e
    inc e
    ld d, $16
    ld hl, $4121
    ld b, c
    add b
    add b
    ld a, b
    nop
    call nz, $cc00
    nop
    call nc, $e400
    nop
    call nz, Call_007_7800
    nop
    nop
    nop
    ld l, d
    rst RST_38
    add l
    db $fd
    dec h
    db $ed
    jp z, $11ef

    ccf
    ld h, d
    ld a, e
    rst RST_10
    rst RST_38
    add hl, hl
    rst RST_28
    and h
    rst RST_20
    ld a, [de]
    rst RST_38
    ld hl, $7abf
    db $eb
    ld a, [bc]
    ld a, e
    rla
    db $dd
    set 7, a
    ld d, h
    ld a, a
    ld d, $ff
    ld c, c
    ld a, c
    ld l, c
    ld a, c
    add $ff
    ld c, c
    xor [hl]
    ld h, e
    rst RST_38
    sub h
    sbc h
    or e
    cp a
    xor c
    db $ed
    ld l, e
    xor a
    ld d, h
    ld a, [$bbaa]
    and e

jr_007_6879:
    or d
    ld l, h
    rst RST_18
    sbc b
    rst RST_38
    dec h
    and $59
    dec h
    ld e, c
    dec h
    ld l, l
    add hl, de
    ld h, $53
    ld h, c
    ld b, a
    inc b
    ld h, $23
    ld hl, $0102
    dec a
    jp nz, $8877

    ld a, [hl]
    adc c
    di

jr_007_6897:
    dec b
    ld [hl], b
    add d
    ld h, d
    sub d
    ldh a, [$ff90]
    ld h, b
    add b
    nop
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ldh [$ff80], a
    ld h, b
    add b
    ret nz

    jr nz, jr_007_6897

    jr nz, jr_007_6879

    nop
    add b
    ld b, b
    add b
    nop
    nop
    add b
    ld d, l
    xor l
    ld c, l
    ld a, [hl]
    db $e4
    ei
    inc sp
    rst RST_08
    or l
    ld a, a
    ld l, e
    di
    and [hl]
    rst RST_38
    jp hl


    or $9b
    db $e4
    ld l, h
    sub e
    db $db
    rst RST_20
    ld h, a
    ld a, a
    ld l, h
    rst RST_30
    or e
    adc $2a
    or l
    sub e
    rst RST_28
    ld c, e
    db $f4
    sbc l
    ld l, [hl]
    ld d, [hl]
    or a
    ld [$b53f], a
    ccf
    xor d
    ld [hl], l
    call $bbb3
    ld b, a
    add hl, hl
    db $db
    jp c, $dc3f

    dec sp
    inc sp
    call c, Call_007_7f87
    ld a, d
    rst RST_08
    ld d, [hl]
    ld a, l
    ld d, b
    rst RST_28
    nop
    nop
    nop
    nop
    ld [$1000], sp
    ld [$2818], sp
    jr nc, jr_007_690c

jr_007_690c:
    jr c, jr_007_6956

    ld d, b
    jr z, jr_007_6971

    jr nz, jr_007_6973

    ld d, b
    jr nc, jr_007_691e

    inc a
    inc h
    inc d
    ld [$0a1c], sp
    ld d, $00

jr_007_691e:
    ld e, $38
    ld a, b
    jr nz, @+$1e

    ld h, b
    ld l, $11
    jr jr_007_6934

    inc sp
    jr jr_007_6969

    add hl, bc
    ld h, b
    and b
    ld [$260f], sp
    ld [$125c], sp

jr_007_6934:
    xor h
    jr nc, jr_007_698f

    db $e4
    ld a, b
    nop
    jr nc, @+$4a

    ld b, b
    di
    ld de, $001c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $2e
    ld sp, $c0bf
    dec b
    ld b, $17
    jr jr_007_6957

    inc bc

jr_007_6956:
    rla

jr_007_6957:
    jr @-$45

    rst RST_00
    ret nc

    jr nc, jr_007_69c5

    rst RST_38
    rst RST_30
    ld [$302f], sp
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_007_6969:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_38

jr_007_6971:
    nop
    rst RST_38

jr_007_6973:
    nop
    cpl
    jr nc, jr_007_6979

    inc bc
    rla

jr_007_6979:
    jr jr_007_69d7

    ld h, e
    rla
    jr jr_007_6981

    inc bc
    rst RST_38

jr_007_6981:
    nop
    adc b
    ld [$00bd], sp
    cp c
    dec d
    sbc h
    ld a, [hl+]
    ld d, h
    ld c, $5c
    add d
    ld b, d

jr_007_698f:
    add h
    ld hl, sp+$00
    inc b
    ld [bc], a
    ldh a, [c]
    ld bc, $18e3
    di
    ld [$48fb], sp
    sub d
    ld h, h
    ld [bc], a
    nop
    ret nc

    add hl, bc
    sbc $00
    ld e, [hl]
    ld b, $99
    inc h
    cp l
    nop
    adc b
    ld [$00ff], sp
    ld a, a
    nop
    rst RST_30
    inc b
    db $e3
    inc [hl]
    add $71
    rst RST_20
    ld de, $01f6
    ld h, $21
    rst RST_38
    nop
    ld e, [hl]
    and b
    and b
    ld h, b
    add sp, $18
    ld b, b

jr_007_69c5:
    ret nz

    add sp, $18
    sbc l
    db $e3
    dec bc
    inc c
    ld d, $ff
    rst RST_28
    stop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_69d7:
    nop
    nop
    nop
    and b
    ld h, b
    ld [hl], h
    adc h
    db $fd
    inc bc
    rst RST_38
    nop
    rst RST_38
    nop
    db $f4
    inc c
    ld b, b
    ret nz

    add sp, $18
    ld a, [hl-]
    add $e8
    jr jr_007_6a2f

    ret nz

    db $f4
    inc c
    ld b, b
    ret nz

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
    cp e
    call nc, $9d6f
    ei
    ld e, l
    cp [hl]
    db $e3
    sbc h
    ei
    ld l, a
    db $fc
    ld a, c
    cp $ad
    ld a, [hl]
    rst RST_38
    rlca
    ld sp, hl
    rst RST_28
    ld c, [hl]
    push af
    rst RST_38
    ldh [$ff7f], a
    sbc [hl]
    rst RST_28
    ld a, l
    rst RST_18
    push af
    cp $e1
    adc a
    ld [hl], b
    rst RST_18
    xor [hl]
    ld a, c
    adc a
    ld a, d
    rst RST_28
    scf
    rst RST_18
    push af
    ld e, a
    rst RST_38
    sub c
    pop af

jr_007_6a2f:
    adc $bf
    sbc $35
    rst RST_08
    cp $37
    sub $fb
    scf
    ld a, [$f7fc]
    ld c, c
    or $1e
    pop hl
    inc sp
    inc sp
    jp z, Jump_007_40ca

    ld b, b
    jr z, @+$2a

    ld b, h
    ld b, h
    sub b
    sub b
    nop
    nop
    add e
    add b
    ld d, l
    ld d, l
    jr z, jr_007_6a7c

    inc bc
    nop
    rra
    nop
    ld a, l
    ld e, $e3
    ld a, l
    db $db
    ld [hl], l
    cp [hl]
    pop hl
    rst RST_00
    ret nz

    rrca
    ld b, $19
    rrca
    db $10
    rrca
    scf
    rra
    ld [hl], e
    ccf
    rst RST_08
    ld [hl], c
    rst RST_38
    ld c, $bf
    sbc $b3
    rst RST_08
    ld hl, sp+$37
    push de
    ei
    ld b, $fb
    xor h
    rst RST_30

jr_007_6a7c:
    ld e, e
    or $bf
    pop hl
    di
    di
    adc $ce
    ld c, b
    ld c, b
    ld h, b
    ld l, b
    ld a, l
    ld a, l
    xor c
    xor c
    nop
    nop
    add c
    add c
    ld e, l
    ld e, l
    jr z, jr_007_6abc

    ld [$0008], sp
    ld [$9c9c], sp
    ld d, e
    ld d, e
    ld hl, $0121
    ld bc, $dddc
    jr z, jr_007_6acc

    ld [$0808], sp

Call_007_6aa7:
    ld [$bbb3], sp
    sbc d
    sbc d
    add b
    add b
    add b
    add b
    sbc l
    sbc l
    ld l, b
    ld l, b
    nop
    nop
    ld c, b
    ld c, b
    ld c, [hl]
    adc $91
    sub c

jr_007_6abc:
    and c
    and c
    add b
    add b
    cp e
    call nc, $9d6f
    ld a, e
    db $dd
    cp [hl]
    and e
    xor [hl]
    cp e
    ld c, a
    db $fc

jr_007_6acc:
    add hl, de
    cp $a5
    ld h, [hl]
    cp $07
    ld sp, hl
    jp hl


    ld e, e
    db $eb
    rst RST_30
    xor $79
    sbc [hl]
    rst RST_28
    ld a, l
    sub a
    sbc l
    or a
    cp c
    xor l
    ld l, [hl]
    db $db
    cp h
    ld h, l
    sbc e
    ld a, d
    rst RST_20
    dec [hl]
    rst RST_18
    push af
    ld e, a
    cp $91
    rst RST_38
    adc $6f
    or $95
    rst RST_28
    cp $37
    sub $fb
    daa
    ld a, [hl-]
    ld l, h
    ld [hl], a
    db $db
    or $3b
    push hl
    or e
    or e
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    ld [$5d55], sp
    ld hl, $8021
    add b
    add b
    add c
    ld e, l
    ld e, l
    jr z, jr_007_6b3c

    nop
    nop
    nop
    ld [$9a9a], sp
    ld d, e
    ld d, e
    jr nz, jr_007_6b3e

    ld bc, $5201
    ld d, d
    jr z, jr_007_6b4c

    ld [$0008], sp
    nop
    jr nz, jr_007_6b4a

    db $10
    stop
    nop
    nop
    nop
    sbc e
    sbc e
    ld c, b
    ld c, b
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop

jr_007_6b3c:
    nop
    nop

jr_007_6b3e:
    nop
    nop
    push bc
    push bc
    rst RST_28
    rst RST_28
    db $fc
    db $fc
    pop hl
    pop hl
    set 1, a

jr_007_6b4a:
    db $d3
    rst RST_18

jr_007_6b4c:
    call nz, $cfdf
    rst RST_18
    rst RST_20
    rst RST_20
    rst RST_38
    rst RST_38
    ld bc, $bd01
    cp l
    cp l
    cp l
    ld [hl], c
    ld a, l
    ld h, c
    ld a, l
    ld b, c
    ld a, l
    rst RST_00
    rst RST_00
    ret c

    ret c

    adc [hl]
    sbc [hl]
    and [hl]
    cp [hl]
    add h
    cp h
    adc l
    cp l
    add c
    add c
    cp $fe
    ld b, c
    ld [hl], c
    dec b
    dec b
    db $fd
    db $fd
    pop af
    db $fd
    pop hl
    db $fd
    pop hl
    db $fd
    add c
    add c
    ccf
    ccf
    db $f4
    db $f4
    set 1, e
    ld d, a
    ld d, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    xor a
    xor a
    xor l
    xor l
    ld d, $16
    ccf
    ccf
    ret c

    ret c

    add sp, -$18
    db $f4
    db $f4
    or $f6
    or [hl]
    or [hl]
    ld d, h
    ld d, h
    ld l, l
    ld l, l
    sbc d
    sbc d
    ld l, $2e
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, h
    ld b, h
    add b
    add b
    inc b
    inc b
    inc b
    inc b
    ld e, c
    ld e, c
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    cp b
    cp b
    inc l
    inc l
    ld sp, $0831
    ld [$2020], sp
    nop
    nop
    ld b, b
    and b
    ldh a, [rLCDC]
    xor b
    ld [hl], b
    sub h
    ld a, d
    add $7d
    db $db
    ld a, [hl]
    and l
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6bd6:
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
    rst RST_18
    jr nc, jr_007_6c42

    xor [hl]
    ld sp, hl
    rrca
    ld a, [$b66f]
    ld e, a
    or l
    ld e, a
    rst RST_38
    sub c
    pop af
    adc $c0
    nop
    ldh a, [$ff80]
    jr jr_007_6bd6

    inc h
    ld hl, sp-$2c
    ld a, [$f42e]
    dec de
    or $bf
    ldh [$ff8c], a
    ld l, h
    xor c
    ld l, c
    xor c
    ld l, c
    cp c
    ld a, c
    and e
    ld [hl], e
    and d
    ld [hl], d
    sub d
    ld [hl], d
    sub h
    ld [hl], h
    xor e
    cp h
    xor a
    cp b
    xor l
    cp d
    dec c
    ld a, [hl-]
    ld e, e
    ld [hl], h
    or d
    db $fd
    ld c, d
    db $dd
    ld a, [hl+]
    cp l
    ld b, h
    and h
    call nz, Call_007_54a4
    inc [hl]
    ld d, d
    ld [hl-], a
    ld b, d
    ld [hl-], a
    ld c, c
    add hl, sp
    pop de
    cp c
    ld c, l
    xor l
    ld l, e
    db $fc
    dec h
    cp $b9
    or $95
    ld a, [$7a5d]
    ld c, e
    ld a, h
    ld c, e
    ld a, h
    xor e
    cp h
    adc h
    ld l, h

jr_007_6c42:
    and d
    ld h, d
    cp c
    ld c, c

jr_007_6c46:
    cp c
    ld b, l
    sbc a
    ld b, c
    xor [hl]
    ld h, b
    adc h
    ld c, h
    sub b
    ld h, b
    add e
    cp h
    cp a
    db $fc
    db $ed
    ldh a, [c]
    cp l
    add d
    rst RST_38
    add h
    ld a, [$0a8d]
    db $fd
    ld a, $b5
    ld e, [hl]
    and [hl]
    db $db
    and b
    ld e, e
    inc h
    ld e, a
    jr z, jr_007_6cb0

    ld [hl+], a
    ld b, l
    jr nc, jr_007_6c46

jr_007_6c6d:
    cp b
    ld b, h
    and h
    ld a, e
    db $e4
    db $dd
    ld b, $d9
    ld h, $fd
    ld d, $ed
    ld c, d
    and e
    inc c
    adc e
    inc e
    dec bc
    inc a
    ld a, [hl]
    nop
    and e
    ld h, d
    ret c

    ld b, b
    or b
    ld [bc], a
    or $55
    xor l
    ld c, b
    or h
    ld e, b
    ld a, d
    inc c
    ccf
    nop
    ret nc

    jr nc, jr_007_6cdb

    ld b, [hl]
    ldh [rIE], a
    ccf
    ret nz

    ret nc

    jr nc, jr_007_6c9d

jr_007_6c9d:
    nop
    nop
    nop
    ld c, $00
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

jr_007_6cb0:
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
    db $f4
    inc c
    ld c, [hl]
    ld [hl], c
    inc de
    ld a, [de]
    ld c, c
    call Call_000_3dd9
    or e
    rr b
    rrca
    rla
    inc b
    ld e, a
    ld h, b
    db $ec
    inc e
    ld d, b
    ld [hl], b
    inc l
    cp h
    inc hl
    cp a
    ld b, b

jr_007_6cdb:
    rst RST_38
    ld a, [hl]
    add c
    and l
    ld h, [hl]
    ld [hl-], a
    inc b
    ld b, h
    jr z, jr_007_6c6d

    db $10
    ld [hl], b
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
    cp h
    cp h
    ld hl, sp-$08
    jr c, jr_007_6d3e

    ld a, b
    ld a, b
    xor d
    xor d
    xor c
    xor c
    dec l
    dec l
    add l
    add l
    ld a, $3e
    ld a, a
    ld a, a
    dec a
    dec a
    ld l, e
    ld l, e
    jr c, jr_007_6d52

    ld l, h
    ld l, h
    ld l, d
    ld l, d
    ret z

    ret z

    and c
    and c
    jr nz, jr_007_6d44

    nop
    nop
    inc b
    inc b
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    ld d, d
    ld d, d
    db $10
    stop
    nop
    add b
    add b
    and b
    and b
    nop
    nop
    nop
    nop

jr_007_6d3e:
    nop
    nop
    db $fc
    nop
    dec bc
    inc c

jr_007_6d44:
    ld h, d
    ld h, d
    rlca
    rst RST_38
    db $fc
    inc bc
    dec bc
    inc c
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop

jr_007_6d52:
    push bc
    ld b, [hl]
    dec de
    ld [bc], a
    dec c
    ld b, b
    ld l, a
    xor d
    or l
    ld [de], a
    dec l
    ld a, [de]
    ld e, [hl]
    jr nc, jr_007_6d61

jr_007_6d61:
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
    ld [hl], b
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
    rrca
    rrca
    inc b
    inc b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $c0c0
    and c
    and c
    nop
    nop
    nop
    nop
    add [hl]
    add [hl]
    ld c, c
    ld c, c
    halt
    halt
    ld c, b
    ld c, b
    or b
    or b
    and b
    and b
    sbc c
    sbc c
    ld h, l
    ld h, l
    ld [hl-], a
    ld [hl-], a
    ld c, b
    ld c, b
    xor b
    xor b
    sbc c
    sbc c
    ret nz

    ret nz

    ld l, d
    ld l, d
    jr nz, jr_007_6dd2

    ld h, d
    ld h, d
    and l
    and l
    ld h, l
    ld h, l
    jp z, Jump_007_56ca

    ld d, [hl]
    pop hl
    pop hl
    adc [hl]
    adc [hl]
    jr c, @+$3a

    jr jr_007_6ddc

    ld a, [bc]
    ld a, [bc]
    ld [$0c08], sp
    inc c
    inc b
    inc b
    inc h
    inc h
    ld e, h
    ld e, h
    jr nc, jr_007_6e02

jr_007_6dd2:
    and b
    and b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nc, jr_007_6e0a

    or [hl]
    or [hl]

jr_007_6ddc:
    sbc h
    sbc h
    ld e, [hl]
    ld e, [hl]
    ld hl, sp-$08
    ld a, [$4bfa]
    ld c, e
    add c
    add c
    and b
    and b
    cp d
    cp d
    sbc c
    sbc c
    reti


    reti


    rla
    rla
    ld e, [hl]
    ld e, [hl]
    db $d3
    db $d3
    inc bc
    inc bc
    ld bc, $c901
    ret


    sbc c
    sbc c
    dec sp
    dec sp
    cp h
    cp h

jr_007_6e02:
    ld hl, sp-$08
    jr c, jr_007_6e3e

    ld l, b
    ld l, b
    ld l, b
    ld l, b

jr_007_6e0a:
    add sp, -$18
    or b
    or b
    ld d, l
    ld d, l
    ld e, $1e
    ccf
    ccf
    ld a, l
    ld a, l
    ccf
    ccf
    ld l, e
    ld l, e
    or [hl]
    or [hl]
    halt
    halt
    dec h
    dec h
    ld e, l
    ld e, l
    sub $d6
    ld d, d
    ld d, d
    ld c, d
    ld c, d
    adc d
    adc d
    ld h, h
    ld h, h
    jr nz, jr_007_6e4e

    db $10
    db $10
    ld b, c
    ld b, c
    ld d, l
    ld d, l
    push de
    push de
    ld d, l
    ld d, l
    and d
    and d
    xor b
    xor b
    jr nz, jr_007_6e5e

jr_007_6e3e:
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4201
    ld b, d

jr_007_6e4e:
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1008], sp
    db $10
    ld [hl+], a
    ld [hl+], a

jr_007_6e5e:
    ld l, h
    ld l, h
    inc d
    inc d
    dec e
    dec e
    call Call_007_6fcd
    ld l, a
    ccf
    ccf
    cp e
    cp e
    ld e, l
    ld e, l
    ld a, l
    ld a, l
    reti


    reti


    jp nc, $b6d2

    or [hl]
    db $ed
    db $ed
    ld a, d
    ld a, d
    cp $fe
    or $f6
    or a
    or a
    push bc
    push bc
    rst RST_28
    rst RST_28
    db $fc
    db $fc
    ldh [$ffe1], a
    ret nz

    rst RST_18
    ret nz

    rst RST_18
    ret nz

    rst RST_18
    ret nz

    rst RST_38
    rst RST_20
    rst RST_20
    rst RST_38
    rst RST_38
    ld bc, $0101
    cp l
    ld b, c
    ld a, l
    dec b
    ld a, l
    ld bc, $01fb
    rst RST_38
    call nz, $c0ff
    ei
    adc d
    ei
    and c
    pop af
    add b
    ret nc

    add b
    ret nz

    add b
    rst RST_38
    cp $ff
    ld bc, $813f
    sbc a
    dec d
    sbc a
    ld bc, $818b
    add e
    ld bc, $0103
    rst RST_38
    ccf
    rst RST_38
    sbc a
    nop
    sbc d
    ld bc, $019e
    sbc b
    rlca
    sbc b
    rlca
    sbc d
    ld bc, $019e
    reti


    ld b, a
    ld sp, hl
    nop
    sbc c
    ret nz

    dec a
    call nz, $f40d
    add hl, bc
    ldh a, [rNR24]
    ret nz

    cp e
    jp nz, $f009

    sbc b
    rlca
    sbc d
    ld bc, $21be
    cp b
    daa
    sbc b
    rlca
    sbc d
    ld bc, $41de
    sbc a
    rrca
    add hl, bc
    ldh a, [rNR33]
    call nz, $c039
    adc c
    ldh a, [$ff0b]
    ldh a, [c]
    add hl, de
    ret nz

    dec a
    call nz, $f0f9
    cp e
    call nc, $9d6f
    ld a, e
    db $dd
    cp [hl]
    and e
    xor [hl]
    cp e
    ld c, a
    db $fc
    add hl, de
    cp $a5
    ld h, [hl]
    cp $07
    ld sp, hl
    jp hl


    ld e, e
    db $eb
    rst RST_30
    xor $79
    sbc [hl]
    rst RST_28
    ld a, l
    sub a
    sbc l
    or a
    cp c
    xor l
    ld l, [hl]
    db $db
    cp h
    ld h, a
    sbc b
    ld a, a
    pop hl
    ccf
    db $db
    ld a, c
    sub l
    ld [$3d73], a
    dec [hl]
    ld l, a
    or $e5
    rra
    halt
    adc a
    ld [hl], d
    adc a
    ld a, e
    add [hl]
    ld a, h
    add a

Call_007_6f3c:
    ld a, [$7c07]
    add h
    or d
    or d
    ld b, $06
    ld c, c
    ld c, c
    ld l, d
    ld l, e
    dec h
    daa
    ld h, d
    ld h, d
    sub [hl]
    sub [hl]
    and c
    or c
    reti


    db $db
    jr nz, jr_007_6f74

    ld l, b
    ld a, b
    sub b
    sub b
    xor b
    cp b
    dec h
    ld h, l
    reti


    reti


    dec hl
    xor e
    daa
    ld h, a
    add hl, bc
    add hl, bc
    ld l, d
    ld l, e
    sub l
    sub a
    and d
    or d
    call nc, $0cfc
    inc c
    add c
    add c
    add h
    add [hl]
    jr c, @+$3a

jr_007_6f74:
    ld c, b
    ld c, b
    ld d, b
    ld e, b
    ld a, [hl+]
    ld a, [hl-]
    rst RST_10
    rst RST_10
    xor c
    xor c
    ld [bc], a
    inc bc
    ld b, l
    and [hl]
    ret z

    scf
    push de
    scf
    ld l, d
    sbc [hl]
    sub d
    xor $3d
    ld b, e
    and $9a
    ld c, l
    cp e
    ld b, l
    sub $ea
    ld e, l
    add d
    ld l, l
    db $f4
    cp e
    ld a, d
    ld b, [hl]
    ld c, h
    or h
    sbc h
    sub h
    dec l
    or a
    sub $35
    ld e, a
    cp [hl]
    db $ed
    sbc e
    ld sp, $aa45
    db $d3
    rst RST_00
    jr z, jr_007_6fed

    and a
    sub $b7
    jp z, $8e76

    or e
    rst RST_38
    ld bc, $bc43
    cp l
    ld a, [hl]
    push bc
    ld b, [hl]

jr_007_6fbc:
    ret


    ld c, [hl]
    jp hl


    ld [hl], $56
    rst RST_28
    xor a
    ld e, a
    jp nc, Jump_007_4d35

    cp a
    dec h
    sbc $a6
    rst RST_18
    ld d, h

Call_007_6fcd:
    ld l, a
    rst RST_08
    jr nc, jr_007_6fbc

    dec a
    ld a, a
    cp l
    rst RST_10
    jr c, jr_007_703c

    sbc d
    ld a, l
    add [hl]
    ld l, a
    or l
    xor d
    ld [hl], h
    ld h, [hl]
    ld hl, sp+$2e
    or c
    db $dd
    ld h, e
    and l
    db $db
    ldh a, [c]
    dec a
    ld e, d
    db $dd
    or d
    ld c, l
    sbc e

jr_007_6fed:
    cp h
    rst RST_38
    or b
    rst RST_28
    sub c
    sub a
    ld sp, hl
    or h
    db $eb
    ret z

    rst RST_30
    ld a, l
    add d
    add [hl]
    ld a, c
    inc sp
    db $fd
    sub [hl]
    ld l, d
    rlca
    rlca
    dec bc
    inc c
    inc e
    inc de
    inc sp
    cpl
    ld l, a
    ld e, a
    call c, $debf
    cp a
    db $ec
    sbc a
    db $e4
    db $e4
    cp $1a
    dec de
    push hl
    ld l, [hl]
    ldh a, [c]
    cp [hl]
    add $f7
    ld sp, hl
    ld e, [hl]
    and $f6
    ld a, [$bfd0]
    rst RST_18
    cp a
    xor [hl]
    rst RST_18
    ld h, a
    ld e, a
    jr c, jr_007_7051

    rla
    jr jr_007_703c

    rrca
    nop
    nop
    cp e
    push bc
    rst RST_10
    jp hl


    ld a, [hl]
    sbc [hl]
    xor [hl]
    jp nc, $ead6

    adc [hl]
    halt

jr_007_703c:
    ld a, a
    adc c
    or $f6
    cp a
    ld a, a
    ld b, b
    ret nz

    add d
    add d
    adc b
    adc b
    adc e
    adc e
    sbc e
    sbc e
    dec de
    sbc e
    inc e
    sbc h
    db $fd

jr_007_7051:
    cp $03
    ld [bc], a
    ld h, [hl]
    ld h, a
    and $ef
    and [hl]
    rst RST_28
    xor [hl]
    rst RST_28
    xor $ef
    ld a, [hl-]
    ccf
    sbc b
    sbc b
    or b
    or b
    or b
    or b
    or a
    or a
    or a
    or a
    cp a
    cp a
    ld a, e
    rst RST_38
    add b
    ld a, a
    dec a
    ld a, $dc
    rst RST_38
    db $ec
    rst RST_38
    call $c5fe
    cp $fc
    rst RST_28
    inc [hl]
    rst RST_28
    add hl, sp
    rst RST_00
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
    cp $01
    rst RST_38
    nop
    cp $01
    db $fd
    inc bc
    or $0a
    call nz, $f23e
    ld [de], a
    add b
    ld [hl], b
    ld c, c
    ret


    ld bc, $fb81
    rlca
    xor $10
    db $eb
    dec de
    xor b
    ld l, b
    ret nc

    jr nc, @-$1c

    ld [hl+], a
    add hl, de
    sbc e
    push de
    rst RST_38
    ld bc, $0581
    dec b
    ld d, $16
    inc hl
    inc sp
    adc c
    sbc e
    ld bc, $10bb
    cp e
    ld d, h
    rst RST_38
    ld a, a
    add b
    cp a
    ret nz

    ld l, a
    ld d, b
    inc hl
    ld a, h
    ld c, a
    ld c, b
    ld bc, $920e
    sub e
    add b
    add c
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
    ld a, a
    add b
    rst RST_38
    nop
    add b
    add c
    and b
    and b
    ld l, b
    ld l, b
    call nz, $91cc
    reti


    add b
    db $dd
    ld [$2add], sp
    rst RST_38
    rst RST_18
    ldh [rPCM34], a
    ld [$d8d7], sp
    dec d
    ld d, $0b
    inc c
    ld b, a
    ld b, h
    sbc b
    reti


    xor e
    rst RST_38
    ld [hl+], a
    add e
    or e
    inc de
    di
    ld d, e
    and c
    ld d, c
    pop af
    ld bc, $09f9
    pop af
    add hl, bc
    ld hl, sp+$00
    jp c, $da31

    ld sp, $33ea
    db $ec
    dec [hl]
    cp l
    ld h, h
    cp c
    ld h, h
    db $db
    ld h, [hl]
    db $fd
    ld b, d
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    rst RST_38
    ld bc, $01fe
    ld a, l
    jp nz, $c0bf

    cp a
    ret nz

    rst RST_38
    add b
    ld a, a
    add b
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
    cp $01
    rst RST_38
    ld bc, $02fc
    db $fc
    ld [bc], a
    cp $02
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    inc b
    rst RST_38
    nop
    rst RST_38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst RST_38
    add b
    cp a
    ret nz

    cp a
    ret nz

    ld a, l
    jp nz, Jump_000_00f8

    pop af
    add hl, bc
    pop af
    add hl, bc
    ld sp, hl
    add hl, bc
    cp c
    ld c, c
    pop af
    ld b, c
    or c
    ld bc, $8332
    db $fd
    ld b, d
    db $db
    ld h, [hl]
    reti


    ld h, h
    cp l
    ld h, h
    db $fc
    dec h
    ld a, [$da23]
    ld hl, $21da
    sub d
    ld [hl], e
    inc h
    push hl
    ld l, c
    rst RST_28
    ld b, $8f
    sub a
    sbc a
    inc c
    ld e, h
    ld c, b
    ret c

    ld [$cc88], sp
    xor e
    ld [hl], $d1
    ld [de], a
    push af
    sub e
    db $f4
    ret


    ld [$ded3], a
    ld b, l
    ld e, a
    ld b, c
    ld e, a
    inc c
    adc h
    rlca
    sub a
    ld e, c
    reti


    dec bc
    rst RST_08
    add h
    ld l, a
    ret z

    ccf
    ld h, l
    sbc a
    ld hl, $e2fd
    db $fd
    ld [$c7fd], a
    db $fc
    adc d
    pop af
    add hl, bc
    ldh a, [c]
    ld d, l
    xor $8d
    or $36
    call Call_000_3cdc
    ld l, a
    sbc a
    ld h, h
    sbc [hl]
    ld [hl], l
    sbc l
    and [hl]
    ld e, [hl]
    and h
    ld e, a
    add hl, hl
    rst RST_18
    ld sp, hl
    rrca
    push bc
    push de
    ld e, c
    ld e, c
    ld a, [hl-]
    cp d
    ret nz

    rst RST_00
    add e
    sbc e
    add hl, de
    ld e, c
    ld h, b
    ld h, d
    ld bc, $dc1b
    inc a
    ld c, d
    cp a
    ld l, c
    sbc a
    jp hl


    rra
    or [hl]
    ld e, a
    call nz, Call_007_4b3f
    cp a
    ldh a, [c]
    rrca
    ld [hl], l
    ld [hl], l
    inc c
    inc c
    add c
    and c
    or h
    or a
    db $d3
    db $d3
    and l
    and l
    sbc d
    cp $11
    rst RST_38

jr_007_7240:
    ldh a, [c]
    inc bc
    ldh a, [c]
    db $e3
    ld [hl-], a
    inc hl
    ld l, d
    ld a, e
    and c
    cp d
    jp nc, Jump_007_4ddf

    rst RST_08
    ld c, $8e
    rst RST_18
    jr nz, jr_007_7240

    ld e, $e2
    inc de
    ret nc

    ld sp, $a362
    and [hl]
    rst RST_20
    ld c, [hl]
    rst RST_08
    cp d
    cp a
    sbc b
    sbc b
    or b
    or b
    sbc b
    cp b
    or a
    cp a
    sub a
    sbc a
    db $db
    rst RST_18
    ld l, e
    rst RST_38
    add b
    ld a, a
    dec [hl]
    ld [hl], $dc
    rst RST_38
    db $ec
    rst RST_38
    call $c5fe
    cp $fc
    rst RST_28
    inc [hl]
    rst RST_28
    add hl, sp
    rst RST_00
    ld a, a
    add b
    cpl
    jr nc, @+$01

    nop
    ld l, a
    ld [hl], b
    dec b
    ld b, $00
    nop
    ldh [$ffe0], a
    ld a, [hl]
    cp $ff
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    sbc a
    ldh [rNR13], a
    inc e
    ld [bc], a
    inc bc
    rst RST_38
    nop
    di
    rrca
    dec a
    cp $cf
    ldh a, [rIE]
    nop
    add hl, de
    ld e, $e2
    inc hl
    rrca
    ldh a, [$ff73]
    db $fc
    sbc a
    ldh [rIE], a
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
    nop
    ld c, d
    ld c, d
    ld h, $26
    or h
    or h
    dec hl
    dec hl
    and l
    and l
    ld [$5208], sp
    ld d, d
    ld [$aa08], sp
    xor d
    sbc b
    sbc b
    jp nz, $14c2

    inc d
    ld b, b
    ld b, b
    db $10
    db $10
    sub b
    sub b
    nop
    nop
    nop
    nop
    ld bc, $1001
    db $10
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    nop
    nop
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld sp, hl
    ld b, $ff
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    ccf
    ret nz

    ld a, a
    add b
    swap h
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    call Call_007_5932
    and [hl]
    db $fc
    inc bc
    rst RST_38
    nop
    cp $01
    rst RST_38
    nop
    cp $01
    rst RST_28
    db $10
    ld e, a
    and b
    rra
    ldh [$ff7e], a
    add c
    cp $01
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    ld a, [hl]
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    nop
    rra
    jr jr_007_73ce

    ld [hl], h
    ei
    db $e4
    db $fd
    ldh [c], a
    cp a
    ldh [$ffd7], a
    ld l, b
    cpl
    ret nc

    rlca
    ld hl, sp+$00
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

jr_007_736b:
    nop

jr_007_736c:
    nop
    nop
    nop
    nop
    ld b, d
    ld a, l
    rlca
    jr jr_007_7384

    ld e, $37
    inc a
    ccf
    inc a
    ld a, [bc]
    dec a
    ld bc, $001e
    rlca
    ret nc

    jr nc, jr_007_736b

    inc e

jr_007_7384:
    sbc $30
    cp [hl]
    ld b, b
    db $fc
    ld [bc], a
    cp $02
    call nc, Call_000_102c
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
    nop
    nop
    nop
    ldh [rNR10], a
    ldh [rNR23], a
    db $f4
    inc l
    jr c, jr_007_736c

    ld hl, sp+$04
    db $fc
    inc b
    ldh a, [$ff08]
    ret nc

    jr nc, jr_007_73b1

jr_007_73b1:
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
    nop
    db $fc
    inc bc
    db $e4
    dec de
    rst RST_00
    inc a
    rst RST_08
    add hl, sp
    sbc a
    ld [hl], l
    sbc a
    ld [hl], b

jr_007_73ce:
    rst RST_28
    dec d
    rst RST_38
    nop
    ccf
    ret nz

    daa
    ret c

    db $e3
    inc a
    di
    sbc h
    ld a, c
    ld l, $f9
    ld c, $d7
    adc b
    sbc a
    ld [hl], b
    adc e
    ld [hl], c
    rst RST_38
    db $10
    sbc d
    ld a, d
    sub e
    ld [hl], e
    add d
    ld a, l
    add d
    ld a, l
    rst RST_38
    nop
    ld sp, hl
    ld c, $f1
    xor [hl]
    rst RST_38
    ld [$5e59], sp
    jp hl


    xor $41
    cp [hl]
    ld b, c
    cp [hl]
    rst RST_38
    nop
    ret nc

    jr c, @-$76

    ld c, b
    ld d, $97
    add c
    sub c
    ld d, b
    ld [hl], b
    ld b, $a6
    jr nz, jr_007_7471

    add c
    pop bc
    ld d, a
    xor h
    ld c, l
    ld a, [hl]
    jp nc, Jump_007_61f3

    pop hl
    ld d, h
    ld [hl], a
    ld l, $3f
    sub c
    sbc c
    dec hl
    cp a
    ld c, b
    rst RST_08
    jp nz, $21c3

    and c
    nop
    and e
    inc d
    or h
    jp hl


jr_007_742b:
    ld sp, hl
    sub b
    ld e, b
    or b
    ld a, b
    ret nz

    rst RST_00
    ld h, l
    rst RST_28
    ld [hl], d
    di
    jr nc, jr_007_742b

    and l
    and $0b
    adc $04
    rst RST_08
    and l
    rst RST_28
    call c, Call_007_6f3c
    sbc a
    ld h, h
    sbc [hl]
    ld [hl], h
    sbc [hl]
    and h
    ld e, [hl]
    and l
    ld e, a
    ld hl, $f9df
    rlca
    inc d
    inc d
    jr jr_007_746c

    sbc b
    sbc b
    sub b
    sub b
    sub b
    sub b
    ldh a, [$fff0]
    db $10
    db $10
    cpl
    rst RST_38
    ret c

    jr c, jr_007_74a9

    cp [hl]
    ld h, a
    sbc a
    and $1e
    and [hl]
    ld e, [hl]
    add $3e

jr_007_746c:
    ld b, [hl]
    cp [hl]
    ldh a, [c]
    rrca
    ld [hl], b

jr_007_7471:
    ld [hl], b
    jr nz, @+$22

    and b
    and b
    and b
    and b
    xor b
    xor b
    xor b
    xor b
    adc h
    xor h
    rrca
    rst RST_38
    inc bc
    inc bc
    adc [hl]
    adc a
    ld [de], a
    inc de
    inc de
    inc de
    sub e
    sbc e
    sub d
    sbc e
    or h
    or a
    ld b, b
    rst RST_38
    dec sp
    db $fc
    daa
    ld hl, sp+$25
    ld a, [$fe21]
    dec hl
    db $f4
    ld a, [hl+]
    push af
    ld c, $f1
    cp a
    ld b, b
    inc h
    inc h
    add hl, bc
    dec c
    jr c, jr_007_74e2

    xor c
    cp l
    ld l, e

jr_007_74a9:
    ld a, a
    ld a, [hl-]
    ccf
    ld a, [hl-]
    ccf
    ldh [rIE], a
    ld [hl], l
    ld a, d
    add l
    ld a, [$dba4]
    and [hl]
    reti


    xor [hl]
    pop af
    dec l
    ldh a, [c]
    dec b
    ld a, [$40bf]
    and c
    ld l, c
    ld c, b
    ret z

    ld d, c
    pop de
    add b
    sub b
    ld d, l
    ld [hl], l
    nop
    and h
    add hl, hl
    ld l, l
    add h
    call z, $ef88
    ld b, c
    and $0a
    xor a
    add hl, hl
    xor l
    xor d
    xor a
    ld h, e
    and $51
    db $d3
    ld [hl], d
    ei
    ld d, l
    db $dd

jr_007_74e2:
    jp nc, Jump_007_46de

    adc $e4
    ld l, h
    inc [hl]
    cp h
    add sp, -$07
    sbc b
    ld e, c
    sub d
    ld l, e
    xor b
    db $fd
    jr z, jr_007_7561

    ret c

    ld sp, hl
    db $10
    inc sp
    ld h, e
    ld a, [hl]
    sub a
    sbc [hl]
    add $cd
    add l
    ld l, a
    sub e
    ld [hl], e
    ld b, b
    ret nz

    adc h
    adc h
    or e
    cp a
    db $eb
    rst RST_38
    xor d
    rst RST_38
    dec d
    rst RST_10
    ld d, h
    sub $89
    cp $76
    ld [hl], a
    inc bc
    inc bc
    dec b
    dec b
    ld l, e
    rst RST_28
    call nc, Call_000_24ff
    ld a, a
    add hl, hl
    ld a, e
    add d
    add d
    ret nz

    ret nz

    nop
    nop
    sub c
    sub c
    ld [hl-], a
    or e
    db $ec
    ld a, a
    add d
    ld a, l
    rst RST_00
    jr c, jr_007_759a

    ld a, e
    ld b, d
    ld d, d
    ld de, $0311
    inc bc
    nop
    inc bc
    or l
    or [hl]
    ld c, c
    cp $17
    add sp, $6a
    push af
    rrca
    rrca
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add l
    add l
    xor b
    xor c
    ld a, [hl+]

jr_007_754f:
    xor e
    ld [hl], h
    rst RST_38
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $9501
    sub l
    or h
    or l
    ld a, [hl+]
    dec hl
    jr nc, jr_007_759b

    ld h, d

jr_007_7561:
    db $eb
    ld d, b
    db $db
    ld de, $15db
    rst RST_18
    ld d, d
    sbc $36
    cp $27
    rst RST_38
    adc e
    ld [hl], a
    and c
    or e
    inc hl
    or a
    inc hl
    or a
    sub c
    or l
    sbc h
    cp l
    halt
    rst RST_30
    ld l, b
    rst RST_38
    ld b, c
    cp $a0
    ld h, b
    ld l, b
    sbc b
    add b
    ld b, b
    db $f4
    inc c
    adc a
    ldh a, [rOCPS]
    ld l, e
    dec sp
    call nc, $10ef
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld h, b

jr_007_759a:
    db $f4

jr_007_759b:
    inc c
    dec a
    jp $0cf4


    rst RST_38
    nop
    ld a, [$a006]
    ld h, b
    nop
    add b
    add sp, $18
    cp d
    add $e8
    jr jr_007_754f

    ld h, b
    and b
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
    nop
    nop
    rst RST_38
    nop
    rst RST_18
    jr nz, @-$20

    ld hl, $30cf
    rst RST_28
    db $10
    ldh [$ff1f], a
    db $e3
    inc e
    rst RST_28
    db $10
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
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    xor $11
    db $ec
    inc de
    db $ed
    ld [de], a
    db $fc
    inc de
    db $ec
    inc de
    cp $01
    cp $01
    cp $01
    ld a, a
    add b
    rst RST_38
    nop
    cp $01
    ccf
    ret nz

    sbc e
    ld h, h
    jp $fb3c


    inc b
    rst RST_38
    nop
    or $64
    or $64
    rst RST_00
    ld b, [hl]
    ret


    ld [hl], $a8
    ld h, b
    db $e4
    dec de
    call nc, $fc30
    inc bc
    rst RST_08
    add $5f
    ld d, [hl]
    dec de
    ld [bc], a
    inc de
    db $ec
    dec d
    ld [bc], a
    rrca
    ldh a, [$ff2b]
    inc b
    ccf
    ret nz

    rst RST_30
    rrca
    ldh [rNR23], a
    ret z

    inc a
    call nc, $c336
    inc hl
    and b
    ld [hl], b
    and b
    ld h, b
    add b
    ld h, b
    rst RST_08
    ldh a, [$ffe7]
    ld hl, sp+$67
    ld a, b
    inc sp
    inc a
    inc sp
    inc a
    inc sp

jr_007_763b:
    inc a
    add hl, de
    ld e, $99
    sbc [hl]
    or b
    ld [hl], b
    and c
    ld [hl], c
    pop de
    inc hl
    ldh a, [c]
    ld e, $d0
    jr nc, jr_007_763b

    db $10
    ldh [rNR23], a
    db $f4
    inc c
    ld c, c
    ld l, [hl]
    add hl, bc
    ld a, $03
    inc e

jr_007_7656:
    dec sp
    inc [hl]
    scf
    jr c, jr_007_76c2

    ld a, b
    ld h, a
    ld a, b
    rst RST_08
    ldh a, [$fffc]
    inc bc
    ret nc

    jr nc, jr_007_7656

    ld c, $a6
    ld h, b
    db $e4
    dec de
    sbc $52
    cp a
    ld hl, $21bf
    rra
    ldh [$ff9b], a
    inc c
    rla
    add sp, $25
    ld b, $47
    cp b
    rst RST_18
    sbc $0b
    ld [bc], a
    dec bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    push de
    push de
    xor [hl]
    xor [hl]
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld l, c
    ld a, e
    sub [hl]
    sbc $00
    nop
    and b
    and b
    ld d, l
    ld d, l
    ld a, [$bffa]
    cp a
    rst RST_38
    rst RST_38
    rst RST_20
    rst RST_28
    inc e
    cp l
    xor d
    cp e
    ld sp, hl
    rst RST_38
    sub h
    sbc h
    ld bc, $5201
    ld d, d
    ld [$a208], sp
    and d
    dec d
    dec d
    jp hl


    ei
    inc d
    dec a
    add hl, bc
    rrca
    daa
    daa
    add b
    add b
    jr z, jr_007_76e4

    ld [de], a
    ld [de], a
    ld b, l
    ld b, l
    nop
    nop

jr_007_76c2:
    nop
    nop
    nop
    nop
    add b
    add b
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    jr z, jr_007_76f6

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
    add b
    add b
    jr nc, jr_007_770c

    ld [$0208], sp
    ld [bc], a
    nop
    nop
    adc b
    adc b

jr_007_76e4:
    ld d, l
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld [bc], a
    ld [bc], a
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
    add hl, hl
    add hl, hl

jr_007_76f6:
    sub [hl]
    sub [hl]
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, h
    adc h
    adc h
    db $10
    db $10
    ld c, c
    ld c, c
    and d
    and d
    ld b, c
    ld b, c

jr_007_770c:
    inc bc
    inc bc
    dec b
    dec b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    di
    di
    ld h, h
    ld h, h
    ld c, d
    ld [$e0a0], a
    ld h, b
    ldh [$ff90], a
    sub b
    inc bc
    rlca
    inc b
    rlca
    ld c, $0f
    dec e
    rra
    ld l, $2e
    ld e, d
    ld e, d
    inc a
    inc a
    ld d, c
    ld d, c
    ld d, c
    pop de
    sub c
    sub c
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl]
    ld a, [hl]
    and [hl]
    and [hl]
    pop bc
    pop bc
    add c
    add c
    nop
    nop
    or c
    or c
    cp e
    ei
    ld e, d
    ld a, d
    and h
    cp h
    ld [hl], h
    ld a, h
    ld a, [hl-]
    ld a, [hl-]
    ld l, [hl]
    ld a, [hl]
    sub e
    rst RST_18
    db $fc
    db $fc
    ld e, [hl]
    ld e, [hl]
    ld a, [bc]
    ld a, [hl+]
    dec [hl]
    dec [hl]
    ld c, d
    ld c, d
    jr @+$1a

    add [hl]
    add [hl]
    inc c
    inc c
    ld c, a
    rst RST_08
    sbc e
    sbc a
    inc h
    scf
    inc bc
    inc hl
    add $c6
    add c
    add c
    nop
    nop
    nop
    nop
    add [hl]
    add [hl]
    ld bc, $c203
    jp nz, $c1c1

    ret nc

    ret nc

    or b
    or b
    ld b, b
    ld b, b
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
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    inc de
    inc de
    ld [de], a
    ld [de], a
    inc hl
    inc hl
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $06
    inc c
    inc c
    ld de, $2211
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add l
    add l
    add b
    add b
    add hl, hl
    add hl, hl
    ld c, c
    ld c, c
    add hl, de
    add hl, de
    inc de
    inc de
    inc [hl]
    inc [hl]
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [$9488], sp
    call nc, Call_007_6666
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
    inc bc
    inc bc
    and e
    and e
    sub c
    sub c
    ld c, h
    call z, $ebab
    ld d, c
    ld d, c
    and d
    and d
    ld d, b
    ld d, b
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$ffb0], a
    ldh a, [$ff50]
    ld d, b
    ld l, b
    ld l, b

Call_007_7800:
    nop
    nop
    inc bc
    nop
    dec e
    inc bc
    ld l, a
    rra
    rst RST_38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    add [hl]
    ld a, c
    db $e4
    ei
    dec e
    db $e3
    di
    rrca
    sbc $3f
    ld l, l
    rra
    rra
    nop
    stop
    stop
    jr jr_007_7826

jr_007_7826:
    jr jr_007_7828

jr_007_7828:
    inc d
    ld [$081c], sp
    ld a, [de]
    inc c
    ld a, [hl-]
    inc c
    ld a, l
    ld c, $55
    ld l, $b5
    ld l, [hl]
    push af
    ld l, [hl]
    jp hl


    halt
    db $eb
    ld [hl], h
    rst RST_10
    ld a, b
    reti


    ld a, [hl]
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

jr_007_7857:
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
    db $fd
    cp $c3
    db $fc
    ld sp, $43fe
    db $fc
    add hl, hl
    or $09
    cp $62
    cp l
    rst RST_38
    nop
    inc hl
    db $e3
    ld a, l
    rst RST_38
    nop
    cp a
    jr nz, jr_007_7857

    ld c, b
    rst RST_30
    ld c, h
    rst RST_30
    add h
    ld a, a
    rst RST_38
    nop
    db $10
    ldh a, [$ff2f]
    cp a
    inc sp
    cp a
    inc b
    cp a
    ld d, b
    rst RST_28
    ld de, $bffe
    ld b, b
    rst RST_38
    nop
    db $fd
    cp $f3
    cp $81
    cp $c3
    db $fc
    add hl, bc
    or $ab
    db $fc
    ld a, a
    add b
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
    ld e, l
    cp [hl]
    adc d
    ld c, a
    dec l
    or e
    ld e, [hl]
    ldh [c], a
    ld a, c
    push bc
    add sp, $79
    cp l
    ld a, [hl]
    ld h, d
    db $fd
    jp nz, $b93d

    ld a, [hl]
    ld c, h
    rst RST_08
    ld c, h
    rst RST_08
    add hl, sp
    cp $83
    ld a, h
    add hl, sp
    cp $8d
    sbc [hl]
    sub l
    sbc e
    sub l
    sbc e
    ld l, h
    di
    sbc h
    ld a, a
    and $27
    and [hl]
    ld h, a
    sbc c
    ld a, [hl]
    ld b, e
    cp h
    ld b, $3f
    inc [hl]
    call $0df4
    ld l, b
    sbc c
    or d
    di
    ld b, l
    add $33
    db $fc
    add [hl]
    ld a, c
    ld d, b
    rst RST_30
    inc b
    or a
    inc e
    xor a
    ld d, l
    xor $95
    xor $ad
    sub $ab
    sub $eb
    ld d, $1b

jr_007_7951:
    db $f4
    or [hl]
    reti


    db $f4
    rst RST_18
    ld b, d
    rst RST_28
    ld c, e
    rst RST_20
    jr jr_007_7951

    sbc a
    halt
    and l
    ld a, [hl]
    ld b, l
    adc $35
    cp [hl]
    dec d
    cp [hl]
    inc de
    cp [hl]
    ld b, [hl]
    ei
    ld b, e
    db $fd
    inc bc
    db $fd
    ld a, [$ab07]
    ld a, h
    adc $79
    halt
    reti


    ld a, e
    call nc, Call_007_56f9
    rst RST_08
    ld [hl], d
    push hl
    ld e, d
    cp a
    ld b, b
    ld c, h
    ld c, h
    rst RST_38
    cp e
    cp c
    xor $ff
    db $f4
    cp $a5
    cp a
    push hl
    rst RST_28
    call nc, $94eb
    ld hl, sp-$08
    call c, $be3c
    halt
    ld l, l
    rst RST_38
    cp a
    ld h, l
    ld a, a
    or e
    ld d, l
    xor e
    ei
    adc l
    db $e4
    db $db
    ret c

    xor a
    db $f4
    adc a
    reti


    and a
    res 6, a
    xor e
    rst RST_18
    ld [hl], a
    ld c, a
    ld d, c
    ld l, a
    rst RST_30
    ret


    ld h, l
    db $db
    sbc $f2
    xor e
    push af
    rra
    pop hl
    dec b
    ei
    xor a
    di
    jp c, $1fe6

    rra
    dec l
    ld [hl], $7e
    ld a, c
    db $fd
    db $d3
    rst RST_28
    db $f4
    cp l
    cp $d7
    cp b
    jp hl


    sub a
    sbc $de
    cp e
    ld h, a
    xor $11
    dec sp
    call nz, $f629
    sub d
    ld a, a
    pop hl
    rst RST_38
    or e
    rst RST_38
    ld [hl], a
    ld c, h
    ld e, a
    ld h, b
    sbc $bf
    rst RST_38
    ldh [$ff7c], a
    ld d, e
    ld a, a
    ld a, h
    db $db
    or [hl]
    ld a, a
    ld a, a
    rra
    rst RST_38
    adc $3f
    and d
    ld a, a
    ld e, h
    rst RST_20
    ld [hl], e
    adc h
    and [hl]
    ld e, c
    ei
    add a
    db $fc
    db $fc
    nop
    nop
    ld a, c
    ld a, c
    adc h
    adc h
    adc b
    sbc $90
    sub c
    jr nz, jr_007_7a36

    ld hl, $813b
    and l
    jr nz, jr_007_7a32

    ld [bc], a
    ld [bc], a
    ld d, b
    ld d, b
    jr nz, @+$22

    ld a, [hl+]
    ld a, [hl+]
    inc d
    sub h
    ld [hl], c
    pop af
    inc h
    inc h
    ld l, [hl]
    ld l, [hl]
    xor b
    xor b
    jr jr_007_7a3e

    sub h
    sub h
    ld b, b
    ld b, b
    ld [$1208], sp
    ld [de], a
    ld b, h
    ld b, h
    ld h, d
    ld a, d

jr_007_7a32:
    ld b, b
    ld b, h
    add b
    xor d

jr_007_7a36:
    add h
    xor $45
    ld d, l
    cp d
    cp d
    ld b, h
    ld b, h

jr_007_7a3e:
    sub b
    sub b
    ld de, $2011
    jr nz, @+$0a

    ld [$0000], sp
    ld bc, $4001
    ld b, b
    ld [$0308], sp
    inc bc
    ld b, b
    ld b, b
    inc b
    inc b
    adc b
    adc b
    nop
    nop
    ld c, b
    ld c, b
    ld sp, $6431
    ld h, h
    ld e, d
    ld e, d
    jr nc, jr_007_7a92

    ld h, [hl]
    ld h, [hl]
    inc b
    inc b
    db $d3
    db $d3
    ld h, b
    ld h, b
    adc b
    adc b
    ld [de], a
    ld [de], a
    nop
    nop
    add [hl]
    add [hl]
    jr nz, jr_007_7a94

    add b
    add b
    ld c, c
    ld c, c
    ld a, [hl-]
    ld a, [hl-]
    call z, $25cc
    dec h
    adc b
    adc b
    ld c, h
    ld c, [hl]
    cp e
    cp a
    ld l, c
    ld a, a
    ld bc, $d23f
    di
    inc e
    rst RST_38
    nop
    ld a, h
    cp e
    rst RST_38
    ld c, a
    ld c, a

jr_007_7a92:
    dec a
    dec a

jr_007_7a94:
    xor b
    add sp, $02
    jp nz, $f0d0

    nop
    rst RST_38
    ld [hl], h
    ld a, h
    pop hl
    ld sp, hl
    db $10
    ccf
    ld c, c
    ld a, c
    rst RST_08
    rst RST_38
    jr nz, jr_007_7ae7

    sub [hl]
    sbc a
    ld b, l
    ld e, a
    nop
    ld e, $d4
    call c, $f909
    cpl
    cp a
    ld [hl], l
    rst RST_38
    inc bc
    ei
    ld b, [hl]
    or $55
    ld e, l
    jr z, jr_007_7aea

    add $c6
    ld c, b
    rst RST_38
    ld a, $fc
    cp c
    rst RST_18
    adc e
    db $fd
    sbc b
    rst RST_30
    dec b
    ld a, [$c03f]
    db $dd
    ld h, d
    ld a, [bc]
    ld l, a
    xor d
    rst RST_28
    ld d, l
    sbc b
    ld b, d
    sbc a
    ld l, e
    or [hl]
    db $ed
    or d
    sbc l
    ldh a, [c]
    ld a, [hl]
    pop de
    or l
    ld a, e
    bit 3, [hl]
    ld a, $ad
    ld h, [hl]

jr_007_7ae7:
    push af
    ld a, h
    rst RST_28

jr_007_7aea:
    ld c, d
    rst RST_38
    db $fc
    ld c, e
    db $eb
    ld e, h
    cp a
    sbc $11
    cp $63
    db $fc
    jp z, $83f5

    db $fc
    ld h, e
    db $fc
    or l
    ld a, [$98f7]
    nop
    nop
    and c
    and c
    ld [bc], a
    ld [bc], a
    ld b, a
    ld b, a
    add hl, hl
    add hl, hl
    ld b, e
    ld b, e
    ld b, $06
    sbc l
    sbc l
    add b
    add b
    add hl, bc
    adc c
    add d
    jp nz, $e040

    or b
    ldh a, [rKEY1]
    db $fd
    and b
    ldh [$ff62], a
    ldh a, [c]
    ccf
    ccf
    dec bc

Jump_007_7b23:
    dec bc
    ld e, l
    ld e, l
    dec de
    dec de
    cp [hl]
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    db $ed
    db $ed
    sbc l
    sbc l
    and h
    db $fc
    rst RST_10
    rst RST_30
    xor b
    cp b
    ld e, h
    db $fc
    ld [$e4fe], a
    rst RST_28
    inc [hl]
    ld a, h
    db $f4
    or $5f
    ld e, a
    or a
    or a
    ei
    ei
    xor [hl]
    xor [hl]
    ld a, l
    ld a, l
    ld l, e
    ld l, e
    rst RST_38
    rst RST_38
    sbc e
    sbc e
    ld e, l
    ld e, l
    cp $fe
    rst RST_30
    rst RST_30
    ld a, b
    ld a, b
    rst RST_28
    rst RST_28
    cp l
    cp l
    rst RST_20
    rst RST_20
    ld a, b
    ld a, b
    ld l, [hl]
    ld l, [hl]
    ld a, l
    ld a, l
    rst RST_18
    rst RST_18
    rst RST_38
    rst RST_38
    ld c, d
    ld c, d
    rst RST_18
    rst RST_18
    ld l, $2e
    di
    di
    rst RST_38
    rst RST_38
    rst RST_30
    rst RST_30
    ld a, [hl]
    ld a, [hl]
    rst RST_18
    rst RST_18
    ei
    ei
    call c, $efdc
    rst RST_28
    ld d, l
    ld d, l
    add h
    add h
    adc a
    adc a
    pop af
    pop af
    db $10
    db $10
    cp a
    cp a
    jp $c3c3


    jp $ffff


    add h
    add h
    adc a
    adc a
    ldh a, [$fff0]
    ldh a, [$fff0]
    rst RST_38
    rst RST_38
    ld [bc], a
    ld [bc], a
    ld c, $0e
    rst RST_38
    rst RST_38
    add h
    add h
    adc h
    adc h
    db $fc
    db $fc
    inc de
    inc de
    cp a
    cp a
    jp nz, $c2c2

    jp nz, $ffff

    ld b, h
    ld b, h
    ld e, a
    ld e, a
    ld [hl], b
    ld [hl], b
    rst RST_10
    rst RST_10
    rst RST_38
    rst RST_38
    ld b, d
    ld b, d
    ld [bc], a
    ld [bc], a
    rst RST_38
    rst RST_38
    ld e, a
    ld e, a
    or a
    or a
    ei
    ei
    xor [hl]
    xor [hl]
    ld a, l
    ld a, l
    ld l, e
    ld l, e
    rst RST_38

Call_007_7bcd:
    rst RST_38
    adc e
    sbc e
    ld e, l
    ld e, l
    cp $fe
    rst RST_30
    rst RST_30
    ld a, b
    ld a, b
    rst RST_28
    rst RST_28
    cp l
    cp l
    rst RST_20
    rst RST_20
    ld a, b
    ld a, b
    rst RST_30
    rst RST_38
    ld [bc], a
    ld [bc], a
    add c
    add c
    ld h, d
    ld h, d
    ld bc, $ff01
    rst RST_38
    ld b, a
    ld b, a
    jp z, $35cb

    dec [hl]
    db $dd
    db $dd
    xor d
    xor d
    and c
    pop hl
    cp h
    db $fc
    rst RST_00
    rst RST_00
    add hl, bc
    dec bc
    rst RST_30
    rst RST_30
    or l
    ld c, [hl]
    cp l
    ld h, [hl]
    cp e
    ld h, h
    db $fd
    ld [hl+], a
    ld e, h
    and l
    ld l, b
    ld de, $5129
    jr c, jr_007_7c10

jr_007_7c10:
    ld a, c
    sbc [hl]
    ld sp, hl
    ld c, $b5
    ld c, [hl]
    sbc $65
    db $db
    ld h, l
    db $fc
    ld h, d
    cp d
    ld h, [hl]
    ld a, b
    and b

Jump_007_7c20:
    jr jr_007_7c42

    jr jr_007_7c24

jr_007_7c24:
    ld [$0810], sp
    nop
    ld b, b
    ld b, b
    pop de
    pop de
    ld h, d
    ld h, d
    xor d
    xor d
    ld e, b
    and b
    cp b
    ret nz

    jr c, jr_007_7c76

    jr c, jr_007_7c38

jr_007_7c38:
    ld a, [de]
    ld [hl+], a
    add hl, de
    ld bc, $534b
    xor d
    and d
    ld d, l
    ld b, l

jr_007_7c42:
    jp nc, $98ca

    add b
    ld e, b
    ld b, h
    inc e
    nop
    inc d
    ld a, [bc]
    rla
    add hl, bc
    ld a, [de]
    dec c
    ld d, l
    ld d, l
    ld b, [hl]
    ld b, [hl]
    adc e
    adc e
    ld [bc], a
    ld [bc], a
    stop
    db $10
    ld [$0018], sp
    jr jr_007_7c64

    dec de
    inc c
    ld e, e
    ld l, h

jr_007_7c64:
    dec [hl]
    ld c, [hl]
    push de
    xor [hl]
    ld a, l
    and [hl]
    xor l
    halt
    db $db
    ld [hl], h
    adc $69
    inc e
    nop
    sub h
    adc d
    ld d, $88

jr_007_7c76:
    ld [hl-], a
    xor l
    or a
    ld c, h
    push de
    ld l, $bd
    ld h, [hl]
    cp c
    ld h, [hl]
    ld e, l
    cp [hl]
    and d
    ld h, e
    ld a, l
    db $eb
    ld a, [hl]
    ret


    dec sp
    db $f4
    ld c, c
    xor [hl]
    and a
    ld e, b
    db $dd
    ld h, d
    ld [hl-], a
    ei
    db $d3
    ld e, d
    and a
    ld a, $a3
    ld a, $0f
    cp d
    ccf
    sbc d
    ld a, h
    db $db
    ld [hl], a
    db $db
    sub l
    ld e, e
    xor c
    ld a, [hl]
    jp nc, Jump_007_7b23

    adc a
    sub b
    xor $c6
    rst RST_38
    sbc a
    xor b
    and h
    or e
    ld a, b
    push de
    and b
    ld e, e
    ei
    inc e
    adc l
    ld d, d
    cpl
    ld [de], a
    cp c
    ld d, h
    add sp, $44
    adc c
    dec l
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
    cp $fe
    db $fc
    db $fc
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
    ld e, a
    ld a, a
    xor a
    rst RST_38
    ld sp, hl
    ld sp, hl
    ld a, [$e7fa]
    rst RST_20
    ret z

    ret z

    di
    di
    ld h, l
    ld h, l
    jp c, $b4da

    or h
    rst RST_08
    rst RST_38
    rst RST_00
    rst RST_38
    ld h, c
    rst RST_38
    or $ff
    sbc e
    rst RST_38
    rst RST_38
    rst RST_38
    call $b3ef
    or e
    nop
    rst RST_38
    nop
    rst RST_38
    add b
    rst RST_38
    ld h, b
    rst RST_38
    rra
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    jr nz, @+$01

    nop
    rst RST_38
    nop
    rst RST_38
    nop
    rst RST_38
    add b
    rst RST_38
    ld h, c
    rst RST_38
    inc c
    rst RST_38
    ldh a, [rIE]
    ld l, $ff
    add d
    rst RST_38
    rst RST_28
    rst RST_28
    ld sp, hl
    ld sp, hl
    nop
    nop
    add e
    add e
    nop
    rst RST_38
    ld h, b
    rst RST_38
    dec e
    rst RST_38
    cp c
    ld sp, hl
    ld e, [hl]

Call_007_7d33:
    cp $a1
    rst RST_38
    call nz, Call_000_3eff
    rst RST_38
    rrca
    rst RST_38
    jr nz, @+$01

    ld e, $ff
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
    ld [bc], a
    rst RST_38
    ld b, b
    rst RST_38
    and e
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
    ld b, l
    rst RST_38
    db $fd
    rst RST_38
    cpl
    cpl
    ret nz

    ret nz

    ld a, $ff
    add c
    rst RST_38
    jr @+$01

    ldh [rIE], a
    rrca
    rst RST_38
    rst RST_38
    rst RST_38
    db $db
    ei
    ld l, h
    ld a, h
    inc de
    rst RST_38
    sbc c
    sbc a
    nop
    rst RST_38
    sbc d
    rst RST_38
    rlca
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $fd
    rst RST_38
    ld l, [hl]
    rst RST_38
    sub e
    rst RST_38
    ld c, c
    rst RST_38
    add d
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    ld a, a
    rst RST_38
    ccf
    rst RST_38
    sub a
    rst RST_38
    adc e
    rst RST_38
    ld b, d
    rst RST_38
    dec d
    ei
    dec hl
    db $dd
    ld d, h
    rst RST_28
    dec sp
    or $ae
    db $db
    db $dd

jr_007_7dad:
    ld l, e
    ld e, l
    db $eb
    ld d, b
    rst RST_38
    ld sp, hl
    ld d, [hl]
    ld l, d
    rst RST_10
    db $f4
    xor a
    cp c
    rst RST_28
    ld b, e
    db $fd
    rst RST_38
    ld d, l
    rst RST_38
    ld d, l
    ld e, a
    ld e, a
    or [hl]
    or a
    db $fc
    cp $a8
    xor a
    ld [hl], d
    ld a, a
    ld l, h
    ld l, a
    ld sp, hl
    rst RST_38
    and b
    cp l
    ld e, l
    db $dd
    cp $7e
    ld [hl], a
    or a
    cp b
    ld e, b
    ld c, a
    cp a
    or d
    ld c, [hl]
    ld e, a
    cp a
    sbc h
    ld l, [hl]
    ld b, b
    ld a, a
    ld [hl], h
    ld a, a
    ldh [c], a
    rst RST_38
    ldh [$fffb], a
    ld b, b
    ld a, [hl]
    add b
    cp $02
    rst RST_28
    jr nz, jr_007_7dad

    ld e, e
    and a
    jr z, @-$1f

    ld d, [hl]
    xor $a3
    ld e, a
    dec d
    db $eb
    dec de
    db $f4
    res 6, a
    dec bc
    db $fd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $fc
    db $fc
    ldh a, [$fff0]
    add sp, -$18
    pop af
    pop af
    ldh [c], a
    ldh [c], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp a
    rst RST_38
    ld e, a
    ld a, a
    rst RST_08
    rst RST_38
    rst RST_30
    rst RST_38
    sub a
    sub a
    ld l, $2e
    ld d, h
    ld e, l
    rst RST_08
    rst RST_08
    cp [hl]
    cp a
    reti


    reti


    ld [hl], d
    ld [hl], d
    xor b
    xor b
    dec de
    rra
    jp hl


    rst RST_28
    rst RST_28
    rst RST_38
    or [hl]
    cp a
    ccf
    ld a, a
    rst RST_18
    rst RST_38
    ld a, e
    ld a, e
    sub a
    sub a
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
    ld a, a
    ld a, a
    rst RST_38
    rst RST_38
    db $fd
    db $fd
    rst RST_38
    rst RST_38
    rst RST_18
    rst RST_18
    ei
    ei
    ld d, l
    ld d, l
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38

Call_007_7e76:
    rst RST_28
    rst RST_28
    rst RST_38
    rst RST_38
    ld a, l
    ld a, l
    rst RST_08
    rst RST_08

Jump_007_7e7e:
    jr nc, jr_007_7eb0

    ret nc

    ldh a, [$ff57]
    ld [hl], a
    add e
    rst RST_38
    pop hl
    pop hl
    daa
    daa
    rst RST_08
    rst RST_28
    ret nc

    rst RST_38
    rra
    rst RST_38
    ld a, [hl]
    ld a, [hl]
    jp $9cc3


    sbc $3b
    rst RST_38
    ld b, b
    ret nz

    rlca
    add a
    dec b
    add l
    sbc a
    sbc a
    ret nz

    ret nz

    add c
    add c
    add a
    add a
    sub b
    sub b
    adc c
    adc c
    sbc c
    sbc c
    and e
    and e
    cp $ff

jr_007_7eb0:
    sbc [hl]
    sbc a
    ldh [rIE], a
    inc a
    ccf
    inc sp
    inc sp
    ld bc, $2513
    scf
    jp hl


    rst RST_38
    rrca
    rst RST_38
    sbc a
    nop
    sbc d
    ld bc, $019e
    sbc b
    rlca
    sbc b
    rlca
    sbc d
    ld bc, $019e
    reti


    ld b, a
    ld sp, hl
    nop
    sbc c
    ret nz

    dec a
    call nz, $f40d
    add hl, bc
    ldh a, [rNR24]
    ret nz

    cp e
    jp nz, $f009

    sbc b
    rlca
    sbc d
    ld bc, $21be
    cp b
    daa
    sbc b
    rlca
    sbc d
    ld bc, $41de
    sbc a
    rrca
    add hl, bc
    ldh a, [rNR33]
    call nz, $c039
    adc c
    ldh a, [$ff0b]
    ldh a, [c]
    add hl, de
    ret nz

    dec a
    call nz, $f0f9
    add h
    add [hl]
    adc [hl]
    adc a
    di
    di
    pop af
    pop af
    rst RST_38
    rst RST_38
    jp c, $c4da

    add $fa
    ei
    rst RST_20
    rst RST_20
    jr jr_007_7f2c

    db $10
    sub b
    sub b
    ldh a, [$ffc0]
    cp $10
    inc a
    jr nz, jr_007_7f4f

    ld [de], a
    inc de
    sub c
    sub c
    or b
    or b
    pop bc
    pop bc
    add e
    add e
    rlca
    add a
    or d
    di

jr_007_7f2c:
    inc d
    rra
    inc b
    rlca
    sub h
    sbc h
    push bc
    rst RST_08
    db $10
    ld e, a
    add d
    rst RST_38
    inc c
    db $fd
    inc a
    cp l
    ret nz

    pop bc
    call c, $dbdd
    ei
    inc l
    inc a
    inc [hl]
    inc a
    ld [de], a
    rra
    ld de, $03ff
    ld a, a
    ld b, $1e
    and h

jr_007_7f4f:
    cp h
    sub h
    or h
    ccf
    ld a, a
    ld a, b
    ld hl, sp-$18
    add sp, $3f
    rst RST_38
    ld d, d
    ld [hl], d
    ld a, $3e
    sbc a
    rst RST_38
    ld c, b
    ld a, b
    ld c, c
    ld sp, hl
    dec b
    db $fd
    add c
    rst RST_38
    jr c, jr_007_7fe9

    ld a, [hl-]
    ld a, e
    scf
    ld [hl], a
    inc hl

jr_007_7f6f:
    ld h, e
    adc h
    sbc h
    rla
    rra
    dec bc
    rrca
    add l
    add a
    jp Jump_007_5cc3


    rst RST_18
    jr nc, jr_007_7f6f

    add b
    pop bc
    ld bc, $8d03
    adc a
    adc h
    adc [hl]
    adc h

Call_007_7f87:
    adc [hl]
    ld [$010a], sp
    inc bc
    add hl, sp
    rst RST_38
    ld de, $9c1f
    sbc l
    ld l, h
    ld l, l
    call nz, $e0fd
    db $fd
    ldh [$fffd], a
    ld h, b
    ld a, l
    ld h, b
    ld a, l
    ld b, h
    ld a, l
    dec b
    rlca
    nop
    ld [bc], a
    adc l
    adc a
    adc l
    adc a
    adc l
    adc a
    ld [$000a], sp
    ld [bc], a
    ldh [rIE], a
    ld a, h
    ld a, l
    ldh a, [$fff1]
    ld l, h
    ld l, l
    adc h
    adc l
    ld [hl], h
    ld [hl], l
    ldh a, [$fff1]
    db $ec
    db $ed
    nop
    rst RST_38
    dec e
    ld e, l
    ld a, $7e
    ld [hl+], a
    ld a, [hl]
    ld b, $7e
    inc b
    ld a, h
    inc bc
    ld a, e
    rlca
    ld a, a
    inc hl
    ld a, a
    add b
    add c
    and d
    db $e3
    and d
    db $e3
    and d
    db $e3
    and b
    and c
    add b
    add c
    ld sp, hl
    rst RST_38
    ldh a, [$fff1]
    ld a, $7e
    ld a, $7e
    ld sp, $2f71
    ld l, a
    rrca

jr_007_7fe9:
    ld c, a
    scf
    ld [hl], a
    dec sp
    ld a, e
    nop
    rst RST_38
    ret nz

    pop bc
    add b
    add c
    and d
    db $e3
    and d
    db $e3
    ldh [c], a
    db $e3
    and b
    and c
    add b
    add c
    add hl, sp
    rst RST_38
