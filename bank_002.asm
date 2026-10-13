; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

Call_002_4000:
    jp Jump_002_46e3


    ld hl, $9800

Call_002_4006:
    ld bc, $0140
    ld a, $1b
    call Call_000_0049
    ld a, [$df39]
    or a
    jp nz, Jump_002_4083

    push hl
    ld a, $24
    ld [$df00], a
    call Call_000_00c8
    ld a, $26
    ld [$9805], a
    ld a, $1c
    ld [$980b], a
    ld a, $13
    ld [$9824], a
    inc a
    ld [$9825], a
    ld a, $2b
    ld [$982a], a
    inc a
    ld [$982b], a
    pop hl
    ld de, $432a
    ld bc, $140a
    call Call_002_4143
    ld bc, $01c0
    ld a, $0f
    call Call_000_0049
    ld bc, $02c0
    ld a, $c0
    call Call_000_0049
    ld hl, $9988
    ld b, $05
    call Call_002_4159
    ld hl, $99c8
    ld b, $08
    call Call_002_4159
    ld hl, $9a02
    ld b, $11
    call Call_002_4159
    ld hl, $9a20
    ld b, $14
    call Call_002_4159
    xor a
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    jr jr_002_4083

Jump_002_407d:
    call Call_000_0051
    call Call_000_00e5

Jump_002_4083:
jr_002_4083:
    xor a
    ld [$c669], a
    ld a, $02
    ld [$df08], a
    ld a, $08
    ld [$c361], a
    ld hl, $9c00
    ld bc, $0500
    ld a, $c0
    call Call_000_0049
    ld a, [$df39]
    cp $02
    jp z, Jump_002_425a

    ld hl, $9c00
    ld de, $0020
    ld a, $a3
    ld b, $20

jr_002_40ae:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_40ae

    ld hl, $9c13
    ld b, $20

jr_002_40b8:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_002_40b8

    call Call_002_4160
    call Call_000_0044
    xor a
    ld [$c364], a
    ld [$c362], a
    ld a, $e3
    ldh [rLCDC], a
    ei
    call Call_000_0059
    ld a, $05
    ld [$c7c1], a
    ld a, $64
    ld [$c7c2], a

jr_002_40dc:
    ld a, [$c7c0]
    and $01
    swap a
    add $70
    ld [$c000], a
    ld a, $38
    ld [$c001], a
    ld a, $8f
    ld [$c002], a
    xor a
    ld [$c003], a
    call Call_000_00e0
    ld a, [$c7c2]
    dec a
    ld [$c7c2], a
    jr nz, jr_002_410c

    ld a, [$c7c1]
    dec a
    ld [$c7c1], a
    jp z, Jump_002_407d

jr_002_410c:
    ld a, [$c262]
    and $c4
    jr z, jr_002_411b

    ld a, [$c7c0]
    xor $01
    ld [$c7c0], a

jr_002_411b:
    ld b, $6c
    ld a, [$c26a]
    ld c, a
    and $f0
    jr nz, jr_002_412c

    ld a, c
    and $04
    jr nz, jr_002_412c

    ld b, $93

jr_002_412c:
    ld a, b
    ld [$c669], a
    ld a, [$c262]
    and $08
    jr z, jr_002_40dc

    xor a
    ld [$df08], a
    ld a, [$c7c0]
    rrca
    ret nc

    jp Jump_002_4424


Call_002_4143:
jr_002_4143:
    push bc

jr_002_4144:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4144

    ld a, l
    and $e0
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop bc
    dec c
    jr nz, jr_002_4143

    ret


Call_002_4159:
jr_002_4159:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_002_4159

    ret


Call_002_4160:
    xor a
    ld hl, $c362
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$c7c1], a
    ld [$c7cb], a
    ld hl, $c203
    ld d, h
    inc d
    ld e, l
    ld [hl+], a
    ld [de], a
    inc e
    ld [hl+], a
    ld [de], a
    inc l
    ld e, l
    ld a, $10
    ld [hl+], a
    ld a, $98
    ld [de], a
    inc e
    xor a
    ld [hl], a
    ld [de], a
    ld l, $10
    ld e, l
    ld [hl-], a
    ld [de], a
    dec e
    ld [hl-], a
    ld [de], a
    dec e
    ld a, $1c
    ld [hl], a
    inc a
    ld [de], a
    xor a
    ld l, a
    ld e, a
    inc a
    ld [hl], a
    ld [de], a
    ld a, $e0
    ld [$c360], a
    call Call_002_6967
    call Call_002_69c4
    ld a, [$df39]
    or a
    jp nz, Jump_002_420a

    ld a, $b0
    ld [$c7c3], a
    ld [$c362], a
    ld a, $03
    ld [$c7c2], a
    ld a, $eb
    ldh [rLCDC], a
    ei
    call Call_000_0059
    xor a
    ld [$c7b0], a

jr_002_41c4:
    call Call_000_00e0
    ld a, [$c7c1]
    ld b, a
    or a
    jr nz, jr_002_41d5

    ld a, [$c26a]
    and $03
    jr nz, jr_002_41f4

jr_002_41d5:
    ld a, [$c7c3]
    inc a
    add b
    ld [$c7c3], a
    ld [$c362], a
    push af
    and $07
    call z, Call_002_427b
    pop af
    or a
    jr nz, jr_002_41f4

    ld a, [$c7c2]
    dec a
    ld [$c7c2], a
    jp z, Jump_000_0051

jr_002_41f4:
    ld a, [$c262]
    and $08
    jr z, jr_002_41c4

    ld a, $03
    ld [$c7c1], a
    ld a, [$c7c3]
    and $fc
    ld [$c7c3], a
    jr jr_002_41c4

Jump_002_420a:
    ld a, $d6
    ld [$c7c0], a
    ld a, $03
    ld [$c7c1], a
    xor a
    ld [$c7c2], a
    ld a, $eb
    ldh [rLCDC], a
    ei
    call Call_000_0059
    call Call_002_4229
    pop bc
    ld a, $f0
    jp Jump_000_00d0


Call_002_4229:
    xor a
    ld [$c7b0], a

jr_002_422d:
    ld a, [$c7c0]
    ld [$c362], a
    call Call_000_00e0
    ld a, [$c7c2]
    add $28
    ld [$c7c2], a
    jr nc, jr_002_422d

    ld a, [$c7c0]
    inc a
    push af
    and $07
    call z, Call_002_427b
    pop af
    ld [$c7c0], a
    jr nz, jr_002_422d

    ld a, [$c7c1]
    dec a
    ld [$c7c1], a
    jr nz, jr_002_422d

    ret


Jump_002_425a:
    ld a, $9f
    ld [$c7c0], a
    xor a
    ld [$c7c2], a
    ld [$c364], a
    inc a
    ld [$c7c1], a
    ld a, $eb
    ldh [rLCDC], a
    ei
    call Call_000_0059
    call Call_002_4229

Jump_002_4275:
    call Call_000_00e0
    jp Jump_002_4275


Call_002_427b:
    ld a, [$c7b6]
    add $20
    ld [$c7b6], a
    ld a, [$c7b7]
    adc $00
    and $03
    or $9c
    ld [$c7b7], a
    ld a, [$c7b0]
    dec a
    jr z, jr_002_42c8

    dec a
    jp z, Jump_002_431b

    ld hl, $4980
    ld bc, $9d42
    ld a, [$df39]
    or a
    jr z, jr_002_42b4

    ld hl, $4b19
    ld bc, $9da2
    dec a
    jr z, jr_002_42b4

    ld hl, $4c4f
    ld bc, $9cc6

jr_002_42b4:
    ld a, c
    ld [$c7b6], a
    ld a, b
    ld [$c7b7], a
    ld a, $10
    ld [$c7b3], a
    swap a
    ld [$c7b0], a
    jr jr_002_42d0

jr_002_42c8:
    ld a, [$c7b8]
    ld l, a
    ld a, [$c7b9]
    ld h, a

jr_002_42d0:
    ld de, $c770
    ld c, $00

jr_002_42d5:
    ld a, [hl+]
    bit 7, a
    jr z, jr_002_42df

    ld [de], a
    inc e
    inc c
    jr jr_002_42d5

jr_002_42df:
    sub $70
    jr nz, jr_002_42f9

    and $0f
    ld b, a
    jr nz, jr_002_42ea

    ld b, $10

jr_002_42ea:
    ld a, $c0

jr_002_42ec:
    ld [de], a
    inc e
    inc c
    dec b
    jr nz, jr_002_42ec

    ld a, c
    and $0f
    jr nz, jr_002_42d5

    jr jr_002_430a

jr_002_42f9:
    cp $0d
    jr nz, jr_002_4316

    ld a, $10
    sub c
    jr z, jr_002_430a

    ld b, a
    ld a, $c0

jr_002_4305:
    ld [de], a
    inc e
    dec b
    jr nz, jr_002_4305

jr_002_430a:
    ld a, l
    ld [$c7b8], a
    ld a, h
    ld [$c7b9], a
    ld [$c79d], a
    ret


jr_002_4316:
    ld a, $02
    ld [$c7b0], a

Jump_002_431b:
    ld hl, $c770
    ld b, $10
    ld a, $c0

jr_002_4322:
    ld [hl+], a
    dec b
    jr nz, jr_002_4322

    ld [$c79d], a
    ret


    dec de
    dec de
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $1b
    dec de
    dec de
    dec de
    ld h, $10
    ld de, $2212
    ld [hl+], a
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    dec e
    ld e, $1f
    dec de
    ld h, $13
    inc d
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [hl+], a
    daa
    jr z, jr_002_4387

    ld a, [hl+]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld l, $2f
    inc de
    inc d
    dec l
    add b
    jr nc, jr_002_439b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_43ab

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    add e
    add [hl]
    dec l
    add c
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_002_4387:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add h
    dec l
    dec l
    add d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_002_439b:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add l
    dec l
    dec l
    dec l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_002_43ab:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    dec l
    dec l
    dec l
    dec l
    ld [hl], b
    dec l
    dec l
    dec l
    dec l
    dec l
    halt
    dec l
    dec l
    ld a, c
    dec l
    dec l
    dec l
    dec l
    dec l
    ld a, a
    dec l
    dec l
    ld [hl], c
    ld [hl], d
    ld [hl], l
    ld [hl], a
    ld [hl], c
    ld [hl], d
    ld [hl], l
    ld [hl], a
    ld [hl], c
    ld [hl], d
    ld [hl], l
    ld [hl], a
    ld [hl], c
    ld [hl], d
    ld [hl], l
    ld [hl], a
    ld [hl], c
    ld [hl], d
    ld [hl], l
    ld [hl], a
    ld [hl], e
    ld [hl], h
    rrca
    rrca
    ld [hl], e
    ld [hl], h
    rrca
    rrca
    ld [hl], e
    ld [hl], h
    rrca
    rrca
    ld [hl], e
    ld [hl], h
    rrca
    rrca
    ld [hl], e
    ld [hl], h
    rrca
    rrca
    sub b
    sub c
    sub d
    sub e
    sub c
    sub h
    sub d
    sub b
    sub b
    add a
    adc b
    sub e
    adc c
    adc d
    adc e
    adc h
    adc h
    adc b
    rrca
    adc l
    sub d
    sub h
    adc l
    adc b
    adc [hl]
    rrca
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sub l
    sub [hl]
    adc l
    sub a
    sbc b
    sub b
    sub a
    adc c
    rrca
    sbc c
    sbc d
    rrca
    sbc b
    sub [hl]
    sbc b
    sub c
    sub a
    sbc b
    adc c
    adc b

Jump_002_4424:
    call Call_000_0051
    ld a, $20
    call Call_000_00d0
    call Call_000_00e5
    ld a, $c0
    call Call_000_004c
    ld a, $25
    ld [$df00], a
    call Call_000_00c8
    ld hl, $9903
    ld de, $4c90
    ld bc, $0705

jr_002_4445:
    push bc

jr_002_4446:
    ld a, [de]
    ld [hl+], a
    inc de
    inc hl
    dec b
    jr nz, jr_002_4446

    ld c, $32
    add hl, bc
    ld a, l
    ld l, a
    pop bc
    dec c
    jr nz, jr_002_4445

    ld hl, $9a10
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld hl, $9800
    ld de, $0020
    ld a, $08
    call Call_002_46d3
    ld hl, $9801
    call Call_002_46d3
    ld hl, $9812
    call Call_002_46d3
    ld hl, $9813
    call Call_002_46d3
    ld e, $01
    ld hl, $9800
    call Call_002_46d3
    ld hl, $98e0
    call Call_002_46d3
    xor $01
    ld hl, $9a20
    call Call_002_46d3
    ld a, $c0
    ld [$9841], a
    ld [$9852], a
    ld [$9861], a
    ld [$9872], a
    ld a, $08
    ld [$9822], a
    ld [$98a2], a
    inc a
    ld [$9831], a
    ld [$98b1], a
    ld a, $18
    ld [$98a0], a
    ld [$98e0], a
    inc a
    ld [$98e1], a
    inc a
    ld [$98c0], a
    ld [$9900], a
    inc a
    ld [$9901], a
    ld a, $54
    ld [$9960], a
    ld [$9972], a
    inc a
    ld [$9961], a
    ld [$9973], a
    inc a
    ld [$9980], a
    ld [$9992], a
    inc a
    ld [$9981], a
    ld [$9993], a
    ld a, $24
    ld [$99f2], a
    inc a
    ld [$99f3], a
    inc a
    ld [$9a12], a
    inc a
    ld [$9a13], a
    ld a, $05
    ld [$c7a3], a
    xor a
    ld [$c7a4], a
    ld [$c7a5], a
    ld hl, $c200
    ld a, $a5
    ld [hl+], a
    ld a, $98
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld b, a
    ld a, $c0

jr_002_450e:
    ld [hl+], a
    dec b
    jr nz, jr_002_450e

    ld l, $07
    ld a, $cd
    ld [hl], a
    call Call_000_0044
    ld a, $12
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    ld a, $83
    ldh [rLCDC], a
    ei
    call Call_000_0059
    jr jr_002_453a

Jump_002_452c:
    call Call_000_0044
    ld hl, $4c7d
    call Call_002_46b7
    ld a, $78
    call Call_000_00d0

jr_002_453a:
    ld hl, $4c6a
    call Call_002_46b7
    ld hl, $c20f
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $c200
    call Call_002_46b7
    call Call_000_0044
    ld a, [$c211]
    add $50
    ld [$c000], a
    ld a, [$c212]
    add $18
    ld [$c001], a
    ld a, $c8
    ld [$c002], a
    ld a, [$c26a]
    and $20
    jr z, jr_002_4587

    ld a, $38
    ld [$c004], a
    ld a, [$c210]
    bit 2, a
    jr z, jr_002_457a

    inc a

jr_002_457a:
    swap a
    rrca
    add $30
    ld [$c005], a
    ld a, $9f
    ld [$c006], a

jr_002_4587:
    call Call_000_00e0
    ld hl, $454e
    push hl
    ld a, [$c262]
    or a
    jr nz, jr_002_45b5

    ld a, [$c7c1]
    ld b, a
    ld a, [$c261]
    and b
    and $f0
    jr nz, jr_002_45a8

    xor a
    ld [$c7c1], a
    ld [$c7c2], a
    ret


jr_002_45a8:
    ld a, [$c7c2]
    inc a
    ld [$c7c2], a
    and $0f
    ret nz

    ld a, [$c7c1]

jr_002_45b5:
    ld [$c7c1], a
    rrca
    jr c, jr_002_45d4

    rrca
    jr c, jr_002_4613

    rrca
    jp c, Jump_002_461d

    rrca
    rrca
    jp c, Jump_002_4633

    rrca
    jp c, Jump_002_4654

    rrca
    jp c, Jump_002_4674

    rrca
    jp c, Jump_002_4695

    ret


jr_002_45d4:
    ld hl, $c203
    ld a, [$c210]
    ld b, a
    bit 2, a
    jr z, jr_002_45e0

    inc a

jr_002_45e0:
    add l
    ld l, a
    ld a, [$c20f]
    cp $20
    jr nc, jr_002_4601

    inc a
    and $1f
    add $e0
    ld [hl], a
    inc b
    ld a, b
    ld [$c210], a
    push af
    ld hl, $c200
    call Call_002_46b7
    pop af
    cp $08
    ret c

    jr jr_002_462b

jr_002_4601:
    jr z, jr_002_4613

    and $03
    dec a
    jr nz, jr_002_462b

    ld a, [$c210]
    inc a
    cp $08
    ret nc

    ld [$c210], a
    ret


jr_002_4613:
    ld a, [$c210]
    or a
    ret z

    dec a
    ld [$c210], a
    ret


Jump_002_461d:
    call Call_000_0044
    call Call_000_0051
    ld a, $30
    call Call_000_00d0
    jp Jump_000_0150


jr_002_462b:
    call Call_002_47e4
    pop hl
    jp nc, Jump_002_452c

    ret


Jump_002_4633:
    ld a, [$c212]
    add $10
    ld [$c212], a
    cp $70
    jr nc, jr_002_4647

    ld a, [$c20f]
    inc a
    ld [$c20f], a
    ret


jr_002_4647:
    xor a
    ld [$c212], a
    ld a, [$c20f]
    sub $06
    ld [$c20f], a
    ret


Jump_002_4654:
    ld a, [$c212]
    sub $10
    ld [$c212], a
    jr c, jr_002_4666

    ld a, [$c20f]
    dec a
    ld [$c20f], a
    ret


jr_002_4666:
    ld a, $60
    ld [$c212], a
    ld a, [$c20f]
    add $06
    ld [$c20f], a
    ret


Jump_002_4674:
    ld a, [$c211]
    sub $10
    ld [$c211], a
    jr c, jr_002_4687

    ld a, [$c20f]
    sub $07
    ld [$c20f], a
    ret


jr_002_4687:
    ld a, $40
    ld [$c211], a
    ld a, [$c20f]
    add $1c
    ld [$c20f], a
    ret


Jump_002_4695:
    ld a, [$c211]
    add $10
    ld [$c211], a
    cp $50
    jr nc, jr_002_46aa

    ld a, [$c20f]
    add $07
    ld [$c20f], a
    ret


jr_002_46aa:
    xor a
    ld [$c211], a
    ld a, [$c20f]
    sub $1c
    ld [$c20f], a
    ret


Call_002_46b7:
    ld de, $c770
    ld a, [hl+]
    ld [$c7b6], a
    ld a, [hl+]
    ld [$c7b7], a
    ld a, [hl+]
    ld [$c7b3], a
    ld [$c79d], a
    ld b, a

jr_002_46ca:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_002_46ca

    jp Jump_000_0090


Call_002_46d3:
    xor $01
    ld b, $0a

jr_002_46d7:
    ld [hl], a
    xor $01
    add hl, de
    ld [hl], a
    xor $01
    add hl, de
    dec b
    jr nz, jr_002_46d7

    ret


Jump_002_46e3:
    ld hl, $c960
    ld b, $1f
    xor a

jr_002_46e9:
    ld [hl+], a
    dec b
    jr nz, jr_002_46e9

    ld a, [$df1a]
    ld b, $08
    call Call_002_47ba
    ld a, [$df18]
    ld b, $07
    call Call_002_47ba
    ld a, [$df1b]
    ld b, $03
    call Call_002_47ba
    xor a
    ld b, $03
    call Call_002_47ba
    ld a, [$df17]
    ld b, $04
    call Call_002_47ba
    ld a, [$df19]
    inc b
    call Call_002_47ba
    ld a, [$df14]
    ld b, $03
    call Call_002_47ba
    xor a
    ld b, $03
    call Call_002_47ba
    ld bc, $c969
    ld h, $00
    ld a, [bc]
    inc c
    ld l, a
    ld a, [bc]
    inc c
    call Call_000_0071
    ld a, [bc]
    inc c
    call Call_000_0071
    ld a, [bc]
    call Call_000_0071
    ld a, l
    ld [$c968], a
    ld a, h
    swap a
    rlca
    and $e0
    ld l, a
    ld a, [bc]
    or l
    ld [bc], a
    ld a, [$c26a]
    and $07
    push af
    ld hl, $494a
    call Call_000_0071
    ld de, $c968
    ld b, $05

jr_002_475d:
    ld a, [de]
    xor [hl]
    ld [de], a
    inc hl
    inc e
    dec b
    jr nz, jr_002_475d

    ld a, [$c96b]
    and $e3
    ld b, a
    pop af
    rlca
    rlca
    or b
    ld [$c96b], a
    ld hl, $c968
    ld de, $c96d
    ld b, $05

jr_002_477a:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_002_477a

    ld hl, $c967
    ld c, $08

jr_002_4785:
    ld b, $05

jr_002_4787:
    ld a, [$c96d]
    rla
    ld [$c96d], a
    ld a, [$c96e]
    rla
    ld [$c96e], a
    ld a, [$c96f]
    rla
    ld [$c96f], a
    ld a, [$c970]
    rla
    ld [$c970], a
    ld a, [$c971]
    rla
    ld [$c971], a
    rl [hl]
    dec b
    jr nz, jr_002_4787

    ld a, [hl]
    add $e0
    ld [hl], a
    dec l
    dec c
    jr nz, jr_002_4785

    ret


Call_002_47b8:
    ld b, $05

Call_002_47ba:
    ld c, a

jr_002_47bb:
    srl c
    ld a, [$c96c]
    rra
    ld [$c96c], a
    ld a, [$c96b]
    rra
    ld [$c96b], a
    ld a, [$c96a]
    rra
    ld [$c96a], a
    ld a, [$c969]
    rra
    ld [$c969], a
    ld a, [$c968]
    rra
    ld [$c968], a
    dec b
    jr nz, jr_002_47bb

    ret


Call_002_47e4:
    ld a, [$c20b]
    call Call_002_47b8
    ld a, [$c20a]
    call Call_002_47b8
    ld a, [$c209]
    call Call_002_47b8
    ld a, [$c208]
    call Call_002_47b8
    ld a, [$c206]
    call Call_002_47b8
    ld a, [$c205]
    call Call_002_47b8
    ld a, [$c204]
    call Call_002_47b8
    ld a, [$c203]
    call Call_002_47b8
    ld a, [$c96b]
    rrca
    rrca
    and $07
    ld hl, $494a
    call Call_000_0071
    ld de, $c968
    ld b, $05

jr_002_4826:
    ld a, [de]
    xor [hl]
    ld [de], a
    inc hl
    inc e
    dec b
    jr nz, jr_002_4826

    ld a, [$c96b]
    and $e3
    ld [$c96b], a
    ld bc, $c969
    ld h, $00
    ld a, [bc]
    inc c
    ld l, a
    ld a, [bc]
    inc c
    call Call_000_0071
    ld a, [bc]
    inc c
    call Call_000_0071
    ld a, [bc]
    and $1f
    call Call_000_0071
    ld a, [bc]
    swap a
    rrca
    and $07
    ld b, a
    ld a, [$c968]
    sub l
    ld a, b
    sbc h
    jp nz, Jump_002_4908

    ld b, $03
    call Call_002_490a
    ld b, $03
    call Call_002_490a
    ld [$df14], a
    ld b, $01
    call Call_002_490a
    ld [$df19], a
    ld b, $04
    call Call_002_490a
    ld [$df17], a
    cp $0a
    jp nc, Jump_002_4908

    ld b, $03
    call Call_002_490a
    ld b, $03
    call Call_002_490a
    ld [$df1b], a
    ld b, $07
    call Call_002_490a
    ld [$df18], a
    cp $64
    jp nc, Jump_002_4908

    ld b, $08
    call Call_002_490a
    ld [$df1a], a
    ld a, [$df14]
    or a
    jr z, jr_002_4908

    cp $05
    jr nc, jr_002_4908

    sla a
    sla a
    ld hl, $4932
    call Call_000_0071
    ld a, [hl+]
    cp $ff
    jr nz, jr_002_48c0

    ld a, [$df1a]
    and $01

jr_002_48c0:
    ld [$df0e], a
    inc hl
    ld b, $02
    ld a, [$df1a]
    and $28
    jr z, jr_002_48d3

    inc b
    cp $28
    jr nz, jr_002_48d3

    inc b

jr_002_48d3:
    ld a, b
    ld [$df15], a
    ld a, [hl+]
    cp $ff
    jr nz, jr_002_48e3

    ld a, [$df1a]
    and $10
    swap a

jr_002_48e3:
    ld [$df13], a
    ld a, [hl]
    ld b, a
    ld a, [$df1a]
    and b
    cp b
    jr nz, jr_002_4908

    ld hl, $4945
    ld a, [$df14]
    call Call_000_0071
    ld a, [hl]
    ld [$df16], a
    ld a, [$df1b]
    or a
    jr z, jr_002_4908

    cp $07
    jr nc, jr_002_4908

    scf
    ret


Jump_002_4908:
jr_002_4908:
    or a
    ret


Call_002_490a:
    ld c, $00

jr_002_490c:
    ld a, [$c968]
    rla
    ld [$c968], a
    ld a, [$c969]
    rla
    ld [$c969], a
    ld a, [$c96a]
    rla
    ld [$c96a], a
    ld a, [$c96b]
    rla
    ld [$c96b], a
    ld a, [$c96c]
    rla
    ld [$c96c], a
    rl c
    dec b
    jr nz, jr_002_490c

    ld a, c
    ret


    rst RST_38
    ld [bc], a
    nop
    nop
    ld bc, $ffff
    ld bc, $ff02
    ld [bc], a
    dec e
    ld [bc], a
    rst RST_38
    ld [bc], a
    ld e, l
    nop
    ld bc, $0201
    dec c
    ld [hl], $8a
    ld hl, $f545
    ld c, h
    dec de
    xor a
    ld [de], a
    dec bc
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    ret nz

    db $ec
    rst RST_28
    xor $e7
    ret nz

    db $f4
    jp hl


    db $ed
    push hl
    ret nz

    pop hl
    rst RST_20
    rst RST_28
    call z, Call_002_7d7d
    db $f4
    add sp, -$1b
    ret nz

    rst RST_20
    add sp, -$11
    push af
    db $ec
    ret nz

    ldh a, [c]
    push hl
    pop hl
    db $ec
    db $ed
    ld a, l
    ld a, l
    ldh [c], a
    pop hl
    ldh a, [c]
    push hl
    db $ec
    ld sp, hl
    ret nz

    push hl
    di
    db $e3
    pop hl
    ldh a, [$ffe5]
    db $e4
    ld a, l
    ld a, l
    rst RST_20
    ldh a, [c]
    push hl
    pop hl
    db $f4
    ret nz

    ldh a, [$ffe5]
    ldh a, [c]
    jp hl


    db $ec
    adc $7d
    ld a, l
    pop hl
    ret nz

    db $ec
    pop hl
    ldh a, [c]
    rst RST_20
    push hl
    ret nz

    pop hl
    ldh a, [c]
    db $ed
    ld sp, hl
    ret nz

    rst RST_28
    and $7d
    ld a, l
    db $e4
    push hl
    di
    db $f4
    ldh a, [c]
    rst RST_28
    ld sp, hl
    push hl
    ldh a, [c]
    di
    ret nz

    db $e3
    pop hl
    db $ed
    push hl
    ld a, l
    ld a, l
    and $f2
    rst RST_28
    db $ed
    ret nz

    pop hl
    ret nz

    xor $e5
    jp hl


    rst RST_20
    add sp, -$1e
    rst RST_28
    ldh a, [c]
    call Call_002_7d7d
    jp hl


    xor $e7
    ret nz

    push af
    xor $e9
    or $e5
    ldh a, [c]
    di
    push hl
    adc $7d
    ld a, l
    db $f4
    add sp, -$1b
    ret nz

    db $e3
    ldh a, [c]
    push hl
    pop hl
    db $f4
    push af
    ldh a, [c]
    push hl
    di
    ret nz

    rst RST_28
    and $7d
    ld a, l
    db $f4
    add sp, -$1b
    ret nz

    rst RST_20
    add sp, -$11
    push af
    db $ec
    ret nz

    ldh a, [c]
    push hl
    pop hl
    db $ec
    db $ed
    ld a, l
    ld a, l
    rst RST_30
    push hl
    ldh a, [c]
    push hl
    ret nz

    xor $ef
    ret nz

    db $ed
    pop hl
    db $f4
    db $e3
    add sp, $7d
    ld a, l
    and $ef
    ldh a, [c]
    ret nz

    db $f4
    add sp, -$1b
    ret nz

    ldh a, [$ffef]
    rst RST_30
    push hl
    ldh a, [c]
    and $f5
    db $ec
    ld a, l
    ld a, l
    db $e4
    push hl
    di
    db $f4
    ldh a, [c]
    rst RST_28
    ld sp, hl
    push hl
    ldh a, [c]
    di
    adc $7d
    ld a, l
    ld [$f3f5], a
    db $f4
    ret nz

    rst RST_30
    add sp, -$1b
    xor $7d
    ld a, l
    push hl
    or $e5
    ldh a, [c]
    ld sp, hl
    rst RST_28
    xor $e5
    ret nz

    add sp, -$1f
    db $e4
    ld a, l
    ld a, l
    rst RST_20
    jp hl


    or $e5
    xor $c0
    push af
    ldh a, [$ffc0]
    add sp, -$11
    ldh a, [$ffe5]
    call z, $e1c0
    ld a, l
    ld a, l
    rst RST_20
    ldh a, [c]
    push hl
    pop hl
    db $f4
    ret nz

    and $e9
    ldh a, [c]
    push hl
    ret nz

    di
    rst RST_30
    push hl
    ldh a, [$fff4]
    ld a, l
    ld a, l
    rst RST_28
    or $e5
    ldh a, [c]
    ret nz

    db $f4
    add sp, -$1b
    ret nz

    ldh a, [c]
    push hl
    pop hl
    db $ec
    db $ed
    call z, Call_002_7d7d
    rst RST_30
    jp hl


    ldh a, [$ffe9]
    xor $e7
    ret nz

    rst RST_28
    push af
    db $f4
    ret nz

    db $f4
    add sp, -$1b
    ld a, l
    ld a, l
    db $e4
    push hl
    di
    db $f4
    ldh a, [c]
    rst RST_28
    ld sp, hl
    push hl
    ldh a, [c]
    di
    ret nz

    pop hl
    ldh a, [c]
    db $ed
    ld sp, hl
    adc $7d
    ld a, l
    ld a, l
    ld a, l
    di
    push hl
    or $e5
    ldh a, [c]
    pop hl
    db $ec
    ret nz

    add sp, -$0b
    xor $e4
    ldh a, [c]
    push hl
    db $e4
    ld a, l
    ld a, l
    ld sp, hl
    push hl
    pop hl
    ldh a, [c]
    di
    ret nz

    add sp, -$1f
    or $e5
    ld a, l
    ld a, l
    ldh a, [$ffe1]
    di
    di
    push hl
    db $e4
    ret nz

    pop hl
    xor $e4
    ret nz

    db $f4
    add sp, -$1b
    ld a, l
    ld a, l
    ldh a, [c]
    push hl
    pop hl
    db $ec
    db $ed
    ret nz

    jp hl


    di
    ld a, l
    ld a, l
    db $f4
    add sp, -$0e
    push hl
    pop hl
    db $f4
    push hl
    xor $e5
    db $e4
    ret nz

    rst RST_28
    xor $e3
    push hl
    ld a, l
    ld a, l
    pop hl
    rst RST_20
    pop hl
    jp hl


    xor $ce
    adc $ce
    ld a, l
    ld a, a
    rst RST_30
    add sp, -$1b
    xor $c0
    ldh [c], a
    ldh a, [c]
    push hl
    pop hl
    rst RST_20
    push hl
    ldh a, [c]
    ret nz

    rst RST_30
    pop hl
    di
    ld a, l
    ld a, l
    db $e4
    push hl
    and $e5
    pop hl
    db $f4
    push hl
    db $e4
    call z, $e8c0
    jp hl


    di
    ld a, l
    ld a, l
    ldh a, [$ffef]
    rst RST_30
    push hl
    ldh a, [c]
    ret nz

    rst RST_28
    or $e5
    ldh a, [c]
    ld a, l
    ld a, l
    db $e4
    pop hl
    ldh a, [c]
    db $eb
    rst RST_28
    pop hl
    xor $7d
    ld a, l
    or $e1
    xor $e9
    di
    add sp, -$1b
    db $e4
    adc $7d
    ld a, l
    ld a, l
    db $e4
    pop hl
    ldh a, [c]
    db $eb
    rst RST_28
    pop hl
    xor $c0
    ldh a, [c]
    push hl
    rst RST_20
    pop hl
    jp hl


    xor $e5
    db $e4
    ld a, l
    ld a, l
    add sp, -$17
    di
    ret nz

    rst RST_20
    ldh a, [c]
    push hl
    pop hl
    db $f4
    ret nz

    ldh a, [$ffef]
    rst RST_30
    push hl
    ldh a, [c]
    ld a, l
    ld a, l
    pop hl
    xor $e4
    ret nz

    db $e4
    push hl
    and $e5
    pop hl
    db $f4
    push hl
    db $e4
    ret nz

    db $f4
    add sp, -$1b
    ld a, l
    ld a, l
    push hl
    xor $f4
    jp hl


    ldh a, [c]
    push hl
    ret nz

    pop hl
    ldh a, [c]
    db $ed
    ld sp, hl
    ret nz

    rst RST_28
    and $7d
    ld a, l
    db $e4
    push hl
    di
    db $f4
    ldh a, [c]
    rst RST_28
    ld sp, hl
    push hl
    ldh a, [c]
    di
    adc $7d
    ld a, l
    ld a, l
    db $f4
    add sp, -$1b
    ret nz

    rst RST_20
    add sp, -$11
    push af
    db $ec
    ret nz

    ldh a, [c]
    push hl
    pop hl
    db $ec
    db $ed
    ld a, l
    ld a, l
    ldh [c], a
    push hl
    db $e3
    pop hl
    db $ed
    push hl
    ret nz

    di
    pop hl
    and $e5
    jp c, $dbdf

    ld a, l
    ld a, l
    pop hl
    rst RST_20
    pop hl
    jp hl


    xor $ce
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    and $e9
    ldh a, [c]
    push hl
    ldh [c], a
    ldh a, [c]
    pop hl
    xor $e4
    ret nz

    ldh [c], a
    push hl
    db $e3
    pop hl
    db $ed
    push hl
    ld a, l
    ld a, l
    rst RST_30
    push hl
    db $ec
    db $ec
    ret nz

    db $eb
    xor $ef
    rst RST_30
    xor $7d
    ld a, l
    db $f4
    add sp, -$0e
    rst RST_28
    push af
    rst RST_20
    add sp, -$11
    push af
    db $f4
    ret nz

    db $f4
    add sp, -$1b
    ld a, l
    ld a, l
    rst RST_20
    add sp, -$11
    push af
    db $ec
    ret nz

    ldh a, [c]
    push hl
    pop hl
    db $ec
    db $ed
    call z, $e1c0
    ld a, l
    ld a, l
    db $ec
    push hl
    rst RST_20
    push hl
    xor $e4
    ret nz

    jp hl


    xor $c0
    add sp, -$17
    di
    ld a, l
    ld a, l
    rst RST_28
    rst RST_30
    xor $c0
    db $f4
    jp hl


    db $ed
    push hl
    adc $7d
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ret nz

    ret nz

    ret nz

    ret nz

    db $f4
    add sp, -$1b
    ret nz

    push hl
    xor $e4
    ld a, l
    ld a, a
    ldh a, [$fff2]
    push hl
    di
    push hl
    xor $f4
    push hl
    db $e4
    ld a, l
    ld a, l
    ret nz

    ret nz

    ret nz

    ldh [c], a
    ld sp, hl
    ld a, l
    ld a, l
    ret nz

    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld a, l
    ld a, a
    ld h, d
    sbc b
    db $10
    ldh a, [$ffe1]
    di
    di
    rst RST_30
    rst RST_28
    ldh a, [c]
    db $e4
    ret nz

    push hl
    xor $f4
    push hl
    ldh a, [c]
    push hl
    db $e4
    ld h, d
    sbc b
    db $10
    ret nz

    ldh a, [$ffe1]
    di
    di
    rst RST_30
    rst RST_28
    ldh a, [c]
    db $e4
    ret nz

    rst RST_30
    ldh a, [c]
    rst RST_28
    xor $e7
    ret nz

    pop hl
    ldh [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$fff1]
    ldh a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$d5d4]
    sub $d7
    ret c

    reti


    ret


    ret z

    push hl
    xor $e4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, c
    add b
    ld d, c
    add e
    ld d, c
    adc c
    ld d, c
    adc h
    ld d, c
    sub d
    ld d, c
    sbc b
    ld d, c
    sbc [hl]
    ld d, c
    and h
    ld d, c
    and a
    ld d, c
    xor d
    ld d, c
    xor l
    ld d, c
    or b
    ld d, c
    cp d
    ld d, c
    ret nz

    ld d, c
    push bc
    ld d, c
    bit 2, c
    adc $51
    pop de
    ld d, c
    call nc, $d751
    ld d, c
    jp c, $e051

    ld d, c
    push hl
    ld d, c
    jp hl


    ld d, c
    db $ed
    ld d, c
    pop af
    ld d, c
    push af
    ld d, c
    ld hl, sp+$51
    ei
    ld d, c
    cp $51
    ld [bc], a
    ld d, d
    dec b
    ld d, d
    ld [$0c52], sp
    ld d, d
    ld [de], a
    ld d, d
    jr jr_002_4e1c

    dec de
    ld d, d
    ld hl, $2452
    ld d, d
    ld a, [hl+]
    ld d, d
    jr nc, jr_002_4e26

    jr nc, jr_002_4e28

    scf
    ld d, d
    dec sp
    ld d, d
    ld a, $52
    ld b, d
    ld d, d
    ld b, [hl]
    ld d, d
    ld c, c
    ld d, d
    ld c, h
    ld d, d
    ld d, b
    ld d, d
    ld d, h
    ld d, d
    ld d, a
    ld d, d
    ld e, d
    ld d, d
    ld e, l
    ld d, d
    ld h, c
    ld d, d
    ld h, l
    ld d, d
    ld l, b
    ld d, d
    ld l, e
    ld d, d
    ld l, [hl]
    ld d, d
    ld [hl], d
    ld d, d
    ld [hl], l
    ld d, d
    ld a, b
    ld d, d
    ld a, e
    ld d, d
    ld a, [hl]
    ld d, d
    add c
    ld d, d
    add h
    ld d, d
    add a
    ld d, d
    adc d
    ld d, d
    adc l
    ld d, d
    sub b
    ld d, d
    sub [hl]
    ld d, d
    sbc c
    ld d, d
    sbc h
    ld d, d
    sbc a
    ld d, d
    and d
    ld d, d
    and l
    ld d, d
    and l
    ld d, d

jr_002_4e1c:
    xor b
    ld d, d
    xor h
    ld d, d
    or b
    ld d, d
    or e
    ld d, d
    or [hl]
    ld d, d

jr_002_4e26:
    cp h
    ld d, d

jr_002_4e28:
    jp nz, $c752

    ld d, d
    call z, $cf52
    ld d, d
    db $d3
    ld d, d
    rst RST_10
    ld d, d
    jp c, $e052

    ld d, d
    db $e4
    ld d, d
    ld [$f052], a
    ld d, d
    db $f4
    ld d, d
    ld a, [$0252]
    ld d, e
    dec b
    ld d, e
    add hl, bc
    ld d, e
    dec c
    ld d, e
    db $10
    ld d, e
    inc de
    ld d, e
    ld d, $53
    add hl, de
    ld d, e
    inc e
    ld d, e
    rra
    ld d, e
    ld [hl+], a
    ld d, e
    dec h
    ld d, e
    add hl, hl
    ld d, e
    dec l
    ld d, e
    ld sp, $3653
    ld d, e
    ld a, [hl-]
    ld d, e
    ld a, $53
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, c
    ld d, e
    ld b, l
    ld d, e
    ld c, c
    ld d, e
    ld c, l
    ld d, e
    ld d, c
    ld d, e
    ld d, l
    ld d, e
    ld e, c
    ld d, e
    ld e, l
    ld d, e
    ld h, c
    ld d, e
    ld h, l
    ld d, e
    ld l, c
    ld d, e
    ld l, l
    ld d, e
    ld [hl], c
    ld d, e
    ld [hl], h
    ld d, e
    ld [hl], a
    ld d, e
    ld a, d
    ld d, e
    ld a, l
    ld d, e
    add b
    ld d, e
    add e
    ld d, e
    add [hl]
    ld d, e
    adc c
    ld d, e
    adc l
    ld d, e
    sub c
    ld d, e
    sub l
    ld d, e
    sbc c
    ld d, e
    sbc h
    ld d, e
    sbc a
    ld d, e
    and e
    ld d, e
    and a
    ld d, e
    and a
    ld d, e
    and a
    ld d, e
    and a
    ld d, e
    and a
    ld d, e
    and a
    ld d, e
    cp e
    ld d, e
    call $e153
    ld d, e
    push af
    ld d, e
    ld de, $3354
    ld d, h
    ld d, l
    ld d, h
    ld l, a
    ld d, h
    sub e
    ld d, h
    or a
    ld d, h
    db $d3
    ld d, h
    ld sp, hl
    ld d, h
    rra
    ld d, l
    dec a
    ld d, l
    ld c, a
    ld d, l
    ld l, c
    ld d, l
    ld l, c
    ld d, l
    ld l, c
    ld d, l
    ld a, l
    ld d, l
    add a
    ld d, l
    sub c
    ld d, l
    sbc e
    ld d, l
    and l
    ld d, l
    bit 2, l
    jp hl


    ld d, l
    di
    ld d, l
    db $fd
    ld d, l
    rlca
    ld d, [hl]
    ld de, $1b56
    ld d, [hl]
    ld hl, $2b56
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    ccf
    ld d, [hl]
    ld c, c
    ld d, [hl]
    ld d, e
    ld d, [hl]
    ld e, l
    ld d, [hl]
    ld h, e
    ld d, [hl]
    ld l, c
    ld d, [hl]
    ld l, a
    ld d, [hl]
    ld [hl], l
    ld d, [hl]
    ld a, e
    ld d, [hl]
    adc l
    ld d, [hl]
    sbc l
    ld d, [hl]
    xor a
    ld d, [hl]
    cp c
    ld d, [hl]
    rst RST_00
    ld d, [hl]
    pop de
    ld d, [hl]
    rst RST_18
    ld d, [hl]
    rst RST_20
    ld d, [hl]
    push af
    ld d, [hl]
    add hl, bc
    ld d, a
    dec e
    ld d, a
    dec hl
    ld d, a
    inc sp
    ld d, a
    ccf
    ld d, a
    ld c, e
    ld d, a
    ld e, c
    ld d, a
    ld h, a
    ld d, a
    ld a, a
    ld d, a
    sub a
    ld d, a
    and l
    ld d, a
    or e
    ld d, a
    cp l
    ld d, a
    rst RST_08
    ld d, a
    pop hl
    ld d, a
    push af
    ld d, a
    add hl, bc
    ld e, b
    dec c
    ld e, b
    ld de, $1158
    ld e, b
    dec h
    ld e, b
    dec sp
    ld e, b
    ld c, c
    ld e, b
    ld e, a
    ld e, b
    ld [hl], l
    ld e, b
    add a
    ld e, b
    jp $fd58


    ld e, b
    add hl, sp
    ld e, c
    ld [hl], e
    ld e, c
    xor a
    ld e, c
    jp hl


    ld e, c
    jp hl


    ld e, c
    jp hl


    ld e, c
    jp hl


    ld e, c
    add hl, hl
    ld e, d
    ld l, c
    ld e, d
    ld [hl], e
    ld e, d
    ld a, l
    ld e, d
    adc e
    ld e, d
    sub a
    ld e, d
    xor e
    ld e, d
    cp a
    ld e, d
    pop de
    ld e, d
    rst RST_20
    ld e, d
    dec h
    ld e, e
    ld e, l
    ld e, e
    sbc e
    ld e, e
    db $d3
    ld e, e
    pop hl
    ld e, e
    rst RST_28
    ld e, e
    ld de, $2f5c
    ld e, h
    add hl, sp
    ld e, h
    ld b, e
    ld e, h
    ld c, a
    ld e, h
    ld e, e
    ld e, h
    ld l, a
    ld e, h
    sub l
    ld e, h
    cp e
    ld e, h
    cp e
    ld e, h
    push bc
    ld e, h
    rst RST_08
    ld e, h
    reti


    ld e, h
    db $e3
    ld e, h
    db $ed
    ld e, h
    rst RST_30
    ld e, h
    add hl, bc
    ld e, l
    inc de
    ld e, l
    dec e
    ld e, l
    daa
    ld e, l
    ld sp, $3b5d
    ld e, l
    ld c, a
    ld e, l
    ld h, c
    ld e, l
    ld [hl], e
    ld e, l
    ld [hl], a
    ld e, l
    adc e
    ld e, l
    sbc a
    ld e, l
    or c
    ld e, l
    jp $d55d


    ld e, l
    reti


    ld e, l
    db $eb
    ld e, l
    db $fd
    ld e, l
    rrca
    ld e, [hl]
    ld sp, $535e
    ld e, [hl]
    ld [hl], l
    ld e, [hl]
    sub a
    ld e, [hl]
    xor a
    ld e, [hl]
    or l
    ld e, [hl]
    cp a
    ld e, [hl]
    ret


    ld e, [hl]
    db $e3
    ld e, [hl]
    db $fd
    ld e, [hl]
    rla
    ld e, a
    ld sp, $535f
    ld e, a
    ld l, a
    ld e, a
    adc e
    ld e, a
    and a
    ld e, a
    jp $e55f


    ld e, a
    dec b
    ld h, b
    add hl, hl
    ld h, b
    ld b, a
    ld h, b
    ld d, c
    ld h, b
    ld e, e
    ld h, b
    ld h, l
    ld h, b
    ld l, a
    ld h, b
    ld a, c
    ld h, b
    add e
    ld h, b
    adc l
    ld h, b
    sub a
    ld h, b
    sbc l
    ld h, b
    xor a
    ld h, b
    pop bc
    ld h, b
    db $d3
    ld h, b
    db $dd
    ld h, b
    db $e3
    ld h, b
    db $ed
    ld h, b
    di
    ld h, b
    db $fd
    ld h, b
    rlca
    ld h, c
    ld de, $2561
    ld h, c
    dec h
    ld h, c
    cpl
    ld h, c
    add hl, sp
    ld h, c
    ld b, e
    ld h, c
    ld c, l
    ld h, c
    ld d, a
    ld h, c
    ld h, c
    ld h, c
    ld h, l
    ld h, c
    ld a, c
    ld h, c
    adc l
    ld h, c
    and c
    ld h, c
    xor e
    ld h, c
    or l
    ld h, c
    cp a
    ld h, c
    ret


    ld h, c
    db $d3
    ld h, c
    db $dd
    ld h, c
    rst RST_20
    ld h, c
    pop af
    ld h, c
    ei
    ld h, c
    dec b
    ld h, d
    rrca
    ld h, d
    add hl, de
    ld h, d
    inc hl
    ld h, d
    dec l
    ld h, d
    scf
    ld h, d
    ld b, c
    ld h, d
    ld c, e
    ld h, d
    ld d, l
    ld h, d
    ld e, a
    ld h, d
    ld l, c
    ld h, d
    ld [hl], e
    ld h, d
    ld a, l
    ld h, d
    add a
    ld h, d
    sub c
    ld h, d
    sbc e
    ld h, d
    and l
    ld h, d
    xor a
    ld h, d
    cp c
    ld h, d
    bit 4, d
    db $dd
    ld h, d
    rst RST_28
    ld h, d
    ld bc, $1163
    ld h, e
    ld hl, $3163
    ld h, e
    ld b, c
    ld h, e
    ld d, c
    ld h, e
    ld h, c
    ld h, e
    ld [hl], c
    ld h, e
    add c
    ld h, e
    adc e
    ld h, e
    sub l
    ld h, e
    and l
    ld h, e
    or l
    ld h, e
    push bc
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    push de
    ld h, e
    db $dd
    ld h, e
    rst RST_28
    ld h, e
    rst RST_38
    ld h, e
    rrca
    ld h, h
    rra
    ld h, h
    ccf
    ld h, h
    ld h, e
    ld h, h
    ld l, e
    ld h, h
    ld [hl], a
    ld h, h
    sbc c
    ld h, h
    or e
    ld h, h
    rst RST_10
    ld h, h
    di
    ld h, h
    di
    ld h, h
    ei
    ld h, h
    rst RST_38
    ld h, h
    rlca
    ld h, l
    dec bc
    ld h, l
    rrca
    ld h, l
    inc de
    ld h, l
    rra
    ld h, l
    cpl
    ld h, l
    ld b, a
    ld h, l
    ld e, l
    ld h, l
    ld l, c
    ld h, l
    ld l, e
    ld h, l
    ld l, a
    ld h, l
    ld [hl], c
    ld h, l
    ld [hl], e
    ld h, l
    ld a, c
    ld h, l
    add c
    ld h, l
    cp e
    ld h, l
    cp e
    ld h, l
    cp e
    ld h, l
    cp e
    ld h, l
    ld sp, hl
    ld h, l
    dec b
    ld h, [hl]
    rrca
    ld h, [hl]
    ld b, a
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld l, e
    ld h, [hl]
    ld a, a
    ld h, [hl]
    adc c
    ld h, [hl]
    cp a
    ld h, [hl]
    cp a
    ld h, [hl]
    jp $d166


    ld h, [hl]
    pop de
    ld h, [hl]
    push af
    ld h, [hl]
    push af
    ld h, [hl]
    push af
    ld h, [hl]
    push af
    ld h, [hl]
    push af
    ld h, [hl]
    push af
    ld h, [hl]
    push af
    ld h, [hl]
    rst RST_30
    ld h, [hl]
    dec b
    ld h, a
    dec d
    ld h, a
    dec h
    ld h, a
    ld b, l
    ld h, a
    ld c, a
    ld h, a
    ld [hl], c
    ld h, a
    adc l
    ld h, a
    sub l
    ld h, a
    xor c
    ld h, a
    xor l
    ld h, a
    xor a
    ld h, a
    cp a
    ld h, a
    jp $c767


    ld h, a
    db $db
    ld h, a
    rst RST_18
    ld h, a
    rst RST_20
    ld h, a
    db $eb
    ld h, a
    db $ed
    ld h, a
    bit 4, a
    rst RST_08
    ld h, a
    db $d3
    ld h, a
    dec bc
    ld l, b
    dec c
    ld l, b
    rra
    ld l, b
    cpl
    ld l, b
    add hl, sp
    ld l, b
    dec a
    ld l, b
    ld e, c
    ld l, b
    ld e, c
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    ld e, l
    ld l, b
    rst RST_38
    ld bc, $0801
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc b
    rst RST_38
    ld bc, $0605
    inc b
    ld b, $07
    ld [$0607], sp
    inc b
    inc c
    dec c
    ld c, $0d
    inc bc
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc bc
    inc b
    jr @+$0f

    add hl, de
    dec c
    rst RST_38
    ld bc, $ff0f
    ld bc, $ff10
    ld bc, $ff11
    ld bc, $0412
    ld [$130c], sp
    dec c
    inc de
    ld c, $13
    dec c
    inc de
    inc b
    inc b
    inc d
    dec d
    ld d, $17
    inc bc
    inc bc
    ld a, h
    ld a, l
    ld a, [hl]
    inc bc
    inc b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, c
    rst RST_38
    ld bc, $ffae
    ld bc, $ffaf
    ld bc, $ff1e
    ld bc, $ff1f
    ld bc, $06b0
    inc b
    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    inc bc
    or c
    or d
    or e
    ld [$a102], sp
    and d
    ld [$a302], sp
    and h
    ld [$ba02], sp
    cp e
    ld [$b802], sp
    cp c
    rst RST_38
    ld bc, $ff21
    ld bc, $ff70
    ld bc, $0871
    ld [bc], a
    ld l, [hl]
    ld l, l
    rst RST_38
    ld bc, $ff6f
    ld bc, $0820
    ld [bc], a
    or [hl]
    or a
    ld [$2404], sp
    dec h
    ld h, $27
    ld [$2804], sp
    add hl, hl
    ld a, [hl+]
    dec hl
    rst RST_38
    ld bc, $082c
    inc b
    dec l
    ld l, $2f
    ld l, $ff
    ld bc, $084f
    inc b
    xor d
    xor e
    xor h
    xor e
    inc bc
    inc b
    and c
    and d
    and e
    and h
    inc bc
    dec b
    and l
    and [hl]
    and a
    xor b
    xor c
    db $10
    ld [bc], a
    sbc d
    sbc e
    rst RST_38
    ld bc, $059c
    ld [bc], a
    ld a, [hl-]
    dec sp
    ld [$3c02], sp
    dec a
    rst RST_38
    ld bc, $ff3e
    ld bc, $183f
    ld [bc], a
    ld a, a
    or h
    db $10
    ld [bc], a
    ld b, b
    ld b, c
    rst RST_38
    ld bc, $ff42
    ld bc, $ff43
    ld bc, $0844
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld [$4702], sp
    ld c, b
    rst RST_38
    ld bc, $ff4a
    ld bc, $ff4b
    ld bc, $084c
    ld [bc], a
    ld c, l
    ld c, [hl]
    rst RST_38
    ld bc, $ff80
    ld bc, $ff81
    ld bc, $ff82
    ld bc, $ff83
    ld bc, $ff84
    ld bc, $ff85
    ld bc, $ff88
    ld bc, $ff8a
    ld bc, $ff89
    ld bc, $088b
    inc b
    adc h
    adc l
    adc [hl]
    adc a
    rst RST_38
    ld bc, $ff90
    ld bc, $ff91
    ld bc, $ff92
    ld bc, $ff93
    ld bc, $ffbc
    ld bc, $08ad
    ld [bc], a
    sbc l
    and b
    ld [$9e02], sp
    sbc a
    rst RST_38
    ld bc, $ff98
    ld bc, $0899
    inc b
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [$3704], sp
    ld [hl], $35
    inc [hl]
    ld [$3703], sp
    jr c, jr_002_5300

    ld [$3903], sp
    jr c, jr_002_5303

    rst RST_38
    ld bc, $0478
    ld [bc], a
    halt
    ld [hl], a
    inc b
    ld [bc], a
    ld [hl], h
    ld [hl], l
    rst RST_38
    ld bc, $0873
    inc b
    jr nc, @+$33

    add a
    sub [hl]
    ld [$9602], sp
    sub a
    ld [$9604], sp
    add a
    ld sp, $0830
    inc b
    ld [hl-], a
    inc sp
    add [hl]
    sub h
    ld [$9402], sp
    sub l
    ld [$9404], sp
    add [hl]
    inc sp
    ld [hl-], a
    ld [$5006], sp
    ld d, c
    ld d, d
    ld d, e

jr_002_5300:
    ld d, h
    ld d, l
    rst RST_38

jr_002_5303:
    ld bc, $0856
    ld [bc], a
    ld d, a
    ld e, b
    db $10
    ld [bc], a
    ld e, c
    ld e, d
    rst RST_38
    ld bc, $ff5b
    ld bc, $ff5c
    ld bc, $ff5d
    ld bc, $ff5e
    ld bc, $ff5f
    ld bc, $ff60
    ld bc, $ff61
    ld bc, $0562
    ld [bc], a
    ld h, e
    ld h, h
    dec b
    ld [bc], a
    ld h, l
    ld h, [hl]
    ld [$6702], sp
    ld l, b
    db $10
    inc bc
    ld l, c
    ld l, c
    ld l, d
    ld [$6b02], sp
    ld l, h
    ld [$bd02], sp
    cp [hl]
    rst RST_38
    ld bc, $10bf
    ld [bc], a
    ret nz

    pop bc
    db $10
    ld [bc], a
    jp nz, Jump_000_10c3

    ld [bc], a
    call nz, $10c5
    ld [bc], a
    ret z

    ret


    db $10
    ld [bc], a
    add $c7
    db $10
    ld [bc], a
    jp z, $10cb

    ld [bc], a
    adc $cf
    db $10
    ld [bc], a
    call z, Call_000_10cd
    ld [bc], a
    ret nc

    pop de
    db $10
    ld [bc], a
    call nc, Call_000_10d5
    ld [bc], a
    jp nc, Jump_000_10d3

    ld [bc], a
    sub $d7
    rst RST_38
    ld bc, $ffd9
    ld bc, $ffd8
    ld bc, $ffda
    ld bc, $ffdb
    ld bc, $ffdc
    ld bc, $ffdd
    ld bc, $ffde
    ld bc, $10df
    ld [bc], a
    ldh [$ffe1], a
    db $10
    ld [bc], a
    ldh [c], a
    db $e3
    db $10
    ld [bc], a
    db $e4
    push hl
    db $10
    ld [bc], a
    rst RST_20
    and $ff
    ld bc, $ffe8
    ld bc, $10e9
    ld [bc], a
    ld [$10eb], a
    ld [bc], a
    db $ec
    db $ed
    ld [$9002], sp
    nop
    sub c
    nop
    sub d
    nop
    and b
    nop
    and c
    nop
    and d
    nop
    add c
    nop
    add d
    nop
    ld l, e
    nop
    rlca
    inc b
    add [hl]
    nop
    add a
    nop
    adc b
    nop
    sub [hl]
    nop
    sub a
    nop
    sbc b
    nop
    and a
    nop
    xor b
    nop
    ld [$9302], sp
    nop
    sub h

jr_002_53d2:
    nop
    sub l
    nop
    and e

jr_002_53d6:
    nop
    and h
    nop
    and l
    nop
    add h
    nop
    add l
    nop
    add e
    nop
    ld [$9902], sp
    nop
    sbc d
    nop
    sbc e
    nop
    xor c
    nop
    xor d
    nop
    xor e
    nop
    adc d
    nop
    adc e
    nop
    adc c
    nop
    inc c

jr_002_53f6:
    ld bc, $008f
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    ld c, h
    nop
    ld c, l

jr_002_5402:
    nop
    ld c, [hl]
    nop
    ld e, h
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    cp l
    nop
    cp [hl]
    nop
    cp h
    nop
    rrca
    ld b, $8d
    nop
    adc [hl]
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    xor h
    nop
    xor l
    nop
    xor [hl]
    nop
    ld h, c
    jr nz, jr_002_5489

    jr nz, jr_002_5489

    nop
    ld h, e
    nop
    ld h, b
    jr nz, jr_002_5490

    jr nz, jr_002_5490

    nop
    ld h, d
    nop
    rrca

jr_002_5434:
    ld b, $8d
    nop
    adc [hl]

jr_002_5438:
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    xor h
    nop
    xor l
    nop
    xor [hl]
    nop
    adc h
    jr nz, jr_002_5402

    jr nz, jr_002_53d6

    nop
    cp d
    nop
    add b
    jr nz, jr_002_53f6

    jr nz, jr_002_53d2

    nop
    and [hl]
    nop
    dec bc
    ld b, $8d

jr_002_5458:
    nop
    adc [hl]
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    xor h
    nop
    xor l

jr_002_5464:
    nop
    xor [hl]
    nop
    ld c, a
    jr nz, jr_002_54c9

    jr nz, jr_002_54bb

    nop
    ld e, a
    nop
    db $10
    ld a, [bc]
    ld b, b
    nop
    ld b, c
    nop
    ld b, d
    nop
    ld d, b
    nop
    ld d, c
    nop
    ld d, d
    nop
    or c
    nop
    or d
    nop
    or b
    nop
    ld h, c
    jr nz, jr_002_54e9

    jr nz, jr_002_54e9

    nop

jr_002_5489:
    ld h, e
    nop
    ld h, b
    jr nz, jr_002_54f0

    jr nz, jr_002_54f0

jr_002_5490:
    nop
    ld h, d
    nop
    db $10
    ld [bc], a
    ld b, b
    nop
    ld b, c
    nop
    ld b, d
    nop
    ld d, b

jr_002_549c:
    nop
    ld d, c
    nop
    ld d, d

jr_002_54a0:
    nop
    or c
    nop
    or d
    nop
    or b
    nop
    adc h
    jr nz, jr_002_5464

    jr nz, jr_002_5438

    nop
    cp d
    nop
    add b
    jr nz, jr_002_5458

    jr nz, jr_002_5434

    nop
    and [hl]
    nop
    inc c
    dec bc
    ld b, b
    nop

jr_002_54bb:
    ld b, c
    nop
    ld b, d
    nop
    ld d, b

jr_002_54c0:
    nop
    ld d, c
    nop
    ld d, d
    nop
    or c
    nop
    or d
    nop

jr_002_54c9:
    or b
    nop
    ld c, a

jr_002_54cc:
    jr nz, jr_002_552d

    jr nz, jr_002_551f

    nop
    ld e, a
    nop
    ld de, $8f07
    nop
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld d, e
    nop
    ld d, h
    nop
    ld d, l
    nop

jr_002_54e9:
    ld h, c
    jr nz, jr_002_554f

    jr nz, jr_002_554f

    nop
    ld h, e

jr_002_54f0:
    nop
    ld h, b
    jr nz, jr_002_5556

    jr nz, jr_002_5556

    nop
    ld h, d
    nop
    ld de, $8f07
    nop
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld d, e
    nop
    ld d, h
    nop
    ld d, l
    nop
    adc h
    jr nz, jr_002_54cc

    jr nz, jr_002_54a0

    nop
    cp d
    nop
    add b
    jr nz, jr_002_54c0

    jr nz, jr_002_549c

    nop
    and [hl]
    nop

jr_002_551f:
    dec c
    rlca
    adc a
    nop
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    ld b, e
    nop
    ld b, h
    nop

jr_002_552d:
    ld b, l
    nop
    ld d, e
    nop
    ld d, h
    nop
    ld d, l
    nop
    ld c, a
    jr nz, jr_002_5597

    jr nz, jr_002_5589

    nop
    ld e, a
    nop
    rlca
    dec b
    or a
    nop
    cp b
    nop
    ld b, a
    nop
    ld c, b
    nop
    ld d, a
    nop
    ld e, b
    nop
    ld b, [hl]
    nop
    ld d, [hl]
    nop

jr_002_554f:
    dec bc
    ld bc, $008f
    xor a
    nop
    sbc a

jr_002_5556:
    nop
    cp a
    nop
    or e
    nop
    or h
    nop
    ld c, b
    nop
    or l
    nop
    or [hl]
    nop
    ld e, b
    nop
    cp c
    nop
    cp e
    nop
    ld [$ce02], sp
    nop
    ret z

    nop
    adc $20
    call z, $cd40
    ld b, b
    call z, $cd60
    nop
    call z, $cc20
    nop
    inc bc
    rrca
    ld b, b
    nop
    ld b, c
    ld h, b
    ld b, c
    nop
    ld b, b
    ld h, b
    inc bc
    rrca

jr_002_5589:
    ld b, d
    ld b, b
    ld b, d
    ld h, b
    ld b, d
    nop
    ld b, d
    jr nz, jr_002_5595

    rrca
    ld b, e
    ld b, b

jr_002_5595:
    ld b, e
    ld h, b

jr_002_5597:
    ld b, e
    nop
    ld b, e
    jr nz, jr_002_559f

    rrca
    ld b, h
    ld b, b

jr_002_559f:
    ld b, h
    ld h, b
    ld b, h
    nop
    ld b, h
    jr nz, jr_002_55b7

    inc c
    adc a
    nop
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld d, e
    nop

jr_002_55b7:
    ld d, h
    nop
    ld d, l
    nop
    ld h, c
    jr nz, jr_002_5621

    jr nz, jr_002_5621

    nop
    ld h, e
    nop
    ld h, b
    jr nz, jr_002_5628

    jr nz, jr_002_5628

    nop
    ld h, d
    nop
    dec c
    dec c
    adc a
    nop
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld d, e
    nop
    ld d, h
    nop
    ld d, l
    nop
    ld c, a
    jr nz, jr_002_5643

    jr nz, jr_002_5635

    nop
    ld e, a
    nop
    inc bc
    rrca
    ld a, d
    nop
    ld a, e
    nop
    ld a, d
    ld b, b
    ld a, e
    ld b, b
    inc bc
    rrca
    ld a, h
    nop
    ld a, h
    jr nz, jr_002_5677

    nop
    ld a, l
    jr nz, @+$05

    rrca
    ld a, e
    jr nz, jr_002_567c

    jr nz, jr_002_567f

    ld h, b
    ld a, d
    ld h, b
    inc bc
    rrca
    ld a, l
    ld b, b
    ld a, l
    ld h, b
    ld a, h
    ld b, b
    ld a, h
    ld h, b
    inc bc
    rrca
    ld a, d
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld bc, $d010
    db $10
    pop de
    db $10

jr_002_5621:
    inc bc
    rrca
    ldh [rP1], a
    pop hl

jr_002_5626:
    nop
    ldh [c], a

jr_002_5628:
    nop
    db $e3
    nop

jr_002_562b:
    inc bc

jr_002_562c:
    rrca
    xor $00
    rst RST_28
    nop

jr_002_5631:
    rst RST_28

jr_002_5632:
    ld h, b
    xor $60

jr_002_5635:
    inc bc
    rrca
    call nc, $d500
    nop
    sub $00
    rst RST_10
    nop
    inc bc
    rrca
    ret c

    nop

jr_002_5643:
    reti


    nop
    jp c, $db00

    nop
    inc bc
    rrca
    reti


jr_002_564c:
    jr nz, jr_002_5626

    jr nz, jr_002_562b

jr_002_5650:
    jr nz, jr_002_562c

    jr nz, @+$05

    rrca
    push de
    jr nz, jr_002_562c

    jr nz, jr_002_5631

    jr nz, jr_002_5632

    jr nz, jr_002_565f

    db $10

jr_002_565f:
    call c, $dd00
    nop
    ld bc, $de10
    nop
    rst RST_18
    nop
    ld bc, $df10
    jr nz, jr_002_564c

    jr nz, jr_002_5671

    db $10

jr_002_5671:
    db $dd
    jr nz, jr_002_5650

    jr nz, jr_002_5677

    db $10

jr_002_5677:
    add sp, $00
    add sp, $20
    rlca

jr_002_567c:
    ld d, c
    rlca
    nop

jr_002_567f:
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    dec c
    nop
    ld c, $00
    inc c
    nop
    ld b, $51
    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rlca
    ld d, c
    rlca
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    stop
    ld de, $0f00
    nop
    inc bc
    ld b, [hl]
    ret c

    nop
    jp c, $d900

    nop
    db $db
    nop
    dec b
    ld b, [hl]
    ret c

    nop
    jp c, $d900

    nop
    db $db
    nop
    reti


    nop
    db $db
    nop
    inc bc
    add hl, sp
    ret c

    nop
    reti


    nop
    jp c, $db00

    nop
    dec b
    add hl, sp
    ret c

    nop
    reti


    nop
    jp c, $db00

    nop
    jp c, $db00

    nop
    ld [bc], a
    rra
    inc bc
    nop
    inc b
    nop
    inc bc
    jr nz, jr_002_56ed

    ld e, $05
    nop
    ld b, $00

jr_002_56ed:
    dec b
    jr nz, jr_002_56f7

    nop
    ld [$0700], sp
    jr nz, jr_002_56fe

    inc e

jr_002_56f7:
    dec bc
    nop
    ld a, [bc]
    nop
    inc c
    nop
    dec c

jr_002_56fe:
    nop
    ld c, $00
    rrca
    nop
    stop
    ld de, $0900
    nop
    ld [$141c], sp
    nop
    inc de
    nop
    dec d
    nop
    ld d, $00
    rla
    nop
    jr jr_002_5717

jr_002_5717:
    add hl, de
    nop
    ld a, [de]
    nop
    ld [de], a
    nop
    dec b
    ld c, c
    dec de
    nop
    inc e
    nop
    dec de
    jr nz, jr_002_5743

    nop
    ld e, $00
    dec e
    jr nz, jr_002_572e

    ld c, c
    inc bc

jr_002_572e:
    ld b, b
    inc b
    ld b, b
    inc bc
    ld h, b
    inc b
    ld d, e
    inc [hl]
    nop
    inc [hl]
    jr nz, jr_002_5770

    nop
    scf
    nop
    jr c, jr_002_573f

jr_002_573f:
    inc b
    ld d, e
    dec [hl]
    nop

jr_002_5743:
    dec [hl]
    jr nz, jr_002_577c

    nop
    scf
    nop
    jr c, jr_002_574b

jr_002_574b:
    dec b
    ld b, c
    add hl, sp
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    inc a
    nop
    dec a
    nop
    ld a, $00
    dec b
    ld b, c
    add hl, sp
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    ccf
    nop
    dec a
    nop
    ld a, $00
    ld a, [bc]
    ld b, d
    add hl, bc
    nop
    ld a, [bc]
    nop
    inc d
    nop
    dec d

jr_002_5770:
    nop
    ld d, $00
    rla
    nop
    jr jr_002_5777

jr_002_5777:
    add hl, de
    nop
    ld a, [de]
    nop
    dec de

jr_002_577c:
    nop
    inc e
    nop
    ld a, [bc]
    ld b, d
    add hl, bc
    nop
    ld a, [bc]
    nop
    dec e
    nop
    ld e, $00
    ld d, $00
    rla
    nop
    jr jr_002_578f

jr_002_578f:
    add hl, de
    nop
    ld a, [de]
    nop
    dec de
    nop
    inc e
    nop
    dec b
    ld b, e
    rst RST_18
    nop
    ldh [c], a
    nop
    db $e3
    nop
    db $e4
    nop
    push hl
    nop
    and $00
    dec b
    ld b, e
    rst RST_18
    nop
    ldh [c], a
    nop
    db $e3
    nop
    db $eb
    nop
    db $ec
    nop
    and $00
    inc bc
    rrca
    rst RST_20
    nop
    add sp, $00
    jp hl


    nop
    ld [$0700], a
    rla
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    ld [$0920], sp
    jr nz, @+$0c

    jr nz, jr_002_57d9

    jr nz, jr_002_57d7

    rla
    ld [$0c00], sp
    nop
    ld c, $00

jr_002_57d7:
    dec bc
    nop

jr_002_57d9:
    ld [$0d20], sp
    nop
    rrca
    nop
    dec bc
    jr nz, @+$0a

    dec b
    inc sp
    nop
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $00
    scf
    nop
    jr c, jr_002_57ef

jr_002_57ef:
    inc [hl]
    ld b, b
    dec [hl]
    ld b, b
    inc sp
    ld b, b
    ld [$3905], sp
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    inc a
    nop
    dec a
    nop
    ld a, $00
    ld a, [hl-]
    ld b, b
    dec sp
    ld b, b
    add hl, sp
    ld b, b
    nop
    ld c, d
    ccf
    nop
    nop
    ld c, d
    ccf
    jr nz, jr_002_581a

    ld d, b
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    jr nz, @+$06

jr_002_581a:
    nop
    dec b
    nop
    ld b, $00
    ld [$0900], sp
    nop
    rlca
    nop
    add hl, bc
    ld d, b
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    jr nz, jr_002_5832

    nop
    ld a, [bc]
    nop
    dec bc

jr_002_5832:
    nop
    dec c
    nop
    ld c, $00
    inc c
    nop
    rrca
    nop
    dec b
    ld b, c
    inc h
    nop
    inc h
    jr nz, jr_002_5867

    nop
    ld h, $00
    daa
    nop
    jr z, jr_002_5849

jr_002_5849:
    add hl, bc
    ld b, b
    add hl, hl
    nop
    add hl, hl
    jr nz, jr_002_587b

    nop
    dec hl
    jr nz, @+$2c

    nop
    ld a, [hl+]
    jr nz, jr_002_5884

    nop
    inc l
    jr nz, @+$2f

    nop
    dec l
    jr nz, @+$0b

    ld b, c
    cpl
    nop
    cpl
    jr nz, @+$23

    nop

jr_002_5867:
    ld hl, $2220
    nop
    ld [hl+], a
    jr nz, jr_002_589c

    nop
    ld l, $20
    jr nz, jr_002_5873

jr_002_5873:
    jr nz, jr_002_5895

    rlca
    rla
    dec bc
    ld b, b
    ld a, [bc]
    ld b, b

jr_002_587b:
    add hl, bc
    ld b, b
    ld [$0b40], sp
    ld h, b
    ld a, [bc]
    ld h, b
    add hl, bc

jr_002_5884:
    ld h, b
    ld [$1c60], sp
    jr nz, jr_002_588a

jr_002_588a:
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10

jr_002_5895:
    inc e
    db $10
    dec e
    db $10
    ld b, $10
    rlca

jr_002_589c:
    db $10
    ld h, $10
    daa
    db $10
    ld e, $10
    rra
    db $10
    ld [$0910], sp
    db $10
    jr z, jr_002_58bb

    add hl, hl
    db $10
    jr nz, @+$12

    dec c
    db $10
    ld c, $10
    rrca
    db $10
    ld a, [hl+]
    db $10
    dec hl
    db $10
    ld a, [bc]
    db $10

jr_002_58bb:
    db $10
    db $10
    ld de, $0b10
    db $10
    inc c
    db $10
    dec de
    daa
    nop
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld hl, $2210
    db $10
    ld b, $10
    rlca
    db $10
    inc l
    db $10
    dec l
    db $10
    inc hl
    db $10
    inc h
    db $10
    ld [$0910], sp
    db $10
    ld l, $10
    cpl
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    jr nc, jr_002_5901

    ld sp, $0a10
    db $10
    db $10
    db $10
    ld de, $0b10
    db $10
    inc c
    db $10
    inc e
    jr nz, jr_002_5900

jr_002_5900:
    db $10

jr_002_5901:
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    inc e
    db $10
    dec e
    db $10
    ld b, $10
    rlca
    db $10
    ld h, $10
    daa
    db $10
    ld e, $10
    rra
    db $10
    ld [$0910], sp
    db $10
    jr z, jr_002_5931

    add hl, hl
    db $10
    jr nz, jr_002_5935

    ld [de], a
    db $10
    inc de
    db $10
    inc d
    db $10
    ld a, [hl+]
    db $10
    dec hl
    db $10
    ld a, [bc]
    db $10

jr_002_5931:
    dec d
    db $10
    ld d, $10

jr_002_5935:
    dec bc
    db $10
    inc c
    db $10
    dec de
    daa
    nop
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld hl, $2210
    db $10
    ld b, $10
    rlca
    db $10
    inc l
    db $10
    dec l
    db $10
    inc hl
    db $10
    inc h
    db $10
    ld [$0910], sp
    db $10
    ld l, $10
    cpl
    db $10
    ld [de], a
    db $10
    inc de
    db $10
    inc d
    db $10
    jr nc, jr_002_5977

    ld sp, $0a10
    db $10
    dec d
    db $10
    ld d, $10
    dec bc
    db $10
    inc c
    db $10
    inc e
    jr nz, jr_002_5976

jr_002_5976:
    db $10

jr_002_5977:
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    inc e
    db $10
    dec e
    db $10
    ld b, $10
    rlca
    db $10
    ld h, $10
    daa
    db $10
    ld e, $10
    rra
    db $10
    ld [$0910], sp
    db $10
    jr z, jr_002_59a7

    add hl, hl
    db $10
    jr nz, jr_002_59ab

    rla
    db $10
    jr jr_002_59af

    add hl, de
    db $10
    ld a, [hl+]
    db $10
    dec hl
    db $10
    ld a, [bc]
    db $10

jr_002_59a7:
    ld a, [de]
    db $10
    dec de
    db $10

jr_002_59ab:
    dec bc
    db $10
    inc c
    db $10

jr_002_59af:
    dec de
    daa
    nop
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld hl, $2210
    db $10
    ld b, $10
    rlca
    db $10
    inc l
    db $10
    dec l
    db $10
    inc hl
    db $10
    inc h
    db $10
    ld [$0910], sp
    db $10
    ld l, $10
    cpl
    db $10
    rla
    db $10
    jr jr_002_59e9

    add hl, de
    db $10
    jr nc, jr_002_59ed

    ld sp, $0a10
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    dec bc
    db $10
    inc c
    db $10

jr_002_59e9:
    ld e, $24
    nop
    db $10

jr_002_59ed:
    ld bc, $0310
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0910], sp
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    inc de
    db $10
    inc d
    db $10
    dec d
    db $10
    ld d, $10
    rla
    db $10
    jr jr_002_5a2b

    add hl, de
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    rra
    db $10
    ld e, $24

jr_002_5a2b:
    nop
    db $10
    ld bc, $0310
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0910], sp
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    jr nz, jr_002_5a57

    ld hl, $2210
    db $10
    inc hl
    db $10
    inc h
    db $10
    dec h
    db $10
    ld h, $10
    daa
    db $10
    jr z, jr_002_5a67

jr_002_5a57:
    add hl, hl
    db $10
    ld a, [hl+]
    db $10
    dec hl
    db $10
    inc l
    db $10
    dec l
    db $10
    ld l, $10
    cpl
    db $10
    jr nc, @+$12

jr_002_5a67:
    ld sp, $0310
    rrca
    ld b, $00
    ld b, $20
    rlca
    nop
    rlca
    jr nz, @+$05

    rrca
    ld [$0800], sp
    jr nz, jr_002_5a83

    nop
    add hl, bc
    jr nz, jr_002_5a83

    dec h
    ld a, [bc]
    db $10
    dec bc
    db $10

jr_002_5a83:
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    inc b
    ld h, $10
    db $10
    ld de, $1210
    db $10
    inc de
    db $10
    inc d
    db $10
    ld [$0028], sp
    db $10
    ld bc, $0410
    db $10
    dec b
    db $10
    ld [$0910], sp
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    ld [$0029], sp
    db $10
    ld bc, $0d10
    db $10
    inc b
    db $10
    dec b
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    add hl, bc
    db $10
    rlca
    ld b, [hl]
    ld [bc], a
    nop
    ld b, $00
    inc bc
    nop
    rlca
    nop
    inc bc
    jr nz, jr_002_5ad3

    jr nz, jr_002_5ad0

    jr nz, @+$08

jr_002_5ad0:
    jr nz, jr_002_5adb

    ld a, [hl+]

jr_002_5ad3:
    dec c
    db $10
    ld de, $0510
    db $10
    ld c, $10

jr_002_5adb:
    rrca
    db $10
    db $10
    db $10
    add hl, bc
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec e
    dec hl
    nop
    db $10
    ld bc, $1c10
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0910], sp
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    inc de
    db $10
    inc d
    db $10
    dec d
    db $10
    ld d, $10
    rla
    db $10
    jr jr_002_5b2b

    add hl, de
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    ld a, [de]
    db $10
    dec e
    db $10
    ld a, [de]
    inc l
    ld hl, $2210
    db $10

jr_002_5b2b:
    inc hl
    db $10
    inc h
    db $10
    dec h
    db $10
    ld a, [bc]
    db $10
    ld h, $10
    inc c
    db $10
    daa
    db $10
    jr z, jr_002_5b4b

    add hl, hl
    db $10
    db $10
    db $10
    ld de, $1210
    db $10
    inc de
    db $10
    ld a, [hl+]
    db $10
    dec d
    db $10
    ld d, $10

jr_002_5b4b:
    rla
    db $10
    jr jr_002_5b5f

    add hl, de
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    ld a, [de]
    db $10
    dec e
    db $10
    jr nz, jr_002_5b6b

    dec hl
    db $10
    dec e
    dec hl

jr_002_5b5f:
    nop
    db $10
    ld bc, $1c10
    db $10
    inc bc
    db $10
    inc b
    db $10
    dec b
    db $10

jr_002_5b6b:
    ld b, $10
    rlca
    db $10
    ld [$0910], sp
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $1e10
    db $10
    inc de
    db $10
    inc d
    db $10
    dec d
    db $10
    ld d, $10
    rra
    db $10
    jr jr_002_5ba1

    add hl, de
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    ld a, [de]
    db $10
    dec e
    db $10
    ld a, [de]
    inc l
    ld hl, $2210
    db $10

jr_002_5ba1:
    inc hl
    db $10
    inc h
    db $10
    dec h
    db $10
    ld a, [bc]
    db $10
    ld h, $10
    inc c
    db $10
    daa
    db $10
    jr z, jr_002_5bc1

    add hl, hl
    db $10
    db $10
    db $10
    ld de, $1e10
    db $10
    inc de
    db $10
    ld a, [hl+]
    db $10
    dec d
    db $10
    ld d, $10

jr_002_5bc1:
    rra
    db $10
    jr jr_002_5bd5

    add hl, de
    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    ld a, [de]
    db $10
    dec e
    db $10
    jr nz, jr_002_5be1

    dec hl
    db $10
    dec b
    ld b, c

jr_002_5bd5:
    dec a
    ld b, b
    ld a, $40
    dec sp
    ld b, b
    inc a
    ld b, b
    add hl, sp
    ld b, b
    ld a, [hl-]
    ld b, b

jr_002_5be1:
    dec b
    ld b, c
    dec a
    ld b, b
    ld a, $40
    dec sp
    ld b, b
    ccf
    ld b, b
    add hl, sp
    ld b, b
    ld a, [hl-]
    ld b, b
    rrca
    ld d, h
    ret nc

    db $10
    call c, $d110
    db $10
    jp nc, $d310

    db $10
    call nc, $d510
    db $10
    sub $10
    rst RST_10
    db $10
    ret c

    db $10
    reti


    db $10
    jp c, $db10

    db $10
    db $dd
    db $10
    sbc $10
    rst RST_18
    db $10
    dec c
    ld d, l
    ldh [rNR10], a
    pop hl
    db $10
    ldh [c], a
    db $10
    db $e3
    db $10
    db $e4
    db $10
    push hl
    db $10
    and $10
    rst RST_20
    db $10
    add sp, $10
    jp hl


    db $10
    ld [$eb10], a
    db $10
    db $ec
    db $10
    db $ed
    db $10

jr_002_5c2f:
    inc bc
    rrca
    xor $00
    xor $20
    xor $40
    xor $60
    inc bc
    rrca
    rst RST_28

jr_002_5c3c:
    nop
    rst RST_28
    jr nz, jr_002_5c2f

    ld b, b

jr_002_5c41:
    rst RST_28

jr_002_5c42:
    ld h, b
    inc b

jr_002_5c44:
    cpl
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

jr_002_5c4c:
    nop
    ret z

    nop
    inc b
    cpl

jr_002_5c51:
    ld b, h

jr_002_5c52:
    nop
    ld b, d

jr_002_5c54:
    nop
    ld b, b
    nop
    ld b, c

jr_002_5c58:
    nop
    ld b, a
    nop
    ld [$432e], sp
    nop
    ld b, b
    nop
    ld b, l
    nop
    ld b, d
    nop
    ret z

    nop
    ld b, [hl]
    nop
    ld c, b
    nop
    ld b, d
    nop
    ld b, h
    nop
    ld de, $a031
    ld d, b
    and c
    db $10
    and b
    db $10
    and b
    ld d, b
    and b
    db $10
    and b
    ld d, b
    and c
    db $10
    and b
    db $10
    and b
    ld d, b
    and c
    db $10
    and b
    ld d, b
    and b
    db $10
    and b
    ld d, b
    and b
    db $10
    and b
    ld d, b
    and c
    ld d, b
    and b
    ld d, b
    and b
    db $10
    ld de, $a231
    db $10
    and b
    jr nc, jr_002_5c3c

    ld [hl], b
    and b
    jr nc, jr_002_5c41

    jr nc, jr_002_5c42

    jr nc, jr_002_5c44

    ld [hl], b
    and c
    ld [hl], b
    and b
    ld [hl], b
    and b
    jr nc, jr_002_5c4c

    ld [hl], b
    and b
    jr nc, jr_002_5c51

    jr nc, jr_002_5c52

    jr nc, jr_002_5c54

    ld [hl], b
    and b
    jr nc, jr_002_5c58

    ld [hl], b
    and b
    jr nc, jr_002_5cbf

    rrca
    inc h
    nop

jr_002_5cbf:
    inc h
    jr nz, jr_002_5ce6

    ld b, b
    inc h
    ld h, b
    inc bc
    rrca
    dec d
    nop
    dec d
    jr nz, jr_002_5ce1

    ld b, b
    dec d
    ld h, b
    inc bc
    rrca
    ld d, $00
    ld d, $20
    ld d, $40
    ld d, $60
    inc bc
    rrca
    ld [hl+], a
    nop
    ld [hl+], a
    jr nz, jr_002_5d02

    ld b, b

jr_002_5ce1:
    ld [hl+], a
    ld h, b
    inc bc
    rrca
    inc hl

jr_002_5ce6:
    nop
    inc hl
    jr nz, @+$25

    ld b, b
    inc hl
    ld h, b
    inc bc
    rrca
    ld [bc], a
    nop
    ld [bc], a
    jr nz, jr_002_5cf6

    ld b, b
    ld [bc], a

jr_002_5cf6:
    ld h, b
    rlca
    ld d, d
    ld l, d
    nop
    ld l, d
    jr nz, jr_002_5d68

jr_002_5cfe:
    nop
    ld l, d
    jr nz, jr_002_5d6c

jr_002_5d02:
    ld b, b
    ld l, d
    ld h, b
    ld l, d
    ld b, b
    ld l, d
    ld h, b
    inc bc
    rrca

jr_002_5d0b:
    db $fc

jr_002_5d0c:
    jr nz, jr_002_5cfe

    jr nz, jr_002_5d0c

    ld h, b
    di
    jr nz, @+$05

    rrca
    db $fc
    jr nz, jr_002_5d0b

    ld h, b
    db $fc
    ld h, b
    ldh a, [$ff60]
    inc bc
    rrca
    ld [hl], b
    nop
    ld [hl], b
    jr nz, jr_002_5d94

    ld b, b
    ld [hl], b
    ld h, b
    inc bc
    rrca
    ld [hl], c
    nop
    ld [hl], c
    jr nz, jr_002_5d9f

    ld b, b
    ld [hl], c
    ld h, b
    inc bc
    rrca
    ld l, d
    nop
    ld l, d
    jr nz, jr_002_5da2

    ld b, b
    ld l, d
    ld h, b

jr_002_5d3b:
    ld [$f050], sp
    nop
    pop af
    nop
    ldh a, [rNR41]
    ldh a, [c]
    nop
    di
    nop
    ldh a, [c]
    jr nz, jr_002_5d3b

    ld b, b
    ldh a, [$ff60]
    ldh a, [rLCDC]
    rlca
    inc e
    ld l, $00
    dec l
    nop
    cpl
    nop
    jr nz, jr_002_5d59

jr_002_5d59:
    ld hl, $2200
    nop
    inc hl
    nop
    ld [hl+], a
    jr nz, jr_002_5d69

    dec e
    dec h
    nop
    ld h, $00
    daa

jr_002_5d68:
    nop

jr_002_5d69:
    cpl
    jr nz, jr_002_5d8e

jr_002_5d6c:
    nop
    inc hl
    nop
    ld [hl+], a
    jr nz, @+$26

    nop
    nop
    ld c, d
    jr z, jr_002_5d77

jr_002_5d77:
    ld [$1950], sp
    nop
    ld a, [de]
    nop
    add hl, de
    jr nz, jr_002_5d9b

    nop
    inc e
    nop
    dec de
    jr nz, @+$20

    nop
    dec e
    jr nz, jr_002_5da7

    nop
    ld [$1f50], sp

jr_002_5d8e:
    nop
    inc l
    nop
    rra
    jr nz, jr_002_5dc1

jr_002_5d94:
    nop
    ld l, $00
    dec l
    jr nz, jr_002_5db8

    nop

jr_002_5d9b:
    dec e
    jr nz, @+$1f

    nop

jr_002_5d9f:
    rlca
    ld d, b
    push hl

jr_002_5da2:
    nop
    and $00
    rst RST_20
    nop

jr_002_5da7:
    add sp, $00
    jp hl


    nop
    ld [$eb00], a
    nop
    db $ec
    nop
    rlca
    rla
    ret c

    nop
    jp c, $da00

jr_002_5db8:
    nop
    jp c, $d900

    nop
    db $db
    nop
    db $db
    nop

jr_002_5dc1:
    db $db
    nop
    rlca
    ld b, [hl]
    ret c

    nop
    jp c, $d900

    nop
    db $db
    nop
    reti


    nop
    db $db
    nop
    reti


    nop
    db $db
    nop
    nop
    ld c, d
    db $ed
    nop
    rlca
    rla
    db $fc
    db $10
    cp $10
    db $fc
    db $10
    cp $10

jr_002_5de3:
    db $fd
    db $10
    rst RST_38

jr_002_5de6:
    db $10
    db $fd
    db $10
    rst RST_38

jr_002_5dea:
    db $10
    rlca
    ld b, a

jr_002_5ded:
    di
    jr nz, jr_002_5de3

    ld h, b
    ldh a, [c]
    jr nz, jr_002_5de6

    ld h, b
    ldh a, [rNR41]
    pop af
    jr nz, jr_002_5dea

    jr nz, jr_002_5ded

    jr nz, jr_002_5e05

    ld b, [hl]
    db $fc
    db $10
    cp $10
    db $fd
    db $10

jr_002_5e05:
    rst RST_38
    db $10
    db $fc
    db $10
    cp $10
    db $fd
    db $10
    rst RST_38
    db $10
    rrca
    ld d, $f4

jr_002_5e12:
    nop
    or $00
    or $40
    db $f4
    ld b, b
    db $f4
    jr nz, jr_002_5e12

    jr nz, @-$08

    ld h, b
    db $f4
    ld h, b
    push af
    nop
    ld hl, sp+$00
    ld hl, sp+$40
    push af
    ld b, b
    push af
    jr nz, @-$06

    jr nz, @-$06

    ld h, b
    push af
    ld h, b
    rrca
    ld d, $f4

jr_002_5e34:
    nop
    or $00
    or $40
    db $f4
    ld b, b
    db $f4
    jr nz, jr_002_5e34

    jr nz, @-$08

    ld h, b
    db $f4
    ld h, b
    push af
    nop
    rst RST_30

jr_002_5e46:
    nop
    ld hl, sp+$40
    push af
    ld b, b
    push af
    jr nz, jr_002_5e46

    jr nz, @-$06

    ld h, b
    push af
    ld h, b
    rrca
    ld d, $f4

jr_002_5e56:
    nop
    or $00
    or $40
    db $f4
    ld b, b
    db $f4
    jr nz, jr_002_5e56

    jr nz, @-$08

    ld h, b
    db $f4
    ld h, b
    push af
    nop
    ld sp, hl

jr_002_5e68:
    nop
    ld hl, sp+$40
    push af
    ld b, b
    push af
    jr nz, jr_002_5e68

    jr nz, @-$06

    ld h, b
    push af

jr_002_5e74:
    ld h, b
    rrca
    ld d, $f4

jr_002_5e78:
    nop
    or $00
    or $40
    db $f4
    ld b, b
    db $f4
    jr nz, jr_002_5e78

    jr nz, @-$08

    ld h, b
    db $f4
    ld h, b
    push af
    nop
    ld a, [$f800]

jr_002_5e8c:
    ld b, b
    push af
    ld b, b
    push af
    jr nz, @-$06

    jr nz, jr_002_5e8c

    ld h, b
    push af
    ld h, b
    ld a, [bc]
    jr @-$2e

    nop
    jp nc, $d000

    ld b, b
    ret nc

    nop
    ret nc

    jr nz, jr_002_5e74

    nop
    ret nc

    ld b, b
    pop de
    nop
    ret nc

    ld b, b
    jp nc, $d220

    nop
    ld bc, $e010
    db $10
    pop hl
    db $10
    inc bc
    rrca
    jr nc, jr_002_5eb9

jr_002_5eb9:
    ld sp, $3000
    nop
    ld sp, $0300
    rrca
    ld [hl-], a
    nop

jr_002_5ec3:
    ld [hl-], a
    nop

jr_002_5ec5:
    inc sp

jr_002_5ec6:
    nop

jr_002_5ec7:
    inc sp
    nop
    dec bc

jr_002_5eca:
    rla
    ret c

jr_002_5ecc:
    nop
    jp c, $da00

    nop

jr_002_5ed1:
    jp c, $d900

jr_002_5ed4:
    nop
    db $db

jr_002_5ed6:
    nop
    db $db
    nop
    db $db
    nop
    jp c, $da00

    nop
    db $db
    nop
    db $db
    nop
    dec bc
    rla
    reti


    jr nz, jr_002_5ec3

    jr nz, jr_002_5ec5

    jr nz, jr_002_5ec7

    jr nz, jr_002_5ec6

    jr nz, jr_002_5eca

    jr nz, jr_002_5ecc

    jr nz, @-$24

    jr nz, jr_002_5ed1

    jr nz, @-$23

    jr nz, jr_002_5ed4

    jr nz, jr_002_5ed6

    jr nz, jr_002_5f09

    ld b, [hl]
    ret c

    nop
    jp c, $d900

    nop
    db $db
    nop
    reti


    nop

jr_002_5f09:
    db $db
    nop
    reti


    nop
    db $db
    nop
    reti


    nop
    db $db
    nop
    reti


    nop
    db $db
    nop
    dec bc
    ld b, [hl]
    jp c, $d840

    ld b, b
    db $db
    ld b, b
    reti


    ld b, b
    db $db
    ld b, b
    reti


    ld b, b
    db $db
    ld b, b
    reti


    ld b, b
    db $db
    ld b, b
    reti


    ld b, b
    db $db
    ld b, b
    reti


    ld b, b
    rrca
    ld c, e
    ld d, $00
    ld a, [de]
    nop
    ld e, $00
    ld [hl+], a
    nop
    rla
    nop
    dec de
    nop
    rra
    nop
    inc hl
    nop
    jr jr_002_5f45

jr_002_5f45:
    inc e
    nop
    jr nz, jr_002_5f49

jr_002_5f49:
    inc h
    nop
    dec h
    nop
    ld hl, $1d00
    nop
    add hl, de
    nop
    inc c
    ld c, e
    ld h, $00
    add hl, hl
    nop
    inc l
    nop
    cpl
    nop
    daa
    nop
    ld a, [hl+]
    nop
    dec l
    nop
    jr nc, jr_002_5f65

jr_002_5f65:
    jr z, jr_002_5f67

jr_002_5f67:
    dec hl
    nop
    ld l, $00
    ld sp, $3200
    nop
    inc c
    ld c, h
    ld de, $1400
    nop
    jr jr_002_5f77

jr_002_5f77:
    jr nz, jr_002_5f79

jr_002_5f79:
    ld [de], a

Call_002_5f7a:
    nop
    dec d
    nop
    add hl, de
    nop
    stop
    inc de
    nop
    ld d, $00
    ld a, [de]
    nop
    dec de
    nop
    rla
    nop
    inc c
    ld c, h
    ld de, $1400
    nop
    jr jr_002_5f93

jr_002_5f93:
    jr nz, jr_002_5f95

jr_002_5f95:
    ld [de], a
    nop
    dec d
    nop
    add hl, de
    nop
    stop
    inc de
    nop
    inc e
    nop
    ld e, $00
    rra
    nop
    dec e
    nop
    inc c
    ld c, h
    ld de, $1400
    nop
    ld hl, $2000
    nop
    ld [de], a
    nop
    dec d
    nop
    ld [hl+], a
    nop
    stop
    inc de
    nop
    ld d, $00
    ld a, [de]
    nop
    dec de
    nop
    rla
    nop
    rrca
    inc a
    inc c
    nop
    dec c
    nop
    ld c, $00
    rrca
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    inc h
    nop
    dec h
    nop
    ld h, $00
    daa
    nop
    jr z, jr_002_5fe3

jr_002_5fe3:
    add hl, hl
    nop
    ld c, $3d
    ld a, [hl+]
    nop
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    inc c
    nop
    dec c
    nop
    ld c, $00
    rrca
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    db $10
    ld a, $0c
    nop
    dec c
    nop
    ld c, $00
    rrca
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    cpl
    nop
    jr nc, jr_002_601f

jr_002_601f:
    ld sp, $3200
    nop
    inc sp
    nop
    inc [hl]
    nop
    dec [hl]
    nop
    dec c
    ccf
    ld d, $00
    rla
    nop
    jr jr_002_6031

jr_002_6031:
    add hl, de
    nop
    ld a, [de]
    nop
    dec de
    nop
    inc e
    nop
    dec e
    nop
    ld e, $00
    rra
    nop
    jr nz, jr_002_6041

jr_002_6041:
    ld hl, $2200
    nop
    inc hl
    nop
    inc bc
    rrca
    ld c, e
    nop
    ld c, e
    jr nz, jr_002_60a7

    nop
    ld e, c
    jr nz, jr_002_6055

    rrca
    ld e, d
    nop

jr_002_6055:
    ld e, d
    jr nz, jr_002_60b3

    nop
    ld e, e
    jr nz, jr_002_605f

    rrca
    ld h, h
    nop

jr_002_605f:
    ld h, h
    jr nz, @+$67

    nop
    ld h, l
    jr nz, jr_002_6069

    rrca
    ld h, [hl]
    nop

jr_002_6069:
    ld h, [hl]
    jr nz, jr_002_60d3

    nop
    ld h, a
    jr nz, jr_002_6073

    ld b, a
    ld [hl], c
    nop

jr_002_6073:
    ld [hl], c
    ld b, b
    ld [hl], c
    jr nz, jr_002_60e9

    ld h, b
    inc bc
    ld c, l
    ld [hl], e
    nop
    ld [hl], e
    ld b, b
    ld [hl], h
    nop
    ld [hl], h
    ld b, b
    inc bc
    ld c, l
    ld [hl], l
    nop
    ld [hl], l
    ld b, b
    halt
    nop
    halt
    ld b, b
    inc bc
    ld c, [hl]
    ld [hl], a
    nop
    ld [hl], a
    ld b, b
    ld a, b
    nop
    ld a, b
    ld b, b
    ld bc, $794f
    nop
    ld a, c
    ld b, b
    rlca
    ld d, c
    rlca
    nop
    ld [$1200], sp
    nop
    ld a, [bc]
    nop

jr_002_60a7:
    dec bc
    nop
    dec c
    nop
    ld c, $00
    inc de
    nop
    rlca
    ld d, c
    nop
    nop

jr_002_60b3:
    ld bc, $1200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    inc de
    nop
    rlca
    ld d, c
    rlca
    nop
    ld [$1200], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    stop
    ld de, $1300
    nop

jr_002_60d3:
    inc bc
    rrca
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    ld bc, $7b1b
    nop
    ld a, e
    jr nz, jr_002_60e7

    rrca
    ld a, d
    nop

jr_002_60e7:
    ld a, e
    nop

jr_002_60e9:
    ld a, h
    nop
    ld a, l
    nop
    ld bc, $7f57
    nop
    ld a, a
    ld b, b
    inc bc
    rrca
    ld a, e
    jr nz, jr_002_6172

    jr nz, jr_002_6177

    jr nz, jr_002_6178

    jr nz, @+$05

    rrca
    ld a, a
    jr nz, @+$80

    jr nz, jr_002_6183

    ld h, b
    ld a, [hl]
    ld h, b
    inc bc
    rrca
    ld a, l
    ld h, b
    ld a, h
    ld h, b
    ld a, e
    ld h, b
    ld a, d

jr_002_6110:
    ld h, b

jr_002_6111:
    ld [$f050], sp
    nop
    pop af
    nop
    ldh a, [rNR41]
    ldh a, [c]
    nop
    di
    jr nz, jr_002_6110

    jr nz, jr_002_6111

    ld b, b
    ldh a, [$ff60]
    ldh a, [rLCDC]
    inc bc
    ld b, a
    inc hl
    nop
    inc hl
    ld b, b
    inc h
    nop
    dec h
    nop
    inc bc
    ld b, a
    inc hl
    nop
    inc hl
    ld b, b
    dec h
    ld b, b
    inc h
    ld b, b
    inc bc
    rrca
    ld l, b
    nop
    ld l, b
    jr nz, jr_002_61a9

    nop
    ld l, c
    jr nz, jr_002_6147

    rrca
    ld l, h
    nop

jr_002_6147:
    ld l, h
    jr nz, @+$6f

    nop
    ld l, l
    jr nz, jr_002_6151

    rrca
    ld l, [hl]
    nop

jr_002_6151:
    ld l, [hl]
    jr nz, jr_002_61c3

    nop
    ld l, a
    jr nz, jr_002_615b

    rrca
    ld c, c
    nop

jr_002_615b:
    ld c, c
    jr nz, jr_002_61a8

    nop
    ld c, d
    jr nz, jr_002_6162

jr_002_6162:
    ld c, d
    rra
    nop
    ld [$051c], sp
    nop
    inc b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp

jr_002_6172:
    nop
    ld a, [bc]
    nop
    dec bc
    nop

jr_002_6177:
    inc bc

jr_002_6178:
    nop
    ld [$151c], sp
    nop
    rrca
    nop
    ld d, $00
    rla
    nop

jr_002_6183:
    jr jr_002_6185

jr_002_6185:
    add hl, de
    nop
    ld a, [de]
    nop
    dec de
    nop
    inc c
    nop
    ld [$1e1c], sp
    nop
    dec e
    nop
    rra
    nop
    jr nz, jr_002_6197

jr_002_6197:
    ld hl, $2200
    nop
    inc hl
    nop
    dec l
    nop
    inc e
    nop
    inc bc
    ld de, $0000
    ld bc, $1000

jr_002_61a8:
    nop

jr_002_61a9:
    ld de, $0300
    ld de, $2001
    nop
    jr nz, jr_002_61c3

    jr nz, jr_002_61c4

    jr nz, jr_002_61b9

    ld de, $0002

jr_002_61b9:
    inc bc
    nop
    ld [de], a
    nop
    inc de
    nop
    inc bc
    ld de, $2003

jr_002_61c3:
    ld [bc], a

jr_002_61c4:
    jr nz, jr_002_61d9

    jr nz, @+$14

    jr nz, jr_002_61cd

    ld de, $0004

jr_002_61cd:
    dec b
    nop
    inc d
    nop
    dec d
    nop
    inc bc
    ld de, $0006
    rlca
    nop

jr_002_61d9:
    ld d, $00
    rla
    nop
    inc bc
    ld de, $0020
    ld hl, $3000
    nop
    ld sp, $0300
    ld de, $2021
    jr nz, jr_002_620d

    ld sp, $3020
    jr nz, jr_002_61f5

    ld de, $0022

jr_002_61f5:
    inc hl
    nop
    ld [hl-], a
    nop
    inc sp
    nop
    inc bc
    ld de, $2023
    ld [hl+], a
    jr nz, jr_002_6235

    jr nz, jr_002_6236

    jr nz, jr_002_6209

    ld de, $0024

jr_002_6209:
    dec h
    nop
    inc [hl]
    nop

jr_002_620d:
    dec [hl]
    nop
    inc bc
    ld de, $0026
    daa
    nop
    ld [hl], $00
    scf
    nop
    inc bc
    ld de, $0008
    add hl, bc
    nop
    jr jr_002_6221

jr_002_6221:
    add hl, de
    nop
    inc bc
    ld de, $2009
    ld [$1920], sp
    jr nz, @+$1a

    jr nz, jr_002_6231

    ld de, $000a

jr_002_6231:
    dec bc
    nop
    ld a, [de]
    nop

jr_002_6235:
    dec de

jr_002_6236:
    nop
    inc bc
    ld de, $200b
    ld a, [bc]
    jr nz, jr_002_6259

    jr nz, jr_002_625a

    jr nz, jr_002_6245

    ld de, $000c

jr_002_6245:
    dec c
    nop
    inc e
    nop
    dec e
    nop
    inc bc
    ld de, $000e
    rrca
    nop
    ld e, $00
    rra
    nop
    inc bc
    ld de, $002a

jr_002_6259:
    dec hl

jr_002_625a:
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    inc bc
    ld de, $202b
    ld a, [hl+]
    jr nz, @+$3d

    jr nz, jr_002_62a2

    jr nz, jr_002_626d

    ld de, $0028

jr_002_626d:
    add hl, hl
    nop
    jr c, jr_002_6271

jr_002_6271:
    add hl, sp
    nop
    inc bc
    ld de, $2029
    jr z, jr_002_6299

    add hl, sp
    jr nz, jr_002_62b4

    jr nz, jr_002_6281

    ld de, $002c

jr_002_6281:
    dec l
    nop
    inc a
    nop
    dec a
    nop
    inc bc
    ld de, $002e
    cpl
    nop
    ld a, $00
    ccf
    nop
    inc bc
    ld de, $0040
    ld b, b
    jr nz, jr_002_62d9

    nop

jr_002_6299:
    ld b, c
    jr nz, jr_002_629f

    ld de, $0044

jr_002_629f:
    ld b, h
    jr nz, jr_002_62e7

jr_002_62a2:
    nop
    ld b, l
    jr nz, jr_002_62a9

    ld de, $0042

jr_002_62a9:
    ld b, e
    nop
    ld d, h
    nop
    ld d, l
    nop
    inc bc
    ld de, $0046
    ld b, [hl]

jr_002_62b4:
    jr nz, jr_002_630c

    nop
    ld d, [hl]
    jr nz, jr_002_62c1

    jr c, jr_002_6303

    nop
    ld c, c
    nop
    ld c, d
    nop

jr_002_62c1:
    ld c, e
    nop
    ld c, h
    nop
    ld c, a
    jr nz, jr_002_6316

    jr nz, @+$4a

    nop
    rlca
    jr c, jr_002_6316

    jr nz, jr_002_631a

    jr nz, jr_002_631b

    jr nz, jr_002_6320

    jr nz, jr_002_6321

    jr nz, jr_002_6326

    nop

jr_002_62d9:
    ld c, a
    nop
    ld b, a
    jr nz, jr_002_62e5

    jr c, jr_002_6347

    nop
    ld l, c
    nop
    ld l, d
    nop

jr_002_62e5:
    ld l, e
    nop

jr_002_62e7:
    ld l, h
    nop
    ld c, a
    jr nz, jr_002_633a

    jr nz, jr_002_6356

    nop
    rlca
    jr c, jr_002_635a

    jr nz, jr_002_635e

    jr nz, jr_002_635f

    jr nz, jr_002_6364

    jr nz, @+$6d

    jr nz, jr_002_634a

    nop
    ld c, a
    nop
    ld h, a
    jr nz, jr_002_6308

    add hl, sp

jr_002_6303:
    ld h, c
    nop
    ld h, d
    nop
    ld h, e

jr_002_6308:
    nop
    ld h, h
    nop
    ld h, l

jr_002_630c:
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld b, $39
    ld h, c
    nop
    ld h, d

jr_002_6316:
    nop
    ld h, e
    nop
    ld h, h

jr_002_631a:
    nop

jr_002_631b:
    ld l, a
    jr nz, @+$61

    jr nz, jr_002_6380

jr_002_6320:
    nop

jr_002_6321:
    ld b, $38
    ld h, b
    jr nz, jr_002_6388

jr_002_6326:
    jr nz, jr_002_6389

    jr nz, @+$66

    jr nz, jr_002_638f

    jr nz, @+$61

    nop
    ld l, a
    nop
    ld b, $38
    ld h, b
    jr nz, jr_002_6398

    jr nz, jr_002_6399

    jr nz, jr_002_639e

jr_002_633a:
    jr nz, jr_002_639f

    jr nz, jr_002_63a4

    jr nz, jr_002_63a5

    jr nz, jr_002_6348

    add hl, sp
    ld e, c
    nop
    ld e, d
    nop

jr_002_6347:
    ld e, e

jr_002_6348:
    nop
    ld e, h

jr_002_634a:
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    ld e, b
    nop
    ld b, $39
    ld c, l
    nop
    ld e, d

jr_002_6356:
    nop
    ld d, a
    nop
    ld e, h

jr_002_635a:
    nop
    ld e, l
    nop
    ld e, [hl]

jr_002_635e:
    nop

jr_002_635f:
    ld e, b
    nop
    ld b, $38
    ld e, b

jr_002_6364:
    jr nz, jr_002_63c0

    jr nz, @+$5b

    jr nz, jr_002_63c6

    jr nz, @+$5d

    jr nz, jr_002_63cc

    jr nz, @+$5f

    jr nz, jr_002_6378

    jr c, jr_002_63cc

    jr nz, jr_002_63d0

    jr nz, @+$4f

jr_002_6378:
    jr nz, jr_002_63d6

    jr nz, @+$59

    jr nz, jr_002_63dc

    jr nz, @+$5f

jr_002_6380:
    jr nz, jr_002_6385

    ld de, $006d

jr_002_6385:
    ld l, l
    jr nz, @+$70

jr_002_6388:
    nop

jr_002_6389:
    ld l, [hl]
    jr nz, jr_002_638f

    ld de, $007d

jr_002_638f:
    ld a, l
    jr nz, @+$80

    nop
    ld a, [hl]
    jr nz, jr_002_639c

    add hl, sp
    ld e, c

jr_002_6398:
    nop

jr_002_6399:
    ld [hl], c
    nop
    ld e, e

jr_002_639c:
    nop
    ld [hl], d

jr_002_639e:
    nop

jr_002_639f:
    ld e, l
    nop
    ld e, [hl]
    nop
    ld [hl], b

jr_002_63a4:
    nop

jr_002_63a5:
    ld b, $39
    ld c, l
    nop
    ld [hl], c
    nop
    ld d, a
    nop
    ld [hl], d
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    ld [hl], b
    nop
    ld b, $38
    ld [hl], b
    jr nz, @+$73

    jr nz, @+$5b

    jr nz, jr_002_6430

    jr nz, jr_002_641b

jr_002_63c0:
    jr nz, jr_002_6420

    jr nz, @+$5f

    jr nz, jr_002_63cc

jr_002_63c6:
    jr c, jr_002_6438

    jr nz, jr_002_643b

    jr nz, @+$4f

jr_002_63cc:
    jr nz, jr_002_6440

    jr nz, @+$59

jr_002_63d0:
    jr nz, jr_002_6430

    jr nz, jr_002_6431

    jr nz, @-$0b

jr_002_63d6:
    ldh a, [c]
    di
    ld a, [$f2fb]
    ei

jr_002_63dc:
    ld a, [$f2fb]
    ei
    ld a, [$02fb]
    inc bc
    ldh a, [c]
    inc bc
    ld a, [$0203]
    di
    ld a, [$02f3]
    di
    ldh a, [c]
    di
    ld [bc], a
    ei
    ld [bc], a
    di
    ld a, [$fafb]
    di
    ld a, [bc]
    ei
    ld a, [bc]
    di
    ldh a, [c]
    ei
    ldh a, [c]
    di
    ldh a, [c]
    di
    ld a, [$02f3]
    ei
    ldh a, [c]
    ei
    ld a, [$02fb]
    inc bc
    ld sp, hl
    inc bc
    ld bc, $faf3
    di
    ld [bc], a
    ei
    ld a, [$02fb]
    inc bc
    ld a, [$0203]

jr_002_641b:
    rst RST_30
    ldh a, [c]
    rst RST_38
    ldh a, [c]
    pop af

jr_002_6420:
    ld a, [$02f1]
    ld sp, hl
    ldh a, [c]
    ld sp, hl
    ld a, [$02f9]
    ld bc, $01f2
    ld a, [$0201]
    di

jr_002_6430:
    ld [bc], a

jr_002_6431:
    ei
    ld [bc], a
    di
    ld a, [$fafb]
    di

jr_002_6438:
    ld a, [bc]
    ei
    ld a, [bc]

jr_002_643b:
    di
    ldh a, [c]
    ei
    ldh a, [c]
    di

jr_002_6440:
    ldh a, [c]
    di
    ld a, [$f2fb]
    ei
    ld a, [$f2f9]
    ld sp, hl
    ld a, [$02f9]
    ld bc, $01f2
    ld a, [$0201]
    di
    ld [bc], a
    ei
    ld [bc], a
    di
    ld a, [$fafb]
    di
    ld a, [bc]
    ei
    ld a, [bc]
    di
    ldh a, [c]
    ei
    ldh a, [c]
    ld hl, sp-$0e
    ld hl, sp-$06
    nop
    ldh a, [c]
    nop
    ld a, [$02f8]
    nop
    ldh a, [c]
    nop
    ld a, [$0200]
    ld hl, sp-$06
    ld hl, sp-$0e
    ld a, [$faf2]
    ld a, [$02fa]
    ld [bc], a
    ldh a, [c]
    ld [bc], a
    ld a, [$0202]
    ldh a, [c]
    ld a, [$02f2]
    ldh a, [c]
    ldh a, [c]
    ldh a, [c]
    ld [bc], a
    ld a, [$f202]
    ld a, [$fafa]
    ldh a, [c]
    ld a, [bc]
    ld a, [$f20a]
    ldh a, [c]
    ld a, [$fcf2]
    ldh a, [c]
    db $fc
    ld a, [$02fc]
    inc b
    ldh a, [c]
    inc b
    ld a, [$0204]
    db $f4
    ld a, [$02f4]
    db $f4
    ldh a, [c]
    db $f4
    ld [bc], a
    db $fc
    ld [bc], a
    db $f4
    ld a, [$fafc]
    ldh a, [c]
    ldh a, [c]
    ldh a, [c]
    ld a, [$f2fa]
    ld a, [$f8fa]
    ldh a, [c]
    ld hl, sp-$06
    ld hl, sp+$02
    nop
    ldh a, [c]
    nop
    ld a, [$0200]
    ldh a, [c]
    ld [bc], a
    ld a, [$f202]
    ld a, [$fafa]
    ldh a, [c]
    ld a, [bc]
    ld a, [$f20a]
    ldh a, [c]
    ld a, [$f4f2]
    ldh a, [c]
    db $f4
    ld a, [$f2fc]
    db $fc
    ld a, [$f2fa]
    ld a, [$fafa]
    ld [bc], a
    ld [bc], a
    ldh a, [c]
    ld [bc], a
    ld a, [$0202]
    db $f4
    ld [bc], a
    db $fc
    ld [bc], a
    db $f4
    ld a, [$fafc]
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    nop
    db $fc
    ld hl, sp-$04
    nop
    or $f8
    or $00
    cp $f8
    cp $00
    db $f4
    ld hl, sp-$0c
    nop
    db $fc
    ld hl, sp-$04
    nop
    inc b
    ld hl, sp+$04
    nop
    push af
    ld hl, sp-$0c
    nop
    db $fd
    ld hl, sp-$04
    nop
    dec b
    ld hl, sp+$04
    nop
    ldh a, [$fff0]
    ld hl, sp-$10
    nop
    ldh a, [$ff08]
    ldh a, [$fff0]
    ld [$08f8], sp
    nop
    ld [$0808], sp
    ldh a, [$fff8]
    ld hl, sp-$08
    nop
    ld hl, sp+$08
    ld hl, sp-$10
    nop
    ld hl, sp+$00
    nop
    nop
    ld [$1000], sp
    ld hl, sp+$18
    ld hl, sp+$10
    nop
    jr jr_002_6547

jr_002_6547:
    add sp, -$08
    ldh a, [$fff0]
    ldh a, [$fff8]
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld [$f008], sp
    ld [$1000], sp
    ldh a, [$fff8]
    ld hl, sp-$08
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [$fcfc], sp
    db $fc
    ld hl, sp-$04
    nop
    db $f4
    inc b
    db $f4
    db $fc
    db $fc
    db $f4
    db $fc
    db $fc
    db $fc
    inc b
    inc b
    db $f4
    inc b
    db $fc
    inc b
    inc b
    db $f4
    db $f4
    db $e4
    nop
    db $e4
    ld [$f0ec], sp
    db $ec
    ld hl, sp-$14
    nop
    db $ec
    ld [$e8f4], sp
    db $f4
    ldh a, [$fff4]
    ld hl, sp-$0c
    nop
    db $f4
    ld [$10f4], sp
    db $fc
    add sp, -$04
    ldh a, [$fffc]
    ld hl, sp-$04
    nop
    db $fc
    ld [$10fc], sp
    inc b
    add sp, $04
    ldh a, [rDIV]
    ld hl, sp+$04
    nop
    inc b
    ld [$1004], sp
    inc c
    ldh a, [$ff0c]
    ld hl, sp+$0c
    nop
    inc c
    ld [$100c], sp
    db $e4
    nop
    db $e4
    ld [$f0ec], sp
    db $ec
    ld hl, sp-$14
    nop
    db $ec
    ld [$10ec], sp
    db $f4
    add sp, -$0c
    ldh a, [$fff4]
    ld hl, sp-$0c
    nop
    db $f4
    ld [$10f4], sp
    db $fc
    add sp, -$04
    ldh a, [$fffc]
    ld hl, sp-$04
    nop
    db $fc
    ld [$10fc], sp
    inc b
    add sp, $04
    ldh a, [rDIV]
    ld hl, sp+$04
    nop
    inc b
    ld [$1004], sp
    inc c
    add sp, $0c
    ldh a, [$ff0c]
    ld hl, sp+$0c
    nop
    inc c
    ld [$100c], sp
    ldh a, [$ffe8]
    db $f4
    ldh a, [$fff8]
    add sp, -$04
    ldh a, [$fffc]
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [$ff08]
    ld hl, sp+$10
    ldh a, [rNR10]
    ld hl, sp-$1c
    nop
    db $e4
    ld [$f0ec], sp
    db $ec
    ld hl, sp-$14
    nop
    db $ec
    ld [$e8f4], sp
    db $f4
    ldh a, [$fff4]
    ld hl, sp-$0c
    nop
    db $f4
    ld [$10f4], sp
    db $fc
    add sp, -$04
    ldh a, [$fffc]
    ld hl, sp-$04
    nop
    db $fc
    ld [$10fc], sp
    inc b
    ldh a, [rDIV]
    ld hl, sp+$04
    nop
    inc b
    ld [$1004], sp
    inc c
    ldh a, [$ff0c]
    ld hl, sp+$0c
    nop
    inc c
    ld [$100c], sp
    add sp, -$08
    ldh a, [$fff8]
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    nop
    ld [$08f8], sp
    nop
    db $10
    ld hl, sp-$18
    ld hl, sp-$10
    ld hl, sp-$08
    add sp, -$08
    ld hl, sp-$08
    nop
    nop
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    ld [$08f8], sp
    nop
    db $10
    ld hl, sp-$18
    ldh a, [$ffe8]
    ld hl, sp-$18
    nop
    add sp, $08
    add sp, $10
    ldh a, [$fff0]
    ldh a, [$fff8]
    ldh a, [rP1]
    ldh a, [$ff08]
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$08
    ld hl, sp+$10
    nop
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [$e808], sp
    ld [$08f0], sp
    ld hl, sp+$08
    nop
    ld [$1008], sp
    add sp, $10
    ldh a, [rNR10]
    ld hl, sp+$10
    nop
    ldh a, [$ffe8]
    nop
    db $10
    db $fc
    call c, $e4fc
    db $fc
    db $ec
    db $fc
    db $f4
    db $fc
    db $fc
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc d
    db $fc
    inc e
    ld c, $00
    ld d, $00
    ld e, $00
    ld h, $00
    ld l, $00
    ld [hl], $00
    ld a, $00
    ld b, [hl]
    nop
    ld c, [hl]
    nop
    ld d, [hl]
    nop
    ld e, [hl]
    nop
    ld h, [hl]
    nop
    ld l, [hl]
    nop
    halt
    nop
    ld a, [hl]
    nop
    add [hl]
    nop
    adc [hl]
    nop
    sub [hl]
    nop
    add sp, -$08
    ldh a, [$fff8]
    ldh a, [rP1]
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    nop
    add sp, $00
    db $fc
    ld hl, sp+$04
    ld hl, sp-$0c
    ld hl, sp-$0c
    nop
    db $fc
    ld hl, sp-$04
    nop
    inc b
    ld hl, sp+$04
    nop
    db $fc
    ld hl, sp+$04
    ld hl, sp-$0b
    ld hl, sp-$0c
    nop
    db $fd
    ld hl, sp-$04
    nop
    dec b
    ld hl, sp+$04
    nop
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$08
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [$f808], sp
    ld [$0800], sp
    ld [$f0f8], sp
    ld hl, sp-$08
    nop
    ldh a, [rP1]
    ld hl, sp+$08
    ldh a, [$ff08]
    ld hl, sp-$10
    ldh a, [$fff0]
    ld hl, sp-$08
    ldh a, [$fff8]
    ld hl, sp+$00
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    ld hl, sp+$08
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [$f808], sp
    ld [$0800], sp
    ld [$e8fb], sp
    ld hl, sp-$10
    ld hl, sp-$08
    nop
    ldh [$ff03], a
    add sp, $00
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$10
    nop
    ldh a, [$ff08]
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$08
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [$f008], sp
    ld [$08f8], sp
    nop
    ld [$f508], sp
    ldh a, [$fff5]
    ld [$f0fd], sp
    db $fd
    ld [$f8f4], sp
    db $f4
    nop
    db $fc
    ld hl, sp-$04
    nop
    inc b
    ld hl, sp+$04
    nop
    ld hl, sp-$10
    ld hl, sp+$08
    nop
    ldh a, [rP1]
    ld [$f4f0], sp
    ldh a, [$fffc]
    ld hl, sp-$0c
    ld hl, sp-$04
    ld hl, sp+$04
    nop
    db $f4
    nop
    db $fc
    nop
    inc b
    ld [$08f4], sp
    db $fc
    ld [$f804], sp
    add sp, $00
    add sp, -$08
    ldh a, [rP1]
    ldh a, [$fff8]
    ld hl, sp+$00
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$08
    nop
    ld [$10f8], sp
    nop
    db $10
    ld hl, sp+$18
    nop
    jr jr_002_67dc

jr_002_67dc:
    ld hl, sp+$00
    nop
    db $f4
    db $f4
    db $f4
    db $fc
    db $f4
    inc b
    db $fc
    db $f4
    db $fc
    db $fc
    db $fc
    inc b
    ldh a, [$fff0]
    ld hl, sp-$10
    nop
    ldh a, [$ff08]
    ldh a, [$fff0]
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$08
    ld hl, sp-$10
    nop
    ld hl, sp+$00
    nop
    nop
    ld [$0800], sp
    ld [$0800], sp
    ld hl, sp+$08
    ldh a, [$ff08]
    db $f4
    db $f4
    db $f4
    db $fc
    db $f4
    inc b
    db $fc
    db $f4
    db $fc
    db $fc
    db $fc
    inc b
    inc b
    db $fc
    inc b
    inc b
    inc b
    db $f4
    inc b
    inc c
    ldh a, [$fff8]
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$08
    nop
    ldh a, [rP1]
    ld [$f808], sp
    ld [$f800], sp
    db $f4
    ld hl, sp-$04
    nop
    db $f4
    nop
    db $fc
    nop
    inc b
    ldh a, [$fff0]
    ld [$f0f0], sp
    ld hl, sp-$10
    nop
    ldh a, [$ff08]
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$08
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld [$f808], sp
    ld [$0800], sp
    ld [$fcf8], sp
    nop
    db $fc
    nop
    nop
    nop
    xor a
    ld [$c7c9], a

jr_002_6864:
    xor a
    ld [$c7ca], a

jr_002_6868:
    ld a, [$c7c9]
    ld hl, $6917
    call Call_000_0081
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld e, a
    push de
    ld a, [$c7ca]
    ld hl, $6927
    call Call_000_0081
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push hl
    call Call_002_68cd
    call Call_002_68b6
    ld a, [$c7ca]
    inc a
    ld [$c7ca], a
    pop hl
    pop de
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call Call_002_68cd
    call Call_002_68b6
    ld a, [$c7ca]
    inc a
    ld [$c7ca], a
    ld a, [$c7ca]
    cp $20
    jr nz, jr_002_6868

    ld a, [$c7c9]
    inc a
    ld [$c7c9], a
    cp $08
    jr nz, jr_002_6864

    ret


Call_002_68b6:
    add hl, hl
    push hl
    ld hl, $c220
    ld a, [$c7c9]
    add h
    ld h, a
    ld a, [$c7ca]
    sla a
    call Call_000_0071
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ret


Call_002_68cd:
    ld hl, $c7c4
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $10

jr_002_68d8:
    ld a, [$c7c8]
    srl a
    ld [$c7c8], a
    rr d
    rr e
    jr nc, jr_002_68ff

    ld a, [$c7c4]
    add c
    ld [$c7c4], a
    ld a, [$c7c5]
    adc b
    ld [$c7c5], a
    ld a, [$c7c6]
    ld h, a
    ld a, [$c7c7]
    adc h
    ld [$c7c6], a

jr_002_68ff:
    sla c
    rl b
    ld a, [$c7c7]
    rl a
    ld [$c7c7], a
    dec l
    jr nz, jr_002_68d8

    ld a, [$c7c5]
    ld l, a
    ld a, [$c7c6]
    ld h, a
    ret


    nop
    ld b, b
    nop
    add b
    nop
    ret nz

    ld bc, $0100
    ld b, b
    ld bc, $0180
    ret nz

    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    db $ec
    nop
    ld h, c
    nop
    or l
    nop
    or l
    nop
    ld h, c
    nop
    db $ec
    nop
    nop
    ld bc, $0000
    ld h, c
    nop
    db $ec
    nop
    or l
    nop
    or l
    nop
    db $ec
    nop
    ld h, c
    ld bc, $0000
    nop
    nop
    db $ec
    nop
    ld h, c
    nop
    or l
    nop
    or l
    nop
    ld h, c
    nop
    db $ec
    nop
    nop
    ld bc, $0000
    ld h, c
    nop
    db $ec
    nop
    or l
    nop
    or l
    nop
    db $ec
    nop
    ld h, c

Call_002_6967:
    ld a, $17

jr_002_6969:
    ld [$c692], a
    ld hl, $c200
    add h
    ld h, a
    ld a, [hl]
    rrca
    jr nc, jr_002_69bb

    push hl
    ld b, h
    ld c, $03
    ld d, h
    ld e, $11
    ld hl, $c362
    ld a, [bc]
    sub [hl]
    ld [de], a
    push af
    cp $98
    jr nc, jr_002_69b7

    inc l
    inc c
    pop af
    ld a, [bc]
    sbc [hl]
    jr nz, jr_002_69b8

    inc l
    inc c
    inc c
    inc e
    ld a, [bc]
    sub [hl]
    ld [de], a
    push af
    cp $ac
    jr nc, jr_002_69b7

    inc l
    inc c
    pop af
    ld a, [bc]
    sbc [hl]
    jr nz, jr_002_69b8

    ld a, [$c460]
    rlca
    jr nc, jr_002_69b2

    ld a, [de]
    cp $3f
    jr nc, jr_002_69b2

    dec e
    ld a, [de]
    cp $58
    jr c, jr_002_69b8

jr_002_69b2:
    pop hl
    res 3, [hl]
    jr jr_002_69bb

jr_002_69b7:
    pop af

jr_002_69b8:
    pop hl
    set 3, [hl]

jr_002_69bb:
    ld a, [$c692]
    dec a
    bit 7, a
    jr z, jr_002_6969

    ret


Call_002_69c4:
    ld a, [$c26a]
    and $04
    jr nz, jr_002_69db

jr_002_69cb:
    ld [$c692], a
    call Call_002_6a1f
    ld a, [$c692]
    inc a
    cp $18
    jr c, jr_002_69cb

    jr jr_002_6a0a

jr_002_69db:
    ld a, [$df01]
    rrca
    jr c, jr_002_69f5

    ld a, $17
    ld [$c692], a

jr_002_69e6:
    call Call_002_6a1f
    ld a, [$c692]
    dec a
    ld [$c692], a
    inc a
    jr nz, jr_002_69e6

    jr jr_002_6a0a

jr_002_69f5:
    xor a
    ld [$c692], a
    call Call_002_6a1f
    ld a, $17

jr_002_69fe:
    ld [$c692], a
    call Call_002_6a1f
    ld a, [$c692]
    dec a
    jr nz, jr_002_69fe

jr_002_6a0a:
    ld a, [$c7cb]
    cp $a0
    ret nc

    ld h, $c0
    ld l, a
    ld b, $f0

jr_002_6a15:
    ld [hl], b
    ld a, l
    add $04
    ld l, a
    cp $a0
    jr c, jr_002_6a15

    ret


Call_002_6a1f:
    ld a, [$c692]
    ld l, $00
    add $c2
    ld h, a
    ld a, [hl]
    bit 0, a
    ret z

    bit 3, a
    ret nz

    bit 4, a
    ret nz

    and $a0
    ld [$c7c8], a
    ld l, $13
    ld a, [hl]
    ld [$c7c4], a
    ld l, $0e
    ld a, [hl+]
    ld c, l
    ld b, h
    inc [hl]
    ld d, [hl]
    inc l
    ld e, [hl]
    ld hl, $4d80
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c693]
    or a
    jr nz, jr_002_6a5a

    ld a, [$c7c4]
    rlca
    jr nc, jr_002_6a63

jr_002_6a5a:
    ld a, [$c692]
    or a
    jr z, jr_002_6a63

    inc hl
    jr jr_002_6a82

jr_002_6a63:
    ld a, d
    cp [hl]
    inc hl
    jr c, jr_002_6a82

    xor a
    ld [bc], a
    ld a, e
    inc a
    cp [hl]
    jr c, jr_002_6a80

    ld a, [$c7c4]
    bit 6, a
    jr z, jr_002_6a7f

    push bc
    ld c, $13
    set 7, a
    ld [bc], a
    pop bc
    jr jr_002_6a82

jr_002_6a7f:
    xor a

jr_002_6a80:
    inc c
    ld [bc], a

jr_002_6a82:
    ld a, [$c7cb]
    cp $a0
    ret nc

    inc hl
    ld a, e
    call Call_000_0071
    ld a, [hl]
    ld hl, $4ec0
    call Call_000_0081
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [bc]
    ld [$c7c9], a
    inc bc
    ld a, [bc]
    inc bc
    ld hl, $50c0
    call Call_000_0081
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [$c692]
    ld hl, $c211
    add h
    ld h, a
    ld a, [hl+]
    inc a
    inc a
    ld [$c7c7], a
    ld a, [hl]
    ld [$c7c6], a
    ld h, $c0
    ld a, [$c7cb]
    ld l, a
    ld a, [$c360]
    add $0c
    ld [$c7c5], a

jr_002_6ac7:
    push hl
    ld l, e
    ld h, d
    pop de
    ld a, [$c7c7]
    add [hl]
    inc hl
    push bc
    ld c, a
    ld a, [$c7c5]
    cp c
    ld a, c
    pop bc
    jr c, jr_002_6b0c

    ld [de], a
    inc e
    ld a, [$c7c8]
    bit 5, a
    jr z, jr_002_6aea

    ld a, [hl+]
    xor $ff
    add $f9
    jr jr_002_6aeb

jr_002_6aea:
    ld a, [hl+]

jr_002_6aeb:
    push hl
    ld l, e
    ld h, d
    ld d, a
    ld a, [$c7c6]
    add d
    pop de
    cp $a8
    jr nc, jr_002_6b11

    ld [hl+], a
    push hl
    ld l, c
    ld h, b
    pop bc
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [$c7c8]
    xor [hl]
    inc hl
    push hl
    ld l, c
    ld h, b
    pop bc
    ld [hl+], a
    jr jr_002_6b19

jr_002_6b0c:
    push de
    ld e, l
    ld d, h
    pop hl
    inc de

jr_002_6b11:
    inc bc
    inc bc
    ld a, l
    and $fc
    ld l, a
    xor a
    ld [hl], a

jr_002_6b19:
    ld a, l
    ld [$c7cb], a
    cp $a0
    ret nc

    ld a, [$c7c9]
    dec a
    ld [$c7c9], a
    inc a
    jr nz, jr_002_6ac7

    ret


    dec bc
    ld l, h
    dec de
    ld l, h
    dec hl
    ld l, h
    dec sp
    ld l, h
    ld c, e
    ld l, h
    ld e, e
    ld l, h
    ld l, e
    ld l, h
    db $db
    ld l, h
    ld a, e
    ld l, h
    db $eb
    ld l, h
    adc e
    ld l, h
    ei
    ld l, h
    sbc e
    ld l, h
    xor e
    ld l, h
    dec bc
    ld l, l
    cp e
    ld l, h
    dec de
    ld l, l
    bit 5, h
    dec hl
    ld l, l
    bit 5, h
    dec hl
    ld l, l
    bit 5, h
    dec hl
    ld l, l
    bit 5, h
    dec hl
    ld l, l
    dec sp
    ld l, l
    ld c, e
    ld l, l
    ld e, e
    ld l, l
    ld l, e
    ld l, l
    ld a, e
    ld l, l
    adc e
    ld l, l
    sbc e
    ld l, l
    sbc e
    ld l, l
    xor e
    ld l, l
    cp e
    ld l, l
    bit 5, l
    db $db
    ld l, l
    db $eb
    ld l, l
    ei
    ld l, l
    dec bc
    ld l, [hl]
    ld e, e
    ld l, h
    ld l, e
    ld l, h
    db $db
    ld l, h
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec de
    ld l, [hl]
    dec hl
    ld l, [hl]
    dec sp
    ld l, [hl]
    ld c, e
    ld l, [hl]
    ld e, e
    ld l, [hl]
    ld l, e
    ld l, [hl]
    ld a, e
    ld l, [hl]
    adc e
    ld l, [hl]
    sbc e
    ld l, [hl]
    xor e
    ld l, [hl]
    cp e
    ld l, [hl]
    bit 5, [hl]
    db $db
    ld l, [hl]
    db $eb
    ld l, [hl]
    ei
    ld l, [hl]
    dec bc
    ld l, a
    dec de
    ld l, a
    dec hl
    ld l, a
    dec sp
    ld l, a
    ld c, e
    ld l, a
    ld e, e
    ld l, a
    ld l, e
    ld l, a
    ld a, e
    ld l, a
    adc e
    ld l, a
    sbc e
    ld l, a
    xor e
    ld l, a
    cp e
    ld l, a
    bit 5, a
    db $db
    ld l, a
    db $eb
    ld l, a
    ei
    ld l, a
    dec bc
    ld [hl], b
    dec de
    ld [hl], b
    dec hl
    ld [hl], b
    dec sp
    ld [hl], b
    ld c, e
    ld [hl], b
    ld e, e
    ld [hl], b
    ld l, e
    ld [hl], b
    ld a, e
    ld [hl], b
    adc e
    ld [hl], b
    sbc e
    ld [hl], b
    xor e
    ld [hl], b
    cp e
    ld [hl], b
    bit 6, b
    db $db
    ld [hl], b
    db $eb
    ld [hl], b
    ei
    ld [hl], b
    ei
    ld [hl], b
    ei
    ld [hl], b
    nop
    ld [$6b5d], sp
    rrca
    rra
    ld l, [hl]
    rla
    rrca
    ld l, $07
    ld bc, $0100
    ld d, b
    ld e, b

jr_002_6c1b:
    ld bc, $5d38
    ld l, e
    ccf
    rra
    ld l, [hl]
    rlca
    rrca
    ld l, $02
    ld b, $00
    ld b, $50
    ld e, b
    ld [bc], a
    jr c, jr_002_6c8b

    ld l, e
    ccf
    rra
    ld l, [hl]
    rlca
    rrca
    ld l, $07
    ld bc, $0100
    ld d, b
    ld e, b
    inc bc
    jr c, jr_002_6cbb

    db $eb
    ccf
    ccf
    xor $07
    cpl
    xor [hl]
    ld [bc], a
    rlca
    nop
    nop
    ld d, b
    ld e, b
    inc b
    jr z, jr_002_6c1b

    dec sp
    cpl
    adc a
    ld a, $2f
    cp a
    cp $06
    ld [bc], a
    nop
    nop
    ld d, b
    ld e, b
    dec b
    jr c, jr_002_6cbb

    ld l, e
    ccf
    rra
    ld l, [hl]
    rlca
    rrca
    ld l, $ff
    rlca
    add b
    rlca
    ld d, b
    ld e, b
    nop
    db $10
    ld e, l
    ld l, e
    rla
    rra
    ld l, [hl]
    rra
    rrca
    ld l, $03
    nop
    nop
    nop
    ld d, b
    ld e, b
    ld bc, $5d13
    ld l, e
    ld [de], a
    rra
    ld l, [hl]
    ld a, [de]
    rrca
    ld l, $01
    ld [bc], a
    nop
    ld [bc], a
    ld d, b
    ld e, b

jr_002_6c8b:
    nop
    jr nz, jr_002_6ceb

    ld l, e
    daa
    rra
    ld l, [hl]
    cpl
    rrca
    ld l, $03
    nop
    nop
    nop
    ld d, b
    ld e, b
    ld [bc], a
    nop
    ld b, l
    dec bc
    rlca
    rlca
    ld c, $07
    scf
    adc $01
    ld [bc], a
    nop
    nop
    ld d, b
    ld e, b
    nop
    jr jr_002_6d0b

    ld l, e
    rra
    rra
    ld l, [hl]
    daa
    rrca
    ld l, $04
    nop
    nop
    nop
    ld d, b
    ld e, b

jr_002_6cbb:
    inc bc
    inc hl
    ld e, l
    ld l, e
    ld [hl+], a
    rra
    ld l, [hl]
    ld a, [hl+]
    rrca
    ld l, $04
    ld bc, $0100
    ld d, b
    ld e, b
    inc bc
    inc bc
    push bc
    dec de
    ld [bc], a
    add a
    ld e, $02
    or a
    sbc $01
    ld [bc], a
    nop
    nop
    ld d, b
    ld e, b
    nop
    inc d
    ld e, b
    ld h, c
    inc de
    ld a, [de]
    ld h, h
    dec de
    ld a, [bc]
    inc h
    inc bc
    nop
    inc bc
    nop
    ld d, b
    ld e, b

jr_002_6ceb:
    ld bc, $c815
    ld sp, $8a14
    inc [hl]
    inc d
    cp d
    db $f4
    ld bc, $0102
    ld [bc], a
    ld d, b
    ld e, b
    nop
    inc h
    ld e, b
    ld h, c
    inc hl
    ld a, [de]
    ld h, h
    dec hl
    ld a, [bc]
    inc h
    inc bc
    nop
    inc bc
    nop
    ld d, b
    ld e, b

jr_002_6d0b:
    nop
    dec e
    ld e, b
    ld h, c
    inc e
    ld a, [de]
    ld h, h
    inc h
    ld a, [bc]
    inc h
    inc b
    nop
    inc b
    nop
    ld d, b
    ld e, b
    inc bc
    jr nz, jr_002_6d76

    ld h, c
    daa
    ld a, [de]
    ld h, h
    cpl
    ld a, [bc]
    inc h
    inc b
    ld bc, HeaderLogo
    ld d, b
    ld e, b
    inc bc
    dec b
    ld c, b
    ld hl, $0a04
    inc h
    inc b
    ld a, [hl-]
    db $e4
    ld bc, $0102
    nop
    ld d, b
    ld e, b
    nop
    dec d
    db $fd
    ei
    inc d
    cp a
    cp $1c
    xor a
    cp [hl]
    nop
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    ld e, $5d
    ld l, e
    dec e
    rra
    ld l, [hl]
    dec h
    rrca
    ld l, $00
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    rra
    ld e, $6c
    ld e, $5f
    ld l, a
    ld h, $4f
    cpl
    nop
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    inc h
    ld e, l
    ld l, e
    inc hl
    rra
    ld l, [hl]
    dec hl
    rrca
    ld l, $00

jr_002_6d76:
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    ld h, $5d
    ld l, e
    dec h
    rra
    ld l, [hl]

jr_002_6d82:
    dec l
    rrca
    ld l, $00
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    dec h
    ld e, l
    ld l, e
    inc h
    rra
    ld l, [hl]
    inc l
    rrca
    ld l, $00
    nop
    nop
    nop
    ld d, b
    ld e, b
    ld bc, $5d05
    ld l, e
    inc b
    rra
    ld l, [hl]
    inc c
    rrca
    ld l, $00
    nop
    nop
    nop
    ld d, b
    ld e, b
    ld bc, $cd0d
    dec sp
    inc c
    adc a
    ld a, $0c
    cp a
    cp $00
    nop
    nop
    nop
    ld d, b
    ld e, b
    nop
    ld [$5bd5], sp
    rrca
    sub a
    ld e, [hl]
    rla
    add a
    ld e, $07
    ld bc, $0100
    ld d, b
    ld e, b
    nop
    inc bc
    call nc, $0259
    sub [hl]
    ld e, h
    ld a, [bc]
    add [hl]
    inc e
    rlca
    ld bc, $0002
    ld d, b
    ld e, b
    ld bc, $8721
    ld e, $21
    ret nz

    ld de, $7821
    pop hl

jr_002_6de5:
    ld [bc], a
    ld b, $01
    inc bc
    ld d, b
    ld e, b
    ld [bc], a
    inc [hl]
    db $10
    ld b, b
    inc sp
    ld d, c
    ld b, e
    dec sp
    ld b, c
    inc bc
    rlca
    ld bc, $0003
    ld d, b
    ld e, b
    inc bc
    jr z, @-$37

    rra
    jr z, jr_002_6d82

    ld [de], a
    jr z, @-$4d

    jp nc, $0702

    nop
    dec b
    ld d, b
    ld e, b
    inc b
    inc [hl]
    ld l, e
    and a
    inc sp
    dec l
    xor d
    dec sp
    dec e
    ld l, d
    rlca
    ld [bc], a
    inc bc
    ld bc, $5850
    nop
    ld [$5bd5], sp
    rrca
    sub a
    ld e, [hl]
    rla
    add a
    ld e, $07
    ld bc, $0100
    ld d, b
    ld e, b
    ld [$0b22], sp
    ld h, $21
    ld c, h
    add hl, hl
    ld hl, $e97c
    add b
    add b
    ld de, $5814
    ld e, b
    add hl, bc
    ld [hl], $7e
    db $ed
    ld [hl], $38
    ldh [$ff3e], a
    jr z, jr_002_6de5

    add b
    add b
    ld d, $17
    ld e, b
    ld e, b
    add hl, bc
    ld d, $65
    adc e
    dec d
    daa
    adc [hl]
    dec e
    rla
    ld c, [hl]
    add b
    add b
    ld d, $12
    ld e, b
    ld e, b
    add hl, bc
    scf
    ld b, b
    ld bc, $0236
    inc b
    ld [hl], $32
    call nz, $8080
    ld d, $16
    ld e, b
    ld e, b
    add hl, bc
    rla
    ld b, b
    ld bc, $0216
    inc b
    ld d, $32
    call nz, $8080
    ld d, $12
    ld e, b
    ld e, b
    add hl, bc
    daa
    xor c
    or d
    ld h, $ea
    or l
    ld l, $da
    ld [hl], l
    add b
    add b
    ld d, $14
    ld e, b
    ld e, b
    add hl, bc
    ld b, $25
    adc d
    dec b
    ld h, [hl]
    adc l
    dec c
    ld d, [hl]
    ld c, l
    add b
    add b
    dec d
    db $10
    ld e, b
    ld e, b
    add hl, bc
    ld a, [hl-]
    ld b, [hl]
    dec c
    ld a, [hl-]
    nop
    nop
    ld a, [hl-]
    jr nc, @-$3e

    add b
    add b
    ld [de], a
    rla
    ld e, b
    ld e, b
    add hl, bc

jr_002_6eac:
    jr c, jr_002_6ecd

    ld l, [hl]
    jr c, jr_002_6f09

    ld h, c
    nop
    ld c, b
    ld hl, $8080
    db $10
    rla
    ld e, b
    ld e, b
    add hl, bc
    add hl, sp
    ld e, a
    ld l, a
    add hl, sp
    add hl, de
    ld h, d
    ld bc, $2209
    add b
    add b
    ld de, $5817
    ld e, b
    add hl, bc
    inc sp

jr_002_6ecd:
    jr jr_002_6f2f

    ld [hl-], a
    ld e, c
    ld h, e
    ld a, [hl-]
    ld c, c
    inc hl
    add b
    add b
    ld [de], a
    ld d, $58
    ld e, b
    add hl, bc
    inc a
    ld d, $4c
    dec sp
    ld d, a
    ld c, a
    inc bc
    ld b, a
    rrca
    add b
    add b
    inc d
    rla
    ld e, b
    ld e, b
    add hl, bc
    dec sp
    push de
    ld e, e
    ld a, [hl-]
    sub a
    ld e, [hl]
    ld [bc], a

jr_002_6ef3:
    add a
    ld e, $80
    add b
    inc de
    rla
    ld e, b
    ld e, b
    add hl, bc
    inc l

jr_002_6efd:
    ld [hl], $cc
    dec hl

jr_002_6f00:
    ld [hl], a
    rst RST_08
    inc sp
    ld h, a
    adc a
    add b
    add b
    inc d
    dec d

jr_002_6f09:
    ld e, b
    ld e, b
    add hl, bc
    jr z, jr_002_6eac

    ld a, h
    cpl
    rst RST_18
    ld a, a
    scf
    rst RST_08
    ccf
    add b
    add b
    db $10
    dec d
    ld e, b
    ld e, b
    add hl, bc
    add hl, hl
    sbc [hl]
    ld a, h
    jr z, jr_002_6f00

    ld a, a
    jr nc, jr_002_6ef3

    ccf
    add b
    add b
    ld de, $5815
    ld e, b
    add hl, bc

jr_002_6f2c:
    dec a
    ld d, [hl]
    ld c, l

jr_002_6f2f:
    dec a
    db $10
    ld b, b
    dec b
    nop
    nop
    add b
    add b
    dec d
    rla

jr_002_6f39:
    ld e, b
    ld e, b
    add hl, bc
    inc a
    ld d, $4c
    dec sp
    ld d, a
    ld c, a
    inc bc
    ld b, a
    rrca
    add b
    add b
    inc d
    rla
    ld e, b
    ld e, b
    add hl, bc
    ld sp, $6b5d
    jr nc, @+$21

    ld l, [hl]
    jr c, @+$11

    ld l, $80
    add b
    ld de, $5816
    ld e, b
    add hl, bc
    jr nc, jr_002_6efd

    ld a, [hl]
    jr nc, jr_002_6f39

    ld [hl], c
    jr c, jr_002_6f2c

    ld sp, $8080
    db $10
    ld d, $58
    ld e, b
    add hl, bc
    jr c, @+$21

    ld l, [hl]
    jr c, @+$5a

    ld h, c
    nop
    ld c, b
    ld hl, $8080
    db $10
    rla
    ld e, b
    ld e, b
    ld [$2610], sp
    adc h
    rla
    ld h, a
    adc a
    rra
    ld d, a
    ld c, a
    add b
    add b
    db $10
    ld [de], a
    ld e, b
    ld e, b
    ld [$b610], sp
    call c, $f717
    rst RST_18
    rra
    rst RST_20
    sbc a
    add b
    add b
    db $10
    ld [de], a
    ld e, b
    ld e, b
    ld [$3409], sp
    ret z

    ld [$cb75], sp
    db $10
    ld h, l
    adc e
    add b
    add b
    db $10
    ld de, $5858
    ld [$e909], sp
    or e
    ld [$b6ab], sp
    db $10
    sbc e
    halt
    add b
    add b
    db $10
    ld de, $5858
    ld [$9e01], sp
    ld a, h
    nop
    rst RST_18
    ld a, a
    ld [$3fcf], sp
    add b
    add b
    ld de, $5810
    ld e, b
    ld [$db01], sp
    ld [hl], a
    nop
    sbc l
    ld a, d
    ld [$3a8d], sp
    add b
    add b
    db $10
    db $10
    ld e, b
    ld e, b
    ld [$3313], sp
    add $12
    ld [hl], h
    ret


    ld a, [de]
    ld h, h
    adc c
    add b
    add b
    ld [de], a
    ld [de], a
    ld e, b
    ld e, b
    ld [$bf13], sp
    cp $13
    ld hl, sp-$0f
    dec de
    add sp, -$4f
    add b
    add b
    inc de
    inc de
    ld e, b
    ld e, b
    ld [$bc13], sp
    ld hl, sp+$12

Call_002_7000:
    db $fd

Call_002_7001:
    ei
    ld a, [de]
    db $ed
    cp e
    add b
    add b
    ld [de], a
    inc de
    ld e, b
    ld e, b
    ld [$f00d], sp
    pop de
    inc c
    or d
    call nc, $a214
    sub h
    add b
    add b
    inc d
    ld de, $5858
    ld [$c015], sp
    ld de, $8214
    inc d
    inc d
    or d
    call nc, $8080
    inc d
    ld [de], a
    ld e, b
    ld e, b
    ld [$6015], sp
    add c
    inc d
    ld [hl+], a
    add h
    inc e
    ld [de], a
    ld b, h
    add b
    add b
    inc d
    ld [de], a
    ld e, b
    ld e, b
    ld [$591d], sp
    ld h, e
    inc e
    dec de
    ld h, [hl]
    inc h
    dec bc
    ld h, $80
    add b
    inc d
    inc de
    ld e, b
    ld e, b
    ld [$921c], sp
    ld d, h
    dec de
    db $d3
    ld d, a
    inc hl
    jp $8017


    add b
    inc de
    inc de
    ld e, b
    ld e, b
    ld [$5414], sp
    ld c, c
    inc de
    ld d, $4c
    dec de
    ld b, $0c
    add b
    add b
    inc de
    ld [de], a
    ld e, b
    ld e, b
    ld [$d724], sp
    ld e, a
    inc h
    sub c
    ld d, d
    inc l
    add c
    ld [de], a
    add b
    add b
    inc d
    inc d
    ld e, b
    ld e, b
    ld [$6314], sp
    add a
    inc de
    dec h
    adc d
    dec de
    dec d
    ld c, d
    add b
    add b
    inc de
    ld [de], a
    ld e, b
    ld e, b
    ld [$381d], sp
    ldh [rNR32], a
    ld a, c
    db $e3
    inc h
    ld l, c
    and e
    add b
    add b
    inc d
    inc d
    ld e, b
    ld e, b
    ld [$3815], sp
    ldh [rNR14], a
    ld a, c
    db $e3
    inc e
    ld l, c
    and e
    add b
    add b
    inc d
    inc de
    ld e, b
    ld e, b
    ld [$5c11], sp
    ld l, c
    db $10
    ld e, $6c
    jr jr_002_70c2

    inc l
    add b
    add b
    db $10
    ld [de], a
    ld e, b
    ld e, b
    ld [$840a], sp
    jr @+$0b

    push bc
    dec de

jr_002_70c2:
    add hl, bc
    push af
    db $db
    add b
    add b
    ld de, $5811
    ld e, b
    ld [$4815], sp
    ld hl, $0a14
    inc h
    inc d
    ld a, [hl-]
    db $e4
    add b
    add b
    inc d
    ld [de], a
    ld e, b
    ld e, b
    ld [$230b], sp
    add [hl]
    ld a, [bc]
    ld h, h
    adc c
    ld [de], a
    ld d, h
    ld c, c
    add b
    add b
    ld [de], a
    ld de, $5858
    ld [$2e03], sp
    xor h
    ld [bc], a
    ld l, a
    xor a
    ld a, [bc]
    ld e, a
    ld l, a
    add b
    add b
    inc de
    db $10
    ld e, b
    ld e, b
    ld e, a
    ld a, d
    call Call_002_5f7a
    ld a, d
    ld a, c
    ld a, d
    add h
    ld a, d
    rst RST_20
    ld a, d
    add h
    ld a, d
    ldh a, [c]
    ld a, d
    add h
    ld a, d
    sub l
    ld a, d
    db $fd
    ld a, d
    inc bc
    ld a, e
    sbc e
    ld a, d
    add hl, bc
    ld a, e
    inc d
    ld a, e
    and [hl]
    ld a, d
    rra
    ld a, e
    xor h
    ld a, d
    inc [hl]
    ld a, e
    ld c, [hl]
    ld a, e
    cp l
    ld a, d
    ld e, [hl]
    ld a, e
    ld e, [hl]
    ld a, e
    push af
    ld [hl], d
    rst RST_38
    ld [hl], e
    inc de
    ld [hl], l
    ld a, [$a575]
    halt
    ret z

    ld [hl], a
    xor a
    ld a, b
    xor a
    ld a, b
    nop
    ld a, c
    nop
    ld a, c
    db $10
    ld a, c
    db $10
    ld a, c
    ld h, c
    ld a, c
    and e
    ld a, c
    and e
    ld a, c
    ld sp, hl
    ld a, c
    ld sp, hl
    ld a, c
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld a, d
    ld e, a
    ld a, d
    ld a, c
    ld a, d
    add h
    ld a, d
    adc a
    ld a, d
    sbc e
    ld a, d
    and [hl]
    ld a, d
    xor h
    ld a, d
    or d
    ld a, d
    cp l
    ld a, d
    call $207a
    inc d
    ld bc, $0101
    nop
    inc e
    ld bc, $0101
    nop
    inc c
    inc bc
    ld bc, $1001
    jr jr_002_7183

    inc b
    nop

jr_002_7183:
    db $10
    inc e
    ld h, $01
    ld bc, $4800
    inc hl
    nop
    ld bc, $1c22
    ld c, c
    inc b
    ld bc, $1c02
    ld c, c
    inc b
    ld bc, $1400
    jr z, @+$03

    ld bc, $1800
    dec [hl]
    nop
    ld bc, $1020
    dec [hl]
    nop
    ld bc, $1400
    ld hl, $0101
    nop
    inc d
    cpl
    ld bc, $0001
    inc e
    jr nc, jr_002_71b4

jr_002_71b4:
    nop
    nop
    inc e
    ld sp, $0000
    db $10
    jr jr_002_71c3

    ld a, [de]
    nop
    db $10
    jr jr_002_71c8

    dec de

jr_002_71c3:
    nop
    db $10
    jr jr_002_71cd

    inc e

jr_002_71c8:
    nop
    db $10
    jr jr_002_71d2

    dec e

jr_002_71cd:
    nop
    nop
    jr c, @+$3d

    nop

jr_002_71d2:
    nop
    nop
    inc a
    inc a
    nop
    ld bc, $3010
    dec a
    nop
    ld [bc], a
    nop
    db $10
    dec [hl]
    nop
    ld bc, $1820
    dec [hl]
    nop
    ld bc, $0002
    ld b, l
    jr nz, jr_002_71ef

    ld [bc], a
    nop
    ld b, [hl]

jr_002_71ef:
    jr nz, jr_002_71f4

    ld [hl+], a
    nop
    ld b, [hl]

jr_002_71f4:
    jr nz, jr_002_71f9

    db $10
    jr jr_002_71ff

jr_002_71f9:
    inc c
    nop
    db $10
    jr jr_002_7204

    dec bc

jr_002_71ff:
    nop
    stop
    ld c, $00

jr_002_7204:
    nop
    db $10
    jr jr_002_720e

    jr jr_002_720a

jr_002_720a:
    db $10
    jr @+$08

    rla

jr_002_720e:
    nop
    db $10
    jr jr_002_7218

    ld d, $00
    db $10
    jr @+$08

    dec d

jr_002_7218:
    nop
    nop
    inc e
    daa
    ld bc, $0001
    jr nz, jr_002_7245

    inc bc
    ld bc, $1402
    ld c, b
    db $10
    ld [bc], a
    ld [bc], a
    inc e
    ld [hl-], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc e
    inc sp
    nop
    ld bc, $1402
    ld c, d
    db $10
    inc bc
    ld [bc], a
    db $10
    ld c, a
    db $10
    ld bc, $3010
    dec a
    ld bc, $0202
    inc d
    ld l, $07

jr_002_7245:
    ld [bc], a
    ld [bc], a
    nop
    ld b, b
    ld b, b
    inc bc
    ld [bc], a
    nop
    ld b, c
    nop
    inc bc
    ld [hl+], a
    nop
    ld b, c
    nop
    inc bc
    db $10
    db $10
    inc l
    inc bc
    ld [bc], a
    nop
    inc c
    inc b
    ld [bc], a
    nop
    db $10
    jr @+$08

    add hl, bc
    nop
    db $10
    jr jr_002_726d

    ld [$1200], sp
    nop
    inc [hl]
    nop

jr_002_726d:
    nop
    nop
    inc l
    add hl, sp
    ld bc, $0002
    inc [hl]
    dec sp
    ld bc, $2000
    inc d
    ld [hl], $00
    ld bc, $1c00
    ld [hl], $00
    ld bc, $1420
    scf
    nop
    ld bc, $1c00
    scf
    nop
    ld bc, $1000
    jr c, jr_002_7292

    ld [bc], a
    db $10

jr_002_7292:
    jr jr_002_729a

    ld [hl+], a
    nop
    db $10
    jr jr_002_729f

    inc hl

jr_002_729a:
    nop
    nop
    ld bc, $1708

jr_002_729f:
    nop
    nop
    ld [bc], a
    ld [$0018], sp
    nop
    inc b
    ld [$0019], sp
    nop
    ld [$1a08], sp
    nop
    jr nz, @+$1e

    dec b
    nop
    ld [bc], a
    nop
    inc d
    dec b
    nop
    ld [bc], a
    nop
    inc a
    ld [hl+], a
    nop
    ld bc, $1800
    ld a, [hl-]
    nop
    ld bc, $1c00
    inc d
    nop
    ld bc, $0100
    inc bc
    ld bc, $1001
    jr jr_002_72d6

    inc h
    nop
    db $10
    jr @+$08

    dec h

jr_002_72d6:
    nop
    db $10
    jr jr_002_72e0

    ld h, $00
    db $10
    jr @+$08

    daa

jr_002_72e0:
    nop
    db $10
    jr jr_002_72ea

    jr z, jr_002_72e6

jr_002_72e6:
    ld [bc], a
    inc d
    ld c, h
    db $10

jr_002_72ea:
    ld [bc], a
    nop
    inc d
    ld c, b
    db $10
    ld [bc], a
    db $10
    jr @+$08

    inc sp
    nop
    ld b, l
    ld d, d
    ld bc, $024b
    ccf
    add sp, $00
    ld b, b
    ld bc, $383f
    ld bc, $0220
    dec a
    add b
    nop
    add b
    ld [bc], a
    ccf
    jr @+$03

    jr nz, jr_002_7312

    ccf
    ld l, b
    nop
    ld [hl], b

jr_002_7312:
    inc b
    ccf
    cp b
    nop
    ld h, b
    ld b, $3f
    ld c, b
    ld bc, $06f0
    dec a
    ret c

    ld bc, $06b0
    nop
    add sp, $01
    ret nz

    nop
    ld bc, $01b8
    ld d, b
    ld bc, $b800
    ld bc, $0160
    ld bc, $01f8
    ret nz

    ld bc, $f801
    ld bc, $0220
    ld bc, $0178
    and b
    ld [bc], a
    ld bc, $0158
    ldh a, [$ff03]
    ld bc, $0158
    jr nc, jr_002_734e

    ld bc, $0168
    ld [hl], b

jr_002_734e:
    inc b
    nop
    ld l, b
    ld bc, $04d0
    nop
    ld e, b
    ld bc, $0520
    ld bc, $00c8
    and b
    dec b
    ld [bc], a
    ld [$a001], sp
    ld bc, $7802
    nop
    ldh a, [rSC]
    ld [bc], a
    adc b
    nop
    jr nz, jr_002_7370

    ld [bc], a
    adc b
    nop

jr_002_7370:
    or b
    inc b
    ld [bc], a
    ld [$c001], sp
    ld b, $02
    ld c, b
    ld bc, $06e0
    inc bc
    inc b
    ld bc, $03f0
    inc bc
    inc b
    ld bc, $0400
    inc bc
    inc b
    ld bc, $0410
    inc bc
    inc b
    ld bc, $0420
    inc bc
    inc b
    ld bc, $0430
    inc bc
    inc b
    ld bc, $0440
    inc bc
    inc b
    ld bc, $0440
    cpl
    ld a, [bc]
    ld bc, $01a0
    cpl
    ld a, d
    nop
    ldh a, [rSC]
    cpl
    adc d
    nop
    ret nz

    inc b
    jr nc, @+$52

    ld bc, $0250
    ld sp, $0150
    sub b
    ld [bc], a
    inc b
    call nz, Call_002_7001
    nop
    inc b
    ld d, h
    ld bc, $0280
    inc b
    call nc, Call_002_7000
    inc bc
    inc b
    call nc, $a000
    inc bc
    inc b
    call nc, $b000
    inc b
    inc b
    or h
    nop
    ldh [rTIMA], a
    inc b
    call nz, Call_002_4000
    ld b, $05
    cp b
    nop
    jr nz, jr_002_73e4

    dec b
    xor b
    nop
    ld b, b

jr_002_73e4:
    inc b
    dec b
    ld c, b
    nop
    add b
    dec b
    dec b
    ld e, b
    nop
    ld d, b
    inc bc
    dec b
    ld a, b
    nop
    ld [hl], b
    inc bc
    dec b
    sbc b
    nop
    ret nc

    inc bc
    dec b
    ret z

    nop
    add b
    ld b, $ff
    ld b, $b0
    nop
    jr nc, @+$03

    ld b, $40
    nop
    jr nc, jr_002_740a

    rlca

jr_002_740a:
    ld b, b
    nop
    ldh a, [rSB]
    rlca
    ret nc

    nop
    ldh a, [rSB]
    dec c
    add b
    nop
    sub b
    ld bc, $d83f
    ld b, $10
    ld bc, $c83f
    dec b
    ret nc

    ld bc, $783f
    inc b
    jr nc, jr_002_7428

    ccf

jr_002_7428:
    ld a, b
    inc b
    ret nc

    ld [bc], a
    ccf
    xor b
    inc bc
    ldh [rSC], a
    ccf
    ld e, b
    ld [bc], a
    ldh [rP1], a
    ccf
    jr z, jr_002_743a

    or b

jr_002_743a:
    ld bc, $583c
    dec b
    ldh a, [rSC]
    inc b
    call nz, $9006
    nop
    inc b
    call nz, $b006
    nop
    inc b
    call nc, Call_002_4006
    ld bc, $b404
    ld b, $80
    ld bc, $e808
    dec b
    db $10
    ld [bc], a
    ld [$05d8], sp
    jr nz, @+$04

    ld [$0598], sp
    ld h, b
    ld [bc], a
    add hl, bc
    ld e, b
    ld b, $e0
    ld bc, $c835
    dec b
    ld d, b
    ld bc, $d835
    dec b
    ld d, b
    ld bc, $c80a
    dec b
    db $10
    ld bc, $6809
    dec b
    ld h, b
    ld bc, $e80a
    inc b
    db $10
    ld bc, $080a
    inc bc
    or b
    ld bc, $d40b
    ld b, $40
    ld bc, $940b
    ld b, $c0
    ld bc, $e40b
    dec b
    ld d, b
    ld bc, $840b
    dec b
    ld d, b
    ld bc, $240b
    dec b
    db $10
    ld bc, $040b
    dec b
    ld d, b
    ld bc, $680c
    inc bc
    jr jr_002_74aa

    inc c

jr_002_74aa:
    adc b
    ld [bc], a
    jr jr_002_74af

    inc c

jr_002_74af:
    ret z

    ld bc, $0178
    dec c
    add b
    inc b
    db $10
    ld [bc], a
    ld c, $40
    inc b
    ld [hl], b
    ld [bc], a
    dec c
    and b
    inc bc
    add b
    ld bc, $e00d
    ld [bc], a
    ldh a, [rP1]
    dec c
    and b
    ld [bc], a
    ld d, b
    ld bc, $600e
    ld [bc], a
    jr nc, jr_002_74d2

    dec c

jr_002_74d2:
    ld h, b
    ld [bc], a
    or b
    ld bc, $ff0d
    ld bc, $01a0
    ld c, $80
    ld bc, $0170
    dec c
    ld b, b
    ld bc, $01f0
    rrca
    or b
    inc b
    ret nz

    ld [bc], a
    rrca
    or b
    inc b
    ldh [rSC], a
    rrca
    or b
    inc b
    ldh a, [rSC]
    rrca
    jr z, jr_002_74fc

    jr nc, jr_002_74fa

    db $10

jr_002_74fa:
    add b
    inc b

jr_002_74fc:
    ld hl, sp+$01
    ld de, $0490
    ld [hl], b
    ld bc, $9012
    inc b
    ld d, b
    ld bc, $9812
    dec b
    ld [hl], b
    ld [bc], a
    ld c, l
    jr @+$04

    cp b
    ld bc, $3eff
    add sp, $00
    ldh a, [rP1]
    ld a, $78
    ld bc, $0120
    ld a, $c8
    ld bc, $01f0
    ld a, $e8
    ld bc, $03c0
    ld a, $48
    nop
    jr nc, jr_002_7531

    ld a, $68
    nop
    jr nz, jr_002_7537

jr_002_7531:
    dec a
    jr jr_002_7535

    and b

jr_002_7535:
    ld b, $3d

jr_002_7537:
    ld l, b
    ld bc, $04c0
    dec a
    adc b
    nop
    ldh [rDIV], a
    ld [hl-], a
    or b
    nop
    ld a, b
    dec b
    ld [hl-], a
    or b
    nop
    cp b
    inc b
    ld [hl-], a
    sub b
    nop
    jr @+$05

    inc de
    push af
    ld bc, $0078
    inc de
    sub l
    ld bc, $00c8
    inc de
    or l
    ld bc, $0178
    inc de
    and l
    ld bc, $0278
    inc de
    push af
    ld bc, $03b8
    inc de
    push hl
    nop
    ld hl, sp+$04
    inc [hl]
    ld c, [hl]
    ld bc, $032f
    inc [hl]
    sbc [hl]
    ld bc, $048f
    inc d
    sub b
    ld bc, $03d8
    inc d
    db $10
    ld bc, $0338
    inc d
    or b
    nop
    ld hl, sp+$04
    inc d
    ld h, b
    ld bc, $0498
    dec d
    ldh a, [rSB]
    sub b
    nop
    dec d
    sub b
    ld bc, $00e0
    dec d
    or b
    ld bc, $0190
    dec d
    and b
    ld bc, $02a0
    ld d, $a8
    ld bc, $00a0
    rla
    cp b
    ld bc, $00f0
    ld d, $38
    ld bc, $00e0
    rla
    ld e, b
    ld bc, $0150
    add hl, bc
    ld c, b
    ld bc, $02c0
    inc c
    ld l, b
    ld bc, $01d8
    inc c
    sbc b
    ld bc, $02d8
    inc c
    jr jr_002_75c6

    ret c

jr_002_75c6:
    ld [bc], a
    inc sp
    xor b
    ld bc, $0160
    inc sp
    sbc b
    ld bc, $02b0
    inc sp
    add sp, $01
    sub b
    inc bc
    inc sp
    add sp, $01
    ld [hl], b
    inc bc
    inc h
    ld [hl], b
    nop
    ret c

    inc b
    ld a, [hl-]
    xor b
    nop
    jr nc, jr_002_75e8

    ld a, [hl-]
    adc b
    nop

jr_002_75e8:
    jr nc, jr_002_75ed

    dec sp
    cp b
    nop

jr_002_75ed:
    ldh a, [$ff03]
    dec sp
    ld [hl], b
    nop
    ldh a, [$ff03]
    dec sp
    ld e, b
    nop
    ldh a, [$ff03]
    rst RST_38
    ld a, $d8
    nop
    db $10
    ld bc, $283e
    inc bc
    or b
    nop
    ld a, $38
    ld b, $20
    ld [bc], a
    ld a, $68
    dec b
    and b
    ld bc, $283e
    ld b, $50
    ld [bc], a
    ld a, $78
    rlca
    add b
    ld bc, $a83e
    inc b
    nop
    ld bc, $d83e
    dec b
    jr nz, @+$03

    ld a, $98
    dec b
    ret nz

    ld bc, $583d
    inc b
    ld d, b
    nop
    dec a
    cp b
    ld b, $70
    nop
    dec [hl]
    jr c, jr_002_7635

    ld b, b

jr_002_7635:
    ld bc, $6836
    ld bc, $0110
    dec [hl]
    ret z

jr_002_763d:
    ld bc, $01c0
    ld [hl], $d8
    ld [bc], a
    ret nc

    nop
    dec [hl]
    ret z

    inc bc
    jr nz, jr_002_764b

    rla

jr_002_764b:
    ld [$5004], sp
    nop
    rla
    ld l, b
    inc b
    ld d, b
    nop
    scf
    add sp, $05
    sub b
    nop
    jr c, @-$36

    dec b
    add b
    nop
    scf
    ld [$f006], sp
    nop
    jr c, jr_002_763d

    dec b
    ld h, b
    ld bc, $9838
    dec b
    add b
    ld bc, $9837
    dec b
    nop
    ld [bc], a
    add hl, sp
    ld h, d
    dec b
    jr c, jr_002_7679

    add hl, sp
    sub d

jr_002_7679:
    ld b, $f8
    ld bc, $b825
    ld b, $88
    ld bc, $b826
    ld b, $98
    ld bc, $b826
    ld b, $a8
    ld bc, $b826
    ld b, $b8
    ld bc, $982e
    rlca
    jr @+$03

    ld l, $e8
    rlca
    jr c, jr_002_769b

    ld b, [hl]

jr_002_769b:
    add sp, $05
    or b
    ld [bc], a
    ld b, a
    ld c, b
    ld b, $b0
    ld [bc], a
    rst RST_38
    jr @-$58

    ld [bc], a
    ld h, b
    ld b, $19
    and [hl]
    ld [bc], a
    ld [hl], b
    ld b, $1a
    and [hl]
    ld [bc], a
    add b
    ld b, $1b
    ret nz

    ld [bc], a
    ld h, b
    dec b
    inc e
    call nz, $a002
    dec b
    ld c, b
    ld e, b
    ld [bc], a
    jr c, jr_002_76c4

    ld c, c

jr_002_76c4:
    sbc b
    ld [bc], a
    ld [$4902], sp
    jr z, jr_002_76cc

    or b

jr_002_76cc:
    ld [bc], a
    ld c, c
    cp b
    ld bc, $03b0
    ld c, c
    jr c, jr_002_76d7

    ldh a, [$ff03]

jr_002_76d7:
    ld c, d
    jr nz, jr_002_76db

    ret nc

jr_002_76db:
    ld [bc], a
    inc sp
    xor b
    nop
    ret nz

    nop
    inc sp
    xor b
    nop
    sub b
    nop
    inc sp
    xor b
    ld bc, $0200
    inc sp
    xor b
    ld bc, $01d0
    dec b
    sbc b
    nop
    nop
    ld bc, $8805
    nop
    ld [hl], b
    ld bc, $a805
    nop
    ret nz

    ld bc, $a805
    nop
    db $10
    ld [bc], a
    ld b, b
    sbc b
    ld bc, $00c0
    ld b, c
    ld [$d002], sp
    nop
    ld b, b
    ld c, b
    ld [bc], a
    ret nz

    nop
    ld b, c
    adc b
    ld [bc], a
    ret nc

    nop
    ld b, b
    ret z

    ld bc, $02b0
    ld b, b
    jr z, jr_002_7722

    ldh a, [$ff03]

jr_002_7722:
    ld b, e
    ld a, [bc]
    ld [bc], a
    ld d, b
    ld bc, $0a43
    ld [bc], a
    ld h, b
    ld bc, $0a43
    ld [bc], a
    ld [hl], b
    ld bc, $0a43
    ld [bc], a
    add b
    ld bc, $0a43
    ld [bc], a
    sub b
    ld bc, $0a43
    ld [bc], a
    and b
    ld bc, $0a43
    ld [bc], a
    or b
    ld bc, $0a43
    ld [bc], a
    ret nz

    ld bc, $9a43
    ld [bc], a
    db $10
    inc b
    ld b, e
    sbc d
    ld [bc], a
    jr nz, @+$06

    ld b, e
    ld a, d
    ld [bc], a
    jr nc, jr_002_775d

    ld b, e
    ld a, d
    ld [bc], a
    ld b, b

jr_002_775d:
    inc b
    ld b, e
    ld e, d
    ld [bc], a
    ld d, b
    inc b
    ld b, e
    ld e, d
    ld [bc], a
    ld h, b
    inc b
    ld b, e
    ld a, [hl-]
    ld [bc], a
    ld [hl], b
    inc b
    ld b, e
    ld a, [hl-]
    ld [bc], a
    add b
    inc b
    ld b, h
    ld e, b
    ld [bc], a
    db $10
    ld [bc], a
    ld b, h
    ld a, b
    ld [bc], a
    jr nc, @+$04

    ld [bc], a
    add sp, $02
    db $10
    ld [bc], a
    ld [bc], a
    add sp, $02
    jr nc, @+$04

    ld [bc], a
    add sp, $02
    ld d, b
    ld [bc], a
    ld [bc], a
    add sp, $02
    ld [hl], b
    ld [bc], a
    add hl, sp
    xor b
    ld [bc], a
    ret nc

    ld [bc], a
    add hl, sp
    xor b
    ld bc, $02f8
    add hl, sp
    ret z

    ld [bc], a
    db $10
    dec b
    daa
    jr nz, jr_002_77a3

    sbc b

jr_002_77a3:
    inc bc
    inc de
    ld hl, sp+$02
    ret c

    inc bc
    inc de
    sbc b
    ld bc, $0438
    inc d
    ldh [rSC], a
    cp b
    inc bc
    inc d
    ld h, b
    ld bc, $0458
    dec a
    jr jr_002_77bd

    jr nc, jr_002_77be

jr_002_77bd:
    dec a

jr_002_77be:
    jr z, jr_002_77c1

    or b

jr_002_77c1:
    inc bc
    dec a
    ld l, b
    ld [bc], a
    or b
    dec b
    rst RST_38
    dec e
    ret z

    nop
    ld b, b
    ld bc, $c81d
    nop
    ld b, b
    rst RST_38
    ld e, $40
    ld [bc], a
    ld hl, sp+$00
    ld e, $40
    ld [bc], a
    ld hl, sp+$02
    rra
    add b
    ld [bc], a
    sbc b
    nop
    rra
    add b
    ld [bc], a
    sbc b
    ld [bc], a
    rra
    add b
    ld [bc], a
    ret c

    nop
    rra
    add b
    ld [bc], a
    ret c

    ld [bc], a
    rra
    add b
    ld [bc], a
    cp b
    nop
    rra
    add b
    ld [bc], a
    cp b
    ld [bc], a
    jr nz, jr_002_7854

    inc b
    jr jr_002_77ff

jr_002_77ff:
    jr nz, jr_002_7859

    inc b
    jr jr_002_7806

    jr nz, jr_002_785e

jr_002_7806:
    inc b
    ld hl, sp+$01
    jr nz, jr_002_7863

    inc b
    ld hl, sp-$01
    ld hl, $0488
    jr jr_002_7813

jr_002_7813:
    ld hl, $0488
    jr @+$04

    ld hl, $0488
    ld hl, sp+$01
    ld hl, $0488
    ld hl, sp-$01
    dec [hl]
    ld e, b
    ld b, $a0
    nop
    dec [hl]
    ld e, b
    ld b, $a0
    ld [bc], a
    dec [hl]
    jr jr_002_7835

    and b
    nop
    dec [hl]
    jr jr_002_783a

    and b

jr_002_7835:
    ld [bc], a
    dec [hl]
    sbc b
    inc b
    ld [hl], b

jr_002_783a:
    nop
    dec [hl]
    sbc b
    inc b
    ld [hl], b
    ld [bc], a
    dec [hl]
    ld e, b
    inc b
    ldh a, [rSB]
    dec [hl]
    ld e, b
    inc b
    ldh a, [rIE]
    dec [hl]
    jr @+$06

    ldh a, [rSB]
    dec [hl]
    jr jr_002_7856

    ldh a, [rIE]

jr_002_7854:
    dec b
    ld l, b

jr_002_7856:
    rlca
    sub b
    nop

jr_002_7859:
    dec b
    ld l, b
    rlca
    sub b
    ld [bc], a

jr_002_785e:
    dec b
    ld c, b
    rlca
    sub b
    nop

jr_002_7863:
    dec b
    ld c, b
    rlca
    sub b
    ld [bc], a
    dec b
    ld l, b
    rlca
    ret nz

    ld bc, $6805
    rlca
    ret nz

    rst RST_38
    dec b
    ld [$9007], sp
    ld bc, $0805
    rlca
    sub b
    rst RST_38
    dec b
    jr c, jr_002_7884

    jr nc, jr_002_7882

    dec b

jr_002_7882:
    jr c, jr_002_7889

jr_002_7884:
    jr nc, @+$01

    dec b
    sbc b
    inc b

jr_002_7889:
    jr nz, jr_002_788c

    dec b

jr_002_788c:
    sbc b
    inc b
    jr nz, @+$01

    ld c, h
    ld hl, sp+$00
    sub b
    nop
    ld c, h
    ld hl, sp+$00
    sub b
    ld [bc], a
    ld c, h
    ret z

    nop
    ld b, b
    ld bc, $c84c
    nop
    ld b, b
    rst RST_38
    dec a
    sbc b
    dec b
    nop
    ld bc, $983d
    dec b
    nop
    rst RST_38
    rst RST_38
    inc bc
    db $e4
    nop
    ld [hl], b
    ld bc, $e403
    nop
    add b
    ld bc, $e403
    nop
    or b
    ld bc, $e403
    nop
    ret nz

    ld bc, $e403
    nop
    ldh a, [rSB]
    inc bc
    db $e4
    nop
    nop
    ld [bc], a
    inc bc
    db $e4
    nop
    ld d, b
    ld [bc], a
    inc bc
    db $e4
    nop
    ld h, b
    ld [bc], a
    inc bc
    db $e4
    nop
    ld [hl], b
    ld [bc], a
    inc bc
    db $e4
    nop
    and b
    ld [bc], a
    inc bc
    db $e4
    nop
    or b
    ld [bc], a
    inc bc
    db $e4
    nop
    ret nz

    ld [bc], a
    inc bc
    db $e4
    nop
    ret nc

jr_002_78ef:
    ld [bc], a
    inc bc
    db $e4
    nop
    ldh [rSC], a
    add hl, hl
    ldh a, [rP1]
    sub b
    ld bc, $f029
    nop
    sub b
    ld [bc], a
    rst RST_38
    scf
    cp b
    ld [bc], a
    ldh [rP1], a
    jr c, jr_002_78ef

    ld [bc], a
    add b
    ld bc, $b837
    ld [bc], a
    or b
    ld bc, $03ff
    db $e4
    nop
    jr nc, jr_002_7916

    inc bc

jr_002_7916:
    db $e4
    nop
    ld b, b
    ld bc, $e403
    nop
    ld d, b
    ld bc, $e403
    nop
    ld h, b
    ld bc, $e403
    nop
    ld [hl], b
    ld bc, $e403
    nop
    ret nz

    ld bc, $e403
    nop
    ret nc

    ld bc, $f403
    nop
    ld d, b
    ld [bc], a
    inc bc
    db $f4
    nop
    ld h, b
    ld [bc], a
    inc bc
    db $f4
    nop
    ld [hl], b
    ld [bc], a
    inc bc
    db $f4
    nop
    add b
    ld [bc], a
    inc bc
    db $e4
    nop
    ret nz

    ld [bc], a
    inc bc
    db $e4
    nop
    ret nc

    ld [bc], a
    inc bc
    call nz, $e000
    ld [bc], a
    inc bc
    call nz, $f000
    ld [bc], a
    dec a
    sbc b
    nop
    jr nc, jr_002_7963

    rst RST_38
    ld [hl+], a
    ld [hl], h

jr_002_7963:
    nop
    or b
    nop
    ld [hl+], a
    ld [hl], h
    nop
    and b
    nop
    ld [hl+], a
    db $e4
    nop
    ldh a, [rP1]
    ld [hl+], a
    db $e4
    nop
    ret nc

    nop
    ld [hl+], a
    ld b, h
    ld bc, $00e0
    dec [hl]
    ret z

    nop
    ret nz

    nop
    dec [hl]
    jr @+$03

    ldh [rP1], a
    dec [hl]
    jr jr_002_7988

    ret nz

jr_002_7988:
    nop
    ld [hl], $98
    ld bc, $00c0
    ld [bc], a
    add sp, $02
    ret nz

    nop
    ld [bc], a
    add sp, $02
    jr nc, jr_002_7999

    ld [bc], a

jr_002_7999:
    xor b
    ld [bc], a
    and b
    ld bc, $5808
    ld [bc], a
    ld [hl], b
    ld bc, $03ff
    db $f4
    nop
    ret nc

    ld bc, $f403
    nop
    ldh [rSB], a
    inc bc
    db $f4
    nop
    ldh a, [rSB]
    inc bc
    db $f4
    nop
    nop
    ld [bc], a
    inc bc
    db $f4
    nop
    db $10
    ld [bc], a
    inc bc
    db $f4
    nop
    jr nz, jr_002_79c3

    dec b
    ld a, b

jr_002_79c3:
    nop
    stop
    dec b
    sbc b
    nop
    jr nc, jr_002_79cb

jr_002_79cb:
    dec b
    adc b
    nop
    nop
    ld [bc], a
    dec b
    ld a, b
    nop
    nop
    ld [bc], a
    dec b
    adc b
    nop
    ld [hl], b
    ld [bc], a
    dec b
    ld a, b
    nop
    or b
    inc bc
    dec b
    adc b
    nop
    or b
    inc bc
    ld [bc], a
    adc b
    nop
    ret nc

    ld [bc], a
    ld [bc], a
    cp b
    nop
    ld [hl], b
    inc bc
    ld [bc], a
    cp b
    nop
    ret nc

    inc bc
    ld [bc], a
    sbc b
    nop
    jr nz, jr_002_79fc

    rst RST_38
    inc h
    jr z, @+$03

jr_002_79fc:
    ldh a, [rP1]
    inc h
    ld e, b
    ld bc, $0280
    inc h
    jr c, @+$03

    ldh a, [$ff03]
    rst RST_38
    dec h
    ld a, b
    ld bc, $00b8
    ld h, $78
    ld bc, $00c8
    ld h, $78
    ld bc, $00d8
    ld h, $78
    ld bc, $00e8
    dec h
    ld l, b
    ld [bc], a
    jr c, jr_002_7a22

jr_002_7a22:
    ld h, $68
    ld [bc], a
    ld c, b
    nop
    ld h, $68
    ld [bc], a
    ld e, b
    nop
    ld h, $68
    ld [bc], a
    ld l, b
    nop
    dec h
    jr z, jr_002_7a35

    ld h, b

jr_002_7a35:
    ld bc, $2826
    ld bc, $0170
    ld h, $28
    ld bc, $0180
    ld h, $28
    ld bc, $0190
    ld a, $68
    nop
    and b
    nop
    dec a
    ld c, b
    ld bc, $00b0
    ld a, $28
    ld [bc], a
    jr nc, jr_002_7a54

jr_002_7a54:
    ld a, $38
    ld [bc], a
    ld h, b
    ld bc, $283d
    ld bc, $0150
    rst RST_38
    inc b
    ld h, h
    nop
    ldh [rP1], a
    inc b
    ld h, h
    nop
    ret nz

    nop
    inc b
    ld b, h
    nop
    adc b
    nop
    inc b
    ld h, h
    nop
    ld l, b
    nop
    inc b
    ld h, h
    nop
    ld e, b
    nop
    rst RST_38
    ld [hl+], a
    call nc, $8000
    nop
    ld [hl+], a
    call nc, Call_002_7000
    nop
    rst RST_38
    inc hl
    add sp, $00
    ld c, b
    nop
    inc hl
    add sp, $00
    ret nc

    nop
    rst RST_38
    ld c, e
    or b
    nop
    add b
    nop
    rst RST_38
    inc h
    or b
    nop
    add b
    nop
    rst RST_38
    daa
    ldh [rP1], a
    ld [hl], b
    nop
    daa
    ldh [rP1], a
    ret nz

    nop
    rst RST_38
    jr z, jr_002_7ac8

    ld bc, $0090
    rst RST_38
    ld a, [hl+]
    ldh [rP1], a
    ld h, b
    nop
    rst RST_38
    ld a, [hl+]
    ldh [rP1], a
    or b
    nop
    ld a, [hl+]
    ldh [rP1], a
    ret nc

    nop
    rst RST_38
    dec hl
    ld d, [hl]
    nop
    adc b
    nop
    inc l
    ld e, [hl]
    nop
    ld [hl], b
    nop
    dec l

jr_002_7ac8:
    ld e, [hl]
    nop
    and b
    nop
    rst RST_38
    ld [hl+], a
    ld h, h
    nop
    ldh [rP1], a
    ld [hl+], a
    ld h, h
    nop
    ret nz

    nop
    ld [hl+], a
    ld b, h
    nop
    adc b
    nop
    ld [hl+], a
    ld h, h
    nop
    ld l, b
    nop
    ld [hl+], a
    ld h, h
    nop
    ld e, b
    nop
    rst RST_38
    inc c
    call nc, Call_002_7000
    nop
    inc c
    call nz, $a800
    nop
    rst RST_38
    inc c
    sub h
    nop
    ld b, b

jr_002_7af6:
    nop
    inc c
    sub h
    nop
    ret nc

    nop
    rst RST_38
    ld l, $f4
    nop
    sub b
    nop
    rst RST_38
    daa
    ldh a, [rP1]
    add b
    nop
    rst RST_38
    ld a, [hl+]
    ldh [rP1], a
    ld [hl], b
    nop
    ld a, [hl+]
    ldh [rP1], a
    ret nz

    nop
    rst RST_38
    ld l, $e8
    nop
    and b
    nop
    ld l, $e8
    nop
    ldh [rP1], a
    rst RST_38
    dec h
    add sp, $00
    cp b
    nop
    ld h, $e8
    nop
    ret z

    nop
    ld h, $e8
    nop
    ret c

    nop
    ld h, $e8
    nop
    add sp, $00
    rst RST_38
    ld b, $b0
    nop
    jr nc, jr_002_7b39

jr_002_7b39:
    ld b, $40
    nop
    jr nc, jr_002_7b3e

jr_002_7b3e:
    rlca
    ld b, b
    nop
    ldh a, [rP1]
    rlca
    ret nc

    nop
    ldh a, [rP1]
    dec c
    add b
    nop
    sub b
    nop
    rst RST_38
    jr jr_002_7af6

    nop
    ld h, b
    nop
    add hl, de
    and [hl]
    nop
    ld [hl], b
    nop
    ld a, [de]
    and [hl]
    nop
    add b
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    ld [hl+], a
    ld a, l
    ld [hl+], a
    ld a, l
    add hl, hl
    ld a, l
    jr nc, jr_002_7be5

    scf
    ld a, l
    ld c, d
    ld a, l
    ld d, a
    ld a, l
    ld [hl], b
    ld a, l
    adc c
    ld a, l
    sub b
    ld a, l
    sub a
    ld a, l
    xor d
    ld a, l
    cp l
    ld a, l
    call nz, $dd7d
    ld a, l
    ld [$f17d], a
    ld a, l
    ld hl, sp+$7d
    rst RST_38
    ld a, l
    call c, $127f
    ld a, [hl]
    add hl, de
    ld a, [hl]
    inc l
    ld a, [hl]
    ld b, l
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld [hl], a
    ld a, [hl]
    add h
    ld a, [hl]
    adc e
    ld a, [hl]
    sub d
    ld a, [hl]
    and l
    ld a, [hl]
    jp z, $d77e

    ld a, [hl]
    ld [$0f7e], a
    ld a, a
    jr z, jr_002_7c25

    dec sp
    ld a, a
    ld c, b
    ld a, a
    ld d, l
    ld a, a
    ld h, d
    ld a, a
    ld l, a
    ld a, a
    ld a, h
    ld a, a
    add e
    ld a, a
    adc d
    ld a, a
    sbc [hl]
    ld a, l
    cp b
    ld a, [hl]
    pop de
    ld a, l
    xor c
    ld a, a
    ld a, $7d
    or b
    ld a, a
    or a
    ld a, a
    call nz, $ef7f
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    xor $7c
    xor $7c
    di
    ld a, h
    db $10
    ld a, l
    inc de
    ld a, l
    rla
    ld a, l
    ld a, [de]
    ld a, l
    ld e, $7d
    nop
    nop
    nop
    nop
    nop

jr_002_7be5:
    nop
    ld [$a002], sp
    sub [hl]
    and b
    ld e, a
    ld [$a002], sp
    sub [hl]
    ret nz

    ld e, a
    ld [$a002], sp
    sub [hl]
    ldh [$ff5f], a
    inc b
    inc b
    ret nz

    sub b
    ret nz

    ld h, b
    ld [bc], a
    ld [bc], a
    nop
    sub c
    ret nz

    ld h, b
    ld [bc], a
    ld [bc], a
    and b
    sub b
    and b
    ld h, b
    ld bc, $8001
    sub c
    ret nz

    ld h, b
    ld bc, $a001
    sub c
    and b
    ld h, b
    ld bc, $5001
    sub c
    ret nc

    ld h, b
    ld bc, $7001
    sub c
    or b
    ld h, b
    inc b
    inc b
    ret nz

jr_002_7c25:
    sub b
    ret nc

    ld h, b
    ld [bc], a
    ld [bc], a
    nop
    sub c
    ret nc

    ld h, b
    ld [bc], a
    ld [bc], a
    and b
    sub b
    or b
    ld h, b
    ld bc, $8001
    sub c
    ret nc

    ld h, b
    ld bc, $a001
    sub c
    or b
    ld h, b
    ld bc, $5001
    sub c
    and b
    ld h, b
    ld bc, $7001
    sub c
    ret nz

    ld h, b
    inc b
    inc b
    ret nz

    sub b
    and b
    ld h, b
    ld [bc], a
    ld [bc], a
    nop
    sub c
    and b
    ld h, b
    ld [bc], a
    ld [bc], a
    and b
    sub b
    ret nz

    ld h, b
    ld bc, $8001
    sub c
    and b
    ld h, b
    ld bc, $a001
    sub c
    ret nz

    ld h, b
    ld bc, $5001
    sub c
    or b
    ld h, b
    ld bc, $7001
    sub c
    ret nc

    ld h, b
    inc b
    inc b
    ret nz

    sub b
    or b
    ld h, b
    ld [bc], a
    ld [bc], a
    nop
    sub c
    or b
    ld h, b
    ld [bc], a
    ld [bc], a
    and b
    sub b
    ret nc

    ld h, b
    ld bc, $8001
    sub c
    or b
    ld h, b
    ld bc, $a001
    sub c
    ret nc

    ld h, b
    ld bc, $5001
    sub c
    ret nz

    ld h, b
    ld bc, $7001
    sub c
    and b
    ld h, b
    ld [$8004], sp
    sub l
    add b
    ld a, l
    ld [$8004], sp
    sub d
    nop
    ld e, [hl]
    ld [$8004], sp
    sub d
    ld b, b
    ld e, [hl]
    ld [$8004], sp
    sub l
    add b
    ld e, [hl]
    ld [$8004], sp
    sub d
    ret nz

    ld e, [hl]
    ld [$4004], sp
    sub l
    nop
    ld e, l
    ld [$4004], sp
    sub l
    ld b, b
    ld e, l
    ld [$c004], sp
    sub [hl]
    ret nz

    ld e, [hl]
    ld [$c004], sp
    sub [hl]
    nop
    ld e, [hl]
    ld [$c004], sp
    sub [hl]
    ld b, b
    ld e, [hl]
    ld [$4004], sp
    sub h
    nop
    ld e, [hl]
    ld [$4004], sp
    sub h
    ld b, b
    ld e, [hl]
    ld [$4004], sp
    sub h
    ret nz

    ld e, [hl]
    inc b
    ld bc, $0102
    inc bc
    inc e
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
    inc d
    dec d
    ld d, $17
    jr jr_002_7d23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    jr nz, jr_002_7d36

    inc bc
    inc h
    ld hl, $0222
    dec h
    ld h, $03
    daa
    jr z, jr_002_7d47

    inc bc
    inc l
    ld a, [hl+]
    dec hl
    rlca

jr_002_7d23:
    ld a, [hl+]
    nop
    ld c, c
    nop
    adc b
    nop
    rlca
    ld a, [hl+]
    nop
    ld b, h
    nop
    adc b
    nop
    rlca
    add hl, bc
    nop
    ld c, h
    nop
    add h

jr_002_7d36:
    nop
    rlca
    add hl, bc
    nop
    ld b, b
    nop
    add h
    nop
    rlca
    ld a, h
    ld b, b
    ld l, b
    ld b, b
    sub b
    rlca
    inc b
    nop

jr_002_7d47:
    ld e, c
    nop
    sub b
    rlca
    jr nz, jr_002_7d4d

jr_002_7d4d:
    ld d, c
    nop
    add b
    rlca
    jr nz, jr_002_7d53

jr_002_7d53:
    ld d, [hl]
    nop
    add d
    nop
    rlca
    ld bc, $6ec0
    ret nz

    sub [hl]
    rlca
    ld bc, $6ee0
    ldh [$ff96], a
    rlca
    ld bc, $6ed0
    ret nc

    sub [hl]
    rlca
    ld bc, $6ef0
    ldh a, [$ff96]
    nop
    rlca
    ld bc, $6ec0
    ret nc

    sub [hl]
    rlca
    ld bc, $6ee0
    ldh a, [$ff96]
    rlca

Call_002_7d7d:
    ld bc, $6ed0
    ret nz

    sub [hl]
    rlca
    ld bc, $6ef0
    ldh [$ff96], a
    nop
    rlca
    stop
    ld l, a
    nop
    sub a
    nop
    rlca
    stop
    ld e, b
    nop
    sub a
    nop
    rlca
    ld [$4d00], sp
    nop
    add h
    nop
    ld b, $5c
    ld b, b
    ld d, b
    ld b, b
    sub b
    rlca
    inc b
    nop
    ld e, c
    nop
    sub b
    ld b, $20
    nop
    ld d, [hl]
    nop
    sub [hl]
    ld b, $20
    nop
    ld a, h
    nop
    add b
    ld b, $20
    nop
    ld [hl], h
    nop
    add d
    nop
    rlca
    jr nz, jr_002_7dc0

jr_002_7dc0:
    ld a, d
    nop
    sub [hl]
    nop
    ld b, $40
    nop
    ld l, b
    nop
    add b
    rlca
    stop
    ld d, b
    nop
    adc l
    nop
    rlca
    inc b
    nop
    ld e, c
    nop
    sub b
    rlca
    ld a, h
    ld b, b
    ld a, b
    ld b, b
    sub b
    ld b, $30
    nop
    ld [hl], b
    nop
    add b
    ld b, $10
    nop
    ld a, a
    nop
    add e
    nop
    rlca
    inc b
    nop
    ld e, c
    nop
    sub b
    nop
    rlca
    ld [bc], a
    ldh [$ff59], a
    and b
    add a
    nop
    rlca
    inc b
    and b
    ld c, e
    and b
    add a
    nop
    rlca
    ld [bc], a
    jr nz, @+$4b

    and b
    add a
    rlca
    ld [bc], a
    ret nz

    ld c, c
    ret nz

    add a
    rlca
    ld [bc], a
    ldh [rOBP0], a
    ldh [$ff87], a
    nop
    ld b, $04
    add b
    ld d, e
    nop
    adc d
    nop
    rlca
    stop
    halt
    nop
    sub d
    rlca
    stop
    ld l, l
    nop
    sub [hl]
    rlca
    inc b
    ld b, b
    ld [hl], a
    ld b, b
    sub l
    nop
    rlca
    stop
    ld e, e
    nop
    sub d
    ld b, $08
    add b
    ld h, l
    add b
    sub [hl]
    rlca
    inc b
    ld b, b
    ld a, b
    ld b, b
    sub l
    rlca
    inc b
    ld b, b
    ld [hl], b
    ld b, b
    sub a
    nop
    rlca
    stop
    ld e, e
    nop
    sub d
    ld b, $04
    nop
    ld h, h
    nop
    sub h
    ld b, $10
    nop
    ld a, a
    nop
    add e
    ld b, $10
    nop
    ld a, [hl]
    nop
    add d
    nop
    rlca
    ld [$7440], sp
    ld b, b
    sub d
    rlca
    ld [$7d00], sp
    add b
    sub h
    ld b, $10
    nop
    ld [hl], a
    nop
    add c
    ld b, $20
    nop
    ld a, b
    nop
    add d
    nop
    rlca
    inc b
    nop
    ld a, c
    ret nz

    sub b
    rlca
    inc b
    ld b, b
    ld [hl], c
    add b
    sub a
    nop
    rlca
    stop
    ld l, l
    nop
    sub a
    nop
    rlca
    stop
    ld [hl], a
    nop
    sub a
    nop
    rlca
    inc c
    jr nz, jr_002_7ee2

    db $10
    add b
    ld b, $10
    nop
    ld c, a
    nop
    add c
    ld b, $10
    nop
    ld [hl], d
    nop
    add d
    nop
    rlca
    jr nz, jr_002_7ea8

jr_002_7ea8:
    ld d, h
    nop
    add b
    ld b, $10
    nop
    ld l, a
    nop
    adc l
    rlca
    stop
    ld c, l
    nop
    adc [hl]
    nop
    ld b, $7c
    ld b, b
    ld h, b
    ld b, b
    sub b
    rlca
    inc b
    nop
    ld e, c
    nop
    sub b
    rlca
    inc b
    ret nz

    ld l, [hl]
    ret nz

    sub [hl]
    ld b, $04
    add b
    ld h, c
    ret nz

    sub d
    ld b, $34
    nop
    ld l, h
    nop
    add b
    nop
    rlca
    inc b
    nop
    ld a, c
    nop
    sub l
    rlca
    inc b
    ret nz

    ld l, [hl]
    ret nz

jr_002_7ee2:
    sub [hl]
    rlca
    inc b
    ret nz

    ld d, a
    ret nz

    add d
    nop
    ld b, $04
    nop
    ld h, l
    add b
    sub e
    ld b, $04
    ret nz

    ld h, [hl]
    ld b, b
    adc a
    rlca
    inc bc
    ret nc

    ld c, h
    add b
    adc a
    ld b, $04
    add b
    ld d, c
    ret nz

    adc a
    ld b, $04
    or b
    ld b, a
    nop
    adc [hl]
    rlca
    ld [bc], a
    ldh [rKEY1], a
    ldh [$ff8e], a
    nop
    rlca
    inc bc
    nop
    ld l, b
    nop
    adc l
    ld b, $04
    nop
    ld c, l
    nop
    adc a
    ld b, $04
    ret nz

    ld h, [hl]
    ld b, b
    adc a
    rlca
    inc bc
    ret nc

    ld c, h
    add b
    adc a
    nop
    ld b, $10
    nop
    ld c, a
    nop
    add c
    ld b, $10
    nop
    ld [hl], d
    nop
    add d
    ld b, $10
    nop
    ld a, a
    nop
    add e
    nop
    ld b, $10
    nop
    ld [hl], a
    nop
    add c
    ld b, $20
    nop
    ld a, b
    nop
    add d
    nop
    rlca
    stop
    ld d, b
    nop
    adc l
    rlca
    stop
    ld d, e
    nop
    adc [hl]
    nop
    rlca
    stop
    ld d, l
    nop
    adc l
    rlca
    stop
    ld d, a
    nop
    adc [hl]
    nop
    ld b, $10
    nop
    ld l, a
    nop
    add b
    ld b, $10
    nop
    ld a, [hl]
    nop
    add d
    nop
    ld b, $0a
    nop
    ld c, a
    nop
    add d
    rlca
    inc b
    ret nz

    ld d, a
    ret nz

    add d
    nop
    ld b, $40
    nop
    ld [hl], h
    nop
    add b
    nop
    rlca
    inc b
    nop
    ld d, b
    nop
    adc l
    nop
    ld b, $20
    nop
    ld [hl], e
    nop
    add b
    ld b, $10
    nop
    ld [hl], h
    nop
    add d
    rlca
    inc b
    nop
    ld e, c
    nop
    sub b
    rlca
    ld e, h
    ld b, b
    ld [hl], b
    ld b, b
    sub b
    rlca
    jr nz, jr_002_7fa5

jr_002_7fa5:
    ld c, [hl]
    nop
    sub [hl]
    nop
    rlca
    ld [bc], a
    ret nz

    ld c, l
    ret nz

    adc [hl]
    nop
    rlca
    ld b, $40
    ld e, a
    nop
    adc l
    nop
    rlca
    add b
    nop
    ld b, b
    nop
    add h
    ld b, $04
    nop
    ld a, a
    nop
    adc l
    nop
    rlca
    ld l, h
    ld b, b
    ld l, b
    ld b, b
    sub b
    rlca
    stop
    ld e, b
    nop
    sub a
    rlca
    inc b
    nop
    ld e, c
    nop
    sub b
    rlca
    inc b
    ld b, b
    ld d, e
    ld b, b
    adc [hl]
    rlca
    ld [bc], a
    ld h, b
    ld c, c
    and b
    add a
    rlca
    ld [bc], a
    nop
    ld c, d
    ret nz

    add a
    rlca
    ld [bc], a
    ldh [rWX], a
    ldh [$ff87], a
    nop
    ld b, $20
    nop
    ld l, b
    nop
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
