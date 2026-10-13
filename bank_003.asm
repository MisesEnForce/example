; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    jp Jump_003_4030


    jp Jump_003_4110


Call_003_4006:
    ld l, $00
    ld b, $00
    ld a, $08

jr_003_400c:
    add hl, hl
    jr nc, jr_003_4010

    add hl, bc

jr_003_4010:
    dec a
    jr nz, jr_003_400c

    ret


Call_003_4014:
    pop hl
    call Call_003_4019
    jp hl


Call_003_4019:
    add a

Call_003_401a:
    push bc
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ret


Call_003_4024:
    ld hl, $de92
    add [hl]
    inc hl
    ld h, [hl]
    jr nc, jr_003_402d

    inc h

jr_003_402d:
    ld l, a
    ld a, [hl]
    ret


Jump_003_4030:
    ld a, [$de90]
    rrca
    ret c

    ld hl, $dea2
    ld a, [hl+]
    or [hl]
    call nz, Call_003_42c5
    ld hl, $de96
    ld a, [$de98]
    add [hl]
    ld [hl+], a
    ld a, [$de99]
    adc $00
    ld [hl], a
    ldh a, [rNR51]
    ld [$de94], a
    ld de, $de00
    ld a, $30
    ld [$de95], a
    xor a

jr_003_4059:
    ld [$de91], a
    ld hl, $de90
    set 2, [hl]
    ld hl, $dea0
    rrc [hl]
    call c, Call_003_4369
    ld hl, $de90
    res 2, [hl]
    bit 1, [hl]
    jr nz, jr_003_4083

    push de
    ld hl, $de00
    ld a, [$de95]
    ld d, $00
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    call Call_003_4431
    pop de

jr_003_4083:
    ld hl, $000c
    add hl, de
    ld d, h
    ld e, l
    ld hl, $de95
    ld a, $18
    add [hl]
    ld [hl], a
    ld hl, $de9a
    rrc [hl]
    ld hl, $de94
    rrc [hl]
    ld a, [$de91]
    add $05
    cp $14
    jr nz, jr_003_4059

    ld hl, $de9a
    swap [hl]
    ld hl, $de94
    swap [hl]
    ld e, [hl]
    ld hl, $de90
    res 0, [hl]
    ld a, [$dea0]
    swap a
    ld [$dea0], a
    jr nz, jr_003_4104

    bit 1, [hl]
    ret nz

    ld hl, $de9d
    ld a, [hl+]
    ld d, a
    and $7f
    jr nz, jr_003_40d0

    bit 7, d
    jr z, jr_003_4104

    ldh [rNR51], a
    ret


jr_003_40d0:
    push af
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, l
    ld [$de9f], a
    ld a, h
    jr nc, jr_003_40f2

    ld a, [$de9d]
    and $80
    ld [$de9d], a
    bit 7, d
    jr z, jr_003_40f0

    ld e, $00

jr_003_40f0:
    ld a, $ff

jr_003_40f2:
    ld [$de9e], a
    bit 7, d
    jr z, jr_003_40fa

    cpl

jr_003_40fa:
    srl a
    and $70
    ld b, a
    swap a
    or b
    ldh [rNR50], a

jr_003_4104:
    ld a, e
    ldh [rNR51], a
    ret


Call_003_4108:
Jump_003_4108:
    ld a, [$de91]
    add c
    ld c, a
    ld a, b
    ldh [c], a
    ret


Jump_003_4110:
    ld hl, $de90
    inc [hl]
    call Call_003_411c
    ld hl, $de90
    dec [hl]
    ret


Call_003_411c:
    cp $f0
    jp nc, Jump_003_41a5

    ld hl, $4b00

jr_003_4124:
    cp [hl]
    jr c, jr_003_412a

    sub [hl]
    jr jr_003_4124

Call_003_412a:
jr_003_412a:
    ld d, a
    ld hl, $4b05
    call Call_003_4019
    ld a, h
    ld h, l
    ld l, a
    or h
    ret z

    ld a, [hl]
    or a
    jr z, jr_003_4171

    inc hl
    ld b, h
    ld c, l
    ld e, a
    and $7f
    ld hl, $dea1
    cp [hl]
    ret c

    ld [hl], a
    jr nz, jr_003_4153

    ld hl, $dea4
    bit 7, [hl]
    jr z, jr_003_4153

    xor a
    ld [$dea5], a

jr_003_4153:
    ld a, e
    ld [$dea4], a
    rlca
    jr nc, jr_003_415f

    ld a, d
    inc a
    ld [$dea5], a

jr_003_415f:
    ld a, c
    ld [$dea2], a
    ld a, b
    ld [$dea3], a
    ld b, $07
    ld hl, $dea6
    call Call_003_41d7
    jr jr_003_41a0

jr_003_4171:
    push hl
    call Call_003_41e6
    ld hl, $de98
    ld [hl], $99
    inc hl
    ld [hl], $01
    pop hl
    ld de, $de30
    ld a, $04

jr_003_4183:
    push af
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    push hl
    ld a, [bc]
    cp $17
    jr z, jr_003_4195

    ld hl, $000d
    add hl, de
    ld [hl], b
    dec hl
    ld [hl], c

jr_003_4195:
    ld hl, $0018
    add hl, de
    ld d, h
    ld e, l
    pop hl
    pop af
    dec a
    jr nz, jr_003_4183

jr_003_41a0:
    ld a, $77
    ldh [rNR50], a
    ret


Jump_003_41a5:
    and $07
    call Call_003_4014
    cp d
    ld b, c
    cp l
    ld b, c
    and $41
    dec bc
    ld b, d
    ld [de], a
    ld b, d
    or a
    ld b, d
    or l
    ld b, d
    add [hl]
    ld b, d
    call Call_003_41e6

Jump_003_41bd:
    ld b, $0c
    ld hl, $dea1
    call Call_003_41d7
    ld a, [$dea0]
    or a
    ret z

Call_003_41ca:
    xor $0f
    ld [$dea0], a
    call Call_003_4217
    xor a
    ld [$dea0], a
    ret


Call_003_41d7:
    xor a

jr_003_41d8:
    ld [hl+], a
    dec b
    jr nz, jr_003_41d8

    ld b, $30
    ld hl, $de00

jr_003_41e1:
    ld [hl+], a
    dec b
    jr nz, jr_003_41e1

    ret


Call_003_41e6:
    ld a, $ff
    ld [$de9a], a
    xor a
    ld hl, $de98
    ld [hl+], a
    ld [hl], a
    ld [$de96], a
    ld [$de9b], a
    ld [$de9c], a
    ld hl, $de9d
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld b, $60
    ld hl, $de30

jr_003_4205:
    ld [hl+], a
    dec b
    jr nz, jr_003_4205

    jr jr_003_4217

    ld hl, $de90
    set 1, [hl]
    jr jr_003_4217

    ld hl, $de90
    res 1, [hl]

Call_003_4217:
jr_003_4217:
    ld hl, $de90
    bit 3, [hl]
    jr nz, jr_003_4231

    set 3, [hl]
    ld a, $80
    ldh [rNR52], a
    ld a, $08
    ldh [rNR10], a
    xor a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    ldh [rNR34], a

jr_003_4231:
    ld de, $de30
    ldh a, [rNR51]
    ld [$de94], a
    xor a

jr_003_423a:
    ld [$de91], a
    ld b, a
    ld hl, $dea0
    rrc [hl]
    jr c, jr_003_425e

    cp $0a
    jr nc, jr_003_4252

    add $11
    ld c, a
    ld hl, $000b
    add hl, de
    ld a, [hl]
    ldh [c], a

jr_003_4252:
    ld a, [$de94]
    and $ee
    ld [$de94], a
    ld c, a
    call Call_003_4287

jr_003_425e:
    ld hl, $0018
    add hl, de
    ld d, h
    ld e, l
    ld hl, $de9a
    rrc [hl]
    ld hl, $de94
    rrc [hl]
    ld a, [$de91]
    add $05
    cp $14
    jr nz, jr_003_423a

    swap [hl]
    ld a, [hl]
    ldh [rNR51], a
    ld hl, $de9a
    swap [hl]
    ld hl, $dea0
    swap [hl]
    ret


Call_003_4287:
    ld hl, $de90
    bit 1, [hl]
    ret nz

    ld a, [$de9d]
    cp $80
    ret z

    ld hl, $0017
    add hl, de
    ld a, [hl]
    or a
    ret z

    ld a, [$de9a]
    and $11
    or c
    ld [$de94], a
    ld a, b
    cp $0a
    ld a, [hl]
    jp nz, Jump_003_4706

    call Call_003_46b7
    ld a, [$de9c]
    or a
    jp nz, Jump_003_4825

    ret


    set 7, b
    ld hl, $de9d
    ld a, b
    and $7f
    jr z, jr_003_42c0

    ld a, b

jr_003_42c0:
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_003_42c5:
    ld a, [$dea7]
    or a
    jr z, jr_003_42d4

    dec a
    ld [$dea7], a
    ld hl, $deaa
    dec [hl]
    ret


jr_003_42d4:
    call Call_003_441f
    or a
    jr nz, jr_003_42ea

    ld [$dea1], a
    ld a, [$dea5]
    or a
    jp z, Jump_003_41bd

    dec a
    call Call_003_412a
    jr jr_003_42d4

jr_003_42ea:
    push af
    call Call_003_441f
    ld e, a
    srl e
    jr nc, jr_003_431d

    call Call_003_441f
    or a
    jr z, jr_003_4300

    ld hl, $deac
    cp [hl]
    jr z, jr_003_4311

    inc [hl]

jr_003_4300:
    call Call_003_441f
    push af
    call Call_003_441f
    ld [$dea2], a
    pop af
    ld [$dea3], a
    pop af
    jr jr_003_42d4

jr_003_4311:
    ld [hl], $00
    ld hl, $dea2
    ld a, [hl]
    add $02
    ld [hl+], a
    jr nc, jr_003_431d

    inc [hl]

jr_003_431d:
    srl e
    jr nc, jr_003_4327

    call Call_003_441f
    ld [$dea8], a

jr_003_4327:
    srl e
    jr nc, jr_003_4331

    call Call_003_441f
    ld [$dea6], a

jr_003_4331:
    call Call_003_441f
    ld [$dea7], a
    ld h, a
    ld a, [$dea8]
    ld c, a
    call Call_003_4006
    ld a, h
    inc a
    ld [$deaa], a
    ld hl, $de90
    inc [hl]
    call Call_003_441f
    push af
    ld hl, $dea0
    xor [hl]
    call nz, Call_003_41ca
    pop af
    ld [$dea0], a
    ld e, a
    swap a
    or e
    ld e, a
    pop af
    and e
    ld d, a
    ld a, e
    cpl
    ld hl, $de94
    and [hl]
    or d
    ldh [rNR51], a
    ret


Call_003_4369:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    or a
    call nz, Call_003_484a
    ld hl, $de90
    bit 0, [hl]
    jr nz, jr_003_43a2

    call Call_003_4976
    ld a, [$dea7]
    or a
    ret z

    ld a, [$de91]
    cp $0a
    jr nz, jr_003_438f

    ld hl, $deab
    dec [hl]
    jr z, jr_003_4394

    ret


jr_003_438f:
    ld a, [$deaa]
    or a
    ret nz

jr_003_4394:
    ld hl, $0001
    add hl, de
    bit 0, [hl]
    ret nz

    ld hl, $0004
    add hl, de
    ld [hl], $03
    ret


jr_003_43a2:
    ld c, $00
    call Call_003_441f

jr_003_43a7:
    srl a
    jr nc, jr_003_43b7

    push af
    call Call_003_441f
    ld b, a
    ld a, c
    push bc
    call Call_003_43bc
    pop bc
    pop af

jr_003_43b7:
    jr z, jr_003_43c9

    inc c
    jr jr_003_43a7

Call_003_43bc:
    call Call_003_4014
    db $ed
    ld b, a
    ld l, a
    ld c, b
    jp z, Jump_003_6947

    ld c, b
    ld h, e
    ld c, b

jr_003_43c9:
    call Call_003_441f
    ld hl, $0001
    add hl, de
    res 0, [hl]
    res 5, [hl]
    push hl
    ld b, a
    ld hl, $0007
    add hl, de
    ld a, [hl+]
    sla a
    jr z, jr_003_43ed

    ld a, $5f
    jr c, jr_003_43e5

    ld a, $01

jr_003_43e5:
    ld [hl], a
    ld hl, $0001
    add hl, de
    set 5, [hl]
    ld a, b

jr_003_43ed:
    pop hl
    ld a, b
    dec a
    cp $fe
    jr c, jr_003_43fc

    set 0, [hl]
    jp z, Jump_003_4781

    jp Jump_003_47c1


jr_003_43fc:
    ld a, [$de91]
    cp $0a
    jr c, jr_003_4417

    jr nz, jr_003_441c

    push bc
    ld a, [$dea7]
    ld h, a
    ld a, [$dea9]
    ld c, a
    call Call_003_4006
    ld a, h
    inc a
    ld [$deab], a
    pop bc

jr_003_4417:
    ld a, [$dea6]
    add b
    ld b, a

jr_003_441c:
    jp Jump_003_467b


Call_003_441f:
    ld hl, $dea2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    push af
    ld a, l
    ld [$dea2], a
    ld a, h
    ld [$dea3], a
    pop af
    ret


Call_003_4431:
    ld hl, $000d
    add hl, de
    ld a, [hl-]
    or [hl]
    ret z

    ld hl, $0010
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_003_446b

    push hl
    ld a, [de]
    or a
    jr z, jr_003_444b

    call Call_003_484a
    call Call_003_4976

jr_003_444b:
    ld a, [$de97]
    ld b, a
    ld hl, $0012
    add hl, de
    ld a, [hl]
    sub b
    ld [hl], a
    jr z, jr_003_445a

    jr nc, jr_003_4460

jr_003_445a:
    ld hl, $0004
    add hl, de
    ld [hl], $03

jr_003_4460:
    pop hl
    ld a, [hl]
    sub b
    ld [hl], a
    jr z, jr_003_446b

    jr c, jr_003_446b

    cp $c1
    ret c

jr_003_446b:
    call Call_003_4649
    cp $20
    jp c, Jump_003_454b

    push af
    swap a
    rrca
    and $07
    dec a
    ld hl, $000e
    add hl, de
    ld bc, $465d
    bit 4, [hl]
    jr nz, jr_003_448e

    bit 5, [hl]
    jr z, jr_003_4493

    ld bc, $4656
    jr jr_003_4493

jr_003_448e:
    res 4, [hl]
    ld bc, $4664

jr_003_4493:
    ld h, $00
    ld l, a
    add hl, bc
    ld a, [hl]
    ld hl, $0010
    add hl, de
    add [hl]
    ld [hl], a
    pop af
    and $1f
    jr nz, jr_003_44ab

    ld hl, $0017
    add hl, de
    ld [hl], a
    jp Jump_003_4543


jr_003_44ab:
    ld b, a
    ld a, [$dea0]
    rlca
    jr c, jr_003_44c1

    ld a, [$de94]
    and $ee
    ld c, a
    ld a, [$de9a]
    and $11
    or c
    ld [$de94], a

jr_003_44c1:
    ld hl, $000e
    add hl, de
    ld a, [$de91]
    cp $0f
    jr nz, jr_003_44d6

    ld a, [hl]
    and $07
    swap a
    or b
    ld b, a
    jp Jump_003_4519


jr_003_44d6:
    ld a, [hl]
    and $0f
    ld hl, $466b
    call Call_003_401a
    add b
    ld hl, $de9b
    add [hl]
    ld hl, $000f
    add hl, de
    add [hl]
    cp $91
    jr c, jr_003_44ef

    ld a, $90

jr_003_44ef:
    ld b, a
    ld c, a
    ld hl, $0007
    add hl, de
    ld a, [hl+]
    or a
    jr z, jr_003_4510

    ld a, [hl]
    or a
    jr z, jr_003_4510

    cp b
    jr nz, jr_003_4503

    xor a
    jr jr_003_4510

jr_003_4503:
    dec hl
    jr nc, jr_003_450a

    set 7, [hl]
    jr jr_003_450c

jr_003_450a:
    res 7, [hl]

jr_003_450c:
    ld a, $20
    inc hl
    ld b, [hl]

jr_003_4510:
    ld [hl], c
    ld hl, $0001
    add hl, de
    res 5, [hl]
    or [hl]
    ld [hl], a

Jump_003_4519:
    ld hl, $000e
    add hl, de
    push hl
    bit 7, [hl]
    jr nz, jr_003_4527

    call Call_003_467b
    jr jr_003_452a

jr_003_4527:
    call Call_003_4781

jr_003_452a:
    pop hl
    ld a, [hl]
    and $40
    rlca
    res 7, [hl]
    or [hl]
    ld [hl], a
    rlca
    jr c, jr_003_4543

    ld hl, $0010
    add hl, de
    ld a, [hl+]
    ld c, a
    ld h, [hl]
    call Call_003_4006
    ld a, h
    jr jr_003_4545

Jump_003_4543:
jr_003_4543:
    ld a, $ff

jr_003_4545:
    ld hl, $0012
    add hl, de
    ld [hl], a
    ret


Jump_003_454b:
    ld hl, $446b
    push hl
    cp $04
    jr c, jr_003_455a

    push af
    call Call_003_4649
    ld b, a
    pop af
    ld c, a

jr_003_455a:
    call Call_003_4014
    sub c
    ld b, l
    sub l
    ld b, l
    sbc c
    ld b, l
    and b
    ld b, l
    ld a, [de]
    ld b, [hl]
    xor c
    ld b, l
    cp b
    ld b, l
    jp z, $ed47

    ld b, a
    cp [hl]
    ld b, l
    ret z

    ld b, l
    call Call_003_6345
    ld c, b
    ld l, c
    ld c, b
    db $d3
    ld b, l
    ret c

    ld b, l
    db $dd
    ld b, l
    ldh [c], a
    ld b, l
    db $d3
    ld b, l
    ret c

    ld b, l
    db $dd
    ld b, l
    ldh [c], a
    ld b, l
    inc bc
    ld b, [hl]
    inc h
    ld b, [hl]
    ld l, a
    ld c, b
    ccf
    ld b, [hl]
    ld a, $20
    jr jr_003_45a2

    ld a, $40
    jr jr_003_45a2

    ld hl, $000e
    add hl, de
    set 4, [hl]
    ret


    ld a, $08

jr_003_45a2:
    ld hl, $000e
    add hl, de
    xor [hl]
    ld [hl], a
    ret


    ld a, b
    ld [$de99], a
    call Call_003_4649
    ld [$de98], a
    xor a
    ld [$de96], a
    ret


    ld hl, $0011
    add hl, de
    ld [hl], b
    ret


    ld hl, $000e
    add hl, de
    ld a, [hl]
    and $f8
    or b
    ld [hl], a
    ret


    ld a, b
    ld [$de9b], a
    ret


    ld hl, $000f
    add hl, de
    ld [hl], b
    ret


    ld hl, $0013
    jr jr_003_45e5

    ld hl, $0014
    jr jr_003_45e5

    ld hl, $0015
    jr jr_003_45e5

    ld hl, $0016

jr_003_45e5:
    add hl, de
    ld a, c
    cp $12
    jr nc, jr_003_45f7

    ld a, [hl]
    or a
    jr nz, jr_003_45f2

    ld [hl], b
    jr jr_003_45ff

jr_003_45f2:
    dec [hl]
    jr z, jr_003_460f

    jr jr_003_45ff

jr_003_45f7:
    ld a, [hl]
    dec a
    jr nz, jr_003_460f

    ld [hl], a
    call Call_003_461a

jr_003_45ff:
    call Call_003_4649
    ld b, a
    push bc
    call Call_003_4649
    ld hl, $000c
    add hl, de
    ld [hl+], a
    pop bc
    ld [hl], b
    ret


jr_003_460f:
    ld hl, $000c
    add hl, de
    ld a, $02
    add [hl]
    ld [hl+], a
    ret nc

    inc [hl]
    ret


Call_003_461a:
    ld hl, $000e
    add hl, de
    ld a, [hl]
    and $97
    or b
    ld [hl], a
    ret


    pop hl
    ld hl, $000d
    add hl, de
    xor a
    ld [hl-], a
    ld [hl], a
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld a, [$dea0]
    rlca
    ret c

    ld a, [$de94]
    and $ee
    ld [$de94], a
    ret


    ld a, [$de9a]
    and $ee
    or b
    ld [$de9a], a
    ret


Call_003_4649:
    ld hl, $000d
    add hl, de
    ld a, [hl-]
    ld c, [hl]
    ld b, a
    ld a, [bc]
    inc bc
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld [bc], a
    inc b
    ld [$2010], sp
    ld b, b
    add b
    inc bc
    ld b, $0c
    jr jr_003_4692

    ld h, b
    ret nz

    nop
    add hl, bc
    ld [de], a
    inc h
    ld c, b
    sub b
    nop
    nop
    inc c
    jr jr_003_4693

    jr nc, jr_003_46ad

    ld c, b
    ld d, h
    jr jr_003_4699

    jr nc, jr_003_46b3

    ld c, b
    ld d, h
    ld h, b
    ld l, h

Call_003_467b:
Jump_003_467b:
    dec b
    push bc
    call Call_003_477a
    pop bc
    ld a, [$de91]
    cp $0f
    jr nz, jr_003_468b

    xor a
    jr jr_003_4694

jr_003_468b:
    ld a, b
    ld hl, $48b6
    call Call_003_4019

jr_003_4692:
    ld a, l

jr_003_4693:
    ld b, h

jr_003_4694:
    ld hl, $0009
    add hl, de
    ld [hl+], a

jr_003_4699:
    ld [hl], b
    ld a, [$de91]
    cp $0a
    jr nz, jr_003_46c3

    ld a, $02
    ld hl, $0004
    add hl, de
    ld [hl+], a
    ld a, [hl]
    rrca
    and $60
    cpl

jr_003_46ad:
    inc a
    and $60
    call Call_003_4793

jr_003_46b3:
    or a
    jp z, Jump_003_47c1

Call_003_46b7:
    ldh [rNR32], a
    ld hl, $0009
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    jp Jump_003_4adb


jr_003_46c3:
    ld a, $00
    call Call_003_4024
    ld hl, $488e
    call Call_003_401a
    or a
    jr nz, jr_003_46da

    ld hl, $0003
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld a, [hl]
    jr jr_003_4703

jr_003_46da:
    ld b, a
    ld hl, $0005
    add hl, de
    ld a, $f0
    sub [hl]
    ld c, a
    ld a, b
    sub c
    jr nc, jr_003_46e9

    and $0f

jr_003_46e9:
    push af
    ld c, a
    and $f0
    ld b, a
    ld a, [hl]
    sub b
    swap a
    ld h, a
    ld a, c
    and $07
    ld c, a
    call Call_003_4006
    ld a, l
    ld hl, $0003
    add hl, de
    ld [hl+], a
    ld [hl], $00
    pop af

Call_003_4703:
jr_003_4703:
    call Call_003_4793

Jump_003_4706:
    push af
    ld hl, $0009
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_003_4721
    set 7, h
    ld b, l
    ld c, $13
    call Call_003_4108
    pop af
    dec c
    ldh [c], a
    inc c
    inc c
    ld a, h
    ldh [c], a
    ret


Call_003_4721:
    ld a, [$de91]
    cp $0f
    jr nz, jr_003_4738

    ld a, b
    and $7f
    xor $0f
    swap a
    ld hl, $000b
    add hl, de
    or [hl]
    ld l, a
    ld h, $00
    ret


jr_003_4738:
    ld a, b
    ld b, $20
    ld hl, $48ae

jr_003_473e:
    cp [hl]
    jr nc, jr_003_4748

    inc hl
    dec b
    dec b
    dec b
    dec b
    jr jr_003_473e

jr_003_4748:
    srl a
    rr c
    add b
    push af
    and $07
    ld b, a
    pop af
    and $38
    xor $38
    jr z, jr_003_4762

jr_003_4758:
    sub $08
    jr z, jr_003_4762

    srl b
    rr c
    jr jr_003_4758

jr_003_4762:
    sub c
    ld c, a
    ld a, $80
    sbc b
    ld b, a
    ld hl, $0006
    add hl, de
    ld l, [hl]
    ld h, $00
    bit 7, l
    jr z, jr_003_4774

    dec h

jr_003_4774:
    add hl, bc
    ld a, h
    and $07
    ld h, a
    ret


Call_003_477a:
    ld a, $04
    call Call_003_4024
    jr jr_003_4782

Call_003_4781:
Jump_003_4781:
    xor a

jr_003_4782:
    ld hl, $0001
    add hl, de
    rlca
    jr c, jr_003_478c

    bit 4, [hl]
    ret z

jr_003_478c:
    ld a, [hl]
    and $2f
    ld [hl+], a
    ld [hl], $00
    ret


Call_003_4793:
    ld hl, $de90
    bit 2, [hl]
    ret nz

    ld b, a
    ld hl, $0017
    add hl, de
    ld [hl], a
    pop hl
    ld a, [$de9d]
    cp $80
    ret z

    ld a, [$dea0]
    rlca
    ret c

    ld a, b
    push hl
    ret


Jump_003_47ae:
    ld hl, $de90
    bit 2, [hl]
    jr nz, jr_003_47c1

    ld hl, $0017
    add hl, de
    ld [hl], $00
    ld hl, $dea0
    bit 7, [hl]
    ret nz

Jump_003_47c1:
jr_003_47c1:
    ld a, [$de94]
    and $ee
    ld [$de94], a
    ret


    ld a, [$de91]
    cp $0a
    jr nz, jr_003_47dd

    ld hl, $de90
    bit 2, [hl]
    jr z, jr_003_47e2

    ld a, b
    ld [$dea9], a
    ret


jr_003_47dd:
    swap b
    ld a, b
    jr jr_003_47e7

Jump_003_47e2:
jr_003_47e2:
    ld a, b
    rrca
    rrca
    or $30

jr_003_47e7:
    ld hl, $0005
    add hl, de
    ld [hl], a
    ret


    ld a, b
    inc a
    ld hl, $0000
    add hl, de
    cp [hl]
    ret z

    ld [hl+], a
    set 4, [hl]
    call Call_003_484a
    ld a, [$de91]
    cp $0a
    ret c

    jr z, jr_003_480e

    ld bc, $0006
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, de
    ld [hl], a
    ret


jr_003_480e:
    ld bc, $0007
    add hl, bc
    ld a, [hl]
    or a
    ret z

    ld hl, $de90
    bit 2, [hl]
    jr nz, jr_003_4825

    ld [$de9c], a
    ld hl, $dea0
    bit 7, [hl]
    ret nz

Jump_003_4825:
jr_003_4825:
    dec a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$4b03]
    ld b, a
    ld a, [$4b04]
    ld c, a
    add hl, bc
    xor a
    ldh [rNR30], a
    ld b, $10
    ld c, $30

jr_003_483d:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_003_483d

    ld a, $80
    ldh [rNR30], a
    ldh [rNR34], a
    ret


Call_003_484a:
    dec a
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$4b01]
    ld b, a
    ld a, [$4b02]
    ld c, a
    add hl, bc
    ld a, l
    ld [$de92], a
    ld a, h
    ld [$de93], a
    ret


    ld hl, $0006
    add hl, de
    ld [hl], b
    ret


    ld hl, $0007
    add hl, de
    ld [hl], b
    ret


    ld a, [$de91]
    cp $0a
    jp z, Jump_003_47e2

    ld hl, $de90
    bit 2, [hl]
    jr nz, jr_003_4889

    ld hl, $000b
    add hl, de
    ld [hl], b
    ld hl, $dea0
    bit 7, [hl]
    ret nz

jr_003_4889:
    ld c, $11
    jp Jump_003_4108


    nop
    rrca
    ld c, $0d
    inc c
    dec bc
    dec de
    dec de
    ld a, [bc]
    ld a, [de]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, de
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, sp
    add hl, sp
    ld c, c
    ld c, c
    ld c, c
    ld e, c

jr_003_48a9:
    ld e, c
    ld l, c
    ld l, c
    nop
    nop
    jr c, jr_003_48e0

    jr z, @+$22

    jr jr_003_48c4

    ld [$aa00], sp
    ccf
    ret z

    ld a, $f4
    dec a
    inc l
    dec a
    ld l, [hl]
    inc a
    cp h

jr_003_48c1:
    dec sp
    ld [de], a
    dec sp

jr_003_48c4:
    ld [hl], h
    ld a, [hl-]
    sbc $39
    ld d, b
    add hl, sp
    jp z, Jump_003_4c38

    jr c, @-$54

    scf
    ret z

    ld [hl], $f4
    dec [hl]
    inc l
    dec [hl]
    ld l, [hl]
    inc [hl]
    cp h

jr_003_48d9:
    inc sp
    ld [de], a
    inc sp
    ld [hl], h
    ld [hl-], a
    sbc $31

jr_003_48e0:
    ld d, b
    ld sp, $30ca
    ld c, h
    jr nc, @-$54

    cpl
    ret z

    ld l, $f4
    dec l
    inc l
    dec l
    ld l, [hl]
    inc l
    cp h
    dec hl
    ld [de], a
    dec hl
    ld [hl], h
    ld a, [hl+]
    sbc $29
    ld d, b
    add hl, hl
    jp z, Jump_003_4c28

    jr z, jr_003_48a9

    daa
    ret z

    ld h, $f4
    dec h
    inc l
    dec h
    ld l, [hl]
    inc h
    cp h
    inc hl
    ld [de], a
    inc hl
    ld [hl], h
    ld [hl+], a
    sbc $21
    ld d, b
    ld hl, $20ca
    ld c, h
    jr nz, jr_003_48c1

    rra
    ret z

    ld e, $f4
    dec e
    inc l
    dec e
    ld l, [hl]
    inc e
    cp h
    dec de
    ld [de], a
    dec de
    ld [hl], h
    ld a, [de]
    sbc $19
    ld d, b
    add hl, de
    jp z, Jump_003_4c18

    jr jr_003_48d9

    rla
    ret z

    ld d, $f4
    dec d
    inc l
    dec d
    ld l, [hl]
    inc d
    cp h
    inc de
    ld [de], a
    inc de
    ld [hl], h
    ld [de], a
    sbc $11
    ld d, b
    ld de, $10ca
    ld c, h
    db $10
    xor d
    rrca
    ret z

    ld c, $f4
    dec c
    inc l
    dec c
    ld l, [hl]
    inc c
    cp h
    dec bc
    ld [de], a
    dec bc
    ld [hl], h
    ld a, [bc]
    sbc $09
    ld d, b
    add hl, bc
    jp z, Jump_003_4c08

    ld [$07aa], sp
    ret z

    ld b, $f4
    dec b
    inc l
    dec b
    ld l, [hl]
    inc b
    cp h
    inc bc
    ld [de], a
    inc bc
    ld [hl], h
    ld [bc], a
    sbc $01
    ld d, b
    ld bc, $00ca
    ld c, h
    nop

Call_003_4976:
    ld hl, $0005
    add hl, de
    ld a, $f0
    sub [hl]
    ld b, a
    ld hl, $0004
    add hl, de
    ld a, [hl]
    call Call_003_4014
    sub d
    ld c, c
    jp nc, $1949

    ld c, d
    add sp, $49
    add hl, de
    ld c, d
    add sp, $4a
    ld hl, $0003
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_003_499e

    dec [hl]
    jp nz, Jump_003_4a19

jr_003_499e:
    inc hl
    inc [hl]
    ld a, $01
    call Call_003_4024
    and $07
    jr z, jr_003_49d9

    xor $07
    ld c, a
    inc hl
    ld a, [hl]
    sub b
    jr nc, jr_003_49b2

    xor a

jr_003_49b2:
    ld hl, $0005
    add hl, de
    cp [hl]
    jr z, jr_003_49d9

    ld b, a
    ld a, [hl]
    or c
    push af
    and $f0
    sub b
    swap a
    ld h, a
    call Call_003_4006
    ld a, l
    ld hl, $0003
    add hl, de
    ld [hl], a
    pop af
    call Call_003_4703
    jr jr_003_4a19

    ld hl, $0003
    add hl, de
    dec [hl]
    jr nz, jr_003_4a19

jr_003_49d9:
    ld a, $02
    call Call_003_4024
    sub b
    jr z, jr_003_4a10

    jr c, jr_003_4a10

    call Call_003_4703
    jr jr_003_4a09

    ld a, [$de91]
    cp $0a
    jr z, jr_003_4a10

    ld a, $02
    call Call_003_4024
    sub b
    jr z, jr_003_4a10

    jr c, jr_003_4a10

    inc hl
    bit 3, [hl]
    jr nz, jr_003_4a10

    ld b, a
    ld a, [hl]
    dec a
    xor $07
    and $07
    or b
    call Call_003_4703

jr_003_4a09:
    ld hl, $0004
    add hl, de
    inc [hl]
    jr jr_003_4a19

jr_003_4a10:
    ld hl, $0004
    add hl, de
    ld [hl], $05
    jp Jump_003_47ae


Jump_003_4a19:
jr_003_4a19:
    ld hl, $0001
    add hl, de
    bit 5, [hl]
    jr z, jr_003_4a76

    push de
    ld hl, $0009
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0007
    add hl, de
    ld a, [hl]
    sla a
    push af
    ld h, $00
    jr nc, jr_003_4a38

    dec h
    dec a
    cpl

jr_003_4a38:
    ld l, a
    add hl, bc
    ld a, [$de91]
    cp $0f
    jr nz, jr_003_4a45

    pop af
    pop de
    jr jr_003_4a6d

jr_003_4a45:
    push hl
    ld hl, $0008
    add hl, de
    ld a, [hl]
    dec a
    ld hl, $48b6
    call Call_003_4019
    ld b, h
    ld c, l
    pop hl
    ld a, l
    sub c
    ld a, h
    sbc b
    ld a, $ff
    adc $00
    ld e, a
    pop af
    ld a, e
    adc $00
    pop de
    jr z, jr_003_4a6d

    ld hl, $0001
    add hl, de
    res 5, [hl]
    jr jr_003_4a6f

jr_003_4a6d:
    ld b, h
    ld c, l

jr_003_4a6f:
    ld hl, $0009
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b

jr_003_4a76:
    call Call_003_4ae8
    ld hl, $de90
    bit 2, [hl]
    jr nz, jr_003_4a86

    ld hl, $dea0
    bit 7, [hl]
    ret nz

jr_003_4a86:
    ld a, $05
    call Call_003_4024
    or a
    jr z, jr_003_4ad4

    ld c, a
    ld hl, $0002
    add hl, de
    ld a, [hl-]
    bit 6, [hl]
    jr z, jr_003_4a99

    cpl

jr_003_4a99:
    or a
    jr z, jr_003_4ad4

    ld h, a
    call Call_003_4006
    ld b, h
    ld c, l
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    ld a, b
    or c
    jr z, jr_003_4ad4

    ld hl, $0001
    add hl, de
    bit 7, [hl]
    push af
    ld hl, $0009
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jr nz, jr_003_4aca

    add hl, bc
    jr jr_003_4ad0

jr_003_4aca:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a

jr_003_4ad0:
    ld b, h
    ld c, l
    jr jr_003_4adb

jr_003_4ad4:
    ld hl, $0009
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a

Jump_003_4adb:
jr_003_4adb:
    call Call_003_4721
    ld c, $13
    ld b, l
    call Call_003_4108
    inc c
    ld a, h
    ldh [c], a
    ret


Call_003_4ae8:
    ld a, $04
    call Call_003_4024
    and $7f
    ret z

    ld hl, $0002
    add hl, de
    add [hl]
    ld [hl-], a
    ret nc

    ld a, $40
    add [hl]
    ld [hl], a
    ret


    nop
    nop
    nop
    nop
    ld [hl], $4b
    ld [hl], c
    ld c, h
    cp c
    ld c, l
    ret


    ld c, a
    add hl, de
    ld c, a
    db $db
    ld d, b
    rst RST_30
    ld d, d
    jp c, $d954

    ld d, [hl]
    cp b
    ld e, b
    ld sp, hl
    ld e, d
    jp nz, $875c

    ld e, [hl]
    add b
    ld h, c
    ld h, h
    nop
    nop
    ld h, d
    ld hl, sp+$64
    and [hl]
    ld h, a
    ld hl, $b867
    ld l, c
    jr @+$6b

    add l
    nop
    nop
    nop
    nop
    ld l, e
    ld a, [hl-]
    ld l, e
    ld e, h
    ld l, e
    ld [hl], a
    ld l, e
    add h
    ld l, e
    sub [hl]
    ld l, e
    or h
    ld l, e
    jp nc, $e36b

    ld l, e
    db $f4
    ld l, h
    dec b
    ld l, h
    ld d, $6c
    dec [hl]
    ld l, h
    ld d, h
    ld l, h
    ld l, a
    ld l, h
    adc d
    ld l, h
    sbc e
    ld l, l
    rlca
    ld l, l
    inc de
    ld l, l
    rra
    ld l, l
    ld [hl-], a
    ld l, l
    ld c, h
    ld l, l
    ld h, [hl]
    ld l, l
    add b
    ld l, l
    sbc d
    ld l, l
    cp d
    ld l, [hl]
    dec h
    ld l, [hl]
    or a
    ld l, [hl]
    rst RST_10
    nop
    nop
    nop
    nop
    ld l, [hl]
    rst RST_30
    ld l, a
    ld [bc], a
    ld l, a
    adc h
    ld e, $08
    ldh a, [rTMA]
    rst RST_38
    ld bc, $0100
    ld e, $05
    ld d, b
    dec b
    nop
    nop
    nop
    ld [bc], a
    rra
    ld [$07f0], sp
    nop
    nop
    nop
    nop
    rra
    ld [$03f0], sp
    nop
    nop
    nop
    nop
    rra
    ld [$07f0], sp
    sbc [hl]
    ld a, b
    nop
    nop
    rra
    ld [$07e0], sp
    nop
    nop
    nop
    inc bc
    rra
    ld [$03f0], sp
    nop
    nop
    nop
    nop
    rra
    ld [$08f0], sp
    rst RST_38
    ld b, $00
    nop
    ld e, $08
    ldh a, [rTAC]
    nop
    nop
    nop
    nop
    rra
    ld [$03f0], sp
    nop
    nop
    nop
    nop
    rra
    inc bc
    and b
    inc bc
    nop
    nop
    nop
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    dec b
    add b
    ld bc, $018e
    nop
    dec b
    ld e, $08
    ldh a, [$ff03]
    nop
    nop
    nop
    nop
    ld e, $00
    ldh a, [$ff03]
    ei
    dec b
    nop
    nop
    rra
    ld [$08f0], sp
    rst RST_38
    inc bc
    nop
    nop
    rra
    nop
    ldh a, [rTIMA]
    rst RST_38
    ld bc, $0600
    ld e, $00
    ldh a, [rTIMA]
    nop
    nop
    nop
    rlca
    rra
    ld b, $d0
    inc bc
    nop
    nop
    nop

Jump_003_4c08:
    nop
    ld e, $00
    ldh a, [rDIV]
    nop
    nop
    nop
    nop
    rra
    ld [$06f0], sp
    nop
    nop
    nop

Jump_003_4c18:
    ld [$031f], sp
    db $10
    ld b, $00
    nop
    nop
    nop
    rra
    dec b
    ld d, b
    dec b
    nop
    nop
    nop

Jump_003_4c28:
    nop
    rra
    ld [bc], a
    and b
    ld [$0000], sp
    nop
    add hl, bc
    ld e, $02
    db $10
    inc b
    nop
    nop
    nop

Jump_003_4c38:
    nop
    rra
    ld [$05f0], sp
    xor $02
    nop
    nop
    rra
    ld [$0410], sp
    nop
    nop
    nop
    nop
    ld e, $08
    ldh a, [rDIV]
    jp nc, Jump_000_0005

    ld a, [bc]
    rra
    dec b
    sub b
    inc b
    nop
    nop
    ld [$1c00], sp
    ld [$03f0], sp
    call c, Call_000_0005
    dec bc
    ld e, $08
    ldh a, [$ff03]
    db $fc
    ld bc, $0c00
    rra
    ld b, $b0
    inc bc
    nop
    nop
    nop
    nop
    ld e, $08
    ret nc

    inc bc
    nop
    nop
    nop
    dec c
    inc e
    ld [$03d0], sp
    pop de
    dec b
    nop
    ld c, $1f
    ld [bc], a
    ldh [rTIMA], a
    nop
    nop
    nop
    rrca
    ld e, $02
    ldh a, [rP1]
    jp c, Jump_000_0003

    db $10
    rra
    inc b
    ldh a, [$ff03]
    pop hl
    inc e
    nop
    nop
    inc bc
    nop
    ld [hl], b
    ld bc, $6385
    nop
    nop
    rra
    dec b
    db $10
    ld [$0000], sp
    nop
    ld de, $021e
    ldh a, [rTIMA]
    nop
    nop
    nop
    nop
    ld e, $06
    ldh a, [rP1]
    jp c, Jump_000_0004

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
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    rst RST_38
    rst RST_38
    nop
    nop
    rst RST_38
    db $dd
    cp e
    db $dd
    rst RST_38
    xor $dd
    xor d
    cp e
    rst RST_38
    xor $aa
    call z, $ffff
    db $dd
    cp e
    rst RST_38
    cp e
    ld [hl], a
    cp e
    db $dd
    xor $ff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $cc
    xor d
    rst RST_38
    xor d
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
    ld [hl+], a
    ld b, h
    ld [hl], a
    xor d
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $cc
    xor d
    adc b
    ld h, [hl]
    ld de, $9944
    xor $ff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $dd
    cp e
    sbc c
    ld [hl], a
    ld d, l
    inc sp
    ld [hl+], a
    db $dd
    ld [hl], a
    cp e
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $bb
    sbc c
    ld [hl], a
    ld d, l
    rst RST_38
    cp e
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
    xor $bb
    nop
    db $dd
    rst RST_38
    inc sp
    ld d, l
    adc b
    db $dd
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    db $dd
    cp e

jr_003_4d56:
    sbc c
    ld [hl], a
    db $dd
    ld [hl+], a
    adc b
    cp e
    xor $ff
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $dd
    call z, Call_003_55aa
    rst RST_38
    inc sp
    ld b, h
    ld [hl], a
    xor d
    call z, $ffee
    rst RST_38
    xor $cc
    cp e
    adc b
    ld h, [hl]
    ld b, h
    rst RST_38
    call z, $88aa
    xor d
    db $dd
    xor $ff
    rst RST_38
    rst RST_38
    xor $dd
    xor d
    sbc c
    xor d
    call z, $ffee
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

jr_003_4d96:
    rst RST_38
    rst RST_38
    rst RST_38
    adc b
    cp e
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    rst RST_38
    xor $cc
    xor d
    xor d
    rst RST_38

jr_003_4da9:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    jp nc, $274e

    ld c, [hl]
    cp [hl]
    ld c, a
    jr jr_003_4ddd

    inc bc
    jr jr_003_4d56

    dec b
    ld bc, $0655
    ret z

    rlca
    inc c

jr_003_4ddd:
    ld [$0922], sp
    ld bc, $0399
    adc b
    inc b
    nop
    inc b
    nop
    rst RST_18
    inc bc
    xor b
    add c
    adc b
    and a
    or e
    or h
    add c
    adc b
    ld [bc], a
    and a
    adc b
    adc h
    adc b
    adc l
    sub b
    rst RST_28
    sub b
    adc a
    sub b
    adc l
    rst RST_08
    adc [hl]
    adc l
    adc [hl]
    adc e
    call $8c8d
    adc l
    adc c
    adc b
    add [hl]
    add h
    add e
    ld [de], a
    nop
    ld c, [hl]
    inc e
    pop bc
    and c
    add hl, bc
    ld [bc], a
    jr jr_003_4d96

    add c
    adc b
    ld c, $01
    ld c, l
    and $d9
    cp c
    add hl, bc
    ld bc, $0399
    adc b
    ld d, $4d
    db $e4
    rla
    jr jr_003_4da9

    ld b, $c8
    rlca
    inc c
    ld [$0922], sp
    ld bc, $04a0
    nop
    ld b, $c8
    ld [$0922], sp
    ld bc, $bcdb
    and b
    and b
    inc bc
    xor a
    or b
    and b
    and e
    and h
    add e
    inc bc
    sbc b
    inc bc
    xor b
    and a
    xor l
    xor h
    and b
    add sp, -$1a
    ld [bc], a
    and h
    inc bc
    sbc b
    sbc c
    or h
    sub d
    or d
    xor a
    ret nc

    add hl, bc
    inc bc
    ld b, $32
    ld [$040c], sp
    nop
    add hl, de
    db $10
    sbc e
    add hl, de
    ld de, $1999
    ld bc, $8d03
    add hl, de
    ld de, $1988
    db $10
    add [hl]
    add hl, de
    ld de, $198c
    ld bc, $1984
    ld de, $0e8d
    ld [bc], a
    ld c, [hl]
    ld e, a
    add hl, de
    db $10
    sub h
    add hl, de
    ld de, $1993
    ld bc, $198d
    ld de, $1990
    db $10
    adc a
    add hl, de
    ld de, $198a
    ld bc, $198d
    ld de, $948c
    adc a
    adc l
    adc b
    sub h
    adc b
    inc bc
    sub h
    inc bc
    adc b
    sub d
    adc l
    adc e
    add [hl]
    sub d
    add [hl]
    inc bc
    sub d
    sbc [hl]
    inc bc
    sub d
    adc l
    adc a

jr_003_4ead:
    adc b
    add c
    adc b
    adc l
    sub d
    sub d
    adc l
    adc l
    add [hl]
    adc l
    adc b
    adc b
    add c
    ld d, $4e
    ld [hl-], a
    rla
    rlca
    inc bc
    ld b, $e6
    ld [$0b0a], sp
    inc c
    and b
    inc b
    nop
    reti


    sbc c
    sbc c
    and b
    and b
    cp c
    cp c
    and b
    sbc c
    sbc b
    sub l
    sub h
    sub d
    adc a
    sub b
    adc l
    rst RST_08
    adc b
    adc b
    and b
    reti


    sbc b
    sub [hl]
    sbc b
    sub h
    rst RST_10
    sub [hl]
    sub h
    sub [hl]
    sub d
    sub l
    sub h
    sub l
    sub d
    sub b
    adc h
    adc l
    adc b
    xor c
    and [hl]
    call $b4ad
    xor l
    or h
    xor l
    or h
    xor l
    or h
    xor l
    or h
    xor l
    or h
    xor a
    or [hl]
    xor b
    or h
    xor l
    or h
    xor h
    or h
    xor e
    or d
    xor d
    or d
    xor c
    or d
    sub b
    adc h
    adc l
    adc b
    or l
    or d
    xor l
    cp c
    ld d, $4e
    rst RST_00
    rla
    rla
    nop
    ld c, a
    ld [hl+], a
    ld c, a
    sbc d
    ld c, a
    and d
    ld c, a
    jp c, Jump_000_050a

    dec b
    ld bc, $0755
    dec bc
    inc b
    nop
    jr jr_003_4ead

    ld b, $f5
    add hl, bc
    ld [bc], a
    inc b
    nop
    ld [$bb00], sp
    cp [hl]
    cp l
    cp c
    cp e
    inc bc
    xor d
    xor b
    and c
    inc bc
    or a
    sbc c
    sbc e
    sbc l
    sbc [hl]
    sbc l
    sbc c
    ld [de], a
    ld b, b
    ld c, a
    ld d, l
    ld bc, $08b6
    rrca
    ld [bc], a
    ld bc, $0ed6
    ld bc, $314f
    cp e
    ld [$010f], sp
    db $db
    ld [$9e00], sp
    inc bc
    adc b
    inc b
    ld c, b
    ld [$8a00], sp
    ld [$8a0f], sp
    ld bc, $08ca
    nop
    adc l
    adc a
    ld [bc], a
    ret z

    adc d
    adc b
    ld [de], a
    nop
    ld c, a
    adc b
    add [hl]
    adc b
    and l
    add e
    add l
    and c
    inc bc
    sub a
    sbc c
    sbc e
    sbc [hl]
    cp l
    sbc [hl]
    inc bc
    adc b
    ld c, $01
    ld c, a
    ld e, a
    cp [hl]
    inc bc
    xor b
    and l
    and c
    ld bc, $08a3
    rrca
    ld [bc], a
    ld bc, $08c3
    nop
    ld d, $4f
    add hl, hl
    rla
    rlca
    dec b
    ld [bc], a
    ld h, b
    ld d, $4f
    add hl, hl
    rla
    add hl, bc
    ld [bc], a
    rlca
    inc bc
    ld b, $ff
    ld [$0405], sp
    nop
    inc b
    nop
    rst RST_08
    call $cacb
    ret z

    call Call_000_0012
    ld c, a
    cp [hl]
    jp nc, Jump_000_0ed1

    ld bc, $ac4f
    ld [bc], a
    rst RST_08
    or c
    ld [bc], a
    jp nc, $02ad

    call nc, $cfb1
    call $cac8
    ld [bc], a
    jp nc, $02ad

    call nc, $cfae
    call $cf02
    xor d
    ld d, $4f
    xor d
    rla
    rla
    nop
    ld c, a
    db $e4
    ld d, b
    ld c, l
    ld d, b
    or e
    ld d, b
    or $0a
    dec b
    inc b
    nop
    dec b
    ld bc, $0699
    ret z

    rlca
    inc c
    ld [$1820], sp
    ld b, b
    add hl, bc
    ld bc, $b7b4
    sub [hl]
    cp h
    sbc e
    add b
    inc bc
    adc b
    add a
    adc b
    add h
    and e
    add e
    adc b
    adc e
    adc d
    adc l
    adc e
    ld l, d
    ld l, b
    adc d
    adc l
    nop
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    nop
    adc [hl]
    adc a
    sub h
    sub a
    sub [hl]
    adc a
    sub b
    sub d
    sub h
    sub b
    adc a
    ld l, l
    ld l, e
    adc l
    adc d
    nop
    ld l, e
    ld l, l
    ld l, e
    ld l, l
    ld l, e
    ld l, l
    nop
    adc e
    adc b
    adc d
    adc a
    ld bc, $01a3
    add e
    adc b
    adc d
    adc e
    adc l
    adc a
    sub b
    adc l
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld [hl], h
    nop
    sub c
    sub e
    ld bc, $08b4
    ld hl, $b401
    ld d, $4f
    and $17
    ld [bc], a
    add b
    inc b
    nop
    ld b, $c8
    rlca
    inc b
    ld [$1820], sp
    ld b, b
    add hl, bc
    ld bc, $b7b4
    sub [hl]
    cp h
    sbc e
    add b
    inc bc
    adc b
    add a
    adc b
    add h
    and e
    add e
    adc b
    adc e
    adc d
    adc l
    adc e
    ld l, d
    ld l, b
    adc d
    adc l
    nop
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    nop
    adc [hl]
    adc a
    sub h
    sub a
    sub [hl]
    adc a
    sub b
    sub d
    sub h
    sub b
    adc a
    ld l, l
    ld l, e
    adc l
    adc d
    nop
    ld l, e
    ld l, l
    ld l, e
    ld l, l
    ld l, e
    ld l, l
    nop
    adc e
    adc b
    adc d
    adc a
    ld bc, $01a3
    add e
    adc b
    adc d
    adc e
    adc l
    adc a
    sub b
    adc l
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld [hl], h
    nop
    sub c
    sub e
    ld bc, $08b4
    ld hl, $b401
    ld d, $50
    ld c, a
    rla
    inc b
    nop
    ld b, $c8
    rlca
    inc bc
    ld [$b420], sp
    or a
    sub [hl]
    cp h
    sbc e
    add b
    inc bc
    adc b
    add a
    adc b
    add h
    and e
    add e
    adc b
    adc e
    adc d
    adc l
    adc e
    ld l, d
    ld l, b

jr_003_50cf:
    adc d
    adc l
    nop
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    nop
    adc [hl]
    adc a
    sub h
    sub a
    sub [hl]
    adc a
    ld b, $f0
    pop bc
    inc bc
    rst RST_10
    sub $d3
    or h
    cp e
    cp c
    or [hl]
    or h
    or e
    ld bc, $08b4
    ld hl, $b401
    ld d, $50
    or e
    rla
    rla
    nop
    ld d, c
    nop
    ld d, c
    adc l
    ld d, d
    ld sp, $d952
    ld a, [bc]
    inc bc
    dec b
    ld bc, $0611
    ld a, b
    rlca
    dec c
    ld [$0910], sp
    ld [bc], a
    jr jr_003_50cf

    inc b
    nop
    ld [bc], a
    sub e
    ld [hl], h
    call nc, $9f02
    inc bc
    ld l, b
    add sp, -$80
    and c
    inc bc
    sbc b
    or a
    sub l
    sub h
    push af
    ld a, a
    inc bc
    adc b
    ld h, a
    adc b
    inc bc
    sub h
    ret nz

    ld a, a
    inc bc
    adc b
    ld h, a
    adc b
    inc bc
    sub h
    ret nz

    add hl, de
    db $10
    inc bc
    ld l, b
    ld l, b
    adc b
    add b
    add hl, de
    ld de, $9303
    add hl, de
    ld bc, $7474
    sub h
    add b
    add hl, de
    ld de, $199f
    db $10
    inc bc
    ld l, b
    ld l, b
    adc b
    add b
    add hl, de
    ld de, $6887
    inc bc
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    inc b
    nop
    ld a, c
    ld [hl], h
    ld a, e
    ld a, h
    ld a, e
    ld [hl], h
    inc bc
    ld l, b
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld l, b
    ld h, h
    ld h, c
    ld h, e
    ld h, h
    ld h, c
    ld [de], a
    nop
    ld d, c
    ld a, a
    and e
    and a
    ld l, b
    inc bc
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld c, $01
    ld d, c
    ld e, c
    ld a, d
    ld a, h
    ld a, [hl]
    ld a, d
    cp h
    ld a, h
    ld a, c
    ld a, e
    ld a, b
    cp c
    ld d, $51
    rrca
    rla
    ld b, $78
    rlca
    dec bc
    ld [$0910], sp
    ld bc, $8018
    inc b
    nop
    inc b
    nop
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld c, $01
    ld d, c
    sbc c
    ld a, h
    ld a, e
    ld a, h
    inc bc
    ld l, b
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld h, [hl]
    ld h, l
    ld h, d
    ld h, c
    inc bc
    ld [hl], a
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld a, c
    sbc b
    ld a, c
    sbc b
    adc h
    ret nz

    ld a, e
    sbc h
    ld a, e
    sbc h
    adc l
    ret nz

    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, [hl]
    inc b
    nop
    sbc h
    inc bc
    adc b
    adc b
    adc a
    adc a
    adc l
    adc l
    adc b
    ld [de], a
    ld [$2152], sp
    ld h, [hl]
    ld l, b
    ld l, c
    ld h, [hl]
    ld l, l
    ld l, a
    ld [hl], b
    ld l, l
    ld l, h
    inc bc
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, [hl]
    ld c, $01
    ld d, c
    db $fd
    xor c
    ld l, b
    ld l, d
    ld l, h
    ld l, l
    ld l, l
    ld l, d
    ld l, h
    ld h, [hl]
    ld h, [hl]
    ld h, e
    add h
    ld d, $51
    sub a
    rla
    rlca
    inc bc
    ld b, $c8
    ld [$0b1e], sp
    jr jr_003_523e

    nop
    inc b
    nop
    ld [bc], a

jr_003_523e:
    adc l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld c, $01
    ld d, d
    dec sp
    ld [bc], a
    adc l
    ld l, l
    ld [bc], a
    adc a
    ld l, a
    ld [bc], a
    sub c
    ld [hl], d
    ld [bc], a
    sub h
    ld l, l
    ld [bc], a
    sub d
    ld [hl], d
    ld [bc], a
    sub d
    ld [hl], d
    ld [bc], a
    sub d
    ld [hl], d
    ld [bc], a
    sub d
    ld [hl], d
    ld l, b
    ld [hl], h
    ld [hl], h
    ld l, b
    ld [hl], h
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld a, c
    ld l, l
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    halt
    ld a, b
    ld a, c
    halt
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    halt
    ld a, b
    ld a, c
    halt
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    halt
    ld a, b
    ld a, c
    halt
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    inc b
    nop
    ld a, c
    sbc c
    ld a, c
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    halt
    sub [hl]
    halt
    ld [de], a
    nop
    ld d, d
    ret


    ld [hl], l
    sub l
    ld [hl], l
    ld [hl], l
    sub l
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld c, $01
    ld d, d
    and l
    ld [hl], d
    sub d
    ld [hl], d
    ld [hl], h
    sub h
    ld [hl], h
    ld l, b

jr_003_52d0:
    adc b
    ld l, b
    ld l, l
    adc l
    ld l, l
    ld d, $52
    add hl, sp
    rla
    rla
    nop
    ld d, d
    db $e3
    ld d, e
    add e
    ld d, h
    ld [hl], h
    ld d, h
    ret c

    ld a, [bc]
    inc bc
    dec b
    ld bc, $06eb
    call c, Call_000_0004
    rlca
    dec bc
    ld [$0919], sp
    ld bc, $8018
    sbc [hl]
    sbc a
    inc bc
    adc b
    ld bc, $c484
    ld [$011b], sp
    db $e4
    ld [$8617], sp
    add a
    adc b
    ld bc, $c585
    ld [$011b], sp
    push hl

jr_003_530b:
    ld [$8719], sp
    adc b
    xor l
    adc e
    adc c
    xor e
    adc c
    adc b
    adc e
    ld bc, $0188
    ret z

    add a
    adc b
    xor l
    adc e
    adc c
    xor e
    adc c
    adc b

jr_003_5322:
    add [hl]
    and h
    inc bc
    sub d
    or e
    jr jr_003_5329

jr_003_5329:
    call nc, $a0b3
    call nc, $a0b3
    or l
    or a
    cp c
    inc bc
    xor b
    add [hl]
    add h
    ld [bc], a
    jp $d403


    or e
    and b
    or h
    or l
    or e
    and b
    or l
    sub a
    sbc c
    cp e
    sbc h
    sbc [hl]
    cp a
    inc bc
    xor b
    ret nz

    ld [$071c], sp
    inc c
    jr jr_003_52d0

    ld h, a
    ld h, b
    ld l, b
    ld h, b
    ld [hl], b
    ld h, b
    ld h, a
    ld h, b
    ld l, b
    ld h, b
    ld [hl], b
    ld h, b
    adc a
    add b
    ld h, [hl]
    ld h, b
    ld h, a
    ld h, b
    ld l, a
    ld h, b
    ld h, [hl]
    ld h, b
    ld h, a
    ld h, b
    ld l, a
    ld h, b
    adc [hl]
    add b
    add l
    add b
    add [hl]
    add b
    adc [hl]
    add b
    ld l, l
    ld h, b
    ld l, h
    ld h, b
    adc l
    add b
    ld [$0719], sp
    dec bc
    and a
    xor b
    and b
    ld d, $52
    ld [$0617], a
    call c, Call_003_6002
    inc b
    nop
    jr jr_003_530b

    add hl, bc
    ld [bc], a
    ld [$0719], sp
    inc b
    sub d
    sub e
    sub h
    ld d, b
    jr jr_003_53d7

    rlca
    dec bc
    add [hl]
    add a
    adc b
    add h
    ret z

    and [hl]
    and e
    jr jr_003_5322

    rlca
    ld [$908f], sp
    sub c
    adc l
    jr jr_003_53ea

    rlca
    dec bc
    add [hl]
    add a
    adc b
    add l
    ret z

    and a
    and [hl]
    ld [$041c], sp
    ld [$1019], sp
    ld [hl], e
    ld h, b
    ld [hl], h
    ld h, b
    add hl, de
    ld bc, $606f
    ld [hl], b
    ld h, b
    add hl, de
    ld bc, $606c
    ld l, l
    ld h, b
    add hl, de
    ld bc, $6067
    ld l, b
    ld h, b
    ld [de], a
    nop
    ld d, e
    ldh a, [rNR24]
    db $10
    ld h, e
    ld h, b

jr_003_53d7:
    ld h, h
    ld h, b
    add hl, de
    ld bc, $7803
    ld h, b
    ld a, c
    ld h, b
    add hl, de
    ld de, $6073
    ld [hl], h
    ld h, b
    add hl, de
    ld bc, $606f

jr_003_53ea:
    ld [hl], b
    ld h, b
    ld c, $01
    ld d, e
    or l
    add hl, de
    db $10
    ld a, e
    ld h, b
    ld a, h
    ld h, b
    add hl, de
    ld bc, $6078
    ld a, c
    ld h, b
    ld [hl], e
    ld h, b
    ld [$0719], sp
    ld [$1119], sp
    adc a
    or b
    inc b
    nop
    jr @-$7e

    rlca
    ld [$0004], sp
    ret nc

    adc a
    ld [$191c], sp
    db $10
    inc bc
    sub h
    add hl, de
    ld bc, $1993
    db $10
    adc a
    ld [$0e19], sp
    ld bc, $0c54
    add hl, de
    ld de, $4018
    ld bc, $a603
    ld [$011b], sp
    and [hl]
    ld [$0119], sp
    xor c
    ld [$011b], sp
    xor c
    ld [$1319], sp
    nop
    ld d, h
    ld b, e
    xor b
    xor h
    or l
    or h
    rrca
    ld bc, $0654
    xor b
    xor b
    xor d
    xor h
    jr jr_003_5449

jr_003_5449:
    rlca
    ld a, [bc]
    xor l
    adc h
    adc l
    ld bc, $08b4
    dec de
    ld bc, $08b4
    add hl, de
    xor e
    adc d
    adc e
    ld bc, $08b2
    dec de
    ld bc, $08b2
    add hl, de
    xor c
    xor b
    xor l
    xor h
    xor a
    xor l
    adc h
    add b
    jr jr_003_54ab

    xor b
    ld [$6d15], sp
    ld b, b
    ld d, $53
    add a
    rla
    add hl, bc
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    nop
    ld b, $f5
    ld [$0417], sp
    nop
    xor l
    xor l
    xor l
    xor l
    ld c, $03
    ld d, h
    ld a, [hl]
    inc b
    nop
    call $ada8
    ld c, $03
    ld d, h
    adc b
    call $a1ae
    xor l
    xor l
    xor [hl]
    and c
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    xor b
    xor b
    xor b
    xor b
    call $a1ae
    xor l
    xor l
    xor [hl]
    and c
    and [hl]
    add [hl]
    add [hl]
    and [hl]

jr_003_54ab:
    add [hl]
    add [hl]
    xor b
    adc b
    adc b
    adc b
    adc b
    xor b
    ld b, $fe
    ld bc, $08cd
    dec de
    ld bc, $08cd
    rla
    ld bc, $08cb
    dec de
    ld bc, $08cb
    rla
    ld bc, $08c9
    dec de
    ld bc, $08c9
    rla
    ret z

    ld b, $c8
    add a
    adc b
    adc d
    adc h
    ld d, $54
    ld a, b
    rla
    rla
    nop
    ld d, h
    ldh [c], a
    ld d, l
    ld d, a
    ld d, [hl]
    cpl
    ld d, [hl]
    or a
    ld a, [bc]
    add hl, bc
    ld b, $d2
    rlca
    dec bc
    ld [$0900], sp
    ld [bc], a
    jr jr_003_54ee

jr_003_54ee:
    ldh [$ffe0], a
    inc b
    nop
    inc b
    nop
    adc l
    adc a
    sub d
    ld bc, $d090
    ld [$021b], sp
    ld bc, $08d0
    inc d
    xor a
    sub d
    sub b
    adc e
    ld bc, $cd8d
    ld [$cd1b], sp
    ld [$0114], sp
    adc l
    adc a
    sub d
    sub b
    ld [de], a
    nop
    ld d, l
    ld [hl-], a
    adc e
    adc l
    adc a
    sub b
    xor a
    sub b
    sub d
    ld [bc], a
    res 5, e
    adc a
    adc l
    adc a
    sub b
    ld bc, $08c8
    dec de
    ld bc, $08e8
    inc d
    jr jr_003_556e

    ld c, $01
    ld d, h
    ldh a, [c]
    sub l
    sub h
    sub l
    sub a
    cp c
    sbc b
    sbc c
    ld bc, $08bb
    dec de
    ld bc, $08db
    inc d
    inc bc
    adc c
    adc e
    ld bc, $08e8
    dec de
    ret z

    ld bc, $1888
    nop
    ld [$0314], sp
    sub d
    sub b
    adc a
    ld d, $54
    ldh a, [rNR22]
    ld b, $a0
    add hl, bc
    ld [bc], a
    rlca
    ld a, [bc]
    ld [$1805], sp
    add b
    add b
    adc b
    adc b
    adc b
    add b
    add a
    add a
    add a
    add b
    add [hl]
    add [hl]
    add [hl]
    add b

jr_003_556e:
    add h
    add h
    add h
    inc b
    nop
    inc b
    nop
    ld [$0600], sp
    call c, $8018
    rlca
    ld [$8684], sp
    adc c
    adc b
    xor e
    adc c
    adc b
    ld [$091c], sp
    inc bc
    add hl, de
    db $10
    inc bc
    ld l, b
    ld [hl], h
    ld l, b
    ld h, b
    add hl, de
    ld bc, $0368
    ld [hl], h
    inc bc
    ld l, b
    ld h, b
    add hl, de
    db $10
    inc bc
    ld l, b
    ld [hl], h
    ld l, b
    ld l, b
    add hl, bc
    ld [bc], a
    add hl, de
    ld de, $6874
    ld [hl], h
    ld [hl], h
    ld [$8914], sp
    adc b

Call_003_55aa:
    add e
    add h
    and [hl]
    add h
    add e
    ld [$091c], sp
    inc bc
    add hl, de
    db $10
    ld a, h
    inc bc
    ld [hl], b
    ld h, h
    ld h, b
    add hl, de
    ld bc, $0364
    ld [hl], b
    ld a, h
    ld h, b
    add hl, de
    db $10
    ld h, h
    ld [hl], b
    ld h, h
    ld h, h
    add hl, bc
    ld [bc], a
    add hl, de
    ld bc, $6470
    ld [hl], b
    ld [hl], b
    add hl, de
    ld de, $1408
    add d
    add h
    add [hl]
    adc b
    ld h, [hl]
    ld l, b
    ld l, c
    ld l, e
    adc l
    ld l, e
    ld l, c
    ld l, b
    ld h, [hl]
    ld h, h
    ld h, e
    add [hl]
    adc b
    add hl, bc
    inc bc
    ld [$191c], sp
    ld bc, $7703
    ld l, e
    ld l, e
    add hl, de
    ld de, $7703
    ld [hl], a
    ld l, e
    add hl, de
    db $10
    add hl, bc
    ld [bc], a
    ld [hl], a
    ld l, e
    add hl, de
    ld de, $1408
    xor b
    adc c
    adc e
    add h
    add e
    add h
    add [hl]
    and h
    add e
    add h
    ld [$091c], sp
    inc bc
    add hl, de
    db $10
    ld a, c
    inc bc
    ld l, l
    inc bc
    ld [hl], a
    add hl, de
    ld de, $6b03
    inc bc
    ld [hl], l
    add hl, de
    ld bc, $6903
    inc bc
    ld [hl], h
    inc bc
    ld l, b
    add hl, de
    ld de, $0008
    add hl, bc
    ld [bc], a
    ld c, $01
    ld d, l
    ld [hl], e
    ld d, $55
    ld [hl], c
    rla
    rlca
    ld [bc], a
    ld b, $be
    ld [$091e], sp
    ld bc, $708d
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    adc l
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    adc l
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    adc l
    ld l, l
    ld h, b
    ld l, l
    ld h, b
    ld l, l
    ld h, b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    adc l
    ld [hl], h
    ld h, b
    ld [hl], h
    ld h, b
    ld [hl], h
    ld h, b
    adc l
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    adc l
    ld [hl], d
    ld h, b
    ld [hl], d
    ld h, b
    ld [hl], d
    ld h, b
    adc l
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    ld c, $01
    ld d, [hl]
    ld d, a
    inc b
    nop
    adc e
    ld [hl], d
    ld h, b
    ld [hl], d
    ld h, b
    ld [hl], d
    ld h, b
    ld c, $01
    ld d, [hl]
    ld a, c
    inc b
    nop
    adc e
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld c, $01
    ld d, [hl]
    add [hl]
    adc l
    ld [hl], h
    ld h, b
    ld [hl], h
    ld h, b
    ld [hl], h
    ld h, b
    adc l
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    adc l
    ld [hl], d
    ld h, b
    ld [hl], d
    ld h, b
    ld [hl], d
    ld h, b
    adc l
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    ld [hl], e
    ld h, b
    rrca
    ld bc, $5556
    ld d, $56
    ld d, e
    rla
    rla
    nop
    ld d, [hl]
    pop bc
    ld d, a
    ld l, c
    ld d, a
    ld hl, sp+$58
    sub h
    ld a, [bc]
    ld [$0105], sp
    ret c

    inc b
    ld b, b
    ld b, $82
    rlca
    dec bc
    ld [$0910], sp
    ld bc, $01f6
    sub $dc
    ld bc, $08df
    ld hl, $df01
    ld [$1910], sp
    stop
    inc bc
    sub e
    add hl, de
    ld bc, $1993
    db $10
    sub e
    add b
    add hl, de
    ld bc, $1993
    db $10
    sub e
    add hl, de
    ld bc, $a093
    nop
    and b
    add hl, de
    ld de, $0109
    ld bc, $f603
    ld bc, $dcd6
    ld bc, $08df
    ld hl, $01df
    rst RST_38
    ld [$0610], sp
    ld h, h
    nop
    inc bc
    adc b
    adc b
    adc b
    nop
    xor e
    nop
    adc d
    adc d
    adc d
    nop
    and a
    nop
    adc b
    adc b
    adc b
    adc a
    adc a
    adc a
    adc l
    adc l
    adc l
    nop
    and a
    nop
    adc l
    adc l
    adc l
    xor d
    adc l
    adc e
    adc d
    adc b
    xor b
    adc e
    nop
    xor d
    nop
    and a
    adc d
    nop
    xor b
    and a
    nop
    adc b
    adc b
    adc b
    nop
    xor e
    nop
    adc d
    adc d
    adc d
    nop
    and a
    nop
    adc b
    adc b
    adc b
    adc a
    adc a
    adc a
    adc l
    adc l
    adc l
    nop
    or b
    nop
    adc a
    adc a
    adc a
    nop
    or h
    nop
    sub e
    sub e
    sub e
    nop
    or [hl]
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    add hl, bc
    ld [bc], a
    adc l
    nop
    xor a
    and l
    ld d, $56
    add $17
    inc b
    nop
    ld b, $78
    rlca
    dec bc
    ld [$0910], sp
    ld bc, $02ea
    reti


    inc bc
    xor b
    ld bc, $d703
    ld [$0121], sp
    rst RST_10
    ld [$1910], sp
    stop
    inc bc
    adc l
    add hl, de
    ld bc, $198d
    db $10
    adc l
    add b
    add hl, de
    ld bc, $198d
    db $10
    adc l
    add hl, de
    ld bc, $a08d
    nop
    and b
    add hl, de
    ld de, $ea03
    ld [bc], a
    reti


    inc bc
    xor b
    inc bc
    or a
    inc bc
    xor a
    or [hl]
    or h
    inc b
    jr z, jr_003_581d

    ld [hl], h
    ld c, $0b
    ld d, a
    and a

jr_003_57af:
    ld b, $64
    inc bc
    sub a
    sub a
    sub a
    nop
    cp e
    nop
    sbc e
    sbc e
    sbc e
    nop
    or [hl]
    nop
    sub a
    sub a
    sub a
    inc bc
    adc b
    adc b
    adc b
    add a
    add a
    add a
    nop
    and c
    nop
    add a
    add a
    add a

jr_003_57ce:
    and a
    add a
    add e

jr_003_57d1:
    add e
    add e
    and e
    add e
    nop
    and e
    nop
    and e
    add e
    nop
    and e
    inc bc
    or [hl]
    ld b, $ff
    and b
    or h
    or [hl]
    or a
    cp c
    cp e
    cp h
    cp c
    inc bc
    ret z

    rlc c
    xor a
    ld [$0121], sp

jr_003_57f0:
    rst RST_08
    ld [$ac10], sp
    ld d, $57
    ld l, c
    rla
    rlca
    inc bc
    ld b, $c8
    ld [$0b01], sp
    db $f4
    inc b
    jr z, jr_003_5807

    jr z, jr_003_57af

    adc d
    adc l

jr_003_5807:
    adc d
    adc l
    xor d
    or b
    adc a
    adc l
    ld c, $01

jr_003_580f:
    ld e, b
    ld [bc], a
    xor c
    adc c
    adc a
    adc c
    adc a
    xor c
    or b
    adc a

jr_003_5819:
    sub b
    sub e
    sub e
    sub e

jr_003_581d:
    add b
    sub e
    sub e
    sub e
    and b
    nop
    and b
    inc b
    jr z, jr_003_57d1

    adc d
    adc l
    adc d
    adc l
    xor d
    or b
    adc a
    adc l
    ld c, $01
    ld e, b
    inc h
    and a
    add a
    adc d
    add a
    adc d
    xor a
    xor a
    sub e
    sub e
    inc b
    jr z, jr_003_57ce

    ld c, $0b
    ld e, b
    inc a
    inc b
    jr z, jr_003_57ce

    adc b
    adc b
    nop
    xor b
    nop
    add a

jr_003_584c:
    add a
    add a

jr_003_584e:
    nop
    and a
    inc b
    jr nz, jr_003_57f0

    ld c, $05
    ld e, b
    ld d, b
    sbc e
    sbc e
    sbc e
    inc de
    nop
    ld e, b
    ld a, d
    nop
    cp c
    nop
    sbc e
    sbc e
    sbc e
    nop
    cp e
    nop
    inc bc
    adc b
    adc b
    adc b
    nop
    xor b
    inc b
    jr nz, jr_003_580f

    ld c, $08
    ld e, b
    ld l, l
    nop
    cp e
    rrca
    ld bc, $4358
    cp h
    inc b
    jr nz, jr_003_5819

    ld c, $08
    ld e, b
    ld a, e
    nop
    cp e
    nop
    inc bc
    adc d
    adc d
    adc d
    add e
    add e
    add e
    add e
    and b
    nop
    and l
    ld d, $58
    nop
    rla
    inc b
    jr nz, @+$09

    rlca
    ld b, $14
    ld [$0426], sp
    jr nz, jr_003_584c

    adc l
    adc l
    xor l
    xor l
    adc l
    xor l
    adc l
    ld c, $06
    ld e, b
    sbc h
    rlca
    ld b, $8d
    adc l
    adc l
    rlca
    ld [$8d8d], sp
    adc l
    rlca
    inc c
    adc l
    adc l
    adc l
    rlca
    rrca
    adc l
    adc l
    adc l
    inc b
    jr nz, jr_003_584e

    adc l
    adc l
    nop
    xor a
    nop
    adc l
    adc l
    adc l
    xor a
    adc l
    adc l
    adc l
    adc l
    adc l
    xor a
    adc l
    adc l
    adc l
    xor a
    adc l
    ld c, $02
    ld e, b
    cp [hl]
    adc l
    adc l
    adc l
    nop
    xor l
    nop
    adc l
    adc l
    adc l
    xor l
    adc l
    rlca
    dec bc
    adc l
    adc l
    adc l

jr_003_58e9:
    rlca
    dec c
    adc l
    adc l
    adc l
    rlca
    rrca
    nop
    xor l
    ld b, $ff
    xor a
    ld d, $58
    sub h
    rla
    nop
    ld e, c
    ld [bc], a
    ld e, c
    and d
    ld e, d
    ld c, c
    ld e, d
    sub a
    ld a, [bc]
    inc bc
    dec b
    nop
    ret


    ld b, $d2
    rlca
    dec bc
    ld [$091c], sp
    ld [bc], a
    jr @-$7e

    inc b
    jr nz, @+$78

    ld a, c
    ld a, h
    ld [hl], l
    ld a, c
    ld a, h
    ld [hl], h
    ld a, c
    ld a, h
    ld [hl], e
    ld a, c
    ld a, h
    ld c, $01
    ld e, c
    ld de, $0004
    ld b, $e6
    jr jr_003_58e9

    inc b
    nop
    ld [$0200], sp
    or [hl]
    nop
    ld [hl], l
    halt
    ld a, c
    nop
    inc bc
    ld l, b
    ld h, b
    and a
    nop
    ld h, [hl]
    ld h, e
    ld h, [hl]
    ld [de], a
    jr nz, jr_003_5998

    ld e, d
    ld h, l
    ld h, d
    ld h, l
    ld h, h
    ld h, c
    ld h, h
    ld h, e
    inc bc
    ld a, b
    ld a, e
    nop
    sbc c
    inc bc
    ld c, b
    ld h, b
    ld b, a
    ld bc, $08aa
    dec de
    ld bc, $0e8a
    ld bc, $2959
    ld a, h
    ld a, l
    halt
    ld a, c
    ld a, b
    ld a, c
    ld a, e
    ld a, c
    ld a, e
    nop
    ld a, l
    ld h, b
    or c
    ld h, b
    ld d, d
    ld d, e
    nop
    ld a, c
    ld a, b
    ld a, c
    nop
    or c
    nop
    ld h, b
    ld [hl], d
    ld [hl], e
    ld a, c
    ld a, b
    ld a, c
    ld [bc], a
    nop
    or [hl]
    nop
    ld [hl], l
    halt
    ld a, c
    inc b
    ld [$4068], sp
    ld b, a
    xor d
    nop
    inc bc
    ld [hl], l
    halt
    ld a, c
    ld c, $01
    ld e, c
    ld a, [hl]
    ld a, l
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, b
    nop
    sub l
    ld [$181c], sp

jr_003_5998:
    add b
    nop
    inc bc
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld d, $59
    inc hl
    rla
    ld b, $64
    jr @-$7e

    add hl, bc
    ld [bc], a
    rlca
    ld [$1408], sp
    inc b
    jr nz, jr_003_5a0f

    ld l, d
    ld l, l
    ld h, b
    ld l, d
    ld l, l
    ld h, b
    ld l, d
    ld l, l
    ld h, b
    ld l, d
    ld l, l
    ld c, $01
    ld e, c
    xor h
    nop
    and b
    inc b
    nop
    ld b, $e6
    add hl, bc
    ld bc, $0004
    rlca
    rlca
    ld [bc], a
    or [hl]
    rlca
    add hl, bc
    nop
    ld [hl], l
    halt
    ld a, c
    nop
    inc bc
    ld l, b
    ld h, b
    and a
    nop
    ld l, d
    ld h, l
    ld l, d
    ld l, c

jr_003_59dc:
    ld h, l
    ld l, c
    ld [$001b], sp
    adc b
    ld [$1214], sp
    jr z, jr_003_5a41

    ld [$6041], sp
    ld b, c
    add c
    rlca
    rrca
    add hl, de
    db $10
    inc bc
    ld c, d
    ld c, e
    add hl, de
    ld de, $4d4c
    add hl, de
    ld bc, $194e
    ld de, $4c4d
    ld c, e
    rlca
    rlca
    xor l
    add hl, bc
    ld [bc], a
    ld c, $01
    ld e, c
    add $08
    inc e
    rlca
    dec bc
    adc l
    add c
    inc bc

jr_003_5a0f:
    adc l
    nop
    ld h, b
    ld [$4f14], sp
    ld d, b
    nop
    halt
    ld [hl], l
    halt
    ld [$031c], sp
    adc l
    add c
    inc bc
    adc l
    ld h, b
    ld [$6f14], sp
    ld [hl], b
    halt
    ld [hl], l
    halt
    nop
    ld l, l
    ld h, b
    xor l
    nop
    ld [hl], b
    ld [hl], c
    halt
    inc b
    nop
    ld a, c
    ld b, b
    ld e, c
    cp c
    nop
    ld [hl], b
    ld [hl], c
    halt
    ld c, $01
    ld e, d
    ld sp, $8c00

jr_003_5a41:
    adc l
    adc h
    add b
    and c
    ld d, $59
    ret nz

    rla
    rlca
    inc bc
    ld b, $c8
    ld [$0b17], sp
    jr jr_003_59dc

    adc c
    adc b
    add a
    adc d
    adc c
    adc b
    add a
    ld b, $fe
    inc b
    jr nz, jr_003_5a62

    jr nz, jr_003_5aca

    ld l, l
    ld [hl], b

jr_003_5a62:
    ld l, c
    ld l, l
    ld [hl], b
    ld l, b
    ld l, l
    ld [hl], b
    ld [de], a
    jr nz, @+$5c

    ld [hl], e
    ld h, a
    ld l, l
    ld [hl], b
    ld c, $08
    ld e, d
    ld e, l
    ld h, l
    ld h, l
    ld h, l
    ld b, $c8
    nop
    adc d
    adc d
    adc c
    adc c
    adc d
    adc d
    adc c
    adc c
    adc d
    adc d
    adc c
    adc c
    ld b, $fe
    nop
    ld h, l
    ld l, c
    ld l, h
    ld h, h
    ld l, c
    ld l, h
    ld h, l
    ld l, c
    ld l, h
    nop
    sub c
    ld d, $5a
    ld e, e
    rla
    ld b, $0a
    ld [$8c15], sp
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    rlca
    add hl, bc
    adc l
    inc b
    nop
    inc b
    nop
    rlca
    rlca
    ld [$8c15], sp
    adc h
    adc h
    ld [$1226], sp
    nop
    ld e, d
    cp e
    adc l
    ld c, $0c
    ld e, d
    and a
    rlca
    dec bc
    adc h
    ld d, $5a
    and l
    rla
    nop
    ld e, d
    bit 3, e
    ld h, [hl]
    ld e, e
    ldh [c], a
    ld e, h

jr_003_5aca:
    add [hl]
    dec b
    ld bc, $064c
    or h
    rlca
    inc c
    add hl, bc
    ld bc, $0804
    ld [$1811], sp
    ret nz

    ld l, l
    ld l, b
    ld l, l
    ld [hl], b
    ld l, a
    ld l, l
    ld l, a
    ld l, b
    ld l, l
    ld l, b
    ld l, l
    ld [hl], b
    ld l, a
    ld l, l
    ld l, a
    ld l, b
    ld l, l
    ld l, b
    ld l, l
    ld [hl], h
    ld [hl], d
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, l
    ld l, a
    ld l, l
    ld l, a
    ld h, [hl]
    ld [bc], a
    add [hl]
    ld b, l
    ld b, e
    ld bc, $08a5
    jr z, jr_003_5b04

    push bc

jr_003_5b04:
    ld [$1811], sp
    add b
    xor b
    or h
    nop
    ld [hl], d
    ld [hl], h
    ld [hl], d
    nop
    ld [hl], b
    ld l, a
    sub b
    adc l
    adc a
    adc h
    adc l
    adc d
    adc l
    ld l, h
    ld l, d
    adc h

jr_003_5b1b:
    adc b
    sub b
    ld l, a
    ld l, l
    adc a
    adc h
    ld [bc], a
    xor l
    sub b
    xor a
    or e
    ld bc, $08b4
    jr z, jr_003_5b2c

    or h

jr_003_5b2c:
    ld [$1811], sp
    ret nz

    ld bc, $01b5
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld bc, $01b4
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld [hl], b
    ld bc, $01b2
    ld [hl], d
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld l, a
    ld l, l
    ld l, a
    ld l, l
    ld l, h
    ld l, l
    ld l, h
    ld l, l
    ld l, a
    or b
    ld [hl], b
    ld l, a
    ld [hl], b
    ld [hl], d
    sub h
    adc l
    or h
    push de
    sub h
    sub h
    ld bc, $08d5
    jr z, jr_003_5b62

    push de

jr_003_5b62:
    ld d, $5a
    call nc, Call_000_0617
    ret z

    rlca
    dec bc
    ld [$0911], sp
    ld bc, $0004
    jr @-$3e

    reti


    rst RST_10
    sub $b5
    cp b
    ld sp, hl
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    inc bc
    ld l, l
    ld l, a
    ld [hl], b
    ld l, l
    ld l, c
    ld l, e
    ld l, l
    ld l, c
    ld l, b
    ld l, c
    ld l, e
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, c
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld h, h
    ld h, c
    ld h, h
    ld h, [hl]
    ld h, h
    ld h, c
    ld h, e
    ld h, h
    ld h, [hl]
    ld h, e
    jr jr_003_5b1b

    xor b
    or h
    nop
    ld [hl], d
    ld [hl], h
    ld [hl], d
    nop
    ld [hl], b
    ld l, a
    sub b
    adc l
    adc a
    adc h
    adc l
    adc d
    adc l
    ld l, h
    ld l, d
    adc h
    adc b
    ld [hl], b
    ld l, a
    ld [hl], b
    ld l, l
    xor a
    ld l, a
    ld l, l
    ld l, a
    ld l, e
    xor l
    ld l, l
    ld l, h
    ld l, l
    ld l, d
    xor h
    ret z

    and h
    ld l, e
    ld l, d
    ld l, e
    ld l, l
    xor c
    adc a
    adc c
    inc b
    nop
    ld a, c
    ld [hl], h
    ld a, c
    ld a, h
    ld a, d
    ld [hl], l
    ld a, d
    ld a, [hl]
    inc bc
    ld l, c
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    ld [hl], l
    ld c, $01
    ld e, e
    rst RST_00
    ld d, $5b
    ld l, [hl]
    rla
    rlca
    inc bc
    ld b, $aa
    ld [$091e], sp
    ld [bc], a
    inc b
    nop
    ld l, l
    ld [bc], a
    ld bc, $018d
    xor l
    ld l, l
    ld [bc], a
    ld bc, $018d
    xor l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld [bc], a
    adc l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    sub h
    ld [hl], h
    ld [hl], h
    sub h
    ld [hl], h
    ld [hl], h
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc a
    ld l, a
    ld l, a
    adc a
    ld l, a
    ld l, a
    sub h
    ld [hl], h
    ld [hl], h
    adc b
    ld l, b
    ld l, b
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, l
    ld l, l
    ld [hl], d
    ld [hl], d
    inc b
    nop
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    ld c, $01
    ld e, h
    ld [hl], h
    ld d, $5b
    ld [$1717], a
    nop
    ld e, h
    sub b
    ld e, l
    ld e, h
    ld e, [hl]
    ld [$7f5e], sp
    ld a, [bc]
    inc bc
    dec b
    inc bc
    nop
    ld b, $ff
    rlca
    rrca
    ld [$0923], sp
    ld bc, $0004
    add hl, de
    db $10
    ld d, h
    add hl, de
    ld de, $1953
    ld bc, $1954
    ld de, $1955
    db $10
    ld d, [hl]
    add hl, de
    ld de, $1955
    ld bc, $1956
    ld de, $1957
    db $10
    ld e, b
    add hl, de
    ld de, $1957
    ld bc, $1958
    ld de, $1959
    db $10
    ld e, d
    add hl, de
    ld de, $1959
    ld bc, $195a
    ld de, $195b
    db $10
    ld c, $01
    ld e, h
    sbc l
    add hl, de
    ld de, $6b03
    ld l, d
    ld l, [hl]
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], d
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld a, [bc]
    inc c
    jr @-$3e

    dec b
    ld bc, $07d8
    dec bc
    add hl, bc
    nop
    inc b
    nop
    ld b, $aa
    ld [$9905], sp
    inc bc
    adc b
    adc b
    inc bc
    ld [hl], h
    ld [hl], h
    sbc c
    sbc a
    sbc a
    ld [hl], h
    ld [hl], h
    sub e
    sbc h
    sbc h
    ld [hl], h
    ld [hl], h
    sbc b
    sbc e
    sbc e
    ld [hl], h
    ld [hl], h
    sbc [hl]
    inc bc
    adc c
    adc c
    inc bc
    ld [hl], h
    ld [hl], h
    sbc e
    inc bc
    adc b
    adc b
    inc bc
    ld [hl], h
    ld [hl], h
    sbc b
    sbc [hl]
    sbc [hl]
    ld [hl], h
    ld [hl], h
    sbc b
    sbc h
    sbc h
    add b
    ld b, $c8
    ld [$7b10], sp
    ld a, h
    ld a, e
    ld a, h
    nop
    ld a, e
    ld a, h
    ld a, e
    nop
    ld a, c
    ld a, e
    ld a, b
    ld h, b
    ld b, $46
    sbc a
    inc bc
    adc b
    ld b, $c8
    inc bc
    sub h
    ld a, [hl]
    inc bc
    ld l, b
    ld h, [hl]
    ld l, b
    nop
    ld h, [hl]
    ld l, b
    ld h, [hl]
    nop
    ld h, h
    ld h, [hl]
    ld h, h
    ld h, b
    ld b, $46
    adc h
    adc l
    ld b, $c8
    add c
    add d
    adc c
    add [hl]
    add d
    and c
    inc bc
    cp b
    ld d, $5c
    rst RST_28
    rla
    ld b, $ff
    rlca
    ld b, $08
    inc hl
    add hl, bc
    ld bc, $8002
    inc b
    nop
    ld d, h
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, c
    ld e, d
    ld e, e
    ld c, $01
    ld e, l
    ld h, [hl]
    inc bc
    ld l, e
    ld l, d
    ld l, [hl]
    ld l, l
    ld [hl], b
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    add hl, bc
    nop
    rlca
    dec bc
    inc b
    nop
    ld b, $c8
    ld [$0405], sp
    nop
    ld a, c
    ld a, e
    ld a, h
    ld a, [hl]
    inc bc
    ld l, b
    ld l, l
    ld l, h
    ld l, l
    ld l, c
    ld l, b
    ld h, [hl]
    ld l, c
    ld l, b
    ld h, [hl]
    ld h, h
    ld l, b
    ld h, [hl]
    ld h, h
    ld h, e
    ld h, [hl]
    ld h, h
    ld h, e
    ld h, c
    ld h, h
    ld [de], a
    ld [$bc5d], sp
    ld h, e
    ld h, c
    inc bc
    ld a, b
    ld a, e
    ld a, c
    ld a, b
    ld a, c
    ld a, e
    ld c, $01
    ld e, l
    sub b
    ld l, b
    ld l, c
    ld l, b
    ld h, [hl]
    ld h, l
    ld l, e
    ld l, h
    ld l, l
    ld b, $fa
    ld [$6f10], sp
    ld [hl], c
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld [hl], b
    ld b, $46
    ld [$030c], sp
    ld l, a
    ld h, b
    sbc c
    sbc b
    add b
    ld b, $fa
    ld [$0310], sp
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld [hl], b
    ld [hl], h
    ld b, $46
    ld [$610c], sp
    ld h, b
    add [hl]
    add h
    add c
    ld b, $c8
    ld [$6f10], sp
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], h
    ld [hl], d
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld l, a
    ld l, l
    ld l, a
    ld l, l
    ld l, h
    ld l, c
    ld l, h
    ld d, $5d
    adc d
    rla
    rlca
    inc bc
    ld b, $ff
    ld [$0401], sp
    nop
    ld d, h
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, a

jr_003_5e18:
    ld e, b
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, c
    ld e, d
    ld e, e
    ld c, $01
    ld e, [hl]
    ld c, $03
    ld l, e
    ld l, d
    ld l, [hl]
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], d
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld b, $8c
    ld [$091e], sp
    ld bc, $0004
    adc l
    adc l
    adc l
    ld l, l
    ld l, l
    adc l
    adc l
    adc l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    adc l
    adc l
    ld l, l
    ld l, l
    adc l
    adc l
    adc l
    ld l, l
    ld l, l
    ld l, b
    ld l, b
    sbc b
    sbc b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    sbc c
    sbc c
    adc b
    ld l, b
    ld l, b
    sub l
    sub l
    ld l, b
    ld l, b
    adc l
    sub h
    sub h
    adc l
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld [hl], h
    or e
    sub h
    adc a
    xor b
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    cp b
    sbc c
    sub h
    xor l
    ld [hl], d
    ld [hl], d
    sub d
    sub d
    ld [hl], d
    ld [hl], d
    or h
    xor b
    ld d, $5e
    scf
    rla
    rla
    nop
    ld e, [hl]
    adc c
    ld e, a
    ld e, h
    ld h, b
    ld a, b
    ld h, c
    ld h, e
    ld a, [bc]
    inc b
    dec b
    ld bc, $0624
    ldh a, [rTAC]
    dec bc
    ld [$0914], sp
    ld [bc], a
    jr jr_003_5e18

    inc b
    nop
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld [hl], a
    ld a, c
    ld h, b
    ld [hl], d
    ld h, b
    ld bc, $08ba
    dec de
    ld bc, $08ba
    inc d
    ld [hl], b
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld [hl], a
    ld h, b
    ld [hl], b
    ld h, b
    ld bc, $08b9
    dec de
    ld bc, $08b9
    inc d
    ld l, [hl]
    ld [hl], b
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld h, b
    ld l, [hl]
    ld h, b
    sub a
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld h, b
    sub c
    ld [bc], a
    sub d
    ld [hl], h
    ld d, l
    ld d, h
    ld d, l
    ld bc, $0154
    ld [hl], h
    ld d, d
    ld b, b
    ld bc, $08b2
    dec de
    ld bc, $08b2
    inc d
    inc bc
    adc l
    ld l, e
    ld l, c
    ld l, b
    ld h, b
    ld h, [hl]
    ld h, b
    ld bc, $08ae
    dec de
    ld bc, $08ae
    inc d
    adc e
    ld l, c
    ld l, b
    ld h, [hl]
    ld h, b
    ld h, h
    ld h, b
    ld bc, $08ad
    dec de
    ld bc, $08ad
    inc d
    adc c
    ld l, b
    ld h, [hl]
    ld h, h
    ld h, d
    ld h, c
    ld h, b
    ld bc, $08ab
    dec de
    ld bc, $088b
    inc d
    adc c
    ld c, b
    ld b, [hl]
    adc b
    ld l, c
    ld c, b
    ld c, c
    adc b
    ld b, [hl]
    ld b, b
    ld bc, $08a6
    dec de
    ld bc, $8086
    ld [$6614], sp
    ld h, b
    ld h, c
    ld h, b
    ld l, b
    ld h, b
    ld h, c
    ld h, b
    adc c
    ld l, b
    ld h, [hl]
    ld l, b
    ld h, b
    ld h, c
    ld h, b
    ld h, [hl]
    ld l, b
    ld l, c
    ld l, e
    ld l, l
    ld [hl], d
    ld [hl], c
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld [hl], c
    ld l, a
    ld l, l
    ld h, b
    add c
    inc bc
    ld [hl], d
    ld h, b
    ld l, l
    ld h, b
    ld [hl], h
    ld h, b
    ld l, l
    ld h, b
    sub l
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld a, c
    ld a, b
    ld a, c
    ld [hl], h
    ld h, b
    ld a, c
    ld h, b
    ld [hl], h
    ld h, b
    ld a, l
    ld h, b
    sbc [hl]
    ld a, l
    ld a, [hl]
    sub d
    add b
    ld d, $5e
    sbc b
    rla
    ld b, $f0
    rlca
    dec bc
    add hl, bc
    ld bc, $8018
    ret nz

    inc b
    nop
    ld [$6e14], sp
    ld [hl], b
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld h, b
    ld l, [hl]
    ld h, b
    ld bc, $0897

jr_003_5f74:
    dec de
    ld bc, $0897
    inc d
    sub l
    sub h
    ld l, l
    ld l, [hl]
    ld [hl], b
    ld [hl], d
    ld [hl], h
    ld h, b
    ld l, l
    ld h, b
    ld bc, $0895
    dec de
    ld bc, $0895
    inc d
    sub h
    sub d
    sub h
    ld [hl], d
    ld [hl], c
    ld l, a
    ld h, b
    adc l
    ld bc, $088d
    dec de

jr_003_5f97:
    ld bc, $088d
    inc d
    adc e
    ld l, l
    ld l, e
    adc c
    rlca
    dec bc
    ld [$181c], sp
    add b
    inc bc
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld [hl], c
    add hl, bc
    ld [bc], a
    ld [$0714], sp
    add hl, bc
    jr jr_003_5f74

    inc bc
    ld [hl], d
    ld h, b
    add hl, de
    db $10
    ld l, l
    ld h, b
    add hl, de
    ld bc, $6075
    add hl, de
    ld de, $606d
    add hl, de
    ld bc, $7597
    ld [hl], h
    add hl, de
    ld de, $7472
    add hl, de
    db $10
    ld [hl], d
    ld [hl], c
    add hl, de
    ld de, $6070
    add hl, de
    db $10
    ld l, e
    ld h, b
    add hl, de
    ld bc, $6074
    add hl, de
    ld de, $606b
    add hl, de
    db $10

jr_003_5fe2:
    sub l
    ld [hl], h
    ld [hl], d
    add hl, de
    ld de, $7270
    add hl, de
    ld bc, $6f70
    add hl, de
    ld de, $606e
    add hl, de
    ld bc, $6069
    add hl, de
    db $10
    ld [hl], d
    ld h, b
    add hl, de
    ld de, $6069
    add hl, de
    ld bc, $7294
    ld [hl], c

Call_003_6002:
    add hl, de
    ld de, $6d6f
    add hl, de
    db $10
    ld l, e
    ld l, c
    add hl, de
    ld de, $9102
    ld [hl], d
    adc e
    ld c, l
    ld c, e
    ld c, c
    ld c, e
    adc c
    jr jr_003_5f97

    ld [$071c], sp
    dec bc
    inc bc
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld h, b
    jr jr_003_5fe2

    ld [$0714], sp
    add hl, bc
    inc bc
    adc l
    ld a, c
    ld [hl], a
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld h, b
    ld [hl], c
    ld [hl], d
    ld a, d
    ld a, c
    ld [hl], a
    ld [hl], l
    ld [hl], a
    ld [hl], l
    ld [hl], h
    ld [hl], d
    sbc c
    ld [hl], a
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld [hl], a
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld [hl], c
    ld h, b
    adc e
    ld l, l
    ld l, e
    ld l, c
    ld l, b
    ld l, c
    ld h, b
    ld h, [hl]
    ld h, b
    ld h, l
    ld h, [hl]
    ld l, b
    ld l, c
    ld l, e
    ld l, c
    ld l, b
    ld h, [hl]
    ld l, l
    ld l, a
    ld [hl], c
    ld h, b
    ld l, l
    ld l, a
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld h, b
    ld l, c
    ld l, e
    ld l, l
    ld l, e
    ld bc, $0889
    dec de
    ld bc, $0889
    inc d
    ld bc, $0895
    dec de
    ld bc, $1695
    ld e, a
    ld h, l
    rla
    dec bc
    jr jr_003_6082

    inc bc
    ld b, $f0
    ld [$011e], sp
    sub d

jr_003_6082:
    ld [$011b], sp
    sub d
    ld [$911e], sp
    sub d
    sub a
    sbc c
    sbc d
    sub a
    ld bc, $0890
    dec de
    ld bc, $0890
    ld e, $8f
    sub b
    sub l
    sub a
    sbc c
    sub l
    ld bc, $088e
    dec de
    ld bc, $088e
    ld e, $8d
    adc [hl]
    ld bc, $0897
    dec de
    ld bc, $0897
    ld e, $95
    sub h
    inc b
    nop
    sub h
    ld l, l
    ld l, a
    ld [hl], c
    ld h, b
    sub c
    ld bc, $08b2
    dec de
    ld bc, $08b2
    ld e, $01
    sub l
    ld [$011b], sp
    sub l
    ld [$971e], sp
    sbc c
    ld a, d
    ld a, h
    ld a, d
    ld a, c
    ld a, d
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], h
    ld [hl], b
    ld [hl], h
    ld a, d
    ld [hl], h
    ld [hl], b
    ld [hl], h
    ld a, c
    ld [hl], l
    ld [hl], b

Call_003_60dd:
    ld [hl], l
    ld l, l
    ld [hl], b
    ld l, c
    ld l, l
    ld bc, $0892
    dec de
    ld bc, $0892
    ld e, $94
    sub l
    ld [hl], a
    ld a, d
    ld [hl], h
    ld [hl], a
    ld [hl], c
    ld [hl], h
    ld l, [hl]
    ld [hl], c
    ld bc, $08ad
    dec de
    ld bc, $08ad
    ld e, $b2
    and [hl]
    ld b, $96
    ld h, [hl]
    ld l, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, l
    ld [hl], l
    ld l, l
    ld [hl], h
    ld [hl], a
    ld [hl], c
    ld [hl], h
    ld l, l
    ld [hl], c
    ld l, e
    ld l, l
    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], d
    ld l, l
    ld [hl], l
    ld a, c
    ld [hl], l
    ld l, l
    ld [hl], h
    ld a, l
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    ld a, l
    ld [hl], h
    ld b, $fe
    ld bc, $0886
    dec de
    ld bc, $0886
    ld e, $88
    adc c
    ld l, e
    ld [hl], c
    ld [hl], d
    ld [hl], h
    ld [hl], a
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld l, l
    ld h, b
    ld l, l
    ld h, b
    ld [hl], c
    ld h, b
    ld [hl], c
    ld h, b
    sub d
    ld [hl], l
    ld [hl], h
    sub d
    add b
    add [hl]
    adc l
    sub d
    adc l
    sub a
    sbc c
    sbc d
    sub a
    add h
    adc e
    sub b
    adc e
    sub l
    sub a
    sbc c
    sub l
    adc [hl]
    sub l
    sbc d
    sub l
    ld bc, $0897
    dec de
    ld bc, $0897
    ld e, $95
    sub h
    ld d, $60
    or b
    rla
    rla
    nop
    ld h, c
    ld l, l
    ld h, d
    ld c, $62
    sbc a
    ld h, d
    rst RST_30
    dec b
    nop
    ldh a, [rTMA]
    ld b, [hl]
    rlca
    inc c
    ld [$0422], sp
    ld [$0109], sp
    ld c, d
    ld [bc], a
    halt
    ld b, l
    ld [bc], a
    ld [hl], c
    ld b, h
    ld [bc], a
    ld [hl], b
    ld b, l
    ld [bc], a
    ld [hl], c
    ld c, $01
    ld h, c
    halt
    inc b
    ld [$0808], sp
    ld b, $be
    add hl, bc
    nop
    ld l, d
    ld l, h
    ld [bc], a
    adc l
    ld l, h
    ld l, l
    ld l, h
    ld [bc], a
    adc l
    ld c, h
    ld c, l
    ld l, a
    ld l, l
    ld l, h
    ld l, d
    ld [bc], a
    adc d
    ld l, h
    and a
    add hl, bc
    ld [bc], a
    add hl, de
    ld bc, $564a
    add hl, de
    db $10
    ld b, a
    ld d, e
    add hl, de
    ld bc, $5448
    add hl, de
    db $10
    ld b, h
    ld d, b
    add hl, de
    ld bc, $5145
    add hl, de
    db $10
    ld b, d
    ld c, [hl]
    add hl, de
    ld bc, $4f43
    add hl, de
    db $10
    inc bc
    ld d, a
    inc bc
    ld c, e
    add hl, de
    ld de, $0009
    ld l, d
    ld l, h
    ld [bc], a
    adc l
    ld l, h
    ld l, l
    ld l, h
    ld [bc], a
    adc l
    ld c, h
    ld c, l
    ld l, a
    ld l, l
    ld l, h
    ld l, l
    sub c
    ld l, a
    ld [hl], c
    sub d
    ld [hl], c
    ld [hl], d
    sub h
    ld [hl], d
    ld [hl], h
    sub [hl]
    ld [hl], h
    halt
    add hl, bc
    ld bc, $6c6c
    ld [bc], a
    add b
    ld l, h
    ld l, h
    ld l, l
    ld l, h
    ld l, d
    ld l, c
    ld h, l
    ld h, h
    ld h, e
    inc bc
    ld [hl], l
    ld [hl], h
    inc bc
    ld l, h
    ld l, h
    ld [bc], a
    add b
    ld l, h
    ld l, h
    ld l, l
    ld [hl], d
    ld [hl], c
    ld l, a
    ld l, e
    ld l, h
    ld h, l
    ld h, e
    ld h, c
    ld d, $61
    adc d
    rla
    ld a, [bc]
    inc bc
    ld b, $46
    rlca
    inc c
    ld [$0222], sp
    ld h, b
    add hl, bc
    ld bc, $4a03
    ld [bc], a
    halt
    ld b, l
    ld [bc], a
    ld [hl], c
    ld b, h
    ld [bc], a
    ld [hl], b
    ld b, l
    ld [bc], a
    ld [hl], c
    ld c, d
    ld [bc], a
    halt
    ld b, l
    ld [bc], a
    ld [hl], c
    ld b, h
    ld [bc], a
    ld [hl], b
    ld b, l
    inc b
    nop
    ld b, $be
    ld [$0908], sp
    nop
    ld a, l
    inc bc
    ld l, b
    ld [bc], a
    adc b
    ld l, b
    ld l, b
    ld l, b
    ld [bc], a
    adc b
    ld c, b
    ld c, b
    ld l, b
    ld l, b
    ld l, b
    ld h, l
    ld [bc], a
    add a
    ld h, a
    ld bc, $08a3
    jr z, @+$03

    jp $0808


    ld h, l
    ld l, b
    ld [bc], a
    adc b
    ld l, b
    ld l, b
    ld l, b
    ld [bc], a
    adc b
    ld c, b
    ld c, b
    ld l, b
    ld l, b
    ld l, b
    ld l, d
    adc h
    ld l, h
    ld l, h
    adc l
    ld l, l
    ld l, l
    adc a
    ld l, a
    ld l, a
    sub c
    ld [hl], c
    ld [hl], c
    add hl, bc
    ld bc, $6565
    ld [bc], a
    add b
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    rlca
    ld b, $02
    ld h, b
    ld l, d
    ld l, c
    ld h, l
    ld h, h
    ld h, e
    inc bc
    ld d, l
    rlca
    inc c
    ld a, l
    ld a, l
    ld [bc], a
    add b
    ld a, l
    ld a, l
    ld a, l
    ld [bc], a
    ld h, b
    rlca
    ld b, $03
    ld [hl], d
    ld [hl], c
    ld l, a
    ld l, e
    ld l, h
    ld h, l
    ld b, e
    rlca
    inc c
    ld d, $62
    ld sp, $0917
    ld [bc], a
    ld b, $c8
    rlca
    inc bc
    ld [$8a1e], sp
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    inc b
    nop
    inc b
    nop
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    adc d
    add [hl]
    ld [de], a
    nop
    ld h, d
    res 1, h
    add a
    adc h
    add a
    adc h
    add a
    adc h
    add a
    ld c, $01
    ld h, d
    or c
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld c, d
    ld c, d
    adc d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld [bc], a
    add b
    and b
    ld c, d
    ld c, d
    adc d
    ld l, d
    ld l, d
    ld l, d

jr_003_62ed:
    ld l, d
    ld l, d
    ld l, d
    ld [bc], a
    add b
    and b
    ld d, $62
    xor a
    rla
    rla
    nop
    ld h, e
    ld bc, $8c63
    ld h, h
    jr nz, jr_003_6364

    and l
    ld a, [bc]
    dec b
    dec b
    ld bc, $0655
    ld a, [$0f07]
    ld [$1810], sp
    ret nz

    add hl, de
    db $10
    inc b
    nop
    ld d, c
    ld d, d
    ld d, l
    ld e, d
    ld e, e
    inc bc
    ld c, b
    add hl, de
    ld de, $010e
    ld h, e
    db $10
    add hl, de
    ld bc, $4f4e
    ld d, h
    add hl, bc
    inc bc
    ld c, [hl]
    ld c, a
    ld d, h
    ld a, [bc]
    dec b
    jr jr_003_62ed

    rlca
    dec bc
    add hl, bc
    ld bc, $0105
    ld l, c
    inc b
    ld [$1119], sp
    ld b, $46
    ld [$6b12], sp
    ld l, e
    ld l, e
    ld h, b
    ld l, e
    ld l, e
    ld l, e
    ld h, b
    ld l, e

Call_003_6345:
    ld l, e
    ld l, e
    ld h, b
    ld l, e
    ld l, e
    ld l, e
    ld h, b
    ld b, $64
    ld [$aa13], sp
    and a
    ld bc, $01c8
    add sp, $04
    nop
    ld [bc], a
    add b
    inc bc
    ld l, a
    ld [bc], a
    adc l
    ld l, e
    ld [bc], a
    adc d
    ld l, l
    ld [bc], a
    adc e

jr_003_6364:
    ld l, d
    ld [bc], a
    adc b
    ld l, e
    ld [bc], a
    adc d
    ld l, b
    ld [bc], a
    add [hl]
    ld h, h
    and e
    ld c, $01
    ld h, e
    ld d, [hl]
    ld [bc], a
    sub b
    ld c, a
    ld c, l
    adc a
    adc e
    ld [bc], a
    adc l
    ld c, e
    ld c, d
    adc e
    adc b
    sub h
    sub d
    sub b
    adc a
    xor l
    ld [bc], a
    adc e
    ld l, d
    add sp, $16
    ld h, e
    inc [hl]
    rla
    ld b, $fa
    rlca
    ld [$1008], sp
    jr @-$3e

    add hl, de
    db $10
    ld [bc], a
    ld h, b
    inc b
    nop
    ld d, c
    ld d, d
    ld d, l
    ld e, d
    ld e, e
    inc bc
    ld c, b
    add hl, de
    ld de, $010e
    ld h, e
    sbc b
    add hl, de
    ld bc, $4f4e
    ld d, h
    add hl, bc
    inc bc
    jr jr_003_63f0

    ld b, $64
    rlca
    dec bc
    add hl, bc
    ld bc, $0004
    add hl, de
    ld de, $4606
    ld [$7c12], sp
    ld a, h
    sbc h
    ld a, h
    ld a, h
    sbc h
    ld a, h
    ld a, h
    sbc h
    ld a, h
    ld a, h
    sbc h
    ld b, $64
    ld [$7c13], sp
    ld a, e
    ld a, h
    ld a, c
    ld a, e
    ld a, c
    ld a, e
    halt
    ld [bc], a
    sbc c
    ld d, a
    ld d, [hl]
    ld bc, $01b7
    rst RST_30
    inc b
    ld [$6a68], sp
    ld l, e
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, d
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld l, b
    ld h, h
    ld h, e
    ld h, h
    ld h, [hl]
    ld h, e

jr_003_63f0:
    ld h, c
    ld h, e
    ld h, h
    ld h, c
    inc bc
    ld [hl], a
    ld a, c
    ld a, e
    ld [hl], a
    halt
    ld [hl], a
    ld a, c
    halt
    ld a, c
    ld d, a
    ld d, [hl]
    sub a
    ld c, $01
    ld h, e
    sbc $03
    adc b
    adc d
    add [hl]
    add e
    add l
    add a
    add e
    inc bc
    sub a
    inc bc
    sub b
    adc e
    adc b
    adc e
    adc e
    adc d
    add e
    add c
    and c
    inc bc
    or [hl]
    rst RST_10
    ld d, $63
    or [hl]
    rla
    rlca
    inc bc
    ld b, $ff
    ld [$091e], sp
    ld bc, $5251
    ld d, l
    ld e, d
    ld e, e
    inc bc
    ld c, b
    ld c, [hl]
    ld c, a
    ld d, h
    add hl, bc
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld d, h
    inc bc
    ld d, c
    ld d, d
    ld d, l
    ld e, d
    ld e, e
    inc bc
    ld c, b
    ld b, $a0
    ld [$091e], sp
    ld bc, $0307
    inc b
    nop
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    ld l, l
    ld l, l
    adc l
    inc b
    nop
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld c, $01
    ld h, h
    ld d, l
    inc b
    nop
    adc b
    ld l, b
    ld l, b
    adc b
    ld l, b
    ld l, b
    adc b
    ld l, b
    ld l, b
    adc b
    ld l, b
    ld l, b
    ld c, $03
    ld h, h
    ld l, e
    sub b
    ld [hl], d
    ld [hl], d
    adc e
    ld l, e
    ld l, e
    adc l
    ld l, a
    ld l, a
    adc b
    ld l, b
    ld l, b
    adc l
    ld l, a
    ld l, a
    sub b
    ld [hl], c
    ld [hl], c
    sub d
    ld [hl], d
    ld [hl], d
    sub e
    ld [hl], e
    ld [hl], e
    adc b
    ld l, b
    ld l, b
    adc b
    ld l, b
    ld l, b
    adc b
    ld l, b
    ld l, b
    adc b
    ld l, b
    ld l, b
    ld d, $64
    ld b, a
    rla
    rla
    nop
    ld h, h
    xor a
    ld h, l
    ld a, h
    ld h, [hl]
    dec a
    ld h, [hl]
    and c
    ld a, [bc]
    dec b
    dec b
    ld bc, $0680
    ret z

    rlca
    rrca
    ld [$0908], sp
    ld bc, $91b4
    sub d
    or h
    ld [bc], a
    or h
    sbc c
    cp [hl]
    ld bc, $08bd
    jr z, jr_003_64ca

    cp l

jr_003_64ca:
    ld [$9b08], sp
    sbc l
    ld bc, $08b9
    jr z, jr_003_64d4

    cp c

jr_003_64d4:
    ld [$9f08], sp
    sbc l
    cp a
    ld bc, $c803
    ld [$0128], sp
    ret z

    ld [$a508], sp
    xor b
    xor b
    add [hl]
    add l
    add [hl]
    add l
    ld [bc], a
    and c
    add c
    add c
    add e
    add [hl]
    add l
    and c
    and c
    and e
    inc b
    nop
    ld b, $3c
    ld [$0408], sp
    nop
    sbc c
    ld a, c
    ld a, c

jr_003_64fe:
    ld [bc], a
    cp c
    ld a, c
    ld a, c
    sbc c
    sbc [hl]
    sbc [hl]
    ld a, l
    ld a, e
    sbc l
    cp c
    ld a, c
    ld a, c
    sbc c
    sbc [hl]
    sbc [hl]
    ld a, l
    ld a, e
    sbc l
    cp c
    ld [de], a
    nop
    ld h, l
    dec hl
    ld a, l
    inc bc
    ld l, b
    adc l
    adc b
    xor l
    ld bc, $088b
    jr z, @+$03

    rrc b
    ld [$098c], sp
    ld [bc], a
    ld c, $01
    ld h, h
    ld sp, hl
    ld a, [hl]
    ld a, l
    sbc c
    sub h
    or a
    ld bc, $0896
    jr z, jr_003_6536

    or [hl]

jr_003_6536:
    ld [$0927], sp
    ld bc, $6406
    jr jr_003_64fe

    sub a
    sub [hl]
    sub h
    or [hl]
    sbc b
    sbc c
    cp e
    sbc l
    sbc [hl]
    ld [$0308], sp
    adc b
    add b
    ld [$0227], sp
    and l
    add l
    add e
    add l
    inc bc
    or [hl]
    sbc b
    sbc c
    sbc e
    sbc l
    sbc [hl]
    sbc a
    ld bc, $a803
    ld [$0128], sp
    xor b
    ld [$a727], sp
    xor b
    adc d
    add b

jr_003_6568:
    ld [bc], a
    or d
    sub d
    sub c
    adc a
    sub c
    add b
    ld [bc], a
    cp b
    sbc b
    sub [hl]
    sub h
    or [hl]
    xor d
    xor l
    xor h
    ld d, $64
    di
    rla
    ld b, $c8
    rlca
    dec c
    ld [$0908], sp
    ld bc, $8db2
    adc a
    or c
    ld [bc], a
    xor l
    sub h
    cp c
    ld bc, $08b9
    jr z, jr_003_6592

    reti


jr_003_6592:
    ld [$d608], sp
    reti


    ld bc, $08b8
    jr z, jr_003_659c

    cp b

jr_003_659c:
    ld [$9b08], sp
    sbc c
    sbc b
    sub h
    ld [$0627], sp
    ret z

    jr jr_003_6568

    reti


jr_003_65a9:
    rst RST_10
    sub $d5
    sub $d5
    inc b
    nop
    rlca
    dec bc
    ld b, $3c
    ld [$1808], sp
    nop
    sub c
    ld [hl], c
    ld [hl], c
    ld [bc], a
    or c
    ld [hl], c
    ld [hl], c
    sub c
    sbc c
    sbc c
    ld a, c
    ld a, c
    sbc c
    or h
    ld [hl], h
    ld [hl], h
    sub h
    sbc c
    sbc c
    ld a, c
    ld a, c
    sbc c
    or h
    ld [hl], h
    ld a, l
    sbc l
    sbc c
    cp l
    ld bc, $089f
    jr z, jr_003_65da

    rst RST_18

jr_003_65da:
    ld [$0708], sp
    rrca
    inc bc
    adc c
    and l
    rlca
    dec bc
    ld [$0627], sp
    ld a, b
    jr jr_003_65a9

    inc bc
    or h
    cp c
    inc bc
    xor b
    adc b
    ld h, [hl]
    ld h, l
    add [hl]
    ld bc, $0885
    jr z, jr_003_65f8

    push bc

jr_003_65f8:
    ld [$8027], sp
    inc bc
    sub h
    sbc c
    inc bc
    adc b
    adc b
    ld h, [hl]
    ld h, l
    add [hl]
    adc b
    and [hl]
    ld bc, $08a1
    jr z, jr_003_660c

    pop bc

jr_003_660c:
    ld [$0327], sp
    pop de
    call nc, Call_000_01b9
    cp c
    ld [$0128], sp
    reti


    ld [$d127], sp
    call nc, $b101
    ld [$0128], sp
    or c
    ld [$ae27], sp
    xor d
    sbc c
    add b
    ld [bc], a
    inc bc
    xor d
    adc d
    adc d
    adc d
    adc b
    add b
    ld [bc], a
    or h
    adc a
    adc a
    adc a
    xor d
    and [hl]
    and [hl]
    and e
    ld d, $65
    xor [hl]
    rla
    add hl, bc
    ld [bc], a
    ld b, $e6
    rlca
    inc bc
    ld [$a01e], sp
    add b
    adc h
    xor e
    ld [bc], a
    xor e
    adc e
    xor d
    ld bc, $08a8
    dec de
    ld bc, $08c8
    ld e, $c6
    rst RST_00
    ld bc, $08c8
    dec de
    ld bc, $08c8
    ld e, $0b
    db $f4
    call $cdcd
    call $c8c8
    inc b
    nop
    ld b, $b4
    inc b
    nop
    inc b
    nop
    xor l
    ld c, $0b
    ld h, [hl]
    ld l, l
    xor l
    xor [hl]
    xor [hl]
    adc [hl]
    adc b
    rrca
    ld bc, $6b66
    inc b
    nop
    or d
    or d
    or d
    or d
    or c
    or c
    ld [de], a
    nop
    ld h, [hl]
    adc a
    or c
    or c
    ld c, $01
    ld h, [hl]
    ld a, l
    or [hl]
    or [hl]
    or d
    or d
    or l
    or l
    or c
    or c
    or b
    or b
    xor a
    xor a
    xor b
    xor b
    ld d, $66
    ld h, a
    rla
    ld b, $1e
    ld [$a026], sp
    inc b
    nop
    ldh [$ff0e], a
    dec b
    ld h, [hl]
    and [hl]
    ret nz

    rlca
    dec b
    nop
    ld l, e
    ld l, e
    rlca
    ld b, $6b
    ld l, e
    rlca
    rlca
    ld l, e
    ld l, e
    rlca
    add hl, bc
    ld l, e
    ld l, e
    rlca
    dec bc
    ld l, e
    ld l, e
    rlca
    rrca
    ld l, e
    ld l, e
    inc b
    nop
    rlca
    inc c
    inc b
    nop
    adc e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    nop
    ld l, e
    ld l, e
    ld l, e
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    ld c, $02
    ld h, [hl]
    res 1, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    rlca
    rrca
    nop
    adc d
    adc d
    rlca
    inc c
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    nop
    ld l, e
    ld l, e
    ld l, e
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    inc b
    nop
    adc e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    nop
    ld l, e
    ld l, e
    ld l, e
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    adc e
    ld c, $09
    ld h, a
    rlca
    ld d, $66
    rst RST_00
    rla
    nop
    ld h, a
    ld a, [hl+]
    ld h, a
    ld e, h
    ld h, a
    ld h, h
    ld h, a
    adc b
    ld a, [bc]
    dec b
    dec b
    ld bc, $0733
    rrca
    inc b
    ld [$dc06], sp
    ld [$0905], sp
    ld bc, $8018
    sub b
    adc l
    sub b
    sub h
    sub d
    sub b
    adc a
    adc l
    xor e
    adc b
    adc e
    xor l
    adc a
    sub b
    xor l
    adc a
    sub b
    xor l
    xor e
    dec c
    ld a, a
    call Call_000_0209
    call Call_000_000d
    add hl, bc
    ld bc, $6716
    ld sp, $0717
    inc b
    add b
    ld b, b
    ld d, $67
    ld sp, $0717
    inc bc
    ld b, $ff
    ld [$0b1e], sp
    inc c
    inc b
    nop
    adc l
    sub h
    sbc c
    sbc h
    or l
    cp c
    ld [bc], a
    or h
    adc a
    xor l
    or b
    ld [bc], a
    or d
    sub l
    or h
    xor a
    adc l
    sub b
    sub d
    sub h
    cp c
    xor l
    ld d, $67
    ld l, h
    rla
    rlca
    rrca
    ld [$0625], sp
    ret z

    inc b
    ld b, b
    add hl, de
    db $10
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    add hl, de
    ld de, $6d6d
    ld l, l
    ld l, l
    add hl, de
    ld bc, $6d6d
    ld l, l
    ld l, l
    add hl, de
    ld de, $6d6d
    ld l, l
    ld l, l
    add hl, de
    db $10
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld bc, $c06d
    ld d, $67
    adc [hl]
    rla
    nop
    ld h, a
    pop bc
    ld l, b
    jr nc, jr_003_6826

    db $d3
    ld l, c
    rla
    dec b
    ld bc, $0a33
    inc bc
    inc b
    ld [$0018], sp
    rlca
    inc c
    ld [$0622], sp
    ld h, h
    ld [hl], e
    ld [hl], e
    ld h, b
    ld [hl], h
    ld h, b
    ld [hl], b
    ld h, b
    ld b, $01
    ld [$0123], sp
    pop de
    ld [hl], c
    ld bc, $0871
    ld [hl+], a
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [$0623], sp
    ret z

    ld bc, $016a
    xor d
    ld h, b
    jr @-$3e

    ld [$6a22], sp
    ld l, l
    ld [hl], h
    ld bc, $0893
    inc hl
    ld bc, $08b3
    ld [hl+], a
    ld l, d
    ld l, l
    ld [hl], h
    ld [hl], e
    ld l, l
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, b
    ld l, [hl]
    ld bc, $08c6
    inc hl
    ld bc, $60a6
    ld [$6a22], sp
    ld l, l
    ld [hl], e
    ld bc, $08b2
    inc hl
    ld bc, $08b2
    ld [hl+], a
    ld h, b
    ld l, d
    ld l, l
    ld [hl], h
    ld [hl], e
    ld l, d
    ld l, l
    ld [hl], e

jr_003_6826:
    ld bc, $08d2
    inc hl
    ld bc, $16d2
    ld h, a
    add $17
    inc b
    ld [$0009], sp
    rlca
    inc c
    ld [$0622], sp
    ld h, h
    ld l, l
    ld l, l
    ld h, b
    ld l, [hl]
    ld h, b
    ld l, h
    ld h, b
    ld b, $01
    ld [$6d23], sp
    ld [$6022], sp
    add hl, bc
    ld bc, $7071
    ld [hl], c
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [$0123], sp
    ld l, d
    ld bc, $096a
    nop
    ld [$6d22], sp
    ld l, h
    ld l, l
    ld l, a
    ld l, h
    ld l, l
    ld b, $c8
    ld [$0123], sp
    ld h, l
    ld bc, $09c5
    ld bc, $1406
    ld [$6122], sp
    ld h, c
    ld h, b
    ld h, e
    ld h, b
    inc bc
    ld a, b
    ld h, b
    ld a, c
    ld h, b
    ld a, c
    ld h, b
    ld a, e
    ld h, b
    ld a, l
    ld h, b
    ld [hl], e
    ld b, $c8
    ld [$d923], sp
    ld b, $14
    ld [$1922], sp
    ld bc, $0300
    ld [hl], c
    ld [hl], d
    ld l, a
    add hl, de
    ld de, $6d00
    ld [hl], c
    add hl, de
    db $10
    ld l, h
    ld [hl], b
    add hl, de
    ld de, $6e6a
    ld h, c
    ld h, c
    ld h, b
    ld h, e
    ld h, b
    inc bc
    ld a, b
    ld h, b
    ld a, c
    ld h, b
    ld a, c
    ld h, b
    ld a, e
    ld h, b
    ld a, l
    ld h, b
    ld [hl], e
    ld b, $c8
    ld [$0323], sp
    jp z, Jump_000_2208

    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    ld d, c
    ld d, d
    add hl, de
    ld bc, $5152
    add hl, de
    ld de, $4f50
    ld c, e
    add hl, de
    db $10
    ld c, d
    ld b, h
    inc bc
    ld d, a
    add hl, de
    ld de, $6816
    jr nc, jr_003_68ea

    rlca
    ld [bc], a
    inc b
    ld [$f40b], sp
    ld b, $82
    ld [$0422], sp
    ld [$6a6a], sp
    ld h, b
    ld l, d
    ld h, b
    ld l, d
    ld h, b
    ld l, d
    ld l, d
    ld l, d
    ld h, b

jr_003_68ea:
    ld l, d
    ld h, b
    ld l, d
    ld h, b
    ld l, d
    ld c, $03
    ld l, b
    db $dd
    ld l, d
    ld l, d
    ld h, b
    ld l, d
    ld h, b
    ld l, d
    ld h, b
    ld l, d
    ld l, c
    ld l, c
    ld h, b
    ld l, c
    ld h, b
    ld l, c
    ld h, b
    ld l, c
    ld h, a
    ld h, a
    ld h, b
    ld h, a
    ld h, b
    ld h, a
    ld h, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, e
    ld h, b
    ld h, l
    ld d, $68
    push de
    rla
    rla
    nop
    ld l, c
    ld hl, $5669
    ld l, c
    ld e, [hl]
    ld l, c
    add h
    dec b
    ld bc, $07c7
    rrca
    inc b
    jr nz, jr_003_692f

    ld h, h
    ld [$0922], sp
    ld [bc], a
    add b

jr_003_692f:
    sub h
    sbc c
    sbc l
    inc bc
    adc b
    adc l
    ld l, h
    ld l, l
    adc h
    ld l, d
    ld l, h
    xor l
    adc b
    ld l, h
    ld l, l
    adc h
    ld l, d
    ld l, h
    adc l
    adc a
    sub c
    adc d
    sub d
    adc a

Jump_003_6947:
    add [hl]
    adc a
    adc h
    nop
    adc l
    nop
    ld l, l
    ld [hl], c
    ld [hl], h
    add hl, bc
    inc bc
    ld [bc], a
    nop
    call $0717
    ld b, $02
    add b
    ld d, $69
    ld h, $17
    ld b, $e6
    ld [$071e], sp
    inc bc
    add hl, bc
    ld bc, $8d00
    sub c
    sub h
    sbc c
    sbc l
    inc bc
    adc b
    add [hl]
    add e
    adc b
    add l
    add c
    add l
    add [hl]
    add e
    adc b
    xor d
    adc b
    add [hl]
    add e
    add [hl]
    xor b
    inc bc
    sub h
    nop
    cp c
    ld [bc], a
    call $1717
    nop
    ld l, c
    adc [hl]
    ld l, d
    rrca
    ld l, d
    and l
    ld l, e
    add hl, sp
    ld a, [bc]
    inc bc
    dec b
    nop
    call z, $c806
    rlca
    dec bc
    ld [$0922], sp
    ld [bc], a
    jr @-$3e

    inc b
    nop
    ld [bc], a
    sub e
    ld [hl], h
    or h
    ld [bc], a
    sbc a
    inc bc
    ld l, b
    xor b
    add b
    and c
    inc bc
    sbc b
    or a
    sub l
    sub h
    push af
    ld a, a
    inc bc
    adc b
    ld h, a
    adc b
    inc bc
    sub h
    ret nz

    ld a, a
    inc bc
    adc b
    ld h, a
    adc b
    inc bc
    sub h
    ret nz

    inc bc
    ld l, b
    ld l, b
    adc b
    add b
    inc bc
    sub e
    ld [hl], h
    ld [hl], h
    sub h
    add b
    sbc a
    inc bc
    ld l, b
    ld l, b
    adc b
    add b
    add a
    ld l, b
    inc bc
    ld [hl], h
    ld [hl], e
    ld [hl], h

jr_003_69d7:
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld d, $69
    sbc l
    inc b
    nop
    ld a, c
    ld [hl], h
    ld a, e
    ld a, h
    ld a, e
    ld [hl], h
    inc bc
    ld l, b
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld l, b
    ld h, h
    ld h, c
    ld h, e
    ld h, h
    ld h, c
    ld [de], a
    nop
    ld l, d
    inc b
    and e
    and a
    ld l, b
    inc bc
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    ld a, b
    ld c, $01
    ld l, c
    sbc $7a
    ld a, h
    ld a, [hl]
    ld a, d
    cp h
    ld a, h
    ld a, c
    ld a, e
    ld a, b
    cp c
    rla
    ld b, $c8
    ld [$0910], sp
    ld [bc], a
    jr jr_003_69d7

    inc b
    nop
    rlca
    inc b
    ld h, b
    ld [bc], a
    sub e
    ld [hl], h
    or h
    ld [bc], a
    sbc a
    inc bc
    ld l, b
    xor b
    add b
    and c
    inc bc
    sbc b
    or a
    sub l
    sub h
    ld bc, $02b5
    ld bc, $0795
    dec bc
    ld d, d
    ld d, h
    ld d, l
    ld d, a
    ld e, c
    ld e, e
    ld e, h
    ld e, [hl]
    ld e, e
    ld e, h
    ld e, [hl]
    inc bc
    ld c, b
    ld c, c
    ld c, e
    ld c, l
    ld c, a
    ld h, c
    inc bc
    sbc b
    ld a, c
    sbc b
    adc h
    ret nz

    ld a, e
    sbc h
    ld a, e
    sbc h
    adc l
    ret nz

    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld a, c
    ld a, e
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld d, $6a
    rla
    inc b
    nop
    sbc h
    inc bc
    adc b
    adc b
    adc a
    adc a
    adc l
    adc l
    adc b
    ld [de], a
    ld [$986a], sp
    ld h, [hl]
    ld l, b
    ld l, c
    ld h, [hl]
    ld l, l
    ld l, a
    ld [hl], b
    ld l, l
    ld l, h
    inc bc
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, [hl]
    ld c, $01
    ld l, d
    ld [hl], h
    xor c
    ld l, b
    ld l, d
    ld l, h
    ld l, l
    ld l, l
    ld l, d
    ld l, h
    ld h, [hl]
    ld h, [hl]
    ld h, e
    add h
    rla
    rlca
    ld [bc], a
    ld b, $c8
    ld [$0901], sp
    ld bc, $0004
    sbc c
    sub h
    sbc h
    sbc e
    sbc c
    sub h
    sbc h
    sbc e
    sbc c
    sbc e
    sbc h
    sbc [hl]
    inc bc
    adc b
    add c
    adc l
    adc e
    inc bc
    sub d
    adc l
    adc a
    sub b
    sub d
    sub h
    sub l
    sbc c
    ld l, b
    ld [hl], h
    ld [hl], h
    ld l, b
    ld [hl], h
    ld [hl], h
    ld l, b
    ld [hl], h
    ld l, b
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld a, c
    ld l, l
    ld a, c
    ld a, b
    ld [hl], a
    halt
    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    halt
    ld a, b
    ld a, c
    halt
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    halt
    ld a, b
    ld a, c
    halt
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    halt
    ld a, b
    ld a, c
    halt
    sub h
    sub d
    sub b
    adc a
    ld d, $6a
    xor l
    inc b
    nop
    ld a, c
    sbc c
    ld a, c
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    halt
    sub [hl]
    halt
    ld [de], a
    nop
    ld l, e
    inc l
    ld [hl], l
    sub l
    ld [hl], l
    ld [hl], l
    sub l
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld c, $01
    ld l, e
    ld [$9272], sp
    ld [hl], d
    ld [hl], h
    sub h
    ld [hl], h
    ld l, b
    adc b
    ld l, b
    ld l, l
    adc l
    ld l, l
    rla
    rla
    inc bc
    rst RST_38
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    rra
    ld [hl+], a
    nop
    rrca
    add $fe
    ld de, $1e0d
    rrca
    add c
    daa
    rst RST_38
    inc bc
    ld bc, $3b6b
    ld [bc], a
    inc de
    ld a, [bc]
    ld [$1681], sp
    add hl, bc
    db $10
    adc h
    ld l, $00
    inc bc
    rst RST_38
    ld [bc], a
    dec bc
    inc bc
    ld a, [bc]
    rrca
    ld [hl+], a
    nop
    rrca
    ld e, d
    dec h
    dec b
    ld hl, $0b0f
    rst RST_38
    inc bc
    ld bc, $5d6b
    dec bc
    inc bc
    ld [bc], a
    nop
    dec l
    nop
    inc bc
    rst RST_38
    ld [bc], a
    ld hl, $021c
    rrca
    inc h
    ret nz

    rrca
    ld a, a
    dec l
    nop
    inc b
    rst RST_38
    ld [bc], a
    jr nz, jr_003_6b9b

    ld a, [bc]
    rrca
    ld [hl+], a
    nop
    inc c
    ld e, d
    inc d
    dec c
    ld e, $0f
    ld [hl-], a
    ld a, [bc]
    nop
    ld bc, $02f0
    ld [bc], a
    ld [bc], a

jr_003_6b9b:
    ld [bc], a
    rra
    ld [hl+], a
    nop
    rrca
    add $fe
    inc [hl]
    ldh a, [$ff03]
    ld bc, $976b
    ld bc, $0a0a
    ld [$4a8c], sp
    dec d
    db $10
    rrca
    rst RST_38
    rrca
    nop
    ld bc, $020f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    ld [hl+], a
    nop
    rrca
    add $fe
    inc [hl]
    rrca
    inc bc
    ld bc, $b56b
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld [$4a8c], sp
    dec d
    db $10
    rrca
    rst RST_38
    rrca
    nop
    ld [bc], a
    ldh a, [rSC]
    ld c, $13
    ld a, [bc]
    rrca
    ld [hl+], a
    nop
    rrca
    add hl, sp
    ld d, $05
    inc e
    rrca
    ld a, [bc]
    nop
    ld [bc], a
    rrca
    ld [bc], a
    ld c, $13
    ld a, [bc]
    rrca
    ld [hl+], a
    nop
    rrca
    add hl, sp
    ld d, $05
    inc e
    rrca
    ld a, [bc]
    nop
    inc b
    ldh a, [rSC]
    jr nz, jr_003_6c0e

    ld a, [bc]
    rrca
    ld [hl+], a
    ret nz

    rrca
    sbc e
    ld e, $05
    inc e
    rrca
    add hl, bc
    nop
    inc b
    rrca
    ld [bc], a
    jr nz, jr_003_6c1f

    ld a, [bc]
    rrca
    ld [hl+], a
    ret nz

jr_003_6c0e:
    rrca
    sbc e
    ld e, $05
    inc e
    rrca
    add hl, bc
    nop
    inc b
    ldh a, [rSC]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    rra
    ld [hl+], a
    nop

jr_003_6c1f:
    rrca
    add $fe
    jr nc, jr_003_6c29

    ld [hl+], a
    dec bc
    add hl, bc
    ldh a, [rSC]

jr_003_6c29:
    inc d
    dec d
    ld a, [bc]
    add hl, bc
    db $10
    add a
    cpl
    dec b
    db $10
    rrca
    dec bc
    nop
    inc b
    rrca
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    rra
    ld [hl+], a
    nop
    rrca
    add $fe
    jr nc, jr_003_6c48

    ld [hl+], a
    dec bc
    add hl, bc
    rrca
    ld [bc], a

jr_003_6c48:
    inc d
    dec d
    ld a, [bc]
    add hl, bc
    db $10
    add a
    cpl
    dec b
    db $10
    rrca
    dec bc
    nop
    ld b, $f0
    ld [bc], a
    ld a, [$0a03]
    rrca
    inc h
    nop
    rlca
    sub l
    ld b, b
    dec b
    ld a, [de]
    rrca
    ld a, [bc]
    ldh a, [rSC]
    cp $04
    ld a, [bc]
    ld [$5015], sp
    nop
    inc c
    nop
    ld b, $0f
    ld [bc], a
    ld a, [$0a03]
    rrca
    inc h
    nop
    rlca
    sub l
    ld b, b
    dec b
    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [bc], a
    cp $04
    ld a, [bc]
    ld [$5015], sp
    nop
    inc c
    nop
    add hl, bc
    rst RST_38
    ld [bc], a
    inc d
    ld [$0f0a], sp
    inc h
    add b
    rrca
    ld [hl], b
    ld sp, $1c05
    rrca
    dec bc
    nop
    rrca
    rst RST_38
    ld b, $02
    inc c
    inc b
    rlca
    rlca
    ld [hl+], a
    add b
    rrca
    dec h
    rla
    ld [hl+], a
    add b
    rrca
    db $fd
    dec h
    rlca
    ld a, [bc]
    inc bc
    xor d
    add hl, de
    rst RST_38
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    nop
    jr z, jr_003_6cca

    db $fd
    jr z, jr_003_6cbd

jr_003_6cbd:
    inc e
    rst RST_38
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    nop
    dec hl
    db $10
    db $fd
    dec hl
    nop
    rra

jr_003_6cca:
    rst RST_38
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    nop
    ld l, $10
    db $fd
    ld l, $00
    ld [hl+], a
    rst RST_38
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    nop
    dec l
    db $10
    db $fd
    dec l
    nop
    ld hl, $02ff
    ld [bc], a
    inc b
    rlca
    nop
    inc l
    db $10
    db $fd
    inc l
    nop
    jr nz, @+$01

    ld [bc], a
    ld [bc], a
    inc b
    rlca
    nop
    dec hl
    db $10
    db $fd
    dec hl
    nop
    rra
    rst RST_38
    ld [bc], a
    ld [bc], a
    inc d
    rlca
    nop
    inc [hl]
    db $10
    db $fd
    inc [hl]
    nop
    jr z, jr_003_6d07

jr_003_6d07:
    ld [$02f0], sp
    db $dd
    jr nc, @+$0a

    dec c
    ld [hl+], a
    rrca
    inc c
    ld a, [bc]
    nop
    ld [$020f], sp
    db $dd
    jr nc, jr_003_6d21

    dec c
    ld [hl+], a
    rrca
    inc c
    ld a, [bc]
    nop
    ld c, $ff

jr_003_6d21:
    ld [bc], a
    ld bc, $0306
    rrca
    ld [hl+], a
    add b
    rrca
    add c
    ld [hl-], a
    rrca
    ld [hl+], a
    add b
    rrca
    add c
    ld h, $00
    ld c, $ff
    ld [bc], a
    rst RST_38
    inc bc
    inc bc
    rlca
    ld [hl+], a
    add b
    rrca
    ld b, b
    rlca
    ld [hl+], a
    add b
    rrca
    inc [hl]
    rst RST_38
    ld [bc], a
    ld h, h
    inc c
    inc bc
    nop
    ld c, h
    nop
    ld b, b
    nop
    ld a, [bc]
    rst RST_38
    ld [bc], a
    jr z, jr_003_6d55

    ld a, [bc]
    rrca
    inc h
    nop

jr_003_6d55:
    rrca
    ld e, c
    dec h
    dec c
    inc h
    rrca
    ld de, $ff03
    ld [bc], a
    rra
    inc b
    ld [bc], a
    ld [$0f7f], sp
    nop
    ld a, [bc]
    rst RST_38
    ld [bc], a
    jr z, jr_003_6d6f

    ld a, [bc]
    rrca
    inc h
    ret nz

jr_003_6d6f:
    rrca
    ld e, c
    inc l
    dec c
    inc h
    rrca
    ld de, $ff04
    ld [bc], a
    rra
    inc b
    ld [bc], a
    ld [$297f], sp
    nop
    ld a, [bc]
    rst RST_38
    ld [bc], a
    jr z, jr_003_6d89

    ld a, [bc]
    rrca
    inc h
    ret nz

jr_003_6d89:
    rrca
    ld e, c
    ld b, c
    dec c
    inc h
    rrca
    ld de, $ff0a
    ld [bc], a
    rra
    inc b
    ld [bc], a
    ld [$3daf], sp
    nop
    dec bc
    sbc $02
    jr nz, jr_003_6dd2

    rrca
    rra
    ld [hl+], a
    nop
    rrca
    ld e, d
    inc bc
    jr z, jr_003_6db7

    ld [hl+], a
    nop
    rrca
    ld e, d
    jr z, jr_003_6dcd

    ld e, $03
    rst RST_00
    ld e, d
    db $fd
    jr z, jr_003_6dc2

    ld e, $0f

jr_003_6db7:
    sub d
    ld c, $00
    ld c, $ff
    ld b, $a0
    ld sp, hl
    rrca
    rlca
    rlca

jr_003_6dc2:
    rla
    nop
    rrca
    ld b, h
    rlca
    rla
    nop
    rrca
    ld b, c
    rlca
    rla

jr_003_6dcd:
    inc bc
    and b
    dec a
    rst RST_38
    ld [bc], a

jr_003_6dd2:
    ld h, h
    dec b
    rlca
    nop
    ld b, h
    nop
    ld b, c
    inc b
    ld h, h
    dec a
    rst RST_38
    ld [bc], a
    ld h, h
    dec b
    rlca
    nop
    ld b, h
    nop
    ld b, c
    inc b
    ld h, h
    dec a
    rst RST_38
    ld [bc], a
    ld h, h
    dec b
    rlca
    nop
    ld b, h
    nop
    ld b, c
    inc b
    ld h, h
    dec a
    rst RST_38
    ld [bc], a
    and b
    ld a, [bc]
    rlca
    nop
    ld b, h
    nop
    ld b, c
    inc b
    and b
    dec a
    rst RST_38
    ld [bc], a
    and b
    ld a, [bc]
    rlca
    nop
    ld b, c
    nop
    dec a
    inc b
    and b
    jr c, @+$01

    ld [bc], a
    and b
    ld a, [bc]
    rlca
    nop
    ld b, h
    nop
    ld b, c
    inc b
    and b
    dec a
    rst RST_38
    ld [bc], a
    rst RST_38
    ld e, $07
    nop
    ld b, [hl]
    nop
    ld b, c
    inc b
    rst RST_38
    dec a
    nop
    ld c, $ff
    ld b, $ff
    db $fd
    inc bc
    rlca
    rlca
    ld [hl+], a
    nop
    rrca
    jr c, jr_003_6e39

    ld [hl+], a
    nop
    rrca
    dec [hl]
    rlca
    ld [hl+], a
    inc bc

jr_003_6e39:
    rst RST_38
    inc l
    rst RST_38
    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    dec [hl]
    nop
    ld sp, $2900
    rst RST_38
    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    ld sp, $2c00
    nop
    dec h
    rst RST_38
    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    dec [hl]
    nop
    ld sp, $2900
    rst RST_38
    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    ld sp, $2c00
    nop
    dec h
    rst RST_38
    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    inc l
    nop
    add hl, hl
    nop
    jr nz, @+$01

    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    ld sp, $2c00
    nop
    dec h
    rst RST_38
    ld b, $ff
    db $fd
    inc bc
    rlca
    nop
    dec [hl]
    nop
    ld sp, $2900
    rst RST_38
    ld b, $04
    db $fd
    jr @+$09

    nop
    jr c, jr_003_6e98

jr_003_6e98:
    dec [hl]
    nop
    ld sp, $06ff
    rst RST_38
    db $fd
    jr jr_003_6ea8

    nop
    add hl, sp
    nop
    inc sp
    nop
    jr nc, @+$01

jr_003_6ea8:
    ld b, $ff
    db $fd
    ld l, h
    rlca
    ld bc, $3a07
    ld bc, $3507
    ld bc, $3207
    nop
    dec c
    rst RST_38
    ld [bc], a
    ld bc, $0a09
    rrca
    inc c
    add b
    rrca
    ld [hl], d
    dec de
    dec b
    dec d
    inc c
    add hl, bc
    rst RST_38
    inc bc
    ld a, [bc]
    ld l, [hl]
    cp b
    ld bc, $0a05
    add hl, bc
    ld [hl+], a
    ld a, e
    inc e
    ld bc, $0921
    nop
    dec c
    rst RST_38
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    inc bc
    rlca
    ld [hl+], a
    add b
    rrca
    jr z, jr_003_6eea

    ld [hl+], a
    add b
    rrca
    inc [hl]
    rst RST_38
    ld [bc], a
    ld a, [bc]

jr_003_6eea:
    ld [bc], a
    inc bc
    rlca
    ld [hl+], a
    add b
    rrca
    dec h
    rlca
    ld [hl+], a
    add b
    rrca
    ld sp, $0500
    rst RST_38
    ld [bc], a
    ld c, c
    ld e, $08
    dec b
    ld c, $0f
    inc c
    nop
    ld c, $ff
    ld [bc], a
    ld b, c
    rlca
    rrca
    rlca
    inc d
    ret nz

    rrca
    inc sp
    rlca
    inc d
    ret nz

    rrca
    ld l, $07
    ld [hl+], a
    inc bc
    sub [hl]
    dec de
    dec b
    inc e
    rrca
    ld a, [bc]
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    nop
    inc [hl]
    nop
    jr nc, jr_003_6f25

jr_003_6f25:
    inc e
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    nop
    scf
    nop
    ld sp, $1f00
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    inc b
    rlca
    inc sp
    inc b
    rlca
    ld l, $06
    ld [bc], a
    ld h, h
    dec de
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    nop
    inc [hl]
    nop
    jr nc, jr_003_6f50

jr_003_6f50:
    inc e
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    nop
    scf
    nop
    ld sp, $1f00
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    inc b
    inc bc
    inc sp
    inc b
    inc bc
    ld l, $06
    ld bc, $1b64
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    nop
    inc [hl]
    nop
    jr nc, jr_003_6f7b

jr_003_6f7b:
    inc e
    nop
    rst RST_38
    rst RST_38
    ld [bc], a
    ld b, c
    rlca
    rrca
    nop
    scf
    nop
    ld sp, $1f00
    nop
    rst RST_38
    nop
    ld [bc], a
    rst RST_38
    ld [bc], a
    dec c
    ld [bc], a
    ld a, [bc]
    rrca
    ld [hl+], a
    add b
    dec c
    ldh [rNR34], a
    dec b
    inc h
    dec bc
    ld [bc], a
    rst RST_38
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [bc]
    dec c
    db $10
    ld c, $18
    ld d, $01
    db $10
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    rlca
    ld c, $07
    nop
    nop
    nop
    nop
    nop
    rlca
    ld d, $07
    nop
    nop
    nop
    nop
    nop
    rlca
    ld e, $07
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_003_7053

    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_003_7063

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_003_7073

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    inc b
    ld bc, $0101

jr_003_7053:
    ld bc, $0501
    inc b
    ld b, $01
    ld bc, $0101
    ld bc, $0807
    add hl, bc
    ld bc, $0101

jr_003_7063:
    ld bc, $0701
    ld [bc], a
    ld a, [bc]
    ld bc, $0101
    ld bc, $0701
    dec bc
    inc c
    ld bc, $0101

jr_003_7073:
    ld bc, $0d01
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    ld bc, $0e01
    ld c, $0e
    ld bc, $0101
    ld bc, $100f
    db $10
    ld de, $0404
    ld [de], a
    inc bc
    inc de
    ld [$1109], sp
    inc d
    dec d
    ld d, $17
    rla
    ld [bc], a
    ld b, $11
    jr @+$1a

    ld d, $19
    ld c, $1a
    ld b, $11
    dec de
    inc e
    ld [$010a], sp
    dec e
    ld b, $11
    ld e, $1f
    dec bc
    jr nz, @+$20

    dec e
    ld b, $11
    ld a, [bc]
    ld hl, $2322
    ld a, [bc]
    inc h
    ld b, $11
    jr nz, @+$27

    ld h, $27
    daa
    daa
    jr z, @+$13

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
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1111
    ld de, $1111
    ld de, $0111
    ld de, $2929
    ld a, [hl+]
    jr jr_003_713e

    dec hl
    inc l
    ld de, $2e2d
    ld e, $2f
    jr nc, jr_003_714c

    ld e, $11
    ld sp, $3332
    inc [hl]
    dec [hl]
    dec e
    ld e, $11
    rlca
    jr jr_003_7154

    ld [hl], $37

jr_003_713e:
    jr c, jr_003_715e

    ld de, $2f07
    jr nc, jr_003_715d

    jr @+$3b

    ld de, $0711
    ld a, [hl-]
    dec sp

jr_003_714c:
    inc a
    dec a
    ld a, $11
    ld de, $403f
    scf

jr_003_7154:
    ld b, c
    ld b, d
    ld b, e
    ld de, $4411
    inc b
    inc b
    inc b

jr_003_715d:
    ld b, l

jr_003_715e:
    ld b, [hl]
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld b, a
    dec de
    dec de
    ld c, b
    dec de
    ld c, c
    ld de, $1611
    ld c, d
    ld c, d
    ld c, e
    ld c, h
    add hl, bc
    ld de, $4d11
    ld c, l
    dec [hl]
    ld c, e
    ld c, [hl]
    ld c, a
    ld de, $0311
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld de, $5511
    dec sp
    ld bc, $1801
    add hl, bc
    ld de, $5611
    dec de
    dec de
    dec de
    dec de
    add hl, bc
    ld de, $1657
    rla
    dec a
    inc l
    inc a
    add hl, hl
    ld de, $4457
    ld e, b
    daa
    ld e, c
    ld e, d
    dec bc
    ld e, $11
    ld de, $3636
    ld de, $1111
    ld de, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld l, h
    ld l, [hl]
    ld l, a
    ld l, a
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], c
    nop
    nop
    nop
    nop
    ld bc, $5b01
    ld e, h
    ld e, h
    ld e, h
    ld de, $010a
    ld bc, $5d11
    add hl, hl
    add hl, hl
    ld a, [hl+]
    ld c, $01
    ld bc, $5d39
    ld e, [hl]
    ld e, a
    ld e, $01
    ld bc, $1101
    ld d, $09
    ld h, b
    ld h, b
    ld c, l
    ld bc, $1101
    cpl
    cpl
    dec de
    jr jr_003_72c1

    ld bc, $3901
    ld [bc], a
    dec l
    ld e, $18
    ld h, d
    ld bc, $3901
    ld d, l
    dec bc
    ld e, $2f
    cpl
    ld bc, $1101
    jr nc, jr_003_72d5

    ld h, b
    ld h, e
    ld d, h
    ld a, [bc]
    ld a, [bc]
    ld h, h
    ld bc, $0101
    ld bc, $3d01
    ld h, l
    dec [hl]
    ld bc, $0101
    ld bc, $0e01
    ld a, [de]
    dec [hl]
    ld bc, $0101
    ld bc, $6601
    dec e
    dec [hl]
    ld bc, $0101
    ld bc, $6701
    dec e
    dec [hl]
    ld bc, $0101
    ld bc, $3b01
    dec e
    dec [hl]
    ld bc, $0101
    ld bc, $1601
    jr c, jr_003_72e0

    ld bc, $0101
    ld bc, $1b01
    ld c, c
    ld de, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_72c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, [hl]
    nop

jr_003_72d5:
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    ld l, h
    ld l, [hl]
    ld [hl], l
    ld [hl], l
    nop
    nop

jr_003_72e0:
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    nop
    halt
    ld a, h
    ld l, l
    ld l, l
    ld l, l
    ld l, [hl]
    nop
    nop
    ld a, l
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    nop
    nop
    ld bc, $3901
    dec c
    ld a, [bc]
    jr nc, @+$62

    ld a, [bc]
    ld bc, $4001
    ld c, $0e
    ld de, $0e11
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $7e11
    ld a, a
    ld a, a
    ld de, $0111
    ld bc, $8011
    ld c, d
    cpl
    add c
    cpl
    ld bc, $1101
    add b
    add d
    ld d, h
    add e
    add h
    ld bc, $1101
    ld c, d
    rla
    ld l, $2c
    jr c, @+$03

    ld bc, $4a11
    add hl, de
    ld c, $33
    ld h, b
    ld a, [bc]
    add l
    dec [hl]
    ld bc, $0101
    ld bc, $0e00
    ld c, $37
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    ld a, a
    ld a, a
    ld a, a
    ld de, $0101
    ld bc, $2f00
    jr nc, jr_003_73b2

    ld de, $0101
    ld bc, $6500
    add [hl]
    jr @+$13

    ld bc, $0101
    nop
    inc c
    add a
    ld e, l
    ld de, $0101
    ld bc, $6000
    ld h, b
    jr jr_003_7385

    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_7385:
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    adc b
    nop
    nop
    nop
    adc c
    ld [hl], a
    ld a, d
    ld a, e
    adc d
    nop
    nop
    nop
    adc e
    adc h
    ld l, l
    adc l
    adc d
    nop
    nop
    nop
    adc [hl]
    ld l, l
    ld l, l
    adc a
    adc d
    nop
    nop
    nop
    ld [hl], b
    sub b
    ld l, l
    sub c
    adc d
    nop
    nop
    nop

jr_003_73b2:
    nop
    sub d
    sub e
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], l
    adc b
    nop
    nop
    nop
    nop
    ld l, b
    sub l
    sub [hl]
    adc d
    nop
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, l
    adc d
    nop
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, l
    adc d
    nop
    nop
    nop
    nop
    ld [hl], b
    sub a
    sub c
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    sbc b
    adc d
    nop
    ld l, b
    ld l, c
    adc d
    nop
    ld l, h
    ld l, l
    sbc c
    sbc d
    sbc e
    sbc h
    adc d
    nop
    ld l, h
    sbc l
    sub c
    sub c
    sub b
    sbc [hl]
    adc d
    nop
    ld [hl], b
    sbc a
    and b
    and c
    ld [hl], b
    sub c
    adc d
    nop
    and b
    and d
    ld l, h
    ld l, l
    and e
    and e
    adc d
    nop
    ld l, h
    ld l, l
    and h
    and l
    ld [hl], b
    and [hl]
    adc d
    nop
    ld l, a
    ld l, a
    ld l, a
    and a
    nop
    nop
    nop
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    xor h
    xor h
    xor l
    xor b
    xor [hl]
    xor a
    or b
    or c
    or d
    or b
    or e
    xor b
    xor [hl]
    or h
    or l
    or [hl]
    xor d
    or a
    or e
    xor b
    cp b
    xor d
    xor d
    cp c
    xor [hl]
    cp d
    or e
    xor b
    or d
    cp e
    or l
    cp h
    cp l
    or b
    or e
    xor b
    xor [hl]
    cp [hl]
    cp a
    or b
    ret nz

    pop bc
    or e
    xor b
    xor [hl]
    jp nz, $c4c3

    adc c
    ld l, a
    and a
    push bc
    add $c7
    ret z

    ld l, l
    ret


    nop
    nop
    nop
    nop
    jp z, $aaaa

    cp [hl]
    nop
    nop
    nop
    set 1, h
    cp d
    cp d
    call Call_000_00ce
    nop
    xor b
    or d
    or b
    or b
    rst RST_08
    ret nc

    nop
    nop
    xor b
    xor d
    or a
    jp nz, $00be

    nop
    nop
    xor b
    xor [hl]
    xor a
    xor a
    or [hl]
    nop
    nop
    nop
    xor b
    xor [hl]
    pop de
    xor a
    or [hl]
    nop
    nop
    nop
    xor b
    xor [hl]
    xor a
    xor a
    or [hl]
    nop
    nop
    nop
    jp nc, $d3d3

    db $d3
    db $d3
    nop
    nop
    nop
    nop
    call nc, $929a
    nop
    nop
    nop
    nop
    call nc, $d6d5
    rst RST_10
    sub d
    nop
    nop
    nop
    ld l, h
    sub $d6
    sub $6e
    nop
    nop
    nop
    ret c

    reti


    ld l, l
    jp c, $00a5

    nop
    nop
    nop
    ld l, h
    sbc l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    ret c

    ld a, h
    and l
    nop
    nop
    nop
    nop
    nop
    halt
    ld a, h
    adc d
    nop
    nop
    ld bc, $0000
    call nc, $927c
    nop
    nop
    ld bc, $0101
    ld de, $4a4a
    ld e, e
    jr nc, @+$1a

    ld bc, $1101
    add hl, hl
    inc l
    db $db
    dec sp
    ld a, [bc]
    ld bc, $1101
    dec l
    inc bc
    inc l
    ld bc, $0103
    ld bc, $dc11
    call c, Call_003_60dd
    sbc $01
    ld bc, $1111
    ld de, $1111
    ld de, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $5c11
    ld e, h
    ld e, h
    ld a, a
    ld de, $017f
    ld de, $0a57
    inc bc
    inc l
    jr @+$24

    cpl
    cpl
    cpl
    ld de, $0101
    ld bc, $0200
    inc bc
    inc l
    ld de, $0101
    ld bc, $0300
    dec l
    ld e, $01
    ld bc, $0101
    nop
    call c, $1edc
    ld bc, $0101
    ld bc, $1100
    ld de, $0111
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $7f00
    ld a, a
    ld a, a
    ld de, $0101
    ld bc, $0a00
    ld h, h
    add hl, sp
    ld de, $0101
    ld bc, $0000
    ld l, h
    and c
    and h
    ld l, l
    ld [hl], c
    nop
    nop
    nop
    ld l, a
    ld l, a
    ld [hl], b
    sub c
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [c]
    nop
    nop
    nop
    halt
    sbc d
    adc c
    adc c
    sub d
    nop
    nop
    nop
    halt
    ld a, h
    and c
    and c
    ld l, [hl]
    nop
    nop
    nop
    halt
    ld a, h
    ld l, l
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    ld a, l
    ld l, a
    di
    ld l, a
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    nop
    nop
    ld l, b
    rst RST_20
    db $f4
    push af
    rst RST_20
    ld l, e
    nop
    nop
    ld [hl], b
    db $e4
    or $f7
    ld l, l
    ld [hl], c
    nop
    nop
    halt
    ld a, h
    sbc l
    sbc [hl]
    ld l, l
    adc d
    nop
    nop
    halt
    adc c
    ld [hl], b
    ld [hl], c
    adc c
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    halt
    sbc c
    sbc c
    sbc c
    sbc c
    adc d
    nop
    nop
    halt
    ld a, h
    rst RST_18
    ldh [$ff6d], a
    adc d
    nop
    nop
    halt
    ld a, h
    pop hl
    ldh [c], a
    ld l, l
    adc d
    nop
    nop
    halt
    db $e3
    db $e4
    ld l, l
    sub c
    adc d
    nop
    nop
    halt
    adc c
    push hl
    and $89
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    adc b
    nop
    nop
    nop
    db $ed
    ld [hl], a
    ld a, d
    ld a, d
    xor $00
    nop
    nop
    rst RST_28
    adc h
    ld l, l
    ld l, l
    ld a, e
    nop
    nop
    nop
    ld [hl], b
    sub b
    ld l, l
    ldh a, [$ff71]
    nop
    nop
    nop
    nop
    ld [hl], b
    pop af
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    halt
    adc c
    rst RST_20
    rst RST_20
    ld l, e
    adc c
    nop
    nop
    halt
    rst RST_20
    ld a, h
    ld l, l
    add sp, $6b
    nop
    nop
    halt
    jp hl


    sbc [hl]
    ld [$eb8f], a
    nop
    nop
    halt
    ld a, h
    ld l, l
    ld l, l
    ld [$006e], a
    nop
    halt
    adc c
    adc c
    push hl
    db $ec
    and $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    ld bc, $0000
    ld l, h
    ld [$006e], a
    nop
    ld bc, $0000
    ld l, h
    sbc h
    ld l, [hl]
    nop
    nop
    ld bc, $0000
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    ld bc, $0000
    ret c

    ld a, h
    and l
    nop
    nop
    ld bc, $0000
    halt
    ld a, h
    adc d
    nop
    nop
    ld bc, $0000
    halt
    adc c
    adc d
    nop
    nop
    ld bc, $0000
    halt
    adc c
    adc d
    nop
    nop
    ld bc, $1101
    ld d, a
    ld d, l
    sbc $1e
    jr @-$06

    ld bc, $1611
    add hl, bc
    ld h, b
    ld h, b
    jr jr_003_7711

    ld bc, $1611
    add hl, bc
    ld d, $22
    ld a, [bc]
    ld hl, $1101
    ld d, a
    ld [hl+], a
    ld hl, $17f8
    ld sp, hl
    ld bc, $5711
    ld a, [$fb3b]
    db $fc
    db $fd
    ld bc, $5711
    ld e, h
    ld e, h
    ld h, b
    jr jr_003_7750

    ld bc, $4811
    ld c, b
    ld c, b
    ld de, $1111
    ld bc, $0101
    ld bc, $0101
    ld bc, $3d01
    rla
    ld d, a
    ld de, $0101
    ld bc, $1900
    ld c, $18
    ld de, $0101
    ld bc, $1b00

jr_003_7711:
    dec de
    jr @+$13

    ld bc, $0101
    nop
    add hl, sp
    dec [hl]
    add hl, sp
    ld de, $0101
    ld bc, $0100
    ld bc, $1139
    ld bc, $0101
    nop
    ld d, a
    dec [hl]
    add hl, sp
    ld de, $0101
    ld bc, $4800
    ld c, b
    ld c, b
    ld de, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    inc h
    inc h
    inc h
    inc c
    inc h
    inc h
    inc h
    inc h

jr_003_7750:
    inc h
    inc h
    jr z, jr_003_777c

    inc h
    inc h
    inc h
    jr z, @+$1a

    inc e
    jr jr_003_7778

    inc h
    jr jr_003_7783

    jr jr_003_7761

jr_003_7761:
    nop
    ld e, b
    ld e, b
    nop
    inc e
    nop
    inc e
    nop
    nop
    inc h
    inc h
    jr c, jr_003_7792

    jr z, jr_003_7798

    jr c, jr_003_7796

    jr nz, jr_003_779c

    inc h
    jr jr_003_779b

    inc h

jr_003_7778:
    jr z, jr_003_77a2

    nop
    nop

jr_003_777c:
    ld d, b
    ld d, b
    ld e, b
    inc e
    ld d, b
    ld d, b
    inc e

jr_003_7783:
    inc e
    nop
    nop
    nop
    nop
    inc c
    inc h
    jr z, jr_003_77b4

    ld e, b
    nop
    ld e, b
    ld e, b
    ld e, b
    ld b, b

jr_003_7792:
    ld e, b
    ld c, b
    ld b, h
    ld e, b

jr_003_7796:
    ld e, b
    ld e, b

jr_003_7798:
    inc e
    nop
    inc e

jr_003_779b:
    nop

jr_003_779c:
    inc h
    inc h
    inc h
    jr c, jr_003_77bd

    inc e

jr_003_77a2:
    inc e
    inc e
    jr z, jr_003_77c6

    nop
    nop
    jr z, jr_003_77ce

    nop
    inc h
    inc e
    inc e
    nop
    nop
    inc e
    nop
    nop
    ld e, b

jr_003_77b4:
    nop
    inc h
    nop
    inc h
    jr jr_003_77ba

jr_003_77ba:
    jr jr_003_77bc

jr_003_77bc:
    nop

jr_003_77bd:
    ld e, b
    nop
    ld e, b
    jr c, jr_003_77ce

    jr z, jr_003_77ec

    nop
    nop

jr_003_77c6:
    inc h
    nop
    nop
    nop
    nop
    inc h
    nop
    nop

jr_003_77ce:
    jr c, jr_003_77dc

    nop
    inc h
    inc h
    inc h
    jr z, jr_003_77ee

    inc e
    inc e
    nop
    jr z, jr_003_77f7

    inc e

jr_003_77dc:
    jr z, @+$2a

    inc e
    inc e
    jr jr_003_77fe

    inc e
    inc e
    ld e, h
    ld e, h
    inc h
    inc h
    inc e
    inc e
    jr jr_003_77ec

jr_003_77ec:
    inc e
    ld e, h

jr_003_77ee:
    nop
    inc h
    nop
    nop
    jr jr_003_77f4

jr_003_77f4:
    inc h
    inc c
    inc h

jr_003_77f7:
    inc h
    inc h
    inc h
    jr c, @+$0e

    inc e
    inc e

jr_003_77fe:
    ld e, h
    ld e, h
    inc e
    inc e
    ld e, h
    inc e
    inc h
    jr z, jr_003_782b

    jr jr_003_7829

    jr z, jr_003_7827

    nop
    jr jr_003_780e

jr_003_780e:
    nop
    nop
    ld b, b
    ld b, h
    ld c, b
    ld e, h
    ld e, h
    nop
    ld e, h
    nop
    ld e, h
    ld e, h
    nop
    nop
    ld e, h
    nop
    nop
    nop
    nop
    inc h
    nop
    jr z, jr_003_7825

jr_003_7825:
    ld e, h
    nop

jr_003_7827:
    ld e, h
    ld e, h

jr_003_7829:
    inc h
    ld e, h

jr_003_782b:
    jr z, jr_003_7851

    jr jr_003_7857

    jr jr_003_7831

jr_003_7831:
    ld e, h
    nop
    inc h
    inc h
    inc h
    jr c, @+$3a

    nop
    inc e
    jr jr_003_7858

    jr z, jr_003_7856

    inc e
    nop
    nop
    ld e, h
    nop
    nop
    nop
    jr z, jr_003_7847

jr_003_7847:
    nop
    jr nz, jr_003_7872

    nop
    nop
    jr @+$1e

    nop
    inc e
    inc e

jr_003_7851:
    nop
    inc e
    inc e
    ld e, h
    nop

jr_003_7856:
    ld e, h

jr_003_7857:
    inc e

jr_003_7858:
    nop
    inc e
    inc e
    inc e
    ld d, b
    ld d, b
    ld e, h
    nop
    ld d, b
    ld d, b
    nop
    nop
    inc e
    inc e
    nop
    inc e
    ld [$0808], sp
    ld [$5c08], sp
    ld [$5c5c], sp
    nop

jr_003_7872:
    ld d, h
    nop
    ld e, h
    ld e, h
    ld d, h
    ld d, h
    ld d, h
    nop
    nop
    ld d, h
    nop
    inc e
    ld e, h
    ld e, h
    inc h
    ld d, b
    inc h
    jr jr_003_78d5

    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld d, b
    ld e, h
    nop
    ld d, b
    ld d, h
    ld e, h
    ld d, b
    ld d, b
    jr c, jr_003_78ce

    jr z, jr_003_78b8

    inc e
    inc e
    inc e
    nop
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    jr z, jr_003_78c2

    inc e
    inc e
    jr jr_003_78a6

jr_003_78a6:
    inc e
    inc e
    nop
    inc h
    inc e
    jr z, jr_003_78ad

jr_003_78ad:
    nop
    nop
    ld e, h
    nop
    nop
    ld e, h
    ld e, h
    inc e
    ld e, h
    inc e
    ld e, h

jr_003_78b8:
    inc h
    jr c, jr_003_78bf

    jr nz, jr_003_78f5

    inc h
    inc b

jr_003_78bf:
    jr z, jr_003_78c1

jr_003_78c1:
    nop

jr_003_78c2:
    inc e
    inc e
    ld d, b
    nop
    inc h
    inc h
    inc h
    jr c, jr_003_78f3

    jr nz, @+$52

    ld d, h

jr_003_78ce:
    ld d, b
    ld d, b
    nop
    nop
    ld e, h
    nop
    inc c

jr_003_78d5:
    inc h
    inc h
    inc h
    ld e, h
    ld e, h
    ld d, h
    ld e, h
    nop
    ld e, h
    inc h
    ld d, b
    inc d
    inc d
    inc d
    jr z, jr_003_78f9

    jr nc, jr_003_78eb

    jr nc, jr_003_7915

    inc d
    inc l

jr_003_78eb:
    inc b
    inc d
    inc d
    jr z, jr_003_7904

    inc d
    jr nc, jr_003_7907

jr_003_78f3:
    jr nc, @+$2e

jr_003_78f5:
    inc l
    inc l
    inc l
    inc l

jr_003_78f9:
    inc d
    inc l
    inc d
    inc d
    inc d
    db $10
    db $10
    inc d
    jr nc, jr_003_7917

    inc d

jr_003_7904:
    inc l
    inc d
    inc d

jr_003_7907:
    inc d
    inc d
    jr nc, @+$16

    jr nc, jr_003_7939

    inc d
    inc l
    inc d
    db $10
    db $10
    db $10
    inc d
    db $10

jr_003_7915:
    db $10
    inc d

jr_003_7917:
    inc d
    db $10
    inc d
    db $10
    inc d
    jr z, jr_003_7946

    jr nc, jr_003_794c

    jr z, jr_003_7952

    inc l
    inc l
    inc l
    jr z, jr_003_7953

    inc l
    jr z, jr_003_7952

    inc l
    inc l
    jr z, @+$16

    inc l
    inc d
    jr nc, @+$2e

    jr nc, @+$2e

    db $10
    inc d
    db $10
    stop

jr_003_7939:
    nop
    ld e, h
    ld d, b
    nop
    nop
    ld d, b
    ld d, b
    ld e, h
    ld [$085c], sp
    inc e
    inc e

jr_003_7946:
    nop
    ld e, h
    ld [$5008], sp
    ld d, b

jr_003_794c:
    nop
    ld e, h
    nop
    ld d, b
    ld e, h
    inc h

jr_003_7952:
    ld d, b

jr_003_7953:
    inc h
    nop
    ld e, h
    inc h
    inc h
    inc h
    nop
    inc h
    jr jr_003_7995

    jr jr_003_7987

    jr @+$12

    db $10
    inc d
    db $10
    inc d
    inc d
    inc d
    inc d
    inc d
    db $10
    inc d
    db $10
    inc d
    inc b
    inc d
    ld c, h
    jr nc, jr_003_799e

    inc l
    inc l
    inc l
    inc b
    inc l
    ld c, h
    inc d
    ld c, h
    inc d
    jr nc, jr_003_79a9

    ld c, h
    inc l
    inc l
    inc l
    inc l
    inc d
    jr nc, jr_003_79b1

    inc l
    inc d

jr_003_7987:
    inc d
    inc d
    inc d
    inc b
    inc d
    jr nc, jr_003_79a2

    jr nc, @+$16

    inc d
    db $10
    inc b
    db $10
    inc d

jr_003_7995:
    jr z, @+$2a

    jr nc, jr_003_79c1

    inc d
    inc l
    jr z, @+$2e

    inc l

jr_003_799e:
    inc d
    jr nc, jr_003_79b5

    inc d

jr_003_79a2:
    inc b
    jr z, jr_003_79b9

    inc d
    jr z, jr_003_79ac

    inc d

jr_003_79a9:
    inc d
    inc b
    inc b

jr_003_79ac:
    inc d
    jr nc, jr_003_79d7

    jr nc, jr_003_79dd

jr_003_79b1:
    inc l
    inc c
    inc l
    inc c

jr_003_79b5:
    inc l
    inc l
    inc l
    inc l

jr_003_79b9:
    inc l
    inc l
    inc c
    inc l
    inc l
    jr nc, jr_003_79d4

    inc d

jr_003_79c1:
    inc b
    inc d
    jr nc, @+$06

    inc b
    inc l
    inc l
    jr nc, @+$06

    inc l
    inc l
    inc b
    jr z, jr_003_79fb

    inc l
    inc b
    jr nc, jr_003_79ff

    inc l

jr_003_79d4:
    inc d
    inc d
    inc d

jr_003_79d7:
    db $10
    inc l
    inc l
    jr nc, jr_003_79f0

    inc d

jr_003_79dd:
    db $10
    db $10
    db $10
    db $10
    ld [hl], b
    db $10
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], h
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    db $10
    ld [hl], b
    ld [hl], b

jr_003_79f0:
    db $10
    db $10
    ld [hl], b
    ld [hl], b
    db $10
    db $10
    ld [hl], b
    db $10
    ld h, b
    ld h, h
    ld h, b

jr_003_79fb:
    ld h, h
    ld h, h
    ld h, h
    ld h, h

jr_003_79ff:
    ld h, h
    ld [hl], h
    ld [hl], h
    ld h, h
    ld h, h
    ld [hl], h
    ld [hl], b
    ld h, h
    ld [hl], b
    ld [hl], h
    ld [hl], h
    ld h, b
    ld h, h
    ld [hl], b
    db $10
    ld [hl], b
    db $10
    ld h, h
    ld h, h
    ld h, h
    inc [hl]
    ld h, h
    ld h, h
    inc [hl]
    inc [hl]
    ld h, h
    ld [hl], b
    ld h, h
    ld [hl], b
    inc [hl]
    ld h, h
    inc [hl]
    ld h, h
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, h
    ld h, h
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, h
    ld [hl], b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld h, b
    ld [hl], h
    ld h, b
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld l, b
    ld h, h
    inc [hl]
    ld [hl], b
    inc [hl]
    ld [hl], h
    ld [hl], b
    ld h, b
    ld [hl], h
    ld h, b
    ld h, h
    ld h, h
    ld l, b
    ld l, b
    db $10
    ld [hl], b
    db $10
    inc d
    ld h, b
    ld l, b
    inc d
    jr nc, jr_003_7a89

    ld l, b
    inc d
    inc d
    inc l
    ld l, b
    inc d
    inc l
    inc b
    inc d
    inc l
    inc d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], h
    db $10
    db $10
    db $10
    ld [hl], b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld h, h
    ld [hl], b
    ld h, b
    ld [hl], h
    ld [hl], b
    db $10
    ld [hl], h
    db $10
    ld h, b
    ld h, h
    ld h, h
    ld [hl], b
    ld h, h
    db $10
    ld [hl], b
    db $10
    ld h, h
    ld h, h
    ld h, h
    ld a, h
    db $10

jr_003_7a89:
    ld [hl], b
    db $10
    db $10
    ld [hl], b
    ld [hl], b
    db $10
    db $10
    inc d
    inc d
    inc d
    inc b
    inc d
    ld l, h
    inc b
    ld l, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, h
    inc d
    ld l, h
    inc b
    inc d
    inc d
    db $10
    inc d
    jr nc, jr_003_7ad2

    inc d
    jr nc, jr_003_7ab5

    inc l
    inc l
    inc d
    nop
    inc h
    nop
    jr nz, jr_003_7ae9

    jr c, jr_003_7adb

    jr z, @+$1a

jr_003_7ab5:
    nop
    jr jr_003_7ad4

    inc h
    jr c, jr_003_7ae3

    jr z, jr_003_7ae9

    inc l
    ld c, h
    inc d
    inc l
    inc l
    inc d
    ld c, h
    ld c, h
    inc d
    ld c, h
    jr z, jr_003_7add

    ld c, h
    jr z, @+$4e

    jr nc, jr_003_7afa

    inc d
    inc d
    inc l
    inc l

jr_003_7ad2:
    jr nc, @+$2e

jr_003_7ad4:
    inc d
    jr nc, jr_003_7aeb

    jr nc, jr_003_7b05

    inc d
    inc l

jr_003_7adb:
    inc d
    inc d

jr_003_7add:
    inc d
    jr z, jr_003_7b08

    inc l
    inc d
    inc l

jr_003_7ae3:
    jr z, @+$4e

    ld c, h
    jr nc, jr_003_7b14

    inc l

jr_003_7ae9:
    inc c
    inc l

jr_003_7aeb:
    inc l
    ld c, h
    inc d
    inc l
    inc d
    inc l
    inc l
    inc l
    inc l
    db $10
    inc d
    inc d
    inc d
    inc d
    db $10

jr_003_7afa:
    inc d
    inc d
    inc d
    jr z, jr_003_7b13

    jr nc, jr_003_7b2d

    inc l
    inc l
    inc d
    inc l

jr_003_7b05:
    inc l
    jr nc, jr_003_7b34

jr_003_7b08:
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_003_7b3a

    db $10
    db $10
    inc d
    jr z, jr_003_7b3b

jr_003_7b13:
    ld a, b

jr_003_7b14:
    jr z, @+$16

    ld a, b
    jr z, jr_003_7b55

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    inc a
    ld a, b
    ld a, b
    nop
    inc h
    nop
    jr c, @+$26

    jr @+$3a

    jr jr_003_7b29

jr_003_7b29:
    jr c, jr_003_7b2b

jr_003_7b2b:
    jr z, jr_003_7b2d

jr_003_7b2d:
    inc b
    nop
    nop
    jr nz, jr_003_7b36

    inc e
    nop

jr_003_7b34:
    jr z, jr_003_7b4e

jr_003_7b36:
    nop
    nop
    db $10
    db $10

jr_003_7b3a:
    db $10

jr_003_7b3b:
    stop
    nop
    nop
    nop
    ld de, $0011
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop

jr_003_7b4e:
    db $10
    stop
    ld de, $0000
    nop

jr_003_7b55:
    ld de, $1111
    ld de, $1041
    ld de, $0011
    ld de, $1110
    nop
    ld d, l
    ld d, l
    ld de, $1011
    ld de, $1111
    ld de, $0011
    nop
    ld de, $0011
    nop
    inc d
    nop
    ld de, $0001
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $1101
    ld de, $1000
    nop
    ld bc, $1100
    ld bc, $1011
    nop
    ld bc, $1100
    nop
    nop
    nop
    ld de, $0011
    nop
    ld bc, $0001
    nop
    ld de, $1111
    ld de, $1100
    nop
    db $10
    ld de, $4110
    nop
    nop
    nop
    ld de, $1011
    db $10
    ld de, $1000
    nop
    ld bc, $0101
    ld bc, $1111
    db $10
    db $10
    ld bc, $1101
    ld de, $0000
    stop
    ld bc, $0100
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    ld de, $1110
    nop
    nop
    nop
    nop
    nop
    ld bc, $1001
    db $10
    ld de, $1011
    ld bc, $1100
    ld de, $1010
    nop
    ld bc, $1100
    ld bc, $1111
    ld de, $0014
    nop
    ld de, $1411
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $1100
    ld bc, $1101
    inc d
    ld de, $0011
    nop
    db $10
    ld de, $1411
    ld de, $0011
    db $10
    ld de, $1111
    ld de, $1101
    ld de, $1311
    db $10
    ld sp, $1101
    ld de, $1010
    nop
    nop
    ld bc, $1101
    ld de, $1110
    ld bc, $1211
    db $10
    ld hl, $1101
    ld de, $1111
    ld de, $1111
    nop
    stop
    ld bc, $1100
    nop
    ld de, $0001
    nop
    ld de, $0011
    ld de, $1100
    db $10
    stop
    ld bc, $1100
    ld bc, $1101
    ld de, $1101
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    ld bc, $1101
    db $10
    ld bc, $0000
    stop
    ld de, $1111
    ld bc, $1151
    ld de, $1011
    ld de, $0001
    dec d
    ld de, $1111
    ld de, $1111
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1011
    ld de, $0100
    nop
    ld de, $1000
    nop
    ld de, $0011
    ld d, c
    ld de, $1111
    ld de, $0121
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    nop
    nop
    ld de, $1100
    ld bc, $0011
    ld de, $0011
    ld bc, $1100
    ld bc, $1001
    db $10
    ld de, $0111
    ld bc, $1100
    nop
    nop
    ld bc, $0011
    db $10
    ld de, $1111
    db $10
    stop
    nop
    nop
    ld de, $1011
    stop
    nop
    ld de, $0011
    stop
    ld de, $1000
    ld de, $1101
    ld de, $1111
    db $10
    ld de, $0101
    ld de, $0011
    ld bc, $1121
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    ld de, $1111
    ld de, $1000
    nop
    ld bc, $0401
    ld de, $0011
    nop
    ld de, $0011
    ld de, $1100
    ld de, $1111
    ld de, $1100
    nop
    nop
    db $10
    dec d
    ld bc, $1151
    ld de, $0101
    ld de, $0000
    nop
    ld de, $0001
    ld d, l
    ld de, $1111
    ld de, $1011
    nop
    ld bc, $3300
    ld bc, $5501
    ld de, $1011
    ld de, $0001
    nop
    nop
    nop
    ld bc, $1001
    db $10
    ld bc, $0101
    nop
    ld b, c
    nop
    stop
    ld de, $0011
    nop
    call Call_000_00b0
    ld a, $90
    ld [$c360], a
    ld hl, $c560
    ld a, $9c
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [$df33], a
    ld a, $14
    ld [hl+], a
    ld b, a
    inc l
    ld a, $c0

jr_003_7d5d:
    ld [hl+], a
    dec b
    jr nz, jr_003_7d5d

    call Call_000_0090
    ld de, $7ea9
    call Call_003_7e6a
    ld a, [$df16]
    rlca
    add $0b
    ld [$c564], a
    ld de, $7f34
    call Call_003_7ef3

Jump_003_7d79:
    ld a, $0a
    ld [$c562], a
    ld a, $9c
    ld [$c560], a
    ld de, $7ee1
    call Call_003_7e6a
    ld a, [$df33]
    and a
    jr nz, jr_003_7dc6

    ld a, $02
    ld [$c564], a
    ld de, $7f6d
    call Call_003_7ef3
    ld a, [$df1a]
    ld [$df34], a
    ld bc, $7f73

jr_003_7da3:
    ld a, [$df34]
    and a
    jr z, jr_003_7dda

    srl a
    ld [$df34], a
    jr nc, jr_003_7dc2

    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld d, a
    ld a, $02
    ld [$c564], a
    push bc
    call Call_003_7f1e
    pop bc
    jr jr_003_7da3

jr_003_7dc2:
    inc bc
    inc bc
    jr jr_003_7da3

jr_003_7dc6:
    ld b, $08
    ld a, [$df19]
    and a
    jr nz, jr_003_7dd0

    dec b
    dec b

jr_003_7dd0:
    ld a, b
    ld [$c564], a
    ld de, $7fc7
    call Call_003_7ef3

jr_003_7dda:
    xor a
    ld [$c360], a
    ld hl, $c57f
    ld d, h
    ld e, l
    ld a, [$df0e]
    add $d1
    ld [hl+], a
    ld a, [$df13]
    add $d1
    ld [hl+], a
    ld a, [$df15]
    add $d0
    ld [hl], a
    ld hl, $c000
    ld b, $03
    ld c, $18

jr_003_7dfc:
    ld a, c
    add $10
    ld [hl+], a
    ld c, a
    ld a, $38
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    inc l
    dec b
    jr nz, jr_003_7dfc

    ld a, [$df33]
    and a
    jr z, jr_003_7e2f

    ld b, $d0
    ld a, [$df17]
    add b
    ld [de], a
    dec e
    rst RST_00
    ld a, $d0
    add c
    ld [de], a
    dec e
    ld a, $d0
    add b
    ld [de], a
    ld bc, $7e59
    call Call_003_7e5f
    call Call_003_7e5f
    call Call_003_7e5f

jr_003_7e2f:
    call Call_000_0090
    ld a, [$c262]
    rrca
    jr c, jr_003_7e44

    rrca
    jr nc, jr_003_7e2f

    call Call_000_00b0
    ld a, $04
    ld [$c463], a
    ret


jr_003_7e44:
    ld b, $0a
    xor a
    ld hl, $c00c

jr_003_7e4a:
    ld [hl+], a
    dec b
    jr nz, jr_003_7e4a

    ld a, [$df33]
    xor $01
    ld [$df33], a
    jp Jump_003_7d79


    jr c, @-$66

    jr c, @-$6e

    jr z, @-$66

Call_003_7e5f:
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld a, [de]
    inc e
    ld [hl+], a
    inc l
    ret


Call_003_7e6a:
jr_003_7e6a:
    ld a, [de]
    inc de
    and a
    ret z

    ld [$c564], a

jr_003_7e71:
    ld hl, $c560
    ld a, [hl+]
    ld c, a
    ld a, $01
    ld [hl+], a
    ld a, [hl]
    add $20
    ld [hl+], a
    ld a, c
    adc $00
    ld [$c560], a
    ld a, $0a
    ld [hl+], a
    ld c, a
    inc l
    push de

jr_003_7e89:
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de

jr_003_7e8e:
    ld [hl+], a
    dec c
    jr z, jr_003_7e97

    dec b
    jr nz, jr_003_7e8e

    jr jr_003_7e89

jr_003_7e97:
    call Call_000_0090
    ld a, [$c564]
    dec a
    jr z, jr_003_7ea6

    ld [$c564], a
    pop de
    jr jr_003_7e71

jr_003_7ea6:
    pop hl
    jr jr_003_7e6a

    ld bc, $c501
    inc bc
    ret nz

    inc b
    jp $dc01


    ld bc, $06c5
    ld bc, $07c4
    ret nz

    ld [bc], a
    call nz, Call_000_0101
    db $dd
    rlca
    jp $de01


    ld bc, $01c4
    add hl, bc
    ret nz

    ld bc, $01c4
    ld bc, $04c5
    ret nz

    inc b
    jp $c401


    ld b, $01
    call nz, $c008
    ld bc, $01c4
    ld bc, $08dd
    jp $dd01


    nop
    ld bc, $c004
    dec b
    jp $dc01


    rrca
    add hl, bc
    ret nz

    ld bc, $01c4
    add hl, bc
    jp $de01


    nop

Call_003_7ef3:
    ld hl, $c560
    ld a, $9c
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl], a

jr_003_7efe:
    ld a, [de]
    inc de
    and a
    jr z, jr_003_7f19

    ld b, a
    and $f0
    swap a
    add [hl]
    ld [hl+], a
    ld a, b
    and $0f
    ld b, a
    ld [hl+], a
    inc l

jr_003_7f10:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_003_7f10

    call Call_000_0090

jr_003_7f19:
    ld hl, $c564
    dec [hl]
    ret z

Call_003_7f1e:
    ld hl, $c560
    ld a, [hl+]
    ld c, a
    ld a, $01
    ld [hl+], a
    ld a, [hl]
    and $f0
    add $20
    ld [hl], a
    ld a, c
    adc $00
    ld [$c560], a
    jr jr_003_7efe

    nop
    dec d
    db $ec
    push hl
    or $e5
    db $ec
    nop
    inc d
    ld [$edf5], a
    ldh a, [rP1]
    inc d
    rst RST_30
    jp hl


    xor $e7
    nop
    inc d
    db $ec

jr_003_7f4a:
    jp hl


    and $e5
    nop
    nop
    dec d
    db $ed
    pop hl
    rst RST_20
    jp hl


    db $e3
    nop
    ld d, $e2
    push af
    di
    db $f4
    push hl
    ldh a, [c]
    nop
    inc d
    db $e3
    db $ec
    pop hl
    rst RST_30
    nop
    jr jr_003_7f4a

    pop hl
    ldh a, [c]
    db $eb
    and $e9
    ldh a, [c]
    push hl
    nop
    and h
    jp hl


    db $f4
    push hl
    db $ed
    add e
    ld a, a
    adc l
    ld a, a
    sub h
    ld a, a
    sbc l
    ld a, a
    and [hl]
    ld a, a
    xor h
    ld a, a
    or l
    ld a, a
    cp [hl]
    ld a, a
    nop
    xor b
    and $ee
    rst RST_20
    ldh a, [c]
    xor $e1
    jp hl


    db $ec
    nop
    and l
    di
    db $f4
    jp hl


    db $e3
    db $eb
    nop
    and a
    db $e3
    db $e4
    rst RST_08
    ldh a, [$ffe7]
    di
    db $f4
    nop
    and a
    pop hl
    db $ed
    ldh a, [c]
    rst RST_08
    db $e4
    ldh a, [c]
    rst RST_20
    nop
    and h
    rst RST_30
    jp hl


    xor $e7
    nop
    and a
    pop hl
    db $ed
    ldh a, [c]
    rst RST_08
    db $e4
    db $e3
    db $f4
    nop
    and a
    db $e3
    db $e4
    rst RST_08
    db $e4
    db $eb
    xor $f3
    nop
    and a
    db $e3
    db $e4
    rst RST_08
    rst RST_20
    add sp, -$11
    push af
    nop
    and h
    jp hl


    db $f4
    push hl
    db $ed
    nop
    and a
    db $f4
    pop hl
    db $ec
    jp hl


    di
    ret nz

    jp z, $a700

    or $e9
    pop hl
    db $ec
    di
    ret nz

    jp z, $a700

    push hl
    di
    di
    push hl
    xor $e3
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
    nop
    nop
    nop
    nop
    nop
