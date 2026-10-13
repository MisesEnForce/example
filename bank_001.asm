; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Jump_001_4000:
    ld hl, $c36a
    ld a, [hl]
    and $c0
    ld [hl], a
    ld a, [$c203]
    ld b, a
    call Call_001_4358
    call Call_001_4455
    call Call_001_439a
    ld a, [$c369]
    ld b, a
    call Call_001_4358
    call Call_001_403b
    ld a, [$c203]
    ld b, a
    call Call_001_4358
    call Call_001_41e6
    call Call_001_4407
    call Call_001_448a
    ld a, [$c36a]
    bit 0, a
    ret z

    ld hl, $df11
    ld a, [hl+]
    dec a
    ld [hl], a
    ret


Call_001_403b:
    ld a, [$c27b]
    bit 3, a
    ret nz

    bit 5, a
    ret nz

    ld a, [$c261]
    bit 5, a
    jr nz, jr_001_405c

    bit 4, a
    jr nz, jr_001_40bb

    ld hl, $c36b
    set 7, [hl]
    ld a, [hl]
    rrca
    jr c, jr_001_405c

    rrca
    jr c, jr_001_40bb

    ret


Jump_001_405c:
jr_001_405c:
    ld a, [$c36d]
    call Call_001_4118
    ld a, [$c36a]
    bit 6, a
    jr z, jr_001_4074

    ld a, [$c206]
    cpl
    inc a
    and $0f
    ld c, a
    jp Jump_001_4667


jr_001_4074:
    ld a, [$c36e]
    ld h, $c1
    and $f0
    swap a
    ld l, a
    push hl
    ld a, [$c371]
    call Call_001_41df
    pop hl
    call Call_001_4097
    ld a, [$c369]
    sub $08
    and $f0
    call Call_001_41df
    call Call_001_4097
    ret


Call_001_4097:
    ld a, [$c36c]
    ld b, $02
    cp $0b
    jr z, jr_001_40a4

    dec b
    cp $07
    ret nz

jr_001_40a4:
    ld a, b
    ld [$c663], a
    ld a, [$c36a]
    or $10
    ld [$c36a], a
    pop hl
    ld a, [$c206]
    cpl
    and $0f
    ld c, a
    jp Jump_001_4667


Jump_001_40bb:
jr_001_40bb:
    ld a, [$c36f]
    call Call_001_4118
    ld a, [$c36a]
    bit 6, a
    jr z, jr_001_40d1

    ld a, [$c206]
    and $0f
    ld c, a
    jp Jump_001_4694


jr_001_40d1:
    ld a, [$c370]
    ld h, $c1
    and $f0
    swap a
    ld l, a
    push hl
    ld a, [$c371]
    call Call_001_41df
    pop hl
    call Call_001_40f4
    ld a, [$c369]
    sub $08
    and $f0
    call Call_001_41df
    call Call_001_40f4
    ret


Call_001_40f4:
    ld a, [$c36c]
    ld b, $02
    cp $0b
    jr z, jr_001_4101

    dec b
    cp $07
    ret nz

jr_001_4101:
    ld a, b
    ld [$c663], a
    ld a, [$c36a]
    or $10
    ld [$c36a], a
    pop hl
    ld a, [$c206]
    dec a
    and $0f
    ld c, a
    jp Jump_001_4694


Call_001_4118:
    ld h, $c1
    and $f0
    swap a
    ld l, a
    ld a, [$c36a]
    and $3f
    ld [$c36a], a
    push hl
    ld a, [$c371]
    call Call_001_41df
    pop hl
    ld a, [$c36c]
    cp $01
    jr z, jr_001_414b

    cp $09
    jr z, jr_001_413c

    jr jr_001_417a

jr_001_413c:
    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_4170

    ld a, [$c36a]
    or $80
    ld [$c36a], a

jr_001_414b:
    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_4170

    ld a, [$c20b]
    bit 7, a
    jr nz, jr_001_4170

    ld a, [$c36b]
    rlca
    jr c, jr_001_4170

    ld a, $08
    ld [$c27b], a
    xor a
    ld [$c2a2], a
    ld a, [$c200]
    xor $20
    ld [$c200], a

jr_001_4170:
    ld a, [$c36a]
    or $40
    ld [$c36a], a
    jr jr_001_4182

jr_001_417a:
    cp $0a
    jr z, jr_001_4170

    cp $0d
    jr z, jr_001_4170

jr_001_4182:
    push hl
    ld a, [$c376]
    call Call_001_41df
    pop hl
    call Call_001_41ae
    ld a, [$c373]
    call Call_001_41df
    ld a, [$c36c]
    cp $01
    jr z, jr_001_41a5

jr_001_419a:
    cp $09
    jr z, jr_001_41a5

    cp $0a
    jr z, jr_001_41a5

    cp $0d
    ret nz

jr_001_41a5:
    ld a, [$c36a]
    or $40
    ld [$c36a], a
    ret


Call_001_41ae:
    cp $01
    jr nz, jr_001_419a

    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_41d6

    ld a, [$c20b]
    rlca
    jr c, jr_001_41d6

    ld a, [$c36b]
    rlca
    jr c, jr_001_41d6

    ld a, $08
    ld [$c27b], a
    xor a
    ld [$c2a2], a
    ld a, [$c200]
    xor $20
    ld [$c200], a

jr_001_41d6:
    ld a, [$c36a]
    or $40
    ld [$c36a], a
    ret


Call_001_41df:
    add l
    ld l, a
    ld a, [hl]
    ld [$c36c], a
    ret


Call_001_41e6:
    ld a, [$c36a]
    rlca
    jr c, jr_001_41fd

    ld a, [$c27b]
    bit 3, a
    ret nz

    bit 1, a
    jr z, jr_001_41fd

    ld a, [$c27c]
    and a
    jr nz, jr_001_41fd

    ret


jr_001_41fd:
    ld b, $00
    ld d, b
    ld hl, $c100
    ld a, [$c374]
    ld e, a
    add hl, de
    push hl
    ld a, [$c36e]
    call Call_001_4270
    pop hl
    call Call_001_427b
    push hl
    ld a, [$c370]
    call Call_001_4270
    pop hl
    call Call_001_427b
    push hl
    ld a, [$c375]
    call Call_001_4270
    pop hl
    call Call_001_42c9
    ld a, [$c36a]
    and $28
    ret nz

    ld a, [$c27b]
    bit 1, a
    jr nz, jr_001_4254

    ld de, $0000
    ld hl, $c100
    ld a, [$c373]
    ld e, a
    add hl, de
    ld a, [$c375]
    call Call_001_4270
    call Call_001_432a
    ld a, [$c36a]
    and $28
    jr z, jr_001_4254

    jp Jump_001_4711


jr_001_4254:
    ld a, [$c36a]
    bit 0, a
    ret z

    and $7f
    ld [$c36a], a
    ld a, [$c36a]
    bit 2, a
    ret nz

Call_001_4265:
    ld a, [$c203]
    sub $05
    and $0f
    ld c, a
    jp Jump_001_4711


Call_001_4270:
    and $f0
    swap a
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c36c], a
    ret


Call_001_427b:
    ld a, [$c36c]
    cp $01
    jr z, jr_001_4297

    cp $04
    jr z, jr_001_4297

    cp $09
    jr z, jr_001_4297

    cp $0a
    jr z, jr_001_4297

    cp $0d
    jr z, jr_001_4297

    cp $08
    jr z, jr_001_42b9

    ret


jr_001_4297:
    ld a, [$c36a]
    or $01
    ld [$c36a], a
    ret


    ld a, [$c36a]
    or $10
    ld [$c36a], a
    ld a, $01
    ld [$c663], a
    jr jr_001_4297

    ld a, [$c36a]
    or $02
    ld [$c36a], a
    jr jr_001_4297

jr_001_42b9:
    inc b
    ld a, b
    bit 1, a
    jr z, jr_001_4297

    ld a, [$c36a]
    or $04
    ld [$c36a], a
    jr jr_001_4297

Call_001_42c9:
    ld a, [$c36c]
    sub $02
    jr z, jr_001_42e8

    dec a
    jr z, jr_001_430a

    ret


Call_001_42d4:
    ld a, [$c203]
    sub $05
    and $0f
    ld c, a
    ld a, [$c206]
    add $07
    and $0f
    ld e, a
    xor $0f
    ld b, a
    ret


jr_001_42e8:
    call Call_001_42d4
    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_42f7

    inc c
    ld a, b
    sub c
    ret nc

    dec c

jr_001_42f7:
    ld a, [$c36a]
    or $21
    ld [$c36a], a
    push bc
    call Call_001_4265
    pop bc
    inc b
    ld c, b
    jp Jump_001_4769


    ret


jr_001_430a:
    call Call_001_42d4
    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_4317

    ld a, e
    sub c
    ret nc

jr_001_4317:
    ld a, [$c36a]
    or $09
    ld [$c36a], a
    push de
    call Call_001_4265
    pop de
    inc e
    ld c, e
    jp Jump_001_4769


    ret


Call_001_432a:
    ld a, [$c36c]
    sub $02
    jr z, jr_001_4335

    dec a
    jr z, jr_001_4346

    ret


jr_001_4335:
    ld a, [$c36a]
    or $21
    ld [$c36a], a
    ld a, [$c206]
    add $07
    and $0f
    ld c, a
    ret


jr_001_4346:
    ld a, [$c36a]
    or $09
    ld [$c36a], a
    ld a, [$c206]
    add $07
    cpl
    and $0f
    ld c, a
    ret


Call_001_4358:
    ld a, b
    sub $06
    and $f0
    ld [$c373], a
    ld a, b
    sub $05
    and $f0
    ld [$c374], a
    ld a, b
    sub $16
    and $f0
    ld [$c371], a
    ld a, b
    sub $17
    and $f0
    ld [$c372], a
    ld a, b
    sub $0e
    and $f0
    ld [$c376], a
    ld a, [$c206]
    dec a
    ld [$c36f], a
    dec a
    ld [$c370], a
    sub $07
    ld [$c375], a
    sub $07
    ld [$c36d], a
    inc a
    ld [$c36e], a
    ret


Call_001_439a:
    ld a, [$c27b]
    bit 1, a
    ret z

    ld a, [$c27c]
    and a
    jr z, jr_001_43a9

    bit 1, a
    ret z

jr_001_43a9:
    ld b, $00
    ld d, b
    ld hl, $c100
    ld a, [$c371]
    ld e, a
    add hl, de
    push hl
    ld a, [$c36e]
    inc a
    call Call_001_4270
    pop hl
    call Call_001_43e2
    bit 0, b
    jr nz, jr_001_43d1

    ld a, [$c370]
    dec a
    call Call_001_4270
    call Call_001_43e2
    bit 0, b
    ret z

jr_001_43d1:
    xor a
    ld [$c27b], a
    ld a, [$c203]
    add $05
    cpl
    inc a
    and $0f
    ld c, a
    jp Jump_001_4769


Call_001_43e2:
    ld a, [$c36c]
    cp $01
    jr z, jr_001_4405

    cp $09
    jr z, jr_001_4405

    cp $0a
    jr z, jr_001_4405

    cp $0d
    jr z, jr_001_4405

    cp $07
    ret nz

    ld a, [$c36a]
    or $10
    ld [$c36a], a
    ld a, $01
    ld [$c663], a

jr_001_4405:
    inc b
    ret


Call_001_4407:
    ld b, $00
    ld h, $c1
    ld d, h
    ld a, [$c203]
    sub $07
    and $f0
    ld l, a
    ld e, a
    ld a, [$c370]
    and $f0
    swap a
    add l
    ld l, a
    ld a, [hl]
    ld c, $01
    cp $07
    jr z, jr_001_443e

    inc c
    cp $0b
    jr z, jr_001_443e

    ld a, [$c36e]
    and $f0
    swap a
    add e
    ld e, a
    ld a, [de]
    ld c, $02
    cp $0b
    jr z, jr_001_443e

    dec c
    cp $07
    ret nz

jr_001_443e:
    ld a, [$c36a]
    or $11
    ld [$c36a], a
    ld a, c
    ld [$c663], a
    ld a, [$c203]
    sub $07
    and $0f
    ld c, a
    jp Jump_001_4711


Call_001_4455:
    ld a, [$c200]
    res 7, a
    ld [$c200], a
    xor a
    ld [$c668], a
    ld a, [$c203]
    sub $09
    and $f0
    ld b, a
    ld a, [$c375]
    and $f0
    swap a
    add b
    ld h, $c1
    ld l, a
    ld a, [hl]
    cp $08
    jr nz, jr_001_447e

    ld [$c668], a
    jr jr_001_4481

jr_001_447e:
    cp $0c
    ret nz

jr_001_4481:
    ld a, [$c200]
    set 7, a
    ld [$c200], a
    ret


Call_001_448a:
    xor a
    ld [$c36b], a
    ld a, [$c376]
    ld l, a
    ld a, [$c375]
    and $f0
    swap a
    add l
    ld h, $c1
    ld l, a
    ld a, [hl]
    cp $0e
    jr nz, jr_001_44ba

    ld a, [$c36a]
    or $22
    ld [$c36a], a
    ld a, $01
    ld [$c36b], a
    ld a, [$df02]
    cp $02
    ret nz

    ld b, $03
    jp Jump_000_2039


jr_001_44ba:
    cp $0f
    jr nz, jr_001_44d6

    ld a, [$c36a]
    or $0a
    ld [$c36a], a
    ld a, $02
    ld [$c36b], a
    ld a, [$df02]
    cp $02
    ret nz

    ld b, $03
    jp Jump_000_2039


jr_001_44d6:
    ld a, [$df02]
    cp $02
    ret nz

    jp Jump_000_2034


    call Call_001_4b62
    call Call_001_44f4
    call Call_001_4c77
    call Call_001_478e
    call Call_001_48b5
    call Call_001_6e04
    jp Jump_001_4000


Call_001_44f4:
    ld a, [$c20b]
    rlca
    ret c

    ld a, [$c36a]
    and $41
    jr z, jr_001_450d

    ld a, [$c4ac]
    and a
    jr z, jr_001_450d

    xor a
    ld [$c4ac], a
    ld a, $35
    rst RST_28

jr_001_450d:
    ld a, [$c27b]
    bit 3, a
    jp nz, Jump_001_4aff

    bit 1, a
    jp nz, Jump_001_45ab

    ld a, [$c36a]
    rrca
    jp nc, Jump_001_4560

    ld a, [$c262]
    rrca
    jp c, Jump_001_4560

    ld a, [$c27b]
    bit 2, a
    ret nz

    ld a, [$c27b]
    bit 0, a
    jp c, Jump_001_454e

    ld a, [$c261]
    and $30
    jp nz, Jump_001_4549

    xor a
    ld [$c27b], a
    inc a
    ld [$c274], a
    jp Jump_001_4632


Jump_001_4549:
    ld a, $01
    ld [$c27b], a

Jump_001_454e:
    inc a
    ld [$c274], a
    ld a, [$c261]
    and $30
    jr nz, jr_001_455d

    xor a
    ld [$c27b], a

jr_001_455d:
    jp Jump_001_4632


Jump_001_4560:
    ld a, $01
    ld [$c4ac], a
    ld a, [$df0f]
    ld [$c27d], a
    ld a, [$c668]
    and a
    jr z, jr_001_4576

    ld a, $02
    ld [$c27d], a

jr_001_4576:
    ld a, [$df10]
    ld [$c27e], a
    ld a, [$df11]
    dec a
    ld [$df12], a
    xor a
    ld [$c27f], a
    ld [$c278], a
    ld [$c27c], a
    ld a, $02
    ld [$c27b], a
    ld a, [$c262]
    rrca
    jr c, jr_001_45ab

    xor a
    ld [$c27d], a
    ld a, $80
    ld [$c27e], a
    ld a, $04
    ld [$c27c], a
    call Call_001_471d
    jr jr_001_45c1

Jump_001_45ab:
jr_001_45ab:
    ld a, [$c27c]
    rrca
    jr c, jr_001_45d7

    rrca
    jr c, jr_001_45f2

    rrca
    jp c, Jump_001_461f

    ld a, [$c261]
    rrca
    jr nc, jr_001_45c9

    call Call_001_46e2

Jump_001_45c1:
jr_001_45c1:
    ld a, $04
    ld [$c274], a
    jp Jump_001_4632


jr_001_45c9:
    ld a, $01
    ld [$c27c], a
    xor a
    ld [$c27d], a
    ld a, $80
    ld [$c27e], a

jr_001_45d7:
    ld a, [$c262]
    rrca
    jr c, jr_001_45e2

    call Call_001_471d
    jr jr_001_45c1

jr_001_45e2:
    ld a, $02
    ld [$c275], a
    ld a, $80
    ld [$c27e], a
    xor a
    ld [$c27d], a
    jr jr_001_45f9

jr_001_45f2:
    ld a, [$c262]
    bit 0, a
    jr nz, jr_001_4618

jr_001_45f9:
    ld a, $02
    ld [$c27c], a
    ld a, [$df12]
    and a
    jr z, jr_001_4627

    call Call_001_4775
    ld a, $80
    ld [$c27e], a
    xor a
    ld [$c27d], a
    ld a, $06
    ld [$c274], a
    jp Jump_001_4632


jr_001_4618:
    ld a, $04
    ld [$c27c], a
    jr jr_001_4627

Jump_001_461f:
    ld a, [$c262]
    rrca
    jr nc, jr_001_462c

    jr jr_001_45f9

jr_001_4627:
    ld a, $04
    ld [$c27c], a

jr_001_462c:
    call Call_001_471d
    jp Jump_001_45c1


Jump_001_4632:
    ld c, $c0
    ld a, [$c36a]
    ld b, a
    and $28
    jr z, jr_001_4644

    ld c, $80
    bit 1, b
    jr z, jr_001_4644

    jr jr_001_46a7

jr_001_4644:
    xor a
    ld [$c3c4], a
    ld a, [$c261]
    bit 4, a
    jr z, jr_001_4679

    ld a, [$c36a]
    bit 3, a
    jr z, jr_001_4658

    ld c, $c0

jr_001_4658:
    ld hl, $c200
    set 5, [hl]
    ld a, [$c280]
    add c
    ld [$c280], a
    ret nc

    ld c, $01

Call_001_4667:
Jump_001_4667:
    ld hl, $c212
    ld a, [hl]
    cp $98
    ret z

    ld l, $06
    ld a, [hl]
    add c
    ld [hl+], a
    jr nc, jr_001_4676

    inc [hl]

jr_001_4676:
    jp Jump_001_4b95


jr_001_4679:
    bit 5, a
    ret z

    ld a, [$c36a]
    bit 5, a
    jr z, jr_001_4685

    ld c, $c0

jr_001_4685:
    ld hl, $c200
    res 5, [hl]
    ld a, [$c280]
    add c
    ld [$c280], a
    ret nc

    ld c, $01

Call_001_4694:
Jump_001_4694:
jr_001_4694:
    ld hl, $c212
    ld a, [hl]
    cp $18
    ret z

    ld l, $06
    ld a, [hl]
    sub c
    ld [hl+], a
    jr nc, jr_001_46a3

    dec [hl]

jr_001_46a3:
    jp Jump_001_4bd0


    ret


jr_001_46a7:
    ld a, [$c261]
    bit 4, a
    jr z, jr_001_46bb

    ld c, $ff
    ld a, [$c36a]
    bit 5, a
    jr z, jr_001_4658

    ld c, $80
    jr jr_001_4658

jr_001_46bb:
    bit 5, a
    jr z, jr_001_46cc

    ld c, $ff
    ld a, [$c36a]
    bit 3, a
    jr z, jr_001_4685

    ld c, $80
    jr jr_001_4685

jr_001_46cc:
    ld a, [$c280]
    sub $40
    ld [$c280], a
    ret nc

    ld c, $01
    ld a, [$c36a]
    bit 5, a
    jr nz, jr_001_4694

    jp Jump_001_4667


    ret


Call_001_46e2:
    ld hl, $c27f
    ld a, [hl]
    add $40
    ld [hl-], a
    jr nz, jr_001_46fe

    ld a, [hl]
    xor $80
    ld [hl], a
    jr z, jr_001_46fe

    dec l
    dec [hl]
    ld a, [hl+]
    inc a
    jr nz, jr_001_46fe

    ld [hl-], a
    inc a
    ld [hl], a
    ld [$c27c], a
    ret


jr_001_46fe:
    ld a, [hl-]
    and a
    jr z, jr_001_4710

    ld c, a
    ld a, [$c278]
    add c
    ld [$c278], a
    jr nz, jr_001_4710

    ld c, [hl]
    inc c
    jr jr_001_4711

jr_001_4710:
    ld c, [hl]

Call_001_4711:
Jump_001_4711:
jr_001_4711:
    ld hl, $c203
    ld a, [hl]
    sub c
    ld [hl+], a
    jr nc, jr_001_471a

    dec [hl]

jr_001_471a:
    jp Jump_001_4c42


Call_001_471d:
    ld hl, $c27f
    ld a, [hl]
    add $10
    ld [hl-], a
    jr nz, jr_001_473a

    ld a, [hl]
    add $80
    ld [hl], a
    jr nz, jr_001_473a

    dec l
    inc [hl]
    ld a, [hl+]
    cp $03
    jr nz, jr_001_473a

    dec l
    ld a, $02
    ld [hl+], a
    ld a, $80
    ld [hl], a

jr_001_473a:
    ld a, [hl-]
    and a
    jr z, jr_001_474d

    ld c, a
    ld a, [$c278]
    add c
    ld [$c278], a
    jr nz, jr_001_474d

    ld a, [hl]
    ld c, a
    inc c
    jr jr_001_474f

jr_001_474d:
    ld a, [hl]
    ld c, a

jr_001_474f:
    ld a, [$c36a]
    bit 0, a
    jr z, jr_001_4769

    xor a
    ld [$c27b], a
    ret


    ld a, [$c36a]
    bit 0, a
    jr z, jr_001_4767

    xor a
    ld [$c27b], a
    ret


jr_001_4767:
    ld c, $01

Call_001_4769:
Jump_001_4769:
jr_001_4769:
    ld hl, $c203
    ld a, [hl]
    add c
    ld [hl+], a
    jr nc, jr_001_4772

    inc [hl]

jr_001_4772:
    jp Jump_001_4c03


Call_001_4775:
    ld a, [$c36a]
    rrca
    jr nc, jr_001_4780

    xor a
    ld [$c27b], a
    ret


jr_001_4780:
    ld a, [$df13]
    cp $03
    ret z

    ld a, [$df12]
    dec a
    ld [$df12], a
    ret


Call_001_478e:
    ld a, [$c262]
    bit 1, a
    jp z, Jump_001_4867

    ld hl, $c300
    ld a, [$c29e]
    ld b, a

jr_001_479d:
    ld a, [hl]
    rrca
    jr nc, jr_001_47a8

    inc h
    dec b
    jr nz, jr_001_479d

    jp Jump_001_4867


jr_001_47a8:
    ld a, [$df38]
    add $15
    rst RST_28
    ld a, [$c27b]
    or $04
    ld [$c27b], a
    ld a, $10
    ld [$c28e], a
    ld de, $c200
    ld a, [de]
    and $a1
    ld [hl+], a
    ld a, [$c27b]
    bit 3, a
    jr nz, jr_001_47d3

    bit 1, a
    jr nz, jr_001_47e0

    bit 4, a
    jr nz, jr_001_4800

    jr jr_001_480d

jr_001_47d3:
    ld c, $09
    ld b, $04
    ld a, [de]
    bit 5, a
    jr nz, jr_001_482e

    ld b, $0c
    jr jr_001_482e

jr_001_47e0:
    ld c, $07
    ld a, [$c27c]
    bit 1, a
    jr nz, jr_001_47eb

    ld c, $05

jr_001_47eb:
    ld b, $0c
    bit 5, a
    jr nz, jr_001_482e

    ld b, $04
    bit 4, a
    jr nz, jr_001_482e

    ld a, [de]
    bit 5, a
    jr nz, jr_001_482e

    ld b, $0c
    jr jr_001_482e

jr_001_4800:
    ld b, $04
    ld c, $0b
    ld a, [de]
    bit 5, a
    jr nz, jr_001_482e

    ld b, $0c
    jr jr_001_482e

jr_001_480d:
    ld c, $03
    ld b, $0c
    bit 5, a
    jr nz, jr_001_482a

    ld b, $04
    bit 4, a
    jr nz, jr_001_4824

    ld a, [de]
    bit 5, a
    jr nz, jr_001_482e

    ld b, $0c
    jr jr_001_482e

jr_001_4824:
    ld a, [de]
    set 5, a
    ld [de], a
    jr jr_001_482e

jr_001_482a:
    ld a, [de]
    res 5, a
    ld [de], a

jr_001_482e:
    ld a, c
    ld [$c274], a
    ld [$c275], a
    ld a, [$c29f]
    or b
    ld [hl+], a
    ld b, a
    inc l
    ld e, l
    ld a, [$c27b]
    bit 4, a
    jr z, jr_001_4850

    ld a, [de]
    add $08
    ld [hl+], a
    jr nc, jr_001_4852

    inc e
    ld a, [de]
    inc a
    ld [hl+], a
    jr jr_001_4855

jr_001_4850:
    ld a, [de]
    ld [hl+], a

jr_001_4852:
    inc e
    ld a, [de]
    ld [hl+], a

jr_001_4855:
    inc l
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld l, $09
    ld a, [$df38]
    ld [hl], a
    ld l, $0c
    xor a
    ld [hl], a
    ret


Jump_001_4867:
    ld a, [$c27b]
    bit 2, a
    ret z

    ld a, [$c28e]
    and a
    jr nz, jr_001_487c

    ld a, [$c27b]
    and $fb
    ld [$c27b], a
    ret


jr_001_487c:
    dec a
    ld [$c28e], a
    ld a, [$c275]
    ld [$c274], a
    ld a, [$c27b]
    and $18
    ret nz

    ld hl, $c200
    ld a, [$c261]
    bit 4, a
    jr z, jr_001_4899

    set 5, [hl]
    ret


jr_001_4899:
    bit 5, a
    ret z

    res 5, [hl]
    ret


Call_001_489f:
    ld e, $03
    ld a, [de]
    sub $10
    and $f0
    ld l, a
    ld e, $06
    ld a, [de]
    sub $08
    and $f0
    swap a
    add l
    ld l, a
    ld h, $c1
    ret


Call_001_48b5:
    ld a, [$c29e]
    dec a
    ld [$c7ca], a
    xor a
    ld [$c291], a

jr_001_48c0:
    ld a, [$c7ca]
    ld de, $c300
    add d
    ld d, a
    ld a, [de]
    bit 0, a
    jr z, @+$14

    ld bc, $48df
    push bc
    ld e, $09
    ld a, [de]
    call Call_000_0b7d
    ld [$ea48], a
    ld c, b
    db $f4
    ld c, b
    ld [$fa48], a
    jp z, Jump_000_3dc7

    ld [$c7ca], a
    inc a
    jr nz, jr_001_48c0

    ret


    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    ld [bc], a
    ld c, c
    rra
    ld c, c
    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    ld [bc], a
    ld c, c
    adc e
    ld c, c
    push hl
    ld c, c
    ei
    ld c, c
    call $4a6a
    ld e, $0e
    ld hl, $4a66
    ld a, [$df38]
    call Call_000_0071
    ld a, [hl]
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld [$c291], a
    ret


    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_4983

    call Call_001_489f
    ld a, [hl]
    and a
    jr z, jr_001_4962

    cp $02
    jr z, jr_001_4962

    cp $03
    jr z, jr_001_4962

    cp $04
    jr z, jr_001_4962

    cp $08
    jr z, jr_001_4962

    cp $0e
    jr z, jr_001_4962

    cp $0f
    jr z, jr_001_4962

    cp $0d
    jr z, jr_001_496a

    ld e, $12
    ld a, [de]
    cp $58
    jr nc, jr_001_4959

    ld a, [$df38]
    rlca
    add $19
    rst RST_28
    jr jr_001_4983

jr_001_4959:
    ld a, [$df38]
    rlca
    add $1a
    rst RST_28
    jr jr_001_4983

jr_001_4962:
    ld a, $01
    ld [$c291], a
    jp Jump_001_4a93


jr_001_496a:
    ld a, [$df38]
    cp $01
    jr nz, jr_001_4983

    xor a
    ld [hl], a
    ld c, l
    call Call_001_4c88
    ld b, $25
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_4981

    inc b

jr_001_4981:
    ld a, b
    rst RST_28

jr_001_4983:
    xor a
    ld e, $00
    ld [de], a
    ld e, $11
    ld [de], a
    ret


    call Call_001_4a93
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_49d7

    call Call_001_489f
    ld a, [hl]
    and a
    jr z, jr_001_49ba

    cp $02
    jr z, jr_001_49ba

    cp $03
    jr z, jr_001_49ba

    cp $04
    jr z, jr_001_49ba

    cp $08
    jr z, jr_001_49ba

    cp $0e
    jr z, jr_001_49ba

    cp $0f
    jr z, jr_001_49ba

    cp $07
    jr z, jr_001_49df

    jr jr_001_49c0

jr_001_49ba:
    ld a, $01
    ld [$c291], a
    ret


jr_001_49c0:
    ld e, $12
    ld a, [de]
    cp $58
    jr nc, jr_001_49d0

    ld a, [$df38]
    rlca
    add $19
    rst RST_28
    jr jr_001_49d7

jr_001_49d0:
    ld a, [$df38]
    rlca
    add $1a
    rst RST_28

jr_001_49d7:
    xor a
    ld e, $00
    ld [de], a
    ld e, $11
    ld [de], a
    ret


jr_001_49df:
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


    ld e, $0c
    ld a, $03
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld a, $14
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    inc a
    ld [$c291], a
    ret


    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_49d7

    ld e, $0d
    ld a, [de]
    inc a
    ld [de], a
    cp $80
    jr z, jr_001_4a28

    ld a, $01
    ld [$c291], a
    ld hl, $140c
    call Call_001_7b4b
    ret nc

    ld a, [$c27b]
    bit 3, a
    ret nz

    ld a, $08
    ld [$c27b], a
    xor a
    ld [$c2a2], a
    jr jr_001_4a3d

jr_001_4a28:
    ld hl, $140e
    call Call_001_7b4b
    jr nc, jr_001_49d7

    ld a, [$c27b]
    bit 3, a
    jr z, jr_001_49d7

    xor a
    ld [$c27b], a
    jr jr_001_49d7

Call_001_4a3d:
jr_001_4a3d:
    ld bc, $00f3
    ld hl, $c212
    ld e, l
    ld a, [de]
    sub [hl]
    jr nc, jr_001_4a4b

    ld bc, $200d

jr_001_4a4b:
    ld l, $00
    ld a, [hl]
    and $0f
    or b
    ld [hl], a
    ld e, $06
    ld l, e
    ld a, [de]
    add c
    sub [hl]
    bit 7, a
    jr nz, jr_001_4a60

    ld c, a
    jp Jump_001_4667


jr_001_4a60:
    cpl
    inc a
    ld c, a
    jp Jump_001_4694


    db $10
    dec d
    ld de, $1e16
    ld bc, $471a
    and $70
    swap a
    ld hl, $c220
    add h
    ld h, a
    ld a, b
    and $0f
    rlca
    rlca
    add l
    ld l, a
    ld e, $14
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    xor a
    ld e, $02
    ld [de], a
    ld e, $05
    ld [de], a
    ret


Call_001_4a93:
Jump_001_4a93:
    ld h, d
    ld l, $01
    ld e, $14
    ld a, [hl+]
    and $0f
    cp $04
    jr c, jr_001_4aa9

    cp $08
    jr c, jr_001_4aae

    cp $0c
    jr c, jr_001_4ab3

    jr jr_001_4ab8

jr_001_4aa9:
    call Call_001_4abd
    jr jr_001_4aef

jr_001_4aae:
    call Call_001_4ace
    jr jr_001_4aef

jr_001_4ab3:
    call Call_001_4ace
    jr jr_001_4adf

jr_001_4ab8:
    call Call_001_4abd
    jr jr_001_4adf

Call_001_4abd:
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    sbc c
    ld [hl+], a
    jr nc, jr_001_4acc

    dec [hl]

jr_001_4acc:
    inc l
    ret


Call_001_4ace:
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    adc c
    ld [hl+], a
    jr nc, jr_001_4add

    inc [hl]

jr_001_4add:
    inc l
    ret


jr_001_4adf:
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    sbc c
    ld [hl+], a
    jr nc, jr_001_4aee

    dec [hl]

jr_001_4aee:
    ret


jr_001_4aef:
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [de]
    inc e
    ld c, a
    ld a, [hl]
    adc c
    ld [hl+], a
    jr nc, jr_001_4afe

    inc [hl]

jr_001_4afe:
    ret


Jump_001_4aff:
    ld a, [$c27b]
    bit 2, a
    ret nz

    ld a, [$c262]
    bit 0, a
    jr z, jr_001_4b55

    xor a
    ld [$c27b], a
    ld a, [$c200]
    bit 5, a
    jr z, jr_001_4b36

    ld a, [$c36a]
    or $01
    ld [$c36a], a
    ld a, [$c261]
    bit 4, a
    jr nz, jr_001_4b33

    ld a, $08
    ld [$c2a3], a
    ld a, $02
    ld [$c2a2], a
    call Call_001_4b62

jr_001_4b33:
    jp Jump_001_4560


jr_001_4b36:
    ld a, [$c36a]
    or $01
    ld [$c36a], a
    ld a, [$c261]
    bit 5, a
    jr nz, jr_001_4b52

    ld a, $08
    ld [$c2a3], a
    ld a, $01
    ld [$c2a2], a
    call Call_001_4b62

jr_001_4b52:
    jp Jump_001_4560


jr_001_4b55:
    ld a, [$df11]
    dec a
    ld [$df12], a
    ld a, $08
    ld [$c274], a
    ret


Call_001_4b62:
    ld b, $21
    ld a, [$c2a2]
    bit 0, a
    jr nz, jr_001_4b72

    ld b, $11
    bit 1, a
    jr nz, jr_001_4b72

    ret


jr_001_4b72:
    ld a, [$c2a3]
    and a
    ret z

    dec a
    ld [$c2a3], a
    ld a, b
    ld [$c261], a
    ret


    ld a, $10
    ld [$c27b], a
    ld a, $0a
    ld [$c274], a
    ld a, [$c261]
    and $cf
    ld [$c261], a
    jp Jump_001_4632


Jump_001_4b95:
    ld a, [$c364]
    ld b, a
    ld a, [$c206]
    sub b
    ld b, a
    ld a, [$c273]
    sub b
    ret nc

    ld a, [$c364]
    add c
    ld [$c364], a
    jr nc, jr_001_4bb4

    ld a, [$c365]
    inc a
    ld [$c365], a
    ret


jr_001_4bb4:
    ld a, [$df06]
    bit 1, a
    jr nz, jr_001_4bc4

    ld a, [$c3a4]
    ld c, a
    ld a, [$c365]
    sub c
    ret nz

jr_001_4bc4:
    ld a, [$c364]
    cp $61
    ret c

    ld a, $60
    ld [$c364], a
    ret


Jump_001_4bd0:
    ld a, [$c364]
    ld b, a
    ld a, [$c206]
    sub b
    ld b, a
    ld a, [$c273]
    sub b
    ret c

    ld a, [$c364]
    sub c
    ld [$c364], a
    ret nc

    ld a, [$df06]
    bit 1, a
    jr nz, jr_001_4bf3

    ld a, [$c365]
    and a
    jr nz, jr_001_4bf8

jr_001_4bf3:
    xor a
    ld [$c364], a
    ret


jr_001_4bf8:
    dec a
    ld [$c365], a
    ret


    ld a, $ff
    ld [$c364], a
    ret


Jump_001_4c03:
    ld a, [$c362]
    ld b, a
    ld a, [$c203]
    sub b
    ld b, a
    ld a, [$c272]
    sub b
    ret nc

    xor $ff
    inc a
    ld c, a
    ld a, [$c362]
    add c
    ld [$c362], a
    jr nc, jr_001_4c26

    ld a, [$c363]
    inc a
    ld [$c363], a
    ret


jr_001_4c26:
    ld a, [$df06]
    bit 1, a
    jr nz, jr_001_4c36

    ld a, [$c3a5]
    ld c, a
    ld a, [$c363]
    sub c
    ret nz

jr_001_4c36:
    ld a, [$c362]
    cp $81
    ret c

    ld a, $80
    ld [$c362], a
    ret


Jump_001_4c42:
    ld a, [$c362]
    ld b, a
    ld a, [$c203]
    sub b
    ld b, a
    ld a, [$c272]
    sub b
    ret c

    ld c, a
    ld a, [$c362]
    sub c
    ld [$c362], a
    ret nc

    ld a, [$df06]
    bit 1, a
    jr nz, jr_001_4c67

    ld a, [$c363]
    and a
    jp nz, Jump_001_4c6c

jr_001_4c67:
    xor a
    ld [$c362], a
    ret


Jump_001_4c6c:
    dec a
    ld [$c363], a
    ret


    ld a, $ff
    ld [$c362], a
    ret


Call_001_4c77:
    ld a, [$c36a]
    bit 2, a
    ret z

    ld a, [$c26a]
    and $01
    ret nz

    ld c, $01
    jp Jump_001_4769


Call_001_4c88:
    xor a
    ld [$c7c4], a
    ld [$c7ca], a
    push bc
    call Call_001_4d5d
    pop bc
    ld e, $00
    ld a, [de]
    xor $20
    and $f0
    or $01
    ld [hl], a
    ld e, $03
    ld l, e
    ld a, [de]
    and $f0
    or $08
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld e, $06
    ld l, e
    ld a, [de]
    and $f0
    or $08
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld l, $09
    ld a, $0f
    ld [hl], a
    ld l, $0b
    ld a, $10
    ld [hl+], a
    xor a
    ld [hl], a
    push de
    ld d, $00
    ld a, c
    and $0f
    ld e, a
    ld a, c
    and $f0
    sla a
    rl d
    sla a
    rl d
    sla e
    add e
    ld [$c687], a
    ld a, d
    add $98
    ld [$c688], a
    ld a, [$df02]
    ld hl, $4cef
    call Call_000_0071
    ld a, [hl]
    ld [$c689], a
    pop de
    ret


    nop
    nop
    jr c, @+$2a

    ld e, h
    db $10
    call Call_001_4e20
    ld a, [$c3a5]
    ld c, a
    ld a, [$c3a4]
    sub c
    jp c, Jump_001_4db1

    ld a, [$c261]
    bit 4, a
    jr nz, jr_001_4d1c

    bit 5, a
    ret z

    ld a, [$c365]
    ld c, a
    ld a, [$c364]
    sub $14
    ld b, a
    jr nc, jr_001_4d29

    dec c
    jr jr_001_4d29

jr_001_4d1c:
    ld a, [$c365]
    ld c, a
    ld a, [$c364]
    add $b7
    ld b, a
    jr nc, jr_001_4d29

    inc c

jr_001_4d29:
    xor a
    ld [$c7c4], a
    ld de, $ca20

jr_001_4d30:
    push de
    ld a, [de]
    cp $ff
    jr z, jr_001_4d5b

    bit 0, a
    jr nz, jr_001_4d57

    ld d, $ce
    ld a, [de]
    sub b
    jr nz, jr_001_4d57

    inc d
    ld a, [de]
    sub c
    jr nz, jr_001_4d57

    push bc
    call Call_001_4d5d
    pop bc
    cp $ff
    jr z, jr_001_4d5b

    ld [$c7c4], a
    pop de
    call Call_001_4d74
    jr jr_001_4d58

jr_001_4d57:
    pop de

jr_001_4d58:
    inc e
    jr jr_001_4d30

jr_001_4d5b:
    pop de
    ret


Call_001_4d5d:
    ld a, [$c7c4]
    push af
    ld hl, $c700
    add h
    ld h, a
    pop af

jr_001_4d67:
    ld b, [hl]
    bit 0, b
    ret z

    inc h
    inc a
    cp $12
    jr nz, jr_001_4d67

    ld a, $ff
    ret


Call_001_4d74:
    push de
    ld a, [de]
    or $01
    ld [de], a
    ld a, [de]
    inc d
    ld [hl+], a
    ld a, [de]
    inc d
    ld [hl+], a
    inc l
    ld a, [de]
    inc d
    ld [hl+], a
    ld a, [de]
    inc d
    ld [hl+], a
    inc l
    ld a, [de]
    inc d
    ld [hl+], a
    ld a, [$df02]
    cp $05
    jr nz, jr_001_4d9b

    inc d
    ld a, [$c7cc]
    and $fe
    add c
    ld [hl+], a
    jr jr_001_4d9e

jr_001_4d9b:
    ld a, [de]
    inc d
    ld [hl+], a

jr_001_4d9e:
    ld a, [de]
    inc d
    ld [hl+], a
    ld a, [de]
    inc d
    ld [hl+], a
    ld a, [de]
    inc d
    ld [hl+], a
    ld a, [de]
    inc d
    ld [hl+], a
    xor a
    ld [hl], a
    ld l, $13
    ld [hl], a
    pop de
    ret


Jump_001_4db1:
    ld a, [$c367]
    ld c, a
    ld a, [$c362]
    ld b, a
    sub c
    ret z

    jr c, jr_001_4dc2

    rlca
    jr c, jr_001_4dc7

    jr jr_001_4dd6

jr_001_4dc2:
    ld a, c
    sub b
    rlca
    jr c, jr_001_4dd6

jr_001_4dc7:
    ld a, [$c363]
    ld c, a
    ld a, [$c362]
    sub $18
    ld b, a
    jr nc, jr_001_4de3

    dec c
    jr jr_001_4de3

jr_001_4dd6:
    ld a, [$c363]
    ld c, a
    ld a, [$c362]
    add $b0
    ld b, a
    jr nc, jr_001_4de3

    inc c

jr_001_4de3:
    xor a
    ld [$c7c4], a
    ld de, $ca20

jr_001_4dea:
    push de
    ld a, [de]
    cp $ff
    jr z, jr_001_4e1e

    bit 0, a
    jr nz, jr_001_4e1a

    ld d, $cc
    ld a, [de]
    sub b
    jr z, jr_001_4e03

    dec a
    jr z, jr_001_4e03

    dec a
    jr z, jr_001_4e03

    dec a
    jr nz, jr_001_4e1a

jr_001_4e03:
    inc d
    ld a, [de]
    sub c
    jr nz, jr_001_4e1a

    push bc
    call Call_001_4d5d
    pop bc
    cp $ff
    jr z, jr_001_4e1e

    ld [$c7c4], a
    pop de
    call Call_001_4d74
    jr jr_001_4e1b

jr_001_4e1a:
    pop de

jr_001_4e1b:
    inc e
    jr jr_001_4dea

jr_001_4e1e:
    pop de
    ret


Call_001_4e20:
    ld a, [$c3a5]
    ld c, a
    ld a, [$c3a4]
    sub c
    jp c, Jump_001_4e8c

    ld a, [$c364]
    ld b, a
    ld a, [$c365]
    ld c, a
    ld a, [$df02]
    cp $05
    jr nz, jr_001_4e3e

    ld a, [$c7cc]
    ld c, a

jr_001_4e3e:
    push bc
    call Call_001_4e4c
    pop bc
    ld a, b
    sub $20
    ld b, a
    jr nc, jr_001_4e53

    dec c
    jr jr_001_4e53

Call_001_4e4c:
    ld a, b
    add $c0
    ld b, a
    jr nc, jr_001_4e53

    inc c

jr_001_4e53:
    ld hl, $c700
    ld d, $10

jr_001_4e58:
    ld l, $00
    ld a, [hl]
    bit 0, a
    jr z, jr_001_4e87

    bit 1, a
    jr nz, jr_001_4e87

    ld l, $06
    ld a, [hl]
    sub b
    jr z, jr_001_4e6c

    dec a
    jr nz, jr_001_4e87

jr_001_4e6c:
    ld l, $07
    ld a, [hl]
    sub c
    jr z, jr_001_4e75

    dec a
    jr nz, jr_001_4e87

jr_001_4e75:
    ld l, $00
    xor a
    ld [hl], a
    push de
    ld de, $ca20
    ld l, $08
    ld a, [hl]
    add e
    ld e, a
    ld a, [de]
    res 0, a
    ld [de], a
    pop de

jr_001_4e87:
    inc h
    dec d
    jr nz, jr_001_4e58

    ret


Jump_001_4e8c:
    ld a, [$c362]
    ld b, a
    ld a, [$c363]
    ld c, a
    push bc
    call Call_001_4ea2
    pop bc
    ld a, b
    sub $28
    ld b, a
    jr nc, jr_001_4ea9

    dec c
    jr jr_001_4ea9

Call_001_4ea2:
    ld a, b
    add $c0
    ld b, a
    jr nc, jr_001_4ea9

    inc c

jr_001_4ea9:
    ld hl, $c700
    ld d, $10

jr_001_4eae:
    ld l, $00
    ld a, [hl]
    bit 0, a
    jr z, jr_001_4ee3

    bit 1, a
    jr nz, jr_001_4ee3

    ld l, $03
    ld a, [hl]
    sub b
    jr z, jr_001_4ec8

    dec a
    jr z, jr_001_4ec8

    dec a
    jr z, jr_001_4ec8

    dec a
    jr nz, jr_001_4ee3

jr_001_4ec8:
    ld l, $04
    ld a, [hl]
    sub c
    jr z, jr_001_4ed1

    dec a
    jr nz, jr_001_4ee3

jr_001_4ed1:
    ld l, $00
    xor a
    ld [hl], a
    push de
    ld de, $ca20
    ld l, $08
    ld a, [hl]
    add e
    ld e, a
    ld a, [de]
    res 0, a
    ld [de], a
    pop de

jr_001_4ee3:
    inc h
    dec d
    jr nz, jr_001_4eae

    ret


    ld de, $ca20
    ld h, $c7

jr_001_4eed:
    ld a, [de]
    cp $ff
    ret z

    ld a, [$df01]
    bit 1, a
    jr nz, jr_001_4f1a

    ld d, $d2
    ld a, [de]
    ld d, $ca
    ld b, $da
    ld c, a
    ld a, [bc]
    bit 0, a
    jr nz, jr_001_4f20

    ld a, c
    and a
    jr nz, jr_001_4f1a

    ld d, $d3
    ld a, [de]
    ld d, $ca
    push hl
    ld hl, $df1c
    call Call_000_0071
    ld a, [hl]
    pop hl
    and a
    jr nz, jr_001_4f20

jr_001_4f1a:
    ld l, $00
    call Call_001_4d74
    inc h

jr_001_4f20:
    inc e
    jr jr_001_4eed

    xor a
    ld [$c68d], a
    ld a, [$c26a]
    and $01
    ld [$c692], a

jr_001_4f2f:
    ld de, $c700
    add d
    ld d, a
    ld a, [de]
    bit 0, a
    jr z, jr_001_4f55

    bit 2, a
    jr nz, jr_001_4f55

    ld bc, $4f55
    push bc
    ld e, $09
    ld a, [de]
    ld hl, $4fbf
    call Call_000_0071
    ld c, [hl]
    ld a, [de]
    ld hl, $500f
    call Call_000_0071
    ld h, [hl]
    ld l, c
    jp hl


jr_001_4f55:
    ld a, [$c692]
    inc a
    inc a
    ld [$c692], a
    cp $13
    jr c, jr_001_4f2f

    ld a, [$c27c]
    and a
    jr z, jr_001_4fb7

    ld a, [$c691]
    rrca
    jr nc, jr_001_4f81

    ld hl, $c36a
    set 6, [hl]
    rrca
    jr nc, jr_001_4f81

    ld a, [$c27b]
    or $08
    ld [$c27b], a
    xor a
    ld [$c2a2], a

jr_001_4f81:
    ld a, [$c68d]
    ld b, a
    ld a, [$c26a]
    bit 0, a
    jr nz, jr_001_4f97

    ld a, b
    ld [$c68e], a
    ld a, [$c68f]
    or b
    ret z

    jr jr_001_4fa0

jr_001_4f97:
    ld a, b
    ld [$c68f], a
    ld a, [$c68e]
    or b
    ret z

jr_001_4fa0:
    ld a, [$c27b]
    and $04
    ld [$c27b], a
    ld a, [$c36a]
    or $01
    ld [$c36a], a
    ld hl, $df11
    ld a, [hl+]
    dec a
    ld [hl], a
    ret


jr_001_4fb7:
    ld hl, $c68d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    ld e, a
    ld a, b
    dec a
    dec h
    add h
    sbc b
    ld a, [de]
    call z, $a942
    xor c
    ld c, [hl]
    ldh a, [c]
    ld [hl], l
    cp [hl]
    db $e3
    inc l
    ld a, [bc]
    and [hl]
    rst RST_20
    di
    push bc
    db $e4
    inc bc
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    and l
    cp c
    push de
    ld e, d
    ld e, d
    xor l
    rlca
    sbc a
    or h
    db $e4
    db $e4
    ld h, e
    dec sp
    ld h, [hl]
    ret c

    sbc c
    ret nz

    ld d, b
    adc c
    rla
    ld sp, $2b9f
    add l
    push hl
    db $ec
    ld a, $6e
    jp nc, $9754

    db $ec
    and l
    ld c, [hl]
    ld h, a
    and a
    rst RST_10
    ld d, $9b
    ld e, a
    ld l, a
    ld d, [hl]
    add e
    cp a
    jp nz, $d923

    cp a
    ccf
    ccf
    ccf
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    ld e, c
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    ld e, c
    ld e, c
    ld e, d
    ld e, e
    ld d, h
    ld e, c
    ld e, e
    ld e, c
    ld e, l
    ld e, h
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, d
    ld h, d
    ld h, e
    ld h, h
    ld h, h
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld l, d
    ld l, e
    ld l, e
    ld l, h
    ld l, e
    ld e, [hl]
    ld e, [hl]
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld e, $0c
    ld a, [de]
    and a
    jp nz, Jump_001_4a93

    call $4a6a
    ld e, $0e
    ld a, $0d
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_5096

    dec a
    jr z, jr_001_50db

    call $4a6a
    ld e, $0e
    ld a, $20
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0d
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_5096:
    ld e, $0d
    ld a, [de]
    bit 7, a
    jr nz, jr_001_50c1

    ld b, $04
    ld c, $40
    call Call_000_0bbf
    ld a, [$df0b]
    and $03
    cp $03
    jr nz, jr_001_50b1

    ld b, $06
    ld c, $60

jr_001_50b1:
    ld a, b
    or $80
    ld [de], a
    ld e, $18
    xor a
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    inc e
    ld a, c
    ld [de], a
    jr jr_001_50ca

jr_001_50c1:
    and $07
    ld [de], a
    ld e, $19
    ld [de], a
    dec e
    xor a
    ld [de], a

jr_001_50ca:
    ld e, $00
    ld a, [de]
    xor $20
    ld [de], a
    inc e
    ld a, [de]
    xor $08
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_50db:
    call Call_001_7d61
    ld e, $0d
    ld a, [de]
    bit 4, a
    jr nz, jr_001_50f1

    call Call_001_7aed
    jr nc, jr_001_50f4

    ld e, $0d
    ld a, [de]
    set 4, a
    ld [de], a
    ret


jr_001_50f1:
    call Call_001_7b18

jr_001_50f4:
    ld h, $f8
    ld l, $06
    call Call_001_6dca
    ld a, [$c662]
    ld b, a
    cp $08
    ld e, $00
    ld a, [de]
    jr z, jr_001_510b

    res 7, a
    ld [de], a
    jr jr_001_510e

jr_001_510b:
    set 7, a
    ld [de], a

jr_001_510e:
    ld e, $0d
    ld a, [de]
    bit 4, a
    jr z, jr_001_512a

    ld a, b
    cp $01
    jr nz, jr_001_512a

    ld a, [de]
    res 4, a
    ld [de], a
    ld e, $03
    ld a, [de]
    and $f8
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    ret


jr_001_512a:
    call Call_001_4a93
    ld hl, $100c
    call Call_001_7b4b
    ld bc, $0d0d
    call Call_001_7b88
    ret nc

    jp Jump_001_7bc7


    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    ld c, c
    ld d, c
    ld e, b
    ld d, c
    or l
    ld d, c
    ld e, $0e
    ld a, $13
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_5164

    ld a, [$c27c]
    and a
    ret z

jr_001_5164:
    ld b, $0b
    call Call_000_089a
    ld b, $00
    ld hl, $0410
    call Call_001_7b5a
    push af
    ld b, $0b
    call Call_000_08b6
    pop af
    ret nc

    ld a, [$c688]
    and a
    ret nz

    ld b, $00
    ld e, $03
    ld a, [de]
    sub $10
    and $f0
    sla a
    rl b
    sla a
    rl b
    ld c, a
    ld e, $06
    ld a, [de]
    sub $10
    and $f0
    swap a
    rlca
    add c
    ld [$c687], a
    ld a, b
    add $98
    ld [$c688], a
    xor a
    ld [$c689], a
    ld [hl], a
    ld e, $00
    ld a, [de]
    res 4, a
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


    ld a, [$c200]
    rrca
    jr nc, jr_001_5204

    ld e, $1a
    ld a, [de]
    and a
    jr nz, jr_001_51c8

    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_5204

jr_001_51c8:
    ld a, [$c27c]
    and a
    jr z, jr_001_5204

    ld b, $0b
    call Call_000_089a
    ld b, $00
    ld hl, $0610
    call Call_001_7b5a
    push af
    ld b, $0b
    call Call_000_08b6
    pop af
    jr nc, jr_001_5204

    ld a, $01
    ld e, $1a
    ld [de], a
    ld [$c68d], a
    ld a, [$c203]
    ld b, a
    ld e, $03
    ld a, [de]
    sub b
    sub $0d
    jr c, jr_001_51fe

    ld c, a
    call Call_001_4769
    jr jr_001_5204

jr_001_51fe:
    cpl
    inc a
    ld c, a
    call Call_001_4711

jr_001_5204:
    ld e, $0a
    ld a, [de]
    and a
    jr z, jr_001_520d

    dec a
    ld [de], a
    ret


jr_001_520d:
    ld e, $00
    ld a, [de]
    bit 3, a
    jr z, jr_001_5219

    xor a
    ld [de], a
    jp Jump_001_7bf2


jr_001_5219:
    ld e, $03
    ld a, [de]
    add $03
    ld [de], a
    ret nc

    inc e
    ld a, [de]
    inc a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_523d

    call $4a6a
    ld e, $0e
    ld a, $22
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_523d:
    call Call_001_7d61
    ld e, $01
    ld a, [de]
    rrca
    jr c, jr_001_5272

    call Call_001_4a93
    ld hl, $0106
    call Call_001_6dca
    ld e, $01
    ld a, [de]
    bit 3, a
    jr z, jr_001_5263

    ld a, [$c661]
    cp $01
    jr z, jr_001_5272

    cp $04
    jr z, jr_001_5272

    jr jr_001_526e

jr_001_5263:
    ld a, [$c660]
    cp $01
    jr z, jr_001_5272

    cp $04
    jr z, jr_001_5272

jr_001_526e:
    ld a, [de]
    xor $08
    ld [de], a

jr_001_5272:
    ld bc, $0e0e
    call Call_001_7b88
    ld bc, $7d76
    call c, Call_001_7bff
    ld hl, $120c
    jp Jump_001_7b4b


    ld e, $0c
    ld a, [de]
    and a
    ret nz

    ld e, $0e
    ld a, $24
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_52b7

    dec a
    jr z, jr_001_52f6

    ld e, $0e
    ld a, $43
    ld [de], a
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld e, $1a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


jr_001_52b7:
    call Call_001_7d61
    ld e, $1a
    ld a, [de]
    cp $20
    jr z, jr_001_52c9

    inc a
    ld [de], a
    ld hl, $1014
    jp Jump_001_7b4b


jr_001_52c9:
    inc e
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr z, jr_001_52e8

    call Call_001_4a93
    ld hl, $1014
    call Call_001_7b4b
    ret nc

    ld c, $01
    ld e, $01
    ld a, [de]
    bit 3, a
    jp z, Jump_001_4667

    jp Jump_001_4694


jr_001_52e8:
    xor a
    ld [de], a
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_52f6:
    call Call_001_7d61
    ld e, $1b
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr z, jr_001_530b

    call Call_001_4a93
    ld hl, $1014
    jp Jump_001_7b4b


jr_001_530b:
    xor a
    ld [de], a
    dec e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_532f

    ld e, $0e
    ld a, $22
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_532f:
    ld a, [$c200]
    rrca
    ret nc

    ld bc, $2020
    call Call_001_7c40
    ret nc

    ld e, $0a
    ld a, [de]
    ld b, a
    jp Jump_000_1f64


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_5357

    ld e, $0a
    ld a, [de]
    ld e, $0e
    ld [de], a
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a

jr_001_5357:
    call Call_001_7d61
    ld bc, $100c
    call Call_001_7c40
    ret nc

    ld e, $01
    ld a, [de]
    rrca
    jr nc, jr_001_5375

    ld a, [$df17]
    inc a
    cp $0a
    jr c, jr_001_5370

    dec a

jr_001_5370:
    ld [$df17], a
    jr jr_001_53a1

jr_001_5375:
    rrca
    jr nc, jr_001_538d

    ld a, [$c20a]
    inc a
    ld b, a
    ld a, [$df15]
    sub b
    jr nc, jr_001_5384

    dec b

jr_001_5384:
    ld a, b
    ld [$c20a], a
    call Call_000_23b9
    jr jr_001_53a1

jr_001_538d:
    rrca
    jr nc, jr_001_5394

    ld a, $04
    jr jr_001_5396

jr_001_5394:
    ld a, $02

jr_001_5396:
    ld hl, $df18
    add [hl]
    cp $64
    jr c, jr_001_53a0

    ld a, $63

jr_001_53a0:
    ld [hl], a

jr_001_53a1:
    xor a
    ld e, $00
    ld [de], a
    ld a, $2d
    rst RST_28
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_53d3

    call $4a6a
    ld b, $03
    ld e, $01
    ld a, [de]
    dec e
    bit 3, a
    jr nz, jr_001_53be

    set 5, b

jr_001_53be:
    ld a, b
    ld [de], a
    ld e, $0e
    ld a, $2d
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0a
    inc a
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ret


jr_001_53d3:
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_53ef

    call Call_001_4a93
    ld bc, $0e10
    call Call_001_7b88
    ld bc, $7d76
    call c, Call_001_7bff
    ld hl, $1210
    jp Jump_001_7b4b


jr_001_53ef:
    xor a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_540c

    ld e, $0e
    ld a, $0e
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    dec a
    ld e, $08
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    ret


jr_001_540c:
    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    and $0f
    ret nz

    ld a, $2c
    rst RST_28
    call Call_000_0bbf
    ld a, [$df0b]
    and $07
    rlca
    ld hl, $5440
    call Call_000_0071
    ld e, $0a
    ld a, [de]
    ld b, a
    ld e, $03
    ld c, e
    ld a, [bc]
    add [hl]
    ld [de], a
    inc hl
    inc e
    inc c
    ld a, [bc]
    ld [de], a
    ld e, $06
    ld c, e
    ld a, [bc]
    add [hl]
    ld [de], a
    inc e
    inc c
    ld a, [bc]
    ld [de], a
    ret


    nop
    nop
    ldh a, [$fff0]
    db $10
    db $10
    ldh a, [rNR10]
    db $10
    ldh a, [$fff8]
    ld [$f008], sp
    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_548c

    call $4a6a
    ld e, $0e
    ld a, $56
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jp z, Jump_001_548c

    ld e, $0e
    ld a, $70
    ld [de], a
    jp Jump_001_5480


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_548c

    ld e, $0e
    ld a, $22
    ld [de], a

Jump_001_5480:
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


Call_001_548c:
Jump_001_548c:
jr_001_548c:
    call Call_001_4a93
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_54b9

    ld hl, $0c0a
    call Call_001_7b4b
    jr c, jr_001_54ad

    ld hl, $f806
    call Call_001_6dca
    ld hl, $c661
    dec [hl]
    jr z, jr_001_54ad

    inc l
    dec [hl]
    ret nz

jr_001_54ad:
    ld b, $19
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_54b7

    inc b

jr_001_54b7:
    ld a, b
    rst RST_28

jr_001_54b9:
    xor a
    ld e, $00
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_54d3

    ld e, $0e
    ld a, $22
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_54d3:
    call Call_001_7d61
    ld bc, $100c
    call Call_001_7c40
    ret nc

    ld hl, $df06
    set 2, [hl]
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_54f8

    ld e, $0e
    ld a, $2a
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_54f8:
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_5505

    ld e, $0b
    ld a, [de]
    dec a
    ld [de], a
    ret nz

jr_001_5505:
    xor a
    ld e, $00
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_5521

    ld e, $0e
    ld a, $84
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp Jump_001_70bb


jr_001_5521:
    call Call_001_7d61
    call Call_001_70bb
    ld b, $83
    jp Jump_001_561a


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_5549

    dec a
    jr z, jr_001_558b

    dec a
    jr z, jr_001_5593

    ld e, $0e
    ld a, $84
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp Jump_001_70bb


jr_001_5549:
    call Call_001_7d61
    call Call_001_70bb
    ld b, $83
    call Call_001_561a
    ld a, [$c460]
    rlca
    ret c

    ld a, [$c26a]
    and a
    ret nz

    call Call_000_0bbf
    ld a, [$df0b]
    rrca
    and $0f
    cp $04
    jr nc, jr_001_556f

    ld b, $00
    jr jr_001_5581

jr_001_556f:
    cp $08
    jr nc, jr_001_5577

    ld b, $04
    jr jr_001_5581

jr_001_5577:
    cp $0c
    jr nc, jr_001_557f

    ld b, $08
    jr jr_001_5581

jr_001_557f:
    ld b, $0c

jr_001_5581:
    ld e, $01
    ld a, [de]
    and $f0
    or b
    ld [de], a
    jp Jump_001_5646


jr_001_558b:
    ld e, $0c
    ld a, $03
    ld [de], a
    jp $4a6a


jr_001_5593:
    ld b, $83
    call Call_001_561a
    call Call_001_4a93
    ld e, $18
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $0c
    inc a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_55bd

    ld e, $0e
    ld a, $87
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp Jump_001_70bb


jr_001_55bd:
    call Call_001_70bb
    ld b, $86
    jp Jump_001_561a


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_55dc

    ld e, $0e
    ld a, $8a
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp Jump_001_70bb


jr_001_55dc:
    call Call_001_70bb
    ld b, $89
    jp Jump_001_561a


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_55fb

    ld e, $0e
    ld a, $8d
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp Jump_001_70bb


jr_001_55fb:
    call Call_001_70bb
    ld b, $8c
    jp Jump_001_561a


    ld e, $0c
    ld a, [de]
    and a
    ret nz

    ld e, $01
    ld a, [de]
    ld e, $0e
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp Jump_001_70bb


Call_001_561a:
Jump_001_561a:
    ld e, $01
    ld a, [de]
    and $0f
    jr nz, jr_001_5626

    ld e, $0e
    ld a, b
    ld [de], a
    ret


jr_001_5626:
    inc b
    cp $08
    jr nz, jr_001_5630

    ld e, $0e
    ld a, b
    ld [de], a
    ret


jr_001_5630:
    inc b
    cp $04
    jr nz, jr_001_563c

    dec e
    ld a, [de]
    set 5, a
    ld [de], a
    jr jr_001_5641

jr_001_563c:
    dec e
    ld a, [de]
    res 5, a
    ld [de], a

jr_001_5641:
    ld e, $0e
    ld a, b
    ld [de], a
    ret


Jump_001_5646:
    ld e, $1a
    ld a, b
    and a
    jr nz, jr_001_5651

    ld a, [de]
    sub $10
    jr jr_001_566e

jr_001_5651:
    cp $04
    jr nz, jr_001_565e

    ld a, [de]
    swap a
    add $10
    swap a
    jr jr_001_566e

jr_001_565e:
    cp $08
    jr nz, jr_001_5667

    ld a, [de]
    add $10
    jr jr_001_566e

jr_001_5667:
    ld a, [de]
    swap a
    sub $10
    swap a

jr_001_566e:
    ld h, $c1
    ld l, a
    ld c, a
    ld a, [hl]
    and a
    ret nz

    ld a, [$c21a]
    cp c
    ret z

    ld b, $10
    ld h, $c7

jr_001_567e:
    ld l, $00
    ld a, [hl]
    bit 0, a
    jr z, jr_001_5692

    bit 3, a
    jr nz, jr_001_5692

    bit 4, a
    jr nz, jr_001_5692

    ld l, $1a
    ld a, [hl]
    cp c
    ret z

jr_001_5692:
    inc h
    dec b
    jr nz, jr_001_567e

    ld e, $1a
    ld a, c
    ld [de], a
    ld e, $18
    ld a, $10
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    ret nz

    ld e, $0e
    ld a, $8f
    ld [de], a

jr_001_56af:
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld a, [$df30]
    and a
    ret z

    ld a, $40
    ld [$df30], a
    ld hl, $c687
    ld a, $ca
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, $30
    ld [hl], a
    ld a, $02
    ld [$c1b5], a
    ret


    ld a, [$c4ad]
    and a
    ret z

    xor a
    ld h, $c1
    ld l, $38
    ld [hl], a
    ld l, $68
    ld [hl], a
    ld l, $78
    ld [hl], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    ret nz

    ld e, $0e
    ld a, $99
    ld [de], a
    jr jr_001_56af

    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_5717

    dec a
    jr z, jr_001_5741

    ld e, $0e
    ld a, $1b
    ld [de], a
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld c, $01
    ld e, $01
    ld a, [de]
    bit 2, a
    jr z, jr_001_5710

    inc c

jr_001_5710:
    ld e, $0c
    ld a, c
    ld [de], a
    jp $4a6a


jr_001_5717:
    call Call_001_7d61
    call Call_001_4a93
    ld hl, $f801
    ld e, $01
    ld a, [de]
    bit 3, a
    jr nz, jr_001_5729

    ld h, $e8

jr_001_5729:
    call Call_001_6dca
    ld a, [$c662]
    dec a
    jr nz, jr_001_573b

jr_001_5732:
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    jp Jump_001_4a93


jr_001_573b:
    ld hl, $100c
    jp Jump_001_7b4b


jr_001_5741:
    call Call_001_7d61
    call Call_001_4a93
    ld hl, $f007
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    dec a
    jr z, jr_001_5732

    ld a, [hl]
    dec a
    jr z, jr_001_5732

    jr jr_001_573b

    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_5766

    dec a
    jr z, jr_001_5770

    jp Jump_001_5b29


jr_001_5766:
    ld a, $41
    call Call_001_7d69
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_5770:
    call Call_001_7d61
    ld hl, $130f
    call Call_001_7b4b
    jr c, jr_001_5782

    ld bc, $0e0e
    call Call_001_7b88
    ret nc

jr_001_5782:
    ld c, $17
    call Call_001_5d42
    bit 3, a
    jr z, jr_001_578d

    ld c, $1f

jr_001_578d:
    ld b, $25
    xor a
    ld [$c7c4], a

jr_001_5793:
    push bc
    call Call_001_4d5d
    pop bc
    cp $ff
    jr z, jr_001_57aa

    ld [$c7c4], a
    call Call_001_7d3f
    ld a, c
    sub $03
    ld c, a
    bit 1, a
    jr z, jr_001_5793

jr_001_57aa:
    jp Jump_001_5acc


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_57c2

    ld a, $36
    call Call_001_7d69
    ld e, $1a
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


jr_001_57c2:
    call Call_001_7d61
    call Call_001_4a93
    ld bc, $0e0e
    call Call_001_7b88
    ld hl, $130f
    jp nc, Jump_001_7b4b

    ld bc, $2d3d
    xor a
    ld [$c7c4], a
    call Call_001_57f9
    ld c, $3f
    call Call_001_57f9
    ld e, $1a
    ld a, [de]
    bit 0, a
    jr nz, jr_001_57f2

    set 0, a
    ld [de], a
    ld e, $13
    ld a, $40
    ld [de], a

jr_001_57f2:
    ld bc, $7d76
    call Call_001_7bff
    ret


Call_001_57f9:
    push bc
    call Call_001_4d5d
    pop bc
    cp $ff
    ld [$c7c4], a
    ret z

    jp Jump_001_7d3f


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_5820

    ld b, a
    ld e, $00
    ld a, [de]
    bit 3, a
    ret nz

    ld a, b
    call Call_000_0b7d
    jr nz, @+$5a

    dec [hl]
    ld e, b
    ld d, [hl]
    ld e, b
    adc c
    ld e, b

jr_001_5820:
    ld e, $00
    ld a, [de]
    and $e7
    ld [de], a
    ld a, $3a
    call Call_001_7d69
    ld e, $13
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


    ld hl, $130f
    call Call_001_7b4b
    ld bc, $0e0e
    call Call_001_7b88
    jr nc, jr_001_5849

    ld bc, $7d76
    call Call_001_7bff

jr_001_5849:
    ld bc, $ff40
    call Call_001_7c40
    ret nc

    ld e, $0c
    ld a, $02
    ld [de], a
    ret


    call Call_001_4a93
    ld hl, $130f
    call Call_001_7b4b
    ld bc, $0a0e
    call Call_001_7b88
    jr nc, jr_001_586d

    ld bc, $7d76
    call Call_001_7bff

jr_001_586d:
    ld bc, $10ff
    call Call_001_7c40
    ret nc

    call Call_001_7c7b
    ld e, $01
    or $20
    ld [de], a
    ld a, $3b
    call Call_001_7d69
    ld e, $0c
    ld a, $03
    ld [de], a
    jp $4a6a


    call Call_001_4a93
    ld hl, $1313
    call Call_001_7b4b
    ld bc, $0e12
    call Call_001_7b88
    ld bc, $7d76
    call c, Call_001_7bff
    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_58ba

    ld b, a
    ld e, $00
    ld a, [de]
    bit 3, a
    ret nz

    ld a, b
    call Call_000_0b7d
    cp d
    ld e, b
    rst RST_18
    ld e, b
    jr @+$5b

    ld [hl], a
    ld e, c
    and h
    ld e, c

jr_001_58ba:
    call $4a6a
    ld a, $2f
    call Call_001_7d69
    ld e, $0c
    inc a
    ld [de], a
    ld e, $1a
    ld a, $10
    ld [de], a

Jump_001_58cb:
jr_001_58cb:
    call Call_001_5d42
    ld b, $81
    bit 3, a
    jr nz, jr_001_58d6

    ld b, $a1

jr_001_58d6:
    ld e, $00
    ld a, b
    ld [de], a
    ld b, $2e
    jp Jump_000_1f64


    call Call_001_4a93
    ld hl, $1b13
    call Call_001_7b4b
    ld bc, $1612
    call Call_001_7b88
    jr nc, jr_001_58f6

    ld bc, $7d76
    call Call_001_7bff

jr_001_58f6:
    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $1a
    inc a
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    call Call_000_0bbf
    ld a, [$df0b]
    and $03
    or $80
    ld e, $0d
    ld [de], a
    ld e, $0e
    ld a, $30
    ld [de], a
    jr jr_001_58cb

    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_001_5950

    ld a, $3f
    ld [de], a
    call Call_001_5d42
    or $10
    ld c, a
    ld e, $0d
    ld a, [de]
    rrca
    ld [de], a
    bit 4, a
    jp nz, Jump_001_5964

    ld b, $08
    jr c, jr_001_5938

    ld b, $fc

jr_001_5938:
    xor a
    ld [$c7c4], a
    push bc
    call Call_001_4d5d
    ld b, $25
    call Call_001_7d3f
    pop bc
    ld l, $03
    ld a, [hl]
    add b
    ld [hl], a
    ld l, $0b
    ld a, $02
    ld [hl], a

jr_001_5950:
    ld hl, $1b13
    call Call_001_7b4b
    ld bc, $1612
    call Call_001_7b88
    ret nc

    ld bc, $7d76
    call Call_001_7bff
    ret


Jump_001_5964:
    ld e, $0c
    ld a, $03
    ld [de], a
    ld e, $1a
    ld a, $10
    ld [de], a
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    jp Jump_001_58cb


    call Call_001_4a93
    ld hl, $1b13
    call Call_001_7b4b
    ld bc, $1612
    call Call_001_7b88
    jr nc, jr_001_598e

    ld bc, $7d76
    call Call_001_7bff

jr_001_598e:
    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $3f
    ld [de], a
    ld e, $0c
    ld a, $04
    ld [de], a
    ld e, $0e
    ld a, $2f
    ld [de], a
    jp Jump_001_58cb


    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $0c
    ld [de], a
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jp z, Jump_001_677e

    ld a, $42
    jp Jump_001_676f


    ld e, $0c
    ld a, [de]
    dec a
    jp z, Jump_001_677e

    ld a, $37
    jp Jump_001_676f


    ld e, $0c
    ld a, [de]
    dec a
    jp z, Jump_001_6794

    ld a, $21
    jp Jump_001_676f


    ld e, $0c
    ld a, [de]
    dec a
    jp z, Jump_001_677e

    ld a, $4b
    jp Jump_001_676f


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_5a03

    ld b, $25
    ld e, $09
    ld a, [de]
    cp $26
    jr z, jr_001_59f5

    inc b
    inc b

jr_001_59f5:
    ld a, b
    call Call_001_7d69
    ld e, $0c
    inc a
    ld [de], a
    ld e, $00
    ld [de], a
    jp $4a6a


jr_001_5a03:
    call Call_001_7d61
    call Call_001_4a93
    ld hl, $100f
    call Call_001_7b4b
    ld bc, $0f0e
    call Call_001_7b88
    jr nc, jr_001_5a34

    ld e, $09
    ld a, [de]
    cp $26
    jr z, jr_001_5a2a

    inc l
    ld a, [hl]
    and $0f
    ld b, a
    ld e, l
    ld a, [de]
    and $0f
    cp b
    jr nz, jr_001_5a34

jr_001_5a2a:
    ld e, $0a
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_001_5a34

    jp Jump_001_7bc7


jr_001_5a34:
    ld bc, $c660
    ld e, $01
    ld a, [de]
    bit 3, a
    jr z, jr_001_5a3f

    inc c

jr_001_5a3f:
    push bc
    ld hl, $f00a
    call Call_001_6dca
    pop bc
    ld a, [bc]
    and a
    jp nz, Jump_001_5a57

    push bc
    ld hl, $fe0a
    call Call_001_6dca
    pop bc
    ld a, [bc]
    and a
    ret nz

Jump_001_5a57:
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    dec e
    ld a, [de]
    xor $20
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_5a7e

    ld b, a
    ld e, $00
    ld a, [de]
    bit 3, a
    ret nz

    ld a, b
    call Call_000_0b7d
    ld a, [hl]
    ld e, d
    sub e
    ld e, d
    add sp, $5a
    ld [de], a
    ld e, e
    inc hl
    ld e, e

jr_001_5a7e:
    ld a, $31
    call Call_001_7d69
    ld e, $18
    ld [de], a
    inc e
    ld [de], a
    inc e
    inc a
    ld e, $0c
    ld [de], a
    ld e, $1a
    ld a, $20
    ld [de], a
    ret


    ld bc, $4040
    call Call_001_7c40
    jr nc, jr_001_5abd

    ld e, $13
    xor a
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ld e, $0d
    ld a, $3f
    ld [de], a
    call Call_001_5d42
    or $10
    ld e, $01
    ld [de], a
    call $4a6a
    jr jr_001_5abd

Jump_001_5ab6:
jr_001_5ab6:
    ld e, $0d
    ld a, [de]
    dec a
    ld [de], a
    jr z, jr_001_5acc

Jump_001_5abd:
jr_001_5abd:
    ld hl, $130f
    call Call_001_7b4b
    jr c, jr_001_5acc

    ld bc, $0e0e
    call Call_001_7b88
    ret nc

Jump_001_5acc:
jr_001_5acc:
    ld b, $25
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_5ad6

    inc b

jr_001_5ad6:
    ld a, b
    rst RST_28
    ld e, $0a
    ld a, $09
    ld [de], a
    ld a, $0f
    call Call_001_7d69
    ld e, $0c
    ld a, $04
    ld [de], a
    ret


    call Call_001_4a93
    call Call_001_7b18
    ld hl, $f400
    ld e, $09
    ld a, [de]
    cp $29
    jr z, jr_001_5ab6

    call Call_001_6dca
    ld a, [$c662]
    and a
    jp z, Jump_001_5ab6

    ld e, $18
    xor a
    ld [de], a
    inc e
    ld a, $03
    ld [de], a
    ld e, $0c
    ld a, $03
    ld [de], a
    jp Jump_001_5ab6


    call Call_001_4a93
    call Call_001_7aed
    jp nc, Jump_001_5ab6

    ld e, $0c
    ld a, $02
    ld [de], a
    jp Jump_001_5ab6


    ld hl, $1b17
    call Call_001_7b4b

Jump_001_5b29:
    ld e, $0a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $00
    ld a, [de]
    ld b, a
    xor a
    ld [de], a
    bit 1, b
    jp z, Jump_001_7bf2

    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_5b5d

    ld b, a
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_5b57

    ld a, b
    call Call_000_0b7d
    ld e, l
    ld e, e
    ld [hl], h
    ld e, e
    add sp, $5a
    ld [de], a
    ld e, e
    inc hl
    ld e, e

jr_001_5b57:
    bit 1, a
    ret z

    xor a
    ld [de], a
    ret


jr_001_5b5d:
    ld a, $31
    call Call_001_7d69
    inc a
    ld e, $0c
    ld [de], a
    ld e, $18
    ld [de], a
    inc e
    ld a, $03
    ld [de], a
    inc e
    ld a, $40
    ld [de], a
    jp $4a6a


    ld e, $11
    ld a, [de]
    ld b, a
    ld a, [$c211]
    sub b
    add $02
    and $fc
    jp nz, Jump_001_5abd

    call Call_001_5d42
    or $30
    ld e, $01
    ld [de], a
    call $4a6a
    ld e, $0d
    ld a, $3f
    ld [de], a
    ld e, $0c
    ld a, $03
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    xor l
    ld e, e
    cp e
    ld e, e
    db $dd
    ld e, e
    dec e
    ld e, h
    inc [hl]
    ld e, h
    ld e, b
    ld e, h
    ld l, b
    ld e, h
    ld e, $00
    ld a, [de]
    set 4, a
    ld [de], a
    ld a, $01
    ld e, $0c
    ld [de], a
    jp $4a6a


    ld bc, $ff30
    call Call_001_7c40
    ret nc

    ld e, $00
    ld a, [de]
    res 4, a
    ld [de], a
    ld a, $52
    call Call_001_7d69
    ld e, $13
    ld a, $40
    ld [de], a
    ld e, $1a
    ld a, $18
    ld [de], a
    ld e, $0c
    ld a, $06
    ld [de], a
    ret


    call Call_001_4a93
    ld hl, $e40c
    call Call_001_6dca
    ld a, [$c662]
    and a
    jr nz, jr_001_5c08

    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    jp z, Jump_001_5c28

Jump_001_5bf4:
    ld hl, $1713
    call Call_001_7b4b
    ld bc, $1212
    call Call_001_7b88
    ret nc

    ld bc, $7d76
    call Call_001_7bff
    ret


jr_001_5c08:
    ld a, $55
    call Call_001_7d69
    ld e, $1a
    ld a, $0f
    ld [de], a
    ld e, $0c
    ld a, $03
    ld [de], a
    ld e, $13
    ld a, $40
    ld [de], a
    ret


    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $54
    call Call_001_7d69

Jump_001_5c28:
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ld e, $0c
    ld a, $04
    ld [de], a
    ret


    call Call_001_4a93
    ld hl, $fc0c
    call Call_001_6dca
    ld a, [$c662]
    and a
    jp z, Jump_001_5bf4

    ld a, $53
    call Call_001_7d69
    ld e, $13
    ld a, $40
    ld [de], a
    ld e, $1a
    rrca
    ld [de], a
    ld e, $0c
    ld a, $05
    ld [de], a
    ret


    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $0c
    ld [de], a
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ret


    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    jp nz, Jump_001_5bf4

    ld a, $20
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ld [$c7c4], a
    call Call_001_7c7b
    or $30
    ld c, a
    call Call_001_4d5d
    ld b, $2b
    jp Jump_001_7d3f


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_5ca4

    ld b, a
    ld e, $00
    ld a, [de]
    bit 3, a
    ret nz

    ld a, b
    call Call_000_0b7d
    and h
    ld e, h
    or e
    ld e, h
    ret c

    ld e, h
    cpl
    ld e, l
    ld a, [de]
    ld e, l

jr_001_5ca4:
    ld a, $3f
    call Call_001_7d69
    ld e, $0c
    inc a
    ld [de], a
    ld e, $1a
    ld a, $40
    ld [de], a
    ret


    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_001_5cc4

    ld e, $0e
    ld a, $40
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a

Jump_001_5cc4:
jr_001_5cc4:
    ld hl, $1713
    call Call_001_7b4b
    ld bc, $1012
    call Call_001_7b88
    ret nc

    ld bc, $7d76
    call Call_001_7bff
    ret


    ld c, $03
    call Call_001_5d42
    or $10
    ld b, a
    push bc
    xor a
    ld [$c7c4], a
    call Call_001_4d5d
    pop bc
    inc a
    jr z, jr_001_5d14

    ld a, $03
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld l, $03
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc l
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc l
    ld a, $2f
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ld a, $03
    ld [hl], a
    ld l, $18
    xor a
    ld [hl+], a
    ld [hl], c
    ld a, $20
    inc l
    ld [hl], a

jr_001_5d14:
    ld e, $0c
    ld a, $04
    ld [de], a
    ret


    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    cp $40
    jp nz, Jump_001_5cc4

    ld e, $0e
    ld a, $3f
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    ret


    ld a, $31
    call Call_001_7d69
    call $4a6a
    ld e, $0d
    ld a, $3f
    ld [de], a
    ld e, $09
    ld a, $29
    ld [de], a
    ret


Call_001_5d42:
    ld e, $12
    ld a, [de]
    ld b, a
    ld a, [$c212]
    cp b
    ld a, $0c
    ret c

    xor $08
    ret


    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    ld h, b
    ld e, l
    ld a, e
    ld e, l
    sbc d
    ld e, l
    ldh [c], a
    ld e, l
    inc hl
    ld e, e
    ld a, $01
    ld [de], a
    ld a, $2b
    call Call_001_7d69
    call Call_000_0bbf
    ld e, $1a
    ld [de], a

Jump_001_5d6e:
    call Call_001_7c7b
    and $08
    or $14
    call Call_001_7c20
    jp $4a6a


    call Call_001_5fc3
    ld e, $1a
    ld a, [de]
    or a
    jr z, jr_001_5d89

    dec a
    ld [de], a
    jp Jump_001_5dff


jr_001_5d89:
    ld bc, $20ff
    call Call_001_7c40
    jp nc, Jump_001_5dff

    ld e, $0c
    ld a, $02
    ld [de], a
    jp Jump_001_5dff


    call Call_001_7c7b
    and $08
    or $14
    call Call_001_7c20
    xor a
    ld [$c7c4], a
    call Call_001_4d5d
    rlca
    jr c, jr_001_5dd7

    ld b, $07
    ld e, $01
    ld a, [de]
    and $08
    or $14
    ld c, a
    call Call_001_7d3f
    ld l, $03
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, $2c
    call Call_001_7d69
    ld e, $1a
    ld a, $1e
    ld [de], a
    ld e, $0c
    ld a, $03
    ld [de], a
    jp Jump_001_5dff


jr_001_5dd7:
    call Call_001_4a93
    ld e, $0c
    ld a, $01
    ld [de], a
    jp Jump_001_5dff


    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    jp nz, Jump_001_5dff

    call Call_000_0bbf
    and $1f
    add $78
    ld [de], a
    ld a, $2b
    call Call_001_7d69
    ld a, $01
    ld e, $0c
    ld [de], a
    jp Jump_001_5d6e


Jump_001_5dff:
    ld bc, $1212
    call Call_001_7b88
    jr nc, jr_001_5e14

    inc l
    ld e, l
    ld a, [hl]
    and $08
    ld b, a
    ld a, [de]
    and $08
    xor b
    jr nz, jr_001_5e14

    scf

jr_001_5e14:
    ld bc, $7d76
    call c, Call_001_5ff5
    call Call_001_7d61
    ld hl, $1810
    jp Jump_001_7b4b


    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    dec [hl]
    ld e, [hl]
    ld d, [hl]
    ld e, [hl]
    adc d
    ld e, [hl]
    sbc a
    ld e, [hl]
    inc hl
    ld e, e
    xor c
    ld e, [hl]
    xor a
    ld [$c7c4], a
    call Call_001_4d5d
    rlca
    jr c, jr_001_5e52

    ld b, $4b
    call Call_001_7d3f
    ld e, $1a
    ld l, e
    ld a, h
    ld [de], a
    ld [hl], d
    ld l, $0b
    ld a, $02
    ld [hl], a
    jp Jump_001_5ea9


jr_001_5e52:
    xor a
    ld e, a
    ld [de], a
    ret


    ld e, $1b
    ld a, [de]
    or a
    jr z, jr_001_5e60

    dec a
    ld [de], a
    jr jr_001_5e68

jr_001_5e60:
    ld bc, $2840
    call Call_001_7c40
    jr c, jr_001_5e6e

jr_001_5e68:
    call Call_001_5fc3
    jp Jump_001_5ec4


jr_001_5e6e:
    ld a, $4f
    call Call_001_7d69
    call Call_001_5eb7
    call Call_001_7c7b
    ld b, a
    ld e, $1a
    ld a, [de]
    ld h, a
    ld l, $01
    ld [hl], b
    ld e, $0c
    ld l, e
    ld a, $02
    ld [de], a
    dec a
    ld [hl], a
    ret


    ld e, $10
    ld a, [de]
    dec a
    jr nz, jr_001_5e9c

    ld e, $1a
    ld a, [de]
    ld h, a
    ld e, $0c
    ld a, $03
    ld [de], a
    ld l, e
    dec a
    ld [hl], a

jr_001_5e9c:
    jp Jump_001_5ec4


    ld e, $0f
    xor a
    ld [de], a
    inc e
    inc a
    ld [de], a
    jp Jump_001_5ec4


Jump_001_5ea9:
    ld e, $1b
    ld a, $3c
    ld [de], a
    ld a, $4e
    call Call_001_7d69
    inc a
    ld e, $0c
    ld [de], a

Call_001_5eb7:
    call Call_001_7c7b
    and $08
    or $14
    call Call_001_7c20
    call $4a6a

Jump_001_5ec4:
    call Call_001_7d61
    ld bc, $1212
    call Call_001_7b88
    ld bc, $7d76
    call c, Call_001_5ff5
    ld hl, $1810
    jp Jump_001_7b4b


    call Call_001_5fb7
    ret nc

    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    db $ed
    ld e, [hl]
    cp $5e
    dec e
    ld e, a
    ld l, d
    ld e, a
    adc c
    ld e, a
    ld a, $4d
    call Call_001_7d69
    ld e, $1a
    ld a, [de]
    ld h, a
    ld l, $01
    ld a, [hl]
    call Call_001_7c20
    jr jr_001_5f08

    ld e, $01
    ld a, [de]
    call Call_001_7c20
    ld e, $1a
    ld a, [de]
    ld h, a

jr_001_5f08:
    ld l, $03
    ld e, l
    ld a, [hl+]
    sub $08
    ld [de], a
    inc e
    ld a, [hl+]
    sbc $00
    ld [de], a
    inc l
    inc e
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld e, $01
    ld a, [de]
    ld b, a
    and $07
    jr nz, jr_001_5f42

    ld a, b
    swap a
    ld c, a
    ld e, $00
    ld a, [de]
    and $20
    jr nz, jr_001_5f3a

    ld b, $09
    sla c
    jr c, jr_001_5f42

    ld b, $0f
    jr jr_001_5f42

jr_001_5f3a:
    ld b, $07
    sla c
    jr c, jr_001_5f42

    ld b, $01

jr_001_5f42:
    ld a, b
    ld hl, $5f5a
    call Call_000_0071
    ld a, [hl]
    call Call_001_7c20
    ld a, $03
    ld e, $0c
    ld [de], a
    ld e, $1b
    ld a, $3c
    ld [de], a
    jp $4a6a


    ld hl, $2321
    inc hl
    dec h
    dec h
    dec h
    dec h
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec l
    dec l
    cpl
    call Call_001_4a93
    ld e, $1b
    ld a, [de]
    dec a
    ld [de], a
    jp nz, Jump_001_5fa8

    ld e, $01
    ld a, [de]
    add $08
    and $0f
    or $20
    call Call_001_7c20
    ld e, $0c
    ld a, $04
    ld [de], a
    jp $4a6a


    call Call_001_4a93
    ld e, $1a
    ld a, [de]
    ld h, a
    ld e, $03
    ld l, e
    ld bc, $140c
    call Call_001_7c45
    jr nc, jr_001_5fa8

    ld e, $1a
    ld a, [de]
    ld h, a
    ld e, $0c
    ld l, e
    ld a, $05
    ld [hl], a
    xor a
    ld [de], a
    ret


Jump_001_5fa8:
jr_001_5fa8:
    call Call_001_7d61
    ld bc, $0808
    call Call_001_7b88
    ld hl, $100c
    jp Jump_001_7b4b


Call_001_5fb7:
    ld e, $1a
    ld a, [de]
    ld h, a
    ld l, $00
    ld a, [hl]
    rrca
    ret c

    jp Jump_001_7be1


Call_001_5fc3:
    ld hl, $0810
    call Call_001_6dca
    ld a, [$c660]
    or a
    jr z, jr_001_5fe7

    ld a, [$c661]
    or a
    jr z, jr_001_5fe7

    ld hl, $fc10
    call Call_001_6dca
    ld a, [$c660]
    or a
    jr nz, jr_001_5fe7

    ld a, [$c661]
    or a
    jr z, jr_001_5ff2

jr_001_5fe7:
    ld e, $01
    ld a, [de]
    xor $08
    call Call_001_7c20
    call $4a6a

jr_001_5ff2:
    jp Jump_001_4a93


Call_001_5ff5:
Jump_001_5ff5:
    ld hl, $6013
    ld a, [$df38]
    call Call_000_0071
    ld e, $0a
    ld a, [de]
    sub [hl]
    ld [de], a
    jp c, Jump_001_5acc

    ld b, $21
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_6010

    inc b

jr_001_6010:
    ld a, b
    rst RST_28
    ret


    ld bc, $0402
    ld [$00fa], sp
    jp nz, $d00f

    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_6036

    ld e, $0e
    ld a, $34
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1b
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


jr_001_6036:
    call Call_001_7d61
    ld hl, $140e
    call Call_001_7b4b
    jr nc, jr_001_60a9

    ld hl, $c691
    ld a, [hl]
    or $01
    ld [hl], a
    ld e, $1e
    ld a, [de]
    and a
    jr nz, jr_001_6067

    push hl
    call Call_001_4a3d
    pop hl
    ld a, [$c27b]
    bit 1, a
    ret z

    ld e, $1e
    ld a, $01
    ld [de], a
    ld a, $08
    ld [$c27b], a
    xor a
    ld [$c2a2], a

Jump_001_6067:
jr_001_6067:
    call Call_001_60f5
    ld hl, $0101

Jump_001_606d:
    call Call_001_6dca
    ld a, [$c660]
    cp $07
    jr nz, jr_001_6094

    ld a, [$c661]
    cp $07
    jr nz, jr_001_6094

    ld e, $12
    ld a, [de]
    ld e, $01
    cp $a0
    jr c, jr_001_608c

    ld a, [de]
    set 3, a
    ld [de], a
    ret


jr_001_608c:
    cp $10
    ret nc

    ld a, [de]
    res 3, a
    ld [de], a
    ret


jr_001_6094:
    ld e, $1b
    ld a, [de]
    and a
    ret nz

    ld a, $17
    ld [de], a
    ld e, $00
    ld a, [de]
    xor $20
    ld [de], a
    inc e
    ld a, [de]
    xor $08
    ld [de], a
    jr jr_001_60fe

jr_001_60a9:
    xor a
    ld [$c691], a
    ld e, $1d
    ld [de], a
    inc e
    ld [de], a
    ld b, $00
    ld hl, $080b
    ld e, $03
    ld a, [de]
    ld c, a
    sub $10
    ld [de], a
    push bc
    call Call_001_7b5a
    pop bc
    ld e, $03
    ld a, c
    ld [de], a
    jr nc, jr_001_6067

    ld a, [$c27c]
    and a
    jr z, jr_001_6067

    ld a, $01
    ld [$c68d], a
    ld e, $1d
    ld [de], a
    ld e, $03
    ld a, [de]
    sub $17
    ld c, a
    ld a, [$c203]
    sub c
    bit 7, a
    jr z, jr_001_60ee

    cpl
    inc a
    ld c, a
    call Call_001_4769
    jp Jump_001_6067


jr_001_60ee:
    ld c, a
    call Call_001_4711
    jp Jump_001_6067


Call_001_60f5:
    ld e, $1b
    ld a, [de]
    and a
    jr z, jr_001_60fe

    dec a
    ld [de], a
    ret


jr_001_60fe:
    call Call_001_4a93
    ld e, $1d
    ld a, [de]
    and a
    jr nz, jr_001_610b

    inc e
    ld a, [de]
    and a
    ret z

jr_001_610b:
    ld a, [$c369]
    ld b, a
    call Call_001_4358
    ld a, [$c36b]
    or $80
    ld [$c36b], a
    ld e, $01
    ld a, [de]
    bit 3, a
    jr nz, jr_001_6129

    ld c, $01
    call Call_001_4667
    jp Jump_001_40bb


jr_001_6129:
    ld c, $01
    call Call_001_4694
    jp Jump_001_405c


    ld a, [$c200]
    rrca
    ret nc

    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_614d

    ld e, $0e
    ld a, $26
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


jr_001_614d:
    call Call_001_7d61
    ld hl, $180b
    call Call_001_7b4b
    jr nc, jr_001_615e

    xor a
    ld [$c27b], a
    jr jr_001_618d

jr_001_615e:
    ld hl, $140e
    call Call_001_7b4b
    jr nc, jr_001_6196

    ld hl, $c691
    ld a, [hl]
    or $01
    ld [hl], a
    ld e, $1e
    ld a, [de]
    and a
    jr nz, jr_001_618d

    ld a, [$c27b]
    bit 1, a
    jr z, jr_001_618d

    ld e, $1e
    ld a, $01
    ld [de], a
    push hl
    call Call_001_4a3d
    pop hl
    ld a, $08
    ld [$c27b], a
    xor a
    ld [$c2a2], a

jr_001_618d:
    call Call_001_60f5
    ld hl, $d001
    jp Jump_001_606d


jr_001_6196:
    ld e, $1e
    xor a
    ld [de], a
    ld [$c691], a
    jr jr_001_618d

    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_61c3

    dec a
    jr z, jr_001_6221

    ld e, $0e
    ld a, $32
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld e, $1c
    ld a, $03
    ld [de], a
    jp $4a6a


jr_001_61c3:
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    and $0f
    jr nz, jr_001_61df

    ld e, $01
    ld a, [de]
    or $80
    ld e, $1b
    ld [de], a
    call Call_001_7c7b
    or $10
    ld e, $01
    ld [de], a
    jp Jump_001_6262


jr_001_61df:
    call Call_001_4a93
    call Call_001_7d61
    ld hl, $1010
    call Call_001_7b4b
    ld bc, $0c0c
    call Call_001_7b88
    ret nc

    ld a, [$df38]
    ld hl, $7d76
    call Call_000_0071
    ld e, $0a
    ld a, [de]
    sub [hl]
    ld [de], a
    ret nc

    ld a, $03
    ld [de], a
    ld e, $1c
    ld a, [de]
    dec a
    ld [de], a
    inc a
    push de
    add d
    ld d, a
    ld e, $0c
    ld a, $02
    ld [de], a
    inc e
    ld a, $09
    ld [de], a
    inc e
    ld a, $0f
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    pop de
    ret


jr_001_6221:
    ld e, $0d
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $00
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_6248

    dec a
    jr z, jr_001_6221

    ld e, $0e
    ld a, $33
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1b
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


jr_001_6248:
    dec d
    ld e, $1b
    ld a, [de]
    ld c, a
    res 7, a
    ld [de], a
    inc d
    bit 7, c
    jr z, jr_001_6273

    ld c, a
    ld e, $01
    ld a, [de]
    or $80
    ld e, $1b
    ld [de], a
    ld e, $01
    ld a, c
    ld [de], a

Jump_001_6262:
    ld e, $00
    bit 3, a
    ld a, [de]
    jr nz, jr_001_626d

    set 5, a
    jr jr_001_626f

jr_001_626d:
    res 5, a

jr_001_626f:
    ld [de], a
    jp $4a6a


jr_001_6273:
    call Call_001_4a93
    call Call_001_7d61
    ld hl, $1010
    call Call_001_7b4b
    ld bc, $0c0c
    jp Jump_001_7b88


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_629d

    dec a
    jr z, jr_001_62c4

    ld e, $0e
    ld a, $47
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_629d:
    ld bc, $ff80
    call Call_001_7c40
    jr nc, jr_001_62bd

    ld e, $0a
    ld a, [de]
    inc a
    ld [de], a
    rlca
    ret nc

    ld e, $0c
    ld a, $02
    ld [de], a
    ld e, $00
    ld a, [de]
    res 4, a
    ld [de], a
    ld a, $0e
    ld [$c57f], a
    ret


jr_001_62bd:
    ld e, $00
    xor a
    ld [de], a
    jp Jump_001_7bf2


jr_001_62c4:
    ld e, $0a
    ld a, [de]
    inc a
    and $0f
    ld [de], a
    jr z, jr_001_62d9

    push de
    ld bc, $c669
    ld de, $6c93
    call Call_000_066f
    pop de
    ret


jr_001_62d9:
    ld e, $00
    ld a, [de]
    set 4, a
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_62f6

    dec a
    jp z, Jump_001_6312

    dec a
    jp z, Jump_001_6374

    jp Jump_001_637f


jr_001_62f6:
    call $4a6a
    ld e, $01
    ld a, [de]
    and $08
    rrca
    swap a
    ld b, a
    ld e, $0e
    ld a, $2e
    or b
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


Jump_001_6312:
    call Call_001_7d61
    ld bc, $04ff
    call Call_001_7c40
    jr c, jr_001_634a

    call Call_001_63d8
    call Call_001_4a93
    ld hl, $e809
    ld e, $01
    ld a, [de]
    bit 3, a
    jr z, jr_001_632f

    ld h, $f8

jr_001_632f:
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    or [hl]
    jr z, jr_001_633d

    inc l
    ld a, [hl]
    and a
    ret z

jr_001_633d:
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ld e, $0e
    ld a, [de]
    xor $40
    ld [de], a
    ret


jr_001_634a:
    call Call_001_5d42
    ld e, $00
    bit 3, a
    jr z, jr_001_635a

    inc e
    ld a, $2f
    ld b, a
    ld [de], a
    jr jr_001_6360

jr_001_635a:
    ld a, $21
    ld [de], a
    inc e
    ld b, a
    ld [de], a

jr_001_6360:
    ld e, $0c
    ld a, $02
    ld [de], a
    inc e
    ld a, b
    and $07
    ld [de], a
    inc e
    ld a, $2d
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


Jump_001_6374:
    call Call_001_7d61
    ld e, $0c
    ld a, $03
    ld [de], a
    jp $4a6a


Jump_001_637f:
    call Call_001_7d61
    call Call_001_63d8
    call Call_001_4a93
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    and $03
    ret nz

    ld e, $00
    ld a, [de]
    bit 5, a
    jr z, jr_001_63a7

    ld e, $0d
    ld a, [de]
    inc a
    ld [de], a
    and $0f
    ld hl, $63c8
    call Call_000_0071
    ld a, [hl]
    jr jr_001_63bf

jr_001_63a7:
    ld e, $0d
    ld a, [de]
    dec a
    ld [de], a
    and $0f
    ld hl, $63c8
    call Call_000_0071
    ld a, [hl]
    cp $48
    jr nz, jr_001_63bd

    res 3, a
    jr jr_001_63bf

jr_001_63bd:
    set 3, a

jr_001_63bf:
    ld e, $01
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $36
    dec [hl]
    dec [hl]
    inc [hl]
    inc [hl]
    inc sp
    inc sp
    ld [hl-], a

Call_001_63d8:
    ld hl, $100c
    call Call_001_7b4b
    ld bc, $0c0c
    call Call_001_7b88
    ret nc

    ld bc, $7d76
    call Call_001_7bff
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_6404

    call $4a6a
    ld e, $0e
    ld a, $2d
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_6404:
    call Call_001_7d61
    call Call_001_63d8

Call_001_640a:
    call Call_001_4a93
    ld hl, $f70c
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    cp $01
    jr z, jr_001_642f

    cp $0a
    jr z, jr_001_642f

    cp $0d
    jr z, jr_001_642f

    ld a, [hl]
    cp $0a
    jr z, jr_001_642f

    cp $0d
    jr z, jr_001_642f

    cp $01
    ret nz

jr_001_642f:
    ld e, $00
    ld a, [de]
    xor $20
    ld [de], a
    inc e
    ld a, [de]
    xor $08
    ld [de], a
    jp Jump_001_4a93


    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_6456

    call $4a6a
    ld e, $0e
    ld a, $20
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_6456:
    ld bc, $10ff
    call Call_001_7c40
    ld c, $10
    jr nc, jr_001_6462

    ld c, $30

jr_001_6462:
    ld e, $01
    ld a, [de]
    and $0f
    or c
    ld [de], a
    call $4a6a
    jr jr_001_6404

    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_6488

    ld e, $0e
    ld a, $3c
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1a
    ld [de], a
    ld e, $0d
    ld [de], a
    dec e
    inc a
    ld [de], a
    ret


jr_001_6488:
    call Call_001_7d61
    call Call_001_5d42
    ld c, $01
    bit 3, a
    jr nz, jr_001_6496

    ld c, $21

jr_001_6496:
    ld e, $00
    ld a, c
    ld [de], a
    ld e, $0d
    ld a, [de]
    and a
    jr nz, jr_001_64c4

    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    and $3f
    jp nz, Jump_001_5cc4

    ld [$c7c4], a
    call Call_001_7c7b
    or $10
    ld c, a
    call Call_001_4d5d
    ld b, $3f
    call Call_001_7d3f
    ld e, $0e
    ld a, $3d
    ld [de], a
    ld e, $0d
    ld [de], a
    ret


jr_001_64c4:
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    and $07
    jp nz, Jump_001_5cc4

    ld e, $0c
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_64e0

    dec a
    jr z, jr_001_64f6

    dec a
    jr z, jr_001_6508

    jr jr_001_6542

jr_001_64e0:
    ld e, $0e
    ld a, $39
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1b
    ld [de], a
    ld e, $0d
    ld [de], a
    dec e
    inc a
    ld [de], a
    jp $4a6a


jr_001_64f6:
    ld e, $18
    xor a
    ld [de], a
    inc e
    ld a, $03
    ld [de], a
    inc e
    ld a, $30
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_6508:
    call Call_001_7d61
    call Call_001_640a
    ld e, $0d
    ld a, [de]
    rrca
    jr c, jr_001_6521

    call Call_001_7aed
    jp nc, Jump_001_5cc4

    xor a
    ld [de], a
    ld e, $0d
    inc a
    ld [de], a
    ret


jr_001_6521:
    call Call_001_7b18
    ld hl, $fc0b
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    or [hl]
    jp z, Jump_001_5cc4

    cp $0e
    jp nc, Jump_001_5cc4

    ld e, $0e
    ld a, $38
    ld [de], a
    ld e, $0c
    ld a, $03
    ld [de], a
    ret


jr_001_6542:
    call Call_001_7d61
    ld e, $1b
    ld a, [de]
    inc a
    ld [de], a
    cp $30
    jp nz, Jump_001_5cc4

    ld e, $0c
    xor a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_656e

    dec a
    jr z, jr_001_6583

    ld e, $0e
    ld a, $48
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


jr_001_656e:
    call Call_001_7d61
    ld a, [$c206]
    ld b, a
    ld e, $06
    ld a, [de]
    sub b
    jr z, jr_001_657d

    dec a
    ret nz

jr_001_657d:
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_6583:
    ld e, $00
    ld a, [de]
    bit 3, a
    jp nz, Jump_001_7bf2

    call Call_001_7d61
    call Call_001_4a93
    ld hl, $0c0c
    jp Jump_001_7b4b


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_65a4

    dec a
    jr z, jr_001_65c2

    dec a
    jr z, jr_001_65df

    ret


jr_001_65a4:
    ld b, $44
    ld e, $0a
    ld a, [de]
    rrca
    jr c, jr_001_65ad

    inc b

jr_001_65ad:
    ld e, $0e
    ld a, b
    ld [de], a
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld a, $0a
    ld e, $1a
    ld [de], a
    jp $4a6a


jr_001_65c2:
    call Call_001_7d61
    ld hl, $1810
    ld e, $0a
    ld a, [de]
    rrca
    jr c, jr_001_65d1

    ld hl, $1214

jr_001_65d1:
    call Call_001_7b4b
    ret nc

    ld e, $0c
    ld a, $02
    ld [de], a
    dec a
    ld [$c585], a
    ret


jr_001_65df:
    ld e, $1a
    ld a, [de]
    dec a
    ld [de], a
    jp nz, Jump_001_4a93

    ld e, $0c
    dec a
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_6612

    dec a
    jr z, jr_001_6625

    ld e, $0e
    ld a, $46
    ld [de], a
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    dec a
    inc e
    ld [de], a
    ld e, $18
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld a, $20
    ld [de], a
    jp $4a6a


jr_001_6612:
    call Call_001_7d61
    ld a, [$c585]
    rrca
    jr nc, jr_001_6699

    xor a
    ld [$c585], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_6625:
    call Call_001_7d61
    ld hl, $000e
    call Call_001_6dca
    ld hl, $c660
    ld e, $0d
    ld a, [de]
    rrca
    jr c, jr_001_665a

    ld l, $62
    ld a, [hl]
    and a
    jr z, jr_001_6655

    cp $0e
    jr nc, jr_001_6655

    call Call_001_5d42
    ld e, $01
    or $30
    ld [de], a
    ld e, $0d
    ld a, $01
    ld [de], a
    ld e, $02
    ld a, [de]
    and $f0
    ld [de], a
    ret


jr_001_6655:
    call Call_001_7b18
    jr jr_001_6699

jr_001_665a:
    ld a, [hl+]
    or [hl]
    jr z, jr_001_668f

    cp $0e
    jr nc, jr_001_668f

    ld hl, $f80e
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    or [hl]
    jr z, jr_001_6673

    cp $0e
    jr c, jr_001_6684

jr_001_6673:
    ld hl, $e80e
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    or [hl]
    jr z, jr_001_668a

    cp $0e
    jr nc, jr_001_668a

jr_001_6684:
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a

jr_001_668a:
    call Call_001_4a93
    jr jr_001_6699

jr_001_668f:
    xor a
    ld e, $0d
    ld [de], a
    ld e, $18
    ld [de], a
    inc e
    ld [de], a
    ret


jr_001_6699:
    ld hl, $1814
    call Call_001_7b4b
    ld bc, $100c
    jp Jump_001_7b88


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_66d6

    dec a
    jr z, jr_001_66f2

    dec a
    jr z, jr_001_670a

    ld e, $0a
    ld a, [de]
    and a
    jr nz, jr_001_66bc

    ld a, [$c585]
    rrca
    ret nc

jr_001_66bc:
    ld e, $0e
    ld a, $5d
    ld [de], a

Jump_001_66c1:
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld [$c585], a
    ld e, $1a
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld e, $00
    ld [de], a
    jp $4a6a


jr_001_66d6:
    call Call_001_7d61
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr nz, jr_001_6739

Call_001_66e2:
    ld e, $0c
    ld a, [de]
    inc a
    ld [de], a
    ld e, $0e
    ld a, [de]
    inc a
    ld [de], a
    xor a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ret


jr_001_66f2:
    call Call_001_7d61
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    cp $38
    jr nz, jr_001_673e

    xor a
    ld [de], a
    call Call_001_66e2

jr_001_6703:
    ld e, $01
    ld a, [de]
    xor $08
    ld [de], a
    ret


jr_001_670a:
    call Call_001_7d61
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr c, jr_001_6739

    ld e, $00
    cp $40
    jr z, jr_001_6721

    ld a, [de]
    set 4, a
    ld [de], a
    ret


jr_001_6721:
    ld a, [de]
    res 4, a
    ld [de], a
    ld e, $0e
    ld a, [de]
    sub $02
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1a
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jr jr_001_6703

jr_001_6739:
    push hl
    call Call_001_4a93
    pop hl

jr_001_673e:
    ld hl, $180c
    ld e, $0e
    ld a, [de]
    cp $5d
    jr nc, jr_001_674b

    ld hl, $1016

jr_001_674b:
    jp Jump_001_7b4b


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_66d6

    dec a
    jr z, jr_001_66f2

    dec a
    jr z, jr_001_670a

    ld a, [$c585]
    rrca
    ret nc

    ld e, $0e
    ld a, $5d
    ld [de], a
    jp Jump_001_66c1


    ld e, $0c
    ld a, [de]
    dec a
    jr z, jr_001_677e

    ld a, $3e

Jump_001_676f:
    ld e, $0e
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    jp $4a6a


Jump_001_677e:
jr_001_677e:
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_678f

    call Call_001_4a93
    ld hl, $0c0a
    call Call_001_7b4b
    ret nc

jr_001_678f:
    xor a
    ld e, $00
    ld [de], a
    ret


Jump_001_6794:
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_678f

    call Call_001_4a93
    ld hl, $100e
    call Call_001_7b4b
    jr c, jr_001_678f

    ret


    push de
    ld bc, $c669
    ld de, $6c93
    call Call_000_066f
    pop de
    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    jp nz, $d967

    ld h, a
    ld d, b
    ld l, b
    cp a
    ld l, b
    ret nz

    ld l, b
    ld e, $0e
    ld a, $6a
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $08
    ld [de], a
    ld e, $1b
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld e, $1b
    ld a, [de]
    and a
    jr nz, jr_001_6808

    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    cp $80
    jr nz, jr_001_6808

    xor a
    ld [de], a
    ld e, $1b
    ld a, $02
    ld [de], a
    ld [$c7c4], a
    ld bc, $0143
    call $6a4b
    dec b
    call $6a4b
    ld bc, $6868
    call Call_001_6888
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_6808:
    ld e, $1c
    ld a, [de]
    inc a
    ld [de], a
    and $3f
    jr nz, jr_001_6878

    inc e
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    ld hl, $6899
    call Call_000_0071
    ld a, [hl]
    and $0e
    rrca
    ld bc, $68b9
    add c
    ld c, a
    call Call_000_0bbf
    rrca
    ld a, [bc]
    jr nc, jr_001_682f

    swap a

jr_001_682f:
    and $0f
    ld b, a
    ld c, $42
    push hl
    ld [$c7c4], a
    call $6a4b
    pop hl
    ld a, [hl]
    and $01
    inc a
    ld c, d
    add d
    ld d, a
    ld e, $0e
    ld a, [hl]
    swap a
    and $0f
    or $60
    ld [de], a
    ld d, c
    jr jr_001_6878

    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    cp $30
    jr z, jr_001_6866

    push de
    ld bc, $c66b
    ld de, $1c00
    call Call_000_0652
    pop de
    jr jr_001_6878

jr_001_6866:
    xor a
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    push de
    ld bc, $c66b
    ld d, $1c
    call Call_000_0666
    pop de
    ret


jr_001_6878:
    ld hl, $1018
    call Call_001_7b4b
    ld bc, $0c14
    call Call_001_7b88
    jp c, Jump_001_78fb

    ret


Call_001_6888:
    inc d
    ld e, $0e
    ld a, b
    ld [de], a
    inc d
    ld a, c
    ld [de], a
    ld a, $20
    ld e, $08
    ld [de], a
    dec d
    ld [de], a
    dec d
    ret


    add b
    add e
    or h
    or a
    sbc b
    sbc e
    add b
    add b
    or h
    add e
    add b
    sbc b
    or a
    sbc e
    or h
    add e
    or a
    add b
    add e
    sbc e
    or h
    sbc b
    or a
    add b
    add b
    sbc e
    sbc b
    or a
    or h
    add e
    add b
    sbc e
    inc hl
    ld b, l
    inc bc
    dec d
    jr nz, jr_001_6900

    ret


    ld e, $08
    ld a, [de]
    cp $80
    jr z, jr_001_68ca

    inc a
    ld [de], a
    ret


jr_001_68ca:
    xor a
    ld e, $00
    ld [de], a
    inc d
    ld [de], a
    inc d
    ld [de], a
    inc d
    ld [de], a
    inc d
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_68df

    jr jr_001_68ee

jr_001_68df:
    ld e, $0e
    ld a, $69
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_68ee:
    ld e, $0e
    ld a, [de]
    ld hl, $1c0c
    rrca
    jr nc, jr_001_690e

    ld hl, $0c1c
    rrca
    jr c, jr_001_690e

    ld hl, $1c0c

jr_001_6900:
    ld hl, $0c1c
    push hl
    call Call_001_7b4b
    pop bc
    call Call_001_7b88
    ld hl, $1c0c

jr_001_690e:
    push hl
    call Call_001_7b4b
    pop bc
    jp Jump_001_7b88


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_691f

    jr @+$32

    ret


jr_001_691f:
    ld e, $0a
    ld a, [de]
    ld hl, $6948
    call Call_000_0071
    ld a, [hl]
    ld e, $01
    ld [de], a
    ld b, $03
    bit 3, a
    jr nz, jr_001_6934

    ld b, $23

jr_001_6934:
    ld a, b
    dec e
    ld [de], a
    ld e, $0e
    ld a, $58
    ld [de], a
    call $4a6a
    call Call_001_69fb
    ld e, $0b
    ld a, $02
    ld [de], a
    ret


    dec a
    inc sp
    ld a, $3a
    ld [hl-], a
    ld [hl], $1e
    ld [$fe1a], sp
    jr nz, @+$2a

    inc bc
    inc a
    ld [de], a
    ret


    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_6996

    call Call_001_4a93
    ld hl, $0c0a
    call Call_001_7b4b
    jr c, jr_001_6996

    ld h, $f0
    ld l, $05
    call Call_001_6dca
    ld c, $04
    ld a, [$c662]
    and a
    jr nz, jr_001_698e

    ld h, $f8
    ld l, $08
    call Call_001_6dca
    ld hl, $c660
    ld a, [hl+]
    or [hl]
    ret z

    ld e, $00
    ld a, [de]
    xor $20
    ld [de], a
    ld c, $0c

jr_001_698e:
    ld e, $01
    ld a, [de]
    xor c
    ld [de], a
    jp Jump_001_4a93


jr_001_6996:
    xor a
    ld e, $00
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_69a4

    jr jr_001_69b9

    ret


jr_001_69a4:
    ld a, $18
    ld e, $01
    ld [de], a
    ld e, $0e
    ld a, $57
    ld [de], a
    call Call_001_69fb
    ld e, $0b
    ld a, $02
    ld [de], a
    jp $4a6a


jr_001_69b9:
    ld a, [$c708]
    and a
    ret nz

    call Call_001_4a93
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_69df

    ld hl, $0c0a
    call Call_001_7b4b
    jr c, jr_001_69df

    ld bc, $0c0c
    call Call_001_7b88
    jr nc, jr_001_69e8

    ld a, [$df38]
    cp $03
    jr nz, jr_001_69e8

jr_001_69df:
    xor a
    ld e, $00
    ld [de], a
    ld hl, $c71b
    dec [hl]
    ret


jr_001_69e8:
    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    and $0f
    ret nz

    call Call_001_7c7b
    or $10
    ld e, $01
    ld [de], a
    jp $4a6a


Call_001_69fb:
Jump_001_69fb:
    ld e, $0a
    ld a, [de]
    rlca
    rlca
    ld hl, $6a1f
    call Call_000_0071
    ld e, $03
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $06
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $08
    xor a
    ld [de], a
    inc a
    ld e, $0b
    ld [de], a
    inc e
    ld [de], a
    ret


    ld h, b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ret nz

    nop
    ld c, b
    nop
    ld l, b
    nop
    ld [hl], b
    nop
    ld l, b
    nop
    ld c, b
    nop
    xor b
    nop
    ld [hl], b
    nop
    xor b
    nop
    sbc b
    ld [bc], a
    ld a, b
    ld b, $98
    ld [bc], a
    ld h, b
    ld b, $98
    ld [bc], a
    sub b
    ld b, $b8
    ld [bc], a
    ld h, b
    ld b, $b8
    ld [bc], a
    sub b
    ld b, $c5
    call Call_001_4d5d
    pop bc
    ld a, $03
    ld [hl], a
    ld l, $09
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    ld a, e
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    and [hl]
    ld h, a
    sbc l
    ld [hl], a
    add d
    halt
    and e
    ld [hl], a
    sbc d
    ld [hl], a
    add l
    halt
    push de
    ld bc, $c669
    ld de, $6c93
    call Call_000_066f
    pop de
    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    adc d
    ld l, d
    xor l
    ld l, d
    ld e, $6b
    ld b, [hl]
    ld l, e
    ld b, a
    ld l, e
    ld e, $06
    ld a, $78
    ld [de], a
    ld e, $0e
    ld a, $64
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $08
    ld [de], a
    ld e, $1b
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ret


    ld a, [$df06]
    bit 1, a
    ret z

    ld e, $1b
    ld a, [de]
    and a
    jr nz, jr_001_6add

    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    cp $80
    jr nz, jr_001_6add

    xor a
    ld [de], a
    ld e, $1b
    inc a
    ld [de], a
    ld [$c7c4], a
    ld bc, $0643
    call $6a4b
    ld bc, $6666
    call Call_001_6888
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


jr_001_6add:
    ld e, $1c
    ld a, [de]
    and a
    jr nz, jr_001_6b0e

    inc a
    ld [de], a
    inc e
    ld a, [de]
    inc a
    and $07
    ld [de], a
    rlca
    ld hl, $6a5f
    call Call_000_0071
    ld a, [hl+]
    push hl
    ld b, a
    ld c, $47
    call $6a4b
    pop hl
    ld a, [hl]
    swap a
    and $0f
    or $60
    ld b, a
    ld a, [hl]
    and $0f
    or $60
    ld c, a
    call Call_001_6888
    jr jr_001_6b0e

jr_001_6b0e:
    ld hl, $1010
    call Call_001_7b4b
    ld bc, $0c0c
    call Call_001_7b88
    jp c, Jump_001_78fb

    ret


    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    cp $30
    jr z, jr_001_6b34

    push de
    ld bc, $c66b
    ld de, $1c00
    call Call_000_0652
    pop de
    jr jr_001_6b0e

jr_001_6b34:
    xor a
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    push de
    ld bc, $c66b
    ld d, $1c
    call Call_000_0666
    pop de
    ret


    ret


    ld e, $08
    ld a, [de]
    cp $80
    jr z, jr_001_6b51

    inc a
    ld [de], a
    ret


jr_001_6b51:
    xor a
    ld e, $00
    ld [de], a
    ret


    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    ld h, b
    ld l, e
    ld [hl], d
    ld l, e
    ld e, $0e
    ld a, $67
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $08
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ret


    ld e, $0e
    ld a, [de]
    cp $67
    ret z

    ld hl, $1814
    push hl
    call Call_001_7b4b
    pop bc
    jp Jump_001_7b88


    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_6b8c

    jr jr_001_6bac

    ret


jr_001_6b8c:
    ld e, $0e
    ld a, $59
    ld [de], a
    ld e, $0a
    ld a, [de]
    ld b, a
    swap a
    and $0f
    ld [de], a
    ld a, b
    and $0f
    or $30
    ld e, $01
    ld [de], a
    ld e, $08
    xor a
    ld [de], a
    call $4a6a
    jp Jump_001_69fb


jr_001_6bac:
    ld e, $08
    ld a, [de]
    cp $20
    jr z, jr_001_6bb6

    inc a
    ld [de], a
    ret


jr_001_6bb6:
    call Call_001_548c
    ld e, $00
    ld a, [de]
    and a
    ret nz

    ld [$c71c], a
    ret


    push de
    call Call_000_0669
    pop de
    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_6bd2

    dec a
    jr z, jr_001_6be9

    jr jr_001_6c2c

jr_001_6bd2:
    ld e, $0e
    ld a, $6f
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $1a
    inc a
    ld [de], a
    ld e, $0c
    ld [de], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ret


jr_001_6be9:
    ld a, [$df06]
    bit 1, a
    ret z

    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    and $7f
    jr nz, jr_001_6c19

    ld [$c7c4], a
    call Call_001_7c7b
    or $30
    ld c, a
    call Call_001_4d5d
    ld b, $2a
    call Call_001_7d3f
    ld b, $08
    ld e, $00
    ld a, [de]
    bit 5, a
    jr nz, jr_001_6c14

    ld b, $f8

jr_001_6c14:
    ld l, $06
    ld a, [hl]
    add b
    ld [hl], a

jr_001_6c19:
    call Call_001_7d61
    ld hl, $1810
    call Call_001_7b4b
    ld bc, $1010
    call Call_001_7b88
    jp c, Jump_001_78fb

    ret


jr_001_6c2c:
    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    sub $40
    ret nz

    ld e, $00
    ld [de], a
    ld [$d800], a
    ld hl, $c580
    dec [hl]
    ret


    push de
    call Call_000_0669
    pop de
    ld e, $0c
    ld a, [de]
    and a
    jr z, jr_001_6c5a

    dec a
    jr z, jr_001_6c7c

    dec a
    jr z, jr_001_6c9d

    dec a
    jr z, jr_001_6ca9

    dec a
    jr z, jr_001_6cb5

    dec a
    jr z, jr_001_6cba

    ret


jr_001_6c5a:
    call $4a6a
    ld e, $0c
    ld a, $01
    ld [de], a
    inc e
    inc e
    ld a, $60
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $08
    inc a
    ld [de], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ld e, $00
    ld a, [de]
    set 6, a
    ld [de], a
    ret


jr_001_6c7c:
    call Call_001_7430
    ld e, $0c
    ld a, [de]
    cp $02
    ret nz

    ld e, $04
    dec a
    ld [de], a
    ld e, $07
    dec a
    ld [de], a

jr_001_6c8d:
    ld e, $01
    ld a, [de]
    or $10
    ld [de], a
    call $4a6a

jr_001_6c96:
    ld e, $00
    ld a, [de]
    res 2, a
    ld [de], a
    ret


jr_001_6c9d:
    call Call_001_74a4
    ld e, $0c
    ld a, [de]
    cp $03
    jr z, jr_001_6c8d

    jr jr_001_6c96

jr_001_6ca9:
    call Call_001_74e7
    ld e, $0c
    ld a, [de]
    cp $05
    jr z, jr_001_6c8d

    jr jr_001_6c96

jr_001_6cb5:
    call Call_001_754d
    jr jr_001_6c96

jr_001_6cba:
    call Call_001_7536
    jr jr_001_6c96

    ld e, $0c
    ld a, [de]
    call Call_000_0b7d
    rst RST_08
    ld l, h
    db $e4
    ld l, h
    ld a, [bc]
    ld l, l
    jr @+$6f

    inc hl
    ld e, e
    ld h, d
    ld e, $03
    ld l, $1a
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    inc l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    jp Jump_001_6d38


    call Call_001_7c7b
    or $30
    call Call_001_7c20
    call Call_001_6d82
    ld e, $1c
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld bc, $8080
    call Call_001_7c32
    jp c, Jump_001_6d4a

    ld bc, $1010
    call Call_001_7c39
    jp nc, Jump_001_6d63

    jp Jump_001_6d38


    call Call_001_6d82
    ld e, $1c
    ld a, [de]
    dec a
    ld [de], a
    jp z, Jump_001_6d38

    jp Jump_001_4a93


    call Call_001_6d82
    ld bc, $8080
    call Call_001_7c32
    jp c, Jump_001_6d38

    ld e, $1c
    ld a, [de]
    dec a
    ld [de], a
    jp nz, Jump_001_4a93

    ld bc, $1010
    call Call_001_7c39
    jp nc, Jump_001_6d63

    jp Jump_001_6d38


Jump_001_6d38:
    call Call_001_6da7
    ld e, $0c
    ld a, [de]
    cp $04
    ret z

    ld a, $01
    ld [de], a
    ld e, $1c
    ld a, $1e
    ld [de], a
    ret


Jump_001_6d4a:
    call Call_000_0bbf
    and $1f
    ld e, $1c
    add $1e
    ld [de], a
    call Call_001_6dbb
    ld e, $0c
    ld a, [de]
    cp $04
    ret z

    ld a, $02
    ld [de], a
    jp $4a6a


Jump_001_6d63:
    ld h, d
    ld l, $1a
    call Call_001_7c7e
    or $20
    call Call_001_7c20
    call Call_001_6dbb
    ld e, $1c
    ld a, $10
    ld [de], a
    ld e, $0c
    ld a, [de]
    cp $04
    ret z

    ld a, $03
    ld [de], a
    jp $4a6a


Call_001_6d82:
    call Call_001_7d61
    ld e, $09
    ld a, [de]
    cp $4c
    jr z, jr_001_6d97

    ld hl, $1810
    call Call_001_7b4b
    ld bc, $1212
    jr jr_001_6da0

jr_001_6d97:
    ld hl, $140c
    call Call_001_7b4b
    ld bc, $0e0e

jr_001_6da0:
    call Call_001_7b88
    ret nc

    jp Jump_001_5ff5


Call_001_6da7:
    ld b, $51
    ld e, $09
    ld a, [de]
    cp $4c
    jr nz, jr_001_6db2

    ld b, $71

jr_001_6db2:
    ld e, $0e
    ld a, [de]
    cp b
    ret z

    ld a, b
    jp Jump_001_7d69


Call_001_6dbb:
    ld b, $50
    ld e, $09
    ld a, [de]
    cp $4c
    jr nz, jr_001_6dc6

    ld b, $72

jr_001_6dc6:
    ld a, b
    jp Jump_001_7d69


Call_001_6dca:
    xor a
    ld [$c660], a
    ld b, $c1
    ld e, $03
    ld a, [de]
    add h
    and $f0
    ld c, a
    push bc
    ld e, $06
    ld a, [de]
    sub $08
    ld h, a
    add l
    and $f0
    swap a
    add c
    ld c, a
    ld a, [bc]
    ld [$c660], a
    pop bc
    push bc
    ld a, h
    sub l
    and $f0
    swap a
    add c
    ld c, a
    ld a, [bc]
    ld [$c661], a
    pop bc
    ld a, h
    and $f0
    swap a
    add c
    ld c, a
    ld a, [bc]
    ld [$c662], a
    ret


Call_001_6e04:
    ld hl, $c20b
    ld a, [$c667]
    and a
    jr z, jr_001_6e0e

    ret


jr_001_6e0e:
    ld a, [hl]
    and a
    jr nz, jr_001_6e8b

    ld a, [$c36a]
    bit 4, a
    ret z

    ld a, $23
    rst RST_28
    ld a, [$c663]
    ld c, a
    ld l, $0a
    ld a, [hl]
    sub c
    ld [hl], a
    jr z, jr_001_6e28

    jr nc, jr_001_6e83

jr_001_6e28:
    ld a, [$df19]
    rlca
    jr nc, jr_001_6e34

    rrca
    or $01
    ld [$df19], a

jr_001_6e34:
    ld a, $f0
    rst RST_28
    call Call_000_0090
    ld a, $34
    rst RST_28
    call Call_000_23b9
    ld a, $c0
    ld [$c664], a
    ld de, $c200
    xor a
    ld [de], a
    ld e, $03
    inc a
    ld [$c7c4], a
    ld c, $30

jr_001_6e52:
    call Call_001_4d5d
    cp $ff
    ret z

    ld [$c7c4], a
    push de
    ld a, $01
    ld [hl+], a
    ld a, c
    ld [hl+], a
    inc l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    inc l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld l, $0c
    xor a
    ld [hl], a
    ld l, $09
    ld [hl], a
    ld l, $13
    ld [hl], a
    pop de
    ld a, c
    add $02
    ld c, a
    cp $40
    jr nz, jr_001_6e52

    ret


jr_001_6e83:
    call Call_000_23b9
    ld hl, $c20b
    ld [hl], $88

jr_001_6e8b:
    dec [hl]
    ld a, [hl]
    cp $78
    jr c, jr_001_6ed5

    ld a, $0c
    ld [$c274], a
    bit 7, [hl]
    ret z

    ld a, [$c27b]
    bit 3, a
    jr z, jr_001_6ead

    and $03
    ld [$c27b], a
    ld l, $00
    ld a, [hl]
    xor $40
    ld [hl], a
    jr jr_001_6ebb

jr_001_6ead:
    bit 1, a
    jr nz, jr_001_6ebb

    and $03
    ld [$c27b], a
    ld c, $01
    call Call_001_4711

jr_001_6ebb:
    ld l, $00
    bit 5, [hl]
    jr nz, jr_001_6ecb

    ld a, $10
    ld [$c261], a
    ld c, $01
    jp Jump_001_4667


jr_001_6ecb:
    ld a, $20
    ld [$c261], a
    ld c, $01
    jp Jump_001_4694


jr_001_6ed5:
    bit 3, [hl]
    ld l, $00
    jr z, jr_001_6ede

    set 4, [hl]
    ret


jr_001_6ede:
    res 4, [hl]
    ret


    ld a, [$df02]
    cp $06
    ret nc

    ld a, [$df06]
    rrca
    jr c, jr_001_6f0f

    ld a, [$df02]
    ld hl, $6f3d
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld b, a
    ld a, [$c204]
    xor b
    jr nz, jr_001_6f0f

    ld a, [hl]
    ld b, a
    ld a, [$c207]
    xor b
    jr nz, jr_001_6f0f

    ld a, [$df06]
    set 0, a
    ld [$df06], a

jr_001_6f0f:
    ld a, [$df06]
    bit 1, a
    ret nz

    ld a, [$df02]
    ld hl, $6f49
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld b, a
    ld a, [$c363]
    xor b
    ret nz

    ld a, [hl]
    ld b, a
    ld a, [$c365]
    xor b
    ret nz

    ld a, [$c364]
    cp $08
    jr z, jr_001_6f37

    cp $47
    ret nz

jr_001_6f37:
    ld hl, $df06
    set 1, [hl]
    ret


    nop
    inc b
    inc bc
    ld bc, $0400
    dec b
    nop
    ld [bc], a
    inc bc
    add b
    inc bc
    ld bc, $0007
    ld bc, $0700
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $80
    inc bc
    xor a
    ld [$c579], a
    ld a, [$df07]
    and $80
    ld [$df07], a
    ld h, $c1
    ld a, [$c21a]
    ld l, a
    ld b, $01
    ld a, [hl]
    sub $02
    jp z, Jump_001_6ff7

    sla b
    dec a
    jp z, Jump_001_6ff7

    sla b
    dec a
    jr z, jr_001_6ff7

    sla b
    dec a
    jr z, jr_001_6ff7

    ld b, $10
    ld c, a
    ld a, [$df14]
    cp $04
    jr z, jr_001_6f9c

    ld a, c
    dec a
    jr z, jr_001_7009

    sla b
    dec a
    jr z, jr_001_7009

    sla b
    dec a
    jr z, jr_001_7009

    sla b
    dec a
    jr z, jr_001_7009

jr_001_6f9c:
    xor a
    ld [$df07], a
    ld a, [$df36]
    cp $08
    jr c, jr_001_701b

    xor a
    ld [$df36], a
    call Call_000_0bbf
    ld b, a
    ld a, [$c26a]
    add b
    and $03
    jr nz, jr_001_701b

    ld a, [$c204]
    and $0f
    cp $05
    jr nc, jr_001_701b

    swap a
    rrca
    ld c, a
    ld a, [$c207]
    and $0f
    add c
    push hl
    ld hl, $70d2
    call Call_000_0071
    ld a, [hl]
    pop hl
    and a
    jr z, jr_001_701b

    ld c, a
    ld a, [$df0b]
    swap a
    and $03
    jr z, jr_001_6fe1

    dec a

jr_001_6fe1:
    add c
    ld [$df02], a
    xor a
    ld [$df2d], a
    call Call_001_71a7
    ld a, $09
    rst RST_28
    ld a, $10
    call Call_000_00d0
    jp Jump_001_7142


Jump_001_6ff7:
jr_001_6ff7:
    ld a, [$df07]
    and a
    jr nz, jr_001_701b

    ld a, b
    or $80
    ld [$df07], a
    ld a, $01
    ld [$c579], a
    ret


jr_001_7009:
    ld a, $33
    rst RST_28
    ld a, b
    ld [$c261], a
    rlca
    jr c, jr_001_703b

    rlca
    jr c, jr_001_7030

    rlca
    jr c, jr_001_704e

    jr jr_001_7065

jr_001_701b:
    ld a, [$c261]
    rlca
    jr c, jr_001_7036

    rlca
    jr c, jr_001_702b

    rlca
    jr c, jr_001_7041

    rlca
    jr c, jr_001_7058

    ret


jr_001_702b:
    ld a, $81
    ld [$c274], a

jr_001_7030:
    ld a, l
    sub $10
    ld l, a
    jr jr_001_706d

jr_001_7036:
    ld a, $80
    ld [$c274], a

jr_001_703b:
    ld a, l
    add $10
    ld l, a
    jr jr_001_706d

jr_001_7041:
    ld a, [$c200]
    res 5, a
    ld [$c200], a
    ld a, $82
    ld [$c274], a

jr_001_704e:
    ld a, l
    swap a
    sub $10
    swap a
    ld l, a
    jr jr_001_706d

jr_001_7058:
    ld a, [$c200]
    set 5, a
    ld [$c200], a
    ld a, $82
    ld [$c274], a

jr_001_7065:
    ld a, l
    swap a
    add $10
    swap a
    ld l, a

jr_001_706d:
    ld a, [hl]
    cp $01
    jr nz, jr_001_7078

    ld a, $01
    ld [$c579], a
    ret


jr_001_7078:
    ld d, $c7
    ld b, $13

jr_001_707c:
    ld e, $00
    ld a, [de]
    bit 0, a
    jr z, jr_001_7097

    bit 3, a
    jr nz, jr_001_7097

    bit 4, a
    jr nz, jr_001_7097

    ld e, $1a
    ld a, [de]
    cp l
    jr nz, jr_001_7097

    ld a, $01
    ld [$c579], a
    ret


jr_001_7097:
    inc d
    dec b
    jr nz, jr_001_707c

    ld a, l
    ld [$c21a], a
    ld hl, $df36
    inc [hl]
    ret


    ld a, [$c203]
    sub $10
    and $f0
    ld l, a
    ld a, [$c206]
    sub $08
    and $f0
    swap a
    add l
    ld l, a
    ld [$c21a], a
    ret


Call_001_70bb:
Jump_001_70bb:
    ld e, $03
    ld a, [de]
    sub $10
    and $f0
    ld l, a
    ld e, $06
    ld a, [de]
    sub $08
    and $f0
    swap a
    add l
    ld l, a
    ld e, $1a
    ld [de], a
    ret


    dec de
    dec de
    dec de
    dec de
    nop
    nop
    nop
    nop
    dec de
    dec de
    dec de
    dec de
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    dec de
    inc e
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    dec de
    inc e
    inc e
    nop
    nop
    nop
    add hl, de
    add hl, de
    add hl, de
    inc e
    inc e
    nop
    nop
    nop
    ld a, [$df07]
    rrca
    jr c, jr_001_710a

    rrca
    jr c, jr_001_7121

    rrca
    jr c, jr_001_7150

    rrca
    jr c, jr_001_7163

    ret


jr_001_710a:
    ld hl, $721b
    call Call_001_7181
    ld a, [hl]
    ld [$df03], a
    ld [$df04], a
    call Call_000_00b0
    xor a
    ld [$df08], a
    jp $0570


jr_001_7121:
    call Call_001_71a7
    ld hl, $7230
    call Call_001_7181
    ld a, [hl]
    ld [$df02], a
    cp $06
    jr nc, jr_001_7142

    ld b, a
    ld a, [$df14]
    inc b
    sub b
    jr c, jr_001_7142

    ld a, [$df08]
    dec a
    ld [$df08], a
    ret


Jump_001_7142:
jr_001_7142:
    ld a, [$df01]
    xor $03
    ld [$df01], a
    call Call_000_00b0
    jp $0570


jr_001_7150:
    call Call_001_71a7
    ld hl, $72b5
    call Call_001_7181
    ld a, [hl]
    ld [$df03], a
    call Call_000_00b0
    jp $0570


jr_001_7163:
    call Call_000_00b0
    ld a, $82
    ld [$df07], a
    ld a, [$df08]
    dec a
    ld hl, $dd00
    rlca
    rlca
    swap a
    add $18
    ld l, a
    ld a, [hl]
    ld [$df03], a
    jp $0570


    ret


Call_001_7181:
    ld a, [$c204]
    ld b, a
    ld a, [$c207]
    ld c, a
    ld a, [$c21a]
    ld d, a

jr_001_718d:
    push hl
    ld a, [hl+]
    and a
    jr z, jr_001_71a5

    cp b
    jr nz, jr_001_719d

    ld a, [hl+]
    cp c
    jr nz, jr_001_719d

    ld a, [hl+]
    cp d
    jr z, jr_001_71a5

jr_001_719d:
    pop hl
    ld a, $04
    call Call_000_0071
    jr jr_001_718d

jr_001_71a5:
    pop de
    ret


Call_001_71a7:
    ld a, [$df08]
    inc a
    ld [$df08], a
    dec a
    rlca
    rlca
    swap a
    ld l, a
    ld h, $dd
    ld a, [$c39a]
    ld [hl+], a
    ld a, [$c39b]
    ld [hl+], a
    ld a, [$c39e]
    ld [hl+], a
    ld a, [$c3a1]
    ld [hl+], a
    ld a, [$c39c]
    ld [hl+], a
    ld a, [$c39f]
    ld [hl+], a
    ld a, [$c3a2]
    ld [hl+], a
    ld a, [$c39d]
    ld [hl+], a
    ld a, [$c3a0]
    ld [hl+], a
    ld a, [$c3a3]
    ld [hl+], a
    ld a, [$c3a4]
    ld [hl+], a
    ld a, [$c3a5]
    ld [hl+], a
    ld a, [$c365]
    ld [hl+], a
    ld a, [$c363]
    ld [hl+], a
    ld a, [$c272]
    ld [hl+], a
    ld a, [$c273]
    ld [hl+], a
    ld a, [$c204]
    ld [hl+], a
    ld a, [$c203]
    ld [hl+], a
    ld a, [$c207]
    ld [hl+], a
    ld a, [$c206]
    ld [hl+], a
    ld a, [$c364]
    ld [hl+], a
    ld a, [$c362]
    ld [hl+], a
    ld a, [$c3a9]
    ld [hl+], a
    ld a, [$c399]
    ld [hl+], a
    ld a, [$df03]
    ld [hl], a
    ret


    ld d, $14
    ld c, h
    dec de
    rla
    inc d
    or l
    add hl, hl
    ld d, $13
    ld [bc], a
    dec hl
    dec d
    ld de, $2a46
    dec d
    ld de, $2a45
    nop
    ld [de], a
    ld de, $01c4
    ld [de], a
    ld de, $01c5
    ld [de], a
    ld de, $01d4
    ld [de], a
    ld de, $01d5
    ld de, $f613
    inc bc
    ld de, $8a14
    dec b
    ld de, $8b14
    dec b
    ld de, $9a14
    dec b
    ld de, $9b14
    dec b
    inc de
    db $10
    ld h, $06
    inc de
    db $10
    or $07
    ld [de], a
    db $10
    ld e, $08
    ld [de], a
    ld de, $0912
    db $10
    ld de, $0ad2
    db $10
    ld de, $0bd5
    inc de
    ld [de], a
    ld l, d
    inc c
    inc de
    inc de
    ld d, e
    dec c
    inc de
    inc de
    ld d, a
    ld c, $12
    inc d
    ld l, e
    rrca
    ld [de], a
    inc d
    ld c, e
    db $10
    inc de
    inc d
    adc $11
    ld [de], a
    inc d
    ld [$1212], a
    inc d
    sub e
    inc de
    inc de
    inc de
    xor [hl]
    inc d
    inc de
    inc d
    pop af
    dec d
    inc d
    inc d
    xor c
    ld d, $13
    inc d
    ld c, e
    rla
    inc d
    inc d
    ld a, [hl-]
    jr jr_001_72b8

    ld [de], a
    or [hl]
    nop
    rla
    ld [de], a
    or a
    nop
    ld d, $12
    dec hl
    ld [bc], a
    dec d
    db $10
    ld b, a
    inc b
    dec d
    db $10
    ld c, b
    inc b
    nop
    inc de
    db $10
    and [hl]

jr_001_72b8:
    ld bc, $1013
    and a
    ld bc, $1013
    or [hl]
    ld bc, $1013
    or a
    ld bc, $1212
    jr nz, jr_001_72cb

    ld [de], a
    ld [de], a

jr_001_72cb:
    ld hl, $1202
    ld [de], a
    jr nc, jr_001_72d3

    ld [de], a
    ld [de], a

jr_001_72d3:
    ld sp, $1102
    db $10
    ld c, b
    inc bc
    ld de, $4910
    inc bc
    ld de, $5910
    inc bc
    ld de, $2212
    inc b
    ld de, $2312
    inc b
    ld de, $3312
    inc b
    ld de, $ae12
    dec b
    ld de, $af13
    dec b
    ld de, $be12
    dec b
    ld de, $bf13
    dec b
    inc d
    inc de
    add hl, hl
    ld b, $14
    inc de
    jr c, jr_001_730b

    inc d
    inc de
    add hl, sp
    ld b, $11
    ld [de], a

jr_001_730b:
    add b
    ld a, [bc]
    ld de, $8112
    ld a, [bc]
    ld de, $9012
    ld a, [bc]
    ld de, $9112
    ld a, [bc]
    ld [de], a
    inc d
    xor d
    ld c, $12
    inc d
    xor e
    ld c, $12
    inc d
    cp d
    ld c, $12
    inc d
    cp e
    ld c, $12
    inc d
    adc c
    inc de
    rla
    ld d, $8c
    ld [de], a
    rla
    rla
    ld hl, $1714
    ld d, $17
    inc de
    inc de
    ld d, $a5
    inc d
    inc de
    ld d, $53
    inc de
    dec d
    ld d, $e9
    add hl, bc
    ld d, $16
    dec sp
    ld [$1715], sp
    ret nc

    inc de
    ld [de], a
    ld d, $4a
    inc d
    ld de, $c416
    inc de
    inc d
    ld d, $59
    inc c
    inc d
    ld d, $d7
    inc d
    inc d
    rla
    cp a
    inc de
    db $10
    ld d, $67
    inc d
    db $10
    dec d
    cp [hl]
    inc de
    nop
    call Call_000_0669
    ld de, $c70c
    ld a, [de]
    and a
    jr z, jr_001_73a2

    cp $10
    jr z, jr_001_73d0

    cp $11
    jr z, jr_001_73e2

    cp $12
    jr z, jr_001_73f4

    cp $13
    jp z, Jump_001_741e

    dec a
    jp z, Jump_001_7430

    dec a
    jp z, Jump_001_74a4

    dec a
    jp z, Jump_001_74e7

    dec a
    jp z, Jump_001_754d

    dec a
    jp z, Jump_001_7536

    dec a
    jp z, Jump_001_75a2

    dec a
    jp z, Jump_001_75d4

    ret


jr_001_73a2:
    ld e, $00
    ld a, $07
    ld [de], a
    inc e
    ld a, $10
    ld [de], a
    call $4a6a
    ld hl, $7677
    call Call_001_7664
    ld a, $10
    ld [de], a
    inc e
    ld a, $01
    ld [de], a
    ld e, $0c
    ld a, $10
    ld [de], a
    inc e
    inc e
    ld a, $60
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ret


jr_001_73d0:
    ld e, $08
    ld a, [de]
    and a
    jr z, jr_001_73d9

    dec a
    ld [de], a
    ret


jr_001_73d9:
    ld a, $4a
    ld [de], a
    ld e, $0c
    ld a, $11
    ld [de], a
    ret


jr_001_73e2:
    call Call_001_7687
    ld e, $08
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $40
    ld [de], a
    ld e, $0c
    ld a, $12
    ld [de], a
    ret


jr_001_73f4:
    call Call_001_768a
    ld e, $08
    ld a, [de]
    dec a
    ld [de], a
    cp $30
    jr nz, jr_001_7405

    ld b, $2c
    jp Jump_001_76ec


jr_001_7405:
    cp $20
    jr nz, jr_001_740e

    ld b, $2c
    jp Jump_001_76ec


jr_001_740e:
    and a
    ret nz

    ld a, $4a
    ld [de], a
    ld e, $01
    ld a, $08
    ld [de], a
    ld e, $0c
    ld a, $13
    ld [de], a
    ret


Jump_001_741e:
    call Call_001_7687
    ld e, $08
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld a, $1e
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    ret


Call_001_7430:
Jump_001_7430:
    ld e, $08
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    ld e, $00
    ld a, [de]
    res 4, a
    ld [de], a
    bit 6, a
    jr z, jr_001_7444

    ld a, $03
    jr jr_001_744b

jr_001_7444:
    call Call_000_0bbf
    and $03
    jr z, jr_001_7444

jr_001_744b:
    dec a
    swap a
    rrca
    ld hl, $766f
    call Call_000_0071
    call Call_001_7664
    ld e, $06
    ld a, [de]
    ld b, a
    ld a, [$c206]
    sub b
    jr c, jr_001_7469

    ld e, $00
    ld a, $27
    ld [de], a
    jr jr_001_746e

jr_001_7469:
    ld e, $00
    ld a, $07
    ld [de], a

jr_001_746e:
    ld e, $01
    xor a
    ld [de], a
    call $4a6a
    ld hl, $c203
    ld e, $18
    ld c, $20
    ld a, [$df0b]
    swap a
    and $03
    jr z, jr_001_7496

    ld c, $00
    rrca
    jr nc, jr_001_7496

    ld c, $10
    ld a, [hl+]
    add c
    ld [de], a
    ld a, [hl]
    adc $00
    inc e
    ld [de], a
    jr jr_001_749e

jr_001_7496:
    ld a, [hl+]
    sub c
    ld [de], a
    ld a, [hl]
    sbc $00
    inc e
    ld [de], a

jr_001_749e:
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


Call_001_74a4:
Jump_001_74a4:
    call Call_001_7687
    ld e, $04
    ld h, d
    ld l, $19
    ld a, [de]
    sub [hl]
    ret nz

    dec l
    dec e
    ld a, [de]
    sub [hl]
    ret nz

    ld hl, $c206
    ld e, l
    ld a, [de]
    ld b, a
    ld a, [hl]
    sub b
    jr c, jr_001_74c9

    ld e, $00
    ld a, $27
    ld [de], a
    inc e
    ld a, $04
    ld [de], a
    jr jr_001_74d2

jr_001_74c9:
    ld e, $00
    ld a, $07
    ld [de], a
    inc e
    ld a, $0c
    ld [de], a

jr_001_74d2:
    ld a, [hl+]
    ld e, $18
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    call $4a6a
    ld e, $0c
    ld a, $03
    ld [de], a
    ld e, $1b
    ld a, $20
    ld [de], a
    ret


Call_001_74e7:
Jump_001_74e7:
    ld e, $1b
    ld a, [de]
    and a
    jr z, jr_001_74f4

    dec a
    ld [de], a
    call Call_001_768a
    jr jr_001_74f7

jr_001_74f4:
    call Call_001_7687

jr_001_74f7:
    ld e, $07
    ld h, d
    ld l, $19
    ld a, [de]
    sub [hl]
    jr nz, jr_001_7508

    dec l
    dec e
    ld a, [de]
    sub [hl]
    jr nz, jr_001_7508

    jr jr_001_7528

jr_001_7508:
    ld e, $1a
    ld a, [de]
    inc a
    ld [de], a
    and $3f
    ret nz

    call Call_000_0bbf
    rrca
    ret nc

    ld b, $02
    ld e, $00
    ld a, [de]
    bit 5, a
    jr nz, jr_001_7520

    set 3, b

jr_001_7520:
    call Call_001_76ec
    set 2, b
    jp Jump_001_76ec


jr_001_7528:
    ld e, $01
    ld a, $08
    ld [de], a
    call $4a6a
    ld e, $0c
    ld a, $05
    ld [de], a
    ret


Call_001_7536:
Jump_001_7536:
    call Call_001_7687
    ld e, $00
    ld a, [de]
    bit 3, a
    ret z

    set 4, a
    ld [de], a
    ld e, $08
    ld a, $3c
    ld [de], a
    ld e, $0c
    ld a, $01
    ld [de], a
    ret


Call_001_754d:
Jump_001_754d:
    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    cp $80
    jr z, jr_001_7578

    ld e, $00
    bit 2, a
    ld a, [de]
    jr nz, jr_001_7561

    set 4, a
    jr jr_001_7563

jr_001_7561:
    res 4, a

jr_001_7563:
    ld [de], a
    ld e, $00
    ld a, [de]
    bit 6, a
    jr nz, jr_001_7570

    ld a, $90
    ld [$c360], a

jr_001_7570:
    ld hl, $c200
    ld a, [hl]
    and $21
    ld [hl], a
    ret


Jump_001_7578:
jr_001_7578:
    ld a, $f0
    rst RST_28
    ld e, $00
    xor a
    ld [de], a
    ld [$d800], a
    call Call_000_2626
    ld e, $0c
    ld a, $06
    ld [de], a
    ld a, $81
    ld [$c690], a
    ld hl, $c7cc
    ld a, [$c364]
    ld [hl+], a
    ld a, [$c362]
    ld b, a
    ld a, $80
    sub b
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ret


Jump_001_75a2:
    ld a, $11
    rst RST_28
    ld a, $00
    call Call_000_00d0
    ld e, $0c
    ld a, $07
    ld [de], a
    ld e, $08
    ld [de], a
    ld hl, $ca66
    xor a
    ld [hl+], a
    ld a, $9c
    ld [hl+], a
    ld a, $2c
    call Call_001_75cb
    ld a, $2e
    call Call_001_75cb
    ld a, $ff
    ld [hl], a
    ld a, $2f
    rst RST_28
    ret


Call_001_75cb:
    ld b, $20

jr_001_75cd:
    ld [hl+], a
    xor $01
    dec b
    jr nz, jr_001_75cd

    ret


Jump_001_75d4:
    ld e, $08
    ld a, [de]
    and a
    jr z, jr_001_75e2

    dec a
    ld [de], a
    ld a, $01
    ld [$ca61], a
    ret


jr_001_75e2:
    ld a, [$c26a]
    bit 2, a
    jr z, jr_001_75ef

    ld hl, $c364
    inc [hl]
    jr jr_001_75f8

jr_001_75ef:
    ld hl, $c364
    dec [hl]
    ld a, [hl]
    inc a
    jr nz, jr_001_75f8

    ld [hl], a

jr_001_75f8:
    ld hl, $c7ce
    dec [hl]
    jr z, jr_001_761e

    bit 0, [hl]
    ret nz

    dec l
    ld a, [hl]
    and a
    jr z, jr_001_7608

    dec [hl]
    ret


jr_001_7608:
    ld hl, $c360
    dec [hl]
    ld a, [$c211]
    sub $06
    sub [hl]
    ret c

    ld c, a
    xor a
    ld [$c27b], a
    ld [$c274], a
    jp Jump_001_4711


jr_001_761e:
    dec l
    dec l
    ld a, [hl]
    ld [$c364], a
    ld hl, $ca66
    ld a, $40
    ld [hl+], a
    ld a, $9b
    ld [hl+], a
    ld l, $61
    ld [hl], $01
    call Call_000_0090
    ld [hl], $01
    call Call_000_0090
    ld [hl], $01
    call Call_000_0090
    ld l, $66
    xor a
    ld [hl+], a
    ld a, $98
    ld [hl+], a
    ld l, $61
    ld [hl], $01
    call Call_000_0090
    ld b, $20
    ld hl, $c1d0
    ld a, $01

jr_001_7653:
    ld [hl+], a
    dec b
    jr nz, jr_001_7653

    ld a, $08
    ld [$c70c], a
    ld a, $90
    ld [$c360], a
    jp Jump_000_26db


Call_001_7664:
    ld e, $02
    ld b, $08

jr_001_7668:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_7668

    ret


    nop
    jr nz, jr_001_7674

    nop
    ld d, b

jr_001_7674:
    rlca
    add b
    ld c, a
    nop
    jr nz, jr_001_767c

    nop
    sub b

jr_001_767c:
    rlca
    add b
    ld c, a
    nop
    jr nz, @+$04

    nop
    ldh [rTAC], a
    add b
    ld c, a

Call_001_7687:
    call Call_001_4a93

Call_001_768a:
    ld bc, $1418
    call Call_001_7b88
    jr nc, jr_001_76cf

    ld a, $10
    ld [$c57f], a
    ld b, $21
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_76a1

    inc b

jr_001_76a1:
    ld a, b
    rst RST_28
    ld hl, $7d72
    ld a, [$df38]
    call Call_000_0071
    ld e, $0a
    ld a, [de]
    sub [hl]
    ld [de], a
    jr nc, jr_001_76cf

    ld e, $08
    xor a
    ld [de], a
    ld e, $0c
    ld a, $04
    ld [de], a
    xor a
    ld [$d80c], a
    ld a, $01
    ld [$d800], a
    ld a, $0c
    ld [$d809], a
    ld a, d
    ld [$d80a], a
    ret


jr_001_76cf:
    ld hl, $181c
    call Call_001_7b4b
    ld h, $f8
    ld l, $06
    call Call_001_6dca
    ld l, $00
    ld h, d
    ld a, [$c662]
    bit 3, a
    jr nz, jr_001_76e9

    res 7, [hl]
    ret


jr_001_76e9:
    set 7, [hl]
    ret


Call_001_76ec:
Jump_001_76ec:
    ld a, $15
    rst RST_28
    ld a, $01
    ld [$c7c4], a
    push bc
    call Call_001_4d5d
    pop bc
    ld l, $00
    ld e, l
    ld a, [de]
    and $23
    ld [hl+], a
    ld a, b
    ld [hl+], a
    inc l
    ld e, l
    ld a, [de]
    inc e
    add $08
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc l
    ld e, l
    ld a, [de]
    inc e
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld l, $0b
    ld a, $01
    ld [hl], a
    ld l, $09
    ld a, $0d
    ld [hl], a
    xor a
    ld l, $0c
    ld [hl], a
    ret


    call Call_000_0669
    ld de, $c70c
    ld a, [de]
    cp $08
    ret nc

    call Call_000_0b7d
    ld a, $77
    ld [hl], b
    ld [hl], a
    or e
    ld [hl], a
    db $d3
    ld [hl], a
    xor c
    ld a, b
    ld [hl], b
    ld a, b
    and d
    ld [hl], l
    call nc, Call_000_1e75
    ld [$a71a], sp
    jr z, jr_001_7747

    dec a
    ld [de], a
    ret


jr_001_7747:
    ld e, $00
    ld a, $07
    ld [de], a
    ld hl, $799a
    call Call_001_7664
    ld a, $20
    ld [de], a
    inc e
    ld a, $02
    ld [de], a
    ld e, $0c
    dec a
    ld [de], a
    inc e
    ld a, $06
    ld [de], a
    inc e
    ld a, $6c
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ret


    ld e, $08
    ld a, [de]
    and a
    jr z, jr_001_7793

    dec a
    ld [de], a
    ld h, a
    ld c, $07
    ld e, $06
    ld a, [de]
    ld b, a
    ld a, [$c206]
    sub b
    jr c, jr_001_7787

    set 5, c

jr_001_7787:
    ld a, h
    bit 2, a
    jr z, jr_001_778e

    set 4, c

jr_001_778e:
    ld a, c
    ld e, $00
    ld [de], a
    ret


jr_001_7793:
    call Call_001_7c7b
    or $30
    ld b, a
    ld c, $07
    bit 3, a
    jr nz, jr_001_77a1

    set 5, c

jr_001_77a1:
    ld e, $00
    ld a, c
    ld [de], a
    call Call_001_76ec
    ld l, $09
    ld a, $0b
    ld [hl], a
    ld e, $0c
    ld a, $02
    ld [de], a
    ret


    ld e, $08
    ld a, [de]
    cp $80
    jr z, jr_001_77ca

    ld c, $6c
    inc a
    ld [de], a
    ld e, $0e
    cp $20
    jr nc, jr_001_77c5

    inc c

jr_001_77c5:
    ld a, c
    ld [de], a
    jp Jump_001_78eb


jr_001_77ca:
    ld a, $20
    ld [de], a
    ld e, $0c
    ld a, $03
    ld [de], a
    ret


    ld e, $08
    ld a, [de]
    and a
    jr z, jr_001_77ea

    dec a
    ld [de], a
    ld e, $00
    bit 2, a
    ld a, [de]
    jr z, jr_001_77e6

    set 4, a
    ld [de], a
    ret


jr_001_77e6:
    res 4, a
    ld [de], a
    ret


jr_001_77ea:
    ld e, $0d
    ld a, [de]
    ld hl, $793a
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_001_7c7b
    pop hl
    srl a
    srl a
    call Call_000_0071
    ld a, [hl]
    and $0f
    ld e, $0d
    ld [de], a
    ld b, a
    ld a, [hl]
    swap a
    and $0f
    ld e, $01
    ld [de], a
    ld c, $07
    bit 3, a
    jr nz, jr_001_781a

    set 5, c

jr_001_781a:
    dec e
    ld a, c
    ld [de], a
    ld hl, $7982
    ld a, b
    rlca
    call Call_000_0071
    ld e, $18
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld hl, $c900
    ld a, $03
    call Call_001_78d1
    ld e, $01
    ld a, [de]
    or $10
    ld l, e
    call Call_001_78db
    ld e, $06
    ld a, [de]
    ld l, e
    call Call_001_78d1
    inc l
    inc e
    ld a, [de]
    call Call_001_78d1
    ld e, $03
    ld a, [de]
    ld l, e
    call Call_001_78d1
    inc l
    inc e
    ld a, [de]
    call Call_001_78d1
    ld l, $09
    ld a, $0a
    call Call_001_78d1
    ld l, $0c
    xor a
    call Call_001_78d1
    ld e, l
    ld a, $05
    ld [de], a
    inc e
    inc e
    ld a, $2d
    ld [de], a
    jp $4a6a


    call Call_001_4a93
    ld e, $00
    ld a, [de]
    bit 3, a
    jr nz, jr_001_7886

    ld bc, $0e10
    call Call_001_7b88
    ld hl, $1210
    call Call_001_7b4b

jr_001_7886:
    ld h, d
    ld e, $03
    ld l, $18
    ld a, [de]
    sub [hl]
    ret nz

    ld e, $06
    ld l, $19
    ld a, [de]
    sub [hl]
    ret nz

    ld e, $0e
    ld a, $6c
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0c
    inc a
    ld [de], a
    ld e, $08
    ld a, $20
    ld [de], a
    ret


Jump_001_78a9:
    ld e, $08
    ld a, [de]
    inc a
    ld [de], a
    jp z, Jump_001_7578

    ld e, $00
    bit 2, a
    ld a, [de]
    jr nz, jr_001_78bc

    set 4, a
    jr jr_001_78be

jr_001_78bc:
    res 4, a

jr_001_78be:
    ld [de], a
    ld a, $8f
    ld [$c360], a
    ret


    ld a, $f0
    rst RST_28
    call Call_000_2626
    ld a, $06
    ld [$c70c], a
    ret


Call_001_78d1:
    push hl
    ld b, $03

jr_001_78d4:
    ld [hl], a
    inc h
    dec b
    jr nz, jr_001_78d4

    pop hl
    ret


Call_001_78db:
    push hl
    ld b, $03

jr_001_78de:
    swap a
    add $40
    swap a
    ld [hl], a
    inc h
    dec b
    jr nz, jr_001_78de

    pop hl
    ret


Jump_001_78eb:
    call Call_001_7d61
    ld hl, $1a18
    call Call_001_7b4b
    ld bc, $1818
    call Call_001_7b88
    ret nc

Jump_001_78fb:
    ld a, [$df38]
    ld c, a
    cp $02
    ret z

    ld a, $10
    ld [$c57f], a
    ld b, $21
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_7911

    inc b

jr_001_7911:
    ld a, b
    rst RST_28
    ld hl, $7d72
    ld a, c
    call Call_000_0071
    ld e, $0a
    ld a, [de]
    sub [hl]
    ld [de], a
    ret nc

    ld e, $08
    xor a
    ld [de], a
    ld e, $0c
    ld a, $04
    ld [de], a
    ld hl, $d80c
    xor a
    ld [hl], a
    inc a
    ld l, $00
    ld [hl], a
    ld a, $0c
    ld l, $09
    ld [hl+], a

jr_001_7937:
    ld a, d
    ld [hl], a
    ret


    ld d, d
    ld a, c
    ld d, [hl]
    ld a, c
    ld e, d
    ld a, c
    ld e, [hl]
    ld a, c
    ld h, d
    ld a, c
    ld h, [hl]
    ld a, c
    ld l, d
    ld a, c
    ld l, [hl]
    ld a, c
    ld [hl], d
    ld a, c
    halt
    ld a, c
    ld a, d
    ld a, c
    ld a, [hl]
    ld a, c
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, h
    ld h, h
    and e
    and e
    and h
    and h
    and h
    and h
    ld hl, $a566
    ldh [rNR43], a
    ld h, a
    and [hl]
    pop hl
    inc hl
    ld l, d
    ld l, d
    inc hl
    inc h
    ld l, c
    xor d
    db $e3
    ld l, b
    ld l, b
    xor c
    db $e4
    rst RST_20
    rst RST_20
    rst RST_20
    rst RST_20
    daa
    daa
    and $e6
    ld h, $26
    xor e
    push hl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld c, b
    jr nz, jr_001_79cd

    add b
    ld c, b
    ldh [$ff78], a
    ld d, b
    ld a, b
    or b
    sbc b
    jr nc, jr_001_7937

    add b
    sbc b
    ret nc

    cp b
    ldh a, [$ffc8]
    and b
    ret z

    ld h, b
    ld hl, sp+$30
    nop
    xor b
    nop
    nop
    add b
    rlca
    ld b, b
    nop
    call Call_000_0669
    ld de, $c70c
    ld a, [de]
    and a
    jr z, jr_001_79c2

    dec a
    jr z, jr_001_79f8

    dec a
    jp z, Jump_001_7a44

    sub $02
    jp z, Jump_001_78a9

    sub $02
    jp z, Jump_001_75a2

    dec a
    jp z, Jump_001_75d4

    ret


jr_001_79c2:
    ld e, $08
    ld a, [de]
    and a
    jr z, jr_001_79cb

    dec a
    ld [de], a
    ret


jr_001_79cb:
    ld e, $00

jr_001_79cd:
    ld a, $07
    ld [de], a
    inc e
    ld a, $04
    ld [de], a
    call $4a6a
    ld hl, $7ae5
    call Call_001_7664
    ld a, $40
    ld [de], a
    inc e
    ld a, $02
    ld [de], a
    ld e, $0c
    dec a
    ld [de], a
    inc e
    inc e
    ld a, $63
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ret


jr_001_79f8:
    ld e, $08
    ld a, $60
    ld [de], a
    ld e, $0c
    ld a, $02
    ld [de], a
    inc e
    ld a, [$c363]
    and a
    jr z, jr_001_7a13

    call Call_000_0bbf
    and $03
    jr nz, jr_001_7a13

    xor a
    ld [de], a
    ret


jr_001_7a13:
    ld a, $01
    ld [de], a
    ld hl, $c203
    ld e, l
    ld a, [de]
    sub [hl]
    jr c, jr_001_7a2f

    ld e, $18
    xor a
    ld [de], a
    inc e
    ld a, $03
    ld [de], a
    inc e
    ld a, $18
    ld [de], a
    ld e, $0d
    ld a, $03
    ld [de], a

jr_001_7a2f:
    ld bc, $070c
    ld e, $06
    ld l, e
    ld a, [de]
    sub [hl]
    jr nc, jr_001_7a3c

    ld bc, $2704

jr_001_7a3c:
    ld e, $00
    ld a, b
    ld [de], a
    inc e
    ld a, c
    ld [de], a
    ret


Jump_001_7a44:
    ld e, $0d
    ld a, [de]
    rrca
    jr c, jr_001_7a57

    ld e, $08
    ld a, [de]
    dec a
    ld [de], a
    jp nz, Jump_001_78eb

    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_7a57:
    rrca
    jr nc, jr_001_7a6a

    call Call_001_7aed
    jr nc, jr_001_7a9a

    ld e, $18
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld e, $0d
    ld a, $01
    ld [de], a

jr_001_7a6a:
    ld e, $0d
    ld a, [de]
    rlca
    jr c, jr_001_7a73

    call Call_001_7b18

jr_001_7a73:
    ld h, $08
    ld l, $10
    call Call_001_6dca
    ld c, $81
    ld hl, $c660
    ld a, [hl+]
    or [hl]
    inc l
    or [hl]
    jr nz, jr_001_7a87

    ld c, $01

jr_001_7a87:
    ld a, c
    ld e, $0d
    ld [de], a
    rlca
    jr nc, jr_001_7a9a

    ld e, $08
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_001_7a9a

    ld e, $0c
    inc a
    ld [de], a
    ret


jr_001_7a9a:
    call Call_001_7aba
    call Call_001_4a93
    ld e, $06
    ld a, [de]
    ld bc, $070c
    cp $f0
    jr z, jr_001_7ab0

    ld bc, $2704
    cp $10
    ret nz

jr_001_7ab0:
    ld e, $00
    ld a, b
    ld [de], a
    inc e
    ld a, c
    ld [de], a
    jp Jump_001_4a93


Call_001_7aba:
    ld e, $1b
    ld a, [de]
    inc a
    ld [de], a
    and $7f
    jr nz, jr_001_7ae2

    call Call_001_7c7b
    or $10
    ld b, a
    call Call_001_76ec
    ld l, $09
    ld a, $0b
    ld [hl], a
    ld l, $06
    ld e, $00
    ld a, [de]
    bit 5, a
    ld a, [hl]
    jr z, jr_001_7adf

    add $18
    jr jr_001_7ae1

jr_001_7adf:
    sub $18

jr_001_7ae1:
    ld [hl], a

jr_001_7ae2:
    jp Jump_001_78eb


    nop
    ret nc

    rlca
    nop
    ret nz

    ld [bc], a
    ld b, b
    nop

Call_001_7aed:
    ld e, $1a
    ld a, [de]
    ld b, a
    ld e, $18
    ld a, [de]
    sub b
    ld [de], a
    jr nc, jr_001_7afe

    inc e
    ld a, [de]
    sub $01
    ld [de], a
    ret c

jr_001_7afe:
    ld e, $18
    ld a, [de]
    inc e
    ld b, a
    ld a, [de]
    ld c, a
    ld e, $02
    ld a, [de]
    add b
    ld [de], a
    jr nc, jr_001_7b0d

    inc c

jr_001_7b0d:
    inc e
    ld a, [de]
    sub c
    ld [de], a
    ret nc

    inc e
    ld a, [de]
    dec a
    ld [de], a
    and a
    ret


Call_001_7b18:
    ld e, $1a
    ld a, [de]
    ld b, a
    ld e, $18
    ld a, [de]
    add b
    ld [de], a
    jr nc, jr_001_7b32

    inc e
    ld a, [de]
    inc a
    ld [de], a
    cp $04
    jr nz, jr_001_7b32

    ld a, $03
    ld [de], a
    dec e
    xor a
    sub b
    ld [de], a

jr_001_7b32:
    ld e, $18
    ld a, [de]
    inc e
    ld b, a
    ld a, [de]
    ld c, a
    ld e, $02
    ld a, [de]
    add b
    ld [de], a
    jr nc, jr_001_7b41

    inc c

jr_001_7b41:
    inc e
    ld a, [de]
    add c
    ld [de], a
    ret nc

    inc e
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_001_7b4b:
Jump_001_7b4b:
    ld b, $00
    ld a, [$c27b]
    bit 4, a
    jr z, jr_001_7b5a

    ld a, h
    sub $04
    ld h, a
    ld b, $fd

Call_001_7b5a:
jr_001_7b5a:
    ld a, [$c203]
    add b
    ld b, a
    ld a, [$c206]
    ld c, a
    ld e, $03
    ld a, [de]
    sub b
    add h
    sla h
    sub h
    ret nc

    ld e, $06
    ld a, [de]
    sub c
    add l
    sla l
    sub l
    ret nc

    ld e, $0b
    ld a, [de]
    and a
    jr z, jr_001_7b86

    ld [$c663], a
    ld a, [$c36a]
    or $10
    ld [$c36a], a

jr_001_7b86:
    scf
    ret


Call_001_7b88:
Jump_001_7b88:
    ld a, [$c291]
    and a
    ret z

    ld a, [$c29e]
    ld [$c7cc], a
    ld h, $c3

jr_001_7b95:
    push bc
    ld l, $00
    ld a, [hl]
    bit 0, a
    jr z, jr_001_7bbb

    ld l, $11
    ld e, l
    ld a, [de]
    sub [hl]
    add b
    sla b
    sub b
    jr nc, jr_001_7bbb

    inc l
    inc e
    ld a, [de]
    sub [hl]
    add c
    sla c
    sub c
    jr nc, jr_001_7bbb

    pop bc
    xor a
    dec l
    ld [hl], a
    ld l, $00
    ld [hl], a
    scf
    ret


jr_001_7bbb:
    pop bc
    inc h
    ld a, [$c7cc]
    dec a
    ld [$c7cc], a
    jr nz, jr_001_7b95

    ret


Jump_001_7bc7:
jr_001_7bc7:
    ld b, $25
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_7bd1

    inc b

jr_001_7bd1:
    ld a, b
    rst RST_28
    ld l, $01
    ld a, [hl]
    and $0f
    res 2, a
    rlca
    rlca
    ld e, $00
    or $01
    ld [de], a

Jump_001_7be1:
    ld e, $09
    ld a, $0f
    ld [de], a
    ld e, $0b
    ld a, $07
    ld [de], a
    xor a
    ld e, $13
    ld [de], a
    ld e, $0c
    ld [de], a

Jump_001_7bf2:
    ld b, $ca
    ld e, $08
    ld a, [de]
    add $20
    ld c, a
    ld a, [bc]
    res 0, a
    ld [bc], a
    ret


Call_001_7bff:
    push hl
    ld h, b
    ld l, c
    ld a, [$df38]
    call Call_000_0071
    ld e, $0a
    ld a, [de]
    sub [hl]
    ld [de], a
    pop hl
    jr nc, jr_001_7c13

    pop bc
    jr jr_001_7bc7

jr_001_7c13:
    ld b, $21
    ld e, $12
    ld a, [de]
    cp $58
    jr c, jr_001_7c1d

    inc b

jr_001_7c1d:
    ld a, b
    rst RST_28
    ret


Call_001_7c20:
    ld e, $01
    ld [de], a
    and $08
    ld e, $00
    ld a, [de]
    jr nz, jr_001_7c2e

    or $20
    jr jr_001_7c30

jr_001_7c2e:
    and $df

jr_001_7c30:
    ld [de], a
    ret


Call_001_7c32:
    ld e, $1a
    ld hl, $c203
    jr jr_001_7c45

Call_001_7c39:
    ld h, d
    ld e, $03
    ld l, $1a
    jr jr_001_7c45

Call_001_7c40:
    ld e, $03
    ld hl, $c203

Call_001_7c45:
jr_001_7c45:
    ld a, [de]
    sub [hl]
    ld [$c7c4], a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    jr z, jr_001_7c5a

    add $01
    ret nc

    ld a, [$c7c4]
    add b
    jr c, jr_001_7c5f

    ret


jr_001_7c5a:
    ld a, [$c7c4]
    cp b
    ret nc

jr_001_7c5f:
    inc l
    inc l
    inc e
    inc e
    ld a, [de]
    sub [hl]
    ld [$c7c5], a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    jr z, jr_001_7c76

    add $01
    ret nc

    ld a, [$c7c5]
    add c
    ret


jr_001_7c76:
    ld a, [$c7c5]
    cp c
    ret


Call_001_7c7b:
    ld hl, $c203

Call_001_7c7e:
    ld e, $03
    ld c, [hl]
    inc l
    ld b, [hl]
    push hl
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    rlca
    ld e, $00
    jr nc, jr_001_7ca0

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    ld e, $04

jr_001_7ca0:
    pop bc
    push hl
    push de
    ld h, b
    ld l, c
    inc l
    inc l
    ld e, $06
    ld c, [hl]
    inc l
    ld b, [hl]
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    rlca
    pop de
    jr nc, jr_001_7cc7

    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    cpl
    adc $00
    ld h, a
    inc e
    inc e

jr_001_7cc7:
    pop bc
    push hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    rlca
    jr nc, jr_001_7ce4

    ld a, l
    ld l, c
    ld c, a
    ld a, h
    ld h, b
    ld b, a
    ld a, e
    or a
    jr z, jr_001_7ce1

    cp $04
    jr nz, jr_001_7cee

jr_001_7ce1:
    inc e
    jr jr_001_7cee

jr_001_7ce4:
    ld a, e
    cp $02
    jr z, jr_001_7ced

    cp $06
    jr nz, jr_001_7cee

jr_001_7ced:
    inc e

jr_001_7cee:
    sla e
    sla e
    srl h
    rr l
    srl h
    rr l
    push hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    rlca
    jr nc, jr_001_7d16

    inc e
    push bc
    push hl
    add hl, hl
    pop bc
    add hl, bc
    pop bc
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b

jr_001_7d11:
    ld h, a
    rlca
    jr nc, jr_001_7d16

    inc e

jr_001_7d16:
    ld hl, $7d1f
    ld a, e
    call Call_000_0071
    ld a, [hl]

jr_001_7d1e:
    ret


    inc c
    dec c
    ld c, $00
    nop
    rrca
    ld c, $00
    nop
    ld bc, $0002
    inc b
    inc bc
    ld [bc], a
    nop
    inc c
    dec bc
    ld a, [bc]
    nop
    ld [$0a09], sp
    nop
    ld [$0607], sp
    nop
    inc b
    dec b
    ld b, $00

Call_001_7d3f:
Jump_001_7d3f:
    ld a, $03
    ld [hl], a
    push de
    ld d, h
    ld a, c
    call Call_001_7c20
    pop de
    ld e, $03
    ld l, e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc l
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc l
    ld [hl], b
    xor a
    ld l, $0c
    ld [hl-], a
    inc a
    ld [hl], a
    ret


Call_001_7d61:
    ld e, $00
    ld a, [de]
    bit 3, a
    ret z

    pop bc
    ret


Call_001_7d69:
Jump_001_7d69:
    ld e, $0e
    ld [de], a
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    ret


    ld bc, $0002
    ld [$0101], sp
    ld [bc], a
    inc b
    adc b
    ld a, l
    adc b
    ld a, l
    cp d
    ld a, l
    db $ec
    ld a, l
    ld e, $7e
    ld d, b
    ld a, [hl]
    add d

jr_001_7d87:
    ld a, [hl]
    ld [$d618], sp
    ld e, l
    jr jr_001_7d1e

    ld d, b
    jr nz, jr_001_7d11

    db $10
    add b
    add b
    db $10
    inc de
    ld e, b
    ld e, b
    inc de
    ret z

    db $10
    ld [hl], b
    jr jr_001_7e0e

    ld hl, sp+$72
    nop
    add hl, bc
    ld [hl], $af
    cp [hl]
    ld [hl], $e8
    or c
    ld a, $d8
    ld [hl], c
    add b
    add b
    ld d, $16
    ld e, b
    ld e, b
    rla
    jr z, jr_001_7dca

    add b
    jr z, jr_001_7d87

    ld hl, sp-$2d
    ld bc, $0a08
    or e
    sub $09
    db $f4
    reti


    ld de, $99e4
    add b
    add b
    ld de, $5811
    ld e, b

jr_001_7dca:
    ld [de], a
    ld c, b
    ld [de], a
    db $10
    cp b
    ldh a, [$ff08]
    db $fc
    rla
    add hl, bc
    ld d, $bd
    ld a, [$fe15]
    db $fd
    dec e
    xor $bd
    add b
    add b
    dec d
    inc de
    ld e, b
    ld e, b
    inc de
    ld l, b
    ld d, $40
    add sp, $10
    ld hl, sp+$1f
    ld [bc], a
    ld [$ff00], sp
    rst RST_38
    nop
    cp c
    ldh a, [c]
    ld [$b2a9], sp
    add b
    add b
    db $10
    ld de, $5858
    ld de, $1068
    and b
    ld c, b
    db $10
    ld [$1715], sp
    add hl, bc
    cpl
    sbc e
    halt
    ld l, $dc
    ld a, c
    ld [hl], $cc

jr_001_7e0e:
    add hl, sp
    add b
    add b
    ld d, $15
    ld e, b
    ld e, b
    dec d
    add sp, $17
    db $10
    cp b
    sub b
    ld [$039c], sp
    ld [$f402], sp
    reti


    ld bc, $dcb6
    add hl, bc

jr_001_7e26:
    and [hl]
    sbc h
    add b
    add b
    ld de, $5810
    ld e, b
    ld de, $1248
    ld b, b
    add sp, -$10
    ld [$29ff], sp
    add hl, bc
    ld c, $1d
    ld l, d
    dec c
    ld e, [hl]
    ld l, l
    dec d
    ld c, [hl]
    dec l
    add b
    add b
    dec d
    ld de, $5858
    ld de, $16d8
    ld d, b
    ld hl, sp-$80
    ld [$0480], sp
    ld [$920b], sp
    ld d, h
    ld a, [bc]
    db $d3
    ld d, a
    ld [de], a
    jp $8017


    add b
    ld [de], a
    ld de, $5858
    ld de, $12c8
    ldh a, [$ff98]
    ld [hl], b
    ld [$297a], sp
    add hl, bc
    daa
    jp nc, Jump_000_2655

    sub h
    ld e, b
    ld l, $84
    jr @-$7e

    add b
    ld d, $14
    ld e, b
    ld e, b
    inc d
    ret z

    rla
    nop
    xor b
    ld [hl], b
    ld [$057b], sp
    ld [$771b], sp
    rst RST_08
    dec de
    ld sp, $23c2
    ld hl, $8082
    add b
    inc de
    inc de
    ld e, b
    ld e, b
    inc d
    jr c, jr_001_7ea8

    and b
    ld c, b
    ldh [$ff08], a
    push hl
    inc e
    add hl, bc
    ld b, $d2
    ld d, l
    dec b
    sub h
    ld e, b
    dec c
    add h
    jr jr_001_7e26

    add b
    dec d

jr_001_7ea8:
    db $10
    ld e, b
    ld e, b
    db $10
    ret z

    dec d
    ldh a, [$ff98]
    ld [hl], b
    ld hl, sp+$7a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
