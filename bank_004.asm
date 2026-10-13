; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    nop
    nop
    nop
    inc bc
    inc b
    dec b
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    jr jr_004_4033

    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_004_4043

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    jr z, jr_004_4053

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_4063

    ld [hl-], a

jr_004_4033:
    nop
    nop
    nop
    nop
    nop
    jr c, jr_004_4073

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4043:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4053:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4063:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4073:
    nop
    nop
    nop
    nop
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
    ld bc, $0201
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $05
    rlca
    dec b
    rlca
    ld [$0907], sp
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    dec bc
    ld bc, $0d0c
    dec c
    ld c, $0d
    dec c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $0011
    ld [de], a
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    dec d
    ld d, $17
    jr jr_004_410a

    jr jr_004_410c

    jr @+$1a

    jr jr_004_4110

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld [bc], a
    dec de
    dec de
    inc e
    dec e
    ld e, $1b
    rra
    ld [bc], a
    inc b

jr_004_410a:
    jr nz, @+$23

jr_004_410c:
    ld [hl+], a
    ld hl, $2423

jr_004_4110:
    dec h
    ld h, $22
    inc hl
    daa
    inc b
    daa
    inc h
    ld [bc], a
    jr z, jr_004_4142

    jr nz, jr_004_4121

    daa
    add hl, hl
    ld a, [hl+]
    dec h

jr_004_4121:
    jr nz, jr_004_4145

    dec hl
    dec hl
    inc l
    inc b
    inc b
    dec h
    daa
    dec l
    inc b
    ld l, $04
    cpl
    jr nc, jr_004_4156

    inc b
    ld sp, $2032
    inc b
    jr nz, jr_004_416b

    dec h
    inc [hl]
    dec hl
    dec [hl]
    ld [hl], $34
    dec hl
    scf
    jr c, jr_004_4177

jr_004_4142:
    ld [bc], a
    ld [bc], a
    nop

jr_004_4145:
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec h
    dec sp
    nop
    nop
    nop
    nop
    ld a, [hl-]
    add hl, sp
    dec sp
    dec h
    nop
    nop

jr_004_4156:
    nop
    nop
    inc a
    dec a
    dec h
    dec h
    nop
    nop
    nop
    nop
    ld hl, $0222
    dec h
    nop
    nop
    nop
    nop
    ld a, $20
    dec h

jr_004_416b:
    ld [bc], a
    nop
    nop
    nop
    nop
    jr z, jr_004_4176

    ld [bc], a
    dec sp
    nop
    nop

jr_004_4176:
    nop

jr_004_4177:
    nop
    dec [hl]
    jr nz, @+$27

    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ccf
    ld b, b
    ld l, $41
    ccf
    ld b, d
    ld b, e
    ld b, c
    ld b, h
    dec b
    ld hl, $0404
    rlca
    dec b
    ld b, l
    inc b
    inc b
    ld sp, $4746
    jr nz, jr_004_421b

    inc b
    dec b
    ld c, b
    inc b

jr_004_421b:
    ld c, c
    ld c, d
    inc b
    ld c, e
    dec b
    ld b, d
    inc hl
    ld l, $4c
    ld c, l
    ld b, d
    inc hl
    ld l, $4e
    inc hl
    ld c, a
    inc b
    inc b
    ld d, b
    inc hl
    ld d, c
    ld b, h
    dec b
    ld sp, $0404
    jr nz, jr_004_423c

    ld b, l
    ld d, d
    ld d, e
    ld d, e
    ld d, e

jr_004_423c:
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld d, l
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    ld d, a
    ld [bc], a
    ld d, a
    ld [bc], a
    ld e, b
    inc bc
    ld b, b
    ld e, c
    ld e, c
    ld [bc], a
    ld d, a
    ld [bc], a
    inc b
    ld e, d
    inc b
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc b
    ld h, b
    dec c
    ld e, c
    ld d, [hl]
    inc b
    inc b
    inc b
    inc hl
    inc b
    ld [bc], a
    ld h, c
    ld h, d
    jr nz, jr_004_4307

    ld h, h
    dec c
    ld h, l
    ld [bc], a
    ld h, [hl]
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0404
    ld h, a
    inc b
    inc b
    ld l, b
    ld [bc], a
    ld d, [hl]
    inc b
    inc b
    ld h, h
    inc b
    ld hl, $0256
    jr nz, jr_004_42c6

    ld [bc], a
    ld [bc], a
    nop
    nop

jr_004_42c6:
    nop
    nop
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld l, c
    ld h, l
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    jr c, jr_004_42dc

    ld [bc], a
    ld [bc], a

jr_004_42dc:
    nop
    nop
    nop
    nop
    ld e, c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_004_42ec

    nop
    nop

jr_004_42ec:
    nop
    nop
    nop
    nop
    ld e, c
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0401
    inc b
    inc b
    inc b

jr_004_4307:
    ld a, [bc]
    ld [bc], a
    ld bc, $2101
    ld hl, $2107
    rlca
    ld [bc], a
    ld bc, $6401
    ld h, h
    ld a, [bc]
    ld h, h
    ld a, [bc]
    ld [bc], a
    ld bc, $6401
    ld h, h
    ld [bc], a
    ld l, d
    ld l, d
    inc hl
    inc hl
    inc hl
    inc b
    inc hl
    ld [bc], a
    ld l, e
    ld l, e
    ld hl, $0704
    inc b
    inc b
    ld [bc], a
    ld l, e
    ld l, e
    ld h, h
    inc b
    ld a, [bc]
    inc b
    inc b
    ld [bc], a
    ld l, e
    ld l, e
    ld [bc], a
    ld bc, $0201
    ld bc, $6b02
    ld l, e
    inc hl
    ld h, h
    ld h, h
    ld h, h
    ld [bc], a
    ld bc, $0201
    ld hl, $0707
    rlca
    ld [bc], a
    ld bc, $0201
    ld h, h
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $6c02
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $6b02
    ld [bc], a
    ld [bc], a
    ld l, l
    ld l, l
    ld l, l
    inc b
    inc b
    ld l, e
    ld [bc], a
    ld [bc], a
    ld l, e
    ld l, e
    ld l, e
    ld [bc], a
    ld bc, $6e6b
    ld l, [hl]
    ld l, e
    ld l, e
    ld l, e
    ld [bc], a
    ld bc, $6b6b
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, [hl]
    ld h, d
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [hl], b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [hl], b
    ld b, d
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [hl], c
    inc b
    nop
    nop
    nop
    inc de
    dec d
    ld [bc], a
    ld [hl], d
    ld sp, $0000
    nop
    jr jr_004_43cd

    ld [bc], a
    ld b, d
    inc b
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [bc], a
    ld a, [bc]
    dec c
    ld h, c
    ld [hl], h
    dec c
    dec c
    dec c
    inc b
    inc b
    ld [bc], a
    ld h, d
    ld [hl], l
    ld [hl], l
    ld [hl], l
    halt

jr_004_43cd:
    inc b
    dec b
    ld [bc], a
    inc b
    inc b
    inc b
    jr nz, jr_004_43da

    ld b, b
    inc b
    ld [bc], a
    ld [hl], a
    ld a, b

jr_004_43da:
    inc hl
    inc b
    inc b
    dec c
    ld a, c
    ld [bc], a
    ld h, a
    inc b
    inc b
    ld b, b
    inc b
    ld d, [hl]
    ld d, [hl]
    ld [bc], a
    ld a, d
    inc b
    dec c
    dec c
    ld a, c
    ld l, a
    ld l, a
    ld [bc], a
    jr nz, jr_004_43f6

    ld a, e
    ld a, e
    ld l, a
    ld a, h

jr_004_43f6:
    ld a, h
    ld a, l
    dec c
    ld a, c
    ld bc, $5656
    ld sp, $0404
    ld a, e
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld b, d
    ld a, a
    add b
    add c
    nop
    add b
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    ld bc, $0402
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld l, $00
    nop
    nop
    nop
    ld bc, $7002
    inc b
    nop
    nop
    nop
    nop
    ld bc, $8202
    inc b
    nop
    nop
    nop
    nop
    ld bc, $8202
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0c02
    dec c
    nop
    nop
    nop
    nop
    ld bc, $6f02
    ld l, a
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $6f04
    ld l, a
    ld l, a
    ld a, h
    inc b
    ld sp, $0442
    ld a, h
    ld d, [hl]
    ld d, [hl]
    inc b
    ld sp, $8304
    inc b
    dec l
    inc b
    inc b
    ld l, $04
    add h
    ld l, a
    ld h, a
    ld hl, $0704
    inc b
    add l
    ld [bc], a
    ld d, [hl]
    ld b, b
    ld h, h
    inc b
    ld a, [bc]
    add l
    rrca
    ld [bc], a
    ld l, a
    dec c
    dec c
    dec c
    dec c
    add [hl]
    ld bc, $0102
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [bc], a
    ld l, a
    ld [bc], a
    ld l, a
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld bc, $872d
    adc b
    nop
    ld [de], a
    nop
    nop
    nop
    dec c
    dec c
    adc c
    add b
    nop
    ld [de], a
    nop
    nop
    ld l, a
    ld [bc], a
    ld bc, $8000
    nop
    nop
    ld [de], a
    ld d, [hl]
    ld [bc], a
    ld d, [hl]
    adc d
    nop
    add b
    ld [de], a
    ld [de], a
    ld l, a
    ld [bc], a
    ld l, a
    adc e
    nop
    inc d
    nop
    nop
    ld bc, $0102
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld l, a
    ld [bc], a
    ld l, a
    ld bc, $9291
    sub d
    sub d
    ld bc, $0102
    ld bc, $1993
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    ld bc, $7b02
    ld a, e
    nop
    nop
    nop
    nop
    ld bc, $9402
    sub h
    nop
    nop
    nop
    ld [bc], a
    ld bc, $9502
    sub l
    nop
    nop
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    ld a, e
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0000
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    ld bc, $0000
    nop
    ld [bc], a
    sub [hl]
    sub [hl]
    ld [bc], a
    ld bc, $0000
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    sub a
    ld [bc], a
    ld a, e
    ld a, e
    ld a, e
    ld [bc], a
    ld a, e
    ld [bc], a
    ld bc, $9402
    sub h
    sub h
    ld [bc], a
    sub h
    ld [bc], a
    ld [hl], b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc d
    sub l
    sbc d
    inc b
    ld bc, $2304
    inc hl
    inc hl
    dec l
    dec l
    sbc e
    ld bc, $042d
    dec l
    inc b
    dec l
    inc b
    inc b
    inc b
    ld sp, $839c
    dec c
    dec c
    sbc l
    ld [bc], a
    inc b
    inc b
    inc b
    sbc [hl]
    sbc a
    ld a, e
    ld a, e
    ld [bc], a
    and b
    ld [hl], a
    inc b
    sbc [hl]
    and c
    ld bc, $0201
    and d
    and e
    and e
    and e
    and h
    nop
    nop
    nop
    inc b
    inc b
    ld b, d
    and l
    and [hl]
    nop
    nop
    nop
    inc b
    ld b, d
    dec l
    and a
    nop
    nop
    nop
    nop
    xor b
    xor c
    xor c
    xor d
    adc b
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    xor e
    nop
    nop
    nop
    sub h
    sub h
    sub h
    ld [bc], a
    xor h
    nop
    nop
    nop
    sbc c
    sbc c
    sub l
    ld [bc], a
    xor h
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    xor h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0000
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    xor l
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    sub a
    nop
    nop
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    xor l
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0000
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    xor l
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0000
    nop
    ld [bc], a
    ld a, e
    ld a, e
    ld [bc], a
    xor l
    ld [hl], a
    inc b
    xor [hl]
    sbc [hl]
    and c
    ld bc, $0201
    sbc h
    ld l, $04
    sbc [hl]
    sbc a
    ld a, e
    ld a, e
    ld [bc], a
    xor a
    ld sp, $9e04
    and c
    ld bc, $0201
    inc b
    ld [hl], a
    inc b
    sbc [hl]
    sbc a
    ld a, e
    ld a, e
    ld [bc], a
    inc b
    ld l, $ae
    or b
    or c
    and d
    and d
    ld [bc], a
    ld sp, $af2d
    ld h, h
    xor a
    ld h, h
    inc b
    ld [bc], a
    inc b
    inc b
    jr nz, jr_004_4665

    jr nz, jr_004_4667

    inc b
    or d
    sbc h
    sbc h
    sbc h
    or e
    or h
    inc b
    inc b
    inc b
    ld bc, $0101
    ld [bc], a
    xor h
    nop
    nop
    nop
    ld a, e
    ld a, e
    ld a, e
    ld [bc], a
    xor h
    nop
    nop
    nop
    sub h
    sub h
    sub h
    ld [bc], a
    xor h
    nop
    or l
    nop
    sub l
    sub l
    sub l
    or [hl]
    or a
    or l
    nop
    or l
    ld bc, $b804
    cp c
    cp d

jr_004_4665:
    cp e
    cp h

jr_004_4667:
    cp l
    ld bc, $be04
    cp a
    ld a, e
    ld a, e
    dec c
    ret nz

    pop bc
    jp nz, Jump_000_01bf

    ld bc, $0201
    dec c
    jp nz, Jump_000_02bf

    ld a, e
    ld a, e
    ld a, e
    ld [bc], a
    ld a, e
    nop
    nop
    jp $0102


    ld bc, $9e02
    nop
    nop
    call nz, Call_004_7b02
    ld a, e
    ld [bc], a
    push bc
    nop
    nop
    add $b2
    and d
    rst RST_00
    inc b
    ld b, e
    ld de, $c811
    ld a, [bc]
    ret


    ret


    ret


    ld b, e
    nop
    nop
    add c
    ret z

    ld h, h
    inc b
    jp z, $bd2d

    cp l
    cp l
    cp l
    rlc h
    ld [bc], a
    inc b
    call z, $cecd
    rst RST_08
    ret nc

    pop de
    ld [bc], a
    jp nc, $d1d1

    pop de
    call nz, $95d3
    ld [bc], a
    ld a, e
    sbc a
    ld [bc], a
    ld a, e
    push bc
    and c
    ld b, d
    ld b, d
    jp nz, Jump_000_02d4

    sub h
    push de
    and c
    ld b, d
    ld b, d
    sub $2d
    ld [bc], a
    sbc c
    rst RST_10
    or c
    ld b, d
    dec l
    ld bc, $02d8
    reti


    and b
    and b
    ld h, h
    jp c, $a701

    db $db
    call c, Call_000_042d
    db $dd
    sbc $7b
    dec l
    rst RST_18
    ldh [$ffe1], a
    ldh [c], a
    push bc
    db $e3
    ld bc, $e4d2
    sbc $02
    xor l
    sbc [hl]
    and c
    ld bc, $027b
    push hl
    ld [bc], a
    ld bc, $a19e
    ld bc, $01bf
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $7b7b
    ld [bc], a
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld bc, $7b02
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $7b02
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld bc, $7b02
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, h
    ld c, b
    ld b, h
    ld c, b
    db $10
    db $10
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    jr nc, jr_004_4786

    inc d
    inc d
    jr nc, @+$06

    inc d
    jr nc, jr_004_478d

    jr nc, jr_004_4773

    jr nc, jr_004_4765

    jr nc, jr_004_4777

    inc d
    inc d

jr_004_4765:
    inc d
    inc b
    inc d
    inc d
    jr nc, jr_004_477f

    jr nc, jr_004_4781

    jr nc, jr_004_4783

    inc b
    inc b
    inc b
    inc b

jr_004_4773:
    inc b
    jr jr_004_478e

    inc h

jr_004_4777:
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_004_477f:
    inc b
    nop

jr_004_4781:
    nop
    inc l

jr_004_4783:
    inc l
    nop
    nop

jr_004_4786:
    nop
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop

jr_004_478d:
    ld l, h

jr_004_478e:
    ld a, b
    ld a, h
    nop
    nop
    ld a, b
    ld a, h
    nop
    ld l, h
    nop
    ld a, b
    ld a, b
    ld a, h
    ld [hl], b
    ld [hl], h
    nop
    nop
    ld a, h
    nop
    ld l, b
    ld l, b
    inc l
    inc l
    inc l
    inc l
    nop
    nop
    inc l
    inc l
    ld b, h
    ld c, b
    ld d, b
    ld c, h
    db $10
    db $10
    ld d, b
    inc e
    db $10
    ld d, b
    ld b, b
    inc e
    inc e
    ld d, b
    ld b, b
    ld c, h
    inc e
    db $10
    ld d, b
    ld b, b
    db $10
    ld b, b
    inc d
    jr nc, jr_004_47d7

    inc d
    jr nc, jr_004_47f6

    jr nc, @+$16

    ld e, h
    jr nc, @+$32

    inc d
    inc d
    inc d
    jr nc, jr_004_4800

    inc d
    ld c, h
    inc d
    inc e
    jr nz, jr_004_481e

    ld b, h

jr_004_47d7:
    ld c, b
    inc d
    jr nc, jr_004_47f3

    jr jr_004_47f1

    ld e, h
    inc d
    inc d
    ld b, b
    inc e
    ld c, h
    ld c, h
    inc d
    jr @+$16

    inc h
    jr jr_004_482a

    inc e
    ld c, h
    jr jr_004_4806

    inc h
    inc e
    ld b, b

jr_004_47f1:
    jr nc, jr_004_483f

jr_004_47f3:
    inc d
    jr nc, jr_004_4826

jr_004_47f6:
    jr nc, jr_004_4828

    inc d
    inc d
    jr nc, jr_004_4810

    inc d
    jr nc, jr_004_4813

    ld e, h

jr_004_4800:
    inc d
    ld b, b
    jr nc, jr_004_4850

    jr nc, @+$16

jr_004_4806:
    inc d
    inc d
    inc d
    inc d
    ld b, b
    ld b, b
    inc d
    inc e
    inc d
    ld c, h

jr_004_4810:
    jr jr_004_482a

    ld c, h

jr_004_4813:
    inc e
    inc e
    ld b, b
    ld c, h
    inc e
    ld b, b
    jr jr_004_4867

    inc e
    ld b, b
    ld b, b

jr_004_481e:
    ld c, h
    inc e
    ld b, b
    ld b, b
    ld c, h
    ld b, b
    inc e
    ld c, h

jr_004_4826:
    ld c, h
    inc e

jr_004_4828:
    ld b, b
    ld c, h

jr_004_482a:
    ld c, h
    inc e
    ld b, h
    ld c, b
    jr nz, jr_004_4878

    inc e
    ld b, b
    ld c, h
    ld c, h
    ld b, b
    ld b, b
    ld c, h
    inc e
    inc e
    ld b, b
    ld b, b
    ld c, h
    ld c, b
    ld d, b
    ld c, b

jr_004_483f:
    inc d
    inc d
    jr nc, jr_004_4873

    jr nc, jr_004_4895

    ld b, h
    inc d
    ld b, h
    inc d
    inc d
    inc d
    jr nc, jr_004_487d

    inc d
    jr nc, @+$32

jr_004_4850:
    ld c, b
    inc d
    ld c, b
    inc d
    inc d
    ld b, h
    inc d
    ld b, h
    inc d
    inc d
    inc d
    ld h, b
    inc d
    inc d
    ld h, h
    inc d
    inc d
    inc d
    ld c, h
    inc d
    inc d
    ld l, b
    inc d

jr_004_4867:
    ld [hl], b
    ld l, h
    inc d
    ld [hl], h
    inc d
    inc d
    inc d
    inc d
    ld c, h
    inc d
    ld a, b
    inc d

jr_004_4873:
    inc d
    ld a, h
    inc d
    inc d
    inc d

jr_004_4878:
    inc d
    inc d
    ld c, b
    inc d
    ld c, h

jr_004_487d:
    jr nc, jr_004_48af

    jr nc, jr_004_48b1

    ld c, h
    jr nc, jr_004_48b4

    inc d
    inc d
    inc d
    ld b, h
    ld c, b
    jr @+$4a

    ld c, h
    jr jr_004_48a6

    ld c, h
    ld c, h
    jr jr_004_48d6

    ld c, h
    ld b, h
    inc l

jr_004_4895:
    inc l
    inc b
    inc b
    ld c, h
    inc b
    inc b
    inc b
    ld b, b
    ld c, h
    ld c, h
    ld d, b
    inc d
    db $10
    inc d
    inc d
    ld c, h
    ld c, h

jr_004_48a6:
    ld h, h
    ld h, h
    inc d
    jr nc, jr_004_48e7

    jr nc, jr_004_48b1

    inc b
    ld d, b

jr_004_48af:
    ld d, b
    ld b, b

jr_004_48b1:
    ld c, h
    ld c, h
    ld d, h

jr_004_48b4:
    ld b, h
    ld c, b
    inc d
    db $10
    ld b, b
    ld d, h
    db $10
    db $10
    ld b, h
    ld c, b
    db $10
    db $10
    jr nc, jr_004_48f2

    inc a
    inc d
    ld b, b
    ld b, b
    ld b, b
    ld c, h
    ld c, h
    inc b
    ld d, b
    ld d, b
    inc a
    jr nc, jr_004_48ff

    inc d
    jr nc, jr_004_48e6

    jr nc, jr_004_48e8

    jr @+$06

jr_004_48d6:
    inc h
    ld c, h
    ld c, h
    jr z, jr_004_4927

    jr z, jr_004_4931

    ld d, h
    db $10
    db $10
    jr jr_004_48fa

    inc b
    inc b
    jr jr_004_48fe

jr_004_48e6:
    inc h

jr_004_48e7:
    ld c, h

jr_004_48e8:
    inc d
    jr nc, jr_004_48eb

jr_004_48eb:
    nop
    inc h
    inc h
    inc h
    inc h
    jr nc, jr_004_4906

jr_004_48f2:
    nop
    nop
    inc d
    inc d
    nop
    nop
    inc b
    inc b

jr_004_48fa:
    inc h
    inc h
    ld c, h
    ld h, b

jr_004_48fe:
    ld h, h

jr_004_48ff:
    ld h, h
    jr z, jr_004_4916

    jr z, jr_004_4918

    ld c, h
    inc d

jr_004_4906:
    inc b
    inc d
    ld c, h
    inc d
    ld d, b
    inc d
    nop
    inc b
    inc b
    inc b
    inc b
    jr jr_004_4917

    inc h
    ld c, h
    inc b

jr_004_4916:
    db $10

jr_004_4917:
    db $10

jr_004_4918:
    inc b
    inc b
    inc d
    inc d
    inc d
    jr nc, jr_004_494f

    inc d
    jr nc, jr_004_4936

    inc d
    jr nc, @+$1a

    inc b
    inc h

jr_004_4927:
    inc b
    inc d
    inc d
    inc d
    inc a
    ld h, b
    ld h, b
    ld h, h
    ld h, h
    ld d, b

jr_004_4931:
    ld d, b
    inc d
    inc d
    ld d, b
    inc b

jr_004_4936:
    inc d
    db $10
    ld d, b
    inc b
    db $10
    db $10
    jr nc, jr_004_4976

    jr c, jr_004_4940

jr_004_4940:
    nop
    nop
    ld l, h
    ld l, h
    nop
    nop
    ld l, h
    nop
    inc b
    inc d
    inc b
    inc d
    ld d, h
    ld d, h
    inc b

jr_004_494f:
    inc b
    ld d, h
    inc b
    ld b, h
    ld c, b
    inc d
    ld [$0408], sp
    ld b, h
    ld c, b
    ld b, h
    ld c, b
    jr nc, jr_004_4996

    jr nc, jr_004_4990

    nop
    nop
    jr c, jr_004_4964

jr_004_4964:
    jr c, jr_004_4966

jr_004_4966:
    ld d, h
    ld d, h
    nop
    nop
    ld d, h
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld d, h
    inc b
    inc b
    nop
    ld a, b

jr_004_4976:
    ld l, b
    ld l, b
    ld [hl], b
    ld [hl], h
    ld l, b
    ld l, b
    ld a, h
    nop
    ld l, b
    ld l, b
    ld a, b
    ld a, h
    ld l, b
    ld l, b
    inc l
    inc l
    ld d, h
    inc l
    inc l
    inc l
    inc l
    inc l
    inc b
    inc l
    inc b
    nop

jr_004_4990:
    inc b
    inc b
    ld h, b
    ld h, b
    ld h, h
    ld h, h

jr_004_4996:
    inc b
    inc b
    inc b
    inc b
    ld c, h
    inc b
    inc b
    jr z, jr_004_49a3

    jr z, jr_004_49e5

    ld c, b
    ld d, b

jr_004_49a3:
    inc b
    ld h, h
    ld h, h
    ld d, b
    inc b
    ld b, h
    ld c, b
    inc b
    inc b
    inc d
    inc a
    jr nc, jr_004_49c4

    ld d, h
    inc b
    inc b
    inc b
    ld d, h
    inc b
    inc b
    inc b
    inc b
    ld b, h
    inc b
    ld b, h
    ld c, b
    ld h, b
    ld c, b
    ld h, h
    inc d
    jr nc, jr_004_49f3

    inc a

jr_004_49c4:
    ld c, b
    inc b
    ld c, b
    inc b
    inc b
    inc b
    ld d, b
    inc b
    inc b
    inc b
    db $10
    db $10
    inc b
    nop
    stop
    inc d
    jr nc, jr_004_4a07

    jr c, jr_004_4a11

    nop
    nop
    nop
    jr c, jr_004_49de

jr_004_49de:
    jr nc, jr_004_4a18

    inc d
    inc a
    inc d
    jr nc, jr_004_4a15

jr_004_49e5:
    inc a
    jr nc, jr_004_4a18

    jr nc, jr_004_4a22

    jr nc, jr_004_4a00

    jr jr_004_49ee

jr_004_49ee:
    inc h
    ld e, b
    ld c, b
    ld e, b
    ld c, b

jr_004_49f3:
    ld e, b
    ld h, b
    inc b
    ld h, h
    inc b
    ld d, h
    inc b
    ld d, b
    ld d, b
    inc d
    jr nc, jr_004_4a13

    inc a

jr_004_4a00:
    inc b
    ld b, h
    ld d, b
    inc b
    ld c, b
    inc b
    ld d, b

jr_004_4a07:
    inc b
    ld b, h
    ld c, b
    ld d, b
    ld d, b
    ld d, h
    inc b
    inc b
    ld b, h
    ld d, h

jr_004_4a11:
    inc b
    ld c, b

jr_004_4a13:
    inc b
    nop

jr_004_4a15:
    ld l, h
    nop
    nop

jr_004_4a18:
    inc b
    inc b
    jr nc, @+$32

    inc b
    ld e, b
    jr nc, jr_004_4a58

    inc b
    inc d

jr_004_4a22:
    inc d
    jr nc, jr_004_4a55

    jr nc, jr_004_4a57

    ld [$3030], sp
    inc b
    inc b
    jr nc, jr_004_4a66

    ld d, h
    inc b
    nop
    nop
    jr nc, jr_004_4a6c

    nop
    ld a, b
    ld a, b
    ld a, h
    inc d
    jr nc, jr_004_4a6b

    ld [$0408], sp
    inc b
    inc b
    ld a, h
    ld [hl], b
    jr nc, jr_004_4a7c

    inc b
    inc d
    inc d
    inc a
    inc d
    inc d
    inc d
    ld [$0000], sp
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld h, b

jr_004_4a55:
    ld b, h
    ld h, h

jr_004_4a57:
    ld b, h

jr_004_4a58:
    ld b, h
    ld b, h
    ld d, b
    ld d, b
    inc b
    jr z, jr_004_4aaf

    jr z, jr_004_4a95

    jr nc, jr_004_4a63

jr_004_4a63:
    inc [hl]
    jr nc, @+$16

jr_004_4a66:
    inc d
    inc a
    inc d
    inc d
    ld d, h

jr_004_4a6b:
    inc b

jr_004_4a6c:
    inc [hl]
    inc d
    inc [hl]
    inc d
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    inc [hl]
    inc [hl]
    jr nc, jr_004_4aab

    inc d

jr_004_4a7c:
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    inc b
    ld d, h
    ld c, b
    ld c, b
    inc b
    ld d, h
    ld h, b
    ld h, b
    inc d
    inc d
    inc b
    ld d, h
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    inc b
    ld c, b
    ld h, b
    inc b

jr_004_4a95:
    ld b, h
    ld h, b
    ld b, h
    ld [$0404], sp
    inc b
    ld h, h
    ld b, h
    ld d, b
    inc b
    jr nc, jr_004_4ada

    jr c, jr_004_4b10

    nop
    inc [hl]
    inc [hl]
    jr nc, @+$16

    jr nc, @+$16

jr_004_4aab:
    ld [$5050], sp
    nop

jr_004_4aaf:
    nop
    nop
    inc [hl]
    nop
    inc [hl]
    jr nc, jr_004_4aca

    ld d, h
    ld d, h
    ld [$0404], sp
    ld h, b
    jr c, jr_004_4b36

    jr nc, jr_004_4af0

    inc [hl]
    jr nc, jr_004_4af3

    ld [$3030], sp
    ld d, h
    ld d, h
    inc d
    inc d

jr_004_4aca:
    ld d, h
    ld d, h
    ld c, b
    ld h, h
    ld c, b
    inc b
    jr nc, jr_004_4b02

    inc b

Jump_004_4ad3:
    ld d, h
    ld h, b
    ld h, h
    ld h, h
    inc b
    nop
    nop

jr_004_4ada:
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_004_4af0:
    ld h, b
    ld h, b
    ld h, b

jr_004_4af3:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_004_4b02:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_004_4b10:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_004_4b36:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld de, $1111
    ld de, $0077
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    stop
    nop
    stop
    nop
    nop
    ld bc, $1114
    ld [hl], a
    ld de, $1144
    ld b, c
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $7711
    ld de, $1171
    ld de, $1711
    ld de, $0071
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1101
    ld de, $7700
    nop
    nop
    ld de, $0711
    ld bc, $1171
    ld [hl], a
    ld de, $1010
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld de, $0101
    ld [hl], a
    ld de, $1111
    ld b, a
    ld de, $1141
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    stop
    nop
    ld de, $0001
    nop
    nop
    nop
    db $10
    db $10
    ld bc, $0b01
    rlca
    or b
    ld [hl], b
    nop
    db $10
    rlca
    rlca
    ld [hl], b
    ld [hl], b
    nop
    ld bc, $0007
    ld [hl], b
    nop
    nop
    db $10
    stop
    ld bc, $0000
    ld bc, $1117
    ld [hl], a
    ld de, $1171
    nop
    ld de, $1111
    ld de, $0711
    nop
    ld de, $0011
    nop
    ld de, $1111
    ld de, $0711
    ld de, $1177
    ld [hl], a
    nop
    nop
    ld de, $1111
    ld de, $0000
    nop
    nop
    ld [hl], h
    ld de, $1717
    ld de, $7777
    ld de, $1177
    nop
    nop
    adc b
    adc b
    nop
    nop
    nop
    nop
    ld de, $1188
    ld de, $7070
    db $10
    db $10
    db $10
    db $10
    ld bc, $4711
    ld de, $7711
    ld de, $0000
    nop
    nop
    nop
    ld [hl], h
    ld de, $0000
    ld de, $1111
    nop
    ld de, $1107
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    inc d
    ld de, $1111
    ld [bc], a
    inc h
    ld b, c
    ld de, $0000
    nop
    nop
    nop
    ld de, $1000
    db $10
    db $10
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    db $10
    db $10
    ld de, $1111
    ld de, $1111
    rla
    rla
    ld de, $1111
    ld de, $1111
    nop
    nop
    ld de, $4111
    ld de, $1111
    ld de, $0011
    nop
    ld de, $1111
    ld de, $7711
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
    ld [hl], b
    rla
    rla
    rla
    ld de, $1111
    ld de, $0000
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0000
    ld de, $1700
    nop
    stop
    nop
    ld [bc], a
    nop
    ld b, c
    nop
    ld de, $0000
    nop
    nop
    nop
    ld [bc], a
    inc h
    ld b, c
    nop
    nop
    stop
    nop
    ld [bc], a
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1717
    nop
    nop
    nop
    nop
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1124
    ld de, $0011
    nop
    nop
    nop
    nop
    ld [bc], a
    ld de, $0000
    nop
    nop
    ld de, $1124
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, c
    nop
    ld de, $1111
    nop
    ld de, $1111
    nop
    nop
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
    ld de, $1111
    ld de, $1111
    ld de, $0011
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0209], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0807], sp
    add hl, bc
    ld a, [bc]
    inc bc
    inc bc
    nop
    ld bc, $0100
    dec bc
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    dec bc
    rrca
    rrca
    rrca
    nop
    ld bc, $0100
    dec bc
    db $10
    ld de, $0e11
    ld c, $0e
    ld c, $0b
    ld [de], a
    inc de
    inc de
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    inc d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $15
    ld bc, $0100
    nop
    ld bc, $0100
    inc d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $15
    ld bc, $0100
    nop
    ld bc, $0100
    inc d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $15
    ld bc, $0100
    nop
    ld bc, $0100
    ld d, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    nop
    ld bc, $0100
    dec bc
    jr jr_004_4e56

    add hl, de
    ld c, $0e
    ld c, $0e
    dec bc
    jr jr_004_4e5e

    ld a, [de]
    nop
    ld bc, $0100
    dec de
    inc de

jr_004_4e56:
    inc de
    inc e
    ld c, $0e
    ld c, $0e
    dec bc
    ld [de], a

jr_004_4e5e:
    dec e
    ld e, $00
    ld bc, $0100
    dec bc
    jr jr_004_4e76

    add hl, de
    ld c, $0e
    ld c, $0e
    dec bc
    jr @+$15

    inc de
    nop
    ld bc, $0100
    dec bc
    rra

jr_004_4e76:
    ld d, $01
    ld c, $0e
    ld c, $0e
    dec bc
    ld de, $2020
    dec d
    ld bc, $0101
    ld bc, $0001
    ld bc, $0e15
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec d
    ld bc, $0101
    ld bc, $0001
    ld bc, $0e15
    ld c, $0e
    ld c, $0e
    ld c, $21
    dec d
    ld bc, $0101
    ld bc, $0001
    ld bc, $0e16
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $2020
    ld [hl+], a
    jr nz, jr_004_4edd

    jr nz, jr_004_4edf

    ld c, $00
    ld bc, $0100
    dec bc
    ld de, $2311
    nop
    ld bc, $0100
    dec de
    inc de
    inc de
    inc de
    nop
    ld bc, $0100
    dec bc
    ld de, $2311
    ld c, $0e
    ld c, $0e
    dec bc

jr_004_4edd:
    inc h
    inc h

jr_004_4edf:
    inc hl
    nop
    ld bc, $0100
    dec bc
    rra
    inc de
    inc de
    ld c, $0e
    ld c, $0e
    dec bc
    rra
    rra
    rra
    nop
    ld bc, $0100
    dec bc
    rra
    rra
    rra
    ld c, $0e
    ld c, $0e
    dec h
    ld h, $27
    daa
    ld de, $2811
    ld de, $1123
    add hl, hl
    ld bc, $1113
    jr z, jr_004_4f1d

    inc hl
    ld de, $0e29
    ld de, $2811
    ld de, $1123
    ld de, $2411
    inc h
    jr z, @+$26

    inc hl

jr_004_4f1d:
    inc h
    ld a, [hl+]
    ld bc, $1313
    inc de
    rra
    rra
    rra
    add hl, hl
    ld bc, $1f1f
    rra
    rra
    inc de
    rra
    add hl, hl
    ld c, $1f
    rra
    rra
    rra
    rra
    rra
    add hl, hl
    ld bc, $2b27
    daa
    daa
    daa
    daa
    inc l
    ld c, $2d
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    jr nc, jr_004_4f92

    jr nc, jr_004_4f94

    jr nc, jr_004_4f96

    jr nc, jr_004_4f98

    jr nc, jr_004_4f9a

    jr nc, jr_004_4f9c

    jr nc, jr_004_4f9e

    jr nc, jr_004_4fa0

    ld sp, $3231
    inc sp
    inc [hl]
    ld sp, $3434
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $2d
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_004_4f92:
    ld l, $2e

jr_004_4f94:
    ld l, $2e

jr_004_4f96:
    ld l, $2e

jr_004_4f98:
    cpl
    cpl

jr_004_4f9a:
    cpl
    cpl

jr_004_4f9c:
    cpl
    cpl

jr_004_4f9e:
    cpl
    cpl

jr_004_4fa0:
    jr nc, jr_004_4fd2

    jr nc, jr_004_4fd4

    jr nc, jr_004_4fd6

    jr nc, jr_004_4fd8

    jr nc, jr_004_4fda

    jr nc, jr_004_4fdc

    jr nc, jr_004_4fde

    jr nc, jr_004_4fe0

    scf
    ld sp, $3133
    inc sp
    ld sp, $3331
    ld [hl], $36
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    jr c, jr_004_4ff7

    ld l, $2e
    ld l, $2e
    ld l, $2e
    add hl, sp
    ld l, $2e

jr_004_4fd2:
    ld l, $2e

jr_004_4fd4:
    ld l, $2e

jr_004_4fd6:
    ld l, $39

jr_004_4fd8:
    cpl
    cpl

jr_004_4fda:
    cpl
    cpl

jr_004_4fdc:
    cpl
    cpl

jr_004_4fde:
    cpl
    ld a, [hl-]

jr_004_4fe0:
    jr nc, jr_004_5012

    jr nc, jr_004_5014

    jr nc, jr_004_5016

    jr nc, jr_004_5023

    jr nc, jr_004_501a

    jr nc, jr_004_501c

    jr nc, jr_004_501e

    jr nc, jr_004_502c

    ld sp, $3137
    dec a
    ld sp, $3134

jr_004_4ff7:
    scf
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    jr c, jr_004_503a

    jr c, jr_004_503c

    jr c, jr_004_503e

    jr c, jr_004_5040

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_004_5012:
    add hl, sp
    add hl, sp

jr_004_5014:
    add hl, sp
    add hl, sp

jr_004_5016:
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]

jr_004_501a:
    ld a, [hl-]
    ld a, [hl-]

jr_004_501c:
    ld a, [hl-]
    ld a, [hl-]

jr_004_501e:
    ld a, [hl-]
    ld a, $3b
    dec sp
    dec sp

jr_004_5023:
    dec sp
    dec sp
    dec sp
    ccf
    ld b, b
    inc a
    ld b, c
    ld b, d
    ld b, e

jr_004_502c:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld sp, $4948
    ld c, d
    ld c, e
    ld c, d
    ld c, d
    ld c, h
    dec [hl]
    ld c, l

jr_004_503a:
    ld c, [hl]
    ld c, a

jr_004_503c:
    ld d, b
    ld d, c

jr_004_503e:
    ld d, d
    ld d, e

jr_004_5040:
    jr c, jr_004_507a

    jr c, jr_004_507c

    jr c, jr_004_507e

    jr c, jr_004_5080

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, l
    ccf
    dec sp
    dec sp
    ld d, [hl]
    dec sp
    ld d, a
    dec sp
    dec sp
    ld d, [hl]
    dec sp
    dec sp
    dec sp
    dec sp
    ld e, b
    dec sp
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_004_507a:
    ld h, e
    ld h, h

jr_004_507c:
    ld h, h
    ld h, l

jr_004_507e:
    ld e, h
    ld h, [hl]

jr_004_5080:
    jr c, jr_004_50ba

    jr c, jr_004_50bc

    jr c, jr_004_50be

    jr c, jr_004_50c0

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ld h, a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, l
    dec sp
    ld e, a
    dec sp
    ccf
    dec sp
    dec sp
    dec sp
    ld d, [hl]
    dec sp
    ld e, a
    dec sp
    ld d, [hl]
    dec sp

jr_004_50ae:
    ld l, b
    dec sp
    ld l, c
    ld l, d
    ld l, e
    ld l, c
    ld e, c
    ld e, d
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_004_50ba:
    ld l, a
    ld l, a

jr_004_50bc:
    ld [hl], b
    ld [hl], b

jr_004_50be:
    ld [hl], b
    ld [hl], c

jr_004_50c0:
    jr c, jr_004_50fa

    jr c, jr_004_50fc

    ld [hl], d
    dec l
    dec l
    dec l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [hl], e
    ld l, $2e
    ld l, $39
    add hl, sp
    add hl, sp
    add hl, sp
    ld [hl], e
    ld l, $2e
    ld l, $3a
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], h
    ld [hl], l
    cpl
    halt
    cpl
    ld l, b
    dec sp
    dec sp
    ld [hl], a
    ld a, b
    jr nc, @+$32

    ld a, c
    ld b, b
    dec sp
    dec sp
    ld a, d
    ld a, e
    jr nc, jr_004_514b

    ld a, h
    ld e, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld sp, $6180
    add c
    ld e, h
    add d

jr_004_50fa:
    ld [hl], c
    add e

jr_004_50fc:
    dec [hl]
    ld [hl], c
    ld h, c
    ld a, h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    ld l, $85
    add [hl]
    ld l, $2e
    add a
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    cpl
    cpl
    cpl
    adc b
    cpl
    adc c
    adc d
    adc e
    jr nc, jr_004_50ae

    jr nc, jr_004_5154

    adc l
    adc [hl]
    adc a
    adc a
    jr nc, jr_004_515a

    jr nc, jr_004_515c

    jr nc, jr_004_50bc

    sub b
    sub b
    ld sp, $9131
    sub d
    sub d
    adc [hl]
    sub e
    sub e
    sub h
    sub l
    sub l
    sub h
    sub l
    sub [hl]
    sub a
    sub l
    dec [hl]
    sbc b
    dec [hl]
    dec [hl]
    sbc b
    dec [hl]
    sbc c
    ld [hl], $9a
    dec [hl]
    sbc e

jr_004_514b:
    sbc h
    dec [hl]
    sbc d
    dec [hl]
    ld c, c
    sbc b
    sbc l
    sbc l
    sbc b

jr_004_5154:
    sbc b
    sbc l
    sbc l
    ld h, a
    sbc [hl]
    sbc a

jr_004_515a:
    and b
    sbc [hl]

jr_004_515c:
    sbc [hl]
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    and [hl]
    xor b
    xor c
    xor d
    xor d
    xor d
    xor d
    xor d
    and l
    sbc c
    xor e
    xor h
    xor l
    xor [hl]
    xor l
    xor [hl]
    xor d
    ld c, c
    ld [hl], $af
    sbc c
    ld c, c
    ld [hl], $b0
    ld [hl], $36
    ld [hl], $36
    ld [hl], $ab
    dec [hl]
    sbc e
    sbc h
    sbc e
    sbc b
    dec [hl]
    ld [hl], $36
    sbc l
    sbc l
    sbc b
    sbc b
    sbc b
    sbc l
    ld h, a
    ld h, a
    or c
    db $10
    sbc [hl]
    sbc [hl]
    sbc [hl]
    or d
    and e
    and l
    xor d
    xor d
    and [hl]
    xor d
    ld [hl], $a6
    xor d
    xor d
    xor d
    and l
    xor d
    xor d
    or e
    ld e, a
    or h
    xor h
    xor e
    or b
    or l
    xor d
    or e
    or [hl]
    xor a
    xor a
    ld [hl], $99
    or l
    or h
    or a
    or [hl]
    ld c, c
    ld [hl], $36
    ld [hl], $b8
    xor a
    xor a
    xor a
    sbc d
    sbc h
    sbc e
    dec [hl]
    sbc h
    sbc e

Jump_004_51c6:
    cp c
    sbc h
    sbc b
    sbc b

Jump_004_51ca:
    sbc b
    sbc l
    sbc b
    sbc d
    ld d, c
    sbc d
    sbc [hl]
    sbc [hl]
    sbc [hl]
    or d
    sbc [hl]
    sbc l
    cp d
    sbc l
    and h
    xor d
    and [hl]
    and h
    or c
    and b
    or d
    or d
    cp e
    and l
    cp h
    cp l
    cp [hl]
    cp [hl]
    cp a
    or d
    ret nz

    cp [hl]
    pop bc
    xor e
    sbc c
    jp nz, $aa36

    jp $3649


    ld [hl], $ab
    ld [hl], $99
    ld [hl], $c4
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $9b
    push bc
    add $c7
    ret z

    ret


    jp z, $98c9

    set 1, h
    call $c9ce
    adc $c9
    sbc l
    rst RST_08
    ld c, d
    adc $d0
    pop de
    ld c, d
    ld c, c
    or d
    ld c, d
    jp nc, Jump_004_51c6

    jp nz, Jump_004_4ad3

    or d
    ld c, d
    call nc, $d6d5
    rst RST_10
    ret c

    ld c, b
    reti


    ld c, d
    jp c, $dcdb

    db $db
    db $dd
    sbc $a6
    ld e, a
    rst RST_18
    call c, $dcd8
    ret c

    ld e, a
    ld e, h
    sbc c
    ld c, e
    sbc c
    ld [hl], $b0
    ldh [$ffe1], a
    ld h, e
    call $e3e2
    ld h, h
    db $e4
    ld h, c
    push hl
    jp z, $e3ce

    db $e3
    and $e6
    rst RST_20
    db $e3
    add sp, $51
    jp z, $989d

    sbc e
    jp z, Jump_004_51ca

    ld c, c
    db $e3
    or d
    db $e3
    adc $e3
    db $e3
    ld d, c
    jp hl


    ld c, c
    reti


    ld [$ebc9], a
    adc $de
    sbc $ec
    and [hl]
    db $e3
    adc $e3
    adc $5f
    call c, $dbd8
    jp hl


    ret


    jp z, $4bed

    jp nz, $dcee

    ld d, c
    adc $e3
    xor $49
    ldh [c], a
    rst RST_28
    ld [hl], b
    ld [hl], c
    ld d, c
    ld d, b
    ld h, [hl]
    ld [hl], b
    ld [hl], c
    ldh a, [rWY]
    xor $ce
    ld c, a
    adc $e7
    ld d, c
    pop af
    jp z, $cece

    db $eb
    adc $ce
    db $e3
    adc $e3
    ld c, a
    db $e3
    db $eb
    adc $ed
    jp z, $cac9

    jp z, $cac9

    db $ed
    adc $e3
    adc $e3
    ld [hl], $36
    ld [hl], $36
    ld d, c
    jp hl


    ret


    db $eb
    ld [hl], $36
    ld [hl], $36
    ld c, d
    ld d, c
    adc $e3
    ld [hl], $36
    ld [hl], $36
    ldh a, [c]
    ld [hl], b
    ld [hl], c
    di
    db $f4
    push af
    add c
    ld d, c
    pop af
    ld d, b
    ld c, c
    rst RST_20
    ldh a, [c]
    ld c, d
    or $50
    ld c, a
    db $e3
    db $eb
    adc $4f
    db $e3
    db $eb
    adc $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $f7
    ld hl, sp-$08
    ld hl, sp-$09
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [c]
    ld [hl], b
    ld [hl], c
    ld c, d
    ld sp, hl
    db $e3
    ld sp, hl
    ld c, a
    db $e3
    db $eb
    adc $4f
    db $e3
    db $eb
    adc $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $14
    jr @+$16

    jr jr_004_5359

    inc d
    inc d
    jr @+$06

    stop
    nop
    jr nc, jr_004_534e

jr_004_534e:
    inc [hl]
    jr nc, jr_004_5351

jr_004_5351:
    nop
    jr nc, jr_004_5354

jr_004_5354:
    nop
    nop
    jr nc, jr_004_5388

    nop

jr_004_5359:
    nop
    nop
    nop
    inc [hl]
    inc [hl]
    inc d
    jr jr_004_5395

    jr nc, jr_004_5377

    jr jr_004_5399

    jr nc, @+$2a

    jr z, jr_004_539d

    inc [hl]
    jr z, @+$2a

    inc b
    ld [$0814], sp
    jr z, @+$2a

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_004_5377:
    inc [hl]
    inc b
    db $10
    inc d
    jr @+$36

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_004_5388:
    ld e, h
    ld e, h
    inc [hl]
    ld e, b
    jr z, jr_004_53b6

    jr z, jr_004_53b8

    inc b
    db $10
    inc b
    jr jr_004_5399

jr_004_5395:
    jr jr_004_539b

    jr jr_004_53c1

jr_004_5399:
    jr z, jr_004_539f

jr_004_539b:
    jr jr_004_539d

jr_004_539d:
    nop
    nop

jr_004_539f:
    nop
    inc [hl]
    ld e, b
    inc [hl]
    ld e, b
    ld e, b
    inc [hl]
    ld e, b
    inc [hl]
    ld e, b
    inc [hl]
    ld e, b
    inc [hl]
    jr z, jr_004_53d6

    inc d
    ld [$3458], sp
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_004_53b6:
    inc [hl]
    inc [hl]

jr_004_53b8:
    ld e, h
    ld e, h
    ld e, b
    inc [hl]
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    inc b

jr_004_53c1:
    db $10
    ld b, b
    ld b, b
    inc b
    db $10
    inc d
    jr jr_004_53cd

    jr z, jr_004_540b

    jr z, jr_004_542d

jr_004_53cd:
    ld h, h
    ld h, b
    ld h, h
    ld e, h
    ld e, h
    ld l, b
    ld e, h
    jr z, jr_004_53fe

jr_004_53d6:
    inc d
    ld [$2828], sp
    jr z, jr_004_5404

    ld b, h
    ld b, h
    jr z, jr_004_5408

    ld c, h
    jr z, jr_004_542f

    jr z, jr_004_5431

    inc b
    ld c, h
    inc b
    inc b
    jr jr_004_5437

    inc b
    jr z, jr_004_5416

    jr z, jr_004_5418

    ld b, h
    inc b
    jr z, jr_004_53f8

    inc b
    inc b
    inc b
    inc b

jr_004_53f8:
    inc b
    inc b
    ld d, b
    ld d, h
    ld d, b
    ld d, h

jr_004_53fe:
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_004_5404:
    ld c, h
    ld h, b
    inc h
    inc h

jr_004_5408:
    ld h, b
    ld c, h
    inc h

jr_004_540b:
    inc h
    ld h, h
    ld h, h
    inc h
    inc h
    ld c, h
    ld h, h
    inc h
    inc h
    inc h
    inc h

jr_004_5416:
    inc h
    inc h

jr_004_5418:
    ld [$0808], sp
    ld [$4c64], sp
    inc h
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld d, b
    ld d, h
    ld d, b
    ld d, h
    inc c
    inc c
    inc c

jr_004_542d:
    inc c
    inc c

jr_004_542f:
    inc c
    inc c

jr_004_5431:
    inc c
    inc c
    inc c
    ld h, b
    ld h, h
    inc h

jr_004_5437:
    inc h
    ld d, b
    ld d, h
    inc c
    ld e, b
    inc c
    inc c
    ld e, b
    inc c
    inc c
    ld [$0c0c], sp
    ld e, b
    ld e, b
    inc l
    ld [$5858], sp
    ld [$5814], sp
    ld e, b
    ld [$5808], sp
    ld e, b
    ld c, b
    ld [$5858], sp
    inc d
    inc l
    ld [$080c], sp
    ld b, h
    inc c
    inc c
    ld b, h
    ld b, h
    inc l
    ld c, b
    ld [$142c], sp
    inc d
    inc d
    ld [$1408], sp
    inc d
    ld [$0808], sp
    ld [$1414], sp
    inc l
    inc d
    inc l
    ld [$2408], sp
    inc h
    ld [$2c14], sp
    inc d
    ld c, b
    inc d
    inc d
    inc d
    inc d
    ld [$1414], sp
    inc d
    ld [$1408], sp
    inc d
    inc l
    ld [$142c], sp
    inc l
    inc d
    ld [$5450], sp
    ld e, b
    inc c
    inc c
    inc c
    ld [$080c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$1010], sp
    ld c, h
    ld c, h
    ld b, h
    ld b, h
    ld h, b
    ld c, h
    ld b, h
    ld b, h
    ld h, h
    ld e, b
    ld b, h
    ld [$4444], sp
    inc l
    inc l
    ld c, h
    ld h, b
    inc h
    inc h
    ld c, h
    ld h, h
    inc h
    inc h
    db $10
    db $10
    db $10
    db $10
    ld h, h
    ld c, h
    nop
    nop
    inc l
    inc l
    ld [$0814], sp
    inc d
    ld [$1414], sp
    ld [$2c14], sp
    inc l
    ld [$4808], sp
    ld b, h
    ld b, h
    inc l
    inc d
    ld [$482c], sp
    ld [$0808], sp
    ld b, b
    ld b, b
    inc c
    inc c
    inc c
    ld e, b
    ld h, h
    ld h, h
    inc h

Jump_004_54e7:
    inc h
    ld h, b
    ld c, h
    inc h
    inc h
    ld [$2408], sp
    inc h
    ld h, h
    ld [$2c44], sp
    ld h, h
    ld h, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc d
    inc d
    inc h
    inc h
    ld b, h
    ld b, h
    inc d
    inc l
    ld [$2c14], sp
    inc d
    ld [$0448], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    ld d, b
    ld d, h
    ld d, b
    db $10
    inc c
    db $10
    db $10
    ld d, h
    db $10
    inc c
    ld d, b
    ld d, h
    ld [$0c08], sp
    db $10
    inc c
    db $10
    db $10
    inc c
    db $10
    inc c
    inc c
    inc c
    ld e, b
    ld e, b
    inc c
    ld [$0c0c], sp
    ld [$0c0c], sp
    inc c
    inc d
    inc l
    ld [$6048], sp
    ld b, h
    inc h
    inc l
    ld b, h
    ld h, h
    inc l
    ld b, h
    ld h, h
    ld h, h
    ld b, h
    ld b, h
    ld h, h
    ld h, h
    ld b, h
    ld b, h
    ld c, b
    ld [$0814], sp
    ld b, h
    inc l
    inc d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc b
    inc b
    inc b
    inc b
    ld d, b
    ld [$0404], sp
    ld [$0450], sp
    inc b
    ld [$5008], sp
    ld [$0c0c], sp
    ld d, b
    ld d, h
    inc c
    ld l, b
    ld d, b
    ld d, h
    ld l, b
    ld l, b
    ld [$6850], sp
    ld l, b
    ld e, b
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    ld [$680c], sp
    inc c
    ld l, b
    ld l, b
    ld l, b
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld h, h
    ld h, h
    inc h
    ld [$6464], sp
    jr c, jr_004_55c4

    ld l, h
    ld l, h
    ld l, b
    ld l, b
    jr c, @+$26

    ld b, h
    ld b, h
    jr c, jr_004_55ce

    ld b, h
    ld b, h
    inc c
    jr c, jr_004_55df

    ld b, h
    ld [$0838], sp
    ld b, h
    inc h
    inc h
    jr nc, @+$26

    inc d
    inc d
    ld [$3008], sp
    inc h
    inc h
    inc h
    inc h
    jr nc, @+$26

    inc h
    inc h
    inc h
    inc h
    jr nc, @+$26

    jr nc, @+$32

    inc [hl]
    inc [hl]
    jr nc, jr_004_55ef

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld e, h
    inc [hl]
    inc [hl]
    ld e, h
    inc [hl]

jr_004_55c4:
    inc [hl]
    inc [hl]
    inc a
    jr c, jr_004_55fd

    inc a
    jr c, @+$3a

    jr c, jr_004_55f2

jr_004_55ce:
    jr c, jr_004_5608

    ld e, h
    ld e, h
    jr c, jr_004_560c

    jr c, jr_004_560e

    jr z, jr_004_5610

    jr c, @+$3e

    jr c, jr_004_5614

    ld e, h
    jr c, jr_004_5617

jr_004_55df:
    jr c, @+$0a

    nop
    ld [$0008], sp
    ld [$0808], sp
    jr c, @+$3a

    jr c, @+$3a

    ld [$1408], sp

jr_004_55ef:
    ld [$3838], sp

jr_004_55f2:
    jr c, @+$26

    jr c, jr_004_5666

    jr c, @+$7a

    ld [hl], h
    jr c, jr_004_5677

    jr c, jr_004_5641

jr_004_55fd:
    ld b, h
    ld [$0008], sp
    nop
    ld [$3408], sp
    inc [hl]
    jr c, @+$3e

jr_004_5608:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_004_560c:
    jr c, jr_004_561e

jr_004_560e:
    jr c, jr_004_5620

jr_004_5610:
    ld [hl], b
    ld [hl], h
    ld a, b
    ld a, h

jr_004_5614:
    ld [$0838], sp

jr_004_5617:
    jr c, jr_004_5629

    db $10
    jr c, jr_004_5654

    jr c, @+$12

jr_004_561e:
    jr c, @+$3a

jr_004_5620:
    ld [$0844], sp
    ld [$2424], sp
    ld [$082c], sp

jr_004_5629:
    ld [$3434], sp
    db $10
    jr c, @+$12

    jr c, jr_004_5669

    jr c, jr_004_566b

    ld [$3838], sp
    nop
    nop
    jr c, jr_004_5672

    ld [$3408], sp
    inc [hl]
    ld [$1008], sp

jr_004_5641:
    jr c, @+$12

    ld [$0838], sp
    ld [$1408], sp
    ld [$0808], sp
    db $10
    ld [$0838], sp
    ld b, h
    ld [$0808], sp

jr_004_5654:
    inc h
    inc h
    inc l
    ld [$0848], sp
    ld [$2c14], sp
    inc d
    ld c, b
    inc d
    inc d
    inc l
    inc d
    inc d
    inc d
    inc d

jr_004_5666:
    inc d
    ld c, b
    inc l

jr_004_5669:
    ld c, b
    inc d

jr_004_566b:
    inc l
    ld [$002c], sp
    ld [$082c], sp

jr_004_5672:
    inc d
    ld c, b
    inc l
    inc l
    inc d

jr_004_5677:
    ld c, b
    inc d
    inc d
    inc d
    inc d
    nop
    inc d
    ld [$0808], sp
    inc d
    ld c, b
    inc d
    ld [$2c14], sp
    ld [$1448], sp
    inc d
    ld [$0808], sp
    inc a
    inc a
    ld [$342c], sp
    inc [hl]
    inc d
    ld [$203c], sp
    inc d
    ld [$2424], sp
    ld [$2448], sp
    jr nz, jr_004_56c1

    jr nz, jr_004_56c7

    jr nz, @+$3e

    inc [hl]
    jr c, jr_004_56dc

    inc [hl]
    inc a
    inc [hl]
    jr c, jr_004_56d1

    jr nz, @+$26

    inc h
    inc h
    jr nz, @+$2a

    inc h
    inc h
    inc h
    inc h
    jr nz, @+$2e

    inc l
    ld b, b
    ld b, b
    inc a
    inc h
    jr c, jr_004_56f8

    inc h

jr_004_56c1:
    inc h
    ld [$1014], sp
    db $10
    inc h

jr_004_56c7:
    jr nz, jr_004_56f5

    inc l
    inc d
    ld [$1414], sp
    ld c, b
    inc d
    inc l

jr_004_56d1:
    inc d
    ld [$0814], sp
    inc d
    ld c, b
    ld c, b
    inc d
    ld [$1448], sp

jr_004_56dc:
    inc d
    ld [$4814], sp
    ld [$4814], sp
    ld [$1414], sp
    ld [$0048], sp
    inc d
    nop
    ld [$4814], sp
    inc d
    inc d
    inc d
    ld c, b
    ld [$0808], sp

jr_004_56f5:
    inc d
    inc d
    ld c, b

jr_004_56f8:
    ld [$1414], sp
    inc d
    inc d
    inc l
    ld c, b
    inc d
    inc l
    inc d
    inc d
    ld [$4808], sp
    inc d
    inc d
    inc l
    inc l
    inc d
    inc d
    inc l
    inc l
    inc l
    inc d
    inc h
    inc h
    ld b, h
    ld b, h
    inc l
    inc d
    ld c, b
    ld [$4808], sp
    inc d
    ld c, b
    inc d
    inc l
    ld [$4808], sp
    ld [$1414], sp
    inc l
    inc d
    inc d
    inc d
    ld [$0808], sp
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
    ld de, $1111
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1100
    nop
    ld de, $1100
    ld de, $1111
    nop
    nop
    nop
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0d77
    db $10
    ld de, $0071
    nop
    nop
    nop
    db $10
    ld de, $1114
    ld [hl], a
    ld de, $7171
    ld [hl], c
    ld [hl], c
    ld de, $4471
    ld de, $1171
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0011
    nop
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $00
    nop
    nop
    xor $ee
    xor $ee
    pop hl
    xor $ee
    ld de, $11ee
    xor $11
    xor $11
    xor $11
    ld e, $17
    xor $77
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0011
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    xor $ee
    xor $1e
    ld e, $ee
    xor $11
    ld de, $eedd
    ld [hl], a
    xor $77
    xor $71
    ld [hl], a
    ld de, $eeee
    xor $ee
    db $dd
    db $dd
    xor $00
    ld de, $1111
    ld de, $1111
    ld de, $7711
    ld de, $1111
    ld de, $ee77
    xor $ee
    xor $ee
    xor $11
    xor $e1
    ld [hl], c
    xor $77
    ld [hl], a
    ld de, $77ee
    ld de, $1111
    ld de, $e0e0
    ldh [$ffe0], a
    db $ed
    db $ed
    ret nc

    ret nc

    nop
    ld de, $eded
    ret nc

    ret nc

    nop
    nop
    pop hl
    ldh [rNR10], a
    nop
    ld de, $e711
    pop hl
    ld a, [hl]
    rla
    ldh [rPCM34], a
    nop
    ld [hl], a
    ld de, $7111
    ld de, $1111
    ld de, $0000
    ld bc, $1000
    nop
    ld de, $0001
    nop
    nop
    nop
    nop
    stop
    nop
    stop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    db $10
    rla
    nop
    nop
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $1101
    nop
    nop
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld de, $1100
    nop
    nop
    nop
    nop
    dec c
    dec c
    nop
    nop
    db $10
    db $10
    db $dd
    nop
    dec c
    nop
    rla
    ld de, $1100
    ld de, $d000
    ret nc

    nop
    ld bc, $0000
    nop
    ld de, $1100
    ret nc

    pop de
    ld bc, $1111
    ld de, $01d1
    ld [hl], c
    ld de, $1100
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0111
    ld de, $1111
    ld de, $1111
    ld bc, $1111
    ld de, $1111
    ld de, $1111
    nop
    ld de, $1100
    nop
    ld de, $1100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0077
    nop
    nop
    ld de, $00dd
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0101
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    nop
    ld [hl], a
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    nop
    nop
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
    inc b
    nop
    nop
    nop
    ld [$0009], sp
    dec bc
    inc c
    nop
    nop
    nop
    db $10
    ld de, $1300
    inc d
    nop
    nop
    nop
    jr jr_004_5973

    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_004_5983

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$33

    ld [hl-], a

jr_004_5973:
    nop
    nop
    nop
    nop
    nop
    jr c, jr_004_59b3

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5983:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc bc
    inc bc
    dec b
    ld bc, $0606
    ld b, $06
    rlca
    ld [$0808], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $120a
    add hl, bc
    inc de
    inc c
    inc d
    inc de
    inc de
    inc de
    inc de
    inc de
    add hl, bc
    inc de
    dec d
    inc de
    inc de
    ld a, [bc]

jr_004_59b3:
    inc de
    inc de
    inc de
    add hl, bc
    dec d
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [bc]
    inc de
    inc de
    ld d, $13
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [bc], a
    ld d, $13
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [$0a16], sp
    add hl, bc
    inc de
    ld a, [bc]
    inc de
    inc de
    rla
    jr jr_004_59f4

    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    dec de
    inc e
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    dec e
    dec de
    inc e
    inc de
    ld a, [bc]
    inc de
    inc de
    inc de
    ld e, $1f
    jr nz, jr_004_5a10

jr_004_59f4:
    add hl, bc
    inc de
    inc de
    inc de
    ld hl, $2217
    inc e
    ld a, [bc]
    inc de
    inc de
    inc de
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5a10:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $23
    inc h
    nop
    nop
    dec h
    ld h, $27
    ld d, $13
    inc de
    jr z, jr_004_5a24

jr_004_5a24:
    add hl, hl
    nop
    ld a, [hl+]
    add hl, bc
    inc de
    inc de
    jr z, @+$2d

    inc l
    dec l
    ld d, $13
    inc de
    jr z, @+$22

    jr nz, jr_004_5a55

    jr nz, jr_004_5a4d

    inc de
    inc de
    jr z, jr_004_5a5b

    jr nz, jr_004_5a6b

    jr nz, jr_004_5a6e

    add hl, bc
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5a4d:
    inc de
    inc de
    inc de
    db $10
    ld de, $1110
    db $10

jr_004_5a55:
    ld de, $1110
    inc de
    jr nc, jr_004_5a8c

jr_004_5a5b:
    ld sp, $3232
    ld [hl-], a
    ld [hl-], a
    db $10
    jr z, jr_004_5a63

jr_004_5a63:
    add hl, hl
    nop
    inc sp
    inc sp
    inc sp
    inc de
    jr z, jr_004_5a96

jr_004_5a6b:
    inc l
    dec l
    inc [hl]

jr_004_5a6e:
    inc de
    inc de
    db $10
    dec [hl]
    ld [hl], $20
    jr nz, jr_004_5aad

    ld d, $13
    ld sp, $3131
    inc hl
    inc hl
    jr c, jr_004_5a92

    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [bc]
    inc de
    dec d
    inc de
    inc de
    inc de
    inc de

jr_004_5a8c:
    inc de
    ld a, [bc]
    add hl, sp
    ld a, [hl-]
    inc de
    inc de

jr_004_5a92:
    inc de
    inc de
    ld a, [bc]
    dec sp

jr_004_5a96:
    dec d
    jr nz, jr_004_5aac

    inc de
    inc de
    inc de
    inc de
    dec d
    jr nz, jr_004_5adc

    inc de
    inc de
    inc de
    add hl, bc
    ld a, [bc]
    dec d
    ld a, [de]
    rla
    inc de
    inc de
    inc de
    inc de

jr_004_5aac:
    add hl, bc

jr_004_5aad:
    dec d
    ld a, [de]
    rla
    inc de
    inc de
    inc de
    inc de
    ld a, [bc]
    dec a
    ld a, [de]
    rla
    inc de
    inc de
    inc de
    add hl, bc
    inc de
    dec d
    ld a, [de]
    rla
    ld a, [de]
    rla
    ld a, $1c
    dec sp
    inc de
    inc de
    inc de
    ccf
    rla
    jr nz, jr_004_5adf

    inc de
    inc de
    inc de
    inc de
    rla
    ld [$4140], sp
    inc de
    inc de
    inc de
    inc de
    rla
    ld b, d
    ld b, e
    ld a, [bc]

jr_004_5adc:
    inc de
    inc de
    inc de

jr_004_5adf:
    inc de
    rla
    ld b, d
    ld b, e
    inc de
    inc de
    inc de
    inc de
    inc de
    rla
    ld b, d
    ld b, e
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    rla
    ld b, d
    ld b, e
    inc de
    inc de
    inc de
    inc de
    inc de
    rla
    ld b, d
    ld b, e
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    jr z, @+$46

    jr nz, @+$19

    ld l, $20
    jr nz, jr_004_5b1e

    jr z, @+$46

    jr nz, jr_004_5b2c

    ld l, $45
    inc hl
    ld d, $28
    ld b, h
    jr nz, jr_004_5b59

    ld l, $46
    ld b, [hl]
    ld d, $28
    ld b, h
    jr nz, jr_004_5b3c

    ld l, $47

jr_004_5b1e:
    ld b, a
    ld d, $28
    ld b, h
    jr nz, jr_004_5b44

    ld l, $2a
    ld a, [hl+]
    ld d, $28
    ld b, h
    jr nz, @+$22

jr_004_5b2c:
    ld [$1608], sp
    ld d, $28
    jr nz, @+$22

    ld b, [hl]
    ld b, [hl]
    ld c, b
    jr nz, jr_004_5b66

    jr z, jr_004_5b82

    ld c, c
    ld c, d

jr_004_5b3c:
    ld a, [hl+]
    ld b, [hl]
    ld b, [hl]
    ld l, $46
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]

jr_004_5b44:
    ld b, [hl]
    ld d, $13
    inc de
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    jr nz, jr_004_5b6d

    ld sp, $1316
    inc de
    inc de
    jr z, jr_004_5b74

    jr nz, jr_004_5b9c

    ld d, $13
    inc de

jr_004_5b59:
    inc de
    inc de
    ld c, e
    jr nz, @+$22

    ld d, $13
    inc de
    inc de
    jr z, jr_004_5b9b

    jr nz, jr_004_5b86

jr_004_5b66:
    ld d, $13
    inc de
    inc de
    jr z, jr_004_5bb2

    ld b, [hl]

jr_004_5b6d:
    ld c, h
    inc de
    inc de
    inc de
    inc de
    jr z, jr_004_5b94

jr_004_5b74:
    jr nz, jr_004_5ba5

    ld c, l
    inc de
    inc de
    inc de
    inc de
    jr z, jr_004_5b9d

    ld [$132e], sp
    inc de
    inc de

jr_004_5b82:
    inc de
    inc de
    ld a, [bc]
    dec d

jr_004_5b86:
    ld a, [de]
    rla
    inc de
    inc de
    inc de
    inc de
    ld c, [hl]
    ld c, a
    ld a, [de]
    rla
    inc de
    inc de
    inc de
    ld a, [bc]

jr_004_5b94:
    dec d
    ld d, b
    rla
    rla
    inc de
    inc de
    inc de

jr_004_5b9b:
    inc de

jr_004_5b9c:
    dec d

jr_004_5b9d:
    dec e
    rrca
    rrca
    inc de
    inc de
    inc de
    add hl, bc
    dec a

jr_004_5ba5:
    jr nz, jr_004_5bf8

    ld d, d
    inc de
    inc de
    inc de
    inc de
    dec a
    jr nz, jr_004_5be9

    ld d, e
    inc de
    inc de

jr_004_5bb2:
    inc de
    ld a, [bc]
    dec d
    jr nz, jr_004_5bf3

    inc a
    inc de
    inc de
    inc de
    inc de
    dec d
    ld d, b
    rla
    rla
    ld d, h
    ld b, d
    ld b, e
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    dec de
    inc e
    inc de
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    ld a, $55
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, d
    ld b, e
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, d
    ld d, [hl]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, d

jr_004_5be9:
    ld d, a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, d
    ld d, [hl]
    inc de

jr_004_5bf3:
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5bf8:
    ld b, d
    ld d, a
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    inc de
    jr z, @+$0a

    ld [$2858], sp
    ld b, h
    jr nz, jr_004_5c10

    inc de
    jr z, jr_004_5c2b

    ld e, c
    jr z, jr_004_5c52

    inc hl
    ld c, h

jr_004_5c10:
    jr z, jr_004_5c32

    jr nz, jr_004_5c6d

    jr z, jr_004_5c36

    ld e, d
    ld d, $28
    ld e, e
    ld e, h
    ld e, l
    jr z, @+$25

    ld b, $5e
    inc de
    ld e, a
    ld a, [hl+]
    ld b, c
    jr z, @+$48

    ld h, b
    ld h, c
    inc de
    inc de
    inc de

jr_004_5c2b:
    inc de
    jr z, @+$22

    jr c, jr_004_5c92

    inc de
    inc de

jr_004_5c32:
    inc de
    inc de
    jr z, jr_004_5c60

jr_004_5c36:
    inc de
    dec [hl]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [$0808], sp
    ld h, e
    ld b, h
    jr nz, jr_004_5c75

    inc de
    ld c, h
    ld b, a
    ld b, a
    ld h, h
    ld b, h
    jr nz, jr_004_5c7d

    inc de
    ld h, l
    ld a, [hl+]

jr_004_5c52:
    ld a, [hl+]
    jr z, jr_004_5c99

    ld b, [hl]
    ld l, $13
    ld h, [hl]
    scf
    scf
    ld b, [hl]
    ld b, [hl]
    jr nz, jr_004_5c8d

    inc de

jr_004_5c60:
    ld b, [hl]
    jr nz, jr_004_5c83

    ld h, a
    ld l, b
    jr nz, jr_004_5c95

    inc de
    ld b, a
    ld b, a
    ld b, a
    ld d, $13

jr_004_5c6d:
    inc de
    inc de
    inc de
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc de
    inc de

jr_004_5c75:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5c7d:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5c83:
    inc de
    ld l, c
    rrca
    rla
    rla
    inc de
    inc de
    inc de
    inc de
    dec d

jr_004_5c8d:
    jr nz, jr_004_5c9e

    rla
    inc de
    inc de

jr_004_5c92:
    inc de
    inc de
    ld l, d

jr_004_5c95:
    ld a, [hl+]
    ld l, e
    rrca
    inc de

jr_004_5c99:
    inc de
    inc de
    inc de
    inc de
    ld a, [bc]

jr_004_5c9e:
    dec d
    ld e, $13
    inc de
    inc de
    inc de
    ld a, [bc]
    inc de
    ld a, [bc]
    dec d
    inc de
    inc de
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec d
    ld l, h
    jr z, jr_004_5d20

    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, [hl]
    ld l, h
    jr z, jr_004_5cca

    rla
    rla
    rrca
    rrca
    rrca
    ld b, d
    ld d, [hl]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, d
    ld b, e

jr_004_5cca:
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    inc de
    ld l, a
    ld [hl], b
    ld [hl], c
    inc de
    inc de
    inc de
    inc de
    inc de
    inc a
    jr nz, jr_004_5cf7

    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc e
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    dec de
    inc e
    ld a, [bc]
    add hl, bc
    inc de
    inc de
    inc de
    ccf
    ld a, $1c
    inc de
    inc de
    inc de
    inc de

jr_004_5cf7:
    inc de
    rrca
    jr nz, jr_004_5d17

    add hl, bc
    add hl, bc
    inc de
    inc de
    inc de
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d

jr_004_5d17:
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d

jr_004_5d20:
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    inc de
    ld [hl], h
    ld b, h
    rla
    rrca
    ld [hl], l
    halt
    halt
    ld a, [bc]
    jr z, jr_004_5e87

    rla
    jr nz, jr_004_5ec5

    ld a, b
    ld a, b
    inc de
    jr z, @+$11

    rla
    inc a
    ld a, c
    inc de
    ld a, [bc]
    inc de
    ld [hl], h
    ld b, h
    rrca
    rla
    ld a, c
    inc de
    inc de
    add hl, bc
    jr z, jr_004_5e83

    jr nz, jr_004_5e74

    rla
    rla
    rla
    inc de
    jr z, jr_004_5ee1

    halt
    halt
    rla
    rla
    rla
    inc de
    ld a, [bc]
    ld a, b
    ld a, b

jr_004_5e74:
    ld a, d
    rrca
    rla
    rla
    inc de
    add hl, bc
    add hl, bc
    inc de
    ld [hl], h
    ld b, h
    rla
    rrca
    halt
    halt
    ld a, e

jr_004_5e83:
    inc de
    inc de
    inc de
    inc de

jr_004_5e87:
    inc de
    ld a, b
    ld a, b
    ld b, c
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5e97:
    inc de
    ld a, [bc]
    ld a, [bc]
    inc de
    inc de

jr_004_5e9c:
    inc de
    inc de
    inc de
    inc de
    ld a, h
    inc de
    ld a, [bc]
    add hl, bc
    inc de
    inc de

jr_004_5ea6:
    inc de
    inc de
    ld a, h
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    add hl, bc
    inc de
    ld a, h
    ld a, l
    ld a, [bc]
    inc de
    add hl, bc
    inc de
    inc de
    inc de
    ld a, h
    inc de
    inc de
    ld a, [bc]
    inc de
    inc de
    inc de
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5ec5:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5ee1:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_004_5ee7:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [bc]
    inc de
    ld a, [bc]
    inc de
    inc de
    inc de
    inc de
    ld a, [hl]

jr_004_5ef9:
    ld a, a
    ld a, a
    add b
    ld a, [bc]
    inc de
    inc de

jr_004_5eff:
    inc de

jr_004_5f00:
    ld [hl], e
    ld [hl], e
    ld [hl], e
    add c
    add c
    add c
    add c
    add c
    add d
    add d
    add d
    add d
    add d
    add c
    add c
    add d
    jr nz, jr_004_5f32

    jr nz, jr_004_5f34

    jr nz, jr_004_5e97

    add c
    jr nz, jr_004_5e9c

    add e
    add h
    jr nz, jr_004_5f3d

    jr nz, @+$22

    jr nz, jr_004_5ea6

    add [hl]
    add a
    adc b
    jr nz, jr_004_5f46

    jr nz, jr_004_5f48

    add l
    add [hl]
    add l
    add l
    add h
    adc c
    adc c
    add h
    add l
    add [hl]

jr_004_5f32:
    add l
    add l

jr_004_5f34:
    adc d
    add c
    add c

jr_004_5f37:
    add a

jr_004_5f38:
    ld d, $28
    ld [$0808], sp

jr_004_5f3d:
    ld [$0808], sp
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    add c

jr_004_5f46:
    add c
    add c

jr_004_5f48:
    add d
    add d
    add d
    add d
    add d
    add d

jr_004_5f4e:
    add c
    add c
    jr nz, jr_004_5f72

    jr nz, @+$22

    jr nz, jr_004_5f76

    jr nz, jr_004_5f78

    adc e
    jr nz, jr_004_5ee7

    adc l
    adc [hl]
    adc a
    sub b
    sub c
    jr nz, jr_004_5f82

    ld e, c
    sub d
    jr nz, jr_004_5ef9

    jr nz, jr_004_5f88

    adc b
    jr nz, jr_004_5f8b

    jr nz, jr_004_5f00

    adc d
    adc b
    adc c

jr_004_5f70:
    adc d
    adc c

jr_004_5f72:
    adc c
    jr nz, jr_004_5eff

    add l

jr_004_5f76:
    add l
    sub h

jr_004_5f78:
    ld [$8181], sp
    jr nz, jr_004_5f85

jr_004_5f7d:
    ld [$0808], sp
    add c
    ld [hl], e

jr_004_5f82:
    ld [hl], e
    ld [hl], e
    ld [hl], e

jr_004_5f85:
    add c
    add c
    add c

jr_004_5f88:
    add d
    add d
    add d

jr_004_5f8b:
    add d
    add d
    add d
    add c
    add c
    jr nz, jr_004_5fb2

    jr nz, @+$22

    jr nz, @+$22

    add c
    add c
    jr nz, @+$22

    jr nz, @+$22

jr_004_5f9c:
    adc e
    jr nz, @-$7d

    add c
    jr nz, jr_004_5f37

    sub l
    jr nz, jr_004_5fc5

    jr nz, jr_004_5fc7

    jr nz, jr_004_5f32

    add c
    add c
    jr nz, jr_004_5fcd

    jr nz, jr_004_5f38

    adc c
    sub [hl]
    sub [hl]

jr_004_5fb2:
    sub [hl]
    jr nz, @-$75

    jr nz, jr_004_5f4e

jr_004_5fb7:
    sub a
    ld [$0808], sp
    jr nz, @-$7d

    jr nz, jr_004_5fc7

    ld [$7381], sp
    ld [hl], e
    ld [hl], e
    ld [hl], e

jr_004_5fc5:
    ld [hl], e
    ld [hl], e

jr_004_5fc7:
    ld [hl], e
    add d
    add d
    add d
    add d
    add d

jr_004_5fcd:
    add d
    add d
    add d
    jr nz, jr_004_5ff2

    jr nz, jr_004_5ff4

    jr nz, jr_004_5ff6

    sbc b
    sbc c
    adc e
    jr nz, jr_004_5ffb

    jr nz, @+$22

    jr nz, @-$64

    sbc e
    jr nz, jr_004_6002

    sub l
    sub l
    jr nz, jr_004_6006

    jr nz, jr_004_5f7d

    jr nz, jr_004_5f70

    add l
    add l
    jr nz, jr_004_600e

    sbc h
    sub a
    sbc l
    add [hl]

jr_004_5ff2:
    sbc l
    add l

jr_004_5ff4:
    jr nz, jr_004_6016

jr_004_5ff6:
    add l
    add l
    ld [$0808], sp

jr_004_5ffb:
    ld [$9e9e], sp
    ld [$8108], sp
    add c

jr_004_6002:
    add c
    add c
    add c
    ld [hl], e

jr_004_6006:
    ld [hl], e
    ld [hl], e
    add d
    add d
    add c
    add c
    add d
    add d

jr_004_600e:
    add d
    add d
    jr nz, @+$22

    add c
    add c
    jr nz, jr_004_6036

jr_004_6016:
    jr nz, jr_004_5fb7

    adc e

jr_004_6019:
    jr nz, jr_004_5f9c

    add c
    jr nz, @-$5e

    and b
    and c
    jr nz, jr_004_6042

    jr nz, jr_004_6044

    sbc a
    and d
    and e
    sbc l
    sbc l
    jr nz, @-$75

    adc c
    sbc l
    sbc h
    add l
    add l
    sbc h
    jr nz, @-$7d

    add c
    add l
    add l

jr_004_6036:
    sbc h
    add l
    ld [$0808], sp
    ld [$0808], sp
    ld d, $28
    inc de
    inc de

jr_004_6042:
    ld d, $13

jr_004_6044:
    jr z, jr_004_6082

    rla
    ld l, a
    inc de
    inc de
    inc de
    inc de
    jr z, jr_004_6065

    rla
    inc a
    inc de
    inc de
    jr z, @+$19

    rrca
    rla
    rrca
    ld [$0a13], sp
    jr z, jr_004_6064

    jr nz, jr_004_6066

    halt
    halt
    inc de

jr_004_6061:
    inc de
    jr z, jr_004_60c0

jr_004_6064:
    ld e, h

jr_004_6065:
    ld e, h

jr_004_6066:
    and h
    ld a, b
    inc de
    inc de
    jr z, @-$59

    and l
    and l
    ld d, $0a
    inc de
    ld a, [bc]
    jr z, jr_004_6019

    and l
    and l
    and [hl]
    jr nz, jr_004_608c

    add hl, bc
    jr z, @-$57

    and a
    xor b
    and l
    and l
    xor c
    ld a, [bc]

jr_004_6082:
    ld l, h
    inc de
    inc de
    add hl, bc
    jr z, @+$81

    ld a, h
    ld a, [bc]
    ld a, [bc]
    inc de

jr_004_608c:
    ld a, [bc]
    ld a, [bc]
    jr z, @+$0a

    ld a, h
    jr z, @-$54

    ld [$ab08], sp
    xor h
    jr nz, jr_004_60ac

    jr z, jr_004_60e2

    ld b, a
    xor l
    ld a, [bc]
    jr z, jr_004_60e7

    add hl, bc
    jr z, jr_004_60b6

    and l
    and l
    and l
    and l
    and l
    inc de

jr_004_60a9:
    inc de
    inc de
    and l

jr_004_60ac:
    and l
    xor [hl]
    and a
    and a
    jr nz, jr_004_6061

    and l
    and l
    or b
    or c

jr_004_60b6:
    or d
    or d
    and l
    and l
    or e
    and a
    or h
    or h
    or l
    or [hl]

jr_004_60c0:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, $0a
    ld a, [bc]
    xor d
    ld a, a
    ld a, a
    or a
    ld a, a
    ld a, a
    ld a, a
    ld d, $20
    ld [$7faa], sp
    or a
    ld a, a
    xor d
    ld d, $47
    ld h, h
    ld b, h
    ld a, a
    ld a, a
    cp b
    halt
    ld d, $a5
    cp c

jr_004_60e2:
    cp d
    cp b
    ld [$781c], sp

jr_004_60e7:
    inc de
    and a
    add c
    cp e
    ld [hl], l
    jr nz, jr_004_60a9

    ld d, $0a
    or d
    cp h
    cp b
    cp l
    cp [hl]
    ld a, a
    ld d, $09
    and l
    ld h, e
    cp [hl]

jr_004_60fb:
    cp a
    cp e
    ld a, a
    inc e
    ld a, [bc]
    inc de
    ld a, [bc]
    ret nz

    ld l, b
    ld l, b
    pop bc
    jp nz, Jump_000_13c2

    inc de
    ld a, [bc]
    inc de
    ld a, [bc]
    add hl, bc
    ld a, b
    ld a, b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec sp
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec sp
    inc de
    jp Jump_000_13c4


    push bc
    add hl, bc
    push bc
    ld a, [hl]
    inc de
    jr z, jr_004_613e

    ld [$c6c6], sp
    add $c6
    ld a, [hl]
    ld a, a
    ld a, a
    add $c6
    rst RST_00
    add $c6
    ld a, [hl]
    cp b
    ld a, a
    add $c6
    ret z

jr_004_613e:
    add $20
    jp nz, $c9c2

jr_004_6143:
    ld l, b
    or d
    jr nz, jr_004_60fb

    and a
    ld a, b
    jp z, $cb09

    jr z, jr_004_61c4

    halt
    call z, $cecd
    adc $ce
    adc $cf
    rst RST_08
    adc $7e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp b
    cp b
    cp b
    ld a, a
    ld a, a
    cp b
    ld [$16b8], sp
    ld l, b
    jr nz, jr_004_6172

    cp b
    ld d, e
    jr nz, jr_004_618e

    ld d, $c5
    jr nz, @+$3c

jr_004_6172:
    jr nz, jr_004_6194

    jr nz, jr_004_6196

    ret nc

    call nz, $2020
    jr nz, jr_004_619c

    jr nz, jr_004_619e

    ret nc

    add hl, bc
    and a
    add c
    jr nz, jr_004_6143

    cp b
    ld a, a
    ld d, $13
    ld l, b
    pop de
    ld a, [hl+]
    jp nc, Jump_004_7fbe

jr_004_618e:
    ld d, $0a
    adc $ce
    adc $d3

jr_004_6194:
    cp e
    ld a, a

jr_004_6196:
    inc e
    ld a, [bc]
    cp b
    ld a, a
    ld a, a
    ld a, a

jr_004_619c:
    cp b
    cp b

jr_004_619e:
    ld d, $09
    jr nz, jr_004_61aa

    cp b
    ld [$2020], sp
    call nc, $2a13
    ld a, [hl+]

jr_004_61aa:
    ld a, [bc]
    jr z, @+$2c

    ld a, [hl+]
    ld d, $09
    inc de
    ld a, [bc]
    add hl, bc
    ld a, [bc]

jr_004_61b4:
    inc de
    ld a, [bc]
    inc de
    inc de
    ld a, [bc]
    inc de
    ld a, [bc]
    inc de
    inc de
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    push de
    sub $08
    rst RST_10

jr_004_61c4:
    ld a, [hl+]
    inc de
    ld a, [hl+]
    ld a, [hl+]

jr_004_61c8:
    jp Jump_000_20d8


    reti


    jp $c409


    set 3, d
    db $db
    jr nz, @+$1e

    set 2, l
    jp $dc09


    db $dd
    ld [$ddde], sp
    db $dd
    sbc $df
    ld a, [hl]
    halt
    halt
    ldh [rPCM12], a
    jr nz, jr_004_61c8

    ld [$78c3], sp
    ld a, b
    jp z, $7678

    halt
    jr nz, jr_004_61b4

    call nz, $13c5
    jp Jump_004_7878


    halt
    inc de
    inc de
    inc de
    jp Jump_000_13c4


    push bc
    ld a, b
    ldh [c], a
    db $e3
    ld a, [hl+]
    push de
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl]
    sbc $13
    push de
    push bc
    inc de
    rrc c
    call c, $c3de
    call nz, $c4c3
    jp $dcc4


    sbc $df
    sbc $df
    rst RST_18
    ld d, $13
    call c, $e4de
    db $e4
    db $dd
    rst RST_18
    ld d, $c5
    push hl
    sbc $e6
    jr nz, @+$22

    db $dd
    sbc $dd
    db $dd
    sbc $20
    jr nz, @+$22

    jr nz, @+$0a

    jr nz, @+$22

    ldh [rNR13], a
    jp $c3c4


    call nz, $e7c3
    ld a, b
    rst RST_18
    rst RST_18
    rst RST_18
    rst RST_18
    rst RST_18
    rst RST_18
    rst RST_18
    rst RST_18
    add sp, -$17
    add sp, -$17
    add sp, -$17
    add sp, -$18
    inc hl
    ld [$ea23], a
    inc hl
    ld [$2323], a
    inc hl
    db $eb
    db $e4
    ld [$e408], sp
    db $ec
    inc hl
    ld b, [hl]
    db $ed
    ld b, [hl]
    db $ed
    ld b, [hl]
    xor $ef
    rst RST_28
    ldh a, [$fff1]
    jr nz, @-$0e

    ldh a, [$fff2]
    di
    di
    halt
    halt
    db $f4
    push af
    halt
    or $f7
    ld hl, sp-$36
    ld a, b
    jp z, $caf9

    ld a, b
    jp Jump_004_54e7


    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [hl], h
    ld a, h
    ld d, h
    ld [hl], b
    ld [hl], h
    ld a, b
    ld d, h
    ld d, h
    ld a, h
    ld [hl], h
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ld [hl], b
    ld d, h
    ld a, b
    ld a, h
    inc [hl]
    inc [hl]
    inc b
    db $10
    inc [hl]
    inc [hl]
    inc b
    ld [$3434], sp
    nop
    nop
    inc b
    db $10
    inc b
    db $10
    jr jr_004_62be

    inc d
    jr jr_004_62b1

    db $10
    db $10
    inc b
    inc d

jr_004_62b1:
    ld [$1004], sp
    jr nc, jr_004_62e6

    inc b
    db $10
    jr nc, @+$32

    inc b
    ld [$3030], sp

jr_004_62be:
    inc [hl]
    inc [hl]
    inc d
    jr @+$16

    jr jr_004_62d9

    inc d
    inc d
    jr jr_004_62e1

    db $10
    inc d
    jr jr_004_62d1

    db $10
    inc d
    jr jr_004_62d1

jr_004_62d1:
    nop
    jr nz, jr_004_631c

    jr nz, jr_004_631e

    jr nz, jr_004_6320

    inc b

jr_004_62d9:
    db $10
    inc b
    jr jr_004_630d

    jr nc, jr_004_630f

    jr nc, jr_004_62e5

jr_004_62e1:
    jr jr_004_6313

    nop
    inc b

jr_004_62e5:
    db $10

jr_004_62e6:
    ld c, h
    jr nz, jr_004_62e9

jr_004_62e9:
    jr nc, jr_004_62eb

jr_004_62eb:
    jr nc, jr_004_631d

    nop
    jr nc, jr_004_62f0

jr_004_62f0:
    ld c, h
    jr nz, jr_004_633f

    jr nz, jr_004_62f5

jr_004_62f5:
    jr nc, jr_004_62f7

jr_004_62f7:
    inc [hl]
    nop
    nop
    ld b, h
    nop
    jr nc, @+$26

    jr nc, jr_004_6330

    nop
    nop
    nop
    nop
    jr nz, jr_004_6306

jr_004_6306:
    stop
    inc h
    nop
    jr nc, jr_004_630c

jr_004_630c:
    ld e, h

jr_004_630d:
    ld e, h
    ld e, h

jr_004_630f:
    ld e, h
    ld e, h
    ld d, h
    ld e, h

jr_004_6313:
    ld e, h
    ld d, h
    inc b
    ld d, h
    ld d, h
    ld [$5454], sp
    ld d, h

jr_004_631c:
    ld d, h

jr_004_631d:
    ld e, h

jr_004_631e:
    ld e, h
    ld e, h

jr_004_6320:
    inc b
    ld [$0814], sp
    ld d, h
    ld d, h
    ld d, h
    ld [hl], b
    ld b, h
    ld b, h
    jr nz, jr_004_634c

    ld [hl], h
    ld a, h
    inc [hl]
    inc [hl]

jr_004_6330:
    ld [hl], h
    ld a, b
    inc [hl]
    inc [hl]
    ld a, h
    ld [hl], h
    inc [hl]
    inc [hl]
    ld c, h
    db $10
    ld c, h
    jr jr_004_6341

    db $10
    ld e, h

jr_004_633f:
    ld e, h
    inc d

jr_004_6341:
    inc d
    inc d
    ld [$2020], sp
    ld b, b
    ld b, b
    inc d
    jr @+$56

    ld d, h

jr_004_634c:
    ld d, h
    ld d, h
    inc d
    ld [$1004], sp
    jr nz, jr_004_6374

    inc b
    ld [$1814], sp
    ld e, h
    ld e, h
    inc d
    ld [$4040], sp
    ld e, h
    ld e, h
    inc [hl]
    inc [hl]
    inc b
    jr jr_004_6375

    db $10
    jr nz, jr_004_63b0

    ld [$0000], sp
    nop
    db $10
    inc b
    inc b
    db $10
    inc h
    inc h
    jr nc, jr_004_63a4

jr_004_6374:
    inc b

jr_004_6375:
    nop
    inc d
    nop
    jr nc, jr_004_637a

jr_004_637a:
    inc [hl]
    nop
    inc h
    jr nc, @+$32

    jr nc, jr_004_6381

jr_004_6381:
    ld c, h
    ld c, h
    jr nz, jr_004_63a5

    db $10
    inc d
    jr jr_004_6389

jr_004_6389:
    ld c, h
    nop
    ld c, h
    jr nz, jr_004_639e

    jr nz, jr_004_63a8

    ld c, b
    nop
    ld c, b
    nop
    jr nc, jr_004_63c6

    ld e, h
    jr nc, @+$5e

    ld e, h
    inc [hl]
    inc [hl]
    nop
    nop

jr_004_639e:
    jr c, @+$3a

    nop
    nop
    ld e, h
    ld e, h

jr_004_63a4:
    ld e, h

jr_004_63a5:
    inc b
    ld e, h
    ld e, h

jr_004_63a8:
    ld [$5c44], sp
    jr nz, jr_004_63e1

    inc [hl]
    jr nz, jr_004_63d0

jr_004_63b0:
    ld e, h
    ld e, h
    inc b
    jr jr_004_63b9

    db $10
    ld c, h
    jr @+$06

jr_004_63b9:
    db $10
    jr nz, jr_004_6404

    jr nz, @+$4a

    nop
    nop
    nop
    inc h
    nop
    jr nc, jr_004_6409

    nop

jr_004_63c6:
    jr nz, jr_004_63c8

jr_004_63c8:
    nop
    ld b, h
    nop
    jr nz, jr_004_63cd

jr_004_63cd:
    ld [$0000], sp

jr_004_63d0:
    jr nc, @+$32

    jr nc, jr_004_6408

    ld c, h
    jr nz, jr_004_6423

    jr @+$22

    inc d
    jr nz, jr_004_63f4

    jr nz, jr_004_63ee

    jr nz, jr_004_63f0

    ld e, h

jr_004_63e1:
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    ld e, h
    ld c, h
    ld e, h
    ld c, h
    jr c, jr_004_6426

jr_004_63ee:
    ld b, h
    inc a

jr_004_63f0:
    jr c, @+$3a

    inc a
    inc a

jr_004_63f4:
    jr c, @+$06

    ld b, h
    inc b
    ld [$085c], sp
    ld e, h
    jr nz, jr_004_6442

    inc d
    jr nz, @+$06

    jr jr_004_645f

    ld e, h

jr_004_6404:
    ld [$5c5c], sp
    ld e, h

jr_004_6408:
    inc [hl]

jr_004_6409:
    inc [hl]
    inc d
    ld [$0804], sp
    inc b
    jr nz, jr_004_6415

    jr nz, @+$06

    jr nz, jr_004_6419

jr_004_6415:
    ld [$2014], sp
    ld e, h

jr_004_6419:
    ld b, b
    ld e, h
    ld e, h
    nop
    nop
    inc b
    jr jr_004_6421

jr_004_6421:
    nop
    inc d

jr_004_6423:
    jr jr_004_6435

    nop

jr_004_6426:
    stop
    ld [$1400], sp
    jr jr_004_6471

    nop
    jr nz, @+$4a

    inc b
    inc b
    inc d
    db $10
    ld b, b

jr_004_6435:
    ld b, b
    inc h
    inc h
    ld b, b
    nop
    inc h
    inc h
    nop
    ld c, h
    nop
    nop
    jr nz, jr_004_645a

jr_004_6442:
    nop
    nop
    db $10
    db $10
    ld c, h
    jr nz, @+$26

    inc h
    inc h
    inc h
    ld b, b
    ld b, h
    ld b, b
    ld b, h
    inc b
    jr nz, @+$16

    jr nz, jr_004_6455

jr_004_6455:
    nop
    nop
    ld b, h
    nop
    nop

jr_004_645a:
    ld b, h
    ld b, h
    nop
    jr nz, jr_004_64ab

jr_004_645f:
    jr nz, jr_004_6481

    jr nz, jr_004_6477

    jr jr_004_6495

    inc b
    jr nc, @+$06

    jr nz, jr_004_648a

    inc d
    ld [$0400], sp
    ld b, h
    inc b
    inc b

jr_004_6471:
    inc d
    inc b
    jr jr_004_6485

    db $10
    db $10

jr_004_6477:
    jr jr_004_6489

    ld [$0804], sp
    jr z, jr_004_64a6

    jr z, jr_004_64a8

    inc b

jr_004_6481:
    inc b
    inc b
    db $10
    inc b

jr_004_6485:
    ld [$0804], sp
    inc l

jr_004_6489:
    inc l

jr_004_648a:
    inc [hl]
    inc [hl]
    ld e, h
    ld e, h
    ld e, b
    ld e, b
    nop
    nop
    ld e, h
    nop
    ld l, b

jr_004_6495:
    ld l, b
    ld l, b
    ld l, b
    ld h, b
    ld h, h
    ld h, b
    ld h, h
    ld e, b
    ld e, h
    ld l, b
    ld l, b
    ld e, h
    nop
    ld e, b
    ld e, h
    nop
    nop

jr_004_64a6:
    ld l, h
    ld l, h

jr_004_64a8:
    inc a
    jr c, jr_004_6513

jr_004_64ab:
    ld l, b
    ld a, b
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    nop
    ld l, h
    nop
    nop
    ld a, b
    ld a, b
    ld [hl], b
    ld a, h
    nop
    ld [hl], h
    ld d, b
    nop
    nop
    ld d, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, h
    ld [$0800], sp
    nop
    nop
    ld e, h
    ld e, h
    ld e, b
    inc b
    jr @+$6a

    ld l, b
    ld l, h
    ld l, h
    inc b
    ld [$0814], sp
    ld l, b
    ld l, b
    inc b
    ld [$6868], sp
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld a, h
    nop
    ld a, b
    ld [hl], b
    nop
    nop
    ld [hl], h
    ld a, h
    nop
    nop
    inc a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    inc a
    ld l, b
    ld l, b
    ld l, h
    ld l, h
    inc b
    jr jr_004_64fd

jr_004_64fd:
    nop
    nop
    jr nc, jr_004_6501

jr_004_6501:
    jr nc, jr_004_6533

    inc [hl]
    jr nc, jr_004_653a

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld l, b
    inc a
    inc [hl]
    inc [hl]
    ld l, b
    ld l, b
    jr nz, jr_004_6532

    inc b

jr_004_6513:
    jr @+$3e

    inc a
    inc a
    inc a
    inc a
    ld [$083c], sp
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld [$203c], sp
    inc d
    inc b
    jr jr_004_6555

    inc l
    inc [hl]
    inc [hl]
    inc [hl]
    inc b
    nop
    inc b
    inc b
    ld c, b

jr_004_6532:
    db $10

jr_004_6533:
    ld c, b
    nop
    inc b
    jr c, @+$06

    inc a
    inc a

jr_004_653a:
    ld [$0800], sp
    inc a
    ld [$3c3c], sp
    inc a
    inc d
    ld [$0008], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$3c3c], sp
    inc a
    ld [$1004], sp
    nop
    nop
    inc b

jr_004_6555:
    db $10
    inc d
    ld [$1004], sp
    inc a
    inc a
    jr z, @+$2a

    inc l
    inc l
    jr z, jr_004_658a

    inc [hl]
    inc [hl]
    inc b
    jr nz, jr_004_656b

    ld [$0048], sp
    nop

jr_004_656b:
    nop
    inc h
    inc h
    jr z, jr_004_6598

    inc b
    inc b
    inc b
    ld [$2028], sp
    inc [hl]
    jr nz, jr_004_6579

jr_004_6579:
    nop
    ld c, b
    nop
    nop
    ld [$0800], sp
    db $10
    ld [$1004], sp
    ld [$143c], sp
    ld [$3c3c], sp

jr_004_658a:
    ld b, h
    ld b, h
    inc b
    inc e
    inc e
    inc c
    inc c
    db $10
    inc d
    jr jr_004_65b1

    inc c
    inc e
    inc c

jr_004_6598:
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    ld b, h
    ld b, h
    jr nz, jr_004_65b0

    inc a
    ld [$1808], sp
    jr nz, @+$22

    inc e
    inc c
    inc b
    db $10
    inc e
    inc c

jr_004_65b0:
    nop

jr_004_65b1:
    nop
    ld [$1018], sp
    inc b
    inc b
    ld [$1004], sp
    jr z, jr_004_65e4

    jr nz, @+$22

    jr z, @+$2a

    inc b
    inc e
    inc b
    jr jr_004_65c9

    ld [$1418], sp
    ld b, h

jr_004_65c9:
    ld [$2020], sp
    inc d
    ld [$2828], sp
    inc b
    inc d
    inc b
    inc e
    inc e
    inc c
    inc d
    jr jr_004_65d9

jr_004_65d9:
    nop
    inc d
    ld c, b
    ld [$0444], sp
    jr nz, @+$16

    ld c, b
    nop
    nop

jr_004_65e4:
    inc b
    inc b
    ld c, h
    jr nz, jr_004_65f9

    ld [$0820], sp
    nop
    nop
    ld l, b
    ld l, b
    jr jr_004_65fa

    inc c
    ld [$6868], sp
    inc [hl]
    inc [hl]
    ld h, b

jr_004_65f9:
    ld h, h

jr_004_65fa:
    ld h, b
    ld h, h
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld h, b
    ld h, h
    inc [hl]
    inc [hl]
    ld b, h
    ld [$1820], sp
    ld [$1444], sp
    jr nz, @+$36

    inc [hl]
    ld [$1808], sp
    ld [$0804], sp
    ld b, b
    ld b, b
    nop
    nop
    inc c
    ld [$1814], sp
    ld d, h
    ld d, h
    jr z, jr_004_664c

    ld d, h
    ld d, h
    jr z, jr_004_6680

    ld e, h
    ld e, b
    ld e, h
    ld e, b
    inc [hl]
    inc [hl]
    nop
    ld [$3434], sp
    ld [$5c00], sp
    ld e, b
    inc [hl]
    inc [hl]
    ld e, h
    ld e, b
    inc [hl]
    ld e, b
    ld e, h
    ld e, h
    ld l, h
    ld l, h
    ld [$3408], sp
    inc [hl]
    ld [$3400], sp
    nop
    nop
    ld e, b
    nop
    ld e, b

jr_004_664c:
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    ld [$0044], sp
    nop
    ld b, h
    ld [$3400], sp
    ld b, h
    ld b, h
    ld l, h
    ld l, h
    ld [$6c1c], sp
    ld l, h
    inc c
    ld [$2020], sp
    inc b
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

jr_004_6680:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1100
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    ld de, $1100
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    rla
    rla
    rla
    ld de, $0011
    nop
    ld de, $1100
    ld [hl], c
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1000
    nop
    nop
    nop
    ld de, $0011
    nop
    ld [hl], a
    ld de, $0000
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld de, $1100
    ld de, $7711
    ld de, $0000
    ld de, $1111
    ld de, $0011
    ld de, $0077
    nop
    ld de, $1711
    stop
    ld de, $0011
    nop
    db $10
    stop
    nop
    nop
    nop
    rlca
    ld [hl], c
    ld de, $0711
    rlca
    ld de, $7011
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    ld bc, $4700
    ld bc, $1100
    nop
    ld de, $7111
    ld de, $1717
    nop
    nop
    nop
    ld [hl], b
    db $10
    rlca
    ld bc, $0001
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld de, $1111
    ld de, $0101
    ld bc, $0701
    rlca
    adc b
    ld a, b
    adc b
    adc b
    add c
    ld [hl], c
    db $10
    db $10
    rla
    ld de, $0011
    stop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0007
    nop
    ld de, $1100
    db $10
    db $10
    db $10
    ld de, $1770
    ld de, $7711
    nop
    ld [hl], b
    nop
    rlca
    nop
    ld de, $1100
    ld [hl], c
    nop
    nop
    nop
    nop
    ld de, $0011
    rlca
    nop
    ld [hl], a
    ld bc, $1171
    ld de, $0101
    ld de, $0111
    ld [hl], c
    ld de, $1111
    ld de, $1111
    nop
    nop
    ld de, $1111
    ld de, $0000
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    ld de, $bb00
    ld de, $0011
    ld de, $0000
    nop
    nop
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
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $8811
    adc b
    add c
    add c
    adc b
    nop
    adc b
    jr jr_004_67e4

    ld de, $0000
    ld bc, $1701
    rla
    ld bc, $8881
    db $10
    jr jr_004_67f8

    adc b
    ld de, $1110

jr_004_67e4:
    nop
    ld de, $8188
    ld de, $1100
    ld de, $8811
    nop
    nop
    nop
    nop
    ld de, $7011
    nop
    nop
    nop

jr_004_67f8:
    ld de, $0111
    ld bc, $7000
    ld bc, $1101
    ld de, $1418
    adc b
    ld [hl], a
    ld de, $1111
    ld de, $1111
    db $dd
    db $dd
    db $dd
    nop
    ld [hl], a
    ld de, $4181
    ld de, $1111
    ld de, $4100
    ld de, $1111
    nop
    ld de, $1100
    ld de, $1111
    ld [hl], c
    ld de, $0011
    ld de, $1111
    ld de, $1700
    ld b, a
    ld de, $0017
    ld de, $1171
    ld de, $0000
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    nop
    ld [hl], h
    ld de, $1147
    nop
    ld de, $1111
    ld [hl], a
    nop
    inc d
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $1000
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld b, c
    nop
    inc d
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_004_68d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_68d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc b
    inc bc
    inc bc
    dec b
    inc b
    ld b, $06
    rlca
    ld [$0709], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    rrca
    ld de, $1312
    inc d
    ld [de], a
    dec d
    ld [de], a
    ld d, $0f
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec d
    rla
    rla
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
    jr jr_004_6972

    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0c0e
    ld a, [bc]
    rlca
    ld a, [bc]
    rlca
    rlca
    ld [bc], a
    ld de, $0f0f
    add hl, de
    ld c, $0f
    rrca
    rlca
    rla
    rla

jr_004_6972:
    db $10
    rrca
    rrca
    rrca
    rrca
    add hl, de
    ld [de], a
    dec d
    rla
    rla
    rla
    rla
    db $10
    rrca
    ld bc, $1a1a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    ld bc, $121c
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec de
    ld bc, $151c
    ld a, [de]
    ld [de], a
    ld a, [de]
    ld [de], a
    dec de
    ld bc, $1a1c
    ld a, [de]
    ld a, [de]
    ld [de], a
    ld a, [de]
    dec de
    dec b
    ld bc, $1a15
    inc e
    dec de
    dec e
    ld e, $0a
    inc bc
    rra
    ld a, [de]
    dec e
    dec e
    ld e, $1b
    ld c, $0f
    rra
    dec de
    dec e
    inc e
    dec de
    dec e
    rrca
    ld de, $1d12
    jr nz, jr_004_69db

    jr nz, @+$1e

    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121

jr_004_69db:
    ld hl, $2121
    ld hl, $2221
    inc hl
    ld [hl+], a
    dec e
    ld e, $24
    dec h
    ld hl, $1d22
    ld e, $22
    dec e
    ld e, $23
    dec e
    ld h, $01
    ld h, $01
    ld h, $01
    ld [hl+], a
    inc hl
    daa
    ld [bc], a
    daa
    inc bc
    daa
    inc bc
    jr nz, @+$2a

    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld e, $22
    inc hl
    ld e, $22
    inc hl
    ld [hl+], a
    inc hl
    add hl, hl
    jr nz, @+$2a

    add hl, hl
    jr nz, @+$2a

    jr nz, @+$2a

    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [de]
    dec d
    inc e
    ld [de], a
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec hl
    inc e
    dec h
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc l
    dec d
    dec l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, $2f
    jr nc, jr_004_6b51

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc hl
    nop
    ld [hl-], a
    inc sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc [hl]
    dec [hl]
    ld [hl], $20
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    scf
    jr c, jr_004_6b70

    jr nz, jr_004_6b63

    add hl, hl
    inc hl
    scf
    ld e, $38
    ld a, [hl-]
    dec sp
    ld a, [de]
    ld [de], a
    inc d
    ld [de], a
    dec d
    ld [de], a
    rla
    inc a
    dec a
    dec a
    ld a, $1c
    ccf
    inc e
    ld b, b
    dec l
    nop

jr_004_6b51:
    inc a
    ld b, c
    ld b, d
    ld b, e
    ccf
    ccf
    inc a
    ld b, h
    ld b, l
    ld b, h
    ld b, [hl]
    ld sp, $413c
    ld b, [hl]
    inc sp
    ld b, a
    ld c, b

jr_004_6b63:
    ld c, c
    ld b, h
    ld c, d
    jr nc, @+$4d

    jr nz, jr_004_6bb6

    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld c, a
    ld d, c

jr_004_6b70:
    jr nz, jr_004_6b9a

    ld d, d
    jr nz, jr_004_6bc8

    ld l, $53
    ld l, $3b
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, $17
    rla
    dec d
    jr nz, @+$22

    ld d, a
    inc a
    ld e, b
    inc e
    inc e
    ld [hl+], a
    dec e
    ld e, $00
    inc e
    inc e
    inc a
    inc a
    ld a, [hl+]
    inc hl
    scf
    dec l
    nop
    dec l
    ld e, c
    ld e, d

jr_004_6b9a:
    ld a, [hl+]
    ld hl, $0020
    ld e, e
    inc a
    jr nc, jr_004_6bcc

    inc e
    inc hl
    jr nz, jr_004_6bd6

    jr nc, jr_004_6ba8

jr_004_6ba8:
    ld c, a
    dec e
    dec hl
    ld hl, $5d5c
    ld [hl-], a
    ld e, [hl]
    jr z, jr_004_6bd0

    ld hl, $5f28
    ld e, c

jr_004_6bb6:
    ld h, b
    ld h, c
    scf
    scf
    ld e, $21
    ld e, a
    jr nc, jr_004_6c21

    add hl, hl
    ld h, e
    ld h, h
    ld h, e
    rrca
    ld h, e
    ld h, l
    inc hl
    dec e

jr_004_6bc8:
    ld h, [hl]
    inc e
    inc e
    inc e

jr_004_6bcc:
    ld h, [hl]
    ld [hl+], a
    ld l, $37

jr_004_6bd0:
    nop
    inc a
    ld h, a
    ld h, a
    ld h, a
    ld l, b

jr_004_6bd6:
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    nop
    ld l, e
    nop
    ld l, e
    nop
    ld l, e
    ld [de], a
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, a
    inc d
    dec h
    ld a, [de]
    ld a, [de]
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc [hl]
    ld [hl], h
    ld [hl], l
    ld [hl], l
    halt
    ld l, h
    ld l, h
    ld e, l
    ld c, l
    jr nz, jr_004_6c17

    ld [hl], a
    ld a, b
    ld [hl], a
    inc d
    ld b, h
    ld a, c
    inc hl
    dec e
    ld a, c
    inc hl
    dec e
    inc hl
    dec e
    ld a, d
    ld a, e
    ld a, e
    ld a, h
    inc hl
    dec e
    inc hl
    dec e
    ld l, c
    ld l, c
    nop
    ld a, e
    ld [hl+], a
    inc hl
    ld [hl+], a

jr_004_6c17:
    inc hl
    nop
    ld l, e
    nop
    ld a, e
    jr nz, jr_004_6c46

    jr nz, @+$2a

    ld l, a

jr_004_6c21:
    ld l, a
    inc d
    ld a, e
    inc hl
    dec e
    inc hl
    dec e
    ld [hl], d
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, e
    ld d, e
    ld l, $2e
    ld a, [hl-]
    rra
    ld a, e
    ld a, a
    add b
    add c
    ld l, $2e
    ld c, e
    add d
    ld a, e
    add b
    jr nz, @+$77

    ld l, $2e
    ld hl, $2121
    ld hl, $2121

jr_004_6c46:
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2e21
    ld l, $2e
    ld l, $2e
    ld l, $21
    ld hl, $2e2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121

jr_004_6ca4:
    ld hl, $2121
    ld hl, $2e2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2a2a
    ld a, [hl+]
    ld a, [hl+]
    inc [hl]
    dec [hl]
    ld [hl], $2a
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    scf
    add e
    add hl, sp
    jr nz, jr_004_6d3b

    add hl, hl
    inc hl
    scf
    ld e, $84
    ld [hl], $3b
    ld a, [hl+]
    ld a, [hl+]

jr_004_6d1a:
    ld a, [hl+]
    ld a, [hl+]
    inc [hl]
    jr c, jr_004_6ca4

    jr nz, jr_004_6d4b

    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    scf
    add [hl]
    add a
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    inc hl
    scf
    ld e, $38
    add l
    adc b
    ld a, [hl+]
    add hl, hl

jr_004_6d32:
    inc hl
    scf
    ld e, $86
    ld c, e
    jr nc, jr_004_6d63

    ld a, [hl+]
    ld a, [hl+]

jr_004_6d3b:
    ld a, [hl+]
    inc [hl]
    adc c
    adc c
    adc c
    dec sp
    dec l
    adc d
    adc e
    adc h
    adc e
    adc l
    ld d, $8e
    adc a
    sub b

jr_004_6d4b:
    inc c
    ld d, [hl]
    inc c
    rrca
    sub c
    sub d
    inc a
    sub e
    adc c
    adc c
    adc c
    sub h
    add hl, bc
    sub d
    adc a
    sub e
    ld a, [hl+]
    dec sp
    add hl, hl
    inc [hl]
    add hl, bc

jr_004_6d60:
    adc [hl]
    inc a
    sub e

jr_004_6d63:
    ld a, [hl+]
    inc hl
    ld a, [hl+]
    ld c, l
    ld d, [hl]
    ld [hl], e
    dec l
    sub e
    add hl, hl
    dec sp
    add hl, hl
    inc [hl]
    ld d, $00
    inc a
    sub e
    jr z, jr_004_6d9f

    sub l
    ld a, d
    ld de, $5089
    jr z, jr_004_6d9f

    jr nz, jr_004_6da1

jr_004_6d7e:
    sub [hl]
    inc [hl]
    add hl, de
    jr nz, jr_004_6dba

    adc [hl]
    ld sp, $325d
    add hl, hl
    sub a
    adc l
    jr nz, jr_004_6d1a

    sbc b
    ld b, h
    ld h, b
    ld [hl], h
    sbc c
    sbc d
    dec sp
    sbc e
    ld d, b
    sbc h
    sbc l
    jr nz, jr_004_6d32

    sbc [hl]
    ld a, [hl+]
    sbc a
    and b
    and c
    adc l

jr_004_6d9f:
    and d
    and e

jr_004_6da1:
    ld a, [hl+]
    add hl, hl
    and h
    and l
    inc c
    ld d, [hl]
    ld c, l
    add hl, de
    and [hl]
    rlca
    and h
    and a
    inc [hl]
    inc [hl]
    jr nz, @+$11

    ld de, $0f0f
    xor b
    jr nz, jr_004_6d60

    ld hl, $3434

jr_004_6dba:
    inc [hl]
    inc [hl]
    sub [hl]
    add hl, hl
    ld hl, $1e2e
    add hl, hl
    xor d
    xor e
    xor h
    xor l
    ld a, [de]
    xor [hl]
    xor a
    jr z, @-$4e

    jr nz, jr_004_6d7e

    ld a, [hl+]
    inc d
    or d
    ld l, $29
    xor d
    or e
    or h
    or l
    ld de, $280f
    ld hl, $b521
    or [hl]
    ld e, $0c
    dec d
    and d

jr_004_6de1:
    add hl, hl
    ld hl, $21b4
    or [hl]
    ld d, $15
    inc hl
    ld hl, $2121
    or l
    or h
    inc c
    ld d, $20
    ld hl, $2121
    or h
    rrca
    rrca
    rrca
    ld hl, $2129
    or l
    ld hl, $b7b5
    sbc [hl]
    ld l, d
    cp b
    inc d
    inc de
    add b
    ld l, $80
    ld l, $15
    inc d
    ld a, [de]
    cp c
    sbc d
    cp d
    sbc d
    add b
    dec d
    ld [de], a
    cp e
    rrca
    cp h
    cp l
    cp [hl]
    add b
    inc de
    cp a
    ld d, $bc
    ret nz

    jr nz, jr_004_6e1f

jr_004_6e1f:
    add b
    cp a
    inc c
    cp h
    pop bc
    ld l, $b3
    ld l, e
    nop
    inc c
    cp h
    ret nz

    ld e, $c2
    ld e, $00
    nop
    rrca
    ret nz

    add b
    xor e
    jr nz, jr_004_6de1

    ld b, a
    ld b, a
    jp Jump_000_2121


    jp nz, $c2b3

    ld hl, $2ec2
    call nz, Call_000_3e67
    ld l, b
    push bc
    ld l, $2e
    inc a
    sbc b
    add $c7
    ld [hl], c
    nop
    ld l, $2e
    ld c, e
    ret z

    nop
    ret


    jp z, $2e6e

    add b
    nop
    jr nc, jr_004_6ea2

    ld b, a
    ld b, a
    ld b, a
    ld l, $2e
    ld l, e
    nop
    add b
    ld l, $80
    ld l, $80

jr_004_6e67:
    ld l, $00
    nop
    set 1, h
    rlc b
    set 1, h
    ld b, a
    ld l, h
    ld l, h
    ld b, a
    ld l, h
    ld l, h
    ld l, h
    sub h
    ld l, $21
    jp nz, Jump_000_2e2e

    ld hl, $21c2
    ld l, $cd
    adc $ce
    adc $ce
    adc $cf
    ret nc

    ld e, c
    pop de
    ld b, h
    pop de
    jp nc, $d344

    ld [hl], c
    jr nc, jr_004_6e67

    nop
    call nc, $d500
    db $d3
    nop
    nop
    sub $00
    rst RST_10
    nop
    push de
    ret c

    reti


    push de

jr_004_6ea2:
    ret


    jp c, RST_00

    db $db
    adc a
    nop
    jr nc, jr_004_6eab

jr_004_6eab:
    call c, $00c9
    nop
    nop
    nop
    reti


    nop
    jp z, $dd6e

    sbc $c9
    nop
    nop
    nop
    rst RST_18
    add $00
    jr nc, jr_004_6ec0

jr_004_6ec0:
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $5c5c
    ld e, h
    ld e, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld h, h
    ld [hl], h
    ld [hl], b
    ld h, h
    ld h, h
    ld h, h
    ld [hl], b
    ld h, h
    ld h, h
    ld [hl], b
    ld h, h
    ld a, h
    ld [hl], h
    ld a, b
    ld a, b
    ld [hl], h
    ld [hl], h
    ld a, b
    ld a, h
    ld [hl], b
    ld [hl], h
    ld [hl], h
    ld a, h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], h
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, h
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, h
    ld a, b
    ld a, b
    ld a, b
    inc e
    inc e
    inc e
    inc e
    inc e
    jr jr_004_6f6b

    inc e
    inc e
    inc e
    jr @+$1e

    jr jr_004_6f72

    inc e
    inc e
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld b, h
    ld b, h
    inc e
    inc e
    ld [hl], b
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, b
    ld a, b
    ld a, h
    ld a, b
    inc e
    inc e
    inc e

jr_004_6f6b:
    jr jr_004_6f75

    inc e
    inc e
    ld [$1c18], sp

jr_004_6f72:
    inc e
    jr @+$1e

jr_004_6f75:
    ld [$0818], sp
    ld [$0808], sp
    jr jr_004_6fc9

    inc e
    ld c, h
    jr @+$0a

    ld [$0818], sp
    ld [$0808], sp
    ld [$1818], sp
    inc e
    ld [$1808], sp
    db $10
    ld [$1808], sp
    ld [$181c], sp
    inc e
    ld [$6418], sp
    inc h
    ld h, h
    jr z, jr_004_7001

    jr z, jr_004_700f

    jr z, jr_004_6fb9

    ld [$0808], sp
    ld [$0818], sp
    ld [$181c], sp
    jr jr_004_6fb4

    inc e
    ld [$1808], sp
    ld [$0808], sp
    inc e

jr_004_6fb4:
    ld e, h
    ld e, h
    ld e, h
    jr nc, @+$1a

jr_004_6fb9:
    ld [$1808], sp
    ld c, b
    ld e, h
    ld c, b
    ld e, h
    ld e, h
    inc l
    ld e, h
    ld e, h
    jr nc, jr_004_7022

    ld e, h
    jr nc, @+$5e

jr_004_6fc9:
    ld c, h
    jr nc, jr_004_7018

    inc d
    inc d
    jr @+$12

    jr jr_004_6fea

    ld [$4818], sp
    inc [hl]
    ld c, b
    jr nc, jr_004_7009

    ld c, h
    jr nc, @+$4e

    ld [$1810], sp
    ld [$2c48], sp
    ld c, b
    ld e, h
    inc [hl]
    ld c, h
    inc l
    ld c, h
    jr nc, jr_004_7046

jr_004_6fea:
    jr nc, jr_004_7048

    ld [$1808], sp
    db $10
    ld e, h
    ld e, h
    jr nc, @+$5e

    ld [$4018], sp
    ld b, b
    jr jr_004_7002

    ld b, b
    ld b, b
    jr jr_004_7006

    ld [$181c], sp

jr_004_7001:
    inc e

jr_004_7002:
    db $10
    jr @+$5e

    ld e, h

jr_004_7006:
    inc [hl]
    jr nc, jr_004_7021

jr_004_7009:
    inc e
    ld e, h
    ld e, h
    ld [$5c18], sp

jr_004_700f:
    ld e, h
    inc l
    jr nc, @+$5e

    inc l
    inc [hl]
    jr nc, @+$32

    ld e, h

jr_004_7018:
    inc [hl]
    jr nc, jr_004_704b

    jr nc, @+$16

    inc d
    ld [$1418], sp

jr_004_7021:
    inc d

jr_004_7022:
    db $10
    ld [$1414], sp
    db $10
    jr jr_004_7059

    jr nc, jr_004_7087

    ld e, h
    inc l
    ld e, h
    ld e, h
    ld e, h
    jr jr_004_7042

    ld [$0808], sp
    jr @+$1a

    ld [$1818], sp
    db $10
    ld [$4444], sp
    jr jr_004_7058

    ld b, h
    ld b, h

jr_004_7042:
    ld [$4418], sp
    ld b, h

jr_004_7046:
    jr @+$0a

jr_004_7048:
    jr jr_004_7052

    db $10

jr_004_704b:
    ld [$1808], sp
    ld [$4018], sp
    ld b, b

jr_004_7052:
    ld e, h
    ld e, h
    jr jr_004_705e

    inc a
    inc a

jr_004_7058:
    ld [hl], h

jr_004_7059:
    ld [hl], h
    ld a, b
    ld a, b
    jr nc, jr_004_70ba

jr_004_705e:
    ld e, h
    ld e, h
    jr nc, jr_004_7066

    inc b
    ld a, b
    jr nc, jr_004_7096

jr_004_7066:
    inc l
    jr nc, @+$5e

    ld e, h
    inc [hl]
    ld e, h
    jr nc, jr_004_709e

    jr nc, jr_004_70a4

    ld [$085c], sp
    ld e, h
    ld e, h
    jr nc, jr_004_70a7

    inc [hl]
    inc e
    inc e
    inc e
    ld [$4818], sp
    ld [$3048], sp
    ld c, h
    inc [hl]
    ld c, h
    ld [$1808], sp

jr_004_7087:
    jr jr_004_70b9

    ld c, h
    inc l
    ld c, h
    ld a, h
    jr z, @+$7a

    ld a, b
    ld a, b
    ld a, b
    inc e
    jr jr_004_7111

    ld a, h

jr_004_7096:
    ld a, b
    ld a, b
    ld b, h
    ld b, h
    inc e
    jr jr_004_70b5

    inc e

jr_004_709e:
    ld b, b
    ld b, b
    inc e
    jr @+$42

    ld b, b

jr_004_70a4:
    inc e
    inc e
    ld b, b

jr_004_70a7:
    ld b, b
    ld e, h
    ld e, h
    inc e
    inc e
    ld e, h
    ld e, h
    ld e, h
    ld d, h
    ld e, h
    ld e, h
    ld b, h
    ld b, h
    ld e, h

jr_004_70b5:
    ld e, h
    ld b, h
    jr nc, jr_004_70e9

jr_004_70b9:
    ld e, h

jr_004_70ba:
    inc [hl]
    jr nc, jr_004_7119

    ld e, h
    inc d
    inc d
    inc e
    inc l
    jr jr_004_7120

    jr nc, jr_004_70f2

    inc l
    ld e, h
    jr jr_004_70d2

    ld e, h
    ld e, h
    inc e
    jr @+$5e

    ld e, h
    jr jr_004_70e2

jr_004_70d2:
    ld [$0818], sp
    inc e
    inc e
    jr jr_004_70f5

    ld e, h
    jr jr_004_7120

    inc e
    jr jr_004_70f7

    db $10
    inc e
    inc e

jr_004_70e2:
    jr @+$1a

    ld [$1008], sp
    jr @+$0a

jr_004_70e9:
    jr @+$1a

    inc e
    inc e
    ld [$1c08], sp
    jr jr_004_710a

jr_004_70f2:
    inc e
    jr jr_004_7111

jr_004_70f5:
    jr jr_004_7143

jr_004_70f7:
    inc e
    jr @+$0a

    inc e
    jr @+$0a

    ld [$081c], sp
    inc e
    ld [$1c18], sp
    jr jr_004_711e

    jr jr_004_7110

    ld c, h
    inc e

jr_004_710a:
    ld c, h
    inc e
    ld c, b
    inc l
    ld e, h
    ld e, h

jr_004_7110:
    ld e, h

jr_004_7111:
    ld e, h
    ld c, b
    ld e, h
    jr nc, jr_004_7162

    jr nc, jr_004_7174

    ld c, b

jr_004_7119:
    jr nc, jr_004_7163

    jr nc, jr_004_714d

    ld e, h

jr_004_711e:
    jr nc, jr_004_716c

jr_004_7120:
    ld [$5c08], sp
    ld e, h
    inc d
    inc d
    jr jr_004_7130

    jr nc, jr_004_715a

    jr nc, jr_004_7130

    ld a, b
    ld a, h
    jr z, jr_004_71a4

jr_004_7130:
    ld a, b
    ld a, b
    ld [hl], h
    ld [hl], h
    ld a, h
    ld [hl], h
    ld [hl], h
    ld a, h
    ld [$1848], sp
    ld c, b
    ld e, h
    jr nc, jr_004_719b

    ld e, h
    inc b
    ld a, b
    ld a, b

jr_004_7143:
    ld a, b
    ld a, b
    ld a, h
    ld [hl], h
    ld [hl], h
    inc e
    ld c, b
    jr @+$4a

    ld c, h

jr_004_714d:
    jr jr_004_719b

    ld [$1414], sp
    jr jr_004_716c

    jr jr_004_7166

    jr jr_004_7160

    jr jr_004_7176

jr_004_715a:
    ld [$7818], sp
    ld a, b
    inc h
    ld a, h

jr_004_7160:
    inc l
    inc [hl]

jr_004_7162:
    ld e, h

jr_004_7163:
    inc l
    jr z, @+$76

jr_004_7166:
    jr z, jr_004_71dc

    ld [hl], h
    ld [hl], h
    ld a, h
    ld [hl], h

jr_004_716c:
    inc e
    ld [$0808], sp
    ld b, h
    ld e, h
    jr jr_004_7178

jr_004_7174:
    inc l
    ld c, h

jr_004_7176:
    inc b
    inc b

jr_004_7178:
    ld a, b
    ld a, b
    ld b, h
    ld b, h
    ld [$7408], sp
    inc h
    inc e
    ld [$7474], sp
    inc e
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [$1818], sp
    db $10
    jr z, jr_004_7202

    ld a, b
    ld a, h
    ld [hl], h
    jr z, @+$76

    jr z, @+$76

    ld [hl], h
    ld [hl], h
    ld a, b
    ld [hl], h
    inc h
    ld a, h

jr_004_719b:
    jr z, jr_004_7219

    ld c, h
    ld a, b
    ld c, h
    ld a, b
    inc e
    ld a, b
    inc e

jr_004_71a4:
    inc e
    ld [$0810], sp
    ld [$0810], sp
    jr jr_004_71b5

    ld [$0810], sp
    ld [$1818], sp
    jr @+$12

jr_004_71b5:
    ld [$1c08], sp
    ld e, h
    ld e, h
    inc b
    inc b
    jr @+$12

    db $10
    jr @+$1a

    ld [$1810], sp
    ld [$1c18], sp
    ld [$7c74], sp
    ld a, b
    ld a, h
    ld [$0810], sp
    ld [$181c], sp
    jr jr_004_71ec

    db $10
    ld [$1808], sp
    ld [$081c], sp
    inc e

jr_004_71dc:
    ld a, b
    ld a, b
    jr jr_004_71e8

    ld c, h
    jr jr_004_71ff

    inc e
    inc a
    inc a
    ld [hl], h
    ld a, h

jr_004_71e8:
    ld a, h
    ld [hl], h
    ld [hl], h
    ld a, b

jr_004_71ec:
    inc a
    inc a
    ld a, b
    ld a, h
    ld a, b
    ld d, b
    ld d, b
    ld [$1414], sp
    ld [$7408], sp
    ld a, b
    ld e, h
    ld e, h
    inc a
    inc a
    ld a, b

jr_004_71ff:
    ld a, b
    jr @+$0a

jr_004_7202:
    ld [$1c18], sp
    ld [$1c18], sp
    ld [$0808], sp
    db $10
    ld a, b
    ld a, b
    jr nz, jr_004_7230

    jr jr_004_722e

    ld [$1c40], sp
    ld [$4040], sp
    inc l

jr_004_7219:
    inc l
    ld e, h
    ld e, h
    jr nc, @+$32

    inc l
    inc [hl]
    jr nc, jr_004_727e

    inc l
    jr nc, @+$5e

    ld e, h
    inc l
    ld e, h
    ld e, h
    jr nc, jr_004_725b

    jr nc, jr_004_7289

    ld e, h

jr_004_722e:
    ld d, h
    ld e, h

jr_004_7230:
    jr c, jr_004_726a

    jr c, jr_004_726c

    ld [$1808], sp
    ld b, b
    ld [$4008], sp
    ld b, b
    ld [$4008], sp
    ld [$3030], sp
    inc [hl]
    jr nc, jr_004_7275

    jr nc, jr_004_72a7

    ld h, b
    jr nc, @+$32

    inc l
    ld e, h
    ld c, h
    ld [$084c], sp
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    jr nc, jr_004_72b3

    jr nc, jr_004_7275

    ld e, h
    ld e, h

jr_004_725b:
    ld e, h
    ld e, h
    inc e
    ld e, h
    ld e, h
    ld c, h
    ld [$305c], sp
    ld e, h
    ld e, h
    ld e, h
    inc e
    ld e, h
    ld e, h

jr_004_726a:
    ld h, h
    ld l, b

jr_004_726c:
    ld e, h
    inc l
    inc e
    ld e, h
    ld [hl], b
    ld [hl], h
    ld a, b
    ld a, h
    ld e, h

jr_004_7275:
    ld e, h
    inc e
    ld e, h
    inc [hl]
    jr nc, jr_004_72a7

    jr nc, jr_004_72d9

    inc l

jr_004_727e:
    inc e
    inc e
    ld [$0808], sp
    ld [$5c5c], sp
    ld e, h
    ld e, h
    ld e, h

jr_004_7289:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_004_72a7:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_004_72b3:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h

jr_004_72d9:
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $1111
    ld de, $0011
    nop
    ld [hl], a
    ld de, $0000
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $7171
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0000
    ld de, $7011
    ld [hl], b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld de, $1111
    ld de, $7070
    rlca
    rlca
    ld de, $7011
    ld [hl], b
    rlca
    rlca
    nop
    nop
    ld de, $0011
    nop
    ld de, $1177
    ld [hl], a
    ld de, $1111
    ld de, $0000
    ld de, $1100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld [hl], a
    ld de, $1177
    ld [hl], a
    ld de, $1111
    ld de, $7711
    nop
    ld de, $0000
    nop
    nop
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
    stop
    nop
    ld de, $1711
    rla
    rlca
    rlca
    ld de, $0711
    rlca
    nop
    nop
    nop
    ld de, $0000
    ld [hl], a
    ld de, $7711
    ld de, $1177
    ld [hl], a
    nop
    ld de, $0000
    nop
    ld [hl], a
    nop
    ld [hl], b
    nop
    nop
    nop
    ld de, $1010
    nop
    nop
    ld de, $1100
    nop
    ld de, $1111
    ld de, $1710
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1171
    ld de, $1111
    ld de, $1111
    ld de, $7171
    ld [hl], b
    nop
    nop
    ld [hl], b
    rlca
    nop
    ld [hl], b
    ld [hl], b
    nop
    rlca
    ld de, $1100
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rla
    ld [hl], c
    ld [hl], c
    ld de, $1111
    ld de, $1110
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $7011
    db $10
    rlca
    nop
    nop
    ld [hl], a
    ld de, $1100
    nop
    stop
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $1101
    ld de, $1111
    ld de, $1111
    ld de, $1111
    nop
    nop
    ld de, $1111
    ld de, $1111
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    ld de, $1171
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc h
    ld b, c
    ld de, $0000
    nop
    nop
    ld b, c
    ld de, $1141
    ld de, $0011
    nop
    ld de, $1117
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    ld de, $1117
    ld [hl], a
    ld de, $0071
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    stop
    ld bc, $7100
    nop
    nop
    ld bc, $0000
    nop
    db $10
    ld [hl], a
    ld [hl], a
    nop
    stop
    nop
    nop
    ld de, $1111
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld [$0809], sp
    add hl, bc
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0303], sp
    inc bc
    add hl, bc
    ld a, [bc]
    ld b, $07
    ld [$0303], sp
    inc bc
    add hl, bc
    ld a, [bc]
    ld b, $0b
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    dec c
    ld c, $0f
    db $10
    db $10
    db $10
    db $10
    ld de, $120d
    rrca
    db $10
    db $10
    db $10
    db $10
    ld de, $0e0d
    rrca
    db $10
    db $10
    db $10
    db $10
    ld a, [bc]
    ld a, [bc]
    inc de
    inc d
    dec d
    dec d
    dec d
    dec d
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, $17
    jr jr_004_75b1

    add hl, bc
    ld a, [bc]
    add hl, de
    add hl, de
    ld d, $1a
    dec de
    dec c
    add hl, bc
    ld a, [bc]
    ld c, $1c
    dec e

jr_004_75b1:
    ld a, [bc]
    dec e
    ld a, [bc]
    add hl, bc
    add hl, de
    ld e, $1e
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld e, $19
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, [bc]
    jr nz, jr_004_75f2

    jr nz, jr_004_75f4

    jr nz, @+$05

    inc bc
    inc bc
    ld c, $12
    ld c, $12
    ld c, $21
    db $10
    db $10
    ld [hl+], a
    ld c, $0e
    ld c, $0e
    inc hl
    inc h
    inc bc
    ld c, $0e
    ld [de], a
    ld c, $12
    ld e, $23
    dec h
    ld h, $27

jr_004_75f2:
    ld [hl+], a
    add hl, de

jr_004_75f4:
    ld e, $22
    ld [de], a
    jr z, jr_004_7622

    add hl, hl
    ld c, $12
    ld c, $12
    ld e, $2a
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec hl
    ld c, $12
    rrca
    inc l
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec l
    ld [de], a
    ld c, $0f
    inc bc
    ld a, [bc]
    add hl, bc
    ld l, $0e
    ld c, $12
    cpl
    db $10
    ld a, [bc]
    add hl, bc
    ld c, $12
    ld c, $30
    jr nc, jr_004_7624

    ld [hl+], a

jr_004_7622:
    ld c, $0e

jr_004_7624:
    ld [de], a
    ld c, $10
    db $10
    dec h
    dec h
    ld c, $12
    ld c, $25
    dec h
    dec h
    add hl, hl
    add hl, hl
    add hl, hl
    ld sp, $290e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld sp, $2932
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, $12
    ld c, $23
    inc sp
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, $34
    daa
    ld h, $35
    add hl, hl
    jr z, jr_004_767a

    ld c, $0e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, $12
    ld c, $0e
    ld [hl], $36
    ld [hl], $37
    ld c, $0e
    ld c, $12
    jr c, jr_004_769c

    ld [hl], $39
    ld c, $0e
    ld c, $0e
    ld c, $36
    ld [hl], $36
    ld [de], a
    ld a, [hl-]
    ld [de], a
    ld a, [hl-]
    dec sp
    jr c, @+$3e

    ld [hl], $3d
    daa

jr_004_767a:
    dec a
    ld h, $27
    ld h, $0e
    ld a, $29
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ccf
    ld [hl-], a
    add hl, hl
    add hl, hl
    jr z, jr_004_76b4

    add hl, hl
    add hl, hl
    add hl, hl
    ld [de], a
    add hl, hl
    ld [de], a
    ld c, $23
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, $28
    ld c, $0e
    ld c, $40

jr_004_769c:
    ld b, b
    ld b, b
    ld c, $12
    ld c, $12
    ld c, $12
    ld c, $0e
    ld [de], a
    ld c, $26
    daa
    ld h, $27
    ld c, $12
    ld c, $0e
    ld [hl], $36
    ld [hl], $36

jr_004_76b4:
    daa
    ld b, c
    ld [de], a
    dec sp
    ld a, $3e
    ld a, $3e
    ld a, $42
    ld c, $12
    ld b, d
    ld b, d
    ld b, e
    ld b, d
    ld b, d
    ld b, d
    ld c, $12
    ld b, d
    ld b, d
    ld b, e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, l
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    scf
    scf
    ld c, $42
    ld b, d
    ld c, $0e
    ld b, d
    ld b, [hl]
    ld c, $12
    ld b, a
    ld c, b
    ld c, c
    ld b, l
    ld b, d
    add hl, hl
    ld c, d
    ld c, $0e
    ld c, $4b
    add hl, hl
    ld c, h
    add hl, hl
    ld c, l
    ld c, $12
    ld c, $3c
    ld c, [hl]
    add hl, hl
    add hl, hl
    ld c, d
    ld c, $12
    ld [de], a
    ld c, $4f
    add hl, hl
    ld d, b
    ld c, $51
    jr c, jr_004_7747

    ld b, d
    ld c, $0e
    ld b, d
    ld c, $12
    ld d, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld d, d
    ld d, e
    ld [de], a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, d
    ld e, b
    ld c, l
    ld c, $3c
    scf
    inc a
    inc a
    ld c, c
    ld e, c
    ld c, d
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld e, e
    add hl, hl
    add hl, hl
    ld c, l
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, h
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld c, h
    add hl, hl
    scf
    add hl, hl
    add hl, hl
    add hl, hl
    ld h, d
    ld h, e
    add hl, hl
    jr z, jr_004_7751

    add hl, hl
    add hl, hl
    ld c, d
    ld c, $0e
    ld [de], a
    ld c, $0e

jr_004_7747:
    scf
    add hl, hl
    ld c, d
    ld [de], a
    ld [de], a
    ld c, $12
    ld c, $0e
    ld h, h

jr_004_7751:
    ld c, $12
    ld c, $0e
    ld [hl+], a
    ld c, $0e
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld c, $12
    ld c, $2a
    ld h, l
    ld h, a
    ld h, a
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld l, b
    ld h, a
    dec sp
    ld c, $65
    ld [de], a
    ld [de], a
    ld [de], a
    ld h, l
    ld c, $0e
    ld l, c
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld c, $6a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld h, l
    ld h, l
    add hl, hl
    add hl, hl
    ld l, a
    ld [hl], b
    add hl, hl
    ld c, $5d
    add hl, hl
    jr z, jr_004_77b2

    jr z, jr_004_77b4

    jr z, jr_004_77a0

    ld e, l
    ld h, h
    ld [de], a
    ld c, $2a
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], c
    ld c, a
    ld [hl], d
    ld a, [hl+]
    ld a, [hl+]
    ld l, b
    ld l, b
    ld l, b
    ld [hl], e
    dec sp
    ld h, l

jr_004_77a0:
    ld l, b
    ld l, b
    ld h, l
    ld h, a
    ld h, a
    ld h, l
    ld [hl], e
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    ld c, $74
    ld h, a
    ld h, a
    ld h, a
    ld h, l
    ld h, l

jr_004_77b2:
    ld c, $12

jr_004_77b4:
    ld c, $0e
    ld c, $0e
    ld h, a
    ld h, a
    ld [de], a
    ld c, $12
    ld c, $12
    ld c, $43
    ld [hl], l
    halt
    ld [hl], $77
    ld b, b
    ld a, b
    ld h, a
    ld b, e
    ld [hl], a
    ld [hl+], a
    ld c, $0e
    ld c, $12
    ld c, $51
    scf
    add hl, de
    ld c, $12
    ld c, $3b
    ld [de], a
    ld c, $22
    add hl, de
    ld c, $0e
    add hl, de
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, c
    add hl, sp
    ld a, d
    ld [de], a
    add hl, de
    ld b, b
    ld b, b
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    ld c, $12
    ld c, $0e
    ld c, $7e
    ld a, a
    add b
    ld [de], a
    ld c, $12
    ld c, $3b
    ld c, a
    add c
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    dec sp
    ld c, $0e
    ld h, $26
    ld h, $26
    ld b, c
    ld [de], a
    ld [hl], $39
    ld [hl], $36

jr_004_780d:
    add d
    ld [hl], $83
    dec sp
    ld [hl], $36
    add h
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add hl, sp
    add l
    add [hl]
    ld c, $12
    ld c, $12
    ld c, $40
    ld [hl], $36
    daa
    ld h, $12
    ld e, l
    ld [hl], $19
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld [hl+], a
    ld e, l
    ld a, e
    ld [de], a
    add a
    adc b
    jr z, @-$75

    ld l, b
    adc c
    add b
    ld d, b
    ld c, $0e
    ld [de], a
    ld c, $12
    dec sp
    ld c, $3b
    ld a, [hl]
    adc d
    ld h, l
    ld h, a
    ld h, a
    ld h, l
    ld h, h
    ld [de], a
    ld a, [hl]
    ld l, d
    ld h, l
    adc e
    adc e
    ld h, l
    ld h, l
    dec sp
    ld e, l
    adc h
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld c, $8d
    adc [hl]
    adc a
    ld h, a
    ld h, a
    sub b
    ld h, l
    daa
    ld h, $27
    ld h, $26
    ld h, $27
    ld h, l
    add b
    ld l, b
    ld h, h
    ld l, b
    ld h, h
    ld l, b
    ld l, b
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l

Jump_004_7878:
    ld h, l
    ld [hl-], a
    jr c, jr_004_780d

    ld e, $92
    scf
    scf
    ld c, $0e
    ld c, $3b
    dec sp
    ld c, $12
    ld c, $66
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub e
    ld c, d
    ld [de], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, l
    sub h
    ld c, l
    ld c, $27
    ld h, $95
    adc e
    ld h, l
    sub [hl]
    ld c, d
    ld [de], a
    ld l, b
    ld l, b
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    sub h
    sub a
    sub a
    sbc b
    ld h, a
    ld h, a
    ld h, a
    sbc c
    sub a
    ld c, $23
    sbc d
    inc [hl]
    sbc d
    ld a, [hl-]
    ld c, $0e
    ld c, $9b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld c, $65
    ld b, c
    ld c, $5a
    ld h, $26
    ld h, $12
    ld l, h
    sbc h
    ld c, $5d
    sbc l
    ld l, b
    sbc l
    ld h, $36
    ld [hl], $0e
    ld c, a
    ld [hl], l
    ld l, h
    sbc [hl]
    sbc a
    inc a
    inc a
    ld c, $5d
    add e
    sbc a
    and b
    and c
    and d
    add hl, sp
    add hl, sp
    and e
    and h
    and l
    ld c, d
    ld [de], a
    and [hl]
    and a
    and b
    xor b
    xor c
    xor d
    ld c, d
    ld c, $ab
    xor e
    xor h
    ld [hl], $36
    ld [hl], $4d
    add hl, de
    ld [de], a
    ld c, $12
    ld c, $36
    ld [hl], $4d
    dec sp
    ld h, [hl]
    xor l
    ld l, [hl]
    ld l, [hl]
    ld l, l
    xor [hl]
    ld l, d
    ld c, $6e
    xor a
    inc a
    inc a
    inc a
    inc a
    ld [hl], l
    add hl, sp
    ld [hl], a
    sbc a
    or b
    ld c, $19
    or c
    ld [hl], $77
    and b
    and c
    and h
    add hl, sp
    and d
    and e
    and h
    inc a
    ld c, $0e
    or d
    ld b, b
    or e
    or h
    or d
    ld c, $12
    ld c, $3b
    ld c, $12
    ld c, $0e
    inc hl
    ld c, $12
    ld c, $0e
    ld c, $3b
    ld c, $23
    ld c, $12
    ld c, $0e
    ld c, $3b
    ld c, $0e
    ld [hl], h
    inc h
    ld [hl], h
    inc h
    jr z, @+$76

    jr z, jr_004_79bc

    ld [hl], h
    inc d
    ld [hl], h
    inc d
    ld c, b
    ld c, h
    ld d, h
    ld d, h
    inc h
    jr z, jr_004_7977

    jr z, jr_004_79c9

    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    inc h
    ld [hl], h
    inc h
    jr z, jr_004_79d2

    jr z, jr_004_79d4

    ld [hl], h
    inc d
    ld [hl], h
    inc d
    inc h
    jr z, jr_004_798b

    jr z, @+$76

    ld [hl], h
    ld [hl], h
    ld [hl], h
    jr z, jr_004_7982

    jr z, jr_004_7984

    ld c, b
    ld l, b
    ld d, h
    ld l, b
    ld l, h
    ld l, h
    ld l, h

jr_004_7977:
    ld l, h
    inc b
    ld [$0408], sp
    ld [$0414], sp
    inc d
    ld d, h
    ld d, h

jr_004_7982:
    ld d, h
    ld d, h

jr_004_7984:
    ld d, h
    ld l, b
    ld d, h
    ld l, b
    ld [$0808], sp

jr_004_798b:
    ld [$0408], sp
    ld d, h
    ld d, h
    ld [$5448], sp
    ld d, h
    ld c, h
    ld c, b
    ld d, h
    ld d, h
    ld l, h
    ld l, b
    ld l, h
    ld l, b
    ld l, h
    ld l, h
    ld a, h
    ld a, b
    ld l, h
    ld l, b
    ld a, h
    ld l, b
    inc b
    ld [$0808], sp
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    ld l, b
    ld a, h
    ld l, b
    ld [$0804], sp
    ld [$7474], sp
    inc h
    jr z, jr_004_79c1

    ld [$0408], sp

jr_004_79bc:
    ld [$0408], sp
    inc d
    ld c, b

jr_004_79c1:
    ld c, h
    ld b, h
    ld b, h
    inc d
    ld d, h
    inc d
    ld d, h
    inc b

jr_004_79c9:
    ld [$0404], sp
    ld [$0404], sp
    inc b
    inc d
    ld c, h

jr_004_79d2:
    inc d
    ld d, h

jr_004_79d4:
    ld d, h
    ld d, h
    jr c, @+$3a

    inc b
    ld [$4040], sp
    ld [$4008], sp
    ld b, b
    inc a
    inc a
    ld b, h
    ld b, h
    inc a
    inc a
    inc a
    inc a
    ld [$4004], sp
    ld b, b
    inc h
    jr z, @+$26

    inc b
    inc h
    jr z, @+$76

    ld [hl], h
    inc h
    ld [$0424], sp
    ld [hl], h
    ld [hl], h
    ld [hl], h
    inc b
    inc b
    inc d
    inc b
    ld [$0804], sp
    ld d, h
    ld d, h
    ld [$4008], sp
    inc b
    ld b, h
    ld b, h
    inc b
    inc b
    inc b
    inc b
    ld [$0840], sp
    inc b
    ld [$4004], sp
    inc a
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld [$4404], sp
    ld b, h
    ld [$4008], sp
    ld b, b
    nop
    nop
    inc b
    inc b
    inc b
    ld [$0804], sp
    inc b
    ld [$4444], sp
    inc b
    ld [$0404], sp
    ld b, b
    ld b, b
    inc [hl]
    inc [hl]
    jr nc, jr_004_7a6c

    inc b
    ld [$0440], sp
    nop
    nop
    ld b, h
    ld b, h
    inc b
    ld [$0000], sp
    jr nc, jr_004_7a7a

    jr nc, jr_004_7a7c

    inc c
    inc c
    inc c
    inc c
    inc a
    inc l
    inc a
    inc a
    jr nc, jr_004_7a86

    inc a
    inc l
    inc b
    ld [$3c3c], sp
    inc a
    inc l
    ld b, h
    ld b, h
    jr nc, jr_004_7a92

    ld b, h
    ld b, h
    jr nc, jr_004_7a96

    jr z, jr_004_7aa4

    ld c, h
    ld [$044c], sp

jr_004_7a6c:
    inc a
    inc a
    jr nz, jr_004_7a94

    jr nz, jr_004_7a96

    inc a
    inc a
    ld c, h
    ld [$084c], sp
    ld b, h
    inc a

jr_004_7a7a:
    inc b
    ld c, b

jr_004_7a7c:
    ld [$0848], sp
    ld c, b
    ld [$0408], sp
    ld [$0404], sp

jr_004_7a86:
    ld [$0404], sp
    ld [$3030], sp
    inc b
    inc b
    ld c, h
    ld [$302c], sp

jr_004_7a92:
    inc a
    inc a

jr_004_7a94:
    jr nc, jr_004_7ac6

jr_004_7a96:
    inc l
    jr nc, jr_004_7ac9

    jr nc, jr_004_7acb

    jr z, jr_004_7acd

    jr z, @+$3e

    inc a
    jr nc, jr_004_7aca

    jr nc, jr_004_7acc

jr_004_7aa4:
    jr z, jr_004_7ae2

    inc a
    inc a
    ld [$0808], sp
    ld c, b
    ld [$3c04], sp
    inc a
    ld [$2004], sp
    inc h
    inc b
    ld c, b
    ld [$3c48], sp
    jr nz, jr_004_7af7

    inc a
    inc h
    inc a
    inc a
    inc a
    ld c, h
    ld [$0c0c], sp
    inc b
    ld c, b

jr_004_7ac6:
    inc c
    inc c
    inc c

jr_004_7ac9:
    inc c

jr_004_7aca:
    inc c

jr_004_7acb:
    ld b, h

jr_004_7acc:
    inc c

jr_004_7acd:
    inc c
    ld b, h
    inc c
    jr @+$3e

    db $10
    jr jr_004_7ae5

    db $10
    db $10
    db $10
    ld b, b
    ld b, b
    jr jr_004_7af4

    db $10
    db $10
    ld b, h
    ld b, h
    jr jr_004_7afa

jr_004_7ae2:
    db $10
    db $10
    ld c, b

jr_004_7ae5:
    jr @+$4a

    db $10
    db $10
    db $10
    inc e
    db $10
    db $10
    db $10
    db $10
    inc e
    db $10
    inc e
    inc e
    nop

jr_004_7af4:
    inc e
    inc e
    nop

jr_004_7af7:
    nop
    db $10
    db $10

jr_004_7afa:
    inc e
    inc e
    inc c
    inc b
    inc c
    inc c
    inc b
    inc c

Call_004_7b02:
    inc c
    inc c
    ld [$0404], sp
    ld [$101c], sp
    jr jr_004_7b1c

    ld [$1004], sp
    db $10
    inc b
    inc b
    ld [$0004], sp
    inc e
    nop
    nop
    inc e
    nop
    ld b, h
    ld b, h

jr_004_7b1c:
    inc l
    nop
    nop
    nop
    inc e
    db $10
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    nop
    inc l
    nop
    nop
    ld e, b
    ld e, h
    nop
    nop
    jr z, jr_004_7b58

    nop
    ld e, b
    jr z, jr_004_7b5c

    ld d, b
    ld d, h
    jr z, jr_004_7b60

    inc b
    ld c, b
    inc b
    ld c, b
    inc a
    inc a
    inc a
    jr jr_004_7b7d

    jr jr_004_7b5b

    db $10
    jr jr_004_7b56

    inc e
    stop
    inc l
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    inc l
    ld b, h
    ld b, h
    nop
    ld e, b

jr_004_7b56:
    ld e, b
    ld d, b

jr_004_7b58:
    ld e, h
    nop
    ld d, h

jr_004_7b5b:
    ld e, h

jr_004_7b5c:
    jr jr_004_7b76

    ld b, h
    ld b, h

jr_004_7b60:
    jr jr_004_7b9e

    ld b, h
    ld b, h
    inc a
    inc a
    jr @+$1a

    jr jr_004_7b7a

    db $10
    db $10
    ld [$1008], sp
    db $10
    inc a
    inc e
    inc a
    jr @+$06

    ld c, b

jr_004_7b76:
    inc b
    ld [$1018], sp

jr_004_7b7a:
    ld [$1008], sp

jr_004_7b7d:
    db $10
    ld [$1004], sp
    db $10
    inc b
    ld [$0804], sp
    ld [$0804], sp
    inc b
    ld [$4008], sp
    ld b, b
    jr jr_004_7bcc

    db $10
    jr jr_004_7ba3

    db $10
    inc b
    ld [$1010], sp
    db $10
    inc e
    db $10
    jr jr_004_7bad

    db $10

jr_004_7b9e:
    inc b
    inc b
    db $10
    db $10
    inc b

jr_004_7ba3:
    inc b
    db $10
    db $10
    inc b
    inc b
    inc b
    inc b
    ld [$4008], sp

jr_004_7bad:
    ld b, b
    inc a
    jr jr_004_7bb1

jr_004_7bb1:
    nop
    inc l
    nop
    jr jr_004_7bce

    inc e
    stop
    inc e
    inc l
    nop
    nop
    nop
    nop
    ld l, b
    nop
    ld l, b
    ld l, b
    ld l, h
    ld l, b
    ld l, h
    ld l, h
    ld h, b
    ld b, b
    ld b, b
    ld l, b
    nop

jr_004_7bcc:
    ld b, b
    nop

jr_004_7bce:
    nop
    ld l, b
    ld l, b
    nop
    ld l, h
    ld l, b
    ld l, b
    ld l, h
    ld l, h
    ld [hl], b
    ld l, h
    ld l, b
    ld [hl], b
    ld l, h
    ld l, b
    nop
    ld [hl], b
    ld l, b
    ld l, b
    ld l, h
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld l, h
    nop
    ld [hl], b
    ld h, b
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    jr jr_004_7c06

    db $10
    inc e
    inc e
    stop
    inc e
    inc e
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc b
    inc b

jr_004_7c06:
    ld [$6000], sp
    ld h, b
    ld b, h
    ld b, h
    ld h, b
    nop
    ld b, h
    ld b, h
    nop
    ld h, b
    ld b, h
    ld b, h
    inc b
    ld [$0408], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld de, $1717
    ld de, $1111
    ld de, $1717
    nop
    nop
    nop
    nop
    ld de, $1711
    rla
    nop
    nop
    nop
    nop
    ld de, $1111
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0011
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0017
    cp e
    ld [hl], b
    ld [hl], b
    ld de, $1111
    ld de, $7070
    nop
    nop
    ld de, $1177
    ld [hl], a
    nop
    cp e
    nop
    nop
    ld de, $1177
    ld de, $1111
    ld de, $1111
    ld de, $1117
    ld de, $1100
    ld [hl], c
    cp e
    ld de, $1711
    ld de, $7011
    nop
    nop
    nop
    cp e
    ld de, $11bb
    ld [hl], a
    nop
    ld de, $1111
    ld de, $11bb
    ld de, $0077
    nop
    ld de, $0071
    cp e
    ld de, $0000
    nop
    db $dd
    db $dd
    nop
    nop
    nop
    nop
    ld de, $0000
    cp e
    nop
    cp e
    nop
    nop
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    or b
    rla
    rla
    rla
    ld de, $1411
    ld de, $0011
    ld de, $0071
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1117
    nop
    ld de, $1700
    rla
    nop
    nop
    nop
    nop
    ld [hl], c
    db $dd
    rla
    db $dd
    db $dd
    db $db
    db $dd
    cp l
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    nop
    cp e
    nop
    nop
    ld [hl], b
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
    pop de
    db $dd
    dec e
    db $dd
    ld de, $0011
    nop
    ld de, $1100
    ld de, $0000
    nop
    cp e
    nop
    nop
    nop
    cp e
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rla
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    cp e
    nop
    cp e
    nop
    nop
    nop
    nop
    ld de, $0000
    nop
    rla
    ld de, $1100
    nop
    inc d
    nop
    ld b, c
    ld b, c
    ld de, $1114
    ld [hl], a
    nop
    nop
    nop
    ld de, $0000
    nop
    nop
    ld de, $1400
    nop
    ld b, c
    ld de, $7711
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1100
    stop
    cp e
    nop
    cp e
    nop
    cp e
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_004_7fbe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
