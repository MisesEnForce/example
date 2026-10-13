; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc e
    inc e
    jr c, jr_005_403d

    nop
    ld h, b
    nop
    ld l, h
    ld l, h
    inc h
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_38
    rst RST_38
    nop
    nop
    nop
    jr jr_005_403a

    jr @+$1a

    jr jr_005_403e

    jr jr_005_4040

    nop
    nop
    nop
    rrca
    rra
    inc e
    jr @+$1a

    jr jr_005_405a

    jr z, jr_005_406a

    ld d, h
    ld c, b
    ld [hl], $00
    jr jr_005_4052

jr_005_403a:
    ld [$0010], sp

jr_005_403d:
    nop

jr_005_403e:
    nop
    nop

jr_005_4040:
    nop
    jr nz, jr_005_4073

    jr c, @+$3e

    jr c, jr_005_4077

    jr nz, jr_005_4049

jr_005_4049:
    inc b
    inc c
    inc e
    inc a
    inc e
    inc c
    inc b
    nop
    nop

jr_005_4052:
    ld b, h
    jr z, @+$12

    jr z, jr_005_409b

    nop
    nop
    db $10

jr_005_405a:
    db $10
    ld a, h
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_005_4096

    db $10
    jr nz, jr_005_4069

jr_005_4069:
    nop

jr_005_406a:
    nop
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4073:
    nop
    nop
    ld h, b
    ld h, b

jr_005_4077:
    nop
    ld [bc], a
    ld b, $0c
    jr jr_005_40ad

    ld h, b
    ld b, b
    nop
    jr c, jr_005_40c6

    add $c6
    add $44
    jr c, jr_005_4088

jr_005_4088:
    jr @+$7a

    jr jr_005_40a4

    jr @+$1a

    ld a, [hl]
    nop
    ld a, h
    add $06
    inc e
    jr nc, jr_005_40f8

jr_005_4096:
    cp $00
    ld a, h
    add $06

jr_005_409b:
    inc e
    ld b, $c6
    ld a, h
    nop
    inc c
    inc e
    inc l
    ld c, h

jr_005_40a4:
    adc h
    cp $0c
    nop
    db $fc
    ret nz

    db $fc
    add $06

jr_005_40ad:
    add $7c
    nop
    ld a, h
    add $c0
    db $fc
    add $c6
    ld a, h
    nop
    cp $c6
    inc c
    jr jr_005_40ed

    jr nc, jr_005_40ef

    nop
    ld a, h
    add $c6
    ld a, h
    add $c6

jr_005_40c6:
    ld a, h
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $c6
    ld a, h
    nop
    inc c
    jr jr_005_4103

    jr nc, @+$32

    jr jr_005_40e3

    nop
    jr nc, jr_005_40f2

    inc c
    inc c
    inc c
    jr @+$32

    nop
    nop
    nop
    nop

jr_005_40e3:
    ldh a, [$fff8]
    jr c, @+$1a

    jr jr_005_4101

    jr jr_005_4107

    rra

jr_005_40ec:
    rrca

jr_005_40ed:
    nop
    nop

jr_005_40ef:
    nop
    jr jr_005_410a

jr_005_40f2:
    jr c, jr_005_40ec

    ldh a, [rP1]
    nop
    nop

jr_005_40f8:
    inc a
    ld h, [hl]
    ld b, $0c
    jr jr_005_40fe

jr_005_40fe:
    jr nc, jr_005_4100

jr_005_4100:
    ld a, h

jr_005_4101:
    add $c6

jr_005_4103:
    ld a, [hl]
    ld b, $c6
    ld a, h

jr_005_4107:
    nop
    jr c, @+$6e

jr_005_410a:
    add $c6
    cp $c6
    add $00
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    db $fc
    nop
    ld a, h
    add $c0
    ret nz

    ret nz

    add $7c
    nop

Jump_005_4120:
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $fc
    nop
    cp $62
    ld h, b
    ld a, b
    ld h, b
    ld h, d
    cp $00
    cp $62
    ld h, b
    ld a, b
    ld h, b
    ld h, b
    ldh a, [rP1]
    ld a, h
    add $c0
    sbc $c6
    add $7c
    nop
    add $c6
    add $fe
    add $c6
    add $00
    inc a
    jr jr_005_4163

    jr jr_005_4165

    jr jr_005_418b

    nop
    ld a, $0c
    inc c
    inc c
    inc c
    call z, Call_000_0078
    or $6c
    ld a, b
    ld [hl], b
    ld a, b
    ld l, h
    or $00
    ldh a, [$ff60]
    ld h, b

jr_005_4163:
    ld h, b
    ld h, b

jr_005_4165:
    ld h, d
    cp $00
    jp nz, $fee6

    jp c, $c2c2

    jp nz, $c600

    and $f6
    sbc $ce
    add $c6
    nop
    ld a, h
    add $c6
    add $c6
    add $7c
    nop
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld h, b
    ldh a, [rP1]
    ld a, h
    add $c6

jr_005_418b:
    add $de
    call nz, Call_000_007a
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, b
    ld l, h
    or $00
    inc a
    ld h, d
    ld h, b
    inc a
    ld b, $c6
    ld a, h
    nop
    ld a, [hl]
    ld e, d
    jr jr_005_41bc

    jr jr_005_41be

    inc a
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    nop
    add $c6
    add $c6
    ld l, h
    jr c, jr_005_41c7

    nop
    add $c6
    sub $d6

jr_005_41bc:
    cp $6c

jr_005_41be:
    ld b, h
    nop
    ld h, [hl]
    ld h, [hl]
    inc a
    jr jr_005_4201

    and $c6

jr_005_41c7:
    nop
    add $c6
    ld l, h
    jr c, @+$32

    jr nc, jr_005_41ff

    nop
    cp $0c
    jr jr_005_4204

    ld h, b
    jp nz, Jump_000_00fe

    inc c
    inc e
    inc l
    ld c, h
    adc h
    cp $0c
    nop
    db $fc
    ret nz

    db $fc
    add $06
    add $7c
    nop
    ld a, h
    add $c0
    db $fc
    add $c6
    ld a, h
    nop
    cp $c6
    inc c
    jr @+$32

    jr nc, jr_005_4227

    nop
    ld a, h
    add $c6
    ld a, h
    add $c6
    ld a, h

jr_005_41ff:
    nop
    db $fc

jr_005_4201:
    db $fc
    ld hl, sp-$08

jr_005_4204:
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    ldh a, [c]
    di
    di
    ldh a, [c]
    ldh [c], a
    ldh [c], a
    ldh [c], a
    ldh [c], a
    ldh [c], a
    ldh [c], a
    push hl
    rst RST_20
    rst RST_00
    call nz, $c4c7
    rst RST_00
    push bc
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$ffe0], a
    rst RST_18

jr_005_4227:
    rst RST_38
    ldh [rIE], a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    ld bc, $0101
    ld bc, $8f8f
    ld [$0b8f], sp
    adc a
    dec bc
    adc a
    adc e
    adc a
    add a
    adc a
    rlca
    rrca
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    cpl
    ccf
    cpl
    ccf
    rst RST_28
    rst RST_38
    rrca
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    cp a
    rst RST_38
    ccf
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    ld a, a
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    nop
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

jr_005_429f:
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
    jr z, jr_005_429f

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
    ld b, a
    nop
    rst RST_38
    nop
    rst RST_38
    nop

jr_005_4311:
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

Jump_005_4320:
    jr z, jr_005_4311

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
    rrca
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc e
    nop
    inc bc
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    add a
    nop
    rst RST_08
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
    nop
    inc bc
    nop
    sbc a
    nop

jr_005_4375:
    add a
    nop
    sbc a
    nop
    sbc e
    nop
    inc bc
    nop
    rst RST_38
    nop
    rst RST_38
    jr nz, @+$33

    nop
    sbc e
    nop
    adc e
    nop
    and e
    nop
    or e
    ld [$0019], sp
    rst RST_38
    nop
    rst RST_38
    ld [bc], a
    inc bc
    nop
    sbc c
    ld [bc], a
    add e
    nop
    sbc c
    nop
    sbc c
    ld [bc], a
    inc bc
    nop
    rst RST_38
    nop
    rst RST_38
    nop
    jr jr_005_43c5

    cp e
    inc d
    rst RST_10
    nop
    rst RST_20
    nop
    rst RST_20
    nop
    jp $ff00


    nop
    rst RST_38
    nop
    ld de, $bb00
    nop
    cp e
    nop
    cp e
    jr z, jr_005_4375

    ld b, h
    rst RST_00
    nop
    cp $00
    rst RST_38
    ld b, h
    push bc
    nop
    sbc e
    ld b, b

jr_005_43c5:
    rst RST_08
    ld [bc], a
    db $e3
    ld b, b
    reti


    ld [hl+], a
    and e
    nop
    cp $00
    rst RST_38
    inc d
    rst RST_30
    nop
    db $e3
    ld [hl+], a
    db $eb
    nop
    pop bc
    nop
    db $dd
    nop
    adc b
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
    cp a
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
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec b
    dec b
    db $10
    ld de, $1312
    inc d
    dec c
    dec b
    dec b
    jr jr_005_4433

    ld a, [de]
    dec de
    inc e
    dec c
    dec b
    dec b

Call_005_4420:
    jr nz, jr_005_4443

    ld [hl+], a
    inc hl
    inc h
    dec c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_005_4433:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop

jr_005_4443:
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    inc bc
    inc b
    ld bc, $0501
    nop
    inc bc
    inc b
    ld bc, $0301
    inc b
    ld b, $01
    ld bc, $0707
    ld [$0109], sp
    ld bc, $0900
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0901], sp
    inc c
    ld bc, $0a01
    add hl, bc
    dec c
    ld bc, $0a09
    ld [$0f0e], sp
    add hl, bc
    db $10
    ld bc, $1211
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $1413
    ld bc, $0101
    ld bc, $0101
    inc de
    inc d
    ld bc, $1615
    ld bc, $0117
    inc de
    jr @+$18

    add hl, de
    inc de
    ld a, [de]
    dec de
    inc e
    dec b
    inc de
    inc de
    dec e
    ld e, $1f
    inc de
    inc de
    jr nz, jr_005_44c3

    ld [hl+], a
    inc hl
    inc h
    jr nz, jr_005_44cc

    rra
    ld h, $21
    inc de
    inc d
    ld a, [bc]
    rlca
    rlca
    daa
    rlca
    jr z, jr_005_44dc

    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    nop
    ld [bc], a
    dec hl
    inc l
    ld a, [bc]
    ld a, [bc]
    dec l
    ld a, [bc]
    ld bc, $0101

jr_005_44c3:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_005_44cc:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    ld bc, $0101

jr_005_44dc:
    ld bc, $0101
    rla
    inc de
    ld a, [de]
    ld l, $01
    ld d, $16
    cpl
    add hl, de
    rra
    inc de
    jr @+$1d

    inc de
    inc de
    inc de
    dec e
    jr nz, jr_005_4522

    jr nc, jr_005_4513

    inc de
    inc de
    dec e
    ld sp, $2432
    ld bc, $2520
    dec h
    inc hl
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1b33
    inc d
    ld bc, $0101
    rla
    inc [hl]
    add hl, de

jr_005_4513:
    inc de
    jr @+$37

    ld d, $2e
    add hl, de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    jr jr_005_4534

    dec h

jr_005_4522:
    ld [hl], $30
    dec h
    rra
    inc de
    inc de
    jr nc, jr_005_452b

    scf

jr_005_452b:
    scf
    jr c, @+$22

    ld hl, $3913
    ld a, [hl-]
    dec sp
    inc a

jr_005_4534:
    dec a
    ld a, $3f
    inc de
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld a, $45
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    inc de
    ld b, [hl]
    ld bc, $0101
    ld bc, $0101
    inc de
    inc d
    ld bc, $0101
    ld bc, $0101
    inc de
    dec hl
    ld bc, $0101
    ld bc, $0101
    inc de
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, $01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $01
    ld bc, $070f
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    rrca
    ld bc, $0a0f
    ld a, [bc]
    ld b, a
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld bc, $0e0f
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    rrca
    ld bc, $0f0f
    ld c, b
    ld c, c
    ld a, [bc]
    nop
    ld bc, $0f01
    ld bc, $480e
    ld a, [bc]
    ld bc, $0101
    ld bc, $0f01
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld bc, $0f01
    ld bc, $0e01
    ld bc, $0000
    ccf
    inc d
    ld c, d
    ld c, b
    ld a, [bc]
    ld c, e
    ld c, h
    nop
    ld b, $4d
    ld c, e
    ld [de], a
    ld a, [bc]
    ld c, [hl]
    ld c, a
    nop
    ld bc, $1b05
    ld l, $12
    ld a, [bc]
    rlca
    ld bc, $2000
    jr nc, jr_005_466d

    ld a, [de]
    inc h
    ld a, [bc]
    ld bc, $0108
    nop
    ld bc, $0151
    ld bc, $0c0a
    nop
    nop
    dec bc
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    ld a, [bc]
    ld a, [bc]
    rlca
    ld bc, $120d
    ld a, [bc]
    ld [de], a
    ld bc, $0a0a
    ld a, [bc]
    ld c, e
    db $10
    ld a, [bc]
    ld [$0001], sp
    inc bc
    inc b
    ld a, [bc]
    ld b, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0100], sp
    ld d, d
    ld a, [bc]
    ld [$0a53], sp
    ld d, e
    ld [$5400], sp
    db $10
    ld a, [bc]
    ld [$0153], sp
    inc c
    ld bc, $4c55
    ld a, [bc]
    inc c
    ld de, $5756
    nop
    nop
    ld e, b
    nop
    dec c
    nop

jr_005_466d:
    ld e, c
    ld e, d
    ld e, e
    nop
    inc c
    ld bc, $0000
    ld e, h
    ld bc, $0a03
    inc c
    nop
    nop
    nop
    nop
    nop
    ld bc, $3a5d
    ld e, [hl]
    ld e, a
    ld h, b
    ld a, $06
    inc de
    ld h, c
    ld h, d
    ld b, c
    ld h, e
    ld h, h
    ld e, a
    ld bc, $6102
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    dec a
    dec a
    ld e, a
    ld b, h
    ld a, [hl-]
    ld l, l
    ccf
    add hl, sp
    ld a, [hl-]
    ld h, a
    ld e, [hl]
    ld h, b
    ld a, [hl-]
    ld l, [hl]
    ccf
    ld a, [hl-]
    nop
    ld e, [hl]
    ld a, [hl-]
    ld l, a
    ld a, [hl-]
    ld [hl], b
    ld [bc], a
    inc b
    ld bc, $7271
    ld [hl], d
    ld [hl], b
    ccf
    inc de
    ld e, d
    ld [hl], e
    ld bc, $0101
    ld bc, $1302
    inc de
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    inc de
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    inc de
    dec hl
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    inc de
    dec hl
    ld [hl], l
    ld [hl], l
    halt
    ld [hl], a
    halt
    ld [hl], l
    inc de
    dec hl
    ld [hl], l
    ld [hl], l
    ld a, b
    ld a, c
    ld a, b
    ld [hl], l
    inc de
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld a, d
    ld a, e
    ld a, b
    ld [hl], l
    dec hl
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld a, b
    ld a, h
    ld a, e
    ld [hl], l
    dec hl
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld a, l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld bc, $0e01
    ld bc, $0748
    ld a, [hl]
    ld a, a
    ld bc, $010f
    ld c, $0a
    ld c, c
    ld bc, $0100
    rrca
    ld c, $09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    add b
    rrca
    ld c, b
    ld a, [bc]
    ld a, [bc]
    ld c, $12
    rrca
    ld bc, $010f
    ld c, c
    ld a, [bc]
    rrca
    ld c, b
    ld [$010f], sp
    add c
    add d
    ld [de], a
    ld c, c
    ld a, [bc]
    add e
    ld bc, $010f
    add h
    dec bc
    rlca
    inc c
    ld c, b
    ld d, $16
    ld d, $85
    ld d, $16
    rrca
    ld a, [bc]
    nop
    ld a, a
    dec bc
    rlca
    ld bc, $0001
    ld de, $0c01
    ld c, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$1212], sp
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld bc, $0001
    ld bc, $0000
    add hl, bc
    inc c
    rrca
    ld c, $0f
    nop
    nop
    nop
    rrca
    add [hl]
    rrca
    ld bc, $0f0f
    nop
    nop
    ld de, $870a
    dec bc
    ld bc, $080f
    ld bc, $0107
    ld c, b
    ld a, [bc]
    rrca
    rrca
    rrca
    ld bc, $0a0a
    ld bc, $0000
    ld bc, $8801
    ld e, e
    ld [de], a
    nop
    nop
    ld bc, $5901
    ld e, d
    dec c
    nop
    nop
    ld bc, $8901
    ld e, c
    ld e, d
    nop
    nop
    nop
    ld bc, $8a01
    ld e, d
    ld e, d
    nop
    nop
    nop
    ld bc, $5900
    ld e, d
    adc e
    nop
    nop
    nop
    ld bc, $5a01
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    ld bc, $5a59
    adc b
    nop
    nop
    nop
    nop
    inc bc
    inc b
    ld [hl], e
    ld e, h
    ld e, d
    ld e, d
    adc b
    ld e, d
    ld bc, $0501
    inc de
    ld e, d
    ld e, d
    ld e, d
    ld e, h
    ld [hl], e
    ld bc, $133f
    ld e, d
    ld e, d
    adc h
    adc l
    ld e, d
    ld bc, $133f
    ld e, d
    adc e
    ld e, d
    adc [hl]
    adc h
    rla
    add hl, de
    inc de
    ld bc, $8901
    ld bc, $1917
    inc de
    inc de
    ld e, c
    ld e, d
    adc d
    ld bc, $1302
    inc de
    inc de
    ld e, d
    ld e, d
    ld [hl], e
    inc sp
    inc de
    inc de
    inc de
    adc a
    adc [hl]
    ld e, d
    ld [hl], e
    ld [bc], a
    inc de
    inc de
    sub b
    ld [hl], l
    inc de
    dec de
    sub c
    ld [hl], l
    ld [hl], l
    ld a, d
    ld [hl], l
    ld [hl], l
    inc de
    inc de
    inc de
    dec de
    ld [hl], h
    sub d
    ld [hl], l
    ld [hl], l
    inc de
    dec e
    sub b
    dec h
    sub e
    sub h
    dec de
    sub l
    inc de
    ld [hl], h
    ld [hl], l
    ld [hl], l
    sub [hl]
    sub a
    sub b
    ld [hl], l
    sbc b
    sbc c
    ld [hl], l
    ld [hl], l
    ld [hl], l
    sbc d
    ld [hl], l
    ld [hl], l
    sbc e
    sbc h
    sbc l
    ld [hl], l
    ld [hl], l
    ld d, l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld e, d
    sbc l
    ld [hl], l
    ld [hl], l
    ld e, d
    ld [hl], l
    ld [hl], l
    sbc [hl]
    ld e, d
    ld e, d
    sbc a
    ld [hl], l
    and b
    ld [hl], l
    ld [hl], l
    inc de
    inc de
    inc de
    and c
    inc de
    inc de
    ld l, $0f
    and d
    and d
    and d
    and e
    and d
    inc de
    ld c, l
    ld l, $0f
    and h
    and l
    and [hl]
    and a
    and d
    inc de
    inc d
    and a
    xor b
    xor c
    xor d
    rrca
    xor e
    dec b
    dec hl
    and l
    xor h
    xor l
    xor [hl]
    xor a
    rrca
    or b
    ld c, l
    rrca
    and a
    and l
    ld e, e
    or c
    or d
    or e
    dec b
    and l
    or h
    ld a, [bc]
    ld a, [bc]
    or l
    ld a, [hl-]
    or e
    or [hl]
    and a
    or a
    ld a, [hl-]
    add c
    or d
    or e
    ld a, [hl-]
    or [hl]
    ld c, c
    dec c
    add hl, bc
    ld [de], a
    dec bc
    ld bc, $010f
    ld c, b
    rrca
    ld a, [bc]
    cp b
    ld a, [bc]
    rlca
    ld bc, $0901
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld bc, $0f01
    ld c, $0f
    ld de, $0cac
    rrca
    ld c, $2e
    ld c, b
    ld c, $0f
    ld a, [bc]
    ld a, [bc]
    dec c
    ld bc, $012b
    rrca
    add hl, bc
    inc c
    rla
    ld d, $34
    inc de
    inc d
    nop
    cp c
    cp d
    add hl, de
    dec e
    dec h
    inc de
    jr jr_005_4916

    dec de
    dec h
    dec h
    cp e
    cp h
    nop
    nop
    nop
    nop
    ld bc, $5a8d
    cp l
    nop
    nop
    nop
    cp [hl]
    cp a
    ld e, d
    ld e, d
    adc h
    nop
    nop
    nop
    ret nz

    ld e, d
    ld e, d

jr_005_4916:
    ld e, d
    pop bc
    rrca
    nop
    nop
    jp nz, $c35a

    call nz, Call_000_1600
    ld d, $01
    nop
    jp nz, $c55a

    rla
    inc de
    inc de
    ld a, [de]
    ld l, $00
    nop
    rla
    add hl, de
    and d
    rra
    inc de
    jr jr_005_494f

    ld d, $19
    inc de
    and a
    add $1f
    inc de
    inc de
    inc de
    inc de
    inc de
    nop
    nop
    ld d, $c7
    inc de
    sbc b
    ld [hl], l
    ld [hl], l
    ld e, d
    ld [hl], e
    ld [bc], a
    inc de
    dec h
    ret z

    ld [hl], l

jr_005_494f:
    ld [hl], l
    ld e, c
    ret


    jp z, $cb29

    ld [hl], l
    ld [hl], l
    ld [hl], l
    rla
    cpl
    inc de
    sbc b
    sbc h
    sbc l
    ld [hl], l
    ld [hl], l
    add hl, de
    inc de
    call z, $9cc8
    ld e, d
    ld [hl], l
    ld [hl], l
    inc de
    call z, $9cc8
    ld e, d
    ld e, d
    ld [hl], l
    call $9b13
    adc $5a
    ld e, d
    sbc l
    ld [hl], l
    ld e, d
    adc a
    nop
    sbc h
    ld e, d
    ld e, d
    sbc a
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, d
    ld e, d
    sbc l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    sbc h
    ld e, d
    ld e, d
    rst RST_08
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    sbc h
    ld e, d
    ld e, d
    ret nc

    ld [hl], l
    pop de
    ld [hl], l
    ld [hl], l
    sbc h
    ld e, d
    sbc l
    ld [hl], l
    sbc h
    ld e, d
    ld e, d
    sbc a
    ld e, d
    ld e, d
    sbc l
    ld [hl], l
    ld e, d
    ld e, d
    ld e, d
    sbc l
    ld e, d
    ld e, d
    sbc l
    ld [hl], l
    ld e, d
    and l
    ld e, d
    sbc l
    ld e, d
    ld e, d
    rst RST_08
    ld e, d
    jp nc, $5ad3

    call nc, Call_005_5a5a
    bit 3, d
    push de
    ld e, d
    sbc l
    ld [hl], l
    and a
    or d
    and [hl]
    rrca
    ld a, [hl-]
    or e
    ld a, [bc]
    xor e
    rrca
    or a
    ld a, [hl-]
    or d
    ld a, [hl-]
    or e
    or d
    sub $a5
    rst RST_10
    ld a, [hl-]
    ld a, [hl-]
    ld a, [bc]
    and [hl]
    or h
    cp h
    and a
    ret c

    add d
    reti


    jp c, $0ad6

    sub $db
    and l
    and a
    call c, $0ad8
    call c, $a7d6
    and a
    db $dd
    and l
    and a
    db $dd
    and a
    xor e
    and a
    and a
    and a
    and a
    db $dd
    rrca
    db $dd
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    db $dd
    and d
    sbc $13
    dec hl
    sub $df
    or h
    ld a, [hl-]
    cp h
    add $25
    ldh [$ffe1], a
    sub $3a
    and [hl]
    or a
    cp h
    cp h
    rst RST_18
    and a
    or a
    or e
    ldh [c], a
    db $e3
    rrca
    or a
    sub $a5
    sub $d6
    or h
    rst RST_18
    or a
    sub $0a
    ld a, [bc]
    ld a, [bc]
    or e
    or d
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    xor e
    db $dd
    db $e4
    rrca
    and a
    db $dd
    and a
    db $dd
    and a
    ld c, $a7
    db $dd
    ld bc, $dda7
    and a
    db $dd
    and a
    and a
    ld a, [hl-]
    push hl
    add $25
    dec h
    dec h
    dec h
    adc a
    ld a, [hl-]
    ld a, [hl-]
    and a
    and a
    and a
    and a
    ld [hl], l
    ld [hl], l
    db $e3
    ld a, [hl-]
    and [hl]
    and $a7
    and a
    ld [hl], l
    ld [hl], l
    rst RST_20
    or d
    or e
    xor e
    ld c, $a7
    ld [hl], l
    ld [hl], l
    ld a, [hl-]
    ld a, [hl-]
    or e
    and a
    and a
    and a
    ld [hl], l
    ld [hl], l
    pop hl
    and l
    and a
    db $dd
    and a
    and a
    ld [hl], l
    ld [hl], l
    db $dd
    and a
    and a
    and a
    and a
    and a
    ld [hl], l
    ld [hl], l
    and a
    and a
    and a
    and a
    and a
    and a
    ld [hl], l
    ld [hl], l
    nop
    add sp, $5a
    ld e, d
    ld e, d
    ld e, d
    bit 3, d
    ld [hl], l
    ld e, d
    ld e, d
    ld e, d
    jp hl


    ld e, d
    ld e, d
    ld e, d
    nop
    sbc h
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    nop
    ld [hl], l
    sbc h
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld [hl], l
    ld [hl], l
    nop
    sbc d
    ld e, d
    sbc d
    ld [hl], l
    ld e, d
    ld [hl], l
    ld [hl], l
    ld [hl], l
    nop
    ld [$eaeb], a
    db $eb
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [$7575], a
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld [$5aeb], a
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    db $ec
    ld [hl], l
    nop
    ld e, d
    ld e, d
    db $ed
    ld e, d
    ld e, d
    ld e, d
    ld [hl], l
    ld [hl], l
    ld e, d
    rst RST_08
    ld [hl], l
    ld e, d
    ld e, d
    ld e, d
    sbc l
    ld [hl], l
    sbc l
    nop
    ld [hl], l
    ld e, d
    ld e, d
    ld e, d
    sbc l
    nop
    nop
    ld [$edeb], a
    pop de
    sbc d
    nop
    ld [hl], l
    db $eb
    nop
    nop
    ld [hl], l
    ld [hl], l
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], l
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], b
    ld [hl], h
    ld a, b
    ld a, h
    inc b
    inc b
    inc b
    inc b
    inc d
    inc c
    inc d
    inc c
    inc b
    ld [hl], b
    inc b
    ld a, b
    ld [hl], h
    inc b
    ld a, h
    inc b
    inc d
    inc c
    db $10
    inc c
    inc b
    inc d
    inc b
    db $10
    inc b
    inc b
    inc e
    inc e
    inc b
    inc b
    inc e
    inc b
    inc b
    inc e
    inc b
    inc e
    inc e
    inc e
    inc e
    inc e
    inc b
    inc b
    inc b
    inc e
    inc e
    inc b
    inc e
    inc b
    inc e
    inc b
    inc b
    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc h
    inc b
    inc e
    inc e
    inc e
    inc b
    inc e
    inc b
    inc b
    inc e
    inc e
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    jr jr_005_4b56

    jr @+$06

    inc b
    inc b

jr_005_4b56:
    inc b
    ld [$0404], sp
    ld [$0408], sp
    inc b
    inc b
    inc d
    inc c
    ld [$0c0c], sp
    ld [$0c0c], sp
    inc c
    ld [$0c04], sp
    ld [$0808], sp
    inc c
    inc c
    ld [$0c08], sp
    jr jr_005_4b81

    inc c
    inc c
    db $10
    db $10
    inc c
    inc b
    db $10
    inc c
    inc c
    db $10
    inc c
    inc b

jr_005_4b81:
    db $10
    inc b
    inc b
    inc c
    inc c
    inc d
    inc c
    inc c
    inc c
    inc c
    jr jr_005_4ba5

    inc b
    inc b
    inc b
    inc b
    ld h, b
    inc b
    ld h, h
    inc c
    inc c
    db $10
    db $10
    inc b
    inc d
    inc b
    inc b
    inc b
    db $10
    ld h, b
    inc b
    inc d
    inc c
    jr c, @+$0e

    inc c

jr_005_4ba5:
    jr @+$3a

    jr c, @+$66

    inc b
    inc e
    inc e
    inc c
    jr @+$0e

    jr jr_005_4bb5

    ld h, b
    ld h, b
    ld h, h
    inc e

jr_005_4bb5:
    inc e
    ld h, b
    inc b
    inc b
    inc b
    jr @+$06

    inc b
    inc d
    ld [$100c], sp
    db $10
    inc b
    inc b
    db $10
    inc b
    inc b
    inc b
    inc e
    ld h, b
    ld h, b
    ld h, h
    inc b
    ld [$1404], sp
    inc d
    ld [$0c0c], sp
    jr jr_005_4bda

    inc c
    ld [$100c], sp

jr_005_4bda:
    db $10
    inc b
    inc b
    inc b
    jr z, jr_005_4c08

    inc b
    inc b
    jr z, @+$06

    inc b
    jr z, jr_005_4beb

    jr z, @+$2a

    jr z, @+$2a

jr_005_4beb:
    jr z, jr_005_4c15

    jr z, jr_005_4c17

    jr z, @+$2a

    jr z, jr_005_4c1b

    jr z, @+$2a

    jr z, jr_005_4c1f

    jr z, jr_005_4c21

    inc b
    jr z, jr_005_4c00

    inc b
    inc d
    inc b
    inc d

jr_005_4c00:
    jr z, jr_005_4c2a

    jr z, jr_005_4c2c

    jr z, jr_005_4c2e

    jr z, jr_005_4c30

jr_005_4c08:
    jr z, jr_005_4c32

    jr z, jr_005_4c34

    jr z, @+$2a

    jr nc, jr_005_4c38

    jr z, jr_005_4c3a

    jr z, jr_005_4c3c

    inc b

jr_005_4c15:
    inc d
    db $10

jr_005_4c17:
    inc c
    jr jr_005_4c1e

    inc c

jr_005_4c1b:
    inc b
    jr nz, jr_005_4c3e

jr_005_4c1e:
    inc e

jr_005_4c1f:
    jr nz, @+$62

jr_005_4c21:
    inc e
    ld h, h
    inc e
    jr z, @+$1e

    inc e
    inc e
    ld h, h
    ld h, b

jr_005_4c2a:
    ld h, b
    ld h, h

jr_005_4c2c:
    ld h, h
    ld h, b

jr_005_4c2e:
    inc b
    ld h, h

jr_005_4c30:
    inc b
    inc e

jr_005_4c32:
    ld h, b
    inc b

jr_005_4c34:
    inc c
    jr @+$0e

    inc c

jr_005_4c38:
    inc b
    ld h, b

jr_005_4c3a:
    inc e
    ld h, h

jr_005_4c3c:
    ld h, h
    inc b

jr_005_4c3e:
    inc b
    inc b
    inc c
    ld [$1014], sp
    inc d
    jr jr_005_4c4b

    db $10
    ld h, b
    inc e
    ld h, h

jr_005_4c4b:
    ld h, b
    inc e
    inc e
    inc b
    inc e
    inc b
    ld h, h
    inc e
    inc b
    ld b, b
    ld b, h
    ld c, b
    ld c, h
    inc e
    inc e
    inc e
    ld l, h
    inc e
    inc b
    ld l, h
    inc e
    ld h, h
    inc b
    inc e
    inc b
    inc b
    ld l, h
    inc b
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    jr nz, jr_005_4c8e

    jr nz, jr_005_4c90

    inc b
    ld l, h
    inc b
    inc b
    jr z, jr_005_4c9e

    jr z, jr_005_4ca0

    jr z, jr_005_4ca2

    jr z, jr_005_4ca4

    jr z, jr_005_4ca6

    jr z, jr_005_4ca8

    jr z, jr_005_4caa

    jr z, jr_005_4cac

    jr z, jr_005_4cae

    jr z, jr_005_4cb0

    jr z, jr_005_4cb2

    jr z, jr_005_4cb4

    jr z, jr_005_4cb6

jr_005_4c8e:
    jr z, jr_005_4cb8

jr_005_4c90:
    jr z, jr_005_4cba

    jr z, jr_005_4cbc

    jr z, jr_005_4cbe

    jr z, jr_005_4cc0

    jr z, jr_005_4cc2

    jr z, jr_005_4cc4

    jr z, jr_005_4cc6

jr_005_4c9e:
    jr z, jr_005_4cc8

jr_005_4ca0:
    jr z, jr_005_4cca

jr_005_4ca2:
    jr z, jr_005_4ccc

jr_005_4ca4:
    jr z, jr_005_4cce

jr_005_4ca6:
    jr z, jr_005_4cd0

jr_005_4ca8:
    jr z, jr_005_4cae

jr_005_4caa:
    jr z, jr_005_4cb0

jr_005_4cac:
    inc d
    inc c

jr_005_4cae:
    inc b
    inc d

jr_005_4cb0:
    jr z, jr_005_4cda

jr_005_4cb2:
    jr z, @+$2a

jr_005_4cb4:
    jr z, jr_005_4cba

jr_005_4cb6:
    jr z, jr_005_4cbc

jr_005_4cb8:
    jr z, jr_005_4cbe

jr_005_4cba:
    jr z, jr_005_4cc0

jr_005_4cbc:
    jr z, jr_005_4ce6

jr_005_4cbe:
    jr z, jr_005_4ce8

jr_005_4cc0:
    jr z, jr_005_4cc6

jr_005_4cc2:
    inc b
    inc b

jr_005_4cc4:
    jr z, jr_005_4cee

jr_005_4cc6:
    inc b
    inc b

jr_005_4cc8:
    jr z, jr_005_4cf2

jr_005_4cca:
    inc b
    inc b

jr_005_4ccc:
    ld l, h
    inc b

jr_005_4cce:
    ld l, h
    inc b

jr_005_4cd0:
    jr jr_005_4cd2

jr_005_4cd2:
    jr jr_005_4cd4

jr_005_4cd4:
    nop
    nop
    nop
    nop
    inc a
    inc a

jr_005_4cda:
    inc a
    jr z, @+$3e

    inc a
    inc a
    inc a
    jr z, jr_005_4d1e

    inc a
    inc a
    ld b, b
    ld b, h

jr_005_4ce6:
    ld c, b
    ld c, h

jr_005_4ce8:
    jr z, jr_005_4d12

    inc a
    jr z, jr_005_4d15

    inc a

jr_005_4cee:
    inc a
    jr z, jr_005_4d2d

    inc a

jr_005_4cf2:
    jr z, jr_005_4d30

    jr z, jr_005_4d1e

    jr z, jr_005_4d34

    inc e
    inc b
    inc e
    inc e
    inc b
    inc b
    inc l
    inc b
    inc b
    inc h
    inc b
    inc b
    inc e
    inc e
    inc b
    inc h
    inc e
    jr z, jr_005_4d27

    inc e
    jr z, jr_005_4d2a

    jr z, jr_005_4d2c

    inc e
    inc b

jr_005_4d12:
    jr z, @+$06

    inc e

jr_005_4d15:
    inc b
    inc [hl]
    ld [$601c], sp
    inc e
    ld h, h
    ld d, b
    ld d, h

jr_005_4d1e:
    ld e, b
    ld e, h

Call_005_4d20:
    inc b
    inc b
    ld l, h
    ld l, h
    inc b
    inc b
    ld [hl], b

jr_005_4d27:
    ld [hl], h
    ld a, b
    ld a, h

jr_005_4d2a:
    inc b
    inc b

jr_005_4d2c:
    ld l, h

jr_005_4d2d:
    ld l, h
    inc b
    inc b

jr_005_4d30:
    ld l, h
    inc b
    inc b
    inc b

jr_005_4d34:
    inc b
    inc b
    inc b
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    inc e
    inc c
    db $10
    stop
    db $10
    stop
    nop
    nop
    nop
    ld [$1c08], sp
    inc e
    nop
    inc e
    inc c
    ld [$0c10], sp
    ld [$0c34], sp
    inc [hl]
    ld [$1008], sp
    stop
    stop
    nop
    db $10
    inc [hl]
    nop
    ld l, h
    inc c
    jr @+$0e

    stop
    nop
    nop
    inc l
    ld l, h
    ld l, h
    nop
    nop
    jr jr_005_4d6e

jr_005_4d6e:
    stop
    nop
    ld l, h
    nop
    ld l, h
    ld l, h
    nop
    ld l, h
    nop
    nop
    ld l, h
    nop
    inc l
    nop
    nop
    ld l, h
    nop
    inc l
    ld l, h
    nop
    nop
    inc [hl]
    inc c
    inc [hl]
    inc c
    db $10
    db $10
    inc h
    inc h
    inc [hl]
    db $10
    jr z, jr_005_4db4

    inc h
    ld h, b
    ld h, b
    ld h, h
    inc h
    ld h, b
    inc h
    ld h, h
    jr z, jr_005_4dfa

    jr z, jr_005_4e00

    inc h
    inc h
    inc h
    inc h
    ld h, h
    inc h
    inc h
    jr z, jr_005_4e05

    inc h
    ld h, h
    jr z, jr_005_4dc5

    inc h
    jr z, jr_005_4dd0

    ld h, b
    inc h
    ld h, h
    inc h
    inc h
    inc e
    inc b
    inc h

jr_005_4db4:
    inc e
    jr z, jr_005_4ddf

    jr z, jr_005_4de1

    ld h, b
    inc e
    ld h, h
    inc h
    inc h
    inc h
    ld h, b
    inc h
    inc d
    inc h
    db $10
    inc h

jr_005_4dc5:
    ld h, h
    ld h, b
    inc h
    inc h
    jr z, jr_005_4def

    jr z, jr_005_4df5

    inc h
    jr z, jr_005_4df4

jr_005_4dd0:
    inc h
    inc h
    inc h
    jr z, jr_005_4e39

    inc h
    inc h
    inc h
    inc h
    inc d
    inc h
    inc d
    ld h, b
    jr z, jr_005_4e43

jr_005_4ddf:
    jr z, jr_005_4de5

jr_005_4de1:
    inc h
    inc e
    inc e
    inc e

jr_005_4de5:
    inc e
    inc e
    inc b
    inc b
    inc b
    inc d
    ld [$2418], sp
    inc h

jr_005_4def:
    inc h
    inc h
    inc h
    jr z, jr_005_4e1c

jr_005_4df4:
    inc b

jr_005_4df5:
    inc b
    ld l, h
    inc b
    inc b
    inc b

jr_005_4dfa:
    inc b
    ld l, b
    inc b
    ld l, b
    ld l, h
    ld l, h

jr_005_4e00:
    inc b
    ld l, h
    ld l, b
    ld l, h
    ld l, b

jr_005_4e05:
    inc b
    inc b
    inc b
    inc b
    ld l, h
    inc b
    ld l, b
    jr nc, jr_005_4e7a

    ld l, h
    ld l, h
    ld l, h
    ld l, b
    ld l, h
    inc b
    ld l, h
    ld l, b
    ld l, b
    inc b
    inc h
    db $10
    inc h
    inc h

jr_005_4e1c:
    inc d
    inc c
    inc c
    inc c
    stop
    nop
    nop
    ld l, h
    inc b
    ld l, h
    jr c, jr_005_4e3d

    inc c
    jr c, jr_005_4e64

    nop
    nop
    ld l, h
    ld l, h
    inc c
    db $10
    jr jr_005_4e34

jr_005_4e34:
    inc l
    ld l, h
    ld l, h
    ld l, h
    nop

jr_005_4e39:
    nop
    nop
    ld l, h
    ld l, h

jr_005_4e3d:
    nop
    nop
    nop
    nop
    inc b
    nop

jr_005_4e43:
    nop
    ld l, h
    inc l
    ld l, h
    ld l, h
    ld l, h
    inc h
    ld l, h
    ld h, b
    inc h
    inc h
    inc h
    ld l, h
    inc l
    nop
    nop
    nop
    ld l, h
    ld h, h
    ld l, h
    inc h
    jr z, jr_005_4e82

    inc e
    jr z, jr_005_4e81

    jr z, jr_005_4e83

    inc e
    inc h
    inc e
    inc h
    inc h

jr_005_4e64:
    jr z, jr_005_4e8a

    inc e
    inc h
    ld h, b
    jr z, jr_005_4ecf

    inc e
    inc b
    inc b
    inc h
    inc h
    inc e
    inc h
    inc h
    inc h
    inc h
    inc b
    inc b
    inc h
    db $10
    inc c

jr_005_4e7a:
    inc h
    inc c
    inc h
    inc h
    jr z, jr_005_4ea4

    inc c

jr_005_4e81:
    db $10

jr_005_4e82:
    db $10

jr_005_4e83:
    inc h
    jr z, jr_005_4eae

    inc h
    inc h
    jr z, jr_005_4eae

jr_005_4e8a:
    inc h
    inc h
    inc h
    jr z, jr_005_4eb3

    inc h
    ld h, b
    jr z, jr_005_4ef7

    inc h
    inc h
    ld h, b
    jr z, jr_005_4efc

    inc b
    inc h
    inc h
    inc b
    ld b, b
    ld b, h
    ld c, b
    ld c, h
    nop
    ld l, h
    ld l, h
    ld l, h

jr_005_4ea4:
    ld l, h
    jr nz, jr_005_4ec7

    jr nz, jr_005_4ea9

jr_005_4ea9:
    ld [hl], b
    nop
    ld a, b
    ld [hl], h
    nop

jr_005_4eae:
    ld a, h
    nop
    ld l, h
    nop
    inc l

jr_005_4eb3:
    nop
    nop
    ld l, h
    nop
    nop
    inc b
    inc b
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

jr_005_4ec7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4ecf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_4ef7:
    nop
    nop
    nop
    nop
    nop

jr_005_4efc:
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1111

Call_005_4f09:
    ld de, $1111
    ld de, $1111
    nop
    ld de, $1001
    stop
    nop
    ld de, $0110
    ld bc, $1101
    ld de, $1111
    ld de, $0010
    db $10
    ld de, $1100
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1131
    inc sp
    ld de, $1100
    ld de, $1111
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0011
    ld de, $1001
    stop
    nop
    rlca
    nop
    ld [hl], a
    ld h, [hl]
    nop
    ld h, [hl]
    ld bc, $1101
    ld de, $9890
    ld [hl], a
    nop
    ld [hl], b
    add hl, bc
    add hl, bc
    add hl, sp
    nop
    ld [$1111], sp
    ld de, $4411
    inc b
    db $10
    stop
    nop
    ld de, $1111
    ld de, $1110
    ld de, $1111
    ld bc, $1111
    ld de, $1111
    ld de, $1110
    nop
    db $10
    ld de, $4401
    ld b, h
    nop
    nop
    ld bc, $1100
    ld bc, $1010
    nop
    nop
    ld b, h
    ld b, h
    db $10
    ld de, $9898
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    ld [$9008], sp
    sub b
    ld [hl], a
    sub b
    ld [hl], b
    ld [$8008], sp
    sub [hl]
    sub b
    ld h, [hl]
    nop
    nop
    add hl, bc
    nop
    ld b, $00
    ld h, b
    ld bc, $1191
    ld de, $0090
    sub c
    sub c
    sub c
    ld bc, $0008
    ld bc, $0711
    ld de, $1177
    ld bc, $1101
    ld de, $1111
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1100
    ld sp, $1111
    nop
    ld de, $0000
    nop
    nop
    ld bc, $0101
    ld sp, $0101
    inc sp
    inc sp
    ld de, $1100
    ld de, $1111
    nop
    ld de, $1101
    ld de, $0010
    nop
    ld de, $1111
    ld de, $1111
    nop
    db $10
    ld de, $1311
    inc de
    ld de, $1111
    ld de, $1013
    ld de, $1111
    inc de
    nop
    ld de, $1111
    db $10
    db $10
    ld bc, $1001
    inc de
    ld de, $3001
    ld de, $3131
    ld de, $3111
    ld bc, $1111
    ld de, $0111
    ld bc, $1111
    ld de, $1110
    db $10
    ld bc, $1101
    ld de, $1110
    nop
    nop
    ld bc, $1101
    ld de, $1111
    ld de, $1011
    db $10
    ld bc, $1101
    db $10
    ld de, $1111
    ld de, $1010
    ld de, $0000
    ld bc, $1111
    ld de, $1111
    nop
    ld de, $1101
    ld de, $0011
    db $10
    db $10
    ld de, $1011
    ld de, $0030
    ld bc, $0101
    ld de, $1111
    ld de, $1111
    ld de, $0301
    ld de, $1133
    nop
    ld de, $3011
    nop
    ld de, $0110
    ld de, $1111
    inc bc
    nop
    ld bc, $1101
    db $10
    ld sp, $0111
    ld bc, $0000
    db $10
    db $10
    db $10
    ld de, $0101
    db $10
    db $10
    ld de, $0111
    ld de, $1111
    ld de, $1111
    ld bc, $1111
    nop
    ld de, $1101
    db $10
    ld de, $1110
    ld de, $1101
    ld de, $1111
    stop
    inc b
    ld b, h
    ld de, $1111
    ld de, $3101
    db $10
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    jr jr_005_5133

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_005_5143

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5133:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5143:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [$0007], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc c
    dec b
    rlca
    add hl, bc
    nop
    dec c
    ld c, $02
    rrca
    ld [$1007], sp
    db $10
    db $10
    ld de, $1202
    inc de
    inc de
    inc d
    dec d
    ld d, $17
    ld [bc], a
    jr @+$03

    ld bc, $1a19
    dec de
    inc e
    nop
    nop
    dec e
    inc e
    inc e
    ld e, $00
    nop
    nop
    nop
    dec e
    inc e
    inc e
    ld e, $00
    nop
    nop
    nop
    rra
    jr nz, jr_005_5231

    ld e, $00
    nop
    nop
    ld hl, $2205
    inc e
    ld e, $00
    nop
    inc hl
    dec b
    dec b
    inc h
    dec h
    ld h, $09
    nop
    daa
    jr z, jr_005_5253

    add hl, hl
    ld a, [hl+]
    dec hl
    nop
    add hl, bc
    inc l

jr_005_5231:
    dec l
    ld l, $2f
    jr nc, jr_005_5267

    nop
    nop
    inc e
    inc e
    inc e
    ld [hl-], a
    jr nz, jr_005_5271

    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5253:
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $09

jr_005_5267:
    scf
    nop
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    jr c, jr_005_526f

jr_005_526f:
    nop
    add hl, bc

jr_005_5271:
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc l
    inc a
    dec [hl]
    dec [hl]
    cpl
    dec a
    ld a, $3e
    ld a, $3f
    nop
    nop
    nop
    ld b, b
    ld a, $41
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, c
    ld a, $41
    nop
    add hl, bc
    nop
    add hl, bc
    ld b, h
    ld b, c
    ld a, $41
    nop
    ld b, l
    ld b, [hl]
    db $10
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc l
    ld c, e
    ld c, h
    ld c, h
    ld c, l
    add hl, hl
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    dec a
    ld a, $3e
    ld d, a
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld a, $41
    ld a, $3e
    ld b, c
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    nop
    ld a, $41
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    nop
    ld e, l
    ld e, l
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    nop
    nop
    ld e, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld h, b
    ld b, c
    ld e, [hl]
    ld e, [hl]
    jr z, jr_005_533b

    ld c, a
    ld c, a
    ld h, c
    ld b, c
    ld h, d
    dec a
    nop
    ld e, [hl]
    ld e, [hl]
    nop
    ld hl, $3e41
    ld a, $63
    ld h, e
    ld h, h
    ld h, l
    ld e, [hl]
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop

Call_005_5320:
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop

Call_005_5327:
    nop
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    nop

jr_005_533b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0805], sp
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0505], sp
    ld [$6766], sp
    add hl, bc
    add hl, bc
    dec b
    dec b
    ld [$6605], sp
    ld l, b
    ld l, c
    ld l, c
    ld hl, $6b6a
    ld [$6c66], sp
    ld l, l
    ld l, l
    jr z, jr_005_53dd

    ld l, a
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld bc, $5454
    ld bc, $6f6f
    ld l, a
    ld l, a
    ld bc, $0118
    ld bc, $056f
    ld h, a
    nop
    nop
    ld [hl], d
    ld [hl], e
    inc b
    ld l, a
    dec b
    ld h, a
    add hl, bc
    ld [hl], h
    ld [hl], l
    add hl, bc
    halt
    ld l, a
    ld [$7877], sp
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, a
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld l, a
    add h
    add l
    ld c, h
    add [hl]
    ld bc, $0400
    ld l, a
    ld bc, $8787
    adc b
    ld bc, $8921
    nop
    ld l, a
    ld l, a

jr_005_53b2:
    ld l, a
    ld l, a
    ld l, a
    adc d
    adc e
    adc h
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    adc l
    add a
    add c
    ld l, a
    ld l, a
    ld l, a

jr_005_53c3:
    add c
    adc [hl]
    ld a, [de]
    adc a
    inc e
    adc [hl]
    ld a, [de]
    ld c, a
    ld c, a
    sub b
    adc e
    ld bc, $911c
    nop
    sub d
    sub d
    sub e
    nop
    ld bc, $0c1c
    nop
    sub h
    ld l, a
    sub l

jr_005_53dd:
    add a
    jr nz, @+$1e

    rrca
    sub [hl]
    sub a
    ld l, a
    ld l, a
    ld l, a
    ld bc, $891c
    ld hl, $6f98
    ld bc, $0000
    nop
    sbc c
    adc e
    sbc b
    ld l, a
    ld bc, $0000
    nop
    sub l
    add a
    ld bc, $016f
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    jr nz, jr_005_5422

    jr nz, jr_005_5418

    inc e
    nop
    nop
    nop
    jr nz, jr_005_542a

    jr nz, jr_005_545c

    inc e
    nop
    nop
    nop
    jr nz, jr_005_5432

    jr nz, jr_005_53b2

jr_005_5418:
    inc e
    nop
    nop
    nop
    nop
    inc e
    jr nz, jr_005_545e

    inc e
    nop

jr_005_5422:
    nop
    nop
    nop
    inc e
    jr nz, jr_005_53c3

    nop
    nop

jr_005_542a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_5432:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    db $10
    sbc h
    ld e, l
    sbc l
    ld e, l
    sbc l
    sbc [hl]
    ld c, h
    ld c, h
    sbc a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, h
    sbc d
    sbc d
    and b
    ld d, h
    and c
    ld d, h
    and d
    and e
    ld a, $3e
    and h
    and l

jr_005_545c:
    and l
    and l

jr_005_545e:
    and [hl]
    and a
    sbc e
    sbc e
    xor b
    sbc e
    sbc e
    sbc e
    xor c
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor e
    ld a, $3e
    ld b, c
    nop
    nop
    nop
    ld a, $00
    ld a, $3e
    ld b, c
    nop
    nop
    nop
    nop
    xor h
    dec a
    ld a, $41
    nop
    nop
    nop
    nop
    dec a
    dec a
    ld a, $41
    nop
    nop
    nop
    nop
    xor l
    dec a
    xor [hl]
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    xor a
    or b
    or b
    or c
    nop
    ld b, c
    nop
    nop
    nop
    xor a
    or d
    or e
    or h
    or l
    nop
    nop
    nop
    xor a
    xor a
    or [hl]
    or a
    cp b
    nop
    nop
    nop
    xor a
    cp c
    ld h, l
    cp d
    ld b, c
    nop
    nop
    nop
    xor a
    cp c
    ld h, l
    cp d
    cp e
    nop
    nop
    ld b, c
    xor a
    cp h
    cp l
    cp [hl]
    cp a
    nop
    nop
    ld b, c
    xor a
    ret nz

    pop bc
    cpl
    cp [hl]
    nop
    nop
    nop
    xor a
    xor a
    xor a
    or d
    jp nz, $c4c3

    call nz, $c4c4
    call nz, $c4c4
    push bc
    add $c6
    add $c6
    add $c6
    add $5d
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    rst RST_00
    jr z, @+$60

    ld hl, $2128
    ld e, [hl]
    jr z, @+$60

    nop
    nop

Call_005_5520:
    ret z

    nop
    ld e, [hl]
    ld e, $00
    sub [hl]
    ret


    ret


    cp [hl]
    cp [hl]
    nop
    jp z, $cb00

    call z, Call_005_5ecc
    ld e, [hl]
    call Call_005_5e5e
    adc $cf
    rst RST_08
    ret nc

    ret nc

    pop de
    ret nc

    ret nc

    pop de
    ret nc

    ret nc

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    add hl, bc
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    jp nc, $0001

    db $d3
    db $d3
    call nc, Call_000_00d4
    nop
    ld bc, $0000
    call nc, RST_00
    push de
    sub $01
    sub $d7
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $01d6
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, RST_00
    call nc, RST_00
    call nc, Boot
    ld bc, $0035
    dec [hl]
    nop
    dec [hl]
    sub $01
    ld bc, $d6d6
    sub $d6
    sub $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, $d400
    nop
    call nc, $0001
    dec [hl]
    ret c

    reti


    dec [hl]
    dec [hl]
    nop
    ld bc, $d6d6
    sub $d6
    sub $d6
    sub $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    call nc, RST_00
    call nc, $d400
    sub d
    inc l
    inc l
    sub d
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $dada
    jp c, $d392

    db $d3
    db $d3
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    inc bc
    db $db
    db $db
    nop
    nop
    call nc, $d400
    nop
    db $10
    db $10
    ld b, [hl]
    sub d
    sub d
    sub d
    nop
    db $10
    call c, $dcdc
    ld bc, $0101
    sub $dc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $01d6
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    db $10
    inc bc
    ld bc, $0101
    ld bc, $0101
    call c, $0103
    ld bc, $0101
    ld bc, $00dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc $de
    sub $d6
    sub $d6
    rst RST_18
    rst RST_18
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    add hl, bc
    nop
    call nc, $d409
    add hl, bc
    add hl, bc
    nop
    sbc $de
    ld b, [hl]
    db $10
    ld b, [hl]
    stop
    db $10
    ld bc, $dc01
    call c, $dcdc
    db $d3
    call c, $dddd
    nop
    nop
    nop
    sbc $de
    sbc $00
    nop
    nop
    nop
    sub $01
    ld bc, $df01
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    call nc, RST_00
    add hl, bc
    call nc, $1046
    db $10
    db $10
    ld b, [hl]
    db $10
    db $10
    ld b, [hl]

Jump_005_5720:
    call c, $dcdc
    call c, $dcdc
    call c, Call_000_00dc
    nop
    nop
    sub d
    nop
    nop
    sub d
    nop
    sub $de
    nop
    nop
    nop
    nop
    nop
    sbc $01
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    db $dd
    db $dd
    ld bc, $0101
    ld bc, $0101
    nop
    db $10
    ld bc, $0101
    ld bc, $0101
    db $10
    call c, $01dd
    ld bc, $0101
    ld bc, $00e0
    nop
    ld bc, $0101
    ld bc, $d301
    nop
    nop
    nop
    ld bc, $0000
    nop
    sub $de
    sbc $00
    ld bc, $0000
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $1001
    ld b, [hl]
    db $10
    db $10
    ld b, [hl]
    db $10
    db $10
    ld b, [hl]
    call c, $dcdc
    call c, $dcdc
    call c, $e1dc
    nop
    nop
    ldh [c], a
    db $e3
    nop
    nop
    db $e4
    push hl
    and $e7
    add sp, -$17
    rst RST_20
    ld [$e5e5], a
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    db $eb
    db $eb
    db $eb
    nop
    nop
    db $eb
    db $eb
    db $eb
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    add hl, bc
    call nc, Call_000_0009
    add hl, bc
    call nc, Call_000_0909
    db $10
    db $10
    ld b, [hl]
    db $10
    ld b, [hl]
    db $10
    db $10
    ld b, [hl]
    call c, $dcdc
    call c, $dcdc
    call c, $ecdc
    db $ed
    and c
    sub d
    xor $ef
    ld d, h
    ldh a, [rSB]
    pop af
    ldh a, [c]
    ld bc, $f101
    ret nc

    ldh a, [c]
    db $eb
    db $eb
    db $eb
    nop
    nop
    db $eb
    db $eb
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    call nc, $d409
    nop
    call nc, Call_000_0909
    nop
    sub d
    sub e
    nop
    nop
    di
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst RST_28
    ld d, h
    ld d, h
    sub e
    di
    ld d, h
    ld d, h
    ldh a, [$fff1]
    ret nc

    ret nc

    db $f4
    push af
    ret nc

    ret nc

    ldh a, [c]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    nop
    nop
    call nc, $d400
    call nc, $d400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld b, [hl]
    db $10
    db $10
    db $10
    ld b, [hl]
    db $10
    db $10
    call c, $e5dc
    push hl
    or $dc
    call c, Call_000_00dc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    add hl, bc
    call nc, Call_005_4f09
    ld c, a
    call nc, Call_000_1000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3535
    ret c

    nop
    reti


    ret c

    nop
    ld bc, $d6d6
    sub $d6
    sub $d6
    sub $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    sub d
    nop
    nop
    nop
    add hl, bc
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    db $d3
    ld bc, $00d3
    nop
    nop
    nop
    call nc, $0109
    nop
    call nc, Call_000_09d4
    nop
    nop
    nop
    db $dd
    nop
    nop
    reti


    ret c

    inc l
    nop
    nop
    nop
    nop
    reti


    ret c

    nop
    ld bc, $df00
    rst RST_18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    call nc, Call_000_09d4
    nop
    call nc, Call_000_0900
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    rst RST_30
    nop
    nop
    nop
    db $10
    call c, $dcdc
    push hl
    ld hl, sp-$08
    ld hl, sp-$1b
    push hl
    push hl
    push hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    call nc, $d400
    di
    call nc, $d400
    nop
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
    nop
    nop
    inc bc
    nop
    nop
    ld sp, hl
    push af
    nop
    sub d
    sub e
    inc bc
    ld sp, hl
    ld sp, hl
    nop
    db $eb
    db $eb
    db $eb
    db $eb
    nop
    db $eb
    db $eb
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    sub e
    nop
    nop
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, RST_00
    nop
    call nc, $d400
    nop
    nop
    nop
    db $d3
    nop
    nop
    ld a, [$e100]
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    ld bc, $d0f1
    ei
    ret nc

    inc l
    ret nc

    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, Call_000_00d4
    call nc, $d400
    call nc, $e400
    nop
    nop
    db $e4
    nop
    db $e4
    nop
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    push hl
    and $e7
    rst RST_20
    db $fd
    push hl
    push hl
    push hl
    nop
    nop
    nop
    nop
    jr nz, jr_005_5a26

    jr nz, jr_005_5a28

    jr jr_005_5a2a

    jr nz, jr_005_5a2c

    nop
    jr nz, jr_005_5a0f

jr_005_5a0f:
    jr nz, jr_005_5a11

jr_005_5a11:
    inc l
    nop
    jr nz, @+$2a

    jr z, @+$2a

    ld l, b
    jr z, jr_005_5a42

    inc [hl]
    jr z, jr_005_5a45

    jr z, @+$6a

    jr z, jr_005_5a49

    jr z, jr_005_5a4b

    inc [hl]
    nop
    nop

jr_005_5a26:
    nop
    db $e4

jr_005_5a28:
    db $e4
    nop

jr_005_5a2a:
    nop
    ld c, b

jr_005_5a2c:
    nop
    nop
    ld b, b
    nop
    jr nz, jr_005_5a5a

    jr nz, @+$32

    nop
    nop
    ld c, b
    ld c, h
    ld b, h
    db $e4
    ld b, b
    nop
    jr nz, jr_005_5a3e

jr_005_5a3e:
    jr nz, jr_005_5a40

jr_005_5a40:
    nop
    ld e, b

jr_005_5a42:
    ld e, b
    ld e, h
    ld b, h

jr_005_5a45:
    nop
    ld b, b
    ld e, b
    inc l

jr_005_5a49:
    nop
    inc l

jr_005_5a4b:
    db $10
    jr nc, jr_005_5a7e

    db $10
    db $10
    ld h, b
    ld h, b
    stop
    ld h, b
    ld h, b
    nop
    nop
    jr z, jr_005_5a7e

Call_005_5a5a:
jr_005_5a5a:
    jr nz, jr_005_5a7c

    jr nz, @+$12

    inc l
    jr nz, jr_005_5a81

    jr nz, jr_005_5a8f

    jr nz, @+$22

    nop
    inc l
    jr z, jr_005_5a91

    jr nc, jr_005_5a9b

    nop
    inc l
    jr nz, @+$16

    jr nz, jr_005_5a9d

    jr nz, @+$1a

    jr jr_005_5aa1

    inc l
    ld a, b
    inc l
    inc l
    nop
    inc l
    nop

jr_005_5a7c:
    nop
    inc l

jr_005_5a7e:
    nop
    ld a, b
    inc l

jr_005_5a81:
    inc l
    jr nz, jr_005_5ab0

    jr z, @+$2a

    jr z, jr_005_5ab0

    jr z, jr_005_5aaa

    jr z, jr_005_5aac

    nop
    jr nz, jr_005_5a8f

jr_005_5a8f:
    jr z, jr_005_5ab9

jr_005_5a91:
    jr nz, @+$2a

    inc l
    inc l
    inc l
    jr nz, jr_005_5b08

    inc l
    nop
    ld [hl], b

jr_005_5a9b:
    nop
    nop

jr_005_5a9d:
    jr z, jr_005_5a9f

jr_005_5a9f:
    jr nc, @+$2a

jr_005_5aa1:
    jr z, @+$32

    jr nc, jr_005_5acd

    ld [hl], h
    jr nc, @+$3a

    jr z, jr_005_5ab2

jr_005_5aaa:
    jr nc, jr_005_5aac

jr_005_5aac:
    ld [$0000], sp
    nop

jr_005_5ab0:
    db $10
    db $10

jr_005_5ab2:
    jr nz, jr_005_5ad4

    inc l
    inc l
    jr nz, jr_005_5ae4

    nop

jr_005_5ab9:
    nop
    jr nz, jr_005_5ae8

    nop
    nop
    db $10
    stop
    nop
    inc l
    jr nz, jr_005_5ac5

jr_005_5ac5:
    nop
    jr nz, jr_005_5b04

    jr nz, jr_005_5aea

    jr jr_005_5ae4

    inc l

jr_005_5acd:
    jr nz, jr_005_5ae7

    jr @+$3e

    nop
    jr nz, jr_005_5b10

jr_005_5ad4:
    nop
    nop
    ret nc

    ret nc

    ld c, b
    ld b, b
    nop
    ld b, h
    ld h, h
    ld h, h
    inc l
    jr nz, jr_005_5ae1

jr_005_5ae1:
    ld b, b
    nop
    ld b, h

jr_005_5ae4:
    ld h, h
    ld h, h
    ld a, b

jr_005_5ae7:
    ld a, h

jr_005_5ae8:
    nop
    nop

jr_005_5aea:
    inc l
    ld a, h
    nop
    ld b, h
    inc l
    inc l
    ld h, h
    nop
    inc l
    nop
    inc l
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    inc l
    inc l
    ld a, h
    inc l
    nop
    ld a, h
    nop
    nop
    inc l
    nop
    inc l

jr_005_5b04:
    ld a, b
    ld a, h
    ld a, b
    ld a, h

jr_005_5b08:
    nop
    inc l
    nop
    nop
    jr nz, jr_005_5b2e

    inc l
    inc l

jr_005_5b10:
    inc l
    inc l
    nop
    inc l
    nop
    nop
    ld h, h
    nop
    ld e, b
    ld e, b
    ld e, h
    ld e, h
    ld e, b
    inc l
    ld e, h
    ld [hl], h
    ld a, b
    ld a, h
    ld [hl], h
    jr nz, @+$7a

    inc l
    inc l
    ld [hl], b
    inc l
    ld a, h
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, h

jr_005_5b2e:
    ld a, b
    inc l
    ld h, b
    ld d, b
    nop
    nop
    ld d, b
    jr z, jr_005_5b37

jr_005_5b37:
    jr nc, @+$76

    ld [$3030], sp
    ld [$0008], sp
    nop
    inc l
    inc l
    nop
    nop
    ld a, b
    inc l
    ld a, b
    ld a, h
    db $10
    db $10
    ld a, b
    ld a, h
    db $10
    inc a
    ld a, b
    ld a, h
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld a, b
    ld a, h
    nop
    nop
    inc l
    nop
    inc l
    inc l
    inc l
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    inc l
    ld a, h
    inc b
    inc l
    inc l
    nop
    nop
    ld e, b
    ld e, b
    inc d
    inc l
    inc d
    ld a, h
    ld a, b
    inc l
    inc l
    inc l
    ld [hl], b
    ld [hl], b
    ld [$3008], sp
    jr nc, jr_005_5b7b

jr_005_5b7b:
    nop
    ld a, b
    ld a, h
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, h
    ld [hl], b
    ld a, h
    ld [$742c], sp
    jr nz, jr_005_5b8d

    inc b
    inc l
    inc l
    db $10

jr_005_5b8d:
    db $10
    ld a, h
    ld a, b
    db $10
    inc l
    ld a, h
    ld a, b
    ld a, h
    nop
    ld a, h
    nop
    jr z, jr_005_5bc2

    ld l, b
    inc [hl]
    jr z, jr_005_5b9e

jr_005_5b9e:
    jr z, jr_005_5ba0

jr_005_5ba0:
    jr z, @+$72

    jr z, jr_005_5c20

    ld [hl], h
    ld [hl], b
    nop
    ld a, h
    jr z, jr_005_5bd2

    jr z, jr_005_5bd0

    jr z, jr_005_5bce

    jr nz, jr_005_5bd0

    jr z, @+$7a

    jr z, @+$62

    ld a, h
    ld a, b
    ld h, b
    ld h, b
    inc h
    jr nz, jr_005_5bdb

    inc l
    jr jr_005_5bde

    jr nz, jr_005_5bec

    jr z, jr_005_5bea

jr_005_5bc2:
    jr nz, jr_005_5be4

    jr z, @+$66

    jr nz, @+$22

    nop
    ld b, b
    nop
    ld b, b
    nop
    nop

jr_005_5bce:
    ld d, h
    nop

jr_005_5bd0:
    nop
    ld c, b

jr_005_5bd2:
    db $e4
    nop
    ld c, h
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_005_5bdb

jr_005_5bdb:
    inc l
    jr z, jr_005_5bde

jr_005_5bde:
    jr z, @+$76

    nop
    nop
    ld [hl], b
    ld [hl], h

jr_005_5be4:
    nop
    ld h, h
    ld [hl], b
    jr nz, jr_005_5c4d

    ld b, b

jr_005_5bea:
    jr nz, jr_005_5c0c

jr_005_5bec:
    nop
    nop
    ld [hl], h
    ld [hl], b
    nop
    jr nz, @+$76

    inc l
    jr z, jr_005_5c1e

    jr nz, jr_005_5c60

    jr z, jr_005_5c76

    jr z, jr_005_5c74

    nop
    ld a, h
    ld a, h
    ld a, b
    ld a, h
    jr nz, jr_005_5c7b

    jr nz, jr_005_5c31

    jr nz, @+$22

    jr nz, jr_005_5c85

    ld a, h
    ld h, b
    ld h, b

jr_005_5c0c:
    jr nz, jr_005_5c2e

    ld h, b
    jr nz, jr_005_5c31

    jr nc, jr_005_5c33

    jr nz, jr_005_5c45

    ld h, b
    nop
    nop
    ld h, b
    jr nz, jr_005_5c1b

jr_005_5c1b:
    jr nz, jr_005_5c21

    inc b

jr_005_5c1e:
    jr nz, @+$22

jr_005_5c20:
    inc b

jr_005_5c21:
    jr nz, jr_005_5c43

    jr nz, jr_005_5c25

jr_005_5c25:
    nop
    jr z, jr_005_5c50

    inc l
    jr c, @+$22

    nop
    jr nc, jr_005_5c66

jr_005_5c2e:
    nop
    nop
    nop

jr_005_5c31:
    nop
    inc h

jr_005_5c33:
    jr nz, @+$2e

    inc b
    jr nz, jr_005_5c58

    jr nz, jr_005_5c62

    jr nz, jr_005_5c64

    inc d
    jr nz, jr_005_5c6b

    jr nz, jr_005_5c41

jr_005_5c41:
    jr z, jr_005_5c73

jr_005_5c43:
    jr c, @+$1e

jr_005_5c45:
    jr z, @+$1e

    jr z, jr_005_5c49

jr_005_5c49:
    nop
    jr nz, @+$22

    nop

jr_005_5c4d:
    nop
    jr nz, jr_005_5c50

jr_005_5c50:
    jr nz, jr_005_5c7e

    inc d
    jr nz, jr_005_5c75

    inc b
    jr nz, @+$22

jr_005_5c58:
    nop
    jr z, jr_005_5c5b

jr_005_5c5b:
    jr z, jr_005_5c71

    inc l
    jr nz, jr_005_5c80

jr_005_5c60:
    jr nz, jr_005_5c8e

jr_005_5c62:
    jr nz, jr_005_5c84

jr_005_5c64:
    jr z, jr_005_5c9e

jr_005_5c66:
    jr nz, jr_005_5c68

jr_005_5c68:
    inc b
    inc b
    inc l

jr_005_5c6b:
    jr nz, jr_005_5c99

    inc l
    jr @+$1a

    inc l

jr_005_5c71:
    inc l
    ld e, h

jr_005_5c73:
    ld h, b

jr_005_5c74:
    ld [hl], b

jr_005_5c75:
    ld a, h

jr_005_5c76:
    ld [$2074], sp
    ld e, b
    ld e, b

jr_005_5c7b:
    ld e, h
    ld d, b
    nop

jr_005_5c7e:
    nop
    nop

jr_005_5c80:
    inc b
    jr nz, jr_005_5caf

    ld a, h

jr_005_5c84:
    nop

jr_005_5c85:
    nop
    inc b
    jr nz, jr_005_5c89

jr_005_5c89:
    ld a, b
    inc b
    inc l
    ld a, h
    inc b

jr_005_5c8e:
    ld a, h
    inc l
    inc l
    ld a, h
    ld a, b
    inc l
    jr nz, jr_005_5cc2

    inc l
    inc l
    inc l

jr_005_5c99:
    inc l
    inc l
    ld a, b
    ld a, h
    inc l

jr_005_5c9e:
    ld a, h
    inc l
    ld a, b
    ld a, h
    inc l
    ld a, h
    inc l
    inc l
    jr @+$7a

    ld a, h
    inc l
    ld a, h
    jr jr_005_5d09

    ld e, h
    ld d, b

jr_005_5caf:
    ld d, b
    inc b
    inc b
    jr nz, jr_005_5ce0

    jr nz, jr_005_5ce2

    jr @+$1a

    jr @+$7e

    ld a, b
    ld a, h
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    ld a, b

jr_005_5cc2:
    ld a, h
    ld a, b
    ld a, h
    inc l
    ld a, h
    jr z, jr_005_5d45

    ld a, b
    ld a, h
    inc l
    ld a, h
    jr z, jr_005_5ceb

    jr z, jr_005_5cf9

    nop
    jr nc, jr_005_5cd4

jr_005_5cd4:
    nop
    ld a, h
    nop
    ld a, h
    inc e
    nop
    ld a, h
    jr z, jr_005_5cdd

jr_005_5cdd:
    inc l
    nop
    inc d

jr_005_5ce0:
    inc l
    ld a, h

jr_005_5ce2:
    ld a, b
    ld a, h
    inc l
    ld a, b
    ld a, h
    ld a, b
    nop
    inc d
    nop

jr_005_5ceb:
    inc d
    ld a, b
    inc l
    ld [hl], b
    ld [hl], b
    ld a, h
    ld a, b
    ld a, h
    inc l
    ld a, h
    nop
    nop
    nop
    nop

jr_005_5cf9:
    nop
    jr nc, jr_005_5d2c

    ld [$3008], sp
    jr nc, jr_005_5d7d

    inc l
    ld a, h
    ld a, b
    nop
    nop
    inc l
    db $10
    inc l

jr_005_5d09:
    inc l
    ld a, h
    ld a, h
    inc l
    inc l
    ld a, b
    ld a, h
    inc b
    inc b
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    inc l
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    ld [hl], b
    jr z, jr_005_5d27

    jr z, jr_005_5d51

    jr nc, jr_005_5d4f

    nop
    jr z, jr_005_5d4e

    ld l, h

jr_005_5d27:
    ld l, h
    jr z, jr_005_5d52

    jr z, @+$32

jr_005_5d2c:
    nop
    jr z, jr_005_5d5b

    jr z, jr_005_5d9d

    ld l, h
    ld l, h
    ld l, h
    inc l
    jr z, jr_005_5d63

    nop
    inc l
    jr nc, jr_005_5d67

    nop
    ld l, h
    ld l, h
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc l

jr_005_5d45:
    inc b
    inc l
    inc b
    nop
    jr nz, jr_005_5d4b

jr_005_5d4b:
    nop
    jr nz, jr_005_5d6e

jr_005_5d4e:
    nop

jr_005_5d4f:
    nop
    nop

jr_005_5d51:
    nop

jr_005_5d52:
    ld a, b
    ld a, h
    inc l
    jr z, @+$22

    jr nz, jr_005_5d81

    jr z, @+$22

jr_005_5d5b:
    jr nz, jr_005_5d89

    jr nz, jr_005_5d7f

    jr nz, jr_005_5d61

jr_005_5d61:
    nop
    ret nc

jr_005_5d63:
    nop
    nop
    nop
    nop

jr_005_5d67:
    ret nc

    nop
    nop
    jr nz, jr_005_5d98

    nop
    nop

jr_005_5d6e:
    ld a, b
    ld a, h
    ld d, b
    ld d, b
    nop
    nop
    jr nz, jr_005_5d96

    ld [$0008], sp
    nop
    jr z, jr_005_5da4

    ret nc

jr_005_5d7d:
    ret nc

    nop

jr_005_5d7f:
    nop
    ld d, b

jr_005_5d81:
    ld d, b
    jr nz, jr_005_5da4

    nop
    nop
    inc c
    nop
    nop

jr_005_5d89:
    inc c
    nop
    inc c
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc c

jr_005_5d96:
    inc c
    inc c

jr_005_5d98:
    inc c
    inc c
    inc c
    inc c
    db $10

jr_005_5d9d:
    db $10
    inc c
    inc c
    db $10
    inc c
    inc c
    inc c

jr_005_5da4:
    inc c
    db $10
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    nop
    nop
    jr nz, jr_005_5db2

jr_005_5db2:
    jr nz, jr_005_5dd4

    nop
    nop
    jr nz, @+$06

    nop
    jr nz, jr_005_5ddb

    jr nz, jr_005_5ddd

    nop
    jr nz, @+$06

    nop
    jr nz, @+$06

    jr nz, jr_005_5de5

    inc b
    jr nz, @+$06

    inc b
    jr nz, jr_005_5dcf

    jr nz, jr_005_5dcd

jr_005_5dcd:
    nop
    nop

jr_005_5dcf:
    jr nz, jr_005_5df1

    db $10
    jr nz, jr_005_5df4

jr_005_5dd4:
    db $10
    jr nz, jr_005_5df7

    jr nz, jr_005_5de5

    ld d, b
    inc c

jr_005_5ddb:
    nop
    nop

jr_005_5ddd:
    nop
    inc c
    inc c
    jr z, @+$2a

    inc c
    inc c
    db $10

jr_005_5de5:
    jr nz, @+$22

    jr nz, @+$22

    nop
    nop
    nop
    db $10
    inc b
    jr nz, jr_005_5df4

    inc b

jr_005_5df1:
    inc c
    inc b
    inc c

jr_005_5df4:
    db $10
    inc c
    inc c

jr_005_5df7:
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $0101
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
    nop
    inc b
    nop
    db $10
    db $10
    stop
    ld b, h
    db $10
    db $10
    db $10
    stop
    nop
    db $10
    db $10
    db $10
    rla
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop
    nop
    ld [bc], a
    ld de, $1147
    ld de, $1011
    stop
    nop
    ld de, $1171
    ld de, $1111
    db $10
    db $10
    ld bc, $1101
    ld de, $0000
    ld bc, $0101
    nop
    ld bc, $1101
    ld de, $1010
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [hl], b
    nop
    ld [hl], a
    ld de, $1141
    nop
    inc d

Call_005_5e5e:
    nop
    ld [hl], a
    nop
    ld b, c
    nop
    ld b, e
    ld de, $1411
    ld de, $4330
    nop
    nop
    ld b, c
    ld bc, $1100
    ld bc, $0001
    ld de, $1100
    ld bc, $0011
    db $10
    ld de, $1111
    ld de, $1010
    ld bc, $1101
    ld de, $0001
    ld de, $1111
    ld bc, $0000
    nop
    nop
    ld bc, $1100
    ld bc, $1111
    ld de, $4111
    ld de, $0000
    nop
    nop
    rlca
    nop
    ld [hl], a
    nop
    ld de, $1100
    ld de, $1177
    ld [hl], e
    ld de, $8800
    nop
    ld de, $1000
    ld de, $1111
    ld de, $1118
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld de, $1111
    ld [hl], a
    nop
    nop
    ld de, $1111
    ld de, $0171
    adc b
    ld de, $1177
    ld [hl], h
    ld de, $1010

Call_005_5ecc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0041
    nop
    nop
    nop
    inc h
    ld de, $1111
    nop
    ld de, $1100
    ld bc, $0001
    ld b, b
    inc b
    nop
    ld b, c
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $1101
    nop
    nop
    ld bc, $0001
    stop
    nop
    nop
    nop
    ld bc, $1101
    ld de, $0000
    ld de, $1001
    ld de, $0000
    ld bc, $8801
    ld de, $1181
    nop
    nop
    db $10
    stop
    nop
    nop
    inc h
    jr @+$13

    db $10
    db $10
    ld [hl], c
    ld de, $0000
    ld [hl], b
    ld [hl], b
    nop
    ld de, $1000
    ld de, $1871
    ld de, $0000
    ld [hl], c
    ld de, $1111
    nop
    db $10
    adc b
    ld de, $1111
    ld de, $1100
    ld [hl], b
    stop
    nop
    nop
    add c
    ld de, $8100
    ld bc, $1881
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    nop
    nop
    adc b
    ld de, $1111
    ld de, $1111
    ld de, $1101
    ld bc, $1110
    ld de, $7010
    nop
    nop
    ld bc, $7001
    db $10
    ld bc, $1007
    ld de, $1111
    rlca
    rlca
    ld de, $1111
    ld bc, $0010
    nop
    nop
    ld [hl], a
    nop
    ld de, $0011
    ld b, a
    ld de, $8811
    nop
    adc b
    nop
    nop
    ld de, $1100
    db $10
    ld [hl], b
    nop
    stop
    nop
    nop
    nop
    nop
    stop
    nop
    db $10
    db $10
    db $10
    stop
    nop
    adc b
    adc b
    jr @+$1a

    ld bc, $1100
    nop
    nop
    nop
    ld c, e
    ld de, $11bb
    ld b, c
    ld de, $0000
    nop
    nop
    nop
    ld de, $0000
    nop
    nop
    ld de, $0077
    cp e
    nop
    nop
    nop
    ld de, $1000
    ld bc, $1001
    stop
    ld bc, $1111
    inc d
    ld de, $1177
    ld [hl], c
    ld de, $1117
    ld b, c
    ld de, $cccc
    db $10
    ld de, $1800
    ld bc, $1011
    jr jr_005_5fe2

    add c

jr_005_5fe2:
    jr @+$1a

    add c
    add c
    nop
    ld bc, $1117
    ld [hl], c
    ld de, $1010
    nop
    ld de, $11bb
    ld [hl], h
    ld de, $0010
    ld a, b
    jr @-$7d

    add c
    ld [hl], h
    ld de, $0000
    nop
    nop
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    sbc a
    ld h, h
    xor c
    ld h, h
    ld a, [$1564]
    ld h, l
    dec hl
    ld h, l
    ld c, h
    ld h, l
    ld [hl], c
    ld h, l
    and l
    ld h, l
    jp c, Jump_000_1265

    ld h, [hl]
    dec a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    xor d
    ld h, [hl]
    pop de
    ld h, [hl]
    ld [$3967], sp
    ld h, a
    halt
    ld h, a
    xor a
    ld h, a
    ld b, $68
    rra
    ld l, b
    dec a
    ld l, b
    add $68
    ei
    ld l, b
    ld h, $69
    ld [hl], $69
    adc c
    ld l, c
    sbc h
    ld l, c
    inc c
    ld l, d
    ld [hl+], a
    ld l, d
    ld c, h
    ld l, d
    ld a, a
    ld l, d
    and a
    ld l, d
    cp l
    ld l, d
    db $f4
    ld l, d
    dec d
    ld l, e
    ld b, l
    ld l, e
    adc [hl]
    ld l, e
    rst RST_10
    ld l, e
    ld b, $6c
    jr nc, jr_005_60c0

    jr nc, jr_005_60c2

    jr nc, jr_005_60c4

    jr nc, jr_005_60c6

    add e
    ld l, h
    xor [hl]
    ld l, h
    pop de
    ld l, h
    ldh a, [c]
    ld l, h
    ld b, $6d
    ld c, c
    ld l, l
    ld l, a
    ld l, l
    ld d, l
    ld l, [hl]
    ld [hl], a
    ld l, [hl]
    sbc d
    ld l, [hl]
    pop de
    ld l, [hl]
    pop de
    ld l, [hl]
    inc l
    ld l, a
    ld [hl], $6f
    ld h, l
    ld l, a
    and c
    ld l, a
    xor e
    ld l, a
    dec l
    ld [hl], b
    ld d, d
    ld [hl], b
    add d
    ld [hl], b
    sub c
    ld [hl], b
    and e
    ld [hl], b
    bit 6, b
    ld e, $71
    ld c, d
    ld [hl], c
    sub [hl]
    ld [hl], c
    sbc $71
    ei
    ld [hl], c
    inc h
    ld [hl], d
    ld h, e
    ld [hl], d
    sub b
    ld [hl], d
    push de
    ld [hl], d
    dec bc
    ld [hl], e
    cpl
    ld [hl], e
    ld d, c
    ld [hl], e
    db $eb
    ld [hl], e
    jr c, jr_005_6118

    ld e, c
    ld [hl], h
    sub e
    ld [hl], h
    ld hl, $7d75
    ld [hl], l
    and d
    ld [hl], l
    and d
    ld [hl], l
    and d
    ld [hl], l
    inc [hl]
    halt
    inc [hl]
    halt
    xor l
    halt
    ret


    halt
    ret


    halt
    ld c, c
    ld [hl], a
    ld h, h
    ld [hl], a

jr_005_60c0:
    sbc h
    ld [hl], a

jr_005_60c2:
    ldh [c], a
    ld [hl], a

jr_005_60c4:
    dec hl
    ld a, b

jr_005_60c6:
    jr c, jr_005_6140

    ld b, e
    ld a, b
    ld h, a
    ld a, b
    rrca
    ld a, c
    ld e, h
    ld a, c
    ld e, [hl]
    ld a, c
    ld e, [hl]
    ld a, c
    ld e, [hl]
    ld a, c
    ld e, [hl]
    ld a, c
    or e
    ld a, c
    jp nc, $1679

    ld a, d
    ld d, $7a
    ld d, $7a
    ld h, $7a
    inc [hl]
    ld a, d
    ld b, e
    ld a, d
    ld d, c
    ld a, d
    ld e, h
    ld a, d
    ld h, a
    ld a, d
    ld [hl], d
    ld a, d
    add e
    ld a, d
    sub l
    ld a, d
    and a
    ld a, d
    cp b
    ld a, d
    add sp, $7a
    db $f4
    ld a, d
    add hl, bc
    ld a, e
    ld e, $7b
    inc sp
    ld a, e
    ld b, [hl]
    ld a, e
    ld e, c
    ld a, e
    ld l, h
    ld a, e
    ld a, a
    ld a, e
    sub d
    ld a, e
    and l
    ld a, e
    cp l
    ld a, e
    jp c, $e47b

    ld a, e
    ld sp, hl
    ld a, e
    rlca
    ld a, h

jr_005_6118:
    rla
    ld a, h
    inc h
    ld a, h
    inc sp
    ld a, h
    ld b, c
    ld a, h
    ld b, a
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld a, h
    ld h, b
    ld a, h
    ld l, e
    ld a, h
    ld [hl], l
    ld a, h
    ld a, a
    ld a, h
    adc b
    ld a, h
    sub b
    ld a, h
    sbc c
    ld a, h
    and d
    ld a, h
    xor e
    ld a, h
    or h
    ld a, h
    cp h
    ld a, h

jr_005_6140:
    call nz, $cc7c
    ld a, h
    call nc, $dd7c
    ld a, h
    push hl
    ld a, h
    db $ec
    ld a, h
    di
    ld a, h
    ld a, [$017c]
    ld a, l
    ld [$0f7d], sp
    ld a, l
    ld d, $7d
    inc e
    ld a, l
    inc hl
    ld a, l
    ld a, [hl+]
    ld a, l
    ld sp, $387d
    ld a, l
    ld a, $7d
    ld b, h
    ld a, l
    ld c, d
    ld a, l
    ld d, b
    ld a, l
    ld d, [hl]
    ld a, l
    ld e, h
    ld a, l
    ld h, d
    ld a, l
    ld l, b
    ld a, l
    ld l, [hl]
    ld a, l
    ld [hl], h
    ld a, l
    ld a, d
    ld a, l
    add b
    ld a, l
    add [hl]
    ld a, l
    adc h
    ld a, l
    sub d
    ld a, l
    sbc b
    ld a, l
    sbc [hl]
    ld a, l
    and h
    ld a, l
    xor d
    ld a, l
    or b
    ld a, l
    or [hl]
    ld a, l
    cp h
    ld a, l
    pop bc
    ld a, l
    add $7d
    bit 7, l
    ret nc

    ld a, l
    push de
    ld a, l
    jp c, $df7d

    ld a, l
    db $e4
    ld a, l
    jp hl


    ld a, l
    xor $7d
    di
    ld a, l
    ld hl, sp+$7d
    db $fd
    ld a, l
    ld [bc], a
    ld a, [hl]
    rlca
    ld a, [hl]
    inc c
    ld a, [hl]
    ld de, $167e
    ld a, [hl]
    dec de
    ld a, [hl]
    jr nz, jr_005_6234

    dec h
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl]
    cpl
    ld a, [hl]
    inc [hl]
    ld a, [hl]
    add hl, sp
    ld a, [hl]
    ld a, $7e
    ld b, e
    ld a, [hl]
    ld c, b
    ld a, [hl]
    ld c, l
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, a
    ld a, [hl]
    ld e, h
    ld a, [hl]
    ld h, c
    ld a, [hl]
    ld h, [hl]
    ld a, [hl]
    ld l, e
    ld a, [hl]
    ld [hl], b
    ld a, [hl]
    ld [hl], l
    ld a, [hl]
    ld a, d
    ld a, [hl]
    ld a, a
    ld a, [hl]
    add h
    ld a, [hl]
    adc c
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    sub e
    ld a, [hl]
    sub a
    ld a, [hl]
    sbc e
    ld a, [hl]
    sbc [hl]
    ld a, [hl]
    and c
    ld a, [hl]
    and h
    ld a, [hl]
    xor h
    ld a, [hl]
    or l
    ld a, [hl]
    cp c
    ld a, [hl]
    cp l
    ld a, [hl]
    pop bc
    ld a, [hl]
    push bc
    ld a, [hl]
    ret nc

    ld a, [hl]
    call nc, $d87e
    ld a, [hl]
    call c, $e07e
    ld a, [hl]
    db $e4
    ld a, [hl]
    add sp, $7e
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    db $ec
    ld a, [hl]
    jr z, jr_005_628d

    dec hl
    ld h, e
    ld l, $63
    ld sp, $3463
    ld h, e
    scf
    ld h, e

jr_005_6234:
    scf
    ld h, e
    scf
    ld h, e
    inc a
    ld h, e
    ld b, c
    ld h, e
    ld b, [hl]
    ld h, e
    ld c, e
    ld h, e
    ld d, b
    ld h, e
    ld d, l
    ld h, e
    ld e, d
    ld h, e
    ld e, l
    ld h, e
    ld h, e
    ld h, e
    ld h, [hl]
    ld h, e
    ld h, [hl]
    ld h, e
    ld h, [hl]
    ld h, e
    ld h, [hl]
    ld h, e
    ld l, e
    ld h, e
    ld l, [hl]
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], h
    ld h, e
    ld [hl], a
    ld h, e
    ld a, d
    ld h, e
    ld a, l
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add e
    ld h, e
    add [hl]
    ld h, e
    adc c
    ld h, e
    adc h
    ld h, e
    adc a
    ld h, e
    sub d
    ld h, e
    sub l
    ld h, e
    sbc b
    ld h, e
    sbc e
    ld h, e
    sbc [hl]
    ld h, e
    and c
    ld h, e
    and h
    ld h, e
    and a
    ld h, e
    xor d
    ld h, e
    xor l

jr_005_628d:
    ld h, e
    or b
    ld h, e
    or e
    ld h, e
    or [hl]
    ld h, e
    cp d
    ld h, e
    cp l
    ld h, e
    rst RST_08
    ld h, e
    ret nz

    ld h, e
    jp $c663


    ld h, e
    ret


    ld h, e
    call z, $d263
    ld h, e
    sub $63
    jp c, $dd63

    ld h, e
    ldh [$ff63], a
    db $e3
    ld h, e
    and $63
    jp hl


    ld h, e
    db $ec
    ld h, e
    rst RST_28
    ld h, e
    ldh a, [c]
    ld h, e
    push af
    ld h, e
    ld hl, sp+$63
    ei
    ld h, e
    cp $63
    ld bc, $0464
    ld h, h
    rlca
    ld h, h
    ld a, [bc]
    ld h, h
    dec c
    ld h, h
    db $10
    ld h, h
    inc de
    ld h, h
    inc de
    ld h, h
    ld d, $64
    ld hl, $2164
    ld h, h
    ld hl, $2164
    ld h, h
    ld hl, $2164
    ld h, h
    ld hl, $2164
    ld h, h
    ld hl, $2464
    ld h, h
    daa
    ld h, h
    ld a, [hl+]
    ld h, h
    dec l
    ld h, h
    jr nc, jr_005_6354

    inc sp
    ld h, h
    ld [hl], $64
    add hl, sp
    ld h, h
    inc a
    ld h, h
    ccf
    ld h, h
    ld b, d
    ld h, h
    ld b, l
    ld h, h
    ld b, l
    ld h, h
    ld b, l
    ld h, h
    ld c, b
    ld h, h
    ld c, e
    ld h, h
    ld c, [hl]
    ld h, h
    ld d, c
    ld h, h
    ld d, h
    ld h, h
    ld d, a
    ld h, h
    ld e, d
    ld h, h
    ld e, l
    ld h, h
    ld h, b
    ld h, h
    ld h, e
    ld h, h
    ld l, b
    ld h, h
    ld l, e
    ld h, h
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld h, h
    ld a, b
    ld h, h
    ld a, e
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    nop
    ld a, [hl+]
    ld [hl], b
    nop
    add hl, hl
    ld bc, $2900
    ld [bc], a
    nop
    add hl, hl
    inc bc
    nop
    ld a, [hl+]
    ld d, l
    ld bc, $0229
    dec b
    inc d
    ld bc, $022a
    ld b, $14
    ld bc, $0229
    rlca
    inc d
    ld bc, $022b
    ld [$0114], sp
    ld a, [hl+]
    ld [bc], a
    add hl, bc
    inc d
    ld bc, $022a
    ld a, [bc]

jr_005_6354:
    inc d
    ld bc, $022b
    dec bc
    inc d
    nop
    ld a, [hl+]
    inc c
    inc b
    add hl, hl
    db $10
    dec d
    db $10
    dec c
    nop
    ld a, [hl+]
    ld de, $2a05
    jr z, jr_005_6384

    add hl, de
    nop
    ld a, [hl+]
    dec a
    nop
    ld a, [hl+]
    adc d
    nop
    ld a, [hl+]
    adc h
    nop
    ld a, [hl+]
    adc l
    nop
    ld a, [hl+]
    adc [hl]
    nop
    ld a, [hl+]
    adc a
    nop
    ld a, [hl+]
    sub b
    nop
    ld a, [hl+]
    dec e
    nop

jr_005_6384:
    dec hl
    ld e, $00
    ld a, [hl+]
    rra
    nop
    dec hl
    jr nz, jr_005_638d

jr_005_638d:
    dec hl
    ld hl, $2a00
    ld [hl+], a
    nop
    dec hl
    ld [hl+], a
    nop
    ld a, [hl+]
    ld [hl+], a
    nop
    ld a, [hl+]
    ld [hl+], a
    nop
    ld a, [hl+]
    inc hl
    nop
    ld a, [hl+]
    inc h
    nop
    dec hl
    dec h
    nop
    ld a, [hl+]
    ld h, $00
    ld a, [hl+]
    daa
    nop
    add hl, hl
    cpl
    nop
    ld a, [hl+]
    jr nc, jr_005_63b1

jr_005_63b1:
    ld a, [hl+]
    ld sp, $2a00
    ld [hl-], a
    ld b, $29
    jr c, jr_005_6436

    nop
    ld a, [hl+]
    add hl, sp
    nop
    ld a, [hl+]
    ld a, [hl-]
    nop
    add hl, hl
    ld a, $00
    ld a, [hl+]
    ccf
    nop
    add hl, hl
    ld b, b
    nop
    ld a, [hl+]
    ld b, c
    nop
    add hl, hl
    ld b, d
    nop
    ld a, [hl+]
    dec sp
    rlca
    add hl, hl
    ld b, [hl]
    ld b, e
    ld [$4f29], sp
    ld c, d
    nop
    ld a, [hl+]
    ld c, e
    nop
    ld a, [hl+]
    ld c, h
    nop
    ld a, [hl+]
    ld c, l
    nop
    ld a, [hl+]
    ld c, [hl]
    nop
    ld a, [hl+]
    ld d, b
    nop
    add hl, hl
    ld d, c
    nop
    add hl, hl
    ld d, d
    nop
    ld a, [hl+]
    ld d, e
    nop
    add hl, hl
    ld d, h
    nop
    add hl, hl
    ld e, b
    nop
    add hl, hl
    ld e, d
    nop
    ld a, [hl+]
    ld h, d
    nop
    ld a, [hl+]
    ld h, e
    nop
    ld a, [hl+]
    ld h, d
    nop
    ld a, [hl+]
    ld h, e
    nop
    ld a, [hl+]
    ld h, d
    nop
    ld a, [hl+]
    ld h, e
    nop
    ld a, [hl+]
    ld h, h
    nop
    add hl, hl
    ld h, l
    nop
    ld a, [hl+]
    ld h, [hl]
    db $10
    ld a, [hl+]
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    ld a, [hl+]
    jr jr_005_6425

jr_005_6425:
    ld a, [hl+]
    rla
    nop
    ld a, [hl+]
    ld [hl], c
    nop
    ld a, [hl+]
    ld [hl], d
    nop
    add hl, hl
    ld d, $00
    add hl, hl
    inc sp
    nop
    ld a, [hl+]
    ld c, c

jr_005_6436:
    nop
    ld a, [hl+]
    inc l
    nop
    ld a, [hl+]
    ld [hl], e
    nop
    ld a, [hl+]
    ld [hl], h
    nop
    ld a, [hl+]
    ld [hl], l
    nop
    ld a, [hl+]
    halt
    nop
    ld a, [hl+]
    ld [hl], a
    nop

jr_005_6449:
    ld a, [hl+]
    ld a, b
    nop
    ld a, [hl+]
    ld a, c
    nop
    ld a, [hl+]
    ld a, d
    nop
    ld a, [hl+]
    inc de
    nop
    ld a, [hl+]
    ld l, l
    nop
    add hl, hl
    inc b
    nop
    add hl, hl
    inc b
    nop
    ld a, [hl+]
    inc b
    nop
    ld a, [hl+]
    ld [de], a
    ld bc, $022a
    ld l, e
    ld [de], a
    nop
    ld a, [hl+]
    ld l, h
    nop
    ld a, [hl+]

jr_005_646d:
    ld b, a
    ld [bc], a
    ld a, [hl+]
    db $10
    dec l
    ld l, $02
    ld a, [hl+]

jr_005_6475:
    jr nz, jr_005_64b2

    dec a
    nop
    add hl, hl
    ld a, e
    ld [$6129], sp
    ld e, l
    ld b, c

jr_005_6480:
    ld c, [hl]
    jr nz, jr_005_64d8

    ld c, [hl]
    cp [hl]
    ld c, [hl]

jr_005_6486:
    jr nz, jr_005_6505

    or d
    db $eb
    ld a, h
    add [hl]
    db $eb
    jr nz, jr_005_646d

    ld a, l
    cp l
    jr nz, jr_005_6480

    jr nz, jr_005_6449

jr_005_6495:
    db $eb
    ld a, h
    ld b, a
    ld d, a
    ld b, c
    ld b, c
    ld c, b
    ld c, b
    ld hl, $d27f
    jr nz, jr_005_6486

    db $eb
    jr nz, jr_005_6475

    ld a, l
    sbc e
    db $eb
    ld a, a
    add e
    ld hl, $527c
    ld b, l
    ld d, h
    ld d, l
    ld d, d
    ld c, [hl]

jr_005_64b2:
    db $eb
    jr nz, jr_005_6495

    jr nz, jr_005_6495

    ld a, l
    xor [hl]
    jr nz, jr_005_6537

jr_005_64bb:
    ld c, c
    ld c, l
    ld c, l
    ld b, l
    ld b, h
    ld c, c
    ld b, c
    ld d, h
    ld b, l
    ld c, h
    ld e, c
    db $eb
    ld a, h
    ld c, b
    ld d, l
    ld d, d
    ld d, d
    ld e, c
    inc l
    jr nz, @+$44

    ld b, l
    push hl
    ld b, l

jr_005_64d3:
    ld a, l
    jp nc, Jump_005_4320

    ld c, h

jr_005_64d8:
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_005_64bb

    ld a, h
    ld b, h

jr_005_64df:
    ld c, c
    ld c, l

jr_005_64e1:
    ld b, l
    ld c, [hl]
    ld d, e
    ld c, c
    ld c, a
    ld c, [hl]
    jr nz, jr_005_6539

    ld c, a
    ld d, d
    ld d, h
    ld b, c
    ld c, h
    ld a, l
    call nc, $4c20
    ld b, l
    ld b, c
    ld b, h
    ld d, e

jr_005_64f6:
    jr nz, @-$3c

    ld l, $7f
    rst RST_20
    jr nz, jr_005_64e1

    jr nz, @-$21

    ld hl, $7d3f
    sbc d
    jr nz, @+$50

jr_005_6505:
    ld c, a
    ld d, h
    ld a, h
    ld c, h
    ld b, l
    ld b, c
    ld d, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_64d3

    ld l, $7c

jr_005_6513:
    ld [hl], d
    add hl, de
    add e
    ld hl, $dd20
    ld a, h

jr_005_651a:
    ld b, [hl]
    ld c, c
    ld c, [hl]
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    jr nz, @+$4f

    ld b, c
    ld b, h
    ld b, l
    ld a, l
    ld c, c

jr_005_6528:
    ld d, h
    db $eb
    ld a, a
    call $de20
    jr nz, jr_005_6513

    ld a, l

jr_005_6531:
    pop hl
    jr nz, @-$20

    jr nz, @-$1c

    inc l

jr_005_6537:
    ld a, h
    ld b, c

jr_005_6539:
    jr nz, jr_005_657f

    ld b, c
    ld c, l
    ld b, c
    ld b, a
    ld b, l
    ld b, h
    jr nz, jr_005_64f6

    ld a, l
    jp hl


jr_005_6545:
    jr nz, jr_005_6589

jr_005_6547:
    ld b, l

jr_005_6548:
    jr nz, @-$73

jr_005_654a:
    ld l, $7f
    ld c, l
    ld c, a
    ld d, e
    ld d, h
    jr nz, @-$1d

    jr nz, jr_005_65a9

    ld d, e
    jr nz, jr_005_651a

    ld a, l
    or h
    jr nz, jr_005_64df

    db $eb

jr_005_655c:
    ld a, h
    ret c

jr_005_655e:
    jr nz, jr_005_6547

    jr nz, jr_005_6531

    ld a, l
    adc e
    jr nz, jr_005_654a

    ld a, h
    ld c, b
    ld c, c
    ld b, h
    ld c, c
    ld c, [hl]

jr_005_656c:
    ld b, a
    jr nz, jr_005_6531

    ld l, $7f
    ld d, a
    ld c, b
    ld b, l

jr_005_6574:
    ld c, [hl]
    jr nz, @-$2c

    jr nz, jr_005_6548

    ld a, h
    add [hl]
    inc l
    jr nz, jr_005_655c

    ld a, l

jr_005_657f:
    ld b, d
    ld b, c
    ld d, d
    xor $2c
    jr nz, jr_005_6545

jr_005_6586:
    inc l

jr_005_6587:
    ld a, h
    ld c, h

jr_005_6589:
    ld c, a
    ld d, e

jr_005_658b:
    ld d, h
    jr nz, jr_005_656c

    jr nz, @-$38

    ld c, h

jr_005_6591:
    ld c, c

jr_005_6592:
    ld c, [hl]
    ld a, l
    and d
    jr nz, jr_005_655c

jr_005_6597:
    ld c, [hl]
    jr nz, @+$4a

    ld c, c
    ld c, l
    ld a, h

jr_005_659d:
    ld b, d
    ld e, c
    jr nz, jr_005_655e

    jr nz, jr_005_6528

    ld l, $7f
    ld c, c
    ld b, [hl]
    jr nz, jr_005_6586

jr_005_65a9:
    jr nz, jr_005_6574

    jr nz, jr_005_658b

    ld a, l
    adc h
    jr nz, jr_005_6592

    jr nz, jr_005_6591

    ld a, h
    add sp, $20
    ret c

jr_005_65b7:
    dec l
    ld a, l
    xor h
    jr nz, jr_005_6605

    ld c, [hl]
    jr nz, jr_005_659d

    ld a, h
    xor [hl]
    inc l
    jr nz, @-$20

    ld a, l
    ld d, a
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld b, l
    ld b, h
    jr nz, jr_005_65b7

jr_005_65ce:
    jr nz, jr_005_6612

    ld b, l
    ld a, h
    ld c, b
    ld b, l
    ld b, c
    ld c, h
    ld b, l
    ld b, h
    ld l, $7f
    ld b, d
    ld c, h

jr_005_65dc:
    ld b, c
    ld b, e
    ld c, e
    jr nz, jr_005_6587

    ld hl, $2121
    ld a, h

jr_005_65e5:
    jp z, Jump_005_4120

    jr nz, @+$54

    ld b, l
    ld d, e
    ld d, l
    ld d, d
    ld d, d
    ld b, l
    ld b, e
    dec l
    ld a, l
    pop de

jr_005_65f4:
    jr nz, jr_005_6597

    jr nz, @-$56

    ld a, h
    call nz, $4920
    ld b, [hl]
    jr nz, jr_005_65dc

    jr nz, jr_005_65e5

    ld a, l
    ldh [rHDMA5], a
    ld b, e

jr_005_6605:
    ld c, b
    ld b, l
    ld b, h
    jr nz, @+$44

    ld e, c
    jr nz, jr_005_65ce

    ld a, h
    call z, $21ba
    ld a, a

jr_005_6612:
    cp a

jr_005_6613:
    jr nz, jr_005_65f4

    jr nz, jr_005_665e

    ld c, c
    ld b, [hl]

jr_005_6619:
    ld d, h
    ld b, l
    ld b, h
    ld a, l
    call Call_005_5320

jr_005_6620:
    ld b, l
    ld b, e
    ld c, a

jr_005_6623:
    ld c, [hl]
    ld b, h
    ld a, h
    ld d, e
    ld c, c
    ld b, a

jr_005_6629:
    ld c, b
    ld d, h
    ld l, $20
    ld d, e
    ld b, l
    ld b, l
    ld c, e
    jr nz, jr_005_667b

    rst RST_18
    ld a, l
    ld b, c
    ld b, h
    ld d, [hl]
    ld c, c
    ld b, e
    ld b, l
    ld l, $7f
    db $d3
    jr nz, @-$1f

jr_005_6640:
    jr nz, jr_005_6620

    jr nz, jr_005_6696

    ld c, a
    ld c, a
    ld c, l
    ld a, h
    pop hl
    jr nz, jr_005_6629

    jr nz, jr_005_668f

    ld b, c
    ld d, d
    xor $2c
    ld a, l
    cp a
    ld l, $7f
    ld c, c
    daa
    ld c, l
    jr nz, jr_005_6619

    ld l, $20

jr_005_665c:
    jr nz, jr_005_66a7

jr_005_665e:
    daa
    ld c, l
    ld a, h
    ld b, c
    ld b, [hl]
    ld d, d
    ld b, c
    ld c, c
    ld b, h
    jr nz, jr_005_66b2

    jr nz, jr_005_6613

    ld a, l
    call nz, $dd20
    ld l, $7c
    call $554f
    ld d, h
    jr nz, @+$4f

    ld e, c
    jr nz, jr_005_6640

    dec l

jr_005_667b:
    ld a, l
    ld c, h
    ld c, c
    ld c, [hl]
    jr nz, jr_005_6623

    inc l
    jr nz, jr_005_66d1

    ld e, c
    ld a, h
    xor l
    ld d, e
    jr nz, @-$1a

    jr nz, jr_005_665c

jr_005_668c:
    ld a, l
    ld c, h

jr_005_668e:
    ld c, c

jr_005_668f:
    ld c, l
    ld c, c
    ld d, h
    ld b, l
    ld b, h
    ld l, $20

jr_005_6696:
    jr nz, jr_005_66e1

jr_005_6698:
    ld b, [hl]
    ld a, h
    cp e
    jr nz, @+$4b

    jr nz, jr_005_66e7

    ld b, c
    ld b, h
    jr nz, jr_005_66ec

jr_005_66a3:
    ld d, h
    ld a, l
    or l
    db $eb

jr_005_66a7:
    ld a, h
    ld a, [hl]
    nop
    ret nz

    jr nz, @-$39

    jr nz, jr_005_668c

    jr nz, jr_005_66f2

    ld a, l

jr_005_66b2:
    ld b, a
    ld c, c
    ld b, [hl]
    ld d, h
    jr nz, @+$4b

    ld b, [hl]
    jr nz, jr_005_6698

    ld a, h
    ld b, c
    ld b, a
    ld d, d
    ld b, l
    ld b, l
    jr nz, jr_005_66a3

    jr nz, jr_005_668e

    jr nz, jr_005_6710

    ld d, h
    ld a, l
    push hl
    jr nz, @+$4f

    ld b, l
    ld l, $7c
    ld a, [hl]
    nop

jr_005_66d1:
    db $dd
    daa

jr_005_66d3:
    ld c, h
    ld c, h
    jr nz, jr_005_671b

    ld c, a
    jr nz, jr_005_6723

    ld d, h
    ccf
    ld a, l
    ld b, a
    ld d, d
    ld b, l
    ld b, c

jr_005_66e1:
    ld d, h
    ld hl, $d320
    jr nz, @-$1f

jr_005_66e7:
    ld a, h
    sbc $20
    ld b, [hl]

jr_005_66eb:
    ld c, c

jr_005_66ec:
    ld c, [hl]
    ld b, a
    ld b, l
    ld d, d
    ld c, [hl]
    ld b, c

jr_005_66f2:
    ld c, c

jr_005_66f3:
    ld c, h
    ld a, l
    pop hl
    jr nz, @-$20

    jr nz, jr_005_674d

    ld d, b
    ld b, l
    ld b, e
    ld d, h
    ld d, d
    ld b, l
    ld l, $79
    ld l, $78
    ld bc, $2177
    ld a, h

jr_005_6708:
    ld d, a
    ld c, b
    ld b, l
    ld c, [hl]

jr_005_670c:
    jr nz, jr_005_66eb

    jr nz, jr_005_66d3

jr_005_6710:
    ld a, l
    ld c, c
    ld d, h
    inc l
    jr nz, jr_005_66f3

    jr nz, @-$30

    jr nz, jr_005_675c

    ld b, l

jr_005_671b:
    dec l
    ld a, h
    cp b
    jr nz, @-$58

    jr nz, jr_005_6708

    ld a, l

jr_005_6723:
    ld b, d
    ld b, l
    jr nz, jr_005_6768

    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_005_670c

    jr nz, jr_005_6774

    ld c, h

jr_005_672f:
    ld e, c
    ld a, h
    ld c, b
    ld c, c
    ld b, a

jr_005_6734:
    ld c, b
    ld b, l

jr_005_6736:
    ld d, d
    ld l, $7f

jr_005_6739:
    call nz, Call_005_4d20
    ld b, l
    ld hl, $2020
    db $dd
    ld a, l
    db $e4

jr_005_6743:
    ld c, [hl]
    daa
    ld d, h
    jr nz, jr_005_6736

    jr nz, @-$1d

    ld a, h
    sbc $4d

jr_005_674d:
    inc l
    jr nz, jr_005_6734

    jr nz, jr_005_672f

    ccf
    ld a, h
    ld c, c
    jr nz, jr_005_6743

    jr nz, @+$55

    ld c, a
    jr nz, jr_005_67af

jr_005_675c:
    or a

jr_005_675d:
    ld b, h
    ld l, $7d
    ld c, a
    ld d, l
    ld d, d
    jr nz, @+$43

    ld d, h
    ld d, h
    ld b, c

jr_005_6768:
    ld b, e
    ld c, e
    ld b, l
    ld d, d
    ld d, e
    ld a, h
    ld d, a
    ld b, l
    ld c, [hl]
    ld d, h

jr_005_6772:
    jr nz, @-$33

jr_005_6774:
    ld l, $7f
    ld b, c
    jr nz, jr_005_67c0

    ld b, c
    ld d, d
    ld b, a
    ld c, a
    ld e, c
    ld c, h
    ld b, l
    ld hl, $4320
    ld c, a
    ld c, l
    dec l
    ld a, l
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_67df

    ld c, a
    jr nz, jr_005_67d5

    ld b, c
    ld d, d
    jr nz, jr_005_6772

    ld a, h
    ld c, c
    ld c, l
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    ld c, c
    ld d, [hl]
    ld b, l
    inc l
    jr nz, jr_005_67e3

    ld d, l
    ld d, h
    ld a, l
    jp nz, $dd20

    jr nz, @+$46

    ld c, c
    ld b, l
    ld l, $7c
    ld [hl], d

jr_005_67ae:
    add hl, de

jr_005_67af:
    db $dd
    jr nz, jr_005_6739

    jr nz, @-$20

    ld a, l
    add $4c
    ld c, c
    ld c, [hl]
    jr nz, jr_005_675d

    ld l, $79
    dec l
    ld a, b

jr_005_67bf:
    ld [bc], a

jr_005_67c0:
    ld a, h
    ld b, c
    ld c, [hl]
    jr nz, jr_005_680e

    ld c, [hl]

jr_005_67c6:
    ld b, e
    ld [$4249], a
    ld c, h
    ld b, l
    ld a, l
    push hl
    ld b, e
    ld b, l
    jr nz, @-$1f

jr_005_67d2:
    jr nz, jr_005_6816

    ld d, l

jr_005_67d5:
    ld c, c
    ld c, h
    ld b, h
    dec l
    ld a, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_6828

jr_005_67df:
    ld c, [hl]
    jr nz, jr_005_67bf

    ld d, d

jr_005_67e3:
    ld a, l
    or e
    ld l, $20
    jr nz, jr_005_67c6

    jr nz, jr_005_67ae

    ld a, h
    sbc $20
    xor l
    jr nz, jr_005_67d2

    jr nz, @-$20

    ld a, l
    ld b, d
    ld c, h
    ld c, a
    ld b, e
    ld c, e
    dec l
    ld b, d
    ld d, l

jr_005_67fc:
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    ld l, $79
    ld l, $77
    ld de, $447f
    ld c, c
    ld b, h
    jr nz, @-$21

    jr nz, jr_005_684f

    ld d, d

jr_005_680e:
    ld c, c
    ld c, [hl]
    ld b, a
    ld a, l
    or l
    jr nz, @+$4f

    ld e, c

jr_005_6816:
    jr nz, @-$38

    ld c, h
    ld c, c
    ld c, [hl]
    ld a, h
    and d
    ccf
    ld a, a
    call nc, Call_005_5327
    jr nz, jr_005_686d

    ld d, h
    ld hl, $2020

jr_005_6828:
    ld c, c
    ld a, l
    ld c, a
    ld d, a
    ld b, l

jr_005_682d:
    jr nz, @-$21

    jr nz, jr_005_687e

    ld e, c
    jr nz, jr_005_687c

    ld b, c
    ld d, b
    dec l
    ld a, h
    ld d, b
    ld c, c
    cp d
    ld l, $7f
    ld e, c
    ld b, l
    ld d, e
    db $eb
    jr nz, jr_005_688c

    jr nz, @-$15

    ld a, l
    ld b, [hl]

jr_005_6847:
    ld b, l
    ld b, l
    ld c, h
    jr nz, jr_005_6899

    ld e, c
    jr nz, jr_005_67fc

jr_005_684f:
    ld a, h
    ld d, d
    ld b, l
    ld d, h
    ld d, l
    ld d, d
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    db $eb
    ld a, l
    ld c, a
    ld c, b
    jr nz, jr_005_68ad

    ld c, a
    ld hl, $4920
    jr nz, jr_005_68b8

    ld b, l
    ld b, l
    jr nz, jr_005_6847

    ld a, h
    cp l
    jr nz, @+$47

jr_005_686d:
    ld c, [hl]
    ld d, [hl]
    ld b, l

jr_005_6870:
    ld c, h
    ld c, a
    ld d, b
    ld b, l
    ld b, h

jr_005_6875:
    ld a, l

jr_005_6876:
    ld c, c
    ld c, [hl]
    jr nz, jr_005_68c0

    ld c, h
    ld b, c

jr_005_687c:
    ld c, l
    ld b, l

jr_005_687e:
    ld d, e
    ld l, $7c
    add e
    ld hl, $4820
    ld d, l
    ld d, d
    ld d, d
    ld e, c
    ld a, l
    ld d, l
    ld d, b

jr_005_688c:
    ld hl, $d520
    jr nz, @-$2b

    ld a, h
    sub d

jr_005_6893:
    jr nz, jr_005_6876

    jr nz, jr_005_6875

    ld a, l
    ld d, b

jr_005_6899:
    ld c, a
    ld c, h
    ld d, h
    ld b, l
    ld d, d
    ld b, a
    ld b, l
    rst RST_18
    ld d, h
    jr nz, @-$1e

    ld a, h
    cp l
    jr nz, jr_005_682d

jr_005_68a8:
    ld l, $7c
    db $dd
    jr nz, jr_005_6870

jr_005_68ad:
    jr nz, @-$20

    ld a, l
    sub d
    jr nz, @-$1d

    jr nz, jr_005_6893

    ld a, h

jr_005_68b6:
    ld d, b
    ld c, a

jr_005_68b8:
    ld c, h
    ld d, h
    ld b, l
    ld d, d
    ld b, a
    ld b, l
    rst RST_18
    ld d, h

jr_005_68c0:
    ld l, $79
    dec l
    ld a, b
    inc b
    ld a, a
    db $dd

jr_005_68c7:
    jr nz, jr_005_6919

    ld b, c
    ld d, e
    ld d, e
    ld b, l
    ld b, h
    ld a, l
    ld d, h
    ld c, b
    ld d, d
    ld c, a

jr_005_68d3:
    ld d, l
    ld b, a
    ld c, b
    jr nz, jr_005_68b6

    ld a, h
    ld b, h
    ld c, c
    ld c, l
    ld b, l
    ld c, [hl]
    ld d, e
    ld c, c
    ld c, a
    ld c, [hl]
    jr nz, jr_005_6934

jr_005_68e4:
    ld c, a

jr_005_68e5:
    ld d, d
    ld d, h
    ld b, c
    ld c, h
    ld a, l
    and $20
    ld d, d
    ld b, l
    ld b, c
    ld b, e
    ld c, b
    ld b, l
    ld b, h

jr_005_68f3:
    jr nz, jr_005_68d3

    ld a, h
    xor d
    jr nz, @-$50

    ld l, $7f
    db $dd
    jr nz, jr_005_6941

    ld c, b
    ld b, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld b, h

jr_005_6904:
    jr nz, jr_005_68e4

    ld a, l
    ld d, d
    ld b, l
    ld d, e
    ld d, l

jr_005_690b:
    ld d, d

jr_005_690c:
    ld d, d
    ld b, l
    ld b, e
    pop de
    ld a, h
    and c
    ld l, $20
    jr nz, jr_005_68f3

jr_005_6916:
    daa
    ld d, [hl]
    ld b, l

jr_005_6919:
    ld a, h
    or h
    jr nz, jr_005_68a8

    jr nz, jr_005_6968

    ld c, [hl]
    ld a, l

jr_005_6921:
    sbc $20

jr_005_6923:
    xor [hl]
    ld l, $7f
    ld d, l
    ld d, b
    jr nz, jr_005_68c7

    jr nz, jr_005_690b

    jr nz, jr_005_690c

jr_005_692e:
    ld a, l
    sbc b
    jr nz, @-$1d

    ld a, h
    add l

jr_005_6934:
    ld l, $7f
    db $e4
    jr nz, jr_005_6916

    jr nz, jr_005_6982

    ld c, a
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_6921

jr_005_6941:
    ld a, l
    ret


    jr nz, jr_005_6923

    jr nz, jr_005_6904

    ccf
    ld a, h
    ld c, b
    rst RST_18
    jr nz, jr_005_68e5

    jr nz, jr_005_692e

    jr nz, @+$57

    ld d, b
    ld a, l
    sbc l
    ld l, $20
    ld b, d
    ld d, l
    ld d, h
    jr nz, @-$3d

    ld a, h
    jp c, Jump_005_5720

    ld b, c
    ld c, h
    cp l
    ld a, l
    ld c, c
    ld c, [hl]
    ldh [rNR41], a
    ld b, h

jr_005_6968:
    ld b, l
    ld b, c
    ld d, h
    ld c, b
    daa
    ld d, e
    ld a, h

jr_005_696f:
    ld b, c
    ld d, d
    ld c, l
    ld d, e
    ld l, $20
    jr nz, jr_005_69c0

    ld a, l
    ld d, a
    ld c, a
    ld d, l
    ld c, h
    ld b, h
    ld c, [hl]
    daa
    ld d, h
    jr nz, jr_005_69c9

jr_005_6982:
    ld c, a
    ld a, h
    xor a
    ld l, $7c

jr_005_6987:
    ld a, [hl]
    ld bc, $20d4
    ld d, a
    ld b, c
    ld e, c
    jr nz, jr_005_696f

    ld a, l
    ld c, b
    ld b, l
    ld b, c
    ld c, h
    ld d, h

jr_005_6996:
    ld c, b
    ld c, c
    ld b, l
    ld d, d
    ld l, $7f
    ld b, [hl]

jr_005_699d:
    ld c, c
    ld c, [hl]
    ld b, c
    ld c, h
    ld c, h
    ld e, c

jr_005_69a3:
    ld l, $20
    xor $20
    pop hl
    ld a, l
    ld b, e

jr_005_69aa:
    ld c, a
    ld d, l
    ld d, d
    ld b, c
    ld b, a
    ld b, l
    ld l, $20

jr_005_69b2:
    jr nz, jr_005_6987

    ld a, h
    rst RST_18
    jr nz, jr_005_6996

    jr nz, @-$5e

    jr nz, jr_005_699d

    ld a, l
    sbc $20
    ld b, h

jr_005_69c0:
    ld d, d
    ld b, c
    ld b, a
    ld c, a
    ld c, [hl]
    ld l, $20

jr_005_69c7:
    jr nz, jr_005_6a16

jr_005_69c9:
    ld b, c
    ld e, c
    ld a, h
    ld c, c
    ld d, h
    jr nz, @+$4d

    ld b, l
    ld b, l
    ld d, b
    jr nz, jr_005_69b2

    ld a, l
    rst RST_20
    ld c, h
    ld b, l
    ld l, $79
    ld l, $7c
    db $dd
    jr nz, jr_005_69a3

    jr nz, jr_005_69c0

    ld a, l
    and b
    jr nz, jr_005_69c7

    jr nz, @-$20

jr_005_69e8:
    ld a, h
    ld b, h
    ld d, d
    ld b, c
    ld b, a

jr_005_69ed:
    ld c, a
    ld c, [hl]
    ld l, $7c

jr_005_69f1:
    db $dd
    ld d, d
    jr nz, @+$58

    ld c, c
    ld d, h
    ld b, c
    ld c, h
    ld c, c
    ld d, h
    ld e, c
    ld a, l
    ld c, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h
    jr nz, jr_005_69f1

    ld a, h
    add d
    ld l, $77
    add e
    ld a, b
    ld [$497f], sp
    ld b, [hl]
    jr nz, jr_005_69ed

    jr nz, jr_005_6a59

    ld c, a
    jr nz, @-$55

    inc l

jr_005_6a16:
    ld a, l
    db $dd
    jr nz, jr_005_69e8

    jr nz, @-$35

    ld a, h

jr_005_6a1d:
    sbc $20

jr_005_6a1f:
    sbc b
    ld l, $7f
    cp l
    jr nz, jr_005_69aa

    ccf
    jr nz, jr_005_6a71

    ld a, l
    ld c, b
    ld b, l
    ld b, c

jr_005_6a2c:
    ld d, d
    ld b, h
    jr nz, jr_005_6a78

jr_005_6a30:
    ld b, l
    jr nz, jr_005_6a1f

    ld a, h
    ld c, e
    ld c, c

jr_005_6a36:
    ld c, h

jr_005_6a37:
    ld c, h
    ld b, l

jr_005_6a39:
    ld b, h
    jr nz, jr_005_6a7e

    ld e, c
    jr nz, jr_005_6a1d

    ld a, l
    ld b, h
    ld b, l
    ld d, e
    ld d, h
    ld d, d
    ld c, a

jr_005_6a46:
    ld e, c
    ld b, l
    ld d, d
    ld d, e
    ld l, $7f
    ld c, b
    ld b, l
    jr nz, jr_005_6a1d

jr_005_6a50:
    jr nz, jr_005_6a30

    ld a, l
    xor l

jr_005_6a54:
    jr nz, jr_005_6a37

    jr nz, jr_005_6a36

    ld a, h

jr_005_6a59:
    ld b, d
    ld c, h
    ld c, a
    ld b, e
    ld c, e
    dec l
    ld b, d
    ld d, l
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    jr nz, jr_005_6a50

    ld a, h
    ld b, d
    ld d, d
    ld b, l
    ld b, c
    ld c, e
    jr nz, jr_005_6a39

jr_005_6a6f:
    jr nz, @-$20

jr_005_6a71:
    ld a, l
    ld c, b
    ld b, c
    ld d, d
    ld b, h
    ld b, l
    ld d, e

jr_005_6a78:
    ld d, h
    jr nz, jr_005_6ace

    ld d, h
    xor $2e

jr_005_6a7e:
    ld a, a
    sbc $20
    cp l

jr_005_6a82:
    jr nz, jr_005_6acc

    ld c, c
    ld b, h
    ld a, l
    ld c, l
    ld b, c
    ld c, [hl]
    ld e, c
    jr nz, jr_005_6a2c

    jr nz, @+$48

    ld d, l
    ld c, h
    ld c, h
    ld a, h
    pop hl
    jr nz, jr_005_6a46

    jr nz, jr_005_6ae8

    ld c, a
    pop de
    ld d, e
    ld a, l
    and $20
    adc h

jr_005_6a9f:
    jr nz, jr_005_6a82

    ld a, h
    sbc $20
    add sp, $2e
    ld a, a

jr_005_6aa7:
    ret c

    jr nz, jr_005_6a54

    ld d, e
    jr nz, @-$3b

    ld a, l
    sub c
    ld b, h
    jr nz, jr_005_6a50

    ld l, $7c
    ld b, d
    ld b, l
    jr nz, jr_005_6a6f

    ld b, [hl]
    ld d, l
    ld c, h
    ld l, $7f
    ld c, b
    ld b, l
    ld e, c
    jr nz, jr_005_6a71

    ld hl, $2020
    call c, $e47d
    jr nz, jr_005_6aa7

    jr nz, jr_005_6b10

jr_005_6acc:
    ld c, a
    ld c, c

jr_005_6ace:
    ld c, [hl]

jr_005_6acf:
    ld b, a
    ccf
    ld a, h
    ld c, c
    ld b, [hl]
    jr nz, @-$21

jr_005_6ad6:
    jr nz, @-$1a

    jr nz, jr_005_6b26

    ld c, a
    ld b, c
    ld b, [hl]
    dec l
    ld a, l
    ld c, c
    ld c, [hl]
    ld b, a

jr_005_6ae2:
    jr nz, jr_005_6b25

    ld d, d
    ld c, a
    ld d, l
    ld c, [hl]

jr_005_6ae8:
    ld b, h
    ld l, $20
    ret nz

    ld a, h
    ld b, l
    ld b, c
    ld d, h
    jr nz, jr_005_6acf

    ld hl, $857f
    jr nz, jr_005_6ad6

    jr nz, jr_005_6b3d

    ld b, l
    ld b, c
    ld b, h
    ld l, $7d
    ld d, a
    ld c, b
    ld e, c
    jr nz, jr_005_6a9f

    jr nz, jr_005_6ae2

    ld a, h
    ld c, d
    ld c, a
    ld c, c
    ld c, [hl]
    jr nz, @+$51

    ld d, l
    ld d, d

jr_005_6b0e:
    jr nz, @+$55

jr_005_6b10:
    ld c, c
    ld b, h
    ld b, l
    ccf
    ld a, h
    ld d, a
    ld b, l
    jr nz, jr_005_6ae8

    jr nz, @+$45

    ld b, c
    ld d, l
    ld b, a
    ld c, b

jr_005_6b1f:
    ld d, h
    ld a, l
    and $20
    ld d, h
    ld c, b

jr_005_6b25:
    ld d, d

jr_005_6b26:
    ld c, a
    ld d, a
    ld c, [hl]
    jr nz, jr_005_6b74

    ld c, [hl]
    ld a, h
    jp nz, $202e

    jr nz, jr_005_6b0e

jr_005_6b32:
    daa
    ld d, e
    ld a, l
    ld c, b
    ld b, c
    ld d, b
    ld d, b
    ld b, l
    ld c, [hl]
    ld b, l
    ld b, h

jr_005_6b3d:
    jr nz, jr_005_6b1f

    jr nz, jr_005_6b1f

    ld a, h
    xor [hl]
    ccf
    ld a, a
    sbc $20
    reti


    jr nz, @-$1e

jr_005_6b4a:
    jr nz, @-$20

jr_005_6b4c:
    ld a, l

jr_005_6b4d:
    sbc b
    jr nz, @-$1f

    ld a, h
    ld b, d

jr_005_6b52:
    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld b, l
    ld b, h
    ld l, $20
    jr nz, jr_005_6ba5

    ld b, [hl]
    jr nz, jr_005_6bb6

    ld b, l
    ld a, l
    cp e
    jr nz, jr_005_6bac

    ld b, c
    ld b, h
    jr nz, @-$20

    ld a, h
    xor e
    jr nz, jr_005_6b4d

    jr nz, jr_005_6b4c

    ld a, l
    ld b, [hl]
    ld b, c
    ld c, h
    ld b, e
    ld c, a

jr_005_6b74:
    ld c, [hl]

jr_005_6b75:
    inc l
    jr nz, @+$59

    ld b, l
    jr nz, jr_005_6bbe

    ld c, a
    ld d, l
    ld c, h
    ld b, h
    ld a, h
    rst RST_28
    jr nz, jr_005_6b32

    jr nz, jr_005_6b52

jr_005_6b85:
    ld a, l
    xor $20
    ld c, d
    ld d, l
    ld c, l
    ld d, b
    ld l, $7f
    ld c, c
    jr nz, jr_005_6be4

    ld b, c

jr_005_6b92:
    ld d, a
    jr nz, @-$26

    ld a, l
    ld d, e
    ld d, h

jr_005_6b98:
    ld d, d
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_005_6b4a

    ld a, h
    ld d, l
    ld c, [hl]
    ld b, h
    ld b, l
    ld d, d

jr_005_6ba5:
    jr nz, jr_005_6b85

    jr nz, jr_005_6bf1

    ld d, l
    ld b, a
    ld b, l

jr_005_6bac:
    ld a, l
    ld d, h
    ld d, d
    ld b, l
    ld b, l
    jr nz, jr_005_6bf5

    ld b, l
    ld c, b
    ld c, c

jr_005_6bb6:
    ld c, [hl]
    ld b, h

jr_005_6bb8:
    jr nz, jr_005_6b98

    ld a, h
    sbc b
    ld l, $20

jr_005_6bbe:
    jr nz, jr_005_6c0d

    ld b, c
    ld e, c
    ld b, d
    ld b, l
    ld a, l
    jp nc, $e420

    jr nz, jr_005_6b75

    ld a, h
    pop hl
    jr nz, jr_005_6bac

    jr nz, jr_005_6c16

    ld b, c
    ld c, h
    ld b, e
    ld c, a
    ld c, [hl]
    ld l, $7f
    ld b, c
    jr nz, @-$19

    ld b, l
    ld c, c
    ld b, a
    ld c, [hl]

jr_005_6bde:
    jr nz, jr_005_6b92

    ld a, l
    add [hl]
    jr nz, @-$3c

jr_005_6be4:
    jr nz, jr_005_6c27

    ld a, h

jr_005_6be7:
    db $db
    jr nz, jr_005_6c3e

    ld c, c
    ld c, l
    ld b, l
    jr nz, jr_005_6c30

    ld b, a
    ld c, a

jr_005_6bf1:
    ld l, $7d
    ld b, e
    ld c, a

jr_005_6bf5:
    ld d, l

jr_005_6bf6:
    ld c, h
    ld b, h
    jr nz, @+$4b

jr_005_6bfa:
    ld d, h
    jr nz, jr_005_6c3f

    ld b, l

jr_005_6bfe:
    jr nz, jr_005_6bde

    ld a, h
    ret c

    jr nz, @-$10

    ccf
    ld a, a
    ld c, c
    ld b, [hl]
    jr nz, jr_005_6be7

jr_005_6c0a:
    jr nz, jr_005_6c53

    ld c, a

jr_005_6c0d:
    jr nz, jr_005_6bb8

    dec l
    ld a, l
    sla b

jr_005_6c13:
    ld d, h
    ld c, b
    ld d, d

jr_005_6c16:
    ld c, a

jr_005_6c17:
    ld d, l
    ld b, a

jr_005_6c19:
    ld c, b

jr_005_6c1a:
    jr nz, jr_005_6bfa

jr_005_6c1c:
    ld a, h
    or [hl]
    inc l
    jr nz, jr_005_6bfe

    daa
    ld c, h
    ld c, h
    ld a, l
    ld d, d
    ld b, l

jr_005_6c27:
    ld b, c
    ld b, e
    ld c, b
    jr nz, jr_005_6c0a

    ld a, h
    sbc b
    ld l, $7f

jr_005_6c30:
    db $dd
    jr nz, jr_005_6bf6

    jr nz, jr_005_6c13

    ld a, l
    xor e
    jr nz, jr_005_6c1a

    jr nz, jr_005_6c19

    ld a, h
    ld b, [hl]
    ld b, c

jr_005_6c3e:
    ld c, h

jr_005_6c3f:
    ld b, e
    ld c, a
    ld c, [hl]
    ld l, $79
    ld l, $77

jr_005_6c46:
    ld b, c

jr_005_6c47:
    ld a, b
    db $10
    ld a, h
    sbc $20
    xor e
    jr nz, jr_005_6c30

    jr nz, @-$20

    ld a, l
    ld b, [hl]

jr_005_6c53:
    ld b, c
    ld c, h
    ld b, e
    ld c, a
    ld c, [hl]
    ld hl, $d220
    jr nz, jr_005_6ca6

    ld c, [hl]
    dec l
    ld a, h

jr_005_6c60:
    ld b, e

jr_005_6c61:
    ld d, d
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    jr nz, jr_005_6c46

    jr nz, jr_005_6c17

    ld a, l

jr_005_6c6b:
    pop hl
    jr nz, @-$21

    ld d, d
    jr nz, jr_005_6c1c

    jr nz, jr_005_6cc6

    ld c, a
    ld a, h
    db $dd
    jr nz, jr_005_6c61

jr_005_6c78:
    jr nz, jr_005_6cc0

    ld c, h
    ld e, c

jr_005_6c7c:
    jr nz, jr_005_6cfb

jr_005_6c7e:
    db $db
    ld b, l
    ld d, d
    ld l, $7f
    db $dd
    jr nz, @+$59

    ld b, c
    ld c, [hl]
    ld d, h
    jr nz, jr_005_6c6b

    jr nz, @+$49

    ld c, a
    ld a, l
    ld c, a
    ld c, [hl]
    jr nz, jr_005_6c60

    jr nz, jr_005_6c46

    ld a, h
    ld d, a
    ld b, l
    ld b, c
    ld c, e
    jr nz, jr_005_6c47

    ccf
    jr nz, jr_005_6ce6

    ld c, a

jr_005_6ca0:
    ld a, l
    sbc l
    ld l, $20
    ld c, b

jr_005_6ca5:
    ld b, c

jr_005_6ca6:
    jr nz, jr_005_6cf0

    ld b, c
    jr nz, jr_005_6cf3

    ld b, c
    ld l, $7f
    db $dd
    jr nz, @+$59

    ld c, a
    ld c, [hl]
    daa
    ld d, h
    jr nz, jr_005_6d03

    ld c, c
    ld d, [hl]

jr_005_6cb9:
    ld b, l
    ld a, l
    db $db
    jr nz, jr_005_6d03

    ld c, [hl]
    ld c, a

jr_005_6cc0:
    ld d, l
    ld b, a
    ld c, b
    jr nz, jr_005_6ca5

    ld a, h

jr_005_6cc6:
    ld d, l
    ld d, e
    ld b, l
    jr nz, jr_005_6c7c

    jr nz, jr_005_6c78

    ld l, $7c
    ld [hl], d
    dec e
    add e
    ld hl, $2020
    ld d, a
    ld c, b
    ld e, c
    ld a, l
    db $e4
    jr nz, jr_005_6cb9

    jr nz, jr_005_6ca0

    ccf
    ld a, h
    sbc h
    jr nz, jr_005_6cb9

    jr nz, jr_005_6d32

    ld b, l

jr_005_6ce6:
    ld a, l
    db $dd
    daa
    ld d, [hl]
    ld b, l
    jr nz, jr_005_6c7e

    ld b, h
    ld a, h

jr_005_6cef:
    sbc [hl]

jr_005_6cf0:
    ld l, $7f
    add l

jr_005_6cf3:
    jr nz, @-$1f

jr_005_6cf5:
    ld a, l

jr_005_6cf6:
    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld b, l

jr_005_6cfb:
    ld b, h
    jr nz, jr_005_6d53

    ld d, b
    jr nz, jr_005_6d4a

    ld c, [hl]
    ld a, h

jr_005_6d03:
    xor a
    ld l, $7f
    call nc, Call_005_4d20
    ld d, l
    ld d, e
    ld d, h
    jr nz, jr_005_6d50

    ld b, l
    jr nz, jr_005_6cef

    ld a, l
    cp l
    jr nz, jr_005_6cf6

    ld a, h
    add b
    daa
    ld d, e

jr_005_6d19:
    ld a, l
    or d
    ld l, $20
    jr nz, @-$2c

    jr nz, @-$3b

jr_005_6d21:
    ld a, h
    or h
    jr nz, @+$45

    ld b, c
    ld c, h
    ld c, h
    ld b, l
    ld b, h
    jr nz, @-$36

    ld a, l
    sbc $49
    ld d, d
    jr nz, jr_005_6d79

jr_005_6d32:
    ld d, d
    ld b, c
    ld d, [hl]
    ld b, l
    ld d, e
    jr nz, jr_005_6d19

jr_005_6d39:
    ld a, h
    ld b, h
    ld b, l
    ld d, e
    ld d, h
    ld d, d
    ld c, a
    ld e, c
    jr nz, jr_005_6d21

    ld a, l
    xor d
    jr nz, jr_005_6cf5

    ld l, $7f
    add l

jr_005_6d4a:
    jr nz, jr_005_6d39

    jr nz, jr_005_6d9a

    ld c, a
    ld d, e

jr_005_6d50:
    ld d, h
    ld a, l
    ld c, b

jr_005_6d53:
    rst RST_18
    jr nz, jr_005_6d03

    ld l, $20
    jr nz, @+$51

jr_005_6d5a:
    ld d, l
    ld d, d
    ld a, h
    xor [hl]

jr_005_6d5e:
    jr nz, @-$30

    ld a, l
    ld d, e
    ld d, l
    ld d, d
    ld b, l

jr_005_6d65:
    ld c, h
    ld e, c
    jr nz, @+$52

    ld b, l
    ld d, d
    rst RST_18
    ld c, b
    ld l, $7f
    sbc $20
    sub d
    jr nz, @-$1d

    ld a, l
    sbc $20
    ld d, b
    ld c, a

jr_005_6d79:
    ld c, h
    ld d, h
    ld b, l
    ld d, d
    ld b, a

jr_005_6d7e:
    ld b, l
    rst RST_18
    ld d, h
    ccf
    ld a, h
    and [hl]
    jr nz, jr_005_6dcf

    ld d, h
    ld hl, $eb7c
    db $eb
    ld l, $7c
    sbc $20
    or e
    jr nz, @-$1d

    ld a, l
    add l
    jr nz, jr_005_6de3

jr_005_6d96:
    ld c, a
    ld d, [hl]
    ld b, l
    ld b, h

jr_005_6d9a:
    jr nz, jr_005_6ddd

    ld a, h
    ld c, h
    ld c, c
    ld d, h
    ld d, h
    ld c, h
    ld b, l

jr_005_6da3:
    ld l, $7c
    ld c, a

jr_005_6da6:
    ld c, b
    ld hl, $2020

jr_005_6daa:
    ld c, c
    jr nz, jr_005_6d96

    jr nz, @+$4f

    ld c, a
    ld d, [hl]
    ld b, l
    ld l, $7c
    ld c, l
    ld e, c
    jr nz, jr_005_6d65

jr_005_6db8:
    jr nz, jr_005_6da6

    ld a, h
    ld d, e
    ldh [$ff4c], a
    ld b, l
    ld c, [hl]
    jr nz, jr_005_6e04

    ld e, c
    jr nz, jr_005_6da3

    ld a, l
    cp l
    jr nz, jr_005_6daa

    jr nz, jr_005_6d5a

    dec l
    ld a, h
    pop de
    inc l

jr_005_6dcf:
    jr nz, jr_005_6d5e

    ld l, $7d
    ld c, c
    jr nz, jr_005_6d7e

jr_005_6dd6:
    jr nz, jr_005_6e2a

    ld b, l
    ld b, e
    ld c, a
    ld d, [hl]
    ld b, l

jr_005_6ddd:
    ld d, d

jr_005_6dde:
    ld a, h
    ld c, l
    ld e, c
    jr nz, @+$55

jr_005_6de3:
    ld d, h
    ld d, d
    ld b, l
    ld c, [hl]
    ld b, a
    ld d, h
    ld c, b
    jr nz, jr_005_6e41

    ld c, [hl]
    dec l
    ld a, l
    ld d, h
    ld c, c
    ld c, h
    jr nz, @+$4a

    ld b, l
    jr nz, jr_005_6dd6

    ld a, h
    add h
    ld l, $20
    jr nz, jr_005_6db8

    ld a, l
    sbc $20
    ld [$a420], a
    ld a, h

jr_005_6e04:
    jp hl


    jr nz, jr_005_6e4b

    ld c, a
    jr nz, jr_005_6dde

    ld l, $7c
    db $dd
    jr nz, jr_005_6e5c

    ld d, l
    ld d, e

jr_005_6e11:
    ld d, h
    jr nz, jr_005_6e67

jr_005_6e14:
    ld b, l
    ld b, l
    ld c, e
    ld a, l
    ld c, c
    ld d, h
    ld l, $20
    jr nz, jr_005_6e5f

    ld b, e
    ld b, e
    ld c, a
    ld d, d
    ld b, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, @+$7e

    ldh [rNR41], a

jr_005_6e2a:
    ld c, h
    ld b, l
    ld b, a
    ld b, l

jr_005_6e2e:
    ld c, [hl]
    ld b, h
    inc l
    jr nz, @+$4b

    ld d, h
    ld a, l

jr_005_6e35:
    adc $20
    ld b, d
    ld d, l
    ld d, d
    ld c, [hl]
    jr nz, jr_005_6e8c

jr_005_6e3d:
    ld d, l
    ld d, d
    ld a, h
    ld b, l

jr_005_6e41:
    ld c, [hl]
    ld b, l
    ld c, l

jr_005_6e44:
    ld c, c
    ld b, l
    ld d, e
    jr nz, jr_005_6e98

    ld d, l
    ld d, h

jr_005_6e4b:
    jr nz, jr_005_6e2e

    ld a, l

jr_005_6e4e:
    sbc $20

jr_005_6e50:
    xor [hl]
    ld l, $7c
    ld a, [hl]
    ld [bc], a
    sbc h
    jr nz, jr_005_6e35

    jr nz, jr_005_6e11

    ld a, l
    ld b, c

jr_005_6e5c:
    ld b, d
    ld c, a
    ld d, l

jr_005_6e5f:
    ld d, h
    jr nz, @+$51

jr_005_6e62:
    ld d, l
    ld d, d
    jr nz, jr_005_6e14

    ccf

jr_005_6e67:
    ld a, h
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]

jr_005_6e6c:
    ld c, e
    jr nz, jr_005_6e50

    jr nz, jr_005_6e4e

    ld d, d
    ld a, l
    sub e
    ld d, e
    ld l, $7f
    ld c, a
    ld c, e
    ld l, $20
    jr nz, jr_005_6e3d

    jr nz, jr_005_6e44

jr_005_6e7f:
    ld a, l

jr_005_6e80:
    db $dd
    jr nz, jr_005_6ed0

    ld e, c
    jr nz, jr_005_6ed8

    ld b, l
    ld c, l
    ld b, c
    ld c, c
    ld c, [hl]
    ld c, c

jr_005_6e8c:
    ld c, [hl]
    ld b, a
    ld a, h
    xor l
    ld l, $20
    jr nz, jr_005_6edf

    ld b, c
    ld b, c
    ld c, b
    ld c, b

jr_005_6e98:
    db $eb
    ld a, h
    sbc $20
    xor l
    jr nz, jr_005_6e80

    jr nz, jr_005_6e7f

    ld a, l
    cp l

jr_005_6ea3:
    jr nz, jr_005_6eeb

jr_005_6ea5:
    ld c, h
    ld c, a
    ld d, a
    ld d, e
    jr nz, @+$4b

    ld c, [hl]
    ldh [$ff7c], a
    db $dd
    ld d, d
    jr nz, @-$4b

    ld l, $20
    jr nz, @-$21

    ld d, d
    ld a, h
    ld c, [hl]

jr_005_6eb9:
    ld b, c
    ld c, c
    ld c, h

jr_005_6ebc:
    ld d, e
    jr nz, jr_005_6ea5

    jr nz, jr_005_6e6c

    ld a, l
    ld b, d
    ld b, l
    cp b
    jr nz, jr_005_6e62

    ld b, l
    ld d, d
    ld l, $79
    ld l, $77
    ld [hl+], a

jr_005_6ece:
    ld [hl], a
    ld b, d

jr_005_6ed0:
    ld a, a
    ld c, [hl]
    ld c, a

jr_005_6ed3:
    ld d, a
    jr nz, @-$21

    jr nz, jr_005_6ebc

jr_005_6ed8:
    ld a, l
    xor l
    ld b, [hl]
    ld d, l
    ld c, h
    ld l, $7c

jr_005_6edf:
    adc b
    jr nz, @+$4f

    ld c, c
    ld b, a
    ld c, b
    ld d, h
    ld a, l
    cp [hl]
    jr nz, @+$4a

    ld c, a

jr_005_6eeb:
    ld d, a
    jr nz, jr_005_6ece

    jr nz, jr_005_6eb9

    ld a, h
    sbc $20
    ld [$a420], a
    ld l, $7c
    ld b, a
    ld c, a
    jr nz, jr_005_6ed3

    jr nz, jr_005_6ea3

    jr nz, jr_005_6f49

    ld c, [hl]

jr_005_6f01:
    ld a, l
    sbc $20
    bit 0, l
    ld d, d
    ld c, [hl]
    jr nz, jr_005_6f5a

    ld b, c
    ld d, d
    ld d, h

jr_005_6f0d:
    ld a, h
    pop hl
    jr nz, @-$20

    jr nz, @+$4e

    and $2e
    jr nz, @+$4a

    ld b, l
    ld a, l

jr_005_6f19:
    adc $20
    cp [hl]
    jr nz, @-$52

    ld a, h
    adc b

jr_005_6f20:
    jr nz, jr_005_6f01

    ld l, $7d
    ld c, [hl]
    ld c, a

jr_005_6f26:
    ld d, a
    jr nz, jr_005_6f70

    ld c, a
    ld hl, $887f
    ccf

jr_005_6f2e:
    jr nz, jr_005_6ed8

    ld a, l
    call nz, $dd20
    ld l, $7f
    and l
    jr nz, jr_005_6f26

    jr nz, jr_005_6f19

    ld a, l
    sub d
    jr nz, jr_005_6f20

jr_005_6f3f:
    jr nz, jr_005_6f0d

    dec l
    ld a, h
    cp d
    ld l, $20
    jr nz, jr_005_6f90

    ld b, l

jr_005_6f49:
    jr nz, @-$57

    ld a, l

jr_005_6f4c:
    ld c, c
    ld c, [hl]
    jr nz, jr_005_6f2e

    jr nz, jr_005_6fa5

    ld c, a
    ld d, l
    ld d, h
    ld c, b

jr_005_6f56:
    bit 7, h
    ld d, b
    ld b, c

jr_005_6f5a:
    ld d, d
    ld d, h
    jr nz, jr_005_6f3f

    jr nz, @-$20

    ld a, l
    ld c, h
    and $2e
    ld a, a
    db $dd
    jr nz, jr_005_6f4c

jr_005_6f68:
    ld a, l
    add e
    inc l

jr_005_6f6b:
    ld a, h
    db $e4
    ld c, [hl]
    daa
    ld d, h

jr_005_6f70:
    jr nz, @-$21

    ccf
    ld a, l
    db $dd
    jr nz, jr_005_6fc3

    ld c, a
    ld c, a
    ld c, e
    jr nz, jr_005_6f56

    jr nz, jr_005_6fbf

    ld a, h
    ld c, b
    ld b, l
    ld d, d
    ld c, a
    ld l, $20
    jr nz, @+$56

    ld d, d
    ld e, c
    jr nz, jr_005_6f68

    ld d, d
    ld a, l
    ld d, e
    ld c, e
    ld c, c

jr_005_6f90:
    ld c, h
    ld c, h

jr_005_6f92:
    jr nz, jr_005_6fd5

    ld b, a
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    ld d, h
    ld a, h
    ld c, l
    ld b, l
    ld l, $7c
    ld a, [hl]
    inc bc
    db $dd

jr_005_6fa2:
    jr nz, jr_005_6fe7

    ld c, a

jr_005_6fa5:
    ld d, a
    ld b, c

jr_005_6fa7:
    ld d, d
    ld b, h
    ld hl, $dd7f
    jr nz, jr_005_6f92

    jr nz, jr_005_7004

    ld d, d
    ld d, l
    ld c, h
    ld e, c
    ld a, l

jr_005_6fb5:
    ld d, a
    ld c, a
    ld d, d
    ld d, h
    ld c, b
    ld e, c
    ld l, $20
    jr nz, jr_005_7008

jr_005_6fbf:
    jr nz, jr_005_7003

    ld b, l
    dec l

jr_005_6fc3:
    ld a, h
    ld d, e
    ldh [$ff57], a
    jr nz, jr_005_6fa7

    jr nz, jr_005_6f6b

    ld a, h
    pop hl
    jr nz, jr_005_7016

    ld d, l
    ld c, c
    ld c, h
    ld b, l
    jr nz, jr_005_702a

jr_005_6fd5:
    ld d, b
    ld c, a
    ld c, [hl]

jr_005_6fd8:
    ld a, l
    db $dd
    ld l, $7c
    db $dd
    jr nz, jr_005_6fa2

    jr nz, jr_005_6fbf

    ld a, l
    and b
    jr nz, @-$1d

    jr nz, jr_005_702e

jr_005_6fe7:
    ld d, l
    ld c, c
    ld c, h
    ld b, l
    ld l, $7c

jr_005_6fed:
    db $dd
    ld d, d
    jr nz, jr_005_7047

    ld c, c
    ld d, h
    ld b, c
    ld c, h
    ld c, c
    ld d, h
    ld e, c
    ld a, h
    ld c, h
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, h

jr_005_6ffe:
    jr nz, jr_005_6fed

    jr nz, jr_005_704b

    ld c, [hl]

jr_005_7003:
    dec l

jr_005_7004:
    ld a, l
    ld b, e
    ld d, d

jr_005_7007:
    ld b, l

jr_005_7008:
    ld b, c
    ld d, e
    ld b, l
    ld b, h
    ld l, $79
    ld l, $7c
    rst RST_20
    ld b, c
    ld hl, $2020

jr_005_7015:
    sbc d

jr_005_7016:
    ld a, l
    ret nc

    jr nz, jr_005_6fb5

jr_005_701a:
    ld l, $7c
    ld d, e
    ld b, l
    ld b, l
    jr nz, jr_005_6ffe

    jr nz, jr_005_706f

    ld b, c
    ld d, h
    ld b, l
    ld d, d
    db $eb
    ld [hl], a
    add h

jr_005_702a:
    ld a, b
    jr nz, @+$81

    db $dd

jr_005_702e:
    jr nz, jr_005_707e

    ld b, l
    ld b, l
    ld b, h
    jr nz, @-$20

    ld a, l
    sub d
    jr nz, jr_005_701a

    jr nz, jr_005_7007

    dec l

jr_005_703c:
    ld a, h
    cp d
    jr nz, @+$4b

    ld b, [hl]
    jr nz, @-$21

    jr nz, jr_005_709c

    ld b, c
    ld c, [hl]

jr_005_7047:
    ld d, h
    ld a, l
    ldh [rNR41], a

jr_005_704b:
    ld d, e
    ld b, l

jr_005_704d:
    ld b, l
    jr nz, jr_005_6fd8

    ld l, $7f
    call $de20
    jr nz, jr_005_7004

    ld d, e
    ld a, l
    pop hl
    jr nz, jr_005_7015

    inc l
    jr nz, jr_005_703c

    jr nz, @-$15

    ld a, h
    ld b, l

jr_005_7063:
    ld b, c
    ld d, e
    ld c, c
    ld c, h
    ld e, c
    jr nz, jr_005_70ad

    ld c, h
    ld c, c
    ld c, l
    ld b, d
    ld a, l

jr_005_706f:
    jp z, $de20

    ld a, h
    ld d, e

jr_005_7074:
    ld c, b
    ld b, l
    ld b, l
    ld d, d

jr_005_7078:
    ld b, l
    ld d, e
    ld d, h
    jr nz, jr_005_70d4

    ld b, c

jr_005_707e:
    ld c, h

jr_005_707f:
    ld c, h
    ld l, $7f
    db $dd
    jr nz, @-$1a

    jr nz, @+$43

    ld d, e
    jr nz, jr_005_7074

    ld a, l
    ld b, c
    ld d, e
    jr nz, @-$37

    ld l, $7f
    ret c

    xor $20
    ld d, e
    ldh [$ff4c], a
    ld b, l
    ld a, l
    sbc $20

jr_005_709b:
    sub d

jr_005_709c:
    jr nz, jr_005_707f

    ld a, h
    call z, Call_000_2eba
    ld a, a
    adc b
    jr nz, jr_005_704d

    ld a, l
    ld c, c
    ld c, [hl]
    jr nz, @-$20

    jr nz, jr_005_7063

jr_005_70ad:
    jr nz, @-$1d

    ld a, h
    call z, Call_000_2eba
    jr nz, @+$22

    ld b, d
    ld d, l

jr_005_70b7:
    ld d, h
    ld a, l
    xor a
    jr nz, jr_005_709b

    jr nz, jr_005_710c

    ld c, a

jr_005_70bf:
    jr nz, jr_005_7118

    ld b, c

jr_005_70c2:
    ld e, c
    ld a, h
    ldh [rNR41], a
    rst RST_28
    jr nz, jr_005_7078

jr_005_70c9:
    ld l, $7f
    ld c, c
    daa
    ld c, l
    jr nz, @-$20

    jr nz, @+$44

    ld b, c
    ld d, d

jr_005_70d4:
    xor $7d

jr_005_70d6:
    pop hl
    jr nz, jr_005_70b7

    jr nz, jr_005_7127

    and $2c
    ld a, h
    and l
    ld l, $7d
    add e
    inc l
    jr nz, jr_005_70c2

    ld a, h
    db $e4
    jr nz, jr_005_70c9

    ld c, a
    jr nz, @+$4e

    ld b, c
    ld d, h
    ld b, l
    ld l, $7d
    jp nc, $e020

    ld c, a
    ld c, e
    jr nz, jr_005_70d6

    ld a, h
    sub d
    ld l, $20
    jr nz, jr_005_70bf

jr_005_70fe:
    jr nz, @+$4b

    ld c, [hl]
    ld a, l
    sbc $20
    sub l

jr_005_7105:
    jr nz, @-$1d

    ld a, h
    ld b, h
    ld b, l

jr_005_710a:
    ld d, e
    ld d, h

jr_005_710c:
    ld c, c
    ld d, h
    ld d, l
    pop de
    jr nz, @-$1e

    ld a, l
    sbc $20
    sla b

jr_005_7117:
    pop hl

jr_005_7118:
    ld a, h
    jp nz, Jump_005_7c2e

    ld a, [hl]
    inc b
    db $dd
    jr nz, jr_005_7105

    jr nz, jr_005_7165

    ld d, d
    ld b, c
    ld d, [hl]
    ld b, l

jr_005_7127:
    ld l, $7d
    ld c, c
    ld b, [hl]
    jr nz, jr_005_710a

    jr nz, jr_005_7118

    ld a, h
    ld d, d

jr_005_7131:
    ld b, l
    ld b, e
    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    jr nz, jr_005_7117

    ld a, l
    sub d
    inc l
    jr nz, jr_005_70fe

    ld a, h

jr_005_713f:
    sub $20
    db $dd
    jr nz, @-$52

    ld a, l
    adc b
    jr nz, jr_005_7127

    ld l, $7f
    db $dd
    jr nz, jr_005_7131

    jr nz, jr_005_7192

    ld c, b
    ld c, c
    ld b, e
    ld c, e
    ld b, l
    ld c, [hl]
    dec l
    ld a, l
    ld c, b
    ld b, l
    ld b, c

jr_005_715a:
    ld d, d
    ld d, h

jr_005_715c:
    ld b, l
    ld b, h
    ld l, $20

jr_005_7160:
    jr nz, jr_005_713f

jr_005_7162:
    ld a, h
    ld c, a
    ld b, d

jr_005_7165:
    ld d, [hl]
    ld c, c
    ld c, a
    ld d, l

jr_005_7169:
    ld d, e
    ld c, h
    ld e, c
    jr nz, jr_005_7131

    ld a, l
    ld c, [hl]
    ld c, a

jr_005_7171:
    jr nz, jr_005_71c8

jr_005_7173:
    ld d, e
    ld b, l
    jr nz, jr_005_715c

    ld a, h
    xor l
    ld l, $20
    jr nz, jr_005_715a

    ld d, d
    ld a, l
    xor l
    ld d, e
    jr nz, jr_005_7169

    jr nz, jr_005_7162

    ld d, d
    ld a, h
    ld c, h
    ld c, c

jr_005_7189:
    ld b, [hl]
    ld b, l
    jr nz, jr_005_7171

    jr nz, jr_005_71dc

jr_005_718f:
    ld c, c
    ld c, [hl]
    ld b, l

jr_005_7192:
    ld l, $7c

jr_005_7194:
    ld a, [hl]
    inc b
    db $dd
    jr nz, jr_005_715c

    jr nz, jr_005_71df

    xor $7d
    ret nc

    jr nz, jr_005_71f7

    ld b, l
    ld c, h

jr_005_71a2:
    ld c, h
    inc l
    ld a, h
    add e
    ld l, $7c
    db $dd
    jr nz, jr_005_7194

    jr nz, @-$0f

    jr nz, jr_005_718f

    ld a, l
    sbc $20
    or [hl]
    jr nz, @-$52

    ld a, h
    adc b
    jr nz, jr_005_7160

    ld a, l
    ld b, d
    ld e, c
    jr nz, jr_005_7213

    ld d, e
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_71a2

jr_005_71c4:
    ld a, h
    ld d, e
    ld b, l
    ld b, e

jr_005_71c8:
    ld d, d
    ld b, l
    ld d, h
    jr nz, jr_005_721d

    ld b, c
    ld d, e
    ld d, e

jr_005_71d0:
    ld b, c
    ld b, a
    ld b, l
    ld a, l
    ret z

    jr nz, @-$2b

    jr nz, jr_005_722b

    ld c, a
    ld c, a
    ld c, l

jr_005_71dc:
    ld l, $7f
    ld c, c

jr_005_71df:
    jr nz, jr_005_7189

    jr nz, @+$4e

jr_005_71e3:
    ld b, l

jr_005_71e4:
    ld d, h
    jr nz, jr_005_71c4

    ld a, l
    rst RST_10
    jr nz, jr_005_7173

    db $eb
    ld a, h
    adc l
    daa
    ld d, e
    ld a, l
    ld c, a
    ld d, d
    ld b, h
    ld b, l
    ld d, d
    ld d, e

jr_005_71f7:
    ld l, $7c
    ld [hl], d
    dec e
    sbc $20
    ld b, [hl]
    ld b, c
    ld d, h
    ld b, l
    jr nz, jr_005_71e4

    jr nz, jr_005_71e3

    ld a, l
    xor [hl]
    jr nz, @+$46

    ld b, l
    ld d, b
    ld b, l
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, jr_005_7260

    ld c, [hl]
    ld a, h

jr_005_7213:
    sbc $20

jr_005_7215:
    ld c, h
    ld b, l

jr_005_7217:
    ld b, a
    ld b, l
    ld c, [hl]
    ld b, h
    ld b, c
    ld d, d

jr_005_721d:
    ld e, c
    ld a, l
    ld [$a420], a
    ld l, $7f
    ld d, l

jr_005_7225:
    ld d, b
    ld c, a
    ld c, [hl]
    jr nz, jr_005_71d0

jr_005_722a:
    ld c, c

jr_005_722b:
    ld c, [hl]

jr_005_722c:
    ld b, a
    ld a, l
    sbc $20
    sub d
    jr nz, @-$1d

    ld a, h
    call z, Call_000_2cba
    jr nz, jr_005_7217

    ld a, l
    ld d, e
    ld d, l

jr_005_723c:
    ld d, d

jr_005_723d:
    ld d, d
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld c, c
    ld c, [hl]

jr_005_7244:
    ld b, a
    ld d, e
    jr nz, jr_005_722c

    ld a, h
    ld d, b
    ld d, l
    ld d, h
    jr nz, jr_005_72a3

jr_005_724e:
    ld c, [hl]
    ld b, h
    ld b, l
    ld d, d
    jr nz, jr_005_7295

    ld a, l
    ld b, e

jr_005_7256:
    ld c, h
    ld c, a
    ld b, c
    ld c, e
    jr nz, jr_005_723d

    jr nz, jr_005_722a

    dec l
    ld a, h

jr_005_7260:
    cp d
    ld l, $7f
    ld c, c
    ld b, [hl]
    jr nz, jr_005_7244

    jr nz, jr_005_72c0

    ld b, c
    ld c, [hl]
    ld d, h
    jr nz, jr_005_724e

jr_005_726e:
    ld a, l
    cp [hl]
    jr nz, @+$43

    ld b, d
    ld c, a
    ld d, l
    ld d, h
    jr nz, jr_005_7256

    ld a, h
    ld [$a420], a
    inc l
    jr nz, jr_005_7225

    ld a, l
    ld b, c
    jr nz, jr_005_7215

    jr nz, jr_005_72c6

jr_005_7285:
    ld d, h
    jr nz, @-$20

    ld a, h
    ld b, c
    ld c, h
    ld d, h

jr_005_728c:
    ld b, c
    ld d, d
    ld l, $7f
    ld b, c
    jr nz, jr_005_726e

    jr nz, jr_005_72e9

jr_005_7295:
    ld c, c
    ld c, l
    ld b, l

jr_005_7298:
    jr nz, jr_005_72db

    ld b, a
    ld c, a
    inc l
    ld a, l
    sbc $20
    ld [$a420], a

jr_005_72a3:
    ld a, h
    add h
    jr nz, jr_005_7285

    ld a, l
    cp l
    jr nz, jr_005_728c

    jr nz, jr_005_723c

    dec l
    ld a, h
    pop de
    jr nz, jr_005_7298

    jr nz, @+$4e

    ld c, a
    ld b, e
    ld c, e
    ld b, l
    ld b, h
    ld a, l
    ld c, b
    ld c, c
    ld c, l
    jr nz, @+$43

    ld d, a

jr_005_72c0:
    ld b, c
    ld e, c
    jr nz, jr_005_7308

    ld b, l

jr_005_72c5:
    ld b, l

jr_005_72c6:
    ld d, b
    ld a, h
    ld d, l
    ld c, [hl]
    ld b, h
    ld b, l
    ld d, d
    ld b, a
    ld d, d

jr_005_72cf:
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld l, $7f
    ld c, b
    ld b, l
    jr nz, jr_005_72c5

    jr nz, jr_005_731e

jr_005_72db:
    ld b, c
    ld c, h
    ld c, h
    ld b, l
    ld b, h
    ld a, l
    sbc $20
    ld [$a420], a
    ld a, h
    ld b, d
    ld b, l

jr_005_72e9:
    ld b, e
    ld b, c
    ld d, l
    ld d, e
    ld b, l
    jr nz, jr_005_7338

    rst RST_18
    ld a, l
    ld b, e
    ld c, a
    ld c, h
    ld c, a
    ld d, d
    jr nz, @-$12

    jr nz, jr_005_72cf

    ld a, h
    pop hl
    jr nz, jr_005_7340

    jr nz, @+$44

    ld c, h

jr_005_7302:
    ld b, c
    ld e, d
    ld c, c
    ld c, [hl]
    ld b, a

jr_005_7307:
    ld a, l

jr_005_7308:
    rst RST_00
    ld l, $7f
    sbc $20
    ld [$a420], a
    db $eb
    ld a, l
    ld e, c
    ld b, l
    ld d, e
    inc l
    jr nz, jr_005_7360

    ld b, l
    jr nz, jr_005_7307

    jr nz, @+$43

    ld a, h

jr_005_731e:
    ld c, l

jr_005_731f:
    ld d, l
    ld d, h
    ld b, c

jr_005_7322:
    ld c, [hl]
    ld d, h
    jr nz, jr_005_736d

    ld b, c
    ld d, d
    ld b, a
    ld c, a

jr_005_732a:
    ld e, c
    ld c, h
    ld b, l
    ld l, $7f
    xor a
    jr nz, jr_005_7384

    ld b, l
    ld c, l
    ld b, c
    ld c, c

jr_005_7336:
    ld c, [hl]
    ld d, e

jr_005_7338:
    ld a, l

jr_005_7339:
    cp e
    jr nz, jr_005_732a

    jr nz, @-$17

    jr nz, jr_005_731f

jr_005_7340:
    ld a, h
    pop hl
    jr nz, jr_005_7322

    jr nz, jr_005_7399

    ld b, c
    ld c, l
    ld b, l
    ld a, l
    ld b, d

jr_005_734b:
    ld c, h
    ld c, a
    ld c, a
    ld b, h
    ld l, $7f
    db $dd
    ld d, d
    jr nz, jr_005_7302

    jr nz, jr_005_7336

    ld a, l

jr_005_7358:
    ld b, c
    ld c, h
    ld d, e
    ld c, a
    db $eb
    jr nz, jr_005_73ad

jr_005_735f:
    ld c, a

jr_005_7360:
    ld d, a
    jr nz, jr_005_73ac

jr_005_7363:
    ld a, h
    ld b, d
    ld b, l
    ld b, a
    ld c, c
    ld c, [hl]
    jr nz, jr_005_734b

    jr nz, jr_005_73c2

jr_005_736d:
    ld c, [hl]
    ld b, h
    ld b, l

jr_005_7370:
    ld d, d
    dec l
    ld a, l
    ld d, e
    ld d, h
    and $21
    jr nz, jr_005_7399

    sbc $20
    xor $7c
    rst RST_20
    jr nz, jr_005_735f

    jr nz, jr_005_7363

    jr nz, @-$20

jr_005_7384:
    ld a, l
    ld d, e
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_005_73cd

    ld c, h
    ld c, a
    ld c, a
    ld b, h
    jr nz, jr_005_7370

    db $eb
    ld a, h

jr_005_7393:
    add e
    inc l
    jr nz, jr_005_7358

    ld a, l
    db $dd

jr_005_7399:
    ld l, $20
    jr nz, jr_005_7358

    jr nz, @-$21

    ld a, h
    jp hl


    jr nz, jr_005_7339

    ld a, l
    adc l
    ld l, $20
    jr nz, jr_005_73eb

    ld d, l
    ld d, h
    ld a, h

jr_005_73ac:
    db $dd

jr_005_73ad:
    jr nz, jr_005_7393

    jr nz, @+$55

    ld c, a
    jr nz, jr_005_740b

    ld b, l
    ld b, c
    ld c, e

jr_005_73b7:
    ld a, l
    ld c, [hl]
    ld c, a
    ld d, a
    db $eb
    jr nz, jr_005_73de

    ld b, a
    ld c, a
    jr nz, @-$1e

jr_005_73c2:
    ld a, h
    sbc $20
    sla b
    and $20
    ret


    ld a, l
    ld d, d
    ld d, l

jr_005_73cd:
    ld d, e
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, h
    ld l, $7c
    rst RST_28
    jr nz, jr_005_73b7

    jr nz, jr_005_7420

jr_005_73db:
    ld d, h
    ld b, l
    ld d, d

jr_005_73de:
    ld c, [hl]
    ld b, c
    ld c, h
    ld a, l
    sub d
    jr nz, jr_005_73ad

    jr nz, jr_005_742f

    ld c, c
    ld c, l
    ld l, $7f

jr_005_73eb:
    add e
    ld hl, $2020
    ld d, a
    ld c, b
    ld e, c
    ld a, l
    jp $dd20


    jr nz, @-$46

    ld a, h
    jp nz, Jump_000_203f

    jr nz, jr_005_73db

    jr nz, jr_005_7446

    ld b, c
    ld c, e
    ld b, l
    ld hl, $527c
    ld d, l
    ld d, e
    ld c, b
    ld c, c

jr_005_740a:
    ld b, [hl]

jr_005_740b:
    ld b, l
    ld c, h
    ld c, h

jr_005_740e:
    jr nz, jr_005_7430

    db $ed
    ld a, l

jr_005_7412:
    sbc $20
    sub d
    ld l, $20
    jr nz, @-$20

    ld a, h
    ld d, d

jr_005_741b:
    ld b, l
    ld b, c
    ld c, h
    jr nz, jr_005_740a

jr_005_7420:
    jr nz, @-$5a

    ld a, h
    rst RST_18
    jr nz, jr_005_7478

    ld d, l
    ld d, e
    ld c, b

jr_005_7429:
    ld c, c
    ld b, [hl]

jr_005_742b:
    ld b, l
    ld c, h
    ld c, h
    ld a, l

jr_005_742f:
    ld c, b

jr_005_7430:
    ld c, c
    ld c, l
    ld d, e
    ld b, l
    ld c, h
    ld b, [hl]
    ld l, $7f
    db $dd
    jr nz, @-$1a

jr_005_743b:
    jr nz, jr_005_741b

    jr nz, jr_005_7429

    ld a, l
    and h
    ld l, $20

jr_005_7443:
    jr nz, jr_005_7412

    ld a, h

jr_005_7446:
    db $dd
    ld d, d
    jr nz, jr_005_740e

    inc l
    jr nz, jr_005_74a4

    ld b, l
    ld a, l
    jp hl


jr_005_7450:
    jr nz, jr_005_7494

    ld b, l
    ld b, c
    ld d, h
    ld a, h
    adc l
    ld l, $7f
    ld c, c
    ld b, [hl]

jr_005_745b:
    jr nz, @-$21

    daa
    ld b, h

jr_005_745f:
    jr nz, jr_005_743b

    jr nz, jr_005_7443

    ld a, l
    rst RST_10
    jr nz, jr_005_74b9

    ld d, l
    ld d, e
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, h
    inc l

jr_005_7470:
    ld a, h
    db $dd
    jr nz, jr_005_74c7

    ld c, b
    ld c, a
    ld d, l
    ld c, h

jr_005_7478:
    ld b, h
    jr nz, jr_005_7450

    ld a, l
    sbc $20
    ld c, [hl]
    ld b, c
    ld b, a
    ld b, c
    daa
    ld d, e
    jr nz, jr_005_745f

    ld a, h
    ld c, d
    ld d, l
    ld d, e
    ld d, h
    jr nz, @-$33

    jr nz, jr_005_7470

    ld a, l
    jp nz, Jump_005_7f2e

    ld c, b

jr_005_7494:
    ld c, c
    inc l
    jr nz, jr_005_742b

    ld hl, $527c
    ld b, l
    ld c, l
    ld b, l

jr_005_749e:
    ld c, l
    ld b, d
    ld b, l
    ld d, d
    jr nz, jr_005_74f1

jr_005_74a4:
    ld b, l
    ccf
    jr nz, jr_005_74c8

    ld c, c
    ld d, h
    ld a, l
    db $ec
    jr nz, jr_005_74f7

    jr nz, @-$17

    jr nz, jr_005_74f9

jr_005_74b2:
    ld b, c

jr_005_74b3:
    ld d, [hl]
    ld b, l
    ld a, h
    db $dd
    jr nz, @-$20

jr_005_74b9:
    jr nz, jr_005_745b

    jr nz, jr_005_749e

jr_005_74bd:
    ld a, l
    ld b, a
    ld d, l
    ld c, c
    ld c, h
    ld b, l

jr_005_74c3:
    ld l, $20
    jr nz, jr_005_7510

jr_005_74c7:
    ld b, [hl]

jr_005_74c8:
    ld a, h

jr_005_74c9:
    sbc d
    jr nz, jr_005_751f

    ld b, l
    ld b, l
    cp l
    ld a, l
    sbc $20
    ld c, [hl]
    ld b, c
    ld b, a
    ld b, c
    daa
    ld d, e
    jr nz, jr_005_74b3

    inc l

jr_005_74db:
    ld a, h
    pop bc
    jr nz, jr_005_74bd

    jr nz, jr_005_7527

    ld c, c
    ld b, [hl]
    ld d, h
    ld c, b
    ld a, l
    xor $20
    ret z

    jr nz, jr_005_74c9

    ld a, h
    xor c
    ld b, l
    ld d, d
    ld c, [hl]
    ld c, l

jr_005_74f1:
    ld c, a
    ld d, e
    ld d, h
    ld a, l
    ld d, e
    ld c, c

jr_005_74f7:
    ld b, h
    ld b, l

jr_005_74f9:
    ld l, $20

jr_005_74fb:
    jr nz, jr_005_74db

    jr nz, jr_005_754e

    sbc $52
    ld a, h
    reti


    ld d, e
    jr nz, @-$1a

    jr nz, jr_005_7549

    ld c, h
    ld c, h
    ld a, l
    ld d, h
    ld d, d
    ld b, c
    ld d, b
    ld d, e

jr_005_7510:
    ld l, $20
    jr nz, jr_005_755b

jr_005_7514:
    ld c, a
    ld c, a
    ld b, h
    ld a, h
    ld c, h

jr_005_7519:
    ld d, l
    ld b, e
    ld c, e
    inc l
    jr nz, jr_005_74b2

jr_005_751f:
    ld l, $7f
    add e
    inc l
    jr nz, jr_005_756e

    ld a, l
    cp [hl]

jr_005_7527:
    jr nz, jr_005_74c3

    ld a, h
    ld b, e
    ld c, a

jr_005_752c:
    ld c, l
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $20
    jr nz, jr_005_757d

    ld b, [hl]
    jr nz, jr_005_7514

    ld a, l
    db $e4
    jr nz, jr_005_7519

    jr nz, @+$56

jr_005_753d:
    ld d, d
    ld d, l
    ld b, l
    jr nz, jr_005_752c

    ld a, h
    and h
    ld l, $20
    sub [hl]
    jr nz, @+$4f

jr_005_7549:
    ld b, l

jr_005_754a:
    ld a, l
    and $20
    ld d, b

jr_005_754e:
    ld d, d
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, @-$21

    ld d, d
    ld a, h
    ld d, d

jr_005_7557:
    ld c, c

jr_005_7558:
    ld b, a
    ld c, b
    ld d, h

jr_005_755b:
    jr nz, jr_005_753d

    jr nz, jr_005_753d

    ld a, l
    ld b, l
    ld d, h
    ld b, l
    ld d, d
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_005_74fb

    ld l, $7c
    ret nz

    jr nz, @+$44

jr_005_756e:
    ld b, l
    jr nz, jr_005_75c8

    ld b, c
    ld c, c
    ld d, h
    ld c, c
    ld c, [hl]
    ld b, a

jr_005_7577:
    ld a, l

jr_005_7578:
    push hl
    jr nz, jr_005_7558

    ld l, $7f

jr_005_757d:
    db $dd
    jr nz, jr_005_75c3

    ld c, a
    ld c, [hl]
    ld d, e
    ld d, l
    ld c, l
    ld b, l
    ld b, h
    jr nz, jr_005_7577

jr_005_7589:
    ld a, l
    adc h
    jr nz, jr_005_756e

    jr nz, @-$20

    ld a, h
    add sp, $2e
    ld a, l
    db $dd
    ld d, d
    jr nz, jr_005_754a

    jr nz, jr_005_7578

    ld a, h
    ld c, b
    ld b, l
    ld b, c
    ld c, h
    ld b, l
    ld b, h
    ld l, $7f
    db $dd
    jr nz, jr_005_7589

    jr nz, jr_005_75f0

    ld c, [hl]
    ld b, h
    ld b, l
    ld b, l

jr_005_75ab:
    ld b, h
    ld a, l
    sbc $20
    ld [$a420], a
    ld l, $7c
    ld b, d

jr_005_75b5:
    ld d, l
    ld d, h
    jr nz, @-$21

    jr nz, jr_005_7557

    ld a, l

jr_005_75bc:
    jp $dd20


    ld d, d
    jr nz, jr_005_7608

    ld d, l

jr_005_75c3:
    ld c, h
    ld c, h
    ld a, h

jr_005_75c6:
    xor l
    ld d, e

jr_005_75c8:
    jr nz, @+$5b

    ld b, l
    ld d, h
    ld l, $20
    jr nz, jr_005_75b5

    ld a, l
    call nc, $202c
    db $dd
    jr nz, jr_005_7625

    ld b, l
    ld b, l
    ld b, h
    ld a, h

jr_005_75db:
    sbc $20
    ld b, l
    ld d, h
    ld b, l
    ld d, d
    ld c, [hl]
    ld b, c

jr_005_75e3:
    ld c, h
    ld a, l
    sub d
    ld l, $20
    jr nz, @+$4b

    jr nz, jr_005_762d

    ld c, l

jr_005_75ed:
    ld a, h
    ld c, b
    ld c, a

jr_005_75f0:
    ld c, [hl]
    ld c, a
    ld [$e020], a

jr_005_75f5:
    jr nz, jr_005_75bc

    ld a, l
    ld c, c
    ld d, h
    jr nz, @-$1e

    jr nz, jr_005_75db

    ld l, $7c
    db $dd
    jr nz, jr_005_75c6

jr_005_7603:
    jr nz, jr_005_75e3

    ld a, l
    ld b, l
    ld d, h

jr_005_7608:
    ld b, l
    ld d, d
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, @-$6c

    ld l, $79
    dec l
    ld a, b
    add b
    ld a, h
    cp e
    jr nz, jr_005_75f5

    jr nz, jr_005_7603

jr_005_761a:
    ld a, l
    sub [hl]
    jr nz, jr_005_75ab

    ld l, $7c
    ld b, a
    ld c, a
    jr nz, @+$55

    ld b, c

jr_005_7625:
    ld d, [hl]
    ld b, l
    jr nz, jr_005_7678

    ld d, l
    ld d, d
    ld a, l
    xor [hl]

jr_005_762d:
    inc l

jr_005_762e:
    ld a, h
    ld [$a420], a
    ld l, $7f
    sbc $20
    adc h

jr_005_7637:
    jr nz, jr_005_761a

    ld a, l
    sbc $20

jr_005_763c:
    xor d
    jr nz, jr_005_75ed

    ld a, h
    rst RST_18
    jr nz, jr_005_7685

    ld d, l
    ld c, c
    ld c, h
    ld b, h
    ld c, c
    ld c, [hl]
    ld b, a
    ld a, l
    ld c, c

jr_005_764c:
    ld c, [hl]
    ld d, e
    ld c, c
    ld b, h
    ld b, l

jr_005_7651:
    jr nz, @-$21

    jr nz, @-$18

jr_005_7655:
    ld a, h
    ld b, [hl]
    ld c, c
    ld c, h
    ld c, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_763c

    jr nz, jr_005_762e

    ld a, h
    xor l
    ld l, $20

jr_005_7665:
    ret c

    xor $7d
    rst RST_18
    jr nz, jr_005_76be

    ld d, b
    ld b, l
    ld b, c
    cp l
    jr nz, jr_005_7651

    ld a, h
    db $dd
    jr nz, jr_005_76be

    ld c, [hl]
    jr nz, jr_005_7655

jr_005_7678:
    ld d, d
    ld a, l
    ld c, l
    ld c, c
    ld c, [hl]
    ld b, h
    ld l, $7c
    db $dd
    jr nz, @-$1a

jr_005_7683:
    jr nz, jr_005_76d4

jr_005_7685:
    ld d, l
    ld d, d
    ld a, l
    ld d, e
    ld c, a

jr_005_768a:
    ld c, [hl]
    ld l, $20
    jr nz, jr_005_76e2

    ld c, b

jr_005_7690:
    ld c, a
    ld d, a
    jr nz, jr_005_76e9

    ld d, e
    ld a, h

jr_005_7696:
    db $dd
    ld d, d
    jr nz, jr_005_76ec

    ld b, l

jr_005_769b:
    ld b, c

jr_005_769c:
    ld c, h
    jr nz, jr_005_764c

    ld a, l
    and $20
    sub [hl]
    jr nz, jr_005_7683

    ld a, h
    cp l
    jr nz, jr_005_768a

    ld a, l
    add b
    ld l, $7c
    db $dd
    jr nz, jr_005_7637

    jr nz, jr_005_7690

    ld a, l
    or b
    ld b, c
    ld c, h
    jr nz, jr_005_7665

    jr nz, jr_005_769b

jr_005_76ba:
    ld a, h
    call z, $2ec7

jr_005_76be:
    ld a, c
    ld l, $77
    inc de
    ld [hl], a

jr_005_76c3:
    inc hl
    ld [hl], a
    ld b, e
    ld [hl], a
    add l
    ld a, a
    ld d, a
    ld b, l
    ld c, h
    cp b
    inc l
    jr nz, jr_005_76ba

    ld a, l
    and h
    ld l, $20

jr_005_76d4:
    jr nz, jr_005_771f

    jr nz, jr_005_7696

    ld a, h
    pop hl
    jr nz, @-$21

    ld d, d
    jr nz, @-$51

jr_005_76df:
    ld l, $7d
    xor a

jr_005_76e2:
    jr nz, jr_005_76c3

    jr nz, jr_005_7734

    ld c, a
    jr nz, @+$50

jr_005_76e9:
    ld b, l
    ld b, l
    ld b, h

jr_005_76ec:
    ld a, h
    push hl
    jr nz, jr_005_7745

    ld d, e

jr_005_76f1:
    jr nz, @-$1e

    jr nz, @+$48

    ld c, c

jr_005_76f6:
    ld b, a
    ld c, b
    ld d, h
    ld l, $7d
    ld d, a
    ld c, b
    ld e, c
    jr nz, jr_005_769c

    jr nz, jr_005_76df

    ld a, h
    ld b, d
    ld b, l
    cp b
    jr nz, jr_005_7755

    ld e, c
    ld a, l

jr_005_770a:
    ld b, [hl]
    ld c, a
    ld c, h
    ld c, h
    ld c, a
    ld d, a
    ld b, l
    ld d, d
    ld l, $20
    jr nz, @+$4b

    ld b, [hl]
    ld a, h
    db $dd

jr_005_7719:
    jr nz, @+$46

    ld c, a
    inc l
    jr nz, jr_005_76df

jr_005_771f:
    ld a, l
    push bc
    jr nz, jr_005_76f6

    jr nz, @-$50

    ld a, h
    ldh [rNR41], a
    db $dd
    ld l, $20
    jr nz, jr_005_770a

    ld a, l
    adc $20
    ld b, d
    ld b, l
    jr nz, jr_005_76f1

jr_005_7734:
    ld l, $7c
    call c, Call_005_4420
    ld c, a
    jr nz, jr_005_7719

    jr nz, jr_005_7791

    ld b, c
    ld e, c
    inc l
    ld a, l
    ld [$a420], a

jr_005_7745:
    ccf
    ld a, h
    ld a, [hl]
    ld b, $dd
    jr nz, jr_005_7790

    db $e4
    jr nz, @-$1e

    ld a, l
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    ld d, e

jr_005_7755:
    ld b, l

jr_005_7756:
    jr nz, @+$4f

    ld b, l
    ccf
    ld hl, $b820
    ld a, h
    ldh [rNR41], a
    ld c, l
    ld b, l
    ld l, $7c
    db $dd
    jr nz, jr_005_77ad

jr_005_7767:
    ld c, a
    ld c, a
    ld c, h
    ld hl, $2020
    ld c, c
    ld a, l
    ld b, c
    ld b, d
    ld d, e
    ld c, a
    ld d, d
    ld b, d
    ld b, l
    ld b, h
    jr nz, jr_005_7756

    ld d, d
    ld a, h
    xor l
    ld l, $20
    jr nz, @+$48

    ld b, l
    ld b, l
    ld c, h
    jr nz, jr_005_77d2

    ld e, c
    ld a, l
    ld d, [hl]
    ld b, l
    ld c, [hl]
    ld b, a
    ld b, l
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l

jr_005_7790:
    ccf

jr_005_7791:
    ld [hl], a
    db $10
    ld [hl], a
    jr nz, jr_005_780d

    ld b, b
    ld [hl], a
    add d
    ld a, h
    ld [hl], e
    ld hl, $4e49
    ld b, [hl]
    ld b, l

jr_005_77a0:
    ld d, d
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_005_7790

    ld a, l
    and h
    inc l
    jr nz, jr_005_7767

    ld a, h
    ld b, c

jr_005_77ad:
    ld b, a
    ld b, c
    ld c, c
    ld c, [hl]
    jr nz, jr_005_7790

    jr nz, jr_005_77fd

    ld c, c
    ld c, [hl]
    ld b, h
    ld b, l
    ld d, d
    ld a, l
    ld c, l
    ld b, l
    ld l, $20

jr_005_77bf:
    jr nz, @+$44

    ld d, l
    ld d, h
    jr nz, @+$4b

    jr nz, @-$30

    ld a, h
    jp $de20


    jr nz, jr_005_7819

    ld b, c
    ld d, e
    ld d, h
    ld a, l
    ld c, h

jr_005_77d2:
    ld b, c
    ld d, l
    ld b, a

jr_005_77d5:
    ld c, b
    ld l, $77
    inc de
    ld [hl], a
    inc hl

jr_005_77db:
    ld [hl], a
    ld b, e
    ld [hl], a
    add l
    ld a, h
    ld [hl], e
    ld hl, $21dc
    jr nz, @+$22

    ld c, c
    daa
    ld d, [hl]
    ld b, l
    jr nz, jr_005_77a0

    ld a, l

jr_005_77ed:
    add h
    jr nz, jr_005_7844

    ld d, a
    ld c, c
    ld b, e
    ld b, l
    ccf
    ld a, h
    ret nz

    jr nz, @+$50

    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d

jr_005_77fd:
    ld a, l
    push hl
    rst RST_28
    jr nz, jr_005_77d5

    ld l, $7c
    ret nz

    jr nz, @+$44

    ld b, l
    jr nz, jr_005_77bf

    ld a, l
    and $eb

jr_005_780d:
    jr nz, jr_005_77ed

    ld c, [hl]
    db $eb
    ld a, h
    ret nz

    db $eb
    jr nz, jr_005_785d

    ld d, l
    ld d, l
    ld c, b

jr_005_7819:
    db $eb
    ld a, l
    ld b, a
    ld d, a
    ld b, c

jr_005_781e:
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld a, a
    ld c, b
    ld c, a
    ld c, a
    ld d, d
    ld b, c
    ld e, c
    inc l
    jr nz, jr_005_781e

    ld a, l
    and h
    ld l, $7f
    ld [$a420], a
    ld a, l
    push hl
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d
    ld hl, $487f

jr_005_7844:
    ld b, l
    ld e, c
    jr nz, jr_005_77db

    ld hl, $2020
    db $dd
    ld a, l
    ld c, l
    ld b, c

jr_005_784f:
    ld b, h
    ld b, l
    jr nz, jr_005_789c

    ld d, h
    ld l, $20
    jr nz, jr_005_78a1

    jr nz, jr_005_78a5

    ld c, [hl]

jr_005_785b:
    ld b, l
    ld d, a

jr_005_785d:
    ld a, h
    db $dd
    jr nz, jr_005_78b8

    ld c, a
    ld d, l
    ld c, h
    ld b, h
    ld l, $7f
    ld b, d
    ld d, l
    ld d, h
    jr nz, @+$59

    ld c, b
    ld e, c
    jr nz, jr_005_78b4

    ld c, c
    ld b, h
    ld c, [hl]
    daa
    ld d, h
    ld a, l
    db $dd
    jr nz, jr_005_784f

    jr nz, jr_005_78c8

    ld b, l
    jr nz, jr_005_785b

    ld a, h
    rst RST_08
    jr nz, @-$20

jr_005_7882:
    ld a, l
    ld c, h
    ld b, l
    ld b, a
    ld b, l
    ld c, [hl]
    ld b, h
    ld b, c
    ld d, d
    ld e, c
    jr nz, @-$14

    ld a, h
    and h
    ld l, $20
    jr nz, jr_005_78d5

    ld c, [hl]
    ld e, c
    ld d, a
    ld b, c
    ld e, c
    inc l
    ld a, l
    db $dd

jr_005_789c:
    jr nz, jr_005_78f1

    ld b, c
    ld d, [hl]
    ld b, l

jr_005_78a1:
    ld b, h
    jr nz, jr_005_7882

    ld a, h

jr_005_78a5:
    xor [hl]

jr_005_78a6:
    ld l, $20
    jr nz, jr_005_78f3

    jr nz, jr_005_78f4

    ld c, a
    ld d, b
    ld b, l
    ld a, h

jr_005_78b0:
    db $dd

jr_005_78b1:
    daa
    ld c, h
    ld c, h

jr_005_78b4:
    jr nz, @+$55

    ld d, h
    ld b, c

jr_005_78b8:
    ld e, c

jr_005_78b9:
    jr nz, @-$3c

    ld a, l
    and $20
    call nz, Call_005_5520

jr_005_78c1:
    ld d, e
    ld l, $7c
    ld b, d
    ld e, c
    jr nz, jr_005_78a6

jr_005_78c8:
    jr nz, jr_005_7921

    ld b, c
    ld e, c
    inc l
    ld a, l

jr_005_78ce:
    add e

jr_005_78cf:
    inc l
    jr nz, jr_005_78b0

    ld a, h
    ld b, l
    ld b, c

jr_005_78d5:
    ld d, d

jr_005_78d6:
    ld d, h
    ld c, b
    jr nz, jr_005_78b9

    jr nz, jr_005_78b9

    ld d, d
    ld d, e
    ld l, $7c
    ld c, c
    ld b, [hl]
    jr nz, jr_005_78c1

jr_005_78e4:
    jr nz, jr_005_78cf

    ld a, l
    ld b, e
    ld c, a
    ld c, [hl]
    ld d, c
    ld d, l
    ld b, l
    ld d, d
    jr nz, jr_005_78ce

    ld a, h

jr_005_78f1:
    ld b, l
    ld b, c

jr_005_78f3:
    ld d, d

jr_005_78f4:
    ld d, h
    ld c, b
    inc l
    jr nz, jr_005_78d6

    jr nz, jr_005_78e4

    ld a, h
    ld b, d
    ld b, l
    jr nz, @-$41

    jr nz, jr_005_78b1

    ld l, $7d
    ld b, a
    ld c, a
    ld c, a

jr_005_7907:
    ld b, h
    jr nz, jr_005_7956

    ld d, l
    ld b, e
    ld c, e
    ld hl, $577f
    ld b, l
    jr nz, @-$54

    ld d, e
    jr nz, @-$15

    jr nz, jr_005_795a

    ld b, l
    ld a, l
    adc e
    jr nz, @+$44

    ld e, c

jr_005_791e:
    ld a, h
    ld b, e
    ld c, b

jr_005_7921:
    ld b, c
    ld c, [hl]
    ld d, h
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_005_7907

jr_005_7929:
    ld a, l
    ld d, d
    ld b, l
    ld d, e
    ld d, l
    ld d, d
    ld d, d
    ld b, l
    ld b, e
    pop de
    ld a, h
    and c
    ld l, $7c

jr_005_7937:
    ld [hl], c
    ld a, h
    ret nz

    ld a, l
    sub $20
    db $dd
    jr nz, jr_005_791e

    ld a, h
    ld d, a
    ld c, a
    ld d, d
    ld b, h
    ld d, e

jr_005_7946:
    jr nz, jr_005_7929

    jr nz, @-$20

    ld a, l
    and c
    ld l, $20
    jr nz, @+$50

    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d
    ld a, h

jr_005_7955:
    push hl

jr_005_7956:
    rst RST_28
    jr nz, jr_005_7937

    ld c, l

jr_005_795a:
    ld l, $7f
    ld [hl], e
    inc e
    sbc $20
    add $4c
    ld c, c
    ld c, [hl]
    ld a, l
    and d

jr_005_7966:
    ccf
    jr nz, jr_005_7946

    jr nz, @-$1a

    jr nz, jr_005_79ae

    ld a, h
    ld d, e
    ld d, h
    ld d, l

jr_005_7971:
    ld d, b
    ld c, c
    ld b, h
    jr nz, @+$4a

    ld b, l
    ld c, [hl]
    ld b, e
    ld c, b
    ld c, l
    ld b, c
    ld c, [hl]
    ld a, l
    pop hl
    jr nz, jr_005_7955

    jr nz, jr_005_79c5

    ld b, c

jr_005_7984:
    ld d, d
    xor $2e
    ld a, h
    ld c, c
    jr nz, @+$55

    ld b, l
    ld b, c
    ld c, h
    ld b, l
    ld b, h
    jr nz, jr_005_7966

    ld a, l
    and d
    jr nz, jr_005_79d7

    ld d, a
    ld b, c
    ld e, c
    jr nz, @+$4b

    ld c, [hl]
    ld a, h
    sbc $20
    ld b, d
    ld c, c

jr_005_79a1:
    ld b, a
    jr nz, jr_005_7984

    ld d, a
    ld b, l
    ld d, d
    ld a, l
    ld c, l
    ld c, a
    ld c, [hl]
    ld d, e
    ld d, h
    ld b, l

jr_005_79ae:
    ld d, d
    ld l, $7c
    ld [hl], d
    ld a, [de]
    add e
    ld l, $20
    jr nz, jr_005_7a04

    ld b, l
    ld d, h
    ld a, l
    ld c, l
    ld b, l
    jr nz, @+$56

    ld b, l
    ld d, e
    ld d, h

jr_005_79c2:
    jr nz, jr_005_79a1

    ld d, d

jr_005_79c5:
    ld a, h
    ld d, e
    ld d, h
    ld d, d
    ld b, l
    ld c, [hl]

jr_005_79cb:
    ld b, a
    ld d, h

jr_005_79cd:
    ld c, b
    ld l, $7c
    ld [hl], d
    dec de
    db $dd
    jr nz, jr_005_7a27

    ld b, l
    ld b, e

jr_005_79d7:
    ld c, a
    ld d, [hl]
    ld b, l
    ld [$de7d], a
    jr nz, jr_005_7971

    jr nz, jr_005_79c2

    ld a, h
    call z, $20ba
    ret z

    ld a, l
    sbc $20
    sub l

jr_005_79ea:
    jr nz, jr_005_79cd

    ld a, h
    ld b, h
    ld b, l
    ld d, e
    ld d, h

jr_005_79f1:
    ld c, c

jr_005_79f2:
    ld d, h
    ld d, l
    pop de
    ld l, $78
    ld b, b
    ld a, c
    dec l
    ld a, h
    db $dd

jr_005_79fc:
    jr nz, jr_005_7a3f

    ld c, h
    ld d, e
    ld c, a
    ld a, l
    ld d, d
    ld b, l

jr_005_7a04:
    ld b, e
    ld b, l
    ld c, c
    ld d, [hl]

jr_005_7a08:
    ld b, l
    ld b, h
    jr nz, jr_005_79ea

    ld a, h
    xor l
    jr nz, jr_005_79f1

    jr nz, jr_005_79cb

    ld l, $77
    ld [de], a
    ld a, a
    ld c, [hl]
    ld c, a
    jr nz, jr_005_7a08

    jr nz, jr_005_79fc

    jr nz, jr_005_7a71

    ld d, b
    ld b, l
    ld b, c
    ld c, e
    ld a, l
    ldh [$ff2e], a
    ld a, a
    xor b

jr_005_7a27:
    jr nz, jr_005_79f2

    ld a, l
    ld b, c
    ld c, [hl]
    ld e, c
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $7f
    ld c, [hl]
    ld c, a
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, @-$1e

    jr nz, jr_005_7a94

jr_005_7a3f:
    ld d, e
    ld b, l
    ld l, $7f
    adc [hl]
    jr nz, jr_005_7a77

    ld a, l
    ld d, [hl]
    ld c, c
    ld b, c
    ld c, h
    ld l, $74
    ld bc, $2d79
    ld a, a
    adc [hl]
    jr nz, jr_005_7a86

    ld a, l
    sbc a
    ld l, $74
    ld [bc], a

jr_005_7a59:
    ld a, c

jr_005_7a5a:
    dec l
    ld a, a
    adc [hl]
    jr nz, jr_005_7a92

    ld a, l
    sbc a
    ld l, $74
    inc bc
    ld a, c
    dec l
    ld a, a
    adc [hl]
    jr nz, @+$36

    ld a, l

jr_005_7a6b:
    sbc a

jr_005_7a6c:
    ld l, $74
    inc b
    ld a, c
    dec l

jr_005_7a71:
    ld a, a
    adc [hl]
    jr nz, jr_005_7aa6

    ld a, h
    db $e3

jr_005_7a77:
    jr nz, jr_005_7a5a

    jr nz, jr_005_7a59

    ld a, l
    ldh [c], a

jr_005_7a7d:
    ld l, $74

jr_005_7a7f:
    add c
    ld a, c
    dec l
    ld a, a
    adc [hl]
    jr nz, jr_005_7ab8

jr_005_7a86:
    ld a, h
    db $e3

jr_005_7a88:
    ld d, e
    jr nz, jr_005_7a6c

    jr nz, jr_005_7a6b

    ld a, l

jr_005_7a8e:
    ldh [c], a

jr_005_7a8f:
    ld l, $74
    add d

jr_005_7a92:
    ld a, c
    dec l

jr_005_7a94:
    ld a, a
    adc [hl]
    jr nz, jr_005_7acc

jr_005_7a98:
    ld a, h
    db $e3
    ld d, e
    jr nz, @-$1d

    jr nz, jr_005_7a7d

    ld a, l
    ldh [c], a

jr_005_7aa1:
    ld l, $74
    add h
    ld a, c
    dec l

jr_005_7aa6:
    ld a, a
    adc [hl]
    jr nz, jr_005_7a88

    ld a, l
    adc h

jr_005_7aac:
    jr nz, jr_005_7a8f

    jr nz, jr_005_7a8e

    ld a, h
    add sp, $2e
    ld [hl], h
    ld b, c
    ld a, c
    dec l
    ld a, a

jr_005_7ab8:
    add e
    ld hl, $2020
    cp h
    ld a, l
    db $dd
    jr nz, jr_005_7a7f

    jr nz, jr_005_7aa1

    ld a, h
    ld d, e
    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    jr nz, @-$1d

jr_005_7acc:
    jr nz, jr_005_7aac

    ld a, l
    ld [$a420], a
    inc l
    jr nz, @+$59

    ld b, l
    ld a, h
    xor b
    jr nz, jr_005_7b2d

    ld b, l
    ld d, h
    jr nz, @-$21

    ld a, l
    ld b, [hl]
    ld d, d

jr_005_7ae1:
    ld b, l

jr_005_7ae2:
    ld b, l
    ld l, $7c
    ld [hl], e
    jr nz, jr_005_7b67

    sub b
    jr nz, jr_005_7b66

    db $10
    sub b
    jr nz, jr_005_7b6a

    db $10
    ld a, l
    sub b
    jr nz, @+$81

    adc c
    jr nz, jr_005_7b2f

jr_005_7af7:
    jr nz, jr_005_7a98

    ld a, l
    push hl
    jr nz, @+$33

    jr nz, jr_005_7ae2

    ld a, h
    pop hl
    jr nz, jr_005_7ae1

    jr nz, @-$1c

    ld l, $7c
    ld a, [hl]
    rlca
    adc c
    jr nz, jr_005_7b44

jr_005_7b0c:
    jr nz, @-$5f

    ld a, l
    push hl
    jr nz, @+$33

    jr nz, jr_005_7af7

    ld a, h
    pop hl
    jr nz, @-$20

    jr nz, @-$1c

    ld l, $7c
    ld a, [hl]
    ld [$2089], sp
    jr c, jr_005_7b42

    sbc a
    ld a, l
    push hl
    jr nz, jr_005_7b58

    jr nz, jr_005_7b0c

    ld a, h
    pop hl
    jr nz, @-$20

jr_005_7b2d:
    jr nz, @-$1c

jr_005_7b2f:
    ld l, $7c

jr_005_7b31:
    ld a, [hl]

jr_005_7b32:
    add hl, bc
    adc c
    jr nz, jr_005_7b67

    ld [hl], $7d
    add c
    ld sp, $e37c
    jr nz, @-$1d

    jr nz, @-$20

    ld a, l
    ldh [c], a

jr_005_7b42:
    ld l, $7c

jr_005_7b44:
    ld a, [hl]

jr_005_7b45:
    rlca
    adc c
    jr nz, jr_005_7b7a

    ld [hl], $7d
    add c
    ld sp, $e37c
    jr nz, jr_005_7b32

jr_005_7b51:
    jr nz, jr_005_7b31

    ld a, l
    ldh [c], a
    ld l, $7c

jr_005_7b57:
    ld a, [hl]

jr_005_7b58:
    ld [$2089], sp
    ld sp, $7d36
    add c
    ld sp, $e37c
    jr nz, jr_005_7b45

    jr nz, jr_005_7b44

jr_005_7b66:
    ld a, l

jr_005_7b67:
    ldh [c], a
    ld l, $7c

jr_005_7b6a:
    ld a, [hl]

jr_005_7b6b:
    add hl, bc
    adc c
    jr nz, @+$35

    ld [hl-], a
    ld a, l
    add c
    ld sp, $e37c
    jr nz, jr_005_7b58

    jr nz, jr_005_7b57

    ld a, l

jr_005_7b7a:
    ldh [c], a
    ld l, $7c

jr_005_7b7d:
    ld a, [hl]

jr_005_7b7e:
    rlca
    adc c
    jr nz, jr_005_7bb5

    ld [hl-], a
    ld a, l
    add c
    ld sp, $e37c
    jr nz, jr_005_7b6b

    jr nz, jr_005_7b6a

    ld a, l
    ldh [c], a
    ld l, $7c
    ld a, [hl]
    ld [$2089], sp
    inc sp
    ld [hl-], a

jr_005_7b96:
    ld a, l
    add c
    ld sp, $e37c
    jr nz, jr_005_7b7e

    jr nz, jr_005_7b7d

    ld a, l
    ldh [c], a
    ld l, $7c
    ld a, [hl]
    add hl, bc
    db $dd
    ld d, d
    jr nz, jr_005_7b51

    jr nz, jr_005_7bee

    ld b, c
    ld d, d
    ld d, d
    ld e, c
    ld a, l
    ld b, c
    ld c, [hl]
    ld e, c
    jr nz, jr_005_7c02

jr_005_7bb5:
    ld c, a
    ld d, d
    ld b, l
    ld a, h
    db $e3
    ld d, e
    ld l, $7f
    ld c, l
    ld c, a

jr_005_7bbf:
    ld d, d
    ld b, l
    jr nz, jr_005_7c17

    ld c, b
    ld b, c
    ld c, [hl]
    jr nz, @-$2a

    ld a, l
    ld d, a
    ld c, a
    ld d, l
    ld c, h
    ld b, h
    jr nz, jr_005_7c12

    ld b, l
    jr nz, @+$49

jr_005_7bd3:
    ld d, d
    ld b, l
    ld b, l

jr_005_7bd6:
    ld b, h
    ld e, c
    ld l, $7f
    ld d, e
    ld b, l
    ld b, l
    jr nz, @-$21

    jr nz, jr_005_7bbf

    ld c, [hl]
    ld l, $7f
    ld d, e
    ld c, a
    ld d, d
    ld d, d
    ld e, c
    ld l, $20
    jr nz, @-$64

    ld a, l

jr_005_7bee:
    ld d, e
    ld c, b
    ld c, a
    ld d, d
    ld d, h
    jr nz, jr_005_7bd6

    jr nz, jr_005_7b96

    ld l, $7f
    jr nz, jr_005_7c1b

    ld e, d
    ld d, l
    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, jr_005_7c46

jr_005_7c02:
    ld d, d
    ld d, l
    ld b, l
    ld d, d
    ld [hl], l
    ld b, d
    ld c, c
    ld b, a
    ldh [$ff57], a
    ld b, l
    ld d, d
    jr nz, jr_005_7c5d

    ld c, a
    ld c, [hl]

jr_005_7c12:
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    ld [hl], l

jr_005_7c17:
    jr nz, jr_005_7c39

    jr nz, jr_005_7c5d

jr_005_7c1b:
    ld b, l
    ld c, h
    ld c, h
    ld e, d
    ld b, l
    ld c, l
    ld c, a
    ld d, e
    ld [hl], l
    jr nz, jr_005_7c46

    jr nz, jr_005_7c82

    ld b, c
    ld c, e
    ld c, e
    ld d, l
    ld b, h
    ld d, d

Jump_005_7c2e:
    ld d, l
    ld e, d
    ld b, l
    ld d, d
    ld [hl], l
    jr nz, jr_005_7c55

    jr nz, jr_005_7c57

    ld d, d
    ld d, l

jr_005_7c39:
    ld d, e
    ld c, b
    ld c, c
    ld b, [hl]
    ld b, l
    ld c, h
    ld c, h
    ld [hl], l
    jr nz, jr_005_7c63

    cp l
    jr nz, jr_005_7bd3

jr_005_7c46:
    ld [hl], l
    jr nz, jr_005_7c69

    jr nz, jr_005_7c7d

    ld c, c
    ld d, d
    ld sp, $5242
    ld b, c
    ld c, [hl]
    jr nc, jr_005_7cc9

    ld b, h

jr_005_7c55:
    ld b, l
    ld d, e

jr_005_7c57:
    ld d, h
    ld d, d
    ld d, l
    ld b, e
    ld d, h
    ld c, c

jr_005_7c5d:
    ld c, a
    ld c, [hl]
    nop
    ld d, [hl]
    ld c, c
    ld b, c

jr_005_7c63:
    ld c, h
    ld d, e
    jr nz, jr_005_7cad

    ld c, a
    ld d, d

jr_005_7c69:
    jr nz, jr_005_7c6b

jr_005_7c6b:
    ld c, c
    ld c, [hl]
    ld b, e
    ld d, d
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    ld b, h
    nop
    ld b, [hl]
    ld c, c
    ld d, d
    ld b, l
    ld b, d
    ld d, d
    ld b, c
    ld c, [hl]

jr_005_7c7d:
    ld b, h
    nop
    ld b, h
    ld b, l
    ld b, [hl]

jr_005_7c82:
    ld b, l
    ld b, c
    ld d, h
    ld b, l
    ld b, h
    nop
    ld b, h
    ld b, c
    ld d, d
    ld c, e
    ld c, a
    ld b, c
    ld c, [hl]
    nop
    ld b, c
    ld d, h
    ld d, h
    ld b, c
    ld b, e
    ld c, e
    ld b, l
    ld b, h
    nop
    ld b, c
    ld b, e
    ld d, c
    ld d, l
    ld c, c
    ld d, d
    ld b, l
    ld b, h
    nop
    ld c, l
    ld b, c
    ld c, d
    ld c, a
    ld d, d
    ld c, c
    ld d, h
    ld b, c
    nop
    ld b, l
    ld e, b

jr_005_7cad:
    ld b, e
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    nop
    ld c, h
    ld d, l
    ld b, e
    ld c, c
    ld b, [hl]
    ld b, l
    ld d, d
    nop
    ld d, d
    ld b, l
    ld d, [hl]
    ld c, c
    ld d, [hl]
    ld b, l
    ld b, h
    nop
    ld b, l
    ld d, e
    ld d, e
    ld b, l
    ld c, [hl]

jr_005_7cc9:
    ld b, e
    ld b, l
    nop
    ld b, d
    ld d, d
    ld b, l
    ld b, c
    ld b, a
    ld b, l
    ld d, d
    nop
    ld c, a
    ld b, d
    ld d, h
    ld b, c
    ld c, c
    ld c, [hl]
    ld b, l
    ld b, h
    nop
    ld b, h
    ld b, l
    ld d, e
    ld d, h
    ld d, d
    ld d, l
    ld b, e
    nop
    ld d, a
    ld d, l
    ld c, b
    ld l, $2e
    ld l, $00
    ld b, e
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    nop
    ld b, e
    ld b, c
    ld c, [hl]
    ld b, h
    ld c, h
    ld b, l
    nop
    ld b, [hl]
    ld d, d
    ld c, c
    ld b, l
    ld c, [hl]
    ld b, h
    nop
    ld b, h
    ld b, l
    ld b, e
    ld b, l
    ld c, c
    ld d, h
    nop
    ld b, h
    ld b, l
    ld d, e
    ld b, l
    ld d, d
    ld d, h
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, c
    ld d, h
    nop
    ld d, h
    ld b, c
    ld c, h
    ld c, c
    ld d, e
    nop
    ld d, b
    ld b, c
    ld c, h
    ld b, c
    ld b, e
    ld b, l
    nop
    ld b, h
    ld b, l
    ld d, [hl]
    ld c, c
    ld b, l
    ld c, h
    nop
    ld e, c
    ld c, a
    ld d, l
    daa
    ld d, d
    ld b, l
    nop
    ld d, e
    ld d, h
    ld d, d
    ld c, a
    ld c, [hl]
    ld b, a
    nop
    ld b, h
    ld c, a
    ld c, [hl]
    daa
    ld d, h
    nop
    ld b, c
    ld c, b
    ld b, l
    ld b, c
    ld b, h
    nop
    ld d, e
    ld c, c
    ld b, h
    ld b, l
    ld d, e
    nop
    ld d, [hl]
    ld c, c
    ld b, c
    ld c, h
    ld d, e
    nop
    ld b, c
    ld d, d
    ld c, l
    ld c, a
    ld d, d
    nop
    ld d, e
    ld d, b
    ld b, l
    ld c, h
    ld c, h
    nop
    ld d, e
    ld d, h
    ld c, c
    ld b, e
    ld c, e
    nop
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    ld c, h
    nop
    ld b, d
    ld c, h
    ld b, c
    ld e, d
    ld b, l
    nop
    ld b, d
    ld e, c
    ld c, l
    ld c, a
    ld c, [hl]
    nop
    ld c, h
    ld c, c
    ld b, a
    ld c, b
    ld d, h
    nop
    ld c, h
    ld c, c
    ld d, [hl]
    ld b, l
    ld d, e
    nop
    ld b, e
    ld b, c
    ld c, [hl]
    daa
    ld d, h
    nop
    ld c, [hl]
    ld c, a
    ld d, d
    ld d, h
    ld c, b
    nop
    ld b, a
    ld c, b
    ld c, a
    ld d, l
    ld c, h
    nop
    ld d, a
    ld c, c
    ld c, [hl]
    ld b, a
    ld d, e
    nop
    ld d, a
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    nop
    ld d, b
    ld c, a
    ld d, a
    ld b, l
    ld d, d
    nop
    ld d, d
    ld b, l
    ld b, c
    ld c, h
    ld c, l
    nop
    ld d, h
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    nop
    ld c, l
    ld b, c
    ld b, a
    ld c, c
    ld b, e
    nop
    ld d, h
    ld c, b
    ld c, a
    ld d, e
    ld b, l
    nop
    ld b, c
    ld d, d
    ld c, l
    ld e, c
    nop
    ld b, d
    ld c, a
    ld b, h
    ld e, c
    nop
    ld b, d
    ld b, l
    ld b, l
    ld c, [hl]
    nop
    ld b, d
    ld b, c
    ld b, e
    ld c, e
    nop
    ld b, e
    ld b, c
    ld d, [hl]
    ld b, l
    nop
    ld b, e
    ld b, c
    ld d, d
    ld b, l
    nop
    ld b, e
    ld c, a
    ld c, l
    ld b, l
    nop
    ld b, e
    ld c, h
    ld b, c
    ld d, a
    nop
    ld c, [hl]
    ld b, l
    ld d, e
    ld d, e
    nop
    ld c, a
    ld c, [hl]
    ld c, h
    ld e, c
    nop
    ld c, a
    ld c, [hl]
    ld b, e
    ld b, l
    nop
    ld c, e
    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld c, e
    ld c, [hl]
    ld c, a
    ld d, a
    nop
    ld c, d
    ld b, c
    ld d, d
    ld c, e
    nop
    ld c, c
    daa
    ld c, h
    ld c, h
    nop
    ld c, c
    ld d, h
    daa
    ld d, e
    nop
    ld c, b
    ld b, l
    ld d, d
    ld b, l
    nop
    ld c, b
    ld b, c
    ld d, [hl]
    ld b, l
    nop
    ld c, b
    ld b, l
    ld c, h
    ld d, b
    nop
    ld b, a
    ld c, c
    ld d, [hl]
    ld b, l
    nop
    ld b, a
    ld d, d
    ld b, l
    ld c, l
    nop
    ld b, [hl]
    ld c, c
    ld d, d
    ld b, l
    nop
    ld b, [hl]
    ld d, d
    ld c, a
    ld c, l
    nop
    ld b, [hl]
    ld c, c
    ld c, [hl]
    ld b, h
    nop
    ld b, l
    ld d, [hl]
    ld b, l
    ld c, [hl]
    nop
    ld b, l
    ld b, c
    ld d, e
    ld d, h
    nop
    ld b, h
    ld b, c
    ld d, d
    ld c, e
    nop
    ld d, a
    ld c, c
    ld d, h
    ld c, b
    nop
    ld d, a
    ld c, c
    ld c, h
    ld c, h
    nop
    ld d, a
    ld b, l
    ld d, d
    ld b, l
    nop
    ld d, [hl]
    ld b, l
    ld d, d
    ld e, c
    nop
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    nop
    ld d, h
    ld c, b
    ld b, l
    ld e, c
    nop
    ld d, h
    ld c, b
    ld c, c
    ld d, e
    nop
    ld d, h
    ld c, b
    ld b, c
    ld d, h
    nop
    ld d, h
    ld b, c
    ld c, e
    ld b, l
    nop
    ld d, h
    ld b, l
    ld c, h
    ld c, h
    nop
    ld c, l
    ld b, l
    ld b, l
    ld d, h
    nop
    ld d, e
    ld c, a
    ld c, l
    ld b, l
    nop
    ld d, b
    ld b, c
    ld d, h
    ld c, b
    nop
    ld c, h
    ld c, c
    ld c, e
    ld b, l
    nop
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, a
    nop
    ld d, a
    ld c, b
    ld b, c
    ld d, h
    nop
    ld e, c
    ld c, a
    ld d, l
    nop
    ld d, h
    ld c, b
    ld b, l
    nop
    ld c, c
    ld d, e
    nop
    ld d, h
    ld c, a
    nop
    ld c, a
    ld b, [hl]
    nop
    ld b, e
    ld e, c
    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    nop
    ld d, h
    ld b, c
    ld c, h
    ld c, c
    ld d, e
    ld c, l
    ld b, c
    ld c, [hl]
    nop
    ld b, c
    ld d, d
    ld b, l
    nop
    ld b, [hl]
    ld c, a
    ld d, d
    nop
    ld b, c
    ld c, [hl]
    ld b, h
    nop
    ld d, a
    ld c, b
    ld c, a
    nop
    ld d, e
    ld c, a
    ld d, l
    ld c, h
    ld d, e
    ld d, h
    ld d, d
    ld b, l
    ld b, c
    ld c, l
    nop
    ld b, e
    ld b, c
    ld c, [hl]
    nop
    ld d, d
    ld b, l
    ld b, h
    nop
    ld l, $2e
    ld l, $00
    ld d, a
    ld b, c
    ld d, e
    nop
    ld c, b
    ld b, c
    ld d, e
    nop
    ld c, a
    ld c, [hl]
    ld b, l
    nop
    ld b, a
    ld b, l
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_005_7f2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
