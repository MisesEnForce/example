; Disassembly of "rom.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_09a7


Jump_000_0003:
    nop

Call_000_0004:
Jump_000_0004:
    nop

Call_000_0005:
Jump_000_0005:
    nop
    nop

Call_000_0007:
    nop

RST_08::
    ld a, [hl+]

Call_000_0009:
    ld [de], a
    inc e
    ret


    nop

Call_000_000d:
    nop
    nop
    nop

RST_10::
    ld [hl+], a
    inc a

Call_000_0012:
    ld [hl], a
    inc a
    add hl, bc
    push af
    ld a, h
    db $e6

RST_18::
    ei
    ld h, a
    pop af
    ret


    nop
    nop
    nop
    nop

RST_20::
    ld a, e
    add $08
    ld e, a
    ret


    nop
    nop
    nop

RST_28::
    push hl
    push de
    push bc
    call Call_000_0bf8
    pop bc
    pop de

RST_30::
    pop hl
    ret


    nop
    nop
    nop
    nop
    nop
    nop

RST_38::
    nop
    nop
    nop

Call_000_003b:
    nop
    nop
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_09b7


    nop

Call_000_0044:
    jp Jump_000_00b0


    nop

LCDCInterrupt::
    reti


Call_000_0049:
    jp Jump_000_0bae


Call_000_004c:
    jp Jump_000_0ba8


    nop

TimerOverflowInterrupt::
    reti


Call_000_0051:
Jump_000_0051:
    call Call_000_05c7
    jp Jump_000_00ed


    nop

SerialTransferCompleteInterrupt::
    reti


Call_000_0059:
    call Call_000_05b2
    jp Jump_000_00ed


    nop

JoypadTransitionInterrupt::
    reti


Call_000_0061:
    push hl
    ld hl, $c20e
    add h
    ld h, a
    ld a, b

    cp [hl]
    jr z, jr_000_006f

    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a

jr_000_006f:
    pop hl
    ret


Call_000_0071:
    add l
    ld l, a
    ret nc

    inc h
    ret


    nop
    nop

Call_000_0078:
    nop
    nop

Call_000_007a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0081:
Jump_000_0081:
    push bc
    ld b, $00
    sla a
    rl b
    ld c, a
    add hl, bc
    pop bc
    ret


    nop
    nop
    nop
    nop

Call_000_0090:
Jump_000_0090:
    xor a
    ld [$c267], a
    halt
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_00a0:
    call Call_000_0ba1
    call Call_000_0b86
    ld a, $03
    ld [$3000], a
    jp $4000


    nop
    nop

Call_000_00b0:
Jump_000_00b0:
    push hl
    push de

Call_000_00b2:
    push bc
    ld b, $a0
    xor a
    ld hl, $c000

jr_000_00b9:
    ld [hl+], a
    dec b
    jr nz, jr_000_00b9

    ld [$c26c], a
    pop hl
    pop de
    pop bc

Jump_000_00c3:
    ret


    nop
    nop
    nop
    nop

Call_000_00c8:
    ld hl, $19a6

Jump_000_00cb:
    call Call_000_195b

Call_000_00ce:
    jr jr_000_00ed

Call_000_00d0:
Jump_000_00d0:
jr_000_00d0:
    push af
    call Call_000_0090

Call_000_00d4:
    pop af
    dec a
    jr nz, jr_000_00d0

    ret


    nop
    nop
    nop

Call_000_00dc:
    nop
    nop
    nop
    nop

Call_000_00e0:
    call Call_000_0090
    jr jr_000_00ed

Call_000_00e5:
    call Call_000_0b86
    jr jr_000_00ed

    call Call_000_198b

Jump_000_00ed:
jr_000_00ed:
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    ret


    nop
    nop

Jump_000_00f8:
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_00fe:
    nop
    nop

Boot::
    nop

Call_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "NAUMOVIC'S", $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $02

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $08

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $07

HeaderGlobalChecksum::
    db $69, $3a

Jump_000_0150:
    ld hl, $c000
    ld bc, $2000
    xor a

jr_000_0157:
    ld [hl+], a
    dec c
    jr nz, jr_000_0157

    dec b
    jr nz, jr_000_0157

    ld sp, $c0ff
    call Call_000_0b65
    ld a, $f0
    rst RST_28
    ld a, $01
    ldh [rIE], a
    ld [$c269], a
    call Call_000_0b86
    call Call_000_198b
    ld b, $14
    call Call_000_1f64
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    xor a
    ld [$df39], a
    call $4003
    call Call_000_00b0
    call Call_000_05c7
    ld a, $40
    call Call_000_00d0
    call Call_000_0b86
    xor a
    ld [$df08], a
    ld [$df09], a
    ld a, $01
    ld [$df01], a
    ld [$df0b], a
    ld a, $c3
    ld [$df0a], a
    ld a, [$c7c0]
    rrca
    jr c, jr_000_01de

    ld a, $02
    ld [$df15], a
    xor a
    ld [$df14], a

Call_000_01b9:
    ld [$df0e], a
    ld [$df13], a

Jump_000_01bf:
    ld [$df19], a

Jump_000_01c2:
    ld [$df18], a
    ld [$df1b], a
    ld [$df1a], a
    ld a, $07
    ld [$df03], a
    ld [$df04], a
    ld a, $01
    ld [$df17], a
    xor a
    ld [$df07], a
    jr jr_000_01e1

jr_000_01de:
    call Call_000_25ff

Jump_000_01e1:
jr_000_01e1:
    call Call_000_00a0
    ld hl, $c000
    ld bc, $0800
    xor a

jr_000_01eb:
    ld [hl+], a
    dec c
    jr nz, jr_000_01eb

    dec b
    jr nz, jr_000_01eb

    call Call_000_00a0
    ld hl, $c800
    ld bc, $0800
    xor a
    call Call_000_0bae
    call Call_000_00a0
    ld hl, $d000
    ld bc, $0a00
    xor a

Call_000_0209:
    call Call_000_0bae
    call Call_000_00a0
    ld sp, $c0ff
    ld a, [$df01]
    bit 1, a
    jr nz, jr_000_0229

    rlca
    jr nz, jr_000_0229

    ld a, [$df33]
    and a
    jr nz, jr_000_0229

    ld a, [$df09]
    bit 0, a
    jr nz, jr_000_0230

jr_000_0229:
    call Call_000_1931
    xor a
    ld [$df33], a

jr_000_0230:
    call Call_000_0ba7
    call Call_000_00a0
    call Call_000_0c10
    call Call_000_00a0
    call Call_000_00b0
    ld a, $07
    ld [$c361], a
    ldh [rSCX], a
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call $031f
    call Call_000_00a0
    ld b, $90
    ld a, [$df01]
    bit 0, a
    jr nz, jr_000_025e

    ld b, $80

jr_000_025e:
    ld a, b
    ld [$c360], a
    ldh [rWY], a
    ld b, $e3
    ld a, b
    ldh [rLCDC], a
    ei
    halt
    ld a, [$df01]
    rrca
    jp c, Jump_000_06cb

    ld hl, $02e8
    ld a, [$df02]
    call Call_000_0071
    ld a, [hl]
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    ld a, [$df02]
    cp $19
    jr nc, jr_000_028e

    call Call_000_08c6
    jr jr_000_0299

jr_000_028e:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4ee8

jr_000_0299:
    ld b, $8f
    call Call_000_1f64
    call Call_000_1f55
    ld hl, $02c5
    ld a, [$df02]
    call Call_000_0071
    ld b, [hl]
    call Call_000_2039
    ld a, $31
    ld [$c200], a
    call Call_000_23b9
    call Call_000_0972
    call Call_000_05b2
    call Call_000_246b

Jump_000_02bf:
    call Call_000_2178
    jp Jump_000_0789


    ld bc, $0300
    nop
    dec b
    rlca
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    nop
    inc b
    inc b

Jump_000_02d4:
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0403
    dec b
    ld b, $07

jr_000_02ed:
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

Jump_000_02fc:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc

Call_000_0303:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    ldh a, [rLCDC]
    add b
    nop
    nop
    ld [bc], a
    add b
    inc bc
    nop
    inc bc
    add b
    inc b
    nop
    ld bc, $0220
    jr nz, jr_000_031e

    jr nz, @+$03

jr_000_031e:
    jr nz, jr_000_02ed

    cp $22
    xor a
    ld [$c288], a
    ld a, [$df15]
    ld [$c20a], a
    ld a, [$df13]
    ld hl, $030b
    call Call_000_0071
    ld a, [hl]
    ld [$df11], a
    dec a
    ld [$df12], a
    call Call_000_06a6
    ld a, [$df07]
    bit 1, a
    jr nz, jr_000_0355

    ld hl, $0543
    ld d, $00
    ld a, [$df03]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c399], a

jr_000_0355:
    ld a, $80
    ld [$c3c3], a
    call Call_000_1def
    ld a, $01
    ld [$3000], a
    ld a, $02
    ld [$3000], a
    call $6860
    ld a, [$df01]
    bit 0, a
    jr z, jr_000_038a

    ld a, [$df07]
    bit 1, a
    ret nz

    ld a, $08
    ld [$c3a9], a
    ld bc, $04e9
    ld hl, $048f
    ld a, [$df03]
    ld [$df00], a
    jr jr_000_03a3

jr_000_038a:
    ld bc, $043d
    ld hl, $03eb
    ld a, [$df06]
    bit 0, a
    jr z, jr_000_039d

    ld bc, $0483
    ld hl, $0431

jr_000_039d:
    ld a, [$df02]
    ld [$df00], a

jr_000_03a3:
    ld d, $00
    ld a, [$df00]
    rlca
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c364], a
    ld [$c366], a
    ld a, [hl]
    ld [$c362], a
    ld [$c367], a
    ld h, b
    ld l, c
    ld a, [$df00]
    rlca
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$c206], a
    ld [$c368], a
    ld a, [hl]
    ld [$c203], a
    ld [$c369], a
    ld a, [$c364]
    add $58
    jr nc, jr_000_03dd

    ld a, [$c207]
    inc a
    ld [$c207], a

jr_000_03dd:
    ld a, [$c362]
    add $50
    ret nc

    ld a, [$c204]

jr_000_03e6:
    inc a
    ld [$c204], a

jr_000_03ea:
    ret


    nop
    add b
    nop

jr_000_03ee:
    add b
    nop
    add b
    nop

jr_000_03f2:
    nop
    nop
    ld d, b
    nop
    add b
    nop
    add b
    ld h, b

jr_000_03fa:
    add b
    nop
    add b
    ld h, b
    ld d, b
    nop
    add b
    ld h, b
    add b
    nop
    jr nz, jr_000_0406

jr_000_0406:
    add b
    ld h, b
    add b
    nop
    add b
    ld h, b
    add b
    nop
    jr nc, @+$62

    ld d, b
    nop
    jr nc, jr_000_0474

    ld d, b
    nop
    jr nc, @+$62

    ld d, b
    nop
    jr nc, @+$62

    ld d, b
    nop
    stop
    add b

jr_000_0421:
    db $10
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

Call_000_042d:
    nop
    ld d, b
    nop

jr_000_0430:
    ld [hl], b
    ldh [rSVBK], a
    jr nc, jr_000_0465

    ld d, b
    ld h, b
    ld b, b

jr_000_0438:
    jr nc, jr_000_03fa

    ret nz

    nop
    nop
    ld [$08d5], sp
    push hl
    ld [$08e5], sp
    ld d, l

jr_000_0445:
    ld [$08a5], sp

jr_000_0448:
    push hl
    jr c, jr_000_0430

    add sp, -$1b
    jr c, @-$19

    add sp, -$5b
    jr c, jr_000_0438

jr_000_0453:
    add sp, -$1b
    jr c, jr_000_04cc

    jr c, @-$19

    add sp, -$1b

jr_000_045b:
    jr c, @-$19

    add sp, -$1b
    jr c, jr_000_03e6

    add sp, -$6b
    jr c, jr_000_03ea

jr_000_0465:
    add sp, -$6b
    jr c, jr_000_03ee

    add sp, -$6b
    jr c, jr_000_03f2

    add sp, -$6b
    jr z, @+$67

    jr z, jr_000_0448

    ld l, b

jr_000_0474:
    push de
    jr z, @-$19

    jr z, @-$19

    jr z, @-$19

    jr c, @-$29

    jr z, @-$19

    ld c, b
    and l
    nop
    nop
    jr c, jr_000_0445

    adc b
    add b
    xor b
    or b
    sbc b
    add b
    jr jr_000_049d

    nop
    nop
    cp b
    ld b, b
    jr z, jr_000_0493

jr_000_0493:
    ld [$68a0], sp
    jr nz, jr_000_0500

    jr nz, jr_000_0512

    ret nc

    ld hl, sp-$60

jr_000_049d:
    jr z, @+$22

    jr c, jr_000_0421

    ld c, b
    add b
    ld e, b
    add b
    jr @+$62

    ld [$1870], sp
    ldh [rNR23], a
    sub b

jr_000_04ad:
    jr @-$6e

    jr z, @+$62

    jr jr_000_0513

    ld [$3880], sp
    sub b
    jr c, @-$7e

    jr jr_000_045b

    jr jr_000_04ad

    ret c

    ldh [$ff88], a
    ret nc

    jr jr_000_0453

    ret z

    sub b

jr_000_04c5:
    cp b
    ldh [$ff38], a
    db $10
    ret c

    db $10
    ld l, b

jr_000_04cc:
    ldh a, [rBCPS]
    jr nc, jr_000_0538

    and b
    adc b
    add b
    sbc b
    ld [hl], b
    add sp, $60
    ld c, b
    ld [hl], b
    ret z

    and b
    ld e, b
    nop
    ld e, b
    nop
    add sp, -$80
    ret c

    jr nc, jr_000_054c

    ld b, b
    cp b
    and b
    jr @-$3e

    db $10
    sbc b
    add b
    ld e, b
    ld h, b
    ld hl, sp-$40
    ld a, b
    ret nz

    ld a, b
    ret nc

    jr z, jr_000_0546

    ld hl, sp-$80
    ld a, b
    sub b
    ret c

    and b
    ret c

    or b
    ret c

Jump_000_04ff:
    ld [hl], b

jr_000_0500:
    cp b
    ld h, b
    ret z

    ld [hl], b
    jr c, @+$72

    add sp, $70
    add sp, -$80

Jump_000_050a:
    cp b
    ld [hl], b
    cp b
    ld h, b
    ret c

    sub b
    add sp, -$70

jr_000_0512:
    ret c

jr_000_0513:
    ld [hl], b
    ld hl, sp+$70
    ld c, b
    jr nc, jr_000_0551

    ldh [$ff28], a
    ld [hl], b
    add sp, $20
    add sp, $10
    jr c, @-$6e

    ld l, b
    jr nc, jr_000_058d

    ret nz

    ld c, b
    ret nz

    adc b
    ret nz

    ld hl, sp-$20
    ret c

jr_000_052d:
    ldh a, [$ffc8]
    ld b, b
    cp b
    and b
    ret z

    jr nz, jr_000_052d

    or b
    ld e, b
    or b

jr_000_0538:
    ld e, b
    ld b, b
    ret c

    jr nc, jr_000_04c5

    ret nz

    sbc b
    db $10
    ld hl, sp+$70
    jr jr_000_0590

    inc bc
    and c

jr_000_0546:
    daa
    daa
    ret c

    and b
    inc hl
    add h

jr_000_054c:
    add l
    add [hl]
    ld h, d
    ld [hl], c
    ldh [c], a

jr_000_0551:
    sub d
    sub d
    ld h, e
    ld h, d
    add c
    sub h
    add h
    and d
    ldh a, [c]
    xor $d9
    sub d
    sbc l
    db $ec
    inc d
    ld e, $f7
    scf
    and a
    adc c
    ld a, d
    ld l, a
    ld [hl], l
    xor l
    ld b, $06
    adc a
    ld a, $47
    xor h
    jp nz, Jump_000_06fa

    rst RST_18
    and $01
    ld [$df06], a
    call Call_000_05c7
    call Call_000_0b86
    ld a, $03
    ld [$3000], a
    call $4000
    ld a, [$df01]
    bit 1, a
    jr z, jr_000_05a1

jr_000_058d:
    ld [$df05], a

jr_000_0590:
    ld a, $23
    ld [$df00], a
    ld hl, $19a6
    call Call_000_195b
    ld a, [$c3c5]
    ld [$3000], a

jr_000_05a1:
    jp Jump_000_01e1


Call_000_05a4:
    ld a, $02
    ld [$3000], a
    call $4000
    ld a, $01
    ld [$3000], a
    ret


Call_000_05b2:
    ld b, $20
    ld hl, $060e
    jr jr_000_05f7

Call_000_05b9:
    ld b, $20
    ld hl, $0616
    jr jr_000_05f7

    ld b, $20
    ld hl, $061e
    jr jr_000_05f7

Call_000_05c7:
    ld a, $01
    ld [$df09], a
    ld a, [$df01]
    rlca
    jr c, jr_000_05d9

    ld a, [$df08]
    cp $02
    jr z, jr_000_05e2

Call_000_05d9:
jr_000_05d9:
    xor a
    ld [$df09], a
    ld b, $70
    ld a, $f6
    rst RST_28

Call_000_05e2:
jr_000_05e2:
    ld b, $20
    ld hl, $0626
    jr jr_000_05f7

Call_000_05e9:
    ld b, $20
    ld hl, $062e
    jr jr_000_05f7

    ld b, $20
    ld hl, $0636
    jr jr_000_05f7

jr_000_05f7:
    ld a, b
    and $07
    jr nz, jr_000_0607

    ld a, [hl+]
    ld [$c669], a
    ld [$c66b], a
    ld a, [hl+]
    ld [$c66a], a

jr_000_0607:
    dec b
    ret z

    call Call_000_0090
    jr jr_000_05f7

    nop
    nop
    inc b
    inc b
    jr jr_000_061c

    ld l, h
    inc e
    db $fc

Call_000_0617:
    inc e
    db $fc
    inc e
    cp h
    inc e

jr_000_061c:
    ld l, h
    inc e
    nop
    inc e
    inc b
    inc e
    jr @+$1e

    ld l, h
    inc e
    ld l, h
    inc e
    ld [$0418], sp
    inc b
    nop
    nop
    ld l, h
    inc e
    cp h
    inc e
    db $fc
    inc e
    db $fc
    inc e
    ld l, h
    inc e
    ld [$041c], sp
    inc e
    nop
    inc e

Call_000_063e:
jr_000_063e:
    ld bc, $c669
    ld de, $6c93
    ld hl, $c57e
    dec [hl]
    jr z, jr_000_0666

    call Call_000_0652
    call Call_000_0090
    jr jr_000_063e

Call_000_0652:
    ld a, [$c26a]
    ld h, a
    and $03
    ret nz

    bit 2, h
    jr z, jr_000_0660

    ld a, d
    ld [bc], a
    ret


jr_000_0660:
    ld a, $2c
    rst RST_28
    ld a, e
    ld [bc], a
    ret


Call_000_0666:
jr_000_0666:
    ld a, d
    ld [bc], a
    ret


Call_000_0669:
    ld de, $1c00
    ld bc, $c66b

Call_000_066f:
    ld hl, $c57f
    ld a, [hl]
    and a
    jr z, jr_000_0682

    dec [hl]
    bit 2, a
    ld a, e
    jr z, jr_000_0680

    ld a, $2c
    rst RST_28
    ld a, d

jr_000_0680:
    ld [bc], a
    ret


jr_000_0682:
    ld a, d
    ld [bc], a
    ret


Call_000_0685:
jr_000_0685:
    ld a, [$c690]
    rlca
    ret c

    ld a, [$c3a7]
    and a
    jr z, jr_000_06a0

    call Call_000_1448
    call Call_000_1123
    ld a, $01
    ld [$c3c5], a
    call Call_000_0090
    jr jr_000_0685

jr_000_06a0:
    ld a, $24
    rst RST_28
    call Call_000_2125

Call_000_06a6:
    ld a, [$df0e]
    ld hl, $030f
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld [$df0f], a
    ld a, [hl]
    ld [$df10], a
    ld a, [$df38]
    rlca
    ld hl, $0317
    call Call_000_0071
    ld a, [hl+]
    ld [$c29e], a
    ld a, [hl]
    ld [$c29f], a
    ret


Jump_000_06cb:
    ld a, $01
    ld [$c200], a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld a, $80
    ld [$c274], a
    ld b, a
    xor a
    call Call_000_0061
    call $70a4
    call $4ee8
    call Call_000_0090
    call Call_000_3236
    call Call_000_3241
    call Call_000_0090
    call Call_000_3236
    call Call_000_3241

Jump_000_06fa:
    call Call_000_05b2
    ld a, [$df03]
    and a
    jp z, Jump_000_2bc4

    cp $28
    jp z, Jump_000_2e35

    cp $2c
    jp z, Jump_000_2e47

    cp $1b
    jp z, Jump_000_2e2e

    cp $15
    jp nc, Jump_000_2bc4

    cp $12
    jp z, Jump_000_2e14

    cp $0b
    jp z, Jump_000_2ca9

    cp $0d
    jp z, Jump_000_2cb4

    cp $0e
    jp z, Jump_000_2d55

    cp $0f
    jp z, Jump_000_2d74

    cp $10
    jp z, Jump_000_2da3

    cp $11
    jp z, Jump_000_2df1

    dec a
    jp z, Jump_000_2c0a

    dec a
    jp z, Jump_000_2c0a

    dec a
    jp z, Jump_000_2c0a

    dec a
    jp z, Jump_000_2c0a

    dec a
    jp z, Jump_000_2c12

    dec a
    jp z, Jump_000_2c0a

    dec a
    jp z, Jump_000_2c49

    jp Jump_000_2c02


Call_000_075a:
    call Call_000_1d15
    ld a, [$c274]
    ld b, a
    xor a
    call Call_000_0061
    call Call_000_147d
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    ld a, $08
    ld [$c7cb], a
    call $69c4
    jp Jump_000_0090


Jump_000_0789:
    ld a, [$df19]
    rrca
    jr nc, jr_000_0794

    ld a, $81
    ld [$df19], a

jr_000_0794:
    ld a, [$df02]
    cp $06
    jr nc, jr_000_07a5

    ld b, $40
    ld a, [$df06]
    bit 0, a
    call z, Call_000_0854

jr_000_07a5:
    xor a
    ld [$c693], a
    ld a, [$df02]
    call Call_000_0b7d
    ld e, e
    ld h, $32
    daa
    nop
    jr z, @-$7d

    jr z, jr_000_07bf

    add hl, hl
    ld a, c
    add hl, hl
    call nz, $f229
    add hl, hl

jr_000_07bf:
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    call nz, $f229
    add hl, hl
    dec h
    ld a, [hl+]
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    ret


    add hl, hl
    rst RST_30
    add hl, hl
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    add a
    dec hl

Call_000_07f3:
Jump_000_07f3:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $6ee1
    ld a, [$c200]
    bit 0, a
    jp z, Jump_000_2524

    ld a, [$c262]
    bit 3, a
    jr z, jr_000_0810

    call Call_000_0685

jr_000_0810:
    jr jr_000_0825

    ld a, [$df13]
    inc a
    and $03
    ld [$df13], a
    ld hl, $030b
    call Call_000_0071
    ld a, [hl]
    ld [$df11], a

jr_000_0825:
    ld a, [$c274]
    ld b, a
    xor a
    call Call_000_0061
    call Call_000_1448
    ld a, [$c690]
    and a
    jr nz, jr_000_0839

    call Call_000_1123

jr_000_0839:
    call Call_000_088e
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    call Call_000_08aa
    jp Jump_000_0090


Call_000_0854:
jr_000_0854:
    push bc
    xor a
    ld [$c262], a
    ld a, $10
    ld [$c261], a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $44df
    ld a, [$c274]
    ld b, a
    xor a
    call Call_000_0061
    call Call_000_1eb2
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    call Call_000_0090
    pop bc
    dec b
    jr nz, jr_000_0854

    ret


Call_000_088e:
    ld a, [$c20e]
    cp $0a
    jr z, jr_000_0898

    cp $0b
    ret nz

jr_000_0898:
    ld b, $03

Call_000_089a:
    ld a, [$c203]
    add b
    ld [$c203], a
    ret nc

    ld a, [$c204]
    inc a
    ld [$c204], a
    ret


Call_000_08aa:
    ld a, [$c20e]
    cp $0a
    jr z, jr_000_08b4

    cp $0b
    ret nz

jr_000_08b4:
    ld b, $03

Call_000_08b6:
    ld a, [$c203]
    sub b
    ld [$c203], a
    ret nc

    ld a, [$c204]
    dec a
    ld [$c204], a
    ret


Call_000_08c6:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld hl, $c7cc
    ld a, [$c365]
    ld [hl+], a
    ld a, [$c363]
    ld [hl+], a
    ld a, [$c364]
    ld [hl+], a
    sub $b0
    ld [$c364], a
    jr nc, jr_000_08eb

    ld a, [$c365]
    dec a
    ld [$c365], a

jr_000_08eb:
    ld a, [$c362]
    ld [hl], a
    sub $b0
    ld [$c362], a
    jr nc, jr_000_08fd

    ld a, [$c363]
    dec a
    ld [$c363], a

jr_000_08fd:
    ld a, [$c3a5]

Call_000_0900:
    ld b, a
    ld a, [$c3a4]
    cp b
    jr nc, jr_000_094a

    ld a, $b0

Call_000_0909:
    ld [$c7d0], a

jr_000_090c:
    ld a, [$c362]
    ld [$c367], a
    inc a
    ld [$c362], a
    jr nz, jr_000_091f

    ld a, [$c363]
    inc a
    ld [$c363], a

jr_000_091f:
    call $4cf5
    ld a, [$c7d0]
    dec a
    ld [$c7d0], a
    jr nz, jr_000_090c

jr_000_092b:
    ld hl, $c7cc
    ld a, [hl+]
    ld [$c365], a
    ld a, [hl+]
    ld [$c363], a
    ld a, [hl+]
    ld [$c364], a
    ld a, [hl]
    ld [$c362], a
    ld [$c367], a
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    ret


jr_000_094a:
    ld a, $b0
    ld [$c7d0], a

jr_000_094f:
    ld a, [$c364]
    inc a
    ld [$c364], a
    jr nz, jr_000_095f

    ld a, [$c365]
    inc a
    ld [$c365], a

jr_000_095f:
    ld a, $10
    ld [$c261], a
    call $4cf5
    ld a, [$c7d0]
    dec a
    ld [$c7d0], a
    jr nz, jr_000_094f

    jr jr_000_092b

Call_000_0972:
    ld b, $06

jr_000_0974:
    push bc
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call Call_000_1eb2
    call $6967
    call $69c4
    call Call_000_0090
    pop bc
    dec b
    jr nz, jr_000_0974

    ret


Call_000_0999:
    ld a, $01
    ld [$3000], a
    ld [$c3c5], a
    call $4f23
    jp Jump_000_0090


Jump_000_09a7:
    ld a, [$df18]
    ld c, $00

jr_000_09ac:
    sub $0a
    jr c, jr_000_09b3

    inc c
    jr jr_000_09ac

jr_000_09b3:
    add $0a
    ld b, a
    ret


Jump_000_09b7:
    push af
    push bc
    push de
    push hl
    ld a, [$c267]
    and a
    jp nz, Jump_000_0b10

    call $ff80
    ld a, [$c688]
    and a
    jr z, jr_000_09e3

    ld h, a
    ld a, [$c687]
    ld l, a
    xor a
    ld [$c688], a

Call_000_09d4:
    ld d, a
    ld e, $1f
    ld bc, $c689
    ld a, [bc]
    ld [hl+], a
    inc a
    ld [hl], a
    add hl, de
    inc a
    ld [hl+], a
    inc a
    ld [hl], a

jr_000_09e3:
    ld a, [$df01]
    rrca
    jr nc, jr_000_09f2

    call Call_000_17cc
    call $18bd
    jp Jump_000_0a95


jr_000_09f2:
    ld a, [$c79e]
    or a
    jr z, jr_000_0a16

    ld hl, $9c2b
    ld de, $c790
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    xor a
    ld [$c79e], a

jr_000_0a16:
    ld a, [$c79f]
    or a
    jr z, jr_000_0a34

    ld hl, $9c23
    ld de, $c797
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    xor a
    ld [$c79f], a

jr_000_0a34:
    ld a, [$c7be]
    or a
    jr z, jr_000_0a4b

    ld h, a
    ld a, [$c7bd]
    ld l, a
    ld a, [$c7a1]
    ld [hl+], a
    ld a, [$c7a2]
    ld [hl], a
    xor a
    ld [$c7be], a

jr_000_0a4b:
    ld a, [$c690]
    rrca
    jr nc, jr_000_0a95

    ld de, $ca61
    ld a, [de]
    and a
    jr z, jr_000_0a77

    xor a
    ld [de], a
    ld e, $66
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    inc e
    ld bc, $001f

jr_000_0a65:
    ld a, [de]
    inc e
    cp $ff
    jr z, jr_000_0a6e

    ld [hl+], a
    jr jr_000_0a65

jr_000_0a6e:
    ld e, $66
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    jr jr_000_0ada

jr_000_0a77:
    ld a, [$c7a0]
    or a
    jr z, jr_000_0a95

    ld a, [$c7bb]
    ld l, a
    ld a, [$c7bc]
    ld h, a
    xor a
    ld [$c7a0], a
    ld d, a
    ld e, $20
    ld a, $c9
    ld b, $08

jr_000_0a90:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_0a90

Jump_000_0a95:
jr_000_0a95:
    ld a, [$c3a7]
    or a
    jr nz, jr_000_0ad7

    ld a, [$c79d]
    or a
    jr z, jr_000_0aba

    ld a, [$c7b6]
    ld l, a
    ld a, [$c7b7]
    ld h, a
    ld a, [$c7b3]
    ld b, a
    ld de, $c770

jr_000_0ab0:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_0ab0

    xor a
    ld [$c79d], a

jr_000_0aba:
    ld a, [$c79c]
    or a
    jr z, jr_000_0ad7

    ld a, [$c7ab]
    ld l, a
    ld a, [$c7ac]
    ld h, a
    ld de, $c760
    ld b, $10

jr_000_0acd:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_0acd

    xor a
    ld [$c79c], a

jr_000_0ad7:
    call Call_000_0d7d

jr_000_0ada:
    ld a, [$c362]
    ldh [rSCY], a
    ld a, [$c364]
    ldh [rSCX], a
    ld a, [$c360]
    ldh [rWY], a
    ld a, [$c361]
    ldh [rWX], a
    ld a, [$c669]
    ldh [rBGP], a
    ld a, [$c66a]
    ldh [rOBP0], a
    ld a, [$c66b]
    ldh [rOBP1], a
    ld a, [$c26a]
    inc a
    ld [$c26a], a
    ld a, $01
    ld [$c267], a
    xor a
    ld [$c3a6], a
    call Call_000_0b31

Jump_000_0b10:
    ld a, $03
    ld [$3000], a
    call $4000
    call Call_000_204a
    call Call_000_1f72
    ld a, $01
    ld [$3000], a
    call Call_000_33a9
    ld a, [$c3c5]
    ld [$3000], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_0b31:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ld a, [$c261]
    xor c
    and c
    ld [$c262], a
    ld a, c
    ld [$c261], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_0b65:
    ld c, $80
    ld b, $0a
    ld hl, $0b73

jr_000_0b6c:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, jr_000_0b6c

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_0b79:
    dec a
    jr nz, jr_000_0b79

    ret


Call_000_0b7d:
    add a
    pop hl
    call Call_000_0071
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_0b86:
    ldh a, [rIE]
    ld [$c268], a
    res 0, a
    ldh [rIE], a

jr_000_0b8f:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_0b8f

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ld a, [$c268]
    ldh [rIE], a
    ret


Call_000_0ba1:
    ld a, $e3
    ldh [rLCDC], a
    ei
    ret


Call_000_0ba7:
    xor a

Jump_000_0ba8:
    ld hl, $9800
    ld bc, $0800

Call_000_0bae:
Jump_000_0bae:
jr_000_0bae:
    ld [hl+], a
    dec c
    jr nz, jr_000_0bae

    dec b
    jr nz, jr_000_0bae

    ret


jr_000_0bb6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0bb6

    ret


Call_000_0bbf:
    push hl
    ld hl, $df0c
    ld a, [$df0a]
    push af
    ld [hl+], a
    ld a, [$df0b]
    ld [hl-], a
    sla [hl]
    inc hl
    rl [hl]
    dec hl
    ld a, [hl]
    push hl
    ld hl, $df0a
    add [hl]
    ld [hl], a
    inc hl
    ld a, [hl]
    pop hl

Call_000_0bdc:
    inc hl
    adc [hl]
    ld [$df0b], a
    pop af
    ld hl, $df0b
    add [hl]
    ld [hl], a
    pop hl
    ret


Call_000_0be9:
Jump_000_0be9:
    push bc
    ld b, $00
    sla a
    rl b
    sla a
    rl b
    ld c, a
    add hl, bc
    pop bc
    ret


Call_000_0bf8:
    push af
    ld hl, $c3c5
    ld a, [hl+]
    ld [hl-], a
    ld a, $03
    ld [hl+], a
    ld [$3000], a
    pop af
    push hl
    call $4003
    pop hl
    ld a, [hl-]
    ld [hl], a
    ld [$3000], a
    ret


Call_000_0c10:
    ld a, $02
    ld [$3000], a
    ld a, [$df01]
    bit 0, a
    jr z, jr_000_0c39

    ld hl, $6bab
    ld a, [$df03]
    ld [$df00], a
    ld a, [$df07]
    bit 1, a
    jr z, jr_000_0c4c

    ld a, [$df08]
    dec a
    rlca
    rlca
    swap a
    ld l, a
    ld h, $dd
    jr jr_000_0c56

jr_000_0c39:
    ld hl, $6b2b
    ld a, [$df06]
    bit 0, a
    jr z, jr_000_0c46

    ld hl, $6b71

jr_000_0c46:
    ld a, [$df02]
    ld [$df00], a

jr_000_0c4c:
    ld a, [$df00]
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_0c56:
    ld a, [hl+]
    ld [$c39a], a
    and a
    jr z, jr_000_0c67

    cp $08
    jr c, jr_000_0c6b

    jr z, jr_000_0c67

    ld a, $03
    jr jr_000_0c6d

jr_000_0c67:
    ld a, $05
    jr jr_000_0c6d

jr_000_0c6b:
    ld a, $04

jr_000_0c6d:
    ld [$c3c5], a
    ld a, [hl+]
    ld [$c39c], a
    ld a, [hl+]
    ld [$c39f], a
    ld a, [hl+]
    ld [$c3a2], a
    ld a, [$c3c5]
    ld [$3000], a
    ld b, $0e

jr_000_0c84:
    push bc
    call Call_000_11f5
    call Call_000_0d7d
    call Call_000_11fd
    call Call_000_0d7d
    pop bc
    dec b
    jr nz, jr_000_0c84

    ld a, $02
    ld [$3000], a
    xor a
    ld [$c3a9], a
    call Call_000_0ca2
    ret


Call_000_0ca2:
    ld a, [$df01]
    bit 0, a
    jr z, jr_000_0cfb

    ld hl, $6bab
    ld a, [$df03]
    ld [$df00], a
    ld a, [$df07]
    bit 1, a
    jr z, jr_000_0d0e

    ld a, [$df08]
    dec a
    ld [$df08], a
    rlca
    rlca
    swap a
    ld l, a
    ld h, $dd
    call Call_000_0d18
    ld a, [hl+]
    ld [$c204], a
    ld a, [hl+]
    ld [$c203], a
    ld [$c369], a
    ld a, [hl+]
    ld [$c207], a
    ld a, [hl+]
    ld [$c206], a
    ld [$c368], a
    ld a, [hl+]
    ld [$c364], a
    ld [$c366], a
    ld a, [hl+]
    ld [$c362], a
    ld [$c367], a
    ld a, [hl+]
    ld [$c3a9], a
    ld a, [hl+]
    ld [$c399], a
    ld a, [hl+]
    ld [$df03], a
    ret


jr_000_0cfb:
    ld hl, $6b2b
    ld a, [$df06]
    bit 0, a
    jr z, jr_000_0d08

    ld hl, $6b71

jr_000_0d08:
    ld a, [$df02]
    ld [$df00], a

jr_000_0d0e:
    ld a, [$df00]
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_0d18:
    ld a, [hl+]
    ld [$c39a], a
    ld a, [hl+]
    ld [$c39b], a
    ld a, [hl+]
    ld [$c39e], a
    ld a, [hl+]
    ld [$c3a1], a
    ld a, [hl+]
    ld [$c39c], a
    ld a, [hl+]
    ld [$c39f], a
    ld a, [hl+]
    ld [$c3a2], a
    ld a, [hl+]
    ld [$c39d], a
    ld a, [hl+]
    ld [$c3a0], a
    ld a, [hl+]
    ld [$c3a3], a
    ld a, [hl+]
    ld [$c3a4], a
    ld a, [hl+]
    ld [$c3a5], a
    ld a, [hl+]
    ld [$c365], a
    ld [$c207], a
    ld a, [hl+]
    ld [$c363], a
    ld [$c204], a
    ld a, [hl+]
    ld [$c272], a
    ld a, [hl+]
    ld [$c273], a
    ret


Call_000_0d5f:
    push de
    ld hl, $9800
    add c
    and $f0
    ld d, $00
    sla a
    rl d
    sla a
    rl d
    ld e, a
    add hl, de
    pop de
    ld a, e
    add b
    and $0f
    rlca
    ld b, $00
    ld c, a
    add hl, bc
    ret


Call_000_0d7d:
    ld a, [$c3a7]
    bit 6, a
    jr nz, jr_000_0dca

    bit 4, a
    jr nz, jr_000_0db8

    bit 2, a
    jr nz, jr_000_0da6

    bit 0, a
    jr nz, jr_000_0d94

    ld [$c3a6], a
    ret


jr_000_0d94:
    bit 1, a
    jr z, jr_000_0d9f

    and $f0
    ld [$c3a7], a
    jr jr_000_0dea

jr_000_0d9f:
    or $02
    ld [$c3a7], a
    jr jr_000_0ddc

jr_000_0da6:
    bit 3, a
    jr z, jr_000_0db1

    and $f0
    ld [$c3a7], a
    jr jr_000_0dea

jr_000_0db1:
    or $08
    ld [$c3a7], a
    jr jr_000_0ddc

jr_000_0db8:
    bit 5, a
    jr z, jr_000_0dc3

    and $0f
    ld [$c3a7], a
    jr jr_000_0e06

jr_000_0dc3:
    or $20
    ld [$c3a7], a
    jr jr_000_0df8

jr_000_0dca:
    bit 7, a
    jr z, jr_000_0dd5

    and $0f
    ld [$c3a7], a
    jr jr_000_0e06

jr_000_0dd5:
    or $80
    ld [$c3a7], a
    jr jr_000_0df8

jr_000_0ddc:
    ld de, $c378
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    inc e
    ld bc, $0007
    jr jr_000_0e14

jr_000_0dea:
    ld de, $c378
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    rst RST_20
    ld bc, $0006
    jr jr_000_0e14

jr_000_0df8:
    ld de, $c388
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    inc e
    ld bc, $0007
    jr jr_000_0e21

jr_000_0e06:
    ld de, $c388
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    rst RST_20
    ld bc, $0007
    jr jr_000_0e21

jr_000_0e14:
    push bc
    ld c, $1f
    ld a, [de]
    inc e
    rst RST_10
    rst RST_10
    pop bc
    dec c
    jr nz, jr_000_0e14

    jr jr_000_0e38

jr_000_0e21:
    push bc
    ld c, $1f
    ld a, [de]
    inc de
    push hl
    rst RST_10
    rst RST_10
    pop hl
    ld a, l
    swap a
    rrca
    add $10
    rlca
    swap a
    ld l, a
    pop bc
    dec c
    jr nz, jr_000_0e21

jr_000_0e38:
    ld a, $01
    ld [$c3a6], a
    ret


Call_000_0e3e:
    ld a, [$c3a8]
    and a
    jr nz, jr_000_0e67

    ld a, $01
    ld [$c3a8], a
    call Call_000_1317
    ld a, [$c3a1]
    ld e, a
    ld bc, $0000
    call Call_000_0d5f
    ld bc, $c378
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    inc c
    ld h, $c1
    ld a, [$c3a1]
    ld l, a
    jr jr_000_0ebe

jr_000_0e67:
    ld a, [$c3a1]
    ld e, a
    ld bc, $0070
    call Call_000_0d5f
    ld bc, $c378
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    call Call_000_105a
    jr jr_000_0ee7

Call_000_0e7e:
    ld a, [$c3a8]
    and a
    jr nz, jr_000_0ea7

    ld a, $02
    ld [$c3a8], a
    call Call_000_1344
    ld a, [$c3a2]
    ld e, a
    ld bc, $0000
    call Call_000_0d5f
    ld bc, $c378
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    inc c
    ld h, $c1
    ld a, [$c3a2]
    ld l, a
    jr jr_000_0ebe

jr_000_0ea7:
    ld a, [$c3a2]
    ld e, a
    ld bc, $0070
    call Call_000_0d5f
    ld bc, $c378
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    call Call_000_105a
    jr jr_000_0ee7

jr_000_0ebe:
    ld de, $000d
    push hl
    push bc
    push de
    call Call_000_1086
    call Call_000_10a4
    call Call_000_10ed
    call Call_000_10cd

jr_000_0ed0:
    pop de

Jump_000_0ed1:
    pop bc
    ld a, [hl]
    ld [bc], a
    inc bc
    pop hl
    ld a, [$c3b4]
    ld [hl], a
    ld a, l
    add $10
    ld l, a
    dec e
    ld a, e
    cp $06
    jr z, jr_000_0f3f

    and a
    jr z, jr_000_0f43

jr_000_0ee7:
    push hl
    push bc
    push de
    ld a, [$c3b3]
    xor $02
    ld [$c3b3], a
    bit 1, a
    jr nz, jr_000_0f27

    ld a, [$c3b2]
    add $08
    ld [$c3b2], a
    bit 6, a
    jr z, jr_000_0f1c

    and $3f
    ld [$c3b2], a
    ld a, [$c3b1]
    add $08
    and $3f
    ld [$c3b1], a
    ld a, [$c3bb]
    ld l, a
    ld a, [$c3b7]
    ld h, a
    call Call_000_109a

jr_000_0f1c:
    ld a, [$c3bc]
    ld l, a
    ld a, [$c3b8]
    ld h, a
    call Call_000_10b8

jr_000_0f27:
    ld a, [$c3be]
    ld l, a
    ld a, [$c3ba]
    ld h, a
    call Call_000_1101
    ld a, [$c3bd]
    ld l, a
    ld a, [$c3b9]
    ld h, a
    call Call_000_10e1
    jr jr_000_0ed0

jr_000_0f3f:
    jp Jump_000_1070


    ret


jr_000_0f43:
    xor a
    ld [$c3a8], a
    ret


Call_000_0f48:
    ld a, [$c3a8]
    and a
    jr nz, jr_000_0f71

    ld a, $04
    ld [$c3a8], a
    call Call_000_1344
    ld a, [$c3a2]
    ld e, a
    ld bc, $0000
    call Call_000_0d5f
    ld bc, $c388
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    inc c
    ld h, $c1
    ld a, [$c3a2]
    ld l, a
    jr jr_000_0fc8

jr_000_0f71:
    ld a, [$c3a2]
    ld e, a
    ld bc, $0700
    call Call_000_0d5f
    ld bc, $c388
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    call Call_000_105a
    jr jr_000_0ff5

Call_000_0f88:
    ld a, [$c3a8]
    and a
    jr nz, jr_000_0fb1

    ld a, $08
    ld [$c3a8], a
    call Call_000_1371
    ld a, [$c3a3]
    ld e, a
    ld bc, $0000
    call Call_000_0d5f
    ld bc, $c388
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    inc c
    ld h, $c1
    ld a, [$c3a3]
    ld l, a
    jr jr_000_0fc8

jr_000_0fb1:
    ld a, [$c3a3]
    ld e, a
    ld bc, $0700
    call Call_000_0d5f
    ld bc, $c388
    ld a, h
    ld [bc], a
    inc c
    ld a, l
    ld [bc], a
    call Call_000_105a
    jr jr_000_0ff5

jr_000_0fc8:
    ld de, $000e
    push hl
    push bc
    push de
    call Call_000_1086
    call Call_000_10a4
    call Call_000_10ed
    call Call_000_10cd

jr_000_0fda:
    pop de
    pop bc
    ld a, [hl]
    ld [bc], a
    inc bc
    pop hl
    ld a, [$c3b4]
    ld [hl], a
    ld a, l
    swap a
    add $10
    swap a
    ld l, a
    dec e
    ld a, e
    cp $07
    jr z, jr_000_1052

    and a
    jr z, jr_000_1055

jr_000_0ff5:
    push hl
    push bc
    push de
    ld a, [$c3b3]
    xor $01
    ld [$c3b3], a

Call_000_1000:
    bit 0, a
    jr nz, jr_000_103a

    ld a, [$c3b2]
    rlca
    swap a
    add $20
    push af
    swap a
    rrca
    ld [$c3b2], a
    pop af
    jr nc, jr_000_102f

    ld a, [$c3b1]
    rlca
    swap a
    add $20
    swap a
    rrca
    ld [$c3b1], a
    ld a, [$c3bb]
    ld l, a
    ld a, [$c3b7]
    ld h, a

Call_000_102c:
    call Call_000_109a

jr_000_102f:
    ld a, [$c3bc]
    ld l, a
    ld a, [$c3b8]
    ld h, a
    call Call_000_10b8

jr_000_103a:
    ld a, [$c3be]
    ld l, a
    ld a, [$c3ba]
    ld h, a
    call Call_000_1101
    ld a, [$c3bd]
    ld l, a
    ld a, [$c3b9]
    ld h, a
    call Call_000_10e1
    jr jr_000_0fda

jr_000_1052:
    jr jr_000_1070

    ret


jr_000_1055:
    xor a
    ld [$c3a8], a
    ret


Call_000_105a:
    push hl
    ld hl, $c3ad
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    pop hl
    ld a, [$c3ab]
    ld h, a
    ld a, [$c3ac]
    ld l, a
    ret


Jump_000_1070:
jr_000_1070:
    push hl
    ld hl, $c3ad
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    pop hl
    ld a, h
    ld [$c3ab], a
    ld a, l
    ld [$c3ac], a
    ret


Call_000_1086:
    ld a, [$c39a]
    ld hl, $3c80
    rlca
    ld e, a
    add hl, de
    ld a, [hl+]
    ld c, a
    ld [$c3bb], a
    ld a, [hl]
    ld h, a
    ld [$c3b7], a
    ld l, c

Call_000_109a:
    ld a, [$c3b1]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c3b5], a
    ret


Call_000_10a4:
    ld a, [$c39a]
    ld hl, $3c98
    rlca
    ld e, a
    add hl, de
    ld a, [hl+]
    ld c, a
    ld [$c3bc], a
    ld a, [hl]
    ld h, a
    ld [$c3b8], a
    ld l, c

Call_000_10b8:
    ld a, [$c3b5]
    rlca
    ld e, a
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c

Jump_000_10c3:
    ld a, [$c3b2]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c3b6], a
    ret


Call_000_10cd:
    ld a, [$c39a]
    ld hl, $3cb0

Jump_000_10d3:
    rlca
    ld e, a

Call_000_10d5:
    add hl, de
    ld a, [hl+]
    ld c, a
    ld [$c3bd], a
    ld a, [hl]
    ld h, a
    ld [$c3b9], a
    ld l, c

Call_000_10e1:
    ld a, [$c3b6]
    call Call_000_0be9
    ld a, [$c3b3]
    ld e, a
    add hl, de
    ret


Call_000_10ed:
    ld a, [$c39a]
    ld hl, $3cc8
    rlca
    ld e, a
    add hl, de
    ld a, [hl+]
    ld c, a
    ld [$c3be], a
    ld a, [hl]
    ld h, a
    ld [$c3ba], a
    ld l, c

Call_000_1101:
    ld a, [$c3b6]
    call Call_000_0081
    ld a, [$c3b3]
    bit 1, a
    jr z, jr_000_110f

    inc hl

jr_000_110f:
    bit 0, a
    jr z, jr_000_111a

    ld a, [hl]
    and $0f
    ld [$c3b4], a
    ret


jr_000_111a:
    ld a, [hl]
    and $f0
    swap a
    ld [$c3b4], a
    ret


Call_000_1123:
    ld a, [$c3a8]
    and $03
    jr nz, jr_000_1136

    call Call_000_124d
    call Call_000_12b2
    ld a, [$c3a7]
    and $f0
    ret nz

jr_000_1136:
    call Call_000_1151
    jp Jump_000_11cf


Call_000_113c:
    ld a, [$c39a]
    and a
    jr z, jr_000_114b

    cp $08
    jr c, jr_000_114e

    jr z, jr_000_114b

    ld b, $03
    ret


jr_000_114b:
    ld b, $05
    ret


jr_000_114e:
    ld b, $04
    ret


Call_000_1151:
Jump_000_1151:
    call Call_000_113c
    ld a, b
    ld [$c3c5], a
    ld [$3000], a
    ld a, [$c3a8]
    and $01
    jr nz, jr_000_117f

    ld a, [$c3a9]
    sub $10
    jr z, jr_000_1177

    dec a
    jr z, jr_000_1177

    dec a
    jr z, jr_000_1177

    dec a
    jr z, jr_000_1177

    dec a
    jr z, jr_000_1177

    dec a
    ret nz

jr_000_1177:
    ld a, [$c3a7]
    or $01
    ld [$c3a7], a

jr_000_117f:
    call Call_000_0e3e
    ld a, [$c3a8]
    and a
    ret nz

    ld a, [$c3a1]
    swap a
    add $10
    swap a
    ld [$c3a1], a
    ld a, [$c3a3]
    swap a
    add $10
    swap a
    ld [$c3a3], a
    ld a, [$c3a2]
    swap a
    add $10
    swap a
    ld [$c3a2], a
    call Call_000_1317
    call Call_000_139e
    call Call_000_1330
    call Call_000_1371
    call Call_000_139e
    call Call_000_138a
    call Call_000_1344
    call Call_000_139e
    call Call_000_135d
    ld a, [$c3a9]
    sub $10
    ld [$c3a9], a
    ret


Jump_000_11cf:
    call Call_000_113c
    ld a, b
    ld [$c3c5], a
    ld [$3000], a
    ld a, [$c3a8]
    and $02
    jr nz, jr_000_11fd

    ld a, [$c3a9]
    sub $eb
    jr z, jr_000_11f5

    dec a
    jr z, jr_000_11f5

    dec a
    jr z, jr_000_11f5

    dec a
    jr z, jr_000_11f5

    dec a
    jr z, jr_000_11f5

    dec a
    ret nz

Call_000_11f5:
jr_000_11f5:
    ld a, [$c3a7]
    or $04
    ld [$c3a7], a

Call_000_11fd:
jr_000_11fd:
    call Call_000_0e7e
    ld a, [$c3a8]
    and a
    ret nz

    ld a, [$c3a3]
    swap a
    sub $10
    swap a
    ld [$c3a3], a
    ld a, [$c3a1]
    swap a
    sub $10
    swap a
    ld [$c3a1], a
    ld a, [$c3a2]
    swap a
    sub $10
    swap a
    ld [$c3a2], a
    call Call_000_1317
    call Call_000_13cb
    call Call_000_1330
    call Call_000_1371
    call Call_000_13cb
    call Call_000_138a
    call Call_000_1344
    call Call_000_13cb
    call Call_000_135d
    ld a, [$c3a9]
    add $10
    ld [$c3a9], a
    ret


Call_000_124d:
Jump_000_124d:
    call Call_000_113c
    ld a, b
    ld [$c3c5], a
    ld [$3000], a
    ld a, [$c3a8]
    and $04
    jr nz, jr_000_126e

    ld a, [$c3aa]
    sub $f1
    add $20

Jump_000_1265:
    ret nc

Jump_000_1266:
    ld a, [$c3a7]
    or $10
    ld [$c3a7], a

jr_000_126e:
    call Call_000_0f48
    ld a, [$c3a8]
    and a
    ret nz

    ld a, [$c3a1]
    sub $10
    ld [$c3a1], a
    ld a, [$c3a3]
    sub $10
    ld [$c3a3], a
    ld a, [$c3a2]
    sub $10
    ld [$c3a2], a
    call Call_000_1317
    call Call_000_1420
    call Call_000_1330
    call Call_000_1371
    call Call_000_1420
    call Call_000_138a
    call Call_000_1344
    call Call_000_1420
    call Call_000_135d
    ld a, [$c3aa]
    add $10
    ld [$c3aa], a
    ret


Call_000_12b2:
Jump_000_12b2:
    call Call_000_113c
    ld a, b
    ld [$c3c5], a
    ld [$3000], a
    ld a, [$c3a8]
    and $08
    jr nz, jr_000_12d3

    ld a, [$c3aa]
    sub $30
    add $20
    ret nc

    ld a, [$c3a7]
    or $40
    ld [$c3a7], a

jr_000_12d3:
    call Call_000_0f88
    ld a, [$c3a8]
    and a
    ret nz

    ld a, [$c3a1]
    add $10
    ld [$c3a1], a
    ld a, [$c3a3]
    add $10
    ld [$c3a3], a
    ld a, [$c3a2]
    add $10
    ld [$c3a2], a
    call Call_000_1317
    call Call_000_13f8
    call Call_000_1330
    call Call_000_1371
    call Call_000_13f8
    call Call_000_138a
    call Call_000_1344
    call Call_000_13f8
    call Call_000_135d
    ld a, [$c3aa]
    sub $10
    ld [$c3aa], a
    ret


Call_000_1317:
    ld a, [$c39b]
    ld [$c3b1], a
    ld a, [$c39e]
    and $3f
    ld [$c3b2], a
    ld a, [$c39e]
    and $c0
    rlca
    rlca
    ld [$c3b3], a
    ret


Call_000_1330:
    ld a, [$c3b1]
    ld [$c39b], a
    ld a, [$c3b2]
    ld c, a
    ld a, [$c3b3]
    rrca
    rrca
    or c
    ld [$c39e], a
    ret


Call_000_1344:
    ld a, [$c39c]
    ld [$c3b1], a
    ld a, [$c39f]
    and $3f
    ld [$c3b2], a
    ld a, [$c39f]
    and $c0
    rlca
    rlca
    ld [$c3b3], a
    ret


Call_000_135d:
    ld a, [$c3b1]
    ld [$c39c], a
    ld a, [$c3b2]
    ld c, a
    ld a, [$c3b3]
    rrca
    rrca
    or c
    ld [$c39f], a
    ret


Call_000_1371:
    ld a, [$c39d]
    ld [$c3b1], a
    ld a, [$c3a0]
    and $3f
    ld [$c3b2], a
    ld a, [$c3a0]
    and $c0
    rlca
    rlca
    ld [$c3b3], a
    ret


Call_000_138a:
    ld a, [$c3b1]
    ld [$c39d], a
    ld a, [$c3b2]
    ld c, a
    ld a, [$c3b3]
    rrca
    rrca
    or c
    ld [$c3a0], a
    ret


Call_000_139e:
    ld a, [$c3b3]
    xor $01
    ld [$c3b3], a
    bit 0, a
    jr nz, jr_000_13ca

    ld a, [$c3b2]
    rlca
    swap a
    add $20
    push af
    swap a
    rrca
    ld [$c3b2], a
    pop af
    jr nc, jr_000_13ca

    ld a, [$c3b1]
    rlca
    swap a

Jump_000_13c2:
    add $20

Jump_000_13c4:
    swap a
    rrca
    ld [$c3b1], a

jr_000_13ca:
    ret


Call_000_13cb:
    ld a, [$c3b3]
    xor $01
    ld [$c3b3], a
    bit 0, a
    jr z, jr_000_13f7

    ld a, [$c3b2]
    rlca
    swap a
    sub $20
    push af
    swap a
    rrca
    ld [$c3b2], a
    pop af
    jr nc, jr_000_13f7

    ld a, [$c3b1]
    rlca
    swap a
    sub $20
    swap a
    rrca
    ld [$c3b1], a

jr_000_13f7:
    ret


Call_000_13f8:
    ld a, [$c3b3]
    xor $02
    ld [$c3b3], a
    bit 1, a
    jr nz, jr_000_141f

    ld a, [$c3b2]
    add $08
    ld [$c3b2], a
    bit 6, a
    jr z, jr_000_141f

    and $3f
    ld [$c3b2], a
    ld a, [$c3b1]
    add $08
    and $3f
    ld [$c3b1], a

jr_000_141f:
    ret


Call_000_1420:
    ld a, [$c3b3]
    xor $02
    ld [$c3b3], a
    bit 1, a
    jr z, jr_000_1447

    ld a, [$c3b2]
    sub $08
    ld [$c3b2], a
    bit 6, a
    jr z, jr_000_1447

    and $3f
    ld [$c3b2], a
    ld a, [$c3b1]
    sub $08
    and $3f
    ld [$c3b1], a

jr_000_1447:
    ret


Call_000_1448:
    ld a, [$c203]
    ld [$c369], a
    ld a, [$c206]
    ld [$c368], a
    ld a, [$c364]
    ld c, a
    ld a, [$c366]
    sub c
    ld b, a
    ld a, [$c3a9]
    sub b
    ld [$c3a9], a
    ld a, c
    ld [$c366], a
    ld a, [$c362]
    ld c, a
    ld a, [$c367]
    sub c
    ld b, a
    ld a, [$c3aa]
    sub b
    ld [$c3aa], a
    ld a, c
    ld [$c367], a
    ret


Call_000_147d:
    ld a, [$c270]
    and a
    ret nz

    ld a, [$c3a7]
    and a
    ret nz

    ld a, [$c463]
    call Call_000_0b7d
    sub a
    inc d
    rst RST_08
    inc d
    ld a, [de]
    dec d
    ld l, c
    dec d
    xor $16
    ld a, [$c262]
    bit 0, a
    ret z

    ld a, $80
    ld [$c460], a
    call Call_000_18dd
    ld a, $81
    ld [$c460], a
    res 7, a
    ld [$c463], a
    xor a
    ld [$c462], a

jr_000_14b3:
    ld a, [$c462]
    cp $09
    jr z, jr_000_14bf

    call Call_000_0090
    jr jr_000_14b3

jr_000_14bf:
    xor a
    ld [$c462], a
    ld [$c464], a
    ld a, [$c460]
    and $80
    ld [$c460], a
    ret


jr_000_14cf:
    ld a, [$c262]
    bit 0, a
    jr nz, jr_000_14dc

    bit 1, a
    jr nz, jr_000_14e6

    jr jr_000_14f4

jr_000_14dc:
    ld a, $02
    ld [$c463], a
    xor a
    ld [$c564], a
    ret


Jump_000_14e6:
jr_000_14e6:
    ld a, $02
    ld [$c460], a
    xor a
    ld [$c463], a
    ld [$c000], a
    jr jr_000_14b3

jr_000_14f4:
    bit 6, a
    jr nz, jr_000_14fe

    bit 7, a
    jr nz, jr_000_1509

    jr jr_000_1512

jr_000_14fe:
    ld a, [$c464]
    dec a
    and $03
    ld [$c464], a
    jr jr_000_1512

jr_000_1509:
    ld a, [$c464]
    inc a
    and $03
    ld [$c464], a

jr_000_1512:
    call $1781
    call Call_000_0090
    jr jr_000_14cf

Call_000_151a:
Jump_000_151a:
jr_000_151a:
    ld a, [$c564]
    cp $06
    jr z, jr_000_1555

    ld hl, $1769
    rlca
    rlca
    call Call_000_0071
    ld e, l
    ld d, h
    ld hl, $c565
    ld a, $9c
    ld [$c560], a
    ld a, [de]
    inc de
    ld [$c562], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld b, $12
    ld a, [de]
    inc de

jr_000_153f:
    ld [hl+], a
    dec b
    jr nz, jr_000_153f

    ld a, [de]
    ld [hl], a
    ld hl, $c561
    ld a, $01
    ld [hl+], a
    inc l
    ld a, $14
    ld [hl+], a
    inc [hl]
    call Call_000_0090
    jr jr_000_151a

jr_000_1555:
    ld a, $60
    ld [$c360], a
    xor a
    ld [$c564], a
    ld a, $03
    ld [$c463], a
    ld a, [$c464]
    cp $02
    ret nz

    call $1781
    ld a, [$c464]
    and a
    jr z, jr_000_157c

    dec a
    jr z, jr_000_15c2

    dec a
    jp z, Jump_000_1639

    jp Jump_000_1644


jr_000_157c:
    ld e, $01
    call Call_000_16f6
    ld b, a

Call_000_1582:
Jump_000_1582:
    call Call_000_0090
    ld a, $05
    ld [$c3c5], a
    ld [$3000], a
    ld a, b
    ld hl, $6228
    call Call_000_0081
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]

jr_000_1598:
    inc de
    call Call_000_0b7d
    inc d
    cpl
    ld a, [de]
    cpl
    ld a, [hl+]
    cpl
    ld b, c
    cpl
    sub [hl]
    cpl
    or a
    cpl
    ret c

    cpl
    rst RST_20
    cpl
    db $fd
    cpl
    dec bc
    jr nc, jr_000_1598

    cpl
    rst RST_20
    cpl
    rst RST_20
    cpl
    rst RST_20
    cpl
    rst RST_20
    cpl
    rst RST_20
    cpl
    dec bc
    jr nc, @+$16

    cpl
    inc d
    cpl

jr_000_15c2:
    ld e, $00
    call Call_000_16f6
    ld b, a
    and a
    jr z, jr_000_15f5

    ld a, [$df30]
    bit 6, a
    jr nz, jr_000_1624

    ld hl, $1632

jr_000_15d5:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_1624

    cp b
    jr z, jr_000_15e1

    inc hl
    inc hl
    jr jr_000_15d5

jr_000_15e1:
    ld c, a
    ld a, [$df1a]
    and [hl]
    inc hl
    jr z, jr_000_1624

    ld b, [hl]
    ld a, [$df30]

Jump_000_15ed:
    or $01
    ld [$df30], a
    jp Jump_000_1582


jr_000_15f5:
    ld a, [$df30]
    rlca
    jr c, jr_000_1624

    ld a, [$c204]

Jump_000_15fe:
    cp $16

Call_000_1600:
    jr nz, jr_000_1624

    ld a, [$c207]
    cp $14
    jr nz, jr_000_1624

    ld a, [$c21a]
    cp $b7
    jr nz, jr_000_1624

    ld a, [$df1a]
    bit 6, a
    jr z, jr_000_1624

    ld b, $64
    ld a, [$df30]
    or $01
    ld [$df30], a
    jp Jump_000_1582


jr_000_1624:
    ld a, [$df30]
    res 0, a
    ld [$df30], a
    ld b, $61
    jp Jump_000_1582


    ret


    rrca
    ld [bc], a
    ld h, d
    dec [hl]
    inc b
    ld h, e
    rst RST_38

Jump_000_1639:
    ld a, $03
    ld [$c3c5], a
    ld [$3000], a
    jp $7d40


Jump_000_1644:
    ld a, $05
    ld [$c3c5], a
    ld [$3000], a
    xor a
    ld [$c4ab], a
    ld hl, $16a9
    ld a, [$c204]
    ld e, a
    ld a, [$c207]
    ld d, a
    ld a, [$c21a]
    ld c, a

jr_000_165f:
    push hl
    ld a, [hl+]
    cp $ff
    jr z, jr_000_16a3

    cp e
    jr nz, jr_000_1694

    ld a, [hl+]
    cp d
    jr nz, jr_000_1694

    ld a, [hl+]
    cp c
    jr nz, jr_000_1694

    ld b, [hl]
    pop hl
    ld a, [$c4ab]
    and a
    jr nz, jr_000_1682

    ld a, [$df1a]
    bit 4, a
    jr nz, jr_000_16a3

    jp Jump_000_1582


jr_000_1682:
    ld hl, $df1c
    dec a
    call Call_000_0071
    ld a, [hl]
    and a
    jr nz, jr_000_16a3

    inc [hl]
    call Call_000_1908
    jp Jump_000_1582


jr_000_1694:
    ld a, [$c4ab]
    inc a
    ld [$c4ab], a
    pop hl
    ld a, $04
    call Call_000_0071
    jr jr_000_165f

jr_000_16a3:
    pop hl
    ld b, $60
    jp Jump_000_1582


    ld de, $b212
    ld h, l
    ld d, $11
    jp Jump_000_1266


    ld de, $66d7
    rla
    ld de, $6774
    rla
    rla
    or e
    ld h, a
    ld [de], a
    inc de
    and e
    ld h, a
    ld d, $14
    ld d, h
    ld l, b
    rla
    inc de
    or d
    ld l, b
    rla
    inc d
    ld l, d
    ld l, b
    inc d
    inc de
    sbc c
    ld l, c
    ld d, $13
    ld d, d
    ld l, c
    rla
    inc d
    ld h, c
    ld l, h
    ld [de], a
    ld de, $6c59
    ld [de], a
    db $10
    reti


    ld l, h
    ld d, $13
    ld a, [hl-]
    ld l, l
    ld d, $15
    ld c, d

Call_000_16e8:
    ld l, [hl]
    db $10
    db $10
    ld l, e
    ld l, a
    rst RST_38
    ld a, $90
    ld [$c360], a
    jp Jump_000_14e6


Call_000_16f6:
    ld a, [$c274]
    sub $80
    jr z, jr_000_1702

    dec a
    jr z, jr_000_170c

    jr jr_000_1716

jr_000_1702:
    ld a, [$c21a]
    add $10
    ld b, a
    ld c, $00
    jr jr_000_1737

jr_000_170c:
    ld a, [$c21a]
    sub $10
    ld b, a
    ld c, $08
    jr jr_000_1737

jr_000_1716:
    ld a, [$c200]
    bit 5, a
    jr z, jr_000_172b

    ld a, [$c21a]
    swap a
    add $10
    swap a
    ld b, a
    ld c, $0c
    jr jr_000_1737

jr_000_172b:
    ld a, [$c21a]
    swap a
    sub $10
    swap a
    ld b, a
    ld c, $04

jr_000_1737:
    ld h, $c7
    ld d, $14

jr_000_173b:
    ld l, $00
    ld a, [hl]
    bit 0, a
    jr z, jr_000_1763

    bit 3, a
    jr nz, jr_000_1763

    bit 4, a
    jr nz, jr_000_1763

    ld l, $1a
    ld a, [hl]
    cp b
    jr nz, jr_000_1763

    ld l, $01
    ld a, [hl]
    and $f0
    or c
    ld [hl], a
    ld l, $0d
    ld a, [hl]
    or e
    ld [hl], a
    ld l, $0a
    ld a, [hl]
    ld [$df2d], a
    ret


jr_000_1763:
    inc h
    dec d
    jr nz, jr_000_173b

    xor a
    ret


    nop
    push bc
    jp Jump_000_20dc


    call nz, $c4c0
    ld b, b
    call nz, $c4c0
    ld h, b
    call nz, $c4c0
    add b
    call nz, $c4c0
    and b
    db $dd
    jp Jump_000_21de


    nop
    ret nz

    ld a, [$c464]
    swap a
    add $18
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ret


Call_000_1796:
    ld hl, $c004
    ld b, $00
    ld a, [$c26a]
    bit 3, a
    jr nz, jr_000_17a4

    ld b, $90

jr_000_17a4:
    ld a, b
    ld [hl+], a
    ld a, $98
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_000_17af:
    ld hl, $c004
    ld b, $00
    ld a, [$c26a]
    bit 3, a
    jr nz, jr_000_17c1

    ld a, [$c583]
    add $80
    ld b, a

jr_000_17c1:
    ld a, b
    ld [hl+], a
    ld a, $18
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_000_17cc:
    ld a, [$c462]
    cp $09
    ret z

    ld a, [$c460]
    bit 0, a
    jr nz, jr_000_17de

    bit 1, a
    jr nz, jr_000_1800

    ret


jr_000_17de:
    call Call_000_1824

Call_000_17e1:
    ld a, $07

jr_000_17e3:
    push af
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, [de]
    inc de
    ld [hl], a
    ld a, l
    swap a
    rrca
    add $08
    rlca
    swap a
    ld l, a
    pop af
    dec a
    jr nz, jr_000_17e3

    ld a, [$c462]
    inc a
    ld [$c462], a
    ret


jr_000_1800:
    call Call_000_1824
    ld d, $07

jr_000_1805:
    ld a, [bc]
    inc bc
    ld [hl], a
    ld a, l
    swap a
    rrca
    add $08
    rlca
    swap a
    ld l, a
    dec d
    jr nz, jr_000_1805

    ld a, [$c462]
    inc a
    ld [$c462], a
    cp $09
    ret nz

    xor a
    ld [$c460], a
    ret


Call_000_1824:
    ld a, [$c399]
    and $f0
    ld hl, $9800
    ld d, $00
    sla a
    rl d
    sla a
    rl d
    ld e, a
    add hl, de
    ld d, $00
    ld a, [$c462]
    swap a
    sla a
    rl d
    ld e, a
    add hl, de
    ld a, [$c399]
    and $0f
    rlca
    dec a
    and $1f
    ld e, a
    ld d, $00
    add hl, de
    ld a, h
    and $9b
    ld h, a
    push hl
    ld a, [$c462]
    ld hl, $187e
    ld de, $0007
    call Call_000_1875
    push hl
    ld a, [$c462]
    ld hl, $c465
    ld de, $0007
    call Call_000_1875
    push hl
    pop bc
    pop de
    pop hl
    ret


Call_000_1875:
jr_000_1875:
    and a
    jr z, jr_000_187c

    dec a
    add hl, de
    jr jr_000_1875

jr_000_187c:
    ret


    ret


    push bc
    jp $c3c3


    jp $dcc3


    call nz, $f4c0
    pop hl
    db $ec
    db $eb
    call nz, $c0c4
    ret nz

    ret nz

    ret nz

    ret nz

    call nz, $c0c4
    push af
    di
    push hl
    ret nz

    call nz, $c0c4
    ret nz

    ret nz

    ret nz

    ret nz

    call nz, $c0c4
    db $ec
    or $ec
    ret nz

    call nz, $c0c4
    ret nz

    ret nz

    ret nz

    ret nz

    call nz, $c0c4
    db $e3
    add sp, -$15
    ret nz

    call nz, $c3dd
    jp $c3c3


    jp $fade


    ld h, c
    push bc
    bit 0, a
    ret z

    xor a
    ld [$c561], a
    ld a, [$c560]
    ld h, a
    ld a, [$c562]
    ld l, a
    ld a, [$c563]
    ld b, a
    ld de, $c565

jr_000_18d6:
    ld a, [de]
    inc e
    ld [hl+], a
    dec b
    jr nz, jr_000_18d6

    ret


Call_000_18dd:
jr_000_18dd:
    ld h, $c7
    ld b, $10

jr_000_18e1:
    ld l, $00
    ld a, [hl]

Call_000_18e4:
    bit 0, a
    jr z, jr_000_1901

Call_000_18e8:
    bit 3, a
    jr nz, jr_000_1901

    bit 4, a
    jr nz, jr_000_1901

    ld l, $18
    ld a, [hl]
    and a
    jr z, jr_000_1901

    call Call_000_3236
    call Call_000_3241
    call Call_000_0090
    jr jr_000_18dd

jr_000_1901:
    inc h
    dec b
    jr nz, jr_000_18e1

    jp Jump_000_0090


Call_000_1908:
    push bc
    push hl
    ld a, [$c4ab]
    dec a
    ld c, a
    ld b, $10
    ld hl, $c700

jr_000_1914:
    ld a, [hl]
    rrca
    jr nc, jr_000_1928

    ld l, $0a
    ld a, [hl+]
    and a
    jr nz, jr_000_1928

    ld a, [hl]
    sub c
    jr nz, jr_000_1928

    xor a
    ld l, $00
    ld [hl], a
    jr jr_000_192e

jr_000_1928:
    ld l, $00
    inc h
    dec b
    jr nz, jr_000_1914

jr_000_192e:
    pop hl
    pop bc
    ret


Call_000_1931:
    ld a, [$df01]
    bit 0, a
    jr z, jr_000_1948

    call Call_000_198b
    ld a, [$df03]
    add $30
    ld [$df00], a
    ld hl, $19a6
    jr jr_000_195b

jr_000_1948:
    ld a, [$df02]
    ld [$df00], a
    ld hl, $19a6
    ld a, [$df06]
    bit 0, a
    jr z, jr_000_195b

    ld hl, $1ca5

Call_000_195b:
jr_000_195b:
    ld a, [$df00]

Call_000_195e:
    rlca
    call Call_000_0071
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_1965:
    ld a, [hl+]
    and a
    ret z

    push af
    and $0f
    ld [$3000], a
    ld a, [hl+]
    ld d, a
    ld e, $00
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop af
    push hl
    ld h, b
    ld l, c
    and $f0
    ld b, a

jr_000_197d:
    ld c, $10

jr_000_197f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_197f

    dec b
    jr nz, jr_000_197d

    pop hl
    jr jr_000_1965

Call_000_198b:
    ld hl, $8c00
    ld de, $4000
    ld b, $40
    ld a, $05
    ld [$3000], a

jr_000_1998:
    ld c, $08

jr_000_199a:
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    dec c
    jr nz, jr_000_199a

    dec b
    jr nz, jr_000_1998

    ret


    ld h, h
    ld a, [de]
    ld a, l
    ld a, [de]
    sbc d
    ld a, [de]
    cp e
    ld a, [de]
    call nc, $f11a
    ld a, [de]
    ld c, $1b
    ld c, $1b
    inc hl
    dec de
    inc hl
    dec de
    ld b, b
    dec de
    ld b, b
    dec de
    ld e, l
    dec de
    ld a, [hl]
    dec de
    ld a, [hl]
    dec de
    sub e
    dec de
    sub e
    dec de
    cp h
    dec de
    cp h
    dec de
    cp h
    dec de
    cp h
    dec de
    cp h
    dec de
    cp h
    dec de
    cp h
    dec de
    cp h
    dec de
    ret


    dec de
    jp c, $eb1b

    dec de
    nop
    inc e
    ld [hl+], a
    inc e
    jr c, jr_000_1a00

    ld d, c
    inc e

Call_000_19e6:
    ld d, d
    inc e
    ld e, e
    inc e
    ld h, h
    ld a, [de]
    ld l, h
    inc e
    ld [hl], l
    inc e
    ld a, [hl]
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e

jr_000_1a00:
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    sbc b
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    adc e
    inc e
    ld [hl], a
    sub b
    nop
    ld l, b
    rla
    sub a
    nop
    ld e, b
    rla
    adc l
    nop
    ld d, b
    rla
    adc [hl]
    nop
    ld d, e
    daa
    add b
    nop
    ld d, h
    ld h, $82
    nop
    ld a, [hl]
    nop
    ld [hl], a
    sub b
    nop
    ld [hl], b
    rla
    sub a
    nop
    ld l, l
    daa
    add b
    nop
    ld d, h
    ld d, $83
    nop
    ld a, a
    ld d, $8d
    nop
    ld l, a
    rla
    adc [hl]
    nop
    ld c, l
    ld d, $8f
    nop
    ld c, l
    nop
    add a
    sub b
    nop
    ld a, b
    ld d, $80
    nop
    ld l, a
    ld d, $81
    nop
    ld c, a
    ld d, $82
    nop
    ld [hl], d
    ld d, $83
    nop
    ld a, a
    rla
    adc l
    nop
    ld a, c
    rla
    adc [hl]
    nop
    ld c, l
    rla
    adc a
    ret nz

    ld [hl], a
    nop
    add [hl]
    sub b
    nop
    ld h, b
    ld h, $80
    nop
    ld a, c
    ld d, $82
    nop
    ld c, a
    ld d, $83
    nop
    ld a, a
    rla
    adc l
    nop
    ld d, b
    rla
    adc [hl]
    nop
    ld d, e
    nop

Call_000_1ad4:
    ld d, $80
    nop
    ld l, a
    ld d, $82
    nop
    ld a, [hl]
    rla
    adc l
    nop
    ld d, b
    ld d, $8e
    or b
    ld b, a
    ld d, $8f
    nop
    ld h, b
    ld h, [hl]
    sub b
    nop
    ld d, b
    daa
    sub [hl]
    nop

Jump_000_1aef:
    ld a, d
    nop
    ld b, a
    sub b
    nop
    ld e, c
    rla
    sub d
    nop
    halt
    ld d, $94
    nop
    ld h, h
    rla
    sub l
    nop
    ld [hl], a
    daa
    sub [hl]
    nop
    ld l, l
    ld d, $82
    nop
    ld a, [hl]
    ld d, $83
    nop
    ld a, a
    nop
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    ld d, $82
    nop
    ld a, [hl]
    rla
    adc l
    nop
    ld a, c
    rla
    adc [hl]
    nop
    ld d, e
    nop
    add a
    sub b
    nop
    ld [hl], b
    rla
    sub d
    nop
    ld l, b
    daa
    add b
    nop
    ld b, h
    ld d, $83
    nop
    ld a, a
    rla
    adc l
    nop
    ld a, c
    rla
    adc [hl]
    nop
    ld d, e
    rla
    adc a
    nop
    ld a, b
    nop
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    ld d, $81
    nop
    ld c, a
    ld d, $82
    nop
    ld [hl], d
    rla
    adc l
    nop
    ld a, c
    rla
    adc [hl]
    nop
    ld d, e
    ld d, $8f
    nop
    ld c, l
    nop
    halt
    sub b
    nop
    ld h, b
    rla
    sub d
    nop
    ld a, b
    rla
    sub e
    nop
    ld a, e
    rla
    sub a
    nop
    ld [hl], a
    daa
    add b
    nop
    ld d, h
    ld d, $83
    nop
    ld a, a
    rla
    adc l
    nop
    ld d, b
    ld d, $8f
    nop
    ld c, l
    nop
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    ld d, $82
    nop
    ld a, [hl]
    rla
    adc l
    nop
    ld d, b
    rla
    adc [hl]
    nop
    ld d, e
    nop
    ld h, $90
    nop
    ld h, b
    rla
    sub d
    nop
    ld a, b
    rla
    sub e
    nop
    ld a, e
    rla
    sub h
    nop
    ld a, l
    rla
    sub l
    nop
    ld e, b
    ld d, $96
    nop
    ld h, [hl]
    rla
    sub a
    nop
    ld [hl], a
    ld d, $81
    nop
    ld [hl], a
    ld h, $82
    nop
    ld a, b
    rla
    adc l
    nop
    ld a, c
    nop
    add [hl]
    sub b
    nop
    ld h, b
    rla
    adc l
    nop
    ld d, l
    rla
    adc [hl]
    nop
    ld d, a
    nop
    rla
    adc [hl]
    nop
    ld d, e
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    daa
    add b
    nop
    ld d, h
    nop
    rla
    adc [hl]
    nop
    ld d, e
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    daa
    add b
    nop
    ld d, h
    nop
    rla
    adc [hl]
    nop
    ld d, e
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    rla
    add b
    nop
    ld d, e
    rla
    add c
    nop
    ld d, l
    nop
    rla
    adc [hl]
    nop
    ld d, e
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt
    ld d, $80
    nop
    ld l, d
    ld d, $81
    nop
    ld a, l
    ld d, $82
    nop
    ld d, b
    nop
    ld d, $81
    nop
    ld [hl], a
    ld h, $82
    nop
    ld a, b
    nop
    rla
    adc [hl]
    nop
    ld d, e
    ld h, a
    sub b
    nop
    ld l, b
    ld d, $93
    nop
    ld h, l
    daa
    sub [hl]
    nop
    halt
    ld b, [hl]
    add b
    nop
    ld [hl], h
    nop
    nop
    rla
    adc [hl]
    nop
    ld d, e
    ld h, a
    sub b
    nop
    ld l, b
    daa
    sub [hl]
    nop
    halt

Jump_000_1c44:
    daa
    add b
    nop
    ld d, c
    daa
    add d
    nop
    ld d, [hl]
    rla
    adc l
    nop
    ld d, b
    nop
    nop
    add a
    sub b
    nop
    ld [hl], b
    ld h, $81
    nop
    ld a, e
    nop
    ld h, $80
    nop
    ld [hl], e
    ld d, $82
    nop
    ld [hl], h
    ld h, a
    sub b
    nop
    ld [hl], b
    daa
    sub [hl]
    nop
    ld c, [hl]
    nop
    add a
    add h
    nop
    ld b, b
    rla
    adc h
    nop
    ld c, b
    nop
    add [hl]
    sub b
    nop
    ld b, b
    dec h
    adc b
    nop
    ld b, d
    nop
    rla
    sub b
    nop
    ld a, b
    rla
    sub c
    nop
    ld a, h
    rla
    sub d
    nop
    ld e, c
    nop
    halt
    add b
    nop
    ld c, b
    ld d, $87
    nop
    ld l, d
    add a
    sub b
    nop
    ld h, b
    nop
    halt
    add b
    nop
    ld c, b
    ld d, $87
    nop
    ld l, d
    add [hl]
    sub b
    nop
    ld e, b
    nop
    xor a
    inc e
    cp h
    inc e
    sbc d
    ld a, [de]
    cp e
    ld a, [de]
    add sp, $1a
    rla
    sub a
    nop
    ld l, a
    daa
    add b
    nop
    ld d, h
    ld h, $82
    nop
    ld a, [hl]
    nop
    rla
    sub a
    nop
    ld [hl], a
    rla
    add b
    db $10
    ld c, h
    ld d, $81
    nop
    ld c, a
    ld d, $82
    nop
    ld [hl], d
    ld d, $83
    nop
    ld a, a
    ld h, $8d
    nop
    ld l, b
    nop
    nop
    push de
    dec de
    and $1b
    push de
    dec de
    and $1b
    rst RST_30
    dec de
    ld a, [$f71c]

Call_000_1ce3:
    dec de
    ld a, [$f71c]
    dec de
    add hl, de
    inc e
    db $10
    dec e
    ld [hl-], a
    inc e
    ld [hl-], a
    inc e
    ld d, [hl]
    inc e
    db $10
    dec e
    ld b, h
    inc e
    rlca
    dec e
    ld d, [hl]
    inc e
    ld d, $81
    nop
    ld c, a
    ld d, $82
    nop
    ld [hl], d
    ld d, $8f
    nop
    ld c, l
    nop
    rla
    adc l
    nop
    ld d, l
    rla
    adc [hl]
    nop
    ld d, a
    nop
    ld h, $80
    nop
    ld a, c
    nop

Call_000_1d15:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld a, [$c270]
    and a
    jp nz, Jump_000_1da3

    ld a, [$c3a7]
    bit 0, a
    jp nz, Jump_000_1dcb

    bit 2, a
    jp nz, Jump_000_1dd6

    bit 4, a
    jp nz, Jump_000_1de1

    bit 6, a
    jp nz, Jump_000_1dec

    ld a, [$c460]
    and a
    ret nz

    call $6f55
    call $70fa
    ld a, [$c579]
    bit 0, a
    ret nz

    ld a, $10
    ld [$c271], a
    ld a, [$c261]
    rlca
    jr c, jr_000_1d96

    rlca
    jr c, jr_000_1d87

    rlca
    jr c, jr_000_1d74

    rlca
    jr c, jr_000_1d61

    ret


jr_000_1d61:
    ld a, [$c399]
    swap a
    add $10
    swap a
    ld [$c399], a
    ld a, $01
    ld [$c270], a
    jr jr_000_1da3

jr_000_1d74:
    ld a, [$c399]
    swap a
    sub $10
    swap a
    ld [$c399], a
    ld a, $02
    ld [$c270], a
    jr jr_000_1da3

jr_000_1d87:
    ld a, [$c399]
    sub $10
    ld [$c399], a
    ld a, $03
    ld [$c270], a
    jr jr_000_1da3

jr_000_1d96:
    ld a, [$c399]
    add $10
    ld [$c399], a
    ld a, $04
    ld [$c270], a

Jump_000_1da3:
jr_000_1da3:
    ld hl, $1db6
    push hl
    ld a, [$c270]
    dec a
    call Call_000_0b7d
    jp $ce1d


    dec e
    reti


    dec e
    db $e4
    dec e
    ld a, [$c271]
    dec a
    ld [$c271], a
    ret nz

    xor a
    ld [$c270], a
    ret


    ld c, $01
    call $4667
    call Call_000_1448

Jump_000_1dcb:
    jp Jump_000_1151


    ld c, $01
    call $4694
    call Call_000_1448

Jump_000_1dd6:
    jp Jump_000_11cf


    ld c, $01
    call $4711
    call Call_000_1448

Jump_000_1de1:
    jp Jump_000_124d


    ld c, $01
    call $4769
    call Call_000_1448

Jump_000_1dec:
    jp Jump_000_12b2


Call_000_1def:
    ld a, $02
    ld [$3000], a
    ld a, [$df01]
    rrca
    jr nc, jr_000_1e33

    ld a, [$df03]
    ld hl, $38e0
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00
    ld de, $ca20

jr_000_1e0b:
    push de
    ld a, [hl+]
    ld [de], a
    inc a
    jr z, jr_000_1e31

    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, b
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    pop de
    inc b
    inc e
    jr jr_000_1e0b

jr_000_1e31:
    pop de
    ret


jr_000_1e33:
    ld a, [$df02]
    ld b, a
    cp $19
    jr c, jr_000_1e6b

    ld a, [$df2d]
    and a
    jr nz, jr_000_1e6b

    ld a, b
    sub $19
    ld b, a
    rlca
    add b
    ld b, a

jr_000_1e48:
    call Call_000_0bbf
    ld a, [$df0b]
    and $03
    jr z, jr_000_1e48

    dec a
    ld [$c694], a
    add b
    ld b, a
    push bc
    ld hl, $1cd6
    call Call_000_195e
    pop bc
    ld a, $02
    ld [$3000], a
    ld a, b
    ld hl, $70fb
    jr jr_000_1e6f

jr_000_1e6b:
    ld a, b
    ld hl, $7129

Call_000_1e6f:
jr_000_1e6f:
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_1e75:
    ld b, $00
    ld de, $ca20

jr_000_1e7a:
    push de
    ld a, [hl]
    ld [de], a
    inc a
    jr z, jr_000_1e31

    ld a, [hl+]
    push hl
    ld hl, $716f
    ld c, a
    call Call_000_0071
    ld a, c
    call Call_000_0be9
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    ld d, $d1
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl]
    ld [de], a
    pop hl
    ld d, $cc
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, b
    ld [de], a
    pop de
    inc b
    inc e
    jr jr_000_1e7a

Call_000_1eb2:
    ld a, [$df13]
    cp $03
    jr nz, jr_000_1ee0

    ld a, [$c7ba]
    inc a
    ret z

    ld b, $07
    ld hl, $c790
    ld de, $1ed9

jr_000_1ec6:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_1ec6

    ld a, $ff
    ld [$c7ba], a
    ld [$c79e], a
    inc a
    ld [$c7cb], a
    ret


    nop
    jp z, Jump_000_00cb

    nop
    nop
    nop

jr_000_1ee0:
    ld a, [$df12]
    ld b, a
    srl a
    srl a
    ld c, a
    ld a, [$c7ba]
    ld d, a
    ld a, b
    swap a
    rrca
    and $07

Call_000_1ef3:
    cp d
    jr z, jr_000_1f1b

    ld [$c7ba], a
    ld b, a
    ld d, a

Call_000_1efb:
    ld hl, $c790
    and a
    jr nz, jr_000_1f05

    ld b, $01
    jr jr_000_1f12

jr_000_1f05:
    ld a, $c9

jr_000_1f07:
    ld [hl+], a
    dec b
    jr nz, jr_000_1f07

    ld a, $07
    sub d
    jr z, jr_000_1f16

    ld b, a
    xor a

jr_000_1f12:
    ld [hl+], a
    dec b
    jr nz, jr_000_1f12

jr_000_1f16:
    ld a, $01
    ld [$c79e], a

jr_000_1f1b:
    ld a, [$c360]

Jump_000_1f1e:
    add $18
    ld [$c000], a
    ld [$c004], a
    ld a, $58
    ld [$c001], a
    ld a, $c8
    ld [$c002], a
    ld a, $c9
    ld [$c006], a
    ld a, $00
    ld [$c007], a
    xor a
    ld [$c003], a
    ld a, c
    add $58
    ld [$c005], a
    ld a, $08
    ld [$c7cb], a
    ret


Call_000_1f4a:
    push bc
    ld b, $10

jr_000_1f4d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1f4d

    pop bc
    ret


Call_000_1f55:
Jump_000_1f55:
jr_000_1f55:
    call Call_000_0090
    ld a, [$c7af]
    or a
    jr nz, jr_000_1f55

    ret


jr_000_1f5f:
    xor a
    ld [$c7af], a
    ret


Call_000_1f64:
Jump_000_1f64:
    ld a, [$c7af]
    cp b
    ret z

    ld a, b
    ld [$c7af], a
    xor a
    ld [$c7b0], a
    ret


Call_000_1f72:
    ld a, [$c79d]
    or a
    ret nz

    ld a, [$c7af]
    or a
    ret z

    ld a, [$c7b0]
    call Call_000_0b7d
    adc b
    rra
    and b
    rra
    push de
    rra
    ld a, $02
    ld [$3000], a
    ld [$c7b0], a
    ld a, [$c7af]
    and $7f
    ld hl, $7b60
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_1fb0

    ld a, $02
    ld [$3000], a
    ld [$c7b0], a
    ld a, [$c7b8]
    ld l, a
    ld a, [$c7b9]
    ld h, a

jr_000_1fb0:
    ld a, [hl+]
    or a
    jr z, jr_000_1f5f

    ld [$c7b1], a
    ld a, [hl+]
    ld [$c7b2], a
    ld a, [hl+]
    ld [$c7b4], a
    ld a, [hl+]
    ld [$c7b5], a
    ld a, [hl+]
    ld [$c7b6], a
    ld a, [hl+]
    ld [$c7b7], a
    ld a, l
    ld [$c7b8], a
    ld a, h
    ld [$c7b9], a
    jr jr_000_1fe8

    ld a, [$c7b3]
    ld b, a
    ld a, [$c7b6]
    add b
    ld [$c7b6], a
    ld a, [$c7b7]

jr_000_1fe3:
    adc $00
    ld [$c7b7], a

jr_000_1fe8:
    ld a, [$c7b4]
    ld l, a
    ld a, [$c7b5]
    ld h, a
    ld a, [$c7b1]
    ld [$3000], a
    ld de, $c770
    call Call_000_1f4a
    ld b, $10
    ld a, [$c7b2]
    dec a
    ld [$c7b2], a
    jr z, jr_000_2027

    call Call_000_1f4a
    ld b, $20
    ld a, [$c7b2]
    dec a
    ld [$c7b2], a
    jr z, jr_000_2027

    ld a, b
    ld [$c7b3], a
    ld a, l
    ld [$c7b4], a
    ld a, h
    ld [$c7b5], a
    ld a, $01

jr_000_2023:
    ld [$c79d], a
    ret


jr_000_2027:
    ld a, b
    ld [$c7b3], a
    ld a, $01
    ld [$c79d], a
    ld [$c7b0], a
    ret


Call_000_2034:
Jump_000_2034:
    xor a
    ld [$c7a3], a
    ret


Call_000_2039:
Jump_000_2039:
    ld a, [$c7a3]
    cp b
    ret z

    ld a, b

Jump_000_203f:
    ld [$c7a3], a
    xor a
    ld [$c7a4], a
    ld [$c7a5], a
    ret


Call_000_204a:
    ld a, [$c79c]
    or a
    ret nz

    ld a, [$c7a3]
    or a
    ret z

    ld a, [$c7a4]
    call Call_000_0b7d
    ld h, d
    jr nz, jr_000_1fe3

    jr nz, jr_000_2023

    jr nz, @+$03

    ld hl, $023e
    ld [$3000], a
    ld a, [$c7a3]
    ld hl, $7bd0
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c7aa], a
    ld a, l
    ld [$c7a7], a
    ld a, h
    ld [$c7a8], a
    ld a, $02
    ld [$c7a4], a
    jr jr_000_209f

    ld a, $02
    ld [$3000], a
    ld a, [$c7a7]
    ld c, a
    ld a, [$c7a5]
    add c
    ld l, a
    ld a, [$c7a8]
    adc $00
    ld h, a
    ld a, $02
    ld [$c7a4], a

jr_000_209f:
    ld b, $00
    ld c, [hl]
    ld hl, $7be0
    sla c
    rl b
    add hl, bc
    sla c
    rl b
    add hl, bc
    ld a, [hl+]
    ld [$c7a6], a
    ld a, [hl+]
    ld [$c7a9], a
    ld a, [hl+]
    ld [$c7ab], a
    ld a, [hl+]
    ld [$c7ac], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_20dd

Call_000_20c4:
    ld a, [$c7ab]
    add $10
    ld [$c7ab], a
    jr nc, jr_000_20d5

    ld a, [$c7ac]
    inc a
    ld [$c7ac], a

jr_000_20d5:
    ld a, [$c7ad]

Jump_000_20d8:
    ld l, a
    ld a, [$c7ae]

Jump_000_20dc:
    ld h, a

jr_000_20dd:
    ld de, $c760
    ld a, $07
    ld [$3000], a
    call Call_000_1f4a
    ld a, l
    ld [$c7ad], a
    ld a, h
    ld [$c7ae], a
    ld [$c79c], a
    ld a, [$c7a9]
    dec a
    ld [$c7a9], a
    jr nz, jr_000_2101

    ld a, $03
    ld [$c7a4], a

jr_000_2101:
    ld a, [$c7a6]
    dec a
    ld [$c7a6], a
    ret nz

    ld a, [$c7a5]
    inc a
    ld [$c7a5], a
    ld b, a
    ld a, [$c7aa]
    cp b
    jr z, jr_000_211d

    ld a, $01
    ld [$c7a4], a
    ret


jr_000_211d:
    xor a
    ld [$c7a5], a

Jump_000_2121:
    ld [$c7a4], a
    ret


Call_000_2125:
    ld a, [$c669]
    ld c, a
    ld a, $6c
    ld [$c669], a
    ld a, [$c7af]
    ld b, a
    push bc
    ld a, [$c200]
    push af
    xor a
    ld [$c200], a
    inc a
    ld [$c693], a
    ld a, [$df38]
    ld [$c7bf], a
    call Call_000_00b0
    call Call_000_2186
    call Call_000_21e4
    ld a, [$df38]
    ld b, a
    ld a, [$c7bf]
    cp $04
    jr z, jr_000_2162

    cp b
    jr z, jr_000_2162

    ld [$df38], a
    call Call_000_2436

jr_000_2162:
    call Call_000_219f
    call Call_000_2178
    xor a
    ld [$c693], a
    pop af
    ld [$c200], a
    pop bc
    ld a, c
    ld [$c669], a
    jp Jump_000_1f64


Call_000_2178:
    ld a, [$df38]
    or $90
    ld b, a
    call Call_000_1f64
    ld a, $06
    jp Jump_000_00d0


Call_000_2186:
    ld b, $81
    call Call_000_1f64
    call Call_000_23ee

jr_000_218e:
    call Call_000_21cd
    ld a, [$c360]
    dec a
    ld [$c360], a
    cp $51
    jr nc, jr_000_218e

    jp Jump_000_21cd


Call_000_219f:
jr_000_219f:
    call Call_000_21cd
    ld a, [$c360]
    inc a
    ld [$c360], a
    cp $78
    jr c, jr_000_219f

    ld b, $82
    call Call_000_1f64

jr_000_21b2:
    call Call_000_21cd
    ld a, [$c360]
    inc a
    ld [$c360], a
    cp $80
    jr c, jr_000_21b2

    ld a, $18
    jp Jump_000_21c5


Jump_000_21c5:
jr_000_21c5:
    push af
    call Call_000_21cd
    pop af
    dec a
    jr nz, jr_000_21c5

Call_000_21cd:
Jump_000_21cd:
    call Call_000_1eb2
    call Call_000_22a0
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967

Jump_000_21de:
    call $69c4
    jp Jump_000_0090


Call_000_21e4:
Jump_000_21e4:
    call Call_000_21cd
    ld a, [$c262]
    bit 5, a
    jr nz, jr_000_2255

    bit 4, a
    jr nz, jr_000_222e

    bit 3, a
    ret nz

    rrca
    jp nc, Jump_000_227b

    ld a, [$c7bf]
    cp $04
    jr c, jr_000_227b

    call Call_000_227e
    ld a, [$df19]
    res 7, a

Jump_000_2208:
    ld [$df19], a
    xor a
    ld [$c7a1], a
    ld [$c7a2], a
    ld a, $6e
    ld [$c7bd], a
    ld a, $9c
    ld [$c7be], a
    call Call_000_21cd
    ld a, $8e
    ld [$c7bd], a
    ld a, $9c
    ld [$c7be], a
    ld a, [$df38]
    jr jr_000_2278

jr_000_222e:
    ld a, $27
    rst RST_28
    ld a, [$c7bf]
    inc a
    cp $04
    jr c, jr_000_2247

    jr nz, jr_000_2244

jr_000_223b:
    ld [$c7bf], a
    ld a, [$df19]
    rlca
    jr c, jr_000_227b

jr_000_2244:
    xor a
    jr jr_000_2278

jr_000_2247:
    ld b, a
    ld a, [$df16]
    cp b
    jr c, jr_000_2251

    ld a, b
    jr jr_000_2278

jr_000_2251:
    ld a, $04
    jr jr_000_223b

jr_000_2255:
    ld a, $27
    rst RST_28
    ld a, [$c7bf]
    dec a
    bit 7, a
    jr z, jr_000_2270

    ld a, $04
    ld [$c7bf], a
    ld a, [$df19]
    rlca
    jr c, jr_000_227b

    ld a, [$df16]
    jr jr_000_2278

jr_000_2270:
    ld b, a
    ld a, [$df16]
    cp b
    jr c, jr_000_2278

    ld a, b

jr_000_2278:
    ld [$c7bf], a

Jump_000_227b:
jr_000_227b:
    jp Jump_000_21e4


Call_000_227e:
jr_000_227e:
    call Call_000_21cd
    ld a, [$df15]
    ld b, a
    ld a, [$c20a]
    cp b
    ret z

    inc a
    ld [$c20a], a
    call Call_000_23b9
    ld a, $30
    rst RST_28
    ld a, $0f

jr_000_2296:
    push af
    call Call_000_21cd
    pop af
    dec a
    jr nz, jr_000_2296

    jr jr_000_227e

Call_000_22a0:
    ld a, [$c7bf]
    swap a
    ld b, a
    rrca
    add b
    add $10
    ld b, a
    ld a, [$c7bf]
    cp $04
    jr nz, jr_000_22b6

    ld a, b
    add $08
    ld b, a

jr_000_22b6:
    ld a, [$c360]
    add $28
    ld [$c008], a
    ld [$c00c], a
    add $08
    ld [$c010], a
    ld [$c014], a
    ld a, b
    ld [$c009], a
    ld [$c011], a
    add $08
    ld [$c00d], a
    ld [$c015], a
    ld a, $94
    ld [$c00a], a
    ld [$c00e], a
    ld [$c012], a
    ld [$c016], a
    xor a
    ld [$c00b], a
    ld a, $20
    ld [$c00f], a
    rlca
    ld [$c013], a
    ld a, $60
    ld [$c017], a
    ld a, $18
    ld [$c7cb], a
    ret


    ld hl, $9c00
    ld a, $c0
    ld [hl+], a
    ld b, $12
    inc a

jr_000_2307:
    ld [hl+], a
    dec b
    jr nz, jr_000_2307

    inc a
    ld [hl], a
    ld hl, $9c20
    inc a
    ld bc, $0808
    ld de, $0020

jr_000_2317:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_2317

    ld hl, $9c33

jr_000_231f:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_000_231f

    ld a, $c4
    ld [$9c21], a
    inc a
    ld [$9c29], a
    ld a, $9f
    ld [$9cd0], a
    ld a, $a4
    ld [$9cc1], a
    ld hl, $9cc5
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld b, $c4
    ld [hl], b
    inc l
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ld [$9cc2], a
    ld a, $80
    ld hl, $9c61
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $8a
    ld l, $81
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, [$df19]
    rrca
    jr nc, jr_000_236f

    ld a, $88
    ld hl, $9c6e
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $92
    ld l, $8e
    ld [hl+], a
    inc a
    ld [hl], a

jr_000_236f:
    ld a, $a0
    ld hl, $9cae
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    ld l, $ce
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, [$df16]
    call Call_000_0b7d
    cp b
    inc hl
    xor c
    inc hl
    sbc d
    inc hl
    adc e
    inc hl
    ld a, $86
    ld hl, $9c6a
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $90
    ld l, $8a
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $82
    ld hl, $9c67
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $8c
    ld l, $87
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $84
    ld hl, $9c64
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $8e
    ld l, $84
    ld [hl+], a
    inc a
    ld [hl], a
    ret


Call_000_23b9:
    ld hl, $c797
    ld b, $05
    xor a

jr_000_23bf:
    ld [hl+], a
    dec b
    jr nz, jr_000_23bf

    ld hl, $c797
    ld a, [$df15]
    ld c, a
    ld a, [$c20a]
    or a
    jr z, jr_000_23df

    cp c
    jr z, jr_000_23d5

    jr nc, jr_000_23df

jr_000_23d5:
    ld b, a
    ld a, c
    sub b
    ld c, a
    ld a, $c7

jr_000_23db:
    ld [hl+], a
    dec b
    jr nz, jr_000_23db

jr_000_23df:
    ld a, c
    or a
    jr z, jr_000_23e9

    ld a, $c6

jr_000_23e5:
    ld [hl+], a
    dec c
    jr nz, jr_000_23e5

jr_000_23e9:
    inc a
    ld [$c79f], a
    ret


Call_000_23ee:
    ld a, [$df17]
    add $95
    ld [$c7a1], a
    xor a
    ld [$c7a2], a
    ld a, $d1
    ld [$c7bd], a
    ld a, $9c
    ld [$c7be], a
    call Call_000_21cd
    ld a, [$df0e]
    add $96
    ld [$c7a1], a
    ld a, $c3
    ld [$c7bd], a
    ld a, $9c
    ld [$c7be], a
    call Call_000_21cd
    rst RST_00
    ld a, c
    add $95
    ld [$c7a1], a
    ld a, b
    add $95
    ld [$c7a2], a
    ld a, $cb
    ld [$c7bd], a
    ld a, $9c
    ld [$c7be], a
    jp Jump_000_21cd


Call_000_2436:
    ld a, b
    cp $02
    jr nz, jr_000_2448

    ld d, $c3
    call Call_000_2452
    inc d
    call Call_000_2452
    inc d
    call Call_000_2452

jr_000_2448:
    ld hl, $c300
    xor a
    ld [hl], a
    inc h
    ld [hl], a
    inc h
    ld [hl], a
    ret


Call_000_2452:
    ld e, $00
    ld a, [de]
    rrca
    jr nc, jr_000_246a

    ld e, $0c
    ld a, [de]
    cp $03
    jr nz, jr_000_246a

    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4a28

jr_000_246a:
    ret


Call_000_246b:
    ld b, $83
    call Call_000_1f64
    call Call_000_1f55
    ld b, $1e
    call Call_000_24b2
    ld a, $78
    ld [$c7bf], a

jr_000_247d:
    call Call_000_21cd
    ld a, [$c7bf]
    dec a
    ld [$c7bf], a
    jr nz, jr_000_247d

    call Call_000_24f9
    ld b, $84
    call Call_000_1f64
    jp Jump_000_1f55


Call_000_2494:
    ld b, $83
    call Call_000_1f64
    call Call_000_1f55
    ld b, $1f
    call Call_000_24b2
    ld a, $10

jr_000_24a3:
    push af
    call Call_000_1eb2
    call $6967
    call $69c4
    pop af
    dec a
    jr nz, jr_000_24a3

    ret


Call_000_24b2:
    ld a, $01
    ld [$c693], a
    ld [$df01], a
    ld hl, $c200
    ld de, $c8a3
    ld a, [hl]
    ld [de], a
    ld a, $01
    ld [hl+], a
    inc e
    ld l, $03
    ld a, [hl]
    ld [de], a
    inc e
    ld a, [$c362]
    add $50
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc e
    ld a, [$c363]
    adc $00
    ld [hl+], a
    inc l

Jump_000_24db:
    ld a, [hl]
    ld [de], a
    inc e
    ld a, [$c364]
    add $58
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc e
    ld a, [$c365]
    adc $00
    ld [hl+], a
    ld l, $0e
    ld a, [hl]
    ld [de], a
    inc e
    ld [hl], a
    ld a, b
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_000_24f9:
    ld a, $02
    ld [$df01], a
    xor a

Call_000_24ff:
    ld [$c200], a
    call Call_000_21cd
    ld hl, $c200
    ld de, $c8a3
    ld a, [de]
    and $ef
    ld [hl], a
    inc e
    ld l, $03
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    inc l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld l, $0e
    ld a, [de]
    ld [hl+], a
    ret


Call_000_2524:
Jump_000_2524:
    ld b, $0a
    call Call_000_1f64

Jump_000_2529:
    ld hl, $c664
    dec [hl]
    jr z, jr_000_2558

    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    call $48b5
    call Call_000_1eb2
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    call Call_000_0090
    jp Jump_000_2529


Call_000_2558:
Jump_000_2558:
jr_000_2558:
    ld a, [$df17]
    sub $01
    ld [$df17], a
    jr c, jr_000_256b

    ld a, [$df02]
    cp $19
    ret nc

    jp $0570


jr_000_256b:
    ld a, $0f
    rst RST_28
    call Call_000_2494
    xor a
    ld hl, $c665
    ld [hl+], a
    ld [hl-], a

jr_000_2577:
    call Call_000_0090
    inc [hl]
    jr nz, jr_000_2584

    inc l
    inc [hl]
    ld a, [hl-]
    cp $03
    jr z, jr_000_258a

jr_000_2584:
    ld a, [$c262]
    rrca
    jr nc, jr_000_2577

jr_000_258a:
    ld a, $5e
    ld [$df32], a
    xor a
    ld [$df2e], a
    ld [$df30], a
    inc a
    ld [$df17], a
    ld [$df33], a
    ld a, [$df04]
    bit 7, a
    jr nz, jr_000_25b9

    ld [$df03], a
    xor a
    ld [$df07], a
    ld [$df08], a
    ld [$df06], a
    ld a, $81
    ld [$df01], a
    jp $0570


jr_000_25b9:
    call Call_000_25c8
    jp $0570


Call_000_25bf:
    ld b, $19

jr_000_25c1:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_25c1

    ret


Call_000_25c8:
jr_000_25c8:
    ld b, a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld hl, $7d7a
    ld a, b
    and $07
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $dd00
    call Call_000_25bf
    ld e, $40
    call Call_000_25bf
    ld a, $13
    ld [$df03], a
    ld a, $02
    ld [$df08], a
    xor a
    ld [$df07], a
    ld [$df06], a
    ld a, $81
    ld [$df01], a
    ret


Call_000_25ff:
    ld h, $da
    ld a, [$df1a]
    ld b, a
    bit 3, a
    jr z, jr_000_260e

    ld l, $14
    ld a, $01
    ld [hl], a

jr_000_260e:
    bit 5, b
    jr z, jr_000_2617

    ld l, $7a
    ld a, $01
    ld [hl], a

jr_000_2617:
    ld a, $5e
    ld [$df32], a
    ld a, [$df1b]
    or $80
    ld [$df04], a
    jr jr_000_25c8

Call_000_2626:
    ld hl, $c708
    ld a, $40
    ld [hl], a
    xor a
    ld l, $0c
    ld [hl], a

Call_000_2630:
    ld b, $13
    ld l, $00

jr_000_2634:
    ld [hl], a
    inc h
    dec b
    jr nz, jr_000_2634

    ret


Jump_000_263a:
    ld a, b
    ld hl, $df03
    ld [hl+], a
    ld [hl], a
    ld a, c
    ld [$df14], a
    jr jr_000_264d

Jump_000_2646:
    ld hl, $df02
    ld a, [hl+]
    add $0f
    ld [hl], a

Jump_000_264d:
jr_000_264d:
    xor a
    ld hl, $df06
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    inc a

Jump_000_2655:
    ld [$df01], a
    jp $0570


jr_000_265b:
    call Call_000_2bad
    ld a, [$df06]
    bit 1, a
    jr nz, jr_000_2673

    ld a, [$c200]
    bit 3, a
    jr z, jr_000_265b

    bit 4, a
    jp z, Jump_000_2558

    jr jr_000_265b

jr_000_2673:
    ld a, $0d
    rst RST_28
    call Call_000_2034
    ld b, $05
    call Call_000_1f64
    ld a, $05
    ld b, $0f
    call Call_000_3370
    call Call_000_2626

jr_000_2688:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $736a
    call $4f23
    ld a, [$c700]
    and a
    jr nz, jr_000_26aa

    ld a, [$c212]
    cp $88
    jp nz, Jump_000_26aa

    ld a, [$c27b]
    rrca
    jr c, jr_000_26d0

Jump_000_26aa:
jr_000_26aa:
    ld a, [$c70c]
    cp $04
    jr z, jr_000_26bf

    cp $06
    jr z, jr_000_26bf

    cp $07
    jr z, jr_000_26bf

    call $44df
    call Call_000_1eb2

jr_000_26bf:
    call Call_000_07f3
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_26ce

    bit 4, a
    jp z, Jump_000_2558

jr_000_26ce:
    jr jr_000_2688

jr_000_26d0:
    ld a, $5f
    ld [$df32], a
    ld bc, $0001
    jp Jump_000_263a


Jump_000_26db:
    ld a, $2f
    rst RST_28
    ld b, $07
    call Call_000_1f64
    ld hl, $9a5c
    call Call_000_271e
    ld hl, $9a5b
    call Call_000_271e
    ld a, $20
    call Call_000_00d0
    ld a, $2f
    rst RST_28
    ld b, $06
    call Call_000_1f64
    ld hl, $9a5d
    call Call_000_271e
    ld hl, $9a5a
    call Call_000_271e
    ld a, $20
    call Call_000_00d0
    ld a, $f0
    rst RST_28
    ld b, $07
    call Call_000_1f64
    ld hl, $9a5e
    call Call_000_271e
    ld hl, $9a59

Call_000_271e:
    call Call_000_0090
    call Call_000_0090
    ld a, l
    ld [$c7bb], a
    ld a, h
    ld [$c7bc], a
    ld a, $01
    ld [$c7a0], a
    ret


jr_000_2732:
    call Call_000_2bad
    ld a, [$df06]
    bit 1, a
    jr nz, jr_000_274a

    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2732

    bit 4, a
    jp z, Jump_000_2558

    jr jr_000_2732

jr_000_274a:
    ld a, $0d
    rst RST_28
    ld a, $04
    ld b, $09
    call Call_000_3370
    ld a, $04
    ld [$c580], a

jr_000_2759:
    ld a, [$c580]
    and a
    jr nz, jr_000_2776

    xor a
    ld [$c57e], a
    call Call_000_063e
    call Call_000_279f
    ld a, $07
    ld [$df06], a

jr_000_276e:
    ld a, [$c212]
    cp $19
    jp z, Jump_000_27f5

jr_000_2776:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    call $44df
    call Call_000_1eb2
    call Call_000_07f3
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2796

    bit 4, a
    jp z, Jump_000_2558

jr_000_2796:
    ld a, [$df06]
    bit 2, a
    jr nz, jr_000_276e

    jr jr_000_2759

Call_000_279f:
    ld a, $f0
    rst RST_28
    ld a, $11
    rst RST_28
    ld a, $00
    call Call_000_00d0
    ld a, $2f
    rst RST_28
    ld bc, $14c0
    call Call_000_27e1
    ld a, $08
    call Call_000_00d0
    ld a, $2f
    rst RST_28
    ld bc, $1480
    call Call_000_27e1
    ld a, $08
    call Call_000_00d0
    ld a, $2f
    rst RST_28
    ld bc, $1440
    call Call_000_27e1
    ld a, $f0
    rst RST_28
    xor a
    ld hl, $c1a0
    ld [hl+], a
    ld [hl], a
    ld l, $b0

Jump_000_27da:
    ld [hl+], a
    ld [hl], a
    ld l, $90
    ld [hl+], a
    ld [hl], a
    ret


Call_000_27e1:
    call Call_000_27e8
    ld a, c
    add $02
    ld c, a

Call_000_27e8:
    ld hl, $c687
    ld a, c
    ld [hl+], a
    ld a, $9a
    ld [hl+], a
    ld a, b
    ld [hl], a
    jp Jump_000_0090


Jump_000_27f5:
    ld a, $01
    ld [$df31], a
    ld bc, $2802
    jp Jump_000_263a


    ld b, $21
    call Call_000_1f64

jr_000_2805:
    call Call_000_2bad
    ld a, [$df06]
    bit 1, a
    jr nz, jr_000_281d

    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2805

    bit 4, a
    jp z, Jump_000_2558

    jr jr_000_2805

jr_000_281d:
    ld a, $0d
    rst RST_28
    call Call_000_2034
    ld b, $8e
    call Call_000_1f64

Call_000_2828:
    ld a, $04
    ld b, $37
    call Call_000_3370
    call Call_000_2626

jr_000_2832:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $7721
    call $4f23
    ld hl, $c700
    ld a, [hl]
    and a
    jr nz, jr_000_2855

    ld a, [$c212]
    cp $88
    jp nz, Jump_000_2855

    ld a, [$c27b]
    rrca
    jr c, jr_000_287b

Jump_000_2855:
jr_000_2855:
    ld a, [$c70c]
    cp $04
    jr z, jr_000_286a

    cp $06
    jr z, jr_000_286a

    cp $07
    jr z, jr_000_286a

    call $44df
    call Call_000_1eb2

jr_000_286a:
    call Call_000_07f3
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2879

    bit 4, a
    jp z, Jump_000_2558

jr_000_2879:
    jr jr_000_2832

jr_000_287b:
    ld bc, $0b03
    jp Jump_000_263a


    ld b, $1f
    call Call_000_1f64

jr_000_2886:
    call Call_000_2bad
    ld a, [$df06]
    bit 1, a
    jr nz, jr_000_289e

    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2886

    bit 4, a
    jp z, Jump_000_2558

    jr jr_000_2886

jr_000_289e:
    ld a, $0d
    rst RST_28
    call Call_000_2034
    ld b, $9e
    call Call_000_1f64
    ld a, $04
    ld b, $3a
    call Call_000_3370
    call Call_000_2626

jr_000_28b3:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $79a2
    call $4f23
    ld hl, $c700
    ld a, [hl]
    and a
    jr nz, jr_000_28d6

    ld a, [$c212]
    cp $88
    jp nz, Jump_000_28d6

    ld a, [$c27b]
    rrca
    jr c, jr_000_28fc

Jump_000_28d6:
jr_000_28d6:
    ld a, [$c70c]
    cp $04
    jr z, jr_000_28eb

    cp $06
    jr z, jr_000_28eb

    cp $07
    jr z, jr_000_28eb

    call $44df
    call Call_000_1eb2

jr_000_28eb:
    call Call_000_07f3
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_28fa

    bit 4, a
    jp z, Jump_000_2558

jr_000_28fa:
    jr jr_000_28b3

jr_000_28fc:
    ld a, $01
    ld [$df31], a
    ld bc, $2c04
    jp Jump_000_263a


    ld b, $20
    call Call_000_1f64

jr_000_290c:
    call Call_000_2bad
    ld a, [$df06]
    bit 1, a
    jr nz, jr_000_2924

    ld a, [$c200]
    bit 3, a
    jr z, jr_000_290c

    bit 4, a
    jp z, Jump_000_2558

    jr jr_000_290c

jr_000_2924:
    ld a, $0d
    rst RST_28
    xor a
    ld h, $c7
    call Call_000_2630
    dec a
    ld [$ca23], a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4ee8

jr_000_293c:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    ld a, [$c700]
    or a
    jr z, jr_000_296b

    ld a, [$c80c]
    cp $04
    jr z, jr_000_295a

    call $44df
    call Call_000_1eb2

jr_000_295a:
    call Call_000_07f3
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2969

    bit 4, a
    jp z, Jump_000_2558

jr_000_2969:
    jr jr_000_293c

jr_000_296b:
    ld a, $11
    rst RST_28
    ld a, $00
    call Call_000_00d0
    ld bc, $0f05
    jp Jump_000_263a


    ld b, $19
    call Call_000_1f64

jr_000_297e:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    call $44df
    ld a, [$c365]
    ld [$c7cc], a
    push af
    and $01
    ld [$c365], a
    call $4cf5
    pop af
    ld [$c365], a
    call Call_000_1eb2
    call Call_000_07f3
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_29b1

    bit 4, a
    jp z, Jump_000_2558

jr_000_29b1:
    ld a, [$df06]
    bit 2, a
    jr nz, jr_000_29ba

    jr jr_000_297e

jr_000_29ba:
    xor a
    ld [$df02], a
    ld bc, $1006
    jp Jump_000_263a


    ld b, $29
    call Call_000_1f64

jr_000_29c9:
    call Call_000_2bad
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_29d8

    bit 4, a
    jp z, Jump_000_2558

jr_000_29d8:
    ld a, [$c212]
    cp $90
    jr z, jr_000_29e5

    cp $20
    jr z, jr_000_29e8

    jr jr_000_29c9

jr_000_29e5:
    jp Jump_000_2646


jr_000_29e8:
    ld hl, $df02
    ld a, [hl+]
    add $10
    ld [hl], a
    jp Jump_000_264d


    ld b, $29
    call Call_000_1f64
    ld a, $01
    ld [$c200], a

jr_000_29fc:
    call Call_000_2bad
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2a0b

    bit 4, a
    jp z, Jump_000_2558

jr_000_2a0b:
    ld a, [$c212]
    cp $20
    jr z, jr_000_2a18

    cp $90
    jr z, jr_000_2a1b

    jr jr_000_29fc

jr_000_2a18:
    jp Jump_000_2646


jr_000_2a1b:
    ld hl, $df02
    ld a, [hl+]
    add $0e
    ld [hl], a
    jp Jump_000_264d


jr_000_2a25:
    call Call_000_2bad
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2a34

    bit 4, a
    jp z, Jump_000_2558

jr_000_2a34:
    ld a, [$c212]
    cp $90
    jr z, jr_000_2a41

    cp $20
    jr z, jr_000_2a50

    jr jr_000_2a25

jr_000_2a41:
    xor a
    ld [$df2e], a
    ld a, $0d
    ld [$df03], a
    ld [$df04], a
    jp Jump_000_264d


jr_000_2a50:
    xor a
    ld [$df06], a
    ld a, [$df08]
    dec a
    rlca
    rlca
    swap a
    add $18
    ld l, a
    ld h, $dd
    ld a, [hl]
    ld [$df03], a
    ld a, $82
    ld [$df07], a
    ld a, $01
    ld [$df01], a
    jp $0570


    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld a, [$df02]
    sub $19
    ld hl, $2b7e
    call Call_000_0071
    ld a, [hl]
    and $3f
    ld b, a
    ld c, $04
    ld a, [hl]
    rlca
    jr c, jr_000_2a90

    inc c

jr_000_2a90:
    ld a, c
    call Call_000_3370
    ld a, $04
    ld [$df32], a

Jump_000_2a99:
jr_000_2a99:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    call $44df
    call Call_000_1eb2
    ld a, [$c200]
    bit 0, a
    jr nz, jr_000_2ab8

    call Call_000_2524
    ld b, $01
    jr jr_000_2acb

jr_000_2ab8:
    call Call_000_07f3
    ld b, $01
    ld a, [$c200]
    bit 3, a
    jr z, jr_000_2ad2

    bit 4, a
    jr nz, jr_000_2ad2

    call Call_000_2558

jr_000_2acb:
    ld a, $02
    ld [$df2e], a
    jr jr_000_2b26

jr_000_2ad2:
    ld hl, $c700
    ld b, $05

jr_000_2ad7:
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2a99

    inc h
    dec b
    jr nz, jr_000_2ad7

    ld hl, $c200
    res 4, [hl]
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call Call_000_1eb2
    call $69c4
    ld a, $11
    rst RST_28

Call_000_2af6:
    ld a, $00
    call Call_000_00d0
    ld a, [$df02]
    sub $19
    ld c, a
    ld a, [$df2d]
    and a
    jr z, jr_000_2b14

    ld a, c
    ld hl, $2b63
    call Call_000_0071
    ld a, [hl]
    ld [$df32], a
    jr jr_000_2b22

jr_000_2b14:
    ld a, c
    rlca
    add c
    ld c, a
    ld a, [$c694]
    add c
    ld hl, $2b6c
    call Call_000_0071

jr_000_2b22:
    ld a, [hl]
    ld [$df32], a

jr_000_2b26:
    xor a
    ld [$df06], a
    ld a, [$df08]
    dec a
    rlca
    rlca
    swap a
    add $18
    ld l, a
    ld h, $dd
    ld a, [hl]
    ld [$df03], a
    ld a, $82
    ld [$df07], a
    dec b
    jr z, jr_000_2b5b

    ld a, [$df2d]
    and a
    jr z, jr_000_2b5b

    ld d, $da
    ld e, a
    ld a, [de]
    bit 7, a
    jr z, jr_000_2b56

    or $01
    ld [de], a
    jr jr_000_2b5b

jr_000_2b56:
    ld a, $01
    ld [$df2e], a

jr_000_2b5b:
    ld a, $81
    ld [$df01], a
    jp $0570


    ld h, a
    ld h, a
    nop
    ld h, a
    ld h, a
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld l, b
    ld h, a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    dec e
    ld e, $1f
    inc h
    ld h, $25
    nop
    add l
    adc l
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld hl, $c66a
    ld a, [hl+]
    ld [hl], a
    ld a, [$df16]
    and a
    jr nz, jr_000_2ba0

    ld [$df38], a
    call Call_000_2178

jr_000_2ba0:
    ld a, $04
    ld b, $0d
    call Call_000_3370
    call Call_000_3241
    jp Jump_000_2a99


Call_000_2bad:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4f23
    call $44df
    call $4cf5
    call Call_000_1eb2
    jp Jump_000_07f3


Jump_000_2bc4:
    ld a, $01
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    ld b, $02
    call Call_000_2039
    call Call_000_2edd

jr_000_2bd4:
    call Call_000_075a
    ld hl, $c584
    ld a, [hl]
    rrca
    jr nc, jr_000_2bf4

    ld a, [$c583]
    and a
    jr nz, jr_000_2bd4

    xor a
    ld [$c584], a
    ld a, [$df2d]
    ld h, $da
    ld l, a
    inc [hl]
    call Call_000_2e81
    jr jr_000_2bd4

jr_000_2bf4:
    ld a, [hl]
    rlca
    jr c, jr_000_2bd4

    rlca
    jr nc, jr_000_2bd4

    set 7, [hl]
    call Call_000_2e81
    jr jr_000_2bd4

Jump_000_2c02:
    call Call_000_2e59
    call Call_000_2edd
    jr jr_000_2c0d

Jump_000_2c0a:
    call Call_000_2e59

Jump_000_2c0d:
jr_000_2c0d:
    call Call_000_075a
    jr jr_000_2c0d

Jump_000_2c12:
    call Call_000_2e59
    ld a, [$df2e]
    rrca
    jr c, jr_000_2c23

    call Call_000_2edd

jr_000_2c1e:
    call Call_000_075a
    jr jr_000_2c1e

jr_000_2c23:
    xor a
    ld [$df2e], a
    ld a, $81
    ld [$c274], a
    ld b, a
    xor a
    call Call_000_0061
    call Call_000_3241
    ld a, $15
    ld [$df32], a
    call Call_000_2edd

Call_000_2c3c:
    xor a
    ld [$c700], a
    ld hl, $da7a
    inc [hl]
    call Call_000_0090
    jr jr_000_2c1e

Jump_000_2c49:
    ld a, $02
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    ld a, [$c274]
    ld b, a
    xor a
    call Call_000_0061
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call Call_000_3241
    ld a, $1e
    call Call_000_00d0
    ld a, [$df37]
    and a
    jr nz, jr_000_2ca1

    inc a
    ld [$df37], a
    ld bc, $0401
    push bc

jr_000_2c77:
    pop bc
    ld a, c
    inc c
    dec b
    jr z, jr_000_2c96

    push bc
    ld [$df32], a
    call Call_000_2ec4
    call Call_000_2edd
    ld a, $c8
    ld [$c703], a
    call Call_000_3241
    ld a, $1e
    call Call_000_00d0
    jr jr_000_2c77

jr_000_2c96:
    xor a
    ld [$c700], a
    inc a
    ld [$da03], a
    call Call_000_0090

jr_000_2ca1:
    call Call_000_2edd
    call Call_000_075a
    jr jr_000_2ca1

Jump_000_2ca9:
    ld a, $0a
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    jp Jump_000_2c0d


Jump_000_2cb4:
    call Call_000_2e59
    ld a, [$df2e]

Call_000_2cba:
    bit 0, a
    jp nz, Jump_000_2d44

    bit 1, a
    jr z, jr_000_2cca

    ld hl, $cc00
    res 4, [hl]
    jr jr_000_2d40

jr_000_2cca:
    call Call_000_075a
    ld a, [$c70d]
    rrca
    jr nc, jr_000_2cca

    ld a, $20
    ld [$c57b], a

jr_000_2cd8:
    ld a, [$c57b]
    bit 0, a
    jr nz, jr_000_2ce3

    ld hl, $c706
    inc [hl]

jr_000_2ce3:
    call Call_000_3236
    call Call_000_3241
    ld a, [$c57b]
    dec a
    ld [$c57b], a
    jr z, jr_000_2cf7

    call Call_000_0090
    jr jr_000_2cd8

jr_000_2cf7:
    call Call_000_075a
    ld a, [$df30]
    rrca
    jr nc, jr_000_2cf7

    ld a, $80
    ld [$df30], a
    call Call_000_05e9
    xor a
    ld [$c57c], a

jr_000_2d0c:
    ld hl, $c800
    ld a, [$c57c]
    add h
    ld h, a
    res 4, [hl]

jr_000_2d16:
    call Call_000_075a
    ld h, $c8
    ld a, [$c57c]
    add h
    ld h, a
    ld l, $0d
    ld a, [hl]
    rrca
    jr nc, jr_000_2d16

    ld l, $00
    xor a
    ld [hl], a
    ld a, [$c57c]
    inc a
    ld [$c57c], a
    cp $04
    jr nz, jr_000_2d0c

    inc h
    res 4, [hl]
    call Call_000_05b9

jr_000_2d3b:
    call Call_000_075a
    jr jr_000_2d3b

jr_000_2d40:
    xor a
    ld [$df2e], a

Jump_000_2d44:
jr_000_2d44:
    call Call_000_075a
    ld a, [$c70d]
    rrca
    jr nc, jr_000_2d44

    call Call_000_2e81

jr_000_2d50:
    call Call_000_075a
    jr jr_000_2d50

Jump_000_2d55:
    call Call_000_2e59

jr_000_2d58:
    call Call_000_075a
    ld hl, $c70d
    ld a, [hl]
    rrca
    jr c, jr_000_2d67

    inc h
    ld a, [hl]
    rrca
    jr nc, jr_000_2d58

jr_000_2d67:
    ld a, $a0
    ld [$c57b], a
    call Call_000_2ea4

jr_000_2d6f:
    call Call_000_075a
    jr jr_000_2d6f

Jump_000_2d74:
    call Call_000_2e59

jr_000_2d77:
    call Call_000_075a
    ld hl, $c70d
    ld a, [hl]
    rrca
    jr c, jr_000_2d86

    inc h
    ld a, [hl]
    rrca
    jr nc, jr_000_2d77

jr_000_2d86:
    ld hl, $c700
    xor a
    ld [hl], a
    inc h
    ld [hl], a

jr_000_2d8d:
    call Call_000_075a
    ld a, [$c460]
    and a
    jr nz, jr_000_2d8d

    ld a, $4a
    ld [$df32], a
    call Call_000_2edd

jr_000_2d9e:
    call Call_000_075a
    jr jr_000_2d9e

Jump_000_2da3:
    call Call_000_2e59

jr_000_2da6:
    call Call_000_075a
    ld a, [$df2e]
    and a
    jr z, jr_000_2da6

    ld hl, $c70d
    ld a, [hl]
    rrca
    jr c, jr_000_2dbb

    inc h
    ld a, [hl]
    rrca
    jr nc, jr_000_2da6

jr_000_2dbb:
    call Call_000_075a
    ld a, [$c460]
    and a
    jr nz, jr_000_2dbb

    xor a
    ld [$c57e], a
    call Call_000_063e
    ld hl, $c700
    xor a
    ld [hl], a
    inc h
    ld [hl], a
    call Call_000_3241
    ld a, $3f
    call Call_000_00d0
    xor a
    ld [$df07], a
    ld [$df08], a
    ld [$df06], a
    ld a, $11
    ld [$df03], a
    ld a, $01
    ld [$df01], a
    jp $0570


Jump_000_2df1:
    ld a, $0a
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28

jr_000_2df9:
    call Call_000_075a
    ld hl, $c70d
    ld a, [hl]
    rrca
    jr c, jr_000_2e08

    inc h
    ld a, [hl]
    rrca
    jr nc, jr_000_2df9

jr_000_2e08:
    call Call_000_075a
    ld a, [$c460]
    and a
    jr nz, jr_000_2e08

    jp Jump_000_3466


Jump_000_2e14:
    call Call_000_2e59

jr_000_2e17:
    call Call_000_075a
    ld a, [$df30]
    and a
    jr z, jr_000_2e17

    ld a, [$df1a]
    res 1, a
    ld [$df1a], a
    xor a
    ld [$df30], a
    jr jr_000_2e17

Jump_000_2e2e:
    xor a
    ld [$df2e], a
    jp Jump_000_2bc4


Jump_000_2e35:
    ld a, [$df31]
    and a
    jr z, jr_000_2e44

    xor a
    ld [$df31], a
    ld a, $70
    ld [$df32], a

jr_000_2e44:
    jp Jump_000_2bc4


Jump_000_2e47:
    ld a, [$df31]
    and a
    jr z, jr_000_2e56

    xor a
    ld [$df31], a
    ld a, $71
    ld [$df32], a

jr_000_2e56:
    jp Jump_000_2bc4


Call_000_2e59:
    ld a, [$df01]
    rlca
    jr c, jr_000_2e65

    ld a, [$df09]
    rrca
    jr c, jr_000_2e72

jr_000_2e65:
    ld hl, $df01
    res 7, [hl]
    ld a, $02
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28

jr_000_2e72:
    ret


    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4ee8
    jp Jump_000_0090


Call_000_2e81:
    ld a, $20
    ld [$c57b], a

jr_000_2e86:
    ld a, [$c57b]
    bit 0, a
    jr nz, jr_000_2e91

    ld hl, $c703
    dec [hl]

jr_000_2e91:
    call Call_000_3236
    call Call_000_3241
    ld a, [$c57b]
    dec a
    ld [$c57b], a
    ret z

    call Call_000_0090
    jr jr_000_2e86

Call_000_2ea4:
jr_000_2ea4:
    ld a, [$c57b]
    bit 0, a
    jr nz, jr_000_2eb1

    ld hl, $c703
    dec [hl]
    inc h
    dec [hl]

jr_000_2eb1:
    call Call_000_3236
    call Call_000_3241
    ld a, [$c57b]

Call_000_2eba:
    dec a
    ld [$c57b], a
    ret z

    call Call_000_0090
    jr jr_000_2ea4

Call_000_2ec4:
    ld a, $40
    ld [$c57b], a

jr_000_2ec9:
    ld hl, $c703
    dec [hl]
    call Call_000_3236
    call Call_000_3241
    ld hl, $c57b
    dec [hl]
    ret z

    call Call_000_0090
    jr jr_000_2ec9

Call_000_2edd:
    ld a, [$df32]
    and a
    ret z

    ld a, [$c274]
    ld b, a
    xor a
    call Call_000_0061
    call Call_000_3241
    xor a
    ld [$c564], a
    ld a, $07
    ld [$c361], a
    call Call_000_151a
    ld a, $60
    ld [$c360], a
    ld a, [$df32]
    ld b, a
    call Call_000_1582
    xor a
    ld [$c463], a
    ld [$df32], a
    ld a, $90
    ld [$c360], a
    jp Jump_000_0090


    call Call_000_3044
    jp Jump_000_3063


    call Call_000_3044
    ld a, [de]
    inc de
    ld b, a
    ld a, [$df14]
    dec a
    jr z, jr_000_2f27

    inc de

jr_000_2f27:
    jp Jump_000_3063


    call Call_000_3044
    ld hl, $c584
    set 6, [hl]
    ld a, [de]
    inc de
    ld b, a
    ld a, [$df1a]
    and b
    jr z, jr_000_2f3e

    inc de
    res 6, [hl]

jr_000_2f3e:
    jp Jump_000_3063


Call_000_2f41:
    call Call_000_2f7f
    call Call_000_05a4
    ld hl, $c565
    ld de, $c967
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, $cd
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, [de]
    dec e
    ld [hl+], a
    ld a, $01
    ld [$c561], a
    ld a, $09
    ld [$c563], a
    ld a, $9c
    ld [$c560], a
    ld a, $44
    ld [$c562], a
    jp Jump_000_0090


Call_000_2f7f:
    ld a, [$df08]
    dec a
    rlca
    rlca
    swap a
    add $18
    ld h, $dd
    ld l, a
    ld a, [hl]
    ld [$df1b], a
    or $80
    ld [$df04], a
    ret


    call Call_000_3044
    ld a, [$df1a]
    bit 2, a
    jp nz, Jump_000_3063

    inc de
    ld a, [$df14]
    bit 1, a
    jp nz, Jump_000_3063

    inc de
    ld a, [$df1a]
    bit 0, a
    jp nz, Jump_000_3063

    inc de
    jp Jump_000_3063


    call Call_000_3044
    ld a, [$df1a]
    bit 3, a
    jp nz, Jump_000_3063

    ld a, $01
    ld [$c584], a

Jump_000_2fc7:
    inc de
    ld a, [$df1a]
    bit 2, a
    jp nz, Jump_000_3063

    xor a
    ld [$c584], a
    inc de
    jp Jump_000_3063


    call Call_000_3044
    ld a, [$df0e]
    cp $02
    jp z, Jump_000_3063

    inc de
    jp Jump_000_3063


    call Call_000_3044
    ld a, [$df1a]
    bit 6, a
    ld [$c4ad], a
    jp nz, Jump_000_3063

    xor a
    ld [$c4ad], a
    inc de
    jp Jump_000_3063


    call Call_000_3044
    ld a, [$df2e]
    rrca
    jp c, Jump_000_3063

    inc de
    jp Jump_000_3063


    call Call_000_3044
    ld a, [$df08]
    dec a
    rlca
    rlca
    swap a
    add $18
    ld h, $dd
    ld l, a
    ld a, [hl]
    ld l, $08
    cp $03

Jump_000_3020:
    jr c, jr_000_3030

    inc de
    inc de
    inc de
    ld l, $10
    cp $05
    jr c, jr_000_3030

    inc de
    inc de
    inc de
    ld l, $20

jr_000_3030:
    ld a, [$df17]
    cp $09
    jp nc, Jump_000_3063

    inc de
    ld a, [$df18]
    sub l
    jp nc, Jump_000_3063

    inc de
    jp Jump_000_3063


Call_000_3044:
    push de
    call Call_000_3236
    call Call_000_0090
    call Call_000_3236
    call Call_000_3241
    call Call_000_0090
    pop de
    ld a, $05
    ld [$c3c5], a
    ld [$3000], a
    ld a, [de]
    inc de
    ld [$c57a], a
    ret


Jump_000_3063:
    ld a, [de]
    ld hl, $6000
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_000_306d:
jr_000_306d:
    ld a, $9c
    ld [$c560], a
    ld a, $41
    ld [$c562], a

Jump_000_3077:
jr_000_3077:
    ld a, [hl+]
    ld b, a
    bit 7, a
    jr z, jr_000_308f

    push hl
    res 7, a
    ld hl, $6128
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3205
    pop hl
    jr jr_000_3077

jr_000_308f:
    sub $7f
    jr nz, jr_000_30a5

jr_000_3093:
    ld a, [$c262]
    and $03
    jr nz, jr_000_309f

    call Call_000_0090
    jr jr_000_3093

jr_000_309f:
    ld a, $04
    ld [$c463], a
    ret


jr_000_30a5:
    inc a
    jr nz, jr_000_30b2

    ld a, [hl]
    ld c, a
    cp $08
    jp z, Jump_000_326f

    jp Jump_000_3254


jr_000_30b2:
    inc a
    jr nz, jr_000_30bc

    ld a, $81
    ld [$c562], a
    jr jr_000_3077

jr_000_30bc:
    inc a
    jr nz, jr_000_30de

jr_000_30bf:
    ld a, [$c262]
    and $03
    jr nz, jr_000_30d0

    push hl
    call Call_000_1796
    call Call_000_0090
    pop hl
    jr jr_000_30bf

jr_000_30d0:
    push hl
    xor a
    ld [$c004], a
    ld [$c564], a
    call Call_000_151a
    pop hl
    jr jr_000_306d

jr_000_30de:
    inc a
    jr nz, jr_000_30e8

    ld a, [hl+]
    call Call_000_00d0
    jp Jump_000_3077


jr_000_30e8:
    inc a
    inc a
    jr nz, jr_000_30fe

    ld a, [hl]
    rst RST_28
    ld c, $c0
    ld a, [hl+]
    cp $2d
    jr nz, jr_000_30f7

    ld c, $60

jr_000_30f7:
    ld a, c
    call Call_000_00d0
    jp Jump_000_3077


jr_000_30fe:
    inc a
    jr nz, jr_000_310d

    ld a, [hl+]
    ld c, a
    ld a, [$df1a]
    or c
    ld [$df1a], a
    jp Jump_000_3077


jr_000_310d:
    inc a
    jr nz, jr_000_313d

    ld a, [hl+]
    bit 7, a
    jr z, jr_000_311d

    and $0f
    ld [$df15], a
    jp Jump_000_3077


jr_000_311d:
    bit 6, a
    jr z, jr_000_3129

    and $0f
    ld [$df13], a
    jp Jump_000_3077


jr_000_3129:
    bit 5, a
    jr z, jr_000_3135

    and $0f
    ld [$df0e], a
    jp Jump_000_3077


jr_000_3135:
    and $0f
    ld [$df16], a
    jp Jump_000_3077


jr_000_313d:
    inc a
    jr nz, jr_000_3151

    ld a, $ff
    call Call_000_00d0
    push hl
    xor a
    ld [$c564], a
    call Call_000_151a
    pop hl
    jp Jump_000_306d


jr_000_3151:
    inc a
    jr nz, jr_000_315f

    ld a, $ff
    call Call_000_00d0
    ld a, $04
    ld [$c463], a
    ret


jr_000_315f:
    inc a
    jr nz, jr_000_3197

    ld a, [hl+]
    bit 7, a
    jr z, jr_000_317a

    and $0f
    ld c, a
    ld a, [$df17]
    add c
    cp $0a
    jr c, jr_000_3174

    ld a, $09

jr_000_3174:
    ld [$df17], a
    jp Jump_000_3077


jr_000_317a:
    bit 6, a
    jr z, jr_000_3186

    ld a, $01
    ld [$df19], a
    jp Jump_000_3077


jr_000_3186:
    ld b, a
    ld a, [$df18]
    add b
    cp $64
    jr c, jr_000_3191

    ld a, $63

jr_000_3191:
    ld [$df18], a
    jp Jump_000_3077


jr_000_3197:
    inc a
    jr nz, jr_000_31ac

    ld a, [hl+]
    ld [$df02], a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $71a7
    jp $7142


jr_000_31ac:
    inc a
    jr nz, jr_000_31ca

    ld a, [$df2d]
    ld d, $da
    ld e, a
    ld a, $80
    ld [de], a
    ld a, [hl+]
    ld [$df02], a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $71a7
    jp $7142


jr_000_31ca:
    inc a
    jr nz, jr_000_31d5

    push hl
    call Call_000_2f41
    pop hl
    jp Jump_000_3077


jr_000_31d5:
    ld a, b
    cp $20
    jr nz, jr_000_31e2

    ld a, $10
    call Call_000_00d0
    push hl
    jr jr_000_31f4

jr_000_31e2:
    push hl
    add $a0
    ld [$c565], a
    ld a, $01
    ld [$c561], a
    ld [$c563], a
    ld a, [$c57a]
    rst RST_28

jr_000_31f4:
    ld a, [$c562]
    inc a
    ld [$c562], a
    call Call_000_0090
    call Call_000_0090
    pop hl
    jp Jump_000_3077


Call_000_3205:
jr_000_3205:
    ld a, [hl+]
    and a
    ret z

    cp $20
    jr nz, jr_000_3214

    ld a, $10
    call Call_000_00d0
    push hl
    jr jr_000_3226

jr_000_3214:
    push hl
    add $a0
    ld [$c565], a
    ld a, $01
    ld [$c561], a
    ld [$c563], a
    ld a, [$c57a]
    rst RST_28

jr_000_3226:
    ld a, [$c562]
    inc a
    ld [$c562], a
    call Call_000_0090
    call Call_000_0090
    pop hl
    jr jr_000_3205

Call_000_3236:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    jp $4f23


Call_000_3241:
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    ld a, $08
    ld [$c7cb], a
    jp $69c4


Jump_000_3254:
    push bc
    call Call_000_32b6
    pop bc
    ld a, c
    ld hl, $3330
    rlca
    call Call_000_0071
    ld a, [$c583]
    and a
    jr z, jr_000_3268

    inc hl

jr_000_3268:
    ld a, [hl]
    call Call_000_3326
    jp Jump_000_306d


Jump_000_326f:
    push bc
    call Call_000_32b6
    pop bc
    ld a, c
    ld hl, $3330
    rlca
    call Call_000_0071
    ld a, [$c583]
    and a
    jr z, jr_000_3285

    inc hl
    jr jr_000_32af

jr_000_3285:
    ld a, [$df08]
    dec a
    rlca
    rlca
    swap a
    add $18
    ld d, $dd
    ld e, a
    ld a, [de]
    ld e, $08
    cp $03
    jr c, jr_000_32a1

    ld e, $10
    cp $05
    jr c, jr_000_32a1

    ld e, $20

jr_000_32a1:
    ld a, [$df17]
    inc a
    ld [$df17], a
    ld a, [$df18]
    sub e
    ld [$df18], a

jr_000_32af:
    ld a, [hl]
    call Call_000_3326
    jp Jump_000_306d


Call_000_32b6:
    ld a, $01
    ld [$c561], a
    ld a, $03
    ld [$c563], a
    ld a, $9c
    ld [$c560], a
    ld a, $44
    ld [$c562], a
    ld a, $f9
    ld [$c565], a
    ld a, $e5
    ld [$c566], a
    ld a, $f3
    ld [$c567], a
    call Call_000_0090
    ld a, $01
    ld [$c561], a
    ld a, $02
    ld [$c563], a
    ld a, $9c
    ld [$c560], a
    ld a, $84
    ld [$c562], a
    ld a, $ee
    ld [$c565], a
    ld a, $ef
    ld [$c566], a
    call Call_000_0090
    xor a
    ld [$c583], a

jr_000_3301:
    ld a, [$c262]
    bit 0, a
    jr nz, jr_000_331c

    and $c0
    jr z, jr_000_3314

    ld a, [$c583]
    xor $10
    ld [$c583], a

jr_000_3314:
    call Call_000_17af
    call Call_000_0090
    jr jr_000_3301

jr_000_331c:
    xor a
    ld [$c004], a
    ld [$c564], a
    jp Jump_000_151a


Call_000_3326:
    ld hl, $6000
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    rrca
    ld c, $1c
    dec de
    dec [hl]
    inc [hl]
    ld h, a
    inc a
    ld b, l
    ld b, h
    ld d, [hl]
    ld d, a
    ld e, [hl]
    ld h, b
    add [hl]
    adc b
    add a
    adc b
    adc c
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_3370:
    ld de, $ca60
    ld [de], a
    inc e
    inc e
    xor a
    ld [$c3a7], a
    ld [$c3a8], a
    ld a, [$c39a]
    ld hl, $3c98
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    call Call_000_0081
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    inc e
    inc e
    xor a
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld a, $98
    ld [de], a
    ld e, $a8
    ld a, $ff
    ld [de], a
    inc e
    inc a
    ld [de], a
    inc a
    ld [$c690], a
    ret


Call_000_33a9:
    ld de, $ca60
    ld a, [de]
    and a
    ret z

    ld [$3000], a
    inc e
    ld a, [de]
    or a
    ret nz

    inc a
    ld [de], a
    inc e
    ld a, [de]
    inc e

Jump_000_33bb:
    ld c, a
    ld a, [de]
    inc e
    ld b, a
    ld a, $08
    ld [de], a
    inc e
    ld a, [de]
    rrca
    jr c, jr_000_33ec

    ld e, $68

jr_000_33c9:
    call Call_000_3446
    push bc
    ld b, d
    ld a, e
    add $20
    ld c, a
    call Call_000_3422
    call Call_000_3422
    pop bc
    call Call_000_3456
    push bc
    call Call_000_342f
    pop bc
    inc bc
    ld hl, $ca64
    dec [hl]
    jr nz, jr_000_33c9

    ld l, $65
    inc [hl]
    ret


jr_000_33ec:
    ld e, $68

jr_000_33ee:
    call Call_000_3446
    push bc
    ld b, d
    ld a, e
    add $20
    ld c, a
    inc hl
    inc hl
    call Call_000_3422
    call Call_000_3422
    pop bc
    call Call_000_3456
    push bc
    inc hl
    call Call_000_342f
    pop bc
    inc bc
    ld hl, $ca64
    dec [hl]
    jr nz, jr_000_33ee

    inc l
    inc [hl]
    ld a, [hl]
    cp $10
    jr z, jr_000_341d

    ld l, $62
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_000_341d:
    ld l, $60
    xor a
    ld [hl], a
    ret


Call_000_3422:
    ld a, [hl+]
    ld [de], a
    inc a
    inc e
    ld [de], a
    inc a
    inc e
    ld [bc], a
    inc a
    inc c
    ld [bc], a
    inc c
    ret


Call_000_342f:
    ld b, $c1
    ld a, [$caa9]
    ld c, a
    ld a, [hl]
    and $f0
    swap a
    ld [bc], a
    inc c
    ld a, [hl]
    and $0f
    ld [bc], a
    inc c
    ld a, c
    ld [$caa9], a
    ret


Call_000_3446:
    ld a, [$c39a]
    ld hl, $3cb0
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [bc]
    jp Jump_000_0be9


Call_000_3456:
    ld a, [$c39a]
    ld hl, $3cc8
    call Call_000_0081
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [bc]
    jp Jump_000_0081


Jump_000_3466:
    call Call_000_05d9
    ld a, $0e
    rst RST_28
    ld b, $68
    ld a, $f5
    rst RST_28
    ld a, $80
    call Call_000_00d0
    call Call_000_0b86
    call Call_000_198b
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    dec a
    ld [$df39], a
    ld b, $94
    call Call_000_1f64
    call Call_000_00b0
    call $4003
    call Call_000_05e2
    call Call_000_0b86
    call Call_000_0ba1
    ld a, $02
    ld [$df01], a
    ld b, $af
    call Call_000_1f64
    xor a
    ld [$c39a], a
    ld a, $05
    ld b, $0f
    call Call_000_3370
    xor a
    ld h, $c7
    call Call_000_2630
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    ld a, $0f
    ld hl, $70fb
    call Call_000_1e6f
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4ee8
    call Call_000_1f55
    xor a
    ld [$c363], a
    ld [$c365], a
    ld a, $60
    ld [$c362], a
    ld [$c364], a
    ld bc, $8040
    call Call_000_3851
    call Call_000_3236
    ld a, [$c26a]
    xor $01
    ld [$c26a], a
    call Call_000_3236
    call Call_000_3241
    call Call_000_00b0
    call Call_000_05b2
    ld b, $00
    call Call_000_3836
    ld b, $10
    call Call_000_3836
    ld a, $01
    ld [$df01], a
    ld a, $16
    ld [$df32], a
    call Call_000_2edd
    call Call_000_05e2
    call Call_000_00b0
    ld a, $02
    ld [$df01], a
    ld b, $ad
    call Call_000_1f64
    ld a, $02
    ld [$c39a], a
    ld a, $04
    ld b, $37
    call Call_000_3370
    call Call_000_2626
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld a, $60
    ld [$c362], a
    ld a, $20
    ld [$c364], a
    call Call_000_1f55
    ld [$c363], a
    ld [$c365], a
    xor a
    ld [$c708], a
    call $7721
    ld hl, $c704
    xor a
    ld [hl], a
    ld l, $07
    ld [hl], a
    ld bc, $6020
    call Call_000_3851
    call Call_000_3236
    ld a, [$c26a]
    xor $01
    ld [$c26a], a
    call Call_000_3236
    call Call_000_3241
    call Call_000_05b2
    ld bc, $2002

jr_000_357e:
    push bc
    call Call_000_0999
    call $7721
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    pop bc
    dec b
    jr nz, jr_000_357e

    dec c
    jr nz, jr_000_357e

    ld a, $01
    ld [$df01], a
    ld a, $17
    ld [$df32], a
    call Call_000_2edd
    call Call_000_05e2
    call Call_000_00b0
    ld a, $02
    ld [$df01], a
    ld b, $ac
    call Call_000_1f64
    ld a, $03
    ld [$c39a], a
    ld a, $04
    ld b, $3a
    call Call_000_3370
    call Call_000_2626
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    ld a, $60
    ld [$c362], a
    ld a, $60
    ld [$c364], a
    call Call_000_1f55
    ld [$c363], a
    ld [$c365], a
    xor a
    ld [$c708], a
    call $79a2
    ld hl, $c704
    xor a
    ld [hl], a
    ld l, $07
    ld [hl], a
    ld bc, $a0b0
    call Call_000_3851
    call Call_000_3236
    ld a, [$c26a]
    xor $01
    ld [$c26a], a
    call Call_000_3236
    call Call_000_3241
    call Call_000_05b2
    ld b, $e0

jr_000_3610:
    push bc
    call Call_000_0999
    call $79a2
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    pop bc
    dec b
    jr nz, jr_000_3610

    ld a, $01
    ld [$df01], a
    ld a, $18
    ld [$df32], a
    call Call_000_2edd
    call Call_000_05e2
    ld a, $02
    ld [$df01], a
    call Call_000_00b0
    ld b, $ab
    call Call_000_1f64
    ld a, $04
    ld [$c39a], a
    ld a, $04
    ld b, $1e
    call Call_000_3370
    xor a
    ld h, $c7
    call Call_000_2630
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    ld a, $13
    ld hl, $70fb
    call Call_000_1e6f
    ld a, $03
    ld [$df06], a
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4ee8
    call Call_000_1f55
    ld [$c363], a
    ld [$c365], a
    ld a, $60
    ld [$c362], a
    ld a, $20
    ld [$c364], a
    ld bc, $8080
    call Call_000_3851
    call Call_000_3236
    ld a, [$c26a]
    xor $01
    ld [$c26a], a
    call Call_000_3236
    call Call_000_3241
    call Call_000_05b2
    ld b, $00
    call Call_000_3836
    ld b, $80
    call Call_000_3836
    ld a, $01
    ld [$df01], a
    ld a, $19
    ld [$df32], a
    call Call_000_2edd
    call Call_000_05e2
    call Call_000_00b0
    ld a, $02
    ld [$df01], a
    ld b, $aa
    call Call_000_1f64
    ld a, $01
    ld [$c39a], a
    ld a, $04
    ld b, $0d
    call Call_000_3370
    xor a
    ld h, $c7
    call Call_000_2630
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    ld a, $14
    ld hl, $70fb
    call Call_000_1e6f
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $4ee8
    call Call_000_1f55
    xor a
    ld [$c363], a
    ld [$c365], a
    ld a, $20
    ld [$c362], a
    ld a, $30
    ld [$c364], a
    ld bc, $8080
    call Call_000_3851
    call Call_000_3236
    ld a, [$c26a]
    xor $01
    ld [$c26a], a
    call Call_000_3236
    call Call_000_3241
    call Call_000_05b2
    ld b, $00
    call Call_000_3836
    ld b, $80
    call Call_000_3836
    ld a, $01
    ld [$df01], a
    ld a, $1a
    ld [$df32], a
    call Call_000_2edd
    call Call_000_05e2
    call Call_000_00b0
    ld a, $02
    ld [$df01], a
    ld b, $31
    call Call_000_1f64
    xor a
    ld [$c39a], a
    ld a, $05
    ld b, $08
    call Call_000_3370
    xor a
    ld h, $c7
    call Call_000_2630
    call Call_000_1f55
    ld b, $b2
    call Call_000_1f64
    call Call_000_1f55
    ld b, $01
    call Call_000_2039
    xor a
    ld [$c363], a
    ld [$c365], a
    ld a, $60
    ld [$c362], a
    ld a, $00
    ld [$c364], a
    ld bc, $d508
    call Call_000_3851
    ld a, $21
    ld [$c200], a
    ld a, $01
    ld [$c36a], a
    call Call_000_3862
    ld a, $03
    ld [$df38], a
    ld [$df16], a
    ld hl, $df0e
    ld [hl+], a
    inc a
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_05b2
    ld b, $68

jr_000_37ac:
    push bc
    ld a, $10
    ld [$c261], a
    call Call_000_3862
    pop bc
    dec b
    jr nz, jr_000_37ac

    ld b, $10
    ld a, $01
    ld [$c262], a
    ld [$c36a], a

jr_000_37c3:
    push bc
    ld a, $11
    ld [$c261], a
    call Call_000_3862
    xor a
    ld [$c262], a
    ld [$c36a], a
    pop bc
    dec b
    jr nz, jr_000_37c3

    ld b, $40
    ld a, $03
    ld [$c262], a
    ld a, $40
    ld [$c57f], a

jr_000_37e3:
    push bc
    ld bc, $c669
    ld de, $6c93
    call Call_000_066f
    call Call_000_3862
    xor a
    ld [$c262], a
    pop bc
    dec b
    jr nz, jr_000_37e3

    ld a, $01
    ld [$df01], a
    ld a, $1b
    ld [$df32], a
    call Call_000_2edd
    ld a, $60
    ld [$c360], a
    xor a
    call Call_000_00d0
    xor a
    call Call_000_00d0
    ld a, $90
    ld [$c360], a
    call Call_000_05e2
    call Call_000_00b0
    call Call_000_0b86
    call Call_000_198b
    ld a, $02
    ld [$df39], a
    ld [$c3c5], a
    ld [$3000], a
    ld b, $30
    call Call_000_1f64
    jp $4003


Call_000_3836:
jr_000_3836:
    push bc
    call Call_000_0999
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    pop bc
    dec b
    jr nz, jr_000_3836

    ret


Call_000_3851:
    ld hl, $c200
    ld a, $11
    ld [hl], a
    xor a
    ld l, $03
    ld [hl], b
    inc l
    ld [hl+], a
    inc l
    ld [hl], c
    inc l
    ld [hl], a
    ret


Call_000_3862:
    ld a, $01
    ld [$c3c5], a
    ld [$3000], a
    call $44f4
    call $478e
    call $48b5
    ld a, [$c274]
    ld b, a
    xor a
    call Call_000_0061
    call Call_000_1eb2
    ld a, $02
    ld [$c3c5], a
    ld [$3000], a
    call $6967
    call $69c4
    xor a
    ld [$c7cb], a
    jp Jump_000_0090


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_38c6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, sp
    ret


    add hl, sp
    ld [de], a
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    rst RST_20
    ld a, [hl-]
    inc bc
    dec sp
    xor b
    dec sp
    cp a
    add hl, sp
    ld l, [hl]
    ld a, [hl-]
    add c
    ld a, [hl-]
    sub h
    ld a, [hl-]
    cp c
    ld a, [hl-]

jr_000_38f8:
    ld sp, $683b
    dec sp
    call nz, $d73b
    dec sp
    ld [$063b], a
    inc a
    inc [hl]
    inc a
    ld e, c
    inc a
    ld h, e
    inc a
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b

jr_000_390f:
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp

Call_000_3920:
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp

jr_000_3934:
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b
    add hl, sp
    ld b, b

jr_000_393d:
    add hl, sp
    ld b, b
    add hl, sp
    nop
    jr @+$2a

    ld [de], a
    ret nc

    db $10
    ld de, $1b14
    nop
    jr jr_000_3934

    stop
    ld de, $7915
    dec e
    nop
    jr jr_000_393d

    inc de
    or b
    db $10
    dec d
    ld [hl], d
    add hl, de
    nop
    jr @+$6a

    inc d
    ld b, b
    ld de, $7315
    ld a, [de]
    nop
    jr jr_000_390f

    inc d
    db $10
    ld de, $7415
    dec de
    nop
    jr jr_000_38f8

    inc de
    ld b, b
    db $10
    ld de, $0010
    nop
    jr @-$76

    inc de
    or b
    ld de, $7515
    add hl, de

jr_000_397f:
    nop
    jr jr_000_39ea

    ld [de], a
    db $10
    ld de, $7615
    ld a, [de]
    nop
    jr @+$0a

    inc de
    ret nc

    ld [de], a
    dec d
    ld a, b
    inc e
    nop
    jr jr_000_399c

    ld [de], a
    jr nc, @+$14

jr_000_3997:
    dec d
    ld [hl], a
    ld e, $00
    nop

jr_000_399c:
    adc b
    inc d
    rla
    ld [de], a
    inc de
    nop
    stop
    jr jr_000_3a0e

jr_000_39a6:
    ld [de], a
    and b
    ld de, $001d
    dec bc
    nop
    jr jr_000_3997

    ld [de], a
    and b
    db $10
    dec e
    nop
    inc c
    nop
    jr jr_000_3a30

jr_000_39b8:
    db $10
    ret nz

    db $10
    dec e
    nop
    rrca
    rst RST_38
    nop
    db $10
    ret z

    rla
    add b
    ld [de], a
    ld de, $0003
    rst RST_38
    nop
    jr @+$4a

    rla
    ret nz

    ld d, $10
    rlca
    nop
    nop

jr_000_39d3:
    jr @-$76

    rla
    ld [hl], b
    ld d, $10
    ld [$0000], sp
    jr jr_000_39a6

    rla
    ret nc

    ld d, $10
    add hl, bc
    nop
    nop
    jr jr_000_397f

    rla
    ld b, b
    rla

jr_000_39ea:
    ld [de], a
    ld a, [bc]
    nop
    nop
    jr @+$4a

    rla

jr_000_39f1:
    sub b
    ld d, $10
    dec bc
    nop
    nop
    jr @+$0a

jr_000_39f9:
    rla
    ld b, b
    rla
    db $10
    inc c
    nop
    nop
    jr jr_000_3a4a

    rla
    jr nc, jr_000_3a1c

    ld [de], a
    dec c
    nop
    nop
    jr jr_000_39d3

    rla
    ld b, b
    rla

jr_000_3a0e:
    dec e

jr_000_3a0f:
    nop
    inc bc
    rst RST_38
    nop
    jr @+$0a

    inc de
    add b
    ld d, $10
    inc hl
    nop
    nop

jr_000_3a1c:
    jr @+$0a

    inc de
    ret nc

    ld d, $12
    inc h
    nop
    nop
    jr @+$7a

    inc de
    ld [hl], b
    ld d, $10
    dec h
    nop
    nop
    jr jr_000_39b8

jr_000_3a30:
    inc de
    ret nz

    ld d, $12
    ld h, $00
    nop
    jr jr_000_39f1

    inc de
    ld b, b
    ld d, $12
    daa
    nop
    rst RST_38
    nop
    jr @+$0a

    ld d, $90
    ld d, $10
    jr z, jr_000_3a49

jr_000_3a49:
    nop

jr_000_3a4a:
    jr jr_000_3a74

    ld d, $f0
    ld d, $11
    add hl, hl
    nop
    nop
    jr @-$06

    dec d
    jr nz, jr_000_3a6f

    db $10
    ld a, [hl+]
    nop
    nop
    jr @-$16

    dec d

jr_000_3a5f:
    ret nc

    ld d, $12
    dec hl
    nop
    nop
    jr jr_000_3a0f

    dec d

jr_000_3a68:
    add b
    ld d, $10
    inc l
    nop
    rst RST_38
    nop

jr_000_3a6f:
    jr jr_000_39f9

    rla
    ld d, b
    db $10

jr_000_3a74:
    db $10
    dec l
    nop
    nop
    jr @+$7a

    rla
    or b
    db $10
    ld [de], a
    ld l, $00
    rst RST_38
    nop
    jr jr_000_3a1c

    rla
    ld h, b
    ld de, $2f12
    nop
    nop
    jr @+$7a

    rla
    sub b
    ld de, $3010
    nop
    rst RST_38
    nop
    jr jr_000_3a5f

    ld d, $c0
    ld [de], a
    ld [de], a
    ld sp, $0000
    jr jr_000_3a68

    ld d, $40
    ld [de], a
    db $10
    ld [hl-], a
    nop
    nop
    jr @+$6a

    ld d, $30
    ld [de], a
    ld [de], a
    inc sp
    nop
    nop
    jr jr_000_3b1a

    ld d, $c0
    ld [de], a
    db $10
    inc [hl]
    nop
    rst RST_38
    nop
    sub b
    ld l, b
    rla
    ld h, b
    inc d
    rla
    dec [hl]
    nop
    nop
    sub c

jr_000_3ac4:
    ld l, b
    rla
    ld [hl], b

jr_000_3ac7:
    inc d
    rla
    dec [hl]
    nop
    db $10
    jr @+$6a

    rla
    ld [hl], b
    inc d
    ld e, $00
    stop
    jr jr_000_3b4f

    rla
    or b
    inc d
    dec e
    nop
    rlca
    nop

jr_000_3ade:
    jr jr_000_3b58

    rla
    jr nz, jr_000_3af7

    dec e
    nop
    ld a, [bc]
    rst RST_38
    nop
    jr @-$06

    ld de, $1660
    db $10
    ld [hl], $00
    nop
    jr @+$2a

    ld [de], a
    and b
    ld d, $10

jr_000_3af7:
    scf
    nop
    nop
    jr jr_000_3ac4

    ld de, $16d0
    db $10
    add hl, sp
    nop
    rst RST_38
    nop
    jr jr_000_3b6e

    inc d
    and b
    ld d, $12
    ld a, d
    rra
    nop
    jr jr_000_3ac7

    inc d

jr_000_3b10:
    jr nz, @+$19

    db $10
    ld a, [hl-]
    nop
    nop
    jr jr_000_3b10

    inc d

jr_000_3b19:
    sub b

jr_000_3b1a:
    ld d, $10

jr_000_3b1c:
    dec sp
    nop
    nop
    jr jr_000_3b19

    inc d
    jr nz, jr_000_3b3b

    db $10
    inc a
    nop
    nop
    jr jr_000_3b92

    inc d
    jr nz, jr_000_3b44

    db $10
    dec a
    nop
    rst RST_38
    nop
    sbc d
    sbc b
    rla
    jr nc, jr_000_3b4a

    rla
    ld a, $00
    nop

jr_000_3b3b:
    sbc e

jr_000_3b3c:
    sbc b
    rla
    ld b, b
    inc de
    rla
    ld a, $00
    db $10

jr_000_3b44:
    jr jr_000_3ade

    rla
    ld b, b
    inc de
    rra

jr_000_3b4a:
    nop
    stop
    jr @-$36

jr_000_3b4f:
    rla
    jr nc, jr_000_3b65

    dec e
    nop
    ld b, $00
    jr @+$6a

jr_000_3b58:
    ld d, $30
    inc de
    dec e
    nop
    add hl, bc
    nop
    jr jr_000_3ba9

    ld d, $b0
    inc de
    dec e

jr_000_3b65:
    nop
    dec c
    rst RST_38
    nop
    jr jr_000_3bc3

    ld d, $b0
    inc d

jr_000_3b6e:
    ld d, $3f
    nop
    db $10
    jr jr_000_3b1c

    ld d, $80
    inc d
    ld d, $40
    nop
    db $10
    jr @-$36

    ld d, $60
    inc d
    ld d, $41
    nop
    db $10
    jr jr_000_3b6e

    ld d, $80
    inc d
    ld d, $42
    nop
    db $10
    jr @-$36

    ld d, $a0
    inc d

jr_000_3b92:
    ld d, $43
    nop
    db $10
    jr @+$6a

    ld d, $b0
    inc d
    dec d
    ld a, e
    jr nz, jr_000_3b9f

jr_000_3b9f:
    jr jr_000_3c09

    ld d, $50
    inc d
    dec e
    nop
    dec b
    rst RST_38
    nop

jr_000_3ba9:
    jr @-$36

    db $10
    and b
    ld d, $10
    ld b, h
    nop
    nop
    jr jr_000_3b3c

    db $10
    jr nc, jr_000_3bcd

    db $10
    ld b, l
    nop
    nop
    jr jr_000_3bf5

    db $10
    or b
    ld d, $12
    ld b, a
    nop

jr_000_3bc3:
    rst RST_38

Jump_000_3bc4:
    nop
    sub h
    ld e, b
    dec d
    add b
    db $10
    rla
    ld c, b
    nop

Call_000_3bcd:
jr_000_3bcd:
    nop
    sub l
    ld e, b
    dec d
    sub b
    db $10
    rla
    ld c, b
    nop
    rst RST_38
    nop
    sub h
    cp b
    dec d
    ld h, b
    ld de, $4917

Call_000_3bdf:
    nop
    nop
    sub l
    cp b
    dec d

jr_000_3be4:
    ld [hl], b
    ld de, $4917
    nop
    rst RST_38
    nop
    sub d
    ld c, b

Jump_000_3bed:
    ld d, $70
    dec d
    rla
    ld a, h
    ld hl, $9300

jr_000_3bf5:
    ld c, b
    ld d, $80
    dec d
    rla
    ld a, h
    ld hl, $1800

jr_000_3bfe:
    ld e, b
    ld d, $b0
    dec d
    dec e
    nop
    ld c, $ff
    nop
    sub b
    ld l, b

jr_000_3c09:
    rla
    ld h, b
    inc d
    rla
    ld d, d
    nop

jr_000_3c0f:
    nop
    sub c
    ld l, b
    rla
    ld [hl], b
    inc d
    rla
    ld d, d
    nop
    nop
    jr @-$66

    rla
    ld b, b
    inc d
    ld [de], a
    ld c, e
    nop
    nop
    jr @-$66

    rla
    sub b
    inc d
    ld de, $004e

jr_000_3c2a:
    nop
    jr jr_000_3ca5

    rla
    ld d, b
    inc d

Call_000_3c30:
    ld [de], a
    ld d, c
    nop
    rst RST_38
    nop
    jr jr_000_3c0f

    ld d, $70
    ld de, $0e11
    nop
    nop
    sub [hl]
    adc b
    ld d, $60
    ld de, $0f17
    nop
    nop
    sub a
    adc b
    ld d, $70
    ld de, $0f17
    nop
    nop
    jr jr_000_3c2a

    ld d, $40
    ld de, $001d
    nop
    rst RST_38
    nop
    jr jr_000_3be4

    ld d, $90
    db $10
    ld de, $0054
    rst RST_38
    nop
    jr jr_000_3bfe

    rla
    ret nz

    db $10
    ld de, $0055
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

Call_000_3c78:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld b, b
    ld b, b
    ld c, l
    ld b, b
    ld e, c
    add b
    ld l, b
    nop
    ld [hl], l
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    call c, Call_000_2c3c
    dec a
    xor h
    dec a
    inc l
    ld a, $ac
    ld a, $ec
    ld a, $0c

jr_000_3ca5:
    ccf
    inc c
    ccf
    inc c
    ccf
    ld e, h
    ccf
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld b, b
    ld b, a
    ld b, b
    ld d, e
    add b
    ld h, d
    nop
    ld l, a
    ld b, b
    ld a, c
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    ld b, b

Jump_000_3cc3:
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld b, b
    ld c, e
    ld b, b
    ld d, a
    add b
    ld h, [hl]
    nop
    ld [hl], e
    ld b, b
    ld a, l
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    ld b, b
    ld a, e

Call_000_3cdc:
    ld b, b
    ld d, c
    add b
    ld d, c
    ret nz

    ld d, c
    nop
    ld d, d
    ld b, b
    ld d, d
    add b
    ld d, d
    ret nz

    ld d, d
    nop
    ld d, e
    ld b, b
    ld d, e
    add b
    ld d, e
    ret nz

    ld d, e
    nop
    ld d, h
    ld b, b
    ld d, h
    add b
    ld d, h
    ret nz

    ld d, h
    nop
    ld d, l
    ld b, b
    ld d, l
    add b
    ld d, l
    ret nz

    ld d, l
    nop
    ld d, [hl]
    ld b, b
    ld d, [hl]
    ld b, b
    ld d, [hl]
    ld b, b
    ld d, [hl]
    ld b, b
    ld d, [hl]
    ld b, b
    ld d, [hl]
    add b
    ld d, [hl]
    ret nz

    ld d, [hl]
    nop
    ld d, a
    ld b, b
    ld d, a
    add b
    ld d, a
    ret nz

    ld d, a
    nop
    ld e, b
    ld b, b
    ld e, b
    add b
    ld e, b
    ret nz

    ld e, b
    nop
    ld e, c
    ld b, b

Jump_000_3d25:
    ld e, c
    add b
    ld e, c
    ret nz

    ld e, c
    nop
    ld e, d
    ld b, b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    nop
    ld b, c
    ld b, b
    ld b, c
    add b
    ld b, c
    ret nz

    ld b, c
    nop
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    add b
    ld b, d
    ret nz

    ld b, d
    nop
    ld b, e
    ld b, b
    ld b, e
    add b
    ld b, e
    add b
    ld b, e
    add b
    ld b, e
    add b
    ld b, e
    ret nz

    ld b, e
    nop
    ld b, h
    ld b, b
    ld b, h
    ld b, b
    ld b, h
    ld b, b
    ld b, h
    ld b, b
    ld b, h
    ld b, b
    ld b, h
    ld b, b
    ld b, h
    add b
    ld b, h
    ret nz

    ld b, h
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    ld b, b
    ld b, l
    add b
    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    nop
    ld b, [hl]
    ld b, b
    ld b, [hl]
    add b
    ld b, [hl]
    add b
    ld b, [hl]
    add b
    ld b, [hl]
    add b
    ld b, [hl]
    add b
    ld b, [hl]
    add b
    ld b, [hl]
    ret nz

    ld b, [hl]
    nop
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    add b
    ld c, l
    ret nz

    ld c, l
    nop
    ld c, [hl]
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    ld b, b
    ld c, [hl]
    add b
    ld c, [hl]
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b

Jump_000_3dc7:
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    ret nz

    ld c, [hl]
    nop
    ld c, a
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b

Call_000_3dd9:
    ld c, l

Call_000_3dda:
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    add b
    ld c, l
    ld b, b
    ld c, a
    add b
    ld c, a
    ret nz

    ld c, a
    nop
    ld d, b
    ld b, b
    ld d, b
    add b
    ld d, b
    ret nz

    ld d, b
    nop
    ld d, c
    ld b, b
    ld d, c
    add b
    ld d, c
    ret nz

    ld d, c
    nop
    ld d, d
    ld b, b
    ld d, d
    add b
    ld d, d
    ret nz

    ld d, d
    nop
    ld d, e
    add b
    ld e, c
    ret nz

    ld e, c
    add b
    ld e, c
    nop
    ld e, d
    ld b, b
    ld e, d
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, d
    ret nz

    ld e, d
    add b
    ld e, c
    nop
    ld e, e
    ld b, b
    ld e, e
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, e
    ret nz

    ld e, e
    add b
    ld e, c
    nop
    ld e, h
    ld b, b
    ld e, h
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, h
    ret nz

    ld e, h
    add b
    ld e, c
    nop
    ld e, l
    ld b, b
    ld e, l
    add b

Call_000_3e67:
    ld e, l
    ret nz

    ld e, l
    nop
    ld e, [hl]
    ld b, b
    ld e, [hl]
    add b
    ld e, [hl]
    ret nz

    ld e, [hl]
    nop
    ld e, a
    ld b, b
    ld e, a
    add b
    ld e, a
    ret nz

    ld e, a
    nop
    ld h, b
    ld b, b
    ld h, b
    add b
    ld h, b
    ret nz

    ld h, b
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    nop
    ld h, c
    ld b, b
    ld h, c
    add b
    ld h, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    ret nz

    ld h, c
    nop
    ld h, d
    ld b, b
    ld h, d
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    ret nz

    ld l, b
    nop
    ld l, c
    ld b, b
    ld l, c
    add b
    ld l, c
    ret nz

    ld l, c
    nop
    ld l, d
    ld b, b
    ld l, d
    add b
    ld l, d
    ret nz

    ld l, d
    nop
    ld l, e
    ld b, b
    ld l, e
    add b
    ld l, e
    ret nz

    ld l, e
    nop
    ld l, h
    ld b, b
    ld l, h
    add b
    ld l, h
    ret nz

    ld l, h
    nop
    ld l, l
    ld b, b
    ld l, l
    add b
    ld l, l
    ret nz

    ld l, l
    nop
    ld l, [hl]
    ld b, b
    ld l, [hl]
    add b
    ld l, [hl]
    ret nz

    ld l, [hl]
    ld b, b
    ld [hl], l
    add b
    ld [hl], l
    ret nz

    ld [hl], l
    nop
    halt
    ld b, b
    halt
    add b
    halt
    ret nz

    halt
    nop
    ld [hl], a
    ld b, b
    ld [hl], a
    add b

Call_000_3eff:
    ld [hl], a
    ret nz

    ld [hl], a
    nop
    ld a, b
    ld b, b
    ld a, b
    add b
    ld a, b
    ret nz

    ld a, b
    nop
    ld a, c
    ld b, b
    ld b, h
    add b
    ld b, h
    ret nz

    ld b, h
    nop
    ld b, l
    ld b, b
    ld b, l
    add b
    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    ret nz

    ld b, l
    nop
    ld b, [hl]
    ld b, b
    ld b, [hl]
    add b
    ld b, [hl]
    ret nz

    ld b, [hl]
    nop
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    add b
    ld b, a

Jump_000_3f30:
    ret nz

    ld b, a
    nop
    ld c, b
    ld b, b
    ld c, b
    add b
    ld c, b
    add b
    ld c, b
    add b
    ld c, b
    add b
    ld c, b

Jump_000_3f3e:
    ret nz

    ld c, b
    nop
    ld c, c
    ld b, b
    ld c, c
    add b
    ld c, c
    ret nz

    ld c, c
    ret nz

    ld c, c
    ret nz

    ld c, c
    ret nz

    ld c, c
    nop
    ld c, d
    ld b, b
    ld c, d
    add b
    ld c, d
    ret nz

    ld c, d
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    ret z

    ld [hl], c
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    add b
    ld [hl], b
    ret nz

    ld [hl], b
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    jr c, @+$74

    ld a, b
    ld [hl], d
    ld hl, sp+$71
    cp b
    ld [hl], d
    ld hl, sp+$72
    ld hl, sp+$72
    ld hl, sp+$72
    ld hl, sp+$72
    ld hl, sp+$72
    jr c, @+$75

    ld a, b
    ld [hl], e
    cp b
    ld [hl], e
    ldh a, [$ff73]
    jr nc, @+$76

    ld [hl], b
    ld [hl], h
    or b
    ld [hl], h
    ldh a, [$ff74]
    jr nc, @+$77

    ret c

    ld [hl], l
    ld b, b
    halt
    db $10
    halt
    ld [hl], b
    ld [hl], l
    xor b
    ld [hl], l
    add b
    halt
    ret nz

    halt
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
